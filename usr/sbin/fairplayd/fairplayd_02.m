uint64_t sub_10009CA10@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v51 = a4 - 1;
  v52 = *(*(a1 + a2) + (*(a3 + v50) & 0x72D7ACF8));
  v53 = ((v52 ^ (a37 + v51)) & 0x7FFFFFFF) * (v45 + 1864589875);
  v54 = (v53 ^ HIWORD(v53)) * v48;
  v55 = ((((v52 ^ (a44 + v51)) & 0x7FFFFFFF) * v48) ^ ((((v52 ^ (a44 + v51)) & 0x7FFFFFFFu) * v48) >> 16)) * v48;
  *(a44 + v51) = *(v49 + (v54 >> 24)) ^ *(a37 + v51) ^ *(v47 + (v54 >> 24)) ^ *((v54 >> 24) + v44 + 5) ^ *(v49 + (v55 >> 24)) ^ *(v47 + (v55 >> 24)) ^ *((v55 >> 24) + v44 + 5) ^ v54 ^ v55 ^ (-83 * BYTE3(v54)) ^ (-83 * BYTE3(v55));
  return (*(v46 + 8 * ((41 * (v51 != 0)) | v45)))();
}

uint64_t sub_10009CB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0x8E0];
  STACK[0x948] = STACK[0x8E0];
  return (*(v8 + 8 * ((15 * (((v9 == 0) ^ ((v7 ^ 0xD) - 1)) & 1)) ^ v7)))(a1, a2, a3, a4, a5, a6, a7, 371891400);
}

uint64_t sub_10009CDE4()
{
  v4 = (((*(v1 + 16) ^ 0xC0EE8925) - 1090812651) ^ ((*(v1 + 16) ^ 0xDEE9927D) - 1594057139) ^ ((((v2 - 11954) | 0x2A0) ^ 0xE1F8BA16 ^ *(v1 + 16)) - 1611798377)) - 1603284004;
  v5 = v0 + 423271475 > v4;
  v6 = ((v0 + 423271475) < 0x225AC7AB) ^ (v4 < 0x225AC7AB);
  v7 = v5;
  if (v6)
  {
    v8 = (v0 + 423271475) < 0x225AC7AB;
  }

  else
  {
    v8 = v7;
  }

  return (*(v3 + 8 * ((8 * v8) | (32 * v8) | v2)))();
}

uint64_t sub_10009CF48(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char a5, int8x16_t a6, int8x8_t a7, uint64_t a8, uint64_t a9)
{
  v17.val[0].i64[0] = (v13 + a4 - 1) & 0xF;
  v17.val[0].i64[1] = (v13 + a5 + v14) & 0xF;
  v17.val[1].i64[0] = (v13 + a4 + 13) & 0xF;
  v17.val[1].i64[1] = (v13 + a4 + 12) & 0xF;
  v17.val[2].i64[0] = (v13 + a4 + 11) & 0xF;
  v17.val[2].i64[1] = (v13 + a4 + 10) & 0xF;
  v17.val[3].i64[0] = (v13 + a4 + 9) & 0xF;
  v17.val[3].i64[1] = (v13 + a4) & 0xF ^ 8;
  *(a1 + v13) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a9 + v13), *(v10 + v17.val[0].i64[0] - 7)), veor_s8(*(v17.val[0].i64[0] + v11 - 6), *(v17.val[0].i64[0] + v12 - 5)))), a7), vmul_s8(*&vqtbl4q_s8(v17, a6), a7)));
  return (*(v15 + 8 * (((a3 != a4) * v9) ^ a2)))(a1 - 8);
}

uint64_t sub_10009D0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  v41[595] = a40;
  *(v46 - 128) = v43 - 17902189 * (((v42 | 0x1E6CF50A) - (v42 | 0xE1930AF5) - 510457099) ^ 0x9023E31A) + 20932;
  v41[591] = v41;
  v41[592] = v44;
  v41[593] = v44;
  (*(v45 + 8 * (v43 + 47478)))(v46 - 152);
  return (*(v45 + 8 * ((v43 + 4065) ^ v43)))(1328262640, 4072333248, 204121596, 1328262652, 1124141068, 1018083312, 235481336, 1093182468, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41);
}

uint64_t sub_10009D200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, _BOOL8 a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v31 = *(v30 - 184);
  LODWORD(a16) = 0;
  *(v30 - 224) = a6 + 9799;
  v253 = v29 & 0xFFFFFFFD ^ 0x479A854FLL;
  v32 = *(a14 + (*(v31 + v253) ^ 0xE7));
  v33 = v29 & 0xFFFFFFF3 ^ 0x479A854DLL;
  *(v30 - 232) = v33;
  v34 = *(v31 + v33);
  v35 = ((v32 >> 2) & 0xF | (a6 + 71) ^ 0xC) ^ ((v32 >> 6) | (4 * v32)) ^ 0x4A ^ (((((v32 >> 6) | (4 * v32)) ^ 0x4A) >> 1) | 0x80);
  v36 = v29;
  v37 = *(a11 + (v34 ^ 0x69));
  v250 = v36 & 0xFFFFFFFA ^ 0x479A854DLL;
  v252 = v36 & 0xFFFFFFF0 ^ 0x479A854FLL;
  v38 = (v34 ^ 0xFFFFFFD0) - 2 * ((v34 ^ 0xFFFFFFD0) & 0x73 ^ v34 & 2) + 113;
  v39 = -(v34 ^ 0xFFFFFFD0) ^ (-(v34 ^ 0x5E) - 114) ^ 0x71;
  LOBYTE(v34) = *(a12 + (*(v31 + v250) ^ 0x6ELL));
  v40 = ((v39 ^ v38) - ((2 * (v39 ^ v38) + 28) & 0xFFFFFFD2) - 9) ^ v37;
  v245 = v36 & 0xFFFFFFFC ^ 0x479A854FLL;
  v41 = *(a13 + (*(v31 + v252) ^ 0x6ALL));
  v42 = v36;
  v43 = *(a13 + (*(v31 + v245) ^ 0x5ELL));
  v247 = v36 & 0xFFFFFFFE ^ 0x479A854DLL;
  v248 = v36 & 0xFFFFFFF7 ^ 0x479A854DLL;
  v44 = (*(v31 + v248) - ((2 * *(v31 + v248)) & 0x1D2) + 105) ^ *(a11 + (*(v31 + v248) ^ 0xE6));
  LOBYTE(v37) = *(a12 + (*(v31 + v247) ^ 0x89));
  v251 = v36 & 0xFFFFFFF1 ^ 0x479A854FLL;
  v45 = (v43 ^ 0x678CFFA0) & ((v35 << 8) ^ 0x678CCCE3) | v43 & 0x1C;
  v46 = (((16 * v37) ^ 0xB0) - ((2 * ((16 * v37) ^ 0xB0) + 32) & 0x60) - 126) ^ v37;
  v47 = *(a14 + (*(v31 + v251) ^ 0x94));
  v249 = v36 & 0xFFFFFFF2 ^ 0x479A854DLL;
  v244 = v36 & 0xFFFFFFF4 ^ 0x479A854FLL;
  v48 = (((16 * *(a12 + (*(v31 + v249) ^ 0xC5))) ^ 0xB0) - ((2 * ((16 * *(a12 + (*(v31 + v249) ^ 0xC5))) ^ 0xB0) - 96) & 0xC0) - 74) ^ *(a12 + (*(v31 + v249) ^ 0xC5));
  v49 = *(a13 + (*(v31 + v244) ^ 0x6ALL));
  LODWORD(v237) = ((v40 << 24) ^ 0xA58BD2D9) & (v41 ^ 0xFFAFD731) | v41 & 0x26;
  v50 = ((((v48 << 16) ^ 0xFFC7FFFF) & ((((*(a14 + (*(v31 + v251) ^ 0x94)) >> 2) & 0xF ^ ((v47 >> 6) | (4 * v47)) ^ ((((v47 >> 6) | (4 * v47)) >> 1) | 0x80)) << 8) ^ 0x81E802B7) | (v48 << 16) & 0x170000) ^ 0x9AC185B1) & (v237 ^ 0xD6742DAF);
  v243 = v42 & 0xFFFFFFFB ^ 0x479A854DLL;
  v51 = *(v31 + v243);
  LODWORD(v51) = v51 ^ 0x34 ^ (((2 * *(a11 + (v51 ^ 3))) | 0x2F) + (((*(a11 + (v51 ^ 3)) ^ 0xFFFFFF8D) + 115) ^ ((*(a11 + (v51 ^ 3)) ^ 0x6F) - 111) ^ ((*(a11 + (v51 ^ 3)) ^ 0xFFFFFF8B) + 117)) + 82);
  v242 = v42 ^ 0x479A854DLL;
  LODWORD(v34) = ((((((16 * v34) ^ 0xB0) + 80) ^ v34) << 16) ^ 0x22624F5C) & ~(v51 << 24) | (v51 << 24) & 0xDDDDDDDD;
  v52 = ((v46 << 16) ^ 0xBEDC3CB6) & (v45 ^ 0xD9737E01) ^ v45 & 0x410CC349;
  v240 = v42 & 0xFFFFFFF9 ^ 0x479A854FLL;
  v53 = *(a14 + (*(v31 + v240) ^ 0xD7));
  LODWORD(a29) = v42;
  v246 = v42 & 0xFFFFFFF6 ^ 0x479A854DLL;
  v54 = *(a12 + (*(v31 + v246) ^ 0x71));
  v239 = v42 & 0xFFFFFFF5 ^ 0x479A854FLL;
  v55 = *(a14 + (*(v31 + v239) ^ 0x17));
  v56 = (((16 * v54) ^ 0x4F) - 90) ^ v54;
  v57 = (v55 >> 6) | (4 * v55);
  v241 = v42 & 0xFFFFFFF8 ^ 0x479A854FLL;
  v58 = *(a13 + (*(v31 + v241) ^ 0xBFLL));
  v59 = (((((((v53 >> 6) | (4 * v53)) ^ (((v53 >> 6) | (4 * v53)) >> 4) ^ (((v53 >> 6) | (4 * v53)) >> 1)) << 8) ^ 0xD397C466) & (v58 ^ 0xFB97FF8F) | v58 & 0x99999999) ^ 0x20FD9D45) & (v34 ^ 0xD926B0A3) ^ v34 & 0xC950800;
  v60 = (v57 & 0x10 | 9) ^ v57 & 0xEF;
  v61 = (v57 >> 1) ^ (((v55 >> 6) | (4 * v55)) >> 4) ^ 0x69;
  v62 = (v52 & 0x11 ^ 0x2F) & (v43 & 0x2E | 0x11) | v52 & 0xC0;
  HIDWORD(v236) = (*(v31 + v242) - ((2 * *(v31 + v242)) & 0x1D2) + 105) ^ *(a11 + (*(v31 + v242) ^ 0xA2));
  v63 = *(&off_1010A0B50 + a6 - 10203) - 1182200582;
  HIDWORD(v64) = *&v63[4 * (BYTE4(v236) ^ 0xD1)];
  LODWORD(v64) = HIDWORD(v64);
  v65 = (v64 >> 12) - ((2 * (v64 >> 12)) & 0xB714DA72);
  v66 = *(&off_1010A0B50 + (a6 ^ 0x265E)) - 1761865675;
  LODWORD(a18) = (((((v60 ^ v61) << 8) ^ 0xFFFF3FFF) & ((v56 << 16) ^ 0x5A4EE0A3) & 0xFFFFE0FF | (((v60 ^ v61) & 0x1F) << 8)) ^ 0x4B8D4CDC) & (((v49 ^ 0xFFFFF83F) & (((v44 ^ 0x6D) << 24) ^ 0xF364D853) | v49 & 0xAC) ^ 0xD09B2784) ^ ((v49 ^ 0xFFFFF83F) & (((v44 ^ 0x6D) << 24) ^ 0xF364D853) & 0xEE601080 | v49 & 0x80);
  v67 = a18 ^ 0x71A910BC;
  v68 = *&v66[4 * ((((v49 ^ 0x3F) & 0x53 | v49 & 0xAC) ^ 0x84) & 0x7F ^ v49 & 0x80 ^ 0xBC)];
  LODWORD(a20) = v50;
  v69 = BYTE1(v50);
  v71 = v69 ^ 0xF6;
  v72 = (((((v68 ^ 0x6A37ECE3) << ((v69 ^ 0xF6) & 0x12)) - ((2 * ((v68 ^ 0x6A37ECE3) << ((v69 ^ 0xF6) & 0x12))) & 0x43074926) + 562275475) ^ 0x2183A493) << ((v69 ^ 0xF6) & 0x12 ^ 0x12)) + ((v68 >> 14) ^ 0x1A8DF);
  v73 = *&v63[4 * (v51 ^ 0x62)] ^ v69;
  HIDWORD(v238) = a6;
  v74 = *(&off_1010A0B50 + (a6 ^ 0x288F)) - 708241574;
  v75 = *&v74[4 * (v46 ^ 0xBD)] ^ 0x97D79168;
  v76 = *(&off_1010A0B50 + (a6 ^ 0x2D01)) - 199510362;
  v77 = v73 ^ v75 ^ (16 * v75) & 0x6837CAC0 ^ *&v76[4 * v71] ^ v72;
  v78 = *&v63[4 * (((*(v31 + v248) - ((2 * *(v31 + v248)) & 0xD2) + 105) ^ *(a11 + (*(v31 + v248) ^ 0xE6))) ^ 0x3C)];
  v79 = *&v74[4 * (BYTE2(v59) ^ 0x94)];
  LODWORD(a26) = *(v30 - 200) < 0x73FED747u;
  v80 = v79 ^ 0x59F9C5F8;
  if (v78 == 1566742168)
  {
    v80 = -749715428;
  }

  LODWORD(a17) = v52 ^ 0x5115FAE6;
  v81 = v78 ^ ((v52 ^ 0xFAE6) >> 8) ^ v79 ^ *&v76[4 * (((v52 ^ 0xFAE6) >> 8) ^ 0x52)] ^ __ROR4__(*&v66[4 * (v41 ^ 0xF1)], 14) ^ (16 * ((v80 ^ 0x5D33CB0) & (v79 ^ 0xFCD405F) ^ v80 & 0xA9B3A44));
  v82 = *&v66[4 * (v62 ^ 0x40)];
  HIDWORD(v84) = v82 ^ 0x2CE3;
  LODWORD(v84) = v82 ^ 0x6A37C000;
  v83 = v84 >> 14;
  v85 = *&v74[4 * (v56 ^ 0x11)] ^ 0xDC7AC45F;
  LODWORD(v236) = v59;
  v86 = BYTE1(v59) ^ *&v63[4 * (v40 ^ 0x53)] ^ v85 ^ (16 * v85) & 0x6837CAC0 ^ 0xC4F1EC5 ^ *&v76[4 * (BYTE1(v59) ^ 0x34)];
  v87 = *&v74[4 * (v48 ^ 0xC7)];
  v88 = v87 ^ (16 * v87) & 0x6837CAC0 ^ *&v76[4 * (BYTE1(v67) ^ 0xEE)] ^ __ROR4__((v65 - 611685063) ^ 0xD174B49A, 20) ^ __ROR4__(*&v66[4 * (v58 ^ 0x33)], 14) ^ 0x85A027F2;
  v89 = v86 & v83;
  v90 = v86 + v83;
  v91 = ((v81 ^ 0xC8B9) >> 8);
  v92 = v90 - 2 * v89;
  v93 = *&v74[4 * ((v92 ^ 0x71505566) >> 16)] ^ 0xF330346A;
  v94 = *&v76[4 * (v91 ^ 0xEE)] ^ *&v63[4 * HIBYTE(v88)] ^ v93 ^ (16 * v93) & 0x6837CAC0 ^ __ROR4__(*&v66[4 * (v77 ^ 0x9B)], 14);
  v95 = *&v74[4 * BYTE2(v88)] ^ 0xE3E87348;
  v96 = *&v76[4 * (((v92 ^ 0x5566) >> 8) ^ 0xEE)] ^ v95 ^ *&v63[4 * (HIBYTE(v77) ^ 0xB8)] ^ (16 * v95) & 0x6837CAC0 ^ __ROR4__(*&v66[4 * (v81 ^ 0x66)], 14) ^ ((v92 ^ 0x5566) >> 8);
  v97 = v88 ^ (v67 >> 8);
  v98 = *&v63[4 * ((v81 ^ 0x5D3CC8B9u) >> 24)] ^ BYTE1(v88) ^ *&v76[4 * (BYTE1(v88) ^ 0xEE)];
  v99 = *&v74[4 * (BYTE2(v77) ^ 0xB)] ^ 0xF019047D;
  v100 = v98 ^ v99 ^ (16 * v99) & 0x6837CAC0 ^ __ROR4__(*&v66[4 * (v92 ^ 0x66)], 14);
  v101 = ((v61 - 114) | v61) == 0;
  v102 = *&v63[4 * (HIBYTE(v92) ^ 0xB2)];
  v103 = v97;
  if (v101)
  {
    v103 = *&v63[4 * (HIBYTE(v77) ^ 0xB8)];
  }

  v104 = *&v74[4 * (BYTE2(v81) ^ 0x27)] ^ 0x502624E;
  v105 = v102 ^ BYTE1(v77) ^ v104 ^ *&v76[4 * (BYTE1(v77) ^ 0x32)] ^ (16 * v104) & 0x6837CAC0 ^ __ROR4__(*&v66[4 * (v103 ^ 0xDF)], 14);
  v106 = v96 ^ 0x8F2C2B41;
  v107 = *&v66[4 * (v96 ^ 0x9E)];
  v108 = ((((v107 ^ 0x6A37ECE3u) >> (((v96 ^ 0x2B41) >> 8) & 0xE)) - ((2 * ((v107 ^ 0x6A37ECE3u) >> (((v96 ^ 0x2B41) >> 8) & 0xE))) & 0x88B3842A) + 1146733077) ^ 0x4459C215) >> (~((v96 ^ 0x2B41) >> 8) & 0xA) >> (~((v96 ^ 0x2B41) >> 8) & 4);
  v109 = v94 ^ v91 ^ 0x8DD7D6F2;
  v110 = *&v76[4 * (BYTE1(v100) ^ 0x2F)] ^ *&v63[4 * (HIBYTE(v94) ^ 0x4E)] ^ BYTE1(v100);
  v111 = *&v74[4 * ((v105 ^ 0xDB426551) >> 16)] ^ 0x73EFCBED;
  v112 = v110 ^ v111 ^ (16 * v111) & 0x6837CAC0 ^ v108 & 0xF9AC57FD ^ ((v107 << 18) ^ 0xB5DFA802) & ~v108;
  v113 = *&v74[4 * BYTE2(v109)] ^ 0xC72B1D7C;
  v114 = *&v76[4 * (((v105 ^ 0x6551) >> 8) ^ 0xEE)] ^ *&v63[4 * HIBYTE(v106)] ^ v113 ^ ((v105 ^ 0x6551) >> 8) ^ (16 * v113) & 0x6837CAC0 ^ __ROR4__(*&v66[4 * (v100 ^ 0x33)], 14);
  v115 = *&v74[4 * BYTE2(v106)] ^ 0x80BFDC57;
  v116 = BYTE1(v109) ^ *&v76[4 * (BYTE1(v109) ^ 0xEE)] ^ *&v63[4 * (HIBYTE(v100) ^ 0xC8)] ^ v115 ^ (16 * v115) & 0x6837CAC0 ^ __ROR4__(*&v66[4 * (v105 ^ 0x51)], 14);
  v117 = *&v74[4 * (BYTE2(v100) ^ 0xC3)] ^ 0x342CCE73;
  v118 = BYTE1(v106) ^ *&v76[4 * (BYTE1(v106) ^ 0xEE)] ^ v117 ^ *&v63[4 * (HIBYTE(v105) ^ 0x18)] ^ (16 * v117) & 0x6837CAC0 ^ __ROR4__(*&v66[4 * v109], 14);
  v119 = v116 ^ 0x2C1A6BAF;
  LODWORD(v121) = __ROR4__(v118 ^ 0xFCB2E75A, 11) ^ 0x24D26C41;
  HIDWORD(v121) = v121;
  v120 = v121 >> 21;
  v122 = *&v74[4 * (BYTE2(v120) ^ 0xCD)] ^ 0xD04A24FA;
  v123 = *&v76[4 * (BYTE1(v119) ^ 0xEE)] ^ *&v63[4 * (HIBYTE(v112) ^ 0xA3)] ^ BYTE1(v119) ^ v122 ^ (16 * v122) & 0x6837CAC0;
  v124 = v114 ^ 0x65A48F92;
  v125 = BYTE1(v120);
  v126 = v123 ^ __ROR4__(*&v66[4 * (v114 ^ 0x92)], 14);
  v127 = *&v74[4 * (BYTE2(v112) ^ 0x6E)] ^ 0xD3DE69F5;
  v128 = *&v76[4 * (BYTE1(v120) ^ 0x24)] ^ *&v63[4 * (HIBYTE(v114) ^ 0xA6)] ^ v127 ^ (16 * v127) & 0x6837CAC0 ^ __ROR4__(*&v66[4 * v119], 14);
  v129 = *&v74[4 * BYTE2(v124)] ^ 0x8F45CA3B;
  v130 = *&v63[4 * HIBYTE(v119)] ^ BYTE1(v112) ^ v129 ^ (16 * v129) & 0x6837CAC0 ^ *&v76[4 * (BYTE1(v112) ^ 0xD0)];
  v131 = *&v66[4 * ((v121 >> 21) ^ 0xE2)];
  HIDWORD(v121) = v131 ^ 0x2CE3;
  LODWORD(v121) = v131 ^ 0x6A37C000;
  v132 = v121 >> 14;
  v133 = (v121 >> 14) & 0x800;
  v101 = (v130 & v133) == 0;
  v134 = v130 ^ 0x7F40D205;
  if (!v101)
  {
    LODWORD(v133) = -v133;
  }

  v135 = *&v74[4 * BYTE2(v119)] ^ 0xB6D99BBD;
  v136 = *&v66[4 * (v112 ^ 0x4A)];
  v137 = *&v63[4 * (HIBYTE(v120) ^ 0xA6)] ^ BYTE1(v124) ^ *&v76[4 * (BYTE1(v124) ^ 0xEE)] ^ v135 ^ (16 * v135) & 0x6837CAC0 ^ (v136 >> 14) ^ (v136 << 18);
  v138 = v132 & 0xFFFFF7FF ^ 0x5E2BBDA9 ^ (v133 + v134);
  v139 = BYTE1(v137) ^ 0xE6;
  v140 = *&v74[4 * ((v137 ^ 0xDCF4E648) >> 16)] ^ 0x92D085BA;
  v141 = v128 ^ v125 ^ 0xACAF644A;
  v142 = v140 ^ *&v63[4 * (HIBYTE(v126) ^ 0xDB)] ^ (16 * v140) & 0x6837CAC0 ^ __ROR4__(*&v66[4 * v141], 14) ^ __ROR4__(__ROR4__(*&v76[4 * (BYTE1(v138) ^ 0xEE)] ^ BYTE1(v138) ^ 0x6557BEA7, 11) ^ 0x25280951, 21);
  v143 = *&v74[4 * (BYTE2(v141) ^ 0x1B)] ^ 0x4D438F54;
  v144 = *&v63[4 * HIBYTE(v138)] ^ ((v126 ^ 0xAE92) >> 8) ^ *&v76[4 * (((v126 ^ 0xAE92) >> 8) ^ 0xEE)] ^ v143 ^ (16 * v143) & 0x6837CAC0 ^ __ROR4__(*&v66[4 * (v137 ^ 0x48)], 14);
  v145 = *&v63[4 * (HIBYTE(v137) ^ 0x1F)] ^ BYTE1(v141) ^ *&v76[4 * (BYTE1(v141) ^ 0xEE)];
  v146 = *&v74[4 * BYTE2(v138)] ^ 0xD76E0047;
  v147 = v145 ^ v146 ^ (16 * v146) & 0x6837CAC0 ^ __ROR4__(*&v66[4 * (v126 ^ 0x92)], 14);
  v148 = *&v74[4 * (BYTE2(v126) ^ 3)] ^ 0x61664AD1;
  v149 = *&v63[4 * (HIBYTE(v128) ^ 0x6F)] ^ *&v76[4 * (v139 ^ 0xEE)] ^ v148 ^ (16 * v148) & 0x6837CAC0 ^ __ROR4__(*&v66[4 * v138], 14) ^ 0x26FC2DB3;
  v150 = *&v74[4 * ((v147 ^ 0xD35CD0FB) >> 16)] ^ 0x8C994A39;
  v151 = *&v76[4 * (BYTE1(v144) ^ 1)] ^ BYTE1(v144) ^ *&v63[4 * ((v142 ^ 0x63E673BFu) >> 24)] ^ v150 ^ (16 * v150) & 0x6837CAC0;
  v152 = *&v74[4 * (BYTE2(v142) ^ 0xFD)];
  v153 = v151 ^ __ROR4__(*&v66[4 * ((v149 ^ v139) - ((2 * (v149 ^ v139)) & 0x1BE)) + 892], 14);
  v154 = *&v76[4 * (((v147 ^ 0xD0FB) >> 8) ^ 0xEE)] ^ *&v63[4 * HIBYTE(v149)] ^ ((v147 ^ 0xD0FB) >> 8) ^ ((16 * v152) ^ 0xF3189FF0) & 0x40044A40 ^ __ROR4__(*&v66[4 * (v144 ^ 0xB7)], 14) ^ ((v152 & 0x38F39493 ^ 0x27BEF6AD ^ ((16 * v152) ^ 0xF3189FF0) & 0x28338080) & (v152 & 0xC70C6B6C ^ 0xBDF7F7DB) | v152 & 0xC0000940);
  v155 = *&v74[4 * BYTE2(v149)] ^ 0xD2272DAC;
  v156 = *&v63[4 * (HIBYTE(v144) ^ 0x3C)] ^ ((v142 ^ 0x73BF) >> 8) ^ v155 ^ *&v76[4 * (((v142 ^ 0x73BF) >> 8) ^ 0xEE)] ^ (16 * v155) & 0x6837CAC0 ^ __ROR4__(*&v66[4 * (v147 ^ 0xA4)], 14);
  v157 = *&v74[4 * (BYTE2(v144) ^ 0x11)] ^ 0x146FAD57;
  v158 = *&v63[4 * ((v147 ^ 0xD35CD0FB) >> 24)] ^ BYTE1(v149) ^ *&v76[4 * (BYTE1(v149) ^ 0xEE)] ^ v157 ^ (16 * v157) & 0x6837CAC0 ^ __ROR4__(*&v66[4 * (v142 ^ 0x60)], 14);
  v159 = *&v74[4 * (BYTE2(v158) ^ 0xB4)] ^ 0x3668A703;
  v160 = *&v63[4 * (HIBYTE(v153) ^ 0xC3)] ^ *&v76[4 * (BYTE1(v156) ^ 0xEE)] ^ BYTE1(v156) ^ v159 ^ (16 * v159) & 0x6837CAC0;
  v161 = *&v66[4 * (v154 ^ 0x40)];
  v162 = ((v160 ^ 0xC67B7D83) + ((v161 << 18) ^ 0xB38C0000) - 2 * ((v160 ^ 0xC67B7D83) & ((v161 << 18) ^ 0xB38C0000))) ^ (v161 >> 14);
  v163 = v154 ^ 0x26B1B09F;
  v164 = v158 ^ 0xD9AFB5A8;
  v165 = *&v76[4 * (((v158 ^ 0xB5A8) >> 8) ^ 0xEE)] ^ *&v63[4 * ((v154 ^ 0x26B1B09F) >> 24)];
  LOWORD(v154) = v153 ^ 0x7129;
  v166 = *&v74[4 * ((v153 ^ 0xB07129) >> 16)] ^ 0x8F215DC0;
  v167 = v165 ^ v166 ^ BYTE1(v164) ^ (16 * v166) & 0x6837CAC0 ^ __ROR4__(*&v66[4 * (v156 ^ 0x12)], 14);
  v168 = *&v74[4 * BYTE2(v163)] ^ 0x7B23F810;
  v169 = *&v63[4 * (HIBYTE(v156) ^ 0x5C)] ^ BYTE1(v154) ^ *&v76[4 * (BYTE1(v154) ^ 0xEE)] ^ v168 ^ (16 * v168) & 0x6837CAC0 ^ __ROR4__(*&v66[4 * (v164 ^ 0xDF)], 14);
  v170 = *&v74[4 * (BYTE2(v156) ^ 0x50)] ^ 0xC5D19CD8;
  v171 = *&v63[4 * HIBYTE(v164)] ^ BYTE1(v163) ^ v170 ^ *&v76[4 * (BYTE1(v163) ^ 0xEE)] ^ (16 * v170) & 0x6837CAC0;
  v172 = *&v66[4 * v154];
  LOWORD(v154) = v162 ^ 0x20CB;
  v173 = v171 ^ __ROR4__(v172, 14);
  v174 = *&v74[4 * (BYTE2(v173) ^ 0xF5)] ^ 0x5145BCC2;
  v175 = *&v76[4 * (((v169 ^ 0xFB07) >> 8) ^ 0xEE)] ^ v174 ^ *&v63[4 * ((v162 ^ 0x657720CB) >> 24)] ^ ((v169 ^ 0xFB07) >> 8) ^ (16 * v174) & 0x6837CAC0 ^ __ROR4__(*&v66[4 * (v167 ^ 0xD6)], 14);
  v176 = v173 ^ 0x76EEC326;
  v177 = *&v74[4 * (BYTE2(v162) ^ 0x6C)] ^ 0x4B68A638;
  v178 = *&v76[4 * (((v173 ^ 0xC326) >> 8) ^ 0xEE)] ^ *&v63[4 * (HIBYTE(v167) ^ 0x53)] ^ ((v173 ^ 0xC326) >> 8) ^ v177 ^ (16 * v177) & 0x6837CAC0 ^ __ROR4__(*&v66[4 * (v169 ^ 7)], 14);
  v179 = *&v74[4 * (BYTE2(v167) ^ 0x87)] ^ 0x70E7619;
  v180 = BYTE1(v154) ^ *&v63[4 * (HIBYTE(v169) ^ 0x4E)] ^ v179 ^ (16 * v179) & 0x6837CAC0 ^ *&v76[4 * (BYTE1(v154) ^ 0xEE)] ^ __ROR4__(*&v66[4 * v176], 14);
  v181 = *&v74[4 * (BYTE2(v169) ^ 0xDF)] ^ 0xFA597800;
  v182 = *&v76[4 * (BYTE1(v167) ^ 0xA6)] ^ BYTE1(v167) ^ v181 ^ __ROR4__(__ROR4__(*&v63[4 * HIBYTE(v176)], 29) ^ 0x31643E43, 3) ^ (16 * v181) & 0x6837CAC0 ^ __ROR4__(*&v66[4 * v154], 14);
  v183 = *&v74[4 * (BYTE2(v182) ^ 5)] ^ 0x594B23E5;
  v184 = __ROR4__(__ROR4__(v180 ^ 0x5B1D0AB5, 12) ^ 0x276E8776, 20);
  v185 = ((v184 ^ 0xA83B) >> 8);
  v186 = *&v76[4 * (v185 ^ 0xEE)] ^ *&v63[4 * (HIBYTE(v175) ^ 0x18)] ^ v183 ^ (16 * v183) & 0x6837CAC0 ^ __ROR4__(*&v66[4 * (v178 ^ 0x85)], 14);
  v187 = *&v74[4 * (BYTE2(v175) ^ 0x8E)] ^ 0xA29CD29E;
  v188 = *&v76[4 * (((v182 ^ 0xC389) >> 8) ^ 0xEE)] ^ *&v63[4 * (HIBYTE(v178) ^ 0x49)] ^ v187 ^ (16 * v187) & 0x6837CAC0 ^ __ROR4__(*&v66[4 * (v184 ^ 0x3B)], 14);
  v189 = *&v74[4 * (BYTE2(v178) ^ 0xB1)];
  v190 = v186 ^ v185;
  v191 = *&v63[4 * ((v184 ^ 0xA5A2A83B) >> 24)] ^ BYTE1(v175) ^ v189 ^ *&v76[4 * (BYTE1(v175) ^ 0xB4)] ^ __ROR4__(*&v66[4 * (v182 ^ 0x89)], 14) ^ ((v189 & 0x16837CAC ^ 0xEBFD87F7) << ((v186 ^ v185) & 4) << ((v186 ^ v185) & 4 ^ 4));
  v192 = BYTE1(v178) ^ *&v63[4 * ((v182 ^ 0x8A1EC389) >> 24)] ^ *&v76[4 * (BYTE1(v178) ^ 0xC5)] ^ *&v74[4 * ((v184 ^ 0xA5A2A83B) >> 16)] ^ 0x88AAD2DD ^ 0x2BCDCDBF ^ (16 * (*&v74[4 * ((v184 ^ 0xA5A2A83B) >> 16)] ^ 0x88AAD2DD)) & 0x6837CAC0;
  v193 = *&v66[4 * (((v175 & 0x9C ^ 0xFFFFFFE0) & (v175 & 0x63 ^ 0x83F6189D) | v175 & 3) ^ 0x83F618B0)];
  v194 = ((v192 & 0x6A0452BD ^ 0x8AEDD16C) & (v192 & 0x95FBAD42 ^ 0xEFAE52FF) | v192 & 0x15122C02) ^ (v193 << 18);
  v195 = *(&off_1010A0B50 + (a6 ^ 0x2D45)) - 2027822014;
  v196 = *&v195[4 * (HIBYTE(v186) ^ 0x19)];
  v197 = *&v195[4 * (HIBYTE(v188) ^ 0x44)];
  v198 = v191 ^ 0x49AA546A;
  v199 = *&v195[4 * BYTE3(v198)];
  LODWORD(v238) = *&v195[4 * (HIBYTE(v194) ^ 0xC3)];
  v200 = v194 ^ (v193 >> 14) ^ 0xC28F8651;
  v201 = *(&off_1010A0B50 + a6 - 9338) - 505159835;
  LODWORD(v195) = *&v201[4 * (BYTE2(v200) ^ 0xC8)];
  v202 = *&v201[4 * (BYTE2(v188) ^ 0xB5)];
  HIDWORD(v237) = *&v201[4 * (BYTE2(v198) ^ 0x67)];
  v203 = (((v197 ^ 0xC4992E35) - (v197 ^ 0xF58761B9)) ^ 0xFFFFFFF8) + (v197 ^ 0xC4992E35);
  v204 = *(&off_1010A0B50 + a6 - 7929) - 234011410;
  v205 = *&v204[4 * (BYTE1(v198) ^ 0x45)];
  v206 = *&v204[4 * (BYTE1(v200) ^ 0xDC)];
  v207 = *&v204[4 * (BYTE1(v186) ^ 0x31)];
  LODWORD(v204) = *&v204[4 * (BYTE1(v188) ^ 0x6C)];
  v208 = *(&off_1010A0B50 + (a6 ^ 0x2ED1)) - 1456216202;
  v209 = v191 ^ 0x6A ^ *(v30 - 216) ^ *&v201[4 * (BYTE2(v186) ^ 0x96)] ^ *&v208[4 * (v191 ^ 0xD0)] ^ v203 ^ ((BYTE1(v200) ^ 0x99) + 184802928);
  v210 = (v188 ^ BYTE1(v182) ^ 0xC3);
  v211 = *&v208[4 * (v210 ^ 0x37)];
  v212 = *&v208[4 * (v200 ^ 0x7A)];
  v213 = v190;
  v214 = *&v208[4 * (v190 ^ 0x64)];
  v215 = v209 ^ v206;
  v216 = *(&off_1010A0B50 + (a6 ^ 0x2702)) - 1145767743;
  *(*(v30 - 184) + v240) = ((((v209 ^ v206) >> 8) ^ 0xD9) + (((v209 ^ v206) >> 8) ^ 0xB2)) ^ 0x6C ^ v216[((v209 ^ v206) >> 8) ^ 0xE5];
  v217 = ((BYTE1(v186) ^ 0x74) + 184802928) ^ *(v30 - 212) ^ v202 ^ v207 ^ v199 ^ v212;
  *(*(v30 - 184) + v239) = ((BYTE1(v217) ^ 0x33) + (BYTE1(v217) ^ 0x58)) ^ 0x9C ^ v216[BYTE1(v217) ^ 0xFLL];
  LODWORD(v190) = v196 ^ *(v30 - 208) ^ v205 ^ v211 ^ v195;
  v218 = (BYTE1(v198) + 184802928) ^ v210 ^ v190;
  v219 = *(v30 - 184);
  v220 = *(&off_1010A0B50 + (a6 ^ 0x2C8A)) - 2051999863;
  *(v219 + v245) = (51 * v220[(BYTE2(v200) ^ (BYTE1(v198) + 112) ^ v210 ^ v190) ^ 0xEELL] - 44) ^ 0x70;
  v221 = (BYTE3(v190) & 0xE0 | HIBYTE(v218) & 0x1F) ^ 0x84;
  v222 = *(&off_1010A0B50 + (a6 ^ 0x35C5)) - 1691867198;
  LOBYTE(v221) = v222[v221];
  LOBYTE(v208) = (v221 + 40) & 0x3C ^ 0xF6 ^ (8 * (v221 + 40)) & 0x38;
  *(v219 + v242) = (v208 & 0x6A | 1) ^ (((v221 + 40) & 0xC3 ^ 0x94 ^ (8 * (v221 + 40)) & 0xC0) & v208 & 0xFE | v221 & 1);
  LOBYTE(v221) = v222[HIBYTE(v215) ^ 0xA0] + 40;
  *(v219 + v243) = v221 ^ (8 * v221) ^ 0x31;
  LOBYTE(v221) = v220[(v215 ^ BYTE2(v186)) ^ 0x2FLL];
  *(v219 + v241) = ~(87 * v221 - 119 * (52 - 4 * v221));
  v223 = *(&off_1010A0B50 + a6 - 6944) - 878150771;
  *(v219 + v250) = v223[BYTE2(v215) ^ 0xDCLL] ^ 0x95;
  *(v219 + v244) = (51 * v220[(v200 ^ BYTE2(v188) ^ v217) ^ 0x78] - 44) ^ 0x20;
  v224 = *(v30 - 204);
  v225 = HIDWORD(v237) ^ v204;
  LODWORD(v195) = ((BYTE1(v188) ^ 0x29) + 184802928) ^ v224 ^ v238 ^ v225 ^ v214;
  *(v219 + v252) = (51 * v220[(v213 ^ BYTE2(v198) ^ v195) ^ 0x3BLL] - 44) ^ 0x2C;
  *(v219 + v247) = v223[BYTE2(v218) ^ 0x67] ^ 0xA3;
  v226 = v222[HIBYTE(v217) ^ 0x89] + 40;
  *(v219 + v248) = v226 ^ (8 * v226) ^ 0x1F;
  *(v219 + v253) = ((BYTE1(v218) ^ 0x89) + (BYTE1(v218) ^ 0xE2)) ^ 0x69 ^ v216[BYTE1(v218) ^ 0xDELL];
  v227 = ((v195 >> 8) ^ 0xF5896) & ((v195 >> 8) ^ 0xA339F3A2) ^ (v195 >> 8) & 0x36AB5F;
  *(v219 + v251) = (((2 * v227) ^ 4) - ((((4 * v227) ^ 8) - 42) & 0xD8) + 87) ^ v216[((((BYTE1(v188) ^ 0x29) - 8592) ^ v224 ^ v238 ^ WORD2(v237) ^ v204 ^ v214) >> 8) ^ 0x9ELL] ^ 0x64;
  *(v219 + v249) = v223[BYTE2(v195) ^ 0xBDLL] ^ 0xC2;
  LOBYTE(v227) = v222[(v195 >> 24) ^ 0x78] + 40;
  *(v219 + *(v30 - 232)) = v227 ^ (8 * v227) ^ 0xB5;
  LOBYTE(v182) = v223[BYTE2(v217) ^ 0x6DLL];
  v228 = (((a29 ^ 0x2A325E5D) - 707944029) ^ ((a29 ^ 0x6A86D5B2) - 1787221426) ^ ((a29 ^ 0x72E0EA2) - 120458914)) + 1807179690;
  v229 = (v228 ^ 0xDBD281B3) & (2 * (v228 & 0xDBE325B3)) ^ v228 & 0xDBE325B3;
  LODWORD(v195) = ((2 * (v228 ^ 0x48528293)) ^ 0x27634E40) & (v228 ^ 0x48528293) ^ (2 * (v228 ^ 0x48528293)) & 0x93B1A720;
  LODWORD(v223) = v195 ^ 0x9090A120;
  LODWORD(v195) = (v195 ^ 0x3010600) & (4 * v229) ^ v229;
  v230 = ((4 * v223) ^ 0x4EC69C80) & v223 ^ (4 * v223) & 0x93B1A720;
  LODWORD(v195) = (v230 ^ 0x2808400) & (16 * v195) ^ v195;
  v231 = ((16 * (v230 ^ 0x91312320)) ^ 0x3B1A7200) & (v230 ^ 0x91312320) ^ (16 * (v230 ^ 0x91312320)) & 0x93B1A700;
  LODWORD(v195) = v195 ^ 0x93B1A720 ^ (v231 ^ 0x13102200) & (v195 << 8);
  v232 = v228 ^ (2 * ((v195 << 16) & 0x13B10000 ^ v195 ^ ((v195 << 16) ^ 0x27200000) & (((v231 ^ 0x80A18520) << 8) & 0x13B10000 ^ 0x2100000 ^ (((v231 ^ 0x80A18520) << 8) ^ 0x31A70000) & (v231 ^ 0x80A18520))));
  *(v219 + v246) = v182 ^ 0x56;
  v233 = (((v232 ^ 0xC5530C2D) - 2013913747) ^ ((v232 ^ 0x3F8DEC74) + 2099838262) ^ ((v232 ^ 0x1E8BAA) + 1119591148)) - 1147577196;
  LODWORD(v195) = a26 ^ (v233 < 0x73FED747);
  v234 = v233 < *(v30 - 200);
  if (v195)
  {
    v234 = a26;
  }

  return (*(*(v30 - 192) + 8 * ((19084 * v234) ^ a6)))(v216, v225, v224, v220, 51, 4294967252, v198, v213, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v236, a20, v237, v238, v239, v240, v241, a26, v242, v243, a29, v244, v245);
}

uint64_t sub_10009F0B4(unsigned int a1, __n128 a2)
{
  *(v4 - 120) = *(STACK[0x310] + 8 * a1);
  v5.n128_u64[0] = (v2 + 13) & 0xF;
  v5.n128_u64[1] = (v2 + 12) & 0xF;
  v6.n128_u64[0] = (v2 + 11) & 0xF;
  v6.n128_u64[1] = (v2 + 10) & 0xF;
  v7.n128_u64[0] = (v2 + 9) & 0xF;
  v7.n128_u64[1] = v3 & 0xF ^ 7;
  v10.val[0].i64[0] = (v2 + 7) & 0xF;
  v10.val[0].i64[1] = (v2 + 6) & 0xF;
  v10.val[1].i64[0] = (v2 + 5) & 0xF;
  v10.val[1].i64[1] = (v2 + 4) & 0xF;
  v10.val[2].i64[0] = (v2 + 3) & 0xF;
  v10.val[2].i64[1] = (v2 + 2) & 0xF;
  v10.val[3].i64[0] = (v2 + 1) & 0xF;
  v10.val[3].i64[1] = v2 & 0xF;
  v8.n128_u64[0] = 0x1313131313131313;
  v8.n128_u64[1] = 0x1313131313131313;
  return (*(v4 - 120))(a2, v5, v6, v7, xmmword_100BC76B0, vqtbl4q_s8(v10, xmmword_100BC76B0), v8);
}

uint64_t sub_10009F20C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62, uint64_t a63)
{
  v70 = STACK[0x204];
  v71 = (a1 ^ 0x6EE0EDA9) & STACK[0x204];
  *(v69 - 100) = LODWORD(STACK[0x200]) ^ a67;
  *(v69 - 120) = (v67 + 1133916368) ^ a67;
  *(v69 - 144) = v70 ^ a67;
  *(v69 - 128) = a67 + 1;
  *(v69 - 136) = a66;
  *(v69 - 108) = v71 + a67;
  *(v69 - 104) = a67 + a62;
  v72 = (*(v68 + 8 * a65))(v69 - 144);
  return (*(v68 + 8 * *(v69 - 112)))(v72);
}

uint64_t sub_10009F290()
{
  v2 = STACK[0x700];
  STACK[0x610] = STACK[0x700];
  return (*(v1 + 8 * (((v2 == 0) * ((v0 - 6916) ^ (v0 - 6918))) ^ (v0 - 22442))))();
}

uint64_t sub_10009F2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62, int a63)
{
  LODWORD(STACK[0x278]) = v72;
  LODWORD(STACK[0x3A8]) = a6;
  LODWORD(STACK[0x3AC]) = v71;
  LODWORD(STACK[0x2F0]) = a7;
  LODWORD(STACK[0x31C]) = a68;
  LOWORD(STACK[0x236]) = a67;
  LOWORD(STACK[0x292]) = v73;
  LODWORD(STACK[0x27C]) = a61;
  LOWORD(STACK[0x38E]) = a64;
  return (*(v74 + 8 * v70))(a1, a70);
}

uint64_t sub_10009F3E8(int a1)
{
  v6 = (v2 - v3) | (v3 - v2);
  v7 = (v3 + v4 + 5 * (v3 ^ 0x2081)) | ((v3 - 1) << 32);
  return (*(v5 + 8 * (v3 ^ 0xAEC1 ^ ((2 * (((v6 ^ ~v7) & (v7 - v6) | v7 & ~v6) >> 63)) | (8 * (((v6 ^ ~v7) & (v7 - v6) | v7 & ~v6) >> 63))))))((a1 * v1));
}

uint64_t sub_10009F5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, unsigned int a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  LODWORD(a26) = v39;
  HIDWORD(a25) = ((v37 ^ 0xAC1227D5) + 1064092232) ^ ((v37 ^ 0xFA0C2F4) - 1663162521) ^ ((v37 ^ 0xA3B2E576) + 818675941);
  return (*(a37 + 8 * (v38 ^ (122 * ((((HIDWORD(a27) ^ 0x43F499E7) - 1627290334) ^ ((HIDWORD(a27) ^ 0x232D2399) - 2605216) ^ ((HIDWORD(a27) ^ 0x7496A089) - 1469858736)) == -927332814)))))(a1, a2, a3, a4, a5, a6, a31, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

uint64_t sub_10009F860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, int a34, uint64_t a35, int a36, int a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  v45 = ((v42 - 114) ^ 0x31) + a34 + 3 * a36 - 38 + v43;
  v46 = (v45 ^ (86 * (v42 ^ 0x84) - 1)) & (2 * (v45 & 0x67)) ^ v45 & 0x67;
  v47 = ((2 * (v45 ^ 0x11)) ^ 0xEC) & (v45 ^ 0x11) ^ (2 * (v45 ^ 0x11)) & 0x76;
  v48 = *(&STACK[0x2F0] + ((v45 ^ (2 * (((4 * (v47 ^ 0x12)) & 0x70 ^ ((4 * (v47 ^ 0x12)) ^ 0xD0) & (v47 ^ 0x12) ^ 0xDF) & (16 * ((v47 ^ 0x24) & (4 * v46) ^ v46)) ^ (v47 ^ 0x24) & (4 * v46) ^ v46))) ^ 0x67u));
  v49 = (v48 ^ 0x4B) & (2 * (v48 & 0x63)) ^ v48 & 0x63;
  v50 = ((2 * (v48 ^ 0xC9)) ^ 0x54) & (v48 ^ 0xC9) ^ (2 * (v48 ^ 0xC9)) & 0xAA;
  v51 = (v48 ^ (2 * ((16 * (v49 ^ 0xAA ^ v50 & (4 * v49))) & 0x20 ^ v49 ^ 0xAA ^ v50 & (4 * v49) ^ (((4 * (v50 ^ 0xAA)) ^ 0xA0) & (v50 ^ 0xAA) ^ (4 * (v50 ^ 0xAA)) & 0xA0) & ((16 * (v49 ^ 0xAA ^ v50 & (4 * v49))) ^ 0x21))));
  v52 = 139493411 * ((((v44 - 144) | 0xC5BC3C75) - ((v44 - 144) & 0xC5BC3C70)) ^ 0xC991DD30);
  *(v44 - 144) = v52 + 534033856;
  *(v44 - 120) = (a28 ^ 0x2BD4AD18) + v52;
  *(v44 - 116) = v52 + (a36 ^ 0x7E9EF7BE) + ((2 * a36) & 0xFD3DEF7C) - 1376833828;
  *(v44 - 128) = ((((v51 ^ 0x71E77C98) + 364356190) ^ ((v51 ^ 0x88C34EF0) - 325873610) ^ ((v51 ^ 0xF924321F) - 1653281573)) - 466460446) ^ v52;
  *(v44 - 124) = v52 + v42 + 23176;
  *(v44 - 136) = &a42;
  *(v44 - 112) = (a34 ^ 0x1FFDFFF7) - v52 + ((2 * a34) & 0xFFFFFFEF) - 525396;
  *(v44 - 108) = v52 + (a33 ^ 0xDFF7BF7F) + 2 * a33 + 2137974736;
  *(v44 - 104) = &STACK[0x2F0];
  v53 = (*(a39 + 8 * (v42 ^ 0xCB94)))(v44 - 144);
  return (*(a39 + 8 * ((991 * (((a37 - 1 - v42) | (v42 - (a37 - 1))) >= 0)) ^ (v42 + 31190))))(v53);
}

uint64_t sub_10009FBE8()
{
  *STACK[0x7C8] = 0;
  *STACK[0x740] = -371865839;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_10009FCCC@<X0>(int a1@<W8>, __n128 a2@<Q0>)
{
  v5 = *(v4 + 8 * (a1 + 2698));
  *&STACK[0x420] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x410] = xmmword_100BC76B0;
  return v5(4294949347, (v2 - 17949), 366 * (v2 ^ 0x5EDAu), 4294943955, a2, vdupq_n_s64(0x38uLL), vdupq_n_s64(v3), vdupq_n_s64(0x296E95066F186A7EuLL), vdupq_n_s64(0xB9575BC916400FF5), vdupq_n_s64(0xBB575BC916400FF5), vdupq_n_s64(0xBC75422AEA673B87), vdupq_n_s64(0x8FE15E66D5B9789uLL));
}

uint64_t sub_10009FEBC(int a1, double a2, __n128 a3)
{
  a3.n128_u16[0] = 16191;
  a3.n128_u8[2] = 63;
  a3.n128_u8[3] = 63;
  a3.n128_u8[4] = 63;
  a3.n128_u8[5] = 63;
  a3.n128_u8[6] = 63;
  a3.n128_u8[7] = 63;
  return (*(v3 + 8 * a1))(xmmword_100F523B0, a3);
}

uint64_t sub_10009FF98@<X0>(int a1@<W8>)
{
  v5 = STACK[0x4F0] + v2;
  STACK[0x970] = v1;
  LODWORD(STACK[0xA90]) = a1;
  STACK[0x4B0] = v5;
  return (*(v4 + 8 * (((((v5 == 0) ^ (7 * (v3 ^ 8))) & 1) * (193 * (v3 ^ 0x788E) - 49581)) ^ v3)))();
}

uint64_t sub_1000A00C4(uint64_t a1, int a2, int a3)
{
  v6 = a2 + a3 + 227504211 > (v3 - 1887121593);
  if ((v3 - 1887121593) < 0x9DF45616 != (a2 + a3 + 1872435773) > 0x620BA9E9)
  {
    v6 = (a2 + a3 + 1872435773) > 0x620BA9E9;
  }

  return (*(v4 + 8 * ((196 * ((v6 ^ v5 ^ 0x99) & 1)) ^ v5)))();
}

uint64_t sub_1000A0724(int a1)
{
  v6 = 23958;
  atomic_compare_exchange_strong(v4, &v6, v3);
  return (*(v5 + 8 * (((v6 == a1) * v2) ^ v1)))();
}

uint64_t sub_1000A07A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W8>, __n128 a6@<Q1>, int8x16_t a7@<Q4>, uint64_t a8@<D5>, int8x16_t a9@<Q6>)
{
  v18 = (a2 - 1) & 0xF;
  v20.i64[0] = vqtbl4q_s8(*(&a6 - 1), a7).u64[0];
  v20.i64[1] = a8;
  v21 = vrev64q_s8(vmulq_s8(v20, a9));
  *(v17 + a2) = veorq_s8(veorq_s8(veorq_s8(*(v14 + v18 - 15), *(v11 + a2)), veorq_s8(*(v13 + v18 - 15), *(v18 + v12 - 14))), vextq_s8(v21, v21, 8uLL));
  return (*(v16 + 8 * (((a4 == 0) * a5) ^ v15)))(a1, a2 - 16, a3, a4 - 16);
}

uint64_t sub_1000A081C()
{
  v4 = v1 < v0 - 1437974947;
  v5 = v1 > ((2 * v0) ^ 0x17166u) + *v2 - 1437940464;
  if (v4 != *v2 > 0x55B516EFu)
  {
    v5 = v4;
  }

  return (*(v3 + 8 * (((16 * v5) | (v5 << 6)) ^ v0)))();
}

uint64_t sub_1000A0904@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, unsigned int a6@<W6>, uint64_t a7@<X7>, int a8@<W8>)
{
  v24 = (((v12 ^ 0x3758CE3F) - 928566847) ^ ((v12 ^ 0xC3FDCB3C) + 1006777540) ^ ((a3 ^ v12) - 493928978)) - 52674612;
  v25 = (v24 ^ 0xCEF9E670) & (2 * (v24 & 0xECF98744)) ^ v24 & 0xECF98744;
  v26 = ((2 * (v24 ^ 0x1649E278)) ^ 0xF560CA78) & (v24 ^ 0x1649E278) ^ (2 * (v24 ^ 0x1649E278)) & v18;
  v27 = v26 ^ 0xA902504;
  v28 = (v26 ^ 0xF0200030) & (4 * v25) ^ v25;
  v29 = ((4 * v27) ^ v19) & v27 ^ (4 * v27) & v20;
  v30 = (v29 ^ v22) & (16 * v28) ^ v28;
  v31 = ((16 * (v29 ^ v21)) ^ v23) & (v29 ^ v21) ^ (16 * (v29 ^ v21)) & v11;
  v32 = v30 ^ v18 ^ (v31 ^ v15) & (v30 << 8);
  v33 = v24 ^ (2 * ((v32 << 16) & a2 ^ v32 ^ ((v32 << 16) ^ a5) & (((v31 ^ v13) << 8) & a2 ^ a4 ^ (((v31 ^ v13) << 8) ^ a1) & (v31 ^ v13))));
  *((v33 ^ a6) - v14 + a7 + v16) = *(v9 + (v33 ^ a6) + v10) - ((2 * *(v9 + (v33 ^ a6) + v10)) & 0xBF) + 95;
  return (*(v8 + 8 * (((v33 == a6) * v17) ^ a8)))();
}

uint64_t sub_1000A0AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v18 = (((v15 ^ 0xEE415747) + 297707705) ^ ((v15 ^ 0x617EC0AE) - 1635696814) ^ ((v15 ^ ((v16 - 14976) | 0x6610) ^ 0x66EA3F0C) - 1726632184)) + 1692254949;
  v19 = (v18 ^ 0xE2F9D48B) & (2 * (v18 & 0x84F8142B)) ^ v18 & 0x84F8142B;
  v20 = ((2 * (((v16 - 15132) | 0x2034) ^ 0xE339D5F5 ^ v18)) ^ 0xCF83D144) & (((v16 - 15132) | 0x2034) ^ 0xE339D5F5 ^ v18) ^ (2 * (((v16 - 15132) | 0x2034) ^ 0xE339D5F5 ^ v18)) & 0x67C1E8A2;
  v21 = v20 ^ 0x204028A2;
  v22 = (v20 ^ 0x780C000) & (4 * v19) ^ v19;
  v23 = ((4 * v21) ^ 0x9F07A288) & v21 ^ (4 * v21) & 0x67C1E8A0;
  v24 = (v23 ^ 0x701A080) & (16 * v22) ^ v22;
  v25 = ((16 * (v23 ^ 0x60C04822)) ^ 0x7C1E8A20) & (v23 ^ 0x60C04822) ^ (16 * (v23 ^ 0x60C04822)) & 0x67C1E8A0;
  v26 = v24 ^ 0x67C1E8A2 ^ (v25 ^ 0x64008800) & (v24 << 8);
  v27 = (*(v17 + 8 * (v16 ^ 0x8F0C)))(*(a15 - 1306953403), &STACK[0x338], (v18 ^ (2 * ((v26 << 16) & 0x67C10000 ^ v26 ^ ((v26 << 16) ^ 0x68A20000) & (((v25 ^ 0x3C16082) << 8) & 0x67C10000 ^ 0x26010000 ^ (((v25 ^ 0x3C16082) << 8) ^ 0x41E80000) & (v25 ^ 0x3C16082))))) & 0xFFFFF000 ^ 0x8A7BC000, 1);
  return (*(v17 + 8 * ((11 * (((2 * v27) & 0xDC7FFF6E) + (v27 ^ 0xEE3FFFB7) != -297795657)) ^ v16)))();
}

uint64_t sub_1000A0CFC(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v13 = a1 - 1;
  *(v11 + v13) = *(v5 + (((v9 & v10) + a2) & v13)) ^ *(v4 + v13) ^ *((((v9 & v10) + a2) & v13) + v7 + 5) ^ *((((v9 & v10) + a2) & v13) + v6 + 3) ^ ((((v9 & v10) + a2) & v13) * a3);
  return (*(v12 + 8 * (((v13 == 0) * a4) ^ v8)))();
}

uint64_t sub_1000A0D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *STACK[0x730] = v67;
  v70 = STACK[0x730];
  v70[67] = a67[19] - ((2 * a67[19]) & 0xBF) + 95;
  v70[66] = a67[18] - ((2 * a67[18]) & 0xBF) + 95;
  v70[65] = a67[17] - ((2 * a67[17]) & 0xBF) + 95;
  v70[64] = a67[16] - ((2 * a67[16]) & 0xBF) + 95;
  v70[63] = a67[15] - ((2 * a67[15]) & 0xBF) + 95;
  v70[62] = a67[14] - ((2 * a67[14]) & 0xBF) + 95;
  v70[61] = a67[13] - ((2 * a67[13]) & 0xBF) + 95;
  v70[60] = a67[12] - ((2 * a67[12]) & 0xBF) + 95;
  v70[59] = a67[11] - ((2 * a67[11]) & 0xBF) + 95;
  v70[58] = a67[10] - ((2 * a67[10]) & 0xBF) + 95;
  v70[57] = a67[9] - ((2 * a67[9]) & 0xBF) + 95;
  v70[56] = a67[8] - ((2 * a67[8]) & 0xBF) + 95;
  v70[55] = a67[7] - ((2 * a67[7]) & 0xBF) + 95;
  v70[54] = a67[6] - ((2 * a67[6]) & 0xBF) + 95;
  v70[53] = a67[5] - ((2 * a67[5]) & 0xBF) + 95;
  v70[52] = a67[4] - ((2 * a67[4]) & 0xBF) + 95;
  return (*(v69 + 8 * ((v68 - 32925) ^ 0x16AA)))(a67);
}

uint64_t sub_1000A0F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(STACK[0xF18] + 8 * v9);
  v11 = STACK[0xB80];
  v12 = -STACK[0xB80];
  STACK[0xEB0] = a1 & 0xFFFFFFF8;
  return v10(a1, v12, 8 - (a1 & 0xFFFFFFF8), a3 + a8 + v8, a1 - v11, a6 - v11);
}

uint64_t sub_1000A0FAC@<X0>(int a1@<W8>)
{
  STACK[0x300] = *(v4 + 8 * a1);
  STACK[0x2F0] = v2 + 112;
  return (*(v4 + 8 * (((v3 == 0) * (v1 - 39551 + (v1 ^ 0x18FD))) ^ v1)))();
}

uint64_t sub_1000A0FF4(uint64_t a1, uint64_t a2, int8x16_t *a3, uint64_t a4, int a5, double a6, __n128 a7, __n128 a8, __n128 a9, int8x16_t a10, double a11, int8x16_t a12)
{
  v19 = v16 & 0xF;
  v20 = v15;
  v21.i64[0] = vqtbl4q_s8(*(&a7 - 1), a10).u64[0];
  *&v21.i64[1] = a11;
  v22 = vrev64q_s8(vmulq_s8(v21, a12));
  *a3 = veorq_s8(veorq_s8(veorq_s8(*(v13 + v19 - 15), *a3), veorq_s8(*(v19 + v12 - 12), *(v14 + v19 - 15))), vextq_s8(v22, v22, 8uLL));
  return (*(*(v18 - 192) + 8 * (((a4 == 0) * a5) ^ v17)))(a1, a2, a3 - 1, a4 - 16);
}

uint64_t sub_1000A1238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16)
{
  v21 = ((v19 ^ 0xFEFF1BBD) + ((2 * v19) & 0x377A) + v16 + 16800546) % a16;
  *(v17 + v21) -= v18;
  return (*(v20 + 8 * v16))();
}

uint64_t sub_1000A12EC@<X0>(int a1@<W8>)
{
  if (v2 <= 0x40)
  {
    v2 = v3;
  }

  return (*(v4 + 8 * ((1015 * (((v2 - 1 < a1 - 1141764732) ^ (((v1 + 23) | 0x90) + 26)) & 1)) ^ v1)))();
}

uint64_t sub_1000A14CC()
{
  v6 = v0 ^ LODWORD(STACK[0x250]) ^ v1 ^ v2 ^ (((v4 + 383) ^ 0x9307BF08) + v3);
  LODWORD(STACK[0x364]) = v4 + 25091;
  v8 = v6 != ((v4 + 25091) ^ 0x13015F89) && (((v4 - 5403747) & 0x7B5FB6BE ^ 0x7B0D9031) & v6) == 12;
  v9 = *(v5 + 8 * ((241 * v8) ^ (v4 + 383)));
  LODWORD(STACK[0x360]) = -42899;
  return v9();
}

void sub_1000A155C(int a1@<W8>)
{
  if (a1 + 1188295221 >= 0)
  {
    v3 = 2102173152 - v2;
  }

  else
  {
    v3 = v2;
  }

  *(v1 + 4) = v3;
}

uint64_t sub_1000A1620(int a1)
{
  v6 = ((2 * a1) & ((v3 ^ 0x983A) - 41978)) + (a1 ^ 0x3FA6579F);
  v7 = ((2 * a1) & 0x7C) + (a1 ^ 0xBFFEE3BE);
  v8 = *(v2 + v7 + 1073814594) ^ v5;
  v9 = ((*(v2 + v7 + 1073814597) << 24) | ((*(v2 + v7 + 1073814596) ^ v5) << 16) | v8 | ((*(v2 + v7 + 1073814595) ^ v5) << 8)) ^ 0x5F000000;
  v10 = v9 - 2 * (v9 & 0x69D5C715 ^ v8 & 4);
  v11 = ((v6 - 738197510) ^ 0x28B26047) & (2 * ((v6 - 738197510) & 0x67)) ^ (v6 - 738197510) & 0x67;
  v12 = ((2 * ((v6 - 738197510) ^ 0x28B26081)) ^ 0x895791CC) & ((v6 - 738197510) ^ 0x28B26081) ^ (2 * ((v6 - 738197510) ^ 0x28B26081)) & 0x44EBC8E6;
  v13 = v12 ^ 0x44284822;
  v14 = (v12 ^ 0x84) & (4 * v11) ^ v11;
  v15 = ((4 * v13) ^ 0x13AF2398) & v13 ^ (4 * v13) & 0xC4EBC8E0;
  v16 = (v15 ^ 0xAB0080) & (16 * v14) ^ v14;
  v17 = ((16 * (v15 ^ 0xC440C866)) ^ 0x4EBC8E60) & (v15 ^ 0xC440C866) ^ (16 * (v15 ^ 0xC440C866)) & 0xC4EBC8E0;
  v18 = v16 ^ 0xC4EBC8E6 ^ (v17 ^ 0x44A88800) & (v16 << 8);
  *(v1 + 4 * ((((v6 - 738197510) ^ (2 * ((v18 << 16) & 0x44EB0000 ^ v18 ^ ((v18 << 16) ^ 0x48E60000) & (((v17 ^ 0x80434086) << 8) & 0x44EB0000 ^ 0x4230000 ^ (((v17 ^ 0x80434086) << 8) ^ 0x6BC80000) & (v17 ^ 0x80434086))))) >> 2) ^ 0x39128E6A)) = ((((v10 - 371865839) ^ 0x22AE57E7) - 581851111) ^ (((v10 - 371865839) ^ 0xC46F36AC) + 999344468) ^ (((v10 - 371865839) ^ 0xF14A65A) - 253011546)) + 149340573;
  return (*(v4 + 8 * ((42 * ((v6 - 1067866011) < 0x40)) ^ v3)))();
}

uint64_t sub_1000A1938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  v22 = a6 + 24 * v17;
  *(v22 + 8) = v21;
  *(v22 + 12) = v19;
  *(v22 + 16) = a14;
  *(v22 + 24) = a16;
  return (*(v20 + 8 * ((33779 * (((a9 - 5507) | 0x80D0) + v16 + ((16760 * (a9 ^ 0x17A1)) ^ 0x54A711C9u) < v18)) ^ a9)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1000A19B8(int a1, int8x16_t a2, int8x8_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, int a9)
{
  v16.val[0].i64[0] = (v12 + a6 - 1) & 0xF;
  v16.val[0].i64[1] = (v12 + a6 + 14) & 0xF;
  v16.val[1].i64[0] = (v12 + a6 + 13) & 0xF;
  v16.val[1].i64[1] = (v12 + a6 + 12) & 0xF;
  v16.val[2].i64[0] = (v12 + a7) & 0xF;
  v16.val[2].i64[1] = (v12 + a6 + 10) & 0xF;
  v16.val[3].i64[0] = (v12 + a6 + 9) & 0xF;
  v16.val[3].i64[1] = (v12 + a6) & 0xF ^ 8;
  *(v13 + v12) = veor_s8(veor_s8(veor_s8(*(v11 + v16.val[0].i64[0] - 7), *(a8 + v12)), veor_s8(*(v9 + v16.val[0].i64[0] - 7), *(v10 + v16.val[0].i64[0] - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v16, a2), a3)));
  return (*(v14 + 8 * (((a5 == a6) * a9) ^ a1)))();
}

uint64_t sub_1000A1AD0()
{
  *(v2 - 128) = *(v4 + 16);
  *(v2 - 120) = v1 - 353670337 * ((v2 - 128) ^ 0xB421F83D) - 13108;
  *(v2 - 112) = &v5;
  return (*(v0 + 8 * (v1 ^ 0xA93B)))(v2 - 128);
}

uint64_t sub_1000A1B60(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15)
{
  v32.i64[0] = a13 + v15 - 1;
  v32.i64[1] = a13 + v15 - 2;
  v33.i64[0] = a13 + v15 - 3;
  v33.i64[1] = a13 + v15 - 4;
  v34 = STACK[0x408];
  v35.i64[0] = a13 + v15 - 5;
  v35.i64[1] = a13 + v15 - 6;
  v36.i64[0] = a13 + v15 - 7;
  v36.i64[1] = v18 + v15;
  v37 = vandq_s8(v36, a1);
  v38 = vandq_s8(v35, a1);
  v39 = vandq_s8(v33, a1);
  v40 = vandq_s8(v32, a1);
  v41 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL), a3);
  v42 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL), a3);
  v43 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL), a3);
  v44 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL), a3);
  v45 = vsubq_s64(vorrq_s8(v41, a4), vorrq_s8(v41, a5));
  v46 = vsubq_s64(vorrq_s8(v42, a4), vorrq_s8(v42, a5));
  v47 = vsubq_s64(vorrq_s8(v43, a4), vorrq_s8(v43, a5));
  v48 = vsubq_s64(vorrq_s8(v44, a4), vorrq_s8(v44, a5));
  v49 = vaddq_s64(v46, a5);
  v50 = vaddq_s64(v45, a5);
  v51 = veorq_s8(v50, a6);
  v52 = veorq_s8(v49, a6);
  v53 = veorq_s8(v49, a7);
  v54 = veorq_s8(v50, a7);
  v55 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v54);
  v56 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v53);
  v57 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v56, v56), a8), v56), v21), v22);
  v58 = vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL);
  v59 = vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL);
  v60 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v55, v55), a8), v55), v21), v22);
  v61 = veorq_s8(v60, v59);
  v62 = veorq_s8(v57, v58);
  v63 = vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL);
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v62);
  v65 = veorq_s8(vaddq_s64(v63, v61), v23);
  v66 = vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL);
  v67 = veorq_s8(v64, v23);
  v68 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v69 = veorq_s8(v65, v66);
  v70 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v69);
  v72 = vaddq_s64(v70, v68);
  v73 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v72, v72), v24), v72), v25), v26);
  v74 = vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL);
  v75 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v71, v71), v24), v71), v25), v26);
  v76 = veorq_s8(v75, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v77 = veorq_s8(v73, v74);
  v78 = vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL);
  v79 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v77);
  v80 = veorq_s8(vaddq_s64(v78, v76), v27);
  v81 = vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL);
  v82 = veorq_s8(v79, v27);
  v83 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL));
  v84 = veorq_s8(v80, v81);
  v85 = vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL);
  v86 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v84);
  v87 = veorq_s8(vaddq_s64(v85, v83), v28);
  v88 = veorq_s8(v86, v28);
  v89 = vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL);
  v90 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL));
  v91 = veorq_s8(v87, v89);
  v92 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v93 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v91);
  v94 = veorq_s8(vaddq_s64(v92, v90), v29);
  v95 = vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL);
  v96 = veorq_s8(v93, v29);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v98 = veorq_s8(v94, v95);
  v99 = vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL);
  v100 = vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL);
  v101 = vaddq_s64(v47, a5);
  v139.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v100, v98), v30), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), a2)));
  v139.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v99, v97), v30), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), a2)));
  v102 = veorq_s8(v101, a6);
  v103 = veorq_s8(v101, a7);
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103);
  v105 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v104, v104), a8), v104), v21), v22);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106), v23);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v109, v109), v24), v109), v25), v26);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111), v27);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), v28);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v116 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115), v29);
  v117 = vaddq_s64(v48, a5);
  v139.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL))), v30), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), a2)));
  v118 = veorq_s8(v117, a6);
  v119 = vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL);
  v120 = veorq_s8(v117, a7);
  v121 = vaddq_s64(v119, v120);
  v122 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v121, v121), a8), v121), v21), v22);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v124 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123), v23);
  v125 = vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL);
  v126 = vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL);
  v127 = veorq_s8(v124, v125);
  v128 = vaddq_s64(v126, v127);
  v129 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v128, v128), v24), v128), v25), v26);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v131 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v130), v27);
  v132 = vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL);
  v133 = vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL);
  v134 = veorq_s8(v131, v132);
  v135 = veorq_s8(vaddq_s64(v133, v134), v28);
  v136 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v137 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v136), v29);
  v139.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL))), v30), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), a2)));
  *(v19 + v15) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v139, v31)), *(a13 + v15 - 8));
  return (*(v34 + 8 * ((((v17 | (v16 + v15)) >= 0) * v20) ^ a15)))();
}

uint64_t sub_1000A209C()
{
  STACK[0x540] = 0;
  STACK[0x668] = 0x10F1BE42386B0C95;
  STACK[0x7E8] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (((v0 - 587337404) & 0x23025F61 ^ 0x5B94) + v0)))();
}

uint64_t sub_1000A20F8(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, uint64_t a16)
{
  *&STACK[0x440] = *(v17 + a15 - 16);
  v32.i64[0] = v17 + a15 - 7;
  v32.i64[1] = v18 + a15 + a16;
  v33.i64[0] = v17 + a15 - 1;
  v33.i64[1] = v17 + a15 - 2;
  v34.i64[0] = v17 + a15 - 3;
  v34.i64[1] = v17 + a15 - 4;
  v35.i64[0] = v17 + a15 - 5;
  v35.i64[1] = v17 + a15 - 6;
  v36.i64[0] = v17 + a15 - 9;
  v36.i64[1] = v17 + a15 - 10;
  v37.i64[0] = v17 + a15 - 11;
  v37.i64[1] = v17 + a15 - 12;
  v38 = vandq_s8(v35, a1);
  v39 = vandq_s8(v34, a1);
  v40 = vandq_s8(v33, a1);
  v41 = vandq_s8(v32, a1);
  v42 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL), a3);
  v43 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL), a3);
  v44 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL), a3);
  v45 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL), a3);
  v46 = vsubq_s64(vorrq_s8(v44, a4), vorrq_s8(v44, a5));
  v47 = vsubq_s64(vorrq_s8(v45, a4), vorrq_s8(v45, a5));
  v48 = vaddq_s64(vsubq_s64(vorrq_s8(v43, a4), vorrq_s8(v43, a5)), a5);
  v49 = vaddq_s64(vsubq_s64(vorrq_s8(v42, a4), vorrq_s8(v42, a5)), a5);
  v50 = veorq_s8(v49, a6);
  v51 = veorq_s8(v48, a6);
  v52 = veorq_s8(v48, a7);
  v53 = veorq_s8(v49, a7);
  v54 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v53);
  v55 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v52);
  v56 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v55, v55), a8), v55), v22), v23);
  v57 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v54, v54), a8), v54), v22), v23);
  v58 = veorq_s8(v57, vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL));
  v59 = veorq_s8(v56, vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL));
  v60 = vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL);
  v61 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v59);
  v62 = veorq_s8(vaddq_s64(v60, v58), v24);
  v63 = veorq_s8(v61, v24);
  v64 = veorq_s8(v63, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v65 = veorq_s8(v62, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v66 = vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL);
  v67 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v65);
  v68 = vaddq_s64(v66, v64);
  v69 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v68, v68), v25), v68), v26), v27);
  v70 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v67, v67), v25), v67), v26), v27);
  v71 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL));
  v72 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL));
  v73 = vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL);
  v74 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v72);
  v75 = veorq_s8(vaddq_s64(v73, v71), v28);
  v76 = veorq_s8(v74, v28);
  v77 = vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL);
  v78 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v79 = veorq_s8(v75, v77);
  v80 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v81 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v79);
  v82 = veorq_s8(vaddq_s64(v80, v78), v29);
  v83 = vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL);
  v84 = veorq_s8(v81, v29);
  v85 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL));
  v86 = veorq_s8(v82, v83);
  v87 = vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL);
  v88 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v86);
  v89 = veorq_s8(vaddq_s64(v87, v85), v30);
  v90 = veorq_s8(v88, v30);
  v91 = vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL);
  v92 = veorq_s8(v90, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL));
  v93 = veorq_s8(v89, v91);
  v91.i64[0] = v17 + a15 - 13;
  v91.i64[1] = v17 + a15 - 14;
  v94 = vaddq_s64(v46, a5);
  v95 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v92), v31);
  v198.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v93), v31), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), a2)));
  v198.val[1] = vshlq_u64(v95, vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), a2)));
  v96 = veorq_s8(v94, a6);
  v97 = veorq_s8(v94, a7);
  v98 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97);
  v99 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v98, v98), a8), v98), v22), v23);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v101 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100), v24);
  v102 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102);
  v104 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v103, v103), v25), v103), v26), v27);
  v105 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v106 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105), v28);
  v107 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107), v29);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109), v30);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v112 = vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL);
  v110.i64[0] = v17 + a15 - 15;
  v110.i64[1] = v17 + a15 - 16;
  v113 = vaddq_s64(v112, v111);
  v114 = vandq_s8(v110, a1);
  v115 = vaddq_s64(v47, a5);
  v198.val[0] = vshlq_u64(veorq_s8(v113, v31), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), a2)));
  v116 = veorq_s8(v115, a6);
  v117 = veorq_s8(v115, a7);
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117);
  v119 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v118, v118), a8), v118), v22), v23);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v121 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120), v24);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122);
  v124 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v123, v123), v25), v123), v26), v27);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v126 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125), v28);
  v127 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v128 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v127), v29);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v130 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129), v30);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v132 = vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL);
  v133 = vandq_s8(v91, a1);
  v134 = vaddq_s64(v132, v131);
  v135 = vandq_s8(v37, a1);
  v198.val[3] = vshlq_u64(veorq_s8(v134, v31), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), a2)));
  v136 = vandq_s8(v36, a1);
  v137 = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v138 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v139 = vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL);
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), a3);
  v141 = vaddq_s64(v139, a3);
  v142 = vaddq_s64(v138, a3);
  v143 = vaddq_s64(v137, a3);
  v144 = vsubq_s64(vorrq_s8(v140, a4), vorrq_s8(v140, a5));
  v145 = vsubq_s64(vorrq_s8(v141, a4), vorrq_s8(v141, a5));
  v146 = vsubq_s64(vorrq_s8(v142, a4), vorrq_s8(v142, a5));
  v147 = vsubq_s64(vorrq_s8(v143, a4), vorrq_s8(v143, a5));
  v148 = vaddq_s64(v145, a5);
  v149 = vaddq_s64(v144, a5);
  v142.i64[0] = vqtbl4q_s8(v198, *&STACK[0x430]).u64[0];
  v198.val[0] = veorq_s8(v149, a6);
  v198.val[1] = veorq_s8(v148, a6);
  v198.val[2] = veorq_s8(v148, a7);
  v198.val[3] = veorq_s8(v149, a7);
  v198.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198.val[0], 0x38uLL), v198.val[0], 8uLL), v198.val[3]);
  v198.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198.val[1], 0x38uLL), v198.val[1], 8uLL), v198.val[2]);
  v198.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v198.val[1], v198.val[1]), a8), v198.val[1]), v22), v23);
  v150 = vsraq_n_u64(vshlq_n_s64(v198.val[2], 3uLL), v198.val[2], 0x3DuLL);
  v198.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v198.val[0], v198.val[0]), a8), v198.val[0]), v22), v23);
  v198.val[2] = veorq_s8(v198.val[0], vsraq_n_u64(vshlq_n_s64(v198.val[3], 3uLL), v198.val[3], 0x3DuLL));
  v198.val[3] = veorq_s8(v198.val[1], v150);
  v151 = vsraq_n_u64(vshlq_n_s64(v198.val[0], 0x38uLL), v198.val[0], 8uLL);
  v198.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198.val[1], 0x38uLL), v198.val[1], 8uLL), v198.val[3]);
  v198.val[1] = veorq_s8(vaddq_s64(v151, v198.val[2]), v24);
  v198.val[0] = veorq_s8(v198.val[0], v24);
  v152 = vsraq_n_u64(vshlq_n_s64(v198.val[2], 3uLL), v198.val[2], 0x3DuLL);
  v198.val[2] = veorq_s8(v198.val[0], vsraq_n_u64(vshlq_n_s64(v198.val[3], 3uLL), v198.val[3], 0x3DuLL));
  v198.val[3] = veorq_s8(v198.val[1], v152);
  v153 = vsraq_n_u64(vshlq_n_s64(v198.val[0], 0x38uLL), v198.val[0], 8uLL);
  v198.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198.val[1], 0x38uLL), v198.val[1], 8uLL), v198.val[3]);
  v198.val[1] = vaddq_s64(v153, v198.val[2]);
  v198.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v198.val[1], v198.val[1]), v25), v198.val[1]), v26), v27);
  v154 = vsraq_n_u64(vshlq_n_s64(v198.val[2], 3uLL), v198.val[2], 0x3DuLL);
  v198.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v198.val[0], v198.val[0]), v25), v198.val[0]), v26), v27);
  v198.val[2] = veorq_s8(v198.val[0], vsraq_n_u64(vshlq_n_s64(v198.val[3], 3uLL), v198.val[3], 0x3DuLL));
  v198.val[3] = veorq_s8(v198.val[1], v154);
  v155 = vsraq_n_u64(vshlq_n_s64(v198.val[0], 0x38uLL), v198.val[0], 8uLL);
  v198.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198.val[1], 0x38uLL), v198.val[1], 8uLL), v198.val[3]);
  v198.val[1] = veorq_s8(vaddq_s64(v155, v198.val[2]), v28);
  v198.val[0] = veorq_s8(v198.val[0], v28);
  v156 = vsraq_n_u64(vshlq_n_s64(v198.val[2], 3uLL), v198.val[2], 0x3DuLL);
  v198.val[2] = veorq_s8(v198.val[0], vsraq_n_u64(vshlq_n_s64(v198.val[3], 3uLL), v198.val[3], 0x3DuLL));
  v198.val[3] = veorq_s8(v198.val[1], v156);
  v157 = vsraq_n_u64(vshlq_n_s64(v198.val[0], 0x38uLL), v198.val[0], 8uLL);
  v198.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198.val[1], 0x38uLL), v198.val[1], 8uLL), v198.val[3]);
  v198.val[1] = veorq_s8(vaddq_s64(v157, v198.val[2]), v29);
  v198.val[0] = veorq_s8(v198.val[0], v29);
  v158 = vsraq_n_u64(vshlq_n_s64(v198.val[2], 3uLL), v198.val[2], 0x3DuLL);
  v198.val[2] = veorq_s8(v198.val[0], vsraq_n_u64(vshlq_n_s64(v198.val[3], 3uLL), v198.val[3], 0x3DuLL));
  v198.val[3] = veorq_s8(v198.val[1], v158);
  v159 = vsraq_n_u64(vshlq_n_s64(v198.val[0], 0x38uLL), v198.val[0], 8uLL);
  v198.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198.val[1], 0x38uLL), v198.val[1], 8uLL), v198.val[3]);
  v198.val[1] = veorq_s8(vaddq_s64(v159, v198.val[2]), v30);
  v160 = vsraq_n_u64(vshlq_n_s64(v198.val[2], 3uLL), v198.val[2], 0x3DuLL);
  v198.val[0] = veorq_s8(v198.val[0], v30);
  v198.val[2] = veorq_s8(v198.val[0], vsraq_n_u64(vshlq_n_s64(v198.val[3], 3uLL), v198.val[3], 0x3DuLL));
  v161 = vaddq_s64(v146, a5);
  v198.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198.val[1], 0x38uLL), v198.val[1], 8uLL), veorq_s8(v198.val[1], v160)), v31), vnegq_s64(vandq_s8(vshlq_n_s64(v110, 3uLL), a2)));
  v198.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198.val[0], 0x38uLL), v198.val[0], 8uLL), v198.val[2]), v31), vnegq_s64(vandq_s8(vshlq_n_s64(v91, 3uLL), a2)));
  v162 = veorq_s8(v161, a6);
  v163 = veorq_s8(v161, a7);
  v164 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163);
  v165 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v164, v164), a8), v164), v22), v23);
  v166 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v167 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166), v24);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168);
  v170 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v169, v169), v25), v169), v26), v27);
  v171 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v172 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171), v28);
  v173 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v174 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v173), v29);
  v175 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL));
  v176 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v175), v30);
  v177 = vaddq_s64(v147, a5);
  v198.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL))), v31), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), a2)));
  v178 = veorq_s8(v177, a6);
  v179 = veorq_s8(v177, a7);
  v180 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), v179);
  v181 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v180, v180), a8), v180), v22), v23);
  v182 = vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL);
  v183 = vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL);
  v184 = veorq_s8(v181, v182);
  v185 = veorq_s8(vaddq_s64(v183, v184), v24);
  v186 = veorq_s8(v185, vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL));
  v187 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL), v186);
  v188 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v187, v187), v25), v187), v26), v27);
  v189 = vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL);
  v190 = vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL);
  v191 = veorq_s8(v188, v189);
  v192 = veorq_s8(vaddq_s64(v190, v191), v28);
  v193 = veorq_s8(v192, vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL));
  v194 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192, 0x38uLL), v192, 8uLL), v193), v29);
  v195 = veorq_s8(v194, vsraq_n_u64(vshlq_n_s64(v193, 3uLL), v193, 0x3DuLL));
  v196 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL), v195), v30);
  v198.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL), veorq_s8(v196, vsraq_n_u64(vshlq_n_s64(v195, 3uLL), v195, 0x3DuLL))), v31), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), a2)));
  v142.i64[1] = vqtbl4q_s8(v198, *&STACK[0x430]).u64[0];
  v198.val[0] = vrev64q_s8(v142);
  *(v19 + a15) = veorq_s8(vextq_s8(v198.val[0], v198.val[0], 8uLL), *&STACK[0x440]);
  return (*(v21 + 8 * (((v16 == a15) * v20) ^ a14)))();
}

uint64_t sub_1000A2A98@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11)
{
  v14 = 1022166737 * (((&a8 | 0xB8C0419D) - (&a8 & 0xB8C04198)) ^ 0x2D0A00F);
  a8 = v12;
  a9 = a1 - v14 - 173248850;
  a10 = v14 + 4393 + v13;
  v15 = (*(v11 + 8 * (v13 + 24271)))(&a8);
  return (*(v11 + 8 * (((a11 == ((v13 - 25892) | 0x30B1) + 1497654413) * ((v13 - 13427) ^ 0x37C5)) ^ v13)))(v15);
}

uint64_t sub_1000A2B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  v52 = (a21 - 216864747);
  *(v51 - 128) = v52;
  return (*(v50 + 8 * (v49 ^ 0x3759 ^ (((((v49 + 14169) ^ (((v52 - v49) | (v49 - v52)) >> 31)) & 1) == 0) * (((v49 + 39911554) | 0xC98CF108) + 873598621)))))(a49, 482982409, 678247343, 57521039, 2000009816, 999990739, 143279396, 588290056);
}

uint64_t sub_1000A2F24(double a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  a2.n128_u16[0] = 9509;
  a2.n128_u8[2] = 37;
  a2.n128_u8[3] = 37;
  a2.n128_u8[4] = 37;
  a2.n128_u8[5] = 37;
  a2.n128_u8[6] = 37;
  a2.n128_u8[7] = 37;
  return (*(v6 + 8 * (a6 - 4022)))(xmmword_100F523B0, a2);
}

uint64_t sub_1000A2F74@<X0>(int a1@<W8>)
{
  v2 = STACK[0x8C0];
  STACK[0x9C0] = STACK[0x8C0];
  return (*(v1 + 8 * ((((((a1 - 24525) | 0xC0) ^ 0xFFFF5774) + (a1 ^ 0xC76E)) * (v2 != 0)) ^ a1)))();
}

uint64_t sub_1000A32CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  *(v40 + 4736) = a40;
  *(v43 - 152) = a34 + 193924789 * (((v41 | 0xFEB92B7D) - (v41 & 0xFEB92B78)) ^ 0x4802191B) + 43733;
  *(v40 + 4744) = a31;
  (*(v42 + 8 * (a34 + 45340)))(v43 - 152);
  return (*(v42 + 8 * ((10649 * (*(v43 - 128) < ((a34 - 579036614) & 0xEFD3CDFF) + 943256043)) ^ a34)))(v43 - 152);
}

uint64_t sub_1000A34FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v42 = v40 + ((a3 + 10900) ^ 0x2F64CF1F) + (((*(a40 + 88) ^ 0x1CAC4F58) - 481054552) ^ ((*(a40 + 88) ^ 0x8AD12B9A) + 1966003302) ^ ((*(a40 + 88) ^ 0x8B01E2BE) + 1962810690));
  *(a40 + 88) = v42 - ((2 * v42 + 985166880) & 0x3AF90CF8) - 1160200052;
  return (*(v41 + 8 * a3))();
}

uint64_t sub_1000A35E8()
{
  v3 = v0 + STACK[0x610];
  v4 = v3 - 24231 + ((v1 - 7400) | 0x58B1u);
  v5 = __ROR8__(v4 & 0xFFFFFFFFFFFFFFF8, 8);
  v6 = ((v5 - 0x296E95066F186A7FLL) | 0xD98B9EB7C7D590A8) - ((v5 - 0x296E95066F186A7FLL) | 0x26746148382A6F57) + 0x26746148382A6F57;
  v7 = v6 ^ 0xDEA987543BF2A4DALL;
  v6 ^= 0x6A22D098BCCE08D4uLL;
  v8 = (__ROR8__(v7, 8) + v6) ^ 0x14BA074A2F986FE5;
  v9 = v8 ^ __ROR8__(v6, 61);
  v10 = __ROR8__(v8, 8);
  v11 = (((2 * (v10 + v9)) | 0xBABF5F94CD26D9DELL) - (v10 + v9) - 0x5D5FAFCA66936CEFLL) ^ 0x716827899F370277;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0xBD7D2DE9C10AA16ALL;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0x82B08017BF43C069;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xAA9DDABAE2E4D47CLL;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (((v19 + v18) | 0x741CB85328B13BADLL) - ((v19 + v18) | 0x8BE347ACD74EC452) - 0x741CB85328B13BAELL) ^ 0xFBAE9910D66A571ELL;
  v21 = (((__ROR8__(v20, 8) + (v20 ^ __ROR8__(v18, 61))) ^ 0x9B1C7427651E0F18) >> (8 * ((v3 + 89 + ((v1 + 24) | 0xB1)) & 7))) ^ *v4;
  v22 = __ROR8__((v3 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v23 = (v22 - 0x296E95066F186A7FLL) ^ 0xB3A94E2F7B1B987CLL;
  v24 = (__ROR8__((v22 - 0x296E95066F186A7FLL) ^ 0x72219E3FC273472, 8) + v23) ^ 0x14BA074A2F986FE5;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0x2C378843F9A46E98;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0xBD7D2DE9C10AA16ALL;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x82B08017BF43C069;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (v32 + v31 - ((2 * (v32 + v31)) & 0x407FFC9E280355ECLL) - 0x5FC001B0EBFE550ALL) ^ 0xAA224F5F6E57E8ALL;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (((2 * (v35 + v34)) | 0x139A70A4D8F62474) - (v35 + v34) + 0x7632C7AD9384EDC6) ^ 0x67F191192A07E89;
  v37 = (((((__ROR8__(v36, 8) + (v36 ^ __ROR8__(v34, 61))) ^ 0x9B1C7427651E0F18) >> (8 * ((v3 + 11) & 7))) ^ *(v3 + 11)) << 48) | (v21 << 56);
  v38 = __ROR8__((v3 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v39 = ((v38 - 0x296E95066F186A7FLL) | 0xDA387B23D91E845) - ((v38 - 0x296E95066F186A7FLL) | 0xF25C784DC26E17BALL) - 0xDA387B23D91E846;
  v40 = v39 ^ 0xA819E51C1B6DC37;
  v39 ^= 0xBE0AC99D468A7039;
  v41 = (__ROR8__(v40, 8) + v39) ^ 0x14BA074A2F986FE5;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = __ROR8__(v41, 8);
  v44 = __ROR8__((((v43 + v42) ^ 0xCFB5DE9FCD19F1EELL | 0xC83A9E8640CAE2E2) - ((v43 + v42) ^ 0xCFB5DE9FCD19F1EELL | 0x37C56179BF351D1DLL) + 0x37C56179BF351D1DLL) ^ 0x2BB8C85A74777D94, 8);
  v45 = (((v43 + v42) ^ 0xCFB5DE9FCD19F1EELL | 0xC83A9E8640CAE2E2) - ((v43 + v42) ^ 0xCFB5DE9FCD19F1EELL | 0x37C56179BF351D1DLL) + 0x37C56179BF351D1DLL) ^ 0x2BB8C85A74777D94 ^ __ROR8__(v42, 61);
  v46 = (v44 + v45) ^ 0xBD7D2DE9C10AA16ALL;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ 0x82B08017BF43C069;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = __ROR8__(v48, 8);
  v51 = (((2 * (v50 + v49)) & 0x2D8EB92793D1DE9ELL) - (v50 + v49) + 0x6938A36C361710B0) ^ 0xC3A579D6D4F3C4CCLL;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (v53 + v52 - ((2 * (v53 + v52)) & 0x2CFA33F60B857204) - 0x6982E604FA3D46FELL) ^ 0x19CF38B8FB19D5B1;
  v55 = v54 ^ __ROR8__(v52, 61);
  v56 = __ROR8__(v54, 8);
  v57 = v37 | (((((((2 * (v56 + v55)) | 0xEE3077E3148AFAALL) - (v56 + v55) - 0x77183BF18A457D5) ^ 0x9C6DF7987DBA58CDLL) >> (8 * ((v3 + 12) & 7))) ^ *(v3 + 12)) << 40);
  v58 = __ROR8__((v3 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v59 = (0x296E95066F186A7ELL - v58) & 0xC971C6B8B50DFC7ALL | (v58 + 0x16916AF990E79581) & 0x348E39474AF20385;
  v60 = v59 ^ 0xCC53DF5B492AC808;
  v59 ^= 0x78D88897CE166406uLL;
  v61 = __ROR8__(v60, 8);
  v62 = (v61 + v59 - ((2 * (v61 + v59)) & 0xDFD25EE9D1DF1F84) - 0x1016D08B1710703ELL) ^ 0xFB53283EC777E027;
  v63 = v62 ^ __ROR8__(v59, 61);
  v64 = __ROR8__(v62, 8);
  v65 = (((v64 + v63) & 0x6F009D7149D636BFLL ^ 0x6000080109842208) + ((v64 + v63) & 0x90FF628EB629C940 ^ 0x5902822220C841) - 1) ^ 0x4C6E82C0D20084D0;
  v66 = v65 ^ __ROR8__(v63, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ 0xBD7D2DE9C10AA16ALL;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = (__ROR8__(v67, 8) + v68) ^ 0x82B08017BF43C069;
  v70 = __ROR8__(v69, 8);
  v71 = v69 ^ __ROR8__(v68, 61);
  v72 = (v70 + v71 - ((2 * (v70 + v71)) & 0x7860AE7B7CB4DB86) - 0x43CFA8C241A5923DLL) ^ 0x16AD8D875CBEB9BFLL;
  v73 = v72 ^ __ROR8__(v71, 61);
  v74 = __ROR8__(v72, 8);
  v75 = (((2 * (v74 + v73)) | 0x37F4B843D0ED49CCLL) - (v74 + v73) - 0x1BFA5C21E876A4E6) ^ 0x94487D6216ADC855;
  v76 = v57 | (((((__ROR8__(v75, 8) + (v75 ^ __ROR8__(v73, 61))) ^ 0x9B1C7427651E0F18) >> (8 * ((v3 + 13) & 7))) ^ *(v3 + 13)) << 32);
  v77 = __ROR8__((v3 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v78 = (v77 - 0x296E95066F186A7FLL) ^ 0xB3A94E2F7B1B987CLL;
  v79 = (__ROR8__((v77 - 0x296E95066F186A7FLL) ^ 0x72219E3FC273472, 8) + v78) ^ 0x14BA074A2F986FE5;
  v80 = v79 ^ __ROR8__(v78, 61);
  v81 = __ROR8__(v79, 8);
  v82 = (((v81 + v80) | 0xC65D178B32370E5ELL) - ((v81 + v80) | 0x39A2E874CDC8F1A1) + 0x39A2E874CDC8F1A1) ^ 0xEA6A9FC8CB9360C6;
  v83 = v82 ^ __ROR8__(v80, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ 0xBD7D2DE9C10AA16ALL;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = (__ROR8__(v84, 8) + v85) ^ 0x82B08017BF43C069;
  v87 = v86 ^ __ROR8__(v85, 61);
  v88 = __ROR8__(v86, 8);
  v89 = (((v88 + v87) & 0x3C4F41CD7192885DLL ^ 0x409418071828840) + ((v88 + v87) ^ 0xBA462C7D0219769DLL) - (((v88 + v87) ^ 0xBA462C7D0219769DLL) & 0x3C4F41CD7192885DLL)) ^ 0x2C94B70A916F2ABCLL;
  v90 = v89 ^ __ROR8__(v87, 61);
  v91 = (__ROR8__(v89, 8) + v90) ^ 0x8FB22143FEDB6CB3;
  v92 = v76 & 0xFFFFFFFF00FFFFFFLL | (((((__ROR8__(v91, 8) + (v91 ^ __ROR8__(v90, 61))) ^ 0x9B1C7427651E0F18) >> (8 * ((v3 + 14) & 7))) ^ *(v3 + 14)) << 24);
  v93 = __ROR8__((v3 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v94 = (0x296E95066F186A7ELL - v93) & 0x780AF26B0D74D962 | (v93 - 0x296E95066F186A7FLL) & 0x83F50D94F28B269DLL;
  v95 = v94 ^ 0x7B28EB88F153ED10;
  v94 ^= 0xCFA3BC44766F411ELL;
  v96 = (__ROR8__(v95, 8) + v94) ^ 0x14BA074A2F986FE5;
  v97 = v96 ^ __ROR8__(v94, 61);
  v98 = __ROR8__(v96, 8);
  v99 = (((2 * (v98 + v97)) & 0xCA89BB70944CC490) - (v98 + v97) - 0x6544DDB84A266249) ^ 0xB68CAA044C7DF32FLL;
  v100 = v99 ^ __ROR8__(v97, 61);
  v101 = __ROR8__(v99, 8);
  v102 = (((2 * (v101 + v100)) | 0x1F75380BFBD2AC84) - (v101 + v100) + 0x704563FA0216A9BELL) ^ 0x32C7B1EC3CE3F728;
  v103 = v102 ^ __ROR8__(v100, 61);
  v104 = __ROR8__(v102, 8);
  v105 = __ROR8__((v104 + v103 - ((2 * (v104 + v103)) & 0xDDD42B732980FAFELL) - 0x1115EA466B3F8281) ^ 0x6C5A95AE2B83BD16, 8);
  v106 = (v104 + v103 - ((2 * (v104 + v103)) & 0xDDD42B732980FAFELL) - 0x1115EA466B3F8281) ^ 0x6C5A95AE2B83BD16 ^ __ROR8__(v103, 61);
  v107 = (v105 + v106) ^ 0xAA9DDABAE2E4D47CLL;
  v108 = v107 ^ __ROR8__(v106, 61);
  v109 = __ROR8__(v107, 8);
  v110 = (((2 * (v109 + v108)) | 0x804A0600C215142ALL) - (v109 + v108) + 0x3FDAFCFF9EF575EBLL) ^ 0x4F9722439FD1E6A6;
  v111 = v92 & 0xFFFFFFFFFF00FFFFLL | (((((__ROR8__(v110, 8) + (v110 ^ __ROR8__(v108, 61))) ^ 0x9B1C7427651E0F18) >> (8 * ((v3 + 15) & 7))) ^ *(v3 + 15)) << 16);
  v112 = __ROR8__((v3 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v113 = -2 - (((0x296E95066F186A7ELL - v112) | 0x11E12D9BB2BEC557) + ((v112 + 0x16916AF990E79581) | 0xEE1ED2644D413AA8));
  v114 = __ROR8__(v113 ^ 0x16C334784E99F125, 8);
  v113 ^= 0xA24863B4C9A55D2BLL;
  v115 = (v114 + v113 - ((2 * (v114 + v113)) & 0xFBF4E2E424DEEDECLL) + 0x7DFA7172126F76F6) ^ 0x694076383DF71913;
  v116 = v115 ^ __ROR8__(v113, 61);
  v117 = (__ROR8__(v115, 8) + v116) ^ 0x2C378843F9A46E98;
  v118 = v117 ^ __ROR8__(v116, 61);
  v119 = __ROR8__(v117, 8);
  v120 = (((2 * (v119 + v118)) | 0xDAADC2F8462BDC12) - (v119 + v118) - 0x6D56E17C2315EE09) ^ 0xD02BCC95E21F4F63;
  v121 = v120 ^ __ROR8__(v118, 61);
  v122 = (__ROR8__(v120, 8) + v121) ^ 0x82B08017BF43C069;
  v123 = v122 ^ __ROR8__(v121, 61);
  v124 = __ROR8__(v122, 8);
  v125 = (((2 * (v124 + v123)) & 0x3240908671528FF2) - (v124 + v123) + 0x66DFB7BCC756B806) ^ 0xCC426D0625B26C7ALL;
  v126 = v125 ^ __ROR8__(v123, 61);
  v127 = __ROR8__(v125, 8);
  v128 = ((((__ROR8__((v127 + v126 - ((2 * (v127 + v126)) & 0x2AB1721DD3D07F4ALL) + 0x1558B90EE9E83FA5) ^ 0x9AEA984D17335316, 8) + ((v127 + v126 - ((2 * (v127 + v126)) & 0x2AB1721DD3D07F4ALL) + 0x1558B90EE9E83FA5) ^ 0x9AEA984D17335316 ^ __ROR8__(v126, 61))) ^ 0x9B1C7427651E0F18) >> (8 * ((v3 + 16) & 7))) ^ *(v3 + 16)) << 8;
  v129 = *(v3 + 17);
  v3 += 17;
  v130 = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  v131 = ((2 * ((v130 - 0x296E95066F186A7FLL) ^ 0x95FCC380C02B3D43)) | 0xF0E1BB0B64E685F2) - ((v130 - 0x296E95066F186A7FLL) ^ 0x95FCC380C02B3D43) - 0x7870DD85B27342F9;
  v132 = v131 ^ 0xEAAE07E68E7F4BC8;
  v131 ^= 0x5E25502A0943E7C6uLL;
  v133 = __ROR8__(v132, 8);
  v134 = (((v133 + v131) ^ 0x86248412544F2AE3 | 0xD5F5F4D0FD6E640FLL) - ((v133 + v131) ^ 0x86248412544F2AE3 | 0x2A0A0B2F02919BF0) + 0x2A0A0B2F02919BF0) ^ 0x476B778886B92109;
  v135 = v134 ^ __ROR8__(v131, 61);
  v136 = (__ROR8__(v134, 8) + v135) ^ 0x2C378843F9A46E98;
  v137 = v136 ^ __ROR8__(v135, 61);
  v138 = (__ROR8__(v136, 8) + v137) ^ 0xBD7D2DE9C10AA16ALL;
  v139 = v138 ^ __ROR8__(v137, 61);
  v140 = (__ROR8__(v138, 8) + v139) ^ 0x82B08017BF43C069;
  v141 = v140 ^ __ROR8__(v139, 61);
  v142 = __ROR8__(v140, 8);
  v143 = __ROR8__((((2 * (v142 + v141)) & 0x20795F03B727DD1ELL) - (v142 + v141) + 0x6FC3507E246C1170) ^ 0xC55E8AC4C688C50CLL, 8);
  v144 = (((2 * (v142 + v141)) & 0x20795F03B727DD1ELL) - (v142 + v141) + 0x6FC3507E246C1170) ^ 0xC55E8AC4C688C50CLL ^ __ROR8__(v141, 61);
  v145 = ((__ROR8__((v143 + v144) ^ 0x8FB22143FEDB6CB3, 8) + ((v143 + v144) ^ 0x8FB22143FEDB6CB3 ^ __ROR8__(v144, 61))) ^ 0x9B1C7427651E0F18) >> (8 * (v3 & 7u));
  STACK[0x4D0] = (((((v111 - ((2 * v111) & 0xE37F5BC500116574) - 0xE40521D7FF74D56) ^ 0x44E80009CEED6AB2) & ~v128 | v128 & 0x2700) ^ 0x6189CDC791AA4F61) & (v145 ^ ~v129 | 0xFFFFFFFFFFFFFF00) | (v145 ^ v129) & 0x86) ^ 0xAC0BD4F2D6DB187;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_1000A447C@<X0>(char a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W4>, uint64_t a5@<X8>)
{
  v13 = a3 - 1;
  *(a5 + v13) = *(v8 + (v13 & 0xF)) ^ *(v9 + v13) ^ ((v13 & 0xF) * a1) ^ *((v13 & 0xF) + v7 + 1) ^ *((a4 ^ v5) + (v13 & 0xF) + v6 + v11);
  return (*(v12 + 8 * (((v13 != 0) * a2) ^ v10)))();
}

uint64_t sub_1000A451C(uint64_t a1, int a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, int a7, int8x16_t a8, int8x8_t a9)
{
  v14.val[0].i64[0] = (a1 - 1) & 0xF;
  v14.val[0].i64[1] = (a1 + 14) & 0xF;
  v14.val[1].i64[0] = (a1 + 13) & 0xF;
  v14.val[1].i64[1] = (a1 + 12) & 0xF;
  v14.val[2].i64[0] = (a1 + 11) & 0xF;
  v14.val[2].i64[1] = (a1 + 10) & 0xF;
  v14.val[3].i64[0] = (a4 + a1) & 0xF;
  v14.val[3].i64[1] = a1 & 0xF ^ 8;
  *(a5 + a1) = veor_s8(veor_s8(veor_s8(*(v9 + v14.val[0].i64[0] - 7), *(a6 + a1)), veor_s8(*(v11 + v14.val[0].i64[0] - 7), *(v14.val[0].i64[0] + v10 - 3))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v14, a8), a9)));
  return (*(v12 + 8 * (((a3 == a1) * a7) ^ a2)))(a1 - 8);
}

uint64_t sub_1000A45D8@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  *a1 = *v2;
  *(a1 + 4) = *(v2 + 4);
  *(a1 + 5) = *(v2 + 5);
  return (*(v3 + 8 * (a2 & 0x74114FF5)))();
}

uint64_t sub_1000A471C(uint64_t a1)
{
  *(v2 + 16) = *a1;
  *(v2 + 88) = *(a1 + 72);
  *(v2 + 92) = *(a1 + 76);
  *(v2 + 96) = *(a1 + 80);
  *(v2 + 97) = *(a1 + 81);
  *(v2 + 120) = *(a1 + 104);
  *(v2 + 100) = *(a1 + 84);
  *(v2 + 124) = *(a1 + 108) & 1 | 0x2C;
  return (*(v3 + 8 * v1))();
}

uint64_t sub_1000A489C()
{
  STACK[0xAC0] = STACK[0x640];
  LODWORD(STACK[0x7D4]) = -1868306933;
  LODWORD(STACK[0x64C]) = STACK[0x7F4];
  LODWORD(STACK[0xA18]) = -2030923573;
  return (*(v1 + 8 * (v0 + 3413)))();
}

uint64_t sub_1000A48EC(uint64_t a1)
{
  v9 = a1 - 1;
  *(v8 + v9) ^= *(v1 + (v9 & 0xF)) ^ *((v9 & 0xF) + v2 + 1) ^ ((v9 & 0xF) * v5) ^ *(v3 + (v9 & 0xF)) ^ v6;
  return (*(v7 + 8 * ((15 * (v9 != 0)) ^ v4)))();
}

uint64_t sub_1000A4940@<X0>(int a1@<W8>)
{
  v4 = a1 + v1;
  v5 = v2 > (((v4 + 305201862) | 0xD009940) ^ 0xF6E41CED);
  return (*(v3 + 8 * (((4 * v5) | (8 * v5)) ^ v4)))();
}

uint64_t sub_1000A4A7C@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v8 = (v6 + 664340254) & 0xD866BFAC;
  a5 = v5;
  a3 = a1;
  a4 = v8 + 193924789 * (&a3 ^ 0xB6BB3266) - 23335;
  v9 = (*(v7 + 8 * (v8 + 15652)))(&a3);
  return (*(v7 + 8 * v8))(v9);
}

uint64_t sub_1000A4AE8()
{
  v6 = *v4;
  *(v3 - 1) = *(v4 - 1);
  *v3 = v6;
  return (*(v5 + 8 * (((v1 == 0) * v2) ^ v0)))();
}

uint64_t sub_1000A4DE8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 8);
  v4 = (((*v3 ^ 0xA61A7CFB) + 1508213509) ^ ((*v3 ^ 0xE84BB3CE) + 397691954) ^ ((*v3 ^ ((v1 ^ 0xD3A2) + 2022542420)) - 2022580528)) + 2001971166;
  v5 = (v4 ^ 0x3FCB4601) & (2 * (v4 & 0xBF8C4628)) ^ v4 & 0xBF8C4628;
  v6 = ((2 * (v4 ^ 0x7EC34651)) ^ 0x829E00F2) & (v4 ^ 0x7EC34651) ^ (2 * (v4 ^ 0x7EC34651)) & 0xC14F0078;
  v7 = v6 ^ 0x41410009;
  v8 = (v6 ^ 0x80020060) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0x53C01E4) & v7 ^ (4 * v7) & 0xC14F0078;
  v10 = v8 ^ 0xC14F0079 ^ (v9 ^ 0x10C0060) & (16 * v8);
  v11 = (16 * (v9 ^ 0xC0430019)) & 0xC14F0050 ^ 0xC10F0069 ^ ((16 * (v9 ^ 0xC0430019)) ^ 0x14F00790) & (v9 ^ 0xC0430019);
  v12 = (v10 << 8) & 0xC14F0000 ^ v10 ^ ((v10 << 8) ^ 0x4F007900) & v11;
  *v3 = v4 ^ (2 * ((v12 << 16) & 0x414F0000 ^ v12 ^ ((v12 << 16) ^ 0x790000) & ((v11 << 8) & 0x414F0000 ^ 0x4F0000 ^ ((v11 << 8) ^ 0x4F000000) & v11))) ^ 0x895FA8DF;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_1000A4FD4(int a1, double a2, __n128 a3)
{
  a3.n128_u16[0] = -22103;
  a3.n128_u8[2] = -87;
  a3.n128_u8[3] = -87;
  a3.n128_u8[4] = -87;
  a3.n128_u8[5] = -87;
  a3.n128_u8[6] = -87;
  a3.n128_u8[7] = -87;
  return (*(v3 + 8 * a1))(xmmword_100F523B0, a3);
}

uint64_t sub_1000A5158()
{
  v2 = v0 - 14424;
  v3 = (*(v1 + 8 * (v2 + 34266)))(LODWORD(STACK[0x9E0]));
  v4 = STACK[0x408];
  STACK[0x9F8] = v3;
  return (*(v4 + 8 * (((v3 == 0) * ((v2 - 10931) ^ 0x1A7B)) ^ v2)))();
}

uint64_t sub_1000A5270()
{
  STACK[0xAC0] = STACK[0x7D8];
  LODWORD(STACK[0x7D4]) = 1758940448;
  LODWORD(STACK[0x64C]) = -371865766;
  LODWORD(STACK[0xA18]) = 504838390;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_1000A52F0@<X0>(int a1@<W8>)
{
  v4 = a1 - v1;
  LODWORD(STACK[0x954]) = v4 + 607120786;
  v5 = (*(v3 + 8 * (v2 + 13547)))(v4 + ((v2 - 19629) | 0x1002u) - 664220284);
  v6 = STACK[0x408];
  STACK[0x890] = v5;
  return (*(v6 + 8 * (((v2 ^ (v5 == 0)) & 1 | (2 * ((v2 ^ (v5 == 0)) & 1))) ^ v2)))();
}

uint64_t sub_1000A537C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  HIDWORD(a17) = 0;
  v151 = v21 & 0xFFFFFFFE ^ 0xC3956C45;
  v148 = v21 & 0xFFFFFFF3 ^ 0xC3956C4DLL;
  v27 = *(v25 + v151);
  v28 = v21 & 0xFFFFFFF6;
  v29 = *(a15 + ((((v22 ^ 0xB2) + 103) ^ v27) ^ 0x9Fu));
  v30 = v21;
  v31 = *(v25 + v148);
  v28 ^= 0xC3956C4DuLL;
  *(v26 - 128) = v28;
  v32 = (v29 ^ v27);
  v33 = *(v25 + v28);
  v34 = (*(a12 + (v31 ^ 0xBB)) ^ v31) << 24;
  v35 = v30 & 0xFFFFFFFA ^ 0xC3956C45;
  *(v26 - 136) = v35;
  v149 = v30 & 0xFFFFFFFC ^ 0xC3956C47;
  LODWORD(v33) = *(a15 + (v33 ^ 0xC)) ^ v33;
  LODWORD(v31) = *(a15 + (*(v25 + v35) ^ 0xDELL)) ^ *(v25 + v35);
  v152 = v30 & 0xFFFFFFF1 ^ 0xC3956C4FLL;
  v36 = *(a14 + (*(v25 + v149) ^ 0xD1));
  v37 = *(a13 + (*(v25 + v152) ^ 0x3DLL)) ^ 1;
  v38 = v30 & 0xFFFFFFF8 ^ 0xC3956C47;
  *(v26 - 144) = v38;
  v39 = *(v25 + v38);
  v144 = v30 & 0xFFFFFFF0 ^ 0xC3956C4FLL;
  v40 = (v36 ^ 0xFFFFFFFD) & ((v32 << 16) ^ 0xE7362046) | v36 & 0xB9;
  v41 = *(v25 + v144);
  v42 = v30 ^ 0xC3956C45;
  *(v26 - 160) = v42;
  v43 = *(v25 + v42);
  v44 = (((v37 ^ (2 * v37 * v37)) << 8) ^ 0x2D45D5B2) & (v34 ^ 0xBA45FFB2) | v34 & 0xD2000000;
  v45 = *(a14 + (v39 ^ 0xBB));
  v46 = v41 ^ 0x1A;
  LODWORD(v41) = (v45 ^ 0xA2FF4438) & ((v31 << 16) ^ 0xA20644FD);
  LODWORD(v39) = v45 & 2;
  LODWORD(v31) = *(a14 + v46);
  v47 = v30 & 0xFFFFFFF5 ^ 0xC3956C4FLL;
  *(v26 - 152) = v47;
  v48 = (v44 ^ 0x920EB455) & (v31 ^ 0xFF5FFF22) ^ (v31 & 0x18 | 0x105000);
  v49 = *(v25 + v47) ^ 0x8DLL;
  LODWORD(v47) = v43 ^ 0x4F ^ *(a12 + (v43 ^ 0xCD));
  LODWORD(v46) = ((v47 << 24) ^ 0x1FFFFFFF) & (v40 ^ 0xA66DCC88);
  v50 = (v47 << 24) & 0xBE000000;
  v146 = v30 & 0xFFFFFFF2 ^ 0xC3956C4DLL;
  v51 = *(*(v26 - 120) + v146);
  v147 = v30 & 0xFFFFFFFB ^ 0xC3956C45;
  LODWORD(v43) = (*(a13 + v49) ^ (2 * (*(a13 + v49) ^ 1) * (*(a13 + v49) ^ 1))) << 8;
  v52 = *(*(v26 - 120) + v147);
  LODWORD(v33) = (v43 ^ 0xFFFFC0FF) & ((v33 << 16) ^ 0x9B6557F6) | v43 & 0xA800;
  v150 = v30 & 0xFFFFFFFD ^ 0xC3956C47;
  LODWORD(v52) = (*(a12 + (v52 ^ 0xE4)) ^ v52) << 24;
  LODWORD(v41) = (v52 ^ 0x7FFFFFF) & ((v39 | 0xBC4020C1) ^ v41);
  LOBYTE(v39) = *(a13 + (*(*(v26 - 120) + v150) ^ 0xD8));
  LODWORD(v39) = (v39 ^ (2 * (v39 ^ 1) * (v39 ^ 1))) << 8;
  LODWORD(v46) = (v39 ^ 0xFFFFCBFF) & (v50 ^ 0x9B554BB6 ^ v46);
  v145 = v30 & 0xFFFFFFF9 ^ 0xC3956C47;
  LOBYTE(v50) = *(a13 + (*(*(v26 - 120) + v145) ^ 0x84)) ^ 1;
  HIDWORD(a21) = v30;
  v142 = v30 & 0xFFFFFFF7 ^ 0xC3956C4DLL;
  v53 = *(*(v26 - 120) + v142);
  LODWORD(v41) = v52 & 0xE1FFFFFF | v41;
  LODWORD(v52) = (v50 ^ (2 * v50 * v50)) << 8;
  LODWORD(v41) = v52 & 0x1600 ^ a4 ^ (v52 ^ 0xFFFF0CFF) & (v41 ^ 0xD3E98DF9);
  LODWORD(v39) = v39 & 0x5800 ^ a7 ^ v46;
  LODWORD(v43) = v48 & 0x355C351A ^ v24 ^ (((*(a15 + (v51 ^ 0x98)) ^ v51) << 16) ^ 0xCA9DCAE5) & (v48 ^ 0xF5A4931A);
  LODWORD(v33) = v33 & 0x18435800 ^ v23 ^ (((*(a12 + (v53 ^ 0x6C)) ^ v53) << 24) ^ 0xC0BCA79B) & (v33 ^ 0x643FA06D);
  v54 = *(&off_1010A0B50 + (v22 ^ 0x103B)) - 447748475;
  LOBYTE(v42) = v23 ^ 0xC6;
  v55 = *(&off_1010A0B50 + (v22 ^ 0x1911)) - 1076765647;
  v56 = *(&off_1010A0B50 + v22 - 4243) - 1015490707;
  v57 = *(&off_1010A0B50 + v22 - 7588) - 157946414;
  v58 = *&v55[4 * (BYTE2(v41) ^ 0x6D)] ^ *&v54[4 * (BYTE3(v39) ^ 0x67)] ^ *&v56[4 * (BYTE1(v33) ^ 0xF8)] ^ *&v57[4 * (v43 ^ 0x3B)];
  LODWORD(v52) = *&v54[4 * (BYTE3(v33) ^ 0x96)];
  LODWORD(v33) = *&v55[4 * (BYTE2(v33) ^ 6)] ^ *&v54[4 * (BYTE3(v41) ^ 0xD1)] ^ *&v57[4 * (v39 ^ 0xF4)] ^ *&v56[4 * (BYTE1(v43) ^ 0xC2)];
  v143 = v30 & 0xFFFFFFF4 ^ 0xC3956C4FLL;
  v59 = v52 ^ *&v56[4 * (BYTE1(v39) ^ 0xC1)] ^ *&v57[4 * (v41 ^ 0x86)] ^ *&v55[4 * (BYTE2(v43) ^ 0x1C)];
  LODWORD(v39) = *&v55[4 * (BYTE2(v39) ^ 0x1B)] ^ *&v57[4 * ((v42 - ((2 * v42) & 0x8A) - 59) ^ 0xC9 ^ *(a14 + (*(*(v26 - 120) + v143) ^ 0x99)))] ^ *&v56[4 * (BYTE1(v41) ^ 0x4B)] ^ *&v54[4 * (BYTE3(v43) ^ 0x80)];
  LODWORD(v41) = *&v55[4 * (BYTE2(v33) ^ 0x64)] ^ *&v54[4 * (HIBYTE(v58) ^ 0xBF)] ^ *&v57[4 * (v39 ^ 0x8D)] ^ *&v56[4 * (((BYTE1(v59) ^ 0x14) - (BYTE1(v59) ^ 3)) ^ 0xFFFFFFFE) + 4 * (BYTE1(v59) ^ 0x14)];
  LODWORD(v43) = *&v56[4 * (BYTE1(v39) ^ 0x60)] ^ *&v54[4 * (BYTE3(v33) ^ 0x41)] ^ *&v55[4 * (BYTE2(v59) ^ 0x7E)] ^ *&v57[4 * (v58 ^ 0x51)];
  LODWORD(v42) = *&v54[4 * (HIBYTE(v59) ^ 7)];
  LODWORD(v46) = *&v56[4 * (BYTE1(v58) ^ 0x5F)] ^ *&v55[4 * (BYTE2(v39) ^ 0x54)] ^ *&v57[4 * (v33 ^ 0x16)] ^ ((((v42 ^ 0x631C04E4) - (v42 ^ 0xDCC5FD1D)) ^ 0xFFFFFFFE) + (v42 ^ 0x631C04E4));
  LODWORD(v33) = *&v56[4 * (BYTE1(v33) ^ 0x3C)] ^ *&v54[4 * (BYTE3(v39) ^ 0xDA)] ^ *&v55[4 * (BYTE2(v58) ^ 0x16)] ^ *&v57[4 * (v59 ^ 0xF9)];
  v60 = *&v55[4 * (BYTE2(v43) ^ 0x20)] ^ *&v54[4 * (BYTE3(v41) ^ 0x50)] ^ *&v56[4 * (BYTE1(v46) ^ 0x45)] ^ *&v57[4 * (v33 ^ 0x17)];
  v61 = *&v54[4 * (BYTE3(v43) ^ 0xC)] ^ *&v56[4 * (BYTE1(v33) ^ 0x5E)] ^ *&v57[4 * (v41 ^ 0x37)] ^ *&v55[4 * (BYTE2(v46) ^ 0x89)];
  LODWORD(v42) = *&v55[4 * (BYTE2(v33) ^ 0xA)] ^ *&v54[4 * (BYTE3(v46) ^ 0xCA)];
  LODWORD(v39) = *&v56[4 * (BYTE1(v41) ^ 0x87)];
  v62 = *&v54[4 * (BYTE3(v33) ^ 0xD1)];
  LODWORD(v33) = ((v42 ^ 0xE5126A) + (v39 ^ 0xEF053C6A) + ((2 * ((v39 ^ 0x3B0A8992) & (v42 ^ 0xE5126A) ^ v42 & 0x540FB5F8)) ^ 0xFFF5DF2F) + 1) ^ *&v57[4 * (v43 ^ 0x63)];
  LODWORD(v42) = *&v55[4 * (BYTE2(v41) ^ 0x56)] ^ v62 ^ *&v56[4 * (BYTE1(v43) ^ 0x3D)] ^ *&v57[4 * (v46 ^ 0xC5)];
  LODWORD(v39) = *&v55[4 * (BYTE2(v61) ^ 0x10)];
  LODWORD(v43) = v39 ^ (-1283231269 - (v39 ^ 0xDC20EF77)) ^ 0x6FA39EAC ^ (-1872993964 - (((v39 ^ 0xE9CAC5AD) + 372587091) ^ ((v39 ^ 0x6F020891) - 1862404241) ^ ((v39 ^ 0xE96B5390) + 378842224)));
  LOBYTE(v39) = v33 ^ 0x10;
  v63 = *&v56[4 * ((v33 ^ 0xE410) >> 8)] ^ *&v54[4 * (-(HIBYTE(v60) ^ 0x3A) ^ (167 - (HIBYTE(v60) ^ 0x9D)) ^ 0x7B25C621 ^ ((HIBYTE(v60) ^ 0x3A) - ((2 * (HIBYTE(v60) ^ 0x3A)) & 0x42) + 2066073121)) + 668] ^ *&v57[4 * (v42 ^ 0x45)] ^ (v43 - 1283231269);
  LODWORD(v43) = v42 ^ 0x4B5612B2;
  LODWORD(v42) = *&v56[4 * ((v42 ^ 0x12B2) >> 8)];
  v64 = *&v55[4 * ((v33 ^ 0xCFAEE410) >> 16)] ^ *&v54[4 * (HIBYTE(v61) ^ 0x8C)] ^ *&v57[4 * (v60 ^ 0xAB)] ^ ((v42 ^ (-(v42 ^ 0x62D4D6F8) - 1915622766) ^ (284869526 - (((v42 ^ 0xFCF0A160) + 51338912) ^ ((v42 ^ 0x4231C3CC) - 1110557644) ^ ((v42 ^ 0x51C45EC6) - 1371823814))) ^ 0xEF053C6A) - 1915622766);
  LODWORD(v33) = *&v55[4 * BYTE2(v43)] ^ *&v56[4 * (BYTE1(v60) ^ 0x4F)] ^ 0x381A7326 ^ *&v54[4 * (BYTE3(v33) ^ 0x68)];
  v65 = *&v56[4 * (BYTE1(v61) ^ 0xF4)];
  v66 = ((v33 & 0xB60E2286 ^ 0x89113EA7) & (v33 & 0x49F1DD79 ^ 0xFEAF6287) | v33 & 0x40E0C158) ^ *&v57[4 * (v61 ^ 0x8A)];
  v67 = *&v54[4 * BYTE3(v43)] ^ v65 ^ *&v55[4 * (BYTE2(v60) ^ 0x22)] ^ *&v57[4 * v39];
  v68 = *&v55[4 * (BYTE2(v64) ^ 0xDB)] ^ *&v54[4 * (HIBYTE(v63) ^ 0x92)] ^ *&v57[4 * (v67 ^ 0xB5)] ^ *&v56[4 * (BYTE1(v66) ^ 0x27)];
  v69 = (v63 >> 8) ^ 0x359AB0;
  v70 = BYTE1(v63) ^ 0xB0;
  v71 = v70 >= 0x8F;
  v72 = v70 - 143;
  if (v70 < 0x8F)
  {
    v72 = BYTE1(v63) ^ 0xB0;
  }

  v73 = v69 + 113;
  if (!v71)
  {
    v73 = BYTE1(v63) ^ 0xB0;
  }

  if (v72)
  {
    v74 = 0;
  }

  else
  {
    v74 = v73;
  }

  v75 = *&v54[4 * (HIBYTE(v66) ^ 0xF5)];
  v76 = *&v55[4 * (BYTE2(v66) ^ 0x48)] ^ *&v54[4 * (HIBYTE(v64) ^ 0xBD)] ^ *&v56[4 * (BYTE1(v67) ^ 0xE2)] ^ *&v57[4 * (v63 ^ 0x5F)] ^ ((-(BYTE2(v66) ^ 0xFF) ^ (-1283231269 - (BYTE2(v66) ^ 0xB3837124)) ^ 0x7C69F1D5 ^ (2087318228 - BYTE2(v66) - ((2 * (BYTE2(v66) ^ 0xFF)) & 0x1AA))) - 1283231269);
  v77 = ((2 * v75) & 0x7FB3F3F2 ^ 0xB9CFFE3F) + 586546910 + (((v75 ^ 0x44FA891B) - 1157269787) ^ ((v75 ^ 0x972C7114) + 1758695148) ^ ((v75 ^ 0xB0CAFCEB) + 1328874261));
  v78 = *&v56[4 * ((v69 - v74) ^ 0x17)] ^ *&v55[4 * (BYTE2(v67) ^ 0x17)] ^ *&v57[4 * (v64 ^ 0x18)];
  v80 = __ROR4__(__ROR4__(*&v54[4 * ((v67 ^ 0x13A0F5B5u) >> 24)] ^ *&v55[4 * (BYTE2(v63) ^ 0x2D)] ^ *&v56[4 * (BYTE1(v64) ^ 0xEC)] ^ 0x2A7D8AEE, 7) ^ 0xAF8A0F09, 25);
  v79 = *&v57[4 * (v66 ^ 0x13)] ^ v80;
  v81 = v78 ^ v77;
  v82 = *&v57[4 * ((v57[4 * (v66 ^ 0x13)] ^ v80) ^ 0xDA)] ^ *&v54[4 * (HIBYTE(v68) ^ 0xB5)] ^ *&v56[4 * (((v78 ^ v77) >> 8) ^ 0xDB)] ^ __ROR4__(__ROR4__(*&v55[4 * (BYTE2(v76) ^ 0x36)], 11) ^ 0x90D6FF0E, 21);
  v83 = *&v54[4 * (HIBYTE(v76) ^ 0xC4)] ^ *&v56[4 * (((v79 ^ 0x5B2D) >> 8) ^ 0x17)] ^ *&v57[4 * (v68 ^ 0x46)] ^ *&v55[4 * (((v78 ^ v77) >> 16) ^ 0x31)];
  v84 = *&v56[4 * (BYTE1(v68) ^ 0x6A)] ^ *&v55[4 * (BYTE2(v79) ^ 0x8B)] ^ *&v54[4 * (((v78 ^ v77) >> 24) ^ 0xF3)];
  v85 = ((-(v84 ^ 0xEFE02E00) ^ (-1915622766 - (v84 ^ 0x6231C492)) ^ 0x3E2DF1D4 ^ ((v84 ^ 0xEFE02E00) - 2 * ((v84 ^ 0xEFE02E00) & 0x3E2DF1DF ^ v84 & 0xB) + 1043198420)) - 1915622766) ^ *&v57[4 * ((v76 ^ BYTE2(v66)) ^ 0xC0)];
  v86 = *&v54[4 * ((v79 ^ 0xCE3C5B2D) >> 24)] ^ *&v56[4 * (BYTE1(v76) ^ 0xA7)] ^ *&v55[4 * ((((v68 ^ 0x121F7D46) >> 16) - (((v68 ^ 0x121F7D46) >> 16) ^ 0xB7)) ^ 0xFFFFFFFE) + 4 * ((v68 ^ 0x121F7D46) >> 16)] ^ *&v57[4 * (v81 ^ 9)];
  v87 = *&v55[4 * (BYTE2(v83) ^ 0xB1)] ^ *&v54[4 * (HIBYTE(v82) ^ 0x93)] ^ *&v57[4 * (v86 ^ 0xC5)] ^ *&v56[4 * (BYTE1(v85) ^ 0xDA)];
  v88 = *&v54[4 * (HIBYTE(v83) ^ 0x4E)] ^ *&v56[4 * (((v86 ^ 0xCDC5) >> 8) ^ 0x17)] ^ *&v57[4 * (v82 ^ 0x12)] ^ *&v55[4 * (BYTE2(v85) ^ 0x66)];
  v89 = *&v55[4 * (BYTE2(v86) ^ 0xB4)] ^ *&v56[4 * ((v82 ^ 0x9A12) >> 8)] ^ *&v57[4 * (v83 ^ 0x32)] ^ *&v54[4 * (HIBYTE(v85) ^ 0x1E)];
  v90 = *&v55[4 * (BYTE2(v82) ^ 0xEE)] ^ *&v54[4 * (HIBYTE(v86) ^ 0x40)] ^ *&v56[4 * (BYTE1(v83) ^ 0xBE)] ^ *&v57[4 * (v85 ^ 0xF6)];
  v91 = *&v54[4 * ((v87 ^ 0xD6C0E219) >> 24)] ^ *&v55[4 * (BYTE2(v88) ^ 0xD4)] ^ *&v56[4 * (BYTE1(v89) ^ 0x42)] ^ 0xEFE02E00;
  v92 = (v91 - ((2 * v91) & 0x1BA3D524) - 1915622766) ^ *&v57[4 * (v90 ^ 0x3F)];
  v93 = *&v55[4 * (BYTE2(v89) ^ 0x91)] ^ *&v54[4 * (HIBYTE(v88) ^ 0x85)] ^ *&v56[4 * (BYTE1(v90) ^ 0x1E)] ^ *&v57[4 * (v87 ^ 0xEE)];
  v94 = *&v55[4 * (BYTE2(v90) ^ 0x37)] ^ *&v54[4 * (HIBYTE(v89) ^ 0xE4)] ^ *&v56[4 * ((v87 ^ 0xE219) >> 8)] ^ *&v57[4 * (v88 ^ 0x9E)];
  v95 = *&v55[4 * (BYTE2(v87) ^ 0x77)] ^ *&v54[4 * (HIBYTE(v90) ^ 0xB9)] ^ *&v56[4 * (BYTE1(v88) ^ 0xDA)] ^ *&v57[4 * (v89 ^ 0xB8)];
  v96 = *&v54[4 * (HIBYTE(v92) ^ 0x5D)] ^ *&v55[4 * (BYTE2(v93) ^ 6)] ^ *&v57[4 * (((v95 ^ 0xD1) - (v95 ^ 0x26)) ^ 0xFFFFFFFE) + 4 * (v95 ^ 0xD1)] ^ *&v56[4 * (BYTE1(v94) ^ 0xD8)];
  v97 = *&v55[4 * (BYTE2(v94) ^ 0x85)] ^ *&v54[4 * ((v93 ^ 0xA7B11CA1) >> 24)] ^ *&v56[4 * ((((v95 ^ 0x5D1757D1) >> 8) & 0xE8 | 0x17) ^ ((v95 ^ 0x5D1757D1) >> 8) & 0x17)] ^ *&v57[4 * (v92 ^ 0xEF)];
  v98 = *&v55[4 * (BYTE2(v95) ^ 0xA0)] ^ *&v54[4 * (HIBYTE(v94) ^ 0x5E)] ^ *&v56[4 * (BYTE1(v92) ^ 0x84)];
  v99 = *&v54[4 * (HIBYTE(v95) ^ 0xFA)];
  v100 = *&v57[4 * (v93 ^ 0xA1)];
  v101 = v100 & 0x4000000;
  v102 = (v100 & 0x4000000 & v98) == 0;
  v103 = v98 ^ 0x6231C492;
  if (!v102)
  {
    v101 = -v101;
  }

  v104 = *&v55[4 * (BYTE2(v92) ^ 0xF1)];
  v105 = (v101 + v103) ^ v100 & 0xFBFFFFFF;
  v106 = BYTE2(v96) ^ 0x15;
  v107 = v99 ^ *&v56[4 * (BYTE1(v93) ^ 0x1C)] ^ *&v57[4 * (v94 ^ 0x5B)];
  v108 = *(&off_1010A0B50 + v22 - 4810) - 1322739842;
  HIDWORD(v109) = *&v108[4 * (BYTE2(v97) ^ 0x29)];
  LODWORD(v109) = HIDWORD(v109);
  v110 = v104 ^ v107;
  v111 = *(&off_1010A0B50 + (v22 ^ 0x1B5D)) - 40256491;
  v112 = *(&off_1010A0B50 + (v22 ^ 0xD7E)) - 2023294182;
  v113 = *(&off_1010A0B50 + (v22 ^ 0x1964)) - 385870254;
  v114 = *&v113[4 * ((v104 ^ v107) ^ 0x13)];
  v115 = (v109 >> 12) ^ ((v96 ^ 0x7B159F48u) >> 24) ^ ((v109 >> 12) >> 3) ^ *&v112[4 * (((v96 ^ 0x7B159F48u) >> 24) ^ 0x76)] ^ ((v109 >> 12) >> 6) ^ ((BYTE1(v105) ^ 0x8C83DC3D) - 459600429 + *&v111[4 * (BYTE1(v105) ^ 0x9D)]) ^ (557558787 * v114 + 1609403961) ^ (165503000 * v114 - 9670200);
  HIDWORD(v109) = *&v108[4 * (BYTE2(v105) ^ 0x8F)];
  LODWORD(v109) = HIDWORD(v109);
  v116 = *&v113[4 * (v96 ^ 0x8D)];
  v117 = *&v112[4 * (HIBYTE(v97) ^ 0xB7)] ^ HIBYTE(v97) ^ (v109 >> 12) ^ ((v109 >> 12) >> 3) ^ ((v109 >> 12) >> 6) ^ (-(BYTE1(v110) ^ 0x737C23C0) - 459600430 + *&v111[4 * (BYTE1(v110) ^ 0x9F)]) ^ (557558787 * v116 + 1609403961) ^ (165503000 * v116 - 9670200);
  v118 = *&v113[4 * (v97 ^ 0x6E)];
  v119 = (((v96 ^ 0x9F48) >> 8) ^ 0x8C83DCA2) - 459600429 + *&v111[4 * (((v96 ^ 0x9F48) >> 8) ^ 2)];
  v120 = ((165503000 * v118 - 9670200) ^ 0xB98D7508) + 557558787 * v118 + 1609403961 - 2 * (((165503000 * v118 - 9670200) ^ 0xB98D7508) & (557558787 * v118 + 1609403961));
  HIDWORD(v109) = *&v108[4 * (BYTE2(v110) ^ 0xC)];
  LODWORD(v109) = HIDWORD(v109);
  v121 = *&v112[4 * (HIBYTE(v105) ^ 0x96)] ^ HIBYTE(v105) ^ (v109 >> 12) ^ ((v109 >> 12) >> 3) ^ ((v109 >> 12) >> 6);
  v122 = *&v112[4 * (HIBYTE(v110) ^ 0x13)];
  v123 = *&v108[4 * (v106 ^ 0x28)];
  LODWORD(v108) = v121 ^ v119 ^ v120;
  v124 = *&v113[4 * (v105 ^ 0xE5)];
  HIDWORD(v109) = v123;
  LODWORD(v109) = v123;
  LODWORD(v113) = v122 ^ HIBYTE(v110) ^ (v109 >> 12) ^ ((v109 >> 12) >> 3) ^ ((v109 >> 12) >> 6) ^ ((BYTE1(v97) ^ 0x8C83DCA7) - 459600429 + *&v111[4 * (BYTE1(v97) ^ 7)]) ^ (557558787 * v124 + 1609403961) ^ (165503000 * v124 - 9670200);
  v125 = (v122 ^ HIBYTE(v110) ^ (v109 >> 12) ^ ((v109 >> 12) >> 3) ^ ((v109 >> 12) >> 6) ^ ((BYTE1(v97) ^ 0xA7) - 45 + v111[4 * (BYTE1(v97) ^ 7)]) ^ (3 * v124 + 57) ^ (24 * v124 - 56)) ^ 0x6D;
  v126 = v125 - ((2 * v125) & 0x56) + 43;
  v127 = *(&off_1010A0B50 + v22 - 6264) - 561574818;
  *(*(v26 - 120) + v144) = v127[v126] ^ v113 ^ 0x72;
  v128 = *(&off_1010A0B50 + v22 - 3820) - 411315638;
  *(*(v26 - 120) + v148) = (v128[(v113 >> 24) ^ 0xEBLL] + (BYTE3(v113) ^ 0x62) - 30) ^ 0xBA;
  v129 = *(&off_1010A0B50 + (v22 ^ 0x1DE3)) - 1372091923;
  *(*(v26 - 120) + v151) = BYTE2(v115) ^ 0xD1 ^ v129[BYTE2(v115) ^ 0xC8];
  *(*(v26 - 120) + v142) = ((BYTE3(v108) ^ 0xF6) + v128[(v108 >> 24) ^ 0x7FLL] - 30) ^ 0xD8;
  *(*(v26 - 120) + v149) = v115 ^ 0x1A ^ v127[v115 ^ 0xA1];
  v130 = *(&off_1010A0B50 + v22 - 5301) - 1607742919;
  v131 = v130[BYTE1(v113) ^ 0xA4];
  HIDWORD(v109) = (v113 >> 8) ^ 0x38;
  LODWORD(v109) = v113 << 16;
  v132 = (((v131 ^ 0xFFFFFF8F) + 113) ^ ((v131 ^ 0x30) - 48) ^ ((v131 ^ 0x3F) - 63)) - ((2 * v131) & 0xFFFFFF9F) + 79;
  v133 = ((-(v109 >> 30) ^ (-62 - ((v109 >> 30) ^ 0xFFFFFFC2)) ^ 0xFFFFFFCB ^ ((v109 >> 30) - ((2 * (v109 >> 30)) & 0x7FFFF96) - 53)) - 62) ^ 0xFFFFFFDB ^ ((v132 >> 6) | (4 * v132));
  *(*(v26 - 120) + v152) = ((v133 >> 2) | (v133 << 6)) ^ 0x46;
  v134 = v129[BYTE2(v113) ^ 0xD8];
  v135 = (v134 ^ 0x3Du) - 61;
  v137 = *(v26 - 120);
  *(v137 + v146) = ((v134 ^ ((BYTE2(v113) ^ 0xD4) - (v134 ^ ((BYTE2(v113) ^ 0xD4) - 2 * ((BYTE2(v113) ^ 0xD4) & 0x33 ^ BYTE2(v113) & 1) - 78))) ^ 0xB2 ^ (78 - (((v134 ^ 4) - 4) ^ ((v134 ^ 0x8B) + 117) ^ ((v134 ^ 0x3D) - 61)))) + (BYTE2(v113) ^ 0xD4)) ^ 1;
  *(v137 + v147) = (v128[HIBYTE(v117) ^ 0x6BLL] - (HIBYTE(v117) ^ 0x1D) - 31) ^ 0x51;
  *(v137 + v145) = BYTE1(v117) ^ 0x61 ^ v130[BYTE1(v117) ^ 0x11];
  *(v137 + *(v26 - 160)) = ((HIBYTE(v115) ^ 0xBD) + v128[HIBYTE(v115) ^ 0x34] - 30) ^ 0x59;
  *(v137 + v150) = BYTE1(v115) ^ ((((v130[BYTE1(v115) ^ 0x84] ^ 0x96) + 106) ^ ((v130[BYTE1(v115) ^ 0x84] ^ 0xB0) + 80) ^ ((v130[BYTE1(v115) ^ 0x84] ^ 0xA6) + 90)) - ((2 * v130[BYTE1(v115) ^ 0x84]) & 0xA2) - 47) ^ 0x18;
  *(v137 + *(v26 - 152)) = BYTE1(v108) ^ 0xA ^ v130[BYTE1(v108) ^ 0x4CLL];
  *(v137 + *(v26 - 136)) = BYTE2(v117) ^ 0x68 ^ v129[BYTE2(v117) ^ 0xDALL];
  *(v137 + *(v26 - 144)) = v117 ^ 0xE2 ^ v127[v117 & 0xFB ^ 0xD0710E3A ^ (v117 & 4 | 0xD0710E2B)];
  *(v137 + v143) = v108 ^ 0x67 ^ v127[v108 ^ 0x12];
  *(v137 + *(v26 - 128)) = ((((BYTE2(v108) ^ 0xF8) - (BYTE2(v108) ^ 0x4F)) ^ 0xFE) + (BYTE2(v108) ^ 0xF8)) ^ 0x92 ^ v129[((((BYTE2(v108) ^ 0xF8) - (BYTE2(v108) ^ 0x4F)) ^ 0xFFFFFFFE) + (BYTE2(v108) ^ 0xF8)) ^ 0xEFLL];
  LODWORD(v127) = (((v30 ^ 0x94EA83AD) + 1796570195) ^ ((v30 ^ 0xAADC23B3) + 1428413517) ^ ((v30 ^ 0xFDA3CC5B) + 39596965)) - 509226374;
  LODWORD(v127) = ((v127 ^ 0x43DB8033) - 1573643798) ^ v127 ^ ((v127 ^ 0xC0772F83) + 563656282) ^ ((v127 ^ 0xEA43326F) + 195865526) ^ ((v127 ^ 0x77FFFBFA) - 1777311199);
  LODWORD(v128) = (((v127 ^ 0x32DED85D) + 279195075) ^ ((v127 ^ 0xF9E66C09) - 610494057) ^ ((v127 ^ 0xD528D271) - 145610769)) + 441395641;
  v138 = (HIDWORD(a11) < 0x56B9BD74) ^ (v128 < 0x56B9BD74);
  v139 = v128 < HIDWORD(a11);
  if (v138)
  {
    v139 = HIDWORD(a11) < 0x56B9BD74;
  }

  LODWORD(v141) = v22 ^ 0x6DB2;
  HIDWORD(v141) = (v22 ^ 0x6DB2) - 11161;
  v136 = ((v134 ^ 4) - 4) ^ ((v134 ^ 0xFFFFFF8B) + 117) ^ v135;
  return (*(a16 + 8 * ((47 * v139) ^ v22)))(v129, (78 - v136), v130, 132, 4285297096, v136, v135, v122, a9, a10, a11, a12, a13, a14, a15, a16, a17, v141, v142, v143, a21, v144);
}

uint64_t sub_1000A6E74(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, char a8)
{
  v15 = (v9 - 1) & 0xF;
  *(v10 + v9) = *(a1 + v9 + 39) ^ (v15 * a8) ^ *(*(v13 + 8 * a2) + a3 + v15) ^ *(v15 + *(v13 + 8 * a4) + a5 + 1) ^ *(*(v13 + 8 * a6) + a7 + v15) ^ v11;
  return (*(v14 + 8 * (((v9 == -31) * v12) ^ v8)))();
}

uint64_t sub_1000A6EE8@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 2110010020) = BYTE6(a1) ^ 0x36;
  *(v2 - 2110010019) = HIBYTE(a1) ^ 0xBE;
  return (*(v4 + 8 * ((119 * ((((v1 ^ 0x2887u) + 7475) ^ 0x7BECLL) + v3 != 2110010042)) ^ v1)))();
}

uint64_t sub_1000A6F5C@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v7 = *v3;
  v8 = (a1 + v2);
  *v8 = *(v3 - 1);
  v8[1] = v7;
  return (*(v6 + 8 * (((v4 == 0) * v5) ^ a2)))();
}

uint64_t sub_1000A6F90()
{
  v3 = (*(v2 + 8 * (v0 ^ 0x5FB0u)))(LODWORD(STACK[0xA90]) ^ 0xE9D5DEB0 ^ ((v0 - 32008) | 0x181));
  v4 = STACK[0x408];
  STACK[0xC38] = v3;
  if (v3)
  {
    v5 = -371865839;
  }

  else
  {
    v5 = v1;
  }

  LODWORD(STACK[0xC44]) = v5;
  return (*(v4 + 8 * (((v3 == 0) * ((v0 ^ 0x9ACA) - 4050)) | v0)))();
}

uint64_t sub_1000A7050@<X0>(int a1@<W4>, char a2@<W5>, char a3@<W6>, int a4@<W7>, char a5@<W8>)
{
  v17 = v6;
  v18 = v7;
  v19 = v16;
  v20 = 2 * v15;
  v21 = v15 ^ 0xD9DE41C3711ED27CLL;
  v22 = ((2 * v15) & 2) + (v15 ^ 1);
  v23 = 63 * v18 - v17 + 32 * v17 - v14 + 16 * v14 + a5 * v19 - 84;
  v25 = (v20 & 0xB3BC8386E23DA4F8) + v21;
  v26 = *(v11 + v25);
  if (((((v26 ^ a3) & (2 * ((v26 ^ a3) & (2 * (((2 * (v26 & 0x58 ^ 0x53 ^ v26 & a2)) ^ 0x44) & (v26 ^ a3) ^ v26 & 0x58 ^ 0x53)) ^ v26 & 0x58 ^ 0x53)) ^ v26 & 0x58 ^ 0x53) * a4) & 0x1000) != 0)
  {
    v30 = v8;
  }

  else
  {
    v30 = 0;
  }

  v28 = v26 ^ a3;
  v27 = v26 & 0x58 ^ 0x53;
  v24 = v23 & 0x48 ^ 0xC6;
  v29 = (((v26 ^ a3) & (2 * ((v26 ^ a3) & (2 * (((2 * (v27 ^ v26 & a2)) ^ 0x44) & (v26 ^ a3) ^ v27)) ^ v27)) ^ v27) * a4) >> 12;
  v31 = v23 ^ v26 ^ (2 * (v24 ^ v27 ^ (v23 ^ 0x4C) & (2 * ((v23 ^ 0x4C) & (2 * ((v23 ^ 0x4C) & (2 * ((v23 ^ 0x4C) & (2 * ((v23 ^ 0xC) & (2 * v24) ^ v24)) ^ v24)) ^ v24)) ^ v24)) & 0x7C ^ v28 & (2 * ((v30 + (v29 & 0xE) * v8 + 2 * ((v28 & (2 * (v28 & (2 * (((2 * (v27 ^ v26 & a2)) ^ 0x44) & v28 ^ v27)) ^ v27)) ^ v27) - (v29 | (16 * v29)))) & v28 ^ v27))));
  *(v11 + v25) = (((v31 ^ v9) - 96) ^ ((v31 ^ v10) - 111) ^ ((v31 ^ 0x1F) + 89)) - 18;
  return (*(v5 + 8 * (((v22 == v12) * v13) ^ a1)))();
}

uint64_t sub_1000A7268()
{
  if (v2 <= 0x40)
  {
    v2 = 64;
  }

  return (*(v3 + 8 * ((496 * (v2 + ((v1 - 16692) ^ 0x188F) - 32052 >= v0 - 261674839)) ^ v1)))();
}

uint64_t sub_1000A72C4@<X0>(int a1@<W8>)
{
  v2 = (a1 + 1779745669) & 0x95EAFFFD;
  v3 = (*(v1 + 8 * (v2 + 40055)))(264) == 0;
  return (*(v1 + 8 * ((((v2 ^ v3) & 1) * (v2 - 11648)) ^ v2)))();
}

uint64_t sub_1000A745C()
{
  v2 = STACK[0x860];
  STACK[0x880] = STACK[0x860];
  return (*(v1 + 8 * (((v2 == 0) * ((3687 * ((v0 + 5070) ^ 0x3690)) ^ (v0 + 16933))) ^ (v0 + 5070))))();
}

uint64_t sub_1000A7908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, unsigned __int8 a34)
{
  v37 = (v35 ^ 0x3A9FFA04) & (2 * (v35 & 0x3ADFFC88)) ^ v35 & 0x3ADFFC88;
  v38 = ((2 * (v35 ^ 0x4FA41204)) ^ 0xEAF7DD18) & (v35 ^ 0x4FA41204) ^ (2 * (v35 ^ 0x4FA41204)) & 0x757BEE8C;
  v39 = v38 ^ 0x15082284;
  v40 = (v38 ^ 0x6073C400) & (4 * v37) ^ v37;
  v41 = ((4 * v39) ^ 0xD5EFBA30) & v39 ^ (4 * v39) & 0x757BEE88;
  v42 = (v41 ^ 0x556BAA00) & (16 * v40) ^ v40;
  v43 = ((16 * (v41 ^ 0x2010448C)) ^ 0x57BEE8C0) & (v41 ^ 0x2010448C) ^ (16 * (v41 ^ 0x2010448C)) & 0x757BEE80;
  v44 = v42 ^ 0x757BEE8C ^ (v43 ^ 0x553AE800) & (v42 << 8);
  v45 = v35 ^ (2 * ((v44 << 16) & 0x757B0000 ^ v44 ^ ((v44 << 16) ^ 0x6E8C0000) & (((v43 ^ 0x2041060C) << 8) & 0x757B0000 ^ 0x4110000 ^ (((v43 ^ 0x2041060C) << 8) ^ 0x7BEE0000) & (v43 ^ 0x2041060C))));
  v46 = ((v45 ^ 0xD946C538) - 842253742) ^ ((v45 ^ 0x1ADBA30B) + 240213091) ^ ((v45 ^ 0xDBA547A3) - 818956085);
  v47 = ((((a34 ^ 0xE748515A) + 414690982) ^ ((a34 ^ 0x49765AE3) - 1232493283) ^ ((a34 ^ 0xAE3E3A3E ^ ((v34 - 18030) | 0x108A)) + 1371665504)) + 25) % (213049058 - v46);
  v48 = ((2 * v47) & 0xF9CDBFFE) + (v47 ^ 0xFCE6DFFF) + v46;
  v49 = -501542623 - v48;
  if (v48 - 161070567 >= 0xFB)
  {
    v49 = -662613190;
  }

  v51 = v35 == 0x3CE25E0EC520035FLL || v49 == -662613440;
  return (*(v36 + 8 * ((43 * v51) ^ v34)))();
}

uint64_t sub_1000A7CD8(uint64_t a1)
{
  v7 = (v1 + (v4 + LODWORD(STACK[0x220]) + v2));
  v8 = (v6 - 371865871);
  v7[15] = *(a1 + v8 + 15);
  v7[14] = *(a1 + v8 + 14);
  v7[13] = *(a1 + v8 + 13);
  v7[12] = *(a1 + v8 + 12);
  v7[11] = *(a1 + v8 + 11);
  v7[10] = *(v8 + ((v5 + 692604081) & 0xD667BF7) + a1 - 20663);
  v7[9] = *(a1 + v8 + 9);
  v7[8] = *(a1 + v8 + 8);
  v7[7] = *(a1 + v8 + 7);
  v7[6] = *(a1 + v8 + 6);
  v7[5] = *(a1 + v8 + 5);
  v7[4] = *(a1 + v8 + 4);
  v7[3] = *(a1 + v8 + 3);
  v7[2] = *(a1 + v8 + 2);
  v7[1] = *(a1 + v8 + 1);
  *v7 = *(a1 + v8);
  return (*(v3 + 8 * (v5 ^ 0xC951CF9A ^ (51338 * (v5 < 0x33AB515)))))();
}

uint64_t sub_1000A7E70@<X0>(int a1@<W8>)
{
  v5 = ~v2 + v1;
  if (HIDWORD(v5))
  {
    v6 = 0;
  }

  else
  {
    v6 = 509232209 - a1 >= v5;
  }

  v7 = v6;
  return (*(v4 + 8 * ((((v3 - 1062452751) & 0x3F52F674 ^ 0x40) * v7) ^ v3)))();
}

uint64_t sub_1000A7ED4()
{
  *v3 = v2;
  *(v2 + 8) = *(v0 + 8);
  *(v0 + 8) = v2;
  return (*(v4 + 8 * ((((v1 - 377697705) ^ 0xE97CD00B) + v1) ^ (24699 * (v1 > 0xA8D591D)))))();
}

uint64_t sub_1000A8024()
{
  v2 = STACK[0x270];
  v3 = ((2 * v0) & 0x1CFF766B6) + ((LODWORD(STACK[0x270]) - 1676707074) & 0x63F07FB9) + (((LODWORD(STACK[0x270]) ^ 0x6561u) - 0x220268901804533DLL) ^ v0) + 0x63C2FBF33EED9035;
  STACK[0xC28] = v3;
  v4 = STACK[0x668];
  STACK[0xC30] = STACK[0x668];
  return (*(v1 + 8 * ((53872 * (v3 - v4 - 0x30CED520EE7E95B6 < 0xFFFFFFFFFFFFFFF6)) ^ v2)))();
}

uint64_t sub_1000A80D8@<X0>(unsigned int a1@<W8>)
{
  v10 = v3 < a1;
  *(v2 + (v6 - 1220144186)) = *(v1 + v7) - ((2 * *(v1 + v7)) & 0xBF) + 95;
  if (v10 == v7 + 1 > v5)
  {
    v10 = v7 + (v9 ^ 0x8224D716) < v3;
  }

  return (*(v8 + 8 * ((114 * !v10) ^ v4)))(v7 + (v9 ^ 0x8224D716) < v3);
}

uint64_t sub_1000A8280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, _BYTE *a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, int a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  v43 = (v40 + 706069096) & 0xD5EA3FF6;
  a17[13] = *(v42 - 225);
  a17[14] = *(v42 - 226);
  a17[15] = *(v42 - 227);
  a17[16] = *(v42 - 228);
  a17[17] = *(v42 - 229);
  a17[18] = *(v42 - 230);
  a17[19] = *(v42 - 231);
  a17[20] = *(v42 - 232);
  a17[21] = *(v42 - 233);
  a17[22] = *(v42 - 234);
  a17[23] = *(v42 - 235);
  a17[24] = *(v42 - 236);
  a17[25] = *(v42 - 237);
  v44 = 1012831759 * (((v38 | 0x184A20E7) - (v38 | 0xE7B5DF18) - 407511272) ^ 0x8D9366D);
  *(v42 - 144) = &a38;
  *(v42 - 136) = 959188427 - v44;
  *(v42 - 132) = (v40 + 33248) ^ v44;
  (*(v39 + 8 * (v40 + 42614)))(v42 - 144);
  v45 = 0xD79435E50D79436 * ((((a21 + 320687404) ^ (((a21 + 320687404) ^ 0x969BE413) + 562605647) ^ (((a21 + 320687404) ^ 0x9A07763B) + 756300903) ^ (((a21 + 320687404) ^ 0x7F6F7FCF) - 931383917) ^ (((a21 + 320687404) ^ v40 ^ 0x3B1F5BE4 ^ v43) - 1945365991) ^ 0x398DAA900FFD44B7) - 0x398DAA904B5A4136) ^ (((a21 + 320687404) ^ (((a21 + 320687404) ^ 0x969BE413) + 562605647) ^ (((a21 + 320687404) ^ 0x9A07763B) + 756300903) ^ (((a21 + 320687404) ^ 0x7F6F7FCF) - 931383917) ^ (((a21 + 320687404) ^ v40 ^ 0x3B1F5BE4 ^ v43) - 1945365991) ^ 0x50BCEB7F642C6921) + 0x2F431480DF749360) ^ (((a21 + 320687404) ^ (((a21 + 320687404) ^ 0x969BE413) + 562605647) ^ (((a21 + 320687404) ^ 0x9A07763B) + 756300903) ^ (((a21 + 320687404) ^ 0x7F6F7FCF) - 931383917) ^ (((a21 + 320687404) ^ v40 ^ 0x3B1F5BE4 ^ v43) - 1945365991) ^ 0x693141EF233D9834) + 0x16CEBE109865624BLL)) + 0x7BEBE93E89F2364ELL;
  v46 = v45 ^ ((v45 ^ 0xAB93790006047A48) + 0x49F79755AB3A575CLL) ^ ((v45 ^ 0x3E0FC4B233A6C10) - 0x1E7BEDE171FBBEFCLL) ^ ((v45 ^ 0x48146132E9426741) - 0x558F7098BB83B5ADLL) ^ ((v45 ^ 0xFDFCF5D39EBDA3F5) + 0x1F981B8633838EE7);
  v47 = ((v46 ^ 0xC5E8FE85F3B277C7) - 0x60AFC07C82AEC703) ^ ((v46 ^ 0xC19F75110FBE97DFLL) - 0x64D84BE87EA2271BLL);
  v48 = __CFADD__(19 * (v47 ^ ((v46 ^ 0x19EC9A3EAECD32F4) + 0x43545B38202E7DD0)), 0xB857832BA96E48F8) + (((v47 ^ ((v46 ^ 0x19EC9A3EAECD32F4) + 0x43545B38202E7DD0)) * 0x13uLL) >> 64) + 19 * ((__CFADD__(v46 ^ 0xC5E8FE85F3B277C7, 0x9F503F837D5138FDLL) - 1) ^ (__CFADD__(v46 ^ 0xC19F75110FBE97DFLL, 0x9B27B417815DD8E5) - 1) ^ (__CFADD__(v46 ^ 0x19EC9A3EAECD32F4, 0x43545B38202E7DD0) - 1)) + 1944952756;
  LODWORD(v46) = 2 * (((a23 - 1641506742) % 0x11u) & 0xF) + (((a23 - 1641506742) % 0x11u) ^ 0x69BBBFEF);
  v49 = v46 - 132405300;
  v50 = (2 * (v49 & 0x9847)) & 0x3082 ^ (v49 & 0x9847 | 0x4200680) ^ (2 * (v49 & 0x9847)) & (v49 ^ 0x2808A6C4);
  v51 = (2 * (v49 ^ 0x2808A6C4)) & 0x92203E82 ^ 0x92200281 ^ ((2 * (v49 ^ 0x2808A6C4)) ^ 0x48407D06) & (v49 ^ 0x2808A6C4);
  v52 = (4 * v50) & 0x3E003E00 ^ v50 ^ ((4 * v50) ^ 0x10801A00) & v51;
  v53 = (4 * v51) & 0xB6203E80 ^ 0x26200483 ^ ((4 * v51) ^ 0xD880FA0C) & v51;
  v54 = (16 * v52) & 0xB6203E80 ^ v52 ^ ((16 * v52) ^ 0x4201C800) & v53;
  v55 = (16 * v53) & 0xB6203E80 ^ 0x94201683 ^ ((16 * v53) ^ 0x6203E830) & v53;
  v56 = v54 ^ (v54 << 8) & 0xB6203E00 ^ ((v54 << 8) ^ 0x20148000) & v55 ^ 0x80002A03;
  v57 = (4 * ((v56 << 16) & 0x36200000 ^ v56 ^ ((v56 << 16) ^ 0x3E830000) & ((v55 << 8) & 0x36200000 ^ 0x16000000 ^ ((v55 << 8) ^ 0x203E0000) & v55))) ^ (2 * (v46 - 132405300));
  LODWORD(v47) = 19522 * v41 - 1091454612 - (((19522 * v41 - 1091454612) / 0x10001u) | (((19522 * v41 - 1091454612) / 0x10001u) << 16)) + 1301 * (-412743407 - v48 - (((v57 ^ 0xC170C890) - 1898550406) ^ ((v57 ^ 0xA79E288A) - 398947484) ^ ((v57 ^ 0x5A3F2A98) + 362383730))) + 33460;
  v58 = (v41 ^ 0x8A3215E4) & (2 * (v41 & 0xD23B19F6)) ^ v41 & 0xD23B19F6;
  v59 = ((2 * (v41 ^ 0x2E7625C4)) ^ 0xF89A7864) & (v41 ^ 0x2E7625C4) ^ (2 * (v41 ^ 0x2E7625C4)) & 0xFC4D3C32;
  v60 = v59 ^ 0x4450412;
  v61 = (v59 ^ 0xD8082820) & (4 * v58) ^ v58;
  v62 = ((4 * v60) ^ 0xF134F0C8) & v60 ^ (4 * v60) & 0xFC4D3C30;
  v63 = (v62 ^ 0xF0043000) & (16 * v61) ^ v61;
  v64 = ((16 * (v62 ^ 0xC490C32)) ^ 0xC4D3C320) & (v62 ^ 0xC490C32) ^ (16 * (v62 ^ 0xC490C32)) & 0xFC4D3C20;
  v65 = v63 ^ 0xFC4D3C32 ^ (v64 ^ 0xC4410000) & (v63 << 8);
  LODWORD(v46) = v41 ^ (2 * ((v65 << 16) & 0x7C4D0000 ^ v65 ^ ((v65 << 16) ^ 0x3C320000) & (((v64 ^ 0x380C3C12) << 8) & 0x7C4D0000 ^ 0x30410000 ^ (((v64 ^ 0x380C3C12) << 8) ^ 0x4D3C0000) & (v64 ^ 0x380C3C12)))) ^ (v47 - ((v47 / 0x10001) | ((v47 / 0x10001) << 16))) ^ 0x52A16192 ^ ((2663 * ((v41 - 767878666) / 0x3E8u + 9107 * v46 + 3903 * v48) + 599607836) % 0x6869);
  LODWORD(v47) = 139493411 * ((((v38 | 0x313F8E1A) ^ 0xFFFFFFFE) - (~v38 | 0xCEC071E5)) ^ 0xC2ED90A0);
  *(v42 - 120) = a19 + 17 * ((((2 * (v46 % 0x10C945)) & 0x19EF7C) + ((v46 % 0x10C945) ^ 0xFDECF7BE) + 34801730) % 0x32);
  *(v42 - 132) = v40 - v47 + 29384;
  *(v42 - 128) = v47 + 404414912;
  *(v42 - 144) = &a30;
  v66 = (*(v39 + 8 * (v40 ^ 0xEE4B)))(v42 - 144);
  return (*(v39 + 8 * ((20347 * (*(v42 - 136) == -371865839)) ^ v40)))(v66);
}

uint64_t sub_1000A8B54(__n128 a1)
{
  v5.n128_u64[0] = (v1 + 13) & 0xF;
  v5.n128_u64[1] = (v1 + 12) & 0xF;
  v6.n128_u64[0] = (v1 + 11) & 0xF;
  v6.n128_u64[1] = (v1 + 10) & 0xF;
  v7.n128_u64[0] = (v1 + 9) & 0xF;
  v7.n128_u64[1] = v1 & 0xF ^ 8;
  v11.val[0].i64[0] = (v1 + 7) & 0xF;
  v11.val[0].i64[1] = (v1 + 6) & 0xF;
  v11.val[1].i64[0] = (v1 + 5) & 0xF;
  v11.val[1].i64[1] = (v1 + 4) & 0xF;
  v11.val[2].i64[0] = (v1 + 3) & 0xF;
  v11.val[2].i64[1] = (v1 + 2) & 0xF;
  v11.val[3].i64[0] = (v1 + 1) & 0xF;
  v11.val[3].i64[1] = v1 & 0xF;
  v8.n128_u64[0] = 0x4545454545454545;
  v8.n128_u64[1] = 0x4545454545454545;
  v9.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v9.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  return (*(v4 + 8 * v2))((v1 + 14) & 0xF, (v2 + 687971378) & 0xD6FE7BFB, v1 + v3 - 16, (v1 & 0x10) - 16, ((v2 + 687971378) & 0xD6FE7BFB) + 31251, a1, v5, v6, v7, xmmword_100BC76B0, vqtbl4q_s8(v11, xmmword_100BC76B0), v8, v9);
}

uint64_t sub_1000A8C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v13 = vrev64q_s8(**(v11 + 24));
  v14 = vextq_s8(v13, v13, 8uLL);
  v15.i64[0] = 0x1A1A1A1A1A1A1A1ALL;
  v15.i64[1] = 0x1A1A1A1A1A1A1A1ALL;
  v16 = vbicq_s8(v15, vaddq_s8(v14, v14));
  v15.i64[0] = 0x8D8D8D8D8D8D8D8DLL;
  v15.i64[1] = 0x8D8D8D8D8D8D8D8DLL;
  v17 = vsubq_s8(veorq_s8(v14, v15), v16);
  v16.i64[0] = 0x9191919191919191;
  v16.i64[1] = 0x9191919191919191;
  v15.i64[0] = 0x6060606060606060;
  v15.i64[1] = 0x6060606060606060;
  v18 = vrev64q_s8(veorq_s8(vmlaq_s8(v15, v17, v16), xmmword_100F52820));
  *(v12 - 112) = vextq_s8(v18, v18, 8uLL);
  return (*(v10 + 8 * (a2 ^ (238 * (a9 == 0)))))(a1, a2, a3, a4, a5, a6, a7, a8, a10, v11);
}

uint64_t sub_1000A8EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10)
{
  v24 = ((v13 ^ a2) + a3) ^ v13 ^ ((v13 ^ a4) + a5) ^ ((v13 ^ a6) + a7) ^ ((v10 ^ v13) + a1);
  *(v15 + v14 - 1) = v11 + v12 * ((((v24 ^ a8) + v22) ^ ((v24 ^ v17) + v16) ^ ((v24 ^ v21) + v18)) + v19);
  return (*(v20 + 8 * (((v14 == 1) * v23) ^ a9)))(a1, a2, a3, a4, a5, a6, a7, a8, a10);
}

uint64_t sub_1000A8FAC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *a1;
  STACK[0x548] = 0;
  STACK[0x528] = 0x18603FFA8CC1F512;
  return (*(v2 + 8 * (((v3 != 0) * ((v1 ^ 0x5243) - 3252)) ^ (v1 + 23209))))();
}

uint64_t sub_1000A902C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, char a32)
{
  *v33 = v35;
  v37 = *(a4 + 8);
  v38 = v37 + v32;
  if (v38 < 0)
  {
    v38 = v37 - 0x3CE25E0EC5200375;
  }

  v39 = ((*(&a32 + (a32 & 3 ^ 1)) ^ 0x19u) % (((v38 >> 2) + ((v34 + 31926) ^ 0xD83A4230) - ((v38 >> 2 << (v34 ^ 0x14u)) & 0xB07503B4) - 33) ^ 0xD83A81DA) + 43) & 0x1FC;
  v40 = ((v39 ^ 0x60BDCC30) - 253251724) ^ ((v39 ^ 0xEA32FB6C) + 2053675056) ^ ((v39 ^ 0x8A8F375C) + 450188320);
  v41 = ((v37 ^ 0xF746BAFB) - 845592963) ^ v37 ^ ((v37 ^ 0x723BE9D3) + 1222907221) ^ ((v37 ^ 0x2F44AF2C) + 362501036) ^ ((v37 ^ 0x6F19FF7C) + 1439040508);
  return (*(v36 + 8 * ((6770 * ((((v41 ^ 0xC4558CD1) - 707238808) ^ ((v41 ^ 0xF1B9FDDD) - 533457556) ^ ((v41 ^ 0xF0CC7274) - 515794237)) - v40 - 1146325156 < 0x7FFFFFFF)) ^ v34)))();
}

uint64_t sub_1000A9214@<X0>(int a1@<W8>)
{
  v5 = STACK[0xA28] + v2;
  STACK[0x668] = v1;
  LODWORD(STACK[0xA90]) = a1;
  STACK[0x910] = v5;
  return (*(v4 + 8 * (((3463 * ((v3 - 1793483815) & 0x6AE6DFAD ^ 0x952F) - 24235) * (v5 == 0)) ^ (v3 + 10962))))();
}

uint64_t sub_1000A9280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a2 + 640 * v3;
  STACK[0x9E8] = v5;
  *(v4 + 616) = 356632019;
  return (*(a1 + 8 * ((((((v2 - 555867126) & 0x2121DBF3) + 16004) ^ (v2 + 743998725) & 0xD3A77FEC) * (v5 == 0)) ^ v2)))();
}

uint64_t sub_1000A934C()
{
  *(v3 - 224) = (v2 + 1877365260) ^ (155453101 * ((((v3 - 224) | 0xC687803) + (~(v3 - 224) | 0xF39787FC)) ^ 0xEA4E63CD));
  v5 = (*(v4 + 8 * (v2 ^ 0x548D)))(v3 - 224);
  v6 = STACK[0x408];
  *(v0 + v1 - 253510929) = *(v3 - 216) ^ 0xC0;
  return (*(v6 + 8 * (((v0 != 253510944) * (((5 * (v2 ^ 0x9E29)) ^ 0xAC3B) - 44428)) ^ v2)))(v5);
}

uint64_t sub_1000A95F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = 1864610357 * ((*(*(*(v10 + 8 * (v7 ^ 0xAF33)) - 1680276466) + (*(*(v10 + 8 * (v7 - 37934)) - 231415367) & 0x72D7ACF8)) ^ (v8 + a7)) & 0x7FFFFFFF);
  v12 = 1864610357 * ((v11 >> (v7 ^ 0x5D)) ^ v11);
  *(v8 + a7) = *((v12 >> 24) + *(v10 + 8 * (v7 ^ 0xAE17)) - 183391798 + 2) ^ *(*(v10 + 8 * (v7 - 41226)) - 64766467 + (v12 >> 24)) ^ *((v12 >> 24) + *(v10 + 8 * (v7 ^ 0xA51D)) - 691187598 + 4) ^ v12 ^ (-97 * BYTE3(v12));
  return (*(v9 + 8 * ((6464 * (a7 == 31)) ^ v7)))();
}

uint64_t sub_1000A97E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, int a19, int a20, int a21, int a22, int a23, int a24, int a25)
{
  *(v27 - 208) = ((a22 << 24) ^ 0x40000000) & 0x51000000 ^ 0xE7264CDE ^ ((a22 << 24) ^ 0xD6FFFFFF) & a17;
  *(v27 - 216) = a21 ^ 0xED937FD6;
  *(v27 - 212) = a19 ^ 0xE7696EBF;
  *(v27 - 204) = a25 & 0xE40200F9 ^ 0x58F62FC7 ^ a23;
  return (*(v26 + 8 * v25))();
}

uint64_t sub_1000A9910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, unsigned int a12, uint64_t a13, int a14, int a15, uint64_t a16, int a17, int a18, uint64_t a19)
{
  v20 = a12 > 0x7ADCB939;
  if (v20 == a18 - 1235608935 < ((v19 - 38515) ^ 0x85235FE5))
  {
    v20 = a18 - 1235608935 < a15;
  }

  return (*(a19 + 8 * ((92 * !v20) ^ v19)))(a1, a2, 2509627585, (v19 - 38515) ^ 0xB62Du, a5, 139, (a18 + 1), 920645125);
}

uint64_t sub_1000A9B40(int8x16_t a1, int8x8_t a2, int8x8_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10)
{
  v16.val[0].i64[0] = a8 & (a5 + a10 - 1);
  v16.val[0].i64[1] = (a5 + a10 + 14) & 0xF;
  v16.val[1].i64[0] = (a5 + a10 + 13) & 0xF;
  v16.val[1].i64[1] = (a5 + a10 + 12) & 0xF;
  v16.val[2].i64[0] = (a5 + a10 + 11) & 0xF;
  v16.val[2].i64[1] = (a5 + a10 + 10) & 0xF;
  v16.val[3].i64[0] = (a5 + a10 + 9) & 0xF;
  v16.val[3].i64[1] = (a5 + a10) & 0xF ^ 8;
  *(a7 + a5) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a7 + a5), *(v11 + v16.val[0].i64[0] - 7)), veor_s8(*(v16.val[0].i64[0] + v10 - 6), *(v12 + v16.val[0].i64[0] - 7)))), a3), vmul_s8(*&vqtbl4q_s8(v16, a1), a2)));
  return (*(v14 + 8 * (((a5 != a6) * a9) ^ v13)))();
}

uint64_t sub_1000A9CEC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, int a18, int a19)
{
  v21 = 297845113 * (((&a17 | 0x2C18BD00) - &a17 + (&a17 & 0xD3E742F8)) ^ 0x5B2BA19E);
  a17 = &a12;
  a18 = (a1 - ((3 * (v20 ^ 0x16B8) - 743773807) & (2 * a1)) - 371865839) ^ v21;
  a19 = v20 - v21 - 2156;
  v22 = (*(v19 + 8 * (v20 ^ 0xEBB3)))(&a17);
  return (*(v19 + 8 * v20))(v22);
}

uint64_t sub_1000A9DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14)
{
  v17 = (((v14 + 7686) | 0x35AAu) - 0x399547F2736A84B9) ^ STACK[0x8B0];
  STACK[0x5C8] = STACK[0x9F8];
  STACK[0x5D0] = v17;
  STACK[0x5D8] = a14;
  (*(v16 + 8 * (v14 + 26743)))(&STACK[0x508], &STACK[0x5E0], 32);
  STACK[0x600] = &STACK[0x6A0];
  STACK[0x608] = &STACK[0x580];
  v18 = 1112314453 * ((((v15 - 224) | 0x8069F067) - ((v15 - 224) & 0x8069F060)) ^ 0x6F3FDABE);
  *(v15 - 200) = v18 ^ 0x2499D99;
  *(v15 - 224) = &STACK[0x5C8];
  *(v15 - 216) = v18 + v14 + 10481;
  *(v15 - 208) = &STACK[0x498] ^ 0x5B464388F3BFDA12;
  v19 = (*(STACK[0x408] + 8 * (v14 + 27049)))(v15 - 224);
  return (*(STACK[0x408] + 8 * v14))(v19);
}

uint64_t sub_1000A9EFC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, int a7@<W8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, unsigned int a61)
{
  v64 = (a7 + 1280193944) | 0xB3B16280;
  v112 = 947 * (v64 ^ 0xFFFFFF9D);
  v65 = (((a2 ^ 0xDBA2EFB2CEE1D3AELL) + 0x245D104D311E2C52) ^ ((a2 ^ 0x2F072189BE1E6D57) - 0x2F072189BE1E6D57) ^ ((a2 ^ v112 ^ 0xF4A5CE3B74C88EE4) + 0xB5A31C48B371A5DLL)) + 687647931;
  v66 = 0x19A5F175CD7E2 * (((a2 ^ 0x39E8223AF7CC2AEALL) + 0x4617DDC50833D516) ^ ((a2 ^ 0x4B601FB27100605ELL) + 0x349FE04D8EFF9FA2) ^ ((a2 ^ 0x72883D8882FB11EELL) - 0x72883D8882FB11EELL)) + 0x35295BD82EB042D4;
  v67 = v66 ^ ((v66 ^ 0x4316E657D07D7A3ALL) + 0x4704C962224382A6) ^ ((v66 ^ 0xA9D04F5AA9DF58BBLL) - 0x523D9F90A41E5FDBLL) ^ ((v66 ^ 0x6A96840C0BD9DC57) + 0x6E84AB39F9E724C9) ^ ((v66 ^ 0x7BBDFDCB7FBAF9B6) + 0x7FAFD2FE8D84012ALL);
  v68 = (3123612579u * v65 - 0x68053C3BA6407BC3) >> 35;
  v69 = ((v67 ^ 0xD96A9D3943C2F4D4) - 0x1F60702904AEC870) ^ ((v67 ^ 0xF4E0B86C4939F1FFLL) - 0x32EA557C0E55CD5BLL);
  v70 = __CFADD__(40883 * (v69 ^ ((v67 ^ 0xD667F59F073A024BLL) - 0x106D188F40563EEFLL)), 0xE81AD403CF3F860CLL) + (((v69 ^ ((v67 ^ 0xD667F59F073A024BLL) - 0x106D188F40563EEFLL)) * 0x9FB3uLL) >> 64) + 40883 * ((v61 + __CFADD__(v67 ^ 0xD96A9D3943C2F4D4, 0xE09F8FD6FB513790)) ^ (v61 + __CFADD__(v67 ^ 0xF4E0B86C4939F1FFLL, 0xCD15AA83F1AA32A5)) ^ (v61 + __CFADD__(v67 ^ 0xD667F59F073A024BLL, 0xEF92E770BFA9C111))) + 1428092917;
  if (v65 <= 0x8F0732D1)
  {
    v71 = 738451443;
  }

  else
  {
    v71 = 1275322355;
  }

  v72 = ((((HIDWORD(a49) >> 2) ^ 0xA893B495) + 1576714900) ^ (((HIDWORD(a49) >> 2) ^ 0xFF702871) + 169434744) ^ (((HIDWORD(a49) >> 2) ^ 0x7D38F437) - 2007924174)) + 521 * v70 + v71 + v68;
  v73 = (v72 ^ 0xA0309BD1) & (2 * (v72 & 0xA23ADB12)) ^ v72 & 0xA23ADB12;
  v74 = ((2 * (v72 ^ 0xA031AFF5)) ^ 0x416E9CE) & (v72 ^ 0xA031AFF5) ^ (2 * (v72 ^ 0xA031AFF5)) & 0x20B74E6;
  v75 = v74 ^ 0x2091421;
  v76 = (v74 ^ 0x260C0) & (4 * v73) ^ v73;
  v77 = ((4 * v75) ^ 0x82DD39C) & v75 ^ (4 * v75) & 0x20B74E4;
  v78 = (v77 ^ 0x95080) & (16 * v76) ^ v76;
  v79 = ((16 * (v77 ^ 0x2022463)) ^ 0x20B74E70) & (v77 ^ 0x2022463) ^ (16 * (v77 ^ 0x2022463)) & 0x20B74E0;
  v80 = v78 ^ 0x20B74E7 ^ (v79 ^ 0x34400) & (v78 << 8);
  v81 = v72 ^ (2 * ((v80 << 16) & 0x20B0000 ^ v80 ^ ((v80 << 16) ^ 0x74E70000) & (((v79 ^ 0x2083087) << 8) & 0x20B0000 ^ 0xB0000 ^ (((v79 ^ 0x2083087) << 8) ^ 0xB740000) & (v79 ^ 0x2083087)))) ^ 0x7640E2EBu;
  v82 = (((v81 ^ 0x351E1F9CC8F956D1) - 0x351E1F9CC8F956D1) ^ ((v81 ^ 0xA38E8D737A95169) + 0x75C71728C856AE97) ^ ((v81 ^ 0x3F26F74B2F3AD78FLL) + 0x40D908B4D0C52871)) * a3 + 0x231BB4D0FB598860;
  v83 = v82 ^ ((v82 ^ 0x4D2EE572E76D5A74) - 0x2187F124C016749ELL) ^ ((v82 ^ 0x5109F6875AA69B3ELL) - 0x3DA0E2D17DDDB5D4) ^ ((v82 ^ 0xA7394ADD417E310ALL) + 0x346FA17499FAE020) ^ ((v82 ^ 0xD7B74D7EDBCEDEAALL) + 0x44E1A6D7034A0FC0);
  v84 = ((v83 ^ 0xAB1D824653012434) + 0x4373340C82CDC93DLL) ^ ((v83 ^ 0x62CA4BFB9473D116) - 0x755B024EBA40C3E1);
  LODWORD(v83) = __CFADD__(268 * (v84 ^ ((v83 ^ 0xA57EDDEBE009DBC8) + 0x4D106BA131C536C1)), 0xFF0249ADB79EEE5CLL) + (((v84 ^ ((v83 ^ 0xA57EDDEBE009DBC8) + 0x4D106BA131C536C1)) * 0x10CuLL) >> 64) + 268 * ((v61 + __CFADD__(v83 ^ 0xAB1D824653012434, 0x4373340C82CDC93DLL)) ^ (v61 + __CFADD__(v83 ^ 0x62CA4BFB9473D116, 0x8AA4FDB145BF3C1FLL)) ^ (v61 + __CFADD__(v83 ^ 0xA57EDDEBE009DBC8, 0x4D106BA131C536C1))) + 1203333727;
  LODWORD(a57) = v83 ^ ((v83 ^ 0x9EF4D9CE) + 649220079) ^ ((v83 ^ 0x803FC05) - 1337628122) ^ ((v83 ^ 0xAEB1B3EA) + 385295819) ^ ((v83 ^ 0x7FFFFFFE) - 944150049) ^ 0x1C7E93CB;
  v85 = (((a2 ^ 0x9C00DBB6ED70B5) - 0x9C00DBB6ED70B5) ^ ((a2 ^ 0x2A5D90315B7C128BLL) - 0x2A5D90315B7C128BLL) ^ ((a2 ^ 0x2AC190EAE9A63964) - 0x2AC190EAE9A63964)) + 1988285852;
  v86 = 0x1010E1BD33CF8 * (((a2 ^ 0x1B47A54FA17BC46FLL) + 0x24B85AB05E843B91) ^ ((a2 ^ 0x127DB964075F2C0ALL) - 0x127DB964075F2C0ALL) ^ ((a2 ^ 0x93A1C2BA213B33FLL) + 0x36C5E3D45DEC4CC1)) + 0x18F9ADF565397249;
  v87 = (v86 ^ 0xB0B7FF3360FC86EBLL) & (2 * (v86 & 0xB537FC3A72FE24E1)) ^ v86 & 0xB537FC3A72FE24E1;
  v88 = ((2 * (v86 ^ 0x9AF0BF53E00CCEA9)) ^ 0x5F8E86D325E5D498) & (v86 ^ 0x9AF0BF53E00CCEA9) ^ (2 * (v86 ^ 0x9AF0BF53E00CCEA9)) & 0x2FC7436992F2EA40;
  v89 = v88 ^ 0x2041412892122A42;
  v90 = (v88 ^ 0xD86004100E0800CLL) & (4 * v87) ^ v87;
  v91 = ((4 * v89) ^ 0xBF1D0DA64BCBA938) & v89 ^ (4 * v89) & 0x2FC7436992F2EA48;
  v92 = (v91 ^ 0x2F05012002C2A800) & (16 * v90) ^ v90;
  v93 = ((16 * (v91 ^ 0xC2424990304246)) ^ 0xFC7436992F2EA4E0) & (v91 ^ 0xC2424990304246) ^ (16 * (v91 ^ 0xC2424990304246)) & 0x2FC7436992F2EA40;
  v94 = (v93 ^ 0x2C4402090222A000) & (v92 << 8) ^ v92;
  v95 = (((v93 ^ 0x383416090D04A0ELL) << 8) ^ 0xC7436992F2EA4E00) & (v93 ^ 0x383416090D04A0ELL) ^ ((v93 ^ 0x383416090D04A0ELL) << 8) & 0x2FC7436992F2EA00;
  v96 = v94 ^ 0x2FC7436992F2EA4ELL ^ (v95 ^ 0x743410092E20000) & (v94 << 16);
  v97 = v86 ^ (2 * ((v96 << 32) & 0x2FC7436900000000 ^ v96 ^ ((v96 << 32) ^ 0x12F2EA4E00000000) & (((v95 ^ 0x288402690010A04ELL) << 16) & 0x2FC7436900000000 ^ 0x2C86410900000000 ^ (((v95 ^ 0x288402690010A04ELL) << 16) ^ 0x436992F200000000) & (v95 ^ 0x288402690010A04ELL))));
  v98 = (4042322161u * v85 + 0x234F4CCD267407DELL) >> 36;
  v99 = ((v97 ^ 0x147C434A0E7B83D0) + 0x1284150507EE05C5) ^ ((v97 ^ 0x12A406D14F7F77B3) + 0x145C509E46EAF1A8);
  v100 = __CFADD__(65267 * (v99 ^ ((v97 ^ 0xE9E5BBE2161F0418) - 0x10E21252E0757DF3)), 0xFC7B6292E54273B0) + (((v99 ^ ((v97 ^ 0xE9E5BBE2161F0418) - 0x10E21252E0757DF3)) * 0xFEF3uLL) >> 64) + 65267 * ((v61 + __CFADD__(v97 ^ 0x147C434A0E7B83D0, 0x1284150507EE05C5)) ^ (v61 + __CFADD__(v97 ^ 0x12A406D14F7F77B3, 0x145C509E46EAF1A8)) ^ (v61 + __CFADD__(v97 ^ 0xE9E5BBE2161F0418, 0xEF1DEDAD1F8A820DLL))) + 1910885926;
  v101 = (((a61 ^ 0x20B4813136BDEA58) - 0x20B4813136BDEA58) ^ ((a61 ^ 0x55B2B7A20638E545) - 0x55B2B7A20638E545) ^ ((a61 ^ 0x75063693269843E3) - 0x75063693269843E3)) + 2230345586;
  v102 = v101 > 0x141C6F499;
  v103 = (v101 * a6 + 0x297B5CEE85B9A484) >> 33;
  if (v85 <= 0xEA7BBE65)
  {
    v104 = 1565155066;
  }

  else
  {
    v104 = 1833590522;
  }

  v105 = v98 + v104 + 2707 * v100 + (v102 << 31) + v103;
  v106 = v105 - 268 * (((v105 * v62) >> 32) >> 3);
  HIDWORD(a54) = v106 - ((2 * v106) & 0x1D4) + a1;
  v107 = 0x143A40C301986 * (((a2 ^ 0x4417C6063CCBED49) + 0x3BE839F9C33412B7) ^ ((a2 ^ 0xBA9950F449AB61) - 0xBA9950F449AB61) ^ ((a2 ^ 0x44AD5F56CCB51D72) + 0x3B52A0A9334AE28ELL)) - 0x626ECC6FA7ABBB0;
  v108 = v107 ^ ((v107 ^ 0xB117E6986FB1DEADLL) + 0x2304851B9FF18867) ^ ((v107 ^ 0xBD1EFE4C4A46A32) - 0x663D7398CB1BC306) ^ ((v107 ^ 0xA815A2FE9814E210) + 0x3A06C17D6854B4DCLL) ^ ((v107 ^ 0x7F3F37FE3CBEFFBBLL) - 0x12D3AB823301568FLL);
  v109 = ((v108 ^ 0x5B167ED9C2504710) + 0x26FE06A81F6D9070) ^ ((v108 ^ 0x77DC5B88A20C7D1FLL) + 0xA3423F97F31AA61);
  v110 = (((2643056798u * (((a2 ^ 0x5E00DD4C09515711) - 0x5E00DD4C09515711) ^ ((a2 ^ 0x7C1253595A0CA022) - 0x7C1253595A0CA022) ^ ((a2 ^ 0x22128E15576AAC69uLL) - 0x22128E15576AAC69)) + 0x411F5D276468518CLL) >> 35) + 557 * (__CFADD__(51839 * (v109 ^ ((v108 ^ 0x4126B92D6FE3933BLL) + 0x3CCEC15CB2DE4445)), 0x319FF509999B604CLL) + (((v109 ^ ((v108 ^ 0x4126B92D6FE3933BLL) + 0x3CCEC15CB2DE4445)) * 0xCA7FuLL) >> 64) + 51839 * ((v61 + __CFADD__(v108 ^ 0x5B167ED9C2504710, 0x26FE06A81F6D9070)) ^ (v61 + __CFADD__(v108 ^ 0x77DC5B88A20C7D1FLL, 0xA3423F97F31AA61)) ^ (v61 + __CFADD__(v108 ^ 0x4126B92D6FE3933BLL, 0x3CCEC15CB2DE4445))) + 2043356632) + (a60 ^ 0x3E64C7AE) / 7 - 87373695) % 0x16;
  LODWORD(a59) = 20552141;
  return (*(v63 + 8 * ((25 * ((v110 ^ 0xFBBEBBFB) + 2144539913 + ((2 * v110) & 0x36) == 2073153793)) ^ a7)))(268, a1, a2, v64, a3, a4, a5, a6, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a2, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, v112, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_1000AAFA4(unsigned int a1, uint64_t a2, uint64_t a3, double a4, __n128 a5, __n128 a6, __n128 a7, int8x16_t a8, double a9, int8x16_t a10, int8x16_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15)
{
  v22 = a14 & (a2 + 15);
  v23 = v15;
  v24.i64[0] = vqtbl4q_s8(*(&a5 - 1), a8).u64[0];
  *&v24.i64[1] = a9;
  v25 = vrev64q_s8(veorq_s8(veorq_s8(*(v16 + a2), *(v19 + v22 - 15)), veorq_s8(*(v18 + v22 - 15), *(v22 + v17 - 12))));
  v26 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v25, v25, 8uLL), a11), vmulq_s8(v24, a10)));
  *(v21 + a2) = vextq_s8(v26, v26, 8uLL);
  return (*(v20 + 8 * ((((a13 | a3) >= 0) * a15) ^ a1)))();
}

uint64_t sub_1000AB0D8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11)
{
  a11 = a1;
  *(v12 - 112) = v11 - 353670337 * ((((v12 - 120) | 0x861C0354) - ((v12 - 120) & 0x861C0350)) ^ 0x323DFB69) + 4913;
  *(v12 - 120) = a7;
  *(v12 - 104) = &a10;
  v13 = (*(a9 + 8 * (v11 + 44414)))(v12 - 120);
  return (*(a9 + 8 * v11))(v13);
}

uint64_t sub_1000AB158@<X0>(int a1@<W1>, uint64_t a2@<X8>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  a3.n128_u16[0] = 16705;
  a3.n128_u8[2] = 65;
  a3.n128_u8[3] = 65;
  a3.n128_u8[4] = 65;
  a3.n128_u8[5] = 65;
  a3.n128_u8[6] = 65;
  a3.n128_u8[7] = 65;
  a4.n128_u16[0] = 24415;
  a4.n128_u8[2] = 95;
  a4.n128_u8[3] = 95;
  a4.n128_u8[4] = 95;
  a4.n128_u8[5] = 95;
  a4.n128_u8[6] = 95;
  a4.n128_u8[7] = 95;
  return (*(v6 + 8 * a1))((a1 - 19225) & v4, -v5, 8 - ((a1 - 19225) & v4), v4 + a2 - 8, ((a1 - 17191) | 0x2004u) - 10239, 22, v4, xmmword_100F523B0, a3, a4);
}

uint64_t sub_1000AB228(int a1, uint64_t a2, double a3, __n128 a4)
{
  a4.n128_u16[0] = -27757;
  a4.n128_u8[2] = -109;
  a4.n128_u8[3] = -109;
  a4.n128_u8[4] = -109;
  a4.n128_u8[5] = -109;
  a4.n128_u8[6] = -109;
  a4.n128_u8[7] = -109;
  return (*(v5 + 8 * (a1 + 10222)))((a1 + 10188), a2, 8 - (v4 & 0x18), v4 + *(v6 - 184) - 8, 38, xmmword_100F523B0, a4);
}

uint64_t sub_1000AB27C(int a1, uint64_t a2, char a3, int a4)
{
  v15 = v5 - 1;
  v16 = (v14 + v15);
  v17 = ((*(*(*(v13 + 8 * v8) + v9) + (*(*(v13 + 8 * v6) + v7) & v10)) ^ v16) & 0x7FFFFFFF) * v11;
  v18 = v17 ^ HIWORD(v17);
  HIDWORD(v19) = v15;
  LODWORD(v19) = v18 * v11;
  *v16 ^= *(*(v13 + 8 * a1) + ((v19 >> 24) & 0xFFF) + a2) ^ (v18 * a3);
  return (*(v12 + 8 * (((v15 == 0) * a4) ^ v4)))();
}

uint64_t sub_1000AB2F4(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *(v23 - 136) = v22 - 626667220;
  v24 = *(v20 + (v22 - 626667220));
  v25 = *(v20 + (v22 - 626667230));
  LODWORD(v24) = *(a16 + (v24 ^ 0x6C)) ^ v24;
  v26 = v22 - 626677688 + ((a8 - 1749194818) & 0x6842F8B3) - 30652;
  *(v23 - 140) = v26;
  LODWORD(v25) = (((v25 ^ 0xB5 ^ *(a15 + (v25 ^ 0xAA))) >> 5) | (8 * (v25 ^ 0xFFFFFFB5 ^ *(a15 + (v25 ^ 0xAA))))) ^ 0x11;
  v27 = ((*(a15 + (*(v20 + v26) ^ 0xF3)) ^ 0xFFFFFFE3) & ((v24 << 16) ^ 0xCB548F24) | *(a15 + (*(v20 + v26) ^ 0xF3)) & 0xDB) ^ *(v20 + v26);
  LOBYTE(v24) = *(a17 + (*(v20 + (v22 - 626667231)) ^ 0x9CLL)) + 61;
  v28 = (((v24 ^ (16 * v24) ^ (4 * v24)) << 8) ^ 0xE0117120) & (((v25 >> 3) | (32 * v25)) ^ 0xFE97FF22) | ((v25 >> 3) | (32 * v25)) & 0xDF;
  v29 = *(v20 + (v22 - 626667228));
  v30 = *(v20 + (v22 - 626667226));
  v31 = *(v20 + (v22 - 626667222));
  LODWORD(v30) = (*(a15 + (v30 ^ 0xED)) ^ v30 | 0xFFFFFF00) & (((*(a16 + (v29 ^ 0x90)) ^ v29) << 16) ^ 0x4DEDD141) | (*(a15 + (v30 ^ 0xED)) ^ v30) & 0xBE;
  LOBYTE(v29) = *(a17 + (*(v20 + (v22 - 626667223)) ^ 0x8CLL)) + 61;
  v32 = (v29 ^ (16 * v29) ^ (4 * v29)) << 8;
  LODWORD(v29) = (v32 ^ 0xFFFF93FF) & (((((*(a16 + ~*(v20 + (v22 - 626667224))) ^ *(v20 + (v22 - 626667224))) << 16) ^ 0x1472BDAD) & ~v31 | v31 & 0x52) ^ *(a15 + (v31 ^ 0x64)) ^ 0xD74045F9);
  LOBYTE(v31) = *(a17 + (*(v20 + (v22 - 626667227)) ^ 0xECLL)) + 61;
  LODWORD(v31) = ((((16 * v31) ^ (4 * v31)) | 1) ^ v31) << 8;
  LODWORD(v31) = (v31 ^ 0x7DFF40FF) & (v30 ^ 0x39FD92F4) | v31 & 0xBC00;
  v33 = *(a14 + (*(v20 + (v22 - 626667221)) ^ 0x9DLL));
  v34 = *(a17 + (*(v20 + (v22 - 626667219)) ^ 0x10)) + 61;
  v35 = (v34 ^ (16 * v34) ^ (4 * v34)) << 8;
  v36 = (v35 ^ 0xFFFF9BFF) & (v27 & 0x82760D59 ^ 0x229DD5D ^ (((((v33 >> 3) | 0xBE) ^ v33) << 24) ^ 0x598992A6) & (v27 ^ 0x34AF78ED));
  v37 = *(a14 + (*(v20 + (v22 - 626667233)) ^ 0x36));
  v38 = (v37 ^ 0x6C ^ ((v37 >> 3) & 1 | 0x4A)) << 24;
  v39 = *(a14 + (*(v20 + (v22 - 626667229)) ^ 0xF0));
  v40 = (-(v28 ^ 0xE0111981) ^ (v38 - ((v38 | 0x805891ED) ^ (v28 ^ 0x6049886C) & ~v38)) ^ ((v28 ^ 0xE0111981) - ((2 * (v28 ^ 0xE0111981)) & 0x5C21E800) - 277285888) ^ 0xEF78F400) + v38;
  v41 = *(v20 + (v22 - 626667232));
  v42 = (((v39 ^ 0x72 ^ (v39 >> 3) & 1) << 24) ^ 0x662968A9) & (v31 ^ 0x8B1B0A3A);
  v43 = v32 & 0x700 ^ a1 ^ v29;
  LODWORD(v29) = *(a14 + (*(v20 + (v22 - 626667225)) ^ 0x6ELL));
  v44 = v31 & 0x58D69756;
  v45 = a2 ^ ((*(a16 + (v41 ^ 0x14)) ^ v41) << 16) ^ v40;
  v46 = (v29 >> 3) & 1 ^ v29;
  BYTE2(v31) = BYTE2(v45) ^ 0x52;
  v47 = v35 & 0xBD00 ^ v18 ^ v36;
  LODWORD(v29) = (((v19 ^ v44 ^ v42 ^ 0xBE6F56B) & 0x5A796E8A ^ 0x2E0FCEA) & ((v19 ^ v44 ^ v42 ^ 0xBE6F56B) & 0xA5869175 ^ 0xFEF96EDB) | (v19 ^ v44 ^ v42 ^ 0xBE6F56B) & 0xA5060115) ^ 0xF8E7F81D;
  v48 = *(v21 + 8 * (a8 ^ 0x4890)) - 256257470;
  v49 = *(v48 + 4 * ((v45 ^ 0x3A52AB00) >> 24));
  v50 = v49 ^ 0xFCCBB702;
  v51 = v49 ^ 0xD3DB10A8;
  v52 = *(v21 + 8 * (a8 ^ 0x41F7)) - 175996767;
  v53 = ((v51 - v50) ^ 0xFFFFFFFC) + v51;
  v54 = *(v21 + 8 * (a8 ^ 0x4BD6)) - 1536809034;
  v55 = *(v21 + 8 * (a8 - 15089)) - 933298215;
  v56 = v53 ^ *(v52 + 4 * (BYTE2(v29) ^ 0x2Bu)) ^ (*(v54 + 4 * (v47 ^ 0x3Cu)) - 962114078) ^ *(v55 + 4 * (BYTE1(v43) ^ 0x99u));
  v57 = v43 ^ (v46 << 24) ^ 0x6318CC43;
  v58 = v47 ^ 0x80DD0297;
  v59 = *(v52 + 4 * (BYTE2(v57) ^ 0x2Bu)) ^ *(v55 + 4 * ((v47 ^ 0x297) >> 8)) ^ *(v48 + 4 * BYTE3(v29)) ^ (*(v54 + 4 * (v45 ^ 0xABu)) - 962114078);
  v60 = *(v48 + 4 * ((55 * ((78090315 * HIBYTE(v57)) >> 32) + (HIBYTE(v57) - 55 * ((149 * HIBYTE(v57)) >> 13))) ^ 0xCB)) ^ BYTE2(v58) ^ *(v52 + 4 * (BYTE2(v58) ^ 0x2Bu)) ^ *(v55 + 4 * (BYTE1(v45) ^ 0xFEu)) ^ (*(v54 + 4 * v29) - 962114078);
  v61 = *(v55 + 4 * BYTE1(v29)) ^ *(v48 + 4 * HIBYTE(v58)) ^ (*(v54 + 4 * (v43 ^ 0xE8u)) - 962114078) ^ *(v52 + 4 * (((v45 ^ 0x3A52AB00) >> 16) ^ 0x2Bu));
  v62 = *(v52 + 4 * (BYTE2(v59) ^ 0x6Eu)) ^ BYTE2(v59) ^ *(v55 + 4 * ((v60 ^ 0xEA45) >> 8)) ^ *(v48 + 4 * (HIBYTE(v56) ^ 0x10)) ^ (*(v54 + 4 * ((v61 ^ BYTE2(v31)) ^ 0xE8u)) - 962114078);
  v63 = ((v60 ^ 0x4B80EA45u) >> 16);
  LODWORD(v29) = *(v48 + 4 * (HIBYTE(v59) ^ 0x73)) ^ *(v55 + 4 * (BYTE1(v61) ^ 0xB7u)) ^ *(v52 + 4 * (v63 ^ 0x2Bu)) ^ (*(v54 + 4 * ((BYTE2(v29) ^ v56) ^ 0x15u)) - 962114078);
  LODWORD(v31) = BYTE2(v61) ^ *(v52 + 4 * (BYTE2(v61) ^ 0x99u)) ^ 0x9B8C138 ^ *(v48 + 4 * ((v60 ^ 0x4B80EA45u) >> 24));
  LODWORD(v41) = *(v55 + 4 * (BYTE1(v56) ^ 0xF9u)) ^ 0x7A533A50;
  LODWORD(v31) = ((-v31 ^ (v41 - (v41 ^ v31)) ^ (v31 - ((2 * v31) & 0xFD3CCC88) + 2124310084) ^ 0x7E9E6644) + v41) ^ (*(v54 + 4 * ((v59 ^ BYTE2(v57)) ^ 0xABu)) - 962114078);
  v64 = *(v52 + 4 * ((-(BYTE2(v56) ^ 0x6A) ^ (43 - (BYTE2(v56) ^ 0x41)) ^ 0xCB5BBC43 ^ ((BYTE2(v56) ^ 0x6A) - 883180476 + (~(2 * (BYTE2(v56) ^ 0x6A)) | 0xFFFFFF79))) + 43)) ^ *(v48 + 4 * (HIBYTE(v61) ^ 0x2B)) ^ *(v55 + 4 * (BYTE1(v59) ^ 0x99u)) ^ (*(v54 + 4 * (v60 ^ 0xEEu)) - 962114078);
  v65 = *(v48 + 4 * ((v62 ^ 0x8F759DD2) >> 24)) ^ ((v63 ^ 0x70D6D7F4 ^ v29) >> 16) ^ *(v52 + 4 * (((v63 ^ 0x70D6D7F4 ^ v29) >> 16) ^ 0x2Bu));
  LODWORD(v41) = *(v55 + 4 * ((((v31 >> 8) & 0x7F ^ 0x6DE6606A) - ((2 * ((v31 >> 8) & 0x7F ^ 0x6DE6606A)) & 0xD18000C0) - 372210848) ^ ((v31 >> 8) & 0x80 | 0x8636E31F)));
  v66 = ((v65 ^ 0x9B8C18A) + (v41 ^ 0xEA8786E1) + ((2 * ((v41 ^ 0x35679E0) & (v65 ^ 0x9B8C18A) ^ v65 & 0x69D1FF01)) ^ 0xECDE7DFF) + 1) ^ (*(v54 + 4 * ((v64 ^ BYTE2(v56)) ^ 0x98u)) - 962114078);
  v67 = *(v52 + 4 * (BYTE2(v31) ^ 0x70u)) ^ BYTE2(v31) ^ 0xF57376D3;
  LODWORD(v41) = *(v48 + 4 * (BYTE3(v29) ^ 0xBB));
  v68 = *(v55 + 4 * (BYTE1(v64) ^ 0xDFu)) ^ (*(v54 + 4 * (v62 ^ 0x79u)) - 962114078) ^ ((-(v41 ^ 0xFCCBB702) ^ ((v41 ^ 0xFCCBB702) - 2 * ((v41 ^ 0xFCCBB702) & 0x7B1CCFD5 ^ v41 & 5) + 2065485776) ^ 0x7B1CCFD0 ^ (v67 - (v67 ^ v41 ^ 0xFCCBB702))) + v67);
  v69 = *(v48 + 4 * (BYTE3(v31) ^ 0xC4)) ^ (*(v54 + 4 * (v63 ^ 0xF4u ^ v29)) - 962114078) ^ *(v55 + 4 * ((v62 ^ 0x9DD2) >> 8));
  LODWORD(v29) = *(v48 + 4 * (HIBYTE(v64) ^ 0xDB)) ^ ((v62 ^ 0x8F759DD2) >> 16) ^ *(v52 + 4 * (((v62 ^ 0x8F759DD2) >> 16) ^ 0x2Bu)) ^ *(v55 + 4 * (BYTE1(v29) ^ 0x82u)) ^ (*(v54 + 4 * (v31 ^ 0xA3u)) - 962114078);
  v70 = ((v68 ^ 0x722627A3) >> (v29 & 0x10 ^ 0x10) >> (v29 & 0x10));
  v71 = *(v52 + 4 * ((-(BYTE2(v64) ^ 0xE4) ^ (43 - (BYTE2(v64) ^ 0xCF)) ^ 0x3AD22AE ^ ((BYTE2(v64) ^ 0xE4) - ((2 * (BYTE2(v64) ^ 0xE4)) & 0x15Cu) + 61678254)) + 43)) ^ v69;
  v72 = *(v48 + 4 * (HIBYTE(v66) ^ 0xAF)) ^ *(v52 + 4 * (v70 ^ 0x2Bu)) ^ v70 ^ 0x15A3EBDB;
  LODWORD(v74) = __ROR4__(v29 ^ 0xFF4F5097, 24) ^ 0xD4375197;
  HIDWORD(v74) = v74;
  v73 = v74 >> 8;
  v75 = (*(v54 + 4 * (BYTE1(v74) ^ 0xCFu)) - 962114078) ^ *(v55 + 4 * (BYTE1(v71) ^ 0xDBu)) ^ ((v72 & 0x58A4F4C7 ^ 0x65A8BE10) & (v72 & 0xA75B0B38 ^ 0xFBF6F4CF) | v72 & 0x82530128);
  v76 = *(v48 + 4 * (HIBYTE(v68) ^ 0xB9)) ^ *(v52 + 4 * (BYTE2(v71) ^ 0xE3u)) ^ *(v55 + 4 * (((v74 >> 8) >> 8) ^ 0xE5u)) ^ (*(v54 + 4 * (v66 ^ 0x7Eu)) - 962114078);
  v77 = *(v52 + 4 * (BYTE2(v73) ^ 0x7Au)) ^ *(v48 + 4 * (HIBYTE(v71) ^ 0x40)) ^ (*(v54 + 4 * (v68 ^ 8u)) - 962114078) ^ *(v55 + 4 * (BYTE1(v66) ^ 0xF0u));
  v78 = *(v52 + 4 * (((v66 ^ 0x6491A57E) >> 16) ^ 0x2Bu)) ^ *(v48 + 4 * (HIBYTE(v73) ^ 0xB4)) ^ *(v55 + 4 * (BYTE1(v68) ^ 0x72u)) ^ (*(v54 + 4 * ((v71 ^ BYTE2(v64)) ^ 0x7Cu)) - 962114078);
  v79 = *(v52 + 4 * (BYTE2(v76) ^ 0xA0u)) ^ ((BYTE2(v76) ^ 0x8B) - ((2 * (BYTE2(v76) ^ 0x8B)) & 0x184) - 1377896254);
  v160 = *(v23 - 132) < 0xC0B41D5E;
  v80 = (v77 >> 8) ^ 0x8E;
  if (v79 == 1487769162)
  {
    v80 = 177;
  }

  v81 = BYTE1(v77) ^ 0xC0;
  v82 = *(v48 + 4 * (HIBYTE(v75) ^ 0x4A)) ^ v81 ^ v79 ^ *(v55 + 4 * (BYTE1(v77) ^ 0x95u)) ^ (*(v54 + 4 * ((v78 ^ BYTE2(v66) ^ 0x91) ^ 0xEDu)) - 962114078);
  v83 = BYTE2(v77);
  v84 = v82 ^ (v81 - 2 * (v80 & v81) - 1865106255);
  v85 = *(v54 + 4 * (v75 ^ 0x46u));
  v86 = v77 ^ BYTE2(v73);
  v87 = *(v48 + 4 * (HIBYTE(v76) ^ 0xC9)) ^ *(v52 + 4 * (BYTE2(v77) ^ 0x8Eu)) ^ *(v55 + 4 * (BYTE1(v78) ^ 0x91u)) ^ (v85 - ((2 * v85 + 223255492) & 0x214BA38C) - 682811480);
  v88 = *(v52 + 4 * (BYTE2(v78) ^ 0xA2u)) ^ *(v48 + 4 * (HIBYTE(v77) ^ 0xCE)) ^ (*(v54 + 4 * ((v76 ^ BYTE2(v71)) ^ 0xB4u)) - 962114078) ^ *(v55 + 4 * (BYTE1(v75) ^ 0xA2u));
  v89 = *(v48 + 4 * (HIBYTE(v78) ^ 0x55));
  v90 = *(v55 + 4 * (BYTE1(v76) ^ 0xC8u)) ^ *(v52 + 4 * (BYTE2(v75) ^ 0xDBu)) ^ (((2 * v89) & 0x5E214F54 ^ 0xF9DFFEAF) + 49002579 + (((v89 ^ 0x51815B07) - 1367431943) ^ ((v89 ^ 0x40A710C5) - 1084690629) ^ ((v89 ^ 0xC2FD5B6A) + 1023583382))) ^ (*(v54 + 4 * (v86 ^ 0xD6u)) - 962114078);
  v91 = *(v52 + 4 * (BYTE2(v87) ^ 0xA7u)) ^ *(v48 + 4 * ((v84 ^ 0x624EEF32u) >> 24)) ^ *(v55 + 4 * (BYTE1(v88) ^ 0xA3u)) ^ (*(v54 + 4 * ((v90 ^ BYTE2(v75)) ^ 0xC6u)) - 962114078);
  LOBYTE(v89) = v88 ^ BYTE2(v78);
  v92 = *(v52 + 4 * (BYTE2(v88) ^ 0x41u)) ^ *(v55 + 4 * (BYTE1(v90) ^ 3u)) ^ (*(v54 + 4 * (v84 ^ 0x32u)) - 962114078) ^ *(v48 + 4 * (HIBYTE(v87) ^ 0xC1));
  v93 = v87 ^ v83;
  v94 = *(v52 + 4 * (BYTE2(v90) ^ 0xE5u)) ^ *(v48 + 4 * (HIBYTE(v88) ^ 0x58)) ^ *(v55 + 4 * (BYTE1(v84) ^ 0xBAu)) ^ (*(v54 + 4 * (v93 ^ 0x3Du)) - 962114078);
  v95 = *(v52 + 4 * (((v84 ^ 0x624EEF32u) >> 16) ^ 0x2Bu)) ^ *(v48 + 4 * (HIBYTE(v90) ^ 0xB6)) ^ (*(v54 + 4 * (v89 ^ 0x33u)) - 962114078) ^ *(v55 + 4 * (((v93 ^ 0xBFE8) >> 8) ^ 0xDEu));
  v96 = BYTE2(v88) ^ 0x42438D15 ^ v92;
  v97 = *(v48 + 4 * (HIBYTE(v91) ^ 0x1F)) ^ BYTE2(v96) ^ *(v52 + 4 * (BYTE2(v96) ^ 0x2Bu)) ^ *(v55 + 4 * (BYTE1(v94) ^ 0xFDu)) ^ (*(v54 + 4 * ((v95 ^ ((v84 ^ 0x624EEF32u) >> 16)) ^ 0xF1u)) - 962114078);
  LOWORD(v81) = BYTE2(v94);
  v98 = *(v55 + 4 * (BYTE1(v95) ^ 0xCFu)) ^ *(v52 + 4 * (BYTE2(v94) ^ 0xE4u)) ^ (*(v54 + 4 * ((v91 ^ BYTE2(v87)) ^ 0xCEu)) - 962114078) ^ *(v48 + 4 * ((-HIBYTE(v96) ^ (203 - (HIBYTE(v96) ^ 0xCB)) ^ (HIBYTE(v96) - ((v96 >> 23) & 0x13C) - 343944546) ^ 0xEB7FD29E) + 203));
  v99 = v94 ^ HIWORD(v90);
  v100 = *(v52 + 4 * (BYTE2(v95) ^ 7u)) ^ *(v55 + 4 * (BYTE1(v91) ^ 0xEEu)) ^ *(v48 + 4 * (HIBYTE(v94) ^ 0x96)) ^ (*(v54 + 4 * v96) - 962114078);
  v101 = *(v52 + 4 * (BYTE2(v91) ^ 0xA7u)) ^ *(v55 + 4 * (BYTE1(v92) ^ 0xD8u)) ^ *(v48 + 4 * (HIBYTE(v95) ^ 0x9B)) ^ (*(v54 + 4 * (v99 ^ 0x68u)) - 962114078);
  v102 = v93 == -709952424;
  v103 = v98 ^ v81;
  v104 = v103 ^ 0xDA0D;
  if (v102)
  {
    v104 = -10167;
  }

  v105 = (v104 ^ 0x2700) & (v98 ^ 0xF600) ^ v104 & 0xB00;
  v106 = *(v48 + 4 * (HIBYTE(v97) ^ 0x99)) ^ BYTE2(v98) ^ *(v55 + 4 * (BYTE1(v100) ^ 0xD3u)) ^ *(v52 + 4 * (BYTE2(v98) ^ 0x30u)) ^ (*(v54 + 4 * ((v101 ^ BYTE2(v91)) ^ 0x41u)) - 962114078);
  v107 = *(v48 + 4 * (HIBYTE(v98) ^ 0x57)) ^ *(v52 + 4 * (BYTE2(v100) ^ 0x19u)) ^ *(v55 + 4 * (BYTE1(v101) ^ 0x9Au));
  v108 = BYTE2(v97) ^ 0xBE;
  v109 = v107 ^ (*(v54 + 4 * (v97 ^ 0x86u)) - 962114078);
  v110 = *(v48 + 4 * (HIBYTE(v100) ^ 0x86)) ^ BYTE2(v101) ^ *(v52 + 4 * (BYTE2(v101) ^ 0xD3u)) ^ *(v55 + 4 * (((v97 ^ 0xA32D) >> 8) ^ 0x55u)) ^ 0x73EBFB22;
  v111 = *(v54 + 4 * (v103 ^ 0x55u)) - 962114078;
  v112 = (-v110 ^ (v111 - (v110 ^ v111)) ^ (v110 - ((2 * v110) & 0xE284930) - 2028723048) ^ 0x87142498) + v111;
  v113 = *(v55 + 4 * (HIBYTE(v105) ^ 0x56u));
  v114 = v108;
  v115 = *(v52 + 4 * (v114 ^ 0x2Bu)) ^ *(v48 + 4 * (HIBYTE(v101) ^ 0x5A)) ^ (*(v54 + 4 * ((v100 ^ BYTE2(v95)) ^ 0x73u)) - 962114078) ^ (((2 * v113) & 0x1CD9E936 ^ 0xEBF6F6FD) - 118195331 + (((v113 ^ 0x49E9A00) - 77502976) ^ ((v113 ^ 0x69956B31) - 1771399985) ^ ((v113 ^ 0x878C77D0) + 2020837424)));
  v116 = BYTE2(v106) ^ 0xBA;
  BYTE2(v111) = BYTE2(v112) ^ 0x78;
  v117 = v114 ^ 0xD1660F27 ^ v115;
  v118 = *(v48 + 4 * ((v106 ^ 0x32BA4F86u) >> 24)) ^ *(v52 + 4 * (BYTE2(v109) ^ 0x6Cu)) ^ (*(v54 + 4 * (v114 ^ 0x27u ^ (*(v52 + 4 * (v114 ^ 0x2Bu)) ^ *(v48 + 4 * (HIBYTE(v101) ^ 0x5A)) ^ (*(v54 + 4 * ((v100 ^ BYTE2(v95)) ^ 0x73u)) - 30) ^ (((2 * v113) & 0x36 ^ 0xFD) + 125 + (v113 ^ ((v113 ^ 0x31) - 49) ^ ((v113 ^ 0xD0) + 48)))))) - 962114078) ^ *(v55 + 4 * ((-((v112 ^ 0x9A82) >> 8) ^ (85 - (((v112 ^ 0x9A82) >> 8) ^ 0x55)) ^ (((v112 ^ 0x9A82) >> 8) - (((v112 ^ 0x90789A82) >> 7) & 0x136) - 1872035685) ^ 0x906B009B) + 85));
  v119 = *(v48 + 4 * (HIBYTE(v109) ^ 0x22)) ^ *(v52 + 4 * (((v112 ^ 0x90789A82) >> 16) ^ 0x2Bu)) ^ (*(v54 + 4 * (v106 ^ 0x2Du)) - 962114078) ^ *(v55 + 4 * (BYTE1(v115) ^ 0x5Au));
  v120 = *(v48 + 4 * ((v112 ^ 0x90789A82) >> 24)) ^ *(v55 + 4 * ((v106 ^ 0x4F86) >> 8)) ^ (*(v54 + 4 * ((v109 ^ BYTE2(v100)) ^ 0xFDu)) - 962114078) ^ *(v52 + 4 * (BYTE2(v117) ^ 0x2Bu));
  v121 = *(v52 + 4 * (v116 ^ 0x2Bu)) ^ *(v55 + 4 * (BYTE1(v109) ^ 0x61u)) ^ (*(v54 + 4 * (v112 ^ 0x29u)) - 962114078) ^ *(v48 + 4 * (HIBYTE(v115) ^ 0x1A));
  v122 = ((v118 ^ BYTE2(v109)) & 0x51 ^ 0xE7) & ((v118 ^ BYTE2(v109)) & 0xAE ^ 0x20005B) | (v118 ^ BYTE2(v109)) & 8;
  v123 = *(&off_1010A0B50 + (a8 ^ 0x4C74)) - 209501434;
  v124 = *(&off_1010A0B50 + a8 - 12444) - 526409514;
  v125 = *(&off_1010A0B50 + a8 - 13489) - 1369163751;
  v126 = v116 ^ 0xA14A4906 ^ v121;
  v127 = *(&off_1010A0B50 + (a8 ^ 0x505E)) - 1423314818;
  v128 = *&v123[4 * (BYTE2(v119) ^ 0x9C)] ^ BYTE2(v119) ^ ((BYTE1(v120) ^ 0xE7) - 986774071) ^ *&v124[4 * (BYTE1(v120) ^ 0x7B)] ^ *&v125[4 * (HIBYTE(v118) ^ 0x2E)] ^ (*&v127[4 * v126] + 834138483);
  v129 = *&v127[4 * v122];
  v130 = (v129 ^ 0x8AF41BE7) & (2 * (v129 & 0xA2C453E6)) ^ v129 & 0xA2C453E6;
  v131 = ((2 * (v129 ^ 0x8B7C182F)) ^ 0x53709792) & (v129 ^ 0x8B7C182F) ^ (2 * (v129 ^ 0x8B7C182F)) & 0x29B84BC8;
  v132 = (v131 ^ 0x1300380) & (4 * v130) ^ v130;
  v133 = ((4 * (v131 ^ 0x28884849)) ^ 0xA6E12F24) & (v131 ^ 0x28884849) ^ (4 * (v131 ^ 0x28884849)) & 0x29B84BC8;
  v134 = (v133 ^ 0x20A00B00) & (16 * v132) ^ v132;
  v135 = ((16 * (v133 ^ 0x91840C9)) ^ 0x9B84BC90) & (v133 ^ 0x91840C9) ^ (16 * (v133 ^ 0x91840C9)) & 0x29B84BC0;
  v136 = v134 ^ 0x29B84BC9 ^ (v135 ^ 0x9800800) & (v134 << 8);
  v137 = v129 + ((2 * (((v129 ^ 0xA0049DE3) + 46190087) ^ v129 ^ ((v129 ^ 0x339929AF) + 291338827) ^ ((v129 ^ 0x159D7E9) + 60654605) ^ ((v129 ^ 0xFFFCFBF) + 222010459))) & 0x1DE73B1A ^ 0x18671810) - 1564191770 + ((v129 - 1564191769 + (v129 ^ (2 * ((v136 << 16) & 0x29B80000 ^ v136 ^ ((v136 << 16) ^ 0x4BC90000) & (((v135 ^ 0x20384349) << 8) & 0x29B80000 ^ 0x1B00000 ^ (((v135 ^ 0x20384349) << 8) ^ 0x384B0000) & (v135 ^ 0x20384349)))) ^ 0x93A8A606)) ^ 0xFFFFFFFE);
  v138 = *&v123[4 * (BYTE2(v126) ^ 0xC8)] ^ ((BYTE1(v118) ^ 0xB2) - 986774071) ^ *&v125[4 * (HIBYTE(v120) ^ 0xEF)] ^ *&v124[4 * (BYTE1(v118) ^ 0x2E)] ^ (*&v127[4 * ((v119 ^ BYTE2(v111)) ^ 0xA8)] + 834138483);
  v139 = BYTE2(v118);
  v140 = ((BYTE2(v120) ^ 0x21) - 1860010356 + ((v120 >> 15) & 0x116 ^ 0xFFFFFFFD)) ^ (BYTE1(v126) - 986774071) ^ *&v125[4 * (HIBYTE(v119) ^ 0x4B)] ^ *&v123[4 * (BYTE2(v120) ^ 0xE9)];
  v141 = BYTE1(v119);
  v142 = *&v124[4 * (v141 ^ 0xC9)];
  LODWORD(v143) = __ROR4__(v140 ^ *&v124[4 * (BYTE1(v126) ^ 0x9C)] ^ 0x9E36352E ^ v137, 23) ^ 0x30CBA47D;
  HIDWORD(v143) = v143;
  LODWORD(v124) = v143 >> 9;
  v144 = *&v123[4 * (v139 ^ 0x3D)] ^ ((v141 ^ 0x55) - 986774071) ^ *&v125[4 * (HIBYTE(v121) ^ 0x56)] ^ v142;
  v145 = *(&off_1010A0B50 + (a8 ^ 0x4BDB)) - 2128729115;
  v146 = v144 ^ (*&v127[4 * ((v120 ^ BYTE2(v117)) ^ 0x38)] + 834138483);
  *(v20 + (v22 - 626667228)) = v145[BYTE2(v124) ^ 0x8BLL] ^ 0x50;
  v147 = *(&off_1010A0B50 + a8 - 12739) - 2110346635;
  v148 = v147[BYTE3(v146) ^ 0x68];
  *(v20 + (v22 - 626667221)) = ((v148 >> 5) | (8 * v148)) ^ (((v148 >> 5) | (8 * v148)) >> 3) ^ (((((v148 >> 5) | (8 * v148)) & 0x80) != 0) | 0xF0) ^ 0xE4;
  v149 = v147[(v124 >> 24) ^ 2];
  v150 = (v149 >> 5) | (8 * v149);
  v151 = (((16 * (v150 ^ 0xFFFFFF8C)) ^ 0x64) & ((v150 >> 4) ^ 0xFFFFFFFB) | (v150 >> 4) & 0xFB) ^ ((2 * ((v150 >> 4) ^ v150 ^ 0xFFFFFF8C)) & 0xFFFFFFF0 ^ 0xFFFFFF81) & ((v150 >> 7) & 1 | 0xFFFFFFF4) ^ 0x18;
  *(v20 + (v22 - 626667229)) = ((v151 >> 4) | (16 * v151)) ^ 0xE1;
  LODWORD(v143) = __ROR4__(v128 ^ 0x1012843A, 22) ^ 0x8C5AE47F;
  HIDWORD(v143) = v143;
  v152 = v143 >> 10;
  *(v20 + (v22 - 626667224)) = v145[BYTE2(v138) ^ 0x14] ^ 0xC8;
  v153 = *(&off_1010A0B50 + a8 - 12736) - 1177008494;
  *(v20 + (v22 - 626667219)) = v153[BYTE1(v146) ^ 0x95] ^ 0xC2;
  v154 = *(&off_1010A0B50 + a8 - 13009) - 211433223;
  *(v20 + (v22 - 626667230)) = v154[(v143 >> 10) ^ 9] ^ 0x29;
  *(v20 + (v22 - 626667222)) = v154[(v138 ^ BYTE2(v126)) ^ 0xBFLL] ^ 0x49;
  *(v20 + *(v23 - 140)) = v154[(v146 ^ v139) ^ 2] ^ 0xCE;
  *(v20 + (v22 - 626667231)) = v153[BYTE1(v152) ^ 0xCBLL] ^ 0x92;
  *(v20 + *(v23 - 136)) = v145[BYTE2(v146) ^ 0x4FLL] ^ 0x1A;
  *(v20 + (v22 - 626667223)) = v153[BYTE1(v138) ^ 0x3BLL] ^ 0x78;
  *(v20 + (v22 - 626667226)) = v154[v124 ^ 0x6FLL] ^ 0xA4;
  *(v20 + (v22 - 626667227)) = v153[BYTE1(v124) ^ 0x37] ^ 0x18;
  LODWORD(v153) = v147[HIBYTE(v152) ^ 0xE7];
  v155 = ((v153 >> 5) | (8 * v153)) ^ 0xFFFFFFCA;
  *(v20 + (v22 - 626667233)) = v153 & 0x1F ^ ((v153 >> 5) | (8 * v153)) ^ 0xCA ^ ((((((v153 >> 5) | (8 * v153)) ^ 0xCA) & 0x80) != 0) | 0x6E) ^ 0x99;
  LODWORD(v153) = v147[HIBYTE(v138) ^ 0x49];
  v156 = (v153 >> 4) | 0xFE;
  *(v20 + (v22 - 626667225)) = ((v153 >> 5) | (8 * v153)) ^ v153 & 0x1F ^ ((v153 >> 4) | 0xFE) ^ 0xEE;
  LOBYTE(v152) = v145[BYTE2(v152) ^ 0x28];
  LODWORD(v145) = ((v22 ^ 0xD83E39FA) + 43772133) ^ v22 ^ ((v22 ^ 0x18AE8919) - 1039443960) ^ ((v22 ^ 0x1A75F179) - 1060102040) ^ ((v22 ^ 0xFFBF6F7B) + 622509670);
  *(v20 + ((((2 * (v22 & 1)) ^ 0xAABFD19A) + 1451456475) ^ 0xFD7FEF30) + 1148258761 + (((v145 ^ 0xA43359F4) + 1044068584) ^ ((v145 ^ 0x303A9026) - 1439502026) ^ ((v145 ^ 0xB153E732) + 727418402))) = v152 ^ 0x95;
  v157 = ((v22 ^ 0x7672FD8E) - 1395184495) ^ v22 ^ ((v22 ^ 0x750F4DAA) - 1347773259) ^ ((v22 ^ 0x79D965BA) - 1552108379) ^ ((v22 ^ 0x5FFEFB7F) - 2057622942);
  LODWORD(v145) = (2 * (((v22 ^ 0x13CAA932) + 1232042029) ^ v22 ^ ((v22 ^ 0x15752598) + 1339094151) ^ ((v22 ^ 4) + 27) ^ ((v22 ^ 0xE) + 18))) & 0x20;
  LODWORD(v145) = (((v145 ^ 0x9187EFE0) - 572866559) ^ (v145 + 1285730283) ^ ((v145 ^ 0x55A52325) + 435686598)) + (((v157 ^ 0xAEE64D69) - 1236161034) ^ ((v157 ^ 0xA3A23008) - 1156198251) ^ ((v157 ^ 0x281E5390) + 816427789)) + 912858895;
  LODWORD(v153) = v160 ^ (v145 < 0xC0B41D5E);
  v158 = v145 < *(v23 - 132);
  if (v153)
  {
    v158 = v160;
  }

  return (*(a18 + 8 * (((16 * !v158) | (!v158 << 6)) ^ a8)))(v156, v155, (v155 >> 7) & 1 | 0x6E, 834138483, v139, 73, v146, 200, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1000AD388@<X0>(int a1@<W8>)
{
  v2 = STACK[0x7A8];
  STACK[0x750] = STACK[0x7A8];
  return (*(v1 + 8 * (((((v2 == 0) ^ (a1 - 50)) & 1) * (((a1 - 25984) | 0x50) - 1238)) ^ a1)))();
}

uint64_t sub_1000AD6D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 200) = *(a3 + 224);
  LODWORD(STACK[0x334]) = STACK[0x3AC];
  LODWORD(STACK[0x244]) = 1023702580;
  return (*(v4 + 8 * v3))();
}

uint64_t sub_1000AD7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, _DWORD *a44)
{
  v50 = v48 + 23136;
  v51 = (v48 - 10779) | 0x2A1B;
  *(v49 - 136) = v50 - 906386353 * ((~v45 & 0xF4EE83B1 | v45 & 0xB117C48) ^ 0xC5EF4E95) - 17142;
  *(v44 + 4736) = a43;
  *(v44 + 4728) = a37;
  v52 = (*(v47 + 8 * (v50 + 18219)))(v49 - 152);
  v53 = *a44 + 1027988162;
  v54 = v46 + 918284867 < v53;
  if ((v46 + 918284867) < 0x6B61A825 != v53 < 0x6B61A825)
  {
    v54 = v53 < 0x6B61A825;
  }

  return (*(v47 + 8 * ((v54 * (v51 - 10540)) ^ v50)))(v52);
}

uint64_t sub_1000AD8D4()
{
  v3 = (v0 ^ 0xDBF39FFF5FEDBBF7) + 0x3E7CFA6CB1F3D500 + ((2 * v0) & 0xBFDB77EELL);
  STACK[0xCD8] = v3;
  v4 = STACK[0x6D0];
  STACK[0xCE0] = STACK[0x6D0];
  return (*(v2 + 8 * ((47942 * (v3 - v4 + 0x1B42BB835C0C02BFLL < ((v1 - 7268) ^ 0x21C4u) + (v1 - 20181) - 8093)) ^ (v1 - 7268))))();
}

uint64_t sub_1000ADB1C()
{
  STACK[0xAC0] = STACK[0x7D8];
  LODWORD(STACK[0x7D4]) = -336233947;
  LODWORD(STACK[0x64C]) = v0;
  LODWORD(STACK[0xA18]) = 349527064;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_1000ADB5C(uint64_t a1, uint64_t a2)
{
  *(v2 - 220) = 0;
  v3 = STACK[0x2D4];
  *(v2 - 208) = LODWORD(STACK[0x2B4]) ^ 0xF95D6903;
  *(v2 - 204) = LODWORD(STACK[0x2B8]) ^ 0xDCDDFDCC;
  *(v2 - 240) = LODWORD(STACK[0x2BC]) ^ 0x45700FF7;
  *(v2 - 224) = LODWORD(STACK[0x2C0]) ^ 0xD38C9C8B;
  v4 = *(a2 + 8 * v3);
  *(v2 - 196) = STACK[0x2C4];
  *(v2 - 200) = STACK[0x2C8];
  *(v2 - 212) = STACK[0x2D0];
  *(v2 - 236) = STACK[0x2CC];
  return v4();
}

uint64_t sub_1000ADC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>, __n128 a6@<Q1>, int8x16_t a7@<Q4>, uint64_t a8@<D5>, int8x16_t a9@<Q6>)
{
  v18 = (v16 - 1) & 0xF;
  v20.i64[0] = vqtbl4q_s8(*(&a6 - 1), a7).u64[0];
  v20.i64[1] = a8;
  v21 = vrev64q_s8(vmulq_s8(v20, a9));
  *(a5 + v16) = veorq_s8(veorq_s8(veorq_s8(*(v15 + v18 - 15), *(v12 + v16)), veorq_s8(*(v18 + v13 - 13), *(v14 + v18 - 15))), vextq_s8(v21, v21, 8uLL));
  return (*(v17 + 8 * (((a3 == 0) * a4) ^ v11)))(a1, a2, a3 - 16);
}

uint64_t sub_1000ADEE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(*(a2 + 8) + 4 * v2) = ~*(*(a2 + 8) + 4 * v2);
  v8 = v2 + a1 + v3;
  v9 = *(a2 + 4);
  v11 = v9 + v5;
  v10 = v9 + v5 < 0;
  v12 = v7 - v9;
  if (!v10)
  {
    v12 = v11;
  }

  return (*(v6 + 8 * (v4 | (2 * (v8 < v12)))))();
}

uint64_t sub_1000AE02C()
{
  v10 = *(v1 + 8) + 24 * LODWORD(STACK[0xA1C]);
  *(v8 - 216) = v0;
  *(v8 - 208) = v6 - 297845113 * (((v7 | 0x3922636B8B2C46C5) - (v7 | 0xC6DD9C9474D3B93ALL) - 0x3922636B8B2C46C6) ^ 0x8E79C2AEFC1F5A5BLL) + (v2 ^ v3) + 0x53AC680FC635A835;
  *(v8 - 224) = v10;
  *(v8 - 192) = v1;
  *(v8 - 200) = (297845113 * (((v7 | 0x8B2C46C5) - (v7 | 0x74D3B93A) + 1960032570) ^ 0xFC1F5A5B)) ^ 0x53E1E633;
  *(v8 - 196) = (v2 + 15517) ^ (297845113 * (((v7 | 0x8B2C46C5) - (v7 | 0x74D3B93A) + 1960032570) ^ 0xFC1F5A5B));
  v11 = (*(v9 + 8 * (v2 ^ 0x4C8F)))(v8 - 224);
  v12 = STACK[0x408];
  LODWORD(STACK[0x79C]) = v5;
  *(STACK[0x750] + 108) = v4 ^ 0x4BAA94C0;
  return (*(v12 + 8 * (((STACK[0x860] != 0) * (288 * (v2 ^ 0x87E8) - 26081)) ^ v2)))(v11);
}

uint64_t sub_1000AE150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v28 = v27 | 0x231E;
  v29 = v26 + v25;
  v30 = v24 - v26;
  if (v29 < 0)
  {
    v29 = v30;
  }

  return (*(a24 + 8 * (((v29 <= (((v28 - 8356) | 0x6000) ^ 0x62F8)) * (5 * (v28 ^ 0x2753) - 5443)) ^ v28)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t sub_1000AE248()
{
  v1 = STACK[0x2B8];
  v2 = (STACK[0x2B8] - 20073) | 0x2482;
  v3 = STACK[0x2B8] + 8050;
  v4 = STACK[0x9D0];
  v5 = STACK[0x820];
  v6 = STACK[0xB68];
  v7 = 297845113 * ((v0 - 224 - 2 * ((v0 - 224) & 0x36743568) + 913585515) ^ 0x414729F5);
  *(v0 - 208) = v7 + 2042341068;
  *(v0 - 200) = v4;
  *(v0 - 188) = v1 - v7 - 14784;
  *(v0 - 184) = v7 - 1582803273;
  *(v0 - 224) = v5;
  *(v0 - 216) = v6;
  v8 = STACK[0x408];
  v9 = (*(STACK[0x408] + 8 * (v1 + 27884)))(v0 - 224);
  v10 = v8;
  LODWORD(v8) = *(v0 - 192);
  LODWORD(STACK[0xB7C]) = v8;
  return (*(v10 + 8 * (((2 * (v8 != (v2 ^ 0xE9D5F3DB))) | (16 * (v8 != (v2 ^ 0xE9D5F3DB)))) ^ v3)))(v9);
}

uint64_t sub_1000AE52C@<X0>(uint64_t a1@<X2>, unsigned int a2@<W3>, int a3@<W6>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15)
{
  v22 = &v18[6 * v17];
  v22[2] = v21;
  v22[3] = v20;
  *(v22 + 2) = a1;
  v22[6] = a15;
  *v18 = v15 + 1;
  return (*(v19 + 8 * ((((((a4 ^ 0x488A) * a3 - 18560) | 0x4880) ^ 0x703F) * (v16 + 1420301865 < a2)) ^ a4)))();
}

void sub_1000AE6E0(uint64_t a1, uint64_t a2, int a3)
{
  if ((a3 ^ 0x6B7F7DDC) + ((2 * a3) & 0xD6FEB098) == 1803517404)
  {
    v3 = -371865839;
  }

  else
  {
    v3 = 371891401;
  }

  *(v4 + 20) = v3;
}

uint64_t sub_1000AE914@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = *(v7 + v10);
  v13 = v10 + v8;
  v14 = v10 - 1;
  *(a1 + v14) = *(&a6 + v14) ^ *(v6 + v14) ^ (-17 * v14) ^ v12 ^ *(v13 + 3) ^ 0x5F;
  return (*(v9 + 8 * ((14266 * (v14 == 0)) ^ v11)))();
}

uint64_t sub_1000AEA14@<X0>(uint64_t a1@<X8>)
{
  v8 = (((10407 * (v1 ^ 0x459E) - 39448) | 0x6303u) - 27512) & (v6 + 15);
  v9 = -a1 - v6;
  v11 = (v2 - a1) >= 0x10 && (v9 + v3 + v8 + 1) >= 0x10 && (v9 + v4 + v8 + 2) >= 0x10;
  v12 = v9 + v5 + v8 + 3;
  v14 = !v11 || v12 < 0x10;
  return (*(v7 + 8 * (v1 ^ (32 * v14))))();
}

uint64_t sub_1000AEAA0()
{
  v2 = STACK[0x338];
  *(v1 - 128) = LODWORD(STACK[0x330]) ^ 0x2B77A700;
  *(v1 - 132) = LODWORD(STACK[0x324]) ^ 0xBEEAD4FD;
  *(v1 - 140) = LODWORD(STACK[0x334]) ^ (v2 + 22261) ^ 0x5D284EED;
  *(v1 - 136) = LODWORD(STACK[0x328]) ^ 0x5030E219;
  return (*(v0 + 8 * v2))();
}

uint64_t sub_1000AF2B4(__n128 a1, uint64_t a2, int a3)
{
  v6.n128_u64[0] = (v3 + 13) & 0xF;
  v6.n128_u64[1] = (v3 + 12) & 0xF;
  v7.n128_u64[0] = (v3 + a3 - 72 - 1) & 0xF;
  v7.n128_u64[1] = (v3 + 10) & 0xF;
  v8.n128_u64[0] = (v3 + 9) & 0xF;
  v8.n128_u64[1] = v4 & 0xF ^ 0xCLL;
  v11.val[0].i64[0] = (v3 + 7) & 0xF;
  v11.val[0].i64[1] = (v3 + 6) & 0xF;
  v11.val[1].i64[0] = (v3 + 5) & 0xF;
  v11.val[1].i64[1] = (v3 + 4) & 0xF;
  v11.val[2].i64[0] = (v3 + 3) & 0xF;
  v11.val[2].i64[1] = (v3 + 2) & 0xF;
  v11.val[3].i64[0] = (v3 + 1) & 0xFLL;
  v11.val[3].i64[1] = v3 & 0xF;
  v9.n128_u64[0] = 0xEBEBEBEBEBEBEBEBLL;
  v9.n128_u64[1] = 0xEBEBEBEBEBEBEBEBLL;
  return (*(v5 + 8 * ((56666 * (a3 == -908629875)) ^ (a3 - 79062814))))((a3 - 79062856), (a3 - 1266750038) & 0x46CAEFBB, v3 - 16, (v3 & 0x10) - 16, (a3 - 1266750038) & 0x46CAEFBB ^ 0x8F80u, a1, v6, v7, v8, xmmword_100BC76B0, vqtbl4q_s8(v11, xmmword_100BC76B0), v9);
}

uint64_t sub_1000AF4F8@<X0>(int a1@<W8>)
{
  STACK[0x528] = v1;
  LODWORD(STACK[0x648]) = a1;
  return (*(v3 + 8 * v2))();
}

uint64_t sub_1000AF53C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v14 = *(v10 + v13);
  v15 = ((19 * (v12 ^ 0x3F65u)) ^ 0xFFFFFFFFFFFFC3CELL) + v13;
  *(a1 + v15) = *(a2 + v15) ^ *(&a9 + v15) ^ v14 ^ *(v11 + v15) ^ (-95 * v15);
  return (*(v9 + 8 * ((44133 * (v15 == 0)) ^ v12)))();
}

uint64_t sub_1000AF5A4@<X0>(uint64_t a1@<X0>, int a2@<W1>, unsigned int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v12 = *(v10 + 8);
  v13 = ((2 * (*(v12 + ((a1 + ((v8 + a6) << 32)) >> 30)) ^ a2)) << ~v9) | ((*(v12 + 4 * (v8 + a6)) ^ a3) >> v9);
  *(v12 + 4 * v8) = v13 - (a4 & (2 * v13)) + a3;
  return (*(v11 + 8 * (((v8 + 1 == v6) * a5) ^ v7)))();
}

uint64_t sub_1000AF60C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, unsigned int a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  v44 = (((v42 ^ 0x67) + 23) ^ 0x86) + v41;
  v45 = (v44 ^ 0xC5) & (2 * (v44 & 0xC6)) ^ v44 & 0xC6;
  v46 = STACK[0x2F8];
  v47 = a1 - 143012380 + LODWORD(STACK[0x2F4]) + 13 * ((a35 + LODWORD(STACK[0x30C]) + v43) % a8) + 11 * ((v44 ^ (2 * ((v44 ^ 0x45) & (2 * (v44 ^ 0x45)) & (4 * ((v44 ^ 0x45) & (2 * (v44 ^ 0x45)))) & (16 * ((v44 ^ 0x45) & (2 * (v44 ^ 0x45)) & (4 * v45) ^ v45)) ^ (v44 ^ 0x45) & (2 * (v44 ^ 0x45)) & (4 * v45) ^ v45))) ^ 0xC6) - 2093326157;
  v48 = v47 ^ v46 ^ ((v46 ^ 0x3AF136DC) - 358707265) ^ ((v46 ^ 0x634816CE) - 1289244755) ^ ((v46 ^ 0xA9D68970) + 2042179603) ^ ((v46 ^ 0xDFFFEFFF) + 261117598) ^ ((v47 ^ 0x3145230) + 2081157686) ^ ((v47 ^ 0x2EBED625) + 1369536033) ^ ((v47 ^ 0xD6B54450) - 1448418218) ^ ((v47 ^ 0x7BFF9FBF) + 81805243);
  v49 = v40 - LODWORD(STACK[0x300]) + LODWORD(STACK[0x3E4]) - 721447291 + (((v48 ^ 0x7241A6D3) - 1490545739) ^ ((v48 ^ 0xA943A9B0) + 2083134680) ^ ((v48 ^ 0x74721604) - 1592024220));
  v50 = *(&a40 + a32);
  v51 = v50 & v43;
  v52 = (2 * v51);
  v53 = ((2 * (v50 ^ 0x20025B2D)) ^ 0xE0DBC49C) & (v50 ^ 0x20025B2D) ^ (2 * (v50 ^ 0x20025B2D)) & 0xF06DE24E;
  v54 = v53 ^ 0x10242242;
  v55 = (v53 ^ 0xC049C00C) & (4 * (v52 & (v50 ^ 0x804F396B) ^ v51)) ^ v52 & (v50 ^ 0x804F396B) ^ v51;
  v56 = (v49 ^ 0x223373F3) - 1553660624;
  v57 = v50 ^ (2 * ((((4 * v54) ^ 0x41B78930) & v54 ^ (4 * v54) & 0x706DE240) & (16 * v55) ^ v55)) ^ v49 ^ ((v49 ^ 0xD65E3DAD) + 1460161394);
  v58 = *(&a40 + a29) - *(&a40 + a28) - 962662064 + (((v57 ^ v56 ^ ((v49 ^ 0x743B3883) - 177385888) ^ ((v49 ^ 0xFEFFFFFE) + 2141817123) ^ 0x93DF5073) - 1833850052) ^ ((v57 ^ v56 ^ ((v49 ^ 0x743B3883) - 177385888) ^ ((v49 ^ 0xFEFFFFFE) + 2141817123) ^ 0x9A1BD0B8) - 1686819855) ^ ((v57 ^ v56 ^ ((v49 ^ 0x743B3883) - 177385888) ^ ((v49 ^ 0xFEFFFFFE) + 2141817123) ^ 0x679AB08B) + 1727286212));
  v59 = (LODWORD(STACK[0x308]) ^ 0xC66FB573) & (2 * (STACK[0x308] & v43)) ^ STACK[0x308] & v43;
  v60 = ((2 * (LODWORD(STACK[0x308]) ^ 0x667ED777)) ^ 0x6C22DC28) & (LODWORD(STACK[0x308]) ^ 0x667ED777) ^ (2 * (LODWORD(STACK[0x308]) ^ 0x667ED777)) & 0xB6116E14;
  v61 = v60 ^ 0x92112214;
  LOBYTE(v60) = v60 & (4 * v59) ^ v59;
  LOBYTE(v59) = 4 * v61;
  v62 = ((4 * v61) ^ 0x5845B850) & v61;
  v68 = (((29 - LODWORD(STACK[0x30C])) ^ LODWORD(STACK[0x30C])) ^ ((LODWORD(STACK[0x30C]) ^ 0x62) + 1)) & 0x7F ^ 0x1D;
  v63 = LODWORD(STACK[0x2F4]) + LODWORD(STACK[0x2F8]) - v68 + 8 * v68 + 2051119473 + v58;
  v64 = v63 ^ LODWORD(STACK[0x308]) ^ ((v63 ^ 0xF9D7943) - 1298202309);
  LOBYTE(v63) = v63 ^ LOBYTE(STACK[0x308]) ^ ((v63 ^ 0x43) + 59) ^ ((v63 ^ 0x34) + 78) ^ ((v63 ^ 6) + 0x80) ^ ((v63 ^ 0xF7) - 113) ^ (2 * ((v59 & 0x10 ^ 0x10 ^ v62) & (16 * v60) ^ v60));
  v65 = LODWORD(STACK[0x31C]);
  v66 = ((LOBYTE(STACK[0x310]) - LOBYTE(STACK[0x314]) + v65 + ((((v63 ^ 0x92) + 104) ^ ((v63 ^ 0x15) - 31)) ^ ((v63 ^ 0x62) - 104)) - 70) & 1) == 0;
  return (*(a37 + 8 * ((14 * v66) ^ v42)))(v51, v52, (16 * v66), v65, v64, a31, v62, &a40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_1000AFBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  v15 = v11 < v13;
  v16 = v9 + 1;
  v17 = v9 + a8 < v11;
  if (v15 == v16 > v12)
  {
    v15 = v17;
  }

  return (*(v10 + 8 * (((((v8 + a6) | 0x4000) + ((v8 + a7) ^ v14)) * v15) ^ v8)))();
}

uint64_t sub_1000AFC44@<X0>(int a1@<W8>)
{
  v7 = v4 - 1;
  STACK[0x278] = v7;
  v8 = (v3 ^ 0x5F) & (2 * (v3 & 0x1F)) ^ v3 & 0x1F;
  v9 = ((2 * (v3 ^ 0x61)) ^ 0xFC) & (v3 ^ 0x61) ^ (2 * (v3 ^ 0x61)) & v2;
  *(v6 + v7) = (v3 ^ (2 * (((4 * v9) & 0x78 ^ 0x76 ^ ((4 * v9) ^ 0xF8) & v9) & (16 * ((v9 ^ 0x7C) & (4 * v8) ^ v8)) ^ (v9 ^ 0x7C) & (4 * v8) ^ v8)) ^ 0xA5) * (v3 + 48);
  return (*(v5 + 8 * ((59619 * (STACK[0x278] > v1)) ^ a1)))();
}

uint64_t sub_1000AFD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, uint64_t a13)
{
  a12 = v15 + 634647737 * (((&a11 | 0x8F1947DD) - (&a11 | 0x70E6B822) + 1894168610) ^ 0xE28F6821) - 1480098773;
  a11 = a4;
  a13 = v13;
  v16 = (*(v14 + 8 * (v15 + 41036)))(&a11);
  return (*(v14 + 8 * v15))(v16, 0);
}

uint64_t sub_1000AFDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, int a20, int a21, int a22, int a23)
{
  *(v25 - 132) = ((a23 ^ a8) + 1561953480) ^ a20;
  *(v25 - 128) = a19 ^ 0xB29FF6D1;
  *(v25 - 124) = a22 ^ 0x81152586;
  *(v25 - 120) = a21 ^ 0xC59A42FB;
  return (*(v24 + 8 * a23))(a1, a2, a3, a4, a5, a6, v23 ^ 0x71F7DBDFu);
}

uint64_t sub_1000AFE9C()
{
  v3 = 23958;
  atomic_compare_exchange_strong((*(v2 + 8 * (v0 - 21714)) - 1074833858), &v3, 0xA94EFu);
  return (*(v1 + 8 * (((v3 == 23958) * ((v0 + 12533) ^ 0x13E5)) ^ v0)))();
}

uint64_t sub_1000AFEF4@<X0>(uint64_t a1@<X8>)
{
  v10 = v8 - 1;
  *(a1 + v10) ^= *(v3 + (v10 & 0xF)) ^ *((v10 & 0xF) + v1 + 3) ^ ((v10 & 0xF) * v5) ^ *((v10 & 0xF) + v2 + 1);
  return (*(v9 + 8 * (((v10 == v6) * v7) ^ v4)))();
}

uint64_t sub_1000AFF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, __int16 a13, char a14, __int16 a15, char a16, int a17, int a18, char a19)
{
  v23 = 1012831759 * ((~(v22 - 152) & 0x4CE611EB | (v22 - 152) & 0xB319EE10) ^ 0x5C750761);
  *(v22 - 104) = v19 - v23 + 42792;
  *(v22 - 100) = (((((((v19 + 42827) | 4) + 1769130802) ^ v21) - 1769180152) ^ ((v21 ^ 0xA0AB7ECF) + 1599373617) ^ ((v21 ^ 0x200D505E ^ (v19 + 42827) ^ 0xA2BA) - 537735718)) - 129675808) ^ v23;
  *(v22 - 128) = a11;
  *(v22 - 120) = &a14;
  *(v22 - 152) = &a19;
  *(v22 - 144) = &a16;
  *(v22 - 112) = &a12;
  v24 = (*(v20 + 8 * (v19 ^ 0xD2D3)))(v22 - 152);
  return (*(v20 + 8 * ((19989 * (*(v22 - 136) == -371865839)) ^ v19)))(v24);
}

uint64_t sub_1000B01A0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(v7 - 212) = a4;
  v8 = (((((2 * v5) ^ 0xC6F0 ^ a4 ^ 0x6818) - 11362) ^ ((a4 ^ 0xF721) + 2271) ^ ((a4 ^ (((v5 - 29068) & 0xFFDF) + 21436)) + 23723)) - 19596);
  v9 = (v4 > 0xC4A1u) ^ (v8 < 0x3B5E);
  v10 = v8 < (v4 + 15198);
  if (v9)
  {
    v10 = v4 > 0xC4A1u;
  }

  return (*(v6 + 8 * ((193 * v10) ^ v5)))();
}

uint64_t sub_1000B0310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42)
{
  LODWORD(a27) = a42 ^ 0x165B4843;
  v43[592] = v43;
  v43[593] = a16;
  v43[595] = a14;
  v43[594] = a18;
  *(v45 - 152) = v42 - 906386353 * ((((v45 - 152) | 0x39C94913) + (~(v45 - 152) | 0xC636B6EC)) ^ 0x8C88436) + 16511;
  v43[596] = a13;
  (*(v44 + 8 * (v42 ^ 0xDDA8)))(v45 - 152);
  return (*(v44 + 8 * ((v42 + 4127) ^ v42)))(1077292784, 56815424, 1059540, 1077292788, 1076233252, 14203856, 2239712, 1074930196, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41);
}

uint64_t sub_1000B0450@<X0>(uint64_t a1@<X6>, int a2@<W7>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  HIDWORD(a12) = 0;
  HIDWORD(v161) = v12 ^ a2;
  v16 = a1 & 0xFFFFFFF3 ^ 0x9081228CLL;
  *(v15 - 144) = v16;
  v17 = *(a3 + v16);
  v18 = *(a8 + (v17 ^ 0x77));
  v19 = a1 & 0xFFFFFFFC ^ 0x9081228BLL;
  *(v15 - 160) = v19;
  LODWORD(v17) = v18 ^ v17;
  LODWORD(v159) = (v12 ^ a2) + 30823;
  v20 = v159 ^ 0x1Bu ^ *(a3 + v19);
  v21 = a1 & 0xFFFFFFF4 ^ 0x9081228BLL;
  *(v15 - 176) = v21;
  v22 = *(a9 + v20);
  v168 = a1 & 0xFFFFFFF0 ^ 0x9081228FLL;
  LODWORD(v21) = *(a9 + (*(a3 + v21) ^ 0x94));
  LODWORD(v20) = *(a9 + (*(a3 + v168) ^ 0x97));
  v23 = a1 & 0xFFFFFFF1 ^ 0x9081228ELL;
  *(v15 - 168) = v23;
  LODWORD(v17) = (v20 ^ 0xFFFFFE3F) & ((v17 << 24) ^ 0x5C196A52) | v20 & 0xAD;
  v172 = a1 & 0xFFFFFFF6 ^ 0x90812289;
  LODWORD(v20) = *(a7 + (*(a3 + v23) ^ 0x89)) << 8;
  v24 = *(a10 + (*(a3 + v172) ^ 0x54));
  v167 = a1 & 0xFFFFFFFA ^ 0x9081228DLL;
  LODWORD(v17) = (v17 ^ 0x4610D9C3) & (v20 ^ 0xFF9BADFF) | v20 & 0x4C00;
  v25 = *(a3 + v167) ^ 0x1BLL;
  v26 = a1 & 0xFFFFFFFD ^ 0x9081228ALL;
  *(v15 - 152) = v26;
  LODWORD(v21) = ((v24 << 16) ^ 0xB203533) & (v21 ^ 0xBFF35F2) | v21 & 0xCCCCCCCC;
  v173 = a1 & 0xFFFFFFFE ^ 0x90812289;
  v169 = a1 ^ 0x90812288;
  v27 = *(a3 + v169);
  v28 = ((*(a7 + (*(a3 + v26) ^ 0x5ALL)) << 8) ^ 0xA6683E69) & (v22 ^ 0xEE7FFF3A) | v22 & 0x96;
  v170 = a1 & 0xFFFFFFF5 ^ 0x9081228ALL;
  v165 = a1 & 0xFFFFFFF7 ^ 0x90812288;
  v29 = (((((v27 ^ 0xA ^ *(a8 + (v27 ^ 0xD7))) << 24) ^ 0x84FFC43D) & ((*(a10 + (*(a3 + v173) ^ 0xE7)) << 16) ^ 0xB633C43D) | ((v27 ^ 0xA ^ *(a8 + (v27 ^ 0xD7))) << 24) & 0x49000000) ^ 0xB02939CF) & (v28 ^ 0x59979B13) ^ v28 & 0xA060020D;
  LODWORD(v26) = *(a7 + (*(a3 + v170) ^ 0x57)) << 8;
  LODWORD(v21) = (v26 ^ 0x6BFF08FF) & (v21 ^ 0x630EFD01) | v26 & 0x3700;
  v171 = a1 & 0xFFFFFFF8 ^ 0x9081228FLL;
  v162 = a1 & 0xFFFFFFF2 ^ 0x9081228DLL;
  v30 = *(a9 + (*(a3 + v171) ^ 0xDELL));
  v31 = (((*(a8 + (*(a3 + v165) ^ 0xFLL)) ^ *(a3 + v165)) << 24) ^ 0xFB8C650E) & (v21 ^ 0x97081D38) ^ v21 & 0x2A739AF1;
  v32 = ((*(a10 + (*(a3 + v162) ^ 0xE7)) << 16) ^ 0x984E20A1) & (v17 ^ 0xBF609F1) ^ v17 & 0x6703DF5E;
  LODWORD(v25) = (v30 ^ 0x42FF8C10) & ((*(a10 + v25) << 16) ^ 0x42D08CD4) | v30 & 0x2B;
  v163 = a1 & 0xFFFFFFFB ^ 0x9081228CLL;
  LODWORD(v17) = *(a8 + (*(a3 + v163) ^ 0xEDLL)) ^ *(a3 + v163);
  v164 = a1 & 0xFFFFFFF9 ^ 0x9081228ELL;
  v33 = ((((v17 << 24) ^ 0xEFFFFFFF) & ((*(a7 + (*(a3 + v164) ^ 0x82)) << 8) ^ 0x30808A84) | (v17 << 24) & 0xCFFFFFFF) ^ 0x28C2731C) & (v25 ^ 0xBD857368);
  v34 = *(&off_1010A0B50 + v12 - 24364) - 1476198346;
  v35 = *(&off_1010A0B50 + (v12 ^ 0x791A)) - 45387606;
  HIDWORD(v160) = v31;
  v36 = v31 ^ 0x658A6366;
  v37 = *(&off_1010A0B50 + v12 - 23573) - 199178235;
  v38 = *(&off_1010A0B50 + (v12 ^ 0x6B62)) - 939757838;
  v39 = *&v35[4 * (BYTE2(v32) ^ 0xF2)] ^ *&v34[4 * (HIBYTE(v29) ^ 0x59)] ^ *&v37[4 * (((v31 ^ 0x6366) >> 8) ^ 0xFC)] ^ (v14 + *&v38[4 * (v30 ^ 0xE4)] * v13);
  v40 = v33 ^ v25 & 0x40BD0067;
  LODWORD(v25) = HIBYTE(v36) ^ BYTE1(v29) ^ BYTE2(v40) ^ *&v35[4 * (BYTE2(v40) ^ 0x88)] ^ *&v37[4 * (BYTE1(v29) ^ 0x58)] ^ *&v34[4 * (HIBYTE(v36) ^ 0x9E)] ^ (v14 + *&v38[4 * (v32 ^ 0x6C)] * v13);
  v41 = (v25 & 0x364EBA05 ^ 0xD1D8A8C3) & (v25 & 0xC9B145FA ^ 0x7F7EFE85) | v25 & 0x8214538;
  v42 = BYTE2(v36) ^ 0x7CC94724 ^ *&v35[4 * (BYTE2(v36) ^ 0x8E)];
  LODWORD(v27) = *&v34[4 * (HIBYTE(v32) ^ 0x4D)];
  v43 = HIBYTE(v32) ^ 0x2B581C4E ^ v27;
  v166 = *(v15 - 116) < 0x26587D92u;
  if ((v42 & 0x40000000 & v27) != 0)
  {
    v44 = -(v42 & 0x40000000);
  }

  else
  {
    v44 = v42 & 0x40000000;
  }

  LODWORD(v161) = v29;
  HIDWORD(v159) = v40;
  v45 = v42 & 0xBFFFFFFF ^ *&v37[4 * (BYTE1(v33) ^ 0xCD)] ^ (v14 + *&v38[4 * (v22 ^ 0xB9)] * v13) ^ (v44 + v43);
  v46 = (BYTE2(v29) ^ BYTE1(v32)) ^ *&v35[4 * (BYTE2(v29) ^ 0x34)] ^ *&v34[4 * (HIBYTE(v40) ^ 0x52)] ^ HIBYTE(v40) ^ *&v37[4 * (BYTE1(v32) ^ 0xD4)] ^ 0xB3F54442;
  v47 = HIBYTE(v39);
  v48 = v46 ^ (v14 + *&v38[4 * (v31 ^ 0x66)] * v13);
  v49 = *&v35[4 * (BYTE2(v45) ^ 0x25)] ^ *&v34[4 * (HIBYTE(v39) ^ 0x77)] ^ (v14 + *&v38[4 * (v46 ^ (v14 + v38[4 * (v31 ^ 0x66)] * v13))] * v13);
  v50 = v41 ^ 0x69459AC7;
  v51 = v49 ^ *&v37[4 * (((v41 ^ 0x9AC7) >> 8) ^ 0xFC)];
  v52 = HIWORD(v45) ^ ((v41 ^ 0x69459AC7u) >> 8);
  v53 = (BYTE2(v48) ^ BYTE1(v39)) ^ HIBYTE(v50) ^ *&v35[4 * (BYTE2(v48) ^ 0x8E)] ^ *&v37[4 * (BYTE1(v39) ^ 0xE)] ^ 0x9CCB9F13 ^ *&v34[4 * (HIBYTE(v50) ^ 0x9E)];
  v54 = v14 + *&v38[4 * ((v45 ^ BYTE1(v33)) ^ 2)] * v13;
  v55 = v53 & 2;
  if ((v53 & 2 & v54) != 0)
  {
    v55 = -v55;
  }

  v56 = v55 + v54;
  LODWORD(v160) = v32;
  v57 = BYTE2(v39) ^ HIBYTE(v48) ^ *&v35[4 * (BYTE2(v39) ^ 0xE9)] ^ *&v34[4 * (HIBYTE(v48) ^ 0x9E)] ^ BYTE1(v45) ^ *&v37[4 * (BYTE1(v45) ^ 0x16)] ^ 0xFB6A5893 ^ (v14 + *&v38[4 * v50] * v13);
  v58 = HIBYTE(v45);
  v59 = *&v34[4 * (HIBYTE(v45) ^ 0x62)] ^ (BYTE1(v48) ^ BYTE2(v50)) ^ *&v37[4 * (BYTE1(v48) ^ 0xFC)] ^ (v14 + *&v38[4 * (HIBYTE(v29) ^ 0xC9 ^ (BYTE1(v36) ^ BYTE2(v32) ^ v39))] * v13) ^ *&v35[4 * (BYTE2(v50) ^ 0x8E)];
  v60 = v53 & 0xFFFFFFFD ^ 0xB6DB0769 ^ v56;
  v61 = *&v34[4 * (HIBYTE(v51) ^ 0xA8)] ^ HIBYTE(v51) ^ *&v35[4 * (BYTE2(v59) ^ 0x51)] ^ BYTE2(v59) ^ (v14 + *&v38[4 * v57] * v13) ^ *&v37[4 * (BYTE1(v60) - ((v60 >> 7) & 0x1F8)) + 1008] ^ BYTE1(v60);
  v62 = *&v35[4 * (BYTE2(v51) ^ 0x33)] ^ *&v37[4 * (BYTE1(v59) ^ 0x91)] ^ *&v34[4 * (HIBYTE(v57) ^ 0x9E)] ^ (v14 + *&v38[4 * (v53 & 0xFD ^ 0x69 ^ v56)] * v13);
  v63 = v47 ^ 0xE6 ^ (v51 ^ v52);
  v64 = (((v61 ^ 0x9CCB9F08) - (v61 ^ 0x8D59816B)) ^ 0xFFFFFFFE) + (v61 ^ 0x9CCB9F08);
  LOBYTE(v61) = BYTE2(v51) ^ BYTE1(v59);
  v65 = (BYTE1(v51) ^ BYTE2(v57)) ^ HIBYTE(v60) ^ *&v35[4 * (BYTE2(v57) ^ 0x8E)] ^ *&v37[4 * (BYTE1(v51) ^ 0x94)] ^ *&v34[4 * (HIBYTE(v60) ^ 0x9E)] ^ (v14 + *&v38[4 * (v58 ^ 0xE2 ^ v59)] * v13) ^ 0x70822E8E;
  v66 = HIBYTE(v59) ^ *&v34[4 * (HIBYTE(v59) ^ 0xAC)] ^ (BYTE1(v57) ^ BYTE2(v60)) ^ *&v37[4 * (BYTE1(v57) ^ 0xFC)] ^ *&v35[4 * (BYTE2(v60) ^ 0x8E)] ^ (v14 + *&v38[4 * v63] * v13) ^ 0xB9371BD4;
  v67 = HIBYTE(v64);
  v68 = *&v35[4 * (BYTE2(v66) ^ 0x8E)] ^ *&v37[4 * (BYTE1(v65) ^ 0xFC)] ^ *&v34[4 * (HIBYTE(v64) ^ 0x9E)] ^ (v14 + *&v38[4 * (HIBYTE(v57) ^ 0x1A ^ (v61 ^ v62))] * v13);
  v69 = *&v35[4 * (BYTE2(v64) ^ 0x8E)] ^ *&v34[4 * (HIBYTE(v62) ^ 0xF2)] ^ *&v37[4 * (BYTE1(v66) ^ 0xFC)] ^ (v14 + *&v38[4 * v65] * v13);
  v70 = HIBYTE(v65);
  v71 = *&v34[4 * (HIBYTE(v65) ^ 0x9E)] ^ (BYTE2(v62) ^ BYTE1(v64)) ^ *&v35[4 * (BYTE2(v62) ^ 0xA1)] ^ (v14 + *&v38[4 * v66] * v13) ^ *&v37[4 * (BYTE1(v64) ^ 0xFC)];
  v72 = BYTE2(v66) ^ BYTE1(v65);
  v73 = (BYTE1(v62) ^ BYTE2(v65)) ^ HIBYTE(v66) ^ *&v34[4 * (HIBYTE(v66) ^ 0x9E)] ^ *&v35[4 * (BYTE2(v65) ^ 0x8E)] ^ *&v37[4 * (BYTE1(v62) ^ 0x22)] ^ 0x684DDBAE ^ (v14 + *&v38[4 * (v64 ^ 0xA2)] * v13);
  v74 = HIBYTE(v62) ^ 0xF6 ^ (BYTE1(v66) ^ BYTE2(v64) ^ v69);
  v75 = *&v35[4 * (BYTE2(v68) ^ 0x6E)] ^ *&v34[4 * (HIBYTE(v69) ^ 0xDE)] ^ *&v37[4 * (BYTE1(v73) ^ 0xFC)] ^ (v14 + *&v38[4 * (v70 ^ 0x73 ^ v71)] * v13);
  v76 = HIBYTE(v69) ^ BYTE2(v68) ^ BYTE1(v73);
  v77 = v67 ^ 0xC5 ^ (v72 ^ v68);
  v78 = HIBYTE(v68) ^ BYTE1(v71) ^ *&v34[4 * (HIBYTE(v68) ^ 0xCB)] ^ *&v37[4 * (BYTE1(v71) ^ 0xE2)] ^ *&v35[4 * (BYTE2(v73) ^ 0x8E)] ^ (v14 + *&v38[4 * v74] * v13);
  v79 = (BYTE1(v68) ^ BYTE2(v69)) ^ HIBYTE(v71) ^ *&v35[4 * BYTE2(v69)] ^ *&v34[4 * (HIBYTE(v71) ^ 0x23)] ^ *&v37[4 * (BYTE1(v68) ^ 0x26)] ^ 0x5C23415F ^ (v14 + *&v38[4 * v73] * v13);
  v80 = *&v34[4 * (HIBYTE(v73) ^ 0x9E)] ^ (BYTE2(v71) ^ BYTE1(v69)) ^ *&v35[4 * (BYTE2(v71) ^ 0xDB)] ^ *&v37[4 * (BYTE1(v69) ^ 0x4D)] ^ (v14 + *&v38[4 * v77] * v13);
  v81 = v78 ^ 0x54FF9C87;
  v82 = *&v34[4 * (HIBYTE(v79) ^ 0x9E)] ^ (((v78 ^ 0x9C87) >> 8) ^ BYTE2(v75)) ^ *&v35[4 * (BYTE2(v75) ^ 0x18)] ^ *&v37[4 * (((v78 ^ 0x9C87) >> 8) ^ 0xFC)] ^ (v14 + *&v38[4 * (HIBYTE(v73) ^ 0xB8 ^ v80)] * v13);
  v83 = ((v78 ^ 0x54FF9C87u) >> 24) ^ *&v34[4 * (((v78 ^ 0x54FF9C87u) >> 24) ^ 0x9E)] ^ *&v35[4 * (BYTE2(v80) ^ 0x6E)] ^ *&v37[4 * (BYTE1(v79) ^ 0xFC)] ^ BYTE1(v79) ^ BYTE2(v80) ^ 0xFFA9EBAE ^ (v14 + *&v38[4 * ((v76 ^ v75) ^ 0x2D) + 652 + 4 * ((2 * (v76 ^ v75)) & 0x144 ^ 0xFFFFFFBF)] * v13);
  v84 = HIBYTE(v75) ^ BYTE2(v81) ^ BYTE1(v80) ^ *&v34[4 * (HIBYTE(v75) ^ 0x2A)] ^ *&v35[4 * (BYTE2(v81) ^ 0x8E)] ^ *&v37[4 * (BYTE1(v80) ^ 0xD7)] ^ 0x4191F70C ^ (v14 + *&v38[4 * v79] * v13);
  v85 = HIBYTE(v80);
  v86 = *&v34[4 * (HIBYTE(v80) ^ 0xEA)] ^ (BYTE1(v75) ^ BYTE2(v79)) ^ *&v35[4 * (BYTE2(v79) ^ 0x8E)] ^ *&v37[4 * (BYTE1(v75) ^ 0x79)] ^ (v14 + *&v38[4 * (v81 ^ BYTE2(v73))] * v13);
  v87 = HIBYTE(v83);
  v88 = *&v35[4 * (BYTE2(v86) ^ 0xB5)] ^ *&v37[4 * (BYTE1(v82) ^ 0xD6)] ^ *&v34[4 * (HIBYTE(v83) ^ 0x9E)] ^ (v14 + *&v38[4 * v84] * v13);
  v89 = HIBYTE(v79) ^ v82;
  v90 = *&v34[4 * (HIBYTE(v82) ^ 0xD7)] ^ (BYTE2(v84) ^ BYTE1(v83)) ^ *&v35[4 * (BYTE2(v84) ^ 0x8E)] ^ *&v37[4 * (BYTE1(v83) ^ 0xFC)] ^ (v14 + *&v38[4 * (v85 ^ 0x6B ^ v86)] * v13);
  v91 = HIBYTE(v84) ^ (BYTE1(v86) ^ BYTE2(v83)) ^ *&v34[4 * (HIBYTE(v84) ^ 0x9E)] ^ *&v37[4 * (BYTE1(v86) ^ 0x78)] ^ *&v35[4 * (BYTE2(v83) ^ 0x8E)] ^ 0x1FC0F229 ^ (v14 + *&v38[4 * (v89 ^ 0x7F)] * v13);
  LOBYTE(v85) = BYTE2(v86) ^ BYTE1(v82);
  v92 = (BYTE2(v82) ^ BYTE1(v84)) ^ HIBYTE(v86) ^ *&v34[4 * (HIBYTE(v86) ^ 0x17)] ^ *&v35[4 * (BYTE2(v82) ^ 0xC3)] ^ *&v37[4 * (BYTE1(v84) ^ 0xFC)] ^ 0x618E40C7 ^ (v14 + *&v38[4 * v83] * v13);
  v93 = *&v35[4 * (BYTE2(v92) ^ 0x8E)] ^ *&v34[4 * (HIBYTE(v88) ^ 0x54)] ^ *&v37[4 * (BYTE1(v90) ^ 0xCF)] ^ (v14 + *&v38[4 * v91] * v13);
  v94 = HIBYTE(v90);
  v95 = *&v34[4 * (HIBYTE(v90) ^ 0x37)] ^ (((BYTE2(v91) - (BYTE2(v91) ^ 0x3DAA8924)) ^ 0xFFFFFFF8) + BYTE2(v91)) ^ *&v35[4 * (BYTE2(v91) ^ 0x8E)] ^ *&v37[4 * (BYTE1(v88) ^ 0xD5)] ^ (v14 + *&v38[4 * v92] * v13);
  v96 = v87 ^ 0xA1 ^ (v85 ^ v88);
  LOBYTE(v85) = BYTE1(v90) ^ BYTE2(v92);
  v97 = HIBYTE(v92);
  v98 = *&v35[4 * (BYTE2(v90) ^ 0xAA)] ^ *&v37[4 * (BYTE1(v91) ^ 0xFC)] ^ *&v34[4 * (HIBYTE(v92) ^ 0x9E)] ^ (v14 + *&v38[4 * v96] * v13);
  LOBYTE(v89) = BYTE2(v90) ^ BYTE1(v91);
  v99 = BYTE2(v88) ^ ((-HIBYTE(v91) ^ (64962103 - (HIBYTE(v91) ^ 0x3DF3E37)) ^ (HIBYTE(v91) - 4 * (v91 >> 25) - 141784322) ^ 0xF78C8AFE) + 64962103) ^ *&v34[4 * (HIBYTE(v91) ^ 0x9E)] ^ *&v35[4 * (BYTE2(v88) ^ 0x1B)] ^ *&v37[4 * (BYTE1(v92) ^ 0xFC)] ^ BYTE1(v92) ^ (v14 + *&v38[4 * (HIBYTE(v82) ^ 0x43 ^ v90)] * v13) ^ 0x77720BCF;
  v100 = *&v34[4 * (HIBYTE(v93) ^ 0xCA)] ^ HIBYTE(v93) ^ BYTE1(v95) ^ *&v35[4 * (BYTE2(v98) ^ 0xDC)] ^ *&v37[4 * (BYTE1(v95) ^ 0x5A)] ^ BYTE2(v98) ^ (v14 + *&v38[4 * ((BYTE2(v88) ^ ((-HIBYTE(v91) ^ (55 - (HIBYTE(v91) ^ 0x37)) ^ (HIBYTE(v91) - 4 * (v91 >> 25) - 2) ^ 0xFE) + 55) ^ v34[4 * (HIBYTE(v91) ^ 0x9E)] ^ v35[4 * (BYTE2(v88) ^ 0x1B)] ^ v37[4 * (BYTE1(v92) ^ 0xFC)] ^ BYTE1(v92) ^ (v14 + v38[4 * (HIBYTE(v82) ^ 0x43 ^ v90)] * v13)) ^ 0xCF)] * v13);
  v101 = BYTE2(v93) ^ 0xEE;
  v102 = HIBYTE(v99);
  v103 = *&v35[4 * (-v101 ^ (142 - (BYTE2(v93) ^ 0x60)) ^ 0x77BDAEFC ^ (v101 - ((2 * v101) & 0x1F8) + 2008919804)) + 568] ^ *&v34[4 * (HIBYTE(v99) ^ 0x9E)] ^ *&v37[4 * (BYTE1(v98) ^ 0x61)] ^ (v14 + *&v38[4 * (v94 ^ 0x73 ^ (v95 ^ BYTE1(v88)))] * v13);
  v104 = HIBYTE(v95);
  v105 = *&v35[4 * (BYTE2(v95) ^ 0x38)];
  v106 = *&v34[4 * (HIBYTE(v95) ^ 0xB4)] ^ (BYTE1(v93) ^ BYTE2(v99)) ^ *&v35[4 * (BYTE2(v99) ^ 0x8E)] ^ *&v37[4 * (BYTE1(v93) ^ 0xA1)] ^ (v14 + *&v38[4 * (v97 ^ 0x5D ^ (v89 ^ v98))] * v13);
  v107 = (BYTE2(v95) ^ BYTE1(v99)) ^ HIBYTE(v98) ^ *&v34[4 * (HIBYTE(v98) ^ 0xF7)] ^ v105 ^ *&v37[4 * (BYTE1(v99) ^ 0xFC)] ^ 0xFBD91525 ^ (v14 + *&v38[4 * (HIBYTE(v88) ^ 0xBC ^ (v85 ^ v93))] * v13);
  v108 = v100 ^ 0xDF;
  v109 = *(&off_1010A0B50 + v12 - 26626) - 838518610;
  v110 = *&v109[4 * ((v100 ^ 0xADB070DF) >> 24)];
  v111 = *&v109[4 * (HIBYTE(v103) ^ 0xA5)];
  v112 = *&v109[4 * (HIBYTE(v106) ^ 0xE6)];
  v113 = *&v109[4 * HIBYTE(v107)];
  v114 = *(&off_1010A0B50 + (v12 ^ 0x63B2)) - 316868158;
  v115 = *&v114[4 * BYTE2(v107)];
  v116 = *&v114[4 * ((v100 ^ 0xADB070DF) >> 16)];
  v117 = *&v114[4 * (BYTE2(v103) ^ 0xD4)];
  v118 = *&v114[4 * (BYTE2(v106) ^ 0x26)];
  v119 = *(&off_1010A0B50 + (v12 ^ 0x6BA4)) - 1881155258;
  LODWORD(v114) = *&v119[4 * (BYTE1(v106) ^ 0xBD)];
  v120 = *&v119[4 * BYTE1(v107)];
  v121 = *&v119[4 * ((v100 ^ 0x70DF) >> 8)];
  v122 = v101 ^ v102 ^ 0xE1;
  v123 = *(&off_1010A0B50 + v12 - 25718) - 1816016742;
  v124 = *&v123[4 * (v122 ^ (v103 ^ BYTE1(v98)))];
  v125 = *&v123[4 * (v104 ^ 0x99 ^ v106)];
  v126 = *&v123[4 * v107];
  v127 = v118 ^ *(v15 - 132) ^ v113 ^ 0x8D107FE0 ^ (2 * (v113 ^ 0x8D107FE0) * (v113 ^ 0x8D107FE0)) ^ *&v123[4 * (v108 ^ 0x69)] ^ (1937754763 * *&v119[4 * (BYTE1(v103) ^ 0xCF)] + 2095840674);
  v128 = *(&off_1010A0B50 + (v12 ^ 0x6AA8)) - 448744854;
  *(a3 + v168) = v128[v127 ^ 0x4DLL] ^ v127 ^ 0x83;
  v129 = (((v111 ^ 0xE79858B2) - (v111 ^ 0x8D107FE0)) ^ 0xFFFFFFFC) + (v111 ^ 0xE79858B2);
  v130 = v125 ^ v116 ^ (1937754763 * v120 + 2095840674) ^ v129 ^ (2 * v129 * v129);
  v131 = ((((v130 ^ 0x4E60CBA5) - (v130 ^ 0x7C084B48)) ^ 0xFFFFFFFE) + (v130 ^ 0x4E60CBA5)) ^ *(v15 - 128);
  v132 = *(&off_1010A0B50 + v12 - 24908) - 1070306026;
  *(a3 + v167) = v132[BYTE2(v131) ^ 0x79] ^ (((4 * v132[BYTE2(v131) ^ 0x79]) ^ 0xB4) - 84) ^ 0xCC;
  *(a3 + v162) = v132[BYTE2(v127) ^ 0x81] ^ (((4 * v132[BYTE2(v127) ^ 0x81]) ^ 0xB4) - 84) ^ 0xFD;
  v133 = v110 ^ 0x8D107FE0 ^ *(v15 - 124) ^ v115 ^ (2 * (v110 ^ 0x8D107FE0) * (v110 ^ 0x8D107FE0)) ^ v124 ^ (1937754763 * v114 + 2095840674);
  v134 = *(&off_1010A0B50 + (v12 ^ 0x6E23)) - 272708163;
  LOBYTE(v114) = v134[HIBYTE(v133) ^ 0x7ELL];
  *(a3 + v169) = v114 ^ 0x5D ^ (56 * (v114 ^ 0x1E));
  v135 = v117 ^ *(v15 - 120) ^ v112 ^ 0x8D107FE0 ^ (2 * (v112 ^ 0x8D107FE0) * (v112 ^ 0x8D107FE0)) ^ v126 ^ (1937754763 * v121 + 2095840674);
  LOBYTE(v114) = v134[HIBYTE(v135) ^ 0x6BLL];
  *(a3 + v165) = v114 ^ (56 * (v114 ^ 0x1E)) ^ 0x83;
  v136 = v132[BYTE2(v135) ^ 0xBALL];
  v137 = v136 ^ 0xA7;
  if (v133 == 46)
  {
    v137 = 117;
  }

  *(a3 + v172) = v136 ^ (((4 * ((v137 & 0x26 | v136 & 1) ^ (v137 ^ 0xB) & (v136 ^ 0xB))) ^ 0xC) - 84) ^ 0xDF;
  v138 = v134[HIBYTE(v131) ^ 0x7BLL];
  *(a3 + v163) = v138 ^ (56 * (v138 ^ 0x1E)) ^ 0x78;
  v139 = *(&off_1010A0B50 + (v12 ^ 0x66AB)) - 1554859387;
  *(a3 + v170) = (-49 - 113 * v139[BYTE1(v135) ^ 0x7BLL]) ^ 0x10;
  *(a3 + *(v15 - 176)) = v135 ^ 0x59 ^ v128[v135 ^ 0x53];
  *(a3 + v164) = (-49 - 113 * v139[BYTE1(v131) ^ 0x67]) ^ 0xA;
  v140 = v128[v133 ^ 0x81];
  v141 = v133 ^ 0x93 ^ v140;
  v140 ^= 0x42u;
  v142 = (v140 - v141);
  *(a3 + *(v15 - 160)) = ((v133 ^ ((v133 ^ 0x2E) - ((2 * (v133 ^ 0x2E) + 2) & 0xA) - 122) ^ 0x54 ^ v142) + v140) ^ 0x69;
  *(a3 + *(v15 - 168)) = (-49 - 113 * v139[BYTE1(v127) ^ 6]) ^ 0xB4;
  *(a3 + v173) = v132[BYTE2(v133) ^ 0x6BLL] ^ (((4 * v132[BYTE2(v133) ^ 0x6BLL]) ^ 0xB4) - 84) ^ 0x55;
  *(a3 + v171) = v131 ^ 0xD6 ^ v128[v131 ^ 0x3ALL];
  v143 = v134[HIBYTE(v127) ^ 0x49];
  *(a3 + *(v15 - 144)) = v143 ^ 0x56 ^ (56 * (v143 ^ 0x1E));
  v144 = v139[BYTE1(v133) ^ 0x64];
  v145 = (((a1 ^ 0xCF4AAC7F) + 817189761) ^ ((a1 ^ 0x5E5D127E) - 1583157886) ^ ((a1 ^ 0x1969C89) - 26647689)) - 1735827069;
  v146 = (v145 ^ 0xF7E7DD14) & (2 * (v145 & 0xF7F7C115)) ^ v145 & 0xF7F7C115;
  v147 = ((2 * (v145 ^ 0xB82F5D34)) ^ 0x9FB13842) & (v145 ^ 0xB82F5D34) ^ (2 * (v145 ^ 0xB82F5D34)) & 0x4FD89C20;
  v148 = v147 ^ 0x40488421;
  v149 = (v147 ^ 0xF900800) & (4 * v146) ^ v146;
  v150 = ((4 * v148) ^ 0x3F627084) & v148 ^ (4 * v148) & 0x4FD89C20;
  v151 = v149 ^ 0x4FD89C21 ^ (v150 ^ 0xF401000) & (16 * v149);
  v152 = (16 * (v150 ^ 0x40988C21)) & 0x4FD89C00 ^ 0x2501C21 ^ ((16 * (v150 ^ 0x40988C21)) ^ 0xFD89C210) & (v150 ^ 0x40988C21);
  v153 = (v151 << 8) & 0x4FD89C00 ^ v151 ^ ((v151 << 8) ^ 0xD89C2100) & v152;
  v154 = v145 ^ (2 * ((v153 << 16) & 0x4FD80000 ^ v153 ^ ((v153 << 16) ^ 0x1C210000) & ((v152 << 8) & 0x4FD80000 ^ 0x7400000 ^ ((v152 << 8) ^ 0x589C0000) & v152)));
  *(a3 + *(v15 - 152)) = (v144 - 113 - 50 * v144 + ((113 - v144) << 6)) ^ 0x64;
  v155 = (((v154 ^ 0xE972E342) + 1736099683) ^ ((v154 ^ 0xF6301497) + 2016948408) ^ ((v154 ^ 0xFE340E82) + 1882991267)) - 1227251686;
  v156 = v166 ^ (v155 < 0x26587D92);
  v157 = v155 < *(v15 - 116);
  if (v156)
  {
    v157 = v166;
  }

  return (*(a11 + 8 * ((4649 * v157) ^ v12)))(v142, v134, 38, 4294967247, 4294967183, 84, a1, 29965, a4, a5, a6, a7, a8, a9, a10, a11, a12, v159, v160, v161, v162, v163, v164, v165);
}

uint64_t sub_1000B1F20(double a1, __n128 a2)
{
  a2.n128_u16[0] = 10023;
  a2.n128_u8[2] = 39;
  a2.n128_u8[3] = 39;
  a2.n128_u8[4] = 39;
  a2.n128_u8[5] = 39;
  a2.n128_u8[6] = 39;
  a2.n128_u8[7] = 39;
  return (*(v5 + 8 * (v4 - 21045)))(v2 & 7, 8 - (v2 & 0x18), -v3, v2 + v6 - 8, 417, xmmword_100F523B0, a2);
}

uint64_t sub_1000B2084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, int a17)
{
  if ((((v17 ^ 0x7B66) - 1627672672) ^ a17) + ((2 * a17) & 0x3DF6B09A) == -1627660833)
  {
    v19 = 157686605;
  }

  else
  {
    v19 = 157644581;
  }

  return (*(v18 + 8 * ((55 * (a16 - ((a9 << (15 * (v17 ^ 0x9E) + 88)) & 0xE2F0CB6A) != 358478169)) ^ v17)))(a1, v19);
}

uint64_t sub_1000B2138(int a1, uint64_t a2, int a3, uint64_t a4)
{
  v9 = *v7;
  v10 = (a4 + (v6 + v4));
  *v10 = *(v7 - 1);
  v10[1] = v9;
  return (*(v8 + 8 * (((v5 != 0) * a3) ^ a1)))();
}

uint64_t sub_1000B2388(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v38 = v36 + 1500374624 + (((*(a36 + 88) ^ 0x77B76C51) - 2008509521) ^ ((*(a36 + 88) ^ 0x66320CB3) - 1714556083) ^ (((a1 - 10283) ^ 0xCF9E6D8 ^ *(a36 + 88)) - 217704094));
  *(a36 + 88) = v38 - ((2 * v38 + 637999878) & 0x3AF90CF8) - 796912641;
  return (*(v37 + 8 * a1))();
}

uint64_t sub_1000B250C@<X0>(int a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X8>, __n128 a6@<Q1>, int8x16_t a7@<Q4>, uint64_t a8@<D5>, int8x16_t a9@<Q6>)
{
  v17 = (a2 - 1) & 0xF;
  v18 = v12;
  v19.i64[0] = vqtbl4q_s8(*(&a6 - 1), a7).u64[0];
  v19.i64[1] = a8;
  v20 = vrev64q_s8(vmulq_s8(v19, a9));
  *(a5 + a2) = veorq_s8(veorq_s8(veorq_s8(*(v13 + v17 - 15), *(v11 + a2)), veorq_s8(*(v15 + v17 + 5 - 15), *(v14 + v17 + 5 - 15))), vextq_s8(v20, v20, 8uLL));
  return (*(v16 + 8 * (((a3 != 0) * a4) ^ a1)))();
}

uint64_t sub_1000B26C0(char a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int8x16_t a7, int8x8_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v25.val[0].i64[0] = (v23 + a3 - 1) & 0xF;
  v25.val[0].i64[1] = (v23 + a3 + 14) & 0xF;
  v25.val[1].i64[0] = (v23 + a3 + 13) & 0xF;
  v25.val[1].i64[1] = (v23 + a3 + 12) & 0xF;
  v25.val[2].i64[0] = (v23 + a3 + 11) & 0xF;
  v25.val[2].i64[1] = (v23 + a3 + a1 + 8) & 0xF;
  v25.val[3].i64[0] = (v23 + a3 + 9) & 0xF;
  v25.val[3].i64[1] = (v23 + a3) & 0xF ^ 8;
  *(a4 + v23) = veor_s8(veor_s8(veor_s8(*(v22 + v25.val[0].i64[0] - 7), *(a5 + v23)), veor_s8(*(v25.val[0].i64[0] + v20 - 5), *(v21 + v25.val[0].i64[0] - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v25, a7), a8)));
  return (*(a19 + 8 * (((v19 == a3) * a6) ^ a2)))();
}

uint64_t sub_1000B302C(uint64_t result)
{
  if (((*result ^ (193924789 * (((result | 0x1449EF26) - result + (result & 0xEBB610D9)) ^ 0xA2F2DD40))) - 626108830) >= 3)
  {
    v1 = 86;
  }

  else
  {
    v1 = 87;
  }

  *(result + 8) = v1;
  return result;
}

uint64_t sub_1000B308C()
{
  if (v3 == ((3 * (v1 ^ 0x1C05u)) ^ 0xFB9C4A74788C9A7CLL))
  {
    v4 = STACK[0x3E0];
  }

  else
  {
    v4 = 371891370;
  }

  return (*(v2 + 8 * (((v4 == v0) * (((v1 + 16956) | 0x2000) - 31722)) ^ v1)))();
}

uint64_t sub_1000B30F0(uint64_t a1, uint64_t a2, int a3)
{
  v8 = *(v6 + v4 * v7 + 36);
  v10 = v8 != a3 && (v8 + 1831617475) < 0x8000001A;
  return (*(v5 + 8 * ((v10 * ((v3 ^ 0xF30A) - 25420)) ^ v3)))();
}

uint64_t sub_1000B313C()
{
  v2 = (*(v1 + 8 * (v0 + 6621)))();
  *STACK[0x528] = v2;
  return (*(v1 + 8 * ((((v0 + 296766883) & 0xEE4F1DFC ^ ((v0 - 13904) | 2) ^ 0x61FE) * (v2 == 0)) ^ v0)))();
}

uint64_t sub_1000B3270()
{
  *v2 = 0;
  *v1 = -371865839;
  return (*(v3 + 8 * (v0 ^ 0x4CB8 ^ (((((*(v4 + 5) - v0) | (v0 - *(v4 + 5))) & 0x80) == 0) * ((v0 + 1502735870) & 0xA66E5EB6 ^ (v0 + 343503836) & 0xEB86ED33 ^ 0xA2BE)))))();
}

void sub_1000B32F8(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 16) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *a1 ^ (1112314453 * ((a1 - 2 * (a1 & 0xD39357BA) - 745318470) ^ 0x3CC57D63));
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1000B3408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24)
{
  LODWORD(a15) = a24 - 9457;
  LODWORD(a11) = a24 + 1497638134;
  HIDWORD(v27) = a24 + 15966;
  LODWORD(v27) = a24 - 15578;
  HIDWORD(v30) = a24 - 490439260;
  LODWORD(v30) = a24 + 17079;
  HIDWORD(v29) = a24 - 13108;
  LODWORD(v29) = a24 - 13156;
  HIDWORD(v28) = a24 ^ 0x744B;
  LODWORD(v28) = a24 - 26178;
  return (*(v24 + 8 * (v25 ^ 0x47E3 ^ (7 * (v25 ^ 0x1BC1)))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, v27, a11, v28, v29, v30, a15, a16);
}

uint64_t sub_1000B36CC@<X0>(int a1@<W8>)
{
  v5 = *(v3 + 8 * (a1 | (4 * ((v1 ^ 0x964F14B6 ^ (a1 ^ 0x648Eu)) >= ((a1 + 30286) ^ 0x9FF7uLL)))));
  STACK[0x440] = v2;
  STACK[0x450] = v4;
  return v5(0x18BDF6F3D659C9FELL, 0xC7B84D5584632BB3, 0x784FBA2FAF983AE6, 0x320DA44F691A6545);
}

uint64_t sub_1000B3ADC@<X0>(uint64_t a1@<X3>, uint64_t a2@<X5>, int a3@<W6>, uint64_t a4@<X8>)
{
  v11 = (a4 + v5 + a1 + v8);
  *v11 = v10;
  v11[1] = v10;
  return (*(v9 + 8 * ((((v7 ^ a2) + v5 == v6) * a3) ^ v4)))();
}

uint64_t sub_1000B3F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33)
{
  v37 = v34 + 26;
  v38 = a33 + (((v35 ^ 0x50243DEF) - 730155990) ^ ((v35 ^ 0xF55921FD) + 1896327228) ^ (((((v37 - 2211) | 0x330A) + 923351596) ^ v35) - 1286134531));
  v39 = v33 - 869031166;
  v40 = (v39 < 0xCC725DD0) ^ (v38 < 0xCC725DD0);
  v41 = v38 > v39;
  if (v40)
  {
    v41 = v38 < 0xCC725DD0;
  }

  return (*(v36 + 8 * ((56133 * v41) ^ v37)))();
}

uint64_t sub_1000B402C()
{
  v5 = v3 < 0x488AC31F;
  *(v2 + v1) = 0;
  if (v5 == (v1 + 1) > 0xFFFFFFFFB7753CE0)
  {
    v5 = v1 + 1217053472 < v3;
  }

  return (*(v4 + 8 * ((!v5 * (v0 ^ 0xA70F)) ^ v0)))();
}

uint64_t sub_1000B40E4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unsigned __int8 a6)
{
  v14 = ((a4 ^ a6) + 64 + v11) & 0xF;
  v16 = (v10 - *(v13 - 184)) >= 0x10 && (v6 + v9 - v11 + v14 + 1) >= 0x10 && (v6 + v7 - v11 + v14 + 3) >= 0x10;
  v17 = v6 + v8 - v11 + v14 + 2;
  v19 = !v16 || v17 < 0x10;
  return (*(v12 + 8 * ((45 * v19) ^ a4)))(a1, a2, v11);
}

uint64_t sub_1000B41B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, char a16, char a17, char a18, char a19, char a20, char a21, char a22, char a23, char a24, char a25, char a26, char a27, char a28, char a29, char a30, char a31, char a32, char a33, char a34, char a35, char a36, char a37, char a38, char a39, char a40, char a41, char a42, char a43, char a44, char a45, char a46)
{
  v48 = *(&off_1010A0B50 + v46 - 12503);
  v49 = *(v48 - 1659962195);
  a16 = 109 * *v49 - 36;
  a17 = 109 * v49[1] - 36;
  a18 = 109 * v49[2] - 36;
  a19 = v49[3] * (v46 + 58 + ((v46 + 3) & 0xEC) - 53) - 36;
  a20 = 109 * v49[4] - 36;
  a21 = 109 * v49[5] - 36;
  a22 = 109 * v49[6] - 36;
  a23 = 109 * v49[7] - 36;
  a24 = 109 * v49[8] - 36;
  a25 = 109 * v49[9] - 36;
  a26 = 109 * v49[10] - 36;
  a27 = 109 * v49[11] - 36;
  a28 = 109 * v49[12] - 36;
  a29 = 109 * v49[13] - 36;
  a30 = 109 * v49[14] - 36;
  a31 = 109 * v49[15] - 36;
  a32 = 109 * v49[16] - 36;
  v50 = *(v48 - 1659962195);
  a33 = 109 * v50[17] - 36;
  a34 = 109 * v50[18] - 36;
  a35 = 109 * v50[19] - 36;
  a36 = 109 * v50[20] - 36;
  a37 = 109 * v50[21] - 36;
  a38 = 109 * v50[22] - 36;
  a39 = 109 * v50[23] - 36;
  a40 = 109 * v50[24] - 36;
  a41 = 109 * v50[25] - 36;
  a42 = 109 * v50[26] - 36;
  a43 = 109 * v50[27] - 36;
  a44 = 109 * v50[28] - 36;
  a45 = 109 * v50[29] - 36;
  a46 = 109 * v50[30] - 36;
  v51 = (*(v47 + 8 * (v46 + 36590)))(&a16);
  return (*(v47 + 8 * ((126 * (v51 != 0)) ^ v46)))(v51, v51, v52, v53, v54, v55, v56, v57, a9, a10);
}

uint64_t sub_1000B43C8@<X0>(int a1@<W8>)
{
  *(*(v8 + 8) + 4 * (v7 + v3)) = *(*(v8 + 8) + 4 * (a1 + v7));
  v10 = v7 + v5 < v2;
  if (v2 < v4 != v7 + v5 < v4)
  {
    v10 = v2 < v4;
  }

  return (*(v9 + 8 * ((v10 * v6) ^ v1)))();
}

uint64_t sub_1000B4500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v22 = ((((4 * v20) ^ 0x1D964) - 1041664337) ^ a3) & (2 * (a3 & 0xE5CD1444)) ^ a3 & 0xE5CD1444;
  v23 = (a3 ^ 0x34461FA280EBBC6FLL) << (3 * (v20 ^ 0xBAu) + 90);
  v24 = (v23 ^ 0xCA4D5056) & (a3 ^ 0x80EBBC6F) ^ v23 & 0x6526A82A;
  LODWORD(v23) = v24 ^ 0x2522A829;
  v25 = (v24 ^ 0x40000) & (4 * v22) ^ v22;
  v26 = ((4 * v23) ^ 0x949AA0AC) & v23 ^ (4 * v23) & 0x6526A828;
  v27 = (v26 ^ 0x402A020) & (16 * v25) ^ v25;
  v28 = ((16 * (v26 ^ 0x61240803)) ^ 0x526A82B0) & (v26 ^ 0x61240803) ^ (16 * (v26 ^ 0x61240803)) & 0x6526A820;
  v29 = a3 ^ (2 * ((((v28 ^ 0x2504280B) << 8) & 0x65260000 ^ 0x24200000 ^ (((v28 ^ 0x2504280B) << 8) ^ 0x26A80000) & (v28 ^ 0x2504280B)) & (((v28 ^ 0x40228000) & (v27 << 8) ^ v27) << 16) ^ (v28 ^ 0x40228000) & (v27 << 8) ^ v27));
  *(a18 + 4 * v19) = (((v29 ^ 0x58540458) - 1007339123) ^ ((v29 ^ 0xC4CED277) + 1601171364) ^ ((v29 ^ 0x7957C26B) - 487129152)) - 1323033332;
  v30 = ((((v21 + 596562591) ^ 0x345C2652) - 1933673232) ^ (v21 + 596562591) ^ (((v21 + 596562591) ^ 0x4916606F) - 235652397) ^ (((v21 + 596562591) ^ 0x61A81CC0) - 649443714) ^ (((v21 + 596562591) ^ 0x5BFFFFBF) - 484596477)) == 1193125186;
  return (*(v18 + 8 * (v20 ^ (v30 | (v30 << 6)))))();
}

void sub_1000B4810(_DWORD *a1)
{
  v1 = *a1 ^ (297845113 * ((2 * (a1 & 0x5B860543) - a1 - 1535509828) ^ 0xD34AE622));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000B493C@<X0>(void *a1@<X0>, int a2@<W1>, unsigned int *a3@<X8>)
{
  v9 = a2 ^ 0xCB24BF0A;
  v10 = a1[1];
  v11 = a1[4];
  v12 = a1[5];
  *a3 = v9;
  *v11 = v5;
  *v12 = v7;
  *v10 = v4 + v6;
  return (*(v3 + 8 * v8))();
}

uint64_t sub_1000B49C4@<X0>(unsigned int a1@<W1>, uint64_t a2@<X8>)
{
  v10 = v7 < a1;
  *(a2 + v8) = *(v5 + (v8 & 0xF)) ^ *(v2 + v8) ^ *(v3 + (v8 & 0xF)) ^ (63 * (v8 & 0xF)) ^ *(v4 + (v8 & 0xF));
  if (v10 == v8 + 1 > 0x6F657184)
  {
    v10 = v8 - 1868919172 < v7;
  }

  return (*(v9 + 8 * ((!v10 * (v6 - 12126)) ^ v6)))((v6 + 29886));
}

uint64_t sub_1000B4C4C()
{
  v2 = STACK[0x2B8];
  LOWORD(STACK[0xB1E]) = v0;
  return (*(v1 + 8 * (v2 - 17743)))();
}

uint64_t sub_1000B4C84()
{
  v2 = STACK[0x2B8] - 22549;
  LOWORD(STACK[0xB1C]) = v0;
  return (*(v1 + 8 * (v2 ^ 0x1FFE)))();
}

uint64_t sub_1000B4D4C()
{
  v4 = ((v1 ^ 0xE120F3F294C8F1D2) + 0x1EDF0C0D6B36AF7DLL + ((v2 - 208052816) & 0xC66DEF3)) ^ ((v1 ^ 0xC6203503973AF8B7) + 0x39DFCAFC68C50749) ^ ((v1 ^ 0x2700C6F1EA27C8CALL ^ ((v2 - 7013) | 0x16u)) - 0x2700C6F1EA27CE74);
  STACK[0xBD8] = v4 + 0x6F329C97745F8C3DLL;
  STACK[0xBE0] = v0;
  return (*(v3 + 8 * ((3633 * (v4 - v0 + 3923101447u < 0xFFFFFFFFFFFFFFF6)) ^ (v2 + 17689))))();
}

uint64_t sub_1000B4E58()
{
  v6 = 1012831759 * ((((2 * (v5 - 144)) | 0x623582EA) - (v5 - 144) + 1323646603) ^ 0xA189D7FF);
  *(v5 - 128) = v2;
  *(v5 - 120) = v3;
  *(v5 - 144) = v1 + v6 - 687716854 + v4 - 19849;
  *(v5 - 140) = v6 + v4 + 3848;
  v7 = (*(v0 + 8 * (v4 ^ 0xBBDF)))(v5 - 144);
  return (*(v0 + 8 * v4))(v7);
}

uint64_t sub_1000B4FBC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v8 = (a3 + v5);
  *v8 = a4;
  v8[1] = a4;
  return (*(v7 + 8 * (((a1 + v5 != v4) * a2) ^ v6)))();
}

uint64_t sub_1000B5084()
{
  v2 = (*(v1 + 8 * (v0 + 2263)))(((v0 ^ 0x9159) - 371890553 + 26 * (v0 ^ 0xC15Cu)) ^ LODWORD(STACK[0xA90]));
  v3 = STACK[0x408];
  STACK[0xC18] = v2;
  if (v2)
  {
    v4 = -371865839;
  }

  else
  {
    v4 = 371891397;
  }

  LODWORD(STACK[0xC24]) = v4;
  return (*(v3 + 8 * (((v2 != 0) | (32 * (v2 != 0))) ^ v0)))();
}

uint64_t sub_1000B5104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  *(a3 + 200) = *(a3 + 224);
  LODWORD(STACK[0x334]) = a9;
  LODWORD(STACK[0x244]) = 1218627815;
  return (*(v35 + 8 * v34))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t sub_1000B5144()
{
  v5 = 81 * (v2 ^ 0x8DB7u) + v0 - 725;
  STACK[0x470] = v5;
  if (v5 > v3)
  {
    v1 = 371891407;
  }

  LODWORD(STACK[0x47C]) = v1;
  return (*(v4 + 8 * ((124 * ((((29 * (v2 ^ 0x899C)) ^ (v1 == -371865839)) & 1) == 0)) ^ v2)))();
}

uint64_t sub_1000B531C@<X0>(int a1@<W0>, unint64_t a2@<X8>)
{
  v7 = a2 + v5;
  v8 = (a1 - 36252) & (v5 + 15);
  v9 = v8 - v5 + 1;
  v10 = v3 + v9;
  v11 = (a1 - 518429788) - 3776573774 + v8;
  v12 = v3 + v11;
  v13 = v2 + v9;
  v14 = v2 + v11;
  v15 = v8 + v4 + 3;
  v17 = v12 > a2 && v10 < v7;
  v19 = v14 > a2 && v13 < v7 || v17;
  if (v15 <= a2 || v15 - v5 >= v7)
  {
    v21 = v19;
  }

  else
  {
    v21 = 1;
  }

  return (*(v6 + 8 * ((23 * (v21 ^ 1)) ^ a1)))();
}

uint64_t sub_1000B57E0@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, int a6@<W8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v47 = a6 - 10032;
  v48 = ((2 * (a2 - 559634063)) & 0x177F5FEFCLL) + ((a2 - 559634063) ^ 0x79D275FFBBFAFF7ELL) + a1;
  v49 = __ROR8__((v48 - 0x79D275FFBBFAFF7ELL) & 0xFFFFFFFFFFFFFFF8, 8);
  v50 = (v49 - 0x2E6D7CC1A1D69CC4) ^ 0x12159011EED07D4ELL;
  v51 = __ROR8__((v49 - 0x2E6D7CC1A1D69CC4) ^ 0x9E8189E31F9B64A8, 8);
  v52 = (((2 * (v51 + v50)) & 0xA1AA17B749BF1D20) - (v51 + v50) + 0x2F2AF4245B20716FLL) ^ 0x8A0760DE39C44B2;
  v53 = v52 ^ __ROR8__(v50, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ a3;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ a5;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ v44;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ 0x2C3F70FBF6F9ADA3;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = (__ROR8__(v60, 8) + v61) ^ 0x1B5DE9094BAFA51ALL;
  return (*(v46 + 8 * v47))(a1, v48 - 0x79D275FFBBFAFF7ELL, 0xAF8139409A82D961, LODWORD(STACK[0x9AC]) ^ ((LODWORD(STACK[0x9AC]) ^ 0xA92F557E) + 500700915) ^ ((LODWORD(STACK[0x9AC]) ^ 0xA4EA74A1) + 270350126) ^ ((LODWORD(STACK[0x9AC]) ^ 0xB9326251) + 231023070) ^ ((LODWORD(STACK[0x9AC]) ^ 0xFFFFFFFD) + 1258863730) ^ 0x5A580945, 0x668DAFDD2B56CA91, a4, (((__ROR8__(v62, 8) + (v62 ^ __ROR8__(v61, 61))) ^ v45) >> (8 * ((v48 - 126) & 7))) ^ 0x50, v48 - 0x79D275FFBBFAFF7DLL, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44);
}

uint64_t sub_1000B5E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 8) = v7;
  v9 = (v4 & 4) == 0 || v3 == 0;
  return (*(v6 + 8 * (((((v5 + 18924) | 0x913) ^ 0xB5FC) * v9) ^ v5)))();
}

uint64_t sub_1000B5E90(uint64_t a1)
{
  v5 = *(&STACK[0x2A4] + v1 + 72);
  v6 = ((((v2 + 403354765) & 0xE7F5BEFE) + 2036023822) ^ v1) + ((2 * v1) & 0xF2B7B9E8);
  *(a1 + v6 - 2036063478) = v5 ^ 0x23;
  *(a1 + v6 - 2036063477) = (BYTE1(v5) ^ 0x86) + (~(2 * (BYTE1(v5) ^ 0x86)) | 0x41) + 96;
  *(a1 + v6 - 2036063476) = (BYTE2(v5) ^ 0x7C) - ((2 * (BYTE2(v5) ^ 0x7C)) & 0xBF) + 95;
  *(a1 + v6 - 2036063475) = (HIBYTE(v5) ^ 0x1D) - ((2 * (HIBYTE(v5) ^ 0x1D)) & 0xBF) + 95;
  return (*(v4 + 8 * ((17987 * (v1 + 4 < v3)) ^ v2)))();
}

uint64_t sub_1000B60F8()
{
  STACK[0x808] = 0;
  STACK[0x970] = 0x196B445AD18FFD26;
  STACK[0x7E8] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (((v0 + 20616) ^ 0x5BB6) + v0)))();
}

uint64_t sub_1000B6144()
{
  v2 = STACK[0xC70];
  v3 = STACK[0xC70] - 0x52C928769C716CAALL;
  STACK[0x450] = STACK[0x678];
  STACK[0x420] = (v3 ^ 0xCFFD6BFA7F79DD9FLL) + 0x3F7FDFE5BDF7AE7FLL + ((2 * v3) & 0x9FFAD7F4FEF3BB3ELL);
  v4 = STACK[0xC50];
  v5 = STACK[0xC50] + ((3463 * (v0 ^ 0x493Fu)) ^ 0xD032699AE5D724A1);
  STACK[0x440] = STACK[0x6B0];
  STACK[0x410] = (v5 ^ 0xFF7FCBF7BF7BBFBELL) + 0xFFD7FE87DF5CC60 + ((2 * v5) & 0xFEFF97EF7EF77F7CLL);
  v6 = STACK[0xC30];
  v7 = STACK[0xC30] - 0x10F1BE42386B0C91;
  STACK[0x430] = STACK[0xA28];
  STACK[0x3F0] = (v7 ^ 0x3F7D4FE87DFFEF5FLL) - 0x30000408408E6341 + ((2 * v7) & 0x7EFA9FD0FBFFDEBELL);
  v8 = STACK[0xC10];
  STACK[0x3E0] = ((STACK[0xC10] - 0x196B445AD18FFD22) ^ 0x1F7DCFFE7FF9BC9ELL) - 0x1000841E42883080 + ((2 * (STACK[0xC10] - 0x196B445AD18FFD22)) & 0x3EFB9FFCFFF3793CLL);
  v9 = STACK[0xBE0];
  v10 = STACK[0x610];
  v11 = STACK[0xC98];
  STACK[0x3D0] = ((STACK[0xC98] - 0x6AF890F2A09B587) ^ 0x3F7D4FF37DFDAFFFLL) - 0x30000413408C23E1 + ((2 * (STACK[0xC98] - 0x6AF890F2A09B587)) & 0x7EFA9FE6FBFB5FFELL);
  v12 = STACK[0xBD0];
  STACK[0x3C0] = ((STACK[0xBD0] - 0x2DD29E8100DBE70BLL) ^ 0x8FFD4BFA3FF3BC5FLL) + 0x7F7FFFE5FD7DCFBFLL + ((2 * (STACK[0xBD0] - 0x2DD29E8100DBE70BLL)) & 0x1FFA97F47FE778BELL);
  v13 = STACK[0xBC0];
  STACK[0x3B0] = ((STACK[0xBC0] - 0x5CB0CD870E025B8ALL) ^ 0x5F7DEBEC3DF1DC3ELL) - 0x5000A00C00805020 + ((2 * (STACK[0xBC0] - 0x5CB0CD870E025B8ALL)) & 0xBEFBD7D87BE3B87CLL);
  v14 = STACK[0xBB0];
  STACK[0x3A0] = ((STACK[0xBB0] - 0x18603FFA8CC1F50ELL) ^ 0x1F7F4FFA3D73BF5FLL) - 0x1002041A00023341 + ((2 * (STACK[0xBB0] - 0x18603FFA8CC1F50ELL)) & 0x3EFE9FF47AE77EBELL);
  v15 = STACK[0xCE0];
  STACK[0x390] = ((STACK[0xCE0] - 0x35B355EF6DED93BCLL) ^ 0x2FFD7BECFDF1FEBELL) - 0x2080300CC08072A0 + ((2 * (STACK[0xCE0] - 0x35B355EF6DED93BCLL)) & 0x5FFAF7D9FBE3FD7CLL);
  v16 = STACK[0xBA0];
  STACK[0x380] = ((STACK[0xBA0] - 0x1C51C5FE8B89B076) ^ 0xCFFF4BE27F73AF7FLL) + 0x3F7DFFFDBDFDDC9FLL + ((2 * (STACK[0xBA0] - 0x1C51C5FE8B89B076)) & 0x9FFE97C4FEE75EFELL);
  STACK[0x370] = ((v2 - 0x52C928769C716CA8) ^ 0xFF8EFB5EF5C7DDFELL) + 0x7A7F7FF95BF87F78 + ((2 * (v2 - 0x52C928769C716CA8)) & 0xFF1DF6BDEB8FBBFCLL);
  STACK[0x360] = ((v4 - 0x2FCD96651A2885EELL) ^ 0x7EAF7F7BDBEAFFF6) - 0x4A104238A2AA280 + ((2 * (v4 - 0x2FCD96651A2885EELL)) & 0xFD5EFEF7B7D5FFECLL);
  STACK[0x350] = ((v6 - 0x10F1BE42386B0C8FLL) ^ 0x7FEE7B787DFDFD7FLL) - 0x5E000202C3DA009 + ((2 * (v6 - 0x10F1BE42386B0C8FLL)) & 0xFFDCF6F0FBFBFAFELL);
  STACK[0x340] = ((v8 - 0x196B445AD18FFD20) ^ 0x7E2F7B7C5DCDDD76) - 0x42100240C0D8000 + ((2 * (v8 - 0x196B445AD18FFD20)) & 0xFC5EF6F8BB9BBAECLL);
  STACK[0x330] = ((v12 - 0x2DD29E8100DBE709) ^ 0x7A0F7F7B55EB5F77) - 0x10423042B0201 + ((2 * (v12 - 0x2DD29E8100DBE709)) & 0xF41EFEF6ABD6BEEELL);
  STACK[0x320] = ((v11 - 0x6AF890F2A09B585) ^ 0xFF1F7BDFDFE1DD76) + 0x7AEEFF7871DE8000 + ((2 * (v11 - 0x6AF890F2A09B585)) & 0xFE3EF7BFBFC3BAECLL);
  STACK[0x310] = ((v13 - 0x5CB0CD870E025B88) ^ 0x7A9FFF7E53F4DDF6) - 0x91842602348080 + ((2 * (v13 - 0x5CB0CD870E025B88)) & 0xF53FFEFCA7E9BBECLL);
  STACK[0x300] = ((v14 - 0x18603FFA8CC1F50CLL) ^ 0xFB6E7F5D7BFF7FF7) + 0x7E9FFBFAD5C0DD7FLL + ((2 * (v14 - 0x18603FFA8CC1F50CLL)) & 0xF6DCFEBAF7FEFFEELL);
  STACK[0x2F0] = ((v15 - 0x35B355EF6DED93BALL) ^ 0x7E0E7F7A7BCFFDFELL) - 0x40004222A0FA088 + ((2 * (v15 - 0x35B355EF6DED93BALL)) & 0xFC1CFEF4F79FFBFCLL);
  STACK[0x2E0] = ((v16 - 0x1C51C5FE8B89B074) ^ 0xFFAF7FDB77D67FFELL) + 0x7A5EFB7CD9E9DD78 + ((2 * (v16 - 0x1C51C5FE8B89B074)) & 0xFF5EFFB6EFACFFFCLL);
  v17 = *(v1 + 8 * v0);
  v18 = STACK[0xA98];
  STACK[0x2D0] = v9 + 10;
  STACK[0x2C0] = v9 + 0xF7D4BE03D718C22;
  STACK[0x2A0] = v9 + 0x7A0E7B5851C05D7CLL;
  STACK[0x290] = v9 + 0x7A0E7B5851C05D80;
  STACK[0x280] = v11 + 0x735EF24927B6A7F5;
  return v17(v18, v10);
}

uint64_t sub_1000B6948@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v5.n128_u64[0] = (v2 + 13) & 0xF;
  v5.n128_u64[1] = (v2 + 12) & 0xF;
  v6.n128_u64[0] = (v2 + 11) & 0xF;
  v6.n128_u64[1] = (v2 + 10) & 0xF;
  v7.n128_u64[0] = (v2 + 9) & 0xF;
  v7.n128_u64[1] = v2 & 0xF ^ 8;
  v10.val[0].i64[0] = (v2 + 7) & 0xF;
  v10.val[0].i64[1] = (v2 + 6) & 0xF;
  v10.val[1].i64[0] = (v2 + 5) & 0xF;
  v10.val[1].i64[1] = (v2 + 4) & 0xF;
  v10.val[2].i64[0] = (v2 + 3) & 0xF;
  v10.val[2].i64[1] = (v2 + 2) & 0xF;
  v10.val[3].i64[0] = (v2 + 1) & 0xF;
  v10.val[3].i64[1] = v2 & 0xF;
  v8.n128_u64[0] = 0x3939393939393939;
  v8.n128_u64[1] = 0x3939393939393939;
  return (*(v4 + 8 * v3))(a1 - 15, (v2 + 14) & 0xF, (v3 - 1330), (v2 & 0x10) - 16, (v3 - 1330) - 23425, 56502, a2, v5, v6, v7, xmmword_100BC76B0, vqtbl4q_s8(v10, xmmword_100BC76B0), v8);
}

uint64_t sub_1000B6A2C@<X0>(uint64_t a1@<X2>, unint64_t a2@<X7>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, int8x16_t a58, uint64_t a59, uint64_t a60, int8x16_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x410] = *(v71 + v66 - 8);
  v79.i64[0] = v71 + v66 - 7;
  v79.i64[1] = v71 + v66 - 8;
  v80.i64[0] = v71 + v66 - 3;
  v80.i64[1] = v71 + v66 - 4;
  v81.i64[0] = v71 + v66 - 1;
  v81.i64[1] = v71 + v66 - 2;
  v82 = v81;
  *&STACK[0x3C0] = v81;
  v81.i64[0] = v71 + v66 - 5;
  v81.i64[1] = v71 + v66 + v72;
  v83 = v81;
  *&STACK[0x3F0] = v81;
  v81.i64[0] = v67 + v66 - 5;
  v81.i64[1] = v67 + v66 + v72;
  v84 = v81;
  *&STACK[0x3B0] = v81;
  v85.i64[0] = v67 + v66 - 1;
  v85.i64[1] = v67 + v66 - 2;
  v86.i64[0] = v67 + v66 - 3;
  v86.i64[1] = v67 + v66 - 4;
  v87.i64[0] = v67 + v66 - 7;
  v87.i64[1] = v67 + v66 - 8;
  v88 = *&STACK[0x260];
  v89 = vandq_s8(v83, *&STACK[0x260]);
  v90 = vandq_s8(v82, *&STACK[0x260]);
  v91 = vandq_s8(v80, *&STACK[0x260]);
  v92 = vandq_s8(v79, *&STACK[0x260]);
  v93 = *&STACK[0x230];
  v94 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), *&STACK[0x230]), *&STACK[0x380]);
  v95 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), *&STACK[0x230]), *&STACK[0x380]);
  v96 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), *&STACK[0x230]), *&STACK[0x380]);
  v97 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), *&STACK[0x230]), *&STACK[0x380]);
  v98 = veorq_s8(v97, *&STACK[0x370]);
  v99 = veorq_s8(v96, *&STACK[0x370]);
  v100 = veorq_s8(v95, *&STACK[0x370]);
  v101 = veorq_s8(v94, *&STACK[0x370]);
  v102 = veorq_s8(v94, *&STACK[0x360]);
  v103 = veorq_s8(v95, *&STACK[0x360]);
  v104 = veorq_s8(v96, *&STACK[0x360]);
  v105 = veorq_s8(v97, *&STACK[0x360]);
  v106 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102), *&STACK[0x350]);
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v103), *&STACK[0x350]);
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v104), *&STACK[0x350]);
  v109 = vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL);
  v110 = vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL);
  v111 = vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL);
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v105), *&STACK[0x350]);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v114 = veorq_s8(v108, v111);
  v115 = veorq_s8(v107, v110);
  v116 = veorq_s8(v106, v109);
  v117 = vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL);
  v118 = vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL);
  v119 = vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL);
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v116);
  v121 = vaddq_s64(v119, v115);
  v122 = vaddq_s64(v118, v114);
  v123 = vaddq_s64(v117, v113);
  v124 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v123, v123), *&STACK[0x340]), v123), *&STACK[0x330]), *&STACK[0x320]);
  v125 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v122, v122), *&STACK[0x340]), v122), *&STACK[0x330]), *&STACK[0x320]);
  v126 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v121, v121), *&STACK[0x340]), v121), *&STACK[0x330]), *&STACK[0x320]);
  v127 = vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL);
  v128 = vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL);
  v129 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v120, v120), *&STACK[0x340]), v120), *&STACK[0x330]), *&STACK[0x320]);
  v130 = vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL);
  v131 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v132 = veorq_s8(v126, v130);
  v133 = veorq_s8(v125, v128);
  v134 = veorq_s8(v124, v127);
  v135 = vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL);
  v136 = vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL);
  v137 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v138 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v134);
  v139 = veorq_s8(vaddq_s64(v135, v131), v74);
  v140 = veorq_s8(vaddq_s64(v136, v132), v74);
  v141 = veorq_s8(vaddq_s64(v137, v133), v74);
  v142 = vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL);
  v143 = vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL);
  v144 = vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL);
  v145 = veorq_s8(v138, v74);
  v146 = veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v147 = veorq_s8(v141, v144);
  v148 = veorq_s8(v140, v143);
  v149 = veorq_s8(v139, v142);
  v150 = vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL);
  v151 = vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL);
  v152 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v153 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v149);
  v154 = vaddq_s64(v152, v148);
  v155 = vaddq_s64(v151, v147);
  v156 = vaddq_s64(v150, v146);
  v157 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v156, v156), *&STACK[0x310]), v156), *&STACK[0x300]), *&STACK[0x2D0]);
  v158 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v155, v155), *&STACK[0x310]), v155), *&STACK[0x300]), *&STACK[0x2D0]);
  v159 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v154, v154), *&STACK[0x310]), v154), *&STACK[0x300]), *&STACK[0x2D0]);
  v160 = vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL);
  v161 = vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL);
  v162 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v153, v153), *&STACK[0x310]), v153), *&STACK[0x300]), *&STACK[0x2D0]);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL));
  v164 = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v165 = veorq_s8(v158, v161);
  v166 = veorq_s8(v157, v160);
  v167 = vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL);
  v168 = vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL);
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v166);
  v170 = vaddq_s64(v168, v165);
  v171 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v164);
  v172 = vaddq_s64(v167, v163);
  v173 = vorrq_s8(vaddq_s64(v169, v169), *&STACK[0x2C0]);
  v174 = vsubq_s64(vorrq_s8(vaddq_s64(v172, v172), *&STACK[0x2C0]), v172);
  v175 = vsubq_s64(vorrq_s8(vaddq_s64(v171, v171), *&STACK[0x2C0]), v171);
  *&STACK[0x3A0] = vsubq_s64(vorrq_s8(vaddq_s64(v170, v170), *&STACK[0x2C0]), v170);
  *&STACK[0x3E0] = vsubq_s64(v173, v169);
  v176 = *&STACK[0x290];
  v177 = *&STACK[0x2A0];
  v178 = vaddq_s64(v175, *&STACK[0x2A0]);
  v179 = vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL);
  v180 = vaddq_s64(v174, *&STACK[0x2A0]);
  v181 = vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL);
  v182 = vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL);
  v183 = veorq_s8(v180, *&STACK[0x290]);
  *&STACK[0x3D0] = vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL);
  v184 = vandq_s8(v87, v88);
  v185 = vandq_s8(v86, v88);
  v186 = vandq_s8(v85, v88);
  v187 = vandq_s8(v84, v88);
  v188 = veorq_s8(v178, v176);
  v189 = vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL);
  v190 = vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL);
  v191 = veorq_s8(v188, v181);
  v192 = vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL);
  v193 = vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL);
  v194 = veorq_s8(v183, v179);
  v195 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0x2F0], v193), *&STACK[0x220]), vandq_s8(vaddq_s64(v193, v93), *&STACK[0x210]));
  v196 = vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL);
  v197 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0x2F0], v192), *&STACK[0x220]), vandq_s8(vaddq_s64(v192, v93), *&STACK[0x210]));
  v198 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0x2F0], v190), *&STACK[0x220]), vandq_s8(vaddq_s64(v190, v93), *&STACK[0x210]));
  *&STACK[0x390] = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0x2F0], v189), *&STACK[0x220]), vandq_s8(vaddq_s64(v189, v93), *&STACK[0x210]));
  v199 = veorq_s8(v197, *&STACK[0x450]);
  v200 = veorq_s8(v195, *&STACK[0x450]);
  v201 = vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL);
  v202 = veorq_s8(v195, *&STACK[0x430]);
  v203 = veorq_s8(v197, *&STACK[0x430]);
  v204 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL), v203);
  v205 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), v202);
  v206 = vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL);
  v207 = veorq_s8(vaddq_s64(vsubq_s64(v205, vandq_s8(vaddq_s64(v205, v205), *&STACK[0x420])), v75), a61);
  v208 = veorq_s8(vaddq_s64(vsubq_s64(v204, vandq_s8(vaddq_s64(v204, v204), *&STACK[0x420])), v75), a61);
  v209 = vsraq_n_u64(vshlq_n_s64(v202, 3uLL), v202, 0x3DuLL);
  v210 = vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL);
  v211 = veorq_s8(v208, vsraq_n_u64(vshlq_n_s64(v203, 3uLL), v203, 0x3DuLL));
  v212 = veorq_s8(v207, v209);
  v213 = vaddq_s64(v201, v194);
  v214 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL), v211), v78);
  v215 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207, 0x38uLL), v207, 8uLL), v212), v78);
  v216 = vsraq_n_u64(vshlq_n_s64(v211, 3uLL), v211, 0x3DuLL);
  v217 = veorq_s8(vaddq_s64(v196, v191), a64);
  v218 = veorq_s8(v215, vsraq_n_u64(vshlq_n_s64(v212, 3uLL), v212, 0x3DuLL));
  v219 = veorq_s8(v214, v216);
  v220 = vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL);
  v221 = veorq_s8(v213, a64);
  v222 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL), v219);
  v223 = veorq_s8(vaddq_s64(v220, v218), v74);
  v224 = veorq_s8(v221, v210);
  v225 = veorq_s8(v222, v74);
  v226 = vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL);
  v227 = vsraq_n_u64(vshlq_n_s64(v219, 3uLL), v219, 0x3DuLL);
  v228 = veorq_s8(v217, v206);
  v229 = veorq_s8(v225, v227);
  v230 = veorq_s8(v223, v226);
  v231 = vsraq_n_u64(vshlq_n_s64(v225, 0x38uLL), v225, 8uLL);
  v232 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), v230);
  v233 = vaddq_s64(v231, v229);
  v234 = vsubq_s64(vandq_s8(vaddq_s64(v233, v233), a58), v233);
  v235 = vdupq_n_s64(v64);
  v236 = vsraq_n_u64(vshlq_n_s64(v221, 0x38uLL), v221, 8uLL);
  v237 = vdupq_n_s64(a2);
  v238 = vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL);
  v239 = veorq_s8(vaddq_s64(v234, v235), v237);
  v240 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v232, v232), a58), v232), v235), v237);
  v241 = vsraq_n_u64(vshlq_n_s64(v229, 3uLL), v229, 0x3DuLL);
  v242 = vaddq_s64(v238, v228);
  v243 = veorq_s8(v240, vsraq_n_u64(vshlq_n_s64(v230, 3uLL), v230, 0x3DuLL));
  v244 = veorq_s8(v239, v241);
  v245 = vsraq_n_u64(vshlq_n_s64(v240, 0x38uLL), v240, 8uLL);
  v246 = vaddq_s64(v236, v224);
  v247 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v239, 0x38uLL), v239, 8uLL), v244);
  v248 = vaddq_s64(v245, v243);
  v249 = vdupq_n_s64(v68);
  v250 = vsubq_s64(vorrq_s8(vaddq_s64(v248, v248), v249), v248);
  v251 = vsubq_s64(vorrq_s8(vaddq_s64(v247, v247), v249), v247);
  v252 = vdupq_n_s64(v69);
  v253 = vaddq_s64(v251, v252);
  v254 = vsubq_s64(vorrq_s8(vaddq_s64(v246, v246), v76), v246);
  v255 = vdupq_n_s64(v73);
  v256 = veorq_s8(vaddq_s64(v250, v252), v255);
  v257 = veorq_s8(v253, v255);
  v258 = vsraq_n_u64(vshlq_n_s64(v243, 3uLL), v243, 0x3DuLL);
  v259 = veorq_s8(v257, vsraq_n_u64(vshlq_n_s64(v244, 3uLL), v244, 0x3DuLL));
  v260 = veorq_s8(v256, v258);
  v261 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v242, v242), v76), v242), v77), *&STACK[0x250]), vnegq_s64(vandq_s8(vshlq_n_s64(v80, 3uLL), *&STACK[0x240])));
  v262 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v256, 0x38uLL), v256, 8uLL), v260);
  v263 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v257, 0x38uLL), v257, 8uLL), v259);
  v264 = vsraq_n_u64(vshlq_n_s64(v259, 3uLL), v259, 0x3DuLL);
  v265 = veorq_s8(v262, a64);
  v266 = veorq_s8(v265, vsraq_n_u64(vshlq_n_s64(v260, 3uLL), v260, 0x3DuLL));
  v267 = vsraq_n_u64(vshlq_n_s64(v265, 0x38uLL), v265, 8uLL);
  v268 = veorq_s8(vaddq_s64(v254, v77), *&STACK[0x250]);
  v269 = veorq_s8(v263, a64);
  v270 = vshlq_u64(v268, vnegq_s64(vandq_s8(vshlq_n_s64(v79, 3uLL), *&STACK[0x240])));
  v271 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v269, 0x38uLL), v269, 8uLL), veorq_s8(v269, v264));
  v272 = vaddq_s64(v267, v266);
  v273 = vdupq_n_s64(v70);
  v274 = v177;
  v275 = vaddq_s64(*&STACK[0x3A0], v177);
  v276 = vshlq_u64(veorq_s8(v271, v273), vnegq_s64(vandq_s8(vshlq_n_s64(v86, 3uLL), *&STACK[0x240])));
  v336.val[3] = veorq_s8(v270, vshlq_u64(veorq_s8(v272, v273), vnegq_s64(vandq_s8(vshlq_n_s64(v87, 3uLL), *&STACK[0x240]))));
  v336.val[1] = veorq_s8(v261, v276);
  v277 = veorq_s8(v198, *&STACK[0x450]);
  v278 = veorq_s8(v198, *&STACK[0x430]);
  v279 = vsraq_n_u64(vshlq_n_s64(v277, 0x38uLL), v277, 8uLL);
  v280 = v176;
  v281 = veorq_s8(v275, v176);
  v282 = vaddq_s64(v279, v278);
  v283 = veorq_s8(v281, v182);
  v284 = veorq_s8(vaddq_s64(vsubq_s64(v282, vandq_s8(vaddq_s64(v282, v282), *&STACK[0x420])), v75), a61);
  v285 = veorq_s8(v284, vsraq_n_u64(vshlq_n_s64(v278, 3uLL), v278, 0x3DuLL));
  v286 = vsraq_n_u64(vshlq_n_s64(v281, 0x38uLL), v281, 8uLL);
  v287 = vsraq_n_u64(vshlq_n_s64(v284, 0x38uLL), v284, 8uLL);
  v288 = vsraq_n_u64(vshlq_n_s64(v283, 3uLL), v283, 0x3DuLL);
  v289 = vaddq_s64(v286, v283);
  v290 = veorq_s8(vaddq_s64(v287, v285), v78);
  v291 = veorq_s8(v290, vsraq_n_u64(vshlq_n_s64(v285, 3uLL), v285, 0x3DuLL));
  v292 = veorq_s8(v289, a64);
  v293 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v290, 0x38uLL), v290, 8uLL), v291), v74);
  v294 = vsraq_n_u64(vshlq_n_s64(v291, 3uLL), v291, 0x3DuLL);
  v295 = veorq_s8(v292, v288);
  v296 = veorq_s8(v293, v294);
  v297 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v293, 0x38uLL), v293, 8uLL), v296);
  v298 = vsraq_n_u64(vshlq_n_s64(v292, 0x38uLL), v292, 8uLL);
  v299 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v297, v297), a58), v297), v235), v237);
  v300 = veorq_s8(v299, vsraq_n_u64(vshlq_n_s64(v296, 3uLL), v296, 0x3DuLL));
  v301 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v299, 0x38uLL), v299, 8uLL), v300);
  v302 = vaddq_s64(v298, v295);
  v303 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v301, v301), v249), v301), v252), v255);
  v304 = veorq_s8(v303, vsraq_n_u64(vshlq_n_s64(v300, 3uLL), v300, 0x3DuLL));
  v305 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v303, 0x38uLL), v303, 8uLL), v304), a64);
  v336.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v302, v302), v76), v302), v77), *&STACK[0x250]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3C0], 3uLL), *&STACK[0x240]))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v305, 0x38uLL), v305, 8uLL), veorq_s8(v305, vsraq_n_u64(vshlq_n_s64(v304, 3uLL), v304, 0x3DuLL))), v273), vnegq_s64(vandq_s8(vshlq_n_s64(v85, 3uLL), *&STACK[0x240]))));
  v306 = veorq_s8(*&STACK[0x390], *&STACK[0x450]);
  v307 = veorq_s8(*&STACK[0x390], *&STACK[0x430]);
  v308 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v306, 0x38uLL), v306, 8uLL), v307);
  v309 = veorq_s8(vaddq_s64(*&STACK[0x3E0], v274), v280);
  v310 = veorq_s8(vaddq_s64(vsubq_s64(v308, vandq_s8(vaddq_s64(v308, v308), *&STACK[0x420])), v75), a61);
  v311 = vsraq_n_u64(vshlq_n_s64(v307, 3uLL), v307, 0x3DuLL);
  v312 = veorq_s8(v309, *&STACK[0x3D0]);
  v313 = veorq_s8(v310, v311);
  v314 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v310, 0x38uLL), v310, 8uLL), v313);
  v315 = vsraq_n_u64(vshlq_n_s64(v309, 0x38uLL), v309, 8uLL);
  v316 = vsraq_n_u64(vshlq_n_s64(v313, 3uLL), v313, 0x3DuLL);
  v317 = vsraq_n_u64(vshlq_n_s64(v312, 3uLL), v312, 0x3DuLL);
  v318 = veorq_s8(v314, v78);
  v319 = vaddq_s64(v315, v312);
  v320 = veorq_s8(v318, v316);
  v321 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v318, 0x38uLL), v318, 8uLL), v320), v74);
  v322 = veorq_s8(v319, a64);
  v323 = veorq_s8(v321, vsraq_n_u64(vshlq_n_s64(v320, 3uLL), v320, 0x3DuLL));
  v324 = vsraq_n_u64(vshlq_n_s64(v321, 0x38uLL), v321, 8uLL);
  v325 = veorq_s8(v322, v317);
  v326 = vaddq_s64(v324, v323);
  v327 = vsraq_n_u64(vshlq_n_s64(v322, 0x38uLL), v322, 8uLL);
  v328 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v326, v326), a58), v326), v235), v237);
  v329 = veorq_s8(v328, vsraq_n_u64(vshlq_n_s64(v323, 3uLL), v323, 0x3DuLL));
  v330 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v328, 0x38uLL), v328, 8uLL), v329);
  v331 = vaddq_s64(v327, v325);
  v332 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v330, v330), v249), v330), v252), v255);
  v333 = veorq_s8(v332, vsraq_n_u64(vshlq_n_s64(v329, 3uLL), v329, 0x3DuLL));
  v334 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v332, 0x38uLL), v332, 8uLL), v333), a64);
  v336.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v331, v331), v76), v331), v77), *&STACK[0x250]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3F0], 3uLL), *&STACK[0x240]))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v334, 0x38uLL), v334, 8uLL), veorq_s8(v334, vsraq_n_u64(vshlq_n_s64(v333, 3uLL), v333, 0x3DuLL))), v273), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3B0], 3uLL), *&STACK[0x240]))));
  *(v67 + v66 - 8) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v336, *&STACK[0x2E0])), STACK[0x410]);
  return (*(a3 + 8 * ((2 * (a1 == v66)) | (8 * (a1 == v66)) | v65)))();
}

uint64_t sub_1000B759C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11, uint64_t a12, unsigned int a13)
{
  *(*(a1 + 96) + 528) = 64;
  *(*(a1 + 96) + 532) = 1051086576;
  *(*(a1 + 96) + 536) = *(a1 + 96) + 544;
  v16 = *(a2 + 8) + (((*(a2 + 4) ^ 0xBCA5DF61) + 1129980063) ^ ((*(a2 + 4) ^ 0xC00562C3) + 1073388861) ^ ((*(a2 + 4) ^ 0x95757AB3) + 1787462989)) - (((v15 ^ 0x928C4F37) + ((v14 - 1929954429) ^ 0xE1843760)) ^ ((v15 ^ 0x8C121F1D) + 1944969443) ^ ((v15 ^ 0xF74B973B) + 146041029));
  v17 = 155453101 * (&a10 ^ 0xE6261BCF);
  a10 = *(a1 + 96) + 528;
  a12 = v16;
  a11 = v17 + v14 + 18528;
  a13 = (((v15 ^ 0x16450D60) - 373624160) ^ ((v15 ^ 0xEC12D493) + 334310253) ^ ((v15 ^ 0x13821EE2) - 327294690)) - v17 + 838238044;
  v20 = (*(v13 + 8 * (v14 + 32546)))(&a10);
  *(*(a1 + 96) + 512) = *(a2 + 8) + (((*(a2 + 4) ^ 0xE888DEC7) + 393683257) ^ ((*(a2 + 4) ^ 0xB48A48A2) + 1266005854) ^ ((*(a2 + 4) ^ 0xB5D75174) + 1244180108)) - (((v15 ^ 0xBD91240B) + 1114561525) ^ ((v15 ^ 0x4BB9CC4E) - 1270467662) ^ ((v15 ^ 0x1FFD2F54) - 536686420));
  return (*(v13 + 8 * v14))(v20);
}

uint64_t sub_1000B7AD4()
{
  STACK[0xA58] = 0;
  LODWORD(STACK[0xA90]) = -371865839;
  return (*(v1 + 8 * (v0 + 6887)))();
}

void sub_1000B7B04(uint64_t a1)
{
  v1 = 1012831759 * (((a1 | 0x2BF71906) - (a1 & 0x2BF71906)) ^ 0x3B640F8C);
  v2 = *(a1 + 4) - v1;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1000B7BE8(int a1, int8x16_t a2, int8x8_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v15.val[0].i64[0] = a7 & (v11 + v12 - 1);
  v15.val[0].i64[1] = (v11 + v12 + 14) & 0xF;
  v15.val[1].i64[0] = (v11 + v12 + 13) & 0xF;
  v15.val[1].i64[1] = (v11 + v12 + 12) & 0xF;
  v15.val[2].i64[0] = (v11 + v12 + 11) & 0xF;
  v15.val[2].i64[1] = (v11 + v12 + 10) & 0xF;
  v15.val[3].i64[0] = (v11 + v12 + 9) & 0xF;
  v15.val[3].i64[1] = (v11 + v12) & 0xF ^ 8;
  *(a6 + v12) = veor_s8(veor_s8(veor_s8(*(v8 + v15.val[0].i64[0] - 7), *(a6 + v12)), veor_s8(*(v15.val[0].i64[0] + v9 - 6), *(v15.val[0].i64[0] + v10 - 4))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v15, a2), a3)));
  return (*(v13 + 8 * (((a5 == v12) * a8) ^ a1)))();
}

uint64_t sub_1000B7CA8()
{
  v5 = *(v3 + 8 * ((v2 - 1777289839) ^ 0x6DEC));
  *(v4 - 204) = v0;
  *(v4 - 200) = v1;
  return v5();
}

void sub_1000B7CE0(uint64_t a1)
{
  v1 = 193924789 * (((a1 | 0xDF27A47C) - (a1 | 0x20D85B83) + 551050115) ^ 0x699C961A);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_1000B7DB8()
{
  v2 = STACK[0x638];
  v3 = *(STACK[0x638] + 8);
  v4 = STACK[0x4B8];
  v4[1] = v3;
  *v4 = *v2;
  return (*(v1 + 8 * (((v3 == 0) * (((v0 - 437820733) ^ 0x1A18DFBE) + ((v0 - 437820733) & 0x1A18DFF9))) ^ v0)))();
}

uint64_t sub_1000B7E14(double a1, int8x16_t a2, int8x16_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, double a17, double a18, double a19, double a20, double a21, double a22, double a23, double a24, __n128 a25, int8x16_t a26, int64x2_t a27, int8x16_t a28, int64x2_t a29, int8x16_t a30, int8x16_t a31, double a32, double a33, double a34, double a35, int8x16_t a36, int8x16_t a37, int64x2_t a38, int64x2_t a39)
{
  v182 = v44;
  v51 = veorq_s8(a6, v45);
  v52 = veorq_s8(a3, v45);
  v53 = veorq_s8(a5, v45);
  v54 = veorq_s8(a4, v45);
  v55 = veorq_s8(v44, v45);
  v56 = veorq_s8(a2, v45);
  v57 = veorq_s8(a8, v45);
  v58 = veorq_s8(a7, v45);
  v59 = vandq_s8(a6, v46);
  v60 = vandq_s8(a3, v46);
  v61 = vandq_s8(a5, v46);
  v62 = vandq_s8(a4, v46);
  v63 = vandq_s8(v182, v46);
  v64 = vandq_s8(a2, v46);
  v65 = vandq_s8(a8, v46);
  v66 = vandq_s8(a7, v46);
  v67 = v47;
  v68 = v50;
  v69 = v49;
  v70 = v48;
  v71 = v43;
  v72 = veorq_s8(vandq_s8(vaddq_s64(v66, v66), veorq_s8(a7, a37)), v66);
  v73 = veorq_s8(vandq_s8(vaddq_s64(v65, v65), veorq_s8(a8, a37)), v65);
  v74 = veorq_s8(vandq_s8(vaddq_s64(v64, v64), veorq_s8(a2, a37)), v64);
  v75 = veorq_s8(vandq_s8(vaddq_s64(v63, v63), veorq_s8(v182, a37)), v63);
  v76 = veorq_s8(vandq_s8(vaddq_s64(v62, v62), veorq_s8(a4, a37)), v62);
  v77 = veorq_s8(vandq_s8(vaddq_s64(v61, v61), veorq_s8(a5, a37)), v61);
  v78 = vaddq_s64(v58, v58);
  v79 = veorq_s8(vandq_s8(vaddq_s64(v60, v60), veorq_s8(a3, a37)), v60);
  v80 = vaddq_s64(v57, v57);
  v81 = vaddq_s64(v56, v56);
  v82 = vaddq_s64(v55, v55);
  v83 = vaddq_s64(v54, v54);
  v84 = vaddq_s64(v53, v53);
  v85 = veorq_s8(vandq_s8(vaddq_s64(v59, v59), veorq_s8(a6, a37)), v59);
  v86 = vaddq_s64(v52, v52);
  v87 = vaddq_s64(v51, v51);
  v88 = vandq_s8(veorq_s8(v78, a36), v58);
  v89 = vandq_s8(veorq_s8(v80, a36), v57);
  v90 = vandq_s8(veorq_s8(v82, a36), v55);
  v91 = vandq_s8(veorq_s8(v84, a36), v53);
  v92 = veorq_s8(vandq_s8(veorq_s8(v87, a36), v51), vandq_s8(v87, v71));
  v93 = veorq_s8(vandq_s8(veorq_s8(v86, a36), v52), vandq_s8(v86, v71));
  v94 = veorq_s8(v91, vandq_s8(v84, v71));
  v95 = veorq_s8(vandq_s8(veorq_s8(v83, a36), v54), vandq_s8(v83, v71));
  v96 = veorq_s8(v90, vandq_s8(v82, v71));
  v97 = veorq_s8(vandq_s8(veorq_s8(v81, a36), v56), vandq_s8(v81, v71));
  v98 = veorq_s8(v89, vandq_s8(v80, v71));
  v99 = veorq_s8(v88, vandq_s8(v78, v71));
  v100 = veorq_s8(vandq_s8(vshlq_n_s64(v85, 2uLL), v92), v85);
  v101 = veorq_s8(vandq_s8(vshlq_n_s64(v79, 2uLL), v93), v79);
  v102 = veorq_s8(vandq_s8(vshlq_n_s64(v77, 2uLL), v94), v77);
  v103 = veorq_s8(vandq_s8(vshlq_n_s64(v76, 2uLL), v95), v76);
  v104 = veorq_s8(vandq_s8(vshlq_n_s64(v75, 2uLL), v96), v75);
  v105 = veorq_s8(vandq_s8(vshlq_n_s64(v74, 2uLL), v97), v74);
  v106 = veorq_s8(vandq_s8(vshlq_n_s64(v73, 2uLL), v98), v73);
  v107 = veorq_s8(vandq_s8(vshlq_n_s64(v72, 2uLL), v99), v72);
  v108 = vandq_s8(veorq_s8(vshlq_n_s64(v99, 2uLL), v67), veorq_s8(v99, v70));
  v109 = vandq_s8(veorq_s8(vshlq_n_s64(v98, 2uLL), v67), veorq_s8(v98, v70));
  v110 = vandq_s8(vandq_s8(veorq_s8(vshlq_n_s64(v92, 2uLL), v67), veorq_s8(v92, v70)), vshlq_n_s64(v100, 4uLL));
  v111 = vandq_s8(vandq_s8(veorq_s8(vshlq_n_s64(v93, 2uLL), v67), veorq_s8(v93, v70)), vshlq_n_s64(v101, 4uLL));
  v112 = vandq_s8(vandq_s8(veorq_s8(vshlq_n_s64(v94, 2uLL), v67), veorq_s8(v94, v70)), vshlq_n_s64(v102, 4uLL));
  v113 = vandq_s8(vandq_s8(veorq_s8(vshlq_n_s64(v95, 2uLL), v67), veorq_s8(v95, v70)), vshlq_n_s64(v103, 4uLL));
  v114 = vandq_s8(vandq_s8(veorq_s8(vshlq_n_s64(v96, 2uLL), v67), veorq_s8(v96, v70)), vshlq_n_s64(v104, 4uLL));
  v115 = vandq_s8(v108, vshlq_n_s64(v107, 4uLL));
  v116 = veorq_s8(vandq_s8(v109, vshlq_n_s64(v106, 4uLL)), v106);
  v117 = veorq_s8(vaddq_s64(v116, v116), a8);
  v118 = vaddq_s64(a7, a39);
  v119 = v118.i64[1];
  v120 = v118.i64[0];
  v121 = vaddq_s64(a8, a39);
  v122 = v121.i64[1];
  v123 = v121.i64[0];
  v124 = vaddq_s64(a2, a39);
  v125 = v124.i64[1];
  v126 = v124.i64[0];
  v127 = vaddq_s64(veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v117, a28), v69), vaddq_s64(veorq_s8(v117, a31), v68)), vaddq_s64(veorq_s8(v117, a30), a29)), a38);
  v128 = v127.i64[1];
  v129 = veorq_s8(vandq_s8(vandq_s8(veorq_s8(vshlq_n_s64(v97, 2uLL), v67), veorq_s8(v97, v70)), vshlq_n_s64(v105, 4uLL)), v105);
  v130 = veorq_s8(vaddq_s64(v129, v129), a2);
  v131 = v127.i64[0];
  v92.i64[0] = v182.i64[0] * a10;
  v132 = vaddq_s64(veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v130, a28), v69), vaddq_s64(veorq_s8(v130, a31), v68)), vaddq_s64(veorq_s8(v130, a30), a29)), a38);
  v133 = v132.i64[1];
  v134 = veorq_s8(v114, v104);
  v135 = veorq_s8(vaddq_s64(v134, v134), v182);
  v136 = v132.i64[0];
  v72.i64[0] = a2.i64[0] * a10;
  v104.i64[0] = a8.i64[0] * a10;
  v92.i64[1] = v182.i64[1] * a10;
  v137 = vaddq_s64(veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v135, a28), v69), vaddq_s64(veorq_s8(v135, a31), v68)), vaddq_s64(veorq_s8(v135, a30), a29)), a38);
  v138 = veorq_s8(v115, v107);
  v139 = veorq_s8(v113, v103);
  v140 = veorq_s8(v111, v101);
  v141 = vaddq_s64(v140, v140);
  v142 = veorq_s8(vaddq_s64(v138, v138), a7);
  v143 = veorq_s8(v141, a3);
  v72.i64[1] = a2.i64[1] * a10;
  v104.i64[1] = a8.i64[1] * a10;
  v141.i64[0] = v136 * v126;
  v144 = vaddq_s64(v182, a39);
  v141.i64[1] = v133 * v125;
  v137.i64[0] *= v144.i64[0];
  v137.i64[1] *= v144.i64[1];
  v187.val[1] = vaddq_s64(vaddq_s64(v92, a27), v137);
  v187.val[0] = vaddq_s64(vaddq_s64(v72, a27), v141);
  v145 = vaddq_s64(a3, a39);
  v141.i64[0] = v131 * v123;
  v146 = v145.i64[1];
  v147 = v145.i64[0];
  v141.i64[1] = v128 * v122;
  v187.val[2] = vaddq_s64(vaddq_s64(v104, a27), v141);
  v148 = vaddq_s64(veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v142, a28), v69), vaddq_s64(veorq_s8(v142, a31), v68)), vaddq_s64(veorq_s8(v142, a30), a29)), a38);
  v149 = vaddq_s64(veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v143, a28), v69), vaddq_s64(veorq_s8(v143, a31), v68)), vaddq_s64(veorq_s8(v143, a30), a29)), a38);
  v150 = v149.i64[1];
  v151 = v149.i64[0];
  v149.i64[0] = a7.i64[0] * a10;
  v152 = v148.i64[0] * v120;
  v153 = v148.i64[1] * v119;
  v154 = veorq_s8(v110, v100);
  v155 = veorq_s8(vaddq_s64(v154, v154), a6);
  v145.i64[0] = v152;
  v149.i64[1] = a7.i64[1] * a10;
  v145.i64[1] = v153;
  v187.val[3] = vaddq_s64(vaddq_s64(v149, a27), v145);
  v145.i64[0] = a6.i64[0] * a10;
  v156 = veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v155, a28), v69), vaddq_s64(veorq_s8(v155, a31), v68)), vaddq_s64(veorq_s8(v155, a30), a29));
  v155.i64[0] = a3.i64[0] * a10;
  v157 = vaddq_s64(v156, a38);
  v158 = v157.i64[1];
  v159 = v157.i64[0];
  v145.i64[1] = a6.i64[1] * a10;
  v160 = vaddq_s64(a6, a39);
  v161 = veorq_s8(v112, v102);
  v162 = veorq_s8(vaddq_s64(v139, v139), a4);
  v163 = veorq_s8(vaddq_s64(v161, v161), a5);
  v155.i64[1] = a3.i64[1] * a10;
  v164 = vaddq_s64(a5, a39);
  v165 = v160.i64[0];
  v160.i64[0] = v151 * v147;
  v166 = v158 * v160.i64[1];
  v167 = v159 * v165;
  v168 = v164.i64[0];
  v97.i64[0] = v167;
  v164.i64[0] = vqtbl4q_s8(v187, a26).u64[0];
  v160.i64[1] = v150 * v146;
  v97.i64[1] = v166;
  v188.val[0] = vaddq_s64(vaddq_s64(v145, a27), v97);
  v188.val[1] = vaddq_s64(vaddq_s64(v155, a27), v160);
  v145.i64[0] = a5.i64[0] * a10;
  v169 = vaddq_s64(veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v163, a28), v69), vaddq_s64(veorq_s8(v163, a31), v68)), vaddq_s64(veorq_s8(v163, a30), a29)), a38);
  v170 = v169.i64[1];
  v145.i64[1] = a5.i64[1] * a10;
  v171 = v169.i64[0];
  v169.i64[0] = a4.i64[0] * a10;
  v169.i64[1] = a4.i64[1] * a10;
  v172 = v171 * v168;
  v173 = vaddq_s64(veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v162, a28), v69), vaddq_s64(veorq_s8(v162, a31), v68)), vaddq_s64(veorq_s8(v162, a30), a29)), a38);
  v174 = v173.i64[1];
  v163.i64[0] = v172;
  v163.i64[1] = v170 * v164.i64[1];
  v188.val[2] = vaddq_s64(vaddq_s64(v145, a27), v163);
  v175 = v173.i64[0];
  v176 = vaddq_s64(a4, a39);
  v176.i64[0] *= v175;
  v176.i64[1] *= v174;
  v188.val[3] = vaddq_s64(vaddq_s64(v169, a27), v176);
  v164.i64[1] = vqtbl4q_s8(v188, a26).u64[0];
  v177 = vrev64q_s8(v164);
  *v41 = vextq_s8(v177, v177, 8uLL);
  return (*(v39 + 8 * (((v40 == a11) * a12) ^ v42)))(a25, vaddq_s64(a2, a25), vaddq_s64(a3, a25), vaddq_s64(a4, a25), vaddq_s64(a5, a25), vaddq_s64(a6, a25), vaddq_s64(a7, a25), vaddq_s64(a8, a25), a17, a18, a19, a20, a21, a22, a23, a24, a25.n128_f64[0], a25.n128_f64[1], *a26.i64, *&a26.i64[1], *a27.i64, *&a27.i64[1], *a28.i64, *&a28.i64[1], *a29.i64, *&a29.i64[1], *a30.i64, *&a30.i64[1], *a31.i64, *&a31.i64[1], a32, a33, a34, a35, *a36.i64, *&a36.i64[1], *a37.i64, *&a37.i64[1], *a38.i64, *&a38.i64[1], *a39.i64, *&a39.i64[1], *a6.i64, *&a6.i64[1], *a4.i64, *&a4.i64[1], *a2.i64, *&a2.i64[1], *v182.i64, *&v182.i64[1], *a8.i64, *&a8.i64[1], *a5.i64, *&a5.i64[1], *a7.i64, *&a7.i64[1], *a3.i64, *&a3.i64[1]);
}

uint64_t sub_1000B85E4@<X0>(int a1@<W0>, int a2@<W2>, unint64_t a3@<X8>)
{
  v17 = v3 > v7;
  v18 = HIDWORD(a3) + v15 * (*(v4 + 4 * (a1 + v14)) ^ v8) + (*(v16 + 4 * a2) ^ v5);
  *(v16 + 4 * a2) = v18 - (v11 & (2 * v18)) + v5;
  v19 = a1 + v12;
  v20 = (a1 + 1);
  v21 = (a2 + 1);
  v22 = v17 ^ (v19 < v13);
  v23 = v19 < v6;
  if (!v22)
  {
    v17 = v23;
  }

  return (*(v9 + 8 * (v10 ^ (2 * v17))))(v20, (v10 - 2375), v21);
}

uint64_t sub_1000B8658()
{
  v4 = *(&off_1010A0B50 + (v0 ^ 0x4793)) - 1161222055;
  v5 = v4[*(v3 - 138) ^ 0xF4];
  v6 = *(&off_1010A0B50 + (v0 ^ 0x4A73)) - 1903069191;
  v7 = v6[*(v3 - 141) ^ 0x86];
  v8 = v4[(-(*(v3 - 130) ^ 0xD4) ^ (180 - (*(v3 - 130) ^ 0x60)) ^ 0x3927205F ^ ((*(v3 - 130) ^ 0xD4) - ((2 * (*(v3 - 130) ^ 0xD4)) & 0xBE) + 958865503)) + 180];
  v9 = ((v8 >> 6) | (4 * v8)) ^ (((v8 >> 6) | (4 * v8)) >> 4) ^ (((v8 >> 6) | (4 * v8)) >> 1);
  v10 = v6[*(v3 - 137) ^ 0x29];
  v11 = v9 ^ 0x7F;
  v12 = *(&off_1010A0B50 + (v0 ^ 0x4ACF)) - 1638380387;
  v13 = v12[*(v3 - 143)];
  v14 = (v10 ^ 0x75CBFF53) & (((((v5 >> 6) | (4 * v5)) ^ (((v5 >> 6) & 0xFE | (4 * v5)) >> 1) ^ ((v4[*(v3 - 138) ^ 0xF4] >> 2) | 0xB0)) << ((v0 - 71) ^ 0xED)) ^ 0x58B702A) | v10 & 0xD5;
  LOBYTE(v10) = v4[*(v3 - 134) ^ 0x83];
  v15 = ((((((16 * v13) ^ 0xB0) + 80) ^ v13) << 16) ^ 0xBCE88893) & (v7 ^ 0xFEFF9C7B) | v7 & 0x6C;
  v16 = (((v10 ^ 0xB2) >> (v9 & 2)) >> (v9 & 4 ^ 4) >> (v9 & 2 ^ 2) >> (v9 & 4)) ^ (4 * v10);
  v17 = v6[*(v3 - 133) ^ 0xC7];
  v18 = v12[*(v3 - 135) ^ 0x27];
  v19 = (((((v16 ^ (v16 >> 4) ^ (v16 >> 1)) << 8) ^ 0x60A5AC10) & (v17 ^ 0x6FFDFF19) | v17 & 0xFFFFFFEF) ^ 0x48D585B9) & ((((((16 * v18) ^ 0xB0) + 80) ^ v18) << 16) ^ 0x6F30FFFF) ^ (((((16 * v18) ^ 0xB0) + 80) ^ v18) << 16) & 0xFF8FFFFF;
  v20 = *(&off_1010A0B50 + v0 - 19237) - 1551660063;
  v21 = *(v3 - 142) ^ 0x51;
  v22 = (v4[v21] >> 6) | (4 * v4[v21]);
  v23 = (v22 ^ (((v4[v21] >> 6) | (4 * v4[v21])) >> 1) ^ ((v22 >> 4) | 0xA0)) << 8;
  LOBYTE(v21) = v12[*(v3 - 131) ^ 0x20];
  v24 = (v23 ^ 0xFFFF83FF) & (v15 & 0x2CA508AE ^ 0x4C3F14E1 ^ (((*(v3 - 144) ^ 0xDB ^ v20[*(v3 - 144) ^ 0xAALL]) << 24) ^ 0xC95AA651) & (v15 ^ 0x43AB678E));
  v25 = v23 & 0x4500;
  v26 = ((((16 * v21) ^ 0xB0) + 80) ^ v21) << 16;
  v27 = (v26 ^ 0xFF3FFFFF) & ((v11 << 8) ^ 0xB1CDB503) | v26 & 0x320000;
  LODWORD(v21) = v20[*(v3 - 136) ^ 0xELL] ^ *(v3 - 136);
  v28 = v6[*(v3 - 129) ^ 0x63];
  v29 = (v20[*(v3 - 140) ^ 0x72] ^ *(v3 - 140)) << 24;
  v30 = v12[*(v3 - 139) ^ 7];
  v31 = (((v27 ^ 0x4E00A054) & (((v20[*(v3 - 132) ^ 0xCALL] ^ *(v3 - 132)) << 24) ^ 0xFEA5E255) | v27 & 0x5A1D02) ^ 0x2D04C783) & (v28 ^ 0xFFFFFF17);
  v32 = ((((16 * v30) ^ 0xB0) + 80) ^ v30) << 16;
  v33 = (v32 ^ 0xFF7CFFFF) & (v29 & 0x4000000 ^ 0xC57E7A0C ^ (v29 ^ 0xABEBFFFF) & (v14 ^ 0xFEE9E551));
  v34 = v32 & 0xFFE3FFFF ^ 0xEE50137C;
  *(v3 - 216) = v34 ^ v33;
  *(v3 - 212) = v19 & 0x69DE6B20 ^ 0xCCF3980B ^ ((v21 << 24) ^ 0x802194DF) & (v19 ^ 0xD782509E);
  *(v3 - 204) = v28 & 0x2B ^ 0x8B6AD3B3 ^ v31;
  *(v3 - 208) = v25 ^ 0x7130787F ^ v24;
  v35 = (((v1 ^ 0x76FBC2DF) - 976746020) ^ ((v1 ^ 0xDCA2CEE7) + 1871775204) ^ ((v1 ^ 0xBF04FD61) + 204944998)) + 1968848091;
  v36 = ((v35 ^ 0x37599DE1) - 1879461517) ^ v35 ^ ((v35 ^ 0x75CBBAA9) - 848587205) ^ ((v35 ^ 0xFA324B99) + 1116890891) ^ ((v35 ^ 0xFFFFBFBD) + 1197445935);
  *(v3 - 200) = (((v36 ^ 0xB0BA5555) - 500612134) ^ ((v36 ^ 0x970D0EAD) - 979494878) ^ ((v36 ^ 0x4B7FD4A7) + 434946604)) - 528605937 + ((((2 * v36) & 0x572EB862 ^ 0x951D9AB2) - 971629934) ^ (((2 * v36) & 0x572EB862 ^ 0x91F1DE5B) - 1023779207) ^ (((2 * v36) & 0x572EB862 ^ 0x2C2E4A9) + 1372152971));
  return (*(v2 + 8 * v0))(v34, v20, 3998225276, 3313400332, 176, (v0 - 9799));
}

uint64_t sub_1000B8CD8()
{
  v3 = v0 ^ 0xC6FF;
  v4 = *(&off_1010A0B50 + v3 - 38492) - 2093292659;
  v5 = *(&off_1010A0B50 + (v3 ^ 0x87BF)) - 415179214;
  v6 = *(&off_1010A0B50 + (v3 ^ 0x94EC)) - 252726019;
  v7 = *(&off_1010A0B50 + (v3 ^ 0x8771)) - 750469778;
  v8 = v5[*(v2 - 101) ^ 0xF3];
  v9 = ((v8 - 109) & 0x10 | 0x5AD00000) ^ (~(v8 - 109) | 0xFFFFFF00) & (((v4[*(v2 - 104) ^ 9] ^ 0xB1) << 24) ^ 0xF0235FEF);
  v10 = v5[(((*(v2 - 109) - (*(v2 - 109) ^ 0x76)) ^ 0xFFFFFFFC) + *(v2 - 109)) ^ 9] - 109;
  v11 = (((((*(v2 - 111) ^ 0xF4) - 81) ^ *(v2 - 111) ^ 0xF4 ^ v7[*(v2 - 111) ^ 0xB7]) << 16) ^ 0xF20513AA) & (v10 ^ 0xF7FF53BB) | v10 & 0x55;
  v12 = (v11 ^ 0xD01E844) & ((v4[*(v2 - 112) ^ 0xFELL] << 24) ^ 0x1E49FA46) ^ v11 & 0x12B601B9;
  return (*(v1 + 8 * v3))(v12 & 0x5D4520A9 ^ 0x87372DFA ^ (v12 ^ 0x920410) & ((v6[(((*(v2 - 110) ^ 0x95) - (*(v2 - 110) ^ 0xB)) ^ 0xFFFFFFFC) + (*(v2 - 110) ^ 0x95)] << 8) ^ 0xA2BAD356), (v6[*(v2 - 102) ^ 0xF1] << 8) & 0x4100 ^ 0x25EBA5ED ^ (((((((*(v2 - 103) ^ 0xB5) - 81) ^ *(v2 - 103) ^ 0xB5 ^ v7[*(v2 - 103) ^ 0xF6]) << 16) ^ 0x41B17271) & (v9 ^ 0xC249A) | v9 & 0xBE00098E) ^ 0x8BC8C5CB) & ((v6[*(v2 - 102) ^ 0xF1] << 8) ^ 0xFFFF3DFF));
}

uint64_t sub_1000B9310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  v59 = v44;
  LODWORD(STACK[0x3EC]) = v43;
  v48 = v42;
  (*(v47 + 8 * (v46 ^ 0x8F33)))(*(v45 + 104), &STACK[0x420], 32);
  STACK[0x6A0] = 96;
  (*(v47 + 8 * (v46 + 33999)))(&STACK[0x420], &STACK[0x810], 32);
  (*(v47 + 8 * (v46 ^ 0x8E8B)))(&STACK[0x810], 0, 0, 0, 0, 0, &STACK[0x7F4], 0);
  v49 = *(*(v48 + 8 * (v46 ^ 0x467B)) - 1909196687);
  LOBYTE(STACK[0x11B4]) = ((4 * v46) ^ 0x24) + *v49 - 33;
  LOBYTE(STACK[0x11B5]) = v49[1] - 53;
  LOBYTE(STACK[0x11B6]) = v49[2] - 53;
  LOBYTE(STACK[0x11B7]) = v49[3] - 53;
  LOBYTE(STACK[0x11B8]) = v49[4] - 53;
  LOBYTE(STACK[0x11B9]) = v49[5] + (v46 ^ 0x39);
  LOBYTE(STACK[0x11BA]) = v49[6] - 53;
  LOBYTE(STACK[0x11BB]) = v49[7] - 53;
  LOBYTE(STACK[0x11BC]) = v49[8] - 53;
  LOBYTE(STACK[0x11BD]) = v49[9] - 53;
  LOBYTE(STACK[0x11BE]) = v49[10] - 53;
  LOBYTE(STACK[0x11BF]) = v49[11] - 53;
  LOBYTE(STACK[0x11C0]) = v49[12] - 53;
  LOBYTE(STACK[0x11C1]) = v49[13] - 53;
  LOBYTE(STACK[0x11C2]) = v49[14] - 53;
  LOBYTE(STACK[0x11C3]) = v49[15] - 53;
  (*(v47 + 8 * (v46 ^ 0x8F33)))(&STACK[0x420], &STACK[0x830], 32);
  v50 = (*(v47 + 8 * (v46 ^ 0x8EE2)))(&STACK[0x830], &STACK[0x11B4], &STACK[0x7F0]);
  return (*(v47 + 8 * ((11350 * ((((2 * v50) & 0xF4) + (v50 ^ 0x7A)) == 122)) ^ v46)))(v50, v51, v52, v53, v54, v55, v56, v57, 0, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, v59, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_1000B95CC(uint64_t a1)
{
  *a1 = 256;
  strcpy((a1 + 8), "____________________________________");
  *(a1 + 45) = 0;
  *(a1 + 46) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  strcpy((a1 + 64), "____________________________________");
  *(a1 + 101) = 0;
  *(a1 + 102) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v4 = vdupq_n_s64(((v3 - 136) ^ 0x7FBEDDFFDEE4DEDFLL) - 0x309259429CC40659 + ((2 * (v3 - 136)) & 0xFF7DBBFFBDC9BDB0));
  *(a1 + 128) = 0;
  *(a1 + 131) = 0;
  v24 = vdupq_n_s64(0xB0D37B42BDDF277ALL);
  v25 = vdupq_n_s64(0x51ABB0CA1CEA8F14uLL);
  v22 = vdupq_n_s64(0xC2F19711426B50DCLL);
  v23 = vdupq_n_s64(0x308B724A3DDE8770uLL);
  v20 = vdupq_n_s64(0x21084888A114A822uLL);
  v21 = vdupq_n_s64(0xE178CB88A135A86ELL);
  v18 = vdupq_n_s64(0x85E32E2284D6A1B8);
  v19 = vdupq_n_s64(0xE05083800021004ALL);
  v16 = vdupq_n_s64(0x1600A008014A026uLL);
  v17 = vdupq_n_s64(0x6178CB88A135A86CuLL);
  v14 = vdupq_n_s64(0xF4FCF84EAAF8716ELL);
  v15 = vdupq_n_s64(0xC23D294E172F2FBELL);
  v12 = vdupq_n_s64(0xCBE709AC3DC72AA2);
  v13 = vdupq_n_s64(0xFD26D8AC80107472);
  v10 = vdupq_n_s64(0xFB684BB0973722E0);
  v11 = vdupq_n_s64(0xCDA99AB02AE07C0CLL);
  v8 = vdupq_n_s64(0xE1309058FDAFFC8BLL);
  v9 = vdupq_n_s64(0x3FDEC24BE1E35180uLL);
  v7 = vdupq_n_s64(0x7CE58B063E6BA4uLL);
  v6 = vdupq_n_s64(0x10uLL);
  return (*(v1 + 8 * (v2 - 1997)))(vaddq_s64(v4, xmmword_100F52320), vaddq_s64(v4, xmmword_100F52330), vaddq_s64(v4, xmmword_100F52340), vaddq_s64(v4, xmmword_100F52350), vaddq_s64(v4, xmmword_100F52360), vaddq_s64(v4, xmmword_100F52370), vaddq_s64(v4, xmmword_100F52380), vorrq_s8(v4, xmmword_100F52390), *v6.i64, *&v6.i64[1], 4.74803907e-38, 1.38689741e272, *v7.i64, *&v7.i64[1], *v8.i64, *&v8.i64[1], *v9.i64, *&v9.i64[1], *v10.i64, *&v10.i64[1], *v11.i64, *&v11.i64[1], *v12.i64, *&v12.i64[1], *v13.i64, *&v13.i64[1], *v14.i64, *&v14.i64[1], *v15.i64, *&v15.i64[1], *v16.i64, *&v16.i64[1], *v17.i64, *&v17.i64[1], *v18.i64, *&v18.i64[1], *v19.i64, *&v19.i64[1], *v20.i64, *&v20.i64[1], *v21.i64, *&v21.i64[1], *v22.i64, *&v22.i64[1], *v23.i64, *&v23.i64[1], *v24.i64, *&v24.i64[1], *v25.i64, *&v25.i64[1]);
}

uint64_t sub_1000B99FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, char a35, char a36, char a37)
{
  v44 = *(v41 + 8 * a7);
  v42 = a8 - (v37 & (2 * a8)) + v38;
  a34 = (v39 ^ HIBYTE(v42)) - ((a6 + v40) & (2 * (v39 ^ HIBYTE(v42)))) + 95;
  a35 = (BYTE2(v42) ^ 0xF) - ((2 * (BYTE2(v42) ^ 0xF)) & 0xBF) + 95;
  a36 = (a1 ^ BYTE1(v42)) - ((2 * (a1 ^ BYTE1(v42))) & 0xBF) + 95;
  a37 = v42 ^ a3;
  return (*(v41 + 8 * (a6 + a4)))(a1, a2, a3, a4, a5, a6, &a34, a7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, v44, a25);
}

void sub_1000B9AE8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = (*(a1 + 32) ^ 0xFEEBFEFFF6CEF5EFLL) + 0x114010088257245 + ((2 * *(a1 + 32)) & 0xFDD7FDFFED9DEBDELL);
  v4 = v3 < 0x7EF46834;
  v5 = v3 > v2 + 2129946676;
  if (v2 > 0xFFFFFFFF810B97CBLL != v4)
  {
    v5 = v4;
  }

  v1 = *(a1 + 16) - 906386353 * ((2 * (a1 & 0x2E626FA7) - a1 + 1369280600) ^ 0x609C5D7C);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1000B9CF4(uint64_t result)
{
  if ((v1 ^ 0xD7E8E9D7) + ((2 * v1) & 0xAFD09088) == -672601641)
  {
    v2 = -371865839;
  }

  else
  {
    v2 = 371891401;
  }

  *(result + 16) = v2;
  return result;
}

uint64_t sub_1000B9E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v35 = veorq_s8(**v32, xmmword_100F524C0);
  *(v34 - 128) = veorq_s8(*v32[5], xmmword_100F524B0);
  *(v34 - 112) = v35;
  return (*(v31 + 8 * (a1 ^ (1017 * (v33 == 0)))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, v32, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31);
}

uint64_t sub_1000B9F48()
{
  v3 = (*(v2 + 8 * (v0 + 42979)))();
  v4 = STACK[0x408];
  *(v1 + 24) = 0;
  return (*(v4 + 8 * v0))(v3);
}

uint64_t sub_1000B9F78(uint64_t a1)
{
  v5 = *(a1 - 16);
  STACK[0x6C8] = v3;
  STACK[0x6D8] = v3;
  *(v3 + 8) = ((4703 * (v2 ^ 0x1A96u)) ^ 0x3CE25E0EC52083E1) + v1 - v5;
  return (*(v4 + 8 * v2))();
}

uint64_t sub_1000BA00C@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  a5 = (v8 + 23592) ^ (1603510583 * (((&a3 | 0x1A7A1A39) - (&a3 & 0x1A7A1A38)) ^ 0x8DA12892));
  a6 = v7;
  a3 = v7;
  a4 = a1;
  v9 = (*(v6 + 8 * (v8 + 42842)))(&a3);
  return (*(v6 + 8 * v8))(v9);
}

uint64_t sub_1000BA324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, uint64_t a26, uint64_t a27, int a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, uint64_t a37, uint64_t a38)
{
  v40 = a25 + a28 + a13 + 3 * a36 + 1045290105 + v38;
  v41 = a14 ^ v40 ^ ((v40 ^ 0x33E9B2DE) + 1220186269) ^ ((v40 ^ 0x91B68D51) - 354046188) ^ ((v40 ^ 0xFFFFFFD7) - 2069045866) ^ ((((v39 - 899269144) | 0x1030) ^ 0xA25F2698) + (v40 ^ 0xD90C1DE5));
  return (*(a38 + 8 * ((239 * (((a15 + (((v41 ^ 0x8CE55E6F) + 1591642075) ^ ((v41 ^ 0x81CC54F9) + 1408732493) ^ ((v41 ^ 0xA61591B6) + 1949190148))) & 1) == 0)) ^ (v39 - 899250847))))();
}

uint64_t sub_1000BA50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (v12 != 2)
  {
    a7 = v10;
  }

  if (v12)
  {
    v14 = a3;
  }

  else
  {
    v14 = v8;
  }

  if (v9 <= (v11 ^ 0x391Au))
  {
    a7 = v14;
  }

  return (*(v7 + 8 * v11))(a7, a2, a3, a4, a5, v11 ^ 0x6DF3u);
}

uint64_t sub_1000BA540@<X0>(unsigned int a1@<W1>, unsigned int a2@<W3>, unsigned int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42)
{
  v48 = *(&STACK[0x74C] + (v44 ^ (v45 >> 2)));
  v49 = v42 < a1;
  *(v46 + a3) = (((v48 ^ a2) >> (8 * (v45 & 3))) ^ 0xFB) + ((2 * ((v48 ^ a2) >> (8 * (v45 & 3)))) & 0xF7) + 120;
  if (v49 == v43 < 0x7A1FA93A)
  {
    v49 = v43 < v42;
  }

  return (*(v47 + 8 * ((!v49 | (8 * !v49)) ^ a42)))(v43 < v42);
}

uint64_t sub_1000BAAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, int a12, uint64_t *a13, unsigned int a14, uint64_t a15, char *a16)
{
  a15 = v17;
  a16 = &a10;
  a13 = &a9;
  a14 = v18 - 353670337 * ((((2 * (&a12 ^ 0xA3D4FD14)) | 0xD9BAE72) - (&a12 ^ 0xA3D4FD14) + 2033330375) ^ 0x9138D210) - 5909;
  v19 = (*(v16 + 8 * (v18 ^ 0x8276)))(&a12);
  return (*(v16 + 8 * v18))(v19);
}

uint64_t sub_1000BABFC@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x57C]) = a1;
  v3 = STACK[0x6F0];
  v4 = (*(v2 + 8 * (v1 + 43991)))(STACK[0x6F0] + 16, 0);
  v5 = STACK[0x3E0];
  v5[2] = *(v3 + 16) - (((v1 + 1735) ^ 0x6134076E) & (2 * *(v3 + 16))) + 815403329;
  v5[1] = *(v3 + 24) - ((2 * *(v3 + 24)) & 0x61342282) + 815403329;
  v6 = (*(v2 + 8 * (v1 + 43934)))(v4);
  v5[3] = v6 - ((2 * v6) & 0x61342282) + 815403329;
  v7 = (*(v2 + 8 * (v1 ^ 0xD5E6)))();
  *v5 = v7 - ((2 * v7) & 0x61342282) + 815403329;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_1000BACF8@<X0>(int a1@<W0>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  v35 = v34 ^ 0xB31D;
  v36 = ((a1 ^ 0xDBD74DBC) + 196670687) ^ a1 ^ ((a1 ^ 0x34D50294) - 457524233) ^ ((a1 ^ 0xFEBFFDD7) + 785401014) ^ ((a1 ^ 0x3E2DA4DE ^ ((((v34 ^ 0xB31D) + 2006669388) & 0xBDFDCBDA) - 899250780)) - 297644799);
  v37 = v33 + 59982018 + (((v36 ^ 0x99D19C58) + 12503042) ^ ((v36 ^ 0x7076B5D2) - 384179828) ^ ((v36 ^ 0x6940A3AC) - 265291786)) - 442729147;
  v38 = *(&a33 + a27);
  v39 = ((v38 ^ 0x2FF74FF5) - 6752616) ^ v38 ^ ((v38 ^ 0xE288DB53) + 854024754) ^ ((v38 ^ 0x9F002DCC) + 1332712623) ^ ((v38 ^ 0x7DEFFFF7) - 1384102250) ^ v37 ^ ((v37 ^ 0x895F3F51) + 638862904) ^ ((v37 ^ 0x18F92340) - 1213048281) ^ ((v37 ^ 0xBCED6557) + 329653298);
  return (*(a30 + 8 * (v35 | (2 * (((*(&a33 + a2) - 1628029203 + (((v39 ^ ((v37 ^ 0x7DFFFFDF) - 759920966) ^ 0x8B8C6A86) - 976105224) ^ ((v39 ^ ((v37 ^ 0x7DFFFFDF) - 759920966) ^ 0x5533BE9A) + 460195052) ^ ((v39 ^ ((v37 ^ 0x7DFFFFDF) - 759920966) ^ 0xA19B1418) - 272191894))) & 7) != 2)))))();
}

void sub_1000BB02C(uint64_t a1)
{
  v1 = *(a1 + 24) - 297845113 * ((-2 - ((~a1 | 0x508A41D3) + (a1 | 0xAF75BE2C))) ^ 0x27B95D4D);
  v5 = (906386353 * ((((2 * &v5) | 0xB28B2662) - &v5 + 649751759) ^ 0xE8445E15)) ^ (v1 - 1762663533);
  v6 = *(&off_1010A0B50 + (v1 ^ 0x994D)) - 1033873191;
  v2 = *(&off_1010A0B50 + v1 - 36796) - 810145054;
  (*&v2[8 * v1 + 112104])(&v5);
  if (*(*(&off_1010A0B50 + (v1 ^ 0x96B3)) - 250462103))
  {
    v3 = *(*(&off_1010A0B50 + v1 - 33773) - 914251479) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000BB4B8()
{
  v4 = *(v3 + 3);
  *v2 = 4;
  return (*(v1 + 8 * (((v4 == 87) * (v0 - 9004)) ^ v0)))();
}

uint64_t sub_1000BB620@<X0>(int a1@<W8>)
{
  v4 = 4 * (a1 ^ 0x817);
  *(v2 + ((v4 - 23257) ^ 0xFFFFFFFFF0E39210) + v1) = 0;
  return (*(v3 + 8 * v4))();
}

void sub_1000BB6D0(uint64_t a1)
{
  v1 = *(a1 + 24) + 1012831759 * (((a1 | 0x3604CA3) - (a1 & 0x3604CA3)) ^ 0x13F35A29);
  v2 = *(a1 + 16);
  v3 = *a1;
  v4 = *(&off_1010A0B50 + (v1 ^ 0x9438)) - 810145054;
  (*&v4[8 * (v1 ^ 0x5AB9)])(*(&off_1010A0B50 + (v1 ^ 0x82CC)) - 744342282, v8, 16);
  v5 = (v2 ^ 0xFBFFBEED9FDF9D76) + 0x40041130033ED1FLL + ((2 * v2) & 0xF7FF7DDB3FBF3AECLL);
  v6 = v5 < 0xA0138A95;
  v7 = v5 > v3 + 2685635221u;
  if (v3 > 0xFFFFFFFF5FEC756ALL != v6)
  {
    v7 = v6;
  }

  __asm { BRAA            X11, X17 }
}

uint64_t sub_1000BB8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  v52 = *(*(a50 + 88) - 0x10C21BA05B83C264);
  v53 = (((LODWORD(STACK[0x60C]) ^ 0xC2682552) + 1033362094) ^ ((LODWORD(STACK[0x60C]) ^ 0xED525ABB) + ((v51 + 1109963881) & 0xBDD73DF6 ^ 0x12AD8933)) ^ ((LODWORD(STACK[0x60C]) ^ (((v51 - 1680302169) & 0x6427B7FF) - 957405381)) + 957368072)) + 151101189;
  v54 = v53 < 0x1F2BD7F4;
  v55 = v52 + 522967028 < v53;
  if (v52 > 0xE0D4280B != v54)
  {
    v56 = v54;
  }

  else
  {
    v56 = v55;
  }

  return (*(v50 + 8 * ((74 * !v56) ^ v51)))();
}

uint64_t sub_1000BB9F8(int a1, double a2, __n128 a3)
{
  a3.n128_u16[0] = -9767;
  a3.n128_u8[2] = -39;
  a3.n128_u8[3] = -39;
  a3.n128_u8[4] = -39;
  a3.n128_u8[5] = -39;
  a3.n128_u8[6] = -39;
  a3.n128_u8[7] = -39;
  return (*(v3 + 8 * a1))(xmmword_100F523B0, a3);
}

uint64_t sub_1000BBADC(int a1, unsigned int a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v22 = *(a7 + ((v8 ^ v9) + (v20 ^ (v8 + v10)) + (v11 & (2 * v20)) + v12) % a8);
  v23 = v22 | (*(a7 + ((a4 ^ a1) + a5 + (a3 & (2 * a4))) % a8) << 16) | (*(a6 + ((v19 ^ v15) - 933134255 + (v16 & (2 * v19))) % a2) << 8);
  v24 = v23 - 2 * (v23 & 0xEE1823 ^ v22 & 2);
  v25 = *(a6 + ((v18 ^ 0x73D3DFD7) - 1943265239 + ((2 * v18) & 0x1BFAEu)) % a2) << 24;
  *v14 = (((v24 - 789702623) ^ 0x3A04A189) & ~v25 | v25 & 0x15000000) ^ 0x8A739C7D;
  v27 = v13 < 2 || v17 < 2;
  return (*(v21 + 8 * ((45 * v27) ^ v8)))();
}

uint64_t sub_1000BBC08(uint64_t a1, int a2)
{
  *(v5 - 1) = v7;
  *v5 = v7;
  return (*(v6 + 8 * ((((v4 | v3) >= 0) * a2) ^ v2)))();
}

uint64_t sub_1000BBCD4@<X0>(int a1@<W8>, __n128 a2@<Q0>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v34.n128_u64[0] = (v32 + 13) & 0xF;
  v34.n128_u64[1] = (v32 + 12) & 0xF;
  v35.n128_u64[0] = (v32 + 11) & 0xF;
  v35.n128_u64[1] = (v32 + 10) & 0xF;
  v36.n128_u64[0] = (v32 + 9) & 0xF;
  v36.n128_u64[1] = v33 & 0xF ^ 0xBLL;
  v39.val[0].i64[0] = (v32 + 7) & 0xF;
  v39.val[0].i64[1] = (v32 + 6) & 0xF;
  v39.val[1].i64[0] = (v32 + 5) & 0xF;
  v39.val[1].i64[1] = (v32 + 4) & 0xF;
  v39.val[2].i64[0] = (v32 + 3) & 0xF;
  v39.val[2].i64[1] = (v32 + 2) & 0xF;
  v39.val[3].i64[0] = (v32 + 1) & 0xF;
  v39.val[3].i64[1] = v32 & 0xF;
  v37.n128_u64[0] = 0x7171717171717171;
  v37.n128_u64[1] = 0x7171717171717171;
  return (*(a32 + 8 * a1))(a2, v34, v35, v36, xmmword_100BC76B0, vqtbl4q_s8(v39, xmmword_100BC76B0), v37);
}

uint64_t sub_1000BBECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v7 + 8 * v5);
  v12 = *v9;
  v13 = *v9 + 4;
  v14 = __ROR8__(v13 & 0xFFFFFFFFFFFFFFF8, 8);
  v15 = (v14 - 0x296E95066F186A7FLL) ^ 0xB3A94E2F7B1B987CLL;
  v16 = (__ROR8__((v14 - 0x296E95066F186A7FLL) ^ 0x72219E3FC273472, 8) + v15) ^ a1;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ v10;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (((2 * (v20 + v19)) | 0x9D9845494FC970F2) - (v20 + v19) - 0x4ECC22A4A7E4B879) ^ 0xF3B10F4D66EE1913;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0x82B08017BF43C069;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (((v25 + v24) & a3 ^ 0x983240801AB2500) + ((v25 + v24) ^ 0x961489F57C445A24) - (((v25 + v24) ^ 0x961489F57C445A24) & a3)) ^ 0x310EFE87C70BA17CLL;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (((v28 + v27) | 0x4AD00319D698339ELL) - ((v28 + v27) | a5) + a5) ^ 0xC562225A28435F2DLL;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = __ROR8__(v29, 8);
  *(v12 + 4) = v8 ^ 0x5C ^ (((((2 * (v31 + v30)) | 0x85FFF0CB5B49AA56) - (v31 + v30) - 0x42FFF865ADA4D52BLL) ^ 0xD9E38C42C8BADA33) >> (8 * (v13 & 7u)));
  v32 = __ROR8__((v12 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v33 = (0x296E95066F186A7ELL - v32) & 0x6817BAF44AE008C1 | (v32 - 0x296E95066F186A7FLL) & 0x91E8450BB51FF73ELL;
  v34 = v33 ^ 0x6935A317B6C73CB3;
  v33 ^= 0xDDBEF4DB31FB90BDLL;
  v35 = (__ROR8__(v34, 8) + v33) ^ a1;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ v10;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0xBD7D2DE9C10AA16ALL;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (v41 + v40 - ((2 * (v41 + v40)) & 0x88505E8AE28CC05ELL) - 0x3BD7D0BA8EB99FD1) ^ 0x4698AF52CE05A046;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0xAA9DDABAE2E4D47CLL;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = __ROR8__(v44, 8);
  *(v12 + 5) = v6 ^ 0x48 ^ (((__ROR8__((v46 + v45 - ((2 * (v46 + v45)) & 0xFEB301930C096308) + 0x7F5980C98604B184) ^ 0xF0EBA18A78DFDD37, 8) + ((v46 + v45 - ((2 * (v46 + v45)) & 0xFEB301930C096308) + 0x7F5980C98604B184) ^ 0xF0EBA18A78DFDD37 ^ __ROR8__(v45, 61))) ^ 0x9B1C7427651E0F18) >> (8 * ((v12 + 5) & 7)));
  return v11();
}

uint64_t sub_1000BC24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((v4 - 350152821) <= 0x40)
  {
    v7 = 64;
  }

  else
  {
    v7 = v4 - 350152821;
  }

  return (*(v6 + 8 * (((((v5 + 7917) | 0x514) - 74834 + 37 * (v5 ^ 0x4602)) * ((v7 - v4 + 350152821) < 0x1F)) ^ v5)))(a1, a2, a3, a4, 4294950053, 8099);
}

uint64_t sub_1000BFED0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62, int a63)
{
  LODWORD(STACK[0x278]) = v69;
  LODWORD(STACK[0x3A8]) = a6;
  LODWORD(STACK[0x3AC]) = v68;
  LODWORD(STACK[0x31C]) = a68;
  LOWORD(STACK[0x236]) = a67;
  LOWORD(STACK[0x292]) = v70;
  LODWORD(STACK[0x27C]) = a61;
  LOWORD(STACK[0x38E]) = a64;
  LODWORD(STACK[0x2F0]) = a4;
  return (*(v71 + 8 * a46))();
}

uint64_t sub_1000BFF54@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v21 = *(a17 + 4) + a1;
  *(v20 - 120) = v18;
  *(v20 - 112) = -1022166737 * ((((v20 - 120) | 0xCB61271E) - (v20 - 120) + ((v20 - 120) & 0x349ED8E0)) ^ 0x7171C68C) - 245349323 * v21 + 649371663;
  *(v20 - 108) = 1022166737 * ((((v20 - 120) | 0xCB61271E) - (v20 - 120) + ((v20 - 120) & 0x349ED8E0)) ^ 0x7171C68C) - 1497636593 + v19;
  v22 = (*(v17 + 8 * (v19 ^ 0x594456B5)))(v20 - 120);
  return (*(v17 + 8 * (v19 ^ (v19 - 1404427404) & 0xFA71EAFB ^ 0x59448B34 ^ (961 * (((*(v20 - 104) - v19) | (v19 - *(v20 - 104))) >> 31)))))(v22);
}

uint64_t sub_1000C006C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = (v10 + 602266212);
  v16 = (*(v13 + 8 * (v10 + 51992)))(v12, a10, v11 + v14);
  return (*(v13 + 8 * (v15 ^ 0x23E5EA5D ^ (((((v16 - (v11 + 0x4FE13FE18740FA01) - (v15 | ((v15 ^ 0x93FB1A7A) << 32))) | ((v15 | ((v15 ^ 0x93FB1A7A) << 32)) - (v16 - (v11 + 0x4FE13FE18740FA01)))) & 0x8000000000000000) == 0) * (((410 * (v15 ^ 0x23E5DA7A) - 411161103) & 0xFFBDE77F) + 415501946)))))();
}

uint64_t sub_1000C016C(__n128 a1)
{
  a1.n128_u16[0] = 24415;
  a1.n128_u8[2] = 95;
  a1.n128_u8[3] = 95;
  a1.n128_u8[4] = 95;
  a1.n128_u8[5] = 95;
  a1.n128_u8[6] = 95;
  a1.n128_u8[7] = 95;
  return (*(v2 + 8 * v1))(a1);
}

uint64_t sub_1000C020C@<X0>(unsigned int a1@<W6>, int a2@<W8>, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, int a10, int a11)
{
  *a4 = a2;
  LODWORD(STACK[0x20C]) = a10;
  STACK[0x210] = a8;
  v17 = (((a11 ^ 0xE204D68D) + ((v11 + 7709) ^ 0x1DFB61C8)) ^ ((a11 ^ 0xF2EE04BA) + 219282246) ^ (((v11 - 10779) | 0x1938) + (a11 ^ 0xF93F1526) + 113299743)) - (((v12 ^ 0xA1AFCA43) + 1582314941) ^ ((v12 ^ 0x3DE988B9) - 1038715065) ^ ((v12 ^ 0x759385EB) - 1972602347)) + 224985893;
  v18 = (v17 ^ 0xE0C4FCDA) & (2 * (v17 & 0xF296FCDB)) ^ v17 & 0xF296FCDB;
  v19 = ((2 * (v17 ^ 0x45C89D48)) ^ 0x6EBCC326) & (v17 ^ 0x45C89D48) ^ (2 * (v17 ^ 0x45C89D48)) & 0xB75E6192;
  v20 = v19 ^ 0x91422091;
  v21 = (v19 ^ 0x61C4100) & (4 * v18) ^ v18;
  v29 = v11;
  v22 = ((4 * v20) ^ 0xDD79864C) & v20 ^ (4 * v20) & 0xB75E6190;
  v23 = (v22 ^ 0x95580000) & (16 * v21) ^ v21;
  v24 = ((16 * (v22 ^ 0x22066193)) ^ 0x75E61930) & (v22 ^ 0x22066193) ^ (16 * (v22 ^ 0x22066193)) & 0xB75E6190;
  v25 = v23 ^ 0xB75E6193 ^ (v24 ^ 0x35460100) & (v23 << 8);
  LODWORD(STACK[0x218]) = v17 ^ (2 * ((v25 << 16) & 0x375E0000 ^ v25 ^ ((v25 << 16) ^ 0x61930000) & (((v24 ^ 0x82186083) << 8) & 0x375E0000 ^ 0x211E0000 ^ (((v24 ^ 0x82186083) << 8) ^ 0x5E610000) & (v24 ^ 0x82186083)))) ^ 0x37DBF8EC;
  v26 = *(a6 + 16);
  STACK[0x220] = a7 + (v12 ^ a1);
  v27 = (*(v14 + v13 * v15 + 8))(v26);
  return (*(v16 + 8 * ((18785 * (v27 == ((2 * v27) & 0xD3AB8E22))) ^ v29)))(v27);
}

uint64_t sub_1000C05E8@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, unsigned int a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>)
{
  v24 = (((v11 ^ 0x669A6286) - 1721393798) ^ ((v11 ^ 0xEABFFB95) + 356516971) ^ ((v14 ^ v11) - 1710251522)) - 67745097;
  v25 = (v24 ^ 0xC9DF791C) & (2 * (v24 & 0xEDDF7C59)) ^ v24 & 0xEDDF7C59;
  v26 = ((2 * (v24 ^ 0x8957613C)) ^ 0xC9103ACA) & (v24 ^ 0x8957613C) ^ (2 * (v24 ^ 0x8957613C)) & v17;
  v27 = v26 ^ 0x24880525;
  v28 = (v26 ^ 0x40001040) & (4 * v25) ^ v25;
  v29 = ((4 * v27) ^ v18) & v27 ^ (4 * v27) & v17;
  v30 = (v29 ^ v20) & (16 * v28) ^ v28;
  v31 = ((16 * (v29 ^ v19)) ^ v21) & (v29 ^ v19) ^ (16 * (v29 ^ v19)) & v22;
  v32 = v30 ^ v15 ^ (v31 ^ v12) & (v30 << 8);
  v33 = v24 ^ (2 * ((v32 << 16) & a2 ^ v32 ^ ((v32 << 16) ^ a4) & (((v31 ^ v23) << 8) & a2 ^ a3 ^ (((v31 ^ v23) << 8) ^ a1) & (v31 ^ v23))));
  *((v33 ^ a5) - v13 + a6 + a7) = *(v9 + (v33 ^ a5) + v10) - ((2 * *(v9 + (v33 ^ a5) + v10)) & 0xBF) + 95;
  return (*(v8 + 8 * (((v33 != a5) * v16) ^ a8)))();
}

uint64_t sub_1000C0808@<X0>(char a1@<W1>, int a2@<W2>, int a3@<W8>)
{
  v13 = (v7 & v8 ^ v9) + v10;
  *(v12 + v13) = *(v6 + (v13 & 0xF)) ^ *(v3 + v13) ^ *((v13 & 0xF) + v4 + 4) ^ *((v13 & 0xF) + v5 + 3) ^ ((v13 & 0xF) * a1);
  return (*(v11 + 8 * (((v13 == 0) * a2) ^ a3)))();
}

uint64_t sub_1000C0860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52, char a53, int a54, int a55, int a56, int a57, int a58, int a59, int a60, int a61, int a62, int a63)
{
  LODWORD(STACK[0x294]) = 0;
  *(v90 - 136) = *(v90 - 116) < 0x7DE76CFEu;
  v91 = v86 - 1588828788;
  v92 = (v86 - 1184187638) & 0x4695EFEE;
  v93 = v87 & 0xFFFFFFF0 ^ 0xC72BE5AFLL;
  *(v90 - 200) = v93;
  v94 = v86;
  v95 = *(v89 + v93);
  LODWORD(STACK[0x298]) = v92;
  v96 = (v92 - 51194) & v87 ^ 0xC72BE5AFLL;
  *(v90 - 152) = v96;
  v97 = *(v89 + v96);
  v98 = STACK[0x248];
  v99 = *(STACK[0x248] + (v95 ^ 0x85)) ^ v95;
  v100 = *(STACK[0x248] + (v97 ^ 0x3A));
  LODWORD(STACK[0x2AC]) = v91 | 0x18803D42;
  v101 = ((v91 | 0x18803D42) ^ 0x4633403D) & v87 ^ 0xC72BE5A7;
  *(v90 - 192) = v101;
  v102 = *(v89 + v101);
  v103 = v87 & 0xFFFFFFFB ^ 0xC72BE5A7;
  *(v90 - 144) = v103;
  v104 = STACK[0x230];
  v105 = STACK[0x238];
  v106 = *(STACK[0x230] + 4 * (v102 ^ 0x23)) + 766126114;
  v107 = *(STACK[0x238] + 4 * (*(v89 + v103) ^ 0x9ELL)) - 457058400;
  v108 = (v107 >> 3) & 0x10000000;
  if ((v108 & v107) != 0)
  {
    v108 = -v108;
  }

  v109 = v87 ^ 0xC72BE5A7;
  *(v90 - 184) = v109;
  v110 = *(v89 + v109);
  LODWORD(v109) = v108 + v107;
  LODWORD(v110) = *(v105 + 4 * (v110 ^ 0xC4)) - 457058400;
  v111 = v87 & 0xFFFFFFF8 ^ 0xC72BE5A7;
  *(v90 - 176) = v111;
  v112 = *(v89 + v111);
  v113 = v87;
  v114 = v87 & 0xFFFFFFF1 ^ 0xC72BE5AFLL;
  *(v90 - 168) = v114;
  LODWORD(v112) = *(v98 + (v112 ^ 0xF)) ^ v112;
  v115 = STACK[0x240];
  v116 = *(STACK[0x240] + 4 * (*(v89 + v114) ^ 0xF7));
  v117 = v113 & 0xFFFFFFFD ^ 0xC72BE5A7;
  *(v90 - 160) = v117;
  v118 = *(v115 + 4 * (*(v89 + v117) ^ 0x14)) + 217619872;
  v119 = v113 & 0xFFFFFFFC ^ 0xC72BE5A7;
  *(v90 - 232) = v119;
  v120 = *(v98 + (*(v89 + v119) ^ 0xF9)) ^ *(v89 + v119);
  v121 = v113 & 0xFFFFFFF2 ^ 0xC72BE5AFLL;
  *(v90 - 248) = v121;
  v122 = v110 ^ v106 ^ (v110 >> 3) ^ (v110 >> 6);
  LODWORD(v110) = *(v104 + 4 * (*(v89 + v121) ^ 0x3BLL));
  v123 = v122 ^ v118 ^ (32 * v118) ^ v120;
  v124 = v113 & 0xFFFFFFF3 ^ 0xC72BE5AFLL;
  STACK[0x2C8] = v124;
  LODWORD(v124) = *(v105 + 4 * (*(v89 + v124) ^ 0x8ELL)) - 457058400;
  v125 = (v116 + 217619872) ^ v99 ^ (32 * (v116 + 217619872)) ^ (v110 + 766126114) ^ v124 ^ (v124 >> 3) ^ (v124 >> 6);
  v126 = v113 & 0xFFFFFFFA ^ 0xC72BE5A7;
  STACK[0x2C0] = v126;
  LODWORD(v126) = (((*(v89 + v126) ^ 0xB0) - (*(v89 + v126) ^ 0x10)) ^ 0xFFFFFFC0) + (*(v89 + v126) ^ 0xB0);
  v127 = v113 & 0xFFFFFFF7 ^ 0xC72BE5AFLL;
  *(v90 - 208) = v127;
  v128 = *(v105 + 4 * (*(v89 + v127) ^ 0x2ALL));
  LODWORD(v126) = (v107 >> 3) & 0xFFFFFFF ^ (v107 >> 6) ^ v112 ^ (*(v104 + 4 * v126) + 766126114);
  v129 = v113 & 0xFFFFFFF9 ^ 0xC72BE5A7;
  *(v90 - 240) = v129;
  LODWORD(v129) = *(v115 + 4 * (*(v89 + v129) ^ 0xC0)) + 217619872;
  LODWORD(v127) = v126 ^ v109 ^ v129 ^ (32 * v129);
  *(v90 - 212) = v113;
  v130 = v113 & 0xFFFFFFF6 ^ 0xC72BE5AFLL;
  *(v90 - 256) = v130;
  v131 = v113 & 0xFFFFFFF5 ^ 0xC72BE5AFLL;
  *(v90 - 224) = v131;
  LODWORD(v126) = (v128 - 457058400) ^ v97 ^ v100 ^ ((v128 - 457058400) >> 3) ^ ((v128 - 457058400) >> 6);
  v132 = *(v115 + 4 * (*(v89 + v131) ^ 0x61)) + 217619872;
  v133 = v126 ^ (*(v104 + 4 * (*(v89 + v130) ^ 0x47)) + 766126114) ^ v132 ^ (32 * v132);
  LODWORD(v126) = STACK[0x214];
  LODWORD(STACK[0x2A8]) = v123;
  v134 = v126 ^ v123;
  v135 = v126 ^ v123 ^ 0x8EF3B334;
  v136 = *(v88 + 8 * (v94 - 5186)) - 787566867;
  v137 = *(v88 + 8 * (v94 - 6637));
  v138 = STACK[0x218];
  LODWORD(STACK[0x2A0]) = v127;
  v139 = BYTE2(v138) ^ BYTE2(v127);
  v140 = v138 ^ v127 ^ 0xEC6B9D72;
  v141 = *(v136 + 4 * (HIBYTE(v140) ^ 0x11));
  v142 = v137 - 1240547350;
  LODWORD(v137) = STACK[0x204];
  LODWORD(STACK[0x2A4]) = v125;
  LODWORD(v130) = v137 ^ v125;
  LODWORD(v137) = LODWORD(STACK[0x200]) ^ ((HIBYTE(v140) ^ 0x7CE1BDEB) + HIBYTE(v140)) ^ v141 ^ *(v142 + 4 * ((v137 ^ v125) >> 8));
  v143 = *(v88 + 8 * (v94 ^ 0xCA8)) - 269779995;
  v144 = *(v88 + 8 * (v94 ^ 0x1AA0)) - 343309923;
  v145 = *(v143 + 4 * (BYTE2(v135) ^ 0xCBu));
  LODWORD(v115) = STACK[0x208];
  LODWORD(STACK[0x29C]) = v133;
  LODWORD(v115) = v115 ^ v133;
  v146 = v137 ^ *(v144 + 4 * v115) ^ v145 ^ (((4 * v145) ^ 0x7D247E48) + 220742584);
  v147 = *(v143 + 4 * (v139 ^ 0x74u));
  v148 = a86 ^ ((BYTE3(v115) ^ 0x7CE1BDEB) + BYTE3(v115)) ^ v147 ^ *(v136 + 4 * (BYTE3(v115) ^ 0x11)) ^ *(v144 + 4 * v130) ^ (((4 * v147) ^ 0x7D247E48) + 220742584) ^ *(v142 + 4 * (BYTE1(v135) ^ 0xE8u));
  v149 = a85 ^ ((HIBYTE(v135) ^ 0xD3) + (HIBYTE(v135) ^ 0x7CE1BD38)) ^ *(v143 + 4 * BYTE2(v130)) ^ *(v142 + 4 * BYTE1(v115)) ^ (((4 * *(v143 + 4 * BYTE2(v130))) ^ 0x7D247E48) + 220742584) ^ *(v136 + 4 * (HIBYTE(v135) ^ 0xC2)) ^ *(v144 + 4 * v140) ^ 0x902B37D4;
  v150 = a84 ^ ((BYTE3(v130) ^ 0x7CE1BDEB) + BYTE3(v130)) ^ *(v136 + 4 * (BYTE3(v130) ^ 0x11)) ^ *(v142 + 4 * BYTE1(v140)) ^ *(v143 + 4 * BYTE2(v115)) ^ *(v144 + 4 * (v134 ^ 0xCBu)) ^ (((4 * *(v143 + 4 * BYTE2(v115))) ^ 0x7D247E48) + 220742584) ^ 0x6BEE8FC9;
  v151 = *(v143 + 4 * (BYTE2(v146) ^ 0x22u));
  v152 = a83 ^ ((HIBYTE(v148) ^ 0x7CE1BD27) + (HIBYTE(v148) ^ 0xCC)) ^ *(v136 + 4 * (HIBYTE(v148) ^ 0xDD)) ^ *(v142 + 4 * BYTE1(v149)) ^ *(v144 + 4 * v150) ^ v151 ^ (((4 * v151) ^ 0x7D247E48) + 220742584);
  LODWORD(v137) = a82 ^ ((HIBYTE(v149) ^ 0x7CE1BDEB) + HIBYTE(v149)) ^ *(v143 + 4 * BYTE2(v150)) ^ *(v142 + 4 * (BYTE1(v148) ^ 0x6Fu)) ^ *(v136 + 4 * (HIBYTE(v149) ^ 0x11)) ^ (((4 * *(v143 + 4 * BYTE2(v150))) ^ 0x7D247E48) + 220742584) ^ *(v144 + 4 * (v146 ^ 0x16u));
  v153 = LODWORD(STACK[0x27C]) ^ ((((v146 ^ 0x6F3D5816u) >> 24) ^ 0x7CE1BDEB) + ((v146 ^ 0x6F3D5816u) >> 24)) ^ *(v143 + 4 * BYTE2(v149)) ^ *(v142 + 4 * BYTE1(v150)) ^ *(v144 + 4 * (v148 ^ 0xDEu)) ^ *(v136 + 4 * (((v146 ^ 0x6F3D5816u) >> 24) ^ 0x11)) ^ (((4 * *(v143 + 4 * BYTE2(v149))) ^ 0x7D247E48) + 220742584) ^ 0x68F0EAD0;
  LODWORD(v110) = *(v143 + 4 * (BYTE2(v148) ^ 0xC1u));
  v154 = a81 ^ ((HIBYTE(v150) ^ 0x7CE1BDEB) + HIBYTE(v150)) ^ *(v136 + 4 * (HIBYTE(v150) ^ 0x11)) ^ v110 ^ *(v144 + 4 * v149) ^ *(v142 + 4 * ((v146 ^ 0x5816) >> 8)) ^ (((4 * v110) ^ 0x7D247E48) + 220742584) ^ 0xFD7B0A9C;
  LODWORD(v130) = (v137 ^ 0x9F4A6FEE) >> 24;
  v155 = *(v136 + 4 * (v130 ^ 0x11));
  v156 = a80 ^ ((HIBYTE(v153) ^ 0x7CE1BDEB) + HIBYTE(v153)) ^ *(v143 + 4 * (BYTE2(v137) ^ 0x4Au)) ^ *(v136 + 4 * (HIBYTE(v153) ^ 0x11)) ^ *(v144 + 4 * (v152 ^ 0xA3u)) ^ *(v142 + 4 * BYTE1(v154)) ^ (((4 * *(v143 + 4 * (BYTE2(v137) ^ 0x4Au))) ^ 0x7D247E48) + 220742584);
  v157 = LODWORD(STACK[0x22C]) ^ ((((v152 ^ 0xCFFCE1A3) >> 24) ^ 0x7CE1BDEB) + ((v152 ^ 0xCFFCE1A3) >> 24)) ^ *(v143 + 4 * BYTE2(v153)) ^ *(v142 + 4 * ((v137 ^ 0x6FEE) >> 8)) ^ *(v144 + 4 * v154) ^ *(v136 + 4 * (((v152 ^ 0xCFFCE1A3) >> 24) ^ 0x11)) ^ (((4 * *(v143 + 4 * BYTE2(v153))) ^ 0x7D247E48) + 220742584);
  v158 = a79 ^ (((v130 ^ 0x7CE1BDEB) + v130) & 0x93 | 0x41304100) ^ *(v143 + 4 * BYTE2(v154)) ^ v155 & 0x7199D4DB ^ *(v142 + 4 * (BYTE1(v152) ^ 0x4Cu)) ^ (((v130 ^ 0x7CE1BDEB) + v130) & 0x8400B24 ^ 0x2080348 ^ v155 & 0x8E662B24) & (((v130 ^ 0x7CE1BDEB) + v130) & 0xDB ^ 0xCF7E6B6C) ^ *(v144 + 4 * v153) ^ (((4 * *(v143 + 4 * BYTE2(v154))) ^ 0x7D247E48) + 220742584) ^ 0xF4639A73;
  v159 = *(v143 + 4 * ((v152 ^ 0xCFFCE1A3) >> 16));
  v160 = a78 ^ ((HIBYTE(v154) ^ 0x7CE1BDEB) + HIBYTE(v154)) ^ *(v136 + 4 * (HIBYTE(v154) ^ 0x11)) ^ *(v142 + 4 * BYTE1(v153)) ^ v159 ^ *(v144 + 4 * (v137 ^ 0xEEu)) ^ 0x94CD3F4C ^ (((4 * v159) ^ 0x7D247E48) + 220742584);
  v161 = *(v143 + 4 * BYTE2(v158));
  LODWORD(v137) = a77 ^ ((HIBYTE(v156) ^ 0xFA) + (HIBYTE(v156) ^ 0x7CE1BD11)) ^ *(v136 + 4 * (HIBYTE(v156) ^ 0xEB)) ^ v161 ^ *(v142 + 4 * BYTE1(v160)) ^ *(v144 + 4 * (v157 ^ 0x70u));
  v162 = ((4 * v161) ^ 0x7D247E48) + 220742584;
  v163 = *(v143 + 4 * (BYTE2(v156) ^ 0x4Eu));
  v164 = v137 ^ v162;
  LODWORD(v137) = (((4 * v163) ^ 0x7D247E48) - ((2 * ((4 * v163) ^ 0x7D247E48) + 441485168) & 0x5BE864E8) + 991721007) ^ v163;
  v165 = LODWORD(STACK[0x26C]) ^ *(v136 + 4 * (HIBYTE(v157) ^ 0xB9));
  v166 = v165 & 0x20000;
  v167 = (v137 & v165 & 0x20000) == 0;
  v168 = v137 ^ 0xF2BD2DE5;
  if (!v167)
  {
    v166 = -v166;
  }

  v169 = LODWORD(STACK[0x250]) ^ ((HIBYTE(v158) ^ 0x7CE1BDEB) + HIBYTE(v158)) ^ *(v136 + 4 * (HIBYTE(v158) ^ 0x11)) ^ *(v143 + 4 * BYTE2(v160)) ^ *(v142 + 4 * (BYTE1(v157) ^ 0xC9u)) ^ *(v144 + 4 * (v156 ^ 0x29u)) ^ (((4 * *(v143 + 4 * BYTE2(v160))) ^ 0x7D247E48) + 220742584);
  v170 = LODWORD(STACK[0x270]) ^ (((v157 >> 23) & 0x28) + 2095169003) ^ *(v142 + 4 * BYTE1(v158)) ^ *(v144 + 4 * v160) ^ v165 & 0xFFFDFFFF ^ 0xBEC9280B ^ (v166 + v168);
  v171 = *(v143 + 4 * (BYTE2(v157) ^ 0xA2u));
  v172 = a76 ^ ((HIBYTE(v160) ^ 0x7CE1BDEB) + HIBYTE(v160)) ^ v171 ^ *(v136 + 4 * (HIBYTE(v160) ^ 0x11)) ^ *(v144 + 4 * v158) ^ *(v142 + 4 * (BYTE1(v156) ^ 0xFDu)) ^ (((4 * v171) ^ 0x7D247E48) + 220742584) ^ 0x6409C28B;
  v173 = ((((v169 ^ 0xC2196776) >> 24) ^ 0x7CE1BDEB) + ((v169 ^ 0xC2196776) >> 24)) ^ LODWORD(STACK[0x278]) ^ *(v143 + 4 * BYTE2(v172)) ^ *(v136 + 4 * (((v169 ^ 0xC2196776) >> 24) ^ 0x11)) ^ *(v144 + 4 * (v164 ^ 0x7Bu)) ^ (((4 * *(v143 + 4 * BYTE2(v172))) ^ 0x7D247E48) + 220742584) ^ *(v142 + 4 * BYTE1(v170));
  v174 = *(v143 + 4 * BYTE2(v170));
  v175 = a75 ^ ((HIBYTE(v172) ^ 0x7CE1BDEB) + HIBYTE(v172)) ^ *(v136 + 4 * (HIBYTE(v172) ^ 0x11)) ^ *(v142 + 4 * (BYTE1(v164) ^ 0xB6u)) ^ *(v144 + 4 * (v169 ^ 0x76u)) ^ v174 ^ (4 * (((2 * v174) & 0x69421DC ^ 0x6902104) + (v174 ^ 0x1C030F7C)));
  v176 = LODWORD(STACK[0x274]) ^ ((HIBYTE(v164) ^ 0xC7) + (HIBYTE(v164) ^ 0x7CE1BD2C)) ^ *(v136 + 4 * (HIBYTE(v164) ^ 0xD6)) ^ *(v143 + 4 * ((v169 ^ 0xC2196776) >> 16)) ^ *(v142 + 4 * BYTE1(v172)) ^ (((4 * *(v143 + 4 * ((v169 ^ 0xC2196776) >> 16))) ^ 0x7D247E48) + 220742584) ^ 0x774E9FCC ^ *(v144 + 4 * v170);
  v177 = *(v143 + 4 * (BYTE2(v164) ^ 0x12u));
  v178 = a74 ^ v177 ^ *(v142 + 4 * ((v169 ^ 0x6776) >> 8)) ^ ((HIBYTE(v170) ^ 0x7CE1BDEB) + HIBYTE(v170)) ^ *(v144 + 4 * v172) ^ (((4 * v177) ^ 0x7D247E48) + 220742584) ^ 0x151401FD ^ *(v136 + 4 * (HIBYTE(v170) ^ 0x11));
  v179 = a73 ^ ((HIBYTE(v178) ^ 0x7CE1BDEB) + HIBYTE(v178)) ^ *(v143 + 4 * BYTE2(v176)) ^ *(v142 + 4 * (BYTE1(v173) ^ 0xC3u)) ^ *(v136 + 4 * (HIBYTE(v178) ^ 0x11)) ^ (((4 * *(v143 + 4 * BYTE2(v176))) ^ 0x7D247E48) + 220742584) ^ *(v144 + 4 * ((a75 ^ ((HIBYTE(v172) ^ 0xEB) + HIBYTE(v172)) ^ *(v136 + 4 * (HIBYTE(v172) ^ 0x11)) ^ *(v142 + 4 * (BYTE1(v164) ^ 0xB6u)) ^ *(v144 + 4 * (v169 ^ 0x76u)) ^ v174 ^ (4 * (((2 * v174) & 0xDC ^ 4) + (v174 ^ 0x7C)))) ^ 0xA0u));
  v180 = a72 ^ ((HIBYTE(v175) ^ 0x7CE1BD0D) + (HIBYTE(v175) ^ 0xE6)) ^ 0xEDE7C063 ^ *(v136 + 4 * (HIBYTE(v175) ^ 0xF7));
  v181 = (((4 * *(v143 + 4 * BYTE2(v178))) ^ 0x7D247E48) - ((2 * ((4 * *(v143 + 4 * BYTE2(v178))) ^ 0x7D247E48) + 441485168) & 0x28BE6028) - 1584958514) ^ *(v143 + 4 * BYTE2(v178));
  v182 = v180 & 0x10000;
  v167 = (v181 & v180 & 0x10000) == 0;
  v183 = v181 ^ 0x4B162F84;
  if (!v167)
  {
    v182 = -v182;
  }

  v184 = *(v143 + 4 * (BYTE2(v175) ^ 0xD6u));
  v185 = a71 ^ ((HIBYTE(v173) ^ 0x7CE1BD03) + (HIBYTE(v173) ^ 0xE8)) ^ *(v136 + 4 * (HIBYTE(v173) ^ 0xF9)) ^ *(v142 + 4 * BYTE1(v178)) ^ *(v144 + 4 * v176) ^ v184 ^ 0xBB44080D ^ (((4 * v184) ^ 0x7D247E48) + 220742584);
  v186 = *(v143 + 4 * (BYTE2(v173) ^ 0x58u));
  v187 = a70 ^ ((HIBYTE(v176) ^ 0x7CE1BDEB) + HIBYTE(v176)) ^ *(v136 + 4 * (HIBYTE(v176) ^ 0x11)) ^ v186 ^ *(v144 + 4 * v178) ^ (((4 * v186) ^ 0x7D247E48) + 220742584) ^ 0x5D1CBE56 ^ *(v142 + 4 * (BYTE1(v175) ^ 0xE9u));
  v188 = *(v142 + 4 * BYTE1(v176)) ^ *(v144 + 4 * (v173 ^ 0x96u)) ^ v180 & 0xFFFEFFFF ^ 0xEA2669FC ^ (v182 + v183);
  v189 = LODWORD(STACK[0x228]) ^ ((HIBYTE(v185) ^ 0x7CE1BDEB) + HIBYTE(v185)) ^ *(v136 + 4 * (HIBYTE(v185) ^ 0x11)) ^ *(v142 + 4 * ((v179 ^ 0xE5B) >> 8)) ^ *(v143 + 4 * BYTE2(v188)) ^ *(v144 + 4 * v187) ^ (((4 * *(v143 + 4 * BYTE2(v188))) ^ 0x7D247E48) + 220742584);
  v190 = a69 ^ ((HIBYTE(v187) ^ 0x7CE1BDEB) + HIBYTE(v187)) ^ *(v136 + 4 * (HIBYTE(v187) ^ 0x11)) ^ *(v143 + 4 * BYTE2(v185)) ^ *(v144 + 4 * (v179 ^ 0x5Bu)) ^ *(v142 + 4 * BYTE1(v188)) ^ (((4 * *(v143 + 4 * BYTE2(v185))) ^ 0x7D247E48) + 220742584) ^ 0xBAB39BAB;
  v191 = a68 ^ ((((v179 ^ 0xF7300E5B) >> 24) ^ 0x7CE1BDEB) + ((v179 ^ 0xF7300E5B) >> 24)) ^ *(v143 + 4 * BYTE2(v187)) ^ *(v136 + 4 * (((v179 ^ 0xF7300E5B) >> 24) ^ 0x11)) ^ *(v142 + 4 * (BYTE1(v185) ^ 0xADu)) ^ (((4 * *(v143 + 4 * BYTE2(v187))) ^ 0x7D247E48) + 220742584) ^ *(v144 + 4 * v188);
  v192 = *(v143 + 4 * (BYTE2(v179) ^ 0x2Fu));
  v193 = a67 ^ ((HIBYTE(v188) ^ 0x7CE1BDEB) + HIBYTE(v188)) ^ v192 ^ *(v142 + 4 * BYTE1(v187)) ^ *(v144 + 4 * v185) ^ *(v136 + 4 * (HIBYTE(v188) ^ 0x11)) ^ (((4 * v192) ^ 0x7D247E48) + 220742584) ^ 0xFD5D107C;
  v194 = v191 ^ 0x7D36D89F;
  v195 = a66 ^ ((HIBYTE(v189) ^ 0x91) + (HIBYTE(v189) ^ 0x7CE1BD7A)) ^ *(v143 + 4 * BYTE2(v193)) ^ *(v142 + 4 * ((v191 ^ 0xD89F) >> 8)) ^ *(v136 + 4 * (HIBYTE(v189) ^ 0x80)) ^ *(v144 + 4 * v190) ^ (((4 * *(v143 + 4 * BYTE2(v193))) ^ 0x7D247E48) + 220742584);
  v196 = *(v143 + 4 * (BYTE2(v189) ^ 0x30u));
  v197 = ((HIBYTE(v190) ^ 0x7CE1BDEB) + HIBYTE(v190)) ^ LODWORD(STACK[0x254]) ^ *(v136 + 4 * (HIBYTE(v190) ^ 0x11)) ^ *(v142 + 4 * BYTE1(v193)) ^ v196 ^ *(v144 + 4 * (v191 ^ 0x9Fu)) ^ (((4 * v196) ^ 0x7D247E48) + 220742584);
  v198 = *(v143 + 4 * (((v191 ^ 0x7D36D89F) >> 16) ^ 0x1Fu));
  v199 = ((HIBYTE(v193) ^ 0x7CE1BDEB) + HIBYTE(v193)) ^ LODWORD(STACK[0x258]) ^ v198 ^ *(v136 + 4 * (HIBYTE(v193) ^ 0x11)) ^ *(v142 + 4 * BYTE1(v190)) ^ *(v144 + 4 * (v189 ^ 0x4Au)) ^ (((4 * v198) ^ 0x7D247E48) + 220742584);
  v200 = a65 ^ ((HIBYTE(v194) ^ 0x7CE1BDEB) + HIBYTE(v194)) ^ *(v143 + 4 * BYTE2(v190)) ^ *(v136 + 4 * (HIBYTE(v194) ^ 0x11)) ^ *(v144 + 4 * v193) ^ *(v142 + 4 * (BYTE1(v189) ^ 0x57u)) ^ (((4 * *(v143 + 4 * BYTE2(v190))) ^ 0x7D247E48) + 220742584) ^ 0x6E06467E;
  LOWORD(v193) = v195 ^ 0xFD2A;
  v201 = *(v143 + 4 * ((v199 ^ 0x4FF1A6C3u) >> 16));
  v202 = a64 ^ ((((v195 ^ 0xCCF0FD2A) >> 24) ^ 0x7CE1BDEB) + ((v195 ^ 0xCCF0FD2A) >> 24)) ^ v201 ^ *(v136 + 4 * (((v195 ^ 0xCCF0FD2A) >> 24) ^ 0x11)) ^ *(v142 + 4 * BYTE1(v200)) ^ *(v144 + 4 * (v197 ^ 0xD0u)) ^ (((4 * v201) ^ 0x7D247E48) + 220742584);
  v203 = *(v143 + 4 * (BYTE2(v195) ^ 0xEFu));
  v204 = LODWORD(STACK[0x224]) ^ ((HIBYTE(v197) ^ 0x7CE1BD73) + (HIBYTE(v197) ^ 0x98)) ^ v203 ^ *(v136 + 4 * (HIBYTE(v197) ^ 0x89)) ^ *(v142 + 4 * (BYTE1(v199) ^ 0xBu)) ^ *(v144 + 4 * v200) ^ (((4 * v203) ^ 0x7D247E48) + 220742584);
  v205 = *(v143 + 4 * (BYTE2(v197) ^ 0x5Du));
  v206 = a63 ^ ((HIBYTE(v200) ^ 0x7CE1BDEB) + HIBYTE(v200)) ^ *(v136 + 4 * (HIBYTE(v200) ^ 0x11)) ^ *(v142 + 4 * BYTE1(v193)) ^ v205 ^ *(v144 + 4 * (v199 ^ 0xC3u)) ^ (((4 * v205) ^ 0x7D247E48) + 220742584);
  v207 = a60 ^ ((((v199 ^ 0x4FF1A6C3u) >> 24) ^ 0x7CE1BDEB) + ((v199 ^ 0x4FF1A6C3u) >> 24)) ^ *(v143 + 4 * BYTE2(v200)) ^ *(v136 + 4 * (((v199 ^ 0x4FF1A6C3u) >> 24) ^ 0x11)) ^ *(v142 + 4 * (BYTE1(v197) ^ 0xB2u)) ^ *(v144 + 4 * v193) ^ (((4 * *(v143 + 4 * BYTE2(v200))) ^ 0x7D247E48) + 220742584);
  v208 = *(v88 + 8 * (v94 ^ 0x1180)) - 1956888131;
  v209 = HIBYTE(v202);
  LODWORD(STACK[0x2BC]) = *(v208 + 4 * (HIBYTE(v202) ^ 0xEF));
  v210 = HIBYTE(v204);
  v211 = *(v208 + 4 * (HIBYTE(v204) ^ 0x82));
  v212 = HIBYTE(v206);
  LODWORD(STACK[0x2B8]) = *(v208 + 4 * (HIBYTE(v206) ^ 0xE3));
  v213 = HIBYTE(v207);
  v214 = *(v208 + 4 * (HIBYTE(v207) ^ 0xC4));
  v215 = v94;
  v216 = *(v88 + 8 * (v94 - 6556)) - 1810221375;
  v217 = BYTE2(v207);
  v218 = *(v216 + 4 * (BYTE2(v207) ^ 0xE2u));
  v219 = *(v216 + 4 * (BYTE2(v202) ^ 0x27u));
  v220 = BYTE2(v204);
  LODWORD(STACK[0x2B4]) = *(v216 + 4 * (BYTE2(v204) ^ 0x61u));
  v221 = BYTE2(v206);
  v222 = *(v216 + 4 * (BYTE2(v206) ^ 0xC2u));
  v223 = *(&off_1010A0B50 + (v94 ^ 0x1498)) - 1090620299;
  v224 = *&v223[4 * (BYTE1(v206) ^ 0xA0)];
  v225 = *&v223[4 * (BYTE1(v207) ^ 0xD5)];
  LODWORD(STACK[0x2B0]) = *&v223[4 * (BYTE1(v202) ^ 0x2F)];
  LODWORD(v223) = *&v223[4 * (BYTE1(v204) ^ 0x83)];
  v226 = (v204 ^ a53);
  v227 = *(&off_1010A0B50 + v94 - 6724) - 390065959;
  v228 = *&v227[4 * (v226 ^ 0x45)];
  v229 = v206;
  v230 = *&v227[4 * (v206 ^ 8)];
  v231 = v207;
  v232 = *&v227[4 * (v207 ^ 0xDF)];
  v233 = v202;
  LODWORD(v227) = *&v227[4 * (v202 ^ 0x87)];
  v234 = *(v90 - 132) ^ LODWORD(STACK[0x260]) ^ ((BYTE2(v202) ^ 0x28) - (BYTE2(v202) ^ 0xEDD7A847)) ^ ((v210 ^ 0xD9) + 757640252) ^ v211;
  v235 = v219 ^ v225;
  v236 = STACK[0x280];
  v237 = v234 ^ v235 ^ ((v229 ^ 0xC8FCE5CC) - 1838341457 + v230);
  v238 = *(&off_1010A0B50 + (v215 ^ 0x183B)) - 1729296418;
  *(v236 + STACK[0x2C0]) = v238[BYTE2(v237) ^ 0x8ELL] ^ 0x63 ^ (v238[BYTE2(v237) ^ 0x8ELL] >> 4) & 9;
  v239 = a55 ^ a54 ^ *(v90 - 128) ^ ((v213 ^ 0x9F) + 757640252) ^ ((v221 ^ 0xCD) - (v221 ^ 0xEDD7A8A2)) ^ v214 ^ v222 ^ v223 ^ ((v233 ^ 0xC8FCE543) - 1838341457 + v227);
  v240 = v215;
  v241 = *(&off_1010A0B50 + (v215 ^ 0x10C7)) - 1514562974;
  *(v236 + STACK[0x2C8]) = v241[HIBYTE(v239) ^ 0x7BLL] ^ 0xC2;
  v242 = *(&off_1010A0B50 + v215 - 6119) - 1145435618;
  LODWORD(v223) = v242[v239 ^ 0x29];
  *(v236 + *(v90 - 200)) = ((v223 >> 3) | (32 * v223)) ^ (((v223 >> 3) | (32 * v223)) >> 3) ^ (((v223 >> 3) | (32 * v223)) >> 1) ^ 0x62;
  *(v236 + *(v90 - 248)) = v238[BYTE2(v239) ^ 0xE7] ^ (v238[BYTE2(v239) ^ 0xE7] >> 4) & 9 ^ 0xFE;
  v243 = a59 ^ a58 ^ *(v90 - 120) ^ ((v209 ^ 0xB4) + 757640252) ^ LODWORD(STACK[0x2BC]) ^ v224 ^ v218 ^ ((v217 ^ 0xED) - (v217 ^ 0xEDD7A882)) ^ ((v226 ^ 0xC8FCE581) - 1838341457 + v228);
  *(v236 + *(v90 - 192)) = v238[BYTE2(v243) ^ 0xDELL] ^ 0x7B ^ (v238[BYTE2(v243) ^ 0xDELL] >> 4) & 9;
  LODWORD(v223) = v242[v243 ^ 0xE6];
  *(v236 + *(v90 - 232)) = ((v223 >> 3) | (32 * v223)) ^ (((v223 >> 3) | (32 * v223)) >> 3) ^ (((v223 >> 3) | (32 * v223)) >> 1) ^ 0xD4;
  v244 = a57 ^ a56 ^ *(v90 - 124) ^ ((v220 ^ 0x6E) - (v220 ^ 0xEDD7A801)) ^ ((v212 ^ 0xB8) + 757640252) ^ LODWORD(STACK[0x2B4]) ^ LODWORD(STACK[0x2B8]) ^ LODWORD(STACK[0x2B0]) ^ ((v231 ^ 0xC8FCE51B) - 1838341457 + v232);
  *(v236 + *(v90 - 256)) = v238[BYTE2(v244) ^ 6] ^ ((v238[BYTE2(v244) ^ 6] >> 4) | 0x96) ^ 0xF;
  v245 = *(&off_1010A0B50 + (v215 ^ 0x143E)) - 1910796347;
  v246 = v245[BYTE1(v237) ^ 9];
  *(v236 + *(v90 - 240)) = v246 ^ (v246 >> 6) ^ (v246 >> 3) ^ 0xC1;
  v247 = v242[v244 ^ 0xB0];
  *(v236 + *(v90 - 152)) = ((v247 >> 3) | (32 * v247)) ^ (((v247 >> 3) | (32 * v247)) >> 3) ^ (((v247 >> 3) | (32 * v247)) >> 1) ^ 0x7B;
  *(v236 + *(v90 - 184)) = v241[HIBYTE(v243) ^ 0xC9] ^ 0x49;
  v248 = v242[v237 ^ 0x2BLL];
  *(v236 + *(v90 - 176)) = ((v248 >> 3) | (32 * v248)) ^ (((v248 >> 3) | (32 * v248)) >> 3) ^ (((v248 >> 3) | (32 * v248)) >> 1) ^ 0x60;
  v249 = v245[BYTE1(v239) ^ 0x88];
  *(v236 + *(v90 - 168)) = v249 ^ (v249 >> 6) ^ (v249 >> 3) ^ 6;
  *(v236 + *(v90 - 144)) = v241[HIBYTE(v237) ^ 0x32] ^ 0x1B;
  *(v236 + *(v90 - 208)) = v241[HIBYTE(v244) ^ 0x7BLL] ^ 0xFD;
  v250 = v245[BYTE1(v243) ^ 0xE6];
  *(v236 + *(v90 - 160)) = v250 ^ (v250 >> 6) ^ (v250 >> 3) ^ 0x7E;
  LODWORD(v245) = v245[BYTE1(v244) ^ 0xC1];
  *(v236 + *(v90 - 224)) = v245 ^ (v245 >> 6) ^ (v245 >> 3) ^ 0xFE;
  LODWORD(v245) = (((*(v90 - 212) ^ 0xB1494BED) + 1320596499) ^ ((*(v90 - 212) ^ 0xF2ADF8B2) + 223479630) ^ ((*(v90 - 212) ^ 0x84CF56F8) + 2066786568)) + 610016476;
  v251 = (v245 ^ 0xB0CFA89B) & (2 * (v245 & 0xA2CFC8DB)) ^ v245 & 0xA2CFC8DB;
  v252 = ((2 * (v245 ^ 0xB452B90B)) ^ 0x2D3AE3A0) & (v245 ^ 0xB452B90B) ^ (2 * (v245 ^ 0xB452B90B)) & 0x169D71D0;
  v253 = v252 ^ 0x12851050;
  v254 = (v252 ^ 0x4186180) & (4 * v251) ^ v251;
  v255 = ((4 * v253) ^ 0x5A75C740) & v253 ^ (4 * v253) & 0x169D71D0;
  v256 = (v255 ^ 0x12154140) & (16 * v254) ^ v254;
  v257 = ((16 * (v255 ^ 0x4883090)) ^ 0x69D71D00) & (v255 ^ 0x4883090) ^ (16 * (v255 ^ 0x4883090)) & 0x169D71C0;
  v258 = v256 ^ 0x169D71D0 ^ (v257 ^ 0x951100) & (v256 << 8);
  LODWORD(v245) = v245 ^ (2 * ((v258 << 16) & 0x169D0000 ^ v258 ^ ((v258 << 16) ^ 0x71D00000) & (((v257 ^ 0x160860D0) << 8) & 0x169D0000 ^ 0x28C0000 ^ (((v257 ^ 0x160860D0) << 8) ^ 0x1D710000) & (v257 ^ 0x160860D0))));
  v259 = (((v245 ^ 0x9BA54577) + 228881493) ^ ((v245 ^ 0xFD4557FC) + 1799644896) ^ ((v245 ^ 0xC83539F0) + 1580468436)) + 1158894245;
  v260 = *(v90 - 136) ^ (v259 < 0x7DE76CFE);
  v261 = v259 < *(v90 - 116);
  if (v260)
  {
    v261 = *(v90 - 136);
  }

  return (*(STACK[0x288] + 8 * ((30982 * v261) ^ v240)))();
}

void sub_1000C23B8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = (*a1 ^ 0xFFEFF7F35FDFBBDELL) + 0x10080CE5290DF1 + ((2 * *a1) & 0xFFDFEFE6BFBF77BCLL);
  v4 = v3 < 0x4508C9CF;
  v5 = v3 > v2 + 1158203855;
  if (v2 > 0xFFFFFFFFBAF73630 != v4)
  {
    v5 = v4;
  }

  v1 = *(a1 + 32) ^ (17902189 * ((~a1 & 0x85D1CBC7 | a1 & 0x7A2E3438) ^ 0xB9EDDD7));
  __asm { BRAA            X15, X17 }
}

uint64_t sub_1000C2578@<X0>(uint64_t a1@<X8>)
{
  v2 = STACK[0xBC0] - 0x5CB0CD870E025B84 + (((a1 ^ 0xF0FF11C9CB79408CLL) + 0xF00EE363486BF74) ^ ((a1 ^ 0x41B94298A48F1A04) - 0x41B94298A48F1A04) ^ ((a1 ^ 0xB146535186239D99) + 0x4EB9ACAE79DC6267)) + 0x166CFB718;
  v3 = STACK[0xBB8] - 0x3390E093EE21C30BLL;
  v4 = v2 < 0x7CF9F007;
  v5 = v2 > v3;
  if (v3 < 0x7CF9F007 != v4)
  {
    v5 = v4;
  }

  return (*(v1 + 8 * (((4 * v5) | (16 * v5)) ^ (STACK[0x2B8] + 12599))))();
}

uint64_t sub_1000C28B0()
{
  if (((((2 * v0) ^ 0x13CBAu) + 3083736360) & (2 * v2)) + (v2 ^ 0x6FFDF9BF5BE7469FuLL) - 0x6FFDF9BF5BE74697 > v3)
  {
    v1 = 371891407;
  }

  return (*(v4 + 8 * ((24630 * (v1 == -371865839)) ^ v0)))();
}

uint64_t sub_1000C2930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21)
{
  v23 = (v21 + 1358261280) & 0xAF0A5EAF;
  v25 = (((a13 ^ 0xE0DD551A) + 74809986) ^ a13 ^ ((a13 ^ 0x536C364C) - 1211833896) ^ ((a13 ^ 0x7DFFFFFF) - 1722341275) ^ ((a13 ^ 0xD519B4CD) + v23 + a21 + 833681505)) != 0x1B572864 && (((((a13 ^ 0x1A) - 126) ^ a13 ^ ((a13 ^ 0x4C) - 40) ^ (100 - a13)) ^ ((a13 ^ 0xCD) + v23 + a21 + 97)) & 0xF) == 4;
  return (*(v22 + 8 * (((455 * (((v23 + 25214) | 0x4400) ^ 0xC52C) - 19506) * v25) ^ v23)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t sub_1000C2A40@<X0>(uint64_t a1@<X5>, unsigned int a2@<W7>, int a3@<W8>, uint64_t a4, uint64_t a5, _DWORD *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62, uint64_t a63)
{
  HIDWORD(a5) = v64 - 21558;
  *a6 = a3;
  a62 = a10;
  *(a1 + 400) = a11;
  v71 = ((((v64 - 26809) | 0x4411) + (HIDWORD(a9) ^ 0x703E1D97) - 1883137224) ^ ((HIDWORD(a9) ^ 0xAF2D448A) + 1355987830) ^ ((HIDWORD(a9) ^ 0x36C69E0C) + ((v64 + 5911) ^ 0xC939E304))) - (((v70 ^ 0x93467BF1) + 1824097295) ^ ((v70 ^ 0x6C7D2677) - 1820141175) ^ ((v70 ^ 0x16EE9A97) - 384735895)) + 1753426647;
  v72 = (v71 ^ 0x67EC4A1) & (2 * (v71 & 0x977CD529)) ^ v71 & 0x977CD529;
  v73 = ((2 * (v71 ^ 0x209FECA3)) ^ 0x6FC67314) & (v71 ^ 0x209FECA3) ^ (2 * (v71 ^ 0x209FECA3)) & 0xB7E3398A;
  v74 = v73 ^ 0x9021088A;
  v75 = (v73 ^ 0x27C23100) & (4 * v72) ^ v72;
  v76 = ((4 * v74) ^ 0xDF8CE628) & v74 ^ (4 * v74) & 0xB7E33988;
  v77 = (v76 ^ 0x97802000) & (16 * v75) ^ v75;
  v78 = ((16 * (v76 ^ 0x20631982)) ^ 0x7E3398A0) & (v76 ^ 0x20631982) ^ (16 * (v76 ^ 0x20631982)) & 0xB7E33980;
  v79 = v77 ^ 0xB7E3398A ^ (v78 ^ 0x36231800) & (v77 << 8);
  a64 = v71 ^ (2 * ((v79 << 16) & 0x37E30000 ^ v79 ^ ((v79 << 16) ^ 0x398A0000) & (((v78 ^ 0x81C0210A) << 8) & 0x37E30000 ^ 0x14C20000 ^ (((v78 ^ 0x81C0210A) << 8) ^ 0x63390000) & (v78 ^ 0x81C0210A)))) ^ 0x726B612C;
  *(a1 + 416) = a8 + (v70 ^ a2);
  v80 = (*(v67 + v65 * v69 + 8))(a7);
  return (*(v66 + 8 * ((39303 * (v80 == ((2 * v80) & 0xD3AB8E22))) ^ HIDWORD(a5))))(v80, 1420301865, v81, 3567785513, &off_1010A0B50, &a12, v68, 3923101457, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54);
}

uint64_t sub_1000C2EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = v13 ^ 0x9A96;
  v16 = STACK[0x4C0];
  v18 = (*(v14 + 8 * (v15 + 2173)))();
  (*(STACK[0x408] + 8 * (v15 ^ 0xEC6)))(v18, a1, *(*(&off_1010A0B50 + v15 - 48067) - 1240215223));
  (*(STACK[0x408] + 8 * (v15 + 2104)))(a1);
  v16[21] = *(STACK[0x968] + 132);
  v16[23] = 0;
  v16[24] = 0;
  v16[22] = 0x800000000011FFFBLL;
  v19 = (*(STACK[0x408] + 8 * (v15 + 2542)))((*(a13 + 48) - 1217394632), v16 + 21, 1, 0, 0, 0);
  return (*(STACK[0x408] + 8 * ((506 * (((v15 + 22) ^ 0xB9 ^ (((v19 ^ (((v15 - 34538) | 0x141) + 1828692198)) + 318775761 + ((2 * v19) & 0xD9FFBC5E)) >= 0)) & 1)) ^ v15)))();
}

uint64_t sub_1000C30C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(v17 - 224) = *(a13 + 16);
  *(v17 - 216) = v16 + 155453101 * ((((v17 - 224) | 0xE68E63C9) - (v17 - 224) + ((v17 - 224) & 0x19719C30)) ^ 0xA87806) + 296764710;
  (*(a1 + 8 * (v16 + 27878)))(v17 - 224);
  (*(STACK[0x408] + 8 * (v16 ^ 0x9725)))(&STACK[0x710], v13 + 136, 32);
  v18 = &STACK[0xD10] + v14;
  STACK[0x5B8] = v15 - 23937 + ((7 * (v16 ^ 0x5063) - 23728) | 0x5CB0u);
  (*(STACK[0x408] + 8 * (v16 + 27869)))(v13 + 136, v18, 32);
  (*(STACK[0x408] + 8 * (v16 ^ 0x969D)))(v18, 0, 0, 0, 0, 0, v13 + 132, 0);
  v19 = *(*(&off_1010A0B50 + (v16 ^ 0x5E6D)) - 1909196687);
  LOBYTE(STACK[0xD00]) = *v19 - 53;
  LOBYTE(STACK[0xD01]) = v19[1] - 53;
  LOBYTE(STACK[0xD02]) = v19[2] - 53;
  LOBYTE(STACK[0xD03]) = v19[3] - 53;
  LOBYTE(STACK[0xD04]) = v19[4] - 53;
  LOBYTE(STACK[0xD05]) = v19[5] - 53;
  LOBYTE(STACK[0xD06]) = v19[6] - 53;
  LOBYTE(STACK[0xD07]) = v19[7] - 53;
  LOBYTE(STACK[0xD08]) = v19[8] - 53;
  LOBYTE(STACK[0xD09]) = v19[9] - 53;
  LOBYTE(STACK[0xD0A]) = v19[10] - 53;
  LOBYTE(STACK[0xD0B]) = v19[11] - 53;
  LOBYTE(STACK[0xD0C]) = v19[12] - 53;
  LOBYTE(STACK[0xD0D]) = v19[13] - 53;
  LOBYTE(STACK[0xD0E]) = v19[14] - 53;
  LOBYTE(STACK[0xD0F]) = v19[15] - 53;
  (*(STACK[0x408] + 8 * (v16 ^ 0x9725)))(v13 + 136, v18 + 32, 32);
  v20 = (*(STACK[0x408] + 8 * (v16 ^ 0x96F4)))(v18 + 32, &STACK[0xD00], v13 + 128);
  v21 = ((v20 ^ 0x7F) + 2 * v20) == 127;
  return (*(STACK[0x408] + 8 * ((2 * v21) | (8 * v21) | v16)))(v20);
}

uint64_t sub_1000C3344@<X0>(unint64_t a1@<X3>, unint64_t a2@<X6>, unint64_t a3@<X7>, unint64_t a4@<X8>)
{
  v13 = *(STACK[0x408] + 8 * v5);
  *&STACK[0x350] = vdupq_n_s64(0x38uLL);
  *&STACK[0x360] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x3F0] = vdupq_n_s64(a3);
  *&STACK[0x3E0] = vdupq_n_s64(a1);
  *&STACK[0x430] = vdupq_n_s64(a2);
  *&STACK[0x340] = vdupq_n_s64(v6);
  *&STACK[0x380] = vdupq_n_s64(v4);
  *&STACK[0x390] = vdupq_n_s64(v11);
  *&STACK[0x420] = vdupq_n_s64(v8);
  *&STACK[0x410] = vdupq_n_s64(0x7D07FFC04E2C5624uLL);
  *&STACK[0x370] = vdupq_n_s64(0x96E95066F186A7EuLL);
  *&STACK[0x320] = vdupq_n_s64(a4);
  *&STACK[0x330] = vdupq_n_s64(0x185F139E2B33A58DuLL);
  *&STACK[0x300] = vdupq_n_s64(0xA9F65DB150283DF1);
  *&STACK[0x310] = vdupq_n_s64(0x1D7D0A7DD71491FFuLL);
  *&STACK[0x2F0] = vdupq_n_s64(0x635DA676AC2446E8uLL);
  *&STACK[0x3C0] = vdupq_n_s64(v12);
  *&STACK[0x3D0] = vdupq_n_s64(v7);
  *&STACK[0x2E0] = xmmword_100BC76B0;
  return v13(v8, v10 + v9);
}

uint64_t sub_1000C35B0@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, unsigned int a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>)
{
  v24 = (((v11 ^ 0xF6159E7E) + 166355330) ^ ((v11 ^ 0xFF754434) + 9092044) ^ ((v11 ^ 0xE0B55D57 ^ v13) + 525001381)) + 1475914000;
  v25 = (v24 ^ 0x198DC7D) & (2 * (v24 & 0x91DD1E00)) ^ v24 & 0x91DD1E00;
  v26 = ((2 * (v24 ^ 0x380DC7D)) ^ 0x24BB84FA) & (v24 ^ 0x380DC7D) ^ (2 * (v24 ^ 0x380DC7D)) & v17;
  v27 = v26 ^ 0x92444205;
  v28 = (v26 ^ 0x188000) & (4 * v25) ^ v25;
  v29 = ((4 * v27) ^ v19) & v27 ^ (4 * v27) & v17;
  v30 = (v29 ^ v21) & (16 * v28) ^ v28;
  v31 = ((16 * (v29 ^ v20)) ^ v22) & (v29 ^ v20) ^ (16 * (v29 ^ v20)) & v23;
  v32 = v30 ^ v8 ^ (v31 ^ a1) & (v30 << 8);
  v33 = v24 ^ (2 * ((v32 << 16) & a2 ^ v32 ^ ((v32 << 16) ^ a4) & (((v31 ^ a8) << 8) & a2 ^ a3 ^ (((v31 ^ a8) << 8) ^ v15) & (v31 ^ a8))));
  *((v33 ^ a5) - v14 + a6 + a7) = *(v9 + (v33 ^ a5) + v10) - ((2 * *(v9 + (v33 ^ a5) + v10)) & 0xBF) + 95;
  return (*(v18 + 8 * (((v33 == a5) * v16) ^ v12)))();
}

void sub_1000C3740(uint64_t a1)
{
  v2 = (*(a1 + 8) ^ 0x7FAF77B6AFBF655BLL) - 0x7FAF77B691788DC9 + ((2 * *(a1 + 8)) & 0xFF5EEF6D5F7ECAB6);
  v3 = v2 < 0x1E46D792;
  v4 = v2 > *a1 + 507959186;
  if (*a1 > 0xFFFFFFFFE1B9286DLL != v3)
  {
    v4 = v3;
  }

  v1 = *(a1 + 40) + 1012831759 * ((a1 - 2 * (a1 & 0x48E58E68) + 1223003752) ^ 0x587698E2);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1000C38F0()
{
  v8 = *(v6 - 136);
  v9 = v5 + 7411;
  v10 = (v4 - 1) & 0xF;
  v14 = (v0 - v8) > 0xF && v1 - v8 - v4 + v10 + ((v9 - 439050688) & 0x1A2BE961) - 51264 > 0xF && v2 - v8 - v4 + v10 + 1 >= ((5 * (v9 ^ 0x46CCu)) ^ 0x1F8FuLL) && (v3 - v8 - v4 + v10 + 7) > 0xF;
  return (*(v7 + 8 * ((60 * v14) ^ v9)))();
}

uint64_t sub_1000C39A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a8 + 64);
  v11 = *(a8 + 68);
  *(a8 + 56) = (v10 >> 21) - ((v10 >> 20) & 0xBE) + 95;
  *(a8 + 57) = (v10 >> 13) - ((v8 + 26) & (2 * (v10 >> 13))) + 95;
  *(a8 + 58) = (v10 >> 5) - ((v10 >> 4) & 0xBE) + 95;
  *(a8 + 59) = (__PAIR64__(v10, v11) >> 29) - ((2 * (__PAIR64__(v10, v11) >> 29)) & 0xBF) + 95;
  *(a8 + 60) = (v11 >> 21) - ((v11 >> 20) & 0xBE) + 95;
  *(a8 + 61) = (v11 >> 13) - ((v11 >> 12) & 0xBE) + 95;
  *(a8 + 62) = (v11 >> 5) - ((v11 >> 4) & 0xBE) + 95;
  return (*(v9 + 8 * v8))();
}

uint64_t sub_1000C3B94@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, char a5)
{
  v11 = *(v7 + v10);
  v12 = v10 - 1;
  *(a1 + v12) = *(&a5 + v12) ^ *(a2 + v12) ^ (21 * v12) ^ *(v6 + v12) ^ v11 ^ v9;
  return (*(v5 + 8 * ((58 * ((v8 ^ (v12 == 0)) & 1)) ^ v8)))();
}

uint64_t sub_1000C3C70@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>, __n128 a4@<Q1>)
{
  a4.n128_u16[0] = 24415;
  a4.n128_u8[2] = 95;
  a4.n128_u8[3] = 95;
  a4.n128_u8[4] = 95;
  a4.n128_u8[5] = 95;
  a4.n128_u8[6] = 95;
  a4.n128_u8[7] = 95;
  return (*(v4 + 8 * a2))(a3 + -8 - a1, xmmword_100F523B0, a4);
}

uint64_t sub_1000C3CDC()
{
  v7 = v0 + ((18143 * (v4 ^ 0x8308) + 386345) & 0xFFF98FDC) - 704;
  LODWORD(STACK[0x468]) = v7;
  if (v7 <= v5)
  {
    v2 = v3;
  }

  LODWORD(STACK[0x46C]) = v2;
  return (*(v6 + 8 * ((61 * (v2 != v1)) ^ v4)))();
}

uint64_t sub_1000C3F84@<X0>(uint64_t a1@<X0>, char a2@<W3>, char a3@<W4>, char a4@<W5>, int a5@<W6>, uint64_t a6@<X7>, char a7@<W8>)
{
  v22 = ((a1 & v9) << ((v12 - 27) ^ v21)) & (a1 ^ 0xFB60B5B6) ^ a1 & v9;
  v23 = ((2 * (a1 ^ 0xBE)) ^ 0x32) & (a1 ^ 0xBE) ^ (2 * (a1 ^ 0xBE)) & 0x18;
  v24 = a1 ^ (2 * ((((4 * (v23 ^ v14)) ^ v19) & (v23 ^ v14) ^ (4 * (v23 ^ v14)) & v20) & (16 * ((v23 ^ v18) & (4 * v22) ^ v22)) ^ (v23 ^ v18) & (4 * v22) ^ v22));
  v25 = v11 - 1;
  STACK[0x678] = v25;
  *(a6 + v25) = ((((v24 ^ v17) + v15) ^ ((v24 ^ v10) + a3) ^ ((v24 ^ a7) + v7)) + v8) * (a1 + a2) + a1 * v13 + a4;
  return (*(v16 + 8 * (((STACK[0x678] == 0) * a5) ^ v12)))(a1 + 1);
}

uint64_t sub_1000C4070(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, int a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v74 = *a51;
  v75 = ((a30 - 10624) ^ 0xADD4C3A0) + 40409587 * LODWORD(STACK[0x260]);
  v76 = 155453101 * (((~(v73 - 168) | 0x4ED2B642) + ((v73 - 168) | 0xB12D49BD)) ^ 0x570B5273);
  *(v73 - 140) = a18 ^ v76;
  *(v73 - 124) = v76 + 2069619737;
  *(v73 - 120) = a30 - v76 + 1777277749;
  *(v73 - 128) = 16376 - 1709 * (((~(v73 - 168) | 0xB642) + ((v73 - 168) | 0x49BD)) ^ 0x5273);
  a3[55] = &STACK[0x354];
  a3[56] = a38;
  a3[61] = v74;
  a3[58] = 0;
  *(v73 - 144) = v76 ^ 0xE40DF64E;
  *(v73 - 168) = v75 ^ v76;
  v77 = (*(v72 + 8 * (a30 ^ 0xFE80)))(v73 - 168);
  return (*(v72 + 8 * (((*(v73 - 116) == -371865839) * (((a30 + 19871) | 0x2D20) - 15557)) ^ a30)))(v77, a72, &STACK[0x298]);
}

uint64_t sub_1000C42D4@<X0>(uint64_t a1@<X8>, uint64_t a2, char a3, __int16 a4, char a5, int a6, char *a7, char *a8, uint64_t a9, int a10, uint64_t a11, int a12)
{
  v16 = (((*(v14 - 0x217E172EFA1E804) ^ 0xC979078D) + 914815091) ^ ((*(v14 - 0x217E172EFA1E804) ^ 0x1F0D5D67) - 520969575) ^ (((v13 + 1067543575) ^ *(v14 - 0x217E172EFA1E804)) - 1067556347)) - 54746966;
  v17 = 634647737 * (((&a6 | 0x67F5E651) - (&a6 & 0x67F5E650)) ^ 0xA63C9AD);
  a10 = v13 - v17 + 27005;
  a9 = a1;
  a11 = v14 - 0x217E172EFA1E800;
  a6 = v16 ^ v17;
  a7 = &a3;
  a8 = &a5;
  v18 = (*(v12 + 8 * (v13 + 39136)))(&a6);
  return (*(v12 + 8 * ((38483 * (a12 == v15)) ^ v13)))(v18);
}

uint64_t sub_1000C445C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v44 = *(STACK[0x408] + 8 * (a8 ^ 0xA131));
  *&STACK[0x410] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x380] = vdupq_n_s64(0x38uLL);
  *&STACK[0x430] = vdupq_n_s64(v43);
  *&STACK[0x360] = vdupq_n_s64(0xF3F80E46063E59E4);
  *&STACK[0x370] = vdupq_n_s64(0xE742090C29A63601);
  v51 = vdupq_n_s64(v40);
  v52 = vdupq_n_s64(a1);
  *&STACK[0x340] = vdupq_n_s64(0x270B9CE44EC93332uLL);
  *&STACK[0x350] = vdupq_n_s64(0xB3C14A7B76D5DAAuLL);
  v50 = vdupq_n_s64(0x14E985C266668607uLL);
  *&STACK[0x320] = vdupq_n_s64(0xA994A82BA76C276DLL);
  *&STACK[0x330] = vdupq_n_s64(0xD62CF47B3332F3F0);
  *&STACK[0x300] = vdupq_n_s64(0x712D560FD0C41AEAuLL);
  *&STACK[0x310] = vdupq_n_s64(0x102EBE5226305265uLL);
  v48 = vdupq_n_s64(v36);
  v49 = vdupq_n_s64(0x476954F8179DF28AuLL);
  *&STACK[0x3E0] = vdupq_n_s64(a2);
  *&STACK[0x3F0] = vdupq_n_s64(0x3045D639D5207DE6uLL);
  *&STACK[0x2E0] = vdupq_n_s64(a3);
  *&STACK[0x2F0] = vdupq_n_s64(0xD5F76ABD8EEE6086);
  v46 = vdupq_n_s64(v38);
  v47 = vdupq_n_s64(0x708F6554F739A898uLL);
  *&STACK[0x420] = vdupq_n_s64(v41);
  *&STACK[0x3C0] = vdupq_n_s64(a4);
  *&STACK[0x3D0] = vdupq_n_s64(v42);
  *&STACK[0x2D0] = vdupq_n_s64(v39);
  *&STACK[0x3B0] = vdupq_n_s64(v37);
  *&STACK[0x2C0] = xmmword_100BC76B0;
  return v44(a1, a2, a8 ^ 0x4747, a4, a5, v44, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, v46.i64[0], v46.i64[1], v47.i64[0], v47.i64[1], v48.i64[0], v48.i64[1], v49.i64[0], v49.i64[1], v50.i64[0], v50.i64[1], a35, a36, v51.i64[0], v51.i64[1], v52.i64[0], v52.i64[1]);
}

uint64_t sub_1000C46D4()
{
  v3 = STACK[0x2B8];
  v4 = (STACK[0x2B8] + 1849447246) & 0x91C3EF8A;
  v5 = STACK[0x2B8] + 24701;
  STACK[0xB60] = v0;
  *(v1 - 224) = (v3 + 1877381547) ^ (155453101 * ((~(v1 - 224) & 0x3A75EBDA | (v1 - 224) & 0xC58A1420) ^ 0xDC53F015));
  (*(v2 + 8 * (v3 + 27692)))(v1 - 224);
  LODWORD(STACK[0xA74]) = *(v1 - 216) ^ 0xA27F53D1;
  v6 = STACK[0xA58];
  v7 = STACK[0x870];
  v8 = STACK[0x5B8];
  STACK[0xB68] = &STACK[0xD10] + STACK[0x5B8];
  STACK[0x5B8] = v8 + 32;
  v9 = STACK[0x370];
  STACK[0xA50] = STACK[0x370];
  STACK[0x9D8] = v7;
  v10 = (*(STACK[0x408] + 8 * (v3 + 27686)))();
  v11 = STACK[0x408];
  STACK[0x820] = 0;
  if (v6)
  {
    v12 = v9 == 0;
  }

  else
  {
    v12 = 1;
  }

  v14 = !v12 && v7 != 0;
  return (*(v11 + 8 * ((v14 * (v4 ^ 0xA1F2)) ^ v5)))(v10);
}

uint64_t sub_1000C4804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21)
{
  if (a21 - 12807 + (a20 ^ 0x7F0BF79F) + (((a21 - 17461) ^ 0xFE168E25) & (2 * a20)) == 2131507212)
  {
    v22 = 157686605;
  }

  else
  {
    v22 = 157644581;
  }

  return (*(v21 + 8 * (a21 ^ (158 * (a16 - ((2 * a13) & 0xDD618ED4) != 358478169)))))(a1, v22);
}

uint64_t sub_1000C49A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = (((((v59 + 1598531661) & 0xA0B8B517) - 0x665B2766A175EB4FLL) ^ v58) + 0x2480EA0E6E9E0749) ^ (v58 - 0x412ABCD7CE993F2FLL) ^ (((((v59 + 125679098) & 0xF8826B77) + 0x56A3ADAB01C893F6) ^ v58) - 0x147860C3CE23BC69);
  v62 = v61 + 0x3D2432977F40EC9ELL;
  v63 = v61 < 0x42DBCD68CFEB4172;
  v64 = a58 < v62;
  if (a58 < 0x800000004F2C2E10 != v63)
  {
    v65 = v63;
  }

  else
  {
    v65 = v64;
  }

  return (*(v60 + 8 * ((61376 * v65) ^ v59)))();
}

uint64_t sub_1000C4B4C()
{
  v2.n128_u64[0] = 0x3636363636363636;
  v2.n128_u64[1] = 0x3636363636363636;
  v3.n128_u64[0] = 0x5C5C5C5C5C5C5C5CLL;
  v3.n128_u64[1] = 0x5C5C5C5C5C5C5C5CLL;
  return (*(v1 + 8 * (v0 - 2945)))(v2, v3);
}

uint64_t sub_1000C4BD8@<X0>(uint64_t a1@<X8>)
{
  v8 = (v1 - 1) & 0xF;
  v12 = (v4 - a1 - v1 + v8 + 1) < 0x10 || v3 - a1 < (((v2 + 37611) | 0x1282) ^ 0xBA97uLL) || (v5 - a1 - v1 + v8 + 8) < 0x10 || -v1 - a1 + v6 + v8 + (v2 ^ 0x1519uLL) < 0x10;
  return (*(v7 + 8 * (v2 | (4 * v12))))();
}

uint64_t sub_1000C4C6C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[20];
  v6 = a3[35];
  v7 = STACK[0x288];
  v8 = STACK[0x248];
  v9 = a3[12];
  *v5 = a1;
  *(v5 + 8) = v6;
  *(v5 + 16) = v8;
  *(v5 + 20) = v7;
  return (*(v4 + 8 * (((v9 != 0) * (((v3 + 9239) | 0x2434) - 27826)) | v3)))();
}

uint64_t sub_1000C50D8@<X0>(uint64_t a1@<X1>, unint64_t a2@<X3>, unint64_t a3@<X4>, unint64_t a4@<X5>, unint64_t a5@<X6>, unint64_t a6@<X7>, unint64_t a7@<X8>)
{
  v16 = *(STACK[0x408] + 8 * v12);
  *&STACK[0x260] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x230] = vdupq_n_s64(a6);
  *&STACK[0x240] = vdupq_n_s64(0x38uLL);
  *&STACK[0x370] = vdupq_n_s64(0x12219E3FC273472uLL);
  *&STACK[0x380] = vdupq_n_s64(0xF9FFFFFFFFFFFFFFLL);
  *&STACK[0x350] = vdupq_n_s64(0x14BA074A2F986FE5uLL);
  *&STACK[0x360] = vdupq_n_s64(0xB5A94E2F7B1B987CLL);
  *&STACK[0x330] = vdupq_n_s64(a4);
  *&STACK[0x340] = vdupq_n_s64(a3);
  *&STACK[0x200] = vdupq_n_s64(a2);
  *&STACK[0x310] = vdupq_n_s64(v8);
  *&STACK[0x320] = vdupq_n_s64(v7);
  *&STACK[0x2F0] = vdupq_n_s64(0x96E95066F186A7EuLL);
  *&STACK[0x300] = vdupq_n_s64(v9);
  *&STACK[0x2D0] = vdupq_n_s64(v10);
  *&STACK[0x2E0] = xmmword_100F523B0;
  *&STACK[0x2C0] = vdupq_n_s64(0x67ABD7AAC45213B8uLL);
  *&STACK[0x290] = vdupq_n_s64(v15);
  *&STACK[0x2A0] = vdupq_n_s64(a5);
  *&STACK[0x270] = vdupq_n_s64(v13);
  *&STACK[0x280] = vdupq_n_s64(v11);
  *&STACK[0x250] = vdupq_n_s64(0x7D07FFC04E2C5624uLL);
  *&STACK[0x210] = vdupq_n_s64(a7);
  *&STACK[0x220] = vdupq_n_s64(0x185F139E2B33A58DuLL);
  *&STACK[0x450] = vdupq_n_s64(0x1D7D0A7DD71491FFuLL);
  *&STACK[0x430] = vdupq_n_s64(0xA9F65DB150283DF1);
  *&STACK[0x420] = vdupq_n_s64(0xEFCF42790778521ALL);
  return v16(v13, a1, 8 - (v14 & 0xFFFFFFF8));
}

uint64_t sub_1000C5374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v14 = vrev64q_s8(**(v11 + 16));
  v15 = vextq_s8(v14, v14, 8uLL);
  v16.i64[0] = 0x3030303030303030;
  v16.i64[1] = 0x3030303030303030;
  v17 = vandq_s8(vaddq_s8(v15, v15), v16);
  v16.i64[0] = 0x1818181818181818;
  v16.i64[1] = 0x1818181818181818;
  v18 = vaddq_s8(v17, veorq_s8(v15, v16));
  v17.i64[0] = 0x8383838383838383;
  v17.i64[1] = 0x8383838383838383;
  v16.i64[0] = 0x8787878787878787;
  v16.i64[1] = 0x8787878787878787;
  v19 = vrev64q_s8(veorq_s8(vmlaq_s8(v16, v18, v17), xmmword_100F524A0));
  *(v13 - 112) = vextq_s8(v19, v19, 8uLL);
  return (*(v12 + 8 * (a3 ^ ((a9 != 0) | (4 * (a9 != 0))))))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11);
}

int *sub_1000C53F4(int *result)
{
  if (((result[2] ^ (1012831759 * ((((2 * result) | 0xD4295480) - result - 1779739200) ^ 0x7A87BCCA))) & 0x40000000) != 0)
  {
    v1 = 366832613;
  }

  else
  {
    v1 = 366832612;
  }

  *result = v1;
  return result;
}

uint64_t sub_1000C55DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t (*a20)(uint64_t), uint64_t a21, int a22, int a23)
{
  v26 = 1112314453 * ((((v25 - 152) ^ 0x8CECD3CD) - 2 * (((v25 - 152) ^ 0x8CECD3CD) & 0x310D5EA1) - 1324523869) ^ 0xD2B7A7B7);
  *(v25 - 144) = a4;
  *(v25 - 136) = v26 + a23 - 621220387;
  *(v25 - 152) = v26 + v23 + 2946;
  v27 = (*(v24 + 8 * (v23 ^ 0xD07E)))(v25 - 152);
  return a20(v27);
}

uint64_t sub_1000C566C(int a1, int8x16_t a2, int8x8_t a3, int8x8_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9, int a10)
{
  v17.val[0].i64[0] = (a9 + v13) & 0xF;
  v17.val[0].i64[1] = (a8 + v13 + 14) & 0xF;
  v17.val[1].i64[0] = (a8 + v13 + 13) & 0xF;
  v17.val[1].i64[1] = (a8 + v13 + 12) & 0xF;
  v17.val[2].i64[0] = (a8 + v13 + 11) & 0xF;
  v17.val[2].i64[1] = (a8 + v13 + 10) & 0xF;
  v17.val[3].i64[0] = (a8 + v13 + 9) & 0xF;
  v17.val[3].i64[1] = (a8 + v13) & 0xF ^ 8;
  *(v14 + v13) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(v14 + v13), *(v10 + v17.val[0].i64[0] - 7)), veor_s8(*(v12 + v17.val[0].i64[0] - 7), *(v11 + v17.val[0].i64[0] - 7)))), a4), vmul_s8(*&vqtbl4q_s8(v17, a2), a3)));
  return (*(v15 + 8 * (((a7 == v13) * a10) ^ a1)))();
}

void sub_1000C5734(uint64_t a1)
{
  v1 = *(a1 + 8) + 1022166737 * ((((2 * a1) | 0xA9473CA8) - a1 + 727474604) ^ 0x6EB37FC6);
  v2 = *a1;
  v6 = (906386353 * (&v4 ^ 0x3101CD24)) ^ (v1 - 4221);
  v5 = v2;
  v3 = *(&off_1010A0B50 + v1 - 28978) - 810145054;
  (*&v3[8 * v1 + 178200])(&v4);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000C5858(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v3 = (*(v2 + 8 * (v1 ^ 0x7A38)))(112);
  v4 = STACK[0x408];
  STACK[0x810] = v3;
  return (*(v4 + 8 * (((v3 == 0) * (((149 * (v1 ^ 0xB070)) ^ 0x27A1) - 24237)) | v1)))();
}

uint64_t sub_1000C58B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, unsigned int a61, uint64_t a62, uint64_t a63)
{
  v67 = (((v65 ^ 0xA699E3E6) + 583494177) ^ ((v65 ^ 0x37FF64C2) - 1281233659) ^ ((v65 ^ (a65 - 43816) ^ 0x31235F7) - 2025013301)) - 2127147293;
  v68 = (a61 > 0x689F782D) ^ (v67 < 0x976087D2);
  v69 = v67 < (a65 ^ 0x976028F1) + a61;
  if (v68)
  {
    v69 = a61 > 0x689F782D;
  }

  return (*(v66 + 8 * ((396 * !v69) ^ (a65 + 5586))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31);
}

uint64_t sub_1000C59D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v28 = ((a9 ^ v15) + v16) ^ a9 ^ ((a9 ^ v17) + v18) ^ ((a9 ^ a3) + a4) ^ ((a9 ^ a1 ^ v14) + a2);
  *(v13 + v27 - 1) = ((((v28 ^ a6) + a7) ^ ((v28 ^ a8) + v19) ^ ((v28 ^ v20) + v22)) + v23) * (a9 + v24) + a9 * a5 + v25;
  return (*(v21 + 8 * (((v27 == 1) * v26) ^ a13)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13);
}

uint64_t sub_1000C5BA0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, int a26, int a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, int a63)
{
  LODWORD(STACK[0x278]) = v70;
  LODWORD(STACK[0x3A8]) = a6;
  LODWORD(STACK[0x3AC]) = v69;
  LODWORD(STACK[0x2F0]) = a7;
  LODWORD(STACK[0x31C]) = a69;
  LOWORD(STACK[0x236]) = a68;
  LOWORD(STACK[0x292]) = v71;
  LODWORD(STACK[0x27C]) = a62;
  LOWORD(STACK[0x38E]) = a65;
  return (*(v72 + 8 * ((1722 * ((a4 ^ a42) == a27)) ^ a26)))();
}

uint64_t sub_1000C5C18@<X0>(int a1@<W8>)
{
  v3 = *(v1 + 8);
  STACK[0x8F8] = v3;
  return (*(v2 + 8 * ((97 * (v3 != 0)) ^ a1)))();
}

void sub_1000C5E10()
{
  if (v0 == 1423443925)
  {
    v2 = -371865839;
  }

  else
  {
    v2 = 371891401;
  }

  *(v1 + 4) = v2;
}

uint64_t sub_1000C6150@<X0>(uint64_t a1@<X8>, int a2, unsigned int a3, uint64_t a4, int a5, unsigned int a6)
{
  v9 = v6 ^ 0x9603;
  v10 = 1603510583 * ((((&a2 | 0xDB29448C) ^ 0xFFFFFFFE) - (~&a2 | 0x24D6BB73)) ^ 0xB30D89D8);
  a4 = a1;
  a5 = v9 - v10 - 5255;
  a6 = 824934060 - v10;
  a3 = -2061567298 - v10;
  v11 = (*(v8 + 8 * (v9 + 39741)))(&a2);
  *v7 = a2;
  return (*(v8 + 8 * v9))(v11);
}

uint64_t sub_1000C6388@<X0>(int a1@<W8>)
{
  if (LODWORD(STACK[0x23C]) + v1 <= v3)
  {
    v5 = v2;
  }

  else
  {
    v5 = 371891407;
  }

  return (*(v4 + 8 * (((v5 == -371865839) * (((a1 - 5324) ^ 0xCD8A) - 31132)) ^ a1)))();
}

uint64_t sub_1000C6944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 200) = *(a3 + 8);
  LODWORD(STACK[0x334]) = STACK[0x3A8];
  LODWORD(STACK[0x244]) = 1803403520;
  return (*(v4 + 8 * v3))();
}

uint64_t sub_1000C697C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int8x16_t *a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>, __n128 a6@<Q1>, int8x16_t a7@<Q4>, uint64_t a8@<D5>, int8x16_t a9@<Q6>)
{
  v17 = v14 & 0xF;
  v19.i64[0] = vqtbl4q_s8(*(&a6 - 1), a7).u64[0];
  v19.i64[1] = a8;
  v20 = vrev64q_s8(vmulq_s8(v19, a9));
  *a3 = veorq_s8(veorq_s8(veorq_s8(*(v11 + v17 - 15), *a3), veorq_s8(*(v17 + v13 - 12), *(v12 + v17 - 15))), vextq_s8(v20, v20, 8uLL));
  return (*(v16 + 8 * ((62 * (((a5 == 0) ^ a4) & 1)) ^ v15)))(a1, a2, a3 - 1);
}

uint64_t sub_1000C69FC@<X0>(unsigned int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v11 = v9 < a1;
  *(a3 + v8) = *(v4 + (v8 & 0xF)) ^ *(v3 + v8) ^ *((v8 & 0xF) + v5 + 1) ^ (-13 * (v8 & 0xF)) ^ *(v6 + (v8 & 0xF));
  if (v11 == v8 + 1 > 0x80513EAF)
  {
    v11 = v8 + 2142136628 + 309 * (v7 ^ 0x688D) < v9;
  }

  return (*(v10 + 8 * ((v11 * a2) ^ v7)))();
}

uint64_t sub_1000C6AC4()
{
  v4 = *(v3 + 2);
  *v2 = 3;
  return (*(v1 + 8 * ((27753 * (v4 == 70)) ^ v0)))();
}

uint64_t sub_1000C6C34@<X0>(_BYTE *a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, int a9@<W8>)
{
  v22 = *(v18 + 1);
  v21 = (v18 + 1);
  v23 = v22 & 0xC ^ 0x69;
  v24 = v20 & 0xF0 ^ a2;
  v25 = v22 ^ v20 ^ (2 * (v23 ^ v24 ^ (v20 ^ v15) & (2 * ((v20 ^ v15) & (2 * ((v20 ^ v15) & (2 * ((v20 ^ v15) & (2 * ((v20 ^ v15) & (2 * ((v20 ^ v15) & 0xA ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ (v22 ^ v15) & (2 * ((v22 ^ v15) & (2 * ((v22 ^ v15) & (2 * ((v22 ^ v15) & (2 * ((v14 ^ (2 * (v23 ^ v22 & (v11 ^ 0x7C)))) & (v22 ^ v15) ^ v23)) ^ v23)) ^ v23)) ^ v23))));
  v26 = v20 & a7 ^ 0x48;
  v27 = (((v25 ^ 0xAA) - 26) ^ ((v25 ^ 0xDA) - 106) ^ ((v25 ^ 0x8C) - 60)) - 110;
  v28 = v27 & 0xD6 ^ 0x1E;
  v29 = v20 ^ (2 * ((v20 ^ 0x38) & (2 * ((v20 ^ 0x38) & (2 * ((v20 ^ 0x38) & (2 * ((v20 ^ 0x38) & (2 * ((v20 ^ 0x38) & (2 * v26) | v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26));
  v30 = v19 & 0x1A ^ 0x70;
  v31 = ((v29 ^ a7) << 16) | (((v27 ^ (2 * ((v27 ^ 0x38) & (2 * ((v27 ^ 0x38) & (2 * ((v27 ^ 0x38) & (2 * ((v27 ^ 0x38) & (2 * ((v27 ^ 0x38) & (2 * v28) ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28))) ^ 0xD6) << 8);
  v32 = ((v19 ^ (2 * ((v19 ^ 0x38) & (2 * ((v19 ^ 0x38) & (2 * ((v19 ^ 0x38) & (2 * ((v19 ^ 0x38) & (2 * ((v19 ^ 0x38) & (2 * v30) ^ v30)) ^ v30)) ^ v30)) ^ v30)) ^ v30))) ^ 0x5A3C5FB5) & ~v31 | v31 & 0xC3A000;
  v33 = a1[3];
  LOBYTE(v31) = v33 & v14 ^ 0xF5;
  v34 = (v33 ^ (2 * ((v33 ^ v15) & (2 * ((v33 ^ v15) & (2 * ((v33 ^ v15) & (2 * ((v33 ^ v15) & (2 * ((v33 ^ v15) & (2 * ((v33 ^ v15) & 0x1E ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31)));
  v35 = (((v32 << 8) ^ 0xC28040FF) & (v34 ^ 0xE28FEE4B) | (v32 << 8) & 0x1D701100) ^ 0xFEDFEF2F;
  v36 = v35 + ((v35 + v12 * v12) | 1) * ((2 * ((v34 ^ 0xFFFFFFE4) & v12)) | 2) * (v35 ^ v12 | 1);
  v37 = v36 - ((2 * v36) & 0xDFB79ACC) + v13;
  *a1 = (((v37 ^ a3) + 73) ^ ((v37 ^ a4) + 101) ^ ((v37 ^ a7) + 12)) + 30;
  a1[2] = (((BYTE2(v37) ^ 0xEF) - 119) ^ ((BYTE2(v37) ^ a2) + 73) ^ ((BYTE2(v37) ^ a8) + 125)) - 119;
  *v21 = (((BYTE1(v37) ^ a5) + 82) ^ ((BYTE1(v37) ^ a6) - 67) ^ ((BYTE1(v37) ^ 0x20) + 117)) - 84;
  a1[3] = (((HIBYTE(v37) ^ v16) - 85) ^ ((HIBYTE(v37) ^ v17) - 57) ^ ((HIBYTE(v37) ^ 3) + 109)) + 69;
  return (*(v9 + 8 * (((v12 == 50) * a9) ^ v10)))(v21);
}

uint64_t sub_1000C6FB8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1 ^ 0x5EB;
  v10 = 3463 * (a1 ^ 0x1007);
  v11 = (*(v8 + 8 * ((a1 ^ 0x5EB) + 46458)))(a8) != *(&off_1010A0B50 + (a1 ^ 0x1C0B)) - 763056891;
  return (*(STACK[0x408] + 8 * ((v11 * (v10 + ((v9 + 10108) ^ 0xFFFF9C09))) ^ v9)))();
}

uint64_t sub_1000C70DC(int a1, int8x16_t a2, double a3, int32x4_t a4, double a5, int8x16_t a6)
{
  v37 = vld4q_s8(v6);
  v9 = veorq_s8(v37.val[0], a2);
  v10 = vmovl_u8(*v9.i8);
  v11 = vmovl_u16(*v10.i8);
  v12 = vmovl_high_u16(v10);
  v13 = vmovl_high_u8(v9);
  v14 = vmovl_u16(*v13.i8);
  v15 = vmovl_high_u16(v13);
  v16 = veorq_s8(v37.val[1], a2);
  v17 = vmovl_high_u8(v16);
  v18 = vmovl_u8(*v16.i8);
  v19 = vshll_n_u16(*v18.i8, 8uLL);
  v20 = veorq_s8(v37.val[2], a2);
  _Q26 = vmovl_high_u8(v20);
  _Q25 = vmovl_u8(*v20.i8);
  v23 = vshll_n_s16(*_Q25.i8, 0x10uLL);
  __asm { SHLL2           V25.4S, V25.8H, #0x10 }

  v28 = vshll_n_s16(*_Q26.i8, 0x10uLL);
  __asm { SHLL2           V26.4S, V26.8H, #0x10 }

  v29 = vmovl_high_u8(v37.val[3]);
  v37.val[0] = vmovl_u8(*v37.val[3].i8);
  v37.val[3] = veorq_s8(vorrq_s8(vorrq_s8(_Q26, vshlq_n_s32(vmovl_high_u16(v29), 0x18uLL)), vorrq_s8(vshll_high_n_u16(v17, 8uLL), v15)), a6);
  v37.val[2] = veorq_s8(vorrq_s8(vorrq_s8(v28, vshlq_n_s32(vmovl_u16(*v29.i8), 0x18uLL)), vorrq_s8(vshll_n_u16(*v17.i8, 8uLL), v14)), a6);
  v37.val[1] = veorq_s8(vorrq_s8(vorrq_s8(_Q25, vshlq_n_s32(vmovl_high_u16(v37.val[0]), 0x18uLL)), vorrq_s8(vshll_high_n_u16(v18, 8uLL), v12)), a6);
  v30 = vdupq_n_s32(0x69D5C715u);
  v37.val[0] = veorq_s8(vorrq_s8(vorrq_s8(v23, vshlq_n_s32(vmovl_u16(*v37.val[0].i8), 0x18uLL)), vorrq_s8(v19, v11)), a6);
  v31 = veorq_s8(vandq_s8(v37.val[3], v30), (*&v15 & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
  v32 = veorq_s8(vandq_s8(v37.val[2], v30), (*&v14 & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
  v33 = veorq_s8(vandq_s8(v37.val[1], v30), (*&v12 & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
  v34 = veorq_s8(vandq_s8(v37.val[0], v30), (*&v11 & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
  *v7 = vaddq_s32(vsubq_s32(v37.val[0], vaddq_s32(v34, v34)), a4);
  v7[1] = vaddq_s32(vsubq_s32(v37.val[1], vaddq_s32(v33, v33)), a4);
  v35 = *(v8 + 8 * (a1 - 9798));
  v7[2] = vaddq_s32(vsubq_s32(v37.val[2], vaddq_s32(v32, v32)), a4);
  v7[3] = vaddq_s32(vsubq_s32(v37.val[3], vaddq_s32(v31, v31)), a4);
  return v35(*(&off_1010A0B50 + ((a1 - 9798) ^ 0x543)) - 1827275347);
}

uint64_t sub_1000C72B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, char a20, uint64_t a21, unsigned int a22, int a23, char *a24, int a25)
{
  v28 = 139493411 * (&a21 ^ 0xC2DE145);
  a24 = &a20;
  a21 = a18;
  a22 = v28 + v25 + 173248850;
  a25 = v26 - v28 - 8564;
  v29 = (*(v27 + 8 * (v26 + 29289)))(&a21);
  return (*(v27 + 8 * (((a23 == ((v26 - 545020984) & 0x207CB77F) + 133643827) * (((v26 - 2097) | 0x805) + 33497)) ^ v26)))(v29);
}

void sub_1000C7378(uint64_t a1)
{
  v1 = *(a1 + 36) - 297845113 * (((a1 | 0x906FACA7) - (a1 & 0x906FACA7)) ^ 0xE75CB039);
  v3 = v2 + (*(a1 + 48) | 0xDA281720D6C0476ELL) - (~*(a1 + 48) | 0x25D7E8DF293FB891) + (((v1 - 640102736) + 0x4BAFD1BE527EFCAELL) & (2 * ~*(a1 + 48)));
  v2[0] = (((v3 & 0xA1294924) + 1095912008) & 0xA1294924 | (2 * v3) & 0x2009000) + (((2 * v3) & 0x8084014 | v3 & 0x1484A24A) ^ 0x404200A) + (((2 * v3) & 0x4800120 | v3 & 0x4A521491) ^ 0x2400090);
  __asm { BRAA            X1, X17 }
}

uint64_t sub_1000C769C()
{
  v3 = *v0;
  STACK[0x910] = 0;
  return (*(v2 + 8 * ((((v1 ^ 9 ^ (v3 == 0)) & 1) * ((v1 ^ 0xCE63) - 25682)) ^ v1)))();
}

uint64_t sub_1000C77D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16)
{
  v20 = v16 + (((a16 ^ 0x21464F0F) - 558255887) ^ ((a16 ^ 0x7276149E) - 1920341150) ^ (((2963 * (v17 ^ 0x19C7) - 1159372127) ^ a16) + 1159357312));
  v21 = v20 < 0x33F5F08D;
  v22 = v18 - 625912765 < v20;
  if ((v18 - 625912765) < 0x33F5F08D != v21)
  {
    v22 = v21;
  }

  return (*(v19 + 8 * ((18992 * v22) ^ v17)))();
}

void sub_1000C78F8(uint64_t a1)
{
  v1 = 155453101 * ((2 * (a1 & 0x31920F28) - a1 - 831655721) ^ 0x284BEB18);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_1000C79BC()
{
  LODWORD(STACK[0x360]) = 0;
  LODWORD(STACK[0x410]) = *(v1 - 256) < 0xDC02B185;
  v2 = *(v1 - 252);
  v3 = (v2 - 11452) | 0x8D40;
  v4 = (v2 - 20324) & v0 ^ 0xBC5CA6F6;
  STACK[0x3E8] = v4;
  v5 = *(v1 - 248);
  v6 = *(v5 + v4);
  v7 = v6 ^ 0xED;
  v8 = v0 & 0xFFFFFFF5 ^ 0xBC5CA6FELL;
  STACK[0x3F8] = v8;
  v9 = (v6 ^ 0xED) - 187444746;
  v10 = *(v5 + v8);
  v11 = v0;
  LODWORD(STACK[0x364]) = v3;
  v12 = STACK[0x318];
  v13 = *(STACK[0x318] + 4 * (v6 ^ 0xB8));
  v14 = (v10 ^ (v3 + 54));
  v15 = v11 & 0xFFFFFFF1 ^ 0xBC5CA6FELL;
  STACK[0x3D8] = v15;
  v16 = *(v5 + v15);
  v17 = *(v12 + 4 * (v10 ^ 0x4Eu));
  v18 = v11 & 0xFFFFFFF8 ^ 0xBC5CA6F7;
  STACK[0x3C8] = v18;
  v19 = *(v5 + v18);
  v20 = v16 ^ 0x38;
  v21 = (v16 ^ 0x38) - 187444746;
  v22 = *(v12 + 4 * (v16 ^ 0x6D));
  v23 = v11;
  v24 = v11 & 0xFFFFFFF6 ^ 0xBC5CA6FFLL;
  STACK[0x3F0] = v24;
  v25 = v11 ^ 0xBC5CA6F6;
  STACK[0x408] = v25;
  v26 = STACK[0x328];
  v27 = *(STACK[0x328] + 4 * (*(v5 + v25) ^ 0xA1));
  v28 = STACK[0x320];
  v29 = (v19 ^ 0x28) + *(STACK[0x320] + (v19 ^ 0x41)) - 73;
  v30 = STACK[0x310];
  v31 = *(STACK[0x310] + 4 * (*(v5 + v24) ^ 0xBLL));
  v32 = v23 & 0xFFFFFFF7 ^ 0xBC5CA6FELL;
  STACK[0x400] = v32;
  v33 = *(v5 + v32);
  if ((v33 & 2) != 0)
  {
    v34 = -2;
  }

  else
  {
    v34 = 2;
  }

  v35 = v34 + v33;
  v36 = v23 & 0xFFFFFFF4 ^ 0xBC5CA6FFLL;
  STACK[0x3E0] = v36;
  v37 = (*(v5 + v36) ^ 0x8E) + *(v28 + (*(v5 + v36) ^ 0xE7));
  v38 = *(v26 + 4 * ((-((v35 ^ 0xA1) & 0x4F) ^ ((v35 ^ 0xA1 | 0x4F) - (v35 ^ 0xEE)) ^ (((v35 ^ 0xA1) & 0x4F) - ((2 * v35) & 0x98) - 1131648404) ^ 0xBC8C6A6C) + (v35 ^ 0xA1 | 0x4F)));
  v39 = v23 & 0xFFFFFFFC ^ 0xBC5CA6F7;
  STACK[0x3B8] = v39;
  v40 = v17 ^ v14 ^ (v14 - 187444746);
  v41 = *(*(v1 - 248) + v39);
  v42 = v23;
  v43 = v23 & 0xFFFFFFF2 ^ 0xBC5CA6FFLL;
  STACK[0x3D0] = v43;
  v44 = v40 ^ (268686577 * v31 + 1551779157) ^ (4017936 * v31 - 941337264) ^ (v37 - 73) ^ v38;
  LOBYTE(v40) = (v41 ^ 0xBD) + *(v28 + (v41 ^ 0xD4)) - 73;
  v45 = *(v30 + 4 * (*(*(v1 - 248) + v43) ^ 0x62));
  v46 = v42 & 0xFFFFFFF3 ^ 0xBC5CA6FELL;
  STACK[0x390] = v46;
  v47 = v42 & 0xFFFFFFFE ^ 0xBC5CA6F7;
  STACK[0x388] = v47;
  v48 = *(v30 + 4 * (*(*(v1 - 248) + v47) ^ 0xEBLL));
  v49 = v7 ^ v9 ^ v27 ^ v40 ^ v13 ^ (268686577 * v48 + 1551779157) ^ (4017936 * v48 - 941337264);
  v50 = v42 & 0xFFFFFFF0 ^ 0xBC5CA6FFLL;
  STACK[0x3B0] = v50;
  v51 = *(*(v1 - 248) + v50);
  LOBYTE(v51) = *(v28 + (v51 ^ 0x4E)) + (v51 ^ 0x27);
  v52 = *(v26 + 4 * (*(*(v1 - 248) + v46) ^ 0x24));
  v53 = v42 & 0xFFFFFFFA ^ 0xBC5CA6F7;
  STACK[0x398] = v53;
  v54 = v22 ^ v20 ^ v21;
  v55 = *(v30 + 4 * (*(*(v1 - 248) + v53) ^ 0xC0));
  v56 = *(v1 - 248);
  LODWORD(STACK[0x3AC]) = v42;
  v57 = v42 & 0xFFFFFFF9 ^ 0xBC5CA6F6;
  STACK[0x3C0] = v57;
  v58 = v54 ^ (268686577 * v45 + 1551779157) ^ (4017936 * v45 - 941337264) ^ v52;
  v59 = *(v56 + v57);
  LODWORD(v57) = v58 ^ (v51 - 73);
  LODWORD(v51) = *(v12 + 4 * (v59 ^ 0xEF));
  v60 = v42 & 0xFFFFFFFB ^ 0xBC5CA6F6;
  STACK[0x3A0] = v60;
  LODWORD(v60) = (268686577 * v55 + 1551779157) ^ v29 ^ (4017936 * v55 - 941337264) ^ v51 ^ v59 ^ 0xBA ^ ((v59 ^ 0xBA) - 187444746) ^ *(v26 + 4 * (*(v56 + v60) ^ 0x84));
  LODWORD(v51) = STACK[0x300];
  LODWORD(STACK[0x384]) = v44;
  v61 = v51 ^ v44;
  v62 = *(v1 - 252);
  v63 = *(&off_1010A0B50 + (v62 ^ 0x5DB9)) - 281702854;
  v64 = *(&off_1010A0B50 + v62 - 17021) - 1971074906;
  LODWORD(v51) = *&v63[4 * ((v51 ^ v44) >> 24)];
  v65 = STACK[0x304];
  LODWORD(STACK[0x374]) = v60;
  v66 = v65 ^ v60;
  LODWORD(v51) = v51 ^ LODWORD(STACK[0x348]) ^ (*&v64[4 * ((v65 ^ v60) >> 16)] + 1153883827);
  v67 = *(&off_1010A0B50 + v62 - 16100);
  v68 = *(&off_1010A0B50 + v62 - 17782) - 357164571;
  v69 = STACK[0x340];
  LODWORD(STACK[0x380]) = v49;
  LODWORD(v36) = v49 ^ v69 ^ 0xFE04715E;
  v70 = *&v68[4 * BYTE1(v36)];
  v71 = v67 - 1051591419;
  LODWORD(v67) = STACK[0x2FC];
  LODWORD(STACK[0x378]) = v57;
  v72 = v67 ^ v57;
  LODWORD(v67) = *(v71 + 4 * (v67 ^ v57)) ^ 0x12C3886A;
  LODWORD(v67) = v51 ^ v70 ^ v67 ^ (4 * v67) & 0xD1C1B7A8;
  v73 = *(v71 + 4 * ((v49 ^ v69) ^ 0x5Eu)) ^ 0x18B3A6D3;
  v74 = LODWORD(STACK[0x2F8]) ^ *&v63[4 * HIBYTE(v72)] ^ *&v68[4 * BYTE1(v66)] ^ v73 ^ (*&v64[4 * BYTE2(v61)] + 1153883827) ^ (4 * v73) & 0xD1C1B7A8;
  v75 = *(v71 + 4 * v66) ^ 0x50EAEB8D;
  LODWORD(v51) = LODWORD(STACK[0x2F4]) ^ *&v63[4 * (((v49 ^ v69) >> 24) ^ 0x19)] ^ (*&v64[4 * BYTE2(v72)] + 1153883827) ^ *&v68[4 * BYTE1(v61)] ^ v75 ^ (4 * v75) & 0xD1C1B7A8 ^ 0x948A2B27;
  v76 = *(v71 + 4 * v61) ^ 0x1D829813;
  v77 = LODWORD(STACK[0x2F0]) ^ *&v63[4 * HIBYTE(v66)] ^ (*&v64[4 * BYTE2(v36)] + 1153883827) ^ *&v68[4 * BYTE1(v72)] ^ v76 ^ 0x3380D2A6 ^ (4 * v76) & 0xD1C1B7A8;
  v78 = (((v67 ^ 0xC80B769A) - (v67 ^ 0xA32C8FFF)) ^ 0xFFFFFFFE) + (v67 ^ 0xC80B769A);
  LODWORD(v67) = *(v71 + 4 * (((((v67 ^ 0x9A) + v67 + 1) ^ 0xFE) + (v67 ^ 0x9A)) ^ 0xBCu));
  v79 = ((4 * v67) & 0x90402420 ^ v67 & 0xBA722C61 ^ 0x6D8DF39F) & (v67 & 0x458DD39E ^ 0x690DB4CD ^ (4 * v67) & 0x41819388) | ((4 * v67) & 0x90402420 ^ v67 & 0xBA722C61) & 0x92720820;
  LOBYTE(v66) = v74 ^ 0xF3;
  LODWORD(v36) = *(v71 + 4 * v77) ^ 0xD411275B;
  LODWORD(v67) = LODWORD(STACK[0x2EC]) ^ *&v63[4 * BYTE3(v51)] ^ (*&v64[4 * ((v74 ^ 0x5D840AF3) >> 16)] + 1153883827) ^ v36 ^ (4 * v36) & 0xD1C1B7A8;
  v78 ^= 0xE7838E00;
  v80 = *(v71 + 4 * v51) ^ 0xA0C2E4A0;
  v81 = LODWORD(STACK[0x2E8]) ^ *&v63[4 * (HIBYTE(v74) ^ 0xBA)] ^ *&v68[4 * BYTE1(v77)] ^ v80 ^ (4 * v80) & 0xD1C1B7A8 ^ (*&v64[4 * BYTE2(v78)] + 1153883827);
  v82 = LODWORD(STACK[0x2E4]) ^ *&v63[4 * HIBYTE(v77)] ^ (*&v64[4 * BYTE2(v51)] + 1153883827) ^ *&v68[4 * ((v74 ^ 0xAF3) >> 8)] ^ 0x26DF4DD2 ^ v79;
  v83 = *(v71 + 4 * v66) ^ 0x70C53A74;
  LODWORD(v51) = LODWORD(STACK[0x2E0]) ^ (*&v64[4 * BYTE2(v77)] + 1153883827) ^ *&v68[4 * BYTE1(v51)] ^ v83 ^ *&v63[4 * HIBYTE(v78)];
  v84 = (4 * v83) & 0xD1C1B7A8;
  v85 = v67 ^ *&v68[4 * BYTE1(v78)] ^ 0xFF95B01E;
  v86 = v51 ^ v84 ^ 0x235C7C2A;
  LODWORD(v51) = LODWORD(STACK[0x2DC]) ^ *&v63[4 * HIBYTE(v85)] ^ *&v68[4 * ((v51 ^ v84 ^ 0x7C2A) >> 8)] ^ (*&v64[4 * ((v81 ^ 0x2A0DEC21) >> 16)] + 1153883827);
  v87 = *(v71 + 4 * v82) ^ 0x1460913C;
  v88 = v51 ^ v87 ^ (4 * v87) & 0xD1C1B7A8;
  LODWORD(v36) = *(v71 + 4 * v86) ^ 0x7E4A2BF3;
  LODWORD(v51) = LODWORD(STACK[0x2D8]) ^ (*&v64[4 * BYTE2(v85)] + 1153883827) ^ *&v68[4 * ((v81 ^ 0xEC21) >> 8)] ^ v36 ^ (4 * v36) & 0xD1C1B7A8 ^ *&v63[4 * HIBYTE(v82)];
  v89 = *(v71 + 4 * (v81 ^ 0x9Du)) ^ 0xF31E46A3;
  v90 = LODWORD(STACK[0x2CC]) ^ *&v63[4 * HIBYTE(v86)] ^ *&v68[4 * BYTE1(v85)] ^ v89 ^ (4 * v89) & 0xD1C1B7A8 ^ (*&v64[4 * BYTE2(v82)] + 1153883827);
  v91 = *(v71 + 4 * v85) ^ 0x180C3225;
  LODWORD(v67) = LODWORD(STACK[0x2C0]) ^ *&v63[4 * ((v81 ^ 0x2A0DEC21) >> 24)] ^ (*&v64[4 * BYTE2(v86)] + 1153883827) ^ v91 ^ (4 * v91) & 0xD1C1B7A8 ^ *&v68[4 * BYTE1(v82)];
  v92 = v88 ^ 0x72EB7486;
  v93 = *(v71 + 4 * (v51 ^ 0x13u)) ^ 0x5EB96003;
  v94 = LODWORD(STACK[0x2BC]) ^ (*&v64[4 * (BYTE2(v67) ^ 0x6B)] + 1153883827) ^ *&v68[4 * (BYTE1(v90) ^ 0xE9)] ^ *&v63[4 * ((v88 ^ 0x72EB7486u) >> 24)] ^ v93 ^ (4 * v93) & 0xD1C1B7A8;
  LOWORD(v91) = v67 ^ 0xEBFC;
  LODWORD(v67) = *&v63[4 * ((v67 ^ 0x80E8EBFC) >> 24)] ^ LODWORD(STACK[0x2D0]);
  v95 = *(v71 + 4 * (v88 ^ 0x3Au)) ^ 0x60D027FC;
  v96 = LODWORD(STACK[0x2B8]) ^ *&v68[4 * (BYTE1(v51) ^ 0x97)] ^ (*&v64[4 * ((v90 ^ 0x2E7B677C) >> 16)] + 1153883827) ^ v95 ^ (4 * v95) & 0xD1C1B7A8 ^ (((v67 ^ 0xE7C4410F) & 0x5394373F ^ 0xA6FDD7D9) & ((v67 ^ 0xE7C4410F) & 0xAC6BC8C0 ^ 0x53973FFF) | v67 & 0x8020800);
  v97 = *(v71 + 4 * (v90 ^ 0x7Cu)) ^ 0x1C4C6987;
  v98 = LODWORD(STACK[0x2B4]) ^ *&v63[4 * (BYTE3(v51) ^ 0x84)] ^ *&v68[4 * BYTE1(v91)] ^ v97 ^ (*&v64[4 * BYTE2(v92)] + 1153883827) ^ (4 * v97) & 0xD1C1B7A8 ^ 0x1226270C;
  LODWORD(v67) = *(v71 + 4 * v91) ^ 0x4481794C;
  LOWORD(v91) = v94 ^ 0xD1E0;
  v99 = LODWORD(STACK[0x344]) ^ *&v63[4 * ((v90 ^ 0x2E7B677C) >> 24)] ^ (*&v64[4 * (BYTE2(v51) ^ 0x14)] + 1153883827) ^ *&v68[4 * BYTE1(v92)] ^ v67 ^ (4 * v67) & 0xD1C1B7A8 ^ 0x6818197B;
  v100 = *(v71 + 4 * ((LOBYTE(STACK[0x344]) ^ v63[4 * ((v90 ^ 0x2E7B677C) >> 24)] ^ (v64[4 * (BYTE2(v51) ^ 0x14)] - 77) ^ v68[4 * BYTE1(v92)] ^ v67 ^ (4 * v67) & 0xA8) ^ 0x7Bu)) ^ 0xE7E977B5;
  LODWORD(v51) = LODWORD(STACK[0x2B0]) ^ *&v63[4 * HIBYTE(v98)] ^ (*&v64[4 * ((v94 ^ 0xF708D1E0) >> 16)] + 1153883827) ^ v100 ^ *&v68[4 * ((v96 ^ 0x44C4) >> 8)] ^ (4 * v100) & 0xD1C1B7A8;
  LODWORD(v67) = LODWORD(STACK[0x35C]) ^ *&v63[4 * (HIBYTE(v94) ^ 0x10)] ^ *&v68[4 * BYTE1(v99)];
  v101 = *(v71 + 4 * v98) ^ 0xBF19213E;
  LODWORD(v67) = v67 ^ v101 ^ (4 * v101) & 0xD1C1B7A8 ^ (*&v64[4 * ((v96 ^ 0x13CF44C4u) >> 16)] + 1153883827);
  v102 = *(v71 + 4 * v91) ^ 0xAFF3F93D;
  v103 = LODWORD(STACK[0x2AC]) ^ *&v68[4 * BYTE1(v98)] ^ (*&v64[4 * BYTE2(v99)] + 1153883827) ^ v102 ^ *&v63[4 * ((v96 ^ 0x13CF44C4u) >> 24)] ^ (4 * v102) & 0xD1C1B7A8;
  v104 = *(v71 + 4 * (v96 ^ 0x78u)) ^ 0x33E0215C;
  v105 = LODWORD(STACK[0x2A8]) ^ *&v63[4 * HIBYTE(v99)] ^ (*&v64[4 * BYTE2(v98)] + 1153883827) ^ *&v68[4 * BYTE1(v91)] ^ v104 ^ 0x48BA7295 ^ (4 * v104) & 0xD1C1B7A8;
  v106 = v103 ^ 0xE8E2EF64;
  v107 = (*&v64[4 * ((v103 ^ 0xE8E2EF64) >> 16)] + 1153883827) ^ *&v68[4 * ((LOWORD(STACK[0x2A8]) ^ *&v63[4 * HIBYTE(v99)] ^ (*&v64[4 * BYTE2(v98)] - 8525) ^ *&v68[4 * BYTE1(v91)] ^ v104 ^ 0x7295 ^ (4 * v104) & 0xB7A8) >> 8)];
  v108 = v67 ^ 0x34FE63A0;
  BYTE1(v99) = BYTE1(v51) ^ 0x9B;
  LODWORD(v36) = *(v71 + 4 * (v51 ^ 0x4Au)) ^ 0x8BCE0A56;
  v109 = LODWORD(STACK[0x2A4]) ^ *&v63[4 * ((v67 ^ 0x34FE63A0) >> 24)] ^ v36 ^ v107 ^ (4 * v36) & 0xD1C1B7A8;
  LODWORD(v67) = LODWORD(STACK[0x2A0]) ^ *&v63[4 * HIBYTE(v105)];
  v110 = *(v71 + 4 * (v103 ^ 0xD8u)) ^ 0xB4F0D0F7;
  LODWORD(v36) = LODWORD(STACK[0x29C]) ^ *&v68[4 * BYTE1(v108)] ^ (*&v64[4 * (BYTE2(v51) ^ 0x96)] + 1153883827) ^ v110 ^ (4 * v110) & 0xD1C1B7A8;
  v111 = *&v63[4 * (BYTE3(v51) ^ 0x80)];
  LODWORD(v51) = v36 ^ ((v67 & 0xF300C074 ^ 0x528CD1C3) & (v67 & 0xCFF3F8B ^ 0xF3DCC0FF) | v67 & 0xC732E08);
  LODWORD(v36) = *(v71 + 4 * v105) ^ 0x4A1FB9EC;
  LODWORD(v67) = LODWORD(STACK[0x298]) ^ v111 ^ (*&v64[4 * BYTE2(v108)] + 1153883827) ^ *&v68[4 * BYTE1(v106)] ^ v36 ^ (4 * v36) & 0xD1C1B7A8;
  v112 = *(v71 + 4 * v108) ^ 0x67D2DFB8;
  v113 = LODWORD(STACK[0x330]) ^ *&v63[4 * HIBYTE(v106)] ^ *&v68[4 * BYTE1(v99)] ^ (*&v64[4 * BYTE2(v105)] + 1153883827) ^ v112;
  v114 = v67 ^ 0xD3AF6C83;
  v115 = v113 ^ (4 * v112) & 0xD1C1B7A8 ^ 0xF1FC993F;
  BYTE2(v36) = BYTE2(v109) ^ 0xA6;
  v116 = *(v71 + 4 * v115) ^ 0xAD51BDC2;
  v117 = LODWORD(STACK[0x294]) ^ (*&v64[4 * ((v67 ^ 0xD3AF6C83) >> 16)] + 1153883827) ^ *&v63[4 * (BYTE3(v51) ^ 0x1D)] ^ *&v68[4 * ((v109 ^ 0x3DB4) >> 8)] ^ v116 ^ (4 * v116) & 0xD1C1B7A8;
  v118 = *(v71 + 4 * (v67 ^ 0x83u)) ^ 0xD48BD149;
  v119 = *&v68[4 * ((v67 ^ 0x6C83) >> 8)];
  LODWORD(v67) = LODWORD(STACK[0x290]) ^ *&v63[4 * ((v109 ^ 0x88A63DB4) >> 24)] ^ (*&v64[4 * BYTE2(v115)] + 1153883827) ^ v118 ^ *&v68[4 * (BYTE1(v51) ^ 0x95)] ^ (4 * v118) & 0xD1C1B7A8;
  v120 = *(v71 + 4 * (v109 ^ 8u)) ^ 0x669FD1B7;
  v121 = LODWORD(STACK[0x28C]) ^ *&v63[4 * HIBYTE(v115)] ^ v119 ^ v120 ^ (*&v64[4 * BYTE2(v51)] + 1153883827) ^ (4 * v120) & 0xD1C1B7A8;
  LODWORD(v51) = *(v71 + 4 * (v51 ^ 0xA3u)) ^ 0x4CEE187E;
  v122 = LODWORD(STACK[0x288]) ^ *&v63[4 * HIBYTE(v114)] ^ (*&v64[4 * BYTE2(v36)] + 1153883827) ^ *&v68[4 * BYTE1(v115)] ^ v51 ^ 0x25CD7430 ^ (4 * v51) & 0xD1C1B7A8;
  v123 = v67 ^ 0x359A54F0;
  v124 = *(v71 + 4 * v122) ^ 0xAE9E0C80;
  v125 = *&v63[4 * ((v67 ^ 0x359A54F0) >> 24)] ^ LODWORD(STACK[0x334]) ^ (*&v64[4 * (BYTE2(v121) ^ 0x6C)] + 1153883827) ^ *&v68[4 * (BYTE1(v117) ^ 0x63)] ^ v124 ^ (4 * v124) & 0xD1C1B7A8;
  v126 = v117 ^ 0x9393EDD6;
  LODWORD(v67) = *&v63[4 * ((v117 ^ 0x9393EDD6) >> 24)];
  v127 = (STACK[0x284] & ~v67) == 0;
  v128 = v67 ^ 0xCB9E65FE;
  v129 = STACK[0x258];
  if (v127)
  {
    v129 = STACK[0x284];
  }

  v130 = LODWORD(STACK[0x280]) ^ *&v68[4 * BYTE1(v123)] ^ (*&v64[4 * BYTE2(v122)] + 1153883827) ^ (v129 + v128);
  v131 = *(v71 + 4 * (v121 ^ 0xC0u)) ^ 0x96AB4651;
  v132 = v130 ^ v131 ^ (4 * v131) & 0xD1C1B7A8;
  v133 = *(v71 + 4 * v123) ^ 0x3F112769;
  v134 = *&v63[4 * (HIBYTE(v121) ^ 0x25)] ^ LODWORD(STACK[0x350]) ^ (*&v64[4 * BYTE2(v126)] + 1153883827) ^ *&v68[4 * BYTE1(v122)] ^ v133 ^ (4 * v133) & 0xD1C1B7A8;
  v135 = *(v71 + 4 * v126) ^ 0x6F2EB70D;
  v136 = v132 ^ 0xF2FEE700;
  v137 = LODWORD(STACK[0x27C]) ^ *&v63[4 * HIBYTE(v122)] ^ (*&v64[4 * BYTE2(v123)] + 1153883827) ^ *&v68[4 * (BYTE1(v121) ^ 1)] ^ v135 ^ (4 * v135) & 0xD1C1B7A8 ^ 0xE9BA2178;
  v138 = *(v71 + 4 * (LOBYTE(STACK[0x27C]) ^ v63[4 * HIBYTE(v122)] ^ (v64[4 * BYTE2(v123)] - 77) ^ v68[4 * (BYTE1(v121) ^ 1)] ^ v135 ^ (4 * v135) & 0xA8 ^ 0x78)) ^ 0x1F2B0F14;
  v139 = LODWORD(STACK[0x278]) ^ *&v63[4 * (HIBYTE(v125) ^ 0x2F)] ^ *&v68[4 * ((v132 ^ 0xE700) >> 8)] ^ (*&v64[4 * ((v134 ^ 0x42552AB7) >> 16)] + 1153883827) ^ v138 ^ (4 * v138) & 0xD1C1B7A8;
  v140 = *&v63[4 * HIBYTE(v137)];
  v127 = (STACK[0x25C] & ~v140) == 0;
  v141 = v140 ^ 0x45EF460E;
  v142 = STACK[0x254];
  if (v127)
  {
    v142 = STACK[0x25C];
  }

  v143 = LODWORD(STACK[0x274]) ^ *&v68[4 * (BYTE1(v134) ^ 0xA4)] ^ (*&v64[4 * (BYTE2(v125) ^ 0x5C)] + 1153883827) ^ (v142 + v141);
  v144 = *(v71 + 4 * v132) ^ 0xB9AF797D;
  v145 = v143 ^ v144 ^ (4 * v144) & 0xD1C1B7A8;
  v146 = *(v71 + 4 * (v134 ^ 0xB7u)) ^ 0x75F00CE3;
  v147 = LODWORD(STACK[0x270]) ^ *&v63[4 * HIBYTE(v136)] ^ (*&v64[4 * BYTE2(v137)] + 1153883827) ^ *&v68[4 * (BYTE1(v125) ^ 0x41)] ^ v146 ^ (4 * v146) & 0xD1C1B7A8;
  v148 = LODWORD(STACK[0x268]) ^ *&v63[4 * (HIBYTE(v134) ^ 0xA5)];
  v149 = *(v71 + 4 * (v125 ^ 0x9Fu)) ^ 0x93DB2643;
  v150 = *&v68[4 * BYTE1(v137)] ^ (*&v64[4 * BYTE2(v136)] + 1153883827) ^ v149 ^ (4 * v149) & 0xD1C1B7A8 ^ (v148 + LODWORD(STACK[0x26C]) - 2 * (v148 & STACK[0x26C]));
  v151 = *(&off_1010A0B50 + v62 - 18655) - 1375623374;
  v152 = *(&off_1010A0B50 + v62 - 18461) - 1149299194;
  v153 = *&v152[4 * (BYTE2(v150) ^ 0x18)];
  v154 = LODWORD(STACK[0x264]) ^ ((HIBYTE(v139) ^ 0xA2) + 1526305674) ^ *&v151[4 * (HIBYTE(v139) ^ 1)] ^ v153 ^ (v153 >> 4) & 0x828D515;
  v155 = *(&off_1010A0B50 + (v62 ^ 0x4F62)) - 1212505923;
  v156 = *&v155[4 * (BYTE1(v147) ^ 0xB)];
  v157 = (-(v154 ^ 0x42A778C0) ^ (((v156 << 15) ^ 0xE9210000) - (v154 ^ 0x42A778C0 ^ (v156 << 15) ^ 0xE9210000)) ^ 0x60B6D3E0 ^ ((v154 ^ 0x42A778C0) - 2 * ((v154 ^ 0x42A778C0) & 0x60B6D3E6 ^ v154 & 6) + 1622594528)) + ((v156 << 15) ^ 0xE9210000);
  v158 = *(&off_1010A0B50 + (v62 ^ 0x4B5C)) - 1743483195;
  v159 = (v145 ^ 0x1A) + 632025942 + *&v158[4 * (v145 ^ 0xF8)];
  v160 = (v147 ^ 0xB5) + 632025942 + *&v158[4 * (v147 ^ 0x57)];
  v161 = LODWORD(STACK[0x260]) ^ ((HIBYTE(v147) ^ 0x89) + 1526305674) ^ *&v151[4 * (HIBYTE(v147) ^ 0x2A)];
  v162 = (__ROR4__(__ROR4__(v161 & 0x71D08BA5 ^ 0xB747B03B, 4) ^ 0x2055D1BE, 28) ^ 0x42C54BCA) & (v161 & 0x8E2F745A ^ 0x7DF88BA5);
  v163 = HIBYTE(v145);
  v164 = *&v151[4 * (HIBYTE(v145) ^ 0x40)];
  v165 = HIBYTE(v150);
  v166 = *&v151[4 * (HIBYTE(v150) ^ 0xA8)];
  v167 = *&v152[4 * (BYTE2(v139) ^ 0x7C)];
  v168 = *&v152[4 * (BYTE2(v145) ^ 0x39)];
  v169 = *&v152[4 * (BYTE2(v147) ^ 0x72)];
  v170 = v62;
  LODWORD(v152) = *&v155[4 * (BYTE1(v150) ^ 0x3D)];
  v171 = *&v155[4 * (BYTE1(v139) ^ 0x7A)];
  v172 = *&v155[4 * (BYTE1(v145) ^ 0xC1)];
  LODWORD(v155) = (v150 ^ 0xC4) + 632025942 + *&v158[4 * (v150 ^ 0x26)];
  LODWORD(v151) = LODWORD(STACK[0x414]) ^ (v156 >> 17) ^ v159 ^ v157;
  v173 = LODWORD(STACK[0x308]) ^ LODWORD(STACK[0x420]) ^ ((v163 ^ 0xE3) + 1526305674) ^ v164 ^ v167 ^ (v167 >> 4) & 0x828D515 ^ (v152 >> 17) ^ (v152 << 15) ^ v160;
  LODWORD(v155) = v168 ^ LODWORD(STACK[0x418]) ^ (v168 >> 4) & 0x828D515 ^ __ROR4__(v171, 17) ^ v161 & 0xE201448 ^ v155;
  HIDWORD(v174) = v166 ^ LODWORD(STACK[0x338]);
  LODWORD(v174) = HIDWORD(v174);
  v175 = ((v165 ^ 0xB) + 1526305674) ^ LODWORD(STACK[0x42C]) ^ v169 ^ (v169 >> 4) & 0x828D515 ^ ((v174 >> 7) >> 25) ^ ((v174 >> 7) << 7) ^ __ROR4__(v172, 17) ^ ((v139 ^ 0xF) + 632025942 + *&v158[4 * (v139 ^ 0xED)]);
  v176 = *(&off_1010A0B50 + (v62 ^ 0x4227)) - 1546800106;
  *(v56 + STACK[0x388]) = BYTE2(v151) ^ 0x9B ^ v176[BYTE2(v151) ^ 0x21];
  v177 = *(&off_1010A0B50 + v62 - 15855) - 2138388062;
  *(v56 + STACK[0x3C8]) = ((v173 ^ 0x6A) - (v173 ^ 0x42)) ^ 0x86 ^ v177[v173 ^ 4];
  v178 = *(&off_1010A0B50 + v62 - 17006) - 1599351507;
  *(v56 + STACK[0x390]) = HIBYTE(v175) ^ 0x61 ^ v178[HIBYTE(v175) ^ 0x93];
  v179 = BYTE1(v155) ^ BYTE1(v162);
  HIDWORD(v174) = ~(v175 >> 15);
  LODWORD(v174) = (v175 << 17) ^ 0x83FFFFFF;
  v180 = *(&off_1010A0B50 + v170 - 18131) - 1561319010;
  LOBYTE(v163) = v180[(v174 >> 25) ^ 0x1DLL];
  *(v56 + STACK[0x3D8]) = ((((v163 ^ 0x4C) - 76) ^ ((v163 ^ 0x5C) - 92) ^ ((v163 ^ 0xD8) + 40)) - 53) ^ (((16 * v163) ^ 0x31) - 64);
  LOBYTE(v163) = v180[(((BYTE1(v151) ^ 0xD6) - (BYTE1(v151) ^ 0x96)) ^ 0xFFFFFF80) + (BYTE1(v151) ^ 0xD6)];
  *(v56 + STACK[0x3E8]) = (16 * v163 - 64) ^ 0x6D ^ ((((v163 ^ 0x92) + 110) ^ ((v163 ^ 0xA2) + 94) ^ ((v163 ^ 0xF8) + 8)) - 53);
  *(v56 + STACK[0x3B8]) = ((v151 ^ 0x7D) - (v151 ^ 0x55)) ^ 0x6C ^ v177[v151 ^ 0x13];
  *(v56 + STACK[0x3F8]) = (63 - 16 * v180[v179 ^ 0xACLL]) ^ 0x35 ^ ((((v180[v179 ^ 0xACLL] ^ 0xE5) + 27) ^ ((v180[v179 ^ 0xACLL] ^ 0xFA) + 6) ^ ((v180[v179 ^ 0xACLL] ^ 0xD7) + 41)) - 53);
  *(v56 + STACK[0x3D0]) = BYTE2(v175) ^ 0x9A ^ v176[BYTE2(v175) ^ 0x4BLL];
  *(v56 + STACK[0x398]) = v176[BYTE2(v173) ^ 0x4FLL] ^ __ROR4__(__ROR4__(HIWORD(v173), 7) ^ 0x4A000000, 25) ^ 9;
  *(v56 + STACK[0x3E0]) = ((v155 ^ v162 ^ 0x68) - (v155 ^ v162 ^ 0x40)) ^ 0xA8 ^ v177[(v155 ^ v162) ^ 6];
  *(v56 + STACK[0x3F0]) = ((v155 ^ v162) >> 16) ^ v176[((v155 ^ v162) >> 16) ^ 0x36] ^ 1;
  *(v56 + STACK[0x3B0]) = ((v175 ^ 0x19) - (v175 ^ 0x31)) ^ 0xC5 ^ v177[v175 ^ 0x77];
  *(v56 + STACK[0x408]) = BYTE3(v151) ^ 0x8E ^ v178[(v151 >> 24) ^ 0xC8];
  *(v56 + STACK[0x3A0]) = HIBYTE(v173) ^ 0xF4 ^ v178[HIBYTE(v173) ^ 0xE3];
  *(v56 + STACK[0x400]) = ((v155 ^ v162) >> 24) ^ 0xA9 ^ v178[((v155 ^ v162) >> 24) ^ 0x3DLL];
  *(v56 + STACK[0x3C0]) = ((((v180[BYTE1(v173) ^ 0xB4] ^ 0x7E) - 126) ^ ((v180[BYTE1(v173) ^ 0xB4] ^ 0xA0) + 96) ^ ((v180[BYTE1(v173) ^ 0xB4] ^ 0x16) - 22)) - 53) ^ (((16 * v180[BYTE1(v173) ^ 0xB4]) ^ 0x13) - 64);
  LODWORD(v178) = (((LODWORD(STACK[0x3AC]) ^ 0x12344F36) - 305418038) ^ ((LODWORD(STACK[0x3AC]) ^ 0xF7694ED) - 259429613) ^ ((LODWORD(STACK[0x3AC]) ^ 0xA11E7D2D) + 1591837395)) - 205418420;
  LODWORD(v178) = ((v178 ^ 0x81B56B8F) + 1227783479) ^ v178 ^ ((v178 ^ 0xBC2BDD1C) + 1957743526) ^ ((v178 ^ 0xF587002A) + 1025250964) ^ ((v178 ^ 0xFF7D5FFF) + 937838919);
  LODWORD(v180) = (((v178 ^ 0xEE0B1473) - 1697864643) ^ ((v178 ^ 0x4FAF24CE) + 996709506) ^ ((v178 ^ 0x96C0D9FB) - 502830667)) - 1738581893;
  v181 = LODWORD(STACK[0x410]) ^ (v180 < 0xDC02B185);
  v182 = v180 < *(v1 - 256);
  if (v181)
  {
    v182 = STACK[0x410];
  }

  return (*(STACK[0x368] + 8 * ((60160 * v182) ^ v170)))();
}

uint64_t sub_1000C9A18(uint64_t a1, int a2)
{
  *(*(v11 - 136) + v8) = *(v5 + (v8 & 0xF)) ^ *(v2 + v8) ^ *((v8 & 0xF) + v3 + 4) ^ (-43 * (v8 & 0xF)) ^ *((v8 & 0xF) + v4 + 1);
  v12 = v8 - 8907;
  v13 = v8 + 1429359353 < v7;
  if (v7 < v9 != v12 + ((v6 + 807916664) & 0xCFD7EEFC) > 0xAACDB507)
  {
    v13 = v7 < v9;
  }

  return (*(v10 + 8 * ((v13 * a2) ^ v6)))();
}

uint64_t sub_1000C9B28()
{
  v5 = (v1 ^ 0x903) - 16785 + v0 - 733;
  LODWORD(STACK[0x450]) = v5;
  if (v5 > v3)
  {
    v2 = 371891407;
  }

  LODWORD(STACK[0x454]) = v2;
  return (*(v4 + 8 * ((244 * (v2 != -371865839)) ^ v1)))();
}

uint64_t sub_1000C9CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v22 = (*(v19 + 8 * (v21 ^ 0xD212)))(v18, v17);
  HIDWORD(v32) = (v22 ^ 0xAC1FAFBF) + ((v21 + 4142) ^ 0xD3E07E32) + ((2 * v22) & 0x583F5F7E);
  (*(v19 + 8 * (v21 ^ 0xD212)))(a17 + 33, v18);
  v23 = (*(v19 + 8 * (v21 ^ 0xD212)))(v17, a17 + 33);
  LODWORD(v32) = (v21 - 1095443034) & 0x414B7E77;
  return (*(v19 + 8 * (v21 ^ (15 * (v20 != 0)))))(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, v32, a13, a14, a15);
}

uint64_t sub_1000C9E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W5>, int a5@<W6>, int a6@<W8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int a59, int a60, int a61, __int16 a62, uint64_t a63)
{
  LODWORD(STACK[0x278]) = v67;
  LODWORD(STACK[0x3A8]) = a4;
  LODWORD(STACK[0x3AC]) = v66;
  LODWORD(STACK[0x2F0]) = a5;
  LODWORD(STACK[0x31C]) = a66;
  LOWORD(STACK[0x236]) = a65;
  LOWORD(STACK[0x292]) = v68;
  LODWORD(STACK[0x27C]) = a59;
  LOWORD(STACK[0x38E]) = a62;
  return (*(v70 + 8 * ((438 * ((((v69 ^ 0xB2C1CA95) + 916407124) ^ ((v69 ^ 0xAA014591) + 778030168) ^ ((((a6 + 1315) | 0x6C4) ^ 0xEEA9937) + (v69 ^ 0x8AB43E2C))) - 371865860 < 0xFFFFFFEB)) ^ a6)))(a1, a2, a3, 371891213);
}

uint64_t sub_1000C9F64@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v9 = v7 + 36824;
  v10 = ((v9 ^ 0x1B58u) - 38024) & (v6 + 15);
  v11 = -a2 - v6;
  v12 = v11 + 1;
  v13 = (v2 - a2) > 0xF && (v11 + 1 + v3 + v10) > 0xF;
  v14 = v11 + v4 + (v9 ^ 0x146Fu) + v10 - 39837;
  v17 = v13 && v14 > 0xF && (v12 + v5 + v10) > 0xF;
  return (*(v8 + 8 * ((v17 * a1) ^ v9)))();
}

uint64_t sub_1000C9FF0@<X0>(int a1@<W0>, uint64_t a2@<X3>, unsigned int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v33 = ((v31 ^ 0xE37BE8F4) + 856969623) ^ v31 ^ ((v31 ^ 0xA165B23C) + 1896483679) ^ ((v31 ^ 0x5FFFFFDA) - 1886370119) ^ (((a1 - 9759) ^ 0xE21E3BA1) + (v31 ^ 0x3271E38F));
  v34 = v32 + (((v33 ^ 0x928843CE) + 897637841) ^ ((v33 ^ 0x70FE5E23) - 671694786) ^ ((v33 ^ 0x629197CB) - 979826218)) - 2078651392;
  v35 = (v34 ^ 0xFFA71871) & (2 * (v34 & 0xFFA45D79)) ^ v34 & 0xFFA45D79;
  v36 = ((2 * (v34 ^ 0xDEAFB071)) ^ 0x4217DA10) & (v34 ^ 0xDEAFB071) ^ (2 * (v34 ^ 0xDEAFB071)) & 0x210BED08;
  v37 = (v36 ^ 0x21082508) & (16 * (v36 & (4 * v35) ^ v35)) & ((4 * (v36 ^ 0x21082508)) ^ 0x42FB420) ^ v36 & (4 * v35) ^ v35;
  v38 = *(a2 + 4 * a28);
  v39 = ((v38 ^ 0x39D925C) - 739103937) ^ v38 ^ ((v38 ^ 0xD5926F33) + 100521554) ^ ((v38 ^ 0x86E044ED) + 1452277136) ^ ((v38 ^ 0x7F7FFF1F) - 1357887874) ^ v34 ^ (2 * v37);
  return (*(a31 + 8 * ((229 * (((*(a2 + 4 * a3) + (((v39 ^ 0x3DE8B8EA) - 110480944) ^ ((v39 ^ 0x892EEFAB) + 1303144079) ^ ((v39 ^ 0x26E24CA5) - 496974463)) + 2043225761) & 7) != 2)) ^ (a1 + 12036))))((a1 - 9759) ^ 0x74A3u);
}

uint64_t sub_1000CA370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  *(a8 + 1424) = a3;
  strcpy((a8 + 1432), "____________________");
  *(a8 + 1453) = 0;
  *(a8 + 1454) = 0;
  *(a8 + 1456) = 0;
  *(a8 + 1464) = 0;
  *(a8 + 1472) = 0;
  *(a8 + 1480) = 0;
  *(a8 + 1488) = 0;
  *(a8 + 1496) = 0;
  *(a8 + 1504) = 0;
  *(a8 + 1512) = 0x5F5F5F5F00000000;
  memset((a8 + 1520), 95, 16);
  *(v62 + 96) = a8;
  STACK[0x728] = v62 + 96;
  *(a8 + 476) = 1;
  STACK[0x5E8] = *(v63 + 8 * v61);
  STACK[0x3A8] = v62;
  return (*(v63 + 8 * (v61 ^ 0x12F4 ^ ((v61 + 2714) | 0x2048))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61);
}

uint64_t sub_1000CA460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v42 = (v40 ^ 0xD54F387B) & (2 * (v40 & v41)) ^ v40 & v41;
  v43 = (((v40 ^ 0xD59C6355 ^ (v37 - 2003)) << ((v37 ^ 0xE3) - 23)) ^ 0xBE7063C) & (v40 ^ 0xD59C6355 ^ (v37 - 2003)) ^ ((v40 ^ 0xD59C6355 ^ (v37 - 2003)) << ((v37 ^ 0xE3) - 23)) & 0x5F3831E;
  v44 = v40 ^ (2 * (((4 * v43) & 0x5F38318 ^ 0x5C20016 ^ ((4 * v43) ^ 0x17CE0C78) & v43) & (16 * ((v43 ^ 0x1E3021C) & (4 * v42) ^ v42)) ^ (v43 ^ 0x1E3021C) & (4 * v42) ^ v42));
  v45 = v39 + (((v44 ^ 0xAEA20662) + 1308069575) ^ ((v44 ^ 0x593186DD) - 1167847814) ^ ((v44 ^ 0x8AAFF567) + 1778023876)) + 834045597;
  v46 = (v45 ^ 0xAE0A0E5F) & (2 * (v45 & 0xCE2C8F1E)) ^ v45 & 0xCE2C8F1E;
  v47 = ((2 * (v45 ^ 0xA2421877)) ^ 0xD8DD2ED2) & (v45 ^ 0xA2421877) ^ (2 * (v45 ^ 0xA2421877)) & 0x6C6E9768;
  v48 = ((4 * (v47 ^ 0x24229129)) & 0x6C6E9760 ^ 0x202A1520 ^ ((4 * (v47 ^ 0x24229129)) ^ 0x31BA5DA0) & (v47 ^ 0x24229129)) & (16 * ((v47 ^ 0x48440440) & (4 * v46) ^ v46)) ^ (v47 ^ 0x48440440) & (4 * v46) ^ v46;
  v49 = *(v36 + 4 * a33);
  v50 = ((v49 ^ 0xE7C66E3D) + 933877600) ^ v49 ^ ((v49 ^ 0xC312336A) + 326994441) ^ ((v49 ^ 0x40BBE439) - 1865130660) ^ ((v49 ^ 0x4BFFFFF3) - 1685043566) ^ v45 ^ (2 * v48);
  return (*(a36 + 8 * ((499 * (((*(v36 + 4 * v38) + (((v50 ^ 0x88E08B6F) - 1636850559) ^ ((v50 ^ 0x7F6114F1) + 1777220383) ^ ((v50 ^ 0x1EED561D) + 140671475)) - 796142858) & 7) == 2)) ^ v37)))();
}

uint64_t sub_1000CA864@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 + 6648));
  LODWORD(STACK[0x5D8]) = v1;
  return v3();
}

uint64_t sub_1000CAAA4()
{
  v5 = *(v8 + 16);
  v6 = 634647737 * ((v4 - 144) ^ 0x6D962FFC);
  *(v4 - 144) = v9;
  *(v4 - 136) = v6 ^ 0x3E21593E;
  *(v4 - 132) = (v0 + 6689) ^ v6;
  (*(v3 + 8 * (v0 ^ 0x8ADF)))(v4 - 144);
  *(v4 - 136) = v0 + 1112314453 * ((((v4 - 144) | 0xF2B8D2F6) - (v4 - 144) + ((v4 - 144) & 0xD472D08)) ^ 0x1DEEF82F) + 18261;
  *(v4 - 128) = v10;
  *(v4 - 120) = v9;
  *(v4 - 144) = v10;
  *(v4 - 112) = v1;
  *(v4 - 104) = v2;
  (*(v3 + 8 * (v0 + 35056)))(v4 - 144);
  *(v4 - 144) = v10;
  *(v4 - 128) = v5;
  *(v4 - 136) = (v0 + 33667) ^ (155453101 * ((v4 - 144) ^ 0xE6261BCF));
  return (*(v3 + 8 * (v0 ^ 0x8B3E)))(v4 - 144);
}

void sub_1000CABF4(_DWORD *a1)
{
  v1 = *a1 ^ (297845113 * (((a1 | 0x8DDC3DF6) - (a1 | 0x7223C209) + 1914946057) ^ 0xFAEF2168));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000CAD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W8>, __n128 a5@<Q1>, __n128 a6@<Q2>, __n128 a7@<Q3>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, __n128 a56)
{
  v58 = (v57 + 908);
  v59 = vld1q_dup_f32(v58);
  return (*(v56 + 8 * (a4 - 7465)))(a1, a2, a3, 71, v59, a5, a6, a7, a56);
}

uint64_t sub_1000CADC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v14 = *(*(&off_1010A0B50 + (a3 ^ 0x1EE6)) + 4 * ((((((v13 + a11) ^ 0xC2) + 33) ^ (v13 + a11) ^ (((v13 + a11) ^ 0xDF) + 62) ^ (((a3 - 36) & 0xD7 ^ (v13 + a11) ^ 0xC1) + 53)) ^ (((125 * (a3 ^ 0x61) - 36) ^ (v13 + a11)) + 53)) & 0x7F ^ 0x1Du) - 1194123443);
  v15 = (v14 ^ 0xDD69091E) & (2 * (v14 & 0xDC712D5F)) ^ v14 & 0xDC712D5F;
  v16 = ((2 * (v14 ^ 0x4DA9098A)) ^ 0x23B049AA) & (v14 ^ 0x4DA9098A) ^ (2 * (v14 ^ 0x4DA9098A)) & 0x91D824D4;
  v17 = v16 ^ 0x90482455;
  v18 = (v16 ^ 0x1800080) & (4 * v15) ^ v15;
  v19 = ((4 * v17) ^ 0x47609354) & v17 ^ (4 * v17) & 0x91D824D4;
  v20 = (v19 ^ 0x1400050) & (16 * v18) ^ v18;
  v21 = ((16 * (v19 ^ 0x90982481)) ^ 0x1D824D50) & (v19 ^ 0x90982481) ^ (16 * (v19 ^ 0x90982481)) & 0x91D824D0;
  v22 = v20 ^ 0x91D824D5 ^ (v21 ^ 0x11800400) & (v20 << 8);
  v23 = v14 ^ (2 * ((v22 << 16) & 0x11D80000 ^ v22 ^ ((v22 << 16) ^ 0x24D50000) & (((v21 ^ 0x80582085) << 8) & 0x11D80000 ^ 0x1D80000 ^ (((v21 ^ 0x80582085) << 8) ^ 0x58240000) & (v21 ^ 0x80582085)))) ^ 0xFE6164F5;
  v14 += 596562594;
  v24 = (2 * (v14 & 0xB8E25ABE ^ 0x4534AD2)) & 0x400050 ^ v14 & 0xB8E25ABE ^ 0x4534AD2 ^ ((2 * (v14 & 0xB8E25ABE ^ 0x4534AD2)) ^ 0x8A695A4) & (v14 ^ 0xBCB1106C);
  v25 = (2 * (v14 ^ 0xBCB1106C)) & 0x4534AD2 ^ 0x4514A52 ^ ((2 * (v14 ^ 0xBCB1106C)) ^ 0x8A695A4) & (v14 ^ 0xBCB1106C);
  v26 = (4 * v24) & 0x4534AD0 ^ v24 ^ ((4 * v24) ^ 0x114D2B48) & v25;
  v27 = (4 * v25) & 0x4534AD0 ^ 0x4124092 ^ ((4 * v25) ^ 0x114D2B48) & v25;
  v28 = (16 * v26) & 0x4534AD0 ^ v26 ^ ((16 * v26) ^ 0x41240920) & v27;
  v29 = (16 * v27) & 0x4534AC0 ^ 0x4342D2 ^ ((16 * v27) ^ 0x4534AD20) & v27;
  v30 = v28 ^ (v28 << 8) & 0x4534A00 ^ ((v28 << 8) ^ 0x12489200) & v29 ^ 0x10040;
  v31 = ((v30 << 16) ^ 0x4AD20000) & ((v29 << 8) & 0x4530000 ^ 0x4110000 ^ ((v29 << 8) ^ 0x534A0000) & v29);
  return (*(v12 + 8 * ((29 * ((v14 ^ (2 * ((v30 << 16) & 0x4530000 ^ v30 ^ v31))) >> 2 == 741880774)) ^ a3)))(v31, v23, 0x2E2501251A32EBBDLL, a12, 72548352, a6, 29, 15997 * (a3 ^ 0x1C61u), a9, a10);
}

uint64_t sub_1000CB364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, unsigned int a10, unsigned int a11, uint64_t a12)
{
  v18 = *(v13 + 8);
  v19 = 139493411 * ((~&a9 & 0xB0876E7F | &a9 & 0x4F789180) ^ 0xBCAA8F3A);
  a9 = v15 + 10;
  a10 = v12 - v19 - ((2 * v12) & 0x9E9B8558) + 1330496172;
  a11 = v17 - 1105990770 - v19;
  (*(v14 + 8 * (v17 ^ 0xE6A9)))(&a9);
  v20 = 139493411 * ((((2 * &a9) | 0xBBC08F0E) - &a9 - 1574979463) ^ 0x51CDA6C2);
  a10 = *(v15 + 5) - v20 - ((2 * *(v15 + 5)) & 0x9E9B8558) + 1330496172;
  a11 = v17 - 1105990770 - v20;
  a9 = (v15 + 84);
  (*(v14 + 8 * (v17 + 40617)))(&a9);
  a10 = (v17 + 705712674) ^ (1022166737 * (((&a9 | 0x40D0654B) - (&a9 & 0x40D06548)) ^ 0xFAC084D9));
  a12 = v16;
  a9 = v15;
  v21 = (*(v14 + 8 * (v17 + 40595)))(&a9);
  *v18 = *v15;
  v18[1] = *(v15 + 1);
  v18[2] = *(v15 + 2);
  v18[3] = *(v15 + 3);
  v18[4] = *(v15 + 4);
  v18[5] = *(v15 + 5);
  v18[6] = *(v15 + 6);
  v18[7] = *(v15 + 7);
  v18[8] = *(v15 + 8);
  v18[9] = *(v15 + 9);
  v18[10] = *(v15 + 10);
  v18[11] = *(v15 + 11);
  v18[12] = *(v15 + 12);
  v18[13] = *(v15 + 13);
  v18[14] = *(v15 + 14);
  memset(v15, 70, 15);
  v15[2] = 0;
  return (*(v14 + 8 * v17))(v21, 0);
}

uint64_t sub_1000CB594@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, unsigned int a3@<W4>, uint64_t a4@<X5>, uint64_t a5@<X6>, __int16 a6@<W8>)
{
  v15 = *(v11 + 8 * v8);
  v16 = *v6;
  v17 = ((2 * (v7 - 1497668668)) & 0x6F4DBEFC) + ((v7 - 1497668668) ^ 0xB7A6DF7E);
  v18 = a6 - ((2 * a6) & 0x9590) + 19144;
  v19 = (v16 + v17 + 1213800578);
  v20 = ((v19 ^ *(*(a5 + a2) + (*(a4 + a1) & a3))) & 0x7FFFFFFF) * v13;
  v21 = (v20 ^ HIWORD(v20)) * v13;
  *v19 = *(v10 + (v21 >> 24)) ^ ((v18 & 0xFF00) >> 8) ^ *(v14 + (v21 >> 24)) ^ *((v21 >> 24) + v9 + 1) ^ v21 ^ (BYTE3(v21) * v12) ^ 0x4A;
  v22 = (v16 + v17 + 1213800579);
  v23 = ((*(*(a5 + a2) + (*(a4 + a1) & a3)) ^ v22) & 0x7FFFFFFF) * v13;
  v24 = (v23 ^ HIWORD(v23)) * v13;
  *v22 = v18 ^ *(v10 + (v24 >> 24)) ^ *(v14 + (v24 >> 24)) ^ *((v24 >> 24) + v9 + 1) ^ v24 ^ (BYTE3(v24) * v12) ^ 0xC8;
  return v15();
}

uint64_t sub_1000CB7E0()
{
  v3 = STACK[0x408];
  STACK[0xB70] = *(STACK[0x408] + 8 * v0);
  return (*(v3 + 8 * (v2 | ((v1 - 17 >= (v2 ^ 0x6D0Du) - 24257) << 6))))();
}

uint64_t sub_1000CB868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46)
{
  v48 = a46 ^ ((a46 ^ 0x19BE8A28) - 1162201038) ^ ((a46 ^ 0xFAF7DFFF) + 1509125607) ^ ((a46 ^ a41 ^ 0x356783EB) - 1771889686) ^ ((a46 ^ ((v47 - 28682) | 0x1012) ^ 0x8AD5A033) + 701563865) ^ 0x58A7805D;
  v49 = 0x1E573AC901E573BLL * (((v48 ^ 0x76417488EC92365) - 0x76417488EC92365) ^ ((v48 ^ 0x33F80D8AAD1EF56ELL) - 0x33F80D8AAD1EF56ELL) ^ ((v48 ^ 0x349C1AC2278B1BB0) - 0x349C1AC2278B1BB0)) - 0x1DC99AAB05A6DD33;
  v50 = v49 ^ ((v49 ^ 0x712F675C1E0DAB8DLL) - 0xC9A15C73D2C8039) ^ ((v49 ^ 0xC364F779573AA100) + 0x412E7A1D8BE4754CLL) ^ ((v49 ^ 0x810D0C51BCCDD6E6) + 0x3478135601302AELL) ^ ((v49 ^ 0x4EF3EEEFD6DBF7DFLL) - 0x33469C74F5FADC6BLL);
  v51 = ((v50 ^ 0x7ED4A71B74DDC88) + 0x3A1AB9BA0364F9FFLL) ^ ((v50 ^ 0x757432C117E39665) + 0x4883C10AA3CAB314);
  return (*(v46 + 8 * ((58667 * (__CFADD__(135 * (v51 ^ ((v50 ^ 0xF2C0A2B838F6159) + 0x32DBF9E037A64430)), 0x1CEDCE805AC0372BLL) + (((v51 ^ ((v50 ^ 0xF2C0A2B838F6159) + 0x32DBF9E037A64430)) * 0x87uLL) >> 64) + 135 * ((__CFADD__(v50 ^ 0x7ED4A71B74DDC88, 0x3A1AB9BA0364F9FFLL) - 1) ^ (__CFADD__(v50 ^ 0x757432C117E39665, 0x4883C10AA3CAB314) - 1) ^ (__CFADD__(v50 ^ 0xF2C0A2B838F6159, 0x32DBF9E037A64430) - 1)) + 93 < 0xFFFFFFF8)) ^ v47)))();
}

uint64_t sub_1000CBB8C()
{
  v5 = (v0 ^ 0x7FE298CBF9FDD7FFLL) - 0x7FE298CB29DD532FLL + ((52 * (v1 ^ 0x2CFEu) - 0x3ACE680C04DF36) & (2 * v0));
  v6 = *(v4 - 184);
  v7 = v5 < 0xD02084D0;
  v8 = v5 > v6 + 3491792080u;
  if (v6 > 0xFFFFFFFF2FDF7B2FLL != v7)
  {
    v8 = v7;
  }

  return (*(v3 + 8 * (((32 * !v8) | (!v8 << 6)) ^ (v1 + 25201))))((v2 - 358478169) - ((2 * (v2 - 358478169)) & 0xE079889ELL) + 0x33099282703C21B1 + ((v1 + 1095273856) & 0xBEB7E6DE));
}

uint64_t sub_1000CF348@<X0>(int a1@<W8>)
{
  v3 = a1 + 24094;
  v4 = v1 < ((((v3 - 22395) | 0x3951) - 371869445) ^ (v3 - 7722));
  return (*(v2 + 8 * (((4 * v4) | (16 * v4)) ^ v3)))();
}

uint64_t sub_1000CF398(unsigned int a1)
{
  v9 = a1 < 0xA7D9F6EF;
  *(*(v8 - 184) + v1) = *(v2 + (v1 & 0xF)) ^ *(v5 + v1) ^ *(v4 + (v1 & 0xF)) ^ (61 * (v1 & 0xF)) ^ *((v1 & 0xF) + v3 + 4);
  if (v9 == v1 + 1 > 0x58260910)
  {
    v9 = v1 - 1478887696 < a1;
  }

  return (*(v7 + 8 * ((v9 * ((v6 + 31628) ^ 0xC642)) ^ v6)))();
}

uint64_t sub_1000CF87C()
{
  STACK[0xAC0] = STACK[0x7D8];
  LODWORD(STACK[0x7D4]) = -291711563;
  LODWORD(STACK[0x64C]) = -371865669;
  LODWORD(STACK[0xA18]) = -1564989595;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_1000CF8FC()
{
  v3 = v0 + ((v1 - 19550) | 0x828u) - 11840;
  v5 = v3 > 0xF || ((v0 - 1) & 0xFu) < (v3 & 0xF);
  return (*(v2 + 8 * ((11 * ((((v1 ^ 0x7F) + 1) ^ v5) & 1)) ^ v1)))();
}

uint64_t sub_1000CF960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v11 = v7 < v9;
  if (v11 == v8 + a6 < v9)
  {
    v11 = v8 + a6 < v7;
  }

  return (*(v10 + 8 * (v11 | (32 * v11) | a7)))();
}

uint64_t sub_1000CF9C4@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X8>, int8x16_t a6@<Q4>, int8x16_t a7@<Q6>, int8x16_t a8@<Q7>)
{
  v22.i64[0] = v11 + v8 - 7;
  STACK[0x3F0] = *(v11 + v8 - 8);
  v22.i64[1] = v11 + v8 - 8;
  v23.i64[0] = v11 + v8 - 5;
  v23.i64[1] = v11 + v8 - 6;
  v24.i64[0] = v11 + v8 - 1;
  v24.i64[1] = v11 + v8 - 2;
  v25.i64[0] = v11 + v8 - 3;
  v25.i64[1] = v11 + v8 + (v9 ^ a5);
  v26 = vandq_s8(v25, *&STACK[0x3E0]);
  v27 = vandq_s8(v24, *&STACK[0x3E0]);
  v28 = vandq_s8(v23, *&STACK[0x3E0]);
  v29 = vandq_s8(v22, *&STACK[0x3E0]);
  v30 = vsraq_n_u64(vshlq_n_s64(v29, 0x38uLL), v29, 8uLL);
  v31 = vsraq_n_u64(vshlq_n_s64(v28, 0x38uLL), v28, 8uLL);
  v32 = vsraq_n_u64(vshlq_n_s64(v27, 0x38uLL), v27, 8uLL);
  v33 = vsraq_n_u64(vshlq_n_s64(v26, 0x38uLL), v26, 8uLL);
  v34 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x430], v33), *&STACK[0x410]), vorrq_s8(vaddq_s64(v33, *&STACK[0x3D0]), *&STACK[0x420]));
  v35 = vsubq_s64(*&STACK[0x3C0], vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x430], v30), *&STACK[0x410]), vorrq_s8(vaddq_s64(v30, *&STACK[0x3D0]), *&STACK[0x420])));
  v36 = vsubq_s64(*&STACK[0x3C0], vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x430], v31), *&STACK[0x410]), vorrq_s8(vaddq_s64(v31, *&STACK[0x3D0]), *&STACK[0x420])));
  v37 = veorq_s8(v36, *&STACK[0x3B0]);
  v38 = veorq_s8(v35, *&STACK[0x3B0]);
  v39 = veorq_s8(v35, v16);
  v40 = veorq_s8(v36, v16);
  v41 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL), v40);
  v42 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL), v39);
  v43 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v42, v42), v20), v42), v17), a6);
  v44 = vsraq_n_u64(vshlq_n_s64(v39, 3uLL), v39, 0x3DuLL);
  v45 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v41, v41), v20), v41), v17), a6);
  v46 = veorq_s8(v45, vsraq_n_u64(vshlq_n_s64(v40, 3uLL), v40, 0x3DuLL));
  v47 = veorq_s8(v43, v44);
  v48 = vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL);
  v49 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL), v47);
  v50 = veorq_s8(vaddq_s64(v48, v46), a8);
  v51 = veorq_s8(v49, a8);
  v52 = vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL);
  v53 = veorq_s8(v51, vsraq_n_u64(vshlq_n_s64(v47, 3uLL), v47, 0x3DuLL));
  v54 = veorq_s8(v50, v52);
  v55 = vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL);
  v56 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v54);
  v57 = veorq_s8(vaddq_s64(v55, v53), v13);
  v58 = veorq_s8(v56, v13);
  v59 = vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL);
  v60 = veorq_s8(v58, vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL));
  v61 = veorq_s8(v57, v59);
  v62 = vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL);
  v63 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v61);
  v64 = vaddq_s64(v62, v60);
  v65 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v63, v15), vorrq_s8(v63, v18)), v18), v14);
  v66 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v64, v15), vorrq_s8(v64, v18)), v18), v14);
  v67 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL));
  v68 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v69 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v67), v19);
  v70 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v68), v19);
  v71 = vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL);
  v72 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v73 = veorq_s8(v69, v71);
  v74 = vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v73);
  v76 = veorq_s8(vaddq_s64(v74, v72), v21);
  v77 = veorq_s8(v75, v21);
  v78 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v79 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v80 = vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL);
  v81 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v82 = vdupq_n_s64(a4);
  v83 = vsubq_s64(*&STACK[0x3C0], vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x430], v32), *&STACK[0x410]), vorrq_s8(vaddq_s64(v32, *&STACK[0x3D0]), *&STACK[0x420])));
  v84 = veorq_s8(vaddq_s64(v80, v78), v12);
  v118.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v81, v79), v12), vnegq_s64(vandq_s8(vshlq_n_s64(v22, 3uLL), v82)));
  v118.val[2] = vshlq_u64(v84, vnegq_s64(vandq_s8(vshlq_n_s64(v23, 3uLL), v82)));
  v85 = veorq_s8(v83, *&STACK[0x3B0]);
  v86 = veorq_s8(v83, v16);
  v87 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v86);
  v88 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v87, v87), v20), v87), v17), a6);
  v89 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL));
  v90 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v89), a8);
  v91 = veorq_s8(v90, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v92 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v91), v13);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v94 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v93);
  v95 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v94, v15), vorrq_s8(v94, v18)), v18), v14);
  v96 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v97 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96), v19);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v99 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98), v21);
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL)));
  v101 = vsubq_s64(*&STACK[0x3C0], v34);
  v118.val[0] = vshlq_u64(veorq_s8(v100, v12), vnegq_s64(vandq_s8(vshlq_n_s64(v24, 3uLL), v82)));
  v102 = veorq_s8(v101, *&STACK[0x3B0]);
  v103 = veorq_s8(v101, v16);
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103);
  v105 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v104, v104), v20), v104), v17), a6);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106), a8);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), v13);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110);
  v112 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v111, v15), vorrq_s8(v111, v18)), v18), v14);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), v19);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v116 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115), v21);
  v118.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL))), v12), vnegq_s64(vandq_s8(vshlq_n_s64(v25, 3uLL), v82)));
  *(a1 + v8) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v118, a7)), STACK[0x3F0]);
  return (*(a3 + 8 * (a2 | (4 * (v10 == 0)))))(a1 - 8);
}

uint64_t sub_1000CFEFC@<X0>(unint64_t a1@<X0>, __int16 a2@<W8>)
{
  STACK[0x628] = a1;
  LODWORD(STACK[0xCA0]) = v5;
  LOWORD(STACK[0xCA6]) = a2;
  LODWORD(STACK[0xCA8]) = v6;
  LODWORD(STACK[0xCAC]) = v2;
  STACK[0xCB0] = v4;
  STACK[0xCB8] = v7;
  return (*(v8 + 8 * (((a1 != 0) * (v3 - 9509)) | v3)))();
}

void sub_1000CFF44(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = *(a1 + 24) == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = v2 || *(a1 + 32) == 0;
  v1 = *a1 + 1012831759 * (((a1 | 0xADD47DA3) - (a1 | 0x522B825C) + 1378583132) ^ 0xBD476B29);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1000D0014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v24 = ((2 * (v10 ^ v11)) ^ v14) & (v10 ^ v11) ^ (2 * (v10 ^ v11)) & v15;
  v25 = v24 & (4 * ((v12 & (2 * v10) ^ v13) & v10)) ^ (v12 & (2 * v10) ^ v13) & v10;
  v26 = v10 ^ (2 * ((a1 ^ (4 * v24)) & (v24 ^ a2) & (16 * v25) ^ v25));
  v27 = (((v26 ^ a4) + a5) ^ ((v26 ^ a6) + a7) ^ ((v26 ^ a8) + v19)) + v20;
  *(v17 + a9 - 1) = v27 * (v10 + a3) + (v27 * v16 + (v10 + a3) * v21) * v22 + v23;
  return (*(v18 + 8 * ((63 * (a9 != 1)) ^ v9)))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1000D0118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20)
{
  v21 = ((a16 ^ 0xFC7FA091) + 383626808) ^ a16 ^ ((a16 ^ 0xFEF7FFF7) + 341176658) ^ ((a16 ^ (a2 + 1346) ^ 0x4908C6F1) - 1549109617) ^ (((a20 + 1591552696) ^ a16) - 1266689870);
  v23 = v21 == 358478169 || ((((a2 - 12346) | 0x2202) ^ 0xAB50) & v21) != ((a2 + 1346) ^ 0x9134) - 12260;
  return (*(v20 + 8 * ((470 * v23) ^ (a2 + 1346))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_1000D0244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  STACK[0xB90] = a5;
  v7 = STACK[0x6C8];
  *(v7 + 108) = 0xE9D5C71100000000;
  *(v7 + 116) = -371865839;
  *(v7 + 104) = 0;
  LODWORD(STACK[0x84C]) = -371865839;
  return (*(v6 + 8 * (v5 - 9881)))();
}

uint64_t sub_1000D03B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  v54 = STACK[0x388];
  v55 = STACK[0x388] != 0;
  v57 = LOWORD(STACK[0x3D2]);
  STACK[0x3C0] = v51 + 64;
  STACK[0x3D8] = (16 * (v52 + v51) + 16) & 0x20;
  STACK[0x378] = v54;
  if (!v57)
  {
    v55 = 0;
  }

  return (*(v53 + 8 * ((v55 * ((v50 - 1560) ^ a1)) ^ v50)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, v52 + v51, a48, a49, a50);
}

uint64_t sub_1000D0500(double a1)
{
  *v3 = a1;
  v3[1] = a1;
  return (*(v4 + 8 * (((8 * (v2 == 0)) | (16 * (v2 == 0))) ^ v1)))();
}

uint64_t sub_1000D0688()
{
  STACK[0x370] = v3;
  v6 = v1 | ((v1 < 0x33DBD88C) << 32);
  STACK[0x400] = v6 + 0x799EFB0D6D397BD9;
  v6 += 1475337492;
  v7 = (((v4 ^ 0xA2B7BA81D698577BLL) + 0x5D48457E2967A885) ^ ((v4 ^ 0x8871CF32763E7250) + 0x778E30CD89C18DB0) ^ ((v4 ^ 0x2AC675B34973E23ALL) + (((v0 ^ 0x65DAu) + 20098) ^ 0xD5398A4CB68C4D07))) + 0x175A17CADLL;
  v8 = v6 < 0x8BCBB59C;
  v9 = v6 > v7;
  if (v8 != v7 < 0x8BCBB59C)
  {
    v9 = v8;
  }

  if (v9)
  {
    v2 = 371891407;
  }

  LODWORD(STACK[0x408]) = v2;
  return (*(v5 + 8 * ((4049 * (v2 != -371865839)) ^ v0)))();
}

uint64_t sub_1000D0960()
{
  v8 = *(v7 - 136);
  v9 = v5 ^ 0x5CD9;
  v10 = (((v9 - 11670) | 0x8212u) - 34471) & (v4 + 15);
  v11 = -v8 - v4;
  v13 = (v0 - v8) > 0xF && (v11 + v3 + v10 + 1) > 0xF && (v11 + v1 + v10 + 5) > 0xF;
  v14 = v11 + v2 + v10 + 2;
  v16 = v13 && v14 >= ((v9 - 469334603) & 0x1BF9DD7A ^ 0x957AuLL);
  return (*(v6 + 8 * (((2 * v16) | (4 * v16)) ^ v9)))();
}

uint64_t sub_1000D0A10(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v21.n128_u64[0] = (v19 + 13) & 0xF;
  v21.n128_u64[1] = (v19 + 12) & 0xF;
  v22.n128_u64[0] = (v19 + 11) & 0xF;
  v22.n128_u64[1] = (v19 + 10) & 0xF;
  v23.n128_u64[0] = (v19 + 9) & 0xF;
  v23.n128_u64[1] = v20 & 0xF ^ 5;
  v26.val[0].i64[0] = (v19 + 7) & 0xF;
  v26.val[0].i64[1] = (v19 + 6) & 0xF;
  v26.val[1].i64[0] = (v19 + 5) & 0xF;
  v26.val[1].i64[1] = (v19 + 4) & 0xF;
  v26.val[2].i64[0] = (v19 + 3) & 0xF;
  v26.val[2].i64[1] = (v19 + 2) & 0xF;
  v26.val[3].i64[0] = (v19 + 1) & 0xF;
  v26.val[3].i64[1] = v19 & 0xF;
  v24.n128_u64[0] = 0xB1B1B1B1B1B1B1B1;
  v24.n128_u64[1] = 0xB1B1B1B1B1B1B1B1;
  return (*(a18 + 8 * (v18 ^ 0x46DD)))(v19 & 0x10, (v19 + 14) & 0xF, (v19 & 0x10) - 16, ((v18 ^ 0x46DD) - 3715) ^ 0x1BDCu, a1, v21, v22, v23, xmmword_100BC76B0, vqtbl4q_s8(v26, xmmword_100BC76B0), v24);
}

uint64_t sub_1000D0B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v37 = (((a28 ^ 0x2F2FBA42) - 203774331) ^ ((a28 ^ 0x449F03B3) - 1737875594) ^ ((a28 ^ 0x7FFFA306) - 1559576639)) - 993745345;
  LODWORD(v39) = ((a28 ^ 0xC8F1E22E) + 335871721) ^ ((a28 ^ 0xF76643B0) + 731078519) ^ ((a28 ^ 0x2BD8BB69) - 148002896);
  HIDWORD(v39) = (a1 - 1356527586) & 0x93E51D51 ^ 0x6E95D8F4;
  HIDWORD(a24) = 42 * (((v37 - (a1 ^ 0x318B76E1)) | ((a1 ^ 0x318B76E1) - v37)) >= 0);
  return (*(a37 + 8 * (a1 ^ 0xBCF5FAAE ^ (32752 * (a1 > 0x7775C176)))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, v39, a26);
}

uint64_t sub_1000D0C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v38 = (((a28 ^ 0xF499F6DB) + 678226462) ^ ((a28 ^ 0xA30D198F) + 2146960714) ^ ((a28 ^ 0x43DBF5A3) - 1624315546)) + 314279021;
  LODWORD(a24) = (((v38 - (v37 - 1512325241)) | (v37 - 1512325241 - v38)) & 0x80000000) == 0;
  return (*(a37 + 8 * ((10659 * ((v37 + 817925592) > 0xC2FE4DED)) ^ (v37 - 899265154))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1000D0DB8()
{
  v4 = *(v0 + (v2 - 1590551432) % 0x13Fu);
  v5 = (v2 + 7301 - 319 * ((((39651 * (v2 + 7301)) >> 16) + (((v2 + 7301 - ((39651 * (v2 + 7301)) >> 16)) & 0xFFFE) >> 1)) >> 8));
  v6 = (v4 >> 5) | (8 * v4);
  v7 = *(v0 + (v2 - 1590551476) % 0x13Fu);
  v8 = *(v0 + (v2 - 1590551574) % 0x13Fu);
  v9 = (((((v7 >> 3) | (32 * v7)) ^ (((v1 - 10948) | 0x72A6) + 80)) + 41) ^ ((((v7 >> 3) | (32 * v7)) ^ 4) + 19) ^ ((((v7 >> 3) | (32 * v7)) ^ 0xFFFFFFD1) - 56)) + (((v6 ^ *(v0 + v5) ^ 0x65) - 34) ^ ((v6 ^ *(v0 + v5) ^ 0x34) - 115) ^ ((v6 ^ *(v0 + v5) ^ 0xFFFFFFF4) + 77)) - (((((v8 >> 1) | (v8 << 7)) ^ 0xFFFFFFB4) - 67) ^ ((((v8 >> 1) | (v8 << 7)) ^ 0x5D) + 86) ^ ((((v8 >> 1) | (v8 << 7)) ^ 0x46) + 79));
  LOBYTE(v6) = v9 - 75;
  LOBYTE(v9) = (v9 + 53) & 0xD7;
  v10 = v6 ^ 0x56;
  *(v0 + v5) = v6 ^ (2 * (v10 & (2 * (v10 & (2 * (v10 & (2 * (v10 & (2 * (v10 & (2 * ((v6 ^ 6) & (2 * v9) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ 0x88;
  return (*(v3 + 8 * ((41 * (v2 == 1590552694)) ^ v1)))();
}

void sub_1000D1008(uint64_t a1)
{
  v1 = *(a1 + 20) ^ (139493411 * (a1 ^ 0xC2DE145));
  __asm { BRAA            X11, X17 }
}

void sub_1000D1130(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *a1 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  v1 = *(a1 + 8) + 1022166737 * ((2 * (a1 & 0x53688376) - a1 - 1399358327) ^ 0x16879D1B);
  __asm { BRAA            X10, X17 }
}

void sub_1000D1318(uint64_t a1)
{
  v1 = *a1 + 297845113 * (a1 ^ 0x77331C9E);
  v2 = *(a1 + 16);
  v3 = (*(v2 + 16) >> 3) & 0x3F;
  *(v2 + 24 + v3) = 0x80;
  __asm { BRAA            X11, X17 }
}

void sub_1000D1798()
{
  if (v0 == 1414123258)
  {
    v2 = -371865839;
  }

  else
  {
    v2 = 371891401;
  }

  *(v1 + 16) = v2;
}

uint64_t sub_1000D17F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33, uint64_t a34, int a35, uint64_t a36, uint64_t a37)
{
  v40 = v38 + LODWORD(STACK[0x2F4]) + LODWORD(STACK[0x2F8]) + 702337735 + 3 * a35 + a33 + 1558078446 + v39;
  v41 = (v40 ^ 0x6FFFF7FBu) + 2008885536;
  v42 = LODWORD(STACK[0x308]);
  v43 = (v42 ^ 0x2447C9C8) - 198676309;
  v44 = (v42 ^ 0x4720F821) - 1756413628;
  v45 = (v42 ^ 0x3288849B) - 488161798;
  v46 = (v42 ^ 0x7E7FF3EF) - 1374664050;
  v47 = v40 ^ v42 ^ ((v40 ^ 0xBA81BC48) - 1564253523) ^ ((v40 ^ 0xA548993D) - 1123399718) ^ ((v40 ^ 0x978BF395) - 1882641038) ^ v41 ^ v44 ^ v43 ^ v45 ^ v46;
  return (*(a37 + 8 * ((37998 * (((LODWORD(STACK[0x310]) - LODWORD(STACK[0x314]) + LODWORD(STACK[0x31C]) + (((v47 ^ 0x58F0379E) - 587184920) ^ ((v47 ^ 0x38515FC0) - 1113510726) ^ ((v47 ^ 0xA88C0FD8) + 763133090)) - 1) & 1) == 0)) ^ v37 ^ 0x517B)))(3181456570, v41, v43, v42, LODWORD(STACK[0x310]), v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1000D19D8(int a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, int a7, int a8, double a9, __n128 a10, __n128 a11, __n128 a12, int8x16_t a13, double a14, int8x16_t a15)
{
  v21 = (a3 - 1) & 0xF;
  v23.i64[0] = vqtbl4q_s8(*(&a10 - 1), a13).u64[0];
  *&v23.i64[1] = a14;
  v24 = vrev64q_s8(vmulq_s8(v23, a15));
  *(v20 + a3) = veorq_s8(veorq_s8(veorq_s8(*(v17 + v21 - 15), *(v15 + a3)), veorq_s8(*(v18 + v21 - 15), *(v16 + v21 - 15))), vextq_s8(v24, v24, 8uLL));
  return (*(v19 + 8 * (((a7 & ~((a5 | a4) >> a6)) * a8) ^ a1)))();
}

uint64_t sub_1000D1C98(uint64_t a1)
{
  v6 = *(v1 + 16);
  v8 = (*(v3 + 8 * (v5 ^ 0xF337)))();
  (*(v3 + 8 * (v5 + 37852)))(v8, a1, *(*(v4 + 8 * (v5 - 12585)) - 1240215223));
  v9 = (*(v3 + 8 * (v5 ^ 0xF372)))(a1);
  *v6 = v2;
  return (*(v3 + 8 * v5))(v9);
}

uint64_t sub_1000D1D14(__n128 a1, uint64_t a2, uint64_t a3)
{
  *(v5 - 200) = *(*(v5 - 192) + 8 * v4);
  v6.n128_u64[0] = (v3 + 13) & 0xF;
  v6.n128_u64[1] = (v3 + 12) & 0xF;
  v7.n128_u64[0] = (v3 + 11) & 0xF;
  v7.n128_u64[1] = (v3 + 10) & 0xF;
  v8.n128_u64[0] = (v3 + 9) & 0xF;
  v8.n128_u64[1] = v3 & 0xF ^ 8;
  v11.val[0].i64[0] = (v3 + 7) & 0xF;
  v11.val[0].i64[1] = (v3 + 6) & 0xF;
  v11.val[1].i64[0] = (v3 + 5) & 0xF;
  v11.val[1].i64[1] = (v3 + 4) & 0xF;
  v11.val[2].i64[0] = (v3 + 3) & 0xF;
  v11.val[2].i64[1] = (v3 + 2) & 0xF;
  v11.val[3].i64[0] = (v3 + 1) & 0xF;
  v11.val[3].i64[1] = v3 & 0xF;
  v9.n128_u64[0] = 0x8585858585858585;
  v9.n128_u64[1] = 0x8585858585858585;
  return (*(v5 - 200))(v3 + *(v5 - 184) - 16, a3, v3 - 1, (v3 & 0x10) - 16, 4227 * (v4 ^ 0x6C62u) - 29574, 22, a1, v6, v7, v8, xmmword_100BC76B0, vqtbl4q_s8(v11, xmmword_100BC76B0), v9);
}

uint64_t sub_1000D1ECC(int a1, int8x16_t a2, int8x16_t a3, double a4, double a5, double a6, int8x16_t a7, int8x16_t a8, int8x16_t a9, uint64_t a10, uint64_t a11)
{
  v16 = v15 + 4 * v13;
  v17 = v13 + 4;
  a3.i64[0] = *(v16 + 4);
  a3.i32[2] = *(v16 + 12);
  v18 = vextq_s8(a2, a3, 0xCuLL);
  a3.i32[3] = *(v15 + 4 * v17);
  v19.i32[0] = *(a11 + 4 * (*(v16 + 4) & 1));
  v19.i32[1] = *(a11 + 4 * (a3.i32[1] & v12));
  v19.i32[2] = *(a11 + 4 * (a3.i8[8] & 1));
  v19.i32[3] = *(a11 + 4 * (a3.i8[12] & 1));
  *v16 = veorq_s8(veorq_s8(veorq_s8(*(v16 + 1588), v19), a9), vshrq_n_u32(vorrq_s8(vandq_s8(a3, a8), vandq_s8(v18, a7)), 1uLL));
  return (*(v14 + 8 * (((v17 == 224) * a1) ^ v11)))(a3);
}

uint64_t sub_1000D1F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, unsigned int a59)
{
  v62 = a59 < 0x5F6A9817;
  v63 = ((((v60 + 30742) ^ 0xE5F07300) + 437226752) ^ (((v60 + 30742) ^ 0xCED7EFA3) + 824709213) ^ (((v60 + 30742) ^ 0x2B27E4B5) - 724034741)) + 1600852014;
  v64 = v62 ^ (v63 < 0x5F6A9817);
  v65 = v63 < a59;
  if (!v64)
  {
    LOBYTE(v62) = v65;
  }

  return (*(v61 + 8 * ((((v62 ^ (v59 + 80)) & 1) * ((v59 - 10031) ^ 0x4464)) ^ v59)))(a1, a2, a3, (v60 + 30742));
}

uint64_t sub_1000D210C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v51 = (v49 - 1818273074) & 0x6C607BFC;
  v52 = *(v50 - 240);
  *v52 = a42;
  *(v52 + 8) = a17;
  *(v52 + 16) = a10;
  *(v52 + 20) = a12;
  return (*(v48 + 8 * v51))(a48);
}

uint64_t sub_1000D219C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v41 = ((v39 ^ 0xC39CA750) + 334700083) ^ v39 ^ ((v39 ^ 0xE9DA561) - 554558460) ^ (((v37 + 899235969) ^ 0x3A190D82) + (v39 ^ 0xDFEF7FFB)) ^ ((v39 ^ 0x3D7E5E52 ^ v37 ^ 0xEF92) - 317619658);
  v42 = v38 - 393731873 + (((v41 ^ 0x7B239B8F) - 1978476263) ^ ((v41 ^ 0xF3111DF3) + 35676005) ^ ((v41 ^ 0x8D50C5A) - 102478130)) - 352496156;
  v43 = (v42 ^ 0x9FDC74C3) & (2 * (v42 & 0xA01178E8)) ^ v42 & 0xA01178E8;
  v44 = ((2 * (v42 ^ 0xDFDCE4D3)) ^ 0xFF9B3876) & (v42 ^ 0xDFDCE4D3) ^ (2 * (v42 ^ 0xDFDCE4D3)) & 0x7FCD9C3A;
  v45 = ((4 * v44) ^ 0x7F3670E0) & v44 & (16 * ((v44 ^ 0x890020) & (4 * v43) ^ v43)) ^ (v44 ^ 0x890020) & (4 * v43) ^ v43;
  v46 = *(v40 + 4 * a33);
  v47 = ((v46 ^ 0xEFA687FD) + 1070153376) ^ v46 ^ ((v46 ^ 0x45A2B411) - 1781723788) ^ ((v46 ^ 0xFA6AB28A) + 704973801) ^ ((v46 ^ 0x7FFEC7FB) - 1349419366) ^ v42 ^ (2 * v45);
  return (*(a36 + 8 * ((54 * (((v36 - 448606494 + (((v47 ^ 0x7F32FE56) + 596454052) ^ ((v47 ^ 0xF5893C4D) - 1456019271) ^ ((v47 ^ 0x3D28FC6E) + 1637296284))) & 7) == 2)) ^ v37)))();
}

uint64_t sub_1000D2418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a1 - 1;
  *(a2 + v11) = *(v6 + (v11 & 0xF)) ^ *(v2 + v11) ^ *(v5 + (v11 & 0xF)) ^ ((v11 & 0xF) * v8) ^ *((v11 & 0xF) + v4 + 2);
  return (*(v10 + 8 * ((v9 & ~(v3 ^ (v11 == 0)) | (4 * (v9 & ~(v3 ^ (v11 == 0))))) ^ v7)))();
}

uint64_t sub_1000D2578@<X0>(int *a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, unint64_t a56, uint64_t a57, int a58, int a59, int a60, int a61, int a62, int a63)
{
  v73 = *a1;
  v74 = *(a1 + 8);
  v75 = a1[4];
  v76 = a1[5];
  v77 = a1[18];
  v78 = *(a1 + 6);
  v79 = *(v72 + 8 * (v70 ^ 0x8FF8));
  v80 = *(v79 - 527405895);
  v81 = *(v72 + 8 * (v70 ^ 0x9DF5)) + 4 * v80;
  v82 = *(v81 - 1940437438);
  v83 = ((v69 + HIDWORD(a14)) ^ HIDWORD(a14)) + ((v69 + HIDWORD(a14)) ^ HIDWORD(a14)) * v82;
  if (v69)
  {
    v84 = 0;
  }

  else
  {
    v84 = *(v81 - 1940437438);
  }

  *(v81 - 1940437438) = (v83 + v84) * v82;
  *(v79 - 527405895) = (v80 + 1) % 6u;
  v85 = v73 ^ a2;
  v86 = v75 + a2;
  v87 = v76 ^ a2;
  a57 = 0;
  HIDWORD(a55) = v77 - a2;
  v108 = v74;
  a66 = v73 ^ a2;
  a69 = 2059851120;
  HIDWORD(a51) = 1448158183;
  a63 = 97525854;
  a61 = 1011030762;
  a68 = 407266184;
  a62 = -2043728240;
  a59 = 136909542;
  v88 = *(v71 + 8 * (v70 + 15834));
  a58 = 774489122;
  v88(*(v72 + 8 * (v70 - 36022)) - 1933706663, &STACK[0x74C], 268);
  a60 = 1328019738;
  HIDWORD(a44) = -2087239754;
  HIDWORD(a47) = -253257046;
  a56 = 0xB4A259964C4C47ADLL;
  LODWORD(a55) = -200094252;
  HIDWORD(a52) = -821790287;
  (*(v71 + 8 * (v70 + 15834)))(*(v72 + 8 * (v70 ^ 0x8F16)) - 1765729255, &STACK[0x5F3], 345);
  LODWORD(v106) = ((*v78 % 3u + 6) ^ 0xAFF9BB1F) + 2 * (*v78 % 3u + 6) + 2079324150;
  LODWORD(a52) = 1539832340;
  HIDWORD(a49) = 1350745322;
  a67 = 2073153793;
  a65 = 0x1F3E570B013999CDLL;
  LODWORD(a54) = 20552141;
  HIDWORD(a53) = -347583232;
  LODWORD(a53) = (((v70 + 2811432) % (v85 ^ 0x75D589A8u)) ^ 0xFFEB9B9E) + 398424062 + ((2 * ((v70 + 2811432) % (v85 ^ 0x75D589A8u))) & 0x57373C);
  HIDWORD(v90) = v86;
  LODWORD(v90) = v86;
  v89 = v90 >> 9;
  HIDWORD(v90) = v87;
  LODWORD(v90) = v87;
  v91 = (v90 >> 22);
  HIDWORD(v90) = v86;
  LODWORD(v90) = v86;
  v92 = v90 >> 1;
  HIDWORD(v90) = v87;
  LODWORD(v90) = v87;
  v93 = v90 >> 19;
  HIDWORD(v90) = v86;
  LODWORD(v90) = v86;
  v94 = v90 >> 3;
  HIDWORD(v90) = v87;
  LODWORD(v90) = v87;
  v95 = v90 >> 24;
  HIDWORD(v90) = v86 ^ 0x30FA61E1;
  LODWORD(v90) = v86 ^ 0x30FA61E1;
  v96 = v90 >> 9;
  HIDWORD(v90) = v87;
  LODWORD(v90) = v87;
  v97 = v90 >> 16;
  HIDWORD(v90) = v86 ^ 0x7ADF8791;
  LODWORD(v90) = v86 ^ 0x7ADF8791;
  v98 = v90 >> 12;
  HIDWORD(v90) = v87;
  LODWORD(v90) = v87;
  HIDWORD(v106) = 1765005034;
  LODWORD(v104) = v92 ^ v93;
  HIDWORD(v104) = v89 ^ v91;
  LODWORD(v105) = v96 ^ v97;
  HIDWORD(v105) = v94 ^ v95;
  HIDWORD(a32) = v98 ^ (v90 >> 25);
  HIDWORD(a16) = 63610355;
  return (*(v71 + 8 * v70))(v91, 1765005034, v99, v100, 19, v101, v102, 3376295182, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, (&a50 ^ 0xDFFDBDEDFBDBEBD3) + 0x3EB2FFBBECFDBDADLL + ((2 * &a50) & 0xBFFB7BDBF7B7D7A0), a16, a17, a18, a19, a20, a21, v104, 70337026, a24, a25, a26, a27, a28, a29, a30, a31, a32, v105, a34, a35, a36, a37, a38, v78, a40, a41, v106, a1, a44, a45, a46, a47, v108, a49, a50, a51, a52, a53, a54, a55, a56);
}

uint64_t sub_1000D2940()
{
  v2 = STACK[0x2B8];
  LOWORD(STACK[0xB5E]) = v0;
  return (*(v1 + 8 * (v2 - 17743)))();
}

uint64_t sub_1000D29B8()
{
  v2 = STACK[0x2B8] - 313;
  if (v0 == -1349519662)
  {
    v3 = 54;
  }

  else
  {
    v3 = 53;
  }

  LOBYTE(STACK[0x637]) = v3;
  return (*(v1 + 8 * (v2 ^ (254 * (v0 != -1349519662)))))();
}

uint64_t sub_1000D2AE8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v14 = *(v13 + 8 * a7);
  STACK[0x440] = a4 & 0xFFFFFFF8;
  STACK[0x430] = (a7 - 17997);
  return v14(vdupq_n_s64(0xFFFFFFFFFFFFFFF8), vdupq_n_s64(0x38uLL), vdupq_n_s64(v12), vdupq_n_s64(v11), vdupq_n_s64(v10), vdupq_n_s64(v7), vdupq_n_s64(v8), vdupq_n_s64(v9));
}

uint64_t sub_1000D2BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v34 = *(a31 + 64);
  v33 = *(a31 + 68);
  *(a31 + 56) = 8 * v33 - ((v33 << (((v31 - 33) & 0x7F) - 54)) & 0xB0) + 95;
  *(a31 + 57) = (v33 >> 5) - ((v33 >> 4) & 0xBE) + 95;
  *(a31 + 58) = (v33 >> 13) - ((v33 >> 12) & 0xBE) + 95;
  *(a31 + 59) = (v33 >> 21) - ((v33 >> 20) & 0xBE) + 95;
  *(a31 + 60) = (__PAIR64__(v34, v33) >> 29) - ((2 * (__PAIR64__(v34, v33) >> 29)) & 0xBF) + 95;
  *(a31 + 61) = (v34 >> 5) - ((v34 >> 4) & 0xBE) + 95;
  *(a31 + 62) = (~(v34 >> 12) | 0x41) + (v34 >> 13) + 96;
  return (*(v32 + 8 * v31))();
}

uint64_t sub_1000D2C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15, int a16, unint64_t a17, unint64_t a18, int a19, int a20)
{
  v27 = 634647737 * ((((2 * v21) | 0xDB9516E96249E15CLL) - v21 - 0x6DCA8B74B124F0AELL) ^ 0xB711249BDCB2DF52);
  v28 = v22 - 1866116351 - 634647737 * ((((2 * v21) | 0x6249E15C) - v21 + 1322979154) ^ 0xDCB2DF52);
  a13 = -634647737 * ((((2 * v21) | 0x6249E15C) - v21 + 1322979154) ^ 0xDCB2DF52);
  a14 = v28 - 4432;
  a16 = v22 - 1866116351 + 634647737 * ((((2 * v21) | 0x6249E15C) - v21 + 1322979154) ^ 0xDCB2DF52);
  a19 = v22 - 634647737 * ((((2 * v21) | 0x6249E15C) - v21 + 1322979154) ^ 0xDCB2DF52) + v26;
  a20 = v28 + 205;
  a17 = v23 ^ v27;
  a18 = 23482 - v27;
  v29 = (*(v20 + 8 * v24))(&a13);
  return (*(v25 + 8 * a15))(v29);
}

void sub_1000D2D74(id a1)
{
  v1 = *(&off_1010A0B50 + ((91 * ((qword_1010BEAD8 + dword_1010B1280) ^ 0x76)) ^ byte_100D70140[byte_101032240[(91 * ((qword_1010BEAD8 + dword_1010B1280) ^ 0x76))] ^ 0x93]) + 3500);
  v2 = *(v1 - 1964947414);
  v3 = *(&off_1010A0B50 + (byte_100E9BFE0[byte_100D70240[(91 * ((qword_1010BEAD8 - v2) ^ 0x76))] ^ 0xD0] ^ (91 * ((qword_1010BEAD8 - v2) ^ 0x76))) + 793);
  v4 = (*(v3 - 513219118) + v2) ^ &v5;
  *(v1 - 1964947414) = 952459099 * v4 + 0x1A7B4580FE86B8ALL;
  *(v3 - 513219118) = 952459099 * (v4 ^ 0xFE584BA7F0179476);
  v6 = 32119 - 139493411 * ((~&v6 & 0x3381AD47 | &v6 & 0xCC7E52B8) ^ 0x3FAC4C02);
  LOBYTE(v4) = 91 * ((qword_1010BEAD8 + *(v1 - 1964947414)) ^ 0x76);
  v7 = *(&off_1010A0B50 + (byte_101032340[byte_100F51F20[v4] ^ 0x97] ^ v4) + 340) - 1481058307;
  LOBYTE(v1) = 91 * ((*(v3 - 513219118) + *(v1 - 1964947414)) ^ 0x76);
  (*(*(&off_1010A0B50 + ((91 * ((qword_1010BEAD8 - dword_1010B1280) ^ 0x76)) ^ byte_100F52020[byte_100E9BEE0[(91 * ((qword_1010BEAD8 - dword_1010B1280) ^ 0x76))] ^ 0x1B]) + 865) + 8 * (byte_100D70140[byte_101032240[v1] ^ 0x1E] ^ v1) - 809726382))(&v6);
}

uint64_t sub_1000D3014(uint64_t result)
{
  v1 = 1603510583 * ((-2 - ((~result | 0xCD3C032F) + (result | 0x32C3FCD0))) ^ 0x5AE73184);
  v2 = *(result + 16);
  v3 = *(result + 8) ^ v1;
  v4 = (*(result + 4) ^ v1) ^ 0x77EALL;
  LOBYTE(v1) = *(*(&off_1010A0B50 + v1 + *result + 413882822) + (17 * (*(result + 4) ^ v1 ^ 0xEA) + (*(v2 + v4) ^ 0x5F)) - 393265283);
  v5 = (v3 - 2052);
  *(v2 + (v4 + 1) % v5) ^= v1 ^ 0x5F;
  *(v2 + v4 % v5) = v1;
  *(result + 6) = *(v2 + v4);
  return result;
}

void sub_1000D30F8(uint64_t a1)
{
  v1 = *(a1 + 4) + 17902189 * (((a1 | 0x68158215) - (a1 | 0x97EA7DEA) - 1746240022) ^ 0xE65A9405);
  v5 = v1 + 139493411 * (&v5 ^ 0xC2DE145) + 1942803954;
  v2 = *(&off_1010A0B50 + (v1 & 0x260D4548)) - 810145054;
  (*&v2[8 * (v1 ^ 0xC49F)])(&v5);
  v4 = v6 != 184 && *(*(&off_1010A0B50 + v1 + 1013) - 1980733851) == 66;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000D3294(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0xC00] = ((v2 - 33127) ^ 0x1639F9EB4583CA96) + (((v1 ^ 0x1C6BAA27B0ED1C9BLL) - 0x1C6BAA27B0ED1C9BLL) ^ ((v1 ^ 0xFE1DEFDE173E7A22) + 0x1E21021E8C185DELL) ^ ((v1 ^ 0xE27645F94E06A1A8) + 0x1D89BA06B1F95E58)) + 3 * (v2 ^ 0xB763u);
  *(a1 + 16) = (((v1 ^ 0xCFE9B8F6) + 806766346) ^ ((v1 ^ 0x966D9AC) - 157735340) ^ ((v1 ^ 0x2F5AA64B) - 794469963)) - 371865829;
  v5 = (*(v3 + 8 * (v2 ^ 0x44FD)))();
  *(a1 + 24) = v5;
  return (*(v3 + 8 * ((238 * (v5 != 0)) ^ v2)))();
}

uint64_t sub_1000D33E8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int8x16_t a7, int8x8_t a8)
{
  v15.val[0].i64[0] = (v11 + a3 - 1) & 0xF;
  v15.val[0].i64[1] = (v11 + a3 + 14) & 0xF;
  v15.val[1].i64[0] = (v11 + a3 + v12 + 1) & 0xF;
  v15.val[1].i64[1] = (v11 + a3 + 12) & 0xF;
  v15.val[2].i64[0] = (v11 + a3 + 11) & 0xF;
  v15.val[2].i64[1] = (v11 + a3 + 10) & 0xF;
  v15.val[3].i64[0] = (v11 + a3 + 9) & 0xF;
  v15.val[3].i64[1] = (v11 + a3) & 0xF ^ 8;
  *(a4 + v11) = veor_s8(veor_s8(veor_s8(*(v8 + v15.val[0].i64[0] - 7), *(a5 + v11)), veor_s8(*(v10 + v15.val[0].i64[0] - 7), *(v15.val[0].i64[0] + v9 - 6))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v15, a7), a8)));
  return (*(v13 + 8 * (((a2 == a3) * a6) ^ a1)))();
}

uint64_t sub_1000D3698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, uint64_t a18, uint64_t a19, int a20, char a21, uint64_t a22, uint64_t a23, unsigned int a24, __int16 a25, char a26, __int16 a27, char *a28)
{
  v37 = v29 & 0x713E ^ 0x4D3D;
  a24 = v30 - 1603510583 * (((v35 | v36) - (v35 & v36)) ^ 0xE5E52F83) - 413886037;
  a25 = (-24265 * (((v35 | v36) - (v35 & v36)) ^ 0x2F83)) ^ v29 ^ (2 * ((v29 ^ 0x66C4) & (2 * ((v29 ^ 0x66C4) & (2 * ((v29 ^ 0x66C4) & (2 * ((v29 ^ 0x66C4) & (2 * ((v29 ^ 0x66C4) & (2 * ((v29 ^ 0x66C4) & (2 * ((v29 ^ 0x66C4) & (2 * ((v29 ^ 0x66C4) & (2 * ((v29 ^ 0x66C4) & (2 * ((v29 ^ 0x66C4) & (2 * ((((v29 ^ 0x66C4) & (2 * ((v29 ^ 0x66C4) & (2 * (v37 ^ v29 & 0x17FA)) ^ v37)) ^ v37) << v34) & (v29 ^ 0x66C4) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ 0x6D4;
  a27 = a17 ^ (-24265 * (((v35 | v36) - (v35 & v36)) ^ 0x2F83));
  a28 = &a21;
  v38 = (*(a19 + 8 * v28))(&a24);
  *(v32 + (v33 + v31)) = a26;
  return (*(a19 + 8 * ((18240 * ((((v29 - 6459) - (*(a11 - 0x31D22C36DBDA93B0) ^ 0xEB484D00) % 0xA) | ((*(a11 - 0x31D22C36DBDA93B0) ^ 0xEB484D00) % 0xA)) >> 31)) ^ v30)))(v38);
}

uint64_t sub_1000D3BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (*(a8 + 8 * (v9 ^ 0xA12C)))();
  v11 = STACK[0x2F0];
  *(v8 + 24) = 0;
  return (*(v11 + 8 * v9))(v10);
}

void sub_1000D3C48(_DWORD *a1)
{
  v1 = *a1 - 297845113 * ((~a1 & 0xB8DFAA5D | a1 & 0x472055A2) ^ 0xCFECB6C3);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1000D46A0@<X0>(uint64_t a1@<X8>)
{
  v4 = STACK[0xAE0];
  v5 = STACK[0x9B8];
  v6 = STACK[0x9F0];
  STACK[0xC88] = &STACK[0xD10] + a1;
  STACK[0x5B8] = v1;
  STACK[0x908] = v5;
  STACK[0x828] = v6;
  v7 = (*(v3 + 8 * (v2 ^ 0x792A)))();
  v8 = STACK[0x408];
  STACK[0x788] = 0;
  if (v4)
  {
    v9 = v5 == 0;
  }

  else
  {
    v9 = 1;
  }

  v11 = v9 || v6 == 0;
  return (*(v8 + 8 * ((v11 * (v2 ^ 0x8AA ^ (v2 - 155104322) & 0x93EBCEF)) ^ v2)))(v7);
}

uint64_t sub_1000D4740()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x4239)))();
  v3 = STACK[0x408];
  STACK[0x500] = 0;
  return (*(v3 + 8 * v0))(v2);
}

uint64_t sub_1000D4770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = *(&off_1010A0B50 + ((v12 - 9441) ^ 0x3153)) - 197910702;
  v17 = *(&off_1010A0B50 + ((v12 - 9441) ^ 0x26DB)) - 728223718;
  v18 = *(&off_1010A0B50 + v12 - 20335) - 1678344675;
  v19 = (*(*(&off_1010A0B50 + v12 - 20595) + (*(v15 - 98) ^ 0xB2) - 963271431) - 57) << 8;
  v21 = *(&off_1010A0B50 + v12 - 20595) - 963271431;
  *(v15 - 116) = (((v13 ^ 0x9A51BB5B) + 534245259) ^ ((v13 ^ 0xE67ADB8B) + 1677496155) ^ ((v13 ^ 0x437C3AE3) - 956666317)) - 552000026;
  return (*(v14 + 8 * (v12 - 9441)))(v19 & 0xCCCCCCCC, 2817370817, 2595684425, 1499644148, 145, v16, v17, v18, a9, a10, a11, a12, v21, v18);
}

void sub_1000D4E24(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (*(a1 + 24) ^ 0xF7AAFA6F96EE7BCFLL) + 0x855059070CD53EFLL + ((2 * *(a1 + 24)) & 0xEF55F4DF2DDCF79ELL);
  v4 = v3 < 0x7BBCFBE;
  v5 = v3 > v2 + 129748926;
  if (v2 > 0xFFFFFFFFF8443041 != v4)
  {
    v5 = v4;
  }

  v1 = *(a1 + 12) + 17902189 * ((~a1 & 0xB4B35F5D | a1 & 0x4B4CA0A2) ^ 0x3AFC494D);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1000D52E0(unsigned int a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = v10 - 1;
  v19 = *(*(v13 + v12) + (*(v11 - 231415367) & a1));
  v20 = ((((v19 ^ (a8 + v18)) & 0x7FFFFFFF) * v16) ^ ((((v19 ^ (a8 + v18)) & 0x7FFFFFFFu) * v16) >> 16)) * v16;
  v21 = ((((v19 ^ (v8 + v18)) & 0x7FFFFFFF) * v16) ^ ((((v19 ^ (v8 + v18)) & 0x7FFFFFFFu) * v16) >> 16)) * v16;
  *(v8 + v18) = *(v17 + (v20 >> 24)) ^ *(a8 + v18) ^ *(v15 + (v20 >> 24)) ^ *((v20 >> 24) + a7 + 5) ^ *(v17 + (v21 >> 24)) ^ *(v15 + (v21 >> 24)) ^ *((v21 >> 24) + a7 + 5) ^ v20 ^ v21 ^ (BYTE3(v20) * a4) ^ (-83 * BYTE3(v21));
  return (*(v14 + 8 * ((28707 * (v18 == 0)) ^ v9)))(1926737144);
}

uint64_t sub_1000D53C8()
{
  v2 = STACK[0x3DC];
  *(v1 - 180) = LODWORD(STACK[0x3D0]) ^ 0xE87FA92A;
  *(v1 - 176) = LODWORD(STACK[0x3D8]) ^ (v2 - 10127) ^ 0xE55641A2;
  *(v1 - 164) = LODWORD(STACK[0x3D4]) ^ 0x32BC98BD;
  *(v1 - 160) = LODWORD(STACK[0x3CC]) ^ 0x9CEAE747;
  return (*(v0 + 8 * v2))();
}

uint64_t sub_1000D97F0(uint64_t a1, uint64_t a2, int a3)
{
  v10 = ((((a3 + 7182) ^ 0x6412u) + 10938) ^ 0x628BLL) & (v3 + 15);
  v11 = -v9 - v3;
  v12 = v11 + 1;
  v13 = (v4 - v9) >= 0x10 && (v11 + 1 + v7 + v10) >= 0x10;
  v14 = v11 + v6 + v10 + 5;
  v17 = !v13 || v14 < 0x10 || (v12 + v5 + v10) < 0x10;
  return (*(v8 + 8 * ((63 * v17) ^ (a3 + 7182))))();
}

uint64_t sub_1000D99B4()
{
  STACK[0x440] = v1;
  if (v1 <= v3)
  {
    v5 = v2;
  }

  else
  {
    v5 = 371891407;
  }

  LODWORD(STACK[0x44C]) = v5;
  return (*(v4 + 8 * (((v5 == -371865839) * (((v0 - 17498) | 0x240) + ((v0 + 741182323) & 0xD3D27D75) + 34656)) ^ v0)))();
}

uint64_t sub_1000D9A24()
{
  if (v4 == 20 * (v3 ^ 0x3D20) - 21734)
  {
    return (*(v0 + 8 * v3))(v1);
  }

  else
  {
    return (*(v0 + 8 * v3))(v2);
  }
}

uint64_t sub_1000D9BA0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v8 = v6 - 21731;
  v9 = (((v6 - 16770) | 0x4182) - 1947455946) ^ v5;
  v10 = v9 & (2 * (v5 & 0xCC969DAD)) ^ ((2 * (v5 & 0xCC969DAD)) & 0x1280050 | v5 & 0xCC969DAD);
  v11 = ((2 * v9) ^ 0x8EF400A2) & v9 ^ (2 * v9) & 0x477A0050;
  v12 = v11 ^ 0x410A0051;
  v13 = (v11 ^ 0x6700000) & (4 * v10) ^ v10;
  v14 = ((4 * v12) ^ 0x1DE80144) & v12 ^ (4 * v12) & 0x477A0050;
  v15 = v13 ^ 0x477A0051 ^ (v14 ^ 0x5680040) & (16 * v13);
  v16 = (16 * (v14 ^ 0x42120011)) & 0x477A0050 ^ 0x5A0041 ^ ((16 * (v14 ^ 0x42120011)) ^ 0x77A00510) & (v14 ^ 0x42120011);
  v17 = (v15 << 8) & 0x477A0000 ^ v15 ^ ((v15 << 8) ^ 0x7A005100) & v16;
  v18 = v5 ^ (2 * ((v17 << 16) & 0x477A0000 ^ v17 ^ ((v17 << 16) ^ 0x510000) & ((v16 << 8) & 0x477A0000 ^ 0x57A0000 ^ ((v16 << 8) ^ 0x7A000000) & v16))) ^ 0x37D88EA0;
  v19 = 1112314453 * ((&a3 - 2 * (&a3 & 0x48C6C410) + 1220985878) ^ 0xA790EECF);
  a4 = v18 - v19;
  a5 = v8 - v19 + 13859;
  a3 = a1;
  v20 = (*(v7 + 8 * (v8 + 45217)))(&a3);
  return (*(v7 + 8 * v8))(v20);
}

uint64_t sub_1000D9E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = v11 + a1;
  v18 = v11 + a1 - 0xF1653028D44ECE5;
  v19 = __ROR8__(v18 & 0xFFFFFFFFFFFFFFF8, 8);
  v20 = v19 - ((a6 + 2 * v19) & 0xE2CFD206D155D4C0) - 0x390593BE392BB264;
  v21 = __ROR8__(v20 ^ 0x6BE660E077318EC8, 8);
  v20 ^= 0xE7727912867A972ELL;
  v22 = (v21 + v20 - ((2 * (v21 + v20)) & 0xC6C3F8EC9963F99ALL) + 0x6361FC764CB1FCCDLL) ^ 0x44EB7E5FF40DC910;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = *(v16 + 8 * v10);
  v25 = (__ROR8__(v22, 8) + v23) ^ v9;
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
  v36 = (((v35 + v34) | 0x507EC6BF657D269ELL) - ((v35 + v34) | a3) + a3) ^ 0x4B232FB62ED28384;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = __ROR8__(v36, 8);
  LOBYTE(v37) = (((((2 * (v38 + v37)) & 0x3A472E94DCE4D1ALL) - (v38 + v37) - 0x1D23974A6E7268ELL) ^ 0x3A1A01B926C9F646uLL) >> (8 * (v18 & 7u))) ^ HIBYTE(v12) ^ 0x11;
  v39 = __ROR8__((v17 - 0xF1653028D44ECE4) & 0xFFFFFFFFFFFFFFF8, 8);
  *v18 = v37;
  v40 = v39 - ((2 * v39 + 0x2325067CBC52C678) & 0x2683C4CE14417DBELL) + 0x64D465A5684A221BLL;
  v41 = v40 ^ 0xDC06B8415BBDA77;
  v40 ^= 0x81547276E4F0C391;
  v42 = (__ROR8__(v41, 8) + v40) ^ 0x278A8229B8BC35DDLL;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ v9;
  v45 = __ROR8__(v44, 8);
  v46 = v44 ^ __ROR8__(v43, 61);
  v47 = (((v45 + v46) | 0x327688EEFA1717DFLL) - ((v45 + v46) | v8) + v8) ^ 0x33ED32F3A3D5B553;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0xA958557FD3FC79DDLL;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = __ROR8__(v49, 8);
  v52 = (v51 + v50 - ((2 * (v51 + v50)) & 0x321E4376094819E0) - 0x66F0DE44FB5BF310) ^ 0xB5305140F25DA153;
  v53 = v52 ^ __ROR8__(v50, 61);
  v54 = __ROR8__(v52, 8);
  v55 = (v54 + v53 - ((2 * (v54 + v53)) & 0xAD2AFE16A9BE3CDALL) + 0x56957F0B54DF1E6DLL) ^ 0x4DC896021F70BB77;
  v56 = __ROR8__(v55, 8);
  v57 = __ROR8__(v53, 61);
  *(v17 - 0xF1653028D44ECE4) = (((((2 * (v56 + (v55 ^ v57))) | 0xF092B567EF92DCF2) - (v56 + (v55 ^ v57)) + 0x7B6A54C08369187) ^ 0x3C7E9D818818414DLL) >> (8 * ((v17 + 28) & 7))) ^ BYTE2(v12) ^ 0x50;
  v58 = __ROR8__((v17 - 0xF1653028D44ECE3) & 0xFFFFFFFFFFFFFFF8, 8);
  v59 = (v58 - 0x2E6D7CC1A1D69CC4) ^ 0x12159011EED07D4ELL;
  v60 = (__ROR8__((v58 - 0x2E6D7CC1A1D69CC4) ^ 0x9E8189E31F9B64A8, 8) + v59) ^ 0x278A8229B8BC35DDLL;
  v61 = __ROR8__(v60, 8);
  v62 = v60 ^ __ROR8__(v59, 61);
  v63 = (((2 * (v61 + v62)) | 0xA1B17E36F517C362) - (v61 + v62) + 0x2F2740E485741E4FLL) ^ 0x2DD2A6A0556AD3B4;
  v64 = v63 ^ __ROR8__(v62, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ 0x19BBA1D59C2A28CLL;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ 0xA958557FD3FC79DDLL;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = (__ROR8__(v67, 8) + v68) ^ 0x2C3F70FBF6F9ADA3;
  v70 = v69 ^ __ROR8__(v68, 61);
  v71 = __ROR8__(v69, 8);
  v72 = (((v71 + v70) | 0x80FCAA11A3E30BE0) - ((v71 + v70) | v6) + v6) ^ 0x9BA14318E84CAEFALL;
  *(v17 - 0xF1653028D44ECE3) = (((__ROR8__(v72, 8) + (v72 ^ __ROR8__(v70, 61))) ^ v13) >> (8 * ((v17 + 29) & 7))) ^ BYTE1(v12) ^ 0xB5;
  v73 = (v17 - 0xF1653028D44ECE2);
  v74 = __ROR8__((v17 - 0xF1653028D44ECE2) & 0xFFFFFFFFFFFFFFF8, 8);
  v75 = ((2 * (v74 - 0x2E6D7CC1A1D69CC4)) | 0xC077F409C91E376) - (v74 - 0x2E6D7CC1A1D69CC4) - 0x603BFA04E48F1BBLL;
  v76 = v75 ^ 0x9882364351D39513;
  v75 ^= 0x14162FB1A0988CF5uLL;
  v77 = __ROR8__(v76, 8);
  v78 = __ROR8__((((v77 + v75) | 0x99725022D4A9356ELL) - ((v77 + v75) | a5) + a5) ^ 0xBEF8D20B6C1500B3, 8);
  v79 = (((v77 + v75) | 0x99725022D4A9356ELL) - ((v77 + v75) | a5) + a5) ^ 0xBEF8D20B6C1500B3 ^ __ROR8__(v75, 61);
  v80 = (v78 + v79) ^ v9;
  v81 = v80 ^ __ROR8__(v79, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ 0x19BBA1D59C2A28CLL;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ 0xA958557FD3FC79DDLL;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = __ROR8__(v84, 8);
  v87 = (v86 + v85 - ((2 * (v86 + v85)) & 0x651FB74F4E2381BALL) + v7) ^ v14;
  v88 = v87 ^ __ROR8__(v85, 61);
  v89 = (__ROR8__(v87, 8) + v88) ^ 0x1B5DE9094BAFA51ALL;
  *v73 = v12 ^ v15 ^ (((__ROR8__(v89, 8) + (v89 ^ __ROR8__(v88, 61))) ^ v13) >> (8 * (v73 & 7u)));
  return v24();
}

uint64_t sub_1000DA518()
{
  v1 = STACK[0x2B8];
  v2 = (7 * (STACK[0x2B8] ^ 0x4D42) + 1326013525) & 0xB0F619F5;
  v3 = STACK[0x2B8] + 9164;
  v4 = STACK[0x788];
  v5 = STACK[0xC88];
  v6 = 297845113 * ((((2 * (v0 - 224)) | 0x23A88362) - (v0 - 224) + 1848360527) ^ 0xE6E75D2F);
  *(v0 - 200) = STACK[0x620];
  *(v0 - 208) = v6 + 2042341100;
  *(v0 - 188) = v1 - v6 - 14784;
  *(v0 - 184) = v6 - 1582803273;
  *(v0 - 224) = v4;
  *(v0 - 216) = v5;
  v7 = STACK[0x408];
  v8 = (*(STACK[0x408] + 8 * (v1 ^ 0x952C)))(v0 - 224);
  v9 = v7;
  LODWORD(v7) = *(v0 - 192);
  LODWORD(STACK[0xB8C]) = v7;
  return (*(v9 + 8 * (((v7 == -371865839) * (v2 ^ 0x44C9)) ^ v3)))(v8);
}

uint64_t sub_1000DA6A4@<X0>(unsigned int a1@<W8>)
{
  v10 = v6 < v7;
  *(v9 + a1) = *(v4 + (a1 & 0xF)) ^ *(v1 + a1) ^ (113 * (a1 & 0xF)) ^ *((a1 & 0xF) + v3 + 3) ^ *(((v5 + 325865895) & 0xEC937BFB) + (a1 & 0xF) + v2 - 10727);
  if (v10 == a1 + 1 > 0xD505385A)
  {
    v10 = a1 + 721078182 < v6;
  }

  return (*(v8 + 8 * ((30 * !v10) ^ v5)))();
}

uint64_t sub_1000DA758@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, int a9@<W8>)
{
  v22 = (v9 ^ v15) & (2 * (v9 & v14)) ^ v9 & v14;
  v23 = 2 * (v13 ^ v9);
  v24 = v23 ^ v16;
  v25 = v9 ^ (2 * ((v24 & (v13 ^ v9) ^ v23 & a2 ^ a3) & (16 * ((v24 & (v13 ^ v9) ^ v23 & a2) & (4 * v22) ^ v22)) & (a4 ^ (4 * (v24 & (v13 ^ v9) ^ v23 & a2 ^ a3))) ^ (v24 & (v13 ^ v9) ^ v23 & a2) & (4 * v22) ^ v22));
  v26 = ((v25 ^ a5) + a6) ^ ((v25 ^ a7) + a8) ^ ((v25 ^ v18) + v19);
  *(a1 + v12) = v10 + v26 + v11 * (v26 + v20);
  return (*(v17 + 8 * (((v12 != 0) * v21) ^ a9)))();
}

uint64_t sub_1000DA800()
{
  v3 = ((2 * v1) & 0xFEB76664) - 0x427190A14400020 + ((((v0 + 2518) ^ 0x183B) + ((v0 + 2518) | 0x4001) + 0x37B7F99E7F5B4DF6) ^ v1);
  STACK[0xBB8] = v3;
  v4 = STACK[0x818];
  STACK[0xBC0] = STACK[0x818];
  return (*(v2 + 8 * ((8955 * (v3 - v4 + 0x291FECF2A2E6A872 < 0xFFFFFFFFFFFFFFF6)) ^ v0)))();
}

uint64_t sub_1000DA9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, int a8, int8x16_t a9, int8x8_t a10)
{
  v18.val[0].i64[0] = (v14 + a3 - 1) & 0xF;
  v18.val[0].i64[1] = (v14 + a3 + 14) & 0xF;
  v18.val[1].i64[0] = (v14 + a3 + 13) & 0xF;
  v18.val[1].i64[1] = (v14 + a3 + 12) & 0xF;
  v18.val[2].i64[0] = (v14 + a3 + 11) & 0xF;
  v18.val[2].i64[1] = (v14 + a4 + a7) & 0xF;
  v18.val[3].i64[0] = (v14 + a3 + 9) & 0xF;
  v16 = STACK[0x368];
  v18.val[3].i64[1] = (v14 + a3) & 0xF ^ 8;
  *(a5 + v14) = veor_s8(veor_s8(veor_s8(*(v13 + v18.val[0].i64[0] - 7), *(a6 + v14)), veor_s8(*(v11 + v18.val[0].i64[0] + 4 - 7), *(v12 + v18.val[0].i64[0] + 4 - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v18, a9), a10)));
  return (*(v16 + 8 * (((v15 == a3) * a8) | v10)))(a1, a2, a3 - 8, a4 - 8, a5 - 8, a6 - 8);
}

uint64_t sub_1000DAAA8()
{
  v2 = STACK[0x2B8] - 22507;
  LOWORD(STACK[0xB5C]) = v0;
  return (*(v1 + 8 * (v2 ^ 0x1FA4)))();
}

uint64_t sub_1000DAB20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v17 = a6 + a7;
  v18 = a6 + a7 + 9;
  v19 = __ROR8__(v18 & 0xFFFFFFFFFFFFFFF8, 8);
  v20 = (0x296E95066F186A7ELL - v19) & v8 | (v19 + v15) & v9;
  v21 = v20 ^ v10;
  v22 = v20 ^ v11;
  v23 = (__ROR8__(v21, 8) + v22) ^ 0x14BA074A2F986FE5;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0x2C378843F9A46E98;
  v26 = __ROR8__(v25, 8);
  v27 = v25 ^ __ROR8__(v24, 61);
  v28 = ((v12 & (2 * (v26 + v27))) - (v26 + v27) + v13) ^ v14;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x82B08017BF43C069;
  v31 = a6 - 1;
  v32 = v30 ^ __ROR8__(v29, 61);
  v33 = __ROR8__(v30, 8);
  v34 = __ROR8__(((a1 | (2 * (v33 + v32))) - (v33 + v32) + a2) ^ a3, 8);
  v35 = ((a1 | (2 * (v33 + v32))) - (v33 + v32) + a2) ^ a3 ^ __ROR8__(v32, 61);
  *(v17 + 9) = (((__ROR8__((v34 + v35) ^ 0x8FB22143FEDB6CB3, 8) + ((v34 + v35) ^ 0x8FB22143FEDB6CB3 ^ __ROR8__(v35, 61))) ^ 0x9B1C7427651E0F18) >> (8 * (v18 & 7u))) ^ *(v7 + v31);
  return (*(v16 + 8 * (((v31 != 0) * a5) ^ a4)))();
}

uint64_t sub_1000DACA4@<X0>(int a1@<W0>, uint64_t a2@<X4>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v20 = v6 - 1;
  v21 = __ROR8__((v5 + v20) & 0xFFFFFFFFFFFFFFF8, 8);
  v22 = ((v11 - v21) & v12) + v21 + a3 - ((v21 + a3) & v13);
  v23 = (a1 - 1842877102) & 0x6DD7DEF3 ^ 0x65E092F96D13C152 ^ v22;
  v24 = (__ROR8__(v22 ^ v14, 8) + v23) ^ v15;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ v16;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ v17;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ v18;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8) + v31;
  v33 = __ROR8__((a5 + v20) & 0xFFFFFFFFFFFFFFF8, 8);
  v34 = (v9 | (2 * (v33 - 0x296E95066F186A7FLL))) - (v33 - 0x296E95066F186A7FLL) - 0x7065248D8EDB03C9;
  v35 = v34 ^ 0x77473D6E72FC37BBLL;
  v34 ^= 0xC3CC6AA2F5C09BB5;
  v36 = (__ROR8__(v35, 8) + v34) ^ 0x14BA074A2F986FE5;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = __ROR8__(v36, 8);
  v39 = ((v32 | a4) - (v32 | a2) + a2) ^ v7;
  v40 = (v38 + v37 - ((2 * (v38 + v37)) & 0xF5BCA2EADAE7990) + 0x7ADE51756D73CC8) ^ 0x2B9A6D54AF735250;
  v41 = v40 ^ __ROR8__(v37, 61);
  v42 = v39 ^ __ROR8__(v31, 61);
  v43 = __ROR8__(v40, 8) + v41;
  v44 = (__ROR8__(v39, 8) + v42) ^ v8;
  v45 = (((2 * v43) | 0x67121BDC854B3408) - v43 + 0x4C76F211BD5A65FCLL) ^ 0xEF4200783AF3B6ELL;
  v46 = v45 ^ __ROR8__(v41, 61);
  v47 = __ROR8__(v44, 8) + (v44 ^ __ROR8__(v42, 61));
  v48 = (__ROR8__(v45, 8) + v46) ^ 0x82B08017BF43C069;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = __ROR8__(v48, 8);
  v51 = (((v50 + v49) | 0x79B2AA4BD92976FLL) - ((v50 + v49) | 0xF864D55B426D6890) - 0x79B2AA4BD929770) ^ 0xAD06F01E5F764313;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ 0x8FB22143FEDB6CB3;
  *(a5 + v20) = (((__ROR8__(v53, 8) + (v53 ^ __ROR8__(v52, 61))) ^ 0x9B1C7427651E0F18) >> (8 * ((a5 + v20) & 7))) ^ ((v47 ^ v10) >> (8 * ((v5 + v20) & 7))) ^ *(v5 + v20);
  return (*(v19 + 8 * ((((v20 != 0) << 6) | ((v20 != 0) << 7)) ^ a1)))();
}

void sub_1000DAFF8(uint64_t a1)
{
  v1 = 1012831759 * ((-2 - ((a1 | 0x7286011C) + (~a1 | 0x8D79FEE3))) ^ 0x9DEAE869);
  v2 = *a1 ^ v1;
  v3 = *(a1 + 24) + v1;
  if (*(a1 + 8))
  {
    v4 = v3 == 1497668682;
  }

  else
  {
    v4 = 1;
  }

  v7 = !v4 && *(a1 + 32) != 0 && *(a1 + 16) != 0;
  __asm { BRAA            X11, X17 }
}

uint64_t sub_1000DB430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, _BOOL8 a25)
{
  LODWORD(v159) = 0;
  v27 = a8 & 0xFFFFFFF1 ^ 0x6D4E132FLL;
  *(v26 - 232) = v27;
  v28 = *(v26 - 184);
  v174 = a8 & 0xFFFFFFF4 ^ 0x6D4E132FLL;
  v29 = *(a18 + (*(v28 + v174) ^ 0xAFLL));
  LODWORD(v27) = *(a16 + (*(v28 + v27) ^ 0xD7)) + (((*(v28 + v27) ^ 0x29) + 43) ^ *(v28 + v27) ^ 0x29);
  v173 = a8 & 0xFFFFFFF2 ^ 0x6D4E132DLL;
  v30 = ((*(v28 + v173) - (*(v28 + v173) ^ 0x78)) ^ 0xFFFFFFF0) + *(v28 + v173);
  v31 = *(a14 + (v30 ^ 0x3C));
  v32 = a8 ^ 0x6D4E132DLL;
  *(v26 - 224) = v32;
  LODWORD(v32) = *(a17 + (*(v28 + v32) ^ 0x5ALL));
  v33 = (v30 - ((2 * v30 - 40) & 0xFFFFFFB2) + 69) ^ v31;
  HIDWORD(v34) = v32 ^ 2;
  LODWORD(v34) = (v32 ^ 0x66666666) << 24;
  v175 = a8 & 0xFFFFFFF6 ^ 0x6D4E132DLL;
  v35 = (((v34 >> 26) * (v34 >> 26)) << 25) ^ ((v34 >> 26) << 24) ^ 0x5B000000;
  v36 = ((*(v28 + v175) ^ 0xF4) - ((2 * (*(v28 + v175) ^ 0xF4) - 40) & 0xB2) + 69) ^ *(a14 + (*(v28 + v175) ^ 0xC8));
  v166 = a8 & 0xFFFFFFFB ^ 0x6D4E132DLL;
  LODWORD(v32) = *(a17 + (*(v28 + v166) ^ 0x5FLL));
  LODWORD(v30) = ((v36 << 16) ^ 0x4F6CF12D) & (v29 ^ 0xCFFFF596) | v29 & 0xD2;
  HIDWORD(v34) = v32 ^ 2;
  LODWORD(v34) = (v32 ^ 0x66666666) << 24;
  v176 = a8 & 0xFFFFFFFC ^ 0x6D4E132FLL;
  v37 = (((v34 >> 26) * (v34 >> 26)) << 25) ^ ((v34 >> 26) << 24);
  v167 = a8 & 0xFFFFFFFA ^ 0x6D4E132DLL;
  v170 = a8 & 0xFFFFFFF9 ^ 0x6D4E132FLL;
  v38 = v35 - ((2 * v35) & 0x3A000000) + 492456819;
  v172 = a8 & 0xFFFFFFF5 ^ 0x6D4E132FLL;
  v39 = (((((*(v28 + v167) ^ 0xF4) + 108) ^ *(a14 + (*(v28 + v167) ^ 0xC8))) << 16) ^ 0xF7104815) & (v37 ^ 0xE7FF4815) | v37 & 0x8000000;
  v40 = v38 ^ 0x1D5A4B73 | *(a18 + (*(v28 + v176) ^ 0x17)) ^ 0xF9;
  v41 = *(a16 + *(v28 + v170)) + (((*(v28 + v170) ^ 0xFE) + 43) ^ *(v28 + v170) ^ 0xFE) - 92;
  v171 = a8 & 0xFFFFFFF7 ^ 0x6D4E132DLL;
  LOBYTE(v32) = *(a16 + (*(v28 + v172) ^ 0x45)) + (((*(v28 + v172) ^ 0xBB) + 43) ^ *(v28 + v172) ^ 0xBB) - 92;
  v42 = *(a17 + (*(v28 + v171) ^ 0x5ELL));
  HIDWORD(v34) = v42 ^ 2;
  LODWORD(v34) = (v42 ^ 0x66666666) << 24;
  v168 = a8 & 0xFFFFFFFE ^ 0x6D4E132DLL;
  v43 = ((((((v34 >> 26) ^ (2 * (v34 >> 26) * (v34 >> 26)) ^ 0xCA) << 24) ^ 0xDB77D9D) & ((v32 << 8) ^ 0xFFB7439F) | (v32 << 8) & 0x8200) ^ 0x79B3E2D0) & (v30 ^ 0xB09E0EB0) ^ v30 & 0x4EFB60B2;
  v169 = a8 & 0xFFFFFFF8 ^ 0x6D4E132FLL;
  v44 = *(a18 + (*(v28 + v169) ^ 0x73));
  v45 = ((v44 & 0x92 | (v44 ^ 0xFFFF4604) & (v39 ^ 0xEACD0E78)) ^ 0xACC90CA3) & ((v41 << 8) ^ 0xFFFF67FF) ^ (v41 << 8) & 0xB500;
  v165 = a8 & 0xFFFFFFFD ^ 0x6D4E132FLL;
  v46 = *(v28 + v165);
  v47 = v46 ^ 0x89;
  LODWORD(v46) = (*(a16 + (v46 ^ 0x77)) + (((v46 ^ 0x89) + 43) ^ v46 ^ 0x89) - 92) << 8;
  v164 = a8 & 0xFFFFFFF3 ^ 0x6D4E132DLL;
  LODWORD(v30) = *(a17 + (*(v28 + v164) ^ 0x39));
  HIDWORD(v34) = v30 ^ 2;
  LODWORD(v34) = (v30 ^ 0x66666666) << 24;
  v48 = *(&off_1010A0B50 + v25 - 9075) - 1997516671;
  LODWORD(a24) = v33;
  v49 = *(&off_1010A0B50 + (v25 ^ 0x2632)) - 1082561014;
  v50 = (*&v48[4 * (HIBYTE(v38) ^ 0x99)] + a2) ^ __ROR4__(*&v49[4 * (v33 ^ 0x4C)], 19);
  v51 = *(&off_1010A0B50 + (v25 ^ 0x2FA0)) - 2072978390;
  v52 = *&v51[4 * (v32 ^ 0xCA)];
  v53 = *(&off_1010A0B50 + (v25 ^ 0x2191)) - 1178940283;
  HIDWORD(v162) = v45;
  HIDWORD(v161) = v27 - 92;
  LODWORD(v44) = v50 ^ v52 ^ *&v53[4 * (v44 ^ 0x4A)];
  v54 = (*&v48[4 * ((v45 ^ 0xAF8661F9) >> 24)] + a2) ^ __ROR4__(*&v49[4 * (((((v46 ^ 0xFFFF3FFF) & (((((*(v28 + v168) ^ 0xDA) + 108) ^ *(a14 + (*(v28 + v168) ^ 0xE6))) << 16) ^ 0x2E027067) | v46 & 0xFFFF8FFF) ^ v40) >> 16) ^ 0xD3)], 19) ^ *&v51[4 * ((v27 - 92) ^ 0xEE)] ^ *&v53[4 * (v43 ^ 0x62)];
  HIDWORD(v159) = (v25 + 1046) | 0x4044;
  v163 = (HIDWORD(v159) ^ 0xFFFF8D84) & a8 ^ 0x6D4E132FLL;
  LODWORD(a23) = v43;
  LODWORD(v161) = ((v46 ^ 0xFFFF3FFF) & (((((*(v28 + v168) ^ 0xDA) + 108) ^ *(a14 + (*(v28 + v168) ^ 0xE6))) << 16) ^ 0x2E027067) | v46 & 0xFFFF8FFF) ^ v40;
  v160 = *(a18 + (*(v28 + v163) ^ 0xC4));
  v55 = (*&v48[4 * HIBYTE(v43)] + a2) ^ __ROR4__(*&v49[4 * ((((v45 ^ 0xAF8661F9) >> 16) & 0xB8 | 0x47) ^ ((v45 ^ 0xAF8661F9) >> 16) & 0x47)], 19) ^ *&v51[4 * (((((v46 ^ 0x3FFF) & 0x7067 | v46 & 0x8FFF) ^ v40) >> 8) ^ 0xC4)] ^ *&v53[4 * (v160 ^ 0x3F)];
  LODWORD(v162) = (v34 >> 26) ^ (2 * (v34 >> 26) * (v34 >> 26));
  v56 = (*&v48[4 * (v162 ^ 0x71)] + a2) ^ __ROR4__(*&v49[4 * (v36 ^ 0x55)], 19) ^ *&v51[4 * (v41 ^ 0xA7)] ^ *&v53[4 * (v40 ^ 0x1B)];
  v57 = *&v51[4 * (BYTE1(v55) ^ 0xD6)];
  v58 = (*&v48[4 * ((v44 ^ 0x4FC9777B) >> 24)] + a2) ^ __ROR4__(*&v49[4 * ((v56 ^ 0xFF30B93E) >> 16)], 19) ^ *&v53[4 * (v54 ^ 0x7A)] ^ ((((v57 ^ 0xDE9F636A) - (v57 ^ 0x72B1A3B5)) ^ 0xFFFFFFFE) + (v57 ^ 0xDE9F636A));
  v59 = (*&v48[4 * (HIBYTE(v54) ^ 0x91)] + a2) ^ __ROR4__(*&v49[4 * (BYTE2(v44) ^ 0x8E)], 19) ^ *&v51[4 * ((v56 ^ 0xB93E) >> 8)] ^ *&v53[4 * (v55 ^ 0x47)];
  v60 = (*&v48[4 * (HIBYTE(v55) ^ 0x84)] + a2) ^ __ROR4__(*&v49[4 * ((v54 ^ 0xC9469B7A) >> 16)], 19) ^ *&v51[4 * ((v44 ^ 0x777B) >> 8)] ^ *&v53[4 * (v56 ^ 0x3E)];
  v61 = (*&v48[4 * (HIBYTE(v56) ^ 0xA7)] + a2) ^ __ROR4__(*&v49[4 * (BYTE2(v55) ^ 0x3D)], 19) ^ *&v51[4 * (BYTE1(v54) ^ 0x1F)] ^ *&v53[4 * (v44 ^ 0x7B)] ^ 0x857ED4CD;
  v62 = *&v51[4 * (BYTE1(v60) ^ 0x72)];
  v63 = (*&v48[4 * (HIBYTE(v58) ^ 0x2D)] + a2) ^ __ROR4__(*&v49[4 * (BYTE2(v61) ^ 0x47)], 19) ^ *&v53[4 * (v59 ^ 0xB5)] ^ ((v62 ^ (-1406222113 - (v62 ^ 0x72B1A3B5)) ^ 0xDE9F636A ^ (559979670 - (((v62 ^ 0x215FA6A7) - 559916711) ^ ((v62 ^ 0x53FAF7D4) - 1408956372) ^ ((v62 ^ 0xAC3A3219) + 1405472231)))) - 1406222113);
  v65 = (*&v48[4 * (HIBYTE(v59) ^ 0x20)] + a2) ^ __ROR4__(*&v49[4 * (BYTE2(v58) ^ 0xFE)], 19) ^ *&v51[4 * BYTE1(v61)] ^ *&v53[4 * (v60 ^ 0x89)];
  v66 = (*&v48[4 * ((v60 ^ 0xEB08F69D) >> 24)] + a2) ^ __ROR4__(*&v49[4 * (BYTE2(v59) ^ 0xFC)], 19) ^ *&v51[4 * (BYTE1(v58) ^ 0x46)];
  v67 = HIBYTE(v61);
  HIDWORD(v34) = -1431655765 * HIBYTE(v61);
  LODWORD(v34) = HIDWORD(v34);
  LODWORD(a25) = *(v26 - 200) < 0x768955FAu;
  if ((v34 >> 1) < 0x2AAAAAAB)
  {
    v67 = 6 * (v61 / 0x6000000);
  }

  v68 = v66 ^ __ROR4__(__ROR4__(*&v53[4 * v61], 12) ^ 0x5D29CCC4, 20);
  v64 = BYTE2(v60) ^ 8;
  v69 = (*&v48[4 * (v67 ^ 0x58)] + a2) ^ __ROR4__(*&v49[4 * (-v64 ^ (71 - (v64 ^ 0x47)) ^ (v64 - ((v60 >> 15) & 0xEA) - 2146525067) ^ 0x800EA075) + 284], 19) ^ *&v51[4 * (BYTE1(v59) ^ 0xD3)] ^ *&v53[4 * (v58 ^ 0xFB)] ^ 0xC8408B07;
  v70 = BYTE1(v63) ^ 0xD0;
  v71 = (*&v48[4 * ((v63 ^ 0x50CBD030u) >> 24)] + a2) ^ __ROR4__(*&v49[4 * (BYTE2(v69) ^ 2)], 19) ^ *&v51[4 * (BYTE1(v68) ^ 0x5F)] ^ *&v53[4 * (v65 ^ 0x4F)];
  v72 = (*&v48[4 * (HIBYTE(v65) ^ 0x81)] + a2) ^ __ROR4__(*&v49[4 * ((v63 ^ 0x50CBD030u) >> 16)], 19) ^ *&v53[4 * (v68 ^ 0x5A)] ^ *&v51[4 * (BYTE1(v69) ^ 0x96)];
  v73 = (HIBYTE(v68) ^ 0xF1) - ((2 * (HIBYTE(v68) ^ 0xF1)) & 0xB0);
  v74 = *&v49[4 * (BYTE2(v68) ^ 0x4B)];
  v75 = *&v51[4 * (BYTE1(v65) ^ 0x8D)] ^ (*&v48[4 * HIBYTE(v69)] + a2) ^ ((((((v74 ^ 0xD1BFA) << (v47 & 0xD)) - ((2 * ((v74 ^ 0xD1BFA) << (v47 & 0xD))) & 0x1C0F6C92) - 1912097207) ^ 0x8E07B649) << ((v47 & 0xD ^ 0x99) & 7 ^ 4) << ((v47 & 0xD ^ 0x99) & 8)) + ((v74 >> 19) ^ 1));
  HIDWORD(v77) = v75 ^ 0x236A;
  LODWORD(v77) = v75 ^ 0xDE9F4000;
  v76 = v77 >> 14;
  if ((v76 & 0x40) != 0)
  {
    v78 = -64;
  }

  else
  {
    v78 = 64;
  }

  v79 = *&v53[4 * (((v63 ^ 0x30) - (v63 ^ 0x24)) ^ 0xFFFFFFF8) + 4 * (v63 ^ 0x30)] ^ __ROR4__((v78 + v76) ^ 0xFE89E186, 18);
  v80 = (*&v48[4 * (v73 + 88)] + a2) ^ __ROR4__(*&v49[4 * (BYTE2(v65) ^ 0x87)], 19) ^ *&v51[4 * v70] ^ *&v53[4 * (v69 ^ 0xF7)] ^ 0x4A342C67;
  v81 = (*&v48[4 * ((v72 ^ 0x5D8EC16Au) >> 24)] + a2) ^ __ROR4__(*&v49[4 * ((v71 ^ 0xBA2D6AAD) >> 16)], 19) ^ *&v53[4 * (v80 ^ 0x14)] ^ *&v51[4 * (BYTE1(v79) ^ 0x20)];
  v82 = (*&v48[4 * HIBYTE(v80)] + a2) ^ __ROR4__(*&v49[4 * (((v72 ^ 0x5D8EC16Au) >> 16) ^ 0x47)], 19) ^ *&v51[4 * ((v71 ^ 0x6AAD) >> 8)] ^ *&v53[4 * (v79 ^ 5)];
  v83 = (*&v48[4 * (HIBYTE(v79) ^ 6)] + a2) ^ (*&v49[4 * BYTE2(v80)] << 13) ^ (*&v49[4 * BYTE2(v80)] >> 19) ^ *&v51[4 * (BYTE1(v72) ^ 0x45)] ^ *&v53[4 * (v71 ^ 0xAD)];
  v84 = (*&v48[4 * (HIBYTE(v71) ^ 0xE2)] + a2) ^ __ROR4__(*&v49[4 * (BYTE2(v79) ^ 0x60)], 19) ^ *&v51[4 * BYTE1(v80)] ^ *&v53[4 * (v72 ^ 0x6A)] ^ 0x8153B460;
  v85 = *&v51[4 * (BYTE1(v82) ^ 0xD2)];
  v86 = (((((*&v49[4 * ((v83 ^ 0xEFF1AF0B) >> 16)] << 13) ^ 0x4000) - ((2 * ((*&v49[4 * ((v83 ^ 0xEFF1AF0B) >> 16)] << 13) ^ 0x4000)) & 0x8000) - 11310) ^ 0xD3D2 | (*&v49[4 * ((v83 ^ 0xEFF1AF0B) >> 16)] >> 19) ^ 1) ^ (*&v48[4 * HIBYTE(v84)] + a2)) & 0x4000;
  v87 = ((((((*&v49[4 * ((v83 ^ 0xEFF1AF0B) >> 16)] << 13) ^ 0x4000) - ((2 * ((*&v49[4 * ((v83 ^ 0xEFF1AF0B) >> 16)] << 13) ^ 0x4000)) & 0x8000) - 11310) ^ 0xD3D2 | (*&v49[4 * ((v83 ^ 0xEFF1AF0B) >> 16)] >> 19) ^ 1) ^ (*&v48[4 * HIBYTE(v84)] + a2)) & 0x4000 & v85) == 0;
  v88 = v85 ^ 0x72B1A3B5;
  if (!v87)
  {
    v86 = -v86;
  }

  v89 = (((((*&v49[4 * ((v83 ^ 0xEFF1AF0B) >> 16)] << 13) ^ 0xA37F4000) - ((2 * ((*&v49[4 * ((v83 ^ 0xEFF1AF0B) >> 16)] << 13) ^ 0xA37F4000)) & 0xB43B8000) + 1511904210) ^ 0x5A1DD3D2 | (*&v49[4 * ((v83 ^ 0xEFF1AF0B) >> 16)] >> 19) ^ 1) ^ (*&v48[4 * HIBYTE(v84)] + a2)) & 0xFFFFBFFF ^ *&v53[4 * (v81 ^ 0x73)] ^ (v86 + v88);
  v90 = (*&v48[4 * (HIBYTE(v81) ^ 0x41)] + a2) ^ __ROR4__(*&v49[4 * BYTE2(v84)], 19) ^ *&v53[4 * (v82 ^ 0xAD)] ^ *&v51[4 * (BYTE1(v83) ^ 0x2B)];
  v91 = BYTE2(v82) ^ 0xC9;
  v92 = (*&v48[4 * ((v82 ^ 0xE9C956B9) >> 24)] + a2) ^ __ROR4__(*&v49[4 * (BYTE2(v81) ^ 0xD0)], 19) ^ *&v51[4 * BYTE1(v84)] ^ *&v53[4 * (v83 ^ 0xB)];
  v93 = (*&v48[4 * (HIBYTE(v83) ^ 0xB7)] + a2) ^ __ROR4__(*&v49[4 * v91], 19) ^ *&v51[4 * (BYTE1(v81) ^ 0x94)] ^ *&v53[4 * v84];
  v94 = *&v49[4 * (BYTE2(v93) ^ 0xC)];
  HIDWORD(v95) = v94 ^ 0x51BFA;
  LODWORD(v95) = v94 ^ 0x80000;
  v96 = *&v48[4 * (HIBYTE(v89) ^ 0x52)] + a2;
  v97 = v93 ^ 0xA04BC612;
  v98 = (*&v48[4 * (HIBYTE(v90) ^ 0x3E)] + a2) ^ __ROR4__(*&v49[4 * (BYTE2(v89) ^ 0x73)], 19) ^ *&v51[4 * (((v93 ^ 0xC612) >> 8) ^ 0x84)] ^ *&v53[4 * (v92 ^ 0x6A)];
  v99 = (*&v48[4 * (HIBYTE(v92) ^ 0x56)] + a2) ^ __ROR4__(*&v49[4 * (BYTE2(v90) ^ 0xB7)], 19) ^ *&v53[4 * (v93 ^ 0x12)] ^ *&v51[4 * (BYTE1(v89) ^ 0x6C)];
  v100 = *&v51[4 * (BYTE1(v92) ^ 0xFD)] ^ *&v53[4 * (v90 ^ 0xA7)] ^ 0x163C23EC ^ ((v95 >> 19) + v96 - 2 * ((v95 >> 19) & v96));
  v101 = *&v51[4 * (BYTE1(v90) ^ 0x9B)] ^ (*&v48[4 * HIBYTE(v97)] + a2) ^ __ROR4__(*&v49[4 * (BYTE2(v92) ^ 0x2D)], 19) ^ *&v53[4 * (v89 ^ 0x74)];
  v102 = v101 ^ 0x81504D8;
  v103 = (*&v48[4 * HIBYTE(v100)] + a2) ^ __ROR4__(*&v49[4 * ((v101 ^ 0x81504D8u) >> 16)], 19) ^ *&v51[4 * (BYTE1(v99) ^ 0xDD)] ^ *&v53[4 * (v98 ^ 0xD3)];
  BYTE1(v90) = BYTE1(v98) ^ 0xAF;
  v104 = *&v49[4 * (BYTE2(v98) ^ 0x3E)];
  v105 = (*&v48[4 * ((v98 ^ 0x4379AFC7u) >> 24)] + a2) ^ __ROR4__(*&v49[4 * BYTE2(v100)], 19) ^ *&v51[4 * ((v101 ^ 0x4D8) >> 8)] ^ *&v53[4 * (v99 ^ 0x79)];
  v106 = (*&v48[4 * (HIBYTE(v99) ^ 0xCE) + 356 + 4 * ((v99 >> 23) & 0xB0 ^ 0xFFFFFF6F)] + a2) ^ __ROR4__(v104, 19) ^ *&v51[4 * BYTE1(v100)] ^ *&v53[4 * (v101 ^ 0xCC)];
  v107 = *&v48[4 * HIBYTE(v102)];
  v108 = (v107 - ((2 * v107 + 1390840540) & 0x7FA36666) + 692385953) ^ __ROR4__(*&v49[4 * (BYTE2(v99) ^ 0xAE)], 19);
  v109 = *&v51[4 * BYTE1(v90)];
  v110 = (v108 ^ 0x1CAEF332) & 0x4000000;
  v87 = (v110 & v109) == 0;
  v111 = v109 ^ 0x72B1A3B5;
  if (!v87)
  {
    v110 = -v110;
  }

  v112 = (((v110 + v111) ^ v108 | 0x55339BFC) & ((v108 ^ 0x1CAEF332) & 0x51339BFC ^ 0xC0451A2 ^ (v110 + v111) & 0x55339BFC) | ((v110 + v111) ^ v108) & 0xA2C82401) ^ *&v53[4 * v100];
  v113 = *&v51[4 * (BYTE1(v106) ^ 0xC9)] ^ (*&v48[4 * ((v103 ^ 0x98CAA451) >> 24)] + a2) ^ __ROR4__(*&v49[4 * (BYTE2(v112) ^ 0xCD)], 19) ^ *&v53[4 * (v105 ^ 0x8A)];
  v114 = *&v49[4 * ((v103 ^ 0x98CAA451) >> 16)];
  v115 = (*&v48[4 * (HIBYTE(v105) ^ 8)] + a2) ^ (v114 >> 19) ^ (v114 << 13) ^ *&v53[4 * (v106 ^ 0x1E)] ^ *&v51[4 * (BYTE1(v112) ^ 0xF0)];
  v116 = *&v48[4 * (HIBYTE(v112) ^ 0xBD)];
  v117 = (*&v48[4 * (HIBYTE(v106) ^ 0x2B)] + a2) ^ __ROR4__(*&v49[4 * (BYTE2(v105) ^ 0x49)], 19) ^ *&v51[4 * (BYTE1(v103) ^ 0x20)] ^ *&v53[4 * (v112 ^ 0x17)];
  v118 = (v116 + a2) ^ __ROR4__(*&v49[4 * (BYTE2(v106) ^ 0xA4)], 19) ^ *&v51[4 * (BYTE1(v105) ^ 0x77)] ^ *&v53[4 * (v103 ^ 0x51)];
  v119 = v105 & 8;
  v120 = (v117 ^ 0xE17F66CF) >> (v105 & 8 ^ 8);
  v121 = *(&off_1010A0B50 + v25 - 7533) - 1150566731;
  v122 = *&v121[4 * (HIBYTE(v113) ^ 0xA2)];
  v123 = *&v121[4 * (HIBYTE(v115) ^ 0xE)];
  v124 = *&v121[4 * (HIBYTE(v117) ^ 0xBD)];
  v125 = v120 >> v119;
  LODWORD(v121) = *&v121[4 * (HIBYTE(v118) ^ 0xD5)];
  v126 = *(&off_1010A0B50 + v25 - 9497) - 143095383;
  v127 = *&v126[4 * (BYTE2(v118) ^ 0x1F)];
  v128 = *&v126[4 * (BYTE2(v113) ^ 0x4B)];
  v129 = *&v126[4 * (BYTE2(v115) ^ 0xB7)];
  v130 = *&v126[4 * (BYTE2(v117) ^ 0xD9)];
  v131 = *(&off_1010A0B50 + v25 - 7828) - 587020202;
  v132 = *&v131[4 * (v125 ^ 0xAE)];
  v133 = *&v131[4 * (BYTE1(v118) ^ 0xDD)];
  v134 = *&v131[4 * (BYTE1(v113) ^ 0x1A)];
  LODWORD(v131) = *&v131[4 * (BYTE1(v115) ^ 0x21)];
  v135 = *(&off_1010A0B50 + (v25 ^ 0x3E87)) - 1833402843;
  v136 = *&v135[4 * (v115 ^ 0x5E)];
  v137 = *&v135[4 * (v117 ^ 0x11)];
  v138 = *&v135[4 * (v118 ^ 0x9A)];
  LODWORD(v135) = *&v135[4 * (v113 ^ 0x7A)];
  v139 = v123 ^ *(v26 - 216) ^ (v123 >> 3) & 0x1588125C ^ (v128 + 1736369097) ^ v137 ^ v133 ^ 0xB26D7C83 ^ (4 * (v133 ^ 0xB26D7C83));
  v140 = *(&off_1010A0B50 + v25 - 8281) - 1934642071;
  *(v28 + v166) = ((HIBYTE(v139) ^ 0xCE) + v140[HIBYTE(v139) ^ 0x8ELL] - 103) ^ 0x31;
  v141 = v121 ^ *(v26 - 212) ^ (v130 + 1736369097) ^ v135 ^ (v121 >> 3) & 0x1588125C ^ v131 ^ 0x89CFCFD1 ^ (4 * (v131 ^ 0x89CFCFD1));
  *(v28 + v164) = (v140[HIBYTE(v141) ^ 0x83] + (HIBYTE(v141) ^ 0xC3) - 103) ^ 0x60;
  v142 = *(&off_1010A0B50 + (v25 ^ 0x3C86)) - 1768596450;
  *(v28 + v167) = (v142[BYTE2(v139) ^ 0x7DLL] + 59) ^ 0x7C;
  v143 = (v124 >> 3) & 0x1588125C ^ v124 ^ (v129 + 1736369097) ^ v138 ^ v134 ^ 0xC445B944 ^ (4 * (v134 ^ 0xC445B944));
  v144 = v143 & 0x800000;
  v145 = *(v26 - 208);
  if ((v143 & 0x800000 & ~v145) != 0)
  {
    v144 = -v144;
  }

  v146 = (v144 + (v145 ^ 0xABD2C135)) ^ v143 & 0xFF7FFFFF;
  v147 = ((v144 + (v145 ^ 0x35)) ^ (v124 >> 3) & 0x5C ^ v124 ^ (v129 - 55) ^ v138 ^ v134 ^ 0x44 ^ (4 * (v134 ^ 0x44))) ^ 0x1CLL;
  v148 = *(&off_1010A0B50 + (v25 ^ 0x3FCE)) - 1714113258;
  *(v28 + v174) = v148[v147] ^ 0xF8;
  *(v28 + v173) = (v142[BYTE2(v141) ^ 0xD2] + 59) ^ 0x3E;
  v149 = v122 ^ *(v26 - 204) ^ (v122 >> 3) & 0x1588125C ^ (v127 + 1736369097) ^ v132 ^ 0xD1B9B098 ^ v136 ^ (4 * (v132 ^ 0xD1B9B098));
  *(v28 + v163) = v148[v141 ^ 0x82] ^ 0x95;
  v150 = BYTE1(v141) ^ 0x96;
  v151 = *(&off_1010A0B50 + (v25 ^ 0x2C9D)) - 571898015;
  *(v28 + *(v26 - 232)) = ((v151[v150] >> 3) | (32 * v151[v150])) ^ (v151[v150] >> 2) & 0x18 ^ 0xF6;
  LODWORD(v150) = v151[BYTE1(v139) ^ 0x1CLL];
  *(v28 + v170) = ((v150 >> 3) | (32 * v150)) ^ (v151[BYTE1(v139) ^ 0x1CLL] >> 2) & 0x18 ^ 0xFA;
  LODWORD(v150) = v151[BYTE1(v149) ^ 0x5ELL];
  v152 = (((((v150 >> 3) | (32 * v150)) ^ 0x43) >> 2) | ((((v150 >> 3) | (32 * v150)) ^ 0x43) << 6)) ^ 0xFFFFFF9D;
  v153 = v152 >> 6;
  v154 = v153 | (4 * v152);
  *(v28 + v165) = (v151[BYTE1(v149) ^ 0x5ELL] >> 2) & 0x18 ^ v154 ^ 0x99;
  *(v28 + v168) = (v142[BYTE2(v149) ^ 0x1ALL] + 59) ^ 0xB6;
  *(v28 + v175) = (v142[BYTE2(v146) ^ 9] + 59) ^ 0x3D;
  LODWORD(v150) = v151[BYTE1(v146) ^ 0xC8];
  *(v28 + v172) = ((v150 >> 3) | (32 * v150)) ^ (v150 >> 2) & 0x18 ^ 0xAA;
  *(v28 + v171) = ((HIBYTE(v146) ^ 0x12) + v140[HIBYTE(v146) ^ 0x52] - 103) ^ 0xE4;
  *(v28 + *(v26 - 224)) = ((HIBYTE(v149) ^ 0x9E) + v140[HIBYTE(v149) ^ 0xDELL] - 103) ^ 0xAD;
  *(v28 + v169) = v148[v139 ^ 0xDCLL] ^ 0x20;
  *(v28 + v176) = v148[v149 ^ 0xFCLL] ^ 0x2F;
  LODWORD(v150) = (((a8 ^ 0x6E8FF072) - 1854926962) ^ ((a8 ^ 0x20ADB4E0) - 548254944) ^ ((a8 ^ 0x236C57BF) - 594302911)) - 940141442;
  v155 = ((v150 ^ 0x65A27733) - 1057683058) ^ v150 ^ ((v150 ^ 0x39732F7C) - 1675341373) ^ ((v150 ^ 0x792626F1) - 596551600) ^ ((v150 ^ 0x7F5FFFFF) - 636976830);
  LODWORD(v150) = (((v155 ^ 0x5976083A) - 1854970454) ^ ((v155 ^ 0xE1EB4994) + 703734792) ^ ((v155 ^ 0xE235C0EF) + 707571069)) - 472422105;
  v156 = a25 ^ (v150 < 0x768955FA);
  v157 = v150 < *(v26 - 200);
  if (v156)
  {
    v157 = a25;
  }

  return (*(*(v26 - 192) + 8 * ((6393 * v157) ^ v25)))(&off_1010A0B50, a2, 1736369097, v142, v154, v140, v153, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v159, v160, v161, v162, a23, a24, a25, v163, v164, v165, v166, v167, v168);
}

uint64_t sub_1000DCD1C@<X0>(uint64_t a1@<X8>)
{
  v2 = STACK[0xBB0] - 0x18603FFA8CC1F508 + (((a1 ^ 0x657BE289C3FE5B64) - 0x657BE289C3FE5B64) ^ ((a1 ^ 0xB8C3B1CF0C4D8345) + 0x473C4E30F3B27CBBLL) ^ ((a1 ^ 0xDDB8534626661F30) + 0x2247ACB9D999E0D0)) + 0x1372D87CELL;
  v3 = STACK[0xBA8] - 0x45475261FC34B56BLL;
  v4 = v2 < 0x4D57C0BD;
  v5 = v2 > v3;
  if (v3 < 0x4D57C0BD != v4)
  {
    v5 = v4;
  }

  return (*(v1 + 8 * ((19 * !v5) ^ (STACK[0x2B8] - 1995))))();
}

uint64_t sub_1000DCE94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v21 = a5 + a6;
  v22 = a5 + a6 + 9;
  v23 = __ROR8__(v22 & 0xFFFFFFFFFFFFFFF8, 8);
  v24 = (v14 - v23) & v19 | (v23 + v13) & v18;
  v25 = v24 ^ v7;
  v26 = v24 ^ v8;
  v27 = (__ROR8__(v25, 8) + v26) ^ v10;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ v16;
  v30 = __ROR8__(v29, 8);
  v31 = v29 ^ __ROR8__(v28, 61);
  v32 = ((v9 & (2 * (v30 + v31))) - (v30 + v31) + v6) ^ v11;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ v17;
  v35 = a5 - 1;
  v36 = v34 ^ __ROR8__(v33, 61);
  v37 = __ROR8__(v34, 8);
  v38 = __ROR8__(((v12 | (2 * (v37 + v36))) - (v37 + v36) + a1) ^ a2, 8);
  v39 = ((v12 | (2 * (v37 + v36))) - (v37 + v36) + a1) ^ a2 ^ __ROR8__(v36, 61);
  *(v21 + 9) = (((__ROR8__((v38 + v39) ^ 0x8FB22143FEDB6CB3, 8) + ((v38 + v39) ^ 0x8FB22143FEDB6CB3 ^ __ROR8__(v39, 61))) ^ v20) >> (8 * (v22 & 7u))) ^ *(STACK[0x260] + v35);
  return (*(v15 + 8 * (((v35 != 0) * a4) ^ a3)))();
}

uint64_t sub_1000DCF88@<X0>(uint64_t a1@<X8>)
{
  v11 = v6 - 1;
  *(v9 + v11) = *(a1 + (v11 & 0xF)) ^ *(v8 + v11) ^ (v7 - 25) ^ *((v11 & 0xF) + v1 + 6) ^ ((v11 & 0xF) * v4) ^ *(v2 + (v11 & 0xF));
  return (*(v10 + 8 * (((v11 == 0) * v5) ^ v3)))();
}

uint64_t sub_1000DD008(int a1, __n128 a2)
{
  v6.n128_u64[0] = (v2 + 13) & 0xF;
  v6.n128_u64[1] = (v2 + 12) & 0xF;
  v7.n128_u64[0] = (v2 + 11) & 0xF;
  v7.n128_u64[1] = (v2 + 10) & 0xF;
  v8.n128_u64[0] = (v2 + 9) & 0xF;
  v8.n128_u64[1] = v3 & 0xF ^ 2;
  v12.val[0].i64[0] = (v2 + 7) & 0xF;
  v12.val[0].i64[1] = (v2 + 6) & 0xF;
  v12.val[1].i64[0] = (v2 + 5) & 0xF;
  v12.val[1].i64[1] = (v2 + 4) & 0xF;
  v12.val[2].i64[0] = (v2 + 3) & 0xFLL;
  v12.val[2].i64[1] = (v2 + 2) & 0xFLL;
  v12.val[3].i64[0] = (v2 + 1) & 0xFLL;
  v12.val[3].i64[1] = v2 & 0xF;
  v9.n128_u64[0] = 0x5353535353535353;
  v9.n128_u64[1] = 0x5353535353535353;
  v10.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v10.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  return (*(v5 + 8 * (a1 - 16542)))((v2 + 14) & 0xF, v4 - 15, ((((a1 - 1056383098) & 0x3EF6DFDB) - 20426) & v2) - 16, -24950, 7386, a2, v6, v7, v8, xmmword_100BC76B0, vqtbl4q_s8(v12, xmmword_100BC76B0), v9, v10);
}

void sub_1000DD3A4(uint64_t a1)
{
  v1 = *(a1 + 12) ^ (139493411 * (((a1 | 0x9B768A71) - (a1 & 0x9B768A71)) ^ 0x975B6B34));
  v2 = *a1;
  v4 = v1 + 155453101 * ((~&v4 & 0x5622BE7 | &v4 & 0xFA9DD418) ^ 0xE3443028) - 1143832864;
  v5 = v2;
  v3 = *(&off_1010A0B50 + v1 - 1143848288) - 810145054;
  (*&v3[8 * v1 - 0x22167B4C8])(&v4);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000DD52C@<X0>(uint64_t a1@<X0>, int a2@<W1>, unsigned int a3@<W8>, int8x16_t a4@<Q0>, int8x16_t a5@<Q1>, int8x16_t a6@<Q4>, int8x16_t a7@<Q5>, int8x16_t a8@<Q6>)
{
  a5.i64[0] = *(v9 + 4);
  a5.i32[2] = *(v9 + 12);
  v14 = vextq_s8(a4, a5, 0xCuLL);
  a5.i32[3] = *(v13 + 4 * (v10 + (v8 ^ a1)));
  v15.i32[0] = *(v11 + 4 * (*(v9 + 4) & 1));
  v15.i32[1] = *(v11 + 4 * (*(v9 + 8) & 1));
  v15.i32[2] = *(v11 + 4 * (a5.i8[8] & 1));
  v15.i32[3] = *(v11 + 4 * (a5.i8[12] & 1));
  *v9 = veorq_s8(veorq_s8(veorq_s8(*(v9 - 908), v15), a8), vshrq_n_u32(vorrq_s8(vandq_s8(a5, a7), vandq_s8(v14, a6)), 1uLL));
  return (*(v12 + 8 * (((v10 == 392) * a2) ^ a3)))(a5);
}

uint64_t sub_1000DD5CC@<X0>(int a1@<W8>)
{
  v4 = (((v3 ^ 0xCA7FBE18) + 897597928) ^ ((v3 ^ 0x16995E52) - 379149906) ^ (((307 * (v1 ^ 0x841C) + 208892897) & 0xF38CF9EB ^ 0xCACC7166) + (v3 ^ 0x3533275B))) + 1921989772;
  v5 = (((a1 ^ 0x202C4753) - 539772755) ^ ((a1 ^ 0x7BF9C256) - 2079965782) ^ ((a1 ^ 0xB2004214) + 1308605932)) + 1921989772;
  v6 = (v5 < 0x88B9757B) ^ (v4 < 0x88B9757B);
  v7 = v4 < v5;
  if (v6)
  {
    v7 = v5 < 0x88B9757B;
  }

  return (*(v2 + 8 * ((28 * !v7) ^ v1)))();
}

uint64_t sub_1000DD758(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8)
{
  LODWORD(STACK[0x2A0]) = v8 - 13344;
  STACK[0x440] = *(v19 + 8 * (v8 - 13344));
  STACK[0x2F0] = v15 & 0xFFFFFFF0;
  STACK[0x290] = (v15 & 0xFFFFFFF0) - 16;
  STACK[0x2C0] = a1;
  STACK[0x280] = v12;
  STACK[0x2D0] = v13;
  v20 = a1 + v12 + v13 + a3;
  *&STACK[0x420] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x410] = vdupq_n_s64(0x38uLL);
  *&STACK[0x3E0] = vdupq_n_s64(a5);
  *&STACK[0x3F0] = vdupq_n_s64(a8);
  *&STACK[0x3C0] = vdupq_n_s64(v16);
  *&STACK[0x3D0] = vdupq_n_s64(a7);
  *&STACK[0x3B0] = vdupq_n_s64(v14);
  *&STACK[0x390] = vdupq_n_s64(a6);
  *&STACK[0x3A0] = vdupq_n_s64(0x278A8229B8BC35DDuLL);
  *&STACK[0x370] = vdupq_n_s64(a4);
  *&STACK[0x380] = vdupq_n_s64(0x19BBA1D59C2A28CuLL);
  *&STACK[0x350] = vdupq_n_s64(0x70B1AFF34B1C515DuLL);
  *&STACK[0x360] = vdupq_n_s64(0x1E9CA01969C75D46uLL);
  *&STACK[0x330] = vdupq_n_s64(0x1B5DE9094BAFA51AuLL);
  *&STACK[0x340] = vdupq_n_s64(v10);
  *&STACK[0x310] = vdupq_n_s64(v17);
  *&STACK[0x320] = vdupq_n_s64(v11);
  *&STACK[0x300] = vdupq_n_s64(v18);
  *&STACK[0x430] = xmmword_100BC76B0;
  return (STACK[0x440])(v20 + 0x164040100401E497, v20 + v9, v20 + 0x164040100401E499, v20 + 0x164040100401E49ALL, v20 + 0x164040100401E49BLL, v20 + 0x164040100401E49DLL, v20 + 0x164040100401E49ELL, v20 + 0x164040100401E49FLL);
}

void sub_1000DDB04(uint64_t a1)
{
  v1 = 1603510583 * (((a1 | 0x7629925D) - (a1 & 0x7629925D)) ^ 0xE1F2A0F6);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_1000DDBDC@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v18 = (v11 ^ a7 ^ ((v9 + v15) | a4)) & (2 * (v11 & a6)) ^ v11 & a6;
  v19 = ((2 * (v11 ^ a5)) ^ a8) & (v11 ^ a5) ^ (2 * (v11 ^ a5)) & v13;
  v20 = v11 ^ (2 * (((4 * (v19 ^ 5)) & a1 ^ a2 ^ ((4 * (v19 ^ 5)) ^ v12) & (v19 ^ 5)) & (16 * ((v19 ^ v17) & (4 * v18) ^ v18)) ^ (v19 ^ v17) & (4 * v18) ^ v18));
  v21 = (((v20 ^ 0xE5) - 6) ^ ((v20 ^ 0xC4) - 39) ^ ((v20 ^ 0xA2) - 65)) + 37;
  v22 = v10 - 1;
  *(v16 - 144) = v22;
  *(a9 + v22) = v21 * (v11 + a3) + 69 * (77 * v21 - (v11 + a3) + ((v11 + a3) << 7)) + 123;
  return (*(v14 + 8 * ((246 * (*(v16 - 144) != 0)) ^ v9)))();
}

uint64_t sub_1000DDD98(int a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, int a7, int8x16_t a8, int8x8_t a9, int8x8_t a10)
{
  v17.val[0].i64[0] = (v13 + a3 - 1) & 0xF;
  v17.val[0].i64[1] = (v13 + a3 + 14) & 0xF;
  v17.val[1].i64[0] = (v13 + a4 + a5) & 0xF;
  v17.val[1].i64[1] = (v13 + a3 + 12) & 0xF;
  v17.val[2].i64[0] = (v13 + a3 + 11) & 0xF;
  v17.val[2].i64[1] = (v13 + a3 + 10) & 0xF;
  v17.val[3].i64[0] = (v13 + a3 + 9) & 0xF;
  v17.val[3].i64[1] = (v13 + a3) & 0xF ^ 8;
  *(v14 + v13) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a6 + v13), *(v11 + v17.val[0].i64[0] - 7)), veor_s8(*(v10 + v17.val[0].i64[0] - 7), *(v17.val[0].i64[0] + v12 - 1)))), a10), vmul_s8(*&vqtbl4q_s8(v17, a8), a9)));
  return (*(v15 + 8 * (((a2 == a3) * a7) ^ a1)))();
}

uint64_t sub_1000DDE70()
{
  STACK[0x260] = v1;
  STACK[0x290] = v1 + 24;
  STACK[0x280] = STACK[0x9F0];
  v6 = *(v5 + 8 * (v0 ^ 0x6F76 ^ ((v0 - 629) | 0x5C31)));
  *&STACK[0x450] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x3D0] = vdupq_n_s64(v4);
  *&STACK[0x3E0] = vdupq_n_s64(0x38uLL);
  *&STACK[0x3B0] = vdupq_n_s64(0xB3A94E2F7B1B987CLL);
  *&STACK[0x3C0] = vdupq_n_s64(0x72219E3FC273472uLL);
  *&STACK[0x2D0] = vdupq_n_s64(0x893E0559B1E8D0E6);
  *&STACK[0x390] = vdupq_n_s64(0x627BFDEC618F40FCuLL);
  *&STACK[0x3A0] = vdupq_n_s64(0x76C1FAA64E172F19uLL);
  *&STACK[0x370] = vdupq_n_s64(0x7F8E6DFEAC84402DuLL);
  *&STACK[0x380] = vdupq_n_s64(0x2C378843F9A46E98uLL);
  *&STACK[0x2C0] = vdupq_n_s64(0x80719201537BBFD2);
  *&STACK[0x350] = vdupq_n_s64(0x82B08017BF43C069);
  *&STACK[0x360] = vdupq_n_s64(0xC2F340176D8EE147);
  *&STACK[0x330] = vdupq_n_s64(0x960A24DB292F1188);
  *&STACK[0x340] = vdupq_n_s64(v2);
  *&STACK[0x310] = vdupq_n_s64(0x44B7332E6A4CE477uLL);
  *&STACK[0x320] = vdupq_n_s64(0xCB05126D949788C4);
  *&STACK[0x2F0] = vdupq_n_s64(0x330266036AD6F21BuLL);
  *&STACK[0x300] = vdupq_n_s64(0x99FB33F92A521BCALL);
  *&STACK[0x2E0] = vdupq_n_s64(0x57E1EDDBF03702FDuLL);
  *&STACK[0x3F0] = xmmword_100BC76B0;
  LODWORD(STACK[0x270]) = v3 - 10623;
  return v6();
}

uint64_t sub_1000DE088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a2 + 640 * v3;
  STACK[0x528] = v5;
  *(a1 + 616) = 356632017;
  return (*(v4 + 8 * (((((v2 - 1688) | 0x16) - 32740) * (v5 == 0)) ^ v2)))();
}

uint64_t sub_1000DE15C(uint64_t a1, int a2)
{
  v10 = (a2 + 121 + ((a2 - 94) ^ 6) + v7) & 0xF;
  v11 = v2 + 1;
  v13 = (v6 - *(v9 - 184)) >= 0x10 && (v11 + v3 - v7 + v10) >= 0x10 && (v11 + v4 - v7 + v10) >= 0x10;
  v14 = v11 + v5 - v7 + v10;
  v16 = !v13 || v14 < 0x10;
  return (*(v8 + 8 * ((55 * v16) ^ a2)))();
}

uint64_t sub_1000DE308@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, int a8@<W7>, char a9@<W8>)
{
  v18 = v14 - 1;
  *(v17 - 88) = v18;
  v19 = (a9 ^ a3) & (2 * (a9 & a2)) ^ a9 & a2;
  v20 = ((2 * (a9 ^ v16 ^ v10)) ^ a4) & (a9 ^ v16 ^ v10) ^ (2 * (a9 ^ v16 ^ v10)) & a5;
  *(a1 + v18) = (a9 ^ (2 * ((v20 ^ a6) & (16 * (v20 & (4 * v19) ^ v19)) & (a7 ^ (4 * (v20 ^ a6))) ^ v20 & (4 * v19) ^ v19)) ^ 6) * (a9 - 51);
  v21 = *(v17 - 88);
  if (v12 < v11 != v21 > v13)
  {
    v22 = v21 > v13;
  }

  else
  {
    v22 = v21 + v11 > v12;
  }

  return (*(v15 + 8 * ((v22 * a8) ^ v9)))();
}

uint64_t sub_1000DE3B0@<X0>(_DWORD *a1@<X8>)
{
  v7 = *(v2 - 0x217E172EFA1E81CLL);
  v8 = (((*a1 ^ 0xC02A74D5) + 1070959403) ^ ((*a1 ^ 0x8D4657C2) + 1924769854) ^ (((v5 + 27266) ^ *a1 ^ 0xA4B97AE0) + 1531321338)) - 54746966;
  v9 = 634647737 * ((~(v6 - 168) & 0xB0BE3949 | (v6 - 168) & 0x4F41C6B0) ^ 0xDD2816B5);
  STACK[0x470] = (a1 + 1);
  *(v6 - 136) = v5 - v9 + 26365;
  *(v6 - 168) = v8 ^ v9;
  STACK[0x460] = v7;
  STACK[0x450] = &STACK[0x24C];
  STACK[0x458] = &STACK[0x284];
  v12 = v1;
  v10 = (*(v3 + 8 * (v5 + 38496)))(v6 - 168);
  return (*(v3 + 8 * ((40904 * (*(v6 - 120) == v4)) ^ v5)))(v10, v12, &STACK[0x298], 371891449);
}

uint64_t sub_1000DE6F8@<X0>(int a1@<W2>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v5.n128_u64[0] = (v3 + 13) & 0xF;
  v5.n128_u64[1] = (v3 + 12) & 0xF;
  v6.n128_u64[0] = (v3 + 11) & 0xF;
  v6.n128_u64[1] = (v3 + 10) & 0xF;
  v7.n128_u64[0] = (a1 - 4 + v3) & 0xF;
  v7.n128_u64[1] = v3 & 0xF ^ 8;
  v10.val[0].i64[0] = (v3 + 7) & 0xF;
  v10.val[0].i64[1] = (v3 + 6) & 0xF;
  v10.val[1].i64[0] = (v3 + 5) & 0xF;
  v10.val[1].i64[1] = (v3 + 4) & 0xF;
  v10.val[2].i64[0] = (v3 + 3) & 0xF;
  v10.val[2].i64[1] = (v3 + 2) & 0xF;
  v10.val[3].i64[0] = (v3 + 1) & 0xF;
  v10.val[3].i64[1] = v3 & 0xF;
  v8.n128_u64[0] = 0x6767676767676767;
  v8.n128_u64[1] = 0x6767676767676767;
  return (*(v4 + 8 * a1))(a2 - 15, (v3 + 14) & 0xF, (a1 - 25933) | 0xB041u, -45617, a3, v5, v6, v7, xmmword_100BC76B0, vqtbl4q_s8(v10, xmmword_100BC76B0), v8);
}

uint64_t sub_1000DE7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, int a34, uint64_t a35, int a36, int a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  v45 = a34 + v43 + (2 * (v42 ^ 0x95) + 31 + (((v42 ^ 0x95) + 1) ^ 0x44)) * a36;
  v46 = *(&STACK[0x2F0] + ((-v45 ^ (v45 + 81) ^ (((v45 + 81) ^ 0xFC) + 83) ^ (((v45 + 81) ^ 0x2C) - 125) ^ (((v45 + 81) ^ 0x7E) - 47)) ^ 0x51u));
  v47 = (((v46 ^ 8) + 107) ^ v46 ^ ((v46 ^ 0xE7) - 122) ^ ((v46 ^ 0x89) - 20) ^ ((v46 ^ 0xFB) - 102));
  v48 = 906386353 * ((((v44 - 144) | 0xD4150709) + (~(v44 - 144) | 0x2BEAF8F6)) ^ 0xE514CA2C);
  *(v44 - 104) = v48 - 958109692 + (((v47 ^ 0x67C82957) - 210800341) ^ ((v47 ^ 0x3665A0B1) - 1564280627) ^ ((v47 ^ 0x51AD897B) - 989146873));
  *(v44 - 120) = v48 ^ 0x24F40078;
  *(v44 - 116) = v48 + (a33 ^ 0x7BCFE6B3) + ((2 * a33) & 0x779FCD66) - 709263874;
  *(v44 - 128) = (v42 - 899262226) ^ v48;
  *(v44 - 124) = v48 ^ a28 ^ 0x6E95D8F4;
  *(v44 - 112) = ((a34 ^ 0xE9BDDEBF) + 2004072959 + ((2 * a34) & 0x537BBD7E)) ^ v48;
  *(v44 - 108) = v48 + (a36 ^ 0x2DDF9F3F) + ((2 * a36) & 0x5BBF3E7E) - 742817794;
  *(v44 - 144) = &a42;
  *(v44 - 136) = &STACK[0x2F0];
  v49 = (*(a39 + 8 * (v42 - 899219302)))(v44 - 144);
  return (*(a39 + 8 * ((123 * (a37 != 1)) ^ (v42 - 899241050))))(v49);
}

uint64_t sub_1000DEA78@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = v17 - 272780436 < a1 + ((v18 - 29511) | 0x4A08) + ((v18 - 31463) | 0x3008) + 472362825;
  if (a1 > 1675081082 != v17 - 272780436 < -1675081083)
  {
    v19 = a1 > 1675081082;
  }

  return (*(a17 + 8 * ((6528 * v19) ^ v18)))();
}

uint64_t sub_1000DEB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, unsigned int a13)
{
  v18 = *v14;
  v19 = v13 + ((v17 + 680028239) & 0xD777777F) - ((2 * v13) & 0x6F0D27CC) + 931537065;
  v20 = 297845113 * ((((&a11 | 0x9FA4289E) ^ 0xFFFFFFFE) - (~&a11 | 0x605BD761)) ^ 0x1768CBFF);
  LODWORD(a11) = v19 ^ v20;
  HIDWORD(a11) = v17 + 1195979785 + v20;
  a12 = v16 + 10;
  (*(v15 + 8 * (v17 + 14452)))(&a11);
  v21 = *(v16 + 5) - ((2 * *(v16 + 5)) & 0x6F0D27CC) + 931566566;
  v22 = 297845113 * ((&a11 - 2 * (&a11 & 0x148E4780) + 344868742) ^ 0x63BD5B18);
  a12 = (v16 + 84);
  LODWORD(a11) = v21 ^ v22;
  HIDWORD(a11) = v17 + 1195979785 + v22;
  (*(v15 + 8 * (v17 ^ 0x588C)))(&a11);
  a11 = a10;
  a12 = v16;
  a13 = (v17 + 1811826386) ^ (1603510583 * ((2 * (&a11 & 0x3AD09928) - &a11 + 1160734422) ^ 0xD2F4547D));
  v23 = (*(v15 + 8 * (v17 + 14568)))(&a11);
  *v18 = *v16;
  v18[1] = *(v16 + 1);
  v18[2] = *(v16 + 2);
  v18[3] = *(v16 + 3);
  v18[4] = *(v16 + 4);
  v18[5] = *(v16 + 5);
  v18[6] = *(v16 + 6);
  v18[7] = *(v16 + 7);
  v18[8] = *(v16 + 8);
  v18[9] = *(v16 + 9);
  v18[10] = *(v16 + 10);
  v18[11] = *(v16 + 11);
  v18[12] = *(v16 + 12);
  v18[13] = *(v16 + 13);
  v18[14] = *(v16 + 14);
  memset(v16, 70, 15);
  v16[2] = 0;
  return (*(v15 + 8 * (v17 - 8241)))(v23, 0);
}

uint64_t sub_1000DEE20@<X0>(int a1@<W8>)
{
  v4 = *(v3 + 8 * (a1 - 16845));
  *&STACK[0x3F0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x380] = vdupq_n_s64(v1);
  *&STACK[0x390] = vdupq_n_s64(0x38uLL);
  *&STACK[0x360] = vdupq_n_s64(0xD1E7441CE917FE4uLL);
  *&STACK[0x370] = vdupq_n_s64(v2);
  *&STACK[0x340] = vdupq_n_s64(0x92353D6AC8D0D017);
  *&STACK[0x350] = vdupq_n_s64(0x868F3A20E748BFF2);
  *&STACK[0x320] = vdupq_n_s64(0xECEA91274A13D34FLL);
  *&STACK[0x330] = vdupq_n_s64(0x3A3B17C9CA60EAEBuLL);
  *&STACK[0x2A0] = vdupq_n_s64(0x13156ED8B5EC2CB0uLL);
  *&STACK[0x300] = vdupq_n_s64(0x6C355A9D52782B4BuLL);
  *&STACK[0x310] = vdupq_n_s64(0x6BACAB07417998CEuLL);
  *&STACK[0x2E0] = vdupq_n_s64(0xBE31DC8D9D2AB20BLL);
  *&STACK[0x2F0] = vdupq_n_s64(0x839C46E4C5AA9BE8);
  LODWORD(STACK[0x270]) = STACK[0x2B8] - 21009;
  *&STACK[0x2C0] = vdupq_n_s64(0x4918F237AA4C9658uLL);
  *&STACK[0x2D0] = xmmword_100F52420;
  return v4();
}

uint64_t sub_1000DF00C()
{
  v4 = *(v3 + 8 * ((((v0 + 3250) | 0x4010) ^ 0x6472) + v0));
  *&STACK[0x430] = vdupq_n_s64(0x82B08017BF43C069);
  *&STACK[0x410] = vdupq_n_s64(0xAA9DDABAE2E4D47CLL);
  *&STACK[0x440] = vdupq_n_s64(0x8FB22143FEDB6CB3);
  *&STACK[0x420] = xmmword_100BC76B0;
  STACK[0x370] = STACK[0xAD0];
  *&STACK[0x3A0] = vdupq_n_s64(0x2C378843F9A46E98uLL);
  *&STACK[0x3B0] = vdupq_n_s64(v1);
  *&STACK[0x280] = vdupq_n_s64(0x14BA074A2F986FE5uLL);
  *&STACK[0x290] = vdupq_n_s64(0x9B1C7427651E0F18);
  *&STACK[0x450] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x3E0] = vdupq_n_s64(0x74603D45776A7070uLL);
  *&STACK[0x3F0] = vdupq_n_s64(0x38uLL);
  *&STACK[0x3C0] = vdupq_n_s64(0x8CBDDB5974B2BBFDLL);
  *&STACK[0x3D0] = vdupq_n_s64(0x734224A68B4D4402uLL);
  *&STACK[0x380] = vdupq_n_s64(v2);
  *&STACK[0x390] = vdupq_n_s64(0xC0EB6A89F056DC7ELL);
  return v4();
}

uint64_t sub_1000DF170()
{
  v2 = *(v1 + 8 * (v0 + 1413));
  STACK[0x3A0] = *(&off_1010A0B50 + (v0 ^ 0x21E7)) - 119249659;
  LODWORD(STACK[0x3B0]) = 2058855542;
  LODWORD(STACK[0x398]) = 1;
  return v2();
}

uint64_t sub_1000DF224()
{
  v4 = v0 - 1694340182 < v3 - 1571893626;
  if (v0 - 1694340182 < 575590022 != v3 > ((v1 - 723107491) & 0x2B19BEEF ^ 0xDDB11592))
  {
    v4 = v3 > ((v1 - 723107491) & 0x2B19BEEF ^ 0xDDB11592);
  }

  return (*(v2 + 8 * ((v4 * ((v1 - 878537280) & 0x345D7DF1 ^ 0x45D1)) ^ v1)))();
}

void sub_1000DF2FC(uint64_t a1)
{
  v1 = *(a1 + 8) + 1012831759 * (((a1 | 0xB3CC5CE) - a1 + (a1 & 0xF4C33A31)) ^ 0x1BAFD344);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000DF460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *(v22 - 144) = v21 + 17902189 * (v19 ^ 0x8E4F1610) + 2894;
  *(v18 + 4728) = v18;
  *(v18 + 4744) = a18;
  v23 = (*(v20 + 8 * (v21 ^ 0x441F)))(v22 - 152);
  return (*(v20 + 8 * v21))(v23);
}

uint64_t sub_1000DF50C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  v52 = LODWORD(STACK[0x308])++;
  *(a48 - 775311879) = v52 + 1;
  v53 = *(a50 - 586084794);
  *(v51 - 100) = (a1 + 290046534) ^ (906386353 * a37);
  *(v51 - 144) = (a1 + 290046549) ^ (906386353 * a37);
  *(v51 - 128) = 906386353 * a37 + 1;
  *(v51 - 136) = v53 - 906386353 * a37;
  *(v51 - 120) = (906386353 * a37) ^ 0x13FF;
  *(v51 - 108) = ((a1 + 290046549) ^ 0x1340) + 906386353 * a37;
  *(v51 - 104) = 906386353 * a37 + a1 + 800693893;
  v54 = (*(v50 + 8 * (a1 ^ 0x9BC7)))(v51 - 144);
  return (*(v50 + 8 * *(v51 - 112)))(v54);
}

uint64_t sub_1000DF62C@<X0>(uint64_t a1@<X1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  *(v23 + v24) = *(v25 + v24) ^ *(&a23 + v24) ^ 0x5F;
  v27 = v24 - 29721656;
  v28 = v24 + 1836519902 < v26;
  if (v26 < 0x6D7711DD != v27 + (a2 ^ 0x1C59384u) > 0xFFFFFFFF9288EE22)
  {
    v28 = v26 < 0x6D7711DD;
  }

  return (*(a1 + 8 * ((112 * v28) ^ a2)))();
}

void sub_1000DF714(uint64_t a1)
{
  v1 = *(a1 + 12) + 193924789 * (((a1 | 0xCB7333A) - a1 + (a1 & 0xF348CCC5)) ^ 0xBA0C015C);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000DF890(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v9 = *(v4 + v3 + v8) ^ v6;
  v10 = ((*(v4 + v3 - 1112483336) << 24) | ((*(v4 + v3 - 1112483337) ^ v6) << 16) | v9 | ((*(v4 + v3 - 1112483338) ^ v6) << 8)) ^ 0x5F000000;
  v11 = v10 - 2 * (v10 & 0x69D5C715 ^ v9 & 4);
  v12 = (2 * (v4 & 0x75)) & 0xDF ^ v4 & 0x75 ^ ((2 * (v4 & 0x75)) | 0x20812300) & (v4 ^ 0x9D75EA2E);
  v13 = (2 * (v4 ^ 0x9D75EA2E)) & 0x4410DA ^ 0x441049 ^ ((2 * (v4 ^ 0x9D75EA2E)) ^ 0x610B44B6) & (v4 ^ 0x9D75EA2E);
  v14 = (4 * v12) & 0x403D8 ^ v12 ^ ((4 * v12) ^ 0x20812300) & v13;
  v15 = ((4 * v13) ^ 0xA395EC6C) & v13 ^ (4 * v13) & 0x20C533D8;
  v16 = v15 ^ 0x20C13093;
  v17 = (v15 ^ 0x40343) & (16 * v14) ^ v14;
  v18 = ((16 * v16) ^ 0xC533DB0) & v16 ^ (16 * v16) & 0x20C533D0;
  v19 = v17 ^ 0x20C533DB ^ (v18 ^ 0x41314B) & (v17 << 8);
  *(v7 + 4 * (((v4 ^ (2 * ((v19 << 16) & 0x20C50000 ^ v19 ^ ((v19 << 16) ^ 0x33DB0000) & (((v18 ^ 0x2084024B) << 8) & 0x20C50000 ^ 0x20C40000 ^ (((v18 ^ 0x2084024B) << 8) ^ 0x45330000) & (v18 ^ 0x2084024B))))) >> 2) ^ 0x2F6E2F90)) = v11 - 371865839;
  return (*(v5 + 8 * ((357 * ((v4 - 1112483335) < 0x40)) ^ a3)))();
}

uint64_t sub_1000DFC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v16 = v13 + 1600775450 < a13 + 931093243;
  if ((a13 + 931093243) < 0x5F69E51A != v13 > 0xA0961AE5)
  {
    v16 = (a13 + 931093243) < 0x5F69E51A;
  }

  return (*(v15 + 8 * ((!v16 * ((v14 + 11555) ^ 0xA49A)) ^ v14)))();
}

uint64_t sub_1000DFD5C(double a1, __n128 a2)
{
  a2.n128_u16[0] = -3085;
  a2.n128_u8[2] = -13;
  a2.n128_u8[3] = -13;
  a2.n128_u8[4] = -13;
  a2.n128_u8[5] = -13;
  a2.n128_u8[6] = -13;
  a2.n128_u8[7] = -13;
  return (*(v3 + 8 * v2))(xmmword_100F523B0, a2);
}

void sub_1000DFF90(_DWORD *a1)
{
  v1 = *a1 + 906386353 * ((~a1 & 0xA524BD47 | a1 & 0x5ADB42B8) ^ 0x94257063);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000E0064@<X0>(int a1@<W8>)
{
  v2 = STACK[0x860];
  STACK[0x7C0] = STACK[0x860];
  return (*(v1 + 8 * (((v2 != 0) * (3463 * (a1 ^ 0x1F1D) - 24199)) ^ a1)))();
}

uint64_t sub_1000E00A8(uint64_t a1, uint64_t a2)
{
  v6 = v5 + 4 * a2;
  *(v6 + v3) = (v2 + 1408203836) & 0xAC107FFD ^ __ROR4__(*(v6 - 0x1093C984CLL) ^ *(v6 - 0x1093C9838) ^ *(v6 - 0x1093C9864) ^ *(v6 - 0x1093C986CLL), 31) ^ 0xE9D588EC;
  return (*(v4 + 8 * ((59778 * (a2 == 1112483418)) ^ v2)))();
}

uint64_t sub_1000E02B0(uint64_t result)
{
  v1 = 1022166737 * (((result | 0x777CA10986D96257) - (result | 0x88835EF679269DA8) - 0x777CA10986D96258) ^ 0x9F6D3743CC983C5);
  v2 = *result - v1;
  v3 = *(result + 24) ^ v1;
  v4 = v2 == v3;
  v5 = v2 >= v3;
  v6 = !v4;
  if (((*(result + 8) + 1022166737 * (((result | 0x86D96257) - (result | 0x79269DA8) + 2032573864) ^ 0x3CC983C5)) & 1) == 0)
  {
    v5 = v6;
  }

  if (v5)
  {
    v7 = *(result + 20) + 1022166737 * (((result | 0x86D96257) - (result | 0x79269DA8) + 2032573864) ^ 0x3CC983C5);
  }

  else
  {
    v7 = *(result + 16) - 1022166737 * (((result | 0x86D96257) - (result | 0x79269DA8) + 2032573864) ^ 0x3CC983C5);
  }

  *(result + 32) = v7 ^ (*(result + 36) - 1022166737 * (((result | 0x86D96257) - (result | 0x79269DA8) + 2032573864) ^ 0x3CC983C5));
  return result;
}

void sub_1000E037C(id a1)
{
  v1 = *(&off_1010A0B50 + ((91 * (dword_1010BDDA0 ^ qword_1010BEAD8 ^ 0x76)) ^ byte_101032440[byte_100F52120[(91 * (dword_1010BDDA0 ^ qword_1010BEAD8 ^ 0x76))] ^ 0x37]) + 937);
  v2 = *(v1 - 347505626);
  v3 = *(&off_1010A0B50 + (byte_100F52020[byte_100E9BEE0[(91 * ((qword_1010BEAD8 - v2) ^ 0x76))] ^ 0x50] ^ (91 * ((qword_1010BEAD8 - v2) ^ 0x76))) + 775);
  v4 = v2 ^ &v9 ^ *(v3 - 513219118);
  *(v1 - 347505626) = (952459099 * v4) ^ 0xFE584BA7F0179476;
  *(v3 - 513219118) = 952459099 * (v4 ^ 0xFE584BA7F0179476);
  v7 = 0;
  v8 = 4;
  LODWORD(v1) = *(v1 - 347505626);
  LOBYTE(v3) = 91 * (v1 ^ 0x76 ^ *(v3 - 513219118));
  v5 = *(&off_1010A0B50 + ((91 * (dword_1010BDDA0 ^ qword_1010BEAD8 ^ 0x76)) ^ byte_100E9BFE0[byte_100D70240[(91 * (dword_1010BDDA0 ^ qword_1010BEAD8 ^ 0x76))] ^ 0xC5]) + 955) - 810145054;
  v6 = *&v5[8 * ((19 * ((*&v5[8 * (v3 ^ byte_100F52020[byte_100E9BEE0[v3] ^ 0x2B]) + 416512])(*(&off_1010A0B50 + (byte_100E9BFE0[byte_100D70240[(91 * ((qword_1010BEAD8 - v1) ^ 0x76))] ^ 0xD0] ^ (91 * ((qword_1010BEAD8 - v1) ^ 0x76))) + 3975) - 542528082, &v7, &v8, 0, 0) == 0)) ^ 0x57AB)];
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000E082C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char a4@<W3>, int a5@<W4>, unsigned int a6@<W8>)
{
  v13 = *(*(v6 + 16 * v12 + 8) + 360);
  v14 = (((v13 ^ 0xE481FFE936C5230BLL) + 0x1B7E0016C93ADCF5) ^ ((v13 ^ v7) + v8) ^ ((v13 ^ a1) + a2)) + v11 - *(v9 + 32);
  v15 = ((a6 ^ a3 ^ (a6 + 1712417396) & 0x3543FB63) << ((a6 + 67) ^ a4)) + a6;
  LODWORD(v14) = (((v14 - v15) | (v15 - v14)) & 0x8000000000000000) == 0;
  return (*(v10 + 8 * (v14 | (8 * v14) | (a6 + a5))))();
}

void sub_1000E08EC(uint64_t a1)
{
  v1 = *(a1 + 16) - 1603510583 * ((2 * (a1 & 0x97DBE844) - a1 + 1747195835) ^ 0xFFFF2510);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_1000E0A28()
{
  v2 = *(v1 + 8 * (v0 - 728 + ((v0 + 8515) | 0x42C)));
  v3 = LODWORD(STACK[0x75C]);
  v4 = LODWORD(STACK[0x740]);
  LODWORD(STACK[0x3E0]) = STACK[0x738];
  v5 = STACK[0x3EC];
  LODWORD(STACK[0x3DC]) = LODWORD(STACK[0x3EC]) + 34205;
  v6 = 22828 * (v5 ^ 0x25EE);
  v7 = (v5 - 9578) | 0x1948;
  LODWORD(STACK[0x3D0]) = v5 + 16930;
  LODWORD(STACK[0x3A0]) = v7;
  LODWORD(STACK[0x3A8]) = v6;
  LODWORD(STACK[0x3C8]) = (v7 - 371893375) ^ v6;
  LODWORD(STACK[0x3C0]) = v5 - 553861617;
  LODWORD(STACK[0x3B8]) = v5 + 4680;
  LODWORD(STACK[0x3B0]) = v5 + 17335;
  return v2(2304524, 2147746667, 785457894, 3009206570, 609618784, 25787, v3, v4);
}

uint64_t sub_1000E0E28@<X0>(int a1@<W8>)
{
  v4 = v1 - 301964175 + (((*(v3 + 16) ^ 0x77C9DF7D) - 2009718653) ^ ((*(v3 + 16) ^ 0x8161F18B) + 2124287605) ^ ((((a1 ^ 0xCC15) + 528294345) ^ *(v3 + 16)) - 528345575));
  v5 = (v4 ^ 0x946EBC5F) & (2 * (v4 & 0x8468B91F)) ^ v4 & 0x8468B91F;
  v6 = ((2 * (v4 ^ 0x94FEDC63)) ^ 0x212CCAF8) & (v4 ^ 0x94FEDC63) ^ (2 * (v4 ^ 0x94FEDC63)) & 0x1096657C;
  v7 = v6 ^ 0x10922504;
  v8 = (v6 ^ 0x44078) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0x425995F0) & v7 ^ (4 * v7) & 0x10966578;
  v10 = (v9 ^ 0x100570) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x1086600C)) ^ 0x96657C0) & (v9 ^ 0x1086600C) ^ (16 * (v9 ^ 0x1086600C)) & 0x10966540;
  v12 = v10 ^ 0x1096657C ^ (v11 ^ 0x64500) & (v10 << 8);
  LODWORD(STACK[0x3EC]) = v4 ^ (2 * ((v12 << 16) & 0x10960000 ^ v12 ^ ((v12 << 16) ^ 0x657C0000) & (((v11 ^ 0x1090203C) << 8) & 0x10960000 ^ 0x920000 ^ (((v11 ^ 0x1090203C) << 8) ^ 0x16650000) & (v11 ^ 0x1090203C)))) ^ 0x4CB9B4F6;
  return (*(v2 + 8 * ((15775 * ((a1 ^ 0x4C1440EFu) < 0x3B9D8A11)) ^ (a1 + 4220))))();
}

uint64_t sub_1000E10C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  HIDWORD(v73) = v71;
  LODWORD(v73) = v71;
  v74 = ((v73 >> 17) & 0x3ED35CC4 ^ 0x3F3D87F8 ^ (HIDWORD(a58) ^ 0xBF8653A0) & ((v73 >> 17) ^ 0xAEFEE4CE)) & (v68 ^ 0xF1AB31C) ^ v68 & 0x11EFC33C;
  v75 = (v74 ^ 0xFEF57CE3) & (HIDWORD(a50) & (((v70 - 3005) ^ 0xDB5A) - 1112574684) ^ 0x9FEF7159 ^ (HIDWORD(a50) ^ 0xFEEC9A0C) & ((((v70 - 3005) | 0x2CD) - 1044577347) ^ v69 ^ a61)) ^ v74 & 0x234F7155;
  return (*(v72 + 8 * ((120 * (a68 - 2059851170 > 0xFFFFFFCB)) ^ v70)))((v75 ^ 0xDDBA8FBE) & (a67 ^ 0x97C13674) ^ v75 & 0x7DAFE9D5, a68, 524179211, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a3, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_1000E122C()
{
  v4 = ((v3 + 96) ^ 0x3C) + ((2 * (v3 + 96)) & 0x70);
  *(v3 - 160) = 0;
  v5 = ((v4 - 40) ^ 0x48 ^ (33 * (v1 ^ 0x9A))) & (2 * ((v4 - 40) & 0xEC)) ^ (v4 - 40) & 0xEC;
  v6 = ((2 * ((v4 - 40) ^ 0x65)) ^ 0x12) & ((v4 - 40) ^ 0x65);
  v7 = (v4 - 40) ^ (2 * (v6 & (4 * v6) & (16 * (v6 & (4 * v5) ^ v5)) ^ v6 & (4 * v5) ^ v5));
  *v0 = ((((v7 ^ 0x4E) + 61) ^ ((v7 ^ 0x46) + 53) ^ ((v7 ^ 0x5E) + 45)) - 98) * (v4 - 43) + 61 * v4 - 63;
  return (*(v2 + 8 * v1))();
}

void sub_1000E1378(int *a1@<X2>, int a2@<W8>)
{
  if (a2 == 1612586708)
  {
    v2 = -371865839;
  }

  else
  {
    v2 = 371891401;
  }

  *a1 = v2;
}

uint64_t sub_1000E1400()
{
  v8 = v1 - v7;
  v9 = ((v0 ^ 1) + v5) & 0xF;
  v10 = -v7 - v5;
  v12 = (v10 + 1 + v4 + v9) > 0xF && (v10 + 1 + v3 + v9) > 0xF && v8 >= ((v0 - 22702) | 0x98Au) - 19930;
  v13 = v10 + v2 + v9 + 4;
  v15 = v12 && v13 > 0xF;
  return (*(v6 + 8 * ((25 * v15) ^ v0)))(v8, v5);
}

void sub_1000E14D0(uint64_t a1)
{
  v1 = *(a1 + 20) ^ (634647737 * (((a1 | 0xF5C288FA) - (a1 & 0xF5C288FA)) ^ 0x9854A706));
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1000E1598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, int a14, char *a15, unsigned int a16)
{
  a15 = &a13;
  a16 = v17 + 906386353 * (((&a14 | 0x4B003E) - (&a14 & 0x4B0038)) ^ 0x314ACD1A) - 9167;
  v18 = (*(v16 + 8 * (v17 + 20762)))(&a14);
  return (*(v16 + 8 * v17))(v18);
}

void sub_1000E1694(uint64_t a1)
{
  v1 = *a1 + 17902189 * ((a1 - 2 * (a1 & 0x48D7296E) + 1222060398) ^ 0xC6983F7E);
  v2 = *(a1 + 24);
  v5 = 0;
  v3 = *(&off_1010A0B50 + v1 - 13336) - 810145054;
  v4 = *&v3[8 * ((((*&v3[8 * (v1 ^ 0xF38D)])(*(*(&off_1010A0B50 + (v1 ^ 0x318E)) - 448080602), v2, &v5) == 0) * (v1 + 4391)) ^ v1)];
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1000E19FC@<X0>(uint64_t a1@<X8>)
{
  STACK[0x6E0] = *(v5 + 8 * v1);
  STACK[0x740] = v3;
  STACK[0x7C8] = v4;
  STACK[0x9C0] = 0;
  return (*(v5 + 8 * ((2030 * (((a1 == 0) ^ (v2 + 27)) & 1)) ^ v2)))();
}

void sub_1000E1A8C(uint64_t a1)
{
  v1 = *(a1 + 16) + 634647737 * ((((2 * a1) | 0x8CFF0614) - a1 - 1182761738) ^ 0x2BE9ACF6);
  __asm { BRAA            X8, X17 }
}

void sub_1000E1C04()
{
  if (v0 == 1251670395)
  {
    v2 = -371865839;
  }

  else
  {
    v2 = 371891401;
  }

  *(v1 + 4) = v2;
}

uint64_t sub_1000E1E60@<X0>(int a1@<W7>, uint64_t a2@<X8>)
{
  v7 = *(v4 + v2 + (v3 + 67) - 328015251) ^ a1;
  v8 = ((*(v4 + v2 - 327984225) << 24) | ((*(v4 + v2 - 327984226) ^ a1) << 16) | v7 | ((*(v4 + v2 + v6) ^ a1) << 8)) ^ 0x5F000000;
  v9 = v8 - 2 * (v8 & 0x69D5C715 ^ v7 & 4);
  v10 = (2 * (v4 & 0x9C)) & 0xFF1F ^ v4 & 0x9C ^ ((2 * (v4 & 0x9C)) | 0x4D130400) & (v4 ^ 0x936C3CC6);
  v11 = (2 * (v4 ^ 0x936C3CC6)) & 0x2158 ^ 0x214A ^ ((2 * (v4 ^ 0x936C3CC6)) ^ 0xB32DCAB4) & (v4 ^ 0x936C3CC6);
  v12 = (4 * v10) & 0x340C0650 ^ v10 ^ ((4 * v10) ^ 0x4D130400) & v11;
  v13 = ((4 * v11) ^ 0xB16E9968) & v11 ^ (4 * v11) & 0x7F1F6758;
  v14 = v13 ^ 0x3026212;
  v15 = (v13 ^ 0x7C1D0542) & (16 * v12) ^ v12;
  v16 = ((16 * v14) ^ 0xF1F675A0) & v14 ^ (16 * v14) & 0x7F1F6740;
  v17 = v15 ^ 0x7F1F675A ^ (v16 ^ 0x7116655A) & (v15 << 8);
  *(a2 + 4 * (((v4 ^ (2 * ((v17 << 16) & 0xFF1FFFFF ^ v17 ^ ((v17 << 16) ^ 0x675A0000) & (((v16 ^ 0xE09025A) << 8) & 0x7F1F0000 ^ 0x60180000 ^ (((v16 ^ 0xE09025A) << 8) ^ 0x1F670000) & (v16 ^ 0xE09025A))))) >> 2) ^ 0x371E654A)) = v9 - 371865839;
  return (*(v5 + 8 * ((451 * ((v4 - 327984224) > 0x3F)) ^ v3)))();
}

uint64_t sub_1000E2078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15, int a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  v24 = 634647737 * ((2 * (&a13 & 0x1078ACB0C771CCC0) - &a13 - 0x1078ACB0C771CCC8) ^ 0x355CFCA055181CC4);
  v25 = v21 - 1911890139 - v24;
  a16 = v21 - 1911890139 + v24;
  a19 = v21 - v24 - 1230179057;
  a20 = v25 + 52;
  a13 = -634647737 * ((2 * (&a13 & 0x1078ACB0C771CCC0) - &a13 + 948843320) ^ 0x55181CC4);
  a14 = v25 - 4886;
  a17 = v24 ^ 0x5BB9;
  a18 = v22 - v24;
  v26 = (*(v20 + 8 * (v21 + 51947)))(&a13);
  return (*(v23 + 8 * a15))(v26);
}

uint64_t sub_1000E21A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v27 = (v26 ^ 0xDC74AC5E) & (2 * (v26 & 0xDC712D5F)) ^ v26 & 0xDC712D5F;
  v28 = (((v25 - 1534741217) & 0x5B7A3DFB) - 1863885009) & (2 * (v26 ^ 0x4C96A47C)) ^ ((2 * (v26 ^ 0x4C96A47C)) ^ 0x21CF1246) & (v26 ^ 0x4C96A47C);
  v29 = v28 ^ 0x90208921;
  v30 = (v28 ^ 0xC50000) & (4 * v27) ^ v27;
  v31 = ((4 * v29) ^ 0x439E248C) & v29 ^ (4 * v29) & 0x90E78920;
  v32 = (v31 ^ 0x860000) & (16 * v30) ^ v30;
  v33 = ((16 * (v31 ^ 0x90618923)) ^ 0xE789230) & (v31 ^ 0x90618923) ^ (16 * (v31 ^ 0x90618923)) & 0x90E78920;
  v34 = v32 ^ 0x90E78923 ^ (v33 ^ 0x608000) & (v32 << 8);
  v35 = v26 ^ (2 * ((v34 << 16) & 0x10E70000 ^ v34 ^ ((v34 << 16) ^ 0x9230000) & (((v33 ^ 0x90870903) << 8) & 0x10E70000 ^ 0x10660000 ^ (((v33 ^ 0x90870903) << 8) ^ 0x67890000) & (v33 ^ 0x90870903)))) ^ 0xFDF83F19;
  *(a22 + 4 * v23) = ((v24 % v35 * v22 % v35) ^ 0xAFBA769D) + 2144718848 + ((2 * (v24 % v35 * v22 % v35)) & 0x5F74ED3A);
  return (*(a5 + 8 * (v25 | (2 * (a6 != 797984413)))))(2349214557, 3152680832, 3875737774, a6, 3488454464, 1397882880);
}

uint64_t sub_1000E2410@<X0>(uint64_t a1@<X8>)
{
  if ((v1 - 1051086577) >= 0x7FFFFFFF)
  {
    v6 = v4 - v3;
  }

  else
  {
    v6 = v2;
  }

  *(a1 + 4) = v6;
  return (*(v5 + 8 * v4))();
}

uint64_t sub_1000E2440(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24, int a25, int a26, int a27, int a28, int a29, int a30, int a31, unsigned int a32, int a33, int a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, int a49, int a50, int a51, int a52, uint64_t a53, int a54)
{
  v59 = (a54 + v57 - 904741145) % a32;
  v60 = v57 - 136934243 + 4941 * (v54 ^ 0x7DE4);
  HIDWORD(v61) = *(a53 + v59);
  LODWORD(v61) = HIDWORD(v61);
  v62 = *(a53 + (v60 + a30) % a32);
  v63 = 8 * *(a53 + v60);
  *(&STACK[0x74C] + (a2 - 1011030720)) ^= a34 ^ (16 * (*(v55 + (a27 + a8 + 2061662231) % v56) - 4)) ^ 0x860CDD32 ^ (((v61 >> 5) ^ (((*(v55 + (a31 + a8 + 1854151413) % v56) - 4) ^ v62) << 24) ^ ((*(v55 + (a8 - 397087644 + a52) % v56) - 4) << 18) ^ 0x887B0169) & ~v63 | v63 & 0x690);
  v64 = (v59 ^ 0xAC7D1BF7) + ((2 * v59) & 0x58FA37EE);
  v65 = (((a8 - 397087644 + a48) % v56) ^ 0x97ABD7DF) + ((2 * ((a8 - 397087644 + a48) % v56)) & 0x2F57AFBE);
  v66 = ((2 * ((a50 + a2 + 1247605856) % 0x43u)) & 0xE0) + (((a50 + a2 + 1247605856) % 0x43u) ^ 0x7DC37BF0);
  v67 = v64 + 633255378 + a54;
  v64 += 1401086985;
  v68 = ((*(v55 + (a25 + v65 + 2147433405) % v56) << 24) - 0x4000000) ^ __ROR4__(*(a53 + v67 % a32), 7) ^ (*(a53 + (v64 + a23) % a32) << 19);
  v69 = 32 * *(a53 + v64);
  *(&STACK[0x74C] + v66 - 2109963248) ^= a33 ^ ((*(v55 + (a24 + v65 + 2147433405) % v56) - 4) << 11) ^ 0x2E7F8B22 ^ ((v68 ^ ((*(v55 + (v65 + 1750345761 + a52) % v56) - 4) << 13) ^ 0xF17F1C0E) & ~v69 | v69 & 0x3E0);
  return (*(v58 + 8 * v54))();
}

uint64_t sub_1000E28D0()
{
  v4 = (((v2 ^ 0x8C029CB8) + 1945985864) ^ ((v2 ^ 0xA66669D3) + 1503237677) ^ ((v2 ^ 0xC3B15FAE ^ (v3 - 17354)) + ((v3 + 1719214881) & 0x9986EBDF ^ 0x3C4E0D19))) + 1819741273;
  v5 = v4 < 0x82A14546;
  v6 = v4 > v0 + 1949417079;
  if ((v0 + 1949417079) < 0x82A14546 != v5)
  {
    v6 = v5;
  }

  return (*(v1 + 8 * ((59 * v6) ^ v3)))();
}

uint64_t sub_1000E2A9C@<X0>(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  a1[-1] = a2;
  *a1 = a2;
  return (*(v6 + 8 * (((v2 == v3) * v4) ^ v5)))();
}

uint64_t sub_1000E2BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17)
{
  v18 = *(STACK[0xA20] + 24);
  STACK[0xA98] = v18;
  return (*(v17 + 8 * (((v18 != 0) * (((a17 - 1712429752) & 0x6610F6DF ^ 0xFFFFB58F) + a17 - 23041)) ^ a17)))();
}

uint64_t sub_1000E2C50()
{
  v5 = *(v4 + 8 * (v2 - 20427));
  v6 = *(v5 - 972930378);
  LOBYTE(STACK[0xCE9]) = *v6 - 39;
  LOBYTE(STACK[0xCEA]) = v6[1] - 39;
  LOBYTE(STACK[0xCEB]) = v6[2] - 39;
  LOBYTE(STACK[0xCEC]) = v6[3] - 39;
  LOBYTE(STACK[0xCED]) = v6[4] - 39;
  LOBYTE(STACK[0xCEE]) = v6[5] - 39;
  LOBYTE(STACK[0xCEF]) = v6[6] - 39;
  LOBYTE(STACK[0xCF0]) = v6[7] - 39;
  LOBYTE(STACK[0xCF1]) = v6[8] - 39;
  LOBYTE(STACK[0xCF2]) = v6[9] - 39;
  LOBYTE(STACK[0xCF3]) = v6[10] - 39;
  LOBYTE(STACK[0xCF4]) = v6[11] - 39;
  LOBYTE(STACK[0xCF5]) = v6[12] - 39;
  LOBYTE(STACK[0xCF6]) = v6[13] - 39;
  LOBYTE(STACK[0xCF7]) = v6[14] - 39;
  LOBYTE(STACK[0xCF8]) = v6[15] - 39;
  LOBYTE(STACK[0xCF9]) = v6[16] - 39;
  LOBYTE(STACK[0xCFA]) = v6[17] - 39;
  LOBYTE(STACK[0xCFB]) = v6[18] - 39;
  LOBYTE(STACK[0xCFC]) = v6[19] - 39;
  v7 = *(v5 - 972930378);
  LOBYTE(STACK[0xCFD]) = v7[20] - 39;
  LOBYTE(STACK[0xCFE]) = v7[21] - 39;
  LOBYTE(STACK[0xCFF]) = v7[22] - 39;
  v8 = STACK[0x968];
  (*(v0 + 8 * (v2 + 27664)))(v1 + 136, v3 + 64, 32);
  v9 = (*(STACK[0x408] + 8 * (v2 + 27747)))(v3 + 64, &STACK[0xCE9], v8, 128) != 0;
  return (*(STACK[0x408] + 8 * ((58 * v9) ^ (v2 - 1370))))();
}

uint64_t sub_1000E2DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, uint64_t a8)
{
  v24 = v8 + v20;
  v25 = v8 - 1;
  v26 = STACK[0x440] + v25;
  v27 = __ROR8__(v26 & 0xFFFFFFFFFFFFFFF8, 8);
  v28 = ((v19 - v27) & v22) + v27 + v21 - ((v27 + v21) & ((a6 | a7) + a8));
  v29 = __ROR8__(v28 ^ 0x9EF04D4094E12469, 8);
  v28 ^= 0x2A7B1A8C13DD8867uLL;
  v30 = (((v29 + v28) | 0xE742090C29A63601) - ((v29 + v28) | a1) + a1) ^ 0xF3F80E46063E59E4;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8);
  v33 = __ROR8__((((v32 + v31) | 0xB3C14A7B76D5DAALL) - ((v32 + v31) | v16) + v16) ^ 0x270B9CE44EC93332, 8);
  v34 = (((v32 + v31) | 0xB3C14A7B76D5DAALL) - ((v32 + v31) | v16) + v16) ^ 0x270B9CE44EC93332 ^ __ROR8__(v31, 61);
  v35 = (((2 * (v33 + v34)) & 0xD62CF47B3332F3F0) - (v33 + v34) + 0x14E985C266668607) ^ 0xA994A82BA76C276DLL;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (((2 * ((v37 + v36) ^ 0x102EBE5226305265)) & 0x712D560FD0C41AEALL) - ((v37 + v36) ^ 0x102EBE5226305265) + 0x476954F8179DF28ALL) ^ 0xD5F76ABD8EEE6086;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ v10;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v40, 8);
  v43 = (((2 * ((v42 + v41) ^ 0x3045D639D5207DE6)) & 0x708F6554F739A898) - ((v42 + v41) ^ 0x3045D639D5207DE6) + a2) ^ a3;
  v44 = __ROR8__((v24 + 9) & 0xFFFFFFFFFFFFFFF8, 8);
  v45 = (v19 - v44) & v17 | (v44 + v18) & a4;
  v46 = __ROR8__(v43, 8) + (v43 ^ __ROR8__(v41, 61));
  v47 = v45 ^ v15;
  v48 = v45 ^ v13;
  v49 = (__ROR8__(v47, 8) + v48) ^ v12;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = __ROR8__(v49, 8);
  v52 = (((2 * (v51 + v50)) | 0x59E94684D11B0290) - (v51 + v50) + 0x530B5CBD97727EB8) ^ 0x80C32B019129EFD0 ^ __ROR8__(v50, 61);
  v53 = (__ROR8__((((2 * (v51 + v50)) | 0x59E94684D11B0290) - (v51 + v50) + 0x530B5CBD97727EB8) ^ 0x80C32B019129EFD0, 8) + v52) ^ v23;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ v9;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ v10;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ v11;
  *(v24 + 9) = ((v46 ^ v14) >> (8 * (v26 & 7u))) ^ (((__ROR8__(v59, 8) + (v59 ^ __ROR8__(v58, 61))) ^ v14) >> (8 * ((v24 + 9) & 7))) ^ *v26;
  return (*(STACK[0x408] + 8 * (((2 * (v25 != 0)) | (8 * (v25 != 0))) ^ a5)))();
}

uint64_t sub_1000E3114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v26 = *(v25 + 8 * v22);
  STACK[0x3B0] = v23 & 0xFFFFFFF8;
  STACK[0x420] = v20 - (v23 & 0xFFFFFFF8) + 8;
  v27 = a1 + a20 + v21 + v23 - v20;
  STACK[0x410] = v27 - 559634075;
  STACK[0x3C0] = v23;
  STACK[0x3F0] = v27 - 559634074;
  STACK[0x3E0] = v27 - 559634073;
  STACK[0x3D0] = v27 - 559641508;
  return v26(v24, v27 - 559634068, a3, a2 + v23 - v20 - 7441);
}

uint64_t sub_1000E3454(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, unsigned int a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40)
{
  v45 = v43 + v44 - 1074683658;
  v46 = (v45 ^ 0x8178D0C1) + 1881598954;
  v47 = (v45 ^ 0xFFFFFF5B) + 245482612;
  v48 = ((a4 ^ 0xB86CAD8F) + 1745032430) ^ ((a4 ^ 0xD60EF25E) + 107039549);
  v49 = ((a4 ^ 0xBF09A6B3) + 1868963794) ^ a4 ^ v48 ^ ((a4 ^ 0xFEFBBFFF) + 781452958) ^ v45 ^ ((v45 ^ 0x8AFD6F7F) + 2074301528) ^ v46 ^ v47 ^ ((v45 ^ (v40 - 35688450) & 0x37B9DB5B ^ 0xCF424F2A) + 193314587);
  v50 = *(a2 + 4 * v41);
  v51 = ((v49 ^ 0x80706772) - 1196512880) ^ ((v49 ^ 0x5BAB1E0D) + 1668665585) ^ ((v49 ^ 0xFAEAFB35) - 1036765751);
  v52 = v51 - 435113144;
  v53 = a40 - v42 - 1457941354 * v51 + v52 * (v50 + 659956941);
  v54 = *(a37 + 8 * ((119 * (((((-24 - v53) ^ (v53 + 32)) ^ (((v53 + 126) ^ 3) + 3)) & 7) != 1)) ^ v40));
  return v54(a1, v54, (493719528 - v53), v52, v46, v47, v48, a31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1000E364C(unsigned int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, char a7)
{
  v11 = (v8 ^ a1) + v9 + a2;
  *(a3 + v11) = (v7 ^ a7) * (v7 + 17);
  return (*(v10 + 8 * (((v11 == 0) * a4) ^ v8)))();
}

uint64_t sub_1000E3684(uint64_t a1, int a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0x340]) = v4;
  LODWORD(STACK[0x264]) = a4;
  return (*(v5 + 8 * ((((a2 ^ 0xA185) + 41594) * (a4 == -371865839)) ^ (a2 - 36915))))();
}

uint64_t sub_1000E3778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  v51 = *(a1 + 32);
  v52 = *(a1 + 40);
  v53 = v50 - 20704;
  if (STACK[0x2A0])
  {
    v54 = a3 == 0;
  }

  else
  {
    v54 = 1;
  }

  STACK[0x298] = v52;
  v57 = v54 || v52 == 0 || v51 == 0;
  LODWORD(STACK[0x2AC]) = v53;
  v58 = *(a2 + 8 * ((v57 * ((v50 - 20698) ^ v53)) | v50));
  LODWORD(STACK[0x2B0]) = -42900;
  return v58(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50);
}

uint64_t sub_1000E37D0()
{
  *v0 = v2;
  v0[1] = v2;
  return (*(v3 + 8 * v1))();
}

uint64_t sub_1000E3928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a8 + 8 * ((3588 * (v8 == ((v9 - 2123876516) ^ 0x73E534B) + ((v9 - 2123876516) | 0x22019008))) ^ v9));
  LODWORD(STACK[0x290]) = 371891407;
  return v10(a1, a7);
}

uint64_t sub_1000E398C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + (v4 - 1625742781)) = *(v5 + (v4 - 1625742781));
  v8 = (v4 - 78102238) > 0x5C3F1EDD && v4 - 78102238 < v1;
  return (*(v6 + 8 * ((v8 * v3) ^ v2)))();
}

uint64_t sub_1000E39F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  LODWORD(STACK[0x250]) = a3;
  v66 = v61 + a61 - 0x41FBE87C297FEA44;
  STACK[0x3E0] = v66;
  STACK[0x6F0] = v66;
  STACK[0x680] = v61 + 32;
  STACK[0x11C4] = 0x93D42BC9035F263;
  LODWORD(STACK[0x57C]) = *(*(v64 + 8 * (v62 ^ 0x2FB3)) - 775311879);
  v67 = *(v64 + 8 * (v62 ^ 0x241A));
  STACK[0x240] = v67;
  v68 = *(v67 - 586084794);
  *(v65 - 228) = v62 - 1452720503 + a60;
  *(v65 - 224) = a60;
  *(v65 - 216) = v68 - a60;
  *(v65 - 240) = -a60;
  *(v65 - 236) = v62 - 1452720503 - a60 + 4634;
  *(v65 - 208) = v62 - a60 - 1230188764;
  *(v65 - 204) = ((v62 - 1452720503) ^ 0xB) - a60;
  v69 = (*(v63 + 8 * (v62 ^ 0xEF00)))(v65 - 240);
  return (*(v63 + 8 * *(v65 - 232)))(v69);
}

uint64_t sub_1000E3BEC()
{
  v2 = (*(v1 + 8 * (v0 + 45875)))();
  v3 = STACK[0x408];
  STACK[0x638] = 0;
  return (*(v3 + 8 * v0))(v2);
}

uint64_t sub_1000E3C2C@<X0>(int a1@<W2>, uint64_t a2@<X8>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  a3.n128_u16[0] = 23387;
  a3.n128_u8[2] = 91;
  a3.n128_u8[3] = 91;
  a3.n128_u8[4] = 91;
  a3.n128_u8[5] = 91;
  a3.n128_u8[6] = 91;
  a3.n128_u8[7] = 91;
  a4.n128_u16[0] = 24415;
  a4.n128_u8[2] = 95;
  a4.n128_u8[3] = 95;
  a4.n128_u8[4] = 95;
  a4.n128_u8[5] = 95;
  a4.n128_u8[6] = 95;
  a4.n128_u8[7] = 95;
  return (*(v5 + 8 * (a1 - 8089)))(v4 & 0x18, 8 - (v4 & 0x18), (a1 + 15665), v4 + a2 - 8, 35176, xmmword_100F523B0, a3, a4);
}

uint64_t sub_1000E3C94()
{
  v4 = ((v3 + 10636) ^ 0xCC7FF57) + v1 + (((v2 ^ 0x88D5E1E8) + 1999248920) ^ ((v2 ^ 0xAD3D99D1) + 1388471855) ^ ((v2 ^ 0xCC3DBF28) + 868368600));
  v5 = ((v4 ^ 0xD9419F28) + 72292557) ^ v4 ^ ((v4 ^ 0x7CAF3DB2) - 1583236521) ^ ((v4 ^ 0x72E1257E) - 1343249765) ^ ((v4 ^ 0xF5FEFFFF) + 686848028);
  v6 = (((v5 ^ 0x4D432D30) + 2040032710) ^ ((v5 ^ 0xD9BBFC01) - 312427275) ^ ((v5 ^ 0xB609A92A) - 2100106784)) + 382658102;
  v7 = (v1 > 0xD306E0DA) ^ (v6 < 0x2CF91F25);
  v8 = v1 + 754523941 > v6;
  if (v7)
  {
    v8 = v1 > 0xD306E0DA;
  }

  return (*(v0 + 8 * ((500 * v8) ^ v3)))();
}

uint64_t sub_1000E3E20()
{
  v3 = (v1 - 1381859379) & 0x525DF7BE;
  v5 = ((v0 - 1) & 0xFu) < ((v0 - 1) & 0xFu) || v0 - 1 > (v3 ^ 0x289Fu) - 24316;
  return (*(v2 + 8 * ((v5 * ((v3 + 2007598905) & 0x8856C973 ^ 0xC87D)) ^ v3)))();
}

uint64_t sub_1000E3E9C@<X0>(int a1@<W8>, __n128 a2@<Q0>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v34.n128_u64[0] = (v32 + 13) & 0xF;
  v34.n128_u64[1] = (v32 + 12) & 0xF;
  v35.n128_u64[0] = (v32 + 11) & 0xF;
  v35.n128_u64[1] = (v32 + 10) & 0xF;
  v36.n128_u64[0] = (v32 + 9) & 0xF;
  v36.n128_u64[1] = v32 & 0xF ^ 8;
  v39.val[0].i64[0] = (((a1 - 58) ^ 4) + v32) & 0xF;
  v39.val[0].i64[1] = (v32 + 6) & 0xF;
  v39.val[1].i64[0] = (v32 + 5) & 0xF;
  v39.val[1].i64[1] = (v32 + 4) & 0xF;
  v39.val[2].i64[0] = (v32 + 3) & 0xF;
  v39.val[2].i64[1] = (v32 + 2) & 0xF;
  v39.val[3].i64[0] = (v32 + 1) & 0xF;
  v39.val[3].i64[1] = v32 & 0xF;
  v37.n128_u64[0] = 0x2727272727272727;
  v37.n128_u64[1] = 0x2727272727272727;
  return (*(a32 + 8 * a1))((v32 + 14) & 0xF, (a1 - 7073), v32 + v33 - 16, (a1 - 7072), a2, v34, v35, v36, xmmword_100BC76B0, vqtbl4q_s8(v39, xmmword_100BC76B0), v37);
}

uint64_t sub_1000E4040@<X0>(int a1@<W2>, unsigned int a2@<W3>, uint64_t a3@<X8>)
{
  v8 = (a1 - 772879203);
  v9 = *(*(STACK[0x390] - 1680276466) + (*(STACK[0x388] - 231415367) & 0x4507492C)) + a3 + v8;
  *(a3 + v8) = ((a3 + a1 - 99) * v7) ^ (((((v4 ^ a2) >> v3) - (((v4 ^ a2) >> v3 << (v5 ^ 0xB0)) & ((v5 - 28) ^ 0x3B)) + 119) ^ 6) - 32) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + ((v9 + 1158105388) & (qword_1010C0540 ^ 0x7226FCCC))) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + ((v9 + 1158105390) & (qword_1010C0540 ^ 0x7226FCCC))) ^ 0x30;
  return (*(v6 + 8 * ((117 * (a1 - (*(STACK[0x3F8] + v8) != 0) == 772879202)) ^ v5)))();
}

uint64_t sub_1000E4214()
{
  v7 = v5 + v3;
  v8 = (v3 - 1) & 0xF;
  v9 = v8 - v3 + 1;
  v10 = v0 + v9;
  v11 = v8 - 28326 + ((v4 - 1360126735) & 0x5111EFF7);
  v12 = v0 + v11;
  v13 = v1 + v9;
  v14 = v1 + v11;
  v15 = v2 + v9;
  v16 = v2 + v11;
  v18 = v10 < v5 + v3 && v12 > v5;
  if (v13 < v7 && v14 > v5)
  {
    v18 = 1;
  }

  v21 = v15 < v7 && v16 > v5 || v18;
  return (*(v6 + 8 * ((104 * v21) ^ v4)))();
}

uint64_t sub_1000E42A4@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  *(v2 - 1) = v5;
  *v2 = v5;
  return (*(v4 + 8 * (((a2 == 0) * v3) ^ a1)))();
}

uint64_t sub_1000E4364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int8x16_t a6, int8x8_t a7, int8x8_t a8)
{
  v14 = v11 + a2 + 8;
  v16.val[0].i64[0] = (v14 + a4) & 0xF;
  v16.val[0].i64[1] = (v11 + a2 + 22) & 0xF;
  v16.val[1].i64[0] = (v11 + a2 + 21) & 0xF;
  v16.val[1].i64[1] = (v11 + a2 + 20) & 0xF;
  v16.val[2].i64[0] = (v11 + a2 + 19) & 0xF;
  v16.val[2].i64[1] = (v11 + a2 + 18) & 0xF;
  v16.val[3].i64[0] = (v11 + a2 + 17) & 0xF;
  v16.val[3].i64[1] = v14 & 0xF ^ 8;
  *(a3 + a2 + a4 + 1) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a3 + a2 + a4 + 1), *(v9 + v16.val[0].i64[0] - 7)), veor_s8(*(v16.val[0].i64[0] + v8 - 3), *(v16.val[0].i64[0] + v10 - 2)))), a8), vmul_s8(*&vqtbl4q_s8(v16, a6), a7)));
  return (*(v13 + 8 * (((a1 == a2) * a5) ^ v12)))();
}

uint64_t sub_1000E4438()
{
  v3 = v1 - 7000;
  (*(v2 + 8 * (v3 + 37498)))(v0);
  v4 = (*(v2 + 8 * (v3 ^ 0xF372)))(v0);
  return (*(v2 + 8 * v3))(v4);
}

uint64_t sub_1000E454C@<X0>(int a1@<W8>)
{
  v3 = (a1 - 1592409356) & 0x5EE9DFE2;
  STACK[0xA30] = v1;
  v4 = (*(v2 + 8 * (v3 + 27414)))(32);
  v5 = STACK[0x408];
  STACK[0x978] = v4;
  return (*(v5 + 8 * (((((-51 * (v3 ^ 0x89)) ^ (v4 == 0)) & 1) * ((v3 ^ 0x5F89) + 31)) ^ v3)))();
}

uint64_t sub_1000E4638@<X0>(int a1@<W8>)
{
  *(v1 + v4 + v5) = v6;
  v9 = v1 + v7 + (a1 | v2) < 0x38;
  return (*(v8 + 8 * (((8 * v9) | (16 * v9)) ^ v3)))();
}

uint64_t sub_1000E4670(int8x16_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, double a7, __n128 a8, __n128 a9, __n128 a10, int8x16_t a11, double a12, int8x16_t a13)
{
  v19 = a2 & 0xF;
  v20 = v17;
  v21.i64[0] = vqtbl4q_s8(*(&a8 - 1), a11).u64[0];
  *&v21.i64[1] = a12;
  v22 = vrev64q_s8(vmulq_s8(v21, a13));
  *a1 = veorq_s8(veorq_s8(veorq_s8(veorq_s8(*(v13 + v19 - 15), *a1), *(v19 + v14 - 10)), *(v15 + a5 + v19 - 15)), vextq_s8(v22, v22, 8uLL));
  return (*(v18 + 8 * (((a4 == 0) * a6) ^ v16)))(a1 - 1, a2 - 16, a3, a4 - 16);
}

uint64_t sub_1000E4708@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W8>)
{
  v20 = a2 - 1;
  v21 = (v4 + v3 + v20);
  v22 = ((v21 ^ *(*(v17 + v18) + (*(v16 + v15) & v7))) & 0x7FFFFFFF) * v8;
  v23 = (v22 ^ HIWORD(v22)) * v8;
  *(v11 + v20) = *v21 ^ *(v19 + (v23 >> (v5 & v6))) ^ *(v13 + (v23 >> (v5 & v6))) ^ *((v23 >> (v5 & v6)) + v12 + 5) ^ v23 ^ ((v23 >> (v5 & v6)) * v9) ^ v10;
  return (*(v14 + 8 * (((v20 == 0) * a1) ^ a3)))();
}

uint64_t sub_1000E48A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, unsigned int a12)
{
  a12 = v13 + 297845113 * ((2 * ((&a11 ^ 0x5682842B) & 0x5CE6E743) - (&a11 ^ 0x5682842B) + 588847292) ^ 0x2A88009) - 11938;
  v14 = (*(v12 + 8 * (v13 + 10532)))(&a11);
  return (*(v12 + 8 * (((a11 == 133) * (((v13 - 37726) ^ 0x9D04) + ((v13 - 37726) | 0xC9D) - 43200)) ^ v13)))(v14);
}

uint64_t sub_1000E49F0@<X0>(int a1@<W8>)
{
  *(v1 - 2110010024) = BYTE2(a1) ^ 0xAA;
  *(v1 - 2110010023) = HIBYTE(a1) ^ 0x4B;
  return (*(v4 + 8 * (v3 | (8 * (((v2 == 2110010038) ^ (v3 + 114)) & 1)))))();
}

uint64_t sub_1000E4F78(unint64_t a1)
{
  v4 = *(v3 + 144 * (v1 ^ 0x2D5D));
  STACK[0x210] = a1 - 16;
  STACK[0x270] = a1;
  STACK[0x220] = a1 - 8;
  *&STACK[0x3A0] = vdupq_n_s64(0x38uLL);
  *&STACK[0x3D0] = vdupq_n_s64(v2);
  *&STACK[0x3E0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x420] = vdupq_n_s64(0x1D3BCD708988B1A1uLL);
  *&STACK[0x430] = vdupq_n_s64(0x96E95066F186A7EuLL);
  *&STACK[0x410] = vdupq_n_s64(0xE2C4328F76774E5ELL);
  *&STACK[0x3B0] = vdupq_n_s64(0xE5E62B6C8A507A2CLL);
  *&STACK[0x3C0] = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  *&STACK[0x2C0] = xmmword_100BC76B0;
  *&STACK[0x2D0] = vdupq_n_s64(0xAA9DDABAE2E4D47CLL);
  *&STACK[0x200] = xmmword_100F523B0;
  *&STACK[0x350] = vdupq_n_s64(0x9B1C7427651E0F18);
  *&STACK[0x360] = vdupq_n_s64(0x8FB22143FEDB6CB3);
  *&STACK[0x330] = vdupq_n_s64(0xA94CBC24F60CB0CBLL);
  *&STACK[0x340] = vdupq_n_s64(0xAD6687B613E69E68);
  *&STACK[0x310] = vdupq_n_s64(0x2C378843F9A46E98uLL);
  *&STACK[0x320] = vdupq_n_s64(0xBDF6BB6ED994DF2ELL);
  *&STACK[0x2F0] = vdupq_n_s64(0x63EC2BFAC13B3147uLL);
  *&STACK[0x300] = vdupq_n_s64(0xBD7D2DE9C10AA16ALL);
  *&STACK[0x2E0] = vdupq_n_s64(0xE15CABED7E78F12ELL);
  return v4();
}

uint64_t sub_1000E51D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 1022166737 * ((2 * ((v7 - 168) & 0x5A50B658) - (v7 - 168) - 1515239003) ^ 0x1FBFA837);
  *(a3 + 432) = v4;
  *(v7 - 160) = v3 - v8;
  *(v7 - 156) = v8 - 15802 + v6;
  v9 = (*(v5 + 8 * (v6 + 4076)))(v7 - 168);
  v10 = *(v7 - 152);
  LODWORD(STACK[0x2A8]) = v10;
  return (*(v5 + 8 * (((v10 == (v6 ^ 0x1430) + 1497623847) * (v6 - 47833)) ^ v6)))(v9);
}

uint64_t sub_1000E52E4@<X0>(int a1@<W8>)
{
  v3 = v1 - 20614;
  v4 = *(STACK[0x210] + 32) + a1;
  v6 = v4 == -1309924169 || (v4 & 0xF) != ((10 * (v3 ^ 0x6EB3)) ^ 0x74F3);
  v7 = *(v2 + 8 * ((78 * v6) | v3));
  LODWORD(STACK[0x338]) = -42899;
  return v7();
}

uint64_t sub_1000E5348@<X0>(int a1@<W8>)
{
  *v1 = v2;
  v1[1] = v2;
  return (*(v3 + 8 * a1))();
}

uint64_t sub_1000E5374()
{
  v2 = v0 ^ 0x142D2;
  v3 = 3 * (v0 ^ 0x11426);
  v4 = (*(v1 + 8 * ((v0 ^ 0x142D2) + 29650)))(8) == 0;
  return (*(STACK[0x408] + 8 * (((((v3 ^ v4) & 1) == 0) * (((v2 + 1070692657) & 0xC02E3FBD) - 3529)) ^ v2)))();
}

uint64_t sub_1000E54A0@<X0>(_DWORD *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v18 = *(a14 + 4) ^ v14;
  STACK[0x30C] = 0x5F5F5F5F5F5F5F5FLL;
  *(v17 - 156) = 1600085855;
  *(v17 - 168) = HIBYTE(v18) ^ 0xC5;
  *(v17 - 167) = BYTE2(v18) ^ 0xE7;
  *(v17 - 166) = (((v15 + 58) & 0x95) - 83) ^ BYTE1(v18);
  *(v17 - 165) = v18 ^ 4;
  return (*(v16 + 8 * (((((*a1 ^ 0x1FB759E7) - 532109799) ^ ((*a1 ^ 0xA579C659) + 1518746023) ^ ((*a1 ^ 0x531B58AF) - 1394301103)) == 371865839) ^ v15)))(1);
}

uint64_t sub_1000E5754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v11 = *(v9 + v8 * a7 + 36);
  v13 = (v11 - 1729732895 > 733616925 || v11 - 1729732895 < SLODWORD(STACK[0x3D0])) && v11 != (v7 ^ 0x12D32731);
  return (*(v10 + 8 * ((98 * (((v7 - 32) ^ v13) & 1)) | v7)))();
}

uint64_t sub_1000E57C8@<X0>(char a1@<W0>, int a2@<W4>, uint64_t a3@<X8>, int8x16_t a4@<Q0>, int8x16_t a5@<Q1>, int8x16_t a6@<Q2>, int8x16_t a7@<Q3>, int8x16_t a8@<Q4>, int8x16_t a9@<Q5>, int8x16_t a10@<Q6>, int8x16_t a11@<Q7>)
{
  v27 = veorq_s8(a4, a5);
  v28 = vbslq_s8(vaddq_s64(a4, a4), a6, a4);
  v29 = vaddq_s64(v27, v27);
  v30 = veorq_s8(vandq_s8(veorq_s8(v29, a7), v27), vandq_s8(v29, a8));
  v31 = veorq_s8(v30, a9);
  v32 = veorq_s8(vandq_s8(veorq_s8(v30, a10), vshlq_n_s64(v28, 2uLL)), v28);
  v33 = vshlq_n_s64(v31, 2uLL);
  v34 = veorq_s8(vandq_s8(veorq_s8(veorq_s8(vandq_s8(v33, v17), v18), vandq_s8(veorq_s8(v33, a11), v31)), vshlq_n_s64(v32, 4uLL)), v32);
  v35 = veorq_s8(vaddq_s64(v34, v34), a4);
  v36 = vaddq_s64(a4, v19);
  v37 = vaddq_s64(veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v35, v20), v21), vaddq_s64(veorq_s8(v35, v22), v23)), vaddq_s64(veorq_s8(v35, v24), v25)), v26);
  v38 = v16 - a3;
  *(v38 + 13) = v37.i8[0] * v36.i8[0] - (v37.i8[0] * v14 + v36.i8[0] * v13) + 8 * (v37.i8[0] * v14 + v36.i8[0] * v13) - 11;
  *(v38 + 12) = v37.i8[8] * v36.i8[8] - ((((a2 + v11) | v12) + a1) * v36.i8[8] + v37.i8[8] * v14) + 8 * ((((a2 + v11) | v12) + a1) * v36.i8[8] + v37.i8[8] * v14) - 11;
  return (*(v15 + 8 * a2))();
}

uint64_t sub_1000E5CD4(uint64_t a1, unint64_t a2, uint64_t a3, char a4, char a5, char a6, char a7, char a8)
{
  v21 = v12 + v18;
  v22 = v12 - 1;
  *(v20 - 176) = v22;
  *(v8 + v22) = (v13 ^ ((v13 ^ a4) + a5) ^ ((v13 ^ a6) + a7) ^ ((v13 ^ a8) + v15) ^ ((v16 ^ v13) - 107) ^ v17) * (v13 - 127);
  v23 = v22 > v10;
  v24 = v21 > v9;
  if (v9 < a2 == v23)
  {
    v23 = v24;
  }

  return (*(v14 + 8 * ((v23 * v19) ^ v11)))();
}

uint64_t sub_1000E5E38(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *v21 = v23;
  *v20 = a1 - ((2 * a1) & 0xD3AB8E22) - 371865839;
  v25 = *v19;
  *(v24 - 120) = (v22 - 1762641653) ^ (906386353 * ((((v24 - 120) | 0x5FA27C3A) - ((v24 - 120) | 0xA05D83C5) - 1604484155) ^ 0x6EA3B11E));
  *(v24 - 112) = v25;
  (*(v18 + 8 * (v22 + 35893)))(v24 - 120);
  v19[2] = a16;
  v19[3] = a17;
  v26 = *v19;
  *(v24 - 112) = v22 + 155453101 * ((((v24 - 120) | 0xB00B84CF) - ((v24 - 120) | 0x4FF47B30) + 1341422384) ^ 0x562D9F00) + 296772742;
  *(v24 - 120) = v26;
  (*(v18 + 8 * (v22 ^ 0xF44E)))(v24 - 120);
  v27 = 297845113 * ((((v24 - 120) | 0x651248A5) - ((v24 - 120) & 0x651248A0)) ^ 0x1221543B);
  *(v24 - 104) = v19;
  *(v24 - 120) = v22 - v27 - 6525;
  *(v24 - 116) = (v17 ^ 0xDD9B5EBB) + v27 + ((2 * v17) & 0xBB36BD76) + ((v22 - 1678819207) & 0xAE9DDB3A ^ 0xE4E0A945);
  *(v24 - 108) = 121 * ((((v24 - 120) | 0xA5) - ((v24 - 120) & 0xA0)) ^ 0x3B) + 11;
  v28 = (*(v18 + 8 * (v22 ^ 0xF5EA)))(v24 - 120);
  return (*(v18 + 8 * v22))(v28);
}

uint64_t sub_1000E6400()
{
  v1 = *(STACK[0x2F0] + 8 * (((LODWORD(STACK[0x2EC]) - 15555) * (v0 == -371865839)) ^ (LODWORD(STACK[0x2EC]) - 28999)));
  STACK[0x278] = STACK[0x260];
  return v1();
}

uint64_t sub_1000E64F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x2C0] = v10;
  STACK[0x2D0] = v9;
  return (*(a8 + 8 * (((((804 * (v8 ^ 0x93B3) - 1222749995) & 0x48E1FBDF ^ 0xFFFFEF6B) + ((804 * (v8 ^ 0x93B3) - 11163) | 0x6804)) * (*v11 == 0)) ^ (804 * (v8 ^ 0x93B3)))))();
}

void sub_1000E655C(_DWORD *a1)
{
  v1 = *a1 ^ (353670337 * (((a1 | 0x3108AD9D) - (a1 & 0x3108AD9D)) ^ 0x852955A0));
  __asm { BRAA            X11, X17 }
}

uint64_t sub_1000E6640()
{
  v2 = LODWORD(STACK[0x3B0]) + v1;
  v3 = (v2 ^ 0x61451B91) & (2 * (v2 & 0x85485B99)) ^ v2 & 0x85485B99;
  v4 = ((2 * (v2 ^ 0x63452E93)) ^ 0x8C1AEA14) & (v2 ^ 0x63452E93) ^ (2 * (v2 ^ 0x63452E93)) & 0x260D750A;
  v5 = v4 ^ 0x2205150A;
  v6 = (v4 ^ 0x4006000) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0x9835D428) & v5 ^ (4 * v5) & 0x660D7508;
  v8 = v6 ^ 0xE60D750A ^ (v7 ^ 0x80055400) & (16 * v6);
  v9 = (16 * (v7 ^ 0x66082102)) & 0xE60D7500 ^ 0x8608250A ^ ((16 * (v7 ^ 0x66082102)) ^ 0x60D750A0) & (v7 ^ 0x66082102);
  v10 = (v8 << 8) & 0xE60D7500 ^ v8 ^ ((v8 << 8) ^ 0xD750A00) & v9;
  v11 = v2 ^ (2 * ((v10 << 16) & 0x660D0000 ^ v10 ^ ((v10 << 16) ^ 0x750A0000) & ((v9 << 8) & 0x660D0000 ^ 0x62080000 ^ ((v9 << 8) ^ 0xD750000) & v9)));
  v12 = (((LODWORD(STACK[0x3C0]) ^ 0x533167F0) - 1395746800) ^ ((LODWORD(STACK[0x3C0]) ^ 0xD073B3EB) + 797723669) ^ ((LODWORD(STACK[0x3C0]) ^ 0x6A97130A) - 1788285706)) + (((v11 ^ 0x5E64B88F) + 1722023233) ^ ((v11 ^ 0xC6E7E009) - 31414841) ^ ((v11 ^ 0xEE3416F4) - 688696516)) - 1687831728 < 0xFFFFFFFD;
  return (*(v0 + 8 * (LODWORD(STACK[0x390]) ^ (v12 | (32 * v12)))))(3816966863, 4294967135, 2393593796, 4294943894, 3816966767, 2816504024);
}

uint64_t sub_1000E6998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v14.i64[0] = 0xA1A1A1A1A1A1A1A1;
  v14.i64[1] = 0xA1A1A1A1A1A1A1A1;
  *(v12 - 112) = veorq_s8(vaddq_s8(**(v13 + 32), v14), xmmword_100F525E0);
  return (*(v11 + 8 * (v10 ^ (56 * (a9 == 0)))))(a1, a2, a3, a4, a5, a6, a7, a8, a10, v13);
}

uint64_t sub_1000E6CE0()
{
  *(v3 - 224) = (v2 + 1877381547) ^ (155453101 * ((2 * ((v3 - 224) & 0x61B59F00) - (v3 - 224) - 1639292678) ^ 0x786C7B35));
  v5 = (*(v4 + 8 * (v2 + 27692)))(v3 - 224);
  v6 = STACK[0x408];
  v7 = *(v3 - 216);
  v8 = v1 + v0;
  *(v8 - 2110010026) = v7 ^ 0xC0;
  *(v8 - 2110010025) = (v7 >> (v2 ^ 0xB9u)) ^ 0x94;
  return (*(v6 + 8 * ((101 * (v1 == 2110010040)) ^ (v2 + 23284))))(v5);
}

uint64_t sub_1000E711C()
{
  LODWORD(STACK[0x2AC]) = v0;
  if (v3 > 0x281FAFE6 != (v0 - 1543211119) < 0xD7E05019)
  {
    v5 = (v0 - 1543211119) < 0xD7E05019;
  }

  else
  {
    v5 = v0 - 1543211119 > v3 - 673165287;
  }

  if (v5)
  {
    v6 = 371891407;
  }

  else
  {
    v6 = v2;
  }

  LODWORD(STACK[0x40C]) = v6;
  return (*(v4 + 8 * ((9311 * (v6 == ((v1 - 19967) | 0x18) - 371866569)) ^ (v1 - 19943))))();
}

uint64_t sub_1000E71BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14)
{
  v16 = (v14 - 30062) | 0x8104;
  v18 = ((((a14 + 1337544654) ^ 0x17684298) - 1828312236) ^ (a14 + 1337544654) ^ (((a14 + 1337544654) ^ 0x35382378) - 1319744844) ^ (((a14 + 1337544654) ^ 0x7769FFFF) - 217606603) ^ (((v16 + 782712607) ^ (a14 + 1337544654)) - 1429839391)) == 0x7B919634 || ((((((a14 - 50) ^ 0x98) + 84) ^ (a14 - 50) ^ (((a14 - 50) ^ 0x78) - 76) ^ (102 - a14)) ^ (((v16 + 31) ^ (a14 - 50)) - 31)) & 0xF) != 4;
  return (*(v15 + 8 * ((((v16 + 1846472870) & 0x91F0E6EF ^ 0xA093) * v18) | v16)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t sub_1000E73A4(double a1, double a2, int8x16_t a3, int8x16_t a4)
{
  v16 = v5 - v6 + v8;
  v17.i64[0] = v16 + v7;
  v17.i64[1] = v16 - 4;
  v18 = v17;
  *&STACK[0x3D0] = v17;
  v19 = v5 - v6 - 1;
  v20.i64[0] = v8 + v19;
  v20.i64[1] = v16 - 2;
  v21.i64[0] = v16 - 5;
  v21.i64[1] = v16 - 6;
  v22.i64[0] = v16 - 7;
  v22.i64[1] = v16 - 8;
  v17.i64[0] = v16 - 9;
  v17.i64[1] = v16 - 10;
  *&STACK[0x3E0] = v17;
  v17.i64[0] = v16 - 11;
  v17.i64[1] = v16 - 12;
  *&STACK[0x450] = v17;
  v23 = vandq_s8(v22, *&STACK[0x3F0]);
  v24 = vandq_s8(v21, *&STACK[0x3F0]);
  v25 = vandq_s8(v20, *&STACK[0x3F0]);
  v26 = vandq_s8(v18, *&STACK[0x3F0]);
  v27 = vsraq_n_u64(vshlq_n_s64(v26, 0x38uLL), v26, 8uLL);
  v28 = vsraq_n_u64(vshlq_n_s64(v25, 0x38uLL), v25, 8uLL);
  v29 = *&STACK[0x3B0];
  v30 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v23, 0x38uLL), v23, 8uLL), *&STACK[0x3B0]);
  v31 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v24, 0x38uLL), v24, 8uLL), *&STACK[0x3B0]);
  v32 = veorq_s8(v31, a3);
  v33 = veorq_s8(v30, a3);
  v34 = *&STACK[0x360];
  v35 = veorq_s8(v30, *&STACK[0x370]);
  v36 = veorq_s8(v31, *&STACK[0x370]);
  v37 = *&STACK[0x370];
  v38 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL), v36);
  v39 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL), v35);
  v40 = *&STACK[0x340];
  v41 = *&STACK[0x350];
  v42 = veorq_s8(vaddq_s64(vsubq_s64(v39, vandq_s8(vaddq_s64(v39, v39), *&STACK[0x360])), *&STACK[0x350]), *&STACK[0x340]);
  v43 = veorq_s8(vaddq_s64(vsubq_s64(v38, vandq_s8(vaddq_s64(v38, v38), *&STACK[0x360])), *&STACK[0x350]), *&STACK[0x340]);
  v44 = veorq_s8(v43, vsraq_n_u64(vshlq_n_s64(v36, 3uLL), v36, 0x3DuLL));
  v45 = veorq_s8(v42, vsraq_n_u64(vshlq_n_s64(v35, 3uLL), v35, 0x3DuLL));
  v46 = *&STACK[0x3A0];
  v47 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL), v44), *&STACK[0x3A0]);
  v48 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), v45), *&STACK[0x3A0]);
  v49 = veorq_s8(v48, vsraq_n_u64(vshlq_n_s64(v45, 3uLL), v45, 0x3DuLL));
  v50 = veorq_s8(v47, vsraq_n_u64(vshlq_n_s64(v44, 3uLL), v44, 0x3DuLL));
  v51 = vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL);
  v52 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v50);
  v53 = *&STACK[0x320];
  v54 = *&STACK[0x330];
  v55 = veorq_s8(vaddq_s64(v51, v49), *&STACK[0x330]);
  v56 = veorq_s8(v52, *&STACK[0x330]);
  v57 = *&STACK[0x310];
  v58 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v55, *&STACK[0x320]), vorrq_s8(v55, a4)), a4), *&STACK[0x310]);
  v59 = vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL);
  v60 = vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL);
  v61 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v56, *&STACK[0x320]), vorrq_s8(v56, a4)), a4), *&STACK[0x310]);
  v62 = veorq_s8(v61, v60);
  v63 = veorq_s8(v58, v59);
  v64 = vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v63);
  v66 = *&STACK[0x430];
  v67 = veorq_s8(vaddq_s64(v64, v62), *&STACK[0x430]);
  v68 = vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL);
  v69 = veorq_s8(v65, *&STACK[0x430]);
  v70 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v71 = veorq_s8(v67, v68);
  v72 = vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL);
  v73 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v71);
  v74 = *&STACK[0x410];
  v75 = veorq_s8(vaddq_s64(v72, v70), *&STACK[0x410]);
  v76 = veorq_s8(v73, *&STACK[0x410]);
  v77 = vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL);
  v78 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v79 = veorq_s8(v75, v77);
  v80 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v81 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v79);
  v82 = veorq_s8(vaddq_s64(v80, v78), v13);
  v83 = vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL);
  v84 = veorq_s8(v81, v13);
  v85.i64[0] = v16 - 13;
  v85.i64[1] = v16 - 14;
  *&STACK[0x3C0] = v85;
  v86 = vaddq_s64(v28, v29);
  v87 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL))), v14);
  v88 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), veorq_s8(v82, v83)), v14);
  v188.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v87, v87), v15), v87), v10), v11), vnegq_s64(vandq_s8(vshlq_n_s64(v22, 3uLL), v12)));
  v188.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v88, v88), v15), v88), v10), v11), vnegq_s64(vandq_s8(vshlq_n_s64(v21, 3uLL), v12)));
  v89 = veorq_s8(v86, a3);
  v90 = veorq_s8(v86, v37);
  v91 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v90);
  v92 = veorq_s8(vaddq_s64(vsubq_s64(v91, vandq_s8(vaddq_s64(v91, v91), v34)), v41), v40);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v94 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v93), v46);
  v95 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v96 = v54;
  v97 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95), v54);
  v98 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v97, v53), vorrq_s8(v97, a4)), a4), v57);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v100 = v66;
  v101 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99), v66);
  v102 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102), v74);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104), v13);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v107 = vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL);
  v105.i64[0] = v16 - 15;
  v105.i64[1] = v16 - 16;
  v108 = veorq_s8(vaddq_s64(v107, v106), v14);
  v109 = vsubq_s64(vandq_s8(vaddq_s64(v108, v108), v15), v108);
  v110 = vandq_s8(v105, *&STACK[0x3F0]);
  v111 = vaddq_s64(v27, v29);
  v188.val[0] = vshlq_u64(veorq_s8(vaddq_s64(v109, v10), v11), vnegq_s64(vandq_s8(vshlq_n_s64(v20, 3uLL), v12)));
  v112 = veorq_s8(v111, a3);
  v113 = veorq_s8(v111, v37);
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113);
  v115 = veorq_s8(vaddq_s64(vsubq_s64(v114, vandq_s8(vaddq_s64(v114, v114), v34)), v41), v40);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116), v46);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v119 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118), v54);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v119, v53), vorrq_s8(v119, a4)), a4), v57);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), v66);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v124 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123), v74);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v126 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125), v13);
  v127 = vandq_s8(v85, *&STACK[0x3F0]);
  v128 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL))), v14);
  v129 = vandq_s8(*&STACK[0x450], *&STACK[0x3F0]);
  v188.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v128, v128), v15), v128), v10), v11), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3D0], 3uLL), v12)));
  v130 = vandq_s8(*&STACK[0x3E0], *&STACK[0x3F0]);
  v131 = vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL);
  v132 = vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL);
  v133 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v29);
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v29);
  v130.i64[0] = vqtbl4q_s8(v188, *&STACK[0x420]).u64[0];
  v188.val[0] = veorq_s8(v134, a3);
  v188.val[1] = veorq_s8(v133, a3);
  v135 = veorq_s8(v133, v37);
  v136 = veorq_s8(v134, v37);
  v188.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188.val[0], 0x38uLL), v188.val[0], 8uLL), v136);
  v188.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188.val[1], 0x38uLL), v188.val[1], 8uLL), v135);
  v137 = v34;
  v188.val[0] = vaddq_s64(vsubq_s64(v188.val[0], vandq_s8(vaddq_s64(v188.val[0], v188.val[0]), v34)), v41);
  v188.val[1] = vaddq_s64(vsubq_s64(v188.val[1], vandq_s8(vaddq_s64(v188.val[1], v188.val[1]), v34)), v41);
  v138 = v41;
  v188.val[1] = veorq_s8(v188.val[1], v40);
  v188.val[0] = veorq_s8(v188.val[0], v40);
  v139 = v40;
  v188.val[2] = vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL);
  v140 = veorq_s8(v188.val[0], vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v141 = veorq_s8(v188.val[1], v188.val[2]);
  v188.val[2] = vsraq_n_u64(vshlq_n_s64(v188.val[0], 0x38uLL), v188.val[0], 8uLL);
  v188.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188.val[1], 0x38uLL), v188.val[1], 8uLL), v141);
  v188.val[1] = veorq_s8(vaddq_s64(v188.val[2], v140), v46);
  v188.val[0] = veorq_s8(v188.val[0], v46);
  v142 = v46;
  v188.val[2] = vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL);
  v143 = veorq_s8(v188.val[0], vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL));
  v144 = veorq_s8(v188.val[1], v188.val[2]);
  v188.val[2] = vsraq_n_u64(vshlq_n_s64(v188.val[0], 0x38uLL), v188.val[0], 8uLL);
  v188.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188.val[1], 0x38uLL), v188.val[1], 8uLL), v144);
  v188.val[1] = veorq_s8(vaddq_s64(v188.val[2], v143), v54);
  v188.val[0] = veorq_s8(v188.val[0], v54);
  v145 = v54;
  v188.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v188.val[1], v53), vorrq_s8(v188.val[1], a4)), a4), v57);
  v188.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v188.val[0], v53), vorrq_s8(v188.val[0], a4)), a4), v57);
  v146 = v57;
  v188.val[2] = vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL);
  v147 = veorq_s8(v188.val[0], vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v148 = veorq_s8(v188.val[1], v188.val[2]);
  v188.val[2] = vsraq_n_u64(vshlq_n_s64(v188.val[0], 0x38uLL), v188.val[0], 8uLL);
  v188.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188.val[1], 0x38uLL), v188.val[1], 8uLL), v148);
  v188.val[1] = veorq_s8(vaddq_s64(v188.val[2], v147), v100);
  v188.val[2] = vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL);
  v188.val[0] = veorq_s8(v188.val[0], v100);
  v149 = v100;
  v150 = veorq_s8(v188.val[0], vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v151 = veorq_s8(v188.val[1], v188.val[2]);
  v188.val[2] = vsraq_n_u64(vshlq_n_s64(v188.val[0], 0x38uLL), v188.val[0], 8uLL);
  v188.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188.val[1], 0x38uLL), v188.val[1], 8uLL), v151);
  v188.val[1] = veorq_s8(vaddq_s64(v188.val[2], v150), v74);
  v188.val[0] = veorq_s8(v188.val[0], v74);
  v188.val[2] = vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL);
  v152 = veorq_s8(v188.val[0], vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v153 = veorq_s8(v188.val[1], v188.val[2]);
  v188.val[2] = vsraq_n_u64(vshlq_n_s64(v188.val[0], 0x38uLL), v188.val[0], 8uLL);
  v188.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188.val[1], 0x38uLL), v188.val[1], 8uLL), v153);
  v188.val[1] = veorq_s8(vaddq_s64(v188.val[2], v152), v13);
  v188.val[0] = veorq_s8(v188.val[0], v13);
  v188.val[2] = vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL);
  v154 = veorq_s8(v188.val[0], vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v155 = veorq_s8(v188.val[1], v188.val[2]);
  v188.val[2] = vsraq_n_u64(vshlq_n_s64(v188.val[0], 0x38uLL), v188.val[0], 8uLL);
  v188.val[0] = vsraq_n_u64(vshlq_n_s64(v188.val[1], 0x38uLL), v188.val[1], 8uLL);
  v188.val[1] = vaddq_s64(v132, v29);
  v156 = veorq_s8(vaddq_s64(v188.val[2], v154), v14);
  v157 = veorq_s8(vaddq_s64(v188.val[0], v155), v14);
  v189.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v156, v156), v15), v156), v10), v11), vnegq_s64(vandq_s8(vshlq_n_s64(v105, 3uLL), v12)));
  v189.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v157, v157), v15), v157), v10), v11), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3C0], 3uLL), v12)));
  v158 = veorq_s8(v188.val[1], a3);
  v188.val[0] = veorq_s8(v188.val[1], v37);
  v159 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v188.val[0]);
  v160 = veorq_s8(vaddq_s64(vsubq_s64(v159, vandq_s8(vaddq_s64(v159, v159), v137)), v138), v139);
  v188.val[0] = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v188.val[0], 3uLL), v188.val[0], 0x3DuLL));
  v161 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v188.val[0]), v142);
  v188.val[0] = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v188.val[0], 3uLL), v188.val[0], 0x3DuLL));
  v162 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v188.val[0]), v96);
  v163 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v162, v53), vorrq_s8(v162, a4)), a4), v146);
  v188.val[0] = veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v188.val[0], 3uLL), v188.val[0], 0x3DuLL));
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v188.val[0]), v149);
  v188.val[0] = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v188.val[0], 3uLL), v188.val[0], 0x3DuLL));
  v165 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v188.val[0]), v74);
  v188.val[0] = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v188.val[0], 3uLL), v188.val[0], 0x3DuLL));
  v166 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v188.val[0]), v13);
  v167 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v188.val[0], 3uLL), v188.val[0], 0x3DuLL))), v14);
  v168 = vaddq_s64(v131, v29);
  v189.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v167, v167), v15), v167), v10), v11), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x450], 3uLL), v12)));
  v169 = veorq_s8(v168, a3);
  v170 = veorq_s8(v168, v37);
  v171 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v170);
  v172 = veorq_s8(vaddq_s64(vsubq_s64(v171, vandq_s8(vaddq_s64(v171, v171), v137)), v138), v139);
  v173 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL));
  v174 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v173), v142);
  v175 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL));
  v176 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v175), v145);
  v177 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v176, v53), vorrq_s8(v176, a4)), a4), v146);
  v178 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL));
  v179 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v178), v149);
  v180 = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v181 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v180), v74);
  v182 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v183 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v182), v13);
  v184 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL), veorq_s8(v183, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL))), v14);
  v189.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v184, v184), v15), v184), v10), v11), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3E0], 3uLL), v12)));
  v130.i64[1] = vqtbl4q_s8(v189, *&STACK[0x420]).u64[0];
  v185 = vrev64q_s8(*(v8 + v19 - 15));
  v186 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v185, v185, 8uLL), *&STACK[0x2D0]), v130));
  *(v9 + v19) = vextq_s8(v186, v186, 8uLL);
  return (*(STACK[0x408] + 8 * ((54919 * (v6 + 16 == v5)) ^ v4)))();
}

uint64_t sub_1000E7F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29)
{
  v32 = (((((v30 + 7319) | 0x20C) ^ 0x2731) & a29 ^ 0x169A0A35) - 1973031811) ^ (((((v30 + 7319) | 0x20C) ^ 0x2731) & a29 ^ 0x1E7D416D) - 2105366747) ^ (((((v30 + 7319) | 0x20C) ^ 0x2731) & a29 ^ 0x8E74B58) - 1810322158);
  *(v31 + (v32 + 1660950966)) = -33;
  return (*(v29 + 8 * ((14963 * ((v32 + 1660950910) < 0xFFFFFFC8)) ^ v30)))(a1, a2, a3);
}

uint64_t sub_1000E8154@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v34 = (v31 ^ 0x804F3C62) & (2 * (v31 & v32)) ^ v31 & v32;
  v35 = ((2 * (v31 ^ 0xA0892CA0)) ^ 0xE1CD6BE0 ^ (8243 * ((v33 + 42946) ^ 0xA7C1))) & (v31 ^ 0xA0892CA0) ^ (2 * (v31 ^ 0xA0892CA0)) & 0x70E695C2;
  v36 = v35 & (v34 << ((4 * (v33 - 62)) ^ 0xE)) ^ v34;
  v37 = v31 ^ (2 * (((4 * v35) ^ 0x408A5100) & (v35 ^ 0x60C40180) & (16 * v36) ^ v36));
  v38 = v30 - 152495328 + (((v37 ^ 0x6DF9BE8A) - 1030694718) ^ ((v37 ^ 0xCB888C74) + 1692527168) ^ ((v37 ^ 0xF8ED4726) + 1468277102)) + 23039857;
  v39 = *(a1 + 4 * a27);
  v40 = (v39 ^ 0xCE6F3C63) & (2 * (v39 & v32)) ^ v39 & v32;
  v41 = ((2 * (v39 ^ 0x4EA47CA1)) ^ 0x3D978B84) & (v39 ^ 0x4EA47CA1) ^ (2 * (v39 ^ 0x4EA47CA1)) & 0x9ECBC5C2;
  v42 = v39 ^ (2 * (((4 * v41) ^ 0x9211100) & (v41 ^ 0x1C838180) & (16 * (v41 & (4 * v40) ^ v40)) ^ v41 & (4 * v40) ^ v40)) ^ v38 ^ ((v38 ^ 0x161601C2) - 1192344192) ^ ((v38 ^ 0x11F5DE21) - 1089627491) ^ ((v38 ^ 0x291B9A52) - 2015109392) ^ ((v38 ^ 0x7FFFFEF3) - 788022705);
  return (*(a30 + 8 * ((52 * (((*(a1 + 4 * a2) + (((v42 ^ 0x7E706614) + 625556221) ^ ((v42 ^ 0x4C8B52D7) + 397545024) ^ ((v42 ^ 0xBA1736E2) - 517051893)) - 56993127) & 7) == 2)) | (v33 + 42946))))();
}

uint64_t sub_1000E845C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int16 a13, unsigned int a14, uint64_t a15, __int16 a16, __int16 a17)
{
  a14 = (v20 + 14023) ^ (((2 * (v22 & 0x4E4ACA58) - v22 + 833959335) ^ 0xBFFA23B7) * v17);
  a13 = v19 ^ (((2 * (v22 & 0xCA58) - v22 + 13735) ^ 0x23B7) * v17);
  a17 = 5766 - ((2 * (v22 & 0xCA58) - v22 + 13735) ^ 0x23B7) * v17;
  a15 = v18;
  v23 = (*(a12 + 8 * (v20 + 44789)))(&a13);
  return (*(a12 + 8 * (v20 ^ (37012 * (v21 == 1)))))(v23);
}

uint64_t sub_1000E854C()
{
  v5 = (((v4 ^ 0xF919201F) - 677956143) ^ ((v4 ^ 0x91485386) - 1077524918) ^ ((v4 ^ 0x50F55EB8) + 2122009464)) + (((v1 ^ 0x81E46964) + 2115737244) ^ ((v1 ^ 0x4E058005) - 1308983301) ^ ((v1 ^ 0x26342E70) - 640964539 + ((v2 - 37534) | 0x2142))) + 1343252203;
  v6 = ((v5 ^ 0x864CF175) + 98031172) ^ v5 ^ ((v5 ^ 0xDAFEE60B) + 1499840830) ^ ((v5 ^ 0x5F2914C1) - 592301064) ^ ((v5 ^ 0x7FFFDB76) - 60490687);
  v7 = (((v6 ^ 0xA35E3022) - 921645050) ^ ((v6 ^ 0x1B8C4CAC) + 1908583564) ^ ((v6 ^ 0xC4B6A447) - 1359461279)) - 1316284725;
  v8 = (((*(v0 + 12) ^ 0x6B1AE2C4) - 1796924100) ^ ((*(v0 + 12) ^ 0x8F91DA4C) + 1886266804) ^ ((*(v0 + 12) ^ 0xD5EFF99) - 224329625)) - 1316284725;
  v9 = v7 < 0xC7B54FBA;
  v10 = v7 > v8;
  if (v8 < 0xC7B54FBA != v9)
  {
    v10 = v9;
  }

  return (*(v3 + 8 * ((v10 | (16 * v10)) ^ v2)))();
}

uint64_t sub_1000E8780@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v9 = a1 ^ 0x226A;
  v10 = a1 ^ 0xD2F7u;
  v11 = ((a1 ^ 0x226A) + 169548682) & 0xF5E46FAE;
  v12 = (v4 - 1) & 0xF;
  v16 = (v7 - v6) < 0x10 || v5 + a2 - v4 + v12 + 1 < (v10 ^ 0x6CD8uLL) || (v5 + v2 - v4 + v12 + 2) < 0x10 || v5 + v3 - v4 + v12 + 3 < (v11 ^ 0x279EuLL);
  return (*(v8 + 8 * ((14 * v16) ^ v9)))();
}

uint64_t sub_1000E88D0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unint64_t a28, unint64_t a29, unint64_t a30, unint64_t a31, unint64_t a32, unint64_t a33, unint64_t a34)
{
  STACK[0x580] = STACK[0x2D0];
  STACK[0x4D0] = STACK[0x230];
  STACK[0x4C0] = STACK[0x220];
  STACK[0x4A8] = a30;
  STACK[0x6A8] = a33;
  STACK[0x620] = a34;
  STACK[0x718] = a29;
  STACK[0x600] = a32;
  STACK[0x540] = a31;
  STACK[0x710] = a28;
  STACK[0x5C8] = 0;
  STACK[0x468] = v34;
  STACK[0x618] = a1;
  STACK[0x418] = a1;
  STACK[0x6F8] = a1;
  v37 = (*(v36 + 8 * (v35 ^ 0xE0C4)))();
  return (*(v36 + 8 * v35))(v37);
}

uint64_t sub_1000E8970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  STACK[0xB90] = a5;
  v7 = STACK[0x750];
  *(v7 + 116) = STACK[0xA74];
  *(v7 + 104) = 1;
  return (*(v6 + 8 * (((*(*(&off_1010A0B50 + v5 - 21132) - 1264060947) == 0) * (((v5 - 15756) | 0x8000) - 41135)) ^ (v5 - 17138))))();
}

uint64_t sub_1000E8B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, char a35)
{
  v40 = *(&a35 + v35 + 72);
  v41 = ((2 * v35) & 0xD3FAF7E8) + (v35 ^ 0xE9FD7BF5);
  *(v38 + v41 + 369263627) = ((v40 >> (v36 + 100)) ^ 0x1D) - ((2 * ((v40 >> (v36 + 100)) ^ 0x1D)) & 0xBF) + 95;
  *(v38 + v41 + 369263628) = (BYTE2(v40) ^ 0x7C) - ((2 * (BYTE2(v40) ^ 0x7C)) & 0xBF) + 95;
  *(v38 + v41 + 369263629) = (BYTE1(v40) ^ 0x86) - ((2 * (BYTE1(v40) ^ 0x86)) & 0xBF) + 95;
  *(v38 + v41 + 369263630) = v40 ^ 0x23;
  return (*(v39 + 8 * ((31825 * (v35 + 4 < v37)) ^ v36)))();
}

uint64_t sub_1000ED488@<X0>(void *a1@<X8>)
{
  *a1 = v2;
  a1[1] = v2;
  return (*(v3 + 8 * ((14462 * ((v1 ^ 0x776F0400) == 70964912)) ^ ((((v1 ^ 0x776F0400) - 2003737023) ^ 0x88917DB7) + (v1 ^ 0x776F0400)))))();
}

uint64_t sub_1000ED4DC()
{
  v2 = v0 ^ 0xCF0D;
  v3 = (*(v1 + 8 * (v2 ^ 0xAC22)))(16) != 0;
  return (*(STACK[0x408] + 8 * ((v3 * (((v2 ^ 0x2C6B) + 5088) ^ 0x5F4A)) ^ v2)))();
}

uint64_t sub_1000ED53C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v24 = a2 - 1;
  v25 = __ROR8__((v8 + v24) & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = v16 - (((v20 - v25) | a6) + ((v25 + a5) | v22));
  v27 = a4 & v19 ^ v23 ^ v26;
  v28 = v26 ^ a7;
  v29 = __ROR8__(v27, 8);
  v30 = ((a8 & (2 * (v29 + v28))) - (v29 + v28) + v15) ^ v12;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v13;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ v11;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (((v36 + v35) | v10) - ((v36 + v35) | a3) + a3) ^ v21;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ v17;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0x8FB22143FEDB6CB3;
  *(a1 + v24 + STACK[0x440]) = (((__ROR8__(v41, 8) + (v41 ^ __ROR8__(v40, 61))) ^ v18) >> (8 * ((v8 + v24) & 7))) ^ *(v8 + v24);
  return (*(STACK[0x408] + 8 * (((v24 != 0) * v9) | v14)))();
}

uint64_t sub_1000ED818@<X0>(int a1@<W8>)
{
  v4 = (v1 - 170366957);
  v5 = (v3 + 4 * v4);
  v6 = *(*(STACK[0x390] - 1680276466) + (*(STACK[0x388] - 231415367) & 0xFFFFFFFFD53B463CLL)) + v5;
  *(STACK[0x3E0] + 4 * v4) ^= (-260388643 * v5) ^ *v5 ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + ((v6 - 717535684) & (qword_1010C0540 ^ 0x7226FCCC))) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + ((v6 + ((a1 - 9944) ^ 0xD53B591B)) & (qword_1010C0540 ^ 0x7226FCCC))) ^ 0x25418EE1;
  return (*(v2 + 8 * a1))();
}

uint64_t sub_1000EDA34(__n128 a1, uint64_t a2, uint64_t a3, int a4)
{
  *v4 = a1;
  v4[1] = a1;
  return (*(v7 + 8 * (((v6 != 0) * a4) ^ v5)))();
}

uint64_t sub_1000EDBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, unsigned int a44, int a45, int a46, unsigned int a47)
{
  v52 = (((v51 ^ 0xF6B47FC) - 258689020) ^ ((v51 ^ 0xEB9B7B00) + 342131968) ^ ((v51 ^ 0xF98CBA80) + 108217728)) + 2033887421 + (((a44 ^ 0x83AD19B3) + 2085807693) ^ ((a44 ^ 0xC4ED5005) + 991080443) ^ ((a44 ^ 0x5A3CCFCA) - 1513934794));
  v53 = (((v50 ^ 0xE550FF38) + 447676616) ^ ((v50 ^ 0xD23D9B90) + 767714416) ^ ((v50 ^ 0x2A11E2D4) - 705815252)) + (((a45 ^ 0x141D7482) - 337474690) ^ ((a45 ^ 0xE82052FE) + 400534786) ^ ((a45 ^ 0xE141A000) + 515792896)) + 1079009301;
  v54 = (v53 ^ 0xF2A608C3) & (2 * (v53 & 0xFAA8ACE3)) ^ v53 & 0xFAA8ACE3;
  v55 = ((2 * (v53 ^ 0x7B64145)) ^ 0xFA3DDB4C) & (v53 ^ 0x7B64145) ^ (2 * (v53 ^ 0x7B64145)) & 0xFD1EEDA6;
  v56 = v55 ^ 0x50224A2;
  v57 = (v55 ^ 0xF804C104) & (4 * v54) ^ v54;
  v58 = ((4 * v56) ^ 0xF47BB698) & v56 ^ (4 * v56) & 0xFD1EEDA0;
  v59 = (v58 ^ 0xF41AA480) & (16 * v57) ^ v57;
  v60 = ((16 * (v58 ^ 0x9044926)) ^ 0xD1EEDA60) & (v58 ^ 0x9044926) ^ (16 * (v58 ^ 0x9044926)) & 0xFD1EEDA0;
  v61 = v59 ^ 0xFD1EEDA6 ^ (v60 ^ 0xD10EC800) & (v59 << 8);
  v62 = (v61 << 16) ^ 0x6DA60000;
  a44 = v52 ^ ((v52 ^ 0xC4D62C3D) + 90720264) ^ ((v52 ^ 0xDE7CC547) + 532849022) ^ ((v52 ^ 0x5F160D65) - 1633130144) ^ ((v52 ^ 0x7BFD7FDA) - 1170007071) ^ 0x233D1DB9;
  a45 = v53 ^ (2 * ((v61 << 16) & 0x7D1E0000 ^ v61 ^ v62 & (((v60 ^ 0x2C102586) << 8) & 0x7D1E0000 ^ 0x61120000 ^ (((v60 ^ 0x2C102586) << 8) ^ 0x1EED0000) & (v60 ^ 0x2C102586)))) ^ 0xC7E5F1D3;
  v63 = (((v48 ^ 0xAC634D9C) + 1402778212) ^ ((v48 ^ 0xF8931E19) + 124576231) ^ ((v48 ^ 0x498CD5F9) - 1233966585)) + 1141740044 + (((a46 ^ 0x2A97EA4E) - 714598990) ^ ((a46 ^ 0x94381C5F) + 1808262049) ^ ((a46 ^ 0xA3D3706D) + 1546424211));
  v64 = (v63 ^ 0xF4EB70C9) & (2 * (v63 & 0xF6EB7AEC)) ^ v63 & 0xF6EB7AEC;
  v65 = ((2 * (v63 ^ 0x35E9C051)) ^ 0x8605757A) & (v63 ^ 0x35E9C051) ^ (2 * (v63 ^ 0x35E9C051)) & 0xC302BABC;
  v66 = v65 ^ 0x41028A85;
  v67 = (v65 ^ 0x82003030) & (4 * v64) ^ v64;
  v68 = ((4 * v66) ^ 0xC0AEAF4) & v66 ^ (4 * v66) & 0xC302BABC;
  v69 = (v68 ^ 0x2AAA0) & (16 * v67) ^ v67;
  v70 = ((16 * (v68 ^ 0xC3001009)) ^ 0x302BABD0) & (v68 ^ 0xC3001009) ^ (16 * (v68 ^ 0xC3001009)) & 0xC302BA90;
  v71 = v69 ^ 0xC302BABD ^ (v70 ^ 0x2AA00) & (v69 << 8);
  v72 = v63 ^ (2 * ((v71 << 16) & 0x43020000 ^ v71 ^ ((v71 << 16) ^ 0x3ABD0000) & (((v70 ^ 0xC300102D) << 8) & 0x43020000 ^ 0x41000000 ^ (((v70 ^ 0xC300102D) << 8) ^ 0x2BA0000) & (v70 ^ 0xC300102D))));
  v73 = (((v49 ^ 0x100CCAFC) - 269273852) ^ ((v49 ^ 0xA0DD30DC) + 1596116772) ^ ((v49 ^ 0xADAD7C5C) + 1381139364)) - 1991664030 + (((a47 ^ 0xA64CF62C) + 1504905684) ^ ((a47 ^ 0xD1974F11) + 778612975) ^ ((a47 ^ 0x6AA73F41) - 1789345601));
  v74 = (v73 ^ 0xBD0F6E46) & (2 * (v73 & 0xB1AF6E96)) ^ v73 & 0xB1AF6E96;
  v75 = ((2 * (v73 ^ 0x9F1FB66E)) ^ 0x5D61B1F0) & (v73 ^ 0x9F1FB66E) ^ (2 * (v73 ^ 0x9F1FB66E)) & 0x2EB0D8F8;
  v76 = v75 ^ 0x22904808;
  v77 = (v75 ^ 0xC2090F0) & (4 * v74) ^ v74;
  v78 = ((4 * v76) ^ 0xBAC363E0) & v76 ^ (4 * v76) & 0x2EB0D8F8;
  v79 = (v78 ^ 0x2A8040E0) & (16 * v77) ^ v77;
  v80 = ((16 * (v78 ^ 0x4309818)) ^ 0xEB0D8F80) & (v78 ^ 0x4309818) ^ (16 * (v78 ^ 0x4309818)) & 0x2EB0D8C0;
  v81 = v79 ^ 0x2EB0D8F8 ^ (v80 ^ 0x2A008800) & (v79 << 8);
  a46 = v72 ^ 0x699289EA;
  a47 = v73 ^ (2 * ((v81 << 16) & 0x2EB00000 ^ v81 ^ ((v81 << 16) ^ 0x58F80000) & (((v80 ^ 0x4B05078) << 8) & 0x2EB00000 ^ 0xE200000 ^ (((v80 ^ 0x4B05078) << 8) ^ 0x30D80000) & (v80 ^ 0x4B05078)))) ^ 0xE0D2591A;
  return v47(v62, &a34 + 4, 4246662560, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t sub_1000EE3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = 13274 * (v10 ^ 0x9FC0);
  v13 = (v12 + 548365392) & 0xDF507425;
  LODWORD(STACK[0x290]) = v13;
  return (*(STACK[0x2F0] + 8 * ((((((v12 - 34826) | 0x8038) ^ 0xFFFF1FEA) + v13) * (v11 < 0x10)) ^ v12)))((v12 - 34826), a2, a3, a4, a5, a6, (((v12 - 34826) | 0x8038) ^ 0xFFFF1FEA) + v13, a8, a9, a10);
}

uint64_t sub_1000EE540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39)
{
  v44 = -v40;
  v45 = (v41 + 1843317191) & 0x92219FFF;
  v46 = v43 + v42 + ((v45 - 1885972900) & 0x7069E7FD ^ 0x2FBC0AA8);
  v47 = ((v46 & 0x81931026) << (((v41 + 88) | 5) + 116)) & (v46 ^ 0xBDD29516) ^ v46 & 0x81931026;
  v48 = ((2 * (v46 ^ 0xBDF0955A)) ^ 0x78C70AF8) & (v46 ^ 0xBDF0955A) ^ (2 * (v46 ^ 0xBDF0955A)) & 0x3C63857C;
  v49 = *(&a39 + a31);
  v50 = (v49 ^ 0x9B4F3C6B) & (2 * (v49 & 0xD06FB963)) ^ v49 & 0xD06FB963;
  v51 = ((2 * (v49 ^ 0x1B865E2F)) ^ 0x97D3CE98) & (v49 ^ 0x1B865E2F) ^ (2 * (v49 ^ 0x1B865E2F)) & 0xCBE9E74C;
  v52 = v51 ^ 0x48282144;
  v53 = (v51 ^ 0x83C1C608) & (4 * v50) ^ v50;
  v54 = 4 * v52;
  v55 = ((4 * v52) ^ 0x2FA79D30) & v52;
  v56 = (v55 ^ v54 & 0xCBE9E740) & (16 * v53);
  v57 = v46 ^ v49 ^ (2 * (v56 ^ v53 ^ (v48 ^ 0x860043C) & (4 * v47) ^ v47 ^ ((4 * v48) & 0x3C638578 ^ 0x3002056C ^ ((4 * v48) ^ 0x718E15F0) & v48) & (16 * ((v48 ^ 0x860043C) & (4 * v47) ^ v47))));
  v58 = (((v57 ^ 0x28A578CC) + 1124150435) ^ ((v57 ^ 0xBF1E2E1E) - 725976463) ^ ((v57 ^ 0x4817FF97) + 598977530)) - 810317466;
  v59 = (v44 + a39 + 2084796782 * *(&a39 + v39) + v58 * (*(&a39 + v39) - 797984413));
  v60 = *(a36 + 8 * ((13 * (((v59 - 678792310) & 7) == 1)) ^ v45));
  return v60(v59, v60, v58, 2084796782, 3568990833, v56, v55, 3421103936, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1000EE8FC@<X0>(unsigned int a1@<W8>)
{
  v4 = a1 < v2;
  v5 = (((((a1 + 97) ^ 0xAA) + 12) ^ (((a1 + 97) ^ 1) + 1)) ^ (v1 - 91 + (((v1 + 54) | 1) ^ (a1 + 97) ^ 6))) & 0xF;
  v6 = ((v5 ^ 0x851E21E2) - 1401107679) ^ ((v5 ^ 0x84DC8105) - 1380029496) ^ ((v5 ^ 0x1C2A0E7) + 681593382);
  v7 = 1953212230 - v6;
  LODWORD(STACK[0x9AC]) = v7;
  return (*(v3 + 8 * ((27076 * ((a1 | (v4 << 32)) + v7 + ((v6 > 0x2962EAD3) << 32) - 2617409738u < 0xFFFFFFF6)) ^ v1)))();
}

uint64_t sub_1000EEA4C(double a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  a2.n128_u16[0] = 6939;
  a2.n128_u8[2] = 27;
  a2.n128_u8[3] = 27;
  a2.n128_u8[4] = 27;
  a2.n128_u8[5] = 27;
  a2.n128_u8[6] = 27;
  a2.n128_u8[7] = 27;
  return (*(v8 + 8 * (a6 - 18264)))(8 - (v6 & 0x18), -v7, v6 + *(v9 - 136) - 8, (a6 - 18289), 27, xmmword_100F523B0, a2);
}

void sub_1000EEB2C()
{
  if (v0 == 1501411933)
  {
    v2 = 793205748;
  }

  else
  {
    v2 = 793163724;
  }

  *(v1 + 20) = v2;
}

uint64_t sub_1000EEC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24, int a25, int a26, int a27, int a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, int a38, uint64_t a39, uint64_t a40)
{
  v45 = 155453101 * ((((v44 - 144) | 0x3EC59AEF) - (v44 - 144) + ((v44 - 144) & 0xC13A6510)) ^ 0xD8E38120);
  *(v44 - 128) = (v42 - 8614) ^ v45;
  *(v44 - 104) = a28 ^ v45;
  *(v44 - 100) = a23 + v45;
  *(v44 - 144) = v43;
  *(v44 - 112) = 1084436577 - v45;
  *(v44 - 108) = a26 + v45;
  *(v44 - 120) = v41;
  *(v44 - 136) = (((5133 * (v42 ^ 0xB467) - 73712713) ^ v40) + ((((v42 ^ 0xB467) + 17803) ^ 0x7736AA32) & (2 * v40)) + 510525434) ^ v45;
  *(v44 - 132) = a27 ^ v45;
  v46 = (*(a40 + 8 * (v42 + 5913)))(v44 - 144);
  return (*(a40 + 8 * ((211 * (a38 != 1)) ^ v42)))(v46);
}

uint64_t sub_1000EED7C@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  a6 = (v10 + 29452) ^ (297845113 * (&a6 ^ 0x77331C9E));
  a7 = a1;
  v11 = (*(v8 + 8 * (v10 ^ 0xD745)))(&a6);
  *(v7 + v9) = 0;
  return (*(v8 + 8 * v10))(v11);
}

uint64_t sub_1000EEDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, int a26, uint64_t a27, int a28, int a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37, uint64_t a38, uint64_t a39)
{
  v42 = STACK[0x2F8];
  v43 = (((v42 ^ 0xA) + 105) ^ v42 ^ ((v42 ^ (((v40 + 25) ^ 0x97) + 63)) - 80) ^ ((v42 ^ 0xA1) - 60) ^ ((v42 ^ 0xFB) - 102));
  v44 = ((2 * ((LODWORD(STACK[0x30C]) - 797984413) % a8)) & 0xAC7E27BA) + (((LODWORD(STACK[0x30C]) - 797984413) % a8) ^ 0xD63F13DD);
  v45 = (LODWORD(STACK[0x308]) ^ 0xDF6FBD42) & (2 * (STACK[0x308] & 0xD06FB963)) ^ STACK[0x308] & 0xD06FB963;
  v46 = ((2 * LODWORD(STACK[0x308])) ^ 0x5F9E0CC6) & STACK[0x308] ^ (2 * LODWORD(STACK[0x308])) & 0x2FCF0662;
  v47 = (LODWORD(STACK[0x308]) ^ (2 * (((4 * v46) ^ 0x80) & (v46 ^ 0x40) & (16 * (v46 & (4 * v45) ^ v45)) ^ v46 & (4 * v45) ^ v45))) & 0x7F;
  v48 = (((LODWORD(STACK[0x31C]) ^ 0x89) - 20) ^ LODWORD(STACK[0x31C]) ^ ((LODWORD(STACK[0x31C]) ^ 0x59) + 60) ^ ((LODWORD(STACK[0x31C]) ^ 0xF2) - 111) ^ ((LODWORD(STACK[0x31C]) ^ 0xBF) - 34));
  v49 = 906386353 * ((((v41 - 144) | 0xCCCC8905) + (~(v41 - 144) | 0x333376FA)) ^ 0xFDCD4420);
  *(v41 - 112) = ((((v43 ^ 0xFC7D7681) - 986552883) ^ ((v43 ^ 0x3349A72F) + 168211555) ^ ((v43 ^ 0xCF34D133) - 159661441)) + 669156589) ^ v49;
  *(v41 - 108) = v49 + 727321440 + v44;
  *(v41 - 104) = v49 + 212896239 + (((v48 ^ 0x14346F14) + 1525635453) ^ ((v48 ^ 0xC4B888FA) - 1973174637) ^ ((v48 ^ 0xD08CE773) - 1638412004));
  *(v41 - 120) = v49 ^ 0x24F40078;
  *(v41 - 116) = v49 + 1776032454 + (((v47 ^ 0xEB88D66F) + 203792359) ^ ((v47 ^ 0x4B702CC2) - 1394776756) ^ ((v47 ^ 0xA0F8FACE) + 1196798792));
  *(v41 - 128) = (v40 + 9222) ^ v49;
  *(v41 - 124) = v49 ^ a29 ^ a26;
  *(v41 - 144) = v39;
  *(v41 - 136) = &STACK[0x2F0];
  v50 = (*(a39 + 8 * (v40 ^ 0xCBB2)))(v41 - 144);
  return (*(a39 + 8 * ((85 * (((a37 - 1 - v40) | (v40 - (a37 - 1))) >> 31)) ^ (v40 + 45977))))(v50);
}

uint64_t sub_1000EF4F4()
{
  LODWORD(STACK[0xA64]) = v1;
  STACK[0x8C8] = *(v2 + 8 * v0);
  return (*(v2 + 8 * (((v0 + 16284) ^ 0x46BA) + v0)))();
}

uint64_t sub_1000EF524(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v23 = (((v22 | ((v22 < 0x2F90469D) << 32)) + (a8 + 12789) - 798004810) * (v21 + 0x1B38AA838483A5D7) + ((v22 | ((v22 < 0x2F90469D) << 32)) + (a8 + 12789) + 0x7A2E07D745A07142) * ((a8 ^ 0x445Bu) - 0x3F100E4BC880074FLL) - 0x314FC7AC4EC334F0) % v19;
  v24 = ((2 * v23) & 0x1EBF8EBDELL) + (v23 ^ 0xE9DC96BFF5FC75EFLL);
  v25 = ((v24 + 0x162369400A038A11) * (v24 - 0x6B9A243AF03A7DC4) - 0x7E42728505C1F82BLL * v24 - 0x5D16A2A78829A8DBLL) % v19;
  v26 = (((v25 ^ 0x6CFFDDFDEFF9DFB5) - 0x173040E609043A9 + ((2 * v25) & 0x1DFF3BF6ALL)) * (v24 + 0x162369400A038A11) - 0x6B8CD9EF8F699C0CLL * v24 + 0x7BB5A6733FBA2B34) % v19;
  v27 = (((v26 ^ 0xF8FFFDFBEFB9DFF5) + 0x9FF4AACCF8AACA7 + ((2 * v26) & 0x1DF73BFEALL)) * ((((a2 != 596562592) | (2 * (a2 != 596562592))) ^ 0x7FDFEFFD7BFFF7EDLL) - 0x7FDFEFFD7BFFF7EDLL) - 0x2FF48A8BF448C9CLL * (((a2 != 596562592) | (2 * (a2 != 596562592))) ^ 0x7FDFEFFD7BFFF7EDLL) + 0x6F5623C73984B06CLL) % v19;
  LODWORD(v24) = (v24 + (v27 ^ 0x7DEF8FFD79FFDFFFLL) + ((2 * v27) & 0xF3FFBFFE) - 0x67CC26BD6FFC55EELL) % v19;
  *(a18 + 4 * a13) = ((((v24 - ((2 * v24) & 0x4FD176C2) - 1477919903) ^ 0x131F03A5) - 785915551) ^ (((v24 - ((2 * v24) & 0x4FD176C2) - 1477919903) ^ 0xCC5D133D) + 241562105) ^ (((v24 - ((2 * v24) & 0x4FD176C2) - 1477919903) ^ 0x78AAABF9) - 1164818115)) - 910168840;
  return (*(v18 + 8 * (a8 ^ (127 * (v20 != 1193125186)))))();
}

uint64_t sub_1000EFC48(uint64_t a1, char a2, char a3, uint64_t a4, char a5, char a6, char a7, char a8)
{
  v25 = ((v10 ^ v13) + v11) ^ v10 ^ ((v10 ^ a2) + a3) ^ ((v10 ^ a5) + a6) ^ (((v9 - 74) ^ v10 ^ 0xA) + v12);
  v26 = (((v25 ^ a8) + v14) ^ ((v25 ^ v15) + v16) ^ ((v25 ^ v18) + v19)) + v8;
  STACK[0x518] = a4 - 1;
  *(a1 + a4 - 1) = v26 * (v10 + a7) + (v26 * v21 + (v10 + a7) * v20) * v22 + v23;
  return (*(v17 + 8 * (((STACK[0x518] == 0) * v24) ^ v9)))();
}

uint64_t sub_1000EFD78@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v11 = v3 < v9;
  *(a2 + v8) = *(v4 + (v8 & 0xF)) ^ *(v2 + v8) ^ *(v6 + (v8 & 0xF) + 5) ^ (-21 * (v8 & 0xF)) ^ *(v5 + (v8 & 0xF) + 5);
  if (v11 == v8 + 1 > 0xC9B330C9)
  {
    v11 = v8 + 911003447 < v3;
  }

  return (*(v10 + 8 * ((v11 * ((a1 ^ v7) - 8246)) ^ a1)))();
}

uint64_t sub_1000EFE0C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, char a7)
{
  v11 = (a2 ^ a5 ^ v8) + v7;
  *(a4 + 304) = v11;
  *(v9 + v11) = (a1 ^ a7) * (a1 + 17);
  return (*(v10 + 8 * (((8 * (*(a4 + 304) != 0)) | (32 * (*(a4 + 304) != 0))) ^ a2)))(a1 + 1);
}

uint64_t sub_1000EFFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, unsigned int a13, uint64_t a14, int a15, int a16)
{
  v21 = 1603510583 * ((((&a12 ^ 0xF800F8 | 0xF68AD534) ^ 0xFFFFFFFE) - (&a12 ^ 0x64008530 | 0x9752ACB)) ^ 0xC5448AC);
  a14 = *(v19 + v20);
  a13 = -1826624832 - v21;
  a15 = v18 - v21 - 5866;
  a16 = v18 - v21 + a11 - 672747394;
  v22 = (*(v17 + 8 * (v18 + 39130)))(&a12);
  *v16 = a12;
  return (*(v17 + 8 * v18))(v22);
}

uint64_t sub_1000F0294(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58, unsigned int a59, uint64_t a60, uint64_t a61, int a62, int a63)
{
  v75 = a68 + 1247605856 + 5 * a72 - ((((a68 + 1247605856 + 5 * a72) * v72) >> 32) >> 1) * v74;
  HIDWORD(a48) = (a48 - 13211) | 0x50;
  v76 = ((2 * v75) & 0xC8) + (HIDWORD(a48) ^ 0x7FC3E695 ^ v75);
  v77 = a72 + a4;
  v78 = *(&STACK[0x74C] + v77 - 1132512548 + v76 - ((((v77 - 1132512548 + v76) * v72) >> 32) >> 1) * v74);
  v79 = ((2 * (((a72 ^ 0x94430063) + 1945804029) ^ a72 ^ ((a72 ^ 0x699D0BC6) + 237279066) ^ ((a72 ^ 0x1F47973A) + 2029915046) ^ ((a72 ^ 0x7ADFFFFF) + 493249377))) ^ 0x308CC6C0) + v76 - 2143543268;
  v80 = *(&STACK[0x74C] + v79 - (((v79 * v72) >> 32) >> 1) * v74);
  v81 = *(&STACK[0x74C] + 3 * a72 + 929625596 + v76 - ((((3 * a72 + 929625596 + v76) * v72) >> 32) >> 1) * v74);
  v82 = (v80 & 0x44440140 ^ 0x53A4E2F5 ^ (v78 & 0x804624 ^ 0x563DEBE5 ^ (v78 & 0x802601 ^ 0xFFFFE3FF) & (*(&STACK[0x74C] + (v76 - 2143543268)) & 0x26DE8711 ^ 0x4ED2A252)) & (v80 & 0x4E640B62 ^ 0xB49BF49F)) & (v81 & 0x91C8B071 ^ 0xEEFF7FAF);
  v83 = 5 * a72 + 115093308 + v76 - ((((5 * a72 + 115093308 + v76) * v72) >> 32) >> 1) * v74;
  v84 = ((2 * v83) & 0xF2) + (v83 ^ 0x3CEB3EF9);
  v85 = a62 ^ v81 & 0x90081030 ^ 0x19D1ED57 ^ v82;
  v86 = *(&STACK[0x74C] + v77 - 11019321 + v84 - ((((v77 - 11019321 + v84) * v72) >> 32) >> 1) * v74);
  v87 = ((2 * (a72 ^ 0x477F84BC)) ^ 0x418C3038) & (a72 ^ 0x477F84BC) ^ (2 * (a72 ^ 0x477F84BC)) & 0xA0C6181C;
  v88 = v87 ^ 0xA0420804;
  v89 = (v87 ^ 0x841000) & (4 * ((2 * (a72 & 0xE7B99CA0)) & (a72 ^ 0xC73D9CBC) ^ a72 & 0xE7B99CA0)) ^ (2 * (a72 & 0xE7B99CA0)) & (a72 ^ 0xC73D9CBC) ^ a72 & 0xE7B99CA0;
  v90 = ((4 * v88) ^ 0x83186070) & v88 ^ (4 * v88) & 0xA0C61818;
  v91 = v90 & (16 * v89) ^ v89;
  v92 = ((16 * (v90 ^ 0x20C6180C)) ^ 0xC6181C0) & (v90 ^ 0x20C6180C) ^ (16 * (v90 ^ 0x20C6180C)) & 0xA0C61800;
  v93 = v91 ^ 0xA0C6181C ^ (v92 ^ 0x400000) & (v91 << 8);
  v94 = ((2 * a72) ^ (4 * ((v93 << 16) & 0x20C60000 ^ v93 ^ ((v93 << 16) ^ 0x181C0000) & (((v92 ^ 0xA086181C) << 8) & 0x20C60000 ^ 0x20C60000 ^ (((v92 ^ 0xA086181C) << 8) ^ 0x6180000) & (v92 ^ 0xA086181C)))) ^ 0x4C7B5930) + v84 - 1022050041;
  v95 = *(&STACK[0x74C] + v94 - v94 / 0x43 * v74);
  v96 = *(&STACK[0x74C] + 3 * a72 + 2051118823 + v84 - (3 * a72 + 2051118823 + v84) / 0x43u * v74);
  v97 = HIDWORD(a53);
  v98 = __PAIR64__(a67, __ROR4__(HIDWORD(a53), 20));
  v99 = a64 ^ __ROR4__(v85, 22) ^ __ROR4__(a67, 2) ^ v98 ^ 0x72D4AD46;
  LODWORD(v98) = a67;
  HIDWORD(a53) ^= __ROR4__(a59, 19) ^ (v98 >> 26) & 0xD3187088 ^ 0xCCFF5D00 ^ (__ROR4__(v99, 6) ^ 0xD41BF800) & ((v98 >> 26) & 0xFF1BFDAA ^ 0x960B31A0);
  HIDWORD(a50) ^= v96 & 0x32040014 ^ (v95 & 0x24200 ^ 0x83224C8F ^ (v86 & 0xC5000104 ^ 0xDACA46FA ^ (v86 & 0x500CA01 ^ 0x18231AF3) & (*(&STACK[0x74C] + (v84 - 1022050041)) & 0x1D0000D1 ^ 0x1823DA72)) & (v95 & 0x8B234A00 ^ 0x55DAD5FF)) & (v96 & 0x3605C014 ^ 0xEBFF3FEB) ^ 0x7CC9D216 ^ __ROR4__(v85, 10) ^ __ROR4__(a67, 31) ^ __ROR4__(v99, 5) ^ 0x22184629;
  return (*(v73 + 8 * a48))(a59, a67, v99, HIDWORD(a53), v97, 604068420, 0x37D6B2DD00000000, 0x54F077C718E7DLL, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57);
}

uint64_t sub_1000F22C4@<X0>(int a1@<W8>)
{
  v5 = *(v4 + 8 * a1);
  *(v3 + (v1 - 714641378)) = HIBYTE(v2) ^ 0xFB;
  *(v3 + (v1 - 714641377)) = BYTE2(v2) ^ 0x72;
  *(v3 + (v1 - 714641376)) = BYTE1(v2) ^ 2;
  *(v3 + (v1 - 714641375)) = v2 ^ 0x70;
  return v5();
}

uint64_t sub_1000F2444@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, unsigned int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, uint64_t a44, _DWORD *a45)
{
  v57 = (*a45 ^ v55) & (2 * (*a45 & 0xD1E4329D)) ^ *a45 & 0xD1E4329D;
  v58 = ((2 * (*a45 ^ v56)) ^ v52) & (*a45 ^ v56) ^ (2 * (*a45 ^ v56)) & a4;
  v59 = ((4 * (v58 ^ a8)) ^ a6) & (v58 ^ a8) ^ (4 * (v58 ^ a8)) & a4;
  v60 = v59 ^ a5;
  v61 = (v59 ^ a3) & (16 * ((v58 ^ a7) & (4 * v57) ^ v57)) ^ (v58 ^ a7) & (4 * v57) ^ v57;
  v62 = ((16 * v60) ^ a2) & v60 ^ (16 * v60) & a1;
  v63 = v61 ^ a4 ^ (v62 ^ v50) & (v61 << (((v54 - 72) & 0x7F) - 25));
  if ((a43 ^ (8 * *a45) ^ (16 * ((v63 << 16) & v45 ^ v63 ^ ((v63 << 16) ^ v46) & (((v62 ^ v51) << 8) & v48 ^ v47 ^ (((v62 ^ v51) << 8) ^ v49) & (v62 ^ v51))))) >= 0)
  {
    v64 = a43 ^ (8 * *a45) ^ (16 * ((v63 << 16) & v45 ^ v63 ^ ((v63 << 16) ^ v46) & (((v62 ^ v51) << 8) & v48 ^ v47 ^ (((v62 ^ v51) << 8) ^ v49) & (v62 ^ v51)))) ^ 0x70F8A782;
  }

  else
  {
    v64 = -(a43 ^ (8 * *a45) ^ (16 * ((v63 << 16) & v45 ^ v63 ^ ((v63 << 16) ^ v46) & (((v62 ^ v51) << 8) & v48 ^ v47 ^ (((v62 ^ v51) << 8) ^ v49) & (v62 ^ v51)))) ^ 0x70F8A782);
  }

  v65 = (((v64 >> 5) ^ 0xAA59E00) - 1453522949) ^ (((v64 >> 5) ^ 0xB8C7C342) + 457089721) ^ (((v64 >> 5) ^ 0xB2625D42) + 295386297);
  v66 = *(a9 + 4);
  if (v66 - 1051086576 < 0)
  {
    v67 = 1051086576 - v66;
  }

  else
  {
    v67 = v66 - 1051086576;
  }

  v70 = v67 > -1437736086 && v65 + 834189978 < v67 - 709747563 && v66 != 1051086576;
  return (*(v53 + 8 * ((457 * v70) ^ v54)))((v54 + 1990397112) & 0x895C7F7F, v65, 2304540543, a4, v60, 4294962715, 1538783039, 144171314, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
}

uint64_t sub_1000F264C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v14 = vrev64q_s8(**(v12 + 8));
  v15 = vextq_s8(v14, v14, 8uLL);
  v16.i64[0] = 0xDADADADADADADADALL;
  v16.i64[1] = 0xDADADADADADADADALL;
  v17.i64[0] = 0x2525252525252525;
  v17.i64[1] = 0x2525252525252525;
  v18 = vaddq_s8(vorrq_s8(v15, v16), vorrq_s8(v15, v17));
  v16.i64[0] = 0xA7A7A7A7A7A7A7A7;
  v16.i64[1] = 0xA7A7A7A7A7A7A7A7;
  v17.i64[0] = 0xBDBDBDBDBDBDBDBDLL;
  v17.i64[1] = 0xBDBDBDBDBDBDBDBDLL;
  v19 = vrev64q_s8(veorq_s8(vmlaq_s8(v17, v18, v16), xmmword_100F523C0));
  *(v13 - 112) = vextq_s8(v19, v19, 8uLL);
  return (*(v11 + 8 * (v10 ^ (49 * (a9 == 0)))))(a1, a2, a3, a4, a5, a6, a7, a8, a10);
}

uint64_t sub_1000F2BFC@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v7 = v4 + a1;
  *(v7 + 20) = a2;
  *(v7 + 36) = a2;
  return (*(v5 + 8 * (((v2 + a1 == 64) * v3) ^ v6)))();
}

uint64_t sub_1000F2C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v91 = ((2 * ((5 * a71 + a66 + 1247605856) % 0x43u)) & 0xD0) + (((5 * a71 + a66 + 1247605856) % 0x43u) ^ 0x7ED77BE8) - 1117020456;
  v74 = ((2 * ((5 * a71 + 1247605856 + v91) % 0x43)) & 0xE0) + (((5 * a71 + 1247605856 + v91) % 0x43) ^ 0xFDDBFFF0);
  v75 = 5 * a71 + (((5 * a71 - 2000416976 + v74) % 0x43) ^ 0xBE7F9AE0) + ((2 * ((5 * a71 - 2000416976 + v74) % 0x43)) & 0xC0) - 937397184;
  v76 = ((2 * (v75 % 0x43)) & 0xF6) + ((v75 % 0x43) ^ 0xFDE73FFB);
  v77 = ((2 * ((5 * a71 - 2001154267 + v76) % 0x43)) & 0xB6) + (((5 * a71 - 2001154267 + v76) % 0x43) ^ 0x3F571FDB);
  v78 = ((2 * ((5 * a71 + 1195962181 + v77) % 0x43)) & 0xBC) + (((5 * a71 + 1195962181 + v77) % 0x43) ^ 0xBC6B3BDE);
  v79 = *(v71 + 4 * ((a71 + 726556866 + v78) % 0x43));
  v80 = (a71 ^ 0xF731589E) & (2 * (a71 & 0xE7B99CA0)) ^ a71 & 0xE7B99CA0;
  v81 = ((2 * (a71 ^ 0xFC62699E)) ^ 0x37B7EA7C) & (a71 ^ 0xFC62699E) ^ (2 * (a71 ^ 0xFC62699E)) & 0x1BDBF53E;
  v82 = v81 ^ 0x8481502;
  v83 = (v81 ^ 0x1382E000) & (4 * v80) ^ v80;
  v84 = ((4 * v82) ^ 0x6F6FD4F8) & v82 ^ (4 * v82) & 0x1BDBF538;
  v85 = (v84 ^ 0xB4BD420) & (16 * v83) ^ v83;
  v86 = ((16 * (v84 ^ 0x10902106)) ^ 0xBDBF53E0) & (v84 ^ 0x10902106) ^ (16 * (v84 ^ 0x10902106)) & 0x1BDBF520;
  v87 = v85 ^ 0x1BDBF53E ^ (v86 ^ 0x199B5100) & (v85 << 8);
  v88 = *(v71 + 4 * ((((2 * a71) ^ (4 * ((v87 << 16) & 0x1BDB0000 ^ v87 ^ ((v87 << 16) ^ 0x353E0000) & (((v86 ^ 0x240A41E) << 8) & 0x1BDB0000 ^ 0xA0000 ^ (((v86 ^ 0x240A41E) << 8) ^ 0x1BF50000) & (v86 ^ 0x240A41E)))) ^ 0xE474EDB8) + v78 + 1133823010) % 0x43));
  v89 = *(v71 + 4 * ((3 * a71 - 87975422 + v78) % 0x43));
  return (*(v72 + 8 * (v73 - 22200)))(a65 ^ v89 & 0x48008400 ^ 0xAE571 ^ (v88 & 0x320000C ^ 0x210AA377 ^ (v79 & 0x10104 ^ 0xED5FF8E ^ (v79 & 0x80010443 ^ 0xBA0B6239) & (*(v71 + 4 * (v78 + 1133823010)) & 0x20092048 ^ 0xBA0A463B)) & (v88 & 0x87F2A04C ^ 0x3E2DDFF7)) & (v89 & 0x4AC08406 ^ 0xB53FFFFF));
}

uint64_t sub_1000F3C5C(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = *(a2 + 4);
  *(a1 + 64) = *(a2 + 8);
  return 0;
}

void sub_1000F3CD8(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 16) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *(a1 + 8) - 17902189 * ((-2 - ((a1 ^ 0x4100290 | 0xA3EFE542) + (a1 ^ 0x23688040 | 0x5C101ABD))) ^ 0x56C86B3F);
  __asm { BRAA            X9, X17 }
}

void sub_1000F3E18()
{
  if (v0 == 260070982)
  {
    v2 = -371865839;
  }

  else
  {
    v2 = 371891401;
  }

  *(v1 + 20) = v2;
}

uint64_t sub_1000F68E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v70 = v56;
  v59 = *(v55 + 8 * (v57 ^ 0x426C));
  STACK[0x2F0] = v55;
  v60 = v59(16);
  v61 = STACK[0x2F0];
  STACK[0x270] = 0;
  v62 = *(v61 + 8 * ((490 * (((v60 == 0) ^ (v57 - 1)) & 1)) ^ v57));
  LODWORD(STACK[0x2EC]) = v58;
  return v62(v60, v63, v64, v65, v66, v67, v68, v61, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, v70, a51, a52, a53, a54, a55);
}

uint64_t sub_1000F699C(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8)
{
  STACK[0x430] = *(v18 + v19 - 8);
  v24.i64[0] = v18 + v19 - 3;
  v24.i64[1] = v18 + v19 - 4;
  v25.i64[0] = v18 + v19 - 1;
  v25.i64[1] = v18 + v19 - 2;
  v26 = v11 ^ 0x55B2u;
  v27.i64[0] = v18 + v19 - 7;
  v28.i64[0] = a4 + v19 + v26;
  v27.i64[1] = v18 + v19 - 8;
  v28.i64[1] = v18 + v19 - 6;
  v29.i64[0] = a2 + v19;
  v29.i64[1] = v23 + v19;
  v30.i64[0] = v8 + v19;
  v30.i64[1] = v22 + v19;
  v31.i64[0] = STACK[0x3D0] + v19 + v26;
  v32.i64[0] = STACK[0x3F0] + v19;
  v31.i64[1] = STACK[0x3E0] + v19;
  v32.i64[1] = STACK[0x410] + v19;
  v33 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v34 = vandq_s8(v28, v33);
  v35 = vandq_s8(v25, v33);
  v36 = vandq_s8(v24, v33);
  v37 = vandq_s8(v27, v33);
  v38 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v39 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v40 = vdupq_n_s64(0xD6916AF990E79581);
  v41 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v42 = vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL);
  v43 = vaddq_s64(v41, v40);
  v44 = vaddq_s64(v39, v40);
  v45 = vdupq_n_s64(0x296E95066F186A7EuLL);
  v46 = vaddq_s64(v38, v40);
  v47 = vdupq_n_s64(v12);
  v48 = vaddq_s64(v42, v40);
  v49 = vandq_s8(vsubq_s64(v45, v42), v47);
  v50 = vaddq_s64(vandq_s8(vsubq_s64(v45, v38), v47), v46);
  v51 = vaddq_s64(vandq_s8(vsubq_s64(v45, v39), v47), v44);
  v52 = vaddq_s64(vandq_s8(vsubq_s64(v45, v41), v47), v43);
  v53 = vdupq_n_s64(a6);
  v54 = vsubq_s64(v52, vandq_s8(v43, v53));
  v55 = vsubq_s64(v51, vandq_s8(v44, v53));
  v56 = vsubq_s64(vaddq_s64(v49, v48), vandq_s8(v48, v53));
  v57 = vsubq_s64(v50, vandq_s8(v46, v53));
  v58 = vdupq_n_s64(v14);
  v59 = veorq_s8(v57, v58);
  v60 = veorq_s8(v55, v58);
  v61 = veorq_s8(v54, v58);
  v62 = veorq_s8(v56, v58);
  v63 = vdupq_n_s64(0xC14413EE03AAF609);
  v64 = veorq_s8(v54, v63);
  v65 = veorq_s8(v55, v63);
  v66 = veorq_s8(v56, v63);
  v67 = veorq_s8(v57, v63);
  v68 = vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL);
  v69 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v67);
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v65);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL), v64);
  v72 = vaddq_s64(v68, v66);
  v73 = vdupq_n_s64(0x14BA074A2F986FE5uLL);
  v74 = veorq_s8(v71, v73);
  v75 = veorq_s8(v70, v73);
  v76 = veorq_s8(v69, v73);
  v77 = vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL);
  v78 = vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL);
  v79 = veorq_s8(v72, v73);
  v80 = vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL);
  v81 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v82 = veorq_s8(v75, v80);
  v83 = veorq_s8(v74, v78);
  v84 = veorq_s8(v79, v77);
  v85 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v86 = vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL);
  v87 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v84);
  v88 = vaddq_s64(v85, v81);
  v89 = vdupq_n_s64(v20);
  v90 = veorq_s8(v88, v89);
  v91 = veorq_s8(vaddq_s64(v86, v82), v89);
  v92 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL), v83), v89);
  v93 = vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL);
  v94 = vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL);
  v95 = veorq_s8(v87, v89);
  v96 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL));
  v97 = veorq_s8(v91, v94);
  v98 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL));
  v99 = veorq_s8(v90, v93);
  v100 = vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL);
  v101 = vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL);
  v102 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v99);
  v104 = vaddq_s64(v102, v97);
  v105 = vaddq_s64(v101, v98);
  v106 = vdupq_n_s64(a1);
  v107 = veorq_s8(vaddq_s64(v100, v96), v106);
  v108 = veorq_s8(v104, v106);
  v109 = veorq_s8(v103, v106);
  v110 = vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL);
  v111 = vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL);
  v112 = veorq_s8(v105, v106);
  v113 = vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL);
  v114 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v115 = veorq_s8(v108, v113);
  v116 = veorq_s8(v107, v111);
  v117 = veorq_s8(v112, v110);
  v118 = vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL);
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v116);
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v115);
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v117);
  v122 = vaddq_s64(v118, v114);
  v123 = vdupq_n_s64(0x4BB2CF10603AF002uLL);
  v124 = vdupq_n_s64(a7);
  v125 = vaddq_s64(vsubq_s64(vorrq_s8(v122, v123), vorrq_s8(v122, v124)), v124);
  v126 = vaddq_s64(vsubq_s64(vorrq_s8(v120, v123), vorrq_s8(v120, v124)), v124);
  v127 = vaddq_s64(vsubq_s64(vorrq_s8(v119, v123), vorrq_s8(v119, v124)), v124);
  v128 = vaddq_s64(vsubq_s64(vorrq_s8(v121, v123), vorrq_s8(v121, v124)), v124);
  v129 = vdupq_n_s64(a8);
  v130 = veorq_s8(v127, v129);
  v131 = veorq_s8(v126, v129);
  v132 = veorq_s8(v125, v129);
  v133 = veorq_s8(v128, v129);
  v134 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v135 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v136 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v137 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v138 = vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL);
  v139 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v136);
  v140 = vdupq_n_s64(0x3BC4FBA94204947DuLL);
  v141 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v134), v140);
  v142 = veorq_s8(vaddq_s64(v138, v135), v140);
  v143 = veorq_s8(v139, v140);
  v144 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v137), v140);
  v145 = vdupq_n_s64(v17);
  v146 = vdupq_n_s64(0xDDD9E0843F4A7C84);
  v147 = vdupq_n_s64(0xB37F3E686055C37DLL);
  v148 = vsubq_s64(vorrq_s8(vaddq_s64(v143, v143), v145), v143);
  v149 = vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL);
  v150 = vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL);
  v151 = vsubq_s64(vorrq_s8(vaddq_s64(v142, v142), v145), v142);
  v152 = vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL);
  v153 = vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL);
  v154 = vandq_s8(v32, v33);
  v155 = vandq_s8(v30, v33);
  v156 = vsubq_s64(vorrq_s8(vaddq_s64(v141, v141), v145), v141);
  v157 = vandq_s8(v29, v33);
  v158 = vandq_s8(v31, v33);
  v159 = vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL);
  v160 = vsubq_s64(vorrq_s8(vaddq_s64(v144, v144), v145), v144);
  v161 = vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL);
  v162 = vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL);
  v163 = vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL);
  v164 = vaddq_s64(v156, v146);
  v165 = vdupq_n_s64(0xA325067CBC52C678);
  v166 = vaddq_s64(v151, v146);
  v167 = vaddq_s64(vaddq_s64(v159, v159), v165);
  v168 = vaddq_s64(vaddq_s64(v161, v161), v165);
  v169 = vaddq_s64(vaddq_s64(v162, v162), v165);
  v170 = vaddq_s64(vaddq_s64(v163, v163), v165);
  v171 = vaddq_s64(v148, v146);
  v172 = vdupq_n_s64(0xF2F9342312EBF434);
  v173 = vaddq_s64(v160, v146);
  v174 = vsubq_s64(v159, vandq_s8(v167, v172));
  v175 = vsubq_s64(v161, vandq_s8(v168, v172));
  v176 = veorq_s8(v171, v147);
  v177 = vdupq_n_s64(0xCB0F1D4FE79F5D56);
  v178 = vaddq_s64(vsubq_s64(v163, vandq_s8(v170, v172)), v177);
  v179 = vaddq_s64(vsubq_s64(v162, vandq_s8(v169, v172)), v177);
  v180 = vaddq_s64(v175, v177);
  v181 = veorq_s8(v166, v147);
  v182 = vaddq_s64(v174, v177);
  v183 = vdupq_n_s64(0x67FD13F296EE9EB2uLL);
  v184 = veorq_s8(v182, v183);
  v185 = veorq_s8(v180, v183);
  v186 = veorq_s8(v164, v147);
  v187 = veorq_s8(v179, v183);
  v188 = veorq_s8(v178, v183);
  v189 = vdupq_n_s64(0xEB690A0067A58754);
  v190 = veorq_s8(v178, v189);
  v191 = veorq_s8(v173, v147);
  v192 = veorq_s8(v179, v189);
  v193 = veorq_s8(v180, v189);
  v194 = veorq_s8(v182, v189);
  v195 = vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL);
  v196 = veorq_s8(v186, v153);
  v197 = veorq_s8(v181, v152);
  v198 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v194);
  v199 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL), v193);
  v200 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), v192);
  v201 = vaddq_s64(v195, v190);
  v202 = veorq_s8(v176, v150);
  v203 = vdupq_n_s64(0x8D4F80F477B96692);
  v204 = vandq_s8(vaddq_s64(v198, v198), v203);
  v205 = vandq_s8(vaddq_s64(v199, v199), v203);
  v206 = vsubq_s64(v201, vandq_s8(vaddq_s64(v201, v201), v203));
  v207 = vdupq_n_s64(0x297AF72712700E83uLL);
  v208 = vsubq_s64(v200, vandq_s8(vaddq_s64(v200, v200), v203));
  v209 = veorq_s8(v191, v149);
  v210 = vdupq_n_s64(0xD68508D8ED8FF17CLL);
  v211 = vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL);
  v212 = vdupq_n_s64(0xC6A7C07A3BDCB349);
  v213 = vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL);
  v214 = vdupq_n_s64(v13);
  v215 = veorq_s8(vaddq_s64(v206, v212), v214);
  v216 = veorq_s8(vaddq_s64(v208, v212), v214);
  v217 = vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL);
  v218 = veorq_s8(vaddq_s64(vsubq_s64(v199, v205), v212), v214);
  v219 = veorq_s8(vaddq_s64(vsubq_s64(v198, v204), v212), v214);
  v220 = vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL);
  v221 = vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL);
  v222 = veorq_s8(v219, vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL));
  v223 = veorq_s8(v218, vsraq_n_u64(vshlq_n_s64(v193, 3uLL), v193, 0x3DuLL));
  v224 = veorq_s8(v216, v221);
  v225 = veorq_s8(v215, v220);
  v226 = vsraq_n_u64(vshlq_n_s64(v219, 0x38uLL), v219, 8uLL);
  v227 = vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL);
  v228 = vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL);
  v229 = vaddq_s64(v226, v222);
  v230 = vdupq_n_s64(v10);
  v231 = veorq_s8(v229, v230);
  v232 = veorq_s8(vaddq_s64(v227, v223), v230);
  v233 = vsraq_n_u64(vshlq_n_s64(v202, 3uLL), v202, 0x3DuLL);
  v234 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v216, 0x38uLL), v216, 8uLL), v224), v230);
  v235 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL), v225), v230);
  v236 = vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL);
  v237 = vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL);
  v238 = veorq_s8(v235, vsraq_n_u64(vshlq_n_s64(v225, 3uLL), v225, 0x3DuLL));
  v239 = veorq_s8(v234, vsraq_n_u64(vshlq_n_s64(v224, 3uLL), v224, 0x3DuLL));
  v240 = veorq_s8(v232, vsraq_n_u64(vshlq_n_s64(v223, 3uLL), v223, 0x3DuLL));
  v241 = veorq_s8(v231, vsraq_n_u64(vshlq_n_s64(v222, 3uLL), v222, 0x3DuLL));
  v242 = vaddq_s64(v217, v202);
  v243 = vsraq_n_u64(vshlq_n_s64(v235, 0x38uLL), v235, 8uLL);
  v244 = vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL);
  v245 = vaddq_s64(v213, v197);
  v246 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL), v240);
  v247 = vaddq_s64(v211, v196);
  v248 = vdupq_n_s64(v21);
  v249 = veorq_s8(vaddq_s64(v243, v238), v248);
  v250 = veorq_s8(vaddq_s64(v244, v239), v248);
  v251 = vsraq_n_u64(vshlq_n_s64(v209, 3uLL), v209, 0x3DuLL);
  v252 = veorq_s8(v246, v248);
  v253 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL), v241), v248);
  v254 = vsraq_n_u64(vshlq_n_s64(v238, 3uLL), v238, 0x3DuLL);
  v255 = vaddq_s64(v228, v209);
  v256 = vorrq_s8(v247, v207);
  v257 = veorq_s8(v253, vsraq_n_u64(vshlq_n_s64(v241, 3uLL), v241, 0x3DuLL));
  v258 = veorq_s8(v252, vsraq_n_u64(vshlq_n_s64(v240, 3uLL), v240, 0x3DuLL));
  v259 = veorq_s8(v250, vsraq_n_u64(vshlq_n_s64(v239, 3uLL), v239, 0x3DuLL));
  v260 = veorq_s8(v249, v254);
  v261 = vorrq_s8(v245, v207);
  v262 = vsraq_n_u64(vshlq_n_s64(v253, 0x38uLL), v253, 8uLL);
  v263 = vsraq_n_u64(vshlq_n_s64(v252, 0x38uLL), v252, 8uLL);
  v264 = vsraq_n_u64(vshlq_n_s64(v250, 0x38uLL), v250, 8uLL);
  v265 = vorrq_s8(v242, v207);
  v266 = vdupq_n_s64(v15);
  v267 = veorq_s8(vaddq_s64(v262, v257), v266);
  v268 = veorq_s8(vaddq_s64(v263, v258), v266);
  v269 = vorrq_s8(v245, v210);
  v270 = veorq_s8(vaddq_s64(v264, v259), v266);
  v271 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v249, 0x38uLL), v249, 8uLL), v260), v266);
  v272 = vsraq_n_u64(vshlq_n_s64(v258, 3uLL), v258, 0x3DuLL);
  v273 = vsraq_n_u64(vshlq_n_s64(v259, 3uLL), v259, 0x3DuLL);
  v274 = vsraq_n_u64(vshlq_n_s64(v260, 3uLL), v260, 0x3DuLL);
  v275 = vorrq_s8(v255, v207);
  v276 = veorq_s8(v271, v274);
  v277 = veorq_s8(v270, v273);
  v278 = veorq_s8(v268, v272);
  v279 = veorq_s8(v267, vsraq_n_u64(vshlq_n_s64(v257, 3uLL), v257, 0x3DuLL));
  v280 = vsubq_s64(v265, vorrq_s8(v242, v210));
  v281 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v267, 0x38uLL), v267, 8uLL), v279);
  v282 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v268, 0x38uLL), v268, 8uLL), v278);
  v283 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v270, 0x38uLL), v270, 8uLL), v277);
  v284 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v271, 0x38uLL), v271, 8uLL), v276);
  v285 = vsubq_s64(v256, vorrq_s8(v247, v210));
  v286 = vdupq_n_s64(0x44533E486510C9DEuLL);
  v287 = vsubq_s64(v275, vorrq_s8(v255, v210));
  v288 = vaddq_s64(v285, v210);
  v289 = vaddq_s64(vsubq_s64(v261, v269), v210);
  v290 = vaddq_s64(v280, v210);
  v291 = vaddq_s64(v287, v210);
  v292 = vdupq_n_s64(a3);
  v293 = veorq_s8(v290, v292);
  v294 = veorq_s8(v289, v292);
  v295 = veorq_s8(v288, v292);
  v296 = veorq_s8(v291, v292);
  v297 = vdupq_n_s64(0x38uLL);
  v298 = veorq_s8(v295, v237);
  v299 = vdupq_n_s64(0xDDD660DBCD779B10);
  v300 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v281, v281), v286), v281), v299);
  v301 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v282, v282), v286), v282), v299);
  v302 = veorq_s8(v294, v236);
  v303 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v283, v283), v286), v283), v299);
  v304 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v284, v284), v286), v284), v299);
  v305 = vdupq_n_s64(0xF1E910203B8E36B3);
  v306 = veorq_s8(v304, v305);
  v307 = veorq_s8(v293, v233);
  v308 = veorq_s8(v303, v305);
  v309 = veorq_s8(v301, v305);
  v310 = veorq_s8(v300, v305);
  v311 = veorq_s8(v310, vsraq_n_u64(vshlq_n_s64(v279, 3uLL), v279, 0x3DuLL));
  v312 = veorq_s8(v309, vsraq_n_u64(vshlq_n_s64(v278, 3uLL), v278, 0x3DuLL));
  v313 = veorq_s8(v308, vsraq_n_u64(vshlq_n_s64(v277, 3uLL), v277, 0x3DuLL));
  v314 = veorq_s8(v306, vsraq_n_u64(vshlq_n_s64(v276, 3uLL), v276, 0x3DuLL));
  v315 = veorq_s8(v296, v251);
  v316 = vsraq_n_u64(vshlq_n_s64(v295, 0x38uLL), v295, 8uLL);
  v317 = vsraq_n_u64(vshlq_n_s64(v306, 0x38uLL), v306, 8uLL);
  v318 = vsraq_n_u64(vshlq_n_s64(v294, 0x38uLL), v294, 8uLL);
  v319 = vdupq_n_s64(0x1B5DE9094BAFA51AuLL);
  v320 = vsraq_n_u64(vshlq_n_s64(v293, 0x38uLL), v293, 8uLL);
  v321 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v310, 0x38uLL), v310, 8uLL), v311), v319);
  v322 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v309, 0x38uLL), v309, 8uLL), v312), v319);
  v323 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v308, 0x38uLL), v308, 8uLL), v313), v319);
  v324 = veorq_s8(vaddq_s64(v317, v314), v319);
  v325 = vsraq_n_u64(vshlq_n_s64(v296, 0x38uLL), v296, 8uLL);
  v326 = vsraq_n_u64(vshlq_n_s64(v311, 3uLL), v311, 0x3DuLL);
  v327 = vsraq_n_u64(vshlq_n_s64(v312, 3uLL), v312, 0x3DuLL);
  v328 = vaddq_s64(v320, v307);
  v329 = vsraq_n_u64(vshlq_n_s64(v313, 3uLL), v313, 0x3DuLL);
  v330 = vdupq_n_s64(v16);
  v331 = vaddq_s64(v325, v315);
  v332 = veorq_s8(v324, vsraq_n_u64(vshlq_n_s64(v314, 3uLL), v314, 0x3DuLL));
  v333 = vsraq_n_u64(vshlq_n_s64(v324, 0x38uLL), v324, 8uLL);
  v334 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v323, 0x38uLL), v323, 8uLL), veorq_s8(v323, v329));
  v335 = vaddq_s64(v333, v332);
  v336 = vdupq_n_s64(0xC437C7327FD12F34);
  v337 = vshlq_u64(veorq_s8(v328, v330), vnegq_s64(vandq_s8(vshlq_n_s64(v25, 3uLL), v297)));
  v338 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v321, 0x38uLL), v321, 8uLL), veorq_s8(v321, v326)), v336), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), v297)));
  v339 = vshlq_u64(veorq_s8(vaddq_s64(v316, v298), v330), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), v297)));
  v340 = vshlq_u64(veorq_s8(v331, v330), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v297)));
  v343.val[3] = veorq_s8(v339, vshlq_u64(veorq_s8(v335, v336), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), v297))));
  v343.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v318, v302), v330), vnegq_s64(vandq_s8(vshlq_n_s64(v24, 3uLL), v297))), vshlq_u64(veorq_s8(v334, v336), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), v297))));
  v343.val[0] = veorq_s8(v337, vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v322, 0x38uLL), v322, 8uLL), veorq_s8(v322, v327)), v336), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), v297))));
  v341 = STACK[0x420] == v19;
  v343.val[2] = veorq_s8(v340, v338);
  *v32.i64[1] = veor_s8(vrev64_s8(*&vqtbl4q_s8(v343, xmmword_100F523B0)), STACK[0x430]);
  return (*(v9 + 8 * ((49871 * v341) ^ v11)))();
}