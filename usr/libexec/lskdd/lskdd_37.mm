uint64_t sub_100AFD758()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x59AE)))();
  STACK[0xB528] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_100AFD790(uint64_t a1, uint64_t a2)
{
  STACK[0x1930] = 0;
  STACK[0x1910] = *(v2 + 19896);
  return (*(v2 + 38568))(2174744536, a2, 2120264440, 0x308E083E0C524CBELL);
}

uint64_t sub_100AFD8D8()
{
  LODWORD(STACK[0xF50]) = -143155721;
  LOWORD(STACK[0x19BE]) = v0;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_100AFD9A4()
{
  v5 = 551690071 * ((~(v2 | 0x77ADC20D1AA2DDAELL) + (v2 & 0x77ADC20D1AA2DDAELL)) ^ 0xF9CF6F3CABB07106);
  v6 = (LODWORD(STACK[0x2B4]) ^ 0x30) - v5;
  v7 = LODWORD(STACK[0x2B4]) - v5;
  *(v4 - 212) = v5 ^ LODWORD(STACK[0x2B0]);
  *(v4 - 208) = v6;
  *(v4 - 204) = v7;
  *(v4 - 200) = v5;
  *(v4 - 192) = (v3 & 7 ^ 0x4E74828Au) - v5;
  *(v4 - 184) = v5 + 1316258442;
  *(v4 - 216) = v5 ^ 0xBFAEBE85;
  v8 = (*(v0 + 8 * (v1 + 503385683)))(v4 - 216);
  return (*(v0 + 8 * *(v4 - 196)))(v8);
}

uint64_t sub_100AFDAE8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x3AD8] = 0x3084AC9F19EA61CBLL;
  STACK[0x3AE8] = 0xFB08B358A5FF987;
  v8 = STACK[0x3AF0] + a3;
  STACK[0x39E8] = v8 + 156;
  STACK[0x37A0] = v8;
  STACK[0x3798] = v8 + 140;
  v9 = *(v7 + 8 * v6);
  LODWORD(STACK[0x3AC8]) = ((v6 + 2093244143) & 0x833B7CFF) - 52;
  return v9(&STACK[0x5600], 54, 1266205, a4, 6784, a6, 154, 217);
}

void sub_100AFDBC4(uint64_t a1)
{
  v1 = *(a1 + 4) + 16169987 * ((2 * (a1 & 0x56DAB97D) - a1 - 1457174910) ^ 0xFCAB73AA);
  v292 = *(a1 + 8);
  v2 = *(&off_101353600 + v1 - 24857);
  v294 = veorq_s8(**(a1 + 16), xmmword_1012372C0);
  v3 = v1;
  v4 = *(&off_101353600 + (v1 ^ 0x6506)) - 4;
  LOBYTE(v1) = v4[v294.u8[4] ^ 0xD0] + 13;
  v5 = v1 & 0x16 ^ 0xB8;
  v6 = *(&off_101353600 + v3 - 25202);
  v7 = v1 ^ (2 * ((v1 ^ 0x24) & (2 * ((v1 ^ 0x24) & (2 * ((v1 ^ 0x24) & (2 * ((v1 ^ 0x24) & (2 * ((v1 ^ 0x24) & (2 * v5) ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5));
  LOBYTE(v1) = *(v6 + (v294.u8[6] ^ 0x72)) - 63;
  v8 = v1 & 0xEE ^ 0x4B;
  v9 = v1 ^ (2 * ((v1 ^ 0x58) & (2 * ((v1 ^ 0x58) & (2 * ((v1 ^ 0x58) & (2 * ((v1 ^ 0x58) & (2 * ((v1 ^ 0x58) & (2 * (v8 ^ v1 & 0x36)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8));
  v10 = v4[v294.u8[12] ^ 0xF9];
  v11 = (((4 * v10) ^ 8) & ~(8 * v10) ^ (2 * v10)) & 0xA;
  v12 = v10 - (((v11 ^ 0x39) + 62) ^ (v11 | 0xA5) ^ ((v11 ^ 0xE7) - 28));
  v13 = v4[v294.u8[0] ^ 0xEELL] + 13;
  v14 = v13 & 0x16 ^ 0x38;
  v15 = (((v13 ^ 0x24) & (2 * ((v13 ^ 0x24) & (2 * ((v13 ^ 0x24) & (2 * ((v13 ^ 0x24) & (2 * ((v13 ^ 0x24) & (2 * v14) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14) << 25) ^ (v13 << 24);
  LODWORD(v4) = v4[v294.u8[8] ^ 0x72];
  v16 = v4 & 0xFFFFFF95 ^ 0xFFFFFF81;
  v17 = (((2 * v4) & 0x26 ^ 6) & 2 | v16) ^ ((2 * v4) & 0x26 ^ 6) & v4;
  LODWORD(v4) = v4 ^ (2 * ((v4 ^ 0x12) & (2 * ((v4 ^ 0x12) & (2 * ((v4 ^ 0x12) & (2 * ((v4 ^ 0x12) & (2 * ((v16 & 0xFFFFFFFD | (2 * (v17 & 1))) ^ v4 & (2 * v17))) ^ v16)) ^ v16)) ^ v16)) ^ v16));
  LODWORD(v4) = (((v4 ^ 0x6E) - 11) ^ ((v4 ^ 0xFFFFFFA7) + 62) ^ ((v4 ^ 0x40) - 37)) - 45;
  v18 = v4 & 0xFFFFFFDB ^ 0xFFFFFF91;
  v19 = (v4 ^ (2 * ((v4 ^ 0x38) & (2 * ((v4 ^ 0x38) & (2 * ((v4 ^ 0x38) & (2 * ((v4 ^ 0x38) & (2 * (v4 & (2 * (((2 * v4) & 0x72 ^ 0x62) & v4 ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ 0xC2) << 24;
  v20 = *(&off_101353600 + (v3 ^ 0x6137)) - 4;
  v21 = v20[v294.u8[3] ^ 0x9CLL];
  v22 = (v15 ^ 0x8DE9AA7A) & (v21 ^ 0xFFFFAA6B) | v21 & 0x85;
  v23 = *(v6 + (v294.u8[14] ^ 0x6ALL)) - 63;
  v24 = v23 & 0xFFFFFFB2 ^ 0xFFFFFFBD;
  v25 = v23 ^ (2 * ((v23 ^ 0x58) & (2 * ((v23 ^ 0x58) & (2 * ((v23 ^ 0x58) & (2 * ((v23 ^ 0x58) & (2 * ((v23 ^ 0x58) & (2 * ((v23 ^ 0x58) & 0x2A ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24));
  v26 = v25 & 0xF8;
  v25 ^= 0x74u;
  v27 = (v25 >> 5) | 0x80;
  v28 = v25 ^ (v26 >> 3);
  LOBYTE(v26) = *(v6 + (v294.u8[2] ^ 0x46));
  v291 = v28 ^ v27;
  LOBYTE(v28) = (62 - v26) & 0x58 | 0x85;
  LOBYTE(v26) = v26 - 63;
  LOBYTE(v28) = v28 ^ v26 & 0xAA;
  LOBYTE(v28) = v26 ^ (2 * ((v26 ^ 0x58) & (2 * ((v26 ^ 0x58) & (2 * ((v26 ^ 0x58) & (2 * ((v26 ^ 0x58) & (2 * ((v26 ^ 0x58) & (2 * ((v26 ^ 0x58) & (2 * v28) ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28));
  v29 = (((v28 ^ (v28 >> 5) ^ (v28 >> 3)) << 8) ^ 0x7DB774E3) & (v22 ^ 0x1E16550C);
  v30 = v20[v294.u8[15] ^ 0x67];
  v31 = v20[v294.u8[7] ^ 0xELL];
  LODWORD(v20) = (((v19 ^ 0xEFFFFFFF) & (((*(v2 + (v294.u8[9] ^ 0xALL)) ^ v294.u8[9]) << 16) ^ 0x366059CA) | v19 & 0xC9000000) ^ 0x922E140F) & (v20[v294.u8[11]] ^ 0xFFFF5D4A) | v20[v294.u8[11]] & 0x3A;
  v32 = *(v2 + (v294.u8[5] ^ 0x85));
  v33 = (((v20 ^ 0xADE04DD5) - (v20 ^ 0xADE04DB5)) ^ 0xFFFFFFC0) + (v20 ^ 0xADE04DD5);
  LODWORD(v20) = (*(v2 + (v294.u8[1] ^ 0x74)) ^ (v294.i8[1] - ((2 * v294.i8[1]) & 0x4A) + 37) ^ 0x6E) << 16;
  v34 = ((v29 ^ (v22 & 0x8208201C | 0x4017C583)) & ~v20 | v20 & 0x570000) ^ 0xBBCF20F7;
  v290 = v3;
  v35 = *(&off_101353600 + v3 - 24792) - 4;
  LODWORD(v20) = *&v35[4 * (*(v2 + (v294.u8[13] ^ 0xA1)) ^ (v294.i8[13] - ((2 * v294.i8[13]) & 0x4A) + 37) ^ 0xD)];
  HIDWORD(v36) = v20 ^ 0xEEEEEEEE;
  LODWORD(v36) = v20 ^ 0xA8CF440;
  LODWORD(v20) = v36 >> 6;
  v37 = *(&off_101353600 + (v3 ^ 0x607F)) - 8;
  v38 = *&v37[4 * (((*(v6 + (v294.u8[10] ^ 0x8FLL)) + 25) ^ ((*(v6 + (v294.u8[10] ^ 0x8FLL)) + 25) >> 5) ^ ((*(v6 + (v294.u8[10] ^ 0x8FLL)) + 25) >> 3) ^ BYTE1(v33)) ^ 0xB5)];
  HIDWORD(v36) = ~v38;
  LODWORD(v36) = v38 ^ 0x1F31BDD4;
  v39 = *(&off_101353600 + (v3 ^ 0x66F8)) - 12;
  v40 = *(&off_101353600 + v3 - 25498) - 12;
  LODWORD(v31) = ((2 * *&v40[4 * (v31 ^ 0x83)]) & 0xB3D89D4C ^ 0xFDFF62BF) - 2131866273 + (((*&v40[4 * (v31 ^ 0x83)] ^ 0x685AA547) - 1750771015) ^ ((*&v40[4 * (v31 ^ 0x83)] ^ 0x44CEAC38) - 1154395192) ^ ((*&v40[4 * (v31 ^ 0x83)] ^ 0xB95F7C7) - 194377671));
  LODWORD(v2) = v20 ^ (*&v39[4 * HIBYTE(v34)] - 135825557) ^ v31 ^ (63538442 * v31) ^ (v36 >> 1);
  LODWORD(v20) = *&v35[4 * BYTE2(v34)];
  HIDWORD(v36) = v20 ^ 0xEEEEEEEE;
  LODWORD(v36) = v20 ^ 0xA8CF440;
  LODWORD(v31) = *&v37[4 * (v291 ^ 0x5C)];
  LODWORD(v20) = __ROR4__((v36 >> 6) ^ 0x3E2800C3, 6) ^ 0xCF8A003;
  HIDWORD(v36) = ~v31;
  LODWORD(v36) = v31 ^ 0x1F31BDD4;
  LODWORD(v31) = (v36 >> 1) ^ (*&v39[4 * (v7 ^ 0x30)] - 135825557);
  v41 = *&v40[4 * (v33 ^ 0x15)] ^ 0x7EEDB01E;
  v42 = v31 ^ v41 ^ (63538442 * v41) ^ __ROR4__(v20, 26);
  LODWORD(v20) = *&v35[4 * (v294.i8[5] ^ 0x92 ^ v32)];
  HIDWORD(v36) = v20 ^ 0xEEEEEEEE;
  LODWORD(v36) = v20 ^ 0xA8CF440;
  LODWORD(v20) = v36 >> 6;
  LODWORD(v31) = *&v37[4 * BYTE1(v34)];
  HIDWORD(v36) = ~v31;
  LODWORD(v36) = v31 ^ 0x1F31BDD4;
  v12 -= 107;
  LOBYTE(v19) = v12 & 0xA0 | 0x1B;
  v43 = v12 ^ (2 * ((v12 ^ 0x32) & (2 * ((v12 ^ 0x32) & (2 * ((v12 ^ 0x32) & (2 * ((v12 ^ 0x32) & (2 * ((v12 ^ 0x32) & (2 * ((v12 ^ 0x32) & 0x12 ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19));
  LODWORD(v31) = *&v40[4 * (v30 ^ 0x23)] ^ 0x7EEDB01E;
  v44 = *&v35[4 * (BYTE2(v33) ^ 0x64)];
  LODWORD(v31) = v20 ^ (v36 >> 1) ^ v31 ^ (63538442 * v31) ^ (*&v39[4 * (HIBYTE(v33) ^ 0x13)] - 135825557);
  HIDWORD(v36) = v44 ^ 0xEEEEEEEE;
  LODWORD(v36) = v44 ^ 0xA8CF440;
  LODWORD(v20) = (v36 >> 6) ^ (*&v39[4 * (v43 ^ 0x34)] - 135825557);
  v45 = *&v37[4 * ((v9 ^ (v9 >> 5) ^ (v9 >> 3)) ^ 0x8B)];
  v46 = *&v40[4 * v34] ^ 0x7EEDB01E;
  LODWORD(v20) = v20 ^ (v45 >> 1) ^ (~v45 << 31) ^ v46 ^ (63538442 * v46);
  v47 = v20 ^ 0xF5AD58C8;
  v48 = *&v35[4 * ((v20 ^ 0xF5AD58C8) >> 16)];
  v49 = v31 ^ 0xFF0221FE;
  HIDWORD(v36) = v48 ^ 0xEEEEEEEE;
  LODWORD(v36) = v48 ^ 0xA8CF440;
  v50 = v36 >> 6;
  LODWORD(v31) = *&v37[4 * ((v31 ^ 0x21FE) >> 8)];
  HIDWORD(v36) = ~v31;
  LODWORD(v36) = v31 ^ 0x1F31BDD4;
  v51 = *&v40[4 * (v42 ^ 0xF4)] ^ 0x7EEDB01E;
  LODWORD(v30) = *&v35[4 * (BYTE2(v2) ^ 0x23)];
  v52 = v50 ^ (*&v39[4 * ((v2 ^ 0x6EB20609) >> 24)] - 135825557) ^ (v36 >> 1) ^ v51;
  HIDWORD(v36) = v30 ^ 0xEEEEEEEE;
  LODWORD(v36) = v30 ^ 0xA8CF440;
  v53 = v52 ^ (63538442 * v51);
  v54 = __ROR4__((v36 >> 6) ^ (*&v39[4 * (HIBYTE(v42) ^ 0x3F)] - 135825557), 24) ^ 0xF1346B65;
  LODWORD(v6) = *&v37[4 * ((v20 ^ 0x58C8) >> 8)];
  HIDWORD(v36) = ~v6;
  LODWORD(v36) = v6 ^ 0x1F31BDD4;
  v55 = *&v40[4 * (v49 ^ 0xD8)] ^ 0x7EEDB01E;
  LODWORD(v30) = *&v35[4 * (BYTE2(v42) ^ 0xC7)];
  v56 = v55 ^ (63538442 * v55) ^ (v36 >> 1) ^ __ROR4__(v54, 8);
  HIDWORD(v36) = v30 ^ 0xEEEEEEEE;
  LODWORD(v36) = v30 ^ 0xA8CF440;
  LODWORD(v31) = *&v37[4 * (((v2 ^ 0x609) >> 8) ^ 0xB4)];
  LODWORD(v20) = *&v40[4 * (v20 ^ 0x10)] ^ 0x7EEDB01E;
  v57 = (v36 >> 6) ^ (*&v39[4 * HIBYTE(v49)] - 135825557) ^ (v31 >> 1) ^ (~v31 << 31) ^ v20 ^ (63538442 * v20);
  LODWORD(v31) = *&v35[4 * BYTE2(v49)];
  HIDWORD(v36) = v31 ^ 0xEEEEEEEE;
  LODWORD(v36) = v31 ^ 0xA8CF440;
  LODWORD(v20) = *&v37[4 * (BYTE1(v42) ^ 0xA2)];
  LODWORD(v31) = (v36 >> 6) ^ (*&v39[4 * HIBYTE(v47)] - 135825557);
  HIDWORD(v36) = ~v20;
  LODWORD(v36) = v20 ^ 0x1F31BDD4;
  LODWORD(v20) = ((v36 >> 1) ^ -(v36 >> 1) ^ (v31 - ((v36 >> 1) ^ v31))) + v31;
  LODWORD(v31) = *&v40[4 * (v2 ^ 0xD1)] ^ 0x7EEDB01E;
  v58 = (63538442 * v31) ^ v31 ^ v20;
  v59 = v53 ^ 0x3ECC02A4;
  v60 = HIBYTE(v53) ^ 0x54;
  LODWORD(v20) = *&v35[4 * (BYTE2(v58) ^ 0x28)];
  HIDWORD(v36) = v20 ^ 0xEEEEEEEE;
  LODWORD(v36) = v20 ^ 0xA8CF440;
  v61 = v36 >> 6;
  v62 = v57 ^ 0xF98DEEA;
  LODWORD(v20) = *&v37[4 * ((v57 ^ 0xDEEA) >> 8)];
  HIDWORD(v36) = ~v20;
  LODWORD(v36) = v20 ^ 0x1F31BDD4;
  v63 = v36 >> 1;
  v64 = BYTE2(v59);
  if (BYTE2(v59) >= 0x90u)
  {
    v64 = BYTE2(v59) - 144;
  }

  v65 = HIWORD(v59) + 112;
  if (BYTE2(v59) < 0x90u)
  {
    v65 = HIWORD(v59);
  }

  if (v64)
  {
    v66 = 0;
  }

  else
  {
    v66 = v65;
  }

  v67 = BYTE2(v59) - v66;
  v68 = v61 ^ (*&v39[4 * v60] - 135825557) ^ v63;
  v69 = *&v40[4 * (v56 ^ 0x62)] ^ 0x7EEDB01E;
  v70 = v68 ^ v69 ^ (63538442 * v69);
  v71 = v58 ^ 0x12B92428;
  v72 = *&v37[4 * ((v58 ^ 0x2428) >> 8)];
  HIDWORD(v74) = ~v72;
  LODWORD(v74) = v72 ^ 0x1F31BDD4;
  v73 = v74 >> 1;
  v75 = *&v35[4 * ((v56 ^ 0x490AA762) >> 16)];
  HIDWORD(v74) = v75 ^ 0xEEEEEEEE;
  LODWORD(v74) = v75 ^ 0xA8CF440;
  v76 = (v74 >> 6) ^ (*&v39[4 * (HIBYTE(v57) ^ 0xD8)] - 135825557);
  v77 = *&v37[4 * (BYTE1(v59) ^ 0xB4)];
  HIDWORD(v74) = ~v77;
  LODWORD(v74) = v77 ^ 0x1F31BDD4;
  v78 = *&v40[4 * (v58 ^ 0xF0)] ^ 0x7EEDB01E;
  v79 = v76 ^ (v74 >> 1) ^ v78 ^ (63538442 * v78);
  v80 = *&v37[4 * ((v56 ^ 0xA762) >> 8)];
  HIDWORD(v74) = ~v80;
  LODWORD(v74) = v80 ^ 0x1F31BDD4;
  v81 = *&v35[4 * (BYTE2(v62) ^ 0xDA)];
  v82 = *&v40[4 * v59] ^ 0x7EEDB01E;
  v83 = (*&v39[4 * HIBYTE(v71)] - 135825557) ^ (v81 << 26) ^ (v81 >> 6) ^ (v74 >> 1) ^ v82 ^ (63538442 * v82);
  v84 = *&v35[4 * (v67 ^ 0x91)];
  v85 = (*&v39[4 * (HIBYTE(v56) ^ 0x23)] - 135825557) ^ (v84 >> 6) ^ (v84 << 26);
  v86 = *&v40[4 * (v62 ^ 0xFE)] ^ 0x7EEDB01E;
  v87 = (v79 & 0x400000 | 0xECAFA403) ^ v79 & 0xFFBFFFFF;
  HIDWORD(v74) = v83 ^ 0x560000;
  LODWORD(v74) = v83 ^ 0x560000;
  v88 = *&v35[4 * (__ROR4__((v74 >> 21) & 0xF8000007 ^ 0xFB90B9B4, 27) ^ 0x7217360E)];
  HIDWORD(v74) = v88 ^ 0xEEEEEEEE;
  LODWORD(v74) = v88 ^ 0xA8CF440;
  v89 = v74 >> 6;
  v90 = *&v37[4 * (BYTE1(v87) ^ 0xB4)];
  v91 = v85 ^ v73 ^ v86 ^ (63538442 * v86) ^ 0xBD939550;
  HIDWORD(v74) = ~v90;
  LODWORD(v74) = v90 ^ 0x1F31BDD4;
  v92 = *&v40[4 * (v85 ^ v73 ^ v86 ^ (10 * v86) ^ 0x50)] ^ 0x7EEDB01E;
  v93 = v89 ^ (*&v39[4 * (HIBYTE(v70) ^ 0xB0)] - 135825557) ^ (v74 >> 1) ^ v92 ^ (63538442 * v92);
  v94 = *&v35[4 * (BYTE2(v70) ^ 0xB1)];
  HIDWORD(v74) = v94 ^ 0xEEEEEEEE;
  LODWORD(v74) = v94 ^ 0xA8CF440;
  v95 = v74 >> 6;
  v96 = *&v37[4 * (((v83 ^ 0x33D1) >> 8) ^ 0xA7)];
  HIDWORD(v74) = ~v96;
  LODWORD(v74) = v96 ^ 0x1F31BDD4;
  v97 = *&v40[4 * (v87 ^ 0xD8)] ^ 0x7EEDB01E;
  v98 = v95 ^ (*&v39[4 * HIBYTE(v91)] - 135825557) ^ (v74 >> 1) ^ v97 ^ (63538442 * v97);
  v99 = *&v35[4 * BYTE2(v91)];
  HIDWORD(v74) = v99 ^ 0xEEEEEEEE;
  LODWORD(v74) = v99 ^ 0xA8CF440;
  v100 = v74 >> 6;
  v101 = *&v37[4 * (BYTE1(v70) ^ 0x9E)];
  HIDWORD(v74) = ~v101;
  LODWORD(v74) = v101 ^ 0x1F31BDD4;
  v102 = *&v40[4 * (v83 ^ 0xF3)] ^ 0x7EEDB01E;
  v103 = v100 ^ (*&v39[4 * (HIBYTE(v87) ^ 0x6A)] - 135825557) ^ (v74 >> 1) ^ v102 ^ (63538442 * v102);
  v104 = *&v35[4 * (BYTE2(v87) ^ 0x91)];
  HIDWORD(v74) = v104 ^ 0xEEEEEEEE;
  LODWORD(v74) = v104 ^ 0xA8CF440;
  v105 = v74 >> 6;
  v106 = *&v37[4 * BYTE1(v91)];
  HIDWORD(v74) = ~v106;
  LODWORD(v74) = v106 ^ 0x1F31BDD4;
  v107 = *&v40[4 * (v70 ^ 0x2E)] ^ 0x7EEDB01E;
  v108 = v105 ^ (*&v39[4 * (HIBYTE(v83) ^ 0x6A)] - 135825557) ^ (v74 >> 1) ^ v107 ^ (63538442 * v107);
  v109 = *&v35[4 * ((v108 ^ 0x29CC800Du) >> 16)];
  v110 = __ROR4__(v103, 12) ^ 0xC4832B45;
  HIDWORD(v74) = v109 ^ 0xEEEEEEEE;
  LODWORD(v74) = v109 ^ 0xA8CF440;
  v111 = v74 >> 6;
  v113 = __PAIR64__(v110, __ROR4__(v98, 20));
  v112 = v113 ^ 0xFABA011F;
  LODWORD(v113) = v110;
  v114 = v113 >> 20;
  v115 = v114 ^ 0xA6BD69E6;
  v116 = *&v37[4 * ((v114 ^ 0x69E6) >> 8)];
  HIDWORD(v113) = ~v116;
  LODWORD(v113) = v116 ^ 0x1F31BDD4;
  v117 = v113 >> 1;
  HIDWORD(v113) = v112;
  LODWORD(v113) = v112;
  v118 = v113 >> 12;
  v119 = *&v40[4 * ((v113 >> 12) ^ 0x23)] ^ 0x7EEDB01E;
  v120 = v111 ^ (*&v39[4 * (HIBYTE(v93) ^ 0x91)] - 135825557) ^ v119 ^ v117 ^ (63538442 * v119);
  v121 = *&v35[4 * (BYTE2(v93) ^ 0x3E)];
  HIDWORD(v113) = v121 ^ 0xEEEEEEEE;
  LODWORD(v113) = v121 ^ 0xA8CF440;
  v122 = v113 >> 6;
  v123 = v114 ^ 0xE6;
  v124 = v123 >= 0xE1;
  if (v123 >= 0xE1)
  {
    v123 -= 225;
  }

  v125 = v115 + 31;
  if (!v124)
  {
    v125 = v114 ^ 0xE6;
  }

  v126 = v123 == 0;
  v127 = *&v37[4 * (BYTE1(v108) ^ 0x34)];
  HIDWORD(v128) = ~v127;
  LODWORD(v128) = v127 ^ 0x1F31BDD4;
  v129 = v122 ^ (v128 >> 1) ^ (*&v39[4 * (HIBYTE(v118) ^ 0xB3)] - 135825557);
  if (v126)
  {
    v130 = v125;
  }

  else
  {
    v130 = 0;
  }

  v131 = *&v40[4 * ((v115 - v130) ^ 0xD8)] ^ 0x7EEDB01E;
  v132 = v129 ^ v131 ^ (63538442 * v131);
  v133 = *&v35[4 * (BYTE2(v118) ^ 0xE8)];
  v134 = (v108 ^ 0x29CC800Du) >> 24;
  v135 = *&v37[4 * BYTE1(v93)];
  HIDWORD(v136) = ~v135;
  LODWORD(v136) = v135 ^ 0x1F31BDD4;
  v137 = (*&v39[4 * HIBYTE(v115)] - 135825557) ^ (v133 >> 6) ^ (v136 >> 1) ^ ((v133 ^ 0xA8CF46E) << (v134 & 0x1A) << (v134 & 0x1A ^ 0x1A));
  v138 = *&v40[4 * (v108 ^ 0xD5)] ^ 0x7EEDB01E;
  v139 = v137 ^ v138 ^ (63538442 * v138);
  v140 = *&v35[4 * (BYTE2(v114) ^ 0x2C)];
  HIDWORD(v136) = v140 ^ 0xEEEEEEEE;
  LODWORD(v136) = v140 ^ 0xA8CF440;
  v141 = v136 >> 6;
  v142 = *&v37[4 * (BYTE1(v118) ^ 0x10)];
  HIDWORD(v136) = ~v142;
  LODWORD(v136) = v142 ^ 0x1F31BDD4;
  v143 = v141 ^ (*&v39[4 * (v134 ^ 0x6A)] - 135825557) ^ (v136 >> 1);
  v144 = *&v40[4 * (v93 ^ 0x96)] ^ 0x7EEDB01E;
  v145 = v143 ^ v144 ^ (63538442 * v144) ^ 0xAA4B368F;
  v146 = *&v35[4 * BYTE2(v145)];
  HIDWORD(v136) = v146 ^ 0xEEEEEEEE;
  LODWORD(v136) = v146 ^ 0xA8CF440;
  v147 = (v136 >> 6) ^ (*&v39[4 * ((v120 ^ 0xC21888A4) >> 24)] - 135825557);
  v148 = BYTE2(v139) ^ 0xBA;
  v149 = *&v37[4 * ((v139 ^ 0x3ED0) >> 8)];
  HIDWORD(v136) = ~v149;
  LODWORD(v136) = v149 ^ 0x1F31BDD4;
  v150 = *&v40[4 * (v132 ^ 0x39)] ^ 0x7EEDB01E;
  v151 = v147 ^ (v136 >> 1) ^ v150 ^ (63538442 * v150);
  v152 = *&v35[4 * ((v120 ^ 0xC21888A4) >> 16)];
  HIDWORD(v136) = v152 ^ 0xEEEEEEEE;
  LODWORD(v136) = v152 ^ 0xA8CF440;
  v153 = v136 >> 6;
  v154 = *&v37[4 * (BYTE1(v145) ^ 0xB4)];
  HIDWORD(v136) = ~v154;
  LODWORD(v136) = v154 ^ 0x1F31BDD4;
  v155 = v136 >> 1;
  HIDWORD(v136) = v139 ^ 0x4BBA3ED0;
  LODWORD(v136) = v139;
  v156 = v153 ^ v155;
  v157 = __ROR4__((v136 >> 5) & 0xF8000007 ^ 0xD2B3E6AB, 27) ^ 0x567CD562;
  v158 = *&v35[4 * (BYTE2(v132) ^ 0x36)];
  HIDWORD(v136) = v158 ^ 0xEEEEEEEE;
  LODWORD(v136) = v158 ^ 0xA8CF440;
  v159 = v136 >> 6;
  v160 = *&v39[4 * (HIBYTE(v139) ^ 0x21)] - 135825557;
  v161 = (v136 >> 6) & 0x4000000;
  if ((v161 & v160) != 0)
  {
    LODWORD(v161) = -v161;
  }

  v162 = v161 + v160;
  v163 = *&v37[4 * (BYTE1(v120) ^ 0x88)];
  HIDWORD(v165) = ~v163;
  LODWORD(v165) = v163 ^ 0x1F31BDD4;
  v164 = v165 >> 1;
  v166 = HIBYTE(v145) - 219;
  if (HIBYTE(v145) < 0xDBu)
  {
    v166 = HIBYTE(v145);
  }

  if (HIBYTE(v145) <= 0xDAu)
  {
    v167 = 0;
  }

  else
  {
    v167 = 219;
  }

  v168 = *&v40[4 * v145] ^ 0x7EEDB01E;
  v169 = v159 & 0xFBFFFFFF ^ v164 ^ v168 ^ (63538442 * v168) ^ v162;
  v170 = HIBYTE(v132) ^ 0x24;
  v171 = *&v37[4 * (BYTE1(v132) ^ 0x38)];
  HIDWORD(v172) = ~v171;
  LODWORD(v172) = v171 ^ 0x1F31BDD4;
  v173 = (*&v39[4 * ((v166 + v167) ^ 0x6A)] - 135825557) ^ (*&v35[4 * v148] << 26) ^ (*&v35[4 * v148] >> 6);
  v174 = *&v40[4 * (v120 ^ 0x7C)] ^ 0x7EEDB01E;
  v175 = v173 ^ v174 ^ (v172 >> 1) ^ (63538442 * v174);
  v176 = *&v35[4 * (((v175 ^ 0xB82A33D1) >> 16) ^ 0xC4)];
  HIDWORD(v172) = v176 ^ 0xEEEEEEEE;
  LODWORD(v172) = v176 ^ 0xA8CF440;
  v177 = v172 >> 6;
  v178 = *&v40[4 * v157] ^ 0x7EEDB01E;
  v179 = *&v37[4 * (BYTE1(v169) ^ 0xB6)];
  HIDWORD(v172) = ~v179;
  LODWORD(v172) = v179 ^ 0x1F31BDD4;
  v180 = v156 ^ v178 ^ (*&v39[4 * v170] - 135825557) ^ (63538442 * v178) ^ 0xF13187B1;
  v181 = *&v40[4 * ((v156 ^ v178 ^ (v39[4 * v170] + 107) ^ (10 * v178)) ^ 0x69)] ^ 0x7EEDB01E;
  v182 = v177 ^ (*&v39[4 * (((v151 ^ 0x25CFDC68u) >> 24) ^ 0x6A)] - 135825557) ^ v181 ^ (v172 >> 1) ^ (63538442 * v181);
  v183 = *&v35[4 * ((v151 ^ 0x25CFDC68u) >> 16)];
  HIDWORD(v172) = v183 ^ 0xEEEEEEEE;
  LODWORD(v172) = v183 ^ 0xA8CF440;
  v184 = v172 >> 6;
  v185 = *&v37[4 * (((v175 ^ 0x33D1) >> 8) ^ 0xC)];
  HIDWORD(v172) = ~v185;
  LODWORD(v172) = v185 ^ 0x1F31BDD4;
  v186 = v169 ^ 0x12B90214;
  v187 = *&v40[4 * (v169 ^ 0xCC)] ^ 0x7EEDB01E;
  v188 = v184 ^ (*&v39[4 * HIBYTE(v180)] - 135825557) ^ (v172 >> 1) ^ v187 ^ (63538442 * v187);
  v189 = *&v35[4 * BYTE2(v180)];
  HIDWORD(v172) = v189 ^ 0xEEEEEEEE;
  LODWORD(v172) = v189 ^ 0xA8CF440;
  v190 = v172 >> 6;
  v191 = *&v37[4 * (BYTE1(v151) ^ 0x68)];
  HIDWORD(v172) = ~v191;
  LODWORD(v172) = v191 ^ 0x1F31BDD4;
  v192 = *&v40[4 * (v175 ^ 0xAB)] ^ 0x7EEDB01E;
  v193 = HIBYTE(v175) ^ 0x4E;
  v194 = v190 ^ (*&v39[4 * HIBYTE(v186)] - 135825557) ^ (v172 >> 1) ^ v192;
  v195 = *&v35[4 * BYTE2(v186)];
  HIDWORD(v172) = v195 ^ 0xEEEEEEEE;
  LODWORD(v172) = v195 ^ 0xA8CF440;
  v196 = v172 >> 6;
  v197 = *&v37[4 * (BYTE1(v180) - ((v180 >> 7) & 0x168)) + 720];
  HIDWORD(v172) = ~v197;
  LODWORD(v172) = v197 ^ 0x1F31BDD4;
  v198 = v194 ^ ((31769221 * v192) << ((HIBYTE(v151) ^ 0x25) & 1) << !((HIBYTE(v151) ^ 0x25) & 1));
  v199 = (*&v39[4 * v193] - 135825557) ^ (v172 >> 1);
  v200 = (v182 ^ -v182 ^ (2042246359 - (v182 ^ 0x79BA34D7))) + 2042246359;
  v201 = *&v40[4 * (v151 ^ 0xB0)] ^ 0x7EEDB01E;
  v202 = v196 ^ v199 ^ v201 ^ (63538442 * v201);
  v203 = *&v35[4 * ((v202 ^ 0x9962399A) >> 16)];
  HIDWORD(v172) = v203 ^ 0xEEEEEEEE;
  LODWORD(v172) = v203 ^ 0xA8CF440;
  v204 = v172 >> 6;
  v205 = *&v37[4 * (BYTE1(v198) ^ 6)];
  HIDWORD(v172) = ~v205;
  LODWORD(v172) = v205 ^ 0x1F31BDD4;
  v206 = v172 >> 1;
  HIDWORD(v172) = v188 ^ 0xC3706CF5;
  LODWORD(v172) = v188 ^ 0xC3706CF5;
  v207 = __ROR4__((v172 >> 29) & 0xF8000007 ^ 0xDD2681CE, 27) ^ 0xA4D039B1;
  v208 = v204 ^ v206 ^ (*&v39[4 * (HIBYTE(v200) ^ 0x6A)] - 135825557);
  v209 = *&v40[4 * (v188 ^ 0xF5)] ^ 0x7EEDB01E;
  v210 = v208 ^ v209 ^ (63538442 * v209);
  v211 = *&v35[4 * (BYTE2(v200) ^ 0x91)];
  HIDWORD(v172) = v211 ^ 0xEEEEEEEE;
  LODWORD(v172) = v211 ^ 0xA8CF440;
  v212 = v172 >> 6;
  v213 = *&v37[4 * ((v202 ^ 0x399A) >> 8)];
  HIDWORD(v172) = ~v213;
  LODWORD(v172) = v213 ^ 0x1F31BDD4;
  v214 = v172 >> 1;
  v215 = *&v35[4 * (BYTE2(v188) ^ 0xE1)];
  HIDWORD(v172) = v215 ^ 0xEEEEEEEE;
  LODWORD(v172) = v215 ^ 0xA8CF440;
  v216 = v172 >> 6;
  v217 = v212 ^ (*&v39[4 * v207] - 135825557);
  v218 = *&v40[4 * (v198 ^ 0x89)] ^ 0x7EEDB01E;
  v219 = v214 ^ v218 ^ (63538442 * v218);
  v220 = *&v37[4 * (BYTE1(v200) ^ 0xB4)];
  HIDWORD(v172) = ~v220;
  LODWORD(v172) = v220 ^ 0x1F31BDD4;
  v221 = v172 >> 1;
  v222 = *&v40[4 * (v202 ^ 0x9A)];
  HIDWORD(v172) = v222 ^ 0x1FEB8;
  LODWORD(v172) = v222 ^ 0x27000000;
  LODWORD(v172) = __ROR4__((v172 >> 18) ^ 0x7FAF402C, 14);
  v223 = v216 ^ (*&v39[4 * (HIBYTE(v198) ^ 0xF4)] - 135825557) ^ v172 ^ 0x595DB01B ^ v221 ^ (63538442 * (v172 ^ 0x595DB01B));
  v224 = *&v35[4 * (BYTE2(v198) ^ 0x97)];
  HIDWORD(v172) = v224 ^ 0xEEEEEEEE;
  LODWORD(v172) = v224 ^ 0xA8CF440;
  v225 = v172 >> 6;
  v226 = *&v37[4 * (BYTE1(v188) ^ 0xD8)];
  HIDWORD(v172) = ~v226;
  LODWORD(v172) = v226 ^ 0x1F31BDD4;
  v227 = v225 ^ (*&v39[4 * (HIBYTE(v202) ^ 0xF3)] - 135825557);
  v228 = *&v40[4 * (((v182 ^ -v182 ^ (-41 - (v182 ^ 0xD7))) - 41) ^ 0xD8)] ^ 0x7EEDB01E;
  v229 = v227 ^ (v172 >> 1) ^ v228 ^ (63538442 * v228);
  v230 = *&v35[4 * (BYTE2(v229) ^ 0xEA)];
  HIDWORD(v172) = v230 ^ 0xEEEEEEEE;
  LODWORD(v172) = v230 ^ 0xA8CF440;
  v231 = v172 >> 6;
  v232 = *&v37[4 * (BYTE1(v223) ^ 0x5D)];
  HIDWORD(v172) = ~v232;
  LODWORD(v172) = v232 ^ 0x1F31BDD4;
  v233 = v217 ^ v219;
  v234 = *&v40[4 * (v233 ^ 0xD6)] ^ 0x7EEDB01E;
  v235 = v231 ^ (*&v39[4 * (HIBYTE(v210) ^ 0xD1)] - 135825557) ^ (v172 >> 1) ^ v234 ^ (63538442 * v234);
  v236 = *&v35[4 * (BYTE2(v210) ^ 0x37)];
  HIDWORD(v172) = v236 ^ 0xEEEEEEEE;
  LODWORD(v172) = v236 ^ 0xA8CF440;
  v237 = (v172 >> 6) ^ (*&v39[4 * ((v233 ^ 0xAD44DBD6) >> 24)] - 135825557);
  v238 = *&v37[4 * (BYTE1(v229) ^ 0xBC)];
  HIDWORD(v172) = ~v238;
  LODWORD(v172) = v238 ^ 0x1F31BDD4;
  v239 = *&v40[4 * (v223 ^ 0x50)] ^ 0x7EEDB01E;
  v240 = v237 ^ v239 ^ (v172 >> 1) ^ (63538442 * v239);
  v241 = *&v37[4 * (BYTE1(v210) ^ 0x61)];
  HIDWORD(v172) = ~v241;
  LODWORD(v172) = v241 ^ 0x1F31BDD4;
  v242 = (*&v39[4 * (HIBYTE(v223) ^ 0x4A)] - 135825557) ^ (*&v35[4 * (BYTE2(v233) ^ 0xD5)] >> 6) ^ (*&v35[4 * (BYTE2(v233) ^ 0xD5)] << 26) ^ (v172 >> 1);
  v243 = *&v40[4 * (v229 ^ 0x3F)];
  HIDWORD(v172) = v243 ^ 0x701FEB8;
  LODWORD(v172) = v243 ^ 0x20000000;
  LODWORD(v172) = __ROR4__((v172 >> 27) ^ 0x13CF7C91, 5);
  v244 = v242 ^ v172 ^ 0xD1723542 ^ (63538442 * (v172 ^ 0xD1723542));
  v245 = *&v35[4 * (BYTE2(v223) ^ 0x69)];
  HIDWORD(v172) = v245 ^ 0xEEEEEEEE;
  LODWORD(v172) = v245 ^ 0xA8CF440;
  v246 = v172 >> 6;
  v247 = *&v37[4 * (BYTE1(v233) ^ 0xDB)];
  HIDWORD(v172) = ~v247;
  LODWORD(v172) = v247 ^ 0x1F31BDD4;
  v248 = *&v40[4 * (v210 ^ 0x59)] ^ 0x7EEDB01E;
  v249 = v246 ^ (*&v39[4 * (HIBYTE(v229) ^ 0x10)] - 135825557) ^ (v172 >> 1) ^ v248 ^ (63538442 * v248);
  v250 = *(&off_101353600 + v290 - 25787) - 8;
  v251 = *&v250[4 * ((v235 ^ 0xF8BB10C0) >> 24)];
  HIDWORD(v172) = v251 ^ 0x2C1986B;
  LODWORD(v172) = v251 ^ 0xE0000000;
  v252 = v244 ^ 0xD388B76C;
  v253 = *(&off_101353600 + v290 - 24504);
  v254 = *(&off_101353600 + v290 - 25485);
  v255 = (v172 >> 28) ^ *(v254 + 4 * (((v249 ^ 0x669D3E19) >> 16) ^ 0x75u)) ^ (((v249 ^ 0x669D3E19) >> 16) - ((v249 >> 15) & 0x44) + 1346446882) ^ __ROR4__(((*(v253 + 4 * BYTE1(v252)) ^ 0x3349F020 ^ (4 * (*(v253 + 4 * BYTE1(v252)) ^ 0x3349F020))) & 0xFFFFFFE0 | (*(v253 + 4 * BYTE1(v252)) >> 30)) ^ __ROR4__(*(v253 + 4 * BYTE1(v252)) ^ 0x3349F020, 27) ^ 0xC27194EF, 5);
  v256 = v255 - ((2 * v255) & 0xFBC23316);
  v257 = v240 ^ 0xF0FCB8B4;
  v258 = *(&off_101353600 + (v290 ^ 0x662D)) - 4;
  v259 = (v256 + 2111904139) ^ *&v258[4 * (v240 ^ 0xF9)];
  v260 = *&v250[4 * ((v240 ^ 0xF0FCB8B4) >> 24)];
  HIDWORD(v172) = v260 ^ 0x2C1986B;
  LODWORD(v172) = v260 ^ 0xE0000000;
  v261 = v172 >> 28;
  v262 = *&v250[4 * ((v244 ^ 0xD388B76C) >> 24)];
  HIDWORD(v172) = v262 ^ 0x2C1986B;
  LODWORD(v172) = v262 ^ 0xE0000000;
  v263 = *(v253 + 4 * (BYTE1(v249) ^ 0xE3u)) ^ 0x3349F020;
  v264 = *(v254 + 4 * (((v235 ^ 0xF8BB10C0) >> 16) ^ 0x75u)) ^ (((v235 ^ 0xF8BB10C0) >> 16) - (((v235 ^ 0xF8BB10C0) >> 15) & 0x44) + 1346446882) ^ v261 ^ (v263 >> 3) ^ (v263 >> 5);
  v265 = v263 ^ *&v258[4 * (v244 ^ 0x21)] ^ (v264 - ((2 * v264) & 0xFBC23316) + 2111904139);
  v266 = *&v258[4 * (v249 ^ 0x19)] ^ 0xCC15F1CB;
  v267 = *(v253 + 4 * (BYTE1(v235) ^ 0xCDu)) ^ 0x3349F020;
  v268 = (BYTE2(v257) - ((v257 >> 15) & 0x44) + 1346446882) ^ *(v254 + 4 * (BYTE2(v257) ^ 0x75u)) ^ v267 ^ (v172 >> 28) ^ (v267 >> 3) ^ (v267 >> 5) ^ 0x9A1A4F76;
  v269 = *&v250[4 * (HIBYTE(v249) ^ 0xD6)];
  HIDWORD(v172) = v269 ^ 0x2C1986B;
  LODWORD(v172) = v269 ^ 0xE0000000;
  v270 = v268 + v266 - 2 * (v268 & v266);
  v271 = *(v253 + 4 * BYTE1(v257)) ^ 0x3349F020;
  v272 = v235 ^ 0xB1F4E880;
  v273 = v272 & 0xA134008D;
  v274 = (BYTE2(v252) - ((v244 >> 15) & 0x44) + 1346446882) ^ ((v272 & 0x10C0E872 ^ (v235 ^ 0xF8BB10C0) & 0x72 | v273 ^ (v235 ^ 0xF8BB10C0) & 0x8D) - 2 * ((v272 & 0x10C0E872 ^ (v235 ^ 0xF8BB10C0) & 0x72 | v273 ^ (v235 ^ 0xF8BB10C0) & 0x8D) & 0x31E0088F ^ (v273 ^ (v235 ^ 0xF8BB10C0) & 0x8D) & 4) + 2111904139) ^ (v172 >> 28) ^ *(v254 + 4 * (BYTE2(v252) ^ 0x75u)) ^ *&v258[4 * (v235 ^ 0x8D)] ^ v271 ^ (v271 >> 3) ^ (v271 >> 5);
  v275 = v259 ^ 0x198A9A72;
  v276 = v270 ^ 0x4DEF6ADD;
  v277 = *(&off_101353600 + (v290 ^ 0x6346)) - 12;
  v293[2] = v277[BYTE1(v275) ^ 0x5DLL] ^ (BYTE1(v275) - ((v275 >> 7) & 0x3E) + 31) ^ 0x7A;
  v278 = ((v270 ^ 0x4DEF6ADDu) >> 8) ^ 0xFFFFFFCA;
  if ((v278 & 0x40 & v277[(BYTE1(v276) ^ 0xE6 ^ -(BYTE1(v276) ^ 0xE6) ^ (214 - (BYTE1(v276) ^ 0x30))) + 214]) != 0)
  {
    v279 = -(v278 & 0x40);
  }

  else
  {
    LOBYTE(v279) = v278 & 0x40;
  }

  v293[10] = (v279 + (v277[(BYTE1(v276) ^ 0xE6 ^ -(BYTE1(v276) ^ 0xE6) ^ (214 - (BYTE1(v276) ^ 0x30))) + 214] ^ 9)) ^ v278 & 0xBF;
  v280 = *(&off_101353600 + v290 - 25874) - 4;
  v281 = v280[((v274 ^ 0xFFB8AD2F) >> 24) ^ 0xC3] ^ 0xB3;
  v293[12] = v281 + (((v274 ^ 0xFFB8AD2F) >> 24) ^ 0xC9) - 2 * (v281 & (((v274 ^ 0xFFB8AD2F) >> 24) ^ 0xC9));
  v282 = *(&off_101353600 + v290 - 25909) - 8;
  v283 = *(&off_101353600 + v290 - 25586);
  v293[7] = (((8 * v282[v265 ^ 0x19]) ^ 0x10) + 56) ^ 0x67 ^ ((((v282[v265 ^ 0x19] ^ 0x5A) - 90) ^ ((v282[v265 ^ 0x19] ^ 0x28) - 40) ^ ((v282[v265 ^ 0x19] ^ 0xD0) + 48)) - 88);
  v284 = *(v283 - 8 + ((((v274 ^ 0xFFB8AD2F) >> 16) - ((v274 >> 15) & 0x82) + 65) ^ 0x58));
  HIDWORD(v285) = v284 ^ 0x17;
  LODWORD(v285) = v284 << 24;
  v293[13] = (v285 >> 30) ^ (4 * (v285 >> 30)) ^ 0xB4;
  v293[8] = (HIBYTE(v276) - ((v276 >> 23) & 0xA0) + 80) ^ 0x96 ^ v280[HIBYTE(v276) ^ 0x50];
  v293[3] = (((8 * v282[v259 ^ 0x9ELL]) ^ 0x10) + 56) ^ 0xD7 ^ ((((v282[v259 ^ 0x9ELL] ^ 0xED) + 19) ^ ((v282[v259 ^ 0x9ELL] ^ 0xEE) + 18) ^ ((v282[v259 ^ 0x9ELL] ^ 0xA1) + 95)) - 88);
  v286 = *(v283 - 8 + (BYTE2(v259) ^ 0xF0));
  v287 = ((v286 ^ 0x17) << (v291 & 2) << (v291 & 2 ^ 2)) + (v286 >> 6);
  v293[1] = v287 ^ (4 * v287) ^ 0x9D;
  v288 = *(v283 - 8 + (BYTE2(v276) ^ 0xFCLL));
  HIDWORD(v285) = v288 ^ 0x17;
  LODWORD(v285) = v288 << 24;
  v293[9] = (v285 >> 30) ^ (4 * (v285 >> 30)) ^ 0xE7;
  v293[4] = (((v265 ^ 0xDE2416EF) >> 24) - (((v265 ^ 0xDE2416EF) >> 23) & 0xA0) + 80) ^ v280[((v265 ^ 0xDE2416EF) >> 24) ^ 0xF9] ^ 0xF7;
  v293[11] = (((8 * v282[v270 ^ 0x43]) ^ 0x10) + 56) ^ ((((v282[v270 ^ 0x43] ^ 0x1F) - 31) ^ ((v282[v270 ^ 0x43] ^ 0x37) - 55) ^ ((v282[v270 ^ 0x43] ^ 0x8A) + 118)) - 88) ^ 0x78;
  v293[6] = (((v265 ^ 0x16EF) >> 8) - (((v265 ^ 0xDE2416EF) >> 7) & 0x3E) + 31) ^ v277[((v265 ^ 0x16EF) >> 8) ^ 0xCBLL] ^ 0x78;
  v293[15] = (((8 * v282[v274 ^ 0x3ELL]) ^ 0x10) + 56) ^ 0x7A ^ ((((v282[v274 ^ 0x3ELL] ^ 0xB8) + 72) ^ ((v282[v274 ^ 0x3ELL] ^ 0x5D) - 93) ^ ((v282[v274 ^ 0x3ELL] ^ 0x47) - 71)) - 88);
  v289 = *(v283 - 8 + (BYTE2(v265) ^ 0xFLL));
  HIDWORD(v285) = v289 ^ 0x17;
  LODWORD(v285) = v289 << 24;
  v293[5] = ((v285 >> 30) - ((2 * (v285 >> 30)) & 0x96) + 75) ^ (4 * (v285 >> 30));
  v293[14] = (((v274 ^ 0xAD2F) >> 8) - (((v274 ^ 0xFFB8AD2F) >> 7) & 0x3E) + 31) ^ 0x85 ^ v277[((v274 ^ 0xAD2F) >> 8) ^ 0x35];
  LOBYTE(v289) = v280[HIBYTE(v275) ^ 0x9DLL] ^ 0x50;
  v293[0] = (v289 + (HIBYTE(v275) ^ 0x97) - 2 * (v289 & (HIBYTE(v275) ^ 0x97))) ^ 0x14;
  __asm { BRAA            X20, X17 }
}

uint64_t sub_100AFFC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x1D0C]) = v11;
  STACK[0x1D10] = v10;
  return (*(v12 + 8 * (((v8 == a8) * (v9 ^ 0xB7D0A528 ^ (((v9 - 1076656936) & 0xF7FCD7FF) + 89))) ^ v9)))();
}

uint64_t sub_100B00358(int a1, int a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  STACK[0x3820] = 0;
  v13 = STACK[0x36D0] | STACK[0x3D50];
  LODWORD(STACK[0x2AC0]) = STACK[0x3858] ^ STACK[0x3960];
  LODWORD(STACK[0x2AE8]) = STACK[0x3838] + STACK[0x32D8];
  LODWORD(STACK[0x2AD0]) = STACK[0x3550] | STACK[0x35A0];
  LODWORD(STACK[0x2AB8]) = STACK[0x36B8] + STACK[0x32B8];
  v14 = STACK[0x3998];
  v15 = STACK[0x3CE8];
  if ((STACK[0x3998] & 1) == 0)
  {
    v15 = v10;
  }

  if (v14)
  {
    v16 = STACK[0x3B18];
  }

  else
  {
    v16 = STACK[0x3D38];
  }

  if (v14)
  {
    v17 = v8;
  }

  else
  {
    v17 = STACK[0x3B08];
  }

  if (v14)
  {
    v18 = STACK[0x3CF0];
  }

  else
  {
    v18 = STACK[0x3B20];
  }

  v19 = STACK[0x3D58];
  if (v14)
  {
    v20 = STACK[0x3D30];
  }

  else
  {
    v19 = STACK[0x3D40];
    v20 = STACK[0x36C0];
  }

  if (v14)
  {
    v21 = STACK[0x3D98];
  }

  else
  {
    v21 = STACK[0x32B0];
  }

  if (v14)
  {
    v22 = STACK[0x3D70];
  }

  else
  {
    v22 = STACK[0x3D68];
  }

  v23 = (STACK[0x3998] & 2) == 0;
  v24 = STACK[0x3CC8];
  if ((STACK[0x3998] & 2) == 0)
  {
    v24 = a1;
  }

  LODWORD(STACK[0x36C0]) = v24;
  if (v23)
  {
    v25 = STACK[0x3D48];
  }

  else
  {
    v25 = STACK[0x3D60];
  }

  LODWORD(STACK[0x3960]) = v25;
  if (!v23)
  {
    a4 = v9;
  }

  LODWORD(STACK[0x8C8]) = a4;
  v27 = STACK[0x3D20];
  if (!v23)
  {
    v27 = STACK[0x3AF0];
  }

  LODWORD(STACK[0x32B0]) = v27;
  if (!v23)
  {
    a2 = STACK[0x3B00];
  }

  LODWORD(STACK[0x8D0]) = a2;
  if (v23)
  {
    v29 = STACK[0x32C0];
  }

  else
  {
    v29 = STACK[0x32D0];
  }

  LODWORD(STACK[0x8E0]) = v29;
  if (v23)
  {
    v30 = STACK[0x3CD0];
  }

  else
  {
    v30 = STACK[0x38B8];
  }

  LODWORD(STACK[0x8B0]) = v30;
  v31 = STACK[0x3D28];
  if (v23)
  {
    v31 = STACK[0x39F0];
  }

  LODWORD(STACK[0x32C0]) = v31;
  v32 = STACK[0x32C8];
  if (!v23)
  {
    v32 = STACK[0x2C00];
  }

  LODWORD(STACK[0x36D0]) = v32;
  v33 = STACK[0x39A8];
  if (v23)
  {
    v33 = STACK[0x3980];
  }

  LODWORD(STACK[0x36B8]) = v33;
  v34 = STACK[0x39E8];
  if (v23)
  {
    v34 = STACK[0x39A0];
  }

  LODWORD(STACK[0x35A0]) = v34;
  if (!v23)
  {
    a8 = a5;
  }

  LODWORD(STACK[0x32B8]) = a8;
  if (v23)
  {
    v36 = v15;
  }

  else
  {
    v36 = v16;
  }

  LODWORD(STACK[0x38B8]) = v36;
  if (v23)
  {
    v37 = v16;
  }

  else
  {
    v37 = v15;
  }

  if (v23)
  {
    v38 = v17;
  }

  else
  {
    v38 = v18;
  }

  LODWORD(STACK[0x8B8]) = v38;
  if (v23)
  {
    v39 = v18;
  }

  else
  {
    v39 = v17;
  }

  LODWORD(STACK[0x8A8]) = v39;
  v40 = STACK[0x32E8];
  if (v23)
  {
    v41 = v19;
  }

  else
  {
    v41 = STACK[0x32E8];
  }

  LODWORD(STACK[0x8C0]) = v41;
  if (v23)
  {
    v42 = v40;
  }

  else
  {
    v42 = v19;
  }

  LODWORD(STACK[0x898]) = v42;
  v43 = STACK[0x3340];
  if (v23)
  {
    v44 = v20;
  }

  else
  {
    v44 = STACK[0x3340];
  }

  LODWORD(STACK[0x868]) = v44;
  if (v23)
  {
    v45 = v43;
  }

  else
  {
    v45 = v20;
  }

  LODWORD(STACK[0x3340]) = v45;
  v46 = STACK[0x3988];
  v47 = STACK[0x38C8];
  if (v23)
  {
    v48 = STACK[0x3988];
  }

  else
  {
    v48 = STACK[0x38C8];
  }

  LODWORD(STACK[0x880]) = v48;
  if (v23)
  {
    v49 = v47;
  }

  else
  {
    v49 = v46;
  }

  LODWORD(STACK[0x890]) = v49;
  v50 = STACK[0x3828];
  if (v23)
  {
    v51 = STACK[0x3828];
  }

  else
  {
    v51 = v21;
  }

  LODWORD(STACK[0x8D8]) = v51;
  if (v23)
  {
    v52 = v21;
  }

  else
  {
    v52 = v50;
  }

  LODWORD(STACK[0x8A0]) = v52;
  v53 = STACK[0x3428];
  if (v23)
  {
    v54 = v22;
  }

  else
  {
    v54 = STACK[0x3428];
  }

  LODWORD(STACK[0x888]) = v54;
  if (v23)
  {
    v22 = v53;
  }

  LODWORD(STACK[0x8E8]) = v22;
  v55 = LODWORD(STACK[0x38C0]);
  STACK[0x1698] = v55;
  v56 = STACK[0x3D78];
  v57 = v55 << STACK[0x3D78];
  STACK[0x2C00] = v57;
  v58 = LODWORD(STACK[0x38F8]);
  STACK[0x908] = v58;
  v59 = STACK[0x3D80];
  v60 = v58 >> STACK[0x3D80];
  v61 = ((v37 & (v55 << v56)) >> v56) + ((v37 & (v58 >> v59)) << v59);
  v62 = STACK[0x3880];
  v63 = LODWORD(STACK[0x36E0]) ^ LODWORD(STACK[0x3880]);
  LODWORD(STACK[0x3D70]) = v63;
  LODWORD(STACK[0x3D98]) = a4 ^ v62;
  LODWORD(STACK[0x3D68]) = v41 ^ v62;
  v64 = v63 ^ v25 ^ a4 ^ v62 ^ v41 ^ v62;
  v65 = STACK[0x38D8];
  v66 = LODWORD(STACK[0x36F0]) ^ LODWORD(STACK[0x38D8]);
  LODWORD(STACK[0x3D60]) = v66;
  LODWORD(STACK[0x3D58]) = v29 ^ v65;
  LODWORD(STACK[0x3D50]) = v22 ^ v62;
  v67 = LODWORD(STACK[0x36E8]) ^ v62;
  LODWORD(STACK[0x3550]) = a2 ^ v62;
  LODWORD(STACK[0x3438]) = v51 ^ v65;
  LODWORD(STACK[0x38C8]) = v67;
  v68 = v64 ^ v29 ^ v65 ^ v66 ^ v22 ^ v62 ^ a2 ^ v62 ^ v51 ^ v65 ^ v67;
  v69 = LODWORD(STACK[0x36F8]) ^ v65;
  LODWORD(STACK[0x32E8]) = v30 ^ v62;
  LODWORD(STACK[0x3D40]) = v39 ^ v62;
  LODWORD(STACK[0x3D48]) = v69;
  v70 = v39 ^ v62 ^ v30 ^ v62 ^ v69;
  v71 = LODWORD(STACK[0x32B0]) ^ v65;
  LODWORD(STACK[0x3428]) = v71;
  v72 = v68 ^ v70 ^ v71;
  LODWORD(STACK[0x3D38]) = v38 ^ v65;
  LODWORD(STACK[0x3D20]) = v42 ^ v65;
  LODWORD(STACK[0x3D30]) = v52 ^ v65;
  v73 = LODWORD(STACK[0x3818]) ^ v65;
  LODWORD(STACK[0x3D28]) = v73;
  v74 = v38 ^ v65 ^ v42 ^ v65 ^ v52 ^ v65 ^ v73;
  v75 = LODWORD(STACK[0x36C0]) ^ v65;
  LODWORD(STACK[0x3CE8]) = v75;
  v76 = v72 ^ v74 ^ v75;
  if (v23)
  {
    v77 = STACK[0x3E18];
  }

  else
  {
    v77 = STACK[0x3798];
  }

  v78 = v77 ^ v62;
  v79 = LODWORD(STACK[0x3AE8]) ^ v62;
  v80 = LODWORD(STACK[0x3808]) ^ v65;
  v81 = LODWORD(STACK[0x32C0]) ^ v65;
  LODWORD(STACK[0x3CD0]) = v80;
  LODWORD(STACK[0x3B20]) = v81;
  LODWORD(STACK[0x3B18]) = v54 ^ v62;
  LODWORD(STACK[0x3CF0]) = v78;
  LODWORD(STACK[0x32E0]) = v79;
  v82 = v80 ^ v81 ^ v54 ^ v62 ^ v78 ^ v79;
  v83 = LODWORD(STACK[0x37A8]) ^ v62;
  LODWORD(STACK[0x3CC8]) = v83;
  v84 = v82 ^ v83;
  v85 = STACK[0x910];
  v86 = LODWORD(STACK[0x910]) ^ v65;
  LODWORD(STACK[0x3B08]) = v86;
  v87 = v76 ^ v84 ^ v86;
  v88 = LODWORD(STACK[0x3750]) ^ v62;
  v89 = LODWORD(STACK[0x3830]) ^ v65;
  LODWORD(STACK[0x3B00]) = v88;
  LODWORD(STACK[0x3AF0]) = v89;
  v90 = v89 ^ v88 ^ LODWORD(STACK[0x3D90]);
  v91 = LODWORD(STACK[0x32B8]) ^ v65;
  LODWORD(STACK[0x3AE8]) = v91;
  v92 = v90 ^ v91;
  v93 = LODWORD(STACK[0x3800]) ^ v65;
  LODWORD(STACK[0x3858]) = v93;
  v94 = v92 ^ v93;
  v95 = LODWORD(STACK[0x35A0]) ^ v62;
  LODWORD(STACK[0x3988]) = v95;
  LODWORD(STACK[0x3AE0]) = v49 ^ v65;
  v96 = v94 ^ v95 ^ v49 ^ v65;
  v97 = LODWORD(STACK[0x36B8]) ^ v62;
  LODWORD(STACK[0x32D8]) = v97;
  LODWORD(STACK[0x39F0]) = v48 ^ v65;
  v98 = v96 ^ v97 ^ v48 ^ v65;
  v99 = LODWORD(STACK[0x3788]) ^ v62;
  LODWORD(STACK[0x3AD8]) = v99;
  v100 = v87 ^ v98 ^ v99;
  v101 = STACK[0x918];
  v102 = LODWORD(STACK[0x918]) ^ v62;
  v103 = STACK[0x868];
  v104 = LODWORD(STACK[0x868]) ^ v65;
  v105 = LODWORD(STACK[0x36D0]) ^ v62;
  LODWORD(STACK[0x39E8]) = v105;
  LODWORD(STACK[0x39A0]) = v104;
  LODWORD(STACK[0x39A8]) = v102;
  v106 = v104 ^ v105 ^ v102;
  v107 = LODWORD(STACK[0x3340]) ^ v65;
  LODWORD(STACK[0x3980]) = v107;
  LODWORD(STACK[0x8F8]) = v100 ^ v106 ^ v107;
  v108 = STACK[0x3920];
  v109 = STACK[0x3650];
  v110 = STACK[0x3650] & (((v61 ^ ((v61 & v108) >> 1)) & v108) >> 2) ^ v61 ^ ((v61 & v108) >> 1);
  LODWORD(STACK[0x2BF8]) = STACK[0x3650] & LODWORD(STACK[0x3920]);
  v111 = (v109 & v108) >> 2;
  LODWORD(STACK[0x8F0]) = v111;
  LODWORD(STACK[0x32D0]) = v111 & ((v110 & v108) >> 4) & v109 ^ v110;
  v112 = STACK[0x38A0];
  v113 = STACK[0x3E38];
  v114 = STACK[0x3940];
  v115 = STACK[0x38D0];
  STACK[0x900] = LODWORD(STACK[0x38D0]);
  v116 = STACK[0x3D88];
  v117 = v115 >> STACK[0x3D88];
  v118 = ((v114 & v117) << STACK[0x3D88]) | ((v114 & (v112 << v113)) >> v113);
  v119 = STACK[0x3908];
  v120 = STACK[0x3228];
  v121 = STACK[0x3228] & (((v118 ^ ((v118 & v119) >> 1)) & v119) >> 2) ^ v118 ^ ((v118 & v119) >> 1);
  v122 = (STACK[0x3228] & LODWORD(STACK[0x3908])) >> 2;
  LODWORD(STACK[0x3940]) = v122 & ((v121 & STACK[0x3908]) >> 4) & STACK[0x3228] ^ v121;
  v123 = STACK[0x38B8];
  STACK[0x32C8] = v112 << v113;
  v124 = ((v123 & (v112 << v113)) >> v113) ^ ((v123 & v117) << v116);
  v125 = v120 & (((v124 ^ ((v124 & v119) >> 1)) & v119) >> 2) ^ v124 ^ ((v124 & v119) >> 1);
  LODWORD(STACK[0x38B8]) = v122 & ((v125 & v119) >> 4) & v120 ^ v125;
  v126 = ((STACK[0x38B0] & v57) >> v56) | ((STACK[0x38B0] & v60) << v59);
  v127 = v109 & (((v126 ^ ((v126 & v108) >> 1)) & v108) >> 2) ^ v126 ^ ((v126 & v108) >> 1);
  LODWORD(STACK[0x38B0]) = v111 & ((v127 & v108) >> 4) & v109 ^ v127;
  v128 = STACK[0x2698];
  v129 = STACK[0x3D18];
  v130 = v129[409] ^ 0x4E ^ *(STACK[0x2698] + (v129[409] ^ 0x1DLL));
  v131 = v129[407] ^ 0x63 ^ *(STACK[0x2698] + (v129[407] ^ 0xDELL));
  LODWORD(v117) = ((v129[413] ^ 0x2D ^ *(v128 + (v129[413] ^ 0x78))) << 24) | ((v129[414] ^ 0x1B ^ *(v128 + (v129[414] ^ 0xA4))) << 16) | ((v129[415] ^ 0x4A ^ *(v128 + (v129[415] ^ 0xB4))) << 8);
  v132 = *(STACK[0x3D18] + 410);
  v133 = *(STACK[0x2698] + (v132 ^ 0x98));
  LODWORD(STACK[0x3838]) = v129[404] ^ 0xBC ^ *(v128 + (v129[404] ^ 6)) | ((*STACK[0x3680] ^ *(v128 + (*STACK[0x3680] ^ 0xD5)) ^ 0xC0) << 24) | ((*(v128 + (v129[403] ^ 0xBBLL)) ^ v129[403]) << 8) | ((v129[402] ^ *(v128 + (v129[402] ^ 0xB2)) ^ 0xFF) << 16);
  LODWORD(STACK[0x3828]) = v129[416] ^ 0x11 ^ *(v128 + (v129[416] ^ 0x94)) | v117;
  v134 = (v130 << 24) | ((v132 ^ 0x29 ^ v133) << 16) | ((v129[411] ^ 0xCE ^ *(v128 + (v129[411] ^ 0x4CLL))) << 8);
  v135 = v129[412] ^ 0x71 ^ *(v128 + (v129[412] ^ 0xCDLL));
  LODWORD(STACK[0x878]) = v129[408] ^ 0xDB ^ *(v128 + (v129[408] ^ 0x67)) | (v131 << 8) | ((v129[405] ^ 0x58 ^ *(v128 + (v129[405] ^ 0x59))) << 24) | ((v129[406] ^ 0xE9 ^ *(v128 + (v129[406] ^ 0xBFLL))) << 16);
  LODWORD(STACK[0x870]) = v134 | v135;
  LODWORD(STACK[0x3788]) ^= LODWORD(STACK[0x36E8]) ^ LODWORD(STACK[0x36E0]) ^ LODWORD(STACK[0x36F0]) ^ LODWORD(STACK[0x8C8]) ^ LODWORD(STACK[0x898]) ^ LODWORD(STACK[0x32B0]) ^ LODWORD(STACK[0x8A8]) ^ v85 ^ LODWORD(STACK[0x8C0]) ^ LODWORD(STACK[0x32C0]) ^ LODWORD(STACK[0x3750]) ^ LODWORD(STACK[0x8B0]) ^ LODWORD(STACK[0x8A0]) ^ LODWORD(STACK[0x888]) ^ LODWORD(STACK[0x32B8]) ^ LODWORD(STACK[0x35A0]) ^ v103 ^ 0x5C9ED383;
  v136 = LODWORD(STACK[0x3798]) ^ LODWORD(STACK[0x3E18]) ^ LODWORD(STACK[0x36C0]) ^ LODWORD(STACK[0x8B8]) ^ LODWORD(STACK[0x3960]) ^ LODWORD(STACK[0x36F8]) ^ LODWORD(STACK[0x37A8]) ^ LODWORD(STACK[0x8D0]) ^ LODWORD(STACK[0x8E0]) ^ LODWORD(STACK[0x3808]) ^ LODWORD(STACK[0x3818]) ^ LODWORD(STACK[0x8D8]) ^ LODWORD(STACK[0x8E8]) ^ LODWORD(STACK[0x3830]) ^ LODWORD(STACK[0x3800]) ^ LODWORD(STACK[0x3D90]) ^ LODWORD(STACK[0x880]) ^ LODWORD(STACK[0x890]) ^ LODWORD(STACK[0x36B8]) ^ LODWORD(STACK[0x36D0]) ^ LODWORD(STACK[0x3340]) ^ v101 ^ 0x5C9ED383u;
  LODWORD(STACK[0x3808]) = (STACK[0x1BA0] << v56) ^ STACK[0x1BC8];
  v137 = STACK[0x2AA0];
  LODWORD(STACK[0x3800]) = STACK[0x2AA8] ^ STACK[0x2AA0];
  LODWORD(STACK[0x37A8]) = v137 | (STACK[0x2A98] << v113);
  LODWORD(STACK[0x3798]) = (STACK[0x2B10] >> v59) | (STACK[0x2B00] << v113);
  LODWORD(STACK[0x2BF0]) = (STACK[0x2AE0] << v56) ^ v13 ^ ((STACK[0x38F8] & LODWORD(STACK[0x2BF0])) >> v116);
  LODWORD(STACK[0x3750]) = (STACK[0x2AF0] << v56) | (STACK[0x2AF8] >> v116);
  LODWORD(STACK[0x36F8]) = ((STACK[0x2B18] & v115) >> v116) | STACK[0x2B08];
  LODWORD(STACK[0x36F0]) = (STACK[0x2B38] << v56) | STACK[0x2B28];
  LODWORD(STACK[0x36E8]) = STACK[0x2B48] ^ (STACK[0x2B40] << v113);
  LODWORD(v117) = STACK[0x38C0];
  LODWORD(STACK[0x2BE8]) = ((STACK[0x2BE8] & LODWORD(STACK[0x38C0])) << v56) ^ (STACK[0x2B50] >> v59) ^ v13;
  v138 = STACK[0x2B58] >> v116;
  v139 = ((v112 & STACK[0x3850]) << v113) | v138;
  LODWORD(STACK[0x36C0]) = v138 | STACK[0x3290];
  LODWORD(STACK[0x36E0]) = (STACK[0x3268] << v56) + STACK[0x3280];
  LODWORD(STACK[0x36B8]) = STACK[0x3270] ^ (STACK[0x2AC8] >> v59);
  v140 = STACK[0x2AD8] >> v116;
  LODWORD(STACK[0x35A0]) = STACK[0x2BE0] ^ v140;
  LODWORD(STACK[0x2BE0]) = v13 ^ v140 ^ (STACK[0x2B20] << v113);
  v141 = STACK[0x3248];
  LODWORD(STACK[0x32C0]) = (STACK[0x3230] << v56) + ((STACK[0x3248] & v115) >> v59);
  v142 = ((v141 & v112) << v56) + STACK[0x2BD8];
  LODWORD(v132) = STACK[0x3250] | ((STACK[0x3258] & v117) << v113);
  LODWORD(v128) = ((STACK[0x3878] & v112) << v56) + STACK[0x3298];
  v143 = v117;
  v144 = STACK[0x3288] + ((STACK[0x3840] & v117) << v113);
  v145 = (STACK[0x32A0] >> v59) + STACK[0x32A8];
  LODWORD(STACK[0x36D0]) = (STACK[0x2B30] >> v116) | STACK[0x32A8];
  v146 = v112 & STACK[0x2BC8];
  v147 = (v146 << v56) + STACK[0x2BB8];
  v148 = STACK[0x2BD0] | STACK[0x2BC0];
  LODWORD(v117) = (v146 << v113) | STACK[0x2BC0];
  LODWORD(STACK[0x2BD8]) = ((STACK[0x2BB0] & v143) << v56) ^ STACK[0x2B88] ^ v13;
  v149 = STACK[0x2BA8] + (STACK[0x2B98] >> v116);
  v150 = (STACK[0x2BA0] >> v59) ^ STACK[0x3260];
  LODWORD(v146) = STACK[0x2B70] ^ (STACK[0x2B78] >> v116);
  LODWORD(v138) = ((STACK[0x2B80] & v112) << v113) + (STACK[0x2B90] >> v59);
  v151 = STACK[0x908] >> v116;
  STACK[0x2BD0] = v151;
  LODWORD(v151) = ((STACK[0x2C00] & v65) >> v56) ^ ((v151 & v65) << v116);
  LODWORD(v151) = v109 & (((v151 ^ ((v151 & v108) >> 1)) & v108) >> 2) ^ v151 ^ ((v151 & v108) >> 1);
  LODWORD(STACK[0x2BC8]) = STACK[0x8F0] & ((v151 & v108) >> 4) & v109 ^ v151;
  LODWORD(v151) = LODWORD(STACK[0x3778]) ^ 0x3D52B7A1;
  LODWORD(STACK[0x3E18]) = v12 - 7709;
  LODWORD(STACK[0x2BC0]) = v151 ^ (v12 - 7709) ^ __ROR4__(v151 ^ (v12 - 7709), 24) ^ __ROR4__(v151 ^ (v12 - 7709), 16) ^ __ROR4__(v151 ^ (v12 - 7709), 8);
  STACK[0x3840] = v136;
  LODWORD(v151) = LODWORD(STACK[0x8F8]) ^ v136;
  v152 = v151 ^ v139 ^ v13;
  LODWORD(v151) = v151 - LODWORD(STACK[0x3788]);
  LODWORD(STACK[0x2BB8]) = v152 ^ LODWORD(STACK[0x3788]);
  LODWORD(STACK[0x3340]) = HIBYTE(LODWORD(STACK[0x33E8]));
  LODWORD(STACK[0x3830]) = LODWORD(STACK[0x3960]) ^ v62;
  LODWORD(STACK[0x3878]) = LODWORD(STACK[0x3D90]) ^ v62;
  STACK[0x3850] = LODWORD(STACK[0x870]) ^ 0x31u;
  LODWORD(STACK[0x3818]) = LODWORD(STACK[0x878]) ^ 0xED;
  LODWORD(STACK[0x2BB0]) = LODWORD(STACK[0x3808]) ^ v13;
  LODWORD(STACK[0x2BA8]) = LODWORD(STACK[0x3800]) ^ v13;
  LODWORD(STACK[0x2BA0]) = LODWORD(STACK[0x2AC0]) ^ v13;
  LODWORD(STACK[0x2B98]) = v13 ^ LODWORD(STACK[0x37A8]);
  LODWORD(STACK[0x2B90]) = v13 ^ LODWORD(STACK[0x3798]);
  LODWORD(STACK[0x2B88]) = v13 ^ LODWORD(STACK[0x3750]);
  LODWORD(STACK[0x2B80]) = v13 ^ LODWORD(STACK[0x36F8]);
  LODWORD(STACK[0x2B78]) = v13 ^ LODWORD(STACK[0x36F0]);
  LODWORD(STACK[0x2B70]) = v13 ^ STACK[0x2B60];
  LODWORD(STACK[0x2B68]) = v13 ^ STACK[0x2B68];
  LODWORD(STACK[0x2B60]) = LODWORD(STACK[0x36E8]) ^ v13;
  LODWORD(STACK[0x2B58]) = v13 ^ LODWORD(STACK[0x36C0]);
  LODWORD(STACK[0x2B50]) = LODWORD(STACK[0x35A0]) ^ v13;
  LODWORD(STACK[0x2B48]) = LODWORD(STACK[0x36B8]) ^ v13;
  LODWORD(STACK[0x2B40]) = 647182463 * v151;
  LODWORD(STACK[0x2B38]) = v13 ^ v132;
  LODWORD(STACK[0x2B30]) = v13 ^ STACK[0x3278];
  LODWORD(STACK[0x2B28]) = v13 ^ LODWORD(STACK[0x2AD0]);
  LODWORD(STACK[0x2B20]) = v13 ^ v117;
  LODWORD(STACK[0x2B18]) = v150 ^ v13;
  LODWORD(STACK[0x2B10]) = v146 ^ v13;
  STACK[0x2AA0] = STACK[0x900] >> v59;
  STACK[0x2A98] = STACK[0x1698] << v113;
  v153 = *(v11 + 8 * v12);
  LODWORD(STACK[0x2B08]) = v13 ^ LODWORD(STACK[0x2AE8]);
  LODWORD(STACK[0x2B00]) = v13 ^ LODWORD(STACK[0x36E0]);
  LODWORD(STACK[0x2AF8]) = v13 ^ LODWORD(STACK[0x32C0]);
  LODWORD(STACK[0x2AF0]) = v13 ^ v142;
  LODWORD(STACK[0x2AE8]) = v13 ^ v145;
  LODWORD(STACK[0x2AE0]) = v13 ^ v128;
  LODWORD(STACK[0x2AD8]) = v13 ^ v144;
  LODWORD(STACK[0x2AD0]) = v13 ^ v147;
  LODWORD(STACK[0x2AC8]) = v13 ^ v148;
  LODWORD(STACK[0x2AC0]) = v13 ^ v149;
  LODWORD(STACK[0x2AB8]) ^= v13;
  LODWORD(STACK[0x2AB0]) ^= v13;
  LODWORD(STACK[0x36F8]) = v13;
  LODWORD(STACK[0x2AA8]) = v13 ^ v138;
  STACK[0x3750] = STACK[0x3E60];
  STACK[0x36F0] = STACK[0x3E68];
  STACK[0x36E8] = STACK[0x3E98];
  STACK[0x36E0] = 16;
  v154 = STACK[0x3998];
  LODWORD(STACK[0x3808]) = STACK[0x3998];
  LODWORD(STACK[0x3800]) = v154;
  return v153(1284283434);
}

uint64_t sub_100B01158@<X0>(_BYTE *a1@<X8>)
{
  a1[16] = v2[16] ^ 0x8B;
  a1[17] = ((v1 + 2) | 0x4A) ^ v2[17] ^ 0xA3;
  a1[18] = v2[18] ^ 0x57;
  a1[19] = v2[19] ^ 0x8A;
  a1[20] = v2[20] ^ 0x9F;
  a1[21] = v2[21] ^ 0xCE;
  a1[22] = v2[22] ^ 0x2F;
  a1[23] = v2[23] ^ 0x69;
  return (*(v3 + 8 * v1))();
}

uint64_t sub_100B01340()
{
  v2 = (v1 + 4312374) | 0x38500A5;
  v3 = (*(v0 + 8 * (v2 - 63350888)))();
  STACK[0x8E8] = 0;
  STACK[0x818] = 0;
  return (*(v0 + 8 * (v2 ^ 0x3C77433 ^ (61859 * (v2 > 0x7049F09)))))(v3);
}

uint64_t sub_100B014FC()
{
  v2 = STACK[0x1618];
  v3 = *(STACK[0x1618] + 8);
  v4 = STACK[0x13B8];
  v4[1] = v3;
  *v4 = *v2;
  return (*(v1 + 8 * (((v3 != 0) * (((v0 - 3597) | 0x344) ^ ((v0 ^ 0x68E0) + 3387))) ^ v0)))();
}

uint64_t sub_100B0154C()
{
  v3 = 1534937323 * ((~(v2 - 240) & 0x5F94F117DF6B29D1 | (v2 - 240) & 0xA06B0EE82094D62ELL) ^ 0x92EC79D51985D296);
  v4 = STACK[0x15A8] == 0;
  *(v2 - 208) = ((v0 + 645861765) ^ 0xF9) + v3;
  *(v2 - 240) = v3;
  if (v4)
  {
    v5 = v3 + 1;
  }

  else
  {
    v5 = 1534937323 * ((~(v2 - 240) & 0x5F94F117DF6B29D1 | (v2 - 240) & 0xA06B0EE82094D62ELL) ^ 0x92EC79D51985D296);
  }

  *(v2 - 216) = v5;
  *(v2 - 232) = ((v0 + 645861765) ^ 0xF78) - v3;
  *(v2 - 228) = v3 + v0 - 1632379223;
  *(v2 - 224) = v3;
  *(v2 - 220) = (v0 + 645861765) ^ v3;
  v6 = (*(v1 + 8 * (v0 ^ 0xB7D0FFA5)))(v2 - 240);
  return (*(v1 + 8 * *(v2 - 204)))(v6);
}

uint64_t sub_100B01620@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, unint64_t a9@<X8>, uint64_t a10, int a11, int a12, int a13)
{
  STACK[0x3AA0] = v1579;
  STACK[0x3AE8] = v1572;
  STACK[0x3A48] = a4;
  STACK[0x3A98] = v1570;
  STACK[0x3A90] = v1582;
  STACK[0x3A50] = v1569;
  v1584 = STACK[0x3A38];
  while (2)
  {
    v1585 = v1567 * a6;
    v1586 = (v1567 * a6) >> 64;
    v1587 = 15 * v1586;
    v1588 = (v1586 * v1577) >> 64;
    v1886 = __CFADD__(v1587, v1585);
    v1589 = v1587 + v1585;
    if (v1886)
    {
      ++v1588;
    }

    v1590 = 15 * v1588;
    v1886 = __CFADD__(v1590, v1589);
    v1591 = v1590 + v1589;
    v1592 = v1886;
    if (v1591 > 0xFFFFFFFFFFFFFFF0)
    {
      v1592 = 1;
    }

    if (v1592)
    {
      v1593 = v1577;
    }

    else
    {
      v1593 = 0;
    }

    v1594 = v1593 + v1591;
    v1595 = 0x9FEC52B6396CF0C0 * v1594;
    v1596 = (v1594 * 0x9FEC52B6396CF0C0) >> 64;
    v1597 = 15 * v1596;
    v1598 = (v1596 * v1577) >> 64;
    v1886 = __CFADD__(v1597, v1595);
    v1599 = v1597 + v1595;
    if (v1886)
    {
      ++v1598;
    }

    v1600 = 15 * v1598;
    v1601 = v1600 + v1599 > 0xFFFFFFFFFFFFFFF0;
    v1886 = __CFADD__(v1600, v1599);
    v1602 = v1600 + v1599;
    if (v1886 || v1601)
    {
      v1604 = v1577;
    }

    else
    {
      v1604 = 0;
    }

    v1605 = v1604 + v1602;
    v1606 = 0x7FF97F97F97F97F2 * v1605;
    v1607 = (v1605 * 0x7FF97F97F97F97F2uLL) >> 64;
    v1608 = 15 * v1607;
    v1609 = (v1607 * v1577) >> 64;
    v1886 = __CFADD__(v1608, v1606);
    v1610 = v1608 + v1606;
    if (v1886)
    {
      ++v1609;
    }

    v1611 = 15 * v1609;
    v1886 = __CFADD__(v1611, v1610);
    v1612 = v1611 + v1610;
    v1613 = v1886;
    if (v1612 > 0xFFFFFFFFFFFFFFF0)
    {
      v1613 = 1;
    }

    if (v1613)
    {
      v1614 = v1577;
    }

    else
    {
      v1614 = 0;
    }

    v1615 = v1614 + v1612;
    if (v1614 + v1612 >= 0xFFFFFFFFFFFFFFD3)
    {
      v1616 = 45;
    }

    else
    {
      v1616 = 0;
    }

    v1617 = v1616 + v1615;
    v1618 = 2661120 * v1617;
    v1619 = 45 * ((v1617 * 0x289B00uLL) >> 64);
    v1886 = __CFADD__(v1619, v1618);
    v1620 = v1619 + v1618;
    if (v1886)
    {
      v1621 = 45;
    }

    else
    {
      v1621 = 0;
    }

    v1622 = (v1621 + v1620) > 0xFFFFFFFFFFFFFFD2;
    v1886 = __CFADD__(v1621, v1620);
    v1623 = v1621 + v1620;
    v1624 = v1584 * v1568;
    v1625 = v1568;
    v1626 = (((v1584 * v1568) >> 64) * 5) >> 64;
    v1627 = (__PAIR128__(4, v1625) * v1584) >> 64;
    v1628 = v1886 || v1622;
    v1886 = __CFADD__(v1627, v1624);
    v1629 = v1627 + v1624;
    if (v1886)
    {
      v1630 = v1626 + 1;
    }

    else
    {
      v1630 = v1626;
    }

    v1631 = 5 * v1630;
    v1886 = __CFADD__(v1631, v1629);
    v1632 = v1631 + v1629;
    v1633 = v1886;
    if (v1632 > 0xFFFFFFFFFFFFFFFALL)
    {
      v1633 = 1;
    }

    if (v1633)
    {
      v1634 = 5;
    }

    else
    {
      v1634 = 0;
    }

    v1635 = v1634 + v1632;
    v1636 = 0xE7CF05C2128E4523 * v1635;
    v1637 = (((v1635 * 0xE7CF05C2128E4523) >> 64) * 5) >> 64;
    v1638 = (__PAIR128__(4, 0xE7CF05C2128E4523) * v1635) >> 64;
    v1886 = __CFADD__(v1638, v1636);
    v1639 = v1638 + v1636;
    if (v1886)
    {
      v1640 = v1637 + 1;
    }

    else
    {
      v1640 = v1637;
    }

    v1641 = 5 * v1640;
    v1886 = __CFADD__(v1641, v1639);
    v1642 = v1641 + v1639;
    v1643 = v1886;
    if (v1642 > 0xFFFFFFFFFFFFFFFALL)
    {
      v1643 = 1;
    }

    if (v1643)
    {
      v1644 = 5;
    }

    else
    {
      v1644 = 0;
    }

    v1645 = v1644 + v1642;
    v1646 = 0xD73333333333332FLL * v1645;
    v1647 = (((v1645 * 0xD73333333333332FLL) >> 64) * 5) >> 64;
    v1648 = (__PAIR128__(4, 0xD73333333333332FLL) * v1645) >> 64;
    v1886 = __CFADD__(v1648, v1646);
    v1649 = v1648 + v1646;
    if (v1886)
    {
      v1650 = v1647 + 1;
    }

    else
    {
      v1650 = v1647;
    }

    v1651 = 5 * v1650;
    v1886 = __CFADD__(v1651, v1649);
    v1652 = v1651 + v1649;
    v1653 = v1886;
    if (v1652 > 0xFFFFFFFFFFFFFFFALL)
    {
      v1653 = 1;
    }

    if (v1653)
    {
      v1654 = 5;
    }

    else
    {
      v1654 = 0;
    }

    v1655 = v1654 + v1652;
    if (v1654 + v1652 >= 0xFFFFFFFFFFFFFFD3)
    {
      v1656 = 45;
    }

    else
    {
      v1656 = 0;
    }

    v1657 = v1656 + v1655;
    v1658 = 1995840 * v1657;
    v1659 = 45 * ((v1657 * 0x1E7440uLL) >> 64);
    v1886 = __CFADD__(v1659, v1658);
    v1660 = v1659 + v1658;
    if (v1886)
    {
      v1661 = 45;
    }

    else
    {
      v1661 = 0;
    }

    v1662 = (v1661 + v1660) > 0xFFFFFFFFFFFFFFD2;
    v1886 = __CFADD__(v1661, v1660);
    v1663 = v1661 + v1660;
    v1664 = v1571 * a2;
    v1665 = (v1571 * a2) >> 64;
    v1666 = (v1665 * 3uLL) >> 64;
    v1667 = 3 * v1665;
    v1668 = v1886 || v1662;
    v1669 = v1667 + v1664;
    if (__CFADD__(v1667, v1664))
    {
      v1670 = v1666 + 1;
    }

    else
    {
      v1670 = v1666;
    }

    v1671 = 3 * v1670;
    v1886 = __CFADD__(v1671, v1669);
    v1672 = v1671 + v1669;
    v1673 = v1886;
    if (v1672 > 0xFFFFFFFFFFFFFFFCLL)
    {
      v1673 = 1;
    }

    if (v1673)
    {
      v1674 = 3;
    }

    else
    {
      v1674 = 0;
    }

    v1675 = v1674 + v1672;
    v1676 = 0x98FDEF4CCE72A7B8 * v1675;
    v1677 = (((v1675 * 0x98FDEF4CCE72A7B8) >> 64) * 3) >> 64;
    v1678 = (__PAIR128__(2, 0x98FDEF4CCE72A7B8) * v1675) >> 64;
    v1886 = __CFADD__(v1678, v1676);
    v1679 = v1678 + v1676;
    if (v1886)
    {
      v1680 = v1677 + 1;
    }

    else
    {
      v1680 = v1677;
    }

    v1681 = 3 * v1680;
    v1682 = (v1681 + v1679) > 0xFFFFFFFFFFFFFFFCLL;
    v1886 = __CFADD__(v1681, v1679);
    v1683 = v1681 + v1679;
    if (v1886 || v1682)
    {
      v1685 = 3;
    }

    else
    {
      v1685 = 0;
    }

    v1686 = v1685 + v1683;
    v1687 = 0xF638E38E38E38E36 * v1686;
    v1688 = (((v1686 * 0xF638E38E38E38E36) >> 64) * 3) >> 64;
    v1689 = (__PAIR128__(2, 0xF638E38E38E38E36) * v1686) >> 64;
    v1886 = __CFADD__(v1689, v1687);
    v1690 = v1689 + v1687;
    if (v1886)
    {
      v1691 = v1688 + 1;
    }

    else
    {
      v1691 = v1688;
    }

    v1692 = 3 * v1691;
    v1693 = (v1692 + v1690) > 0xFFFFFFFFFFFFFFFCLL;
    v1886 = __CFADD__(v1692, v1690);
    v1694 = v1692 + v1690;
    if (v1886 || v1693)
    {
      v1696 = 3;
    }

    else
    {
      v1696 = 0;
    }

    v1697 = v1696 + v1694;
    if ((v1696 + v1694) >= 0xFFFFFFFFFFFFFFD3)
    {
      v1698 = 45;
    }

    else
    {
      v1698 = 0;
    }

    v1699 = v1698 + v1697;
    v1700 = 1900800 * v1699;
    v1701 = 45 * ((v1699 * 0x1D0100uLL) >> 64);
    v1886 = __CFADD__(v1701, v1700);
    v1702 = v1701 + v1700;
    if (v1886)
    {
      v1703 = 45;
    }

    else
    {
      v1703 = 0;
    }

    v1704 = (v1703 + v1702) > 0xFFFFFFFFFFFFFFD2;
    v1886 = __CFADD__(v1703, v1702);
    v1705 = v1703 + v1702;
    v1706 = a3 * a1;
    v1707 = (a3 * a1) >> 64;
    if (v1886)
    {
      v1704 = 1;
    }

    v1708 = __CFADD__(__CFADD__(v1707, v1706), v1707 + v1706);
    v1709 = __CFADD__(v1707, v1706) + v1707 + v1706 == -1 || v1708;
    v1710 = v1707 + v1706 + __CFADD__(v1707, v1706) + v1709;
    v1711 = (v1710 * 0x5CAECC2F8BD67150uLL) >> 64;
    v1712 = 0x5CAECC2F8BD67150 * v1710;
    v1713 = __CFADD__(__CFADD__(v1711, v1712), v1711 + v1712);
    v1714 = __CFADD__(v1711, v1712) + v1711 + v1712 == -1 || v1713;
    v1715 = v1711 + v1712 + __CFADD__(v1711, v1712) + v1714;
    v1716 = (v1715 * 0xDBB6DB6DB6DB6DB6) >> 64;
    v1717 = 0xDBB6DB6DB6DB6DB6 * v1715;
    v1718 = __CFADD__(__CFADD__(v1716, v1717), v1716 + v1717);
    v1719 = __CFADD__(v1716, v1717) + v1716 + v1717 == -1 || v1718;
    v1720 = v1716 + v1717 + __CFADD__(v1716, v1717) + v1719;
    if (v1720 >= 0xFFFFFFFFFFFFFFD3)
    {
      v1721 = 45;
    }

    else
    {
      v1721 = 0;
    }

    v1722 = v1721 + v1720;
    v1723 = 1814400 * v1722;
    v1724 = 45 * ((v1722 * 0x1BAF80uLL) >> 64);
    v1886 = __CFADD__(v1724, v1723);
    v1725 = v1724 + v1723;
    if (v1886)
    {
      v1726 = 45;
    }

    else
    {
      v1726 = 0;
    }

    v1886 = __CFADD__(v1726, v1725);
    v1727 = v1726 + v1725;
    v1728 = v1886;
    if (v1727 > 0xFFFFFFFFFFFFFFD2)
    {
      v1728 = 1;
    }

    if (v1728)
    {
      v1729 = 45;
    }

    else
    {
      v1729 = 0;
    }

    v1730 = v1729 + v1727;
    if (v1730 >= 0xFFFFFFFFFFFFFFD3)
    {
      v1731 = 45;
    }

    else
    {
      v1731 = 0;
    }

    v1732 = v1731 + v1730;
    if (v1704)
    {
      v1733 = 45;
    }

    else
    {
      v1733 = 0;
    }

    v1734 = v1705 + v1732 + v1733;
    v1735 = v1732 > v1734 || v1734 > 0xFFFFFFFFFFFFFFD2;
    if (v1735)
    {
      v1736 = 45;
    }

    else
    {
      v1736 = 0;
    }

    v1737 = v1736 + v1734;
    if (v1668)
    {
      v1738 = 45;
    }

    else
    {
      v1738 = 0;
    }

    v1739 = v1738 + v1663;
    LODWORD(v1738) = v1739 + v1737 > 0xFFFFFFFFFFFFFFD2;
    v1886 = __CFADD__(v1739, v1737);
    v1740 = v1739 + v1737;
    v1741 = a5 * v1574;
    v1742 = (a5 * v1574) >> 64;
    v1743 = (v1742 * 9uLL) >> 64;
    v1744 = 9 * v1742;
    if (v1886)
    {
      v1738 = 1;
    }

    else
    {
      v1738 = v1738;
    }

    v1886 = __CFADD__(v1744, v1741);
    v1745 = v1744 + v1741;
    if (v1886)
    {
      v1746 = v1743 + 1;
    }

    else
    {
      v1746 = v1743;
    }

    v1747 = 9 * v1746;
    v1886 = __CFADD__(v1747, v1745);
    v1748 = v1747 + v1745;
    v1749 = v1886;
    if (v1748 > 0xFFFFFFFFFFFFFFF6)
    {
      v1749 = 1;
    }

    if (v1749)
    {
      v1750 = 9;
    }

    else
    {
      v1750 = 0;
    }

    v1751 = v1750 + v1748;
    v1752 = 0x1513DAB390DF5A9ELL * v1751;
    v1753 = (__PAIR128__(8, 0x1513DAB390DF5A9ELL) * v1751) >> 64;
    v1886 = __CFADD__(v1753, v1752);
    v1754 = v1753 + v1752;
    if (v1886)
    {
      v1755 = 9;
    }

    else
    {
      v1755 = 0;
    }

    v1886 = __CFADD__(v1755, v1754);
    v1756 = v1755 + v1754;
    v1757 = v1886;
    if (v1756 > 0xFFFFFFFFFFFFFFF6)
    {
      v1757 = 1;
    }

    if (v1757)
    {
      v1758 = 9;
    }

    else
    {
      v1758 = 0;
    }

    v1759 = v1758 + v1756;
    v1760 = 0xD6E38E38E38E38DCLL * v1759;
    v1761 = (((v1759 * 0xD6E38E38E38E38DCLL) >> 64) * 9) >> 64;
    v1762 = (__PAIR128__(8, 0xD6E38E38E38E38DCLL) * v1759) >> 64;
    v1886 = __CFADD__(v1762, v1760);
    v1763 = v1762 + v1760;
    if (v1886)
    {
      v1764 = v1761 + 1;
    }

    else
    {
      v1764 = v1761;
    }

    v1765 = 9 * v1764;
    v1886 = __CFADD__(v1765, v1763);
    v1766 = v1765 + v1763;
    v1767 = v1886;
    if (v1766 > 0xFFFFFFFFFFFFFFF6)
    {
      v1767 = 1;
    }

    if (v1767)
    {
      v1768 = 9;
    }

    else
    {
      v1768 = 0;
    }

    v1769 = v1768 + v1766;
    if (v1768 + v1766 >= 0xFFFFFFFFFFFFFFD3)
    {
      v1770 = 45;
    }

    else
    {
      v1770 = 0;
    }

    v1771 = v1770 + v1769;
    v1772 = 2217600 * v1771;
    v1773 = v1738 << 63 >> 63;
    if (v1738)
    {
      v1774 = -1;
    }

    else
    {
      v1774 = -45;
    }

    v1775 = 45 * ((v1771 * 0x21D680uLL) >> 64);
    v1776 = v1740 - (v1773 ^ 0xFFFFFFFFFFFFFFD3 ^ v1774);
    v1777 = v1775 + v1772;
    if (__CFADD__(v1775, v1772))
    {
      v1778 = 45;
    }

    else
    {
      v1778 = 0;
    }

    v1886 = __CFADD__(v1778, v1777);
    v1779 = v1778 + v1777;
    v1780 = v1886;
    if (v1779 > 0xFFFFFFFFFFFFFFD2)
    {
      v1780 = 1;
    }

    if (v1780)
    {
      v1781 = 45;
    }

    else
    {
      v1781 = 0;
    }

    v1782 = v1781 + v1779;
    v1886 = __CFADD__(v1782, v1776);
    v1783 = v1782 + v1776;
    v1784 = v1886;
    if (v1783 > 0xFFFFFFFFFFFFFFD2)
    {
      v1784 = 1;
    }

    if (v1784)
    {
      v1785 = 45;
    }

    else
    {
      v1785 = 0;
    }

    v1786 = v1785 + v1783;
    if (v1628)
    {
      v1787 = 45;
    }

    else
    {
      v1787 = 0;
    }

    v1788 = v1787 + v1623;
    v1886 = __CFADD__(v1788, v1786);
    v1789 = v1788 + v1786;
    v1790 = v1886;
    if (v1789 > 0xFFFFFFFFFFFFFFD2)
    {
      v1790 = 1;
    }

    if (v1790)
    {
      v1791 = 45;
    }

    else
    {
      v1791 = 0;
    }

    v1792 = v1791 + v1789;
    v1793 = 0xB1035F48A597370CLL * v1792;
    v1794 = (v1792 * 0xB1035F48A597370CLL) >> 64;
    v1795 = (v1794 * 0x2DuLL) >> 64;
    v1794 *= 45;
    v1886 = __CFADD__(v1794, v1793);
    v1796 = v1794 + v1793;
    if (v1886)
    {
      v1797 = v1795 + 1;
    }

    else
    {
      v1797 = v1795;
    }

    v1798 = 45 * v1797;
    v1799 = v1798 + v1796 > 0xFFFFFFFFFFFFFFD2;
    v1886 = __CFADD__(v1798, v1796);
    v1800 = v1798 + v1796;
    v1801 = v1573 * v1576;
    v1802 = (v1573 * v1576) >> 64;
    v1803 = (v1802 * 0x2DuLL) >> 64;
    v1804 = 45 * v1802;
    if (v1886)
    {
      v1799 = 1;
    }

    v1886 = __CFADD__(v1804, v1801);
    v1805 = v1804 + v1801;
    if (v1886)
    {
      v1806 = v1803 + 1;
    }

    else
    {
      v1806 = v1803;
    }

    v1807 = 45 * v1806;
    v1808 = v1807 + v1805 > 0xFFFFFFFFFFFFFFD2;
    v1886 = __CFADD__(v1807, v1805);
    v1809 = v1807 + v1805;
    if (v1886 || v1808)
    {
      v1811 = 45;
    }

    else
    {
      v1811 = 0;
    }

    v1812 = v1811 + v1809;
    if (v1799)
    {
      v1813 = 45;
    }

    else
    {
      v1813 = 0;
    }

    v1814 = v1813 + v1800;
    v1886 = __CFADD__(v1812, v1814);
    v1815 = v1812 + v1814;
    v1816 = v1886;
    if (v1815 > 0xFFFFFFFFFFFFFFD2)
    {
      v1816 = 1;
    }

    if (v1816)
    {
      v1817 = 45;
    }

    else
    {
      v1817 = 0;
    }

    v1818 = v1817 + v1815;
    v1819 = 0xD122545C17BA3DF4 * v1818;
    v1820 = (v1818 * 0xD122545C17BA3DF4) >> 64;
    v1821 = (v1820 * 0x2DuLL) >> 64;
    v1820 *= 45;
    v1886 = __CFADD__(v1820, v1819);
    v1822 = v1820 + v1819;
    if (v1886)
    {
      v1823 = v1821 + 1;
    }

    else
    {
      v1823 = v1821;
    }

    v1824 = 45 * v1823;
    v1886 = __CFADD__(v1824, v1822);
    v1825 = v1824 + v1822;
    v1826 = v1886;
    if (v1825 > 0xFFFFFFFFFFFFFFD2)
    {
      v1826 = 1;
    }

    if (v1826)
    {
      v1827 = 45;
    }

    else
    {
      v1827 = 0;
    }

    v1828 = v1827 + v1825;
    v1829 = 0xC8D34D34D34D34B0 * (v1827 + v1825);
    STACK[0x3A88] = v1828;
    v1830 = (v1828 * 0xC8D34D34D34D34B0) >> 64;
    v1831 = (v1830 * 0x2DuLL) >> 64;
    v1830 *= 45;
    v1886 = __CFADD__(v1830, v1829);
    v1832 = v1830 + v1829;
    if (v1886)
    {
      v1833 = v1831 + 1;
    }

    else
    {
      v1833 = v1831;
    }

    v1834 = 45 * v1833;
    v1886 = __CFADD__(v1834, v1832);
    v1835 = v1834 + v1832;
    v1836 = v1886;
    if (v1835 > 0xFFFFFFFFFFFFFFD2)
    {
      v1836 = 1;
    }

    if (v1836)
    {
      v1837 = 45;
    }

    else
    {
      v1837 = 0;
    }

    v1838 = v1837 + v1835;
    if (v1837 + v1835 >= 0xFFFFFFFFFFFFFFCBLL)
    {
      v1839 = v1580;
    }

    else
    {
      v1839 = 0;
    }

    v1840 = v1839 + v1838;
    v1841 = 60480 * v1840;
    v1842 = ((v1840 * 0xEC40uLL) >> 64) * v1580;
    v1886 = __CFADD__(v1842, v1841);
    v1843 = v1842 + v1841;
    if (v1886)
    {
      v1844 = v1580;
    }

    else
    {
      v1844 = 0;
    }

    STACK[0x3A38] = v1844 + v1843;
    v1845 = __CFADD__(v1844, v1843) || v1844 + v1843 > 0xFFFFFFFFFFFFFFCALL;
    LODWORD(STACK[0x3A30]) = v1845;
    if (v1615 >= 0xFFFFFFFFFFFFFFD9)
    {
      v1846 = a7;
    }

    else
    {
      v1846 = 0;
    }

    v1847 = v1846 + v1615;
    v1848 = 1395360 * v1847;
    v1849 = ((v1847 * 0x154AA0uLL) >> 64) * a7;
    v1886 = __CFADD__(v1849, v1848);
    v1850 = v1849 + v1848;
    if (v1886)
    {
      v1851 = a7;
    }

    else
    {
      v1851 = 0;
    }

    v1852 = v1851 + v1850 > 0xFFFFFFFFFFFFFFD8;
    v1886 = __CFADD__(v1851, v1850);
    v1853 = v1851 + v1850;
    v1854 = v1886 || v1852;
    if (v1655 >= 0xFFFFFFFFFFFFFFD9)
    {
      v1855 = a7;
    }

    else
    {
      v1855 = 0;
    }

    v1856 = v1855 + v1655;
    v1857 = 984960 * v1856;
    v1858 = ((v1856 * 0xF0780uLL) >> 64) * a7;
    v1886 = __CFADD__(v1858, v1857);
    v1859 = v1858 + v1857;
    if (v1886)
    {
      v1860 = a7;
    }

    else
    {
      v1860 = 0;
    }

    v1861 = v1860 + v1859 > 0xFFFFFFFFFFFFFFD8;
    v1886 = __CFADD__(v1860, v1859);
    v1862 = v1860 + v1859;
    v1863 = v1886 || v1861;
    if (v1720 >= 0xFFFFFFFFFFFFFFD9)
    {
      v1864 = a7;
    }

    else
    {
      v1864 = 0;
    }

    v1865 = v1864 + v1720;
    v1866 = 881280 * v1865;
    v1867 = ((v1865 * 0xD7280uLL) >> 64) * a7;
    v1886 = __CFADD__(v1867, v1866);
    v1868 = v1867 + v1866;
    if (v1886)
    {
      v1869 = a7;
    }

    else
    {
      v1869 = 0;
    }

    v1886 = __CFADD__(v1869, v1868);
    v1870 = v1869 + v1868;
    v1871 = v1886;
    if (v1870 > 0xFFFFFFFFFFFFFFD8)
    {
      v1871 = 1;
    }

    if (v1697 >= 0xFFFFFFFFFFFFFFD9)
    {
      v1872 = a7;
    }

    else
    {
      v1872 = 0;
    }

    if (v1871)
    {
      v1873 = a7;
    }

    else
    {
      v1873 = 0;
    }

    v1874 = v1873 + v1870;
    v1875 = v1872 + v1697;
    v1876 = 930240 * (v1872 + v1697);
    v1877 = ((v1875 * 0xE31C0uLL) >> 64) * a7;
    if (v1874 >= 0xFFFFFFFFFFFFFFD9)
    {
      v1878 = a7;
    }

    else
    {
      v1878 = 0;
    }

    v1886 = __CFADD__(v1877, v1876);
    v1879 = v1877 + v1876;
    v1880 = v1878 + v1874;
    if (v1886)
    {
      v1881 = a7;
    }

    else
    {
      v1881 = 0;
    }

    v1886 = __CFADD__(v1881, v1879);
    v1882 = v1881 + v1879;
    v1883 = v1886;
    if (v1882 > 0xFFFFFFFFFFFFFFD8)
    {
      v1883 = 1;
    }

    if (v1883)
    {
      v1884 = a7;
    }

    else
    {
      v1884 = 0;
    }

    v1885 = v1882 + v1880 + v1884;
    v1886 = v1885 <= 0xFFFFFFFFFFFFFFD8 && v1885 >= v1880;
    if (v1886)
    {
      v1887 = 0;
    }

    else
    {
      v1887 = a7;
    }

    v1888 = v1887 + v1885;
    if (v1863)
    {
      v1889 = a7;
    }

    else
    {
      v1889 = 0;
    }

    v1890 = v1889 + v1862 + v1888;
    if (v1769 >= 0xFFFFFFFFFFFFFFD9)
    {
      v1891 = a7;
    }

    else
    {
      v1891 = 0;
    }

    v1892 = v1891 + v1769;
    v1893 = 1116288 * v1892;
    v1894 = ((v1892 * 0x110880uLL) >> 64) * a7;
    v1886 = __CFADD__(v1894, v1893);
    v1895 = v1894 + v1893;
    if (v1886)
    {
      v1896 = a7;
    }

    else
    {
      v1896 = 0;
    }

    v1886 = __CFADD__(v1896, v1895);
    v1897 = v1896 + v1895;
    v1898 = v1886;
    if (v1897 > 0xFFFFFFFFFFFFFFD8)
    {
      v1898 = 1;
    }

    if (v1890 < v1888 || v1890 > 0xFFFFFFFFFFFFFFD8)
    {
      v1900 = a7;
    }

    else
    {
      v1900 = 0;
    }

    v1901 = v1900 + v1890;
    if (v1898)
    {
      v1902 = a7;
    }

    else
    {
      v1902 = 0;
    }

    v1903 = v1902 + v1897;
    v1904 = v1903 + v1901 > 0xFFFFFFFFFFFFFFD8;
    v1886 = __CFADD__(v1903, v1901);
    v1905 = v1903 + v1901;
    if (v1886 || v1904)
    {
      v1907 = a7;
    }

    else
    {
      v1907 = 0;
    }

    v1908 = v1907 + v1905;
    if (v1854)
    {
      v1909 = a7;
    }

    else
    {
      v1909 = 0;
    }

    v1910 = v1909 + v1853;
    v1886 = __CFADD__(v1910, v1908);
    v1911 = v1910 + v1908;
    v1912 = v1886;
    if (v1911 > 0xFFFFFFFFFFFFFFD8)
    {
      v1912 = 1;
    }

    if (v1912)
    {
      v1913 = a7;
    }

    else
    {
      v1913 = 0;
    }

    v1914 = v1913 + v1911;
    v1915 = 0x40685A60ABFE0A21 * v1914;
    v1916 = (v1914 * 0x40685A60ABFE0A21uLL) >> 64;
    v1917 = (v1916 * a7) >> 64;
    v1918 = v1916 * a7;
    v1886 = __CFADD__(v1918, v1915);
    v1919 = v1918 + v1915;
    if (v1886)
    {
      v1920 = v1917 + 1;
    }

    else
    {
      v1920 = v1917;
    }

    v1921 = v1920 * a7;
    v1922 = (v1921 + v1919) > 0xFFFFFFFFFFFFFFD8;
    v1886 = __CFADD__(v1921, v1919);
    v1923 = v1921 + v1919;
    v1924 = v1575 * a8;
    v1925 = (v1575 * a8) >> 64;
    v1926 = (v1925 * a7) >> 64;
    v1927 = v1925 * a7;
    if (v1886)
    {
      v1922 = 1;
    }

    v1886 = __CFADD__(v1927, v1924);
    v1928 = v1927 + v1924;
    if (v1886)
    {
      v1929 = v1926 + 1;
    }

    else
    {
      v1929 = v1926;
    }

    v1930 = v1929 * a7;
    v1931 = v1930 + v1928 > 0xFFFFFFFFFFFFFFD8;
    v1886 = __CFADD__(v1930, v1928);
    v1932 = v1930 + v1928;
    if (v1886 || v1931)
    {
      v1934 = a7;
    }

    else
    {
      v1934 = 0;
    }

    v1935 = v1934 + v1932;
    if (v1922)
    {
      v1936 = a7;
    }

    else
    {
      v1936 = 0;
    }

    v1937 = v1936 + v1923;
    v1938 = v1935 + v1937 > 0xFFFFFFFFFFFFFFD8;
    v1886 = __CFADD__(v1935, v1937);
    v1939 = v1935 + v1937;
    if (v1886 || v1938)
    {
      v1941 = a7;
    }

    else
    {
      v1941 = 0;
    }

    v1942 = v1941 + v1939;
    v1943 = 0x68180B91CEB03F68 * v1942;
    v1944 = (v1942 * 0x68180B91CEB03F68uLL) >> 64;
    v1945 = (v1944 * a7) >> 64;
    v1946 = v1944 * a7;
    v1886 = __CFADD__(v1946, v1943);
    v1947 = v1946 + v1943;
    if (v1886)
    {
      v1948 = v1945 + 1;
    }

    else
    {
      v1948 = v1945;
    }

    v1949 = v1948 * a7;
    v1886 = __CFADD__(v1949, v1947);
    v1950 = v1949 + v1947;
    v1951 = v1886;
    if (v1950 > 0xFFFFFFFFFFFFFFD8)
    {
      v1951 = 1;
    }

    if (v1951)
    {
      v1952 = a7;
    }

    else
    {
      v1952 = 0;
    }

    v1953 = v1952 + v1950;
    v1954 = 0x56433B79890CEDD9 * (v1952 + v1950);
    STACK[0x3A70] = v1953;
    v1955 = (v1953 * 0x56433B79890CEDD9uLL) >> 64;
    v1956 = (v1955 * a7) >> 64;
    v1957 = v1955 * a7;
    v1886 = __CFADD__(v1957, v1954);
    v1958 = v1957 + v1954;
    if (v1886)
    {
      v1959 = v1956 + 1;
    }

    else
    {
      v1959 = v1956;
    }

    v1960 = v1959 * a7;
    v1961 = (v1960 + v1958) > 0xFFFFFFFFFFFFFFD8;
    v1886 = __CFADD__(v1960, v1958);
    v1962 = v1960 + v1958;
    if (v1886 || v1961)
    {
      v1964 = a7;
    }

    else
    {
      v1964 = 0;
    }

    v1965 = v1964 + v1962;
    if ((v1964 + v1962) >= 0xFFFFFFFFFFFFFFCBLL)
    {
      v1966 = v1580;
    }

    else
    {
      v1966 = 0;
    }

    v1967 = v1966 + v1965;
    v1968 = 34560 * v1967;
    v1969 = ((v1967 * 0x8700uLL) >> 64) * v1580;
    v1886 = __CFADD__(v1969, v1968);
    v1970 = v1969 + v1968;
    if (v1886)
    {
      v1971 = v1580;
    }

    else
    {
      v1971 = 0;
    }

    v1972 = v1971 + v1970;
    v1973 = __CFADD__(v1971, v1970) || v1971 + v1970 > 0xFFFFFFFFFFFFFFCALL;
    if (v1615 >= 0xFFFFFFFFFFFFFFD1)
    {
      v1974 = v1581;
    }

    else
    {
      v1974 = 0;
    }

    v1975 = v1974 + v1615;
    v1976 = 3230304 * v1975;
    v1977 = ((v1975 * 0x314A60uLL) >> 64) * v1581;
    v1886 = __CFADD__(v1977, v1976);
    v1978 = v1977 + v1976;
    if (v1886)
    {
      v1979 = v1581;
    }

    else
    {
      v1979 = 0;
    }

    v1980 = v1979 + v1978 > 0xFFFFFFFFFFFFFFD0;
    v1886 = __CFADD__(v1979, v1978);
    v1981 = v1979 + v1978;
    v1982 = v1886 || v1980;
    if (v1697 >= 0xFFFFFFFFFFFFFFD1)
    {
      v1983 = v1581;
    }

    else
    {
      v1983 = 0;
    }

    v1984 = v1983 + v1697;
    v1985 = 2349312 * v1984;
    v1986 = ((v1984 * 0x23D900uLL) >> 64) * v1581;
    v1886 = __CFADD__(v1986, v1985);
    v1987 = v1986 + v1985;
    if (v1886)
    {
      v1988 = v1581;
    }

    else
    {
      v1988 = 0;
    }

    v1989 = v1988 + v1987 > 0xFFFFFFFFFFFFFFD0;
    v1886 = __CFADD__(v1988, v1987);
    v1990 = v1988 + v1987;
    v1991 = v1886 || v1989;
    if (v1720 >= 0xFFFFFFFFFFFFFFD1)
    {
      v1992 = v1581;
    }

    else
    {
      v1992 = 0;
    }

    v1993 = v1992 + v1720;
    v1994 = 2247168 * v1993;
    v1995 = ((v1993 * 0x224A00uLL) >> 64) * v1581;
    v1886 = __CFADD__(v1995, v1994);
    v1996 = v1995 + v1994;
    if (v1886)
    {
      v1997 = v1581;
    }

    else
    {
      v1997 = 0;
    }

    v1998 = v1997 + v1996 > 0xFFFFFFFFFFFFFFD0;
    v1886 = __CFADD__(v1997, v1996);
    v1999 = v1997 + v1996;
    if (v1886 || v1998)
    {
      v2001 = v1581;
    }

    else
    {
      v2001 = 0;
    }

    v2002 = v2001 + v1999;
    if (v2002 >= 0xFFFFFFFFFFFFFFD1)
    {
      v2003 = v1581;
    }

    else
    {
      v2003 = 0;
    }

    v2004 = v2003 + v2002;
    if (v1991)
    {
      v2005 = v1581;
    }

    else
    {
      v2005 = 0;
    }

    v2006 = v1990 + v2004 + v2005;
    if (v2006 <= 0xFFFFFFFFFFFFFFD0 && v2006 >= v2004)
    {
      v2008 = 0;
    }

    else
    {
      v2008 = v1581;
    }

    if (v1655 >= 0xFFFFFFFFFFFFFFD1)
    {
      v2009 = v1581;
    }

    else
    {
      v2009 = 0;
    }

    v2010 = v2009 + v1655;
    v2011 = 2461184 * v2010;
    v2012 = ((v2010 * 0x258E00uLL) >> 64) * v1581;
    v2013 = v2008 + v2006;
    v2014 = v2012 + v2011;
    if (__CFADD__(v2012, v2011))
    {
      v2015 = v1581;
    }

    else
    {
      v2015 = 0;
    }

    v1886 = __CFADD__(v2015, v2014);
    v2016 = v2015 + v2014;
    v2017 = v1886;
    if (v2016 > 0xFFFFFFFFFFFFFFD0)
    {
      v2017 = 1;
    }

    if (v2017)
    {
      v2018 = v1581;
    }

    else
    {
      v2018 = 0;
    }

    v2019 = v2018 + v2016;
    v2020 = v2019 + v2013 > 0xFFFFFFFFFFFFFFD0;
    v1886 = __CFADD__(v2019, v2013);
    v2021 = v2019 + v2013;
    v2022 = v1886 || v2020;
    if (v1769 >= 0xFFFFFFFFFFFFFFD1)
    {
      v2023 = v1581;
    }

    else
    {
      v2023 = 0;
    }

    v2024 = v2023 + v1769;
    v2025 = 2720256 * v2024;
    v2026 = (v2024 * 0x298200uLL) >> 64;
    if (v2022)
    {
      v2027 = v1581;
    }

    else
    {
      v2027 = 0;
    }

    v2028 = v2027 + v2021;
    v2029 = v2026 * v1581;
    v1886 = __CFADD__(v2029, v2025);
    v2030 = v2029 + v2025;
    if (v1886)
    {
      v2031 = v1581;
    }

    else
    {
      v2031 = 0;
    }

    v1886 = __CFADD__(v2031, v2030);
    v2032 = v2031 + v2030;
    v2033 = v1886;
    if (v2032 > 0xFFFFFFFFFFFFFFD0)
    {
      v2033 = 1;
    }

    if (v2033)
    {
      v2034 = v1581;
    }

    else
    {
      v2034 = 0;
    }

    v2035 = v2034 + v2032;
    v2036 = v2035 + v2028 > 0xFFFFFFFFFFFFFFD0;
    v1886 = __CFADD__(v2035, v2028);
    v2037 = v2035 + v2028;
    if (v1886 || v2036)
    {
      v2039 = v1581;
    }

    else
    {
      v2039 = 0;
    }

    v2040 = v2039 + v2037;
    if (v1982)
    {
      v2041 = v1581;
    }

    else
    {
      v2041 = 0;
    }

    v2042 = v2041 + v1981;
    v2043 = v2042 + v2040 > 0xFFFFFFFFFFFFFFD0;
    v1886 = __CFADD__(v2042, v2040);
    v2044 = v2042 + v2040;
    v2045 = a9 * STACK[0x3AA0];
    v2046 = (a9 * STACK[0x3AA0]) >> 64;
    v2047 = (v2046 * v1581) >> 64;
    v2048 = v2046 * v1581;
    if (v1886)
    {
      v2043 = 1;
    }

    v1886 = __CFADD__(v2048, v2045);
    v2049 = v2048 + v2045;
    if (v1886)
    {
      v2050 = v2047 + 1;
    }

    else
    {
      v2050 = v2047;
    }

    v2051 = v2050 * v1581;
    v1886 = __CFADD__(v2051, v2049);
    v2052 = v2051 + v2049;
    v2053 = v1886;
    if (v2052 > 0xFFFFFFFFFFFFFFD0)
    {
      v2053 = 1;
    }

    if (v2053)
    {
      v2054 = v1581;
    }

    else
    {
      v2054 = 0;
    }

    v2055 = v2054 + v2052;
    if (v2043)
    {
      v2056 = v1581;
    }

    else
    {
      v2056 = 0;
    }

    v2057 = v2056 + v2044;
    v2058 = 0xF9CF898C924065FBLL * v2057;
    v2059 = (v2057 * 0xF9CF898C924065FBLL) >> 64;
    v2060 = (v2059 * v1581) >> 64;
    v2061 = v2059 * v1581;
    v1886 = __CFADD__(v2061, v2058);
    v2062 = v2061 + v2058;
    if (v1886)
    {
      v2063 = v2060 + 1;
    }

    else
    {
      v2063 = v2060;
    }

    v2064 = v2063 * v1581;
    v1886 = __CFADD__(v2064, v2062);
    v2065 = v2064 + v2062;
    v2066 = v1886;
    if (v2065 > 0xFFFFFFFFFFFFFFD0)
    {
      v2066 = 1;
    }

    if (v2066)
    {
      v2067 = v1581;
    }

    else
    {
      v2067 = 0;
    }

    v2068 = v2067 + v2065;
    v2069 = v2055 + v2068 > 0xFFFFFFFFFFFFFFD0;
    v1886 = __CFADD__(v2055, v2068);
    v2070 = v2055 + v2068;
    if (v1886)
    {
      v2069 = 1;
    }

    if (v2069)
    {
      v2071 = v1581;
    }

    else
    {
      v2071 = 0;
    }

    v2072 = v2071 + v2070;
    v2073 = 0x5C1DC82ED83E4DC6 * v2072;
    v2074 = (v2072 * 0x5C1DC82ED83E4DC6uLL) >> 64;
    v2075 = (v2074 * v1581) >> 64;
    v2076 = v2074 * v1581;
    v1886 = __CFADD__(v2076, v2073);
    v2077 = v2076 + v2073;
    if (v1886)
    {
      v2078 = v2075 + 1;
    }

    else
    {
      v2078 = v2075;
    }

    v2079 = v2078 * v1581;
    v2080 = (v2079 + v2077) > 0xFFFFFFFFFFFFFFD0;
    v1886 = __CFADD__(v2079, v2077);
    v2081 = v2079 + v2077;
    if (v1886 || v2080)
    {
      v2083 = v1581;
    }

    else
    {
      v2083 = 0;
    }

    v2084 = v2083 + v2081;
    v2085 = 0xA52E52E52E52E51 * (v2083 + v2081);
    STACK[0x3A40] = v2084;
    v2086 = (v2084 * 0xA52E52E52E52E51uLL) >> 64;
    v2087 = (v2086 * v1581) >> 64;
    v2088 = v2086 * v1581;
    v1886 = __CFADD__(v2088, v2085);
    v2089 = v2088 + v2085;
    if (v1886)
    {
      v2090 = v2087 + 1;
    }

    else
    {
      v2090 = v2087;
    }

    v2091 = v2090 * v1581;
    v2092 = v2091 + v2089;
    v2093 = __CFADD__(v2091, v2089) || (v2091 + v2089) > 0xFFFFFFFFFFFFFFD0;
    if (v1769 >= 0xFFFFFFFFFFFFFFEFLL)
    {
      v2094 = v1578;
    }

    else
    {
      v2094 = 0;
    }

    v2095 = v2094 + v1769;
    v2096 = 5376 * v2095;
    v2097 = (__PAIR128__(16, 5376) * v2095) >> 64;
    v1886 = __CFADD__(v2097, v2096);
    v2098 = v2097 + v2096;
    if (v1886)
    {
      v2099 = v1578;
    }

    else
    {
      v2099 = 0;
    }

    v2100 = (v2099 + v2098) > 0xFFFFFFFFFFFFFFEELL;
    v1886 = __CFADD__(v2099, v2098);
    v2101 = v2099 + v2098;
    v2102 = v1886 || v2100;
    if (v1655 >= 0xFFFFFFFFFFFFFFEFLL)
    {
      v2103 = v1578;
    }

    else
    {
      v2103 = 0;
    }

    v2104 = v2103 + v1655;
    v2105 = 17 * ((v2104 * 0xE00uLL) >> 64);
    v2104 *= 3584;
    v1886 = __CFADD__(v2105, v2104);
    v2106 = v2105 + v2104;
    if (v1886)
    {
      v2107 = v1578;
    }

    else
    {
      v2107 = 0;
    }

    v2108 = (v2107 + v2106) > 0xFFFFFFFFFFFFFFEELL;
    v1886 = __CFADD__(v2107, v2106);
    v2109 = v2107 + v2106;
    v2110 = v1886 || v2108;
    if (v1720 >= 0xFFFFFFFFFFFFFFEFLL)
    {
      v2111 = v1578;
    }

    else
    {
      v2111 = 0;
    }

    v2112 = v2111 + v1720;
    v2113 = 2688 * v2112;
    v2114 = (__PAIR128__(16, 2688) * v2112) >> 64;
    v1886 = __CFADD__(v2114, v2113);
    v2115 = v2114 + v2113;
    if (v1886)
    {
      v2116 = v1578;
    }

    else
    {
      v2116 = 0;
    }

    v2117 = (v2116 + v2115) > 0xFFFFFFFFFFFFFFEELL;
    v1886 = __CFADD__(v2116, v2115);
    v2118 = v2116 + v2115;
    if (v1886 || v2117)
    {
      v2120 = v1578;
    }

    else
    {
      v2120 = 0;
    }

    v2121 = v2120 + v2118;
    if (v1697 >= 0xFFFFFFFFFFFFFFEFLL)
    {
      v2122 = v1578;
    }

    else
    {
      v2122 = 0;
    }

    v2123 = v2122 + v1697;
    v2124 = 3 * v2123;
    v2125 = (__PAIR128__(16, 3072) * v2123) >> 64;
    if (v2121 >= 0xFFFFFFFFFFFFFFEFLL)
    {
      v2126 = v1578;
    }

    else
    {
      v2126 = 0;
    }

    v1886 = __CFADD__(v2125, v2124 << 10);
    v2127 = v2125 + (v2124 << 10);
    if (v1886)
    {
      v2128 = v1578;
    }

    else
    {
      v2128 = 0;
    }

    v1886 = __CFADD__(v2128, v2127);
    v2129 = v2128 + v2127;
    v2130 = v2126 + v2121;
    v2131 = v1886;
    if (v2129 > 0xFFFFFFFFFFFFFFEELL)
    {
      v2131 = 1;
    }

    if (v2131)
    {
      v2132 = v1578;
    }

    else
    {
      v2132 = 0;
    }

    v2133 = v2129 + v2130 + v2132;
    if (v2133 <= 0xFFFFFFFFFFFFFFEELL && v2133 >= v2130)
    {
      v2135 = 0;
    }

    else
    {
      v2135 = v1578;
    }

    v2136 = v2135 + v2133;
    if (v2110)
    {
      v2137 = v1578;
    }

    else
    {
      v2137 = 0;
    }

    v2138 = v2137 + v2109;
    v2139 = v2138 + v2136 > 0xFFFFFFFFFFFFFFEELL;
    v1886 = __CFADD__(v2138, v2136);
    v2140 = v2138 + v2136;
    if (v1886)
    {
      v2139 = 1;
    }

    if (v2102)
    {
      v2141 = v1578;
    }

    else
    {
      v2141 = 0;
    }

    v2142 = v2141 + v2101;
    if (v2139)
    {
      v2143 = v1578;
    }

    else
    {
      v2143 = 0;
    }

    v2144 = v2143 + v2140;
    v1886 = __CFADD__(v2142, v2144);
    v2145 = v2142 + v2144;
    v2146 = v1886;
    if (v1615 >= 0xFFFFFFFFFFFFFFEFLL)
    {
      v2147 = v1578;
    }

    else
    {
      v2147 = 0;
    }

    v2148 = v2147 + v1615;
    v2149 = 21504 * v2148;
    v2150 = (__PAIR128__(16, 21504) * v2148) >> 64;
    if (v2145 > 0xFFFFFFFFFFFFFFEELL)
    {
      v2146 = 1;
    }

    if (v2146)
    {
      v2151 = v1578;
    }

    else
    {
      v2151 = 0;
    }

    v1886 = __CFADD__(v2150, v2149);
    v2152 = v2150 + v2149;
    v2153 = v2151 + v2145;
    if (v1886)
    {
      v2154 = v1578;
    }

    else
    {
      v2154 = 0;
    }

    v1886 = __CFADD__(v2154, v2152);
    v2155 = v2154 + v2152;
    v2156 = v1886;
    if (v2155 > 0xFFFFFFFFFFFFFFEELL)
    {
      v2156 = 1;
    }

    if (v2156)
    {
      v2157 = v1578;
    }

    else
    {
      v2157 = 0;
    }

    v2158 = v2157 + v2155;
    v1886 = __CFADD__(v2158, v2153);
    v2159 = v2158 + v2153;
    v2160 = v1886;
    if (v2159 > 0xFFFFFFFFFFFFFFEELL)
    {
      v2160 = 1;
    }

    if (v2160)
    {
      v2161 = v1578;
    }

    else
    {
      v2161 = 0;
    }

    v2162 = v2161 + v2159;
    v2163 = 0xBCE0B40AAD3903CALL * v2162;
    v2164 = (((v2162 * 0xBCE0B40AAD3903CALL) >> 64) * v1578) >> 64;
    v2165 = (__PAIR128__(16, 0xBCE0B40AAD3903CALL) * v2162) >> 64;
    v1886 = __CFADD__(v2165, v2163);
    v2166 = v2165 + v2163;
    if (v1886)
    {
      v2167 = v2164 + 1;
    }

    else
    {
      v2167 = v2164;
    }

    v2168 = 17 * v2167;
    v2169 = (v2168 + v2166) > 0xFFFFFFFFFFFFFFEELL;
    v1886 = __CFADD__(v2168, v2166);
    v2170 = v2168 + v2166;
    v2171 = STACK[0x3AE8] * STACK[0x3978];
    v2172 = STACK[0x3978];
    v2173 = (__PAIR128__(16, STACK[0x3AE8]) * v2172) >> 64;
    if (v1886)
    {
      v2169 = 1;
    }

    v1886 = __CFADD__(v2173, v2171);
    v2174 = v2173 + v2171;
    if (v1886)
    {
      v2175 = ((((STACK[0x3AE8] * v2172) >> 64) * v1578) >> 64) + 1;
    }

    else
    {
      v2175 = (((STACK[0x3AE8] * v2172) >> 64) * v1578) >> 64;
    }

    v2176 = 17 * v2175;
    v1886 = __CFADD__(v2176, v2174);
    v2177 = v2176 + v2174;
    v2178 = v1886;
    if (v2177 > 0xFFFFFFFFFFFFFFEELL)
    {
      v2178 = 1;
    }

    if (v2178)
    {
      v2179 = v1578;
    }

    else
    {
      v2179 = 0;
    }

    v2180 = v2179 + v2177;
    if (v2169)
    {
      v2181 = v1578;
    }

    else
    {
      v2181 = 0;
    }

    v2182 = v2181 + v2170;
    v2183 = v2180 + v2182 > 0xFFFFFFFFFFFFFFEELL;
    v1886 = __CFADD__(v2180, v2182);
    v2184 = v2180 + v2182;
    if (v1886 || v2183)
    {
      v2186 = v1578;
    }

    else
    {
      v2186 = 0;
    }

    v2187 = v2186 + v2184;
    v2188 = 0x260186186186185FLL * v2187;
    v2189 = (((v2187 * 0x260186186186185FuLL) >> 64) * v1578) >> 64;
    v2190 = (__PAIR128__(16, 0x260186186186185FLL) * v2187) >> 64;
    v1886 = __CFADD__(v2190, v2188);
    v2191 = v2190 + v2188;
    if (v1886)
    {
      v2192 = v2189 + 1;
    }

    else
    {
      v2192 = v2189;
    }

    v2193 = 17 * v2192;
    v2194 = (v2193 + v2191) > 0xFFFFFFFFFFFFFFEELL;
    v1886 = __CFADD__(v2193, v2191);
    v2195 = v2193 + v2191;
    if (v1886 || v2194)
    {
      v2197 = v1578;
    }

    else
    {
      v2197 = 0;
    }

    v2198 = v2197 + v2195;
    v2199 = 0x500038BDBA674958 * (v2197 + v2195);
    STACK[0x3AA0] = v2198;
    v2200 = (v2198 * 0x500038BDBA674958uLL) >> 64;
    v2201 = (v2200 * v1578) >> 64;
    v2200 *= 17;
    v1886 = __CFADD__(v2200, v2199);
    v2202 = v2200 + v2199;
    if (v1886)
    {
      v2203 = v2201 + 1;
    }

    else
    {
      v2203 = v2201;
    }

    v2204 = 17 * v2203;
    v2205 = v2204 + v2202 > 0xFFFFFFFFFFFFFFEELL;
    v1886 = __CFADD__(v2204, v2202);
    v2206 = v2204 + v2202;
    v2207 = v1886 || v2205;
    if (v1720 >= 0xFFFFFFFFFFFFFFDFLL)
    {
      v2208 = 33;
    }

    else
    {
      v2208 = 0;
    }

    v2209 = v2208 + v1720;
    v2210 = 362880 * v2209;
    v2211 = (__PAIR128__(32, 362880) * v2209) >> 64;
    v1886 = __CFADD__(v2211, v2210);
    v2212 = v2211 + v2210;
    if (v1886)
    {
      v2213 = 33;
    }

    else
    {
      v2213 = 0;
    }

    v2214 = (v2213 + v2212) > 0xFFFFFFFFFFFFFFDELL;
    v1886 = __CFADD__(v2213, v2212);
    v2215 = v2213 + v2212;
    if (v1886 || v2214)
    {
      v2217 = 33;
    }

    else
    {
      v2217 = 0;
    }

    v2218 = v2217 + v2215;
    if (v1697 >= 0xFFFFFFFFFFFFFFDFLL)
    {
      v2219 = 33;
    }

    else
    {
      v2219 = 0;
    }

    v2220 = v2219 + v1697;
    v2221 = 387072 * v2220;
    v2222 = (__PAIR128__(32, 387072) * v2220) >> 64;
    if (v2218 >= 0xFFFFFFFFFFFFFFDFLL)
    {
      v2223 = 33;
    }

    else
    {
      v2223 = 0;
    }

    v2224 = v2223 + v2218;
    v1886 = __CFADD__(v2222, v2221);
    v2225 = v2222 + v2221;
    if (v1886)
    {
      v2226 = 33;
    }

    else
    {
      v2226 = 0;
    }

    v1886 = __CFADD__(v2226, v2225);
    v2227 = v2226 + v2225;
    v2228 = v1886;
    if (v2227 > 0xFFFFFFFFFFFFFFDELL)
    {
      v2228 = 1;
    }

    if (v2228)
    {
      v2229 = 33;
    }

    else
    {
      v2229 = 0;
    }

    v2230 = v2227 + v2224 + v2229;
    if (v1655 >= 0xFFFFFFFFFFFFFFDFLL)
    {
      v2231 = 33;
    }

    else
    {
      v2231 = 0;
    }

    v2232 = v2231 + v1655;
    v2233 = 414720 * v2232;
    if (v2230 > 0xFFFFFFFFFFFFFFDELL || v2224 > v2230)
    {
      v2235 = 33;
    }

    else
    {
      v2235 = 0;
    }

    v2236 = v2235 + v2230;
    v2237 = 33 * ((v2232 * 0x65400uLL) >> 64);
    v1886 = __CFADD__(v2237, v2233);
    v2238 = v2237 + v2233;
    if (v1886)
    {
      v2239 = 33;
    }

    else
    {
      v2239 = 0;
    }

    v1886 = __CFADD__(v2239, v2238);
    v2240 = v2239 + v2238;
    v2241 = v1886;
    if (v2240 > 0xFFFFFFFFFFFFFFDELL)
    {
      v2241 = 1;
    }

    if (v2241)
    {
      v2242 = 33;
    }

    else
    {
      v2242 = 0;
    }

    v2243 = v2242 + v2240;
    v2244 = v2243 + v2236 > 0xFFFFFFFFFFFFFFDELL;
    v1886 = __CFADD__(v2243, v2236);
    v2245 = v2243 + v2236;
    v2246 = v1886 || v2244;
    if (v1769 >= 0xFFFFFFFFFFFFFFDFLL)
    {
      v2247 = 33;
    }

    else
    {
      v2247 = 0;
    }

    v4152 = v2246 == 0;
    v2248 = v2247 + v1769;
    v2249 = 483840 * (v2247 + v1769);
    v2250 = (__PAIR128__(32, 483840) * v2248) >> 64;
    if (v4152)
    {
      v2251 = 0;
    }

    else
    {
      v2251 = 33;
    }

    v1886 = __CFADD__(v2250, v2249);
    v2252 = v2250 + v2249;
    v2253 = v2251 + v2245;
    if (v1886)
    {
      v2254 = 33;
    }

    else
    {
      v2254 = 0;
    }

    v1886 = __CFADD__(v2254, v2252);
    v2255 = v2254 + v2252;
    v2256 = v1886;
    if (v2255 > 0xFFFFFFFFFFFFFFDELL)
    {
      v2256 = 1;
    }

    if (v2256)
    {
      v2257 = 33;
    }

    else
    {
      v2257 = 0;
    }

    v2258 = v2257 + v2255;
    v1886 = __CFADD__(v2258, v2253);
    v2259 = v2258 + v2253;
    v2260 = v1886;
    if (v1615 >= 0xFFFFFFFFFFFFFFDFLL)
    {
      v2261 = 33;
    }

    else
    {
      v2261 = 0;
    }

    v2262 = v2261 + v1615;
    v2263 = 645120 * v2262;
    v2264 = (v2262 * 0x9D800uLL) >> 64;
    if (v2259 > 0xFFFFFFFFFFFFFFDELL)
    {
      v2260 = 1;
    }

    if (v2260)
    {
      v2265 = 33;
    }

    else
    {
      v2265 = 0;
    }

    v2266 = v2265 + v2259;
    v2267 = 33 * v2264 + v2263;
    if (__CFADD__(33 * v2264, v2263))
    {
      v2268 = 33;
    }

    else
    {
      v2268 = 0;
    }

    v1886 = __CFADD__(v2268, v2267);
    v2269 = v2268 + v2267;
    v2270 = v1886;
    if (v2269 > 0xFFFFFFFFFFFFFFDELL)
    {
      v2270 = 1;
    }

    if (v2270)
    {
      v2271 = 33;
    }

    else
    {
      v2271 = 0;
    }

    v2272 = v2271 + v2269;
    v2273 = v2272 + v2266 > 0xFFFFFFFFFFFFFFDELL;
    v1886 = __CFADD__(v2272, v2266);
    v2274 = v2272 + v2266;
    v2275 = STACK[0x3A48] * STACK[0x3980];
    v2276 = STACK[0x3A48];
    v2277 = (__PAIR128__(32, STACK[0x3980]) * v2276) >> 64;
    if (v1886)
    {
      v2273 = 1;
    }

    v1886 = __CFADD__(v2277, v2275);
    v2278 = v2277 + v2275;
    if (v1886)
    {
      v2279 = ((((v2276 * STACK[0x3980]) >> 64) * 0x21) >> 64) + 1;
    }

    else
    {
      v2279 = (((v2276 * STACK[0x3980]) >> 64) * 0x21) >> 64;
    }

    v2280 = 33 * v2279;
    v2281 = (v2280 + v2278) > 0xFFFFFFFFFFFFFFDELL;
    v1886 = __CFADD__(v2280, v2278);
    v2282 = v2280 + v2278;
    if (v1886 || v2281)
    {
      v2284 = 33;
    }

    else
    {
      v2284 = 0;
    }

    v2285 = v2284 + v2282;
    if (v2273)
    {
      v2286 = 33;
    }

    else
    {
      v2286 = 0;
    }

    v2287 = v2286 + v2274;
    v2288 = 0xD2087261F2F13621 * v2287;
    v2289 = (((v2287 * 0xD2087261F2F13621) >> 64) * 0x21) >> 64;
    v2290 = (__PAIR128__(32, 0xD2087261F2F13621) * v2287) >> 64;
    v1886 = __CFADD__(v2290, v2288);
    v2291 = v2290 + v2288;
    if (v1886)
    {
      v2292 = v2289 + 1;
    }

    else
    {
      v2292 = v2289;
    }

    v2293 = 33 * v2292;
    v1886 = __CFADD__(v2293, v2291);
    v2294 = v2293 + v2291;
    v2295 = v1886;
    if (v2294 > 0xFFFFFFFFFFFFFFDELL)
    {
      v2295 = 1;
    }

    if (v2295)
    {
      v2296 = 33;
    }

    else
    {
      v2296 = 0;
    }

    v2297 = v2296 + v2294;
    v2298 = v2285 + v2297 > 0xFFFFFFFFFFFFFFDELL;
    v1886 = __CFADD__(v2285, v2297);
    v2299 = v2285 + v2297;
    v2300 = v1886 || v2298;
    if (v1615 >= 0xFFFFFFFFFFFFFFCBLL)
    {
      v2301 = v1580;
    }

    else
    {
      v2301 = 0;
    }

    v2302 = v2301 + v1615;
    v2303 = 5491200 * v2302;
    v2304 = ((v2302 * 0x53CA00uLL) >> 64) * v1580;
    v1886 = __CFADD__(v2304, v2303);
    v2305 = v2304 + v2303;
    if (v1886)
    {
      v2306 = v1580;
    }

    else
    {
      v2306 = 0;
    }

    v2307 = v2306 + v2305 > 0xFFFFFFFFFFFFFFCALL;
    v1886 = __CFADD__(v2306, v2305);
    v2308 = v2306 + v2305;
    v2309 = v1886 || v2307;
    if (v1655 >= 0xFFFFFFFFFFFFFFCBLL)
    {
      v2310 = v1580;
    }

    else
    {
      v2310 = 0;
    }

    v2311 = v2310 + v1655;
    v2312 = 4347200 * v2311;
    v2313 = ((v2311 * 0x425540uLL) >> 64) * v1580;
    v1886 = __CFADD__(v2313, v2312);
    v2314 = v2313 + v2312;
    if (v1886)
    {
      v2315 = v1580;
    }

    else
    {
      v2315 = 0;
    }

    v2316 = v2315 + v2314 > 0xFFFFFFFFFFFFFFCALL;
    v1886 = __CFADD__(v2315, v2314);
    v2317 = v2315 + v2314;
    v2318 = v1886 || v2316;
    if (v1720 >= 0xFFFFFFFFFFFFFFCBLL)
    {
      v2319 = v1580;
    }

    else
    {
      v2319 = 0;
    }

    v2320 = v2319 + v1720;
    v2321 = 4012800 * v2320;
    v2322 = ((v2320 * 0x3D3B00uLL) >> 64) * v1580;
    v1886 = __CFADD__(v2322, v2321);
    v2323 = v2322 + v2321;
    if (v1886)
    {
      v2324 = v1580;
    }

    else
    {
      v2324 = 0;
    }

    v2325 = v2324 + v2323 > 0xFFFFFFFFFFFFFFCALL;
    v1886 = __CFADD__(v2324, v2323);
    v2326 = v2324 + v2323;
    v2327 = v1886 || v2325;
    if (v1697 >= 0xFFFFFFFFFFFFFFCBLL)
    {
      v2328 = v1580;
    }

    else
    {
      v2328 = 0;
    }

    if (v2327)
    {
      v2329 = v1580;
    }

    else
    {
      v2329 = 0;
    }

    v2330 = v2329 + v2326;
    v2331 = v2328 + v1697;
    v2332 = 4173312 * v2331;
    v2333 = ((v2331 * 0x3FAE00uLL) >> 64) * v1580;
    if (v2330 >= 0xFFFFFFFFFFFFFFCBLL)
    {
      v2334 = v1580;
    }

    else
    {
      v2334 = 0;
    }

    v1886 = __CFADD__(v2333, v2332);
    v2335 = v2333 + v2332;
    v2336 = v2334 + v2330;
    if (v1886)
    {
      v2337 = v1580;
    }

    else
    {
      v2337 = 0;
    }

    v1886 = __CFADD__(v2337, v2335);
    v2338 = v2337 + v2335;
    v2339 = v1886;
    if (v2338 > 0xFFFFFFFFFFFFFFCALL)
    {
      v2339 = 1;
    }

    if (v2339)
    {
      v2340 = v1580;
    }

    else
    {
      v2340 = 0;
    }

    v2341 = v2338 + v2336 + v2340;
    if (v2336 > v2341 || v2341 > 0xFFFFFFFFFFFFFFCALL)
    {
      v2343 = v1580;
    }

    else
    {
      v2343 = 0;
    }

    v2344 = v2343 + v2341;
    if (v2318)
    {
      v2345 = v1580;
    }

    else
    {
      v2345 = 0;
    }

    v2346 = v2345 + v2317;
    v2347 = v2346 + v2344 > 0xFFFFFFFFFFFFFFCALL;
    v1886 = __CFADD__(v2346, v2344);
    v2348 = v2346 + v2344;
    v2349 = STACK[0x3A98] * STACK[0x3A90];
    v2350 = (STACK[0x3A98] * STACK[0x3A90]) >> 64;
    v2351 = (v2350 * v1580) >> 64;
    v2352 = v2350 * v1580;
    if (v1886)
    {
      v2347 = 1;
    }

    v1886 = __CFADD__(v2352, v2349);
    v2353 = v2352 + v2349;
    if (v1886)
    {
      v2354 = v2351 + 1;
    }

    else
    {
      v2354 = v2351;
    }

    v2355 = v2354 * v1580;
    v1886 = __CFADD__(v2355, v2353);
    v2356 = v2355 + v2353;
    v2357 = v1886;
    if (v2356 > 0xFFFFFFFFFFFFFFCALL)
    {
      v2357 = 1;
    }

    if (v2357)
    {
      v2358 = v1580;
    }

    else
    {
      v2358 = 0;
    }

    v2359 = v2358 + v2356;
    if (v1769 >= 0xFFFFFFFFFFFFFFCBLL)
    {
      v2360 = v1580;
    }

    else
    {
      v2360 = 0;
    }

    v2361 = v2360 + v1769;
    v2362 = 4742400 * v2361;
    v2363 = (v2361 * 0x485D00uLL) >> 64;
    if (v2347)
    {
      v2364 = v1580;
    }

    else
    {
      v2364 = 0;
    }

    v2365 = v2363 * v1580;
    v2366 = v2364 + v2348;
    v2367 = v2365 + v2362;
    if (__CFADD__(v2365, v2362))
    {
      v2368 = v1580;
    }

    else
    {
      v2368 = 0;
    }

    v1886 = __CFADD__(v2368, v2367);
    v2369 = v2368 + v2367;
    v2370 = v1886;
    if (v2369 > 0xFFFFFFFFFFFFFFCALL)
    {
      v2370 = 1;
    }

    if (v2370)
    {
      v2371 = v1580;
    }

    else
    {
      v2371 = 0;
    }

    v2372 = v2371 + v2369;
    v1886 = __CFADD__(v2372, v2366);
    v2373 = v2372 + v2366;
    v2374 = v1886;
    if (v2373 > 0xFFFFFFFFFFFFFFCALL)
    {
      v2374 = 1;
    }

    if (v2374)
    {
      v2375 = v1580;
    }

    else
    {
      v2375 = 0;
    }

    v2376 = v2375 + v2373;
    if (v2309)
    {
      v2377 = v1580;
    }

    else
    {
      v2377 = 0;
    }

    v2378 = v2377 + v2308;
    v1886 = __CFADD__(v2378, v2376);
    v2379 = v2378 + v2376;
    v2380 = v1886;
    if (v2379 > 0xFFFFFFFFFFFFFFCALL)
    {
      v2380 = 1;
    }

    if (v2380)
    {
      v2381 = v1580;
    }

    else
    {
      v2381 = 0;
    }

    v2382 = v2381 + v2379;
    if (v2300)
    {
      v2383 = 33;
    }

    else
    {
      v2383 = 0;
    }

    v2384 = v2383 + v2299;
    v2385 = 0xA64A3E2F1B4DE8E6 * v2382;
    v2386 = (v2382 * 0xA64A3E2F1B4DE8E6) >> 64;
    v2387 = (v2386 * v1580) >> 64;
    v2388 = v2386 * v1580;
    v1886 = __CFADD__(v2388, v2385);
    v2389 = v2388 + v2385;
    if (v1886)
    {
      v2390 = v2387 + 1;
    }

    else
    {
      v2390 = v2387;
    }

    v2391 = v2390 * v1580;
    v1886 = __CFADD__(v2391, v2389);
    v2392 = v2391 + v2389;
    v2393 = v1886;
    v2394 = 0xBF751FE036E6FC90 * v2384;
    v2395 = (v2384 * 0xBF751FE036E6FC90) >> 64;
    if (v2392 > 0xFFFFFFFFFFFFFFCALL)
    {
      v2393 = 1;
    }

    if (v2393)
    {
      v2396 = v1580;
    }

    else
    {
      v2396 = 0;
    }

    v2397 = v2396 + v2392;
    v1886 = __CFADD__(v2359, v2397);
    v2398 = v2359 + v2397;
    v2399 = v1886;
    v2400 = (v2395 * 0x21uLL) >> 64;
    v2401 = 33 * v2395;
    if (v2398 > 0xFFFFFFFFFFFFFFCALL)
    {
      v2399 = 1;
    }

    if (v2399)
    {
      v2402 = v1580;
    }

    else
    {
      v2402 = 0;
    }

    v1886 = __CFADD__(v2401, v2394);
    v2403 = v2401 + v2394;
    v2404 = v2402 + v2398;
    if (v1886)
    {
      v2405 = v2400 + 1;
    }

    else
    {
      v2405 = v2400;
    }

    v2406 = 33 * v2405;
    v1886 = __CFADD__(v2406, v2403);
    v2407 = v2406 + v2403;
    v2408 = v1886;
    if (v2407 > 0xFFFFFFFFFFFFFFDELL)
    {
      v2408 = 1;
    }

    if (v2408)
    {
      v2409 = 33;
    }

    else
    {
      v2409 = 0;
    }

    v2410 = v2409 + v2407;
    v2411 = 0x59708602BDC08F49 * v2404;
    v2412 = (v2404 * 0x59708602BDC08F49uLL) >> 64;
    v2413 = 0x8696596596596585 * v2410;
    STACK[0x3A58] = v2410;
    v2414 = (v2410 * 0x8696596596596585) >> 64;
    v2415 = (v2412 * v1580) >> 64;
    v2416 = v2412 * v1580;
    v1886 = __CFADD__(v2416, v2411);
    v2417 = v2416 + v2411;
    if (v1886)
    {
      v2418 = v2415 + 1;
    }

    else
    {
      v2418 = v2415;
    }

    v2419 = v2418 * v1580;
    v1886 = __CFADD__(v2419, v2417);
    v2420 = v2419 + v2417;
    v2421 = v1886;
    v2422 = (v2414 * 0x21uLL) >> 64;
    v2423 = 33 * v2414;
    if (v2420 > 0xFFFFFFFFFFFFFFCALL)
    {
      v2421 = 1;
    }

    if (v2207)
    {
      v2424 = v1578;
    }

    else
    {
      v2424 = 0;
    }

    v1886 = __CFADD__(v2423, v2413);
    v2425 = v2423 + v2413;
    if (v1886)
    {
      v2426 = v2422 + 1;
    }

    else
    {
      v2426 = v2422;
    }

    v2427 = 33 * v2426;
    v1886 = __CFADD__(v2427, v2425);
    v2428 = v2427 + v2425;
    v2429 = v1886;
    if (v2421)
    {
      v2430 = v1580;
    }

    else
    {
      v2430 = 0;
    }

    v2431 = v2430 + v2420;
    if (v2428 > 0xFFFFFFFFFFFFFFDELL)
    {
      v2432 = 1;
    }

    else
    {
      v2432 = v2429;
    }

    if (v2432)
    {
      v2433 = 33;
    }

    else
    {
      v2433 = 0;
    }

    v2434 = v2433 + v2428;
    v2435 = v2424 + v2206;
    if (v2093)
    {
      v2436 = v1581;
    }

    else
    {
      v2436 = 0;
    }

    v2437 = v2436 + v2092;
    if (v2435 >= 0xFFFFFFFFFFFFFFCBLL)
    {
      v2438 = v1580;
    }

    else
    {
      v2438 = 0;
    }

    v2439 = v2438 + v2435;
    v2440 = 13440 * v2439;
    v2441 = ((v2439 * 0x3480uLL) >> 64) * v1580;
    if (v2434 >= 0xFFFFFFFFFFFFFFCBLL)
    {
      v2442 = v1580;
    }

    else
    {
      v2442 = 0;
    }

    v1886 = __CFADD__(v2441, v2440);
    v2443 = v2441 + v2440;
    v2444 = v2442 + v2434;
    if (v1886)
    {
      v2445 = v1580;
    }

    else
    {
      v2445 = 0;
    }

    v1886 = __CFADD__(v2445, v2443);
    v2446 = v2445 + v2443;
    v2447 = v1886;
    v2448 = 24192 * v2444;
    v2449 = (v2444 * 0x5E80uLL) >> 64;
    if (v2446 > 0xFFFFFFFFFFFFFFCALL)
    {
      v2447 = 1;
    }

    if (v2447)
    {
      v2450 = v1580;
    }

    else
    {
      v2450 = 0;
    }

    v2451 = v2450 + v2446;
    v2452 = v2449 * v1580;
    v1886 = __CFADD__(v2452, v2448);
    v2453 = v2452 + v2448;
    if (v1886)
    {
      v2454 = v1580;
    }

    else
    {
      v2454 = 0;
    }

    if (v2451 >= 0xFFFFFFFFFFFFFFCBLL)
    {
      v2455 = v1580;
    }

    else
    {
      v2455 = 0;
    }

    v2456 = v2455 + v2451;
    v1886 = __CFADD__(v2454, v2453);
    v2457 = v2454 + v2453;
    v2458 = v1886;
    if (v2457 > 0xFFFFFFFFFFFFFFCALL)
    {
      v2458 = 1;
    }

    if (v2458)
    {
      v2459 = v1580;
    }

    else
    {
      v2459 = 0;
    }

    v2460 = v2459 + v2457;
    v1886 = __CFADD__(v2460, v2456);
    v2461 = v2460 + v2456;
    v2462 = v1886;
    if (v2461 > 0xFFFFFFFFFFFFFFCALL)
    {
      v2462 = 1;
    }

    if (v2462)
    {
      v2463 = v1580;
    }

    else
    {
      v2463 = 0;
    }

    v2464 = v2463 + v2461;
    if (v1973)
    {
      v2465 = v1580;
    }

    else
    {
      v2465 = 0;
    }

    v2466 = v2465 + v1972;
    v1886 = __CFADD__(v2466, v2464);
    v2467 = v2466 + v2464;
    v2468 = v1886;
    if (v2467 > 0xFFFFFFFFFFFFFFCALL)
    {
      v2468 = 1;
    }

    if (v2468)
    {
      v2469 = v1580;
    }

    else
    {
      v2469 = 0;
    }

    v2470 = v2469 + v2467;
    if (v2437 >= 0xFFFFFFFFFFFFFFCBLL)
    {
      v2471 = v1580;
    }

    else
    {
      v2471 = 0;
    }

    if (LODWORD(STACK[0x3A30]))
    {
      v2472 = v1580;
    }

    else
    {
      v2472 = 0;
    }

    v2473 = v2471 + v2437;
    v2474 = 80640 * v2473;
    v2475 = v2472 + STACK[0x3A38];
    v1886 = __CFADD__(v2475, v2470);
    v2476 = v2475 + v2470;
    v2477 = v1886;
    v2478 = (v2473 * 0x13B00uLL) >> 64;
    if (v2476 > 0xFFFFFFFFFFFFFFCALL)
    {
      v2477 = 1;
    }

    v2479 = v2478 * v1580;
    if (v2477)
    {
      v2480 = v1580;
    }

    else
    {
      v2480 = 0;
    }

    v2481 = v2480 + v2476;
    v1886 = __CFADD__(v2479, v2474);
    v2482 = v2479 + v2474;
    if (v1886)
    {
      v2483 = v1580;
    }

    else
    {
      v2483 = 0;
    }

    v1886 = __CFADD__(v2483, v2482);
    v2484 = v2483 + v2482;
    v2485 = v1886;
    if (v2484 > 0xFFFFFFFFFFFFFFCALL)
    {
      v2485 = 1;
    }

    if (v2485)
    {
      v2486 = v1580;
    }

    else
    {
      v2486 = 0;
    }

    v2487 = v2486 + v2484;
    v1886 = __CFADD__(v2487, v2481);
    v2488 = v2487 + v2481;
    v2489 = v1886;
    if (v2488 > 0xFFFFFFFFFFFFFFCALL)
    {
      v2489 = 1;
    }

    if (v2489)
    {
      v2490 = v1580;
    }

    else
    {
      v2490 = 0;
    }

    v2491 = v2490 + v2488;
    STACK[0x3AE8] = v2431;
    v1886 = v2491 >= v2431;
    v2492 = v2491 - v2431;
    v2493 = -53;
    if (v1886)
    {
      v2493 = 0;
    }

    v2494 = v2492 + v2493;
    v2495 = 0xF1A85D307DB285A1 * v2494;
    v2496 = (v2494 * 0xF1A85D307DB285A1) >> 64;
    v2497 = (v2496 * v1580) >> 64;
    v2498 = v2496 * v1580;
    v1886 = __CFADD__(v2498, v2495);
    v2499 = v2498 + v2495;
    if (v1886)
    {
      v2500 = v2497 + 1;
    }

    else
    {
      v2500 = v2497;
    }

    v2501 = v2500 * v1580;
    v1886 = __CFADD__(v2501, v2499);
    v2502 = v2501 + v2499;
    v2503 = v1886;
    if (v2502 > 0xFFFFFFFFFFFFFFCALL)
    {
      v2503 = 1;
    }

    if (v2503)
    {
      v2504 = v1580;
    }

    else
    {
      v2504 = 0;
    }

    v2505 = v2504 + v2502;
    v2506 = 15;
    if (v2505 < 0xFFFFFFFFFFFFFFF1)
    {
      v2506 = 0;
    }

    v2507 = v2506 + v2505;
    v2508 = -829455 * v2507;
    v2509 = (v2507 * 0xFFFFFFFFFFF357F1) >> 64;
    v2510 = 15 * v2509;
    v2511 = (v2509 * 0xFuLL) >> 64;
    v1886 = __CFADD__(v2510, v2508);
    v2512 = v2510 + v2508;
    if (v1886)
    {
      ++v2511;
    }

    v2513 = 15 * v2511;
    STACK[0x3A98] = v2513 + v2512;
    v2514 = __CFADD__(v2513, v2512) || (v2513 + v2512) > 0xFFFFFFFFFFFFFFF0;
    LODWORD(STACK[0x3A90]) = v2514;
    if (v2505 >= 0xFFFFFFFFFFFFFFF7)
    {
      v2515 = 9;
    }

    else
    {
      v2515 = 0;
    }

    v2516 = v2515 + v2505;
    v2517 = -7879689 * v2516;
    v2518 = (((v2516 * 0xFFFFFFFFFF87C3F7) >> 64) * 9) >> 64;
    v2519 = (__PAIR128__(8, -7879689) * v2516) >> 64;
    v1886 = __CFADD__(v2519, v2517);
    v2520 = v2519 + v2517;
    if (v1886)
    {
      v2521 = v2518 + 1;
    }

    else
    {
      v2521 = v2518;
    }

    v2522 = 9 * v2521;
    STACK[0x3A48] = v2522 + v2520;
    v2523 = __CFADD__(v2522, v2520) || (v2522 + v2520) > 0xFFFFFFFFFFFFFFF6;
    LODWORD(STACK[0x3A38]) = v2523;
    if (v2505 >= 0xFFFFFFFFFFFFFFFBLL)
    {
      v2524 = 5;
    }

    else
    {
      v2524 = 0;
    }

    v2525 = v2524 + v2505;
    v2526 = -19192325 * v2525;
    v2527 = (((v2525 * 0xFFFFFFFFFEDB25FBLL) >> 64) * 5) >> 64;
    v2528 = (__PAIR128__(4, -19192325) * v2525) >> 64;
    v1886 = __CFADD__(v2528, v2526);
    v2529 = v2528 + v2526;
    if (v1886)
    {
      v2530 = v2527 + 1;
    }

    else
    {
      v2530 = v2527;
    }

    v2531 = 5 * v2530;
    STACK[0x3A30] = v2531 + v2529;
    v2532 = __CFADD__(v2531, v2529) || (v2531 + v2529) > 0xFFFFFFFFFFFFFFFALL;
    LODWORD(STACK[0x3A28]) = v2532;
    if (v2505 >= 0xFFFFFFFFFFFFFFFDLL)
    {
      v2533 = 3;
    }

    else
    {
      v2533 = 0;
    }

    v2534 = v2533 + v2505;
    v2535 = -27941763 * v2534;
    v2536 = (((v2534 * 0xFFFFFFFFFE55A47DLL) >> 64) * 3) >> 64;
    v2537 = (__PAIR128__(2, -27941763) * v2534) >> 64;
    v1886 = __CFADD__(v2537, v2535);
    v2538 = v2537 + v2535;
    if (v1886)
    {
      v2539 = v2536 + 1;
    }

    else
    {
      v2539 = v2536;
    }

    v2540 = 3 * v2539;
    STACK[0x3A20] = v2540 + v2538;
    v2541 = __CFADD__(v2540, v2538) || (v2540 + v2538) > 0xFFFFFFFFFFFFFFFCLL;
    LODWORD(STACK[0x3A08]) = v2541;
    if (v2505 == -1)
    {
      v2505 = 0;
    }

    v2542 = -39378945 * v2505;
    v2543 = (v2505 * 0xFFFFFFFFFDA71FFFLL) >> 64;
    v2544 = __CFADD__(__CFADD__(v2543, v2542), v2543 + v2542);
    v2545 = __CFADD__(v2543, v2542) + v2543 + v2542 == -1 || v2544;
    STACK[0x3A00] = v2543 + v2542 + __CFADD__(v2543, v2542) + v2545;
    v2546 = 15;
    if (v2437 < 0xFFFFFFFFFFFFFFF1)
    {
      v2546 = 0;
    }

    v2547 = v2546 + v2437;
    v2548 = 25920 * v2547;
    v2549 = 15 * ((v2547 * 0x6540uLL) >> 64);
    v1886 = __CFADD__(v2549, v2548);
    v2550 = v2549 + v2548;
    v2551 = 15;
    if (!v1886)
    {
      v2551 = 0;
    }

    STACK[0x39F8] = v2551 + v2550;
    v2552 = __CFADD__(v2551, v2550) || (v2551 + v2550) > 0xFFFFFFFFFFFFFFF0;
    LODWORD(STACK[0x39F0]) = v2552;
    v2553 = 15;
    if (v1838 < 0xFFFFFFFFFFFFFFF1)
    {
      v2553 = 0;
    }

    v2554 = v2553 + v1838;
    v2555 = 27648 * v2554;
    v2556 = 15 * ((v2554 * 0x6C00uLL) >> 64);
    v1886 = __CFADD__(v2556, v2555);
    v2557 = v2556 + v2555;
    v2558 = 15;
    if (!v1886)
    {
      v2558 = 0;
    }

    v2559 = v2558 + v2557;
    v2560 = __CFADD__(v2558, v2557) || (v2558 + v2557) > 0xFFFFFFFFFFFFFFF0;
    v2561 = 15;
    if (v2435 < 0xFFFFFFFFFFFFFFF1)
    {
      v2561 = 0;
    }

    v2562 = v2561 + v2435;
    v2563 = 414720 * v2562;
    v2564 = 15 * ((v2562 * 0x65400uLL) >> 64);
    v1886 = __CFADD__(v2564, v2563);
    v2565 = v2564 + v2563;
    v2566 = 15;
    if (!v1886)
    {
      v2566 = 0;
    }

    v1886 = __CFADD__(v2566, v2565);
    v2567 = v2566 + v2565;
    v2568 = v1886;
    if (v2567 > 0xFFFFFFFFFFFFFFF0)
    {
      v2568 = 1;
    }

    v2569 = 15;
    if (v2434 < 0xFFFFFFFFFFFFFFF1)
    {
      v2569 = 0;
    }

    v2570 = v2569 + v2434;
    v2571 = 46080 * v2570;
    v2572 = (v2570 * 0xB400uLL) >> 64;
    v4152 = v2568 == 0;
    v2573 = 15;
    if (v4152)
    {
      v2573 = 0;
    }

    v2574 = v2573 + v2567;
    v1886 = __CFADD__(15 * v2572, v2571);
    v2575 = 15 * v2572 + v2571;
    v2576 = 15;
    if (!v1886)
    {
      v2576 = 0;
    }

    v1886 = __CFADD__(v2576, v2575);
    v2577 = v2576 + v2575;
    v2578 = v1886;
    if (v2577 > 0xFFFFFFFFFFFFFFF0)
    {
      v2578 = 1;
    }

    v2579 = 15;
    if (v2574 < 0xFFFFFFFFFFFFFFF1)
    {
      v2579 = 0;
    }

    v2580 = v2579 + v2574;
    v4152 = v2578 == 0;
    v2581 = 15;
    if (v4152)
    {
      v2581 = 0;
    }

    v2582 = v2581 + v2577;
    v1886 = __CFADD__(v2582, v2580);
    v2583 = v2582 + v2580;
    v2584 = v1886;
    v2585 = 15;
    if (v1965 < 0xFFFFFFFFFFFFFFF1)
    {
      v2585 = 0;
    }

    v2586 = v2585 + v1965;
    v2587 = 34560 * v2586;
    v2588 = (v2586 * 0x8700uLL) >> 64;
    if (v2583 > 0xFFFFFFFFFFFFFFF0)
    {
      v2584 = 1;
    }

    v2589 = 15 * v2588;
    v4152 = v2584 == 0;
    v2590 = 15;
    if (v4152)
    {
      v2590 = 0;
    }

    v1886 = __CFADD__(v2589, v2587);
    v2591 = v2589 + v2587;
    v2592 = 15;
    if (!v1886)
    {
      v2592 = 0;
    }

    v1886 = __CFADD__(v2592, v2591);
    v2593 = v2592 + v2591;
    v2594 = v1886;
    v2595 = v2590 + v2583;
    if (v2593 > 0xFFFFFFFFFFFFFFF0)
    {
      v2596 = 1;
    }

    else
    {
      v2596 = v2594;
    }

    v4152 = v2596 == 0;
    v2597 = 15;
    if (v4152)
    {
      v2597 = 0;
    }

    v2598 = v2597 + v2593;
    v2599 = v2598 + v2595;
    v2600 = __CFADD__(v2598, v2595) || v2598 + v2595 > 0xFFFFFFFFFFFFFFF0;
    if (v2435 >= 0xFFFFFFFFFFFFFFF7)
    {
      v2601 = 9;
    }

    else
    {
      v2601 = 0;
    }

    v2602 = v2601 + v2435;
    v2603 = 984960 * v2602;
    v2604 = (__PAIR128__(8, 984960) * v2602) >> 64;
    v1886 = __CFADD__(v2604, v2603);
    v2605 = v2604 + v2603;
    if (v1886)
    {
      v2606 = 9;
    }

    else
    {
      v2606 = 0;
    }

    v1886 = __CFADD__(v2606, v2605);
    v2607 = v2606 + v2605;
    v2608 = v1886;
    if (v2607 > 0xFFFFFFFFFFFFFFF6)
    {
      v2608 = 1;
    }

    if (v2608)
    {
      v2609 = 9;
    }

    else
    {
      v2609 = 0;
    }

    v2610 = v2609 + v2607;
    if (v2434 >= 0xFFFFFFFFFFFFFFF7)
    {
      v2611 = 9;
    }

    else
    {
      v2611 = 0;
    }

    v2612 = v2611 + v2434;
    v2613 = 328320 * v2612;
    v2614 = (__PAIR128__(8, 328320) * v2612) >> 64;
    v1886 = __CFADD__(v2614, v2613);
    v2615 = v2614 + v2613;
    if (v1886)
    {
      v2616 = 9;
    }

    else
    {
      v2616 = 0;
    }

    v1886 = __CFADD__(v2616, v2615);
    v2617 = v2616 + v2615;
    v2618 = v1886;
    if (v2610 >= 0xFFFFFFFFFFFFFFF7)
    {
      v2619 = 9;
    }

    else
    {
      v2619 = 0;
    }

    v2620 = v2619 + v2610;
    if (v2617 > 0xFFFFFFFFFFFFFFF6)
    {
      v2618 = 1;
    }

    if (v2618)
    {
      v2621 = 9;
    }

    else
    {
      v2621 = 0;
    }

    v2622 = v2621 + v2617;
    v2623 = v2622 + v2620 > 0xFFFFFFFFFFFFFFF6;
    v1886 = __CFADD__(v2622, v2620);
    v2624 = v2622 + v2620;
    v2625 = v1886 || v2623;
    if (v1965 >= 0xFFFFFFFFFFFFFFF7)
    {
      v2626 = 9;
    }

    else
    {
      v2626 = 0;
    }

    v2627 = v2626 + v1965;
    v2628 = 513 * v2627;
    v2629 = (__PAIR128__(8, 262656) * v2627) >> 64;
    if (v2625)
    {
      v2630 = 9;
    }

    else
    {
      v2630 = 0;
    }

    v1886 = __CFADD__(v2629, v2628 << 9);
    v2631 = v2629 + (v2628 << 9);
    v2632 = v2630 + v2624;
    if (v1886)
    {
      v2633 = 9;
    }

    else
    {
      v2633 = 0;
    }

    v1886 = __CFADD__(v2633, v2631);
    v2634 = v2633 + v2631;
    v2635 = v1886;
    if (v2634 > 0xFFFFFFFFFFFFFFF6)
    {
      v2635 = 1;
    }

    if (v2635)
    {
      v2636 = 9;
    }

    else
    {
      v2636 = 0;
    }

    v2637 = v2636 + v2634;
    v2638 = v2637 + v2632 > 0xFFFFFFFFFFFFFFF6;
    v1886 = __CFADD__(v2637, v2632);
    v2639 = v2637 + v2632;
    if (v1886 || v2638)
    {
      v2641 = 9;
    }

    else
    {
      v2641 = 0;
    }

    v2642 = v2641 + v2639;
    if (v1838 >= 0xFFFFFFFFFFFFFFF7)
    {
      v2643 = 9;
    }

    else
    {
      v2643 = 0;
    }

    v2644 = v2643 + v1838;
    v2645 = 218880 * v2644;
    v2646 = (__PAIR128__(8, 218880) * v2644) >> 64;
    v1886 = __CFADD__(v2646, v2645);
    v2647 = v2646 + v2645;
    if (v1886)
    {
      v2648 = 9;
    }

    else
    {
      v2648 = 0;
    }

    v1886 = __CFADD__(v2648, v2647);
    v2649 = v2648 + v2647;
    v2650 = v1886;
    if (v2649 > 0xFFFFFFFFFFFFFFF6)
    {
      v2650 = 1;
    }

    if (v2650)
    {
      v2651 = 9;
    }

    else
    {
      v2651 = 0;
    }

    v2652 = v2651 + v2649;
    v2653 = v2652 + v2642 > 0xFFFFFFFFFFFFFFF6;
    v1886 = __CFADD__(v2652, v2642);
    v2654 = v2652 + v2642;
    v2655 = v1886 || v2653;
    if (v2437 >= 0xFFFFFFFFFFFFFFF7)
    {
      v2656 = 9;
    }

    else
    {
      v2656 = 0;
    }

    v2657 = v2656 + v2437;
    v2658 = 207360 * v2657;
    v2659 = (__PAIR128__(8, 207360) * v2657) >> 64;
    if (v2655)
    {
      v2660 = 9;
    }

    else
    {
      v2660 = 0;
    }

    v1886 = __CFADD__(v2659, v2658);
    v2661 = v2659 + v2658;
    if (v1886)
    {
      v2662 = 9;
    }

    else
    {
      v2662 = 0;
    }

    v1886 = __CFADD__(v2662, v2661);
    v2663 = v2662 + v2661;
    v2664 = v1886;
    v2665 = v2660 + v2654;
    if (v2663 > 0xFFFFFFFFFFFFFFF6)
    {
      v2666 = 1;
    }

    else
    {
      v2666 = v2664;
    }

    if (v2666)
    {
      v2667 = 9;
    }

    else
    {
      v2667 = 0;
    }

    v2668 = v2667 + v2663;
    v2669 = v2668 + v2665;
    v2670 = __CFADD__(v2668, v2665) || v2668 + v2665 > 0xFFFFFFFFFFFFFFF6;
    if (v2437 >= 0xFFFFFFFFFFFFFFFBLL)
    {
      v2671 = 5;
    }

    else
    {
      v2671 = 0;
    }

    v2672 = v2671 + v2437;
    v2673 = 456960 * v2672;
    v2674 = (__PAIR128__(4, 456960) * v2672) >> 64;
    v1886 = __CFADD__(v2674, v2673);
    v2675 = v2674 + v2673;
    if (v1886)
    {
      v2676 = 5;
    }

    else
    {
      v2676 = 0;
    }

    v2677 = v2676 + v2675;
    v2678 = __CFADD__(v2676, v2675) || (v2676 + v2675) > 0xFFFFFFFFFFFFFFFALL;
    if (v1838 >= 0xFFFFFFFFFFFFFFFBLL)
    {
      v2679 = 5;
    }

    else
    {
      v2679 = 0;
    }

    v2680 = v2679 + v1838;
    v2681 = 479808 * v2680;
    v2682 = (__PAIR128__(4, 479808) * v2680) >> 64;
    v1886 = __CFADD__(v2682, v2681);
    v2683 = v2682 + v2681;
    if (v1886)
    {
      v2684 = 5;
    }

    else
    {
      v2684 = 0;
    }

    v2685 = v2684 + v2683;
    v2686 = __CFADD__(v2684, v2683) || (v2684 + v2683) > 0xFFFFFFFFFFFFFFFALL;
    if (v1965 >= 0xFFFFFFFFFFFFFFFBLL)
    {
      v2687 = 5;
    }

    else
    {
      v2687 = 0;
    }

    v2688 = v2687 + v1965;
    v2689 = 564480 * v2688;
    v2690 = (__PAIR128__(4, 564480) * v2688) >> 64;
    v1886 = __CFADD__(v2690, v2689);
    v2691 = v2690 + v2689;
    if (v1886)
    {
      v2692 = 5;
    }

    else
    {
      v2692 = 0;
    }

    v2693 = (v2692 + v2691) > 0xFFFFFFFFFFFFFFFALL;
    v1886 = __CFADD__(v2692, v2691);
    v2694 = v2692 + v2691;
    v2695 = v1886 || v2693;
    if (v2435 >= 0xFFFFFFFFFFFFFFFBLL)
    {
      v2696 = 5;
    }

    else
    {
      v2696 = 0;
    }

    v2697 = v2696 + v2435;
    v2698 = 1599360 * v2697;
    v2699 = (__PAIR128__(4, 1599360) * v2697) >> 64;
    v1886 = __CFADD__(v2699, v2698);
    v2700 = v2699 + v2698;
    if (v1886)
    {
      v2701 = 5;
    }

    else
    {
      v2701 = 0;
    }

    v1886 = __CFADD__(v2701, v2700);
    v2702 = v2701 + v2700;
    v2703 = v1886;
    if (v2702 > 0xFFFFFFFFFFFFFFFALL)
    {
      v2703 = 1;
    }

    if (v2703)
    {
      v2704 = 5;
    }

    else
    {
      v2704 = 0;
    }

    v2705 = v2704 + v2702;
    if (v2434 >= 0xFFFFFFFFFFFFFFFBLL)
    {
      v2706 = 5;
    }

    else
    {
      v2706 = 0;
    }

    if (v2705 >= 0xFFFFFFFFFFFFFFFBLL)
    {
      v2707 = 5;
    }

    else
    {
      v2707 = 0;
    }

    v2708 = v2707 + v2705;
    v2709 = v2706 + v2434;
    v2710 = 685440 * v2709;
    v2711 = (__PAIR128__(4, 685440) * v2709) >> 64;
    v1886 = __CFADD__(v2711, v2710);
    v2712 = v2711 + v2710;
    if (v1886)
    {
      v2713 = 5;
    }

    else
    {
      v2713 = 0;
    }

    v1886 = __CFADD__(v2713, v2712);
    v2714 = v2713 + v2712;
    v2715 = v1886;
    if (v2714 > 0xFFFFFFFFFFFFFFFALL)
    {
      v2715 = 1;
    }

    if (v2715)
    {
      v2716 = 5;
    }

    else
    {
      v2716 = 0;
    }

    v2717 = v2716 + v2714;
    v1886 = __CFADD__(v2717, v2708);
    v2718 = v2717 + v2708;
    v2719 = v1886;
    if (v2718 > 0xFFFFFFFFFFFFFFFALL)
    {
      v2719 = 1;
    }

    if (v2719)
    {
      v2720 = 5;
    }

    else
    {
      v2720 = 0;
    }

    v2721 = v2720 + v2718;
    if (v2695)
    {
      v2722 = 5;
    }

    else
    {
      v2722 = 0;
    }

    v2723 = v2722 + v2694;
    v2724 = v2723 + v2721;
    v2725 = __CFADD__(v2723, v2721) || v2723 + v2721 > 0xFFFFFFFFFFFFFFFALL;
    if (v2437 >= 0xFFFFFFFFFFFFFFFDLL)
    {
      v2726 = 3;
    }

    else
    {
      v2726 = 0;
    }

    v2727 = v2726 + v2437;
    v2728 = 635040 * v2727;
    v2729 = (__PAIR128__(2, 635040) * v2727) >> 64;
    v1886 = __CFADD__(v2729, v2728);
    v2730 = v2729 + v2728;
    if (v1886)
    {
      v2731 = 3;
    }

    else
    {
      v2731 = 0;
    }

    v2732 = v2731 + v2730;
    v2733 = __CFADD__(v2731, v2730) || (v2731 + v2730) > 0xFFFFFFFFFFFFFFFCLL;
    if (v1965 >= 0xFFFFFFFFFFFFFFFDLL)
    {
      v2734 = 3;
    }

    else
    {
      v2734 = 0;
    }

    v2735 = v2734 + v1965;
    v2736 = 776160 * v2735;
    v2737 = (__PAIR128__(2, 776160) * v2735) >> 64;
    v1886 = __CFADD__(v2737, v2736);
    v2738 = v2737 + v2736;
    if (v1886)
    {
      v2739 = 3;
    }

    else
    {
      v2739 = 0;
    }

    v2740 = v2739 + v2738;
    v2741 = __CFADD__(v2739, v2738) || (v2739 + v2738) > 0xFFFFFFFFFFFFFFFCLL;
    if (v2435 >= 0xFFFFFFFFFFFFFFFDLL)
    {
      v2742 = 3;
    }

    else
    {
      v2742 = 0;
    }

    v2743 = v2742 + v2435;
    v2744 = 1995840 * v2743;
    v2745 = (__PAIR128__(2, 1995840) * v2743) >> 64;
    v1886 = __CFADD__(v2745, v2744);
    v2746 = v2745 + v2744;
    if (v1886)
    {
      v2747 = 3;
    }

    else
    {
      v2747 = 0;
    }

    v2748 = (v2747 + v2746) > 0xFFFFFFFFFFFFFFFCLL;
    v1886 = __CFADD__(v2747, v2746);
    v2749 = v2747 + v2746;
    if (v1886 || v2748)
    {
      v2751 = 3;
    }

    else
    {
      v2751 = 0;
    }

    v2752 = v2751 + v2749;
    if (v2434 >= 0xFFFFFFFFFFFFFFFDLL)
    {
      v2753 = 3;
    }

    else
    {
      v2753 = 0;
    }

    v2754 = v2753 + v2434;
    v2755 = 931392 * v2754;
    v2756 = (__PAIR128__(2, 931392) * v2754) >> 64;
    if (v2752 >= 0xFFFFFFFFFFFFFFFDLL)
    {
      v2757 = 3;
    }

    else
    {
      v2757 = 0;
    }

    v1886 = __CFADD__(v2756, v2755);
    v2758 = v2756 + v2755;
    if (v1886)
    {
      v2759 = 3;
    }

    else
    {
      v2759 = 0;
    }

    v1886 = __CFADD__(v2759, v2758);
    v2760 = v2759 + v2758;
    v2761 = v2757 + v2752;
    v2762 = v1886;
    if (v2760 > 0xFFFFFFFFFFFFFFFCLL)
    {
      v2762 = 1;
    }

    if (v2762)
    {
      v2763 = 3;
    }

    else
    {
      v2763 = 0;
    }

    v2764 = v2763 + v2760;
    v2765 = v2764 + v2761;
    v2766 = __CFADD__(v2764, v2761) || v2764 + v2761 > 0xFFFFFFFFFFFFFFFCLL;
    if (v2437 == -1)
    {
      v2767 = 0;
    }

    else
    {
      v2767 = v2437;
    }

    v2768 = 856064 * v2767;
    v2769 = (v2767 * 0xD1000uLL) >> 64;
    LODWORD(v2770) = __CFADD__(__CFADD__(v2769, v2768), v2769 + v2768);
    if (__CFADD__(v2769, v2768) + v2769 + v2768 == -1)
    {
      v2770 = 1;
    }

    else
    {
      v2770 = v2770;
    }

    v2771 = v2769 + v2768 + __CFADD__(v2769, v2768) + v2770;
    if (v1838 == -1)
    {
      v2772 = 0;
    }

    else
    {
      v2772 = v1838;
    }

    v2773 = 894976 * v2772;
    v2774 = (v2772 * 0xDA800uLL) >> 64;
    LODWORD(v2775) = __CFADD__(__CFADD__(v2774, v2773), v2774 + v2773);
    if (__CFADD__(v2774, v2773) + v2774 + v2773 == -1)
    {
      v2775 = 1;
    }

    else
    {
      v2775 = v2775;
    }

    v2776 = v2774 + v2773 + __CFADD__(v2774, v2773) + v2775;
    if (v1965 == -1)
    {
      v2777 = 0;
    }

    else
    {
      v2777 = v1965;
    }

    v2778 = 1036288 * v2777;
    v2779 = (v2777 * 0xFD000uLL) >> 64;
    v2780 = __CFADD__(__CFADD__(v2779, v2778), v2779 + v2778);
    v2781 = __CFADD__(v2779, v2778) + v2779 + v2778 == -1 || v2780;
    v2782 = v2779 + v2778 + __CFADD__(v2779, v2778) + v2781;
    if (v2434 == -1)
    {
      v2783 = 0;
    }

    else
    {
      v2783 = v2434;
    }

    v2784 = 1230592 * v2783;
    v2785 = (v2783 * 0x12C700uLL) >> 64;
    v2786 = __CFADD__(__CFADD__(v2785, v2784), v2785 + v2784);
    v2787 = __CFADD__(v2785, v2784) + v2785 + v2784 == -1 || v2786;
    v2788 = v2785 + v2784 + __CFADD__(v2785, v2784) + v2787;
    if (v2435 == -1)
    {
      v2789 = 0;
    }

    else
    {
      v2789 = v2435;
    }

    v2790 = 2461184 * v2789;
    v2791 = (v2789 * 0x258E00uLL) >> 64;
    v2792 = __CFADD__(__CFADD__(v2791, v2790), v2791 + v2790);
    v2793 = __CFADD__(v2791, v2790) + v2791 + v2790 == -1 || v2792;
    v2794 = v2791 + v2790 + __CFADD__(v2791, v2790) + v2793;
    if (v2794 == -1)
    {
      v2794 = 0;
    }

    v2795 = v2788 + v2794 == -1;
    v1886 = __CFADD__(v2788, v2794);
    v2796 = v2788 + v2794;
    v2797 = v1886 || v2795;
    v2798 = v2797 + v2796;
    v2799 = v2782 + v2798 == -1;
    v1886 = __CFADD__(v2782, v2798);
    v2800 = v2782 + v2798;
    v2801 = v1886 || v2799;
    v2802 = v2801 + v2800;
    v1886 = __CFADD__(v2776, v2802);
    v2803 = v2776 + v2802;
    LODWORD(v2804) = v1886;
    if (v2803 == -1)
    {
      v2804 = 1;
    }

    else
    {
      v2804 = v2804;
    }

    v2805 = v2804 + v2803;
    LODWORD(v2804) = v2771 + v2805 == -1;
    v1886 = __CFADD__(v2771, v2805);
    v2806 = v2771 + v2805;
    if (v1886)
    {
      v2804 = 1;
    }

    else
    {
      v2804 = v2804;
    }

    v2807 = v2804 + v2806;
    if (v2766)
    {
      v2808 = 3;
    }

    else
    {
      v2808 = 0;
    }

    v2809 = v2808 + v2765;
    if (v2741)
    {
      v2810 = 3;
    }

    else
    {
      v2810 = 0;
    }

    v2811 = v2810 + v2740;
    if (v1838 >= 0xFFFFFFFFFFFFFFFDLL)
    {
      v2812 = 3;
    }

    else
    {
      v2812 = 0;
    }

    v1886 = __CFADD__(v2811, v2809);
    v2813 = v2811 + v2809;
    v2814 = v2812 + v1838;
    v2815 = v1886;
    if (v2813 > 0xFFFFFFFFFFFFFFFCLL)
    {
      v2815 = 1;
    }

    v4152 = v2815 == 0;
    v2816 = 665280 * v2814;
    v2817 = (__PAIR128__(2, 665280) * v2814) >> 64;
    if (v4152)
    {
      v2818 = 0;
    }

    else
    {
      v2818 = 3;
    }

    v1886 = __CFADD__(v2817, v2816);
    v2819 = v2817 + v2816;
    if (v1886)
    {
      v2820 = 3;
    }

    else
    {
      v2820 = 0;
    }

    v1886 = __CFADD__(v2820, v2819);
    v2821 = v2820 + v2819;
    v2822 = v1886;
    if (v2821 > 0xFFFFFFFFFFFFFFFCLL)
    {
      v2822 = 1;
    }

    v2823 = v2818 + v2813;
    if (v2822)
    {
      v2824 = 3;
    }

    else
    {
      v2824 = 0;
    }

    v2825 = v2824 + v2821;
    v1886 = __CFADD__(v2825, v2823);
    v2826 = v2825 + v2823;
    v2827 = v1886;
    if (v2826 > 0xFFFFFFFFFFFFFFFCLL)
    {
      v2827 = 1;
    }

    if (v2827)
    {
      v2828 = 3;
    }

    else
    {
      v2828 = 0;
    }

    v2829 = v2828 + v2826;
    if (v2733)
    {
      v2830 = 3;
    }

    else
    {
      v2830 = 0;
    }

    v2831 = v2830 + v2732;
    v1886 = __CFADD__(v2831, v2829);
    v2832 = v2831 + v2829;
    v2833 = v1886;
    if (v2832 > 0xFFFFFFFFFFFFFFFCLL)
    {
      v2833 = 1;
    }

    if (v2833)
    {
      v2834 = 3;
    }

    else
    {
      v2834 = 0;
    }

    v2835 = v2834 + v2832;
    if (v2725)
    {
      v2836 = 5;
    }

    else
    {
      v2836 = 0;
    }

    if (v2686)
    {
      v2837 = 5;
    }

    else
    {
      v2837 = 0;
    }

    v2838 = v2837 + v2685;
    v2839 = v2836 + v2724;
    v1886 = __CFADD__(v2838, v2839);
    v2840 = v2838 + v2839;
    v2841 = v1886;
    if (v2840 > 0xFFFFFFFFFFFFFFFALL)
    {
      v2841 = 1;
    }

    if (v2841)
    {
      v2842 = 5;
    }

    else
    {
      v2842 = 0;
    }

    v2843 = v2842 + v2840;
    if (v2678)
    {
      v2844 = 5;
    }

    else
    {
      v2844 = 0;
    }

    v2845 = v2844 + v2677;
    v1886 = __CFADD__(v2845, v2843);
    v2846 = v2845 + v2843;
    v2847 = v1886;
    if (v2846 > 0xFFFFFFFFFFFFFFFALL)
    {
      v2847 = 1;
    }

    if (v2847)
    {
      v2848 = 5;
    }

    else
    {
      v2848 = 0;
    }

    v2849 = v2848 + v2846;
    if (v2670)
    {
      v2850 = 9;
    }

    else
    {
      v2850 = 0;
    }

    v2851 = v2850 + v2669;
    v2852 = 15;
    if (!v2600)
    {
      v2852 = 0;
    }

    v2853 = v2852 + v2599;
    v2854 = 15;
    if (!v2560)
    {
      v2854 = 0;
    }

    v2855 = v2854 + v2559;
    v1886 = __CFADD__(v2855, v2853);
    v2856 = v2855 + v2853;
    v2857 = v1886;
    if (v2856 > 0xFFFFFFFFFFFFFFF0)
    {
      v2857 = 1;
    }

    v4152 = v2857 == 0;
    v2858 = 15;
    if (v4152)
    {
      v2858 = 0;
    }

    v2859 = v2858 + v2856;
    v2860 = 15;
    if (!LODWORD(STACK[0x39F0]))
    {
      v2860 = 0;
    }

    v2861 = v2860 + STACK[0x39F8];
    v1886 = __CFADD__(v2861, v2859);
    v2862 = v2861 + v2859;
    v2863 = v1886;
    if (v2862 > 0xFFFFFFFFFFFFFFF0)
    {
      v2863 = 1;
    }

    v4152 = v2863 == 0;
    v2864 = 15;
    if (v4152)
    {
      v2864 = 0;
    }

    v2865 = v2864 + v2862;
    v1886 = v2807 >= STACK[0x3A00];
    v2866 = v2807 - STACK[0x3A00];
    v2867 = !v1886;
    if (LODWORD(STACK[0x3A08]))
    {
      v2868 = 3;
    }

    else
    {
      v2868 = 0;
    }

    v1577 = 15;
    v2869 = v2868 + STACK[0x3A20];
    v2870 = v2866 - v2867;
    v2871 = v2835 - v2869;
    if (v2835 >= v2869)
    {
      v2872 = 0;
    }

    else
    {
      v2872 = -3;
    }

    v2873 = v2872 + v2871;
    if (LODWORD(STACK[0x3A28]))
    {
      v2874 = 5;
    }

    else
    {
      v2874 = 0;
    }

    v2875 = v2874 + STACK[0x3A30];
    v1886 = v2849 >= v2875;
    v2876 = v2849 - v2875;
    v2877 = -5;
    if (v1886)
    {
      v2877 = 0;
    }

    v2878 = v2877 + v2876;
    if (LODWORD(STACK[0x3A38]))
    {
      v2879 = 9;
    }

    else
    {
      v2879 = 0;
    }

    v2880 = v2879 + STACK[0x3A48];
    v1886 = v2851 >= v2880;
    v2881 = v2851 - v2880;
    v2882 = -9;
    if (v1886)
    {
      v2882 = 0;
    }

    v2883 = v2882 + v2881;
    if (LODWORD(STACK[0x3A90]))
    {
      v2884 = 15;
    }

    else
    {
      v2884 = 0;
    }

    v2885 = v2884 + STACK[0x3A98];
    v1886 = v2865 >= v2885;
    v2886 = v2865 - v2885;
    v2887 = -15;
    if (v1886)
    {
      v2887 = 0;
    }

    v2888 = v2887 + v2886;
    switch(STACK[0x3A50])
    {
      case 2u:
        STACK[0x15B0] = STACK[0x3A40];
        STACK[0x3828] = STACK[0x29C0];
        STACK[0x3830] = STACK[0x29C8];
        STACK[0x3090] = STACK[0x28E0];
        STACK[0x3098] = STACK[0x28E8];
        STACK[0x3820] = STACK[0x29D0];
        STACK[0x3088] = STACK[0x28F0];
        STACK[0x30A0] = STACK[0x2990];
        STACK[0x30C0] = STACK[0x2BC8];
        STACK[0x3080] = STACK[0x2B90];
        STACK[0x3078] = STACK[0x29D8];
        STACK[0x3810] = STACK[0x2AF8];
        STACK[0x3070] = STACK[0x2998];
        STACK[0x3068] = STACK[0x29F8];
        STACK[0x30B0] = STACK[0x2BD0];
        STACK[0x30B8] = STACK[0x29E0];
        STACK[0x3060] = STACK[0x2A00];
        STACK[0x15A8] = v2888;
        STACK[0x3818] = STACK[0x2BD8];
        STACK[0x3050] = STACK[0x28F8];
        STACK[0x3040] = STACK[0x2900];
        STACK[0x30A8] = STACK[0x2B00];
        STACK[0x3058] = STACK[0x2A08];
        STACK[0x15A0] = v2870;
        STACK[0x3038] = STACK[0x2908];
        STACK[0x3030] = STACK[0x29E8];
        STACK[0x3938] = STACK[0x2B08];
        STACK[0x3020] = STACK[0x2A10];
        STACK[0x1598] = v2883;
        STACK[0x1590] = v2873;
        STACK[0x3028] = STACK[0x2A18];
        STACK[0x3018] = STACK[0x29A0];
        STACK[0x1588] = STACK[0x3A58];
        STACK[0x1580] = STACK[0x3A70];
        STACK[0x1578] = STACK[0x3AA0];
        STACK[0x3010] = STACK[0x2910];
        STACK[0x3510] = STACK[0x3AD0];
        STACK[0x3048] = STACK[0x2B10];
        STACK[0x3008] = STACK[0x2B98];
        STACK[0x3500] = STACK[0x3AC8];
        STACK[0x3508] = STACK[0x3558];
        STACK[0x3000] = STACK[0x2918];
        STACK[0x2FF8] = STACK[0x2920];
        STACK[0x3AC8] = STACK[0x2A20];
        STACK[0x3808] = STACK[0x2BE0];
        STACK[0x3800] = STACK[0x2B18];
        STACK[0x2FE8] = STACK[0x2BA0];
        STACK[0x2FE0] = STACK[0x2928];
        STACK[0x30D0] = STACK[0x2930];
        STACK[0x1570] = STACK[0x3A88];
        STACK[0x1568] = v2878;
        STACK[0x2FF0] = STACK[0x2BA8];
        STACK[0x2FD8] = STACK[0x2938];
        STACK[0x1560] = STACK[0x3AE8];
        STACK[0x34F8] = STACK[0x39A0];
        STACK[0x2FB8] = STACK[0x2940];
        STACK[0x34F0] = STACK[0x3998];
        STACK[0x2FC8] = STACK[0x2948];
        STACK[0x2FA8] = STACK[0x2A28];
        STACK[0x2FB0] = STACK[0x2BB0];
        STACK[0x2FC0] = STACK[0x2B20];
        STACK[0x2FA0] = STACK[0x2950];
        STACK[0x3530] = STACK[0x39A8];
        STACK[0x34E8] = STACK[0x3A78];
        STACK[0x30C8] = STACK[0x2958];
        STACK[0x2FD0] = STACK[0x29F0];
        STACK[0x2F90] = STACK[0x29A8];
        STACK[0x34E0] = STACK[0x3A80];
        STACK[0x2F88] = STACK[0x2A30];
        STACK[0x2F80] = STACK[0x2960];
        STACK[0x2F98] = STACK[0x2BE8];
        STACK[0x3958] = STACK[0x2BF0];
        LODWORD(STACK[0x3900]) = STACK[0x36E0];
        STACK[0x2F70] = STACK[0x29B0];
        STACK[0x37F0] = STACK[0x2B28];
        STACK[0x2F68] = STACK[0x2BB8];
        STACK[0x2F60] = STACK[0x2968];
        STACK[0x3AD0] = STACK[0x2A38];
        STACK[0x2F50] = STACK[0x2970];
        STACK[0x2F48] = STACK[0x2978];
        STACK[0x37E8] = STACK[0x2B30];
        STACK[0x2F58] = STACK[0x2BC0];
        STACK[0x2F40] = STACK[0x2980];
        STACK[0x2F78] = STACK[0x2BF8];
        STACK[0x2F38] = STACK[0x2A40];
        STACK[0x2F30] = STACK[0x2988];
        LODWORD(STACK[0x3A28]) = 3;
        LODWORD(STACK[0x37F8]) = STACK[0x3560];
        STACK[0x3A20] = 0xCB0E70092261963DLL;
        STACK[0x1860] = 0xCB0E70092261963DLL;
        v1294 = STACK[0x5E0];
        STACK[0x3488] = STACK[0x5E0];
        v1295 = STACK[0x5B8];
        STACK[0x3470] = STACK[0x5B8];
        v1296 = STACK[0x548];
        STACK[0x2DE8] = STACK[0x548];
        v1297 = STACK[0x5B0];
        STACK[0x2DE0] = STACK[0x5B0];
        STACK[0x1C70] = 1;
        v1298 = STACK[0x5C0];
        STACK[0x2DD8] = STACK[0x5C0];
        STACK[0x1C68] = 1;
        STACK[0x1C60] = 1;
        STACK[0x1858] = 0xCB0E70092261963DLL;
        STACK[0x1C58] = 1;
        STACK[0x1C50] = 1;
        STACK[0x1850] = 0xCB0E70092261963DLL;
        v1299 = STACK[0x5D0];
        STACK[0x3898] = STACK[0x5D0];
        STACK[0x2ED0] = STACK[0x598];
        STACK[0x1C48] = 1;
        v1300 = STACK[0x5E8];
        STACK[0x3480] = STACK[0x5E8];
        STACK[0x1C40] = 1;
        v1301 = STACK[0x540];
        STACK[0x2DD0] = STACK[0x540];
        STACK[0x2EC8] = STACK[0x550];
        STACK[0x2EC0] = STACK[0x5A0];
        STACK[0x2EB8] = STACK[0x588];
        STACK[0x3A40] = 0xCB0E70092261963DLL;
        STACK[0x3320] = 0xCB0E70092261963DLL;
        STACK[0x1848] = 0xCB0E70092261963DLL;
        STACK[0x2EB0] = STACK[0x558];
        STACK[0x1840] = 0xCB0E70092261963DLL;
        STACK[0x2DC0] = v1299;
        STACK[0x1C30] = 1;
        STACK[0x2DB8] = v1294;
        STACK[0x3478] = 0xCB0E70092261963DLL;
        STACK[0x3468] = v1301;
        STACK[0x2EA0] = STACK[0x578];
        STACK[0x2DB0] = v1300;
        STACK[0x3330] = 0xCB0E70092261963DLL;
        v1302 = STACK[0x5C8];
        STACK[0x2DA8] = STACK[0x5C8];
        STACK[0x1838] = 0xCB0E70092261963DLL;
        STACK[0x3340] = 0xCB0E70092261963DLL;
        STACK[0x3338] = 0xCB0E70092261963DLL;
        STACK[0x1830] = 0xCB0E70092261963DLL;
        v1303 = STACK[0x5A8];
        STACK[0x3A70] = STACK[0x5A8];
        STACK[0x3370] = v1296;
        STACK[0x2DA0] = v1295;
        STACK[0x1828] = 0xCB0E70092261963DLL;
        STACK[0x1820] = 0xCB0E70092261963DLL;
        STACK[0x3A88] = v1298;
        STACK[0x1818] = 0xCB0E70092261963DLL;
        v1304 = STACK[0x5D8];
        STACK[0x2D98] = STACK[0x5D8];
        STACK[0x2E98] = STACK[0x590];
        STACK[0x1C28] = 1;
        STACK[0x1C20] = 1;
        STACK[0x3A38] = 0xCB0E70092261963DLL;
        STACK[0x2E90] = STACK[0x568];
        STACK[0x2E88] = STACK[0x560];
        STACK[0x3A58] = v1297;
        STACK[0x3318] = 0xCB0E70092261963DLL;
        STACK[0x3A30] = 0xCB0E70092261963DLL;
        STACK[0x1810] = 0xCB0E70092261963DLL;
        STACK[0x3328] = 0xCB0E70092261963DLL;
        STACK[0x3368] = v1304;
        STACK[0x3360] = v1302;
        STACK[0x2E80] = STACK[0x580];
        STACK[0x2EA8] = STACK[0x570];
        STACK[0x1C38] = 1;
        STACK[0x2DC8] = v1303;
        goto LABEL_5454;
      case 8u:
        v13 = STACK[0x2980];
        v14 = STACK[0x2BA8];
        v15 = STACK[0x2980] + STACK[0x2BA8] > 0xFFFFFFFFFFFFFFF6;
        STACK[0x3A98] = STACK[0x2980] + STACK[0x2BA8];
        if (__CFADD__(v13, v14))
        {
          v15 = 1;
        }

        LODWORD(STACK[0x3A20]) = v15;
        v16 = STACK[0x2BC0];
        v17 = STACK[0x2908];
        v18 = STACK[0x2BC0] + STACK[0x2908] > 0xFFFFFFFFFFFFFFEELL;
        STACK[0x3A28] = STACK[0x2BC0] + STACK[0x2908];
        v19 = __CFADD__(v16, v17) || v18;
        v20 = STACK[0x2988] + STACK[0x2A30];
        v21 = __CFADD__(STACK[0x2988], STACK[0x2A30]) || STACK[0x2988] + STACK[0x2A30] > 0xFFFFFFFFFFFFFFFALL;
        v22 = STACK[0x2910] + STACK[0x2A10];
        v23 = __CFADD__(STACK[0x2910], STACK[0x2A10]) || STACK[0x2910] + STACK[0x2A10] > 0xFFFFFFFFFFFFFFFCLL;
        v24 = STACK[0x2960] + STACK[0x2A08];
        v25 = __CFADD__(STACK[0x2960], STACK[0x2A08]) || STACK[0x2960] + STACK[0x2A08] > 0xFFFFFFFFFFFFFFDELL;
        v26 = STACK[0x2A28];
        v27 = STACK[0x2948];
        v28 = STACK[0x2A28] + STACK[0x2948] > 0xFFFFFFFFFFFFFFEELL;
        v29 = STACK[0x2A28] + STACK[0x2948];
        STACK[0x3A38] = v2870;
        v30 = __CFADD__(v26, v27) || v28;
        v31 = STACK[0x2970] + STACK[0x2A00];
        v32 = __CFADD__(STACK[0x2970], STACK[0x2A00]) || STACK[0x2970] + STACK[0x2A00] > 0xFFFFFFFFFFFFFFF0;
        v33 = STACK[0x2A40] + STACK[0x2978];
        v34 = __CFADD__(STACK[0x2A40], STACK[0x2978]);
        v35 = STACK[0x2A38] + STACK[0x2900];
        LODWORD(v36) = __CFADD__(STACK[0x2A38], STACK[0x2900]);
        v37 = STACK[0x28F8] + STACK[0x29F8];
        v38 = __CFADD__(STACK[0x28F8], STACK[0x29F8]);
        if (v35 == -1)
        {
          v36 = 1;
        }

        else
        {
          v36 = v36;
        }

        STACK[0x33D0] = v36 + v35;
        v39 = STACK[0x2A20] + STACK[0x28F0];
        v40 = __CFADD__(STACK[0x2A20], STACK[0x28F0]);
        v41 = STACK[0x2B90] + STACK[0x28E0];
        v42 = __CFADD__(STACK[0x2B90], STACK[0x28E0]);
        if (v33 > 0xFFFFFFFFFFFFFFFCLL)
        {
          v34 = 1;
        }

        STACK[0x3A48] = v2888;
        if (v34)
        {
          v43 = 3;
        }

        else
        {
          v43 = 0;
        }

        STACK[0x3538] = v43 + v33;
        if (v41 > 0xFFFFFFFFFFFFFFFALL)
        {
          v42 = 1;
        }

        if (v39 > 0xFFFFFFFFFFFFFFF6 || v40)
        {
          v45 = 9;
        }

        else
        {
          v45 = 0;
        }

        STACK[0x3518] = v45 + v39;
        v46 = STACK[0x2BB0] + STACK[0x2940];
        v47 = __CFADD__(STACK[0x2BB0], STACK[0x2940]);
        if (v42)
        {
          v48 = 5;
        }

        else
        {
          v48 = 0;
        }

        v49 = STACK[0x2BB8];
        v50 = STACK[0x28E8];
        v51 = STACK[0x2BB8] + STACK[0x28E8];
        STACK[0x3A90] = v2878;
        v52 = __CFADD__(v49, v50);
        if (v37 > 0xFFFFFFFFFFFFFFD2)
        {
          v38 = 1;
        }

        STACK[0x3A50] = v2873;
        if (v30)
        {
          v53 = 17;
        }

        else
        {
          v53 = 0;
        }

        if (v32)
        {
          v54 = 15;
        }

        else
        {
          v54 = 0;
        }

        v55 = STACK[0x2928] + STACK[0x2BA0];
        v56 = __CFADD__(STACK[0x2928], STACK[0x2BA0]);
        STACK[0x33A0] = v48 + v41;
        STACK[0x33A8] = v53 + v29;
        if (v38)
        {
          v57 = 45;
        }

        else
        {
          v57 = 0;
        }

        STACK[0x3520] = v57 + v37;
        STACK[0x3398] = v54 + v31;
        v58 = v51 > 0xFFFFFFFFFFFFFFD8 || v52;
        v59 = v46 > 0xFFFFFFFFFFFFFFD0 || v47;
        v60 = v55 == -1 || v56;
        STACK[0x3A30] = v2883;
        if (v58)
        {
          v61 = 39;
        }

        else
        {
          v61 = 0;
        }

        if (v23)
        {
          v62 = 3;
        }

        else
        {
          v62 = 0;
        }

        v63 = STACK[0x2958] + STACK[0x2990];
        v64 = __CFADD__(STACK[0x2958], STACK[0x2990]);
        if (v25)
        {
          v65 = 33;
        }

        else
        {
          v65 = 0;
        }

        if (v21)
        {
          v66 = 5;
        }

        else
        {
          v66 = 0;
        }

        if (v59)
        {
          v67 = 47;
        }

        else
        {
          v67 = 0;
        }

        if (v63 > 0xFFFFFFFFFFFFFFDELL)
        {
          v64 = 1;
        }

        v68 = STACK[0x2918] + STACK[0x2B98];
        v69 = __CFADD__(STACK[0x2918], STACK[0x2B98]);
        v70 = STACK[0x29B0] + STACK[0x2930];
        v71 = __CFADD__(STACK[0x29B0], STACK[0x2930]);
        v72 = STACK[0x2968] + STACK[0x29A8];
        v73 = __CFADD__(STACK[0x2968], STACK[0x29A8]);
        if (v70 > 0xFFFFFFFFFFFFFFD8)
        {
          v71 = 1;
        }

        STACK[0x3390] = v61 + v51;
        STACK[0x3408] = v66 + v20;
        STACK[0x3528] = v67 + v46;
        STACK[0x33D8] = v62 + v22;
        STACK[0x33C0] = v65 + v24;
        STACK[0x3490] = v60 + v55;
        if (v64)
        {
          v74 = 33;
        }

        else
        {
          v74 = 0;
        }

        if (v19)
        {
          v75 = 17;
        }

        else
        {
          v75 = 0;
        }

        v76 = STACK[0x2920] + STACK[0x29A0];
        v77 = __CFADD__(STACK[0x2920], STACK[0x29A0]);
        if (v71)
        {
          v78 = 39;
        }

        else
        {
          v78 = 0;
        }

        if (v72 > 0xFFFFFFFFFFFFFFD2 || v73)
        {
          v80 = 45;
        }

        else
        {
          v80 = 0;
        }

        v4152 = LODWORD(STACK[0x3A20]) == 0;
        STACK[0x3568] = v74 + v63;
        STACK[0x33C8] = v75 + STACK[0x3A28];
        if (v4152)
        {
          v81 = 0;
        }

        else
        {
          v81 = 9;
        }

        STACK[0x33B0] = v81 + STACK[0x3A98];
        STACK[0x3550] = v80 + v72;
        v82 = v68 > 0xFFFFFFFFFFFFFFD0 || v69;
        v83 = v76 > 0xFFFFFFFFFFFFFFCALL || v77;
        v84 = v78 + v70;
        if (v82)
        {
          v85 = 47;
        }

        else
        {
          v85 = 0;
        }

        STACK[0x3540] = v85 + v68;
        if (v83)
        {
          v86 = 53;
        }

        else
        {
          v86 = 0;
        }

        STACK[0x3548] = v86 + v76;
        STACK[0x33F0] = STACK[0x2868];
        STACK[0x2F28] = STACK[0x3A70];
        STACK[0x2F20] = STACK[0x3A50];
        STACK[0x3888] = STACK[0x3AD8];
        STACK[0x3880] = STACK[0x3AA8];
        STACK[0x2F18] = STACK[0x3A40];
        STACK[0x33F8] = 9;
        STACK[0x2F10] = STACK[0x3A38];
        STACK[0x3878] = STACK[0x3AB8];
        STACK[0x3400] = STACK[0x2870];
        STACK[0x3870] = STACK[0x3940];
        STACK[0x3510] = STACK[0x3AD0];
        STACK[0x39F0] = STACK[0x2878];
        STACK[0x2F08] = STACK[0x3A90];
        STACK[0x33E8] = STACK[0x2880];
        STACK[0x3868] = STACK[0x3948];
        STACK[0x33E0] = STACK[0x2888];
        STACK[0x39E8] = STACK[0x2890];
        STACK[0x3500] = STACK[0x3AC8];
        STACK[0x3508] = STACK[0x3558];
        STACK[0x3558] = STACK[0x2898];
        STACK[0x2F00] = STACK[0x3A58];
        STACK[0x39D8] = STACK[0x28B8];
        STACK[0x2EF8] = STACK[0x3A88];
        STACK[0x3860] = STACK[0x3AB0];
        STACK[0x34F8] = STACK[0x39A0];
        STACK[0x3858] = STACK[0x3950];
        STACK[0x34F0] = STACK[0x3998];
        STACK[0x3AD8] = STACK[0x28A0];
        STACK[0x3530] = STACK[0x39A8];
        STACK[0x34E8] = STACK[0x3A78];
        STACK[0x2EF0] = STACK[0x3A30];
        STACK[0x2EE8] = STACK[0x3AA0];
        STACK[0x2EE0] = STACK[0x3AE8];
        STACK[0x34E0] = STACK[0x3A80];
        STACK[0x39D0] = STACK[0x28A8];
        STACK[0x3850] = STACK[0x3910];
        STACK[0x3848] = STACK[0x3918];
        STACK[0x2ED8] = STACK[0x3A48];
        STACK[0x3838] = STACK[0x3920];
        LODWORD(STACK[0x3900]) = STACK[0x36E0];
        STACK[0x3840] = STACK[0x3928];
        return (*(STACK[0x3AC0] + 8 * SLODWORD(STACK[0x53C])))(v84);
      case 0xAu:
        v618 = STACK[0x2B98];
        v619 = STACK[0x2BC8];
        v620 = STACK[0x2B98] + STACK[0x2BC8] > 0xFFFFFFFFFFFFFFD0;
        STACK[0x3A98] = STACK[0x2B98] + STACK[0x2BC8];
        v621 = __CFADD__(v618, v619) || v620;
        LODWORD(STACK[0x3A90]) = v621;
        v622 = STACK[0x2BF8];
        v623 = STACK[0x2BC0];
        v624 = STACK[0x2BF8] + STACK[0x2BC0] > 0xFFFFFFFFFFFFFFEELL;
        STACK[0x3A48] = STACK[0x2BF8] + STACK[0x2BC0];
        v625 = __CFADD__(v622, v623) || v624;
        LODWORD(STACK[0x3A30]) = v625;
        v626 = STACK[0x2BE8];
        v627 = STACK[0x2BA8];
        v628 = STACK[0x2BE8] + STACK[0x2BA8] > 0xFFFFFFFFFFFFFFF6;
        STACK[0x3A50] = STACK[0x2BE8] + STACK[0x2BA8];
        v629 = __CFADD__(v626, v627) || v628;
        LODWORD(STACK[0x3A38]) = v629;
        v630 = __CFADD__(STACK[0x2BA0], STACK[0x2BD0]) || STACK[0x2BA0] + STACK[0x2BD0] == -1;
        STACK[0x3478] = v630 + STACK[0x2BA0] + STACK[0x2BD0];
        v631 = STACK[0x2BB0];
        v632 = STACK[0x2BE0];
        v633 = STACK[0x2BB0] + STACK[0x2BE0] > 0xFFFFFFFFFFFFFFD0;
        STACK[0x3A28] = STACK[0x2BB0] + STACK[0x2BE0];
        v634 = __CFADD__(v631, v632) || v633;
        LODWORD(STACK[0x3A20]) = v634;
        v635 = STACK[0x2BB8];
        v636 = STACK[0x2BD8];
        v637 = STACK[0x2BB8] + STACK[0x2BD8] > 0xFFFFFFFFFFFFFFD8;
        STACK[0x3A08] = STACK[0x2BB8] + STACK[0x2BD8];
        v638 = __CFADD__(v635, v636) || v637;
        LODWORD(STACK[0x3A00]) = v638;
        v639 = STACK[0x2BF0] + STACK[0x2B90] > 0xFFFFFFFFFFFFFFFALL;
        v640 = STACK[0x2BF0] + STACK[0x2B90];
        if (__CFADD__(STACK[0x2BF0], STACK[0x2B90]))
        {
          v639 = 1;
        }

        v641 = STACK[0x24B0] + STACK[0x2F18] > 0xFFFFFFFFFFFFFFD0;
        v642 = STACK[0x24B0] + STACK[0x2F18];
        if (__CFADD__(STACK[0x24B0], STACK[0x2F18]))
        {
          v641 = 1;
        }

        v643 = STACK[0x24F0] + STACK[0x2EF8] > 0xFFFFFFFFFFFFFFD2;
        if (__CFADD__(STACK[0x24F0], STACK[0x2EF8]))
        {
          v643 = 1;
        }

        v644 = v2870;
        v645 = __CFADD__(STACK[0x24E8], STACK[0x2ED8]) || STACK[0x24E8] + STACK[0x2ED8] > 0xFFFFFFFFFFFFFFF0;
        v646 = STACK[0x24D0] + STACK[0x2F20] > 0xFFFFFFFFFFFFFFFCLL;
        if (__CFADD__(STACK[0x24D0], STACK[0x2F20]))
        {
          v646 = 1;
        }

        v647 = __CFADD__(STACK[0x24D8], STACK[0x2EE8]) || STACK[0x24D8] + STACK[0x2EE8] > 0xFFFFFFFFFFFFFFEELL;
        v648 = STACK[0x24E0] + STACK[0x2F08];
        v649 = __CFADD__(STACK[0x24E0], STACK[0x2F08]);
        v650 = v2878;
        v651 = STACK[0x24C8] + STACK[0x2F10];
        v652 = v2873;
        LODWORD(v653) = __CFADD__(STACK[0x24C8], STACK[0x2F10]);
        if (v651 == -1)
        {
          v653 = 1;
        }

        else
        {
          v653 = v653;
        }

        v654 = v653 + v651;
        v655 = v648 > 0xFFFFFFFFFFFFFFFALL || v649;
        v656 = STACK[0x24F8] + STACK[0x2F00];
        v657 = v2883;
        v658 = __CFADD__(STACK[0x24F8], STACK[0x2F00]);
        v659 = STACK[0x24B8] + STACK[0x2F28];
        v660 = v2888;
        v661 = __CFADD__(STACK[0x24B8], STACK[0x2F28]);
        v662 = STACK[0x24C0] + STACK[0x2EF0];
        v663 = __CFADD__(STACK[0x24C0], STACK[0x2EF0]);
        if (v662 > 0xFFFFFFFFFFFFFFF6)
        {
          v663 = 1;
        }

        v4152 = v655 == 0;
        v664 = 5;
        if (v4152)
        {
          v664 = 0;
        }

        v4152 = !v646;
        v665 = v664 + v648;
        v666 = 3;
        if (v4152)
        {
          v666 = 0;
        }

        v667 = v666 + STACK[0x24D0] + STACK[0x2F20];
        v668 = v656 > 0xFFFFFFFFFFFFFFDELL || v658;
        if (v663)
        {
          v669 = 9;
        }

        else
        {
          v669 = 0;
        }

        v670 = v669 + v662;
        v671 = STACK[0x2500] + STACK[0x2EE0];
        v672 = __CFADD__(STACK[0x2500], STACK[0x2EE0]);
        if (v668)
        {
          v673 = 33;
        }

        else
        {
          v673 = 0;
        }

        v674 = v673 + v656;
        v675 = v659 > 0xFFFFFFFFFFFFFFD8 || v661;
        if (v647)
        {
          v676 = 17;
        }

        else
        {
          v676 = 0;
        }

        v677 = v676 + STACK[0x24D8] + STACK[0x2EE8];
        if (v645)
        {
          v678 = 15;
        }

        else
        {
          v678 = 0;
        }

        v679 = v678 + STACK[0x24E8] + STACK[0x2ED8];
        if (v643)
        {
          v680 = 45;
        }

        else
        {
          v680 = 0;
        }

        v681 = v680 + STACK[0x24F0] + STACK[0x2EF8];
        STACK[0x2720] = v644 - v654 - (v644 < v654);
        if (v671 > 0xFFFFFFFFFFFFFFCALL)
        {
          v672 = 1;
        }

        if (v652 >= v667)
        {
          v682 = 0;
        }

        else
        {
          v682 = -3;
        }

        v4152 = !v672;
        STACK[0x2738] = v652 - v667 + v682;
        v683 = 53;
        if (v4152)
        {
          v683 = 0;
        }

        v684 = v683 + v671;
        v685 = STACK[0x2A38] + STACK[0x2B28];
        v686 = __CFADD__(STACK[0x2A38], STACK[0x2B28]);
        if (v675)
        {
          v687 = 39;
        }

        else
        {
          v687 = 0;
        }

        v1886 = v650 >= v665;
        v688 = v650 - v665;
        v689 = v687 + v659;
        if (v1886)
        {
          v690 = 0;
        }

        else
        {
          v690 = -5;
        }

        STACK[0x2748] = v688 + v690;
        if (v641)
        {
          v691 = 47;
        }

        else
        {
          v691 = 0;
        }

        v692 = v691 + v642;
        if (STACK[0x3AA0] >= v677)
        {
          v693 = 0;
        }

        else
        {
          v693 = -17;
        }

        STACK[0x2730] = STACK[0x3AA0] - v677 + v693;
        v694 = STACK[0x2A40] + STACK[0x2B30];
        v695 = __CFADD__(STACK[0x2A40], STACK[0x2B30]);
        v696 = STACK[0x2A20] + STACK[0x2AF8];
        v697 = __CFADD__(STACK[0x2A20], STACK[0x2AF8]);
        if (v657 >= v670)
        {
          v698 = 0;
        }

        else
        {
          v698 = -9;
        }

        STACK[0x2700] = v657 - v670 + v698;
        if (v660 >= v679)
        {
          v699 = 0;
        }

        else
        {
          v699 = -15;
        }

        STACK[0x2708] = v660 - v679 + v699;
        v700 = STACK[0x29C8];
        v701 = STACK[0x2A00] + STACK[0x29C8];
        v702 = __CFADD__(STACK[0x2A00], STACK[0x29C8]);
        v1886 = STACK[0x3AE8] >= v684;
        v703 = STACK[0x3AE8] - v684;
        if (v1886)
        {
          v704 = 0;
        }

        else
        {
          v704 = -53;
        }

        v1886 = STACK[0x3A58] >= v674;
        v705 = STACK[0x3A58] - v674;
        STACK[0x2728] = v703 + v704;
        v706 = -33;
        if (v1886)
        {
          v706 = 0;
        }

        STACK[0x2710] = v705 + v706;
        v707 = STACK[0x2B08] + STACK[0x29F8];
        v708 = __CFADD__(STACK[0x2B08], STACK[0x29F8]);
        v709 = STACK[0x3A40] - v692;
        if (STACK[0x3A40] >= v692)
        {
          v710 = 0;
        }

        else
        {
          v710 = -47;
        }

        STACK[0x26F8] = v709 + v710;
        v711 = v685 == -1 || v686;
        v712 = STACK[0x3A88];
        v713 = STACK[0x3A88] - v681;
        STACK[0x3370] = v711 + v685;
        v714 = -45;
        if (v712 >= v681)
        {
          v714 = 0;
        }

        STACK[0x2740] = v713 + v714;
        v715 = STACK[0x2B18] + STACK[0x2A08];
        v716 = __CFADD__(STACK[0x2B18], STACK[0x2A08]);
        v717 = v696 > 0xFFFFFFFFFFFFFFF6 || v697;
        v718 = v701 > 0xFFFFFFFFFFFFFFF0 || v702;
        if (STACK[0x3A70] >= v689)
        {
          v719 = 0;
        }

        else
        {
          v719 = -39;
        }

        STACK[0x2718] = STACK[0x3A70] - v689 + v719;
        v720 = STACK[0x29C0];
        v721 = STACK[0x2A18] + STACK[0x29C0];
        v722 = __CFADD__(STACK[0x2A18], STACK[0x29C0]);
        v723 = STACK[0x29D0];
        v724 = STACK[0x2A28] + STACK[0x29D0];
        v725 = __CFADD__(STACK[0x2A28], STACK[0x29D0]);
        if (v694 > 0xFFFFFFFFFFFFFFFCLL)
        {
          v695 = 1;
        }

        if (v639)
        {
          v726 = 5;
        }

        else
        {
          v726 = 0;
        }

        STACK[0x3480] = v726 + v640;
        if (v695)
        {
          v727 = 3;
        }

        else
        {
          v727 = 0;
        }

        STACK[0x3468] = v727 + v694;
        if (v717)
        {
          v728 = 9;
        }

        else
        {
          v728 = 0;
        }

        STACK[0x3488] = v728 + v696;
        if (v718)
        {
          v729 = 15;
        }

        else
        {
          v729 = 0;
        }

        STACK[0x3368] = v729 + v701;
        v730 = v724 > 0xFFFFFFFFFFFFFFEELL || v725;
        v731 = STACK[0x2B20] + STACK[0x2A10];
        v732 = __CFADD__(STACK[0x2B20], STACK[0x2A10]);
        if (v715 > 0xFFFFFFFFFFFFFFDELL)
        {
          v716 = 1;
        }

        v733 = 17;
        if (v730)
        {
          v734 = 17;
        }

        else
        {
          v734 = 0;
        }

        STACK[0x3898] = v734 + v724;
        v735 = v707 > 0xFFFFFFFFFFFFFFD2 || v708;
        v736 = v721 > 0xFFFFFFFFFFFFFFCALL || v722;
        v737 = STACK[0x29D8];
        v738 = STACK[0x2A30] + STACK[0x29D8];
        v739 = __CFADD__(STACK[0x2A30], STACK[0x29D8]);
        if (LODWORD(STACK[0x3A00]))
        {
          v740 = 39;
        }

        else
        {
          v740 = 0;
        }

        STACK[0x3A88] = v740 + STACK[0x3A08];
        v741 = STACK[0x2998];
        v742 = STACK[0x2B00] + STACK[0x2998];
        v743 = __CFADD__(STACK[0x2B00], STACK[0x2998]);
        if (LODWORD(STACK[0x3A20]))
        {
          v744 = 47;
        }

        else
        {
          v744 = 0;
        }

        STACK[0x3A58] = v744 + STACK[0x3A28];
        if (v735)
        {
          v745 = 45;
        }

        else
        {
          v745 = 0;
        }

        STACK[0x3470] = v745 + v707;
        if (v736)
        {
          v746 = 53;
        }

        else
        {
          v746 = 0;
        }

        STACK[0x3A70] = v746 + v721;
        v747 = STACK[0x2990];
        v748 = STACK[0x2B10] + STACK[0x2990];
        v749 = __CFADD__(STACK[0x2B10], STACK[0x2990]);
        if (v731 > 0xFFFFFFFFFFFFFFFCLL)
        {
          v732 = 1;
        }

        if (v716)
        {
          v750 = 33;
        }

        else
        {
          v750 = 0;
        }

        STACK[0x3360] = v750 + v715;
        v751 = v742 > 0xFFFFFFFFFFFFFFF0 || v743;
        v752 = v738 > 0xFFFFFFFFFFFFFFFALL || v739;
        v753 = STACK[0x29F0];
        v754 = STACK[0x29A0];
        v755 = STACK[0x29F0] + STACK[0x29A0];
        v756 = __CFADD__(STACK[0x29F0], STACK[0x29A0]);
        if (v732)
        {
          v757 = 3;
        }

        else
        {
          v757 = 0;
        }

        STACK[0x3320] = v757 + v731;
        if (v751)
        {
          v758 = 15;
        }

        else
        {
          v758 = 0;
        }

        STACK[0x3340] = v758 + v742;
        v759 = v748 > 0xFFFFFFFFFFFFFFDELL || v749;
        v760 = STACK[0x29A8];
        v761 = STACK[0x29E8];
        v762 = STACK[0x29A8] + STACK[0x29E8];
        v763 = __CFADD__(STACK[0x29A8], STACK[0x29E8]);
        if (!LODWORD(STACK[0x3A30]))
        {
          v733 = 0;
        }

        STACK[0x3A20] = v733 + STACK[0x3A48];
        if (v752)
        {
          v764 = 5;
        }

        else
        {
          v764 = 0;
        }

        STACK[0x3328] = v764 + v738;
        v765 = v762 > 0xFFFFFFFFFFFFFFD2 || v763;
        if (LODWORD(STACK[0x3A38]))
        {
          v766 = 9;
        }

        else
        {
          v766 = 0;
        }

        STACK[0x3330] = v766 + STACK[0x3A50];
        v767 = STACK[0x29B0];
        v768 = STACK[0x29E0];
        v769 = STACK[0x29B0] + STACK[0x29E0];
        v770 = __CFADD__(STACK[0x29B0], STACK[0x29E0]);
        if (v769 > 0xFFFFFFFFFFFFFFD8)
        {
          v770 = 1;
        }

        v771 = v755 > 0xFFFFFFFFFFFFFFCALL || v756;
        if (v759)
        {
          v772 = 33;
        }

        else
        {
          v772 = 0;
        }

        v773 = STACK[0x3A90];
        STACK[0x3318] = v772 + v748;
        if (v773)
        {
          v774 = 47;
        }

        else
        {
          v774 = 0;
        }

        STACK[0x3A40] = v774 + STACK[0x3A98];
        if (v765)
        {
          v775 = 45;
        }

        else
        {
          v775 = 0;
        }

        STACK[0x3338] = v775 + v762;
        if (v771)
        {
          v776 = 53;
        }

        else
        {
          v776 = 0;
        }

        STACK[0x3A30] = v776 + v755;
        if (v770)
        {
          v777 = 39;
        }

        else
        {
          v777 = 0;
        }

        STACK[0x3A38] = v777 + v769;
        STACK[0x3828] = v720;
        STACK[0x3830] = v700;
        STACK[0x3090] = STACK[0x28E0];
        STACK[0x3098] = STACK[0x28E8];
        STACK[0x3820] = v723;
        STACK[0x3088] = STACK[0x28F0];
        STACK[0x30A0] = v747;
        STACK[0x30C0] = STACK[0x2BC8];
        STACK[0x3080] = STACK[0x2B90];
        STACK[0x3078] = v737;
        STACK[0x3810] = STACK[0x2AF8];
        STACK[0x3070] = v741;
        STACK[0x3068] = STACK[0x29F8];
        STACK[0x30B0] = STACK[0x2BD0];
        STACK[0x30B8] = v768;
        STACK[0x3060] = STACK[0x2A00];
        STACK[0x3818] = STACK[0x2BD8];
        STACK[0x3050] = STACK[0x28F8];
        STACK[0x3040] = STACK[0x2900];
        STACK[0x30A8] = STACK[0x2B00];
        STACK[0x3058] = STACK[0x2A08];
        STACK[0x3038] = STACK[0x2908];
        STACK[0x3030] = v761;
        STACK[0x3938] = STACK[0x2B08];
        STACK[0x3020] = STACK[0x2A10];
        STACK[0x3028] = STACK[0x2A18];
        STACK[0x3018] = v754;
        STACK[0x3010] = STACK[0x2910];
        STACK[0x3510] = STACK[0x3AD0];
        STACK[0x3048] = STACK[0x2B10];
        STACK[0x3008] = STACK[0x2B98];
        STACK[0x3500] = STACK[0x3AC8];
        STACK[0x3508] = STACK[0x3558];
        STACK[0x3000] = STACK[0x2918];
        STACK[0x2FF8] = STACK[0x2920];
        STACK[0x3AC8] = STACK[0x2A20];
        STACK[0x3808] = STACK[0x2BE0];
        STACK[0x3800] = STACK[0x2B18];
        STACK[0x2FE8] = STACK[0x2BA0];
        STACK[0x2FE0] = STACK[0x2928];
        STACK[0x30D0] = STACK[0x2930];
        STACK[0x2FF0] = STACK[0x2BA8];
        STACK[0x2FD8] = STACK[0x2938];
        STACK[0x34F8] = STACK[0x39A0];
        STACK[0x2FB8] = STACK[0x2940];
        STACK[0x34F0] = STACK[0x3998];
        STACK[0x2FC8] = STACK[0x2948];
        STACK[0x2FA8] = STACK[0x2A28];
        STACK[0x2FB0] = STACK[0x2BB0];
        STACK[0x2FC0] = STACK[0x2B20];
        STACK[0x2FA0] = STACK[0x2950];
        STACK[0x3530] = STACK[0x39A8];
        STACK[0x34E8] = STACK[0x3A78];
        STACK[0x30C8] = STACK[0x2958];
        STACK[0x2FD0] = v753;
        STACK[0x2F90] = v760;
        STACK[0x34E0] = STACK[0x3A80];
        STACK[0x2F88] = STACK[0x2A30];
        STACK[0x2F80] = STACK[0x2960];
        STACK[0x2F98] = STACK[0x2BE8];
        STACK[0x3958] = STACK[0x2BF0];
        LODWORD(STACK[0x3900]) = STACK[0x36E0];
        STACK[0x2F70] = v767;
        STACK[0x37F0] = STACK[0x2B28];
        STACK[0x2F68] = STACK[0x2BB8];
        STACK[0x2F60] = STACK[0x2968];
        STACK[0x3AD0] = STACK[0x2A38];
        STACK[0x2F50] = STACK[0x2970];
        STACK[0x2F48] = STACK[0x2978];
        STACK[0x37E8] = STACK[0x2B30];
        STACK[0x2F58] = STACK[0x2BC0];
        STACK[0x2F40] = STACK[0x2980];
        STACK[0x2F78] = STACK[0x2BF8];
        STACK[0x2F38] = STACK[0x2A40];
        STACK[0x2F30] = STACK[0x2988];
        v778 = *(STACK[0x3AC0] + 8 * SLODWORD(STACK[0x538]));
        LODWORD(STACK[0x3A28]) = 11;
        LODWORD(STACK[0x37F8]) = STACK[0x3560];
        return v778();
      case 0x11u:
        v1453 = STACK[0x3AE8] + STACK[0x888] > 0xFFFFFFFFFFFFFFCALL;
        v1454 = STACK[0x3AE8] + STACK[0x888];
        if (__CFADD__(STACK[0x3AE8], STACK[0x888]))
        {
          v1453 = 1;
        }

        v1455 = STACK[0x3A88] + STACK[0x8F8] > 0xFFFFFFFFFFFFFFD2;
        v1456 = STACK[0x3A88] + STACK[0x8F8];
        if (__CFADD__(STACK[0x3A88], STACK[0x8F8]))
        {
          v1455 = 1;
        }

        v1457 = STACK[0x998];
        v1458 = STACK[0x3A40];
        if (STACK[0x3A40] + STACK[0x998] >= 0xFFFFFFFFFFFFFFD1)
        {
          v1459 = 3142028216;
        }

        else
        {
          v1459 = 0;
        }

        v1460 = v1458 + v1457;
        if (__CFADD__(v1458, v1457))
        {
          v1461 = v1459 + 1;
        }

        else
        {
          v1461 = v1459;
        }

        v1462 = STACK[0x3A70] + STACK[0x880];
        v1463 = __CFADD__(STACK[0x3A70], STACK[0x880]) || STACK[0x3A70] + STACK[0x880] > 0xFFFFFFFFFFFFFFD8;
        v1464 = STACK[0x3A58] + STACK[0x9D8] > 0xFFFFFFFFFFFFFFDELL;
        v1465 = STACK[0x3A58] + STACK[0x9D8];
        if (__CFADD__(STACK[0x3A58], STACK[0x9D8]))
        {
          v1464 = 1;
        }

        v1466 = STACK[0x3AA0] + STACK[0xA20] > 0xFFFFFFFFFFFFFFEELL;
        v1467 = STACK[0x3AA0] + STACK[0xA20];
        if (__CFADD__(STACK[0x3AA0], STACK[0xA20]))
        {
          v1466 = 1;
        }

        v1468 = __CFADD__(v2870, STACK[0x970]) || v2870 + STACK[0x970] == -1;
        STACK[0x3380] = v1468 + v2870 + STACK[0x970];
        v1469 = v2873 + STACK[0x968];
        v1470 = __CFADD__(v2873, STACK[0x968]);
        v1471 = v2883 + STACK[0x9B8];
        v1472 = __CFADD__(v2883, STACK[0x9B8]);
        v1473 = v2878 + STACK[0x958];
        v1474 = __CFADD__(v2878, STACK[0x958]);
        if (v1469 > 0xFFFFFFFFFFFFFFFCLL)
        {
          v1470 = 1;
        }

        v1475 = v2888 + STACK[0x918];
        v1476 = __CFADD__(v2888, STACK[0x918]);
        if (v1470)
        {
          v1477 = 3;
        }

        else
        {
          v1477 = 0;
        }

        v1478 = v1477 + v1469;
        if (v1471 > 0xFFFFFFFFFFFFFFF6 || v1472)
        {
          v1480 = 9;
        }

        else
        {
          v1480 = 0;
        }

        v1481 = v1480 + v1471;
        v1482 = v1473 > 0xFFFFFFFFFFFFFFFALL || v1474;
        v4152 = !v1466;
        v1483 = 17;
        if (v4152)
        {
          v1483 = 0;
        }

        v1484 = v1483 + v1467;
        if (v1482)
        {
          v1485 = 5;
        }

        else
        {
          v1485 = 0;
        }

        v1486 = v1485 + v1473;
        v1487 = v1475 > 0xFFFFFFFFFFFFFFF0 || v1476;
        v4152 = !v1463;
        v1488 = 39;
        if (v4152)
        {
          v1488 = 0;
        }

        v1489 = v1488 + v1462;
        if (v1487)
        {
          v1490 = 15;
        }

        else
        {
          v1490 = 0;
        }

        v1491 = v1490 + v1475;
        v4152 = v1461 == 0;
        v1492 = 47;
        if (v4152)
        {
          v1492 = 0;
        }

        v4152 = !v1455;
        v1493 = v1492 + v1460;
        v1494 = 45;
        if (v4152)
        {
          v1494 = 0;
        }

        v1495 = v1494 + v1456;
        v1496 = 33;
        if (!v1464)
        {
          v1496 = 0;
        }

        v1497 = v1496 + v1465;
        v4152 = !v1453;
        v1498 = 53;
        if (v4152)
        {
          v1498 = 0;
        }

        v1499 = v1498 + v1454;
        v1500 = *(STACK[0x3AC0] + 8 * (LODWORD(STACK[0x3560]) - 15225));
        STACK[0x39D8] = STACK[0x2780];
        STACK[0x3888] = STACK[0x3AD8];
        STACK[0x3880] = STACK[0x3AA8];
        STACK[0x3AD8] = STACK[0x2810];
        STACK[0x39D0] = STACK[0x2768];
        STACK[0x3878] = STACK[0x3AB8];
        STACK[0x3870] = STACK[0x3940];
        STACK[0x3510] = STACK[0x3AD0];
        STACK[0x3868] = STACK[0x3948];
        STACK[0x3AB8] = STACK[0x2818];
        STACK[0x3500] = STACK[0x3AC8];
        STACK[0x3508] = STACK[0x3558];
        STACK[0x39F0] = STACK[0x27E0];
        STACK[0x3860] = STACK[0x3AB0];
        STACK[0x34F8] = STACK[0x39A0];
        STACK[0x3858] = STACK[0x3950];
        STACK[0x34F0] = STACK[0x3998];
        STACK[0x3AA8] = STACK[0x27E8];
        STACK[0x3530] = STACK[0x39A8];
        STACK[0x34E8] = STACK[0x3A78];
        STACK[0x34E0] = STACK[0x3A80];
        STACK[0x3850] = STACK[0x3910];
        STACK[0x3848] = STACK[0x3918];
        STACK[0x3838] = STACK[0x3920];
        STACK[0x3AB0] = STACK[0x27F0];
        LODWORD(STACK[0x3900]) = STACK[0x36E0];
        STACK[0x39E8] = STACK[0x27F8];
        STACK[0x3840] = STACK[0x3928];
        LODWORD(STACK[0x3A80]) = 18;
        STACK[0x3990] = STACK[0x1658];
        STACK[0x3988] = STACK[0x1668];
        STACK[0x39E0] = STACK[0x1688];
        STACK[0x32B0] = STACK[0x16A0];
        STACK[0x3698] = STACK[0x1690];
        STACK[0xA10] = v1495;
        STACK[0x3570] = v1495;
        STACK[0x3590] = v1489;
        STACK[0x910] = v1489;
        STACK[0x3310] = STACK[0x1660];
        STACK[0x908] = STACK[0x3380];
        STACK[0xA18] = v1484;
        STACK[0x3A08] = v1484;
        STACK[0x3358] = STACK[0x1678];
        STACK[0x3588] = v1491;
        STACK[0x8C0] = v1491;
        STACK[0xA00] = v1497;
        STACK[0x3208] = v1497;
        STACK[0x3350] = STACK[0x1650];
        STACK[0xA30] = v1499;
        STACK[0x3A00] = v1499;
        STACK[0x3578] = v1486;
        STACK[0x8A0] = v1486;
        STACK[0x3580] = v1478;
        STACK[0x890] = v1478;
        STACK[0x3388] = STACK[0x1670];
        STACK[0x3348] = STACK[0x1698];
        STACK[0xA08] = v1493;
        STACK[0x39F8] = v1493;
        STACK[0x3378] = STACK[0x1680];
        STACK[0x3210] = v1481;
        STACK[0x988] = v1481;
        return v1500();
      case 0x18u:
        STACK[0x39D8] = STACK[0x2780];
        v448 = STACK[0x2778];
        STACK[0x1E68] = STACK[0x3A58];
        STACK[0x1E60] = v2888;
        STACK[0x3888] = STACK[0x3AD8];
        v449 = v2870;
        v450 = STACK[0x2770];
        STACK[0x3880] = STACK[0x3AA8];
        STACK[0x3AD8] = STACK[0x2810];
        STACK[0x39D0] = STACK[0x2768];
        STACK[0x1E58] = STACK[0x3A70];
        STACK[0x3878] = STACK[0x3AB8];
        STACK[0x1E50] = v2883;
        STACK[0x3870] = STACK[0x3940];
        STACK[0x1E48] = v2873;
        STACK[0x1E40] = v449;
        STACK[0x3510] = STACK[0x3AD0];
        STACK[0x3868] = STACK[0x3948];
        STACK[0x3AB8] = STACK[0x2818];
        v451 = STACK[0x2760];
        STACK[0x3500] = STACK[0x3AC8];
        STACK[0x3508] = STACK[0x3558];
        STACK[0x1E38] = STACK[0x3AE8];
        STACK[0x39F0] = STACK[0x27E0];
        STACK[0x3860] = STACK[0x3AB0];
        STACK[0x34F8] = STACK[0x39A0];
        STACK[0x3858] = STACK[0x3950];
        STACK[0x34F0] = STACK[0x3998];
        STACK[0x3AA8] = STACK[0x27E8];
        STACK[0x3530] = STACK[0x39A8];
        STACK[0x34E8] = STACK[0x3A78];
        STACK[0x1E30] = v2878;
        STACK[0x34E0] = STACK[0x3A80];
        STACK[0x3850] = STACK[0x3910];
        STACK[0x1E28] = STACK[0x3A88];
        STACK[0x1E20] = STACK[0x3A40];
        STACK[0x3848] = STACK[0x3918];
        STACK[0x1E18] = STACK[0x3AA0];
        STACK[0x3838] = STACK[0x3920];
        STACK[0x3AB0] = STACK[0x27F0];
        LODWORD(STACK[0x3900]) = STACK[0x36E0];
        STACK[0x39E8] = STACK[0x27F8];
        STACK[0x3840] = STACK[0x3928];
        LODWORD(STACK[0x3A80]) = 25;
        v452 = STACK[0x3560];
        STACK[0x3990] = STACK[0x31A8];
        STACK[0x3588] = STACK[0x31C0];
        STACK[0x3988] = STACK[0x3158];
        STACK[0x39E0] = STACK[0x31B8];
        STACK[0x3580] = STACK[0x31F8];
        STACK[0x3590] = STACK[0x31E8];
        STACK[0x32B0] = STACK[0x31F0];
        STACK[0x3698] = STACK[0x3160];
        STACK[0x3570] = STACK[0x3178];
        STACK[0x3380] = STACK[0x3170];
        STACK[0x3310] = STACK[0x3188];
        STACK[0x3578] = STACK[0x31B0];
        STACK[0x3A08] = STACK[0x31E0];
        STACK[0x3358] = STACK[0x3180];
        STACK[0x3208] = STACK[0x3168];
        STACK[0x3210] = STACK[0x3198];
        STACK[0x3350] = STACK[0x3200];
        STACK[0x3A00] = STACK[0x31D8];
        STACK[0x3388] = STACK[0x31D0];
        STACK[0x3348] = STACK[0x31A0];
        STACK[0x39F8] = STACK[0x3190];
        STACK[0x3378] = STACK[0x31C8];
        STACK[0x3558] = v451;
        STACK[0x36E0] = v450;
        STACK[0x39A8] = v448;
        v213 = STACK[0x2510];
        v214 = STACK[0x2510] + STACK[0x3960] > 0xFFFFFFFFFFFFFFD0;
        if (__CFADD__(STACK[0x2510], STACK[0x3960]))
        {
          v214 = 1;
        }

        v4152 = !v214;
        v215 = 47;
        if (v4152)
        {
          v215 = 0;
        }

        v216 = v215 + STACK[0x2510] + STACK[0x3960];
        STACK[0x3AE8] = v216 + v213;
        v217 = __CFADD__(v216, v213) || v216 + v213 > 0xFFFFFFFFFFFFFFD0;
        LODWORD(STACK[0x3AD0]) = v217;
        v218 = STACK[0x2530];
        v219 = STACK[0x39C8] + STACK[0x2530];
        v220 = __CFADD__(STACK[0x39C8], STACK[0x2530]);
        if (v219 > 0xFFFFFFFFFFFFFFCALL)
        {
          v220 = 1;
        }

        v4152 = !v220;
        v221 = 53;
        if (v4152)
        {
          v221 = 0;
        }

        v222 = v221 + v219;
        STACK[0x3AC8] = v222 + v218;
        v223 = __CFADD__(v222, v218) || v222 + v218 > 0xFFFFFFFFFFFFFFCALL;
        LODWORD(STACK[0x3AA0]) = v223;
        v224 = STACK[0x2518];
        v225 = STACK[0x2518] + STACK[0x28D8];
        v226 = __CFADD__(STACK[0x2518], STACK[0x28D8]);
        if (v225 > 0xFFFFFFFFFFFFFFD2)
        {
          v226 = 1;
        }

        v4152 = !v226;
        v227 = 45;
        if (v4152)
        {
          v227 = 0;
        }

        v228 = v227 + v225;
        STACK[0x3A98] = v228 + v224;
        v229 = __CFADD__(v228, v224) || v228 + v224 > 0xFFFFFFFFFFFFFFD2;
        LODWORD(STACK[0x3A90]) = v229;
        v230 = STACK[0x2508];
        v231 = STACK[0x2508] + STACK[0x3930] > 0xFFFFFFFFFFFFFFD8;
        if (__CFADD__(STACK[0x2508], STACK[0x3930]))
        {
          v231 = 1;
        }

        v4152 = !v231;
        v232 = 39;
        if (v4152)
        {
          v232 = 0;
        }

        v233 = v232 + STACK[0x2508] + STACK[0x3930];
        STACK[0x3A88] = v233 + v230;
        v234 = __CFADD__(v233, v230) || v233 + v230 > 0xFFFFFFFFFFFFFFD8;
        LODWORD(STACK[0x3A78]) = v234;
        v235 = STACK[0x2528];
        v236 = STACK[0x3970] + STACK[0x2528];
        v237 = __CFADD__(STACK[0x3970], STACK[0x2528]);
        if (v236 > 0xFFFFFFFFFFFFFFEELL)
        {
          v237 = 1;
        }

        v4152 = !v237;
        v238 = 17;
        if (v4152)
        {
          v238 = 0;
        }

        v239 = v238 + v236;
        STACK[0x3A70] = v239 + v235;
        v240 = __CFADD__(v239, v235) || v239 + v235 > 0xFFFFFFFFFFFFFFEELL;
        LODWORD(STACK[0x3A58]) = v240;
        v241 = STACK[0x2750];
        v242 = STACK[0x36F8] + STACK[0x2750] > 0xFFFFFFFFFFFFFFDELL;
        if (__CFADD__(STACK[0x36F8], STACK[0x2750]))
        {
          v242 = 1;
        }

        v4152 = !v242;
        v243 = 33;
        if (v4152)
        {
          v243 = 0;
        }

        v244 = v243 + STACK[0x36F8] + STACK[0x2750];
        STACK[0x3A50] = v244 + v241;
        v245 = __CFADD__(v244, v241) || v244 + v241 > 0xFFFFFFFFFFFFFFDELL;
        LODWORD(STACK[0x3A48]) = v245;
        v246 = STACK[0x2538];
        v247 = STACK[0x3968] + STACK[0x2538];
        v248 = __CFADD__(STACK[0x3968], STACK[0x2538]);
        if (v247 > 0xFFFFFFFFFFFFFFFCLL)
        {
          v248 = 1;
        }

        v4152 = !v248;
        v249 = 3;
        if (v4152)
        {
          v249 = 0;
        }

        v250 = v249 + v247;
        STACK[0x3A40] = v250 + v246;
        v251 = __CFADD__(v250, v246) || v250 + v246 > 0xFFFFFFFFFFFFFFFCLL;
        LODWORD(STACK[0x3A38]) = v251;
        v252 = STACK[0x36E8];
        v253 = STACK[0x28C8];
        v254 = STACK[0x36E8] + STACK[0x28C8] > 0xFFFFFFFFFFFFFFF0;
        STACK[0x3A30] = STACK[0x36E8] + STACK[0x28C8];
        if (__CFADD__(v252, v253))
        {
          v254 = 1;
        }

        LODWORD(STACK[0x3A28]) = v254;
        v255 = STACK[0x34D8];
        v256 = STACK[0x28D0];
        v257 = STACK[0x28D0] + STACK[0x34D8] > 0xFFFFFFFFFFFFFFFALL;
        STACK[0x3A20] = STACK[0x28D0] + STACK[0x34D8];
        if (__CFADD__(v256, v255))
        {
          v257 = 1;
        }

        LODWORD(STACK[0x39C0]) = v257;
        v258 = STACK[0x2AC0];
        v259 = STACK[0x21F8];
        v260 = STACK[0x21F8] + STACK[0x2AC0] > 0xFFFFFFFFFFFFFFD2;
        STACK[0x39A0] = STACK[0x21F8] + STACK[0x2AC0];
        if (__CFADD__(v259, v258))
        {
          v260 = 1;
        }

        LODWORD(STACK[0x3998]) = v260;
        v261 = STACK[0x2228];
        v262 = STACK[0x2AA8];
        v263 = STACK[0x2AA8] + STACK[0x2228] > 0xFFFFFFFFFFFFFFF0;
        STACK[0x3980] = STACK[0x2AA8] + STACK[0x2228];
        if (__CFADD__(v262, v261))
        {
          v263 = 1;
        }

        LODWORD(STACK[0x3950]) = v263;
        v264 = STACK[0x2220];
        v265 = STACK[0x2A70];
        v266 = STACK[0x2A70] + STACK[0x2220] > 0xFFFFFFFFFFFFFFEELL;
        STACK[0x3978] = STACK[0x2A70] + STACK[0x2220];
        if (__CFADD__(v265, v264))
        {
          v266 = 1;
        }

        LODWORD(STACK[0x3948]) = v266;
        v267 = STACK[0x2238];
        v268 = STACK[0x2A80];
        v269 = STACK[0x2A80] + STACK[0x2238] > 0xFFFFFFFFFFFFFFF6;
        STACK[0x3958] = STACK[0x2A80] + STACK[0x2238];
        if (__CFADD__(v268, v267))
        {
          v269 = 1;
        }

        LODWORD(STACK[0x3940]) = v269;
        v270 = STACK[0x2A78];
        v271 = STACK[0x2198];
        v272 = STACK[0x2198] + STACK[0x2A78] > 0xFFFFFFFFFFFFFFFALL;
        STACK[0x3920] = STACK[0x2198] + STACK[0x2A78];
        if (__CFADD__(v271, v270))
        {
          v272 = 1;
        }

        LODWORD(STACK[0x3910]) = v272;
        v273 = STACK[0x21B8];
        v274 = STACK[0x2A50];
        v275 = STACK[0x2A50] + STACK[0x21B8] > 0xFFFFFFFFFFFFFFFCLL;
        STACK[0x3918] = STACK[0x2A50] + STACK[0x21B8];
        if (__CFADD__(v274, v273))
        {
          v275 = 1;
        }

        LODWORD(STACK[0x38F8]) = v275;
        v276 = STACK[0x2230];
        v277 = STACK[0x2A60];
        LODWORD(v278) = STACK[0x2A60] + STACK[0x2230] == -1;
        STACK[0x38D8] = STACK[0x2A60] + STACK[0x2230];
        if (__CFADD__(v277, v276))
        {
          v278 = 1;
        }

        else
        {
          v278 = v278;
        }

        STACK[0x38D0] = v278;
        v279 = STACK[0x2AD8];
        v280 = STACK[0x21A8];
        v281 = STACK[0x21A8] + STACK[0x2AD8] > 0xFFFFFFFFFFFFFFD2;
        STACK[0x38C8] = STACK[0x21A8] + STACK[0x2AD8];
        if (__CFADD__(v280, v279))
        {
          v281 = 1;
        }

        LODWORD(STACK[0x38C0]) = v281;
        v282 = STACK[0x2AB0];
        v283 = STACK[0x21B0];
        v284 = STACK[0x21B0] + STACK[0x2AB0] > 0xFFFFFFFFFFFFFFD8;
        STACK[0x38B8] = STACK[0x21B0] + STACK[0x2AB0];
        if (__CFADD__(v283, v282))
        {
          v284 = 1;
        }

        LODWORD(STACK[0x38B0]) = v284;
        v285 = STACK[0x2AC8];
        v286 = STACK[0x2208];
        v287 = STACK[0x2AC8] + STACK[0x2208] > 0xFFFFFFFFFFFFFFF0;
        STACK[0x38A8] = STACK[0x2AC8] + STACK[0x2208];
        if (__CFADD__(v285, v286))
        {
          v287 = 1;
        }

        LODWORD(STACK[0x3898]) = v287;
        v288 = STACK[0x2AD0];
        v289 = STACK[0x21D8];
        v290 = STACK[0x21D8] + STACK[0x2AD0] > 0xFFFFFFFFFFFFFFF6;
        STACK[0x3890] = STACK[0x21D8] + STACK[0x2AD0];
        if (__CFADD__(v289, v288))
        {
          v290 = 1;
        }

        LODWORD(STACK[0x3830]) = v290;
        v291 = STACK[0x2AE8];
        v292 = STACK[0x2200];
        v293 = STACK[0x2200] + STACK[0x2AE8] > 0xFFFFFFFFFFFFFFFCLL;
        STACK[0x3828] = STACK[0x2200] + STACK[0x2AE8];
        if (__CFADD__(v292, v291))
        {
          v293 = 1;
        }

        LODWORD(STACK[0x3818]) = v293;
        v294 = STACK[0x2AF0];
        v295 = STACK[0x2218];
        v296 = STACK[0x2AF0] + STACK[0x2218] > 0xFFFFFFFFFFFFFFFALL;
        STACK[0x3820] = STACK[0x2AF0] + STACK[0x2218];
        if (__CFADD__(v294, v295))
        {
          v296 = 1;
        }

        LODWORD(STACK[0x3810]) = v296;
        v297 = STACK[0x2B60];
        v298 = STACK[0x2560];
        v299 = STACK[0x2560] + STACK[0x2B60] > 0xFFFFFFFFFFFFFFD8;
        STACK[0x3808] = STACK[0x2560] + STACK[0x2B60];
        if (__CFADD__(v298, v297))
        {
          v299 = 1;
        }

        LODWORD(STACK[0x3800]) = v299;
        v300 = STACK[0x2598];
        v301 = STACK[0x2B78];
        v302 = STACK[0x2B78] + STACK[0x2598] > 0xFFFFFFFFFFFFFFEELL;
        STACK[0x37F8] = STACK[0x2B78] + STACK[0x2598];
        if (__CFADD__(v301, v300))
        {
          v302 = 1;
        }

        LODWORD(STACK[0x37E8]) = v302;
        v303 = STACK[0x2B88];
        v304 = STACK[0x2578];
        v305 = STACK[0x2B88] + STACK[0x2578] > 0xFFFFFFFFFFFFFFF0;
        STACK[0x37D8] = STACK[0x2B88] + STACK[0x2578];
        if (__CFADD__(v303, v304))
        {
          v305 = 1;
        }

        LODWORD(STACK[0x37D0]) = v305;
        v306 = STACK[0x2B80];
        v307 = STACK[0x2568];
        v308 = STACK[0x2B80] + STACK[0x2568] > 0xFFFFFFFFFFFFFFDELL;
        STACK[0x37F0] = STACK[0x2B80] + STACK[0x2568];
        if (__CFADD__(v306, v307))
        {
          v308 = 1;
        }

        LODWORD(STACK[0x37E0]) = v308;
        v309 = STACK[0x2B58];
        v310 = STACK[0x2570];
        v311 = STACK[0x2570] + STACK[0x2B58] > 0xFFFFFFFFFFFFFFFCLL;
        STACK[0x37C8] = STACK[0x2570] + STACK[0x2B58];
        if (__CFADD__(v310, v309))
        {
          v311 = 1;
        }

        LODWORD(STACK[0x37C0]) = v311;
        v312 = STACK[0x2B40] + STACK[0x2590];
        v313 = __CFADD__(STACK[0x2B40], STACK[0x2590]) || STACK[0x2B40] + STACK[0x2590] == -1;
        v314 = STACK[0x24E8];
        if (2 * STACK[0x24E8] > 0xFFFFFFFFFFFFFFF0 || v314 < 0)
        {
          v316 = 15;
        }

        else
        {
          v316 = 0;
        }

        v317 = v316 + 2 * STACK[0x24E8];
        v318 = v317 + v314;
        v319 = __CFADD__(v317, v314) || v317 + v314 > 0xFFFFFFFFFFFFFFF0;
        v320 = STACK[0x24F8];
        if (2 * STACK[0x24F8] > 0xFFFFFFFFFFFFFFDELL || v320 < 0)
        {
          v322 = 33;
        }

        else
        {
          v322 = 0;
        }

        v323 = v322 + 2 * STACK[0x24F8];
        v324 = v323 + v320;
        v325 = __CFADD__(v323, v320) || v323 + v320 > 0xFFFFFFFFFFFFFFDELL;
        v326 = STACK[0x24D0];
        if (2 * STACK[0x24D0] > 0xFFFFFFFFFFFFFFFCLL || v326 < 0)
        {
          v328 = 3;
        }

        else
        {
          v328 = 0;
        }

        v329 = v328 + 2 * STACK[0x24D0];
        v330 = v329 + v326 > 0xFFFFFFFFFFFFFFFCLL;
        v1886 = __CFADD__(v329, v326);
        v331 = v329 + v326;
        LODWORD(STACK[0x3938]) = v452;
        STACK[0x3928] = (v452 + 1134718987) & 0xBC5D56BF;
        v332 = STACK[0x24E0];
        v333 = STACK[0x24E0] << (((v452 + 11) & 0xBFu) - 62);
        v334 = v1886 || v330;
        if (v333 > 0xFFFFFFFFFFFFFFFALL || v332 < 0)
        {
          v336 = 5;
        }

        else
        {
          v336 = 0;
        }

        v337 = v336 + v333;
        v338 = v337 + v332;
        v339 = __CFADD__(v337, v332) || v337 + v332 > 0xFFFFFFFFFFFFFFFALL;
        v340 = __ROR8__(STACK[0x24C8], 63);
        v341 = v340 + STACK[0x24C8];
        LODWORD(v342) = __CFADD__(v340, STACK[0x24C8]);
        if (v341 == -1)
        {
          v342 = 1;
        }

        else
        {
          v342 = v342;
        }

        v343 = STACK[0x24F0];
        if (2 * STACK[0x24F0] > 0xFFFFFFFFFFFFFFD2 || v343 < 0)
        {
          v345 = 45;
        }

        else
        {
          v345 = 0;
        }

        v346 = v345 + 2 * STACK[0x24F0];
        STACK[0x37B8] = v342 + v341;
        v1886 = __CFADD__(v346, v343);
        v347 = v346 + v343;
        v348 = STACK[0x24B8];
        v349 = 2 * STACK[0x24B8];
        v350 = v1886;
        v351 = v349 > 0xFFFFFFFFFFFFFFD8 || v348 < 0;
        v352 = STACK[0x2500];
        v353 = 2 * STACK[0x2500];
        if (v351)
        {
          v354 = 39;
        }

        else
        {
          v354 = 0;
        }

        v355 = v353 > 0xFFFFFFFFFFFFFFCALL || v352 < 0;
        v356 = 53;
        if (!v355)
        {
          v356 = 0;
        }

        v4152 = v334 == 0;
        v357 = v354 + v349;
        v358 = v356 + v353;
        if (v4152)
        {
          v359 = 0;
        }

        else
        {
          v359 = 3;
        }

        v1886 = __CFADD__(v358, v352);
        v360 = v358 + v352;
        v361 = v1886;
        v1886 = __CFADD__(v357, v348);
        v362 = v357 + v348;
        v363 = v1886;
        if (v339)
        {
          v364 = 5;
        }

        else
        {
          v364 = 0;
        }

        STACK[0x37B0] = v364 + v338;
        if (v347 > 0xFFFFFFFFFFFFFFD2)
        {
          v365 = 1;
        }

        else
        {
          v365 = v350;
        }

        if (v362 > 0xFFFFFFFFFFFFFFD8)
        {
          v366 = 1;
        }

        else
        {
          v366 = v363;
        }

        STACK[0x37A8] = v359 + v331;
        if (v366)
        {
          v367 = 39;
        }

        else
        {
          v367 = 0;
        }

        if (v325)
        {
          v368 = 33;
        }

        else
        {
          v368 = 0;
        }

        if (v319)
        {
          v369 = 15;
        }

        else
        {
          v369 = 0;
        }

        STACK[0x37A0] = v369 + v318;
        v370 = v368 + v324;
        if (v360 > 0xFFFFFFFFFFFFFFCALL)
        {
          v371 = 1;
        }

        else
        {
          v371 = v361;
        }

        if (v365)
        {
          v372 = 45;
        }

        else
        {
          v372 = 0;
        }

        v373 = v372 + v347;
        if (v371)
        {
          v374 = 53;
        }

        else
        {
          v374 = 0;
        }

        STACK[0x3798] = v374 + v360;
        STACK[0x3790] = v367 + v362;
        v375 = STACK[0x2548] + STACK[0x2B38];
        v376 = __CFADD__(STACK[0x2548], STACK[0x2B38]);
        if (v375 > 0xFFFFFFFFFFFFFFFALL)
        {
          v376 = 1;
        }

        if (v376)
        {
          v377 = 5;
        }

        else
        {
          v377 = 0;
        }

        STACK[0x3788] = v377 + v375;
        v378 = STACK[0x2558] + STACK[0x2B50];
        v379 = __CFADD__(STACK[0x2558], STACK[0x2B50]);
        v380 = STACK[0x2550] + STACK[0x2B68];
        v381 = __CFADD__(STACK[0x2550], STACK[0x2B68]);
        if (v378 > 0xFFFFFFFFFFFFFFF6)
        {
          v379 = 1;
        }

        v382 = STACK[0x2580] + STACK[0x2B70];
        v383 = __CFADD__(STACK[0x2580], STACK[0x2B70]);
        if (v379)
        {
          v384 = 9;
        }

        else
        {
          v384 = 0;
        }

        v385 = v384 + v378;
        STACK[0x3780] = v313 + v312;
        v386 = STACK[0x2B48] + STACK[0x2588];
        v387 = __CFADD__(STACK[0x2B48], STACK[0x2588]);
        if (LODWORD(STACK[0x37C0]))
        {
          v388 = 3;
        }

        else
        {
          v388 = 0;
        }

        STACK[0x37C8] += v388;
        if (v380 > 0xFFFFFFFFFFFFFFD2)
        {
          v381 = 1;
        }

        if (LODWORD(STACK[0x37D0]))
        {
          v389 = 15;
        }

        else
        {
          v389 = 0;
        }

        STACK[0x37D8] += v389;
        if (LODWORD(STACK[0x37E8]))
        {
          v390 = 17;
        }

        else
        {
          v390 = 0;
        }

        if (v381)
        {
          v391 = 45;
        }

        else
        {
          v391 = 0;
        }

        STACK[0x37E8] = v391 + v380;
        STACK[0x37F8] += v390;
        if (v386 > 0xFFFFFFFFFFFFFFD0)
        {
          v387 = 1;
        }

        if (LODWORD(STACK[0x37E0]))
        {
          v392 = 33;
        }

        else
        {
          v392 = 0;
        }

        STACK[0x37F0] += v392;
        if (v387)
        {
          v393 = 47;
        }

        else
        {
          v393 = 0;
        }

        if (LODWORD(STACK[0x3800]))
        {
          v394 = 39;
        }

        else
        {
          v394 = 0;
        }

        STACK[0x3808] += v394;
        STACK[0x3800] = v393 + v386;
        if (v382 > 0xFFFFFFFFFFFFFFCALL || v383)
        {
          v396 = 53;
        }

        else
        {
          v396 = 0;
        }

        STACK[0x37E0] = v396 + v382;
        v397 = STACK[0x2A48] + STACK[0x21F0];
        LODWORD(v398) = __CFADD__(STACK[0x2A48], STACK[0x21F0]);
        if (v397 == -1)
        {
          v398 = 1;
        }

        else
        {
          v398 = v398;
        }

        v399 = STACK[0x21C8] + STACK[0x2AA0];
        v400 = __CFADD__(STACK[0x21C8], STACK[0x2AA0]);
        v401 = STACK[0x3818];
        STACK[0x3818] = v398 + v397;
        if (v401)
        {
          v402 = 3;
        }

        else
        {
          v402 = 0;
        }

        if (LODWORD(STACK[0x3810]))
        {
          v403 = 5;
        }

        else
        {
          v403 = 0;
        }

        STACK[0x3820] += v403;
        STACK[0x3828] += v402;
        v404 = STACK[0x2A58] + STACK[0x21C0];
        v405 = __CFADD__(STACK[0x2A58], STACK[0x21C0]);
        if (LODWORD(STACK[0x3830]))
        {
          v406 = 9;
        }

        else
        {
          v406 = 0;
        }

        v4152 = LODWORD(STACK[0x3898]) == 0;
        STACK[0x3898] = v406 + STACK[0x3890];
        if (v4152)
        {
          v407 = 0;
        }

        else
        {
          v407 = 15;
        }

        STACK[0x38A8] += v407;
        if (v399 > 0xFFFFFFFFFFFFFFEELL)
        {
          v400 = 1;
        }

        if (v400)
        {
          v408 = 17;
        }

        else
        {
          v408 = 0;
        }

        STACK[0x3890] = v408 + v399;
        if (v404 > 0xFFFFFFFFFFFFFFDELL)
        {
          v405 = 1;
        }

        v409 = STACK[0x21A0] + STACK[0x2AB8];
        v410 = __CFADD__(STACK[0x21A0], STACK[0x2AB8]);
        if (LODWORD(STACK[0x38B0]))
        {
          v411 = 39;
        }

        else
        {
          v411 = 0;
        }

        STACK[0x38B8] += v411;
        if (v405)
        {
          v412 = 33;
        }

        else
        {
          v412 = 0;
        }

        STACK[0x38B0] = v412 + v404;
        if (v409 > 0xFFFFFFFFFFFFFFD0 || v410)
        {
          v414 = 47;
        }

        else
        {
          v414 = 0;
        }

        STACK[0x3830] = v414 + v409;
        v415 = STACK[0x2A98] + STACK[0x2210];
        v416 = __CFADD__(STACK[0x2A98], STACK[0x2210]);
        if (v415 > 0xFFFFFFFFFFFFFFCALL)
        {
          v416 = 1;
        }

        if (LODWORD(STACK[0x38C0]))
        {
          v417 = 45;
        }

        else
        {
          v417 = 0;
        }

        STACK[0x38C8] += v417;
        if (v416)
        {
          v418 = 53;
        }

        else
        {
          v418 = 0;
        }

        STACK[0x38C0] = v418 + v415;
        STACK[0x38D8] += STACK[0x38D0];
        if (LODWORD(STACK[0x3910]))
        {
          v419 = 5;
        }

        else
        {
          v419 = 0;
        }

        if (LODWORD(STACK[0x38F8]))
        {
          v420 = 3;
        }

        else
        {
          v420 = 0;
        }

        STACK[0x3918] += v420;
        STACK[0x3920] += v419;
        v421 = STACK[0x21D0] + STACK[0x2A90];
        v422 = __CFADD__(STACK[0x21D0], STACK[0x2A90]);
        v423 = STACK[0x21E8] + STACK[0x2AE0];
        v424 = __CFADD__(STACK[0x21E8], STACK[0x2AE0]);
        v425 = STACK[0x2A68] + STACK[0x2240];
        v426 = __CFADD__(STACK[0x2A68], STACK[0x2240]);
        if (LODWORD(STACK[0x3940]))
        {
          v427 = 9;
        }

        else
        {
          v427 = 0;
        }

        if (LODWORD(STACK[0x3950]))
        {
          v428 = 15;
        }

        else
        {
          v428 = 0;
        }

        if (LODWORD(STACK[0x3948]))
        {
          v429 = 17;
        }

        else
        {
          v429 = 0;
        }

        v430 = STACK[0x2A88] + STACK[0x21E0];
        v431 = __CFADD__(STACK[0x2A88], STACK[0x21E0]);
        if (v430 > 0xFFFFFFFFFFFFFFDELL)
        {
          v431 = 1;
        }

        v4152 = !v431;
        v432 = v428 + STACK[0x3980];
        STACK[0x3980] = v427 + STACK[0x3958];
        STACK[0x3978] += v429;
        if (v4152)
        {
          v433 = 0;
        }

        else
        {
          v433 = 33;
        }

        if (v421 > 0xFFFFFFFFFFFFFFD8)
        {
          v422 = 1;
        }

        if (v425 > 0xFFFFFFFFFFFFFFD0)
        {
          v426 = 1;
        }

        if (LODWORD(STACK[0x3998]))
        {
          v434 = 45;
        }

        else
        {
          v434 = 0;
        }

        STACK[0x3998] = v433 + v430;
        STACK[0x39A0] += v434;
        if (v422)
        {
          v435 = 39;
        }

        else
        {
          v435 = 0;
        }

        if (v423 > 0xFFFFFFFFFFFFFFCALL)
        {
          v424 = 1;
        }

        if (v426)
        {
          v436 = 47;
        }

        else
        {
          v436 = 0;
        }

        STACK[0x3958] = v435 + v421;
        if (v424)
        {
          v437 = 53;
        }

        else
        {
          v437 = 0;
        }

        STACK[0x3950] = v437 + v423;
        STACK[0x3948] = v436 + v425;
        v438 = STACK[0x2540];
        v439 = STACK[0x28C0] + STACK[0x2540];
        LODWORD(v440) = __CFADD__(STACK[0x28C0], STACK[0x2540]);
        if (v439 == -1)
        {
          v440 = 1;
        }

        else
        {
          v440 = v440;
        }

        v441 = v440 + v439;
        v1886 = __CFADD__(v441, v438);
        v442 = v441 + v438;
        LODWORD(v443) = v1886;
        if (v442 == -1)
        {
          v443 = 1;
        }

        else
        {
          v443 = v443;
        }

        STACK[0x3A40] = v443 + v442;
        if (LODWORD(STACK[0x3A90]))
        {
          v444 = 45;
        }

        else
        {
          v444 = 0;
        }

        v4152 = LODWORD(STACK[0x3AD0]) == 0;
        STACK[0x3A90] = v444 + STACK[0x3A98];
        if (v4152)
        {
          v445 = 0;
        }

        else
        {
          v445 = 47;
        }

        STACK[0x3A58] = v445 + STACK[0x3AE8];
        if (LODWORD(STACK[0x3AA0]))
        {
          v446 = 53;
        }

        else
        {
          v446 = 0;
        }

        STACK[0x3A50] = v446 + STACK[0x3AC8];
        STACK[0x2818] = STACK[0x3AB8];
        STACK[0x2810] = STACK[0x3AD8];
        v447 = *(STACK[0x3AC0] + 8 * (LODWORD(STACK[0x3938]) - 14290));
        STACK[0x3AD8] = STACK[0x3928];
        return v447(v432, 45, v373, v370, v385);
      case 0x1Cu:
        v1305 = STACK[0x31D8];
        v1306 = STACK[0x32E8];
        v1307 = STACK[0x31D8] + STACK[0x32E8] > 0xFFFFFFFFFFFFFFCALL;
        STACK[0x3A98] = STACK[0x31D8] + STACK[0x32E8];
        if (__CFADD__(v1305, v1306))
        {
          v1307 = 1;
        }

        LODWORD(STACK[0x3A90]) = v1307;
        v1308 = STACK[0x3258];
        v1309 = STACK[0x3178];
        v1310 = STACK[0x3258] + STACK[0x3178] > 0xFFFFFFFFFFFFFFD2;
        STACK[0x3A50] = STACK[0x3258] + STACK[0x3178];
        if (__CFADD__(v1308, v1309))
        {
          v1310 = 1;
        }

        LODWORD(STACK[0x3A48]) = v1310;
        v1311 = STACK[0x3190];
        v1312 = STACK[0x3100];
        v1313 = STACK[0x3190] + STACK[0x3100] > 0xFFFFFFFFFFFFFFD0;
        STACK[0x3A30] = STACK[0x3190] + STACK[0x3100];
        if (__CFADD__(v1311, v1312))
        {
          v1313 = 1;
        }

        LODWORD(STACK[0x3A28]) = v1313;
        v1314 = STACK[0x3230];
        v1315 = STACK[0x3168];
        v1316 = STACK[0x3230] + STACK[0x3168] > 0xFFFFFFFFFFFFFFDELL;
        STACK[0x3A08] = STACK[0x3230] + STACK[0x3168];
        if (__CFADD__(v1314, v1315))
        {
          v1316 = 1;
        }

        LODWORD(STACK[0x3A00]) = v1316;
        v1317 = STACK[0x31E0];
        v1318 = STACK[0x3240];
        v1319 = STACK[0x31E0] + STACK[0x3240] > 0xFFFFFFFFFFFFFFEELL;
        STACK[0x3A38] = STACK[0x31E0] + STACK[0x3240];
        if (__CFADD__(v1317, v1318))
        {
          v1319 = 1;
        }

        LODWORD(STACK[0x3A20]) = v1319;
        v1320 = STACK[0x31E8];
        v1321 = STACK[0x32C8];
        v1322 = STACK[0x31E8] + STACK[0x32C8] > 0xFFFFFFFFFFFFFFD8;
        STACK[0x39F8] = STACK[0x31E8] + STACK[0x32C8];
        if (__CFADD__(v1320, v1321))
        {
          v1322 = 1;
        }

        LODWORD(STACK[0x39F0]) = v1322;
        v1323 = STACK[0x31B8];
        v1324 = STACK[0x32C0];
        v1325 = STACK[0x31B8] + STACK[0x32C0] > 0xFFFFFFFFFFFFFFCALL;
        STACK[0x39E8] = STACK[0x31B8] + STACK[0x32C0];
        if (__CFADD__(v1323, v1324))
        {
          v1325 = 1;
        }

        LODWORD(STACK[0x39E0]) = v1325;
        v1326 = STACK[0x3238];
        v1327 = STACK[0x3158];
        v1328 = STACK[0x3238] + STACK[0x3158] > 0xFFFFFFFFFFFFFFD0;
        STACK[0x39D8] = STACK[0x3238] + STACK[0x3158];
        if (__CFADD__(v1326, v1327))
        {
          v1328 = 1;
        }

        LODWORD(STACK[0x39D0]) = v1328;
        v1329 = STACK[0x31C8];
        v1330 = STACK[0x3218];
        v1331 = STACK[0x31C8] + STACK[0x3218] > 0xFFFFFFFFFFFFFFD8;
        STACK[0x39C0] = STACK[0x31C8] + STACK[0x3218];
        if (__CFADD__(v1329, v1330))
        {
          v1331 = 1;
        }

        LODWORD(STACK[0x3990]) = v1331;
        v1332 = STACK[0x32F0];
        v1333 = STACK[0x31A8];
        v1334 = STACK[0x32F0] + STACK[0x31A8] > 0xFFFFFFFFFFFFFFEELL;
        STACK[0x3980] = STACK[0x32F0] + STACK[0x31A8];
        if (__CFADD__(v1332, v1333))
        {
          v1334 = 1;
        }

        LODWORD(STACK[0x3958]) = v1334;
        v1335 = STACK[0x31D0];
        v1336 = STACK[0x3300];
        v1337 = STACK[0x31D0] + STACK[0x3300] > 0xFFFFFFFFFFFFFFFALL;
        STACK[0x3938] = STACK[0x31D0] + STACK[0x3300];
        if (__CFADD__(v1335, v1336))
        {
          v1337 = 1;
        }

        LODWORD(STACK[0x3900]) = v1337;
        v1338 = STACK[0x3248];
        v1339 = STACK[0x3160];
        v1340 = STACK[0x3248] + STACK[0x3160] > 0xFFFFFFFFFFFFFFF6;
        STACK[0x3988] = STACK[0x3248] + STACK[0x3160];
        if (__CFADD__(v1338, v1339))
        {
          v1340 = 1;
        }

        LODWORD(STACK[0x3978]) = v1340;
        v1341 = STACK[0x3200] + STACK[0x32D0];
        v1342 = __CFADD__(STACK[0x3200], STACK[0x32D0]) || STACK[0x3200] + STACK[0x32D0] > 0xFFFFFFFFFFFFFFFCLL;
        v1343 = __CFADD__(STACK[0x3188], STACK[0x30F0]) || STACK[0x3188] + STACK[0x30F0] == -1;
        STACK[0x3370] = v1343 + STACK[0x3188] + STACK[0x30F0];
        v1344 = STACK[0x1E38] + STACK[0x1E88];
        v1345 = v2883;
        v1346 = __CFADD__(STACK[0x1E38], STACK[0x1E88]) || STACK[0x1E38] + STACK[0x1E88] > 0xFFFFFFFFFFFFFFCALL;
        v1347 = v2888;
        v1348 = STACK[0x1E20] + STACK[0x1EB8];
        v1349 = __CFADD__(STACK[0x1E20], STACK[0x1EB8]) || STACK[0x1E20] + STACK[0x1EB8] > 0xFFFFFFFFFFFFFFD0;
        v1350 = __CFADD__(STACK[0x1E18], STACK[0x1E80]) || STACK[0x1E18] + STACK[0x1E80] > 0xFFFFFFFFFFFFFFEELL;
        v1351 = __CFADD__(STACK[0x1E40], STACK[0x1EC0]) || STACK[0x1E40] + STACK[0x1EC0] == -1;
        v1352 = v1351 + STACK[0x1E40] + STACK[0x1EC0];
        v1353 = STACK[0x1E28] + STACK[0x1EA8];
        v1354 = __CFADD__(STACK[0x1E28], STACK[0x1EA8]);
        v1355 = STACK[0x1E50] + STACK[0x1E98];
        v1356 = __CFADD__(STACK[0x1E50], STACK[0x1E98]);
        v1357 = STACK[0x1E48] + STACK[0x1E70];
        v1358 = __CFADD__(STACK[0x1E48], STACK[0x1E70]);
        v1359 = STACK[0x1E60] + STACK[0x1EA0];
        v1360 = __CFADD__(STACK[0x1E60], STACK[0x1EA0]);
        if (v1357 > 0xFFFFFFFFFFFFFFFCLL)
        {
          v1358 = 1;
        }

        v1361 = STACK[0x1E30] + STACK[0x1EB0];
        v1362 = __CFADD__(STACK[0x1E30], STACK[0x1EB0]);
        v1363 = STACK[0x1E58] + STACK[0x1E90];
        v1364 = __CFADD__(STACK[0x1E58], STACK[0x1E90]);
        if (v1355 > 0xFFFFFFFFFFFFFFF6)
        {
          v1356 = 1;
        }

        v4152 = !v1358;
        v1365 = 3;
        if (v4152)
        {
          v1365 = 0;
        }

        v1366 = v1365 + v1357;
        v1367 = v1361 > 0xFFFFFFFFFFFFFFFALL || v1362;
        v1368 = v1359 > 0xFFFFFFFFFFFFFFF0 || v1360;
        v1369 = STACK[0x1E68] + STACK[0x1E78];
        v1370 = __CFADD__(STACK[0x1E68], STACK[0x1E78]);
        if (v1368)
        {
          v1371 = 15;
        }

        else
        {
          v1371 = 0;
        }

        v4152 = v1367 == 0;
        v1372 = v1371 + v1359;
        if (v4152)
        {
          v1373 = 0;
        }

        else
        {
          v1373 = 5;
        }

        v1374 = v1373 + v1361;
        if (v1356)
        {
          v1375 = 9;
        }

        else
        {
          v1375 = 0;
        }

        v1376 = v1375 + v1355;
        v1377 = v1363 > 0xFFFFFFFFFFFFFFD8 || v1364;
        if (v1350)
        {
          v1378 = 17;
        }

        else
        {
          v1378 = 0;
        }

        v1379 = v1378 + STACK[0x1E18] + STACK[0x1E80];
        v1380 = v1353 > 0xFFFFFFFFFFFFFFD2 || v1354;
        if (v1369 > 0xFFFFFFFFFFFFFFDELL)
        {
          v1370 = 1;
        }

        STACK[0x1900] = (__PAIR128__(v2870 - v1352, v2870) - v1352) >> 64;
        if (v1377)
        {
          v1381 = 39;
        }

        else
        {
          v1381 = 0;
        }

        v1382 = v1381 + v1363;
        if (v1349)
        {
          v1383 = 47;
        }

        else
        {
          v1383 = 0;
        }

        v1384 = v1383 + v1348;
        if (v1370)
        {
          v1385 = 33;
        }

        else
        {
          v1385 = 0;
        }

        v1386 = v1385 + v1369;
        if (v1346)
        {
          v1387 = 53;
        }

        else
        {
          v1387 = 0;
        }

        v4152 = v1380 == 0;
        v1388 = v1387 + v1344;
        if (v4152)
        {
          v1389 = 0;
        }

        else
        {
          v1389 = 45;
        }

        v1390 = v1389 + v1353;
        v1391 = -3;
        if (v2873 >= v1366)
        {
          v1391 = 0;
        }

        v1886 = v1347 >= v1372;
        v1392 = v1347 - v1372;
        STACK[0x18F0] = v2873 - v1366 + v1391;
        v1393 = -15;
        if (v1886)
        {
          v1393 = 0;
        }

        v1886 = STACK[0x3AA0] >= v1379;
        v1394 = STACK[0x3AA0] - v1379;
        STACK[0x1910] = v1392 + v1393;
        v1395 = -17;
        if (v1886)
        {
          v1395 = 0;
        }

        v1886 = v1345 >= v1376;
        v1396 = v1345 - v1376;
        STACK[0x18F8] = v1394 + v1395;
        v1397 = -9;
        if (v1886)
        {
          v1397 = 0;
        }

        v1886 = v2878 >= v1374;
        v1398 = v2878 - v1374;
        STACK[0x1920] = v1396 + v1397;
        v1399 = -5;
        if (v1886)
        {
          v1399 = 0;
        }

        v1886 = STACK[0x3A58] >= v1386;
        v1400 = STACK[0x3A58] - v1386;
        STACK[0x18C8] = v1398 + v1399;
        v1401 = -33;
        if (v1886)
        {
          v1401 = 0;
        }

        v1886 = STACK[0x3A70] >= v1382;
        v1402 = STACK[0x3A70] - v1382;
        STACK[0x18D0] = v1400 + v1401;
        v1403 = -39;
        if (v1886)
        {
          v1403 = 0;
        }

        v1886 = STACK[0x3A88] >= v1390;
        v1404 = STACK[0x3A88] - v1390;
        STACK[0x18E8] = v1402 + v1403;
        v1405 = -45;
        if (v1886)
        {
          v1405 = 0;
        }

        STACK[0x1950] = v1404 + v1405;
        v1406 = STACK[0x3250] + STACK[0x31F0];
        v1407 = __CFADD__(STACK[0x3250], STACK[0x31F0]);
        v1408 = -53;
        if (STACK[0x3AE8] >= v1388)
        {
          v1408 = 0;
        }

        STACK[0x1948] = STACK[0x3AE8] - v1388 + v1408;
        v1409 = v1406 > 0xFFFFFFFFFFFFFFF0 || v1407;
        if (v1342)
        {
          v1410 = 3;
        }

        else
        {
          v1410 = 0;
        }

        STACK[0x3468] = v1410 + v1341;
        v1411 = STACK[0x32E0] + STACK[0x3180];
        v1412 = __CFADD__(STACK[0x32E0], STACK[0x3180]);
        v1413 = -47;
        if (STACK[0x3A40] >= v1384)
        {
          v1413 = 0;
        }

        STACK[0x1928] = STACK[0x3A40] - v1384 + v1413;
        v1414 = STACK[0x3220] + STACK[0x31A0];
        v1415 = __CFADD__(STACK[0x3220], STACK[0x31A0]);
        if (v1409)
        {
          v1416 = 15;
        }

        else
        {
          v1416 = 0;
        }

        v1417 = STACK[0x3900];
        STACK[0x3368] = v1416 + v1406;
        if (v1417)
        {
          v1418 = 5;
        }

        else
        {
          v1418 = 0;
        }

        v4152 = LODWORD(STACK[0x3958]) == 0;
        STACK[0x3480] = v1418 + STACK[0x3938];
        if (v4152)
        {
          v1419 = 0;
        }

        else
        {
          v1419 = 17;
        }

        STACK[0x3898] = v1419 + STACK[0x3980];
        v1420 = v1411 > 0xFFFFFFFFFFFFFFDELL || v1412;
        if (LODWORD(STACK[0x3978]))
        {
          v1421 = 9;
        }

        else
        {
          v1421 = 0;
        }

        STACK[0x3488] = v1421 + STACK[0x3988];
        v1422 = v1414 > 0xFFFFFFFFFFFFFFD2 || v1415;
        v1423 = STACK[0x3198] + STACK[0x32B8];
        v1424 = __CFADD__(STACK[0x3198], STACK[0x32B8]);
        v1425 = STACK[0x32D8] + STACK[0x3170];
        v1426 = __CFADD__(STACK[0x32D8], STACK[0x3170]);
        if (v1422)
        {
          v1427 = 45;
        }

        else
        {
          v1427 = 0;
        }

        STACK[0x3470] = v1427 + v1414;
        v1428 = STACK[0x31C0] + STACK[0x3228];
        v1429 = __CFADD__(STACK[0x31C0], STACK[0x3228]);
        v1430 = STACK[0x31F8] + STACK[0x30F8];
        v1431 = __CFADD__(STACK[0x31F8], STACK[0x30F8]);
        if (LODWORD(STACK[0x3990]))
        {
          v1432 = 39;
        }

        else
        {
          v1432 = 0;
        }

        STACK[0x3A88] = v1432 + STACK[0x39C0];
        if (v1420)
        {
          v1433 = 33;
        }

        else
        {
          v1433 = 0;
        }

        v1434 = STACK[0x39D0];
        STACK[0x3360] = v1433 + v1411;
        if (v1434)
        {
          v1435 = 47;
        }

        else
        {
          v1435 = 0;
        }

        v4152 = LODWORD(STACK[0x39E0]) == 0;
        STACK[0x3A58] = v1435 + STACK[0x39D8];
        if (v4152)
        {
          v1436 = 0;
        }

        else
        {
          v1436 = 53;
        }

        STACK[0x3A70] = v1436 + STACK[0x39E8];
        v1437 = v1430 > 0xFFFFFFFFFFFFFFFCLL || v1431;
        v1438 = v1425 == -1 || v1426;
        STACK[0x3478] = v1438 + v1425;
        if (v1437)
        {
          v1439 = 3;
        }

        else
        {
          v1439 = 0;
        }

        STACK[0x3320] = v1439 + v1430;
        v1440 = STACK[0x32F8] + STACK[0x31B0];
        v1441 = __CFADD__(STACK[0x32F8], STACK[0x31B0]);
        if (v1428 > 0xFFFFFFFFFFFFFFF0)
        {
          v1429 = 1;
        }

        if (v1423 > 0xFFFFFFFFFFFFFFF6)
        {
          v1424 = 1;
        }

        if (v1429)
        {
          v1442 = 15;
        }

        else
        {
          v1442 = 0;
        }

        STACK[0x3340] = v1442 + v1428;
        if (v1424)
        {
          v1443 = 9;
        }

        else
        {
          v1443 = 0;
        }

        STACK[0x3330] = v1443 + v1423;
        v1444 = v1440 > 0xFFFFFFFFFFFFFFFALL || v1441;
        if (LODWORD(STACK[0x3A20]))
        {
          v1445 = 17;
        }

        else
        {
          v1445 = 0;
        }

        v4152 = LODWORD(STACK[0x39F0]) == 0;
        STACK[0x3A20] = v1445 + STACK[0x3A38];
        if (v4152)
        {
          v1446 = 0;
        }

        else
        {
          v1446 = 39;
        }

        STACK[0x3A38] = v1446 + STACK[0x39F8];
        if (LODWORD(STACK[0x3A00]))
        {
          v1447 = 33;
        }

        else
        {
          v1447 = 0;
        }

        v4152 = LODWORD(STACK[0x3A28]) == 0;
        STACK[0x3318] = v1447 + STACK[0x3A08];
        if (v4152)
        {
          v1448 = 0;
        }

        else
        {
          v1448 = 47;
        }

        STACK[0x3A40] = v1448 + STACK[0x3A30];
        if (v1444)
        {
          v1449 = 5;
        }

        else
        {
          v1449 = 0;
        }

        STACK[0x3328] = v1449 + v1440;
        if (LODWORD(STACK[0x3A48]))
        {
          v1450 = 45;
        }

        else
        {
          v1450 = 0;
        }

        v4152 = LODWORD(STACK[0x3A90]) == 0;
        STACK[0x3338] = v1450 + STACK[0x3A50];
        if (v4152)
        {
          v1451 = 0;
        }

        else
        {
          v1451 = 53;
        }

        STACK[0x3A30] = v1451 + STACK[0x3A98];
        STACK[0x3828] = STACK[0x29C0];
        STACK[0x3830] = STACK[0x29C8];
        STACK[0x3090] = STACK[0x28E0];
        STACK[0x3098] = STACK[0x28E8];
        STACK[0x3820] = STACK[0x29D0];
        STACK[0x3088] = STACK[0x28F0];
        STACK[0x30A0] = STACK[0x2990];
        STACK[0x30C0] = STACK[0x2BC8];
        STACK[0x3080] = STACK[0x2B90];
        STACK[0x3078] = STACK[0x29D8];
        STACK[0x3810] = STACK[0x2AF8];
        STACK[0x3070] = STACK[0x2998];
        STACK[0x3068] = STACK[0x29F8];
        STACK[0x30B0] = STACK[0x2BD0];
        STACK[0x30B8] = STACK[0x29E0];
        STACK[0x3060] = STACK[0x2A00];
        STACK[0x3818] = STACK[0x2BD8];
        STACK[0x3050] = STACK[0x28F8];
        STACK[0x3040] = STACK[0x2900];
        STACK[0x30A8] = STACK[0x2B00];
        STACK[0x3058] = STACK[0x2A08];
        STACK[0x3038] = STACK[0x2908];
        STACK[0x3030] = STACK[0x29E8];
        STACK[0x3938] = STACK[0x2B08];
        STACK[0x3020] = STACK[0x2A10];
        STACK[0x3028] = STACK[0x2A18];
        STACK[0x3018] = STACK[0x29A0];
        STACK[0x3010] = STACK[0x2910];
        STACK[0x3510] = STACK[0x3AD0];
        STACK[0x3048] = STACK[0x2B10];
        STACK[0x3008] = STACK[0x2B98];
        STACK[0x3500] = STACK[0x3AC8];
        STACK[0x3508] = STACK[0x3558];
        STACK[0x3000] = STACK[0x2918];
        STACK[0x2FF8] = STACK[0x2920];
        STACK[0x3AC8] = STACK[0x2A20];
        STACK[0x3808] = STACK[0x2BE0];
        STACK[0x3800] = STACK[0x2B18];
        STACK[0x2FE8] = STACK[0x2BA0];
        STACK[0x2FE0] = STACK[0x2928];
        STACK[0x30D0] = STACK[0x2930];
        STACK[0x2FF0] = STACK[0x2BA8];
        STACK[0x2FD8] = STACK[0x2938];
        STACK[0x34F8] = STACK[0x39A0];
        STACK[0x2FB8] = STACK[0x2940];
        STACK[0x34F0] = STACK[0x3998];
        STACK[0x2FC8] = STACK[0x2948];
        STACK[0x2FA8] = STACK[0x2A28];
        STACK[0x2FB0] = STACK[0x2BB0];
        STACK[0x2FC0] = STACK[0x2B20];
        STACK[0x2FA0] = STACK[0x2950];
        STACK[0x3530] = STACK[0x39A8];
        STACK[0x34E8] = STACK[0x3A78];
        STACK[0x30C8] = STACK[0x2958];
        STACK[0x2FD0] = STACK[0x29F0];
        STACK[0x2F90] = STACK[0x29A8];
        STACK[0x34E0] = STACK[0x3A80];
        STACK[0x2F88] = STACK[0x2A30];
        STACK[0x2F80] = STACK[0x2960];
        STACK[0x2F98] = STACK[0x2BE8];
        STACK[0x3958] = STACK[0x2BF0];
        LODWORD(STACK[0x3900]) = STACK[0x36E0];
        STACK[0x2F70] = STACK[0x29B0];
        STACK[0x37F0] = STACK[0x2B28];
        STACK[0x2F68] = STACK[0x2BB8];
        STACK[0x2F60] = STACK[0x2968];
        STACK[0x3AD0] = STACK[0x2A38];
        STACK[0x2F50] = STACK[0x2970];
        STACK[0x2F48] = STACK[0x2978];
        STACK[0x37E8] = STACK[0x2B30];
        STACK[0x2F58] = STACK[0x2BC0];
        STACK[0x2F40] = STACK[0x2980];
        STACK[0x2F78] = STACK[0x2BF8];
        STACK[0x2F38] = STACK[0x2A40];
        STACK[0x2F30] = STACK[0x2988];
        v1452 = *(STACK[0x3AC0] + 8 * SLODWORD(STACK[0x534]));
        LODWORD(STACK[0x3A28]) = 29;
        LODWORD(STACK[0x37F8]) = STACK[0x3560];
        return v1452();
      case 0x1Fu:
        v4382 = STACK[0x3A88] + STACK[0x9A8];
        v4383 = __CFADD__(STACK[0x3A88], STACK[0x9A8]);
        if (v4382 > 0xFFFFFFFFFFFFFFD2)
        {
          v4383 = 1;
        }

        v4152 = !v4383;
        v4384 = 45;
        if (v4152)
        {
          v4384 = 0;
        }

        v4385 = v4384 + v4382;
        v4386 = STACK[0x1CB0];
        v4387 = v4384 + v4382 + STACK[0x1CB0] > 0xFFFFFFFFFFFFFFD2;
        STACK[0x3A98] = v4385 + STACK[0x1CB0];
        v4388 = __CFADD__(v4385, v4386) || v4387;
        LODWORD(STACK[0x3A90]) = v4388;
        v4389 = STACK[0x3A58] + STACK[0x8E0] > 0xFFFFFFFFFFFFFFDELL;
        v4390 = STACK[0x3A58] + STACK[0x8E0];
        if (__CFADD__(STACK[0x3A58], STACK[0x8E0]))
        {
          v4389 = 1;
        }

        if (v4389)
        {
          v4391 = 33;
        }

        else
        {
          v4391 = 0;
        }

        v4392 = v4391 + v4390;
        v4393 = STACK[0x1C90];
        v4394 = v4391 + v4390 + STACK[0x1C90] > 0xFFFFFFFFFFFFFFDELL;
        STACK[0x3A58] = v4392 + STACK[0x1C90];
        v4395 = __CFADD__(v4392, v4393) || v4394;
        LODWORD(STACK[0x3A50]) = v4395;
        v4396 = STACK[0x3AE8] + STACK[0x9A0];
        v4397 = __CFADD__(STACK[0x3AE8], STACK[0x9A0]);
        if (v4396 > 0xFFFFFFFFFFFFFFCALL)
        {
          v4397 = 1;
        }

        if (v4397)
        {
          v4398 = 53;
        }

        else
        {
          v4398 = 0;
        }

        v4399 = v2873;
        v4400 = v4398 + v4396;
        v4401 = v2878;
        v4402 = STACK[0x1C78];
        v4403 = v4398 + v4396 + STACK[0x1C78] > 0xFFFFFFFFFFFFFFCALL;
        STACK[0x3AE8] = v4400 + STACK[0x1C78];
        v4404 = v2883;
        v4405 = __CFADD__(v4400, v4402) || v4403;
        v4406 = STACK[0x3A70] + STACK[0x8B8];
        v4407 = __CFADD__(STACK[0x3A70], STACK[0x8B8]);
        if (v4406 > 0xFFFFFFFFFFFFFFD8)
        {
          v4407 = 1;
        }

        if (v4407)
        {
          v4408 = 39;
        }

        else
        {
          v4408 = 0;
        }

        v4409 = v4408 + v4406;
        v4410 = STACK[0x1CA8];
        v4411 = v4408 + v4406 + STACK[0x1CA8] > 0xFFFFFFFFFFFFFFD8;
        v4412 = v4409 + STACK[0x1CA8];
        if (__CFADD__(v4409, STACK[0x1CA8]))
        {
          v4411 = 1;
        }

        v4413 = v2870 + STACK[0x928];
        LODWORD(v4414) = __CFADD__(v2870, STACK[0x928]);
        if (v4413 == -1)
        {
          v4414 = 1;
        }

        else
        {
          v4414 = v4414;
        }

        v4415 = v4414 + v4413;
        v4416 = v2888;
        v4417 = STACK[0x1CC8];
        v4418 = __CFADD__(v4415, STACK[0x1CC8]) || v4415 + STACK[0x1CC8] == -1;
        STACK[0x3478] = v4418 + v4415 + v4417;
        v4419 = v4401 + STACK[0x9D0];
        v4420 = __CFADD__(v4401, STACK[0x9D0]) || v4401 + STACK[0x9D0] > 0xFFFFFFFFFFFFFFFALL;
        v4421 = __CFADD__(v4404, STACK[0x9C0]) || v4404 + STACK[0x9C0] > 0xFFFFFFFFFFFFFFF6;
        v4422 = v4399 + STACK[0x8B0];
        v4423 = __CFADD__(v4399, STACK[0x8B0]);
        v4424 = v4416 + STACK[0x930];
        v4425 = __CFADD__(v4416, STACK[0x930]);
        if (v4422 > 0xFFFFFFFFFFFFFFFCLL)
        {
          v4423 = 1;
        }

        v4426 = STACK[0x3AA0] + STACK[0xA68];
        v4427 = __CFADD__(STACK[0x3AA0], STACK[0xA68]);
        if (v4423)
        {
          v4428 = 3;
        }

        else
        {
          v4428 = 0;
        }

        v4429 = v4428 + v4422;
        if (v4424 > 0xFFFFFFFFFFFFFFF0 || v4425)
        {
          v4431 = 15;
        }

        else
        {
          v4431 = 0;
        }

        v4432 = v4431 + v4424;
        v4433 = v4426 > 0xFFFFFFFFFFFFFFEELL || v4427;
        if (v4421)
        {
          v4434 = 9;
        }

        else
        {
          v4434 = 0;
        }

        v4435 = v4434 + v4404 + STACK[0x9C0];
        if (v4433)
        {
          v4436 = 17;
        }

        else
        {
          v4436 = 0;
        }

        v4152 = !v4420;
        v4437 = v4436 + v4426;
        if (v4152)
        {
          v4438 = 0;
        }

        else
        {
          v4438 = 5;
        }

        v4439 = v4438 + v4419;
        v4440 = STACK[0x3A40] + STACK[0x948];
        v4441 = __CFADD__(STACK[0x3A40], STACK[0x948]);
        v1886 = v4417 >= v4415;
        v4442 = v4417 - v4415;
        v4443 = !v1886;
        STACK[0x15F0] = v4442 - v4443;
        v4444 = v4440 > 0xFFFFFFFFFFFFFFD0 || v4441;
        v4445 = STACK[0x1C80];
        if (STACK[0x1C80] >= v4435)
        {
          v4446 = 0;
        }

        else
        {
          v4446 = -9;
        }

        STACK[0x3488] = v4446 + STACK[0x1C80] - v4435;
        if (v4444)
        {
          v4447 = 47;
        }

        else
        {
          v4447 = 0;
        }

        v4448 = v4447 + v4440;
        v4449 = STACK[0x1CC0];
        v4450 = -5;
        if (STACK[0x1CC0] >= v4439)
        {
          v4450 = 0;
        }

        STACK[0x3480] = v4450 + STACK[0x1CC0] - v4439;
        v4451 = STACK[0x1CA0];
        if (STACK[0x1CA0] >= v4429)
        {
          v4452 = 0;
        }

        else
        {
          v4452 = -3;
        }

        STACK[0x3468] = v4452 + STACK[0x1CA0] - v4429;
        v4453 = v4439 + v4449;
        v4454 = __CFADD__(v4439, v4449);
        v4455 = v4429 + v4451;
        v4456 = __CFADD__(v4429, v4451);
        v4457 = STACK[0x1C98];
        if (STACK[0x1C98] >= v4432)
        {
          v4458 = 0;
        }

        else
        {
          v4458 = -15;
        }

        STACK[0x1618] = v4458 + STACK[0x1C98] - v4432;
        v1886 = v4410 >= v4409;
        v4459 = v4410 - v4409;
        if (v1886)
        {
          v4460 = 0;
        }

        else
        {
          v4460 = -39;
        }

        STACK[0x3A88] = v4460 + v4459;
        v1886 = v4393 >= v4392;
        v4461 = v4393 - v4392;
        if (v1886)
        {
          v4462 = 0;
        }

        else
        {
          v4462 = -33;
        }

        STACK[0x1630] = v4462 + v4461;
        v1886 = v4386 >= v4385;
        v4463 = v4386 - v4385;
        if (v1886)
        {
          v4464 = 0;
        }

        else
        {
          v4464 = -45;
        }

        STACK[0x3470] = v4464 + v4463;
        v4465 = STACK[0x1C88];
        if (STACK[0x1C88] >= v4437)
        {
          v4466 = 0;
        }

        else
        {
          v4466 = -17;
        }

        STACK[0x3898] = v4466 + STACK[0x1C88] - v4437;
        v4467 = v4435 + v4445;
        v4468 = __CFADD__(v4435, v4445);
        if (v4455 > 0xFFFFFFFFFFFFFFFCLL)
        {
          v4456 = 1;
        }

        v4469 = STACK[0x1CB8];
        if (STACK[0x1CB8] >= v4448)
        {
          v4470 = 0;
        }

        else
        {
          v4470 = -47;
        }

        v4471 = v4470 + STACK[0x1CB8] - v4448;
        v4472 = v4437 + v4465;
        v4473 = __CFADD__(v4437, v4465);
        v4474 = v4448 + v4469;
        v4475 = __CFADD__(v4448, v4469);
        v4476 = v4453 > 0xFFFFFFFFFFFFFFFALL || v4454;
        if (v4467 > 0xFFFFFFFFFFFFFFF6)
        {
          v4468 = 1;
        }

        v1886 = __CFADD__(v4432, v4457);
        v4477 = v4432 + v4457;
        v4478 = v1886;
        if (v4476)
        {
          v4479 = 5;
        }

        else
        {
          v4479 = 0;
        }

        v4480 = v4479 + v4453;
        if (v4402 >= v4400)
        {
          v4481 = 0;
        }

        else
        {
          v4481 = -53;
        }

        v4482 = v4481 + v4402 - v4400;
        v4483 = v4472 > 0xFFFFFFFFFFFFFFEELL || v4473;
        if (v4477 > 0xFFFFFFFFFFFFFFF0)
        {
          v4484 = 1;
        }

        else
        {
          v4484 = v4478;
        }

        if (v4456)
        {
          v4485 = 3;
        }

        else
        {
          v4485 = 0;
        }

        v4152 = v4484 == 0;
        v4486 = v4485 + v4455;
        if (v4152)
        {
          v4487 = 0;
        }

        else
        {
          v4487 = 15;
        }

        v4152 = !v4468;
        v4488 = v4487 + v4477;
        if (v4152)
        {
          v4489 = 0;
        }

        else
        {
          v4489 = 9;
        }

        v4490 = v4489 + v4467;
        if (v4411)
        {
          v4491 = 39;
        }

        else
        {
          v4491 = 0;
        }

        v4492 = v4491 + v4412;
        if (v4483)
        {
          v4493 = 17;
        }

        else
        {
          v4493 = 0;
        }

        v4494 = v4493 + v4472;
        if (v4405)
        {
          v4495 = 53;
        }

        else
        {
          v4495 = 0;
        }

        v4496 = v4495 + STACK[0x3AE8];
        if (LODWORD(STACK[0x3A90]))
        {
          v4497 = 45;
        }

        else
        {
          v4497 = 0;
        }

        v4498 = v4497 + STACK[0x3A98];
        v4499 = v4474 > 0xFFFFFFFFFFFFFFD0 || v4475;
        v4500 = 33;
        if (!LODWORD(STACK[0x3A50]))
        {
          v4500 = 0;
        }

        v4501 = v4500 + STACK[0x3A58];
        if (v4499)
        {
          v4502 = 47;
        }

        else
        {
          v4502 = 0;
        }

        v4503 = v4502 + v4474;
        v4504 = STACK[0x3560];
        v4505 = *(STACK[0x3AC0] + 8 * (LODWORD(STACK[0x3560]) - 14713));
        STACK[0x3828] = STACK[0x29C0];
        STACK[0x3830] = STACK[0x29C8];
        STACK[0x3090] = STACK[0x28E0];
        STACK[0x3098] = STACK[0x28E8];
        STACK[0x3820] = STACK[0x29D0];
        STACK[0x3088] = STACK[0x28F0];
        STACK[0x30A0] = STACK[0x2990];
        STACK[0x30C0] = STACK[0x2BC8];
        STACK[0x3080] = STACK[0x2B90];
        STACK[0x3078] = STACK[0x29D8];
        STACK[0x3810] = STACK[0x2AF8];
        STACK[0x3070] = STACK[0x2998];
        STACK[0x3068] = STACK[0x29F8];
        STACK[0x30B0] = STACK[0x2BD0];
        STACK[0x30B8] = STACK[0x29E0];
        STACK[0x3060] = STACK[0x2A00];
        STACK[0x3818] = STACK[0x2BD8];
        STACK[0x3050] = STACK[0x28F8];
        STACK[0x3040] = STACK[0x2900];
        STACK[0x30A8] = STACK[0x2B00];
        STACK[0x3058] = STACK[0x2A08];
        STACK[0x3038] = STACK[0x2908];
        STACK[0x3030] = STACK[0x29E8];
        STACK[0x3938] = STACK[0x2B08];
        STACK[0x3020] = STACK[0x2A10];
        STACK[0x3028] = STACK[0x2A18];
        STACK[0x3018] = STACK[0x29A0];
        STACK[0x3010] = STACK[0x2910];
        STACK[0x3510] = STACK[0x3AD0];
        STACK[0x3048] = STACK[0x2B10];
        STACK[0x3008] = STACK[0x2B98];
        STACK[0x3500] = STACK[0x3AC8];
        STACK[0x3508] = STACK[0x3558];
        STACK[0x3000] = STACK[0x2918];
        STACK[0x2FF8] = STACK[0x2920];
        STACK[0x3AC8] = STACK[0x2A20];
        STACK[0x3808] = STACK[0x2BE0];
        STACK[0x3800] = STACK[0x2B18];
        STACK[0x2FE8] = STACK[0x2BA0];
        STACK[0x2FE0] = STACK[0x2928];
        STACK[0x30D0] = STACK[0x2930];
        STACK[0x2FF0] = STACK[0x2BA8];
        STACK[0x2FD8] = STACK[0x2938];
        STACK[0x34F8] = STACK[0x39A0];
        STACK[0x2FB8] = STACK[0x2940];
        STACK[0x34F0] = STACK[0x3998];
        STACK[0x2FC8] = STACK[0x2948];
        STACK[0x2FA8] = STACK[0x2A28];
        STACK[0x2FB0] = STACK[0x2BB0];
        STACK[0x2FC0] = STACK[0x2B20];
        STACK[0x2FA0] = STACK[0x2950];
        STACK[0x3530] = STACK[0x39A8];
        STACK[0x34E8] = STACK[0x3A78];
        STACK[0x30C8] = STACK[0x2958];
        STACK[0x2FD0] = STACK[0x29F0];
        STACK[0x2F90] = STACK[0x29A8];
        STACK[0x34E0] = STACK[0x3A80];
        STACK[0x2F88] = STACK[0x2A30];
        STACK[0x2F80] = STACK[0x2960];
        STACK[0x2F98] = STACK[0x2BE8];
        STACK[0x3958] = STACK[0x2BF0];
        LODWORD(STACK[0x3900]) = STACK[0x36E0];
        STACK[0x2F70] = STACK[0x29B0];
        STACK[0x37F0] = STACK[0x2B28];
        STACK[0x2F68] = STACK[0x2BB8];
        STACK[0x2F60] = STACK[0x2968];
        STACK[0x3AD0] = STACK[0x2A38];
        STACK[0x2F50] = STACK[0x2970];
        STACK[0x2F48] = STACK[0x2978];
        STACK[0x37E8] = STACK[0x2B30];
        STACK[0x2F58] = STACK[0x2BC0];
        STACK[0x2F40] = STACK[0x2980];
        STACK[0x2F78] = STACK[0x2BF8];
        STACK[0x2F38] = STACK[0x2A40];
        STACK[0x2F30] = STACK[0x2988];
        LODWORD(STACK[0x3A28]) = 32;
        LODWORD(STACK[0x37F8]) = v4504;
        STACK[0x2330] = v4503;
        STACK[0x3A40] = v4503;
        STACK[0x2340] = v4486;
        STACK[0x3320] = v4486;
        STACK[0x8D8] = STACK[0x3470];
        STACK[0x8D0] = STACK[0x3488];
        STACK[0x8C8] = STACK[0x3480];
        STACK[0x2348] = v4490;
        STACK[0x3330] = v4490;
        STACK[0x3340] = v4488;
        STACK[0x2308] = v4488;
        STACK[0x2328] = v4498;
        STACK[0x3338] = v4498;
        STACK[0x2300] = STACK[0x3478];
        STACK[0x3370] = STACK[0x15F0];
        STACK[0x878] = STACK[0x3A88];
        STACK[0x9F8] = v4471;
        STACK[0x3A58] = v4471;
        STACK[0x2320] = v4501;
        STACK[0x3318] = v4501;
        STACK[0x2318] = v4496;
        STACK[0x3A30] = v4496;
        STACK[0x2338] = v4480;
        STACK[0x3328] = v4480;
        STACK[0x3368] = STACK[0x1618];
        STACK[0x3A70] = v4482;
        STACK[0x868] = v4482;
        STACK[0x3360] = STACK[0x1630];
        STACK[0x3A38] = v4492;
        STACK[0x22F8] = v4492;
        STACK[0x860] = STACK[0x3468];
        STACK[0x940] = STACK[0x3898];
        STACK[0x3A20] = v4494;
        STACK[0x2310] = v4494;
        return v4505();
      case 0x22u:
        v4323 = STACK[0x10C0];
        STACK[0x3A90] = v2878;
        v4324 = STACK[0xAC8];
        v4325 = STACK[0xAC8] + v4323 > 0xFFFFFFFFFFFFFFD0;
        STACK[0x3A98] = STACK[0xAC8] + v4323;
        v4326 = __CFADD__(v4324, v4323) || v4325;
        LODWORD(STACK[0x3A28]) = v4326;
        v4327 = STACK[0xCA0];
        v4328 = STACK[0xCA0] + STACK[0x1078];
        v4329 = __CFADD__(STACK[0xCA0], STACK[0x1078]) || STACK[0xCA0] + STACK[0x1078] > 0xFFFFFFFFFFFFFFFALL;
        v4330 = STACK[0x1050];
        STACK[0x3A30] = v2883;
        v4331 = STACK[0xBD8];
        v4332 = STACK[0xBD8] + v4330;
        v4333 = __CFADD__(STACK[0xBD8], v4330) || STACK[0xBD8] + v4330 > 0xFFFFFFFFFFFFFFFCLL;
        v4334 = STACK[0xB28];
        v4335 = STACK[0xB28] + STACK[0x1088];
        v4336 = __CFADD__(STACK[0xB28], STACK[0x1088]) || STACK[0xB28] + STACK[0x1088] > 0xFFFFFFFFFFFFFFF6;
        v4337 = STACK[0xB10];
        v4338 = __CFADD__(STACK[0xB10], STACK[0x1060]) || STACK[0xB10] + STACK[0x1060] == -1;
        STACK[0x1940] = v4338 + STACK[0xB10] + STACK[0x1060];
        STACK[0x3A50] = v2873;
        v4339 = STACK[0xC88] + STACK[0x1068];
        v4340 = __CFADD__(STACK[0xC88], STACK[0x1068]);
        v4341 = STACK[0x1638] + STACK[0x1018];
        v4342 = __CFADD__(STACK[0x1638], STACK[0x1018]);
        v4343 = STACK[0xC98];
        v4344 = STACK[0xC98] + STACK[0x1058];
        v4345 = __CFADD__(STACK[0xC98], STACK[0x1058]);
        v1886 = __CFADD__(STACK[0x1640], STACK[0x1030]);
        v4346 = STACK[0x1640] + STACK[0x1030];
        STACK[0x3A38] = v2870;
        v4347 = v1886;
        STACK[0x3A48] = v2888;
        v4348 = STACK[0xC90];
        v4349 = STACK[0xC90] + STACK[0x1040];
        v4350 = __CFADD__(STACK[0xC90], STACK[0x1040]);
        if (v4336)
        {
          v4351 = 9;
        }

        else
        {
          v4351 = 0;
        }

        STACK[0x1960] = v4351 + v4335;
        if (v4329)
        {
          v4352 = 5;
        }

        else
        {
          v4352 = 0;
        }

        STACK[0x1908] = v4352 + v4328;
        v4353 = v4339 > 0xFFFFFFFFFFFFFFF0 || v4340;
        v4354 = v4344 > 0xFFFFFFFFFFFFFFEELL || v4345;
        v4355 = STACK[0xBA8];
        v4356 = STACK[0xBA8] + STACK[0x1028];
        v4357 = __CFADD__(STACK[0xBA8], STACK[0x1028]);
        if (v4353)
        {
          v4358 = 15;
        }

        else
        {
          v4358 = 0;
        }

        STACK[0x1970] = v4358 + v4339;
        if (v4346 > 0xFFFFFFFFFFFFFFD8)
        {
          v4359 = 1;
        }

        else
        {
          v4359 = v4347;
        }

        v4360 = v4341 > 0xFFFFFFFFFFFFFFDELL || v4342;
        v4152 = v4354 == 0;
        v4361 = 17;
        if (v4152)
        {
          v4361 = 0;
        }

        STACK[0x1958] = v4361 + v4344;
        if (v4333)
        {
          v4362 = 3;
        }

        else
        {
          v4362 = 0;
        }

        v4363 = STACK[0x3A28];
        STACK[0x1930] = v4362 + v4332;
        v4364 = 47;
        if (!v4363)
        {
          v4364 = 0;
        }

        STACK[0x18D8] = v4364 + STACK[0x3A98];
        v4365 = v4356 > 0xFFFFFFFFFFFFFFCALL || v4357;
        v4366 = v4349 > 0xFFFFFFFFFFFFFFD2 || v4350;
        STACK[0x3490] = (__PAIR128__(STACK[0x1E40] - v4337, STACK[0x1E40]) - v4337) >> 64;
        v4367 = 39;
        if (!v4359)
        {
          v4367 = 0;
        }

        STACK[0x1938] = v4367 + v4346;
        if (STACK[0x1E48] >= v4331)
        {
          v4368 = 0;
        }

        else
        {
          v4368 = -3;
        }

        STACK[0x33D8] = STACK[0x1E48] - v4331 + v4368;
        v4369 = 33;
        if (!v4360)
        {
          v4369 = 0;
        }

        v4152 = v4365 == 0;
        STACK[0x1918] = v4369 + v4341;
        v4370 = 53;
        if (v4152)
        {
          v4370 = 0;
        }

        STACK[0x1968] = v4370 + v4356;
        v4371 = 45;
        if (!v4366)
        {
          v4371 = 0;
        }

        STACK[0x18E0] = v4371 + v4349;
        v4372 = -9;
        if (STACK[0x1E50] >= v4334)
        {
          v4372 = 0;
        }

        STACK[0x33B0] = STACK[0x1E50] - v4334 + v4372;
        v4373 = -17;
        if (STACK[0x1E18] >= v4343)
        {
          v4373 = 0;
        }

        STACK[0x33C8] = STACK[0x1E18] - v4343 + v4373;
        v4374 = -5;
        if (STACK[0x1E30] >= v4327)
        {
          v4374 = 0;
        }

        STACK[0x3408] = STACK[0x1E30] - v4327 + v4374;
        v4375 = -33;
        if (STACK[0x1E68] >= STACK[0x1638])
        {
          v4375 = 0;
        }

        STACK[0x3568] = STACK[0x1E68] - STACK[0x1638] + v4375;
        v4376 = -45;
        if (STACK[0x1E28] >= v4348)
        {
          v4376 = 0;
        }

        STACK[0x3550] = STACK[0x1E28] - v4348 + v4376;
        v4377 = -47;
        if (STACK[0x1E20] >= v4324)
        {
          v4377 = 0;
        }

        STACK[0x3540] = STACK[0x1E20] - v4324 + v4377;
        v4378 = -53;
        if (STACK[0x1E38] >= v4355)
        {
          v4378 = 0;
        }

        STACK[0x3548] = STACK[0x1E38] - v4355 + v4378;
        v4379 = -39;
        if (STACK[0x1E58] >= STACK[0x1640])
        {
          v4379 = 0;
        }

        v4380 = STACK[0x1E58] - STACK[0x1640] + v4379;
        v4381 = *(STACK[0x3AC0] + 8 * (LODWORD(STACK[0x3560]) - 12528));
        STACK[0x33F0] = STACK[0x2868];
        STACK[0x3888] = STACK[0x3AD8];
        STACK[0x3880] = STACK[0x3AA8];
        STACK[0xBF8] = STACK[0x3A88];
        STACK[0x3878] = STACK[0x3AB8];
        STACK[0x3400] = STACK[0x2870];
        STACK[0xBC0] = STACK[0x3A48];
        STACK[0x3870] = STACK[0x3940];
        STACK[0xB90] = STACK[0x3A38];
        STACK[0x3510] = STACK[0x3AD0];
        STACK[0x39F0] = STACK[0x2878];
        STACK[0x33E8] = STACK[0x2880];
        STACK[0xB58] = STACK[0x3AA0];
        STACK[0x3868] = STACK[0x3948];
        STACK[0x33E0] = STACK[0x2888];
        STACK[0x39E8] = STACK[0x2890];
        STACK[0x3500] = STACK[0x3AC8];
        STACK[0x3508] = STACK[0x3558];
        STACK[0xB30] = STACK[0x3AE8];
        STACK[0x3558] = STACK[0x2898];
        STACK[0x39D8] = STACK[0x28B8];
        STACK[0xB18] = STACK[0x3A30];
        STACK[0xB00] = STACK[0x3A70];
        STACK[0x3860] = STACK[0x3AB0];
        STACK[0xAF8] = STACK[0x3A58];
        STACK[0x34F8] = STACK[0x39A0];
        STACK[0x3858] = STACK[0x3950];
        STACK[0x34F0] = STACK[0x3998];
        STACK[0x3AD8] = STACK[0x28A0];
        STACK[0x3530] = STACK[0x39A8];
        STACK[0x34E8] = STACK[0x3A78];
        STACK[0x34E0] = STACK[0x3A80];
        STACK[0x39D0] = STACK[0x28A8];
        STACK[0x3850] = STACK[0x3910];
        STACK[0xAB8] = STACK[0x3A90];
        STACK[0xAA8] = STACK[0x3A50];
        STACK[0x3848] = STACK[0x3918];
        STACK[0xA90] = STACK[0x3A40];
        STACK[0x3838] = STACK[0x3920];
        LODWORD(STACK[0x3900]) = STACK[0x36E0];
        STACK[0x3840] = STACK[0x3928];
        STACK[0x33F8] = 35;
        STACK[0x3518] = 0x661C765BF4208041;
        STACK[0x33D0] = 0x5B8FBBD5E48BD14FLL;
        STACK[0x3538] = 0xA299ED451E059C13;
        STACK[0x33C0] = 0x32E284E124F24A81;
        STACK[0x3528] = 0x97B89D4EA264A1B3;
        STACK[0x33A0] = 0xD4A6F4CF55C46B4CLL;
        STACK[0x3398] = 0x87E85B6E5A109AFALL;
        STACK[0x33A8] = 0x34B9D46858BE76EBLL;
        STACK[0x3390] = 0xDDB22C380449E0BALL;
        STACK[0x3520] = 0x6EBA58B5908087BFLL;
        return v4381(v4380);
      case 0x30u:
        v779 = *(STACK[0x3AC0] + 8 * (LODWORD(STACK[0x3560]) - 6578));
        STACK[0x848] = v2878;
        STACK[0x7B0] = v2888;
        STACK[0x7B8] = STACK[0x3A88];
        STACK[0x3A38] = 0xF435247866A89D6ALL;
        STACK[0x7D0] = v2883;
        STACK[0x7D8] = STACK[0x3A58];
        v780 = STACK[0x2298];
        v781 = STACK[0x2290];
        STACK[0x3978] = 0xDE63DAE4FC78A846;
        STACK[0x7E8] = v2870;
        STACK[0x3980] = 0x8DB13C47EC9C5060;
        v782 = STACK[0x2250];
        STACK[0x800] = STACK[0x3A40];
        STACK[0x808] = STACK[0x3AA0];
        STACK[0x810] = STACK[0x3AE8];
        STACK[0x830] = STACK[0x3A70];
        STACK[0x838] = v2873;
        return v779(0x1BD1E5A80B860D97, STACK[0x2258], v782, v781, v780, STACK[0x2280], 39, 0x4F32EF6C4CA22D86);
      case 0x31u:
        v499 = STACK[0x3A58] + STACK[0x7D8] > 0xFFFFFFFFFFFFFFDELL;
        v500 = STACK[0x3A58] + STACK[0x7D8];
        if (__CFADD__(STACK[0x3A58], STACK[0x7D8]))
        {
          v499 = 1;
        }

        v4152 = !v499;
        v501 = 33;
        if (v4152)
        {
          v501 = 0;
        }

        v502 = v2878;
        v503 = v501 + v500;
        v504 = STACK[0x1CF8];
        v505 = v501 + v500 + STACK[0x1CF8] > 0xFFFFFFFFFFFFFFDELL;
        STACK[0x3A98] = v503 + STACK[0x1CF8];
        v506 = __CFADD__(v503, v504) || v505;
        LODWORD(STACK[0x3A90]) = v506;
        v507 = v2888 + STACK[0x7B0] > 0xFFFFFFFFFFFFFFF0;
        v508 = v2888 + STACK[0x7B0];
        if (__CFADD__(v2888, STACK[0x7B0]))
        {
          v507 = 1;
        }

        if (v507)
        {
          v509 = 15;
        }

        else
        {
          v509 = 0;
        }

        v510 = v509 + v508;
        v511 = STACK[0x1CE8];
        v512 = v509 + v508 + STACK[0x1CE8] > 0xFFFFFFFFFFFFFFF0;
        v513 = v510 + STACK[0x1CE8];
        if (__CFADD__(v510, STACK[0x1CE8]))
        {
          v512 = 1;
        }

        v514 = STACK[0x3AA0] + STACK[0x808];
        v515 = __CFADD__(STACK[0x3AA0], STACK[0x808]) || STACK[0x3AA0] + STACK[0x808] > 0xFFFFFFFFFFFFFFEELL;
        v516 = v2883 + STACK[0x7D0] > 0xFFFFFFFFFFFFFFF6;
        if (__CFADD__(v2883, STACK[0x7D0]))
        {
          v516 = 1;
        }

        v517 = v502 + STACK[0x848] > 0xFFFFFFFFFFFFFFFALL;
        v1886 = __CFADD__(v502, STACK[0x848]);
        v518 = v502 + STACK[0x848];
        v519 = v1886 || v517;
        v520 = __CFADD__(v2870, STACK[0x7E8]) || v2870 + STACK[0x7E8] == -1;
        v521 = v520 + v2870 + STACK[0x7E8];
        v522 = v2873 + STACK[0x838];
        v523 = __CFADD__(v2873, STACK[0x838]);
        v524 = v522 > 0xFFFFFFFFFFFFFFFCLL || v523;
        v525 = STACK[0x3A88] + STACK[0x7B8];
        v526 = __CFADD__(STACK[0x3A88], STACK[0x7B8]);
        if (v524)
        {
          v527 = 3;
        }

        else
        {
          v527 = 0;
        }

        v528 = v527 + v522;
        v529 = STACK[0x3A70] + STACK[0x830];
        v530 = __CFADD__(STACK[0x3A70], STACK[0x830]);
        if (v519)
        {
          v531 = 5;
        }

        else
        {
          v531 = 0;
        }

        v532 = v531 + v518;
        v533 = STACK[0x3A40] + STACK[0x800];
        v534 = __CFADD__(STACK[0x3A40], STACK[0x800]);
        if (v529 > 0xFFFFFFFFFFFFFFD8)
        {
          v530 = 1;
        }

        v535 = v525 > 0xFFFFFFFFFFFFFFD2 || v526;
        if (v516)
        {
          v536 = 9;
        }

        else
        {
          v536 = 0;
        }

        v537 = v536 + v2883 + STACK[0x7D0];
        v538 = STACK[0x3AE8] + STACK[0x810];
        v539 = __CFADD__(STACK[0x3AE8], STACK[0x810]);
        v540 = v533 > 0xFFFFFFFFFFFFFFD0 || v534;
        v541 = STACK[0x1D20];
        STACK[0x3310] = (__PAIR128__(STACK[0x1D20] - v521, STACK[0x1D20]) - v521) >> 64;
        if (v530)
        {
          v542 = 39;
        }

        else
        {
          v542 = 0;
        }

        v543 = v542 + v529;
        if (v540)
        {
          v544 = 47;
        }

        else
        {
          v544 = 0;
        }

        v545 = v544 + v533;
        v546 = STACK[0x1CF0];
        v547 = -5;
        if (STACK[0x1CF0] >= v532)
        {
          v547 = 0;
        }

        STACK[0x1610] = v547 + STACK[0x1CF0] - v532;
        if (v515)
        {
          v548 = 17;
        }

        else
        {
          v548 = 0;
        }

        v549 = v548 + v514;
        v550 = STACK[0x1D00];
        if (STACK[0x1D00] >= v528)
        {
          v551 = 0;
        }

        else
        {
          v551 = -3;
        }

        STACK[0x1608] = v551 + STACK[0x1D00] - v528;
        v552 = v538 > 0xFFFFFFFFFFFFFFCALL || v539;
        v553 = STACK[0x1CD0];
        if (STACK[0x1CD0] >= v537)
        {
          v554 = 0;
        }

        else
        {
          v554 = -9;
        }

        STACK[0x3698] = v554 + STACK[0x1CD0] - v537;
        if (v535)
        {
          v555 = 45;
        }

        else
        {
          v555 = 0;
        }

        v556 = v555 + v525;
        if (v552)
        {
          v557 = 53;
        }

        else
        {
          v557 = 0;
        }

        v558 = v557 + v538;
        v1886 = v511 >= v510;
        v559 = v511 - v510;
        if (v1886)
        {
          v560 = 0;
        }

        else
        {
          v560 = -15;
        }

        STACK[0x32B0] = v560 + v559;
        if (v504 >= v503)
        {
          v561 = 0;
        }

        else
        {
          v561 = -33;
        }

        STACK[0x1628] = v561 + v504 - v503;
        v1886 = __CFADD__(v532, v546);
        v562 = v532 + v546;
        v563 = v1886;
        v564 = STACK[0x1CD8];
        if (STACK[0x1CD8] >= v543)
        {
          v565 = 0;
        }

        else
        {
          v565 = -39;
        }

        STACK[0x3378] = v565 + STACK[0x1CD8] - v543;
        v566 = v537 + v553;
        v567 = __CFADD__(v537, v553);
        v568 = STACK[0x1D10];
        if (STACK[0x1D10] >= v549)
        {
          v569 = 0;
        }

        else
        {
          v569 = -17;
        }

        v570 = v569 + STACK[0x1D10] - v549;
        v1886 = __CFADD__(v528, v550);
        v571 = v528 + v550;
        v572 = v1886;
        v573 = STACK[0x1D18];
        v574 = -53;
        if (STACK[0x1D18] >= v558)
        {
          v574 = 0;
        }

        v575 = v574 + STACK[0x1D18] - v558;
        v576 = v549 + v568;
        v577 = __CFADD__(v549, v568);
        v578 = STACK[0x1D08];
        v579 = -45;
        if (STACK[0x1D08] >= v556)
        {
          v579 = 0;
        }

        STACK[0x15F8] = v579 + STACK[0x1D08] - v556;
        if (v562 > 0xFFFFFFFFFFFFFFFALL)
        {
          v563 = 1;
        }

        v1886 = __CFADD__(v521, v541);
        v580 = v521 + v541;
        LODWORD(v581) = v1886;
        if (v571 > 0xFFFFFFFFFFFFFFFCLL)
        {
          v572 = 1;
        }

        if (v580 == -1)
        {
          v581 = 1;
        }

        else
        {
          v581 = v581;
        }

        v582 = v581 + v580;
        if (v563)
        {
          v583 = 5;
        }

        else
        {
          v583 = 0;
        }

        v584 = v583 + v562;
        v585 = v566 > 0xFFFFFFFFFFFFFFF6 || v567;
        v586 = STACK[0x1CE0];
        if (STACK[0x1CE0] >= v545)
        {
          v587 = 0;
        }

        else
        {
          v587 = -47;
        }

        v588 = v587 + STACK[0x1CE0] - v545;
        if (v572)
        {
          v589 = 3;
        }

        else
        {
          v589 = 0;
        }

        v590 = v589 + v571;
        if (v512)
        {
          v591 = 15;
        }

        else
        {
          v591 = 0;
        }

        v592 = v591 + v513;
        v593 = v543 + v564;
        v594 = __CFADD__(v543, v564);
        v595 = v576 > 0xFFFFFFFFFFFFFFEELL || v577;
        if (v585)
        {
          v596 = 9;
        }

        else
        {
          v596 = 0;
        }

        v597 = v596 + v566;
        v598 = v556 + v578;
        v599 = __CFADD__(v556, v578);
        if (v595)
        {
          v600 = 17;
        }

        else
        {
          v600 = 0;
        }

        v601 = v600 + v576;
        v1886 = __CFADD__(v545, v586);
        v602 = v545 + v586;
        v603 = v1886;
        if (v593 > 0xFFFFFFFFFFFFFFD8)
        {
          v594 = 1;
        }

        v1886 = __CFADD__(v558, v573);
        v604 = v558 + v573;
        v605 = v1886;
        if (v598 > 0xFFFFFFFFFFFFFFD2)
        {
          v599 = 1;
        }

        if (v602 > 0xFFFFFFFFFFFFFFD0)
        {
          v603 = 1;
        }

        if (LODWORD(STACK[0x3A90]))
        {
          v606 = 33;
        }

        else
        {
          v606 = 0;
        }

        v607 = v606 + STACK[0x3A98];
        if (v603)
        {
          v608 = 47;
        }

        else
        {
          v608 = 0;
        }

        v609 = v608 + v602;
        if (v604 > 0xFFFFFFFFFFFFFFCALL)
        {
          v610 = 1;
        }

        else
        {
          v610 = v605;
        }

        v611 = 39;
        if (!v594)
        {
          v611 = 0;
        }

        v612 = v611 + v593;
        if (v610)
        {
          v613 = 53;
        }

        else
        {
          v613 = 0;
        }

        v614 = v613 + v604;
        if (v599)
        {
          v615 = 45;
        }

        else
        {
          v615 = 0;
        }

        v616 = v615 + v598;
        v617 = *(STACK[0x3AC0] + 8 * (LODWORD(STACK[0x3560]) - 15225));
        STACK[0x39D8] = STACK[0x2780];
        STACK[0x3888] = STACK[0x3AD8];
        STACK[0x3880] = STACK[0x3AA8];
        STACK[0x3AD8] = STACK[0x2810];
        STACK[0x39D0] = STACK[0x2768];
        STACK[0x3878] = STACK[0x3AB8];
        STACK[0x3870] = STACK[0x3940];
        STACK[0x3510] = STACK[0x3AD0];
        STACK[0x3868] = STACK[0x3948];
        STACK[0x3AB8] = STACK[0x2818];
        STACK[0x3500] = STACK[0x3AC8];
        STACK[0x3508] = STACK[0x3558];
        STACK[0x39F0] = STACK[0x27E0];
        STACK[0x3860] = STACK[0x3AB0];
        STACK[0x34F8] = STACK[0x39A0];
        STACK[0x3858] = STACK[0x3950];
        STACK[0x34F0] = STACK[0x3998];
        STACK[0x3AA8] = STACK[0x27E8];
        STACK[0x3530] = STACK[0x39A8];
        STACK[0x34E8] = STACK[0x3A78];
        STACK[0x34E0] = STACK[0x3A80];
        STACK[0x3850] = STACK[0x3910];
        STACK[0x3848] = STACK[0x3918];
        STACK[0x3838] = STACK[0x3920];
        STACK[0x3AB0] = STACK[0x27F0];
        LODWORD(STACK[0x3900]) = STACK[0x36E0];
        STACK[0x39E8] = STACK[0x27F8];
        STACK[0x3840] = STACK[0x3928];
        LODWORD(STACK[0x3A80]) = 50;
        STACK[0xA60] = v570;
        STACK[0x3990] = v570;
        STACK[0xA50] = v588;
        STACK[0x3988] = v588;
        STACK[0x3588] = v592;
        STACK[0xB38] = v592;
        STACK[0xC30] = v616;
        STACK[0x3570] = v616;
        STACK[0x900] = STACK[0x32B0];
        STACK[0x8E8] = STACK[0x3698];
        STACK[0xC48] = v582;
        STACK[0x3380] = v582;
        STACK[0x3590] = v612;
        STACK[0xB08] = v612;
        STACK[0xC78] = v584;
        STACK[0x3578] = v584;
        STACK[0x3358] = STACK[0x1628];
        STACK[0x8A8] = STACK[0x3310];
        STACK[0x3350] = STACK[0x1608];
        STACK[0xC08] = v614;
        STACK[0x3A00] = v614;
        STACK[0x3388] = STACK[0x1610];
        STACK[0x3348] = STACK[0x15F8];
        STACK[0x3208] = v607;
        STACK[0xAA0] = v607;
        STACK[0x3580] = v590;
        STACK[0xA98] = v590;
        STACK[0x3210] = v597;
        STACK[0xA80] = v597;
        STACK[0x39E0] = v575;
        STACK[0x870] = v575;
        STACK[0x3A08] = v601;
        STACK[0xA78] = v601;
        STACK[0xC20] = v609;
        STACK[0x39F8] = v609;
        STACK[0x858] = STACK[0x3378];
        return v617();
      case 0x34u:
        v1501 = STACK[0xA48];
        v1502 = STACK[0x1C08];
        v1503 = STACK[0x1C08] + STACK[0xA48] > 0xFFFFFFFFFFFFFFCALL;
        STACK[0x3A28] = STACK[0x1C08] + STACK[0xA48];
        v1504 = __CFADD__(v1502, v1501) || v1503;
        v1505 = STACK[0x1C18] + STACK[0xA28];
        v1506 = __CFADD__(STACK[0x1C18], STACK[0xA28]) || STACK[0x1C18] + STACK[0xA28] > 0xFFFFFFFFFFFFFFD0;
        v1507 = STACK[0x990];
        v1508 = STACK[0x1C10];
        v1509 = STACK[0x1C10] + STACK[0x990] > 0xFFFFFFFFFFFFFFD8;
        STACK[0x3A98] = STACK[0x1C10] + STACK[0x990];
        v1510 = __CFADD__(v1508, v1507) || v1509;
        v1511 = STACK[0x978];
        STACK[0x3A90] = v2878;
        v1512 = STACK[0xB48];
        v1513 = STACK[0xB48] + v1511 > 0xFFFFFFFFFFFFFFD2;
        v1514 = STACK[0xB48] + v1511;
        if (__CFADD__(STACK[0xB48], v1511))
        {
          v1513 = 1;
        }

        STACK[0x3A50] = v2873;
        v1515 = STACK[0xB78];
        v1516 = STACK[0x938];
        v1517 = STACK[0xB78] + STACK[0x938];
        v1518 = STACK[0xA58];
        STACK[0x3A48] = v2888;
        v1519 = STACK[0xBE8];
        v1520 = (STACK[0xBE8] ^ v1518) + 2 * (STACK[0xBE8] & v1518);
        v1521 = v1517 > 0xFFFFFFFFFFFFFFDELL;
        v1522 = v1515 + v1516;
        v1523 = __CFADD__(v1515, v1516) || v1521;
        v1524 = STACK[0x1648] + STACK[0x9C8];
        v1525 = __CFADD__(STACK[0x1648], STACK[0x9C8]);
        v1526 = STACK[0xA40];
        STACK[0x3A30] = v2883;
        v1527 = STACK[0xBF0];
        v1886 = __CFADD__(STACK[0xBF0], v1526);
        v1528 = STACK[0xBF0] + v1526;
        LODWORD(v1529) = v1886;
        v1530 = STACK[0xB40];
        v1886 = __CFADD__(STACK[0xB40], STACK[0x9B0]);
        v1531 = STACK[0xB40] + STACK[0x9B0];
        STACK[0x3A38] = v2870;
        v1532 = v1886;
        if (v1528 == -1)
        {
          v1529 = 1;
        }

        else
        {
          v1529 = v1529;
        }

        STACK[0x1738] = v1529 + v1528;
        v1533 = STACK[0xB80];
        v1534 = STACK[0xB80] + STACK[0x9E8];
        v1535 = __CFADD__(STACK[0xB80], STACK[0x9E8]);
        if (v1520 < v1518 || v1520 > 0xFFFFFFFFFFFFFFFCLL)
        {
          v1537 = 3;
        }

        else
        {
          v1537 = 0;
        }

        v1538 = STACK[0xBD0] + STACK[0x980];
        v1539 = __CFADD__(STACK[0xBD0], STACK[0x980]);
        if (v1531 > 0xFFFFFFFFFFFFFFFALL)
        {
          v1532 = 1;
        }

        STACK[0x16F0] = v1537 + v1520;
        if (v1532)
        {
          v1540 = 5;
        }

        else
        {
          v1540 = 0;
        }

        STACK[0x16C8] = v1540 + v1531;
        v1541 = v1524 > 0xFFFFFFFFFFFFFFEELL || v1525;
        v1542 = v1538 > 0xFFFFFFFFFFFFFFF0 || v1539;
        v1543 = STACK[0x22A8] - v1527;
        v1544 = STACK[0x22A8] < v1527;
        if (v1534 > 0xFFFFFFFFFFFFFFF6)
        {
          v1535 = 1;
        }

        v4152 = v1541 == 0;
        v1545 = 17;
        if (v4152)
        {
          v1545 = 0;
        }

        STACK[0x1740] = v1545 + v1524;
        if (v1542)
        {
          v1546 = 15;
        }

        else
        {
          v1546 = 0;
        }

        v4152 = v1523 == 0;
        v1547 = 33;
        if (v4152)
        {
          v1547 = 0;
        }

        STACK[0x1720] = v1547 + v1522;
        if (v1535)
        {
          v1548 = 9;
        }

        else
        {
          v1548 = 0;
        }

        STACK[0x16E8] = v1548 + v1534;
        v4152 = !v1506;
        v1549 = 47;
        if (v4152)
        {
          v1549 = 0;
        }

        v4152 = !v1513;
        v1550 = 45;
        if (v4152)
        {
          v1550 = 0;
        }

        STACK[0x3490] = v1543 - v1544;
        STACK[0x33F8] = 53;
        if (v1504)
        {
          v1551 = 53;
        }

        else
        {
          v1551 = 0;
        }

        v1552 = STACK[0x22F0] - v1519;
        if (STACK[0x22F0] >= v1519)
        {
          v1553 = 0;
        }

        else
        {
          v1553 = -3;
        }

        v1554 = STACK[0x22B0] - v1530;
        v1555 = -5;
        if (STACK[0x22B0] >= v1530)
        {
          v1555 = 0;
        }

        STACK[0x16D0] = v1546 + v1538;
        STACK[0x16E0] = v1549 + v1505;
        STACK[0x1728] = v1550 + v1514;
        STACK[0x1730] = v1551 + STACK[0x3A28];
        STACK[0x33D8] = v1552 + v1553;
        STACK[0x3408] = v1554 + v1555;
        v1556 = 39;
        if (!v1510)
        {
          v1556 = 0;
        }

        STACK[0x1750] = v1556 + STACK[0x3A98];
        v1557 = -9;
        if (STACK[0x22D0] >= v1533)
        {
          v1557 = 0;
        }

        STACK[0x33B0] = STACK[0x22D0] - v1533 + v1557;
        v1558 = -45;
        if (STACK[0x22A0] >= v1512)
        {
          v1558 = 0;
        }

        STACK[0x3550] = STACK[0x22A0] - v1512 + v1558;
        v1559 = -17;
        if (STACK[0x22C8] >= STACK[0x1648])
        {
          v1559 = 0;
        }

        STACK[0x33C8] = STACK[0x22C8] - STACK[0x1648] + v1559;
        v1560 = -33;
        if (STACK[0x22E0] >= v1515)
        {
          v1560 = 0;
        }

        STACK[0x3568] = STACK[0x22E0] - v1515 + v1560;
        v1561 = STACK[0x22B8] - STACK[0x1C10];
        v1562 = -39;
        if (STACK[0x22B8] >= STACK[0x1C10])
        {
          v1562 = 0;
        }

        v1563 = STACK[0x22E8] - STACK[0x1C18];
        v1564 = -47;
        if (STACK[0x22E8] >= STACK[0x1C18])
        {
          v1564 = 0;
        }

        v1565 = -53;
        if (STACK[0x22C0] >= STACK[0x1C08])
        {
          v1565 = 0;
        }

        STACK[0x3548] = STACK[0x22C0] - STACK[0x1C08] + v1565;
        STACK[0x3540] = v1563 + v1564;
        v1566 = *(STACK[0x3AC0] + 8 * (LODWORD(STACK[0x3560]) - 12528));
        STACK[0x33F0] = STACK[0x2868];
        STACK[0x3888] = STACK[0x3AD8];
        STACK[0x3880] = STACK[0x3AA8];
        STACK[0xC40] = STACK[0x3A58];
        STACK[0xC38] = STACK[0x3A48];
        STACK[0xC18] = STACK[0x3A40];
        STACK[0xC10] = STACK[0x3A38];
        STACK[0xC00] = STACK[0x3A70];
        STACK[0xBE0] = STACK[0x3AA0];
        STACK[0x3878] = STACK[0x3AB8];
        STACK[0x3400] = STACK[0x2870];
        STACK[0xBC8] = STACK[0x3AE8];
        STACK[0xBA0] = STACK[0x3A30];
        STACK[0x3870] = STACK[0x3940];
        STACK[0x3510] = STACK[0x3AD0];
        STACK[0x39F0] = STACK[0x2878];
        STACK[0x33E8] = STACK[0x2880];
        STACK[0x3868] = STACK[0x3948];
        STACK[0x33E0] = STACK[0x2888];
        STACK[0x39E8] = STACK[0x2890];
        STACK[0x3500] = STACK[0x3AC8];
        STACK[0x3508] = STACK[0x3558];
        STACK[0x3558] = STACK[0x2898];
        STACK[0x39D8] = STACK[0x28B8];
        STACK[0x3860] = STACK[0x3AB0];
        STACK[0x34F8] = STACK[0x39A0];
        STACK[0x3858] = STACK[0x3950];
        STACK[0x34F0] = STACK[0x3998];
        STACK[0xAE0] = STACK[0x3A50];
        STACK[0x3AD8] = STACK[0x28A0];
        STACK[0x3530] = STACK[0x39A8];
        STACK[0xAD0] = STACK[0x3A90];
        STACK[0x34E8] = STACK[0x3A78];
        STACK[0x34E0] = STACK[0x3A80];
        STACK[0x39D0] = STACK[0x28A8];
        STACK[0x3850] = STACK[0x3910];
        STACK[0x3848] = STACK[0x3918];
        STACK[0x3838] = STACK[0x3920];
        LODWORD(STACK[0x3900]) = STACK[0x36E0];
        STACK[0xA70] = STACK[0x3A88];
        STACK[0x3840] = STACK[0x3928];
        STACK[0x3518] = 0x661C765BF4208041;
        STACK[0x33D0] = 0x5B8FBBD5E48BD14FLL;
        STACK[0x3538] = 0xA299ED451E059C13;
        STACK[0x33C0] = 0x32E284E124F24A81;
        STACK[0x3528] = 0x97B89D4EA264A1B3;
        STACK[0x33A0] = 0xD4A6F4CF55C46B4CLL;
        STACK[0x3398] = 0x87E85B6E5A109AFALL;
        STACK[0x33A8] = 0x34B9D46858BE76EBLL;
        STACK[0x3390] = 0xDDB22C380449E0BALL;
        STACK[0x3520] = 0x6EBA58B5908087BFLL;
        return v1566(v1561 + v1562);
      case 0x3Eu:
        STACK[0x3A50] = 63;
        a1 = STACK[0x2A48];
        STACK[0x2B78] = STACK[0x3AA0];
        a6 = STACK[0x2AA8];
        STACK[0x3A90] = STACK[0x2AE0];
        STACK[0x2B70] = STACK[0x3AE8];
        a2 = STACK[0x2A50];
        STACK[0x3AA0] = STACK[0x2A68];
        a3 = STACK[0x2A60];
        STACK[0x2B68] = STACK[0x3A88];
        a8 = STACK[0x2AB0];
        STACK[0x3980] = STACK[0x2A58];
        v1567 = STACK[0x2AC8];
        v1576 = STACK[0x2AC0];
        STACK[0x2B60] = STACK[0x3A70];
        v1575 = STACK[0x2A90];
        v1574 = STACK[0x2AD0];
        STACK[0x2B58] = v2873;
        STACK[0x2B50] = v2883;
        v1568 = STACK[0x2A78];
        STACK[0x3978] = STACK[0x2AA0];
        STACK[0x3A48] = STACK[0x2A88];
        a5 = STACK[0x2A80];
        STACK[0x2B48] = STACK[0x3A40];
        STACK[0x3AE8] = STACK[0x2A70];
        STACK[0x2B40] = v2870;
        v1573 = STACK[0x2AD8];
        a9 = STACK[0x2AB8];
        STACK[0x2B38] = v2878;
        STACK[0x2B80] = STACK[0x3A58];
        STACK[0x2B88] = v2888;
        v1584 = STACK[0x2AF0];
        v1571 = STACK[0x2AE8];
        STACK[0x3A98] = STACK[0x2A98];
        a7 = 39;
        v1578 = 17;
        v1580 = 53;
        v1581 = 47;
        continue;
      case 0x3Fu:
        v826 = STACK[0x21E8] + STACK[0x1BA8] > 0xFFFFFFFFFFFFFFCALL;
        v827 = STACK[0x21E8] + STACK[0x1BA8];
        if (__CFADD__(STACK[0x21E8], STACK[0x1BA8]))
        {
          v826 = 1;
        }

        v828 = STACK[0x1B90] + STACK[0x2240] > 0xFFFFFFFFFFFFFFD0;
        v829 = STACK[0x1B90] + STACK[0x2240];
        if (__CFADD__(STACK[0x1B90], STACK[0x2240]))
        {
          v828 = 1;
        }

        v830 = STACK[0x1B80] + STACK[0x21F8] > 0xFFFFFFFFFFFFFFD2;
        v831 = STACK[0x1B80] + STACK[0x21F8];
        if (__CFADD__(STACK[0x1B80], STACK[0x21F8]))
        {
          v830 = 1;
        }

        v832 = STACK[0x1B70] + STACK[0x2228] > 0xFFFFFFFFFFFFFFF0;
        v833 = STACK[0x1B70] + STACK[0x2228];
        if (__CFADD__(STACK[0x1B70], STACK[0x2228]))
        {
          v832 = 1;
        }

        v834 = __CFADD__(STACK[0x1B68], STACK[0x2230]) || STACK[0x1B68] + STACK[0x2230] == -1;
        STACK[0x3380] = v834 + STACK[0x1B68] + STACK[0x2230];
        v835 = STACK[0x21A0] + STACK[0x1BC0] > 0xFFFFFFFFFFFFFFD0;
        v836 = STACK[0x21A0] + STACK[0x1BC0];
        if (__CFADD__(STACK[0x21A0], STACK[0x1BC0]))
        {
          v835 = 1;
        }

        v837 = STACK[0x21B0] + STACK[0x1B88];
        v838 = __CFADD__(STACK[0x21B0], STACK[0x1B88]) || STACK[0x21B0] + STACK[0x1B88] > 0xFFFFFFFFFFFFFFD8;
        v839 = STACK[0x1BB0] + STACK[0x21C0] > 0xFFFFFFFFFFFFFFDELL;
        v840 = STACK[0x1BB0] + STACK[0x21C0];
        if (__CFADD__(STACK[0x1BB0], STACK[0x21C0]))
        {
          v839 = 1;
        }

        v841 = STACK[0x1C00];
        STACK[0x3A48] = v2888;
        v842 = v2870;
        v843 = STACK[0x21C8] + v841 > 0xFFFFFFFFFFFFFFEELL;
        v1886 = __CFADD__(STACK[0x21C8], v841);
        v844 = STACK[0x21C8] + v841;
        if (v1886)
        {
          v843 = 1;
        }

        v845 = STACK[0x1B58] + STACK[0x2208] > 0xFFFFFFFFFFFFFFF0;
        v846 = STACK[0x1B58] + STACK[0x2208];
        if (__CFADD__(STACK[0x1B58], STACK[0x2208]))
        {
          v845 = 1;
        }

        v847 = __CFADD__(STACK[0x21F0], STACK[0x1BF0]) || STACK[0x21F0] + STACK[0x1BF0] == -1;
        STACK[0x3310] = v847 + STACK[0x21F0] + STACK[0x1BF0];
        v848 = STACK[0x1B78] + STACK[0x2200] > 0xFFFFFFFFFFFFFFFCLL;
        v849 = STACK[0x1B78] + STACK[0x2200];
        if (__CFADD__(STACK[0x1B78], STACK[0x2200]))
        {
          v848 = 1;
        }

        v850 = STACK[0x2218] + STACK[0x1BD8];
        v851 = __CFADD__(STACK[0x2218], STACK[0x1BD8]);
        if (v850 > 0xFFFFFFFFFFFFFFFALL)
        {
          v851 = 1;
        }

        STACK[0x3A50] = v2873;
        v852 = STACK[0x1BA0] + STACK[0x21D8];
        v853 = __CFADD__(STACK[0x1BA0], STACK[0x21D8]);
        if (v852 > 0xFFFFFFFFFFFFFFF6)
        {
          v853 = 1;
        }

        STACK[0x3A90] = v2878;
        if (v848)
        {
          v854 = 3;
        }

        else
        {
          v854 = 0;
        }

        STACK[0x3350] = v854 + v849;
        if (v851)
        {
          v855 = 5;
        }

        else
        {
          v855 = 0;
        }

        STACK[0x3388] = v855 + v850;
        if (v853)
        {
          v856 = 9;
        }

        else
        {
          v856 = 0;
        }

        STACK[0x3698] = v856 + v852;
        if (v843)
        {
          v857 = 17;
        }

        else
        {
          v857 = 0;
        }

        STACK[0x3990] = v857 + v844;
        if (v845)
        {
          v858 = 15;
        }

        else
        {
          v858 = 0;
        }

        STACK[0x32B0] = v858 + v846;
        v859 = STACK[0x1BD0] + STACK[0x2210];
        v860 = __CFADD__(STACK[0x1BD0], STACK[0x2210]);
        v861 = STACK[0x1BC8] + STACK[0x2238];
        v862 = __CFADD__(STACK[0x1BC8], STACK[0x2238]);
        if (v838)
        {
          v863 = 39;
        }

        else
        {
          v863 = 0;
        }

        STACK[0x3378] = v863 + v837;
        v864 = STACK[0x21A8] + STACK[0x1B60];
        v865 = __CFADD__(STACK[0x21A8], STACK[0x1B60]);
        if (v864 > 0xFFFFFFFFFFFFFFD2)
        {
          v865 = 1;
        }

        if (v839)
        {
          v866 = 33;
        }

        else
        {
          v866 = 0;
        }

        STACK[0x3358] = v866 + v840;
        if (v865)
        {
          v867 = 45;
        }

        else
        {
          v867 = 0;
        }

        STACK[0x3348] = v867 + v864;
        if (v835)
        {
          v868 = 47;
        }

        else
        {
          v868 = 0;
        }

        STACK[0x3988] = v868 + v836;
        v869 = v859 > 0xFFFFFFFFFFFFFFCALL || v860;
        v870 = STACK[0x21B8] + STACK[0x1BF8];
        v871 = __CFADD__(STACK[0x21B8], STACK[0x1BF8]);
        if (v869)
        {
          v872 = 53;
        }

        else
        {
          v872 = 0;
        }

        STACK[0x39E0] = v872 + v859;
        v873 = STACK[0x1BB8] + STACK[0x2198];
        v874 = __CFADD__(STACK[0x1BB8], STACK[0x2198]);
        v875 = STACK[0x2220] + STACK[0x1BE0];
        v876 = __CFADD__(STACK[0x2220], STACK[0x1BE0]);
        if (v873 > 0xFFFFFFFFFFFFFFFALL)
        {
          v874 = 1;
        }

        v877 = v861 > 0xFFFFFFFFFFFFFFF6 || v862;
        if (v870 > 0xFFFFFFFFFFFFFFFCLL)
        {
          v871 = 1;
        }

        if (v871)
        {
          v878 = 3;
        }

        else
        {
          v878 = 0;
        }

        STACK[0x3580] = v878 + v870;
        if (v875 > 0xFFFFFFFFFFFFFFEELL || v876)
        {
          v880 = 17;
        }

        else
        {
          v880 = 0;
        }

        STACK[0x3A08] = v880 + v875;
        if (v874)
        {
          v881 = 5;
        }

        else
        {
          v881 = 0;
        }

        STACK[0x3578] = v881 + v873;
        v882 = STACK[0x21D0] + STACK[0x1B98];
        v883 = __CFADD__(STACK[0x21D0], STACK[0x1B98]);
        if (v832)
        {
          v884 = 15;
        }

        else
        {
          v884 = 0;
        }

        STACK[0x3588] = v884 + v833;
        v885 = STACK[0x21E0] + STACK[0x1BE8];
        v886 = __CFADD__(STACK[0x21E0], STACK[0x1BE8]);
        if (v877)
        {
          v887 = 9;
        }

        else
        {
          v887 = 0;
        }

        STACK[0x3210] = v887 + v861;
        if (v885 > 0xFFFFFFFFFFFFFFDELL)
        {
          v886 = 1;
        }

        if (v886)
        {
          v888 = 33;
        }

        else
        {
          v888 = 0;
        }

        STACK[0x3208] = v888 + v885;
        if (v882 > 0xFFFFFFFFFFFFFFD8 || v883)
        {
          v890 = 39;
        }

        else
        {
          v890 = 0;
        }

        STACK[0x3590] = v890 + v882;
        if (v830)
        {
          v891 = 45;
        }

        else
        {
          v891 = 0;
        }

        STACK[0x3570] = v891 + v831;
        if (v828)
        {
          v892 = 47;
        }

        else
        {
          v892 = 0;
        }

        STACK[0x39F8] = v892 + v829;
        if (v826)
        {
          v893 = 53;
        }

        else
        {
          v893 = 0;
        }

        STACK[0x3A00] = v893 + v827;
        v894 = *(STACK[0x3AC0] + 8 * (LODWORD(STACK[0x3560]) - 15225));
        STACK[0x39D8] = STACK[0x2780];
        STACK[0x25F0] = v842;
        STACK[0x3888] = STACK[0x3AD8];
        STACK[0x3880] = STACK[0x3AA8];
        STACK[0x3AD8] = STACK[0x2810];
        STACK[0x25E8] = STACK[0x3AA0];
        STACK[0x39D0] = STACK[0x2768];
        STACK[0x3878] = STACK[0x3AB8];
        STACK[0x25E0] = STACK[0x3A48];
        STACK[0x3870] = STACK[0x3940];
        STACK[0x25D8] = STACK[0x3A88];
        STACK[0x3510] = STACK[0x3AD0];
        STACK[0x25D0] = STACK[0x3A90];
        STACK[0x3868] = STACK[0x3948];
        STACK[0x3AB8] = STACK[0x2818];
        STACK[0x3500] = STACK[0x3AC8];
        STACK[0x3508] = STACK[0x3558];
        STACK[0x25C8] = STACK[0x3A40];
        STACK[0x25C0] = STACK[0x3A58];
        STACK[0x39F0] = STACK[0x27E0];
        STACK[0x3860] = STACK[0x3AB0];
        STACK[0x25B8] = STACK[0x3AE8];
        STACK[0x34F8] = STACK[0x39A0];
        STACK[0x3858] = STACK[0x3950];
        STACK[0x34F0] = STACK[0x3998];
        STACK[0x3AA8] = STACK[0x27E8];
        STACK[0x3530] = STACK[0x39A8];
        STACK[0x34E8] = STACK[0x3A78];
        STACK[0x34E0] = STACK[0x3A80];
        STACK[0x3850] = STACK[0x3910];
        STACK[0x25B0] = STACK[0x3A70];
        STACK[0x3848] = STACK[0x3918];
        STACK[0x25A8] = STACK[0x3A50];
        STACK[0x3838] = STACK[0x3920];
        STACK[0x3AB0] = STACK[0x27F0];
        LODWORD(STACK[0x3900]) = STACK[0x36E0];
        STACK[0x39E8] = STACK[0x27F8];
        STACK[0x25A0] = v2883;
        STACK[0x3840] = STACK[0x3928];
        LODWORD(STACK[0x3A80]) = 64;
        return v894();
      case 0x44u:
        v87 = STACK[0x3A88] + STACK[0x3418];
        v88 = __CFADD__(STACK[0x3A88], STACK[0x3418]);
        if (v87 > 0xFFFFFFFFFFFFFFD2)
        {
          v88 = 1;
        }

        v4152 = !v88;
        v89 = 45;
        if (v4152)
        {
          v89 = 0;
        }

        v90 = v2888;
        v91 = v89 + v87;
        v92 = v2883;
        v93 = STACK[0x2B68];
        v94 = v89 + v87 + STACK[0x2B68] > 0xFFFFFFFFFFFFFFD2;
        STACK[0x3A98] = v91 + STACK[0x2B68];
        v95 = __CFADD__(v91, v93) || v94;
        LODWORD(STACK[0x3A90]) = v95;
        v96 = STACK[0x3A40] + STACK[0x3458];
        v97 = __CFADD__(STACK[0x3A40], STACK[0x3458]);
        if (v96 > 0xFFFFFFFFFFFFFFD0)
        {
          v97 = 1;
        }

        if (v97)
        {
          v98 = 47;
        }

        else
        {
          v98 = 0;
        }

        v99 = v2873;
        v100 = v98 + v96;
        v101 = STACK[0x2B48];
        v102 = v98 + v96 + STACK[0x2B48] > 0xFFFFFFFFFFFFFFD0;
        STACK[0x3A88] = v100 + STACK[0x2B48];
        v103 = __CFADD__(v100, v101) || v102;
        LODWORD(STACK[0x3A50]) = v103;
        v104 = STACK[0x3A58] + STACK[0x3448] > 0xFFFFFFFFFFFFFFDELL;
        v105 = STACK[0x3A58] + STACK[0x3448];
        if (__CFADD__(STACK[0x3A58], STACK[0x3448]))
        {
          v104 = 1;
        }

        if (v104)
        {
          v106 = 33;
        }

        else
        {
          v106 = 0;
        }

        v107 = v106 + v105;
        v108 = STACK[0x2B80];
        v109 = v106 + v105 + STACK[0x2B80] > 0xFFFFFFFFFFFFFFDELL;
        STACK[0x3A58] = v107 + STACK[0x2B80];
        v110 = __CFADD__(v107, v108) || v109;
        LODWORD(STACK[0x3A48]) = v110;
        v111 = STACK[0x3AA0] + STACK[0x3460] > 0xFFFFFFFFFFFFFFEELL;
        v112 = STACK[0x3AA0] + STACK[0x3460];
        if (__CFADD__(STACK[0x3AA0], STACK[0x3460]))
        {
          v111 = 1;
        }

        if (v111)
        {
          v113 = 17;
        }

        else
        {
          v113 = 0;
        }

        v114 = v113 + v112;
        v115 = STACK[0x2B78];
        v116 = v113 + v112 + STACK[0x2B78] > 0xFFFFFFFFFFFFFFEELL;
        STACK[0x3AA0] = v114 + STACK[0x2B78];
        if (__CFADD__(v114, v115))
        {
          v116 = 1;
        }

        v117 = v90 + STACK[0x3410] > 0xFFFFFFFFFFFFFFF0;
        v1886 = __CFADD__(v90, STACK[0x3410]);
        v118 = v90 + STACK[0x3410];
        if (v1886)
        {
          v117 = 1;
        }

        if (v117)
        {
          v119 = 15;
        }

        else
        {
          v119 = 0;
        }

        v120 = v119 + v118;
        v121 = STACK[0x2B88];
        v122 = v119 + v118 + STACK[0x2B88] > 0xFFFFFFFFFFFFFFF0;
        v123 = v120 + STACK[0x2B88];
        if (__CFADD__(v120, STACK[0x2B88]))
        {
          v122 = 1;
        }

        v124 = v92 + STACK[0x3428] > 0xFFFFFFFFFFFFFFF6;
        v1886 = __CFADD__(v92, STACK[0x3428]);
        v125 = v92 + STACK[0x3428];
        if (v1886)
        {
          v124 = 1;
        }

        if (v124)
        {
          v126 = 9;
        }

        else
        {
          v126 = 0;
        }

        v127 = v126 + v125;
        v128 = STACK[0x2B50];
        v129 = v126 + v125 + STACK[0x2B50] > 0xFFFFFFFFFFFFFFF6;
        v130 = v127 + STACK[0x2B50];
        if (__CFADD__(v127, STACK[0x2B50]))
        {
          v129 = 1;
        }

        v1886 = __CFADD__(v2870, STACK[0x3440]);
        v131 = v2870 + STACK[0x3440];
        LODWORD(v132) = v1886;
        if (v131 == -1)
        {
          v132 = 1;
        }

        else
        {
          v132 = v132;
        }

        v133 = v132 + v131;
        v134 = STACK[0x2B40];
        v135 = __CFADD__(v133, STACK[0x2B40]) || v133 + STACK[0x2B40] == -1;
        STACK[0x3478] = v135 + v133 + v134;
        v136 = STACK[0x3A70] + STACK[0x3450] > 0xFFFFFFFFFFFFFFD8;
        if (__CFADD__(STACK[0x3A70], STACK[0x3450]))
        {
          v136 = 1;
        }

        v137 = v99 + STACK[0x3438] > 0xFFFFFFFFFFFFFFFCLL;
        v138 = v99 + STACK[0x3438];
        if (__CFADD__(v99, STACK[0x3438]))
        {
          v137 = 1;
        }

        v139 = v2878 + STACK[0x3420];
        v140 = __CFADD__(v2878, STACK[0x3420]);
        if (v139 > 0xFFFFFFFFFFFFFFFALL)
        {
          v140 = 1;
        }

        if (v140)
        {
          v141 = 5;
        }

        else
        {
          v141 = 0;
        }

        v4152 = !v137;
        v142 = v141 + v139;
        if (v4152)
        {
          v143 = 0;
        }

        else
        {
          v143 = 3;
        }

        v144 = v143 + v138;
        v145 = STACK[0x3AE8] + STACK[0x3430];
        v146 = __CFADD__(STACK[0x3AE8], STACK[0x3430]);
        v4152 = !v136;
        v147 = 39;
        if (v4152)
        {
          v147 = 0;
        }

        v148 = v147 + STACK[0x3A70] + STACK[0x3450];
        v149 = v145 > 0xFFFFFFFFFFFFFFCALL || v146;
        v1886 = v134 >= v133;
        v150 = v134 - v133;
        v151 = !v1886;
        STACK[0x15E8] = v150 - v151;
        if (v149)
        {
          v152 = 53;
        }

        else
        {
          v152 = 0;
        }

        v153 = v152 + v145;
        v154 = STACK[0x2B38];
        v155 = -5;
        if (STACK[0x2B38] >= v142)
        {
          v155 = 0;
        }

        STACK[0x3480] = v155 + STACK[0x2B38] - v142;
        v1886 = v128 >= v127;
        v156 = v128 - v127;
        if (v1886)
        {
          v157 = 0;
        }

        else
        {
          v157 = -9;
        }

        STACK[0x3488] = v157 + v156;
        v158 = v142 + v154;
        v159 = __CFADD__(v142, v154);
        v160 = STACK[0x2B58];
        if (STACK[0x2B58] >= v144)
        {
          v161 = 0;
        }

        else
        {
          v161 = -3;
        }

        STACK[0x1600] = v161 + STACK[0x2B58] - v144;
        v1886 = v121 >= v120;
        v162 = v121 - v120;
        if (v1886)
        {
          v163 = 0;
        }

        else
        {
          v163 = -15;
        }

        STACK[0x1620] = v163 + v162;
        v164 = STACK[0x2B60];
        if (STACK[0x2B60] >= v148)
        {
          v165 = 0;
        }

        else
        {
          v165 = -39;
        }

        v166 = v165 + STACK[0x2B60] - v148;
        v1886 = v115 >= v114;
        v167 = v115 - v114;
        if (v1886)
        {
          v168 = 0;
        }

        else
        {
          v168 = -17;
        }

        v169 = v168 + v167;
        v1886 = v101 >= v100;
        v170 = v101 - v100;
        if (v1886)
        {
          v171 = 0;
        }

        else
        {
          v171 = -47;
        }

        v172 = v171 + v170;
        v173 = v144 + v160;
        v174 = __CFADD__(v144, v160);
        v1886 = v108 >= v107;
        v175 = v108 - v107;
        if (v1886)
        {
          v176 = 0;
        }

        else
        {
          v176 = -33;
        }

        v177 = v176 + v175;
        if (v93 >= v91)
        {
          v178 = 0;
        }

        else
        {
          v178 = -45;
        }

        v179 = v178 + v93 - v91;
        v180 = STACK[0x2B70];
        if (STACK[0x2B70] >= v153)
        {
          v181 = 0;
        }

        else
        {
          v181 = -53;
        }

        v182 = v181 + STACK[0x2B70] - v153;
        v183 = v158 > 0xFFFFFFFFFFFFFFFALL || v159;
        if (v173 > 0xFFFFFFFFFFFFFFFCLL || v174)
        {
          v185 = 3;
        }

        else
        {
          v185 = 0;
        }

        v186 = v185 + v173;
        if (v183)
        {
          v187 = 5;
        }

        else
        {
          v187 = 0;
        }

        v188 = v187 + v158;
        if (v129)
        {
          v189 = 9;
        }

        else
        {
          v189 = 0;
        }

        v190 = v189 + v130;
        if (v122)
        {
          v191 = 15;
        }

        else
        {
          v191 = 0;
        }

        v192 = v191 + v123;
        v193 = v148 + v164;
        v194 = __CFADD__(v148, v164);
        if (v116)
        {
          v195 = 17;
        }

        else
        {
          v195 = 0;
        }

        v196 = v195 + STACK[0x3AA0];
        v197 = v193 > 0xFFFFFFFFFFFFFFD8 || v194;
        if (LODWORD(STACK[0x3A48]))
        {
          v198 = 33;
        }

        else
        {
          v198 = 0;
        }

        v199 = v198 + STACK[0x3A58];
        v200 = v153 + v180;
        v201 = __CFADD__(v153, v180);
        if (LODWORD(STACK[0x3A50]))
        {
          v202 = 47;
        }

        else
        {
          v202 = 0;
        }

        v4152 = v197 == 0;
        v203 = v202 + STACK[0x3A88];
        if (v4152)
        {
          v204 = 0;
        }

        else
        {
          v204 = 39;
        }

        v205 = v204 + v193;
        if (LODWORD(STACK[0x3A90]))
        {
          v206 = 45;
        }

        else
        {
          v206 = 0;
        }

        v207 = v206 + STACK[0x3A98];
        if (v200 > 0xFFFFFFFFFFFFFFCALL || v201)
        {
          v209 = 53;
        }

        else
        {
          v209 = 0;
        }

        v210 = v209 + v200;
        v211 = STACK[0x3560];
        v212 = *(STACK[0x3AC0] + 8 * (LODWORD(STACK[0x3560]) - 5407));
        STACK[0x3828] = STACK[0x29C0];
        STACK[0x3830] = STACK[0x29C8];
        STACK[0x3090] = STACK[0x28E0];
        STACK[0x3098] = STACK[0x28E8];
        STACK[0x3820] = STACK[0x29D0];
        STACK[0x3088] = STACK[0x28F0];
        STACK[0x30A0] = STACK[0x2990];
        STACK[0x30C0] = STACK[0x2BC8];
        STACK[0x3080] = STACK[0x2B90];
        STACK[0x3078] = STACK[0x29D8];
        STACK[0x3810] = STACK[0x2AF8];
        STACK[0x3070] = STACK[0x2998];
        STACK[0x3068] = STACK[0x29F8];
        STACK[0x30B0] = STACK[0x2BD0];
        STACK[0x30B8] = STACK[0x29E0];
        STACK[0x3060] = STACK[0x2A00];
        STACK[0x3818] = STACK[0x2BD8];
        STACK[0x3050] = STACK[0x28F8];
        STACK[0x3040] = STACK[0x2900];
        STACK[0x30A8] = STACK[0x2B00];
        STACK[0x3058] = STACK[0x2A08];
        STACK[0x3038] = STACK[0x2908];
        STACK[0x3030] = STACK[0x29E8];
        STACK[0x3938] = STACK[0x2B08];
        STACK[0x3020] = STACK[0x2A10];
        STACK[0x3028] = STACK[0x2A18];
        STACK[0x3018] = STACK[0x29A0];
        STACK[0x3010] = STACK[0x2910];
        STACK[0x3510] = STACK[0x3AD0];
        STACK[0x3048] = STACK[0x2B10];
        STACK[0x3008] = STACK[0x2B98];
        STACK[0x3500] = STACK[0x3AC8];
        STACK[0x3508] = STACK[0x3558];
        STACK[0x3000] = STACK[0x2918];
        STACK[0x2FF8] = STACK[0x2920];
        STACK[0x3AC8] = STACK[0x2A20];
        STACK[0x3808] = STACK[0x2BE0];
        STACK[0x3800] = STACK[0x2B18];
        STACK[0x2FE8] = STACK[0x2BA0];
        STACK[0x2FE0] = STACK[0x2928];
        STACK[0x30D0] = STACK[0x2930];
        STACK[0x2FF0] = STACK[0x2BA8];
        STACK[0x2FD8] = STACK[0x2938];
        STACK[0x34F8] = STACK[0x39A0];
        STACK[0x2FB8] = STACK[0x2940];
        STACK[0x34F0] = STACK[0x3998];
        STACK[0x2FC8] = STACK[0x2948];
        STACK[0x2FA8] = STACK[0x2A28];
        STACK[0x2FB0] = STACK[0x2BB0];
        STACK[0x2FC0] = STACK[0x2B20];
        STACK[0x2FA0] = STACK[0x2950];
        STACK[0x3530] = STACK[0x39A8];
        STACK[0x34E8] = STACK[0x3A78];
        STACK[0x30C8] = STACK[0x2958];
        STACK[0x2FD0] = STACK[0x29F0];
        STACK[0x2F90] = STACK[0x29A8];
        STACK[0x34E0] = STACK[0x3A80];
        STACK[0x2F88] = STACK[0x2A30];
        STACK[0x2F80] = STACK[0x2960];
        STACK[0x2F98] = STACK[0x2BE8];
        STACK[0x3958] = STACK[0x2BF0];
        LODWORD(STACK[0x3900]) = STACK[0x36E0];
        STACK[0x2F70] = STACK[0x29B0];
        STACK[0x37F0] = STACK[0x2B28];
        STACK[0x2F68] = STACK[0x2BB8];
        STACK[0x2F60] = STACK[0x2968];
        STACK[0x3AD0] = STACK[0x2A38];
        STACK[0x2F50] = STACK[0x2970];
        STACK[0x2F48] = STACK[0x2978];
        STACK[0x37E8] = STACK[0x2B30];
        STACK[0x2F58] = STACK[0x2BC0];
        STACK[0x2F40] = STACK[0x2980];
        STACK[0x2F78] = STACK[0x2BF8];
        STACK[0x2F38] = STACK[0x2A40];
        STACK[0x2F30] = STACK[0x2988];
        LODWORD(STACK[0x3A28]) = 69;
        LODWORD(STACK[0x37F8]) = v211;
        STACK[0x3A20] = v196;
        STACK[0xB50] = v196;
        STACK[0x920] = STACK[0x3488];
        STACK[0x3898] = v169;
        STACK[0x8F0] = v169;
        STACK[0x3320] = v186;
        STACK[0xAF0] = v186;
        STACK[0x3468] = STACK[0x1600];
        STACK[0x3A40] = v203;
        STACK[0xAE8] = v203;
        STACK[0xC80] = v190;
        STACK[0x3330] = v190;
        STACK[0xC50] = v192;
        STACK[0x3340] = v192;
        STACK[0x9E0] = v182;
        STACK[0x3A70] = v182;
        STACK[0x3370] = STACK[0x15E8];
        STACK[0x3470] = v179;
        STACK[0x898] = v179;
        STACK[0xA38] = v166;
        STACK[0x3A88] = v166;
        STACK[0xAB0] = STACK[0x3478];
        STACK[0xC28] = v199;
        STACK[0x3318] = v199;
        STACK[0xC60] = v210;
        STACK[0x3A30] = v210;
        STACK[0xB88] = v188;
        STACK[0x3328] = v188;
        STACK[0x3A38] = v205;
        STACK[0xA88] = v205;
        STACK[0x3368] = STACK[0x1620];
        STACK[0x9F0] = v177;
        STACK[0x3360] = v177;
        STACK[0x3A58] = v172;
        STACK[0x950] = v172;
        STACK[0x960] = STACK[0x3480];
        STACK[0x3338] = v207;
        STACK[0xB70] = v207;
        return v212();
      case 0x48u:
        v783 = STACK[0x3A70] + STACK[0xFF0] > 0xFFFFFFFFFFFFFFD8;
        if (__CFADD__(STACK[0x3A70], STACK[0xFF0]))
        {
          v783 = 1;
        }

        v784 = __CFADD__(STACK[0x3A88], STACK[0x10A0]) || STACK[0x3A88] + STACK[0x10A0] > 0xFFFFFFFFFFFFFFD2;
        v785 = __CFADD__(v2888, STACK[0xFD8]) || v2888 + STACK[0xFD8] > 0xFFFFFFFFFFFFFFF0;
        v786 = __CFADD__(v2883, STACK[0xFD0]) || v2883 + STACK[0xFD0] > 0xFFFFFFFFFFFFFFF6;
        v787 = __CFADD__(v2873, STACK[0x1038]) || v2873 + STACK[0x1038] > 0xFFFFFFFFFFFFFFFCLL;
        v788 = v2870 + STACK[0x10B0];
        LODWORD(v789) = __CFADD__(v2870, STACK[0x10B0]);
        v790 = STACK[0x3A58] + STACK[0x1008];
        v791 = __CFADD__(STACK[0x3A58], STACK[0x1008]);
        v792 = v2878 + STACK[0x1010];
        v793 = __CFADD__(v2878, STACK[0x1010]);
        if (v788 == -1)
        {
          v789 = 1;
        }

        else
        {
          v789 = v789;
        }

        if (v787)
        {
          v794 = 3;
        }

        else
        {
          v794 = 0;
        }

        v795 = v794 + v2873 + STACK[0x1038];
        if (v792 > (LODWORD(STACK[0x3560]) ^ 0xFFFFFFFFFFFFB28ELL) || v793)
        {
          v797 = 5;
        }

        else
        {
          v797 = 0;
        }

        v798 = v789 + v788;
        v799 = v797 + v792;
        if (v786)
        {
          v800 = 9;
        }

        else
        {
          v800 = 0;
        }

        v801 = STACK[0x3AA0] + STACK[0x1080];
        v802 = __CFADD__(STACK[0x3AA0], STACK[0x1080]);
        v803 = v800 + v2883 + STACK[0xFD0];
        if (v801 > 0xFFFFFFFFFFFFFFEELL || v802)
        {
          v805 = 17;
        }

        else
        {
          v805 = 0;
        }

        if (v785)
        {
          v806 = 15;
        }

        else
        {
          v806 = 0;
        }

        v807 = STACK[0x3A40] + STACK[0x1020];
        v808 = __CFADD__(STACK[0x3A40], STACK[0x1020]);
        v809 = v805 + v801;
        v810 = v790 > 0xFFFFFFFFFFFFFFDELL || v791;
        v4152 = v810 == 0;
        v811 = 33;
        if (v4152)
        {
          v811 = 0;
        }

        v812 = v806 + v2888 + STACK[0xFD8];
        v813 = v807 > 0xFFFFFFFFFFFFFFD0 || v808;
        v814 = v811 + v790;
        v4152 = !v784;
        v815 = 45;
        if (v4152)
        {
          v815 = 0;
        }

        v816 = v815 + STACK[0x3A88] + STACK[0x10A0];
        v817 = STACK[0x3AE8] + STACK[0x1098];
        v818 = __CFADD__(STACK[0x3AE8], STACK[0x1098]);
        if (v783)
        {
          v819 = 39;
        }

        else
        {
          v819 = 0;
        }

        if (v813)
        {
          v820 = 47;
        }

        else
        {
          v820 = 0;
        }

        v821 = v820 + v807;
        v822 = v819 + STACK[0x3A70] + STACK[0xFF0];
        if (v817 > 0xFFFFFFFFFFFFFFCALL || v818)
        {
          v824 = 53;
        }

        else
        {
          v824 = 0;
        }

        v825 = *(STACK[0x3AC0] + 8 * (LODWORD(STACK[0x3560]) - 2331));
        STACK[0x36F0] = STACK[0x1AB8];
        STACK[0x7F0] = v824 + v817;
        STACK[0x840] = v795;
        STACK[0x828] = v821;
        STACK[0x3AA0] = v821;
        STACK[0x37A0] = STACK[0x1AD0];
        STACK[0x3980] = STACK[0x1AA0];
        STACK[0x36C0] = STACK[0x1AD8];
        STACK[0x820] = v816;
        STACK[0x36C8] = v816;
        STACK[0x37E0] = STACK[0x1AB0];
        STACK[0x36D0] = v822;
        STACK[0x7E0] = v822;
        STACK[0x7F8] = v799;
        STACK[0x3790] = v799;
        STACK[0x3978] = STACK[0x1A98];
        STACK[0x818] = v803;
        STACK[0x7C8] = v814;
        STACK[0x3AE8] = v809;
        STACK[0x7C0] = v809;
        STACK[0x7A8] = v812;
        STACK[0x7A0] = v798;
        STACK[0x3A38] = STACK[0x1AA8];
        return v825();
      case 0x49u:
        v453 = STACK[0x3AE8] + STACK[0xFC0] > 0xFFFFFFFFFFFFFFCALL;
        v454 = STACK[0x3AE8] + STACK[0xFC0];
        if (__CFADD__(STACK[0x3AE8], STACK[0xFC0]))
        {
          v453 = 1;
        }

        v455 = STACK[0x3A58] + STACK[0x1048];
        v456 = __CFADD__(STACK[0x3A58], STACK[0x1048]) || STACK[0x3A58] + STACK[0x1048] > 0xFFFFFFFFFFFFFFDELL;
        v457 = STACK[0x3A70] + STACK[0xFE0] > 0xFFFFFFFFFFFFFFD8;
        v458 = STACK[0x3A70] + STACK[0xFE0];
        if (__CFADD__(STACK[0x3A70], STACK[0xFE0]))
        {
          v457 = 1;
        }

        v459 = v2878 + STACK[0xFF8] > 0xFFFFFFFFFFFFFFFALL;
        v460 = v2878 + STACK[0xFF8];
        if (__CFADD__(v2878, STACK[0xFF8]))
        {
          v459 = 1;
        }

        v461 = v2873 + STACK[0x1000] > 0xFFFFFFFFFFFFFFFCLL;
        v462 = v2873 + STACK[0x1000];
        if (__CFADD__(v2873, STACK[0x1000]))
        {
          v461 = 1;
        }

        v463 = STACK[0x3AA0] + STACK[0x10B8];
        v464 = __CFADD__(STACK[0x3AA0], STACK[0x10B8]);
        v465 = v2870 + STACK[0x10A8];
        LODWORD(v466) = __CFADD__(v2870, STACK[0x10A8]);
        if (v465 == -1)
        {
          v466 = 1;
        }

        else
        {
          v466 = v466;
        }

        STACK[0x3510] = v466 + v465;
        if (v461)
        {
          v467 = 3;
        }

        else
        {
          v467 = 0;
        }

        STACK[0x34E8] = v467 + v462;
        v468 = v2883 + STACK[0x1090];
        v469 = __CFADD__(v2883, STACK[0x1090]);
        v470 = v2888 + STACK[0xFC8];
        v471 = __CFADD__(v2888, STACK[0xFC8]);
        if (v470 > 0xFFFFFFFFFFFFFFF0)
        {
          v471 = 1;
        }

        if (v468 > 0xFFFFFFFFFFFFFFF6)
        {
          v469 = 1;
        }

        if (v459)
        {
          v472 = 5;
        }

        else
        {
          v472 = 0;
        }

        STACK[0xCA8] = v472 + v460;
        if (v469)
        {
          v473 = 9;
        }

        else
        {
          v473 = 0;
        }

        STACK[0x3500] = v473 + v468;
        v474 = v463 > 0xFFFFFFFFFFFFFFEELL || v464;
        if (v471)
        {
          v475 = 15;
        }

        else
        {
          v475 = 0;
        }

        STACK[0x850] = v475 + v470;
        v4152 = !v456;
        v476 = 33;
        if (v4152)
        {
          v476 = 0;
        }

        STACK[0x3508] = v476 + v455;
        v477 = STACK[0x3A40] + STACK[0xFE8];
        v478 = __CFADD__(STACK[0x3A40], STACK[0xFE8]);
        v4152 = v474 == 0;
        v479 = 17;
        if (v4152)
        {
          v479 = 0;
        }

        STACK[0x34E0] = v479 + v463;
        v480 = STACK[0x3A88] + STACK[0x1070];
        v481 = __CFADD__(STACK[0x3A88], STACK[0x1070]);
        v4152 = !v457;
        v482 = 39;
        if (v4152)
        {
          v482 = 0;
        }

        STACK[0x3530] = v482 + v458;
        v483 = v477 > 0xFFFFFFFFFFFFFFD0 || v478;
        v484 = v480 > 0xFFFFFFFFFFFFFFD2 || v481;
        v4152 = v483 == 0;
        v485 = 47;
        if (v4152)
        {
          v485 = 0;
        }

        STACK[0x34F0] = v485 + v477;
        v486 = 45;
        if (!v484)
        {
          v486 = 0;
        }

        v4152 = !v453;
        v487 = 53;
        if (v4152)
        {
          v487 = 0;
        }

        STACK[0x34F8] = v487 + v454;
        v488 = *(STACK[0x3AC0] + 8 * (LODWORD(STACK[0x3560]) + 3765));
        STACK[0xCB0] = v486 + v480;
        STACK[0x39D8] = STACK[0x2780];
        STACK[0x3888] = STACK[0x3AD8];
        STACK[0x3880] = STACK[0x3AA8];
        STACK[0x3AD8] = STACK[0x2810];
        STACK[0x39D0] = STACK[0x2768];
        STACK[0x3878] = STACK[0x3AB8];
        STACK[0x3870] = STACK[0x3940];
        STACK[0x3868] = STACK[0x3948];
        STACK[0x3AB8] = STACK[0x2818];
        STACK[0x39F0] = STACK[0x27E0];
        STACK[0x3860] = STACK[0x3AB0];
        STACK[0x3858] = STACK[0x3950];
        STACK[0x3AA8] = STACK[0x27E8];
        STACK[0x3850] = STACK[0x3910];
        STACK[0x3848] = STACK[0x3918];
        STACK[0x3838] = STACK[0x3920];
        STACK[0x3AB0] = STACK[0x27F0];
        LODWORD(STACK[0x3900]) = STACK[0x36E0];
        STACK[0x39E8] = STACK[0x27F8];
        STACK[0x3840] = STACK[0x3928];
        LODWORD(STACK[0x3A80]) = 74;
        STACK[0x3990] = STACK[0x16D8];
        STACK[0x3588] = STACK[0x7A8];
        STACK[0x3988] = STACK[0x1718];
        STACK[0x39E0] = STACK[0x16C0];
        STACK[0x3580] = STACK[0x840];
        STACK[0x3590] = STACK[0x7E0];
        STACK[0x32B0] = STACK[0x16A8];
        STACK[0x3698] = STACK[0x16B0];
        STACK[0x3570] = STACK[0x820];
        STACK[0x3380] = STACK[0x7A0];
        STACK[0x3310] = STACK[0x16F8];
        STACK[0x3578] = STACK[0x7F8];
        STACK[0x3A08] = STACK[0x7C0];
        STACK[0x3358] = STACK[0x1708];
        STACK[0x3208] = STACK[0x7C8];
        STACK[0x3210] = STACK[0x818];
        STACK[0x3350] = STACK[0x1700];
        STACK[0x3A00] = STACK[0x7F0];
        STACK[0x3388] = STACK[0x16B8];
        STACK[0x3348] = STACK[0x1748];
        STACK[0x39F8] = STACK[0x828];
        STACK[0x3378] = STACK[0x1710];
        return v488();
      case 0x4Du:
        v896 = STACK[0x3AE8] + STACK[0xAD8] > 0xFFFFFFFFFFFFFFCALL;
        if (__CFADD__(STACK[0x3AE8], STACK[0xAD8]))
        {
          v896 = 1;
        }

        v897 = STACK[0x3A88] + STACK[0xB60] > 0xFFFFFFFFFFFFFFD2;
        if (__CFADD__(STACK[0x3A88], STACK[0xB60]))
        {
          v897 = 1;
        }

        v898 = __CFADD__(STACK[0x3AA0], STACK[0xC58]) || STACK[0x3AA0] + STACK[0xC58] > 0xFFFFFFFFFFFFFFEELL;
        v899 = v2870 + STACK[0xC68];
        v900 = __CFADD__(v2870, STACK[0xC68]);
        v901 = v2878 + STACK[0xBB0];
        v902 = __CFADD__(v2878, STACK[0xBB0]);
        v903 = v899 == -1 || v900;
        v904 = v2873 + STACK[0xB20];
        v905 = __CFADD__(v2873, STACK[0xB20]);
        v906 = v2883 + STACK[0xBB8];
        v907 = __CFADD__(v2883, STACK[0xBB8]);
        v908 = v904 > 0xFFFFFFFFFFFFFFFCLL || v905;
        if (v901 > 0xFFFFFFFFFFFFFFFALL)
        {
          v902 = 1;
        }

        v909 = STACK[0x3A70] + STACK[0xB98];
        v910 = __CFADD__(STACK[0x3A70], STACK[0xB98]);
        if (v908)
        {
          v911 = 3;
        }

        else
        {
          v911 = 0;
        }

        v912 = v2888 + STACK[0xB68];
        v913 = v903 + v899;
        v914 = __CFADD__(v2888, STACK[0xB68]);
        if (v912 > 0xFFFFFFFFFFFFFFF0)
        {
          v914 = 1;
        }

        v915 = v906 > 0xFFFFFFFFFFFFFFF6 || v907;
        if (v914)
        {
          v916 = 15;
        }

        else
        {
          v916 = 0;
        }

        v917 = v916 + v912;
        v918 = STACK[0x3A58] + STACK[0xC70];
        v919 = v911 + v904;
        v920 = __CFADD__(STACK[0x3A58], STACK[0xC70]);
        if (v918 > 0xFFFFFFFFFFFFFFDELL)
        {
          v920 = 1;
        }

        if (v915)
        {
          v921 = 9;
        }

        else
        {
          v921 = 0;
        }

        v4152 = !v920;
        v922 = 33;
        if (v4152)
        {
          v922 = 0;
        }

        if (v902)
        {
          v923 = 5;
        }

        else
        {
          v923 = 0;
        }

        v924 = v922 + v918;
        v925 = v923 + v901;
        if (v898)
        {
          v926 = 17;
        }

        else
        {
          v926 = 0;
        }

        v927 = v921 + v906;
        v928 = v909 > 0xFFFFFFFFFFFFFFD8 || v910;
        v929 = STACK[0x3A40] + STACK[0xAC0];
        v930 = v926 + STACK[0x3AA0] + STACK[0xC58];
        v931 = __CFADD__(STACK[0x3A40], STACK[0xAC0]);
        if (v929 > 0xFFFFFFFFFFFFFFD0)
        {
          v931 = 1;
        }

        v4152 = !v897;
        v932 = 45;
        if (v4152)
        {
          v932 = 0;
        }

        v933 = v932 + STACK[0x3A88] + STACK[0xB60];
        if (v928)
        {
          v934 = 39;
        }

        else
        {
          v934 = 0;
        }

        if (v931)
        {
          v935 = 47;
        }

        else
        {
          v935 = 0;
        }

        v936 = v934 + v909;
        v937 = v935 + v929;
        if (v896)
        {
          v938 = 53;
        }

        else
        {
          v938 = 0;
        }

        v939 = v938 + STACK[0x3AE8] + STACK[0xAD8];
        v940 = STACK[0x76C];
        if (LODWORD(STACK[0x76C]) == 101)
        {
          v941 = *(STACK[0x3AC0] + 8 * (LODWORD(STACK[0x3560]) - 2331));
          STACK[0x2640] = v927;
          STACK[0x2628] = v939;
          STACK[0x2638] = v930;
          STACK[0x3258] = v933;
          STACK[0x2620] = v925;
          STACK[0x3250] = v917;
          STACK[0x3240] = v930;
          STACK[0x3238] = v937;
          STACK[0x3300] = v925;
          STACK[0x32F8] = v925;
          STACK[0x32F0] = v930;
          STACK[0x32E8] = v939;
          STACK[0x2690] = v919;
          STACK[0x3230] = v924;
          STACK[0x32E0] = v924;
          STACK[0x2170] = v933;
          STACK[0x3228] = v917;
          STACK[0x2178] = v917;
          STACK[0x3220] = v933;
          STACK[0x3218] = v936;
          STACK[0x2698] = v936;
          STACK[0x26A0] = v937;
          STACK[0x32D0] = v919;
          STACK[0x2180] = v924;
          STACK[0x32C8] = v936;
          STACK[0x32C0] = v939;
          STACK[0x3100] = v937;
          STACK[0x30F8] = v919;
          STACK[0x3248] = v927;
          STACK[0x32B8] = v927;
          STACK[0x2680] = v913;
          STACK[0x32D8] = v913;
          STACK[0x30F0] = v913;
          LODWORD(STACK[0x30EC]) = 102;
          v942 = STACK[0x1108];
          STACK[0x3150] = STACK[0x1108];
          v943 = STACK[0x10C8];
          STACK[0x32A8] = STACK[0x10C8];
          v944 = STACK[0x1378];
          STACK[0x3148] = STACK[0x1378];
          v945 = STACK[0x13F0];
          STACK[0x25F8] = STACK[0x13F0];
          v946 = STACK[0x3A78];
          STACK[0x3200] = STACK[0x3A78];
          STACK[0x31F8] = v946;
          v947 = STACK[0x1370];
          STACK[0x2600] = STACK[0x1370];
          v948 = STACK[0xCA8];
          STACK[0x2608] = STACK[0xCA8];
          STACK[0x32A0] = v943;
          v949 = STACK[0x39A8];
          STACK[0x2610] = STACK[0x39A8];
          v950 = STACK[0x13A0];
          STACK[0x2618] = STACK[0x13A0];
          v951 = STACK[0x10E0];
          STACK[0x3140] = STACK[0x10E0];
          v952 = STACK[0x850];
          STACK[0x31F0] = STACK[0x850];
          v953 = STACK[0x10F8];
          STACK[0x3298] = STACK[0x10F8];
          STACK[0x31E8] = v949;
          v954 = STACK[0x3A80];
          STACK[0x31E0] = STACK[0x3A80];
          STACK[0x2630] = v944;
          v955 = STACK[0x39A0];
          STACK[0x31D8] = STACK[0x39A0];
          STACK[0x3138] = v945;
          STACK[0x3290] = v950;
          STACK[0x31D0] = v948;
          v956 = STACK[0x3558];
          STACK[0x2648] = STACK[0x3558];
          v957 = STACK[0x10D8];
          STACK[0x2650] = STACK[0x10D8];
          STACK[0x3130] = v957;
          v958 = STACK[0x3AD0];
          STACK[0x2658] = STACK[0x3AD0];
          STACK[0x2660] = v953;
          STACK[0x2168] = v942;
          STACK[0x3128] = v953;
          v959 = STACK[0xCB0];
          STACK[0x2668] = STACK[0xCB0];
          v960 = STACK[0x10D0];
          STACK[0x3288] = STACK[0x10D0];
          STACK[0x2138] = v955;
          v961 = STACK[0x3998];
          STACK[0x2688] = STACK[0x3998];
          STACK[0x31C8] = v949;
          STACK[0x2140] = v946;
          STACK[0x31C0] = v952;
          STACK[0x3280] = v942;
          STACK[0x2670] = v943;
          STACK[0x2188] = v954;
          STACK[0x31B8] = v955;
          STACK[0x31B0] = v948;
          STACK[0x31A8] = v954;
          STACK[0x3278] = v960;
          STACK[0x2678] = v951;
          STACK[0x2148] = v952;
          STACK[0x31A0] = v959;
          STACK[0x3270] = v947;
          v962 = STACK[0x1100];
          STACK[0x3268] = STACK[0x1100];
          v963 = STACK[0x3AC8];
          STACK[0x3198] = STACK[0x3AC8];
          STACK[0x3120] = v962;
          STACK[0x3118] = v945;
          STACK[0x3190] = v961;
          STACK[0x2150] = v963;
          STACK[0x30E0] = v944;
          STACK[0x30D8] = v957;
          STACK[0x3110] = v947;
          STACK[0x3260] = v951;
          STACK[0x3108] = v950;
          STACK[0x3188] = v958;
          STACK[0x2158] = v962;
          STACK[0x3180] = v956;
          STACK[0x3178] = v959;
          STACK[0x3170] = v958;
          STACK[0x3168] = v956;
          STACK[0x3160] = v963;
          STACK[0x2160] = v960;
          STACK[0x3158] = v961;
          STACK[0x36F0] = v947;
          STACK[0x3AA0] = v944;
          STACK[0x37A0] = v951;
          STACK[0x3980] = v962;
          STACK[0x36C0] = v945;
          STACK[0x36C8] = v957;
          STACK[0x36D0] = v951;
          STACK[0x37E0] = v953;
          STACK[0x3790] = v960;
          STACK[0x3978] = v942;
          STACK[0x3AE8] = v942;
          STACK[0x3A38] = v960;
          return v941(v947, v950, v947, v962, v953, v945);
        }

        v964 = v937;
        v965 = STACK[0x3AC0];
        v966 = STACK[0x3AE0];
        v967 = STACK[0x3560];
        v968 = STACK[0x38A0];
        v969 = STACK[0x3A78];
        v970 = STACK[0x39A0];
        v971 = STACK[0x3558];
        if (v940 > 85)
        {
          v1044 = STACK[0x3AD0];
          v973 = STACK[0x39A8];
          v1045 = STACK[0x3A80];
          if (v940 <= 87)
          {
            if (v940 == 86)
            {
              v1162 = v967 - 12809;
              v1163 = (STACK[0x38A0] & 2) == 0;
              v1164 = STACK[0x15A8];
              STACK[0x3A08] = v917;
              if (v1163)
              {
                v1164 = v917;
              }

              STACK[0x3550] = v1164;
              v1165 = STACK[0x1108];
              v1166 = STACK[0x2868];
              if (v1163)
              {
                v1166 = STACK[0x1108];
              }

              STACK[0x33F8] = v1166;
              v1167 = STACK[0x1580];
              STACK[0x3988] = v936;
              if (v1163)
              {
                v1167 = v936;
              }

              STACK[0x3588] = v1167;
              v1168 = STACK[0x23B0];
              if (v1163)
              {
                v1168 = v971;
              }

              STACK[0x3408] = v1168;
              v1169 = STACK[0x23A8];
              if (v1163)
              {
                v1169 = v969;
              }

              STACK[0x3518] = v1169;
              v1170 = STACK[0x1570];
              if (v1163)
              {
                v1170 = v933;
              }

              STACK[0x33D8] = v1170;
              v1171 = STACK[0x23B8];
              v1172 = STACK[0x3998];
              if (v1163)
              {
                v1171 = STACK[0x3998];
              }

              STACK[0x33E8] = v1171;
              v1173 = v969;
              v1174 = STACK[0x10E0];
              v1175 = STACK[0x2870];
              if (v1163)
              {
                v1175 = STACK[0x10E0];
              }

              STACK[0x33F0] = v1175;
              v1176 = STACK[0x1598];
              if (v1163)
              {
                v1176 = v927;
              }

              STACK[0x3590] = v1176;
              v1177 = v965;
              v1178 = STACK[0x13A0];
              v1179 = STACK[0x2888];
              if (v1163)
              {
                v1179 = STACK[0x13A0];
              }

              STACK[0x33E0] = v1179;
              v1180 = STACK[0x15B0];
              STACK[0x3A00] = v964;
              if (v1163)
              {
                v1180 = v964;
              }

              STACK[0x3578] = v1180;
              v1181 = STACK[0x1568];
              if (v1163)
              {
                v1181 = v925;
              }

              STACK[0x33D0] = v1181;
              v1182 = STACK[0x1560];
              if (v1163)
              {
                v1182 = v939;
              }

              STACK[0x3698] = v1182;
              v1183 = STACK[0x1578];
              if (v1163)
              {
                v1183 = v930;
              }

              STACK[0x3570] = v1183;
              v1184 = STACK[0x23A0];
              if (v1163)
              {
                v1184 = v973;
              }

              STACK[0x33C8] = v1184;
              v1185 = STACK[0x23D0];
              if (v1163)
              {
                v1185 = v1044;
              }

              STACK[0x33C0] = v1185;
              v1186 = STACK[0x1590];
              if (v1163)
              {
                v1186 = v919;
              }

              STACK[0x3568] = v1186;
              v1187 = STACK[0x1100];
              v1188 = STACK[0x2880];
              if (v1163)
              {
                v1188 = STACK[0x1100];
              }

              STACK[0x33B0] = v1188;
              STACK[0x39F8] = v919;
              v1189 = STACK[0x1370];
              v1190 = STACK[0x28B0];
              if (v1163)
              {
                v1190 = STACK[0x1370];
              }

              STACK[0x33A0] = v1190;
              v1191 = STACK[0x1588];
              if (v1163)
              {
                v1191 = v924;
              }

              STACK[0x33A8] = v1191;
              v1192 = STACK[0x2398];
              v1193 = STACK[0x3AC8];
              if (v1163)
              {
                v1192 = STACK[0x3AC8];
              }

              STACK[0x3398] = v1192;
              v1194 = STACK[0x10D8];
              if (v1163)
              {
                v1195 = STACK[0x10D8];
              }

              else
              {
                v1195 = STACK[0x2898];
              }

              STACK[0x3390] = v1195;
              v1196 = STACK[0x850];
              if (v1163)
              {
                v1197 = STACK[0x850];
              }

              else
              {
                v1197 = STACK[0x2380];
              }

              STACK[0x3388] = v1197;
              if (v1163)
              {
                v1198 = v1045;
              }

              else
              {
                v1198 = STACK[0x23C0];
              }

              STACK[0x3378] = v1198;
              if (v1163)
              {
                v1199 = 88;
              }

              else
              {
                v1199 = 87;
              }

              LODWORD(STACK[0x3400]) = v1199;
              v1200 = STACK[0x10D0];
              if (v1163)
              {
                v1201 = STACK[0x10D0];
              }

              else
              {
                v1201 = STACK[0x28A0];
              }

              STACK[0x3380] = v1201;
              v1202 = v973;
              v1203 = STACK[0x13F0];
              if (v1163)
              {
                v1204 = STACK[0x13F0];
              }

              else
              {
                v1204 = STACK[0x2878];
              }

              STACK[0x3350] = v1204;
              v1205 = v970;
              v1206 = STACK[0xCA8];
              if (v1163)
              {
                v1207 = STACK[0xCA8];
              }

              else
              {
                v1207 = STACK[0x23C8];
              }

              STACK[0x3358] = v1207;
              v1208 = STACK[0x10F8];
              if (v1163)
              {
                v1209 = STACK[0x10F8];
              }

              else
              {
                v1209 = STACK[0x2890];
              }

              STACK[0x3348] = v1209;
              STACK[0x3AE8] = *(v1177 + 8 * v1162);
              v1210 = STACK[0xCB0];
              v1211 = v1044;
              if (v1163)
              {
                v1212 = STACK[0xCB0];
              }

              else
              {
                v1212 = STACK[0x2390];
              }

              STACK[0x3310] = v1212;
              if (v1163)
              {
                v1213 = v1205;
              }

              else
              {
                v1213 = STACK[0x2388];
              }

              STACK[0x32B0] = v1213;
              v1214 = STACK[0x10C8];
              v1215 = v1045;
              if (v1163)
              {
                v1216 = STACK[0x10C8];
              }

              else
              {
                v1216 = STACK[0x28B8];
              }

              STACK[0x3208] = v1216;
              if (v1163)
              {
                v1217 = v913;
              }

              else
              {
                v1217 = STACK[0x15A0];
              }

              STACK[0x790] = v1217;
              v1218 = STACK[0x1378];
              v1219 = v930;
              v1220 = STACK[0x28A8];
              if (v1163)
              {
                v1220 = STACK[0x1378];
              }

              STACK[0x778] = v1220;
              STACK[0x2848] = v1189;
              STACK[0x2840] = v1203;
              STACK[0x3370] = v1189;
              STACK[0x2838] = v1178;
              STACK[0x28C0] = v1211;
              STACK[0x3A58] = v1218;
              STACK[0x29B8] = v1193;
              STACK[0x3540] = v1202;
              STACK[0x28D8] = v1210;
              STACK[0x3488] = v1208;
              STACK[0x2830] = v1187;
              STACK[0x3368] = v1203;
              STACK[0x3898] = v1165;
              STACK[0x3528] = v1205;
              STACK[0x3548] = v1172;
              STACK[0x2828] = v1194;
              STACK[0x3520] = v1206;
              STACK[0x3480] = v1200;
              STACK[0x3510] = v1211;
              STACK[0x2850] = v1174;
              STACK[0x3580] = v913;
              STACK[0x28D0] = v1206;
              STACK[0x28C8] = v1196;
              STACK[0x3500] = v1193;
              v1221 = STACK[0x3558];
              STACK[0x3508] = STACK[0x3558];
              STACK[0x3A88] = v1174;
              STACK[0x2860] = v1208;
              STACK[0x3938] = v933;
              STACK[0x2808] = v933;
              STACK[0x3538] = v1210;
              STACK[0x36A0] = v1200;
              STACK[0x39E8] = v924;
              STACK[0x39C0] = v924;
              STACK[0x3470] = v1194;
              STACK[0x2820] = v1218;
              STACK[0x34F8] = v1205;
              STACK[0x38F8] = v939;
              STACK[0x3958] = v925;
              STACK[0x2800] = v925;
              STACK[0x34F0] = v1172;
              STACK[0x3360] = v1187;
              STACK[0x36A8] = STACK[0x3A08];
              STACK[0x2858] = v1165;
              STACK[0x3530] = v1202;
              STACK[0x34E8] = v1173;
              STACK[0x36F8] = v1221;
              STACK[0x3210] = v1215;
              STACK[0x34E0] = v1215;
              STACK[0x36B0] = v927;
              STACK[0x3A70] = v1214;
              STACK[0x788] = v1173;
              STACK[0x3308] = v1214;
              STACK[0x37A8] = STACK[0x39F8];
              STACK[0x780] = v1196;
              STACK[0x3798] = STACK[0x3988];
              STACK[0x3468] = v1178;
              STACK[0x36D8] = STACK[0x3A00];
              STACK[0x39E0] = v1219;
              STACK[0x36B8] = v1219;
              STACK[0x39F0] = v913;
              STACK[0x3990] = v939;
              return (STACK[0x3AE8])();
            }

            else
            {
              LODWORD(STACK[0x3400]) = 88;
              v1046 = v913;
              STACK[0x39F0] = v913;
              v1047 = STACK[0x1370];
              STACK[0x2848] = STACK[0x1370];
              v1048 = STACK[0x13F0];
              STACK[0x2840] = STACK[0x13F0];
              STACK[0x3370] = v1047;
              v1049 = STACK[0x13A0];
              STACK[0x2838] = STACK[0x13A0];
              v1050 = v1049;
              STACK[0x13A0] = v1049;
              v1051 = v971;
              v1052 = STACK[0x3AD0];
              STACK[0x28C0] = STACK[0x3AD0];
              v1053 = v973;
              v1054 = STACK[0x1378];
              STACK[0x3A58] = STACK[0x1378];
              v1055 = STACK[0x3AC8];
              STACK[0x29B8] = STACK[0x3AC8];
              STACK[0x3540] = v1053;
              STACK[0x3550] = v917;
              v1056 = STACK[0xCB0];
              STACK[0x28D8] = STACK[0xCB0];
              v1057 = v919;
              v1058 = STACK[0x10F8];
              STACK[0x3488] = STACK[0x10F8];
              v1059 = STACK[0x1108];
              STACK[0x33F8] = STACK[0x1108];
              v1060 = v936;
              STACK[0x3588] = v936;
              v1061 = STACK[0x1100];
              STACK[0x2830] = STACK[0x1100];
              STACK[0x3368] = v1048;
              STACK[0x3408] = v1051;
              STACK[0x3898] = v1059;
              STACK[0x3518] = v969;
              STACK[0x3528] = v970;
              v1062 = STACK[0x3998];
              STACK[0x3548] = STACK[0x3998];
              STACK[0x33D8] = v933;
              STACK[0x33E8] = v1062;
              v1063 = v970;
              v1064 = STACK[0x10E0];
              STACK[0x33F0] = STACK[0x10E0];
              v1065 = STACK[0x10D8];
              STACK[0x2828] = STACK[0x10D8];
              STACK[0x3590] = v927;
              STACK[0x33E0] = v1050;
              STACK[0x3578] = v964;
              v1066 = STACK[0xCA8];
              STACK[0x3520] = STACK[0xCA8];
              v1067 = STACK[0x10D0];
              STACK[0x3480] = STACK[0x10D0];
              STACK[0x33D0] = v925;
              STACK[0x3698] = v939;
              STACK[0x3510] = v1052;
              STACK[0x2850] = v1064;
              STACK[0x3570] = v930;
              STACK[0x3580] = v1046;
              STACK[0x28D0] = v1066;
              STACK[0x33C8] = v1053;
              v1068 = STACK[0x850];
              STACK[0x28C8] = STACK[0x850];
              STACK[0x3500] = v1055;
              STACK[0x33C0] = v1052;
              STACK[0x3508] = v1051;
              STACK[0x3A88] = v1064;
              STACK[0x3568] = v1057;
              STACK[0x2860] = v1058;
              STACK[0x3938] = v933;
              STACK[0x2808] = v933;
              STACK[0x3538] = v1056;
              STACK[0x36A0] = v1067;
              STACK[0x33B0] = v1061;
              STACK[0x33A0] = v1047;
              STACK[0x39C0] = v924;
              STACK[0x39E8] = v924;
              STACK[0x33A8] = v924;
              STACK[0x3398] = v1055;
              STACK[0x3470] = v1065;
              STACK[0x3390] = v1065;
              STACK[0x2820] = v1054;
              STACK[0x34F8] = v1063;
              STACK[0x38F8] = v939;
              STACK[0x3958] = v925;
              STACK[0x2800] = v925;
              STACK[0x3388] = v1068;
              STACK[0x34F0] = v1062;
              v1069 = STACK[0x3A80];
              STACK[0x3378] = STACK[0x3A80];
              STACK[0x3360] = v1061;
              STACK[0x36A8] = v917;
              STACK[0x2858] = v1059;
              STACK[0x3380] = v1067;
              STACK[0x3530] = v1053;
              STACK[0x34E8] = v969;
              STACK[0x36F8] = v1051;
              STACK[0x3210] = v1069;
              STACK[0x34E0] = v1069;
              STACK[0x3350] = v1048;
              STACK[0x3358] = v1066;
              STACK[0x3348] = v1058;
              STACK[0x3310] = v1056;
              STACK[0x36B0] = v927;
              v1070 = STACK[0x10C8];
              STACK[0x3A70] = STACK[0x10C8];
              STACK[0x32B0] = v1063;
              STACK[0x788] = v969;
              STACK[0x3308] = v1070;
              STACK[0x39F8] = v1057;
              STACK[0x37A8] = v1057;
              STACK[0x780] = v1068;
              STACK[0x3988] = v1060;
              STACK[0x3798] = v1060;
              STACK[0x3468] = STACK[0x13A0];
              STACK[0x3208] = v1070;
              STACK[0x3A00] = v964;
              STACK[0x36D8] = v964;
              STACK[0x36B8] = v930;
              STACK[0x790] = STACK[0x39F0];
              STACK[0x778] = v1054;
              STACK[0x3A08] = v917;
              STACK[0x39E0] = v930;
              STACK[0x3990] = v939;
              return sub_1007283A0();
            }
          }

          if (v940 == 88)
          {
            STACK[0x3AE8] = *(v965 + 8 * ((v967 - 14713) ^ (19438 * ((STACK[0x38A0] & 1) == 0))));
            LODWORD(STACK[0x3900]) = 89;
            LODWORD(STACK[0x76C]) = 88;
            LODWORD(STACK[0x3A28]) = 6;
            LODWORD(STACK[0x37F8]) = v967;
            v1222 = STACK[0x1370];
            STACK[0x2848] = STACK[0x1370];
            STACK[0x39F8] = v919;
            v1223 = STACK[0x2868];
            STACK[0x3A20] = STACK[0x2868];
            STACK[0x3828] = v939;
            STACK[0x3830] = v917;
            v1224 = v933;
            v1225 = v971;
            STACK[0x2840] = STACK[0x13F0];
            STACK[0x3930] = v973;
            v1226 = STACK[0x10D0];
            STACK[0x3090] = STACK[0x10D0];
            v1227 = STACK[0x10E0];
            STACK[0x3098] = STACK[0x10E0];
            v1228 = STACK[0x13A0];
            STACK[0x2838] = STACK[0x13A0];
            v1229 = STACK[0x10F8];
            STACK[0x3488] = STACK[0x10F8];
            v1230 = STACK[0x10D8];
            STACK[0x3470] = STACK[0x10D8];
            STACK[0x3820] = v930;
            STACK[0x3088] = v1229;
            STACK[0x30A0] = STACK[0x23B0];
            STACK[0x30C0] = STACK[0x15B0];
            v1231 = STACK[0xCA8];
            STACK[0x3080] = STACK[0xCA8];
            v1232 = STACK[0x3998];
            STACK[0x3960] = STACK[0x3998];
            STACK[0x3A18] = v917;
            v1233 = STACK[0x3AD0];
            STACK[0x28C0] = STACK[0x3AD0];
            STACK[0x39C8] = v970;
            STACK[0x3078] = STACK[0x1568];
            v1234 = STACK[0x3AC8];
            STACK[0x29B8] = STACK[0x3AC8];
            STACK[0x3810] = v927;
            STACK[0x3070] = STACK[0x2380];
            v1235 = STACK[0xCB0];
            STACK[0x3068] = STACK[0xCB0];
            STACK[0x30B0] = STACK[0x15A0];
            STACK[0x30B8] = STACK[0x1580];
            STACK[0x28D8] = v1235;
            v1236 = v970;
            v1237 = STACK[0x1100];
            STACK[0x2830] = STACK[0x1100];
            v1238 = STACK[0x850];
            STACK[0x3060] = STACK[0x850];
            v1239 = v924;
            STACK[0x3A68] = v924;
            STACK[0x3908] = v913;
            STACK[0x39B8] = v964;
            STACK[0x3818] = v936;
            STACK[0x3050] = v1230;
            v1240 = STACK[0x1108];
            STACK[0x3898] = STACK[0x1108];
            STACK[0x3040] = v1222;
            STACK[0x39F0] = v913;
            STACK[0x30A8] = STACK[0x15A8];
            STACK[0x38F0] = v919;
            STACK[0x3058] = v1225;
            STACK[0x3480] = v1226;
            v1241 = STACK[0x3A80];
            STACK[0x3970] = STACK[0x3A80];
            STACK[0x2828] = v1230;
            STACK[0x3A10] = v930;
            STACK[0x3038] = v1223;
            STACK[0x3030] = STACK[0x1570];
            STACK[0x3020] = STACK[0x23A8];
            v1242 = STACK[0x28A8];
            STACK[0x3A40] = STACK[0x28A8];
            v1243 = STACK[0x2888];
            STACK[0x3320] = STACK[0x2888];
            STACK[0x3028] = v1236;
            STACK[0x3018] = STACK[0x2388];
            STACK[0x3010] = v1243;
            STACK[0x3510] = v1233;
            STACK[0x2850] = v1227;
            STACK[0x3968] = v969;
            STACK[0x28D0] = v1231;
            STACK[0x3048] = STACK[0x1588];
            STACK[0x38E8] = v939;
            v1244 = v969;
            v1245 = STACK[0x28B0];
            STACK[0x3478] = STACK[0x28B0];
            STACK[0x28C8] = v1238;
            STACK[0x39B0] = v927;
            STACK[0x3468] = v1228;
            STACK[0x3008] = STACK[0x23B8];
            STACK[0x3500] = v1234;
            STACK[0x3508] = v1225;
            v1246 = STACK[0x2890];
            STACK[0x3330] = STACK[0x2890];
            STACK[0x3000] = v1242;
            v1247 = STACK[0x2878];
            STACK[0x3340] = STACK[0x2878];
            v1248 = STACK[0x28B8];
            STACK[0x2FF8] = STACK[0x28B8];
            STACK[0x3A00] = v964;
            STACK[0x3808] = v964;
            STACK[0x2860] = v1229;
            v1249 = STACK[0x2898];
            STACK[0x3338] = STACK[0x2898];
            STACK[0x3938] = v1224;
            STACK[0x2808] = v1224;
            v1250 = STACK[0x10C8];
            STACK[0x3A70] = STACK[0x10C8];
            STACK[0x36A0] = v1226;
            STACK[0x39E8] = v1239;
            STACK[0x3800] = v1239;
            STACK[0x3988] = v936;
            STACK[0x38E0] = v936;
            STACK[0x3370] = v1222;
            STACK[0x2FE8] = STACK[0x23D0];
            STACK[0x2FE0] = v1245;
            v1251 = STACK[0x2870];
            STACK[0x30D0] = STACK[0x2870];
            STACK[0x3A88] = v1227;
            STACK[0x2FF0] = STACK[0x2398];
            STACK[0x2FD8] = v1250;
            v1252 = STACK[0x1378];
            STACK[0x2820] = STACK[0x1378];
            STACK[0x34F8] = v1236;
            STACK[0x3958] = v925;
            STACK[0x2800] = v925;
            STACK[0x2FB8] = v1252;
            STACK[0x34F0] = v1232;
            STACK[0x2FC8] = v1240;
            STACK[0x2FA8] = v1241;
            STACK[0x2858] = v1240;
            STACK[0x2FB0] = v1232;
            STACK[0x2FC0] = STACK[0x1590];
            STACK[0x3A38] = v1251;
            STACK[0x2FA0] = v1247;
            v1253 = STACK[0x39A8];
            STACK[0x3530] = STACK[0x39A8];
            STACK[0x34E8] = v1244;
            v1254 = STACK[0x2880];
            STACK[0x30C8] = STACK[0x2880];
            STACK[0x3A58] = v1252;
            STACK[0x36F8] = v1225;
            STACK[0x2FD0] = STACK[0x1560];
            STACK[0x2F90] = STACK[0x2390];
            STACK[0x3318] = v1254;
            STACK[0x34E0] = v1241;
            STACK[0x3A30] = v1248;
            STACK[0x2F88] = STACK[0x23C8];
            STACK[0x2F80] = v1237;
            v1255 = STACK[0x28A0];
            STACK[0x3328] = STACK[0x28A0];
            STACK[0x2F98] = STACK[0x1598];
            v1256 = STACK[0x13F0];
            STACK[0x3368] = STACK[0x13F0];
            STACK[0x3360] = v1237;
            STACK[0x2F70] = STACK[0x23A0];
            STACK[0x3308] = v1250;
            STACK[0x37F0] = STACK[0x39F0];
            STACK[0x2F68] = v1253;
            STACK[0x2F60] = v1249;
            STACK[0x2F50] = v1256;
            STACK[0x2F48] = v1228;
            STACK[0x37E8] = STACK[0x39F8];
            STACK[0x2F58] = STACK[0x23C0];
            STACK[0x2F40] = v1246;
            STACK[0x2F78] = STACK[0x1578];
            STACK[0x2F38] = v1244;
            STACK[0x2F30] = v1255;
            STACK[0x3A08] = v917;
            STACK[0x39E0] = v930;
            STACK[0x3490] = v927;
            STACK[0x3990] = v939;
            return (STACK[0x3AE8])();
          }

          if (v940 == 94)
          {
            v1071 = (STACK[0x38A0] & 0x20) == 0;
            v1072 = STACK[0x1C70];
            if ((v968 & 0x20) == 0)
            {
              v1072 = v926 + STACK[0x3AA0] + STACK[0xC58];
            }

            STACK[0x3570] = v1072;
            v1073 = STACK[0x2EC8];
            if ((v968 & 0x20) == 0)
            {
              v1073 = v970;
            }

            STACK[0x3528] = v1073;
            v1074 = STACK[0x1C28];
            if ((v968 & 0x20) == 0)
            {
              v1074 = v964;
            }

            STACK[0x3578] = v1074;
            v1075 = STACK[0x2DD8];
            if ((v968 & 0x20) == 0)
            {
              v1075 = STACK[0x10E0];
            }

            STACK[0x39D0] = v1075;
            v1076 = STACK[0x2ED0];
            if ((v968 & 0x20) == 0)
            {
              v1076 = v969;
            }

            STACK[0x3518] = v1076;
            v1077 = STACK[0x2E90];
            if ((v968 & 0x20) == 0)
            {
              v1077 = v973;
            }

            STACK[0x3540] = v1077;
            v1078 = STACK[0x10D0];
            v1079 = STACK[0x2DB0];
            if ((v968 & 0x20) == 0)
            {
              v1079 = STACK[0x10D0];
            }

            STACK[0x3400] = v1079;
            v1080 = STACK[0x2E80];
            if ((v968 & 0x20) == 0)
            {
              v1080 = STACK[0x850];
            }

            STACK[0x3408] = v1080;
            v1081 = STACK[0x2EB0];
            v1082 = STACK[0x3998];
            if ((v968 & 0x20) == 0)
            {
              v1081 = STACK[0x3998];
            }

            STACK[0x3548] = v1081;
            v1083 = v927;
            STACK[0x3490] = v927;
            v1084 = v917;
            v1085 = STACK[0x10F8];
            v1086 = STACK[0x2DB8];
            if ((v968 & 0x20) == 0)
            {
              v1086 = STACK[0x10F8];
            }

            STACK[0x33F8] = v1086;
            v1087 = STACK[0x1C20];
            if ((v968 & 0x20) == 0)
            {
              v1087 = v925;
            }

            STACK[0x3550] = v1087;
            v1088 = STACK[0x2EA8];
            if ((v968 & 0x20) == 0)
            {
              v1088 = v971;
            }

            STACK[0x33F0] = v1088;
            v1089 = STACK[0x1C60];
            if ((v968 & 0x20) == 0)
            {
              v1089 = v939;
            }

            STACK[0x3698] = v1089;
            v1090 = STACK[0x1C30];
            if ((v968 & 0x20) == 0)
            {
              v1090 = v917;
            }

            STACK[0x36A8] = v1090;
            v1091 = v913;
            v1092 = v933;
            v1093 = STACK[0x1100];
            v1094 = STACK[0x2DA8];
            if (v1071)
            {
              v1094 = STACK[0x1100];
            }

            STACK[0x33E8] = v1094;
            v1095 = STACK[0x1C38];
            STACK[0x39E8] = v924;
            if (v1071)
            {
              v1095 = v924;
            }

            STACK[0x33B0] = v1095;
            v1096 = STACK[0xCB0];
            v1097 = STACK[0x2E88];
            if (v1071)
            {
              v1097 = STACK[0xCB0];
            }

            STACK[0x33E0] = v1097;
            if (v1071)
            {
              v1098 = 96;
            }

            else
            {
              v1098 = 95;
            }

            LODWORD(STACK[0x39D8]) = v1098;
            v1099 = STACK[0x2DE0];
            if (v1071)
            {
              v1099 = STACK[0x1378];
            }

            STACK[0x33D0] = v1099;
            v1100 = STACK[0x13A0];
            v1101 = STACK[0x2DD0];
            if (v1071)
            {
              v1101 = STACK[0x13A0];
            }

            STACK[0x33C0] = v1101;
            v1102 = STACK[0x1C48];
            if (v1071)
            {
              v1102 = v933;
            }

            STACK[0x33D8] = v1102;
            v1103 = STACK[0x2EC0];
            v1104 = STACK[0x3AD0];
            if (v1071)
            {
              v1103 = STACK[0x3AD0];
            }

            STACK[0x33A0] = v1103;
            v1105 = STACK[0x2EB8];
            v1106 = STACK[0x3AC8];
            if (v1071)
            {
              v1105 = STACK[0x3AC8];
            }

            STACK[0x33C8] = v1105;
            v1107 = STACK[0x1C50];
            if (v1071)
            {
              v1107 = v1091;
            }

            STACK[0x3580] = v1107;
            v1108 = STACK[0x1C68];
            if (v1071)
            {
              v1108 = v1083;
            }

            STACK[0x3590] = v1108;
            v1109 = STACK[0x1C58];
            if (v1071)
            {
              v1109 = v919;
            }

            STACK[0x3568] = v1109;
            v1110 = STACK[0x2E98];
            if (v1071)
            {
              v1110 = STACK[0xCA8];
            }

            STACK[0x3520] = v1110;
            STACK[0x3990] = v939;
            STACK[0x39F8] = v919;
            STACK[0x3958] = v925;
            v1111 = v1091;
            v1112 = STACK[0x10C8];
            v1113 = STACK[0x1C40];
            v1114 = v936;
            if (v1071)
            {
              v1113 = v936;
            }

            STACK[0x3588] = v1113;
            v1115 = STACK[0x10D8];
            v1116 = STACK[0x1108];
            v1117 = v971;
            if (v1071)
            {
              v1118 = STACK[0x1108];
            }

            else
            {
              v1118 = STACK[0x2DC0];
            }

            v1119 = STACK[0x3A80];
            STACK[0x3AE8] = *(v965 + 8 * a11);
            LODWORD(STACK[0x76C]) = 94;
            STACK[0x2160] = v1078;
            STACK[0x3468] = v1100;
            STACK[0x2158] = v1093;
            STACK[0x2150] = v1106;
            v1120 = STACK[0x850];
            STACK[0x2148] = STACK[0x850];
            v1121 = STACK[0x10E0];
            STACK[0x2678] = STACK[0x10E0];
            STACK[0x3510] = v1104;
            STACK[0x3360] = v1093;
            STACK[0x3A08] = v1084;
            STACK[0x2178] = v1084;
            STACK[0x2670] = v1112;
            STACK[0x3A70] = v1112;
            STACK[0x2140] = v969;
            STACK[0x3538] = v1096;
            STACK[0x3938] = v1092;
            STACK[0x2170] = v1092;
            STACK[0x3A00] = v964;
            STACK[0x36D8] = v964;
            STACK[0x2138] = v970;
            STACK[0x39F0] = v1111;
            STACK[0x2680] = v1111;
            STACK[0x33A8] = v1082;
            STACK[0x2668] = v1096;
            STACK[0x3500] = v1106;
            STACK[0x3508] = v1117;
            STACK[0x2168] = v1116;
            STACK[0x3470] = v1115;
            STACK[0x2660] = v1085;
            STACK[0x3988] = v1114;
            STACK[0x3798] = v1114;
            STACK[0x2658] = v1104;
            STACK[0x2650] = v1115;
            STACK[0x2648] = v1117;
            STACK[0x3898] = v1116;
            STACK[0x34F8] = v970;
            STACK[0x3480] = v1078;
            STACK[0x34F0] = v1082;
            STACK[0x3488] = v1085;
            v1122 = STACK[0x1378];
            STACK[0x2630] = STACK[0x1378];
            STACK[0x3A58] = v1122;
            STACK[0x34E8] = v969;
            STACK[0x3398] = v1120;
            STACK[0x3A88] = v1121;
            STACK[0x34E0] = v1119;
            STACK[0x2618] = v1100;
            STACK[0x2620] = STACK[0x3958];
            STACK[0x2610] = STACK[0x39A8];
            STACK[0x2608] = STACK[0xCA8];
            v1123 = STACK[0x1370];
            STACK[0x2600] = STACK[0x1370];
            v1124 = STACK[0x13F0];
            STACK[0x3368] = STACK[0x13F0];
            STACK[0x3370] = v1123;
            STACK[0x39E0] = v930;
            STACK[0x2638] = v930;
            STACK[0x2628] = STACK[0x3990];
            STACK[0x39C0] = STACK[0x39E8];
            STACK[0x25F8] = v1124;
            STACK[0x37A8] = STACK[0x39F8];
            STACK[0x2640] = STACK[0x3490];
            return (STACK[0x3AE8])(v1118);
          }

LABEL_4941:
          v1143 = *(v965 + 8 * (a12 ^ (2635 * ((STACK[0x38A0] & 1) == 0))));
          LODWORD(STACK[0x39D8]) = 105;
          STACK[0x3570] = STACK[0x1C70];
          STACK[0x3528] = STACK[0x2EC8];
          v1144 = STACK[0x10D0];
          STACK[0x2160] = STACK[0x10D0];
          STACK[0x3578] = STACK[0x1C28];
          v1145 = STACK[0x13A0];
          STACK[0x3468] = STACK[0x13A0];
          STACK[0x39D0] = STACK[0x2DD8];
          STACK[0x3518] = STACK[0x2ED0];
          v1146 = STACK[0x1100];
          STACK[0x2158] = STACK[0x1100];
          STACK[0x3540] = STACK[0x2E90];
          STACK[0x3400] = STACK[0x2DB0];
          STACK[0x3408] = STACK[0x2E80];
          STACK[0x3548] = STACK[0x2EB0];
          v1147 = STACK[0x3AC8];
          STACK[0x2150] = STACK[0x3AC8];
          STACK[0x33F8] = STACK[0x2DB8];
          STACK[0x3550] = STACK[0x1C20];
          v1148 = STACK[0x850];
          STACK[0x2148] = STACK[0x850];
          STACK[0x33F0] = STACK[0x2EA8];
          v1149 = STACK[0x10E0];
          STACK[0x2678] = STACK[0x10E0];
          STACK[0x3698] = STACK[0x1C60];
          v1150 = v970;
          v1151 = STACK[0x3AD0];
          STACK[0x3510] = STACK[0x3AD0];
          STACK[0x3360] = v1146;
          STACK[0x2178] = v917;
          v1152 = STACK[0x10C8];
          STACK[0x2670] = STACK[0x10C8];
          STACK[0x3A70] = v1152;
          STACK[0x36A8] = STACK[0x1C30];
          STACK[0x2140] = v969;
          v1153 = STACK[0xCB0];
          STACK[0x3538] = STACK[0xCB0];
          STACK[0x33E8] = STACK[0x2DA8];
          STACK[0x3938] = v933;
          STACK[0x2170] = v933;
          STACK[0x3A00] = v964;
          STACK[0x36D8] = v964;
          STACK[0x2138] = v1150;
          STACK[0x2680] = v913;
          v1154 = STACK[0x3998];
          STACK[0x33A8] = STACK[0x3998];
          STACK[0x33B0] = STACK[0x1C38];
          STACK[0x2668] = v1153;
          STACK[0x3500] = v1147;
          STACK[0x33E0] = STACK[0x2E88];
          STACK[0x3508] = v971;
          STACK[0x33D0] = STACK[0x2DE0];
          v1155 = STACK[0x1108];
          STACK[0x2168] = STACK[0x1108];
          STACK[0x33C0] = STACK[0x2DD0];
          STACK[0x33D8] = STACK[0x1C48];
          v1156 = STACK[0x10D8];
          STACK[0x3470] = STACK[0x10D8];
          STACK[0x33A0] = STACK[0x2EC0];
          STACK[0x33C8] = STACK[0x2EB8];
          v1157 = STACK[0x10F8];
          STACK[0x2660] = STACK[0x10F8];
          STACK[0x3988] = v936;
          STACK[0x3798] = v936;
          STACK[0x2658] = v1151;
          STACK[0x2650] = v1156;
          STACK[0x2648] = v971;
          STACK[0x3898] = v1155;
          STACK[0x34F8] = v1150;
          STACK[0x3480] = v1144;
          STACK[0x34F0] = v1154;
          STACK[0x3580] = STACK[0x1C50];
          STACK[0x3488] = v1157;
          v1158 = STACK[0x1378];
          STACK[0x2630] = STACK[0x1378];
          STACK[0x3590] = STACK[0x1C68];
          STACK[0x3A58] = v1158;
          STACK[0x34E8] = v969;
          STACK[0x3398] = v1148;
          STACK[0x3A88] = v1149;
          STACK[0x34E0] = STACK[0x3A80];
          STACK[0x3568] = STACK[0x1C58];
          STACK[0x3520] = STACK[0x2E98];
          STACK[0x39F0] = v913;
          STACK[0x2618] = v1145;
          STACK[0x3958] = v925;
          STACK[0x2620] = v925;
          STACK[0x2610] = v973;
          STACK[0x2608] = STACK[0xCA8];
          v1159 = STACK[0x1370];
          STACK[0x2600] = STACK[0x1370];
          v1160 = STACK[0x13F0];
          STACK[0x3368] = STACK[0x13F0];
          STACK[0x3370] = v1159;
          STACK[0x2638] = v930;
          STACK[0x3588] = STACK[0x1C40];
          STACK[0x2628] = v939;
          STACK[0x39E8] = v924;
          STACK[0x39C0] = v924;
          STACK[0x25F8] = v1160;
          STACK[0x37A8] = v919;
          STACK[0x39E0] = v930;
          v1161 = STACK[0x2DC0];
          STACK[0x2640] = v927;
          STACK[0x3A08] = v917;
          STACK[0x3990] = v939;
          STACK[0x39F8] = v919;
          STACK[0x3490] = v927;
          return v1143(v1161);
        }

        v972 = STACK[0x3AD0];
        v973 = STACK[0x39A8];
        if (v940 <= 81)
        {
          if (v940 == 78)
          {
            STACK[0x3A68] = *(v965 + 8 * ((9222 * ((*(v966 + LODWORD(STACK[0x39D8])) & 8) == ((v967 + 20) ^ 0x88))) ^ a13));
            LODWORD(STACK[0x3400]) = 79;
            STACK[0x3A50] = 24;
            LODWORD(STACK[0x76C]) = 78;
            LODWORD(STACK[0x3680]) = 80;
            v999 = STACK[0x1370];
            STACK[0x2848] = STACK[0x1370];
            v1000 = v999;
            STACK[0x1370] = v999;
            v1001 = STACK[0x13F0];
            STACK[0x2840] = STACK[0x13F0];
            v1002 = v1001;
            STACK[0x13F0] = v1001;
            STACK[0x3370] = v1000;
            STACK[0x2838] = STACK[0x13A0];
            v1003 = STACK[0x3AD0];
            STACK[0x28C0] = STACK[0x3AD0];
            v1004 = v1003;
            STACK[0x3A58] = STACK[0x1378];
            v1005 = STACK[0x3AC8];
            STACK[0x29B8] = STACK[0x3AC8];
            v1006 = v1005;
            STACK[0x3540] = v973;
            STACK[0x3550] = STACK[0x15A8];
            STACK[0x28D8] = STACK[0xCB0];
            v1007 = v969;
            v1008 = STACK[0x10F8];
            STACK[0x3488] = STACK[0x10F8];
            v1009 = v1008;
            STACK[0x10F8] = v1008;
            STACK[0x33F8] = STACK[0x2868];
            STACK[0x3588] = STACK[0x1580];
            v1010 = STACK[0x1100];
            STACK[0x2830] = STACK[0x1100];
            STACK[0x1100] = v1010;
            STACK[0x3368] = v1002;
            STACK[0x3408] = STACK[0x23B0];
            v1011 = v971;
            v1012 = v927;
            v1013 = STACK[0x1108];
            STACK[0x3898] = STACK[0x1108];
            STACK[0x1108] = v1013;
            STACK[0x3518] = STACK[0x23A8];
            STACK[0x3528] = v970;
            v1014 = STACK[0x3998];
            STACK[0x3548] = STACK[0x3998];
            STACK[0x33D8] = STACK[0x1570];
            STACK[0x33E8] = STACK[0x23B8];
            STACK[0x33F0] = STACK[0x2870];
            v1015 = v939;
            STACK[0x3990] = v939;
            v1016 = STACK[0x10D8];
            STACK[0x2828] = STACK[0x10D8];
            STACK[0x3590] = STACK[0x1598];
            STACK[0x33E0] = STACK[0x2888];
            STACK[0x3578] = STACK[0x15B0];
            v1017 = STACK[0xCA8];
            STACK[0x3520] = STACK[0xCA8];
            STACK[0xCA8] = v1017;
            v1018 = STACK[0x10D0];
            STACK[0x3480] = STACK[0x10D0];
            STACK[0x33D0] = STACK[0x1568];
            STACK[0x3698] = STACK[0x1560];
            STACK[0x3510] = v1004;
            v1019 = v973;
            v1020 = STACK[0x10E0];
            STACK[0x2850] = STACK[0x10E0];
            STACK[0x3570] = STACK[0x1578];
            STACK[0x3580] = v913;
            STACK[0x28D0] = v1017;
            STACK[0x33C8] = STACK[0x23A0];
            v1021 = STACK[0x850];
            STACK[0x28C8] = STACK[0x850];
            STACK[0x3500] = v1006;
            STACK[0x33C0] = STACK[0x23D0];
            STACK[0x3508] = v1011;
            STACK[0x3A88] = v1020;
            STACK[0x3568] = STACK[0x1590];
            STACK[0x2860] = v1009;
            STACK[0x2808] = v933;
            STACK[0x3538] = STACK[0xCB0];
            STACK[0x36A0] = v1018;
            STACK[0x33B0] = STACK[0x2880];
            STACK[0x33A0] = STACK[0x28B0];
            STACK[0x39E8] = v924;
            STACK[0x39C0] = v924;
            STACK[0x33A8] = STACK[0x1588];
            STACK[0x3398] = STACK[0x2398];
            STACK[0x3470] = v1016;
            STACK[0x3390] = STACK[0x2898];
            STACK[0x2820] = STACK[0x1378];
            STACK[0x34F8] = v970;
            STACK[0x38F8] = v1015;
            STACK[0x2800] = v925;
            STACK[0x3388] = STACK[0x2380];
            STACK[0x34F0] = v1014;
            STACK[0x3378] = STACK[0x23C0];
            STACK[0x3360] = v1010;
            v1022 = v917;
            STACK[0x36A8] = v917;
            STACK[0x2858] = v1013;
            STACK[0x3380] = STACK[0x28A0];
            STACK[0x3530] = v1019;
            STACK[0x34E8] = v1007;
            STACK[0x36F8] = v1011;
            v1023 = v1011;
            v1024 = STACK[0x3A80];
            STACK[0x3210] = STACK[0x3A80];
            STACK[0x34E0] = v1024;
            STACK[0x3350] = STACK[0x2878];
            STACK[0x3358] = STACK[0x23C8];
            STACK[0x3348] = STACK[0x2890];
            STACK[0x3310] = STACK[0x2390];
            STACK[0x36B0] = v927;
            v1025 = v919;
            v1026 = STACK[0x10C8];
            STACK[0x3A70] = STACK[0x10C8];
            v1027 = v913;
            STACK[0x32B0] = STACK[0x2388];
            STACK[0x788] = v1007;
            STACK[0x3308] = v1026;
            STACK[0x37A8] = v1025;
            STACK[0x780] = v1021;
            v1028 = v936;
            STACK[0x3798] = v936;
            v1029 = STACK[0x13A0];
            STACK[0x3468] = STACK[0x13A0];
            STACK[0x3208] = STACK[0x28B8];
            v1030 = v964;
            STACK[0x36D8] = v964;
            STACK[0x36B8] = v930;
            STACK[0x790] = STACK[0x15A0];
            STACK[0x778] = STACK[0x28A8];
            STACK[0x3778] = v1014;
            STACK[0x3930] = v1019;
            v1031 = STACK[0x3AC8];
            STACK[0x3768] = STACK[0x3AC8];
            STACK[0x3770] = v1023;
            v1032 = STACK[0x1370];
            STACK[0x36F0] = STACK[0x1370];
            v1033 = STACK[0x3AD0];
            STACK[0x3758] = STACK[0x3AD0];
            v1034 = STACK[0xCB0];
            STACK[0x3750] = STACK[0xCB0];
            STACK[0x3960] = v1014;
            STACK[0x3760] = v1023;
            v1035 = STACK[0x39A0];
            STACK[0x39C8] = STACK[0x39A0];
            v1036 = STACK[0x13F0];
            STACK[0x3788] = STACK[0x13F0];
            STACK[0x3A90] = v1026;
            STACK[0x3718] = v1029;
            v1037 = STACK[0x1378];
            STACK[0x3AA0] = STACK[0x1378];
            STACK[0x3678] = v1033;
            STACK[0x3670] = v1029;
            STACK[0x3748] = v1020;
            STACK[0x3668] = v1032;
            STACK[0x3740] = v1016;
            STACK[0x3780] = v1032;
            STACK[0x3908] = v1027;
            STACK[0x3660] = v1037;
            STACK[0x3A00] = v1030;
            STACK[0x39B8] = v1030;
            STACK[0x3738] = v1014;
            STACK[0x3658] = v1036;
            v1038 = STACK[0x1100];
            STACK[0x3650] = STACK[0x1100];
            STACK[0x3648] = v1031;
            STACK[0x37A0] = v1020;
            STACK[0x39F8] = v1025;
            STACK[0x38F0] = v1025;
            STACK[0x3640] = v1038;
            STACK[0x3970] = v1024;
            STACK[0x3980] = v1038;
            STACK[0x36C0] = v1036;
            v1039 = v1036;
            STACK[0x36C8] = v1016;
            STACK[0x3638] = v1032;
            STACK[0x3630] = v1034;
            STACK[0x36D0] = v1020;
            v1040 = STACK[0x10F8];
            STACK[0x37E0] = STACK[0x10F8];
            STACK[0x3730] = v1018;
            STACK[0x3628] = v1024;
            v1041 = STACK[0xCA8];
            STACK[0x3720] = STACK[0xCA8];
            STACK[0x3620] = v1035;
            STACK[0x3728] = v1027;
            STACK[0x3618] = v1022;
            v1042 = STACK[0x1108];
            STACK[0x3708] = STACK[0x1108];
            STACK[0x3610] = v1021;
            STACK[0x3968] = v1007;
            STACK[0x3608] = v1019;
            v1043 = STACK[0x3990];
            STACK[0x38E8] = STACK[0x3990];
            STACK[0x3790] = v1018;
            STACK[0x39B0] = v1012;
            STACK[0x3978] = v1042;
            STACK[0x3600] = v1018;
            STACK[0x3A48] = v1038;
            STACK[0x35F8] = STACK[0x39E8];
            STACK[0x35F0] = v1040;
            STACK[0x3710] = v1043;
            STACK[0x37D8] = v1040;
            STACK[0x3988] = v1028;
            STACK[0x38E0] = v1028;
            STACK[0x3958] = v925;
            STACK[0x3700] = v925;
            STACK[0x3AE8] = v1042;
            STACK[0x35E8] = v1016;
            STACK[0x35E0] = v1041;
            STACK[0x35D8] = v1029;
            STACK[0x3688] = v1016;
            STACK[0x35D0] = v1039;
            STACK[0x35C8] = v1035;
            STACK[0x3690] = v1037;
            STACK[0x35C0] = v1024;
            STACK[0x35B8] = v1040;
            STACK[0x35B0] = v1021;
            STACK[0x35A8] = v1020;
            STACK[0x35A0] = v1026;
            STACK[0x3A98] = v1026;
            STACK[0x3938] = v933;
            STACK[0x3598] = v933;
            STACK[0x39F0] = v1027;
            STACK[0x3A08] = v1022;
            STACK[0x39E0] = v930;
            return (STACK[0x3A68])();
          }

          if (v940 == 79)
          {
            STACK[0x3A90] = *(v965 + 8 * (v967 + 5522));
            STACK[0x3258] = v933;
            STACK[0x3250] = v917;
            STACK[0x3248] = v927;
            STACK[0x3240] = v930;
            STACK[0x3238] = v964;
            STACK[0x2800] = v925;
            STACK[0x3300] = v925;
            STACK[0x32F8] = v925;
            v974 = v936;
            STACK[0x38E0] = v936;
            STACK[0x2808] = v933;
            STACK[0x32F0] = v930;
            STACK[0x32E8] = v939;
            v975 = v924;
            STACK[0x3230] = v924;
            STACK[0x32E0] = v924;
            STACK[0x38E8] = v939;
            STACK[0x3228] = v917;
            STACK[0x3220] = v933;
            STACK[0x3218] = v974;
            STACK[0x38F0] = v919;
            STACK[0x32D0] = v919;
            v976 = v970;
            STACK[0x3A68] = v975;
            STACK[0x32C8] = v974;
            STACK[0x32C0] = v939;
            STACK[0x3100] = v964;
            STACK[0x30F8] = v919;
            STACK[0x32B8] = v927;
            STACK[0x32D8] = v913;
            STACK[0x3908] = v913;
            STACK[0x30F0] = v913;
            STACK[0x3A50] = 24;
            LODWORD(STACK[0x30EC]) = 80;
            v977 = STACK[0x1108];
            STACK[0x3150] = STACK[0x1108];
            v978 = STACK[0x10C8];
            STACK[0x32A8] = STACK[0x10C8];
            v979 = STACK[0x1378];
            STACK[0x3148] = STACK[0x1378];
            STACK[0x3200] = v969;
            STACK[0x31F8] = v969;
            STACK[0x3A98] = v978;
            STACK[0x32A0] = v978;
            v980 = STACK[0x13A0];
            v981 = v973;
            v982 = STACK[0x10E0];
            STACK[0x3140] = STACK[0x10E0];
            v983 = STACK[0x10D0];
            STACK[0x3A38] = STACK[0x10D0];
            v984 = STACK[0x850];
            STACK[0x31F0] = STACK[0x850];
            v985 = v969;
            v986 = STACK[0x10F8];
            STACK[0x3298] = STACK[0x10F8];
            STACK[0x31E8] = v981;
            v987 = STACK[0x3A80];
            STACK[0x31E0] = STACK[0x3A80];
            STACK[0x3690] = v979;
            v988 = v976;
            STACK[0x31D8] = v976;
            STACK[0x2858] = v977;
            v989 = STACK[0x13F0];
            STACK[0x3138] = STACK[0x13F0];
            v990 = STACK[0x10D8];
            STACK[0x3688] = STACK[0x10D8];
            STACK[0x3290] = v980;
            v991 = STACK[0xCA8];
            STACK[0x31D0] = STACK[0xCA8];
            STACK[0x2820] = v979;
            STACK[0x3130] = v990;
            STACK[0x3AE8] = v977;
            STACK[0x37D8] = v986;
            STACK[0x2860] = v986;
            STACK[0x3128] = v986;
            v992 = STACK[0x1100];
            STACK[0x3A48] = STACK[0x1100];
            STACK[0x3288] = v983;
            STACK[0x3978] = v977;
            STACK[0x28C8] = v984;
            STACK[0x3790] = v983;
            STACK[0x31C8] = v981;
            STACK[0x28D0] = v991;
            STACK[0x3968] = v985;
            STACK[0x31C0] = v984;
            STACK[0x3280] = v977;
            STACK[0x2850] = v982;
            STACK[0x31B8] = v988;
            STACK[0x31B0] = v991;
            STACK[0x31A8] = v987;
            STACK[0x3278] = v983;
            STACK[0x37E0] = v986;
            STACK[0x36D0] = v982;
            v993 = STACK[0xCB0];
            STACK[0x31A0] = STACK[0xCB0];
            v994 = STACK[0x1370];
            STACK[0x3270] = STACK[0x1370];
            STACK[0x36C8] = v990;
            STACK[0x36C0] = v989;
            STACK[0x3980] = v992;
            STACK[0x2828] = v990;
            STACK[0x3970] = v987;
            STACK[0x3268] = v992;
            STACK[0x37A0] = v982;
            v995 = STACK[0x3AC8];
            STACK[0x3198] = STACK[0x3AC8];
            STACK[0x3120] = v992;
            STACK[0x3118] = v989;
            v996 = STACK[0x3998];
            STACK[0x3190] = STACK[0x3998];
            STACK[0x30E0] = v979;
            STACK[0x3780] = v994;
            STACK[0x30D8] = v990;
            STACK[0x3110] = v994;
            STACK[0x3260] = v982;
            STACK[0x3108] = v980;
            STACK[0x2830] = v992;
            v997 = STACK[0x3AD0];
            STACK[0x3188] = STACK[0x3AD0];
            STACK[0x3AA0] = v979;
            STACK[0x28D8] = v993;
            STACK[0x29B8] = v995;
            STACK[0x3788] = v989;
            v998 = STACK[0x3558];
            STACK[0x3180] = STACK[0x3558];
            STACK[0x28C0] = v997;
            STACK[0x3960] = v996;
            STACK[0x3178] = v993;
            STACK[0x3170] = v997;
            STACK[0x36F0] = v994;
            STACK[0x2838] = v980;
            STACK[0x3168] = v998;
            STACK[0x3160] = v995;
            STACK[0x3930] = v981;
            STACK[0x2840] = v989;
            STACK[0x3158] = v996;
            STACK[0x2848] = v994;
            return (STACK[0x3A90])();
          }

          goto LABEL_4941;
        }

        if (v940 == 82)
        {
          v1257 = 4647 * (((STACK[0x38A0] & 0xF8) >> 3) ^ 0xC4) + 14331348;
          STACK[0x3AE8] = *(v965 + 8 * ((28924 * ((*(v966 + v1257 - 6784 * (((1266205 * v1257) >> 32) >> 1)) & 1) == 0)) ^ (v967 - 5407)));
          LODWORD(STACK[0x3900]) = 84;
          LODWORD(STACK[0x76C]) = 82;
          LODWORD(STACK[0x3A28]) = 6;
          LODWORD(STACK[0x3400]) = 83;
          v1258 = v971;
          v1259 = v973;
          v1260 = STACK[0x1370];
          STACK[0x2848] = STACK[0x1370];
          v1261 = STACK[0x13F0];
          STACK[0x2840] = STACK[0x13F0];
          v1262 = v1261;
          STACK[0x13F0] = v1261;
          STACK[0x3370] = v1260;
          STACK[0x2838] = STACK[0x13A0];
          STACK[0x28C0] = v972;
          STACK[0x39F8] = v919;
          v1263 = STACK[0x1378];
          STACK[0x3A58] = STACK[0x1378];
          v1264 = STACK[0x3AC8];
          STACK[0x29B8] = STACK[0x3AC8];
          v1265 = v1264;
          STACK[0x3540] = v973;
          STACK[0x3550] = STACK[0x15A8];
          v1266 = v972;
          v1267 = STACK[0xCB0];
          STACK[0x28D8] = STACK[0xCB0];
          v1268 = v1267;
          STACK[0xCB0] = v1267;
          STACK[0x39E0] = v930;
          v1269 = STACK[0x10F8];
          STACK[0x3488] = STACK[0x10F8];
          STACK[0x33F8] = STACK[0x2868];
          STACK[0x3588] = STACK[0x1580];
          v1270 = STACK[0x1100];
          STACK[0x2830] = STACK[0x1100];
          STACK[0x3368] = v1262;
          STACK[0x3408] = STACK[0x23B0];
          v1271 = STACK[0x1108];
          STACK[0x3898] = STACK[0x1108];
          STACK[0x3518] = STACK[0x23A8];
          STACK[0x3528] = v970;
          v1272 = STACK[0x3998];
          STACK[0x3548] = STACK[0x3998];
          STACK[0x33D8] = STACK[0x1570];
          STACK[0x33E8] = STACK[0x23B8];
          STACK[0x33F0] = STACK[0x2870];
          v1273 = STACK[0x10D8];
          STACK[0x2828] = STACK[0x10D8];
          STACK[0x3590] = STACK[0x1598];
          STACK[0x33E0] = STACK[0x2888];
          STACK[0x3578] = STACK[0x15B0];
          v1274 = v913;
          STACK[0x39F0] = v913;
          v1275 = STACK[0xCA8];
          STACK[0x3520] = STACK[0xCA8];
          STACK[0xCA8] = v1275;
          v1276 = STACK[0x10D0];
          STACK[0x3480] = STACK[0x10D0];
          STACK[0x33D0] = STACK[0x1568];
          v1277 = v970;
          STACK[0x3698] = STACK[0x1560];
          STACK[0x3510] = v1266;
          v1278 = STACK[0x10E0];
          STACK[0x2850] = STACK[0x10E0];
          STACK[0x3570] = STACK[0x1578];
          STACK[0x3580] = v1274;
          STACK[0x28D0] = v1275;
          STACK[0x33C8] = STACK[0x23A0];
          v1279 = STACK[0x850];
          STACK[0x28C8] = STACK[0x850];
          STACK[0x3500] = v1265;
          STACK[0x33C0] = STACK[0x23D0];
          STACK[0x3508] = v1258;
          STACK[0x3A88] = v1278;
          STACK[0x3568] = STACK[0x1590];
          STACK[0x2860] = v1269;
          STACK[0x2808] = v933;
          STACK[0x3538] = v1268;
          STACK[0x36A0] = v1276;
          STACK[0x33B0] = STACK[0x2880];
          STACK[0x33A0] = STACK[0x28B0];
          STACK[0x39C0] = v924;
          STACK[0x33A8] = STACK[0x1588];
          STACK[0x3398] = STACK[0x2398];
          STACK[0x3470] = v1273;
          STACK[0x3390] = STACK[0x2898];
          STACK[0x2820] = v1263;
          STACK[0x34F8] = v1277;
          STACK[0x38F8] = v939;
          STACK[0x2800] = v925;
          STACK[0x3388] = STACK[0x2380];
          STACK[0x34F0] = v1272;
          STACK[0x3378] = STACK[0x23C0];
          STACK[0x3360] = v1270;
          STACK[0x36A8] = v917;
          STACK[0x2858] = v1271;
          STACK[0x3380] = STACK[0x28A0];
          STACK[0x3530] = v1259;
          v1280 = STACK[0x3A78];
          STACK[0x34E8] = STACK[0x3A78];
          STACK[0x36F8] = v1258;
          v1281 = STACK[0x3A80];
          STACK[0x3210] = STACK[0x3A80];
          STACK[0x34E0] = v1281;
          STACK[0x3350] = STACK[0x2878];
          STACK[0x3358] = STACK[0x23C8];
          STACK[0x3348] = STACK[0x2890];
          STACK[0x3310] = STACK[0x2390];
          STACK[0x36B0] = v927;
          v1282 = STACK[0x10C8];
          STACK[0x3A70] = STACK[0x10C8];
          STACK[0x32B0] = STACK[0x2388];
          STACK[0x788] = v1280;
          STACK[0x3308] = v1282;
          v1283 = STACK[0x39F8];
          STACK[0x37A8] = STACK[0x39F8];
          STACK[0x780] = v1279;
          STACK[0x3798] = v936;
          v1284 = STACK[0x13A0];
          STACK[0x3468] = STACK[0x13A0];
          STACK[0x3208] = STACK[0x28B8];
          STACK[0x36D8] = v964;
          v1285 = STACK[0x39E0];
          STACK[0x36B8] = STACK[0x39E0];
          STACK[0x790] = STACK[0x15A0];
          STACK[0x778] = STACK[0x28A8];
          LODWORD(STACK[0x37F8]) = v967;
          STACK[0x3A20] = v1271;
          STACK[0x3828] = v939;
          STACK[0x3830] = v917;
          STACK[0x3930] = v1259;
          STACK[0x3090] = v1276;
          STACK[0x3098] = v1278;
          STACK[0x3820] = v1285;
          v1286 = v1285;
          v1287 = v1269;
          STACK[0x3088] = v1269;
          v1288 = v1258;
          STACK[0x30A0] = v1258;
          STACK[0x30C0] = v964;
          v1289 = STACK[0xCA8];
          STACK[0x3080] = STACK[0xCA8];
          STACK[0x3960] = v1272;
          STACK[0x3A18] = v917;
          STACK[0x39C8] = v1277;
          STACK[0x3958] = v925;
          STACK[0x3078] = v925;
          STACK[0x3810] = v927;
          STACK[0x3070] = v1279;
          v1290 = STACK[0xCB0];
          STACK[0x3068] = STACK[0xCB0];
          v1291 = STACK[0x39F0];
          STACK[0x30B0] = STACK[0x39F0];
          STACK[0x30B8] = v936;
          STACK[0x3060] = v1279;
          STACK[0x3A68] = v924;
          STACK[0x3908] = v1291;
          STACK[0x39B8] = v964;
          STACK[0x3818] = v936;
          STACK[0x3050] = v1273;
          STACK[0x3040] = v1260;
          STACK[0x30A8] = v917;
          STACK[0x38F0] = v1283;
          STACK[0x3058] = v1288;
          STACK[0x3970] = v1281;
          STACK[0x3A10] = v1285;
          STACK[0x3038] = v1271;
          STACK[0x3938] = v933;
          STACK[0x3030] = v933;
          STACK[0x3020] = v1280;
          STACK[0x3A40] = v1263;
          STACK[0x3320] = v1284;
          STACK[0x3028] = v1277;
          STACK[0x3018] = v1277;
          STACK[0x3010] = v1284;
          STACK[0x3968] = v1280;
          STACK[0x3048] = v924;
          STACK[0x38E8] = v939;
          STACK[0x3478] = v1260;
          STACK[0x39B0] = v927;
          STACK[0x3008] = v1272;
          STACK[0x3330] = v1287;
          STACK[0x3000] = v1263;
          v1292 = STACK[0x13F0];
          STACK[0x3340] = STACK[0x13F0];
          STACK[0x2FF8] = v1282;
          STACK[0x3A00] = v964;
          STACK[0x3808] = v964;
          STACK[0x3338] = v1273;
          STACK[0x39E8] = v924;
          STACK[0x3800] = v924;
          STACK[0x3988] = v936;
          STACK[0x38E0] = v936;
          STACK[0x2FE8] = STACK[0x3AD0];
          STACK[0x2FE0] = v1260;
          STACK[0x30D0] = v1278;
          STACK[0x2FF0] = STACK[0x3AC8];
          STACK[0x2FD8] = v1282;
          STACK[0x2FB8] = v1263;
          STACK[0x2FC8] = v1271;
          STACK[0x2FA8] = v1281;
          STACK[0x2FB0] = v1272;
          STACK[0x2FC0] = v1283;
          STACK[0x3A38] = v1278;
          STACK[0x2FA0] = v1292;
          STACK[0x30C8] = v1270;
          STACK[0x2FD0] = v939;
          STACK[0x2F90] = v1290;
          STACK[0x3318] = v1270;
          STACK[0x3A30] = v1282;
          STACK[0x2F88] = v1289;
          STACK[0x2F80] = v1270;
          STACK[0x3328] = v1276;
          STACK[0x2F98] = v927;
          v1293 = STACK[0x39A8];
          STACK[0x2F70] = STACK[0x39A8];
          STACK[0x37F0] = v1291;
          STACK[0x2F68] = v1293;
          STACK[0x2F60] = v1273;
          STACK[0x2F50] = v1292;
          STACK[0x2F48] = v1284;
          STACK[0x37E8] = v1283;
          STACK[0x2F58] = v1281;
          STACK[0x2F40] = v1287;
          STACK[0x2F78] = v1286;
          STACK[0x2F38] = v1280;
          STACK[0x2F30] = v1276;
          STACK[0x3A08] = v917;
          STACK[0x3990] = v939;
          return (STACK[0x3AE8])();
        }

        if (v940 != 83)
        {
          goto LABEL_4941;
        }

        STACK[0x3830] = v917;
        STACK[0x30A0] = v971;
        STACK[0x30C0] = v964;
        v1125 = STACK[0x3998];
        STACK[0x3960] = STACK[0x3998];
        STACK[0x3A18] = v917;
        STACK[0x39C8] = v970;
        STACK[0x30B8] = v936;
        STACK[0x3A68] = v924;
        STACK[0x39B8] = v964;
        STACK[0x3818] = v936;
        STACK[0x30A8] = v917;
        STACK[0x3058] = v971;
        STACK[0x3028] = v970;
        STACK[0x3018] = v970;
        STACK[0x3048] = v924;
        STACK[0x3008] = v1125;
        STACK[0x3808] = v964;
        STACK[0x3800] = v924;
        STACK[0x38E0] = v936;
        STACK[0x34F8] = v970;
        STACK[0x34F0] = v1125;
        STACK[0x2FB0] = v1125;
        STACK[0x3508] = v971;
        STACK[0x36F8] = v971;
        STACK[0x3828] = v939;
        STACK[0x38E8] = v939;
        STACK[0x2FD0] = v939;
        STACK[0x3810] = v927;
        STACK[0x39B0] = v927;
        STACK[0x2F98] = v927;
        STACK[0x30B0] = v913;
        STACK[0x3908] = v913;
        STACK[0x37F0] = v913;
        STACK[0x3930] = v973;
        STACK[0x3530] = v973;
        STACK[0x2F70] = v973;
        STACK[0x2F68] = v973;
        STACK[0x38F0] = v919;
        STACK[0x2FC0] = v919;
        STACK[0x37E8] = v919;
        v1126 = STACK[0x3A80];
        STACK[0x3970] = STACK[0x3A80];
        STACK[0x2FA8] = v1126;
        STACK[0x34E0] = v1126;
        STACK[0x2F58] = v1126;
        STACK[0x3820] = v930;
        STACK[0x3A10] = v930;
        STACK[0x2F78] = v930;
        STACK[0x3020] = v969;
        STACK[0x3968] = v969;
        STACK[0x34E8] = v969;
        STACK[0x2F38] = v969;
        LODWORD(STACK[0x3900]) = 84;
        LODWORD(STACK[0x3A28]) = 6;
        LODWORD(STACK[0x37F8]) = v967;
        v1127 = STACK[0x1370];
        STACK[0x2848] = STACK[0x1370];
        v1128 = STACK[0x1108];
        STACK[0x3A20] = STACK[0x1108];
        v1129 = STACK[0x13F0];
        STACK[0x2840] = STACK[0x13F0];
        v1130 = STACK[0x10D0];
        STACK[0x3090] = STACK[0x10D0];
        v1131 = STACK[0x10E0];
        STACK[0x3098] = STACK[0x10E0];
        v1132 = STACK[0x13A0];
        STACK[0x2838] = STACK[0x13A0];
        v1133 = STACK[0x10F8];
        STACK[0x3488] = STACK[0x10F8];
        v1134 = STACK[0x10D8];
        STACK[0x3470] = STACK[0x10D8];
        STACK[0x3088] = v1133;
        v1135 = STACK[0xCA8];
        STACK[0x3080] = STACK[0xCA8];
        v1136 = STACK[0x3AD0];
        STACK[0x28C0] = STACK[0x3AD0];
        STACK[0x3078] = v925;
        v1137 = STACK[0x3AC8];
        STACK[0x29B8] = STACK[0x3AC8];
        v1138 = STACK[0x850];
        STACK[0x3070] = STACK[0x850];
        v1139 = STACK[0xCB0];
        STACK[0x3068] = STACK[0xCB0];
        STACK[0x28D8] = v1139;
        v1140 = STACK[0x1100];
        STACK[0x2830] = STACK[0x1100];
        STACK[0x3060] = v1138;
        STACK[0x3050] = v1134;
        STACK[0x3898] = v1128;
        STACK[0x3040] = v1127;
        STACK[0x3480] = v1130;
        STACK[0x2828] = v1134;
        STACK[0x3038] = v1128;
        STACK[0x3030] = v933;
        v1141 = STACK[0x1378];
        STACK[0x3A40] = STACK[0x1378];
        STACK[0x3320] = v1132;
        STACK[0x3010] = v1132;
        STACK[0x3510] = v1136;
        STACK[0x2850] = v1131;
        STACK[0x28D0] = v1135;
        STACK[0x3478] = v1127;
        STACK[0x28C8] = v1138;
        STACK[0x3468] = v1132;
        STACK[0x3500] = v1137;
        STACK[0x3330] = v1133;
        STACK[0x3000] = v1141;
        STACK[0x3340] = v1129;
        v1142 = STACK[0x10C8];
        STACK[0x2FF8] = STACK[0x10C8];
        STACK[0x2860] = v1133;
        STACK[0x3338] = v1134;
        STACK[0x3938] = v933;
        STACK[0x2808] = v933;
        STACK[0x3A70] = v1142;
        STACK[0x36A0] = v1130;
        STACK[0x3370] = v1127;
        STACK[0x2FE8] = v1136;
        STACK[0x2FE0] = v1127;
        STACK[0x30D0] = v1131;
        STACK[0x3A88] = v1131;
        STACK[0x2FF0] = v1137;
        STACK[0x2FD8] = v1142;
        STACK[0x2820] = v1141;
        STACK[0x3958] = v925;
        STACK[0x2800] = v925;
        STACK[0x2FB8] = v1141;
        STACK[0x2FC8] = v1128;
        STACK[0x2858] = v1128;
        STACK[0x3A38] = v1131;
        STACK[0x2FA0] = v1129;
        STACK[0x30C8] = v1140;
        STACK[0x3A58] = v1141;
        STACK[0x2F90] = v1139;
        STACK[0x3318] = v1140;
        STACK[0x3A30] = v1142;
        STACK[0x2F88] = v1135;
        STACK[0x2F80] = v1140;
        STACK[0x3328] = v1130;
        STACK[0x3368] = v1129;
        STACK[0x3360] = v1140;
        STACK[0x3308] = v1142;
        STACK[0x2F60] = v1134;
        STACK[0x2F50] = v1129;
        STACK[0x2F48] = v1132;
        STACK[0x2F40] = v1133;
        STACK[0x2F30] = v1130;
LABEL_5454:
        v4191 = STACK[0x2E48];
        v4192 = STACK[0x2EE0];
        v4193 = STACK[0x2E48] + STACK[0x2EE0] > 0xFFFFFFFFFFFFFFCALL;
        STACK[0x3AE8] = STACK[0x2E48] + STACK[0x2EE0];
        if (__CFADD__(v4191, v4192))
        {
          v4193 = 1;
        }

        LODWORD(STACK[0x3AA0]) = v4193;
        v4194 = STACK[0x2F18];
        v4195 = STACK[0x2E28];
        v4196 = STACK[0x2E28] + STACK[0x2F18] > 0xFFFFFFFFFFFFFFD0;
        STACK[0x3A98] = STACK[0x2E28] + STACK[0x2F18];
        if (__CFADD__(v4195, v4194))
        {
          v4196 = 1;
        }

        LODWORD(STACK[0x3A90]) = v4196;
        v4197 = STACK[0x2F00];
        v4198 = STACK[0x2E20];
        v4199 = STACK[0x2E20] + STACK[0x2F00] > 0xFFFFFFFFFFFFFFDELL;
        STACK[0x3A80] = STACK[0x2E20] + STACK[0x2F00];
        v4200 = __CFADD__(v4198, v4197) || v4199;
        v4201 = STACK[0x2CD8] + STACK[0x2CA0];
        v4202 = __CFADD__(STACK[0x2CD8], STACK[0x2CA0]) || STACK[0x2CD8] + STACK[0x2CA0] > 0xFFFFFFFFFFFFFFEELL;
        v4203 = STACK[0x2D08] + STACK[0x2C08];
        v4204 = __CFADD__(STACK[0x2D08], STACK[0x2C08]) || STACK[0x2D08] + STACK[0x2C08] > 0xFFFFFFFFFFFFFFF0;
        v4205 = STACK[0x2C50] + STACK[0x2CE0];
        v4206 = __CFADD__(STACK[0x2C50], STACK[0x2CE0]) || STACK[0x2C50] + STACK[0x2CE0] > 0xFFFFFFFFFFFFFFF6;
        v4207 = STACK[0x2C28] + STACK[0x2D58];
        v4208 = __CFADD__(STACK[0x2C28], STACK[0x2D58]) || STACK[0x2C28] + STACK[0x2D58] > 0xFFFFFFFFFFFFFFD2;
        v4209 = STACK[0x2CC0] + STACK[0x2C98];
        v4210 = __CFADD__(STACK[0x2CC0], STACK[0x2C98]) || STACK[0x2CC0] + STACK[0x2C98] == -1;
        v4211 = STACK[0x2C10] + STACK[0x2CD0];
        v4212 = __CFADD__(STACK[0x2C10], STACK[0x2CD0]) || STACK[0x2C10] + STACK[0x2CD0] > 0xFFFFFFFFFFFFFFEELL;
        v4213 = STACK[0x2CB8] + STACK[0x2C88];
        v4214 = __CFADD__(STACK[0x2CB8], STACK[0x2C88]) || STACK[0x2CB8] + STACK[0x2C88] > 0xFFFFFFFFFFFFFFF6;
        v4215 = STACK[0x2C30] + STACK[0x2CF0];
        v4216 = __CFADD__(STACK[0x2C30], STACK[0x2CF0]) || STACK[0x2C30] + STACK[0x2CF0] > 0xFFFFFFFFFFFFFFF0;
        v4217 = STACK[0x2C38] + STACK[0x2D00];
        v4218 = __CFADD__(STACK[0x2C38], STACK[0x2D00]);
        v4219 = STACK[0x2D10] + STACK[0x2CB0];
        v4220 = __CFADD__(STACK[0x2D10], STACK[0x2CB0]);
        v4221 = v4219 == -1 || v4220;
        v4222 = STACK[0x37F8];
        v4223 = (LODWORD(STACK[0x37F8]) - 6353);
        v1886 = __CFADD__(STACK[0x2D30], STACK[0x2CA8]);
        v4224 = STACK[0x2D30] + STACK[0x2CA8];
        STACK[0x3A50] = v4223;
        v4225 = v1886;
        if (v4224 > v4223 - 13479)
        {
          v4225 = 1;
        }

        if (v4225)
        {
          v4226 = 3;
        }

        else
        {
          v4226 = 0;
        }

        STACK[0x3A48] = v4226 + v4224;
        STACK[0x39D8] = v4221 + v4219;
        v4227 = STACK[0x2CE8] + STACK[0x2C68];
        v4228 = __CFADD__(STACK[0x2CE8], STACK[0x2C68]);
        if (v4217 > 0xFFFFFFFFFFFFFFFALL || v4218)
        {
          v4230 = 5;
        }

        else
        {
          v4230 = 0;
        }

        STACK[0x39D0] = v4230 + v4217;
        v4231 = 15;
        if (!v4216)
        {
          v4231 = 0;
        }

        STACK[0x38D8] = v4231 + v4215;
        if (v4214)
        {
          v4232 = 9;
        }

        else
        {
          v4232 = 0;
        }

        STACK[0x38D0] = v4232 + v4213;
        v4233 = STACK[0x2C40] + STACK[0x2D40];
        v4234 = __CFADD__(STACK[0x2C40], STACK[0x2D40]);
        v4235 = STACK[0x2D18] + STACK[0x2C90];
        v4236 = __CFADD__(STACK[0x2D18], STACK[0x2C90]);
        v4237 = 17;
        if (!v4212)
        {
          v4237 = 0;
        }

        if (v4233 > 0xFFFFFFFFFFFFFFDELL)
        {
          v4234 = 1;
        }

        v4238 = STACK[0x2C58] + STACK[0x2D38];
        v4239 = __CFADD__(STACK[0x2C58], STACK[0x2D38]);
        v4240 = STACK[0x2C60] + STACK[0x2D48];
        v4241 = __CFADD__(STACK[0x2C60], STACK[0x2D48]);
        STACK[0x38C8] = v4237 + v4211;
        if (v4234)
        {
          v4242 = 33;
        }

        else
        {
          v4242 = 0;
        }

        STACK[0x38C0] = v4242 + v4233;
        if (v4227 > 0xFFFFFFFFFFFFFFD8)
        {
          v4228 = 1;
        }

        v4243 = STACK[0x2D20] + STACK[0x2C70];
        v4244 = __CFADD__(STACK[0x2D20], STACK[0x2C70]);
        if (v4235 > 0xFFFFFFFFFFFFFFFALL)
        {
          v4236 = 1;
        }

        if (v4228)
        {
          v4245 = 39;
        }

        else
        {
          v4245 = 0;
        }

        v4246 = v4240 > 0xFFFFFFFFFFFFFFCALL || v4241;
        STACK[0x38B8] = v4245 + v4227;
        if (v4246)
        {
          v4247 = 53;
        }

        else
        {
          v4247 = 0;
        }

        v4248 = v4238 > 0xFFFFFFFFFFFFFFD0 || v4239;
        if (v4243 > 0xFFFFFFFFFFFFFFFCLL)
        {
          v4244 = 1;
        }

        v4152 = !v4208;
        v4249 = 45;
        if (v4152)
        {
          v4249 = 0;
        }

        if (v4248)
        {
          v4250 = 47;
        }

        else
        {
          v4250 = 0;
        }

        STACK[0x38B0] = v4250 + v4238;
        v4251 = STACK[0x2C18] + STACK[0x2CC8];
        v4252 = __CFADD__(STACK[0x2C18], STACK[0x2CC8]);
        if (v4244)
        {
          v4253 = 3;
        }

        else
        {
          v4253 = 0;
        }

        STACK[0x38A8] = v4249 + v4207;
        STACK[0x3890] = v4210 + v4209;
        STACK[0x3888] = v4247 + v4240;
        STACK[0x3880] = v4253 + v4243;
        if (v4236)
        {
          v4254 = 5;
        }

        else
        {
          v4254 = 0;
        }

        STACK[0x3878] = v4254 + v4235;
        v4255 = STACK[0x2CF8] + STACK[0x2C78];
        v4256 = __CFADD__(STACK[0x2CF8], STACK[0x2C78]);
        if (v4206)
        {
          v4257 = 9;
        }

        else
        {
          v4257 = 0;
        }

        v4258 = STACK[0x2D28] + STACK[0x2C80];
        v4259 = __CFADD__(STACK[0x2D28], STACK[0x2C80]);
        v4260 = STACK[0x2C48] + STACK[0x2D50];
        v4261 = __CFADD__(STACK[0x2C48], STACK[0x2D50]);
        v4262 = v4251 > 0xFFFFFFFFFFFFFFD2 || v4252;
        if (v4202)
        {
          v4263 = 17;
        }

        else
        {
          v4263 = 0;
        }

        if (v4204)
        {
          v4264 = 15;
        }

        else
        {
          v4264 = 0;
        }

        if (v4260 > 0xFFFFFFFFFFFFFFDELL)
        {
          v4261 = 1;
        }

        STACK[0x3870] = v4257 + v4205;
        STACK[0x3868] = v4263 + v4201;
        if (v4262)
        {
          v4265 = 45;
        }

        else
        {
          v4265 = 0;
        }

        STACK[0x3860] = v4265 + v4251;
        STACK[0x3858] = v4264 + v4203;
        v4266 = STACK[0x2C20] + STACK[0x2D60];
        v4267 = __CFADD__(STACK[0x2C20], STACK[0x2D60]);
        if (v4255 > 0xFFFFFFFFFFFFFFD0)
        {
          v4256 = 1;
        }

        v4268 = v4258 > 0xFFFFFFFFFFFFFFD8 || v4259;
        if (v4266 > 0xFFFFFFFFFFFFFFCALL)
        {
          v4267 = 1;
        }

        if (v4268)
        {
          v4269 = 39;
        }

        else
        {
          v4269 = 0;
        }

        STACK[0x3850] = v4269 + v4258;
        if (v4261)
        {
          v4270 = 33;
        }

        else
        {
          v4270 = 0;
        }

        STACK[0x3848] = v4270 + v4260;
        if (v4256)
        {
          v4271 = 47;
        }

        else
        {
          v4271 = 0;
        }

        if (v4267)
        {
          v4272 = 53;
        }

        else
        {
          v4272 = 0;
        }

        STACK[0x3840] = v4272 + v4266;
        STACK[0x3838] = v4271 + v4255;
        v4273 = STACK[0x2E18] + STACK[0x2F08];
        v4274 = __CFADD__(STACK[0x2E18], STACK[0x2F08]);
        v4275 = STACK[0x2E68] + STACK[0x2F10];
        LODWORD(v4276) = __CFADD__(STACK[0x2E68], STACK[0x2F10]);
        v4277 = STACK[0x2E38] + STACK[0x2EF0];
        v4278 = __CFADD__(STACK[0x2E38], STACK[0x2EF0]);
        if (v4275 == -1)
        {
          v4276 = 1;
        }

        else
        {
          v4276 = v4276;
        }

        STACK[0x37E0] = v4276 + v4275;
        v4279 = STACK[0x2E50] + STACK[0x2EF8];
        v4280 = __CFADD__(STACK[0x2E50], STACK[0x2EF8]);
        v4281 = STACK[0x2E60] + STACK[0x2ED8];
        v4282 = __CFADD__(STACK[0x2E60], STACK[0x2ED8]);
        v4283 = STACK[0x2E30] + STACK[0x2F20];
        v4284 = __CFADD__(STACK[0x2E30], STACK[0x2F20]);
        if (v4273 > 0xFFFFFFFFFFFFFFFALL)
        {
          v4274 = 1;
        }

        if (v4277 > 0xFFFFFFFFFFFFFFF6)
        {
          v4278 = 1;
        }

        v4285 = STACK[0x2E40] + STACK[0x2EE8];
        v4286 = __CFADD__(STACK[0x2E40], STACK[0x2EE8]);
        if (v4283 > 0xFFFFFFFFFFFFFFFCLL)
        {
          v4284 = 1;
        }

        v4287 = STACK[0x2E58] + STACK[0x2F28];
        v4288 = __CFADD__(STACK[0x2E58], STACK[0x2F28]);
        if (v4274)
        {
          v4289 = 5;
        }

        else
        {
          v4289 = 0;
        }

        if (v4278)
        {
          v4290 = 9;
        }

        else
        {
          v4290 = 0;
        }

        if (v4281 > 0xFFFFFFFFFFFFFFF0)
        {
          v4282 = 1;
        }

        if (v4284)
        {
          v4291 = 3;
        }

        else
        {
          v4291 = 0;
        }

        if (v4285 > 0xFFFFFFFFFFFFFFEELL)
        {
          v4286 = 1;
        }

        if (v4287 > 0xFFFFFFFFFFFFFFD8)
        {
          v4288 = 1;
        }

        STACK[0x37D8] = v4289 + v4273;
        STACK[0x37D0] = v4291 + v4283;
        STACK[0x37C8] = v4290 + v4277;
        if (v4286)
        {
          v4292 = 17;
        }

        else
        {
          v4292 = 0;
        }

        v4293 = v4279 > 0xFFFFFFFFFFFFFFD2 || v4280;
        if (v4282)
        {
          v4294 = 15;
        }

        else
        {
          v4294 = 0;
        }

        if (v4288)
        {
          v4295 = 39;
        }

        else
        {
          v4295 = 0;
        }

        STACK[0x37C0] = v4292 + v4285;
        if (v4200)
        {
          v4296 = 33;
        }

        else
        {
          v4296 = 0;
        }

        STACK[0x37B8] = v4296 + STACK[0x3A80];
        STACK[0x37B0] = v4294 + v4281;
        if (LODWORD(STACK[0x3A90]))
        {
          v4297 = 47;
        }

        else
        {
          v4297 = 0;
        }

        v4152 = LODWORD(STACK[0x3AA0]) == 0;
        STACK[0x37A0] = v4295 + v4287;
        STACK[0x3790] = v4297 + STACK[0x3A98];
        if (v4152)
        {
          v4298 = 0;
        }

        else
        {
          v4298 = 53;
        }

        STACK[0x3788] = v4298 + STACK[0x3AE8];
        if (v4293)
        {
          v4299 = 45;
        }

        else
        {
          v4299 = 0;
        }

        STACK[0x3780] = v4299 + v4279;
        STACK[0x3A98] = STACK[0x3AD0];
        v4300 = STACK[0x3498];
        v4301 = STACK[0x34A0];
        v4302 = STACK[0x34A8];
        v4303 = STACK[0x34B0];
        STACK[0x3AA0] = STACK[0x3AC8];
        v4304 = STACK[0x34B8];
        v4305 = STACK[0x34C0];
        v4306 = STACK[0x34C8];
        v4307 = STACK[0x34D0];
        STACK[0x3AE8] = *(STACK[0x3AC0] + 8 * (v4222 - 8124));
        v4308 = LODWORD(STACK[0x38A0]);
        LODWORD(STACK[0x37F8]) = v4308;
        v4309 = v4308 < 0;
        STACK[0x3698] = STACK[0x3828];
        STACK[0x3550] = STACK[0x3830];
        STACK[0x39A8] = STACK[0x3930];
        STACK[0x3570] = STACK[0x3820];
        STACK[0x3998] = STACK[0x3960];
        STACK[0x3A08] = STACK[0x3A18];
        STACK[0x39A0] = STACK[0x39C8];
        STACK[0x3590] = STACK[0x3810];
        STACK[0x39E8] = STACK[0x3A68];
        STACK[0x39F0] = STACK[0x3908];
        STACK[0x3A00] = STACK[0x39B8];
        STACK[0x3588] = STACK[0x3818];
        STACK[0x39F8] = STACK[0x38F0];
        STACK[0x3A80] = STACK[0x3970];
        STACK[0x39E0] = STACK[0x3A10];
        STACK[0x3A78] = STACK[0x3968];
        STACK[0x3990] = STACK[0x38E8];
        STACK[0x3490] = STACK[0x39B0];
        STACK[0x3578] = STACK[0x3808];
        STACK[0x39C0] = STACK[0x3800];
        STACK[0x3988] = STACK[0x38E0];
        STACK[0x3580] = STACK[0x37F0];
        STACK[0x3568] = STACK[0x37E8];
        v4310 = STACK[0x2C00];
        STACK[0x3408] = STACK[0x2C00];
        if (v4309)
        {
          v4311 = STACK[0x2EA8];
        }

        else
        {
          v4311 = v4310;
        }

        v4312 = STACK[0x2EB8];
        STACK[0x3AC8] = v4307;
        if (v4309)
        {
          v4313 = v4312;
        }

        else
        {
          v4313 = v4307;
        }

        if (v4309)
        {
          v4314 = STACK[0x2DA0];
        }

        else
        {
          v4314 = STACK[0x2D78];
        }

        v4315 = STACK[0x2EC8];
        STACK[0x3528] = v4306;
        if (v4309)
        {
          v4316 = v4315;
        }

        else
        {
          v4316 = v4306;
        }

        if (v4309)
        {
          v4317 = STACK[0x2EA0];
        }

        else
        {
          v4317 = STACK[0x2D68];
        }

        v4318 = STACK[0x2EC0];
        STACK[0x3AD0] = v4302;
        if (v4309)
        {
          v4319 = v4318;
        }

        else
        {
          v4319 = v4302;
        }

        v4320 = STACK[0x2ED0];
        STACK[0x3518] = v4305;
        if (v4309)
        {
          v4321 = v4320;
        }

        else
        {
          v4321 = v4305;
        }

        if (v4309)
        {
          v4322 = STACK[0x2DE0];
        }

        else
        {
          v4322 = STACK[0x2DF8];
        }

        STACK[0x3540] = v4304;
        STACK[0x3520] = v4303;
        STACK[0x3538] = v4301;
        STACK[0x3548] = v4300;
        return (STACK[0x3AE8])(v4311, v4319, v4322, v4316, v4321, v4314, v4317, v4313);
      case 0x6Bu:
        v489 = (LODWORD(STACK[0x3560]) ^ 0x1835) - 17423;
        LODWORD(STACK[0x3A28]) = v489;
        v490 = *(STACK[0x3AC0] + 8 * ((55 * (v489 != 0x1136)) ^ LODWORD(STACK[0x52C])));
        STACK[0x3578] = 0x55D375369E9D4273;
        STACK[0x3590] = 0x763CBA0D8D3C0DB3;
        STACK[0x3570] = 0x6B6DACDBB1B23A60;
        STACK[0x3698] = 0x2A7C4B840EA88E36;
        STACK[0x39E0] = 0x3A2B4DBF7685AA90;
        STACK[0x3990] = 0x2D624A8B717E2EF5;
        STACK[0x3580] = 0xE2EE0ABF51901782;
        STACK[0x3988] = 0x20B24EBF4FF3EC18;
        STACK[0x3908] = 0x875D7880B77E2434;
        STACK[0x3A68] = 0x8A61F9D599FFA3D5;
        STACK[0x3588] = 0xF7EA950B125152D8;
        v491 = STACK[0x27E8];
        v492 = STACK[0x27E0];
        v493 = STACK[0x2818];
        v494 = STACK[0x2810];
        v495 = STACK[0x2780];
        v496 = STACK[0x2778];
        STACK[0x3A38] = v2870;
        v497 = STACK[0x2770];
        v498 = STACK[0x2768];
        STACK[0x3A90] = v2878;
        STACK[0x3A50] = v2873;
        STACK[0x3A30] = v2883;
        STACK[0x3A48] = v2888;
        return v490(v491, v492, v493, v494, v495, v496, v497, v498);
      case 0x6Du:
        v895 = *(STACK[0x3AC0] + 8 * (LODWORD(STACK[0x3560]) + 1997));
        STACK[0x39D8] = STACK[0x2780];
        STACK[0x3888] = STACK[0x3AD8];
        STACK[0x3880] = STACK[0x3AA8];
        STACK[0x39D0] = STACK[0x2768];
        STACK[0x3908] = v2870;
        STACK[0x3878] = STACK[0x3AB8];
        STACK[0x3870] = STACK[0x3940];
        STACK[0x3510] = STACK[0x3AD0];
        STACK[0x3868] = STACK[0x3948];
        STACK[0x3AB8] = STACK[0x2818];
        STACK[0x3500] = STACK[0x3AC8];
        STACK[0x3508] = STACK[0x3558];
        STACK[0x39F0] = STACK[0x27E0];
        STACK[0x3860] = STACK[0x3AB0];
        STACK[0x34F8] = STACK[0x39A0];
        STACK[0x3858] = STACK[0x3950];
        STACK[0x34F0] = STACK[0x3998];
        STACK[0x3AA8] = STACK[0x27E8];
        STACK[0x3530] = STACK[0x39A8];
        STACK[0x34E8] = STACK[0x3A78];
        STACK[0x34E0] = STACK[0x3A80];
        STACK[0x3850] = STACK[0x3910];
        STACK[0x3848] = STACK[0x3918];
        STACK[0x3838] = STACK[0x3920];
        STACK[0x3AB0] = STACK[0x27F0];
        LODWORD(STACK[0x3900]) = STACK[0x36E0];
        STACK[0x39E8] = STACK[0x27F8];
        STACK[0x3840] = STACK[0x3928];
        return v895();
      default:
        v2889 = v2888 * STACK[0x1870];
        v2890 = (v2888 * STACK[0x1870]) >> 64;
        v1886 = __CFADD__(15 * v2890, v2889);
        v2891 = 15 * v2890 + v2889;
        v2892 = (v2890 * 0xFuLL) >> 64;
        if (v1886)
        {
          ++v2892;
        }

        v2893 = 15 * v2892;
        v2894 = v2893 + v2891 > 0xFFFFFFFFFFFFFFF0;
        v1886 = __CFADD__(v2893, v2891);
        v2895 = v2893 + v2891;
        if (v1886 || v2894)
        {
          v2897 = 15;
        }

        else
        {
          v2897 = 0;
        }

        v2898 = v2897 + v2895;
        v2899 = 0x9FEC52B6396CF0C0 * v2898;
        v2900 = (v2898 * 0x9FEC52B6396CF0C0) >> 64;
        v1886 = __CFADD__(15 * v2900, v2899);
        v2901 = 15 * v2900 + v2899;
        v2902 = (v2900 * 0xFuLL) >> 64;
        if (v1886)
        {
          ++v2902;
        }

        v2903 = 15 * v2902;
        v2904 = v2903 + v2901 > 0xFFFFFFFFFFFFFFF0;
        v1886 = __CFADD__(v2903, v2901);
        v2905 = v2903 + v2901;
        if (v1886 || v2904)
        {
          v2907 = 15;
        }

        else
        {
          v2907 = 0;
        }

        v2908 = v2907 + v2905;
        v2909 = 0x7FF97F97F97F97F2 * v2908;
        v2910 = (v2908 * 0x7FF97F97F97F97F2uLL) >> 64;
        v1886 = __CFADD__(15 * v2910, v2909);
        v2911 = 15 * v2910 + v2909;
        v2912 = (v2910 * 0xFuLL) >> 64;
        if (v1886)
        {
          ++v2912;
        }

        v2913 = 15 * v2912;
        v1886 = __CFADD__(v2913, v2911);
        v2914 = v2913 + v2911;
        v2915 = v1886;
        if (v2914 > 0xFFFFFFFFFFFFFFF0)
        {
          v2915 = 1;
        }

        if (v2915)
        {
          v2916 = 15;
        }

        else
        {
          v2916 = 0;
        }

        v2917 = v2916 + v2914;
        if (v2916 + v2914 >= 0xFFFFFFFFFFFFFFCBLL)
        {
          v2918 = 53;
        }

        else
        {
          v2918 = 0;
        }

        v2919 = v2918 + v2917;
        v2920 = 5491200 * v2919;
        v2921 = 53 * ((v2919 * 0x53CA00uLL) >> 64);
        v1886 = __CFADD__(v2921, v2920);
        v2922 = v2921 + v2920;
        if (v1886)
        {
          v2923 = 53;
        }

        else
        {
          v2923 = 0;
        }

        v2924 = (v2923 + v2922) > 0xFFFFFFFFFFFFFFCALL;
        v1886 = __CFADD__(v2923, v2922);
        v2925 = v2923 + v2922;
        v2926 = v2883 * STACK[0x1878];
        v2927 = (v2883 * STACK[0x1878]) >> 64;
        v2928 = v1886 || v2924;
        v1886 = __CFADD__(9 * v2927, v2926);
        v2929 = 9 * v2927 + v2926;
        v2930 = (v2927 * 9uLL) >> 64;
        if (v1886)
        {
          ++v2930;
        }

        v2931 = 9 * v2930;
        v1886 = __CFADD__(v2931, v2929);
        v2932 = v2931 + v2929;
        v2933 = v1886;
        if (v2932 > 0xFFFFFFFFFFFFFFF6)
        {
          v2933 = 1;
        }

        if (v2933)
        {
          v2934 = 9;
        }

        else
        {
          v2934 = 0;
        }

        v2935 = v2934 + v2932;
        v2936 = 0x1513DAB390DF5A9ELL * v2935;
        v2937 = (__PAIR128__(8, 0x1513DAB390DF5A9ELL) * v2935) >> 64;
        v1886 = __CFADD__(v2937, v2936);
        v2938 = v2937 + v2936;
        if (v1886)
        {
          v2939 = 9;
        }

        else
        {
          v2939 = 0;
        }

        v2940 = (v2939 + v2938) > 0xFFFFFFFFFFFFFFF6;
        v1886 = __CFADD__(v2939, v2938);
        v2941 = v2939 + v2938;
        if (v1886 || v2940)
        {
          v2943 = 9;
        }

        else
        {
          v2943 = 0;
        }

        v2944 = v2943 + v2941;
        v1886 = __CFADD__((__PAIR128__(8, 0xD6E38E38E38E38DCLL) * v2944) >> 64, 0xD6E38E38E38E38DCLL * v2944);
        v2945 = (__PAIR128__(v2944, v2944) * __PAIR128__(8, 0xD6E38E38E38E38DCLL)) >> 64;
        v2946 = (((v2944 * 0xD6E38E38E38E38DCLL) >> 64) * 9) >> 64;
        if (v1886)
        {
          ++v2946;
        }

        v2947 = 9 * v2946;
        v1886 = __CFADD__(v2947, v2945);
        v2948 = v2947 + v2945;
        v2949 = v1886;
        if (v2948 > 0xFFFFFFFFFFFFFFF6)
        {
          v2949 = 1;
        }

        if (v2949)
        {
          v2950 = 9;
        }

        else
        {
          v2950 = 0;
        }

        v2951 = v2950 + v2948;
        if (v2950 + v2948 >= 0xFFFFFFFFFFFFFFCBLL)
        {
          v2952 = 53;
        }

        else
        {
          v2952 = 0;
        }

        v2953 = v2952 + v2951;
        v2954 = 4742400 * v2953;
        v2955 = 53 * ((v2953 * 0x485D00uLL) >> 64);
        v1886 = __CFADD__(v2955, v2954);
        v2956 = v2955 + v2954;
        if (v1886)
        {
          v2957 = 53;
        }

        else
        {
          v2957 = 0;
        }

        v2958 = (v2957 + v2956) > 0xFFFFFFFFFFFFFFCALL;
        v1886 = __CFADD__(v2957, v2956);
        v2959 = v2957 + v2956;
        v2960 = v2878 * STACK[0x1890];
        v2961 = (v2878 * STACK[0x1890]) >> 64;
        v2962 = v1886 || v2958;
        v1886 = __CFADD__(5 * v2961, v2960);
        v2963 = 5 * v2961 + v2960;
        v2964 = (v2961 * 5uLL) >> 64;
        if (v1886)
        {
          ++v2964;
        }

        v2965 = 5 * v2964;
        v2966 = v2965 + v2963 > 0xFFFFFFFFFFFFFFFALL;
        v1886 = __CFADD__(v2965, v2963);
        v2967 = v2965 + v2963;
        if (v1886 || v2966)
        {
          v2969 = 5;
        }

        else
        {
          v2969 = 0;
        }

        v2970 = v2969 + v2967;
        v1886 = __CFADD__((__PAIR128__(4, 0xE7CF05C2128E4523) * v2970) >> 64, 0xE7CF05C2128E4523 * v2970);
        v2971 = (__PAIR128__(v2970, v2970) * __PAIR128__(4, 0xE7CF05C2128E4523)) >> 64;
        v2972 = (((v2970 * 0xE7CF05C2128E4523) >> 64) * 5) >> 64;
        if (v1886)
        {
          ++v2972;
        }

        v2973 = 5 * v2972;
        v1886 = __CFADD__(v2973, v2971);
        v2974 = v2973 + v2971;
        v2975 = v1886;
        if (v2974 > 0xFFFFFFFFFFFFFFFALL)
        {
          v2975 = 1;
        }

        if (v2975)
        {
          v2976 = 5;
        }

        else
        {
          v2976 = 0;
        }

        v2977 = v2976 + v2974;
        v1886 = __CFADD__((__PAIR128__(4, 0xD73333333333332FLL) * v2977) >> 64, 0xD73333333333332FLL * v2977);
        v2978 = (__PAIR128__(v2977, v2977) * __PAIR128__(4, 0xD73333333333332FLL)) >> 64;
        v2979 = (((v2977 * 0xD73333333333332FLL) >> 64) * 5) >> 64;
        if (v1886)
        {
          ++v2979;
        }

        v2980 = 5 * v2979;
        v1886 = __CFADD__(v2980, v2978);
        v2981 = v2980 + v2978;
        v2982 = v1886;
        if (v2981 > 0xFFFFFFFFFFFFFFFALL)
        {
          v2982 = 1;
        }

        if (v2982)
        {
          v2983 = 5;
        }

        else
        {
          v2983 = 0;
        }

        v2984 = v2983 + v2981;
        if (v2984 >= 0xFFFFFFFFFFFFFFCBLL)
        {
          v2985 = 53;
        }

        else
        {
          v2985 = 0;
        }

        v2986 = v2985 + v2984;
        v2987 = 4347200 * v2986;
        v2988 = 53 * ((v2986 * 0x425540uLL) >> 64);
        v1886 = __CFADD__(v2988, v2987);
        v2989 = v2988 + v2987;
        if (v1886)
        {
          v2990 = 53;
        }

        else
        {
          v2990 = 0;
        }

        v2991 = (v2990 + v2989) > 0xFFFFFFFFFFFFFFCALL;
        v1886 = __CFADD__(v2990, v2989);
        v2992 = v2990 + v2989;
        v2993 = v2873 * STACK[0x1888];
        v2994 = (v2873 * STACK[0x1888]) >> 64;
        if (v1886)
        {
          v2991 = 1;
        }

        v1886 = __CFADD__(3 * v2994, v2993);
        v2995 = 3 * v2994 + v2993;
        v2996 = (v2994 * 3uLL) >> 64;
        if (v1886)
        {
          ++v2996;
        }

        v2997 = 3 * v2996;
        v1886 = __CFADD__(v2997, v2995);
        v2998 = v2997 + v2995;
        v2999 = v1886;
        if (v2998 > 0xFFFFFFFFFFFFFFFCLL)
        {
          v2999 = 1;
        }

        if (v2999)
        {
          v3000 = 3;
        }

        else
        {
          v3000 = 0;
        }

        v3001 = v3000 + v2998;
        v1886 = __CFADD__((__PAIR128__(2, 0x98FDEF4CCE72A7B8) * v3001) >> 64, 0x98FDEF4CCE72A7B8 * v3001);
        v3002 = (__PAIR128__(v3001, v3001) * __PAIR128__(2, 0x98FDEF4CCE72A7B8)) >> 64;
        v3003 = (((v3001 * 0x98FDEF4CCE72A7B8) >> 64) * 3) >> 64;
        if (v1886)
        {
          ++v3003;
        }

        v3004 = 3 * v3003;
        v1886 = __CFADD__(v3004, v3002);
        v3005 = v3004 + v3002;
        v3006 = v1886;
        if (v3005 > 0xFFFFFFFFFFFFFFFCLL)
        {
          v3006 = 1;
        }

        if (v3006)
        {
          v3007 = 3;
        }

        else
        {
          v3007 = 0;
        }

        v3008 = v3007 + v3005;
        v1886 = __CFADD__((__PAIR128__(2, 0xF638E38E38E38E36) * v3008) >> 64, 0xF638E38E38E38E36 * v3008);
        v3009 = (__PAIR128__(v3008, v3008) * __PAIR128__(2, 0xF638E38E38E38E36)) >> 64;
        v3010 = (((v3008 * 0xF638E38E38E38E36) >> 64) * 3) >> 64;
        if (v1886)
        {
          ++v3010;
        }

        v3011 = 3 * v3010;
        v3012 = (v3011 + v3009) > 0xFFFFFFFFFFFFFFFCLL;
        v1886 = __CFADD__(v3011, v3009);
        v3013 = v3011 + v3009;
        if (v1886 || v3012)
        {
          v3015 = 3;
        }

        else
        {
          v3015 = 0;
        }

        v3016 = v3015 + v3013;
        if (v3016 >= 0xFFFFFFFFFFFFFFCBLL)
        {
          v3017 = 53;
        }

        else
        {
          v3017 = 0;
        }

        v3018 = v3017 + v3016;
        v3019 = 4173312 * v3018;
        v3020 = 53 * ((v3018 * 0x3FAE00uLL) >> 64);
        v1886 = __CFADD__(v3020, v3019);
        v3021 = v3020 + v3019;
        if (v1886)
        {
          v3022 = 53;
        }

        else
        {
          v3022 = 0;
        }

        v3023 = (v3022 + v3021) > 0xFFFFFFFFFFFFFFCALL;
        v1886 = __CFADD__(v3022, v3021);
        v3024 = v3022 + v3021;
        v3025 = v2870 * STACK[0x1868];
        v3026 = (v2870 * STACK[0x1868]) >> 64;
        if (v1886)
        {
          v3023 = 1;
        }

        v3027 = __CFADD__(__CFADD__(v3026, v3025), v3026 + v3025);
        v3028 = __CFADD__(v3026, v3025) + v3026 + v3025 == -1 || v3027;
        v3029 = v3026 + v3025 + __CFADD__(v3026, v3025) + v3028;
        v3030 = (v3029 * 0x5CAECC2F8BD67150uLL) >> 64;
        v3031 = 0x5CAECC2F8BD67150 * v3029;
        v3032 = __CFADD__(__CFADD__(v3030, v3031), v3030 + v3031);
        v3033 = __CFADD__(v3030, v3031) + v3030 + v3031 == -1 || v3032;
        v3034 = v3030 + v3031 + __CFADD__(v3030, v3031) + v3033;
        v3035 = (v3034 * 0xDBB6DB6DB6DB6DB6) >> 64;
        v3036 = 0xDBB6DB6DB6DB6DB6 * v3034;
        v3037 = __CFADD__(__CFADD__(v3035, v3036), v3035 + v3036);
        v3038 = __CFADD__(v3035, v3036) + v3035 + v3036 == -1 || v3037;
        v3039 = v3035 + v3036 + __CFADD__(v3035, v3036) + v3038;
        if (v3039 >= 0xFFFFFFFFFFFFFFCBLL)
        {
          v3040 = 53;
        }

        else
        {
          v3040 = 0;
        }

        v3041 = v3040 + v3039;
        v3042 = 4012800 * v3041;
        v3043 = 53 * ((v3041 * 0x3D3B00uLL) >> 64);
        v1886 = __CFADD__(v3043, v3042);
        v3044 = v3043 + v3042;
        if (v1886)
        {
          v3045 = 53;
        }

        else
        {
          v3045 = 0;
        }

        v1886 = __CFADD__(v3045, v3044);
        v3046 = v3045 + v3044;
        v3047 = v1886;
        if (v3046 > 0xFFFFFFFFFFFFFFCALL)
        {
          v3047 = 1;
        }

        if (v3047)
        {
          v3048 = 53;
        }

        else
        {
          v3048 = 0;
        }

        v3049 = v3048 + v3046;
        if (v3049 >= 0xFFFFFFFFFFFFFFCBLL)
        {
          v3050 = 53;
        }

        else
        {
          v3050 = 0;
        }

        v3051 = v3050 + v3049;
        v3052 = v3024 + v3051;
        if (v3023)
        {
          v3053 = 53;
        }

        else
        {
          v3053 = 0;
        }

        v3054 = v3052 + v3053;
        if (v2991)
        {
          v3055 = 53;
        }

        else
        {
          v3055 = 0;
        }

        v3056 = v3055 + v2992;
        if (v3054 < v3051 || v3054 > 0xFFFFFFFFFFFFFFCALL)
        {
          v3058 = 53;
        }

        else
        {
          v3058 = 0;
        }

        v3059 = v3058 + v3054;
        v3060 = v3056 + v3059 > 0xFFFFFFFFFFFFFFCALL;
        v1886 = __CFADD__(v3056, v3059);
        v3061 = v3056 + v3059;
        if (v1886 || v3060)
        {
          v3063 = 53;
        }

        else
        {
          v3063 = 0;
        }

        v3064 = v3063 + v3061;
        if (v2962)
        {
          v3065 = 53;
        }

        else
        {
          v3065 = 0;
        }

        v3066 = v3065 + v2959;
        v3067 = v3066 + v3064 > 0xFFFFFFFFFFFFFFCALL;
        v1886 = __CFADD__(v3066, v3064);
        v3068 = v3066 + v3064;
        if (v1886)
        {
          v3067 = 1;
        }

        if (v3067)
        {
          v3069 = 53;
        }

        else
        {
          v3069 = 0;
        }

        v3070 = v3069 + v3068;
        if (v2928)
        {
          v3071 = 53;
        }

        else
        {
          v3071 = 0;
        }

        v3072 = v3071 + v2925;
        v3073 = v3072 + v3070 > 0xFFFFFFFFFFFFFFCALL;
        v1886 = __CFADD__(v3072, v3070);
        v3074 = v3072 + v3070;
        v3075 = STACK[0x3AE8] * STACK[0x1880];
        v3076 = (STACK[0x3AE8] * STACK[0x1880]) >> 64;
        if (v1886)
        {
          v3073 = 1;
        }

        v1886 = __CFADD__(53 * v3076, v3075);
        v3077 = 53 * v3076 + v3075;
        v3078 = (v3076 * 0x35uLL) >> 64;
        if (v1886)
        {
          ++v3078;
        }

        v3079 = 53 * v3078;
        v1886 = __CFADD__(v3079, v3077);
        v3080 = v3079 + v3077;
        v3081 = v1886;
        if (v3080 > 0xFFFFFFFFFFFFFFCALL)
        {
          v3081 = 1;
        }

        if (v3081)
        {
          v3082 = 53;
        }

        else
        {
          v3082 = 0;
        }

        v3083 = v3082 + v3080;
        if (v3073)
        {
          v3084 = 53;
        }

        else
        {
          v3084 = 0;
        }

        v3085 = v3084 + v3074;
        v3086 = 0xA64A3E2F1B4DE8E6 * v3085;
        v3087 = (v3085 * 0xA64A3E2F1B4DE8E6) >> 64;
        v1886 = __CFADD__(53 * v3087, v3086);
        v3088 = 53 * v3087 + v3086;
        v3089 = (v3087 * 0x35uLL) >> 64;
        if (v1886)
        {
          ++v3089;
        }

        v3090 = 53 * v3089;
        v1886 = __CFADD__(v3090, v3088);
        v3091 = v3090 + v3088;
        v3092 = v1886;
        if (v3091 > 0xFFFFFFFFFFFFFFCALL)
        {
          v3092 = 1;
        }

        if (v3092)
        {
          v3093 = 53;
        }

        else
        {
          v3093 = 0;
        }

        v3094 = v3093 + v3091;
        v1886 = __CFADD__(v3083, v3094);
        v3095 = v3083 + v3094;
        v3096 = v1886;
        if (v3095 > 0xFFFFFFFFFFFFFFCALL)
        {
          v3096 = 1;
        }

        if (v3096)
        {
          v3097 = 53;
        }

        else
        {
          v3097 = 0;
        }

        v3098 = v3097 + v3095;
        v3099 = 0x59708602BDC08F49 * v3098;
        v3100 = (v3098 * 0x59708602BDC08F49uLL) >> 64;
        v1886 = __CFADD__(53 * v3100, v3099);
        v3101 = 53 * v3100 + v3099;
        v3102 = (v3100 * 0x35uLL) >> 64;
        if (v1886)
        {
          ++v3102;
        }

        v3103 = 53 * v3102;
        v3104 = (v3103 + v3101) > 0xFFFFFFFFFFFFFFCALL;
        v1886 = __CFADD__(v3103, v3101);
        v3105 = v3103 + v3101;
        v3106 = v1886 || v3104;
        if (v2917 >= 0xFFFFFFFFFFFFFFD1)
        {
          v3107 = 47;
        }

        else
        {
          v3107 = 0;
        }

        v3108 = v3107 + v2917;
        v3109 = 3230304 * v3108;
        v3110 = 47 * ((v3108 * 0x314A60uLL) >> 64);
        v1886 = __CFADD__(v3110, v3109);
        v3111 = v3110 + v3109;
        if (v1886)
        {
          v3112 = 47;
        }

        else
        {
          v3112 = 0;
        }

        v3113 = (v3112 + v3111) > 0xFFFFFFFFFFFFFFD0;
        v1886 = __CFADD__(v3112, v3111);
        v3114 = v3112 + v3111;
        v3115 = v1886 || v3113;
        if (v2984 >= 0xFFFFFFFFFFFFFFD1)
        {
          v3116 = 47;
        }

        else
        {
          v3116 = 0;
        }

        v3117 = v3116 + v2984;
        v3118 = 2461184 * v3117;
        v3119 = 47 * ((v3117 * 0x258E00uLL) >> 64);
        v1886 = __CFADD__(v3119, v3118);
        v3120 = v3119 + v3118;
        if (v1886)
        {
          v3121 = 47;
        }

        else
        {
          v3121 = 0;
        }

        v3122 = (v3121 + v3120) > 0xFFFFFFFFFFFFFFD0;
        v1886 = __CFADD__(v3121, v3120);
        v3123 = v3121 + v3120;
        v3124 = v1886 || v3122;
        if (v3016 >= 0xFFFFFFFFFFFFFFD1)
        {
          v3125 = 47;
        }

        else
        {
          v3125 = 0;
        }

        v3126 = v3125 + v3016;
        v3127 = 2349312 * v3126;
        v3128 = 47 * ((v3126 * 0x23D900uLL) >> 64);
        v1886 = __CFADD__(v3128, v3127);
        v3129 = v3128 + v3127;
        if (v1886)
        {
          v3130 = 47;
        }

        else
        {
          v3130 = 0;
        }

        v3131 = (v3130 + v3129) > 0xFFFFFFFFFFFFFFD0;
        v1886 = __CFADD__(v3130, v3129);
        v3132 = v3130 + v3129;
        v3133 = v1886 || v3131;
        if (v3039 >= 0xFFFFFFFFFFFFFFD1)
        {
          v3134 = 47;
        }

        else
        {
          v3134 = 0;
        }

        v3135 = v3134 + v3039;
        v3136 = 2247168 * v3135;
        v3137 = 47 * ((v3135 * 0x224A00uLL) >> 64);
        v1886 = __CFADD__(v3137, v3136);
        v3138 = v3137 + v3136;
        if (v1886)
        {
          v3139 = 47;
        }

        else
        {
          v3139 = 0;
        }

        v3140 = (v3139 + v3138) > 0xFFFFFFFFFFFFFFD0;
        v1886 = __CFADD__(v3139, v3138);
        v3141 = v3139 + v3138;
        if (v1886 || v3140)
        {
          v3143 = 47;
        }

        else
        {
          v3143 = 0;
        }

        v3144 = v3143 + v3141;
        if (v3133)
        {
          v3145 = 47;
        }

        else
        {
          v3145 = 0;
        }

        if (v3144 >= 0xFFFFFFFFFFFFFFD1)
        {
          v3146 = 47;
        }

        else
        {
          v3146 = 0;
        }

        v3147 = v3146 + v3144;
        v3148 = v3132 + v3147 + v3145;
        if (v3148 <= 0xFFFFFFFFFFFFFFD0 && v3148 >= v3147)
        {
          v3150 = 0;
        }

        else
        {
          v3150 = 47;
        }

        v3151 = v3150 + v3148;
        if (v3124)
        {
          v3152 = 47;
        }

        else
        {
          v3152 = 0;
        }

        v3153 = v3152 + v3123;
        v3154 = v3153 + v3151 > 0xFFFFFFFFFFFFFFD0;
        v1886 = __CFADD__(v3153, v3151);
        v3155 = v3153 + v3151;
        if (v1886)
        {
          v3154 = 1;
        }

        if (v2951 >= 0xFFFFFFFFFFFFFFD1)
        {
          v3156 = 47;
        }

        else
        {
          v3156 = 0;
        }

        v4152 = !v3154;
        v3157 = v3156 + v2951;
        v3158 = 2720256 * (v3156 + v2951);
        v3159 = 47 * ((v3157 * 0x298200uLL) >> 64);
        if (v4152)
        {
          v3160 = 0;
        }

        else
        {
          v3160 = 47;
        }

        v1886 = __CFADD__(v3159, v3158);
        v3161 = v3159 + v3158;
        if (v1886)
        {
          v3162 = 47;
        }

        else
        {
          v3162 = 0;
        }

        v1886 = __CFADD__(v3162, v3161);
        v3163 = v3162 + v3161;
        v3164 = v3160 + v3155;
        v3165 = v1886;
        if (v3163 > 0xFFFFFFFFFFFFFFD0)
        {
          v3165 = 1;
        }

        if (v3165)
        {
          v3166 = 47;
        }

        else
        {
          v3166 = 0;
        }

        v3167 = v3166 + v3163;
        v3168 = v3167 + v3164 > 0xFFFFFFFFFFFFFFD0;
        v1886 = __CFADD__(v3167, v3164);
        v3169 = v3167 + v3164;
        if (v1886 || v3168)
        {
          v3171 = 47;
        }

        else
        {
          v3171 = 0;
        }

        v3172 = v3171 + v3169;
        if (v3115)
        {
          v3173 = 47;
        }

        else
        {
          v3173 = 0;
        }

        v3174 = v3173 + v3114;
        v1886 = __CFADD__(v3174, v3172);
        v3175 = v3174 + v3172;
        v3176 = v1886;
        if (v3175 > 0xFFFFFFFFFFFFFFD0)
        {
          v3176 = 1;
        }

        if (v3176)
        {
          v3177 = 47;
        }

        else
        {
          v3177 = 0;
        }

        v3178 = v3177 + v3175;
        v3179 = 0xF9CF898C924065FBLL * v3178;
        v3180 = (v3178 * 0xF9CF898C924065FBLL) >> 64;
        v1886 = __CFADD__(47 * v3180, v3179);
        v3181 = 47 * v3180 + v3179;
        v3182 = (v3180 * 0x2FuLL) >> 64;
        if (v1886)
        {
          ++v3182;
        }

        v3183 = 47 * v3182;
        v3184 = v3183 + v3181 > 0xFFFFFFFFFFFFFFD0;
        v1886 = __CFADD__(v3183, v3181);
        v3185 = v3183 + v3181;
        v3186 = STACK[0x3A40] * STACK[0x18A8];
        v3187 = (STACK[0x3A40] * STACK[0x18A8]) >> 64;
        if (v1886)
        {
          v3184 = 1;
        }

        v1886 = __CFADD__(47 * v3187, v3186);
        v3188 = 47 * v3187 + v3186;
        v3189 = (v3187 * 0x2FuLL) >> 64;
        if (v1886)
        {
          ++v3189;
        }

        v3190 = 47 * v3189;
        v3191 = v3190 + v3188 > 0xFFFFFFFFFFFFFFD0;
        v1886 = __CFADD__(v3190, v3188);
        v3192 = v3190 + v3188;
        if (v1886 || v3191)
        {
          v3194 = 47;
        }

        else
        {
          v3194 = 0;
        }

        v3195 = v3194 + v3192;
        if (v3184)
        {
          v3196 = 47;
        }

        else
        {
          v3196 = 0;
        }

        v3197 = v3196 + v3185;
        v1886 = __CFADD__(v3195, v3197);
        v3198 = v3195 + v3197;
        v3199 = v1886;
        if (v3198 > 0xFFFFFFFFFFFFFFD0)
        {
          v3199 = 1;
        }

        if (v3199)
        {
          v3200 = 47;
        }

        else
        {
          v3200 = 0;
        }

        v3201 = v3200 + v3198;
        v3202 = 0x5C1DC82ED83E4DC6 * v3201;
        v3203 = (v3201 * 0x5C1DC82ED83E4DC6uLL) >> 64;
        v1886 = __CFADD__(47 * v3203, v3202);
        v3204 = 47 * v3203 + v3202;
        v3205 = (v3203 * 0x2FuLL) >> 64;
        if (v1886)
        {
          ++v3205;
        }

        v3206 = 47 * v3205;
        v1886 = __CFADD__(v3206, v3204);
        v3207 = v3206 + v3204;
        v3208 = v1886;
        if (v3207 > 0xFFFFFFFFFFFFFFD0)
        {
          v3208 = 1;
        }

        if (v3106)
        {
          v3209 = 53;
        }

        else
        {
          v3209 = 0;
        }

        v3210 = v3209 + v3105;
        v3211 = 0x74605CE0F105902CLL * v3210;
        v3212 = (v3210 * 0x74605CE0F105902CuLL) >> 64;
        v1886 = __CFADD__(53 * v3212, v3211);
        v3213 = 53 * v3212 + v3211;
        v3214 = (v3212 * 0x35uLL) >> 64;
        if (v1886)
        {
          ++v3214;
        }

        v3215 = 53 * v3214;
        v1886 = __CFADD__(v3215, v3213);
        v3216 = v3215 + v3213;
        v3217 = v1886;
        if (v3216 > 0xFFFFFFFFFFFFFFCALL)
        {
          v3217 = 1;
        }

        if (v3217)
        {
          v3218 = 53;
        }

        else
        {
          v3218 = 0;
        }

        v3219 = v3218 + v3216;
        if (v3208)
        {
          v3220 = 47;
        }

        else
        {
          v3220 = 0;
        }

        v3221 = v3220 + v3207;
        if (v3219 >= 0xFFFFFFFFFFFFFFD1)
        {
          v3222 = 47;
        }

        else
        {
          v3222 = 0;
        }

        v3223 = v3222 + v3219;
        v3224 = 0xF9CF898C924065FBLL * v3223;
        v3225 = (v3223 * 0xF9CF898C924065FBLL) >> 64;
        v1886 = __CFADD__(47 * v3225, v3224);
        v3226 = 47 * v3225 + v3224;
        v3227 = (v3225 * 0x2FuLL) >> 64;
        if (v1886)
        {
          ++v3227;
        }

        v3228 = 47 * v3227;
        v1886 = __CFADD__(v3228, v3226);
        v3229 = v3228 + v3226;
        v3230 = v1886;
        if (v3229 > 0xFFFFFFFFFFFFFFD0)
        {
          v3230 = 1;
        }

        if (v3230)
        {
          v3231 = 47;
        }

        else
        {
          v3231 = 0;
        }

        v3232 = v3231 + v3229;
        v1886 = __CFADD__(v3221, v3232);
        v3233 = v3221 + v3232;
        v3234 = v1886;
        if (v3233 > 0xFFFFFFFFFFFFFFD0)
        {
          v3234 = 1;
        }

        if (v3234)
        {
          v3235 = 47;
        }

        else
        {
          v3235 = 0;
        }

        v3236 = v3235 + v3233;
        v3237 = 0xD55555555555552ELL * v3236;
        v3238 = (v3236 * 0xD55555555555552ELL) >> 64;
        v1886 = __CFADD__(47 * v3238, v3237);
        v3239 = 47 * v3238 + v3237;
        v3240 = (v3238 * 0x2FuLL) >> 64;
        if (v1886)
        {
          ++v3240;
        }

        v3241 = 47 * v3240;
        v3242 = v3241 + v3239 > 0xFFFFFFFFFFFFFFD0;
        v1886 = __CFADD__(v3241, v3239);
        v3243 = v3241 + v3239;
        v3244 = v1886 || v3242;
        if (v2951 >= 0xFFFFFFFFFFFFFFEFLL)
        {
          v3245 = 17;
        }

        else
        {
          v3245 = 0;
        }

        v3246 = v3245 + v2951;
        v3247 = 5376 * v3246;
        v3248 = (__PAIR128__(16, 5376) * v3246) >> 64;
        v1886 = __CFADD__(v3248, v3247);
        v3249 = v3248 + v3247;
        if (v1886)
        {
          v3250 = 17;
        }

        else
        {
          v3250 = 0;
        }

        v3251 = (v3250 + v3249) > 0xFFFFFFFFFFFFFFEELL;
        v1886 = __CFADD__(v3250, v3249);
        v3252 = v3250 + v3249;
        v3253 = v1886 || v3251;
        if (v2984 >= 0xFFFFFFFFFFFFFFEFLL)
        {
          v3254 = 17;
        }

        else
        {
          v3254 = 0;
        }

        v3255 = v3254 + v2984;
        v3256 = 3584 * v3255;
        v3257 = (__PAIR128__(16, 3584) * v3255) >> 64;
        v1886 = __CFADD__(v3257, v3256);
        v3258 = v3257 + v3256;
        if (v1886)
        {
          v3259 = 17;
        }

        else
        {
          v3259 = 0;
        }

        v3260 = (v3259 + v3258) > 0xFFFFFFFFFFFFFFEELL;
        v1886 = __CFADD__(v3259, v3258);
        v3261 = v3259 + v3258;
        v3262 = v1886 || v3260;
        if (v3016 >= 0xFFFFFFFFFFFFFFEFLL)
        {
          v3263 = 17;
        }

        else
        {
          v3263 = 0;
        }

        v3264 = v3263 + v3016;
        v3265 = 3 * v3264;
        v3266 = (__PAIR128__(16, 3072) * v3264) >> 64;
        v1886 = __CFADD__(v3266, v3265 << 10);
        v3267 = v3266 + (v3265 << 10);
        if (v1886)
        {
          v3268 = 17;
        }

        else
        {
          v3268 = 0;
        }

        v3269 = (v3268 + v3267) > 0xFFFFFFFFFFFFFFEELL;
        v1886 = __CFADD__(v3268, v3267);
        v3270 = v3268 + v3267;
        v3271 = v1886 || v3269;
        if (v3039 >= 0xFFFFFFFFFFFFFFEFLL)
        {
          v3272 = 17;
        }

        else
        {
          v3272 = 0;
        }

        v3273 = v3272 + v3039;
        v3274 = 2688 * v3273;
        v3275 = (__PAIR128__(16, 2688) * v3273) >> 64;
        v1886 = __CFADD__(v3275, v3274);
        v3276 = v3275 + v3274;
        if (v1886)
        {
          v3277 = 17;
        }

        else
        {
          v3277 = 0;
        }

        v1886 = __CFADD__(v3277, v3276);
        v3278 = v3277 + v3276;
        v3279 = v1886;
        if (v3278 > 0xFFFFFFFFFFFFFFEELL)
        {
          v3279 = 1;
        }

        if (v3279)
        {
          v3280 = 17;
        }

        else
        {
          v3280 = 0;
        }

        v3281 = v3280 + v3278;
        if (v3281 >= 0xFFFFFFFFFFFFFFEFLL)
        {
          v3282 = 17;
        }

        else
        {
          v3282 = 0;
        }

        v3283 = v3282 + v3281;
        v3284 = v3270 + v3283;
        if (v3271)
        {
          v3285 = 17;
        }

        else
        {
          v3285 = 0;
        }

        v3286 = v3284 + v3285;
        if (v3286 > 0xFFFFFFFFFFFFFFEELL || v3283 > v3286)
        {
          v3288 = 17;
        }

        else
        {
          v3288 = 0;
        }

        v3289 = v3288 + v3286;
        if (v3262)
        {
          v3290 = 17;
        }

        else
        {
          v3290 = 0;
        }

        v3291 = v3290 + v3261;
        v1886 = __CFADD__(v3291, v3289);
        v3292 = v3291 + v3289;
        v3293 = v1886;
        if (v3292 > 0xFFFFFFFFFFFFFFEELL)
        {
          v3293 = 1;
        }

        if (v3293)
        {
          v3294 = 17;
        }

        else
        {
          v3294 = 0;
        }

        v3295 = v3294 + v3292;
        if (v3253)
        {
          v3296 = 17;
        }

        else
        {
          v3296 = 0;
        }

        v3297 = v3296 + v3252;
        v3298 = v3297 + v3295 > 0xFFFFFFFFFFFFFFEELL;
        v1886 = __CFADD__(v3297, v3295);
        v3299 = v3297 + v3295;
        if (v1886)
        {
          v3298 = 1;
        }

        if (v2917 >= 0xFFFFFFFFFFFFFFEFLL)
        {
          v3300 = 17;
        }

        else
        {
          v3300 = 0;
        }

        v4152 = !v3298;
        v3301 = v3300 + v2917;
        v3302 = 21504 * (v3300 + v2917);
        v3303 = (__PAIR128__(16, 21504) * v3301) >> 64;
        if (v4152)
        {
          v3304 = 0;
        }

        else
        {
          v3304 = 17;
        }

        v1886 = __CFADD__(v3303, v3302);
        v3305 = v3303 + v3302;
        v3306 = v3304 + v3299;
        if (v1886)
        {
          v3307 = 17;
        }

        else
        {
          v3307 = 0;
        }

        v1886 = __CFADD__(v3307, v3305);
        v3308 = v3307 + v3305;
        v3309 = v1886;
        if (v3308 > 0xFFFFFFFFFFFFFFEELL)
        {
          v3309 = 1;
        }

        if (v3309)
        {
          v3310 = 17;
        }

        else
        {
          v3310 = 0;
        }

        v3311 = v3310 + v3308;
        v3312 = v3311 + v3306 > 0xFFFFFFFFFFFFFFEELL;
        v1886 = __CFADD__(v3311, v3306);
        v3313 = v3311 + v3306;
        if (v1886 || v3312)
        {
          v3315 = 17;
        }

        else
        {
          v3315 = 0;
        }

        v3316 = v3315 + v3313;
        v1886 = __CFADD__((__PAIR128__(16, 0xBCE0B40AAD3903CALL) * v3316) >> 64, 0xBCE0B40AAD3903CALL * v3316);
        v3317 = (__PAIR128__(v3316, v3316) * __PAIR128__(16, 0xBCE0B40AAD3903CALL)) >> 64;
        v3318 = (((v3316 * 0xBCE0B40AAD3903CALL) >> 64) * 0x11) >> 64;
        if (v1886)
        {
          ++v3318;
        }

        v3319 = 17 * v3318;
        v3320 = (v3319 + v3317) > 0xFFFFFFFFFFFFFFEELL;
        v1886 = __CFADD__(v3319, v3317);
        v3321 = v3319 + v3317;
        v3322 = STACK[0x3AA0] * STACK[0x1898];
        v3323 = (STACK[0x3AA0] * STACK[0x1898]) >> 64;
        if (v1886)
        {
          v3320 = 1;
        }

        v1886 = __CFADD__(17 * v3323, v3322);
        v3324 = 17 * v3323 + v3322;
        v3325 = (v3323 * 0x11uLL) >> 64;
        if (v1886)
        {
          ++v3325;
        }

        v3326 = 17 * v3325;
        v3327 = v3326 + v3324 > 0xFFFFFFFFFFFFFFEELL;
        v1886 = __CFADD__(v3326, v3324);
        v3328 = v3326 + v3324;
        if (v1886 || v3327)
        {
          v3330 = 17;
        }

        else
        {
          v3330 = 0;
        }

        v3331 = v3330 + v3328;
        if (v3320)
        {
          v3332 = 17;
        }

        else
        {
          v3332 = 0;
        }

        v3333 = v3332 + v3321;
        v1886 = __CFADD__(v3331, v3333);
        v3334 = v3331 + v3333;
        v3335 = v1886;
        if (v3334 > 0xFFFFFFFFFFFFFFEELL)
        {
          v3335 = 1;
        }

        if (v3335)
        {
          v3336 = 17;
        }

        else
        {
          v3336 = 0;
        }

        v3337 = v3336 + v3334;
        v1886 = __CFADD__((__PAIR128__(16, 0x260186186186185FLL) * v3337) >> 64, 0x260186186186185FLL * v3337);
        v3338 = (__PAIR128__(v3337, v3337) * __PAIR128__(16, 0x260186186186185FLL)) >> 64;
        v3339 = (((v3337 * 0x260186186186185FuLL) >> 64) * 0x11) >> 64;
        if (v1886)
        {
          ++v3339;
        }

        v3340 = 17 * v3339;
        v1886 = __CFADD__(v3340, v3338);
        v3341 = v3340 + v3338;
        v3342 = v1886;
        if (v3341 > 0xFFFFFFFFFFFFFFEELL)
        {
          v3342 = 1;
        }

        if (v3342)
        {
          v3343 = 17;
        }

        else
        {
          v3343 = 0;
        }

        v3344 = v3343 + v3341;
        if (v3219 >= 0xFFFFFFFFFFFFFFEFLL)
        {
          v3345 = 17;
        }

        else
        {
          v3345 = 0;
        }

        v3346 = v3345 + v3219;
        v1886 = __CFADD__((__PAIR128__(16, 0xBCE0B40AAD3903CALL) * v3346) >> 64, 0xBCE0B40AAD3903CALL * v3346);
        v3347 = (__PAIR128__(v3346, v3346) * __PAIR128__(16, 0xBCE0B40AAD3903CALL)) >> 64;
        v3348 = (((v3346 * 0xBCE0B40AAD3903CALL) >> 64) * 0x11) >> 64;
        if (v1886)
        {
          ++v3348;
        }

        v3349 = 17 * v3348;
        v1886 = __CFADD__(v3349, v3347);
        v3350 = v3349 + v3347;
        v3351 = v1886;
        if (v3350 > 0xFFFFFFFFFFFFFFEELL)
        {
          v3351 = 1;
        }

        if (v3351)
        {
          v3352 = 17;
        }

        else
        {
          v3352 = 0;
        }

        v3353 = v3352 + v3350;
        v1886 = __CFADD__(v3344, v3353);
        v3354 = v3344 + v3353;
        v3355 = v1886;
        if (v3354 > 0xFFFFFFFFFFFFFFEELL)
        {
          v3355 = 1;
        }

        if (v3355)
        {
          v3356 = 17;
        }

        else
        {
          v3356 = 0;
        }

        v3357 = v3356 + v3354;
        v1886 = __CFADD__((__PAIR128__(16, 0xF8E38E38E38E38D3) * v3357) >> 64, 0xF8E38E38E38E38D3 * v3357);
        v3358 = (__PAIR128__(v3357, v3357) * __PAIR128__(16, 0xF8E38E38E38E38D3)) >> 64;
        v3359 = (((v3357 * 0xF8E38E38E38E38D3) >> 64) * 0x11) >> 64;
        if (v1886)
        {
          ++v3359;
        }

        v3360 = 17 * v3359;
        v3361 = (v3360 + v3358) > 0xFFFFFFFFFFFFFFEELL;
        v1886 = __CFADD__(v3360, v3358);
        v3362 = v3360 + v3358;
        if (v1886 || v3361)
        {
          v3364 = 17;
        }

        else
        {
          v3364 = 0;
        }

        v3365 = v3364 + v3362;
        if (v3244)
        {
          v3366 = 47;
        }

        else
        {
          v3366 = 0;
        }

        v3367 = v3366 + v3243;
        if (v3365 >= 0xFFFFFFFFFFFFFFD1)
        {
          v3368 = 47;
        }

        else
        {
          v3368 = 0;
        }

        v3369 = v3368 + v3365;
        v1886 = v3367 >= v3369;
        v3370 = v3367 - v3369;
        if (v1886)
        {
          v3371 = 0;
        }

        else
        {
          v3371 = -47;
        }

        v3372 = v3370 + v3371;
        v3373 = 0x888888888888887 * v3372;
        v3374 = (v3372 * 0x888888888888887uLL) >> 64;
        v1886 = __CFADD__(47 * v3374, v3373);
        v3375 = 47 * v3374 + v3373;
        v3376 = (v3374 * 0x2FuLL) >> 64;
        if (v1886)
        {
          ++v3376;
        }

        v3377 = 47 * v3376;
        STACK[0x3AE8] = v3377 + v3375;
        v3378 = __CFADD__(v3377, v3375) || (v3377 + v3375) > 0xFFFFFFFFFFFFFFD0;
        if (v3219 >= 0xFFFFFFFFFFFFFFD3)
        {
          v3379 = 45;
        }

        else
        {
          v3379 = 0;
        }

        v3380 = v3379 + v3219;
        v3381 = 0xB1035F48A597370CLL * v3380;
        v3382 = (v3380 * 0xB1035F48A597370CLL) >> 64;
        v1886 = __CFADD__(45 * v3382, v3381);
        v3383 = 45 * v3382 + v3381;
        v3384 = (v3382 * 0x2DuLL) >> 64;
        if (v1886)
        {
          ++v3384;
        }

        v3385 = 45 * v3384;
        v3386 = v3385 + v3383 > 0xFFFFFFFFFFFFFFD2;
        v1886 = __CFADD__(v3385, v3383);
        v3387 = v3385 + v3383;
        v3388 = v1886 || v3386;
        if (v2951 >= 0xFFFFFFFFFFFFFFD3)
        {
          v3389 = 45;
        }

        else
        {
          v3389 = 0;
        }

        v3390 = v3389 + v2951;
        v3391 = 2217600 * v3390;
        v3392 = 45 * ((v3390 * 0x21D680uLL) >> 64);
        v1886 = __CFADD__(v3392, v3391);
        v3393 = v3392 + v3391;
        if (v1886)
        {
          v3394 = 45;
        }

        else
        {
          v3394 = 0;
        }

        v3395 = (v3394 + v3393) > 0xFFFFFFFFFFFFFFD2;
        v1886 = __CFADD__(v3394, v3393);
        v3396 = v3394 + v3393;
        v3397 = v1886 || v3395;
        if (v3039 >= 0xFFFFFFFFFFFFFFD3)
        {
          v3398 = 45;
        }

        else
        {
          v3398 = 0;
        }

        v3399 = v3398 + v3039;
        v3400 = 1814400 * v3399;
        v3401 = 45 * ((v3399 * 0x1BAF80uLL) >> 64);
        if (v3016 >= 0xFFFFFFFFFFFFFFD3)
        {
          v3402 = 45;
        }

        else
        {
          v3402 = 0;
        }

        v1886 = __CFADD__(v3401, v3400);
        v3403 = v3401 + v3400;
        if (v1886)
        {
          v3404 = 45;
        }

        else
        {
          v3404 = 0;
        }

        v1886 = __CFADD__(v3404, v3403);
        v3405 = v3404 + v3403;
        v3406 = v1886;
        if (v3405 > 0xFFFFFFFFFFFFFFD2)
        {
          v3406 = 1;
        }

        v4152 = v3406 == 0;
        v3407 = v3402 + v3016;
        v3408 = 1900800 * (v3402 + v3016);
        v3409 = 45 * ((v3407 * 0x1D0100uLL) >> 64);
        if (v4152)
        {
          v3410 = 0;
        }

        else
        {
          v3410 = 45;
        }

        v1886 = __CFADD__(v3409, v3408);
        v3411 = v3409 + v3408;
        v3412 = v3410 + v3405;
        if (v1886)
        {
          v3413 = 45;
        }

        else
        {
          v3413 = 0;
        }

        v1886 = __CFADD__(v3413, v3411);
        v3414 = v3413 + v3411;
        v3415 = v1886;
        if (v3414 > 0xFFFFFFFFFFFFFFD2)
        {
          v3415 = 1;
        }

        if (v3412 >= 0xFFFFFFFFFFFFFFD3)
        {
          v3416 = 45;
        }

        else
        {
          v3416 = 0;
        }

        v3417 = v3416 + v3412;
        v3418 = v3414 + v3417;
        if (v3415)
        {
          v3419 = 45;
        }

        else
        {
          v3419 = 0;
        }

        v3420 = v3418 + v3419;
        if (v3420 <= 0xFFFFFFFFFFFFFFD2 && v3420 >= v3417)
        {
          v3422 = 0;
        }

        else
        {
          v3422 = 45;
        }

        v3423 = v3422 + v3420;
        if (v2984 >= 0xFFFFFFFFFFFFFFD3)
        {
          v3424 = 45;
        }

        else
        {
          v3424 = 0;
        }

        v3425 = v3424 + v2984;
        v3426 = 1995840 * v3425;
        v3427 = 45 * ((v3425 * 0x1E7440uLL) >> 64);
        v1886 = __CFADD__(v3427, v3426);
        v3428 = v3427 + v3426;
        if (v1886)
        {
          v3429 = 45;
        }

        else
        {
          v3429 = 0;
        }

        v1886 = __CFADD__(v3429, v3428);
        v3430 = v3429 + v3428;
        v3431 = v1886;
        if (v3430 > 0xFFFFFFFFFFFFFFD2)
        {
          v3431 = 1;
        }

        if (v3431)
        {
          v3432 = 45;
        }

        else
        {
          v3432 = 0;
        }

        v3433 = v3432 + v3430;
        v3434 = v3433 + v3423 > 0xFFFFFFFFFFFFFFD2;
        v1886 = __CFADD__(v3433, v3423);
        v3435 = v3433 + v3423;
        v3436 = v1886 || v3434;
        if (v2917 >= 0xFFFFFFFFFFFFFFD3)
        {
          v3437 = 45;
        }

        else
        {
          v3437 = 0;
        }

        if (v3436)
        {
          v3438 = 45;
        }

        else
        {
          v3438 = 0;
        }

        v3439 = v3438 + v3435;
        if (v3397)
        {
          v3440 = 45;
        }

        else
        {
          v3440 = 0;
        }

        v3441 = v3440 + v3396;
        v1886 = __CFADD__(v3441, v3439);
        v3442 = v3441 + v3439;
        v3443 = 2661120 * (v3437 + v2917);
        v3444 = 45 * (((v3437 + v2917) * 0x289B00uLL) >> 64);
        v3445 = v1886;
        v1886 = __CFADD__(v3444, v3443);
        v3446 = v3444 + v3443;
        if (v1886)
        {
          v3447 = 45;
        }

        else
        {
          v3447 = 0;
        }

        v1886 = __CFADD__(v3447, v3446);
        v3448 = v3447 + v3446;
        v3449 = v1886;
        if (v3442 > 0xFFFFFFFFFFFFFFD2)
        {
          v3445 = 1;
        }

        if (v3448 > 0xFFFFFFFFFFFFFFD2)
        {
          v3449 = 1;
        }

        if (v3449)
        {
          v3450 = 45;
        }

        else
        {
          v3450 = 0;
        }

        if (v3445)
        {
          v3451 = 45;
        }

        else
        {
          v3451 = 0;
        }

        v3452 = v3451 + v3442;
        v3453 = v3450 + v3448;
        v3454 = v3453 + v3452 > 0xFFFFFFFFFFFFFFD2;
        v1886 = __CFADD__(v3453, v3452);
        v3455 = v3453 + v3452;
        v3456 = STACK[0x3A88] * STACK[0x18A0];
        v3457 = (STACK[0x3A88] * STACK[0x18A0]) >> 64;
        if (v1886)
        {
          v3454 = 1;
        }

        v1886 = __CFADD__(45 * v3457, v3456);
        v3458 = 45 * v3457 + v3456;
        v3459 = (v3457 * 0x2DuLL) >> 64;
        if (v1886)
        {
          ++v3459;
        }

        v3460 = 45 * v3459;
        v3461 = v3460 + v3458 > 0xFFFFFFFFFFFFFFD2;
        v1886 = __CFADD__(v3460, v3458);
        v3462 = v3460 + v3458;
        if (v1886 || v3461)
        {
          v3464 = 45;
        }

        else
        {
          v3464 = 0;
        }

        v3465 = v3464 + v3462;
        if (v3454)
        {
          v3466 = 45;
        }

        else
        {
          v3466 = 0;
        }

        v3467 = v3466 + v3455;
        v3468 = 0xB1035F48A597370CLL * v3467;
        v3469 = (v3467 * 0xB1035F48A597370CLL) >> 64;
        v1886 = __CFADD__(45 * v3469, v3468);
        v3470 = 45 * v3469 + v3468;
        v3471 = (v3469 * 0x2DuLL) >> 64;
        if (v1886)
        {
          ++v3471;
        }

        v3472 = 45 * v3471;
        v1886 = __CFADD__(v3472, v3470);
        v3473 = v3472 + v3470;
        v3474 = v1886;
        if (v3473 > 0xFFFFFFFFFFFFFFD2)
        {
          v3474 = 1;
        }

        if (v3474)
        {
          v3475 = 45;
        }

        else
        {
          v3475 = 0;
        }

        v3476 = v3475 + v3473;
        v3477 = v3465 + v3476 > 0xFFFFFFFFFFFFFFD2;
        v1886 = __CFADD__(v3465, v3476);
        v3478 = v3465 + v3476;
        if (v1886 || v3477)
        {
          v3480 = 45;
        }

        else
        {
          v3480 = 0;
        }

        v3481 = v3480 + v3478;
        v3482 = 0xD122545C17BA3DF4 * v3481;
        v3483 = (v3481 * 0xD122545C17BA3DF4) >> 64;
        v1886 = __CFADD__(45 * v3483, v3482);
        v3484 = 45 * v3483 + v3482;
        v3485 = (v3483 * 0x2DuLL) >> 64;
        if (v1886)
        {
          ++v3485;
        }

        v3486 = 45 * v3485;
        v3487 = v3486 + v3484 > 0xFFFFFFFFFFFFFFD2;
        v1886 = __CFADD__(v3486, v3484);
        v3488 = v3486 + v3484;
        if (v1886 || v3487)
        {
          v3490 = 45;
        }

        else
        {
          v3490 = 0;
        }

        v3491 = v3490 + v3488;
        if (v3388)
        {
          v3492 = 45;
        }

        else
        {
          v3492 = 0;
        }

        v3493 = v3492 + v3387;
        v1886 = __CFADD__(v3491, v3493);
        v3494 = v3491 + v3493;
        v3495 = v1886;
        if (v3494 > 0xFFFFFFFFFFFFFFD2)
        {
          v3495 = 1;
        }

        if (v3495)
        {
          v3496 = 45;
        }

        else
        {
          v3496 = 0;
        }

        v3497 = v3496 + v3494;
        v3498 = 0x5FFFFFFFFFFFFFEFLL * v3497;
        v3499 = (v3497 * 0x5FFFFFFFFFFFFFEFuLL) >> 64;
        v1886 = __CFADD__(45 * v3499, v3498);
        v3500 = 45 * v3499 + v3498;
        v3501 = (v3499 * 0x2DuLL) >> 64;
        if (v1886)
        {
          ++v3501;
        }

        v3502 = 45 * v3501;
        v3503 = (v3502 + v3500) > 0xFFFFFFFFFFFFFFD2;
        v1886 = __CFADD__(v3502, v3500);
        v3504 = v3502 + v3500;
        if (v1886 || v3503)
        {
          v3506 = 45;
        }

        else
        {
          v3506 = 0;
        }

        v3507 = v3506 + v3504;
        if (v3365 >= 0xFFFFFFFFFFFFFFD3)
        {
          v3508 = 45;
        }

        else
        {
          v3508 = 0;
        }

        v3509 = v3508 + v3365;
        v1886 = v3507 >= v3509;
        v3510 = v3507 - v3509;
        if (v1886)
        {
          v3511 = 0;
        }

        else
        {
          v3511 = -45;
        }

        v3512 = v3510 + v3511;
        v3513 = 0x924924924924923 * v3512;
        v3514 = (v3512 * 0x924924924924923uLL) >> 64;
        v1886 = __CFADD__(45 * v3514, v3513);
        v3515 = 45 * v3514 + v3513;
        v3516 = (v3514 * 0x2DuLL) >> 64;
        if (v1886)
        {
          ++v3516;
        }

        v3517 = 45 * v3516;
        v3518 = (v3517 + v3515) > 0xFFFFFFFFFFFFFFD2;
        v1886 = __CFADD__(v3517, v3515);
        v3519 = v3517 + v3515;
        if (v1886)
        {
          v3518 = 1;
        }

        if (v2917 >= 0xFFFFFFFFFFFFFFDFLL)
        {
          v3520 = 33;
        }

        else
        {
          v3520 = 0;
        }

        v3521 = v3520 + v2917;
        v3522 = 645120 * v3521;
        v3523 = (__PAIR128__(32, 645120) * v3521) >> 64;
        v1886 = __CFADD__(v3523, v3522);
        v3524 = v3523 + v3522;
        if (v1886)
        {
          v3525 = 33;
        }

        else
        {
          v3525 = 0;
        }

        v3526 = (v3525 + v3524) > 0xFFFFFFFFFFFFFFDELL;
        v1886 = __CFADD__(v3525, v3524);
        v3527 = v3525 + v3524;
        v3528 = v1886 || v3526;
        if (v2951 >= 0xFFFFFFFFFFFFFFDFLL)
        {
          v3529 = 33;
        }

        else
        {
          v3529 = 0;
        }

        v3530 = v3529 + v2951;
        v3531 = 483840 * v3530;
        v3532 = (__PAIR128__(32, 483840) * v3530) >> 64;
        v1886 = __CFADD__(v3532, v3531);
        v3533 = v3532 + v3531;
        if (v1886)
        {
          v3534 = 33;
        }

        else
        {
          v3534 = 0;
        }

        v3535 = (v3534 + v3533) > 0xFFFFFFFFFFFFFFDELL;
        v1886 = __CFADD__(v3534, v3533);
        v3536 = v3534 + v3533;
        v3537 = v1886 || v3535;
        if (v3016 >= 0xFFFFFFFFFFFFFFDFLL)
        {
          v3538 = 33;
        }

        else
        {
          v3538 = 0;
        }

        v3539 = v3538 + v3016;
        v3540 = 387072 * v3539;
        v3541 = (__PAIR128__(32, 387072) * v3539) >> 64;
        v1886 = __CFADD__(v3541, v3540);
        v3542 = v3541 + v3540;
        if (v1886)
        {
          v3543 = 33;
        }

        else
        {
          v3543 = 0;
        }

        v3544 = (v3543 + v3542) > 0xFFFFFFFFFFFFFFDELL;
        v1886 = __CFADD__(v3543, v3542);
        v3545 = v3543 + v3542;
        v3546 = v1886 || v3544;
        if (v3039 >= 0xFFFFFFFFFFFFFFDFLL)
        {
          v3547 = 33;
        }

        else
        {
          v3547 = 0;
        }

        v3548 = v3547 + v3039;
        v3549 = 362880 * v3548;
        v3550 = (__PAIR128__(32, 362880) * v3548) >> 64;
        v1886 = __CFADD__(v3550, v3549);
        v3551 = v3550 + v3549;
        if (v1886)
        {
          v3552 = 33;
        }

        else
        {
          v3552 = 0;
        }

        v3553 = (v3552 + v3551) > 0xFFFFFFFFFFFFFFDELL;
        v1886 = __CFADD__(v3552, v3551);
        v3554 = v3552 + v3551;
        v3555 = v1886 || v3553;
        if (v2984 >= 0xFFFFFFFFFFFFFFDFLL)
        {
          v3556 = 33;
        }

        else
        {
          v3556 = 0;
        }

        if (v3555)
        {
          v3557 = 33;
        }

        else
        {
          v3557 = 0;
        }

        v3558 = v3557 + v3554;
        if (v3546)
        {
          v3559 = 33;
        }

        else
        {
          v3559 = 0;
        }

        if (v3558 >= 0xFFFFFFFFFFFFFFDFLL)
        {
          v3560 = 33;
        }

        else
        {
          v3560 = 0;
        }

        v3561 = v3560 + v3558;
        v3562 = v3545 + v3561 + v3559;
        v3563 = v3562 <= 0xFFFFFFFFFFFFFFDELL && v3562 >= v3561;
        v3564 = 414720 * (v3556 + v2984);
        v3565 = 33 * (((v3556 + v2984) * 0x65400uLL) >> 64);
        if (v3563)
        {
          v3566 = 0;
        }

        else
        {
          v3566 = 33;
        }

        v1886 = __CFADD__(v3565, v3564);
        v3567 = v3565 + v3564;
        if (v1886)
        {
          v3568 = 33;
        }

        else
        {
          v3568 = 0;
        }

        v1886 = __CFADD__(v3568, v3567);
        v3569 = v3568 + v3567;
        v3570 = v3566 + v3562;
        v3571 = v1886;
        if (v3569 > 0xFFFFFFFFFFFFFFDELL)
        {
          v3571 = 1;
        }

        if (v3571)
        {
          v3572 = 33;
        }

        else
        {
          v3572 = 0;
        }

        v3573 = v3572 + v3569;
        v3574 = v3573 + v3570 > 0xFFFFFFFFFFFFFFDELL;
        v1886 = __CFADD__(v3573, v3570);
        v3575 = v3573 + v3570;
        v3576 = STACK[0x3A58] * STACK[0x18B0];
        v3577 = (STACK[0x3A58] * STACK[0x18B0]) >> 64;
        if (v1886)
        {
          v3574 = 1;
        }

        v1886 = __CFADD__(33 * v3577, v3576);
        v3578 = 33 * v3577 + v3576;
        v3579 = (v3577 * 0x21uLL) >> 64;
        if (v1886)
        {
          ++v3579;
        }

        v3580 = 33 * v3579;
        v3581 = v3580 + v3578 > 0xFFFFFFFFFFFFFFDELL;
        v1886 = __CFADD__(v3580, v3578);
        v3582 = v3580 + v3578;
        if (v1886 || v3581)
        {
          v3584 = 33;
        }

        else
        {
          v3584 = 0;
        }

        v3585 = v3584 + v3582;
        if (v3574)
        {
          v3586 = 33;
        }

        else
        {
          v3586 = 0;
        }

        v3587 = v3586 + v3575;
        if (v3537)
        {
          v3588 = 33;
        }

        else
        {
          v3588 = 0;
        }

        v3589 = v3588 + v3536;
        v1886 = __CFADD__(v3589, v3587);
        v3590 = v3589 + v3587;
        v3591 = v1886;
        if (v3590 > 0xFFFFFFFFFFFFFFDELL)
        {
          v3591 = 1;
        }

        if (v3591)
        {
          v3592 = 33;
        }

        else
        {
          v3592 = 0;
        }

        v3593 = v3592 + v3590;
        if (v3528)
        {
          v3594 = 33;
        }

        else
        {
          v3594 = 0;
        }

        v3595 = v3594 + v3527;
        v1886 = __CFADD__(v3595, v3593);
        v3596 = v3595 + v3593;
        v3597 = v1886;
        if (v3596 > 0xFFFFFFFFFFFFFFDELL)
        {
          v3597 = 1;
        }

        if (v3597)
        {
          v3598 = 33;
        }

        else
        {
          v3598 = 0;
        }

        v3599 = v3598 + v3596;
        v1886 = __CFADD__((__PAIR128__(32, 0xD2087261F2F13621) * v3599) >> 64, 0xD2087261F2F13621 * v3599);
        v3600 = (__PAIR128__(v3599, v3599) * __PAIR128__(32, 0xD2087261F2F13621)) >> 64;
        v3601 = (((v3599 * 0xD2087261F2F13621) >> 64) * 0x21) >> 64;
        if (v1886)
        {
          ++v3601;
        }

        v3602 = 33 * v3601;
        v1886 = __CFADD__(v3602, v3600);
        v3603 = v3602 + v3600;
        v3604 = v1886;
        if (v3603 > 0xFFFFFFFFFFFFFFDELL)
        {
          v3604 = 1;
        }

        if (v3604)
        {
          v3605 = 33;
        }

        else
        {
          v3605 = 0;
        }

        v3606 = v3605 + v3603;
        v1886 = __CFADD__(v3585, v3606);
        v3607 = v3585 + v3606;
        v3608 = v1886;
        if (v3607 > 0xFFFFFFFFFFFFFFDELL)
        {
          v3608 = 1;
        }

        if (v3608)
        {
          v3609 = 33;
        }

        else
        {
          v3609 = 0;
        }

        v3610 = v3609 + v3607;
        v1886 = __CFADD__((__PAIR128__(32, 0xBF751FE036E6FC90) * v3610) >> 64, 0xBF751FE036E6FC90 * v3610);
        v3611 = (__PAIR128__(v3610, v3610) * __PAIR128__(32, 0xBF751FE036E6FC90)) >> 64;
        v3612 = (((v3610 * 0xBF751FE036E6FC90) >> 64) * 0x21) >> 64;
        if (v1886)
        {
          ++v3612;
        }

        v3613 = 33 * v3612;
        v1886 = __CFADD__(v3613, v3611);
        v3614 = v3613 + v3611;
        v3615 = v1886;
        if (v3614 > 0xFFFFFFFFFFFFFFDELL)
        {
          v3615 = 1;
        }

        if (v3615)
        {
          v3616 = 33;
        }

        else
        {
          v3616 = 0;
        }

        v3617 = v3616 + v3614;
        if (v3219 >= 0xFFFFFFFFFFFFFFDFLL)
        {
          v3618 = 33;
        }

        else
        {
          v3618 = 0;
        }

        v3619 = v3618 + v3219;
        v1886 = __CFADD__((__PAIR128__(32, 0xD2087261F2F13621) * v3619) >> 64, 0xD2087261F2F13621 * v3619);
        v3620 = (__PAIR128__(v3619, v3619) * __PAIR128__(32, 0xD2087261F2F13621)) >> 64;
        v3621 = (((v3619 * 0xD2087261F2F13621) >> 64) * 0x21) >> 64;
        if (v1886)
        {
          ++v3621;
        }

        v3622 = 33 * v3621;
        v1886 = __CFADD__(v3622, v3620);
        v3623 = v3622 + v3620;
        v3624 = v1886;
        if (v3623 > 0xFFFFFFFFFFFFFFDELL)
        {
          v3624 = 1;
        }

        if (v3624)
        {
          v3625 = 33;
        }

        else
        {
          v3625 = 0;
        }

        v3626 = v3625 + v3623;
        v3627 = v3617 + v3626 > 0xFFFFFFFFFFFFFFDELL;
        v1886 = __CFADD__(v3617, v3626);
        v3628 = v3617 + v3626;
        if (v1886 || v3627)
        {
          v3630 = 33;
        }

        else
        {
          v3630 = 0;
        }

        v3631 = v3630 + v3628;
        v1886 = __CFADD__((__PAIR128__(32, 0x599999999999998ELL) * v3631) >> 64, 0x599999999999998ELL * v3631);
        v3632 = (__PAIR128__(v3631, v3631) * __PAIR128__(32, 0x599999999999998ELL)) >> 64;
        v3633 = (((v3631 * 0x599999999999998EuLL) >> 64) * 0x21) >> 64;
        if (v1886)
        {
          ++v3633;
        }

        v3634 = 33 * v3633;
        v1886 = __CFADD__(v3634, v3632);
        v3635 = v3634 + v3632;
        v3636 = v1886;
        if (v3635 > 0xFFFFFFFFFFFFFFDELL)
        {
          v3636 = 1;
        }

        if (v3636)
        {
          v3637 = 33;
        }

        else
        {
          v3637 = 0;
        }

        v3638 = v3637 + v3635;
        if (v3365 >= 0xFFFFFFFFFFFFFFDFLL)
        {
          v3639 = 33;
        }

        else
        {
          v3639 = 0;
        }

        v3640 = v3639 + v3365;
        v1886 = v3638 >= v3640;
        v3641 = v3638 - v3640;
        if (v1886)
        {
          v3642 = 0;
        }

        else
        {
          v3642 = -33;
        }

        v3643 = v3641 + v3642;
        v1886 = __CFADD__((__PAIR128__(32, 0xFFFFFFFFFFFFFFELL) * v3643) >> 64, 0xFFFFFFFFFFFFFFELL * v3643);
        v3644 = (__PAIR128__(v3643, v3643) * __PAIR128__(32, 0xFFFFFFFFFFFFFFELL)) >> 64;
        v3645 = (((v3643 * 0xFFFFFFFFFFFFFFEuLL) >> 64) * 0x21) >> 64;
        if (v1886)
        {
          ++v3645;
        }

        v3646 = 33 * v3645;
        v3647 = (v3646 + v3644) > 0xFFFFFFFFFFFFFFDELL;
        v1886 = __CFADD__(v3646, v3644);
        v3648 = v3646 + v3644;
        if (v1886 || v3647)
        {
          v3650 = 33;
        }

        else
        {
          v3650 = 0;
        }

        v3651 = v3650 + v3648;
        if (v3651 >= 0xFFFFFFFFFFFFFFD3)
        {
          v3652 = 45;
        }

        else
        {
          v3652 = 0;
        }

        if (v3518)
        {
          v3653 = 45;
        }

        else
        {
          v3653 = 0;
        }

        v3654 = v3653 + v3519;
        v1886 = v3654 >= v3652 + v3651;
        v3655 = v3654 - (v3652 + v3651);
        if (v1886)
        {
          v3656 = 0;
        }

        else
        {
          v3656 = -45;
        }

        v3657 = v3655 + v3656;
        v3658 = 0x6AAAAAAAAAAAAA98 * v3657;
        v3659 = (v3657 * 0x6AAAAAAAAAAAAA98uLL) >> 64;
        v1886 = __CFADD__(45 * v3659, v3658);
        v3660 = 45 * v3659 + v3658;
        v3661 = (v3659 * 0x2DuLL) >> 64;
        if (v1886)
        {
          ++v3661;
        }

        v3662 = 45 * v3661;
        v3663 = (v3662 + v3660) > 0xFFFFFFFFFFFFFFD2;
        v1886 = __CFADD__(v3662, v3660);
        v3664 = v3662 + v3660;
        if (v1886)
        {
          v3663 = 1;
        }

        if (v3219 >= 0xFFFFFFFFFFFFFFD9)
        {
          v3665 = 39;
        }

        else
        {
          v3665 = 0;
        }

        v3666 = v3665 + v3219;
        v3667 = 0x40685A60ABFE0A21 * v3666;
        v3668 = (v3666 * 0x40685A60ABFE0A21uLL) >> 64;
        v1886 = __CFADD__(39 * v3668, v3667);
        v3669 = 39 * v3668 + v3667;
        v3670 = (v3668 * 0x27uLL) >> 64;
        if (v1886)
        {
          ++v3670;
        }

        v3671 = 39 * v3670;
        v3672 = (v3671 + v3669) > 0xFFFFFFFFFFFFFFD8;
        v1886 = __CFADD__(v3671, v3669);
        v3673 = v3671 + v3669;
        v3674 = v1886 || v3672;
        if (v2984 >= 0xFFFFFFFFFFFFFFD9)
        {
          v3675 = 39;
        }

        else
        {
          v3675 = 0;
        }

        v3676 = v3675 + v2984;
        v3677 = 984960 * v3676;
        v3678 = 39 * ((v3676 * 0xF0780uLL) >> 64);
        v1886 = __CFADD__(v3678, v3677);
        v3679 = v3678 + v3677;
        if (v1886)
        {
          v3680 = 39;
        }

        else
        {
          v3680 = 0;
        }

        v3681 = (v3680 + v3679) > 0xFFFFFFFFFFFFFFD8;
        v1886 = __CFADD__(v3680, v3679);
        v3682 = v3680 + v3679;
        if (v1886)
        {
          v3681 = 1;
        }

        if (v3016 >= 0xFFFFFFFFFFFFFFD9)
        {
          v3683 = 39;
        }

        else
        {
          v3683 = 0;
        }

        v3684 = v3683 + v3016;
        v3685 = 930240 * v3684;
        v3686 = 39 * ((v3684 * 0xE31C0uLL) >> 64);
        v1886 = __CFADD__(v3686, v3685);
        v3687 = v3686 + v3685;
        if (v1886)
        {
          v3688 = 39;
        }

        else
        {
          v3688 = 0;
        }

        v3689 = (v3688 + v3687) > 0xFFFFFFFFFFFFFFD8;
        v1886 = __CFADD__(v3688, v3687);
        v3690 = v3688 + v3687;
        v3691 = STACK[0x3A70] * STACK[0x18B8];
        v3692 = (STACK[0x3A70] * STACK[0x18B8]) >> 64;
        if (v1886)
        {
          v3689 = 1;
        }

        v1886 = __CFADD__(39 * v3692, v3691);
        v3693 = 39 * v3692 + v3691;
        v3694 = (v3692 * 0x27uLL) >> 64;
        if (v1886)
        {
          ++v3694;
        }

        v3695 = 39 * v3694;
        v3696 = v3695 + v3693;
        if ((((~(v3695 + v3693) | v3693) & v3695 | v3693 & ~(v3695 + v3693)) & 0x8000000000000000) != 0 || v3696 > 0xFFFFFFFFFFFFFFD8)
        {
          v3698 = 39;
        }

        else
        {
          v3698 = 0;
        }

        v3699 = v3698 + v3696;
        if (v3039 >= 0xFFFFFFFFFFFFFFD9)
        {
          v3700 = 39;
        }

        else
        {
          v3700 = 0;
        }

        v3701 = v3700 + v3039;
        v3702 = 881280 * v3701;
        v3703 = 39 * ((v3701 * 0xD7280uLL) >> 64);
        v1886 = __CFADD__(v3703, v3702);
        v3704 = v3703 + v3702;
        if (v1886)
        {
          v3705 = 39;
        }

        else
        {
          v3705 = 0;
        }

        v1886 = __CFADD__(v3705, v3704);
        v3706 = v3705 + v3704;
        v3707 = v1886;
        if (v3706 > 0xFFFFFFFFFFFFFFD8)
        {
          v3707 = 1;
        }

        if (v3707)
        {
          v3708 = 39;
        }

        else
        {
          v3708 = 0;
        }

        v3709 = v3708 + v3706;
        if (v3709 >= 0xFFFFFFFFFFFFFFD9)
        {
          v3710 = 39;
        }

        else
        {
          v3710 = 0;
        }

        v3711 = v3710 + v3709;
        v3712 = v3690 + v3711;
        if (v3689)
        {
          v3713 = 39;
        }

        else
        {
          v3713 = 0;
        }

        v3714 = v3712 + v3713;
        if (v2951 >= 0xFFFFFFFFFFFFFFD9)
        {
          v3715 = 39;
        }

        else
        {
          v3715 = 0;
        }

        v3716 = v3715 + v2951;
        if (v3714 < v3711 || v3714 > 0xFFFFFFFFFFFFFFD8)
        {
          v3718 = 39;
        }

        else
        {
          v3718 = 0;
        }

        if (v3681)
        {
          v3719 = 39;
        }

        else
        {
          v3719 = 0;
        }

        v3720 = v3719 + v3682;
        v3721 = v3718 + v3714;
        v1886 = __CFADD__(v3720, v3721);
        v3722 = v3720 + v3721;
        v3723 = 1116288 * v3716;
        v3724 = 39 * ((v3716 * 0x110880uLL) >> 64);
        v3725 = v1886;
        v1886 = __CFADD__(v3724, v3723);
        v3726 = v3724 + v3723;
        if (v1886)
        {
          v3727 = 39;
        }

        else
        {
          v3727 = 0;
        }

        if (v3722 > 0xFFFFFFFFFFFFFFD8)
        {
          v3725 = 1;
        }

        v1886 = __CFADD__(v3727, v3726);
        v3728 = v3727 + v3726;
        v3729 = v1886;
        if (v3725)
        {
          v3730 = 39;
        }

        else
        {
          v3730 = 0;
        }

        if (v3728 > 0xFFFFFFFFFFFFFFD8)
        {
          v3729 = 1;
        }

        if (v2917 >= 0xFFFFFFFFFFFFFFD9)
        {
          v3731 = 39;
        }

        else
        {
          v3731 = 0;
        }

        v3732 = v3730 + v3722;
        if (v3729)
        {
          v3733 = 39;
        }

        else
        {
          v3733 = 0;
        }

        v3734 = v3733 + v3728;
        v3735 = v3731 + v2917;
        v1886 = __CFADD__(v3734, v3732);
        v3736 = v3734 + v3732;
        v3737 = v1886;
        if (v3736 > 0xFFFFFFFFFFFFFFD8)
        {
          v3737 = 1;
        }

        v4152 = v3737 == 0;
        v3738 = 1395360 * v3735;
        v3739 = 39 * ((v3735 * 0x154AA0uLL) >> 64);
        if (v4152)
        {
          v3740 = 0;
        }

        else
        {
          v3740 = 39;
        }

        v1886 = __CFADD__(v3739, v3738);
        v3741 = v3739 + v3738;
        v3742 = v3740 + v3736;
        if (v1886)
        {
          v3743 = 39;
        }

        else
        {
          v3743 = 0;
        }

        v1886 = __CFADD__(v3743, v3741);
        v3744 = v3743 + v3741;
        v3745 = v1886;
        if (v3744 > 0xFFFFFFFFFFFFFFD8)
        {
          v3745 = 1;
        }

        if (v3745)
        {
          v3746 = 39;
        }

        else
        {
          v3746 = 0;
        }

        v3747 = v3746 + v3744;
        v1886 = __CFADD__(v3747, v3742);
        v3748 = v3747 + v3742;
        v3749 = v1886;
        if (v3748 > 0xFFFFFFFFFFFFFFD8)
        {
          v3749 = 1;
        }

        if (v3749)
        {
          v3750 = 39;
        }

        else
        {
          v3750 = 0;
        }

        v3751 = v3750 + v3748;
        v3752 = 0x40685A60ABFE0A21 * v3751;
        v3753 = (v3751 * 0x40685A60ABFE0A21uLL) >> 64;
        v1886 = __CFADD__(39 * v3753, v3752);
        v3754 = 39 * v3753 + v3752;
        v3755 = (v3753 * 0x27uLL) >> 64;
        if (v1886)
        {
          ++v3755;
        }

        v3756 = 39 * v3755;
        v1886 = __CFADD__(v3756, v3754);
        v3757 = v3756 + v3754;
        v3758 = v1886;
        if (v3757 > 0xFFFFFFFFFFFFFFD8)
        {
          v3758 = 1;
        }

        if (v3758)
        {
          v3759 = 39;
        }

        else
        {
          v3759 = 0;
        }

        v3760 = v3759 + v3757;
        v1886 = __CFADD__(v3699, v3760);
        v3761 = v3699 + v3760;
        v3762 = v1886;
        if (v3761 > 0xFFFFFFFFFFFFFFD8)
        {
          v3762 = 1;
        }

        if (v3762)
        {
          v3763 = 39;
        }

        else
        {
          v3763 = 0;
        }

        v3764 = v3763 + v3761;
        v3765 = 0x68180B91CEB03F68 * v3764;
        v3766 = (v3764 * 0x68180B91CEB03F68uLL) >> 64;
        v1886 = __CFADD__(39 * v3766, v3765);
        v3767 = 39 * v3766 + v3765;
        v3768 = (v3766 * 0x27uLL) >> 64;
        if (v1886)
        {
          ++v3768;
        }

        v3769 = 39 * v3768;
        v1886 = __CFADD__(v3769, v3767);
        v3770 = v3769 + v3767;
        v3771 = v1886;
        if (v3770 > 0xFFFFFFFFFFFFFFD8)
        {
          v3771 = 1;
        }

        if (v3771)
        {
          v3772 = 39;
        }

        else
        {
          v3772 = 0;
        }

        v3773 = v3772 + v3770;
        if (v3674)
        {
          v3774 = 39;
        }

        else
        {
          v3774 = 0;
        }

        v3775 = v3774 + v3673;
        v3776 = v3773 + v3775 > 0xFFFFFFFFFFFFFFD8;
        v1886 = __CFADD__(v3773, v3775);
        v3777 = v3773 + v3775;
        if (v1886 || v3776)
        {
          v3779 = 39;
        }

        else
        {
          v3779 = 0;
        }

        v3780 = v3779 + v3777;
        v3781 = 0x36DB6DB6DB6DB6D3 * v3780;
        v3782 = (v3780 * 0x36DB6DB6DB6DB6D3uLL) >> 64;
        v1886 = __CFADD__(39 * v3782, v3781);
        v3783 = 39 * v3782 + v3781;
        v3784 = (v3782 * 0x27uLL) >> 64;
        if (v1886)
        {
          ++v3784;
        }

        v3785 = 39 * v3784;
        v3786 = (v3785 + v3783) > 0xFFFFFFFFFFFFFFD8;
        v1886 = __CFADD__(v3785, v3783);
        v3787 = v3785 + v3783;
        if (v1886 || v3786)
        {
          v3789 = 39;
        }

        else
        {
          v3789 = 0;
        }

        v3790 = v3789 + v3787;
        if (v3365 >= 0xFFFFFFFFFFFFFFD9)
        {
          v3791 = 39;
        }

        else
        {
          v3791 = 0;
        }

        v3792 = v3791 + v3365;
        v1886 = v3790 >= v3792;
        v3793 = v3790 - v3792;
        if (v1886)
        {
          v3794 = 0;
        }

        else
        {
          v3794 = -39;
        }

        v3795 = v3793 + v3794;
        v3796 = 0xBA2E8BA2E8BA2E7 * v3795;
        v3797 = (v3795 * 0xBA2E8BA2E8BA2E7uLL) >> 64;
        v1886 = __CFADD__(39 * v3797, v3796);
        v3798 = 39 * v3797 + v3796;
        v3799 = (v3797 * 0x27uLL) >> 64;
        if (v1886)
        {
          ++v3799;
        }

        v3800 = 39 * v3799;
        v1886 = __CFADD__(v3800, v3798);
        v3801 = v3800 + v3798;
        v3802 = v1886;
        if (v3801 > 0xFFFFFFFFFFFFFFD8)
        {
          v3802 = 1;
        }

        if (v3802)
        {
          v3803 = 39;
        }

        else
        {
          v3803 = 0;
        }

        v3804 = v3803 + v3801;
        if (v3651 >= 0xFFFFFFFFFFFFFFD9)
        {
          v3805 = 39;
        }

        else
        {
          v3805 = 0;
        }

        v3806 = v3805 + v3651;
        v1886 = v3804 >= v3806;
        v3807 = v3804 - v3806;
        if (v1886)
        {
          v3808 = 0;
        }

        else
        {
          v3808 = -39;
        }

        v3809 = v3807 + v3808;
        v3810 = 0xD555555555555535 * v3809;
        v3811 = (v3809 * 0xD555555555555535) >> 64;
        v1886 = __CFADD__(39 * v3811, v3810);
        v3812 = 39 * v3811 + v3810;
        v3813 = (v3811 * 0x27uLL) >> 64;
        if (v1886)
        {
          ++v3813;
        }

        v3814 = 39 * v3813;
        v1886 = __CFADD__(v3814, v3812);
        v3815 = v3814 + v3812;
        v3816 = v1886;
        if (v3815 > 0xFFFFFFFFFFFFFFD8)
        {
          v3816 = 1;
        }

        if (v3816)
        {
          v3817 = 39;
        }

        else
        {
          v3817 = 0;
        }

        v3818 = v3817 + v3815;
        if (v3818 >= 0xFFFFFFFFFFFFFFD3)
        {
          v3819 = 45;
        }

        else
        {
          v3819 = 0;
        }

        if (v3663)
        {
          v3820 = 45;
        }

        else
        {
          v3820 = 0;
        }

        v3821 = v3820 + v3664;
        v3822 = v3819 + v3818;
        v1886 = v3821 >= v3822;
        v3823 = v3821 - v3822;
        if (v1886)
        {
          v3824 = 0;
        }

        else
        {
          v3824 = -45;
        }

        v3825 = v3823 + v3824;
        v3826 = 0xD555555555555530 * v3825;
        v3827 = (v3825 * 0xD555555555555530) >> 64;
        v1886 = __CFADD__(45 * v3827, v3826);
        v3828 = 45 * v3827 + v3826;
        v3829 = (v3827 * 0x2DuLL) >> 64;
        if (v1886)
        {
          ++v3829;
        }

        v3830 = 45 * v3829;
        v3831 = v3830 + v3828 > 0xFFFFFFFFFFFFFFD2;
        v1886 = __CFADD__(v3830, v3828);
        v3832 = v3830 + v3828;
        v3833 = v1886 || v3831;
        if (v3651 >= 0xFFFFFFFFFFFFFFD1)
        {
          v3834 = 47;
        }

        else
        {
          v3834 = 0;
        }

        if (v3378)
        {
          v3835 = 47;
        }

        else
        {
          v3835 = 0;
        }

        v3836 = v3835 + STACK[0x3AE8];
        v4152 = v3833 == 0;
        v3837 = v3834 + v3651;
        if (v4152)
        {
          v3838 = 0;
        }

        else
        {
          v3838 = 45;
        }

        v1886 = v3836 >= v3837;
        v3839 = v3836 - v3837;
        v3840 = v3838 + v3832;
        if (v1886)
        {
          v3841 = 0;
        }

        else
        {
          v3841 = -47;
        }

        v3842 = v3839 + v3841;
        v3843 = 0x5B6DB6DB6DB6DB5DLL * v3842;
        v3844 = (v3842 * 0x5B6DB6DB6DB6DB5DuLL) >> 64;
        v1886 = __CFADD__(47 * v3844, v3843);
        v3845 = 47 * v3844 + v3843;
        v3846 = (v3844 * 0x2FuLL) >> 64;
        if (v1886)
        {
          ++v3846;
        }

        v3847 = 47 * v3846;
        v1886 = __CFADD__(v3847, v3845);
        v3848 = v3847 + v3845;
        v3849 = v1886;
        if (v3848 > 0xFFFFFFFFFFFFFFD0)
        {
          v3849 = 1;
        }

        if (v3849)
        {
          v3850 = 47;
        }

        else
        {
          v3850 = 0;
        }

        v3851 = v3850 + v3848;
        if (v3818 >= 0xFFFFFFFFFFFFFFD1)
        {
          v3852 = 47;
        }

        else
        {
          v3852 = 0;
        }

        v3853 = v3852 + v3818;
        v1886 = v3851 >= v3853;
        v3854 = v3851 - v3853;
        if (v1886)
        {
          v3855 = 0;
        }

        else
        {
          v3855 = -47;
        }

        v3856 = v3854 + v3855;
        v3857 = 0xDFFFFFFFFFFFFFD7 * v3856;
        v3858 = (v3856 * 0xDFFFFFFFFFFFFFD7) >> 64;
        v1886 = __CFADD__(47 * v3858, v3857);
        v3859 = 47 * v3858 + v3857;
        v3860 = (v3858 * 0x2FuLL) >> 64;
        if (v1886)
        {
          ++v3860;
        }

        v3861 = 47 * v3860;
        v1886 = __CFADD__(v3861, v3859);
        v3862 = v3861 + v3859;
        v3863 = v1886;
        if (v3862 > 0xFFFFFFFFFFFFFFD0)
        {
          v3863 = 1;
        }

        if (v3840 >= 0xFFFFFFFFFFFFFFD1)
        {
          v3864 = 47;
        }

        else
        {
          v3864 = 0;
        }

        if (v3863)
        {
          v3865 = 47;
        }

        else
        {
          v3865 = 0;
        }

        v3866 = v3865 + v3862;
        v1886 = v3866 >= v3864 + v3840;
        v3867 = v3866 - (v3864 + v3840);
        if (v1886)
        {
          v3868 = 0;
        }

        else
        {
          v3868 = -47;
        }

        v3869 = v3867 + v3868;
        v3870 = 0x7FFFFFFFFFFFFFE9 * v3869;
        v3871 = (v3869 * 0x7FFFFFFFFFFFFFE9uLL) >> 64;
        v1886 = __CFADD__(47 * v3871, v3870);
        v3872 = 47 * v3871 + v3870;
        v3873 = (v3871 * 0x2FuLL) >> 64;
        if (v1886)
        {
          ++v3873;
        }

        v3874 = 47 * v3873;
        v1886 = __CFADD__(v3874, v3872);
        v3875 = v3874 + v3872;
        v3876 = v1886;
        if (v3875 > 0xFFFFFFFFFFFFFFD0)
        {
          v3876 = 1;
        }

        if (v3876)
        {
          v3877 = 47;
        }

        else
        {
          v3877 = 0;
        }

        v3878 = v3877 + v3875;
        if (v3878 >= 0xFFFFFFFFFFFFFFF1)
        {
          v3879 = 15;
        }

        else
        {
          v3879 = 0;
        }

        v3880 = v3879 + v3878;
        v3881 = -45 * v3880;
        v3882 = (v3880 * 0xFFFFFFFFFFFFFFD3) >> 64;
        v1886 = __CFADD__(15 * v3882, v3881);
        v3883 = 15 * v3882 + v3881;
        v3884 = (v3882 * 0xFuLL) >> 64;
        if (v1886)
        {
          ++v3884;
        }

        v3885 = 15 * v3884;
        v1886 = __CFADD__(v3885, v3883);
        v3886 = v3885 + v3883;
        v3887 = v1886;
        if (v3886 > 0xFFFFFFFFFFFFFFF0)
        {
          v3887 = 1;
        }

        if (v3887)
        {
          v3888 = 15;
        }

        else
        {
          v3888 = 0;
        }

        v3889 = v3888 + v3886;
        if (v3840 >= 0xFFFFFFFFFFFFFFF1)
        {
          v3890 = 15;
        }

        else
        {
          v3890 = 0;
        }

        v3891 = v3890 + v3840;
        v1886 = __CFADD__(v3891, v3889);
        v3892 = v3891 + v3889;
        v3893 = v1886;
        if (v3892 > 0xFFFFFFFFFFFFFFF0)
        {
          v3893 = 1;
        }

        if (v3893)
        {
          v3894 = 15;
        }

        else
        {
          v3894 = 0;
        }

        v3895 = v3894 + v3892;
        v3896 = -39 * v3895;
        v3897 = (v3895 * 0xFFFFFFFFFFFFFFD9) >> 64;
        v1886 = __CFADD__(15 * v3897, v3896);
        v3898 = 15 * v3897 + v3896;
        v3899 = (v3897 * 0xFuLL) >> 64;
        if (v1886)
        {
          ++v3899;
        }

        v3900 = 15 * v3899;
        v3901 = (v3900 + v3898) > 0xFFFFFFFFFFFFFFF0;
        v1886 = __CFADD__(v3900, v3898);
        v3902 = v3900 + v3898;
        v3903 = v1886 || v3901;
        if (v3818 >= 0xFFFFFFFFFFFFFFF1)
        {
          v3904 = 15;
        }

        else
        {
          v3904 = 0;
        }

        if (v3903)
        {
          v3905 = 15;
        }

        else
        {
          v3905 = 0;
        }

        v3906 = v3905 + v3902;
        v3907 = v3904 + v3818;
        v3908 = v3904 + v3818 + v3906 > 0xFFFFFFFFFFFFFFF0;
        v1886 = __CFADD__(v3907, v3906);
        v3909 = v3907 + v3906;
        v3910 = v1886 || v3908;
        if (v3651 >= 0xFFFFFFFFFFFFFFF1)
        {
          v3911 = 15;
        }

        else
        {
          v3911 = 0;
        }

        if (v3910)
        {
          v3912 = 15;
        }

        else
        {
          v3912 = 0;
        }

        v3913 = v3912 + v3909;
        v3914 = -33 * v3913;
        v3915 = (v3913 * 0xFFFFFFFFFFFFFFDFLL) >> 64;
        v1886 = __CFADD__(15 * v3915, v3914);
        v3916 = 15 * v3915 + v3914;
        v3917 = (v3915 * 0xFuLL) >> 64;
        if (v1886)
        {
          ++v3917;
        }

        v3918 = 15 * v3917;
        v1886 = __CFADD__(v3918, v3916);
        v3919 = v3918 + v3916;
        v3920 = v1886;
        if (v3919 > 0xFFFFFFFFFFFFFFF0)
        {
          v3920 = 1;
        }

        if (v3920)
        {
          v3921 = 15;
        }

        else
        {
          v3921 = 0;
        }

        v3922 = v3921 + v3919;
        v3923 = v3911 + v3651;
        v3924 = v3911 + v3651 + v3922 > 0xFFFFFFFFFFFFFFF0;
        v1886 = __CFADD__(v3923, v3922);
        v3925 = v3923 + v3922;
        if (v1886 || v3924)
        {
          v3927 = 15;
        }

        else
        {
          v3927 = 0;
        }

        v3928 = v3927 + v3925;
        v3929 = -17 * v3928;
        v3930 = (v3928 * 0xFFFFFFFFFFFFFFEFLL) >> 64;
        v1886 = __CFADD__(15 * v3930, v3929);
        v3931 = 15 * v3930 + v3929;
        v3932 = (v3930 * 0xFuLL) >> 64;
        if (v1886)
        {
          ++v3932;
        }

        v3933 = 15 * v3932;
        v3934 = (v3933 + v3931) > 0xFFFFFFFFFFFFFFF0;
        v1886 = __CFADD__(v3933, v3931);
        v3935 = v3933 + v3931;
        if (v1886)
        {
          v3934 = 1;
        }

        if (v3878 >= 0xFFFFFFFFFFFFFFF7)
        {
          v3936 = 9;
        }

        else
        {
          v3936 = 0;
        }

        v3937 = v3936 + v3878;
        v1886 = __CFADD__((__PAIR128__(8, -45) * v3937) >> 64, -45 * v3937);
        v3938 = (__PAIR128__(v3937, v3937) * __PAIR128__(8, -45)) >> 64;
        v3939 = (((v3937 * 0xFFFFFFFFFFFFFFD3) >> 64) * 9) >> 64;
        if (v1886)
        {
          ++v3939;
        }

        v3940 = 9 * v3939;
        v3941 = (v3940 + v3938) > 0xFFFFFFFFFFFFFFF6;
        v1886 = __CFADD__(v3940, v3938);
        v3942 = v3940 + v3938;
        v3943 = v1886 || v3941;
        if (v3840 >= 0xFFFFFFFFFFFFFFF7)
        {
          v3944 = 9;
        }

        else
        {
          v3944 = 0;
        }

        if (v3943)
        {
          v3945 = 9;
        }

        else
        {
          v3945 = 0;
        }

        v3946 = v3945 + v3942;
        v1886 = __CFADD__(v3944 + v3840, v3946);
        v3947 = v3944 + v3840 + v3946;
        v3948 = v1886;
        if (v3947 > 0xFFFFFFFFFFFFFFF6)
        {
          v3948 = 1;
        }

        if (v3948)
        {
          v3949 = 9;
        }

        else
        {
          v3949 = 0;
        }

        v3950 = v3949 + v3947;
        v1886 = __CFADD__((__PAIR128__(8, -39) * v3950) >> 64, -39 * v3950);
        v3951 = (__PAIR128__(v3950, v3950) * __PAIR128__(8, -39)) >> 64;
        v3952 = (((v3950 * 0xFFFFFFFFFFFFFFD9) >> 64) * 9) >> 64;
        if (v1886)
        {
          ++v3952;
        }

        v3953 = 9 * v3952;
        v3954 = (v3953 + v3951) > 0xFFFFFFFFFFFFFFF6;
        v1886 = __CFADD__(v3953, v3951);
        v3955 = v3953 + v3951;
        v3956 = v1886 || v3954;
        if (v3818 >= 0xFFFFFFFFFFFFFFF7)
        {
          v3957 = 9;
        }

        else
        {
          v3957 = 0;
        }

        if (v3956)
        {
          v3958 = 9;
        }

        else
        {
          v3958 = 0;
        }

        v3959 = v3958 + v3955;
        v1886 = __CFADD__(v3957 + v3818, v3959);
        v3960 = v3957 + v3818 + v3959;
        v3961 = v1886;
        if (v3960 > 0xFFFFFFFFFFFFFFF6)
        {
          v3961 = 1;
        }

        if (v3961)
        {
          v3962 = 9;
        }

        else
        {
          v3962 = 0;
        }

        v3963 = v3962 + v3960;
        v1886 = __CFADD__((__PAIR128__(8, -33) * v3963) >> 64, -33 * v3963);
        v3964 = (__PAIR128__(-33, -33) * v3963) >> 64;
        v3965 = (((v3963 * 0xFFFFFFFFFFFFFFDFLL) >> 64) * 9) >> 64;
        if (v1886)
        {
          ++v3965;
        }

        v3966 = 9 * v3965;
        v3967 = (v3966 + v3964) > 0xFFFFFFFFFFFFFFF6;
        v1886 = __CFADD__(v3966, v3964);
        v3968 = v3966 + v3964;
        v3969 = v1886 || v3967;
        if (v3651 >= 0xFFFFFFFFFFFFFFF7)
        {
          v3970 = 9;
        }

        else
        {
          v3970 = 0;
        }

        if (v3969)
        {
          v3971 = 9;
        }

        else
        {
          v3971 = 0;
        }

        v3972 = v3971 + v3968;
        v1886 = __CFADD__(v3970 + v3651, v3972);
        v3973 = v3970 + v3651 + v3972;
        v3974 = v1886;
        if (v3973 > 0xFFFFFFFFFFFFFFF6)
        {
          v3974 = 1;
        }

        if (v3974)
        {
          v3975 = 9;
        }

        else
        {
          v3975 = 0;
        }

        v3976 = v3975 + v3973;
        v1886 = __CFADD__((__PAIR128__(8, -17) * v3976) >> 64, -17 * v3976);
        v3977 = (__PAIR128__(-17, -17) * v3976) >> 64;
        v3978 = (((v3976 * 0xFFFFFFFFFFFFFFEFLL) >> 64) * 9) >> 64;
        if (v1886)
        {
          ++v3978;
        }

        v3979 = 9 * v3978;
        v3980 = (v3979 + v3977) > 0xFFFFFFFFFFFFFFF6;
        v1886 = __CFADD__(v3979, v3977);
        v3981 = v3979 + v3977;
        v3982 = v1886 || v3980;
        if (v3365 >= 0xFFFFFFFFFFFFFFF7)
        {
          v3983 = 9;
        }

        else
        {
          v3983 = 0;
        }

        if (v3982)
        {
          v3984 = 9;
        }

        else
        {
          v3984 = 0;
        }

        v3985 = v3984 + v3981;
        v3986 = v3983 + v3365;
        v3987 = v3983 + v3365 + v3985 > 0xFFFFFFFFFFFFFFF6;
        v1886 = __CFADD__(v3986, v3985);
        v3988 = v3986 + v3985;
        v3989 = v1886 || v3987;
        if (v3878 >= 0xFFFFFFFFFFFFFFFBLL)
        {
          v3990 = 5;
        }

        else
        {
          v3990 = 0;
        }

        v3991 = v3990 + v3878;
        v1886 = __CFADD__((__PAIR128__(4, -45) * v3991) >> 64, -45 * v3991);
        v3992 = (__PAIR128__(v3991, v3991) * __PAIR128__(4, -45)) >> 64;
        v3993 = (((v3991 * 0xFFFFFFFFFFFFFFD3) >> 64) * 5) >> 64;
        if (v1886)
        {
          ++v3993;
        }

        v3994 = 5 * v3993;
        v3995 = (v3994 + v3992) > 0xFFFFFFFFFFFFFFFALL;
        v1886 = __CFADD__(v3994, v3992);
        v3996 = v3994 + v3992;
        v3997 = v1886 || v3995;
        if (v3840 >= 0xFFFFFFFFFFFFFFFBLL)
        {
          v3998 = 5;
        }

        else
        {
          v3998 = 0;
        }

        if (v3997)
        {
          v3999 = 5;
        }

        else
        {
          v3999 = 0;
        }

        v4000 = v3999 + v3996;
        v1886 = __CFADD__(v3998 + v3840, v4000);
        v4001 = v3998 + v3840 + v4000;
        v4002 = v1886;
        if (v4001 > 0xFFFFFFFFFFFFFFFALL)
        {
          v4002 = 1;
        }

        if (v4002)
        {
          v4003 = 5;
        }

        else
        {
          v4003 = 0;
        }

        v4004 = v4003 + v4001;
        v1886 = __CFADD__((__PAIR128__(4, -39) * v4004) >> 64, -39 * v4004);
        v4005 = (__PAIR128__(v4004, v4004) * __PAIR128__(4, -39)) >> 64;
        v4006 = (((v4004 * 0xFFFFFFFFFFFFFFD9) >> 64) * 5) >> 64;
        if (v1886)
        {
          ++v4006;
        }

        v4007 = 5 * v4006;
        v1886 = __CFADD__(v4007, v4005);
        v4008 = v4007 + v4005;
        v4009 = v1886;
        if (v4008 > 0xFFFFFFFFFFFFFFFALL)
        {
          v4009 = 1;
        }

        if (v3818 >= 0xFFFFFFFFFFFFFFFBLL)
        {
          v4010 = 5;
        }

        else
        {
          v4010 = 0;
        }

        if (v4009)
        {
          v4011 = 5;
        }

        else
        {
          v4011 = 0;
        }

        v4012 = v4011 + v4008;
        v1886 = __CFADD__(v4010 + v3818, v4012);
        v4013 = v4010 + v3818 + v4012;
        v4014 = v1886;
        if (v4013 > 0xFFFFFFFFFFFFFFFALL)
        {
          v4014 = 1;
        }

        if (v4014)
        {
          v4015 = 5;
        }

        else
        {
          v4015 = 0;
        }

        v4016 = v4015 + v4013;
        v1886 = __CFADD__((__PAIR128__(4, -33) * v4016) >> 64, -33 * v4016);
        v4017 = (__PAIR128__(-33, -33) * v4016) >> 64;
        v4018 = (((v4016 * 0xFFFFFFFFFFFFFFDFLL) >> 64) * 5) >> 64;
        if (v1886)
        {
          ++v4018;
        }

        v4019 = 5 * v4018;
        v4020 = (v4019 + v4017) > 0xFFFFFFFFFFFFFFFALL;
        v1886 = __CFADD__(v4019, v4017);
        v4021 = v4019 + v4017;
        v4022 = v1886 || v4020;
        if (v3878 >= 0xFFFFFFFFFFFFFFFDLL)
        {
          v4023 = 3;
        }

        else
        {
          v4023 = 0;
        }

        v4024 = v4023 + v3878;
        v4025 = -45 * v4024;
        v4027 = v4024;
        v4026 = (v4024 * 0xFFFFFFFFFFFFFFD3) >> 64;
        v4028 = (__PAIR128__(2, -45) * v4027) >> 64;
        if (v3840 >= 0xFFFFFFFFFFFFFFFDLL)
        {
          v4029 = 3;
        }

        else
        {
          v4029 = 0;
        }

        v1886 = __CFADD__(v4028, v4025);
        v4030 = v4028 + v4025;
        v4031 = (v4026 * 3uLL) >> 64;
        if (v1886)
        {
          ++v4031;
        }

        v4032 = 3 * v4031;
        v1886 = __CFADD__(v4032, v4030);
        v4033 = v4032 + v4030;
        v4034 = v1886;
        if (v4033 > 0xFFFFFFFFFFFFFFFCLL)
        {
          v4034 = 1;
        }

        if (v4034)
        {
          v4035 = 3;
        }

        else
        {
          v4035 = 0;
        }

        v4036 = v4035 + v4033;
        v1886 = __CFADD__(v4029 + v3840, v4036);
        v4037 = v4029 + v3840 + v4036;
        v4038 = v1886;
        if (v4037 > 0xFFFFFFFFFFFFFFFCLL)
        {
          v4038 = 1;
        }

        if (v4038)
        {
          v4039 = 3;
        }

        else
        {
          v4039 = 0;
        }

        v4040 = v4039 + v4037;
        v1886 = __CFADD__((__PAIR128__(2, -39) * v4040) >> 64, -39 * v4040);
        v4041 = (__PAIR128__(v4040, v4040) * __PAIR128__(2, -39)) >> 64;
        v4042 = (((v4040 * 0xFFFFFFFFFFFFFFD9) >> 64) * 3) >> 64;
        if (v1886)
        {
          ++v4042;
        }

        v4043 = 3 * v4042;
        if (v3818 >= 0xFFFFFFFFFFFFFFFDLL)
        {
          v4044 = 3;
        }

        else
        {
          v4044 = 0;
        }

        v1886 = __CFADD__(v4043, v4041);
        v4045 = v4043 + v4041;
        v4046 = v1886;
        if (v4045 > 0xFFFFFFFFFFFFFFFCLL)
        {
          v4046 = 1;
        }

        if (v4046)
        {
          v4047 = 3;
        }

        else
        {
          v4047 = 0;
        }

        v4048 = v4047 + v4045;
        v4049 = v4044 + v3818;
        v4050 = v4044 + v3818 + v4048 > 0xFFFFFFFFFFFFFFFCLL;
        v1886 = __CFADD__(v4049, v4048);
        v4051 = v4049 + v4048;
        if (v1886 || v4050)
        {
          v4053 = 3;
        }

        else
        {
          v4053 = 0;
        }

        v4054 = v4053 + v4051;
        v1886 = __CFADD__((__PAIR128__(2, -33) * v4054) >> 64, -33 * v4054);
        v4055 = (__PAIR128__(-33, -33) * v4054) >> 64;
        v4056 = (((v4054 * 0xFFFFFFFFFFFFFFDFLL) >> 64) * 3) >> 64;
        if (v1886)
        {
          ++v4056;
        }

        v4057 = 3 * v4056;
        v1886 = __CFADD__(v4057, v4055);
        v4058 = v4057 + v4055;
        v4059 = v1886;
        if (v4058 > 0xFFFFFFFFFFFFFFFCLL)
        {
          v4059 = 1;
        }

        if (v4059)
        {
          v4060 = 3;
        }

        else
        {
          v4060 = 0;
        }

        v4061 = v4060 + v4058;
        if (v3651 >= 0xFFFFFFFFFFFFFFFDLL)
        {
          v4062 = 3;
        }

        else
        {
          v4062 = 0;
        }

        v4063 = v4062 + v3651;
        v1886 = __CFADD__(v4063, v4061);
        v4064 = v4063 + v4061;
        v4065 = v1886;
        if (v4064 > 0xFFFFFFFFFFFFFFFCLL)
        {
          v4065 = 1;
        }

        if (v4065)
        {
          v4066 = 3;
        }

        else
        {
          v4066 = 0;
        }

        v4067 = v4066 + v4064;
        v1886 = __CFADD__((__PAIR128__(2, -17) * v4067) >> 64, -17 * v4067);
        v4068 = (__PAIR128__(-17, -17) * v4067) >> 64;
        v4069 = (((v4067 * 0xFFFFFFFFFFFFFFEFLL) >> 64) * 3) >> 64;
        if (v1886)
        {
          ++v4069;
        }

        v4070 = 3 * v4069;
        v4071 = (v4070 + v4068) > 0xFFFFFFFFFFFFFFFCLL;
        v1886 = __CFADD__(v4070, v4068);
        v4072 = v4070 + v4068;
        if (v1886)
        {
          v4071 = 1;
        }

        if (v3878 == -1)
        {
          v4073 = 0;
        }

        else
        {
          v4073 = v3878;
        }

        v4074 = -45 * v4073;
        v4075 = (v4073 * 0xFFFFFFFFFFFFFFD3) >> 64;
        v4076 = __CFADD__(__CFADD__(v4075, v4074), v4075 + v4074);
        v4077 = __CFADD__(v4075, v4074) + v4075 + v4074 == -1 || v4076;
        v4078 = v4075 + v4074 + __CFADD__(v4075, v4074) + v4077;
        if (v3840 == -1)
        {
          v4079 = 0;
        }

        else
        {
          v4079 = v3840;
        }

        v1886 = __CFADD__(v4078, v4079);
        v4080 = v4078 + v4079;
        LODWORD(v4081) = v1886;
        if (v4080 == -1)
        {
          v4081 = 1;
        }

        else
        {
          v4081 = v4081;
        }

        v4082 = v4081 + v4080;
        v4083 = -39 * v4082;
        v4084 = (v4082 * 0xFFFFFFFFFFFFFFD9) >> 64;
        v4085 = __CFADD__(__CFADD__(v4084, v4083), v4084 + v4083);
        v4086 = __CFADD__(v4084, v4083) + v4084 + v4083 == -1 || v4085;
        v4087 = v4084 + v4083 + __CFADD__(v4084, v4083) + v4086;
        if (v3818 == -1)
        {
          v4088 = 0;
        }

        else
        {
          v4088 = v3818;
        }

        v1886 = __CFADD__(v4087, v4088);
        v4089 = v4087 + v4088;
        LODWORD(v4090) = v1886;
        if (v4089 == -1)
        {
          v4090 = 1;
        }

        else
        {
          v4090 = v4090;
        }

        v4091 = v4090 + v4089;
        v4092 = 33 * v4091;
        v4093 = (v4091 * 0xFFFFFFFFFFFFFFDFLL) >> 64;
        v4094 = -v4092;
        v4095 = __CFADD__(__CFADD__(v4093, v4094), v4093 + v4094);
        v4096 = __CFADD__(v4093, v4094) + v4093 + v4094 == -1 || v4095;
        v4097 = v4093 + v4094 + __CFADD__(v4093, v4094) + v4096;
        if (v3651 == -1)
        {
          v4098 = 0;
        }

        else
        {
          v4098 = v3651;
        }

        v1886 = __CFADD__(v4097, v4098);
        v4099 = v4097 + v4098;
        LODWORD(v4100) = v1886;
        if (v4099 == -1)
        {
          v4100 = 1;
        }

        else
        {
          v4100 = v4100;
        }

        v4101 = v4100 + v4099;
        v4102 = 17 * v4101;
        v4103 = (v4101 * 0xFFFFFFFFFFFFFFEFLL) >> 64;
        v4104 = -v4102;
        v4105 = __CFADD__(__CFADD__(v4103, v4104), v4103 + v4104);
        v4106 = __CFADD__(v4103, v4104) + v4103 + v4104 == -1 || v4105;
        v4107 = v4103 + v4104 + __CFADD__(v4103, v4104) + v4106;
        if (v3365 == -1)
        {
          v4108 = 0;
        }

        else
        {
          v4108 = v3365;
        }

        v4109 = v4107 + v4108 == -1;
        v1886 = __CFADD__(v4107, v4108);
        v4110 = v4107 + v4108;
        v4111 = v1886 || v4109;
        v4112 = v4111 + v4110;
        if (v3365 >= 0xFFFFFFFFFFFFFFFDLL)
        {
          v4113 = 3;
        }

        else
        {
          v4113 = 0;
        }

        if (v4071)
        {
          v4114 = 3;
        }

        else
        {
          v4114 = 0;
        }

        v4115 = v4114 + v4072;
        v1886 = __CFADD__(v4113 + v3365, v4115);
        v4116 = v4113 + v3365 + v4115;
        v4117 = v1886;
        if (v4116 > 0xFFFFFFFFFFFFFFFCLL)
        {
          v4117 = 1;
        }

        if (v4117)
        {
          v4118 = 3;
        }

        else
        {
          v4118 = 0;
        }

        v4119 = v4118 + v4116;
        if (v4022)
        {
          v4120 = 5;
        }

        else
        {
          v4120 = 0;
        }

        v4121 = v4120 + v4021;
        if (v3651 >= 0xFFFFFFFFFFFFFFFBLL)
        {
          v4122 = 5;
        }

        else
        {
          v4122 = 0;
        }

        v4123 = v4122 + v3651;
        v1886 = __CFADD__(v4123, v4121);
        v4124 = v4123 + v4121;
        v4125 = v1886;
        if (v4124 > 0xFFFFFFFFFFFFFFFALL)
        {
          v4125 = 1;
        }

        if (v4125)
        {
          v4126 = 5;
        }

        else
        {
          v4126 = 0;
        }

        v4127 = v4126 + v4124;
        v1886 = __CFADD__((__PAIR128__(4, -17) * v4127) >> 64, -17 * v4127);
        v4128 = (__PAIR128__(-17, -17) * v4127) >> 64;
        v4129 = (((v4127 * 0xFFFFFFFFFFFFFFEFLL) >> 64) * 5) >> 64;
        if (v1886)
        {
          ++v4129;
        }

        v4130 = 5 * v4129;
        v1886 = __CFADD__(v4130, v4128);
        v4131 = v4130 + v4128;
        v4132 = v1886;
        if (v3365 >= 0xFFFFFFFFFFFFFFFBLL)
        {
          v4133 = 5;
        }

        else
        {
          v4133 = 0;
        }

        if (v4131 > 0xFFFFFFFFFFFFFFFALL)
        {
          v4132 = 1;
        }

        if (v4132)
        {
          v4134 = 5;
        }

        else
        {
          v4134 = 0;
        }

        v4135 = v4134 + v4131;
        v1886 = __CFADD__(v4133 + v3365, v4135);
        v4136 = v4133 + v3365 + v4135;
        v4137 = v1886;
        if (v4136 > 0xFFFFFFFFFFFFFFFALL)
        {
          v4137 = 1;
        }

        if (v4137)
        {
          v4138 = 5;
        }

        else
        {
          v4138 = 0;
        }

        v4139 = v4138 + v4136;
        if (v3989)
        {
          v4140 = 9;
        }

        else
        {
          v4140 = 0;
        }

        v4141 = v4140 + v3988;
        if (v3365 >= 0xFFFFFFFFFFFFFFF1)
        {
          v4142 = 15;
        }

        else
        {
          v4142 = 0;
        }

        v1886 = v3840 >= 0x888941CDB1E411EELL;
        LODWORD(v3840) = v3840 > 0x888941CDB1E411EELL;
        v4143 = !v1886;
        if (v3934)
        {
          v4144 = 15;
        }

        else
        {
          v4144 = 0;
        }

        v1886 = v3818 >= 0x1104BC203A2C6C1ELL;
        v4145 = v3818 > 0x1104BC203A2C6C1ELL;
        v4146 = v4144 + v3935;
        v4147 = v4142 + v3365;
        v4148 = !v1886;
        v4149 = v4145;
        v1886 = __CFADD__(v4147, v4146);
        v4150 = v4147 + v4146;
        v4151 = v1886;
        v4152 = v3878 == 0;
        if (v3878)
        {
          v4153 = 0;
        }

        else
        {
          v4153 = v4143;
        }

        v4154 = !v4152;
        v4155 = v4154 - v4153;
        if (v4152)
        {
          v3840 = v3840;
        }

        else
        {
          v3840 = 0;
        }

        if (v4150 > 0xFFFFFFFFFFFFFFF0)
        {
          v4151 = 1;
        }

        v4157 = v4155 + v3840;
        v4156 = v4157 == 0;
        if (v4157)
        {
          v4158 = 0;
        }

        else
        {
          v4158 = v4148;
        }

        v4159 = v4157 - v4158;
        if (v4156)
        {
          v4160 = v4149;
        }

        else
        {
          v4160 = 0;
        }

        if (v4151)
        {
          v4161 = 15;
        }

        else
        {
          v4161 = 0;
        }

        v1886 = v3365 >= 0xBCE0B40AAD3903CALL;
        LODWORD(v3365) = v3365 > 0xBCE0B40AAD3903CALL;
        v4162 = !v1886;
        v4163 = v3651 >= 0x71527BE5745B8317;
        v1735 = v3651 > 0x71527BE5745B8317;
        v4164 = v4159 + v4160;
        v4165 = v4161 + v4150;
        LODWORD(v4166) = v1735;
        LODWORD(v4167) = !v4163;
        v4168 = v4164 == 0;
        if (v4164)
        {
          v4167 = 0;
        }

        else
        {
          v4167 = v4167;
        }

        v4169 = v4164 - v4167;
        if (v4168)
        {
          v4166 = v4166;
        }

        else
        {
          v4166 = 0;
        }

        v4171 = v4169 + v4166;
        v4170 = v4171 == 0;
        if (v4171)
        {
          v4172 = 0;
        }

        else
        {
          v4172 = v4162;
        }

        v4173 = v4171 - v4172;
        if (v4170)
        {
          v3365 = v3365;
        }

        else
        {
          v3365 = 0;
        }

        v4174 = v4173 + v3365 == -1;
        v4175 = 0xE57DAA7F4F9C214;
        if (v4174)
        {
          v4175 = 0;
        }

        v4176 = v4112 + v4175;
        v4177 = 0x29DEAB8CCE63CD56;
        if (v4174)
        {
          v4177 = 0;
        }

        v4178 = 0x9057E5706EFB6C51;
        if (v4174)
        {
          v4178 = 0;
        }

        v4179 = 0x1A6EA717DFE5D51DLL;
        if (v4174)
        {
          v4179 = 0;
        }

        v4180 = 0xB49BF27CED4A1D5ELL;
        if (v4174)
        {
          v4180 = 0;
        }

        v4181 = v4139 + v4177;
        v4182 = v4141 + v4179;
        v4183 = -5;
        if (v4181 <= v4139)
        {
          v4183 = 0;
        }

        STACK[0x1FE8] = v4183 + v4181;
        STACK[0x1ED8] = (__PAIR128__(v4176, v4112) - v4176) >> 64;
        v4184 = -9;
        if (v4182 <= v4141)
        {
          v4184 = 0;
        }

        STACK[0x1ED0] = v4184 + v4182;
        v4185 = v4165 + v4178;
        v1735 = v4165 + v4178 > v4165;
        v4186 = v4119 + v4180;
        v4187 = -15;
        if (!v1735)
        {
          v4187 = 0;
        }

        v4188 = -3;
        if (v4119 >= v4186)
        {
          v4188 = 0;
        }

        STACK[0x1FF0] = v4188 + v4186;
        STACK[0x1FE0] = v4187 + v4185;
        STACK[0x39D8] = STACK[0x2780];
        STACK[0x3888] = STACK[0x3AD8];
        STACK[0x3880] = STACK[0x3AA8];
        STACK[0x3AD8] = STACK[0x2810];
        STACK[0x39D0] = STACK[0x2768];
        STACK[0x3878] = STACK[0x3AB8];
        STACK[0x3870] = STACK[0x3940];
        STACK[0x3510] = STACK[0x3AD0];
        STACK[0x3868] = STACK[0x3948];
        STACK[0x3AB8] = STACK[0x2818];
        STACK[0x3500] = STACK[0x3AC8];
        STACK[0x3508] = STACK[0x3558];
        STACK[0x39F0] = STACK[0x27E0];
        STACK[0x3860] = STACK[0x3AB0];
        STACK[0x34F8] = STACK[0x39A0];
        STACK[0x3858] = STACK[0x3950];
        STACK[0x34F0] = STACK[0x3998];
        STACK[0x3AA8] = STACK[0x27E8];
        STACK[0x3530] = STACK[0x39A8];
        STACK[0x34E8] = STACK[0x3A78];
        STACK[0x34E0] = STACK[0x3A80];
        STACK[0x3850] = STACK[0x3910];
        STACK[0x3848] = STACK[0x3918];
        STACK[0x3838] = STACK[0x3920];
        STACK[0x3AB0] = STACK[0x27F0];
        LODWORD(STACK[0x3900]) = STACK[0x36E0];
        STACK[0x39E8] = STACK[0x27F8];
        STACK[0x3840] = STACK[0x3928];
        v4189 = *(STACK[0x3AC0] + 8 * SLODWORD(STACK[0x530]));
        LODWORD(STACK[0x3A80]) = 111;
        STACK[0x3990] = STACK[0x1F08];
        STACK[0x3588] = STACK[0x3A18];
        STACK[0x3988] = STACK[0x1EE0];
        STACK[0x39E0] = STACK[0x1F00];
        STACK[0x3580] = STACK[0x38F0];
        STACK[0x3590] = STACK[0x38E0];
        STACK[0x32B0] = STACK[0x1F10];
        STACK[0x3698] = STACK[0x1F28];
        STACK[0x3570] = STACK[0x2808];
        STACK[0x3380] = STACK[0x3908];
        STACK[0x3310] = STACK[0x1F20];
        STACK[0x3578] = STACK[0x2800];
        STACK[0x3A08] = STACK[0x3A10];
        STACK[0x3358] = STACK[0x1EF8];
        STACK[0x3208] = STACK[0x3A68];
        STACK[0x3210] = STACK[0x39B0];
        STACK[0x3350] = STACK[0x1F30];
        STACK[0x3A00] = STACK[0x38E8];
        STACK[0x3388] = STACK[0x1F18];
        STACK[0x3348] = STACK[0x1EF0];
        STACK[0x39F8] = STACK[0x39B8];
        STACK[0x3378] = STACK[0x1EE8];
        return v4189();
    }
  }
}