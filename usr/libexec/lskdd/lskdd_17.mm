uint64_t sub_100467FD8()
{
  LODWORD(STACK[0xDED8]) = v0;
  v4 = v1 < LODWORD(STACK[0x9898]) && v0 == ((v2 + 4192) ^ 0xF7780A25);
  return (*(STACK[0x57D8] + 8 * ((v4 * (v2 + 1662)) ^ v2)))();
}

uint64_t sub_100468034@<X0>(uint64_t a1@<X0>, int a2@<W5>, uint64_t a3@<X8>)
{
  v9 = a1 - 1;
  v10 = v3 + v9 + v4;
  v11 = __ROR8__(v10 & 0xFFFFFFFFFFFFFFF8, 8);
  v12 = (v6 - v11) & 0x12F935AAB1860845 | (v11 - 0x5B3EC18598D49E0ALL) & 0xED06CA554E79F7BALL;
  v13 = v12 ^ 0x99E18830D34B5E05;
  v12 ^= 0xBFE87BE3EA1051B0;
  v14 = __ROR8__(v13, 8);
  v15 = (v14 + v12 - ((2 * (v14 + v12)) & 0xC5A5AAD63E28C3A2) - 0x1D2D2A94E0EB9E2FLL) ^ 0x7FB1160F9880CA11;
  v16 = v15 ^ __ROR8__(v12, 61);
  v17 = __ROR8__(v15, 8);
  v18 = __ROR8__((((2 * (v17 + v16)) | 0x9C9E46AC5AFEEABELL) - (v17 + v16) - 0x4E4F23562D7F755FLL) ^ 0xC77851E62EFC8283, 8);
  v19 = (((2 * (v17 + v16)) | 0x9C9E46AC5AFEEABELL) - (v17 + v16) - 0x4E4F23562D7F755FLL) ^ 0xC77851E62EFC8283 ^ __ROR8__(v16, 61);
  v20 = (v7 - ((v18 + v19) | v7) + ((v18 + v19) | 0x966CBD192B9DE7F6)) ^ 0xBE4EB480A0414795;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  v23 = __ROR8__((0xE1C85EE578AC8EC3 - ((v22 + v21) | 0xE1C85EE578AC8EC3) + ((v22 + v21) | 0x1E37A11A8753713CLL)) ^ 0xF0A44EE37CC211A7, 8);
  v24 = (0xE1C85EE578AC8EC3 - ((v22 + v21) | 0xE1C85EE578AC8EC3) + ((v22 + v21) | 0x1E37A11A8753713CLL)) ^ 0xF0A44EE37CC211A7 ^ __ROR8__(v21, 61);
  v25 = (v23 + v24 - ((2 * (v23 + v24)) & 0x499295D052705972) - 0x5B36B517D6C7D347) ^ 0xA11546BAC485FC9CLL;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ v8;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  *v10 = (((((2 * (v29 + v28)) | 0xB23A7CD5B50039BELL) - (v29 + v28) - 0x591D3E6ADA801CDFLL) ^ 0x6D92E444F0054A2) >> (8 * (v10 & 7u))) ^ *(a3 + v9);
  return (*(STACK[0x57D8] + 8 * (((v9 == 0) * a2) ^ v5)))();
}

uint64_t sub_1004682B0(int a1, uint64_t a2, uint64_t a3, int a4)
{
  STACK[0x5770] = -5706045;
  LODWORD(STACK[0x55B0]) = a1 ^ LODWORD(STACK[0x5710]);
  return (*(STACK[0x57D8] + 8 * (((v7 < 0x2393411B) * ((v7 + 1821724698) ^ 0xCA78)) ^ (v7 + 1821724698))))((v4 - 1008540278), 1008540278, v7 + 1821716799, (v4 + 5706045), ((v5 + a4) >> 16) - 832714442 + v6 + v5 + ((v5 + a4 + ((v5 + a4) >> 16)) >> 8) - 1);
}

uint64_t sub_1004683AC(uint64_t a1, uint64_t a2, unsigned int a3, double a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9)
{
  v10 = *(STACK[0x57D8] + 8 * ((24849 * (a3 > 0x6D28C75D)) ^ (a3 - 651600523 + a3 - 651592112)));
  v11 = STACK[0x57A0];
  v12 = STACK[0x57C0];
  STACK[0x5790] = v9;
  return v10(a1, a2, v12 + a2 - v11, a2 & 7, *&STACK[0x4490], a5, a6, a7, a8, a9, *&STACK[0x44D0]);
}

uint64_t sub_1004684E0()
{
  v1 = STACK[0xC370];
  v2 = *(STACK[0xC370] + 8);
  v3 = STACK[0x6600];
  v3[1] = v2;
  *v3 = *v1;
  return (*(STACK[0x57D8] + 8 * ((((v2 == 0) ^ (v0 - 80)) & 1 | (2 * (((v2 == 0) ^ (v0 - 80)) & 1))) ^ v0)))();
}

uint64_t sub_100468538()
{
  LODWORD(STACK[0x1D4C8]) = (v0 - 1723111157) ^ (1917435887 * ((-624322412 - ((v1 - 240) | 0xDAC99894) + ((v1 - 240) | 0x2536676B)) ^ 0xC38D3C6D));
  STACK[0x1D4C0] = 0;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x7C30)))(v1 - 240);
  return (*(v2 + 8 * (v0 ^ 0x2920 ^ ((((*STACK[0x4270] ^ (v0 - 1)) & v0 | (v0 - *STACK[0x4270]) & ~(v0 ^ *STACK[0x4270])) >> 31) * ((v0 ^ 0x2197) - 1142)))))(v3);
}

uint64_t sub_1004686C0@<X0>(unint64_t a1@<X8>)
{
  STACK[0x7148] = a1;
  LODWORD(STACK[0x5C0C]) = v2;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_100468710()
{
  LOBYTE(STACK[0x92F7]) = v1[3];
  LOBYTE(STACK[0x92F6]) = v1[2];
  LOBYTE(STACK[0x92F5]) = v1[1];
  LOBYTE(STACK[0x92F4]) = *v1;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100468754(int a1, int a2, char a3, char a4, int a5, int a6, int a7, int a8)
{
  LODWORD(STACK[0x53D0]) = v8;
  v25 = STACK[0x57B0] - 10989;
  LODWORD(STACK[0x51C0]) = v25;
  v26 = STACK[0x5230];
  v27 = STACK[0x5230] & 0xBF ^ v18;
  v28 = (v26 ^ (2 * ((v26 ^ 0x7A) & (2 * ((v26 ^ 0x7A) & (2 * ((v26 ^ 0x7A) & (2 * ((v26 ^ 0x7A) & (2 * ((((v26 ^ 0xF3) & (2 * v26) & 0x76 ^ v27) << ((v25 ^ 1) & 7)) & (v26 ^ 0x7A) ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ v27)));
  v29 = a5 & 0x4B ^ 0xF7;
  LODWORD(STACK[0x5010]) = a5;
  LOBYTE(v26) = v11 & 0x87 ^ 0x49;
  LOBYTE(v25) = (v11 ^ 0x74) & (2 * ((v11 ^ 0x74) & (2 * ((v11 ^ 0x74) & (2 * ((v11 ^ 0x74) & (2 * ((v11 ^ 0x74) & (2 * (((2 * v11) & 0x6A ^ 0x72) & v11 ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26;
  LODWORD(STACK[0x4FC8]) = v11;
  v30 = ((a5 ^ (2 * ((a5 ^ 0x6C) & (2 * ((a5 ^ 0x6C) & (2 * ((a5 ^ 0x6C) & (2 * ((a5 ^ 0x6C) & (2 * ((a5 ^ 0x6C) & (2 * (((2 * a5) & 0x5A ^ 0x26) & (a5 ^ 0x6C) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29))) ^ 0x4B) << 8;
  v31 = LODWORD(STACK[0x54E0]);
  LODWORD(STACK[0x5210]) = v10;
  v32 = ((((v28 << 16) ^ 0x80A4CDED) & ~v30 | v30 & 0x3200) ^ 0x203212) & (v10 ^ 0x2B3BC7) | ((v28 << 16) ^ 0x80A4CDED) & ~v30 & 0xD4C400;
  LODWORD(STACK[0x5288]) = v17;
  v33 = ((v17 << 8) ^ 0xFFFFF0FF) & ((v31 << 16) ^ 0xAE8C71CF) | (v17 << 8) & 0x8E00;
  LODWORD(STACK[0x52E8]) = v33;
  LODWORD(STACK[0x5410]) = a8;
  LODWORD(STACK[0x51B0]) = ((v32 << 8) ^ 0xE9FF) & (a8 ^ 0x120BED94) | (v32 << 8) & 0xEDF41200;
  v34 = a6 & 0x4B ^ 0x5A;
  LODWORD(STACK[0x5590]) = a6;
  v35 = a6 ^ (2 * ((a6 ^ 0x56) & (2 * ((a6 ^ 0x56) & (2 * ((a6 ^ 0x56) & (2 * ((a6 ^ 0x56) & (2 * ((a6 ^ 0x56) & (2 * ((a6 ^ 6) & (2 * a6) & v13 ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34));
  LODWORD(STACK[0x52E0]) = ((a6 ^ (2 * ((a6 ^ 0x56) & (2 * ((a6 ^ 0x56) & (2 * ((a6 ^ 0x56) & (2 * ((a6 ^ 0x56) & (2 * ((a6 ^ 0x56) & (2 * ((a6 ^ 6) & (2 * a6) & v13 ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34))) ^ 0xFFFFFF84) & ((((v33 ^ (v9 + 830)) & (v22 ^ 0xFFFF0A) ^ ((v22 & 0x10) + 6328320)) << 8) ^ 0x9F62D9CF) | v35 & 0x30;
  LODWORD(STACK[0x5500]) = v22;
  LOBYTE(v34) = (v22 & 0x7E ^ 0x58) & (v22 & 0x7E ^ 0xE4) ^ (v22 & 0x42 | 0x80);
  v36 = (((((v11 ^ (2 * v25)) << 8) ^ 0x570CB6B3) & (a1 ^ 0x570CFF43) | a1 & 0x4C) ^ 0x570C31B7u) << (a4 - ((((v34 ^ 0xE0) + 73) ^ ((v34 ^ 0x14) - 67)) ^ ((v34 ^ 0x4A) - 29)));
  LODWORD(STACK[0x5580]) = a7;
  v37 = ((v36 - ((2 * v36) & 0xD5F5B6) + 15399643) ^ a7) << 8;
  LODWORD(STACK[0x51A0]) = v37;
  v38 = LODWORD(STACK[0x5700]);
  v39 = LODWORD(STACK[0x5540]);
  v41 = STACK[0x5530];
  LODWORD(STACK[0x52D0]) = (v37 ^ 0x662CE141) & (LODWORD(STACK[0x5530]) ^ 0xFFFFFF84) | STACK[0x5530] & 0xBE;
  LOBYTE(v36) = v12 & 0xD4 | 8;
  LOBYTE(v33) = (v12 ^ 0x44) & (2 * ((v12 ^ 0x44) & (2 * ((v12 ^ 0x44) & (2 * ((v12 ^ 0x44) & (2 * ((v12 ^ 0x44) & (2 * v36) ^ v36)) ^ v36)) ^ v36)) ^ v36)) ^ v36;
  LODWORD(v36) = LODWORD(STACK[0x5780]);
  LODWORD(STACK[0x4FD0]) = v12;
  v42 = ((v12 ^ (2 * v33)) ^ 0xD4) << 8;
  v43 = ((v39 << 16) ^ 0x6D3DC628) & ~v42 | v42 & 0x3900;
  LOBYTE(v39) = v15 & 0x25 ^ 0x4C;
  LODWORD(STACK[0x5018]) = v15;
  LOBYTE(v39) = v15 ^ (2 * ((v15 ^ 0x2C) & (2 * ((v15 ^ 0x2C) & (2 * ((v15 ^ 0x2C) & (2 * ((v15 ^ 0x2C) & (2 * ((v15 ^ 0x2C) & (2 * (v15 & (2 * v15) & 0x5A ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39));
  v44 = v19 & 0x5B ^ 0xEA;
  LODWORD(STACK[0x55D0]) = v19;
  v45 = v16 & a3 ^ 0x82;
  LODWORD(STACK[0x5550]) = v16;
  v46 = (v16 ^ (2 * ((v16 ^ 0x58) & (2 * ((v16 ^ 0x58) & (2 * ((v16 ^ 0x58) & (2 * ((v16 ^ 0x58) & (2 * ((v16 ^ 0x58) & (2 * (v16 & (2 * v45) ^ v45)) ^ v45)) ^ v45)) ^ v45)) ^ v45)) ^ v45))) << 8;
  v47 = (((v19 ^ (2 * ((v19 ^ 6) & (2 * ((v19 ^ 6) & (2 * ((v19 ^ 6) & (2 * ((v19 ^ 6) & (2 * ((v19 ^ 6) & (2 * ((v19 ^ 6) & (2 * v19) & 0xE ^ v44)) ^ v44)) ^ v44)) ^ v44)) ^ v44)) ^ v44))) << 16) ^ 0x9E987B3A) & (v46 ^ 0xDEFFA27A) | v46 & 0x8400;
  LODWORD(STACK[0x51A8]) = v47;
  v48 = (v39 ^ 0xFFFFC0) & (v47 ^ 0xDAD0FA) ^ v39 & 0x3F;
  v49 = LODWORD(STACK[0x5790]);
  LODWORD(STACK[0x55E0]) = v14;
  v50 = ((v14 << 8) ^ 0xFFFFE1FF) & ((v49 << 16) ^ 0xD0B473AC) ^ ((v14 << 8) & 0x8C00 | 0x2B450040);
  LODWORD(STACK[0x5198]) = v50;
  v51 = (v50 ^ 0xD48668) & (LODWORD(STACK[0x5520]) ^ 0xFFFF0B) | STACK[0x5520] & 0x7B;
  v52 = a2 & 0xFFFFFFA1 ^ 0x19;
  LODWORD(STACK[0x4FE0]) = a2;
  v53 = a2 ^ (2 * ((a2 ^ 0xE) & (2 * ((a2 ^ 0xE) & (2 * ((a2 ^ 0xE) & (2 * ((a2 ^ 0xE) & (2 * ((a2 ^ 0xE) & (2 * (((2 * (a2 & 0xF)) ^ v13) & (a2 ^ 0xE) ^ v52)) ^ v52)) ^ v52)) ^ v52)) ^ v52)) ^ v52));
  LODWORD(STACK[0x5190]) = ((v48 << 8) ^ 0x9BB6B17A) & ((a2 ^ (2 * ((a2 ^ 0xE) & (2 * ((a2 ^ 0xE) & (2 * ((a2 ^ 0xE) & (2 * ((a2 ^ 0xE) & (2 * ((a2 ^ 0xE) & (2 * (((2 * (a2 & 0xF)) ^ v13) & (a2 ^ 0xE) ^ v52)) ^ v52)) ^ v52)) ^ v52)) ^ v52)) ^ v52))) ^ 0xFFFFFF5A) ^ (v53 & v24 | 0x65048A00);
  v54 = STACK[0x5248];
  v55 = STACK[0x5248] & 0xFFFFFFB9 ^ 0x63;
  v56 = v54 ^ (2 * ((v54 ^ 0x7A) & (2 * ((v54 ^ 0x7A) & (2 * ((v54 ^ 0x7A) & (2 * ((v54 ^ 0x7A) & (2 * ((v54 ^ 0x7A) & (2 * (((2 * v54) & 0x76 ^ 0x42) & (v54 ^ 0x72) ^ v55)) ^ v55)) ^ v55)) ^ v55)) ^ v55)) ^ v55));
  v57 = ((v51 << 8) ^ 0xC91615E3) & ((v54 ^ (2 * ((v54 ^ 0x7A) & (2 * ((v54 ^ 0x7A) & (2 * ((v54 ^ 0x7A) & (2 * ((v54 ^ 0x7A) & (2 * ((v54 ^ 0x7A) & (2 * (((2 * v54) & 0x76 ^ 0x42) & (v54 ^ 0x72) ^ v55)) ^ v55)) ^ v55)) ^ v55)) ^ v55)) ^ v55))) ^ 0xFFFFFF4E) | v56 & 0x1C;
  v58 = STACK[0x5470];
  LOBYTE(v55) = STACK[0x5470] & 0xE1 ^ 0x97;
  v59 = STACK[0x5740];
  v60 = LODWORD(STACK[0x5740]);
  v61 = STACK[0x52B8];
  LOBYTE(v50) = STACK[0x52B8] & 0x72 ^ 0x47;
  v62 = (((LODWORD(STACK[0x5310]) ^ 0x7E) >> 6 << 14) | 0x30400025) ^ (((v58 ^ (2 * ((v58 ^ 0x7A) & (2 * ((v58 ^ 0x7A) & (2 * ((v58 ^ 0x7A) & (2 * ((v58 ^ 0x7A) & (2 * ((v58 ^ 0x7A) & (2 * (((2 * v58) & 0x76 ^ 0x1A) & (v58 ^ 0x7A) ^ v55)) ^ v55)) ^ v55)) ^ v55)) ^ v55)) ^ v55))) << 16) ^ 0xC75D3F98) & ~((LODWORD(STACK[0x5310]) ^ 0x7E) << 8);
  v63 = LODWORD(STACK[0x54F0]) ^ 0x2F5069;
  LODWORD(STACK[0x5178]) = v43;
  v64 = (v43 ^ 0x2F10D7) & v63 ^ v43 & 0xD0AF20;
  v65 = LODWORD(STACK[0x53A0]);
  v66 = LODWORD(STACK[0x5320]);
  v67 = ((LODWORD(STACK[0x56E0]) << 8) & 0xFE00 ^ 0xFFFFF1FF) & ((v38 << 16) ^ 0xC48B12B7) | (LODWORD(STACK[0x56E0]) << 8) & 0xED00;
  LODWORD(STACK[0x5180]) = v67;
  LODWORD(STACK[0x52C0]) = ((v64 << 8) ^ 0xFCC74B97) & (v60 ^ 0xFFFFFF62) | v59 & 0x68;
  v68 = ((v61 ^ (2 * ((v61 ^ 0x74) & (2 * ((v61 ^ 0x74) & (2 * ((v61 ^ 0x74) & (2 * ((v61 ^ 0x74) & (2 * ((v61 ^ 0x74) & (2 * (v50 ^ v61 & 6)) ^ v50)) ^ v50)) ^ v50)) ^ v50)) ^ v50))) ^ 0x72) << 16;
  v69 = (LODWORD(STACK[0x2E3C]) ^ (v66 << 8)) & (v68 ^ 0xD783FFE2) | v68 & 0x7D0000;
  v70 = STACK[0x56F0];
  LOBYTE(v68) = STACK[0x56F0] & 0x37 ^ 0x2E;
  v71 = (v69 ^ 0x75607D) & (LODWORD(STACK[0x5268]) ^ 0xF5E88C) ^ v69 & 0xA1782;
  LODWORD(STACK[0x5130]) = v62;
  v72 = (v62 ^ 0x28042) & (v36 ^ 0xD28698) ^ v62 & 0x2D7981;
  v73 = LODWORD(STACK[0x5480]);
  v74 = STACK[0x5370];
  LOBYTE(v36) = STACK[0x5370] & 0xB8 ^ 0xF9;
  LOBYTE(v36) = v74 ^ (2 * ((v74 ^ 0x46) & (2 * ((v74 ^ 0x46) & (2 * ((v74 ^ 0x46) & (2 * ((v74 ^ 0x46) & (2 * ((v74 ^ 0x46) & (2 * ((v74 ^ 0x46) & 0x3E ^ v36)) ^ v36)) ^ v36)) ^ v36)) ^ v36)) ^ v36));
  v75 = (LODWORD(STACK[0x53A8]) ^ 0xE5) << 16;
  v76 = ((v65 << 8) ^ 0x20BE5EBB) & (v75 ^ 0x6AFEFFFF) | v75 & 0x410000;
  v77 = STACK[0x55A0];
  LODWORD(STACK[0x52C8]) = ((v72 << 8) ^ 0x4B0B6ED9) & (LODWORD(STACK[0x55A0]) ^ 0xFFFFFFFD) | STACK[0x55A0] & 0x26;
  LODWORD(STACK[0x52D8]) = ((v71 << 8) ^ 0xB8C6302) & (LODWORD(STACK[0x54D0]) ^ 0xFFFFFF55) | STACK[0x54D0] & 0xFD;
  v78 = LODWORD(STACK[0x5360]) ^ 0x427EEC;
  LODWORD(STACK[0x5188]) = v76;
  v79 = ((v76 ^ 0x401C44) & v78) + (v76 & 0xBD8100);
  v80 = ((STACK[0x53C0] << 16) ^ 0x14A9CBDD) & ((LODWORD(STACK[0x5390]) << 8) ^ 0xB5FFB1FD) | (LODWORD(STACK[0x5390]) << 8) & 0x3400;
  LODWORD(STACK[0x5170]) = v80;
  v81 = ((v73 << 16) ^ 0x3C4B3F80) & ~((LODWORD(STACK[0x54A0]) ^ 0x2D) << 8) & 0xFFFF3FFF | ((LODWORD(STACK[0x54A0]) ^ 0x2D) >> 6 << 14);
  LODWORD(STACK[0x5158]) = v81;
  v82 = STACK[0x5408];
  v83 = STACK[0x5408] & 0xFFFFFF92 ^ 0xFFFFFFBF;
  v84 = v82 ^ (2 * ((v82 ^ 0x24) & (2 * ((v82 ^ 0x24) & (2 * ((v82 ^ 0x24) & (2 * ((v82 ^ 0x24) & (2 * ((v82 ^ 0x24) & 0x36 ^ v83)) ^ v83)) ^ v83)) ^ v83)) ^ v83));
  LODWORD(STACK[0x5168]) = v84;
  v85 = (~v82 | 0xFFFFFF00) & ((v79 << 8) ^ 0x41FA7D01) | v84 & 0xFE;
  LODWORD(STACK[0x5128]) = v85;
  v86 = STACK[0x5258];
  v87 = STACK[0x5258] & 0xFFFFFFA6 ^ 0xFFFFFF8F;
  LODWORD(v36) = ((v36 ^ 0xFFFF05) & (v67 ^ 0xEBCD8A) ^ v36 & 0xC2) << 8;
  v88 = v86 ^ (2 * ((v86 ^ 0x28) & (2 * ((v86 ^ 0x28) & (2 * ((v86 ^ 0x28) & (2 * ((v86 ^ 0x28) & (2 * ((v86 ^ 0x28) & 0xE ^ v87)) ^ v87)) ^ v87)) ^ v87)) ^ v87));
  LODWORD(STACK[0x5140]) = v88;
  LODWORD(STACK[0x5138]) = (v88 ^ 0x4F880B15) & (v36 ^ 0xADDA86FF) | v36 & 0xB077F400;
  LODWORD(v36) = (LODWORD(STACK[0x53E0]) ^ 0xFFFF04) & (v80 ^ 0x424D8) ^ STACK[0x53E0] & 0xFA;
  v89 = STACK[0x5368];
  LOBYTE(v72) = STACK[0x5368] & 0x9C ^ 0xDB;
  LOBYTE(v67) = (v89 ^ 0x6E) & (2 * ((v89 ^ 0x6E) & (2 * ((v89 ^ 0x6E) & (2 * ((v89 ^ 0x6E) & (2 * ((v89 ^ 0x6E) & (2 * ((v89 ^ 0x6E) & 0x32 ^ v72)) ^ v72)) ^ v72)) ^ v72)) ^ v72)) ^ v72;
  v90 = (LODWORD(STACK[0x5398]) | 0xFFFF00) & (v81 ^ LODWORD(STACK[0x2E40])) ^ STACK[0x5398] & 0x72;
  v91 = v21 & 0x1E ^ 0x19;
  LODWORD(STACK[0x4FD8]) = v21;
  v92 = ((v21 ^ (2 * ((v21 ^ 0x6C) & (2 * ((v21 ^ 0x6C) & (2 * ((v21 ^ 0x6C) & (2 * ((v21 ^ 0x6C) & (2 * ((v21 ^ 0x6C) & (2 * (v91 ^ v21 & 0x32)) ^ v91)) ^ v91)) ^ v91)) ^ v91)) ^ v91))) ^ 0x1E) << 8;
  v93 = (v92 & 0x3200 | 0x210D00E9) ^ (((v70 ^ (2 * ((v70 ^ 0x7A) & (2 * ((v70 ^ 0x7A) & (2 * ((v70 ^ 0x7A) & (2 * ((v70 ^ 0x7A) & (2 * ((v70 ^ 0x7A) & (2 * ((v70 ^ 0x7A) & (2 * v70) & 0x76 ^ v68)) ^ v68)) ^ v68)) ^ v68)) ^ v68)) ^ v68))) << 16) ^ 0xD685CD16) & ~v92;
  LOBYTE(v68) = v20 & 0xDB | 0x20;
  LOBYTE(v92) = v68 ^ v20 & 0xC0;
  LODWORD(STACK[0x4FE8]) = v20;
  LODWORD(STACK[0x5150]) = v93;
  v94 = ((v20 ^ (2 * ((v20 ^ 0x5A) & (2 * ((v20 ^ 0x5A) & (2 * ((v20 ^ 0x5A) & (2 * ((v20 ^ 0x5A) & (2 * ((v20 ^ 0x5A) & (2 * ((v20 ^ 0x5A) & (2 * v68) ^ v92)) ^ v92)) ^ v92)) ^ v92)) ^ v92)) ^ v92))) ^ 0x17EE1E) & (v93 ^ 0xA82200) ^ v93 & 0xE81162;
  v95 = ((v90 << 8) ^ 0x6FB717C3) & (LODWORD(STACK[0x5510]) ^ 0xFFFFFF52) | STACK[0x5510] & 0x3C;
  v96 = ((v89 ^ (2 * v67)) ^ 0x9C) << 16;
  v97 = ((LODWORD(STACK[0x52B0]) << 8) ^ 0x437157A6) & ~v96 | v96 & 0x8E0000;
  LODWORD(STACK[0x5160]) = v97;
  v98 = ((((v97 ^ 0x41459) & (LODWORD(STACK[0x5380]) ^ 0x153ECD) ^ v97 & 0xEAC182) << 8) ^ 0xA95252FE) & (LODWORD(STACK[0x54B0]) ^ 0xFFFFFF80) ^ ((STACK[0x54B0] & 1) + 4279040);
  v99 = STACK[0x5670];
  v100 = ((v36 << 8) ^ 0x11874965) & (LODWORD(STACK[0x5670]) ^ 0xFFFFFFEE) | STACK[0x5670] & 0x9A;
  LODWORD(v36) = (LODWORD(STACK[0x5260]) ^ 0xFFFFFFC0) & ((LODWORD(STACK[0x52A8]) << 8) ^ 0x5131AC45) | STACK[0x5260] & 0xBA;
  LODWORD(STACK[0x5560]) = a1;
  v101 = ((v94 << 8) ^ 0x7CC6B355) & (LODWORD(STACK[0x54C0]) ^ 0xFFFFFFE8) | STACK[0x54C0] & 0xAA;
  LODWORD(STACK[0x52F8]) = v101;
  v102 = STACK[0x52F0];
  v103 = (LODWORD(STACK[0x5298]) ^ ((v36 ^ 0x31C2FD) << ((89 * ((a1 & 0x48 ^ 0x48) + (a1 & 0x48))) & 0xF8))) << 8;
  LODWORD(STACK[0x5148]) = v102 ^ (2 * ((v102 ^ 0x10) & (2 * ((v102 ^ 0x10) & (2 * ((v102 ^ 0x10) & (2 * (((2 * (((2 * (((2 * v102) & 0x22 | 0x11) & v102)) | 0x11) & v102)) ^ 0x72) & (v102 ^ 0x10) ^ v102 & 0x63 ^ 0xFFFFFFE9)) ^ v102 & 0x63 ^ 0xFFFFFFE9)) ^ v102 & 0x63 ^ 0xFFFFFFE9)) ^ v102 & 0x63 ^ 0xFFFFFFE9));
  v104 = (v103 ^ 0xFFFF1FFF) & ((v102 ^ (2 * ((v102 ^ 0x10) & (2 * ((v102 ^ 0x10) & (2 * ((v102 ^ 0x10) & (2 * (((2 * (((2 * (((2 * v102) & 0x22 | 0x11) & v102)) | 0x11) & v102)) ^ 0x72) & (v102 ^ 0x10) ^ v102 & 0x63 ^ 0xE9)) ^ v102 & 0x63 ^ 0xE9)) ^ v102 & 0x63 ^ 0xE9)) ^ v102 & 0x63 ^ 0xE9))) ^ 0xAFBE886) | v103 & 0xF5041700;
  v105 = STACK[0x5328];
  LOBYTE(v36) = STACK[0x5328] & 0x3A ^ 0xB1;
  LODWORD(v36) = (v105 ^ (2 * ((v105 ^ 0x58) & (2 * ((v105 ^ 0x58) & (2 * ((v105 ^ 0x58) & (2 * ((v105 ^ 0x58) & (2 * (v105 & (2 * (v36 ^ v105 & 0x22)) ^ v36)) ^ v36)) ^ v36)) ^ v36)) ^ v36))) << 8;
  v106 = (v36 ^ 0xFFFFCFFF) & ((LODWORD(STACK[0x5338]) << 16) ^ 0x25A9D0F8) | v36 & 0x2F00;
  v107 = (v106 ^ 0x91BA1437) & (LODWORD(STACK[0x5348]) ^ 0xFFFFFF97) | STACK[0x5348] & 0x30;
  v108 = LODWORD(STACK[0x52E0]) ^ 0x8B365230;
  v109 = ((v107 << 8) ^ 0xCF8E7910) & (LODWORD(STACK[0x57C0]) ^ 0xFFFFFF03) | STACK[0x57C0] & 0xEF;
  v110 = ((LODWORD(STACK[0x52E8]) >> 10) ^ 0x2BB6FD) + ((LODWORD(STACK[0x52E0]) << 14) ^ 0x8DB3C000) + ((LODWORD(STACK[0x52E0]) >> 3) ^ 0x1C7BC6D9);
  v111 = STACK[0x52D0];
  HIDWORD(v113) = LODWORD(STACK[0x52D0]) ^ 0x2DFE5;
  LODWORD(v113) = LODWORD(STACK[0x51A0]) ^ 0xEAF80000;
  v112 = v113 >> 18;
  v114 = v104 ^ 0xAFBFCE5;
  HIDWORD(v113) = v104 ^ 0xAFBFCE5;
  LODWORD(v113) = v103;
  LODWORD(STACK[0x52E8]) = v104 ^ 0xAFBFCE5;
  v115 = ((v113 >> 17) + (__PAIR64__(v104 ^ 0xAFBFCE5, v103) >> 19)) ^ (v103 >> 10) ^ (v110 - 771244123 + ((((__PAIR64__(v35, v108) >> 7) ^ 0x7926E1D2) - 1039175358) ^ (((__PAIR64__(v35, v108) >> 7) ^ 0xFA439477) + 1097467109) ^ (((__PAIR64__(v35, v108) >> 7) ^ 0x15B4A56C) - 1365428736))) ^ 0x3D;
  v116 = LODWORD(STACK[0x51B0]) ^ 0x3BFFFF8C;
  LODWORD(STACK[0x5028]) = v116;
  v117 = v85 ^ 0x5AA17823;
  LODWORD(STACK[0x5050]) = v85 ^ 0x5AA17823;
  v118 = v116 ^ v85 ^ 0x5AA17823 ^ (v115 - ((2 * v115) & 0xCB492560) - 442199376);
  LODWORD(v36) = v111 ^ 0xCE5AA873;
  HIDWORD(v113) = v41;
  LODWORD(v113) = v111 ^ 0xCE5AA873;
  v119 = (v113 >> 7) ^ 0x2F07B167 ^ (v112 - ((2 * v112) & 0xCB055310) - 444421752);
  v120 = STACK[0x2E4C];
  LODWORD(STACK[0x5048]) = v57 ^ 0x579A2CD;
  HIDWORD(v113) = v56;
  LODWORD(v113) = v57 ^ 0x579A2CD;
  v121 = (((v113 >> 7) ^ 0x12681B2) - 168557069) ^ (((v113 >> 7) ^ 0xE709F828) + 333151337) ^ (((v113 >> 7) ^ 0x94E0553E) + 1613943167);
  v122 = (v95 ^ 0x1B785500) + (((v109 << 15) ^ 0x431B0000 | (v106 >> 9) ^ 0x12C87D) ^ (v107 >> 2) ^ ((v109 << 13) ^ 0x10C6C000 | v120 ^ (v106 >> 11)) ^ 0x2D0ABBBF) + (LODWORD(STACK[0x2E44]) ^ (v111 >> 3)) + v119 + 1;
  v123 = (v122 + 1760060671 - ((2 * v122) & 0xD1D0C9FE)) ^ v108;
  HIDWORD(v113) = v118;
  LODWORD(v113) = v118;
  v124 = v113 >> 17;
  HIDWORD(v113) = v118;
  LODWORD(v113) = v118;
  v125 = ((LODWORD(STACK[0x5198]) >> 10) ^ 0xFFC12020) + (LODWORD(STACK[0x2E48]) ^ (v57 << 14)) + ((v57 >> 3) ^ 0xF3A201E0) + (v100 ^ 0x60B79190) + v121 - (((v113 >> 19) + v124) ^ (v118 >> 10)) + 2044876575;
  HIDWORD(v113) = v123;
  LODWORD(v113) = v123;
  v126 = v113 >> 17;
  HIDWORD(v113) = v123;
  LODWORD(v113) = v123;
  v127 = v36 ^ (v125 - ((2 * v125) & 0x8518EF2C) + 1116501910);
  LODWORD(v36) = v126 - (v113 >> 19);
  v128 = STACK[0x5190];
  HIDWORD(v113) = v53;
  LODWORD(v113) = LODWORD(STACK[0x5190]) ^ 0x83FB9F80;
  LODWORD(v36) = ((v113 >> 7) ^ 0x414DBBB3 ^ (((v128 << 14) ^ 0x77BEC000 | (LODWORD(STACK[0x51A8]) >> 10) ^ 0x27B0FF) + 59078449 - 2 * (((v128 << 14) ^ 0x77BEC000 | (LODWORD(STACK[0x51A8]) >> 10) ^ 0x27B0FF) & 0x385773B ^ ((LODWORD(STACK[0x51A8]) >> 10) ^ 0x27B0FF) & 0xA))) + ((v128 >> 3) ^ 0x1CF3BBDF) + (v36 ^ (v123 >> 10));
  v129 = v101 ^ 0x4CF804FA;
  v130 = ((v36 - ((2 * v36) & 0x1FA3A00E) - 1882075129) ^ v101 ^ 0x4CF804FA) + (v57 ^ 0x62EFF0FB);
  v131 = STACK[0x52C8];
  HIDWORD(v113) = v77;
  LODWORD(v113) = LODWORD(STACK[0x52C8]) ^ 0x205C2F7;
  v132 = v113 >> 7;
  v133 = STACK[0x52C0];
  HIDWORD(v113) = v59;
  LODWORD(v113) = LODWORD(STACK[0x52C0]) ^ 0x46793E4D;
  v134 = (((v113 >> 7) ^ 0x17B6525) - 94695708) ^ (((v113 >> 7) ^ 0x14F22A25) - 271433244) ^ (((v113 >> 7) ^ 0x6FA39E01) - 1803291192);
  HIDWORD(v113) = v127;
  LODWORD(v113) = v127;
  v135 = v113 >> 17;
  v136 = __PAIR64__(v130, __ROR4__(v127, 19));
  v137 = (LODWORD(STACK[0x5178]) >> 10) & 0xAB113 ^ 0x90E09102 ^ (((LODWORD(STACK[0x52C0]) ^ 0x46793E4D) << 14) ^ 0x4F29CEEC) & ((LODWORD(STACK[0x5178]) >> 10) ^ 0xFFE48ECC);
  v138 = (LODWORD(STACK[0x5130]) >> 10) ^ 0xFFC200F0;
  LODWORD(STACK[0x5038]) = LODWORD(STACK[0x5190]) ^ 0xE79DDEFB;
  LODWORD(STACK[0x5058]) = v98 ^ 0x23121000;
  LODWORD(v36) = (v98 ^ 0x23121000) + (v128 ^ 0xE79DDEFB) + v138 + ((v131 >> 3) ^ 0x16B698FB) + ((v131 << 14) ^ 0xCE083FFF) + (((v132 ^ 0xB3E6BD35) - 2030208762) ^ ((v132 ^ 0x14F41627) + 569365016) ^ ((v132 ^ 0xAA7DC918) - 1620701911)) - (v135 ^ v136 ^ (v127 >> 10)) - 2 * ((v135 ^ v136) & (v127 >> 10));
  v139 = v130;
  LODWORD(v136) = v130;
  v140 = (((v133 >> 3) ^ 0xF59DC828) + v137 + v134 - (v130 >> 10) - ((v136 >> 17) ^ __ROR4__(v130, 19)) + 2130003258) ^ v114;
  v141 = (v140 - ((2 * v140) & 0x6F620A50) - 1213135576) ^ v131 ^ 0x205C2F7;
  v142 = STACK[0x52D8];
  HIDWORD(v136) = STACK[0x54D0];
  LODWORD(v136) = LODWORD(STACK[0x52D8]) ^ 0xE4C406DF;
  v143 = ((v69 >> 10) ^ 0x1520A6) + ((v142 << 14) ^ 0x650EC000) + ((v142 >> 3) ^ 0x1F8EB287) + ((((v136 >> 7) ^ 0x63814789) + 779221051) ^ (((v136 >> 7) ^ 0x5BF1C2AF) + 369196317) ^ (((v136 >> 7) ^ 0x4E41E603) + 61954481));
  v144 = (v36 - 947168824);
  HIDWORD(v136) = v144;
  LODWORD(v136) = v36 - 947168824;
  LODWORD(v36) = v136 >> 17;
  HIDWORD(v136) = v144;
  LODWORD(v136) = v144;
  LODWORD(v36) = (v143 + v36 + (v136 >> 19) + (v144 >> 10) - 1002560663) ^ v109;
  v145 = (((v133 ^ 0xA3F70C2F) + 443665822) ^ ((v133 ^ 0xB656579B) + 265328170) ^ ((v133 ^ 0x46B0E50B) - 13228870)) + 1297942424 + (((v36 ^ 0x2CEE39CF) + 25544353) ^ ((v36 ^ 0xD49E9654) - 101357252) ^ ((v36 ^ 0x1D1029AD) + 813422275));
  v146 = LODWORD(STACK[0x5138]) ^ 0x7F9FBFB3;
  HIDWORD(v136) = LODWORD(STACK[0x5140]) ^ 0x26;
  LODWORD(v136) = v146;
  LODWORD(v36) = ((LODWORD(STACK[0x5180]) >> 10) ^ 0xFFCED989) - (v146 << 14) + (v136 >> 7);
  HIDWORD(v136) = v141;
  LODWORD(v136) = v141;
  v147 = v146;
  LODWORD(STACK[0x5030]) = v146;
  LODWORD(v36) = v36 + (v146 >> 3) - v118 + (v141 >> 10) - ((v136 >> 19) ^ __ROR4__(v141, 17)) + 1;
  v148 = (v36 - ((2 * v36) & 0x316325C8) + 414290660) ^ v142 ^ 0xE4C406DF;
  HIDWORD(v136) = STACK[0x5168];
  LODWORD(v136) = v117;
  LODWORD(v36) = (((v136 >> 7) ^ 0xC04E6769) - 733076367) ^ (((v136 >> 7) ^ 0xADAED761) - 1179741063) ^ (((v136 >> 7) ^ 0x482BF92D) + 1546369589);
  HIDWORD(v136) = v145;
  LODWORD(v136) = v145;
  v149 = v136 >> 19;
  HIDWORD(v136) = v145;
  LODWORD(v136) = v145;
  v150 = v145;
  v151 = STACK[0x5128];
  LODWORD(v36) = (LODWORD(STACK[0x4F40]) ^ (LODWORD(STACK[0x5188]) >> 10)) + ((v151 << 14) ^ 0x7AA4C000) + ((v151 >> 3) ^ 0x17E0BD52) + v36 - v123 - ((v149 + (v136 >> 17)) ^ (v145 >> 10));
  LODWORD(STACK[0x5068]) = v95 ^ 0x19606B12;
  HIDWORD(v136) = STACK[0x5510];
  LODWORD(v136) = v95 ^ 0x19606B12;
  v152 = ((LODWORD(STACK[0x5158]) >> 10) ^ 0xFFF0C270) + ((v95 << 14) ^ 0x15403FFF) + ((v95 >> 3) ^ 0x1C90F55F) + 936884168 + ((((v136 >> 7) ^ 0xCF35B203) + 2095461818) ^ (((v136 >> 7) ^ 0xC79E06EA) + 1951236433) ^ (((v136 >> 7) ^ 0x73507B6A) - 1065091887));
  HIDWORD(v136) = v148;
  LODWORD(v136) = v148;
  v153 = v136 >> 17;
  HIDWORD(v136) = v148;
  LODWORD(v136) = v148;
  v154 = v148;
  v155 = (v136 >> 19) + v153;
  HIDWORD(v136) = v99;
  LODWORD(v136) = v100 ^ 0xC61B9680;
  v156 = (v127 ^ v152 ^ (v148 >> 10) ^ v155) + (v151 ^ 0xBF05EA93);
  v157 = ((LODWORD(STACK[0x5170]) >> 10) ^ 0xFFFADD45) + ((v100 << 14) ^ 0xE4643FFF) + 652749127 + ((((v136 >> 7) ^ 0xDFA7DE93) + 268611545) ^ (((v136 >> 7) ^ 0x616C53BD) - 1362550025) ^ (((v136 >> 7) ^ 0xA8792ADF) + 1742494613));
  v158 = (v36 - 835390013) ^ v147;
  HIDWORD(v136) = v158;
  LODWORD(v136) = v158;
  v159 = (((v157 ^ (v100 >> 3) ^ 0x13E90DCD) - ((v136 >> 17) ^ __ROR4__(v158, 19) ^ (v158 >> 10))) ^ v139) + (v95 ^ 0xE487AAFF);
  HIDWORD(v136) = STACK[0x54C0];
  LODWORD(v136) = v129;
  LODWORD(v36) = (((v136 >> 7) ^ 0x2AF59E60) + 642954649) ^ (((v136 >> 7) ^ 0xCD1C1CFD) - 1044695290) ^ (((v136 >> 7) ^ 0x9CF6213D) - 1873737018);
  HIDWORD(v136) = v156;
  LODWORD(v136) = v156;
  v160 = v136 >> 17;
  HIDWORD(v136) = v156;
  LODWORD(v136) = v156;
  LODWORD(v36) = v144 ^ (((LODWORD(STACK[0x5150]) >> 10) ^ 0xFFC2100C) - 2008582231 + ((LODWORD(STACK[0x52F8]) << 14) ^ 0x8AC0BFFF) + ((LODWORD(STACK[0x52F8]) >> 3) ^ 0x18653A9F) + v36) ^ (v160 - (v136 >> 19) + (v156 >> 10));
  HIDWORD(v136) = STACK[0x54B0];
  LODWORD(v136) = v98 ^ 0x767DE100;
  v161 = (LODWORD(STACK[0x2E50]) ^ (LODWORD(STACK[0x5160]) >> 10)) + 655733007 + ((v98 << 14) ^ 0x7BFFC000) + ((v98 >> 3) ^ 0xE4624200) + (LODWORD(STACK[0x52F8]) ^ 0xC329D4FD) + ((((v136 >> 7) ^ 0xE311709C) - 995224179) ^ (((v136 >> 7) ^ 0xB7637F0) + 751391457) ^ (((v136 >> 7) ^ 0x17326771) + 814547554));
  HIDWORD(v136) = v159;
  LODWORD(v136) = v159;
  v162 = v159;
  v163 = v161 - v141 + ((v136 >> 19) ^ __ROR4__(v159, 17) ^ (v159 >> 10));
  v164 = v109 ^ 0x2158663D;
  HIDWORD(v136) = STACK[0x57C0];
  LODWORD(v136) = v109 ^ 0x2158663D;
  LODWORD(STACK[0x5060]) = v109;
  v165 = ((v106 >> 10) ^ 0x9643E) + ((v109 << 14) ^ 0x218D8000) - 1189071714 + ((((v136 >> 7) ^ 0xA1C1A6D5) - 1969873803) ^ (((v136 >> 7) ^ 0xBF8A0C7A) - 1797409060) ^ (((v136 >> 7) ^ 0x73C3DB6F) + 1486119375));
  v166 = STACK[0x52E8];
  HIDWORD(v136) = LODWORD(STACK[0x5148]) ^ 0xFFFFFFE3;
  LODWORD(v136) = STACK[0x52E8];
  v167 = v136 >> 7;
  HIDWORD(v136) = STACK[0x52E8];
  LODWORD(v136) = v103;
  LODWORD(STACK[0x5040]) = v100 ^ 0x9F486E6F;
  v168 = v36 - (v100 ^ 0x9F486E6F);
  LODWORD(v36) = (v98 ^ 0x23121000) + (v136 >> 18) + v167 + (v166 >> 3) + v150;
  HIDWORD(v136) = v168;
  LODWORD(v136) = v168;
  LODWORD(v36) = v36 - (v136 >> 19);
  HIDWORD(v136) = v168;
  LODWORD(v136) = v168;
  LODWORD(v36) = v36 - (v136 >> 17);
  v169 = v163 + 2532;
  HIDWORD(v136) = v163 + 2532;
  LODWORD(v136) = v163 + 2532;
  v170 = v136 >> 19;
  v171 = __PAIR64__(v118, __ROR4__(v169, 17));
  v172 = ((v109 >> 3) ^ 0x1CAC10C6 ^ v165) + (v169 >> 10) + (v170 ^ v171);
  LODWORD(v171) = v118;
  v173 = v171 >> 18;
  HIDWORD(v171) = v118;
  LODWORD(v171) = v118;
  v174 = (v171 >> 7) - v173;
  v175 = v36 - (v168 >> 10) + 1;
  HIDWORD(v171) = v175;
  LODWORD(v171) = v175;
  LODWORD(v36) = v171 >> 17;
  v176 = __PAIR64__(v123, __ROR4__(v175, 19));
  v177 = v175;
  LODWORD(STACK[0x5070]) = v118;
  v178 = ((v174 ^ (v118 >> 3) ^ ((v36 ^ v176) + (v175 >> 10))) - v158 - 1002905589 - ((2 * ((v174 ^ (v118 >> 3) ^ ((v36 ^ v176) + (v175 >> 10))) - v158)) & 0x8871C016)) ^ v164;
  LODWORD(v176) = v123;
  LODWORD(v36) = (v176 >> 7) - v118;
  HIDWORD(v176) = v123;
  LODWORD(v176) = v123;
  LODWORD(STACK[0x5078]) = v123;
  LODWORD(v36) = v36 + (v123 >> 3) - (v176 >> 18);
  v179 = (v172 - v154) ^ v166;
  HIDWORD(v176) = v179;
  LODWORD(v176) = v179;
  LODWORD(v36) = v36 + (v176 >> 19) - (v179 >> 10);
  HIDWORD(v176) = v179;
  LODWORD(v176) = v179;
  v180 = v176 >> 17;
  v181 = v179;
  HIDWORD(v176) = v178;
  LODWORD(v176) = v178;
  v182 = v176 >> 17;
  LODWORD(v36) = v36 - v180;
  HIDWORD(v176) = v178;
  LODWORD(v176) = v178;
  v183 = v182 + (v176 >> 19);
  HIDWORD(v176) = v127;
  LODWORD(v176) = v127;
  v184 = v176 >> 7;
  HIDWORD(v176) = v127;
  LODWORD(v176) = v127;
  v185 = v127;
  v186 = v184 + (v176 >> 18) + (v127 >> 3) + v123 + v162 - (v183 ^ (v178 >> 10));
  HIDWORD(v176) = v139;
  LODWORD(v176) = v139;
  v187 = v176 >> 18;
  HIDWORD(v176) = v139;
  LODWORD(v176) = v139;
  v188 = v139;
  v189 = (v176 >> 7) + v187;
  v190 = v36 + v156;
  HIDWORD(v176) = v36 + v156;
  LODWORD(v176) = v36 + v156;
  LODWORD(v36) = v176 >> 19;
  v191 = __PAIR64__(v144, __ROR4__(v190, 17));
  v192 = v190;
  v193 = v189 + v185 + (v139 >> 3) - (v190 >> 10) + v168 + (v36 ^ v191);
  LODWORD(v191) = v144;
  LODWORD(v36) = (v191 >> 7) - (v144 >> 3);
  HIDWORD(v191) = v144;
  LODWORD(v191) = v144;
  LODWORD(v36) = v36 - (v191 >> 18);
  HIDWORD(v191) = v186;
  LODWORD(v191) = v186;
  v194 = v191 >> 19;
  v196 = __PAIR64__(v193, __ROR4__(v186, 17));
  v195 = v194 ^ v196;
  LODWORD(v196) = v193;
  v197 = v196 >> 17;
  v198 = v36 - v139 + v169 - (v186 >> 10) + v195;
  HIDWORD(v196) = v193;
  LODWORD(v196) = v193;
  LODWORD(v36) = v197 - (v196 >> 19);
  HIDWORD(v196) = v141;
  LODWORD(v196) = v141;
  v199 = v196 >> 18;
  v200 = __PAIR64__(v150, __ROR4__(v141, 7));
  LODWORD(STACK[0x5080]) = v141;
  LODWORD(v36) = v199 ^ v200 ^ (v141 >> 3) ^ (v36 + (v193 >> 10));
  LODWORD(v200) = v150;
  v201 = v200 >> 18;
  HIDWORD(v200) = v150;
  LODWORD(v200) = v150;
  v202 = v201 + (v200 >> 7);
  HIDWORD(v200) = v198;
  LODWORD(v200) = v198;
  v203 = v200 >> 17;
  v205 = __PAIR64__(v154, __ROR4__(v198, 19));
  v204 = v203 ^ v205;
  LODWORD(STACK[0x5088]) = v150;
  v206 = v154;
  LODWORD(v205) = v154;
  v207 = (v202 ^ (v150 >> 3)) - v141 + v181 + (v198 >> 10) - v204;
  v208 = (v205 >> 7) + v150;
  HIDWORD(v205) = v206;
  LODWORD(v205) = v206;
  v209 = (v36 - v177) ^ v144;
  LODWORD(v36) = v208 - (v205 >> 18) - (v206 >> 3);
  LODWORD(STACK[0x5090]) = v206;
  HIDWORD(v205) = v209;
  LODWORD(v205) = v209;
  v210 = v205 >> 19;
  HIDWORD(v205) = v209;
  LODWORD(v205) = v209;
  LODWORD(v36) = v36 - v210 + (v205 >> 17);
  HIDWORD(v205) = v158;
  LODWORD(v205) = v158;
  v211 = (v205 >> 18) ^ (v158 >> 3);
  v213 = __PAIR64__(v207, __ROR4__(v158, 7));
  v212 = v211 ^ v213;
  LODWORD(v213) = v207;
  v214 = v213 >> 19;
  v215 = __PAIR64__(v156, __ROR4__(v207, 17));
  v216 = v212 - v206 + v192 + (v207 >> 10) - (v214 ^ v215);
  LODWORD(v215) = v156;
  v217 = (v215 >> 18) - v158;
  HIDWORD(v215) = v156;
  v218 = v36 + (v209 >> 10) - v178;
  LODWORD(v36) = v217 + (v215 >> 7) + (v156 >> 3);
  LODWORD(STACK[0x5098]) = v156;
  HIDWORD(v215) = v218;
  LODWORD(v215) = v218;
  LODWORD(v36) = v36 + (v215 >> 19);
  HIDWORD(v215) = v218;
  LODWORD(v215) = v218;
  LODWORD(v36) = v36 + (v215 >> 17);
  HIDWORD(v215) = v216;
  LODWORD(v215) = v216;
  v219 = v215 >> 17;
  v220 = __PAIR64__(v162, __ROR4__(v216, 19));
  v221 = (v219 ^ v220) - (v216 >> 10);
  LODWORD(v220) = v162;
  v222 = v220 >> 7;
  v223 = __PAIR64__(v168, __ROR4__(v162, 18));
  LODWORD(STACK[0x50A0]) = v162;
  v224 = (v221 ^ ((v222 ^ v223) + (v162 >> 3))) - (v156 + v193);
  LODWORD(v223) = v168;
  v225 = v162 + (v168 >> 3) + ((v223 >> 18) ^ __ROR4__(v168, 7));
  v226 = v36 + (v218 >> 10) - v186;
  HIDWORD(v223) = v226;
  LODWORD(v223) = v226;
  LODWORD(v36) = v225 + (v223 >> 17);
  HIDWORD(v223) = v226;
  LODWORD(v223) = v226;
  LODWORD(v36) = v36 - (v223 >> 19);
  HIDWORD(v223) = v169;
  LODWORD(v223) = v169;
  v227 = v223 >> 18;
  HIDWORD(v223) = v169;
  LODWORD(v223) = v169;
  v228 = v223 >> 7;
  HIDWORD(v223) = v224;
  LODWORD(v223) = v224;
  v229 = v223 >> 19;
  HIDWORD(v223) = v224;
  LODWORD(v223) = v224;
  v230 = ((v228 - v227) ^ (v169 >> 3)) - v168 + v209 - (((v223 >> 17) + v229) ^ (v224 >> 10));
  v231 = v177;
  HIDWORD(v223) = v177;
  LODWORD(v223) = v177;
  v232 = v169 - (v223 >> 18);
  HIDWORD(v223) = v177;
  LODWORD(v223) = v177;
  v233 = v36 - (v226 >> 10) - v198;
  LODWORD(v36) = v232 + (v223 >> 7) + (v231 >> 3);
  HIDWORD(v223) = v233;
  LODWORD(v223) = v233;
  LODWORD(v36) = v36 + (v223 >> 19);
  HIDWORD(v223) = v233;
  LODWORD(v223) = v233;
  LODWORD(v36) = v36 + (v223 >> 17);
  HIDWORD(v223) = v181;
  LODWORD(v223) = v181;
  v234 = (v223 >> 18) + (v181 >> 3);
  HIDWORD(v223) = v181;
  LODWORD(v223) = v181;
  *(v23 - 152) = v144;
  LODWORD(STACK[0x50A8]) = v181;
  v235 = (v223 >> 7) - v234;
  HIDWORD(v223) = v230;
  LODWORD(v223) = v230;
  v236 = v223 >> 17;
  HIDWORD(v223) = v230;
  LODWORD(v223) = v230;
  v237 = v235 - v218 + v236 + (v223 >> 19);
  v238 = v36 - (v233 >> 10) - v207;
  HIDWORD(v223) = v238;
  LODWORD(v223) = v238;
  LODWORD(v36) = v223 >> 19;
  HIDWORD(v223) = v238;
  LODWORD(v223) = v238;
  LODWORD(v36) = (v36 + (v223 >> 17)) ^ (v238 >> 10);
  HIDWORD(v223) = v178;
  LODWORD(v223) = v178;
  v239 = v223 >> 18;
  v240 = __PAIR64__(v192, __ROR4__(v178, 7));
  LODWORD(STACK[0x50B0]) = v178;
  v241 = v216 ^ v181 ^ ((v239 ^ v240) - (v178 >> 3) + v36);
  v242 = (v237 + (v230 >> 10)) ^ v231;
  LODWORD(v240) = v192;
  LODWORD(v36) = v240 >> 7;
  v243 = __PAIR64__(v242, __ROR4__(v192, 18));
  LODWORD(STACK[0x50B8]) = v192;
  LODWORD(v36) = (v36 ^ v243) - (v192 >> 3) + v178 + v226;
  LODWORD(v243) = v242;
  LODWORD(v36) = v36 - (v243 >> 19) - (v242 >> 10);
  HIDWORD(v243) = v242;
  LODWORD(v243) = v242;
  v244 = v243 >> 17;
  HIDWORD(v243) = v193;
  LODWORD(v243) = v193;
  v245 = v243 >> 18;
  v246 = v36 + v244;
  HIDWORD(v243) = v193;
  LODWORD(v243) = v193;
  LODWORD(v36) = v245 + (v243 >> 7);
  HIDWORD(v243) = v186;
  LODWORD(v243) = v186;
  v247 = v243 >> 18;
  HIDWORD(v243) = v186;
  LODWORD(v243) = v186;
  LODWORD(STACK[0x50C0]) = v186;
  v248 = (v243 >> 7) - v247 - (v192 + (v186 >> 3)) - v224;
  HIDWORD(v243) = v241;
  LODWORD(v243) = v241;
  v249 = v248 - (v243 >> 19);
  HIDWORD(v243) = v241;
  LODWORD(v243) = v241;
  v250 = v249 - (v243 >> 17);
  LODWORD(STACK[0x50C8]) = v193;
  v251 = __PAIR64__(v198, __ROR4__(v246, 17));
  v252 = v246;
  v253 = (v36 ^ (v193 >> 3) ^ __ROR4__(v246, 19) ^ v251 ^ (v246 >> 10)) - (v186 + v233);
  LODWORD(v251) = v198;
  LODWORD(v36) = v251 >> 7;
  HIDWORD(v251) = v198;
  LODWORD(v251) = v198;
  LODWORD(v36) = v36 - (v251 >> 18);
  v254 = v250 - (v241 >> 10);
  HIDWORD(v251) = v254;
  LODWORD(v251) = v254;
  v255 = v251 >> 19;
  HIDWORD(v251) = v209;
  LODWORD(v251) = v209;
  v256 = v251 >> 18;
  HIDWORD(v251) = v209;
  LODWORD(v251) = v209;
  v257 = (v251 >> 7) - v256;
  v258 = __PAIR64__(v253, __ROR4__(v254, 17));
  v259 = v198;
  LODWORD(STACK[0x50D0]) = v198;
  v260 = (v36 ^ (v198 >> 3)) + v193 - v230 - (v254 >> 10) + (v255 ^ v258);
  LODWORD(v258) = v253;
  LODWORD(v36) = v258 >> 19;
  HIDWORD(v258) = v253;
  LODWORD(v258) = v253;
  LODWORD(v36) = (v258 >> 17) - v36;
  v261 = v257 + (v209 >> 3);
  LODWORD(STACK[0x50D8]) = v209;
  LODWORD(STACK[0x5158]) = v253;
  HIDWORD(v258) = v260;
  LODWORD(v258) = v260;
  v262 = v258 >> 17;
  HIDWORD(v258) = v260;
  LODWORD(v258) = v260;
  LODWORD(v36) = v261 ^ (v253 >> 10) ^ v36;
  v263 = (v258 >> 19) + v262;
  HIDWORD(v258) = v207;
  LODWORD(v258) = v207;
  v264 = v258 >> 7;
  v265 = __PAIR64__(v218, __ROR4__(v207, 18));
  v266 = (v264 ^ v265) + (v207 >> 3);
  v267 = v207;
  LODWORD(STACK[0x50E0]) = v207;
  v268 = v260;
  LODWORD(STACK[0x5160]) = v260;
  v269 = (v263 - (v260 >> 10)) ^ v266;
  v270 = v218;
  LODWORD(v265) = v218;
  v271 = (v265 >> 18) - (v218 >> 3);
  HIDWORD(v265) = v218;
  LODWORD(v265) = v218;
  LODWORD(STACK[0x50E8]) = v218;
  v272 = *(v23 - 152);
  v273 = v271 + (v265 >> 7);
  v274 = (v36 + v238) ^ v259;
  HIDWORD(v265) = v274;
  LODWORD(v265) = v274;
  LODWORD(STACK[0x5180]) = v274;
  LODWORD(v36) = v273 + (v265 >> 19) + v241 - (v274 >> 10) + ((v274 << ((v263 & 0xF ^ 0xF) + (v263 & 0xF))) ^ (v274 >> 17));
  HIDWORD(v265) = v216;
  LODWORD(v265) = v216;
  v275 = (v265 >> 7) - (v216 >> 3);
  HIDWORD(v265) = v216;
  LODWORD(v265) = v216;
  LODWORD(STACK[0x50F0]) = v216;
  v276 = v275 - (v265 >> 18) + v252;
  HIDWORD(v265) = (v269 + v242) ^ v209;
  LODWORD(v265) = HIDWORD(v265);
  v277 = v276 - (v265 >> 17);
  LODWORD(v265) = HIDWORD(v265);
  v278 = v265;
  v279 = v277 - (v265 >> 19);
  HIDWORD(v265) = v226;
  LODWORD(v265) = v226;
  v280 = v265 >> 7;
  HIDWORD(v265) = v226;
  LODWORD(v265) = v226;
  v281 = v36 ^ v267;
  LODWORD(v36) = v280 - (v265 >> 18) + (v226 >> 3);
  LODWORD(STACK[0x5100]) = v226;
  HIDWORD(v265) = v281;
  LODWORD(v265) = v281;
  LODWORD(v36) = v36 + v216 + v254 - (v265 >> 19) - (v281 >> 10);
  HIDWORD(v265) = v281;
  LODWORD(v265) = v281;
  LODWORD(STACK[0x5170]) = v281;
  v282 = v36 + (v265 >> 17);
  HIDWORD(v265) = v224;
  LODWORD(v265) = v224;
  LODWORD(v36) = (v265 >> 18) + (v224 >> 3);
  HIDWORD(v265) = v224;
  LODWORD(v265) = v224;
  v283 = v224;
  LODWORD(STACK[0x50F8]) = v224;
  LODWORD(v36) = (v265 >> 7) - v36;
  LODWORD(STACK[0x5168]) = v278;
  v284 = (v279 - (v278 >> 10)) ^ v270;
  HIDWORD(v265) = v284;
  LODWORD(v265) = v284;
  v285 = v265 >> 19;
  v286 = __PAIR64__(v230, __ROR4__(v284, 17));
  v287 = v284;
  LODWORD(STACK[0x5178]) = v284;
  v288 = ((v36 - (v285 ^ v286 ^ (v284 >> 10))) ^ v253) + v226;
  LODWORD(v286) = v230;
  LODWORD(STACK[0x5120]) = v230;
  LODWORD(v36) = ((v286 >> 7) ^ (v230 << 14) ^ (v230 >> 3) ^ (v230 >> 18)) - v233 + v274;
  HIDWORD(v286) = v288;
  LODWORD(v286) = v288;
  v289 = v286 >> 17;
  HIDWORD(v286) = v288;
  LODWORD(v286) = v288;
  LODWORD(v36) = v36 - (v286 >> 19) + v289;
  LODWORD(STACK[0x5110]) = v233;
  v290 = __PAIR64__(v282, __ROR4__(v233, 7));
  v291 = ((v233 >> 3) ^ __ROR4__(v233, 18) ^ v290) - v268;
  LODWORD(STACK[0x5148]) = v282;
  LODWORD(v290) = v282;
  v292 = v291 + (v290 >> 19);
  HIDWORD(v290) = v282;
  LODWORD(v290) = v282;
  v293 = v292 + (v290 >> 17);
  HIDWORD(v290) = v238;
  LODWORD(v290) = v238;
  v294 = (v293 - (v282 >> 10)) ^ v283;
  LODWORD(STACK[0x5118]) = v238;
  v295 = ((v290 >> 7) ^ __ROR4__(v238, 18)) + (v238 >> 3) - v230 - v278;
  HIDWORD(v290) = v294;
  LODWORD(v290) = v294;
  v296 = v290 >> 17;
  HIDWORD(v290) = v294;
  LODWORD(v290) = v294;
  v297 = v294;
  LODWORD(STACK[0x5190]) = v294;
  v298 = v295 - (v290 >> 19) + v296;
  v299 = v36 + (v288 >> 10);
  v300 = v288;
  LODWORD(STACK[0x5188]) = v288;
  HIDWORD(v290) = v242;
  LODWORD(v290) = v242;
  LODWORD(v36) = v290 >> 7;
  v301 = __PAIR64__(v299, __ROR4__(v242, 18));
  LODWORD(STACK[0x5108]) = v242;
  LODWORD(v36) = (v36 ^ v301) - (v242 >> 3) - v281;
  LODWORD(v301) = v299;
  v302 = v301 >> 19;
  HIDWORD(v301) = v299;
  LODWORD(v301) = v299;
  v303 = v299;
  LODWORD(STACK[0x5198]) = v299;
  LODWORD(v36) = v36 + v302 - (v301 >> 17);
  HIDWORD(v301) = v241;
  LODWORD(v301) = v241;
  v304 = v301 >> 18;
  HIDWORD(v301) = v241;
  LODWORD(v301) = v241;
  LODWORD(STACK[0x5140]) = v241;
  v305 = v304 + (v301 >> 7);
  v306 = v298 + (v297 >> 10);
  LODWORD(STACK[0x51A0]) = v306;
  HIDWORD(v301) = v306;
  LODWORD(v301) = v306;
  v307 = v301 >> 19;
  HIDWORD(v301) = v306;
  LODWORD(v301) = v306;
  v308 = v305 ^ (v241 >> 3) ^ ((v301 >> 17) + v307 + (v306 >> 10));
  HIDWORD(v301) = v252;
  LODWORD(v301) = v252;
  v309 = v301 >> 7;
  HIDWORD(v301) = v252;
  LODWORD(v301) = v252;
  v310 = (v36 - (v303 >> 10)) ^ v238;
  LODWORD(STACK[0x5128]) = v310;
  LODWORD(v36) = v309 - (v301 >> 18) + (v252 >> 3);
  LODWORD(STACK[0x5138]) = v252;
  HIDWORD(v301) = v310;
  LODWORD(v301) = v310;
  LODWORD(v36) = v36 + (v301 >> 17);
  HIDWORD(v301) = v310;
  LODWORD(v301) = v310;
  LODWORD(STACK[0x5130]) = v36 + (v301 >> 19);
  v311 = (v308 - v287) ^ v242;
  LODWORD(STACK[0x51A8]) = v311;
  LODWORD(STACK[0x5150]) = v254;
  HIDWORD(v301) = v254;
  LODWORD(v301) = v254;
  LODWORD(v36) = (v301 >> 7) ^ __ROR4__(v254, 18) ^ (v254 >> 3);
  HIDWORD(v301) = v311;
  LODWORD(v301) = v311;
  LODWORD(STACK[0x51B0]) = v252 + v36 - v300 - (v311 >> 10) - ((v301 >> 17) ^ __ROR4__(v311, 19));
  HIDWORD(v301) = STACK[0x56C0];
  LODWORD(v301) = HIDWORD(v301);
  LODWORD(v36) = (v301 >> 2) ^ __ROR4__(HIDWORD(v301), 13);
  LODWORD(v301) = HIDWORD(v301);
  v312 = STACK[0x56C0];
  LODWORD(v36) = v36 - (v301 >> 22);
  HIDWORD(v301) = STACK[0x55B0];
  LODWORD(v301) = HIDWORD(v301);
  v313 = STACK[0x5570];
  v314 = STACK[0x5430];
  v315 = STACK[0x55B0];
  v316 = STACK[0x5680];
  v317 = STACK[0x55C0];
  v318 = STACK[0x55C0];
  v319 = STACK[0x5680];
  STACK[0x5680] = STACK[0x5680];
  v320 = v317 + v316 + (v312 ^ v317 ^ (v312 + v316));
  LODWORD(v316) = LODWORD(STACK[0x5028]) ^ ((((v314 ^ HIDWORD(v301)) + HIDWORD(v301)) ^ (v313 - ((v301 >> 6) ^ __ROR4__(HIDWORD(v301), 11) ^ __ROR4__(HIDWORD(v301), 25)))) - 1172262023);
  v321 = v316 + STACK[0x55F0];
  v322 = v315;
  STACK[0x55B0] = v315;
  LODWORD(v36) = v316 + (v320 ^ v36);
  HIDWORD(v301) = v36;
  LODWORD(v301) = v36;
  v323 = v301 >> 13;
  HIDWORD(v301) = v36;
  LODWORD(v301) = v36;
  v324 = v323 + (v301 >> 2);
  LOBYTE(v316) = *(STACK[0x57A0] + ((((v321 >> 25) << ((((v324 & 0x4D ^ 0x4D) + (v324 & 0x4D)) & 0x82u) + 3)) & 0xFE | (v321 >> 30)) ^ 0x2D) + 88256);
  LOBYTE(v316) = (((v316 ^ 0x16) - 126) ^ ((v316 ^ 0x6D) - 5) ^ ((v316 ^ 0x99) + 15)) + 20;
  HIDWORD(v301) = v321;
  LODWORD(v301) = v321;
  LODWORD(v316) = (LODWORD(STACK[0x52E0]) ^ 0x1C21C930) + 675769337 + (((v321 ^ v315) + (v321 ^ v314)) ^ v314 ^ (STACK[0x56D0] + ((v301 >> 6) ^ __ROR4__(v321, 11)) + (((v321 << 7) - ((v321 << 8) & 0x4EE23100) - 1485760299) ^ 0x588EE744 ^ (v316 ^ (2 * (((2 * (((2 * (((2 * (((2 * (((2 * (v316 ^ 0x1A)) & 0x34 ^ 0x2E) & (v316 ^ 0x1A))) ^ 0x2E) & (v316 ^ 0x1A))) ^ 0x2E) & (v316 ^ 0x1A))) ^ 0x2E) & (v316 ^ 0x1A))) ^ 0xEE) & (v316 ^ 0x5A))))) + 1));
  v325 = v316 + v319;
  HIDWORD(v301) = v316 + v319;
  LODWORD(v301) = v316 + v319;
  LODWORD(v315) = (v301 >> 11) ^ __ROR4__(v316 + v319, 6);
  HIDWORD(v301) = v316 + v319;
  LODWORD(v301) = v316 + v319;
  LODWORD(v315) = v315 + (v301 >> 25);
  STACK[0x55C0] = v318;
  STACK[0x56C0] = v312;
  LODWORD(v301) = v316 + (((v312 ^ v317) - (v318 + v312)) ^ __ROR4__(v36, 22) ^ v324);
  v326 = v301;
  HIDWORD(v301) = v301;
  v327 = v301 >> 13;
  HIDWORD(v301) = v301;
  LODWORD(v316) = v321 + (LODWORD(STACK[0x52D0]) ^ 0x7329201A) + 2018543708 + (v315 ^ v314);
  v328 = v316 + ((v327 + (v301 >> 2)) ^ __ROR4__(v301, 22) ^ (v36 - (v36 ^ v312) + v301 + (v301 ^ v312)));
  LODWORD(v316) = v316 + v318;
  HIDWORD(v301) = v328;
  LODWORD(v301) = v328;
  v329 = v301 >> 2;
  HIDWORD(v301) = v328;
  LODWORD(v301) = v328;
  LODWORD(v315) = v301 >> 13;
  HIDWORD(v301) = v316;
  LODWORD(v301) = v316;
  LODWORD(v317) = v301 >> 6;
  v330 = v329 - v315;
  HIDWORD(v301) = v316;
  LODWORD(v301) = v316;
  LODWORD(v315) = v317 + (v301 >> 11);
  HIDWORD(v301) = v316;
  LODWORD(v301) = v316;
  LODWORD(v315) = (v315 - (v301 >> 25)) ^ v322 ^ ((v316 ^ v325) - (v321 + (v316 ^ v321)));
  LODWORD(v301) = __ROR4__(v328, 22);
  LODWORD(v317) = (v315 + 1192900208 + ((1090008972 - 2 * v315) | 0x30D35B93)) ^ LODWORD(STACK[0x5048]);
  v331 = (v328 ^ v36) + (v326 ^ v36) - (v328 + v326) + (v330 ^ v301) + v317;
  HIDWORD(v301) = v331;
  LODWORD(v301) = (v328 ^ v36) + (v326 ^ v36) - (v328 + v326) + (v330 ^ v301) + v317;
  v332 = v301 >> 2;
  HIDWORD(v301) = v331;
  LODWORD(v301) = v331;
  v333 = (v301 >> 22) + v332 - ((v331 << ((v321 & 0x13 ^ 0x13) + (v321 & 0x13))) ^ (v331 >> 13));
  LODWORD(v312) = v317 + v312;
  HIDWORD(v301) = v312;
  LODWORD(v301) = v312;
  v334 = v321 + (v312 << 21) + (v301 >> 6);
  HIDWORD(v301) = v312;
  LODWORD(v301) = v312;
  v335 = LODWORD(STACK[0x5038]) - 600538198 + (v316 ^ v325 ^ v312 ^ (v312 + v325) ^ (v334 + (v301 >> 25) + (v312 >> 11)));
  v336 = v335 + (((v331 ^ v326) + (v331 ^ v328)) ^ (v328 + v326) ^ v333);
  HIDWORD(v301) = v336;
  LODWORD(v301) = v336;
  LODWORD(v317) = v301 >> 2;
  v337 = v335 + v36;
  HIDWORD(v301) = v336;
  LODWORD(v301) = v336;
  LODWORD(v36) = (v301 >> 13) + v317;
  HIDWORD(v301) = v336;
  LODWORD(v301) = v336;
  LODWORD(v36) = v36 + (v301 >> 22);
  HIDWORD(v301) = v337;
  LODWORD(v301) = v337;
  v338 = v301 >> 11;
  HIDWORD(v301) = v337;
  LODWORD(v301) = v337;
  v339 = (v301 >> 6) - v338;
  HIDWORD(v301) = v337;
  LODWORD(v301) = v337;
  LODWORD(v317) = (LODWORD(STACK[0x52C8]) ^ 0xB5B4C7DF) + ((v337 + v312 + (v337 ^ v316)) ^ v316) + 820732037 + ((v339 + (v301 >> 25)) ^ v325);
  v340 = v317 + ((v328 - v331 + (v336 ^ v331 ^ (v336 - v328))) ^ v36);
  LODWORD(v36) = v317 + v326;
  HIDWORD(v301) = v36;
  LODWORD(v301) = v317 + v326;
  LODWORD(v317) = v301 >> 11;
  HIDWORD(v301) = v36;
  LODWORD(v301) = v36;
  LODWORD(v317) = (v301 >> 6) + v317;
  HIDWORD(v301) = v36;
  LODWORD(v301) = v36;
  LODWORD(v316) = (v312 ^ v316 ^ (v36 - v337 - (v36 ^ v312)) ^ (v317 - (v301 >> 25))) - (((LODWORD(STACK[0x52C0]) ^ 0x5185D53F) - 402451314) ^ ((LODWORD(STACK[0x52C0]) ^ 0x9B7BBEC2) + 587038577) ^ ((LODWORD(STACK[0x52C0]) ^ 0x99EFD542) + 543757553));
  HIDWORD(v301) = v340;
  LODWORD(v301) = v340;
  LODWORD(v317) = (v301 >> 22) + ((v340 + v336 - (v340 ^ v331)) ^ (v336 + v331));
  HIDWORD(v301) = v340;
  LODWORD(v301) = v340;
  LODWORD(v316) = v316 + 1414705366;
  v341 = ((v301 >> 2) ^ __ROR4__(v340, 13)) + v317 + v316;
  LODWORD(v317) = v316 + v328;
  HIDWORD(v301) = v317;
  LODWORD(v301) = v316 + v328;
  v342 = v301 >> 6;
  HIDWORD(v301) = v317;
  LODWORD(v301) = v317;
  v343 = v342 - (v301 >> 11);
  v344 = __PAIR64__(v341, __ROR4__(v317, 25));
  v345 = (LODWORD(STACK[0x52D8]) ^ 0x38A6BC4) + v312 - v36 + 2 * (v317 - v337) + 1016817834 + (v343 ^ v344);
  LODWORD(v344) = v341;
  LODWORD(v312) = (v340 ^ v336) - (v344 >> 13);
  HIDWORD(v344) = v341;
  LODWORD(v344) = v341;
  v346 = v344 >> 2;
  HIDWORD(v344) = v341;
  LODWORD(v344) = v341;
  LODWORD(v316) = v345 + v331;
  LODWORD(v331) = v312 + v346 + (v344 >> 22) - ((v341 + v340) ^ (v341 - v336)) + v345;
  LOBYTE(v345) = *(STACK[0x57A0] + ((v316 >> 25) ^ 0x69) + 123657);
  LOBYTE(v345) = -72 - 85 * (v345 ^ ((v345 ^ 0xD1) - 22) ^ ((v345 ^ 0xE7) - 32) ^ 0xC7);
  LOBYTE(v312) = v345 & 0x9C | 0x61;
  v347 = (v345 ^ (2 * ((v345 ^ 0x5A) & (2 * ((v345 ^ 0x5A) & (2 * ((v345 ^ 0x5A) & (2 * ((v345 ^ 0x5A) & (2 * ((v345 ^ 0x5A) & (2 * ((v345 ^ 0x5A) & 6 ^ v312)) ^ v312)) ^ v312)) ^ v312)) ^ v312)) ^ v312))) ^ ((v316 << 7) + 1662148409 - ((v316 << 8) & 0xC624BF00) + 108) ^ 0x63125F39;
  HIDWORD(v344) = v316;
  LODWORD(v344) = v316;
  LODWORD(v312) = v344 >> 11;
  v348 = __PAIR64__(v331, __ROR4__(v316, 6));
  v349 = (((v337 - (v312 ^ v348) + v347) ^ ((v317 ^ v36) + v36)) + 2142758057) ^ LODWORD(STACK[0x5030]);
  LODWORD(v348) = v331;
  v350 = v348 >> 2;
  HIDWORD(v348) = v331;
  LODWORD(v348) = v331;
  v351 = (v348 >> 13) + v350;
  HIDWORD(v348) = v331;
  LODWORD(v348) = v331;
  v352 = v351 + (v348 >> 22) + v349;
  v353 = v349 + v336;
  HIDWORD(v348) = v353;
  LODWORD(v348) = v353;
  v354 = (v348 >> 11) ^ (v353 >> 6);
  v355 = __PAIR64__(v352, __ROR4__(v353, 25));
  LODWORD(v36) = v317 + v36 - v316 + v353 + (v353 ^ v317) + (v354 ^ v355 ^ (v353 << 26));
  LODWORD(v36) = (v36 - 1790308555 - ((2 * v36 + 1598748938) & 0xCB492560)) ^ LODWORD(STACK[0x5050]);
  LODWORD(v355) = v352;
  v356 = (v355 >> 2) + (v331 ^ v341);
  HIDWORD(v355) = v352;
  LODWORD(v355) = v352;
  v357 = v355 >> 13;
  HIDWORD(v355) = v352;
  LODWORD(v355) = v352;
  v358 = v356 + v357 - (v355 >> 22) + (v352 ^ v341) + (v352 ^ v331) + v36;
  v359 = v36 + v340;
  HIDWORD(v355) = v358;
  LODWORD(v355) = v358;
  LODWORD(v36) = v355 >> 2;
  HIDWORD(v355) = v358;
  LODWORD(v355) = v358;
  LODWORD(v36) = v36 - (v355 >> 13);
  v360 = (v359 >> 22) & 0xF8 | (v359 >> 30);
  LODWORD(v312) = ((v360 - 4 * (v359 >> 31) + 10) ^ 3) - 8;
  LOBYTE(v312) = (((v312 ^ 0x34) + 6) ^ ((v312 ^ 0x88) - 70) ^ ((v312 ^ 0x71) + 65)) - 118;
  LOBYTE(v346) = v312 & 0x9C ^ 0x56;
  LOBYTE(v360) = v312 ^ *((v360 ^ 0xD1u) + STACK[0x57A0] + 45952) ^ (2 * ((v312 ^ 0x70) & (2 * ((v312 ^ 0x70) & (2 * ((v312 ^ 0x70) & (2 * ((v312 ^ 0x70) & (2 * ((v312 ^ 0x70) & (2 * v346) ^ v346)) ^ v346)) ^ v346)) ^ v346)) ^ v346));
  HIDWORD(v355) = v359;
  LODWORD(v355) = v359;
  v361 = v355 >> 6;
  HIDWORD(v355) = v359;
  LODWORD(v355) = v359;
  v362 = v353 + v317 - 2 * (v359 + v316) - ((v361 + (v355 >> 11)) ^ (v359 << 7) ^ ((((v360 ^ 0xAC) + 18) ^ ((v360 ^ 0x1F) - 93) ^ ((v360 ^ 0xA9) + 21)) + ((((2 * v360) & 0xC8 ^ 0x51) - 84) ^ (((2 * v360) & 0xC8 ^ 0x48) - 77) ^ (((2 * v360) & 0xC8 ^ 0xD1) + 44)) + 37));
  LODWORD(v317) = (v362 - ((2 * v362 + 1203275604) & 0xFBCF83DA) - 1580989033) ^ LODWORD(STACK[0x5068]);
  v363 = v352 + 2 * v331 + v358 - (v358 ^ v352) + (v36 ^ __ROR4__(v358, 22)) + v317;
  LODWORD(v317) = v317 + v341;
  HIDWORD(v355) = v363;
  LODWORD(v355) = v363;
  LODWORD(v36) = v355 >> 13;
  v364 = __PAIR64__(v363, __ROR4__(v363, 2));
  LODWORD(v36) = v36 ^ v364;
  LODWORD(v364) = v363;
  LODWORD(v312) = (v36 - (v364 >> 22)) ^ (2 * (v363 - v358));
  HIDWORD(v364) = v317;
  LODWORD(v364) = v317;
  LODWORD(v36) = LODWORD(STACK[0x5040]) + v316 - v359 - (v364 >> 25);
  HIDWORD(v364) = v317;
  LODWORD(v364) = v317;
  LODWORD(v316) = v36 + 892058604 + ((v364 >> 6) ^ __ROR4__(v317, 11));
  LODWORD(v36) = v316 + v331;
  HIDWORD(v364) = v316 + v331;
  LODWORD(v364) = v316 + v331;
  LODWORD(v331) = v364 >> 11;
  LODWORD(v316) = v316 + v312;
  v365 = __PAIR64__(v316, __ROR4__(v36, 6));
  v366 = (LODWORD(STACK[0x52F8]) ^ 0x3CD62B02) + 2070944422 + (v317 ^ v359 ^ v36 ^ (v36 + v359) ^ (v353 - (v36 >> 25) - (v36 << 7) + (v331 ^ v365)));
  LODWORD(v365) = v316;
  LODWORD(v331) = (v363 ^ v358) - (v358 + v363) + (v365 >> 2);
  HIDWORD(v365) = v316;
  LODWORD(v365) = v316;
  LODWORD(v312) = v365 >> 22;
  HIDWORD(v365) = v316;
  LODWORD(v365) = v316;
  LODWORD(v331) = v331 + (v365 >> 13) - v312 + v366;
  LODWORD(v312) = v366 + v352;
  HIDWORD(v365) = v331;
  LODWORD(v365) = v331;
  v367 = v365 >> 2;
  HIDWORD(v365) = v331;
  LODWORD(v365) = v331;
  v368 = v367 + (v365 >> 13);
  HIDWORD(v365) = v366 + v352;
  LODWORD(v365) = v366 + v352;
  LODWORD(v318) = v365 >> 6;
  HIDWORD(v365) = v366 + v352;
  LODWORD(v365) = v366 + v352;
  v369 = v365 >> 25;
  HIDWORD(v365) = v312;
  LODWORD(v365) = v366 + v352;
  v370 = LODWORD(STACK[0x5058]) - 1573744732 + (((v312 ^ v36) + v312) ^ v359 ^ (v318 + v369 - (v365 >> 11) - 2 * v369)) + 1146;
  v371 = v370 + v358;
  v372 = v370 + ((v368 - ((v331 << (((v36 >> 25) & 0xA ^ 0xA) + ((v36 >> 25) & 0xA))) ^ (v331 >> 22))) ^ (v316 + v363 + v331 + v316 + (v331 ^ v363)));
  HIDWORD(v365) = v371;
  LODWORD(v365) = v371;
  v373 = v317 - (v365 >> 25);
  HIDWORD(v365) = v371;
  LODWORD(v365) = v371;
  LODWORD(v317) = v365 >> 11;
  v374 = __PAIR64__(v372, __ROR4__(v371, 6));
  LODWORD(v317) = LODWORD(STACK[0x52E8]) + 1931589953 + ((v312 - v36) ^ v36 ^ (v373 - (v317 ^ v374)));
  LODWORD(v374) = v372;
  v375 = v374 >> 13;
  HIDWORD(v374) = v372;
  LODWORD(v374) = v372;
  LODWORD(v318) = v374 >> 2;
  HIDWORD(v374) = v372;
  LODWORD(v374) = v372;
  v376 = v375 + v331 + v316 + v318 + (v374 >> 22) + (v372 ^ v316 ^ (v372 + v331)) + v317;
  v377 = v317 + v363;
  HIDWORD(v374) = v376;
  LODWORD(v374) = v376;
  v378 = v374 >> 2;
  v380 = __PAIR64__(v376, __ROR4__(v376, 13));
  v379 = v378 ^ v380;
  LODWORD(v380) = v376;
  v381 = v379 - (v380 >> 22);
  HIDWORD(v380) = v377;
  LODWORD(v380) = v377;
  LODWORD(v36) = (LODWORD(STACK[0x5060]) ^ 0xE5608636) + v36 + (v380 >> 11);
  HIDWORD(v380) = v377;
  LODWORD(v380) = v377;
  LODWORD(v36) = v36 + (v380 >> 6);
  HIDWORD(v380) = v377;
  LODWORD(v380) = v377;
  LODWORD(v36) = v36 - (v380 >> 25) - ((v377 - v371) ^ v377) - 1701213189;
  LODWORD(v316) = v36 + v316;
  LODWORD(v36) = v36 + ((((v376 + v372) ^ (v376 - v331)) + (v372 ^ v331)) ^ v381);
  LOBYTE(v370) = *(STACK[0x57A0] + ((55 * (v316 >> 25)) ^ 0xD3u) + 123401);
  LOBYTE(v370) = (((v370 ^ 0x2E) - 88) ^ ((v370 ^ 0x13) - 101) ^ ((v370 ^ 0xBF) + 55)) - 14;
  LOBYTE(v368) = v370 & 0xFB ^ 0x83;
  v382 = STACK[0x57A0];
  v383 = (v370 ^ (2 * ((v370 ^ 0x74) & (2 * ((v370 ^ 0x74) & (2 * ((v370 ^ 0x74) & (2 * ((v370 ^ 0x74) & (2 * ((v370 ^ 0x74) & (2 * (((2 * v370) & 0x6A ^ 0xE) & v370 ^ v368)) ^ v368)) ^ v368)) ^ v368)) ^ v368)) ^ v368))) ^ ((v316 << 7) - 775132127 - ((v316 << 8) & 0xA398D900) + 185) ^ 0xD1CC6C21;
  HIDWORD(v380) = v316;
  LODWORD(v380) = v316;
  v384 = v380 >> 11;
  v385 = __PAIR64__(v36, __ROR4__(v316, 6));
  LODWORD(v317) = ((v384 ^ v385) + v312 + v383) ^ ((v316 ^ v377 ^ (v316 - v371)) + v371);
  LODWORD(v385) = v36;
  LODWORD(v312) = (v317 - 299647314) ^ LODWORD(STACK[0x5070]);
  LODWORD(v331) = v312 + v331;
  v386 = ((v385 >> 13) ^ __ROR4__(v36, 2) ^ __ROR4__(v36, 22)) - ((v376 ^ v372) + (v36 ^ v372 ^ (v36 + v376))) + v312;
  v388 = __PAIR64__(v386, __ROR4__(v386, 13));
  v387 = (v386 << (((17 - v317) ^ (v317 - 82)) & 0x1E)) ^ (v386 >> 2) ^ v388;
  LODWORD(v388) = v386;
  v389 = v387 - (v388 >> 22);
  HIDWORD(v388) = v331;
  LODWORD(v388) = v331;
  LODWORD(v312) = (v388 >> 11) + v371;
  HIDWORD(v388) = v331;
  LODWORD(v388) = v331;
  LODWORD(v312) = v312 - (v388 >> 25);
  HIDWORD(v388) = v331;
  LODWORD(v388) = v331;
  LODWORD(v312) = LODWORD(STACK[0x5078]) - 582156967 + ((v312 - (v388 >> 6)) ^ ((v331 ^ v377 ^ (v331 - v316)) - v377));
  LODWORD(v317) = v389 + ((v386 + v36 - (v386 ^ v376)) ^ (v36 - v376)) + v312;
  v390 = v312 + v372;
  v391 = v377 - v185 + v316 - v331 + v312 + v372 - ((v312 + v372) ^ v316);
  HIDWORD(v388) = v390;
  LODWORD(v388) = v390;
  v392 = (v388 >> 6) ^ __ROR4__(v390, 11);
  v394 = __PAIR64__(v317, __ROR4__(v390, 25));
  v393 = v392 ^ v394;
  LODWORD(v394) = v317;
  LODWORD(v312) = v394 >> 2;
  HIDWORD(v394) = v317;
  LODWORD(v394) = v317;
  v395 = v391 - v393 + 1037986230;
  v396 = v395 + v376;
  v397 = (v386 ^ v36) - (v386 + v36) - 2 * v317 + ((v312 - (v394 >> 13)) ^ __ROR4__(v317, 22)) + v395;
  HIDWORD(v394) = v397;
  LODWORD(v394) = v397;
  v398 = v394 >> 13;
  v400 = __PAIR64__(v397, __ROR4__(v397, 2));
  v399 = v398 ^ v400;
  LODWORD(v400) = v397;
  v401 = v399 + (v400 >> 22);
  HIDWORD(v400) = v396;
  LODWORD(v400) = v396;
  LODWORD(v312) = v400 >> 11;
  HIDWORD(v400) = v396;
  LODWORD(v400) = v396;
  LODWORD(v312) = (v400 >> 25) + v312;
  HIDWORD(v400) = v396;
  LODWORD(v400) = v396;
  LODWORD(v316) = ((v390 + v331 + 2 * v396) ^ v331) - v188 - 1738021774 + ((v312 + (v400 >> 6)) ^ v316);
  v402 = v401 - (v317 ^ v386 ^ (-v317 - v386)) + v316;
  HIDWORD(v400) = v402;
  LODWORD(v400) = v402;
  LODWORD(v312) = v400 >> 2;
  HIDWORD(v400) = v402;
  LODWORD(v400) = v402;
  LODWORD(v36) = v316 + v36;
  LODWORD(v316) = v312 - (v400 >> 13);
  HIDWORD(v400) = v36;
  LODWORD(v400) = v36;
  v403 = v400 >> 6;
  HIDWORD(v400) = v36;
  LODWORD(v400) = v36;
  LODWORD(v312) = (v390 + 1312163194 - ((v36 - v390) ^ (v36 - v396)) + (v331 ^ 0x214A8864 ^ ((v36 << 7) ^ 0x53DEB166) & ((v36 >> 25) ^ 0xFFFFFFE6) ^ ((v36 >> 25) & 0x11999199 | 0xAC004A00) ^ (v403 - (v400 >> 11) - ((2 * (v403 - (v400 >> 11))) & 0xBD28E604) - 560696574))) ^ v272;
  LODWORD(v331) = v312 + (v316 ^ __ROR4__(v402, 22) ^ (v397 - v317 + v397 + v402 - (v402 ^ v317)));
  HIDWORD(v400) = v331;
  LODWORD(v400) = v331;
  LODWORD(v316) = v400 >> 2;
  v404 = v312 + v386;
  HIDWORD(v400) = v331;
  LODWORD(v400) = v331;
  LODWORD(v316) = (v400 >> 13) + v316;
  LODWORD(v312) = *((((v404 >> 20) & 0xE0 | (v404 >> 28)) ^ 0x4B) + STACK[0x57A0] + 59584);
  v405 = 117 * (((v312 ^ (4 * v312) ^ 0xFFFFFFFE) + 20) ^ ((v312 ^ (4 * v312) ^ 0x7D) - 111) ^ ((v312 ^ (4 * v312) ^ 0xFFFFFFB2) + 96)) + 4;
  LOBYTE(v312) = v405 & 0xD3 ^ 0x3C;
  HIDWORD(v400) = v404;
  LODWORD(v400) = v404;
  LODWORD(v318) = v400 >> 6;
  HIDWORD(v400) = v404;
  LODWORD(v400) = v404;
  LODWORD(STACK[0x52D0]) = v405;
  v406 = LODWORD(STACK[0x5080]) - 178512099 + (((v400 >> 11) + v390 + v318 - ((v405 ^ (2 * ((v405 ^ 0x7A) & (2 * ((v405 ^ 0x7A) & (2 * ((v405 ^ 0x7A) & (2 * ((v405 ^ 0x7A) & (2 * ((v405 ^ 0x7A) & (2 * ((v405 ^ 0x7A) & (2 * v405) & 0x76 ^ v312)) ^ v312)) ^ v312)) ^ v312)) ^ v312)) ^ v312))) ^ 0xD3 ^ (v404 << 7))) ^ ((v404 ^ v36) - (v396 + (v404 ^ v396))));
  LODWORD(v316) = 2 * v397 - v402 - v402 + (v316 ^ __ROR4__(v331, 22)) + v406;
  LODWORD(v317) = v406 + v317;
  v407 = (v317 >> 22) & 0xF8 | (v317 >> 30);
  v408 = (v407 ^ 0x1D) + 157109;
  v409 = ((((v407 - ((v317 >> 21) & 0x20) - 108) ^ 6) + 3) ^ (((v407 - ((v317 >> 21) & 0x20) - 108) ^ 0x51) + 86) ^ (((v407 - ((v317 >> 21) & 0x20) - 108) ^ 0xFFFFFFD7) - 44)) - 98;
  LOBYTE(v403) = v409 & 0x36 ^ 0xA1;
  LOBYTE(v409) = v409 ^ *(v382 + v408) ^ (2 * ((v409 ^ 0x74) & (2 * ((v409 ^ 0x74) & (2 * ((v409 ^ 0x74) & (2 * ((v409 ^ 0x74) & (2 * ((v409 ^ 0x74) & (2 * (v403 ^ v409 & 2)) ^ v403)) ^ v403)) ^ v403)) ^ v403)) ^ v403));
  HIDWORD(v400) = v317;
  LODWORD(v400) = v317;
  LODWORD(v408) = v400 >> 11;
  v410 = __PAIR64__(v316, __ROR4__(v317, 6));
  v411 = ((v36 ^ v396 ^ (v404 + v36) ^ ((((((v409 ^ 0x8D) - 65) ^ ((v409 ^ 0xB) + 57) ^ ((v409 ^ 0x76) + 70)) - 96) ^ (v317 << 7)) + (v408 ^ v410))) + 1527934708) ^ LODWORD(STACK[0x5088]);
  LODWORD(v410) = v316;
  LODWORD(v312) = (v410 >> 2) - (v331 + v402);
  HIDWORD(v410) = v316;
  LODWORD(v410) = v316;
  LODWORD(v312) = v312 + (v410 >> 22);
  HIDWORD(v410) = v316;
  LODWORD(v410) = v316;
  LODWORD(v408) = v411 + v397;
  v412 = v312 - (v410 >> 13) - ((v316 - v331) ^ (v316 + v402)) + v411;
  HIDWORD(v410) = v408;
  LODWORD(v410) = v408;
  v413 = (v410 >> 6) ^ __ROR4__(v408, 25);
  v414 = __PAIR64__(v412, __ROR4__(v408, 11));
  LODWORD(v36) = ((v408 + v317) ^ v404 ^ (v408 + v404) ^ ((v413 ^ v414) + v36)) - LODWORD(STACK[0x5090]);
  LODWORD(v414) = v412;
  v415 = v316 - v331 - (v316 ^ v331) + (v414 >> 2);
  HIDWORD(v414) = v412;
  LODWORD(v414) = v412;
  v416 = v415 + (v414 >> 13);
  HIDWORD(v414) = v412;
  LODWORD(v414) = v412;
  LODWORD(v36) = v36 + 1800717648;
  v417 = v416 - (v414 >> 22) + v36;
  v418 = v36 + v402;
  HIDWORD(v414) = v418;
  LODWORD(v414) = v418;
  LODWORD(v36) = v414 >> 11;
  HIDWORD(v414) = v418;
  LODWORD(v414) = v418;
  LODWORD(v36) = (v414 >> 6) + v36;
  v419 = __PAIR64__(v417, __ROR4__(v418, 25));
  LODWORD(v36) = v158 - 1544835965 + ((v404 - (v36 ^ v419)) ^ (v317 - v408 + v418 - (v418 ^ v317)));
  LODWORD(v419) = v417;
  LODWORD(v312) = v419 >> 13;
  HIDWORD(v419) = v417;
  LODWORD(v419) = v417;
  v420 = v412 - v316 + v417 + v412 - (v417 ^ v316) - (v419 >> 22) + (v312 ^ __ROR4__(v417, 2)) + v36;
  LODWORD(v312) = v36 + v331;
  LODWORD(v36) = ((v36 + v331) ^ v418) - (v408 + v36 + v331);
  HIDWORD(v419) = v312;
  LODWORD(v419) = v312;
  LODWORD(v331) = v419 >> 11;
  HIDWORD(v419) = v312;
  LODWORD(v419) = v312;
  v421 = v419 >> 25;
  v422 = __PAIR64__(v420, __ROR4__(v312, 6));
  LODWORD(v36) = ((((v331 ^ v422) - v421) ^ v317) - (v36 ^ v408) + 1008762856) ^ LODWORD(STACK[0x5098]);
  LODWORD(v422) = v420;
  LODWORD(v331) = -v417 - v417 + (v422 >> 13);
  HIDWORD(v422) = v420;
  LODWORD(v422) = v420;
  LODWORD(v317) = v422 >> 2;
  HIDWORD(v422) = v420;
  LODWORD(v422) = v420;
  v423 = v36 + v316;
  v424 = v331 + v317 + (v422 >> 22) + v36;
  HIDWORD(v422) = v424;
  LODWORD(v422) = v424;
  LODWORD(v36) = v422 >> 2;
  HIDWORD(v422) = v424;
  LODWORD(v422) = v424;
  LODWORD(v36) = v36 - (v422 >> 13);
  HIDWORD(v422) = v423;
  LODWORD(v422) = v423;
  LODWORD(v316) = v422 >> 11;
  v425 = __PAIR64__(v423, __ROR4__(v423, 6));
  LODWORD(v316) = v316 ^ v425;
  LODWORD(v425) = v423;
  LODWORD(v316) = ((v418 ^ v408 ^ ((v423 ^ v418) + (v423 ^ v312)) ^ (v316 - (v425 >> 25))) - 1860821172) ^ LODWORD(STACK[0x50A0]);
  LODWORD(v317) = v316 + ((v424 - v420 + (v424 ^ v420)) ^ __ROR4__(v424, 22) ^ v36);
  LODWORD(v36) = v316 + v412;
  HIDWORD(v425) = v317;
  LODWORD(v425) = v317;
  v426 = v425 >> 13;
  HIDWORD(v425) = v317;
  LODWORD(v425) = v317;
  v427 = (v425 >> 2) + v426;
  HIDWORD(v425) = v317;
  LODWORD(v425) = v317;
  v428 = v427 + (v425 >> 22) - ((v317 + v420 + (v317 ^ v424)) ^ (v424 - v420));
  HIDWORD(v425) = v36;
  LODWORD(v425) = v36;
  v429 = v168 + v418 + v312 + (v36 ^ v312) - (v425 >> 11) - (v36 ^ v423);
  HIDWORD(v425) = v36;
  LODWORD(v425) = v36;
  LODWORD(v316) = v425 >> 6;
  HIDWORD(v425) = v36;
  LODWORD(v425) = v36;
  v430 = v429 + v316 + (v425 >> 25) + 2070543329;
  LODWORD(v331) = v430 + v417;
  HIDWORD(v425) = v331;
  LODWORD(v425) = v430 + v417;
  v431 = v425 >> 11;
  LODWORD(v316) = v428 + v430;
  HIDWORD(v425) = v331;
  LODWORD(v425) = v331;
  v432 = v431 + (v425 >> 6);
  v433 = __PAIR64__(v428 + v430, __ROR4__(v331, 25));
  v434 = ((v312 - (v432 ^ v433)) ^ v36) - v169;
  LODWORD(v433) = v428 + v430;
  v435 = v433 >> 2;
  HIDWORD(v433) = v316;
  LODWORD(v433) = v316;
  v436 = v435 - 2 * (v317 ^ v424) + (v433 >> 13);
  HIDWORD(v433) = v316;
  LODWORD(v433) = v316;
  v434 -= 534437403;
  v437 = v436 - (v433 >> 22) + v434;
  v438 = v434 + v420;
  HIDWORD(v433) = v438;
  LODWORD(v433) = v434 + v420;
  v439 = v433 >> 6;
  HIDWORD(v433) = v438;
  LODWORD(v433) = v438;
  v440 = v439 + (v433 >> 11);
  v441 = __PAIR64__(v437, __ROR4__(v438, 25));
  v442 = v231 - v36 + v331 + v438 + (v438 ^ v36) - 1939400982 + (v423 ^ v441 ^ v440);
  LODWORD(v441) = v437;
  LODWORD(v408) = v441 >> 2;
  HIDWORD(v441) = v437;
  LODWORD(v441) = v437;
  LODWORD(v312) = (v441 >> 13) - (v316 ^ v317) + v408;
  HIDWORD(v441) = v437;
  LODWORD(v441) = v437;
  v443 = v442 + v424;
  v444 = v312 - (v441 >> 22) + (v437 ^ v316 ^ (v437 + v317)) + v442;
  LODWORD(v312) = *(((55 * (v443 >> 25)) ^ 0x9Cu) + v382 + 65472);
  LODWORD(v312) = ((((v312 >> 4) | (16 * v312)) ^ 0xFFFFFF95) - 1) ^ ((((v312 >> 4) | (16 * v312)) ^ 0xFFFFFFF8) - 108) ^ ((((v312 >> 4) | (16 * v312)) ^ 0xFFFFFFB6) - 34);
  LOBYTE(v424) = (v312 + 79) * (v312 - 81) - 96 * v312 - 63;
  LOBYTE(v408) = v424 & 0xAB ^ 0xE;
  LOBYTE(v312) = v312 + 120;
  LOBYTE(v281) = v312 & 0x9F ^ 0xE4;
  LOBYTE(v312) = v312 ^ (4 * v424) ^ (8 * ((v424 ^ 0x1E) & (2 * ((v424 ^ 0x1E) & (2 * ((v424 ^ 0x1E) & (2 * ((v424 ^ 0x1E) & (2 * v408) ^ v408)) ^ v408)) ^ v408)) ^ v408)) ^ (2 * ((v312 ^ 0x56) & (2 * ((v312 ^ 0x56) & (2 * ((v312 ^ 0x56) & (2 * ((v312 ^ 0x56) & (2 * ((v312 ^ 0x56) & (2 * ((v312 ^ 6) & (2 * v312) & 0x2E ^ v281)) ^ v281)) ^ v281)) ^ v281)) ^ v281)) ^ v281));
  LOBYTE(v424) = ((v312 ^ 0x9C) + 72) ^ ((v312 ^ 0xA5) + 127) ^ ((v312 ^ 0xB2) + 106);
  HIDWORD(v441) = v444;
  LODWORD(v441) = v444;
  LODWORD(v312) = v441 >> 2;
  v445 = __PAIR64__(v444, __ROR4__(v444, 13));
  LODWORD(v312) = v312 ^ v445;
  LODWORD(v445) = v444;
  LODWORD(v408) = v312 - (v445 >> 22);
  HIDWORD(v445) = v443;
  LODWORD(v445) = v443;
  LODWORD(v36) = v36 + 2 * v331 + v438 + (v445 >> 11);
  HIDWORD(v445) = v443;
  LODWORD(v445) = v443;
  v446 = (v36 - (v445 >> 6) - 926528985 + ((v424 - 94) ^ (v443 << 7))) ^ LODWORD(STACK[0x50A8]);
  LODWORD(v36) = v408 + (v444 ^ v437 ^ (v437 - v316) ^ (v444 + v316)) + v446;
  LODWORD(v317) = v446 + v317;
  HIDWORD(v445) = v36;
  LODWORD(v445) = v36;
  v447 = v445 >> 2;
  HIDWORD(v445) = v36;
  LODWORD(v445) = v36;
  v448 = v447 + (v445 >> 13);
  HIDWORD(v445) = v36;
  LODWORD(v445) = v36;
  v449 = v448 - (v445 >> 22);
  LOBYTE(v281) = *(v382 + (((v317 >> 20) & 0xE0 | (v317 >> 28)) ^ 0x26EFLL)) ^ 0xED;
  LOBYTE(v423) = ((((16 * v281) ^ 0x1D) - 99) ^ (((16 * v281) ^ 0xD5) + 85) ^ (((16 * v281) ^ 0xD8) + 90)) - 32;
  LOBYTE(v405) = v423 & 0xA2 ^ 0x6C;
  LOBYTE(v281) = v423 ^ v281 ^ (2 * ((v423 ^ 0x6C) & (2 * ((v423 ^ 0x6C) & (2 * ((v423 ^ 0x6C) & (2 * ((v423 ^ 0x6C) & (2 * ((v423 ^ 0x6C) & (2 * v405) ^ v405)) ^ v405)) ^ v405)) ^ v405)) ^ v405));
  HIDWORD(v445) = v317;
  LODWORD(v445) = v317;
  v450 = v445 >> 11;
  HIDWORD(v445) = v317;
  LODWORD(v445) = v317;
  LODWORD(v312) = v449 + (v444 ^ v437 ^ ((v36 ^ v444) + (v36 ^ v437)));
  v451 = -1458442127 - LODWORD(STACK[0x50B0]) - v443 - 2 * (v317 + v438) + ((v450 + (v445 >> 6) + ((v317 << ((((v444 >> 22) & 6 ^ 6) + ((v444 >> 22) & 6)) | 5)) ^ (117 * (((v281 ^ 0x47) - 96) ^ ((v281 ^ 0xDB) + 4) ^ ((v281 ^ 0xA6) + 127)) + 65))) ^ v331);
  LODWORD(v331) = v312 + v451;
  LODWORD(v316) = v451 + v316;
  HIDWORD(v445) = v331;
  LODWORD(v445) = v312 + v451;
  LODWORD(v312) = v445 >> 13;
  HIDWORD(v445) = v331;
  LODWORD(v445) = v331;
  LODWORD(v312) = (v445 >> 2) + v312;
  HIDWORD(v445) = v316;
  LODWORD(v445) = v316;
  v452 = v445 >> 11;
  HIDWORD(v445) = v316;
  LODWORD(v445) = v316;
  v453 = (v445 >> 6) - v452;
  HIDWORD(v445) = v331;
  LODWORD(v445) = v331;
  v454 = v438 - LODWORD(STACK[0x50B8]) + (v453 ^ __ROR4__(v316, 25)) - ((v316 - v317) ^ v443 ^ (v316 - v443)) + 2096916412;
  v455 = v454 + v437;
  LOBYTE(v408) = *(v382 + ((55 * ((v454 + v437) >> 25)) ^ 0x13u) + 90560);
  v456 = v454 + ((v312 - (v445 >> 22)) ^ (v331 + v444 + (v331 ^ v444)));
  LOBYTE(v312) = (((16 * v408) & 0x40 ^ v408 ^ 0xD0) + 19) ^ (((16 * v408) & 0x40 ^ v408 ^ 0x95) + 88) ^ (((16 * v408) & 0x40 ^ v408 ^ 0x7C) - 65);
  HIDWORD(v445) = v455;
  LODWORD(v445) = v455;
  LODWORD(v408) = v445 >> 6;
  HIDWORD(v445) = v455;
  LODWORD(v445) = v455;
  v457 = ((v408 - (v445 >> 11) - ((v312 - 9) ^ (v455 << 7))) ^ v443) + (v316 ^ v317 ^ v455 ^ (v455 - v317)) + 60752486;
  HIDWORD(v445) = v456;
  LODWORD(v445) = v456;
  LODWORD(v312) = v445 >> 2;
  v458 = v457 ^ LODWORD(STACK[0x50C0]);
  HIDWORD(v445) = v456;
  LODWORD(v445) = v456;
  v459 = v445 >> 13;
  HIDWORD(v445) = v456;
  LODWORD(v445) = v456;
  v460 = v312 - v459 - (v331 + v456 + (v445 >> 22)) + (v456 ^ v331) + v458;
  LODWORD(v312) = v458 + v444;
  HIDWORD(v445) = v312;
  LODWORD(v445) = v458 + v444;
  v461 = v445 >> 11;
  HIDWORD(v445) = v312;
  LODWORD(v445) = v312;
  v462 = v461 + (v445 >> 6);
  HIDWORD(v445) = v460;
  LODWORD(v445) = v460;
  v463 = v445 >> 2;
  HIDWORD(v445) = v460;
  LODWORD(v445) = v460;
  v464 = v445 >> 13;
  HIDWORD(v445) = v460;
  LODWORD(v445) = v460;
  LODWORD(v408) = LODWORD(STACK[0x50C8]) - 1155350755 + (v317 ^ (v312 << 7) ^ (v312 >> 25) ^ v462 ^ (2 * v312 - v455));
  v465 = v463 + v464 + (v445 >> 22) - (((v460 ^ v331) + v460 - v456) ^ v456 ^ v331) + v408;
  HIDWORD(v445) = v465;
  LODWORD(v445) = v465;
  v466 = v445 >> 22;
  LODWORD(v36) = v408 + v36;
  LODWORD(v317) = (v466 & 0xF2C1D643 ^ 0xF2C1D643) + (v466 & 0xF2C1D643);
  HIDWORD(v445) = v465;
  LODWORD(v445) = v465;
  LODWORD(v408) = v466 + (v445 >> 13);
  HIDWORD(v445) = v465;
  LODWORD(v445) = v465;
  LODWORD(v408) = (v445 >> 2) - v408;
  LOBYTE(v450) = ((((55 * (v36 >> 25)) ^ 0x86) + 90) ^ (((55 * (v36 >> 25)) ^ 0x33) - 19) ^ (((55 * (v36 >> 25)) ^ 0xBF) + 97)) - 55 * (v36 >> 25) - 16;
  LOBYTE(v466) = ((v450 ^ 0x89) - 79) ^ v450 ^ ((v450 ^ 0xD) + 53) ^ ((v450 ^ 0xB9) - 127) ^ ((v450 ^ 0xFB) - 61) ^ *(v382 + ((55 * (v36 >> 25)) ^ 0x35CLL));
  HIDWORD(v445) = v36;
  LODWORD(v445) = v36;
  v467 = v445 >> 6;
  HIDWORD(v445) = v36;
  LODWORD(v445) = v36;
  LODWORD(v316) = LODWORD(STACK[0x50D0]) + 1882471051 + (v316 ^ (v36 << 7) ^ (2 * v36 - v312) ^ (v467 - (v445 >> 11)) ^ ((((v466 ^ 0x58) - 71) ^ ((v466 ^ 0xB8) + 89) ^ ((v466 ^ 0xCA) + 43)) + 40));
  LODWORD(v317) = ((v465 ^ v460) - (v460 - v456 + (v465 ^ v456))) ^ 0xF2C1D643 ^ v408 ^ v317;
  LODWORD(v408) = v316 + v331;
  v468 = v316 + v317;
  LODWORD(v316) = (((v316 + v331) >> 25) ^ 0x587DCDEF) & (((v316 + v331) << 7) ^ 0x7BFDFFFF) | ((v316 + v331) << 7) & 0xA7823200;
  HIDWORD(v445) = v408;
  LODWORD(v445) = v408;
  LODWORD(v331) = v445 >> 11;
  v469 = __PAIR64__(v468, __ROR4__(v408, 6));
  LODWORD(v316) = (v312 - ((v408 + v312) ^ (v408 + v36)) - 1006233306 + (((v316 ^ 0x587DCDEF) + (v331 ^ v469)) ^ v455)) ^ LODWORD(STACK[0x50D8]);
  LODWORD(v469) = v468;
  v470 = v465 + v460 - (v469 >> 13);
  HIDWORD(v469) = v468;
  LODWORD(v469) = v468;
  LODWORD(v317) = v469 >> 22;
  HIDWORD(v469) = v468;
  LODWORD(v469) = v468;
  v471 = v470 + (v469 >> 2) + v317 + ((v468 - v460) ^ (v468 + v465)) + v316;
  v472 = v316 + v456;
  HIDWORD(v469) = v472;
  LODWORD(v469) = v472;
  LODWORD(v317) = v312 - LODWORD(STACK[0x50E0]) + v408 - (v469 >> 11);
  HIDWORD(v469) = v472;
  LODWORD(v469) = v472;
  LODWORD(v317) = v317 - (v469 >> 6);
  HIDWORD(v469) = v472;
  LODWORD(v469) = v472;
  LODWORD(v317) = v317 - (v469 >> 25);
  HIDWORD(v469) = v471;
  LODWORD(v469) = v471;
  LODWORD(v312) = v469 >> 2;
  HIDWORD(v469) = v471;
  LODWORD(v469) = v471;
  LODWORD(v317) = v317 - 2 * v472 + 2040665450;
  LODWORD(v331) = v317 + v460;
  LODWORD(v316) = (v469 >> 22) + v312 - (((v471 ^ v468) - (v471 ^ v465)) ^ (v468 - v465)) + ((v471 << ((v408 & 0x13 ^ 0x13) + (v408 & 0x13))) ^ (v471 >> 13)) + v317;
  HIDWORD(v469) = v331;
  LODWORD(v469) = v317 + v460;
  v473 = v469 >> 6;
  HIDWORD(v469) = v331;
  LODWORD(v469) = v331;
  v474 = v473 - (v469 >> 11);
  v475 = __PAIR64__(v316, __ROR4__(v331, 25));
  LODWORD(v36) = LODWORD(STACK[0x50E8]) + 1786852411 + ((v36 - (v474 ^ v475)) ^ (2 * v331 - v472));
  LODWORD(v475) = v316;
  v476 = v475 >> 13;
  HIDWORD(v475) = v316;
  LODWORD(v475) = v316;
  v477 = v468 - v316 + (v475 >> 2) + v476;
  HIDWORD(v475) = v316;
  LODWORD(v475) = v316;
  v478 = v477 - (v475 >> 22) - (v316 ^ v468) + v36;
  LODWORD(v317) = v36 + v465;
  HIDWORD(v475) = v36 + v465;
  LODWORD(v475) = v36 + v465;
  LODWORD(v36) = v475 >> 11;
  v479 = __PAIR64__(v478, __ROR4__(v317, 6));
  LODWORD(v36) = v36 ^ v479;
  LODWORD(v479) = v478;
  v480 = v479 >> 13;
  HIDWORD(v479) = v478;
  LODWORD(v479) = v478;
  LODWORD(v312) = v479 >> 2;
  HIDWORD(v479) = v317;
  LODWORD(v479) = v317;
  LODWORD(v36) = v36 + (v479 >> 25);
  v481 = v480 + v312;
  HIDWORD(v479) = v478;
  LODWORD(v479) = v478;
  LODWORD(v312) = (-v331 ^ v408 ^ v36) - LODWORD(STACK[0x50F0]) + 231901443;
  LODWORD(v36) = v481 - (v479 >> 22) + v312;
  v482 = v312 + v468;
  LODWORD(v312) = (((v312 + v468) >> 20) & 0xE0 ^ 0xB42272AD) & ((v482 >> 28) ^ 0xFE26FFED) ^ (((v482 >> 28) & 2) + 1241812288);
  LOBYTE(v312) = v312 ^ *(v382 + (((v312 ^ 0x77B664AC) + 1695929082) ^ ((v312 ^ 0xC8BC548A) - 635444512) ^ ((v312 ^ 0x412CCF02) + 1401911640)) + 326945268);
  HIDWORD(v479) = v36;
  LODWORD(v479) = v36;
  v483 = v479 >> 2;
  v485 = __PAIR64__(v36, __ROR4__(v36, 13));
  v484 = v483 ^ v485;
  LODWORD(v485) = v36;
  v486 = v484 + (v485 >> 22);
  LOBYTE(v312) = 117 * (((v312 ^ 0x45) - 13) ^ ((v312 ^ 0x60) - 40) ^ ((v312 ^ 0xA7) + 17)) - 100;
  LOBYTE(v408) = v312 & 0x86 ^ 0xA8;
  HIDWORD(v485) = v482;
  LODWORD(v485) = v482;
  LODWORD(v312) = (((v485 >> 18) & 0xFFFFC07F) - 2 * ((v485 >> 18) & 0x7334407D ^ (v482 >> 18) & 0x10) + 1932811501) ^ (((v312 ^ (2 * ((v312 ^ 0x34) & (2 * ((v312 ^ 0x34) & (2 * ((v312 ^ 0x34) & (2 * ((v312 ^ 0x34) & (2 * ((v312 ^ 0x34) & (2 * v408) ^ v408)) ^ v408)) ^ v408)) ^ v408)) ^ v408))) ^ 0xD1) << 7);
  HIDWORD(v485) = v482;
  LODWORD(v485) = v482;
  v487 = v472 + (v485 >> 6);
  HIDWORD(v485) = v482;
  LODWORD(v485) = v482;
  LODWORD(v312) = (v487 - (v485 >> 11) - ((v482 - v331) ^ v331 ^ (v482 + v317)) - 1796381840 + (__ROR4__(v312 ^ 0x2341C6B5, 7) ^ 0xB0A0EB63)) ^ LODWORD(STACK[0x5100]);
  v488 = v312 + (((v36 ^ v478 ^ (v36 - v316)) - (v478 ^ v316)) ^ v486);
  LODWORD(v312) = v312 + v471;
  HIDWORD(v485) = v488;
  LODWORD(v485) = v488;
  LODWORD(v471) = v485 >> 13;
  HIDWORD(v485) = v488;
  LODWORD(v485) = v488;
  LODWORD(v331) = -1522006941 - LODWORD(STACK[0x50F8]) + v317 - v482 - v312 + (v312 ^ v317) + (v331 ^ __ROR4__(v312, 6) ^ __ROR4__(v312, 25) ^ __ROR4__(v312, 11));
  LODWORD(v408) = (((v485 >> 2) - v471) ^ __ROR4__(v488, 22)) + 2 * v36 + v331;
  v489 = v331 + v316;
  HIDWORD(v485) = v408;
  LODWORD(v485) = v408;
  LODWORD(v316) = v485 >> 13;
  HIDWORD(v485) = v408;
  LODWORD(v485) = v408;
  LODWORD(v316) = (v485 >> 22) + v316;
  HIDWORD(v485) = v408;
  LODWORD(v485) = v408;
  LODWORD(v471) = (((v408 + v36) ^ (v408 + v488)) + (v488 ^ v36)) ^ ((v485 >> 2) - v316);
  HIDWORD(v485) = v489;
  LODWORD(v485) = v489;
  LODWORD(v316) = LODWORD(STACK[0x5110]) - 1839708071 + v317 + ((v482 - v312) ^ v482) + (v485 >> 25);
  HIDWORD(v485) = v489;
  LODWORD(v485) = v489;
  LODWORD(v316) = v316 + ((v485 >> 11) ^ __ROR4__(v489, 6)) + 2178;
  LODWORD(v471) = v471 + v316;
  LODWORD(v316) = v316 + v478;
  HIDWORD(v485) = v471;
  LODWORD(v485) = v471;
  v490 = v485 >> 13;
  HIDWORD(v485) = v471;
  LODWORD(v485) = v471;
  v491 = (v485 >> 2) + v490;
  HIDWORD(v485) = v316;
  LODWORD(v485) = v316;
  v492 = (((v482 + ((v485 >> 6) ^ __ROR4__(v316, 11)) + ((((v316 << 7) ^ 0x83A68609) & ((v316 >> 25) ^ 0xFFFFFFCB) | (v316 >> 25) & 0x76) ^ 0x7C5979F6) + 1) ^ ((v316 ^ v489) - v316)) - 1442572256) ^ LODWORD(STACK[0x5120]);
  v493 = v492 + v36;
  HIDWORD(v485) = v493;
  LODWORD(v485) = v492 + v36;
  LODWORD(v331) = v492 + (v491 ^ __ROR4__(v471, 22) ^ (((v471 - v488) ^ v471 ^ v408) - (v408 ^ v488)));
  LODWORD(v36) = v312 - (v485 >> 11);
  HIDWORD(v485) = v493;
  LODWORD(v485) = v493;
  v494 = v485 >> 25;
  HIDWORD(v485) = v493;
  LODWORD(v485) = v493;
  LODWORD(v36) = (((v36 - (v485 >> 6) - v494) ^ ((v316 ^ v489) + v489)) + 892118674) ^ LODWORD(STACK[0x5118]);
  HIDWORD(v485) = v331;
  LODWORD(v485) = v331;
  v495 = v408 + v471 - (v471 ^ v408) - 2 * v331 + ((v485 >> 13) ^ __ROR4__(v331, 2) ^ __ROR4__(v331, 22)) + v36;
  LODWORD(v312) = v36 + v488;
  HIDWORD(v485) = v495;
  LODWORD(v485) = v495;
  LODWORD(v36) = ((v495 >> (((v471 >> 22) & 2 ^ 2) + ((v471 >> 22) & 2))) ^ (v495 << 30)) - (v485 >> 13);
  HIDWORD(v485) = v312;
  LODWORD(v485) = v312;
  v496 = v485 >> 11;
  HIDWORD(v485) = v312;
  LODWORD(v485) = v312;
  v497 = LODWORD(STACK[0x5108]) + 822117716 - v493 + (v489 ^ __ROR4__(v312, 25) ^ ((v485 >> 6) + v496));
  v498 = v497 + v408 - 938947278 - ((2 * (v497 + v408)) & 0x90119A64);
  v499 = v497 + ((v495 + v331 + (v495 ^ v331)) ^ __ROR4__(v495, 22) ^ v36);
  HIDWORD(v485) = v498 ^ 0x32;
  LODWORD(v485) = v498 ^ 0xC808CD00;
  v500 = v485 >> 6;
  HIDWORD(v485) = v498 ^ 0x532;
  LODWORD(v485) = v498 ^ 0xC808C800;
  LODWORD(v316) = LODWORD(STACK[0x5140]) - 6460265 + v316 - (v485 >> 11) - v500 - (((v498 ^ 0xC808CD32) - v493 + (v498 ^ (v312 - 938947278 - ((2 * v312) & 0x90119A64)))) ^ v493) + ((((v498 << 7) ^ 0xD58CFE4B) & ((v498 >> 25) ^ 0xFFFFFF9F) | (v498 >> 25) & 0x34) ^ 0x2E159890);
  LODWORD(v317) = v316 + v471;
  LODWORD(v316) = v316 + (v495 ^ v331 ^ __ROR4__(v499, 13) ^ __ROR4__(v499, 2) ^ __ROR4__(v499, 22) ^ ((v499 ^ v495) - (v499 ^ v331)));
  HIDWORD(v485) = v317;
  LODWORD(v485) = v317;
  v501 = v493 - LODWORD(STACK[0x5138]) + v317 - (v485 >> 6);
  HIDWORD(v485) = v317;
  LODWORD(v485) = v317;
  v502 = v485 >> 11;
  HIDWORD(v485) = v317;
  LODWORD(v485) = v317;
  LODWORD(v471) = v501 + v502 + (v485 >> 25) - ((v317 - 938947278 - ((2 * v317) & 0x90119A64)) ^ v498);
  HIDWORD(v485) = v316;
  LODWORD(v485) = v316;
  v503 = v485 >> 22;
  HIDWORD(v485) = v316;
  LODWORD(v485) = v316;
  LODWORD(v471) = v471 - 977382001;
  LODWORD(v331) = v471 + v331;
  LODWORD(v471) = ((v485 >> 2) ^ __ROR4__(v316, 13)) - v503 - ((v316 - v499 + (v316 ^ v495)) ^ (v499 - v495)) + v471;
  HIDWORD(v485) = v331;
  LODWORD(v485) = v331;
  LODWORD(v312) = LODWORD(STACK[0x5150]) + v312 + (v498 ^ 0xC808CD32) + (v485 >> 11);
  HIDWORD(v485) = v331;
  LODWORD(v485) = v331;
  LODWORD(v408) = v485 >> 6;
  HIDWORD(v485) = v331;
  LODWORD(v485) = v331;
  LODWORD(v312) = v312 + v408 + (v485 >> 25) + ((v331 - v317) ^ (v331 + (v498 ^ 0xC808CD32))) + 1392290281;
  HIDWORD(v485) = v471;
  LODWORD(v485) = v471;
  v504 = ((v485 >> 13) ^ __ROR4__(v471, 22) ^ __ROR4__(v471, 2)) + ((v316 + v499) ^ v499 ^ v471 ^ (v471 + v316));
  LODWORD(v408) = v312 + v495;
  v505 = v312 + v504;
  HIDWORD(v485) = v312 + v504;
  LODWORD(v485) = v312 + v504;
  v506 = v485 >> 13;
  HIDWORD(v485) = v312 + v504;
  LODWORD(v485) = v312 + v504;
  v507 = (v485 >> 2) - v506;
  HIDWORD(v485) = v312 + v504;
  LODWORD(v485) = v312 + v504;
  LODWORD(v312) = v507 + (v485 >> 22);
  HIDWORD(v485) = v408;
  LODWORD(v485) = v408;
  v508 = v485 >> 6;
  LODWORD(v485) = __ROR4__(v408, 11);
  v509 = (((v408 << 7) ^ 0x5F899D12) & ((v408 >> 25) ^ 0xFFFFFF97) | (v408 >> 25) & 0x6D) ^ 0x5282BDAE ^ ((v508 ^ v485) + 218833085 + (~(2 * (v508 ^ v485)) | 0xE5E9BE87));
  v510 = -356251362 - LODWORD(STACK[0x5158]) - 2 * v317 + v408 + (v408 ^ v331) + ((v509 - 938947278 - ((2 * v509) & 0x90119A64)) ^ v498) + 1976;
  LODWORD(v312) = v510 + ((v471 + v316) ^ v316 ^ v505 ^ (v505 + v471) ^ v312);
  v511 = v510 + v499;
  HIDWORD(v485) = v312;
  LODWORD(v485) = v312;
  v512 = v485 >> 13;
  HIDWORD(v485) = v312;
  LODWORD(v485) = v312;
  v513 = (v485 >> 2) - v512;
  LOBYTE(v500) = (v504 & 7 ^ 7) + (v504 & 7);
  HIDWORD(v485) = v312;
  LODWORD(v485) = v312;
  v514 = v513 + (v485 >> 22);
  v515 = v408 + v331;
  HIDWORD(v485) = v511;
  LODWORD(v485) = v511;
  LODWORD(v317) = v317 - LODWORD(STACK[0x5160]) + ((v511 << v500) ^ (v511 >> 25)) + ((v485 >> 6) ^ __ROR4__(v511, 11)) + ((v408 + v331 + 2 * v511) ^ v331) + 790312645;
  LODWORD(v331) = v317 + (v514 ^ (2 * v312 - ((v505 ^ v471) + v505 + v471)));
  LODWORD(v316) = v317 + v316;
  HIDWORD(v485) = v316;
  LODWORD(v485) = v316;
  v516 = v515 + (v485 >> 11);
  HIDWORD(v485) = v316;
  LODWORD(v485) = v316;
  v517 = v516 - (v485 >> 6);
  HIDWORD(v485) = v331;
  LODWORD(v485) = v331;
  v518 = (v517 + ((v316 - v511) ^ (v316 - v408)) + ((((v316 >> 25) ^ 0xD0887050) & ((v316 << 7) ^ 0xD39BFB7F) | (v316 << 7) & 0x2F778F80) ^ 0xD0887050) - 1535359502) ^ LODWORD(STACK[0x5180]);
  v519 = v331 - (v505 + (v312 ^ v505)) + (v331 ^ v312) + ((v485 >> 13) ^ __ROR4__(v331, 22) ^ __ROR4__(v331, 2));
  v520 = v518 + v471;
  HIDWORD(v485) = v520;
  LODWORD(v485) = v518 + v471;
  LODWORD(v471) = v519 + v518;
  LODWORD(v408) = LODWORD(STACK[0x5168]) + v408 - ((v485 >> 11) ^ __ROR4__(v520, 6) ^ __ROR4__(v520, 25)) - ((v520 - v316) ^ v511 ^ (v520 + v511)) - 1862883772;
  v521 = v408 + v505;
  HIDWORD(v485) = v521;
  LODWORD(v485) = v408 + v505;
  v522 = v485 >> 6;
  HIDWORD(v485) = v521;
  LODWORD(v485) = v521;
  v523 = v485 >> 11;
  HIDWORD(v485) = v521;
  LODWORD(v485) = v521;
  v524 = LODWORD(STACK[0x5170]) - v316 - ((v521 - v520) ^ (v521 + v316)) - 1460342321 + ((v522 + v523 + (v485 >> 25)) ^ v511);
  v525 = v524 + v312 - 324632872 - ((2 * (v524 + v312)) & 0xD94CFDB0);
  HIDWORD(v485) = v525 ^ 0x18;
  LODWORD(v485) = v525 ^ 0xECA67EC0;
  v526 = v485 >> 6;
  HIDWORD(v485) = v525 ^ 0x6D8;
  LODWORD(v485) = v525 ^ 0xECA67800;
  LODWORD(v316) = v316 ^ (v521 - 2 * v520 + ((2 * v525) ^ 0xD94CFDB0)) ^ (((v525 << 7) ^ 0xE96C6A08) & ((v525 >> 25) ^ 0xFFFFFFEB) | (v525 >> 25) & 0xFFFFFFF7) ^ 0x3E9166D8 ^ (v526 + (v485 >> 11) - ((2 * (v526 + (v485 >> 11))) & 0x984C14C) - 2067636058);
  HIDWORD(v485) = v471;
  LODWORD(v485) = v471;
  v527 = v485 >> 2;
  HIDWORD(v485) = v471;
  LODWORD(v485) = v471;
  LODWORD(v317) = v471 - (v312 + (v331 ^ v312)) + (v485 >> 22);
  HIDWORD(v485) = v471;
  LODWORD(v485) = v471;
  LODWORD(v408) = v317 + v527 - (v485 >> 13) - (v471 ^ v331) + v408;
  HIDWORD(v485) = v408;
  LODWORD(v485) = v408;
  LODWORD(v317) = v485 >> 2;
  HIDWORD(v485) = v408;
  LODWORD(v485) = v408;
  v528 = LODWORD(STACK[0x5178]) - 1385013415 + v316;
  LODWORD(v316) = v317 + (v485 >> 13);
  HIDWORD(v485) = v408;
  LODWORD(v485) = v408;
  v529 = v316 + (v485 >> 22) - ((v408 - v471 - (v408 ^ v331)) ^ (v471 - v331)) + v524;
  HIDWORD(v485) = v529;
  LODWORD(v485) = v529;
  LODWORD(v316) = v485 >> 22;
  HIDWORD(v485) = v529;
  LODWORD(v485) = v529;
  LODWORD(v317) = v485 >> 2;
  HIDWORD(v485) = v529;
  LODWORD(v485) = v529;
  LODWORD(v316) = v317 - (v485 >> 13) + v316 + (v408 ^ v471 ^ ((v529 ^ v408) - (v529 ^ v471))) + v528;
  HIDWORD(v485) = v316;
  LODWORD(v485) = v316;
  LODWORD(v312) = v485 >> 13;
  LODWORD(v317) = v528 + v331;
  HIDWORD(v485) = v316;
  LODWORD(v485) = v316;
  v530 = (v485 >> 2) + v312;
  LODWORD(v312) = v525 ^ 0xECA67ED8;
  v531 = __PAIR64__(v528 + v331, __ROR4__(v316, 22));
  v532 = v530 ^ v531 ^ (v408 - v529 + (v316 ^ v529) + (v316 ^ v408));
  LODWORD(v531) = v317;
  LODWORD(v331) = v520 - (v531 >> 25);
  HIDWORD(v531) = v317;
  LODWORD(v531) = v317;
  v533 = v317 - v521 + v317 - (v525 ^ 0xECA67ED8);
  v534 = ((v533 ^ v521 ^ (v331 + ((v531 >> 6) ^ __ROR4__(v317, 11)))) - 96239071) ^ LODWORD(STACK[0x5148]);
  v535 = (v534 + v471);
  LODWORD(v471) = v534 + v532;
  HIDWORD(v531) = v535;
  LODWORD(v531) = v535;
  v536 = v531 >> 11;
  v537 = __PAIR64__(v471, __ROR4__(v535, 6));
  v538 = ((v535 >> ((v533 & 0x19 ^ 0x19) + (v533 & 0x19u))) ^ (v535 << 7)) + (v536 ^ v537);
  LODWORD(v537) = v471;
  v539 = (((v535 + (v525 ^ 0x13598127) + v317 - ((v535 - 324632872 - ((2 * v535) & 0xD94CFDB0)) ^ v525) + 1) ^ v521 ^ v538) - 781505224) ^ LODWORD(STACK[0x5188]);
  v540 = v539 + v408 - 1527020273 - ((2 * (v539 + v408)) & 0x49F70A1E);
  v541 = -v316 - 2 * v529 + v471 - (v471 ^ v316) + ((v537 >> 13) ^ __ROR4__(v471, 2) ^ __ROR4__(v471, 22)) + v539;
  LODWORD(v408) = ((((v540 >> 25) ^ 0x4A) - 120) ^ (((v540 >> 25) ^ 0x57) - 101) ^ (((v540 >> 25) ^ 0x4F) - 125)) + 101;
  LOBYTE(v538) = v408 & 0x1D ^ 0x11;
  HIDWORD(v537) = v541;
  LODWORD(v537) = v541;
  v542 = v537 >> 13;
  LOBYTE(v538) = v408 ^ (2 * ((v408 ^ 0x7A) & (2 * ((v408 ^ 0x7A) & (2 * ((v408 ^ 0x7A) & (2 * ((v408 ^ 0x7A) & (2 * ((v408 ^ 0x7A) & (2 * (((2 * v408) & 0x76 ^ 0x66) & (v408 ^ 0x72) ^ v538)) ^ v538)) ^ v538)) ^ v538)) ^ v538)) ^ v538));
  LODWORD(v408) = v540 ^ 0xA4FB850F;
  v543 = __PAIR64__(v541, __ROR4__(v540, 11));
  v544 = (__ROR4__(v540, 6) ^ 0xC16C11EB) + (v543 ^ 0xA1F49F70);
  LODWORD(v543) = v541;
  v545 = LODWORD(STACK[0x5190]) + v312 - v317 + v535 + (v540 ^ 0xA4FB850F) + (((v317 ^ 0x4F670459) - 1527020273 - ((2 * (v317 ^ 0x4F670459)) & 0x49F70A1E)) ^ 0x4F670459 ^ v540) + v544 + (v538 ^ (v540 << 7) ^ 0x823D7862) + 2;
  LODWORD(v312) = (v542 ^ __ROR4__(v541, 2)) - (v543 >> 22) - ((-v316 - v471 + 2 * v541) ^ (v471 - v316)) + 230786962 + v545;
  v546 = (((v529 + 2058423944 + v545) ^ 0xCE84CB0) - 1611123270) ^ (v529 + 2058423944 + v545) ^ (((v529 + 2058423944 + v545) ^ 0x7AAF4795) - 373342563) ^ (((v529 + 2058423944 + v545) ^ 0x5D7702C) - 1765340890) ^ (((v529 + 2058423944 + v545) ^ 0x1F7FFDFF) - 1938848521);
  HIDWORD(v543) = v546 ^ 0xE38A761A;
  LODWORD(v543) = v546 ^ 0xE38A761A;
  v547 = v543 >> 11;
  HIDWORD(v543) = v312;
  LODWORD(v543) = v312;
  LODWORD(v313) = v543 >> 13;
  v548 = v547 & 0x42F6220F ^ __ROR4__(v546 ^ 0xE38A761A, 6) ^ 0x37B0CF29 ^ ((v547 & 0xBD09DDF0 ^ 0x1D01CCB0) - ((2 * (v547 & 0xBD09DDF0 ^ 0x1D01CCB0)) & 0xA12B1C0) - 2061666076);
  v549 = v546 ^ 0x6CEF86F6;
  v550 = __PAIR64__(v312, __ROR4__(v312, 2));
  LODWORD(v313) = v313 ^ v550;
  v551 = ((v317 ^ ((v546 ^ 0x6CEF86F6) + (v540 ^ 0xC81403F9 ^ v546)) ^ ((((v546 ^ 0xE38A761A) << 7) ^ 0xCA7DB50A) & ((v546 >> 25) ^ 0xFFFFFF99) | (v546 >> 25) & 0x75) ^ 0x5FE4BD76 ^ (v548 - ((2 * v548) & 0x4EC2FC90) + 660700744)) + 42521413) ^ LODWORD(STACK[0x5198]);
  LODWORD(v550) = v312;
  LODWORD(v317) = (v550 >> 22) - (v471 + (v541 ^ v471) + v312 + (v312 ^ v541)) + v313 + v551;
  HIDWORD(v550) = v317;
  LODWORD(v550) = v317;
  v552 = v550 >> 2;
  HIDWORD(v550) = v317;
  LODWORD(v550) = v317;
  v553 = v551 + v316;
  LODWORD(v316) = v552 - (v550 >> 13);
  HIDWORD(v550) = v553;
  LODWORD(v550) = v553;
  v554 = v550 >> 6;
  HIDWORD(v550) = v553;
  LODWORD(v550) = v553;
  LODWORD(v313) = (v554 - (v550 >> 11)) ^ (v553 >> 25) ^ (v553 << ((((v317 >> 22) & 5 ^ 5) + ((v317 >> 22) & 5)) | 3));
  v555 = (v553 - (v540 ^ 0xA4FB850F)) ^ (v553 + (v546 ^ 0x6CEF86F6));
  LODWORD(v535) = v535 - LODWORD(STACK[0x51A0]) + ((v555 - 1527020273 - ((2 * v555) & 0x49F70A1E)) ^ v540) - v313 + 581753068;
  LODWORD(v316) = (v316 ^ __ROR4__(v317, 22)) + ((v317 + v541) ^ v312 ^ v541 ^ v317 ^ v312) + v535;
  LODWORD(v535) = v535 + v471;
  HIDWORD(v550) = v535;
  LODWORD(v550) = v535;
  v556 = v550 >> 11;
  HIDWORD(v550) = v535;
  LODWORD(v550) = v535;
  v557 = ((v550 >> 6) + v556) ^ 0xEF79619C ^ (((v535 >> 25) ^ 0xEF79619C) & ((v535 << 7) ^ LODWORD(STACK[0x2E54])) | (v535 << 7) & 0x10869E00);
  v558 = ((v546 ^ 0x827F5E13) - 1643456521) ^ ((v546 ^ 0x6CC5B18D) + 1890596969) ^ ((v546 ^ 0x82556968) - 1642012530);
  v559 = v408 - v557;
  HIDWORD(v550) = v316;
  LODWORD(v550) = v316;
  LODWORD(v313) = v550 >> 22;
  LODWORD(v408) = ((v546 ^ 0xE64E761E) - 96731140) ^ ((v546 ^ 0x4DD523EA) + 1369483792) ^ ((v546 ^ 0xC774D302) - 620668184);
  HIDWORD(v550) = v316;
  LODWORD(v550) = v316;
  v560 = v550 >> 2;
  HIDWORD(v550) = v316;
  LODWORD(v550) = v316;
  v561 = ((v559 ^ (v408 - v558 - v535 + (v535 ^ v553))) + 1625489816) ^ LODWORD(STACK[0x5128]);
  LODWORD(v408) = (v317 ^ v312) - v312 - v316 + (v316 ^ v317) + v560 + v313 + (v550 >> 13) + v561;
  v562 = v561 + v541;
  HIDWORD(v550) = v408;
  LODWORD(v550) = v408;
  v563 = v550 >> 2;
  HIDWORD(v550) = v408;
  LODWORD(v550) = v408;
  v564 = v550 >> 13;
  HIDWORD(v550) = v562;
  LODWORD(v550) = v562;
  v565 = v550 >> 6;
  v567 = __PAIR64__(v562, __ROR4__(v408, 22));
  v566 = (v563 - v564) ^ v567;
  LODWORD(v567) = v562;
  v568 = v535 - LODWORD(STACK[0x51A8]) - 2050507396 + (v549 ^ (v565 + (v567 >> 11) + ((((v562 << 7) ^ 0x400A7ADA) & ((v562 >> 25) ^ 0xFFFFFFFA) | (v562 >> 25) & 0x25) ^ 0x400A7ADA)));
  v569 = v568 + (v566 ^ (v316 - v317 + (v408 ^ v317 ^ (v408 + v316))));
  v570 = v568 + v312;
  v571 = __PAIR64__(v569, __ROR4__(v568 + v312, 11));
  LODWORD(v36) = (v553 + v535 - ((v570 - v562) ^ (v570 + v535)) - (((v568 + v312) >> 6) ^ v571 ^ (v570 << 26)) + ((((v570 << 7) ^ 0x1ED8C97) & (((v568 + v312) >> 25) ^ 0xFFFFFF9F) | ((v568 + v312) >> 25) & 0x68) ^ 0x1ED8C97) - 1249597070) ^ (((LODWORD(STACK[0x5130]) + (LODWORD(STACK[0x5128]) >> 10)) ^ LODWORD(STACK[0x5148])) + LODWORD(STACK[0x5140]));
  LODWORD(v571) = v569;
  v572 = v571 >> 2;
  HIDWORD(v571) = v569;
  LODWORD(v571) = v569;
  STACK[0x56D0] = (v568 + v312) ^ STACK[0x56D0];
  STACK[0x55F0] = v408 - STACK[0x55F0];
  v573 = v408 + v316 + (v569 >> 22) + (v569 << 10) + v572 - (v571 >> 13) - ((v569 - v408) ^ (v569 + v316)) + v36 + STACK[0x55C0];
  STACK[0x5680] = v569 + STACK[0x5680];
  return (*(STACK[0x57D8] + 8 * STACK[0x57B0]))(v573);
}

uint64_t sub_10046DF30()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 21759)))(STACK[0xB320]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10046E07C(unint64_t a1)
{
  v5 = *(v2 + 96);
  v6 = STACK[0x57D8];
  v7 = *(STACK[0x57D8] + 8 * (v4 + 2151));
  STACK[0x57C0] = a1;
  v8 = v7(v1, a1, v5);
  return (*(v6 + 8 * ((21 * (563 * (v4 ^ 0x743Cu) + (v8 ^ (v3 - 0x480C0761027858)) - *(v2 + 96) + ((2 * v8) & 0xFF6FE7F13DFBBFFCLL) == 0xFFB7F3F89EFE0794)) ^ v4)))();
}

uint64_t sub_10046E16C(uint64_t a1)
{
  v1 = *(a1 + 3552);
  *(a1 + 3560) = v1;
  v2 = *(a1 + 3548);
  *(a1 + 3572) = v2;
  *(a1 + 3576) = v2 ^ 0x595B;
  *(a1 + 3580) = (v2 ^ 0x595B) - 5082;
  *(a1 + 3184) = *(STACK[0x4D10] + 24) + 16 * v1 + 8;
  v3 = STACK[0x57D8];
  *(a1 + 3168) = *(STACK[0x57D8] + 8 * (v2 ^ 0x13EF));
  return (*(v3 + 8 * (v2 + 2847)))();
}

uint64_t sub_10046E1D4@<X0>(int a1@<W8>)
{
  v6 = STACK[0x57D8];
  STACK[0x7CD0] = *(STACK[0x57D8] + 8 * v3);
  STACK[0x7620] = v4;
  LODWORD(STACK[0xA1BC]) = v5;
  STACK[0x7ED8] += 112;
  STACK[0x7550] = v1;
  STACK[0x9440] = v2;
  if (v4)
  {
    v7 = v5 == (a1 ^ 0x2EE8) - 769886316;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  return (*(v6 + 8 * ((4042 * v8) ^ a1)))();
}

uint64_t sub_10046E28C()
{
  v0 = (STACK[0x51B8] - 22613) | 0x2D6;
  v1 = STACK[0x57D8];
  STACK[0x7B40] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0xFBC]));
  return (*(v1 + 8 * (LODWORD(STACK[0xFB4]) ^ v0)))();
}

uint64_t sub_10046E2F8@<X0>(int a1@<W8>)
{
  v2 = STACK[0x6A08];
  LODWORD(STACK[0x98F4]) = v1;
  STACK[0x6230] = v2;
  LODWORD(STACK[0x6974]) = -402766041;
  return (*(STACK[0x57D8] + 8 * (a1 & 0x9554B7AF)))();
}

uint64_t sub_10046E3F4()
{
  v3 = STACK[0x2410];
  STACK[0x1D4D8] = v1 - STACK[0x2410];
  STACK[0x1D4E0] = v3 + 4151854225u;
  LODWORD(STACK[0x1D4C8]) = ((v0 - 1844169077) | 0xE) - v3;
  LODWORD(STACK[0x1D4C0]) = (v0 - 1079089617) ^ v3;
  LODWORD(STACK[0x1D4CC]) = v0 - 1844169077 - v3;
  LODWORD(STACK[0x1D4C4]) = v3 ^ (v0 - 1844169077) ^ 0xF48;
  LODWORD(STACK[0x1D4D0]) = v3;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x2411)))(v2 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4D4])))(v5, &STACK[0x1D270], &STACK[0x67A7]);
}

uint64_t sub_10046E508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v7);
  return (*(v8 + 8 * (v7 ^ 0x16D5)))(a1, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_10046EA04()
{
  v3 = LODWORD(STACK[0x800]) + *(v2 + 68);
  *(v2 + 68) = v3;
  v5 = v3 < 0xBA973047 && v3 + 1164496825 < LODWORD(STACK[0x7F0]);
  return (*(v1 + 8 * ((v5 * (v0 ^ 0x779B)) ^ v0)))();
}

uint64_t sub_10046EA64()
{
  v8 = *(STACK[0x55F0] + 1806);
  LODWORD(STACK[0x37E8]) = LODWORD(STACK[0x3388]) | LODWORD(STACK[0x3460]);
  LODWORD(STACK[0x3460]) = LODWORD(STACK[0x3370]) | LODWORD(STACK[0x3378]);
  v9 = v6 & 0x16 ^ 0x71;
  v10 = v5 & 0x52 ^ 0x57;
  v11 = v4 & 0x1A ^ 0xF3;
  v12 = (((v5 ^ (2 * ((v5 ^ 0x34) & (2 * ((v5 ^ 0x34) & (2 * ((v5 ^ 0x34) & (2 * ((v5 ^ 0x34) & (2 * ((v5 ^ 0x34) & (2 * (v10 ^ v5 & 0x26)) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10))) ^ 0x52) << 16) | (((v4 ^ (2 * ((v4 ^ 0x34) & (2 * ((v4 ^ 0x34) & (2 * ((v4 ^ 0x34) & (2 * ((v4 ^ 0x34) & (2 * ((v4 ^ 0x34) & (2 * (v11 ^ v4 & 0x2E)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11))) ^ 0x1A) << 8);
  LODWORD(STACK[0x3378]) = ((v6 ^ (2 * ((v6 ^ 0x34) & (2 * ((((v6 ^ 0x34) & (2 * ((v6 ^ 0x34) & (2 * ((v6 ^ 0x34) & (2 * (v9 ^ v6 & 0x22)) ^ v9)) ^ v9)) ^ v9) << (6 * ((v0 + 91) ^ 0x88) - 25)) & (v6 ^ 0x34) ^ v9)) ^ v9))) ^ 0xC4C40F) & ~v12 | v12 & 0x3B3B00;
  v13 = v1 & 0x60 ^ 0x7E;
  v14 = v1 ^ (2 * ((v1 ^ 0x34) & (2 * ((v1 ^ 0x34) & (2 * ((v1 ^ 0x34) & (2 * ((v1 ^ 0x34) & (2 * ((v1 ^ 0x34) & (2 * v13) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13));
  v15 = v2 & 0x52 ^ 0x57;
  LOBYTE(v12) = v3 & 0x7E ^ 0x65;
  v16 = (((v2 ^ (2 * ((v2 ^ 0x34) & (2 * ((v2 ^ 0x34) & (2 * ((v2 ^ 0x34) & (2 * ((v2 ^ 0x34) & (2 * ((v2 ^ 0x34) & (2 * (v15 ^ v2 & 0x26)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15))) ^ 0x52) << 8) | (((v3 ^ (2 * ((v3 ^ 0x34) & (2 * ((v3 ^ 0x34) & (2 * ((v3 ^ 0x34) & (2 * ((v3 ^ 0x34) & (2 * ((v3 ^ 0x34) & (2 * (v12 ^ v3 & 0xA)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12))) ^ 0x7E) << 16);
  v17 = STACK[0x54F0];
  LOBYTE(v12) = STACK[0x54F0] & 0x8E ^ 0xAD;
  v18 = (v17 ^ (2 * ((v17 ^ 0x34) & (2 * ((v17 ^ 0x34) & (2 * ((v17 ^ 0x34) & (2 * ((v17 ^ 0x34) & (2 * ((v17 ^ 0x34) & (2 * (v12 ^ v17 & 0x3A)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)));
  LODWORD(STACK[0x54F0]) = v18;
  v19 = ((v18 ^ 0xD6658F) & ~v16 | v16 & 0x299A00) << 8;
  LODWORD(STACK[0x3388]) = v19 ^ 0x289246FF;
  LODWORD(STACK[0x3178]) = v19 & 0x4108B900;
  v20 = STACK[0x5510];
  LOBYTE(v19) = STACK[0x5510] & 0x66 ^ 0x79;
  v21 = STACK[0x5500];
  LOBYTE(v18) = STACK[0x5500] & 0x54 ^ 0xD0;
  v22 = (((v21 ^ (2 * ((v21 ^ 0x34) & (2 * ((v21 ^ 0x34) & (2 * ((v21 ^ 0x34) & (2 * ((v21 ^ 0x34) & (2 * v18) | v18)) ^ v18)) ^ v18)) ^ v18))) ^ 0x54) << 8) | (((v20 ^ (2 * ((v20 ^ 0x34) & (2 * ((v20 ^ 0x34) & (2 * ((v20 ^ 0x34) & (2 * ((v20 ^ 0x34) & (2 * ((v20 ^ 0x34) & (2 * (v19 ^ v20 & 0x12)) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19))) ^ 0x66) << 16);
  v23 = STACK[0x5520];
  LOBYTE(v19) = STACK[0x5520] & 0x8A ^ 0x2B;
  v24 = (((v23 ^ (2 * ((v23 ^ 0x34) & (2 * ((v23 ^ 0x34) & (2 * ((v23 ^ 0x34) & (2 * ((v23 ^ 0x34) & (2 * ((v23 ^ 0x34) & (2 * ((v23 ^ 0x34) & 0x3E ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19))) ^ 0xF0289D) & ~v22 | v22 & 0xFD700) << 8;
  v25 = STACK[0x5530];
  v26 = STACK[0x5530] & 0x30 | 0xFFFFFFC6;
  LOBYTE(v20) = v25 ^ (2 * ((v25 ^ 0x34) & (2 * ((v25 ^ 0x34) & (2 * ((v25 ^ 0x34) & (2 * ((v25 ^ 0x34) & (2 * ((v25 ^ 0x34) & (2 * v26) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26));
  LODWORD(STACK[0x5530]) = v24 ^ 0x6C1A8FF;
  LODWORD(STACK[0x3158]) = v24 & 0x29364700;
  v27 = STACK[0x5540];
  LOBYTE(v26) = STACK[0x5540] & 0x8E ^ 0x2D;
  v28 = STACK[0x5600];
  LOBYTE(v18) = STACK[0x5600] & 0x56 ^ 0xD1;
  v29 = STACK[0x5730];
  v30 = *(STACK[0x5730] + 547);
  v31 = *(STACK[0x52E0] + 1328);
  LOBYTE(v26) = v27 ^ (2 * ((v27 ^ 0x34) & (2 * ((v27 ^ 0x34) & (2 * ((v27 ^ 0x34) & (2 * ((v27 ^ 0x34) & (2 * ((v27 ^ 0x34) & (2 * (v26 ^ v27 & 0x3A)) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26));
  v32 = STACK[0x57A0];
  LOBYTE(v25) = *(STACK[0x57A0] + 3376);
  v33 = ((v26 ^ 0x8E) << 16) | (((v28 ^ (2 * ((v28 ^ 0x34) & (2 * ((v28 ^ 0x34) & (2 * ((v28 ^ 0x34) & (2 * ((v28 ^ 0x34) & (2 * ((v28 ^ 0x34) & (2 * (v18 ^ v28 & 0x22)) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18))) ^ 0x56) << 8);
  v34 = STACK[0x5610];
  LOBYTE(v18) = STACK[0x5610] & 0x86 ^ 0xA9;
  v35 = (((v34 ^ (2 * ((v34 ^ 0x34) & (2 * ((v34 ^ 0x34) & (2 * ((v34 ^ 0x34) & (2 * ((v34 ^ 0x34) & (2 * ((v34 ^ 0x34) & (2 * (v18 ^ v34 & 0x32)) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18))) ^ 0xE7AABD) & ~v33 | v33 & 0x185500) << 8;
  v36 = STACK[0x5640];
  LOBYTE(v33) = STACK[0x5640] & 0x66 ^ 0xF9;
  LOBYTE(v33) = v36 ^ (2 * ((v36 ^ 0x34) & (2 * ((v36 ^ 0x34) & (2 * ((v36 ^ 0x34) & (2 * ((v36 ^ 0x34) & (2 * ((v36 ^ 0x34) & (2 * (v33 ^ v36 & 0x12)) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33));
  LODWORD(STACK[0x5640]) = v35 ^ 0x184080FF;
  LODWORD(STACK[0x3150]) = v35 & 0x46376E00;
  LOBYTE(v35) = v25 & 0xBE ^ 5;
  LOBYTE(v35) = v25 ^ (2 * ((v25 ^ 0x34) & (2 * ((v25 ^ 0x34) & (2 * ((v25 ^ 0x34) & (2 * ((v25 ^ 0x34) & (2 * ((v25 ^ 0x34) & (2 * ((v25 ^ 0x34) & (2 * v35) ^ v35)) ^ v35)) ^ v35)) ^ v35)) ^ v35)) ^ v35));
  LOBYTE(v25) = v31 & 0xB2 ^ 0x87;
  v37 = v30 & 0xF0 ^ 0x26;
  v38 = *(STACK[0x5308] + 759);
  LOBYTE(v36) = *(STACK[0x52A0] + 2314);
  v39 = (((v30 ^ (2 * ((v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & (2 * v37) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37))) ^ 0xF0) << 8) | (((v31 ^ (2 * ((v31 ^ 0x34) & (2 * ((v31 ^ 0x34) & (2 * ((v31 ^ 0x34) & (2 * ((v31 ^ 0x34) & (2 * ((v31 ^ 0x34) & (2 * (v25 ^ v31 & 6)) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25))) ^ 0xB2) << 16);
  v40 = ((v35 ^ 0xE63AC9) & ~v39 | v39 & 0x19C500) << 8;
  LOBYTE(v35) = v36 & 0x4E ^ 0x4D;
  LOBYTE(v35) = v36 ^ (2 * ((v36 ^ 0x34) & (2 * ((v36 ^ 0x34) & (2 * ((v36 ^ 0x34) & (2 * ((v36 ^ 0x34) & (2 * ((v36 ^ 0x34) & (2 * (v35 ^ v36 & 0x3A)) ^ v35)) ^ v35)) ^ v35)) ^ v35)) ^ v35));
  LODWORD(STACK[0x5610]) = v40 ^ 0x8188FF;
  LODWORD(STACK[0x3140]) = v40 & 0x39464100;
  LOBYTE(v39) = v8 & 0xCC ^ 0xC;
  v41 = (v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * v39) ^ v39)) ^ v39)) ^ v39)) ^ v39;
  v42 = v38 & 2 ^ 0xFFFFFFEF;
  LOBYTE(v39) = *(v32 + 2610);
  v43 = (v38 ^ 0x34) & (2 * ((v38 ^ 0x34) & (2 * ((v38 ^ 0x34) & (2 * ((v38 ^ 0x34) & (2 * ((v38 ^ 0x34) & (2 * ((v38 ^ 0x34) & 0x36 ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42;
  LOBYTE(v42) = *(STACK[0x5750] + 2261);
  HIDWORD(v45) = v38 ^ 1;
  LODWORD(v45) = (v43 << 25) ^ (v38 << 24);
  v44 = v45 >> 26;
  HIDWORD(v45) = v44;
  LODWORD(v45) = (v44 ^ 0x40) << 24;
  LOBYTE(v43) = *STACK[0x5660];
  v46 = (((v8 ^ (2 * v41)) ^ 0xCC) << 8) | ((((v45 >> 28) >> 2) | ((v45 >> 28) << 6)) << 16);
  LOBYTE(v21) = v43 & 0x56 ^ 0xD1;
  v47 = ((v43 ^ (2 * ((v43 ^ 0x34) & (2 * ((v43 ^ 0x34) & (2 * ((v43 ^ 0x34) & (2 * ((v43 ^ 0x34) & (2 * ((v43 ^ 0x34) & (2 * (v21 ^ v43 & 0x22)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21))) ^ 0x6FD634) & ~v46 | v46 & 0x902900;
  LOBYTE(v21) = v42 & 0x2A ^ 0xDB;
  LOBYTE(v44) = (v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & 0x1E ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21;
  LOBYTE(v21) = v39 & 0x68 ^ 0xFA;
  LOBYTE(v43) = (v39 ^ 0x34) & (2 * ((v39 ^ 0x34) & (2 * ((v39 ^ 0x34) & (2 * ((v39 ^ 0x34) & (2 * ((v39 ^ 0x34) & (2 * v21) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21;
  LOBYTE(v21) = *(v7 + 729);
  LOBYTE(v44) = v42 ^ (2 * v44);
  LOBYTE(v42) = *(v29 + 16);
  v48 = v44 ^ 0x2A;
  LOBYTE(v44) = *STACK[0x5480];
  v49 = (((v39 ^ (2 * v43)) ^ 0x68) << 8) | (v48 << 16);
  v50 = v44 & 0x64 ^ 0xF8;
  v51 = (((v44 ^ (2 * ((v44 ^ 0x34) & (2 * ((v44 ^ 0x34) & (2 * ((v44 ^ 0x34) & (2 * ((v44 ^ 0x34) & (2 * v50) ^ v50)) ^ v50)) ^ v50)) ^ v50))) ^ 0x2270CF) & ~v49 | v49 & 0xDD8F00) << 8;
  LOBYTE(v49) = v42 & 0xE0 ^ 0x3E;
  LOBYTE(v49) = v42 ^ (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * v49) ^ v49)) ^ v49)) ^ v49)) ^ v49)) ^ v49));
  LODWORD(STACK[0x5600]) = v51 ^ 0x190414FF;
  LODWORD(STACK[0x3120]) = v51 & 0xC6FB6800;
  LOBYTE(v42) = *(STACK[0x55E0] + 1214);
  LOBYTE(v51) = v42 & 0x50 ^ 0xD6;
  v47 <<= 8;
  LODWORD(STACK[0x5540]) = v47 ^ 0x100819FF;
  LODWORD(STACK[0x3118]) = v47 & 0xEB21E400;
  LOBYTE(v47) = *(STACK[0x56E0] + 160);
  LOBYTE(v44) = v47 & 0x22 ^ 0xDF;
  v52 = (v47 ^ 0x34) & (2 * ((v47 ^ 0x34) & (2 * ((v47 ^ 0x34) & (2 * ((v47 ^ 0x34) & (2 * ((v47 ^ 0x34) & (2 * ((v47 ^ 0x34) & 0x16 ^ v44)) ^ v44)) ^ v44)) ^ v44)) ^ v44)) ^ v44;
  LOBYTE(v44) = *(STACK[0x5700] + 539);
  LOBYTE(v40) = v44 & 0xCC ^ 0x8C;
  v53 = v47 ^ (2 * v52);
  LOBYTE(v47) = *(v29 + 1700);
  LODWORD(STACK[0x3110]) = v14 ^ 0xFFFFFF9F;
  LODWORD(STACK[0x3348]) = v20;
  LODWORD(STACK[0x3350]) = v33;
  LODWORD(STACK[0x3368]) = v35;
  LODWORD(STACK[0x3370]) = v49;
  LODWORD(STACK[0x5500]) = (v42 ^ (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * v51) ^ v51)) ^ v51)) ^ v51)) ^ v51)) ^ v51)));
  v54 = (((v44 ^ (2 * ((v44 ^ 0x34) & (2 * ((v44 ^ 0x34) & (2 * ((v44 ^ 0x34) & (2 * ((v44 ^ 0x34) & (2 * v40) ^ v40)) ^ v40)) ^ v40)) ^ v40))) ^ 0xCC) << 16) | ((v53 ^ 0x22) << 8);
  v55 = (((v21 ^ (2 * (((2 * (((2 * (((2 * (((2 * (v21 ^ 0x34)) & 0x28 ^ 0x1C) & (v21 ^ 0x34))) ^ 0x1C) & (v21 ^ 0x34))) ^ 0x1C) & (v21 ^ 0x34))) ^ 0x5C) & (v21 ^ 0x34)))) ^ 0x9C39E0) & ~v54 | v54 & 0x63C600) << 8;
  v56 = v47 & 0xBA ^ 0x83;
  LODWORD(STACK[0x3340]) = (v47 ^ (2 * ((v47 ^ 0x34) & (2 * ((v47 ^ 0x34) & (2 * ((v47 ^ 0x34) & (2 * ((v47 ^ 0x34) & (2 * ((v47 ^ 0x34) & (2 * (v56 ^ v47 & 0xE)) ^ v56)) ^ v56)) ^ v56)) ^ v56)) ^ v56)));
  LODWORD(STACK[0x3338]) = v55 ^ 0x18240FF;
  LODWORD(STACK[0x3108]) = v55 & 0x7E75A300;
  return (*(STACK[0x57D8] + 8 * ((v0 - 248854949) ^ 0xF12B1C90 ^ (20557 * ((v0 - 248854949) < 0x7C90C073)))))(23259698, &STACK[0xD760]);
}

uint64_t sub_10046F758()
{
  STACK[0xE7C0] = v1;
  v2 = STACK[0x7A28];
  STACK[0xE7C8] = STACK[0x7A28];
  return (*(STACK[0x57D8] + 8 * (((v1 - v2 > ((6 * (v0 ^ 0x594Cu)) ^ 0x154BuLL)) * ((2 * v0) ^ 0xB15B)) ^ v0)))();
}

uint64_t sub_10046F7B4@<X0>(int a1@<W0>, int a2@<W2>, int a3@<W3>, char a4@<W5>, char a5@<W6>, char a6@<W7>, int a7@<W8>)
{
  v15 = *(STACK[0x57C0] + ((a7 - 3243) * a2 + 8698028) % 0x16B8u);
  v16 = *(STACK[0x57C0] + ((((v15 ^ 0x4371B8AA) - 1131526314) ^ ((v15 ^ 0x368BB6DB) - 915125979) ^ ((v15 ^ 0x75FA0EB6u) - 1979322038)) * a1 + 22127667) % 0x16B8);
  if ((v16 ^ 0x53))
  {
    v17 = v10;
  }

  else
  {
    v17 = -118;
  }

  v18 = v17 ^ 0x62;
  v19 = v13 ^ v17;
  if (((v16 ^ 0x53) & 2) == 0)
  {
    v19 = v18;
  }

  if ((v16 & 4) == 0)
  {
    v19 ^= a4 ^ 0xC7;
  }

  if ((v16 & 8) != 0)
  {
    v19 ^= a5 ^ 0xC7;
  }

  if (((v16 ^ 0x53) & 0x10) == 0)
  {
    v19 ^= a6 ^ 0xC7;
  }

  if ((v16 & 0x20) != 0)
  {
    v19 ^= v8 ^ 0xC7;
  }

  v20 = v9 ^ v19 ^ 0xC7;
  if (((v16 ^ 0x53) & 0x40) == 0)
  {
    v20 = v19;
  }

  v21 = v16 < 0;
  v22 = v7 ^ v20;
  if (v21)
  {
    v22 = v20;
  }

  *(v14 + 4 * (a2 * a3 + 9469466 - ((((a2 * a3 + 9469466) * v12) >> 32) >> 12) * v11)) = v22 ^ 0x684FB662;
  return (*(STACK[0x57D8] + 8 * ((42 * (a2 == 255)) ^ a7)))();
}

uint64_t sub_10046F954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = v11 + v9;
  v21 = v11 == 1;
  v22 = v8 + v11 - 1;
  v23 = *(*v18 + ((v13 + (v22 & 0xFFFFFFF8) - 7) & *v12));
  v24 = (__ROR8__(v22 & 0xFFFFFFFFFFFFFFF8, 8) + v23) ^ v19;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (0x9B7E4CD948D7DF24 - ((v26 + v25) | 0x9B7E4CD948D7DF24) + ((v26 + v25) | (330 * (v10 ^ 0x25CB)) ^ 0x6481B326B72800E1)) ^ 0x71B3F1C88BD84A92;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = __ROR8__(v27, 8) + v28;
  v30 = *(*v18 + (*v12 & (v13 + ((v20 + 11) & 0xFFFFFFF8) - 1) & 0xFFFFFFF8));
  v31 = __ROR8__((v20 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v32 = ((2 * v29) | 0x244EE6D2201C06E6) - v29;
  v33 = (v15 - ((v30 + v31) | v15) + ((v30 + v31) | 0x2B8B27D33979D247)) ^ 0xDF9D769AA627EE20;
  v34 = v33 ^ __ROR8__(v30, 61);
  v35 = (v32 + 0x6DD88C96EFF1FC8DLL) ^ 0xB052A7AE283B3AE8;
  v36 = (__ROR8__(v33, 8) + v34) ^ 0x153242EE3CF06A49;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = __ROR8__(v36, 8) + v37;
  v39 = v35 ^ __ROR8__(v28, 61);
  v40 = (v14 - (v38 | v14) + (v38 | 0x976ADA84DCD50F15)) ^ 0xB51F0E43E4E0368ELL;
  v41 = v40 ^ __ROR8__(v37, 61);
  v42 = __ROR8__(v40, 8) + v41;
  v43 = (__ROR8__(v35, 8) + v39) ^ a7;
  v44 = v43 ^ __ROR8__(v39, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ v17;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ 0xA82620A559D2DA78;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0x5F8DEC3EA3980A1BLL;
  v50 = (v42 - ((2 * v42) & 0x4059FD09E0B0D524) - 0x5FD3017B0FA7956ELL) ^ 0x4583E437DEE5564FLL;
  v51 = __ROR8__(v49, 8) + (v49 ^ __ROR8__(v48, 61));
  v52 = v50 ^ __ROR8__(v41, 61);
  v53 = __ROR8__(v50, 8);
  v54 = (a8 - ((v53 + v52) | a8) + ((v53 + v52) | 0x3559AFB281466E4CLL)) ^ 0xF28466444D03D96DLL;
  v55 = v54 ^ __ROR8__(v52, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ 0xA82620A559D2DA78;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ 0x5F8DEC3EA3980A1BLL;
  v59 = __ROR8__(v58, 8);
  v60 = __ROR8__(v57, 61);
  *(v20 + 11) = (((v59 + (v58 ^ v60) - ((2 * (v59 + (v58 ^ v60))) & 0x6F46340440C7ADBCLL) - 0x485CE5FDDF9C2922) ^ 0x7660D2D084A69EF6uLL) >> (8 * ((v20 + 11) & 7))) ^ ((v51 ^ v16) >> (8 * (v22 & 7u))) ^ *v22;
  v61 = v21;
  return (*(STACK[0x57D8] + 8 * ((29790 * v61) ^ v10)))();
}

uint64_t sub_10046FCD4@<X0>(int a1@<W1>, int a2@<W8>)
{
  v2 = STACK[0x57C0];
  v3 = STACK[0x5380];
  if (STACK[0x57C0])
  {
    v3 = STACK[0x5368];
  }

  if (v2)
  {
    v4 = STACK[0x5348];
  }

  else
  {
    v4 = STACK[0x53C0];
  }

  if (v2)
  {
    v5 = STACK[0x5308];
  }

  else
  {
    v5 = STACK[0x5310];
  }

  v6 = (STACK[0x57C0] & 2) == 0;
  if ((v2 & 2) != 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  LODWORD(STACK[0x5530]) = v7;
  v8 = STACK[0x5620];
  if (!v6)
  {
    v8 = STACK[0x5610];
  }

  LODWORD(STACK[0x5610]) = v8;
  v9 = STACK[0x5560];
  if (v6)
  {
    v9 = STACK[0x5540];
  }

  LODWORD(STACK[0x5620]) = v9;
  v10 = STACK[0x55A0];
  if (v6)
  {
    v10 = STACK[0x5570];
  }

  LODWORD(STACK[0x55A0]) = v10;
  if (v6)
  {
    v11 = v5;
  }

  else
  {
    v11 = STACK[0x53D0];
  }

  LODWORD(STACK[0x5258]) = v11;
  v12 = (STACK[0x5780] & 2) == 0;
  v13 = STACK[0x5520];
  if ((STACK[0x5780] & 2) == 0)
  {
    v13 = STACK[0x5510];
  }

  LODWORD(STACK[0x5218]) = v13;
  v14 = STACK[0x5400];
  if (v12)
  {
    v14 = STACK[0x5248];
  }

  LODWORD(STACK[0x5230]) = v14;
  v15 = STACK[0x53F8];
  if (!v12)
  {
    v15 = STACK[0x5500];
  }

  LODWORD(STACK[0x5248]) = v15;
  v16 = STACK[0x53F0];
  if (v12)
  {
    v16 = a1;
  }

  LODWORD(STACK[0x5400]) = v16;
  v17 = STACK[0x5410];
  if (v12)
  {
    v17 = STACK[0x5408];
  }

  LODWORD(STACK[0x53F8]) = v17;
  return (*(STACK[0x57D8] + 8 * a2))();
}

uint64_t sub_1004701DC()
{
  v0 = STACK[0x51B8] - 22238;
  v1 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (((568 * (v0 ^ 0x170)) ^ 0x14C) + v0)))();
}

uint64_t sub_1004702CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v7);
  return (*(v8 + 8 * ((13894 * ((v7 + 1241014863 + v7 + 1569403261) < 0x2B8D6FE5)) ^ (v7 + 3342))))(STACK[0x3EE8], a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1004703CC(int a1)
{
  v4 = STACK[0x54A0];
  LODWORD(STACK[0x5640]) = a1 ^ 0x711AE5AF;
  LODWORD(STACK[0x5620]) = v3 ^ 0xB7645B2A;
  LODWORD(STACK[0x5610]) = v2 ^ (v4 - 207070334) & 0xC57B3B5 ^ 0xA20428CD;
  LODWORD(STACK[0x5660]) = v1 ^ 0xF62930FC;
  return (*(STACK[0x57D8] + 8 * v4))();
}

uint64_t sub_100470474(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = v10 - 1;
  *(v7 + v11) = *(a6 + (v11 & 0xF)) ^ *(v8 + v11) ^ *((v11 & 0xF) + a7 + 4) ^ ((v11 & 0xF) * a4) ^ *(a5 + (v11 & 0xF));
  return (*(STACK[0x57D8] + 8 * ((459 * (v11 == 0)) ^ v9)))();
}

uint64_t sub_1004704C8()
{
  v1 = STACK[0x57D8];
  STACK[0x7CA8] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 - 20748 + ((v0 + 19945) | 0x40))))();
}

uint64_t sub_100470508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 == a1;
  v5 = a1 + 1;
  v6 = !v4;
  return (*(STACK[0x57D8] + 8 * ((v6 * v3) ^ v2)))(v5);
}

uint64_t sub_100470654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v10 - 144) = (v8 - 24970) | 0x619;
  v11 = *(v9 + 8 * (v8 + 2639));
  *(v10 - 128) = a8;
  v12 = v11(1032);
  *(v10 - 160) = v12 + 0x539289D27294892ELL;
  return (*(v9 + 8 * (((v12 != 0) * (((v8 - 28780) | 0x4424) ^ 0x4573)) ^ v8)))();
}

uint64_t sub_100470750@<X0>(int a1@<W1>, int a2@<W8>)
{
  v7 = a2 - 1736;
  v8 = (v7 - 1561644114) & 0x5D14FFDD;
  v9 = *(v4 + 4008);
  v10 = (*(v9 + 3903 * v2 - 3903 * v2 / 0x1708u * a1) - 28) * (v8 ^ 0x50FA) + 17079528;
  v11 = v10 - v10 / 0x1708 * a1;
  v12 = (-96 - v3) ^ v3 ^ ((v3 ^ 0x1B) + 69) ^ ((v3 ^ 2) + 94) ^ ((v3 ^ 0x4B ^ ((v7 - 82 + v6) | 4)) + 26);
  *(v9 + v11) = (((v12 ^ 0xE4) - 122) ^ ((v12 ^ 0x3B) + 91) ^ ((v12 ^ 0x7F) + 31)) + 90;
  v13 = *(STACK[0x57D8] + 8 * (v7 ^ (97 * (v3 + 1 != v5 + 256))));
  *(v4 + 2768) = v8;
  return v13();
}

uint64_t sub_1004708C4@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0xE094]) = v2;
  STACK[0xE098] = v4;
  STACK[0xE0A0] = v3;
  STACK[0xE088] = a1;
  LODWORD(STACK[0xB9CC]) = 0;
  return (*(STACK[0x57D8] + 8 * (((a1 == 0) * ((v1 ^ 0x278) + (v1 ^ 0xFC))) ^ v1)))();
}

uint64_t sub_10047092C()
{
  v2 = *(v0 + 295);
  v3 = *(v0 + 2152);
  v4 = v3 & 0xFFFFFFF8;
  v5 = 2 * (v3 & 0xFFFFFFF8);
  v6 = *STACK[0x51F0];
  v7 = *STACK[0x51E8] & 0xFFFFFFF8;
  v8 = *(v6 + (v7 & ((v3 & 0xFFFFFFF8 ^ 0x942DB30A) - 22903390 + (v5 & 0x285B6610))));
  v9 = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  v10 = (v8 + v9) ^ 0xC2AF3EAA3FF1B8E4;
  v11 = v10 ^ __ROR8__(v8, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0x65F254DD188DB4FCLL;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0x6FF046966119128DLL;
  v15 = __ROR8__(v14, 8);
  v16 = v14 ^ __ROR8__(v13, 61);
  v17 = (0x7A00E7574A6DBC0CLL - ((v15 + v16) | 0x7A00E7574A6DBC0CLL) + ((v15 + v16) | 0x85FF18A8B59243F3)) ^ 0x244D856D62E450D8;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (((2 * (v19 + v18)) & 0x3BD1CA8613EF883CLL) - (v19 + v18) - 0x1DE8E54309F7C41FLL) ^ 0xD133AFD03ED730DLL;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0xD8C7B31FCA19D9DELL;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0x5455012E8AB1C38FLL;
  LOBYTE(v3) = 8 * (v3 & 7);
  v25 = (((__ROR8__(v24, 8) + (v24 ^ __ROR8__(v23, 61))) ^ 0x6F4F60BC0E025EE0uLL) >> v3) ^ v2;
  v26 = STACK[0x8070];
  LOBYTE(v15) = *(STACK[0x8070] + 12699);
  *(v0 + 1861) = v25;
  v27 = *(v6 + (v7 & ((v4 ^ 0x171B9D9D) + 2075433743 + (v5 & 0x2E373B30))));
  v28 = (v27 + v9) ^ 0xC2AF3EAA3FF1B8E4;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x65F254DD188DB4FCLL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (v32 + v31 - ((2 * (v32 + v31)) & 0xE71420E9555A0DELL) - 0x78C75EF8B5552F91) ^ 0xE8C8E7912BB3C2E2;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = __ROR8__((((2 * (v35 + v34)) | 0x96E15EB30644CC5CLL) - (v35 + v34) - 0x4B70AF598322662ELL) ^ 0xEAC2329C54547505, 8);
  v37 = (((2 * (v35 + v34)) | 0x96E15EB30644CC5CLL) - (v35 + v34) - 0x4B70AF598322662ELL) ^ 0xEAC2329C54547505 ^ __ROR8__(v34, 61);
  v38 = (v36 + v37) ^ v1;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0xD8C7B31FCA19D9DELL;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v40, 8);
  v43 = (0x125C67E9592C25C5 - ((v42 + v41) | 0x125C67E9592C25C5) + ((v42 + v41) | 0xEDA39816A6D3DA3ALL)) ^ 0xB9F699382C6219B5;
  *(v26 + 12699) = v15 ^ v2 ^ (((__ROR8__(v43, 8) + (v43 ^ __ROR8__(v41, 61))) ^ 0x6F4F60BC0E025EE0) >> v3);
  v44 = (STACK[0x8070] + 12106);
  *(v0 + 2160) = v44;
  *(v0 + 2175) = *v44;
  v45 = *(v0 + 3920) + 17;
  *(v0 + 296) = v45;
  v46 = STACK[0x57D8];
  v47 = *(STACK[0x57D8] + 8 * (LODWORD(STACK[0x4D6C]) ^ 0x23D5));
  *(v0 + 2176) = v45;
  *(v0 + 280) = v47;
  return (*(v46 + 8 * (STACK[0x51B8] + 8890)))();
}

uint64_t sub_100470CCC()
{
  v0 = STACK[0x3540];
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * ((LODWORD(STACK[0x3540]) - 3272) ^ 0x241B)))();
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_100470D4C()
{
  v4 = *(v0 + 896);
  v5 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v4 & 0x6307FA30 | 0x9CF805CB) - 1831847764 + (v4 & 0x9CF805C8 | 0x6307FA35))) & 0xFFFFFFFFFFFFFFF8));
  v6 = (__ROR8__(v4 & 0xFFFFFFFFFFFFFFF8, 8) + v5) ^ 0xC2AF3EAA3FF1B8E4;
  v7 = v6 ^ __ROR8__(v5, 61);
  v8 = (__ROR8__(v6, 8) + v7) ^ 0x65F254DD188DB4FCLL;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0x6FF046966119128DLL;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0xA1B29DC5D776132BLL;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ v3;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (v16 + v15 - ((2 * (v16 + v15)) & 0x8A759DF196C873A6) - 0x3AC53107349BC62DLL) ^ 0x1DFD7DE7017DE00DLL ^ __ROR8__(v15, 61);
  v18 = (__ROR8__((v16 + v15 - ((2 * (v16 + v15)) & 0x8A759DF196C873A6) - 0x3AC53107349BC62DLL) ^ 0x1DFD7DE7017DE00DLL, 8) + v17) ^ 0x5455012E8AB1C38FLL;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  LODWORD(v19) = (((((2 * (v20 + v19)) | 0x6AFBC759C4257AEELL) - (v20 + v19) + 0x4A821C531DED4289) ^ 0xDA328310EC10E397) >> (8 * (v4 & 7u))) ^ *(v0 + 295);
  v21 = 5621 * v19 + 32028458 - 6152 * (((89362129 * (5621 * v19 + 32028458)) >> 32) >> 7);
  v22 = STACK[0xDCB8];
  *(v22 + 3353) = *(v22 + v21);
  v23 = STACK[0xDC98] + 16;
  v24 = __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = -2 - (((0x70824D863E123F42 - v24) | 0x8B33806D24684D78) + ((v24 - 0x70824D863E123F43) | 0x74CC7F92DB97B287));
  v26 = v25 ^ 0x58B46B7ADD79B20ELL;
  v25 ^= 0x2359F8B4D217B7E2uLL;
  v27 = (__ROR8__(v26, 8) + v25) ^ 0x3A7C64F71FBFC65BLL;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0xFBC18F8B9568C440;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (v31 + v30 - ((2 * (v31 + v30)) & 0x624F0619F0439FBCLL) + 0x3127830CF821CFDELL) ^ 0x7BC24D639BB6B6EDLL;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (((2 * (v34 + v33)) & 0x551707FF5662DE4CLL) - (v34 + v33) - 0x2A8B83FFAB316F27) ^ 0xFD20B75ADF1513CELL;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xF7721CC6F3AEFBDCLL;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (0x21EEDE655974FD4FLL - ((v39 + v38) | 0x21EEDE655974FD4FLL) + ((v39 + v38) | 0xDE11219AA68B02B0)) ^ 0x38A636A03DA0B2EDLL;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = __ROR8__(v40, 8);
  v43 = (((v42 + v41 - ((2 * (v42 + v41)) & 0x95394BB34ABEB9E6) - 0x35635A265AA0A30DLL) ^ 0x5E302326D430D2D1) >> (8 * (v23 & 7u))) ^ *v23;
  *(v22 + 4324) = *(v22 + 5621 * v43 + 32028458 - 6152 * (((89362129 * (5621 * v43 + 32028458)) >> 32) >> 7));
  v44 = STACK[0xDCA0] + 39;
  *(v0 + 296) = v44;
  v45 = STACK[0x57D8];
  v46 = *(STACK[0x57D8] + 8 * (v1 + 9997));
  *(v0 + 904) = v44;
  *(v0 + 280) = v46;
  return (*(v45 + 8 * (v2 + 20570)))();
}

uint64_t sub_100471238(uint64_t a1, unsigned int a2, int a3)
{
  v7 = STACK[0x51B8] - 21066;
  v8 = STACK[0x51B8] - 15377 + 1978732275 * (v3 - (*(*v4 + (*v6 & a2)) & 0x7FFFFFFF ^ a3)) + 1458148830;
  v9 = (v8 ^ 0x2045499C) & (2 * (v8 & 0xA9164DDD)) ^ v8 & 0xA9164DDD;
  v10 = ((2 * (v8 ^ 0x204DD3A6)) ^ 0x12B73CF6) & (v8 ^ 0x204DD3A6) ^ (2 * (v8 ^ 0x204DD3A6)) & 0x895B9E7A;
  v11 = v10 ^ 0x89488209;
  v12 = (v10 ^ 0x1139C71) & (4 * v9) ^ v9;
  v13 = ((4 * v11) ^ 0x256E79EC) & v11 ^ (4 * v11) & 0x895B9E78;
  v14 = (v13 ^ 0x14A1863) & (16 * v12) ^ v12;
  v15 = ((16 * (v13 ^ 0x88118613)) ^ 0x95B9E7B0) & (v13 ^ 0x88118613) ^ (16 * (v13 ^ 0x88118613)) & 0x895B9E70;
  v16 = v14 ^ 0x895B9E7B ^ (v15 ^ 0x8119864B) & (v14 << 8);
  *v5 = v8 ^ (2 * ((v16 << 16) & 0x95B0000 ^ v16 ^ ((v16 << 16) ^ 0x1E7B0000) & (((v15 ^ 0x842184B) << 8) & 0x95B0000 ^ 0x410000 ^ (((v15 ^ 0x842184B) << 8) ^ 0x5B9E0000) & (v15 ^ 0x842184B)))) ^ 0x790BF1BF;
  return (*(STACK[0x57D8] + 8 * (v7 ^ 0x11FB)))();
}

uint64_t sub_100471404()
{
  v1 = *(STACK[0x9668] + 24);
  STACK[0x5DE0] = v1;
  return (*(STACK[0x57D8] + 8 * (((6 * ((v0 - 1122667210) & 0x42EA55FA ^ 0x4BE1) - 22479) * (v1 != 0)) ^ v0)))();
}

uint64_t sub_1004714B4()
{
  STACK[0x5560] = v1 - 0x79296B4A625EDCB4;
  STACK[0x5540] = v2 - 0x30BDFED8F32E674DLL;
  v3 = STACK[0x57B0];
  STACK[0xFE80] = STACK[0x57B0];
  v4 = *v3;
  v5 = STACK[0xFE70];
  STACK[0xFE88] = STACK[0xFE70] + 40968;
  *(v5 + 40968) = v4 - (((v0 ^ 0x24) + 50) & (2 * v4)) + 68;
  LOBYTE(v5) = v3[1];
  STACK[0xFE90] = (v3 + 1);
  v6 = STACK[0xFE70];
  STACK[0xFE98] = STACK[0xFE70] + 40969;
  *(v6 + 40969) = v5 - ((2 * v5) & 0x88) + 68;
  LOBYTE(v5) = v3[2];
  STACK[0xFEA0] = (v3 + 2);
  v7 = (STACK[0xFE70] + 40970);
  *v7 = v5 - ((2 * v5) & 0x88) + 68;
  LOBYTE(v5) = v3[3];
  STACK[0xFEA8] = v7;
  STACK[0xFEB0] = (v3 + 3);
  v8 = STACK[0xFE70];
  STACK[0xFEB8] = STACK[0xFE70] + 40971;
  *(v8 + 40971) = v5 - ((2 * v5) & 0x88) + 68;
  LOBYTE(v5) = v3[4];
  STACK[0xFEC0] = (v3 + 4);
  v9 = STACK[0xFE70];
  STACK[0xFEC8] = STACK[0xFE70] + 40972;
  *(v9 + 40972) = v5 - ((2 * v5) & 0x88) + 68;
  LOBYTE(v5) = v3[5];
  STACK[0xFED0] = (v3 + 5);
  v10 = (STACK[0xFE70] + 40973);
  *v10 = v5 - ((2 * v5) & 0x88) + 68;
  STACK[0xFED8] = v10;
  LOBYTE(v5) = v3[6];
  STACK[0xFEE0] = (v3 + 6);
  v11 = STACK[0xFE70];
  STACK[0xFEE8] = STACK[0xFE70] + 40974;
  *(v11 + 40974) = v5 - ((2 * v5) & 0x88) + 68;
  LOBYTE(v5) = v3[7];
  STACK[0xFEF0] = (v3 + 7);
  v12 = STACK[0xFE70];
  STACK[0xFEF8] = STACK[0xFE70] + 40975;
  *(v12 + 40975) = v5 - ((2 * v5) & 0x88) + 68;
  LOBYTE(v5) = v3[8];
  STACK[0xFF00] = (v3 + 8);
  v13 = (STACK[0xFE70] + 40976);
  *v13 = v5 - ((2 * v5) & 0x88) + 68;
  LOBYTE(v5) = v3[9];
  STACK[0xFF08] = v13;
  STACK[0xFF10] = (v3 + 9);
  v14 = STACK[0xFE70];
  STACK[0xFF18] = STACK[0xFE70] + 40977;
  *(v14 + 40977) = v5 - ((2 * v5) & 0x88) + 68;
  LOBYTE(v5) = v3[10];
  STACK[0xFF20] = (v3 + 10);
  v15 = STACK[0xFE70];
  STACK[0xFF28] = STACK[0xFE70] + 40978;
  *(v15 + 40978) = v5 - ((2 * v5) & 0x88) + 68;
  LOBYTE(v5) = v3[11];
  STACK[0xFF30] = (v3 + 11);
  v16 = (STACK[0xFE70] + 40979);
  *v16 = v5 - ((2 * v5) & 0x88) + 68;
  STACK[0xFF38] = v16;
  LOBYTE(v5) = v3[12];
  STACK[0xFF40] = (v3 + 12);
  v17 = STACK[0xFE70];
  STACK[0xFF48] = STACK[0xFE70] + 40980;
  *(v17 + 40980) = v5 - ((2 * v5) & 0x88) + 68;
  LOBYTE(v5) = v3[13];
  STACK[0xFF50] = (v3 + 13);
  v18 = STACK[0xFE70];
  STACK[0xFF58] = STACK[0xFE70] + 40981;
  *(v18 + 40981) = v5 - ((2 * v5) & 0x88) + 68;
  LOBYTE(v5) = v3[14];
  STACK[0xFF60] = (v3 + 14);
  v19 = STACK[0xFE70];
  STACK[0xFF68] = STACK[0xFE70] + 40982;
  *(v19 + 40982) = v5 - ((2 * v5) & 0x88) + 68;
  v20 = v3[15];
  STACK[0xFF70] = (v3 + 15);
  v21 = STACK[0xFE70];
  STACK[0xFF78] = STACK[0xFE70] + 40983;
  *(v21 + 40983) = v20 - ((2 * v20) & 0x88) + 68;
  v22 = STACK[0x7760] + 40960;
  v23 = (STACK[0x7760] + 40984);
  STACK[0xA8E0] = v23;
  LODWORD(STACK[0x94C4]) = LODWORD(STACK[0x7ADC]) + 32;
  *v23 = -1175200548;
  *(v22 + 28) = 0x60F77F86FBDC740BLL;
  *(v22 + 36) = 1368420886;
  *(v22 + 44) = 0;
  v24 = *(STACK[0x57D8] + 8 * (v0 + 11978));
  LODWORD(STACK[0x5630]) = 1225270416;
  LODWORD(STACK[0x5620]) = -1753108048;
  LODWORD(STACK[0x5610]) = 21629249;
  LODWORD(STACK[0x5600]) = 2147467247;
  LODWORD(STACK[0x55F0]) = 2144976887;
  LODWORD(STACK[0x55E0]) = 1527407411;
  LODWORD(STACK[0x55D0]) = 553912193;
  v25 = LODWORD(STACK[0x75F4]);
  LODWORD(STACK[0x55C0]) = -85984387;
  LODWORD(STACK[0x55B0]) = -522156414;
  LODWORD(STACK[0x55A0]) = 1233426721;
  LODWORD(STACK[0x5590]) = 1451596016;
  return v24(v25, 805310994, 1650382342, 3825205248, 4249261269, 26928, 2262335561, 4107801065);
}

uint64_t sub_1004719D4()
{
  v1 = STACK[0x36CC];
  STACK[0x9870] = STACK[0x61B0];
  STACK[0xBE88] = STACK[0xA9C0];
  LODWORD(STACK[0xCE94]) = STACK[0xCD0C];
  v2 = STACK[0x7ED8];
  STACK[0xBC40] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v2 + 16;
  LODWORD(STACK[0x710C]) = v0;
  STACK[0xAB00] = 0;
  STACK[0xB3D8] = 0;
  LODWORD(STACK[0x9944]) = 103679699;
  LODWORD(STACK[0xBC58]) = 1251397511;
  return (*(STACK[0x57D8] + 8 * ((10193 * (((((3 - v0) ^ v0) ^ (((((v1 + 123) & 0x7F ^ 0xFD) + v1 + 54) ^ v0) + 1)) & 0xF) == 3)) ^ v1)))();
}

uint64_t sub_100471B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0x51B8] - 20902;
  v8 = STACK[0xBD78];
  v9 = STACK[0x57D8];
  STACK[0x7D00] = *(STACK[0x57D8] + 8 * v7);
  return (*(v9 + 8 * ((5624 * ((v7 + 936014578) < 0x6CEE0B80)) ^ (v7 | 0x809))))(a1, a2, a3, a4, a5, a6, a7, v8);
}

uint64_t sub_100471C44(int a1)
{
  v5 = 6157 * (((2 * (a1 - 914018266)) & 0x463E) + ((a1 - 914018266) ^ 0x231F));
  *(v4 + 4 * (v5 - (((v5 * v3) >> 32) >> 12) * v2)) = *(v4 + 4 * (6157 * a1 - 1193836536 - ((((6157 * a1 - 1193836536) * v3) >> 32) >> 12) * v2));
  return (*(STACK[0x57D8] + 8 * ((2 * (a1 != 914018521)) | (16 * (a1 != 914018521)) | v1)))();
}

uint64_t sub_100471CD0@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v12 = *(STACK[0x5358] + (LODWORD(STACK[0x5268]) & ((STACK[0x5338] ^ 0xFCB53737) + 2105999843 + (STACK[0x5510] & 0xF96A6E60))));
  v13 = (((v12 + STACK[0x5360]) | STACK[0x53C0] ^ 0xC0B321B84A0517CCLL) - ((v12 + STACK[0x5360]) | 0x3F4CDE47B5FAE817) + 0x3F4CDE47B5FAE817) ^ 0x783B206CABC274BBLL;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (((v15 + v14) | 0x426590EE13189C89) - ((v15 + v14) | 0xBD9A6F11ECE76376) - 0x426590EE13189C8ALL) ^ 0x7AAD2184F41DF4FELL;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0xE580B17D8CC5E551;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0xE1A1FD5BD155F97ALL;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (((2 * (v22 + v21)) & 0xDF710AC1AB28913ALL) - (v22 + v21) - 0x6FB88560D594489ELL) ^ 0x4A27319329C908FBLL;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (v25 + v24 - ((2 * (v25 + v24)) & 0x7B76DE72E3B16E46) - 0x424490C68E2748DDLL) ^ 0x478E8DF4BAE686E4;
  v27 = __ROR8__(v26, 8);
  v28 = __ROR8__(v24, 61);
  v29 = (((v27 + (v26 ^ v28)) | 0xBCD62E2C52FA8D66) - ((v27 + (v26 ^ v28)) | 0x4329D1D3AD057299) + 0x4329D1D3AD057299) ^ 0x6E2622CA721F5EC8;
  v30 = v29 ^ __ROR8__(v26 ^ v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = ((v2 & 0x4B3073AD324F9050) - v8 + 0x5A67C62966D837D7) ^ 0xE2EFC7FD871F5484;
  v33 = __ROR8__(v32, 8);
  v34 = v32 ^ v9;
  v35 = (((v33 + v34) | 0xC90351B51A6B83D5) - ((v33 + v34) | 0x36FCAE4AE5947C2ALL) + 0x36FCAE4AE5947C2ALL) ^ 0xF1CBE0DFFD6EEBA2;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (((2 * (v37 + v36)) | 0xCB768353B4D92720) - (v37 + v36) + 0x1A44BE5625936C70) ^ 0x3BF0D456A976C1;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0xE1A1FD5BD155F97ALL;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ 0xDA604B0C03A2BF99;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = __ROR8__(v42, 8);
  v45 = (((v44 + v43) | 0xDF61F46CDAF22DD0) - ((v44 + v43) | 0x209E0B93250DD22FLL) + 0x209E0B93250DD22FLL) ^ 0x255416A111CC1C17;
  v46 = v45 ^ __ROR8__(v43, 61);
  v47 = __ROR8__(v45, 8);
  v48 = __ROR8__((((2 * (v47 + v46)) & 0x80B833A293284CD2) - (v47 + v46) - 0x405C19D14994266ALL) ^ 0x6D53EAC8968E0A38, 8);
  v49 = (((2 * (v47 + v46)) & 0x80B833A293284CD2) - (v47 + v46) - 0x405C19D14994266ALL) ^ 0x6D53EAC8968E0A38 ^ __ROR8__(v46, 61);
  v50 = *(STACK[0x5620] + (v5 & ((a2 ^ 0x84669401) - 22885092 + (LODWORD(STACK[0x53B0]) | 0xF732D7FD))));
  v51 = __ROR8__((v50 + STACK[0x56F0]) ^ 0xB88801D4E1C76353, 8);
  v52 = (v50 + STACK[0x56F0]) ^ 0xB88801D4E1C76353 ^ __ROR8__(v50, 61);
  v53 = (((2 * (v51 + v52)) | 0xFB05E81442F19BB6) - (v51 + v52) + 0x27D0BF5DE873225) ^ 0xC54A4560C67DA5ACLL;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ 0xE580B17D8CC5E551;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ 0xE1A1FD5BD155F97ALL;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ 0xDA604B0C03A2BF99;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = __ROR8__(v59, 8);
  v62 = (v61 + v60 - ((2 * (v61 + v60)) & 0x51824BC8B2A1E56CLL) - 0x573EDA1BA6AF0D4ALL) ^ 0x52F4C729926EC371;
  v63 = v62 ^ __ROR8__(v60, 61);
  v64 = __ROR8__(v62, 8);
  v65 = (((v64 + v63) | 0xBDB07E2323353783) - ((v64 + v63) | 0x424F81DCDCCAC87CLL) + 0x424F81DCDCCAC87CLL) ^ 0x6F4072C503D0E42DLL;
  v66 = *(STACK[0x54C0] + (STACK[0x53F8] & ((STACK[0x54B0] ^ 0x11FBADB3) + 1749060455 + (v11 & 0x23F75B60)) & (LODWORD(STACK[0x54A0]) ^ 0xFFFFEDAF)));
  v67 = (((2 * (v66 + STACK[0x5600])) & 0xD807C8147FE983A6) - (v66 + STACK[0x5600]) + 0x13FC1BF5C00B3E2CLL) ^ 0xAB741A2121CC5D7FLL;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = __ROR8__(v67, 8);
  v70 = (((2 * (v69 + v68)) & 0x37DA2497517FE764) - (v69 + v68) - 0x1BED124BA8BFF3B3) ^ 0xDCDA5CDEB045643ALL;
  v71 = v70 ^ __ROR8__(v68, 61);
  v72 = __ROR8__(v70, 8);
  v73 = (((2 * (v72 + v71)) & 0x3CC849D2F432C66CLL) - (v72 + v71) - 0x1E6424E97A196337) ^ 0x41B6A6B09237998;
  v74 = v73 ^ __ROR8__(v71, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ 0xE1A1FD5BD155F97ALL;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = (__ROR8__(v75, 8) + v76) ^ 0xDA604B0C03A2BF99;
  v78 = v77 ^ __ROR8__(v76, 61);
  v79 = (__ROR8__(v77, 8) + v78) ^ 0xFA35E2CDCB3E31C7;
  v80 = v79 ^ __ROR8__(v78, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ 0xD2F00CE620E5D3AELL;
  v82 = v31 + v30;
  v83 = v48 + v49;
  v84 = __ROR8__(v65, 8) + (v65 ^ __ROR8__(v63, 61));
  v85 = __ROR8__(v81, 8) + (v81 ^ __ROR8__(v80, 61));
  v86 = STACK[0x5260];
  LODWORD(STACK[0x5128]) = 2 * STACK[0x5260];
  v87 = *(STACK[0x5298] + (LODWORD(STACK[0x5300]) & ((v86 ^ 0xC327B61) + 1846132153 + ((2 * v86) & 0x1864F6C0))));
  v88 = (v87 + STACK[0x52A8]) ^ (v10 - 0x4777FE2B1E390199);
  v89 = v88 ^ __ROR8__(v87, 61);
  v90 = (__ROR8__(v88, 8) + v89) ^ 0x38C8B16AE7056877;
  v91 = v90 ^ __ROR8__(v89, 61);
  v92 = (__ROR8__(v90, 8) + v91) ^ 0xE580B17D8CC5E551;
  v93 = v92 ^ __ROR8__(v91, 61);
  v94 = (__ROR8__(v92, 8) + v93) ^ 0xE1A1FD5BD155F97ALL;
  v95 = __ROR8__(v94, 8);
  v96 = v94 ^ __ROR8__(v93, 61);
  v97 = (v95 + v96 - ((2 * (v95 + v96)) & 0x1F2BC07C9A32EBE2) + 0xF95E03E4D1975F1) ^ 0xD5F5AB324EBBCA68;
  v98 = v97 ^ __ROR8__(v96, 61);
  v99 = (__ROR8__(v97, 8) + v98) ^ 0xFA35E2CDCB3E31C7;
  v100 = v99 ^ __ROR8__(v98, 61);
  v101 = (__ROR8__(v99, 8) + v100) ^ 0xD2F00CE620E5D3AELL;
  v102 = __ROR8__(v101, 8) + (v101 ^ __ROR8__(v100, 61));
  v103 = *(STACK[0x5298] + ((((-154181547 * ((((v3 ^ 0xEF2FE1B) * STACK[0x52B0]) ^ 0x578F3DA) + ((233126394 * STACK[0x52B0]) & 0xAF1E7B0))) & 0xFFFFFFF8) - 1537506888) & STACK[0x5220]));
  v104 = __ROR8__((v103 + STACK[0x52C0]) ^ 0xB88801D4E1C76353, 8);
  v105 = (v103 + STACK[0x52C0]) ^ 0xB88801D4E1C76353 ^ __ROR8__(v103, 61);
  v106 = (((v104 + v105) & 0x47FE23406F2F066FLL ^ 0x4440000212A0463) + ((v104 + v105) ^ 0xCBBBBB6EDE95A28CLL) - (((v104 + v105) ^ 0xCBBBBB6EDE95A28CLL) & 0x47FE23406F2F066FLL)) ^ 0xB48D294456BFCC94;
  v107 = v106 ^ __ROR8__(v105, 61);
  v108 = __ROR8__(v106, 8);
  v109 = (((2 * (v108 + v107)) | 0x86FFF80540DFD6A0) - (v108 + v107) + 0x3C8003FD5F9014B0) ^ 0x26FF4D7F2CAA0E01;
  v110 = v109 ^ __ROR8__(v107, 61);
  v111 = (__ROR8__(v109, 8) + v110) ^ 0xE1A1FD5BD155F97ALL;
  v112 = v111 ^ __ROR8__(v110, 61);
  v113 = (__ROR8__(v111, 8) + v112) ^ 0xDA604B0C03A2BF99;
  v114 = v113 ^ __ROR8__(v112, 61);
  v115 = (__ROR8__(v113, 8) + v114) ^ 0xFA35E2CDCB3E31C7;
  v116 = v115 ^ __ROR8__(v114, 61);
  v117 = (__ROR8__(v115, 8) + v116) ^ 0xD2F00CE620E5D3AELL;
  v118 = __ROR8__(v117, 8) + (v117 ^ __ROR8__(v116, 61));
  v119 = a1 ^ 0x38C8B16AE7056877 ^ __ROR8__(v7, 61);
  v120 = (__ROR8__(a1 ^ 0x38C8B16AE7056877, 8) + v119) ^ 0xE580B17D8CC5E551;
  v121 = v120 ^ __ROR8__(v119, 61);
  v122 = (__ROR8__(v120, 8) + v121) ^ 0xE1A1FD5BD155F97ALL;
  v123 = __ROR8__(v122, 8);
  v124 = v122 ^ __ROR8__(v121, 61);
  v125 = (((v123 + v124) | 0x1B9D0611DA6965A4) - ((v123 + v124) | 0xE462F9EE25969A5BLL) - 0x1B9D0611DA6965A5) ^ 0xC1FD4D1DD9CBDA3DLL;
  v126 = __ROR8__(v125, 8);
  v127 = v125 ^ __ROR8__(v124, 61);
  v128 = (v126 + v127 - ((2 * (v126 + v127)) & 0x916DD76B629F04B6) - 0x3749144A4EB093A9 + 2 * (((v4 ^ 0x9A4D6410) - 396698230) & 0x17A4B43F ^ 0xB2C)) ^ 0x328309787A71B39CLL;
  v129 = v128 ^ __ROR8__(v127, 61);
  v130 = (__ROR8__(v128, 8) + v129) ^ 0xD2F00CE620E5D3AELL;
  v131 = STACK[0x4FC0] + LODWORD(STACK[0x52E8]);
  v132 = *(v6 + (((v131 & 0xFFFFFFF8 ^ 0xD6CDC738) + 1359609939 + ((2 * (v131 & 0xFFFFFFF8)) | 0x5264718F)) & STACK[0x5188] & 0xFFFFFFF8));
  v133 = __ROR8__(v131 & 0xFFFFFFFFFFFFFFF8, 8);
  v134 = (v132 + v133) ^ 0xB88801D4E1C76353;
  v135 = v134 ^ __ROR8__(v132, 61);
  v136 = __ROR8__(v134, 8);
  v137 = (((2 * (v136 + v135)) & 0x72F0CABAE65821B8) - (v136 + v135) - 0x3978655D732C10DDLL) ^ 0xFE4F2BC86BD68754 ^ __ROR8__(v135, 61);
  v138 = (__ROR8__((((2 * (v136 + v135)) & 0x72F0CABAE65821B8) - (v136 + v135) - 0x3978655D732C10DDLL) ^ 0xFE4F2BC86BD68754, 8) + v137) ^ 0xE580B17D8CC5E551;
  v139 = v138 ^ __ROR8__(v137, 61);
  v140 = __ROR8__(v138, 8);
  v141 = (((2 * (v140 + v139)) & 0x224E3AAA14528962) - (v140 + v139) + 0x6ED8E2AAF5D6BB4ELL) ^ 0x8F791FF124834234;
  v142 = v141 ^ __ROR8__(v139, 61);
  v143 = __ROR8__(v141, 8);
  v144 = (((2 * (v143 + v142)) | 0x19F16A184E6B902ALL) - (v143 + v142) - 0xCF8B50C2735C815) ^ 0xD698FE002497778CLL;
  v145 = v144 ^ __ROR8__(v142, 61);
  v146 = __ROR8__(v144, 8);
  v147 = ((v146 + v145) | 0xC36AC9B33C6AFF6ALL) - ((v146 + v145) | 0x3C95364CC3950095);
  LODWORD(STACK[0x5368]) = LODWORD(STACK[0x57C0]) ^ ((v82 ^ 0xF4730B31AE70757BLL) >> STACK[0x57B0]);
  LODWORD(STACK[0x53A8]) = LODWORD(STACK[0x5790]) ^ ((v83 ^ 0xF4730B31AE70757BLL) >> STACK[0x5780]);
  LODWORD(STACK[0x53A0]) = LODWORD(STACK[0x5670]) ^ ((v84 ^ 0xF4730B31AE70757BLL) >> STACK[0x5378]);
  LODWORD(STACK[0x5348]) = LODWORD(STACK[0x5740]) ^ ((v85 ^ 0xF4730B31AE70757BLL) >> STACK[0x5700]);
  LODWORD(STACK[0x54A0]) = LODWORD(STACK[0x52D0]) ^ ((v102 ^ 0xF4730B31AE70757BLL) >> STACK[0x52C8]);
  LODWORD(STACK[0x5398]) = LODWORD(STACK[0x5328]) ^ ((v118 ^ 0xF4730B31AE70757BLL) >> STACK[0x52F0]);
  LODWORD(STACK[0x5510]) = LODWORD(STACK[0x5290]) ^ (((__ROR8__(v130, 8) + (v130 ^ __ROR8__(v129, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5288]);
  v148 = (v147 + 0x3C95364CC3950095) ^ 0x395F2B7EF754CEADLL ^ __ROR8__(v145, 61);
  v149 = (__ROR8__((v147 + 0x3C95364CC3950095) ^ 0x395F2B7EF754CEADLL, 8) + v148) ^ 0xD2F00CE620E5D3AELL;
  v150 = __ROR8__(v149, 8) + (v149 ^ __ROR8__(v148, 61));
  v151 = *(*STACK[0x51F0] + ((((v131 & 0xFFFFFFF8) + 2050767130) & *STACK[0x51E8]) & 0xFFFFFFFFFFFFFFF8));
  v152 = (((2 * (v151 + v133)) | 0x727DDA137F3564CALL) - (v151 + v133) + 0x46C112F640654D9BLL) ^ 0x1B6ECDD5E5DD136;
  v153 = v152 ^ __ROR8__(v151, 61);
  v154 = __ROR8__(v152, 8);
  v155 = (((v154 + v153) | 0x9476B622EECF1605) - ((v154 + v153) | 0x6B8949DD1130E9FALL) + 0x6B8949DD1130E9FALL) ^ 0xACBE074809CA7E72;
  v156 = v155 ^ __ROR8__(v153, 61);
  v157 = (__ROR8__(v155, 8) + v156) ^ 0xE580B17D8CC5E551;
  v158 = v157 ^ __ROR8__(v156, 61);
  v159 = (__ROR8__(v157, 8) + v158) ^ 0xE1A1FD5BD155F97ALL;
  v160 = v159 ^ __ROR8__(v158, 61);
  v161 = __ROR8__(v159, 8);
  v162 = (((2 * (v161 + v160)) & 0xF92C768BEFA32CC8) - (v161 + v160) + 0x369C4BA082E699BLL) ^ 0xD9098FB60B8CD602;
  v163 = v162 ^ __ROR8__(v160, 61);
  v164 = __ROR8__(v162, 8);
  v165 = __ROR8__((((2 * (v164 + v163)) | 0x85E94D127DA66B2ALL) - (v164 + v163) - 0x42F4A6893ED33595) ^ 0xB8C14444F5ED0452, 8);
  v166 = (((2 * (v164 + v163)) | 0x85E94D127DA66B2ALL) - (v164 + v163) - 0x42F4A6893ED33595) ^ 0xB8C14444F5ED0452 ^ __ROR8__(v163, 61);
  v167 = ((2 * ((v165 + v166) ^ 0xE833E3F45D9E5D4ELL)) & 0xED48FFD9DFE833AALL) - ((v165 + v166) ^ 0xE833E3F45D9E5D4ELL);
  LODWORD(v165) = *v131;
  LODWORD(v82) = STACK[0x5390] & 0xFFFFFF98;
  LOBYTE(v84) = 8 * (v131 & 7);
  HIDWORD(v164) = ((v150 ^ 0xF4730B31AE70757BLL) >> v84) ^ v165;
  LODWORD(v164) = ((((__ROR8__((v167 + 0x95B8013100BE62ALL) ^ 0x33986F016D7068CALL, 8) + ((v167 + 0x95B8013100BE62ALL) ^ 0x33986F016D7068CALL ^ __ROR8__(v166, 61))) ^ 0xF4730B31AE70757BLL) >> v84) ^ v165) << 24;
  LOBYTE(v166) = (((v82 ^ 0xB0) - 4) ^ ((v82 ^ 0xC0) - 116) ^ ((v82 ^ 0xF8) - 76)) + (((v82 ^ 0x89) + 109) ^ ((v82 ^ 0x3D) - 39) ^ ((v82 ^ 0xA3) + 71)) + 90;
  LOBYTE(v167) = v166 & 0x15 ^ 0x17;
  LOBYTE(v82) = v166 ^ 0x6E;
  LODWORD(STACK[0x52E8]) = LODWORD(STACK[0x5008]) + 45;
  LODWORD(v133) = *(STACK[0x57A0] + ((v166 ^ (2 * (v82 & (2 * (v82 & (2 * (v82 & (2 * (v82 & (2 * (v82 & (2 * (((2 * v166) & 0x5E ^ 0x7A) & v82 ^ v167)) ^ v167)) ^ v167)) ^ v167)) ^ v167)) ^ v167)) ^ ((v164 >> 29) + (~(2 * (v164 >> 29)) | 0x37) - 27)) ^ 0xCu) + 51584);
  LODWORD(v150) = (((v133 ^ 0xFFFFFFDE) - 53) ^ ((v133 ^ 0xFFFFFF93) - 120) ^ ((v133 ^ 0xFFFFFFE8) - 3)) + 15;
  LODWORD(v166) = v150 | 0xFFFFFFF4;
  LODWORD(v165) = LODWORD(STACK[0x53D0]) == 45;
  STACK[0x53C0] = v150 ^ (2 * ((v150 ^ 0x22) & (2 * ((v150 ^ 0x22) & (2 * ((v150 ^ 0x22) & (2 * ((v150 ^ 0x22) & (2 * ((v150 ^ 0x22) & (2 * ((v150 ^ 0x22) & (2 * (v150 | 0xF4)) & 0x3E ^ v166)) ^ v166)) ^ v166)) ^ v166)) ^ v166)) ^ v166)) ^ 0x28;
  STACK[0x52F8] = 45;
  LODWORD(STACK[0x5390]) = 234;
  return (*(STACK[0x57D8] + 8 * (v4 ^ 0x9A4D6410 | (19 * v165))))();
}

uint64_t sub_100472E74@<X0>(__int16 a1@<W8>)
{
  v1 = STACK[0x51B8] - 22393;
  LOWORD(STACK[0xD97E]) = a1;
  return (*(STACK[0x57D8] + 8 * (v1 ^ 0x1302)))();
}

uint64_t sub_100472F18()
{
  STACK[0x57C0] = 0;
  v1 = STACK[0xA8D0];
  STACK[0x8FE0] = 0x1883660EE8144416;
  STACK[0x7810] = v1;
  STACK[0x8000] = &STACK[0x8FE0];
  STACK[0x5FC0] = 0;
  LODWORD(STACK[0xA12C]) = 2101966012;
  LODWORD(STACK[0xC0DC]) = -2013569056;
  return (*(STACK[0x57D8] + 8 * v0))();
}

void *sub_100472FB8()
{
  STACK[0x6A10] = v1;
  LODWORD(STACK[0xB2D4]) = STACK[0x7E60];
  STACK[0x7920] = 0;
  LODWORD(STACK[0x7CC4]) = -769884012;
  LODWORD(STACK[0x7234]) = -143113071;
  STACK[0xC610] = 0;
  return (*(STACK[0x57D8] + 8 * (v0 - 9172 + v0 + 10876)))(&STACK[0xC610]);
}

uint64_t sub_100473044(int a1)
{
  LODWORD(STACK[0x7C64]) = v2;
  v3 = v1 != ((a1 - 193094658) & 0xB827AD7 ^ 0x5856);
  return (*(STACK[0x57D8] + 8 * ((8 * v3) | (32 * v3) | a1)))();
}

uint64_t sub_10047318C@<X0>(unint64_t a1@<X8>)
{
  STACK[0x1D4C8] = a1;
  LODWORD(STACK[0x1D4C0]) = (v1 + 1717148634) ^ (1964904101 * ((2 * ((v2 - 240) & 0x46D82AB0) - (v2 - 240) - 1188571827) ^ 0x43053EC9));
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x2413)))(v2 - 240);
  return (*(v3 + 8 * (v1 - 7918)))(v4);
}

uint64_t sub_10047321C@<X0>(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  a1[-1] = a2;
  *a1 = a2;
  return (*(STACK[0x57D8] + 8 * (((v2 == 0) * v4) ^ v3)))();
}

uint64_t sub_100473248()
{
  v1 = *(v0 + 224);
  *(v0 + 228) = v1;
  *(v0 + 232) = v1 + 5602;
  v2 = *(STACK[0x4D10] + 24) + 16 * *(v0 + 3744) + 8;
  v3 = STACK[0x57D8];
  v4 = *(STACK[0x57D8] + 8 * (v1 + 26182));
  *(v0 + 220) = 0;
  *(v0 + 200) = v4;
  *(v0 + 208) = v2;
  return (*(v3 + 8 * (v1 ^ 0x6F8C)))(&STACK[0xEED0]);
}

uint64_t sub_10047333C()
{
  v0 = STACK[0x51B8] ^ 0x6F76;
  v1 = STACK[0x57D8];
  v2 = STACK[0x1ADC];
  STACK[0x9AC0] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1ADC]));
  return (*(v1 + 8 * (v0 ^ v2 ^ 0x20CD)))(15115, 4404, 0x683CBC57EAB92A3ELL, 22622);
}

uint64_t sub_1004733A0()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v1 + 776)))(v0 + (v1 ^ 0x7C05u) + v1 - 8416 + 1269034148 + 295);
  STACK[0x8CB0] = v3;
  return (*(v2 + 8 * ((102 * (v3 == 0)) ^ v1)))();
}

uint64_t sub_100473410@<X0>(uint64_t a1@<X5>, unint64_t a2@<X8>)
{
  v3 = __ROR8__(a2 & 0xFFFFFFFFFFFFFFF8, 8);
  v4 = ((v3 - 0x1C64917143BB4F57 + (v2 + 21400)) | 0xD853BE6BA5E670ECLL) - ((v3 - 0x1C64917143BB4F57 + (v2 + 21400)) | 0x27AC41945A198F13) + 0x27AC41945A198F13;
  v5 = v4 ^ 0xDD359C036C346641;
  v4 ^= 0xC1EEE8768E1C21BELL;
  v6 = (__ROR8__(v5, 8) + v4) ^ a1;
  v7 = v6 ^ __ROR8__(v4, 61);
  v8 = __ROR8__(v6, 8);
  v9 = (((2 * ((v8 + v7) ^ 0x32D61C2E785FED8ALL)) & 0xE42B16D25180DA4ALL) - ((v8 + v7) ^ 0x32D61C2E785FED8ALL) + 0xDEA7496D73F92DALL) ^ 0x2F040C8D8DAD68C2;
  v10 = v9 ^ __ROR8__(v7, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0xBFF6C21B210E4F37;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0x9882E727DB37CF94;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0x5FD252103B569EALL;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0x7B5626353E243BAALL;
  *a2 = (((__ROR8__(v17, 8) + (v17 ^ __ROR8__(v16, 61))) ^ 0xAF1BD4ED8A66164BLL) >> (8 * (a2 & 7u))) ^ 5;
  return (*(STACK[0x57D8] + 8 * (v2 + 4906)))(0x1C64917143BAF700);
}

uint64_t sub_1004735F0(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, int a13, int8x16_t *a14, unint64_t a15)
{
  v31.i64[0] = v17 + a1 + 25;
  v31.i64[1] = v17 + a1 + 24;
  v32 = v31;
  *&STACK[0x5740] = v31;
  v33.i64[0] = v17 + a1 + 23;
  v33.i64[1] = v17 + a1 + 22;
  v34 = v22;
  v35 = v19;
  v36.i64[0] = v17 + a1 + 21;
  v36.i64[1] = v17 + a1 + 20;
  v37.i64[0] = v17 + a1 + 19;
  v37.i64[1] = v17 + a1 + 18;
  v31.i64[0] = v17 + a1 + 17;
  v31.i64[1] = v17 + a1 + 16;
  *&STACK[0x5750] = v31;
  v31.i64[0] = v17 + a1 + 15;
  v31.i64[1] = v17 + a1 + 14;
  *&STACK[0x5720] = v31;
  v38 = *&STACK[0x4D70];
  v39 = vandq_s8(v37, *&STACK[0x4D70]);
  v40 = vandq_s8(v36, *&STACK[0x4D70]);
  v41 = vandq_s8(v33, *&STACK[0x4D70]);
  v42 = vandq_s8(v32, *&STACK[0x4D70]);
  v43 = vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL);
  v44 = vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL);
  v45 = vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL);
  v46 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v47 = *&STACK[0x4BD0];
  v48 = vorrq_s8(vaddq_s64(v43, *&STACK[0x4BD0]), a8);
  v49 = vorrq_s8(vsubq_s64(v23, v43), v20);
  v50 = vaddq_s64(vorrq_s8(vsubq_s64(v23, v46), v20), vorrq_s8(vaddq_s64(v46, *&STACK[0x4BD0]), a8));
  v51 = vaddq_s64(vorrq_s8(vsubq_s64(v23, v45), v20), vorrq_s8(vaddq_s64(v45, *&STACK[0x4BD0]), a8));
  v52 = vaddq_s64(vorrq_s8(vsubq_s64(v23, v44), v20), vorrq_s8(vaddq_s64(v44, *&STACK[0x4BD0]), a8));
  *&STACK[0x5730] = vaddq_s64(v49, v48);
  v53 = vdupq_n_s64(a12);
  v54 = vsubq_s64(v53, v51);
  v55 = vsubq_s64(v53, v50);
  v56 = veorq_s8(v55, v24);
  v57 = veorq_s8(v54, v24);
  v58 = veorq_s8(v54, v25);
  v59 = veorq_s8(v55, v25);
  v60 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v59);
  v61 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v58);
  v62 = veorq_s8(v61, v26);
  v63 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v61, v21), v27), v62), vandq_s8(v62, v21));
  v64 = veorq_s8(v60, v26);
  v65 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v60, v21), v27), v64), vandq_s8(v64, v21)), v28);
  v66 = vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL);
  v67 = veorq_s8(v63, v28);
  v68 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v69 = veorq_s8(v65, v66);
  v70 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v69);
  v72 = *&STACK[0x4600];
  v73 = veorq_s8(vaddq_s64(v70, v68), *&STACK[0x4600]);
  v74 = veorq_s8(v71, *&STACK[0x4600]);
  v75 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v76 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v76);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL), v75);
  v79 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v78, v78), v29), v78), v30), *&STACK[0x57C0]);
  v80 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v77, v77), v29), v77), v30), *&STACK[0x57C0]);
  v81 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v82 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v83 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v81), *&STACK[0x57B0]);
  v84 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v82), *&STACK[0x57B0]);
  v85 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v84, v84), v35), v84), *&STACK[0x57A0]), *&STACK[0x5780]);
  v86 = vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL);
  v87 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v83, v83), v35), v83), *&STACK[0x57A0]), *&STACK[0x5780]);
  v88 = veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v89 = veorq_s8(v85, v86);
  v90 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v89);
  v91 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v88);
  v92 = veorq_s8(vaddq_s64(vsubq_s64(v91, vandq_s8(vaddq_s64(v91, v91), *&STACK[0x5790])), v34), *&STACK[0x5770]);
  v93 = vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL);
  v94 = vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL);
  v95 = veorq_s8(vaddq_s64(vsubq_s64(v90, vandq_s8(vaddq_s64(v90, v90), *&STACK[0x5790])), v34), *&STACK[0x5770]);
  v96 = veorq_s8(v95, v94);
  v97 = veorq_s8(v92, v93);
  v98 = vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL);
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v97);
  v100 = *&STACK[0x4490];
  v101 = veorq_s8(vaddq_s64(v98, v96), *&STACK[0x4490]);
  v102 = vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL);
  v103 = veorq_s8(v99, *&STACK[0x4490]);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v105 = veorq_s8(v101, v102);
  v106 = vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL);
  v107 = vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL);
  v108 = vdupq_n_s64(a15);
  v49.i64[0] = v17 + a1 + 13;
  v49.i64[1] = v17 + a1 + 12;
  *&STACK[0x5710] = v49;
  v109 = vsubq_s64(v53, v52);
  v110 = *&STACK[0x4620];
  v207.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v107, v105), *&STACK[0x4620]), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), v108)));
  v207.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v106, v104), *&STACK[0x4620]), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), v108)));
  v111 = veorq_s8(v109, v24);
  v112 = veorq_s8(v109, v25);
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112);
  v114 = veorq_s8(v113, v26);
  v115 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v113, v21), v27), v114), vandq_s8(v114, v21)), v28);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116), v72);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v119, v119), v29), v119), v30), *&STACK[0x57C0]);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), *&STACK[0x57B0]);
  v123 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v122, v122), v35), v122), *&STACK[0x57A0]), *&STACK[0x5780]);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124);
  v126 = veorq_s8(vaddq_s64(vsubq_s64(v125, vandq_s8(vaddq_s64(v125, v125), *&STACK[0x5790])), v34), *&STACK[0x5770]);
  v127 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v128 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v127), v100);
  v36.i64[0] = v17 + a1 + 11;
  v36.i64[1] = v17 + a1 + 10;
  v129 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL)));
  v130 = vandq_s8(v36, v38);
  v131 = vsubq_s64(v53, *&STACK[0x5730]);
  v207.val[1] = vshlq_u64(veorq_s8(v129, *&STACK[0x4620]), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), v108)));
  v132 = veorq_s8(v131, v24);
  v133 = veorq_s8(v131, v25);
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133);
  v135 = veorq_s8(v134, v26);
  v136 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v134, v21), v27), v135), vandq_s8(v135, v21)), v28);
  v137 = veorq_s8(v136, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v138 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), v137), v72);
  v139 = veorq_s8(v138, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL));
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v139);
  v141 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v140, v140), v29), v140), v30), *&STACK[0x57C0]);
  v142 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v143 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v142), *&STACK[0x57B0]);
  v144 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v143, v143), v35), v143), *&STACK[0x57A0]), *&STACK[0x5780]);
  v145 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v146 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v145);
  v147 = veorq_s8(vaddq_s64(vsubq_s64(v146, vandq_s8(vaddq_s64(v146, v146), *&STACK[0x5790])), v34), *&STACK[0x5770]);
  v148 = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v149 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL), v148), v100);
  v150 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v151 = vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL);
  v152 = vandq_s8(v49, v38);
  v153 = vaddq_s64(v151, v150);
  v154 = *&STACK[0x5720];
  v155 = vandq_s8(*&STACK[0x5720], v38);
  v207.val[0] = vshlq_u64(veorq_s8(v153, *&STACK[0x4620]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5740], 3uLL), v108)));
  v156 = vandq_s8(*&STACK[0x5750], v38);
  v157 = vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL);
  v158 = vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL);
  v159 = vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL);
  v160 = vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL);
  v161 = vaddq_s64(vorrq_s8(vsubq_s64(v23, v160), v20), vorrq_s8(vaddq_s64(v160, v47), *&STACK[0x5760]));
  v162 = vsubq_s64(v53, vaddq_s64(vorrq_s8(vsubq_s64(v23, v157), v20), vorrq_s8(vaddq_s64(v157, v47), *&STACK[0x5760])));
  v163 = vsubq_s64(v53, vaddq_s64(vorrq_s8(vsubq_s64(v23, v158), v20), vorrq_s8(vaddq_s64(v158, v47), *&STACK[0x5760])));
  v164 = vsubq_s64(v53, vaddq_s64(vorrq_s8(vsubq_s64(v23, v159), v20), vorrq_s8(vaddq_s64(v159, v47), *&STACK[0x5760])));
  v165 = vsubq_s64(v53, v161);
  v166 = a14[25];
  *&STACK[0x5740] = v166;
  v207.val[3].i64[0] = vqtbl4q_s8(v207, v166).u64[0];
  v167 = veorq_s8(v165, v24);
  v168 = veorq_s8(v164, v24);
  v169 = veorq_s8(v164, v25);
  v170 = veorq_s8(v165, v25);
  v171 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v170);
  v172 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169);
  v207.val[0] = veorq_s8(v172, v26);
  v173 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v172, v21), v27), v207.val[0]), vandq_s8(v207.val[0], v21));
  v207.val[0] = veorq_s8(v171, v26);
  v174 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v171, v21), v27), v207.val[0]), vandq_s8(v207.val[0], v21)), v28);
  v175 = veorq_s8(v173, v28);
  v207.val[0] = vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL);
  v176 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v177 = veorq_s8(v174, v207.val[0]);
  v178 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v176), v72);
  v207.val[0] = vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL);
  v179 = vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL);
  v180 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v177), v72);
  v181 = veorq_s8(v180, v179);
  v182 = veorq_s8(v178, v207.val[0]);
  v207.val[0] = vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL);
  v183 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), v182);
  v184 = vaddq_s64(v207.val[0], v181);
  v185 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v184, v184), v29), v184), v30), *&STACK[0x57C0]);
  v186 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v183, v183), v29), v183), v30), *&STACK[0x57C0]);
  v207.val[0] = vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL);
  v187 = veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v188 = veorq_s8(v185, v207.val[0]);
  v207.val[0] = vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL);
  v189 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL), v188);
  v190 = veorq_s8(vaddq_s64(v207.val[0], v187), *&STACK[0x57B0]);
  v191 = veorq_s8(v189, *&STACK[0x57B0]);
  v192 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v191, v191), v35), v191), *&STACK[0x57A0]), *&STACK[0x5780]);
  v193 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v190, v190), v35), v190), *&STACK[0x57A0]), *&STACK[0x5780]);
  v194 = veorq_s8(v193, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL));
  v195 = veorq_s8(v192, vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL));
  v196 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192, 0x38uLL), v192, 8uLL), v195);
  v197 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), v194);
  v198 = veorq_s8(vaddq_s64(vsubq_s64(v197, vandq_s8(vaddq_s64(v197, v197), *&STACK[0x5790])), v34), *&STACK[0x5770]);
  v207.val[0] = vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL);
  v199 = veorq_s8(vaddq_s64(vsubq_s64(v196, vandq_s8(vaddq_s64(v196, v196), *&STACK[0x5790])), v34), *&STACK[0x5770]);
  v200 = veorq_s8(v199, vsraq_n_u64(vshlq_n_s64(v195, 3uLL), v195, 0x3DuLL));
  v201 = veorq_s8(v198, v207.val[0]);
  v207.val[0] = vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL);
  v202 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), v201);
  v203 = veorq_s8(vaddq_s64(v207.val[0], v200), v100);
  v204 = veorq_s8(v202, v100);
  v206.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL), veorq_s8(v203, vsraq_n_u64(vshlq_n_s64(v200, 3uLL), v200, 0x3DuLL))), v110), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), v108)));
  v206.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL), veorq_s8(v204, vsraq_n_u64(vshlq_n_s64(v201, 3uLL), v201, 0x3DuLL))), v110), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5710], 3uLL), v108)));
  v207.val[0] = veorq_s8(v163, v24);
  v207.val[1] = veorq_s8(v163, v25);
  v207.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207.val[0], 0x38uLL), v207.val[0], 8uLL), v207.val[1]);
  v207.val[2] = veorq_s8(v207.val[0], v26);
  v207.val[0] = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v207.val[0], v21), v27), v207.val[2]), vandq_s8(v207.val[2], v21)), v28);
  v207.val[1] = veorq_s8(v207.val[0], vsraq_n_u64(vshlq_n_s64(v207.val[1], 3uLL), v207.val[1], 0x3DuLL));
  v207.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207.val[0], 0x38uLL), v207.val[0], 8uLL), v207.val[1]), v72);
  v207.val[1] = veorq_s8(v207.val[0], vsraq_n_u64(vshlq_n_s64(v207.val[1], 3uLL), v207.val[1], 0x3DuLL));
  v207.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207.val[0], 0x38uLL), v207.val[0], 8uLL), v207.val[1]);
  v207.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v207.val[0], v207.val[0]), v29), v207.val[0]), v30), *&STACK[0x57C0]);
  v207.val[1] = veorq_s8(v207.val[0], vsraq_n_u64(vshlq_n_s64(v207.val[1], 3uLL), v207.val[1], 0x3DuLL));
  v207.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207.val[0], 0x38uLL), v207.val[0], 8uLL), v207.val[1]), *&STACK[0x57B0]);
  v207.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v207.val[0], v207.val[0]), v35), v207.val[0]), *&STACK[0x57A0]), *&STACK[0x5780]);
  v207.val[1] = veorq_s8(v207.val[0], vsraq_n_u64(vshlq_n_s64(v207.val[1], 3uLL), v207.val[1], 0x3DuLL));
  v207.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207.val[0], 0x38uLL), v207.val[0], 8uLL), v207.val[1]);
  v207.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v207.val[0], vandq_s8(vaddq_s64(v207.val[0], v207.val[0]), *&STACK[0x5790])), v34), *&STACK[0x5770]);
  v207.val[1] = veorq_s8(v207.val[0], vsraq_n_u64(vshlq_n_s64(v207.val[1], 3uLL), v207.val[1], 0x3DuLL));
  v207.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207.val[0], 0x38uLL), v207.val[0], 8uLL), v207.val[1]), v100);
  v206.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207.val[0], 0x38uLL), v207.val[0], 8uLL), veorq_s8(v207.val[0], vsraq_n_u64(vshlq_n_s64(v207.val[1], 3uLL), v207.val[1], 0x3DuLL))), v110), vnegq_s64(vandq_s8(vshlq_n_s64(v154, 3uLL), v108)));
  v207.val[0] = veorq_s8(v162, v24);
  v207.val[2] = veorq_s8(v162, v25);
  v207.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207.val[0], 0x38uLL), v207.val[0], 8uLL), v207.val[2]);
  v207.val[1] = veorq_s8(v207.val[0], v26);
  v207.val[0] = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v207.val[0], v21), v27), v207.val[1]), vandq_s8(v207.val[1], v21)), v28);
  v207.val[1] = veorq_s8(v207.val[0], vsraq_n_u64(vshlq_n_s64(v207.val[2], 3uLL), v207.val[2], 0x3DuLL));
  v207.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207.val[0], 0x38uLL), v207.val[0], 8uLL), v207.val[1]), v72);
  v207.val[1] = veorq_s8(v207.val[0], vsraq_n_u64(vshlq_n_s64(v207.val[1], 3uLL), v207.val[1], 0x3DuLL));
  v207.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207.val[0], 0x38uLL), v207.val[0], 8uLL), v207.val[1]);
  v207.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v207.val[0], v207.val[0]), v29), v207.val[0]), v30), *&STACK[0x57C0]);
  v207.val[1] = veorq_s8(v207.val[0], vsraq_n_u64(vshlq_n_s64(v207.val[1], 3uLL), v207.val[1], 0x3DuLL));
  v207.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207.val[0], 0x38uLL), v207.val[0], 8uLL), v207.val[1]), *&STACK[0x57B0]);
  v207.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v207.val[0], v207.val[0]), v35), v207.val[0]), *&STACK[0x57A0]), *&STACK[0x5780]);
  v207.val[1] = veorq_s8(v207.val[0], vsraq_n_u64(vshlq_n_s64(v207.val[1], 3uLL), v207.val[1], 0x3DuLL));
  v207.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207.val[0], 0x38uLL), v207.val[0], 8uLL), v207.val[1]);
  v207.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v207.val[0], vandq_s8(vaddq_s64(v207.val[0], v207.val[0]), *&STACK[0x5790])), v34), *&STACK[0x5770]);
  v207.val[2] = veorq_s8(v207.val[0], vsraq_n_u64(vshlq_n_s64(v207.val[1], 3uLL), v207.val[1], 0x3DuLL));
  v207.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207.val[0], 0x38uLL), v207.val[0], 8uLL), v207.val[2]), v100);
  v206.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207.val[0], 0x38uLL), v207.val[0], 8uLL), veorq_s8(v207.val[0], vsraq_n_u64(vshlq_n_s64(v207.val[2], 3uLL), v207.val[2], 0x3DuLL))), v110), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5750], 3uLL), v108)));
  v207.val[3].i64[1] = vqtbl4q_s8(v206, *&STACK[0x5740]).u64[0];
  v206.val[1] = vrev64q_s8(v207.val[3]);
  *v36.i64[1] = veorq_s8(vextq_s8(v206.val[1], v206.val[1], 8uLL), *(v18 + a1 + 16));
  return (*(STACK[0x57D8] + 8 * (((v16 == a1) * a13) ^ v15)))(a1 - 16);
}

uint64_t sub_100474228()
{
  STACK[0xE260] = v1;
  v2 = STACK[0x9660];
  STACK[0xE268] = STACK[0x9660];
  return (*(STACK[0x57D8] + 8 * ((19262 * (v1 - v2 > (v0 ^ 0x22E2u) - 22762 + ((v0 - 8763) | 0x5812u))) ^ v0)))();
}

uint64_t sub_10047429C()
{
  *STACK[0x59B8] = 0;
  *STACK[0xC200] = -769884012;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100474498()
{
  STACK[0x57C0] = 0;
  v0 = STACK[0x51B8];
  STACK[0x7810] = STACK[0xD930];
  STACK[0x8000] = &STACK[0x9900];
  STACK[0x5FC0] = 0;
  LODWORD(STACK[0xA12C]) = 2101965980;
  LODWORD(STACK[0xC0DC]) = -2013569051;
  return (*(STACK[0x57D8] + 8 * (v0 - 18197)))();
}

uint64_t sub_100474528(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_100474548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = (a8 - 522876071) & 0x1F2A676A;
  v9 = LODWORD(STACK[0x53D0]) == 62;
  v10 = STACK[0x4FC0] + LODWORD(STACK[0x52E8]);
  LODWORD(STACK[0x5620]) = *v10;
  LODWORD(STACK[0x52E8]) = LODWORD(STACK[0x5008]) - 4701 + (v8 ^ 0x6176) + 3967;
  STACK[0x53E8] = __ROR8__(((6 * (v8 ^ 0x6176u)) ^ 0xFFFFFFFFFFFFED50) & v10, 8);
  v11 = *(STACK[0x57D8] + 8 * (v8 ^ (141 * v9)));
  STACK[0x53F8] = 8 * (v10 & 7);
  return v11();
}

uint64_t sub_10047463C()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  return (*(v1 + 8 * (v0 - 6706)))(v2);
}

uint64_t sub_100474668()
{
  v2 = *(STACK[0x57D8] + 8 * (((v0 < (v1 ^ 0x6D7Fu)) * (((v1 - 1706171140) & 0x65B1FDFE) - 20557)) ^ v1));
  *&STACK[0x5760] = vdupq_n_s64(0xA0C363D20B5B8ECuLL);
  *&STACK[0x57A0] = vdupq_n_s64(0x7301F4C8C8D79D4AuLL);
  *&STACK[0x5790] = vdupq_n_s64(0xCFCFF1427020737CLL);
  *&STACK[0x57C0] = vdupq_n_s64(0x65D281CD69BBB6B8uLL);
  *&STACK[0x57B0] = vdupq_n_s64(0x733519A723181E1EuLL);
  *&STACK[0x5780] = vdupq_n_s64(0xDD871B5A503C70A3);
  *&STACK[0x5770] = vdupq_n_s64(0xC67E010F679753FBLL);
  return v2();
}

uint64_t sub_10047484C@<X0>(uint64_t a1@<X8>)
{
  STACK[0x9DD8] = 0;
  STACK[0xAD80] = 0;
  STACK[0x6B60] = 0;
  return (*(STACK[0x57D8] + 8 * (((v1 ^ 0x1F2C ^ (v1 + 763338509) & 0xD2804FD7) * (a1 == 0x308E083E0C524CBELL)) ^ v1)))();
}

uint64_t sub_100475148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x4838]) = LODWORD(STACK[0x5790]) | LODWORD(STACK[0x55E0]);
  LODWORD(STACK[0x4830]) = LODWORD(STACK[0x5610]) | LODWORD(STACK[0x53C0]);
  return (*(STACK[0x57D8] + 8 * (v3 - 4566)))(a1, a2, a3, 0x3BCBADC7F10D149);
}

uint64_t sub_10047526C@<X0>(unsigned __int8 a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W7>, char a8@<W8>)
{
  v19 = STACK[0x57A0];
  v20 = STACK[0x57A0];
  LODWORD(STACK[0x57A0]) = STACK[0x57A0];
  LODWORD(STACK[0x5730]) = (v19 - 1507910623) & 0x59E0F673;
  v21 = a1 ^ 0x31;
  v22 = (v12 - 37);
  v23 = v17 + 183205725 - a6 + (a6 ^ a7) + v22 + 1;
  HIDWORD(v24) = ((v23 & a5) << (v20 ^ 0xAF)) + (v23 ^ a5);
  LODWORD(v24) = HIDWORD(v24);
  v25 = (v24 >> 18) + a6;
  v26 = a7 + 2061576594 + (v17 & ~a7) + v21 + v25;
  HIDWORD(v24) = (v26 ^ a6) + 2 * (v26 & a6);
  LODWORD(v24) = HIDWORD(v24);
  v27 = (v24 >> 15) + a7;
  HIDWORD(v24) = ((v21 - 1455434268) ^ v17) + a7 + (((v21 - 1455434268) & v17) << (((v19 + 33) & 0x73) - 66)) - (v25 ^ (v17 - 1)) + v27;
  LODWORD(v24) = HIDWORD(v24);
  v28 = (v24 >> 31) + v17;
  v29 = v16 ^ 0x32;
  v30 = v16 ^ 0x32;
  v31 = v17 - 616119621 + v30 + ((v28 + (v27 ^ (v25 - 1))) ^ v25);
  v32 = (a2 + a3 + a4 - 20);
  v33 = v25 - 1551924003 + v27 + v32 + (v27 ^ ~v28);
  v34 = v25 + (v31 >> 15);
  v35 = v34 + (v31 << 17);
  v36 = v27 + ((v33 + v35) << 14) + ((v33 + v35) >> 18);
  v37 = (v14 - 116);
  HIDWORD(v24) = (v35 ^ v28 ^ ~v36) + v27 + v32 + 1560700795 + v28;
  LODWORD(v24) = HIDWORD(v24);
  v38 = (v24 >> 15) + v28;
  HIDWORD(v24) = v28 + 1597044733 + (v35 ^ v37) + 2 * (v34 & v37) + (v36 ^ (v35 + 1)) + v38;
  LODWORD(v24) = HIDWORD(v24);
  v39 = (v24 >> 31) + v35;
  v40 = v15 ^ 0x5C;
  HIDWORD(v24) = v32 - 1809822644 + v35 + ((v39 + (v38 ^ (v36 - 1))) ^ v36);
  LODWORD(v24) = HIDWORD(v24);
  v41 = (v24 >> 15) + v36;
  HIDWORD(v24) = v40 - 886516368 + v36 + ((v41 - (v39 ^ (v38 - 1))) ^ v38);
  LODWORD(v24) = HIDWORD(v24);
  v42 = ((v24 >> 18) ^ v38) + 2 * ((v24 >> 18) & v38);
  v43 = (a8 - 23);
  HIDWORD(v24) = v43 - 1481216660 + v38 + ((v42 - (v41 ^ (v39 + 1))) ^ v39);
  LODWORD(v24) = HIDWORD(v24);
  v44 = (v24 >> 15) + v39;
  v45 = (v8 - 99);
  HIDWORD(v24) = v45 + 2091376816 + v39 - v41 + (v42 ^ (v41 + 1) ^ v44);
  LODWORD(v24) = HIDWORD(v24);
  v46 = (v24 >> 31) + v41;
  HIDWORD(v24) = v40 + 977322015 + v41 + v42 + (v46 ^ v44 ^ (v42 + 1));
  LODWORD(v24) = HIDWORD(v24);
  v47 = ((v24 >> 15) ^ v42) + 2 * ((v24 >> 15) & v42);
  v48 = (v13 + 43);
  HIDWORD(v24) = v48 - 1800164804 + v42 + v44 + (v46 ^ v44 ^ ~v47);
  LODWORD(v24) = HIDWORD(v24);
  v49 = (v24 >> 18) + v44;
  HIDWORD(v24) = v43 + 1383804171 + v44 + ((v49 + (v47 ^ (v46 - 1))) ^ v46);
  LODWORD(v24) = HIDWORD(v24);
  v50 = (v24 >> 15) + v46;
  HIDWORD(v24) = v32 - 785475526 + v46 + ((v50 + (v49 ^ (v47 - 1))) ^ v47);
  LODWORD(v24) = HIDWORD(v24);
  v51 = (v24 >> 31) + v47;
  HIDWORD(v24) = v30 - 221047186 + v47 - v49 + (v50 ^ (v49 + 1)) + v51;
  LODWORD(v24) = HIDWORD(v24);
  v52 = (v24 >> 15) + v49;
  HIDWORD(v24) = v49 + 183205725 + (((v52 ^ v51 ^ (v50 - 1)) - v50) ^ v37) + 2 * (((v52 ^ v51 ^ (v50 - 1)) - v50) & v37);
  LODWORD(v24) = HIDWORD(v24);
  v53 = (v24 >> 24) + v50;
  v54 = (LODWORD(STACK[0x56D0]) + v10 + v9 - 73);
  HIDWORD(v24) = v54 + 2061576594 + v50 + v51 + (v52 ^ ~v51) + v53;
  LODWORD(v24) = HIDWORD(v24);
  LODWORD(v24) = __ROR4__(((v24 >> 25) + v51) ^ 0x8CD6A01, 6) ^ 0x42335A8;
  HIDWORD(v24) = v24;
  v55 = v24 >> 26;
  v56 = (v11 + 22);
  HIDWORD(v24) = v37 - 1455434268 + v51 - v52 + (v55 ^ v53 ^ (v52 + 1)) + 2 * (v55 & (v53 ^ (v52 + 1)));
  LODWORD(v24) = HIDWORD(v24);
  v57 = (v24 >> 31) + v52;
  v58 = v56 - 616119621 + (v55 ^ (v53 + 1) ^ v57) - v53;
  HIDWORD(v24) = (v58 ^ v52) + 2 * (v58 & v52);
  LODWORD(v24) = HIDWORD(v24);
  v59 = (v24 >> 6) + v53;
  HIDWORD(v24) = (v18 ^ 0x38) - 1551924003 + v53 + ((v59 - (v57 ^ (v55 - 1))) ^ v55);
  LODWORD(v24) = HIDWORD(v24);
  v60 = (v24 >> 24) + v55;
  HIDWORD(v24) = v21 + 1560700795 + v55 + ((v57 + 1) ^ v57 ^ v59 ^ v60);
  LODWORD(v24) = HIDWORD(v24);
  v61 = (v24 >> 25) + v57;
  HIDWORD(v24) = v43 + 1597044733 + v57 + ((v61 - (v60 ^ (v59 - 1))) ^ v59);
  LODWORD(v24) = HIDWORD(v24);
  v62 = (v24 >> 31) + v59;
  HIDWORD(v24) = v32 - 1809822644 + v59 + ((v62 - (v61 & ~v60)) ^ v60);
  LODWORD(v24) = HIDWORD(v24);
  v63 = (v24 >> 6) + v60;
  v64 = (LODWORD(STACK[0x56C0]) - 70);
  HIDWORD(v24) = v64 - 886516368 + v60 - v61 + (v62 ^ (v61 - 1)) + v63;
  LODWORD(v24) = HIDWORD(v24);
  v65 = (v24 >> 24) + v61;
  HIDWORD(v24) = v56 - 1481216660 + v61 + ((v62 - 1) ^ v62 ^ v63 ^ v65);
  LODWORD(v24) = HIDWORD(v24);
  v66 = (v24 >> 25) + v62;
  v67 = v54 + 2091376816 + ((v66 - (v65 & (v63 - 1))) ^ v63);
  HIDWORD(v24) = (v67 ^ v62) + 2 * (v67 & v62);
  LODWORD(v24) = HIDWORD(v24);
  v68 = (v24 >> 31) + v63;
  v69 = v16 ^ a1;
  HIDWORD(v24) = v22 + 977322015 + v63 + ((v68 + (v66 ^ (v65 - 1))) ^ v65);
  LODWORD(v24) = HIDWORD(v24);
  v70 = (v24 >> 6) + v65;
  HIDWORD(v24) = v43 - 1800164804 + v65 - v66 - (v68 ^ (v66 - 1)) + v70;
  LODWORD(v24) = HIDWORD(v24);
  v71 = (v24 >> 24) + v66;
  v72 = (v71 + (v70 ^ (v68 - 1))) ^ v68;
  v73 = v21 + 1383804171 + v66;
  if ((v16 & 8) != 0)
  {
    v74 = -8;
  }

  else
  {
    v74 = 8;
  }

  HIDWORD(v75) = v73 + v72;
  LODWORD(v75) = v73 + v72;
  v76 = (v75 >> 25) + v68;
  v77 = ((v74 + v30) ^ 0xE117B162) + v22;
  v78 = (v16 ^ 0x411D4140) + v43;
  v79 = v77 ^ v78;
  HIDWORD(v75) = v30 - 785475526 + v68 + ((v76 + (v71 ^ (v70 + 1))) ^ v70);
  LODWORD(v75) = HIDWORD(v75);
  v80 = (v75 >> 31) + v70;
  v81 = v77 ^ v78 ^ 0xFE92D632;
  LODWORD(STACK[0x56D0]) = v45 - 221047186 + v70 - v71 + (v80 ^ v76 & (v71 - 1));
  v82 = v81 & 0x8AE59807 ^ ((v69 ^ 0x9D2A488E) - (v78 ^ 0x3751075B));
  v83 = v15 ^ v16;
  v84 = v82 ^ v81 ^ ((v16 ^ 0x5B18C279) + (v78 ^ 0x6B4E2D63) + v45);
  v85 = v18 ^ v16;
  v86 = ((v16 ^ 0xB38E5228 ^ v54) + 2 * ((v16 ^ 0xB38E5228) & v54)) ^ v78 & 0x1144051;
  v87 = (((v30 ^ 0x9E91E44E) + (LODWORD(STACK[0x5720]) + LODWORD(STACK[0x56F0]) + LODWORD(STACK[0x5700]) - 60)) ^ v78 & 0x11402FF ^ 0xDE7F0667 ^ v81) - (v82 ^ 0xA4F08ADC);
  v88 = (v87 ^ 0xA6DE0530) - 989620371 + (v84 ^ -v84 ^ (-989620371 - (v84 ^ 0xC503976D))) + 1;
  v89 = v86 + (v77 ^ v78 ^ 0x1CAA92DB) + (v82 ^ 0x487121F3) + (v87 ^ 0x9CA0ECAB) + (__ROR4__(LODWORD(STACK[0x3670]) ^ __ROR4__(v88, 16), 16) ^ 0x25418F8F);
  v90 = v89 + 2;
  v91 = ((v89 + 2) & 0xA65E93EE) + ((v32 - (v29 & 0xBB) + v78 - ((2 * v78) & 0x388536) + (v77 ^ v78 ^ 0x406CBA23) - 1440979300 + (v82 ^ 0xD18D8D31)) ^ v87 ^ 0x3764DCB3 ^ v88 & 0x12D2B793);
  v92 = (v78 ^ 0x9A8CF424) + (v77 ^ v78 ^ 0x7EFEEF60) + ((LODWORD(STACK[0x56E0]) + 13) ^ v29 & 5) + (v82 ^ 0x719BF8E0);
  v93 = ((v89 + 2) ^ ((v88 ^ 0x2B2D4568) + (v87 ^ 0x1880325C) + (v82 ^ v81 ^ ((v83 ^ 0xBFEE763A) - (v78 ^ 0x5C16337)) ^ 0xAC09094A)) ^ 0x814C862F) - (v91 ^ 0xDE35442A);
  v94 = (v82 ^ v81 ^ v87 ^ __ROR4__(__ROR4__(v88 & 0x1D9B5178 ^ 0x21E28D22, 22) ^ 0x8A348887, 10) ^ ((v85 ^ 0x3E4DBDDB) - (v78 ^ 0xEC6A9A5B)) ^ 0x7C5F5104) - ((v89 + 2) ^ 0x9DB8C92) + (v91 & 0x605526E8);
  v95 = ((v92 + 2) ^ (-2 - v92) ^ (v87 - ((v92 + 2) ^ v87))) + v87;
  v96 = v93 ^ v94;
  v97 = (v88 ^ 0x8E084F4E) + ((v89 + 2) ^ 0xE177F3BD) + (v95 ^ 0x959AB43F) + (v91 ^ 0xB624FFC7) + (v93 ^ 0xF10FAD3F) + (v93 ^ v94 ^ 0xD8A3909D) + 3;
  v98 = (v93 ^ v94 ^ 0x6EC681B7) + ((((v89 + 2) ^ ((v30 ^ LODWORD(STACK[0x5680])) + (v78 ^ 0xC85BA5FA) + (v77 ^ v78 ^ 0x3A1B63E7) + (v82 ^ 0x22CCE634) + (v87 ^ 0xF6199D3B) + v48 + (v88 ^ 0xACE1B625) + 3) ^ 0x577E9D0) - (v91 ^ 0x99AB8CA2)) ^ 0x21ACAF0C ^ v93);
  v99 = v77 ^ 0x6013C2A1;
  v100 = v56 - (v30 ^ 0x6BE4B1B7);
  v101 = v98 + (v97 ^ 0x434A0395);
  v102 = (v88 ^ 0x64C1B8ED) + ((v89 + 2) ^ 0xE538EAC1) + (v87 ^ ((v99 ^ ((v30 ^ 0x2D01E0B8) + (LODWORD(STACK[0x5710]) - 93))) + (v82 & 0x8A02055C)) ^ 0x574C6DCE) + (v91 ^ 0x6DF6FBA7) + 1;
  v103 = (v91 ^ __ROR4__(__ROR4__((v89 + 2) & 0x7FFFFFFE ^ 0x4419A484, 30) & 0x9A66B63B ^ 0x10669211, 2) ^ ((v87 ^ 0x61AFDBBF ^ ((v79 ^ 0x6EAD5180) + (v78 ^ v100 ^ 0xEF538FD7) + (v82 ^ 0xDD06C88) + 1)) + (v88 ^ 0x4771845B)) ^ v93 ^ 0x52F20CFD) - (v93 ^ v94 ^ 0xAAE5ABB0);
  v104 = ((v89 + 2) ^ ((v87 ^ 0x4326AD85) + (v82 ^ 0x11121125 ^ ((v30 ^ 0xF4EF7F92) + (v78 & 0x4114429F) - v81 + v37 + ((v81 - (v79 ^ 0x288D1D62)) ^ 0x1F) + 2)) + (v88 ^ 0x75C26C19) + 2) ^ 0xCBD28A49) + (v91 ^ 0x539DE009);
  v105 = (((v102 ^ v93 ^ 0x4968B7D1) - (v93 ^ v94 ^ 0xF2C9E2BE)) ^ 0xA9810C8D ^ v97) - 1787333857 + (v101 ^ -v101 ^ (-1787333857 - (v101 ^ 0x9577731F)));
  v106 = v93 & 0x4000000;
  if ((v93 & 0x4000000 & v104) != 0)
  {
    v106 = -v106;
  }

  v107 = (v101 & 0xE8017833) + (v97 ^ 0x8B0DBFF5 ^ v103) - (v105 & 0x7ECDEBDD);
  v108 = (((v97 ^ 0x2CBE0CE5 ^ ((v93 & 0xFBFFFFFF ^ 0xEB10072A ^ (v106 + v104)) - (v96 ^ 0xC9CEAB38))) - (v101 & 0xAF3463CA)) ^ 0x743A7BDB ^ v105) - (v107 ^ 0xB0E8C538);
  v109 = (v101 ^ v96 ^ ((v90 & 0x2AED5E8D ^ 0x86564F5F ^ v91 ^ ((v79 ^ 0xE4253E8A) + (v82 ^ 0x8B5995BE) + (v87 ^ 0xE187799F) + (v88 ^ 0x8D253CBA) + 2 * ((v64 - (v29 & 0x4A)) & (v78 ^ 0x68E5FEC7)) + (v78 ^ (v64 - (v29 & 0x4A)) ^ 0xE8E5FEC7) + 2)) - (v93 & 0xCF4A774C)) ^ v97 & 0x7190AF1D ^ 0xF355B85C ^ v105) - (v107 ^ 0x68051487);
  HIDWORD(v111) = STACK[0x56D0];
  LODWORD(v111) = STACK[0x56D0];
  v110 = v111 >> 6;
  HIDWORD(v111) = v81 ^ ((v78 ^ 0xA1DE62) + v30);
  LODWORD(v111) = v81;
  v112 = v88 ^ (v78 + (v79 ^ 0xE9D9AA5D) + (v82 ^ 0xB483B59) + (v87 ^ 0x634B278F) + 1);
  v113 = v107 & 0xD9FF4007 ^ ((((v82 ^ 0xE629579E) + (v87 ^ 0x5E6ADD27) + (__ROR4__((v111 >> 24) ^ 0x2E132B70, 8) ^ 0x32A2F015) + 1) ^ 0x42283288 ^ v88) - (v90 & 0xFD8A4C47) + (v91 ^ 0x25C7C4FA) + (v93 ^ 0x8FF8B637) + (v96 ^ 0xA8EE6D5C) + (v97 ^ 0x9ABBF2A0) + (v101 & 0x67A3EC53) + (v105 ^ 0xE474A67C) + 3);
  v114 = v110 + v71;
  v115 = v108 ^ v109;
  v116 = ((v81 + (v82 & 0x26EE0FF2) + (v87 ^ 0x7114ED0A) + 1) ^ v88 ^ 0xE1B9D9AC ^ v90) + (v91 ^ LODWORD(STACK[0x3674]));
  v117 = (v91 ^ 0x97F4A2A7 ^ ((v112 ^ 0xA864F5D6 ^ v90) + 2 * ((v90 ^ 0x12465640) & (v112 ^ 0x3A22A396)))) - (v93 & 0x1B52DE92) + (v96 ^ 0x6154692A) + (v97 ^ 0x5F3D1F41) + (v101 ^ 0x573478) - (v105 & 0x77BF5B70) + (v107 ^ 0x7F8E1D9F) - 2 * (v107 ^ 0x7F8E1D9F) + (v108 ^ 0x72AC59E6) + (v115 ^ 0x6CF86808);
  v118 = v115 ^ 0x639FEF19;
  v119 = ((v115 ^ 0x639FEF19) & 0x1BAA4091) + (((v101 ^ v96 ^ (v116 + (v93 ^ 0x717271B3) + 1) ^ v97 ^ 0xC1519E95) + (v105 ^ 0xAA9AB005) - (v107 & 0xED993FFA) + 1) ^ v108 ^ 0x25BB955D);
  v120 = (v90 ^ 0x2A62B106) + v88;
  v121 = (v101 ^ 0x465FBB02) + (((v90 ^ 0x1C853929) + ((v82 - (v87 ^ 0x1517BA7D)) ^ 0x2ABEB4A ^ v88) + (v91 ^ 0x4BC31948) + (v93 & 0x1CB5EDCC) + (v96 ^ LODWORD(STACK[0x3678]))) ^ 0xD35F0DFC ^ v97) - (v105 ^ 0x13C899);
  v122 = (((((v90 ^ (-2 - v89) ^ (-397651439 - (v90 ^ 0xE84C5211))) - 397651439) ^ (v87 - (v88 ^ 0xE67FF6C7))) + (v91 ^ 0x2EB92D12)) ^ v94 ^ 0x34B400F9) - (v97 & 0xBF783C4C);
  v123 = v113 + (v108 ^ 0x2858EE3B) + (v115 ^ 0xF9E18880) + 1;
  v124 = (v96 ^ 0x40DDE408) + (v93 & 0x7E20338D ^ (v120 + (v91 ^ 0xBF132001))) + (v97 ^ 0x7E2A8A60);
  v125 = v96 ^ 0x7B9B72D4;
  v126 = v94 ^ LODWORD(STACK[0x367C]);
  LODWORD(STACK[0x5720]) = (((v101 ^ 0xADF28E7E ^ v122) - 2 * (v101 ^ 0xADF28E7E) + 2 * ((v101 ^ 0xADF28E7E) & v122)) ^ v105 ^ 0xA2E90894) + (v107 ^ 0x810C7986) + (v108 ^ 0x1FA9988D);
  v127 = ((v101 & 0xA2328FA4) + (v97 & 0x6EA74605 ^ ((v96 ^ 0xDB575E4A) + v91 - (v93 ^ 0x688A55A6))) + (v105 ^ 0xBF2A7CC0)) ^ v107;
  v128 = (v105 ^ v101 ^ 0xA68F5052 ^ (v124 + 1)) + (v107 ^ 0x6BA53478) + (v108 ^ 0xF40DC910) + (v115 ^ 0x374FA19D) + 1;
  v129 = (v101 ^ 0x20475149 ^ (v90 + (v93 ^ 0xC0D1FB9C) + (__ROR4__(__ROR4__(v91, 21) ^ 0xE959D220, 11) ^ 0x1ABA0DB1) + (v96 ^ 0xAD35319F) + (v97 ^ 0x4836A2A5) + 2)) + (v105 & 0x17421C82);
  v130 = (v97 ^ 0x7C4FB53B) + v126 + (v101 ^ LODWORD(STACK[0x3684]));
  v131 = (v105 ^ -v105 ^ (v130 - (v105 ^ v130))) + v130;
  v132 = ((269704398 - (v127 & 0x100000)) ^ v127 & 0xFFEFFFFF) - (v108 ^ 0x8DF6338E);
  v133 = v101 - (v105 ^ 0x5256308D) + (v107 ^ LODWORD(STACK[0x3680]));
  v134 = (v107 ^ 0x79760617) + (v108 ^ 0xCFD6C033) + (v131 ^ 0xC7782901);
  v135 = v134 ^ (v134 + 1) ^ ~((v115 ^ 0x639FEF19) - ((v134 + 1) ^ v115 ^ 0x639FEF19));
  v136 = (((v133 ^ -v133 ^ (v108 - (v133 ^ v108))) + v108) ^ 0x4349BCD1) - (v115 ^ 0x7F64C862);
  HIDWORD(v111) = (v105 ^ v101 ^ 0xA68F5052 ^ (v124 + 1)) + (v107 ^ 0x6BA53478) + (v108 ^ 0xF40DC910) + (v115 ^ 0x374FA19D) + 183205726 + v71 - v76 - (v80 ^ (v76 - 1)) + v114;
  LODWORD(v111) = HIDWORD(v111);
  v137 = (v111 >> 17) + v76;
  HIDWORD(v111) = v136 + 2061576594 + v76 + ((v137 + (v114 ^ (v80 + 1))) ^ v80);
  LODWORD(v111) = HIDWORD(v111);
  v138 = (v111 >> 13) + v80;
  HIDWORD(v111) = v119 - 1455434268 + v80 + ((v114 - 1) ^ v114 ^ v137 ^ v138);
  LODWORD(v111) = HIDWORD(v111);
  v139 = (v111 >> 6) + v114;
  HIDWORD(v111) = v123 - 616119621 + v114 - v137 + (v138 ^ (v137 + 1)) + v139;
  LODWORD(v111) = HIDWORD(v111);
  v140 = (v111 >> 9) + v137;
  v141 = ((v140 - (v139 & (v138 + 1)) + v138) ^ v128) - 1551924003 + 2 * ((v140 - (v139 & (v138 + 1)) + v138) & v128);
  HIDWORD(v111) = (v141 ^ v137) + 2 * (v141 & v137);
  LODWORD(v111) = HIDWORD(v111);
  v142 = (v111 >> 17) + v138;
  HIDWORD(v111) = v123 + 1560700795 + v138 + v139 + (v140 ^ (v139 + 1) ^ v142);
  LODWORD(v111) = HIDWORD(v111);
  v143 = ((v135 + (v115 ^ 0x639FEF19)) ^ 0x73A23371) - 1809822644;
  v144 = (v111 >> 13) + v139;
  HIDWORD(v111) = (v115 ^ 0x639FEF19) + 1597044733 + v139 + v140 - (v142 ^ (v140 + 1)) + v144;
  LODWORD(v111) = HIDWORD(v111);
  v145 = v115 ^ 0x284B6FCB ^ v132;
  v146 = (v140 - 1742396811 + (v111 >> 6)) ^ 0xEF36CC0;
  v147 = v146 + (v142 ^ ~v144) - v142;
  v148 = v147 ^ v143;
  v149 = v147 & v143;
  v150 = v117 + 2;
  HIDWORD(v111) = v148 + v140 + 2 * v149;
  LODWORD(v111) = HIDWORD(v111);
  v151 = (v111 >> 9) + v142;
  v152 = v151 ^ v146;
  HIDWORD(v111) = v150 - 886516368 + v142 + (v151 ^ v146 ^ v144 ^ (v144 - 1));
  LODWORD(v111) = HIDWORD(v111);
  v153 = v151 ^ 0xF0E058C1 ^ (2 * v151) & 0xB05BAD4A;
  v154 = (v111 >> 17) + v144;
  HIDWORD(v111) = v145 - 1481216660 + v144 + v146 + (v152 ^ ~v154);
  LODWORD(v111) = HIDWORD(v111);
  v155 = (v111 >> 13) + v146;
  HIDWORD(v111) = v136 + 2091376816 + v146 + v153 - ((v153 - 1) ^ v154) + v155;
  LODWORD(v111) = HIDWORD(v111);
  v156 = (v111 >> 6) + v153;
  v157 = v108 ^ (v105 - (v107 ^ 0x49CD92DD)) ^ 0xC6FCEC8D ^ v115 ^ 0x639FEF19;
  HIDWORD(v111) = v136 + 977322015 + v153 + ((v156 - (v155 ^ (v154 + 1))) ^ v154);
  LODWORD(v111) = HIDWORD(v111);
  v158 = (v111 >> 9) + v154;
  v159 = (v155 ^ 0x527B2D0B) + v145;
  HIDWORD(v111) = v157 - 1800164804 + v154 + ((v158 + (v155 ^ ~v156)) ^ v155) + 2 * ((v158 + (v155 ^ ~v156)) & v155);
  LODWORD(v111) = HIDWORD(v111);
  v160 = (v111 >> 17) + v155;
  v161 = v159 + ((2 * v155) & 0xA4F65A16) - v156 + (v158 ^ (v156 + 1));
  v162 = v121 ^ v107;
  v163 = (v108 ^ 0x995BF95A) + v107 + (v115 ^ 0xA695A570);
  v164 = (v115 ^ 0xD8FA0522) + v108;
  HIDWORD(v111) = v161 + v160;
  LODWORD(v111) = v161 + v160;
  v165 = (v111 >> 13) + v156;
  v166 = (v162 ^ 0x5DBDBF10) - 785475526 + (v108 ^ 0x6CD7556) + (v115 ^ 0x3944FC5F) + v156;
  v167 = v129 - (v107 & 0x6F5DA96D) + (v108 ^ 0xAE84520B) + (v115 ^ 0x3226F283) + v165;
  HIDWORD(v111) = v166 - v158 - v160 + v165 - ((v158 - 1) ^ (1 - v158) ^ (v160 - (v160 ^ (v158 - 1))));
  LODWORD(v111) = HIDWORD(v111);
  v168 = (v111 >> 6) + v158;
  v169 = v115 ^ 0x4C08018 ^ (((v125 + (v97 ^ 0xC6A23EFC) + (v101 ^ 0x45F8B077) + 1) ^ v105 ^ 0x26922244 ^ v107 & 0xBC991870) - (v108 ^ 0x5177FFC2));
  HIDWORD(v111) = v169 - 221047186 + v158 - v160 + (v168 ^ v165 & (v160 + 1));
  LODWORD(v111) = HIDWORD(v111);
  v170 = (v111 >> 9) + v160;
  v167 += 2;
  HIDWORD(v111) = v167 + v160 + 183205725 + (v168 ^ (v165 - 1) ^ v170);
  LODWORD(v111) = HIDWORD(v111);
  v171 = (v111 >> 20) + v165;
  HIDWORD(v111) = v167 + 2061576594 + ((v171 - (v170 ^ (v168 - 1))) ^ v168);
  LODWORD(v111) = HIDWORD(v111);
  v172 = (v111 >> 10) + v168;
  HIDWORD(v111) = v157 - 1455434268 + v168 - v170 + (v171 ^ (v170 - 1)) + v172;
  LODWORD(v111) = HIDWORD(v111);
  v173 = (v111 >> 4) + v170;
  HIDWORD(v111) = v169 - 616119621 + v170 + v171 + (v173 ^ v172 & (v171 - 1));
  LODWORD(v111) = HIDWORD(v111);
  v174 = (v111 >> 5) + v171;
  HIDWORD(v111) = v163 - 1551924003 + v171 - v172 + (v173 ^ (v172 - 1)) + v174;
  LODWORD(v111) = HIDWORD(v111);
  v175 = (v111 >> 20) + v172;
  v176 = v169 + 1560700795 + ((v175 + (v173 ^ ~v174)) ^ v173);
  HIDWORD(v111) = (v176 ^ v172) + 2 * (v176 & v172);
  LODWORD(v111) = HIDWORD(v111);
  v177 = (v111 >> 10) + v173;
  HIDWORD(v111) = v173 + 1597044733 + ((v177 - (v175 ^ (v174 - 1)) + v174) ^ v119) + 2 * ((v177 - (v175 ^ (v174 - 1)) + v174) & v119);
  LODWORD(v111) = HIDWORD(v111);
  v178 = (v111 >> 4) + v174;
  HIDWORD(v111) = v150 - 1809822644 + v174 + ((v178 - (v177 ^ (v175 - 1))) ^ v175);
  LODWORD(v111) = HIDWORD(v111);
  v179 = (v111 >> 5) + v175;
  HIDWORD(v111) = v163 - 886516368 + v175 + (((v178 ^ v177) + v179 + 1) ^ v177);
  LODWORD(v111) = HIDWORD(v111);
  v180 = (v111 >> 20) + v177;
  HIDWORD(v111) = v164 - 1481216660 + v177 + ((v180 - (v179 ^ (v178 - 1))) ^ v178);
  LODWORD(v111) = HIDWORD(v111);
  v181 = (v111 >> 10) + v178;
  HIDWORD(v111) = (v108 ^ 0xF805AB73 ^ (v97 + (v101 ^ 0x464CFC73) + (v105 ^ 0xBDB9CEE4) + (v107 ^ 0x1948F4FC) + 2)) + 2091376816 + ((v115 ^ 0x639FEF19) & 0x57F62FCF) + v178 + ((v179 - 1) ^ v179 ^ v180 ^ v181);
  LODWORD(v111) = HIDWORD(v111);
  v182 = (v111 >> 4) + v179;
  HIDWORD(v111) = (((v181 ^ (v180 + 1)) + v180 + v182) ^ (v169 + 977322015)) + v179 + 2 * (((v181 ^ (v180 + 1)) + v180 + v182) & (v169 + 977322015));
  LODWORD(v111) = HIDWORD(v111);
  v183 = (v111 >> 5) + v180;
  HIDWORD(v111) = v180 - 1800164804 + ((v183 + (v182 ^ (v181 + 1))) ^ v181 ^ v115 ^ 0x9C302950 ^ (LODWORD(STACK[0x5720]) + 2)) + 2 * (((v183 + (v182 ^ (v181 + 1))) ^ v181) & (v115 ^ 0x9C302950 ^ (LODWORD(STACK[0x5720]) + 2)));
  LODWORD(v111) = HIDWORD(v111);
  v184 = (v111 >> 20) + v181;
  HIDWORD(v111) = v164 + 1383804171 + v181 + v182 - (v183 ^ (v182 + 1)) + v184;
  LODWORD(v111) = HIDWORD(v111);
  v185 = (v111 >> 10) + v182;
  LODWORD(STACK[0x5760]) = (v184 ^ LODWORD(STACK[0x5760])) + 2 * (v184 & STACK[0x5760]);
  v186 = STACK[0x5750];
  v187 = STACK[0x5740];
  LODWORD(STACK[0x5770]) += v185;
  HIDWORD(v111) = v118 - 785475526 + v182 + ((v185 + (v184 ^ (v183 - 1))) ^ v183);
  LODWORD(v111) = HIDWORD(v111);
  v188 = (v111 >> 4) + v183;
  HIDWORD(v111) = v123 - 221047186 + v183 - v184 + (v185 ^ v184) + v188 + 1;
  LODWORD(v111) = HIDWORD(v111);
  LODWORD(STACK[0x5780]) += v188;
  LODWORD(STACK[0x5790]) += ((v111 >> 5) ^ v184) + 2 * ((v111 >> 5) & v184);
  return (*(STACK[0x57D8] + 8 * ((4508 * ((v187 | v186) == 0)) ^ LODWORD(STACK[0x57A0]))))();
}

uint64_t sub_1004770EC@<X0>(char a1@<W0>, int a2@<W1>, char a3@<W2>, int a4@<W3>, char a5@<W4>, char a6@<W5>, int a7@<W6>, char a8@<W8>)
{
  v18 = STACK[0x49F0];
  *v18 = v14;
  v18[2] = v9;
  LODWORD(STACK[0x52C8]) = LODWORD(STACK[0x4310]) ^ 0x25 ^ v10;
  LODWORD(STACK[0x52B8]) = LODWORD(STACK[0x43D8]) ^ 0x6C ^ v13;
  v18[7] = a1;
  v18[1] = a6;
  LODWORD(STACK[0x5298]) = LODWORD(STACK[0x56E0]) ^ STACK[0x4340] ^ 0xFFFFFFFE;
  v18[6] = STACK[0x5780];
  v19 = LODWORD(STACK[0x43D0]) ^ ((a7 ^ 0x5C05) - 46);
  v18[3] = v11;
  LODWORD(STACK[0x5290]) = a4 ^ v19;
  v18[4] = STACK[0x5770];
  LODWORD(STACK[0x52A8]) = v15 ^ STACK[0x42C0] ^ 0xFFFFFFD9;
  v18[12] = a3;
  LODWORD(STACK[0x52A0]) = STACK[0x42E8] ^ STACK[0x5740] ^ 0xFFFFFFC7;
  v18[8] = a8;
  LODWORD(STACK[0x52C0]) = LODWORD(STACK[0x43E0]) ^ LODWORD(STACK[0x5750]) ^ 0xFFFFFFDE;
  v18[14] = STACK[0x5790];
  v18[13] = v12;
  v20 = LODWORD(STACK[0x43E8]) ^ 0xFFFFFF97;
  v18[9] = STACK[0x57A0];
  LODWORD(STACK[0x5288]) = v20 ^ STACK[0x56F0];
  v18[11] = v17;
  v21 = STACK[0x4350] ^ 0x4B;
  v18[10] = a5;
  LODWORD(STACK[0x5280]) = v21 ^ STACK[0x5720];
  v18[5] = v16;
  LODWORD(STACK[0x52D0]) = LODWORD(STACK[0x4288]) ^ 0x2D ^ a2;
  v22 = v8 & 0x10;
  LODWORD(STACK[0x5278]) = LODWORD(STACK[0x5730]) ^ STACK[0x43B8] ^ 0xFFFFFFD8;
  LODWORD(STACK[0x52B0]) = STACK[0x5760] ^ STACK[0x4418] ^ 0xFFFFFFE9;
  v18[15] = STACK[0x57C0];
  if ((v22 & STACK[0x4378]) != 0)
  {
    v22 = -v22;
  }

  LODWORD(STACK[0x52D8]) = (v22 + STACK[0x4378]) ^ v8 & 0xEF ^ 0xFFFFFF99;
  v23 = *(STACK[0x57D8] + 8 * a7);
  LODWORD(STACK[0x5210]) = 4;
  return v23();
}

uint64_t sub_100477390()
{
  if (v2 > 0xFD0B22E5 != v1 + v2 > v0 - 49626355)
  {
    v3 = v2 > 0xFD0B22E5;
  }

  else
  {
    v3 = v2 + 49601818 > v1 + v2 + 49601818;
  }

  return (*(STACK[0x57D8] + 8 * ((v3 * ((3 * (v0 ^ 0x42AA)) ^ 0x5875)) ^ v0)))();
}

uint64_t sub_1004774E0()
{
  STACK[0xE870] = v1;
  v2 = STACK[0x8D68];
  STACK[0xE878] = STACK[0x8D68];
  return (*(STACK[0x57D8] + 8 * (((v1 - v2 > 9) * ((v0 - 21692) ^ 0x2012 ^ ((v0 - 21692) | 0x4403) ^ 0x6711)) ^ v0)))();
}

uint64_t sub_10047756C@<X0>(int a1@<W8>)
{
  v1 = STACK[0x57D8];
  STACK[0x8D48] = *(STACK[0x57D8] + 8 * (a1 ^ 0x58960));
  return (*(v1 + 8 * (((((a1 ^ 0x58960) + 1392337070) & 0xAD02FFF1) - 20949) ^ a1 ^ 0x58960)))();
}

uint64_t sub_1004776B0()
{
  if (STACK[0x6280])
  {
    v1 = LODWORD(STACK[0x9A24]) >= ((v0 + 32821734) & 0xFE0B5E7E ^ (v0 + 12385));
  }

  else
  {
    v1 = 0;
  }

  v2 = !v1;
  return (*(STACK[0x57D8] + 8 * ((4084 * v2) ^ v0)))();
}

uint64_t sub_100477724@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W3>, uint64_t a4@<X8>)
{
  v8 = (a1 - a2 - 257 * ((a3 + 571598509 * (*(a4 + v6 - 939059242) + v6 - 939059242) + 801721731) / 0x101)) ^ 0x5642B04C;
  v9 = v8 ^ v7;
  v10 = (v9 ^ a2) + 2 * (v9 & a2);
  return (*(STACK[0x57D8] + 8 * ((7 * (v6 - 27942 + ((v5 - 1024666378) & 0x3D137DE7) != v4 + 16)) ^ v5)))(56244488 - v8 + ((v8 ^ v7) >> 31) + (v10 ^ (2 * v9) ^ -(v10 ^ (2 * v9)) ^ (((v8 ^ v7) >> 31) - (v10 ^ (2 * v9) ^ ((v8 ^ v7) >> 31)))) + 1381, 56244488 - v8 + ((v8 ^ v7) >> 31) - (a1 - (v8 ^ v7)) + (v10 ^ (2 * v9) ^ -(v10 ^ (2 * v9)) ^ (((v8 ^ v7) >> 31) - (v10 ^ (2 * v9) ^ ((v8 ^ v7) >> 31)))) + 1381 + v10);
}

uint64_t sub_10047786C()
{
  v1 = STACK[0x51B8] - 18310;
  STACK[0xB418] = v0;
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xA14C];
  LODWORD(STACK[0x9094]) = -32197498;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_100477A2C@<X0>(unsigned int a1@<W8>, int32x4_t a2@<Q3>)
{
  v3 = v2 + 29;
  v4 = (((v2 - 4843) | 0x7097) - 769914979) ^ a1;
  if (!v4)
  {
    return (*(STACK[0x57D8] + 8 * v3))();
  }

  v5 = 0;
  v6 = *(*STACK[0x51F0] + (*STACK[0x51E8] & 0x75F30B2C));
  v7 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v6 ^ 0x75F30B2Fu) & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v6 ^ 0x75F30B2Fu;
  v8 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v7 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v7;
  v9 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v8 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v8;
  v10 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v9 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v9;
  v11 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v10 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v10;
  v12 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v11 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v11;
  v13 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v12 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v12;
  v14 = STACK[0xA638];
  v15 = v13 ^ (1978862383 * STACK[0xA638]) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v13 & (qword_101362A48 ^ 0xDB653AB621E69720)));
  if (v4 < 8)
  {
    goto LABEL_12;
  }

  v5 = 0;
  if (v4 < 0x10)
  {
LABEL_4:
    v16 = v5;
    v5 = v4 & 0xFFFFFFF8;
    v17 = vdupq_n_s32(v16);
    v18 = vorrq_s8(v17, xmmword_101237110);
    v19 = vorrq_s8(v17, xmmword_101237120);
    v20 = vdupq_n_s32(v15);
    v21 = (v14 + v16);
    v22 = v16 - v5;
    v23.i64[0] = 0x800000008;
    v23.i64[1] = 0x800000008;
    do
    {
      a2.i64[0] = *v21;
      v42.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(a2, xmmword_101237140), v20), vmulq_s32(vaddq_s32(v18, v20), vsubq_s32(v18, v20)));
      v42.val[0] = veorq_s8(vqtbl1q_s8(a2, xmmword_101237150), veorq_s8(v20, vmulq_s32(vaddq_s32(v19, v20), vsubq_s32(v19, v20))));
      a2 = vqtbl2q_s8(v42, xmmword_101237180);
      *v21++ = vmul_s8(*a2.i8, 0x9393939393939393);
      v19 = vaddq_s32(v19, v23);
      v18 = vaddq_s32(v18, v23);
      v22 += 8;
    }

    while (v22);
    if (v5 == v4)
    {
      goto LABEL_14;
    }

LABEL_12:
    v32 = (v14 + v5);
    v33 = v4 - v5;
    v34 = v5 - v15;
    v35 = v15 + v5;
    do
    {
      *v32 = -109 * (*v32 ^ v15 ^ (v35 * v34));
      ++v32;
      ++v34;
      ++v35;
      --v33;
    }

    while (v33);
    goto LABEL_14;
  }

  v5 = v4 & 0xFFFFFFF0;
  v24 = xmmword_1012370F0;
  v25 = xmmword_101237100;
  v26 = xmmword_101237110;
  a2 = xmmword_101237120;
  v27 = v5;
  v28 = STACK[0xA638];
  v29 = vdupq_n_s32(v15);
  v30.i64[0] = 0x1000000010;
  v30.i64[1] = 0x1000000010;
  v31.i64[0] = 0x9393939393939393;
  v31.i64[1] = 0x9393939393939393;
  do
  {
    v43.val[1] = veorq_s8(vqtbl1q_s8(*v28, xmmword_101237140), veorq_s8(v29, vmulq_s32(vaddq_s32(v26, v29), vsubq_s32(v26, v29))));
    v43.val[0] = veorq_s8(vqtbl1q_s8(*v28, xmmword_101237150), veorq_s8(v29, vmulq_s32(vaddq_s32(a2, v29), vsubq_s32(a2, v29))));
    v43.val[2] = veorq_s8(vqtbl1q_s8(*v28, xmmword_101237160), veorq_s8(v29, vmulq_s32(vaddq_s32(v25, v29), vsubq_s32(v25, v29))));
    v43.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(*v28, xmmword_101237170), v29), vmulq_s32(vaddq_s32(v24, v29), vsubq_s32(v24, v29)));
    *v28++ = vmulq_s8(vqtbl4q_s8(v43, xmmword_101237130), v31);
    a2 = vaddq_s32(a2, v30);
    v26 = vaddq_s32(v26, v30);
    v25 = vaddq_s32(v25, v30);
    v24 = vaddq_s32(v24, v30);
    v27 -= 16;
  }

  while (v27);
  if (v5 != v4)
  {
    if ((v4 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_4;
  }

LABEL_14:
  if (v4 >= 0x10)
  {
    v36 = (v4 >> 3) - 1;
    do
    {
      v37 = 16777619 * ((v15 + v36) ^ v15) % v36;
      v38 = *(v14 + 8 * v37) ^ *(v14 + 8 * v36);
      *(v14 + 8 * v36) = v38;
      v39 = *(v14 + 8 * v37) ^ v38;
      *(v14 + 8 * v37) = v39;
      *(v14 + 8 * v36) ^= v39;
      v40 = v36-- + 1;
    }

    while (v40 > 2);
  }

  return (*(STACK[0x57D8] + 8 * v3))();
}

uint64_t sub_100477DA0@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x1D4C8]) = (v1 - 1723133771) ^ (1917435887 * ((((v2 - 240) | 0xCFF6F0FF) + (~(v2 - 240) | 0x30090F00)) ^ 0x294DABF8));
  STACK[0x1D4C0] = a1;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x2466)))(v2 - 240);
  return (*(v3 + 8 * (v1 - 14741)))(v4);
}

uint64_t sub_100477E28()
{
  LODWORD(STACK[0x57A0]) = v1;
  LODWORD(STACK[0x5390]) = v0;
  LODWORD(STACK[0x4E50]) = v2;
  STACK[0xD620] = 0;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v3 + 23478)))(1028);
  STACK[0xD618] = v5;
  v6 = (*(v4 + 8 * (v3 ^ 0x5BBE)))(1028);
  STACK[0xD620] = v6;
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  return (*(v4 + 8 * ((v8 * ((((v3 - 69) | 0xD2C) + 1150) ^ v3 ^ 0x14C8)) ^ v3)))();
}

uint64_t sub_100477EF8@<X0>(uint64_t a1@<X8>)
{
  v16 = v3 < v7;
  v17 = a1 + v2;
  v18 = v6 + v2;
  v19 = *(*v15 + (*v8 & ((v1 + 2611) ^ 0xFFFFC5D8) & ((v17 & 0xFFFFFFF8 ^ 0xF793B23) - 815431994 + ((2 * (v17 & 0xFFFFFFF8)) & 0x1EF27640))));
  v20 = (__ROR8__(v17 & 0xFFFFFFFFFFFFFFF8, 8) + v19) ^ v9;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (((2 * (v22 + v21)) & 0x66A899716D105C2ALL) - (v22 + v21) - 0x33544CB8B6882E16) ^ 0x8826DC2BEE6609BFLL;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (((2 * (v25 + v24)) & 0x2FEF852647FCAD3ELL) - (v25 + v24) - 0x17F7C29323FE56A0) ^ 0x1DFAC3BFD4AB8B18;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ v12;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ v5;
  v31 = __ROR8__(v30, 8);
  v32 = v30 ^ __ROR8__(v29, 61);
  v33 = *(*v15 + (*v8 & ((v18 & 0x28F20A30) + (v18 & 0xD70DF5C8 | 0x28F20A36) - 1242779725) & 0xFFFFFFF8));
  v34 = (v11 - ((v31 + v32) | v11) + ((v31 + v32) | 0xA60965E9A625A07ALL)) ^ 0x827A2E8C07C52423;
  v35 = v33 + __ROR8__(v18 & 0xFFFFFFFFFFFFFFF8, 8);
  v36 = v34 ^ __ROR8__(v32, 61);
  v37 = __ROR8__(v34, 8);
  v38 = (((2 * v35) & 0xFC2125AA204D6B9ELL) - v35 + 0x1EF6D2AEFD94A30) ^ 0x8FC09F6595A7EEBLL;
  v39 = v38 ^ __ROR8__(v33, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ v10;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v40, 8);
  v43 = __ROR8__((v42 + v41 - ((2 * (v42 + v41)) & 0xB48A8F598A907E50) + 0x5A4547ACC5483F28) ^ 0xAFB7B97FCDE21D50, 8);
  v44 = (v42 + v41 - ((2 * (v42 + v41)) & 0xB48A8F598A907E50) + 0x5A4547ACC5483F28) ^ 0xAFB7B97FCDE21D50 ^ __ROR8__(v41, 61);
  v45 = __ROR8__((v43 + v44) ^ v12, 8);
  v46 = (((2 * (v37 + v36)) & 0x16929D796E9A8346) - (v37 + v36) - 0xB494EBCB74D41A4) ^ 0xB47F7EA9747775BDLL;
  v47 = (v43 + v44) ^ v12 ^ __ROR8__(v44, 61);
  v48 = __ROR8__((v45 + v47) ^ v5, 8);
  v49 = (v45 + v47) ^ v5 ^ __ROR8__(v47, 61);
  v50 = (v14 - ((v48 + v49) | v14) + ((v48 + v49) | 0x44ADF68A8284FB9FLL)) ^ 0x60DEBDEF23647FC6;
  v51 = __ROR8__(v46, 8) + (v46 ^ __ROR8__(v36, 61));
  v52 = v50 ^ __ROR8__(v49, 61);
  v53 = __ROR8__(v50, 8);
  v54 = ((2 * (v53 + v52)) | 0x8F3392B5B5F2BE9ALL) - (v53 + v52) + 0x386636A52506A0B3;
  v55 = v2 + 1;
  *v18 = ((v51 ^ v13) >> (8 * (v17 & 7u))) ^ *v17 ^ (((__ROR8__(v54 ^ 0x875006B0E63C94ACLL, 8) + (v54 ^ 0x875006B0E63C94ACLL ^ __ROR8__(v52, 61))) ^ v13) >> (8 * (v18 & 7u)));
  if (v16 == v55 > 0x8C750023)
  {
    v16 = v55 + v7 < v3;
  }

  return (*(STACK[0x57D8] + 8 * ((v16 * v4) ^ v1)))();
}

uint64_t sub_1004782B4@<X0>(int a1@<W8>)
{
  v6 = STACK[0x7584];
  v7 = STACK[0x94E8];
  v8 = STACK[0x58AC];
  v9 = &v5[6 * v4];
  v9[2] = a1;
  v9[3] = v8;
  *(v9 + 2) = v7;
  v9[6] = v6;
  *v5 = v3 + 1;
  LODWORD(STACK[0xB1EC]) = v1;
  v11 = v1 - 1043007940 > ((v2 - 5058372) & 0xDFFFFAFE ^ 0xA214CA79) || v1 - 1043007940 < SLODWORD(STACK[0x57A0]);
  return (*(STACK[0x57D8] + 8 * ((7783 * v11) ^ v2)))();
}

uint64_t sub_1004785CC@<X0>(int a1@<W8>)
{
  v3 = (v1 - 22358) | 0x1682;
  v4 = a1 <= ((v2 + ((v3 + 1354651251) & 0xAF41FABF) - 172) ^ (v3 - 1714));
  return (*(STACK[0x57D8] + 8 * (((8 * v4) | (16 * v4)) ^ v3)))();
}

uint64_t sub_100478628()
{
  v0 = STACK[0x2604];
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 7516)))(LODWORD(STACK[0x7828]) - 2101976312 + (v0 ^ 0x5D91u) + 9481);
  STACK[0xA0B0] = v2;
  return (*(v1 + 8 * ((25 * (v2 != 0)) | v0)))();
}

uint64_t sub_10047879C()
{
  v0 = STACK[0x1B24];
  v1 = LODWORD(STACK[0x1B24]) ^ 0x1060;
  v2 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1B24]));
  return (*(v2 + 8 * ((v1 + 484) ^ v0)))();
}

uint64_t sub_100478818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = STACK[0x51B8] ^ 0x1E17;
  v7 = STACK[0x9050];
  v8 = STACK[0x57D8];
  v9 = STACK[0x17B8];
  STACK[0xBF38] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x17B8]));
  return (*(v8 + 8 * ((v6 - 11810) ^ v9)))(a1, a2, a3, a4, a5, a6, v7);
}

uint64_t sub_1004788D4(uint64_t a1, uint64_t a2)
{
  *v4 = v3;
  *(v3 + a2) = a1;
  LODWORD(STACK[0x7FDC]) = *(v3 - 0x30BDFED8F32E6831);
  LODWORD(STACK[0x85FC]) = 0;
  return (*(STACK[0x57D8] + 8 * v2))();
}

uint64_t sub_100478930()
{
  LODWORD(STACK[0xA2B0]) = 0;
  STACK[0x68C0] = 4;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 9152)))(&STACK[0x1D1CD], &STACK[0xC95C], &STACK[0x68C0], 0, 0);
  v4 = (~(v1 - 240) & 0xECE20DA66CC89CA4 | (v1 - 240) & 0x131DF2599337635BLL) ^ 0x9D7F5F682225CFF3;
  LODWORD(STACK[0x1D4C0]) = (v0 - 1079089617) ^ (551690071 * v4);
  STACK[0x1D4E0] = 551690071 * v4 + v3;
  LODWORD(STACK[0x1D4C4]) = (v0 + 889828501) ^ (551690071 * v4);
  LODWORD(STACK[0x1D4D0]) = 551690071 * v4;
  LODWORD(STACK[0x1D4CC]) = v0 + 889832479 - 551690071 * v4;
  STACK[0x1D4D8] = -551690071 * v4;
  LODWORD(STACK[0x1D4C8]) = ((v0 + 889832479) ^ 6) - 551690071 * v4;
  v5 = (*(v2 + 8 * (v0 + 9201)))(v1 - 240);
  return (*(v2 + 8 * SLODWORD(STACK[0x1D4D4])))(v5);
}

uint64_t sub_100478B08()
{
  STACK[0x6618] = STACK[0xB160];
  v2 = *STACK[0x45F8];
  v3 = *STACK[0x45F0];
  v4 = 784437427 * ((((v3 - v2 + 1755758872) ^ 0x89032CE) - 1232249988) ^ (((v3 - v2 + 1755758872) ^ 0x385B849F) - 2042172117) ^ (((v3 - v2 + 1755758872) ^ 0xB51D3E19) + 184571821)) - 218356675;
  v5 = (((v4 ^ 0x55555555) + 14) ^ ((v4 ^ 1) + 10) ^ ((v4 ^ 0xC) + 5)) & 0xB;
  v6 = (((v5 ^ 0x6BB0AC6E) - 2074884116) ^ (v5 + 269784070) ^ ((v5 ^ 0xFD2A1A2E) + 315191724)) + 617936169;
  v7 = (v6 ^ 0xE2775F13) & (2 * (v6 & 0xEB479F53)) ^ v6 & 0xEB479F53;
  v8 = ((2 * (v6 ^ 0x36777737)) ^ 0xBA61D0C8) & (v6 ^ 0x36777737) ^ (2 * (v6 ^ 0x36777737)) & 0x5D30E864;
  v9 = v8 ^ 0x45102824;
  v10 = (v8 ^ 0x9820C060) & (4 * v7) ^ v7;
  v11 = ((4 * v9) ^ 0x74C3A190) & v9 ^ (4 * v9) & 0xDD30E864;
  v12 = (v11 ^ 0x5400A000) & (16 * v10) ^ v10;
  v13 = ((16 * (v11 ^ 0x89304864)) ^ 0xD30E8640) & (v11 ^ 0x89304864) ^ (16 * (v11 ^ 0x89304864)) & 0xDD30E860;
  v14 = v12 ^ 0xDD30E864 ^ (v13 ^ 0xD1008000) & (v12 << 8);
  LODWORD(STACK[0xBE38]) = (16 * v6) ^ (32 * ((v14 << 16) & 0x5300000 ^ v14 ^ ((v14 << 16) ^ 0x640000) & (((v13 ^ 0xC306824) << 8) & 0x5300000 ^ 0x5100000 ^ (((v13 ^ 0xC306824) << 8) ^ 0xE80000) & (v13 ^ 0xC306824)))) ^ 0x1664F9B0;
  v15 = v3 + v2 - ((2 * (v3 + v2)) & 0x70588FDE) - 1205057553;
  v16 = 784437427 * (((v15 ^ 0xAF03025C) - 1660959676) ^ ((v15 ^ 0xA8C8999E) - 1691066494) ^ ((v15 ^ 0x5297957D) + 1634423651)) + 1163380432;
  v17 = (((v16 ^ 0xD) + 18) ^ ((v16 ^ 0xFFFFFFFB) + 8) ^ ((v16 ^ 0x16) + 11)) & 0x17;
  if (v17 == 1)
  {
    v17 = 0;
  }

  LODWORD(STACK[0xA4D0]) = v17;
  STACK[0x6BD0] = 4;
  v18 = STACK[0x57D8];
  v19 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x2440)))(&STACK[0x1D1CD], &STACK[0x7E18], &STACK[0x6BD0], 0, 0);
  v20 = STACK[0x3640];
  LODWORD(STACK[0x1D4C4]) = (v0 + 1174007281) ^ (551690071 * STACK[0x3640]);
  STACK[0x1D4E0] = 551690071 * v20 + v19;
  STACK[0x1D4D8] = -551690071 * v20;
  LODWORD(STACK[0x1D4C8]) = v0 - 551690071 * v20 + 1174008548;
  LODWORD(STACK[0x1D4CC]) = v0 - 551690071 * v20 + 1174008683;
  LODWORD(STACK[0x1D4D0]) = 551690071 * v20;
  LODWORD(STACK[0x1D4C0]) = (v0 - 1079089617) ^ (551690071 * v20);
  v21 = (*(v18 + 8 * (v0 ^ 0x2411)))(v1 - 240);
  return (*(v18 + 8 * SLODWORD(STACK[0x1D4D4])))(v21);
}

uint64_t sub_100478F24()
{
  LODWORD(STACK[0x5F40]) = v1;
  v2 = STACK[0x57D8];
  STACK[0x9AC0] = *(STACK[0x57D8] + 8 * (v0 - 20864));
  return (*(v2 + 8 * (((v0 - 8502) ^ 0x3D54) + v0 - 20864)))(15115, 4404, 0x683CBC57EAB92A3ELL, 22622);
}

uint64_t sub_100478F94@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 592) = a1;
  *(v2 + 600) = (v1 - 1723122193) ^ (1917435887 * ((v3 & 0x416BECB5 | ~(v3 | 0x416BECB5)) ^ 0x582F484C));
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v1 + 20756)))(v4 - 240);
  return (*(v5 + 8 * v1))(v6);
}

uint64_t sub_100479014()
{
  v0 = STACK[0x2EB8];
  STACK[0xAF90] = STACK[0x67A8];
  LODWORD(STACK[0x88FC]) = -1964076491;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100479054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v23 = v10 - 1;
  v24 = __ROR8__((v11 + v23) & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = ((v24 + a8) | v21) - ((v24 + a8) | a4) + a4;
  v26 = v25 ^ v22;
  v27 = v25 ^ v14;
  v28 = (__ROR8__(v26, 8) + v27) ^ a3;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ a2;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v12;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (a6 - ((v34 + v33) | a6) + ((v34 + v33) | a7)) ^ a9;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = __ROR8__(v35, 8);
  v38 = __ROR8__(((v15 & (2 * (v37 + v36))) - (v37 + v36) + v16) ^ v17, 8);
  v39 = ((v15 & (2 * (v37 + v36))) - (v37 + v36) + v16) ^ v17 ^ __ROR8__(v36, 61);
  v40 = (v38 + v39 - (v18 & (2 * (v38 + v39))) + v19) ^ v20;
  *(a1 + v23) = *(v11 + v23) ^ (((__ROR8__(v40, 8) + (v40 ^ __ROR8__(v39, 61))) ^ v13) >> (8 * ((v11 + v23) & 7))) ^ 0xF;
  return (*(STACK[0x57D8] + 8 * (((v23 == 0) * a5) ^ v9)))();
}

uint64_t sub_100479148@<X0>(int a1@<W8>)
{
  v1 = STACK[0x9F70] != 0;
  LOBYTE(STACK[0x67CF]) = STACK[0x9F70] == 0;
  return (*(STACK[0x57D8] + 8 * ((((((a1 ^ 0x795D) + 22483) ^ 0xFFFFA6FA) + 3 * (a1 ^ 0x795D)) * v1) ^ a1)))();
}

uint64_t sub_100479278@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v15 = *v14 & 0xFFFFFFFFFFFFFFF8;
  v16 = *(*v13 + ((((v5 + v8) & 0xFFFFFFF8 ^ 0x429767F3) + 933548327 + ((2 * ((v5 + v8) & 0xFFFFFFF8)) & 0x852ECFE0)) & v15));
  v17 = (v16 + __ROR8__((v5 + v8) & 0xFFFFFFFFFFFFFFF8, 8)) ^ v9;
  v18 = __ROR8__(v17, 8);
  v19 = v17 ^ __ROR8__(v16, 61);
  v20 = ((((v18 + v19) << (114 * (v7 ^ 0x7Du) - 85)) & 0xFF20E1711EFC3AFCLL) - (v18 + v19) + 0x6F8F477081E281) ^ 0x38A73E2D97848AF6;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ a2;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ v12;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = __ROR8__((0x10F6FCF33CEE90D3 - ((v26 + v25) ^ 0xAA47DDBF43B885E3 | 0x10F6FCF33CEE90D3) + ((v26 + v25) ^ 0xAA47DDBF43B885E3 | 0xEF09030CC3116F2CLL)) ^ 0x9F2E95BF830B5556, 8);
  v28 = (0x10F6FCF33CEE90D3 - ((v26 + v25) ^ 0xAA47DDBF43B885E3 | 0x10F6FCF33CEE90D3) + ((v26 + v25) ^ 0xAA47DDBF43B885E3 | 0xEF09030CC3116F2CLL)) ^ 0x9F2E95BF830B5556 ^ __ROR8__(v25, 61);
  v29 = (v27 + v28 - ((2 * (v27 + v28)) & 0xCBA0504DA9542FCCLL) - 0x1A2FD7D92B55E81ALL) ^ 0x1FE5CAEB1F942621;
  v30 = *(*v13 + ((((a5 + v8) & 0xFFFFFFF8 ^ LODWORD(STACK[0x23F8])) - 329544798 + ((2 * ((a5 + v8) & 0xFFFFFFF8)) & 0x1AEDFBE0)) & v15));
  v31 = __ROR8__(v29, 8);
  v32 = v29 ^ __ROR8__(v28, 61);
  v33 = (v30 + __ROR8__((a5 + v8) & 0xFFFFFFFFFFFFFFF8, 8)) ^ a1;
  v34 = __ROR8__(v33, 8);
  v35 = v33 ^ __ROR8__(v30, 61);
  v36 = (((2 * (v34 + v35)) & 0xDD5454B83135769CLL) - (v34 + v35) - 0x6EAA2A5C189ABB4FLL) ^ 0x8467974DDB952EF8;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ a3;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (0x9CAA99FBD7D2BAC1 - ((v40 + v39) | 0x9CAA99FBD7D2BAC1) + ((v40 + v39) | 0x63556604282D453ELL)) ^ 0x86FA7CB7069079E3;
  v42 = (((2 * (v31 + v32)) & 0x7494B58C64702EAALL) - (v31 + v32) - 0x3A4A5AC632381756) ^ 0x1745A9DFED223B04;
  v43 = v41 ^ __ROR8__(v39, 61);
  v44 = (__ROR8__(v41, 8) + v43) ^ v11;
  v45 = v42 ^ __ROR8__(v32, 61);
  v46 = v44 ^ __ROR8__(v43, 61);
  v47 = __ROR8__(v42, 8);
  v48 = (__ROR8__(v44, 8) + v46) ^ a4;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = __ROR8__(v48, 8);
  v51 = (0x37EAB2C7B95E212FLL - ((v50 + v49) | 0x37EAB2C7B95E212FLL) + ((v50 + v49) | 0xC8154D3846A1DED0)) ^ 0x9798A106E539D4CBLL;
  *(a5 + v8) = (((((2 * (v47 + v45)) | 0x34D24F47BF03DC7CLL) - (v47 + v45) + 0x6596D85C207E11C2) ^ 0x6E1A2C9271F19B45uLL) >> (8 * ((v5 + v8) & 7))) ^ (((__ROR8__(v51, 8) + (v51 ^ __ROR8__(v49, 61))) ^ v10) >> (8 * ((a5 + v8) & 7))) ^ *(v5 + v8);
  return (*(STACK[0x57D8] + 8 * ((242 * (((v8 + 1) ^ v6) != 758620673)) ^ v7)))();
}

uint64_t sub_100479830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v10 = v9 - 103679699 + (*(a7 + 68) & 0x3Fu) - 64 < 0xFFFFFFC0;
  STACK[0x7240] = a7;
  LODWORD(STACK[0x721C]) = v9;
  STACK[0x7EF8] = v7;
  return (*(STACK[0x57D8] + 8 * ((v10 * ((((v8 - 1791396548) & 0x6AC66FFB) + 11485) ^ 0x584F)) ^ v8)))();
}

uint64_t sub_100479908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = STACK[0x51B8] - 21180;
  v5 = STACK[0xCB18];
  v6 = STACK[0x6924];
  LODWORD(STACK[0x7354]) = -143113071;
  STACK[0x6000] = 0;
  LODWORD(STACK[0xAB5C]) = -769884012;
  LODWORD(STACK[0x606C]) = -143113071;
  STACK[0x8568] = v5 + 4;
  v7 = (v6 + 1829501674) ^ 0x3FE8AE12;
  v8 = ((2 * ((v6 + 1829501674) & 0x92F40512)) & 0x25080A00 | (v6 + 1829501674) & 0x92F40512) ^ (2 * ((v6 + 1829501674) & 0x92F40512)) & v7;
  v9 = ((2 * v7) ^ 0x5A395600) & v7 ^ (2 * v7) & 0xAD1CAB00;
  v10 = v9 ^ 0xA504A900;
  v11 = v8 ^ 0xAD1CAB00 ^ (v9 ^ 0x28148100) & (4 * v8);
  v12 = ((4 * v10) ^ 0xB472AC00) & v10 ^ (4 * v10) & 0xAD1CAB00;
  v13 = v12 & 0x247398A8 ^ v11 ^ (v12 ^ 0xA410A800) & ((16 * v11) ^ 0xF5B928A8);
  v14 = ((16 * v12) ^ 0x657918A8) & (v12 ^ 0xA410A800) ^ v12 & 0x247398A8;
  v15 = v14 & 0x247398A8 ^ v13 ^ ((v13 << 8) ^ 0x285098A8) & (v14 ^ 0x24108800);
  v16 = ((v14 << 8) ^ 0x34FB98A8) & (v14 ^ 0x24108800) ^ v14 & 0x247398A8;
  LODWORD(STACK[0xB78C]) = (v6 + 1829501674) ^ (2 * (v15 ^ v16 & 0x247398A8 ^ ((v15 << 16) ^ 0x8F7398A8) & (v16 ^ 0x90C0000) ^ ((v15 << 16) ^ 0x8F7398A8) & 0x2D1C8800)) ^ 0x52F0C386;
  return (*(STACK[0x57D8] + 8 * (v4 ^ 0x144F)))(a1, 22611, a3, a4, 19);
}

uint64_t sub_100479BD4(uint64_t a1)
{
  v8 = (v1 + v6);
  *v2 = v8[2] ^ 0xCA;
  v2[1] = *(v1 + a1) ^ 0xA6;
  v2[2] = (-65 * (v4 ^ 0x8E)) ^ v8[3] ^ 0x8A;
  v2[3] = v8[1] ^ 0x4A;
  v9 = v3 + v6 + 4 + 3463;
  v11 = v5 < v7 || v5 > v9;
  return (*(STACK[0x57D8] + 8 * (v4 | (4 * v11))))();
}

uint64_t sub_100479CBC()
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xA038];
  LODWORD(STACK[0x9094]) = -32197494;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100479E20()
{
  v1 = STACK[0x57D8];
  STACK[0xD900] = *(STACK[0x57D8] + 8 * (v0 - 23476));
  return (*(v1 + 8 * (v0 - 16814)))();
}

uint64_t sub_100479EF4()
{
  v0 = (STACK[0x51B8] - 22614) | 0xA08;
  *(STACK[0xAD68] - 0x1883660EE814440ALL) = STACK[0xDBF4];
  return (*(STACK[0x57D8] + 8 * (((LODWORD(STACK[0xDBF8]) == -143113071) * (v0 + 13604)) ^ LODWORD(STACK[0x1964]))))();
}

uint64_t sub_10047A1A4()
{
  v2 = *(STACK[0x7078] - 0x683CBC57EAB92A3ELL);
  STACK[0xB7B8] = 0;
  return (*(STACK[0x57D8] + 8 * (((((v0 - 41) ^ (v2 == v1)) & 1) * (((v0 - 498860537) & 0x1DBBF85E) - 21663)) ^ v0)))();
}

uint64_t sub_10047A280()
{
  v1 = STACK[0x57D8];
  STACK[0x8140] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 + 15117)))();
}

uint64_t sub_10047A4B4()
{
  v0 = STACK[0x51B8];
  LODWORD(STACK[0xBE7C]) = LODWORD(STACK[0x5DB4]) << (STACK[0x51B8] - 82);
  v1 = STACK[0x57D8];
  STACK[0x9078] = *(STACK[0x57D8] + 8 * (v0 - 22058));
  return (*(v1 + 8 * (v0 - 17146)))();
}

uint64_t sub_10047A588()
{
  v1 = STACK[0x51B8];
  *STACK[0x8648] = 0x67310FA72B6EDB77 * (((v0 ^ 0x8FE7E12642BC2F6ALL) - 0x3181B32B5FBF6F2CLL) ^ ((v0 ^ 0xA2BDDBB95639DCACLL) - 0x1CDB89B44B3A9CEALL) ^ ((v0 ^ 0x40B0D541A5294BCALL) + 0x12978B347D5F474)) + 0x3E4063E8CF6693EFLL;
  return (*(STACK[0x57D8] + 8 * (v1 - 11540)))();
}

uint64_t sub_10047A658()
{
  v1 = STACK[0x57D8];
  STACK[0x5838] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x2AF4 ^ ((v0 + 12981) | 0x755))))();
}

uint64_t sub_10047A6B0@<X0>(unsigned int a1@<W8>)
{
  v3 = STACK[0x65E8] + v1;
  LODWORD(STACK[0xE5B8]) = LODWORD(STACK[0x5750]) - 2101965948 - v1;
  STACK[0x7050] = v3;
  return (*(STACK[0x57D8] + 8 * (a1 ^ (a1 - v2) ^ 0xE4845463 ^ (7891 * (a1 < 0xE70573C7)))))();
}

uint64_t sub_10047A77C()
{
  STACK[0xD300] = STACK[0xA000];
  STACK[0x86F8] = STACK[0x80E0];
  STACK[0xAA90] = 0x1883660EE8144416;
  return (*(STACK[0x57D8] + 8 * ((v0 + 2125568207) & 0x814E3B06 ^ 0x4EED ^ (((v0 + 2125568207) & 0x814E3B06) + 20050))))();
}

uint64_t sub_10047AA98@<X0>(unsigned int a1@<W8>)
{
  v2 = *(STACK[0x6640] + (a1 & 0xFFFFFFFC) + 8) >> (((v1 - 123) ^ 0x48) & (8 * a1) ^ 0x18);
  *(STACK[0x92E0] + a1) = ((((v2 - ((2 * v2) & 0x48) - 92) ^ 0x42) - 119) ^ (((v2 - ((2 * v2) & 0x48) - 92) ^ 0x5A) - 111) ^ (((v2 - ((2 * v2) & 0x48) - 92) ^ 0xBC) + 119)) - 35;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_10047AB28()
{
  LODWORD(STACK[0x72D4]) = v0;
  v2 = STACK[0x57D8];
  STACK[0x89D8] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v1 + 5224)))();
}

uint64_t sub_10047ABE4()
{
  v2 = STACK[0x51B8];
  v3 = STACK[0x7B00];
  *(v0 + 592) = STACK[0x51B8] - 711523751 * ((1107918305 - ((v1 - 240) | 0x42097DE1) + ((v1 - 240) | 0xBDF6821E)) ^ 0x8DECA3CF) + 4438;
  *(v0 + 600) = v3;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v2 + 9156)))(v1 - 240);
  return (*(v4 + 8 * (v2 - 14536)))(v5);
}

uint64_t sub_10047AC80()
{
  v1 = STACK[0x57D8];
  v2 = *(v1 + 8 * ((((*(STACK[0x57D8] + 8 * (v0 ^ 0x383B)))(48) != 0) * (((v0 - 1253853327) & 0x4ABC5CDF ^ 0xFFFFF2E6) + (v0 ^ 0x1172))) ^ v0));
  return v2();
}

uint64_t sub_10047ACEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = a8 - 0x77CF00E509AE9635;
  v9 = (v8 ^ 0xD87762F79506CFE2) & (2 * (v8 & 0x996774E7C194EFCALL)) ^ v8 & 0x996774E7C194EFCALL;
  v10 = ((STACK[0x51B8] - 18019 - 0x79D693C0528BB39BLL) ^ (2 * (v8 ^ 0xDA73C2F8172EC0E6))) & (v8 ^ 0xDA73C2F8172EC0E6) ^ (2 * (v8 ^ 0xDA73C2F8172EC0E6)) & 0x4314B61FD6BA2F2CLL;
  v11 = v10 ^ 0x41149200528A2124;
  v12 = (v10 ^ 0x200241F04300E08) & (4 * v9) ^ v9;
  v13 = ((4 * v11) ^ 0xC52D87F5AE8BCB0) & v11 ^ (4 * v11) & 0x4314B61FD6BA2F2CLL;
  v14 = (v13 ^ 0x10901F52A82C20) & (16 * v12) ^ v12;
  v15 = ((16 * (v13 ^ 0x430426008412030CLL)) ^ 0x314B61FD6BA2F2C0) & (v13 ^ 0x430426008412030CLL) ^ (16 * (v13 ^ 0x430426008412030CLL)) & 0x4314B61FD6BA2F20;
  v16 = (v15 ^ 0x100201D42A22200) & (v14 << 8) ^ v14;
  v17 = (((v15 ^ 0x4214960294180D2CLL) << 8) ^ 0x14B61FD6BA2F2C00) & (v15 ^ 0x4214960294180D2CLL) ^ ((v15 ^ 0x4214960294180D2CLL) << 8) & 0x4314B61FD6BA2F00;
  v18 = v16 ^ 0x4314B61FD6BA2F2CLL ^ (v17 ^ 0x141616922A0000) & (v16 << 16);
  v19 = v8 ^ (2 * ((v18 << 32) & 0x4314B61F00000000 ^ v18 ^ ((v18 << 32) ^ 0x56BA2F2C00000000) & (((v17 ^ 0x4300A0094490032CLL) << 16) & 0x4314B61F00000000 ^ 0x4100200500000000 ^ (((v17 ^ 0x4300A0094490032CLL) << 16) ^ 0x361FD6BA00000000) & (v17 ^ 0x4300A0094490032CLL))));
  STACK[0x9E08] = (*(*STACK[0x51F0] + (*STACK[0x51E8] & 0xA66FDD90)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x7E38F0E06E9D52ELL) + 0x48D8ABA53D921A07 * (((v19 ^ 0x3ABCB5E1E97E0CEBLL) - 0x3AEACB622AFA663FLL) ^ ((v19 ^ 0xA3C8F98C071ACD8) - 0xA6AF11B03F5C60CLL) ^ ((v19 ^ 0xABEE6EB945EF11A1) + 0x5447EFC57994848BLL)) + 0x4BC22D8CC5F31AEALL;
  return (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x8B8])))(a1, a2, a3, a4, a5, a6, a7, LODWORD(STACK[0xE3A4]));
}

uint64_t sub_10047B01C()
{
  v1 = STACK[0xBA88];
  v2 = *(STACK[0xBA88] - 0x1883660EE814440ALL);
  LODWORD(STACK[0xDC04]) = v2 + 8;
  v3 = *(v1 - 0x1883660EE814440ELL) + 2069400901;
  v2 += 2069400909;
  v4 = v2 < LODWORD(STACK[0x11B4]);
  v5 = v3 < v2;
  if (v4 != v3 < ((((v0 - 1318425250) & 0x4E952FE9) + 20590) ^ 0xF8A25997))
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = (STACK[0x7990] == 0) | v6 & 1;
  if (v7)
  {
    v8 = -143155721;
  }

  else
  {
    v8 = -143113071;
  }

  LODWORD(STACK[0xDC08]) = v8;
  return (*(STACK[0x57D8] + 8 * ((7 * v7) ^ v0)))();
}

uint64_t sub_10047B110@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xB664]) = STACK[0x7BA8];
  STACK[0xC080] = STACK[0xA6D0];
  STACK[0x6578] = STACK[0xB5D0];
  LOBYTE(STACK[0xC2BB]) = v2;
  STACK[0x6020] = *STACK[0x8648];
  v3 = STACK[0x7ED8];
  v4 = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x5D28] = v4;
  STACK[0x5D90] = (v4 + 16);
  STACK[0x90A0] = (v4 + 32);
  STACK[0x6430] = (v4 + 48);
  STACK[0x7ED8] = (v1 - 23287) + v3 - 547;
  LODWORD(STACK[0x77EC]) = a1 ^ 0xD21C8094;
  LODWORD(STACK[0xBD5C]) = ((v1 - 23415) | 0x80) ^ LODWORD(STACK[0x924C]) ^ 0xD21C8207;
  STACK[0x6E08] = 0xF726234C92AC6E47 * STACK[0x68D8] - 0x291872199EE7C0FFLL;
  return (*(STACK[0x57D8] + 8 * ((78 * (v2 == 0)) ^ v1)))();
}

uint64_t sub_10047B418()
{
  v1 = STACK[0x2DE4] & 0x94877F9F;
  v2 = STACK[0x51B8] - 8480;
  LODWORD(STACK[0xB620]) = v0;
  return (*(STACK[0x57D8] + 8 * ((20913 * (v0 == v1 - 143114872)) ^ v2)))();
}

uint64_t sub_10047B4A8@<X0>(uint64_t a1@<X5>, uint64_t a2@<X7>, unint64_t a3@<X8>)
{
  v4 = __ROR8__(a3 & 0xFFFFFFFFFFFFFFF8, 8);
  v5 = ((v4 + a2) | 0x1FFDB7523FBC74BBLL) - ((v4 + a2) | 0xE00248ADC0438B44) - 0x1FFDB7523FBC74BCLL;
  v6 = __ROR8__(v5 ^ (v3 + 21394) ^ 0x1A9B953AF66E3A40, 8);
  v5 ^= 0x640E14F144625E9uLL;
  v7 = (v6 + v5) ^ a1;
  v8 = v7 ^ __ROR8__(v5, 61);
  v9 = (__ROR8__(v7, 8) + v8) ^ 0x1038643522CD1792;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = __ROR8__(v9, 8);
  v12 = (v11 + v10 - ((2 * (v11 + v10)) & 0xA695255598D09290) + 0x534A92AACC684948) ^ 0xECBC50B1ED66067FLL ^ __ROR8__(v10, 61);
  v13 = (__ROR8__((v11 + v10 - ((2 * (v11 + v10)) & 0xA695255598D09290) + 0x534A92AACC684948) ^ 0xECBC50B1ED66067FLL, 8) + v12) ^ 0x9882E727DB37CF94;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0x5FD252103B569EALL;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (v17 + v16 - ((2 * (v17 + v16)) & 0x6699C651BCE8378) + 0x334CE328DE741BCLL) ^ 0x7862E807B3C37A16;
  v19 = __ROR8__(v18, 8);
  v20 = __ROR8__(v16, 61);
  *a3 = (((((2 * (v19 + (v18 ^ v20))) & 0x98C09E948C585CA0) - (v19 + (v18 ^ v20)) + 0x339FB0B5B9D3D1AFLL) ^ 0x9C84645833B5C7E4) >> (8 * (a3 & 7u))) ^ 0x22;
  return (*(STACK[0x57D8] + 8 * (v3 ^ 0x132C)))(0x1C64917143BAF700, 0x7B5626353E243BAALL);
}

uint64_t sub_10047B6F8()
{
  v1 = STACK[0x57D8];
  STACK[0xBCF8] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * ((9850 * (v0 == -1958561250)) ^ (v0 + 6990))))();
}

uint64_t sub_10047B784@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W4>, int a5@<W6>, int a6@<W7>, int a7@<W8>)
{
  LODWORD(STACK[0x5330]) = LODWORD(STACK[0x4400]) | LODWORD(STACK[0x5140]);
  LODWORD(STACK[0x5350]) = LODWORD(STACK[0x4368]) | LODWORD(STACK[0x43E8]);
  LODWORD(STACK[0x4288]) = LODWORD(STACK[0x4360]) | LODWORD(STACK[0x4370]);
  LODWORD(STACK[0x5500]) = v7 & (a1 ^ 0xC9C4AD8B);
  LODWORD(STACK[0x53C8]) = STACK[0x5348] & (a7 ^ 0xBBA76DCF);
  LODWORD(STACK[0x5600]) = STACK[0x5368] & (LODWORD(STACK[0x5430]) ^ 0x1EA02D62);
  LODWORD(STACK[0x5430]) = STACK[0x5360] & (a2 ^ 0x6A8D45F8);
  LODWORD(STACK[0x54F0]) = v10 & (LODWORD(STACK[0x5340]) ^ 0x58EBF4E1);
  LODWORD(STACK[0x53C0]) = STACK[0x5380] & (v18 ^ 0x994DF601);
  LODWORD(STACK[0x5640]) = STACK[0x53A8] & (a4 ^ 0x5E7D0E3D);
  LODWORD(STACK[0x53B8]) = v8 & (a6 ^ 0x385511D4);
  LODWORD(STACK[0x54E0]) = STACK[0x53D8] & (a3 ^ 0x80F249A8);
  LODWORD(STACK[0x5420]) = v12 & (LODWORD(STACK[0x5420]) ^ 0xEC8C98B2);
  LODWORD(STACK[0x5540]) = v9 & (LODWORD(STACK[0x54C0]) ^ 0xDC02E055);
  LODWORD(STACK[0x53D0]) &= v11 ^ 0xD4E4FCD8;
  LODWORD(STACK[0x54C0]) = v13 & (a5 ^ 0x6281525F);
  LODWORD(STACK[0x53A8]) = v14 & (a6 ^ 0xC753BFC7);
  LODWORD(STACK[0x53D8]) = v17 & (v15 ^ 0x59B0621);
  return (*(STACK[0x57D8] + 8 * (v16 + 6861)))(32028458, STACK[0x57B0], STACK[0x5710], 1184870604, 3786932224, STACK[0x57A0], 255, 26193860);
}

uint64_t sub_10047BA7C@<X0>(int a1@<W5>, int a2@<W8>)
{
  v5 = *(STACK[0x8070] + (v4 + ((2 * v3) ^ 0x712Au) + v2 * a2 + 3822) % 0x3282);
  *(STACK[0x8070] + (v2 * a2 + 133474003) % 0x3282u) = *(STACK[0x8070] + (a1 + (((v5 ^ 0xBA193D87) + 1172750969) ^ ((v5 ^ 0xBD85C72F) + 1115306193) ^ ((v5 ^ 0x79CFA1F) - 127728159)) * a2) % 0x3282);
  return (*(STACK[0x57D8] + 8 * ((182 * (v2 == 255)) ^ v3)))();
}

uint64_t sub_10047BB74()
{
  v4 = v1 < v2;
  if (v4 == v3 - 975877056 < v2)
  {
    v4 = v3 - 975877056 < v1;
  }

  return (*(STACK[0x57D8] + 8 * ((1000 * !v4) ^ v0)))();
}

uint64_t sub_10047C574@<X0>(unint64_t a1@<X8>)
{
  v3 = v1 - 2920;
  STACK[0x1D4C8] = a1;
  LODWORD(STACK[0x1D4C0]) = (v1 + 1717148634) ^ (1964904101 * ((v2 + 1350014674 - 2 * ((v2 - 240) & 0x507797C2)) ^ 0xAA557C46));
  v4 = v1 ^ 0x2413;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * v4))(v2 - 240);
  return (*(v5 + 8 * v3))(v6);
}

uint64_t sub_10047C5F8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v9 = *(*(v8 + 4000) + 4 * (a4 % (v7 ^ 0x8A8u)));
  *(*(v8 + 4008) + v6 - 5896 * ((((v6 >> 3) * v5) >> 64) >> 4)) = (v9 ^ ((v9 ^ 0xE0) - 88) ^ ((v9 ^ 0x29) + 111) ^ 0xB8) + 101;
  return (*(STACK[0x57D8] + 8 * ((6769 * (v4 == 0)) ^ v7)))(a1, a2, a3, a4 + 2717);
}

uint64_t sub_10047C684(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, char a6, int a7)
{
  v14 = *(v9 + v10);
  v15 = *(((2 * v11) ^ 0x8E62u) + a5 + (v14 ^ 0xF) - 4784);
  v16 = v7 < a4;
  LODWORD(v14) = v14 ^ 0x4B ^ v15 ^ (2 * ((v14 ^ 0x4B ^ v15) & a7));
  v17 = ((v14 & a6) >> v13) - ((2 * ((v14 & a6) >> v13)) & 0x3C) + 30;
  LODWORD(v14) = (v14 << v12) - ((2 * (v14 << v12)) & 0x6A) + 53;
  LOBYTE(v14) = (((v14 ^ 0xEA) + 22) ^ ((v14 ^ 0x12) - 18) ^ ((v14 ^ 0xCD) + 51)) + (((v17 ^ 0xCA) + 54) ^ ((v17 ^ 0x6A) - 106) ^ ((v17 ^ 0xBE) + 66)) + 104;
  v18 = v14 & 0x83 | 0x5C;
  v19 = v14 ^ 0x6A;
  *(v9 + v10) = v14 ^ (2 * (v19 & (2 * (v19 & (2 * (v19 & (2 * (v19 & (2 * (v19 & (2 * (v19 & (2 * (v14 & 0x83)) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ 0x34;
  v20 = v10 + 1;
  if (v16 == v20 > 0x4FACDCF)
  {
    v16 = v7 > v20 + a4;
  }

  return (*(STACK[0x57D8] + 8 * ((56 * !v16) ^ v8)))();
}

uint64_t sub_10047C824(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  LODWORD(STACK[0x53B0]) = a2;
  v17 = a3 & 0xFFFFFFFE ^ 0x7F6536A3;
  LODWORD(STACK[0x5340]) = v17;
  v18 = STACK[0xD638];
  STACK[0x52F0] = STACK[0xD638];
  v19 = STACK[0x5170];
  HIDWORD(v21) = *(STACK[0x5170] + (*(v18 + v17) ^ 0x98));
  LODWORD(v21) = (HIDWORD(v21) ^ 0x30) << 24;
  v20 = v21 >> 28;
  LODWORD(STACK[0x51E0]) = a2 + 6518;
  v22 = a3 & ((a2 + 6518) ^ 0xFFFFADC5) ^ 0x7F6536AB;
  LODWORD(STACK[0x5348]) = v22;
  v23 = STACK[0x5178];
  LOBYTE(v22) = ((*(a1 + v22) ^ 0xEC) + (*(a1 + v22) ^ 0xCE) + *(STACK[0x5178] + (*(a1 + v22) ^ 0x26)) - 5) ^ 0xA1;
  v24 = a3 & 0xFFFFFFF7 ^ 0x7F6536AB;
  LODWORD(STACK[0x5310]) = v24;
  v25 = STACK[0x5180];
  v26 = *(STACK[0x5180] + (*(v18 + v24) ^ 0xC2));
  v27 = (v22 << 8) | ((v26 ^ (v26 >> 4) & 0xC ^ 0x40) << 24);
  v28 = a3 & 0xFFFFFFF0 ^ 0x7F6536AF;
  LODWORD(STACK[0x52D8]) = v28;
  LOBYTE(v28) = (*(v18 + v28) ^ 0x10) + (*(v18 + v28) ^ 0x32) + *(v23 + (*(v18 + v28) ^ 0xF8));
  v29 = a3 & 0xFFFFFFF1 ^ 0x7F6536AF;
  LODWORD(STACK[0x5308]) = v29;
  v30 = *(v25 + (*(v18 + v29) ^ 0xB6));
  LODWORD(STACK[0x52F8]) = a3 ^ 0x7F6536A3;
  v31 = (v28 - 5) ^ 0x20 | (((v30 ^ 0x65) & 0x7F ^ (v30 & 0x80 | 0x78) ^ ((v30 ^ 0x65u) >> 4) & 0xC) << 8);
  HIDWORD(v21) = *(v19 + (*(v18 + (a3 ^ 0x7F6536A3u)) ^ 0x27));
  LODWORD(v21) = (HIDWORD(v21) ^ 0x30) << 24;
  v32 = a3 & 0xFFFFFFF3 ^ 0x7F6536AF;
  LODWORD(STACK[0x5300]) = v32;
  v33 = (*(v18 + v32) ^ 0xA8) + (*(v18 + v32) ^ 0x8A) + *(v23 + (*(v18 + v32) ^ 0x40));
  v34 = a3 & 0xFFFFFFFC ^ 0x7F6536A3;
  LODWORD(STACK[0x52E0]) = v34;
  v35 = v31 | (((v33 - 5) ^ 0xD1) << 24);
  v36 = *(v25 + (*(a1 + v34) ^ 0xAELL));
  v37 = v36 ^ 0x95 ^ (v36 >> 4) & 0xC | ((v20 ^ 0x75) << 16);
  v38 = a3 & 0xFFFFFFFD ^ 0x7F6536A3;
  LODWORD(STACK[0x52E8]) = v38;
  v39 = v37 & 0xFFFF00FF | ((((*(v18 + v38) ^ 0x6E) + (*(v18 + v38) ^ 0x4C) + *(v23 + (*(v18 + v38) ^ 0xA4)) - 5) ^ 0xA5) << 8) | (((v21 >> 28) ^ 0xFFFFFFE7) << 24);
  v40 = a3 & 0xFFFFFFF2 ^ 0x7F6536AF;
  LODWORD(STACK[0x52C0]) = v40;
  v41 = *(v25 + (*(v18 + v40) ^ 0xA4));
  v42 = v35 | (((v41 ^ (v41 >> 4) & 0xC) ^ 0x30) << 16);
  LODWORD(v25) = STACK[0x53F0];
  v43 = a3 & 0xFFFFFFFB ^ 0x7F6536A7;
  LODWORD(STACK[0x5338]) = v43;
  v44 = STACK[0x5188];
  v45 = *(STACK[0x5188] + (*(v18 + v43) ^ 0xDFLL)) ^ (*(v18 + v43) - ((2 * *(v18 + v43)) & 0xB6) - 37);
  v46 = a3 & 0xFFFFFFF9 ^ 0x7F6536A7;
  LODWORD(STACK[0x52D0]) = v46;
  v47 = ((v45 ^ 0x20) << 24) | ((((*(v18 + v46) ^ 0x62) + (*(v18 + v46) ^ 0x40) + *(v23 + (*(v18 + v46) ^ 0x8ALL)) - 5) ^ 7) << 8);
  v48 = a3 & 0xFFFFFFFA ^ 0x7F6536A7;
  LODWORD(STACK[0x52C8]) = v48;
  v49 = (*(v18 + v48) ^ -*(v18 + v48) ^ (87 - (*(v18 + v48) ^ 0x57u))) + 87;
  v50 = v47 & 0xFF00FFFF | ((((v49 ^ 0xDD) - v49 + *(v23 + (v49 ^ 0x35)) - 6) ^ 0xA8) << 16);
  v51 = a3 & 0xFFFFFFF8 ^ 0x7F6536A7;
  LODWORD(STACK[0x5320]) = v51;
  v52 = (v50 | *(v44 + (*(v18 + v51) ^ 0x9DLL)) ^ (*(v18 + v51) - ((2 * *(v18 + v51)) & 0xB6) - 37) ^ 0xAB) ^ 0xBE;
  LODWORD(STACK[0x5330]) = a3;
  v53 = a3 & 0xFFFFFFF4 ^ 0x7F6536AB;
  LODWORD(STACK[0x5318]) = v53;
  LODWORD(v19) = a3 & 0xFFFFFFF6 ^ 0x7F6536AB;
  LODWORD(STACK[0x5328]) = v19;
  v54 = (*(v44 + (*(v18 + v53) ^ 0x4CLL)) ^ (*(v18 + v53) - ((2 * *(v18 + v53)) & 0xB6) - 37) ^ 0x79 | v27) & 0xFF00FFFF | ((((*(v18 + v19) ^ 0x43) + (*(v18 + v19) ^ 0x61) + *(v23 + (*(v18 + v19) ^ 0xABLL)) - 5) ^ 0x99) << 16);
  v55 = v42 ^ ((v42 & v25) >> 1);
  v56 = LODWORD(STACK[0x5360]) ^ LODWORD(STACK[0x50D0]) ^ ((((v39 ^ ((v39 & v25) >> 1)) & v16) >> v9) | (((v39 ^ ((v39 & v25) >> 1)) & v7) << v10));
  LOBYTE(v25) = STACK[0x57C0];
  v57 = LODWORD(STACK[0x5358]) ^ LODWORD(STACK[0x50C8]) ^ (((v52 ^ ((v52 & v8) >> 1)) & v11) << v25) ^ (((v52 ^ ((v52 & v8) >> 1)) & v12) >> a7);
  LODWORD(v19) = STACK[0x56E0];
  v58 = STACK[0x5680];
  v59 = (v19 ^ -v19 ^ (v58 - (v19 ^ v58))) + v58;
  LODWORD(STACK[0x5360]) = v57;
  v60 = 1324974057 * (v59 - v57) - ((1324974057 * (v59 - v57)) >> 16);
  LODWORD(STACK[0x52B8]) = v56;
  v61 = LODWORD(STACK[0x50B8]) ^ LODWORD(STACK[0x5368]) ^ ((v55 & v7) << v10) ^ ((v55 & v12) >> a7);
  LODWORD(STACK[0x5358]) = v61;
  v62 = (2128464697 * (v60 - v56 - (v60 >> 8))) ^ ((2128464697 * (v60 - v56 - (v60 >> 8))) >> 16) ^ v61 ^ (((2128464697 * (v60 - v56 - (v60 >> 8))) ^ ((2128464697 * (v60 - v56 - (v60 >> 8))) >> 16)) >> 8);
  v63 = LODWORD(STACK[0x5350]) ^ LODWORD(STACK[0x50C0]) ^ (((v54 ^ ((v54 & v8) >> 1)) & v16) >> v9) ^ (((v54 ^ ((v54 & v8) >> 1)) & v11) << v25);
  v64 = (-1506046323 * v62 + ((-1506046323 * v62) >> 16) + ((-1506046323 * v62 + ((-1506046323 * v62) >> 16)) >> 8)) ^ v63;
  LODWORD(v25) = v63;
  LODWORD(STACK[0x5350]) = v63;
  v65 = v64 + LODWORD(STACK[0x5780]) - 2 * (v64 & STACK[0x5780]);
  LODWORD(STACK[0x5378]) = v13;
  LODWORD(STACK[0x5370]) = v14;
  v66 = 1324974057 * ((v14 ^ v13) - v57) - ((1324974057 * ((v14 ^ v13) - v57)) >> 16);
  v67 = (2128464697 * (v66 - v56 - (v66 >> 8))) ^ ((2128464697 * (v66 - v56 - (v66 >> 8))) >> 16);
  v68 = v59 ^ v58;
  v69 = v59 ^ v19;
  v70 = v65 ^ v64;
  v71 = -1506046323 * (v67 ^ v61 ^ (v67 >> 8)) + ((-1506046323 * (v67 ^ v61 ^ (v67 >> 8))) >> 16);
  v72 = -307799103 * ((v71 + (v71 >> 8)) ^ v25) - ((-307799103 * ((v71 + (v71 >> 8)) ^ v25)) >> 16);
  v73 = (v72 ^ (v72 >> 8)) + STACK[0xD620];
  v74 = LODWORD(STACK[0x53A0]) < 0x7AB753E9;
  *(v15 - 152) = STACK[0xD620];
  LODWORD(STACK[0x5368]) = v74;
  v75 = STACK[0x57A0];
  if (v73)
  {
    v76 = v70;
  }

  else
  {
    v76 = STACK[0x57A0];
  }

  LODWORD(STACK[0x56E0]) = v76;
  v77 = STACK[0x53A8];
  if (v73)
  {
    v78 = STACK[0x53A8];
  }

  else
  {
    v78 = v70;
  }

  v79 = STACK[0x53D8];
  if (v73)
  {
    v77 = STACK[0x53D8];
  }

  LODWORD(STACK[0x5240]) = v77;
  if (v73)
  {
    v80 = v75;
  }

  else
  {
    v80 = v79;
  }

  v81 = STACK[0x5790];
  v82 = STACK[0x53D0];
  if (v73)
  {
    v83 = STACK[0x53D0];
  }

  else
  {
    v83 = STACK[0x5790];
  }

  LODWORD(STACK[0x5210]) = v83;
  v84 = STACK[0x5770];
  if (v73)
  {
    v85 = STACK[0x5770];
  }

  else
  {
    v85 = v82;
  }

  LODWORD(STACK[0x52B0]) = v85;
  if (v73)
  {
    v86 = STACK[0x5760];
  }

  else
  {
    v86 = v84;
  }

  if (v73)
  {
    v87 = v81;
  }

  else
  {
    v87 = STACK[0x5760];
  }

  v88 = STACK[0x5750];
  v89 = STACK[0x5740];
  if (v73)
  {
    v90 = STACK[0x5740];
  }

  else
  {
    v90 = STACK[0x5750];
  }

  LODWORD(STACK[0x5208]) = v90;
  v91 = STACK[0x5620];
  if (v73)
  {
    v92 = v88;
  }

  else
  {
    v92 = STACK[0x5620];
  }

  LODWORD(STACK[0x52A8]) = v92;
  v93 = STACK[0x53C8];
  if (v73)
  {
    v94 = STACK[0x53C8];
  }

  else
  {
    v94 = v89;
  }

  LODWORD(STACK[0x5288]) = v94;
  if (v73)
  {
    v95 = v91;
  }

  else
  {
    v95 = v93;
  }

  v96 = STACK[0x5730];
  v97 = STACK[0x5720];
  if (v73)
  {
    v98 = STACK[0x5720];
  }

  else
  {
    v98 = STACK[0x5730];
  }

  LODWORD(STACK[0x5238]) = v98;
  v99 = STACK[0x5710];
  if (v73)
  {
    v100 = STACK[0x5710];
  }

  else
  {
    v100 = v97;
  }

  LODWORD(STACK[0x5720]) = v100;
  if (v73)
  {
    v101 = STACK[0x5700];
  }

  else
  {
    v101 = v99;
  }

  if (v73)
  {
    v102 = v96;
  }

  else
  {
    v102 = STACK[0x5700];
  }

  v103 = STACK[0x53C0];
  v104 = STACK[0x56D0];
  if (v73)
  {
    v105 = STACK[0x56D0];
  }

  else
  {
    v105 = STACK[0x53C0];
  }

  LODWORD(STACK[0x5680]) = v105;
  if (v73)
  {
    v106 = STACK[0x56F0];
  }

  else
  {
    v106 = v104;
  }

  if (v73)
  {
    v107 = v68;
  }

  else
  {
    v107 = STACK[0x56F0];
  }

  LODWORD(STACK[0x5280]) = v107;
  if (v73)
  {
    v108 = v103;
  }

  else
  {
    v108 = v68;
  }

  v109 = STACK[0x56C0];
  if (v73)
  {
    v110 = STACK[0x56C0];
  }

  else
  {
    v110 = v69;
  }

  LODWORD(STACK[0x5200]) = v110;
  v111 = STACK[0x5670];
  if (v73)
  {
    v112 = STACK[0x5670];
  }

  else
  {
    v112 = v109;
  }

  LODWORD(STACK[0x52A0]) = v112;
  v113 = STACK[0x5660];
  if (v73)
  {
    v114 = v69;
  }

  else
  {
    v114 = STACK[0x5660];
  }

  LODWORD(STACK[0x5278]) = v114;
  if ((v73 & 1) == 0)
  {
    v113 = v111;
  }

  v115 = STACK[0x5650];
  v116 = STACK[0x53B8];
  if (v73)
  {
    v117 = STACK[0x53B8];
  }

  else
  {
    v117 = STACK[0x5650];
  }

  LODWORD(STACK[0x53A8]) = v117;
  if (v73)
  {
    v118 = v115;
  }

  else
  {
    v118 = STACK[0x55E0];
  }

  v119 = STACK[0x5640];
  if (v73)
  {
    v120 = STACK[0x55E0];
  }

  else
  {
    v120 = STACK[0x5640];
  }

  LODWORD(STACK[0x5650]) = v120;
  if ((v73 & 1) == 0)
  {
    v119 = v116;
  }

  v121 = STACK[0x5610];
  v122 = STACK[0x5600];
  if (v73)
  {
    v123 = STACK[0x5600];
  }

  else
  {
    v123 = STACK[0x5610];
  }

  LODWORD(STACK[0x5230]) = v123;
  v124 = STACK[0x55F0];
  if (v73)
  {
    v125 = STACK[0x55F0];
  }

  else
  {
    v125 = v122;
  }

  LODWORD(STACK[0x5600]) = v125;
  v126 = STACK[0x55D0];
  if (v73)
  {
    v127 = v121;
  }

  else
  {
    v127 = STACK[0x55D0];
  }

  LODWORD(STACK[0x5270]) = v127;
  if (v73)
  {
    v128 = v126;
  }

  else
  {
    v128 = v124;
  }

  v129 = STACK[0x55C0];
  v130 = STACK[0x55A0];
  if (v73)
  {
    v131 = STACK[0x55A0];
  }

  else
  {
    v131 = STACK[0x55C0];
  }

  LODWORD(STACK[0x53D8]) = v131;
  if (v73)
  {
    v132 = v129;
  }

  else
  {
    v132 = STACK[0x5560];
  }

  v133 = STACK[0x5580];
  if (v73)
  {
    v134 = STACK[0x5560];
  }

  else
  {
    v134 = STACK[0x5580];
  }

  LODWORD(STACK[0x5268]) = v134;
  if ((v73 & 1) == 0)
  {
    v133 = v130;
  }

  v135 = STACK[0x5570];
  v136 = STACK[0x5550];
  if (v73)
  {
    v137 = STACK[0x5550];
  }

  else
  {
    v137 = STACK[0x5570];
  }

  LODWORD(STACK[0x53D0]) = v137;
  v138 = STACK[0x5590];
  if (v73)
  {
    v139 = v135;
  }

  else
  {
    v139 = STACK[0x5590];
  }

  LODWORD(STACK[0x5570]) = v139;
  v140 = STACK[0x55B0];
  if (v73)
  {
    v141 = v138;
  }

  else
  {
    v141 = STACK[0x55B0];
  }

  LODWORD(STACK[0x5260]) = v141;
  if ((v73 & 1) == 0)
  {
    v140 = v136;
  }

  v142 = STACK[0x5540];
  v143 = STACK[0x5520];
  if (v73)
  {
    v144 = STACK[0x5520];
  }

  else
  {
    v144 = STACK[0x5540];
  }

  LODWORD(STACK[0x5228]) = v144;
  v145 = STACK[0x5630];
  if (v73)
  {
    v146 = v142;
  }

  else
  {
    v146 = STACK[0x5630];
  }

  LODWORD(STACK[0x5298]) = v146;
  v147 = STACK[0x5500];
  if (v73)
  {
    v148 = STACK[0x5500];
  }

  else
  {
    v148 = v143;
  }

  LODWORD(STACK[0x5258]) = v148;
  if (v73)
  {
    v147 = v145;
  }

  v149 = STACK[0x5530];
  v150 = STACK[0x54E0];
  if (v73)
  {
    v151 = STACK[0x5530];
  }

  else
  {
    v151 = STACK[0x54E0];
  }

  LODWORD(STACK[0x53C8]) = v151;
  v152 = STACK[0x5510];
  if (v73)
  {
    v153 = STACK[0x5510];
  }

  else
  {
    v153 = v149;
  }

  LODWORD(STACK[0x51F8]) = v153;
  v154 = STACK[0x54F0];
  if (v73)
  {
    v155 = STACK[0x54F0];
  }

  else
  {
    v155 = v152;
  }

  LODWORD(STACK[0x5250]) = v155;
  if (v73)
  {
    v154 = v150;
  }

  v156 = STACK[0x54B0];
  v157 = STACK[0x5490];
  if (v73)
  {
    v158 = STACK[0x5490];
  }

  else
  {
    v158 = STACK[0x54B0];
  }

  LODWORD(STACK[0x53C0]) = v158;
  if (v73)
  {
    v159 = STACK[0x5470];
  }

  else
  {
    v159 = v157;
  }

  v160 = STACK[0x54D0];
  if (v73)
  {
    v161 = STACK[0x54D0];
  }

  else
  {
    v161 = STACK[0x5470];
  }

  LODWORD(STACK[0x5470]) = v161;
  if (v73)
  {
    v160 = v156;
  }

  v162 = STACK[0x5480];
  v163 = STACK[0x5460];
  if (v73)
  {
    v164 = STACK[0x5460];
  }

  else
  {
    v164 = STACK[0x5480];
  }

  LODWORD(STACK[0x5220]) = v164;
  v165 = STACK[0x54C0];
  if (v73)
  {
    v166 = STACK[0x54C0];
  }

  else
  {
    v166 = v163;
  }

  LODWORD(STACK[0x5460]) = v166;
  v167 = STACK[0x54A0];
  if (v73)
  {
    v168 = v162;
  }

  else
  {
    v168 = STACK[0x54A0];
  }

  LODWORD(STACK[0x5248]) = v168;
  if (v73)
  {
    v165 = v167;
  }

  v169 = STACK[0x5450];
  v170 = STACK[0x5430];
  if (v73)
  {
    v171 = STACK[0x5430];
  }

  else
  {
    v171 = STACK[0x5450];
  }

  LODWORD(STACK[0x5218]) = v171;
  v172 = STACK[0x53F8];
  if (v73)
  {
    v173 = v169;
  }

  else
  {
    v173 = STACK[0x53F8];
  }

  LODWORD(STACK[0x5290]) = v173;
  v174 = STACK[0x5410];
  if (v73)
  {
    v175 = STACK[0x5410];
  }

  else
  {
    v175 = v170;
  }

  LODWORD(STACK[0x5430]) = v175;
  if (v73)
  {
    v174 = v172;
  }

  v176 = STACK[0x5440];
  v177 = STACK[0x5420];
  if (v73)
  {
    v178 = STACK[0x5420];
  }

  else
  {
    v178 = STACK[0x5440];
  }

  LODWORD(STACK[0x53B8]) = v178;
  if (v73)
  {
    v179 = v176;
  }

  else
  {
    v179 = STACK[0x5408];
  }

  if (v73)
  {
    v180 = STACK[0x5400];
  }

  else
  {
    v180 = v177;
  }

  if (v73)
  {
    v181 = STACK[0x5408];
  }

  else
  {
    v181 = STACK[0x5400];
  }

  if ((v73 & 2) != 0)
  {
    v182 = v80;
  }

  else
  {
    v182 = v78;
  }

  LODWORD(STACK[0x5780]) = v182;
  if ((v73 & 2) == 0)
  {
    v78 = v80;
  }

  v183 = STACK[0x56E0];
  v184 = STACK[0x5240];
  if ((v73 & 2) != 0)
  {
    v185 = STACK[0x5240];
  }

  else
  {
    v185 = STACK[0x56E0];
  }

  LODWORD(STACK[0x57A0]) = v185;
  if ((v73 & 2) == 0)
  {
    v183 = v184;
  }

  v186 = STACK[0x5210];
  if ((v73 & 2) != 0)
  {
    v187 = STACK[0x5210];
  }

  else
  {
    v187 = v86;
  }

  LODWORD(STACK[0x5770]) = v187;
  if ((v73 & 2) != 0)
  {
    v188 = v86;
  }

  else
  {
    v188 = v186;
  }

  LODWORD(STACK[0x5790]) = v188;
  v189 = STACK[0x52B0];
  if ((v73 & 2) != 0)
  {
    v190 = STACK[0x52B0];
  }

  else
  {
    v190 = v87;
  }

  LODWORD(STACK[0x5760]) = v190;
  if ((v73 & 2) == 0)
  {
    v87 = v189;
  }

  v191 = STACK[0x5208];
  if ((v73 & 2) != 0)
  {
    v192 = STACK[0x5208];
  }

  else
  {
    v192 = v95;
  }

  if ((v73 & 2) != 0)
  {
    v191 = v95;
  }

  LODWORD(STACK[0x5750]) = v191;
  v193 = STACK[0x52A8];
  v194 = STACK[0x5288];
  if ((v73 & 2) != 0)
  {
    v195 = STACK[0x52A8];
  }

  else
  {
    v195 = STACK[0x5288];
  }

  LODWORD(STACK[0x5740]) = v195;
  v196 = *(v15 - 152);
  if ((v73 & 2) != 0)
  {
    v197 = v194;
  }

  else
  {
    v197 = v193;
  }

  LODWORD(STACK[0x5620]) = v197;
  v198 = STACK[0x5238];
  if ((v73 & 2) != 0)
  {
    v199 = v101;
  }

  else
  {
    v199 = STACK[0x5238];
  }

  LODWORD(STACK[0x5730]) = v199;
  if ((v73 & 2) != 0)
  {
    v200 = v198;
  }

  else
  {
    v200 = v101;
  }

  LODWORD(STACK[0x5710]) = v200;
  v201 = STACK[0x5720];
  if ((v73 & 2) != 0)
  {
    v202 = STACK[0x5720];
  }

  else
  {
    v202 = v102;
  }

  LODWORD(STACK[0x5700]) = v202;
  if ((v73 & 2) != 0)
  {
    v203 = v102;
  }

  else
  {
    v203 = v201;
  }

  LODWORD(STACK[0x5720]) = v203;
  if ((v73 & 2) != 0)
  {
    v204 = v108;
  }

  else
  {
    v204 = v106;
  }

  LODWORD(STACK[0x56D0]) = v204;
  if ((v73 & 2) != 0)
  {
    v205 = v106;
  }

  else
  {
    v205 = v108;
  }

  LODWORD(STACK[0x56E0]) = v205;
  v206 = STACK[0x5680];
  v207 = STACK[0x5280];
  if ((v73 & 2) != 0)
  {
    v208 = STACK[0x5680];
  }

  else
  {
    v208 = STACK[0x5280];
  }

  LODWORD(STACK[0x56F0]) = v208;
  if ((v73 & 2) != 0)
  {
    v209 = v207;
  }

  else
  {
    v209 = v206;
  }

  v210 = STACK[0x5200];
  if ((v73 & 2) != 0)
  {
    v211 = STACK[0x5200];
  }

  else
  {
    v211 = v113;
  }

  LODWORD(STACK[0x5670]) = v211;
  if ((v73 & 2) != 0)
  {
    v212 = v113;
  }

  else
  {
    v212 = v210;
  }

  LODWORD(STACK[0x5680]) = v212;
  v213 = STACK[0x52A0];
  v214 = STACK[0x5278];
  if ((v73 & 2) != 0)
  {
    v215 = STACK[0x5278];
  }

  else
  {
    v215 = STACK[0x52A0];
  }

  LODWORD(STACK[0x56C0]) = v215;
  if ((v73 & 2) != 0)
  {
    v216 = v213;
  }

  else
  {
    v216 = v214;
  }

  LODWORD(STACK[0x5660]) = v216;
  if ((v73 & 2) != 0)
  {
    v217 = v119;
  }

  else
  {
    v217 = v118;
  }

  LODWORD(STACK[0x55E0]) = v217;
  if ((v73 & 2) == 0)
  {
    v118 = v119;
  }

  v218 = STACK[0x53A8];
  v219 = STACK[0x5650];
  if ((v73 & 2) != 0)
  {
    v220 = STACK[0x53A8];
  }

  else
  {
    v220 = STACK[0x5650];
  }

  LODWORD(STACK[0x5640]) = v220;
  if ((v73 & 2) != 0)
  {
    v221 = v219;
  }

  else
  {
    v221 = v218;
  }

  LODWORD(STACK[0x5650]) = v221;
  v222 = STACK[0x5230];
  if ((v73 & 2) != 0)
  {
    v223 = STACK[0x5230];
  }

  else
  {
    v223 = v128;
  }

  LODWORD(STACK[0x55F0]) = v223;
  if ((v73 & 2) != 0)
  {
    v224 = v128;
  }

  else
  {
    v224 = v222;
  }

  LODWORD(STACK[0x5610]) = v224;
  v225 = STACK[0x5600];
  v226 = STACK[0x5270];
  if ((v73 & 2) != 0)
  {
    v227 = STACK[0x5600];
  }

  else
  {
    v227 = STACK[0x5270];
  }

  LODWORD(STACK[0x55D0]) = v227;
  if ((v73 & 2) != 0)
  {
    v228 = v226;
  }

  else
  {
    v228 = v225;
  }

  LODWORD(STACK[0x5600]) = v228;
  if ((v73 & 2) != 0)
  {
    v229 = v132;
  }

  else
  {
    v229 = v133;
  }

  LODWORD(STACK[0x55A0]) = v229;
  if ((v73 & 2) != 0)
  {
    v230 = v133;
  }

  else
  {
    v230 = v132;
  }

  LODWORD(STACK[0x5560]) = v230;
  v231 = STACK[0x53D8];
  v232 = STACK[0x5268];
  if ((v73 & 2) != 0)
  {
    v233 = STACK[0x5268];
  }

  else
  {
    v233 = STACK[0x53D8];
  }

  LODWORD(STACK[0x55C0]) = v233;
  if ((v73 & 2) != 0)
  {
    v234 = v231;
  }

  else
  {
    v234 = v232;
  }

  LODWORD(STACK[0x5580]) = v234;
  v235 = STACK[0x5570];
  if ((v73 & 2) != 0)
  {
    v236 = v140;
  }

  else
  {
    v236 = STACK[0x5570];
  }

  LODWORD(STACK[0x5590]) = v236;
  if ((v73 & 2) != 0)
  {
    v237 = v235;
  }

  else
  {
    v237 = v140;
  }

  LODWORD(STACK[0x5550]) = v237;
  v238 = STACK[0x53D0];
  v239 = STACK[0x5260];
  if ((v73 & 2) != 0)
  {
    v240 = STACK[0x5260];
  }

  else
  {
    v240 = STACK[0x53D0];
  }

  LODWORD(STACK[0x5570]) = v240;
  if ((v73 & 2) != 0)
  {
    v241 = v238;
  }

  else
  {
    v241 = v239;
  }

  LODWORD(STACK[0x55B0]) = v241;
  v242 = STACK[0x5228];
  if ((v73 & 2) != 0)
  {
    v243 = v147;
  }

  else
  {
    v243 = STACK[0x5228];
  }

  LODWORD(STACK[0x5540]) = v243;
  if ((v73 & 2) != 0)
  {
    v244 = v242;
  }

  else
  {
    v244 = v147;
  }

  LODWORD(STACK[0x5500]) = v244;
  v245 = STACK[0x5298];
  v246 = STACK[0x5258];
  if ((v73 & 2) != 0)
  {
    v247 = STACK[0x5298];
  }

  else
  {
    v247 = STACK[0x5258];
  }

  LODWORD(STACK[0x5520]) = v247;
  if ((v73 & 2) != 0)
  {
    v248 = v246;
  }

  else
  {
    v248 = v245;
  }

  LODWORD(STACK[0x5630]) = v248;
  v249 = STACK[0x51F8];
  if ((v73 & 2) != 0)
  {
    v250 = v154;
  }

  else
  {
    v250 = STACK[0x51F8];
  }

  LODWORD(STACK[0x5530]) = v250;
  if ((v73 & 2) != 0)
  {
    v251 = v249;
  }

  else
  {
    v251 = v154;
  }

  LODWORD(STACK[0x54F0]) = v251;
  v252 = STACK[0x53C8];
  v253 = STACK[0x5250];
  if ((v73 & 2) != 0)
  {
    v254 = STACK[0x53C8];
  }

  else
  {
    v254 = STACK[0x5250];
  }

  LODWORD(STACK[0x5510]) = v254;
  if ((v73 & 2) != 0)
  {
    v255 = v253;
  }

  else
  {
    v255 = v252;
  }

  LODWORD(STACK[0x54E0]) = v255;
  if ((v73 & 2) != 0)
  {
    v256 = v160;
  }

  else
  {
    v256 = v159;
  }

  LODWORD(STACK[0x5490]) = v256;
  if ((v73 & 2) != 0)
  {
    v257 = v159;
  }

  else
  {
    v257 = v160;
  }

  LODWORD(STACK[0x54D0]) = v257;
  v258 = STACK[0x53C0];
  v259 = STACK[0x5470];
  if ((v73 & 2) != 0)
  {
    v260 = STACK[0x5470];
  }

  else
  {
    v260 = STACK[0x53C0];
  }

  LODWORD(STACK[0x54B0]) = v260;
  if ((v73 & 2) != 0)
  {
    v261 = v258;
  }

  else
  {
    v261 = v259;
  }

  LODWORD(STACK[0x5470]) = v261;
  v262 = STACK[0x5220];
  if ((v73 & 2) != 0)
  {
    v263 = v165;
  }

  else
  {
    v263 = STACK[0x5220];
  }

  LODWORD(STACK[0x5480]) = v263;
  if ((v73 & 2) != 0)
  {
    v264 = v262;
  }

  else
  {
    v264 = v165;
  }

  LODWORD(STACK[0x54C0]) = v264;
  v265 = STACK[0x5460];
  v266 = STACK[0x5248];
  if ((v73 & 2) != 0)
  {
    v267 = STACK[0x5460];
  }

  else
  {
    v267 = STACK[0x5248];
  }

  LODWORD(STACK[0x54A0]) = v267;
  if ((v73 & 2) != 0)
  {
    v268 = v266;
  }

  else
  {
    v268 = v265;
  }

  LODWORD(STACK[0x5460]) = v268;
  v269 = STACK[0x5218];
  if ((v73 & 2) != 0)
  {
    v270 = STACK[0x5218];
  }

  else
  {
    v270 = v174;
  }

  LODWORD(STACK[0x5410]) = v270;
  if ((v73 & 2) != 0)
  {
    v271 = v174;
  }

  else
  {
    v271 = v269;
  }

  LODWORD(STACK[0x5450]) = v271;
  v272 = STACK[0x5290];
  v273 = STACK[0x5430];
  if ((v73 & 2) != 0)
  {
    v274 = STACK[0x5430];
  }

  else
  {
    v274 = STACK[0x5290];
  }

  LODWORD(STACK[0x53F8]) = v274;
  if ((v73 & 2) != 0)
  {
    v275 = v272;
  }

  else
  {
    v275 = v273;
  }

  LODWORD(STACK[0x5430]) = v275;
  if ((v73 & 2) != 0)
  {
    v276 = v179;
  }

  else
  {
    v276 = v180;
  }

  LODWORD(STACK[0x5420]) = v276;
  if ((v73 & 2) != 0)
  {
    v277 = v180;
  }

  else
  {
    v277 = v179;
  }

  LODWORD(STACK[0x5408]) = v277;
  v278 = STACK[0x53B8];
  if ((v73 & 2) != 0)
  {
    v279 = STACK[0x53B8];
  }

  else
  {
    v279 = v181;
  }

  LODWORD(STACK[0x5400]) = v279;
  if ((v73 & 2) != 0)
  {
    v280 = v181;
  }

  else
  {
    v280 = v278;
  }

  LODWORD(STACK[0x5440]) = v280;
  v281 = v73 + LODWORD(STACK[0x53E8]);
  v282 = STACK[0x5358];
  if (v281)
  {
    v283 = STACK[0x5358];
  }

  else
  {
    v283 = STACK[0x5350];
  }

  v284 = STACK[0x52B8];
  if (v281)
  {
    v282 = STACK[0x52B8];
  }

  v285 = STACK[0x5360];
  if (v281)
  {
    v284 = STACK[0x5360];
    v285 = STACK[0x5350];
  }

  if ((v281 & 2) != 0)
  {
    v286 = v283;
  }

  else
  {
    v286 = v284;
  }

  if ((v281 & 2) != 0)
  {
    v283 = v284;
    v287 = v282;
  }

  else
  {
    v287 = v285;
  }

  if ((v281 & 2) != 0)
  {
    v288 = v285;
  }

  else
  {
    v288 = v282;
  }

  v289 = STACK[0x50E0];
  v290 = LODWORD(STACK[0x5110]) ^ LODWORD(STACK[0x50E0]);
  v291 = STACK[0x5120];
  v292 = v290 ^ LODWORD(STACK[0x4F78]) ^ LODWORD(STACK[0x4F60]) ^ LODWORD(STACK[0x5120]) ^ LODWORD(STACK[0x5780]) ^ v283;
  v293 = v290 ^ LODWORD(STACK[0x4F68]) ^ LODWORD(STACK[0x5120]);
  LODWORD(STACK[0x53D8]) = v78;
  v294 = v293 ^ v78 ^ v286;
  STACK[0xD620] = v196 + 4 * HIBYTE(v292);
  v295 = *(v196 + 4 * HIBYTE(v292));
  v296 = v290 ^ LODWORD(STACK[0x4F58]) ^ v291 ^ LODWORD(STACK[0x57A0]) ^ v287;
  STACK[0xD620] = v196 + 4 * (v290 ^ LOBYTE(STACK[0x4F58]) ^ v291 ^ LOBYTE(STACK[0x57A0]) ^ v287);
  v297 = *(v196 + 4 * v296);
  STACK[0xD620] = v196 + 4 * BYTE1(v294);
  v298 = *(v196 + 4 * BYTE1(v294));
  v299 = v290 ^ LODWORD(STACK[0x4F70]) ^ LODWORD(STACK[0x4F50]);
  STACK[0xD620] = v196 + 4 * v294;
  v300 = *(v196 + 4 * v294);
  STACK[0xD620] = v196 + 4 * BYTE1(v292);
  v301 = *(v196 + 4 * BYTE1(v292));
  STACK[0xD620] = v196 + 4 * BYTE2(v292);
  v302 = *(v196 + 4 * BYTE2(v292));
  LODWORD(STACK[0x53A8]) = v183;
  v303 = v299 ^ v291 ^ v183 ^ v288;
  STACK[0xD620] = v196 + 4 * v303;
  v304 = *(v196 + 4 * v303);
  STACK[0xD620] = v196 + 4 * BYTE1(v296);
  v305 = LODWORD(STACK[0x50E8]) ^ LODWORD(STACK[0x5108]);
  v306 = v305 ^ LODWORD(STACK[0x50B0]) ^ (*(v196 + 4 * BYTE1(v296)) << 24) ^ (*(v196 + 4 * BYTE1(v296)) >> 8);
  STACK[0xD620] = v196 + 4 * v292;
  v307 = *(v196 + 4 * v292);
  STACK[0xD620] = v196 + 4 * BYTE2(v294);
  v308 = *(v196 + 4 * BYTE2(v294));
  STACK[0xD620] = v196 + 4 * BYTE1(v303);
  v294 >>= 24;
  v309 = *(v196 + 4 * BYTE1(v303));
  STACK[0xD620] = v196 + 4 * v294;
  v310 = *(v196 + 4 * v294);
  v311 = v306 ^ __ROR4__(v307, 16);
  STACK[0xD620] = v196 + 4 * HIBYTE(v296);
  v312 = *(v196 + 4 * HIBYTE(v296));
  STACK[0xD620] = v196 + 4 * BYTE2(v303);
  v313 = *(v196 + 4 * BYTE2(v303));
  v314 = BYTE2(v296);
  STACK[0xD620] = v196 + 4 * v314;
  v303 >>= 24;
  v315 = *(v196 + 4 * v314);
  STACK[0xD620] = v196 + 4 * v303;
  v316 = v311 ^ v308 ^ __ROR4__(*(v196 + 4 * v303), 24);
  v317 = v305 ^ LODWORD(STACK[0x4F48]) ^ LODWORD(STACK[0x4F40]) ^ __ROR4__(v301, 8) ^ __ROR4__(v304, 16) ^ __ROR4__(v310, 24);
  v318 = v73 + LODWORD(STACK[0x5390]);
  v319 = v305 ^ LODWORD(STACK[0x50A8]) ^ v318 ^ __ROR4__(v300, 16) ^ v302 ^ __ROR4__(v309, 8) ^ __ROR4__(v312, 24);
  v320 = v305 ^ LODWORD(STACK[0x4F38]) ^ __ROR4__(v295, 24) ^ __ROR4__(v297, 16) ^ __ROR4__(v298, 8);
  v321 = STACK[0x57B0];
  LODWORD(STACK[0x5298]) = v73;
  v322 = v73 + v321;
  LODWORD(STACK[0x53D0]) = v87;
  v323 = v322 ^ v87;
  v324 = v322;
  LODWORD(STACK[0x57B0]) = v322;
  v325 = v319 ^ v323;
  STACK[0xD620] = v196 + 4 * HIBYTE(v325);
  v326 = *(v196 + 4 * HIBYTE(v325));
  v327 = v320 ^ v313 ^ LODWORD(STACK[0x5770]);
  STACK[0xD620] = v196 + 4 * HIBYTE(v327);
  v328 = *(v196 + 4 * HIBYTE(v327));
  STACK[0xD620] = v196 + 4 * BYTE1(v325);
  v329 = *(v196 + 4 * BYTE1(v325));
  v330 = v317 ^ v315 ^ LODWORD(STACK[0x5790]);
  STACK[0xD620] = v196 + 4 * BYTE2(v330);
  v331 = *(v196 + 4 * BYTE2(v330));
  v332 = v316 ^ LODWORD(STACK[0x5760]);
  STACK[0xD620] = v196 + 4 * BYTE2(v332);
  v333 = *(v196 + 4 * BYTE2(v332));
  STACK[0xD620] = v196 + 4 * v325;
  v334 = *(v196 + 4 * v325);
  STACK[0xD620] = v196 + 4 * HIBYTE(v330);
  v335 = *(v196 + 4 * HIBYTE(v330));
  STACK[0xD620] = v196 + 4 * HIBYTE(v332);
  v336 = *(v196 + 4 * HIBYTE(v332));
  STACK[0xD620] = v196 + 4 * v332;
  v337 = *(v196 + 4 * v332);
  v338 = STACK[0x5100];
  v339 = LODWORD(STACK[0x5100]) ^ LODWORD(STACK[0x5118]);
  v340 = v339 ^ LODWORD(STACK[0x50A0]) ^ __ROR4__(v329, 8);
  v341 = BYTE1(v332);
  STACK[0xD620] = v196 + 4 * v341;
  v342 = *(v196 + 4 * v341);
  STACK[0xD620] = v196 + 4 * BYTE2(v327);
  v343 = *(v196 + 4 * BYTE2(v327));
  STACK[0xD620] = v196 + 4 * v327;
  v344 = v340 ^ v331 ^ LODWORD(STACK[0x5740]) ^ __ROR4__(v336, 24) ^ __ROR4__(*(v196 + 4 * v327), 16);
  v345 = v339 ^ LODWORD(STACK[0x5098]) ^ __ROR4__(v328, 24);
  v346 = v339 ^ LODWORD(STACK[0x5088]) ^ __ROR4__(v326, 24);
  STACK[0xD620] = v196 + 4 * BYTE1(v330);
  v347 = *(v196 + 4 * BYTE1(v330));
  v348 = v346 ^ LODWORD(STACK[0x5620]) ^ __ROR4__(v342, 8);
  v349 = BYTE2(v325);
  STACK[0xD620] = v196 + 4 * v349;
  v350 = *(v196 + 4 * v349);
  STACK[0xD620] = v196 + 4 * BYTE1(v327);
  v351 = *(v196 + 4 * BYTE1(v327));
  STACK[0xD620] = v196 + 4 * v330;
  v352 = v348 ^ v343 ^ __ROR4__(*(v196 + 4 * v330), 16);
  STACK[0xD620] = v196 + 4 * BYTE1(v352);
  v353 = *(v196 + 4 * BYTE1(v352));
  STACK[0xD620] = v196 + 4 * BYTE1(v344);
  v354 = *(v196 + 4 * BYTE1(v344));
  STACK[0xD620] = v196 + 4 * BYTE2(v352);
  v355 = *(v196 + 4 * BYTE2(v352));
  v356 = v345 ^ v333 ^ __ROR4__(v334, 16) ^ LODWORD(STACK[0x5750]) ^ __ROR4__(v347, 8);
  STACK[0xD620] = v196;
  v357 = *(v196 + 4 * BYTE2(v344));
  STACK[0xD620] = v196 + 4 * HIBYTE(v356);
  v358 = *(v196 + 4 * HIBYTE(v356));
  v359 = v339 ^ LODWORD(STACK[0x5090]);
  LODWORD(STACK[0x53C8]) = v192;
  v360 = v359 ^ v192 ^ __ROR4__(v335, 24);
  STACK[0xD620] = v196 + 4 * HIBYTE(v352);
  v361 = *(v196 + 4 * HIBYTE(v352));
  v362 = __ROR4__(v337, 16);
  STACK[0xD620] = v196 + 4 * v356;
  v363 = *(v196 + 4 * v356);
  v364 = v360 ^ v362 ^ v350;
  STACK[0xD620] = v196 + 4 * BYTE2(v356);
  v365 = *(v196 + 4 * BYTE2(v356));
  v367 = __ROR4__(v351, 8);
  v366 = v364 ^ v367;
  v368 = (v364 ^ v367);
  STACK[0xD620] = v196 + 4 * v368;
  v369 = *(v196 + 4 * v368);
  STACK[0xD620] = v196 + 4 * BYTE2(v366);
  v370 = *(v196 + 4 * BYTE2(v366));
  STACK[0xD620] = v196 + 4 * HIBYTE(v344);
  v371 = *(v196 + 4 * HIBYTE(v344));
  v372 = BYTE1(v356);
  STACK[0xD620] = v196 + 4 * v372;
  v373 = *(v196 + 4 * v372);
  STACK[0xD620] = v196 + 4 * BYTE1(v366);
  v374 = *(v196 + 4 * BYTE1(v366));
  STACK[0xD620] = v196 + 4 * v352;
  v375 = (*(v196 + 4 * v352) >> (v276 & 0x10) >> (v276 & 0x10 ^ 0x10)) + (*(v196 + 4 * v352) << 16);
  v376 = STACK[0x50D8];
  v377 = LODWORD(STACK[0x50D8]) ^ v289 ^ LODWORD(STACK[0x5060]) ^ LODWORD(STACK[0x5720]) ^ __ROR4__(v354, 8) ^ __ROR4__(v361, 24) ^ v365 ^ __ROR4__(v369, 16);
  STACK[0xD620] = v196 + 4 * HIBYTE(v366);
  v378 = *(v196 + 4 * HIBYTE(v366));
  v379 = v376 ^ v289 ^ LODWORD(STACK[0x5730]) ^ v355 ^ __ROR4__(v373, 8);
  STACK[0xD620] = v196 + 4 * v344;
  v380 = v379 ^ __ROR4__(v378, 24) ^ __ROR4__(*(v196 + 4 * v344), 16);
  v381 = v289 ^ LODWORD(STACK[0x4F20]) ^ LODWORD(STACK[0x4F28]) ^ v376 ^ LODWORD(STACK[0x5078]) ^ LODWORD(STACK[0x4F30]) ^ LODWORD(STACK[0x5070]) ^ LODWORD(STACK[0x5710]) ^ v357 ^ __ROR4__(v358, 24);
  v382 = (LODWORD(STACK[0x5058]) ^ LODWORD(STACK[0x4E88]) ^ (v380 - (v380 ^ LODWORD(STACK[0x5058])))) + v380;
  STACK[0xD620] = v196 + 4 * BYTE2(v382);
  v383 = *(v196 + 4 * BYTE2(v382));
  v384 = v381 ^ __ROR4__(v374, 8) ^ v375 ^ 0xF9A7C039;
  STACK[0xD620] = v196;
  v385 = *(v196 + 4 * BYTE2(v384));
  STACK[0xD620] = v196 + 4 * BYTE2(v377);
  v386 = *(v196 + 4 * BYTE2(v377));
  v387 = v376 ^ v289 ^ LODWORD(STACK[0x5068]) ^ LODWORD(STACK[0x5700]) ^ __ROR4__(v353, 8);
  STACK[0xD620] = v196;
  v388 = *(v196 + ((v384 >> 22) & 0x3FC));
  v389 = __ROR4__(v363, 16);
  STACK[0xD620] = v196 + 4 * BYTE1(v377);
  v390 = *(v196 + 4 * BYTE1(v377));
  STACK[0xD620] = v196 + 4 * HIBYTE(v382);
  v391 = *(v196 + 4 * HIBYTE(v382));
  v392 = v387 ^ v389 ^ v370 ^ __ROR4__(v371, 24);
  STACK[0xD620] = v196 + 4 * HIBYTE(v392);
  v393 = *(v196 + 4 * HIBYTE(v392));
  STACK[0xD620] = v196 + 4 * BYTE1(v392);
  v394 = *(v196 + 4 * BYTE1(v392));
  STACK[0xD620] = v196 + 4 * v382;
  v395 = *(v196 + 4 * v382);
  STACK[0xD620] = v196 + 4 * v384;
  v396 = *(v196 + 4 * v384);
  v397 = v338 ^ v291 ^ LODWORD(STACK[0x5050]);
  LODWORD(STACK[0x53C0]) = v209;
  LODWORD(v384) = BYTE1(v384);
  STACK[0xD620] = v196 + 4 * v384;
  LODWORD(v384) = *(v196 + 4 * v384);
  v398 = BYTE1(v382);
  STACK[0xD620] = v196 + 4 * v398;
  v399 = v397 ^ v209 ^ __ROR4__(v388, 24) ^ __ROR4__(*(v196 + 4 * v398), 8);
  STACK[0xD620] = v196 + 4 * v392;
  v400 = *(v196 + 4 * v392);
  STACK[0xD620] = v196 + 4 * v377;
  v401 = v399 ^ __ROR4__(*(v196 + 4 * v377), 16);
  v402 = v338 ^ v291 ^ LODWORD(STACK[0x5048]) ^ LODWORD(STACK[0x56F0]) ^ v386 ^ __ROR4__(v391, 24) ^ __ROR4__(v384, 8) ^ __ROR4__(v400, 16);
  v403 = v338 ^ v291 ^ LODWORD(STACK[0x5040]) ^ LODWORD(STACK[0x56E0]) ^ v385 ^ __ROR4__(v394, 8) ^ __ROR4__(v395, 16);
  STACK[0xD620] = v196 + 4 * BYTE2(v392);
  v377 >>= 24;
  v404 = *(v196 + 4 * BYTE2(v392));
  STACK[0xD620] = v196 + 4 * v377;
  v405 = v403 ^ __ROR4__(*(v196 + 4 * v377), 24);
  v406 = v338 ^ v291 ^ LODWORD(STACK[0x5038]) ^ LODWORD(STACK[0x56D0]) ^ v383 ^ __ROR4__(v390, 8);
  STACK[0xD620] = v196 + 4 * BYTE1(v405);
  v407 = *(v196 + 4 * BYTE1(v405));
  v408 = v406 ^ __ROR4__(v393, 24);
  STACK[0xD620] = v196 + 4 * BYTE1(v402);
  v409 = *(v196 + 4 * BYTE1(v402));
  v410 = v408 ^ __ROR4__(v396, 16);
  STACK[0xD620] = v196 + 4 * HIBYTE(v410);
  LODWORD(v384) = *(v196 + 4 * HIBYTE(v410));
  v411 = v401 ^ v404;
  STACK[0xD620] = v196 + 4 * v411;
  v412 = *(v196 + 4 * v411);
  STACK[0xD620] = v196 + 4 * BYTE1(v411);
  v413 = *(v196 + 4 * BYTE1(v411));
  STACK[0xD620] = v196 + 4 * BYTE2(v410);
  v414 = *(v196 + 4 * BYTE2(v410));
  STACK[0xD620] = v196 + 4 * BYTE1(v410);
  v415 = *(v196 + 4 * BYTE1(v410));
  STACK[0xD620] = v196 + 4 * HIBYTE(v405);
  v416 = *(v196 + 4 * HIBYTE(v405));
  STACK[0xD620] = v196 + 4 * BYTE2(v402);
  v417 = *(v196 + 4 * BYTE2(v402));
  STACK[0xD620] = v196 + 4 * HIBYTE(v402);
  v418 = *(v196 + 4 * HIBYTE(v402));
  STACK[0xD620] = v196 + 4 * v410;
  v419 = *(v196 + 4 * v410);
  STACK[0xD620] = v196 + 4 * v405;
  v420 = *(v196 + 4 * v405);
  STACK[0xD620] = v196 + 4 * HIBYTE(v411);
  v421 = *(v196 + 4 * HIBYTE(v411));
  v422 = BYTE2(v405);
  STACK[0xD620] = v196 + 4 * v422;
  v423 = *(v196 + 4 * v422);
  v424 = BYTE2(v411);
  STACK[0xD620] = v196 + 4 * v424;
  v425 = *(v196 + 4 * v424);
  v426 = v402;
  STACK[0xD620] = v196 + 4 * v402;
  v427 = v338 ^ v289 ^ LODWORD(STACK[0x5030]) ^ LODWORD(STACK[0x5680]) ^ __ROR4__(v413, 8) ^ __ROR4__(v418, 24) ^ __ROR4__(v419, 16) ^ v423;
  v428 = v338 ^ v289 ^ LODWORD(STACK[0x4F10]) ^ LODWORD(STACK[0x5660]) ^ __ROR4__(v407, 8) ^ __ROR4__(v384, 24) ^ __ROR4__(v412, 16) ^ v417;
  v429 = v338 ^ v289 ^ LODWORD(STACK[0x4F08]) ^ LODWORD(STACK[0x4F18]) ^ LODWORD(STACK[0x5670]) ^ __ROR4__(v409, 8) ^ v414 ^ __ROR4__(v420, 16) ^ __ROR4__(v421, 24);
  v430 = LODWORD(STACK[0x5028]) ^ v289 ^ v338 ^ LODWORD(STACK[0x5140]) ^ LODWORD(STACK[0x5080]) ^ LODWORD(STACK[0x5138]) ^ LODWORD(STACK[0x56C0]) ^ __ROR4__(v415, 8);
  LODWORD(v384) = *(v196 + 4 * v426);
  v431 = __ROR4__(v416, 24);
  STACK[0xD620] = v196 + 4 * BYTE1(v427);
  v432 = *(v196 + 4 * BYTE1(v427));
  STACK[0xD620] = v196 + 4 * v427;
  v433 = *(v196 + 4 * v427);
  v434 = v430 ^ v431 ^ v425 ^ __ROR4__(v384, 16);
  STACK[0xD620] = v196 + 4 * BYTE2(v434);
  LODWORD(v384) = *(v196 + 4 * BYTE2(v434));
  STACK[0xD620] = v196;
  HIDWORD(v435) = *(v196 + 4 * v434);
  LODWORD(v435) = HIDWORD(v435);
  v436 = (v435 >> 16) ^ __ROR4__(v432, 8);
  STACK[0xD620] = v196 + 4 * HIBYTE(v434);
  v437 = *(v196 + 4 * HIBYTE(v434));
  STACK[0xD620] = v196 + 4 * (v428 >> (v427 & 0x10) >> (v427 & 0x10 ^ 0x10));
  v438 = *(v196 + 4 * (v428 >> (v427 & 0x10) >> (v427 & 0x10 ^ 0x10)));
  STACK[0xD620] = v196 + 4 * v429;
  HIDWORD(v435) = v437;
  LODWORD(v435) = v437;
  v439 = *(v196 + 4 * v429);
  v440 = (v435 >> 24) ^ __ROR4__(v433, 16);
  STACK[0xD620] = v196 + 4 * HIBYTE(v427);
  v441 = *(v196 + 4 * HIBYTE(v427));
  v442 = v436 ^ v438;
  STACK[0xD620] = v196 + 4 * BYTE1(v429);
  v443 = *(v196 + 4 * BYTE1(v429));
  v444 = BYTE2(v427);
  STACK[0xD620] = v196 + 4 * v444;
  v445 = *(v196 + 4 * v444);
  v446 = v384 ^ __ROR4__(v441, 24) ^ __ROR4__(v443, 8);
  STACK[0xD620] = v196 + 4 * v428;
  LODWORD(v384) = *(v196 + 4 * v428);
  STACK[0xD620] = v196 + 4 * HIBYTE(v428);
  v447 = *(v196 + 4 * HIBYTE(v428));
  v448 = v446 ^ __ROR4__(v384, 16);
  LODWORD(STACK[0x52A8]) = v448;
  v449 = BYTE1(v434);
  STACK[0xD620] = v196 + 4 * v449;
  v450 = *(v196 + 4 * v449);
  STACK[0xD620] = v196 + 4 * HIBYTE(v429);
  LODWORD(v384) = *(v196 + 4 * HIBYTE(v429));
  v451 = v445 ^ __ROR4__(v439, 16) ^ __ROR4__(v447, 24) ^ __ROR4__(v450, 8);
  v452 = BYTE2(v429);
  STACK[0xD620] = v196 + 4 * v452;
  v453 = *(v196 + 4 * v452);
  LODWORD(v384) = v442 ^ __ROR4__(v384, 24);
  v454 = BYTE1(v428);
  STACK[0xD620] = v196 + 4 * v454;
  LODWORD(v435) = __ROR4__(*(v196 + 4 * v454), 8);
  LODWORD(STACK[0x5390]) = v318;
  v455 = (v440 ^ v453 ^ v435) - v318 + v281;
  v456 = STACK[0x4EE8];
  v457 = LODWORD(STACK[0x4EE8]) ^ LODWORD(STACK[0x4E80]);
  LODWORD(STACK[0x53B8]) = v118;
  v458 = v457 ^ v118 ^ v455;
  v459 = v455;
  LODWORD(STACK[0x52A0]) = v455;
  STACK[0xD620] = v196 + 4 * HIBYTE(v458);
  v460 = v456 ^ LODWORD(STACK[0x4F00]) ^ LODWORD(STACK[0x4EB0]) ^ LODWORD(STACK[0x5640]) ^ v384;
  v461 = v384;
  v462 = *(v196 + 4 * HIBYTE(v458));
  STACK[0xD620] = v196 + 4 * BYTE1(v460);
  v463 = *(v196 + 4 * BYTE1(v460));
  STACK[0xD620] = v196 + 4 * v458;
  v464 = *(v196 + 4 * v458);
  STACK[0xD620] = v196 + 4 * v460;
  v465 = STACK[0x4EE0];
  v466 = LODWORD(STACK[0x5650]) ^ LODWORD(STACK[0x4EE0]) ^ v448;
  v467 = *(v196 + 4 * v460);
  LODWORD(v384) = (LOBYTE(STACK[0x5650]) ^ LODWORD(STACK[0x4EE0]) ^ v448);
  STACK[0xD620] = v196 + 4 * (LOBYTE(STACK[0x5650]) ^ LODWORD(STACK[0x4EE0]) ^ v448);
  LODWORD(STACK[0x53E8]) = v281;
  v468 = v451 - v281 + v324;
  LODWORD(STACK[0x5358]) = v468;
  v469 = *(v196 + 4 * v384);
  v470 = v456 ^ LODWORD(STACK[0x5018]) ^ LODWORD(STACK[0x55E0]) ^ v468;
  STACK[0xD620] = v196 + 4 * HIBYTE(v470);
  v471 = *(v196 + 4 * HIBYTE(v470));
  STACK[0xD620] = v196 + 4 * v470;
  v472 = *(v196 + 4 * v470);
  STACK[0xD620] = v196 + 4 * BYTE1(v458);
  LODWORD(v384) = *(v196 + 4 * BYTE1(v458));
  STACK[0xD620] = v196 + 4 * BYTE1(v470);
  v473 = *(v196 + 4 * BYTE1(v470));
  v474 = BYTE2(v470);
  STACK[0xD620] = v196 + 4 * v474;
  v475 = *(v196 + 4 * v474);
  STACK[0xD620] = v196 + 4 * HIBYTE(v466);
  v476 = *(v196 + 4 * HIBYTE(v466));
  STACK[0xD620] = v196 + 4 * BYTE2(v466);
  v477 = *(v196 + 4 * BYTE2(v466));
  STACK[0xD620] = v196 + 4 * BYTE2(v460);
  v478 = *(v196 + 4 * BYTE2(v460));
  STACK[0xD620] = v196 + 4 * BYTE2(v458);
  v479 = *(v196 + 4 * BYTE2(v458));
  v480 = BYTE1(v466);
  STACK[0xD620] = v196 + 4 * v480;
  v481 = *(v196 + 4 * v480);
  v460 >>= 24;
  STACK[0xD620] = v196 + 4 * v460;
  v482 = LODWORD(STACK[0x50F0]) ^ LODWORD(STACK[0x5130]);
  v483 = v482 ^ LODWORD(STACK[0x4FE8]) ^ LODWORD(STACK[0x5580]) ^ __ROR4__(v464, 16) ^ v475 ^ __ROR4__(v481, 8);
  v484 = v482 ^ LODWORD(STACK[0x5000]) ^ LODWORD(STACK[0x55C0]) ^ __ROR4__(v463, 8) ^ __ROR4__(v472, 16) ^ __ROR4__(v476, 24) ^ v479;
  LODWORD(v435) = __ROR4__(__ROR4__(LODWORD(STACK[0x5008]) >> (BYTE1(v458) & 1) >> !(v458 & 0x100), 13) ^ 0xD7C9E34, 19);
  v485 = v482 ^ LODWORD(STACK[0x55A0]) ^ __ROR4__(v462, 24) ^ __ROR4__(v469, 16) ^ ((((v435 ^ 0xB3FF788) & STACK[0x5380]) << LODWORD(STACK[0x57C0])) | (((v435 ^ 0xB3FF788) & STACK[0x5388]) >> LODWORD(STACK[0x53E0])));
  v486 = v482 ^ LODWORD(STACK[0x5560]) ^ __ROR4__(v467, 16) ^ __ROR4__(v471, 24);
  LODWORD(v435) = __ROR4__(v384, 8);
  v487 = STACK[0x4FF0];
  LODWORD(v384) = *(v196 + 4 * v460);
  STACK[0xD620] = v196 + 4 * BYTE2(v484);
  v488 = (v486 ^ v435 ^ v477 ^ -(v486 ^ v435 ^ v477) ^ (v487 - (v486 ^ v435 ^ v477 ^ v487))) + v487;
  v489 = *(v196 + 4 * BYTE2(v484));
  STACK[0xD620] = v196;
  v490 = *(v196 + 4 * v488);
  LODWORD(v435) = __ROR4__(v473, 8);
  STACK[0xD620] = v196 + 4 * HIBYTE(v484);
  v491 = *(v196 + 4 * HIBYTE(v484));
  v492 = v485 ^ v435 ^ v478;
  STACK[0xD620] = v196 + 4 * HIBYTE(v492);
  v493 = *(v196 + 4 * HIBYTE(v492));
  LODWORD(v435) = __ROR4__(v384, 24);
  v494 = v483 ^ v435;
  STACK[0xD620] = v196 + 4 * ((v483 ^ v435) >> 16);
  v495 = *(v196 + 4 * ((v483 ^ v435) >> 16));
  STACK[0xD620] = v196 + 4 * BYTE1(v484);
  LODWORD(v384) = *(v196 + 4 * BYTE1(v484));
  STACK[0xD620] = v196 + 4 * (v483 ^ v435);
  v496 = *(v196 + 4 * (v483 ^ v435));
  STACK[0xD620] = v196 + 4 * HIBYTE(v494);
  v497 = *(v196 + 4 * HIBYTE(v494));
  STACK[0xD620] = v196 + 4 * BYTE1(v488);
  v498 = *(v196 + 4 * BYTE1(v488));
  STACK[0xD620] = v196 + 4 * v484;
  v499 = *(v196 + 4 * v484);
  STACK[0xD620] = v196 + 4 * BYTE2(v492);
  v500 = *(v196 + 4 * BYTE2(v492));
  v501 = BYTE1(v494);
  STACK[0xD620] = v196 + 4 * v501;
  v502 = *(v196 + 4 * v501);
  STACK[0xD620] = v196 + 4 * BYTE1(v492);
  v503 = *(v196 + 4 * BYTE1(v492));
  v504 = BYTE2(v488);
  STACK[0xD620] = v196 + 4 * BYTE2(v488);
  v488 >>= 24;
  v505 = *(v196 + 4 * v504);
  STACK[0xD620] = v196 + 4 * v488;
  v506 = *(v196 + 4 * v488);
  v507 = v492;
  STACK[0xD620] = v196 + 4 * v492;
  v508 = v291 ^ LODWORD(STACK[0x4F80]);
  LODWORD(v384) = v508 ^ LODWORD(STACK[0x4ED0]) ^ LODWORD(STACK[0x5500]) ^ __ROR4__(v384, 8) ^ __ROR4__(v497, 24) ^ v505 ^ __ROR4__(*(v196 + 4 * v507), 16);
  v509 = v508 ^ LODWORD(STACK[0x4FC8]) ^ LODWORD(STACK[0x5520]) ^ __ROR4__(v493, 24);
  v510 = v508 ^ LODWORD(STACK[0x4FC0]) ^ LODWORD(STACK[0x5630]) ^ v489 ^ __ROR4__(v496, 16);
  v511 = v291 ^ LODWORD(STACK[0x5398]) ^ LODWORD(STACK[0x4F88]) ^ LODWORD(STACK[0x4EC8]) ^ LODWORD(STACK[0x5540]) ^ __ROR4__(v490, 16) ^ __ROR4__(v491, 24) ^ v500 ^ __ROR4__(v502, 8);
  STACK[0xD620] = v196 + 4 * BYTE1(v384);
  v512 = *(v196 + 4 * BYTE1(v384));
  STACK[0xD620] = v196 + 4 * BYTE2(v384);
  v513 = *(v196 + 4 * BYTE2(v384));
  STACK[0xD620] = v196;
  v514 = *(v196 + 4 * v511);
  v515 = v510 ^ __ROR4__(v503, 8);
  STACK[0xD620] = v196 + 4 * BYTE3(v384);
  v516 = *(v196 + 4 * BYTE3(v384));
  LODWORD(v435) = __ROR4__(v506, 24);
  v517 = v515 ^ v435;
  v518 = (v515 ^ v435);
  STACK[0xD620] = v196 + 4 * v518;
  v519 = *(v196 + 4 * v518);
  STACK[0xD620] = v196 + 4 * v384;
  v520 = *(v196 + 4 * v384);
  STACK[0xD620] = v196 + 4 * BYTE2(v511);
  v521 = *(v196 + 4 * BYTE2(v511));
  v522 = v509 ^ v495 ^ __ROR4__(v498, 8) ^ __ROR4__(v499, 16);
  STACK[0xD620] = v196 + 4 * HIBYTE(v522);
  LODWORD(v384) = *(v196 + 4 * HIBYTE(v522));
  STACK[0xD620] = v196 + 4 * BYTE2(v522);
  v523 = *(v196 + 4 * BYTE2(v522));
  STACK[0xD620] = v196 + 4 * HIBYTE(v517);
  v524 = *(v196 + 4 * HIBYTE(v517));
  STACK[0xD620] = v196 + 4 * BYTE1(v517);
  v525 = *(v196 + 4 * BYTE1(v517));
  STACK[0xD620] = v196 + 4 * BYTE1(v522);
  v526 = *(v196 + 4 * BYTE1(v522));
  STACK[0xD620] = v196 + 4 * HIBYTE(v511);
  v527 = *(v196 + 4 * HIBYTE(v511));
  v528 = BYTE1(v511);
  STACK[0xD620] = v196 + 4 * v528;
  v529 = *(v196 + 4 * v528);
  STACK[0xD620] = v196 + 4 * v522;
  v530 = *(v196 + 4 * v522);
  STACK[0xD620] = v196 + 4 * BYTE2(v517);
  v531 = *(v196 + 4 * BYTE2(v517));
  STACK[0xD620] = v196;
  v532 = STACK[0x5128];
  v533 = STACK[0x50F8];
  v534 = LODWORD(STACK[0x50F8]) ^ LODWORD(STACK[0x5128]);
  v535 = v534 ^ LODWORD(STACK[0x5020]);
  LODWORD(STACK[0x5350]) = v535;
  v536 = v535 ^ LODWORD(STACK[0x54D0]) ^ __ROR4__(v512, 8) ^ __ROR4__(v519, 16) ^ v523 ^ __ROR4__(v527, 24);
  v537 = LODWORD(STACK[0x5490]) ^ v533 ^ __ROR4__(v516, 24) ^ __ROR4__(v529, 8) ^ __ROR4__(v530, 16) ^ v531;
  v538 = v534 ^ LODWORD(STACK[0x4EB8]) ^ LODWORD(STACK[0x4EC0]) ^ LODWORD(STACK[0x54B0]) ^ v513 ^ __ROR4__(v514, 16) ^ __ROR4__(v384, 24) ^ __ROR4__(v525, 8);
  v539 = (v532 ^ LODWORD(STACK[0x4E78]) ^ (v537 - (v537 ^ v532))) + v537;
  LODWORD(v384) = v534 ^ LODWORD(STACK[0x4FA8]) ^ LODWORD(STACK[0x5470]) ^ __ROR4__(v520, 16) ^ v521 ^ __ROR4__(v524, 24) ^ __ROR4__(v526, 8);
  v540 = STACK[0xD618];
  v541 = *(STACK[0xD618] + 4 * BYTE1(v536)) ^ __ROR4__(*(STACK[0xD618] + 4 * v538), 8) ^ __ROR4__(*(STACK[0xD618] + 4 * BYTE2(v384)), 24);
  v542 = (v539 ^ -v539 ^ (LODWORD(STACK[0x4F98]) - (v539 ^ LODWORD(STACK[0x4F98])))) + LODWORD(STACK[0x4F98]);
  v543 = *(STACK[0xD618] + 4 * BYTE1(v542)) ^ __ROR4__(*(STACK[0xD618] + 4 * v384), 8);
  STACK[0xD618] += 4 * v536;
  v544 = *(v540 + 4 * v536);
  STACK[0xD618] = v540 + 4 * BYTE3(v384);
  v545 = *(v540 + 4 * BYTE3(v384));
  STACK[0xD618] = v540 + 4 * BYTE2(v538);
  v546 = v543 ^ __ROR4__(*(v540 + 4 * BYTE2(v538)), 24);
  STACK[0xD618] = v540 + 4 * HIBYTE(v536);
  v547 = *(v540 + 4 * HIBYTE(v536));
  STACK[0xD618] = v540 + 4 * v542;
  LODWORD(v435) = __ROR4__(v547, 16);
  v548 = *(v540 + 4 * v542);
  STACK[0xD618] = v540 + 4 * HIBYTE(v542);
  v549 = *(v540 + 4 * HIBYTE(v542));
  v550 = HIBYTE(v538);
  STACK[0xD618] = v540 + 4 * HIBYTE(v538);
  LODWORD(v384) = *(v540 + 4 * BYTE1(v384));
  v551 = *(v540 + 4 * BYTE2(v542));
  v552 = *(v540 + 4 * BYTE1(v538));
  v553 = *(v540 + 4 * BYTE2(v536));
  v554 = *(v540 + 4 * v550);
  STACK[0xD618] = v540;
  v555 = STACK[0x5158];
  LODWORD(v540) = ((v546 ^ v435) - 1615624580 - ((2 * (v546 ^ v435)) & 0x3F670CF8)) ^ LODWORD(STACK[0x5158]);
  v556 = STACK[0x51A0];
  LODWORD(v540) = LODWORD(STACK[0x5410]) ^ LODWORD(STACK[0x51A0]) ^ (v540 + 1956680331 - ((2 * v540) & 0xE9412516));
  LODWORD(STACK[0x5360]) = v540 - 520778793 - ((2 * v540) & 0xC1EB17AE);
  LODWORD(v540) = (LODWORD(STACK[0x53F8]) + 1956680331 - ((2 * LODWORD(STACK[0x53F8])) & 0xE9412516)) ^ v556 ^ v384 ^ __ROR4__(v551, 24) ^ (v544 >> 8) ^ (v544 << (v541 & 0x18) << (v541 & 0x18 ^ 0x18));
  LODWORD(v435) = __ROR4__(v554, 16);
  v557 = ((v540 ^ v435) - 1615624580 - ((2 * (v540 ^ v435)) & 0x3F670CF8)) ^ v555;
  LODWORD(STACK[0x52B8]) = v557 - 520778793 - ((2 * v557) & 0xC1EB17AE);
  v558 = v552 ^ LODWORD(STACK[0x5430]) ^ __ROR4__(v553, 24) ^ __ROR4__(v545, 16);
  v559 = __PAIR64__(v549, __ROR4__(v548, 8));
  v560 = ((v558 ^ v559) + 1956680331 - ((2 * (v558 ^ v559)) & 0xE9412516)) ^ v556;
  v561 = (v560 - 1615624580 - ((2 * v560) & 0x3F670CF8)) ^ v555;
  LODWORD(STACK[0x52B0]) = v561 - 520778793 - ((2 * v561) & 0xC1EB17AE);
  LODWORD(v559) = v549;
  LODWORD(v540) = v456 ^ LODWORD(STACK[0x5010]) ^ LODWORD(STACK[0x5600]) ^ v459;
  v562 = STACK[0xD620];
  STACK[0xD620] += 4 * BYTE2(v540);
  v563 = STACK[0x52A8];
  v564 = v456 ^ LODWORD(STACK[0x4EF0]) ^ LODWORD(STACK[0x4EF8]) ^ LODWORD(STACK[0x5610]) ^ LODWORD(STACK[0x52A8]);
  v565 = *(v562 + 4 * BYTE2(v540));
  STACK[0xD620] = v562;
  v566 = *(v562 + 4 * BYTE1(v564));
  STACK[0xD620] = v562 + 4 * BYTE3(v540);
  v567 = v456 ^ LODWORD(STACK[0x4EA8]);
  v568 = v567 ^ LODWORD(STACK[0x55F0]) ^ v461;
  LODWORD(v384) = *(v562 + 4 * BYTE3(v540));
  v569 = (v567 ^ LOBYTE(STACK[0x55F0]) ^ v461);
  STACK[0xD620] = v562 + 4 * v569;
  v570 = ((v559 >> 16) - 520778793 - ((2 * (v559 >> 16)) & 0xC1EB17AE)) ^ LODWORD(STACK[0x5150]);
  v571 = (2 * v570) & 0x3F670CF8;
  v572 = v570 - 1615624580;
  v573 = *(v562 + 4 * v569);
  v574 = v572 - v571;
  STACK[0xD620] = v562 + 4 * BYTE2(v564);
  v575 = *(v562 + 4 * BYTE2(v564));
  STACK[0xD620] = v562 + 4 * HIBYTE(v568);
  v576 = *(v562 + 4 * HIBYTE(v568));
  v577 = LODWORD(STACK[0x5450]) ^ v555 ^ v541;
  STACK[0xD620] = v562 + 4 * v540;
  v578 = *(v562 + 4 * v540);
  v579 = v577 ^ v574;
  STACK[0xD620] = v562 + 4 * v564;
  v580 = *(v562 + 4 * v564);
  LODWORD(v540) = BYTE1(v540);
  STACK[0xD620] = v562 + 4 * v540;
  v581 = *(v562 + 4 * v540);
  v582 = STACK[0x5358];
  v583 = LODWORD(STACK[0x55D0]) ^ v465 ^ LODWORD(STACK[0x5358]);
  STACK[0xD620] = v562 + 4 * BYTE1(v583);
  v584 = *(v562 + 4 * BYTE1(v583));
  STACK[0xD620] = v562 + 4 * BYTE2(v568);
  v585 = *(v562 + 4 * BYTE2(v568));
  STACK[0xD620] = v562 + 4 * BYTE2(v583);
  HIDWORD(v559) = v580;
  LODWORD(v559) = v580;
  v586 = (v559 >> 16) ^ __ROR4__(v384, 24) ^ __ROR4__(v584, 8);
  v587 = v585 & 0x80;
  if ((v585 & 0x80 & v586) != 0)
  {
    v587 = -v587;
  }

  v588 = v587 + v586;
  v589 = *(v562 + 4 * BYTE2(v583));
  v590 = BYTE1(v568);
  STACK[0xD620] = v562 + 4 * v590;
  v591 = *(v562 + 4 * v590);
  v592 = v583;
  STACK[0xD620] = v562 + 4 * v583;
  v593 = HIBYTE(v583);
  v594 = *(v562 + 4 * v592);
  STACK[0xD620] = v562 + 4 * v593;
  v595 = HIBYTE(v564);
  v596 = *(v562 + 4 * v593);
  STACK[0xD620] = v562 + 4 * v595;
  v597 = v482 ^ LODWORD(STACK[0x4FF8]) ^ LODWORD(STACK[0x55B0]) ^ v565;
  v598 = v482 ^ LODWORD(STACK[0x4FD0]) ^ LODWORD(STACK[0x5570]) ^ __ROR4__(v566, 8) ^ __ROR4__(v576, 24) ^ __ROR4__(v578, 16) ^ v589;
  v599 = v482 ^ LODWORD(STACK[0x4FE0]) ^ LODWORD(STACK[0x5550]) ^ __ROR4__(v573, 16) ^ v575 ^ __ROR4__(v581, 8) ^ __ROR4__(v596, 24);
  v600 = *(v562 + 4 * v595);
  STACK[0xD620] = v562 + 4 * HIBYTE(v599);
  v601 = v597 ^ __ROR4__(v591, 8) ^ __ROR4__(v594, 16);
  v602 = *(v562 + 4 * HIBYTE(v599));
  v604 = __ROR4__(v600, 24);
  v603 = v601 ^ v604;
  STACK[0xD620] = v562 + 4 * ((v601 ^ v604) >> 16);
  v605 = *(v562 + 4 * ((v601 ^ v604) >> 16));
  v606 = (v601 ^ v604) >> 24;
  STACK[0xD620] = v562 + 4 * v606;
  v607 = *(v562 + 4 * v606);
  STACK[0xD620] = v562 + 4 * BYTE1(v599);
  v608 = *(v562 + 4 * BYTE1(v599));
  STACK[0xD620] = v562 + 4 * BYTE2(v598);
  v609 = *(v562 + 4 * BYTE2(v598));
  v610 = v482 ^ LODWORD(STACK[0x4FD8]) ^ LODWORD(STACK[0x5590]) ^ v585 & 0xFFFFFF7F;
  STACK[0xD620] = v562 + 4 * ((v601 ^ v604) >> 8);
  v611 = *(v562 + 4 * ((v601 ^ v604) >> 8));
  v612 = v610 ^ v588;
  STACK[0xD620] = v562 + 4 * v612;
  v613 = *(v562 + 4 * v612);
  STACK[0xD620] = v562 + 4 * v599;
  v614 = *(v562 + 4 * v599);
  v615 = BYTE2(v599);
  STACK[0xD620] = v562 + 4 * v615;
  v616 = *(v562 + 4 * v615);
  v617 = v579 + 1956680331 - ((2 * v579) & 0xE9412516);
  STACK[0xD620] = v562 + 4 * HIBYTE(v598);
  v618 = *(v562 + 4 * HIBYTE(v598));
  STACK[0xD620] = v562 + 4 * v603;
  v619 = *(v562 + 4 * v603);
  STACK[0xD620] = v562 + 4 * v598;
  v620 = *(v562 + 4 * v598);
  STACK[0xD620] = v562 + 4 * BYTE1(v612);
  v621 = *(v562 + 4 * BYTE1(v612));
  STACK[0xD620] = v562 + 4 * HIBYTE(v612);
  v622 = *(v562 + 4 * HIBYTE(v612));
  v623 = BYTE2(v612);
  STACK[0xD620] = v562 + 4 * v623;
  v625 = __PAIR64__(v622, __ROR4__(v619, 16));
  v624 = v609 ^ __ROR4__(v608, 8) ^ v625;
  v626 = *(v562 + 4 * v623);
  LODWORD(v625) = v622;
  STACK[0xD620] = v562 + 4 * BYTE1(v598);
  v627 = v508 ^ LODWORD(STACK[0x4ED8]) ^ LODWORD(STACK[0x5398]) ^ LODWORD(STACK[0x54E0]) ^ __ROR4__(v602, 24) ^ v605;
  v628 = v508 ^ LODWORD(STACK[0x4FB8]) ^ LODWORD(STACK[0x5510]) ^ ((v625 >> 24) + v624 - 2 * ((v625 >> 24) & v624));
  v629 = v508 ^ LODWORD(STACK[0x4E98]) ^ LODWORD(STACK[0x4EA0]);
  v630 = v508 ^ LODWORD(STACK[0x4FB0]) ^ LODWORD(STACK[0x54F0]) ^ __ROR4__(v611, 8) ^ __ROR4__(v613, 16) ^ v616;
  v631 = *(v562 + 4 * BYTE1(v598));
  STACK[0xD620] = v562 + 4 * BYTE2(v628);
  v632 = v627 ^ __ROR4__(v620, 16) ^ __ROR4__(v621, 8);
  v633 = v630 ^ __ROR4__(v618, 24);
  v634 = *(v562 + 4 * BYTE2(v628));
  STACK[0xD620] = v562;
  v635 = *(v562 + 4 * HIBYTE(v632));
  STACK[0xD620] = v562 + 4 * HIBYTE(v633);
  v636 = *(v562 + 4 * HIBYTE(v633));
  v637 = v629 ^ LODWORD(STACK[0x5530]) ^ __ROR4__(v607, 24) ^ __ROR4__(v614, 16) ^ v626;
  STACK[0xD620] = v562 + 4 * v628;
  v638 = *(v562 + 4 * v628);
  STACK[0xD620] = v562 + 4 * v632;
  v639 = *(v562 + 4 * v632);
  STACK[0xD620] = v562 + 4 * BYTE1(v632);
  v640 = *(v562 + 4 * BYTE1(v632));
  STACK[0xD620] = v562 + 4 * BYTE2(v633);
  v641 = v637 ^ __ROR4__(v631, 8);
  v642 = *(v562 + 4 * BYTE2(v633));
  STACK[0xD620] = v562 + 4 * HIBYTE(v641);
  v643 = *(v562 + 4 * HIBYTE(v641));
  STACK[0xD620] = v562 + 4 * BYTE2(v641);
  v644 = *(v562 + 4 * BYTE2(v641));
  v645 = (v563 + 1375524970) ^ 0xEA1F4898 ^ LODWORD(STACK[0x52A0]);
  STACK[0xD620] = v562 + 4 * HIBYTE(v628);
  v646 = *(v562 + 4 * HIBYTE(v628));
  STACK[0xD620] = v562 + 4 * v633;
  v647 = *(v562 + 4 * v633);
  STACK[0xD620] = v562 + 4 * v641;
  v648 = *(v562 + 4 * v641);
  STACK[0xD620] = v562 + 4 * BYTE1(v628);
  v649 = *(v562 + 4 * BYTE1(v628));
  v650 = BYTE1(v641);
  STACK[0xD620] = v562 + 4 * v650;
  v651 = *(v562 + 4 * v650);
  STACK[0xD620] = v562 + 4 * BYTE2(v632);
  v652 = *(v562 + 4 * BYTE2(v632));
  v653 = (v461 ^ 0xD8462E7C ^ (v645 - 990752300)) + v582;
  STACK[0xD620] = v562 + 4 * BYTE1(v633);
  v654 = *(v562 + 4 * BYTE1(v633));
  STACK[0xD620] = v562;
  v655 = v534 ^ LODWORD(STACK[0x4E70]) ^ LODWORD(STACK[0x5460]) ^ __ROR4__(v635, 24) ^ v644;
  v656 = v534 ^ LODWORD(STACK[0x4F90]) ^ LODWORD(STACK[0x54A0]) ^ (v640 >> 8) ^ (v640 << 24) ^ v642;
  v657 = LODWORD(STACK[0x5350]) ^ LODWORD(STACK[0x54C0]) ^ v634 ^ __ROR4__(v639, 16) ^ __ROR4__(v643, 24) ^ __ROR4__(v654, 8);
  v658 = STACK[0xD618];
  STACK[0xD618] += 4 * v657;
  v659 = v655 ^ __ROR4__(v647, 16);
  LODWORD(v625) = __ROR4__(v649, 8);
  v660 = v659 ^ v625;
  v661 = *(v658 + 4 * v657);
  v662 = (v659 ^ v625);
  STACK[0xD618] = v658 + 4 * v662;
  v663 = *(v658 + 4 * v662);
  STACK[0xD618] = v658 + 4 * BYTE1(v657);
  v664 = v656 ^ __ROR4__(v646, 24);
  LODWORD(v625) = __ROR4__(v648, 16);
  v665 = v664 ^ v625;
  v666 = *(v658 + 4 * BYTE1(v657));
  v667 = *(v658 + 4 * BYTE2(v660));
  v668 = (v664 ^ v625);
  STACK[0xD618] = v658 + 4 * v668;
  LODWORD(v625) = __ROR4__(v651, 8);
  v669 = *(v658 + 4 * v668);
  v670 = v534 ^ LODWORD(STACK[0x4FA0]) ^ LODWORD(STACK[0x5480]) ^ __ROR4__(v636, 24) ^ __ROR4__(v638, 16) ^ v625 ^ v652;
  STACK[0xD618] = v658 + 4 * HIBYTE(v670);
  v671 = v653 ^ 0x16147C7D;
  v672 = v653 ^ 0x16147C7D ^ LODWORD(STACK[0x4E90]);
  v673 = v672 ^ LODWORD(STACK[0x5408]) ^ *(v658 + 4 * BYTE1(v670)) ^ __ROR4__(*(v658 + 4 * HIBYTE(v657)), 16) ^ __ROR4__(*(v658 + 4 * BYTE2(v665)), 24);
  LODWORD(v625) = __ROR4__(v663, 8);
  v674 = (v673 ^ v625) - 520778793 - ((2 * (v673 ^ v625)) & 0xC1EB17AE);
  v675 = ((v671 ^ LODWORD(STACK[0x5440])) + 1956680331 - ((2 * (v671 ^ LODWORD(STACK[0x5440]))) & 0xE9412516)) ^ v556 ^ __ROR4__(*(v658 + 4 * HIBYTE(v665)), 16) ^ *(v658 + 4 * BYTE1(v660)) ^ __ROR4__(*(v658 + 4 * BYTE2(v670)), 24);
  LODWORD(v625) = __ROR4__(v661, 8);
  v676 = (v675 ^ v625) - 1615624580 - ((2 * (v675 ^ v625)) & 0x3F670CF8);
  v677 = v653 ^ 0x16147C7D ^ LODWORD(STACK[0x5420]) ^ v666 ^ __ROR4__(v667, 24) ^ __ROR4__(v669, 8);
  LODWORD(v625) = __ROR4__(*(v658 + 4 * HIBYTE(v670)), 16);
  v678 = ((v677 ^ v625) + 1956680331 - ((2 * (v677 ^ v625)) & 0xE9412516)) ^ v556;
  v679 = (v676 ^ v555) - 520778793 - ((2 * (v676 ^ v555)) & 0xC1EB17AE);
  v680 = v672 ^ LODWORD(STACK[0x5400]) ^ __ROR4__(*(v658 + ((v660 >> 22) & 0x3FC)), 16) ^ __ROR4__(*(v658 + 4 * BYTE2(v657)), 24) ^ __ROR4__(*(v658 + 4 * v670), 8) ^ *(v658 + 4 * BYTE1(v665));
  v681 = v680 - 520778793 - ((2 * v680) & 0xC1EB17AE);
  v682 = (v678 - 1615624580 - ((2 * v678) & 0x3F670CF8)) ^ v555;
  v683 = v682 - 520778793 - ((2 * v682) & 0xC1EB17AE);
  v684 = STACK[0x5160];
  v685 = LODWORD(STACK[0x5160]) ^ 0xDCE09998 ^ LODWORD(STACK[0x5360]);
  v686 = LODWORD(STACK[0x5160]) ^ 0xDCE09998 ^ LODWORD(STACK[0x52B8]);
  v687 = LODWORD(STACK[0x5160]) ^ 0xDCE09998 ^ LODWORD(STACK[0x52B0]);
  v688 = STACK[0x57B0];
  if (STACK[0x57B0])
  {
    v689 = LODWORD(STACK[0x5160]) ^ 0xDCE09998 ^ LODWORD(STACK[0x5360]);
  }

  else
  {
    v689 = LODWORD(STACK[0x5160]) ^ 0xDCE09998 ^ LODWORD(STACK[0x52B8]);
  }

  if (v688)
  {
    v685 = LODWORD(STACK[0x5160]) ^ 0xDCE09998 ^ LODWORD(STACK[0x52B0]);
  }

  else
  {
    v686 = LODWORD(STACK[0x5198]) ^ 0xA31DEE03 ^ v617;
  }

  if (v688)
  {
    v687 = LODWORD(STACK[0x5198]) ^ 0xA31DEE03 ^ v617;
  }

  v690 = v684 ^ 0x30DC2081 ^ v674;
  v691 = v684 ^ 0x30DC2081 ^ v679;
  v692 = v684 ^ 0x30DC2081 ^ v681;
  v693 = v684 ^ 0x30DC2081 ^ v683;
  if (v688)
  {
    v694 = v690;
  }

  else
  {
    v694 = v691;
  }

  if (v688)
  {
    v690 = v692;
  }

  else
  {
    v691 = v693;
  }

  if (v688)
  {
    v695 = v693;
  }

  else
  {
    v695 = v692;
  }

  if ((v688 & 2) != 0)
  {
    v696 = v686;
  }

  else
  {
    v696 = v685;
  }

  if ((STACK[0x57B0] & 2) != 0)
  {
    v686 = v685;
    v697 = v687;
  }

  else
  {
    v697 = v689;
  }

  if ((STACK[0x57B0] & 2) != 0)
  {
    v698 = v691;
  }

  else
  {
    v689 = v687;
    v698 = v690;
  }

  if ((STACK[0x57B0] & 2) != 0)
  {
    v699 = v690;
  }

  else
  {
    v699 = v691;
  }

  if ((STACK[0x57B0] & 2) != 0)
  {
    v700 = v695;
  }

  else
  {
    v700 = v694;
  }

  if ((STACK[0x57B0] & 2) != 0)
  {
    v701 = v694;
  }

  else
  {
    v701 = v695;
  }

  v702 = v653 ^ 0xFA28C564;
  v703 = v689 ^ (1945842009 * (v653 ^ 0xFA28C564)) ^ (1945842009 * (v698 ^ v696));
  v704 = v701 ^ v671;
  v705 = v701 ^ v671 ^ v697 ^ v703;
  v706 = (1652202769 * (v700 ^ v671)) ^ v686 ^ (1652202769 * v705);
  v707 = v705 ^ v671;
  v708 = v703 ^ (-590628503 * (v700 ^ 0xEC3CB919)) ^ (-590628503 * (v707 ^ 0xEC3CB919));
  v709 = v706 ^ v696;
  v710 = v708 + 1268886697 * ((v698 ^ 0xEC3CB919) + (v709 ^ v699 ^ 0x13C346E6)) + 1268886697;
  v711 = STACK[0x53B0];
  v712 = *(&off_101353600 + (STACK[0x53B0] & 0xB109C7E3)) - 8;
  v713 = STACK[0x52F0];
  *(v713 + LODWORD(STACK[0x52D8])) = v712[(v708 + -87 * ((v698 ^ 0x19) + (v709 ^ v699 ^ 0xE6)) - 87) ^ 0xF4] ^ 0xD1;
  v714 = *(&off_101353600 + (v711 ^ 0x380E)) - 4;
  *(v713 + LODWORD(STACK[0x52C0])) = v714[BYTE2(v710) ^ 0x32] ^ 9;
  v715 = v706 ^ (1938345623 * v702) ^ (1938345623 * (v708 ^ v701));
  v716 = v715 + 407311443 * ((v709 ^ v699 ^ v671) - (v698 ^ v671));
  v717 = v707 ^ v699 ^ v715;
  v718 = v716 ^ v671;
  v719 = v717 & 0x80;
  if ((v717 & 0x80 & v718) != 0)
  {
    v719 = -v719;
  }

  v720 = v717 & 0xFFFFFF7F ^ v700 ^ (v719 + v718);
  v721 = v709 ^ v720;
  v722 = *(&off_101353600 + v711 - 14423) - 4;
  *(v713 + LODWORD(STACK[0x52E0])) = v722[(v709 ^ v717 & 0x7F ^ v700 ^ (v719 + v718)) ^ 0x1BLL] ^ (~(2 * (v709 ^ v720)) + (v709 ^ v720) + 0x80) ^ 0xE4;
  v723 = *(&off_101353600 + (v711 ^ 0x38CA)) - 8;
  *(v713 + LODWORD(STACK[0x52E8])) = v723[((v721 ^ 0xB919) >> 8) ^ 0x1ELL] ^ (((v721 ^ 0xB919) >> 8) - (((v721 ^ 0xEC3CB919) >> 7) & 0xF0) + 120) ^ 0x40;
  *(v713 + LODWORD(STACK[0x52F8])) = v714[HIBYTE(v721) ^ 0x8FLL] ^ 0x61;
  v724 = v704 ^ v710 ^ v717;
  *(v713 + LODWORD(STACK[0x52D0])) = v712[BYTE1(v724) ^ 0x93] ^ 7;
  *(v713 + LODWORD(STACK[0x52C8])) = v712[BYTE2(v724) ^ 0xB4] ^ 0x29;
  *(v713 + LODWORD(STACK[0x5310])) = v714[HIBYTE(v720) ^ 0xF0] ^ 0x3F;
  *(v713 + LODWORD(STACK[0x5308])) = v722[BYTE1(v710) ^ 0x3ELL] ^ (~(2 * BYTE1(v710)) + BYTE1(v710) + 0x80) ^ 0xCE;
  *(v713 + LODWORD(STACK[0x5300])) = v714[HIBYTE(v710) ^ 0xC9] ^ 0x53;
  v725 = STACK[0xD638];
  v726 = STACK[0xD638];
  *(v725 + LODWORD(STACK[0x5340])) = v712[BYTE2(v721) ^ 0xCFLL] ^ 0xF5;
  *(v725 + LODWORD(STACK[0x5320])) = v722[(v704 ^ v710 ^ v717) ^ 0x33] ^ (127 - (v704 ^ v710 ^ v717)) ^ 0x86;
  *(v725 + LODWORD(STACK[0x5318])) = v723[v720 ^ 0x5ALL] ^ (v720 - ((2 * v720) & 0xF0) + 120) ^ 0xF2;
  *(v725 + LODWORD(STACK[0x5338])) = v722[HIBYTE(v724) ^ 0xBBLL] ^ (127 - HIBYTE(v724)) ^ 0xAE;
  *(v725 + LODWORD(STACK[0x5348])) = v712[BYTE1(v720) ^ 0xE4] ^ 0x45;
  *(v726 + LODWORD(STACK[0x5328])) = v712[BYTE2(v720) ^ 0x3ELL] ^ 0x4D;
  STACK[0xD618] = v658;
  v727 = (((LODWORD(STACK[0x5330]) ^ 0xD9DD396A) + 639813270) ^ ((LODWORD(STACK[0x5330]) ^ 0xC6AD86AD) + 961706323) ^ ((LODWORD(STACK[0x5330]) ^ 0x60158964) - 1612024164)) - 1198212494;
  v728 = (v727 ^ 0x969E7F3C) & (2 * (v727 & 0xC6D07C41)) ^ v727 & 0xC6D07C41;
  v729 = ((2 * (v727 ^ 0x921E773C)) ^ 0xA99C16FA) & (v727 ^ 0x921E773C) ^ (2 * (v727 ^ 0x921E773C)) & 0x54CE0B7C;
  v730 = (v729 ^ 0x40800A09) & (4 * v728) ^ v728;
  v731 = ((4 * (v729 ^ 0x54420905)) ^ 0x53382DF4) & (v729 ^ 0x54420905) ^ (4 * (v729 ^ 0x54420905)) & 0x54CE0B7C;
  v732 = (v731 ^ 0x50080979) & (16 * v730) ^ v730;
  v733 = ((16 * (v731 ^ 0x4C60209)) ^ 0x4CE0B7D0) & (v731 ^ 0x4C60209) ^ (16 * (v731 ^ 0x4C60209)) & 0x54CE0B70;
  v734 = v732 ^ 0x54CE0B7D ^ (v733 ^ 0x44C0032D) & (v732 << 8);
  v735 = v727 ^ (2 * ((v734 << 16) & 0x54CE0000 ^ v734 ^ ((v734 << 16) ^ 0xB7D0000) & (((v733 ^ 0x100E082D) << 8) & 0x54CE0000 ^ 0x10C40000 ^ (((v733 ^ 0x100E082D) << 8) ^ 0xCE0B0000) & (v733 ^ 0x100E082D))));
  v736 = (((v735 ^ 0x43B9EC2A) - 1393078322) ^ ((v735 ^ 0xB4E9A342) + 1537671334) ^ ((v735 ^ 0x988425D3) + 2009761333)) - 98792820;
  v737 = v736 >= LODWORD(STACK[0x53A0]);
  v738 = LODWORD(STACK[0x5368]) ^ (v736 < 0x7AB753E9);
  v739 = !v737;
  if (v738)
  {
    v740 = STACK[0x5368];
  }

  else
  {
    v740 = v739;
  }

  return (*(STACK[0x57D8] + 8 * ((426 * (v740 ^ 1)) ^ v711)))();
}

uint64_t sub_100480750()
{
  v1 = STACK[0x51B8] ^ 0x7F50;
  v2 = STACK[0x51B8] + 3962;
  v3 = (((STACK[0x51B8] ^ 0x5E52) - 4955) ^ v0);
  LODWORD(STACK[0xB770]) = v3;
  return (*(STACK[0x57D8] + 8 * ((((v3 + 10) <= LODWORD(STACK[0xC264])) * (v1 - 9930)) ^ v2)))();
}

uint64_t sub_1004807CC@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v2 = STACK[0xB018];
  v3 = STACK[0x7ED8];
  STACK[0x5DD8] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v3 + ((a2 + 6984) ^ 0x2014);
  STACK[0x9D08] = v2;
  STACK[0xC538] = 0;
  STACK[0x6168] = 0;
  LODWORD(STACK[0x75DC]) = 2101965948;
  v4 = STACK[0x57D8];
  STACK[0xC1C0] = *(STACK[0x57D8] + 8 * a2);
  return (*(v4 + 8 * (a2 ^ 0x165E)))(4294960487, a1, 12942, 30467, 15506, 2193001348, 2147336180, 0x5FFBEFAF3FFEDFFBLL);
}

uint64_t sub_100480984()
{
  v2 = STACK[0x51B8];
  v3 = STACK[0x51B8] - 19175;
  *(v0 + 600) = STACK[0xBB18];
  *(v0 + 592) = v2 - 711523751 * ((v1 - 240) ^ 0x301A21D1) + 4438;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v2 + 9156)))(v1 - 240);
  return (*(v4 + 8 * v3))(v5);
}

uint64_t sub_100480AEC()
{
  STACK[0x1D4C8] = 0;
  LODWORD(STACK[0x1D4C0]) = (v0 + 1717140517) ^ (1964904101 * ((v1 + 1715309327 - 2 * ((v1 - 240) & 0x663D8BFF)) ^ 0x9C1F607B));
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 1082)))(v1 - 240);
  return (*(v2 + 8 * (((16 * ((((3769 * (v0 ^ 0x780D)) ^ (*STACK[0x4658] == 0)) & 1) == 0)) & 0xBF | ((((-71 * (v0 ^ 0xD)) ^ ~(*STACK[0x4658] == 0)) & 1) << 6)) ^ v0)))(v3);
}

uint64_t sub_100480BA8()
{
  v0 = STACK[0x2788];
  STACK[0xD6E0] = STACK[0x5E08] + 4;
  v1 = STACK[0x57D8];
  STACK[0xCF38] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * ((v0 ^ 0xE6) + v0)))();
}

uint64_t sub_100480C34()
{
  v1 = STACK[0x57D8];
  STACK[0xCB60] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 - 18007 + ((v0 + 731894485) & 0xD4606DFD))))();
}

uint64_t sub_100480D9C@<X0>(int a1@<W3>, int a2@<W8>)
{
  v8 = *(v4 + v2 + a1 * v6 - (((((v2 + a1 * v6) >> 3) * v5) >> 32) >> 7) * v3);
  v9 = 3 * (((v8 ^ 0xFFFFFFDF) + ((a2 + 1029) ^ 0x79)) ^ ((v8 ^ 0xFFFFFF94) + 108) ^ ((v8 ^ 0xFFFFFF8C) + 116));
  v10 = ((4 * ((v9 >> 1) & 1)) | 2) ^ v9 & 7;
  LOBYTE(v8) = 3 * ((((v8 >> 3) ^ 0xC2) - 54) ^ ((v8 >> 3) + 92) ^ (((v8 >> 3) ^ 0x8A) - 126));
  v12 = (v8 + 1) & 7;
  v13 = (v8 + 2) & 7;
  v14 = a1 + 1;
  if (v10 != v12)
  {
    v13 = v12;
  }

  v11 = v7 + v10 * v6;
  *(v4 + v11 - (((11815591 * v11) >> 32) >> 4) * v3) ^= *(v4 + v13 * v6 + 23905048 - (((11815591 * (v13 * v6 + 23905048)) >> 32) >> 4) * v3) ^ 0xC7;
  return (*(STACK[0x57D8] + 8 * ((3083 * (v14 == 48)) ^ a2)))();
}

uint64_t sub_100480EC4@<X0>(uint64_t a1@<X8>)
{
  *v4 = v2;
  *(v2 + 8) = *(a1 + v1);
  *(a1 + v1) = v2;
  return (*(STACK[0x57D8] + 8 * (v3 - 12635)))();
}

uint64_t sub_100481128()
{
  LODWORD(STACK[0x7AF4]) = -769884012;
  STACK[0x91D8] = 0;
  if (STACK[0x5C98])
  {
    v1 = 0;
  }

  else
  {
    v1 = LODWORD(STACK[0xA4E4]) == v0 - 769897795;
  }

  v2 = !v1;
  return (*(STACK[0x57D8] + 8 * ((v2 * (((v0 - 13175) | 0x480) - 1719)) ^ v0)))();
}

uint64_t sub_1004811C4(uint64_t a1)
{
  v2 = STACK[0x57D8];
  STACK[0x82E8] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * ((v1 + 4827) ^ v1)))(a1, &STACK[0x978C]);
}

uint64_t sub_100481448()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x51B8] - 20219;
  STACK[0x7ED8] -= 128;
  return (*(STACK[0x57D8] + 8 * (((LODWORD(STACK[0x845C]) == -143113071) * (v0 + 6902)) ^ v1)))();
}

uint64_t sub_100481584@<X0>(__int16 a1@<W8>)
{
  v1 = STACK[0x51B8];
  v2 = STACK[0x51B8] - 22490;
  LOWORD(STACK[0xCF42]) = a1;
  return (*(STACK[0x57D8] + 8 * ((6641 * ((v2 ^ 0xB1483447) > 0x88BE379C)) ^ (v1 - 20008))))();
}

uint64_t sub_10048169C()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x51B8] - 13553;
  v2 = STACK[0x6950];
  *v2 = 0x1D8A118EDE6D14DLL;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 1414217035;
  *(v2 + 28) = 0x800000002;
  *(v2 + 36) = 1;
  *(v2 + 40) = 0;
  *(v2 + 48) = -2006302008;
  *(v2 + 56) = 0;
  *(v2 + 64) = 1768711563;
  *(v2 + 68) = 0x400000001;
  *(v2 + 80) = 0xF726234C92AC6E47 * STACK[0xB638] - 0x291872199EE7C0FFLL;
  *(v2 + 76) = 2;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 1315558685;
  *(v2 + 108) = 0x800000002;
  *(v2 + 116) = 2;
  v3 = STACK[0x57D8];
  STACK[0xBDD0] = *(STACK[0x57D8] + 8 * (v0 - 21450));
  return (*(v3 + 8 * (v1 ^ (v0 - 21450) ^ 0x12EF)))();
}

uint64_t sub_10048187C@<X0>(unint64_t a1@<X8>)
{
  v3 = STACK[0x51B8] - 12139;
  v4 = STACK[0x57D8];
  STACK[0x7A90] = *(STACK[0x57D8] + 8 * v2);
  STACK[0xE0A8] = a1;
  STACK[0xE0B0] = v1;
  LODWORD(STACK[0x6C24]) = 0;
  return (*(v4 + 8 * (((a1 == 0) * (v3 ^ 0x1B9F)) ^ LODWORD(STACK[0x35A0]))))();
}

uint64_t sub_1004819D8()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 18788)))();
  STACK[0xA2B8] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_100481A0C@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  LODWORD(STACK[0x5750]) = 0;
  v2 = STACK[0x5110];
  LODWORD(STACK[0x5278]) = *(STACK[0x5110] + 3) ^ 0xF;
  LODWORD(STACK[0x5288]) = v2[12] ^ 0xF;
  LODWORD(STACK[0x53B0]) = v2[6] ^ 0xF;
  LODWORD(STACK[0x5280]) = v2[10] ^ 0xF;
  LODWORD(STACK[0x53A8]) = v2[11] ^ 0xF;
  LODWORD(STACK[0x5640]) = a2 - 10262;
  LODWORD(STACK[0x5380]) = v2[5] ^ 0xF;
  LODWORD(STACK[0x5240]) = v2[14] ^ 0xF;
  LODWORD(STACK[0x5268]) = v2[7] ^ 0xF;
  LODWORD(STACK[0x53A0]) = v2[15] ^ 0xF;
  LODWORD(STACK[0x5248]) = v2[8] ^ 0xF;
  LODWORD(STACK[0x5270]) = v2[1] ^ 0xF;
  LODWORD(STACK[0x5398]) = v2[9] ^ 0xF;
  LODWORD(STACK[0x5238]) = v2[2] ^ 0xF;
  LODWORD(STACK[0x5390]) = v2[13] ^ 0xF;
  v3 = LODWORD(STACK[0x5600]);
  LODWORD(STACK[0x53C0]) = STACK[0x5620];
  LODWORD(STACK[0x5660]) = STACK[0x55E0];
  LODWORD(STACK[0x5680]) = STACK[0x5610];
  LODWORD(STACK[0x53D0]) = STACK[0x55F0];
  LODWORD(STACK[0x53C8]) = STACK[0x55C0];
  LODWORD(STACK[0x53F0]) = STACK[0x55A0];
  LODWORD(STACK[0x5670]) = STACK[0x5590];
  v4 = LODWORD(STACK[0x5580]);
  LODWORD(STACK[0x5408]) = STACK[0x5570];
  v5 = *(STACK[0x57D8] + 8 * a2);
  LODWORD(STACK[0x5470]) = STACK[0x5560];
  LODWORD(STACK[0x5480]) = STACK[0x5550];
  LODWORD(STACK[0x5400]) = STACK[0x5540];
  LODWORD(STACK[0x53D8]) = STACK[0x5388];
  LODWORD(STACK[0x56D0]) = STACK[0x5370];
  LODWORD(STACK[0x5430]) = STACK[0x5368];
  LODWORD(STACK[0x53F8]) = STACK[0x5358];
  LODWORD(STACK[0x5490]) = STACK[0x5350];
  v6 = LODWORD(STACK[0x5348]);
  LODWORD(STACK[0x53E8]) = STACK[0x5340];
  LODWORD(STACK[0x5440]) = STACK[0x5328];
  LODWORD(STACK[0x5420]) = STACK[0x5320];
  LODWORD(STACK[0x53B8]) = STACK[0x5310];
  LODWORD(STACK[0x5410]) = STACK[0x5308];
  LODWORD(STACK[0x5460]) = STACK[0x5300];
  v7 = LODWORD(STACK[0x52F8]);
  LODWORD(STACK[0x56C0]) = STACK[0x52E8];
  LODWORD(STACK[0x53E0]) = STACK[0x52D8];
  LODWORD(STACK[0x56E0]) = STACK[0x52E0];
  LODWORD(STACK[0x5450]) = STACK[0x52D0];
  v8 = LODWORD(STACK[0x52C8]);
  v9 = LODWORD(STACK[0x5630]);
  LODWORD(STACK[0x54A0]) = STACK[0x5260];
  return v5(v4, v3, v8, 15, v7, a1, v9, v6);
}

uint64_t sub_100481EEC@<X0>(__int16 a1@<W5>, __int16 a2@<W7>, int a3@<W8>)
{
  v10 = (STACK[0x51B8] - 12139) ^ 0x3374;
  LODWORD(STACK[0xD4E4]) = v9;
  LODWORD(STACK[0xD4DC]) = v8;
  LODWORD(STACK[0xB9CC]) = v4;
  LODWORD(STACK[0xD4D8]) = v5;
  LODWORD(STACK[0xCF4C]) = v7;
  LODWORD(STACK[0x9A1C]) = v6;
  LOWORD(STACK[0xCF4A]) = a2;
  LOWORD(STACK[0xCF52]) = a1;
  LODWORD(STACK[0xCF54]) = v3;
  LOWORD(STACK[0xD4E2]) = a2;
  LODWORD(STACK[0x6C24]) = a3 - 7069 + v10;
  return (*(STACK[0x57D8] + 8 * (LODWORD(STACK[0x2D64]) ^ (14 * ((((v9 ^ 0x8CD3A165) + 1932287643) ^ ((v9 ^ 0xECE56DBD) + 320508483) ^ ((v9 ^ 0x90A3BCC5) + 1868317499)) == 1516153944)))))();
}

uint64_t sub_100481FE8@<X0>(uint64_t a1@<X8>)
{
  *STACK[0xE6F0] = a1;
  *STACK[0xE6F8] = STACK[0xE700];
  return (*(STACK[0x57D8] + 8 * (v1 + 5538)))();
}

uint64_t sub_100482028()
{
  v1 = (263 * (STACK[0x51B8] ^ 0x581F) - 19071) | 0x43E;
  v2 = v0 + LODWORD(STACK[0xA114]);
  v3 = v2 + 1251230778;
  LODWORD(STACK[0xEA34]) = v2 + 1251230778;
  v4 = *(STACK[0x60B8] + 24);
  v5 = v4;
  v6 = STACK[0x9BF0] + (v2 - 2091550106);
  STACK[0xEA38] = *(STACK[0x60B8] + 16);
  STACK[0xEA40] = v6;
  STACK[0xEA48] = v4 ^ 0x8094u;
  v7 = (v4 ^ 0x8094) + 3;
  LODWORD(STACK[0xEA50]) = v7;
  v9 = v5 == ((v1 ^ 0x8000) & 0xFBD5) || v7 > -952183852 - v3;
  return (*(STACK[0x57D8] + 8 * ((7 * v9) ^ LODWORD(STACK[0x1C6C]))))();
}

uint64_t sub_10048239C@<X0>(char a1@<W0>, unsigned int a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, char a9@<W8>)
{
  v17 = STACK[0x53F8];
  v17[8] = v11;
  v17[1] = a8;
  v17[10] = v14;
  v17[2] = v16;
  v17[6] = v10;
  v17[3] = a7;
  v17[11] = a1;
  v17[4] = a3;
  LODWORD(STACK[0x5228]) = 4;
  *v17 = v9;
  LODWORD(STACK[0x50D0]) = STACK[0x4EE8];
  LODWORD(STACK[0x50E0]) = STACK[0x4F10];
  v17[7] = v15;
  LODWORD(STACK[0x50F8]) = STACK[0x4F00];
  LODWORD(STACK[0x50E8]) = STACK[0x4EC0];
  v17[5] = a4;
  LODWORD(STACK[0x5100]) = STACK[0x4EF8];
  LODWORD(STACK[0x50F0]) = STACK[0x4F18];
  v17[14] = a5;
  LODWORD(STACK[0x50C8]) = STACK[0x4EB8];
  LODWORD(STACK[0x50D8]) = STACK[0x4EA8];
  v17[13] = a6;
  LODWORD(STACK[0x50A0]) = STACK[0x4EC8];
  v17[15] = a9;
  LODWORD(STACK[0x50C0]) = STACK[0x4ED8];
  LODWORD(STACK[0x50A8]) = STACK[0x4EE0];
  v17[12] = v12;
  LODWORD(STACK[0x5098]) = STACK[0x4EB0];
  LODWORD(STACK[0x5090]) = STACK[0x4EF0];
  LODWORD(STACK[0x50B0]) = STACK[0x4ED0];
  v17[9] = v13;
  LODWORD(STACK[0x50B8]) = STACK[0x4F08];
  return (*(STACK[0x57D8] + 8 * a2))();
}

uint64_t sub_10048254C(void *a1)
{
  a1[398] = a1[544] + 16 * a1[408] + 12;
  v1 = STACK[0x57D8];
  a1[396] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x2CA4]));
  return (*(v1 + 8 * SLODWORD(STACK[0x2CA0])))();
}

void *sub_100482740()
{
  STACK[0xC408] = v1;
  LODWORD(STACK[0xC8B4]) = STACK[0x7B2C];
  STACK[0x6108] = 0;
  LODWORD(STACK[0x9114]) = -769884012;
  STACK[0x6960] = 0;
  return (*(STACK[0x57D8] + 8 * (v0 ^ 0x27EE ^ (7 * (v0 ^ 0x5F6)))))(&STACK[0x6960]);
}

uint64_t sub_1004827BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if (v7 < v10 != (a7 + v9) < 0x806DF3C5)
  {
    v11 = v7 < v10;
  }

  else
  {
    v11 = a7 + v9 < v7;
  }

  return (*(STACK[0x57D8] + 8 * ((15 * !v11) ^ v8)))();
}

uint64_t sub_1004831D8(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4 + a1;
  v8 = *(v5 + (((v7 & 0xFFFFFFF8) + 2050767130) & v6));
  v9 = __ROR8__(v7 & 0xFFFFFFFFFFFFFFF8, 8);
  v10 = (0xE44405D3D17B341 - ((v9 + v8) | 0xE44405D3D17B341) + ((v9 + v8) | 0xF1BBBFA2C2E84CBELL)) ^ 0x4933BE76232F2FEDLL;
  v11 = v10 ^ __ROR8__(v8, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0x38C8B16AE7056877;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = __ROR8__(v12, 8);
  v15 = ((((v14 + v13) << ((v4 + 23) & 0xDF ^ 0x4Cu)) & 0x1DB7D9D7448ADDDELL) - (v14 + v13) + 0x712413145DBA9110) ^ 0x94A4A269D17F7441;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xE1A1FD5BD155F97ALL;
  v18 = __ROR8__(v17, 8);
  v19 = v17 ^ __ROR8__(v16, 61);
  v20 = (0x611D85CCDE2E4476 - ((v18 + v19) | 0x611D85CCDE2E4476) + ((v18 + v19) | 0x9EE27A3321D1BB89)) ^ 0x4482313F22730410;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (v22 + v21 - ((2 * (v22 + v21)) & 0x3D318C86C7E652A0) - 0x616739BC9C0CD6B0) ^ 0x64AD248EA8CD1897;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (v25 + v24 - ((2 * (v25 + v24)) & 0xAB6FF9275E37CF2) - 0x7AA48036C50E4187) ^ 0x57AB732F1A146DD7;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = __ROR8__(v26, 8);
  return (*(STACK[0x57D8] + 8 * ((v4 - 11595) ^ (31 * ((STACK[0x57A0] & 1) == 0)))))((((((2 * (v28 + v27)) | 0x19125A1772AEEE4ALL) - (v28 + v27) - 0xC892D0BB9577725) ^ 0xF8FA263A1727025ELL) >> (8 * (v7 & 7u))) ^ *v7);
}

uint64_t sub_1004834D8@<X0>(int a1@<W1>, int a2@<W8>)
{
  LODWORD(STACK[0x5580]) = v5;
  v7 = (*(v6 + v2) >> 6) | (4 * *(v6 + v2));
  v8 = (((a2 - 2988) | 0x604) ^ v3) + (v7 ^ ((v7 ^ 0xFFFFFFF9) + 28) ^ ((v7 ^ 0xFFFFFF82) + 97) ^ v4) * a1;
  v9 = v8 & 0x5D ^ 0x67;
  v10 = v8 ^ 0x16;
  STACK[0x53C0] = v8 ^ (2 * (v10 & (2 * (v10 & (2 * (v10 & (2 * (v10 & (2 * (v10 & (2 * (((2 * v8) & 0x2E ^ 0x4A) & (v8 ^ 6) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ 0x7E;
  v11 = *(STACK[0x57D8] + 8 * a2);
  LODWORD(STACK[0x5390]) = 106;
  return v11();
}

uint64_t sub_100483830@<X0>(int a1@<W8>)
{
  v9 = *(v8 + (((v1 + 680) | 0x100) ^ 0x84FB3C) + 4843 * a1 - 5816 * ((((((((v1 + 680) | 0x100) ^ 0x84FB3Cu) + 4843 * a1) >> 3) * v6) >> 32) >> 7));
  v10 = 6157 * (((v9 ^ 0xF5434B5A) + 180139174) ^ ((v9 ^ 0xAEFC8F2F) + 1359179985) ^ ((v9 ^ 0x5BBFC4B2) - 1539294386)) + 18600297;
  v11 = *(v7 + 4 * (v10 - (((v10 * v5) >> 32) >> 12) * v4));
  v12 = 4843 * (((v11 ^ 0xD27A35F3) + 442389577) ^ ((v11 ^ 0x95860760) + 1570924252) ^ ((v11 ^ 0x47FC3219) - 1881648221)) - 1205595429;
  v13 = ((HIBYTE(v11) ^ 0x5FC1C6B5) - 2146617508) ^ ((HIBYTE(v11) ^ 0xF5B60617) + 712701946) ^ ((HIBYTE(v11) ^ 0xAA77C0CA) + 1975202085);
  v14 = *(v8 + 4843 * (BYTE2(v11) ^ 0x4F) + 6213569 - 5816 * (((11815591 * (4843 * (BYTE2(v11) ^ 0x4Fu) + 6213569)) >> 32) >> 4)) << 8;
  v15 = *(v8 + v12 - 5816 * ((((v12 >> 3) * v6) >> 32) >> 7));
  v16 = *(v8 + 4843 * (BYTE1(v11) ^ 0xB6) + 6213569 - 5816 * (((11815591 * (4843 * (BYTE1(v11) ^ 0xB6u) + 6213569)) >> 32) >> 4));
  *(v7 + 4 * (v2 + 6157 * a1 - ((((v2 + 6157 * a1) * v5) >> 32) >> 12) * v4)) = (((((((v14 ^ 0xFF2899) & ((*(v8 + 4843 * v13 + 641833684 - 5816 * (((((4843 * v13 + 641833684) >> 3) * v6) >> 32) >> 7)) << 16) ^ 0xF5AC99) | v14 & 0x5300) ^ 0x96B1C8) & (v16 ^ (v3 + 118)) ^ v16 & 0xAE) << 8) ^ 0x1AE7BF3C) & (v15 ^ 0xFFFFFF7B) | v15 & 0xFFFFFFC3) ^ 0xD6F6DE75;
  return (*(STACK[0x57D8] + 8 * ((31864 * (a1 == 255)) ^ v1)))();
}

uint64_t sub_100483B50(int a1)
{
  v2 = STACK[0x57D8];
  STACK[0x8D48] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * ((v1 + a1) ^ v1)))();
}

uint64_t sub_100483B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X7>, int8x16_t *a3@<X8>)
{
  v15 = *&STACK[0x5520];
  v16.i64[0] = v6 + a1 + 9;
  v16.i64[1] = v6 + a1 + 8;
  v17 = v16;
  *&STACK[0x5450] = v16;
  v16.i64[0] = v6 + a1 + 7;
  v16.i64[1] = v6 + a1 + 6;
  v18 = v16;
  *&STACK[0x5430] = v16;
  v16.i64[0] = v6 + a1 + 5;
  v16.i64[1] = v6 + a1 + 4;
  v19 = v16;
  *&STACK[0x5610] = *(a2 + a1 - 16);
  v16.i64[0] = a2 + a1 - 15;
  v16.i64[1] = a2 + a1 - 16;
  v20 = v16;
  *&STACK[0x55E0] = v16;
  v16.i64[0] = a2 + a1 - 13;
  v16.i64[1] = a2 + a1 - 14;
  v21 = v16;
  *&STACK[0x55D0] = v16;
  v16.i64[0] = a2 + a1 - 11;
  v16.i64[1] = a2 + a1 - 12;
  v22 = v16;
  *&STACK[0x55F0] = v16;
  v16.i64[0] = a2 + a1 - 9;
  v16.i64[1] = a2 + a1 - 10;
  *&STACK[0x5600] = v16;
  v23.i64[0] = a2 + a1 - 7;
  v23.i64[1] = a2 + a1 - 8;
  v24 = v23;
  *&STACK[0x54D0] = v23;
  v23.i64[0] = a2 + a1 - 5;
  v23.i64[1] = a2 + a1 - 6;
  v25 = v23;
  *&STACK[0x54C0] = v23;
  v23.i64[0] = a2 + a1 - 3;
  v23.i64[1] = a2 + a1 - 4;
  v26 = v23;
  *&STACK[0x5620] = v23;
  v23.i64[0] = a2 + a1 - 1;
  v23.i64[1] = a2 + a1 + ((v4 + 1950) ^ v10);
  *&STACK[0x55C0] = v23;
  v27.i64[0] = v6 + a1 + 3;
  v27.i64[1] = v6 + a1 + 2;
  v28 = v27;
  v29 = vandq_s8(v23, *&STACK[0x4D70]);
  v30 = vandq_s8(v26, *&STACK[0x4D70]);
  v31 = vandq_s8(v25, *&STACK[0x4D70]);
  v32 = vandq_s8(v24, *&STACK[0x4D70]);
  v33 = vandq_s8(v16, *&STACK[0x4D70]);
  v34 = vandq_s8(v22, *&STACK[0x4D70]);
  v35 = vandq_s8(v21, *&STACK[0x4D70]);
  v36 = vandq_s8(v20, *&STACK[0x4D70]);
  v37 = *&STACK[0x4D70];
  v38 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v39 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v40 = vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL);
  v41 = vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL);
  v42 = vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL);
  v43 = vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL);
  v44 = vsraq_n_u64(vshlq_n_s64(v30, 0x38uLL), v30, 8uLL);
  v45 = vsraq_n_u64(vshlq_n_s64(v29, 0x38uLL), v29, 8uLL);
  v46 = vdupq_n_s64(v7);
  v47 = vaddq_s64(vorrq_s8(vsubq_s64(v46, v45), v13), vorrq_s8(vaddq_s64(v45, *&STACK[0x5530]), *&STACK[0x5540]));
  v48 = vaddq_s64(vorrq_s8(vsubq_s64(v46, v44), v13), vorrq_s8(vaddq_s64(v44, *&STACK[0x5530]), *&STACK[0x5540]));
  v49 = vaddq_s64(vorrq_s8(vsubq_s64(v46, v43), v13), vorrq_s8(vaddq_s64(v43, *&STACK[0x5530]), *&STACK[0x5540]));
  v50 = vaddq_s64(vorrq_s8(vsubq_s64(v46, v42), v13), vorrq_s8(vaddq_s64(v42, *&STACK[0x5530]), *&STACK[0x5540]));
  v51 = vaddq_s64(vorrq_s8(vsubq_s64(v46, v41), v13), vorrq_s8(vaddq_s64(v41, *&STACK[0x5530]), *&STACK[0x5540]));
  v52 = vaddq_s64(vorrq_s8(vsubq_s64(v46, v40), v13), vorrq_s8(vaddq_s64(v40, *&STACK[0x5530]), *&STACK[0x5540]));
  v53 = vaddq_s64(vorrq_s8(vsubq_s64(v46, v39), v13), vorrq_s8(vaddq_s64(v39, *&STACK[0x5530]), *&STACK[0x5540]));
  v54 = vdupq_n_s64(v11);
  v55 = vsubq_s64(v54, vaddq_s64(vorrq_s8(vsubq_s64(v46, v38), v13), vorrq_s8(vaddq_s64(v38, *&STACK[0x5530]), *&STACK[0x5540])));
  v56 = vsubq_s64(v54, v53);
  v57 = vsubq_s64(v54, v52);
  v58 = vsubq_s64(v54, v51);
  v59 = vsubq_s64(v54, v50);
  v60 = vsubq_s64(v54, v49);
  v61 = vsubq_s64(v54, v48);
  v62 = vsubq_s64(v54, v47);
  v63 = veorq_s8(v62, v14);
  v64 = veorq_s8(v61, v14);
  v65 = veorq_s8(v60, v14);
  v66 = veorq_s8(v59, v14);
  v67 = veorq_s8(v58, v14);
  v68 = veorq_s8(v57, v14);
  v69 = veorq_s8(v56, v14);
  v70 = veorq_s8(v55, v14);
  v71 = veorq_s8(v55, *&STACK[0x5550]);
  v72 = veorq_s8(v56, *&STACK[0x5550]);
  v73 = veorq_s8(v57, *&STACK[0x5550]);
  v74 = veorq_s8(v58, *&STACK[0x5550]);
  v75 = veorq_s8(v59, *&STACK[0x5550]);
  v76 = veorq_s8(v60, *&STACK[0x5550]);
  v77 = veorq_s8(v61, *&STACK[0x5550]);
  v78 = veorq_s8(v62, *&STACK[0x5550]);
  v79 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL), v71), *&STACK[0x55A0]);
  v80 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v72), *&STACK[0x55A0]);
  v81 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v73), *&STACK[0x55A0]);
  v82 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v74), *&STACK[0x55A0]);
  v83 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v75), *&STACK[0x55A0]);
  v84 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v76), *&STACK[0x55A0]);
  v85 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v77), *&STACK[0x55A0]);
  v86 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v78), *&STACK[0x55A0]);
  v87 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v79, *&STACK[0x5580]), vorrq_s8(v79, v15)), v15), *&STACK[0x5590]);
  v88 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v80, *&STACK[0x5580]), vorrq_s8(v80, v15)), v15), *&STACK[0x5590]);
  v89 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v81, *&STACK[0x5580]), vorrq_s8(v81, v15)), v15), *&STACK[0x5590]);
  v90 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v82, *&STACK[0x5580]), vorrq_s8(v82, v15)), v15), *&STACK[0x5590]);
  v91 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v83, *&STACK[0x5580]), vorrq_s8(v83, v15)), v15), *&STACK[0x5590]);
  v92 = vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL);
  v93 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v84, *&STACK[0x5580]), vorrq_s8(v84, v15)), v15), *&STACK[0x5590]);
  v94 = vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL);
  v95 = vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL);
  v96 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v85, *&STACK[0x5580]), vorrq_s8(v85, v15)), v15), *&STACK[0x5590]);
  v97 = vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL);
  v98 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v99 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v86, *&STACK[0x5580]), vorrq_s8(v86, v15)), v15), *&STACK[0x5590]);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL));
  v101 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL));
  v102 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v103 = veorq_s8(v91, v98);
  v104 = veorq_s8(v90, v97);
  v105 = veorq_s8(v89, v95);
  v106 = veorq_s8(v88, v94);
  v107 = veorq_s8(v87, v92);
  v108 = vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL);
  v109 = vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL);
  v110 = vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL);
  v111 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v105);
  v113 = veorq_s8(vaddq_s64(v108, v100), *&STACK[0x4640]);
  v114 = veorq_s8(vaddq_s64(v109, v101), *&STACK[0x4640]);
  v115 = veorq_s8(vaddq_s64(v110, v102), *&STACK[0x4640]);
  v116 = veorq_s8(vaddq_s64(v111, v103), *&STACK[0x4640]);
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v104), *&STACK[0x4640]);
  v118 = vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL);
  v119 = vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL);
  v120 = veorq_s8(v112, *&STACK[0x4640]);
  v121 = vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL);
  v122 = vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL);
  v123 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v106), *&STACK[0x4640]);
  v124 = vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL);
  v125 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v107), *&STACK[0x4640]);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v127 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v128 = veorq_s8(v120, v124);
  v129 = veorq_s8(v117, v122);
  v130 = veorq_s8(v116, v121);
  v131 = veorq_s8(v115, v119);
  v132 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v133 = veorq_s8(v113, v118);
  v134 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v135 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v136 = vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL);
  v137 = vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL);
  v138 = vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL);
  v139 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v131);
  v140 = vaddq_s64(v138, v130);
  v141 = veorq_s8(vaddq_s64(v134, v126), *&STACK[0x46D0]);
  v142 = veorq_s8(vaddq_s64(v135, v127), *&STACK[0x46D0]);
  v143 = veorq_s8(vaddq_s64(v136, v128), *&STACK[0x46D0]);
  v144 = veorq_s8(vaddq_s64(v137, v129), *&STACK[0x46D0]);
  v145 = veorq_s8(v140, *&STACK[0x46D0]);
  v146 = vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL);
  v147 = vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL);
  v148 = veorq_s8(v139, *&STACK[0x46D0]);
  v149 = vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL);
  v150 = vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL);
  v151 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v132), *&STACK[0x46D0]);
  v152 = vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL);
  v153 = vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL);
  v154 = vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL);
  v155 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v133), *&STACK[0x46D0]);
  v156 = veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v157 = veorq_s8(v151, v154);
  v158 = veorq_s8(v148, v153);
  v159 = veorq_s8(v145, v152);
  v160 = veorq_s8(v144, v150);
  v161 = veorq_s8(v143, v149);
  v162 = veorq_s8(v142, v147);
  v163 = veorq_s8(v141, v146);
  v164 = vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL);
  v165 = vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL);
  v166 = vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL);
  v167 = vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL);
  v168 = vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL);
  v169 = vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL);
  v170 = vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL);
  v171 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v163);
  v172 = vdupq_n_s64(v8);
  v173 = veorq_s8(vaddq_s64(v164, v156), v172);
  v174 = veorq_s8(vaddq_s64(v165, v157), v172);
  v175 = veorq_s8(vaddq_s64(v166, v158), v172);
  v176 = veorq_s8(vaddq_s64(v167, v159), v172);
  v177 = veorq_s8(vaddq_s64(v168, v160), v172);
  v178 = vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL);
  v179 = vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL);
  v180 = vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL);
  v181 = veorq_s8(vaddq_s64(v169, v161), v172);
  v182 = vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL);
  v183 = vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL);
  v184 = veorq_s8(vaddq_s64(v170, v162), v172);
  v185 = vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL);
  v186 = vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL);
  v187 = vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL);
  v188 = veorq_s8(v171, v172);
  v189 = veorq_s8(v188, v187);
  v190 = veorq_s8(v184, v186);
  v191 = veorq_s8(v181, v185);
  v192 = veorq_s8(v177, v183);
  v193 = veorq_s8(v176, v182);
  v194 = veorq_s8(v175, v180);
  v195 = veorq_s8(v174, v179);
  v196 = veorq_s8(v173, v178);
  *&STACK[0x54A0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v196);
  *&STACK[0x5460] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v195);
  *&STACK[0x55B0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v192);
  *&STACK[0x54F0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v191);
  *&STACK[0x54B0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v190);
  *&STACK[0x5490] = vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL);
  *&STACK[0x5470] = vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL);
  *&STACK[0x5480] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL), v189);
  *&STACK[0x54E0] = vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL);
  *&STACK[0x5500] = vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL);
  v197 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v193), *&STACK[0x45B0]);
  v198 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v194), *&STACK[0x45B0]);
  *&STACK[0x5440] = vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL);
  v199 = veorq_s8(v198, vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL));
  v200 = veorq_s8(v197, vsraq_n_u64(vshlq_n_s64(v193, 3uLL), v193, 0x3DuLL));
  v201 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL), v200);
  v202 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), v199);
  v203 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v201, *&STACK[0x5630]), vorrq_s8(v201, *&STACK[0x57A0])), *&STACK[0x57A0]), *&STACK[0x5660]);
  v204 = vsraq_n_u64(vshlq_n_s64(v200, 3uLL), v200, 0x3DuLL);
  v205 = vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL);
  v206 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v202, *&STACK[0x5630]), vorrq_s8(v202, *&STACK[0x57A0])), *&STACK[0x57A0]), *&STACK[0x5660]);
  v207 = veorq_s8(v203, v204);
  v208 = vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL);
  v209 = v19;
  v210 = vandq_s8(v19, v37);
  v211 = vandq_s8(v17, v37);
  *&STACK[0x5420] = vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL);
  v212 = vandq_s8(v18, v37);
  v213 = vaddq_s64(v208, v207);
  v214 = vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL);
  v215 = vsraq_n_u64(vshlq_n_s64(v210, 0x38uLL), v210, 8uLL);
  v216 = v28;
  v217 = vandq_s8(v28, v37);
  v218 = *&STACK[0x4BD0];
  v219 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL), *&STACK[0x4BD0]);
  v220 = *&STACK[0x5640];
  v221 = veorq_s8(v219, *&STACK[0x5640]);
  v222 = vsraq_n_u64(vshlq_n_s64(v221, 0x38uLL), v221, 8uLL);
  v223 = vaddq_s64(v215, *&STACK[0x4BD0]);
  v224 = veorq_s8(v223, *&STACK[0x5640]);
  v225 = vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL);
  v226 = veorq_s8(v223, *&STACK[0x5760]);
  v227 = vaddq_s64(v225, v226);
  v228 = veorq_s8(v219, *&STACK[0x5760]);
  v229 = vaddq_s64(v222, v228);
  v230 = vsraq_n_u64(vshlq_n_s64(v226, 3uLL), v226, 0x3DuLL);
  v231 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v229, *&STACK[0x5770]), vorrq_s8(v229, *&STACK[0x57B0])), *&STACK[0x57B0]), *&STACK[0x5780]);
  v232 = veorq_s8(v231, vsraq_n_u64(vshlq_n_s64(v228, 3uLL), v228, 0x3DuLL));
  v233 = vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL);
  v234 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v227, *&STACK[0x5770]), vorrq_s8(v227, *&STACK[0x57B0])), *&STACK[0x57B0]), *&STACK[0x5780]);
  v235 = veorq_s8(v234, v230);
  v236 = vaddq_s64(v233, v232);
  v237 = *&STACK[0x56E0];
  v238 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL), v235);
  v239 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL), veorq_s8(v206, v205));
  v240 = vsraq_n_u64(vshlq_n_s64(v232, 3uLL), v232, 0x3DuLL);
  v241 = *&STACK[0x5740];
  v242 = *&STACK[0x5710];
  v243 = veorq_s8(vaddq_s64(vsubq_s64(v238, vandq_s8(vaddq_s64(v238, v238), *&STACK[0x56E0])), *&STACK[0x5740]), *&STACK[0x5710]);
  v244 = veorq_s8(v243, vsraq_n_u64(vshlq_n_s64(v235, 3uLL), v235, 0x3DuLL));
  v245 = vsraq_n_u64(vshlq_n_s64(v243, 0x38uLL), v243, 8uLL);
  v246 = *&STACK[0x5510];
  v247 = vsubq_s64(vorrq_s8(v213, *&STACK[0x5510]), vorrq_s8(v213, *&STACK[0x57C0]));
  v248 = veorq_s8(vaddq_s64(vsubq_s64(v236, vandq_s8(vaddq_s64(v236, v236), *&STACK[0x56E0])), *&STACK[0x5740]), *&STACK[0x5710]);
  v249 = veorq_s8(v248, v240);
  v250 = vaddq_s64(v245, v244);
  v251 = *&STACK[0x56D0];
  v252 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v248, 0x38uLL), v248, 8uLL), v249);
  v253 = vsraq_n_u64(vshlq_n_s64(v244, 3uLL), v244, 0x3DuLL);
  v254 = vsraq_n_u64(vshlq_n_s64(v249, 3uLL), v249, 0x3DuLL);
  v255 = *&STACK[0x5700];
  v256 = *&STACK[0x56C0];
  v257 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v252, v252), *&STACK[0x56D0]), v252), *&STACK[0x5700]), *&STACK[0x56C0]);
  v258 = veorq_s8(v257, v254);
  v259 = vsraq_n_u64(vshlq_n_s64(v257, 0x38uLL), v257, 8uLL);
  v260 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v250, v250), *&STACK[0x56D0]), v250), *&STACK[0x5700]), *&STACK[0x56C0]);
  v261 = veorq_s8(v260, v253);
  v262 = vsraq_n_u64(vshlq_n_s64(v260, 0x38uLL), v260, 8uLL);
  v263 = vaddq_s64(v259, v258);
  v264 = *&STACK[0x5650];
  v265 = vaddq_s64(v262, v261);
  v266 = vsraq_n_u64(vshlq_n_s64(v258, 3uLL), v258, 0x3DuLL);
  v267 = vsubq_s64(vorrq_s8(v239, *&STACK[0x5510]), vorrq_s8(v239, *&STACK[0x57C0]));
  v268 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v265, v265), *&STACK[0x5650]), v265), *&STACK[0x5680]), *&STACK[0x5670]);
  v269 = veorq_s8(v268, vsraq_n_u64(vshlq_n_s64(v261, 3uLL), v261, 0x3DuLL));
  v270 = vsraq_n_u64(vshlq_n_s64(v268, 0x38uLL), v268, 8uLL);
  v271 = *&STACK[0x5680];
  v272 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v263, v263), *&STACK[0x5650]), v263), *&STACK[0x5680]), *&STACK[0x5670]);
  v273 = veorq_s8(v272, v266);
  v274 = vaddq_s64(v270, v269);
  v275 = vsraq_n_u64(vshlq_n_s64(v269, 3uLL), v269, 0x3DuLL);
  v276 = vdupq_n_s64(v9);
  v277 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v272, 0x38uLL), v272, 8uLL), v273), v276);
  v278 = veorq_s8(v277, vsraq_n_u64(vshlq_n_s64(v273, 3uLL), v273, 0x3DuLL));
  v279 = vsraq_n_u64(vshlq_n_s64(v277, 0x38uLL), v277, 8uLL);
  v280 = veorq_s8(v274, v276);
  *&STACK[0x5410] = v276;
  v281 = veorq_s8(v280, v275);
  v282 = vsraq_n_u64(vshlq_n_s64(v280, 0x38uLL), v280, 8uLL);
  v283 = vaddq_s64(v279, v278);
  v284 = vsraq_n_u64(vshlq_n_s64(v278, 3uLL), v278, 0x3DuLL);
  v285 = veorq_s8(vaddq_s64(v282, v281), *&STACK[0x4490]);
  v286 = veorq_s8(v285, vsraq_n_u64(vshlq_n_s64(v281, 3uLL), v281, 0x3DuLL));
  v287 = vsraq_n_u64(vshlq_n_s64(v285, 0x38uLL), v285, 8uLL);
  v288 = veorq_s8(v283, *&STACK[0x4490]);
  v289 = veorq_s8(v288, v284);
  v290 = vsraq_n_u64(vshlq_n_s64(v288, 0x38uLL), v288, 8uLL);
  v291 = vdupq_n_s64(v3);
  v292 = vshlq_u64(veorq_s8(vaddq_s64(v267, *&STACK[0x57C0]), *&STACK[0x5750]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x54C0], 3uLL), v291)));
  v293 = veorq_s8(vaddq_s64(v287, v286), *&STACK[0x5730]);
  v294 = veorq_s8(vaddq_s64(v290, v289), *&STACK[0x5730]);
  v295 = vaddq_s64(v214, v218);
  v296 = *&STACK[0x56F0];
  v488.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v294, v294), *&STACK[0x5720]), v294), *&STACK[0x56F0]), *&STACK[0x5790]), vnegq_s64(vandq_s8(vshlq_n_s64(v216, 3uLL), v291))), vshlq_u64(veorq_s8(vaddq_s64(v247, *&STACK[0x57C0]), *&STACK[0x5750]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x54D0], 3uLL), v291))));
  v488.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v293, v293), *&STACK[0x5720]), v293), *&STACK[0x56F0]), *&STACK[0x5790]), vnegq_s64(vandq_s8(vshlq_n_s64(v209, 3uLL), v291))), v292);
  v297 = veorq_s8(v295, v220);
  v298 = veorq_s8(v295, *&STACK[0x5760]);
  v299 = vsraq_n_u64(vshlq_n_s64(v297, 0x38uLL), v297, 8uLL);
  v300 = *&STACK[0x45B0];
  v301 = veorq_s8(*&STACK[0x5460], *&STACK[0x45B0]);
  v302 = vaddq_s64(v299, v298);
  v303 = veorq_s8(v301, vsraq_n_u64(vshlq_n_s64(v195, 3uLL), v195, 0x3DuLL));
  v304 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v302, *&STACK[0x5770]), vorrq_s8(v302, *&STACK[0x57B0])), *&STACK[0x57B0]), *&STACK[0x5780]);
  v305 = veorq_s8(v304, vsraq_n_u64(vshlq_n_s64(v298, 3uLL), v298, 0x3DuLL));
  v306 = vsraq_n_u64(vshlq_n_s64(v301, 0x38uLL), v301, 8uLL);
  v307 = vsraq_n_u64(vshlq_n_s64(v304, 0x38uLL), v304, 8uLL);
  v308 = vsraq_n_u64(vshlq_n_s64(v303, 3uLL), v303, 0x3DuLL);
  v309 = vaddq_s64(v307, v305);
  v310 = vaddq_s64(v306, v303);
  v311 = *&STACK[0x5630];
  v312 = veorq_s8(vaddq_s64(vsubq_s64(v309, vandq_s8(vaddq_s64(v309, v309), v237)), v241), v242);
  v313 = veorq_s8(v312, vsraq_n_u64(vshlq_n_s64(v305, 3uLL), v305, 0x3DuLL));
  v314 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v312, 0x38uLL), v312, 8uLL), v313);
  v315 = *&STACK[0x5660];
  v316 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v310, *&STACK[0x5630]), vorrq_s8(v310, *&STACK[0x57A0])), *&STACK[0x57A0]), *&STACK[0x5660]);
  v317 = v255;
  v318 = v256;
  v319 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v314, v314), v251), v314), v255), v256);
  v320 = vsraq_n_u64(vshlq_n_s64(v313, 3uLL), v313, 0x3DuLL);
  v321 = veorq_s8(v316, v308);
  v322 = veorq_s8(v319, v320);
  v323 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v319, 0x38uLL), v319, 8uLL), v322);
  v324 = v264;
  v325 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v316, 0x38uLL), v316, 8uLL), v321);
  v326 = v271;
  v327 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v323, v323), v264), v323), v271);
  v328 = *&STACK[0x5670];
  v329 = veorq_s8(v327, *&STACK[0x5670]);
  v330 = veorq_s8(v329, vsraq_n_u64(vshlq_n_s64(v322, 3uLL), v322, 0x3DuLL));
  v331 = vsraq_n_u64(vshlq_n_s64(v330, 3uLL), v330, 0x3DuLL);
  v332 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v329, 0x38uLL), v329, 8uLL), v330), v276);
  v333 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v325, v246), vorrq_s8(v325, *&STACK[0x57C0])), *&STACK[0x57C0]), *&STACK[0x5750]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5620], 3uLL), v291)));
  v334 = veorq_s8(v332, v331);
  v335 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v332, 0x38uLL), v332, 8uLL), v334), *&STACK[0x4490]);
  v336 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v335, 0x38uLL), v335, 8uLL), veorq_s8(v335, vsraq_n_u64(vshlq_n_s64(v334, 3uLL), v334, 0x3DuLL))), *&STACK[0x5730]);
  v337 = vsubq_s64(vorrq_s8(vaddq_s64(v336, v336), *&STACK[0x5720]), v336);
  v338.i64[0] = v6 + a1 + 1;
  v338.i64[1] = v6 + a1;
  *&STACK[0x54D0] = v338;
  v339 = vshlq_u64(veorq_s8(vaddq_s64(v337, v296), *&STACK[0x5790]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5430], 3uLL), v291)));
  v336.i64[0] = v6 + a1 - 1;
  v336.i64[1] = v6 + a1 - 2;
  *&STACK[0x5620] = v336;
  v340 = v300;
  v341 = veorq_s8(*&STACK[0x5480], v300);
  v342 = veorq_s8(*&STACK[0x54B0], v300);
  v343 = veorq_s8(*&STACK[0x54A0], v340);
  v344 = veorq_s8(v343, *&STACK[0x5440]);
  v345 = veorq_s8(v342, *&STACK[0x5470]);
  v346 = veorq_s8(v341, *&STACK[0x5490]);
  v347 = vaddq_s64(*&STACK[0x5420], v218);
  v488.val[1] = veorq_s8(v339, v333);
  v348 = veorq_s8(v347, v220);
  v349 = vsraq_n_u64(vshlq_n_s64(v348, 0x38uLL), v348, 8uLL);
  v350 = veorq_s8(v347, *&STACK[0x5760]);
  v351 = vsraq_n_u64(vshlq_n_s64(v343, 0x38uLL), v343, 8uLL);
  v352 = vaddq_s64(v349, v350);
  v353 = vsubq_s64(vorrq_s8(v352, *&STACK[0x5770]), vorrq_s8(v352, *&STACK[0x57B0]));
  v354 = vsraq_n_u64(vshlq_n_s64(v342, 0x38uLL), v342, 8uLL);
  v355 = veorq_s8(vaddq_s64(v353, *&STACK[0x57B0]), *&STACK[0x5780]);
  v356 = vsraq_n_u64(vshlq_n_s64(v341, 0x38uLL), v341, 8uLL);
  v357 = veorq_s8(v355, vsraq_n_u64(vshlq_n_s64(v350, 3uLL), v350, 0x3DuLL));
  v358 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v355, 0x38uLL), v355, 8uLL), v357);
  v359 = vaddq_s64(v351, v344);
  v360 = veorq_s8(vaddq_s64(vsubq_s64(v358, vandq_s8(vaddq_s64(v358, v358), v237)), v241), v242);
  v361 = veorq_s8(v360, vsraq_n_u64(vshlq_n_s64(v357, 3uLL), v357, 0x3DuLL));
  v362 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v360, 0x38uLL), v360, 8uLL), v361);
  v363 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v362, v362), v251), v362), v317), v318);
  v364 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v359, v311), vorrq_s8(v359, *&STACK[0x57A0])), *&STACK[0x57A0]), v315);
  v365 = veorq_s8(v363, vsraq_n_u64(vshlq_n_s64(v361, 3uLL), v361, 0x3DuLL));
  v366 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v363, 0x38uLL), v363, 8uLL), v365);
  v367 = veorq_s8(v364, vsraq_n_u64(vshlq_n_s64(v344, 3uLL), v344, 0x3DuLL));
  v368 = vsubq_s64(vandq_s8(vaddq_s64(v366, v366), v324), v366);
  v369 = vsraq_n_u64(vshlq_n_s64(v365, 3uLL), v365, 0x3DuLL);
  v370 = vsraq_n_u64(vshlq_n_s64(v364, 0x38uLL), v364, 8uLL);
  v366.i64[0] = v6 + a1 - 3;
  v366.i64[1] = v6 + a1 - 4;
  v371 = veorq_s8(vaddq_s64(v368, v326), v328);
  v372 = vaddq_s64(v370, v367);
  v373 = veorq_s8(v371, v369);
  v374 = vsraq_n_u64(vshlq_n_s64(v371, 0x38uLL), v371, 8uLL);
  v375 = v246;
  v376 = vsubq_s64(vorrq_s8(v372, v246), vorrq_s8(v372, *&STACK[0x57C0]));
  v377 = *&STACK[0x5410];
  v378 = veorq_s8(vaddq_s64(v374, v373), *&STACK[0x5410]);
  v379 = veorq_s8(v378, vsraq_n_u64(vshlq_n_s64(v373, 3uLL), v373, 0x3DuLL));
  v380 = vsraq_n_u64(vshlq_n_s64(v378, 0x38uLL), v378, 8uLL);
  v378.i64[0] = v6 + a1 - 5;
  v378.i64[1] = v6 + a1 - 6;
  v381 = *&STACK[0x4490];
  v382 = veorq_s8(vaddq_s64(v380, v379), *&STACK[0x4490]);
  v383 = *&STACK[0x4D70];
  v384 = vandq_s8(v366, *&STACK[0x4D70]);
  v385 = *&STACK[0x5730];
  v386 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v382, 0x38uLL), v382, 8uLL), veorq_s8(v382, vsraq_n_u64(vshlq_n_s64(v379, 3uLL), v379, 0x3DuLL))), *&STACK[0x5730]);
  v387 = *&STACK[0x5720];
  v388 = *&STACK[0x56F0];
  v389 = vandq_s8(*&STACK[0x5620], *&STACK[0x4D70]);
  v488.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v386, v386), *&STACK[0x5720]), v386), *&STACK[0x56F0]), *&STACK[0x5790]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5450], 3uLL), v291))), vshlq_u64(veorq_s8(vaddq_s64(v376, *&STACK[0x57C0]), *&STACK[0x5750]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x55C0], 3uLL), v291))));
  v390 = vandq_s8(v338, *&STACK[0x4D70]);
  *&STACK[0x54B0] = vsraq_n_u64(vshlq_n_s64(v390, 0x38uLL), v390, 8uLL);
  v391 = vsraq_n_u64(vshlq_n_s64(v389, 0x38uLL), v389, 8uLL);
  v392 = vsraq_n_u64(vshlq_n_s64(v384, 0x38uLL), v384, 8uLL);
  v393 = vandq_s8(v378, v383);
  v394 = vaddq_s64(v356, v346);
  v395 = v218;
  v396 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v393, 0x38uLL), v393, 8uLL), v218);
  v397 = vaddq_s64(v354, v345);
  v398 = vaddq_s64(v392, v395);
  v399 = a3[25];
  *&STACK[0x54C0] = v399;
  *&STACK[0x55C0] = vqtbl4q_s8(v488, v399);
  v488.val[0] = veorq_s8(v398, v220);
  v488.val[1] = veorq_s8(v396, v220);
  v488.val[2] = vsraq_n_u64(vshlq_n_s64(v488.val[1], 0x38uLL), v488.val[1], 8uLL);
  v488.val[1] = vsraq_n_u64(vshlq_n_s64(v488.val[0], 0x38uLL), v488.val[0], 8uLL);
  v488.val[0] = vsubq_s64(vorrq_s8(v394, v311), vorrq_s8(v394, *&STACK[0x57A0]));
  v400 = veorq_s8(v396, *&STACK[0x5760]);
  v401 = veorq_s8(v398, *&STACK[0x5760]);
  v488.val[1] = vaddq_s64(v488.val[1], v401);
  v488.val[2] = vaddq_s64(v488.val[2], v400);
  v488.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v488.val[1], *&STACK[0x5770]), vorrq_s8(v488.val[1], *&STACK[0x57B0])), *&STACK[0x57B0]), *&STACK[0x5780]);
  v488.val[2] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v488.val[2], *&STACK[0x5770]), vorrq_s8(v488.val[2], *&STACK[0x57B0])), *&STACK[0x57B0]), *&STACK[0x5780]);
  v402 = veorq_s8(v488.val[2], vsraq_n_u64(vshlq_n_s64(v400, 3uLL), v400, 0x3DuLL));
  v403 = veorq_s8(v488.val[1], vsraq_n_u64(vshlq_n_s64(v401, 3uLL), v401, 0x3DuLL));
  v488.val[0] = veorq_s8(vaddq_s64(v488.val[0], *&STACK[0x57A0]), v315);
  v488.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v488.val[1], 0x38uLL), v488.val[1], 8uLL), v403);
  v488.val[2] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v488.val[2], 0x38uLL), v488.val[2], 8uLL), v402);
  v488.val[3] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v397, v311), vorrq_s8(v397, *&STACK[0x57A0])), *&STACK[0x57A0]), v315);
  v404 = vsraq_n_u64(vshlq_n_s64(v402, 3uLL), v402, 0x3DuLL);
  v405 = veorq_s8(v488.val[3], vsraq_n_u64(vshlq_n_s64(v345, 3uLL), v345, 0x3DuLL));
  v488.val[2] = veorq_s8(vaddq_s64(vsubq_s64(v488.val[2], vandq_s8(vaddq_s64(v488.val[2], v488.val[2]), *&STACK[0x56E0])), *&STACK[0x5740]), *&STACK[0x5710]);
  v488.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v488.val[1], vandq_s8(vaddq_s64(v488.val[1], v488.val[1]), *&STACK[0x56E0])), *&STACK[0x5740]), *&STACK[0x5710]);
  v406 = vsraq_n_u64(vshlq_n_s64(v488.val[3], 0x38uLL), v488.val[3], 8uLL);
  v488.val[3] = veorq_s8(v488.val[1], vsraq_n_u64(vshlq_n_s64(v403, 3uLL), v403, 0x3DuLL));
  v407 = veorq_s8(v488.val[2], v404);
  v408 = veorq_s8(v488.val[0], vsraq_n_u64(vshlq_n_s64(v346, 3uLL), v346, 0x3DuLL));
  v409 = vsraq_n_u64(vshlq_n_s64(v488.val[1], 0x38uLL), v488.val[1], 8uLL);
  v488.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v488.val[2], 0x38uLL), v488.val[2], 8uLL), v407);
  v488.val[2] = vsraq_n_u64(vshlq_n_s64(v488.val[0], 0x38uLL), v488.val[0], 8uLL);
  v488.val[0] = vaddq_s64(v409, v488.val[3]);
  v410 = vsraq_n_u64(vshlq_n_s64(v488.val[3], 3uLL), v488.val[3], 0x3DuLL);
  v488.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v488.val[1], v488.val[1]), *&STACK[0x56D0]), v488.val[1]), *&STACK[0x5700]), *&STACK[0x56C0]);
  v488.val[2] = vaddq_s64(v488.val[2], v408);
  v488.val[3] = veorq_s8(v488.val[1], vsraq_n_u64(vshlq_n_s64(v407, 3uLL), v407, 0x3DuLL));
  v411 = vsraq_n_u64(vshlq_n_s64(v488.val[1], 0x38uLL), v488.val[1], 8uLL);
  v488.val[1] = vaddq_s64(v406, v405);
  v488.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v488.val[0], v488.val[0]), *&STACK[0x56D0]), v488.val[0]), *&STACK[0x5700]), *&STACK[0x56C0]);
  v412 = veorq_s8(v488.val[0], v410);
  v413 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v488.val[0], 0x38uLL), v488.val[0], 8uLL), v412);
  v488.val[0] = vsubq_s64(vorrq_s8(v488.val[1], v375), vorrq_s8(v488.val[1], *&STACK[0x57C0]));
  v488.val[1] = vaddq_s64(v411, v488.val[3]);
  v488.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v488.val[1], v488.val[1]), *&STACK[0x5650]), v488.val[1]), *&STACK[0x5680]), *&STACK[0x5670]);
  v414 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v413, v413), *&STACK[0x5650]), v413), *&STACK[0x5680]), *&STACK[0x5670]);
  v415 = vsraq_n_u64(vshlq_n_s64(v488.val[3], 3uLL), v488.val[3], 0x3DuLL);
  v488.val[3] = veorq_s8(v414, vsraq_n_u64(vshlq_n_s64(v412, 3uLL), v412, 0x3DuLL));
  v416 = veorq_s8(v488.val[1], v415);
  v417 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v414, 0x38uLL), v414, 8uLL), v488.val[3]);
  v418 = vsraq_n_u64(vshlq_n_s64(v488.val[3], 3uLL), v488.val[3], 0x3DuLL);
  v419 = veorq_s8(v417, v377);
  v488.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v488.val[1], 0x38uLL), v488.val[1], 8uLL), v416), v377);
  v488.val[3] = veorq_s8(v488.val[1], vsraq_n_u64(vshlq_n_s64(v416, 3uLL), v416, 0x3DuLL));
  v420 = vshlq_u64(veorq_s8(vaddq_s64(v488.val[0], *&STACK[0x57C0]), *&STACK[0x5750]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x55D0], 3uLL), v291)));
  v488.val[0] = veorq_s8(v419, v418);
  v421 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v488.val[1], 0x38uLL), v488.val[1], 8uLL), v488.val[3]), v381);
  v488.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v419, 0x38uLL), v419, 8uLL), v488.val[0]), v381);
  v488.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v488.val[1], 0x38uLL), v488.val[1], 8uLL), veorq_s8(v488.val[1], vsraq_n_u64(vshlq_n_s64(v488.val[0], 3uLL), v488.val[0], 0x3DuLL))), v385);
  v488.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v421, 0x38uLL), v421, 8uLL), veorq_s8(v421, vsraq_n_u64(vshlq_n_s64(v488.val[3], 3uLL), v488.val[3], 0x3DuLL))), v385);
  v422 = vaddq_s64(v391, *&STACK[0x4BD0]);
  v488.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v488.val[1], v488.val[1]), v387), v488.val[1]), v388), *&STACK[0x5790]), vnegq_s64(vandq_s8(vshlq_n_s64(v378, 3uLL), v291))), vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v488.val[2], v375), vorrq_s8(v488.val[2], *&STACK[0x57C0])), *&STACK[0x57C0]), *&STACK[0x5750]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x55E0], 3uLL), v291))));
  v488.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v488.val[0], v488.val[0]), v387), v488.val[0]), v388), *&STACK[0x5790]), vnegq_s64(vandq_s8(vshlq_n_s64(v366, 3uLL), v291))), v420);
  v423 = veorq_s8(v422, *&STACK[0x5640]);
  v424 = veorq_s8(v422, *&STACK[0x5760]);
  v425 = veorq_s8(*&STACK[0x54F0], *&STACK[0x45B0]);
  v426 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v423, 0x38uLL), v423, 8uLL), v424);
  v427 = veorq_s8(v425, *&STACK[0x54E0]);
  v428 = vsraq_n_u64(vshlq_n_s64(v424, 3uLL), v424, 0x3DuLL);
  v429 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v426, *&STACK[0x5770]), vorrq_s8(v426, *&STACK[0x57B0])), *&STACK[0x57B0]), *&STACK[0x5780]);
  v430 = vsraq_n_u64(vshlq_n_s64(v425, 0x38uLL), v425, 8uLL);
  v431 = veorq_s8(v429, v428);
  v432 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v429, 0x38uLL), v429, 8uLL), v431);
  v433 = vsraq_n_u64(vshlq_n_s64(v431, 3uLL), v431, 0x3DuLL);
  v434 = vsraq_n_u64(vshlq_n_s64(v427, 3uLL), v427, 0x3DuLL);
  v435 = vaddq_s64(v430, v427);
  v436 = veorq_s8(vaddq_s64(vsubq_s64(v432, vandq_s8(vaddq_s64(v432, v432), *&STACK[0x56E0])), *&STACK[0x5740]), *&STACK[0x5710]);
  v437 = veorq_s8(v436, v433);
  v438 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v436, 0x38uLL), v436, 8uLL), v437);
  v439 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v438, v438), *&STACK[0x56D0]), v438), *&STACK[0x5700]), *&STACK[0x56C0]);
  v440 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v435, *&STACK[0x5630]), vorrq_s8(v435, *&STACK[0x57A0])), *&STACK[0x57A0]), *&STACK[0x5660]);
  v441 = veorq_s8(v439, vsraq_n_u64(vshlq_n_s64(v437, 3uLL), v437, 0x3DuLL));
  v442 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v439, 0x38uLL), v439, 8uLL), v441);
  v443 = veorq_s8(v440, v434);
  v444 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v442, v442), *&STACK[0x5650]), v442), *&STACK[0x5680]), *&STACK[0x5670]);
  v445 = vsraq_n_u64(vshlq_n_s64(v440, 0x38uLL), v440, 8uLL);
  v446 = veorq_s8(v444, vsraq_n_u64(vshlq_n_s64(v441, 3uLL), v441, 0x3DuLL));
  v447 = vsraq_n_u64(vshlq_n_s64(v444, 0x38uLL), v444, 8uLL);
  v448 = vaddq_s64(v445, v443);
  v449 = veorq_s8(vaddq_s64(v447, v446), v377);
  v450 = veorq_s8(v449, vsraq_n_u64(vshlq_n_s64(v446, 3uLL), v446, 0x3DuLL));
  v451 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v449, 0x38uLL), v449, 8uLL), v450), *&STACK[0x4490]);
  v452 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v451, 0x38uLL), v451, 8uLL), veorq_s8(v451, vsraq_n_u64(vshlq_n_s64(v450, 3uLL), v450, 0x3DuLL))), *&STACK[0x5730]);
  v453 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v452, v452), v387), v452), v388), *&STACK[0x5790]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5620], 3uLL), v291)));
  v454 = vaddq_s64(*&STACK[0x54B0], *&STACK[0x4BD0]);
  v455 = veorq_s8(*&STACK[0x55B0], *&STACK[0x45B0]);
  v488.val[1] = veorq_s8(v453, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v448, *&STACK[0x5510]), vorrq_s8(v448, *&STACK[0x57C0])), *&STACK[0x57C0]), *&STACK[0x5750]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x55F0], 3uLL), v291))));
  v456 = veorq_s8(v454, *&STACK[0x5640]);
  v457 = veorq_s8(v454, *&STACK[0x5760]);
  v458 = vsraq_n_u64(vshlq_n_s64(v456, 0x38uLL), v456, 8uLL);
  v459 = veorq_s8(v455, *&STACK[0x5500]);
  v460 = vaddq_s64(v458, v457);
  v461 = vsraq_n_u64(vshlq_n_s64(v455, 0x38uLL), v455, 8uLL);
  v462 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v460, *&STACK[0x5770]), vorrq_s8(v460, *&STACK[0x57B0])), *&STACK[0x57B0]), *&STACK[0x5780]);
  v463 = veorq_s8(v462, vsraq_n_u64(vshlq_n_s64(v457, 3uLL), v457, 0x3DuLL));
  v464 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v462, 0x38uLL), v462, 8uLL), v463);
  v465 = vsraq_n_u64(vshlq_n_s64(v463, 3uLL), v463, 0x3DuLL);
  v466 = vsraq_n_u64(vshlq_n_s64(v459, 3uLL), v459, 0x3DuLL);
  v467 = veorq_s8(vaddq_s64(vsubq_s64(v464, vandq_s8(vaddq_s64(v464, v464), *&STACK[0x56E0])), *&STACK[0x5740]), *&STACK[0x5710]);
  v468 = vaddq_s64(v461, v459);
  v469 = veorq_s8(v467, v465);
  v470 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v467, 0x38uLL), v467, 8uLL), v469);
  v471 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v470, v470), *&STACK[0x56D0]), v470), *&STACK[0x5700]), *&STACK[0x56C0]);
  v472 = veorq_s8(v471, vsraq_n_u64(vshlq_n_s64(v469, 3uLL), v469, 0x3DuLL));
  v473 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v468, *&STACK[0x5630]), vorrq_s8(v468, *&STACK[0x57A0])), *&STACK[0x57A0]), *&STACK[0x5660]);
  v474 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v471, 0x38uLL), v471, 8uLL), v472);
  v475 = veorq_s8(v473, v466);
  v476 = vsraq_n_u64(vshlq_n_s64(v472, 3uLL), v472, 0x3DuLL);
  v477 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v474, v474), *&STACK[0x5650]), v474), *&STACK[0x5680]), *&STACK[0x5670]);
  v478 = vsraq_n_u64(vshlq_n_s64(v473, 0x38uLL), v473, 8uLL);
  v479 = veorq_s8(v477, v476);
  v480 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v477, 0x38uLL), v477, 8uLL), v479), v377);
  v481 = vaddq_s64(v478, v475);
  v482 = veorq_s8(v480, vsraq_n_u64(vshlq_n_s64(v479, 3uLL), v479, 0x3DuLL));
  v483 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v480, 0x38uLL), v480, 8uLL), v482), *&STACK[0x4490]);
  v484 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v483, 0x38uLL), v483, 8uLL), veorq_s8(v483, vsraq_n_u64(vshlq_n_s64(v482, 3uLL), v482, 0x3DuLL))), *&STACK[0x5730]);
  v488.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v484, v484), *&STACK[0x5720]), v484), v388), *&STACK[0x5790]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x54D0], 3uLL), v291))), vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v481, *&STACK[0x5510]), vorrq_s8(v481, *&STACK[0x57C0])), *&STACK[0x57C0]), *&STACK[0x5750]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5600], 3uLL), v291))));
  v485 = *&STACK[0x55C0];
  v485.i64[1] = vqtbl4q_s8(v488, *&STACK[0x54C0]).u64[0];
  v486 = vrev64q_s8(v485);
  *(v6 + a1 - 6) = veorq_s8(vextq_s8(v486, v486, 8uLL), *&STACK[0x5610]);
  return (*(STACK[0x57D8] + 8 * (((v5 == a1) * v12) ^ v4)))(a1 - 16);
}

uint64_t sub_100485390()
{
  v1 = STACK[0xAD80];
  STACK[0xCD60] = STACK[0xAD80];
  return (*(STACK[0x57D8] + 8 * (((((v0 ^ 0x6CB) + 1164) ^ 0x7A35 ^ (8 * (v0 ^ 0x6CB)) ^ 0x2EDB0) * (v1 == 0)) ^ v0 ^ 0x6CB)))();
}

uint64_t sub_1004853FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unint64_t a6)
{
  v18 = *(v13 + 8) + 4 * v9;
  v19 = *STACK[0x51E8];
  v20 = *STACK[0x51F0];
  v21 = *(v20 + (((v18 & 0x50DBE170 | 0xAF241E8F) - 133448597 + (v18 & 0xAF241E88 | 0x50DBE171)) & v19 & 0xFFFFFFFFFFFFFFF8));
  v22 = v12;
  v23 = (__ROR8__(v18 & 0xFFFFFFFFFFFFFFF8, 8) + v21) ^ (((v8 - 25382) | 0x2CCBu) - 0x4FA88BC42E573733);
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ a2;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ a3;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0x1C031738E4A64104;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ v11;
  v32 = __ROR8__(v31, 8);
  v33 = v31 ^ __ROR8__(v30, 61);
  v34 = (v32 + v33 - ((2 * (v32 + v33)) & 0x5259B8CDF87F1F68) - 0x56D3239903C0704CLL) ^ 0xFBDD542FE4E75916;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = *(v14 + 8) + 4 * v9;
  v37 = *(v20 + (((v36 & 0xFFFFFFF8) - 133448597) & v19 & 0xFFFFFFF8));
  v38 = (__ROR8__(v34, 8) + v35) ^ v7;
  v39 = (__ROR8__(v36 & 0xFFFFFFFFFFFFFFF8, 8) + v37) ^ 0xB057743BD1A8F5BCLL;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = __ROR8__(v39, 8) + v40;
  v42 = (((2 * v41) | 0xA81A2300B215C79ELL) - v41 - 0x540D1180590AE3CFLL) ^ 0xDE4A60CCAA86A44CLL;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = __ROR8__(v38, 8) + (v38 ^ __ROR8__(v35, 61));
  v45 = __ROR8__(v42, 8);
  v46 = (v15 - ((v45 + v43) ^ 0x551D7DC64D7F0EDCLL | v15) + ((v45 + v43) ^ 0x551D7DC64D7F0EDCLL | 0x443065ED55C33ABELL)) ^ 0xB346FC5102D51B12;
  v47 = v46 ^ __ROR8__(v43, 61);
  v48 = __ROR8__(v46, 8);
  v49 = (((2 * (v48 + v47)) | 0x7F0A1E3463EB7416) - (v48 + v47) - 0x3F850F1A31F5BA0BLL) ^ 0x23861822D553FB0FLL;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ v11;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = __ROR8__(v51, 8);
  v54 = v17 - ((v53 + v52) | v17) + ((v53 + v52) | 0x8BAF1DBF4CF00525);
  v55 = (((((v10 & (2 * v44)) - v44 - 0x6C7FC0153F186563) ^ 0x23EB202577B24DDLL) >> (8 * (v18 & 7u))) ^ *v18) + HIDWORD(a6);
  v56 = v54 ^ 0xD95E95F65428D387 ^ __ROR8__(v52, 61);
  v57 = (__ROR8__(v54 ^ 0xD95E95F65428D387, 8) + v56) ^ v7;
  v58 = *(v20 + ((((v18 - 4) & 0xFFFFFFF8 & a5) + ((v18 - 4) & 0xFFFFFFF8 | a5) + 761896768) & v19));
  v59 = __ROR8__((v18 - 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v60 = ((__ROR8__(v57, 8) + (v57 ^ __ROR8__(v56, 61))) ^ 0x91BE8DE8979CBE40) >> (8 * (v36 & 7u));
  v61 = (v59 + v58 - ((2 * (v59 + v58)) & 0xD0EC46FA2CC91A88) + 0x6876237D16648D44) ^ 0xD8215746C7CC78F8;
  v62 = v61 ^ __ROR8__(v58, 61);
  v63 = (__ROR8__(v61, 8) + v62) ^ a2;
  v64 = v63 ^ __ROR8__(v62, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ a3;
  LODWORD(v60) = v60 ^ *v36;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = __ROR8__(v65, 8);
  v68 = STACK[0x57B0];
  v69 = (((2 * ((v67 + v66) ^ 0xC36A4ED86D0DD7EELL)) | 0xEED9D0C469CB5966) - ((v67 + v66) ^ 0xC36A4ED86D0DD7EELL) - 0x776CE86234E5ACB3) ^ 0xA805B182BD4E3A59;
  v70 = v69 ^ __ROR8__(v66, 61);
  v71 = (__ROR8__(v69, 8) + v70) ^ v11;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ v22;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = __ROR8__(v73, 8);
  LODWORD(v55) = v55 + v6 * v60;
  v76 = (v16 - ((v75 + v74) | v16) + ((v75 + v74) | 0xBD8B8D498BEC31C8)) ^ 0xB6ABFF277A1A0B67;
  v77 = v76 ^ __ROR8__(v74, 61);
  v78 = __ROR8__(v76, 8);
  *(v18 - 4) = v55 ^ (((((2 * (v78 + v77)) | 0x79D66AFE58736B5CLL) - (v78 + v77) + 0x4314CA80D3C64A52) ^ 0x2D55B897BBA50BEELL) >> (8 * ((v18 - 4) & 7)));
  return (*(STACK[0x57D8] + 8 * ((216 * (v9 + 1 != v68)) ^ v8)))();
}

uint64_t sub_1004859A0()
{
  v0 = (STACK[0x51B8] - 22598) | 0x880;
  *STACK[0x4D10] = STACK[0x7F64];
  return (*(STACK[0x57D8] + 8 * (((STACK[0x7FF8] == 0) * (v0 - 2102)) ^ LODWORD(STACK[0x11C4]))))();
}

uint64_t sub_100485A84@<X0>(uint64_t a1@<X8>)
{
  v3 = STACK[0xB140];
  STACK[0x92C8] = STACK[0xAEA0];
  STACK[0x9588] = STACK[0xBED8];
  STACK[0xC008] = STACK[0x7688];
  LODWORD(STACK[0xBC5C]) = STACK[0x9684];
  LODWORD(STACK[0x998C]) = STACK[0xAA34];
  STACK[0x9868] = STACK[0x71C8];
  LODWORD(STACK[0x6058]) = STACK[0xCD5C];
  STACK[0x82E0] = STACK[0x9000];
  STACK[0xA630] = STACK[0xB8C8];
  STACK[0x7260] = STACK[0x5B78];
  STACK[0x6350] = STACK[0x62A0];
  LODWORD(STACK[0xB900]) = STACK[0x93CC];
  STACK[0x7B90] = v3;
  STACK[0x59E0] = &STACK[0x10120] + a1;
  STACK[0x7ED8] = ((v2 - 13704) ^ 0xFFFFFFFFFFFFFDF0) + v1;
  return (*(STACK[0x57D8] + 8 * ((4033 * (v3 != 0x30BDFED8F32E6831)) ^ v2)))();
}

uint64_t sub_100485BE4()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x5788)))();
  STACK[0x6958] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_100485C24@<X0>(int a1@<W8>)
{
  if (a1 == v1)
  {
    v3 = STACK[0xCAFC];
  }

  else
  {
    v3 = a1;
  }

  return (*(STACK[0x57D8] + 8 * ((23041 * (v3 == ((v2 - 7667) | 0x24E) - 143114829)) ^ v2)))();
}

uint64_t sub_100485C7C(uint64_t a1)
{
  v1 = *(STACK[0x4D10] + 24) + 16 * *(a1 + 3512) + 12;
  *(a1 + 220) = 0;
  v2 = STACK[0x57D8];
  *(a1 + 200) = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x44B8]));
  *(a1 + 208) = v1;
  return (*(v2 + 8 * SLODWORD(STACK[0x44B4])))();
}

uint64_t sub_100485CC4()
{
  LODWORD(STACK[0x1D4C8]) = -1606496254 - 16169987 * (((((v2 - 240) | 0xC50C349C) ^ 0xFFFFFFFE) - (~(v2 - 240) | 0x3AF3CB63)) ^ 0x6F7DFE4B) + v0 + 1472;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v0 + 30944)))(v2 - 240);
  *(v1 - 0x79CEC8CF5A6FCE4ALL) = (3694 * (v0 ^ 0x386)) ^ LODWORD(STACK[0x1D4C0]) ^ 0x5D02FB9C;
  STACK[0xC328] = *(v3 + 8 * v0);
  return (*(v3 + 8 * (v0 + 13585)))(v4);
}

uint64_t sub_100485DC0@<X0>(int a1@<W7>, int a2@<W8>)
{
  v5 = (((*(v3 + 1780) ^ 0x76B87EB9) - 1991802553) ^ (2351 * (v4 ^ 0x58A3) + (*(v3 + 1780) ^ 0xF2AF0BDA) + 223402137) ^ (((3769 * (v4 ^ 0x58A6)) ^ *(v3 + 1780) ^ 0x560BADA1) - 1443624439)) - a2 - 926498668;
  v6 = (v2 > a1 + 696) ^ (v5 < 0xF6AA4000);
  v7 = v2 - 156614656 > v5;
  if (v6)
  {
    v7 = v2 > a1 + 696;
  }

  return (*(STACK[0x57D8] + 8 * ((99 * v7) ^ v4)))();
}

uint64_t sub_100485F98()
{
  v0 = STACK[0xE44] & 0x999F5B37;
  STACK[0x5A28] = STACK[0x8ED0];
  STACK[0xA778] = 0;
  LODWORD(STACK[0xA784]) = -769884012;
  v1 = STACK[0x57D8];
  v2 = STACK[0xE40];
  STACK[0x73A0] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0xE40]));
  return (*(v1 + 8 * ((v0 - 11974) ^ v2)))();
}

uint64_t sub_100486048()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 23219)))(LODWORD(STACK[0x7E70]) ^ 0xD21C8094);
  STACK[0xE7D0] = v2;
  if (v2)
  {
    v3 = -143113071;
  }

  else
  {
    v3 = -143156080;
  }

  LODWORD(STACK[0xE7DC]) = v3;
  return (*(v1 + 8 * (((2 * (((v2 == 0) ^ (((v0 + 113) & 0xB) + 1)) & 1)) & 0xFB | (4 * (((v2 == 0) ^ (((v0 + 113) & 0xB) + 1)) & 1))) ^ v0)))();
}

uint64_t sub_10048625C()
{
  v5 = v0 - 1;
  *(v3 + (v5 + v4)) = *(v2 + (v5 + v4));
  return (*(STACK[0x57D8] + 8 * ((43 * (v5 != 0)) ^ (v1 + 456))))();
}

uint64_t sub_1004862F8()
{
  v1 = STACK[0x51B8];
  v2 = STACK[0x51B8] - 15526;
  STACK[0x7ED8] = 2 * (STACK[0x51B8] - 7530) + STACK[0x7ED8] - 30280;
  v3 = STACK[0x3740];
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v1 + 9377)))(*(STACK[0x3740] + 28), *(STACK[0x3740] + 40));
  *(v3 + 28) = 0;
  *(v3 + 40) = 0;
  return (*(v4 + 8 * ((15 * (v0 != -143113071)) | v2)))(v5);
}

uint64_t sub_1004864B4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = *(STACK[0x57D8] + 8 * ((47 * ((((a6 - 13570) ^ (a2 < 0x10)) & 1) == 0)) ^ a6));
  *&STACK[0x5770] = vdupq_n_s64(0xE9163F4E061DC72CLL);
  *&STACK[0x5760] = vdupq_n_s64(0x10E9C0B1F9E238D3uLL);
  *&STACK[0x5750] = vdupq_n_s64(0x660E82D464D0916CuLL);
  *&STACK[0x5740] = vdupq_n_s64(0x400771075D8B9ED9uLL);
  *&STACK[0x5730] = vdupq_n_s64(0xD7C2D8BF5E0F3656);
  *&STACK[0x5720] = vdupq_n_s64(0x141E93A050F864D4uLL);
  *&STACK[0x5710] = vdupq_n_s64(0x9D29E110537B9308);
  *&STACK[0x5700] = vdupq_n_s64(0x395068E453634233uLL);
  *&STACK[0x56F0] = vdupq_n_s64(v6);
  *&STACK[0x57C0] = vdupq_n_s64(0x4A5238DE4A1AB532uLL);
  STACK[0x56C0] = v8;
  *&STACK[0x5780] = vdupq_n_s64(v7);
  return v9();
}

uint64_t sub_100486628()
{
  v1 = STACK[0x51B8];
  v2 = STACK[0xC108];
  STACK[0x9CF0] = STACK[0x9890];
  LODWORD(STACK[0x70CC]) = STACK[0x791C];
  STACK[0x6EA8] = v2;
  LODWORD(STACK[0x639C]) = (v1 - 22614) ^ (v1 - 769906883 + ((((v0 - (v1 - 86)) | (v1 - 86 - v0)) & 0x80) >> 7) + 241) ^ 1;
  STACK[0x9470] = &STACK[0x6DC8];
  STACK[0xB730] = &STACK[0xAD14];
  LOBYTE(STACK[0x8DC7]) = 0;
  LODWORD(STACK[0xA5CC]) = 788636045;
  return (*(STACK[0x57D8] + 8 * (v1 - 11737)))(88);
}

uint64_t sub_10048672C(uint64_t a1)
{
  STACK[0x63A0] = 0xD38CBDD3ACAFF84ALL;
  STACK[0x83C0] = &STACK[0x89EC];
  LODWORD(STACK[0x6454]) = -509128919;
  return (*(STACK[0x57D8] + 8 * v1))(a1, 8840181, 1144888832, 2897213512);
}

uint64_t sub_1004867C0@<X0>(__int16 a1@<W8>)
{
  v1 = STACK[0x51B8];
  LOWORD(STACK[0xD9B4]) = a1;
  return (*(STACK[0x57D8] + 8 * ((6299 * (v1 != -1499845420)) ^ (v1 - 19730))))();
}

uint64_t sub_1004868A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, int a3@<W5>, unsigned __int8 a4@<W7>, unsigned __int8 a5@<W8>)
{
  v11 = *(*(v5 + 1368) + (a3 + a5 * v10) % (v7 ^ 0x56FAu));
  v12 = *(a2 + 4 * v6);
  v13 = *(a1 + 1184);
  v14 = v11 & 0xD0 ^ 0x96;
  v15 = v11 ^ v12 ^ (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * v14) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ 0x83;
  if (((((1 << a5) - ((2 * (1 << a5)) & 0x92) + 73) ^ 9) & a4 ^ v8) == 0x40)
  {
    v15 = v12 ^ 0x53;
  }

  *(*(v5 + 1360) + 4 * v6) = v15 ^ (v9 - 147);
  return (*(STACK[0x57D8] + 8 * (v7 | (4 * (((a5 + 1) & 0xF8) == 0)))))(a1, v13);
}

uint64_t sub_100486A2C@<X0>(int a1@<W8>)
{
  v2 = STACK[0x57D8];
  STACK[0x65D0] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (((*(STACK[0x4D10] + 8) != 0) * (a1 - 43362 + 13 * (a1 ^ 0x5E6B))) | (a1 + 5500))))();
}

uint64_t sub_100486BA4()
{
  v2 = STACK[0x6B68];
  STACK[0xE8C0] = v1;
  STACK[0xE8C8] = v2;
  return (*(STACK[0x57D8] + 8 * (((v1 - v2 > 9) * (59 * ((v0 + 970999410) & 0xC61F8EF1 ^ 0x6E4) + 14)) ^ v0)))();
}

uint64_t sub_100486C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = STACK[0x953C];
  v5 = STACK[0x9918];
  STACK[0x81B0] = STACK[0x8228];
  LODWORD(STACK[0x9DAC]) = v4;
  *(a4 + 2952) = -127;
  STACK[0x60C8] = &STACK[0x1D258];
  LODWORD(STACK[0x803C]) = -769884004;
  STACK[0x8A48] = &STACK[0x972C];
  STACK[0xC910] = &STACK[0x5DB0];
  STACK[0x6830] = v5;
  LODWORD(STACK[0x9E18]) = 1593041220;
  return (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x2C2C])))();
}

uint64_t sub_100486D3C@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  LODWORD(STACK[0x4A10]) = LODWORD(STACK[0x54D0]) | LODWORD(STACK[0x5530]);
  LODWORD(STACK[0x4990]) = LODWORD(STACK[0x54C0]) | LODWORD(STACK[0x5410]);
  LODWORD(STACK[0x4970]) = LODWORD(STACK[0x5480]) | LODWORD(STACK[0x5640]);
  LODWORD(STACK[0x54C0]) = v2 & (a2 ^ 0x9DA0E876);
  LODWORD(STACK[0x5530]) = v4 & (v3 ^ 0x2950C33B);
  LODWORD(STACK[0x54D0]) = v6 & (v5 ^ 0xB5F77195);
  return (*(STACK[0x57D8] + 8 * v7))(STACK[0x5770], a1, 26193860);
}

uint64_t sub_100486F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v8);
  return (*(v9 + 8 * (v8 + 3333)))(v7, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1004870AC()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 1406)))(32);
  STACK[0x63E8] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (67 * (v0 ^ 0x7760) + ((v0 - 7786) ^ 0xFFFFCB0A))) | v0)))();
}

uint64_t sub_100487178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, int a4@<W8>)
{
  v5 = *(STACK[0x57D8] + 8 * (a4 + 4192));
  STACK[0x5720] = a3;
  return v5(a1, a2, v4);
}

uint64_t sub_1004871A4(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7, int a8)
{
  v18 = (((v12 ^ a8) & v13) << v16) | ((v12 ^ a8) >> v15);
  v19 = a3 & (4 * ((v18 ^ (2 * (v18 & v14))) & v14)) ^ v18 ^ (2 * (v18 & v14));
  v20 = *((v19 ^ 0x5A0 ^ (16 * (v19 & v14)) & (4 * (v14 & a4)) & a5) + v17 + 2845) ^ 0x82;
  v21 = (((v20 & 0xF) + v9) ^ 0xC6) + v17;
  HIDWORD(v22) = v10;
  LODWORD(v22) = v20 << 24;
  v23 = *(v17 + ((v22 >> 28) ^ 0x5Bu) + 1294) ^ ~(v22 >> 28);
  LODWORD(v21) = ((32 * ((v23 >> 1) & 1)) | 8) ^ (*(v21 + 777) ^ 0xFFFFFFA2) & ~(16 * v23);
  v24 = *(v17 + (v21 ^ 0xC7u) + 22879);
  LOBYTE(v21) = (((v24 ^ 0xF2) + 14) ^ ((v24 ^ 0x5F) - 95) ^ ((v24 ^ 0xA8) + 88)) - (((v21 ^ 0x46) - 114) ^ ((v21 ^ 0x3A) - 14) ^ ((v21 ^ 0x71) - 69)) - 49;
  v25 = v21 & 0xFB ^ 7;
  v26 = v21 ^ 0x7C;
  LODWORD(v21) = 12337 * ((v21 ^ (2 * (v26 & (2 * (v26 & (2 * (v26 & (2 * (v26 & (2 * (v26 & (2 * (((2 * v21) & 0x7A ^ 6) & v26 ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25))) ^ 0x54);
  *(STACK[0x8070] + v11 % 0x3282) = *(STACK[0x8070] + v21 - 12930 * (((1328683 * v21) >> 32) >> 2));
  return (*(STACK[0x57D8] + 8 * ((31046 * (v12 == 255)) ^ v8)))();
}

uint64_t sub_100487584()
{
  v3 = (*(v1 + 8 * (v0 ^ 0x5CEF)))();
  *v2 = 0;
  return (*(v1 + 8 * v0))(v3);
}

uint64_t sub_1004875A8()
{
  STACK[0x880] = v2;
  v5 = *(v4 + 8 * (((*(v3 - 0x2369327399A66D91) == ((v0 - 137180194) & 0xBFFD9FF1) + 1211071599) * (v0 - v1 + 1211074926)) ^ v0));
  STACK[0x7A0] = v3;
  return v5();
}

uint64_t sub_1004876CC(unsigned __int8 a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, int a5)
{
  LODWORD(STACK[0x57A0]) = v6;
  LODWORD(STACK[0x5770]) = LODWORD(STACK[0x5770]) << 16;
  LODWORD(STACK[0x5790]) = a5;
  LODWORD(STACK[0x57C0]) = LODWORD(STACK[0x57C0]) << 8;
  return (*(STACK[0x57D8] + 8 * ((5105 * (v8 < 0x5BDAA2B3)) ^ (v8 - 666195079))))(a1, v5 | (v7 << 24) | (a3 << 8), STACK[0x5228]);
}

uint64_t sub_1004878CC()
{
  v2 = STACK[0x4E88] ^ 0xB88801D4E1C76353 ^ STACK[0x4E90];
  v3 = __ROR8__(STACK[0x4E88] ^ 0xB88801D4E1C76353, 8);
  STACK[0x4AD8] = v3 + v2;
  STACK[0x4AC0] = 2 * (v3 + v2);
  STACK[0x4AE0] = __ROR8__(v2, 61);
  STACK[0x4B00] = 2 * STACK[0x4DE8];
  LODWORD(STACK[0x4AE8]) = STACK[0x4BA0] & 0xFFFFFFF8;
  v4 = v0 & 0xCAE37A5F;
  LODWORD(STACK[0x4B18]) = 2 * STACK[0x4BA8];
  LODWORD(STACK[0x4AF8]) = STACK[0x4B98] & 0xFFFFFFF8;
  LODWORD(STACK[0x4AD0]) = 3 * (v4 ^ 0x722C);
  v5 = LODWORD(STACK[0x53D0]) != 16;
  v6 = STACK[0x4FC0] + v1;
  LODWORD(STACK[0x4B30]) = *v6;
  STACK[0x4B28] = 8 * (v6 & 7);
  LODWORD(STACK[0x4AF0]) = 2 * (v6 & 0xFFFFFFF8);
  STACK[0x4B08] = *STACK[0x51E8];
  STACK[0x4B10] = *STACK[0x51F0];
  STACK[0x4AC8] = v4;
  v7 = *(STACK[0x57D8] + 8 * (v4 ^ (127 * v5)));
  STACK[0x4B38] = v6 & 0xFFFFFFFFFFFFFFF8;
  STACK[0x4B20] = __ROR8__(v6 & 0xFFFFFFFFFFFFFFF8, 8);
  return v7();
}

uint64_t sub_100487A74()
{
  v3 = STACK[0xABF8];
  *(v3 + 344) = STACK[0x65F8];
  v4 = STACK[0x74C4];
  *(v3 + 352) = STACK[0x74C4];
  v5 = STACK[0x7EE8];
  *(v3 + 360) = STACK[0x7EE8];
  v6 = *STACK[0x51F0];
  v7 = *STACK[0x51E8] & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v6 + (((v5 & 0xFFFFFFF8 ^ 0x750D5108) + 86960146 + ((2 * (v5 & 0xFFFFFFF8)) & 0xEA1AA210)) & v7));
  v9 = (v8 + __ROR8__(v5 & 0xFFFFFFFFFFFFFFF8, 8)) ^ ((v1 - 31840158) - 0x4777FE2B1E389CAELL);
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = v1 & 0xB20687D1 ^ 0x38C8B16AE701EFE7 ^ (((v0 - (v1 | ((v1 ^ 0xA39A64BB) << 32))) | ((v1 | ((v1 ^ 0xA39A64BB) << 32)) - v0)) >> 63) ^ (__ROR8__(v9, 8) + v10);
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = __ROR8__(v11, 8);
  v14 = (((2 * (v13 + v12)) & 0xB04C9D6E39B6421ELL) - (v13 + v12) - 0x58264EB71CDB2110) ^ 0x425900356FE13BA1;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0xE1A1FD5BD155F97ALL;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0xDA604B0C03A2BF99;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (((2 * (v20 + v19)) | 0x7E480CE666BA670ELL) - (v20 + v19) + 0x40DBF98CCCA2CC79) ^ 0x4511E4BEF8630240;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0xD2F00CE620E5D3AELL;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  LODWORD(v23) = (((((v25 + v24) & 0xDA3B779C8D0B7651 ^ 0x4033449C09024651) + ((v25 + v24) & 0x25C4886372F489AELL ^ 0x2144084210008101) - 1) ^ 0x950447EFB772B22ALL) >> (8 * (v5 & 7u))) ^ *v5;
  v26 = *++v5;
  v27 = *(v6 + (((v5 & 0xECAAF2A0) + (v5 & 0x13550D58 | 0xECAAF2A7) - 1919859085) & v7));
  v28 = (v27 + __ROR8__(v5 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xB88801D4E1C76353;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (((2 * (v30 + v29)) | 0x498B373E42123CA0) - (v30 + v29) + 0x5B3A6460DEF6E1B0) ^ 0x9C0D2AF5C60C7627;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (v33 + v32 - ((2 * (v33 + v32)) & 0x98CC66761C28A938) + 0x4C66333B0E14549CLL) ^ 0xA9E6824682D1B1CDLL;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (((2 * ((v36 + v35) ^ 0x9177EB33FB66EBCBLL)) & 0x123C817106C56A0CLL) - ((v36 + v35) ^ 0x9177EB33FB66EBCBLL) - 0x91E40B88362B507) ^ 0x8637A92F56AE5848;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0xDA604B0C03A2BF99;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  v42 = __ROR8__((((v41 + v40) | 0xC4BD4EFA926A1499) - ((v41 + v40) | 0x3B42B1056D95EB66) + 0x3B42B1056D95EB66) ^ 0x3E88AC375954255ELL, 8);
  v43 = (((v41 + v40) | 0xC4BD4EFA926A1499) - ((v41 + v40) | 0x3B42B1056D95EB66) + 0x3B42B1056D95EB66) ^ 0x3E88AC375954255ELL ^ __ROR8__(v40, 61);
  LODWORD(v5) = v23 + 16 * ((((__ROR8__((v42 + v43) ^ 0xD2F00CE620E5D3AELL, 8) + ((v42 + v43) ^ 0xD2F00CE620E5D3AELL ^ __ROR8__(v43, 61))) ^ 0xF4730B31AE70757BLL) >> (8 * (v5 & 7u))) ^ v26);
  *(v3 + 368) = (v5 - 47 * (((2789 * v5) >> 16) >> 1) + 17);
  *(v3 + 408) = STACK[0x5CA8];
  *(v3 + 416) = v4;
  *(v3 + 376) = STACK[0x4E98];
  *(v3 + 384) = 41;
  *(v3 + 392) = STACK[0x53F0];
  *(v3 + 400) = 37;
  STACK[0x1D4C8] = v3 + 344;
  LODWORD(STACK[0xA24C]) = -1749965970;
  LODWORD(STACK[0x1D4C0]) = (v1 + 194912425) ^ (551690071 * ((2 * ((v2 - 240) & 0x778A2F40) - (v2 - 240) - 2005544776) ^ 0xC69883EF));
  v44 = STACK[0x57D8];
  v45 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x1E5AB52)))(v2 - 240);
  return (*(v44 + 8 * (v1 ^ 0x1E5C593)))(v45);
}

uint64_t sub_1004880D0@<X0>(int a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v14 = (7538 * (v9 ^ 0x2895) + 451550869) ^ v10;
  v15 = 2 * (v10 & 0x1B);
  v16 = (v15 ^ 0xBA78020) & v14;
  v17 = (2 * v14) & 0xA01048B0 ^ 0xA0104890 ^ ((2 * v14) ^ 0x5CC83740) & v14;
  v18 = v15 & 0x30 ^ v10 & 0x1B ^ v16;
  v19 = ((4 * v18) ^ 0xBA78000) & v17;
  v20 = ((4 * v17) ^ 0xA578EEC0) & v17 ^ (4 * v17) & 0xABB7DBB0;
  v21 = v20 ^ 0x1209130;
  v22 = (v20 ^ 0xAA974A80) & (16 * ((4 * v18) & 0x2BB7DBB0 ^ v18 ^ v19)) ^ (4 * v18) & 0x2BB7DBB0 ^ v18 ^ v19;
  v23 = ((16 * v21) ^ 0xBB7DBB00) & v21 ^ (16 * v21) & 0xABB7DBB0;
  v24 = a8 + ((v10 ^ (2 * (((v22 ^ 0xABB7DBB0 ^ (v23 ^ 0xAB359B00) & (v22 << 8)) << 16) & 0x2BB70000 ^ v22 ^ 0xABB7DBB0 ^ (v23 ^ 0xAB359B00) & (v22 << 8) ^ (((v22 ^ 0xABB7DBB0 ^ (v23 ^ 0xAB359B00) & (v22 << 8)) << 16) ^ 0x5BB00000) & (((v23 ^ 0x8240B0) << 8) & 0x2BB70000 ^ 0x8240000 ^ (((v23 ^ 0x8240B0) << 8) ^ 0x37DB0000) & (v23 ^ 0x8240B0))))) & 0xFFFFFFCF ^ 0xF1521A3BLL);
  v25 = *(*v12 + ((*v11 & ((v24 & 0xFFFFFFF8) + a1)) & 0xFFFFFFFFFFFFFFF8));
  v26 = (__ROR8__(v24 & 0xFFFFFFFFFFFFFFF8, 8) + v25) ^ v13;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ a6;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ a3;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (((2 * (v32 + v31)) | 0x8DE6FFE1D3076BA0) - (v32 + v31) + 0x390C800F167C4A30) ^ 0x235C6543C73E890DLL;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ a7;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ a5;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ a4;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  *v24 = *(v10 + v8 - 1319260837) ^ (((v41 + v40 - ((2 * (v41 + v40)) & 0x5D9FB702BBD7994CLL) + 0x2ECFDB815DEBCCA6) ^ 0xEF0C1353F92E848ELL) >> (8 * (v24 & 7u))) ^ 0xF;
  return (*(STACK[0x57D8] + 8 * ((441 * (v10 + 1 == a2 + 16)) ^ v9)))();
}

uint64_t sub_100488478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(v10 + 400))
  {
    v11 = 1;
  }

  else
  {
    v11 = v7 - 143173443 + ((v7 + 1082314172) & 0xBF7D777B) + v9 + v8 == v7 - 143113072;
  }

  v12 = v11;
  return (*(STACK[0x57D8] + 8 * ((19406 * v12) ^ (v7 | 0x2378))))(a1, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_100488500@<X0>(uint64_t a1@<X8>)
{
  STACK[0x6C40] = 0;
  STACK[0x8980] = 0;
  return (*(STACK[0x57D8] + 8 * ((27 * (a1 != 0x308E083E0C524CBELL)) ^ v1)))();
}

uint64_t sub_10048857C()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 19740)))();
  STACK[0xC130] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1004886F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  LODWORD(STACK[0x5398]) |= LODWORD(STACK[0x53B8]);
  LODWORD(STACK[0x53B0]) |= LODWORD(STACK[0x54C0]);
  LODWORD(STACK[0x3750]) = LODWORD(STACK[0x53A8]) | LODWORD(STACK[0x5430]);
  LODWORD(STACK[0x53B8]) = LODWORD(STACK[0x5360]) | LODWORD(STACK[0x3458]);
  LODWORD(STACK[0x33F0]) = LODWORD(STACK[0x3418]) | LODWORD(STACK[0x38B0]);
  LODWORD(STACK[0x3400]) = LODWORD(STACK[0x3410]) | LODWORD(STACK[0x3438]);
  LODWORD(STACK[0x53A8]) = LODWORD(STACK[0x3408]) | LODWORD(STACK[0x3470]);
  v12 = v11 & 0xA8 ^ 0x1A;
  v13 = v10 & 0x66 ^ 0x79;
  v14 = (((v10 ^ (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * (v13 ^ v10 & 0x12)) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13))) ^ 0x66) << 8) | (((v11 ^ (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * v12) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12))) ^ 0xA8) << 16);
  v15 = v9 & 0xA ^ 0xEB;
  v16 = (((v9 ^ (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & 0x3E ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15))) ^ 0xA1B67B) & ~v14 | v14 & 0x5E4900) << 8;
  LODWORD(STACK[0x54C0]) = v16 ^ 0xE4880FF;
  LODWORD(STACK[0x3438]) = v16 & 0xF0075E00;
  LOBYTE(v16) = a8 & 0x18 ^ 0x72;
  v17 = a7 & 0xDA ^ 0x13;
  v18 = a4 & 0xF6 ^ 0xA1;
  v19 = (((a4 ^ (2 * ((a4 ^ 0x34) & (2 * ((a4 ^ 0x34) & (2 * ((a4 ^ 0x34) & (2 * ((a4 ^ 0x34) & (2 * ((a4 ^ 0x34) & (2 * (a4 & (2 * v18) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18))) ^ 0xF6) << 8) | (((a7 ^ (2 * ((a7 ^ 0x34) & (2 * ((a7 ^ 0x34) & (2 * ((a7 ^ 0x34) & (2 * ((a7 ^ 0x34) & (2 * ((a7 ^ 0x34) & (2 * (v17 ^ a7 & 0x2E)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17))) ^ 0xDA) << 16);
  v20 = ((a8 ^ (2 * ((a8 ^ 0x34) & (2 * ((a8 ^ 0x34) & (2 * ((a8 ^ 0x34) & (2 * ((a8 ^ 0x34) & (2 * ((a8 ^ 0x34) & (2 * v16) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16))) ^ 0x266E68) & ~v19 | v19 & 0xD99100;
  v21 = STACK[0x54F0];
  v22 = STACK[0x54F0] & 0xA6 ^ 0xFFFFFF99;
  LODWORD(STACK[0x54F0]) = v21 ^ (2 * ((v21 ^ 0x34) & (2 * ((v21 ^ 0x34) & (2 * ((v21 ^ 0x34) & (2 * ((v21 ^ 0x34) & (2 * ((v21 ^ 0x34) & (2 * (v22 ^ v21 & 0x12)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22));
  v23 = STACK[0x5500];
  LOBYTE(v14) = STACK[0x5500] & 0x4E ^ 0x4D;
  v24 = STACK[0x5510];
  LOBYTE(v19) = STACK[0x5510] & 0xD4 ^ 0x90;
  v25 = (((v24 ^ (2 * ((v24 ^ 0x34) & (2 * ((v24 ^ 0x34) & (2 * ((v24 ^ 0x34) & (2 * ((v24 ^ 0x34) & (2 * v19) | v19)) ^ v19)) ^ v19)) ^ v19))) ^ 0xD4) << 8) | (((v23 ^ (2 * ((v23 ^ 0x34) & (2 * ((v23 ^ 0x34) & (2 * ((v23 ^ 0x34) & (2 * ((v23 ^ 0x34) & (2 * ((v23 ^ 0x34) & (2 * (v14 ^ v23 & 0x3A)) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14))) ^ 0x4E) << 16);
  v26 = STACK[0x5520];
  LOBYTE(v22) = STACK[0x5520] & 0xCC ^ 0x8C;
  v27 = (((v26 ^ (2 * ((v26 ^ 0x34) & (2 * ((v26 ^ 0x34) & (2 * ((v26 ^ 0x34) & (2 * ((v26 ^ 0x34) & (2 * v22) ^ v22)) ^ v22)) ^ v22)) ^ v22))) ^ 0x74B30F) & ~v25 | v25 & 0x8B4C00) << 8;
  LODWORD(STACK[0x5520]) = v27 ^ 0x884420FF;
  LODWORD(STACK[0x38B0]) = v27 & 0x13899D00;
  v28 = STACK[0x5530] & 0x84 ^ 0xFFFFFFA8;
  v29 = LODWORD(STACK[0x5530]) ^ (2 * ((LODWORD(STACK[0x5530]) ^ 0x34) & (2 * ((LODWORD(STACK[0x5530]) ^ 0x34) & (2 * ((LODWORD(STACK[0x5530]) ^ 0x34) & (2 * ((LODWORD(STACK[0x5530]) ^ 0x34) & (2 * v28) ^ v28)) ^ v28)) ^ v28)) ^ v28));
  v30 = STACK[0x5540];
  v31 = STACK[0x5540] & 0x5A ^ 0x53;
  v32 = STACK[0x5600];
  LOBYTE(v21) = STACK[0x5600] & 0xDE ^ 0x15;
  v33 = v30 ^ (2 * ((v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & (2 * (v31 ^ v30 & 0x2E)) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ 0x5A;
  v34 = ((v32 ^ (2 * ((v32 ^ 0x34) & (2 * ((v32 ^ 0x34) & (2 * ((v32 ^ 0x34) & (2 * ((v32 ^ 0x34) & (2 * ((v32 ^ 0x34) & (2 * (v21 ^ v32 & 0xAA)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21))) ^ 0xDE) << 8;
  v35 = STACK[0x5610];
  LOBYTE(v19) = STACK[0x5610] & 0x8E ^ 0x2D;
  v36 = (v34 & 0xF800 | (v33 << 16) | ((v35 ^ (2 * ((v35 ^ 0x34) & (2 * ((v35 ^ 0x34) & (2 * ((v35 ^ 0x34) & (2 * ((v35 ^ 0x34) & (2 * ((v35 ^ 0x34) & (2 * (v19 ^ v35 & 0x3A)) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19))) ^ 0x7E2) & ~v34) << 8;
  LODWORD(STACK[0x5640]) = v36 ^ 0x7D6013FF;
  LODWORD(STACK[0x3410]) = v36 & 0x829E8000;
  LOBYTE(v36) = *STACK[0x51E0];
  LOBYTE(v19) = v36 & 0xAA ^ 0x9B;
  LOBYTE(v21) = *(STACK[0x55B0] + 471);
  LOBYTE(v35) = v21 & 0xAC ^ 0x1C;
  v37 = STACK[0x57C0];
  LOBYTE(v30) = *(STACK[0x57C0] + 850);
  v38 = (((v21 ^ (2 * ((v21 ^ 0x34) & (2 * ((v21 ^ 0x34) & (2 * ((v21 ^ 0x34) & (2 * ((v21 ^ 0x34) & (2 * v35) ^ v35)) ^ v35)) ^ v35)) ^ v35))) ^ 0xAC) << 16) | (((v36 ^ (2 * ((v36 ^ 0x34) & (2 * ((v36 ^ 0x34) & (2 * ((v36 ^ 0x34) & (2 * ((v36 ^ 0x34) & (2 * ((v36 ^ 0x34) & (2 * ((v36 ^ 0x34) & 0x1E ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19))) ^ 0xAA) << 8);
  LOBYTE(v36) = v30 & 0x44 ^ 0xC8;
  LOBYTE(v35) = *(STACK[0x5760] + 122);
  v39 = ((v30 ^ (2 * ((v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & (2 * v36) ^ v36)) ^ v36)) ^ v36)) ^ v36))) ^ 0x29B115) & ~v38 | v38 & 0xD64E00;
  LOBYTE(v36) = v35 & 0xE ^ 0xED;
  LOBYTE(v38) = v35 ^ (2 * ((v35 ^ 0x34) & (2 * ((v35 ^ 0x34) & (2 * ((v35 ^ 0x34) & (2 * ((v35 ^ 0x34) & (2 * ((v35 ^ 0x34) & (2 * (v36 ^ v35 & 0x3A)) ^ v36)) ^ v36)) ^ v36)) ^ v36)) ^ v36));
  LOBYTE(v35) = *(STACK[0x57A0] + 1252);
  LOBYTE(v36) = v35 & 0x3C ^ 0x44;
  v40 = *(STACK[0x5760] + 2026);
  v41 = v40 & 0x52 ^ 0x57;
  v42 = (((v35 ^ (2 * ((v35 ^ 0x34) & (2 * ((v35 ^ 0x34) & (2 * ((v35 ^ 0x34) & (2 * ((v35 ^ 0x34) & (2 * v36) ^ v36)) ^ v36)) ^ v36)) ^ v36))) ^ 0x3C) << 16) | (((v40 ^ (2 * ((v40 ^ 0x34) & (2 * ((v40 ^ 0x34) & (2 * ((v40 ^ 0x34) & (2 * ((v40 ^ 0x34) & (2 * ((v40 ^ 0x34) & (2 * (v41 ^ v40 & 0x26)) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ v41))) ^ 0x52) << 8);
  v43 = *(STACK[0x5710] + 107);
  v44 = v43 & 0xD4 ^ 0x90;
  v45 = (v42 ^ 0xE97FFF) & ((v43 ^ (2 * ((v43 ^ 0x34) & (2 * ((v43 ^ 0x34) & (2 * ((v43 ^ 0x34) & (2 * ((v43 ^ 0x34) & (2 * v44) | v44)) ^ v44)) ^ v44)) ^ v44))) ^ 0xE97F11) ^ (v42 & 0x168000 | 8);
  v46 = *(STACK[0x5700] + 539);
  v47 = v46 & 0x36 | 0xFFFFFFC1;
  LODWORD(STACK[0x3470]) = v46 ^ (2 * ((v46 ^ 0x34) & (2 * ((v46 ^ 0x34) & (2 * ((v46 ^ 0x34) & (2 * ((v46 ^ 0x34) & (2 * ((v46 ^ 0x34) & (2 * (((2 * (v46 & 0x36)) | 2) & v46 ^ v47)) ^ v47)) ^ v47)) ^ v47)) ^ v47)) ^ v47));
  v48 = STACK[0x54B0];
  v49 = *(STACK[0x54B0] + 3854);
  LOBYTE(v46) = v49 & 0x8A ^ 0x2B;
  v50 = STACK[0x55E0];
  v51 = STACK[0x5720];
  v52 = *(STACK[0x5720] + 2754);
  LOBYTE(v30) = v52 & 0xD4 ^ 0x90;
  v53 = (((v52 ^ (2 * ((v52 ^ 0x34) & (2 * ((v52 ^ 0x34) & (2 * ((v52 ^ 0x34) & (2 * ((v52 ^ 0x34) & (2 * v30) | v30)) ^ v30)) ^ v30)) ^ v30))) ^ 0xD4) << 8) | (((v49 ^ (2 * ((v49 ^ 0x34) & (2 * ((v49 ^ 0x34) & (2 * ((v49 ^ 0x34) & (2 * ((v49 ^ 0x34) & (2 * ((v49 ^ 0x34) & (2 * ((v49 ^ 0x34) & 0x3E ^ v46)) ^ v46)) ^ v46)) ^ v46)) ^ v46)) ^ v46))) ^ 0x8A) << 16);
  v54 = STACK[0x5750];
  LOBYTE(v30) = *(STACK[0x5750] + 1199);
  v55 = v30 & 0x50 ^ 0x56;
  LODWORD(STACK[0x33C0]) = ((((v30 ^ (2 * ((v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & (2 * v55) ^ v55)) ^ v55)) ^ v55)) ^ v55)) ^ v55))) ^ 0x9D1EEE) & ~v53 | v53 & 0x62E100) << 8) & 0x8E007000;
  v56 = *(v54 + 706);
  LOBYTE(v30) = v56 & 0x14 ^ 0xF0;
  LOBYTE(v47) = *(v37 + 1601);
  v57 = v47 & 0x16 ^ 0xF1;
  v58 = (((v56 ^ (2 * ((v56 ^ 0x34) & (2 * ((v56 ^ 0x34) & (2 * ((v56 ^ 0x34) & (2 * ((v56 ^ 0x34) & (2 * v30) ^ v30)) ^ v30)) ^ v30)) ^ v30))) ^ 0x14) << 16) | (((v47 ^ (2 * ((v47 ^ 0x34) & (2 * ((v47 ^ 0x34) & (2 * ((v47 ^ 0x34) & (2 * ((v47 ^ 0x34) & (2 * ((v47 ^ 0x34) & (2 * (v57 ^ v47 & 0x22)) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57))) ^ 0x16) << 8);
  LOBYTE(v53) = *(STACK[0x5770] + 3672);
  v59 = v53 & 0xB6 ^ 0x81;
  v60 = STACK[0x5790];
  LODWORD(STACK[0x33E8]) = ((((v53 ^ (2 * ((v53 ^ 0x34) & (2 * ((v53 ^ 0x34) & (2 * ((v53 ^ 0x34) & (2 * ((v53 ^ 0x34) & (2 * ((v53 ^ 0x34) & (2 * (v53 & (2 * v59) ^ v59)) ^ v59)) ^ v59)) ^ v59)) ^ v59)) ^ v59))) ^ 0x8084BC) & ~v58 | v58 & 0x7F7B00) << 8) & 0x70676100;
  v61 = *(STACK[0x55F0] + 1806);
  v62 = v61 & 0x5E ^ 0xD5;
  v63 = *(v50 + 1085);
  v64 = v63 & 0xE2 ^ 0xBF;
  LOBYTE(v50) = v63 ^ 0x34;
  v65 = (((v61 ^ (2 * ((v61 ^ 0x34) & (2 * ((v61 ^ 0x34) & (2 * ((v61 ^ 0x34) & (2 * ((v61 ^ 0x34) & (2 * ((v61 ^ 0x34) & (2 * (v62 ^ v61 & 0xAA)) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ v62))) ^ 0x5E) << 16) | (((v63 ^ (2 * (v50 & (2 * (v50 & (2 * (v50 & (2 * (v50 & (2 * (v50 & (2 * (v50 & 0x16 ^ v64)) ^ v64)) ^ v64)) ^ v64)) ^ v64)) ^ v64))) ^ 0xE2) << 8);
  LOBYTE(v30) = *(STACK[0x5780] + 1070);
  LOBYTE(v47) = v30 & 0x30 | 0x46;
  LODWORD(STACK[0x33B8]) = ((((v30 ^ (2 * ((v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & (2 * v47) ^ v47)) ^ v47)) ^ v47)) ^ v47)) ^ v47))) ^ 0xEBCDD2) & ~v65 | v65 & 0x143200) << 8) & 0x72874200;
  LOBYTE(v65) = *(v48 + 888);
  LOBYTE(v47) = v65 & 0xB0 | 6;
  v66 = *(v51 + 2481);
  LOBYTE(v26) = v66 & 0x8C ^ 0xAC;
  v67 = (((v66 ^ (2 * ((v66 ^ 0x34) & (2 * ((v66 ^ 0x34) & (2 * ((v66 ^ 0x34) & (2 * ((v66 ^ 0x34) & (2 * v26) ^ v26)) ^ v26)) ^ v26)) ^ v26))) ^ 0x8C) << 8) | (((v65 ^ (2 * ((v65 ^ 0x34) & (2 * ((v65 ^ 0x34) & (2 * ((v65 ^ 0x34) & (2 * ((v65 ^ 0x34) & (2 * ((v65 ^ 0x34) & (2 * v47) ^ v47)) ^ v47)) ^ v47)) ^ v47)) ^ v47))) ^ 0xB0) << 16);
  v68 = *(v60 + 2921);
  LOBYTE(v65) = v68 & 0xD6 ^ 0x91;
  LODWORD(STACK[0x3418]) = ((((v68 ^ (2 * ((v68 ^ 0x34) & (2 * ((v68 ^ 0x34) & (2 * ((v68 ^ 0x34) & (2 * ((v68 ^ 0x34) & (2 * ((v68 ^ 0x34) & (2 * (v65 ^ v68 & 0x22)) ^ v65)) ^ v65)) ^ v65)) ^ v65)) ^ v65))) ^ 0x6BA8B) & ~v67 | v67 & 0xF94500) << 8) & 0xB5C1C400;
  LODWORD(STACK[0x33B0]) = (v20 << 8) & 0xCFCCCD00;
  LODWORD(STACK[0x33A8]) = (v39 << 8) & 0xCBF39A00;
  LODWORD(STACK[0x5430]) = v45 << 8;
  return (*(STACK[0x57D8] + 8 * v8))(v29, v38);
}

uint64_t sub_100489710()
{
  v2 = v1 - 619351889;
  v3 = LODWORD(STACK[0xC3BC]) - 619351889;
  v4 = v2 < 2 * (((v0 - 9957) | 3) ^ 0x1EEAu) - 515682848;
  v5 = v2 > v3;
  if (v3 < 0xE1437782 != v4)
  {
    v5 = v4;
  }

  return (*(STACK[0x57D8] + 8 * ((38 * !v5) ^ v0)))();
}

uint64_t sub_1004897D8()
{
  v0 = STACK[0x51B8] + 8618;
  v1 = STACK[0x51B8];
  v2 = *(STACK[0x6C40] + 24);
  STACK[0xBA80] = v2;
  return (*(STACK[0x57D8] + 8 * (((v2 != 0) * (v1 ^ 0x58D6)) | v0)))();
}

uint64_t sub_100489838(uint64_t a1)
{
  v1 = *(STACK[0x4D10] + 24) + 16 * *(a1 + 3744) + 12;
  *(a1 + 220) = 0;
  v2 = STACK[0x57D8];
  *(a1 + 200) = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x44A8]));
  *(a1 + 208) = v1;
  return (*(v2 + 8 * (*(a1 + 3724) + 8864)))();
}

uint64_t sub_100489884(uint64_t a1, int a2)
{
  LODWORD(STACK[0x5670]) = v2;
  LODWORD(STACK[0x5680]) = v3;
  LODWORD(STACK[0x56C0]) = a2;
  LODWORD(STACK[0x57B0]) = v4;
  return (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x56F0])))();
}

uint64_t sub_1004899F4()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 | 0x41A2)))(1028);
  STACK[0xD820] = v2;
  return (*(v1 + 8 * (((((v0 ^ 0x6731 ^ (v2 == 0)) & 1) == 0) * ((v0 + 7677) ^ 0x5853)) ^ v0)))();
}

uint64_t sub_100489AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x57D8];
  STACK[0xCF80] = *(STACK[0x57D8] + 8 * (v4 + 2080));
  return (*(v5 + 8 * (v4 + 4258)))(a1, a2, a3, a4, 0xFA35E2CDCB3E31C7, 0xE580B17D8CC5E551, 2050767130, 385182804);
}

uint64_t sub_100489C1C(uint64_t a1)
{
  v2 = STACK[0x85A0];
  STACK[0x88B8] = STACK[0x85A0];
  STACK[0xA870] = STACK[0xA8A8];
  LODWORD(STACK[0x63BC]) = ((((LODWORD(STACK[0x5834]) ^ 0xD00772AD) + 804818259) ^ ((LODWORD(STACK[0x5834]) ^ 0x92EBA) - 601786) ^ ((((v1 ^ 0x60A6) + 2786) | 0x11) + (LODWORD(STACK[0x5834]) ^ 0x212DC83) - 34798740)) - 769883997) & 0xFFFFFFF0 ^ 0xD21C8094;
  STACK[0x7ED0] = v2;
  STACK[0xC880] = 0x92D1DED90EC1B2DBLL;
  LODWORD(STACK[0xCD80]) = 1159076553;
  return (*(STACK[0x57D8] + 8 * (v1 ^ 0x60A6)))(a1, 272629776, 410912332, 1543499262, 2265206393, 3965507692, 4221484704, 0x1B3EC18598D49E09);
}

uint64_t sub_10048A428(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *v13 & 0xFFFFFFF8;
  v18 = *(*v12 + (v17 & (((v15 + v9) & 0xFFFFFFF8) + a4)));
  v19 = __ROR8__((v15 + v9) & 0xFFFFFFFFFFFFFFF8, 8);
  v20 = (v8 + 5079) ^ 0x53FCC3DCF9A5A909 ^ (((2 * (v18 + v19)) & 0x4A20B1FF61B274F6) - (v18 + v19) + 0x5AEFA7004F26C584);
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ a8;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (((2 * (v24 + v23)) & 0xFE4D70CF9D6D70E8) - (v24 + v23) + 0xD947983149478BLL) ^ 0xF52BB94B39E365F3;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ v10;
  v28 = __ROR8__(v27, 8);
  v29 = v27 ^ __ROR8__(v26, 61);
  v30 = (((2 * (v28 + v29)) & 0x3882C215DF47208CLL) - (v28 + v29) - 0x1C41610AEFA39047) ^ 0x1B39DBAB984CE5B5;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = *(*v12 + (v17 & (((v16 + v9) & 0xFFFFFFF8) + a4)));
  v34 = (v33 + __ROR8__((v16 + v9) & 0xFFFFFFFFFFFFFFF8, 8)) ^ a5;
  v35 = (((2 * (v32 + v31)) | 0x591CDAD3D4D243A2) - (v32 + v31) - 0x2C8E6D69EA6921D1) ^ 0x8FD260C4B89A588;
  v36 = v34 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v34, 8) + v36) ^ a8;
  v38 = v35 ^ __ROR8__(v31, 61);
  v39 = v37 ^ __ROR8__(v36, 61);
  v40 = __ROR8__(v35, 8);
  v41 = (__ROR8__(v37, 8) + v39) ^ a3;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (v43 + v42 - ((2 * (v43 + v42)) & 0x157C20DC1A1721D0) - 0x7541EF91F2F46F18) ^ 0xEDED7EAEF680C475;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = __ROR8__(v44, 8);
  v47 = (((2 * (v40 + v38)) & 0x24D69B3013725886) - (v40 + v38) + 0x6D94B267F646D3BCLL) ^ 0x2D5D7D8DCA83185DLL;
  v48 = (((2 * (v46 + v45)) | 0xC05C26C7DC0FDBB6) - (v46 + v45) - 0x602E1363EE07EDDBLL) ^ 0x98A9563D661767D7;
  v49 = v48 ^ __ROR8__(v45, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ a6;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = __ROR8__(v47, 8) + (v47 ^ __ROR8__(v38, 61));
  v53 = (__ROR8__(v50, 8) + v51) ^ a7;
  *(v16 + v9) = ((v52 ^ v11) >> (8 * ((v15 + v9) & 7))) ^ (((__ROR8__(v53, 8) + (v53 ^ __ROR8__(v51, 61))) ^ v11) >> (8 * ((v16 + v9) & 7))) ^ *(v15 + v9);
  return (*(STACK[0x57D8] + 8 * ((235 * (v9 + 1 == v14)) ^ v8)))();
}

uint64_t sub_10048A860()
{
  v1 = *(STACK[0xA8E8] - 0x79296B4A625EDF10) - 1172461588;
  if (v1 < 0)
  {
    v1 = 1172461588 - *(STACK[0xA8E8] - 0x79296B4A625EDF10);
  }

  LODWORD(STACK[0x75F4]) = 4 * v1;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 25752)))((4 * v1 - (((v0 + 16560) ^ 0xA1F4E936) & (8 * v1)) + 1358583987) ^ 0x50FA58B3);
  STACK[0xCF08] = v3;
  STACK[0x5610] = v3;
  return (*(v2 + 8 * ((4066 * (v3 == 0)) ^ v0)))();
}

uint64_t sub_10048AA7C(unint64_t a1)
{
  v5 = v4 < (((v1 + 791) | 0x100) ^ 0xD21CBD19);
  v6 = *(STACK[0x57D8] + 8 * (((4 * v5) | (8 * v5)) ^ v1));
  LODWORD(STACK[0x4E28]) = 71;
  LODWORD(STACK[0x4E44]) = 82;
  LODWORD(STACK[0x4E24]) = -97;
  LODWORD(STACK[0x4E20]) = 9;
  LODWORD(STACK[0x4E60]) = -101;
  LODWORD(STACK[0x4FA0]) = -66;
  STACK[0x53F0] = v2;
  STACK[0x53B8] = v3;
  STACK[0x4968] = a1;
  return v6();
}

uint64_t sub_10048AC20(void *a1)
{
  v1 = STACK[0x6AC0];
  a1[31] = *(STACK[0x4D10] + 24) + 16 * a1[420];
  a1[32] = v1;
  v2 = STACK[0x57D8];
  a1[30] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x41E4]));
  return (*(v2 + 8 * SLODWORD(STACK[0x41F0])))();
}

uint64_t sub_10048AC60()
{
  STACK[0x9EC0] = &STACK[0x9B54];
  LODWORD(STACK[0x9E1C]) = -1415147825;
  return (*(STACK[0x57D8] + 8 * (v0 - 16846)))();
}

uint64_t sub_10048AD64()
{
  LODWORD(STACK[0x6214]) = v2;
  *(v0 + 2676) = v1;
  return (*(STACK[0x57D8] + 8 * v3))();
}

uint64_t sub_10048AF64()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9207)))(v0);
  return (*(v1 + 8 * SLODWORD(STACK[0x1B1C])))(v2);
}

uint64_t sub_10048AFD4(uint64_t a1, char a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v16 = ((a7 & a5) << (((v9 - 31) & 0xCF) + 53)) ^ a7;
  v17 = ((a7 ^ 0xA3FD511F) - 968732588 + *(*(v12 + 8 * (v9 ^ 0x6B1B)) + 4 * (a7 ^ 0x23u))) ^ 0xCAEB99D0;
  v18 = (v14 ^ v13 ^ (((v15 & v16) >> v8) | (v16 << a2)));
  *(STACK[0xD878] + 4 * v18) = v7 ^ v11 ^ 0xD16D2AB2 ^ ((((v17 ^ (2 * (v17 & a5))) & a3) << a2) + (((v17 ^ (2 * (v17 & a5))) & v10) >> v8));
  *(a6 + 4 * v18) = v7 ^ v11 ^ 0xD16D5045 ^ *(*(v12 + 8 * (v9 - 27830)) + 2 * (a7 ^ 0xDBu));
  return (*(STACK[0x57D8] + 8 * ((209 * (a7 == 255)) ^ v9)))();
}

uint64_t sub_10048B0F0@<X0>(int a1@<W8>)
{
  v7 = ((a1 + 35431059) & 0xFDE35F7D) - 1053184337 + v2 * v6;
  *(v3 + 4 * (v7 - (((v7 * v5) >> 32) >> 12) * v4)) = *(v3 + 4 * (v2 * v6 - 1073688443 - ((((v2 * v6 - 1073688443) * v5) >> 32) >> 12) * v4));
  return (*(STACK[0x57D8] + 8 * ((567 * (v2 + 1 == v1 + 256)) ^ a1)))();
}

uint64_t sub_10048B1AC()
{
  v1 = 2 * (v0 ^ 0x747D);
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x241B)))();
  return (*(v2 + 8 * (v1 - 17904)))(v3);
}

uint64_t sub_10048B504()
{
  v1 = STACK[0xBFC0];
  v2 = *(STACK[0xBFC0] - 0x1883660EE814440ALL);
  LODWORD(STACK[0xDACC]) = v2 + 16;
  v3 = *(v1 - 0x1883660EE814440ELL) - 1692190297;
  v2 -= 1692190281;
  v4 = v2 < ((v0 + 604504832) & 0xDBF7FCFF) + 409753037;
  v5 = v3 < v2;
  if (v4 != v3 < 0x186CAE23)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = (STACK[0xBC30] == 0) | v6;
  if (v7)
  {
    v8 = -143155721;
  }

  else
  {
    v8 = -143113071;
  }

  LODWORD(STACK[0xDAD0]) = v8;
  return (*(STACK[0x57D8] + 8 * ((397 * ((v7 & 1) == 0)) ^ (v0 - 3030))))();
}

uint64_t sub_10048B6C8(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0x7468];
  v4 = STACK[0x7ED8];
  STACK[0x7710] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v4 + 16;
  STACK[0xC000] = v3;
  STACK[0xC9C0] = 0;
  STACK[0x5D60] = 0;
  v5 = STACK[0x57D8];
  v6 = *(STACK[0x57D8] + 8 * v2);
  LODWORD(STACK[0xCEA4]) = 2101965948;
  STACK[0xC1C0] = v6;
  return (*(v5 + 38672))(4294960487, a2, 12942, 30467, 15506, 2193001348, 2147336180, 0x5FFBEFAF3FFEDFFBLL);
}

uint64_t sub_10048B850()
{
  v0 = STACK[0x51B8] - 4301;
  v1 = STACK[0x51B8] - 13929;
  v2 = STACK[0x51B8] - 11622;
  v3 = *(STACK[0x9178] + 24);
  STACK[0xA8C0] = v3;
  return (*(STACK[0x57D8] + 8 * (((v3 == 0) * (v1 ^ v2 ^ 0xB66)) ^ v0)))();
}

uint64_t sub_10048B908()
{
  STACK[0xE7E0] = v1;
  v3 = STACK[0x8980];
  STACK[0xE7E8] = STACK[0x8980];
  return (*(STACK[0x57D8] + 8 * (((v1 - v3 > v2 - 22605) * (35 * (v0 ^ 0x7A06) + 50)) | v0)))();
}

uint64_t sub_10048B96C()
{
  *(v1 + 600) = (v0 - 1723133771) ^ (1917435887 * ((v2 + 756420076 - 2 * (v2 & 0x2D160DEC)) ^ 0xCBAD56EA));
  *(v1 + 592) = 0;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x2466)))(v3 - 240);
  if (*STACK[0x4270])
  {
    v6 = 1;
  }

  else
  {
    v6 = *STACK[0x4420] == 0;
  }

  v7 = v6;
  return (*(v4 + 8 * ((495 * v7) ^ (v0 - 11121))))(v5);
}

uint64_t sub_10048BB64(uint64_t a1, unsigned int a2)
{
  LODWORD(STACK[0x51A0]) += LODWORD(STACK[0x5210]);
  LODWORD(STACK[0x5210]) = LODWORD(STACK[0x5150]) + LODWORD(STACK[0x51C8]);
  LODWORD(STACK[0x5650]) = LODWORD(STACK[0x5148]) ^ LODWORD(STACK[0x5540]);
  return (*(STACK[0x57D8] + 8 * ((16673 * (a2 < a2 - v2 - 1820667743)) ^ (a2 + 282652211))))();
}

uint64_t sub_10048BC44(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 8 * ((v7 | ((v7 < a2) << 32)) + 0x57A85A484364EC23) + 0x42BD2DBCFE006F20;
  *(v8 + v9) = *(a5 + v9) ^ 0x1919191919191919;
  if (v6 < 0xC8EEA5A9 != v7 - 1408000079 < 0xC8EEA5A9)
  {
    v10 = v6 < 0xC8EEA5A9;
  }

  else
  {
    v10 = v7 - 1408000079 < v6;
  }

  return (*(STACK[0x57D8] + 8 * (v10 ^ v5)))();
}

uint64_t sub_10048D8FC()
{
  v1 = STACK[0x51B8];
  v2 = STACK[0x51B8] + 2454;
  v3 = LODWORD(STACK[0xABF4]) == (STACK[0x51B8] ^ 0x5856);
  STACK[0x6B28] = STACK[0xB358] + 16;
  STACK[0xC578] = v0;
  return (*(STACK[0x57D8] + 8 * ((980 * (((v1 ^ v3) & 1) == 0)) ^ v2)))();
}

uint64_t sub_10048D9C4()
{
  v3 = STACK[0x6A2C];
  v4 = STACK[0x7FB0];
  STACK[0x1D4D8] = &STACK[0x7AC0];
  STACK[0x1D4C8] = &STACK[0x8C08];
  LOBYTE(STACK[0x1D4D4]) = 9 - -99 * ((((v2 + 16) | 0xD6) - ((v2 + 16) | 0x29) + 41) ^ 0xAE);
  LODWORD(STACK[0x1D4C0]) = 1089234077 * ((((v2 - 240) | 0x7F0F4ED6) - ((v2 - 240) | 0x80F0B129) - 2131709655) ^ 0x9F5292AE) + v0 + 9314;
  STACK[0x1D4E8] = v4;
  LODWORD(STACK[0x1D4E0]) = -1089234077 * ((((v2 - 240) | 0x7F0F4ED6) - ((v2 - 240) | 0x80F0B129) - 2131709655) ^ 0x9F5292AE) + 1138202975 * v3 + (((v0 - 7518) | 0x5806) ^ 0x63711641);
  STACK[0x1D4F0] = v1;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x6198)))(v2 - 240);
  return (*(v5 + 8 * v0))(v6);
}

uint64_t sub_10048DC04()
{
  v0 = STACK[0x51B8] ^ 0x4D92;
  v1 = 114 * (STACK[0x51B8] ^ 0x5852);
  v2 = STACK[0x51B8] + 4088;
  v3 = STACK[0x7FB0];
  STACK[0xA420] = STACK[0x7FB0];
  return (*(STACK[0x57D8] + 8 * (((v0 ^ 0x14DE ^ v1) * (v3 == 0)) ^ v2)))();
}

uint64_t sub_10048DD10()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0xB648];
  *v1 = 0x1D8A118EDE6D14DLL;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1414217035;
  *(v1 + 28) = 0x800000002;
  *(v1 + 36) = 1;
  *(v1 + 40) = 0;
  *(v1 + 48) = 1051464685;
  *(v1 + 56) = 0;
  *(v1 + 64) = 1768711563;
  *(v1 + 68) = 0x400000001;
  *(v1 + 76) = 2;
  *(v1 + 80) = 0;
  v2 = STACK[0x8AB8];
  *(v1 + 88) = *STACK[0x8AB8];
  *(v1 + 96) = 0;
  *(v1 + 104) = 735455032;
  *(v1 + 108) = 0x400000001;
  *(v1 + 116) = 2;
  *(v1 + 120) = 0xF726234C92AC6E47 * *(v2 + 24) - 0x291872199EE7C0FFLL;
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;
  *(v1 + 144) = 1315558685;
  *(v1 + 148) = 0x800000002;
  *(v1 + 156) = 2;
  v3 = STACK[0x57D8];
  STACK[0xBDD0] = *(STACK[0x57D8] + 8 * (v0 - 21501));
  return (*(v3 + 8 * ((v0 - 21501) ^ 0xE8D ^ (16338 * (((v0 - 21501) ^ 0xEF0C2EB6) != -1521228268)))))();
}

uint64_t sub_10048DF38()
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0x5C88];
  LODWORD(STACK[0x9094]) = -32197433;
  return (*(STACK[0x57D8] + 8 * (v0 ^ 0x7A69BDE2 ^ (4308 * (v0 > 0x4827BE4B)))))();
}

uint64_t sub_10048DFE0()
{
  v1 = STACK[0x51B8];
  v2 = STACK[0xA5E8];
  v3 = STACK[0x9260];
  v4 = STACK[0x62C8];
  v5 = STACK[0x6F00];
  v6 = STACK[0x51B8] + 847660746;
  v7 = 1379010179 * ((((v0 - 240) | 0x35E8E8E4) - ((v0 - 240) & 0x35E8E8E4)) ^ 0x11B9D18A);
  LODWORD(STACK[0x1D4E8]) = ((STACK[0x51B8] + 195) ^ 0xE428C098) + v7 + 1806817213 * LODWORD(STACK[0x9E3C]);
  STACK[0x1D4C0] = v4;
  STACK[0x1D4D0] = v5;
  STACK[0x1D4E0] = v3;
  STACK[0x1D4D8] = v2;
  LODWORD(STACK[0x1D4C8]) = v6 ^ v7;
  v8 = STACK[0x57D8];
  v9 = (*(STACK[0x57D8] + 8 * (v1 + 9236)))(v0 - 240);
  return (*(v8 + 8 * ((63 * (LODWORD(STACK[0x1D4EC]) == 221187128)) ^ LODWORD(STACK[0x1374]))))(v9);
}

uint64_t sub_10048E238(int a1, int a2, int a3, int a4, int a5, int a6, int a7)
{
  LODWORD(STACK[0x5670]) = v19;
  LODWORD(STACK[0x5680]) = v18;
  LODWORD(STACK[0x56C0]) = v16;
  LODWORD(STACK[0x56D0]) = a2;
  LODWORD(STACK[0x56E0]) = v12;
  LODWORD(STACK[0x56F0]) = a1;
  LODWORD(STACK[0x5700]) = v15;
  LODWORD(STACK[0x5710]) = v10;
  LODWORD(STACK[0x5720]) = a7;
  LODWORD(STACK[0x5730]) = v13;
  LODWORD(STACK[0x5740]) = a3;
  LODWORD(STACK[0x5750]) = v7;
  LODWORD(STACK[0x5760]) = a5;
  LODWORD(STACK[0x5770]) = a6;
  LODWORD(STACK[0x5780]) = a4;
  LODWORD(STACK[0x5790]) = v11;
  LODWORD(STACK[0x57A0]) = v9;
  LODWORD(STACK[0x57B0]) = v14;
  v21 = STACK[0x57C0];
  LODWORD(STACK[0x57C0]) = STACK[0x57C0];
  v22 = v17[2];
  STACK[0x5650] = v22;
  v23 = v17[4];
  v24 = *v17;
  v25 = ((2 * v22) & 0xFC) + (v22 ^ 0xDDCBB7E);
  v26 = v17[1];
  STACK[0x55F0] = v26;
  v27 = v17[6];
  v28 = v17[5];
  v29 = v27 - 2025497523 - ((v27 << ((91 * (v21 ^ 0xC5)) ^ 0xB7)) & v8);
  v30 = v17[3];
  v31 = v17[7];
  STACK[0x5640] = v31;
  v32 = v17[10];
  STACK[0x5610] = v32;
  LODWORD(STACK[0x5660]) = v31 + 1984312563 - ((2 * v31) & 0x152);
  v33 = v17[8];
  STACK[0x5630] = v33;
  v34 = (2 * v33) & 0x156;
  v35 = v33 + 2145830571;
  v36 = v17[15];
  v37 = v17[12];
  STACK[0x5620] = v37;
  v38 = v37 - 938990920 - ((2 * v37) & 0xFFFFFFC3);
  STACK[0x5600] = v36;
  v39 = *(&off_101353600 + v21 - 20803);
  v40 = *(v39 + 8 * (v24 ^ 0x5Du)) >> 6;
  v41 = ((v40 & 0x24E92A2B577EB53 ^ 0x18F0B06CA6E47C02) & (v40 & 0x1B16D5D4A8814ACLL ^ 0x3F4FB2A7F777EF77) | v40 & 0x1014D11480800ACLL) ^ 0x4BB82C4E9AB0559FLL;
  v42 = *(v39 + 8 * (v26 ^ 0x5C)) >> 6;
  v43 = (*(v39 + 8 * (v29 ^ 0x87455D16)) >> 6) ^ 0x3F89C6A3CD4399DLL;
  v44 = (v35 - v34) ^ 0x7FE6C7F6;
  v45 = *(v39 + 8 * ((v25 - 232569443 + (v20 & (2 * ((v25 - 266242) ^ (30 - v25) ^ (((v25 - 266242) ^ 0x18E9ADA9) + 1791949099) ^ (((v25 - 266242) ^ 7) + 5) ^ (((v25 - 266242) ^ 0xD) + 15))) ^ 0xFFFFFFCF)) ^ 0x45)) >> 6;
  v46 = v45 ^ v42;
  v45 ^= 0x3F89C6A3CD4399DuLL;
  v47 = ((v42 ^ 0x3F89C6A3CD4399DuLL) >> 5) ^ v42 ^ 0x3CD4399D;
  v48 = v45 >> 5;
  v49 = v47 ^ v45;
  v50 = (*(v39 + 8 * (v30 ^ 0x5E)) >> 6) ^ 0x3F89C6A3CD4399DLL;
  LODWORD(v48) = v49 ^ (v46 >> 1) ^ v48 ^ v50;
  v51 = (*(v39 + 8 * (v23 ^ 0x59u)) >> 6) ^ 0x3F89C6A3CD4399DLL;
  LODWORD(v46) = v17[9];
  LODWORD(v51) = (v50 >> 1) ^ (v50 >> 5) ^ v51 ^ v41 ^ (v51 >> 1) ^ (v51 >> 5) ^ (v41 >> 1);
  v52 = v28;
  v53 = (*(v39 + 8 * (v28 ^ 0x58u)) >> 6) ^ 0x3F89C6A3CD4399DLL;
  v54 = v17[13];
  v55 = (*(v39 + 8 * ((LODWORD(STACK[0x5660]) + 182) ^ 0x764634F3u)) >> 6) ^ 0x3F89C6A3CD4399DLL;
  LODWORD(v53) = v51 ^ (v41 >> 5) ^ v53 ^ (v53 >> 1) ^ (v53 >> 5) ^ v55 ^ (v55 >> 1);
  v56 = v17[11];
  v57 = v17[14];
  v58 = (*(v39 + 8 * v44) >> 6) ^ 0x3F89C6A3CD4399DLL;
  LODWORD(v53) = v53 ^ (v55 >> 5);
  v59 = v58 >> 5;
  LODWORD(v53) = v48 ^ v53;
  LODWORD(v48) = v58 ^ (v58 >> 1);
  v60 = (*(v39 + 8 * (v46 ^ 0x5C)) >> 6) ^ 0x3F89C6A3CD4399DLL;
  LODWORD(v59) = v48 ^ v59;
  v61 = v60 >> 5;
  v62 = (*(v39 + 8 * ((v32 - 1342965682 - ((2 * v32) & 0x22222222) + 195) ^ 0xAFF3F84E)) >> 6) ^ 0x3F89C6A3CD4399DLL;
  LODWORD(v59) = v59 ^ v60 ^ (v60 >> 1);
  v63 = v62 >> 5;
  LODWORD(v59) = v59 ^ v61;
  v64 = v62 >> 1;
  LODWORD(v62) = v59 ^ v62;
  v65 = (*(v39 + 8 * (v56 ^ 0x15E)) >> 6) ^ 0x3F89C6A3CD4399DLL;
  v66 = (*(v39 + 8 * ((v38 + 297) ^ 0xC80822B8)) >> 6) ^ 0x3F89C6A3CD4399DLL;
  LODWORD(v62) = v62 ^ v64 ^ v63 ^ ((((v43 ^ (v43 >> 4)) << 24) ^ (v43 << 25)) >> 25) ^ v65 ^ (v65 >> 1);
  v67 = (*(v39 + 8 * (v54 ^ 0x58u)) >> 6) ^ 0x3F89C6A3CD4399DLL;
  LODWORD(v53) = v53 ^ v62 ^ (v65 >> 5) ^ v66;
  STACK[0x55E0] = v57;
  v68 = (*(v39 + 8 * (v57 ^ 0x5B)) >> 6) ^ 0x3F89C6A3CD4399DLL;
  LODWORD(v43) = (*(v39 + 8 * ((v36 - 33533802 - ((2 * v36) & 0x12C)) ^ 0xFE0051CC)) >> 6) ^ 0x3CD4399D;
  LODWORD(v53) = v53 ^ (v66 >> 1) ^ (v66 >> 5) ^ v67 ^ (v67 >> 1) ^ (v67 >> 5) ^ v68 ^ (v68 >> 1) ^ (v68 >> 5) ^ v43 ^ (v43 >> 1) ^ (v43 >> 5);
  v69 = STACK[0x5650];
  LODWORD(v68) = v23 ^ STACK[0x5650];
  v70 = STACK[0x55F0];
  LODWORD(v65) = v68 ^ v24 ^ STACK[0x55F0] ^ v52 ^ v30 ^ v27 ^ v46 ^ STACK[0x5640] ^ STACK[0x5610] ^ v54 ^ STACK[0x5630] ^ STACK[0x5600] ^ v57 ^ STACK[0x5620] ^ v53;
  v71 = v65 ^ v56;
  v72 = (v65 ^ v56);
  LODWORD(v56) = STACK[0x57C0];
  v73 = *(&off_101353600 + (LODWORD(STACK[0x57C0]) ^ 0x5651)) - 4;
  STACK[0x55D0] = v72 ^ 0xC4;
  LODWORD(v43) = v73[v72 ^ 0xC4];
  STACK[0x5660] = v71;
  LODWORD(v64) = v73[v72 ^ 0xA9];
  LODWORD(STACK[0x55F0]) = v73[v70 ^ 0x66] ^ v73[v72 ^ 0x5A];
  v74 = v73[v69 ^ 0x66] ^ v43;
  v75 = v73[v30 ^ 0x66] ^ v64;
  v76 = v73[v72 ^ 0x66];
  STACK[0x5630] = v72 ^ 0x2E;
  STACK[0x5620] = v72 ^ 0xF6;
  return (*(STACK[0x57D8] + 8 * v56))((v76 ^ 0xCB) & 7, (0x101010101010101 * (v76 ^ 0xCB)) ^ 0xA57A9DCB3BD759D1, (v76 >> 3) ^ 0x19, v75, 20, v74);
}

uint64_t sub_10048EB80()
{
  v12 = STACK[0x53B8] + v8;
  v13 = *(STACK[0x5790] + (LODWORD(STACK[0x5780]) & (LODWORD(STACK[0x57B0]) + (v12 & 0xFFFFFFF8 ^ 0xCF754BDE) + ((2 * (v12 & 0xFFFFFFF8)) & 0x9EEA97B0) - 1429816097)));
  v14 = (v13 + __ROR8__(v12 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xB88801D4E1C76353;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0x38C8B16AE7056877;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (((2 * (v18 + v17)) & 0x88471BFB7B03C7F4) - (v18 + v17) - 0x44238DFDBD81E3FBLL) ^ 0x5E5CC37FCEBBF954;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0xE1A1FD5BD155F97ALL;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0xDA604B0C03A2BF99;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0xFA35E2CDCB3E31C7;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (((2 * (v27 + v26)) | 0xC269169C3FCB3B42) - (v27 + v26) - 0x61348B4E1FE59DA1) ^ 0xB3C487A83F004E0FLL;
  LODWORD(v12) = (((__ROR8__(v28, 8) + (v28 ^ __ROR8__(v26, 61))) ^ 0xF4730B31AE70757BLL) >> (8 * (v12 & 7u))) ^ *v12;
  LODWORD(v12) = 1266644241 * (((v12 ^ 0x2DBED3FE) - 1706536215) ^ ((v12 ^ 0xC908D272) + 2130596709) ^ ((v12 ^ 0xE4B6018C) + 1396736155)) + 599799444;
  LODWORD(v12) = v12 ^ ((v12 ^ 0x9F8411AD) - 1409506742) ^ ((v12 ^ 0x11C171AE) + 632930891) ^ ((v12 ^ 0xBE3DC377) - 1975160684) ^ ((v12 ^ 0xFBFFEF6F) - 813212532) ^ 0x23053D9F;
  LODWORD(v28) = ((v12 ^ v9 ^ 0x47EDED67) - 1206775143) ^ ((v12 ^ v9 ^ 0x7153041B) - 1901265947) ^ ((v12 ^ v9 ^ 0x152638C4) - 354826436);
  LODWORD(v26) = ((((v8 - 1610479606 + v28) ^ 0x6287414) - 2051097158) ^ (v8 - 1610479606 + v28) ^ (((v8 - 1610479606 + v28) ^ 0x4D02295B) - 829103881) ^ (((v8 - 1610479606 + v28) ^ 0xC01F96E0) + 1133076304) ^ (((v8 - 1610479606 + v28) ^ 0xF75CFDFF) + 1959408723)) >> 16;
  LODWORD(v28) = v28 + (((v26 ^ 0xD7ED3ABC) + 296384487) ^ ((v26 ^ 0x9B032D19) + 1564762180) ^ ((v26 ^ 0x4CEE6BCC) - 1968626025));
  LODWORD(v26) = ((((v8 - 1268883363 + v28) ^ 0x74339202) - 591343067) ^ (v8 - 1268883363 + v28) ^ (((v8 - 1268883363 + v28) ^ 0xD149E9A4) + 2042276227) ^ (((v8 - 1268883363 + v28) ^ 0x8D88BF00) + 628883239) ^ (((v8 - 1268883363 + v28) ^ 0x7FFE7B7E) - 686998694)) >> 8;
  v29 = v8 + v28 + (((v26 ^ 0x9BE76D5) + 876709250) ^ ((v26 ^ 0xE46DE243) - 644738792) ^ ((v26 ^ 0xED849829) - 797217922));
  LODWORD(v28) = v29 + 1141234795;
  LODWORD(v26) = (v29 + 1141234795) ^ 0xC17753D1;
  v30 = (v29 - 485650966) ^ 0x481375AA ^ (((v29 - 485650966) ^ 0xAE2A51D8) + 426760578) ^ (((v29 - 485650966) ^ 0xAF4FB2B2) + 403323628) ^ (((v29 - 485650966) ^ 0xB620CF3B) + 23414627) ^ (((v29 - 485650966) ^ 0xFFFF5BF7) + 1220203439);
  LODWORD(v12) = ((v30 ^ v12 ^ 0x8DA33A0) - 148517792) ^ ((v30 ^ v12 ^ 0x50ABC5B0) - 1353434544) ^ ((v30 ^ v12 ^ 0xB05A8598) + 1336244840);
  v31 = v8 + 1406247686 + v12;
  v32 = (v31 ^ 0x90159610) & (2 * (v31 & 0x9459D082)) ^ v31 & 0x9459D082;
  v33 = ((2 * (v31 ^ 0xB0971714)) ^ 0x499D8F2C) & (v31 ^ 0xB0971714) ^ (2 * (v31 ^ 0xB0971714)) & v7;
  v34 = ((4 * (v33 ^ 0x24424092)) ^ 0x933B1E58) & (v33 ^ 0x24424092) ^ (4 * (v33 ^ 0x24424092)) & (v7 - 2);
  v35 = (v33 ^ 0x8C8600) & (4 * v32) ^ v32;
  v36 = ((16 * (v34 ^ 0x24C4C186)) ^ 0x4CEC7960) & (v34 ^ 0x24C4C186) ^ (16 * (v34 ^ 0x24C4C186)) & (v7 - 6);
  v37 = (v34 ^ 0xA0606) & (16 * v35) ^ v35 ^ v7 ^ (v36 ^ 0x4CC4100) & (((v34 ^ 0xA0606) & (16 * v35) ^ v35) << 8);
  v38 = (v31 ^ (2 * ((v37 << 16) & v11 ^ v37 ^ ((v37 << 16) ^ 0x47960000) & (((v36 ^ 0x20028696) << 8) & v11 ^ 0x20080000 ^ (((v36 ^ 0x20028696) << 8) ^ 0x4EC70000) & (v36 ^ 0x20028696u))))) >> 16;
  LODWORD(v12) = v12 + (((v38 ^ 0x3E016EC1) + 946367788) ^ ((v38 ^ 0xEEF83C5F) - 393134154) ^ ((v38 ^ 0xD0F98656) - 695171651));
  v39 = v8 + 1168006651 + v12;
  v40 = ((2 * (v39 ^ 0xEC610B9E)) ^ 0xE0846BE8) & (v39 ^ 0xEC610B9E) ^ (2 * (v39 ^ 0xEC610B9E)) & v10;
  v41 = (v39 ^ 0xDC233F4A) & (2 * (v39 & 0x9C233E6A)) ^ v39 & 0x9C233E6A;
  v42 = v40 ^ 0x10421414;
  v43 = (v40 ^ v3) & (4 * v41) ^ v41;
  v44 = ((4 * v42) ^ 0xC108D7D0) & v42 ^ (4 * v42) & v10;
  v45 = (v44 ^ 0x400015C4) & (16 * v43) ^ v43;
  v46 = ((16 * (v44 ^ 0x30422024)) ^ 0x4235F40) & (v44 ^ 0x30422024) ^ (16 * (v44 ^ 0x30422024)) & (v10 - 4);
  v47 = (v39 ^ (2 * (((v45 ^ v10 ^ (v46 ^ 0x215B4) & (v45 << 8)) << 16) & v5 ^ v45 ^ v10 ^ (v46 ^ 0x215B4) & (v45 << 8) ^ (((v45 ^ v10 ^ (v46 ^ 0x215B4) & (v45 << 8)) << 16) ^ 0x35F40000) & (((v46 ^ 0x704020B4) << 8) & v5 ^ 0x30420000 ^ (((v46 ^ 0x704020B4) << 8) ^ 0x42350000) & (v46 ^ 0x704020B4u))))) >> 8;
  v48 = v8 + v12 + (((v47 ^ 0x6E8B106C) + 1828676421) ^ ((v47 ^ 0xE13BBBB2) - 481310565) ^ ((v47 ^ 0x8FAC8C8B) - 1915158620));
  v49 = ((v48 + 1487175574) ^ 0xF6B68118) & (2 * ((v48 + 1487175574) & 0x86B4C851)) ^ (v48 + 1487175574) & 0x86B4C851;
  v50 = ((2 * ((v48 + 1487175574) ^ 0xF2FF9118)) ^ 0xE896B292) & ((v48 + 1487175574) ^ 0xF2FF9118) ^ (2 * ((v48 + 1487175574) ^ 0xF2FF9118)) & v4;
  v51 = v50 ^ 0x14494949;
  v52 = (v50 ^ 0x200A0801) & (4 * v49) ^ v49;
  v53 = ((4 * v51) ^ 0xD12D6524) & v51 ^ (4 * v51) & v4;
  v54 = LODWORD(STACK[0x57C0]) ^ v28 ^ ((v28 ^ 0xC986BCC8) + 304380133) ^ (v26 + 450205694) ^ ((v28 ^ 0xD1522B75) + 183562074) ^ ((v28 ^ 0xFDFEFFBF) + 643578772) ^ (v48 + 1487175574);
  LODWORD(v26) = ((16 * (v53 ^ 0x24421849)) ^ 0x44B59490) & (v53 ^ 0x24421849) ^ (16 * (v53 ^ 0x24421849)) & (v4 - 8);
  v55 = (v53 ^ 0x50094100) & (16 * v52) ^ v52 ^ (v4 + 1) ^ (v26 ^ 0x44011049) & (((v53 ^ 0x50094100) & (16 * v52) ^ v52) << 8);
  v56 = v8 + 1;
  LODWORD(STACK[0x57C0]) = v54 ^ (2 * ((v55 << 16) & v1 ^ v55 ^ ((v55 << 16) ^ 0x59490000) & (((v26 ^ 0x304A4949) << 8) & v1 ^ 0x34020000 ^ (((v26 ^ 0x304A4949) << 8) ^ 0x4B590000) & (v26 ^ 0x304A4949)))) ^ 0xEAED4110;
  if (v2 < v6 != v56 + v6 < v6)
  {
    v57 = v2 < v6;
  }

  else
  {
    v57 = v2 > v56 + v6;
  }

  return (*(STACK[0x57D8] + 8 * (((2 * !v57) | (8 * !v57)) ^ v0)))();
}

uint64_t sub_10048F824()
{
  v7 = *(v6 + (((v0 - 11892) | 0x1042u) + 8692212 + 4843 * v1 - 1215) % 0x16B8);
  v8 = 6157 * (((v7 ^ 0x5E500305) - 1582301957) ^ ((v7 ^ LODWORD(STACK[0x3698])) + 2035645639) ^ ((v7 ^ 0xD8FA80FB) + 654671621)) + 58165179;
  v9 = *(v5 + 4 * (v8 - (((v8 * v4) >> 32) >> 12) * v3));
  v10 = (4843 * (((v9 ^ 0xBE8F9087) + 1631430413) ^ ((v9 ^ 0x329C66D4) - 315731616) ^ ((v9 ^ 0x8C13F6D9) + 1403109715)) + 535309547) % 0x16B8;
  v11 = *(v6 + 4843 * ((((v9 >> 4) & 0xFF000 ^ 0x4F000) + 5255168) >> 12) - 5816 * (((11815591 * (4843 * ((((v9 >> 4) & 0xFF000 ^ 0x4F000) + 5255168) >> 12))) >> 32) >> 4)) << 8;
  v12 = *(v6 + v2 + 4843 * (BYTE1(v9) ^ 0xB6) - 5816 * (((11815591 * (v2 + 4843 * (BYTE1(v9) ^ 0xB6u))) >> 32) >> 4));
  *(v5 + 4 * (6157 * v1 + 9469466 - ((((6157 * v1 + 9469466) * v4) >> 32) >> 12) * v3)) = (((((((v11 ^ 0xFF10E7) & ((*(v6 + (4843 * (((HIBYTE(v9) ^ 0xBCBAAA0C) - 893374849) ^ ((HIBYTE(v9) ^ 0x6F5F857E) + 421855501) ^ ((HIBYTE(v9) ^ 0xD3E52F1A) - 1516262551)) - 1600281352) % 0x16B8) << 16) ^ 0x6494E7) | v11 & 0x6B00) ^ 0x82F2E1) & (v12 ^ 0xFFFFD1) ^ v12 & 0xFFFFFFF9) << 8) ^ 0x354DE4EE) & (*(v6 + v10) ^ 0xFFFFFF29) | *(v6 + v10) & 0x11) ^ 0x7C279565;
  return (*(STACK[0x57D8] + 8 * ((20341 * (v1 == 255)) ^ v0)))();
}

uint64_t sub_10048FAF8@<X0>(unint64_t a1@<X5>, unint64_t a2@<X6>, int a3@<W8>)
{
  v7 = STACK[0x4DA0];
  STACK[0x85F0] = STACK[0x4DA0];
  v8 = LODWORD(STACK[0x4DE0]) ^ STACK[0x4DF0];
  v9 = STACK[0x4DC0];
  v10 = (a3 ^ STACK[0x4DC0]) - (v3 + 1911918546);
  v16 = STACK[0x4DF0] == 0;
  v11 = STACK[0x4DC8];
  LODWORD(STACK[0x4B78]) = LODWORD(STACK[0x4DC8]) ^ 0xAE484061;
  v12 = (((v11 ^ 0xA42D5C6D) - 1840307417) ^ ((v11 ^ 0xC335624B) - 178840319) ^ ((((v3 ^ 0x50A4) - 546320896) ^ v11) - 384673506)) + 1911920820;
  STACK[0x4D58] = (v11 ^ 0xB8681870);
  STACK[0x4C68] = (v4 ^ 0xA275FF40);
  v13 = v7 + 16;
  v14 = (v10 | (v3 + 1911918546 - (a3 ^ v9))) >> 31;
  v15 = ((v10 | (v3 + 1911918546 - (a3 ^ v9))) & 0x80000000) == 0;
  LODWORD(STACK[0x4B88]) = v8;
  LODWORD(STACK[0x4B80]) = 1911920836;
  v16 = v16 || v8 == 1911920836;
  v17 = v16;
  LODWORD(STACK[0x4B68]) = v17;
  v18 = STACK[0x4DD0];
  v19 = (((v18 ^ 0x49A942B0) - 6157316) ^ ((v18 ^ 0x7D42AA8D) - 884350009) ^ ((v18 ^ 0xCEAC64D) - 1159622905)) - 324553400;
  v20 = (v19 ^ 0x344DFB7E) & (2 * (v19 & 0x854DE37C)) ^ v19 & 0x854DE37C;
  v21 = ((2 * (v19 ^ 0x344F39EE)) ^ 0x6205B524) & (v19 ^ 0x344F39EE) ^ (2 * (v19 ^ 0x344F39EE)) & 0xB102DA92;
  v22 = v21 ^ 0x91024A92;
  v23 = (v21 ^ 0x20009000) & (4 * v20) ^ v20;
  v24 = ((4 * v22) ^ 0xC40B6A48) & v22 ^ (4 * v22) & 0xB102DA90;
  v25 = (v24 ^ 0x80024A12) & (16 * v23) ^ v23;
  v26 = ((16 * (v24 ^ 0x31009092)) ^ 0x102DA920) & (v24 ^ 0x31009092) ^ (16 * (v24 ^ 0x31009092)) & 0xB102DA90;
  v27 = v25 ^ 0xB102DA92 ^ (v26 ^ 0x10008892) & (v25 << 8);
  LODWORD(STACK[0x4B60]) = v19 ^ (2 * ((v27 << 16) & 0x31020000 ^ v27 ^ ((v27 << 16) ^ 0x5A920000) & (((v26 ^ 0xA1025292) << 8) & 0x31020000 ^ 0x31000000 ^ (((v26 ^ 0xA1025292) << 8) ^ 0x2DA0000) & (v26 ^ 0xA1025292)))) ^ 0xD16C0E49;
  v28 = (((v18 ^ 0x63C5E177) - 707876803) ^ ((v18 ^ 0x9A012523) + 738880617) ^ ((v18 ^ 0xC1C5EA24) + 2010030960)) + 1911920820;
  STACK[0x4BA8] = v13 + (v18 ^ 0x38012E70);
  LODWORD(STACK[0x4BA0]) = (16 * LODWORD(STACK[0x4DA8])) ^ 0xDD91BC70;
  STACK[0x4B50] = v12 + 1;
  STACK[0x4B48] = v12 + 2;
  STACK[0x4B40] = v12 + 3;
  STACK[0x4B38] = v12 + 4;
  STACK[0x4B30] = v12 + 5;
  STACK[0x4B28] = v12 + 6;
  STACK[0x4B20] = v12 + 7;
  STACK[0x4B18] = v12 + 8;
  STACK[0x4B10] = v12 + 9;
  STACK[0x4B08] = v12 + 10;
  STACK[0x4B00] = v12 + 11;
  STACK[0x4AF8] = v12 + 12;
  STACK[0x4AF0] = v12 + 13;
  STACK[0x4AE8] = v12 + 14;
  STACK[0x4B70] = v12;
  STACK[0x4AE0] = v12 + 15;
  if (!v9)
  {
    v15 = 1;
  }

  LODWORD(STACK[0x4AD8]) = v15;
  STACK[0x4DD8] = v13;
  if (v14)
  {
    v29 = v7 + 16;
  }

  else
  {
    v29 = v5;
  }

  STACK[0x4AD0] = v29;
  STACK[0x4AC8] = v28 + 1;
  v30 = *(STACK[0x57D8] + 8 * (v3 + 27649));
  STACK[0x4AC0] = v28 + 2;
  STACK[0x4AB8] = v28 + 3;
  STACK[0x4AB0] = v28 + 4;
  STACK[0x4AA8] = v28 + 5;
  STACK[0x4AA0] = v28 + 6;
  STACK[0x4A98] = v28 + 7;
  STACK[0x4A90] = v28 + 8;
  STACK[0x4A88] = v28 + 9;
  STACK[0x4A80] = v28 + 10;
  STACK[0x4A78] = v28 + 11;
  STACK[0x4A70] = v28 + 12;
  STACK[0x4A68] = v28 + 13;
  STACK[0x4A60] = v28 + 14;
  STACK[0x4B58] = v28;
  STACK[0x4A58] = v28 + 15;
  LODWORD(STACK[0x4B98]) = (16 * LODWORD(STACK[0x4DB0])) ^ 0xDD91BC70;
  LODWORD(STACK[0x4B90]) = (16 * LODWORD(STACK[0x4DB8])) ^ 0xDD91BC70;
  STACK[0x4DE8] = v5;
  LODWORD(STACK[0x4DF8]) = v6;
  STACK[0x4E18] = a1;
  STACK[0x4E00] = a2;
  return v30();
}

uint64_t sub_10049004C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14)
{
  v17 = *(STACK[0x55E0] + (STACK[0x55A0] & ((STACK[0x55D0] & 0xE51FC6F8) + (STACK[0x55D0] | 0xE51FC6FC) - 1793297892)));
  v18 = (0xAB164F04A508B24 - ((v17 + STACK[0x5580]) | 0xAB164F04A508B24) + ((v17 + STACK[0x5580]) | 0xF54E9B0FB5AF74DBLL)) ^ 0x4DC69ADB54681788;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0x38C8B16AE7056877;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (v22 + v21 - ((2 * (v22 + v21)) & 0xD12B6682A5343F10) + 0x6895B341529A1F88) ^ 0x8D15023CDE5FFAD9;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (0xBDC9515C689FD33DLL - ((v25 + v24) | 0xBDC9515C689FD33DLL) + ((v25 + v24) | 0x4236AEA397602CC2)) ^ 0xA39753F84635D5B8;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (0x66C802E3E8E1BBFCLL - ((v28 + v27) | 0x66C802E3E8E1BBFCLL) + ((v28 + v27) | 0x9937FD1C171E4403)) ^ 0x4357B61014BCFB9ALL;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0xFA35E2CDCB3E31C7;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0xD2F00CE620E5D3AELL;
  v34 = ((__ROR8__(v33, 8) + (v33 ^ __ROR8__(v32, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x57B0];
  LODWORD(v34) = ((v34 ^ LODWORD(STACK[0x57C0]) ^ 0xFFFFFFDF) - 49) ^ ((v34 ^ LODWORD(STACK[0x57C0]) ^ 9) + 25) ^ ((v34 ^ LODWORD(STACK[0x57C0]) ^ 0xFFFFFFD6) - 56);
  v35 = *(STACK[0x5740] + (LODWORD(STACK[0x54D0]) & ((STACK[0x5670] ^ 0x3868EF1F) + 1104366075 + (STACK[0x5348] & 0x70D1DE30))));
  v36 = (v35 + STACK[0x56E0]) ^ 0xB88801D4E1C76353;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (v38 + v37 - ((2 * (v38 + v37)) & 0x211CCEC3066ACBAALL) + 0x108E6761833565D5) ^ 0x2846D60B64300DA2;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0xE580B17D8CC5E551;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ 0xE1A1FD5BD155F97ALL;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = __ROR8__(v43, 8);
  v46 = (((2 * (v45 + v44)) & 0xA9F3C89516CD782ELL) - (v45 + v44) - 0x54F9E44A8B66BC18) ^ 0x716650B9773BFC71;
  v47 = v46 ^ __ROR8__(v44, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ 0xFA35E2CDCB3E31C7;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ 0xD2F00CE620E5D3AELL;
  v51 = ((__ROR8__(v50, 8) + (v50 ^ __ROR8__(v49, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5480];
  LODWORD(v51) = ((v51 ^ LODWORD(STACK[0x54A0]) ^ 0xFFFFFFA7) - 68) ^ ((v51 ^ LODWORD(STACK[0x54A0]) ^ 0x78) + 101) ^ ((v51 ^ LODWORD(STACK[0x54A0]) ^ 0xFFFFFFDF) - 60);
  v52 = *(STACK[0x5328] + (LODWORD(STACK[0x5218]) & ((STACK[0x5308] & 0x29D1C828) + (STACK[0x5308] | 0x29D1C828) + 1349153010)));
  v53 = (v52 + STACK[0x5700]) ^ 0xB88801D4E1C76353;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ 0x38C8B16AE7056877;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ 0xE580B17D8CC5E551;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = __ROR8__(v57, 8);
  v60 = __ROR8__((((v59 + v58) & 0x5EFF4B846CA23AAELL ^ 0x44930980008210A0) + ((v59 + v58) ^ 0x9A6C46766D60EA5ELL) - (((v59 + v58) ^ 0x9A6C46766D60EA5ELL) & 0x5EFF4B846CA23AAELL)) ^ 0x2532F0A9D097298ALL, 8);
  v61 = (((v59 + v58) & 0x5EFF4B846CA23AAELL ^ 0x44930980008210A0) + ((v59 + v58) ^ 0x9A6C46766D60EA5ELL) - (((v59 + v58) ^ 0x9A6C46766D60EA5ELL) & 0x5EFF4B846CA23AAELL)) ^ 0x2532F0A9D097298ALL ^ __ROR8__(v58, 61);
  v62 = (v60 + v61) ^ 0xDA604B0C03A2BF99;
  v63 = v62 ^ __ROR8__(v61, 61);
  v64 = __ROR8__(v62, 8);
  v65 = (v64 + v63 - ((2 * (v64 + v63)) & 0xF8F8E3664D94A47ELL) - 0x3838E4CD935ADC1) ^ 0x649937EEDF463F8;
  v66 = v65 ^ __ROR8__(v63, 61);
  v67 = __ROR8__(v65, 8);
  v68 = (((2 * (v67 + v66)) & 0x89217362805D4C2ELL) - (v67 + v66) + 0x3B6F464EBFD159E8) ^ 0xE99F4AA89F348A46;
  LODWORD(STACK[0x4FF0]) = LODWORD(STACK[0x56F0]) ^ (((__ROR8__(v68, 8) + (v68 ^ __ROR8__(v66, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x54B0]);
  v69 = STACK[0x5088];
  v70 = (0x43460DDA2EB7099ALL - (v69 | 0x43460DDA2EB7099ALL) + (v69 | 0xBCB9F225D148F665)) ^ 0x593943585D8D1334 ^ STACK[0x5090];
  v71 = (__ROR8__((0x43460DDA2EB7099ALL - (v69 | 0x43460DDA2EB7099ALL) + (v69 | 0xBCB9F225D148F665)) ^ 0x593943585D8D1334, 8) + v70) ^ 0xE1A1FD5BD155F97ALL;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = __ROR8__(v71, 8);
  v74 = (((2 * (v73 + v72)) & 0x1C695C3D296BCB94) - (v73 + v72) - 0xE34AE1E94B5E5CBLL) ^ 0x2BAB1AED68E8A5ACLL;
  v75 = v74 ^ __ROR8__(v72, 61);
  v76 = __ROR8__(v74, 8);
  v77 = __ROR8__((((2 * (v76 + v75)) | 0x66271C907091385ALL) - (v76 + v75) - 0x33138E4838489C2DLL) ^ 0xC9266C85F376ADEALL, 8);
  v78 = (((2 * (v76 + v75)) | 0x66271C907091385ALL) - (v76 + v75) - 0x33138E4838489C2DLL) ^ 0xC9266C85F376ADEALL ^ __ROR8__(v75, 61);
  v79 = (v77 + v78 - ((2 * (v77 + v78)) & 0x5ED4B38AC8CA2260) + 0x2F6A59C564651130) ^ 0xFD9A55234480C29ELL;
  v80 = v79 ^ __ROR8__(v78, 61);
  v81 = __ROR8__(v79, 8);
  LODWORD(STACK[0x5460]) = LODWORD(STACK[0x52C8]) ^ (((0xCD0BCAB5E42E137BLL - ((v81 + v80) | 0xCD0BCAB5E42E137BLL) + ((v81 + v80) | 0x32F4354A1BD1EC84)) ^ 0xC6873E7BB5A199FFLL) >> STACK[0x52C0]);
  v82 = (((2 * (STACK[0x52E0] ^ 0xE9E6F4E39BC15927)) | 0x6A6FC34B3B6DA4D8) - (STACK[0x52E0] ^ 0xE9E6F4E39BC15927) - 0x3537E1A59DB6D26CLL) ^ 0xE419A42CE172E33CLL;
  v83 = __ROR8__(v82, 8);
  v84 = v82 ^ STACK[0x52E8];
  v85 = (v83 + v84) ^ 0xE580B17D8CC5E551;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = __ROR8__(v85, 8);
  v88 = (v87 + v86 - ((2 * (v87 + v86)) & 0x522B9EB4662D688ALL) + 0x2915CF5A3316B445) ^ 0xC8B43201E2434D3FLL;
  v89 = v88 ^ __ROR8__(v86, 61);
  v90 = (__ROR8__(v88, 8) + v89) ^ 0xDA604B0C03A2BF99;
  v91 = v90 ^ __ROR8__(v89, 61);
  v92 = (__ROR8__(v90, 8) + v91) ^ 0xFA35E2CDCB3E31C7;
  v93 = v92 ^ __ROR8__(v91, 61);
  v94 = (__ROR8__(v92, 8) + v93) ^ 0xD2F00CE620E5D3AELL;
  v95 = v94 ^ __ROR8__(v93, 61);
  v96 = __ROR8__(v94, 8);
  LODWORD(STACK[0x54C0]) = LODWORD(STACK[0x5398]) ^ (((((2 * (v96 + v95)) & 0x78FF0FAA82F14C5CLL) - (v96 + v95) - 0x3C7F87D54178A62FLL) ^ 0x37F3731B10F72CAALL) >> STACK[0x5390]);
  v97 = ((STACK[0x4ED0] & 0x264D9C78C21C22B4) - STACK[0x4ED8] - 0x1326CE3C610E115BLL) ^ 0x95980BE12340BF4;
  v98 = __ROR8__(v97, 8);
  v99 = v97 ^ STACK[0x4EE0];
  v100 = (((2 * (v98 + v99)) | 0xCFC76D585C1E7C96) - (v98 + v99) - 0x67E3B6AC2E0F3E4BLL) ^ 0x86424BF7FF5AC731;
  v101 = v100 ^ __ROR8__(v99, 61);
  v102 = __ROR8__(v100, 8);
  v103 = (v102 + v101 - ((2 * (v102 + v101)) & 0x8FDDFBA33BFF597ELL) + 0x47EEFDD19DFFACBFLL) ^ 0x9D8EB6DD9E5D1326;
  v104 = v103 ^ __ROR8__(v101, 61);
  v105 = __ROR8__(v103, 8);
  v106 = (((v105 + v104) | 0x9A95499F7D4431CLL) - ((v105 + v104) | 0xF656AB66082BBCE3) - 0x9A95499F7D4431DLL) ^ 0xF39CB6543CEA72DBLL;
  v107 = v106 ^ __ROR8__(v104, 61);
  v108 = (__ROR8__(v106, 8) + v107) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(STACK[0x4F78]) = LODWORD(STACK[0x52F0]) ^ (((__ROR8__(v108, 8) + (v108 ^ __ROR8__(v107, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x52D0]);
  v109 = (((2 * v15) & 0xCE713D6568557E48) - v15 - 0x67389EB2B42ABF25) ^ 0x79669C169A80B9A1 ^ v14;
  v110 = (__ROR8__((((2 * v15) & 0xCE713D6568557E48) - v15 - 0x67389EB2B42ABF25) ^ 0x79669C169A80B9A1, 8) + v109) ^ 0xDA604B0C03A2BF99;
  v111 = v110 ^ __ROR8__(v109, 61);
  v112 = (__ROR8__(v110, 8) + v111) ^ 0xFA35E2CDCB3E31C7;
  v113 = v112 ^ __ROR8__(v111, 61);
  v114 = (__ROR8__(v112, 8) + v113) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(STACK[0x5620]) = LODWORD(STACK[0x51C0]) ^ (((__ROR8__(v114, 8) + (v114 ^ __ROR8__(v113, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x51B0]);
  v115 = *(STACK[0x5110] + (LODWORD(STACK[0x5098]) & (STACK[0x5130] - 1583038885 - (STACK[0x5130] & 0x27689398) + (STACK[0x5130] | 0xD8976C64) + 3675)));
  v116 = (((2 * (v115 + STACK[0x5160])) & 0x6A16324C8EF6D9A2) - (v115 + STACK[0x5160]) - 0x350B1926477B6CD2) ^ 0x727CE70D5943F07DLL;
  v117 = __ROR8__(v116, 8);
  v118 = v116 ^ __ROR8__(v115, 61);
  v119 = (v117 + v118 - ((2 * (v117 + v118)) & 0x31D6AC9978EE6D04) + 0x18EB564CBC773682) ^ 0x2023E7265B725EF5;
  v120 = v119 ^ __ROR8__(v118, 61);
  v121 = (__ROR8__(v119, 8) + v120) ^ 0xE580B17D8CC5E551;
  v122 = v121 ^ __ROR8__(v120, 61);
  v123 = __ROR8__(v121, 8);
  v124 = (((v123 + v122) | 0xFF3C3531A6F613B7) - ((v123 + v122) | 0xC3CACE5909EC48) + 0xC3CACE5909EC48) ^ 0x1E9DC86A77A3EACDLL;
  v125 = v124 ^ __ROR8__(v122, 61);
  v126 = __ROR8__(v124, 8);
  v127 = __ROR8__((((2 * (v126 + v125)) | 0xBC0E0BE47D00A118) - (v126 + v125) - 0x5E0705F23E80508CLL) ^ 0x84674EFE3D22EF15, 8);
  v128 = (((2 * (v126 + v125)) | 0xBC0E0BE47D00A118) - (v126 + v125) - 0x5E0705F23E80508CLL) ^ 0x84674EFE3D22EF15 ^ __ROR8__(v125, 61);
  v129 = (v127 + v128) ^ 0xFA35E2CDCB3E31C7;
  v130 = v129 ^ __ROR8__(v128, 61);
  v131 = __ROR8__(v129, 8);
  v132 = (((v131 + v130) & 0x1583B1FCA72ABEB5 ^ 0x108130D425028695) + ((v131 + v130) & 0xEA7C4E0358D5414ALL ^ 0xA0340C0050014041) - 1) ^ 0x6245303255E6157BLL;
  v133 = ((__ROR8__(v132, 8) + (v132 ^ __ROR8__(v130, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5148];
  LODWORD(v133) = ((v133 ^ LODWORD(STACK[0x5150]) ^ 0xFFFFFFEA) - 99) ^ ((v133 ^ LODWORD(STACK[0x5150]) ^ 0x25) + 84) ^ ((v133 ^ LODWORD(STACK[0x5150]) ^ 0xFFFFFFCF) - 70);
  v134 = *(STACK[0x5060] + ((((STACK[0x50B0] ^ 0x4D332291) - 949003348 + (LODWORD(STACK[0x5028]) | 0x6599BADD)) & STACK[0x5020]) & 0xFFFFFFFFFFFFFFF8));
  v135 = (((v134 + STACK[0x50D0]) | 0x69C93F453F036A36) - ((v134 + STACK[0x50D0]) | 0x9636C0BAC0FC95C9) - 0x69C93F453F036A37) ^ 0xD1413E91DEC40965;
  v136 = v135 ^ __ROR8__(v134, 61);
  v137 = __ROR8__(v135, 8);
  v138 = (((v137 + v136) | 0xE3C44B5F94F08F88) - ((v137 + v136) | 0x1C3BB4A06B0F7077) + 0x1C3BB4A06B0F7077) ^ 0xDB0CFA3573F5E7FFLL;
  v139 = v138 ^ __ROR8__(v136, 61);
  v140 = (__ROR8__(v138, 8) + v139) ^ 0xE580B17D8CC5E551;
  v141 = v140 ^ __ROR8__(v139, 61);
  v142 = (__ROR8__(v140, 8) + v141) ^ 0xE1A1FD5BD155F97ALL;
  v143 = v142 ^ __ROR8__(v141, 61);
  v144 = __ROR8__(v142, 8);
  v145 = (v144 + v143 - ((2 * (v144 + v143)) & 0x6D35FBF0A592E060) + 0x369AFDF852C97030) ^ 0xECFAB6F4516BCFA9;
  v146 = v145 ^ __ROR8__(v143, 61);
  v147 = (__ROR8__(v145, 8) + v146) ^ 0xFA35E2CDCB3E31C7;
  v148 = v147 ^ __ROR8__(v146, 61);
  v149 = (__ROR8__(v147, 8) + v148) ^ 0xD2F00CE620E5D3AELL;
  v150 = v149 ^ __ROR8__(v148, 61);
  v151 = __ROR8__(v149, 8);
  LODWORD(STACK[0x5560]) = LODWORD(STACK[0x50C8]) ^ (((v151 + v150 - ((2 * (v151 + v150)) & 0x6FAC2C5E0FA49C02) - 0x4829E9D0F82DB1FFLL) ^ 0x43A51D1EA9A23B7ALL) >> STACK[0x50C0]);
  v152 = *(STACK[0x5058] + (LODWORD(STACK[0x4E18]) & (STACK[0x5048] + ((98433616 - STACK[0x5048]) | 0xFBB27047) + ((STACK[0x5048] + 35784106) | 0xFBB27047) + 2122959060)));
  v153 = (((v152 + STACK[0x5050]) | 0x17EF8D3C281F7ECFLL) - ((v152 + STACK[0x5050]) | 0xE81072C3D7E08130) - 0x17EF8D3C281F7ED0) ^ 0xAF678CE8C9D81D9CLL;
  v154 = v153 ^ __ROR8__(v152, 61);
  v155 = __ROR8__(v153, 8);
  v156 = (((v155 + v154) ^ 0xE796EFB3DDDB94ELL) - ((2 * ((v155 + v154) ^ 0xE796EFB3DDDB94ELL)) & 0xD8AF77B4FF08F74CLL) + 0x6C57BBDA7F847BA6) ^ 0x5AE6644BA55CAA9FLL;
  v157 = v156 ^ __ROR8__(v154, 61);
  v158 = __ROR8__(v156, 8);
  v159 = __ROR8__((((2 * (v158 + v157)) | 0xCFFF65AAA1F85A1ELL) - (v158 + v157) + 0x18004D2AAF03D2F1) ^ 0x27F03A8DC39C85ELL, 8);
  v160 = (((2 * (v158 + v157)) | 0xCFFF65AAA1F85A1ELL) - (v158 + v157) + 0x18004D2AAF03D2F1) ^ 0x27F03A8DC39C85ELL ^ __ROR8__(v157, 61);
  v161 = (v159 + v160) ^ 0xE1A1FD5BD155F97ALL;
  v162 = v161 ^ __ROR8__(v160, 61);
  v163 = __ROR8__(v161, 8);
  v164 = (v163 + v162 - ((2 * (v163 + v162)) & 0x365D9638A6078554) - 0x64D134E3ACFC3D56) ^ 0x414E801050A17D33;
  v165 = v164 ^ __ROR8__(v162, 61);
  v166 = (__ROR8__(v164, 8) + v165) ^ 0xFA35E2CDCB3E31C7;
  v167 = v166 ^ __ROR8__(v165, 61);
  v168 = (__ROR8__(v166, 8) + v167) ^ 0xD2F00CE620E5D3AELL;
  v169 = v168 ^ __ROR8__(v167, 61);
  v170 = __ROR8__(v168, 8);
  LODWORD(STACK[0x5600]) = LODWORD(STACK[0x5040]) ^ (((((2 * (v170 + v169)) | 0xBDCA74D2D834077ALL) - (v170 + v169) + 0x211AC59693E5FC43) ^ 0x2A963158C26A76C6) >> STACK[0x5038]);
  v171 = *(STACK[0x4F58] + (STACK[0x4F50] & ((STACK[0x4FD0] ^ 0xAB782D44) - 826012716 + (STACK[0x4B48] & 0x56F05A80))));
  v172 = (((2 * (v171 + STACK[0x4FC8])) & 0xC6DD34B1A9D07824) - (v171 + STACK[0x4FC8]) - 0x636E9A58D4E83C13) ^ 0x24196473CAD0A0BELL;
  v173 = v172 ^ __ROR8__(v171, 61);
  v174 = __ROR8__(v172, 8);
  v175 = __ROR8__((((2 * ((v174 + v173) ^ 0x468154E57BAB6E2BLL)) & 0x8B91BB940574C3A6) - ((v174 + v173) ^ 0x468154E57BAB6E2BLL) + 0x3A372235FD459E2CLL) ^ 0x447EC7BA61EB9870, 8);
  v176 = (((2 * ((v174 + v173) ^ 0x468154E57BAB6E2BLL)) & 0x8B91BB940574C3A6) - ((v174 + v173) ^ 0x468154E57BAB6E2BLL) + 0x3A372235FD459E2CLL) ^ 0x447EC7BA61EB9870 ^ __ROR8__(v173, 61);
  v177 = (v175 + v176) ^ 0xE580B17D8CC5E551;
  v178 = v177 ^ __ROR8__(v176, 61);
  v179 = __ROR8__(v177, 8);
  v180 = (((2 * (v179 + v178)) & 0x6AA896ACFC664D2ELL) - (v179 + v178) + 0x4AABB4A981CCD968) ^ 0xAB0A49F250992012;
  v181 = v180 ^ __ROR8__(v178, 61);
  v182 = (__ROR8__(v180, 8) + v181) ^ 0xDA604B0C03A2BF99;
  v183 = __ROR8__(v182, 8);
  v184 = v182 ^ __ROR8__(v181, 61);
  v185 = (((v183 + v184) | 0xC3F1F3B820569364) - ((v183 + v184) | 0x3C0E0C47DFA96C9BLL) + 0x3C0E0C47DFA96C9BLL) ^ 0x39C41175EB68A2A3;
  v186 = v185 ^ __ROR8__(v184, 61);
  v187 = (__ROR8__(v185, 8) + v186) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(STACK[0x5450]) = LODWORD(STACK[0x4F48]) ^ (((__ROR8__(v187, 8) + (v187 ^ __ROR8__(v186, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x4F10]);
  v188 = *(STACK[0x4B58] + (STACK[0x4A70] & (282402179 * (((2208342 * v16) & 0xC369E0) + ((974182699 * v16) ^ 0x61B4F7)) + 892969909)));
  v189 = (v188 + STACK[0x4EB8]) ^ 0xB88801D4E1C76353;
  v190 = v189 ^ __ROR8__(v188, 61);
  v191 = (__ROR8__(v189, 8) + v190) ^ 0x38C8B16AE7056877;
  v192 = v191 ^ __ROR8__(v190, 61);
  v193 = __ROR8__(v191, 8);
  v194 = (v193 + v192 - ((2 * (v193 + v192)) & 0x24CD7979FCBBBFACLL) + 0x1266BCBCFE5DDFD6) ^ 0xF7E60DC172983A87;
  v195 = v194 ^ __ROR8__(v192, 61);
  v196 = __ROR8__(v194, 8);
  v197 = (((v196 + v195) | 0x6A7AB6E37619A98CLL) - ((v196 + v195) | 0x9585491C89E65673) - 0x6A7AB6E37619A98DLL) ^ 0x8BDB4BB8A74C50F6;
  v198 = v197 ^ __ROR8__(v195, 61);
  v199 = __ROR8__(v197, 8);
  v200 = (((2 * (v199 + v198)) & 0xA19157A601298412) - (v199 + v198) + 0x2F37542CFF6B3DF6) ^ 0xF5571F20FCC9826FLL;
  v201 = v200 ^ __ROR8__(v198, 61);
  v202 = (__ROR8__(v200, 8) + v201) ^ 0xFA35E2CDCB3E31C7;
  v203 = v202 ^ __ROR8__(v201, 61);
  v204 = __ROR8__(v202, 8);
  v205 = (((2 * (v204 + v203)) & 0x82B6DD8CB853B2CLL) - (v204 + v203) - 0x415B6EC65C29D97) ^ 0x291A45F5BAD8B1C7;
  LODWORD(STACK[0x5120]) = LODWORD(STACK[0x4E80]) ^ (((__ROR8__(v205, 8) + (v205 ^ __ROR8__(v203, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x4EC8]);
  v206 = STACK[0x49C0];
  v207 = ((v206 & 0xB1171B80BD8AE359 ^ 0x3113030080026308) + (v206 ^ 0xC0C4FC823DF994D5) - ((v206 ^ 0xC0C4FC823DF994D5) & 0xB1171B80BD8AE359)) ^ 0x491B566867761FFBLL ^ STACK[0x49C8];
  v208 = (__ROR8__(((v206 & 0xB1171B80BD8AE359 ^ 0x3113030080026308) + (v206 ^ 0xC0C4FC823DF994D5) - ((v206 ^ 0xC0C4FC823DF994D5) & 0xB1171B80BD8AE359)) ^ 0x491B566867761FFBLL, 8) + v207) ^ 0xE580B17D8CC5E551;
  v209 = v208 ^ __ROR8__(v207, 61);
  v210 = __ROR8__(v208, 8);
  v211 = (((2 * (v210 + v209)) & 0xC0A18439BB8C5E6CLL) - (v210 + v209) + 0x1FAF3DE32239D0C9) ^ 0xFE0EC0B8F36C29B3;
  v212 = v211 ^ __ROR8__(v209, 61);
  v213 = (__ROR8__(v211, 8) + v212) ^ 0xDA604B0C03A2BF99;
  v214 = __ROR8__(v213, 8);
  v215 = v213 ^ __ROR8__(v212, 61);
  v216 = (((2 * (v214 + v215)) | 0xE15813624AFF327CLL) - (v214 + v215) + 0xF53F64EDA8066C2) ^ 0xA99EB7CEE41A8F9;
  v217 = v216 ^ __ROR8__(v215, 61);
  v218 = (__ROR8__(v216, 8) + v217) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(STACK[0x5358]) = LODWORD(STACK[0x4B60]) ^ (((__ROR8__(v218, 8) + (v218 ^ __ROR8__(v217, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x4DD0]);
  v219 = *(STACK[0x4B80] + (STACK[0x4B98] & ((STACK[0x4BA8] ^ 0xABBB4854) + 636974243 + (LODWORD(STACK[0x4B18]) | a14) + 3278)));
  v220 = (v219 + STACK[0x4B78]) ^ 0xB88801D4E1C76353;
  v221 = v220 ^ __ROR8__(v219, 61);
  v222 = (__ROR8__(v220, 8) + v221) ^ 0x38C8B16AE7056877;
  v223 = v222 ^ __ROR8__(v221, 61);
  v224 = (__ROR8__(v222, 8) + v223) ^ 0xE580B17D8CC5E551;
  v225 = v224 ^ __ROR8__(v223, 61);
  v226 = (__ROR8__(v224, 8) + v225) ^ 0xE1A1FD5BD155F97ALL;
  v227 = v226 ^ __ROR8__(v225, 61);
  v228 = (__ROR8__(v226, 8) + v227) ^ 0xDA604B0C03A2BF99;
  v229 = v228 ^ __ROR8__(v227, 61);
  v230 = (__ROR8__(v228, 8) + v229) ^ 0xFA35E2CDCB3E31C7;
  v231 = v230 ^ __ROR8__(v229, 61);
  v232 = __ROR8__(v230, 8);
  v233 = (((2 * (v232 + v231)) & 0x6352D2F8D7357C08) - (v232 + v231) - 0x31A9697C6B9ABE05) ^ 0x1CA69A65B4809255;
  LODWORD(STACK[0x5440]) = LODWORD(STACK[0x4B70]) ^ (((__ROR8__(v233, 8) + (v233 ^ __ROR8__(v231, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x4B68]);
  v234 = *(STACK[0x4B10] + ((((STACK[0x4B38] ^ 0x734FA477) + 116167843 + (STACK[0x4AF0] & 0xE69F48E0)) & STACK[0x4B08]) & 0xFFFFFFFFFFFFFFF8));
  v235 = (((2 * (v234 + STACK[0x4B20])) & 0x2B92B22A5D12E5CCLL) - (v234 + STACK[0x4B20]) - 0x15C959152E8972E7) ^ 0x52BEA73E30B1EE4ALL;
  v236 = v235 ^ __ROR8__(v234, 61);
  v237 = __ROR8__(v235, 8);
  v238 = (((2 * (v237 + v236)) & 0x73B5AA719872EEB0) - (v237 + v236) + 0x46252AC733C688A7) ^ 0x7EED9BADD4C3E0D0;
  v239 = v238 ^ __ROR8__(v236, 61);
  v240 = __ROR8__(v238, 8);
  v241 = __ROR8__((((v240 + v239) ^ 0x5FC2177481EB8042) - ((2 * ((v240 + v239) ^ 0x5FC2177481EB8042)) & 0xE4058E71C8FC17E4) - 0xDFD38C71B81F40ELL) ^ 0x48406131E9506EE1, 8);
  v242 = (((v240 + v239) ^ 0x5FC2177481EB8042) - ((2 * ((v240 + v239) ^ 0x5FC2177481EB8042)) & 0xE4058E71C8FC17E4) - 0xDFD38C71B81F40ELL) ^ 0x48406131E9506EE1 ^ __ROR8__(v239, 61);
  v243 = (((v241 + v242) | 0x1BDF9000DB7C432FLL) - ((v241 + v242) | 0xE4206FFF2483BCD0) - 0x1BDF9000DB7C4330) ^ 0xFA7E6D5B0A29BA55;
  v244 = v243 ^ __ROR8__(v242, 61);
  v245 = __ROR8__(v243, 8);
  v246 = (((2 * (v245 + v244)) | 0x225AE1953989283ELL) - (v245 + v244) + 0x6ED28F35633B6BE1) ^ 0x4B4D3BC69F662B86;
  v247 = v246 ^ __ROR8__(v244, 61);
  v248 = (__ROR8__(v246, 8) + v247) ^ 0xFA35E2CDCB3E31C7;
  v249 = v248 ^ __ROR8__(v247, 61);
  v250 = (__ROR8__(v248, 8) + v249) ^ 0xD2F00CE620E5D3AELL;
  v251 = ((__ROR8__(v250, 8) + (v250 ^ __ROR8__(v249, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x4B28];
  LODWORD(v251) = ((v251 ^ LODWORD(STACK[0x4B30]) ^ 0x58) - 87) ^ ((v251 ^ LODWORD(STACK[0x4B30]) ^ 0x5E) - 81) ^ ((v251 ^ LODWORD(STACK[0x4B30]) ^ 6) - 9);
  v252 = STACK[0x49B8];
  LODWORD(STACK[0x5230]) = v34 - 13;
  LODWORD(STACK[0x4F70]) = v51 - 10;
  LODWORD(STACK[0x5378]) = v133 - 78;
  LODWORD(STACK[0x5248]) = v251 + 20;
  v253 = *(STACK[0x57D8] + 8 * (v252 ^ 0x2ABAC16 ^ (10657 * (v252 > 0x8C23B9A8))));
  LODWORD(STACK[0x52E0]) = 101;
  return v253(LODWORD(STACK[0x52A0]));
}

void *sub_100491F00()
{
  LODWORD(STACK[0xC114]) = *(STACK[0x66B8] + 20);
  STACK[0x7ED8] -= 128;
  v1 = STACK[0x57D8];
  STACK[0xAE08] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 + v0 + 971 - 701)))(&STACK[0xA5FC]);
}

uint64_t sub_100491F84()
{
  LODWORD(STACK[0x8EC4]) = v1;
  LODWORD(STACK[0xC224]) = 424405882;
  return (*(STACK[0x57D8] + 8 * (v0 - 8744)))();
}

uint64_t sub_100492000()
{
  STACK[0x8160] = STACK[0xCF10];
  LODWORD(STACK[0xAB44]) = STACK[0x9A4C];
  v1 = STACK[0x80D8];
  STACK[0x9A08] = STACK[0x80D8];
  v2 = STACK[0xAA1C];
  LODWORD(STACK[0xBD6C]) = STACK[0xAA1C];
  v3 = STACK[0x7ED8];
  v4 = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0xB368] = v4;
  STACK[0x8AD8] = (v4 + 80);
  STACK[0x9930] = (v4 + 96);
  STACK[0xC4F8] = (v4 + 112);
  STACK[0x7ED8] = v3 + 144;
  STACK[0xC7C8] = 0;
  STACK[0xCD30] = 0x4AF9D7D5D68B917ALL;
  if (v1)
  {
    v5 = v2 == -769884012;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  return (*(STACK[0x57D8] + 8 * ((v6 * ((((((v0 - 1640592483) & 0x61C97EEE) + 1604524316) & 0xA05CEFE7) - 5008) ^ 0x585D)) ^ (v0 - 1640592483) & 0x61C97EEE)))();
}

uint64_t sub_100492170()
{
  LODWORD(STACK[0xB2F8]) = v1;
  LOBYTE(STACK[0xB09F]) = 0;
  return (*(STACK[0x57D8] + 8 * (v0 - 18038)))();
}

uint64_t sub_100492280()
{
  v0 = STACK[0x51B8] - 14408;
  STACK[0xBBF0] = STACK[0xB2C8];
  STACK[0xBBA0] = &STACK[0x7A38];
  STACK[0xA098] = &STACK[0x73BC];
  STACK[0x6F18] = &STACK[0xC480];
  STACK[0x7748] = &STACK[0x919C];
  STACK[0xA050] = &STACK[0x76C8];
  STACK[0x79D0] = &STACK[0xBDC4];
  LODWORD(STACK[0x9F54]) = 1644325721;
  return (*(STACK[0x57D8] + 8 * v0))(103679699);
}

uint64_t sub_100492348()
{
  LODWORD(STACK[0x1D4C8]) = (v0 - 1723127629) ^ (1917435887 * ((((v1 - 240) | 0xD48392F6) - ((v1 - 240) & 0xD48392F6)) ^ 0x3238C9F0));
  v2 = STACK[0x3E78];
  STACK[0x1D4C0] = STACK[0x3E78];
  v3 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * (v0 + 15320)))(v1 - 240);
  v4 = (*(v3 + 8 * (v0 + 15402)))(*STACK[0x3E50], 0, 0, STACK[0xBAF0], &STACK[0x9220]);
  v5 = (v4 ^ 0xFF79FFF3) - 134331234 + ((v4 << ((v0 - 2) ^ 0x57)) & 0xFEF3FFE6);
  v6 = 1964904101 * LODWORD(STACK[0x12B0]);
  STACK[0x1D4C8] = v2;
  LODWORD(STACK[0x1D4C0]) = (v0 + 1717154776) ^ v6;
  v7 = (*(v3 + 8 * (v0 + 15341)))(v1 - 240);
  return (*(v3 + 8 * ((56 * (v5 != ((v0 - 445539705) & 0x1A8E7D76 ^ 0xF7781CC7))) ^ v0)))(v7);
}

uint64_t sub_1004924F4()
{
  v0 = STACK[0x51B8] - 1379;
  v1 = LODWORD(STACK[0x5790]) == -143113071;
  LODWORD(STACK[0xE000]) = STACK[0x5790];
  return (*(STACK[0x57D8] + 8 * ((((v1 ^ (v0 - 112)) & 1) * ((v0 ^ 0x4912) - 7133)) ^ v0)))();
}

uint64_t sub_1004925B0()
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0x67D8];
  LODWORD(STACK[0x9094]) = -32197437;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100492630@<X0>(uint64_t a1@<X8>)
{
  v1 = STACK[0xCA08];
  v2 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * a1);
  return (*(v2 + 8 * (a1 + 3404)))(v1);
}

uint64_t sub_1004929D0@<X0>(unsigned int a1@<W8>)
{
  LODWORD(STACK[0xDB64]) = v2;
  LOBYTE(STACK[0xDB6B]) = 0;
  STACK[0x5DA0] = 0xD38CBDD3ACAFF84ALL;
  return (*(STACK[0x57D8] + 8 * (a1 ^ (v1 + 2352) ^ ((((a1 - 1675453817) | 0x4802) ^ 0x41EE) * (a1 <= 0x1B20E588)))))();
}

uint64_t sub_100492A98()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x57D8];
  STACK[0x8580] = *(STACK[0x57D8] + 8 * (STACK[0x51B8] - 20164));
  return (*(v1 + 8 * (v0 - 18047)))();
}

uint64_t sub_100492AD4()
{
  LODWORD(STACK[0xBDA4]) = v1;
  v4 = 1534937323 * ((((v3 - 240) | 0x23477628609FDA8DLL) - ((v3 - 240) & 0x23477628609FDA8DLL)) ^ 0xEE3FFEEAA67121CALL);
  STACK[0x1D4D8] = v2 + v4;
  STACK[0x1D4C0] = v4;
  LODWORD(STACK[0x1D4E0]) = ((v0 - 1332563504) | 8) + v4;
  LODWORD(STACK[0x1D4D4]) = (v0 - 1332563504) ^ v4;
  LODWORD(STACK[0x1D4C8]) = ((v0 - 1332563504) ^ 0x1051) - v4;
  LODWORD(STACK[0x1D4D0]) = v4;
  LODWORD(STACK[0x1D4CC]) = v4 + v0 + 1451493860;
  v5 = v0 + 9182;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * v5))(v3 - 240);
  return (*(v6 + 8 * SLODWORD(STACK[0x1D4E4])))(v7);
}

uint64_t sub_100492BA8()
{
  STACK[0x6608] = *(v1 - 0x30BDFED8F32E6541);
  STACK[0x6BB0] = v1;
  LODWORD(STACK[0xACB4]) = -1915525712;
  return (*(STACK[0x57D8] + 8 * (v0 ^ 0x127)))();
}

uint64_t sub_100492C00()
{
  STACK[0x9CB0] = 0;
  LODWORD(STACK[0x5BDC]) = -769884012;
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0x5BDC];
  LODWORD(STACK[0x9094]) = -32197418;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100492C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x51B8] ^ 0x3563;
  v6 = STACK[0x51B8] - 20527;
  LODWORD(STACK[0x7BA8]) = v4 + 16;
  v7 = STACK[0x57D8];
  STACK[0xCF80] = *(STACK[0x57D8] + 8 * v6);
  return (*(v7 + 8 * (v5 + v6 - 25783)))(a1, a2, a3, a4, 0xFA35E2CDCB3E31C7, 0xE580B17D8CC5E551, 2050767130, 385182804);
}

uint64_t sub_100492D84()
{
  v1 = STACK[0x51B8] ^ 0x5857;
  v2 = STACK[0x51B8] + v0;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9207)))(STACK[0x6168]);
  return (*(v3 + 8 * ((16021 * ((v1 + v2 - 332952055) > 0x149AA0BF)) ^ (v2 | 0xCE2))))(v4);
}

uint64_t sub_100492E50()
{
  v2 = STACK[0x916C];
  *v1 = STACK[0x71C4];
  v1[1] = v2;
  v3 = *STACK[0x51E8];
  v4 = *STACK[0x51F0];
  v1[119] = LODWORD(STACK[0x9758]) ^ (v0 - 1009309295) ^ *(v4 + (v3 & 0xD265232C)) & 0x7FFFFFFF;
  v1[118] = LODWORD(STACK[0x6874]) ^ 0xABC305D5 ^ *(v4 + (v3 & 0x92035F08)) & 0x7FFFFFFF;
  v1[117] = STACK[0x5924];
  v1[1] = v2;
  v5 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v5 + 8 * (v0 + 3298)))(v1 + 49);
}

uint64_t sub_100493034()
{
  v0 = (STACK[0x51B8] + 1577039403) | 0x20028024;
  v1 = STACK[0x51B8] - 22178;
  v2 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v1 - 2114095437 + v0 + 2646)))();
}

uint64_t sub_1004931B8()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 25649)))((v0 + 1310091242) & 0xB1E9D85E ^ *STACK[0xB670] ^ 0xD21CD8C2);
  *STACK[0xBB28] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (v0 - 6081)) ^ v0)))();
}

uint64_t sub_100493244()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  STACK[0x8D20] = 0;
  return (*(v1 + 8 * (v0 - 18163)))(v2);
}

uint64_t sub_10049338C()
{
  v1 = v0 - 17944;
  v2 = STACK[0x6D30];
  v3 = *(STACK[0x84F0] + 16);
  STACK[0x6C28] = STACK[0x9920];
  LODWORD(STACK[0x597C]) = v2;
  STACK[0xA448] = v3;
  LOBYTE(STACK[0xC5F3]) = 11;
  STACK[0xABB0] = &STACK[0x1D260];
  STACK[0x6CC0] = &STACK[0x9E48];
  LODWORD(STACK[0x73F8]) = 8;
  LODWORD(STACK[0x5D74]) = 359388985;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_100493440()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x241B)))();
  *v1 = 0;
  return (*(v2 + 8 * (v0 - 6170)))(v3);
}

uint64_t sub_1004934B0()
{
  v1 = 3 * (v0 ^ 0x5F03);
  v2 = v0 + 42052993;
  v3 = v0 + 9207;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * v3))(STACK[0x9C88]);
  STACK[0x9C88] = 0;
  return (*(v4 + 8 * ((v1 + 42090113) ^ v2 ^ (62446 * (v2 > 0x6FCB3F7E)))))(v5);
}

uint64_t sub_100493640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v10 = a7 ^ (152 - v8) ^ v9 ^ 0x65;
  LODWORD(STACK[0x5560]) = v10;
  return (*(STACK[0x57D8] + 8 * v7))(a1, a2, (v10 + 152));
}

uint64_t sub_1004936A8()
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0x6D04];
  LODWORD(STACK[0x9094]) = -32197389;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100493734@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W3>, uint64_t a4@<X4>, int a5@<W5>, int a6@<W6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v18 = *(STACK[0x57D8] + 8 * v8);
  v19 = v9 + v12 - 0x51874D81DFC9A1A7;
  v20 = *(v10 + (v11 & ((v19 & 0xFFFFFFF8) + a6) & 0xFFFFFFF8));
  v21 = __ROR8__(v19 & 0xFFFFFFFFFFFFFFF8, 8);
  v22 = (((2 * (v21 + v20)) | 0x701F67A8BEA54470) - (v21 + v20) - 0x380FB3D45F52A238) ^ 0x311CD708E9D196E3;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0x448D6F6CA711D855;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (((2 * (v26 + v25)) | 0x2ED55E4B9E3F465ELL) - (v26 + v25) + 0x689550DA30E05CD1) ^ 0x629851F6C7B58157;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (((2 * (v29 + v28)) & 0xCB6669E3F00A7DEALL) - (v29 + v28) + 0x1A4CCB0E07FAC10ALL) ^ 0x7D1FA5CEFC719597;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (v32 + v31 - ((2 * (v32 + v31)) & 0xA14F7C2022B89508) + 0x50A7BE10115C4A84) ^ 0xA820FB4E994CC088;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (v35 + v34 - ((2 * (v35 + v34)) & 0xEF07ED35FF66252) + 0x7783F69AFFB3129) ^ 0x230B740C0E1BB570;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0x40C9CFEA3CC5CBE1;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  *v19 = (((0x34633EA5972D52A6 - ((v40 + v39) | 0x34633EA5972D52A6) + ((v40 + v39) | 0xCB9CC15A68D2AD59)) ^ 0xA4FF9D748D057F9FLL) >> (8 * (v19 & 7u))) ^ HIBYTE(a8) ^ 0x31;
  v41 = *(*v15 + ((((v19 + 1) & 0xFFFFFFF8 & a5) + ((v19 + 1) & 0xFFFFFFF8 | (a5 + 2)) - 208475738) & *v16));
  v42 = __ROR8__((v19 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v43 = (v41 + v42 - ((2 * (v41 + v42)) & 0x25F79DDFC083BDE4) + 0x12FBCEEFE041DEF2) ^ 0x1BE8AA3356C2EA29;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = __ROR8__(v43, 8);
  v46 = (v45 + v44 - ((2 * (v45 + v44)) & 0x865B65C7B2ADC93ALL) - 0x3CD24D1C26A91B63) ^ 0x87A0DD8F7E473CC8;
  v47 = v46 ^ __ROR8__(v44, 61);
  v48 = __ROR8__(v46, 8);
  v49 = (((2 * (v48 + v47)) | 0xD7345BEB579A24) - (v48 + v47) + 0x7F9465D20A5432EELL) ^ 0x759964FEFD01EF6ALL;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = __ROR8__(v49, 8);
  v52 = (((2 * (v51 + v50)) | 0xBA0208206CB52DB2) - (v51 + v50) + 0x22FEFBEFC9A56927) ^ 0xBA526AD0CDD1C244;
  v53 = v52 ^ __ROR8__(v50, 61);
  v54 = __ROR8__(v52, 8);
  v55 = (((2 * (v54 + v53)) & 0xF9184F960F7E0D96) - (v54 + v53) + 0x373D834F840F934) ^ 0xFBF49D6A70507338;
  v56 = v55 ^ __ROR8__(v53, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ 0x24734B65A1E08459;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = __ROR8__(v57, 8);
  v60 = (v59 + v58 - ((2 * (v59 + v58)) & 0xB69C38DED78B14F6) + 0x5B4E1C6F6BC58A7BLL) ^ 0x1B87D3855700419ALL;
  *(v19 + 1) = (((__ROR8__(v60, 8) + (v60 ^ __ROR8__(v58, 61))) ^ 0x6F635C2EE5D7D2C6) >> (8 * ((v19 + 1) & 7))) ^ BYTE6(a8) ^ 0x1B;
  v61 = *(*v15 + ((*v16 & (785284683 * (((-479077533 * ((v19 + 2) & 0xFFFFFFF8)) & a3) + ((-479077533 * ((v19 + 2) & 0xFFFFFFF8)) | (a3 + 5))) + 380709090)) & 0xFFFFFFFFFFFFFFF8));
  v62 = __ROR8__((v19 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v63 = (0x855C7E60A37B4D78 - ((v61 + v62) | 0x855C7E60A37B4D78) + ((v61 + v62) | 0x7AA3819F5C84B287)) ^ 0x73B0E543EA07865CLL;
  v64 = v63 ^ __ROR8__(v61, 61);
  v65 = __ROR8__(v63, 8);
  v66 = (v65 + v64 - ((2 * (v65 + v64)) & 0xCA33D13AFA8D1818) + 0x6519E89D7D468C0CLL) ^ 0x219487F1DA575459;
  v67 = v66 ^ __ROR8__(v64, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ a4;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = (__ROR8__(v68, 8) + v69) ^ 0x67536EC0FB8B549DLL;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = __ROR8__(v70, 8);
  v73 = (0x323E9161DBE8D481 - ((v72 + v71) | 0x323E9161DBE8D481) + ((v72 + v71) | 0xCDC16E9E24172B7ELL)) ^ 0x35462BC0AC07A172;
  v74 = v73 ^ __ROR8__(v71, 61);
  v75 = __ROR8__(v73, 8);
  v76 = (((2 * (v75 + v74)) & 0x1DA9787E00F8FE34) - (v75 + v74) - 0xED4BC3F007C7F1BLL) ^ 0xD55808A55E6304BCLL;
  v77 = v76 ^ __ROR8__(v74, 61);
  v78 = __ROR8__(v76, 8);
  v79 = (v13 - ((v78 + v77) | v13) + ((v78 + v77) | 0xEA9B1589F7F76BCFLL)) ^ 0xAA52DA63CB32A02ELL;
  *(v19 + 2) = (((__ROR8__(v79, 8) + (v79 ^ __ROR8__(v77, 61))) ^ 0x6F635C2EE5D7D2C6) >> (8 * ((v19 + 2) & 7))) ^ BYTE5(a8) ^ 0xC2;
  v80 = *(*v15 + (((((v19 + 3) & 0xFFFFFFF8 ^ 0x4113C732) - 1647646840 + ((2 * ((v19 + 3) & 0xFFFFFFF8)) & 0x82278E60) + 2863) & *v16) & 0xFFFFFFFFFFFFFFF8));
  v81 = __ROR8__((v19 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v82 = (((2 * (v80 + v81)) | 0xB6B8865AD3DD9360) - (v80 + v81) - 0x5B5C432D69EEC9B0) ^ 0x524F27F1DF6DFD6BLL ^ __ROR8__(v80, 61);
  v83 = (__ROR8__((((2 * (v80 + v81)) | 0xB6B8865AD3DD9360) - (v80 + v81) - 0x5B5C432D69EEC9B0) ^ 0x524F27F1DF6DFD6BLL, 8) + v82) ^ 0x448D6F6CA711D855;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = (__ROR8__(v83, 8) + v84) ^ a4;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = __ROR8__(v85, 8);
  v88 = __ROR8__((((2 * (v87 + v86)) & 0xFD7EEB89E0BC8ABCLL) - (v87 + v86) - 0x7EBF75C4F05E455FLL) ^ 0xE613E4FBF42AEE3CLL, 8);
  v89 = (((2 * (v87 + v86)) & 0xFD7EEB89E0BC8ABCLL) - (v87 + v86) - 0x7EBF75C4F05E455FLL) ^ 0xE613E4FBF42AEE3CLL ^ __ROR8__(v86, 61);
  v90 = (v88 + v89) ^ v17;
  v91 = v90 ^ __ROR8__(v89, 61);
  v92 = __ROR8__(v90, 8);
  v93 = (((2 * (v92 + v91)) & 0x4D3E5CC28866251ELL) - (v92 + v91) - 0x269F2E6144331290) ^ 0xFD139AFB1A2C6929;
  v94 = v93 ^ __ROR8__(v91, 61);
  v95 = __ROR8__(v93, 8);
  v96 = (a1 - ((v95 + v94) ^ 0x9A93E4742E54FD87 | a1) + ((v95 + v94) ^ 0x9A93E4742E54FD87 | 0x6177FB00B07B23BLL)) ^ 0xDC4D542E1996845DLL;
  *(v19 + 3) = (((__ROR8__(v96, 8) + (v96 ^ __ROR8__(v94, 61))) ^ 0x6F635C2EE5D7D2C6) >> (8 * ((v19 + 3) & 7))) ^ BYTE4(a8) ^ 0xC9;
  v97 = *(*v15 + (((((v19 + 4) & 0xFFFFFFF8 ^ 0x6B6B2FD2) + 1246357948 + ((2 * ((v19 + 4) & 0xFFFFFFF8)) | 0x2929A05B)) & *v16) & 0xFFFFFFFFFFFFFFF8));
  v98 = (v97 + __ROR8__((v19 + 4) & 0xFFFFFFFFFFFFFFF8, 8)) ^ v14;
  v99 = v98 ^ __ROR8__(v97, 61);
  v100 = __ROR8__(v98, 8);
  v101 = (v100 + v99 - ((2 * (v100 + v99)) & 0xF0E350F862930F60) - 0x78E5783CEB67850) ^ 0xBCFCC71096585FE5;
  v102 = v101 ^ __ROR8__(v99, 61);
  v103 = __ROR8__(v101, 8);
  v104 = (0xB4FC27C5647C6E32 - ((v103 + v102) | 0xB4FC27C5647C6E32) + ((v103 + v102) | 0x4B03D83A9B8391CDLL)) ^ 0xBEF126E99329B3B5;
  v105 = v104 ^ __ROR8__(v102, 61);
  v106 = (__ROR8__(v104, 8) + v105) ^ 0x67536EC0FB8B549DLL;
  v107 = v106 ^ __ROR8__(v105, 61);
  v108 = (__ROR8__(v106, 8) + v107) ^ v17;
  v109 = __ROR8__(v108, 8);
  v110 = v108 ^ __ROR8__(v107, 61);
  v111 = (v109 + v110) ^ 0x24734B65A1E08459;
  v112 = v111 ^ __ROR8__(v110, 61);
  v113 = (__ROR8__(v111, 8) + v112) ^ 0x40C9CFEA3CC5CBE1;
  v114 = v113 ^ __ROR8__(v112, 61);
  v115 = __ROR8__(v113, 8);
  *(v19 + 4) = (((((2 * (v115 + v114)) | 0xFD4282A0DE9A8A98) - (v115 + v114) - 0x7EA141506F4D454CLL) ^ 0x11C21D7E8A9A978ALL) >> (8 * ((v19 + 4) & 7))) ^ BYTE3(a8) ^ 0xE6;
  v116 = *(*v15 + (*v16 & (((v19 + 5) & 0xFFFFFFF8 & a2) + ((v19 + 5) & 0xFFFFFFF8 | (a2 + 6)) - 749356422)));
  v117 = (v116 + __ROR8__((v19 + 5) & 0xFFFFFFFFFFFFFFF8, 8)) ^ v14;
  v118 = v117 ^ __ROR8__(v116, 61);
  v119 = (__ROR8__(v117, 8) + v118) ^ 0x448D6F6CA711D855;
  v120 = v119 ^ __ROR8__(v118, 61);
  v121 = (__ROR8__(v119, 8) + v120) ^ a4;
  v122 = v121 ^ __ROR8__(v120, 61);
  v123 = __ROR8__(v121, 8);
  v124 = (((2 * (v123 + v122)) & 0x8AED1D42B0819DC0) - (v123 + v122) + 0x3A89715EA7BF311FLL) ^ 0x5DDA1F9E5C346582;
  v125 = v124 ^ __ROR8__(v122, 61);
  v126 = (__ROR8__(v124, 8) + v125) ^ v17;
  v127 = v126 ^ __ROR8__(v125, 61);
  v128 = (__ROR8__(v126, 8) + v127) ^ 0x24734B65A1E08459;
  v129 = v128 ^ __ROR8__(v127, 61);
  v130 = (__ROR8__(v128, 8) + v129) ^ 0x40C9CFEA3CC5CBE1;
  *(v19 + 5) = (((__ROR8__(v130, 8) + (v130 ^ __ROR8__(v129, 61))) ^ 0x6F635C2EE5D7D2C6uLL) >> (8 * ((v19 + 5) & 7))) ^ BYTE2(a8) ^ 0x26;
  v131 = *(*v15 + (((((v19 + 6) & 0xFFFFFFF8) + a6) & *v16) & 0xFFFFFFFFFFFFFFF8));
  v132 = (v131 + __ROR8__((v19 + 6) & 0xFFFFFFFFFFFFFFF8, 8)) ^ v14;
  v133 = v132 ^ __ROR8__(v131, 61);
  v134 = (__ROR8__(v132, 8) + v133) ^ 0x448D6F6CA711D855;
  v135 = __ROR8__(v134, 8);
  v136 = v134 ^ __ROR8__(v133, 61);
  v137 = (v135 + v136) ^ a4;
  v138 = v137 ^ __ROR8__(v136, 61);
  v139 = (__ROR8__(v137, 8) + v138) ^ 0x67536EC0FB8B549DLL;
  v140 = v139 ^ __ROR8__(v138, 61);
  v141 = (__ROR8__(v139, 8) + v140) ^ v17;
  v142 = v141 ^ __ROR8__(v140, 61);
  v143 = __ROR8__(v141, 8);
  v144 = (v143 + v142 - ((2 * (v143 + v142)) & 0x74D9A1C8154C670) + 0x3A6CD0E40AA6338) ^ 0x27D5866BE14AE761;
  v145 = v144 ^ __ROR8__(v142, 61);
  v146 = (__ROR8__(v144, 8) + v145) ^ 0x40C9CFEA3CC5CBE1;
  *(v19 + 6) = (((__ROR8__(v146, 8) + (v146 ^ __ROR8__(v145, 61))) ^ 0x6F635C2EE5D7D2C6uLL) >> (8 * ((v19 + 6) & 7))) ^ BYTE1(a8) ^ 0x3C;
  v147 = *(*v15 + (((((v19 + 7) & 0xFFFFFFF8) + a6) & *v16) & 0xFFFFFFFFFFFFFFF8));
  v148 = __ROR8__((v19 + 7) & 0xFFFFFFFFFFFFFFF8, 8);
  v149 = (0x9ADC18F59C985ED8 - ((v147 + v148) | 0x9ADC18F59C985ED8) + ((v147 + v148) | 0x6523E70A6367A127)) ^ 0x6C3083D6D5E495FCLL;
  v150 = v149 ^ __ROR8__(v147, 61);
  v151 = (__ROR8__(v149, 8) + v150) ^ 0x448D6F6CA711D855;
  v152 = v151 ^ __ROR8__(v150, 61);
  v153 = (__ROR8__(v151, 8) + v152) ^ a4;
  v154 = __ROR8__(v153, 8);
  v155 = v153 ^ __ROR8__(v152, 61);
  v156 = (v154 + v155) ^ 0x67536EC0FB8B549DLL;
  v157 = v156 ^ __ROR8__(v155, 61);
  v158 = (__ROR8__(v156, 8) + v157) ^ v17;
  v159 = v158 ^ __ROR8__(v157, 61);
  v160 = (__ROR8__(v158, 8) + v159) ^ 0x24734B65A1E08459;
  v161 = v160 ^ __ROR8__(v159, 61);
  v162 = __ROR8__(v160, 8);
  v163 = (0xC9BE49A9E34079E1 - ((v162 + v161) | 0xC9BE49A9E34079E1) + ((v162 + v161) | 0x3641B6561CBF861ELL)) ^ 0x768879BC207A4DFFLL;
  v164 = __ROR8__(v163, 8);
  v165 = __ROR8__(v161, 61);
  *(v19 + 7) = (((a7 - ((v164 + (v163 ^ v165)) | a7) + ((v164 + (v163 ^ v165)) | 0xF978A3AD4435B37BLL)) ^ 0x961BFF83A1E261BDLL) >> (8 * ((v19 + 7) & 7))) ^ a8 ^ 0x75;
  return v18();
}

uint64_t sub_100494550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = v3 + a3 - 0x3E7FF8B1344618B1;
  v10.i64[0] = v9;
  v10.i64[1] = v9 + 1;
  *&STACK[0x57C0] = v10;
  v11.i64[0] = v3 + a2;
  v11.i64[1] = v3 + a3 + ((v5 - 651670098) & 0x26D7DC5F ^ 0xC180074ECBB9BF18);
  v12.i64[0] = v9 + 4;
  v12.i64[1] = v9 + 5;
  v13.i64[0] = v9 + 2;
  v13.i64[1] = v9 + 3;
  v14.i64[0] = v9 + 8;
  v14.i64[1] = v9 + 9;
  v15.i64[0] = v9 + 6;
  v15.i64[1] = v9 + 7;
  v16.i64[0] = v9 + 12;
  v16.i64[1] = v9 + 13;
  v17.i64[0] = v9 + 10;
  v17.i64[1] = v9 + 11;
  v18 = vandq_s8(v17, *&STACK[0x4D70]);
  v19 = vandq_s8(v16, *&STACK[0x4D70]);
  v20 = vandq_s8(v15, *&STACK[0x4D70]);
  v21 = vandq_s8(v14, *&STACK[0x4D70]);
  v22 = vandq_s8(v13, *&STACK[0x4D70]);
  v23 = vandq_s8(v12, *&STACK[0x4D70]);
  v24 = vandq_s8(v11, *&STACK[0x4D70]);
  v25 = vandq_s8(v10, *&STACK[0x4D70]);
  v26 = vsraq_n_u64(vshlq_n_s64(v25, 0x38uLL), v25, 8uLL);
  v27 = vsraq_n_u64(vshlq_n_s64(v24, 0x38uLL), v24, 8uLL);
  v28 = vsraq_n_u64(vshlq_n_s64(v23, 0x38uLL), v23, 8uLL);
  v29 = vsraq_n_u64(vshlq_n_s64(v22, 0x38uLL), v22, 8uLL);
  v30 = vsraq_n_u64(vshlq_n_s64(v21, 0x38uLL), v21, 8uLL);
  v31 = vsraq_n_u64(vshlq_n_s64(v20, 0x38uLL), v20, 8uLL);
  v32 = vsraq_n_u64(vshlq_n_s64(v19, 0x38uLL), v19, 8uLL);
  v33 = vsraq_n_u64(vshlq_n_s64(v18, 0x38uLL), v18, 8uLL);
  v34 = vdupq_n_s64(0x31BF74D3543665CBuLL);
  v35 = vaddq_s64(v33, v34);
  v36 = vaddq_s64(v32, v34);
  v37 = vaddq_s64(v31, v34);
  v38 = vaddq_s64(v30, v34);
  v39 = vaddq_s64(v29, v34);
  v40 = vaddq_s64(v28, v34);
  v41 = vaddq_s64(v27, v34);
  v42 = vaddq_s64(v26, v34);
  v43 = vdupq_n_s64(0x90B241F9F0AB723FLL);
  v44 = veorq_s8(v42, v43);
  v45 = veorq_s8(v41, v43);
  v46 = veorq_s8(v40, v43);
  v47 = veorq_s8(v39, v43);
  v48 = veorq_s8(v38, v43);
  v49 = veorq_s8(v37, v43);
  v50 = veorq_s8(v36, v43);
  v51 = veorq_s8(v35, v43);
  v52 = vdupq_n_s64(0x1D49E76351185C66uLL);
  v53 = veorq_s8(v35, v52);
  v54 = veorq_s8(v36, v52);
  v55 = veorq_s8(v37, v52);
  v56 = veorq_s8(v38, v52);
  v57 = veorq_s8(v39, v52);
  v58 = veorq_s8(v40, v52);
  v59 = veorq_s8(v41, v52);
  v60 = veorq_s8(v42, v52);
  v61 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), v60);
  v62 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), v59);
  v63 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v58);
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v57);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v56);
  v66 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v55);
  v67 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v54);
  v68 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v53);
  v69 = vdupq_n_s64(0xEE85EC07E7726862);
  v70 = vsubq_s64(vandq_s8(vaddq_s64(v68, v68), v69), v68);
  v71 = vsubq_s64(vandq_s8(vaddq_s64(v67, v67), v69), v67);
  v72 = vsubq_s64(vandq_s8(vaddq_s64(v66, v66), v69), v66);
  v73 = vsubq_s64(vandq_s8(vaddq_s64(v65, v65), v69), v65);
  v74 = vdupq_n_s64(0x88BD09FC0C46CBCELL);
  v75 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v61, v61), v69), v61), v74);
  v76 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v62, v62), v69), v62), v74);
  v77 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v63, v63), v69), v63), v74);
  v78 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v64, v64), v69), v64), v74);
  v79 = vaddq_s64(v73, v74);
  v80 = vaddq_s64(v72, v74);
  v81 = vaddq_s64(v71, v74);
  v82 = vaddq_s64(v70, v74);
  v83 = vdupq_n_s64(0x639829CB5A5AFF21uLL);
  v84 = veorq_s8(v82, v83);
  v85 = veorq_s8(v81, v83);
  v86 = veorq_s8(v80, v83);
  v87 = veorq_s8(v79, v83);
  v88 = veorq_s8(v78, v83);
  v89 = veorq_s8(v77, v83);
  v90 = veorq_s8(v76, v83);
  v91 = veorq_s8(v75, v83);
  v92 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL));
  v93 = veorq_s8(v90, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v94 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v95 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v96 = veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL));
  v97 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL));
  v98 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL));
  v99 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL));
  v100 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v101 = vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL);
  v102 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v95);
  v104 = veorq_s8(vaddq_s64(v100, v92), *&STACK[0xEB0]);
  v105 = veorq_s8(vaddq_s64(v101, v93), *&STACK[0xEB0]);
  v106 = veorq_s8(vaddq_s64(v102, v94), *&STACK[0xEB0]);
  v107 = veorq_s8(v103, *&STACK[0xEB0]);
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v96), *&STACK[0xEB0]);
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v97), *&STACK[0xEB0]);
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v98), *&STACK[0xEB0]);
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v99), *&STACK[0xEB0]);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v113 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v114 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v115 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v116 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v117 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v118 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v119 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v120 = vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL);
  v121 = vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL);
  v122 = vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL);
  v123 = vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL);
  v124 = vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL);
  v125 = vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL);
  v126 = vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL);
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v119);
  v128 = vaddq_s64(v126, v118);
  v129 = vaddq_s64(v125, v117);
  v130 = vaddq_s64(v124, v116);
  v131 = vaddq_s64(v123, v115);
  v132 = vaddq_s64(v122, v114);
  v133 = vaddq_s64(v121, v113);
  v134 = vaddq_s64(v120, v112);
  v135 = vdupq_n_s64(0xEEF18F2D76CC4B12);
  v136 = vdupq_n_s64(v7);
  v137 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v127, v127), v135), v127), v136);
  v138 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v128, v128), v135), v128), v136);
  v139 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v129, v129), v135), v129), v136);
  v140 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v130, v130), v135), v130), v136);
  v141 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v131, v131), v135), v131), v136);
  v142 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v132, v132), v135), v132), v136);
  v143 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v133, v133), v135), v133), v136);
  v144 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v134, v134), v135), v134), v136);
  v145 = vdupq_n_s64(v8);
  v146 = veorq_s8(v144, v145);
  v147 = veorq_s8(v143, v145);
  v148 = veorq_s8(v142, v145);
  v149 = veorq_s8(v141, v145);
  v150 = veorq_s8(v140, v145);
  v151 = veorq_s8(v139, v145);
  v152 = veorq_s8(v138, v145);
  v153 = veorq_s8(v137, v145);
  v154 = vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL);
  v155 = vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL);
  v156 = vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL);
  v157 = vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL);
  v158 = vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL);
  v159 = vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL);
  v160 = vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL);
  v161 = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v162 = veorq_s8(v152, v160);
  v163 = veorq_s8(v151, v159);
  v164 = veorq_s8(v150, v158);
  v165 = veorq_s8(v149, v157);
  v166 = veorq_s8(v148, v156);
  v167 = veorq_s8(v147, v155);
  v168 = veorq_s8(v146, v154);
  v169 = vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL);
  v170 = vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL);
  v171 = vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL);
  v172 = vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL);
  v173 = vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL);
  v174 = vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL);
  v175 = vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL);
  v176 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v168);
  v177 = vaddq_s64(v169, v161);
  v178 = vdupq_n_s64(0x67D37711E3C8D077uLL);
  v179 = veorq_s8(v177, v178);
  v180 = veorq_s8(vaddq_s64(v170, v162), v178);
  v181 = veorq_s8(vaddq_s64(v171, v163), v178);
  v182 = veorq_s8(vaddq_s64(v172, v164), v178);
  v183 = veorq_s8(vaddq_s64(v173, v165), v178);
  v184 = veorq_s8(vaddq_s64(v174, v166), v178);
  v185 = veorq_s8(vaddq_s64(v175, v167), v178);
  v186 = veorq_s8(v176, v178);
  v187 = vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL);
  v188 = vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL);
  v189 = vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL);
  v190 = vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL);
  v191 = vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL);
  v192 = vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL);
  v193 = vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL);
  v194 = veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v195 = veorq_s8(v185, v193);
  v196 = veorq_s8(v184, v192);
  v197 = veorq_s8(v183, v191);
  v198 = veorq_s8(v182, v190);
  v199 = veorq_s8(v181, v189);
  v200 = veorq_s8(v180, v188);
  v201 = veorq_s8(v179, v187);
  v202 = vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL);
  v203 = vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL);
  v204 = vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL);
  v205 = vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL);
  v206 = vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL);
  v207 = vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL);
  v208 = vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL);
  v209 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v201);
  v210 = vaddq_s64(v202, v194);
  v211 = vdupq_n_s64(0x59A39C28B755E357uLL);
  v212 = veorq_s8(v210, v211);
  v213 = veorq_s8(vaddq_s64(v203, v195), v211);
  v214 = veorq_s8(vaddq_s64(v204, v196), v211);
  v215 = veorq_s8(vaddq_s64(v205, v197), v211);
  v216 = veorq_s8(vaddq_s64(v206, v198), v211);
  v217 = veorq_s8(vaddq_s64(v207, v199), v211);
  v218 = veorq_s8(vaddq_s64(v208, v200), v211);
  v219 = veorq_s8(v209, v211);
  v220 = vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL);
  v221 = vsraq_n_u64(vshlq_n_s64(v195, 3uLL), v195, 0x3DuLL);
  v222 = vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL);
  v223 = vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL);
  v224 = veorq_s8(v219, vsraq_n_u64(vshlq_n_s64(v201, 3uLL), v201, 0x3DuLL));
  v225 = veorq_s8(v218, vsraq_n_u64(vshlq_n_s64(v200, 3uLL), v200, 0x3DuLL));
  v226 = veorq_s8(v217, vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL));
  v227 = veorq_s8(v216, vsraq_n_u64(vshlq_n_s64(v198, 3uLL), v198, 0x3DuLL));
  v228 = veorq_s8(v215, v223);
  v229 = veorq_s8(v214, v222);
  v230 = veorq_s8(v213, v221);
  v231 = veorq_s8(v212, v220);
  v232 = vsraq_n_u64(vshlq_n_s64(v219, 0x38uLL), v219, 8uLL);
  v233 = vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL);
  v234 = vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL);
  v235 = vsraq_n_u64(vshlq_n_s64(v216, 0x38uLL), v216, 8uLL);
  v236 = vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL);
  v237 = vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL);
  v238 = vsraq_n_u64(vshlq_n_s64(v213, 0x38uLL), v213, 8uLL);
  v239 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL), v231);
  v240 = vaddq_s64(v238, v230);
  v241 = vaddq_s64(v237, v229);
  v242 = vaddq_s64(v236, v228);
  v243 = vaddq_s64(v235, v227);
  v244 = vaddq_s64(v234, v226);
  v245 = vaddq_s64(v233, v225);
  v246 = vaddq_s64(v232, v224);
  v247 = vdupq_n_s64(0xE37E50AA4CE9FE1ALL);
  v248 = vdupq_n_s64(0x71BF28552674FF0DuLL);
  v249 = vaddq_s64(vsubq_s64(v239, vandq_s8(vaddq_s64(v239, v239), v247)), v248);
  v250 = vaddq_s64(vsubq_s64(v240, vandq_s8(vaddq_s64(v240, v240), v247)), v248);
  v251 = vaddq_s64(vsubq_s64(v241, vandq_s8(vaddq_s64(v241, v241), v247)), v248);
  v252 = vaddq_s64(vsubq_s64(v242, vandq_s8(vaddq_s64(v242, v242), v247)), v248);
  v253 = vaddq_s64(vsubq_s64(v243, vandq_s8(vaddq_s64(v243, v243), v247)), v248);
  v254 = vaddq_s64(vsubq_s64(v244, vandq_s8(vaddq_s64(v244, v244), v247)), v248);
  v255 = vaddq_s64(vsubq_s64(v245, vandq_s8(vaddq_s64(v245, v245), v247)), v248);
  v256 = vaddq_s64(vsubq_s64(v246, vandq_s8(vaddq_s64(v246, v246), v247)), v248);
  v257 = vdupq_n_s64(0xFAA91D5DC2251305);
  v258 = veorq_s8(v256, v257);
  v259 = veorq_s8(v255, v257);
  v260 = veorq_s8(v254, v257);
  v261 = veorq_s8(v253, v257);
  v262 = veorq_s8(v252, v257);
  v263 = veorq_s8(v251, v257);
  v264 = veorq_s8(v250, v257);
  v265 = veorq_s8(v249, v257);
  v266 = veorq_s8(v265, vsraq_n_u64(vshlq_n_s64(v231, 3uLL), v231, 0x3DuLL));
  v267 = vsraq_n_u64(vshlq_n_s64(v265, 0x38uLL), v265, 8uLL);
  v268 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v264, 0x38uLL), v264, 8uLL), veorq_s8(v264, vsraq_n_u64(vshlq_n_s64(v230, 3uLL), v230, 0x3DuLL)));
  v269 = vdupq_n_s64(v6);
  v270 = veorq_s8(vaddq_s64(v267, v266), v269);
  v271 = veorq_s8(v268, v269);
  v272 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v263, 0x38uLL), v263, 8uLL), veorq_s8(v263, vsraq_n_u64(vshlq_n_s64(v229, 3uLL), v229, 0x3DuLL))), v269);
  v273 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v262, 0x38uLL), v262, 8uLL), veorq_s8(v262, vsraq_n_u64(vshlq_n_s64(v228, 3uLL), v228, 0x3DuLL))), v269);
  v274 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v261, 0x38uLL), v261, 8uLL), veorq_s8(v261, vsraq_n_u64(vshlq_n_s64(v227, 3uLL), v227, 0x3DuLL))), v269);
  v275 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v260, 0x38uLL), v260, 8uLL), veorq_s8(v260, vsraq_n_u64(vshlq_n_s64(v226, 3uLL), v226, 0x3DuLL))), v269);
  v276 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v259, 0x38uLL), v259, 8uLL), veorq_s8(v259, vsraq_n_u64(vshlq_n_s64(v225, 3uLL), v225, 0x3DuLL))), v269);
  v277 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v258, 0x38uLL), v258, 8uLL), veorq_s8(v258, vsraq_n_u64(vshlq_n_s64(v224, 3uLL), v224, 0x3DuLL))), v269);
  v278 = vdupq_n_s64(0x38uLL);
  *v4 = veorq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vshlq_u64(v276, vnegq_s64(vandq_s8(vshlq_n_s64(v11, 3uLL), v278))), vshlq_u64(v277, vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x57C0], 3uLL), v278)))), vuzp1q_s32(vshlq_u64(v274, vnegq_s64(vandq_s8(vshlq_n_s64(v13, 3uLL), v278))), vshlq_u64(v275, vnegq_s64(vandq_s8(vshlq_n_s64(v12, 3uLL), v278))))), vuzp1q_s16(vuzp1q_s32(vshlq_u64(v272, vnegq_s64(vandq_s8(vshlq_n_s64(v15, 3uLL), v278))), vshlq_u64(v273, vnegq_s64(vandq_s8(vshlq_n_s64(v14, 3uLL), v278)))), vuzp1q_s32(vshlq_u64(v270, vnegq_s64(vandq_s8(vshlq_n_s64(v17, 3uLL), v278))), vshlq_u64(v271, vnegq_s64(vandq_s8(vshlq_n_s64(v16, 3uLL), v278)))))), *(v3 + a2));
  return (*(STACK[0x57D8] + 8 * v5))();
}