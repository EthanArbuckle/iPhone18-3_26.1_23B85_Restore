uint64_t sub_1001FCF80()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] + 253849077;
  v3 = 979 * (((*(v0 + 23) ^ 0x52C9) - 21193) ^ ((*(v0 + 23) ^ 0x38A3) - 14499) ^ ((*(v0 + 23) ^ 0x6A35) - 27189)) + 5984;
  v4 = v3 & 0x69B5 ^ 0xF64;
  v5 = (v3 ^ (2 * ((v3 ^ 0x53EC) & (2 * ((v3 ^ 0x53EC) & (2 * ((v3 ^ 0x53EC) & (2 * ((v3 ^ 0x53EC) & (2 * ((v3 ^ 0x53EC) & (2 * ((v3 ^ 0x53EC) & (2 * ((v3 ^ 0x53EC) & (2 * ((v3 ^ 0x53EC) & (2 * ((v3 ^ 0x53EC) & (2 * ((v3 ^ 0x53EC) & (2 * ((v3 ^ 0x53EC) & (2 * ((v3 ^ 0x53EC) & (2 * ((v3 ^ 0x53EC) & (2 * (v3 & (2 * v3) & 0x27DA ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4))) ^ 0x867B;
  v6 = (((67 * (((v5 ^ 0xE1177BC4) + 518554684) ^ ((v5 ^ 0x2CAB7967) - 749435239) ^ ((v5 ^ 0xCDBCED6D) + 4395667)) + 6800106) >> 16) - 57);
  v7 = 1022166737 * ((((2 * &STACK[0x10ED8]) | 0x306ADF6721C7E3FALL) - &STACK[0x10ED8] + 0x67CA904C6F1C0E03) ^ 0xE6BF1DCE2AF3106FLL);
  STACK[0x10EF0] = v7;
  LODWORD(STACK[0x10EFC]) = (v2 ^ 0x12C1) + v7;
  LODWORD(STACK[0x10EE8]) = v7 + v2 + 20;
  LODWORD(STACK[0x10EEC]) = v2 - v7;
  LODWORD(STACK[0x10EE4]) = v7 + v1 + 782565441;
  LODWORD(STACK[0x10EE0]) = -1022166737 * ((((2 * &STACK[0x10ED8]) | 0x306ADF6721C7E3FALL) - &STACK[0x10ED8] + 1864109571) ^ 0x2AF3106F);
  if (v6 <= 0xEF)
  {
    v8 = 1022166737 * ((((2 * &STACK[0x10ED8]) | 0x306ADF6721C7E3FALL) - &STACK[0x10ED8] + 0x67CA904C6F1C0E03) ^ 0xE6BF1DCE2AF3106FLL);
  }

  else
  {
    v8 = v7 + 1;
  }

  STACK[0x10ED8] = v8;
  v9 = STACK[0xF18];
  v10 = (*(STACK[0xF18] + 8 * (v1 + 16343)))(&STACK[0x10ED8]);
  return (*(v9 + 8 * SLODWORD(STACK[0x10EF8])))(v10);
}

uint64_t sub_1001FD264(int8x16_t *a1)
{
  v5.i64[0] = 0xBEBEBEBEBEBEBEBELL;
  v5.i64[1] = 0xBEBEBEBEBEBEBEBELL;
  v6.i64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v6.i64[1] = 0x5F5F5F5F5F5F5F5FLL;
  v7 = vaddq_s8(vsubq_s8(*v2, vandq_s8(vaddq_s8(*v2, *v2), v5)), v6);
  a1[-1] = vaddq_s8(vsubq_s8(v2[-1], vandq_s8(vaddq_s8(v2[-1], v2[-1]), v5)), v6);
  *a1 = v7;
  return (*(v4 + 8 * (((v3 != 0) * (17 * (v1 ^ 0x4A2E) - 9634)) ^ v1)))(a1 + 2);
}

uint64_t sub_1001FD2D0()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((v0 ^ 0x1713) + v0)))();
}

uint64_t sub_1001FD350()
{
  v2 = ((v0 - 452754446) & 0x1AFCEFFB ^ 0x3AE1413AF732D6E8) + (((v1 ^ 0xE0C7CD67C55AB07) - 0xE0C7CD67C55AB07) ^ ((v1 ^ 0xE4B19D0C59A14B36) + 0x1B4E62F3A65EB4CALL) ^ ((v1 ^ 0xEABDE1DACC212720) + 0x15421E2533DED8E0));
  STACK[0x7FA8] = v2;
  STACK[0x5C50] = v2;
  LODWORD(STACK[0x1374]) = -898355304;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1001FD478()
{
  v5 = STACK[0xB5A8];
  *v5 = v3;
  v5[1] = v3 & 2 ^ 0xE1EF32BB;
  v5[2] = v2 & 0x400 ^ 0x520BFF62;
  v5[3] = v4 & 1 | 0xEA54143C;
  v5[16] = (v0 - 2917) & v1 | 0xE10BE2FA;
  v5[17] = v3 & 0x2000 ^ 0xB0F56F61;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1001FD4EC@<X0>(int a1@<W8>)
{
  v4 = 1603510583 * ((((&STACK[0x10000] + 3800) | 0x3860F4A9) + (~(&STACK[0x10000] + 3800) | 0xC79F0B56)) ^ 0xAFBBC603);
  STACK[0x10EE0] = *(v2 + v3);
  LODWORD(STACK[0x10EEC]) = a1 - v4 + ((v1 - 11373) ^ 0xD7E6FD93);
  LODWORD(STACK[0x10EE8]) = v1 - v4 - 12644;
  LODWORD(STACK[0x10EDC]) = -1876891974 - v4;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v1 ^ 0x86E0)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x81EC]) = STACK[0x10ED8];
  return (*(v5 + 8 * v1))(v6);
}

uint64_t sub_1001FD638@<X0>(int a1@<W8>)
{
  STACK[0x2250] = STACK[0x84A8];
  LODWORD(STACK[0x9400]) = STACK[0x14B4];
  STACK[0x2FA8] = STACK[0x6098];
  LODWORD(STACK[0x5174]) = STACK[0x29A0];
  STACK[0x4638] = STACK[0x4BE0];
  STACK[0x7690] += 32;
  return (*(STACK[0xF18] + 8 * (a1 - 17039)))();
}

uint64_t sub_1001FD720()
{
  v0 = (STACK[0xF10] + 1614778108) | 0x85B00480;
  v1 = STACK[0xF10] - 31669;
  v2 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 + 437250728 + v0)))();
}

uint64_t sub_1001FD820()
{
  v1 = v0 - 26561;
  v2 = v0 + 16238;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * v2))();
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_1001FD8B4@<X0>(unsigned int a1@<W1>, char a2@<W2>, int a3@<W4>, int a4@<W5>, char a5@<W6>, char a6@<W7>, char *a7@<X8>)
{
  v13 = STACK[0x9B98];
  v14 = STACK[0x9B88];
  v15 = (*(v13 + 60) & 0x1A ^ 0x32 ^ (*(v14 + 36) & 0xD4 ^ a3) & (*(v13 + 60) ^ (a1 + 113))) & (*(v14 + 36) & 0x2B ^ 0xF4) ^ *(v14 + 36) & 3;
  v16 = *a7;
  v17 = v15 & (v16 & 0x23 ^ 0x20);
  v18 = (v15 ^ 0xB5) & (v16 ^ 0x5F) ^ v16 & 0x9E;
  *(v13 + 55) = (v18 ^ 0xE1) & (v17 ^ 0xB3) ^ v18 & a6 ^ 0xC1;
  v19 = *(v14 + (v12[163] & 0x3F ^ 0x1FLL));
  v20 = (205 * (((v19 ^ 0xBF95) + 16491) ^ ((v19 ^ 0x44FF) - 17663) ^ ((v19 ^ 0xFB35) + 1227)) + 29715) >> 10;
  v21 = v20 & 8 ^ 0x49;
  LOBYTE(v20) = v20 ^ (2 * ((v20 ^ 4) & (2 * ((v20 ^ 0x16) & (2 * ((v20 ^ 0x16) & (2 * ((v20 ^ 0x16) & (2 * v21) | v21)) ^ v21)) ^ v21)) ^ v21));
  v22 = (~v20 | 0xE6) & (v12[203] & 0x64 ^ 0xB1 ^ (v12[63] & 0x66 ^ 0x44) & (v12[203] ^ 0x20)) | v20 & 8;
  v23 = (((*(v13 + 18) ^ 0x32) - 50) ^ ((*(v13 + 18) ^ 0xBA) + 70) ^ ((*(v13 + 18) ^ 0xD7) + 41)) - (((v22 ^ 0x41) - 89) ^ ((v22 ^ 0x13) - 11) ^ ((v22 ^ 0xAD) + 75)) - 87;
  v24 = v23 & 0x35 ^ 0x37;
  *(v13 + 18) = v23 ^ (2 * ((v23 ^ 0x4E) & (2 * ((v23 ^ 0x4E) & (2 * ((v23 ^ 0x4E) & (2 * ((v23 ^ 0x4E) & (2 * ((v23 ^ 0x4E) & (2 * (((2 * (v23 & 0xF)) ^ 0x7A) & (v23 ^ 0x4E) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ 0x6A;
  v25 = (((*(v13 + 11) ^ 0x50) - 80) ^ ((*(v13 + 11) ^ 0x9B) + 101) ^ ((*(v13 + 11) ^ 0x94) + 108)) - 89;
  v26 = v25 & 4 ^ 0x87;
  LOBYTE(v20) = 2 * ((2 * (v26 ^ v25 & 0x7A)) ^ 0xF4 ^ v26 ^ ((2 * (v26 ^ v25 & 0x7A)) ^ 0xF4) & v25);
  LOBYTE(v20) = 2 * ((2 * (v20 ^ v26 ^ v20 & v25)) ^ v26 ^ (2 * (v20 ^ v26 ^ v20 & v25)) & v25);
  v27 = v25 ^ (2 * ((2 * (v20 ^ v26 ^ v20 & v25)) ^ v26 ^ (2 * (v20 ^ v26 ^ v20 & v25)) & v25));
  v28 = STACK[0x9B80];
  v29 = v13;
  LODWORD(STACK[0xE00]) = *(v13 + (*(STACK[0x9B80] + 225) & 0x3F ^ 0x1FLL));
  STACK[0xEC0] = v14;
  LODWORD(STACK[0xE10]) = *(v14 + 34);
  *(v13 + 11) = v27 ^ 0x5B;
  v30 = STACK[0x9B80];
  LODWORD(STACK[0xE90]) = *(STACK[0x9B88] + (*(STACK[0x9B80] + 171) & 0x3F ^ 0x1FLL));
  LODWORD(STACK[0xDE0]) = *(v14 + (*(v28 + 22) & 0x3F ^ 0x1FLL));
  LODWORD(STACK[0xDB0]) = *STACK[0x9BE0];
  LODWORD(STACK[0xDA0]) = *STACK[0x9BE8];
  v31 = STACK[0x9B98];
  v32 = *(STACK[0x9B98] + 19) ^ 0x40;
  LODWORD(STACK[0xD90]) = *(v13 + 15);
  STACK[0xEA0] = v13;
  LODWORD(STACK[0xDC0]) = *(v30 + 2);
  *(v31 + 19) = v32;
  v33 = (((*STACK[0x9BD8] ^ 0xB8) + 72) ^ ((*STACK[0x9BD8] ^ 0x3D) - 61) ^ ((*STACK[0x9BD8] ^ 0xDA) + 38)) + (((*(v30 + 24) ^ 0xAF) + 81) ^ ((*(v30 + 24) ^ 0x63) - 99) ^ ((*(v30 + 24) ^ 0x93) + 109)) - 4;
  v34 = v33 & 0xA2 ^ 0x70;
  *(v30 + 24) = v33 ^ (2 * ((v33 ^ 0x40) & (2 * ((v33 ^ 0x40) & (2 * ((v33 ^ 0x40) & (2 * ((v33 ^ 0x40) & (2 * ((v33 ^ 0x40) & (2 * v34) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ 0xFD;
  v35 = STACK[0x9B80];
  v36 = *(STACK[0x9B80] + 229) & 0x3F ^ 0x1FLL;
  v37 = 81 - (((*(v31 + v36) ^ 0x45) - 69) ^ ((*(v31 + v36) ^ 0x8D) + 115) ^ ((*(v31 + v36) ^ v9) + 105));
  v38 = v37 & 0x6B ^ 0x45;
  *(v35 + 232) ^= v37 ^ (2 * ((v37 ^ 0x60) & (2 * ((v37 ^ 0x60) & (2 * ((v37 ^ 0x60) & (2 * ((v37 ^ 0x60) & (2 * (v37 & (2 * (((2 * v37) & 0x42 ^ 0xA) & v37 ^ v38)) ^ v38)) ^ v38)) ^ v38)) ^ v38)) ^ v38)) ^ 0x6B;
  v39 = *(STACK[0x9B90] + (*(v35 + 53) & 0x3F ^ 0x1FLL));
  v40 = *(v35 + 227);
  STACK[0xD80] = v35;
  v41 = (((v39 ^ 0x67) - 103) ^ ((v39 ^ 0x52) - 82) ^ ((v39 ^ 0x6A) - 106)) + (((v40 ^ 0x86) + 122) ^ ((v40 ^ 6) - 6) ^ ((v40 ^ 0xDF) + 33)) - 55;
  v42 = v41 & 0x33 ^ 0x27;
  *(v35 + 227) = v41 ^ (2 * ((v41 ^ 0x74) & (2 * ((v41 ^ 0x74) & (2 * ((v41 ^ 0x74) & (2 * ((v41 ^ 0x74) & (2 * ((v41 ^ 0x74) & (2 * (((2 * v41) & 0x6A ^ 0x46) & v41 ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ 0x6C;
  v43 = STACK[0x9B80];
  v44 = STACK[0x9B98];
  v45 = *(STACK[0x9B98] + (*(STACK[0x9B80] + 77) & 0x3F ^ 0x1FLL));
  LOBYTE(v13) = *(STACK[0x9B98] + 37);
  v46 = STACK[0x9B88];
  v47 = *(STACK[0x9B88] + 58);
  STACK[0xED0] = STACK[0x9B88];
  v48 = (v13 & 6 ^ (v13 ^ 0xA0) & (v45 ^ 0xA6) ^ 3) & (v47 ^ 0x5F);
  v49 = (v47 & 0xFC ^ v48 ^ 0x18) & 0xB8 | ((v13 ^ 0x5F) & (v45 ^ 0x18) ^ v13 & 0x47) & (v47 & 0xFC ^ v48 ^ 0xA3);
  LOBYTE(v36) = ((*(STACK[0x9B90] + v36) ^ 0x25) & (*(v44 + 30) ^ 0xA0) ^ *(v44 + 30) & 0x7A ^ 0xDF) & (*(v44 + 30) & a3 ^ 0x53) ^ ((*(STACK[0x9B90] + v36) ^ 0x25) & (*(v44 + 30) ^ 0xA0) ^ *(v44 + 30) & 0x7A) & 0xE9;
  LOBYTE(v36) = (((*(v44 + 49) ^ 0x3B) - 59) ^ ((*(v44 + 49) ^ 0x3D) - 61) ^ ((*(v44 + 49) ^ 0x59) - 89)) - (((v49 ^ 0x2C) - 72) ^ ((v49 ^ 0x77) - 19) ^ ((v49 ^ 0x1C) - 120)) - (((v36 ^ 0x59) - 21) ^ ((v36 ^ 0xAE) + 30) ^ ((v36 ^ 0xC1) + 115)) - 3;
  v50 = v36 & 0x3F ^ 0xBD;
  LODWORD(STACK[0xE60]) = *STACK[0x9BF8];
  LODWORD(STACK[0xE70]) = *(v43 + 103);
  LODWORD(STACK[0xE40]) = *(v46 + 60);
  *(v44 + 49) = v36 ^ (2 * ((v36 ^ 0x44) & (2 * ((v36 ^ 0x44) & (2 * ((v36 ^ 0x44) & (2 * ((v36 ^ 0x44) & (2 * ((v36 ^ 0x44) & (2 * (((2 * v36) & 0xA ^ 0x7A) & v36 ^ v50)) ^ v50)) ^ v50)) ^ v50)) ^ v50)) ^ v50)) ^ 0x60;
  STACK[0xEB0] = v44;
  v51 = *STACK[0x9BD8];
  v52 = STACK[0x9B80];
  v53 = STACK[0x9B88];
  LOBYTE(v13) = *(STACK[0x9B88] + (*(STACK[0x9B80] + 81) & 0x3F ^ 0x1FLL));
  v54 = *(STACK[0x9B98] + 38);
  v55 = STACK[0x9B98];
  STACK[0xDD0] = STACK[0x9B98];
  v56 = (v51 & 0x11 ^ (v13 ^ 0xB1) & (v51 ^ 0xCC) ^ (v13 ^ 0xB1) & 0x6C ^ 0x45) & (v54 ^ 0x5F);
  v57 = (v13 ^ 0x5F) & (v51 ^ 0x8A) ^ v13 & 0xD5;
  LOBYTE(v13) = *(v55 + 35);
  v58 = (v57 & 0x18 ^ 0xB3 ^ (v54 & 0xBA ^ v56 ^ 0xFD) & (v57 ^ 0xAA)) & (v13 ^ 0x5F);
  v59 = (*(v53 + (*(v52 + 165) & 0x3F ^ 0x1FLL)) ^ 4) & (v13 ^ 0xA0) ^ v13 & 0x5B;
  *(v52 + 248) ^= 0xE9 ^ ((v13 & 0x44 ^ 0xAD ^ v58) & ~v59 | v59 & 0x16);
  LOBYTE(v52) = (((*(v52 + 242) ^ 0x8A) + 118) ^ ((*(v52 + 242) ^ 0x33) - 51) ^ ((*(v52 + 242) ^ 0xE6) + 26)) - 12;
  LOBYTE(v52) = ((v52 ^ (2 * (v52 & (2 * ((v52 ^ 0x14) & (2 * ((v52 ^ 0x14) & (2 * ((v52 ^ 0x14) & (2 * (v52 & 0x2C ^ 0xCC)) ^ v52 & 0x2C ^ 0xCC)) ^ v52 & 0x2C ^ 0xCC)) ^ v52 & 0x2C ^ 0xCC)) ^ v52 & 0x2C ^ 0xCC))) & 0x96 ^ 0xFB) & (((*(v29 + 60) ^ 0x20 | *(v53 + 46)) & 0x69 ^ *(v29 + 60) & 0x20) & ((*(v53 + 46) ^ 0x20) & ~*STACK[0x9BD8] ^ (*(v53 + 46) | 0x49)) ^ 0xBF);
  v60 = STACK[0x9B98];
  v61 = (((*(v60 + 56) ^ 0x85) + 123) ^ ((*(v60 + 56) ^ v7) - 17) ^ ((*(v60 + 56) ^ 0xCB) + 53)) - (((v52 ^ 0xE6) - 71) ^ ((v52 ^ 0xAF) - 14) ^ ((v52 ^ 0x9F) - 62)) - 9;
  v62 = v61 & 0x85 | v8;
  *(v60 + 56) = v61 ^ (2 * ((v61 ^ 0x70) & (2 * ((v61 ^ 0x70) & (2 * ((v61 ^ 0x70) & (2 * ((v61 ^ 0x70) & (2 * ((v61 ^ 0x70) & (2 * ((v61 ^ 0x70) & (2 * (v61 & 0x85)) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ 0xDA;
  v63 = STACK[0x9B80];
  LODWORD(STACK[0xE30]) = *(v60 + (*(STACK[0x9B80] + 12) & 0x3F ^ 0x1FLL));
  v64 = *(v63 + 177);
  LOBYTE(v52) = *(v63 + 172);
  v65 = *(v44 + 37);
  LOBYTE(v60) = (v52 & 0xAC ^ 0xEC ^ (v52 ^ 0xA0) & (v64 ^ 0xC)) & (v65 ^ 0x5F);
  v66 = (v52 ^ 0x5F) & (v64 ^ 0xF4) ^ v52 & 0xAB;
  v67 = (v65 & 0xB3 ^ 0x21 ^ v60) & (v66 ^ 0xF4) ^ v66 & 0xCD;
  v68 = STACK[0x9B90];
  LODWORD(STACK[0xE20]) = *(STACK[0x9B90] + (*(v63 + 210) & 0x3F ^ 0x1FLL));
  LOBYTE(v60) = *(v68 + (*(v63 + 235) & 0x3F ^ 0x1FLL));
  LOBYTE(v68) = *(v63 + 208);
  LOBYTE(v52) = v68 & 0x20 | v60 & (v68 ^ 0x20);
  LOBYTE(v60) = (v60 ^ 0x5F) & (v68 ^ 0x27) ^ v60 & 0x78;
  LOBYTE(v60) = (v52 & 0x22 ^ 0xC6) & (v60 ^ 0xA7) ^ v60 & 0x3B;
  LOBYTE(v52) = *(STACK[0x9B88] + 50);
  LOBYTE(v68) = (v60 & 0x5F ^ (v60 ^ 0x23) & (v67 ^ 0x9B) ^ 0xE3) & (v52 ^ 0x5F);
  v69 = (v60 ^ 0xDC) & (v67 ^ 0x72) ^ v60 & 0x49;
  v70 = (v52 & 0x1F ^ 0xEE ^ v68) & (v69 ^ 0xB7) ^ v69 & 0xE;
  STACK[0xDF0] = v63;
  v71 = (((*(v63 + 68) ^ 0xF1) + 15) ^ ((*(v63 + 68) ^ 0x71) - 113) ^ ((*(v63 + 68) ^ 0xDF) + 33)) - (((v70 ^ 0x2A) + 55) ^ ((v70 ^ 0xE9) - 10) ^ ((v70 ^ 0x3A) + 39)) - 75;
  *(v63 + 68) = v71 ^ (2 * ((v71 ^ 0x10) & (2 * ((v71 ^ 0x10) & (2 * ((v71 ^ 0x10) & (2 * ((v71 ^ 0x10) & 0x1C ^ v71 & 0x8C ^ 0x1E)) ^ v71 & 0x8C ^ 0x1E)) ^ v71 & 0x8C ^ 0x1E)) ^ v71 & 0x8C ^ 0x1E)) ^ 0xD3;
  LOBYTE(v44) = (*STACK[0x9BE8] & 0xC8 ^ 0xA1 ^ (*STACK[0x9BE8] ^ 0x5F) & (*(v31 + 19) ^ v9)) & (*(v31 + 19) & 0x63 ^ 0xDF) ^ *(v31 + 19) & 2;
  LOBYTE(v44) = 3 * (((v44 ^ 0xFB) - 109) ^ ((v44 ^ 0xBF) - 41) ^ ((v44 ^ 0xAD) - 59)) - 117;
  v72 = v44 & 0x7E ^ 0x46;
  LOBYTE(v44) = v44 ^ (2 * ((v44 ^ 0x70) & (2 * ((v44 ^ 0x70) & (2 * ((v44 ^ 0x70) & (2 * ((v44 ^ 0x70) & (2 * ((v44 ^ 0x70) & (2 * v72) ^ v72)) ^ v72)) ^ v72)) ^ v72)) ^ v72)) ^ 0x21;
  v73 = STACK[0x9B80];
  *(v73 + 18) = v44;
  LODWORD(v13) = *(STACK[0x9B90] + (*(v73 + 48) & 0x3F ^ 0x1FLL));
  LODWORD(STACK[0xD60]) = 0;
  v74 = STACK[0x9B88];
  LODWORD(v44) = (*(v74 + 37) | 0xFFFFFFE4) & (v13 & 0xFFFFFFE4 ^ 0xFFFFFFB3) | *(v74 + 37) & 8;
  LODWORD(v44) = ((((*(v73 + 250) >> 1) ^ 0x45) - 100) ^ (((*(v73 + 250) >> 1) ^ 0xFFFFFFD1) + 16) ^ (((*(v73 + 250) >> 1) ^ a4) + 102)) - (((v44 ^ 0x6D) + 69) ^ ((v44 ^ 0xFFFFFFCC) - 26) ^ ((v44 ^ 0x5E) + 120)) - 12;
  LOBYTE(v52) = v44 & 0xD7 ^ 0xB3;
  LOBYTE(v68) = (v44 ^ 0x70) & (2 * ((v44 ^ 0x70) & (2 * ((v44 ^ 0x70) & (2 * ((v44 ^ 0x70) & (2 * (v44 & (2 * ((v10 & (2 * v44) ^ 0x26) & v44 ^ v52)) ^ v52)) ^ v52)) ^ v52)) ^ v52)) ^ v52;
  v75 = STACK[0x9C08];
  LOBYTE(v44) = *STACK[0x9C08] ^ v44 ^ (2 * v68) ^ 0xD7;
  LODWORD(STACK[0xD70]) = *(STACK[0x9B98] + 34);
  *v75 = v44;
  v76 = STACK[0x9BE0];
  LOBYTE(v73) = *(v74 + (*(v73 + 76) & 0x3F ^ 0x1FLL));
  LOBYTE(v73) = (((*v76 ^ 0xB1) + 79) ^ ((*v76 ^ 0xD5) + 43) ^ ((*v76 ^ 0x3B) - 59)) - (((v73 ^ 0x3A) - 58) ^ ((v73 ^ 0x2D) - 45) ^ ((v73 ^ 0x48) - 72)) + 50;
  LOBYTE(v68) = v73 & 0xB6 ^ 0xF4;
  *v76 = v73 ^ (2 * ((v73 ^ 0x4C) & (2 * ((v73 ^ 0x4C) & (2 * ((v73 ^ 0x4C) & (2 * ((v73 ^ 0x4C) & (2 * ((v73 ^ 0x4C) & (2 * v68) ^ v68)) ^ v68)) ^ v68)) ^ v68)) ^ v68)) ^ 0xE9;
  v77 = STACK[0x9B80];
  v12[63] = *(STACK[0x9B98] + (*(STACK[0x9B80] + 5) & 0x3F ^ 0x1FLL));
  v78 = STACK[0x9B90];
  LOWORD(v73) = *(STACK[0x9B90] + (*(STACK[0xD80] + 229) & 0x3F ^ 0x1FLL));
  LOWORD(v73) = ((v73 ^ 0x7656) - 30294) ^ ((v73 ^ 0xDD24) + 8924) ^ ((v73 ^ 0xAB2D) + 21715);
  LOWORD(v73) = -5 - ((((v73 + 163) > 0xA3u) << 7) | ((171 * v73 - 139) >> 9));
  LOBYTE(v68) = v73 & 0xE6 ^ 0x9E;
  *STACK[0x9BC0] ^= v73 ^ (2 * ((v73 ^ 0x48) & (2 * ((v73 ^ 0x48) & (2 * ((v73 ^ 0x48) & (2 * ((v73 ^ 0x48) & (2 * ((v73 ^ 0x48) & (2 * v68) ^ v68)) ^ v68)) ^ v68)) ^ v68)) ^ v68)) ^ 0xE6;
  LODWORD(v68) = (LODWORD(STACK[0xDA0]) ^ 0x5F) & (LODWORD(STACK[0xDB0]) ^ 0x3A) ^ STACK[0xDA0] & a3;
  LODWORD(v73) = (v68 & 0xBA ^ 0x4D ^ (STACK[0xD90] & 0xFFFFFFC9 ^ (STACK[0xDA0] & 0xAB ^ 0xFFFFFF96 ^ (LODWORD(STACK[0xDA0]) ^ 0xFFFFFFA0) & (LODWORD(STACK[0xDB0]) ^ 0xB)) & (LODWORD(STACK[0xD90]) ^ 0x5F) ^ 0xC) & (v68 ^ 0xFFFFFFBA)) & (LODWORD(STACK[0xDE0]) ^ 0x44) ^ STACK[0xDE0] & 0xFFFFFFF7;
  LODWORD(v73) = (((v73 ^ 0xFFFFFFFD) - 125) ^ ((v73 ^ 0x2D) + 83) ^ ((v73 ^ 0x6B) + 21)) - 34;
  LODWORD(v68) = v73 & 0x7C ^ 0x5D;
  LODWORD(v55) = ((171 * (((LOWORD(STACK[0xDC0]) ^ 0xA61A) + 23014) ^ ((LOWORD(STACK[0xDC0]) ^ 0x98F) - 2447) ^ ((LOWORD(STACK[0xDC0]) ^ 0xAFCA) + 20534)) + 23413) >> 9) - (((LODWORD(STACK[0xE90]) ^ 0xFFFFFF9A) + 102) ^ ((LODWORD(STACK[0xE90]) ^ 0x64) - 100) ^ ((LODWORD(STACK[0xE90]) ^ 0xFFFFFFA1) + 95)) - 84;
  LODWORD(v13) = v55 & 0x71 ^ 0xFFFFFFCD;
  v79 = v73 ^ v55 ^ (2 * (v68 ^ v13 ^ (v55 ^ 0x66) & (2 * ((v55 ^ 0x66) & (2 * ((v55 ^ 0x66) & (2 * ((v55 ^ 0x66) & (2 * ((v55 ^ 0x66) & (2 * (((2 * v55) & 0x4E ^ 0x16) & (v55 ^ 0x46) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ (v73 ^ 0x42) & (2 * ((v73 ^ 0x42) & (2 * ((v73 ^ 0x42) & (2 * ((v73 ^ 0x42) & (2 * ((v73 ^ 0x42) & (2 * ((v68 | 2) ^ v73 & 0x3E)) ^ v68)) ^ v68)) ^ v68)) ^ v68))));
  LODWORD(STACK[0xE90]) = v79;
  LOBYTE(v73) = 2 * (v77[118] & 0x1B | v77[99] & 0x64);
  LOBYTE(v73) = (((v77[43] ^ 0xF0) + 16) ^ ((v77[43] ^ 0xA2) + 94) ^ ((v77[43] ^ 0xD) - 13)) - (((v73 ^ 0xE) - 71) ^ ((v73 ^ 0x5D) - 20) ^ ((v73 ^ 0xED) + 92)) - 49;
  LOBYTE(v55) = v73 & 0x1F ^ 0x43;
  LODWORD(STACK[0xD50]) = *STACK[0x9BE8];
  v80 = (v79 ^ 0x38) & 0x3F ^ 0x35;
  STACK[0xD90] = v80;
  LODWORD(STACK[0xD40]) = *(v78 + v80);
  v77[43] = v73 ^ (2 * ((v73 ^ 0x18) & (2 * ((v73 ^ 0x18) & (2 * ((v73 ^ 0x18) & (2 * ((v73 ^ 0x18) & (2 * ((v73 ^ 0x18) & (2 * (((2 * v73) & 0x32 ^ 6) & v73 ^ v55)) ^ v55)) ^ v55)) ^ v55)) ^ v55)) ^ v55)) ^ 0x40;
  LOBYTE(v73) = *(STACK[0x9B88] + (*(STACK[0x9B80] + 33) & 0x3F ^ 0x1FLL)) & 0xE5;
  v81 = STACK[0x9C10];
  LOBYTE(v73) = (((v73 ^ 0xC2) - 111) ^ ((v73 ^ 0x35) + 104) ^ ((v73 ^ 0xB2) - 31)) + (((*v81 ^ 0xB8) + 72) ^ ((*v81 ^ 0xA1) + 95) ^ ((*v81 ^ 0x46) - 70)) + 124;
  LOBYTE(v63) = v73 & 0xC2 ^ 0x1F;
  *v81 = v73 ^ (2 * ((v73 ^ 0x54) & (2 * ((v73 ^ 0x54) & (2 * ((v73 ^ 0x54) & (2 * ((v73 ^ 0x54) & (2 * ((v73 ^ 0x54) & (2 * (v63 ^ v73 & 0x16)) ^ v63)) ^ v63)) ^ v63)) ^ v63)) ^ v63)) ^ 0x9D;
  STACK[0xE80] = v74;
  LOBYTE(v73) = *(v74 + 37);
  LOBYTE(v81) = *(STACK[0xED0] + 60);
  LOBYTE(v63) = (v73 & 0x7C ^ 0x58) & (v81 ^ 0x20);
  LOBYTE(v73) = (v81 ^ 0x5F) & (v73 ^ 0xF5) ^ v81 & 0xAA;
  LOBYTE(v73) = 2 * ((v73 ^ 0x75) & (v81 & 0x78 ^ 0x3B ^ v63) ^ v73 & 0x18);
  v82 = STACK[0xEA0];
  LOBYTE(v73) = (((*(STACK[0xEA0] + 18) ^ 0xBF) + 65) ^ ((*(STACK[0xEA0] + 18) ^ 0x91) + 111) ^ ((*(STACK[0xEA0] + 18) ^ 0x71) - 113)) + (((v73 ^ 0xF7) + 86) ^ ((v73 ^ 0x89) + 44) ^ ((v73 ^ 0xA0) + 3)) - 14;
  LOBYTE(v63) = v73 & 0x1C ^ 0x96;
  *(v82 + 18) = v73 ^ (2 * ((v73 ^ 0x70) & (2 * ((v73 ^ 0x70) & (2 * ((v73 ^ 0x70) & (2 * ((v73 ^ 0x70) & (2 * ((v73 ^ 0x70) & (2 * v63) ^ v63)) ^ v63)) ^ v63)) ^ v63)) ^ v63)) ^ 0x43;
  v83 = STACK[0x9B80];
  STACK[0xDC0] = STACK[0x9B80];
  v84 = STACK[0x9B90];
  LODWORD(STACK[0xDB0]) = *(STACK[0x9B90] + (*(v83 + 73) & 0x3F ^ 0x1FLL));
  v85 = STACK[0x9B98];
  LODWORD(STACK[0xDA0]) = *(STACK[0x9B98] + (*(v83 + 154) & 0x3F ^ 0x1FLL));
  v86 = *(v83 + 157) & 0x3F ^ 0x1FLL;
  LODWORD(v84) = *(v84 + v86);
  LOBYTE(v86) = ((*(STACK[0x9B88] + v86) ^ 0x5F) & (*(v85 + 52) ^ 0xCB) ^ *(STACK[0x9B88] + v86) & 0x94) & (~*(v85 + 52) | 0xAF) ^ (*(v85 + 52) & 0x40 | 3);
  v87 = STACK[0x9C00];
  LOBYTE(v80) = (((*v87 ^ 0x1C) - 28) ^ ((*v87 ^ 0x40) - 64) ^ ((*v87 ^ 3) - 3)) - 3 * (((v86 ^ 0x66) - 21) ^ ((v86 ^ 0xA0) + 45) ^ ((v86 ^ 0xD1) + 94)) + 85;
  LOBYTE(v86) = v80 & 0x6E ^ 0x48;
  LODWORD(STACK[0xD80]) = *(STACK[0x9B88] + 26);
  *v87 = v80 ^ (2 * ((v80 ^ 0x5C) & (2 * ((v80 ^ 0x5C) & (2 * ((v80 ^ 0x5C) & (2 * ((v80 ^ 0x5C) & (2 * ((v80 ^ 0x5C) & (2 * v86) ^ v86)) ^ v86)) ^ v86)) ^ v86)) ^ v86)) ^ 0x31;
  LOBYTE(v80) = (((v77[99] & 7 | 0xE8) ^ 0xF6) + 10) ^ (((v77[99] & 7 | 0xE8) ^ 0xCC) + 52) ^ (((v77[99] & 7 | 0xE8) ^ 0xD5) + 43);
  LOBYTE(v83) = (v80 - 67) ^ (((v80 - 67) ^ 0xFB) - 53) ^ (((v80 - 67) ^ 0xBC) - 114) ^ (((v80 - 67) ^ 0x7E) + 80) ^ (((v80 - 67) ^ 0xF7) - 57) ^ 0x1C;
  LOBYTE(v83) = ((*(v74 + 37) ^ 0x5F) << (v83 & 0xDB ^ 0xD2) << (v83 & 0x24)) ^ ((*(v74 + 37) ^ 0x5Fu) >> ((119 - v80) & 1) >> ((119 - v80) & 6 ^ (2 * (119 - v80)) & 4 ^ 2));
  LOBYTE(v80) = *(STACK[0xDD0] + 38);
  v88 = STACK[0x9B98];
  v89 = *(STACK[0x9B98] + 33);
  LOBYTE(v87) = ((v80 & 0x95 ^ 0xB4) & 0x94 ^ v83 & 0x1E ^ (v83 ^ 0x21) & (v80 & 0x95 ^ 0xB4) ^ 0x84) & (v89 ^ 0x5F);
  LOBYTE(v83) = (v83 ^ 0x10) & (v80 & 0x95 ^ 0x55) ^ v80 & 0x10;
  LOBYTE(v83) = (v89 & a3 ^ v11 ^ v87) & (v83 ^ 0xEF) ^ v83 & 0x94 ^ 0x24;
  LOBYTE(v87) = *(STACK[0x9B98] + (*(STACK[0x9B80] + 93) & 0x3F ^ 0x1FLL));
  LODWORD(STACK[0xDD0]) = *STACK[0x9C18];
  v90 = STACK[0xEB0];
  v91 = *(STACK[0xEB0] + 49);
  *v88 = v83;
  LOBYTE(v83) = *STACK[0x9BF8];
  v92 = STACK[0x9B80];
  LOBYTE(v80) = *(v88 + (*(STACK[0x9B80] + 13) & 0x3F ^ 0x1FLL));
  v93 = (v80 ^ 0x5F) & (v83 ^ 0xD8);
  LOBYTE(v83) = (*(STACK[0x9B80] + 188) & 0xDD ^ 0xDC) & (v83 ^ 0x80) ^ v83 & 0xA3;
  *(v88 + 45) ^= v83 & 0xA5 ^ 0xFA ^ (v83 ^ 0x5F) & (v80 & 0x87 ^ 0x5D ^ v93);
  v94 = STACK[0x9BB8];
  LOBYTE(v80) = (((*(v82 + 60) ^ 0xDC) + 36) ^ ((*(v82 + 60) ^ 0xE4) + 28) ^ ((*(v82 + 60) ^ 0x67) - 103)) + (((*v94 ^ v10) - 98) ^ ((*v94 ^ 0x8F) + 113) ^ ((*v94 ^ 0xB2) + 78)) + 13;
  LOBYTE(v35) = v80 & 0x43 ^ 0xC9;
  v95 = v80 ^ (2 * ((v80 ^ 0x30) & (2 * ((v80 ^ 0x30) & (2 * ((v80 ^ 0x30) & (2 * ((v80 ^ 0x30) & (2 * ((v80 ^ 0x30) & (2 * ((v10 & (2 * v80) ^ 0x72) & (v80 ^ 0x30) ^ v35)) ^ v35)) ^ v35)) ^ v35)) ^ v35)) ^ v35));
  LODWORD(STACK[0xD00]) = *(v88 + 36);
  *v94 = v95 ^ 0x1C;
  LODWORD(v86) = (((2 * v84) ^ 0xFFFFFF8F) + 12) ^ (((2 * v84) ^ 0x4E) - 53) ^ (((2 * v84) ^ 0x7F) - 4);
  LOBYTE(v94) = *(STACK[0x9B90] + (*(v92 + 247) & 0x3F ^ 0x1FLL));
  v96 = STACK[0xEC0];
  LOBYTE(v80) = *(STACK[0xEC0] + 36) & 0xA9;
  LODWORD(STACK[0xDE0]) = v86;
  LOBYTE(v88) = v86 - 17;
  LOBYTE(v84) = (v86 - 17) & 0x24 ^ 0xD5;
  LOBYTE(v88) = v88 ^ (2 * ((v88 ^ 0x3A) & (2 * ((v88 ^ 0x3A) & (2 * ((v88 ^ 0x3A) & (2 * ((v88 ^ 0x3A) & (2 * ((v88 ^ 0x3A) & (2 * ((v88 ^ 0x3A) & 0x1E ^ v84)) ^ v84)) ^ v84)) ^ v84)) ^ v84)) ^ v84));
  LOBYTE(v94) = (v88 & 0x6A ^ 0x89 ^ (v94 & 0xA9 ^ 0x21 ^ (v94 ^ 0xE0) & (v80 ^ 9)) & (v88 ^ 0x20)) & (v94 & 0x88 ^ 0xF2 ^ (v94 & 0xEE ^ 0x5B) & (v80 ^ 0xD2)) ^ v94 & 0x42;
  LOBYTE(v94) = (((v95 ^ 0xB1) + 83) ^ ((v95 ^ 0x86) + 102) ^ ((v95 ^ 0x74) - 104)) - (((v94 ^ 0x68) + 2) ^ ((v94 ^ 0x1E) + 120) ^ ((v94 ^ 0x89) - 31));
  LOBYTE(v80) = v94 + 53;
  LOBYTE(v94) = ((-54 - v94) & 0xC1 | 0x30) ^ (v94 + 53) & v10;
  *STACK[0x9BB8] = v80 ^ (2 * ((v80 ^ 0x40) & (2 * ((v80 ^ 0x40) & (2 * ((v80 ^ 0x40) & (2 * ((v80 ^ 0x40) & (2 * ((v80 ^ 0x40) & (2 * ((v80 ^ 0x40) & (2 * v94) ^ v94)) ^ v94)) ^ v94)) ^ v94)) ^ v94)) ^ v94)) ^ 0xFC;
  LODWORD(v80) = ((LODWORD(STACK[0xE00]) ^ 0xFFFFFFF2) + 14) ^ ((LODWORD(STACK[0xE00]) ^ 0xFFFFFFDE) + 34) ^ ((LODWORD(STACK[0xE00]) ^ 0x73) - 115);
  LODWORD(v35) = ((LODWORD(STACK[0xE10]) ^ 0x41) - 65) ^ ((LODWORD(STACK[0xE10]) ^ 0x5B) - 91) ^ ((LODWORD(STACK[0xE10]) ^ 0x45) - 69);
  v97 = ((LODWORD(STACK[0xE10]) ^ 0xFFFFFF96) + 106) ^ ((LODWORD(STACK[0xE10]) ^ 0xFFFFFFAB) + 85) ^ ((LODWORD(STACK[0xE10]) ^ v10) - 98);
  LODWORD(v94) = (v80 + 95) * ((((LODWORD(STACK[0xE00]) ^ 0xFFFFFF94) + 108) ^ ((LODWORD(STACK[0xE00]) ^ 0xFFFFFF8D) + 115) ^ ((LODWORD(STACK[0xE00]) ^ 0x46) - 70)) - 78) - 83 * v80;
  v98 = STACK[0x9B98];
  v99 = (((*(v98 + 54) ^ 0x9C) + 100) ^ ((*(v98 + 54) ^ 0x70) - 112) ^ ((*(v98 + 54) ^ 0xB3) + 77)) + 20;
  LOBYTE(v88) = v99 & a3 ^ 0xCC;
  *(v98 + 54) = v99 ^ (2 * ((v99 ^ 0x6C) & (2 * ((v99 ^ 0x6C) & (2 * ((v99 ^ 0x6C) & (2 * ((v99 ^ 0x6C) & (2 * ((v99 ^ 0x6C) & (2 * (v99 & (2 * v99) & 0x5A ^ v88)) ^ v88)) ^ v88)) ^ v88)) ^ v88)) ^ v88)) ^ 0x3A;
  v100 = STACK[0x9B80];
  LODWORD(v88) = v94 - 114 * v97 + (v35 - 47) * (v97 + 95);
  LOBYTE(v94) = *(v98 + (*(STACK[0x9B80] + 139) & 0x3F ^ 0x1FLL)) ^ 0xA0;
  LODWORD(v98) = *(v98 + 17);
  LODWORD(STACK[0xD30]) = *(STACK[0x9B88] + 4);
  v101 = STACK[0xE80];
  LODWORD(STACK[0xD20]) = *(STACK[0xE80] + 37);
  *(v90 + 30) = (v94 * v94 - ((2 * v94 * v94) & 0x10) + 8) ^ 0x57;
  LOBYTE(v94) = *(STACK[0x9B90] + (v12[63] & 0x3F ^ 0x1FLL));
  LOBYTE(v94) = (((v94 ^ 0xE3) + 29) ^ ((v94 ^ 0x5C) - 92) ^ ((v94 ^ 0xE0) + 32)) + (((*(v100 + 56) ^ 0x46) - 70) ^ ((*(v100 + 56) ^ 0xD1) + 47) ^ ((*(v100 + 56) ^ 0xC8) + 56)) - 16;
  LOBYTE(v35) = v94 & 0x7E ^ 0x58;
  *(v100 + 56) = v94 ^ (2 * ((v94 ^ 0x4C) & (2 * ((v94 ^ 0x4C) & (2 * ((v94 ^ 0x4C) & (2 * ((v94 ^ 0x4C) & (2 * ((v94 ^ 0x4C) & (2 * v35) ^ v35)) ^ v35)) ^ v35)) ^ v35)) ^ v35)) ^ 0x21;
  v102 = STACK[0x9B98];
  *(v102 + 39) = *(STACK[0xED0] + 60);
  LOBYTE(v78) = ((*(v100 + 156) ^ 0x82) & (*(v101 + 37) & 0x1B | 0x80) ^ *(v101 + 37) & 2 | *(v102 + 59) ^ 0xE4) ^ a4 | *(v101 + 37) & 8 ^ 0x28 ^ (*(v100 + 156) ^ 0xF7) & (*(v101 + 37) & 0x1B ^ 0x7F);
  *STACK[0x9BC8] = v78 + (~(2 * v78) | 0x41) + 96;
  v103 = STACK[0x9BA8];
  LODWORD(v94) = ((*v103 ^ 0xFFFFFF8C) + 116) ^ ((*v103 ^ 0xFFFFFF81) + 127) ^ ((*v103 ^ 0x52) - 82);
  LODWORD(STACK[0xD90]) = *(v102 + STACK[0xD90]);
  v104 = STACK[0x9B88];
  LODWORD(v94) = v94 + ((171 * (*(STACK[0x9B88] + (*(v102 + 16) & 0x3F ^ 0x1FLL)) ^ 0x5Fu)) >> 9) - 101;
  LOBYTE(v102) = v94 & 0x54 ^ 0xC8;
  *v103 = v94 ^ (2 * ((v94 ^ 0x44) & (2 * ((v94 ^ 0x44) & (2 * ((v94 ^ 0x44) & (2 * ((v94 ^ 0x44) & (2 * v102) ^ v102)) ^ v102)) ^ v102)) ^ v102)) ^ 0xB;
  LOBYTE(v103) = *(v104 + (*(v100 + 156) & 0x3F ^ 0x1FLL));
  LOBYTE(v103) = (((v103 ^ 0x9C) + 100) ^ ((v103 ^ 0x82) + 126) ^ ((v103 ^ 0x41) - 65)) + 67;
  v105 = STACK[0x9BD0];
  LOBYTE(v103) = ((v103 & 0xE9 | 0x10) ^ (v103 | 0x10) & (*(v104 + 7) ^ 0xA6) | v103 & 0x10) + (((*v105 ^ 0xDE) + 34) ^ ((*v105 ^ 0x96) + 106) ^ ((*v105 ^ 0x17) - 23));
  LOBYTE(v82) = (v103 - 112) & a2 ^ 0x35;
  *v105 = (v103 - 112) ^ (2 * (((v103 - 112) ^ 0x4E) & (2 * (((v103 - 112) ^ 0x4E) & (2 * (((v103 - 112) ^ 0x4E) & (2 * (((v103 - 112) ^ 0x4E) & (2 * (((v103 - 112) ^ 0x4E) & (2 * (((2 * (v103 & 0xF)) ^ 0x66) & ((v103 - 112) ^ 0x4E) ^ v82)) ^ v82)) ^ v82)) ^ v82)) ^ v82)) ^ v82)) ^ 0x76;
  LODWORD(v103) = (LODWORD(STACK[0xD40]) ^ 0x5F) & (LODWORD(STACK[0xD50]) ^ 0x57) ^ STACK[0xD40] & 8;
  LODWORD(v100) = ((v103 ^ 0x1A) - 1) ^ ((v103 ^ 0x5B) - 64) ^ ((v103 ^ 0x49) - 82);
  LOBYTE(v103) = (((v87 ^ 0x88) + 120) ^ ((v87 ^ 0x27) - 39) ^ ((v87 ^ 0xF0) + 16)) - 21;
  LODWORD(v105) = (LODWORD(STACK[0xD00]) ^ 0xFFFFFFFA) & (v91 ^ 0xFFFFFFA0) ^ v91 & 0xFFFFFFA5;
  v106 = STACK[0x9B80];
  LODWORD(v103) = ((4 * ((v103 ^ v11) & (2 * ((v103 ^ v11) & (2 * ((v103 ^ v11) & (2 * (v103 & 0x2D ^ 0xC3)) ^ v103 & 0x2D ^ 0xC3)) ^ v103 & 0x2D ^ 0xC3)) ^ v103)) & (2 * v103) ^ v103 | 0xFFFFFFDF) & (v105 & 0xFFFFFF8E ^ 0xFFFFFFF4 ^ (v105 ^ 0x7F) & (STACK[0xDD0] & 0x18 ^ 0x49 ^ (v91 ^ 0x47) & (LODWORD(STACK[0xDD0]) ^ 0x5F) & 0xFFFFFFDF));
  LOBYTE(v105) = (v88 + 30) & 0x35 ^ 0x39;
  LOBYTE(v97) = 2 * (((2 * v105) & 0xCF | v105) ^ (2 * v105) & (v88 + 30));
  LOBYTE(v97) = 2 * ((v97 & 0x42 | v105) ^ v97 & (v88 + 30));
  LOBYTE(v105) = (v105 & 0xFD | (2 * (((v97 & 0x42 | v105) ^ v97 & (v88 + 30)) & 1))) ^ (v88 + 30) & (2 * ((v97 & 0x42 | v105) ^ v97 & (v88 + 30)));
  LOBYTE(v97) = (*(STACK[0x9B90] + (*(v106 + 8) & 0x3F ^ 0x1FLL)) ^ 0x43) + (((*(v106 + 246) ^ 0xC6) + 58) ^ ((*(v106 + 246) ^ 2) - 2) ^ ((*(v106 + 246) ^ 0x9B) + 101));
  LODWORD(STACK[0xE10]) = v88 + 30;
  v107 = ((v88 + 30) ^ (2 * v105)) & 0x3F ^ 0x35;
  STACK[0xD50] = v107;
  v108 = STACK[0x9B98];
  STACK[0xDD0] = STACK[0x9B98];
  LOBYTE(v97) = v97 + (*(v108 + v107) ^ 0x5F) - 76;
  LOBYTE(v102) = v97 & 0x70 ^ 0xE2;
  *(v106 + 246) = v97 ^ (2 * ((v97 ^ 0x2C) & (2 * ((v97 ^ 0x2C) & (2 * ((v97 ^ 0x2C) & (2 * ((v97 ^ 0x2C) & (2 * ((v97 ^ 0x2C) & (2 * v102) ^ v102)) ^ v102)) ^ v102)) ^ v102)) ^ v102)) ^ 0x2F;
  LODWORD(STACK[0xE00]) = v100;
  LOBYTE(v97) = *(STACK[0x9B88] + (((-81 - v100) ^ (2 * ((-81 - v100) & (2 * ((-81 - v100) & (2 * ((-81 - v100) & (2 * ((-81 - v100) & 0xA | 0x74)) ^ ((-81 - v100) & 0xA | 0x74))) ^ ((-81 - v100) & 0xA | 0x74))) ^ ((-81 - v100) & 0xA | 0x74)))) & 0x3F ^ 0xALL));
  v109 = ((*(v106 + 216) ^ 0x5F) << ((v97 + 1) & 7)) ^ ((*(v106 + 216) ^ 0x5Fu) >> (~v97 & 7));
  LODWORD(v102) = 2 * (*(v96 + 34) ^ 0x5F);
  LODWORD(v107) = ((v109 | v102) & (*(STACK[0x9B88] + 12) ^ 0x5F) | v109 & v102) + (v103 ^ 0x40);
  v110 = STACK[0x9B80];
  LOBYTE(v106) = ((*(v110 + 185) ^ 0x28) - 40) ^ ((*(v110 + 185) ^ 0xDD) + 35) ^ ((*(v110 + 185) ^ a5) + 86);
  LODWORD(v87) = *(STACK[0x9B98] + (*(STACK[0x9B80] + 213) & 0x3F ^ 0x1FLL));
  LOBYTE(v103) = *(STACK[0x9B88] + (*(STACK[0xDF0] + 172) & 0x3F ^ 0x1FLL));
  LOBYTE(v102) = ((v103 ^ 0xA3) + 93) ^ ((v103 ^ 0x47) - 71) ^ ((v103 ^ a4) + 69);
  v111 = ((v103 ^ 0x40) - 64) ^ ((v103 ^ 7) - 7) ^ ((v103 ^ 0x18) - 24);
  LOBYTE(v102) = (((((v103 ^ 0xBF) + 65) ^ ((v103 ^ 0xF) - 15) ^ ((v103 ^ 0xEF) + 17)) - 82) * (v102 + 95) - 79 * v102 + 31) * (v111 + 95) - 112 * v111 - 121;
  LOBYTE(v101) = v102 & 7 ^ 0x1F;
  LOBYTE(v102) = v87 & 0x52 ^ 0x50 ^ (v102 ^ (2 * ((v102 ^ 0x68) & (2 * ((v102 ^ 0x68) & (2 * ((v102 ^ 0x68) & (2 * ((v102 ^ 0x68) & (2 * ((v102 ^ 0x68) & (2 * (((2 * v102) & 0x52 ^ 0x6E) & (v102 ^ 0x68) ^ v101)) ^ v101)) ^ v101)) ^ v101)) ^ v101)) ^ v101)) ^ 0x55) & (v87 ^ 0x7D);
  LOBYTE(v101) = (*(STACK[0x9B80] + 46) ^ 0xE1) & ~v107 | v107 & 0xBE;
  LOBYTE(v84) = *(STACK[0xEA0] + 60) ^ 0x5F;
  LODWORD(STACK[0xEA0]) = v107;
  LOBYTE(v101) = (v101 ^ 0x41) & (v107 & v84 ^ 0xE6) ^ v101 & 0x19;
  LOBYTE(v102) = v102 | v101 & 0xB4 ^ 0xB4 ^ (v101 ^ 0xFE) & (v87 ^ 0x36);
  LOBYTE(v102) = ((((v102 - ((2 * v102) & 0x3A) - 99) ^ 0x66) - 102) ^ (((v102 - ((2 * v102) & 0x3A) - 99) ^ 0xD1) + 47) ^ (((v102 - ((2 * v102) & 0x3A) - 99) ^ 0x2A) - 42)) + v106;
  LOBYTE(v106) = v102 + 7;
  LOBYTE(v102) = (v102 - 121) & 0x90 | 0x20;
  LOBYTE(v101) = v102 | v106 & 0x40;
  *(v110 + 185) = v106 ^ (2 * ((v106 ^ 0x10) & (2 * ((v106 ^ 0x10) & (2 * ((v106 ^ 0x10) & (2 * ((v106 ^ 0x10) & (2 * ((v106 ^ 0x10) & (2 * v102) ^ v101)) ^ v101)) ^ v101)) ^ v101)) ^ v101)) ^ 0x8F;
  v112 = STACK[0x9C20];
  LODWORD(v106) = (((*v112 ^ 0xFFFFFFA7) + 89) ^ ((*v112 ^ 0xFFFFFFEA) + 22) ^ ((*v112 ^ 0x12) - 18)) + ((171 * (*STACK[0x9BD8] ^ 0x5Fu)) >> 9) - 99;
  LOBYTE(v101) = v106 & 0x54 ^ 0x49;
  *v112 = v106 ^ (2 * ((v106 ^ 0x42) & (2 * ((v106 ^ 0x42) & (2 * ((v106 ^ 0x42) & (2 * ((v106 ^ 0x42) & (2 * (v106 & (2 * ((v101 | 2) ^ v106 & 0x16)) ^ (v101 | 2))) ^ v101)) ^ v101)) ^ v101)) ^ v101)) ^ 0xB;
  v113 = STACK[0x9BD0];
  LODWORD(v106) = ((*STACK[0x9BB0] >> 1) & 0x18 ^ 0xFFFFFFF7) + (((*v113 ^ 0xFFFFFFD9) + 39) ^ ((*v113 ^ 0x3E) - 62) ^ ((*v113 ^ 0xFFFFFFB8) + 72)) - 104;
  LOBYTE(v101) = v106 & 0x74 ^ 0x56;
  *v113 = v106 ^ (2 * ((v106 ^ 0x48) & (2 * ((v106 ^ 0x48) & (2 * ((v106 ^ 0x48) & (2 * ((v106 ^ 0x48) & (2 * ((v106 ^ 0x48) & (2 * v101) ^ v101)) ^ v101)) ^ v101)) ^ v101)) ^ v101)) ^ 0x2B;
  LODWORD(v106) = (LODWORD(STACK[0xDA0]) ^ 0x5F) & (LODWORD(STACK[0xDB0]) ^ 0xFFFFFFD6) ^ STACK[0xDA0] & 0x89;
  LODWORD(v113) = (STACK[0xD80] & 9 ^ 0x58 ^ (STACK[0xDA0] & 0x34 ^ 0xD6 ^ (LODWORD(STACK[0xDA0]) ^ 0xA0) & (LODWORD(STACK[0xDB0]) ^ 0x94)) & (LODWORD(STACK[0xD80]) ^ 0x5F)) & (v106 ^ 0xFFFFFFF6) ^ v106 & 0xAE;
  v114 = ((v113 ^ 0xF6) - 8) ^ ((v113 ^ 9) + 9) ^ ((v113 ^ 0xA6) - 88);
  LODWORD(v106) = (LODWORD(STACK[0xD20]) ^ 0x14) & (LODWORD(STACK[0xD30]) ^ 0xFFFFFFA0) ^ STACK[0xD30] & 0x4B;
  LODWORD(v98) = (v98 & 7 ^ 0x6E ^ (((v106 ^ 0xFFFFFFCF) & 0xF4 | STACK[0xD30] & ~v106 & 0x23 | v106 & 8) ^ 0xC0) & (v98 ^ 0x5F)) & (v98 & 0x6C ^ 0xFFFFFFDF) ^ v98 & 4;
  LODWORD(v31) = ((v98 ^ 0x1C) + 31) ^ ((v98 ^ 0xFFFFFFD6) - 43) ^ ((v98 ^ 0xFFFFFFA3) - 94);
  v115 = STACK[0x9B80];
  LOBYTE(v98) = 3 * (((*(STACK[0xEB0] + 37) & 0x71 ^ 0xB8) - 36) ^ ((*(STACK[0xEB0] + 37) & 0x71) + 116) ^ ((*(STACK[0xEB0] + 37) & 0x71 ^ 0x63) + 1)) + (((*(v115 + 124) ^ 0x6A) - 106) ^ ((*(v115 + 124) ^ 0xA2) + 94) ^ ((*(v115 + 124) ^ v9) + 105)) - 79;
  LOBYTE(v106) = v98 & 0xC1 ^ 0x37;
  *(v115 + 124) = v98 ^ (2 * ((v98 ^ 0x1A) & (2 * ((v98 ^ 0x1A) & (2 * ((v98 ^ 0x1A) & (2 * ((v98 ^ 0x1A) & (2 * ((v98 ^ 0x1A) & (2 * (((2 * v98) & 0x36 ^ 0x5A) & (v98 ^ 0x1A) ^ v106)) ^ v106)) ^ v106)) ^ v106)) ^ v106)) ^ v106)) ^ 0x9E;
  LOBYTE(v106) = ((*(STACK[0xE80] + 37) ^ 0x74) - 116) ^ ((*(STACK[0xE80] + 37) ^ 0xE4) + 28) ^ ((*(STACK[0xE80] + 37) ^ 0xCF) + 49);
  v116 = STACK[0x9B98];
  LOBYTE(v88) = *(STACK[0x9B98] + (*(v115 + 251) & 0x3F ^ 0x1FLL));
  LOBYTE(v115) = *(STACK[0x9B98] + (*(v115 + 120) & 0x3F ^ 0x1FLL));
  LOBYTE(v96) = ((v115 ^ 0x5F | v88 ^ 0x46) ^ v115 & 0x19) & (*STACK[0x9BE0] ^ 0x5F);
  LOBYTE(v115) = v96 & 0x24 | (v115 & 0xC0 ^ 0x9B ^ (v115 ^ 0x5F) & (v88 ^ 0x9F)) & ~v96;
  LOBYTE(v115) = (v115 ^ 0x7B) & (*STACK[0x9BD8] ^ 0x1D) ^ *STACK[0x9BD8] & 0xA0 ^ (v115 ^ 0x7B) & 0x42 | (*(STACK[0x9B98] + (*(v110 + 46) & 0x3F ^ 0x1FLL)) ^ 0x7E) & (*STACK[0x9BD8] ^ 0xA0) ^ *STACK[0x9BD8] & 0x19;
  v117 = (((*(v116 + 31) ^ v8) - 74) ^ ((*(v116 + 31) ^ 1) - 1) ^ ((*(v116 + 31) ^ 0x14) - 20)) + ((v115 - ((2 * v115) & 0xE3) - 15) ^ 0xF1) + 118;
  LOBYTE(v115) = v117 & 0xD3 ^ 0x35;
  *(v116 + 31) = v117 ^ (2 * ((v117 ^ 0x68) & (2 * ((v117 ^ 0x68) & (2 * ((v117 ^ 0x68) & (2 * ((v117 ^ 0x68) & (2 * ((v117 ^ 0x68) & (2 * (((2 * v117) & 0x52 ^ 0x3A) & (v117 ^ 0x68) ^ v115)) ^ v115)) ^ v115)) ^ v115)) ^ v115)) ^ v115)) ^ 0x8C;
  v118 = (*(v116 + 7) ^ 0x5F) & (v31 + 120);
  LODWORD(STACK[0xDA0]) = v31;
  LOBYTE(v115) = ((v31 & 0xC8) + 71) ^ (-65 - v31) & 0x8E;
  LOBYTE(v96) = (-65 - v31) ^ 0x48;
  v119 = ((*(v104 + 7) & 0xFC ^ 0xB9 ^ (*(v104 + 7) ^ 0x5F) & ((-65 - v31) ^ (2 * (v96 & (2 * (v96 & (2 * (v96 & (2 * (v96 & (2 * (v96 & (2 * ((-65 - v31) & (2 * v115) ^ v115)) ^ v115)) ^ v115)) ^ v115)) ^ v115)) ^ v115)) ^ 0xBA)) & ~v118 | v118 & 0x1A) ^ 0xE5;
  v120 = STACK[0x9B98];
  v121 = (((*(v120 + 40) ^ 0x1D) - 29) ^ ((*(v120 + 40) ^ 0x7D) - 125) ^ ((*(v120 + 40) ^ 0x3F) - 63)) + ((v119 / 3u) ^ 0x17) + (v11 & ((171 * v119) >> 8)) - 72;
  *(v120 + 40) = v121 ^ (2 * ((v121 ^ 0x10) & (2 * ((v121 ^ 0x10) & (2 * ((v121 ^ 0x10) & (2 * ((v121 ^ 0x10) & 0x30 ^ (v121 & 0xC0 | 0x38))) ^ (v121 & 0xC0 | 0x38))) ^ (v121 & 0xC0 | 0x38))) ^ (v121 & 0xC0 | 0x38))) ^ 0x9F;
  LODWORD(STACK[0xEB0]) = v87 ^ 0x7D;
  v122 = STACK[0x9B90];
  LOBYTE(v121) = (0x80 - v114) & 0xF3 ^ 0x2B;
  v123 = ((0x80 - v114) ^ (2 * (((0x80 - v114) ^ 0x1C) & (2 * (((0x80 - v114) ^ 0x3C) & (2 * (((0x80 - v114) ^ 0x3C) & (2 * (((0x80 - v114) ^ 0x3C) & (2 * v121) ^ v121)) ^ v121)) ^ v121)) ^ v121))) & 0x3F ^ 0x33;
  v124 = STACK[0x9B80];
  v125 = STACK[0x9B98];
  LOBYTE(v87) = *(STACK[0x9B98] + (*(STACK[0x9B80] + 58) & 0x3F ^ 0x1FLL));
  v126 = *(STACK[0x9B90] + v123);
  *(v124 + 141) = (*(v120 + 57) & 0x23 ^ a3 ^ (v87 & 0xF9 ^ 0x7C) & (*(v120 + 57) ^ 0x5D)) & (v87 | 0xF9) ^ 0x39;
  LODWORD(v120) = *(v122 + ((v106 + 3) & 0x3F));
  HIDWORD(v127) = ~v120;
  LODWORD(v127) = (v120 ^ 0x55555555) << 24;
  *(v124 + 31) ^= 0xAE ^ ((v127 >> 28) & 0x51 | (*(STACK[0xED0] + 60) ^ 0xF1) & ~(v127 >> 28));
  *STACK[0x9BF0] = *(STACK[0xDD0] + STACK[0xD50]);
  LOWORD(v108) = ((*(STACK[0xEC0] + 34) ^ 0x96DC) + 26916) ^ ((*(STACK[0xEC0] + 34) ^ 0x3B04) - 15108) ^ ((*(STACK[0xEC0] + 34) ^ 0xAD87) + 21113);
  v128 = 205 * v108 - 2029;
  LODWORD(v122) = *STACK[0x9BA0];
  v129 = ((v122 ^ 0xFFFFFFE0) & 0x7F ^ *(STACK[0x9B88] + 16) & 0x40 ^ (*(STACK[0x9B88] + 16) ^ 0x20) & (v122 ^ 0xFFFFFFE0) ^ 0xFFFFFFD7) & (v122 & 0xB5 ^ 0xFFFFFFEA) ^ (v122 & 0x20 | v9);
  if ((v108 + 204) <= 0xD5u)
  {
    v130 = -5;
  }

  else
  {
    v130 = a4;
  }

  v131 = (((*(v125 + 28) ^ 0xFFFFFFCD) + 51) ^ ((*(v125 + 28) ^ 0x6A) - 106) ^ ((*(v125 + 28) ^ 0xFFFFFFF8) + 8)) + v130 - ((v128 & 0xFC00) >> 10) - v129;
  v132 = v131 & 0xDD ^ 0x2B;
  *(v125 + 28) = v131 ^ (2 * ((v131 ^ 0xE) & (2 * ((v131 ^ 0xE) & (2 * ((v131 ^ 0xE) & (2 * ((v131 ^ 0xE) & (2 * ((v131 ^ 0xE) & (2 * (((2 * (v131 & 0xF)) ^ 0x52) & (v131 ^ 0xE) ^ v132)) ^ v132)) ^ v132)) ^ v132)) ^ v132)) ^ v132)) ^ 0x82;
  v133 = STACK[0xE60];
  v134 = STACK[0xE40];
  v135 = (LODWORD(STACK[0xE40]) ^ 0x5F) & (LODWORD(STACK[0xE60]) ^ 0x6F);
  LODWORD(STACK[0xDF0]) = LODWORD(STACK[0xE60]) ^ 0xFFFFFFA0;
  LODWORD(STACK[0xDD0]) = v133 & 0x45;
  LODWORD(STACK[0xEC0]) = (v126 ^ 0x5F) * (v126 ^ 0x5F) * (v126 ^ 0x5F);
  v136 = STACK[0x4FB4];
  LODWORD(STACK[0xDC0]) = v134 & 0x30 ^ v135 ^ 0xFFFFFFEF;
  LODWORD(STACK[0xE20]) = v135 & 0x80;
  v137 = STACK[0xE30];
  LODWORD(STACK[0xE60]) = (LODWORD(STACK[0xE30]) ^ 0xFFFFFFBC) + 68;
  LODWORD(STACK[0xE40]) = v137 ^ 0x4D;
  LODWORD(STACK[0xE70]) = (v137 ^ 0xFFFFFFAE) + 82;
  LODWORD(STACK[0xE80]) = 16 * LODWORD(STACK[0xD90]);
  return (*(STACK[0xF18] + 8 * ((495 * ((((v136 ^ 0xFAB6B0CD) + 88690483) ^ ((v136 ^ 0x7E1A94DD) - 2115671261) ^ ((v136 ^ 0x85C030CF) + 2051002161)) == -23860447)) ^ a1)))();
}

uint64_t sub_100200904()
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
  STACK[0xC1C0] = 0;
  STACK[0xC1C8] = v0;
  v10 = 16777619 * ((553300517 * v9 + 7) ^ (553300517 * v9)) % 7;
  v11 = *(&STACK[0xC1C0] | v10);
  *(&STACK[0xC1C0] | v10) = 0;
  LOBYTE(STACK[0xC1C7]) = v11;
  v12 = 16777619 * ((553300517 * v9 + 6) ^ (553300517 * v9)) % 6;
  v13 = *(&STACK[0xC1C0] | v12);
  *(&STACK[0xC1C0] | v12) = STACK[0xC1C6];
  LOBYTE(STACK[0xC1C6]) = v13;
  v14 = 16777619 * ((553300517 * v9 + 5) ^ (553300517 * v9)) % 5;
  v15 = *(&STACK[0xC1C0] | v14);
  *(&STACK[0xC1C0] | v14) = STACK[0xC1C5];
  LOBYTE(STACK[0xC1C5]) = v15;
  v16 = STACK[0xC1C0];
  LOBYTE(STACK[0xC1C0]) = STACK[0xC1C4];
  LOBYTE(STACK[0xC1C4]) = v16;
  v17 = 16777619 * ((553300517 * v9 + 3) ^ (553300517 * v9)) % 3;
  v18 = *(&STACK[0xC1C0] | v17);
  *(&STACK[0xC1C0] | v17) = STACK[0xC1C3];
  LOBYTE(STACK[0xC1C3]) = v18;
  v19 = STACK[0xC1C1];
  LOBYTE(STACK[0xC1C2]) = STACK[0xC1C0];
  LOWORD(STACK[0xC1C0]) = v19;
  v20 = vdup_n_s32(553300517 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xC1C0] = vmla_s32(v22, STACK[0xC1C0], vdup_n_s32(0x1000193u));
  STACK[0xC1C8] ^= STACK[0xC1C0];
  STACK[0xC1C8] = vmul_s32(vsub_s32(STACK[0xC1C8], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xC1CA];
  LOWORD(STACK[0xC1C9]) = STACK[0xC1C8];
  LOBYTE(STACK[0xC1C8]) = v23;
  v24 = (&STACK[0xC1C8] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xC1CB];
  LOBYTE(STACK[0xC1CB]) = v19;
  LOBYTE(v24) = STACK[0xC1C8];
  LOBYTE(STACK[0xC1C8]) = STACK[0xC1CC];
  LOBYTE(STACK[0xC1CC]) = v24;
  v25 = (&STACK[0xC1C8] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xC1CD];
  LOBYTE(STACK[0xC1CD]) = v24;
  v26 = (&STACK[0xC1C8] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC1CE];
  LOBYTE(STACK[0xC1CE]) = v25;
  v27 = (&STACK[0xC1C8] | v10);
  v28 = *v27;
  *v27 = STACK[0xC1CF];
  LOBYTE(STACK[0xC1CF]) = v28;
  v29 = STACK[0xC1C8];
  v30 = (553300517 * STACK[0xC1C8]) ^ v9;
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
  *STACK[0x940] = STACK[0xC1C8];
  return (*(STACK[0xF18] + 8 * (v1 + 3340)))(v47, v48);
}

uint64_t sub_100200DCC@<X0>(int a1@<W1>, unsigned int a2@<W2>, int a3@<W8>)
{
  LODWORD(STACK[0xEC0]) = a1;
  v11 = 1993 * (a1 ^ 0x8B32);
  LODWORD(STACK[0xD60]) = v11;
  LODWORD(STACK[0xAA8]) = a2;
  v12 = (((v7 ^ (a2 >> 5)) + v6) ^ ((v9 ^ (a2 >> 5)) + v8) ^ ((v5 ^ (a2 >> 5)) + v4)) + v3;
  v10[11] = v12;
  STACK[0xD80] = *(STACK[0xF18] + 8 * a3);
  v13 = STACK[0x7690];
  STACK[0xD70] = STACK[0x7690];
  v14 = *v10;
  v15 = v10[1];
  v16 = v10[2];
  v17 = v10[3];
  v18 = v11 ^ v15 ^ 0xAB;
  v19 = v10[4];
  v20 = v10[5];
  v21 = v10[6];
  v22 = v10[7];
  v24 = v10[8];
  v23 = v10[9];
  v25 = v10[10];
  LOBYTE(v11) = (*v10 ^ 0xBA) - 39;
  STACK[0x7690] = v13 + 64;
  LODWORD(STACK[0xDD0]) = v10[12];
  LODWORD(STACK[0xEB0]) = v10[13];
  LODWORD(STACK[0xEA0]) = (v25 ^ 0x79EA5DBA) + 217;
  LODWORD(STACK[0xE30]) = v15;
  LODWORD(STACK[0xE20]) = v14;
  LOBYTE(v11) = v11 ^ v14 ^ ((v14 ^ 0x92) - 15) ^ ((v14 ^ 0x62) + 1) ^ ((v14 ^ 0xD7) - 74);
  LODWORD(STACK[0xE40]) = v16;
  LODWORD(STACK[0xE60]) = v17;
  LODWORD(STACK[0xE70]) = v19;
  LODWORD(STACK[0xE80]) = v20;
  LODWORD(STACK[0xE90]) = v21;
  v26 = ((v20 ^ 0xBA) - 39) ^ v20 ^ ((v20 ^ 0x92) - 15) ^ ((v20 ^ 0x62) + 1) ^ ((v20 ^ 0xD7) - 74);
  LODWORD(STACK[0xDE0]) = v22;
  LOBYTE(v14) = ((v22 ^ 0xBA) - 39) ^ v22 ^ ((v22 ^ 0x92) - 15) ^ ((v22 ^ 0x62) + 1) ^ ((v22 ^ 0xD7) - 74);
  LODWORD(STACK[0xE10]) = v24;
  LODWORD(STACK[0xE00]) = v23;
  v27 = ((v24 ^ 0xBA) - 39) ^ v24 ^ ((v24 ^ 0x92) - 15) ^ ((v24 ^ 0x62) + 1) ^ ((v24 ^ 0xD7) - 74);
  LODWORD(STACK[0xDC0]) = v25;
  v28 = ((v23 ^ 0xBA) - 39) ^ v23 ^ ((v23 ^ 0x92) - 15) ^ ((v23 ^ 0x62) + 1) ^ ((v23 ^ 0xD7) - 74);
  v29 = LODWORD(STACK[0xEA0]) ^ v25 ^ ((v25 ^ 0x92) - 15) ^ ((v25 ^ 0x62) + 1) ^ ((v25 ^ 0xD7) - 74);
  v30 = v12;
  v31 = STACK[0xDD0];
  v32 = STACK[0xEB0];
  v33 = v10[14];
  v34 = v10[15];
  v35 = *(&off_1010A0B50 + (LODWORD(STACK[0xEC0]) ^ 0x893D)) - 2050732330;
  v36.i8[0] = *(v35 + (v11 ^ 0x9DLL));
  v36.i8[1] = *(v35 + (((v18 - 39) ^ v15 ^ ((v15 ^ 0x92) - 15) ^ ((v15 ^ 0x62) + 1) ^ ((v15 ^ 0xD7) - 74)) ^ 0x9DLL));
  v36.i8[2] = *(v35 + ((((v16 ^ 0xBA) - 39) ^ v16 ^ ((v16 ^ 0x92) - 15) ^ ((v16 ^ 0x62) + 1) ^ ((v16 ^ 0xD7) - 74)) ^ 0x9DLL));
  v36.i8[3] = *(v35 + ((((v17 ^ 0xBA) - 39) ^ v17 ^ ((v17 ^ 0x92) - 15) ^ ((v17 ^ 0x62) + 1) ^ ((v17 ^ 0xD7) - 74)) ^ 0x9DLL));
  v36.i8[4] = *(v35 + ((((v19 ^ 0xBA) - 39) ^ v19 ^ ((v19 ^ 0x92) - 15) ^ ((v19 ^ 0x62) + 1) ^ ((v19 ^ 0xD7) - 74)) ^ 0x9DLL));
  v36.i8[5] = *(v35 + (v26 ^ 0x9DLL));
  v37 = v27;
  v38 = (((LODWORD(STACK[0xDD0]) ^ 0xBA) - 39) ^ LODWORD(STACK[0xDD0]) ^ ((LODWORD(STACK[0xDD0]) ^ 0x92) - 15) ^ ((LODWORD(STACK[0xDD0]) ^ 0x62) + 1) ^ ((LODWORD(STACK[0xDD0]) ^ 0xD7) - 74)) ^ 0x9DLL;
  v39 = (((LODWORD(STACK[0xEB0]) ^ 0xBA) - 39) ^ LODWORD(STACK[0xEB0]) ^ ((LODWORD(STACK[0xEB0]) ^ 0x92) - 15) ^ ((LODWORD(STACK[0xEB0]) ^ 0x62) + 1) ^ ((LODWORD(STACK[0xEB0]) ^ 0xD7) - 74)) ^ 0x9DLL;
  STACK[0xDA0] = v35;
  v36.i8[6] = *(v35 + ((((v21 ^ 0xBA) - 39) ^ v21 ^ ((v21 ^ 0x92) - 15) ^ ((v21 ^ 0x62) + 1) ^ ((v21 ^ 0xD7) - 74)) ^ 0x9DLL));
  v36.i8[7] = *(v35 + (v14 ^ 0x9DLL));
  v36.i8[8] = *(v35 + (v37 ^ 0x9D));
  v36.i8[9] = *(v35 + (v28 ^ 0x9DLL));
  v36.i8[10] = *(v35 + (v29 ^ 0x9DLL));
  v36.i8[11] = *(v35 + ((((v12 ^ 0xBA) - 39) ^ v12 ^ ((v12 ^ 0x92) - 15) ^ ((v12 ^ 0x62) + 1) ^ ((v12 ^ 0xD7) - 74)) ^ 0x9DLL));
  v36.i8[12] = *(v35 + v38);
  v36.i8[13] = *(v35 + v39);
  v36.i8[14] = *(v35 + ((((v33 ^ 0xBA) - 39) ^ v33 ^ ((v33 ^ 0x92) - 15) ^ ((v33 ^ 0x62) + 1) ^ ((v33 ^ 0xD7) - 74)) ^ 0x9DLL));
  v36.i8[15] = *(v35 + ((((v34 ^ 0xBA) - 39) ^ v34 ^ ((v34 ^ 0x92) - 15) ^ ((v34 ^ 0x62) + 1) ^ ((v34 ^ 0xD7) - 74)) ^ 0x9DLL));
  v40 = LODWORD(STACK[0xE20]) ^ 0xC981E947;
  v41 = STACK[0xE30];
  LODWORD(v13) = LODWORD(STACK[0xE30]) ^ 0xC981E947;
  LODWORD(v37) = STACK[0xE20] & 0xD8A3AA63;
  LODWORD(STACK[0xD00]) = v37;
  v42 = v41 & 0xD8A3AA63;
  LODWORD(STACK[0xD20]) = v41 & 0xD8A3AA63;
  LODWORD(v38) = STACK[0xE40];
  v43 = STACK[0xE40] & 0xD8A3AA63;
  LODWORD(STACK[0xD30]) = v43;
  LODWORD(STACK[0xB50]) = (2 * (v37 ^ 0x11224324)) & 0x11024004 ^ v37 ^ 0x11224324 ^ ((2 * (v37 ^ 0x11224324)) ^ 0x22448648) & v40;
  LODWORD(STACK[0xD90]) = (2 * (v42 ^ 0x11224324)) & 0x11024004 ^ v42 ^ 0x11224324 ^ ((2 * (v42 ^ 0x11224324)) ^ 0x22448648) & v13;
  v44 = v38 ^ 0xC981E947;
  LODWORD(STACK[0xD40]) = (2 * (v43 ^ 0x11224324)) & 0x11024004 ^ v43 ^ 0x11224324 ^ ((2 * (v43 ^ 0x11224324)) ^ 0x22448648) & (v38 ^ 0xC981E947);
  v45 = STACK[0xE60];
  LODWORD(v37) = STACK[0xE60] & 0xD8A3AA63;
  LODWORD(STACK[0xCF0]) = v37;
  LODWORD(v37) = v37 ^ 0x11224324;
  v46 = (2 * v37) & 0x11024004 ^ v37;
  v47 = (2 * v37) ^ 0x22448648;
  LODWORD(v37) = v45 ^ 0xC981E947;
  LODWORD(STACK[0xC30]) = v46 ^ v47 & (v45 ^ 0xC981E947);
  LODWORD(v38) = STACK[0xE70];
  v48 = STACK[0xE70] & 0xD8A3AA63;
  LODWORD(STACK[0xCE0]) = v48;
  v48 ^= 0x11224324u;
  v49 = (2 * v48) & 0x11024004 ^ v48;
  v50 = (2 * v48) ^ 0x22448648;
  v51 = v38 ^ 0xC981E947;
  LODWORD(STACK[0xC20]) = v49 ^ v50 & (v38 ^ 0xC981E947);
  LODWORD(v39) = STACK[0xE80];
  v52 = STACK[0xE80] & 0xD8A3AA63;
  LODWORD(STACK[0xCD0]) = v52;
  v52 ^= 0x11224324u;
  LODWORD(v38) = (2 * v52) & 0x11024004 ^ v52;
  v53 = (2 * v52) ^ 0x22448648;
  v54 = v39 ^ 0xC981E947;
  LODWORD(STACK[0xBE0]) = v38 ^ v53 & (v39 ^ 0xC981E947);
  v55 = STACK[0xE90];
  v56 = STACK[0xE90] & 0xD8A3AA63;
  LODWORD(STACK[0xCC0]) = v56;
  v56 ^= 0x11224324u;
  LODWORD(v39) = (2 * v56) & 0x11024004 ^ v56;
  LODWORD(v38) = (2 * v56) ^ 0x22448648;
  v57 = v55 ^ 0xC981E947;
  LODWORD(STACK[0xBD0]) = v39 ^ v38 & (v55 ^ 0xC981E947);
  v58 = STACK[0xDE0];
  LODWORD(v38) = STACK[0xDE0] & 0xD8A3AA63;
  LODWORD(STACK[0xCB0]) = v38;
  v59 = v58 ^ 0xC981E947;
  LODWORD(STACK[0xBC0]) = (2 * (v38 ^ 0x11224324)) & 0x11024004 ^ v38 ^ 0x11224324 ^ ((2 * (v38 ^ 0x11224324)) ^ 0x22448648) & (v58 ^ 0xC981E947);
  LODWORD(v38) = STACK[0xE10];
  LODWORD(v39) = STACK[0xE10] & 0xD8A3AA63;
  LODWORD(STACK[0xCA0]) = v39;
  LODWORD(v39) = v39 ^ 0x11224324;
  v60 = (2 * v39) & 0x11024004 ^ v39;
  v61 = (2 * v39) ^ 0x22448648;
  LODWORD(v39) = v38 ^ 0xC981E947;
  LODWORD(STACK[0xBB0]) = v60 ^ v61 & (v38 ^ 0xC981E947);
  LODWORD(v38) = STACK[0xE00];
  v62 = STACK[0xE00] & 0xD8A3AA63;
  LODWORD(STACK[0xC90]) = v62;
  v62 ^= 0x11224324u;
  v63 = (2 * v62) & 0x11024004 ^ v62;
  v64 = (2 * v62) ^ 0x22448648;
  v65 = v38 ^ 0xC981E947;
  LODWORD(STACK[0xBA0]) = v63 ^ v64 & (v38 ^ 0xC981E947);
  LODWORD(v38) = STACK[0xDC0];
  v66 = STACK[0xDC0] & 0xD8A3AA63;
  LODWORD(STACK[0xC80]) = v66;
  LODWORD(STACK[0xB90]) = (2 * (v66 ^ 0x11224324)) & 0x11024004 ^ v66 ^ 0x11224324 ^ ((2 * (v66 ^ 0x11224324)) ^ 0x22448648) & (v38 ^ 0xC981E947);
  LODWORD(STACK[0xDB0]) = v30;
  LODWORD(STACK[0xC70]) = v30 & 0xD8A3AA63;
  LODWORD(STACK[0xB80]) = (2 * (v30 & 0xD8A3AA63 ^ 0x11224324)) & 0x11024004 ^ v30 & 0xD8A3AA63 ^ 0x11224324 ^ ((2 * (v30 & 0xD8A3AA63 ^ 0x11224324)) ^ 0x22448648) & (v30 ^ 0xC981E947);
  LODWORD(STACK[0xC60]) = v31 & 0xD8A3AA63;
  LODWORD(STACK[0xB70]) = (2 * (v31 & 0xD8A3AA63 ^ 0x11224324)) & 0x11024004 ^ v31 & 0xD8A3AA63 ^ 0x11224324 ^ ((2 * (v31 & 0xD8A3AA63 ^ 0x11224324)) ^ 0x22448648) & (v31 ^ 0xC981E947);
  LODWORD(STACK[0xC50]) = v32 & 0xD8A3AA63;
  v67 = v32 & 0xD8A3AA63 ^ 0x11224324;
  v68 = (2 * v67) & 0x11024004 ^ v67;
  v69 = (2 * v67) ^ 0x22448648;
  v70 = v32 ^ 0xC981E947;
  LODWORD(STACK[0xB60]) = v68 ^ v69 & (v32 ^ 0xC981E947);
  LODWORD(STACK[0xEA0]) = v33;
  LODWORD(STACK[0xC40]) = v33 & 0xD8A3AA63;
  LODWORD(STACK[0xB20]) = (2 * (v33 & 0xD8A3AA63 ^ 0x11224324)) & 0x11024004 ^ v33 & 0xD8A3AA63 ^ 0x11224324 ^ ((2 * (v33 & 0xD8A3AA63 ^ 0x11224324)) ^ 0x22448648) & (v33 ^ 0xC981E947);
  LODWORD(STACK[0xDF0]) = v34;
  LODWORD(STACK[0xD50]) = v34 & 0xD8A3AA63;
  LODWORD(STACK[0xAE8]) = (2 * (v34 & 0xD8A3AA63 ^ 0x11224324)) & 0x11024004 ^ v34 & 0xD8A3AA63 ^ 0x11224324 ^ ((2 * (v34 & 0xD8A3AA63 ^ 0x11224324)) ^ 0x22448648) & (v34 ^ 0xC981E947);
  LODWORD(STACK[0xB40]) = ((2 * v40) ^ 0x22448648) & v40;
  LODWORD(STACK[0xB30]) = ((2 * v59) ^ 0x22448648) & v59;
  LODWORD(STACK[0xB10]) = ((2 * v39) ^ 0x22448648) & v39;
  LODWORD(STACK[0xB00]) = ((2 * v65) ^ 0x22448648) & v65;
  LODWORD(STACK[0xAF0]) = ((2 * (v38 ^ 0xC981E947)) ^ 0x22448648) & (v38 ^ 0xC981E947);
  LODWORD(STACK[0xAE0]) = ((2 * (v30 ^ 0xC981E947)) ^ 0x22448648) & (v30 ^ 0xC981E947);
  LODWORD(STACK[0xAC8]) = (2 * v40) & 0x11224324 ^ 0x11224124 ^ LODWORD(STACK[0xB40]);
  LODWORD(STACK[0xAD0]) = (2 * v13) & 0x11224324 ^ 0x11224124 ^ ((2 * v13) ^ 0x22448648) & v13;
  v71 = (2 * v44) & 0x11224324 ^ 0x11224124 ^ ((2 * v44) ^ 0x22448648) & v44;
  v72 = (2 * v37) & 0x11224324 ^ 0x11224124 ^ ((2 * v37) ^ 0x22448648) & v37;
  v73 = (2 * v54) & 0x11224324 ^ 0x11224124 ^ ((2 * v54) ^ 0x22448648) & v54;
  v74 = (2 * v57) & 0x11224324 ^ 0x11224124 ^ ((2 * v57) ^ 0x22448648) & v57;
  LODWORD(v37) = (2 * v59) & 0x11224324 ^ 0x11224124 ^ LODWORD(STACK[0xB30]);
  v75 = (2 * v39) & 0x11224324 ^ 0x11224124 ^ LODWORD(STACK[0xB10]);
  v76 = (2 * v65) & 0x11224324 ^ 0x11224124 ^ LODWORD(STACK[0xB00]);
  v77 = (2 * (v38 ^ 0xC981E947)) & 0x11224324 ^ 0x11224124 ^ LODWORD(STACK[0xAF0]);
  v78 = (2 * (v30 ^ 0xC981E947)) & 0x11224324 ^ 0x11224124 ^ LODWORD(STACK[0xAE0]);
  v79 = (2 * (v31 ^ 0xC981E947)) & 0x11224324 ^ 0x11224124 ^ ((2 * (v31 ^ 0xC981E947)) ^ 0x22448648) & (v31 ^ 0xC981E947);
  v80 = (2 * v70) & 0x11224324 ^ 0x11224124 ^ ((2 * v70) ^ 0x22448648) & v70;
  v81 = (2 * (v33 ^ 0xC981E947)) & 0x11224324 ^ 0x11224124 ^ ((2 * (v33 ^ 0xC981E947)) ^ 0x22448648) & (v33 ^ 0xC981E947);
  LODWORD(v39) = (2 * (v34 ^ 0xC981E947)) & 0x11224324 ^ 0x11224124 ^ ((2 * (v34 ^ 0xC981E947)) ^ 0x22448648) & (v34 ^ 0xC981E947);
  LODWORD(STACK[0xAC0]) = v39;
  v82 = STACK[0xAC8];
  LODWORD(STACK[0xAD8]) = (4 * LODWORD(STACK[0xB50])) & 0x11224324 ^ LODWORD(STACK[0xB50]) ^ ((4 * LODWORD(STACK[0xB50])) ^ 0x44890C90) & STACK[0xAC8];
  v83 = STACK[0xAD0];
  LODWORD(STACK[0xAE0]) = (4 * LODWORD(STACK[0xD90])) & 0x11224324 ^ LODWORD(STACK[0xD90]) ^ ((4 * LODWORD(STACK[0xD90])) ^ 0x44890C90) & STACK[0xAD0];
  LODWORD(STACK[0xAF0]) = (4 * LODWORD(STACK[0xD40])) & 0x11224324 ^ LODWORD(STACK[0xD40]) ^ ((4 * LODWORD(STACK[0xD40])) ^ 0x44890C90) & v71;
  LODWORD(STACK[0xB00]) = (4 * LODWORD(STACK[0xC30])) & 0x11224324 ^ LODWORD(STACK[0xC30]) ^ ((4 * LODWORD(STACK[0xC30])) ^ 0x44890C90) & v72;
  LODWORD(v38) = (2 * v51) & 0x11224324 ^ 0x11224124 ^ ((2 * v51) ^ 0x22448648) & v51;
  LODWORD(STACK[0xB10]) = (4 * LODWORD(STACK[0xC20])) & 0x11224324 ^ LODWORD(STACK[0xC20]) ^ ((4 * LODWORD(STACK[0xC20])) ^ 0x44890C90) & v38;
  LODWORD(STACK[0xB30]) = (4 * LODWORD(STACK[0xBE0])) & 0x11224324 ^ LODWORD(STACK[0xBE0]) ^ ((4 * LODWORD(STACK[0xBE0])) ^ 0x44890C90) & v73;
  LODWORD(STACK[0xB40]) = (4 * LODWORD(STACK[0xBD0])) & 0x11224324 ^ LODWORD(STACK[0xBD0]) ^ ((4 * LODWORD(STACK[0xBD0])) ^ 0x44890C90) & v74;
  LODWORD(STACK[0xB50]) = (4 * LODWORD(STACK[0xBC0])) & 0x11224324 ^ LODWORD(STACK[0xBC0]) ^ ((4 * LODWORD(STACK[0xBC0])) ^ 0x44890C90) & v37;
  LODWORD(STACK[0xBB0]) ^= (4 * LODWORD(STACK[0xBB0])) & 0x11224324 ^ ((4 * LODWORD(STACK[0xBB0])) ^ 0x44890C90) & v75;
  LODWORD(STACK[0xBC0]) = (4 * LODWORD(STACK[0xBA0])) & 0x11224324 ^ LODWORD(STACK[0xBA0]) ^ ((4 * LODWORD(STACK[0xBA0])) ^ 0x44890C90) & v76;
  LODWORD(STACK[0xBD0]) = (4 * LODWORD(STACK[0xB90])) & 0x11224324 ^ LODWORD(STACK[0xB90]) ^ ((4 * LODWORD(STACK[0xB90])) ^ 0x44890C90) & v77;
  LODWORD(STACK[0xBE0]) = (4 * LODWORD(STACK[0xB80])) & 0x11224324 ^ LODWORD(STACK[0xB80]) ^ ((4 * LODWORD(STACK[0xB80])) ^ 0x44890C90) & v78;
  LODWORD(STACK[0xC20]) = (4 * LODWORD(STACK[0xB70])) & 0x11224324 ^ LODWORD(STACK[0xB70]) ^ ((4 * LODWORD(STACK[0xB70])) ^ 0x44890C90) & v79;
  LODWORD(STACK[0xC30]) = (4 * LODWORD(STACK[0xB60])) & 0x11224324 ^ LODWORD(STACK[0xB60]) ^ ((4 * LODWORD(STACK[0xB60])) ^ 0x44890C90) & v80;
  LODWORD(STACK[0xD40]) = (4 * LODWORD(STACK[0xB20])) & 0x11224324 ^ LODWORD(STACK[0xB20]) ^ ((4 * LODWORD(STACK[0xB20])) ^ 0x44890C90) & v81;
  LODWORD(STACK[0xD90]) = (4 * LODWORD(STACK[0xAE8])) & 0x11224324 ^ LODWORD(STACK[0xAE8]) ^ ((4 * LODWORD(STACK[0xAE8])) ^ 0x44890C90) & v39;
  LODWORD(v35) = 4 * v71;
  LODWORD(STACK[0xBA0]) = ((4 * v71) ^ 0x44890C90) & v71;
  v84 = 4 * v72;
  v85 = ((4 * v72) ^ 0x44890C90) & v72;
  LODWORD(v38) = 4 * v38;
  LODWORD(STACK[0xB90]) = (v38 ^ 0x44890C90) & ((2 * v51) & 0x11224324 ^ 0x11224124 ^ ((2 * v51) ^ 0x22448648) & v51);
  LODWORD(STACK[0xB80]) = ((4 * v74) ^ 0x44890C90) & v74;
  LODWORD(STACK[0xB70]) = ((4 * v37) ^ 0x44890C90) & v37;
  v86 = 4 * v77;
  v87 = ((4 * v77) ^ 0x44890C90) & v77;
  v88 = 4 * v78;
  v89 = ((4 * v78) ^ 0x44890C90) & v78;
  v90 = 4 * v79;
  v91 = ((4 * v79) ^ 0x44890C90) & v79;
  v92 = 4 * v80;
  LODWORD(STACK[0xB60]) = ((4 * v80) ^ 0x44890C90) & v80;
  v93 = 4 * v81;
  LODWORD(STACK[0xB20]) = ((4 * v81) ^ 0x44890C90) & v81;
  v94 = 4 * LODWORD(STACK[0xAC0]);
  LODWORD(STACK[0xAD0]) = (v94 ^ 0x44890C90) & STACK[0xAC0];
  v95 = (4 * v82) & 0x11224320 ^ 0x11224324 ^ ((4 * v82) ^ 0x44890C90) & v82;
  v96 = (4 * v83) & 0x11224320 ^ 0x11224324 ^ ((4 * v83) ^ 0x44890C90) & v83;
  LODWORD(v35) = v35 & 0x11224320 ^ 0x11224324 ^ LODWORD(STACK[0xBA0]);
  v97 = v84 & 0x11224320 ^ 0x11224324 ^ v85;
  LODWORD(STACK[0xAE8]) = v38 & 0x11224320 ^ 0x11224324 ^ LODWORD(STACK[0xB90]);
  v98 = (4 * v73) & 0x11224320 ^ 0x11224324 ^ ((4 * v73) ^ 0x44890C90) & v73;
  v99 = (4 * v74) & 0x11224320 ^ 0x11224324 ^ LODWORD(STACK[0xB80]);
  v100 = (4 * v37) & 0x11224320 ^ 0x11224324 ^ LODWORD(STACK[0xB70]);
  v101 = (4 * v75) & 0x11224320 ^ 0x11224324 ^ ((4 * v75) ^ 0x44890C90) & v75;
  v102 = (4 * v76) & 0x11224320 ^ 0x11224324 ^ ((4 * v76) ^ 0x44890C90) & v76;
  LODWORD(v38) = v86 & 0x11224320 ^ 0x11224324 ^ v87;
  LODWORD(v39) = v88 & 0x11224320 ^ 0x11224324 ^ v89;
  v103 = v90 & 0x11224320 ^ 0x11224324 ^ v91;
  v104 = v92 & 0x11224320 ^ 0x11224324 ^ LODWORD(STACK[0xB60]);
  v105 = v93 & 0x11224320 ^ 0x11224324 ^ LODWORD(STACK[0xB20]);
  v106 = v94 & 0x11224320 ^ 0x11224324 ^ LODWORD(STACK[0xAD0]);
  LODWORD(STACK[0xB20]) = LODWORD(STACK[0xAD8]) ^ (16 * LODWORD(STACK[0xAD8])) & 0x11224320 ^ ((16 * LODWORD(STACK[0xAD8])) ^ 0x12243240) & v95;
  LODWORD(STACK[0xBA0]) = LODWORD(STACK[0xAE0]) ^ (16 * LODWORD(STACK[0xAE0])) & 0x11224320 ^ ((16 * LODWORD(STACK[0xAE0])) ^ 0x12243240) & v96;
  LODWORD(STACK[0xB90]) = LODWORD(STACK[0xAF0]) ^ (16 * LODWORD(STACK[0xAF0])) & 0x11224320 ^ ((16 * LODWORD(STACK[0xAF0])) ^ 0x12243240) & v35;
  LODWORD(STACK[0xB80]) = LODWORD(STACK[0xB00]) ^ (16 * LODWORD(STACK[0xB00])) & 0x11224320 ^ ((16 * LODWORD(STACK[0xB00])) ^ 0x12243240) & v97;
  v107 = STACK[0xAE8];
  LODWORD(STACK[0xB70]) = LODWORD(STACK[0xB10]) ^ (16 * LODWORD(STACK[0xB10])) & 0x11224320 ^ ((16 * LODWORD(STACK[0xB10])) ^ 0x12243240) & STACK[0xAE8];
  LODWORD(STACK[0xB60]) = LODWORD(STACK[0xB30]) ^ (16 * LODWORD(STACK[0xB30])) & 0x11224320 ^ ((16 * LODWORD(STACK[0xB30])) ^ 0x12243240) & v98;
  LODWORD(STACK[0xB40]) ^= (16 * LODWORD(STACK[0xB40])) & 0x11224320 ^ ((16 * LODWORD(STACK[0xB40])) ^ 0x12243240) & v99;
  LODWORD(STACK[0xB50]) ^= (16 * LODWORD(STACK[0xB50])) & 0x11224320 ^ ((16 * LODWORD(STACK[0xB50])) ^ 0x12243240) & v100;
  LODWORD(STACK[0xBB0]) ^= (16 * LODWORD(STACK[0xBB0])) & 0x11224320 ^ ((16 * LODWORD(STACK[0xBB0])) ^ 0x12243240) & v101;
  LODWORD(STACK[0xBC0]) ^= (16 * LODWORD(STACK[0xBC0])) & 0x11224320 ^ ((16 * LODWORD(STACK[0xBC0])) ^ 0x12243240) & v102;
  LODWORD(STACK[0xBD0]) ^= (16 * LODWORD(STACK[0xBD0])) & 0x11224320 ^ ((16 * LODWORD(STACK[0xBD0])) ^ 0x12243240) & v38;
  LODWORD(STACK[0xBE0]) ^= (16 * LODWORD(STACK[0xBE0])) & 0x11224320 ^ ((16 * LODWORD(STACK[0xBE0])) ^ 0x12243240) & v39;
  LODWORD(STACK[0xC20]) ^= (16 * LODWORD(STACK[0xC20])) & 0x11224320 ^ ((16 * LODWORD(STACK[0xC20])) ^ 0x12243240) & v103;
  LODWORD(STACK[0xC30]) ^= (16 * LODWORD(STACK[0xC30])) & 0x11224320 ^ ((16 * LODWORD(STACK[0xC30])) ^ 0x12243240) & v104;
  LODWORD(STACK[0xD40]) ^= (16 * LODWORD(STACK[0xD40])) & 0x11224320 ^ ((16 * LODWORD(STACK[0xD40])) ^ 0x12243240) & v105;
  LODWORD(STACK[0xD90]) ^= (16 * LODWORD(STACK[0xD90])) & 0x11224320 ^ ((16 * LODWORD(STACK[0xD90])) ^ 0x12243240) & v106;
  LODWORD(STACK[0xB30]) = ((16 * v99) ^ 0x12243240) & v99;
  LODWORD(STACK[0xB10]) = ((16 * v100) ^ 0x12243240) & v100;
  LODWORD(STACK[0xB00]) = ((16 * v101) ^ 0x12243240) & v101;
  LODWORD(STACK[0xAF0]) = ((16 * v102) ^ 0x12243240) & v102;
  LODWORD(STACK[0xAD8]) = ((16 * v104) ^ 0x12243240) & v104;
  LODWORD(STACK[0xAD0]) = ((16 * v105) ^ 0x12243240) & v105;
  LODWORD(STACK[0xAC8]) = ((16 * v106) ^ 0x12243240) & v106;
  v108 = (16 * v107) & 0x11224300 ^ 0x1024100 ^ ((16 * v107) ^ 0x12243240) & v107;
  v109 = (16 * v99) & 0x11224300 ^ 0x1024100 ^ LODWORD(STACK[0xB30]);
  v110 = (16 * v100) & 0x11224300 ^ 0x1024100 ^ LODWORD(STACK[0xB10]);
  v111 = (16 * v101) & 0x11224300 ^ 0x1024100 ^ LODWORD(STACK[0xB00]);
  v112 = (16 * v102) & 0x11224300 ^ 0x1024100 ^ LODWORD(STACK[0xAF0]);
  LODWORD(STACK[0xAE0]) = (16 * v38) & 0x11224300 ^ 0x1024100 ^ ((16 * v38) ^ 0x12243240) & v38;
  LODWORD(STACK[0xAE8]) = (16 * v39) & 0x11224300 ^ 0x1024100 ^ ((16 * v39) ^ 0x12243240) & v39;
  LODWORD(STACK[0xAF0]) = (16 * v103) & 0x11224300 ^ 0x1024100 ^ ((16 * v103) ^ 0x12243240) & v103;
  LODWORD(v39) = (16 * v104) & 0x11224300 ^ 0x1024100 ^ LODWORD(STACK[0xAD8]);
  LODWORD(STACK[0xB00]) = (16 * v105) & 0x11224300 ^ 0x1024100 ^ LODWORD(STACK[0xAD0]);
  LODWORD(STACK[0xB10]) = (16 * v106) & 0x11224300 ^ 0x1024100 ^ LODWORD(STACK[0xAC8]);
  v113 = LODWORD(STACK[0xB20]) ^ 0x10200200;
  LODWORD(STACK[0xB30]) = v113;
  LODWORD(STACK[0xAD0]) = v113 << 8;
  LODWORD(STACK[0xB20]) = ((v113 << 8) ^ 0x22432400) & ((16 * v95) & 0x11224300 ^ 0x1024100 ^ ((16 * v95) ^ 0x12243240) & v95);
  v114 = LODWORD(STACK[0xBA0]) ^ 0x10200200;
  LODWORD(STACK[0xBA0]) = v114;
  v115 = v114 << 8;
  LODWORD(STACK[0xAD8]) = ((v114 << 8) ^ 0x22432400) & ((16 * v96) & 0x11224300 ^ 0x1024100 ^ ((16 * v96) ^ 0x12243240) & v96);
  v116 = LODWORD(STACK[0xB90]) ^ 0x10200200;
  LODWORD(STACK[0xB90]) = v116;
  v117 = v116 << 8;
  LODWORD(STACK[0xAC8]) = ((v116 << 8) ^ 0x22432400) & ((16 * v35) & 0x11224300 ^ 0x1024100 ^ ((16 * v35) ^ 0x12243240) & v35);
  v118 = LODWORD(STACK[0xB80]) ^ 0x10200200;
  LODWORD(STACK[0xB80]) = v118;
  v119 = v118 << 8;
  LODWORD(STACK[0xAC0]) = ((v118 << 8) ^ 0x22432400) & ((16 * v97) & 0x11224300 ^ 0x1024100 ^ ((16 * v97) ^ 0x12243240) & v97);
  v120 = LODWORD(STACK[0xB70]) ^ 0x10200200;
  LODWORD(STACK[0xB70]) = v120;
  LODWORD(STACK[0xAB8]) = ((v120 << 8) ^ 0x22432400) & v108;
  v121 = LODWORD(STACK[0xB60]) ^ 0x10200200;
  LODWORD(STACK[0xB60]) = ((v121 << 8) ^ 0x22432400) & ((16 * v98) & 0x11224300 ^ 0x1024100 ^ ((16 * v98) ^ 0x12243240) & v98);
  v122 = LODWORD(STACK[0xB40]) ^ 0x10200200;
  LODWORD(STACK[0xB40]) = ((v122 << 8) ^ 0x22432400) & v109;
  v123 = LODWORD(STACK[0xB50]) ^ 0x10200200;
  LODWORD(STACK[0xB50]) = ((v123 << 8) ^ 0x22432400) & v110;
  v124 = LODWORD(STACK[0xBB0]) ^ 0x10200200;
  LODWORD(STACK[0xBB0]) = ((v124 << 8) ^ 0x22432400) & v111;
  v125 = LODWORD(STACK[0xBC0]) ^ 0x10200200;
  LODWORD(STACK[0xBC0]) = ((v125 << 8) ^ 0x22432400) & v112;
  v126 = LODWORD(STACK[0xBD0]) ^ 0x10200200;
  LODWORD(STACK[0xBD0]) = ((v126 << 8) ^ 0x22432400) & STACK[0xAE0];
  v127 = LODWORD(STACK[0xBE0]) ^ 0x10200200;
  LODWORD(STACK[0xBE0]) = ((v127 << 8) ^ 0x22432400) & STACK[0xAE8];
  v128 = LODWORD(STACK[0xC20]) ^ 0x10200200;
  LODWORD(STACK[0xC20]) = ((v128 << 8) ^ 0x22432400) & STACK[0xAF0];
  v129 = LODWORD(STACK[0xC30]) ^ 0x10200200;
  LODWORD(STACK[0xC30]) = ((v129 << 8) ^ 0x22432400) & v39;
  LODWORD(v39) = LODWORD(STACK[0xD40]) ^ 0x10200200;
  LODWORD(STACK[0xD40]) = ((v39 << 8) ^ 0x22432400) & STACK[0xB00];
  v130 = LODWORD(STACK[0xD90]) ^ 0x10200200;
  LODWORD(STACK[0xB10]) &= (v130 << 8) ^ 0x22432400;
  v131 = STACK[0xAD0] & 0x11224300 ^ LODWORD(STACK[0xB30]) ^ LODWORD(STACK[0xB20]);
  LODWORD(STACK[0xD90]) = v115 & 0x11224300 ^ LODWORD(STACK[0xBA0]) ^ LODWORD(STACK[0xAD8]);
  v132 = v117 & 0x11224300 ^ LODWORD(STACK[0xB90]) ^ LODWORD(STACK[0xAC8]);
  v133 = v119 & 0x11224300 ^ LODWORD(STACK[0xB80]) ^ LODWORD(STACK[0xAC0]);
  v134 = (v120 << 8) & 0x11224300 ^ LODWORD(STACK[0xB70]) ^ LODWORD(STACK[0xAB8]);
  v135 = (v121 << 8) & 0x11224300 ^ v121 ^ LODWORD(STACK[0xB60]);
  v136 = (v122 << 8) & 0x11224300 ^ v122 ^ LODWORD(STACK[0xB40]);
  LODWORD(v35) = (v123 << 8) & 0x11224300 ^ v123 ^ LODWORD(STACK[0xB50]);
  v137 = (v124 << 8) & 0x11224300 ^ v124 ^ LODWORD(STACK[0xBB0]);
  v138 = (v125 << 8) & 0x11224300 ^ v125 ^ LODWORD(STACK[0xBC0]);
  v139 = (v126 << 8) & 0x11224300 ^ v126 ^ LODWORD(STACK[0xBD0]);
  v140 = (v127 << 8) & 0x11224300 ^ v127 ^ LODWORD(STACK[0xBE0]);
  LODWORD(v38) = (v128 << 8) & 0x11224300 ^ v128 ^ LODWORD(STACK[0xC20]);
  v141 = (v129 << 8) & 0x11224300 ^ v129 ^ LODWORD(STACK[0xC30]);
  v142 = (v39 << 8) & 0x11224300 ^ v39 ^ LODWORD(STACK[0xD40]);
  LODWORD(v13) = (v130 << 8) & 0x11224300 ^ v130 ^ LODWORD(STACK[0xB10]);
  v143 = STACK[0xE20];
  v144 = ((LOWORD(STACK[0xE20]) ^ (2 * v131)) >> 8) ^ 0x2CLL;
  v145 = *(&off_1010A0B50 + (LODWORD(STACK[0xEC0]) ^ 0x88A0)) - 604135147;
  STACK[0xD40] = v145;
  v146.i8[0] = *(v145 + v144);
  v146.i8[1] = *(v145 + (((LOWORD(STACK[0xE30]) ^ (2 * LOWORD(STACK[0xD90]))) >> 8) ^ 0x2CLL));
  v146.i8[2] = *(v145 + (((LOWORD(STACK[0xE40]) ^ (2 * v132)) >> 8) ^ 0x2CLL));
  v146.i8[3] = *(v145 + (((LOWORD(STACK[0xE60]) ^ (2 * v133)) >> 8) ^ 0x2CLL));
  v146.i8[4] = *(v145 + (((LOWORD(STACK[0xE70]) ^ (2 * v134)) >> 8) ^ 0x2CLL));
  v146.i8[5] = *(v145 + (((LOWORD(STACK[0xE80]) ^ (2 * v135)) >> 8) ^ 0x2CLL));
  v146.i8[6] = *(v145 + (((LOWORD(STACK[0xE90]) ^ (2 * v136)) >> 8) ^ 0x2CLL));
  v147 = STACK[0xDE0];
  v146.i8[7] = *(v145 + (((LOWORD(STACK[0xDE0]) ^ (2 * v35)) >> 8) ^ 0x2CLL));
  v146.i8[8] = *(v145 + (((LOWORD(STACK[0xE10]) ^ (2 * v137)) >> 8) ^ 0x2CLL));
  v146.i8[9] = *(v145 + (((LOWORD(STACK[0xE00]) ^ (2 * v138)) >> 8) ^ 0x2CLL));
  v146.i8[10] = *(v145 + (((LOWORD(STACK[0xDC0]) ^ (2 * v139)) >> 8) ^ 0x2CLL));
  v146.i8[11] = *(v145 + (((LOWORD(STACK[0xDB0]) ^ (2 * v140)) >> 8) ^ 0x2CLL));
  v148 = STACK[0xDD0];
  v146.i8[12] = *(v145 + (((LOWORD(STACK[0xDD0]) ^ (2 * v38)) >> 8) ^ 0x2CLL));
  v146.i8[13] = *(v145 + (((LOWORD(STACK[0xEB0]) ^ (2 * v141)) >> 8) ^ 0x2CLL));
  v146.i8[14] = *(v145 + (((LOWORD(STACK[0xEA0]) ^ (2 * v142)) >> 8) ^ 0x2CLL));
  v146.i8[15] = *(v145 + (((LOWORD(STACK[0xDF0]) ^ (2 * v13)) >> 8) ^ 0x2CLL));
  v149 = ((LODWORD(STACK[0xE70]) ^ 0x57AAC351) - 1895208652) ^ LODWORD(STACK[0xE70]) ^ ((LODWORD(STACK[0xE70]) ^ 0xFC892815) + 606765688) ^ ((LODWORD(STACK[0xE70]) ^ 0x84C122) + 2583361) ^ ((LODWORD(STACK[0xE70]) ^ 0xFB7FFA) + 5821850);
  v150 = ((LODWORD(STACK[0xE80]) ^ 0x57AAC351) - 1895208652) ^ LODWORD(STACK[0xE80]) ^ ((LODWORD(STACK[0xE80]) ^ 0xFC892815) + 606765688) ^ ((LODWORD(STACK[0xE80]) ^ 0x84C122) + 2583361) ^ ((LODWORD(STACK[0xE80]) ^ 0xFB7FFA) + 5821850);
  v151 = ((LODWORD(STACK[0xE90]) ^ 0x57AAC351) - 1895208652) ^ LODWORD(STACK[0xE90]) ^ ((LODWORD(STACK[0xE90]) ^ 0xFC892815) + 606765688) ^ ((LODWORD(STACK[0xE90]) ^ 0x84C122) + 2583361) ^ ((LODWORD(STACK[0xE90]) ^ 0xFB7FFA) + 5821850);
  LODWORD(v38) = ((LODWORD(STACK[0xDE0]) ^ 0xFC892815) + 606765688) ^ ((LODWORD(STACK[0xDE0]) ^ 0x84C122) + 2583361);
  v152 = STACK[0xDC0];
  v153 = *(&off_1010A0B50 + LODWORD(STACK[0xEC0]) - 31398) - 27337251;
  v154.i8[0] = *(v153 + (((((LODWORD(STACK[0xE10]) ^ 0x57AAC351) - 1895208652) ^ LODWORD(STACK[0xE10]) ^ ((LODWORD(STACK[0xE10]) ^ 0xFC892815) + 606765688) ^ ((LODWORD(STACK[0xE10]) ^ 0x84C122) + 2583361) ^ ((LODWORD(STACK[0xE10]) ^ 0xFB7FFA) + 5821850)) >> 16) ^ 0x5CLL));
  v154.i8[1] = *(v153 + (((((LODWORD(STACK[0xE00]) ^ 0x57AAC351) - 1895208652) ^ LODWORD(STACK[0xE00]) ^ ((LODWORD(STACK[0xE00]) ^ 0xFC892815) + 606765688) ^ ((LODWORD(STACK[0xE00]) ^ 0x84C122) + 2583361) ^ ((LODWORD(STACK[0xE00]) ^ 0xFB7FFA) + 5821850)) >> 16) ^ 0x5CLL));
  v154.i8[2] = *(v153 + (((((LODWORD(STACK[0xDC0]) ^ 0x57AAC351) - 1895208652) ^ LODWORD(STACK[0xDC0]) ^ ((LODWORD(STACK[0xDC0]) ^ 0xFC892815) + 606765688) ^ ((LODWORD(STACK[0xDC0]) ^ 0x84C122) + 2583361) ^ ((LODWORD(STACK[0xDC0]) ^ 0xFB7FFA) + 5821850)) >> 16) ^ 0x5CLL));
  v154.i8[3] = *(v153 + (((((LODWORD(STACK[0xDB0]) ^ 0x57AAC351) - 1895208652) ^ LODWORD(STACK[0xDB0]) ^ ((LODWORD(STACK[0xDB0]) ^ 0xFC892815) + 606765688) ^ ((LODWORD(STACK[0xDB0]) ^ 0x84C122) + 2583361) ^ ((LODWORD(STACK[0xDB0]) ^ 0xFB7FFA) + 5821850)) >> 16) ^ 0x5CLL));
  v154.i8[4] = *(v153 + (((((LODWORD(STACK[0xDD0]) ^ 0x57AAC351) - 1895208652) ^ LODWORD(STACK[0xDD0]) ^ ((LODWORD(STACK[0xDD0]) ^ 0xFC892815) + 606765688) ^ ((LODWORD(STACK[0xDD0]) ^ 0x84C122) + 2583361) ^ ((LODWORD(STACK[0xDD0]) ^ 0xFB7FFA) + 5821850)) >> 16) ^ 0x5CLL));
  v154.i8[5] = *(v153 + (((((LODWORD(STACK[0xEB0]) ^ 0x57AAC351) - 1895208652) ^ LODWORD(STACK[0xEB0]) ^ ((LODWORD(STACK[0xEB0]) ^ 0xFC892815) + 606765688) ^ ((LODWORD(STACK[0xEB0]) ^ 0x84C122) + 2583361) ^ ((LODWORD(STACK[0xEB0]) ^ 0xFB7FFA) + 5821850)) >> 16) ^ 0x5CLL));
  v154.i8[6] = *(v153 + (((((LODWORD(STACK[0xEA0]) ^ 0x57AAC351) - 1895208652) ^ LODWORD(STACK[0xEA0]) ^ ((LODWORD(STACK[0xEA0]) ^ 0xFC892815) + 606765688) ^ ((LODWORD(STACK[0xEA0]) ^ 0x84C122) + 2583361) ^ ((LODWORD(STACK[0xEA0]) ^ 0xFB7FFA) + 5821850)) >> 16) ^ 0x5CLL));
  v154.i8[7] = *(v153 + (((((LODWORD(STACK[0xDF0]) ^ 0x57AAC351) - 1895208652) ^ LODWORD(STACK[0xDF0]) ^ ((LODWORD(STACK[0xDF0]) ^ 0xFC892815) + 606765688) ^ ((LODWORD(STACK[0xDF0]) ^ 0x84C122) + 2583361) ^ ((LODWORD(STACK[0xDF0]) ^ 0xFB7FFA) + 5821850)) >> 16) ^ 0x5CLL));
  v155.i8[0] = *(v153 + (((((v143 ^ 0x57AAC351) - 1895208652) ^ v143 ^ ((v143 ^ 0xFC892815) + 606765688) ^ ((v143 ^ 0x84C122) + 2583361) ^ ((v143 ^ 0xFB7FFA) + 5821850)) >> 16) ^ 0x5CLL));
  v155.i8[1] = *(v153 + (((((LODWORD(STACK[0xE30]) ^ 0x57AAC351) - 1895208652) ^ LODWORD(STACK[0xE30]) ^ ((LODWORD(STACK[0xE30]) ^ 0xFC892815) + 606765688) ^ ((LODWORD(STACK[0xE30]) ^ 0x84C122) + 2583361) ^ ((LODWORD(STACK[0xE30]) ^ 0xFB7FFA) + 5821850)) >> 16) ^ 0x5CLL));
  v155.i8[2] = *(v153 + (((((LODWORD(STACK[0xE40]) ^ 0x57AAC351) - 1895208652) ^ LODWORD(STACK[0xE40]) ^ ((LODWORD(STACK[0xE40]) ^ 0xFC892815) + 606765688) ^ ((LODWORD(STACK[0xE40]) ^ 0x84C122) + 2583361) ^ ((LODWORD(STACK[0xE40]) ^ 0xFB7FFA) + 5821850)) >> 16) ^ 0x5CLL));
  v156 = (v153 + (((((LODWORD(STACK[0xE60]) ^ 0x57AAC351) - 1895208652) ^ LODWORD(STACK[0xE60]) ^ ((LODWORD(STACK[0xE60]) ^ 0xFC892815) + 606765688) ^ ((LODWORD(STACK[0xE60]) ^ 0x84C122) + 2583361) ^ ((LODWORD(STACK[0xE60]) ^ 0xFB7FFA) + 5821850)) >> 16) ^ 0x5CLL));
  STACK[0xD90] = v153;
  v155.i8[3] = *v156;
  v155.i8[4] = *(v153 + (BYTE2(v149) ^ 0x5CLL));
  v155.i8[5] = *(v153 + (BYTE2(v150) ^ 0x5CLL));
  v155.i8[6] = *(v153 + (BYTE2(v151) ^ 0x5CLL));
  v155.i8[7] = *(v153 + (((((v147 ^ 0x57AAC351) - 1895208652) ^ v147 ^ v38 ^ ((v147 ^ 0xFB7FFA) + 5821850)) >> 16) ^ 0x5CLL));
  LODWORD(v144) = STACK[0xE20];
  LODWORD(STACK[0xC30]) = (LODWORD(STACK[0xE20]) ^ 0xD49B295B) & (2 * LODWORD(STACK[0xD00])) ^ LODWORD(STACK[0xD00]);
  v157 = STACK[0xE30];
  LODWORD(STACK[0xD20]) ^= (LODWORD(STACK[0xE30]) ^ 0xD49B295B) & (2 * LODWORD(STACK[0xD20]));
  v158 = STACK[0xE40];
  LODWORD(STACK[0xD00]) = (LODWORD(STACK[0xE40]) ^ 0xD49B295B) & (2 * LODWORD(STACK[0xD30])) ^ LODWORD(STACK[0xD30]);
  v159 = STACK[0xE60];
  LODWORD(STACK[0xCF0]) ^= (LODWORD(STACK[0xE60]) ^ 0xD49B295B) & (2 * LODWORD(STACK[0xCF0]));
  v160 = STACK[0xE70];
  LODWORD(STACK[0xCE0]) ^= (LODWORD(STACK[0xE70]) ^ 0xD49B295B) & (2 * LODWORD(STACK[0xCE0]));
  v161 = STACK[0xE80];
  LODWORD(STACK[0xCD0]) ^= (LODWORD(STACK[0xE80]) ^ 0xD49B295B) & (2 * LODWORD(STACK[0xCD0]));
  LODWORD(v153) = STACK[0xE90];
  LODWORD(STACK[0xCC0]) ^= (LODWORD(STACK[0xE90]) ^ 0xD49B295B) & (2 * LODWORD(STACK[0xCC0]));
  v162 = v147;
  LODWORD(STACK[0xCB0]) ^= (v147 ^ 0xD49B295B) & (2 * LODWORD(STACK[0xCB0]));
  v163 = STACK[0xE10];
  LODWORD(STACK[0xCA0]) ^= (LODWORD(STACK[0xE10]) ^ 0xD49B295B) & (2 * LODWORD(STACK[0xCA0]));
  v164 = STACK[0xE00];
  LODWORD(STACK[0xC90]) ^= (LODWORD(STACK[0xE00]) ^ 0xD49B295B) & (2 * LODWORD(STACK[0xC90]));
  LODWORD(STACK[0xC80]) ^= (v152 ^ 0xD49B295B) & (2 * LODWORD(STACK[0xC80]));
  v165 = STACK[0xDB0];
  LODWORD(STACK[0xC70]) ^= (LODWORD(STACK[0xDB0]) ^ 0xD49B295B) & (2 * LODWORD(STACK[0xC70]));
  v166 = v148;
  LODWORD(STACK[0xC60]) ^= (v148 ^ 0xD49B295B) & (2 * LODWORD(STACK[0xC60]));
  v167 = STACK[0xEB0];
  LODWORD(STACK[0xC50]) ^= (LODWORD(STACK[0xEB0]) ^ 0xD49B295B) & (2 * LODWORD(STACK[0xC50]));
  v168 = STACK[0xEA0];
  LODWORD(STACK[0xD30]) = (LODWORD(STACK[0xEA0]) ^ 0xD49B295B) & (2 * LODWORD(STACK[0xC40])) ^ LODWORD(STACK[0xC40]);
  v169 = 2 * (v144 ^ 0x54DB299F);
  LODWORD(STACK[0xC40]) = (v169 ^ 0x18F107F8) & (v144 ^ 0x54DB299F);
  v170 = 2 * (v157 ^ 0x54DB299F);
  LODWORD(STACK[0xC20]) = (v170 ^ 0x18F107F8) & (v157 ^ 0x54DB299F);
  v171 = 2 * (v158 ^ 0x54DB299F);
  LODWORD(STACK[0xBE0]) = (v171 ^ 0x18F107F8) & (v158 ^ 0x54DB299F);
  v159 ^= 0x54DB299Fu;
  LODWORD(v39) = 2 * v159;
  LODWORD(STACK[0xBD0]) = ((2 * v159) ^ 0x18F107F8) & v159;
  v172 = 2 * (v160 ^ 0x54DB299F);
  LODWORD(STACK[0xBC0]) = (v172 ^ 0x18F107F8) & (v160 ^ 0x54DB299F);
  v173 = v161 ^ 0x54DB299F;
  v174 = 2 * (v161 ^ 0x54DB299F);
  v175 = (v174 ^ 0x18F107F8) & v173;
  v176 = 2 * (v153 ^ 0x54DB299F);
  LODWORD(STACK[0xBB0]) = (v176 ^ 0x18F107F8) & (v153 ^ 0x54DB299F);
  LODWORD(v38) = 2 * (v162 ^ 0x54DB299F);
  v177 = (v38 ^ 0x18F107F8) & (v162 ^ 0x54DB299F);
  v178 = 2 * (v163 ^ 0x54DB299F);
  v179 = (v178 ^ 0x18F107F8) & (v163 ^ 0x54DB299F);
  v180 = v164 ^ 0x54DB299F;
  v181 = 2 * (v164 ^ 0x54DB299F);
  v182 = (v181 ^ 0x18F107F8) & v180;
  v183 = 2 * (v152 ^ 0x54DB299F);
  LODWORD(v153) = (v183 ^ 0x18F107F8) & (v152 ^ 0x54DB299F);
  LODWORD(v145) = 2 * (v165 ^ 0x54DB299F);
  v184 = (v145 ^ 0x18F107F8) & (v165 ^ 0x54DB299F);
  v185 = 2 * (v167 ^ 0x54DB299F);
  v186 = (v185 ^ 0x18F107F8) & (v167 ^ 0x54DB299F);
  LODWORD(v156) = 2 * (v168 ^ 0x54DB299F);
  v187 = (v156 ^ 0x18F107F8) & (v168 ^ 0x54DB299F);
  v188 = LODWORD(STACK[0xC40]) ^ v169 & 0x8C7883FC;
  v189 = LODWORD(STACK[0xC20]) ^ v170 & 0x8C7883FC;
  v190 = LODWORD(STACK[0xBE0]) ^ v171 & 0x8C7883FC;
  v191 = LODWORD(STACK[0xBD0]) ^ v39 & 0x8C7883FC;
  LODWORD(v39) = LODWORD(STACK[0xBC0]) ^ v172 & 0x8C7883FC;
  v192 = v175 ^ v174 & 0x8C7883FC;
  v193 = LODWORD(STACK[0xBB0]) ^ v176 & 0x8C7883FC;
  v194 = v177 ^ v38 & 0x8C7883FC;
  v195 = v179 ^ v178 & 0x8C7883FC;
  v196 = v182 ^ v181 & 0x8C7883FC;
  LODWORD(v153) = v153 ^ v183 & 0x8C7883FC;
  v197 = v184 ^ v145 & 0x8C7883FC;
  v198 = ((2 * (v166 ^ 0x54DB299F)) ^ 0x18F107F8) & (v166 ^ 0x54DB299F) ^ (2 * (v166 ^ 0x54DB299F)) & 0x8C7883FC;
  v199 = v186 ^ v185 & 0x8C7883FC;
  LODWORD(v145) = v187 ^ v156 & 0x8C7883FC;
  LODWORD(STACK[0xB80]) = v145;
  LODWORD(STACK[0xB90]) = (v188 ^ 0x100398) & (4 * LODWORD(STACK[0xC30])) ^ LODWORD(STACK[0xC30]);
  LODWORD(STACK[0xC40]) = (v189 ^ 0x100398) & (4 * LODWORD(STACK[0xD20])) ^ LODWORD(STACK[0xD20]);
  LODWORD(STACK[0xD00]) ^= (v190 ^ 0x100398) & (4 * LODWORD(STACK[0xD00]));
  LODWORD(STACK[0xCF0]) ^= (v191 ^ 0x100398) & (4 * LODWORD(STACK[0xCF0]));
  LODWORD(STACK[0xC30]) = (v39 ^ 0x100398) & (4 * LODWORD(STACK[0xCE0])) ^ LODWORD(STACK[0xCE0]);
  LODWORD(STACK[0xC20]) = (v192 ^ 0x100398) & (4 * LODWORD(STACK[0xCD0])) ^ LODWORD(STACK[0xCD0]);
  LODWORD(STACK[0xD20]) = (v193 ^ 0x100398) & (4 * LODWORD(STACK[0xCC0])) ^ LODWORD(STACK[0xCC0]);
  LODWORD(STACK[0xBE0]) = (v194 ^ 0x100398) & (4 * LODWORD(STACK[0xCB0])) ^ LODWORD(STACK[0xCB0]);
  LODWORD(STACK[0xBD0]) = (v195 ^ 0x100398) & (4 * LODWORD(STACK[0xCA0])) ^ LODWORD(STACK[0xCA0]);
  LODWORD(STACK[0xBC0]) = (v196 ^ 0x100398) & (4 * LODWORD(STACK[0xC90])) ^ LODWORD(STACK[0xC90]);
  LODWORD(STACK[0xBB0]) = (v153 ^ 0x100398) & (4 * LODWORD(STACK[0xC80])) ^ LODWORD(STACK[0xC80]);
  LODWORD(STACK[0xBA0]) = (v197 ^ 0x100398) & (4 * LODWORD(STACK[0xC70])) ^ LODWORD(STACK[0xC70]);
  LODWORD(STACK[0xC90]) = (v198 ^ 0x100398) & (4 * LODWORD(STACK[0xC60])) ^ LODWORD(STACK[0xC60]);
  LODWORD(STACK[0xC80]) = (v199 ^ 0x100398) & (4 * LODWORD(STACK[0xC50])) ^ LODWORD(STACK[0xC50]);
  LODWORD(STACK[0xC70]) = (v145 ^ 0x100398) & (4 * LODWORD(STACK[0xD30])) ^ LODWORD(STACK[0xD30]);
  v200 = 4 * (v188 ^ 0x84088004);
  LODWORD(STACK[0xD30]) = (v200 ^ 0x31E20FF0) & (v188 ^ 0x84088004);
  v201 = 4 * (v189 ^ 0x84088004);
  LODWORD(STACK[0xCE0]) = (v201 ^ 0x31E20FF0) & (v189 ^ 0x84088004);
  LODWORD(v144) = 4 * (v190 ^ 0x84088004);
  LODWORD(STACK[0xCD0]) = (v144 ^ 0x31E20FF0) & (v190 ^ 0x84088004);
  v198 ^= 0x84088004;
  v202 = 4 * v198;
  v203 = ((4 * v198) ^ 0x31E20FF0) & v198;
  v204 = v199 ^ 0x84088004;
  v205 = 4 * (v199 ^ 0x84088004);
  v206 = (v205 ^ 0x31E20FF0) & v204;
  v207 = LODWORD(STACK[0xB80]) ^ 0x84088004;
  LODWORD(v38) = LODWORD(STACK[0xD30]) ^ v200 & 0x8C7883F8;
  v208 = LODWORD(STACK[0xCE0]) ^ v201 & 0x8C7883F8;
  LODWORD(v144) = LODWORD(STACK[0xCD0]) ^ v144 & 0x8C7883F8;
  LODWORD(v145) = ((4 * (v191 ^ 0x84088004)) ^ 0x31E20FF0) & (v191 ^ 0x84088004) ^ (4 * (v191 ^ 0x84088004)) & 0x8C7883F8;
  v209 = ((4 * (v39 ^ 0x84088004)) ^ 0x31E20FF0) & (v39 ^ 0x84088004) ^ (4 * (v39 ^ 0x84088004)) & 0x8C7883F8;
  v210 = ((4 * (v192 ^ 0x84088004)) ^ 0x31E20FF0) & (v192 ^ 0x84088004) ^ (4 * (v192 ^ 0x84088004)) & 0x8C7883F8;
  v211 = ((4 * (v193 ^ 0x84088004)) ^ 0x31E20FF0) & (v193 ^ 0x84088004) ^ (4 * (v193 ^ 0x84088004)) & 0x8C7883F8;
  LODWORD(STACK[0xCC0]) = v211;
  v212 = ((4 * (v194 ^ 0x84088004)) ^ 0x31E20FF0) & (v194 ^ 0x84088004) ^ (4 * (v194 ^ 0x84088004)) & 0x8C7883F8;
  v213 = ((4 * (v195 ^ 0x84088004)) ^ 0x31E20FF0) & (v195 ^ 0x84088004) ^ (4 * (v195 ^ 0x84088004)) & 0x8C7883F8;
  v214 = ((4 * (v196 ^ 0x84088004)) ^ 0x31E20FF0) & (v196 ^ 0x84088004) ^ (4 * (v196 ^ 0x84088004)) & 0x8C7883F8;
  v215 = ((4 * (v153 ^ 0x84088004)) ^ 0x31E20FF0) & (v153 ^ 0x84088004) ^ (4 * (v153 ^ 0x84088004)) & 0x8C7883F8;
  v216 = ((4 * (v197 ^ 0x84088004)) ^ 0x31E20FF0) & (v197 ^ 0x84088004) ^ (4 * (v197 ^ 0x84088004)) & 0x8C7883F8;
  v217 = v203 ^ v202 & 0x8C7883F8;
  LODWORD(STACK[0xCA0]) = v217;
  v218 = v206 ^ v205 & 0x8C7883F8;
  LODWORD(STACK[0xCB0]) = v218;
  v219 = ((4 * v207) ^ 0x31E20FF0) & v207 ^ (4 * v207) & 0x8C7883F8;
  v220 = (v38 ^ 0x6003F0) & (16 * LODWORD(STACK[0xB90])) ^ LODWORD(STACK[0xB90]);
  v221 = (v208 ^ 0x6003F0) & (16 * LODWORD(STACK[0xC40])) ^ LODWORD(STACK[0xC40]);
  LODWORD(STACK[0xCD0]) = (v144 ^ 0x6003F0) & (16 * LODWORD(STACK[0xD00])) ^ LODWORD(STACK[0xD00]);
  LODWORD(STACK[0xCE0]) = (v145 ^ 0x6003F0) & (16 * LODWORD(STACK[0xCF0])) ^ LODWORD(STACK[0xCF0]);
  LODWORD(STACK[0xCF0]) = (v209 ^ 0x6003F0) & (16 * LODWORD(STACK[0xC30])) ^ LODWORD(STACK[0xC30]);
  LODWORD(STACK[0xD00]) = (v210 ^ 0x6003F0) & (16 * LODWORD(STACK[0xC20])) ^ LODWORD(STACK[0xC20]);
  LODWORD(STACK[0xD20]) ^= (v211 ^ 0x6003F0) & (16 * LODWORD(STACK[0xD20]));
  LODWORD(STACK[0xD30]) = (v212 ^ 0x6003F0) & (16 * LODWORD(STACK[0xBE0])) ^ LODWORD(STACK[0xBE0]);
  v222 = (v213 ^ 0x6003F0) & (16 * LODWORD(STACK[0xBD0])) ^ LODWORD(STACK[0xBD0]);
  v223 = (v214 ^ 0x6003F0) & (16 * LODWORD(STACK[0xBC0])) ^ LODWORD(STACK[0xBC0]);
  LODWORD(v153) = (v215 ^ 0x6003F0) & (16 * LODWORD(STACK[0xBB0])) ^ LODWORD(STACK[0xBB0]);
  v224 = (v216 ^ 0x6003F0) & (16 * LODWORD(STACK[0xBA0])) ^ LODWORD(STACK[0xBA0]);
  LODWORD(v39) = (v217 ^ 0x6003F0) & (16 * LODWORD(STACK[0xC90])) ^ LODWORD(STACK[0xC90]);
  v225 = (v218 ^ 0x6003F0) & (16 * LODWORD(STACK[0xC80])) ^ LODWORD(STACK[0xC80]);
  v226 = (v219 ^ 0x6003F0) & (16 * LODWORD(STACK[0xC70])) ^ LODWORD(STACK[0xC70]);
  LODWORD(v156) = v38 ^ 0x8C18800C;
  LODWORD(v38) = 16 * (v38 ^ 0x8C18800C);
  LODWORD(STACK[0xC90]) = (v38 ^ 0xC7883FC0) & v156;
  v227 = 16 * (v208 ^ 0x8C18800C);
  LODWORD(STACK[0xC80]) = (v227 ^ 0xC7883FC0) & (v208 ^ 0x8C18800C);
  v228 = 16 * (v144 ^ 0x8C18800C);
  LODWORD(STACK[0xC70]) = (v228 ^ 0xC7883FC0) & (v144 ^ 0x8C18800C);
  v229 = 16 * (v145 ^ 0x8C18800C);
  LODWORD(STACK[0xC60]) = (v229 ^ 0xC7883FC0) & (v145 ^ 0x8C18800C);
  v230 = 16 * (v209 ^ 0x8C18800C);
  LODWORD(STACK[0xC50]) = (v230 ^ 0xC7883FC0) & (v209 ^ 0x8C18800C);
  LODWORD(v156) = 16 * (v210 ^ 0x8C18800C);
  LODWORD(STACK[0xC40]) = (v156 ^ 0xC7883FC0) & (v210 ^ 0x8C18800C);
  v231 = ((16 * (v213 ^ 0x8C18800C)) ^ 0xC7883FC0) & (v213 ^ 0x8C18800C) ^ (16 * (v213 ^ 0x8C18800C)) & 0x8C7883C0;
  LODWORD(v145) = ((16 * (v214 ^ 0x8C18800C)) ^ 0xC7883FC0) & (v214 ^ 0x8C18800C) ^ (16 * (v214 ^ 0x8C18800C)) & 0x8C7883C0;
  LODWORD(v144) = ((16 * (v215 ^ 0x8C18800C)) ^ 0xC7883FC0) & (v215 ^ 0x8C18800C) ^ (16 * (v215 ^ 0x8C18800C)) & 0x8C7883C0;
  v232 = ((16 * (v216 ^ 0x8C18800C)) ^ 0xC7883FC0) & (v216 ^ 0x8C18800C) ^ (16 * (v216 ^ 0x8C18800C)) & 0x8C7883C0;
  v233 = v222 ^ 0x8C7883FC ^ (v231 ^ 0x84080300) & (v222 << 8);
  v234 = v223 ^ 0x8C7883FC ^ (v145 ^ 0x84080300) & (v223 << 8);
  LODWORD(v153) = v153 ^ 0x8C7883FC ^ (v144 ^ 0x84080300) & (v153 << 8);
  v235 = v224 ^ 0x8C7883FC ^ (v232 ^ 0x84080300) & (v224 << 8);
  v236 = LODWORD(STACK[0xDB0]) ^ (2 * ((v235 << 16) & 0xC000000 ^ v235 ^ ((v235 << 16) ^ 0x3800000) & (((v232 ^ 0x870803C) << 8) & 0xC780000 ^ (((v232 ^ 0x870803C) << 8) ^ 0x78830000) & (v232 ^ 0x870803C) ^ 0x4000000)));
  v237 = *(&off_1010A0B50 + (LODWORD(STACK[0xEC0]) ^ 0x8D2F)) - 1238283434;
  v238.i8[0] = v237[((LODWORD(STACK[0xE10]) ^ (2 * ((v233 << 16) & 0xC000000 ^ v233 ^ ((v233 << 16) ^ 0x3800000) & (((v231 ^ 0x870803C) << 8) & 0xC780000 ^ (((v231 ^ 0x870803C) << 8) ^ 0x78830000) & (v231 ^ 0x870803C) ^ 0x4000000)))) >> 24) ^ 0xC0];
  v238.i8[1] = v237[((LODWORD(STACK[0xE00]) ^ (2 * ((v234 << 16) & 0xC000000 ^ v234 ^ ((v234 << 16) ^ 0x3800000) & (((v145 ^ 0x870803C) << 8) & 0xC780000 ^ (((v145 ^ 0x870803C) << 8) ^ 0x78830000) & (v145 ^ 0x870803C) ^ 0x4000000)))) >> 24) ^ 0xC0];
  v239 = ((LODWORD(STACK[0xDC0]) ^ (2 * ((v153 << 16) & 0xC000000 ^ v153 ^ ((v153 << 16) ^ 0x3800000) & (((v144 ^ 0x870803C) << 8) & 0xC780000 ^ (((v144 ^ 0x870803C) << 8) ^ 0x78830000) & (v144 ^ 0x870803C) ^ 0x4000000)))) >> 24) ^ 0xC0;
  STACK[0xDC0] = v237;
  v238.i8[2] = v237[v239];
  v238.i8[3] = v237[HIBYTE(v236) ^ 0xC0];
  v240 = LODWORD(STACK[0xCC0]) ^ 0x8C18800C;
  v241 = 16 * (v212 ^ 0x8C18800C);
  LODWORD(STACK[0xE00]) = v241;
  LODWORD(STACK[0xE10]) = (v241 ^ 0xC7883FC0) & (v212 ^ 0x8C18800C);
  v242 = v219 ^ 0x8C18800C;
  v243 = 16 * (v219 ^ 0x8C18800C);
  v244 = (v243 ^ 0xC7883FC0) & v242;
  v245 = LODWORD(STACK[0xC90]) ^ v38 & 0x8C7883C0;
  v246 = LODWORD(STACK[0xC80]) ^ v227 & 0x8C7883C0;
  v247 = LODWORD(STACK[0xC70]) ^ v228 & 0x8C7883C0;
  v248 = LODWORD(STACK[0xC60]) ^ v229 & 0x8C7883C0;
  v249 = LODWORD(STACK[0xC50]) ^ v230 & 0x8C7883C0;
  v250 = LODWORD(STACK[0xC40]) ^ v156 & 0x8C7883C0;
  v251 = ((16 * v240) ^ 0xC7883FC0) & v240 ^ (16 * v240) & 0x8C7883C0;
  v252 = ((16 * (LODWORD(STACK[0xCA0]) ^ 0x8C18800C)) ^ 0xC7883FC0) & (LODWORD(STACK[0xCA0]) ^ 0x8C18800C) ^ (16 * (LODWORD(STACK[0xCA0]) ^ 0x8C18800C)) & 0x8C7883C0;
  v253 = ((16 * (LODWORD(STACK[0xCB0]) ^ 0x8C18800C)) ^ 0xC7883FC0) & (LODWORD(STACK[0xCB0]) ^ 0x8C18800C) ^ (16 * (LODWORD(STACK[0xCB0]) ^ 0x8C18800C)) & 0x8C7883C0;
  v254 = v244 ^ v243 & 0x8C7883C0;
  LODWORD(STACK[0xDB0]) = v221 ^ 0x8C7883FC ^ (v246 ^ 0x84080300) & (v221 << 8);
  LODWORD(STACK[0xCD0]) ^= 0x8C7883FC ^ (v247 ^ 0x84080300) & (LODWORD(STACK[0xCD0]) << 8);
  LODWORD(STACK[0xCE0]) ^= 0x8C7883FC ^ (v248 ^ 0x84080300) & (LODWORD(STACK[0xCE0]) << 8);
  LODWORD(v237) = LODWORD(STACK[0xCF0]) ^ 0x8C7883FC ^ (v249 ^ 0x84080300) & (LODWORD(STACK[0xCF0]) << 8);
  v255 = LODWORD(STACK[0xD00]) ^ 0x8C7883FC ^ (v250 ^ 0x84080300) & (LODWORD(STACK[0xD00]) << 8);
  LODWORD(STACK[0xD20]) ^= 0x8C7883FC ^ (v251 ^ 0x84080300) & (LODWORD(STACK[0xD20]) << 8);
  LODWORD(STACK[0xD00]) = v39 ^ 0x8C7883FC ^ (v252 ^ 0x84080300) & (v39 << 8);
  LODWORD(STACK[0xCF0]) = v225 ^ 0x8C7883FC ^ (v253 ^ 0x84080300) & (v225 << 8);
  LODWORD(STACK[0xCC0]) = v226 ^ 0x8C7883FC ^ (v254 ^ 0x84080300) & (v226 << 8);
  v256 = ((v246 ^ 0x870803C) << 8) & 0xC780000 ^ (((v246 ^ 0x870803C) << 8) ^ 0x78830000) & (v246 ^ 0x870803C);
  v257 = ((v252 ^ 0x870803C) << 8) & 0xC780000 ^ (((v252 ^ 0x870803C) << 8) ^ 0x78830000) & (v252 ^ 0x870803C);
  v258 = v220 ^ 0x8C7883FC ^ (v245 ^ 0x84080300) & (v220 << 8);
  LODWORD(STACK[0xCB0]) = ((v258 << 16) ^ 0x3800000) & (((v245 ^ 0x870803C) << 8) & 0xC780000 ^ (((v245 ^ 0x870803C) << 8) ^ 0x78830000) & (v245 ^ 0x870803C) ^ 0x4000000);
  v259 = STACK[0xDB0];
  v260 = LODWORD(STACK[0xDB0]) << 16;
  LODWORD(STACK[0xCA0]) = (v260 ^ 0x3800000) & (v256 ^ 0x4000000);
  v261.i64[0] = 0x4F4F4F4F4F4F4F4FLL;
  v261.i64[1] = 0x4F4F4F4F4F4F4F4FLL;
  v262.i64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v262.i64[1] = 0x5F5F5F5F5F5F5F5FLL;
  v263 = veorq_s8(vandq_s8(v36, v261), v262);
  v264.i64[0] = 0x2222222222222222;
  v264.i64[1] = 0x2222222222222222;
  v265 = vandq_s8(vaddq_s8(v36, v36), v264);
  v264.i64[0] = 0x1E1E1E1E1E1E1E1ELL;
  v264.i64[1] = 0x1E1E1E1E1E1E1E1ELL;
  v266 = veorq_s8(vandq_s8(veorq_s8(v265, v264), v36), v263);
  v264.i64[0] = 0x5050505050505050;
  v264.i64[1] = 0x5050505050505050;
  v267 = veorq_s8(v36, v264);
  v268 = veorq_s8(vandq_s8(vaddq_s8(v266, v266), v267), v263);
  v269 = veorq_s8(vandq_s8(vaddq_s8(v268, v268), v267), v263);
  v270 = veorq_s8(vandq_s8(vaddq_s8(v269, v269), v267), v263);
  v271 = veorq_s8(vandq_s8(vaddq_s8(v270, v270), v267), v263);
  v272 = veorq_s8(vandq_s8(vaddq_s8(v271, v271), v267), v263);
  v273 = veorq_s8(vaddq_s8(v272, v272), v36);
  v274 = vmovl_high_u8(v273);
  v275 = vmovl_u8(*v273.i8);
  v276.i64[0] = 0xBFBFBFBFBFBFBFBFLL;
  v276.i64[1] = 0xBFBFBFBFBFBFBFBFLL;
  v277.i64[0] = 0x7E7E7E7E7E7E7E7ELL;
  v277.i64[1] = 0x7E7E7E7E7E7E7E7ELL;
  v278 = veorq_s8(vandq_s8(v146, v276), v277);
  v279.i64[0] = 0x4242424242424242;
  v279.i64[1] = 0x4242424242424242;
  v280 = veorq_s8(v146, v279);
  v281.i64[0] = 0x606060606060606;
  v281.i64[1] = 0x606060606060606;
  v282 = veorq_s8(vandq_s8(vandq_s8(vaddq_s8(v146, v146), v280), v281), v278);
  v283 = veorq_s8(vandq_s8(vaddq_s8(v282, v282), v280), v278);
  v284 = veorq_s8(vandq_s8(vaddq_s8(v283, v283), v280), v278);
  v285 = veorq_s8(vandq_s8(vaddq_s8(v284, v284), v280), v278);
  v286 = veorq_s8(vandq_s8(vaddq_s8(v285, v285), v280), v278);
  v287 = veorq_s8(vandq_s8(vaddq_s8(v286, v286), v280), v278);
  v288 = veorq_s8(vaddq_s8(v287, v287), v146);
  v289 = vmovl_u8(*v288.i8);
  v290 = vmovl_u16(*v289.i8);
  v291 = vmovl_high_u16(v289);
  v292 = vmovl_high_u8(v288);
  v293 = vmovl_u16(*v292.i8);
  v294 = vmovl_high_u16(v292);
  v295 = vandq_s8(veorq_s8(v290, *&STACK[0xA70]), veorq_s8(vshll_n_u16(*v275.i8, 8uLL), *&STACK[0xA80]));
  v296 = vorrq_s8(vandq_s8(veorq_s8(v294, *&STACK[0xA70]), veorq_s8(vshll_high_n_u16(v274, 8uLL), *&STACK[0xA80])), (*&v294 & __PAIR128__(0xFFFFFF86FFFFFF86, 0xFFFFFF86FFFFFF86)));
  v297 = vorrq_s8(vandq_s8(veorq_s8(v293, *&STACK[0xA70]), veorq_s8(vshll_n_u16(*v274.i8, 8uLL), *&STACK[0xA80])), (*&v293 & __PAIR128__(0xFFFFFF86FFFFFF86, 0xFFFFFF86FFFFFF86)));
  v298 = vorrq_s8(vandq_s8(veorq_s8(v291, *&STACK[0xA70]), veorq_s8(vshll_high_n_u16(v275, 8uLL), *&STACK[0xA80])), (*&v291 & __PAIR128__(0xFFFFFF86FFFFFF86, 0xFFFFFF86FFFFFF86)));
  v299 = vorrq_s8(v295, (*&v290 & __PAIR128__(0xFFFFFF86FFFFFF86, 0xFFFFFF86FFFFFF86)));
  v300 = veorq_s8(vaddq_s32(veorq_s8(v299, *&STACK[0xA60]), *&STACK[0xA50]), vaddq_s32(veorq_s8(v299, *&STACK[0xA40]), *&STACK[0xA30]));
  v301 = veorq_s8(vaddq_s32(veorq_s8(v297, *&STACK[0xA60]), *&STACK[0xA50]), vaddq_s32(veorq_s8(v297, *&STACK[0xA40]), *&STACK[0xA30]));
  v302 = veorq_s8(veorq_s8(vaddq_s32(veorq_s8(v296, *&STACK[0xA60]), *&STACK[0xA50]), vaddq_s32(veorq_s8(v296, *&STACK[0xA40]), *&STACK[0xA30])), vaddq_s32(veorq_s8(v296, *&STACK[0xA20]), *&STACK[0xA10]));
  v303 = veorq_s8(v297, *&STACK[0xA20]);
  v304 = vaddq_s32(veorq_s8(v299, *&STACK[0xA20]), *&STACK[0xA10]);
  v305 = veorq_s8(v301, vaddq_s32(v303, *&STACK[0xA10]));
  v306 = veorq_s8(veorq_s8(vaddq_s32(veorq_s8(v298, *&STACK[0xA60]), *&STACK[0xA50]), vaddq_s32(veorq_s8(v298, *&STACK[0xA40]), *&STACK[0xA30])), vaddq_s32(veorq_s8(v298, *&STACK[0xA20]), *&STACK[0xA10]));
  v307 = veorq_s8(v300, v304);
  v308 = vmovl_u8(v154);
  v309 = vmovl_high_u16(v308);
  v310 = vmovl_u16(*v308.i8);
  v311 = vmovl_u8(v155);
  v312 = vmovl_high_u16(v311);
  v313 = vmovl_u16(*v311.i8);
  v301.i64[0] = 0x4300000043;
  v301.i64[1] = 0x4300000043;
  v281.i64[0] = 0x10000000100;
  v281.i64[1] = 0x10000000100;
  v314 = vorrq_s8(v310, vandq_s8(vcgtq_u32(v301, v310), v281));
  v315 = vorrq_s8(v309, vandq_s8(vcgtq_u32(v301, v309), v281));
  v316 = vmlaq_s32(v314, v305, *&STACK[0xA00]);
  v238.i8[4] = *(STACK[0xDC0] + (((LODWORD(STACK[0xDD0]) ^ (2 * ((LODWORD(STACK[0xD00]) << 16) & 0xC000000 ^ LODWORD(STACK[0xD00]) ^ ((LODWORD(STACK[0xD00]) << 16) ^ 0x3800000) & (v257 ^ 0x4000000u)))) >> 24) ^ 0xC0));
  v238.i8[5] = *(STACK[0xDC0] + (((LODWORD(STACK[0xEB0]) ^ (2 * ((LODWORD(STACK[0xCF0]) << 16) & 0xC000000 ^ LODWORD(STACK[0xCF0]) ^ ((LODWORD(STACK[0xCF0]) << 16) ^ 0x3800000) & (((v253 ^ 0x870803C) << 8) & 0xC780000 ^ (((v253 ^ 0x870803C) << 8) ^ 0x78830000) & (v253 ^ 0x870803C) ^ 0x4000000)))) >> 24) ^ 0xC0));
  v238.i8[6] = *(STACK[0xDC0] + (((LODWORD(STACK[0xEA0]) ^ (2 * ((LODWORD(STACK[0xCC0]) << 16) & 0xC000000 ^ LODWORD(STACK[0xCC0]) ^ ((LODWORD(STACK[0xCC0]) << 16) ^ 0x3800000) & (((v254 ^ 0x870803C) << 8) & 0xC780000 ^ (((v254 ^ 0x870803C) << 8) ^ 0x78830000) & (v254 ^ 0x870803C) ^ 0x4000000)))) >> 24) ^ 0xC0));
  v317 = vmlaq_s32(vorrq_s8(v312, vandq_s8(vcgtq_u32(v301, v312), v281)), v306, *&STACK[0xA00]);
  v305.i8[0] = *(STACK[0xDC0] + (((LODWORD(STACK[0xE20]) ^ (2 * ((v258 << 16) & 0xC000000 ^ v258 ^ LODWORD(STACK[0xCB0])))) >> 24) ^ 0xC0));
  v305.i8[1] = *(STACK[0xDC0] + (((LODWORD(STACK[0xE30]) ^ (2 * (v260 & 0xC000000 ^ v259 ^ LODWORD(STACK[0xCA0])))) >> 24) ^ 0xC0));
  v305.i8[2] = *(STACK[0xDC0] + (((LODWORD(STACK[0xE40]) ^ (2 * ((LODWORD(STACK[0xCD0]) << 16) & 0xC000000 ^ LODWORD(STACK[0xCD0]) ^ ((LODWORD(STACK[0xCD0]) << 16) ^ 0x3800000) & (((v247 ^ 0x870803C) << 8) & 0xC780000 ^ (((v247 ^ 0x870803C) << 8) ^ 0x78830000) & (v247 ^ 0x870803C) ^ 0x4000000)))) >> 24) ^ 0xC0));
  v305.i8[3] = *(STACK[0xDC0] + (((LODWORD(STACK[0xE60]) ^ (2 * ((LODWORD(STACK[0xCE0]) << 16) & 0xC000000 ^ LODWORD(STACK[0xCE0]) ^ ((LODWORD(STACK[0xCE0]) << 16) ^ 0x3800000) & (((v248 ^ 0x870803C) << 8) & 0xC780000 ^ (((v248 ^ 0x870803C) << 8) ^ 0x78830000) & (v248 ^ 0x870803C) ^ 0x4000000)))) >> 24) ^ 0xC0));
  v305.i8[4] = *(STACK[0xDC0] + (((LODWORD(STACK[0xE70]) ^ (2 * ((v237 << 16) & 0xC000000 ^ v237 ^ ((v237 << 16) ^ 0x3800000) & (((v249 ^ 0x870803C) << 8) & 0xC780000 ^ (((v249 ^ 0x870803C) << 8) ^ 0x78830000) & (v249 ^ 0x870803C) ^ 0x4000000)))) >> 24) ^ 0xC0));
  v305.i8[5] = *(STACK[0xDC0] + (((LODWORD(STACK[0xE80]) ^ (2 * ((v255 << 16) & 0xC000000 ^ v255 ^ ((v255 << 16) ^ 0x3800000) & (((v250 ^ 0x870803C) << 8) & 0xC780000 ^ (((v250 ^ 0x870803C) << 8) ^ 0x78830000) & (v250 ^ 0x870803C) ^ 0x4000000)))) >> 24) ^ 0xC0));
  v305.i8[6] = *(STACK[0xDC0] + (((LODWORD(STACK[0xE90]) ^ (2 * ((LODWORD(STACK[0xD20]) << 16) & 0xC000000 ^ LODWORD(STACK[0xD20]) ^ ((LODWORD(STACK[0xD20]) << 16) ^ 0x3800000) & (((v251 ^ 0x870803C) << 8) & 0xC780000 ^ (((v251 ^ 0x870803C) << 8) ^ 0x78830000) & (v251 ^ 0x870803C) ^ 0x4000000)))) >> 24) ^ 0xC0));
  LODWORD(v156) = LODWORD(STACK[0xE10]) ^ STACK[0xE00] & 0x8C7883C0;
  v318 = v156 ^ 0x870803C;
  LODWORD(v156) = LODWORD(STACK[0xD30]) ^ 0x8C7883FC ^ (v156 ^ 0x84080300) & (LODWORD(STACK[0xD30]) << 8);
  v305.i8[7] = *(STACK[0xDC0] + (((LODWORD(STACK[0xDE0]) ^ (2 * ((v156 << 16) & 0xC000000 ^ v156 ^ ((v156 << 16) ^ 0x3800000) & ((v318 << 8) & 0xC780000 ^ ((v318 << 8) ^ 0x78830000) & v318 ^ 0x4000000)))) >> 24) ^ 0xC0));
  v319 = vmulq_s32(vmlaq_s32(vorrq_s8(v313, vandq_s8(vcgtq_u32(v301, v313), v281)), v307, *&STACK[0xA00]), *&STACK[0xA00]);
  v320 = vmovl_u8(*v305.i8);
  v306.i64[0] = 0x2000000020;
  v306.i64[1] = 0x2000000020;
  v321 = (LODWORD(STACK[0xDF0]) ^ 0xD49B295B) & (2 * LODWORD(STACK[0xD50])) ^ LODWORD(STACK[0xD50]);
  LODWORD(v156) = ((2 * (LODWORD(STACK[0xDF0]) ^ 0x54DB299F)) ^ 0x18F107F8) & (LODWORD(STACK[0xDF0]) ^ 0x54DB299F) ^ (2 * (LODWORD(STACK[0xDF0]) ^ 0x54DB299F)) & 0x8C7883FC;
  LODWORD(v239) = v156 ^ 0x84088004;
  LODWORD(v156) = (v156 ^ 0x100398) & (4 * v321) ^ v321;
  v322 = ((4 * v239) ^ 0x31E20FF0) & v239 ^ (4 * v239) & 0x8C7883F8;
  LODWORD(v156) = (v322 ^ 0x6003F0) & (16 * v156) ^ v156;
  v323 = ((16 * (v322 ^ 0x8C18800C)) ^ 0xC7883FC0) & (v322 ^ 0x8C18800C) ^ (16 * (v322 ^ 0x8C18800C)) & 0x8C7883C0;
  LODWORD(v156) = v156 ^ 0x8C7883FC ^ (v323 ^ 0x84080300) & (v156 << 8);
  v238.i8[7] = *(STACK[0xDC0] + (((LODWORD(STACK[0xDF0]) ^ (2 * ((v156 << 16) & 0xC000000 ^ v156 ^ ((v156 << 16) ^ 0x3800000) & (((v323 ^ 0x870803C) << 8) & 0xC780000 ^ (((v323 ^ 0x870803C) << 8) ^ 0x78830000) & (v323 ^ 0x870803C) ^ 0x4000000)))) >> 24) ^ 0xC0));
  v324 = vmovl_u8(v238);
  v325 = vaddq_s32(vaddw_high_u16(vmulq_s32(v317, *&STACK[0xA00]), v320), vandq_s8(vcgtq_u32(v306, vmovl_high_u16(v320)), v281));
  v326 = vaddq_s32(vaddw_u16(vmulq_s32(v316, *&STACK[0xA00]), *v324.i8), vandq_s8(vcgtq_u32(v306, vmovl_u16(*v324.i8)), v281));
  v327 = vaddq_s32(vaddw_high_u16(vmulq_s32(vmlaq_s32(v315, v302, *&STACK[0xA00]), *&STACK[0xA00]), v324), vandq_s8(vcgtq_u32(v306, vmovl_high_u16(v324)), v281));
  v328 = vmlaq_s32(*&STACK[0x9F0], vaddq_s32(vaddw_u16(v319, *v320.i8), vandq_s8(vcgtq_u32(v306, vmovl_u16(*v320.i8)), v281)), *&STACK[0xA00]);
  v329 = vmlaq_s32(*&STACK[0x9F0], v325, *&STACK[0xA00]);
  v330 = vmlaq_s32(*&STACK[0x9F0], v326, *&STACK[0xA00]);
  *(STACK[0xED0] + 48) = vmlaq_s32(*&STACK[0x9F0], v327, *&STACK[0xA00]);
  *(STACK[0xED0] + 32) = v330;
  *(STACK[0xED0] + 16) = v329;
  *STACK[0xED0] = v328;
  LODWORD(v156) = 1112314453 * (((&STACK[0x10ED8] | 0x48E36180) - (&STACK[0x10ED8] & 0x48E36180)) ^ 0xA7B54B59);
  LODWORD(v145) = STACK[0xEC0];
  LODWORD(STACK[0x10EEC]) = 1961923937 - v156;
  v331 = (&STACK[0xC4D0] + STACK[0xD70]);
  v331[7] = 0x7C7D7E7F78797A7BLL;
  LODWORD(STACK[0x10EF0]) = v145 - v156 + 699833156;
  STACK[0x10EF8] = v331;
  STACK[0x10ED8] = STACK[0xA98];
  STACK[0x10EE0] = STACK[0xED0];
  v332 = v145 - 22698;
  v333 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v145 + 16441)))(&STACK[0x10ED8]);
  return (*(v333 + 8 * ((30179 * (LODWORD(STACK[0x10EE8]) == -371865839)) ^ v332)))(3561296295, LODWORD(STACK[0xD60]), STACK[0xDA0]);
}

uint64_t sub_100203E34()
{
  v2 = *(v0 + 16);
  LODWORD(STACK[0x10ED8]) = (v1 - 1762649210) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0xD3FC8A04) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x2C0375F8)) ^ 0xE2FD4720));
  STACK[0x10EE0] = v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 28336)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * ((10087 * (*(v0 + 24) == ((v1 - 16369) | 0x40C2) - 23770)) ^ v1)))(v4);
}

uint64_t sub_100203EF0()
{
  v2 = STACK[0x7F80];
  v3 = 1012831759 * (((&STACK[0x10ED8] ^ 0x3694B0EF) - 2 * ((&STACK[0x10ED8] ^ 0x3694B0EF) & 0x7D13B4C0) + 2098443456) ^ 0x5B1412A5);
  STACK[0x10ED8] = STACK[0x7F80];
  LODWORD(STACK[0x10EE0]) = v3 ^ 0xD1377A90;
  LODWORD(STACK[0x10EE4]) = (v0 - 9924) ^ v3;
  v4 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 + 27956)))(&STACK[0x10ED8]);
  v5 = STACK[0x4AF0];
  v6 = 297845113 * (((&STACK[0x10ED8] | 0xAC478C44) - &STACK[0x10ED8] + (&STACK[0x10ED8] & 0x53B873B8)) ^ 0xDB7490DA);
  LODWORD(STACK[0x10EE0]) = 1559216456 - v6;
  STACK[0x10EE8] = v5;
  STACK[0x10ED8] = v2;
  STACK[0x10EF8] = v1;
  LODWORD(STACK[0x10EF0]) = v0 - v6 + 20528;
  v7 = (*(v4 + 8 * (v0 + 27414)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * ((9905 * (LODWORD(STACK[0x10EF4]) == ((v0 + 11230) ^ 0xE9D54C2A))) ^ v0)))(v7);
}

uint64_t sub_100204040()
{
  v1 = v0 - 27685;
  v2 = v0 ^ 0x4192;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * v2))();
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_10020406C()
{
  STACK[0x7508] = 0;
  LODWORD(STACK[0x927C]) = -371865839;
  *v2 = 98;
  LODWORD(STACK[0x10ED8]) = ((v3 ^ 0x1861) - 4687) ^ (1603510583 * (&STACK[0x10ED8] ^ 0x97DB32AB));
  v4 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * ((v3 ^ 0x1861) + 14327)))(&STACK[0x10ED8]);
  *(v2 + 1) = ((v3 ^ 0x61) + 104) ^ 0x8B ^ LODWORD(STACK[0x10EDC]);
  *(v2 + 2) = v1 - ((2 * v1) & 0x26) + 19;
  LODWORD(STACK[0x10ED8]) = (v3 ^ 0x1861) + 634647737 * (((&STACK[0x10ED8] | 0x484B67F) - &STACK[0x10ED8] + (&STACK[0x10ED8] & 0xFB7B4980)) ^ 0x69129983) - 212214586;
  v5 = (*(v4 + 8 * ((v3 ^ 0x1861) + 14308)))(&STACK[0x10ED8]);
  *(v2 + 4) = -1562523887;
  return (*(v4 + 8 * ((((((v3 ^ 0x1861) - 36162) | 0xE2) ^ 0x6D3) * (v0 & 1)) ^ v3 ^ 0x1861)))(v5);
}

uint64_t sub_1002041B8()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * (v0 - 4385));
  return (*(v1 + 8 * ((v0 - 184) ^ (v0 - 4385))))();
}

void sub_100204238(uint64_t a1)
{
  v1 = *(a1 + 16) ^ (906386353 * (((a1 | 0x92831781) - (a1 | 0x6D7CE87E) + 1836902526) ^ 0xA382DAA5));
  __asm { BRAA            X11, X17 }
}

uint64_t sub_10020451C(uint64_t a1, int a2)
{
  v12 = v7 < v8;
  *(v10 + v9) = *(v5 + (v9 & 0xF)) ^ *(v2 + v9) ^ *(v4 + (v9 & 0xF)) ^ ((v9 & 0xF) * (v6 + 51)) ^ *((v9 & 0xF) + v3 + 1);
  if (v12 == v9 + 1 > 0x93EAE6A4)
  {
    v12 = v9 + 1813322076 < v7;
  }

  return (*(v11 + 8 * ((v12 * a2) ^ v6)))((v6 - 11287));
}

uint64_t sub_1002045DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(a20 + 4 * a15) = ((2 * a8) & 0xFFAA9D7E) + 800782302 + (a8 ^ 0xFFD565EB ^ ((a7 - 37622) | 0x2114));
  v21 = (a5 ^ 0x9E61A91F) & (2 * (a5 & 0xDC712D5F)) ^ a5 & 0xDC712D5F;
  v22 = ((2 * (a5 ^ 0xAE63AB33)) ^ 0xE4250CD8) & (a5 ^ 0xAE63AB33) ^ (2 * (a5 ^ 0xAE63AB33)) & 0x7212866C;
  v23 = v22 ^ 0x12128224;
  v24 = (v22 ^ 0x60000448) & (4 * v21) ^ v21;
  v25 = ((4 * v23) ^ 0xC84A19B0) & v23 ^ (4 * v23) & 0x72128668;
  v26 = (v25 ^ 0x40020020) & (16 * v24) ^ v24;
  v27 = ((16 * (v25 ^ 0x3210864C)) ^ 0x212866C0) & (v25 ^ 0x3210864C) ^ (16 * (v25 ^ 0x3210864C)) & 0x72128640;
  v28 = v26 ^ 0x7212866C ^ (v27 ^ 0x20000600) & (v26 << 8);
  return (*(v20 + 8 * (a7 ^ (99 * (((((a5 + 596562591) ^ 0xEE831246) + 1449216252) ^ (a5 + 596562591) ^ (((a5 + 596562591) ^ 0x24307F2E) - 1663949420) ^ (((a5 + 596562591) ^ 0xE251B7D5) + 1521741161) ^ (((a5 + 596562591) ^ 0x6FFF7FFF) - 685955773)) == 1193125186)))))(a1, a2, a3, a4, a5 ^ (2 * ((v28 << 16) & 0x72120000 ^ v28 ^ ((v28 << 16) ^ 0x66C0000) & (((v27 ^ 0x5212802C) << 8) & 0x72120000 ^ 0x60100000 ^ (((v27 ^ 0x5212802C) << 8) ^ 0x12860000) & (v27 ^ 0x5212802C)))) ^ 0x3C542187u, (a7 - 2679));
}

uint64_t sub_100204824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11, uint64_t a12, unsigned int a13)
{
  *(*(a1 + 96) + 800) = 64;
  *(*(a1 + 96) + 804) = 1051086576;
  *(*(a1 + 96) + 808) = *(a1 + 96) + 816;
  v16 = *(a1 + 96) + 800;
  v17 = *(a2 + 8) + (((*(a2 + 4) ^ 0x860D8F2C) + 2045931732) ^ (((v15 + 184209498) & 0xFBF4D7F) - 1244569529 + (*(a2 + 4) ^ 0x3F745B6E)) ^ ((*(a2 + 4) ^ 0x50AC1353) - 1353454419)) - (((v13 ^ 0x3918109E) - 957878430) ^ ((v13 ^ 0xC6DBEFA5) + 958664795) ^ ((v13 ^ 0x1616382A) - 370554922));
  v18 = 155453101 * ((~&a10 & 0x492B3F09 | &a10 & 0xB6D4C0F0) ^ 0xAF0D24C6);
  a13 = (((v13 ^ 0xA6B70544) + 1497955004) ^ ((v13 ^ 0xE68F7049) + 426807223) ^ ((v13 ^ 0xA9EDB21C) + 1444040164)) - v18 + 838238044;
  a11 = v18 + v15 + 28181;
  a12 = v17;
  a10 = v16;
  v19 = (*(v14 + 8 * (v15 + 42199)))(&a10);
  return (*(v14 + 8 * v15))(v19);
}

uint64_t sub_100204A08@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v10 = a1 - 1;
  *(a2 + v10) = *(v6 + (v10 & 0xF)) ^ *(v3 + v10) ^ *(v4 + (v10 & 0xF) + 4) ^ ((v10 & 0xF) * v7) ^ *(v5 + (v10 & 0xF) + 4);
  return (*(v9 + 8 * (((v10 == 0) * v8) ^ v2)))();
}

uint64_t sub_100204A9C(uint64_t a1, int a2, char a3, int a4)
{
  v19 = v7 - 1;
  v20 = (v6 + (v8 + v19));
  v21 = (v5 + (v9 + v19));
  v22 = *v20;
  v23 = *(*v17 + (*v16 & v10));
  v24 = ((((v20 ^ v23) & 0x7FFFFFFF) * v11) ^ ((((v20 ^ v23) & 0x7FFFFFFF) * v11) >> 16)) * a2;
  v25 = ((((v21 ^ v23) & 0x7FFFFFFF) * a2) ^ ((((v21 ^ v23) & 0x7FFFFFFF) * a2) >> 16)) * a2;
  *v21 = *(v12 + (v24 >> 24)) ^ v22 ^ *(v13 + (v24 >> 24)) ^ *((v24 >> 24) + v15 + 5) ^ *(*(v18 - 176) + (v25 >> 24)) ^ *(v13 + (v25 >> 24)) ^ *((v25 >> 24) + v15 + 5) ^ v24 ^ v25 ^ (BYTE3(v24) * a3) ^ (BYTE3(v25) * a3);
  return (*(v14 + 8 * (((v19 == 0) * a4) ^ v4)))();
}

uint64_t sub_100204D24()
{
  v4 = (*(v2 + 8 * (v3 ^ 0xE224)))(v1 + 33, v0 + 33);
  v5 = ((v4 ^ 0xF9BEF9DA) - 2042558938 + ((2 * v4) & 0xF37DF3B4)) <= (v3 ^ 0xAB5D) - 34095;
  return (*(v2 + 8 * (((2 * v5) | (8 * v5)) ^ v3)))();
}

uint64_t sub_100204DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v13 = vrev64q_s8(**(v10 + 32));
  v14 = vextq_s8(v13, v13, 8uLL);
  v15.i64[0] = 0xD6D6D6D6D6D6D6D6;
  v15.i64[1] = 0xD6D6D6D6D6D6D6D6;
  v16 = vandq_s8(vaddq_s8(v14, v14), v15);
  v15.i64[0] = 0x6B6B6B6B6B6B6B6BLL;
  v15.i64[1] = 0x6B6B6B6B6B6B6B6BLL;
  v17 = veorq_s8(v14, v15);
  v15.i64[0] = 0x5555555555555555;
  v15.i64[1] = 0x5555555555555555;
  v18 = vrev64q_s8(veorq_s8(vaddq_s8(vaddq_s8(v17, v15), v16), xmmword_100F528F0));
  *(v11 - 112) = vextq_s8(v18, v18, 8uLL);
  return (*(v12 + 8 * (a3 ^ (54 * (a9 == 0)))))(a1, a2, a3, a4, a5, a6, a7, a8, a10);
}

uint64_t sub_100204F64()
{
  result = (*(v2 + 8 * (v1 ^ 0x645D)))(*v0);
  *v0 = -1;
  return result;
}

uint64_t sub_100204F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unsigned int a33)
{
  v37 = *(&a21 + v33 + 72);
  v38 = ((2 * v33) & 0x7FEB6FF8) + (v33 ^ 0x3FF5B7FF);
  *(a1 + (v38 - 1073068031)) = ((v34 + 46) | 0x42) ^ 0x49 ^ v37;
  *(a1 + (v38 - 1073068030)) = (BYTE1(v37) ^ 0x86) - ((2 * (BYTE1(v37) ^ 0x86)) & 0xBF) + 95;
  *(a1 + (v38 - 1073068029)) = (BYTE2(v37) ^ 0x7C) + (~(2 * (BYTE2(v37) ^ 0x7C)) | 0x41) + 96;
  *(a1 + (v38 - 1073068028)) = (HIBYTE(v37) ^ 0x1D) + (~(2 * (HIBYTE(v37) ^ 0x1D)) | 0x41) + 96;
  return (*(v36 + 8 * (((v33 + 4 < a33) * v35) ^ v34)))();
}

uint64_t sub_1002050D0@<X0>(uint64_t a1@<X4>, _DWORD *a2@<X5>, void *a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v9 = (((v7 ^ 0xF7C0796D) + 138380947) ^ ((v7 ^ 0xDCECCC24) + 588461020) ^ ((v7 ^ 0xC2F97258) + 1023839656)) + (v5 ^ 0x4E2DE564);
  v10 = ((2 * (v9 ^ 0x39742ADB)) ^ 0x45A7B5F2) & (v9 ^ 0x39742ADB) ^ (2 * (v9 ^ 0x39742ADB)) & 0xA2D3DAF8;
  v11 = (v9 ^ 0x1B37EA9B) & (2 * (v9 & 0x9BA7F022)) ^ v9 & 0x9BA7F022;
  v12 = ((4 * (v10 ^ 0xA2504A09)) ^ 0x8B4F6BE4) & (v10 ^ 0xA2504A09) ^ (4 * (v10 ^ 0xA2504A09)) & 0xA2D3DAF8;
  v13 = (v12 ^ 0x82434AE0) & (16 * ((v10 ^ 0x838090) & (4 * v11) ^ v11)) ^ (v10 ^ 0x838090) & (4 * v11) ^ v11;
  v14 = ((16 * (v12 ^ 0x20909019)) ^ 0x2D3DAF90) & (v12 ^ 0x20909019) ^ (16 * (v12 ^ 0x20909019)) & 0xA2D3DAD0;
  v15 = v13 ^ 0xA2D3DAF9 ^ (v14 ^ 0x20118A00) & (v13 << 8);
  v16 = v9 ^ (2 * ((v15 << 16) & 0x22D30000 ^ v15 ^ ((v15 << 16) ^ 0x5AF90000) & (((v14 ^ 0x82C25069) << 8) & 0x22D30000 ^ 0x20010000 ^ (((v14 ^ 0x82C25069) << 8) ^ 0x53DA0000) & (v14 ^ 0x82C25069))));
  v17 = (a5 + (v16 ^ 0xDBA245D0));
  v18 = 1864610357 * ((v17 ^ *(*a3 + (*a2 & 0x2D783910))) & 0x7FFFFFFF);
  v19 = 1864610357 * (v18 ^ HIWORD(v18));
  *v17 = *(a4 + (v19 >> 24)) ^ *((v16 ^ 0xDBA245D0) + v6 + 24) ^ *(v8 + (v19 >> 24)) ^ *((v19 >> 24) + a1 + 1) ^ v19 ^ (59 * BYTE3(v19));
  return (*(STACK[0xF18] + 8 * ((23 * (v16 == -610122288)) ^ v5)))();
}

uint64_t sub_100205320()
{
  v1 = STACK[0xF10] - 35016;
  *(STACK[0x7980] + 16) = (((v0 ^ 0x65C3DDC08BE45D67) - 0x65C3DDC08BE45D67) ^ ((v0 ^ 0xEC6939C690AA4244) + 0x1396C6396F55BDBCLL) ^ ((v0 ^ 0x89AAE406F29BD832) + 0x76551BF90D6427CELL)) + (*(*STACK[0xE50] + (*STACK[0xE58] & 0x51D1B4B8)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x23717FC5D5EE4B65) + 3923101457;
  LODWORD(STACK[0x6134]) += 4;
  return (*(STACK[0xF18] + 8 * (v1 ^ 0x2724)))();
}

uint64_t sub_1002054A4()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((v0 + 3950) | 0x6B) ^ 0x193A) + v0)))();
}

uint64_t sub_100205590@<X0>(int a1@<W8>)
{
  v3 = a1 ^ v2;
  v4 = (v3 - 4033) | 0x806;
  LODWORD(STACK[0xED0]) = v4;
  return (*(STACK[0xF18] + 8 * (((v4 + 10101) * (v1 == -2089813885)) ^ v3)))();
}

uint64_t sub_100205660()
{
  LODWORD(STACK[0x577C]) = v0;
  STACK[0x10ED8] = STACK[0x2380];
  STACK[0x10EE8] = &STACK[0xF28] ^ 0x215F96C1AC6420F3 ^ v1 ^ 0x2D04;
  LODWORD(STACK[0x10EE0]) = (v1 + 329037207) ^ (1112314453 * ((2 * ((&STACK[0x10000] + 3800) & 0x268F8A58) - (&STACK[0x10000] + 3800) + 1500542374) ^ 0xB6265F7F));
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x8DF9)))(&STACK[0x10ED8]);
  STACK[0x2380] = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_100205728()
{
  v1 = *STACK[0x7620];
  STACK[0xA7C8] = v1;
  return (*(STACK[0xF18] + 8 * (((v1 == 0) * ((v0 ^ 0x148F) + (v0 ^ 0xD87F) - 53896)) ^ v0)))();
}

uint64_t sub_1002057CC@<X0>(int a1@<W1>, int a2@<W8>)
{
  v6 = (v3 ^ 0xFAD7E37F) + 2 * v3;
  v7 = ((*(v5 + v6 + 86514817) ^ 0x5F) << 24) | ((*(v5 + v6 + 86514818) ^ 0x5F) << 16) | ((*(v5 + v6 + 86514819) ^ 0x5F) << 8);
  v8 = *(v5 + v6 + 86514820) ^ 0x5F;
  v9 = (v7 | v8) - 2 * ((v7 | v8) & 0x69D5C71B ^ v8 & 0xA);
  *(v2 + 4 * (((((a2 ^ 0xC8FF173A) + 1544380305) ^ a2 ^ ((a2 ^ 0x197D1A1D) - 1919987016) ^ ((a2 ^ 0xE47055CC) + 1887575400) ^ ((a2 ^ 0x5EFFEFBE) - 905074922)) >> 2) ^ 0x1AC36DD5)) = ((((v9 - 371865839) ^ 0xA58B2D0A) + 1517605622) ^ (((v9 - 371865839) ^ 0x3DEE4CA1) - 1039027361) ^ (((v9 - 371865839) ^ 0x71B0A6BA) - 1907402426)) + 1360767398;
  return (*(v4 + 8 * ((57071 * ((a2 - 1796061009) < 0x40)) ^ a1)))();
}

uint64_t sub_1002059A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v15 = *(v12 + 8 * a7);
  STACK[0x2C0] = v9 & 0xFFFFFFF8;
  STACK[0x2D0] = v9;
  return v15(vdupq_n_s64(0xFFFFFFFFFFFFFFF8), vdupq_n_s64(0x38uLL), vdupq_n_s64(v10), vdupq_n_s64(v11), vdupq_n_s64(v14), vdupq_n_s64(v13), vdupq_n_s64(v7), vdupq_n_s64(v8));
}

uint64_t sub_100205A98()
{
  v5 = (v2 + 2130706239) | (((v2 + 2130706239) < 0x567DD336) << 32);
  v6 = v5 + v3 + ((v3 < v1) << 32) - 0x11C8B8BEDLL;
  STACK[0x628] = v6;
  v5 += 468848748;
  v7 = v6 + ((v0 - 811603084) & 0x30606FF7u) - 9939 + 1919916853 > v5;
  if (v5 < 0x726FE3A2 != v6 > 0xFFFFFFFF8D901C5DLL)
  {
    v7 = v6 > 0xFFFFFFFF8D901C5DLL;
  }

  return (*(v4 + 8 * ((61 * !v7) ^ v0)))(STACK[0x3E0]);
}

uint64_t sub_100205B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t (*a29)(uint64_t, uint64_t, uint64_t, unint64_t *))
{
  v33 = (((v32 ^ 0x69921F3B) - 1771183931) ^ ((v32 ^ 0x9666A043) + 1771659197) ^ ((v32 ^ 0xE2883904) + 494388988)) + 2059530145 + (((LODWORD(STACK[0x2EC]) ^ 0x83257797) + 2094696553) ^ ((LODWORD(STACK[0x2EC]) ^ 0xF35AC510) + 212155120) ^ ((LODWORD(STACK[0x2EC]) ^ 0x6D0334FB) - 1828926715));
  v34 = v33 ^ ((v33 ^ 0x74F41787) - 1262286126) ^ ((v33 ^ 0x70E67E04) - 1328454829) ^ ((v33 ^ 0x4B0474DD) - 1959564916) ^ ((v33 ^ 0x70DEFFF7) - 1326849374) ^ 0x22B464D5;
  v35 = (((v31 ^ 0x8651FA5E) + 2041447842) ^ ((v31 ^ 0xDF3C0788) + 549714040) ^ ((v31 ^ 0x44117BAA) - 1141996458)) + (((LODWORD(STACK[0x2F0]) ^ 0x8FE8F741) + 1880557759) ^ ((LODWORD(STACK[0x2F0]) ^ 0x6E4B3107) - 1850421511) ^ ((LODWORD(STACK[0x2F0]) ^ 0xFCDF403A) + 52477894)) + 1311477590;
  v36 = (v35 ^ 0xCEAD7DB0) & (2 * (v35 & 0xECCD7DA2)) ^ v35 & 0xECCD7DA2;
  v37 = ((2 * (v35 ^ 0x173F9EF0)) ^ 0xF7E5C6A4) & (v35 ^ 0x173F9EF0) ^ (2 * (v35 ^ 0x173F9EF0)) & 0xFBF2E352;
  v38 = v37 ^ 0x8122152;
  v39 = (v37 ^ 0xF360C200) & (4 * v36) ^ v36;
  v40 = ((4 * v38) ^ 0xEFCB8D48) & v38 ^ (4 * v38) & 0xFBF2E350;
  v41 = (v40 ^ 0xEBC28140) & (16 * v39) ^ v39;
  v42 = ((16 * (v40 ^ 0x10306212)) ^ 0xBF2E3520) & (v40 ^ 0x10306212) ^ (16 * (v40 ^ 0x10306212)) & 0xFBF2E340;
  v43 = v41 ^ 0xFBF2E352 ^ (v42 ^ 0xBB222100) & (v41 << 8);
  LODWORD(STACK[0x2EC]) = v34;
  LODWORD(STACK[0x2F0]) = v35 ^ (2 * ((v43 << 16) & 0x7BF20000 ^ v43 ^ ((v43 << 16) ^ 0x63520000) & (((v42 ^ 0x40D0C252) << 8) & 0x7BF20000 ^ 0x9100000 ^ (((v42 ^ 0x40D0C252) << 8) ^ 0x72E30000) & (v42 ^ 0x40D0C252)))) ^ 0xC0F03D7A;
  v44 = (((v30 ^ 0x81FDCF91) + 2114072687) ^ ((v30 ^ 0x69CD7C4F) - 1775074383) ^ ((v30 ^ 0xF54C35A2) + 179554910)) - 1966776732 + (((LODWORD(STACK[0x2F4]) ^ 0xDE4026F6) + 566221066) ^ ((LODWORD(STACK[0x2F4]) ^ 0x657198C7) - 1701943495) ^ ((LODWORD(STACK[0x2F4]) ^ 0xA64D384D) + 1504888755));
  v45 = v44 ^ ((v44 ^ 0x54361018) - 469385588) ^ ((v44 ^ 0xAC7C93CD) + 474955103) ^ ((v44 ^ 0x68786D46) - 666123306) ^ ((v44 ^ 0xDFFEBFFF) + 1875710317) ^ 0x52B0D710;
  v46 = (((v29 ^ 0x3545EB03) - 893774595) ^ ((v29 ^ 0x3CA1460D) - 1017202189) ^ ((v29 ^ 0x14982B72) - 345516914)) + 1296856845 + (((LODWORD(STACK[0x2F8]) ^ 0x680680C4) - 1745256644) ^ ((LODWORD(STACK[0x2F8]) ^ 0xDAB075D3) + 625969709) ^ ((LODWORD(STACK[0x2F8]) ^ 0xAFCA736B) + 1345686677));
  v47 = (v46 ^ 0xED0C15E3) & (2 * (v46 & 0xEDAC95EB)) ^ v46 & 0xEDAC95EB;
  v48 = ((2 * (v46 ^ 0x345C1FB7)) ^ 0xB3E114B8) & (v46 ^ 0x345C1FB7) ^ (2 * (v46 ^ 0x345C1FB7)) & 0xD9F08A5C;
  v49 = v48 ^ 0x48108A44;
  v50 = (v48 ^ 0x91E00018) & (4 * v47) ^ v47;
  v51 = ((4 * v49) ^ 0x67C22970) & v49 ^ (4 * v49) & 0xD9F08A58;
  v52 = (v51 ^ 0x41C00850) & (16 * v50) ^ v50;
  v53 = ((16 * (v51 ^ 0x9830820C)) ^ 0x9F08A5C0) & (v51 ^ 0x9830820C) ^ (16 * (v51 ^ 0x9830820C)) & 0xD9F08A40;
  v54 = v52 ^ 0xD9F08A5C ^ (v53 ^ 0x99008000) & (v52 << 8);
  LODWORD(STACK[0x2F4]) = v45;
  LODWORD(STACK[0x2F8]) = v46 ^ (2 * ((v54 << 16) & 0x59F00000 ^ v54 ^ ((v54 << 16) ^ 0xA5C0000) & (((v53 ^ 0x40F00A1C) << 8) & 0x59F00000 ^ 0x9700000 ^ (((v53 ^ 0x40F00A1C) << 8) ^ 0x708A0000) & (v53 ^ 0x40F00A1C)))) ^ 0x5391072F;
  return a29(a1, a2, a3, &STACK[0x2A4]);
}

uint64_t sub_100206334(uint64_t a1)
{
  v1 = *a1 + 1603510583 * (((a1 | 0xAF019D87) - a1 + (a1 & 0x50FE6278)) ^ 0x2C);
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(v2 + 19);
  v127 = 4 * ((((v4 - v1) | (v1 - v4)) >> 7) & 1);
  v5 = (v2 + 1176 + v127 * 8);
  v6 = v5[2];
  v7 = v5[3];
  v9 = *v5;
  v8 = v5[1];
  v128 = 4 * (2 % v4);
  v10 = (v2 + 1176 + v128 * 8);
  v12 = v10[2];
  v11 = v10[3];
  v14 = *v10;
  v13 = v10[1];
  v129 = 4 * (3 % v4);
  v15 = (v2 + 1176 + v129 * 8);
  LODWORD(v10) = *(v7 + 4 * *(*(v2 + 48) + (v3[3] - 70)));
  LODWORD(v7) = v10 + 605587629;
  v16 = (v10 + 605587629) & 0x54291451;
  LODWORD(v10) = -((2 * v10) & 0x4831115A);
  v17 = v10 & 0x54291450;
  v18 = (v16 - (v10 & 0x54291450) + 676472994) & 0x54291451;
  v19 = (v10 & 0xA29242A4) - (v7 & 0xA29242A4) + 1160021320;
  v20 = v10 & v7 & 0xA29242A4;
  LODWORD(v10) = v10 & 0x944A90A;
  v21 = v17 & v7;
  v22 = v19 & 0xA29242A4;
  v23 = v15[2];
  v24 = v15[3];
  v25 = v18 + 2 * (v21 | v20) + 2 * (v10 & v7);
  v26 = (((v7 & 0x944A90A) - v10 + 42553876) & 0x944A90A) + v22;
  v27 = *(v6 + 4 * *(*(v2 + 136) + (v3[14] - 70)));
  v29 = *v15;
  v28 = v15[1];
  LODWORD(v15) = v25 + v26;
  v30 = *(v14 + 4 * *(*(v2 + 88) + (v3[8] - 70))) ^ *(v13 + 4 * *(*(v2 + 128) + (v3[13] - 70)));
  LODWORD(v6) = *(v24 + 4 * *(*(v2 + 112) + (v3[11] - 70)));
  LODWORD(v6) = (((2 * v6) >> 1) ^ 0x1F861D15) - ((2 * v6) >> 1) + v6;
  v31 = *(v29 + 4 * *(*(v2 + 120) + (v3[12] - 70)));
  LODWORD(v28) = *(v28 + 4 * *(*(v2 + 32) + (v3[1] - 70)));
  LODWORD(v28) = ((v28 ^ v31 | 0xC143DE33) - (~(v28 ^ v31) | 0x3EBC21CC) + ((2 * (v28 ^ ~v31)) & 0x7D784398)) ^ 0x3EBC21CC;
  v32 = *(v23 + 4 * *(*(v2 + 72) + (v3[6] - 70)));
  LODWORD(v28) = (v32 | v28) - (v28 | ~v32) + ~v32;
  v33 = (((v6 & 0x8A84950A ^ 0x95092A14) - (v28 & 0x8A84950A)) & 0x8A84950A | (v28 ^ v6) & 0x21512251 | ((v28 & 0x542A48A4) - (v6 & 0x542A48A4) + 676630856) & 0x542A48A4) ^ 0x9F861D15;
  v34 = *(*(v2 + 248) + v33);
  v35 = *(*(v2 + 272) + (v33 >> 24));
  v36 = *(*(v2 + 264) + BYTE2(v33));
  v37 = *(*(v2 + 256) + (((((v33 >> 8) ^ 0x5CCF86BD) >> 1) + (((v33 >> 8) ^ 0x5CCF86BD) & 1) - ((((v33 >> 8) ^ 0x5CCF86BD) >> 1) ^ 0x7F) + 127) ^ 0xBDLL));
  LODWORD(v9) = *(v9 + 4 * *(*(v2 + 56) + (v3[4] - 70)));
  v38 = *(v8 + 4 * *(*(v2 + 96) + (v3[9] - 70)));
  LODWORD(v8) = *(v12 + 4 * *(*(v2 + 40) + (v3[2] - 70)));
  v39 = ((v8 & 0x495142A1) - (v30 & 0x495142A1) + 312640834) & 0x495142A1 | (v8 ^ v30) & 0x122A2854 | ((v8 & 0xA484950A) - (v30 & 0xA484950A) + 1225337364) & 0xA484950A;
  v126 = v3;
  LODWORD(v7) = *(v11 + 4 * *(*(v2 + 80) + (v3[7] - 70)));
  LODWORD(v7) = 2 * ((v7 - ((2 * v7) & 0x495FCEF8) - 1531975812) | v39) - (v39 + v7 - ((2 * v7) & 0x495FCEF8) - 1531975812);
  v40 = ((v7 & 0x4A4514A4) + 344270116) & 0x4A4514A4 | ((v7 & 0x1490A912) + 77639956) & 0x1490A912 | ((v7 & 0xA12A4249) - 1574288822) & 0xA12A4249;
  v41 = *(*(v2 + 216) + v40);
  v42 = *(*(v2 + 232) + BYTE2(v40));
  v43 = *(*(v2 + 224) + BYTE1(v40));
  LODWORD(v11) = *(*(v2 + 1192) + 4 * *(*(v2 + 104) + (v3[10] - 70)));
  v44 = *(*(v2 + 240) + (v40 >> 24));
  LODWORD(v40) = *(*(v2 + 1176) + 4 * *(*(v2 + 24) + (*v3 - 70))) ^ *(*(v2 + 1184) + 4 * *(*(v2 + 64) + (v3[5] - 70)));
  LODWORD(v40) = (v40 | ~v11) - (v11 | ~v40) + 2 * (v11 & ~v40);
  v45 = *(*(v2 + 1200) + 4 * *(*(v2 + 144) + (v3[15] - 70)));
  v46 = ((2 * v45) | 0xAB2411A0) - (v45 ^ 0xD59208D0) - ((2 * v45) & 0x2411A0) + (((((2 * v45) >> 23) ^ 0x356) - ((2 * v45) >> 23)) << 22) + 713031680;
  v47 = (((v46 ^ v40) + (v40 & ~v46) + (v46 | ~v40) + 1) | 0x2A6DF72F) - ((2 * ((v46 ^ v40) + (v40 & ~v46) + (v46 | ~v40) + 1)) ^ 0x54DBEE5E) + (~((v46 ^ v40) + (v40 & ~v46) + (v46 | ~v40) + 1) | 0xD59208D0);
  v48 = *(*(v2 + 152) + ((((v46 ^ v40) + (v40 & ~v46) + (v46 | ~v40) + 1) | 0x2F) - ((2 * ((v46 ^ v40) + (v40 & ~v46) + (v46 | ~v40) + 1)) ^ 0x5E) + (~((v46 ^ v40) + (v40 & ~v46) + (v46 | ~v40) + 1) | 0xD0)));
  v49 = *(*(v2 + 176) + HIBYTE(v47));
  v50 = *(*(v2 + 168) + (v47 >> 17) - ((v47 >> 17) ^ 0x7F) + (HIWORD(v47) & 1) + 127);
  v51 = *(*(v2 + 160) + ((v47 >> 8) & 0xDD | (4 - ((v47 >> 8) & 0x22222222)) & 0x22));
  LODWORD(v28) = ((v38 & 0xA1254924) - (v9 & 0xA1254924) + 1112183368) & 0xA1254924;
  LODWORD(v3) = *(v2 + 18);
  v52 = ((v38 & 0xA88A451) - (v9 & 0xA88A451) + 85018786) & 0xA88A451;
  LODWORD(v33) = (v9 & 0x5452128A) - (v38 & 0x5452128A) + 681846036;
  LODWORD(v33) = (((v27 | v33 & 0x5452128A | v52 | v28) - ((v33 & 0x5452128A | v52 | v28) & v27)) | v15) - (((v27 | v33 & 0x5452128A | v52 | v28) - ((v33 & 0x5452128A | v52 | v28) & v27)) | ~v15);
  LODWORD(v28) = v33 + ~v15;
  LODWORD(v33) = (v15 - v33) | 0x241888AD;
  LODWORD(v40) = (v28 | 0xDBE77752) - ((2 * v28) ^ 0xB7CEEEA4) + v33;
  v53 = *(*(v2 + 184) + ((v28 | 0x52) - ((2 * v28) ^ 0xA4) + v33));
  v54 = *(*(v2 + 208) + BYTE3(v40));
  v55 = *(*(v2 + 200) + BYTE2(v40));
  v56 = *(*(v2 + 192) + ((v40 >> 8) & 7) + 4 * ((v40 >> 11) - ((v40 >> 11) ^ 0x1F)) + 124);
  v57 = (v2 + 1176 + ((v3 != 1) << 7));
  v58 = *(v57[3] + 4 * v35);
  v59 = *(*v57 + 4 * v48) ^ *(v57[1] + 4 * v56) ^ *(v57[2] + 4 * v42) ^ 0x11B9AA8A ^ (v58 + 297380491 + (~(2 * v58) | 0xDC8CAAEB));
  v60 = v59 >> 24;
  BYTE2(v47) = BYTE2(v59);
  v122 = v59;
  LODWORD(v59) = *(v57[v127 + 3] + 4 * v49);
  v61 = *(v57[v127] + 4 * v53) ^ *(v57[v127 + 2] + 4 * v36) ^ *(v57[v127 + 1] + 4 * v43) ^ (v59 - ((2 * v59) & 0x93B8BD5C) + 1239178926) ^ 0x49DC5EAE;
  LODWORD(v54) = *(v57[v128 + 3] + 4 * v54);
  LODWORD(v54) = *(v57[v128 + 1] + 4 * v37) ^ *(v57[v128] + 4 * v41) ^ *(v57[v128 + 2] + 4 * v50) ^ (v54 - ((2 * v54) & 0x3BA224E0) + 500241008);
  v62 = &v57[v129];
  v63 = v54 ^ 0x1DD11270;
  LODWORD(v59) = *(v62[3] + 4 * v44);
  v64 = *(*v62 + 4 * v34) ^ *(v62[1] + 4 * v51) ^ *(v62[2] + 4 * v55) ^ 0xA03BA087 ^ (v59 - ((2 * v59) & 0x4077410E) - 1606705017);
  v65 = v2 + 1176 + ((3 % v3) << 7);
  v66 = *(*(v2 + 376) + ((*(*v62 + 4 * v34) ^ *(v62[1] + 4 * v51) ^ *(v62[2] + 4 * v55)) ^ 0x87u ^ (v59 - ((2 * v59) & 0xE) - 121)));
  v124 = v3;
  v123 = 4 % v3;
  v67 = v2 + 1176 + ((2 % v3) << 7);
  LODWORD(v62) = *(*(v67 + v128 * 8 + 24) + 4 * *(*(v2 + 336) + (v61 >> 24)));
  LODWORD(v42) = *(*(v67 + v128 * 8 + 8) + 4 * *(*(v2 + 384) + BYTE1(v64)));
  LODWORD(v56) = *(*(v67 + v128 * 8) + 4 * *(*(v2 + 344) + (v54 ^ 0x70u)));
  LODWORD(v62) = (v62 - ((2 * v62) & 0x37E6DCB0) - 1678545320) ^ *(*(v67 + v128 * 8 + 16) + 4 * *(*(v2 + 296) + BYTE2(v47))) ^ (v42 & ~v56 | v56 & ~v42);
  v68 = v62 & 0x640C91A7 | ~v62 & 0x9BF36E58;
  LODWORD(v43) = *(*(v65 + 16) + 4 * *(*(v2 + 488) + BYTE2(v68)));
  LODWORD(v9) = *(*(v65 + v127 * 8 + 8) + 4 * *(*(v2 + 480) + BYTE1(v68)));
  LODWORD(v53) = *(*(v67 + v127 * 8 + 24) + 4 * *(*(v2 + 304) + v60));
  LODWORD(v51) = (v63 >> 17) - ((v63 >> 17) ^ 0x7F) + (WORD1(v63) & 1);
  LODWORD(v53) = (v53 & 0xA424A912) + ((2 * v53) & 0x4008540) + ((2 * v53) & 0x2842880) - ((2 * v53) & 0x4EC5AFC4) + (((v53 & 0x128942A4) + 51528360) & 0x128942A4) + (((v53 & 0x49521449) + 291640402) & 0x49521449) + 606109954;
  LODWORD(v54) = *(*(v67 + v127 * 8) + 4 * *(*(v2 + 312) + v61)) ^ *(*(v67 + v127 * 8 + 8) + 4 * *(*(v2 + 352) + (v63 >> 9) + ((v54 >> 8) & 1) - ((v63 >> 9) ^ 0x7F) + 127));
  LODWORD(v59) = *(*(v67 + v127 * 8 + 16) + 4 * *(*(v2 + 392) + BYTE2(v64)));
  LODWORD(v62) = (v54 | ~v59) + (v59 | ~v54) + 2 * (v59 ^ v54) + 2;
  v69 = (v53 & 0xA2509254) - (v62 & 0xA2509254);
  LODWORD(v54) = *(*(v67 + 24) + 4 * *(*(v2 + 400) + (v64 >> 24)));
  LODWORD(v64) = v54 - ((2 * v54) & 0x8F266) + (((((2 * v54) >> 20) ^ 0xFFFFFCFF) - ((2 * v54) >> 20)) << 19);
  LODWORD(v54) = *(*(v67 + v129 * 8 + 24) + 4 * *(*(v2 + 368) + (v63 >> 24)));
  LODWORD(v63) = ((((2 * v54) >> 1) ^ 0x15A0C50E) - (((2 * v54) >> 1) ^ 0xC33C7903) - 694371315) ^ 0xD6FEF7E7;
  LODWORD(v49) = *(*(v67 + 16) + 4 * *(*(v2 + 360) + (v51 + 127)));
  LODWORD(v54) = ((v63 + 1) ^ (v54 + 1453112333)) + 2 * ((v63 + 1) & (v54 + 1453112333));
  LODWORD(v62) = ((v62 & 0x54852921) - (v53 & 0x54852921) + 688542274) & 0x54852921 | ((v62 & 0x92A448A) + (v53 & 0x92A448A)) & 0x92A448A;
  LODWORD(v59) = (v62 & 0xA85124A | (v69 + 1151411368) & 0x2001240) + 33559106;
  LODWORD(v53) = ((v62 & 0x512A44A1) + 19023008) & 0x512A44A1 | v62 & 0xA450A914 | (v69 + 1151411368) & 0xA0508014 | v59 & 0xA85124A;
  v70 = v53 ^ 0x24408100;
  LODWORD(v29) = *(*(v65 + v129 * 8 + 16) + 4 * *(*(v2 + 456) + (WORD1(v59) & 1) + (v70 >> 17) - ((v70 >> 17) ^ 0x7F) + 127));
  v71 = *v67;
  LODWORD(v62) = *(*(v67 + 8) + 4 * *(*(v2 + 320) + BYTE1(v61)));
  LODWORD(v59) = *(*(v67 + v129 * 8 + 16) + 4 * *(*(v2 + 328) + BYTE2(v61))) ^ *(*(v67 + v129 * 8 + 8) + 4 * *(*(v2 + 288) + HIBYTE(v122))) ^ *(*(v67 + v129 * 8) + 4 * v66);
  LODWORD(v54) = ((v59 & 0x8A524449) - (v54 & 0x8A524449) + 346327186) & 0x8A524449 | (v59 ^ v54) & 0x21249292 | ((v59 & 0x54892924) + (v54 & 0x54892924)) & 0x54892924;
  LODWORD(v59) = (v54 | 0xA96343F2) - (~v54 | 0x569CBC0D);
  LODWORD(v67) = v59 + ((2 * ~v54) & 0xAD39781A);
  v72 = *(*(v65 + v129 * 8) + 4 * *(*(v2 + 504) + (v59 + ((2 * ~v54) & 0x1A))));
  LODWORD(v62) = v62 ^ *(v71 + 4 * *(*(v2 + 280) + v122)) ^ v49;
  LODWORD(v62) = (v64 + 293171) & ~v62 | v62 & ~(v64 + 293171);
  LODWORD(v64) = (v62 | 0x180386CC) - (~v62 | 0xE7FC7933) + ((2 * ~v62) & 0xCFF8F266);
  LODWORD(v62) = *(*(v65 + v129 * 8 + 8) + 4 * *(*(v2 + 416) + (v64 >> 9) - ((v64 >> 9) ^ 0x7F) + ((v64 >> 8) & 1) + 127));
  v73 = *(*(v2 + 440) + v53);
  v74 = *(*(v65 + v129 * 8 + 24) + 4 * *(*(v2 + 496) + HIBYTE(v68))) ^ ((((v62 ^ v72) + (v72 & ~v62) + (v62 | ~v72) + 1) | ~v29) + (v29 | ~((v62 ^ v72) + (v72 & ~v62) + (v62 | ~v72) + 1)) + 2 * (((v62 ^ v72) + (v72 & ~v62) + (v62 | ~v72) + 1) ^ v29) + 2);
  LODWORD(v59) = *(*(v65 + v128 * 8 + 24) + 4 * *(*(v2 + 464) + (v70 >> 24)));
  v75 = (*(*(v65 + v127 * 8) + 4 * v73) | ~v9) - (v9 | ~*(*(v65 + v127 * 8) + 4 * v73)) + 2 * (v9 & ~*(*(v65 + v127 * 8) + 4 * v73));
  LODWORD(v42) = v59 - ((2 * v59) & 0xCE20C880) + 1729127488;
  LODWORD(v54) = *(*(v65 + v128 * 8 + 8) + 4 * *(*(v2 + 512) + (((2 * BYTE1(v67)) & 4 | ((BYTE1(v67) & 0x22) + 2) & 0xE3) + ((BYTE1(v67) & 0x54 | (2 * BYTE1(v67)) & 0x20) ^ 0x10) + ((BYTE1(v67) & 0x89 | (2 * (BYTE1(v67) & 1))) ^ 1) - 19))) ^ *(*(v65 + v128 * 8) + 4 * *(*(v2 + 472) + v68));
  LODWORD(v56) = *(*(v65 + v128 * 8 + 16) + 4 * *(*(v2 + 424) + BYTE2(v64)));
  LODWORD(v60) = (v56 | v54) - (v56 & v54);
  LODWORD(v70) = *(*(v65 + 8) + 4 * *(*(v2 + 448) + ((v70 >> 8) & 1) + (v70 >> 9) - ((v70 >> 9) ^ 0x7F) + 127));
  v76 = *(*(v65 + 24) + 4 * *(*(v2 + 528) + BYTE3(v67)));
  LODWORD(v56) = ((((2 * v76) >> 1) ^ 0xC008E9DB) - (((2 * v76) >> 1) ^ 0xE09DA9C9) + 546652178) ^ 0xFFFF7FDB;
  v77 = ~(((v56 + 1) | (v76 - 1600831470)) + ((v56 + 1) | (1600831469 - v76))) + 1600831469 - v76;
  LODWORD(v71) = *(*v65 + 4 * *(*(v2 + 408) + v64));
  v78 = v2 + 1176 + (v123 << 7);
  LODWORD(v71) = (((-2 - ((v71 | ~v70) + (v70 | ~v71))) & 0x2150A889) - (v43 & 0x2150A889) + 44126482) & 0x2150A889 | (((-2 - ((v71 | ~v70) + (v70 | ~v71))) & 0x8A854254) + (v43 & 0x8A854254)) & 0x8A854254 | (((-2 - ((v71 | ~v70) + (v70 | ~v71))) & 0x542A1522) - (v43 & 0x542A1522) + 676604484) & 0x542A1522;
  LODWORD(v43) = (v71 & v77) + ~(v71 | v77);
  v79 = *(v78 + v129 * 8);
  v80 = v71 ^ v77;
  v81 = v43 & 0x5F6ABFED | v80 & 0xA0954012;
  LODWORD(v49) = *(*v78 + 4 * *(*(v2 + 536) + (v43 & 1) + (v81 >> 1) - ((v81 >> 1) ^ 0x7Fu) + 127));
  LODWORD(v43) = *(*(v65 + v127 * 8 + 16) + 4 * *(*(v2 + 520) + BYTE2(v67))) ^ v75;
  v82 = *(v78 + v127 * 8 + 16);
  LODWORD(v55) = *(*(v78 + v127 * 8 + 24) + 4 * *(*(v2 + 560) + (v81 >> 24)));
  v83 = *(*(v78 + v128 * 8 + 16) + 4 * *(*(v2 + 552) + (HIWORD(v80) & 1) + (v81 >> 17) - ((v81 >> 17) ^ 0x7F) + 127));
  LODWORD(v36) = *(*(v78 + v129 * 8 + 8) + 4 * *(*(v2 + 544) + BYTE1(v81)));
  LODWORD(v59) = *(*(v65 + v127 * 8 + 24) + 4 * *(*(v2 + 432) + BYTE3(v64)));
  LODWORD(v59) = (v59 ^ 0x6909FEA5) - ((2 * v59) & 0xD213FD4A ^ 0xD213FD4A) - ((2 * v59) & 0xD213FD4A) - 770441910;
  LODWORD(v59) = ((v43 & 0xB89C2108 | ~v43 & 0x4763DEF7) ^ 0x4763DEF7 | ~v59) - (v59 | (v43 & 0xB89C2108 | ~v43 & 0x4763DEF7) ^ 0xB89C2108) + 2 * (v59 & ((v43 & 0xB89C2108 | ~v43 & 0x4763DEF7) ^ 0xB89C2108));
  LODWORD(v56) = v59 ^ 0x6909FEA5;
  v84 = *(*(v78 + v127 * 8) + 4 * *(*(v2 + 568) + (v59 ^ 0xA5)));
  v85 = v55 - ((2 * v55) & 0x2A5416A);
  LODWORD(v55) = *(*(v78 + v128 * 8 + 24) + 4 * *(*(v2 + 592) + (BYTE3(v56) & 0x77777777) - (BYTE3(v56) & 0x88888888) + 2 * (BYTE3(v56) & 0x88888888)));
  LODWORD(v81) = ((624110400 - ((2 * v55) & 0x92911520)) & 0x92911520 | (((2 * v55) & 0x494A488A) + 290752786) & 0x494A488A | (((2 * v55) & 0x2424A254) + 67149828) & 0x2424A254) ^ 0x551A906;
  LODWORD(v43) = (v81 >> 24) - ((v81 >> 24) ^ 0x1F5);
  LODWORD(v64) = v55 - (v81 & 0x1B23DC);
  LODWORD(v29) = *(*(v78 + v129 * 8 + 16) + 4 * *(*(v2 + 584) + ((v59 ^ 0x6909FEA5) >> 16)));
  LODWORD(v67) = (v42 & 0x542A4912) - (v60 & 0x542A4912) + 676631076;
  LODWORD(v55) = ((v42 & 0x95124A4) - (v60 & 0x95124A4) + 44190024) & 0x95124A4;
  LODWORD(v81) = (v60 & 0xA2849249) - (v42 & 0xA2849249) + 1158227090;
  v86 = *(v78 + v128 * 8 + 8);
  LODWORD(v55) = v81 & 0xA2849249 | v55 | v67 & 0x542A4912;
  v87 = v55 ^ 0x67106440;
  LODWORD(v63) = *(*(v78 + v128 * 8) + 4 * *(*(v2 + 600) + (v55 ^ 0x40u)));
  LODWORD(v54) = *(*(v78 + 8) + 4 * *(*(v2 + 576) + (v56 >> 9) + ((v59 >> 8) & 1) - ((v56 >> 9) ^ 0x7F) + 127)) ^ v49;
  LODWORD(v59) = *(*(v78 + v129 * 8 + 24) + 4 * *(*(v2 + 624) + (v87 >> 24)));
  LODWORD(v62) = ((((2 * v59) & 0x75FC94BA) - 1) & ((v59 | 0xBAFE4A5D) - (v59 & 0x4501B5A2) + v59) | -((2 * v59) & 0x75FC94BA) & ~((v59 | 0xBAFE4A5D) - (v59 & 0x4501B5A2) + v59)) + ~(2 * (((v59 | 0xBAFE4A5D) - (v59 & 0x4501B5A2) + v59) | -((2 * v59) & 0x75FC94BA)));
  v88 = *(v78 + 24);
  LODWORD(v81) = *(*(v78 + 16) + 4 * *(*(v2 + 616) + BYTE2(v87)));
  LODWORD(v54) = v81 & ~v54 | v54 & ~v81;
  LODWORD(v56) = *(*(v78 + v127 * 8 + 8) + 4 * *(*(v2 + 608) + ((v67 >> 8) & 1) + (v87 >> 9) - ((v87 >> 9) ^ 0x7F) + 127));
  LODWORD(v37) = v56 & ~v84 | v84 & ~v56;
  LODWORD(v78) = v74 ^ ((v74 >> 12) & 0x4000 | ((((v74 ^ 0x181995CB) >> 16) & 1) << 18)) ^ 0x40000;
  LODWORD(v56) = (v78 & 0x10000) - 3 * ((1431655766 * (v78 & 0x10000)) >> 32);
  LODWORD(v81) = *(v79 + 4 * *(*(v2 + 632) + v74));
  LODWORD(v87) = ((v74 ^ 0x181995CB) & 0x4000000) - 3 * ((1431655766 * ((v74 ^ 0x181995CB) & 0x4000000)) >> 32);
  LODWORD(v62) = ((v29 ^ v81 ^ v36) & v62) + ~(v29 ^ v81 ^ v36 | v62);
  LODWORD(v36) = v62 ^ 0xBAFE4A5D;
  v89 = *(*(v2 + 760) + (v62 ^ 0xFFFFFF5D) + 256);
  v90 = *(*(v2 + 768) + (BYTE1(v62) ^ 0xFFFFFF4A) + 256);
  LODWORD(v62) = ((v56 * v56 - 3 * ((1431655766 * (v56 * v56)) >> 32)) << 18) | ((v87 * v87 - 3 * ((1431655766 * (v87 * v87)) >> 32)) << 14);
  LODWORD(v88) = *(v88 + 4 * *(*(v2 + 656) + HIBYTE(v74)));
  LODWORD(v55) = v88 + 1118713124;
  LODWORD(v56) = -1118713125 - v88;
  LODWORD(v88) = (((((2 * v88) >> 15) ^ 0x30AB8) - ((2 * v88) >> 15)) << 14) - ((2 * v88) & 0x6A48) + 1028784128;
  LODWORD(v88) = 2 * (v88 | v55) - (v55 & ~v88 | v88 & v56);
  LODWORD(v54) = (v54 | ~v88) + (v88 | ~v54) + 2 * (v88 ^ v54) + 2;
  LODWORD(v55) = (v54 & 0x4000) - 3 * ((1431655766 * (v54 & 0x4000)) >> 32);
  v91 = (((v54 ^ 0x42AE3526) >> 16) & 2 | ((v55 * v55 - 3 * ((1431655766 * (v55 * v55)) >> 32)) << 23)) ^ v54 ^ 0x42AE3526 ^ ((v54 << 9) | WORD1(v54)) & 0x800002;
  v92 = *(*(v2 + 664) + (((v54 ^ 0x42AE3526) >> 16) & 2 ^ v54 ^ 0x26 ^ BYTE2(v54) & 2));
  v93 = *(*(v2 + 688) + (v91 >> 24));
  v94 = v62 ^ v78;
  v95 = *(*(v2 + 680) + (WORD1(v54) & 1) + (v91 >> 17) - ((v91 >> 17) ^ 0x7F) + 127);
  v96 = *(*(v2 + 672) + (BYTE1(v54) ^ 0x35u));
  LODWORD(v54) = v37 ^ (v85 + 22192309) ^ *(v82 + 4 * *(*(v2 + 648) + BYTE2(v94)));
  LODWORD(v81) = v64 - (v43 << 23);
  v97 = *(*(v2 + 704) + (((v37 ^ (v85 - 24395) ^ *(v82 + 4 * *(*(v2 + 648) + BYTE2(v94)))) >> 8) ^ 0xA0u));
  LODWORD(v91) = *(v86 + 4 * *(*(v2 + 640) + BYTE1(v94)));
  LODWORD(v91) = (v91 ^ v63) + (v63 & ~v91) + (v91 | ~v63) + 1;
  LODWORD(v91) = (v81 + 889326) ^ 0xFA8D91EE ^ ((v91 ^ v83) + (v91 & ~v83) + (v83 | ~v91) + 1);
  v98 = *(*(v2 + 728) + v91);
  v99 = *(*(v2 + 752) + BYTE3(v91));
  v100 = *(*(v2 + 744) + BYTE2(v91));
  v101 = *(*(v2 + 736) + BYTE1(v91));
  v102 = (v2 + 1176 + ((5 % v124) << 7));
  v103 = *(v102[1] + 4 * v97);
  LODWORD(v97) = *(v102[3] + 4 * *(*(v2 + 784) + BYTE3(v36)));
  LODWORD(v92) = v103 ^ *(v102[2] + 4 * v100) ^ (v97 - ((2 * v97) & 0x16E00832) - 1955593191) ^ *(*v102 + 4 * v92);
  v104 = v92 ^ 0x8B700419;
  v105 = *(v102[v127 + 1] + 4 * v101) ^ (*(v102[v127] + 4 * *(*(v2 + 696) + (v54 ^ 0xB5u))) ^ *(v102[v127 + 2] + 4 * *(*(v2 + 776) + BYTE2(v36)))) ^ *(v102[v127 + 3] + 4 * v93);
  v106 = (*(v102[v128 + 1] + 4 * v90) ^ *(v102[v128] + 4 * v98)) ^ *(v102[v128 + 3] + 4 * *(*(v2 + 720) + (((v54 ^ 0x152A0B5) >> 24) & 0x77777777 | BYTE3(v54) & 0x88888888))) ^ *(v102[v128 + 2] + 4 * v95);
  v107 = (*(v102[v129 + 1] + 4 * v96) ^ *(v102[v129] + 4 * v89)) ^ *(v102[v129 + 2] + 4 * *(*(v2 + 712) + ((v54 ^ 0x152A0B5) >> 16))) ^ *(v102[v129 + 3] + 4 * v99);
  LODWORD(v123) = v92 ^ 0x8B7004E6;
  v108 = (v2 + 1176 + ((6 % v124) << 7));
  v121 = *(v108[1] + 4 * *(*(v2 + 832) + ((((v105 >> 8) & 0xFFFF00 ^ 0xD44255FF) - ((v105 >> 8) ^ 0xD442552F)) ^ 0xD0)));
  LODWORD(v98) = *(v108[v127 + 3] + 4 * *(*(v2 + 816) + (v104 >> 24)));
  LODWORD(v97) = *(v108[2] + 4 * *(*(v2 + 872) + BYTE2(v106)));
  LODWORD(v66) = *(v108[v127] + 4 * *(*(v2 + 824) + v105));
  LODWORD(v89) = *(v108[v128 + 3] + 4 * *(*(v2 + 848) + (v105 >> 24)));
  LODWORD(v36) = *(v108[v129] + 4 * *(*(v2 + 888) + v107));
  LODWORD(v49) = *(v108[v129 + 2] + 4 * *(*(v2 + 840) + ((((WORD1(v105) ^ 0x9D5279F1) >> 1) + ((WORD1(v105) ^ 0x9D5279F1) & 1) - (((WORD1(v105) ^ 0x9D5279F1) >> 1) ^ 0x7F) + 127) ^ 0xF1)));
  v109 = (v2 + 1176 + ((7 % v124) << 7));
  v125 = (v2 + 1176 + ((8 % v124) << 7));
  LODWORD(v105) = *(v108[v127 + 1] + 4 * *(*(v2 + 864) + BYTE1(v106)));
  LODWORD(v54) = *(v108[v128 + 1] + 4 * *(*(v2 + 896) + BYTE1(v107)));
  LODWORD(v92) = *(v108[v129 + 3] + 4 * *(*(v2 + 880) + (v106 >> 24)));
  LODWORD(v100) = *(v108[v128] + 4 * *(*(v2 + 856) + v106));
  LODWORD(v54) = 2 * (v100 | v54) - (v54 + v100);
  LODWORD(v37) = *(v108[3] + 4 * *(*(v2 + 912) + (v107 >> 24)));
  LODWORD(v88) = *(v108[v128 + 2] + 4 * *(*(v2 + 808) + (v104 >> 17) + WORD1(v104) - 2 * (v104 >> 17) - ((v104 >> 17) ^ 0x7F) + 127));
  LODWORD(v54) = ((v88 + v54 - 2 * (v88 & v54)) | ~v89) - (v89 | ~(v88 + v54 - 2 * (v88 & v54))) + 2 * (v89 & ~(v88 + v54 - 2 * (v88 & v54)));
  LODWORD(v106) = *(v109[v128] + 4 * *(*(v2 + 984) + v54));
  LODWORD(v99) = *(v109[v129 + 3] + 4 * *(*(v2 + 1008) + (((v54 ^ 0xA5000000) >> 24) ^ 0xA5)));
  LODWORD(v101) = ((v54 >> 19) & 8 | WORD1(v54) & 0x9E54) ^ WORD1(v54) & 0x61AB;
  LODWORD(v88) = (WORD1(v54) & 0x40) - 3 * ((1431655766 * (WORD1(v54) & 0x40)) >> 32);
  v110 = *(v109[2] + 4 * *(*(v2 + 1000) + (v101 | 0xFF) - (v101 ^ (8 * (v88 * v88 - 3 * ((1431655766 * (v88 * v88)) >> 32))) ^ 0xFF)));
  LODWORD(v54) = *(v109[v127 + 1] + 4 * *(*(v2 + 992) + (2 * BYTE1(v54) - (BYTE1(v54) & 0x5C) - (BYTE1(v54) & 0xA3))));
  LODWORD(v101) = *(v108[v129 + 1] + 4 * *(*(v2 + 800) + BYTE1(v104)));
  v111 = v92 ^ ((v101 | ~v36) + (v36 | ~v101) + 2 * (v101 ^ v36) + 2) ^ v49;
  LODWORD(v65) = v66 | ~v105;
  LODWORD(v49) = v105 | ~v66;
  LODWORD(v66) = v105 ^ v66;
  LODWORD(v87) = *(v109[v129] + 4 * *(*(v2 + 1016) + (((v111 & 1) - ((v111 >> 1) ^ 0x28ECBE52u) + ((v111 >> 1) ^ 0x28ECBE2Du) + 127) ^ 0x5A)));
  LODWORD(v105) = *(v109[3] + 4 * *(*(v2 + 1040) + (v111 >> 24)));
  LODWORD(v36) = *(v109[v127 + 2] + 4 * *(*(v2 + 1032) + BYTE2(v111)));
  LODWORD(v101) = *(v109[v128 + 1] + 4 * *(*(v2 + 1024) + BYTE1(v111)));
  LODWORD(v111) = *(v108[v127 + 2] + 4 * *(*(v2 + 904) + BYTE2(v107)));
  LODWORD(v111) = ((v111 & 0x548A4891) + ((v49 + v65 + 2 * v66 + 2) & 0x548A4891)) & 0x548A4891 | ((v111 & 0xA251524) + ((v49 + v65 + 2 * v66 + 2) & 0xA251524)) & 0xA251524 | ((v111 & 0xA150A24A) - ((v49 + v65 + 2 * v66 + 2) & 0xA150A24A) + 1117865108) & 0xA150A24A;
  v112 = (v111 | ~v98) + (v98 | ~v111) + 2 * (v111 ^ v98) + 2;
  LODWORD(v88) = *(v109[v127] + 4 * *(*(v2 + 952) + v112));
  LODWORD(v65) = (v88 ^ v54) & 0x52251449;
  LODWORD(v107) = ((v88 & 0xA48A4292) + (v54 & 0xA48A4292)) & 0xA48A4292;
  LODWORD(v54) = ((v88 & 0x950A924) - (v54 & 0x950A924) + 44126792) & 0x950A924;
  LODWORD(v88) = v107 | v65;
  LODWORD(v86) = *(v109[v128 + 3] + 4 * *(*(v2 + 976) + (v112 >> 24)));
  LODWORD(v107) = *(v109[v129 + 2] + 4 * *(*(v2 + 968) + BYTE2(v112)));
  LODWORD(v65) = *(v109[1] + 4 * *(*(v2 + 960) + BYTE1(v112)));
  LODWORD(v104) = *(*v108 + 4 * *(*(v2 + 792) + (v104 | 0xFF) - v123));
  LODWORD(v104) = (~v104 - (v121 | ~v104) + (v104 | v121)) ^ v97;
  v113 = v37 & ~v104 | v104 & ~v37;
  LODWORD(v104) = *(*v109 + 4 * *(*(v2 + 920) + v113));
  LODWORD(v104) = ((v65 | ~v104) - (v104 | ~v65) + 2 * (v104 & ~v65)) ^ v110;
  LODWORD(v66) = (v104 & 0xA445444A | 0x488A8894) - (v105 & 0xA445444A);
  LODWORD(v104) = ((v104 & 0x4928A924) - (v105 & 0x4928A924) + 307319368) & 0x4928A924 | ((v104 & 0x12921291) - (v105 & 0x12921291) + 86254882) & 0x12921291;
  v114 = v104 | v66 & 0xA445444A;
  v115 = *(*(v2 + 1072) + (((v114 ^ 0x3A000000u) >> 24) ^ 0x3ALL));
  LODWORD(v89) = *(v125[v129 + 1] + 4 * *(*(v2 + 1056) + BYTE1(v114)));
  LODWORD(v62) = *(v109[v127 + 3] + 4 * *(*(v2 + 944) + (v113 >> 24)));
  v116 = ((v88 | v54) ^ v36 | ~v62) - (v62 | ~((v88 | v54) ^ v36)) + 2 * (v62 & ~((v88 | v54) ^ v36));
  LODWORD(v95) = *(v125[v129 + 2] + 4 * *(*(v2 + 1096) + (WORD1(v116) & 0x1F) + 16 * ((v116 >> 21) - ((v116 >> 21) ^ 7)) + 112));
  LODWORD(v54) = v101 ^ *(v109[v128 + 2] + 4 * *(*(v2 + 936) + BYTE2(v113))) ^ v106;
  LODWORD(v106) = ((v86 << 15) & 0x20000 | (((v86 >> 28) & 1) << 29)) ^ v86 ^ v54;
  LODWORD(v54) = v106 ^ ((v54 << 15) & 0x20000 | (((v54 >> 28) & 1) << 29));
  LODWORD(v86) = (v54 & 0x10000000) - 3 * ((1431655766 * (v54 & 0x10000000)) >> 32);
  v117 = *(v125[v128] + 4 * *(*(v2 + 1112) + v106));
  LODWORD(v96) = ((v106 << 15) & 0x20000 | ((v86 * v86 - 3 * ((1431655766 * (v86 * v86)) >> 32)) << 29)) ^ v54;
  LODWORD(v86) = *(v125[v129 + 3] + 4 * *(*(v2 + 1136) + BYTE3(v96)));
  LODWORD(v88) = 419443927 * ((v113 >> 8) & 0x7EE26D);
  LOBYTE(v54) = -41 * (BYTE1(v113) & 0x92);
  LODWORD(v54) = *(v109[v129 + 1] + 4 * *(*(v2 + 928) + (-25 * ((((v54 & 0x94) - (v88 & 0x94) + 40) & 0x94) + 2 * (v54 & 0x20 & v88 | v88 & 0x94 & v54 | v54 & 0x4A & v88) + (((v88 & 0x21) - (v54 & 0x20)) & 0x3F) + (((v88 & 0x4A) - (v54 & 0x4A) + 20) & 0x4A)))));
  LODWORD(v54) = v87 & ~v54 | v54 & ~v87;
  LODWORD(v54) = v107 - v54 + 2 * (v54 & ~v107);
  v118 = v99 - v54 + 2 * (v54 & ~v99);
  LODWORD(v54) = *(v125[v129] + 4 * *(*(v2 + 1144) + (v99 - v54 + 2 * (v54 & ~v99))));
  LODWORD(v88) = *(v125[1] + 4 * *(*(v2 + 1088) + ((((v116 >> 8) & 1) - ((v116 >> 9) ^ 0xC1E0331E) + ((v116 >> 9) ^ 0xC1E03361) + 127) ^ 0xC2))) ^ *(*v125 + 4 * *(*(v2 + 1048) + (v104 | v66 & 0x4A)));
  LODWORD(v54) = 2 * (((v54 ^ v89) + (v89 & ~v54) + (v54 | ~v89) + 1) | v95) - (v95 + (v54 ^ v89) + (v89 & ~v54) + (v54 | ~v89) + 1);
  LODWORD(v100) = (v86 & 0x5244A8A1) - (v54 & 0x5244A8A1);
  LODWORD(v101) = *(v125[2] + 4 * *(*(v2 + 1128) + (v96 >> 17) + (WORD1(v96) & 1) - ((v96 >> 17) ^ 0x7F) + 127));
  LODWORD(v88) = v101 - v88 + 2 * (v88 & ~v101);
  LODWORD(v97) = *(v125[v127 + 1] + 4 * *(*(v2 + 1120) + ((v106 >> 8) & 1) + (v96 >> 9) - ((v96 >> 9) ^ 0x7F) + 127)) ^ *(v125[v127] + 4 * *(*(v2 + 1080) + v116));
  LODWORD(v54) = v54 ^ v86;
  LODWORD(v102) = v54 & 0xADBB575E | (v100 + 612979010) & 0x5244A8A1;
  result = (WORD1(v54) & 1) + (v102 >> 17) - ((v102 >> 17) ^ 0x7F);
  LODWORD(v100) = *(v125[3] + 4 * *(*(v2 + 1168) + (v118 >> 24)));
  LODWORD(v100) = v100 & ~v88 | v88 & ~v100;
  LODWORD(v88) = *(*(v2 + 2328) + v100);
  LODWORD(v106) = (v88 ^ 0xEEEEEEEE) + ((16 - ((2 * v88) & 0x48)) & 0x48) + ((((2 * v88) & 0x10) - ((2 * v88) & 0x80)) & 0xFFFFFFFB | (4 * ((v88 >> 1) & 1)));
  LODWORD(v54) = ~((v100 >> 8) & 0x162465) + 2 * ((v100 >> 8) & 0x162465) + ((v100 >> 8) & 0xE9DB9A) + 1;
  LODWORD(v65) = (v54 & 7) + 4 * ((v54 >> 3) - ((v54 >> 3) ^ 0x1F));
  LODWORD(v54) = *(v125[v127 + 2] + 4 * *(*(v2 + 1160) + (v118 >> 17) - ((v118 >> 17) ^ 0x7F) + (WORD1(v118) & 1) + 127));
  LODWORD(v54) = (v97 | ~v54) - (v54 | ~v97) + 2 * (v54 & ~v97);
  v120 = (v54 ^ *(v125[v127 + 3] + 4 * v115)) + (v54 & ~*(v125[v127 + 3] + 4 * v115)) + (*(v125[v127 + 3] + 4 * v115) | ~v54) + 1;
  LODWORD(v54) = (v120 >> 8) & 0x6780D3 ^ (v120 >> 12) & 0x40 ^ ((v120 >> 12) & 0x40 | (((v120 >> 18) & 1) << 22) | (v120 >> 8) & 0x987F2C);
  LODWORD(v101) = (v54 & 0x3F) + 32 * (((v54 ^ (16 * v120) & 0x400000) >> 6) - (((v54 ^ (16 * v120) & 0x400000) >> 6) ^ 3));
  LODWORD(v88) = v117 ^ *(v125[v128 + 1] + 4 * *(*(v2 + 1152) + BYTE1(v118))) ^ *(v125[v128 + 3] + 4 * *(*(v2 + 1104) + (v116 >> 24))) ^ *(v125[v128 + 2] + 4 * *(*(v2 + 1064) + ((((v66 >> 31) + (v66 >> 31)) << 14) | BYTE2(v114))));
  *v126 = v106 + 88;
  LOBYTE(v115) = *(*(v2 + 2392) + v120);
  LOBYTE(v116) = 2 * (v115 - ((v115 / 0x21u) | (32 * (v115 / 0x21u))));
  LODWORD(v54) = BYTE3(v88);
  v126[4] = (v115 ^ 0xEE) + (((v116 & 2) + 66 * (v115 / 0x21u) + (v116 & 0x7C)) & 0xDD) + 88;
  LOBYTE(v115) = *(*(v2 + 2456) + v88);
  v126[8] = (v115 ^ 0xCF) + ((2 * v115) & 0x9F) + 119;
  LOBYTE(v117) = *(*(v2 + 2520) + v102);
  v126[12] = (((2 * v117) & 0x8C) + (v117 ^ 0xC6)) ^ 0x80;
  LOBYTE(v117) = *(*(v2 + 2408) + (v101 + 96));
  v126[1] = (v117 ^ 0xD7) + ((2 * v117) & 0xAE) + 111;
  LOBYTE(v116) = *(*(v2 + 2472) + ((v88 >> 8) & 1) + (v88 >> 9) - ((v88 >> 9) ^ 0x7F) + 127);
  v126[5] = (v116 ^ 0xFE) + ((2 * v116) & 0xF8) + ((2 * v116) & 4) + 72;
  LOBYTE(v116) = *(*(v2 + 2536) + ((((v102 >> 6) & 0x317) - ((v102 >> 6) & 0x240B8E8) + 2 * ((v102 >> 6) & 0x240B8E8)) >> 2));
  v126[9] = (v116 ^ 0x5E) + ((2 * v116) & 0xBC) - 24;
  LOBYTE(v116) = *(*(v2 + 2344) + (v65 + 124));
  v126[13] = (v116 ^ 0x76) + ((2 * v116) & 0xEC) - 48;
  LOBYTE(v88) = *(*(v2 + 2488) + BYTE2(v88));
  v126[2] = (v88 ^ 0xE6) + ((2 * v88) & 0xCC) + 96;
  LOBYTE(v88) = *(*(v2 + 2360) + BYTE2(v100));
  v126[10] = (v88 ^ 0x5F) + ((2 * v88) & 0xBF) - 25;
  LOBYTE(v88) = *(*(v2 + 2552) + (result + 127));
  v126[6] = ((2 * v88) & 0x8C) + (v88 ^ 0x46);
  LOBYTE(v88) = *(*(v2 + 2424) + BYTE2(v120));
  v126[14] = (v88 ^ 0x7F) + 2 * v88 - 57;
  LOBYTE(v54) = *(*(v2 + 2504) + v54);
  v126[15] = (v54 ^ 0xF7) + ((76 * (v54 / 0x26u) + 2 * (v54 % 0x26u)) & 0xEF) + 79;
  LOBYTE(v54) = *(*(v2 + 2440) + (v120 >> 24));
  v126[11] = (v54 ^ 0x77) + ((2 * v54) & 0xEF) - 49;
  LOBYTE(v54) = *(*(v2 + 2376) + BYTE3(v100));
  v126[7] = (v54 ^ 0x7E) + ((2 * v54) & 0xFC) - 56;
  LOBYTE(v54) = *(*(v2 + 2568) + ((v102 >> 20) >> 4));
  v126[3] = (v54 ^ 0x66) + ((2 * v54) & 0xCC) - 32;
  return result;
}

uint64_t sub_100208954(uint64_t a1, uint64_t a2)
{
  STACK[0x75F0] = 0;
  LODWORD(STACK[0x2D30]) = -371865839;
  STACK[0x3C08] = 0;
  LODWORD(STACK[0x6B38]) = -371865839;
  return (*(STACK[0xF18] + 8 * (((v3 == ((v2 + 853001905) & 0xCD28AFFB) - 371901483) * ((v2 - 1864332952) & 0x6F1F7BCF ^ 0x132E)) ^ v2)))(a1, a2, 3923101457);
}

uint64_t sub_1002089DC()
{
  v6 = *v2;
  *(v3 - 1) = *(v2 - 1);
  *v3 = v6;
  return (*(v5 + 8 * (((v0 + v4 != 0) * (v1 ^ 0x1DBA)) ^ v1)))();
}

uint64_t sub_100208A7C()
{
  v1 = STACK[0x7690];
  v2 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x83D0] = v2;
  STACK[0x7690] = v1 + 576;
  LODWORD(STACK[0x26C8]) = -371865839;
  LODWORD(STACK[0x10EE4]) = v0 - 193924789 * ((((&STACK[0x10000] + 3800) | 0x7542833B) - ((&STACK[0x10000] + 3800) | 0x8ABD7CC4) - 1967293244) ^ 0xC3F9B15D) + 22786;
  STACK[0x10ED8] = v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0x9D08)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (((LODWORD(STACK[0x10EE0]) != -371865839) * ((v0 - 1287772119) & 0x4CC199E7 ^ 0x929A ^ (109 * (v0 ^ 0x56F7)))) ^ v0)))(v4);
}

uint64_t sub_100208BB8(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  v45 = *(a42 + 8 * (a5 - 10549));
  *(v44 - 136) = v43;
  v46.n128_u64[0] = (v42 + 13) & 0xF;
  v46.n128_u64[1] = (v42 + 12) & 0xF;
  v47.n128_u64[0] = (v42 + 11) & 0xF;
  v47.n128_u64[1] = (v42 + 10) & 0xF;
  v48.n128_u64[0] = (v42 + 9) & 0xF;
  v48.n128_u64[1] = v42 & 0xF ^ 8;
  v52.val[0].i64[0] = (v42 + 7) & 0xF;
  v52.val[0].i64[1] = (v42 + 6) & 0xF;
  v52.val[1].i64[0] = (v42 + 5) & 0xF;
  v52.val[1].i64[1] = (v42 + 4) & 0xF;
  v52.val[2].i64[0] = (v42 + 3) & 0xF;
  v52.val[2].i64[1] = (v42 + 2) & 0xF;
  v52.val[3].i64[0] = (v42 + 1) & 0xF;
  v52.val[3].i64[1] = v42 & 0xF;
  v49.n128_u64[0] = 0xF0F0F0F0F0F0F0FLL;
  v49.n128_u64[1] = 0xF0F0F0F0F0F0F0FLL;
  v50.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v50.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  return v45((v42 + 14) & 0xF, (a5 + 6576), v42 + v43 - 16, (v42 & 0x10) - 16, -44202, 63826, a1, v46, v47, v48, xmmword_100BC76B0, vqtbl4q_s8(v52, xmmword_100BC76B0), v49, v50);
}

void sub_100208CB8(uint64_t a1)
{
  v1 = 193924789 * (((a1 | 0x8E821DA4) - a1 + (a1 & 0x717DE25B)) ^ 0x38392FC2);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100208DF8()
{
  v2 = STACK[0x270];
  *(v0 - 132) = LODWORD(STACK[0x264]) ^ 0x1ADCC47F;
  *(v0 - 136) = LODWORD(STACK[0x268]) ^ 0x46FDEC13;
  *(v0 - 140) = LODWORD(STACK[0x26C]) ^ 0x6C0F1BD3;
  *(v0 - 128) = (v2 - 913474240) ^ LODWORD(STACK[0x260]);
  return (*(v1 + 8 * v2))();
}

uint64_t sub_100208E6C(unint64_t a1)
{
  v3 = (v1 + 659337309) & 0x8B2FFFC;
  v4 = ((v3 + 2130939044) ^ a1) >= (v1 - 22157) - 20665;
  return (*(v2 + 8 * (v4 | (16 * v4) | v1)))((v3 + 2130939044) ^ a1);
}

uint64_t sub_100208ED4(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v23 = v11 + v8;
  v24 = (v23 ^ 0xFD46B120) & (2 * (v23 & 0xF1673A48)) ^ v23 & 0xF1673A48;
  v25 = ((2 * (v23 ^ 0xDD4A9530)) ^ 0x585B5EF0) & (v23 ^ 0xDD4A9530) ^ (2 * (v23 ^ 0xDD4A9530)) & a3;
  v26 = v25 ^ a4;
  v27 = (v25 ^ a5) & (4 * v24) ^ v24;
  v28 = ((4 * v26) ^ a6) & v26 ^ (4 * v26) & a3;
  v29 = (v28 ^ a8) & (16 * v27) ^ v27;
  v30 = ((16 * (v28 ^ a7)) ^ v12) & (v28 ^ a7) ^ (16 * (v28 ^ a7)) & v14;
  v31 = v29 ^ a3 ^ (v30 ^ v16) & (v29 << 8);
  return (*(v13 + 8 * (((*(v10 + 4 * ((v11 + v8) ^ (2 * ((v31 << 16) & v18 ^ v31 ^ ((v31 << 16) ^ v19) & ((((v30 ^ v15) << 8) ^ v17) & (v30 ^ v15) ^ ((v30 ^ v15) << 8) & v18))) ^ v20)) == v21) * v22) ^ v9)))();
}

uint64_t sub_100209100(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, int a38, uint64_t a39)
{
  *(a39 + 4 * v40) = ~*(a39 + 4 * v40);
  v45 = v40 + 1;
  v46 = a1 - a38;
  if (a38 + a2 >= 0)
  {
    v46 = a38 + a2;
  }

  return (*(v44 + 8 * (((v45 >= v46) * (((v39 + v42) | v43) ^ v41)) ^ v39)))();
}

uint64_t sub_100209230(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  v45.n128_u64[0] = (v42 + 13) & 0xF;
  v45.n128_u64[1] = (v42 + 12) & 0xF;
  v46.n128_u64[0] = (v42 + 11) & 0xF;
  v46.n128_u64[1] = (v42 + 10) & 0xF;
  v47.n128_u64[0] = (v42 + 9) & 0xF;
  v47.n128_u64[1] = v42 & 0xF ^ 8;
  v50.val[0].i64[0] = (v42 + 7) & 0xF;
  v50.val[0].i64[1] = (v42 + 6) & 0xF;
  v50.val[1].i64[0] = (v42 + 5) & 0xF;
  v50.val[1].i64[1] = (v42 + 4) & 0xF;
  v50.val[2].i64[0] = (v42 + 3) & 0xF;
  v50.val[2].i64[1] = (v42 + 2) & 0xF;
  v50.val[3].i64[0] = (v42 + 1) & 0xF;
  v50.val[3].i64[1] = v42 & 0xF;
  v48.n128_u64[0] = 0xA5A5A5A5A5A5A5A5;
  v48.n128_u64[1] = 0xA5A5A5A5A5A5A5A5;
  return (*(a42 + 8 * v43))((v42 + 14) & 0xF, v42 + v44 - 16, (v43 - 8687) | 0x8400u, (v42 & 0x10) - 16, v42 & 0x10 ^ 0x10, ((v43 - 8687) | 0x8400u) ^ 0x8458, 40249, a1, v45, v46, v47, xmmword_100BC76B0, vqtbl4q_s8(v50, xmmword_100BC76B0), v48);
}

uint64_t sub_100209330@<X0>(uint64_t a1@<X2>, int a2@<W3>, uint64_t a3@<X8>)
{
  v10 = (v9 + 4 * a3);
  v11 = v9 + 4 * (v3 + a3);
  v12 = a3 + 2;
  v13 = v10[1];
  v14 = *(v9 + 4 * v12);
  v15 = *(v6 + 4 * (v14 & 1));
  v16 = v10[398];
  *v10 = v10[397] ^ ((v13 & 0x7FFFFFFE | v5 & 0x80000000) >> 1) ^ v7 ^ *(v6 + 4 * (v13 & 1));
  *(v11 + a1) = v16 ^ ((v14 & 0x7FFFFFFE | v13 & 0x80000000) >> 1) ^ v7 ^ v15;
  return (*(v8 + 8 * (((v12 == 226) * a2) ^ v4)))();
}

uint64_t sub_100209448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x2D0]) = v11;
  STACK[0x200] = v10;
  STACK[0x260] = v9;
  STACK[0x270] = v8;
  v13 = (*(a8 + 8 * (v12 + 30972)))(32);
  v14 = STACK[0x2F0];
  STACK[0x210] = 0;
  return (*(v14 + 8 * (((v13 == 0) * ((v12 + 3778595) & 0xFFC6AF51 ^ 0xA92A)) ^ v12)))();
}

uint64_t sub_100209528(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v8 = *v7 ^ v4;
  v9 = ((*a4 ^ v5) << STACK[0x2D0]) + v8;
  LODWORD(STACK[0x2E8]) = v9 - 2 * (v9 & 0x2F3E ^ v8 & 2) + 12092;
  return (*(v6 + 8 * SLODWORD(STACK[0x2C0])))();
}

uint64_t sub_100209598()
{
  v6 = v2 - 1;
  *(v4 + v6) = *(v3 + v6) - (((21 * (v0 ^ 0x93)) ^ 0xB0) & (2 * *(v3 + v6))) + 95;
  return (*(v5 + 8 * (v0 ^ v1 ^ (28362 * (((v6 - v0) | (v0 - v6)) >= 0)))))();
}

uint64_t sub_1002095F8(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = (*(v3 + 8 * (v2 + 36211)))(a1, va) != 0;
  return (*(v3 + 8 * ((v4 * ((v2 - 1970463788) ^ 0x8A8D05A9 ^ (461 * (v2 ^ 0x3E51)))) ^ v2)))();
}

int8x16_t sub_10020974C()
{
  v0 = (v181 ^ 0x7DE46EE7FFEFFEDBLL) - 0x8A46C00CC4C3288 + ((2 * v181) & 0xFBC8DDCFFFDFFDB0);
  v1 = vdupq_n_s64(v0);
  v2 = vaddq_s64(v1, xmmword_100F52330);
  v3 = vaddq_s64(v1, xmmword_100F52320);
  v4 = vaddq_s64(v1, xmmword_100F52350);
  v5 = vaddq_s64(v1, xmmword_100F52340);
  v6 = vaddq_s64(v1, xmmword_100F52370);
  v7 = vaddq_s64(v1, xmmword_100F52360);
  v8 = vaddq_s64(v1, xmmword_100F52390);
  v178 = v1;
  v9 = vdupq_n_s64(0xE23B094DD00522D0);
  v10 = vaddq_s64(v1, xmmword_100F52380);
  v11 = veorq_s8(v10, v9);
  v12 = veorq_s8(v8, v9);
  v13 = veorq_s8(v7, v9);
  v14 = veorq_s8(v6, v9);
  v15 = veorq_s8(v5, v9);
  v16 = vdupq_n_s64(0x8ABFFD18CC5C33ADLL);
  v17 = vandq_s8(v2, v16);
  v18 = vandq_s8(v3, v16);
  v19 = vandq_s8(v4, v16);
  v20 = vandq_s8(v5, v16);
  v21 = vandq_s8(v6, v16);
  v22 = vandq_s8(v7, v16);
  v23 = vandq_s8(v8, v16);
  v24 = vandq_s8(v10, v16);
  v25 = vdupq_n_s64(0xE23FF95CC81D2388);
  v26 = vandq_s8(vaddq_s64(v17, v17), veorq_s8(v2, v25));
  v27 = vandq_s8(vaddq_s64(v18, v18), veorq_s8(v3, v25));
  v28 = vandq_s8(vaddq_s64(v19, v19), veorq_s8(v4, v25));
  v29 = vandq_s8(vaddq_s64(v20, v20), veorq_s8(v5, v25));
  v30 = vandq_s8(vaddq_s64(v21, v21), veorq_s8(v6, v25));
  v31 = vandq_s8(vaddq_s64(v22, v22), veorq_s8(v7, v25));
  v32 = vandq_s8(vaddq_s64(v23, v23), veorq_s8(v8, v25));
  v33 = veorq_s8(v4, v9);
  v34 = veorq_s8(vandq_s8(vaddq_s64(v24, v24), veorq_s8(v10, v25)), v24);
  v35 = veorq_s8(v3, v9);
  v36 = veorq_s8(v2, v9);
  v37 = v2;
  v179 = v2;
  v38 = veorq_s8(v32, v23);
  v39 = veorq_s8(v31, v22);
  v40 = veorq_s8(v30, v21);
  v41 = veorq_s8(v29, v20);
  v42 = veorq_s8(v28, v19);
  v43 = veorq_s8(v27, v18);
  v44 = veorq_s8(v26, v17);
  v45 = vdupq_n_s64(0x1DC4F6B22FFADD2FuLL);
  v46 = vdupq_n_s64(0xD109E8AA38B222FALL);
  v47 = vorrq_s8(vandq_s8(v11, v46), vandq_s8(vaddq_s64(v11, v11), veorq_s8(v10, v45)));
  v48 = vorrq_s8(vandq_s8(v12, v46), vandq_s8(vaddq_s64(v12, v12), veorq_s8(v8, v45)));
  v49 = vorrq_s8(vandq_s8(v13, v46), vandq_s8(vaddq_s64(v13, v13), veorq_s8(v7, v45)));
  v50 = vorrq_s8(vandq_s8(v14, v46), vandq_s8(vaddq_s64(v14, v14), veorq_s8(v6, v45)));
  v51 = vorrq_s8(vandq_s8(v15, v46), vandq_s8(vaddq_s64(v15, v15), veorq_s8(v5, v45)));
  v52 = vorrq_s8(vandq_s8(v33, v46), vandq_s8(vaddq_s64(v33, v33), veorq_s8(v4, v45)));
  v53 = vorrq_s8(vandq_s8(v35, v46), vandq_s8(vaddq_s64(v35, v35), veorq_s8(v3, v45)));
  v54 = vorrq_s8(vandq_s8(v36, v46), vandq_s8(vaddq_s64(v36, v36), veorq_s8(v37, v45)));
  v55 = vdupq_n_s64(0x2884145504491105uLL);
  v56 = veorq_s8(v54, v55);
  v57 = veorq_s8(v53, v55);
  v58 = veorq_s8(v52, v55);
  v59 = veorq_s8(v51, v55);
  v60 = veorq_s8(v50, v55);
  v61 = veorq_s8(v49, v55);
  v62 = veorq_s8(v48, v55);
  v63 = vdupq_n_s64(0x4000E01014180079uLL);
  v64 = veorq_s8(v47, v55);
  v65 = veorq_s8(vandq_s8(veorq_s8(v54, v63), vshlq_n_s64(v44, 2uLL)), v44);
  v66 = veorq_s8(vandq_s8(veorq_s8(v53, v63), vshlq_n_s64(v43, 2uLL)), v43);
  v67 = veorq_s8(vandq_s8(veorq_s8(v52, v63), vshlq_n_s64(v42, 2uLL)), v42);
  v68 = veorq_s8(vandq_s8(veorq_s8(v51, v63), vshlq_n_s64(v41, 2uLL)), v41);
  v69 = veorq_s8(vandq_s8(veorq_s8(v50, v63), vshlq_n_s64(v40, 2uLL)), v40);
  v70 = veorq_s8(vandq_s8(veorq_s8(v49, v63), vshlq_n_s64(v39, 2uLL)), v39);
  v71 = veorq_s8(vandq_s8(veorq_s8(v48, v63), vshlq_n_s64(v38, 2uLL)), v38);
  v72 = veorq_s8(vandq_s8(veorq_s8(v47, v63), vshlq_n_s64(v34, 2uLL)), v34);
  v73 = vshlq_n_s64(v64, 2uLL);
  v74 = vshlq_n_s64(v62, 2uLL);
  v75 = vshlq_n_s64(v61, 2uLL);
  v76 = vshlq_n_s64(v60, 2uLL);
  v77 = vshlq_n_s64(v59, 2uLL);
  v78 = vdupq_n_s64(0xA213D154716445F4);
  v79 = vandq_s8(veorq_s8(v73, v78), v64);
  v80 = vandq_s8(veorq_s8(v74, v78), v62);
  v81 = vandq_s8(veorq_s8(v75, v78), v61);
  v82 = vandq_s8(veorq_s8(v76, v78), v60);
  v83 = vandq_s8(veorq_s8(v77, v78), v59);
  v84 = vshlq_n_s64(v58, 2uLL);
  v85 = vandq_s8(veorq_s8(v84, v78), v58);
  v86 = vshlq_n_s64(v57, 2uLL);
  v87 = vandq_s8(veorq_s8(v86, v78), v57);
  v88 = vshlq_n_s64(v56, 2uLL);
  v89 = vandq_s8(veorq_s8(v88, v78), v56);
  v90 = vdupq_n_s64(0x6884F4551C59117CuLL);
  v91 = vandq_s8(v73, v90);
  v92 = vandq_s8(v74, v90);
  v93 = vandq_s8(v75, v90);
  v94 = vandq_s8(v76, v90);
  v95 = vandq_s8(v77, v90);
  v96 = vandq_s8(v84, v90);
  v97 = vandq_s8(v86, v90);
  v98 = vandq_s8(v88, v90);
  v99 = vdupq_n_s64(0x2000D05410400179uLL);
  v100 = veorq_s8(vandq_s8(veorq_s8(veorq_s8(v91, v99), v79), vshlq_n_s64(v72, 4uLL)), v72);
  v101 = veorq_s8(vandq_s8(veorq_s8(veorq_s8(v92, v99), v80), vshlq_n_s64(v71, 4uLL)), v71);
  v102 = veorq_s8(vandq_s8(veorq_s8(veorq_s8(v93, v99), v81), vshlq_n_s64(v70, 4uLL)), v70);
  v103 = veorq_s8(vandq_s8(veorq_s8(veorq_s8(v94, v99), v82), vshlq_n_s64(v69, 4uLL)), v69);
  v104 = veorq_s8(vandq_s8(veorq_s8(veorq_s8(v95, v99), v83), vshlq_n_s64(v68, 4uLL)), v68);
  v105 = veorq_s8(vandq_s8(veorq_s8(veorq_s8(v96, v99), v85), vshlq_n_s64(v67, 4uLL)), v67);
  v106 = veorq_s8(vandq_s8(veorq_s8(veorq_s8(v97, v99), v87), vshlq_n_s64(v66, 4uLL)), v66);
  v107 = vaddq_s64(v103, v103);
  v108 = veorq_s8(vaddq_s64(v100, v100), v10);
  v109 = veorq_s8(vaddq_s64(v101, v101), v8);
  v110 = veorq_s8(vaddq_s64(v102, v102), v7);
  v111 = veorq_s8(v107, v6);
  v112 = veorq_s8(vaddq_s64(v104, v104), v5);
  v113 = vdupq_n_s64(0xFC2BCD14369682CCLL);
  v114 = vdupq_n_s64(0x1FA80EC958286753uLL);
  v115 = vdupq_n_s64(0x40A4A360215B45A4uLL);
  v116 = vdupq_n_s64(0xA32760BD4FE5A03BLL);
  v117 = vdupq_n_s64(0x2630B3C6DB91F47FuLL);
  v118 = vdupq_n_s64(0xC5B3701BB52F11E2);
  v119 = vdupq_n_s64(0x9BE1990BAD9E0A18);
  v120 = vaddq_s64(veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v108, v113), v114), vaddq_s64(veorq_s8(v108, v115), v116)), vaddq_s64(veorq_s8(v108, v117), v118)), v119);
  v121 = v120.i32[2];
  v122 = v120.i32[0];
  v123 = vaddq_s64(v178, xmmword_100F52750);
  v124 = v123.i32[2];
  v125 = v123.i32[0];
  v126 = vaddq_s64(veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v109, v113), v114), vaddq_s64(veorq_s8(v109, v115), v116)), vaddq_s64(veorq_s8(v109, v117), v118)), v119);
  v127 = v126.i32[2];
  v128 = v126.i32[0];
  v129 = vaddq_s64(v178, xmmword_100F52760);
  v130 = v129.i32[2];
  v131 = v129.i32[0];
  v132 = veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v111, v113), v114), vaddq_s64(veorq_s8(v111, v115), v116)), vaddq_s64(veorq_s8(v111, v117), v118));
  v133 = vaddq_s64(veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v110, v113), v114), vaddq_s64(veorq_s8(v110, v115), v116)), vaddq_s64(veorq_s8(v110, v117), v118)), v119);
  v134 = v133.i32[2];
  v135 = vaddq_s64(v178, xmmword_100F52770);
  v136 = v133.i32[0];
  v137 = vaddq_s64(v132, v119);
  v138 = v137.i32[2];
  v139 = v137.i32[0];
  v140 = vaddq_s64(v178, xmmword_100F52780);
  v141 = v140.i32[2];
  v142 = v140.i32[0];
  v143 = vaddq_s64(veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v112, v113), v114), vaddq_s64(veorq_s8(v112, v115), v116)), vaddq_s64(veorq_s8(v112, v117), v118)), v119);
  v144 = v143.i32[2];
  v145 = v143.i32[0];
  v146 = vaddq_s64(v178, xmmword_100F52790);
  v147 = v146.i32[2];
  v148 = v146.i32[0];
  v149 = veorq_s8(vaddq_s64(v105, v105), v4);
  v150 = vaddq_s64(veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v149, v113), v114), vaddq_s64(veorq_s8(v149, v115), v116)), vaddq_s64(veorq_s8(v149, v117), v118)), v119);
  v151 = v150.i32[2];
  v152 = vaddq_s64(v178, xmmword_100F527A0);
  v153 = v152.i32[2];
  v154 = v150.i32[0];
  v155 = v152.i32[0];
  v156 = veorq_s8(vandq_s8(veorq_s8(veorq_s8(v98, v99), v89), vshlq_n_s64(v65, 4uLL)), v65);
  v157 = veorq_s8(vaddq_s64(v106, v106), v3);
  v158 = veorq_s8(vaddq_s64(v156, v156), v179);
  v159 = veorq_s8(vaddq_s64(veorq_s8(v158, v113), v114), vaddq_s64(veorq_s8(v158, v115), v116));
  v160 = veorq_s8(vaddq_s64(veorq_s8(v157, v113), v114), vaddq_s64(veorq_s8(v157, v115), v116));
  v152.i64[0] = (v122 * v125);
  v161 = veorq_s8(v157, v117);
  v157.i64[0] = (v128 * v131);
  v113.i64[0] = (v136 * v135.i32[0]);
  v162 = veorq_s8(v160, vaddq_s64(v161, v118));
  v161.i64[0] = (v139 * v142);
  v163 = veorq_s8(v159, vaddq_s64(veorq_s8(v158, v117), v118));
  v159.i64[0] = (v145 * v148);
  v164 = vaddq_s64(v163, v119);
  v165 = vaddq_s64(v162, v119);
  v166 = vdupq_n_s64(94 * v0);
  v152.i64[1] = (v121 * v124);
  v157.i64[1] = (v127 * v130);
  v113.i64[1] = (v134 * v135.i32[2]);
  v161.i64[1] = (v138 * v141);
  v159.i64[1] = (v144 * v147);
  v167 = v165.i32[2];
  v168 = v165.i32[0];
  v169 = vaddq_s64(v178, xmmword_100F527B0);
  LODWORD(v0) = v169.i32[2];
  v170 = v169.i32[0];
  v171 = vaddq_s64(v178, xmmword_100F527C0);
  v115.i64[0] = (v154 * v155);
  v115.i64[1] = (v151 * v153);
  v172 = (v167 * v0);
  v173 = (v168 * v170);
  v174 = v164.i32[2];
  v175 = v164.i32[0];
  v164.i64[0] = v173;
  v164.i64[1] = v172;
  v171.i64[0] = (v175 * v171.i32[0]);
  v171.i64[1] = (v174 * v171.i32[2]);
  v176 = vrev64q_s8(vaddq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vaddq_s64(v166, v157), vaddq_s64(v166, v152)), vuzp1q_s32(vaddq_s64(v166, v161), vaddq_s64(v166, v113))), vuzp1q_s16(vuzp1q_s32(vaddq_s64(v166, v115), vaddq_s64(v166, v159)), vuzp1q_s32(vaddq_s64(v166, v171), vaddq_s64(v166, v164)))), xmmword_100F527D0));
  result = vextq_s8(v176, v176, 8uLL);
  v180[37] = result;
  return result;
}

uint64_t sub_100209FD0(__n128 a1)
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

uint64_t sub_10020A208(uint64_t a1, int a2, int a3)
{
  v13 = v10 - 1;
  *(v11 + v13) = *(v5 + (v13 & 0xF)) ^ *(v3 + v13) ^ *(v6 + (v13 & 0xF)) ^ ((v13 & 0xF) * v9) ^ *(v4 + (v13 & 0xF));
  return (*(v12 + 8 * (((v13 == 0) * ((a2 ^ v8) + a3)) ^ v7)))();
}

uint64_t sub_10020A304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, int a41)
{
  v43 = (((v41 ^ 0x3A420DC2) - 1105427451) ^ ((v41 ^ 0x3ECCFD7) - 2018359790) ^ ((v41 ^ 0xABDA733D) + 797244156)) - 1625558666;
  v44 = (((a41 ^ 0x8C13349B) + 1944898405) ^ ((a41 ^ 0x762B11FD) - 1982534141) ^ ((a41 ^ 0x13EDEFF2 ^ ((a9 ^ 0x52B1) + 88)) - 334357111)) - 1625558666;
  v45 = (v43 < 0xB5462A65) ^ (v44 < 0xB5462A65);
  v46 = v43 < v44;
  if (v45)
  {
    v46 = v44 < 0xB5462A65;
  }

  return (*(v42 + 8 * (((8 * v46) | (32 * v46)) ^ a9)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_10020A4D0()
{
  v1 = STACK[0xF10] - 29678;
  v2 = STACK[0x7980];
  *(v2 + 32) = v0;
  LODWORD(STACK[0x6134]) += 4;
  *(v2 + 48) = 16;
  *(v2 + 136) = 0;
  STACK[0x5C50] = 0x3AE1413A0D5C96D2;
  LODWORD(STACK[0x1374]) = 468601953;
  return (*(STACK[0xF18] + 8 * v1))();
}

int *sub_10020A608(int *result)
{
  if ((v1 ^ 0xF8EDDEF5) + ((2 * v1) & 0xF1DAB0C8) == -118628619)
  {
    v2 = -371865839;
  }

  else
  {
    v2 = 371891401;
  }

  *result = v2;
  return result;
}

uint64_t sub_10020A6BC@<X0>(int a1@<W8>)
{
  v3 = (((a1 ^ 0x78701F06) - 2020613894) ^ ((a1 ^ 0x439F1DAF) - 1134501295) ^ ((a1 ^ 0xD23AC5B8) + 767900232)) - 31417051;
  v4 = ((v3 ^ 0x257E8834) - 825515548) ^ v3 ^ ((v3 ^ 0x89BC522D) + 1644788731) ^ ((v3 ^ 0xCFF7FEFF) + 608360233) ^ (((((v1 - 7628) ^ 0xCB6E) + 2004839715) ^ v3) - 1664427238);
  LODWORD(STACK[0x610]) = v4 ^ 0xFD9F1139;
  v5 = (*(v2 + 8 * (v1 ^ 0xA609)))(v4 ^ 0x144AD628);
  STACK[0x608] = v5;
  return (*(v2 + 8 * ((55 * (v5 != 0)) ^ v1)))();
}

uint64_t sub_10020A938()
{
  v2.n128_u64[0] = 0xBEBEBEBEBEBEBEBELL;
  v2.n128_u64[1] = 0xBEBEBEBEBEBEBEBELL;
  v3.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v3.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  return (*(v1 + 8 * (v0 + 1060932542)))(58, v2, v3);
}

uint64_t sub_10020A9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  *(STACK[0x730] + 48) = v37;
  v40 = (*(v39 + 8 * (v38 + 17645)))(((v38 - 29079) | 0x80E2) ^ 0xE9D553E7 ^ *(STACK[0x730] + 48));
  *(STACK[0x730] + 40) = v40;
  return (*(v39 + 8 * (((*(STACK[0x730] + 40) == 0) * ((139 * (v38 ^ 0x8496)) ^ 0xAC07)) | (v38 + 14684))))(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a3, a36, a37);
}

uint64_t sub_10020AB28()
{
  v1 = STACK[0x7A38];
  v2 = STACK[0x7690];
  v3 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x6080] = v3;
  v4 = v3 + 16;
  STACK[0x9480] = (v3 + 16);
  STACK[0x1058] = (v3 + 48);
  STACK[0x7690] = (((v0 + 12338) | 8u) ^ 0x8B6BLL) + v2;
  v5 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 + 28630)))();
  v6 = (*(v5 + 8 * (v0 ^ 0x91D6)))(v4, 0, 32);
  STACK[0x3868] = 0;
  STACK[0x9448] = 0;
  LODWORD(STACK[0x26B4]) = -371865839;
  STACK[0x3130] = 0;
  LODWORD(STACK[0x7F40]) = 0;
  STACK[0x8B60] = v1;
  return (*(v5 + 8 * ((11 * ((((v0 - 19911) ^ (v1 == 0)) & 1) == 0)) ^ v0)))(v6);
}

uint64_t sub_10020AD80(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6)
{
  if ((((a4 ^ 0x7ACED6E9) - 2060375785) ^ ((a4 ^ 0x656DCF48) - 1701695304) ^ ((a4 ^ (a6 + 37842) ^ 0xF6761AAC) + 159981904)) - 371865839 >= 2)
  {
    a3 = a3;
  }

  else
  {
    a3 = a4;
  }

  return (*(v6 + 8 * a6))(a1, a2, a3);
}

uint64_t sub_10020AE00@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, int a3@<W8>, int8x16_t a4@<Q0>, int8x16_t a5@<Q4>)
{
  v8 = (a1 + (v5 + a3));
  v9 = *v8;
  v10 = v8[1];
  v11 = (a2 + v5);
  *v11 = vaddq_s8(vsubq_s8(v9, vandq_s8(vaddq_s8(v9, v9), a5)), a4);
  v11[1] = vaddq_s8(vsubq_s8(v10, vandq_s8(vaddq_s8(v10, v10), a5)), a4);
  return (*(v7 + 8 * ((31 * (v5 != 32)) ^ v6)))();
}

uint64_t sub_10020AE58@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X8>)
{
  v9 = ~v7 + v6;
  v10 = *(v5 + v9 - 15);
  v11 = *(v5 + v9 - 31);
  v12 = a5 + v9;
  *(v12 - 15) = v10;
  *(v12 - 31) = v11;
  return (*(v8 + 8 * (((a3 + v7 == a1) * a4) ^ a2)))();
}

uint64_t sub_10020AF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v11 = *(a5 + 24);
  v12 = __ROR8__((v11 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v13 = (v12 + a1) ^ 0xB3A94E2F7B1B987CLL;
  v14 = (__ROR8__((v12 + a1) ^ 0x72219E3FC273472, 8) + v13) ^ v7;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ a2;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (((2 * (v18 + v17)) | 0x9D9845494FC970F2) - (v18 + v17) - 0x4ECC22A4A7E4B879) ^ 0xF3B10F4D66EE1913;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ a3;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (((v23 + v22) & v10 ^ 0x983240801AB2500) + ((v23 + v22) ^ 0x961489F57C445A24) - (((v23 + v22) ^ 0x961489F57C445A24) & v10)) ^ 0x310EFE87C70BA17CLL;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (((v26 + v25) | 0x4AD00319D698339ELL) - ((v26 + v25) | a6) + a6) ^ 0xC562225A28435F2DLL;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = __ROR8__(v27, 8);
  *(v11 + 4) = (((((2 * (v29 + v28)) | 0x85FFF0CB5B49AA56) - (v29 + v28) - 0x42FFF865ADA4D52BLL) ^ 0xD9E38C42C8BADA33) >> (8 * ((v11 + 4) & 7))) ^ HIBYTE(v9) ^ 0x64;
  v30 = __ROR8__((v11 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v31 = (v6 - v30) & 0x6817BAF44AE008C1 | (v30 + a1) & 0x91E8450BB51FF73ELL;
  v32 = v31 ^ 0x6935A317B6C73CB3;
  v31 ^= 0xDDBEF4DB31FB90BDLL;
  v33 = (__ROR8__(v32, 8) + v31) ^ v7;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ a2;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xBD7D2DE9C10AA16ALL;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (v39 + v38 - ((2 * (v39 + v38)) & 0x88505E8AE28CC05ELL) - 0x3BD7D0BA8EB99FD1) ^ 0x4698AF52CE05A046;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ 0xAA9DDABAE2E4D47CLL;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = __ROR8__(v42, 8);
  v45 = STACK[0x2EC];
  v46 = (v44 + v43 - ((2 * (v44 + v43)) & 0xFEB301930C096308) + 0x7F5980C98604B184) ^ 0xF0EBA18A78DFDD37;
  *(v11 + 5) = LODWORD(STACK[0x280]) ^ (((__ROR8__(v46, 8) + (v46 ^ __ROR8__(v43, 61))) ^ a4) >> (8 * ((v11 + 5) & 7)));
  return (*(v8 + 8 * ((v45 - 35377) ^ 0x871E)))();
}

uint64_t sub_10020B354(uint64_t result)
{
  v1 = *(result + 8);
  *v1 = 0x78B76FB74D716A78;
  *(v1 + 8) = -1014993041;
  *(v1 + 12) = -18577;
  *(v1 + 14) = 120;
  *(v1 + 16) = 0;
  return result;
}

void sub_10020B390(uint64_t a1)
{
  v2 = (*(a1 + 16) ^ 0xFBC1F6FFD4F7BB63) + 0x43E09006460B644 + ((2 * *(a1 + 16)) & 0xF783EDFFA9EF76C6);
  v3 = v2 < 0x395871A7;
  v4 = v2 > *a1 + 962097575;
  if (*a1 > 0xFFFFFFFFC6A78E58 != v3)
  {
    v4 = v3;
  }

  v1 = *(a1 + 40) + 17902189 * ((a1 - 2 * (a1 & 0x52561CD7) - 766108457) ^ 0x5C190AC7);
  __asm { BRAA            X3, X17 }
}

uint64_t sub_10020B55C()
{
  v5 = v2 - 1;
  STACK[0x3E8] = v5;
  v6 = (v0 ^ 0xF6) & (2 * (v0 & 0xE7)) ^ v0 & 0xE7;
  v7 = ((2 * (v0 ^ 0x78)) ^ 0x3E) & (v0 ^ 0x78) ^ (2 * (v0 ^ 0x78)) & 0x9E;
  *(v3 + v5) = (v0 ^ (2 * (((4 * v7) & 0x98 ^ 0x13 ^ ((4 * v7) ^ 0x7C) & v7) & (16 * ((v7 ^ 0x1C) & (4 * v6) ^ v6)) ^ (v7 ^ 0x1C) & (4 * v6) ^ v6)) ^ 0x5D) * (v0 - 8);
  return (*(v4 + 8 * (((16 * (STACK[0x3E8] != 0)) | (32 * (STACK[0x3E8] != 0))) ^ (v1 - 16084))))();
}

uint64_t sub_10020B6FC()
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
  STACK[0xC340] = 0;
  STACK[0xC348] = v0;
  v10 = 16777619 * ((553300517 * v9 + 7) ^ (553300517 * v9)) % 7;
  v11 = *(&STACK[0xC340] | v10);
  *(&STACK[0xC340] | v10) = 0;
  LOBYTE(STACK[0xC347]) = v11;
  v12 = 16777619 * ((553300517 * v9 + 6) ^ (553300517 * v9)) % 6;
  v13 = *(&STACK[0xC340] | v12);
  *(&STACK[0xC340] | v12) = STACK[0xC346];
  LOBYTE(STACK[0xC346]) = v13;
  v14 = 16777619 * ((553300517 * v9 + 5) ^ (553300517 * v9)) % 5;
  v15 = *(&STACK[0xC340] | v14);
  *(&STACK[0xC340] | v14) = STACK[0xC345];
  LOBYTE(STACK[0xC345]) = v15;
  v16 = STACK[0xC340];
  LOBYTE(STACK[0xC340]) = STACK[0xC344];
  LOBYTE(STACK[0xC344]) = v16;
  v17 = 16777619 * ((553300517 * v9 + 3) ^ (553300517 * v9)) % 3;
  v18 = *(&STACK[0xC340] | v17);
  *(&STACK[0xC340] | v17) = STACK[0xC343];
  LOBYTE(STACK[0xC343]) = v18;
  v19 = STACK[0xC341];
  LOBYTE(STACK[0xC342]) = STACK[0xC340];
  LOWORD(STACK[0xC340]) = v19;
  v20 = vdup_n_s32(553300517 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xC340] = vmla_s32(v22, STACK[0xC340], vdup_n_s32(0x1000193u));
  STACK[0xC348] ^= STACK[0xC340];
  STACK[0xC348] = vmul_s32(vsub_s32(STACK[0xC348], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xC34A];
  LOWORD(STACK[0xC349]) = STACK[0xC348];
  LOBYTE(STACK[0xC348]) = v23;
  v24 = (&STACK[0xC348] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xC34B];
  LOBYTE(STACK[0xC34B]) = v19;
  LOBYTE(v24) = STACK[0xC348];
  LOBYTE(STACK[0xC348]) = STACK[0xC34C];
  LOBYTE(STACK[0xC34C]) = v24;
  v25 = (&STACK[0xC348] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xC34D];
  LOBYTE(STACK[0xC34D]) = v24;
  v26 = (&STACK[0xC348] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC34E];
  LOBYTE(STACK[0xC34E]) = v25;
  v27 = (&STACK[0xC348] | v10);
  v28 = *v27;
  *v27 = STACK[0xC34F];
  LOBYTE(STACK[0xC34F]) = v28;
  v29 = STACK[0xC348];
  v30 = (553300517 * STACK[0xC348]) ^ v9;
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
  *v43 = STACK[0xC348];
  return (*(STACK[0xF18] + 8 * (v1 - 25014)))(v48, v49);
}

uint64_t sub_10020BB88()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 21457 + ((v0 - 1992170569) & 0x76BE7F7C))))();
}

uint64_t sub_10020BBD8()
{
  v0 = STACK[0xF10] - 1716;
  v1 = STACK[0x9C6C];
  LODWORD(STACK[0x5A44]) = LODWORD(STACK[0xB93C]) - 371865839 + (((LODWORD(STACK[0x9C6C]) ^ 0x80AC7BD9) + ((STACK[0xF10] + 5078) ^ 0x7F531B36)) ^ ((LODWORD(STACK[0x9C6C]) ^ 0x1C94948A) - 479499402) ^ ((LODWORD(STACK[0x9C6C]) ^ 0x75ED2842) - 1978476610));
  v2 = (((v1 ^ 0x4DD0840E) - 1305510926) ^ ((v1 ^ 0x6385DF1B) - 1669717787) ^ ((v1 ^ 0xC7809C04) + 947872764)) - 371865839 > 7;
  return (*(STACK[0xF18] + 8 * ((v2 | (8 * v2)) ^ v0)))();
}

uint64_t sub_10020BD00()
{
  v1 = STACK[0xF18];
  STACK[0x98C0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 344885298 + v0 + 344891659)))();
}

uint64_t sub_10020BDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = (((v8 ^ 0x25A870E9) - 1577649872) ^ ((v8 ^ 0x8BD66E58) + 260630431) ^ ((v8 ^ 0x3C0AAF99) - 1202444704)) + v7 + a5 - 117331257;
  v11 = ((v6 - 753558825) ^ (v6 - 174445263)) + v5;
  v12 = (v10 < 0x68708000) ^ (v11 < 0x68708000);
  v13 = v10 > v11;
  if (v12)
  {
    v13 = v10 < 0x68708000;
  }

  return (*(v9 + 8 * ((201 * v13) ^ v6)))();
}

uint64_t sub_10020BE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, _BYTE *a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, int a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  *a17 = *(v41 - 225);
  a17[1] = *(v41 - 226);
  a17[2] = *(v41 - 227);
  a17[3] = *(v41 - 228);
  a17[4] = *(v41 - 229);
  a17[5] = *(v41 - 230);
  a17[6] = *(v41 - 231);
  a17[7] = *(v41 - 232);
  a17[8] = *(v41 - 233);
  a17[9] = *(v41 - 234);
  a17[10] = *(v41 - 235);
  a17[11] = *(v41 - 236);
  a17[12] = *(v41 - 237);
  v42 = 1012831759 * ((v38 - 2 * (v38 & 0xA1BDA50) + 169597521) ^ 0x1A88CCDB);
  *(v41 - 144) = &a38;
  *(v41 - 136) = 959188428 - v42;
  *(v41 - 132) = (a13 + 33248) ^ v42;
  (*(v39 + 8 * (a13 ^ 0xEFBA)))(v41 - 144);
  v43 = (((a21 + 321086827) & 0xB70D321F) << ((a13 ^ 0x6C) + 50)) & ((a21 + 321086827) ^ 0xB6E8B39F) ^ (a21 + 321086827) & 0xB70D321F;
  v44 = ((2 * ((a21 + 321086827) ^ 0xB4EAB3BD)) ^ 0x7CF0344) & ((a21 + 321086827) ^ 0xB4EAB3BD) ^ (2 * ((a21 + 321086827) ^ 0xB4EAB3BD)) & 0x3E781A2;
  v45 = v44 ^ 0x2080A2;
  v46 = (v44 ^ 0x450002) & (4 * v43) ^ v43;
  v47 = ((4 * v45) ^ 0xF9E0688) & v45 ^ (4 * v45) & 0x3E781A0;
  v48 = (v47 ^ 0x3860082) & (16 * v46) ^ v46;
  v49 = ((16 * (v47 ^ 0x618122)) ^ 0x3E781A20) & (v47 ^ 0x618122) ^ (16 * (v47 ^ 0x618122)) & 0x3E781A0;
  v50 = v48 ^ 0x3E781A2 ^ (v49 ^ 0x2600082) & (v48 << 8);
  v51 = 0xD79435E50D79436 * ((((a21 + 321086827) ^ (2 * ((v50 << 16) & 0x3E70000 ^ v50 ^ ((v50 << 16) ^ 0x1A20000) & (((v49 ^ 0x1878182) << 8) & 0x3E70000 ^ 0x660000 ^ (((v49 ^ 0x1878182) << 8) ^ 0x67810000) & (v49 ^ 0x1878182u)))) ^ 0x1DCE78CF6C1DC1BELL) - 0x1DCE78CFAEF3D429) ^ (((a21 + 321086827) ^ (2 * ((v50 << 16) & 0x3E70000 ^ v50 ^ ((v50 << 16) ^ 0x1A20000) & (((v49 ^ 0x1878182) << 8) & 0x3E70000 ^ 0x660000 ^ (((v49 ^ 0x1878182) << 8) ^ 0x67810000) & (v49 ^ 0x1878182u)))) ^ 0x3CB0BA6E0B550D5ELL) + 0x434F45913644E737) ^ (((a21 + 321086827) ^ (2 * ((v50 << 16) & 0x3E70000 ^ v50 ^ ((v50 << 16) ^ 0x1A20000) & (((v49 ^ 0x1878182) << 8) & 0x3E70000 ^ 0x660000 ^ (((v49 ^ 0x1878182) << 8) ^ 0x67810000) & (v49 ^ 0x1878182u)))) ^ 0x217EC2A1D4CEFDBBLL) + 0x5E813D5EE9DF17D4)) - 0x161172066CB18B4DLL;
  v52 = v51 ^ ((v51 ^ 0x66DA5791FAD6D1C7) - 0x7909CCE3306A106CLL) ^ ((v51 ^ 0x5E12FABC2DC6672ALL) - 0x41C161CEE77AA681) ^ ((v51 ^ 0xF8E653B1E49B93A1) + 0x18CA373CD1D8ADF6) ^ ((v51 ^ 0xDFFD65EEF937E4E7) + 0x3FD10163CC74DAB4);
  v53 = ((v52 ^ 0xE03E0674FCD1BF06) - 0x46AEEAA9B2F4F375) ^ ((v52 ^ 0xD5104AF6C575FAB5) - 0x7380A62B8B50B6C6);
  v54 = __CFADD__(19 * (v53 ^ ((v52 ^ 0x2AFDD7F0F3188418) + 0x7392C4D242C23795)), 0xC001E206D7658708) + (((v53 ^ ((v52 ^ 0x2AFDD7F0F3188418) + 0x7392C4D242C23795)) * 0x13uLL) >> 64) + 19 * ((__CFADD__(v52 ^ 0xE03E0674FCD1BF06, 0xB95115564D0B0C8BLL) - 1) ^ (__CFADD__(v52 ^ 0xD5104AF6C575FAB5, 0x8C7F59D474AF493ALL) - 1) ^ (__CFADD__(v52 ^ 0x2AFDD7F0F3188418, 0x7392C4D242C23795) - 1)) + 1135475344;
  v55 = (a23 - 1641506742) % 0x11u + 1641506747;
  v56 = (v55 ^ 0x96F70C12) & (2 * (((a23 - 1641506742) % 0x11u - 69) & 0x47)) ^ ((a23 - 1641506742) % 0x11u - 69) & 0x47 ^ ((4 * (((((a23 - 1641506742) % 0x11u - 69) & 0x47) >> 1) & 1)) | 0xCC9440);
  v57 = (2 * (v55 ^ 0x96F70C12)) & 0x54 ^ 0x55 ^ ((2 * (v55 ^ 0x96F70C12)) ^ 0x112028AA) & (v55 ^ 0x96F70C12);
  v58 = (4 * v56) & 0x121014 ^ v56 ^ ((4 * v56) ^ 0x3204100) & v57;
  v59 = (4 * v57) & 0x8818454 ^ 0x8818401 ^ ((4 * v57) ^ 0x23204154) & v57;
  v60 = (16 * v58) & 0x8DF9450 ^ v58 ^ ((16 * v58) ^ 0xDE84400) & v59;
  v61 = (16 * v59) & 0x8DF9450 ^ 0x69005 ^ ((16 * v59) ^ 0x8DF94550) & v59;
  v62 = v60 ^ (v60 << 8) & 0x8DF9400 ^ ((v60 << 8) ^ 0x16804000) & v61 ^ 0x491415;
  LODWORD(v53) = 19522 * v40 - 1091454612 - (((19522 * v40 - 1091454612) / 0x10001u) | (((19522 * v40 - 1091454612) / 0x10001u) << 16)) + 1301 * (((2 * v55) ^ (4 * ((v62 << 16) & 0x8DF0000 ^ v62 ^ ((v62 << 16) ^ 0x14550000) & ((v61 << 8) & 0x8DF0000 ^ 0x4B0000 ^ ((v61 << 8) ^ 0x1F940000) & v61))) ^ 0xE1849E25) - v54) - 130049698;
  LODWORD(v52) = v40 ^ ((v40 ^ 0x4C22ADC2) - 1642482632) ^ ((v40 ^ 0x828D974E) + 1354141372) ^ ((v40 ^ 0x3C94277C) - 290505078) ^ ((v40 ^ 0xDFFFFBFA) + 231006736) ^ (v53 - ((v53 / 0x10001) | ((v53 / 0x10001) << 16))) ^ 0x2DC4E60A ^ ((2663 * ((v40 - 767878666) / 0x3E8u + 9107 * v55 + 3903 * v54) - 1138840796) % 0x6869);
  LODWORD(v53) = 139493411 * (((v38 | 0xDAE89203) - (v38 | 0x25176DFC) + 622292476) ^ 0xD6C57346);
  *(v41 - 132) = a13 - v53 + 29384;
  *(v41 - 128) = v53 + 404414912;
  *(v41 - 144) = &a30;
  *(v41 - 120) = a19 + 17 * ((((2 * (v52 % 0x10C945)) & 0x1BDCDE) + ((v52 % 0x10C945) ^ 0xAFEDEE6F) + 1343361425) % 0x32);
  v63 = (*(v39 + 8 * (a13 + 42565)))(v41 - 144);
  return (*(v39 + 8 * ((29278 * (*(v41 - 136) == -371865839)) ^ a13)))(v63);
}

uint64_t sub_10020C6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15, int a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  v27 = 634647737 * ((2 * (v26 & 0x18E6E9A9B7F5C158) - v26 + 0x67191656480A3EA0) ^ 0xBDC2B9B9259C115CLL);
  a13 = -634647737 * ((2 * (v26 & 0xB7F5C158) - v26 + 1208630944) ^ 0x259C115C);
  a14 = ((v22 - 23454165) ^ 0x1384) - v27;
  a16 = v22 - 23454165 + v27;
  a19 = v22 - v27 + v24;
  a20 = ((v22 - 23454165) ^ 0xD) - v27;
  a17 = v27 ^ 0x5BB8;
  a18 = v23 - v27;
  v28 = (*(v20 + 8 * v21))(&a13);
  return (*(v25 + 8 * a15))(v28);
}

uint64_t sub_10020C7B8@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v6 = v4 < 0x488AC31F;
  *(v3 + a2) = 0;
  if (v6 == a2 + 1 > (98 * (v2 ^ 0x1EA0u)) - 1217071602)
  {
    v6 = a2 + 1217053472 < v4;
  }

  return (*(a1 + 8 * ((!v6 * v5) ^ v2)))();
}

uint64_t sub_10020C86C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v28 = v17 - 1;
  v29 = ((v16 ^ 0x7E) + 99) ^ v16 ^ ((v16 ^ a9) + a2) ^ ((v16 ^ a3) + a4) ^ ((((v14 | 0x80) + a5) ^ v16) + a6);
  v30 = (((v29 ^ a8) + v18) ^ ((v29 ^ v19) + v21) ^ ((v29 ^ v22) + v23)) + v24;
  *(a1 + v28) = v30 * (v16 + a7) + ((((v16 + a7) << 7) ^ 0x80) + v30 * v25) * v26;
  return (*(v20 + 8 * (((v28 == 0) * v27) ^ v15)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14);
}

uint64_t sub_10020C980@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  if ((a2 ^ 0x403BFFF9) + ((2 * a2) & 0x8076B0D0) == 1077673977)
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

uint64_t sub_10020C9F4()
{
  v2 = *(*(&off_1010A0B50 + v0 - 39998) - 1248606635);
  v3 = ((2 * v2) & 0x1FFF77474) + (v2 ^ 0xBBBFBFFFFFFBBA3ALL);
  STACK[0x6E88] = v3 + 0x7DFFF1AFE8AF7DE8;
  v4 = ((v3 - 782584309) ^ 0xEA18FB8) & (2 * ((v3 - 782584309) & (v0 + 782790215 + v0 - 7585))) ^ (v3 - 782584309) & (v0 + 782790215 + v0 - 7585);
  v5 = ((2 * ((v3 - 782584309) ^ 0x4AE281F0)) ^ 0xC8961C98) & ((v3 - 782584309) ^ 0x4AE281F0) ^ (2 * ((v3 - 782584309) ^ 0x4AE281F0)) & 0x644B0E4C;
  v6 = v5 ^ 0x24490244;
  v7 = (v5 ^ 0x40030C04) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0x912C3930) & v6 ^ (4 * v6) & 0x644B0E48;
  v9 = (v8 ^ 0x80800) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x6443064C)) ^ 0x44B0E4C0) & (v8 ^ 0x6443064C) ^ (16 * (v8 ^ 0x6443064C)) & 0x644B0E40;
  v11 = STACK[0xF18];
  v12 = (*(STACK[0xF18] + 8 * (v0 ^ 0x5513)))((v3 - 782584309) ^ (2 * ((((v10 ^ 0x204B0A0C) << 8) & 0x644B0000 ^ 0x400A0000 ^ (((v10 ^ 0x204B0A0C) << 8) ^ 0x4B0E0000) & (v10 ^ 0x204B0A0C)) & (((v10 ^ 0x44000400) & (v9 << 8) ^ v9) << 16) ^ (v10 ^ 0x44000400) & (v9 << 8) ^ v9)) ^ 0x2EA98FBCLL);
  *(v1 + 16) = v12;
  return (*(v11 + 8 * (((8 * (v12 == 0)) | (16 * (v12 == 0))) ^ v0)))();
}

uint64_t sub_10020CD08(int a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, int a5, int8x16_t a6, int8x8_t a7)
{
  v14.val[0].i64[0] = (v10 - 1) & 0xF;
  v14.val[0].i64[1] = (v10 + 14) & 0xF;
  v14.val[1].i64[0] = (v10 + 13) & 0xF;
  v14.val[1].i64[1] = (v10 + 12) & 0xF;
  v14.val[2].i64[0] = (v10 + 11) & 0xF;
  v14.val[2].i64[1] = (v10 + 10) & 0xF;
  v14.val[3].i64[0] = (v10 + (a4 ^ 0xC)) & 0xF;
  v14.val[3].i64[1] = v10 & 0xF ^ 8;
  *(v11 + v10) = veor_s8(veor_s8(veor_s8(*(v9 + v14.val[0].i64[0] - 7), *(a3 + v10)), veor_s8(*(v8 + v14.val[0].i64[0] - 7), *(v14.val[0].i64[0] + v7 - 6))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v14, a6), a7)));
  return (*(v12 + 8 * (((a2 == v10) * a5) ^ a1)))();
}

uint64_t sub_10020CDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45)
{
  *(v47 - 240) = v45 ^ 0x8553352D;
  *(v47 - 200) = a8 ^ 0x1C935E6F;
  return (*(v46 + 8 * a45))();
}

uint64_t sub_10020D01C@<X0>(unsigned int a1@<W8>)
{
  v3 = (v2 + 908);
  v4 = vld1q_dup_f32(v3);
  return (*(v1 + 8 * a1))(43979, 29753, v4);
}

void sub_10020D04C(uint64_t a1)
{
  v1 = *(a1 + 12) + 297845113 * ((-2 - ((a1 | 0x5CC0D1DF) + (~a1 | 0xA33F2E20))) ^ 0xD40C32BE);
  v2 = *a1;
  v6 = (906386353 * (((&v4 | 0xBE979737) - (&v4 & 0xBE979730)) ^ 0x8F965A13)) ^ (v1 - 5806);
  v5 = v2;
  v3 = *(&off_1010A0B50 + v1 - 30563) - 810145054;
  (*&v3[8 * (v1 ^ 0xB7D6)])(&v4);
  __asm { BRAA            X9, X17 }
}

void sub_10020D268(uint64_t a1)
{
  v3 = *(a1 + 24) == 0x217E172EFA1E81CLL || *a1 == 0;
  v1 = *(a1 + 8) ^ (906386353 * ((((2 * a1) | 0x783CCB42) - a1 - 1008625057) ^ 0xD1FA885));
  __asm { BRAA            X10, X17 }
}

uint64_t sub_10020D3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(v11 - 252);
  v13 = *(v11 - 236);
  v14 = 139493411 * ((((v11 - 200) | 0xA0E65267) + (~(v11 - 200) | 0x5F19AD98)) ^ 0xACCBB323);
  *(v11 - 200) = v9;
  *(v11 - 184) = (v8 - 878806380) ^ v14;
  *(v11 - 180) = (BYTE1(v12) ^ 0xE0614F87) + v14;
  *(v11 - 192) = ((((BYTE2(v12) ^ 0x19F743AE) - 1007619447) ^ ((BYTE2(v12) ^ 0xE9490935) + 860796948) ^ ((BYTE2(v12) ^ 0xF0BE4A9B) + 716831678)) + 1751101952) ^ v14;
  *(v11 - 188) = v13 - v14 - ((2 * v13) & 0xFE5EFD0) - 2014119960;
  *(v11 - 176) = v14 - 1142545367 + ((449 * (v8 ^ 0x17F9) + (HIBYTE(v12) ^ 0xA3AA8FB6) + 413114270) ^ ((HIBYTE(v12) ^ 0x2E7A3240) - 1789980588) ^ ((HIBYTE(v12) ^ 0x8DD0BDF6) + 921018342));
  v15 = (*(a8 + 8 * (v8 ^ 0xDABC)))(v11 - 200);
  v16 = STACK[0x2F0];
  *v9 = 67;
  v17 = *(v16 + 8 * v8);
  STACK[0x278] = v10;
  return v17(v15);
}

uint64_t sub_10020D61C@<X0>(uint64_t a1@<X8>)
{
  v6 = v4[17];
  v7 = 17902189 * ((((v5 - 160) | 0xDE2CC292) - ((v5 - 160) & 0xDE2CC290)) ^ 0x5063D482);
  v4[185] = STACK[0x278];
  *(v5 - 120) = v2 - v7 + 23459;
  *(v5 - 128) = ((((v1 ^ 0x40FAC522) - 1090176290) ^ ((v1 ^ 0x344128DA) - 876685530) ^ ((v1 ^ 0x74BBEDF8 ^ ((v2 + 1770266657) | 0x80514401)) + 1653724439)) + 1159547400) ^ v7;
  v4[184] = a1;
  v4[183] = v6;
  v4[182] = a1;
  v8 = (*(v3 + 8 * (v2 + 26834)))(v5 - 160);
  return (*(v3 + 8 * v2))(v8);
}

uint64_t sub_10020D750@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  v24 = v20 - 36561;
  v25 = 155453101 * ((((v23 - 144) | 0xFEB3882) - (v23 - 144) + ((v23 - 144) & 0xF014C778)) ^ 0xE9CD234D);
  *(v23 - 120) = (((v21 ^ 0x33F334BF) - 871576767) ^ ((v21 ^ 0x1AC7DA66) - 449305190) ^ ((v21 ^ 0xC0E129C8) + 1058985528)) - v25 + ((v20 + 1691) ^ 0x31F6D003);
  *(v23 - 144) = &a20;
  *(v23 - 136) = v25 + 31379 + v20 - 36561;
  *(v23 - 128) = a1;
  v26 = (*(v22 + 8 * ((v20 - 36561) ^ 0xD2BB)))(v23 - 144);
  return (*(v22 + 8 * v24))(v26);
}

void sub_10020D844(_DWORD *a1)
{
  v1 = *a1 - 1112314453 * ((((2 * a1) | 0x7D584B54) - a1 - 1051469226) ^ 0xD1FA0F73);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_10020D900@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v4 = a2 & 0x86F09FFF;
  v5 = v3 - v2 + ((v4 + 200128316) & 0xF5D7B53F ^ 0xCDD3970A);
  return (*(a1 + 8 * ((112 * ((v5 ^ 0xBFFFDEBFE7EF7FFFLL) + 0x40002140858791DELL + ((2 * v5) & 0x1CFDEFFFELL) != 1836519901)) ^ v4)))();
}

uint64_t sub_10020D9F4@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, unsigned int a3@<W8>)
{
  v7 = (*(a1 + 20) + v3);
  v8 = *(v4 + 8 * (v5 - 13504));
  v9 = (v6 | a3) + (v6 & a3);
  v10 = *(v8 - 527405895);
  v11 = *(v4 + 8 * (v5 ^ 0x26CD)) + 4 * v10;
  v12 = *(v11 - 1940437438);
  v13 = (v9 ^ a3) + (v9 ^ a3) * v12;
  if (v9 == a3)
  {
    v14 = *(v11 - 1940437438);
  }

  else
  {
    v14 = 0;
  }

  *(v11 - 1940437438) = (v13 + v14) * v12;
  *(v8 - 527405895) = (v10 + 1) % 6u;
  v15 = (v5 ^ 0x38F5FD0) & (2 * v7) | v7 & ~(2 * v7);
  return (*(a2 + 8 * ((4091 * ((~(v7 ^ (2 * (((2 * v7) & 0x1C8AD6EE ^ ((2 * v7) ^ (((v5 - 699153257) & 0x29AC3BAD) + 957707704)) & v7 ^ 6) & (4 * v15) ^ v15))) & 0xF) != 0)) ^ v5)))(v13, v7);
}

uint64_t sub_10020DB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, int a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, int a28, char a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  v45 = v41 + 20099;
  v46 = (v41 - 9741542) & 0x5FBFE5DB;
  v47 = (v41 + 1122) | 0x48A;
  *(v44 - 144) = &a39;
  *(v44 - 136) = v42;
  *(v44 - 128) = v45 + 297845113 * ((v39 - 2 * (v39 & 0x1264EA90) - 1838880108) ^ 0xE557F60A) - 1648993579;
  (*(v40 + 8 * (v45 ^ 0xB883)))(v44 - 144);
  *(v44 - 112) = &a31;
  *(v44 - 136) = &a39;
  *(v44 - 128) = &a39;
  *(v44 - 144) = &a27;
  *(v44 - 120) = v45 - 17902189 * (((v39 | 0x7EF918AF) - (v39 | 0x8106E750) - 2130254000) ^ 0xF0B60EBF) - 3925;
  (*(v40 + 8 * (v45 + 22621)))(v44 - 144);
  v48 = ((v47 ^ 0x41907747) + a21) ^ ((((v47 ^ 0x41907747) + a21) ^ 0x71C4F03C) - 110834434) ^ ((((v47 ^ 0x41907747) + a21) ^ 0x96C40990) + 509883730) ^ ((((v47 ^ 0x41907747) + a21) ^ 0x6DB045E9) - 451905239) ^ ((((v47 ^ 0x41907747) + a21) ^ (v46 - 1631315486)) + 1968128955) ^ 0xD83BB1DE;
  v49 = 0xD79435E50D79436 * (((v48 ^ 0x41137952C5F56EB3) - 0x41137952C5F56EB3) ^ ((v48 ^ 0x5FCBFEB7DF1DE3E9) - 0x5FCBFEB7DF1DE3E9) ^ ((v48 ^ 0x1ED887E5B58CFFBALL) - 0x1ED887E5B58CFFBALL)) - 0x3265333CC64AF398;
  v50 = v49 ^ ((v49 ^ 0xBCC5EAA91E7650D3) + 0x7A5EF2E34C72FE05) ^ ((v49 ^ 0xDBF3430E7D75F29ALL) + 0x1D685B442F715C4ELL) ^ ((v49 ^ 0x389B18CA907282ALL) - 0x3AED563904FC7902) ^ ((v49 ^ 0x5DDBFF9E67FFDB4BLL) - 0x64BF182BCA048A63);
  v51 = ((v50 ^ 0x70BBD6BBC3774A6) - 0x27CB3DB35066DBD9) ^ ((v50 ^ 0x1E59A0AE9751A368) - 0x3E9920767B000C17);
  v52 = __CFADD__(19 * (v51 ^ ((v50 ^ 0x2036FA70869D86E6) - 0xF67AA86ACC2999)), 0xE733AD1BDFB0E075) + (((v51 ^ ((v50 ^ 0x2036FA70869D86E6) - 0xF67AA86ACC2999)) * 0x13uLL) >> 64) + 19 * ((__CFADD__(v50 ^ 0x70BBD6BBC3774A6, 0xD834C24CAF992427) - 1) ^ (__CFADD__(v50 ^ 0x1E59A0AE9751A368, 0xC166DF8984FFF3E9) - 1) ^ (__CFADD__(v50 ^ 0x2036FA70869D86E6, 0xFF0985579533D667) - 1)) + 551007902;
  v55 = (a23 - 1641506742) % 0x11u + 1641506747;
  LODWORD(v51) = 19522 * v43 - 1091454612 - (((19522 * v43 - 1091454612) / 0x10001u) | (((19522 * v43 - 1091454612) / 0x10001u) << 16)) + 1301 * (((2 * (((v55 ^ 0x986E9841) + 105250824) ^ v55 ^ ((v55 ^ 0x51344577) + 1327291698) ^ ((v55 ^ 0x4372457A) + 1566235965) ^ ((v55 ^ 0x6BFFFFF5) + 1977051060))) ^ 0x3C51308D) - v52) - 312964736;
  LODWORD(v50) = v43 ^ ((v43 ^ 0x8BB22987) + 1502163059) ^ ((v43 ^ 0x5F1A4F7C) - 1927194998) ^ ((v43 ^ 0x82915F0E) + 1353336572) ^ ((v43 ^ 0x7BFDDFFF) - 1446590965) ^ (v51 - ((v51 / 0x10001) | ((v51 / 0x10001) << 16))) ^ 0x2DC4E60A ^ ((2663 * ((v43 - 767878666) / 0x3E8u + 9107 * v55 + 3903 * v52) - 119482854) % 0x6869);
  LODWORD(v51) = 139493411 * (((v39 | 0x7F5AA810) - v39 + (v39 & 0x80A557E8)) ^ 0x73774955);
  *(v44 - 132) = v45 - v51 + 9285;
  *(v44 - 128) = v51 + 404414912;
  *(v44 - 144) = &a29;
  *(v44 - 120) = a19 + 17 * ((((2 * (v50 % 0x10C945)) & 0xDFD7E) + ((v50 % 0x10C945) ^ 0xADC6FEBF) + 1379467585) % 0x32);
  v53 = (*(v40 + 8 * (v45 + 22466)))(v44 - 144);
  return (*(v40 + 8 * ((46646 * (*(v44 - 136) == -371865839)) ^ v45)))(v53);
}

uint64_t sub_10020E2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, char a45, char a46, char a47, char a48, char a49, char a50, char a51, char a52, char a53, char a54, char a55, char a56, char a57, char a58, char a59, char a60, char a61, char a62, char a63)
{
  v66 = *(v65 + 32);
  *v66 = (((v63 + 50) | 0xA) - 88) ^ a44;
  v66[1] = a45 ^ 0xD4;
  v66[2] = a46 ^ 0xDE;
  v66[3] = a47 ^ 0xA4;
  v66[4] = a48 ^ 0xAD;
  v66[5] = a49 ^ 0x7E;
  v66[6] = a50 ^ 0xD3;
  v66[7] = a51 ^ 0xA2;
  v66[8] = a52 ^ 0xAB;
  v66[9] = a53 ^ 0x85;
  v66[10] = a54 ^ 0xA2;
  v66[11] = a55 ^ 0x10;
  v66[12] = a56 ^ 0x56;
  v66[13] = a57 ^ 0xC6;
  v66[14] = a58 ^ 0x51;
  v66[15] = a59 ^ 0xFA;
  v66[16] = a60 ^ 0x99;
  v66[17] = a61 ^ 0x25;
  v66[18] = a62 ^ 0x79;
  v66[19] = a63 ^ 0x9E;
  return (*(v64 + 8 * v63))();
}

uint64_t sub_10020E580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, char *a16, unsigned int a17)
{
  a17 = (v18 + 27259) ^ (139493411 * ((&a15 - 2 * (&a15 & 0x29AEB728) - 1448167635) ^ 0xA5835668));
  a16 = &a10;
  a15 = 0;
  v19 = (*(v17 + 8 * (v18 ^ 0x8EC1)))(&a15);
  return (*(v17 + 8 * v18))(v19);
}

uint64_t sub_10020E930@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x234]) = a1;
  STACK[0x278] = STACK[0x220];
  v3[17] = v3[18];
  v4 = v3[111];
  v3[35] = v4;
  return (*(v2 + 8 * (((((v1 - 1) ^ (v4 == 0)) & 1) * (((v1 - 42879) | 0x1012) ^ 0x15B4)) | v1)))();
}

uint64_t sub_10020E9E4()
{
  v1 = STACK[0x7DE8];
  v2 = 634647737 * ((~(&STACK[0x10000] + 3800) & 0x7BFAA49E | (&STACK[0x10000] + 3800) & 0x84055B60) ^ 0x166C8B62);
  LODWORD(STACK[0x10ED8]) = v2 - 1431125373;
  LODWORD(STACK[0x10EE8]) = v0 - v2 + 19332;
  STACK[0x10EE0] = v1;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 50318)))(&STACK[0x10ED8]);
  STACK[0x16D8] = *(v3 + 8 * v0);
  return (*(v3 + 8 * (v0 - 8950 + v0 + 12706)))(v4);
}

uint64_t sub_10020ED08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v14 = ((a12 - 823302259) ^ 0x9CB01E88) & (2 * ((a12 - 823302259) & 0xDD245E91)) ^ (a12 - 823302259) & 0xDD245E91;
  v15 = ((((a12 - 823302259) ^ 0xAEB092A8) << (v12 - 120)) ^ 0xE7299872) & ((a12 - 823302259) ^ 0xAEB092A8) ^ (((a12 - 823302259) ^ 0xAEB092A8) << (v12 - 120)) & 0x7394CC38;
  v16 = v15 ^ 0x10944409;
  v17 = (v15 ^ 0x61008800) & (4 * v14) ^ v14;
  v18 = ((4 * v16) ^ 0xCE5330E4) & v16 ^ (4 * v16) & 0x7394CC38;
  v19 = (v18 ^ 0x42100020) & (16 * v17) ^ v17;
  v20 = ((16 * (v18 ^ 0x3184CC19)) ^ 0x394CC390) & (v18 ^ 0x3184CC19) ^ (16 * (v18 ^ 0x3184CC19)) & 0x7394CC10;
  v21 = v19 ^ 0x7394CC39 ^ (v20 ^ 0x3104C000) & (v19 << 8);
  v23 = ((a12 - 823302259) ^ (2 * ((v21 << 16) & 0x73940000 ^ v21 ^ ((v21 << 16) ^ 0x4C390000) & (((v20 ^ 0x42900C29) << 8) & 0x73940000 ^ 0x63100000 ^ (((v20 ^ 0x42900C29) << 8) ^ 0x14CC0000) & (v20 ^ 0x42900C29))))) == 0xBA2DC6E3 || (((a12 - 115) ^ (2 * v21)) & 0xF) != 3;
  return (*(v13 + 8 * (((((v12 - 16983) ^ 0x87F3) + ((v12 - 16983) | 0x1148) - 59454) * v23) ^ v12)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_10020EFEC@<X0>(unint64_t a1@<X2>, uint64_t a2@<X3>, unsigned int a3@<W5>, uint64_t a4@<X6>, unint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v14 = ((v7 + 25325) | 0x308u) + v13 + (((*(a2 + 8 * a6) ^ a4) + (v7 ^ a3 ^ a5)) ^ ((*(a2 + 8 * a6) ^ v8) + v9) ^ ((*(a2 + 8 * a6) ^ v11) + v12));
  v15 = v14 < a1;
  v16 = v14 > v6;
  if (v6 < a1 != v15)
  {
    v16 = v15;
  }

  return (*(v10 + 8 * (((2 * v16) | (4 * v16)) ^ v7)))();
}

uint64_t sub_10020F0B8()
{
  v2 = v0 ^ 0xD034;
  v3 = (*(v1 + 8 * ((v0 ^ 0xD034) + 34314)))(STACK[0x280]);
  return (*(v1 + 8 * v2))(v3);
}

void sub_10020F158(uint64_t a1)
{
  v1 = 1022166737 * (((a1 | 0x40E7198C) - (a1 & 0x40E7198C)) ^ 0xFAF7F81E);
  v2 = *(a1 + 32) + v1;
  v3 = *(a1 + 24);
  v4 = ((((*(a1 + 36) - v1) ^ 0xD408CC12D202DA52) + 0x2BF733ED2DFD25AELL) ^ (((*(a1 + 36) - v1) ^ 0x1EB308E46954C88CLL) - 0x1EB308E46954C88CLL) ^ (((*(a1 + 36) - v1) ^ 0xCABBC4F636F80A17) + 0x35443B09C907F5E9)) + 0x36D1359781F337C5;
  v5 = ((2 * (v4 ^ 0xE3C6D4639C2102D5)) ^ 0x55D03C152F37C7A2) & (v4 ^ 0xE3C6D4639C2102D5) ^ (2 * (v4 ^ 0xE3C6D4639C2102D5)) & 0x2AE81E0A979BE3D0;
  v6 = v5 ^ 0x2A28020A90882051;
  v7 = (v5 ^ 0xC0180007138000) & (4 * ((2 * (v4 & 0xC92ECA690BBAE104)) & (v4 ^ 0xE18EC0618B30C0D5) ^ v4 & 0xC92ECA690BBAE104)) ^ (2 * (v4 & 0xC92ECA690BBAE104)) & (v4 ^ 0xE18EC0618B30C0D5) ^ v4 & 0xC92ECA690BBAE104;
  v8 = ((4 * v6) ^ 0xABA0782A5E6F8F44) & v6 ^ (4 * v6) & 0x2AE81E0A979BE3D0;
  v9 = (v8 ^ 0x2AA0180A160B8340) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x48060081906091)) ^ 0xAE81E0A979BE3D10) & (v8 ^ 0x48060081906091) ^ (16 * (v8 ^ 0x48060081906091)) & 0x2AE81E0A979BE3D0;
  v11 = (v10 ^ 0x2A800008119A2100) & (v9 << 8) ^ v9;
  v12 = (((v10 ^ 0x681E028601C2C1) << 8) ^ 0xE81E0A979BE3D100) & (v10 ^ 0x681E028601C2C1) ^ ((v10 ^ 0x681E028601C2C1) << 8) & 0x2AE81E0A979BE100;
  v13 = v11 ^ 0x2AE81E0A979BE3D1 ^ (v12 ^ 0x28080A0293830000) & (v11 << 16);
  v14 = v4 ^ (2 * ((v13 << 32) & 0x2AE81E0A00000000 ^ v13 ^ ((v13 << 32) ^ 0x179BE3D100000000) & (((v12 ^ 0x2E01408041822D1) << 16) & 0x2AE81E0A00000000 ^ 0x20E0080000000000 ^ (((v12 ^ 0x2E01408041822D1) << 16) ^ 0x1E0A979B00000000) & (v12 ^ 0x2E01408041822D1)))) ^ 0x84B558176CB12E3BLL;
  v15 = 1603510583 * ((2 * (&v18 & 0x4945B18281F06BF8) - &v18 - 0x4945B18281F06BFCLL) ^ 0x894B5991E9D4A6AFLL);
  v24 = &v17;
  v18 = v2 - v15 - 4998;
  v19 = 0;
  v20 = v3;
  v21 = v15 + 0x787CF1E15A2A6CDELL;
  v22 = v14 + v15;
  v16 = *(&off_1010A0B50 + v2 - 9672) - 810145054;
  (*&v16[8 * (v2 ^ 0xE11E)])(&v18);
  __asm { BRAA            X8, X17 }
}

void sub_10020F7B0()
{
  if (v0 == 705604218)
  {
    v2 = -371865839;
  }

  else
  {
    v2 = 371891401;
  }

  *(v1 + 44) = v2;
}

uint64_t sub_10020F810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v40[58] = v39 + v34;
  v40[15] = v34 + 32;
  v40[81] = 0x9908B0DF00000000;
  LODWORD(STACK[0x294]) = *(*(v37 + 8 * ((v35 - 424) ^ 0x29EB)) - 775311879);
  v42 = *(*(v37 + 8 * ((v35 - 424) ^ 0x2242)) + v36);
  v40[185] = -634647737 * a34;
  v40[184] = v42 ^ (634647737 * a34);
  *(v41 - 148) = v35 + 2044743033 + 634647737 * a34;
  v43 = v35 + 2044743033 - 634647737 * a34;
  *(v41 - 128) = v35 - 424 - 634647737 * a34 - 1230188196;
  *(v41 - 124) = v43 + 22;
  *(v41 - 160) = -634647737 * a34;
  *(v41 - 156) = v43 - 4499;
  v44 = (*(v38 + 8 * ((v35 - 424) ^ 0xE958)))(v41 - 160);
  return (*(v38 + 8 * *(v41 - 152)))(v44);
}

uint64_t sub_10020F984()
{
  v2 = STACK[0x490];
  v3 = LODWORD(STACK[0x4C8]) + (((v2 ^ 0x8905BBEA) + 1996112918) ^ ((v2 ^ 0x7C441EA7) - 2084839079) ^ (3 * (v0 ^ 0x965A) - 479501871 + (v2 ^ 0x1C94625C)));
  LODWORD(STACK[0x494]) = v3 - 371865839;
  v4 = v3 - 113000025;
  v6 = (((v2 ^ 0x5308AD2E) - 1393077550) ^ ((v2 ^ 0x2754B7ED) - 659863533) ^ ((v2 ^ 0x9D89DDD2) + 1651909166)) + 1775617809 > 0x80000007 && v4 < 0;
  return (*(v1 + 8 * ((225 * v6) ^ (v0 + 11709))))();
}

uint64_t sub_10020FA9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, int a7)
{
  v12 = v7 - 2227;
  v13 = v7 + 545567604;
  a6 = a2;
  a5 = v7 + 545567604 + 1603510583 * (((&a5 | 0x5C6AAC55) - (&a5 | 0xA39553AA) - 1550494806) ^ 0xCBB19EFE);
  v14 = v7 + 42555;
  (*(v8 + 8 * (v7 + 42555)))(&a5);
  *v11 = a7;
  *v9 += 4;
  a5 = v13 + 1603510583 * (&a5 ^ 0x97DB32AB);
  a6 = v10 + 8;
  (*(v8 + 8 * v14))(&a5);
  *v9 += 4;
  return (*(v8 + 8 * v12))(a1);
}

uint64_t sub_10020FCDC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, _DWORD *a56)
{
  v59 = 4 * (v56 - 980062228);
  v60 = *(*a55 + (*a56 & 0x4A66F5A4)) + v58 + v59;
  *(STACK[0x218] + v59) ^= (118928155 * (v58 + v59)) ^ *(v58 + v59) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + ((v60 + 1248261542) & (qword_1010C0540 ^ 0x7226FCCC))) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + ((v60 + (((a1 - 25547) | 0x4904) ^ 0x4A669EFEu)) & (qword_1010C0540 ^ 0x7226FCCC))) ^ 0x4D7046BD;
  return (*(v57 + 8 * a1))();
}

uint64_t sub_10020FE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unsigned int a31, int a32)
{
  v35 = STACK[0x384] & (14051 * (v32 ^ 2) - 28039);
  *(v33 + v35) = -33;
  return (*(v34 + 8 * ((106 * (v35 <= a31)) ^ a32)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29);
}

uint64_t sub_10020FF14(double a1, __n128 a2)
{
  a2.n128_u16[0] = 28527;
  a2.n128_u8[2] = 111;
  a2.n128_u8[3] = 111;
  a2.n128_u8[4] = 111;
  a2.n128_u8[5] = 111;
  a2.n128_u8[6] = 111;
  a2.n128_u8[7] = 111;
  return (*(v6 + 8 * v3))(-v2, v5 + -8 - v2, v4 + -8 - v2, 2039, xmmword_100F523B0, a2);
}

uint64_t sub_10020FFDC@<X0>(int a1@<W0>, unsigned int a2@<W2>, int a3@<W4>, char a4@<W5>, int a5@<W6>, int a6@<W7>, uint64_t a7@<X8>)
{
  v20 = *(v17 + 8 * a1);
  v21 = (v16 + (v18 - 194741835));
  v22 = ((*(*(v8 + v9) + (*(a7 + v7) & a2)) ^ v21) & 0x7FFFFFFF) * v10;
  v23 = (v22 ^ HIWORD(v22)) * v10;
  *v21 = *(v11 + (v23 >> 24)) ^ HIBYTE(v15) ^ *((v23 >> 24) + v12 + 2) ^ *((v23 >> 24) + v14 + 4) ^ v23 ^ (BYTE3(v23) * v13) ^ 0x4A;
  v24 = (v16 + (v18 + a3));
  v25 = ((*(*(v8 + v9) + (*(a7 + v7) & a2)) ^ v24) & 0x7FFFFFFF) * v10;
  v26 = (v25 ^ HIWORD(v25)) * v10;
  *v24 = *(v11 + (v26 >> 24)) ^ BYTE2(v15) ^ *((v26 >> 24) + v12 + 2) ^ *((v26 >> 24) + v14 + 4) ^ v26 ^ (BYTE3(v26) * v13) ^ a4;
  v27 = (v16 + (v18 + a5));
  LODWORD(v26) = ((*(*(v8 + v9) + (*(a7 + v7) & a2)) ^ v27) & 0x7FFFFFFF) * v10;
  v28 = (v26 ^ WORD1(v26)) * v10;
  *v27 = *(v11 + (v28 >> 24)) ^ BYTE1(v15) ^ *((v28 >> 24) + v12 + 2) ^ *((v28 >> 24) + v14 + 4) ^ v28 ^ (BYTE3(v28) * v13) ^ 0x7E;
  v29 = (v16 + (v18 + a6));
  LODWORD(v28) = ((*(*(v8 + v9) + (*(a7 + v7) & a2)) ^ v29) & 0x7FFFFFFF) * v10;
  v30 = (v28 ^ WORD1(v28)) * v10;
  *v29 = v15 ^ *(v11 + (v30 >> 24)) ^ *((v30 >> 24) + v12 + 2) ^ *((v30 >> 24) + v14 + 4) ^ v30 ^ (BYTE3(v30) * v13) ^ v19;
  return v20();
}

uint64_t sub_10021025C@<X0>(uint64_t a1@<X8>)
{
  v5 = v4 - 1;
  *(*(v1 + 8) + 4 * v5) = *(*(a1 + 8) + 4 * v5);
  return (*(v2 + 8 * (((4 * (((v5 == 0) ^ v3) & 1)) & 0xF7 | (8 * (((v5 == 0) ^ v3) & 1))) ^ v3)))();
}

uint64_t sub_10021030C()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 21500 + (v0 ^ 0x6317))))();
}

void sub_1002107EC(_DWORD *a1)
{
  v1 = *a1 ^ (139493411 * ((~a1 & 0x95394297 | a1 & 0x6AC6BD68) ^ 0x9914A3D2));
  __asm { BRAA            X7, X17 }
}

uint64_t sub_1002109B0@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, char a9@<W8>)
{
  v24 = (a9 ^ 0x72) & (2 * (a9 & 0x7B)) ^ a9 & 0x7B;
  v25 = (a9 ^ v15 ^ 0x32) & v13 | (a9 ^ v15 ^ 0xCD) & (2 * (a9 ^ v15 ^ 0x32));
  v26 = a9 ^ (2 * (((4 * (v25 ^ v12)) & a4 ^ a5 ^ ((4 * (v25 ^ v12)) ^ a3) & (v25 ^ v12)) & (16 * ((v25 ^ a2) & (4 * v24) ^ v24)) ^ (v25 ^ a2) & (4 * v24) ^ v24));
  v27 = ((v26 ^ a6) + a7) ^ ((v26 ^ a8) + v18) ^ ((v26 ^ v19) + v20);
  *(v11 + 312) = v14 - 1;
  *(a1 + v14 - 1) = v9 + v27 * v22 + v10 * (v27 + v21);
  return (*(v16 + 8 * (((*(v11 + 312) == 0) * v23) ^ v17)))();
}

uint64_t sub_100210A94()
{
  v7 = *(v5 + 48) - v0;
  v8 = (v4 | v1) + (v4 & v1);
  v9 = *(v2 + 8 * (v3 - 20015));
  v10 = *(v9 - 527405895);
  v11 = v8 ^ v1;
  v12 = *(v2 + 8 * (v3 - 16444)) + 4 * v10;
  v13 = v8 == v1;
  v14 = *(v12 - 1940437438);
  v15 = v11 + v11 * v14;
  if (v13)
  {
    v16 = *(v12 - 1940437438);
  }

  else
  {
    v16 = 0;
  }

  *(v12 - 1940437438) = (v15 + v16) * v14;
  *(v9 - 527405895) = (v10 + 1) % 6u;
  return (*(v6 + 8 * (((v7 != 1764975134) * (((v3 + 33890858) & 0xFDFADDF7) - 20786)) ^ v3)))();
}

uint64_t sub_100210B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23)
{
  *(a17 + 8 * a16) = a21;
  *(a18 + 4 * a16) = a23;
  return (*(v23 + 8 * (v24 ^ 0x347B)))(a1, a2, a3, a17, a5, a6, a7);
}

uint64_t sub_100210D04@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v19 = *(v2 + 4 * (v11 + v9));
  v20 = *(a2 + 8 * v15) + v16;
  HIDWORD(v21) = (*(v20 + ((v19 >> 23) & 0x1FE)) + v18);
  LODWORD(v21) = HIDWORD(v21);
  v22 = v12 ^ *(*(a2 + 8 * v13) + v4 + v14) ^ (v17 + (*(v20 + 2 * BYTE2(v19)) << 16)) ^ ((*(v20 + 2 * BYTE1(v19)) + v18) << 8) ^ (*(v20 + 2 * *(v2 + 4 * (v11 + v9))) + v18) ^ v8 ^ ((v21 >> 8) - (v5 & (2 * (v21 >> 8))) + v7);
  v23 = *(v10 - 5);
  v24 = v22 ^ *(v10 - 6);
  *(v10 - 3) = v22;
  *(v10 - 2) = v24;
  v25 = v24 ^ v23;
  *(v10 - 1) = v25;
  *v10 = v25 ^ v19;
  return (*(v3 + 8 * (((v4 == 36) * a1) ^ v6)))();
}

void sub_100210DC8(uint64_t a1)
{
  v3 = *(*a1 + 4) == 1051086576 || *(*(a1 + 16) + 4) == 1051086576;
  v1 = *(a1 + 8) + 353670337 * ((((2 * a1) | 0x701C2C5E) - a1 - 940447279) ^ 0x8C2FEE12);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_100210ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, uint64_t a19, int a20, uint64_t a21, uint64_t a22)
{
  v26 = 17902189 * ((((&a18 | 0x1A8DEC30) ^ 0xFFFFFFFE) - (~&a18 | 0xE57213CF)) ^ 0x6B3D05DF);
  v27 = *(v24 + 8 * (v25 - 31757)) - 560578435;
  a19 = v23;
  a21 = v27;
  a22 = v23;
  a18 = v26 + v25 + 5022;
  a20 = v26 ^ 0x3DF96229;
  v28 = (*(v22 + 8 * (v25 ^ 0x4195)))(&a18);
  return (*(v22 + 8 * (v25 - 27382)))(v28);
}

uint64_t sub_100210FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a8 + 8 * (((v8 == (((v9 | 0x680) ^ 0x1A53) + 9976)) * (3 * ((v9 | 0x680) ^ 0x313) - 15823)) ^ (v9 | 0x680)));
  LODWORD(STACK[0x290]) = 371891407;
  return v10(a1, a7);
}

void *sub_100211100()
{
  v0 = STACK[0xF10];
  v1 = (STACK[0xF10] - 1516224525) & 0x5A5FFED7;
  v2 = STACK[0xF10] - 35325;
  LODWORD(STACK[0x10ED8]) = (STACK[0xF10] - 2608) ^ (1603510583 * ((((&STACK[0x10000] + 3800) | 0x96355D26) - ((&STACK[0x10000] + 3800) & 0x96355D20)) ^ 0x1EE6F8D));
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0x406A)))(&STACK[0x10ED8]);
  v5 = *(v3 + 8 * ((v1 - 46191) ^ v2));
  STACK[0x2998] = *(v3 + 8 * v2);
  return v5(&STACK[0x2610], v4);
}

uint64_t sub_1002111F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, _DWORD *a36)
{
  *a36 |= 0x80u;
  LODWORD(STACK[0x7E4]) = v36 + *STACK[0x498] - 1556104693 + v37 + 4549;
  return (*(v38 + 8 * v37))();
}

uint64_t sub_1002113A8@<X0>(unint64_t a1@<X8>)
{
  v4 = *(v2 + 3768);
  v5 = STACK[0x6EC0];
  LODWORD(STACK[0x6090]) = v1;
  STACK[0x6690] = a1;
  LODWORD(STACK[0x2D2C]) = v4;
  return (*(STACK[0xF18] + 8 * (((v5 == 0) * (v3 - 19317 + 755 * (v3 ^ 0x3FD0))) | v3)))();
}

uint64_t sub_1002114EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v65 - 216) = 0;
  v66 = *(v64 + 8 * (v63 - 32177));
  STACK[0x260] = STACK[0x278];
  return v66(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_100211528()
{
  v8 = (v4 - 1) & 0xF;
  v9 = -v6 - v4;
  v11 = (v0 - v6) > 0xF && (v9 + v1 + v8 + 1) > 0xF && v9 + v3 + v8 + 6 >= ((((v5 - 37715) | 0x7280) + 1422) ^ 0x8020uLL);
  v12 = v9 + v2 + v8 + 4;
  v14 = v11 && v12 > 0xF;
  return (*(v7 + 8 * ((228 * v14) ^ v5)))(v4);
}

void sub_1002115B0(uint64_t a1)
{
  v1 = *(a1 + 4) - 353670337 * (((a1 ^ 0x87942072) & 0xC7BD627A | (a1 ^ 0x28021580) & 0x38429D85) ^ 0x1BB7CDCF);
  v2 = (v1 - 705423037) | 0x7830u;
  v3 = ((*(a1 + 24) & 0x145124A24A50A924) + 0x451242008408904) & 0x145124A24A50A924 | ((*(a1 + 24) & 0xA90A8948912A144ALL) + 0x10A094010281448) & 0xA90A8948912A144ALL | ((v2 ^ 0x4C4A21929063B25) + (*(a1 + 24) & 0x42A4521524854291)) & 0x42A4521524854291;
  v5 = (((*(a1 + 24) & 0x145124A24A50A924) + 0x451242008408904) & 0x410000040000800 | ((*(a1 + 24) & 0xA90A8948912A144ALL) + 0x10A094010281448) & 0x1008900100A004ALL | ((v2 ^ 0x4C4A21929063B25) + (*(a1 + 24) & 0x42A4521524854291)) & 0x4004001404804000) + (&v4 & 0x45148914548A4848) + 2 * (v3 & &v4 & 0x2849524921251290) + ((((*(a1 + 24) & 0x145124A24A50A924) + 0x451242008408904) & 0x41000000000004 | ((*(a1 + 24) & 0xA90A8948912A144ALL) + 0x10A094010281448) & 0x2808004801201000 | ((v2 ^ 0x4C4A21929063B25) + (*(a1 + 24) & 0x42A4521524854291)) & 0x520120050290) ^ &v4 & 0x2849524921251290) + 2 * (v3 & &v4 & 0x92A224A28A50A520) + (((((*(a1 + 24) & 0x145124A24A50A924) + 0x451242008408904) & 0x100024A20A50A120 | ((*(a1 + 24) & 0xA90A8948912A144ALL) + 0x10A094010281448) & 0x8002000080000400 | ((v2 ^ 0x4C4A21929063B25) + (*(a1 + 24) & 0x42A4521524854291)) & 0x2A0000000000001) - (&v4 & 0x92A224A28A50A520) + 0x2544494514A14A42) & 0x92A224A28A50A521);
  v4 = (v5 ^ 0x9C28A77F) - (~(2 * v5) & 0x38514EFE) + 944852734;
  __asm { BRAA            X3, X17 }
}

uint64_t sub_100211890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  *(v58 + 24) = a2;
  *(v59[3] + 32) = v59[4];
  *(a56 + 40) = v59[1] + *(a56 + 40) - 0x3CE25E0EC5200378;
  v61 = 13457 * (v57 ^ 0x6339u) - 26408;
  v62 = (LOBYTE(STACK[0x2EF]) ^ 0x6EB7FC77DF6FD6FDLL) + 0x4FC94C318525427 + (v61 & (2 * LOBYTE(STACK[0x2EF])));
  v59[1] = 0x79C4BC1D8A4006F0 - v59[1];
  v59[2] = v62;
  *a36 = 0x3CE25E0EC5200378;
  STACK[0x270] = v56 - 24;
  v63 = *(v60 + 8 * (v57 ^ (117 * (v56 != 24))));
  return v63(v63, v61, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t sub_100211D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10)
{
  LODWORD(STACK[0x3F8]) = v10 + 39;
  v13 = (((LODWORD(STACK[0x354]) ^ 0x11884E56) + ((v11 + 13527) ^ 0xEE773432)) ^ ((LODWORD(STACK[0x354]) ^ 0xBFED6C5D) + 1074959267) ^ ((LODWORD(STACK[0x354]) ^ 0x47B0E51A) - 1202775322)) + 2120764876;
  v15 = v13 < 0x949286BB || (v11 ^ 0x3724u) + v10 + 1622558321 <= v13;
  v16 = a10 & v15;
  if ((a10 & v15) != 0)
  {
    v17 = -371865839;
  }

  else
  {
    v17 = 371891407;
  }

  LODWORD(STACK[0x3FC]) = v17;
  return (*(v12 + 8 * ((52841 * v16) ^ (v11 + 10590))))();
}

uint64_t sub_100211E7C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned int a22, uint64_t a23, int a24)
{
  v28 = v24 - 13995;
  v29 = (v24 - 42144) | 0x428A;
  v30 = v24 - 34641;
  a23 = v26;
  a22 = (v24 - 16529) ^ ((((v27 | 0xBED62B21) - v27 + (v27 & 0x4129D4D8)) ^ 0xB2FBCA64) * a1);
  v31 = (*(v25 + 8 * (v24 + 10202)))(&a22);
  return (*(v25 + 8 * ((1007 * (a24 - 1867366057 >= (v30 ^ 0x7FFFA005 ^ v29))) ^ v28)))(v31);
}

uint64_t sub_100212094()
{
  v6 = (v1 + (v3 + v2 - 1723784169 + v0 - 10639));
  v7 = *v6;
  v8 = v6[1];
  v9 = (v4 + v2);
  v10.i64[0] = 0xBEBEBEBEBEBEBEBELL;
  v10.i64[1] = 0xBEBEBEBEBEBEBEBELL;
  v11.i64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v11.i64[1] = 0x5F5F5F5F5F5F5F5FLL;
  *v9 = vaddq_s8(vsubq_s8(v7, vandq_s8(vaddq_s8(v7, v7), v10)), v11);
  v9[1] = vaddq_s8(vsubq_s8(v8, vandq_s8(vaddq_s8(v8, v8), v10)), v11);
  return (*(v5 + 8 * ((v2 != 32) ^ (v0 - 1863))))();
}

uint64_t sub_100212290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  STACK[0x248] = v58;
  LODWORD(STACK[0x22C]) = v57;
  return (*(a8 + 8 * (((v56 ^ 0x1B48) - 35634) ^ 0x464D)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56);
}

uint64_t sub_100212308(double a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  a2.n128_u16[0] = -8739;
  a2.n128_u8[2] = -35;
  a2.n128_u8[3] = -35;
  a2.n128_u8[4] = -35;
  a2.n128_u8[5] = -35;
  a2.n128_u8[6] = -35;
  a2.n128_u8[7] = -35;
  a3.n128_u16[0] = -22360;
  a3.n128_u8[2] = -88;
  a3.n128_u8[3] = -88;
  a3.n128_u8[4] = -88;
  a3.n128_u8[5] = -88;
  a3.n128_u8[6] = -88;
  a3.n128_u8[7] = -88;
  return (*(v10 + 8 * (a7 - 16027)))(-(v7 & 0x18), -8 - v8, v9 + v7, (a7 - 8843) ^ 0xFFFFFFFFFFFFB5C2, 40887, xmmword_100F523B0, a2, a3);
}

uint64_t sub_100212358()
{
  v1 = STACK[0x938];
  STACK[0x10EE0] = *(STACK[0x938] + 16);
  LODWORD(STACK[0x10ED8]) = (v0 - 1762645436) ^ (906386353 * ((((2 * (&STACK[0x10000] + 3800)) | 0x6133217C) - (&STACK[0x10000] + 3800) + 1332113218) ^ 0x81985D9A));
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 32110)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x8A8C]) = 1210925842;
  return (*(v2 + 8 * (((*(v1 + 8) == 327 * (v0 ^ 0x4D26u) - 35643) * (83 * (v0 ^ 0x4DED) - 13749)) ^ v0)))(v3);
}

uint64_t sub_1002124DC()
{
  v4 = *(v2 + 20);
  v6 = v4 != v1 && v4 != -371865837;
  return (*(v3 + 8 * ((v6 * (v0 - 6234)) ^ v0)))();
}

uint64_t sub_100212518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, char a20, uint64_t a21, uint64_t a22, __int16 a23, char *a24, unsigned int a25, __int16 a26, char a27, __int16 a28)
{
  a23 = 1745 * (((~&a23 | 0x8CC6) + (&a23 | 0x7339)) ^ 0x92AA) + v32 + 7066;
  a25 = (v28 - 23188) ^ (1022166737 * (((~&a23 | 0xD7E08CC6) + (&a23 | 0x281F7339)) ^ 0x920F92AA));
  a28 = (1745 * (((~&a23 | 0x8CC6) + (&a23 | 0x7339)) ^ 0x92AA)) ^ 0x5BBB;
  a26 = v33 + 1745 * (((~&a23 | 0x8CC6) + (&a23 | 0x7339)) ^ 0x92AA);
  a24 = &a20;
  v34 = (*(a18 + 8 * (v28 + 28856)))(&a23);
  *(&a20 + (v32 - 5449)) = a27;
  v36 = v29 < v30 || ((v28 - 1173501244) & 0x45F1DAA6) + (v32 - 5448) + v30 < v29;
  return (*(a18 + 8 * ((v36 * v31) ^ v28)))(v34);
}

uint64_t sub_100212608()
{
  LODWORD(STACK[0x4DC]) += ((v0 - 15464) | 0x302C) ^ 0x7967;
  LODWORD(STACK[0x4D8]) = v1;
  return (*(v2 + 8 * (((((v0 - 1769211567) & 0x6973BFAF) + 17127) * (v1 == -371865839)) ^ (v0 - 18175))))();
}

uint64_t sub_100212700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, int a26, int a27, int a28, int a29, int a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, int a36, uint64_t a37, int a38, int a39, uint64_t a40, uint64_t a41)
{
  v46 = 906386353 * ((a26 - ((v45 - 144) | 0xDD271BBA) - 584639558) ^ 0x13D92961);
  *(v45 - 128) = (v44 - 899262226) ^ v46;
  *(v45 - 124) = a30 ^ v46 ^ a27;
  *(v45 - 104) = v46 + (v41 ^ 0xFF9FE6EF) + ((2 * v41) & 0x7F3FCDDE) + 1542183414;
  *(v45 - 112) = (((v44 - 899253642) ^ a36 ^ 0x7D31FF31) + ((2 * a36) & 0x7A63757E) - 469770753) ^ v46;
  *(v45 - 108) = v46 + (a38 ^ 0x31FF1FFD) + ((2 * a38) & 0x63FE3FFA) - 811991232;
  *(v45 - 120) = v46 ^ 0x24F40078;
  *(v45 - 116) = v46 + (a35 ^ 0xD1BF7CBB) + ((2 * a35) & 0x237EF976) + 2143938550;
  *(v45 - 144) = v43;
  *(v45 - 136) = v42;
  v47 = (*(a41 + 8 * (v44 - 899219302)))(v45 - 144);
  return (*(a41 + 8 * ((26 * (a39 != 1)) ^ (v44 - 899229743))))(v47);
}

uint64_t sub_100212894@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v9 = v7 + 1028365865;
  a6 = v6;
  a5 = (v7 + 7180) ^ (1603510583 * (((&a3 | 0x8523096B) + (~&a3 | 0x7ADCF694)) ^ 0x12F83BC1));
  a3 = a1;
  a4 = a1;
  v10 = (*(v8 + 8 * (v7 + 26430)))(&a3);
  return (*(v8 + 8 * (v9 ^ 0x3D4C685B ^ (59157 * (v9 < 0xF626460D)))))(v10);
}

uint64_t sub_10021298C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a8 + 8 * (v8 - 3562)) - 1811156783;
  v12 = *(v11 + (*(v10 - 102) ^ 0x7DLL));
  v13 = ((((v12 >> 3) | (32 * v12)) ^ 0xC2) >> 5) | (8 * (((v12 >> 3) | (32 * v12)) ^ 0xFFFFFFC2));
  v14 = *(v10 - 101);
  v15 = (((-(v13 ^ 0x8E) ^ (-65 - (v13 ^ 0x31)) ^ ((v13 ^ 0x8E) - ((2 * (v13 ^ 0x8E)) & 0x38) + 28) ^ 0x1C) - 65) ^ ((v13 ^ 0x8E) >> ~(v8 + 43)) & 0x3D);
  v16 = *(a8 + 8 * (v8 - 4151)) - 372951010;
  HIDWORD(v17) = (v14 >> 4) ^ 0x990EB96;
  LODWORD(v17) = (v14 << 28) ^ 0xDFFFFFFF;
  v18 = *(v16 + (*(v10 - 111) ^ 0xECLL)) << 16;
  v19 = *(a8 + 8 * (v8 - 4587)) - 726624054;
  v20 = *(v19 + ((v17 >> 28) ^ 0x990EB9AALL));
  v21 = *(a8 + 8 * (v8 - 7688)) - 1266989115;
  v22 = *(v21 + (*(v10 - 112) ^ 0x66)) << 24;
  v23 = *(v16 + (*(v10 - 103) ^ 0x41));
  v24 = (((2 * v23) | 0xEF) + (((v23 ^ 0x1A) - 26) ^ ((v23 ^ 0x40) - 64) ^ ((v23 ^ 0x72) - 114)) - 79) << 16;
  v25 = (v24 & 0x820000 | 0x20000B12) ^ ((((v15 << 8) ^ 0x3FCC9C73) & (v20 ^ 0x3FEFFFF3) | v20 & 0x8C) ^ 0x66B1481B) & ~v24;
  v26 = (*(v11 + (*(v10 - 98) ^ 0xE6)) >> 1) & 0x3D ^ *(v11 + (*(v10 - 98) ^ 0xE6));
  v27 = *(v19 + (*(v10 - 109) ^ 0x6BLL));
  v28 = (v27 ^ 0xFFFFFF73) & (v22 & 0x12000000 ^ 0x5AA575F4 ^ ((((((*(v11 + (*(v10 - 110) ^ 5)) >> 1) & 0x3D ^ *(v11 + (*(v10 - 110) ^ 5))) << 8) ^ 0x190A1C94) & (v18 ^ 0xDFFEFFF6) | v18 & 0xF50000) ^ 0xF495A681) & (v22 ^ 0xEFFFFF7));
  v29 = v27 & 0x1E;
  v30 = *(v19 + (*(v10 - 97) ^ 0xA7));
  v31 = *(v16 + (*(v10 - 99) ^ 0x2CLL)) << 16;
  v32 = (((((v26 << 8) ^ 0xFFFF1FFF) & ((*(v21 + (*(v10 - 100) ^ 0x55)) << 24) ^ 0x3107F8D7) & 0xFFFFF8FF | ((v26 & 7) << 8)) ^ 0xCF984881) & (v30 ^ 0xFF9FFFFB) ^ (v30 & 0xA3293BA9 | 0x58D2C412)) & (v31 ^ 0xFF52FFFF);
  return (*(v9 + 8 * v8))(v32, v25 & 0x5BED5125 ^ 0x9C2B0223 ^ (((*(v21 + (*(v10 - 104) ^ 0x85)) ^ 0xFA) << 24) ^ 0x5712AEDA) & (v25 ^ 0x86076005), v31 & 0xB20000 ^ 0xB9389DCC ^ v32, v29 ^ 0xD6516BCA ^ v28);
}

uint64_t sub_100212F74()
{
  v7 = v5 + v3;
  v8 = (((v4 + 3701) ^ 0xE05B ^ (v4 - 1582694488) & 0x5E55EEF8) & (v3 + 15)) + 1;
  v9 = v1 + v8 - v3;
  v10 = v1 + v8;
  v11 = v2 + v8 - v3;
  v12 = v2 + v8;
  v13 = v0 + v8 - v3;
  v14 = v0 + v8;
  v16 = v10 > v5 && v9 < v7;
  if (v12 > v5 && v11 < v7)
  {
    v16 = 1;
  }

  v19 = v14 > v5 && v13 < v7 || v16;
  return (*(v6 + 8 * ((8 * (v19 ^ 1)) | (16 * (v19 ^ 1)) | v4)))();
}

uint64_t sub_100213100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, unsigned int a14)
{
  *(v17 - 120) = (v16 - 1481842244) ^ (193924789 * ((((2 * (v17 - 120)) | 0xBAB908AA) - (v17 - 120) - 1566344277) ^ 0xEBE7B633));
  *(v17 - 112) = a11;
  (*(v14 + 8 * (v16 ^ 0x9C801557)))(v17 - 120);
  v18 = *(v17 - 116);
  *(v17 - 120) = (v16 - 1481842244) ^ (193924789 * ((((v17 - 120) | 0x84F60B25) - (v17 - 120) + ((v17 - 120) & 0x7B09F4D8)) ^ 0x324D3943));
  *(v17 - 112) = a12;
  (*(v14 + 8 * (v16 + 1669327567)))(v17 - 120);
  a14 = ((*(v17 - 116) + 1735380995) * (v18 - 391360958) + v18 * ((61 * (v16 ^ 0x9C80DEDF)) ^ 0x813C3530) + 1759595878) * (v15 - 590814319) + 1099067608 * v15 - 866664120;
  *(v17 - 112) = v16 + 193924789 * ((v17 - 120 - 2 * ((v17 - 120) & 0x50931EB0) - 795664719) ^ 0x66282CD7) + 1669288609;
  *(v17 - 104) = &a13;
  *(v17 - 120) = a12;
  v19 = (*(v14 + 8 * (v16 ^ 0x9C801534)))(v17 - 120);
  return (*(v14 + 8 * ((56446 * (v16 == -2070539258)) ^ (v16 + 1669295002))))(v19);
}

uint64_t sub_1002132E4@<X0>(uint64_t a1@<X1>, unsigned int a2@<W2>, int a3@<W3>, int a4@<W4>, uint64_t a5@<X5>, int a6@<W7>, unsigned int a7@<W8>)
{
  v21 = v9 + 1;
  if (((v9 + 1) ^ a3) == 0x3745F9CE)
  {
    v22 = 0;
  }

  else
  {
    v22 = v9 + 1;
  }

  v23 = *(a5 + 4 * v22) + 1901388722 + *(a5 + 4 * (((v18 - 150266440) & 0x8F4EE6B ^ 0x4848) * v9 % a2));
  v24 = *(a5 + 4 * v9);
  v25 = v24 ^ ((v24 ^ 0x5D0EA7C4) - 1923015001) ^ ((v24 ^ 0xCF5121F3) + a6) ^ ((v24 ^ v10) + v11) ^ ((v24 ^ v13) + v15) ^ v23 ^ ((v23 ^ 0x5C6CF109) + 500307075) ^ ((v23 ^ 0x6C7111E8) + 768603236) ^ ((v23 ^ 0xF9AB9568) - 1206554396) ^ ((v23 ^ 0x77F76FFD) + 910789239);
  *(a5 + 4 * v9) = (((v25 ^ v19) + v20) ^ ((v25 ^ a4) + v17) ^ ((v25 ^ v14) + v7)) + v16;
  v26 = v9 + v8 < v12;
  if (v12 < 0xD8A1CF60 != v21 > a7)
  {
    v26 = v12 < 0xD8A1CF60;
  }

  return (*(a1 + 8 * ((30 * v26) ^ v18)))();
}

uint64_t sub_1002134A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t (*a23)(uint64_t), uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v35 = 1112314453 * ((v34 - 136) ^ 0xEF562AD9);
  *(v34 - 136) = v35 + v31 + 5247;
  *(v34 - 120) = v35 + (v32 ^ 0x676EFE7D) + ((2 * v32) & 0xCEDDFCFA) - 1094845520;
  *(v34 - 128) = a31;
  v36 = (*(v33 + 8 * (v31 + 47435)))(v34 - 136);
  return a23(v36);
}

uint64_t sub_10021354C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x490]) = a68;
  LODWORD(STACK[0x47C]) = v74;
  LODWORD(STACK[0x480]) = v73;
  LODWORD(STACK[0x484]) = v75;
  LODWORD(STACK[0x488]) = a71;
  return (*(v76 + 8 * (a73 + 22379)))();
}

uint64_t sub_100213714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, __int16 a58, __int16 a59, __int16 a60, __int16 a61, __int16 a62)
{
  v65 = (v64 - 9457);
  v66 = (((a62 + ((v62 + 22037) & 0x9DFB ^ 0x2BC3)) ^ a60 ^ (571 * (v62 ^ 0x1D22) + a58)) - 30291);
  v67 = (v65 < 0x1197) ^ (v66 < 0x1197);
  v68 = v65 > v66;
  if (v67)
  {
    v68 = v65 < 0x1197;
  }

  return (*(v63 + 8 * ((97 * v68) ^ v62)))(a1, a2, a3, a4, a5, a4);
}

uint64_t sub_10021381C(char a1, char a2, int a3, char a4, int a5, int a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v73 = *(v68 + 8 * v63);
  v74 = *v61;
  v75 = (v74 + (v64 + v65));
  v76 = ((*(*v70 + (*v69 & v66)) ^ v75) & 0x7FFFFFFF) * v67;
  v77 = (v76 ^ HIWORD(v76)) * v67;
  *v75 = *(v71 + (v77 >> 24)) ^ HIBYTE(v62) ^ *((v77 >> 24) + a61 + 2) ^ *((v77 >> 24) + v72 + 4) ^ v77 ^ (BYTE3(v77) * a1) ^ a2;
  v78 = (v74 + (v64 + a3));
  LODWORD(v77) = ((*(*v70 + (*v69 & v66)) ^ v78) & 0x7FFFFFFF) * v67;
  v79 = (v77 ^ WORD1(v77)) * v67;
  *v78 = *(v71 + (v79 >> 24)) ^ BYTE2(v62) ^ *((v79 >> 24) + a61 + 2) ^ *((v79 >> 24) + v72 + 4) ^ v79 ^ (BYTE3(v79) * a1) ^ a4;
  v80 = (v74 + (v64 + a5));
  LODWORD(v79) = ((*(*v70 + (*v69 & v66)) ^ v80) & 0x7FFFFFFF) * v67;
  v81 = (v79 ^ WORD1(v79)) * v67;
  *v80 = *(v71 + (v81 >> 24)) ^ BYTE1(v62) ^ *((v81 >> 24) + a61 + 2) ^ *((v81 >> 24) + v72 + 4) ^ v81 ^ (BYTE3(v81) * a1) ^ 0x7E;
  v82 = (v74 + (v64 + a6));
  v83 = ((*(*v70 + (*v69 & v66)) ^ v82) & 0x7FFFFFFF) * v67;
  v84 = (v83 ^ HIWORD(v83)) * v67;
  *v82 = v62 ^ *(v71 + (v84 >> 24)) ^ *((v84 >> 24) + a61 + 2) ^ *((v84 >> 24) + v72 + 4) ^ v84 ^ (BYTE3(v84) * a1) ^ a7;
  return v73();
}

uint64_t sub_100213AD0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  LODWORD(v244) = 0;
  v16 = v12 & 0xFFFFFFF6 ^ 0x66F17449;
  *(v15 - 160) = v16;
  LOBYTE(v16) = *(a1 + v16);
  v17 = *(a7 + (v16 ^ ((v14 ^ 0x71) + 12)));
  v18 = v12 ^ 0x66F17449;
  *(v15 - 144) = v18;
  LOBYTE(v16) = v17 ^ v16;
  v19 = *(a5 + (*(a1 + v18) ^ 0x60));
  HIDWORD(v248) = (v14 + 1236) | 0x3006;
  LODWORD(v18) = v12 & 0xFFFFFFFA ^ (HIDWORD(v248) + 1727071271);
  *(v15 - 180) = v18;
  v20 = *(a1 + v18);
  v21 = *(a7 + (v20 ^ 0x1A));
  v22 = (v19 ^ (v19 >> 3) ^ (v19 >> 2) ^ 0x1C) << 24;
  v23 = v12 & 0xFFFFFFF7 ^ 0x66F17449;
  *(v15 - 168) = v23;
  LODWORD(v20) = v21 ^ v20;
  v24 = *(a5 + (*(a1 + v23) ^ 0xA4));
  v25 = v24 ^ (v24 >> 3) ^ (v24 >> 2);
  v26 = v12 & 0xFFFFFFFB ^ 0x66F1744DLL;
  *(v15 - 176) = v26;
  v27 = *(a1 + v26);
  v28 = ((v25 << 24) ^ 0xA4894F67) & ((v16 << 16) ^ 0xFF37DFF7) | (v16 << 16) & 0x760000;
  v29 = v12 & 0xFFFFFFFD ^ 0x66F1744BLL;
  *(v15 - 152) = v29;
  LODWORD(v16) = (*(a5 + (v27 ^ 0x9D)) ^ (*(a5 + (v27 ^ 0x9D)) >> 3) ^ (*(a5 + (v27 ^ 0x9D)) >> 2)) << 24;
  v30 = (v20 << 16) ^ 0x4A331CAC;
  v31 = (v16 ^ 0xC1FFFFFF) & v30 | v16 & 0xB5000000;
  v255 = v12 & 0xFFFFFFFC ^ 0x66F1744BLL;
  LODWORD(v16) = *(a1 + v29) ^ 0xFFFFFFF8 ^ ((*(a1 + v29) ^ 0xFFFFFFF8) + 62) ^ *(a6 + (*(a1 + v29) ^ 0xA3));
  v32 = (((((v16 ^ 0x1E) & 0xFE) << 8) ^ 0x68C07A00) & (v22 ^ 0x60C0FE00) | v22 & 0x97000000) >> 9;
  v33 = ((v32 | (v16 << 31)) ^ 0x7F888E00) & ((*(a8 + (*(a1 + v255) ^ 0x6CLL)) << 23) ^ 0x967DEE42) | v32 & 0x2003D;
  v258 = v12 & 0xFFFFFFF9 ^ 0x66F1744FLL;
  v252 = v12 & 0xFFFFFFF8 ^ 0x66F1744FLL;
  v34 = ((*(a1 + v258) ^ 0x3F) + 62) ^ ((*(a1 + v258) ^ 0x3F) - ((2 * (*(a1 + v258) ^ 0x3F)) & 0x184) - 62) ^ *(a6 + (*(a1 + v258) ^ 0x64));
  v35 = *(a8 + (*(a1 + v252) ^ 0x81));
  v36 = ((2 * v35) & 0xFFFFFFF3 ^ 0xFFFFFF8F) + (((v35 ^ 0x70) - 112) ^ ((v35 ^ 0x65) - 101) ^ ((v35 ^ 0x29) - 41));
  v253 = v12 & 0xFFFFFFF3 ^ 0x66F1744DLL;
  v37 = *(a5 + (*(a1 + v253) ^ 0xCLL));
  v38 = v12;
  v259 = v12 & 0xFFFFFFF5 ^ 0x66F1744BLL;
  LODWORD(v20) = (*(a1 + v259) ^ 0xFA ^ ((*(a1 + v259) ^ 0xFA) + 62) ^ *(a6 + (*(a1 + v259) ^ 0xA1))) << 8;
  v256 = v12 & 0xFFFFFFF1 ^ 0x66F1744FLL;
  v39 = (v20 ^ 0xFFFF20DE) & (v28 ^ 0xF26EFDB9) | v20 & 0x4D00;
  LODWORD(v20) = (*(a6 + (*(a1 + v256) ^ 0xA4)) ^ *(a1 + v256) ^ (*(a1 + v256) - 62)) << 8;
  v40 = (v20 ^ 0xFF2329F5) & (((v37 ^ (v37 >> 3) ^ (v37 >> 2)) << 24) ^ 0xC8236BF5) | v20 & 0x9400;
  v254 = v12 & 0xFFFFFFFE ^ 0x66F17449;
  v41 = *(a1 + v254);
  LODWORD(v29) = *(a7 + (v41 ^ 0xBF));
  v42 = ((v29 ^ 0x62) - 98) ^ ((v29 ^ 0xB0) + 80) ^ ((v29 ^ 0xB) - 11);
  *(v15 - 184) = *(v15 - 116) < 0x4B1A4F0Cu;
  v43 = v29 == 217;
  v44 = v29 ^ 0x66;
  v45 = v29 ^ 6;
  if (v43)
  {
    v44 = -64;
  }

  v46 = v38;
  v251 = v38 & 0xFFFFFFF2 ^ 0x66F1744DLL;
  v47 = (v42 + ((2 * ((v44 ^ 0x5C) & v45 ^ v44 & 0x5F)) ^ 0x47) - 10) ^ v41;
  v48 = v46;
  v257 = v46 & 0xFFFFFFF0 ^ 0x66F1744FLL;
  v49 = *(a8 + (*(a1 + v257) ^ 0xB5)) ^ 0x3C;
  v50 = (-v49 ^ (v49 - ((2 * v49) & 0x94) - 203576502) ^ 0xF3DDAB4A ^ ((v40 ^ 0x68237FF5 | 0xF9) - ((v40 ^ 0x68237FF5 | v49) ^ 0xF9))) + (v40 ^ 0x68237FF5 | 0xF9);
  HIDWORD(v52) = v33 ^ 0x343E63CE;
  LODWORD(v52) = v33 ^ 0x343E63CE;
  v51 = v52 >> 23;
  v53 = *(v13 + 8 * (v14 - 10387)) - 1336262367;
  LODWORD(v247) = v39;
  v54 = *(v13 + 8 * (v14 ^ 0x2AC8)) - 833326522;
  v55 = *(v54 + 4 * (BYTE1(v39) ^ 0x20u));
  v56 = (((v55 - 1005844358) >> 4) & 0xFF4611F) + v55 - 1005844358 - 2 * (((v55 - 1005844358) >> 4) & 0xFF4611F & (v55 - 1005844358));
  LODWORD(v248) = v31;
  v249 = __PAIR64__(v46, v14);
  v57 = v50 ^ ((*(a7 + (*(a1 + v251) ^ 0xFCLL)) ^ *(a1 + v251)) << 16);
  v58 = *(v13 + 8 * (v14 ^ 0x3E33)) - 349437415;
  LODWORD(v246) = v36 + 54;
  HIDWORD(v246) = v57;
  v59 = *(v13 + 8 * (v14 ^ 0x37D9)) - 779175459;
  v60 = *(v59 + 4 * ((v36 + 54) ^ 0x16u));
  v61 = *(v58 + 4 * (BYTE2(v57) ^ 0xFAu)) ^ v60 ^ BYTE2(v57) ^ ((HIBYTE(v51) ^ 0xC4AEC0C4) - 992304095 + *(v53 + 4 * (HIBYTE(v51) ^ 0x16))) ^ (4 * (v60 ^ 0x781FE365) * (v60 ^ 0x781FE365));
  v62 = *(v54 + 4 * (BYTE1(v50) ^ 0x97u)) - 1005844358;
  v63 = (v62 >> 4) & 0xFD4611F;
  v64 = (v62 >> 4) & 0x200000;
  if ((v64 & v62) != 0)
  {
    v64 = -v64;
  }

  HIDWORD(v65) = v63 ^ v62;
  LODWORD(v65) = (v64 + v62) ^ v63;
  v66 = v61 ^ v56;
  v67 = (*(v53 + 4 * (v25 ^ 0x2Du)) - v25 - 1987484384) ^ BYTE2(v30) ^ *(v58 + 4 * (BYTE2(v30) ^ 0xF6u));
  v68 = *(v54 + 4 * (BYTE1(v51) ^ 0xCBu)) - 1005844358;
  v69 = *(v59 + 4 * (v50 ^ 0x95u)) ^ 0x781FE365;
  v70 = v67 ^ v69 ^ v68 ^ (v68 >> 4) & 0xFF4611F ^ (4 * v69 * v69);
  v250 = v48 & 0xFFFFFFF4 ^ 0x66F1744BLL;
  HIDWORD(a12) = v51 ^ (v47 << 16);
  v245 = *(a8 + (*(a1 + v250) ^ 0x10));
  HIDWORD(v247) = v34;
  v71 = *(v59 + 4 * (v51 ^ 0xAEu));
  v72 = *(v54 + 4 * (v34 ^ 0xC5u)) - 1005844358;
  v73 = BYTE2(v28) ^ *(v58 + 4 * (BYTE2(v28) ^ 0x62u)) ^ v71 ^ v72 ^ (v72 >> 4) & 0xFF4611F ^ ((HIBYTE(v50) ^ 0xC4AEC0FB) - 992304095 + *(v53 + 4 * ((-(HIBYTE(v50) ^ 0xEB) ^ (194 - (HIBYTE(v50) ^ 0x29)) ^ 0xF997EA7 ^ ((HIBYTE(v50) ^ 0xEB) - 2 * ((HIBYTE(v50) ^ 0xEB) & 0xB7 ^ HIBYTE(v50) & 0x10) + 261717671)) + 194))) ^ (4 * (v71 ^ 0x781FE365) * (v71 ^ 0x781FE365)) ^ 0x5A0C3610;
  v74 = *(v58 + 4 * (BYTE2(v73) ^ 0x99u));
  v75 = (-(BYTE2(v73) ^ 0xAE0613BE) ^ ((BYTE2(v73) ^ 0xAE0613BE) - ((2 * (BYTE2(v73) ^ 0xAE0613BE)) & 0x4C0C2582) + 1717567169) ^ 0x665FFEC1 ^ ((v74 ^ 0xE63EA358) - (v74 ^ BYTE2(v73) ^ 0x4838B0E6))) + (v74 ^ 0xE63EA358);
  v76 = *(v58 + 4 * (BYTE6(a12) ^ 0xE4u)) ^ ((HIBYTE(v31) ^ 0xC4AEC005) - 992304095 + *(v53 + 4 * (HIBYTE(v31) ^ 0xD7))) ^ BYTE6(a12) ^ *(v59 + 4 * (v245 ^ 0x46)) ^ (4 * (*(v59 + 4 * (v245 ^ 0x46)) ^ 0x781FE365) * (*(v59 + 4 * (v245 ^ 0x46)) ^ 0x781FE365)) ^ __ROR4__((v65 >> 6) ^ 0xFDA1B07B, 26) ^ 0x850E05FF;
  BYTE2(v68) = BYTE2(v70) ^ 0xE5;
  v77 = *(v59 + 4 * (v70 ^ 0x8Bu));
  v78 = *(v54 + 4 * BYTE1(v73)) - 1005844358;
  v79 = *(v58 + 4 * (BYTE2(v66) ^ 0x6Eu)) ^ BYTE2(v66) ^ v77 ^ v78 ^ (*(v53 + 4 * (HIBYTE(v76) ^ 0xC2)) + (HIBYTE(v76) ^ 0xC4AEC010) - 992304095) ^ (v78 >> 4) & 0xFF4611F ^ (4 * (v77 ^ 0x781FE365) * (v77 ^ 0x781FE365));
  v80 = *(v54 + 4 * (BYTE1(v66) ^ 0x5Fu)) - 1005844358;
  v81 = (-(((v70 ^ 0x7FE5E38Bu) >> 24) ^ 0x3B513FEF) - 992304096 + *(v53 + 4 * (((v70 ^ 0x7FE5E38Bu) >> 24) ^ 0xC2))) ^ BYTE2(v76) ^ v80 ^ *(v58 + 4 * (BYTE2(v76) ^ 0x99u));
  v82 = (v80 >> 4) & 0xFF4611F;
  v83 = *(v59 + 4 * v73) ^ 0x781FE365;
  v84 = v81 ^ v83 ^ v82 ^ (4 * v83 * v83);
  v85 = *(v54 + 4 * (BYTE1(v70) ^ 0xC2u)) - 1005844358;
  v86 = ((HIBYTE(v66) ^ 0xC4AEC0B4) - 992304095 + *(v53 + 4 * (HIBYTE(v66) ^ 0x66))) ^ v85 ^ *(v59 + 4 * v76) ^ (v85 >> 4) & 0xFF4611F ^ (4 * (*(v59 + 4 * v76) ^ 0x781FE365) * (*(v59 + 4 * v76) ^ 0x781FE365)) ^ v75 ^ 0x15F55C55;
  v87 = *(v59 + 4 * (((v66 & 0xA5FEBF44 | 0x5A0140B3) & (v66 & 0xBB ^ 0x5A014057) | v66 & 8) ^ 0x5A01404F));
  v88 = BYTE2(v68) ^ *(v58 + 4 * (BYTE2(v68) ^ 0x99u)) ^ v87 ^ ((HIBYTE(v73) ^ 0xC4AEC010) - 992304095 + *(v53 + 4 * (HIBYTE(v73) ^ 0xC2)));
  v89 = *(v54 + 4 * BYTE1(v76)) - 1005844358;
  v90 = v88 ^ v89 ^ (v89 >> 4) & 0xFF4611F ^ (4 * (v87 ^ 0x781FE365) * (v87 ^ 0x781FE365));
  v91 = v90 ^ 0x32E41260;
  v92 = *(v54 + 4 * ((v90 ^ 0x1260) >> 8)) - 1005844358;
  v93 = *(v59 + 4 * (v84 ^ 0x93u));
  v94 = ((HIBYTE(v79) ^ 0xC4AEC036) - 992304095 + *(v53 + 4 * (HIBYTE(v79) ^ 0xE4))) ^ BYTE2(v86) ^ *(v58 + 4 * (BYTE2(v86) ^ 0x99u)) ^ v93 ^ v92 ^ (v92 >> 4) & 0xFF4611F ^ (4 * (v93 ^ 0x781FE365) * (v93 ^ 0x781FE365));
  v95 = *(v54 + 4 * BYTE1(v86)) - 1005844358;
  v96 = *(v59 + 4 * v91) ^ 0x781FE365;
  v97 = *(v58 + 4 * (BYTE2(v79) ^ 0x1Eu)) ^ BYTE2(v79) ^ ((((v84 ^ 0xFD95FD93) >> 24) ^ 0xC4AEC010) - 992304095 + *(v53 + 4 * (((v84 ^ 0xFD95FD93) >> 24) ^ 0xC2))) ^ v95 ^ v96 ^ (v95 >> 4) & 0xFF4611F ^ (4 * v96 * v96);
  v98 = *(v54 + 4 * (BYTE1(v84) ^ 0xDCu)) - 1005844358;
  v99 = *(v59 + 4 * (v79 ^ 0xBFu));
  v100 = *(v58 + 4 * (BYTE2(v91) ^ 0x99u)) ^ v99 ^ v98 ^ (v98 >> 4) & 0xFF4611F ^ (4 * (v99 ^ 0x781FE365) * (v99 ^ 0x781FE365)) ^ (*(v53 + 4 * (HIBYTE(v86) ^ 0xC2)) + (HIBYTE(v86) ^ 0xC4AEC010) - 992304095) ^ 0x4022DA27;
  v101 = *(v54 + 4 * (BYTE1(v79) ^ 0x41u)) - 1005844358;
  v102 = *(v59 + 4 * v86);
  v103 = *(v58 + 4 * (((v84 ^ 0xFD95FD93) >> 16) ^ 0x99u)) ^ ((v84 ^ 0xFD95FD93) >> 16) ^ ((HIBYTE(v91) ^ 0xC4AEC010) - 992304095 + *(v53 + 4 * (HIBYTE(v91) ^ 0xC2))) ^ v102 ^ v101 ^ (v101 >> 4) & 0xFF4611F ^ (4 * (v102 ^ 0x781FE365) * (v102 ^ 0x781FE365));
  v104 = v103 ^ 0xD87C099C;
  v105 = *(v54 + 4 * (BYTE1(v97) ^ 0x98u)) - 1005844358;
  v106 = *(v59 + 4 * (v94 ^ 0xF1u)) ^ 0x781FE365;
  v107 = ((HIBYTE(v100) ^ 0xC4AEC010) - 992304095 + *(v53 + 4 * (HIBYTE(v100) ^ 0xC2))) ^ *(v58 + 4 * (((v103 ^ 0xD87C099C) >> 16) ^ 0x99u)) ^ v105 ^ v106 ^ (v105 >> 4) & 0xFF4611F ^ (4 * v106 * v106);
  v108 = *(v54 + 4 * (BYTE1(v103) ^ 0x28u)) - 1005844358;
  v109 = *(v59 + 4 * (v97 ^ 0x56u)) ^ 0x781FE365;
  v110 = *(v58 + 4 * (BYTE2(v100) ^ 0x99u)) ^ BYTE2(v100) ^ ((-(HIBYTE(v94) ^ 0x14) ^ (995180527 - (HIBYTE(v94) ^ 0x3B513FFB)) ^ ((HIBYTE(v94) ^ 0x14) - ((v94 >> 23) & 0x56) + 2095547947) ^ 0x831879D4) - 1987484622 + *(v53 + 4 * (HIBYTE(v94) ^ 0xD6))) ^ v108 ^ v109 ^ (v108 >> 4) & 0xFF4611F ^ (4 * v109 * v109);
  v111 = ((2 * *(v59 + 4 * v104)) & 0x1BF4A888 ^ 0xF43FD7FF) - 2082469018 + (((*(v59 + 4 * v104) ^ 0xFCED7F3F) + 51544257) ^ ((*(v59 + 4 * v104) ^ 0xF2FCDEF1) + 218308879) ^ ((*(v59 + 4 * v104) ^ 0x7BF416EF) - 2079594223));
  v112 = *(v54 + 4 * BYTE1(v100)) - 1005844358;
  v113 = ((((v97 ^ 0xB400B956) >> 24) ^ 0xC4AEC010) - 992304095 + *(v53 + 4 * (((v97 ^ 0xB400B956) >> 24) ^ 0xC2))) ^ BYTE2(v94) ^ *(v58 + 4 * (BYTE2(v94) ^ 0xC1u)) ^ v112 ^ (v112 >> 4) & 0xFF4611F ^ v111 ^ (4 * v111 * v111);
  v114 = *(v54 + 4 * (BYTE1(v94) ^ 0xA8u)) - 1005844358;
  v115 = *(v59 + 4 * (v100 ^ BYTE2(v91)));
  v116 = (((v97 ^ 0xB400B956) >> 16) & 0x41 | 0x5B00BFA8) ^ ((v97 ^ 0xB400B956) >> 16) & 0xBE ^ *(v58 + 4 * (((v97 ^ 0xB400B956) >> 16) ^ 0x99u)) ^ v114 ^ ((HIBYTE(v104) ^ 0xC4AEC010) - 992304095 + *(v53 + 4 * (HIBYTE(v104) ^ 0xC2))) ^ v115 ^ (v114 >> 4) & 0xFF4611F ^ (4 * (v115 ^ 0x781FE365) * (v115 ^ 0x781FE365));
  v117 = v116 ^ 0x2071C832;
  v118 = ((v116 ^ 0x2071C832) >> 16);
  v119 = *(v58 + 4 * (v118 ^ 0x99u)) ^ ((HIBYTE(v107) ^ 0xC4AEC05D) - 992304095 + *(v53 + 4 * (HIBYTE(v107) ^ 0x8F)));
  v120 = *(v54 + 4 * ((BYTE1(v113) ^ 0x14) - ((v113 >> 7) & 0x42) + 33)) - 1005844358;
  v121 = *(v59 + 4 * (v110 ^ 0xB9u)) ^ 0x781FE365;
  v122 = v121 ^ v120 ^ ((v119 & 0xF0D3025F ^ 0x14D3BF6) & (v119 & 0xF2CFDA0 ^ 0xF5F31AFF) | v119 & 0xE20C400) ^ (v120 >> 4) & 0xFF4611F ^ (4 * v121 * v121);
  v43 = (v116 & 0x20) == 0;
  v123 = *(v54 + 4 * (BYTE1(v116) ^ 0xE9u)) - 1005844358;
  v124 = ((HIBYTE(v110) ^ 0xC4AEC053) - 992304095 + *(v53 + 4 * (HIBYTE(v110) ^ 0x81))) ^ BYTE2(v107) ^ *(v58 + 4 * (BYTE2(v107) ^ 0xB3u)) ^ v123 ^ (v123 >> 4) & 0xFF4611F;
  v125 = *(v59 + 4 * (v113 ^ 0x72u));
  v126 = v124 ^ v125 ^ (4 * (v125 ^ 0x781FE365) * (v125 ^ 0x781FE365));
  if (v43)
  {
    v127 = -32;
  }

  else
  {
    v127 = 32;
  }

  v128 = *(v54 + 4 * (BYTE1(v107) ^ 0x75u)) - 1005844358;
  v129 = *(v59 + 4 * ((v127 + v117) ^ 0x98u));
  v130 = *(v58 + 4 * (BYTE2(v110) ^ 0xEEu)) ^ BYTE2(v110) ^ v129 ^ v128 ^ ((HIBYTE(v113) ^ 0xC4AEC0DF) - 992304095 + *(v53 + 4 * (HIBYTE(v113) ^ 0xD))) ^ (v128 >> 4) & 0xFF4611F ^ (4 * (v129 ^ 0x781FE365) * (v129 ^ 0x781FE365));
  v131 = *(v54 + 4 * (BYTE1(v110) ^ 0x94u)) - 1005844358;
  v132 = *(v59 + 4 * ((v107 ^ BYTE2(v104)) ^ 0x4Fu)) ^ 0x781FE365;
  v133 = *(v58 + 4 * (BYTE2(v113) ^ 0xD3u)) ^ BYTE2(v113) ^ ((HIBYTE(v117) ^ 0xC4AEC010) - 992304095 + *(v53 + 4 * (HIBYTE(v117) ^ 0xC2))) ^ v131 ^ v132 ^ (v131 >> 4) & 0xFF4611F ^ (4 * v132 * v132);
  v134 = v122 ^ v118 ^ 0xD8637D9D;
  v135 = *(v54 + 4 * (BYTE1(v130) ^ 0xA4u)) - 1005844358;
  v136 = *(v59 + 4 * (v126 ^ 0xD6u));
  v137 = ((HIBYTE(v134) ^ 0xC4AEC010) - 992304095 + *(v53 + 4 * (HIBYTE(v134) ^ 0xC2))) ^ *(v58 + 4 * (BYTE2(v133) ^ 0xB0u)) ^ v136 ^ v135 ^ (v135 >> 4) & 0xFF4611F ^ (4 * (v136 ^ 0x781FE365) * (v136 ^ 0x781FE365));
  v138 = *(v59 + 4 * (v130 ^ 0xEEu));
  v139 = *(v54 + 4 * (BYTE1(v133) ^ 0x66u)) - 1005844358;
  v140 = ((((v126 ^ 0x614FC5D6u) >> 24) ^ 0xC4AEC010) - 992304095 + *(v53 + 4 * (((v126 ^ 0x614FC5D6u) >> 24) ^ 0xC2))) ^ BYTE2(v134) ^ *(v58 + 4 * (BYTE2(v134) ^ 0x99u)) ^ v138 ^ v139 ^ (v139 >> 4) & 0xFF4611F ^ (4 * (v138 ^ 0x781FE365) * (v138 ^ 0x781FE365));
  v141 = *(v54 + 4 * (BYTE1(v122) ^ 0x5Cu)) - 1005844358;
  v142 = ((v126 ^ 0x614FC5D6u) >> 16) ^ ((HIBYTE(v130) ^ 0xC4AEC0F3) - 992304095 + *(v53 + 4 * (HIBYTE(v130) ^ 0x21))) ^ *(v58 + 4 * (((v126 ^ 0x614FC5D6u) >> 16) ^ 0x99u)) ^ v141 ^ 0x407B6E0F ^ (v141 >> 4) & 0xFF4611F;
  v143 = *(v54 + 4 * (BYTE1(v126) ^ 0xE4u)) - 1005844358;
  v144 = *(v59 + 4 * (v133 ^ 0x48u));
  v145 = v144 ^ (4 * (v144 ^ 0x781FE365) * (v144 ^ 0x781FE365)) ^ __ROR4__(__ROR4__(v142, 11) ^ 0x10F825E7, 21);
  v146 = *(v59 + 4 * (v122 ^ v118 ^ 0x9D));
  v147 = ((((v133 ^ 0xDB294748) >> 24) ^ 0xC4AEC010) - 992304095 + *(v53 + 4 * (((v133 ^ 0xDB294748) >> 24) - (((v133 ^ 0xDB294748) >> 23) & 0x184) + 194))) ^ BYTE2(v130) ^ *(v58 + 4 * (BYTE2(v130) ^ 0xB6u)) ^ v146 ^ (4 * (v146 ^ 0x781FE365) * (v146 ^ 0x781FE365)) ^ (((v143 >> 4) & 0xFF4611F) + v143 - 2 * ((v143 >> 4) & 0xFF4611F & v143));
  v148 = (HIBYTE(v137) ^ 0xC4AEC0DE) - 992304095 + *(v53 + 4 * (HIBYTE(v137) ^ 0xC));
  v149 = BYTE2(v147) ^ 0x4838B0ED ^ *(v58 + 4 * (BYTE2(v147) ^ 0x92u));
  v150 = (-v149 ^ (v148 - (v149 ^ v148)) ^ 0x61E74FCB ^ (v149 - ((2 * v149) & 0xC3CE9F96) + 1642549195)) + v148;
  v151 = *(v54 + 4 * ((v145 ^ 0x13E7) >> 8)) - 1005844358;
  v152 = *(v59 + 4 * (v140 ^ 0xF8u));
  v153 = v151 ^ v152 ^ (v151 >> 4) & 0xFF4611F ^ (4 * (v152 ^ 0x781FE365) * (v152 ^ 0x781FE365)) ^ v150;
  v154 = *(v59 + 4 * (v145 ^ 0xE7u));
  v155 = *(v54 + 4 * (BYTE1(v147) ^ 0x24u)) - 1005844358;
  v156 = ((((v140 ^ 0xAF6065F8) >> 24) ^ 0xC4AEC010) - 992304095 + *(v53 + 4 * (((v140 ^ 0xAF6065F8) >> 24) ^ 0xC2))) ^ BYTE2(v137) ^ *(v58 + 4 * (BYTE2(v137) ^ 0xCCu)) ^ v154 ^ v155 ^ (v155 >> 4) & 0xFF4611F ^ (4 * (v154 ^ 0x781FE365) * (v154 ^ 0x781FE365));
  v157 = *(v59 + 4 * (v147 ^ 0xDBu)) ^ 0x781FE365;
  LOBYTE(v154) = v137 ^ BYTE2(v133);
  v158 = *(v54 + 4 * (BYTE1(v137) ^ 0x34u));
  v159 = ((v140 ^ 0xAF6065F8) >> 16) ^ *(v58 + 4 * (((v140 ^ 0xAF6065F8) >> 16) ^ 0x99u)) ^ (v158 - 1005844358) ^ ((1005844357 - v158) >> 4) & 0xFF4611F ^ (*(v53 + 4 * (((v145 ^ 0x6C2613E7u) >> 24) ^ 0xC2)) + (((v145 ^ 0x6C2613E7u) >> 24) ^ 0xC4AEC010) - 992304095) ^ 0x47CCD1F9;
  v160 = v159 + (v157 ^ (4 * v157 * v157)) - 2 * (v159 & (v157 ^ (4 * v157 * v157)));
  v161 = *(v59 + 4 * (v154 ^ 0xA7u));
  v162 = *(v58 + 4 * (((v145 ^ 0x6C2613E7u) >> 16) ^ 0x99u)) ^ ((v145 ^ 0x6C2613E7u) >> 16) ^ ((HIBYTE(v147) ^ 0xC4AEC03F) - 992304095 + *(v53 + 4 * (HIBYTE(v147) ^ 0xED))) ^ v161;
  v163 = *(v54 + 4 * (BYTE1(v140) ^ 0x44u)) - 1005844358;
  v164 = v162 ^ v163 ^ (v163 >> 4) & 0xFF4611F ^ (4 * (v161 ^ 0x781FE365) * (v161 ^ 0x781FE365));
  v165 = __ROR4__(__ROR4__(*(v59 + 4 * (v156 ^ 0x29u)), 12) ^ 0x4DDB456C, 20) ^ 0xCC4927B8;
  v166 = ((-4 * v165 * v165) ^ (v165 - ((4 * v165 * v165) ^ v165)) ^ (4 * v165 * v165 - ((8 * v165 * v165) & 0xE362EA60) + 1907455282) ^ 0x71B17532) + v165;
  v167 = v156 ^ 0xE275491;
  v168 = (HIBYTE(v167) ^ 0xC4AEC010) - 992304095 + *(v53 + 4 * (HIBYTE(v167) ^ 0xC2));
  v169 = v160 ^ 0x1D2776A6;
  v170 = v160 ^ 0xA6;
  v171 = v170 >= 0xA6;
  if (v170 >= 0xA6)
  {
    v170 -= 166;
  }

  v172 = v169 + 90;
  if (!v171)
  {
    v172 = v160 ^ 0xA6;
  }

  v43 = v170 == 0;
  v173 = *(v58 + 4 * (BYTE2(v153) ^ 0x7Fu));
  v174 = (BYTE2(v153) | 0x4838B000) ^ v173;
  if (!v43)
  {
    v172 = 0;
  }

  if ((v168 & 0x40000 & v173) != 0)
  {
    v175 = -(v168 & 0x40000);
  }

  else
  {
    v175 = v168 & 0x40000;
  }

  v176 = v175 + v174;
  v177 = *(v54 + 4 * (BYTE1(v164) ^ 0x64u)) - 1005844358;
  v178 = v177 ^ v168 & 0xFFFBFFFF ^ (v177 >> 4) & 0xFF4611F ^ v176;
  v179 = *(v59 + 4 * ((v169 - v172) ^ 0xB8u)) ^ 0x781FE365;
  v180 = v178 ^ v179 ^ (4 * v179 * v179);
  v181 = v164 ^ 0x91;
  v182 = (v164 ^ 0xAD6B4591) >> 24;
  v183 = *(v54 + 4 * (BYTE1(v160) ^ 0x57u)) - 1005844358;
  v184 = *(v58 + 4 * (((v164 ^ 0xAD6B4591) >> 16) ^ 0x99u)) ^ v183 ^ (*(v53 + 4 * (HIBYTE(v153) ^ 0xE5)) + (HIBYTE(v153) ^ 0xC4AEC037) - 992304095) ^ (v183 >> 4) & 0xFF4611F ^ ((v164 ^ 0xAD6B4591) >> 16) ^ 0xD237BB98 ^ v166;
  v185 = *(v54 + 4 * (BYTE1(v156) ^ 0x75u)) - 1005844358;
  v186 = *(v59 + 4 * (v153 ^ 0xB2u));
  v187 = ((v182 ^ 0xC4AEC010) - 992304095 + *(v53 + 4 * ((-v182 ^ __ROR4__((v182 << 10) ^ __ROR4__(194 - (v182 ^ 0xC2), 22) ^ 0x75318ADC, 10) ^ 0xB71D4C62) + 194))) ^ BYTE2(v169) ^ *(v58 + 4 * (BYTE2(v169) ^ 0x99u)) ^ v185 ^ v186 ^ (v185 >> 4) & 0xFF4611F ^ (4 * (v186 ^ 0x781FE365) * (v186 ^ 0x781FE365));
  v188 = *(v54 + 4 * (BYTE1(v153) ^ 0x23u)) - 1005844358;
  v189 = BYTE2(v167) ^ *(v58 + 4 * (BYTE2(v167) ^ 0x99u)) ^ v188 ^ *(v59 + 4 * v181) ^ (v188 >> 4) & 0xFF4611F ^ ((HIBYTE(v169) ^ 0xC4AEC010) - 992304095 + *(v53 + 4 * (HIBYTE(v169) ^ 0xC2))) ^ (4 * (*(v59 + 4 * v181) ^ 0x781FE365) * (*(v59 + 4 * v181) ^ 0x781FE365)) ^ 0x4C3574EB;
  v190 = *(v54 + 4 * BYTE1(v189)) - 1005844358;
  v191 = *(v58 + 4 * (BYTE2(v187) ^ 0xE0u)) ^ v190 ^ (v190 >> 4) & 0xFF4611F;
  v192 = *(v59 + 4 * (v180 ^ 0xA1u));
  v193 = v192 ^ v191 ^ (*(v53 + 4 * (HIBYTE(v184) ^ 0xC2)) + (HIBYTE(v184) ^ 0xC4AEC010) - 992304095) ^ (4 * (v192 ^ 0x781FE365) * (v192 ^ 0x781FE365));
  v194 = *(v58 + 4 * (BYTE2(v184) ^ 0x99u)) ^ BYTE2(v184) ^ ((HIBYTE(v180) ^ 0xC4AEC02E) - 992304095 + *(v53 + 4 * (HIBYTE(v180) ^ 0xFC)));
  v195 = *(v54 + 4 * BYTE1(v184)) - 1005844358;
  v196 = *(v59 + 4 * (v187 ^ 6u));
  v197 = ((HIBYTE(v189) ^ 0xC4AEC010) - 992304095 + *(v53 + 4 * (HIBYTE(v189) ^ 0xC2))) ^ BYTE2(v180) ^ v195 ^ *(v58 + 4 * (BYTE2(v180) ^ 0x55u)) ^ v196 ^ (v195 >> 4) & 0xFF4611F ^ (4 * (v196 ^ 0x781FE365) * (v196 ^ 0x781FE365));
  v198 = *(v54 + 4 * (BYTE1(v180) ^ 0xB0u)) - 1005844358;
  v199 = (*(v53 + 4 * (HIBYTE(v187) ^ 0x2D)) - HIBYTE(v187) - 1987484384) ^ BYTE2(v189) ^ *(v58 + 4 * (BYTE2(v189) ^ 0x99u)) ^ *(v59 + 4 * v184) ^ v198 ^ (v198 >> 4) & 0xFF4611F ^ (4 * (*(v59 + 4 * v184) ^ 0x781FE365) * (*(v59 + 4 * v184) ^ 0x781FE365));
  v200 = *(v54 + 4 * ((((BYTE1(v187) ^ 0x44) - (BYTE1(v187) ^ 0x65)) ^ 0xFFFFFFFE) + (BYTE1(v187) ^ 0x44))) - 1005844358;
  v201 = *(v59 + 4 * v189) ^ 0x781FE365;
  v202 = v200 ^ v201 ^ (v200 >> 4) & 0xFF4611F ^ (4 * v201 * v201) ^ 0x9B6AD27E ^ ((v194 & 0x33FE62B3 ^ 0x388FFE01) & (v194 & 0xCC019D4C ^ 0x73FF6EF3) | v194 & 0xC400014C);
  v203 = *(&off_1010A0B50 + (v14 - 13051)) - 1211841671;
  v204 = *&v203[4 * (BYTE2(v193) ^ 0xEF)];
  v205 = v204 ^ (-514422282 - (v204 ^ 0xD609BAEE)) ^ 0x375F3318 ^ (-928985880 - (((v204 ^ 0x794AFA7B) - 2034956923) ^ ((v204 ^ 0x7D31F13F) - 2100425023) ^ ((v204 ^ 0x3324385C) - 858011740)));
  v206 = *(&off_1010A0B50 + (v14 ^ 0x3A8C)) - 206302110;
  v207 = *&v206[4 * (HIBYTE(v202) ^ 0xBC)] - HIBYTE(v202);
  v208 = *(&off_1010A0B50 + (v14 ^ 0x3A30)) - 2034613762;
  v209 = (v207 - ((2 * v207 - 612308956) & 0xFDBCCCA8) + 1822349926) ^ (v205 - 514422282) ^ (4 * v205 - 1633398608) ^ 0xFEDE6654;
  v210 = ((BYTE1(v199) ^ 0xF5) + 1580018796) ^ ((BYTE1(v199) ^ 0xF5) - ((2 * (BYTE1(v199) ^ 0xF5)) & 0x26) + 1997579795) ^ *&v208[4 * (BYTE1(v199) ^ 0xC9)] ^ 0xAA8F90AA;
  v211 = v209 + v210;
  v212 = v209 & v210;
  v213 = HIBYTE(v193);
  v214 = *&v206[4 * (HIBYTE(v193) ^ 0x48)];
  v215 = HIBYTE(v197);
  v216 = *&v206[4 * (v215 ^ 0x89)];
  v217 = v211 - 2 * v212;
  v218 = HIBYTE(v199);
  v219 = *&v206[4 * (HIBYTE(v199) ^ 0x68)];
  v220 = *&v203[4 * (BYTE2(v199) ^ 0x75)];
  v221 = *&v203[4 * BYTE2(v202)];
  v222 = *&v203[4 * (BYTE2(v197) ^ 0xE7)];
  v223 = v193 ^ BYTE2(v187);
  LODWORD(v206) = BYTE1(v197);
  v224 = *&v208[4 * (BYTE1(v197) ^ 0x4F)];
  v225 = BYTE1(v193);
  v226 = *&v208[4 * (BYTE1(v193) ^ 0xC3)];
  LODWORD(v203) = BYTE1(v202);
  LODWORD(v208) = *&v208[4 * (BYTE1(v202) ^ 0x3C)];
  v227 = *(&off_1010A0B50 + (v14 ^ 0x3AD8)) - 1010359594;
  v228 = *&v227[4 * v202];
  v229 = *&v227[4 * (v197 ^ 0xC0)] ^ *(v15 - 132) ^ v217;
  v230 = *&v227[4 * (v199 ^ 0x28)];
  v231 = *&v227[4 * (v223 ^ 0xD0)];
  v232 = *(&off_1010A0B50 + (v14 - 14886)) - 873019658;
  LODWORD(v227) = v232[v229 ^ 0x30];
  *(a1 + v252) = v227 ^ (v227 >> 4) ^ 0xFC;
  v233 = ((v213 ^ 0xFFFFFF0B) + 1841329171 + v214) ^ *(v15 - 128) ^ v220 ^ v224;
  v234 = (4 * v220) ^ 0x5826EBB8;
  LODWORD(v206) = v206 ^ 0x73;
  LODWORD(v227) = v233 ^ (v234 + 424290520) ^ (v206 + 1580018796) ^ v228;
  LODWORD(v206) = v232[v206 ^ 0xD8 ^ (v233 ^ (v234 - 40) ^ (v206 + 108) ^ v228)];
  v235 = (v206 ^ (v206 >> 4) ^ 7) >> (HIBYTE(v202) & 4);
  *(a1 + v255) = v206 ^ 0x31 ^ (((v235 + (~(2 * v235) | 0xDB) - 109) ^ 0x92) >> (~HIBYTE(v202) & 4));
  v236 = ((BYTE1(v202) ^ 0x5E2D2C6C) + ((v202 >> 7) & 0xD8)) ^ *(v15 - 124) ^ v222 ^ ((v218 ^ 0xFFFFFF2B) + 1841329171 + v219) ^ v208 ^ v231 ^ (((4 * v222) ^ 0x5826EBB8) + 424290520);
  v237 = *(&off_1010A0B50 + (v14 - 13295)) - 1961415963;
  *(a1 + v253) = HIBYTE(v236) ^ 0xA2 ^ v237[HIBYTE(v236) ^ 0x97];
  v238 = *(&off_1010A0B50 + (v14 ^ 0x3B3A)) - 1941765946;
  LOBYTE(v235) = -120 - 59 * v238[BYTE2(v229) ^ 0xFALL];
  *(a1 + *(v15 - 180)) = v235 ^ ((v235 & 0xF0) >> 4) ^ 0xB8;
  LOBYTE(v235) = -120 - 59 * v238[BYTE2(v236) ^ 0x9BLL];
  *(a1 + v251) = v235 ^ ((v235 & 0xF0) >> 4) ^ 0xAA;
  v239 = *(&off_1010A0B50 + (v14 - 11564)) - 296221758;
  v240 = v239[BYTE1(v229) ^ 0xEALL];
  *(a1 + v258) = ((v240 >> 6) | (4 * v240)) ^ 0xC8;
  *(a1 + *(v15 - 176)) = HIBYTE(v229) ^ v237[HIBYTE(v229) ^ 0x3CLL] ^ 7;
  v241 = v225 ^ *(v15 - 120) ^ (1580019051 - v225) ^ ((v215 ^ 0xFFFFFFCA) + 1841329171 + v216) ^ v221 ^ v226 ^ v230 ^ (((4 * v221) ^ 0x5826EBB8) + 424290520);
  LOBYTE(v228) = -120 - 59 * v238[BYTE2(v241) ^ 0x41];
  *(a1 + *(v15 - 160)) = v228 ^ ((v228 & 0xF0) >> 4) ^ 0xB8;
  *(a1 + *(v15 - 168)) = HIBYTE(v241) ^ v237[HIBYTE(v241) ^ 0x62] ^ 0x22;
  LOBYTE(v238) = -120 - 59 * v238[BYTE2(v227) ^ 5];
  *(a1 + v254) = v238 ^ ((v238 & 0xF0) >> 4) ^ 0x4D;
  LODWORD(v238) = v239[BYTE1(v236) ^ 0x8ELL];
  *(a1 + v256) = (v238 >> 6) | (4 * v238);
  LODWORD(v238) = v232[v241 ^ 0xB9];
  *(a1 + v250) = v238 ^ (v238 >> 4) ^ 0xA6;
  LODWORD(v238) = v239[(((v241 >> 8) & 0xC0 ^ 0x450B55B7) & ((v241 >> 8) & 0x3F ^ 0x450B55CF) | (v241 >> 8) & 8) ^ 0x450B55E3];
  *(a1 + v259) = ((v238 >> 6) | (4 * v238)) ^ 0x43;
  LODWORD(v238) = v239[BYTE1(v227) ^ 0x71];
  *(a1 + *(v15 - 152)) = ((v238 >> 6) | (4 * v238)) ^ 0xB7;
  *(a1 + *(v15 - 144)) = BYTE3(v227) ^ 0xB2 ^ v237[(v227 >> 24) ^ 0xA2];
  LOBYTE(v203) = v232[(((v236 ^ v203) ^ 0x5C) + ((2 * (v236 ^ v203)) & 0x74 ^ 0xFFFFFFCF) + 59) ^ 0xD4];
  LOBYTE(v203) = (v203 ^ (-38 - (v203 ^ 7)) ^ 0xDD ^ (35 - (((v203 ^ 0xCF) + 49) ^ ((v203 ^ 0x5D) - 93) ^ ((v203 ^ 0x4F) - 79)))) - 38;
  *(a1 + v257) = v203 ^ ((v203 & 0xF0) >> 4) ^ 0xE3;
  LODWORD(v203) = (((HIDWORD(v249) ^ 0x662B3C52) - 1714109522) ^ ((HIDWORD(v249) ^ 0x1AD14FF9) - 449925113) ^ ((HIDWORD(v249) ^ 0x1A0B07E2) - 436930530)) - 1128006152;
  LODWORD(v203) = ((v203 ^ 0xD1993F7) - 1489705576) ^ v203 ^ ((v203 ^ 0xE05531DE) + 1249396671) ^ ((v203 ^ 0x47655449) - 314039766) ^ ((v203 ^ 0xFFFB7FFF) + 1440090528);
  LODWORD(v232) = (((v203 ^ 0x3938D1F9) - 169552943) ^ ((v203 ^ 0x66C60917) - 1441133761) ^ ((v203 ^ 0xA2C5171) - 957328551)) - 1307851947;
  LODWORD(v238) = *(v15 - 184) ^ (v232 < 0x4B1A4F0C);
  v242 = v232 < *(v15 - 116);
  if (v238)
  {
    v242 = *(v15 - 184);
  }

  HIDWORD(v244) = v14 ^ 0x6671;
  return (*(a9 + 8 * ((61 * v242) ^ v14)))(5, v215, v216, 162, 4294967237, 1841329171, 424290520, v226, a2, a3, a4, a5, a6, a7, a8, a9, v244, v245, a12, v246, v247, v248, v249, v250, v251);
}

uint64_t sub_1002166D4(uint64_t a1)
{
  *(a1 + 40) = 0;
  *(STACK[0x730] + 24) = 0;
  *(STACK[0x730] + 8) = 0;
  v3 = (((LODWORD(STACK[0x26C]) ^ 0x74BB348E) - 1958425742) ^ ((LODWORD(STACK[0x26C]) ^ 0xD83B4E86) + 667201914) ^ ((LODWORD(STACK[0x26C]) ^ 0x4555BD19) + ((6 * (v1 ^ 0x2D91)) ^ 0xBAAAF4B9))) - 371865851;
  v4 = (4 * v1) ^ 0xFFFF3024;
  v5 = v3 >= v4;
  v6 = v3 < v4;
  if (v5)
  {
    v7 = 371891407;
  }

  else
  {
    v7 = -371865839;
  }

  LODWORD(STACK[0x508]) = v7;
  return (*(v2 + 8 * ((2000 * v6) ^ v1)))();
}

uint64_t sub_100216954@<X0>(unint64_t a1@<X8>)
{
  v5 = STACK[0x2AF8];
  v6 = 155453101 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x492C2148) + 1227628872) ^ 0xAF0A3A87);
  LODWORD(STACK[0x10EF8]) = (v4 - 33442) ^ v6;
  LODWORD(STACK[0x10EF4]) = ((v3 ^ 0xFA38ED9F) + 1842314216 + ((((v4 - 39599) | 0x2D40) - 193876997) & (2 * v3))) ^ v6;
  STACK[0x10F00] = v1;
  STACK[0x10EE0] = v5;
  STACK[0x10ED8] = a1;
  LODWORD(STACK[0x10EF0]) = (v2 ^ 0x699E67ED) - v6;
  STACK[0x10EE8] = v1;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v4 ^ 0x501E)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * v4))(v8);
}

uint64_t sub_100216A38(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v5 = STACK[0xF10] + a3;
  LOWORD(STACK[0x9F7A]) = v4;
  return (*(STACK[0xF18] + 8 * (v5 ^ a4)))();
}

uint64_t sub_100216C0C()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((15117 * (v0 + 1122881430 == ((v0 + 4085) ^ 0x1787337B))) ^ (v0 + 4081))))();
}

uint64_t sub_100216CD8(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0xF10] - 10006;
  LODWORD(STACK[0x4510]) = v2;
  v4 = LOWORD(STACK[0x9916]);
  STACK[0x2840] = STACK[0x9918];
  return (*(STACK[0xF18] + 8 * ((44227 * (v4 == 47179)) ^ v3)))(a1, a2, 371891606);
}

uint64_t sub_100216D2C(uint64_t a1, uint64_t a2, int a3)
{
  v3 = STACK[0xF10] - 33837;
  v4 = STACK[0xF10] - 18409;
  LODWORD(STACK[0x606C]) = a3;
  return (*(STACK[0xF18] + 8 * ((11 * (a3 != (v3 ^ 0xE9D5C01F))) ^ v4)))();
}

uint64_t sub_100216DF0()
{
  LODWORD(STACK[0x6130]) = -371865855;
  STACK[0x6620] = STACK[0x8038];
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100216E30(uint64_t a1, uint64_t a2)
{
  v3 = LOWORD(STACK[0x621E]) - 31 * ((((2115 * LOWORD(STACK[0x621E])) >> 16) + (((LOWORD(STACK[0x621E]) - ((2115 * LOWORD(STACK[0x621E])) >> 16)) & 0xFFFE) >> 1)) >> 4);
  v4 = ((((v2 - 10303) | 0x830A) + 29919) & (2 * v3)) + (v3 ^ 0x7B4D);
  if ((v4 - 31580) >= 0xFFF1u)
  {
    v5 = -31548;
  }

  else
  {
    v5 = -31553;
  }

  if ((v4 - 31565) >= 0x11u)
  {
    v6 = -31565;
  }

  else
  {
    v6 = v5;
  }

  v7 = v6 + v4;
  LOWORD(STACK[0x621E]) = v7;
  STACK[0x95A0] = STACK[0x8B58];
  LOWORD(STACK[0x79DE]) = v7 - ((2 * v7) & 0x377A) + 7101;
  LODWORD(STACK[0x16B4]) = -1721840514;
  return (*(STACK[0xF18] + 8 * v2))(a1, a2, STACK[0xE58], STACK[0xE50]);
}

uint64_t sub_100216F14()
{
  LODWORD(STACK[0x10ED8]) = (v0 - 2608) ^ (1603510583 * ((((&STACK[0x10000] + 3800) | 0xF21048F4) - ((&STACK[0x10000] + 3800) | 0xDEFB70B) + 233813771) ^ 0x65CB7A5F));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16406)))(&STACK[0x10ED8]);
  STACK[0x85B8] = *(v1 + 8 * (v0 - 32202));
  return (*(v1 + 8 * ((v0 - 14764) ^ (v0 - 32202))))(v2);
}

uint64_t sub_100216FCC()
{
  v2 = *(v1 + 8);
  STACK[0x2B60] = v1 + 8;
  STACK[0x10EE0] = v2;
  LODWORD(STACK[0x10ED8]) = (v0 + 703924550) ^ (634647737 * ((((&STACK[0x10000] + 3800) | 0xC3820EE6) - ((&STACK[0x10000] + 3800) & 0xC3820EE0)) ^ 0xAE14211A));
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0xCDC5)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * ((((v0 + 14921) | 0x1A20) + 16058) ^ v0)))(v4);
}

uint64_t sub_100217094()
{
  v1 = STACK[0xF10] - 28497;
  LODWORD(STACK[0x5B14]) = v0;
  v2 = LOWORD(STACK[0x9926]);
  STACK[0x1690] = STACK[0x9928];
  return (*(STACK[0xF18] + 8 * ((14347 * (v2 == 47179)) ^ v1)))();
}

uint64_t sub_1002170E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = (*(*(&off_1010A0B50 + v12 - 27996) + (*(v15 - 124) ^ 0x50) - 1574841531) << 24) + 335544320;
  v17 = *(v15 - 128);
  *(v15 - 216) = (((v13 ^ 0xD991D582) + 363234549) ^ ((v13 ^ 0xF8A9189A) + 882788845) ^ ((v13 ^ 0xBA30F5D4) + 1980212387)) + 1088059316;
  return (*(v14 + 8 * v12))(v16, 2897921711, 4195169264, -(v17 ^ 0xB) ^ (36 - (v17 ^ 0x2F)) ^ 0xCC039D4B, -(v17 ^ 0xB), 3422788939, (v12 - 25173), 335544320, a9, a10, a11, a12);
}

uint64_t sub_1002175DC()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 4079)))();
}

uint64_t sub_10021771C()
{
  STACK[0x10EF0] = v3;
  STACK[0x10EE0] = v0;
  LODWORD(STACK[0x10EE8]) = v1 + 22698 - 17902189 * (((v2 | 0xDC9C58D1) - (v2 & 0xDC9C58D0)) ^ 0x52D34EC1) + 1481687451;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * ((v1 + 22698) ^ 0x40F5)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * v1))(v5);
}

uint64_t sub_100217898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, uint64_t a15)
{
  a14 = (v15 ^ 0xD880) + 193924789 * (((&a14 | 0x31D9DEE0) - &a14 + (&a14 & 0xCE262118)) ^ 0x8762EC86) - 1579396324;
  a15 = a1;
  (*(v16 + 8 * ((v15 ^ 0xD880) + 20273)))(&a14);
  v17 = (*(v16 + 8 * ((v15 ^ 0xD880) + 19591)))(32);
  return (*(v16 + 8 * (((v17 == 0) * ((1671 * ((((v15 ^ 0xD880) + 1523) | 0x2041) ^ 0xA442)) ^ 0x2DB4)) ^ v15 ^ 0xD880)))(v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_1002179B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, char a44, char a45, __int16 a46)
{
  v49 = v47 + v46;
  *(v47 + ((2 * a9) ^ 0x1463BLL) + v46) = a45;
  *v49 = a44;
  *(v49 + 2) = a46;
  return (*(v48 + 8 * a9))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_100217A00@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X8>)
{
  v9 = ~a1 + v6;
  v10 = *(v5 + v9 - 15);
  v11 = *(v5 + v9 - 31);
  v12 = a5 + v9;
  *(v12 - 15) = v10;
  *(v12 - 31) = v11;
  return (*(v8 + 8 * (((a3 + a1 == v7) * a4) ^ a2)))();
}

uint64_t sub_100217A40@<X0>(unsigned int a1@<W8>)
{
  if (((a1 + 1) ^ v6) == (v4 ^ 0x3745CB32))
  {
    v9 = 0;
  }

  else
  {
    v9 = a1 + 1;
  }

  v10 = *(v5 + 4 * v9) + 1901388722 + *(v5 + 4 * (3 * a1 % v8));
  v11 = (v10 ^ 0x693CE5CC) & (2 * (v10 & 0x41BEE58C)) ^ v10 & 0x41BEE58C;
  v12 = ((2 * (v10 ^ 0x6A38E7CC)) ^ 0x570C0480) & (v10 ^ 0x6A38E7CC) ^ (2 * (v10 ^ 0x6A38E7CC)) & 0x2B860240;
  v13 = v12 ^ 0x28820240;
  v14 = v11 ^ 0x2B860240 ^ (v12 ^ 0x3040000) & (4 * v11);
  v15 = (4 * v13) & 0x2B860240 ^ 0x1860240 ^ ((4 * v13) ^ 0xAE180900) & v13;
  v16 = (16 * v14) & 0x2B860240 ^ v14 ^ ((16 * v14) ^ 0xB8602400) & v15;
  v17 = (16 * v15) & 0x2B860240 ^ 0x3860240 ^ ((16 * v15) ^ 0xB8602400) & v15;
  v18 = *(v5 + 4 * a1);
  v19 = ((v16 << 8) ^ 0x86024000) & v17;
  v20 = (v18 ^ 0xDB6FBC63) & (2 * (v18 & 0xD06FB963)) ^ v18 & 0xD06FB963;
  v21 = (v16 << 8) & 0x2B860200 ^ v16;
  v22 = ((2 * (v18 ^ 0xDBF29C67)) ^ 0x173A4A08) & (v18 ^ 0xDBF29C67) ^ (2 * (v18 ^ 0xDBF29C67)) & 0xB9D2504;
  v23 = v22 ^ 0x8852504;
  v24 = (v22 ^ 0x3180000) & (4 * v20) ^ v20;
  v25 = v21 ^ v19;
  v26 = ((4 * v23) ^ 0x2E749410) & v23 ^ (4 * v23) & 0xB9D2500;
  v27 = v26 ^ 0x1892104;
  v28 = (v26 ^ 0xA140400) & (16 * v24) ^ v24;
  v29 = ((16 * v27) ^ 0xB9D25040) & v27 ^ (16 * v27) & 0xB9D2500;
  v30 = v28 ^ 0xB9D2504 ^ (v29 ^ 0x9900000) & (v28 << 8);
  v31 = v18 ^ v10 ^ (2 * (v30 ^ v25 ^ (v30 << 16) & 0xB9D0000 ^ (v25 << 16) & 0x2B860000 ^ ((v25 << 16) ^ 0x2400000) & ((v17 << 8) & 0x2B860000 ^ 0x29840000 ^ ((v17 << 8) ^ 0x86020000) & v17) ^ ((v30 << 16) ^ 0x25040000) & (((v29 ^ 0x20D2504) << 8) & 0xB9D0000 ^ 0x2980000 ^ (((v29 ^ 0x20D2504) << 8) ^ 0x1D250000) & (v29 ^ 0x20D2504))));
  *(v5 + 4 * a1) = (((v31 ^ 0xC51BBD3E) + 959611769) ^ ((v31 ^ 0x59CD535D) - 1511756516) ^ ((v31 ^ 0x1F3DFC04) - 485178813)) - 1345447301;
  if (v1 < v2 != a1 + 1 > 0xB06881BF)
  {
    v32 = v1 < v2;
  }

  else
  {
    v32 = a1 + 1335328321 < v1;
  }

  return (*(v7 + 8 * ((v32 * v3) ^ v4)))();
}

uint64_t sub_100217DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a8 + 8 * (((v8 == 353 * (v9 ^ 0x3E34) + 700445818) * (v9 + 16510)) ^ v9));
  LODWORD(STACK[0x290]) = -371865839;
  STACK[0x280] = v10;
  return v11(a1, a2, a3, a4);
}

uint64_t sub_100217E18@<X0>(uint64_t a1@<X1>, unsigned int a2@<W4>, uint64_t a3@<X8>)
{
  v18 = ((v7 ^ 0x26072B0E306151E4) + a1) ^ ((v7 ^ 0xFB089CA26168AA01) + 0x4F7635D9E9755FFLL) ^ ((v7 ^ 0xDD0FB7AC2E4EF771) + 0x22F04853D1B1088FLL);
  v19 = (v18 + 2573754629u) * (v18 + 0x46F843D581A80D48) - 0x46F843D5026100B4 * v18 - 0x5181F9E37D2948C9;
  v20 = ((2 * (v19 % 0xC95119CF)) & 0x1CFEB6FFELL) + ((v19 % 0xC95119CF) ^ 0xC2EEDF2AE7F5B7FFLL);
  v21 = ((a2 ^ 0x1C42F7CD52FE7222) - 0x1C42F7CD52FE7222) ^ ((a2 ^ 0x2652EB4CF466D620) - 0x2652EB4CF466D620) ^ ((a2 ^ 0x3A101C81D9DFA896) - 0x3A101C81D9DFA896);
  v22 = (v21 + 0x6CBEB523913E0449) * (v21 + 2135362708) - 0x6CBEB52311F6F7B5 * v21 + 2575459919u * v20 + 0x41908618AAC535E2;
  v23 = v22 % 0x8C3E3039 - ((2 * (v22 % 0x8C3E3039)) & 0x6409AE86) + 0x504B7F8D3204D743;
  v24 = ((((v23 ^ 0x7C2ACE72B07577DELL) - 0x7C2ACE72B07577DELL) ^ ((v23 ^ 0x37FB888C465E0FD4) - 0x37FB888C465E0FD4) ^ ((v23 ^ 0x1B9A3973C42FAF49) - 0x1B9A3973C42FAF49)) + 0x42F4C83482CB53ELL) * (v20 + 0x3D1120D5180A4801) + 0x4C1C3309E9D82205 * v20 + 0x5A389C431020E948;
  v25 = (a3 + v4);
  v26 = ((v25 ^ *(*v12 + (*v17 & v16))) & 0x7FFFFFFF) * v10;
  v27 = (v26 ^ HIWORD(v26)) * v10;
  v28 = ((v24 ^ 0x7A1C2FFF5BB6125ALL) - 0x51146456CB334D19) ^ v24 ^ ((v24 ^ 0x7AE0AAEA5CAB4182) - 0x51E8E143CC2E1EC1) ^ ((v24 ^ 0x1C4B190D50E67B6ELL) - 0x374352A4C063242DLL) ^ ((v24 ^ 0x37BFD7B1C77E77F5) - 0x1CB79C1857FB28B6);
  *v25 = *(v6 + v4) ^ *(v15 + (v27 >> 24)) ^ *(v13 + (v27 >> 24)) ^ *((v27 >> 24) + v14 + 2) ^ v27 ^ (-5 * BYTE3(v27)) ^ ((((v24 ^ 0x5BB6125A) + 885830375) ^ v24 ^ ((v24 ^ 0x5CAB4182) + 869392703) ^ ((v24 ^ 0x50E67B6E) + 1067244499) ^ ((v24 ^ 0xC77E77F5) - 1476077750)) >> 15) ^ 0xA;
  v29 = v4 + 1;
  v30 = ((*(*v12 + (*v17 & v16)) ^ (a3 + v29)) & 0x7FFFFFFF) * v10;
  v31 = (v30 ^ HIWORD(v30)) * v10;
  *(a3 + v29) = *(v6 + v29) ^ *(v15 + (v31 >> 24)) ^ *(v13 + (v31 >> 24)) ^ *((v31 >> 24) + v14 + 2) ^ v31 ^ (-5 * BYTE3(v31)) ^ (v28 >> 23) ^ 0x21;
  v32 = v4 + 2;
  LODWORD(v29) = ((*(*v12 + (*v17 & v16)) ^ (a3 + v32)) & 0x7FFFFFFF) * v10;
  v33 = (v29 ^ WORD1(v29)) * v10;
  *(a3 + v32) = *(v6 + v32) ^ *(v15 + (v33 >> 24)) ^ *(v13 + (v33 >> 24)) ^ *((v33 >> 24) + v14 + 2) ^ v33 ^ (-5 * BYTE3(v33)) ^ 0x53 ^ (v28 >> 31);
  v34 = (((v9 ^ 0x9DC78D3A) + 487451768) ^ v9 ^ ((v9 ^ 0xC749DBCE) + 1199815300) ^ ((v9 ^ 0x52C431B9) - 770813707) ^ ((v9 ^ 0x777FF9FF) - 139093837)) & 0xFFFFFFFC ^ 0x7F359EB3;
  v35 = ((*(*v12 + (*v17 & v16)) ^ (a3 + v34)) & 0x7FFFFFFF) * v10;
  v36 = (v35 ^ HIWORD(v35)) * v10;
  *(a3 + v34) = *(v6 + v34) ^ *(v15 + (v36 >> 24)) ^ *(v13 + (v36 >> 24)) ^ *((v36 >> 24) + v14 + 2) ^ v36 ^ (-5 * BYTE3(v36)) ^ 0x97 ^ (v28 >> 39);
  v37 = v9 + 111226362 < v8;
  if (v3 > 0x7A293357 != (v9 + 111226362) < 0x85D6CCA8)
  {
    v37 = v3 > 0x7A293357;
  }

  return (*(v11 + 8 * ((69 * v37) ^ v5)))();
}

uint64_t sub_100218748()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x955C)))(32) == 0;
  return (*(v1 + 8 * (((v2 ^ (v0 - 69)) & 1 | (2 * ((v2 ^ (v0 - 69)) & 1))) ^ v0)))();
}

uint64_t sub_1002187A8@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * (a1 - 18841));
  return (*(v1 + 8 * ((a1 - 18841) ^ 0x13F4 ^ (14340 * (((a1 - 18841) ^ 0xDD00524A) < 0x37152F22)))))();
}

uint64_t sub_100218860(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0x1C20]) = a3;
  STACK[0x42E0] = &STACK[0x3868];
  return (*(STACK[0xF18] + 8 * v3))();
}

uint64_t sub_100218934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v26 = v21 - 1;
  STACK[0x2F0] = v26;
  *(v23 + v26) = (v24 ^ a7) * (v24 + 17);
  v27 = *(v25 + 8 * (((STACK[0x2F0] == 0) * ((914 * (v22 ^ 0x83F3)) ^ 0x244B)) ^ v22));
  return v27(v27, a2, a3, a4, v23, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t sub_100218B08(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned int a24, int a25, int a26, unsigned int a27)
{
  v29 = ((9241 * (a2 ^ 3)) ^ 0x76417635) + v27;
  v30 = v29 < 0x76411A3E;
  v31 = v29 > a24;
  if (a27 < 0x5C8B6A68 != v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = v31;
  }

  return (*(v28 + 8 * ((19 * (((a2 + 1) ^ v32) & 1)) ^ (a2 + 44649))))();
}

uint64_t sub_100218BBC()
{
  *(v1 + 416) = 0;
  *(v1 + 424) = 0;
  *(v1 + 392) = 1;
  *(v1 + 400) = v0;
  *(v1 + 408) = 0;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_100218D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (((v6 ^ 0x8582FA0F) - 1643339782) ^ ((v6 ^ 0xB9437F2D) - 1563616548) ^ ((v6 ^ 0x3165D83A) + 720092621)) + 733070841;
  v11 = (v8 < 0x41DBFEE8 || (((v4 & 1 ^ 0x92EEF573) + 123478099) ^ (v4 & 1 | 0x663AD52E) ^ ((v4 & 1 ^ 0x7FB8F071) - 368433839)) - 1406588478 <= v8) && v6 != 228875544;
  return (*(v7 + 8 * ((11886 * v11) ^ (v5 - 19987))))(a1, a2, a3, a4);
}

uint64_t sub_100218E48()
{
  *(v4 - 144) = ((v0 ^ 0x6F52) + 16760) ^ (1603510583 * ((v4 - 144 - 2 * ((v4 - 144) & 0x2D8F6A50) - 1383110058) ^ 0x3A5458FD));
  (*(v2 + 8 * (v0 ^ 0x9B90)))(v4 - 144);
  v5 = 17902189 * ((v4 - 144) ^ 0x8E4F1610);
  *(v4 - 136) = (((*(v4 - 140) ^ 0x81BF00F2) + 2118188814) ^ ((*(v4 - 140) ^ 0xF3894EF0) + 209105168) ^ ((*(v4 - 140) ^ 0x9BE38913) + ((((v0 ^ 0x6F52) + 4333) | 0x41) ^ 0x641C262C))) - v5 - 271025034;
  *(v4 - 144) = (v0 ^ 0x6F52) - v5 - 1238;
  (*(v2 + 8 * (v0 ^ 0x9B6F)))(v4 - 144);
  *(v4 - 144) = (v0 ^ 0x6F52) + 634647737 * ((v4 - 144) ^ 0x6D962FFC) - 212193139;
  v6 = (*(v2 + 8 * ((v0 ^ 0x6F52) + 35755)))(v4 - 144);
  return (*(v2 + 8 * (v0 ^ 0x6F52 ^ (63 * (v1 != v3)))))(v6);
}

uint64_t sub_10021925C@<X0>(unsigned int a1@<W8>)
{
  v8 = a1 < v1;
  *(v5 + v3 + 24) = *(v4 + v3);
  if (v8 == (v7 ^ 0x2963) + v3 > 0xD6792119)
  {
    v8 = v3 + 696704743 < a1;
  }

  return (*(v6 + 8 * ((!v8 * v2) ^ v7)))();
}

void sub_1002192C8(uint64_t a1)
{
  v1 = 155453101 * ((a1 - 2 * (a1 & 0x1834EDB6) - 1741361738) ^ 0x7E12F679);
  v2 = *(a1 + 4) - v1;
  LOWORD(v1) = *a1 + v1;
  v3 = v1 & 0xCCFA ^ 0x2C24;
  v4 = (v1 ^ (2 * ((v1 ^ 0x74B0) & (2 * ((v1 ^ 0x74B0) & (2 * ((v1 ^ 0x74B0) & (2 * ((v1 ^ 0x74B0) & (2 * ((v1 ^ 0x74B0) & (2 * ((v1 ^ 0x74B0) & (2 * ((v1 ^ 0x74B0) & (2 * ((v1 ^ 0x74B0) & (2 * ((v1 ^ 0x74B0) & (2 * ((v1 ^ 0x74B0) & (2 * ((((v1 ^ 0x74B0) & (2 * (v1 & (2 * v3) ^ v3)) ^ v3) << (((v2 + 0x80) & 0x5D) - 15)) & (v1 ^ 0x74B0) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3))) ^ 0x4AE2;
  v5 = 131077 * (((v4 ^ 0xE58BA355) + 443833515) ^ ((v4 ^ 0xE3D5407A) + 472563590) ^ ((v4 ^ 0x65E6537) - 106849591)) + 157551228;
  v6 = v5 ^ ((v5 ^ 0xE681A7CE) - 464571338) ^ ((v5 ^ 0xE2635544) - 525482304) ^ ((v5 ^ 0x862C2111) - 2065517845) ^ ((v5 ^ 0x7FFFBF9F) + 2100374629) ^ 0xE9C33F9F;
  **(a1 + 8) = (0x7FFF * (((v6 ^ 0xEA6D22B2036B67F0) + 0x1592DD4DFC949810) ^ ((v6 ^ 0xD9CF4F39D3EF1EE5) + 0x2630B0C62C10E11BLL) ^ ((v6 ^ 0x33A26D8BC4762A8ELL) + 0x92743B89D572)) + 0x429314DB2C65) >> 32;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1002196C4()
{
  v2 = (*(v1 + 8 * (v0 + 43992)))(72);
  STACK[0x730] = v2;
  return (*(v1 + 8 * (((v2 == 0) * ((v0 ^ 0x69DD) + v0 + 4554 - 42915)) | v0)))();
}

uint64_t sub_100219730@<X0>(int a1@<W8>)
{
  v6 = v4 - 1;
  STACK[0x210] = v6;
  *(v2 + v6) = (v3 ^ ((v3 ^ 0xEB) - 69) ^ ((v3 ^ 0x8D) - 35) ^ ((v3 ^ 0x6F) + 63) ^ 0x14 ^ ((v3 ^ (7 * (a1 ^ 0x15)) ^ 0xE1) - 9)) * (v3 + 99);
  return (*(v5 + 8 * ((27204 * (STACK[0x210] > v1)) ^ a1)))();
}

uint64_t sub_1002197E4(char a1, char a2, char a3, char a4, char a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v77 = v67 - 1;
  v78 = (v68 ^ a1) & (2 * (v68 & v66)) ^ v68 & v66;
  v79 = 2 * (v68 ^ v65);
  v80 = v79 ^ a2;
  v81 = v68 ^ (2 * ((a4 ^ (4 * (v80 & (v68 ^ v65) ^ v79 & a3))) & (v80 & (v68 ^ v65) ^ v79 & a3 ^ a5) & (16 * ((v80 & (v68 ^ v65) ^ v79 & a3) & (4 * v78) ^ v78)) ^ (v80 & (v68 ^ v65) ^ v79 & a3) & (4 * v78) ^ v78));
  *(v63 + v77) = ((((v81 ^ a7) + a8) ^ ((v81 ^ v69) + v70) ^ ((v81 ^ v71) + v72)) + v73) * (v68 + v74) + v68 * a6 + v75;
  return (*(a63 + 8 * (((v77 == 0) * v76) ^ v64)))();
}

uint64_t sub_100219938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, int8x16_t a3@<Q5>, int8x16_t a4@<Q6>)
{
  v9 = (v7 + (a2 + v6));
  v10 = *v9;
  v11 = v9[1];
  v12 = (a1 + a2);
  *v12 = vaddq_s8(vaddq_s8(v10, a4), vmvnq_s8(vandq_s8(vaddq_s8(v10, v10), a3)));
  v12[1] = vaddq_s8(vaddq_s8(v11, a4), vmvnq_s8(vandq_s8(vaddq_s8(v11, v11), a3)));
  return (*(v8 + 8 * (((a2 == 32) * v5) ^ v4)))();
}

void sub_100219A28(uint64_t a1)
{
  v1 = 1012831759 * (((a1 | 0x916CD9A5) - a1 + (a1 & 0x6E93265A)) ^ 0x81FFCF2F);
  v2 = *(a1 + 8) + v1;
  __asm { BRAA            X10, X17 }
}

void sub_100219B1C()
{
  if (v0 == 873719886)
  {
    v2 = -371865839;
  }

  else
  {
    v2 = 371891401;
  }

  *v1 = v2;
}

void sub_100219D24(uint64_t a1)
{
  v1 = *(a1 + 48) - 353670337 * (((a1 | 0x61FF1881) - (a1 | 0x9E00E77E) - 1644107906) ^ 0xD5DEE0BC);
  v2 = (v1 - 831908425);
  v3 = ((*(a1 + 40) & 0x48544512A1254521) + 0x810041080010520) & 0x48544512A1254521 | *(a1 + 40) & 0xA52128A514509254 | (((v2 + 0x128A92484A89BDC9) & *(a1 + 40)) + 0x80904042082802) & 0x128A92484A8A288ALL;
  v5 = (&v4 ^ 0x2520288100508054 ^ v3) + 2 * ((v3 ^ 0x2520288100508050) & &v4);
  v4 = v5 - 1545881359;
  __asm { BRAA            X1, X17 }
}

void sub_100219F90(_DWORD *a1)
{
  v1 = 17902189 * ((2 * (a1 & 0x5FF114D3) - a1 + 537848620) ^ 0xAE41FD3C);
  v2 = *a1 ^ v1;
  v3 = ((a1[4] ^ v1) - 1704444706) ^ v2;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_10021A0A0(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, int a44)
{
  v47 = (a17 + a1);
  LOBYTE(STACK[0x313]) = v47[39];
  LOBYTE(STACK[0x312]) = v47[38];
  LOBYTE(STACK[0x311]) = v47[37];
  LOBYTE(STACK[0x310]) = v47[36];
  LOBYTE(STACK[0x30F]) = v47[35];
  LOBYTE(STACK[0x30E]) = v47[34];
  LOBYTE(STACK[0x30D]) = v47[33];
  LOBYTE(STACK[0x30C]) = v47[32];
  LOBYTE(STACK[0x30B]) = v47[31];
  LOBYTE(STACK[0x30A]) = v47[30];
  LOBYTE(STACK[0x309]) = v47[29];
  LOBYTE(STACK[0x308]) = v47[28];
  LOBYTE(STACK[0x307]) = v47[27];
  LOBYTE(STACK[0x306]) = v47[26];
  LOBYTE(STACK[0x305]) = v47[25];
  LOBYTE(STACK[0x304]) = v47[24];
  LOBYTE(STACK[0x303]) = v47[23];
  LOBYTE(STACK[0x302]) = v47[22];
  LOBYTE(STACK[0x301]) = v47[21];
  LOBYTE(STACK[0x300]) = v47[20];
  LOBYTE(STACK[0x2FF]) = v47[19];
  LOBYTE(STACK[0x2FE]) = v47[18];
  LOBYTE(STACK[0x2FD]) = v47[17];
  LOBYTE(STACK[0x2FC]) = v47[16];
  LOBYTE(STACK[0x2FB]) = v47[15];
  LOBYTE(STACK[0x2FA]) = v47[14];
  LOBYTE(STACK[0x2F9]) = v47[13];
  LOBYTE(STACK[0x2F8]) = v47[12];
  LOBYTE(STACK[0x2F7]) = v47[11];
  LOBYTE(STACK[0x2F6]) = v47[10];
  LOBYTE(STACK[0x2F5]) = v47[9];
  LOBYTE(STACK[0x2F4]) = v47[8];
  LOBYTE(STACK[0x2F3]) = v47[7];
  LOBYTE(STACK[0x2F2]) = v47[6];
  LOBYTE(STACK[0x2F1]) = v47[5];
  LOBYTE(STACK[0x2F0]) = v47[4];
  LOBYTE(STACK[0x2EF]) = v47[3];
  LOBYTE(STACK[0x2EE]) = v47[2];
  LOBYTE(STACK[0x2ED]) = v47[1];
  LOBYTE(STACK[0x2EC]) = *v47;
  *(v46 - 160) = &a43;
  *(v46 - 148) = v45 - a15 + 530;
  *(v46 - 144) = a14;
  *(v46 - 136) = &STACK[0x2EC];
  v48 = (*(v44 + 8 * (v45 + 13711)))(v46 - 160);
  v49 = a44 + (((v45 + 3512) | 0xA) ^ 0xC159120B);
  if (v49 >= 0)
  {
    v50 = a44 + (((v45 + 3512) | 0xA) ^ 0xC159120B);
  }

  else
  {
    v50 = -v49;
  }

  return (*(v44 + 8 * (((v50 < 2) | (2 * (v50 < 2))) ^ v45)))(v48);
}

uint64_t sub_10021A398@<X0>(int a1@<W8>)
{
  v2 = a1 - 39053;
  STACK[0x528] = ((v2 + 28809) + 0x981390CADAC3595) ^ LODWORD(STACK[0x718]);
  return (*(v1 + 8 * v2))();
}

uint64_t sub_10021A4D0(__n128 a1)
{
  v4.n128_u64[0] = (v3 + 13) & 0xF;
  v4.n128_u64[1] = (v3 + 12) & 0xF;
  v5.n128_u64[0] = (v3 + 11) & 0xF;
  v5.n128_u64[1] = (v3 + 10) & 0xF;
  v6.n128_u64[0] = (v3 + 9) & 0xF;
  v6.n128_u64[1] = v3 & 0xF ^ 8;
  v9.val[0].i64[0] = (v3 + 7) & 0xF;
  v9.val[0].i64[1] = (v3 + 6) & 0xF;
  v9.val[1].i64[0] = (v3 + 5) & 0xF;
  v9.val[1].i64[1] = (v3 + 4) & 0xF;
  v9.val[2].i64[0] = (v3 + 3) & 0xF;
  v9.val[2].i64[1] = (v3 + 2) & 0xF;
  v9.val[3].i64[0] = (v3 + 1) & 0xF;
  v9.val[3].i64[1] = v3 & 0xF;
  v7.n128_u64[0] = 0xF7F7F7F7F7F7F7F7;
  v7.n128_u64[1] = 0xF7F7F7F7F7F7F7F7;
  return (*(STACK[0x288] + 8 * v2))(0, v1 - 15, (v3 + 14) & 0xF, a1, v4, v5, v6, xmmword_100BC76B0, vqtbl4q_s8(v9, xmmword_100BC76B0), v7);
}

uint64_t sub_10021A5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  if ((a26 - 990958895) < 0xD1DC42BC != a3 - 1609747294 < ((v42 + 1454842153) & 0xA948F1B2 ^ 0xD1DCE38E))
  {
    v46 = a3 - 1609747294 < ((v42 + 1454842153) & 0xA948F1B2 ^ 0xD1DCE38E);
  }

  else
  {
    v46 = a3 - 1609747294 > (a26 - 990958895);
  }

  v47 = *(v43 + 8 * ((63 * ((((v42 + 1454842153) ^ 0x56B78875 ^ v46) & 1) == 0)) ^ v42));
  *(v45 - 248) = v44;
  *(v45 - 216) = v46;
  LODWORD(a29) = a3;
  return v47(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_10021A748(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 8);
  v3 = *(result + 32);
  v4 = *(result + 16);
  v5 = *(result + 24);
  *v1 = 136315906;
  v6 = 1603510583 * (((result | 0x6747A3BC36853119) - (result | 0x98B85C43C97ACEE6) - 0x6747A3BC3685311ALL) ^ 0x58B6B450A15E03B2);
  *(v1 + 4) = v2 - v6;
  *(v1 + 12) = 1024;
  *(v1 + 14) = v3 ^ v6;
  *(v1 + 18) = 1040;
  *(v1 + 20) = v4 ^ v6;
  *(v1 + 24) = 2096;
  *(v1 + 26) = v5 - v6;
  return result;
}

void sub_10021A7F0(_DWORD *a1)
{
  v1 = 353670337 * ((a1 - 2 * (a1 & 0x1366DD1C) - 1821975268) ^ 0x27472521);
  v2 = *a1 ^ v1;
  v3 = *(&off_1010A0B50 + (v2 & 0xD5CC8C40)) - 810145054;
  v4 = a1[4] ^ v1;
  (*&v3[8 * (v2 ^ 0xFD03)])(*(&off_1010A0B50 + (v2 ^ 0x2672)) - 29269038, v5, 64);
  (*&v3[8 * (v2 ^ 0xFD03)])(*(&off_1010A0B50 + v2 - 13884) - 1070970282, v6, 64);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10021AA60@<X0>(int a1@<W8>)
{
  *STACK[0xA1A8] ^= 0x98C532A3;
  *STACK[0xA1B8] ^= 0x32E64F56u;
  *STACK[0xA1C0] ^= 0x1E378F01u;
  *STACK[0xE10] ^= 0xB6621039;
  return (*(STACK[0xF18] + 8 * (a1 + 13065)))();
}

uint64_t sub_10021AB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, unsigned int a38, unsigned int a39, int a40, int a41, unsigned int a42, int a43, char a44)
{
  HIDWORD(a16) = v46;
  HIDWORD(a21) = (a44 - (((v44 ^ v45) + 121) & (2 * a44)) - 55);
  return (*(v47 + 8 * (v44 + 1060915441)))(a1, a2, a3, a39, a5, a6, a7, a38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, __PAIR64__(a42, a5));
}

uint64_t sub_10021B0A4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v40 = ((v38 ^ 0x4C070E3E) - 1670858915) ^ v38 ^ ((v38 ^ 0x865BA59) - 670432452) ^ ((v38 ^ 0x100D4D0D) - 75109210 + ((a1 - 65329) & 0xC4DD8FDF)) ^ ((v38 ^ 0x7BFFA6C7 ^ (a1 - 99106088) & 0x5E7DF3C) - 1416624490);
  v41 = v37 - 1061484258 + (((v40 ^ 0x5F76DB51) - 401740213) ^ ((v40 ^ 0x68907155) - 538229681) ^ ((v40 ^ 0xB7012022) + 8000826)) - 1429679222;
  v42 = *(v39 + 4 * a33);
  v43 = (v42 ^ 0x9D4F315A) & (2 * (v42 & a7)) ^ v42 & a7;
  v44 = (v42 ^ 0xBD4E639C) & 0xDA43B5FE | (v42 ^ 0x42B19C63) & (2 * (v42 ^ 0xBD4E639C));
  v45 = v42 ^ (2 * ((((v42 ^ 0xBD4E639C) & 0x100321FC | (v42 ^ 0x42B19C63) & (2 * (v42 ^ 0xBD4E639C)) & 0x34876BFC | (4 * v44) & ~v44) ^ 0x24014AF3) & (16 * ((v44 ^ 0x4001809C) & (4 * v43) ^ v43)) ^ (v44 ^ 0x4001809C) & (4 * v43) ^ v43)) ^ v41 ^ ((v41 ^ 0x31C8BEA4) - 92109976) ^ ((v41 ^ 0x9F0AA4C5) + 1413519623) ^ ((v41 ^ 0xE5C82722) + 780278498) ^ ((v41 ^ 0x7FBFFF7F) - 1258962243);
  return (*(a36 + 8 * ((47 * (((v36 + (((v45 ^ 0x7DBCED7D) + 1479043519) ^ ((v45 ^ 0x8BBB74F4) - 1372590024) ^ ((v45 ^ 0x829FE2D6) - 1492425194)) + 2137176518) & 7) == 2)) ^ a1)))();
}

void sub_10021B340(_DWORD *a1)
{
  v1 = *a1 ^ (1112314453 * (((a1 | 0xDD0AB49) - (a1 & 0xDD0AB49)) ^ 0xE2868190));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10021B420()
{
  v7 = v5 + v3;
  v8 = (v3 - 1) & 0xF;
  v9 = v1 - v3 + v8 + 1;
  v10 = v1 + v8 + 1;
  v11 = v8 - v3 - 45983 + ((236 * (v4 ^ 0x53EF) + 5592) | 0x3101u);
  v12 = v0 + v11;
  v8 += 2;
  v13 = v0 + v8;
  v14 = v2 + v11;
  v15 = v2 + v8;
  v17 = v10 > v5 && v9 < v7;
  if (v13 > v5 && v12 < v7)
  {
    v17 = 1;
  }

  v20 = v15 > v5 && v14 < v7 || v17;
  return (*(v6 + 8 * ((35 * v20) ^ v4)))();
}

uint64_t sub_10021B534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v78[51] = v75 + 112;
  v78[15] = (16 * (&STACK[0x510] + v74) + 16) & 0x20;
  v78[4] = v73;
  STACK[0x270] = v73;
  HIDWORD(v81) = a71 + 14365;
  HIDWORD(v82) = a71 - 7363;
  LODWORD(v82) = a71 + 17732;
  LODWORD(v86) = (a71 - 8517) ^ 0x5582;
  HIDWORD(v85) = (2 * a71) ^ 0xD9D2;
  LODWORD(v85) = a71 - 9137;
  HIDWORD(v84) = (HIDWORD(v85) - 14425) ^ (a71 - 9137);
  LODWORD(v84) = 61 * (a71 ^ 0x2237);
  HIDWORD(v83) = v84 - 17549;
  LODWORD(v83) = a71 + 13369;
  HIDWORD(v86) = a71 - 8517;
  HIDWORD(a54) = (a71 - 8517) ^ 0x26E;
  LODWORD(v81) = a71 - 9139;
  HIDWORD(a44) = a71 ^ 0x4B4C;
  return (*(v76 + 8 * (v77 + 5642)))(a1, a2, a71 ^ 0x4B4C, a71, 256516683, 4038458106, 4294957764, 9870, a9, a10, a11, a12, __PAIR64__(v72, v71), a14, a15, a16, a17, a18, a19, a20, a21, a22, v81, ((&STACK[0x294] % 0x25 + (v77 - 1852) - 9548) ^ 0x4FF7CB3F7CF863CDLL) - 0xC25801C302001C8 + ((2 * (&STACK[0x294] % 0x25 + (v77 - 1852) - 9548)) & 0x9A), &STACK[0x510] + v74, a26, a27, a28, a29, a30, a31, a32, (v79 - 160 - 2 * ((v79 - 160) & 0x1640CC3643D742C0) - 0x69BF33C9BC28BD3CLL) ^ 0x38CA31F872D68FE0, (((v79 - 160) | 0x60BC875E632EE2F1) - ((v79 - 160) & 0x60BC875E632EE2F0)) ^ 0xBA6728B10EB8CD0DLL, a35, a36, a37, v82, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, v83, v84, v85, v86, a59, a60, a61, a62);
}

uint64_t sub_10021B890(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(v6 - 184) = 0;
  v7 = *(v5 + 8 * (v4 - 705412362));
  *(v6 - 196) = a4;
  return v7(a1, a2, a3, 1926737144);
}

uint64_t sub_10021B8D0()
{
  v6 = v0 - 46391 + ((v3 - 16529) ^ 0xB7DC);
  LODWORD(STACK[0x480]) = v6;
  if (v6 <= v4)
  {
    v1 = v2;
  }

  LODWORD(STACK[0x484]) = v1;
  return (*(v5 + 8 * ((33081 * (v1 == -371865839)) ^ v3)))();
}

uint64_t sub_10021B924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62, int a63)
{
  LODWORD(STACK[0x278]) = v70;
  LODWORD(STACK[0x3A8]) = a6;
  LODWORD(STACK[0x3AC]) = v69;
  LODWORD(STACK[0x2F0]) = a7;
  LODWORD(STACK[0x31C]) = a68;
  LOWORD(STACK[0x236]) = a67;
  LOWORD(STACK[0x292]) = v71;
  LODWORD(STACK[0x27C]) = a61;
  LOWORD(STACK[0x38E]) = a64;
  return (*(v72 + 8 * (v68 ^ 0x2C478)))();
}

void sub_10021B978(uint64_t a1)
{
  v1 = *(a1 + 8) ^ (17902189 * (a1 ^ 0x8E4F1610));
  __asm { BRAA            X10, X17 }
}

uint64_t sub_10021BA14()
{
  v5 = v0 + 4;
  STACK[0x430] = v5;
  if (v5 > v3)
  {
    v2 = 371891407;
  }

  LODWORD(STACK[0x43C]) = v2;
  return (*(v4 + 8 * (((2 * ((((v1 + 1030) ^ (v2 == ((v1 - 14755) ^ 0xE9D5C5C6))) & 1) == 0)) & 0xFB | (4 * (((v1 + 1030) ^ ~(v2 == ((v1 - 14755) ^ 0xE9D5C5C6))) & 1))) ^ v1)))();
}

uint64_t sub_10021BBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43)
{
  v46 = a43 + 868;
  *(v45 - 152) = v43;
  v47 = (a43 + 164607442) & 0xF6302DAE;
  *(v45 - 144) = v47;
  v48 = *(v45 - 112);
  v49 = *(&off_1010A0B50 + a43 - 15594) - 1425910859;
  if ((v49[v48 ^ 0xEC] & 0x40) != 0)
  {
    v50 = -64;
  }

  else
  {
    v50 = 64;
  }

  v51 = (v50 + (v49[v48 ^ 0xEC] ^ 0xF)) ^ v48;
  v52 = *(&off_1010A0B50 + a43 - 13362) - 659553747;
  v53 = *(&off_1010A0B50 + (v46 ^ 0x46AF)) - 389069578;
  v54 = v53[*(v45 - 110) ^ 0xEBLL];
  v55 = *(&off_1010A0B50 + a43 - 17700) - 1646771799;
  v56 = v55[*(v45 - 109) ^ 0x40];
  HIDWORD(v58) = v56 ^ 0x28;
  LODWORD(v58) = (v56 ^ 0x40) << 24;
  v57 = v58 >> 30;
  v59 = v52[*(v45 - 111) ^ 0xCBLL] * (v47 - 71) - 97;
  v60 = v52[*(v45 - 107) ^ 0xBALL];
  v61 = v55[*(v45 - 105) ^ 0x1DLL];
  HIDWORD(v58) = v61 ^ 0x28;
  LODWORD(v58) = (v61 ^ 0x40) << 24;
  v62 = v49[*(v45 - 104) ^ 0x4ELL] ^ *(v45 - 104);
  v63 = (v58 >> 30) ^ 0x2882008E;
  v64 = *(v45 - 108) ^ v49[*(v45 - 108) ^ 0xA5];
  v65 = *(&off_1010A0B50 + a43 - 14389) - 197246446;
  v66 = 95 * v52[*(v45 - 103) ^ 0xD2] - 97;
  v67 = (((v66 >> 2) & 7 | 0xC0) ^ v66) << 16;
  v68 = v55[*(v45 - 101) ^ 0xFLL];
  v69 = (*(v45 - 102) - 2 * (*(v45 - 102) & 0x8Bu) + 139) ^ 0xB7;
  *(v45 - 136) = v44;
  HIDWORD(v58) = v68 ^ 0x28;
  LODWORD(v58) = (v68 ^ 0x40) << 24;
  v70 = v58 >> 30;
  v71 = (v67 ^ 0xFF5840A1) & ((v62 << 24) ^ 0xC45E41A1);
  v72 = v53[*(v45 - 106) ^ 0xF0];
  v73 = v53[v69];
  v74 = 95 * v60 - 97;
  v75 = (v71 | v67 & 0xA10000) ^ 0x7880000A;
  LODWORD(v52) = 95 * v52[*(v45 - 99) ^ 0xB1] - 97;
  v76 = v53[*(v45 - 98) ^ 0x7DLL] << 8;
  v77 = ((v76 ^ 0xFF830C59) & (((v49[*(v45 - 100) ^ 0x63] ^ *(v45 - 100)) << 24) ^ 0x3D831D59) | v76 & 0xE200) ^ 0xFA688385;
  LODWORD(v55) = v55[*(v45 - 97) ^ 8];
  v78 = v77 & ((((v52 >> 2) & 7 ^ v52) << 16) ^ 0xFFE9FFFF) ^ ((((v52 >> 2) & 7 ^ v52) << 16) & 0x140000 | 0x74000023);
  HIDWORD(v58) = v55 ^ 0x28;
  LODWORD(v58) = (v55 ^ 0x40) << 24;
  v79 = *(&off_1010A0B50 + (v46 ^ 0x492F)) - 2040741258;
  v80 = *(&off_1010A0B50 + (v46 ^ 0x4079)) - 949084654;
  v81 = *(&off_1010A0B50 + a43 - 16501) - 137300014;
  v82 = HIBYTE(v78);
  v83 = *&v65[4 * (HIBYTE(v78) ^ 0x19)];
  LODWORD(v55) = v80[(v58 >> 30) ^ 0xC8] + 30;
  v84 = *&v79[4 * (BYTE2(v78) ^ 0x7C)] + 818184243;
  v85 = v84 ^ v83 ^ (32 * v84) ^ *&v81[4 * (BYTE1(v77) ^ 0x9A)];
  v86 = *(&off_1010A0B50 + (v46 ^ 0x5B28)) - 213032887;
  v87 = v80[v57 ^ 0x3ALL] + 30;
  v88 = *&v79[4 * ((v59 ^ ((v59 >> 2) & 7 | 0x88)) ^ 0x30)] + 818184243;
  v89 = *&v65[4 * (v51 ^ 0xCB)] ^ v51 ^ *&v81[4 * (v54 ^ 0xD6)] ^ v88 ^ (32 * v88) ^ (v87 >> 2) & 0x19 ^ v87;
  v90 = *(&off_1010A0B50 + a43 - 17485) - 1329531590;
  *(v45 - 192) = v46;
  v91 = *(&off_1010A0B50 + a43 - 15836) - 1553259727;
  v92 = v82 ^ (v55 >> 2) & 0x19 ^ v55 ^ 0xC6045B30 ^ v85;
  v93 = *&v91[4 * ((v82 ^ (v55 >> 2) & 0x19 ^ v55) ^ 0x30 ^ v85 ^ 0xE)] + 1475353250;
  v94 = 2 * v93 * v93;
  v95 = v93 & 0x8000;
  if ((v94 & v93 & 0x8000) != 0)
  {
    v95 = -v95;
  }

  v96 = v95 + v94;
  v97 = *(&off_1010A0B50 + a43 - 16795) - 1410124422;
  v98 = v97[HIBYTE(v92) ^ 0x7ELL] ^ HIBYTE(v92);
  v99 = v74 ^ 0xB ^ (v74 >> 2) & 7;
  v100 = *&v86[4 * (BYTE2(v85) ^ 0x8D)];
  *(v45 - 160) = v92;
  v101 = *&v90[4 * (BYTE1(v92) ^ 0x75)] ^ v100 ^ BYTE1(v92) ^ v93 & 0xFFFF7FFF ^ v89 ^ v98 ^ v96;
  v102 = v80[(((2 * v63) | 0xFFFFFEDD) + (v63 ^ 0xFD) + 146) ^ 0x7DLL] + 30;
  v103 = *&v79[4 * v99] + 818184243;
  v104 = v64 ^ *&v81[4 * (v72 ^ 0xB9)] ^ *&v65[4 * (v64 ^ 0xFE)] ^ v103 ^ (32 * v103) ^ 0x8509C5D6 ^ (v102 >> 2) & 0x19 ^ v102;
  v105 = *&v79[4 * (BYTE2(v75) ^ 0xDF)] + 818184243;
  v106 = *&v65[4 * (HIBYTE(v75) ^ 0x53)] ^ HIBYTE(v75);
  v107 = v80[v70 ^ 0xA1] + 30;
  v108 = ((v107 >> 2) & 0x19 | 0x80) ^ v107 ^ 0x6102E655 ^ ((*&v81[4 * (v73 ^ 0xF7)] ^ ((*&v81[4 * (v73 ^ 0xF7)] ^ 0x6169635C) + 1) ^ 0x9E969CA3 ^ ((v106 ^ v105 ^ (32 * v105) ^ 0x6B3C5D3E) - (*&v81[4 * (v73 ^ 0xF7)] ^ 0xF5AAC19D ^ v106 ^ v105 ^ (32 * v105)))) + (v106 ^ v105 ^ (32 * v105) ^ 0x6B3C5D3E));
  v109 = v104 ^ v101 ^ 0x232DD1A3;
  *(v45 - 176) = v109;
  v110 = v109 ^ 0x63F68331;
  v111 = v108 ^ v109 ^ 0x63F68331;
  v112 = v111 ^ v92;
  v113 = v111 ^ v92 ^ 0xB0E34297;
  if ((v113 & 2) != 0)
  {
    v114 = -2;
  }

  else
  {
    v114 = 2;
  }

  v115 = *&v91[4 * ((v114 + v113) ^ 0xC)] + 1475353250;
  v116 = *&v86[4 * (BYTE2(v112) ^ 0x6A)] ^ v101 ^ 0x232DD1A3 ^ *&v90[4 * (BYTE1(v113) ^ 0x75)] ^ BYTE1(v113) ^ (HIBYTE(v113) ^ v97[HIBYTE(v113) ^ 0x7ELL]) ^ 0x8E1693E7 ^ ((((2 * v115 * v115) ^ v115) & 0xE356D458 ^ 0x20E18226) & ((2 * v115 * v115) & 0x1CA92BA6 ^ v115 & 0x1CA92BA7 ^ 0xEFF7D67F) | ((2 * v115 * v115) & 0x1CA92BA6 ^ v115 & 0x1CA92BA7) & 0x1C082981);
  v117 = v116 ^ v110;
  v118 = v116 ^ v110 ^ 0xFA15F0BC;
  v120 = __ROR4__(__ROR4__(v113, 19) ^ 0xCDB601E3, 13);
  v119 = v118 ^ v111 ^ v120;
  v121 = *&v91[4 * ((v118 ^ v111 ^ v120) ^ 0xB1)] + 1475353250;
  HIDWORD(v203) = v116;
  v122 = *&v86[4 * (BYTE2(v119) ^ 0x88)] ^ *&v90[4 * (BYTE1(v119) ^ 0x89)] ^ v121 ^ (2 * v121 * v121) ^ v116 ^ BYTE1(v119) ^ (HIBYTE(v119) ^ v97[HIBYTE(v119) ^ 0x47]) ^ 0x5390B6F7;
  v123 = v118 ^ v111 ^ 0xEA35038B;
  HIDWORD(v200) = v122 ^ v118 ^ v123;
  v124 = HIDWORD(v200) ^ v119;
  v125 = *&v91[4 * ((BYTE4(v200) ^ v119) ^ 0x46)] + 1475353250;
  v202 = __PAIR64__(v119, v122);
  v126 = *&v90[4 * (BYTE1(v124) ^ 0xB1)] ^ *&v86[4 * (BYTE2(v124) ^ 0xEC)] ^ v122 ^ BYTE1(v124) ^ ((HIDWORD(v200) ^ v119) >> 24) ^ v97[((HIDWORD(v200) ^ v119) >> 24) ^ 0x82] ^ (2 * v125 * v125 + v125 - 2 * ((2 * v125 * v125) & v125));
  *(v45 - 168) = v126;
  HIDWORD(v201) = v123;
  v127 = v126 ^ 0xFDF758C3 ^ v123;
  v128 = v127 ^ v124 ^ 0xAF77BFCA;
  v129 = *&v91[4 * ((v127 ^ v124) ^ 0x36)] + 1475353250;
  HIDWORD(v130) = v129 * v129;
  LODWORD(v130) = v129 * v129;
  LODWORD(v201) = v122 ^ v118;
  v131 = *&v90[4 * (BYTE1(v128) ^ 0x59)] ^ *&v86[4 * (BYTE2(v128) ^ 0xCC)] ^ __ROR4__((v130 >> 24) & 0xFFFFFF7F ^ __ROR4__(v129, 25) ^ 0x8670101B, 7) ^ v126 ^ 0xFDF758C3 ^ BYTE1(v128) ^ (HIBYTE(v128) ^ v97[HIBYTE(v128) ^ 0x93]);
  HIDWORD(v199) = v127 ^ v124;
  LODWORD(v200) = v127;
  v132 = v127 ^ 0x99A9EC2E;
  LODWORD(v199) = v122 ^ v118 ^ 0x411BC8A6 ^ v126 ^ 0xFDF758C3;
  v133 = v131 ^ v199;
  v134 = v131 ^ v199 ^ v127 ^ 0x99A9EC2E;
  v135 = v127 ^ v124 ^ 0xC8EAFAEB ^ v134;
  v136 = *&v91[4 * ((v127 ^ v124) ^ 0xEB ^ v134 ^ 0x53)] + 1475353250;
  LODWORD(v198) = v135;
  HIDWORD(v198) = v131 ^ 0x4F1D8D0B;
  HIDWORD(v197) = *&v90[4 * (BYTE1(v135) ^ 0xC1)] ^ *&v86[4 * (BYTE2(v135) ^ 0xCE)] ^ v136 ^ (2 * v136 * v136) ^ v131 ^ 0x4F1D8D0B ^ BYTE1(v135) ^ (HIBYTE(v135) ^ v97[HIBYTE(v135) ^ 0x43]);
  v137 = HIDWORD(v197) ^ 0xA4C27C8C ^ v132;
  v138 = v137 ^ v135 ^ 0xA2DEC0CD;
  v139 = *&v91[4 * ((v137 ^ v135) ^ 0x16)] + 1475353250;
  v140 = *&v86[4 * (((v137 ^ v135) >> 16) ^ 0x9E)] ^ *&v90[4 * (((v137 ^ v135) >> 8) ^ 0xAE)] ^ v139 ^ (2 * v139 * v139) ^ HIDWORD(v197) ^ 0xA4C27C8C ^ ((v137 ^ v135) >> 8) ^ (((v137 ^ v135) >> 24) - (((v137 ^ v135) >> 23) & 0x54) + 42) ^ v97[((v137 ^ v135) >> 24) ^ 0x95] ^ 0xF2A4B11E;
  HIDWORD(v195) = v131 ^ v199 ^ 0xEEA28469 ^ HIDWORD(v197) ^ 0xA4C27C8C;
  v141 = v140 ^ HIDWORD(v195);
  v142 = v140 ^ HIDWORD(v195) ^ 0xE76999A3;
  LODWORD(v197) = v137;
  v143 = v137 ^ 0xF8638A35 ^ v142;
  HIDWORD(v194) = v143 ^ v138;
  v144 = *&v91[4 * ((v143 ^ v138) ^ 0x51)] + 1475353250;
  v196 = __PAIR64__(v138, v140);
  LODWORD(v194) = *&v90[4 * (((v143 ^ v138) >> 8) ^ 0xA5)] ^ *&v86[4 * (((v143 ^ v138) >> 16) ^ 0x45)] ^ v144 ^ __ROR4__(__ROR4__((2 * v144 * v144) ^ 0x373C83DC, 17) ^ 0x4BAADE8F, 15) ^ v140 ^ ((v143 ^ v138) >> 8) ^ ((v143 ^ ~v138) >> 24) ^ v97[((v143 ^ ~v138) >> 24) ^ 0x7ELL];
  v145 = v194 ^ 0xCE95E4 ^ v142;
  v146 = v145 ^ 0x21B1BBCF;
  v147 = v145 ^ 0x21B1BBCF ^ v138;
  v148 = *&v91[4 * (v147 ^ 0x4C)] + 1475353250;
  v149 = ((v147 ^ 0x88301343) >> 24) ^ v97[((v147 ^ 0x88301343) >> 24) ^ 0x28] ^ __ROR4__(__ROR4__(*&v86[4 * (((v147 ^ 0x88301343) >> 16) ^ 0x11)] ^ v148 ^ (2 * v148 * v148) ^ v194 ^ 0xCE95E4 ^ __ROR4__(((v147 ^ 0x88301343) >> 1) & 0x7F80 ^ __ROR4__(*&v90[4 * (((v147 ^ 0x1343) >> 8) ^ 0xC)], 25) ^ 0x74835D9D, 7) ^ 0x10AF057, 2) ^ 0x5F7FE27A, 30) ^ 0x3C29DA3D;
  v150 = v149 + (v145 ^ 0xB6D0CA58) - 2 * (v149 & (v145 ^ 0xB6D0CA58));
  LODWORD(v195) = v143;
  HIDWORD(v193) = v146;
  v151 = v146 ^ v143;
  v152 = v150 ^ v151 ^ 0xFDB08BC;
  *(v45 - 184) = v152;
  LODWORD(v193) = v147 ^ 0xCAAA852D;
  v153 = v152 ^ v147 ^ 0xCAAA852D;
  v154 = *&v91[4 * (v153 ^ 0x91)] + 1475353250;
  v192 = __PAIR64__(v149, v150);
  v155 = *&v90[4 * (BYTE1(v153) ^ 0x8D)] ^ *&v86[4 * (BYTE2(v153) ^ 0xDF)] ^ v154 ^ (2 * v154 * v154) ^ v149 ^ BYTE1(v153) ^ (HIBYTE(v153) ^ v97[HIBYTE(v153) ^ 0x84]);
  v204 = v150 ^ 0xAB768D90 ^ v155;
  v205 = v153 ^ 0xBC38FDF7;
  v156 = v155 ^ 0xE1ACF739;
  LODWORD(v191) = v133 ^ 0xD07F53E8;
  HIDWORD(v191) = v151;
  v157 = (v101 ^ 0x14DCD5C1) + (v112 ^ 0x36147849) + (v133 ^ 0xD07F53E8) + (v151 ^ 0x7931FF6D) + (v150 ^ v151 ^ 0xD2EC6D80) - 2127430307;
  LODWORD(v190) = v141 ^ 0xCEA29B53;
  HIDWORD(v190) = v150 ^ v151 ^ 0xD2EC6D80;
  v158 = (v111 ^ 0x1934339) - (v141 ^ 0xCEA29B53) + 934504477;
  v159 = v134 ^ 0x13E50D6C;
  v160 = *(v45 - 192);
  v161 = *(&off_1010A0B50 + v160 - 18593) - 834655030;
  v162 = *(&off_1010A0B50 + v160 - 18585) - 493236974;
  v163 = *&v162[4 * (*(v45 - 127) ^ 0xACLL)] ^ 0x33AA4F87;
  v164 = *(v45 - 122) ^ 0x51;
  v165 = *(&off_1010A0B50 + (v160 ^ 0x4B63)) - 1983994150;
  v166 = *(&off_1010A0B50 + (v160 ^ 0x4D85)) - 1955620594;
  LOBYTE(v144) = (*(v45 - 125) ^ 0xD8) + v166[*(v45 - 125) ^ 0xE0];
  LOBYTE(v149) = v166[(*(v45 - 113) + 2 * (*(v45 - 113) & 0xAE) - 4 * (*(v45 - 113) & 0xAEu) + 174) ^ 0x6CLL] + ((*(v45 - 113) + 2 * (*(v45 - 113) & 0xAE) - 4 * (*(v45 - 113) & 0xAE) - 82) ^ 0x54);
  v189 = v166;
  v167 = v166[*(v45 - 121) ^ 0xE1] + (*(v45 - 121) ^ 0xD9);
  v168 = *(v45 - 126) ^ 0x24;
  v169 = *&v162[4 * (*(v45 - 123) ^ 0xD4)] ^ 0x2046F77D;
  v170 = (v156 + 1180743016);
  v171 = v157 + v156;
  v172 = v158 + v171;
  LODWORD(v203) = v117;
  HIDWORD(a22) = v159;
  v173 = v172 - v159;
  v174 = (v117 ^ 0xD9B588BC) + v172 - v159;
  v175 = v174 + 1459277287;
  v176 = v174 + 1005345201;
  v177 = *&v161[4 * (*(v45 - 116) ^ 0xC6)];
  v178 = v174 - ((2 * (v174 + 1459277287)) & 0xFBFD490A) + 1425633900;
  *(v45 - 200) = *&v162[4 * (*(v45 - 115) ^ 0x4BLL)] ^ v177 ^ 0x9DB04CFE ^ (16 * *&v162[4 * (*(v45 - 115) ^ 0x4BLL)]) & 0x55804EE0 ^ (v149 - 58) ^ (*&v165[4 * (*(v45 - 114) ^ 0x79)] + 770102516) ^ (-726933968 * (v177 ^ 0x9DB04CFE)) ^ 0x6BB86C24;
  v179 = *&v161[4 * (*(v45 - 124) ^ 0x36)];
  *(v45 - 240) = v179 ^ (*&v165[4 * v164] + 770102516) ^ (v167 - 58) ^ v169 ^ (-726933968 * (v179 ^ 0xDB04CFE)) ^ (16 * v169) & 0x55804EE0 ^ 0x8FD877C5;
  v180 = *&v161[4 * (*(v45 - 128) ^ 0xC0)];
  *(v45 - 248) = v180 ^ v163 ^ (16 * v163) & 0x55804EE0 ^ (v144 - 58) ^ (-726933968 * (v180 ^ 0xDB04CFE)) ^ (*&v165[4 * v168] + 770102516) ^ 0x20698A64;
  HIDWORD(v187) = (((*(v45 - 152) ^ 0x970F9011) + 1631356147) ^ ((*(v45 - 152) ^ 0xBD69CCFA) + 1264244762) ^ ((*(v45 - 152) ^ 0x1A3EEC26) - 334628666)) + 991033966;
  LODWORD(v188) = *(v45 - 176) ^ 0xF49610FB;
  v181 = -v188;
  LODWORD(v187) = v181 ^ (v188 - ((2 * v188) & 0x6BB3BD9E) - 1244012849) ^ 0xB5D9DECF;
  HIDWORD(v186) = -(v176 ^ 0x84E0D397) ^ ((v176 ^ 0x84E0D397) - ((2 * (v176 ^ 0x84E0D397)) & 0x67F4125E) - 1275459281) ^ 0xB3FA092F;
  LODWORD(v186) = v176 ^ 0x57BB6721;
  HIDWORD(v185) = v124 ^ v176 ^ 0x3938538F;
  LODWORD(v185) = (v173 - 1320264858) ^ 0xB14E5B66;
  HIDWORD(v184) = (v173 - 1320264858) ^ *(v45 - 168);
  LODWORD(v184) = v175 ^ v205 ^ v178;
  HIDWORD(v130) = (v170 >> (v171 & 3 ^ 1) >> (v171 & 8) >> (~v171 & 0xA) >> (v171 & 1)) ^ (v170 << 21) ^ 0x25444592;
  LODWORD(v130) = HIDWORD(v130);
  HIDWORD(v183) = v170 ^ v156 ^ (v130 >> 21);
  LODWORD(v183) = v204 ^ *(v45 - 184);
  HIDWORD(v188) = v172;
  HIDWORD(a11) = v172 ^ *(v45 - 160);
  return (*(a41 + 8 * v160))(3019508015, v181, v160, v156, v170, HIDWORD(v130), v172, v178, a9, a10, a11, v183, v184, v185, v186, v187, v188, v189, v165, v162, v161, a22, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203);
}

uint64_t sub_10021CED8@<X0>(int a1@<W8>)
{
  v5 = (((v3 ^ 0x99995C77) + 1718002569) ^ ((v3 ^ 0x591BB43F) - 1494987839) ^ ((v3 ^ 0x29574C50 ^ (a1 + 1526363486) & 0xA50567FF) - 693579609)) + 315101872;
  v6 = (v5 ^ 0xD7AD2347) & (2 * (v5 & 0xD70DB460)) ^ v5 & 0xD70DB460;
  v7 = ((2 * (v5 ^ 0xD1AC2347)) ^ 0xD432E4E) & (v5 ^ 0xD1AC2347) ^ (2 * (v5 ^ 0xD1AC2347)) & 0x6A19726;
  v8 = v7 ^ 0x2A09121;
  v9 = (v7 ^ 0x4010200) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0x1A865C9C) & v8 ^ (4 * v8) & 0x6A19724;
  v11 = (v10 ^ 0x2801400) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x4218323)) ^ 0x6A197270) & (v10 ^ 0x4218323) ^ (16 * (v10 ^ 0x4218323)) & 0x6A19720;
  v13 = v11 ^ 0x6A19727 ^ (v12 ^ 0x2011200) & (v11 << 8);
  v14 = v5 ^ (2 * ((v13 << 16) & 0x6A10000 ^ v13 ^ ((v13 << 16) ^ 0x17270000) & (((v12 ^ 0x4A08507) << 8) & 0x6A10000 ^ 0x6200000 ^ (((v12 ^ 0x4A08507) << 8) ^ 0x21970000) & (v12 ^ 0x4A08507))));
  LOBYTE(v12) = *(*(v2 + 24) + (v14 ^ 0xD60C9A2ELL));
  *(STACK[0x608] + (v14 ^ 0xD60C9A2ELL)) = v12 - ((2 * v12) & 0x74) - 70;
  return (*(v4 + 8 * ((8446 * (v14 == -703817170)) ^ v1)))();
}

uint64_t sub_10021D0F0@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>, int8x16_t a5@<Q0>, int8x8_t a6@<D1>)
{
  v14.val[0].i64[0] = (v10 - 1) & 0xF;
  v14.val[0].i64[1] = (v10 + 14) & 0xF;
  v14.val[1].i64[0] = (v10 + 13) & 0xF;
  v14.val[1].i64[1] = (v10 + 12) & 0xF;
  v14.val[2].i64[0] = (v10 + 11) & 0xF;
  v14.val[2].i64[1] = (v10 + 10) & 0xF;
  v14.val[3].i64[0] = (v10 + (v9 ^ 0xFD)) & 0xF;
  v14.val[3].i64[1] = v10 & 0xF ^ 8;
  *(a4 + v10) = veor_s8(veor_s8(veor_s8(*(v7 + v14.val[0].i64[0] - 7), *(a1 + v10)), veor_s8(*(v14.val[0].i64[0] + v6 - 5), *(v14.val[0].i64[0] + v8 - 6))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v14, a5), a6)));
  return (*(v12 + 8 * (((v11 == v10) * a3) ^ a2)))();
}

uint64_t sub_10021D2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v38 = *(v33 + 8);
  v39 = 1112314453 * ((v36 - 176) ^ 0xEF562AD9);
  v40 = *(v33 + 16) - v39;
  *(v36 - 176) = ((v35 & 0xD26759B3) + 12653) ^ v39;
  *(v36 - 168) = v40;
  *(v36 - 152) = v38;
  *(v36 - 160) = a33;
  v41 = (*(v37 + 8 * ((v35 & 0xD26759B3) + 31491)))(v36 - 176);
  LODWORD(STACK[0x72C]) = 740984379;
  return (*(v34 + 8 * (v35 & 0xD26759B3)))(v41);
}

uint64_t sub_10021D34C@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v5 = *(v4 + (v2 - 258949480) % v3);
  v6 = *(v4 + (v2 - 258949510) % v3);
  v7 = *(v4 + ((a2 ^ 0x31DAu) + v2 - 258951893) % v3);
  *(v4 + (v2 - 258949473) % v3) ^= ((v5 >> 7) | (2 * v5)) ^ ((v6 >> 2) | (v6 << 6)) ^ ((v7 >> 3) | (32 * v7)) ^ 0x82;
  return (*(a1 + 8 * ((22389 * (v2 == 258949728)) ^ a2)))();
}

uint64_t sub_10021D458()
{
  LODWORD(STACK[0x3A8]) = LODWORD(STACK[0x38C]) ^ 0x2528C3DF;
  *(v2 - 124) = LODWORD(STACK[0x39C]) ^ 0x401204A6;
  *(v2 - 132) = LODWORD(STACK[0x388]) ^ 0x1AF93701;
  *(v2 - 128) = LODWORD(STACK[0x390]) ^ 0x40030654;
  return (*(v1 + 8 * (v0 + 10223)))();
}

uint64_t sub_10021D86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, int a23, int a24)
{
  v24 = 16 * (a24 - 39912 + ((a21 + 6480) ^ 0x16DB));
  v25 = v24 - 1594536807;
  v26 = v24 > 0x5F0AB366;
  v27 = v25 > HIDWORD(a17);
  if (HIDWORD(a17) < 0xA0F54C99 != v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = v27;
  }

  return (*(a2 + 8 * (a21 | (8 * !v28))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_10021D97C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62, int a63)
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
  return (*(v71 + 8 * a47))();
}

uint64_t sub_10021DA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v8 = *(a6 + a1);
  v9 = (v6 + a1);
  *(v9 - 1) = *(a6 + a1 - 16);
  *v9 = v8;
  return (*(v7 + 8 * ((a3 != a1) ^ a5)))(a1 + a4);
}

uint64_t sub_10021DA68()
{
  v4 = *(v2 + 120 * v1 + 24);
  STACK[0x500] = v4;
  return (*(v3 + 8 * (((((v4 == 0) ^ ((v0 ^ 0x16) + 32)) & 1) * ((1801 * (v0 ^ 0xCA16)) ^ 0x8577)) ^ v0 ^ 0xB475)))();
}

uint64_t sub_10021DACC()
{
  v3 = (((((v1 ^ 0xF263) + 202078099) ^ LODWORD(STACK[0x4C0])) - 202129731) ^ ((LODWORD(STACK[0x4C0]) ^ 0xFA9444D6) + 90946346) ^ ((LODWORD(STACK[0x4C0]) ^ 0x1F4D472F ^ (19 * (v1 ^ 0x3CDA))) - 525189764)) + 240909908;
  v4 = (v0 - 1275842087 < -1534707901) ^ (v3 < -1534707901);
  v5 = v0 - 1275842087 > v3;
  if (v4)
  {
    v5 = v0 - 1275842087 < -1534707901;
  }

  return (*(v2 + 8 * (v1 ^ (32 * !v5))))();
}

uint64_t sub_10021DB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = v7 + 1403358663;
  if ((v7 + 1403358663) <= 0x40)
  {
    v10 = 64;
  }

  return (*(v9 + 8 * (((v10 - 1 < v7 + v8 - 35936 + 1403349970) * (v8 ^ 0xAE73)) ^ v8)))(a1, a2, a3, a4, a5, a6, a7, 0);
}

uint64_t sub_10021DCCC()
{
  v3 = *(v2 + 8);
  *(v2 + 32) = v0;
  v4 = STACK[0x7690];
  v5 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0xFE0] = v5;
  STACK[0x3E50] = (v5 + 96);
  STACK[0x7690] = v4 + 112;
  STACK[0x4F18] = v2 + 8;
  return (*(STACK[0xF18] + 8 * (((v3 != 0x217E172EFA1E81CLL) * (((v1 - 10601) | 0x1000) ^ 0x701B)) ^ (v1 + 9630))))();
}

uint64_t sub_10021E02C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, int8x16_t a7, int8x8_t a8, int8x8_t a9)
{
  v15.val[0].i64[0] = a5 & (v12 + a2 - 1);
  v15.val[0].i64[1] = (v12 + a2 + 14) & 0xF;
  v15.val[1].i64[0] = (v12 + a2 + 13) & 0xF;
  v15.val[1].i64[1] = (v12 + a2 + 12) & 0xF;
  v15.val[2].i64[0] = (v12 + a2 + 11) & 0xF;
  v15.val[2].i64[1] = (v12 + a2 + 10) & 0xF;
  v15.val[3].i64[0] = (v12 + a2 + 9) & 0xF;
  v15.val[3].i64[1] = (v12 + a2) & 0xF ^ 8;
  *(a3 + a2) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a3 + a2), *(v10 + v15.val[0].i64[0] - 7)), veor_s8(*(v15.val[0].i64[0] + v11 - 5), *(v9 + v15.val[0].i64[0] - 7)))), a9), vmul_s8(*&vqtbl4q_s8(v15, a7), a8)));
  return (*(v13 + 8 * (((a1 != a2) * a6) ^ a4)))();
}

uint64_t sub_10021E0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  v5 = v3 | 0x6291;
  v6 = ((v3 | 0x6291) - 25119) | 0xC240;
  if ((a3 + 1948820967) <= 0x40)
  {
    v7 = 64;
  }

  else
  {
    v7 = a3 + 1948820967;
  }

  return (*(v4 + 8 * (((v7 - a3 - 1948820967 >= ((v5 - 1595736360) & 0x5F1CBE7F ^ 0x2410u)) * (v6 - 50892)) ^ v5)))(a1, a2, 0);
}

uint64_t sub_10021E34C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39)
{
  v46 = v39 + v45 - 702276309;
  v47 = (v46 ^ ((v40 ^ 0xDB6E) - 45663) ^ 0x92033CE0) & (2 * (v46 & 0xDB2BBEF4)) ^ v46 & 0xDB2BBEF4;
  v48 = ((2 * (v46 ^ 0x737CB969)) ^ 0x50AE0F3A) & (v46 ^ 0x737CB969) ^ (2 * (v46 ^ 0x737CB969)) & 0xA857079C;
  v49 = ((a1 ^ 0x40FAE859) - 1869262532) ^ a1 ^ ((a1 ^ 0xC49AFA3E) + 351617885) ^ ((a1 ^ 0xB407A345) + 1684544040) ^ ((a1 ^ 0x1FF7F7BF) - 812101922) ^ v46 ^ (2 * (((4 * v48) ^ 0x215C1E60) & v48 & (16 * ((v48 ^ 0x60715) & (4 * v47) ^ v47)) ^ (v48 ^ 0x60715) & (4 * v47) ^ v47));
  return (*(a36 + 8 * ((108 * (((735871153 * *(v43 + 4 * v41) - v42 + a39 + ((((v49 ^ 0x424E099E) + 92463002) ^ ((v49 ^ 0xAD5FC50F) - 359460087) ^ ((v49 ^ 0x1B8034F8) + 1548542720)) + 549867744) * (*(v43 + 4 * v41) + v44) - 335237773) & 7) != 1)) ^ v40)))();
}

uint64_t sub_10021E5C8()
{
  STACK[0x578] = v0;
  v3 = STACK[0x4F8];
  LOBYTE(STACK[0x644]) = *(STACK[0x4F8] + 23);
  LOBYTE(STACK[0x643]) = v3[22];
  LOBYTE(STACK[0x642]) = v3[21];
  LOBYTE(STACK[0x641]) = v3[20];
  LOBYTE(STACK[0x640]) = v3[19];
  LOBYTE(STACK[0x63F]) = v3[18];
  LOBYTE(STACK[0x63E]) = v3[17];
  LOBYTE(STACK[0x63D]) = v3[16];
  LOBYTE(STACK[0x63C]) = v3[15];
  LOBYTE(STACK[0x63B]) = v3[14];
  LOBYTE(STACK[0x63A]) = v3[13];
  LOBYTE(STACK[0x639]) = v3[12];
  LOBYTE(STACK[0x638]) = v3[11];
  LOBYTE(STACK[0x637]) = v3[10];
  LOBYTE(STACK[0x636]) = v3[9];
  return (*(v2 + 8 * (v1 - 5885)))();
}

void sub_10021E670(uint64_t a1)
{
  v1 = 1022166737 * ((~a1 & 0xC7A4B71C | a1 & 0x385B48E3) ^ 0x7DB4568E);
  v2 = *(a1 + 20) ^ v1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16) ^ v1;
  v5 = (v4 ^ 0x613B4AB4) & (2 * (v4 & 0x823C0AA6)) ^ v4 & 0x823C0AA6;
  v6 = ((2 * (v4 ^ 0x654B4EF0)) ^ 0xCEEE88AC) & (v4 ^ 0x654B4EF0) ^ (2 * (v4 ^ 0x654B4EF0)) & 0xE7774456;
  v7 = v6 ^ 0x21114452;
  v8 = (v6 ^ 0x600000) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0x9DDD1158) & v7 ^ (4 * v7) & 0xE7774450;
  v10 = (v9 ^ 0x85550040) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x62224406)) ^ 0x77744560) & (v9 ^ 0x62224406) ^ (16 * (v9 ^ 0x62224406)) & 0xE7774440;
  v12 = v10 ^ 0xE7774456 ^ (v11 ^ 0x67744400) & (v10 << 8);
  v13 = (8 * v4) ^ (16 * ((v12 << 16) & 0x77777777 ^ v12 ^ ((v12 << 16) ^ 0x4560000) & (((v11 ^ 0x80030016) << 8) & 0x7770000 ^ 0x330000 ^ (((v11 ^ 0x80030016) << 8) ^ 0x7440000) & (v11 ^ 0x80030016)))) ^ 0x23F41050;
  v14 = *(v3 + 12);
  v15 = *(v3 + 16) + __CFADD__(v13, v14) + (((((v4 ^ 0xC03CBBFA) + 1107341664) ^ v4 ^ ((v4 ^ 0xE0ABA31) - 1942572907) ^ ((v4 ^ 0x5C0A032C) - 566883956) ^ ((v4 ^ 0xEFFFF7BF) + 1841560859)) >> 29) ^ 3);
  *(v3 + 12) = v13 + v14;
  *(v3 + 16) = v15;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10021EA1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a1 - 1;
  *(a2 + v9) ^= *(v3 + (v9 & 0xF)) ^ *((v9 & 0xF) + v4 + 1) ^ ((v9 & 0xF) * v6) ^ *((v9 & 0xF) + v2 + 7) ^ 0xEE;
  return (*(v8 + 8 * (((v9 != 0) * v7) ^ v5)))();
}

uint64_t sub_10021EC00@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, unsigned int a3@<W7>, int a4@<W8>, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, int a14, int a15)
{
  *a7 = a4;
  STACK[0x200] = a13;
  v34 = v15;
  v23 = (((a15 ^ 0x542275D3) - 1411544531) ^ ((a15 ^ 0xA6D62A43) + 1495913917) ^ (((v15 - 5246) | 0x480B) + ((v15 + 6274) | 0x881) + (a15 ^ 0x1B219881) - 455228429)) - (((v22 ^ 0x8D4FAFC5) + 1924157499) ^ ((v22 ^ 0x921A5638) + 1843767752) ^ ((v22 ^ 0xF6803EEC) + 159367444)) + 282170313;
  v24 = (v23 ^ 0xCF0C6827) & (2 * (v23 & 0xEF2E6C37)) ^ v23 & 0xEF2E6C37;
  v25 = ((2 * (v23 ^ 0xD9542865)) ^ 0x6CF488A4) & (v23 ^ 0xD9542865) ^ (2 * (v23 ^ 0xD9542865)) & 0x367A4452;
  v26 = v25 ^ 0x120A4452;
  v27 = (v25 ^ 0x24700000) & (4 * v24) ^ v24;
  v28 = ((4 * v26) ^ 0xD9E91148) & v26 ^ (4 * v26) & 0x367A4450;
  v29 = (v28 ^ 0x10680040) & (16 * v27) ^ v27;
  v30 = ((16 * (v28 ^ 0x26124412)) ^ 0x67A44520) & (v28 ^ 0x26124412) ^ (16 * (v28 ^ 0x26124412)) & 0x367A4440;
  v31 = v29 ^ 0x367A4452 ^ (v30 ^ 0x26204400) & (v29 << 8);
  LODWORD(STACK[0x208]) = v23 ^ (2 * ((v31 << 16) & 0x367A0000 ^ v31 ^ ((v31 << 16) ^ 0x44520000) & (((v30 ^ 0x105A0052) << 8) & 0x367A0000 ^ 0x43A0000 ^ (((v30 ^ 0x105A0052) << 8) ^ 0x7A440000) & (v30 ^ 0x105A0052)))) ^ 0x62AB2382;
  STACK[0x210] = a1 + (v22 ^ a3);
  v32 = (*(v17 + v21 * v20 + 8))(a2);
  return (*(v18 + 8 * ((27055 * (v32 == ((2 * v32) & 0xD3AB8E22))) ^ v34)))(a9, 3567785513, a10, 2147483657, v16, v19, 6187);
}

uint64_t sub_10021EF48@<X0>(uint64_t a1@<X7>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = v7;
  v16 = v9;
  v17 = v8;
  v11 = (*(a1 + 8 * (v10 ^ 0x746C)))(a2 - v7 + (v10 ^ 0xB0FC) - 63845421);
  return (*(STACK[0x2F0] + 8 * (((v11 == 0) * (((v10 - 30707) | 0x8020) - 50493)) ^ v10)))(v11, v17, v16, v18, v12, v13, v14, STACK[0x2F0], a3, a4, a5, a6, a7);
}

uint64_t sub_10021EFCC@<X0>(unsigned int a1@<W8>)
{
  v10 = v6 < v7;
  *(v8 + a1) = *(v2 + (a1 & 0xF)) ^ *(v1 + a1) ^ *(v3 + (a1 & 0xF)) ^ (123 * (a1 & 0xF)) ^ *(v4 + (a1 & 0xF));
  if (v10 == a1 + 1 > 0xECB16712)
  {
    v10 = a1 + 323918062 < v6;
  }

  return (*(v9 + 8 * ((v10 * ((2 * v5) ^ 0x11EE)) ^ v5)))((2 * v5) ^ 0xBCB8u);
}

uint64_t sub_10021F1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23)
{
  v26 = -v23;
  v27 = a7 - v23;
  if (v27 >= (a23 + v26 - 1261702225))
  {
    v28 = (a23 + v26 - 1261702225);
  }

  else
  {
    v28 = v27;
  }

  return (*(v25 + 8 * (v24 ^ (21 * (v28 > 6)))))();
}

uint64_t sub_10021F9E8()
{
  v9 = v5 - 1;
  *(v7 + v9) = *(v3 + (v9 & 0xF)) ^ *(v0 + v9) ^ *(v2 + (v9 & 0xF)) ^ *((v9 & 0xF) + v1 + 1) ^ ((v9 & 0xF) * v6);
  return (*(v8 + 8 * (((2 * (v9 == 0)) | (8 * (v9 == 0))) ^ v4)))();
}

uint64_t sub_10021FAFC()
{
  *(v3 - 160) = *v1;
  *(v3 - 159) = v1[1];
  *(v3 - 158) = v1[2];
  *(v3 - 157) = v1[3];
  *(v3 - 156) = v1[4];
  *(v3 - 155) = v1[5];
  *(v3 - 154) = v1[6];
  *(v3 - 153) = v1[7];
  *(v3 - 152) = v1[8];
  *(v3 - 151) = v1[9];
  *(v3 - 150) = v1[10];
  *(v3 - 149) = v1[11];
  *(v3 - 148) = v1[12];
  *(v3 - 147) = v1[13];
  *(v3 - 146) = v1[14];
  *(v3 - 145) = v1[15];
  return (*(v2 + 8 * v0))();
}

uint64_t sub_10021FB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  v59 = ((v56 + 11724) ^ 0x7B3E8392) + v57;
  v60 = v59 < 0x882BF88B;
  v61 = v59 > a7 + 2067718304;
  if ((a7 + 2067718304) < 0x882BF88B != v60)
  {
    v62 = v60;
  }

  else
  {
    v62 = v61;
  }

  LOBYTE(STACK[0x227]) = v62;
  return (*(v58 + 8 * ((889 * v62) ^ v56)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56);
}

uint64_t sub_10021FC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 + 64);
  v7 = *(a5 + 68);
  *(a5 + 56) = 8 * v7 - ((v7 << (v5 + 89)) & 0xB0) + 95;
  *(a5 + 57) = (~(v7 >> 4) | 0x41) + (v7 >> 5) + 96;
  *(a5 + 58) = (v7 >> 13) - ((v7 >> 12) & 0xBE) + 95;
  *(a5 + 59) = (v7 >> 21) - ((v7 >> 20) & 0xBE) + 95;
  *(a5 + 60) = (__PAIR64__(v8, v7) >> 29) - ((2 * (__PAIR64__(v8, v7) >> 29)) & 0xBF) + 95;
  *(a5 + 61) = (v8 >> 5) - ((v8 >> 4) & 0xBE) + 95;
  *(a5 + 62) = (v8 >> 13) - ((v8 >> 12) & 0xBE) + 95;
  *(a5 + 63) = (v8 >> 21) - ((v8 >> 20) & 0xBE) + 95;
  return (*(v6 + 8 * v5))();
}

void sub_10021FD00(uint64_t a1)
{
  v1 = *(a1 + 24) - 193924789 * (a1 ^ 0xB6BB3266);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_10021FF04(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = *(a2 + 4);
  *(a1 + 64) = *(a2 + 8);
  return 0;
}

uint64_t sub_10021FF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v40 = vrev64q_s8(**(v39 + 40));
  v41 = vextq_s8(v40, v40, 8uLL);
  v42.i64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v42.i64[1] = 0x3C3C3C3C3C3C3C3CLL;
  v43 = vandq_s8(vaddq_s8(v41, v41), v42);
  v42.i64[0] = 0x1E1E1E1E1E1E1E1ELL;
  v42.i64[1] = 0x1E1E1E1E1E1E1E1ELL;
  v44 = veorq_s8(v41, v42);
  v42.i64[0] = 0xCCCCCCCCCCCCCCCCLL;
  v42.i64[1] = 0xCCCCCCCCCCCCCCCCLL;
  v45 = vrev64q_s8(veorq_s8(vaddq_s8(vaddq_s8(v44, v42), v43), xmmword_100F52840));
  *(v38 - 128) = veorq_s8(**(v39 + 24), xmmword_100F52850);
  *(v38 - 112) = vextq_s8(v45, v45, 8uLL);
  return (*(v37 + 8 * (a1 ^ (26 * (v36 == 0)))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, v39, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
}

void sub_1002200F8(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 4) + 509550064;
  v3 = *(*(a1 + 24) + 4) + 509550064;
  v4 = (v2 < -586847008) ^ (v3 < -586847008);
  v5 = v2 > v3;
  if (v4)
  {
    v5 = v2 < -586847008;
  }

  v1 = *a1 + 1603510583 * ((a1 - 2 * (a1 & 0x7EA3553A) + 2124633402) ^ 0xE9786791);
  __asm { BRAA            X13, X17 }
}

void sub_10022357C(uint64_t a1)
{
  v1 = *(a1 + 16) - 1012831759 * (((a1 | 0xD82951D6) - (a1 & 0xD82951D6)) ^ 0xC8BA475C);
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(&off_1010A0B50 + v1 - 33100) - 810145054;
  (*&v4[8 * (v1 ^ 0x4F4D)])(*(&off_1010A0B50 + (v1 ^ 0x83F5)) - 2028154143, v8, 16);
  v5 = (v2 ^ 0x16E7EC9F9FEEBFFFLL) - 0x16E7EC9EAA5826ABLL + ((2 * v2) & 0x2DCFD93F3FDD7FFELL);
  v6 = v5 < 0xF5969954;
  v7 = v5 > v3 + 4120287572u;
  if (v3 > 0xFFFFFFFF0A6966ABLL != v6)
  {
    v7 = v6;
  }

  __asm { BRAA            X13, X17 }
}

uint64_t sub_100223760@<X0>(int a1@<W8>)
{
  v5 = STACK[0xF18];
  STACK[0x9470] = *(STACK[0xF18] + 8 * a1);
  STACK[0x4ED8] = v1;
  v6 = STACK[0x7690];
  STACK[0x48F0] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = v6 + 32;
  STACK[0x6300] = v3;
  STACK[0x8C18] = 0;
  STACK[0x2AF8] = 0;
  STACK[0x4718] = 0;
  LODWORD(STACK[0x318C]) = 0;
  STACK[0x2A48] = 0;
  STACK[0x8AB8] = 0;
  v7 = (*(v5 + 8 * (v2 ^ 0x520D)))();
  LODWORD(STACK[0xED0]) = v4;
  if (v3)
  {
    v8 = v4 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  return (*(v5 + 8 * (((((v2 + 75) ^ v9) & 1) * ((v2 - 147253723) & 0x8C6F56E ^ 0xA451)) ^ v2)))(v7);
}

uint64_t sub_100223880@<X0>(char a1@<W0>, int a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, char a9@<W8>)
{
  v21 = (v19 + v13);
  v22 = *(v19 + v13 + 1);
  v23 = v22 & 0xEC ^ 0x39;
  v24 = v20 & 0x66 ^ 0x76;
  v25 = v22 ^ v20 ^ (2 * (v23 ^ v24 ^ (v20 ^ 0x38) & (2 * ((v20 ^ 0x38) & (2 * ((v20 ^ 0x38) & (2 * ((v20 ^ 0x38) & (2 * ((v20 ^ 0x38) & (2 * v24) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ (v22 ^ v11) & (2 * ((v22 ^ v11) & (2 * ((v22 ^ v11) & (2 * ((v22 ^ v11) & (2 * (((2 * (v23 ^ v22 & a4)) ^ 0x24) & (v22 ^ v11) ^ v23)) ^ v23)) ^ v23)) ^ v23))));
  v26 = v20 & v12 ^ v15;
  v27 = (((v25 ^ 0x44) + 77) ^ ((v25 ^ 0xC8) - 63) ^ ((v25 ^ 6) + 15)) - 61;
  v28 = v27 & v17 ^ 0xFC;
  v29 = v20 ^ (2 * ((v20 ^ 0x38) & (2 * ((v20 ^ 0x38) & (2 * ((v20 ^ 0x38) & (2 * ((v20 ^ 0x38) & (2 * ((v20 ^ 0x38) & (2 * v26) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26));
  v30 = (v27 ^ 0x38) & (2 * ((v27 ^ 0x38) & (2 * ((v27 ^ 0x38) & (2 * ((v27 ^ 0x38) & (2 * ((v27 ^ 0x38) & (2 * v28) ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28;
  v31 = a1 & 0x62 ^ v14;
  v32 = ((v29 ^ v12) << 16) | ((v27 ^ (2 * v30) ^ v17) << 8);
  v33 = *(v19 + v13 + 3);
  v34 = v33 & 2 | 0xE4;
  v35 = (((a1 ^ (2 * ((a1 ^ 0x38) & (2 * ((a1 ^ 0x38) & (2 * ((a1 ^ 0x38) & (2 * ((a1 ^ 0x38) & (2 * ((a1 ^ 0x38) & (2 * v31) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31))) ^ 0xCE3574C9078FB7) & ~v32 | v32 & 0xF87000) << 8;
  v36 = (v35 ^ 0xC28210785022FFLL) & ((v33 ^ (2 * ((v33 ^ 0x38) & (2 * ((v33 ^ 0x38) & (2 * ((v33 ^ 0x38) & (2 * ((v33 ^ 0x38) & (2 * ((v33 ^ 0x38) & (2 * v34) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34))) ^ 0xCD6B69979D0B2D9) | v35 & 0xC2214040862F4D00;
  v37 = ((3 * v13 + 5) * a2) >> 8;
  v38 = v36 ^ ((v36 ^ 0xCEF7F6D97FDFF7DBLL) >> 1) ^ ((v36 ^ 0xCEF7F6D97FDFF7DBLL) >> ((v13 * v13 * v13 % 7u) + 1)) & ((v36 ^ 0xCEF7F6D97FDFF7DBLL) >> (3 * v13 + 5 - 7 * ((v37 + (((3 * v13 + 5 - v37) & 0xFE) >> 1)) >> 2) + 1));
  *v21 = (((v38 ^ a9) - 13) ^ ((v38 ^ 0xF3) - 70) ^ ((v38 ^ a3) - 37)) - 76;
  v21[2] = (((BYTE2(v38) ^ 0x20) + 46) ^ ((BYTE2(v38) ^ a7) - 102) ^ ((BYTE2(v38) ^ a8) + 103)) + 115;
  v21[1] = (((BYTE1(v38) ^ a5) + 20) ^ ((BYTE1(v38) ^ 0x10) - 49) ^ ((BYTE1(v38) ^ a6) - 11)) + 28;
  v21[3] = (((BYTE3(v38) ^ 0x18) - 10) ^ ((BYTE3(v38) ^ 0x70) - 98) ^ ((BYTE3(v38) ^ v16) - 5)) - 77;
  return (*(v9 + 8 * (((v13 == 50) * v18) ^ v10)))();
}

uint64_t sub_100223DCC()
{
  *(v3 + (v2 - 51994571)) ^= *(v0 + (v2 - 51994571) + 4) ^ 0xBF;
  v5 = v2 - 1270494771;
  v6 = *v0 + 2106179351;
  v7 = (v5 < 0xB75F2997) ^ (v6 < 0xB75F2997);
  v8 = v5 < v6;
  if (v7)
  {
    v8 = v6 < 0xB75F2997;
  }

  return (*(v4 + 8 * ((26 * v8) ^ v1)))();
}

uint64_t sub_100223ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61)
{
  LODWORD(STACK[0x384]) = v61;
  *(a32 + 1560) = *a61;
  *(a32 + 1552) = *STACK[0x338];
  v65 = STACK[0x270];
  *(*STACK[0x270] + 488) = *(v63 + 8);
  *(*v65 + 480) = *v63;
  LODWORD(STACK[0x24C]) = 1360878371;
  return (*(v64 + 8 * v62))();
}

uint64_t sub_100224008()
{
  v1 = STACK[0xF10] - 29626;
  LODWORD(STACK[0x4450]) = v0;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100224064(uint64_t a1)
{
  v4 = (STACK[0xF10] - 39478588) & 0x259DEDA;
  v5 = STACK[0xF10] - 7589;
  LODWORD(STACK[0x825C]) = v1;
  LODWORD(STACK[0x3FA8]) = STACK[0xEB0];
  LODWORD(STACK[0x659C]) = STACK[0xEC0];
  LODWORD(STACK[0x1370]) = STACK[0xED0];
  LODWORD(STACK[0x5D04]) = v2;
  LODWORD(STACK[0x8A44]) = v3;
  return (*(STACK[0xF18] + 8 * (((a1 != 0) * (v4 - 1234)) | v5)))();
}

uint64_t sub_10022421C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, unsigned int a21, char a22)
{
  a19 = v24;
  a21 = v23 - 353670337 * ((-2 - ((~&a19 | 0xAF79A415) + (&a19 | 0x50865BEA))) ^ 0x1B585C28) + 17714;
  a22 = (((((v23 + 79) & 0xFE) + 37) ^ (3 * v25)) + 64) ^ (-63 * ((-2 - ((~&a19 | 0x15) + (&a19 | 0xEA))) ^ 0x28));
  v26 = (*(v22 + 8 * (v23 + 32081)))(&a19);
  return (*(v22 + 8 * ((7444 * (a20 == -371865839)) ^ v23)))(v26);
}

uint64_t sub_1002242E4(uint64_t a1, int8x16_t a2, int8x8_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v14.val[0].i64[0] = (v10 + a5 - 1) & 0xF;
  v14.val[0].i64[1] = (v10 + a5 + 14) & 0xF;
  v14.val[1].i64[0] = (v10 + a5 + 13) & 0xF;
  v14.val[1].i64[1] = (v10 + a5 + 12) & 0xF;
  v14.val[2].i64[0] = (v10 + a5 + a7) & 0xF;
  v14.val[2].i64[1] = (v10 + a5 + 10) & 0xF;
  v14.val[3].i64[0] = (v10 + a5 + 9) & 0xF;
  v14.val[3].i64[1] = (v10 + a5) & 0xF ^ 8;
  *(a6 + a5) = veor_s8(veor_s8(veor_s8(*(v9 + v14.val[0].i64[0] - 7), *(a6 + a5)), veor_s8(*(v14.val[0].i64[0] + v7 - 4), *(v14.val[0].i64[0] + v8 - 6))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v14, a2), a3)));
  return (*(v12 + 8 * (v11 ^ (8 * (a1 != a5)))))();
}

uint64_t sub_100224408@<X0>(unint64_t a1@<X0>, int a2@<W8>)
{
  STACK[0x4E0] = a1;
  LODWORD(STACK[0x4EC]) = v3;
  STACK[0x4F0] = v2;
  if (a1)
  {
    v5 = v2 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  return (*(v4 + 8 * ((v6 * (((a2 - 30393) | 0x1062) - 21077)) ^ a2)))();
}

uint64_t sub_100224458()
{
  *(v1 + 32) = 0;
  v4 = (*(v3 + 8 * (v2 + 36632)))(v0);
  *(v1 + 40) = v4;
  return (*(v3 + 8 * (((((19 * (v2 ^ 0x89)) ^ (v4 == 0)) & 1) * (v2 - 15204)) | v2)))();
}

uint64_t sub_10022455C()
{
  *v1 = v0;
  *v3 = (*(v2 + 8 * (v4 + 41978)))();
  return (*(v2 + 8 * v4))();
}

void sub_1002245D0(uint64_t a1)
{
  v1 = 17902189 * (((a1 ^ 0x47DE5A1C | 0xC044C54A) - (a1 ^ 0x47DE5A1C | 0x3FBB3AB5) + 1069234869) ^ 0x9D58946);
  v2 = *a1 - v1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 24) - v1;
  v5 = (8 * (((v4 ^ 0x3EC83BAD) + 32388341) ^ v4 ^ ((v4 ^ 0xB592C68) + 343876402) ^ ((v4 ^ 0xAB71894) + 361830350) ^ ((v4 ^ 0xFFFFFFF7) + 14282927))) ^ 0x6CF8530;
  v6 = (v4 ^ 0xDEB6CE1A) & (2 * (v4 & 0x9F260F5A)) ^ v4 & 0x9F260F5A;
  v7 = ((2 * (v4 ^ 0xECBAD00A)) ^ 0xE739BEA0) & (v4 ^ 0xECBAD00A) ^ (2 * (v4 ^ 0xECBAD00A)) & 0x739CDF50;
  v8 = v7 ^ 0x10844150;
  v9 = (v7 ^ 0x61181E00) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0xCE737D40) & v8 ^ (4 * v8) & 0x739CDF50;
  v11 = v10 ^ 0x318C8210;
  v12 = (v10 ^ 0x42105D40) & (16 * v9) ^ v9;
  v13 = 16 * (v10 ^ 0x318C8210);
  v14 = (v13 ^ 0x39CDF500) & v11;
  v15 = *(v3 + 16);
  v16 = v14 ^ v13 & 0x739CDF40;
  v17 = v12 ^ 0x739CDF50 ^ (v16 ^ 0x318CD500) & (v12 << 8);
  v18 = *(v3 + 20) + __CFADD__(v5, v15) + (((v4 ^ (2 * ((v17 << 16) ^ v17 ^ ((v17 << 16) ^ 0xDFFFFFFF) & (((v16 ^ 0x42100A50) & 0x1CDF0000 | (v16 ^ 0xBDEFF5AF) & ((v16 ^ 0x42100A50) << 8)) ^ 0x60000000)))) >> 29) ^ 6);
  *(v3 + 16) = v5 + v15;
  *(v3 + 20) = v18;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10022495C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15, int a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  v24 = 634647737 * ((-2 - ((~&a13 | 0xF1A185E6292A0FE7) + (&a13 | 0xE5E7A19D6D5F018))) ^ 0x2B7A2A0944BC201BLL);
  a16 = v20 + 2007131194 + v24;
  a19 = v20 - v24 + v22;
  a20 = ((v20 + 2007131194) & 0x7FE27DF1) - v24;
  a17 = v24 ^ 0x5BB7;
  a18 = v21 - v24;
  a13 = -634647737 * ((-2 - ((~&a13 | 0x292A0FE7) + (&a13 | 0xE5E7A19D6D5F018))) ^ 0x44BC201B);
  a14 = v20 + 2007131194 - v24 + 4763;
  v25 = (*(a1 + 8 * (v20 + 51947)))(&a13);
  return (*(v23 + 8 * a15))(v25);
}

uint64_t sub_100224A50()
{
  v6 = ((((((v2 + 1579831095) | 0xA1270107) - 1597718395) ^ v3) + 1981032492) ^ ((v3 ^ 0xCD21893B) + 853440197) ^ (((v2 - 246158107) & 0x24D67FFD ^ v3 ^ 0xAD1FAA0A) + 1390437890)) - 1949162119;
  v7 = ((v4 - 1577296264) < 0xA1FC5E68) ^ (v6 < 0xA1FC5E68);
  v8 = v4 - 1577296264 > v6;
  if (v7)
  {
    v8 = (v4 - 1577296264) < 0xA1FC5E68;
  }

  if (v8)
  {
    v9 = v0;
  }

  else
  {
    v9 = v1;
  }

  return (*(v5 + 8 * (v2 ^ 0xE9D5D95E ^ (196 * (((v9 - v2) | (v2 - v9)) >= 0)))))();
}

uint64_t sub_100224B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29)
{
  *(v32 - 128) = &a29;
  *(v32 - 136) = v31 + 17902189 * ((~v29 & 0x6C2B193B | v29 & 0x93D4E6C0) ^ 0xE2640F2B) + 22660;
  *(v32 - 144) = &a26;
  v33 = (*(v30 + 8 * (v31 + 35147)))(v32 - 144);
  return (*(v30 + 8 * (v31 | (16 * a12) | (32 * a12))))(v33);
}

uint64_t sub_100224C2C()
{
  v4 = (v1 ^ 0xB0DFFA4B) & (2 * (v1 & 0x3ADFFC88)) ^ v1 & 0x3ADFFC88;
  v5 = (((v1 ^ 0x9065B1AF904A534BLL) << (v0 - 96)) ^ 0x552B5F86) & (v1 ^ 0x904A534B) ^ ((v1 ^ 0x9065B1AF904A534BLL) << (v0 - 96)) & 0xAA95AFC2;
  v6 = v5 ^ 0xAA94A041;
  v7 = (v5 ^ 0x10600) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0xAA56BF0C) & v6 ^ (4 * v6) & 0xAA95AFC0;
  v9 = (v8 ^ 0xAA14AF00) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x8100C3)) ^ 0xA95AFC30) & (v8 ^ 0x8100C3) ^ (16 * (v8 ^ 0x8100C3)) & 0xAA95AFC0;
  v11 = v1 ^ (2 * ((((v10 ^ 0x28503C3) << 8) & 0x2A950000 ^ 0x850000 ^ (((v10 ^ 0x28503C3) << 8) ^ 0x95AF0000) & (v10 ^ 0x28503C3)) & (((v10 ^ 0xA810AC00) & (v9 << 8) ^ v9) << 16) ^ (v10 ^ 0xA810AC00) & (v9 << 8) ^ v9));
  v12 = ((v11 ^ 0x35F34778) - 232330266) ^ ((v11 ^ 0xFEA175F9) + 963959141) ^ ((v11 ^ 0xF18DCE09) + 911762069);
  v14 = v1 == 0x3CE25E0EC520035FLL || v12 + *(v3 - 185) % (-49655810 - v12) == -49655810;
  return (*(v2 + 8 * ((2 * v14) | (8 * v14) | (v0 - 18545))))();
}

uint64_t sub_100224EF4@<X0>(int a1@<W2>, int a2@<W8>)
{
  v2 = *(STACK[0xF18] + 8 * ((((a2 - 1808605008) > 0x920AE43A) * (((a2 + 684) | 0x8130) ^ 0x57AD)) ^ (a2 + 18649)));
  LODWORD(STACK[0xEB0]) = a1;
  return v2();
}

void sub_100224FDC(uint64_t a1)
{
  v1 = *(a1 + 16) ^ (634647737 * ((((2 * a1) | 0x70F8EE5A) - a1 - 947681069) ^ 0x55EA58D1));
  v2 = (*(a1 + 32) | 0x8E33791752EAF09BLL) - (((v1 ^ 0x640DC807u) - 33775) ^ *(a1 + 32) | 0x71CC86E8AD150F64) + ((2 * (((v1 ^ 0x640DC807u) - 33775) ^ *(a1 + 32))) & 0xE3990DD15A2A1EC8);
  v4 = (v2 & 0x2494454911489292) + (&v3 & 0x2494454911489290) + 2 * (v2 & &v3 & 0x49212A12A4252448) + (v2 & 0x49212A12A4252449 ^ &v3 & 0x49212A12A4252448) + 2 * (v2 & &v3 & 0x924A90A44A924920) + (((&v3 & 0x924A90A44A924920) - (v2 & 0x924A90A44A924924) + 0x2495214895249248) & 0x924A90A44A924924);
  v3 = (v4 | 0x4EE91E41) - (~v4 & 0x4EE91E41) + 1323900481;
  __asm { BRAA            X7, X17 }
}

uint64_t sub_100225288()
{
  if (LODWORD(STACK[0x2D8]) + v1 > v3)
  {
    v2 = 371891407;
  }

  return (*(v4 + 8 * ((58 * (v2 == ((v0 - 1744288162) & 0x67F7FDF7 ^ 0xE9D53FA9) + 68 * (v0 ^ 0x7724))) ^ v0)))();
}

uint64_t sub_100225314(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18)
{
  *(v21 - 125) = (55 - *(a13 + (a2 ^ 0xECLL))) ^ 0x99;
  *(v21 - 126) = BYTE1(a2) ^ 0x1B ^ *(a14 + (BYTE1(a2) ^ 0x13));
  *(v21 - 115) = *(a15 + (BYTE2(v19) ^ 0x34)) ^ 0x10;
  *(v21 - 119) = *(a15 + (((v18 ^ 0x2A9ACACC) >> 16) ^ 0xFELL)) ^ 0xD3;
  *(v21 - 124) = HIBYTE(a5) ^ 0x46 ^ *(a12 + (HIBYTE(a5) ^ 0xAFLL));
  *(v21 - 122) = BYTE1(a5) ^ 0x37 ^ *(a14 + (BYTE1(a5) ^ 0x3DLL));
  *(v21 - 121) = (55 - *(a13 + (a5 ^ 0x24))) ^ 0xAA;
  *(v21 - 120) = (v18 >> (a18 - 120)) ^ 0x96 ^ *(a12 + (v18 >> (a18 - 120)));
  *(v21 - 114) = BYTE1(v19) ^ 0x21 ^ *(a14 + (BYTE1(v19) ^ 0x3CLL));
  *(v21 - 113) = (55 - *(a13 + (v19 ^ 0xD7))) ^ 0x15;
  v22 = *(a13 + (v18 ^ 0x40));
  *(v21 - 116) = HIBYTE(v19) ^ 0x17 ^ *(a12 + (HIBYTE(v19) ^ 0x3ELL));
  *(v21 - 117) = (55 - v22) ^ 0xA8;
  *(v21 - 128) = *(a12 + (HIBYTE(a2) ^ 0x45)) ^ HIBYTE(a2);
  *(v21 - 118) = BYTE1(v18) ^ *(a14 + (BYTE1(v18) ^ 0x85)) ^ 0xCF;
  v23 = *(a15 + (BYTE2(a5) ^ 0xCFLL));
  *(v21 - 127) = *(a15 + (BYTE2(a2) ^ 0x3ELL)) ^ 0xE6;
  *(v21 - 123) = v23 ^ 0x41;
  return (*(v20 + 8 * a18))();
}

uint64_t sub_1002255A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15, int a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  v24 = 634647737 * (((&a13 | 0x1B4FB483703C8E06) - (&a13 & 0x1B4FB483703C8E00)) ^ 0xC1941B6C1DAAA1FALL);
  a16 = v21 + 1440884344 + v24;
  a17 = v24 ^ 0x5BBB;
  a18 = v22 - v24;
  a19 = v21 - v24 - 1230179057;
  a20 = ((v21 + 1440884344) ^ 0x16) - v24;
  a13 = -634647737 * (((&a13 | 0x1B4FB483703C8E06) - (&a13 & 0x1B4FB483703C8E00)) ^ 0x1DAAA1FA);
  a14 = v21 + 1440884344 - v24 + 3807;
  v25 = (*(v20 + 8 * (v21 ^ 0xCAED)))(&a13);
  return (*(v23 + 8 * a15))(v25);
}

uint64_t sub_100225674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, _BYTE *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, char a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, char a56)
{
  v62 = 634647737 * (((v60 | 0x14E93946) - (v60 | 0xEB16C6B9) - 350828871) ^ 0x797F16BA);
  *(v61 - 160) = v62 + 1208970742;
  *(v61 - 156) = v62 + v58 - 1845136838;
  *(v61 - 144) = 858325362 - v62;
  *(v61 - 152) = 183963397 - v62;
  *(v61 - 128) = &STACK[0x2EC];
  *(v61 - 120) = a20;
  *(v61 - 136) = &STACK[0x2EC];
  (*(v57 + 8 * (v58 - 1845117536)))(v61 - 160);
  v63 = (((v60 | 0x4D69418A) - v60 + (v60 & 0xB296BE70)) ^ 0xC326579A) * v59;
  *(v61 - 144) = (v56 ^ 0x477684CC ^ ((v58 ^ 0x6DFB14C6) + 25483)) - v63 + 2 * v56 - 50620555;
  *(v61 - 152) = &a42;
  *(v61 - 160) = v58 - v63 - 1845156772;
  (*(v57 + 8 * (v58 - 1845117926)))(v61 - 160);
  *(v61 - 144) = (v58 + 2032775045) ^ (297845113 * ((v60 - 2 * (v60 & 0x6DA59090) - 307916651) ^ 0x9A968C0B));
  *(v61 - 160) = &a56;
  *(v61 - 152) = &a42;
  (*(v57 + 8 * (v58 ^ 0x6DFBC464)))(v61 - 160);
  *(v61 - 144) = &a44;
  *(v61 - 152) = v58 + 193924789 * ((((v61 - 160) | 0xFDD96A00) - ((v61 - 160) & 0xFDD96A00)) ^ 0x4B625866) - 1845157097;
  *(v61 - 160) = &a53;
  (*(v57 + 8 * (v58 - 1845118110)))(v61 - 160);
  *(v61 - 160) = &a40;
  *(v61 - 152) = &a53;
  *(v61 - 144) = (v58 + 2032775045) ^ (297845113 * ((((v61 - 160) ^ 0x80822280) & 0xBCF33AF0 | ((v61 - 160) ^ 0x400C050E) & 0x430CC50E) ^ 0xB7BD3B10));
  (*(v57 + 8 * (v58 ^ 0x6DFBC464)))(v61 - 160);
  *(v61 - 144) = v58 - 155453101 * ((2 * ((v61 - 160) & 0x1B744C30) - (v61 - 160) + 1686877133) ^ 0x82ADA802) - 1845118316;
  *(v61 - 160) = &a42;
  *(v61 - 152) = &a53;
  v64 = (*(v57 + 8 * (v58 ^ 0x6DFBC3A1)))(v61 - 160);
  v65 = a28[24] ^ a28[28];
  return (*(v57 + 8 * ((34409 * (((v65 - ((2 * v65) & 0xBF) + 95) ^ a28[29]) < 0x4F)) ^ (v58 - 1845162950))))(v64);
}

uint64_t sub_100225AF8()
{
  if (v1)
  {
    v4 = v3 == (((v0 - 4961) | 0x4010) ^ 0xE9D58049);
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(v2 + 8 * ((v5 * ((2 * v0) ^ 0x3539)) ^ v0)))();
}

uint64_t sub_100225B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, int a44)
{
  *(v47 - 248) = a1 ^ 0x24C50E4B;
  *(v47 - 200) = (a44 - 1833125654) ^ v45;
  *(v47 - 240) = v44 ^ 0x10325D9E;
  return (*(v46 + 8 * a44))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
}

uint64_t sub_100225C80@<X0>(uint64_t a1@<X8>, uint64_t a2, int a3, unsigned int a4)
{
  v8 = v4 ^ 0xC772;
  *(*(a1 + 8 * (v4 ^ 0xBC7A)) - 1543600782) = *(a1 + 8 * (v4 ^ 0xBC23)) - 792094699;
  *(*(a1 + 8 * (v4 ^ 0xB7C0)) - 1775388198) = *(a1 + 8 * (v4 ^ 0xBF01)) - 236607455;
  *(*(a1 + 8 * (v4 ^ 0xB6F9)) - 1894677783) = *(a1 + 8 * (v4 ^ 0xBBA0)) - 181792134;
  *(*(a1 + 8 * (v4 ^ 0xAED9)) - 1172812791) = *(a1 + 8 * (v4 ^ 0xBC10)) - 1042596726;
  *(*(a1 + 8 * ((v4 ^ 0xC772) - 27977)) - 558978775) = *(a1 + 8 * (v4 ^ 0xBEF9)) - 1250870551;
  *(*(a1 + 8 * (v4 ^ 0xB949)) - 1013891047) = *(a1 + 8 * ((v4 ^ 0xC772) - 28128)) - 292358182;
  *(*(a1 + 8 * (v8 - 30293)) - 1689000003) = *(a1 + 8 * (v8 - 28892)) - 1759269634;
  *(*(a1 + 8 * (v4 ^ 0xB4B1)) - 1761201423) = *(a1 + 8 * ((v4 ^ 0xC772) - 28393)) - 1132848503;
  a4 = (v4 ^ 0xC772) + 1022166737 * (((&a4 | 0x3A4E0218) - (&a4 | 0xC5B1FDE7) - 978190873) ^ 0x805EE38A) + 1219234893;
  v9 = (*(v7 + 8 * (v4 ^ 0x73D4)))(&a4);
  *(v5 + v6) = 1;
  return (*(v7 + 8 * v8))(v9);
}

uint64_t sub_100225ED8()
{
  v9 = v4 - 1;
  *(v7 + v9) ^= *(v1 + (v9 & 0xF)) ^ *((v9 & 0xF) + v0 + 3) ^ ((v9 & 0xF) * v5) ^ *(v2 + (v9 & 0xF));
  return (*(v8 + 8 * (((v9 == 0) * v6) ^ v3)))();
}

uint64_t sub_100226058()
{
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x1FD38018) - 1613529057) ^ 0x79F59BD0) + 296753103;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16271)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (v0 - 27943)))(v2);
}

uint64_t sub_100226280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unsigned int a33)
{
  v37 = *(&a21 + v33 + 72);
  v38 = ((2 * v33) & 0xF9267FE8) + (v33 ^ 0x7C933FF7);
  *(v35 + v38 - 2090024951) = (((v34 + 72) | 0x28) ^ HIBYTE(v37) ^ 0x77) - ((2 * (((v34 + 72) | 0x28) ^ HIBYTE(v37) ^ 0x77)) & 0xBF) + 95;
  *(v35 + v38 - 2090024950) = (BYTE2(v37) ^ 0x7C) - ((2 * (BYTE2(v37) ^ 0x7C)) & 0xBF) + 95;
  *(v35 + v38 - 2090024949) = (BYTE1(v37) ^ 0x86) - ((2 * (BYTE1(v37) ^ 0x86)) & 0xBF) + 95;
  *(v35 + v38 - 2090024948) = v37 ^ 0x23;
  return (*(v36 + 8 * ((44066 * (v33 + 4 < a33)) ^ v34)))();
}

uint64_t sub_100226424@<X0>(unint64_t a1@<X8>)
{
  v6 = 155453101 * ((&STACK[0x10000] + 3800) ^ 0xE6261BCF);
  STACK[0x10F00] = a1;
  STACK[0x10EF0] = v5;
  LODWORD(STACK[0x10ED8]) = ((((v1 ^ 0xEF36CF5B) + 281620645) ^ ((v1 ^ 0x3569B3E9) - 896119785) ^ ((v1 ^ 0x3B79B58E) - 997867721 + ((v4 + 1767553501) | 0x319))) - 376746929) ^ v6;
  STACK[0x10EE0] = v2;
  LODWORD(STACK[0x10EEC]) = (v3 - ((2 * v3) & 0xADE12D36) + 1458607771) ^ v6;
  LODWORD(STACK[0x10EE8]) = v4 - v6 + 1767532248;
  LODWORD(STACK[0x10EF8]) = v6 ^ 0xB84B89A0;
  v7 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v4 + 1767570902)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * ((63432 * (v4 < 0x32C0C0DA)) ^ (v4 + 1767539796))))(-35645, 0);
}

uint64_t sub_1002266D8@<X0>(int a1@<W8>)
{
  v2 = ((a1 + 454084232) & 0xE4EEFFC7) + 835530967 + (((*(v1 + 116) ^ 0xE3867F54) + 477724844) ^ ((*(v1 + 116) ^ 0x93A0B809) + 1818183671) ^ ((*(v1 + 116) ^ 0x99F3004C) + 1712127924));
  *(v1 + 116) = v2 ^ ((v2 ^ 0x1B7DAF9F) - 1552575321) ^ ((v2 ^ 0xA8E23AE) - 1299834728) ^ ((v2 ^ 0x28F81708) - 1863308238) ^ ((v2 ^ 0x7EFC5FFF) - 957061945) ^ 0xAE2203D7;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1002267E4@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v14 = v10 - 1;
  *(v11 + v14) = *(v12 + v14) ^ *(v5 + (v14 & 0xF)) ^ *((v14 & 0xF) + a4 + 5) ^ ((v14 & 0xF) * v8) ^ *((v14 & 0xF) + v4 + 3) ^ v9;
  return (*(v13 + 8 * (((v14 != (a2 ^ v6) + a1) * a3) ^ v7)))();
}

uint64_t sub_100226DA8@<X0>(uint64_t a1@<X8>)
{
  v2 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 + 16884)))(a1);
  *(STACK[0x56C8] + 24) = 0;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_10022703C(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a6 >= v7)
  {
    a6 = v7;
  }

  v10 = v6 + a6;
  v12 = a4 < v6 + v8 && v10 < a4 + 8;
  return (*(v9 + 8 * (((((a2 ^ 0x4477 ^ v12) & 1) == 0) * ((a2 - 6802) ^ 0x24D2)) ^ a2)))();
}

uint64_t sub_100227164(int a1)
{
  v7 = v5 + v4;
  v8 = (~(a1 - 123) + v4) & 0xF;
  v9 = v8 + 1;
  v10 = v8 + 1 - v4;
  v11 = v1 + v10;
  v12 = v1 + v8 + 1;
  v13 = v8 + v2 + 3;
  v14 = v3 + v10;
  v15 = v3 + v9;
  v17 = v13 > v5 && v13 - v4 < v7;
  if (v12 > v5 && v11 < v7)
  {
    v17 = 1;
  }

  if (v15 > v5 && v14 < v7)
  {
    v17 = 1;
  }

  return (*(v6 + 8 * ((116 * (((a1 + 102) ^ v17) & 1)) ^ a1)))();
}

void sub_1002271F4(int a1@<W8>)
{
  if (a1 == 768815700)
  {
    v1 = -371865839;
  }

  else
  {
    v1 = 371891401;
  }

  *(v2 + 24) = v1;
}

uint64_t sub_100227258(void *a1)
{
  *a1 = v2;
  v5 = STACK[0x308];
  a1[1] = *(STACK[0x308] + 80);
  *(v5 + 80) = v3;
  *(a1[1] + 24) = v3;
  *(a1 - 2) = ((v1 - 220163103) & 0xD1F8DD9) - *(a1 - 2) + 0x79C4BC1D8A3F8657;
  return (*(v4 + 8 * (v1 - 17485)))();
}

uint64_t sub_100227324@<X0>(uint64_t a1@<X2>, unsigned int a2@<W4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, unsigned int a8, int a9, unsigned int a10, uint64_t a11, uint64_t a12)
{
  v23 = (*(a12 + (v21 ^ 0x500B0828u) % a8) ^ 0x5F) << v20;
  v24 = v21 ^ __ROR4__(v22, 15) ^ (v23 - ((v23 << ((a1 + 95) & 0xFB ^ 0xD2)) & 0x599C27B8) - 1395780644);
  v25 = ((v24 ^ 0x746D8D06) - (v24 ^ 0x746D8D06u) / 0xFFF1 * v12) * v17;
  v26 = v25 - ((((2147450881 * v25) >> 32) >> 15) | (((2147450881 * v25) >> 32) >> 15 << 16)) + 1301 * (-3 * v18 - 4 * v20 - v15) + 441172641;
  v27 = v26 - ((((v26 * v16) >> 32) >> 16) | (((v26 * v16) >> 32) >> 16 << 16));
  v28 = ((((v24 ^ 0x746D8D06u) * v16) >> 32) >> 16) + 1301 * (v19 + 13 * v20 + 95);
  v29 = (4099 * v28 + 131483623 - (((((4099 * v28 + 131483623) * v16) >> 32) >> 16) | ((((4099 * v28 + 131483623) * v16) >> 32) >> 16 << 16))) * v12;
  v30 = 7 * v20;
  if (v14 >= 8)
  {
    v30 -= 67;
  }

  v31 = 4099 * ((v24 ^ 0x746D8D06u) % 0xF1FD + 1301 * (v30 + 4 * v18)) + 131483623;
  v32 = v27 ^ v24 ^ v29 ^ __ROR4__(v31 - ((((v31 * v16) >> 32) >> 16) | (((v31 * v16) >> 32) >> 16 << 16)), v18 + 1);
  if (a2 >= 0xC)
  {
    v33 = -12;
  }

  else
  {
    v33 = 7;
  }

  v34 = (a2 + 2 + v33) ^ (((a2 + 2 + v33) ^ 0xC5) - 58) ^ (((a2 + 2 + v33) ^ 0x2D) + 46) ^ (((a2 + 2 + v33) ^ 0xE8) - 23) ^ ~(a2 + 2 + v33) ^ 0xB4;
  v35 = (v32 ^ 0x746D8D06) >> (v34 & 0x9C ^ 8) >> (v34 & 0x63 ^ 0x43);
  v36 = 0x1F5F3800FAF9C1 * (((v32 ^ 0x1A358ED12BB82912) - 0x1A358ED18883AF6FLL) ^ ((v32 ^ 0xD396A31C10CE212FLL) + 0x2C695CE34C0A58AELL) ^ ((v32 ^ 0xC9A32DCD4F1B853BLL) + 0x365CD23213DFFCBALL)) - 0x45E447CB340049A2;
  v37 = (v36 ^ 0xA331EBAE7237165DLL) & (2 * (v36 & 0xB3B18BCF7327945DLL)) ^ v36 & 0xB3B18BCF7327945DLL;
  v38 = ((2 * (v36 ^ 0xC372EE2832771E65)) ^ 0xE186CBCE82A11470) & (v36 ^ 0xC372EE2832771E65) ^ (2 * (v36 ^ 0xC372EE2832771E65)) & 0x70C365E741508A38;
  v39 = v38 ^ 0x1041242141508A08;
  v40 = (v38 ^ 0x4082414600000030) & (4 * v37) ^ v37;
  v41 = ((4 * v39) ^ 0xC30D979D054228E0) & v39 ^ (4 * v39) & 0x70C365E741508A38;
  v42 = (v41 ^ 0x4001058501400820) & (16 * v40) ^ v40;
  v43 = ((16 * (v41 ^ 0x30C2606240108218)) ^ 0xC365E741508A380) & (v41 ^ 0x30C2606240108218) ^ (16 * (v41 ^ 0x30C2606240108218)) & 0x70C365E741508A00;
  v44 = (v43 ^ 0x2446401008200) & (v42 << 8) ^ v42;
  v45 = (((v43 ^ 0x70C1218340500838) << 8) ^ 0xC365E741508A3800) & (v43 ^ 0x70C1218340500838) ^ ((v43 ^ 0x70C1218340500838) << 8) & 0x70C365E741508800;
  v46 = v44 ^ 0x70C365E741508A38 ^ (v45 ^ 0x4041654140000000) & (v44 << 16);
  v47 = v36 ^ (2 * ((v46 << 32) & 0x70C365E700000000 ^ v46 ^ ((v46 << 32) ^ 0x41508A3800000000) & (((v45 ^ 0x308200A601508238) << 16) & 0x70C365E700000000 ^ 0x100024A700000000 ^ (((v45 ^ 0x308200A601508238) << 16) ^ 0x65E7415000000000) & (v45 ^ 0x308200A601508238))));
  v48 = ((v47 ^ 0x137EE6D265D51402) - 0x2E58695A2E2B971ELL) ^ ((v47 ^ 0x6114C36BC221206CLL) - 0x5C324CE389DFA370);
  LODWORD(v47) = (a4 - 1970883584 + __CFADD__(2089 * (v48 ^ ((v47 ^ 0xA0DD65F85672B443) + 0x6204158FE273C8A1)), 0xECD895229D520AD9) + (((v48 ^ ((v47 ^ 0xA0DD65F85672B443) + 0x6204158FE273C8A1)) * 0x829uLL) >> 64) + 2089 * ((__CFADD__(v47 ^ 0x137EE6D265D51402, 0xD1A796A5D1D468E2) - 1) ^ (__CFADD__(v47 ^ 0x6114C36BC221206CLL, 0xA3CDB31C76205C90) - 1) ^ (__CFADD__(v47 ^ 0xA0DD65F85672B443, 0x6204158FE273C8A1) - 1)) + 1571355697) % a10;
  v49 = (a3 - 1626871694) % a8;
  v50 = *(a12 + v49);
  v51 = v50 ^ v35 ^ 0x5F;
  *(a12 + v49) = *(v13 + v47) ^ v51;
  return (*(a5 + 8 * a1))(v51, a8, a1, v49, v50, a3, a4, (a1 - 1090507937) & 0x40FFBFFB);
}

uint64_t sub_1002279AC@<X0>(unsigned int a1@<W8>)
{
  *(v2 + 4) = (v5 ^ 0x7860) + a1;
  *(v1 + 8 * a1) = v3;
  return (*(v4 + 8 * v5))();
}

uint64_t sub_100227AB8()
{
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762636123) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0x9D275D8A) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x62D8A270)) ^ 0xAC2690AE));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xE253)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (((*STACK[0x970] > (v0 ^ 0x28EA)) * (v0 + 10147)) ^ v0)))(v2);
}

uint64_t sub_100227B74@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X7>, int a4@<W8>)
{
  STACK[0x230] = a2;
  STACK[0x278] = a1;
  v5 = *(a3 + 8 * ((50652 * ((((v4 ^ 0xA7721A62) + 1485694366) ^ (a4 - 4480 + (v4 ^ 0xAB29B347) + 1423309597) ^ (((a4 - 103066400) & 0x624DBBF) + (v4 ^ 0xE58E6E34) + 443612688)) - 371865839 < 0xFFFFFFF6)) ^ a4));
  LODWORD(STACK[0x290]) = 371891400;
  return v5();
}

uint64_t sub_100227C2C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = *(a1 + 8);
  v7 = *(v5 + 8 * (v3 - 10161));
  v8 = *(v7 - 527405895);
  v9 = (v2 + a2) ^ a2;
  v10 = *(v5 + 8 * (v3 - 6590)) + 4 * v8;
  if (v2)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v10 - 1940437438);
  }

  *(v10 - 1940437438) *= v11 + (*(v10 - 1940437438) + ((68 * (v3 ^ 0x2AB3)) ^ 0x1A4D)) * v9;
  *(v7 - 527405895) = (((v3 + 2078266591) & 0x96F77D5F) - 316112142 + v8) % 6;
  return (*(v4 + 8 * ((452 * (v6 == 0)) ^ v3)))();
}

uint64_t sub_100227D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, char a44)
{
  *(v48 - 160) = &a42;
  *(v48 - 144) = &a44;
  *(v48 - 152) = v47 + 193924789 * (((v45 | 0x40C91277) - (v45 & 0x40C91270)) ^ 0xF6722011) + 8940;
  (*(v44 + 8 * (v47 ^ 0xC549)))(v48 - 160);
  v49 = 353670337 * ((2 * (v45 & 0x5F9D10) - v45 - 6266129) ^ 0x4B819AD2);
  *(v48 - 136) = v46;
  *(v48 - 144) = v49 + 2063984254;
  *(v48 - 152) = &a42;
  *(v48 - 160) = v49 + v47 + 13045;
  v50 = (*(v44 + 8 * (v47 ^ 0xC4D0)))(v48 - 160);
  return (*(v44 + 8 * (v47 - 1845154101 + v47 + 1845166037)))(v50);
}

uint64_t sub_100227EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, unsigned int a11, char a12, int a13)
{
  v16 = *(v15 + 6);
  a11 = (v13 + 22704) ^ (634647737 * (((&a11 | 0x798AB671) - &a11 + (&a11 & 0x8675498C)) ^ 0x141C998D));
  a12 = -71 * (((&a11 | 0x71) - &a11 + (&a11 & 0x8C)) ^ 0x8D) + (v16 ^ 0x3F) + 2 * (v16 & 0x3F) - 8;
  v17 = (*(v14 + 8 * (v13 ^ 0x8B98)))(&a11);
  return (*(v14 + 8 * ((33012 * (a13 == ((v13 - 354765127) & 0x152595FF ^ 0xE9D553A6))) ^ v13)))(v17);
}

uint64_t sub_100228010()
{
  v4 = v1 - 7961440 + ((v2 + 725208845) & 0xD4C67EF8);
  v5 = v3 - 7935144;
  v6 = v5 < -1104332216;
  v7 = v4 < v5;
  if (v6 != v4 < (((v2 + 18254) | 0x4D0) ^ 0xBE2D5E98))
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  return (*(v0 + 8 * (((2 * v8) | (8 * v8)) ^ v2)))();
}

uint64_t sub_100228320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, __n128 a6@<Q1>, int8x16_t a7@<Q4>, uint64_t a8@<D5>, int8x16_t a9@<Q6>)
{
  v17 = a4 & (a2 + 15);
  v19.i64[0] = vqtbl4q_s8(*(&a6 - 1), a7).u64[0];
  v19.i64[1] = a8;
  v20 = vrev64q_s8(vmulq_s8(v19, a9));
  *(v16 + a2) = veorq_s8(veorq_s8(veorq_s8(*(v13 + v17 - 15), *(v11 + a2)), veorq_s8(*(v12 + v17 - 15), *(v17 + v14 - 9))), vextq_s8(v20, v20, 8uLL));
  return (*(a5 + 8 * (((2 * (a3 == 0)) | ((a3 == 0) << 6)) ^ v15)))(a1, a2 - 16, a3 - 16);
}

void sub_10022B2F8(uint64_t a1)
{
  v1 = 155453101 * (a1 ^ 0xE6261BCF);
  v2 = *(a1 + 4) - v1;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10022B578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t *a22, uint64_t a23, unsigned int a24)
{
  a22 = &a9;
  a23 = v25;
  a24 = (v26 + 33807) ^ (193924789 * ((~v27 & 0x14C93855 | v27 & 0xEB36C7A8) ^ 0xA2720A33));
  (*(v24 + 8 * (v26 ^ 0xD65C)))(&a22);
  return (*(v24 + 8 * (((*(v25 + 4) + 1096397072 >= 0) * (2434 * (v26 ^ 0x1D54) + 16469)) ^ v26)))(139493411);
}

uint64_t sub_10022B6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v50 = v48 | 0x885C;
  v51 = (*(v49 + 8 * ((v48 | 0x885C) + 12700)))(5000);
  return (*(a48 + 8 * (((v51 == 0) * (v50 - 72885 + ((v50 - 37747) | 0x8022))) ^ v50)))();
}

uint64_t sub_10022B70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11, int a12)
{
  v16 = *(a6 + 4 * ((0x9ED10ECD % (v13 >> 2)) & 0x3FFFFFFC));
  v17 = *(a6 + 4 * (((v13 >> 2) - 1) & v16)) & a12 ^ 0xFFFF;
  v18 = *(v15 + 8 * a11);
  v19 = *(v18 - 527405895);
  v20 = *(v15 + 8 * a10) + 4 * v19;
  v21 = *(v20 - 1940437438);
  v23 = v17 & ~HIWORD(v16);
  v22 = v23 == 0;
  v24 = v23 + v23 * v21;
  v25 = v22;
  if (v22)
  {
    v26 = *(v20 - 1940437438);
  }

  else
  {
    v26 = 0;
  }

  *(v20 - 1940437438) = (v24 + v26) * v21;
  *(v18 - 527405895) = (v19 + 1) % 6u;
  return (*(v12 + 8 * ((59381 * v25) ^ (v14 + 44))))();
}

uint64_t sub_10022B814(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = (((v9 ^ 0x79F8BFD1) - 2046345169) ^ ((v9 ^ 0x2E8759EC) - 780622316) ^ ((v9 ^ 0xBEAA212C) + 1096146644)) - 371865829;
  v11 = (*(a8 + 8 * (v8 + 8583)))();
  v12 = STACK[0x2F0];
  STACK[0x210] = a1;
  *(a1 + 24) = v11;
  return (*(v12 + 8 * ((35 * (v11 == 0)) ^ v8)))();
}

uint64_t sub_10022B8D4(uint64_t a1, uint64_t a2)
{
  if (v3)
  {
    v4 = a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  return (*(STACK[0xF18] + 8 * ((v5 * (((v2 - 38063) | 0xA900) ^ 0xACDF)) ^ v2)))(a1, a2, 371891400);
}

uint64_t sub_10022B91C@<X0>(uint64_t a1@<X8>, int8x16_t a2@<Q4>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v35 = (a1 ^ 0xFFFFFFFFFFFFE066 ^ (v30 - 4589)) + v32;
  v36 = *(v31 + v35 - 15);
  v37 = *(v31 + v35 - 31);
  v38 = v33 + v35;
  *(v38 - 15) = veorq_s8(v36, a2);
  *(v38 - 31) = veorq_s8(v37, a2);
  return (*(v34 + 8 * ((19 * (a1 + 32 != a30)) ^ v30)))();
}

uint64_t sub_10022BCA0@<X0>(int a1@<W8>)
{
  v3 = STACK[0x368];
  STACK[0x3A0] = v1 + 0x168AE54C85A50C15;
  STACK[0x380] = v1 + v3 + (a1 ^ 0xA630u) - 870054964;
  return (*(v2 + 8 * a1))();
}

uint64_t sub_10022BDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, int a26, int a27, int a28, int a29, int a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, int a36, uint64_t a37, int a38, int a39, int a40, int a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  v46 = a27 - a26 + 8 * a26 + LODWORD(STACK[0x2F4]) + 13 * a41 - 1461415752 + 11 * a36 + 301973521 + (a40 ^ 0xCDD0) - 12499015 + ((6169 * (a40 ^ 0x885D)) ^ 0x74F8C9C4);
  v47 = ((LODWORD(STACK[0x2F8]) ^ 0xF2B7E5B0) + 584604883) ^ LODWORD(STACK[0x2F8]) ^ ((LODWORD(STACK[0x2F8]) ^ 0x99AA56C9) + 1237708716) ^ ((LODWORD(STACK[0x2F8]) ^ 0x3A721618) - 367153285) ^ ((LODWORD(STACK[0x2F8]) ^ 0x7EFFE3FC) - 1366271329) ^ v46 ^ ((v46 ^ 0x956238B4) + 518996812) ^ ((v46 ^ 0xD0F0CA2D) + 1534964179) ^ ((v46 ^ 0x4E3788E2) - 977603810) ^ ((v46 ^ 0x7FD7FE7B) - 195394171);
  v48 = LODWORD(STACK[0x3E4]) - LODWORD(STACK[0x300]) + *(&a45 + a37) - 797296844 + (((v47 ^ 0xD773A5B4) - 486784968) ^ ((v47 ^ 0xC2D0729C) - 144730336) ^ ((v47 ^ 0x4E4115B5) + 2077159479));
  v49 = *(&a45 + a34);
  v50 = ((v49 ^ 0x4445B409) - 1809183380) ^ v49 ^ ((v49 ^ 0x2E13C3FA) - 25396583) ^ ((v49 ^ 0x33B9CC95) - 472484360) ^ ((v49 ^ 0x767FFDFB) - 1508883302) ^ v48 ^ ((v48 ^ 0x1D0F4B57) - 1937305511) ^ ((v48 ^ 0x13BA3262) - 2110625426) ^ ((v48 ^ 0x9F37223A) + 247429430) ^ ((v48 ^ 0xFFF5FFFF) + 1853727985);
  v51 = 3 * a41 - 782847494 + 7 * (((a35 ^ 0xB2E4C6CE) - 1304931915) ^ ((a35 ^ 0x20E85426) + 540328797) ^ ((a35 ^ 0x920C92F5) - 1831860848)) + 926736447 + a36 + *(&a45 + a32) - *(&a45 + a31) + (((v50 ^ 0x47526D8D) - 1449152243) ^ ((v50 ^ 0x63389706) - 1913304184) ^ ((v50 ^ 0x658D18E6) - 1958689688));
  v52 = *(&STACK[0x2F0] + (((38 - v51) ^ (v51 - 89) ^ (((v51 - 89) ^ 0x62) + 81) ^ (((v51 - 89) ^ 0x99) - 84) ^ (((v51 - 89) ^ 0xC9) - 4)) ^ 0xCDu));
  v53 = (v52 ^ 0x5A) & (2 * (v52 & 0x63)) ^ v52 & 0x63;
  v54 = ((2 * (v52 ^ 0xDC)) ^ 0x7E) & (v52 ^ 0xDC) ^ (2 * (v52 ^ 0xDC)) & 0xBE;
  v55 = v53 ^ 0xBF ^ (v54 ^ 0x1C) & (4 * v53);
  v56 = (v52 ^ (2 * ((16 * v55) & 0x30 ^ v55 ^ ((16 * v55) ^ 0x70) & (((4 * v54) ^ 0xF0) & v54 ^ (4 * v54) & 0xB0))));
  v57 = 906386353 * ((((v45 - 144) | 0x21440081) + (~(v45 - 144) | 0xDEBBFF7E)) ^ 0x1045CDA4);
  *(v45 - 144) = &a45;
  *(v45 - 136) = &STACK[0x2F0];
  *(v45 - 120) = v57 ^ 0x24F40078;
  *(v45 - 116) = v57 + (((a35 ^ 0xD71353DA) - 674249567) ^ ((a35 ^ 0x1352AAAD) + 328089048) ^ ((a35 ^ 0xC441F96A) - 996315631)) + 1353502025;
  *(v45 - 112) = (a36 + 443650224) ^ v57;
  *(v45 - 108) = v57 + a41 + 1171993055;
  *(v45 - 128) = (a40 - 25688) ^ v57;
  *(v45 - 124) = v57 ^ a30 ^ 0x6E95D8F4;
  *(v45 - 104) = v57 + 413281896 + (((v56 ^ 0x49C26C41) + 187432513) ^ ((v56 ^ 0x879B3924) - 982340826) ^ ((v56 ^ 0xCE595518) - 1934571750));
  v58 = (*(a42 + 8 * (a40 ^ 0x43EC)))(v45 - 144);
  return (*(a42 + 8 * (a40 ^ (62 * (a39 == 2)))))(v58);
}

uint64_t sub_10022C700()
{
  *v0 = -1091572478;
  *(v0 + 8) = 43981;
  *(v0 + 16) = v3;
  *v2 = 0;
  *v5 = 0;
  *STACK[0xEB0] = 0;
  *v4 = 0;
  return (*(STACK[0xF18] + 8 * v1))(18301, 41186, 0x66FF6746BA89DAC8);
}

uint64_t sub_10022C7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x570] = *(*(a4 + 8) + 120 * v4 + 8);
  STACK[0x578] = *(*(a4 + 8) + 120 * v4 + 8);
  v7 = *(*(a4 + 8) + 120 * v4 + 40);
  LOBYTE(STACK[0x644]) = v7[15] ^ (((v5 + 28) | 0xDA) - 127);
  LOBYTE(STACK[0x643]) = v7[14] ^ 0x5F;
  LOBYTE(STACK[0x642]) = v7[13] ^ 0x5F;
  LOBYTE(STACK[0x641]) = v7[12] ^ 0x5F;
  LOBYTE(STACK[0x640]) = v7[11] ^ 0x5F;
  LOBYTE(STACK[0x63F]) = v7[10] ^ 0x5F;
  LOBYTE(STACK[0x63E]) = v7[9] ^ 0x5F;
  LOBYTE(STACK[0x63D]) = v7[8] ^ 0x5F;
  LOBYTE(STACK[0x63C]) = v7[7] ^ 0x5F;
  LOBYTE(STACK[0x63B]) = v7[6] ^ 0x5F;
  LOBYTE(STACK[0x63A]) = v7[5] ^ 0x5F;
  LOBYTE(STACK[0x639]) = v7[4] ^ 0x5F;
  LOBYTE(STACK[0x638]) = v7[3] ^ 0x5F;
  LOBYTE(STACK[0x637]) = v7[2] ^ 0x5F;
  LOBYTE(STACK[0x636]) = v7[1] ^ 0x5F;
  LOBYTE(STACK[0x635]) = *v7 ^ 0x5F;
  LODWORD(STACK[0x72C]) = 740984379;
  return (*(v6 + 8 * v5))();
}

uint64_t sub_10022C8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, char *a35, char *a36, uint64_t a37, char a38, uint64_t a39, char a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, char *a48, char *a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, char a62, uint64_t a63)
{
  v69 = v64;
  v70 = v68 - 160;
  v71 = 139493411 * ((v68 - 160 - 2 * ((v68 - 160) & 0x69A729C8) + 1772562888) ^ 0x658AC88D);
  *(v68 - 160) = &a62;
  *(v68 - 136) = *(v66 + 8 * ((v67 + 10465) ^ 0x5E83)) - 1116397810;
  *(v68 - 148) = v67 + 28495 - v71;
  *(v68 - 144) = v71 + 404414935;
  (*(v65 + 8 * (v67 + 41676)))(v68 - 160);
  v72 = 139493411 * ((v68 - 160) ^ 0xC2DE145);
  *(v68 - 160) = &a38;
  *(v68 - 136) = *(v66 + 8 * ((v67 + 10465) ^ 0x520C)) - 1953688807;
  *(v68 - 148) = v67 + 28495 - v72;
  *(v68 - 144) = v72 + 404414899;
  (*(v65 + 8 * (v67 + 41676)))(v68 - 160);
  a48 = &a51;
  a49 = &a33;
  *(v68 - 160) = &a62;
  *(v68 - 144) = &a48;
  *(v68 - 152) = v67 + 2237 + 193924789 * (((((v68 - 160) | 0xF45D0EBC) ^ 0xFFFFFFFE) - (~(v68 - 160) | 0xBA2F143)) ^ 0xBD19C325);
  (*(v65 + 8 * ((v67 + 10465) ^ 0x9B01)))(v68 - 160);
  a35 = &a46;
  a36 = &a64;
  *(v68 - 160) = &a38;
  *(v68 - 152) = v67 + 2237 + 193924789 * (((((v68 - 160) | 0xDE802DA4) ^ 0xFFFFFFFE) - (~(v68 - 160) | 0x217FD25B)) ^ 0x97C4E03D);
  *(v68 - 144) = &a35;
  (*(v65 + 8 * ((v67 + 10465) ^ 0x9B01)))(v68 - 160);
  v73 = 139493411 * ((2 * (v70 & 0x1F3B1C40) - v70 + 1623516092) ^ 0x6CE902F9);
  *(v68 - 136) = v68 - 240;
  *(v68 - 148) = v67 + 28495 - v73;
  *(v68 - 144) = v73 + 404414935;
  *(v68 - 160) = &a60;
  (*(v65 + 8 * (v67 + 41676)))(v68 - 160);
  v74 = 2 * (v68 - 160);
  v75 = 139493411 * (((v74 | 0x890A72D0) - (v68 - 160) - 1149581672) ^ 0x48A8D82D);
  *(v68 - 160) = &a56;
  *(v68 - 136) = v69 + 20;
  *(v68 - 148) = v67 + 28495 - v75;
  *(v68 - 144) = v75 + 404414897;
  v76 = (v67 + 10465) ^ 0x9A15;
  (*(v65 + 8 * v76))(v68 - 160);
  v77 = 139493411 * ((2 * (v70 & 0x6A316C68) - v70 + 365859731) ^ 0x19E372D6);
  *(v68 - 160) = &a40;
  *(v68 - 148) = v67 + 28495 - v77;
  *(v68 - 144) = v77 + 404414897;
  *(v68 - 136) = v69 + 22;
  (*(v65 + 8 * v76))(v68 - 160);
  *(v68 - 144) = &a40;
  *(v68 - 152) = v67 + 10465 + 193924789 * ((~(v68 - 160) & 0x1203E2E0 | (v68 - 160) & 0xEDFC1D18) ^ 0xA4B8D086) - 7800;
  *(v68 - 160) = &a42;
  (*(v65 + 8 * (v67 + 41652)))(v68 - 160);
  *(v68 - 160) = v67 + 10465 + 155453101 * (((v74 | 0x94612922) - (v68 - 160) + 902785903) ^ 0x2C168F5E) - 4221;
  *(v68 - 152) = &a42;
  v78 = (*(v65 + 8 * (v67 + 41707)))(v68 - 160);
  return (*(v65 + 8 * (((*(v68 - 144) != ((v67 - 4815213) & 0xA97BF77C) - 1694819468) * (v67 - 9776)) ^ (v67 + 10465))))(v78);
}

uint64_t sub_10022CD4C(char a1, int a2)
{
  v10 = (*(*(v9 + 8) + 4 * v3) ^ v7) + v6;
  *(*(v2 + 8) + 4 * v3) = v10 - ((v10 << a1) & a2) + v7;
  return (*(v8 + 8 * (((2 * (v4 == v3)) | (4 * (v4 == v3))) ^ v5)))();
}

uint64_t sub_10022CD9C(char a1, int a2, char a3, int a4, int a5, int a6, int a7, int a8)
{
  v15 = v9 < v12;
  v16 = *(v8 + 8);
  v17 = (*(v16 + 4 * v11) ^ a2) + a6;
  *(v16 + 4 * v11) = v17 - ((v17 << (((v10 - 125) | a1) + a3)) & a4) + a5;
  if (v15 == v11 + 1 > a8)
  {
    v15 = v11 + a7 < v9;
  }

  return (*(v14 + 8 * ((!v15 * v13) ^ v10)))();
}

uint64_t sub_10022CE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = (((v8 - 43631) | 0x910) ^ 0x5B20E2E9) + (((v11 ^ 0xE5B11720) + 441379040) ^ ((v11 ^ 0xF7CBDB0) - 259833264) ^ ((v11 ^ 0x3186D81) - 51932545));
  v16 = (((((v13 ^ 0x2A28291E) - 1533222176) ^ v13 ^ ((v13 ^ 0x81C6F307) + 259143879) ^ ((v13 ^ 0x55A13D8) - 1947281382) ^ ((v13 ^ 0xDFFFFDFF) + 1363883583)) & 0xFFFFFFFC ^ a5) == 0x989EF32D || v10 == v11) && v9 != a8;
  return (*(v12 + 8 * (v16 | v8)))();
}

uint64_t sub_10022D0F0()
{
  v2[63] = v0[15];
  v2[62] = v0[14];
  v2[61] = v0[13];
  v2[60] = v0[12];
  v2[59] = v0[11];
  v2[58] = v0[10];
  v2[57] = v0[9];
  v2[56] = v0[8];
  v2[55] = v0[7];
  v2[54] = v0[6];
  v2[53] = v0[5];
  v2[52] = v0[4];
  v2[51] = v0[3];
  v2[50] = v0[2];
  v2[49] = v0[1];
  v2[48] = *v0;
  return (*(v3 + 8 * v1))();
}

uint64_t sub_10022D1C8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v13 = a4 - 24979;
  if (v9 == ((a4 + 1138715652) | 0xB005A024) + 203049101)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
  }

  if (v9)
  {
    v15 = v10;
  }

  else
  {
    v15 = v8;
  }

  if (a7 <= 5)
  {
    v14 = v15;
  }

  return (*(v7 + 8 * v13))(a1, a2, v14 * a3);
}

uint64_t sub_10022D3C0@<X0>(int a1@<W8>)
{
  v3 = (((LODWORD(STACK[0x34C]) ^ 0x8A546C29) + 1974178775) ^ ((LODWORD(STACK[0x34C]) ^ 0x6C1212EE) - 1813123822) ^ (((a1 - 6748) ^ LODWORD(STACK[0x34C]) ^ 0xF93DF80) - 261339606)) + ((a1 - 1551545658) ^ 0xAC3BE3A3);
  v4 = ((v1 - 1087774147) < 0x25E861CA) ^ (v3 < 0x25E861CA);
  v5 = v1 - 1087774147 > v3;
  if (v4)
  {
    v5 = (v1 - 1087774147) < 0x25E861CA;
  }

  return (*(v2 + 8 * ((121 * v5) ^ a1)))();
}

uint64_t sub_10022D560(uint64_t a1, double a2, int8x16_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, int8x16_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int8x16_t a29, int64x2_t a30, int8x16_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int8x16_t a36, int8x16_t a37, int8x16_t a38, int8x16_t a39, int8x16_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, int a46)
{
  *(v47 - 256) = a8;
  *(v47 - 240) = a3;
  v172 = v50;
  v52 = veorq_s8(a3, a40);
  v53 = veorq_s8(v49, a40);
  v54 = veorq_s8(a8, a40);
  v55 = veorq_s8(v50, a40);
  v56 = veorq_s8(a5, a40);
  v57 = veorq_s8(a6, a40);
  v58 = veorq_s8(a7, a40);
  v59 = vandq_s8(veorq_s8(vandq_s8(vaddq_s64(a7, a7), a39), a38), a7);
  v60 = vandq_s8(veorq_s8(vandq_s8(vaddq_s64(a6, a6), a39), a38), a6);
  v61 = vandq_s8(veorq_s8(vandq_s8(vaddq_s64(a5, a5), a39), a38), a5);
  v62 = vandq_s8(veorq_s8(vandq_s8(vaddq_s64(v50, v50), a39), a38), v50);
  v63 = vandq_s8(veorq_s8(vandq_s8(vaddq_s64(*(v47 - 256), *(v47 - 256)), a39), a38), *(v47 - 256));
  v64 = vaddq_s64(v58, v58);
  v65 = vaddq_s64(v57, v57);
  v66 = vandq_s8(veorq_s8(vandq_s8(vaddq_s64(v49, v49), a39), a38), v49);
  v67 = vaddq_s64(v56, v56);
  v68 = vaddq_s64(v55, v55);
  v69 = vaddq_s64(v54, v54);
  v70 = vaddq_s64(v53, v53);
  v71 = vaddq_s64(v52, v52);
  v72 = vandq_s8(veorq_s8(vandq_s8(vaddq_s64(*(v47 - 240), *(v47 - 240)), a39), a38), *(v47 - 240));
  v73 = veorq_s8(vandq_s8(veorq_s8(v71, a37), v52), vandq_s8(v71, v51));
  v74 = veorq_s8(vandq_s8(veorq_s8(v70, a37), v53), vandq_s8(v70, v51));
  v75 = veorq_s8(vandq_s8(veorq_s8(v69, a37), v54), vandq_s8(v69, v51));
  v76 = veorq_s8(vandq_s8(veorq_s8(v68, a37), v55), vandq_s8(v68, v51));
  v77 = veorq_s8(vandq_s8(veorq_s8(v67, a37), v56), vandq_s8(v67, v51));
  v78 = veorq_s8(vandq_s8(veorq_s8(v65, a37), v57), vandq_s8(v65, v51));
  v79 = veorq_s8(vandq_s8(veorq_s8(v64, a37), v58), vandq_s8(v64, v51));
  v80 = veorq_s8(v79, a36);
  v81 = veorq_s8(v78, a36);
  v82 = veorq_s8(v77, a36);
  v83 = veorq_s8(v76, a36);
  v84 = veorq_s8(v75, a36);
  v85 = veorq_s8(v74, a36);
  v86 = veorq_s8(v73, a36);
  v87 = veorq_s8(vandq_s8(veorq_s8(v73, a9), vshlq_n_s64(v72, 2uLL)), v72);
  v88 = veorq_s8(vandq_s8(veorq_s8(v74, a9), vshlq_n_s64(v66, 2uLL)), v66);
  v89 = veorq_s8(vandq_s8(veorq_s8(v75, a9), vshlq_n_s64(v63, 2uLL)), v63);
  v90 = veorq_s8(vandq_s8(veorq_s8(v76, a9), vshlq_n_s64(v62, 2uLL)), v62);
  v91 = veorq_s8(vandq_s8(veorq_s8(v77, a9), vshlq_n_s64(v61, 2uLL)), v61);
  v92 = veorq_s8(vandq_s8(veorq_s8(v78, a9), vshlq_n_s64(v60, 2uLL)), v60);
  v93 = vshlq_n_s64(v86, 2uLL);
  v94 = vshlq_n_s64(v85, 2uLL);
  v95 = vshlq_n_s64(v84, 2uLL);
  v96 = veorq_s8(vandq_s8(veorq_s8(v79, a9), vshlq_n_s64(v59, 2uLL)), v59);
  v173.val[2] = vshlq_n_s64(v83, 2uLL);
  v173.val[3] = vshlq_n_s64(v82, 2uLL);
  v97 = vshlq_n_s64(v81, 2uLL);
  v98 = vshlq_n_s64(v80, 2uLL);
  v99 = veorq_s8(vandq_s8(veorq_s8(v98, v48), v80), vandq_s8(v98, v51));
  v100 = vandq_s8(veorq_s8(vandq_s8(veorq_s8(v95, v48), v84), vandq_s8(v95, v51)), vshlq_n_s64(v89, 4uLL));
  v101 = veorq_s8(vandq_s8(v99, vshlq_n_s64(v96, 4uLL)), v96);
  v102 = veorq_s8(vandq_s8(veorq_s8(vandq_s8(veorq_s8(v97, v48), v81), vandq_s8(v97, v51)), vshlq_n_s64(v92, 4uLL)), v92);
  v103 = veorq_s8(vandq_s8(veorq_s8(vandq_s8(veorq_s8(v173.val[3], v48), v82), vandq_s8(v173.val[3], v51)), vshlq_n_s64(v91, 4uLL)), v91);
  v104 = vaddq_s64(a7, a30);
  v105 = v104.i64[1];
  v106 = v104.i64[0];
  v107 = vaddq_s64(a6, a30);
  v171 = v107.i64[1];
  v108 = v107.i64[0];
  v109 = vaddq_s64(a5, a30);
  v110 = v109.i64[1];
  v111 = v109.i64[0];
  v173.val[1] = veorq_s8(vandq_s8(veorq_s8(vandq_s8(veorq_s8(v173.val[2], v48), v83), vandq_s8(v173.val[2], v51)), vshlq_n_s64(v90, 4uLL)), v90);
  v112 = veorq_s8(veorq_s8(a7, a31), vaddq_s64(v101, v101));
  v113 = v112.i64[1];
  v114 = v112.i64[0];
  v115 = veorq_s8(veorq_s8(a6, a31), vaddq_s64(v102, v102));
  v116 = v115.i64[1];
  v117 = v115.i64[0];
  v118 = veorq_s8(veorq_s8(a5, a31), vaddq_s64(v103, v103));
  v119 = v118.i64[1];
  v120 = v118.i64[0];
  v121 = veorq_s8(v100, v89);
  v122 = veorq_s8(veorq_s8(*(v47 - 256), a31), vaddq_s64(v121, v121));
  v123 = veorq_s8(veorq_s8(v172, a31), vaddq_s64(v173.val[1], v173.val[1]));
  v124 = v123.i64[1];
  v126 = v123.i64[0];
  v127 = v122.i64[1];
  v128 = v122.i64[0];
  v129 = vaddq_s64(*(v47 - 256), a30);
  v130 = v129.i64[1];
  v131 = v129.i64[0];
  v132 = veorq_s8(vandq_s8(veorq_s8(vandq_s8(veorq_s8(v94, v48), v85), vandq_s8(v94, v51)), vshlq_n_s64(v88, 4uLL)), v88);
  v133 = veorq_s8(veorq_s8(v49, a31), vaddq_s64(v132, v132));
  v134 = vaddq_s64(v49, a30);
  v135 = v134.i64[1];
  v136 = v133.i64[1];
  v137 = veorq_s8(vandq_s8(veorq_s8(vandq_s8(veorq_s8(v93, v48), v86), vandq_s8(v93, v51)), vshlq_n_s64(v87, 4uLL)), v87);
  v138 = v133.i64[0];
  v139 = veorq_s8(veorq_s8(*(v47 - 240), a31), vaddq_s64(v137, v137));
  v140 = v139.i64[1];
  v141 = v114 * v106;
  v142 = v134.i64[0];
  v143 = vaddq_s64(*(v47 - 240), a30);
  v144 = v143.i64[1];
  v145 = v139.i64[0];
  v146 = v128 * v131;
  v147 = v143.i64[0];
  v148 = veorq_s8(a4, a40);
  v149 = vandq_s8(veorq_s8(vandq_s8(vaddq_s64(a4, a4), a39), a38), a4);
  v150 = vaddq_s64(v148, v148);
  v151 = v113 * v105;
  v152 = veorq_s8(vandq_s8(veorq_s8(v150, a37), v148), vandq_s8(v150, v51));
  v173.val[0] = veorq_s8(v152, a36);
  v153 = v127 * v130;
  v154 = veorq_s8(vandq_s8(veorq_s8(v152, a9), vshlq_n_s64(v149, 2uLL)), v149);
  v155 = vshlq_n_s64(v173.val[0], 2uLL);
  v156 = veorq_s8(vandq_s8(veorq_s8(vandq_s8(veorq_s8(v155, v48), v173.val[0]), vandq_s8(v155, v51)), vshlq_n_s64(v154, 4uLL)), v154);
  v157 = v140 * v144;
  v158 = veorq_s8(veorq_s8(a4, a31), vaddq_s64(v156, v156));
  v159 = v158.i64[1];
  v160 = v158.i64[0];
  v173.val[1].i64[0] = v146;
  v161 = vaddq_s64(a4, a30);
  v173.val[1].i64[1] = v153;
  v173.val[0].i64[0] = v138 * v142;
  v162 = v159 * v161.i64[1];
  v173.val[0].i64[1] = v136 * v135;
  v173.val[2].i64[0] = v145 * v147;
  v163 = v160 * v161.i64[0];
  v164 = vaddq_s64(v172, a30);
  v173.val[2].i64[1] = v157;
  v173.val[3].i64[0] = v163;
  v173.val[3].i64[1] = v162;
  v165 = v164.i64[0];
  v164.i64[0] = vqtbl4q_s8(v173, a29).u64[0];
  v173.val[0].i64[0] = v141;
  v173.val[0].i64[1] = v151;
  v173.val[1].i64[0] = v117 * v108;
  v173.val[1].i64[1] = v116 * v171;
  v173.val[2].i64[0] = v120 * v111;
  v173.val[2].i64[1] = v119 * v110;
  v173.val[3].i64[0] = v126 * v165;
  v173.val[3].i64[1] = v124 * v164.i64[1];
  v164.i64[1] = vqtbl4q_s8(v173, a29).u64[0];
  v166 = vrev64q_s8(v164);
  *(a44 + (a42 ^ a1) + a13) = vextq_s8(v166, v166, 8uLL);
  v167 = a43 == a1;
  v168 = a1 + 16;
  v169 = v167;
  return (*(v46 + 8 * ((505 * v169) ^ a46)))(v168);
}

uint64_t sub_10022DAD0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  v3 = STACK[0xF10];
  v4 = *(STACK[0xF18] + 8 * ((28 * ((STACK[0xF10] ^ ((*(a1 + 24) ^ a3) < ((STACK[0xF10] - 16298) ^ 0x249D608))) & 1)) ^ (STACK[0xF10] + 11988)));
  v5 = *(a2 + 8 * (STACK[0xF10] ^ 0x86D1));
  STACK[0x768] = *(a2 + 8 * (STACK[0xF10] ^ 0x81D5));
  STACK[0x908] = v5 - 2063922726;
  STACK[0x940] = *(a2 + 8 * (v3 - 35439)) - 955876402;
  STACK[0x628] = *(a2 + 8 * (v3 ^ 0x8ECE)) - 145359299;
  STACK[0x970] = *(a2 + 8 * (v3 - 31245)) - 1819216066;
  STACK[0x638] = *(a2 + 8 * (v3 ^ 0x9AF6)) - 1744418603;
  STACK[0x620] = *(a2 + 8 * (v3 - 31351)) - 437425274;
  STACK[0x910] = *(a2 + 8 * (v3 ^ 0x8B35)) - 2085233378;
  STACK[0x798] = *(a2 + 8 * (v3 - 34573)) - 2115206594;
  STACK[0x820] = *(a2 + 8 * (v3 - 34032));
  STACK[0x8C0] = *(a2 + 8 * (v3 - 31122)) - 59574383;
  v6 = *(a2 + 8 * (v3 - 31726));
  STACK[0x9C0] = *(a2 + 8 * (v3 ^ 0x87A8));
  v7 = *(a2 + 8 * (v3 - 33431));
  STACK[0x920] = v6 - 1140575659;
  STACK[0x8F0] = v7 - 1159290266;
  v8 = *(a2 + 8 * (v3 ^ 0x8EC2));
  STACK[0x990] = *(a2 + 8 * (v3 ^ 0x8B40)) - 386202379;
  v9 = *(a2 + 8 * (v3 ^ 0x853E));
  STACK[0x870] = v8 - 1048392095;
  v10 = v9 - 106330419;
  v11 = *(a2 + 8 * (v3 - 32026));
  v12 = *(a2 + 8 * (v3 ^ 0x8024));
  v13 = *(a2 + 8 * (v3 ^ 0x8CB9));
  v14 = *(a2 + 8 * (v3 ^ 0x83E9));
  STACK[0x688] = *(a2 + 8 * (v3 - 35593)) - 1622593950;
  v15 = *(a2 + 8 * (v3 ^ 0x8AA0));
  STACK[0x5F8] = v11 - 2132592695;
  v16 = *(a2 + 8 * (v3 ^ 0x8CED));
  STACK[0x8A8] = v12 - 1171213127;
  v17 = *(a2 + 8 * (v3 ^ 0x8C82));
  STACK[0x660] = v13 - 1187663822;
  STACK[0x650] = *(a2 + 8 * (v3 - 32834));
  STACK[0x5C8] = v14 - 1880491006;
  v18 = *(a2 + 8 * (v3 ^ 0x839C));
  STACK[0x7B0] = v15 - 980054251;
  v19 = *(a2 + 8 * (v3 ^ 0x89BB));
  STACK[0x600] = v16 - 823999706;
  v20 = *(a2 + 8 * (v3 - 32018));
  STACK[0x8A0] = v17 - 1256333791;
  v21 = *(a2 + 8 * (v3 ^ 0x823C));
  STACK[0x848] = v18 - 225952127;
  v22 = *(a2 + 8 * (v3 - 31062));
  STACK[0x710] = v19 - 602203358;
  v23 = *(a2 + 8 * (v3 - 32805));
  STACK[0x830] = v20 - 1791174639;
  v24 = *(a2 + 8 * (v3 - 35387));
  STACK[0x988] = v21 - 423902751;
  v25 = *(a2 + 8 * (v3 & 0xB04025C9));
  STACK[0x878] = v22 - 720164435;
  v26 = *(a2 + 8 * (v3 ^ 0x8EF3));
  STACK[0x640] = v23 - 1823743898;
  v27 = *(a2 + 8 * (v3 ^ 0x8573));
  STACK[0x6E8] = v24 - 1957884510;
  v28 = *(a2 + 8 * (v3 - 34495));
  STACK[0x788] = v25 - 1305353743;
  v29 = *(a2 + 8 * (v3 ^ 0x8705));
  STACK[0x968] = v26 - 1260529494;
  v30 = *(a2 + 8 * (v3 ^ 0x89F3));
  STACK[0x728] = v27 - 736615126;
  v31 = *(a2 + 8 * (v3 - 33971));
  STACK[0x858] = v28 - 1470735106;
  STACK[0x9A0] = *(a2 + 8 * (v3 - 34208));
  STACK[0x868] = v29 - 2076177714;
  STACK[0x828] = *(a2 + 8 * (v3 ^ 0x8E74));
  STACK[0x818] = v30 - 1824408150;
  v32 = *(a2 + 8 * (v3 - 33754));
  STACK[0x770] = v31 - 1656430742;
  v33 = *(a2 + 8 * (v3 - 35379));
  STACK[0x740] = v32 - 716965111;
  v34 = *(a2 + 8 * (v3 & 0x24FF25B6));
  STACK[0x760] = v33 - 1616466454;
  v35 = *(a2 + 8 * (v3 - 31516));
  STACK[0x758] = v34 - 1434634398;
  STACK[0x850] = *(a2 + 8 * (v3 - 31532));
  STACK[0xE58] = v35 - 231415367;
  v36 = *(a2 + 8 * (v3 ^ 0x8AEC)) - 1640644303;
  STACK[0xE50] = *(a2 + 8 * (v3 - 32701)) - 1680276466;
  STACK[0x8B8] = *(a2 + 8 * (v3 - 31273)) - 1940437438;
  STACK[0x680] = *(a2 + 8 * (v3 ^ 0x99EA)) - 312008199;
  STACK[0x7E8] = *(a2 + 8 * (v3 ^ 0x8A7D)) - 1654831082;
  STACK[0x738] = *(a2 + 8 * (v3 - 32035)) - 637639814;
  STACK[0x730] = *(a2 + 8 * (v3 - 32190)) - 1615470075;
  STACK[0x800] = *(a2 + 8 * (v3 ^ 0x818A)) - 1033873191;
  STACK[0x980] = *(a2 + 8 * (v3 ^ 0x9AEE)) - 1403000547;
  STACK[0x6E0] = *(a2 + 8 * (v3 ^ 0x8D28)) - 1549396147;
  STACK[0x8D0] = *(a2 + 8 * (v3 & 0xCDF50783)) - 648627267;
  STACK[0x7A8] = *(a2 + 8 * (v3 - 32820)) - 47983647;
  STACK[0x720] = *(a2 + 8 * (v3 - 34914));
  v37 = *(a2 + 8 * (v3 ^ 0x84C4));
  STACK[0x978] = v37 - 1597087591;
  STACK[0x6A0] = v37 - 1597087590;
  STACK[0x898] = *(a2 + 8 * (v3 ^ 0x8B16)) - 1030673867;
  STACK[0x890] = *(a2 + 8 * (v3 ^ 0x8031)) - 1262129158;
  STACK[0x5B8] = *(a2 + 8 * (v3 ^ 0x81F6)) - 912651819;
  STACK[0x780] = *(a2 + 8 * (v3 - 31650)) - 1118329599;
  STACK[0x900] = *(a2 + 8 * (v3 ^ 0x8F43)) - 567702310;
  STACK[0x6B0] = *(a2 + 8 * (v3 ^ 0x8763)) - 429698118;
  STACK[0x9B8] = *(a2 + 8 * (v3 - 34808)) - 64766467;
  STACK[0x658] = *(a2 + 8 * (v3 ^ 0x84E4)) - 815276167;
  STACK[0x5A0] = *(a2 + 8 * (v3 ^ 0x83D9)) - 1197654894;
  STACK[0x7F8] = *(a2 + 8 * (v3 - 31350)) - 126312563;
  STACK[0x5F0] = *(a2 + 8 * (v3 ^ 0x8A05)) - 1996249138;
  STACK[0x5B0] = *(a2 + 8 * (v3 ^ 0x8EA8)) - 569634099;
  STACK[0x918] = *(a2 + 8 * (v3 - 33728)) - 1217969163;
  STACK[0x8E0] = *(a2 + 8 * (v3 ^ 0x81ED)) - 260121050;
  STACK[0x8F8] = *(a2 + 8 * (v3 ^ 0x8932)) - 1117394191;
  STACK[0x8D8] = *(a2 + 8 * (v3 - 31671)) - 1209245626;
  STACK[0x690] = *(a2 + 8 * (v3 - 35541)) - 477118410;
  STACK[0x748] = *(a2 + 8 * (v3 - 31892)) - 1245678463;
  STACK[0x610] = *(a2 + 8 * (v3 - 32844));
  v38 = *(a2 + 8 * (v3 - 33012));
  STACK[0x9D0] = v38 - 1799566047;
  STACK[0xD18] = v38 - 1799565999;
  STACK[0x7A0] = *(a2 + 8 * (v3 ^ 0x99D8)) - 1154430307;
  STACK[0x668] = *(a2 + 8 * (v3 - 30965)) - 607002346;
  STACK[0x9B0] = *(a2 + 8 * (v3 - 35307)) - 691187598;
  STACK[0x678] = *(a2 + 8 * (v3 - 34656)) - 20274347;
  STACK[0x6C8] = *(a2 + 8 * (v3 - 33602)) - 672472991;
  STACK[0x888] = *(a2 + 8 * (v3 - 32491)) - 771116174;
  STACK[0x648] = *(a2 + 8 * (v3 ^ 0x808D)) - 1437833722;
  STACK[0x7D0] = *(a2 + 8 * (v3 - 31090)) - 841385807;
  STACK[0x6F0] = *(a2 + 8 * (v3 - 32746)) - 647963015;
  STACK[0x718] = *(a2 + 8 * (v3 ^ 0x8977)) - 1747678898;
  STACK[0x960] = *(a2 + 8 * (v3 ^ 0x88C6)) - 179860347;
  STACK[0x708] = *(a2 + 8 * (v3 ^ 0x89C6)) - 367819899;
  STACK[0x6C0] = *(a2 + 8 * (v3 - 34371)) - 1547464358;
  STACK[0x7E0] = *(a2 + 8 * (v3 ^ 0x86A6)) - 249797851;
  STACK[0x840] = *(a2 + 8 * (v3 ^ 0x8904)) - 1497176871;
  STACK[0x618] = *(a2 + 8 * (v3 & 0x5D2445A0)) - 592212286;
  STACK[0x930] = *(a2 + 8 * (v3 - 30998)) - 136303635;
  STACK[0x9D8] = *(a2 + 8 * (v3 - 34687)) - 1074833858;
  STACK[0x700] = *(a2 + 8 * (v3 - 31682)) - 336518175;
  STACK[0x808] = *(a2 + 8 * (v3 ^ 0x87EB)) - 1750878222;
  STACK[0x9A8] = *(a2 + 8 * (v3 ^ 0x8161)) - 183391798;
  STACK[0x8C8] = *(a2 + 8 * (v3 - 34037)) - 715033322;
  STACK[0x7D8] = *(a2 + 8 * (v3 - 31397)) - 1863708186;
  STACK[0x938] = *(a2 + 8 * (v3 ^ 0x99F8)) - 372618883;
  STACK[0x5E8] = *(a2 + 8 * (v3 ^ 0x9BE3)) - 657621958;
  STACK[0x750] = *(a2 + 8 * (v3 - 34757)) - 1377887290;
  STACK[0x6F8] = *(a2 + 8 * (v3 ^ 0x80C6)) - 823667579;
  STACK[0x778] = *(a2 + 8 * (v3 ^ 0x8401)) - 609266262;
  STACK[0x948] = *(a2 + 8 * (v3 & 0x9C0D518B)) - 683128315;
  STACK[0x7C8] = *(a2 + 8 * (v3 ^ 0x8BAA)) - 2131657287;
  STACK[0x860] = *(a2 + 8 * (v3 ^ 0x8DC8)) - 579625171;
  STACK[0x958] = *(a2 + 8 * (v3 - 31318)) - 908123987;
  STACK[0x670] = *(a2 + 8 * (v3 ^ 0x87A6)) - 437757403;
  STACK[0x950] = *(a2 + 8 * (v3 - 34969)) - 761789358;
  STACK[0x6A8] = *(a2 + 8 * (v3 ^ 0x8F30)) - 119249659;
  STACK[0x880] = *(a2 + 8 * (v3 ^ 0x9BC4)) - 1409128039;
  STACK[0x810] = *(a2 + 8 * (v3 ^ 0x8794)) - 1280179511;
  STACK[0x6B8] = *(a2 + 8 * (v3 ^ 0x8CE0)) - 1415919787;
  STACK[0x790] = *(a2 + 8 * (v3 - 32587));
  v39 = *(a2 + 8 * (v3 ^ 0x8D99)) - 9949184;
  STACK[0x7B8] = *(a2 + 8 * (v3 ^ 0x9A80));
  STACK[0x8B0] = *(a2 + 8 * (v3 - 34844));
  STACK[0x7F0] = *(a2 + 8 * (v3 ^ 0x8491));
  STACK[0x630] = *(a2 + 8 * (v3 - 34305));
  STACK[0x6D0] = *(a2 + 8 * (v3 - 31392));
  STACK[0x7C0] = v39 - 1966;
  STACK[0x698] = *(a2 + 8 * (v3 ^ 0x8BE8));
  STACK[0x6D8] = *(a2 + 8 * (v3 ^ 0x88A5));
  STACK[0x928] = a1;
  STACK[0x838] = v10;
  STACK[0x8E8] = v36;
  return v4();
}

uint64_t sub_10022E90C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 12);
  v4 = (((*(a1 + 16) ^ 0xC13CD773) + 1052977293) ^ ((*(a1 + 16) ^ 0x61418A6) - 101980326) ^ (((((v1 - 1072982764) | 0x21820400) + 510769210) ^ 0xD102FB63) + (*(a1 + 16) ^ 0x2EFD08C4))) + 395956901;
  v5 = ((v4 ^ 0x1090C729) - 1028967589) ^ v4 ^ ((v4 ^ 0xA0C2DD4C) + 1928931648) ^ ((v4 ^ 0x6265EE36) - 1336010170) ^ ((v4 ^ 0xFFF3FFDF) + 768084909);
  LODWORD(STACK[0x504]) = v5 ^ 0xC411CC9D;
  v6 = (((v5 ^ 0x3C0A8E1C) + 132431231) ^ ((v5 ^ 0x8F4DEC1B) - 1264328838) ^ ((v5 ^ 0x9E83698B) - 1519559958)) - 51291885;
  v7 = (((v3 ^ 0xFA8229DB) + 92132901) ^ ((v3 ^ 0x8E544B51) + 1907078319) ^ ((v3 ^ 0x9D03A59B) + 1660705381)) - 51291885;
  v8 = (v7 < 0x131B9202) ^ (v6 < 0x131B9202);
  v9 = v6 > v7;
  if (v8)
  {
    v9 = v6 < 0x131B9202;
  }

  return (*(v2 + 8 * (v1 ^ (8 * v9))))();
}

uint64_t sub_10022EB00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x258] = a4;
  LODWORD(STACK[0x2D4]) = v67;
  return (*(v66 + 8 * (v65 ^ 0x67C2)))(a1, a2, a3, a65);
}

uint64_t sub_10022EBD0@<X0>(uint64_t a1@<X8>)
{
  v5 = ((8655 * (v2 ^ 0x6BADu)) ^ 0x654BLL) - v3;
  v6 = *(v1 + v5 - 15);
  v7 = *(v1 + v5 - 31);
  v8 = a1 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v4 + 8 * ((99 * (v3 == 0)) ^ v2)))();
}

uint64_t sub_10022EC28@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v34 = (v31 ^ 0x886F395A) & (2 * (v31 & v32)) ^ v31 & v32;
  v35 = ((66 * (a1 ^ 0xBC8B) - 258922372) ^ (2 * (v31 ^ 0xA82719DC))) & (v31 ^ 0xA82719DC) ^ (2 * (v31 ^ 0xA82719DC)) & 0x7848A0BE;
  v36 = v31 ^ (2 * (((4 * v35) & 0x7848A0B8 ^ 0x600080B3 ^ ((4 * v35) ^ 0x612282FC) & v35) & (16 * ((v35 ^ 0x4000001C) & (4 * v34) ^ v34)) ^ (v35 ^ 0x4000001C) & (4 * v34) ^ v34));
  v37 = v33 + (((v36 ^ 0x7480633A) + 1513089994) ^ ((v36 ^ 0x9E6CAC43) - 1329388367) ^ ((v36 ^ 0xD5E4BAA1) - 78957997)) - 1535444843;
  v38 = *(v29 + 4 * a26);
  v39 = ((v38 ^ 0x14D0E4A2) - 994091583) ^ v38 ^ ((v38 ^ 0xBD9581F1) + 1845115028) ^ ((v38 ^ 0xED289C30) + 1028072787) ^ ((v38 ^ 0x6BFDBFFE) - 1148057955) ^ v37 ^ ((v37 ^ 0x5A7049BE) - 1342534065) ^ ((v37 ^ 0xCB6244A1) + 1055425362) ^ ((v37 ^ 0xC5B8CAAB) + 808586588) ^ ((v37 ^ 0x5EDFFFBB) - 1420478388);
  return (*(a29 + 8 * ((510 * (((v30 + (((v39 ^ 0xC6F80774) + 377791780) ^ ((v39 ^ 0x45A2B5) - 801570589) ^ ((v39 ^ 0xE358DB53) + 858028293)) - 623518563) & 7) == 2)) ^ a1)))();
}

uint64_t sub_10022EEB4(int a1, int a2, int a3, int a4, int a5)
{
  v14 = v8 < v10;
  v15 = (*(*(v13 + 8) + 4 * v6) ^ a1) + v7 + (*(*(v11 + 8) + 4 * v6) ^ a1);
  *(*(v5 + 8) + 4 * v6) = v15 + a3 - (a2 & (2 * v15));
  if (v14 == v6 + 1 > a5)
  {
    v14 = v6 + a4 < v8;
  }

  return (*(v12 + 8 * ((63 * v14) ^ v9)))();
}

uint64_t sub_10022F200@<X0>(uint64_t a1@<X0>, int a2@<W8>, __n128 a3@<Q0>, __n128 a4@<Q1>, __n128 a5@<Q2>, __n128 a6@<Q3>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, __n128 a47, __n128 a48)
{
  v50 = *(a41 - 1401400883) != 1 || *(*(&off_1010A0B50 + (a2 ^ 0x7564)) - 228216043) == a2 - 28927;
  v51.n128_u64[0] = 0x8000000080000000;
  v51.n128_u64[1] = 0x8000000080000000;
  return (*(v48 + 8 * ((v50 * (a2 - 28445)) ^ a2)))(a1, 1186, 3138926564, 4164479044, 4229698935, 2382923660, 1191461830, 68223232, a3, a4, a5, a6, v51, a48, a47);
}

uint64_t sub_10022F370(__n128 a1, uint64_t a2, char a3)
{
  v6.n128_u64[0] = (v3 + 13) & 0xF;
  v6.n128_u64[1] = (v3 + 12) & 0xF;
  v7.n128_u64[0] = (v3 + 11) & 0xF;
  v7.n128_u64[1] = (v3 + 10) & 0xF;
  v8.n128_u64[0] = (v3 + 9) & 0xF;
  v8.n128_u64[1] = a3 & 0xF ^ 3;
  v11.val[0].i64[0] = (v3 + 7) & 0xF;
  v11.val[0].i64[1] = (v3 + 6) & 0xF;
  v11.val[1].i64[0] = (v3 + 5) & 0xF;
  v11.val[1].i64[1] = (v3 + 4) & 0xF;
  v11.val[2].i64[0] = (v3 + 3) & 0xF;
  v11.val[2].i64[1] = (v3 + 2) & 0xF;
  v11.val[3].i64[0] = (v3 + 1) & 0xF;
  v11.val[3].i64[1] = v3 & 0xF;
  v9.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v9.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  return (*(v5 + 8 * v4))(a3 & 0x10, v3 - 16, (a3 & 0x10) - 16, (v4 ^ 0x24Du) + 30412, a1, v6, v7, v8, xmmword_100BC76B0, vqtbl4q_s8(v11, xmmword_100BC76B0), v9);
}

void sub_10022F5A0(uint64_t a1)
{
  v1 = *(a1 + 8) ^ (906386353 * (((a1 | 0x4B81D90B) - (a1 & 0x4B81D90B)) ^ 0x7A80142F));
  v2 = *(*(a1 + 24) + 4);
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

  v7 = *(*(a1 + 16) + 4);
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

  v13 = *(a1 + 24);
  v14 = (17902189 * ((&v13 - 2 * (&v13 & 0x7101C218) + 1895940632) ^ 0xFF4ED408)) ^ (v1 + 27671);
  v11 = *(&off_1010A0B50 + v1 - 16598) - 810145054;
  (*&v11[8 * v1 + 276552])(&v13);
  if (v6 >= v10)
  {
    v12 = (v10 ^ 0x6DFB7DD8) - 17304576 + ((2 * v10) & 0xDBF6FBB0);
  }

  else
  {
    v12 = (v6 ^ 0xEFFFF3F8) + 2096332256 + ((2 * v6) & 0xDFFFE7F0);
  }

  __asm { BRAA            X14, X17 }
}

uint64_t sub_10022F7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v40 = v38 - 1;
  STACK[0x270] = v40;
  *(v36 + v40) = (v35 ^ ((v35 ^ 0x25) - 20) ^ ((v35 ^ 0x67) - 86) ^ ((v35 ^ 0xDF) + 18) ^ 0x8B ^ ((v35 ^ 0x8E ^ v34) + 99)) * (v35 - 32);
  v41 = *(v39 + 8 * ((117 * (STACK[0x270] != 0)) ^ v37));
  return v41(v41, ((v35 ^ 0xBE36C667) + 1397905834) ^ ((v35 ^ 0xDF) + 18), (v35 ^ 0xDFu) + 18, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t sub_10022F894()
{
  v4 = 193924789 * ((v2 - 176) ^ 0xB6BB3266);
  v5 = (LODWORD(STACK[0x78C]) ^ 0x77D7F8A) + v4;
  *(v2 - 172) = v0 - v4 - 1172952519;
  *(v2 - 168) = v5;
  v6 = (*(v3 + 8 * (v0 ^ 0xA3160480)))(v2 - 176);
  return (*(v1 + 8 * (((((v0 - 1643368683) & 0xBEDD59FF) + 28062) * (v0 < 0x3E31738C)) ^ (v0 + 1558815255))))(v6, &off_1010A0B50);
}

uint64_t sub_10022FBF0@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x68B4]) = -371865839;
  STACK[0x6FF8] = 0;
  LODWORD(STACK[0x5C3C]) = -371865839;
  LODWORD(STACK[0x7D1C]) = -371865839;
  STACK[0x2628] = 0;
  LOBYTE(STACK[0x3C67]) = v1 == a1 - 371873891;
  return (*(STACK[0xF18] + 8 * (a1 + 34872)))();
}

uint64_t sub_10022FCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, char a14)
{
  v20 = *(a1 + 24) + 56 * **(a1 + 24) + 24;
  v21 = v19 - 136;
  v22 = 634647737 * ((~(v19 - 136) & 0xC9D242B | (v19 - 136) & 0xF362DBD0) ^ 0x610B0BD7);
  *(v19 - 120) = v22 ^ 0x28D20269;
  *(v19 - 136) = v16 - v22 - 14660;
  *(v19 - 104) = v22 + 11302;
  *(v19 - 128) = &a14;
  *(v19 - 112) = v20;
  (*(v14 + 8 * (v16 + 14151)))(v19 - 136);
  v23 = 634647737 * (((v21 | 0xCA00ADBF) - (v21 | 0x35FF5240) + 905925184) ^ 0xA7968243);
  *(v19 - 136) = v17;
  *(v19 - 120) = &a14;
  *(v19 - 128) = v16 - 12534 - v23;
  *(v19 - 124) = v23 ^ 0x252BA053;
  (*(v14 + 8 * (v16 + 14305)))(v19 - 136);
  v24 = 634647737 * (((v21 | 0xA3CE376F) - (v21 & 0xA3CE3768)) ^ 0xCE581893);
  *(v19 - 128) = v16 - 12534 - v24;
  *(v19 - 124) = (v18 - 441798602 + 4189 * (v16 ^ 0x9356)) ^ v24;
  *(v19 - 120) = &a14;
  *(v19 - 136) = v15;
  (*(v14 + 8 * (v16 + 14305)))(v19 - 136);
  *(v19 - 136) = &a11;
  *(v19 - 128) = &a14;
  *(v19 - 120) = v16 - 634647737 * ((((v19 - 136) | 0x40FE544F) - (v19 - 136) + ((v19 - 136) & 0xBF01ABB0)) ^ 0x2D687BB3) - 33092;
  (*(v14 + 8 * (v16 ^ 0x587B)))(v19 - 136);
  return (*(v14 + 8 * v16))(*(v14 + 8 * v16), v25);
}

void sub_10022FF78(uint64_t a1)
{
  v1 = *(a1 + 16) + 1603510583 * ((~a1 & 0xECB1E04 | a1 & 0xF134E1FB) ^ 0x99102CAF);
  __asm { BRAA            X2, X17 }
}

uint64_t sub_100230218()
{
  STACK[0x4F90] = *v2;
  LODWORD(STACK[0x22E8]) = v0 - ((v0 << ((10 * (v1 ^ 0x60)) ^ 0x4B)) & 0xD3AB8E22) + v3;
  LODWORD(STACK[0x35EC]) = 1693393266;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100230270(unint64_t a1)
{
  STACK[0x95A0] = a1;
  LOWORD(STACK[0x79DE]) = (((v2 - 8241) | 0x6124) + 31479) ^ v1;
  LODWORD(STACK[0x16B4]) = 1115468780;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_1002302C4@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x6DE0]) = v2;
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = a1;
  LODWORD(STACK[0x655C]) = v1;
  LODWORD(STACK[0x884C]) = 915269561;
  return (*(STACK[0xF18] + 8 * (v3 - 30246)))();
}

uint64_t sub_10023038C()
{
  v0 = STACK[0xF10] - 5990;
  v1 = STACK[0xF10] - 288233653;
  v2 = STACK[0xF10] - 1762661292;
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = v2 ^ (906386353 * (((((&STACK[0x10000] + 3800) | 0xAC7A379C) ^ 0xFFFFFFFE) - (~(&STACK[0x10000] + 3800) | 0x5385C863)) ^ 0x62840547));
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0xB96C)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (((*STACK[0x970] > 0) * ((v0 ^ 0x112EF99A) + v1)) ^ v0)))(v4);
}

uint64_t sub_1002305BC@<X0>(int a1@<W8>)
{
  *STACK[0x9108] |= (v1 + 22569) ^ 0xCB3B;
  LODWORD(STACK[0x76D4]) = a1 + 153825389;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10023060C(uint64_t a1, char a2, char a3, uint64_t a4, char a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v79 = ((v67 ^ a5) + a6) ^ v67 ^ ((v67 ^ a7) + a8) ^ ((v67 ^ v68) + v69) ^ ((v70 ^ v67) + v71);
  v80 = ((v79 ^ v72) + v73) ^ ((v79 ^ v74) + v75) ^ ((v79 ^ v76) + v77);
  *(v64 + a4) = a2 + v80 * v63 + a3 * (v80 + v78);
  return (*(a63 + 8 * (((a4 == 0) * v65) ^ v66)))();
}

uint64_t sub_1002306A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, uint64_t a20)
{
  *a1 = 1498173510;
  *(a1 + 4) = a12;
  *(a1 + 5) = 513;
  *(a1 + 7) = 0;
  *(a1 + 8) = -2113929216;
  *(a1 + 12) = 2;
  *(a1 + 13) = *(v21 + 14);
  v24 = 1112314453 * (&a18 ^ 0xEF562AD9);
  a20 = a1 + 14;
  a19 = 28939 - v24;
  a18 = v22 - v24 + 10083;
  v26 = (*(v20 + 8 * (v22 + 34714)))(&a18);
  *(a1 + 14) = 256;
  return (*(v20 + 8 * ((425 * ((((a1 - v23 - 118) < 0x20) ^ (v22 - 34)) & 1)) ^ v22)))(v26);
}

uint64_t sub_1002307CC()
{
  v1 = STACK[0x9010] + 128;
  STACK[0x7DE8] = v1;
  v2 = 634647737 * ((((&STACK[0x10000] + 3800) | 0xD4F8B34C) - ((&STACK[0x10000] + 3800) & 0xD4F8B348)) ^ 0xB96E9CB0);
  STACK[0x10EE0] = v1;
  LODWORD(STACK[0x10ED8]) = v2 - 1431125373;
  LODWORD(STACK[0x10EE8]) = v0 - v2 + 19344;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0xCD66)))(&STACK[0x10ED8]);
  STACK[0x16D8] = *(v3 + 8 * v0);
  return (*(v3 + 8 * ((v0 + 6030) ^ v0)))(v4);
}

uint64_t sub_100230894()
{
  v2 = v1 ^ 0xC704E5F7;
  v3 = STACK[0xF18];
  STACK[0x8E88] = (*(STACK[0xF18] + 8 * (v0 + 7967)))(v2);
  return (*(v3 + 8 * (((STACK[0x4958] != 0) * ((((v0 - 43561) | 0x60A) ^ 0xFFFFAACD) + ((v0 + 2111190002) & 0x822972FF))) ^ v0)))();
}

uint64_t sub_100230B34()
{
  v3 = (v0 ^ 0xA46C) - 36913;
  *(v1 + 1884) = v2;
  *(v1 + 1891) = v2 == (v3 ^ 0xE9D5C59D);
  return (*(STACK[0xF18] + 8 * ((462 * (v2 != (v3 ^ 0xE9D5C59D))) ^ v0)))();
}

uint64_t sub_100230BD4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a4 = *(v5 + 200);
  v8 = v6 + (a1 << 6);
  *(v8 + 8) = *(v5 + 208);
  *(v8 + 16) = 1;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0x15DB1509EF155482;
  *(v8 + 24) = v4;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  return (*(STACK[0xF18] + 8 * v7))();
}

uint64_t sub_100230C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  STACK[0x5E40] = 0;
  LODWORD(STACK[0x2864]) = -371865839;
  return (*(STACK[0xF18] + 8 * (((v3 == 3 * ((a3 - 30381) ^ 0x15E9) - 371866917) * (a3 ^ 0x276A)) ^ (a3 - 30381))))(a1, a2, 371891535);
}

uint64_t sub_100230DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] + 612288663;
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x1E80];
  STACK[0x5D28] = &STACK[0x2E7C];
  LODWORD(STACK[0x4704]) = -1029336203;
  return (*(STACK[0xF18] + 8 * (v7 ^ 0x247F4684 ^ (16358 * (v7 > 0xD1AC954B)))))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_100230E90()
{
  v2 = STACK[0x50F8];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v2;
  LODWORD(STACK[0x35EC]) = v1;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100230F28()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4E88)))(96) == 0;
  return (*(v1 + 8 * ((v2 * (((v0 ^ 0xF2B2) - 14821) ^ v0 ^ 0xB8A2)) ^ v0)))();
}

uint64_t sub_100230F7C()
{
  LOBYTE(STACK[0x10EFC]) = -46 - ((&STACK[0x10000] - 40) ^ 0xCF) * v1;
  STACK[0x10EE8] = v3;
  STACK[0x10EE0] = v2;
  LODWORD(STACK[0x10ED8]) = ((&STACK[0x10000] + 3800) ^ 0xE6261BCF) * v1 - 14772 + v4;
  STACK[0x10EF0] = v0 + 328;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v4 ^ 0x41DD)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * (v4 - 22892)))(v6);
}

uint64_t sub_100230FFC()
{
  v1 = STACK[0xF18];
  STACK[0x88F8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((v0 ^ 0xD251D16B) < 0xFA033595) * (((v0 - 1584967229) & 0x5E78B6FB) - 5209)) ^ (v0 + 4965))))();
}

uint64_t sub_10023111C()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1002311E8(uint64_t a1)
{
  v4 = *(v3 + v1);
  *(a1 + v1) = ((((v2 - 44) & 0xF9) - 18) ^ 0x13) + v4 + (~(2 * v4) | 0xA9);
  return (*(STACK[0xF18] + 8 * (((2 * (v4 == 0)) | (4 * (v4 == 0))) ^ v2)))();
}

uint64_t sub_10023124C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v23 = v21 + 6043;
  v24 = (v21 - 101) ^ (v21 - 2) ^ (((v21 ^ (a20 + v20 - 277)) & v21) >> (__clz(v21 ^ (a20 + v20 - 277) | 1) ^ 0x3Fu));
  return (*(v22 + 8 * (((2 * (v24 & 1)) & 0xEF | (16 * (v24 & 1))) ^ v23)))();
}

uint64_t sub_100231310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v16 = (((a13 - 1105776367) ^ 0xACFA3A70) + 1247506824) ^ (a13 - 1105776367) ^ (((a13 - 1105776367) ^ 0x428FF514) - 1540440348) ^ ((*(v14 - 224) ^ 0x5B4794DF) - a13) ^ ((((v13 ^ 0x5497) + 148115347) ^ (a13 - 1105776367)) - 294269083);
  *(v14 - 224) = v13 ^ 0x37BF;
  v18 = v16 != (v13 ^ 0x195E959F) && (v16 & 0xF) == (((v13 ^ 0x5497) - 604841799) & 0x240CF3D6) - 16776;
  v19 = *(v15 + 8 * ((69 * v18) | v13 ^ 0x5497));
  *(v14 - 228) = -42899;
  return v19();
}

void sub_100231400(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = (*(a1 + 16) ^ 0x7DEB1FBFFBAFFFCFLL) - 0x7DEB1FBFDF99F075 + ((2 * *(a1 + 16)) & 0xFBD63F7FF75FFF9ELL);
  v3 = v2 < 0x1C160F5A;
  v4 = v2 > v1 + 471207770;
  if (v1 > 0xFFFFFFFFE3E9F0A5 != v3)
  {
    v4 = v3;
  }

  __asm { BRAA            X15, X17 }
}

uint64_t sub_1002317E8@<X0>(uint64_t a1@<X8>)
{
  v10 = v1 < v8;
  *(a1 + v7) = *(v4 + (v7 & 0xF)) ^ *(v3 + v7) ^ *((v7 & 0xF) + v5 + 7) ^ (-57 * (v7 & 0xF)) ^ *((v7 & 0xF) + v6 + 2);
  if (v10 == v7 + 1 > ((v2 + 931866702) & 0x4874FD7F) + 1816406475)
  {
    v10 = v7 - 1816437578 < v1;
  }

  return (*(v9 + 8 * ((39409 * v10) ^ v2)))();
}

uint64_t sub_100231CF4(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v12 = (*(*(v11 + 8) + v6) ^ a3) + v7;
  *(*(v5 + 8) + v6) = v12 - (a4 & (2 * v12)) + a3;
  return (*(v10 + 8 * ((((a1 | v9) >= 0) * a5) ^ v8)))(a1 + a2);
}

uint64_t sub_100231D48@<X0>(int a1@<W0>, void *a2@<X8>)
{
  v14 = v6 < v7;
  v15 = (*a2 + (v2 - 2138567130));
  v16 = ((v15 ^ *(*v13 + (*v12 & 0x72D7ACF8))) & 0x7FFFFFFF) * v4;
  v17 = (v16 ^ HIWORD(v16)) * v4;
  if (v14 == v2 - 351686519 < v7)
  {
    v14 = v2 - 351686519 < v6;
  }

  *v15 = *(v11 + (v17 >> 24)) ^ *(v9 + (v17 >> 24)) ^ *((v17 >> 24) + v8 + 3) ^ v17 ^ (BYTE3(v17) * v5);
  return (*(v10 + 8 * ((!v14 * a1) ^ v3)))();
}

uint64_t sub_100231E14@<X0>(uint64_t a1@<X6>, unint64_t a2@<X8>)
{
  STACK[0x240] = v5 - 1;
  *(a1 + v5 - 1) = (v2 ^ v6 ^ v3) * (v2 + 17);
  return (*(v8 + 8 * (((STACK[0x240] > a2) * v7) ^ v4)))();
}

uint64_t sub_100231FB4()
{
  v1 = STACK[0xF10] - 26128;
  v2 = LODWORD(STACK[0xA530]) + (((v0 ^ 0xEECA7F6B) + 288718997) ^ ((v0 ^ 0xD8245755) + 668706987) ^ ((v0 ^ STACK[0xF10] ^ 0xDF3B6414) + 549720273));
  LODWORD(STACK[0x985C]) = v2 - 371865839;
  v2 += 520123522;
  v3 = *(STACK[0x6850] + 128) + 565291215;
  v4 = v2 < 0x5CD729F9;
  v5 = v2 > v3;
  if (v3 < 0x5CD729F9 != v4)
  {
    v5 = v4;
  }

  if (v5)
  {
    v6 = -42018;
  }

  else
  {
    v6 = STACK[0xB4C4];
  }

  LODWORD(STACK[0x32B0]) = v6;
  return (*(STACK[0xF18] + 8 * ((5803 * (v6 == 0)) ^ v1)))();
}

uint64_t sub_1002320CC()
{
  STACK[0x95A0] = v1;
  LOWORD(STACK[0x79DE]) = 7085;
  LODWORD(STACK[0x16B4]) = 881448650;
  return (*(STACK[0xF18] + 8 * ((24918 * (v0 < 0xE1D260DA)) ^ (v0 + 52099081))))();
}

uint64_t sub_1002321AC(uint64_t a1, int8x16_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, double a7, __n128 a8, __n128 a9, __n128 a10, int8x16_t a11, double a12, int8x16_t a13, int8x16_t a14)
{
  v20 = v17 & 0xF;
  v22.i64[0] = vqtbl4q_s8(*(&a8 - 1), a11).u64[0];
  *&v22.i64[1] = a12;
  v23 = vrev64q_s8(veorq_s8(veorq_s8(*a2, *(v14 + v20 - 15)), veorq_s8(*(v20 + v15 - 14), *(v16 + v20 - 15))));
  v24 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v23, v23, 8uLL), a14), vmulq_s8(v22, a13)));
  *a2 = vextq_s8(v24, v24, 8uLL);
  return (*(v19 + 8 * ((((a5 | a3) >> 63) * a6) ^ v18)))(a1, a2 - 1, a3 - 16, a4, a5 + 16);
}

uint64_t sub_100232230@<X0>(uint64_t a1@<X8>)
{
  v8 = ((v4 + 474978318) & 0xE3B0B2FA ^ 0x9077) & (v3 + 15);
  v9 = -v6 - v3;
  v10 = v9 + 1;
  v11 = (v5 - v6) >= 0x10 && (v9 + 1 + a1 + v8) >= 0x10;
  v12 = v9 + v1 + v8 + 7;
  v15 = !v11 || v12 < 0x10 || (v10 + v2 + v8) < 0x10;
  return (*(v7 + 8 * ((21 * v15) ^ v4)))();
}

uint64_t sub_1002322B8()
{
  v4 = v2 + v3 + 316114834;
  v5 = v1 + 316161607 < v4;
  if (v1 + 316161607 < -780235465 != v4 < -780235465)
  {
    v5 = v4 < -780235465;
  }

  return (*(v0 + 8 * ((v5 * (v2 - 46758)) ^ v2)))();
}

uint64_t sub_100232364@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = a4 + v5 * v6;
  *v8 = a1;
  *(v9 + 16) = a2;
  *v9 = a3;
  return (*(v4 + 8 * v7))();
}

uint64_t sub_100232388@<X0>(int a1@<W3>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v5.n128_u64[0] = (v3 + 13) & 0xF;
  v5.n128_u64[1] = (v3 - 28 + (a1 ^ 0x83)) & 0xF;
  v6.n128_u64[0] = (v3 + 11) & 0xF;
  v6.n128_u64[1] = (v3 + 10) & 0xF;
  v7.n128_u64[0] = (v3 + 9) & 0xF;
  v7.n128_u64[1] = v3 & 0xF ^ 8;
  v10.val[0].i64[0] = (v3 + 7) & 0xF;
  v10.val[0].i64[1] = (v3 + 6) & 0xF;
  v10.val[1].i64[0] = (v3 + 5) & 0xF;
  v10.val[1].i64[1] = (v3 + 4) & 0xF;
  v10.val[2].i64[0] = (v3 + 3) & 0xF;
  v10.val[2].i64[1] = (v3 + 2) & 0xF;
  v10.val[3].i64[0] = (v3 + 1) & 0xF;
  v10.val[3].i64[1] = v3 & 0xF;
  v8.n128_u64[0] = 0x6F6F6F6F6F6F6F6FLL;
  v8.n128_u64[1] = 0x6F6F6F6F6F6F6F6FLL;
  return (*(v4 + 8 * a1))(0, a2 - 15, (v3 + 14) & 0xF, (v3 & 0x10) - 16, ((a1 ^ 0x83) + 8692) | 0x4403u, (((a1 ^ 0x83) + 8692) | 0x4403u) - 50464, a3, v5, v6, v7, xmmword_100BC76B0, vqtbl4q_s8(v10, xmmword_100BC76B0), v8);
}

uint64_t sub_10023251C()
{
  *v1 = v4;
  v7 = *(v0 + 8);
  v8 = v2 + v7 - 0x3CE25E0EC5200375;
  if (v2 + v7 - 0x3CE25E0EC5200378 >= 0)
  {
    v8 = v2 + v7 - 0x3CE25E0EC5200378;
  }

  v9 = (*(v6 + ((((v3 - 5518) | 0x283u) + 52) & LOBYTE(STACK[0x2BC]))) % (((v8 >> 2) - ((2 * (v8 >> 2)) & 0xC7454F2A) - 475879531) ^ 0xE3A2A795) + 43) & 0x1FC;
  v10 = ((v7 ^ 0xF2075666) - 925324574) ^ v7 ^ ((v7 ^ 0x6BD1BABC) + 1359889980) ^ ((v7 ^ 0x139980D6) + 692485202) ^ ((v7 ^ 0x4F6F6F74) + 1974506484);
  return (*(v5 + 8 * ((52371 * ((((v10 ^ 0x51D88065) - 1543263238) ^ ((v10 ^ 0x5009B52) - 254037809) ^ ((v10 ^ 0x91F8184F) + 1680028628)) - (((v9 ^ 0xA85A5097) - 1788109037) ^ ((v9 ^ 0x5F06B1CD) + 1647803977) ^ ((v9 ^ 0xF75CE15A) - 898814240)) + 204908168 < 0x7FFFFFFF)) ^ v3)))();
}

uint64_t sub_10023272C(uint64_t a1, int8x16_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, double a8, __n128 a9, __n128 a10, __n128 a11, int8x16_t a12, double a13, int8x16_t a14)
{
  v20 = v17 & 0xF;
  v22.i64[0] = vqtbl4q_s8(*(&a9 - 1), a12).u64[0];
  *&v22.i64[1] = a13;
  v23 = vrev64q_s8(vmulq_s8(v22, a14));
  *a2 = veorq_s8(veorq_s8(veorq_s8(veorq_s8(*(v15 + v20 - 15), *a2), *(v14 + v20 - 15)), *(v16 + a6 + v20 - 15)), vextq_s8(v23, v23, 8uLL));
  return (*(v19 + 8 * ((((a5 | a4) >= 0) * a7) ^ v18)))(a1, a2 - 1, a3, a4 - 16, a5 + 16);
}

uint64_t sub_100232878(uint64_t a1, char a2, uint64_t a3, int a4, int a5, int8x16_t a6, int8x8_t a7, int8x8_t a8)
{
  v16.val[0].i64[0] = (v11 + a1 - 1) & 0xF;
  v16.val[0].i64[1] = (v11 + a1 + 14) & 0xF;
  v16.val[1].i64[0] = (v11 + a1 + 13) & 0xF;
  v16.val[1].i64[1] = (v11 + a1 + 12) & 0xF;
  v16.val[2].i64[0] = (v11 + a1 + 11) & 0xF;
  v16.val[2].i64[1] = (a2 + a1 + v12) & 0xF;
  v16.val[3].i64[0] = (v11 + a1 + 9) & 0xF;
  v16.val[3].i64[1] = (v11 + a1) & 0xF ^ 8;
  *(a3 + a1) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a3 + a1), *(v9 + v16.val[0].i64[0] - 7)), veor_s8(*(v8 + v16.val[0].i64[0] + 1 - 7), *(v10 + v16.val[0].i64[0] + 1 - 7)))), a8), vmul_s8(*&vqtbl4q_s8(v16, a6), a7)));
  return (*(v14 + 8 * (((v13 != a1) * a5) ^ a4)))(a1 - 8);
}

uint64_t sub_10023297C@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, __int16 a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v32 = (((v24 - 2 * (v24 & 0xF) - 1009) ^ v16) + v17) ^ (((v24 - 2 * (v24 & 0xF) - 1009) ^ v19) + 3554) ^ (((v24 - 2 * (v24 & 0xF) - 1009) ^ v18) + v30);
  v33 = a1 + (a9 + v20);
  v34 = (v33 ^ a4) & (2 * (v33 & a3)) ^ v33 & a3;
  v35 = ((2 * (v33 ^ a2)) ^ a5) & (v33 ^ a2) ^ (2 * (v33 ^ a2)) & a6;
  v36 = v35 ^ a7;
  v37 = (v35 | 0x400000) & (4 * v34) ^ v34;
  v38 = ((4 * v36) ^ a8) & v36 ^ (4 * v36) & v31;
  v39 = (v38 ^ 0x702000) & (16 * v37) ^ v37;
  v40 = ((16 * (v38 ^ 0xC0923)) ^ 0x7C29270) & (v38 ^ 0xC0923) ^ (16 * (v38 ^ 0xC0923)) & 0x7C2920;
  v41 = v39 ^ 0x7C2927 ^ (v40 ^ 0x400000) & (v39 << 8);
  v42 = (v41 << 16) & 0x7C0000 ^ v41 ^ ((v41 << 16) ^ 0x29270000) & (((v40 ^ 0x3C2907) << 8) & 0x7C0000 ^ 0x540000 ^ (((v40 ^ 0x3C2907) << 8) ^ 0x7C290000) & (v40 ^ 0x3C2907));
  v43 = 1603510583 * (&a15 ^ 0x97DB32AB);
  LODWORD(a16) = v43 + v27;
  HIDWORD(a16) = v43 ^ v33 ^ (2 * v42) ^ 0x291446CA;
  WORD2(a15) = -24265 * (&a15 ^ 0x32AB) - 22130;
  LOWORD(a15) = a9 - -24265 * (&a15 ^ 0x32AB) + v29 + v32;
  (*(v25 + 8 * v26))(&a15);
  *(v28 - 9) = WORD1(a15);
  *v28 = *v23;
  return (*(v25 + 8 * (((v21 == 0) * v22) ^ HIDWORD(a14))))(470768147, 3817639113, 1091054, 3819734477, 9982542, 3942694, 272673, 32547996, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_100232B98()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * (v0 - 4716));
  return (*(v1 + 8 * (v0 - 2508)))();
}

void sub_100232CE8(uint64_t a1)
{
  v1 = *(a1 + 24) - 155453101 * ((-2 - ((a1 | 0x3B130711) + (~a1 | 0xC4ECF8EE))) ^ 0x22CAE321);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100232DC4@<X0>(int a1@<W0>, unsigned int a2@<W1>, int a3@<W2>, char a4@<W3>, int a5@<W4>, int a6@<W6>, unsigned int a7@<W7>, int a8@<W8>)
{
  v19 = (*v10 + a7);
  v20 = (*v10 + (a6 + a1));
  v21 = *v19;
  v22 = *(*v18 + (*v17 & a2));
  v23 = ((((v22 ^ v19) & 0x7FFFFFFF) * a3) ^ ((((v22 ^ v19) & 0x7FFFFFFF) * a3) >> 16)) * a3;
  v24 = ((((v22 ^ v20) & 0x7FFFFFFF) * a3) ^ ((((v22 ^ v20) & 0x7FFFFFFF) * a3) >> 16)) * a3;
  *v20 = *(v8 + (v23 >> 24)) ^ v21 ^ *(v15 + (v23 >> 24)) ^ *((v23 >> 24) + v16 + 3) ^ *(v8 + (v24 >> 24)) ^ *(v15 + (v24 >> 24)) ^ *((v24 >> 24) + v16 + 3) ^ v23 ^ v24 ^ (BYTE3(v23) * a4) ^ (BYTE3(v24) * a4);
  return (*(v14 + 8 * (((a8 + v13 + (v11 | v12) == 1263379546) * a5) ^ v9)))();
}

uint64_t sub_100232F00@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v7 = ((((a1 - 1668658744) & 0x6375F7F9u) - 488) ^ 0x3FFFFFFFC159D5DFLL) + v4;
  v8 = *(*(a2 + 8) + 4 * v7);
  v9 = *(*(v2 + 8) + 4 * v7);
  LODWORD(v7) = (((v8 ^ 0x89980F03) + 1986523389) ^ ((v8 ^ 0x632490AB) - 1663340715) ^ ((v8 ^ 0xDC6371AD) + 597462611)) + v5;
  v10 = (((v9 ^ 0x98DBD025) + 1730424795) ^ ((v9 ^ 0x7A5A07AB) - 2052720555) ^ ((v9 ^ 0xD45E398B) + 732022389)) + v5;
  v11 = v7 < v6;
  v12 = v7 > v10;
  if (v11 != v10 < v6)
  {
    v12 = v11;
  }

  return (*(v3 + 8 * ((388 * !v12) ^ a1)))();
}

uint64_t sub_10023302C@<X0>(uint64_t a1@<X1>, int a2@<W3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, int a6@<W7>, uint64_t a7@<X8>)
{
  v10 = (a3 ^ a5 ^ a1) + v8;
  v11 = *(v7 + v10 - 15);
  v12 = *(v7 + v10 - 31);
  v13 = a7 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v9 + 8 * (((a4 == a3) * a6) ^ a2)))();
}

uint64_t sub_100233188(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0xB218] - 0x47D94FA29F465F09 + (((v2 ^ 0xE795F7A87D344B3FLL) + 0x186A085782CBB4C1) ^ ((v2 ^ 0x63B13A688405962CLL) - 0x63B13A688405962CLL) ^ ((v2 ^ 0x8424CDC010E41A02) + 0x7BDB323FEF1BE5FELL)) + 0x186468005;
  v4 = STACK[0xB210] - 0x5EEC053B4A90354;
  v5 = v3 < 0x9C70B8F4;
  v6 = v3 > v4;
  if (v4 < 0x9C70B8F4 != v5)
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((125 * !v6) ^ (STACK[0xF10] + 12404))))(a1, a2, 371891407);
}

uint64_t sub_100233300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] - 34820;
  v8 = STACK[0x88D8] + 16 * STACK[0xAFD0];
  *(v8 + 8) = LODWORD(STACK[0x9894]) ^ 0x981390CC6385557;
  *(a7 + 25) = v8 + 8;
  return (*(STACK[0xF18] + 8 * (v7 ^ 0x1FE6)))();
}

uint64_t sub_10023336C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  STACK[0x2688] = a8;
  STACK[0x1488] = &STACK[0x8DC0];
  STACK[0x5D28] = &STACK[0x177C];
  LODWORD(STACK[0x4704]) = -819118015;
  return (*(STACK[0xF18] + 8 * (v8 ^ 0xD3AB9B76)))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_100233410@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  *v2 = a1;
  *(v2 + 8) = 0;
  *(v2 + 20) = v4;
  *(v2 + 24) = 1497668694;
  *(v2 + 32) = 0;
  *(v2 + 40) = -758299001;
  *(v2 + 16) = v4;
  STACK[0x6D70] = v2;
  return (*(STACK[0xF18] + 8 * ((38902 * (v3 == a2 - 371880939)) ^ a2)))();
}

void sub_1002334D0(uint64_t a1)
{
  v1 = *(a1 + 16) ^ (1603510583 * ((2 * (a1 & 0xCCA5A918) - a1 + 861558503) ^ 0xA481644C));
  v2 = (0xC4A3722CE8B1FA42 - (*(a1 + 32) & 0xA25129145450A921)) & 0xA25129145450A921 | *(a1 + 32) & 0x15249242A12A424ALL | (0x111E8D5A1D0F3938 - (*(a1 + 32) & 0x488A44A90A851494)) & ((v1 - 727000532) ^ 0x488A44A90A85DC20);
  v4 = ((v2 ^ 0xFBDFFDFFFFFFBFF0) & &v3 | (v2 ^ 0x420020000004008) & ~&v3) + 2 * ((v2 ^ 0x420020000004008) & &v3);
  v3 = v4 + 121923738;
  __asm { BRAA            X2, X17 }
}

uint64_t sub_10023368C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, int a48)
{
  v50 = v48 ^ 0xA82FF53C;
  v51 = ((v48 ^ 0xA82FF53C) - 704319097) & 0x29FAFE69;
  v52 = a48 - 67717408 < (((v48 ^ 0xA82FF53C) + 720526847) & 0xD50DF7CE) + 1429901092;
  v53 = a48 - 67717408 > (a40 - 67717408);
  if ((a40 - 67717408) < 0x553B532A != v52)
  {
    v53 = v52;
  }

  return (*(v49 + 8 * ((v53 * (v51 ^ 0x5E56)) ^ v50)))();
}

uint64_t sub_100233A6C@<X0>(int a1@<W8>)
{
  if (v2 == v4)
  {
    v5 = v1;
  }

  else
  {
    v5 = 371891374;
  }

  return (*(v3 + 8 * (((v5 == (a1 ^ 0x5B) - 371886512) * (a1 - 20546)) ^ a1)))();
}

uint64_t sub_100233AB4(__n128 a1)
{
  v5.n128_u64[0] = (v1 + 13) & 0xF;
  v5.n128_u64[1] = (v1 + 12) & 0xF;
  v6.n128_u64[0] = (v1 + 11) & 0xF;
  v6.n128_u64[1] = (v1 + 10) & 0xF;
  v7.n128_u64[0] = (v1 + 9) & 0xF;
  v7.n128_u64[1] = v2 & 0xF ^ 0xBLL;
  v10.val[0].i64[0] = (v1 + 7) & 0xF;
  v10.val[0].i64[1] = (v1 + 6) & 0xF;
  v10.val[1].i64[0] = (v1 + 5) & 0xF;
  v10.val[1].i64[1] = (v1 + 4) & 0xF;
  v10.val[2].i64[0] = (v1 + 3) & 0xF;
  v10.val[2].i64[1] = (v1 + 2) & 0xF;
  v10.val[3].i64[0] = (v1 + 1) & 0xF;
  v10.val[3].i64[1] = v1 & 0xF;
  v8.n128_u64[0] = 0x2929292929292929;
  v8.n128_u64[1] = 0x2929292929292929;
  return (*(v4 + 8 * v3))((v1 + 14) & 0xF, (v3 + 36528) | 0xA01u, v1 - 16, (v2 & 0x10) - 16, ((v3 + 36528) | 0xA01u) - 51782, 31660, a1, v5, v6, v7, xmmword_100BC76B0, vqtbl4q_s8(v10, xmmword_100BC76B0), v8);
}

uint64_t sub_100233C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, char a19)
{
  v21 = (a12 + 782509242) ^ 0x39B5D950;
  v22 = (((a12 + 782509242) & 0xB8771B5F ^ 0x81C2C20F) << (a19 ^ 0x8E)) & 0x1C2020E ^ (a12 + 782509242) & 0xB8771B5F ^ 0x81C2C20F ^ ((((a12 + 782509242) & 0xB8771B5F ^ 0x81C2C20F) << (a19 ^ 0x8E)) ^ 0x385841E) & v21;
  v23 = ((2 * v21) ^ 0x385841E) & v21 ^ (2 * v21) & 0x81C2C20E;
  v24 = v22 ^ v23 & 0x699024BE ^ ((4 * v22) ^ 0x689B2CBA) & (v23 ^ 0x180800F);
  v25 = ((4 * v23) ^ 0x6F922486) & (v23 ^ 0x180800F) ^ v23 & 0x699024BE;
  v26 = v24 ^ v25 & 0x699024BE ^ ((16 * v24) ^ 0x75BC044E) & (v25 ^ 0x180000F);
  v27 = ((16 * v25) ^ 0x7190245E) & (v25 ^ 0x180000F) ^ v25 & 0x699024BE;
  v28 = v26 ^ v27 & 0x699024BE ^ ((v26 << 8) ^ 0x2B5225BE) & (v27 ^ 0x180000F);
  v29 = ((v27 << 8) ^ 0xE9902ABE) & (v27 ^ 0x180000F) ^ v27 & 0x699024BE;
  v30 = (a12 + 782509242) ^ (2 * (v28 ^ v29 & 0x699024BE ^ ((v28 << 16) ^ 0xAB9F24BE) & (v29 ^ 0x420000) ^ ((v28 << 16) ^ 0xAB9F24BE) & 0x1C2000E));
  v32 = v30 != -1192059043 && (((v19 ^ 0x652D) - 7876) & v30) == 13;
  return (*(v20 + 8 * ((2047 * v32) ^ v19)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_100233E18@<X0>(uint64_t a1@<X8>)
{
  v4 = (*(v3 + 8 * (v1 + 38581)))(*(a1 + 8));
  *(STACK[0x730] + 8) = 0;
  return (*(v2 + 8 * v1))(v4, &off_1010A0B50);
}

uint64_t sub_100233E60(uint64_t a1, uint64_t a2)
{
  v8 = *v6;
  v9 = (a2 + v3);
  *v9 = *(v6 - 1);
  v9[1] = v8;
  return (*(v7 + 8 * ((60 * (((v4 == 0) ^ v5) & 1)) ^ v2)))();
}

int *sub_100233EA0(int *result)
{
  if (((result[2] - -75 * ~((result | 0x99) - result + (result & 0x66))) & 2) != 0)
  {
    v1 = -371865839;
  }

  else
  {
    v1 = 371891364;
  }

  *result = v1;
  return result;
}

uint64_t sub_100233F2C(uint64_t a1, int a2)
{
  v12 = v6 < v9;
  *(v10 + v8) = *(v3 + (v8 & 0xF)) ^ *(v2 + v8) ^ (v7 + 42) ^ *(v4 + (v8 & 0xF)) ^ (-77 * (v8 & 0xF)) ^ *((v8 & 0xF) + v5 + 3);
  if (v12 == v8 + 1 > 0x3CECEB99)
  {
    v12 = v8 - 1022159769 < v6;
  }

  return (*(v11 + 8 * ((v12 * a2) ^ v7)))(v7 + 32302);
}

void sub_100233FC8(uint64_t a1)
{
  v4 = *a1 == 0x217E172EFA1E81CLL || *(a1 + 48) == 0 || *(a1 + 40) == 0;
  v1 = *(a1 + 12) - 634647737 * ((2 * (a1 & 0xACA7C108) - a1 + 1398292215) ^ 0x3ECE110B);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10023413C(int *a1)
{
  v6 = *a1;
  v7 = 1022166737 * ((((v5 - 120) | 0x3F6DE278) - ((v5 - 120) | 0xC0921D87) - 1064166009) ^ 0x857D03EA);
  *(v5 - 120) = v3;
  *(v5 - 112) = v6 - v1 - v7 + (((v4 - 11033) | 0x900) ^ 0xD66BEFF);
  *(v5 - 108) = v7 + v4 + 3006;
  v8 = (*(v2 + 8 * (v4 ^ 0xBB64)))(v5 - 120);
  return (*(v2 + 8 * (((*(v5 - 104) == 1497668682) * ((v4 + 397241924) & 0xE8522AF1 ^ 0xAD6)) ^ v4)))(v8);
}

uint64_t sub_100234250(__n128 a1)
{
  v5.n128_u64[0] = (v1 + 13) & 0xF;
  v5.n128_u64[1] = (v1 + 12) & 0xF;
  v6.n128_u64[0] = (v1 + 11) & 0xF;
  v6.n128_u64[1] = (v1 + 10) & 0xF;
  v7.n128_u64[0] = (v1 + 9) & 0xF;
  v7.n128_u64[1] = v3 & 0xF ^ 4;
  v11.val[0].i64[0] = (v1 + 7) & 0xF;
  v11.val[0].i64[1] = (v1 + 6) & 0xF;
  v11.val[1].i64[0] = (v1 + 5) & 0xF;
  v11.val[1].i64[1] = (v1 + 4) & 0xF;
  v11.val[2].i64[0] = (v1 + 3) & 0xF;
  v11.val[2].i64[1] = (v1 + 2) & 0xF;
  v11.val[3].i64[0] = (v1 + 1) & 0xF;
  v11.val[3].i64[1] = v1 & 0xF;
  v8.n128_u64[0] = 0x3D3D3D3D3D3D3D3DLL;
  v8.n128_u64[1] = 0x3D3D3D3D3D3D3D3DLL;
  v9.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v9.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  return (*(v4 + 8 * v2))((v1 + 14) & 0xF, 5611 * (v2 ^ 0x3187u), (5611 * (v2 ^ 0x3187u)) ^ 0x2BC6, 34983, a1, v5, v6, v7, xmmword_100BC76B0, vqtbl4q_s8(v11, xmmword_100BC76B0), v8, v9);
}

uint64_t sub_10023440C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v67 + 31) = 67;
  *(v67 + 29) = 8445;
  *(v67 + 25) = 564146968;
  *(v67 + 17) = 0x3F4CE92E26D5ADE4;
  *v65 = -44;
  return (*(v66 + 8 * (((a4 ^ 0x4062D073) + 1080175271) ^ a4 ^ (20245 * (a4 > 0xE84FE4D6)))))(a1, a2, a3, a65);
}

uint64_t sub_10023457C()
{
  v3 = ((((*(v7 + 6) + v6) ^ 0x46038E4F) - 1174638159) ^ (((*(v7 + 6) + v6) ^ 0xDDEDDC9E) + 571614050) ^ (((*(v7 + 6) + v6) ^ 0x19967B5B) - 429292379)) - 502508855;
  v4 = 353670337 * ((~v11 & 0x7EDEA39A | v11 & 0x81215C60) ^ 0xCAFF5BA7);
  v12 = *v7;
  v15 = v3 ^ v4;
  v16 = -27455 * ((~v11 & 0xA39A | v11 & 0x5C60) ^ 0x5BA7) + 518;
  v19 = (v8 ^ 0xFFEFF9CE) - v4 + ((2 * v8) & 0xFFDFF39C) + 2006974454;
  v11[1] = v4 + 705408226 + v2;
  v17 = v0;
  v18 = &v9;
  v14 = &v10 ^ 0x5DF2F71386CDF5DLL;
  v13 = v4 ^ 0x8294657F;
  result = (*(v1 + 8 * (v2 + 37328)))(v11);
  *(v7 + 10) = v11[0];
  return result;
}

uint64_t sub_100234D48()
{
  v0 = (STACK[0xF10] + 379416508) & 0xE9623D1D;
  v1 = STACK[0xF10] - 34051;
  v2 = STACK[0xF18];
  STACK[0x16D8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x25BF ^ v0)))();
}

uint64_t sub_100234E0C@<X0>(int a1@<W8>)
{
  v2 = STACK[0x398];
  v3 = STACK[0x330];
  v3[15] = *(STACK[0x398] + 15);
  v3[14] = v2[14];
  v3[13] = v2[13];
  v3[12] = v2[12];
  v3[11] = v2[11];
  v3[10] = v2[10];
  v3[9] = v2[9];
  v3[8] = v2[8];
  v3[7] = v2[7];
  v3[6] = v2[6];
  v3[5] = v2[5];
  v3[4] = v2[4];
  v3[3] = v2[3];
  v3[2] = v2[2];
  v3[1] = v2[1];
  *v3 = *v2;
  return (*(v1 + 8 * ((2665 * (LODWORD(STACK[0x344]) == ((((a1 + 1475517192) & 0xA80CFFD3) - 371867377) ^ (a1 - 25892)))) ^ a1)))();
}

uint64_t sub_100234F3C()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0x47DC)))(v1 ^ 0xE9D5C711);
  return (*(v2 + 8 * (v0 - 23505)))(v3);
}

uint64_t sub_100234F78(__n128 a1)
{
  v5.n128_u64[0] = (v1 + 13) & 0xF;
  v5.n128_u64[1] = (v1 + 12) & 0xF;
  v6.n128_u64[0] = (v1 + 11) & 0xF;
  v6.n128_u64[1] = (v1 + 10) & 0xF;
  v7.n128_u64[0] = (v1 + 9) & 0xF;
  v7.n128_u64[1] = v2 & 0xF ^ 2;
  v10.val[0].i64[0] = (v1 + 7) & 0xF;
  v10.val[0].i64[1] = (v1 + 6) & 0xF;
  v10.val[1].i64[0] = (v1 + 5) & 0xF;
  v10.val[1].i64[1] = (v1 + 4) & 0xF;
  v10.val[2].i64[0] = (v1 + 3) & 0xF;
  v10.val[2].i64[1] = (v1 + 2) & 0xF;
  v10.val[3].i64[0] = (v1 + 1) & 0xF;
  v10.val[3].i64[1] = v1 & 0xF;
  v8.n128_u64[0] = 0xA9A9A9A9A9A9A9A9;
  v8.n128_u64[1] = 0xA9A9A9A9A9A9A9A9;
  return (*(v4 + 8 * v3))((v1 + 14) & 0xF, v1 - 16, (v2 & 0x10) - 16, ((v3 - 25865) | 0xAC86) ^ 0xACEEu, a1, v5, v6, v7, xmmword_100BC76B0, vqtbl4q_s8(v10, xmmword_100BC76B0), v8);
}

uint64_t sub_1002351AC()
{
  LODWORD(STACK[0x162C]) = 0;
  v4 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v3 + 2660)))(&STACK[0x4328], &STACK[0xC4D0] + v0, 32);
  v5 = &STACK[0xC4D0] + v1;
  v6 = &STACK[0xC4D0] + v1 + 32;
  *(v2 + 3128) = ((51 * (v3 ^ 0xC1BFu)) ^ 0x6086) + v0;
  LODWORD(STACK[0x2354]) = 0;
  (*(v4 + 8 * (v3 ^ 0xA9C)))(&STACK[0xC4D0] + v0, v5, 32);
  (*(v4 + 8 * (v3 + 2844)))(v5, 0, 0, 0, 0, 0, &STACK[0x7164], 0);
  v7 = *(*(&off_1010A0B50 + v3 - 46797) - 751134030);
  LOBYTE(STACK[0xC42A]) = *v7 - 74;
  LOBYTE(STACK[0xC42B]) = v7[1] - 74;
  LOBYTE(STACK[0xC42C]) = v7[2] - 74;
  LOBYTE(STACK[0xC42D]) = v7[3] - 74;
  LOBYTE(STACK[0xC42E]) = v7[4] - 74;
  LOBYTE(STACK[0xC42F]) = v7[5] - 74;
  LOBYTE(STACK[0xC430]) = -14 * (v3 ^ 0xB) + v7[6] + 106;
  LOBYTE(STACK[0xC431]) = v7[7] - 74;
  LOBYTE(STACK[0xC432]) = v7[8] - 74;
  LOBYTE(STACK[0xC433]) = v7[9] - 74;
  LOBYTE(STACK[0xC434]) = v7[10] - 74;
  LOBYTE(STACK[0xC435]) = v7[11] - 74;
  LOBYTE(STACK[0xC436]) = v7[12] - 74;
  LOBYTE(STACK[0xC437]) = v7[13] - 74;
  LOBYTE(STACK[0xC438]) = v7[14] - 74;
  LOBYTE(STACK[0xC439]) = v7[15] - 74;
  (*(v4 + 8 * (v3 + 2660)))(&STACK[0xC4D0] + v0, v6, 32);
  STACK[0x10EF0] = &STACK[0x5568];
  LODWORD(STACK[0x10ED8]) = v3 + 1022166737 * ((~(&STACK[0x10000] + 3800) & 0x425DDA0D | (&STACK[0x10000] + 3800) & 0xBDA225F0) ^ 0xF84D3B9F) - 20949;
  STACK[0x10EE0] = &STACK[0xC42A];
  STACK[0x10EE8] = v6;
  v8 = (*(v4 + 8 * (v3 ^ 0xBE3)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * ((46 * (LOBYTE(STACK[0x10EDC]) != 38)) ^ v3)))(v8);
}

uint64_t sub_100235420(int a1)
{
  v4 = v2 < 0xA70B5F36;
  if (v4 == v1 + 1 > ((10 * (((a1 - 2202) | 0x89A) ^ 0x2EDDu)) ^ 0xFFFFFFFF58F48A57))
  {
    v4 = v1 + 2802540343 < v2;
  }

  return (*(v3 + 8 * ((39 * !v4) ^ (a1 + 24483))))();
}

uint64_t sub_10023554C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = STACK[0x230];
  *v69 = 0x61F981C673EEA0D7;
  v69[1] = 0x6F5F55FDBAE0F62DLL;
  v70 = STACK[0x3F8] + 8;
  v71 = 139493411 * ((((v67 - 176) | 0x9BF16DEF) - (v67 - 176) + ((v67 - 176) & 0x640E9210)) ^ 0x97DC8CAA);
  *(v67 - 152) = STACK[0x260];
  *(v67 - 144) = a1;
  *(v67 - 160) = v71 + ((2 * v65) ^ 0xEB40) + (a65 ^ 0xE87DEFDA) + ((2 * a65) & 0xD0FBDFB4) + 1065550002;
  *(v67 - 136) = (v65 + 34080) ^ v71;
  *(v67 - 176) = v69;
  *(v67 - 168) = v70;
  v72 = a1;
  (*(v68 + 8 * (v65 ^ 0xF7EE)))(v67 - 176);
  v73 = v72;
  LODWORD(v72) = *(v67 - 132);
  LODWORD(STACK[0x518]) = v72;
  return (*(v68 + 8 * (((v72 == v66) * ((4 * v65) ^ 0x6772)) ^ v65)))(v73);
}

uint64_t sub_100235678@<X0>(int a1@<W8>)
{
  v3 = a1 ^ 0x2F90;
  v4 = (*(v2 + 8 * (a1 ^ 0xFFFB)))(v1);
  return (*(v2 + 8 * v3))(v4);
}

uint64_t sub_100235710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (v8 == (((a8 + 268423789) | 0x28B8E0C5) ^ 0xD16D25D6))
  {
    v9 = LODWORD(STACK[0x450C]);
  }

  else
  {
    v9 = v8;
  }

  return (*(STACK[0xF18] + 8 * a8))(a1, a2, v9);
}

uint64_t sub_100235754()
{
  v3 = LODWORD(STACK[0x7EC]) > ((v0 - 14995) | 0x102u) - 929035970;
  if ((v1 + 650526209) < 0x375FF1A6 == v3)
  {
    v3 = v1 + 650526209 < LODWORD(STACK[0x7EC]) + ((v0 + 15043) ^ 0x375F88C9u);
  }

  return (*(v2 + 8 * ((28 * v3) ^ v0)))();
}

uint64_t sub_100235A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11)
{
  v13 = *a11 << (-122 * ((v12 + 65) ^ 0x79) - 40);
  v14 = (((*a11 << 24) ^ 0x464BD2D) & ~(v13 & (v12 ^ 0x644430)) | v13 & 0x9B0000) ^ 0x464BD2D | (*a11 >> 8) & 0xFF00;
  return (*(v11 + 8 * ((167 * (((HIBYTE(*a11) ^ 0xC4D4A101) & ~v14 | v14 & 0x3B2B5E2C) == 237640639)) ^ (v12 - 4287))))();
}

uint64_t sub_100235AE4()
{
  v1 = STACK[0xF10] - 26551;
  *(STACK[0xB2A8] + 56) = v0 ^ 0xE9D5C711;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100235B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char *a22, char *a23, uint64_t a24, char a25, uint64_t a26, char a27, uint64_t a28, char a29, uint64_t a30, char a31)
{
  a22 = &a20;
  a23 = &a29;
  *(v34 - 144) = &a22;
  *(v34 - 128) = a19;
  *(v34 - 136) = v32 - 27154 - 1112314453 * ((v34 - 144 - 2 * ((v34 - 144) & 0x209937F8) - 1600571393) ^ 0x4FCF1D26);
  (*(v31 + 8 * (v32 + 7122)))(v34 - 144);
  *(v34 - 144) = &a31;
  *(v34 - 120) = &a27;
  *(v34 - 112) = &a22;
  *(v34 - 128) = a19;
  *(v34 - 136) = (v32 - 37111) ^ (906386353 * ((v34 - 144 - 2 * ((v34 - 144) & 0x2910D4C8) + 688968906) ^ 0x181119EE));
  (*(v31 + 8 * (v32 ^ 0x6500)))(v34 - 144);
  *(v34 - 144) = a23;
  *(v34 - 136) = v32 - 9747 + 1112314453 * ((v34 - 144) ^ 0xEF562AD9);
  *(v34 - 128) = &a31;
  *(v34 - 120) = &a31;
  *(v34 - 112) = &a22;
  *(v34 - 104) = a19;
  (*(v31 + 8 * (v32 ^ 0x65B8)))(v34 - 144);
  *(v34 - 136) = (v32 - 26799) ^ (634647737 * ((((v34 - 144) | 0xF826705F) - ((v34 - 144) & 0xF8267058)) ^ 0x95B05FA3));
  *(v34 - 128) = &a31;
  *(v34 - 120) = a12;
  *(v34 - 112) = a19;
  *(v34 - 104) = &a31;
  *(v34 - 144) = &a22;
  (*(v31 + 8 * (v32 + 7500)))(v34 - 144);
  *(v34 - 128) = v33;
  *(v34 - 136) = v32 - 27154 - 1112314453 * ((((2 * (v34 - 144)) | 0xCC2D9582) - (v34 - 144) - 1712769729) ^ 0x8940E018);
  *(v34 - 144) = &a22;
  (*(v31 + 8 * (v32 ^ 0x646E)))(v34 - 144);
  *(v34 - 136) = (v32 - 37111) ^ (906386353 * ((((v34 - 144) | 0xEE05C52) - ((v34 - 144) & 0xEE05C50)) ^ 0x3FE19176));
  *(v34 - 144) = &a25;
  *(v34 - 112) = &a22;
  *(v34 - 128) = v33;
  *(v34 - 120) = &a27;
  (*(v31 + 8 * (v32 ^ 0x6500)))(v34 - 144);
  v35 = a23;
  *(v34 - 136) = v32 - 9747 + 1112314453 * ((((v34 - 144) | 0x74B595F9) - (v34 - 144) + ((v34 - 144) & 0x8B4A6A00)) ^ 0x9BE3BF20);
  *(v34 - 144) = v35;
  *(v34 - 112) = &a22;
  *(v34 - 104) = v33;
  *(v34 - 128) = &a25;
  *(v34 - 120) = &a25;
  (*(v31 + 8 * (v32 ^ 0x65B8)))(v34 - 144);
  *(v34 - 128) = &a25;
  *(v34 - 120) = a13;
  *(v34 - 144) = &a22;
  *(v34 - 136) = (v32 - 26799) ^ (634647737 * ((((v34 - 144) | 0x4E930C19) - ((v34 - 144) | 0xB16CF3E6) - 1318259738) ^ 0x230523E5));
  *(v34 - 112) = v33;
  *(v34 - 104) = &a25;
  (*(v31 + 8 * (v32 ^ 0x63F4)))(v34 - 144);
  *(v34 - 144) = &a25;
  *(v34 - 136) = &a31;
  *(v34 - 128) = (v32 - 5511) ^ (353670337 * ((v34 - 144 - 2 * ((v34 - 144) & 0x19390008) + 423165966) ^ 0xAD18F833));
  (*(v31 + 8 * (v32 + 7029)))(v34 - 144);
  *(v34 - 132) = (v32 + 462) ^ (17902189 * ((((v34 - 144) | 0x510D2FFD) - (v34 - 144) + ((v34 - 144) & 0xAEF2D000)) ^ 0xDF4239ED));
  *(v34 - 144) = &a25;
  v36 = (*(v31 + 8 * (v32 + 7360)))(v34 - 144);
  return (*(v31 + 8 * ((219 * (((-51 * ((v32 - 112) & 0x77 ^ 0x64)) ^ (*(v34 - 136) < 0x3A0C475Fu)) & 1)) ^ v32)))(v36);
}

uint64_t sub_100236030(__n128 a1)
{
  v4.n128_u64[0] = (v1 + 13) & 0xF;
  v4.n128_u64[1] = (v1 + 12) & 0xF;
  v5.n128_u64[0] = (v1 + 11) & 0xF;
  v5.n128_u64[1] = (v1 + 10) & 0xF;
  v6.n128_u64[0] = (v1 + 9) & 0xF;
  v6.n128_u64[1] = v2 & 0xF ^ 0xBLL;
  v9.val[0].i64[0] = (v1 + 7) & 0xF;
  v9.val[0].i64[1] = (v1 + 6) & 0xF;
  v9.val[1].i64[0] = (v1 + 5) & 0xF;
  v9.val[1].i64[1] = (v1 + 4) & 0xF;
  v9.val[2].i64[0] = (v1 + 3) & 0xF;
  v9.val[2].i64[1] = (v1 + 2) & 0xF;
  v9.val[3].i64[0] = (v1 + 1) & 0xF;
  v9.val[3].i64[1] = v1 & 0xF;
  v7.n128_u64[0] = 0x1B1B1B1B1B1B1B1BLL;
  v7.n128_u64[1] = 0x1B1B1B1B1B1B1B1BLL;
  return (*(STACK[0x3B8] + 8 * v3))((v1 + 14) & 0xF, v1 - 16, a1, v4, v5, v6, xmmword_100BC76B0, vqtbl4q_s8(v9, xmmword_100BC76B0), v7);
}

uint64_t sub_100236220(int8x16_t a1, int8x16_t a2, int8x16_t a3, int32x4_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = vld4q_s8(v9);
  v12 = veorq_s8(v37.val[0], a1);
  v13 = vmovl_u8(*v12.i8);
  v14 = vmovl_u16(*v13.i8);
  v15 = vmovl_high_u16(v13);
  v16 = vmovl_high_u8(v12);
  v17 = vmovl_u16(*v16.i8);
  v18 = vmovl_high_u16(v16);
  v19 = veorq_s8(v37.val[1], a1);
  v20 = vmovl_high_u8(v19);
  v21 = vmovl_u8(*v19.i8);
  v22 = veorq_s8(v37.val[2], a1);
  _Q26 = vmovl_high_u8(v22);
  _Q25 = vmovl_u8(*v22.i8);
  v25 = vshll_n_s16(*_Q25.i8, 0x10uLL);
  __asm { SHLL2           V25.4S, V25.8H, #0x10 }

  v30 = vshll_n_s16(*_Q26.i8, 0x10uLL);
  __asm { SHLL2           V26.4S, V26.8H, #0x10 }

  v31 = vmovl_high_u8(v37.val[3]);
  v37.val[0] = vmovl_u8(*v37.val[3].i8);
  v37.val[3] = veorq_s8(vorrq_s8(vorrq_s8(_Q26, vshlq_n_s32(vmovl_high_u16(v31), 0x18uLL)), vorrq_s8(vshll_high_n_u16(v20, 8uLL), v18)), a3);
  v37.val[2] = veorq_s8(vorrq_s8(vorrq_s8(v30, vshlq_n_s32(vmovl_u16(*v31.i8), 0x18uLL)), vorrq_s8(vshll_n_u16(*v20.i8, 8uLL), v17)), a3);
  v37.val[1] = veorq_s8(vorrq_s8(vorrq_s8(_Q25, vshlq_n_s32(vmovl_high_u16(v37.val[0]), 0x18uLL)), vorrq_s8(vshll_high_n_u16(v21, 8uLL), v15)), a3);
  v37.val[0] = veorq_s8(vorrq_s8(vorrq_s8(v25, vshlq_n_s32(vmovl_u16(*v37.val[0].i8), 0x18uLL)), vorrq_s8(vshll_n_u16(*v21.i8, 8uLL), v14)), a3);
  v32 = veorq_s8(vandq_s8(v37.val[3], a2), (*&v18 & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
  v33 = veorq_s8(vandq_s8(v37.val[2], a2), (*&v17 & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
  v34 = veorq_s8(vandq_s8(v37.val[1], a2), (*&v15 & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
  v35 = veorq_s8(vandq_s8(v37.val[0], a2), (*&v14 & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
  *v11 = vaddq_s32(vsubq_s32(v37.val[0], vaddq_s32(v35, v35)), a4);
  v11[1] = vaddq_s32(vsubq_s32(v37.val[1], vaddq_s32(v34, v34)), a4);
  v11[2] = vaddq_s32(vsubq_s32(v37.val[2], vaddq_s32(v33, v33)), a4);
  v11[3] = vaddq_s32(vsubq_s32(v37.val[3], vaddq_s32(v32, v32)), a4);
  return (*(v10 + 8 * ((46411 * ((v8 + 865435739) > 0x83D3F8BA)) ^ (v8 + 18893))))(*(&off_1010A0B50 + ((v8 + 1424574914) & 0xAB16FFFF ^ 0x7DC8)) - 1827275347, a6, *(&off_1010A0B50 + ((v8 + 1424574914) & 0xAB16FFFF ^ 0x6BFE)) - 838186483, a8, 1430569086);
}

uint64_t sub_100236548@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v12 = v7 - 1;
  *(v9 + v12) = (v8 + v5) ^ *(v10 + v12) ^ *(v3 + (v12 & 0xF)) ^ *((v12 & 0xF) + v2 + 2) ^ -(v12 & 0xF | (32 * (v12 & 0xF))) ^ *(a2 + (v12 & 0xF)) ^ v6;
  return (*(v11 + 8 * (((v12 == 0) * a1) ^ v4)))();
}

uint64_t sub_100236684(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = (((a4 ^ 0x7256365B) - 1918252635) ^ ((a4 ^ 0x32F0A762) - 854632290) ^ ((a4 ^ ((a8 + 14933) | 0x41C) ^ 0xA9739234) + 1452059096)) + 235478809;
  v10 = (((a1 ^ 0x502E0987) - 1345194375) ^ ((a1 ^ 0x41D18060) - 1104248928) ^ ((a1 ^ 0xF82A4EF6) + 131445002)) + 235478809;
  v11 = v9 < 0x24335808;
  v12 = v9 > v10;
  if (v10 < 0x24335808 != v11)
  {
    v12 = v11;
  }

  return (*(v8 + 8 * ((4006 * v12) ^ (a8 - 21857))))();
}

uint64_t sub_100236794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(v22 - 136) = v21 - 193924789 * ((2 * ((v22 - 136) & 0x6028F2D0) - (v22 - 136) - 1613296344) ^ 0x296C3F4E) + 60366871;
  *(v22 - 128) = a19;
  (*(v20 + 8 * (v21 + 33713)))(v22 - 136);
  return (*(v20 + 8 * v21))(a20);
}

uint64_t sub_100236810(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int8x16_t a6, int8x8_t a7)
{
  v14.val[0].i64[0] = (v10 + a3 - 1) & 0xF;
  v14.val[0].i64[1] = (v10 + a3 + 14) & 0xF;
  v14.val[1].i64[0] = (v10 + a3 + 13) & 0xF;
  v14.val[1].i64[1] = (v10 + a3 + 12) & 0xF;
  v14.val[2].i64[0] = (v10 + a3 + (v11 ^ 0x55)) & 0xF;
  v14.val[2].i64[1] = (v10 + a3 + 10) & 0xF;
  v14.val[3].i64[0] = (v10 + a3 + 9) & 0xF;
  v14.val[3].i64[1] = (v10 + a3) & 0xF ^ 8;
  *(a4 + a3) = veor_s8(veor_s8(veor_s8(*(v8 + v14.val[0].i64[0] - 7), *(a4 + a3)), veor_s8(*(v14.val[0].i64[0] + v9 - 6), *(v7 + v14.val[0].i64[0] - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v14, a6), a7)));
  return (*(v12 + 8 * (((a2 != a3) * a5) ^ a1)))();
}

uint64_t sub_100236CD4(double a1, __n128 a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  a2.n128_u16[0] = 30583;
  a2.n128_u8[2] = 119;
  a2.n128_u8[3] = 119;
  a2.n128_u8[4] = 119;
  a2.n128_u8[5] = 119;
  a2.n128_u8[6] = 119;
  a2.n128_u8[7] = 119;
  return (*(v5 + 8 * (a5 ^ (a5 - 1357817395) ^ 0x50EEEE69 ^ (55432 * (a5 < 0x40636686)))))(xmmword_100F523B0, a2);
}

uint64_t sub_100236D5C()
{
  v5 = *(v2 + v1 * v3 + 36);
  v7 = v5 != 731661292 && (v0 ^ 0x54631E13u) + v5 < 0x80000003;
  return (*(v4 + 8 * ((v7 * ((v0 + 6426) ^ 0xBB00)) ^ v0)))();
}

void sub_100236E2C(uint64_t a1)
{
  if (*a1)
  {
    v2 = *(a1 + 8) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *(a1 + 24) + 1022166737 * ((2 * (a1 & 0x27CCC29F) - a1 + 1479753056) ^ 0xE223DCF2);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100236F6C(int a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, int8x16_t a6, int8x8_t a7, int8x8_t a8)
{
  v14.val[0].i64[0] = (v11 + a3 - 1) & 0xF;
  v14.val[0].i64[1] = (v11 + a3 + 14) & 0xF;
  v14.val[1].i64[0] = (a4 + a3) & 0xF;
  v14.val[1].i64[1] = (v11 + a3 + 12) & 0xF;
  v14.val[2].i64[0] = (v11 + a3 + 11) & 0xF;
  v14.val[2].i64[1] = (v11 + a3 + 10) & 0xF;
  v14.val[3].i64[0] = (v11 + a3 + 9) & 0xF;
  v14.val[3].i64[1] = (v11 + a3) & 0xF ^ 8;
  *(a5 + a3) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a5 + a3), *(v9 + v14.val[0].i64[0] - 7)), veor_s8(*(v8 + v14.val[0].i64[0] - 7), *(v14.val[0].i64[0] + v10 - 6)))), a8), vmul_s8(*&vqtbl4q_s8(v14, a6), a7)));
  return (*(v12 + 8 * ((127 * (a2 != a3)) ^ a1)))();
}

uint64_t sub_100237120(int8x16_t a1, int8x8_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v15.val[0].i64[0] = (v11 + a5 - 1) & 0xF;
  v15.val[0].i64[1] = (v11 + a5 + 14) & 0xF;
  v15.val[1].i64[0] = (v11 + a5 + ~a4) & 0xF;
  v15.val[1].i64[1] = (v11 + a5 + 12) & 0xF;
  v15.val[2].i64[0] = (v11 + a5 + 11) & 0xF;
  v15.val[2].i64[1] = (v11 + a5 + 10) & 0xF;
  v15.val[3].i64[0] = (v11 + a5 + 9) & 0xF;
  v15.val[3].i64[1] = (v11 + a5) & 0xF ^ 8;
  *(a6 + v11) = veor_s8(veor_s8(veor_s8(*(v8 + v15.val[0].i64[0] - 7), *(a7 + v11)), veor_s8(*(v15.val[0].i64[0] + v10 - 2), *(v15.val[0].i64[0] + v9 - 4))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v15, a1), a2)));
  return (*(v13 + 8 * (((v12 == a5) * a8) ^ a4)))();
}

uint64_t sub_10023721C@<X0>(int a1@<W0>, int a2@<W5>, int a3@<W8>, uint64_t a4, int a5, int a6, int a7, int a8, int a9, int a10, int a11, int a12, int a13, int a14, int a15, int a16, int a17, int a18, int a19, int a20, int a21, int a22, int a23, int a24, int a25, int a26, int a27, int a28, int a29, int a30, int a31, int a32, int a33, int a34, int a35, int a36, int a37, int a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, int a43, uint64_t a44, int a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v96 = a6 - a3;
  STACK[0x2C0] = 0x6899F562BD249E60;
  *(v87 + 220) = 0x8C899BE0F0A0EFB2;
  *(v87 + 212) = 0xCACE1D77E9491F98;
  *(v87 + 204) = 0xD42EB8F0742699D2;
  *(v87 + 236) = 0x1DBE113F59A4707;
  *(v87 + 228) = 0x592B6B0056CB48ELL;
  STACK[0x2E0] = 0xD2B70BC4036AD59BLL;
  STACK[0x2D8] = 0x5A5ED5EE40667CALL;
  STACK[0x308] = 0x9A1EDBA9B5DB92A3;
  STACK[0x330] = 0x3A1D2E93FD112D01;
  STACK[0x338] = 0x5AB47229780FB79FLL;
  STACK[0x348] = 0xC8E7080F897EE13ELL;
  STACK[0x320] = 0x459EBBEFC86B6496;
  STACK[0x340] = 0x319FD57DC6387703;
  STACK[0x328] = 0x82821DD9B03F2C89;
  LODWORD(STACK[0x2B0]) = -1605249457;
  LODWORD(STACK[0x284]) = 342917539;
  LODWORD(STACK[0x2BC]) = -1124443177;
  STACK[0x27C] = 0xF8CB6922774189E2;
  STACK[0x2B4] = 0xB8EF1778E7CE4CC4;
  STACK[0x2CC] = 0xBA797DE31E18B174;
  STACK[0x2EC] = 0x916CDFBA3A5F595BLL;
  LODWORD(STACK[0x2D4]) = 122889803;
  LODWORD(STACK[0x2C8]) = 2117360288;
  LODWORD(STACK[0x2F8]) = -1963920879;
  LODWORD(STACK[0x2F4]) = -1105045640;
  LODWORD(STACK[0x304]) = 249176167;
  LODWORD(STACK[0x2E8]) = 1974998472;
  STACK[0x2FC] = 0x8203F77E50094029;
  LODWORD(STACK[0x310]) = -686811859;
  LODWORD(STACK[0x31C]) = -54980166;
  STACK[0x314] = 0xA984486211D64CEALL;
  *(&a66 + (LODWORD(STACK[0x21C]) + 48)) = v94;
  *(&a66 + (LODWORD(STACK[0x218]) + 48)) = v90 - 1865863560;
  *(&a66 + (LODWORD(STACK[0x234]) + 48)) = v82;
  v97 = v86;
  *(&a66 + (a66 + 48)) = v86 ^ 0x1E6DBA41;
  *(&a66 + (a81 + 48)) = a8;
  *(&a66 + (a76 + 48)) = a28;
  *(&a66 + (a69 + 48)) = a34;
  *(&a66 + (a82 + 48)) = v89;
  *(&a66 + (LODWORD(STACK[0x230]) + 48)) = a21;
  *(&a66 + (LODWORD(STACK[0x214]) + 48)) = a27;
  *(&a66 + (LODWORD(STACK[0x208]) + 48)) = v90;
  *(&a66 + (a72 + 48)) = a9;
  *(&a66 + (a78 + 48)) = a2 - 1948894579;
  *(&a66 + (LODWORD(STACK[0x210]) + 48)) = v95 + v90 - 228832251;
  *(&a66 + (LODWORD(STACK[0x254]) + 48)) = a11 - a36;
  *(&a66 + (LODWORD(STACK[0x278]) + 48)) = a12 + 735379868;
  *(&a66 + (LODWORD(STACK[0x224]) + 48)) = a7;
  *(&a66 + (LODWORD(STACK[0x23C]) + 48)) = v83 ^ 0xF0233D99;
  *(&a66 + (a71 + 48)) = a24;
  *(&a66 + (a77 + 48)) = v84;
  *(&a66 + (LODWORD(STACK[0x26C]) + 48)) = a15;
  *(&a66 + (a70 + 48)) = a14 + v82;
  *(&a66 + (LODWORD(STACK[0x20C]) + 48)) = a31;
  *(&a66 + (a67 + 48)) = a1;
  *(&a66 + (LODWORD(STACK[0x240]) + 48)) = a16;
  *(&a66 + (LODWORD(STACK[0x270]) + 48)) = a25;
  v98 = (a28 + a38) ^ 0x1BF2EB34;
  *(&a66 + (a79 + 48)) = v98;
  *(&a66 + (a68 + 48)) = v97;
  *(&a66 + (a75 + 48)) = a26 ^ 0x48170810;
  *(&a66 + (LODWORD(STACK[0x258]) + 48)) = a35;
  *(&a66 + (LODWORD(STACK[0x22C]) + 48)) = a13;
  *(&a66 + (LODWORD(STACK[0x220]) + 48)) = a10 + (v92 ^ a22);
  v99 = a23 + 81367954 + a2 - 1948894579;
  *(&a66 + (LODWORD(STACK[0x200]) + 48)) = v99;
  v100 = a20 + (v83 ^ 0xF0233D99);
  *(&a66 + (LODWORD(STACK[0x250]) + 48)) = a17 + v100;
  *(&a66 + (LODWORD(STACK[0x25C]) + 48)) = v96 - 124932436;
  *(&a66 + (LODWORD(STACK[0x228]) + 48)) = a65;
  *(&a66 + (LODWORD(STACK[0x238]) + 48)) = a36;
  *(&a66 + (a73 + 48)) = v90 + 38850996;
  *(&a66 + (LODWORD(STACK[0x24C]) + 48)) = (v83 ^ 0xAC20F662) - 1404808872;
  *(&a66 + (LODWORD(STACK[0x248]) + 48)) = a19;
  *(&a66 + (a80 + 48)) = v100;
  *(&a66 + (LODWORD(STACK[0x268]) + 48)) = (a17 + v100 + a45) ^ 0xEC2E14C8;
  *(&a66 + (a74 + 48)) = 1960960307 - a27;
  v101 = a18 - v88 - 235265873;
  *(&a66 + (LODWORD(STACK[0x204]) + 48)) = v101;
  *(&a66 + (LODWORD(STACK[0x260]) + 48)) = a43;
  *(&a66 + (LODWORD(STACK[0x274]) + 48)) = a32;
  *(&a66 + (LODWORD(STACK[0x244]) + 48)) = a29;
  *(&a66 + (LODWORD(STACK[0x264]) + 48)) = v88;
  LODWORD(STACK[0x350]) = a24 + a34 + v99;
  LODWORD(STACK[0x358]) = v84 + a35 + v90 - 1865863560;
  LODWORD(STACK[0x354]) = a12 + 735379868 + (v98 ^ v101);
  LODWORD(STACK[0x35C]) = a37 ^ v89 ^ 0x52D8D5E9 ^ (v91 - ((2 * a1) & 0xF9E58FFE) - 415262202);
  return (*(v93 + 8 * (v85 ^ 0x436A218B ^ (10595 * (v85 > 0xBEC95CDC)))))(36393, 3813531299, 481447903, 1955706671, 691310848);
}

uint64_t sub_1002379F0()
{
  v3 = v0 - 4208;
  if (v1)
  {
    v4 = 2 * v1;
  }

  else
  {
    v4 = 16;
  }

  v5 = (*(v2 + 8 * (v0 + 8165)))((8 * (v4 - ((v4 << (3 * ((v0 - 112) ^ 0x2C) - 76)) & ((v0 - 4208) ^ 0x1AD70DDB))) - 346136984) ^ 0xEB5E5E68) != 0;
  return (*(v2 + 8 * ((44 * v5) ^ v3)))();
}

uint64_t sub_100237A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, char a26, __int16 a27, char a28, int a29, int a30, char a31, __int16 a32, char a33)
{
  v37 = 1012831759 * ((((v36 - 160) | 0xE17EF93) + (~(v36 - 160) | 0xF1E8106C)) ^ 0x1E84F918);
  *(v36 - 136) = a5;
  *(v36 - 128) = &a26;
  *(v36 - 152) = &a28;
  *(v36 - 160) = &a33;
  *(v36 - 120) = &a31;
  *(v36 - 112) = v34 - v37 + 35288;
  *(v36 - 108) = ((((v35 ^ 0x4E4D2166) - 1313677670) ^ ((v35 ^ 0x3BE0B99C) - 1004583324) ^ (((((v34 - 1913806414) & 0x721277BF) - 1060921169) ^ 0xA34450FD) + (v35 ^ 0x9C785FEB))) - 129675808) ^ v37;
  v38 = (*(v33 + 8 * (v34 + 38109)))(v36 - 160);
  return (*(v33 + 8 * ((37429 * (*(v36 - 144) == -371865839)) ^ v34)))(v38);
}

uint64_t sub_100237C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v60 = v58 ^ 0x1033u;
  v61 = a1 & 0xFFFFFFFEFFFFFFFFLL | ((a1 < 0x39102C31) << 32);
  v65 = v61 + a2 + ((a2 < v57) << 32) + v60 - 1436088775;
  v62 = v61 + 3256195722u;
  v63 = v65 > 0xFFFFFFFF04DA3944;
  if (v62 < 0xFB25C6BB == v63)
  {
    v63 = (v58 ^ 0xA8Bu) + 4213548426 + v65 > v62;
  }

  return (*(v59 + 8 * ((27600 * v63) ^ v58)))(a1, a2, a1 < 0x39102C31, v60, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57);
}

uint64_t sub_100237DE4()
{
  v1 = STACK[0xF10] - 25561;
  LODWORD(STACK[0xAD84]) = v0;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100237E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  STACK[0x7548] = a8;
  STACK[0x77B0] = ((2 * &STACK[0x2D38]) & 0xBDEBCCF665696DB0) + 0x210A1984CD4B4921 + (((v8 + 24845) - 0x210A1984CD4BD45CLL) ^ &STACK[0x2D38]);
  LODWORD(STACK[0x648C]) = 1846005556;
  return (*(STACK[0xF18] + 8 * (v8 - 4200)))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_100237F44@<X0>(int a1@<W8>)
{
  *(v5 + 168) = *(v3 + 8 * a1);
  v6 = ((((v1 - 22614) ^ *(v4 + 12) ^ 0x4E88F305) - 1317575885) ^ ((*(v4 + 12) ^ 0x80B2CB30) + 2135766224) ^ ((*(v4 + 12) ^ 0x27EF90EC) - 670011628)) - 968700309;
  v7 = (((v2 ^ 0x4B55D078) - 1263915128) ^ ((v2 ^ 0x5F332954) - 1597188436) ^ (((((2 * v1) ^ 0x108F8) - 38623879) ^ v2) + 38584771)) - 968700309;
  v8 = (v7 < 0xDC6D075A) ^ (v6 < 0xDC6D075A);
  v9 = v6 < v7;
  if (v8)
  {
    v9 = v7 < 0xDC6D075A;
  }

  return (*(v3 + 8 * (((16 * v9) | (v9 << 6)) ^ v1)))();
}

uint64_t sub_1002382A0()
{
  LODWORD(STACK[0x10ED8]) = (v2 + 1877386893) ^ (155453101 * ((&STACK[0x10000] + 3800) ^ 0xE6261BCF));
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v2 + 33038)))(&STACK[0x10ED8]);
  *(v0 + v1 - 1350889617) = STACK[0x10EE0] ^ 0xC0;
  return (*(v3 + 8 * (((v0 != 1350889632) * (((v2 - 16845) | 0x4061) - 18500)) ^ v2)))(v4);
}

uint64_t sub_100238354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23)
{
  v31 = ((a23 - 1889245828) * (a6 - 797984413) + 1091261415 * a6 + ((v25 - 40901) | 0x2109) - 372595469) * (v26 - 797984413) + 2120322389 * v26;
  v32 = ((-797984413 * (v26 + v28) + v26 * v28 + 706362441) - ((v31 - 1229515553) * (v26 - 536112303) - 261872110 * v31 + 1024758190) * v29) % v27;
  *(v30 + 4 * a16) = (v32 ^ 0x7FD74EBF) - 1346832418 + ((2 * v32) & 0xFFAE9D7E);
  v33 = ((v24 + 596562591) ^ 0x3EE950BC) & (2 * ((v24 + 596562591) & 0xB8E25ABE)) ^ (v24 + 596562591) & 0xB8E25ABE;
  v34 = ((2 * ((v24 + 596562591) ^ 0x3E6DC0CC)) ^ 0xD1F34E4) & ((v24 + 596562591) ^ 0x3E6DC0CC) ^ (2 * ((v24 + 596562591) ^ 0x3E6DC0CC)) & 0x868F9A72;
  v35 = v34 ^ 0x82808A12;
  v36 = (v34 ^ 0x40B1060) & (4 * v33) ^ v33;
  v37 = ((4 * v35) ^ 0x1A3E69C8) & v35 ^ (4 * v35) & 0x868F9A70;
  v38 = (v37 ^ 0x20E0840) & (16 * v36) ^ v36;
  v39 = ((16 * (v37 ^ 0x84819232)) ^ 0x68F9A720) & (v37 ^ 0x84819232) ^ (16 * (v37 ^ 0x84819232)) & 0x868F9A60;
  v40 = v38 ^ 0x868F9A72 ^ (v39 ^ 0x898200) & (v38 << 8);
  return (*(v23 + 8 * (v25 ^ (31 * (((v24 + 596562591) ^ (2 * ((v40 << 16) & 0x68F0000 ^ v40 ^ ((v40 << 16) ^ 0x1A720000) & (((v39 ^ 0x86061852) << 8) & 0x68F0000 ^ 0x50000 ^ (((v39 ^ 0x86061852) << 8) ^ 0xF9A0000) & (v39 ^ 0x86061852))))) != -1309053350)))))();
}

uint64_t sub_100238754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a8 + 8 * (((((((v9 ^ 0xD67F) - 14393) & 0x76D8) - 30099) == v8) * (((v9 ^ 0xD67F) - 2477) ^ 0x8D3D)) ^ v9 ^ 0xD67F));
  LODWORD(STACK[0x290]) = 371891407;
  return v10(a1, a7);
}

uint64_t sub_1002388AC@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W3>, char a4@<W4>, char a5@<W5>, _DWORD *a6@<X8>, uint64_t a7, uint64_t a8, int a9, char a10, __int16 a11, char a12, int a13, int a14, char a15, __int16 a16, char a17, __int16 a18, char a19, __int16 a20, char a21, __int16 a22, char a23, __int16 a24, char a25, int a26, int a27, int a28, char a29, __int16 a30, char a31)
{
  v121 = v32 + v33;
  v122 = a31 + a12;
  v40 = (((a21 ^ 0x34) - 48) ^ ((a21 ^ 0x2A) - 46) ^ ((a21 ^ 0xA3) + 89)) + (((*v34 ^ 0x1D) - 29) ^ ((*v34 ^ v39) - 25) ^ ((*v34 ^ a2) - 91)) + 51;
  v41 = v40 & 0x1D ^ 0x1C;
  *v34 = v40 ^ (2 * ((v40 ^ 0x64) & (2 * ((v40 ^ 0x64) & (2 * ((v40 ^ 0x64) & (2 * ((v40 ^ 0x64) & (2 * ((v40 ^ 0x64) & (2 * (v40 & (2 * v40) & 0x4A ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ v38;
  if (*a6 == 1)
  {
    v42 = v34;
  }

  else
  {
    v42 = v34 + 1;
  }

  v43 = ((*v42 ^ 0xD7) + 41) ^ ((*v42 ^ 0xC1) + 63) ^ ((*v42 ^ 0x49) - 73);
  v44 = (2 * (v43 & 7)) ^ 0xAE;
  v43 -= 16;
  v45 = v43 & 0x29 ^ 0x51;
  v46 = (v45 & 0xF9 | (2 * (((v44 & 6 | v45) ^ v44 & v43) & 3))) ^ v43 & (2 * ((v44 & 6 | v45) ^ v44 & v43));
  v47 = (v45 & 0xF9 | (2 * (v46 & 3))) ^ v43 & (2 * v46);
  v48 = (v45 & 0xF9 | (2 * (v47 & 3))) ^ v43 & (2 * v47);
  v49 = (v45 & 0xF9 | (2 * (v48 & 3))) ^ v43 & (2 * v48);
  *v42 = v43 ^ (2 * ((v45 & 0xF9 | (2 * (v49 & 3))) ^ v43 & (2 * v49))) ^ a1;
  v50 = 2u % *a6;
  v51 = (((v34[v50] ^ 0x34) - 52) ^ ((v34[v50] ^ a4) - 72) ^ ((v34[v50] ^ 0x23) - 35)) - 118;
  v52 = v51 & 0x7D ^ a4;
  v34[v50] = v51 ^ (2 * ((v51 ^ 0x6C) & (2 * ((v51 ^ 0x6C) & (2 * ((v51 ^ 0x6C) & (2 * ((v51 ^ 0x6C) & (2 * ((v51 ^ 0x6C) & (2 * (v51 & (2 * v51) & 0x5A ^ v52)) ^ v52)) ^ v52)) ^ v52)) ^ v52)) ^ v52)) ^ 0x22;
  v53 = 3u % *a6;
  v54 = (((v34[v53] ^ v31) - 75) ^ -v34[v53] ^ ((v34[v53] ^ 0xFFFFFFEB) + 21)) - a28 - 118;
  v55 = v54 & 0xB4 ^ 0x97;
  v34[v53] = v54 ^ (2 * ((v54 ^ 0xE) & (2 * ((v54 ^ 0xE) & (2 * ((v54 ^ 0xE) & (2 * ((v54 ^ 0xE) & (2 * ((v54 ^ 0xE) & (2 * ((v54 ^ 0xE) & 0x3A ^ v55)) ^ v55)) ^ v55)) ^ v55)) ^ v55)) ^ v55)) ^ a3;
  v56 = 4u % *a6;
  LOBYTE(v53) = (((v34[v56] ^ 0x9A) + 102) ^ ((v34[v56] ^ 0x12) - 18) ^ ((v34[v56] ^ 0xD7) + 41)) + 127;
  v57 = v53 & 0x18 ^ 0x10;
  v34[v56] = v53 ^ (2 * ((v53 ^ 0x78) & (2 * ((v53 ^ 0x78) & (2 * ((v53 ^ 0x78) & (2 * ((v53 ^ 0x78) & (2 * v57) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ 0x47;
  v58 = 5u % *a6;
  v59 = (((a23 ^ 0x15) - 82) ^ ((a23 ^ 0xFD) + 70) ^ ((a23 ^ 0x9F) + 40)) + (((v34[v58] ^ 0x8E) + 114) ^ ((v34[v58] ^ 0xB3) + 77) ^ ((v34[v58] ^ 0x62) - 98)) - 111;
  v60 = v59 & 0x6E ^ 0x58;
  v61 = 2 * ((2 * v60) ^ v60 ^ (2 * v60) & v59);
  v62 = 2 * ((2 * (v61 ^ v60 ^ v61 & v59)) ^ v60 ^ (2 * (v61 ^ v60 ^ v61 & v59)) & v59);
  v34[v58] = v59 ^ (2 * ((2 * (v62 ^ v60 ^ v62 & v59)) ^ v60 ^ (2 * (v62 ^ v60 ^ v62 & v59)) & v59)) ^ 0x31;
  v63 = 6u % *a6;
  LOBYTE(v58) = (((v34[v63] ^ 0xF6) + 10) ^ ((v34[v63] ^ 0xEA) + 22) ^ ((v34[v63] ^ 0x43) - 67)) - 53;
  v64 = v58 & 0xC6 ^ 0x1D;
  v34[v63] = v58 ^ (2 * ((v58 ^ 0x2C) & (2 * ((v58 ^ 0x2C) & (2 * ((v58 ^ 0x2C) & (2 * ((v58 ^ 0x2C) & (2 * ((v58 ^ 0x2C) & (2 * (v64 ^ v58 & 0x2A)) ^ v64)) ^ v64)) ^ v64)) ^ v64)) ^ v64)) ^ 0x99;
  v65 = 7u % *a6;
  LOBYTE(v58) = (((v34[v65] ^ 0x66) - 102) ^ ((v34[v65] ^ 0xEB) + 21) ^ ((v34[v65] ^ 0xD2) + 46)) + 122;
  v66 = v58 & 0xAF ^ 0x79;
  v34[v65] = v58 ^ (2 * ((v58 ^ 0x7C) & (2 * ((v58 ^ 0x7C) & (2 * ((v58 ^ 0x7C) & (2 * ((v58 ^ 0x7C) & (2 * ((v58 ^ 0x7C) & (2 * (((2 * v58) & 0x7A ^ 0x52) & v58 ^ v66)) ^ v66)) ^ v66)) ^ v66)) ^ v66)) ^ v66)) ^ 0xF0;
  v67 = 8u % *a6;
  LOBYTE(v58) = (((v34[v67] ^ 0xD6) + 42) ^ ((v34[v67] ^ 0x59) - 89) ^ ((v34[v67] ^ 0xD0) + 48)) - 127;
  v68 = (v58 & 0x9F | a4) ^ v58 & 0xB0;
  v34[v67] = v58 ^ (2 * ((v58 ^ 0x16) & (2 * ((v58 ^ 0x16) & (2 * ((v58 ^ 0x16) & (2 * ((v58 ^ 0x16) & (2 * ((v58 ^ 0x16) & (2 * ((v58 ^ 0x16) & (2 * v68) ^ v68)) ^ v68)) ^ v68)) ^ v68)) ^ v68)) ^ v68)) ^ 0x78;
  v69 = 9u % *a6;
  v70 = (((v34[v69] ^ 0xA7) + 89) ^ v34[v69] ^ ((v34[v69] ^ 0xF8) + 8)) + 115;
  v71 = v70 & 0x37 ^ 0x49;
  v34[v69] = v70 ^ (2 * ((v70 ^ 0x24) & (2 * ((v70 ^ 0x24) & (2 * ((v70 ^ 0x24) & (2 * ((v70 ^ 0x24) & (2 * (((2 * (((2 * v70) & 0x4A | 0x25) & v70)) ^ 0x12) & (v70 ^ 4) ^ v71)) ^ v71)) ^ v71)) ^ v71)) ^ v71)) ^ 0x68;
  v72 = 0xAu % *a6;
  v73 = (((v34[v72] ^ 0x32) - 50) ^ ((v34[v72] ^ 0xE2) + 30) ^ ((v34[v72] ^ 0x8F) + 113)) - 123;
  LOBYTE(v58) = v73 & 0xA5 ^ 9;
  v74 = 2 * ((((2 * v73) & 0x26 ^ 0x36) & 0x12 | v58) ^ ((2 * v73) & 0x26 ^ 0x36) & v73);
  v34[v72] = v73 ^ (2 * ((v73 ^ 0x12) & (2 * ((v73 ^ 0x12) & (2 * ((v73 ^ 0x12) & (2 * ((v73 ^ 0x12) & (2 * ((v74 & 0x12 | v58) ^ v74 & v73)) ^ v58)) ^ v58)) ^ v58)) ^ v58)) ^ 0xFA;
  v75 = 0xBu % *a6;
  v76 = (((v34[v75] ^ 0x8B) + 117) ^ ((v34[v75] ^ 0xD0) + 48) ^ ((v34[v75] ^ 4) - 4)) - a15 + 54;
  v77 = v76 & 0x88 ^ 0xD7;
  v34[v75] = v76 ^ (2 * ((v76 ^ 0x62) & (2 * ((v76 ^ 0x62) & (2 * ((v76 ^ 0x62) & (2 * ((v76 ^ 0x62) & (2 * ((v76 ^ 0x62) & (2 * ((v76 ^ 0x62) & 0x2A ^ v77)) ^ v77)) ^ v77)) ^ v77)) ^ v77)) ^ v77)) ^ 0xD7;
  v78 = 0xCu % *a6;
  v79 = (((v34[v78] ^ 0x1D) - 29) ^ ((v34[v78] ^ 0x2E) - 46) ^ ((v34[v78] ^ 0x6C) - 108)) - 107;
  LOBYTE(v58) = v79 & 0x3D ^ 0xDD;
  v34[v78] = v79 ^ (2 * ((v79 ^ 2) & (2 * ((v79 ^ 2) & (2 * ((v79 ^ 2) & (2 * ((v79 ^ 2) & (2 * ((v79 ^ 2) & (2 * (((2 * (v79 & 3)) ^ 0x3E) & (v79 ^ 2) ^ v58)) ^ v58)) ^ v58)) ^ v58)) ^ v58)) ^ v58)) ^ 0x62;
  v80 = 0xDu % *a6;
  LOBYTE(v53) = (((v34[v80] ^ 0xE2) + 30) ^ ((v34[v80] ^ 0xFA) + 6) ^ ((v34[v80] ^ 0x47) - 71)) + 124;
  v81 = v53 & 0xE8 ^ 0x2E;
  v34[v80] = v53 ^ (2 * ((v53 ^ 0x1C) & (2 * ((v53 ^ 0x1C) & (2 * ((v53 ^ 0x1C) & (2 * ((v53 ^ 0x1C) & (2 * ((v53 ^ 0x1C) & (2 * v81) ^ v81)) ^ v81)) ^ v81)) ^ v81)) ^ v81)) ^ 0xB7;
  v82 = 0xEu % *a6;
  LOBYTE(v53) = (((v34[v82] ^ 0xA3) + 93) ^ ((v34[v82] ^ 0xE0) + 32) ^ ((v34[v82] ^ 0x1C) - 28)) + 116;
  v83 = v53 & 0xE ^ 0x75;
  v34[v82] = v53 ^ (2 * ((v53 ^ 0x24) & (2 * ((v53 ^ 0x24) & (2 * ((v53 ^ 0x24) & (2 * ((v53 ^ 0x24) & (2 * (v83 ^ v53 & 0x2A)) ^ v83)) ^ v83)) ^ v83)) ^ v83)) ^ 0x51;
  v84 = 0xFu % *a6;
  LOBYTE(v53) = v37 + (((v34[v84] ^ 0xA3) + 93) ^ ((v34[v84] ^ 0x34) - 52) ^ ((v34[v84] ^ 0xC8) + 56)) + 57;
  v85 = v53 & 0xF1 ^ 0xA0;
  v34[v84] = v53 ^ (2 * ((v53 ^ 0x30) & (2 * ((v53 ^ 0x30) & (2 * ((v53 ^ 0x30) & (2 * ((v53 ^ 0x30) & (2 * ((v53 ^ 0x30) & (2 * (v53 & (2 * v85) ^ v85)) ^ v85)) ^ v85)) ^ v85)) ^ v85)) ^ v85)) ^ 0xAE;
  v86 = 0x10u % *a6;
  LOBYTE(v53) = (((v34[v86] ^ 0x5C) - 92) ^ ((v34[v86] ^ 0xD9) + 39) ^ ((v34[v86] ^ 0xDA) + 38)) - ((((a5 - ((2 * a5) & 0xEC) + 118) ^ 0x18) - 24) ^ (((a5 - ((2 * a5) & 0xEC) + 118) ^ 3) - 3) ^ (((a5 - ((2 * a5) & 0xEC) + 118) ^ 0x6D) - 109)) + 126;
  v87 = v53 & 0xC2 ^ 0x9A;
  v34[v86] = v53 ^ (2 * ((v53 ^ 0x2C) & (2 * ((v53 ^ 0x2C) & (2 * ((v53 ^ 0x2C) & (2 * ((v53 ^ 0x2C) & (2 * ((v53 ^ 0x2C) & (2 * v87) ^ v87)) ^ v87)) ^ v87)) ^ v87)) ^ v87)) ^ 0x9D;
  v88 = 0x11u % *a6;
  v89 = (((v34[v88] ^ 0xCD) + 51) ^ v34[v88] ^ ((v34[v88] ^ 0x12) - 18)) + (((a29 ^ 5) - 52) ^ ((a29 ^ 0xBF) + 114) ^ ((a29 ^ 0x46) - 119));
  LOBYTE(v58) = (v89 + 26) & 0x92 | 0x49;
  v89 -= 102;
  LOBYTE(v58) = v58 ^ v89 & 0xB6;
  v34[v88] = v89 ^ (2 * ((v89 ^ 0x12) & (2 * ((v89 ^ 0x12) & (2 * ((v89 ^ 0x12) & (2 * ((v89 ^ 0x12) & (2 * ((2 * (v89 & (2 * v58) ^ v58)) & 0x12 ^ v58 ^ ((2 * (v89 & (2 * v58) ^ v58)) ^ 0x24) & v89)) ^ v58)) ^ v58)) ^ v58)) ^ v58)) ^ 0x7B;
  v90 = 0x12u % *a6;
  v91 = (((v34[v90] ^ 0x3F) - 63) ^ ((v34[v90] ^ 0x87) + 121) ^ ((v34[v90] ^ 0xE7) + 25)) - 20;
  LOBYTE(v58) = v91 & 8 ^ 0x69;
  v34[v90] = v91 ^ (2 * ((v91 ^ 0x36) & (2 * ((v91 ^ 0x36) & (2 * ((v91 ^ 0x36) & (2 * ((v91 ^ 0x36) & (2 * ((v91 ^ 0x36) & (2 * ((v91 ^ 0x36) & 0x3E ^ v58)) ^ v58)) ^ v58)) ^ v58)) ^ v58)) ^ v58)) ^ 0x57;
  v92 = 0x13u % *a6;
  v93 = v121 + (((v34[v92] ^ 0xE1) + 31) ^ ((v34[v92] ^ 0x2E) - 46) ^ ((v34[v92] ^ 0x90) + 112)) + 29;
  v94 = v93 & 0x52 ^ 0x6C;
  v34[v92] = v93 ^ (2 * ((v93 ^ 0x18) & (2 * ((v93 ^ 0x18) & (2 * ((v93 ^ 0x18) & (2 * ((v93 ^ 0x18) & (2 * ((v93 ^ 0x18) & (2 * v94) ^ v94)) ^ v94)) ^ v94)) ^ v94)) ^ v94)) ^ 0xD;
  v95 = 0x14u % *a6;
  v96 = (((v34[v95] ^ 0x12) - 18) ^ ((v34[v95] ^ 0x61) - 97) ^ ((v34[v95] ^ 0x2C) - 44)) - 66;
  v97 = v96 & 0xB8 ^ 0xEA;
  v34[v95] = v96 ^ (2 * ((v96 ^ 0x64) & (2 * ((v96 ^ 0x64) & (2 * ((v96 ^ 0x64) & (2 * ((v96 ^ 0x64) & (2 * ((v96 ^ 0x64) & (2 * v97) ^ v97)) ^ v97)) ^ v97)) ^ v97)) ^ v97)) ^ 0xE7;
  v98 = 0x15u % *a6;
  v99 = (((v34[v98] ^ 0x2B) - 43) ^ ((v34[v98] ^ 0xFFFFFFC8) + 56) ^ ((v34[v98] ^ 0xFFFFFFBC) + 68)) + 48;
  v100 = v99 & 0x4A ^ 0x62;
  v101 = (v100 & 0xFFFFFFFB | (4 * ((v100 >> 1) & 1))) ^ v99 & (2 * v100);
  v102 = (v100 & 0xFFFFFFFB | (4 * ((v101 >> 1) & 1))) ^ v99 & (2 * v101);
  v103 = (v100 & 0xFFFFFFFB | (4 * ((v102 >> 1) & 1))) ^ v99 & (2 * v102);
  v104 = (v100 & 0xFFFFFFFB | (4 * ((v103 >> 1) & 1))) ^ v99 & (2 * v103);
  v34[v98] = v99 ^ (2 * ((v100 & 0xFB | (4 * ((v104 & 2) != 0))) ^ v99 & (2 * v104))) ^ 0x15;
  v105 = 0x16u % *a6;
  LOBYTE(v99) = (((v34[v105] ^ 0xA8) + 88) ^ ((v34[v105] ^ 0x35) - 53) ^ ((v34[v105] ^ 0xC2) + 62)) - 22;
  LOBYTE(v104) = v99 & 2 | 0x65;
  v34[v105] = v99 ^ (2 * ((v99 ^ 0x38) & (2 * ((v99 ^ 0x38) & (2 * ((v99 ^ 0x38) & (2 * ((v99 ^ 0x38) & (2 * ((v99 ^ 0x38) & (2 * (((4 * ((v99 & 2) != 0)) | 0x3A) & (v99 ^ 0x38) ^ v104)) ^ v104)) ^ v104)) ^ v104)) ^ v104)) ^ v104)) ^ 0x5D;
  v106 = 0x17u % *a6;
  LOBYTE(v99) = (((v34[v106] ^ 0x92) + 110) ^ ((v34[v106] ^ 0xA5) + 91) ^ ((v34[v106] ^ 0x68) - 104)) - 6;
  LOBYTE(v100) = v99 & 0x5C ^ 0x5A;
  v34[v106] = v99 ^ (2 * ((v99 ^ 0x28) & (2 * ((v99 ^ 0x28) & (2 * ((v99 ^ 0x28) & (2 * ((v99 ^ 0x28) & (2 * (v100 ^ v99 & 0x34)) ^ v100)) ^ v100)) ^ v100)) ^ v100)) ^ 3;
  v107 = 0x18u % *a6;
  LOBYTE(v99) = (((v34[v107] ^ 0x64) - 100) ^ v34[v107] ^ ((v34[v107] ^ 0xBB) + 69)) - 73;
  v34[v107] = v99 ^ (2 * ((v99 ^ 0x64) & (2 * ((v99 ^ 0x64) & (2 * ((v99 ^ 0x64) & (2 * ((v99 ^ 0x64) & (2 * (((2 * (v99 & 0x24)) | 0x12) & (v99 ^ 0x64) ^ (v99 | 9))) ^ (v99 | 9))) ^ (v99 | 9))) ^ (v99 | 9))) ^ (v99 | 9))) ^ 0xA9;
  v108 = v39 % *a6;
  v109 = (((v34[v108] ^ 0xC1) + 63) ^ ((v34[v108] ^ 0xC4) + 60) ^ ((v34[v108] ^ 0x5A) - 90)) + a17 * (a19 - 21) - 46;
  LOBYTE(v99) = v109 & 0x25 ^ 0xDC;
  v34[v108] = v109 ^ (2 * ((v109 ^ 0xC) & (2 * ((v109 ^ 0xC) & (2 * ((v109 ^ 0xC) & (2 * ((v109 ^ 0xC) & (2 * ((v109 ^ 0xC) & (2 * (v109 & (2 * v109) & 0x1A ^ v99)) ^ v99)) ^ v99)) ^ v99)) ^ v99)) ^ v99)) ^ 0x7A;
  v110 = 0x1Au % *a6;
  v111 = (((v34[v110] ^ 0xF2) + 14) ^ ((v34[v110] ^ 0xB1) + 79) ^ ((v34[v110] ^ 0x1C) - 28)) - (((a10 ^ 0xA3) - 117) ^ ((a10 ^ 0x3F) + 23) ^ ((a10 ^ 0x9C) - 74));
  LOBYTE(v99) = (30 - v111) & 0xE4 | 0x12;
  v111 -= 31;
  LOBYTE(v99) = v99 ^ v111 & 0xA4;
  v34[v110] = v111 ^ (2 * ((v111 ^ 0x64) & (2 * ((v111 ^ 0x64) & (2 * ((v111 ^ 0x64) & (2 * ((v111 ^ 0x64) & (2 * ((v111 ^ 0x64) & (2 * v99) ^ v99)) ^ v99)) ^ v99)) ^ v99)) ^ v99)) ^ 0x1F;
  v112 = 0x1Bu % *a6;
  v113 = ((v34[v112] ^ 0xB5) + 75) ^ ((v34[v112] ^ 0x9F) + 97) ^ ((v34[v112] ^ 0x75) - 117);
  LOBYTE(v100) = ((-23 - v113) & 0x85 | 0x28) ^ (v113 + 22) & 0x5A;
  LOBYTE(v99) = (v113 + 22) ^ 4;
  v34[v112] = (v113 - 106) ^ (2 * (v99 & (2 * (v99 & (2 * (v99 & (2 * (v99 & (2 * (v99 & (2 * (v99 & (2 * v100) ^ v100)) ^ v100)) ^ v100)) ^ v100)) ^ v100)) ^ v100));
  v114 = 0x1Cu % *a6;
  v115 = (((v34[v114] ^ 0x9E) + 98) ^ ((v34[v114] ^ 0xB6) + 74) ^ ((v34[v114] ^ 0x77) - 119)) - 21;
  LOBYTE(v99) = v115 & 0x4E ^ 0x4F;
  v34[v114] = v115 ^ (2 * ((v115 ^ 0x30) & (2 * ((v115 ^ 0x30) & (2 * ((v115 ^ 0x30) & (2 * ((v115 ^ 0x30) & (2 * ((v115 ^ 0x30) & (2 * ((v115 ^ 0x30) & (2 * v99) ^ v99)) ^ v99)) ^ v99)) ^ v99)) ^ v99)) ^ v99)) ^ 0x11;
  v116 = 0x1Du % *a6;
  LOBYTE(v56) = a25 + (((v34[v116] ^ 0xDA) + 38) ^ ((v34[v116] ^ 0xB3) + 77) ^ ((v34[v116] ^ 0x36) - 54)) + 51;
  v117 = v56 & 9 ^ 0x21;
  LOBYTE(v99) = 2 * ((((2 * v56) & 0x8F ^ 0xCE) & 0x46 | v117) ^ ((2 * v56) & 0x8F ^ 0xCE) & v56);
  LOBYTE(v99) = 2 * ((v99 & 0x46 | v117) ^ v99 & v56);
  LOBYTE(v99) = 2 * ((v99 & 0x46 | v117) ^ v99 & v56);
  LOBYTE(v99) = 2 * ((v99 & 0x46 | v117) ^ v99 & v56);
  LOBYTE(v86) = 2 * ((v99 & 0x46 | v117) ^ v99 & v56);
  v34[v116] = v56 ^ (2 * ((v86 & 0xC7 | v117) ^ v86 & v56)) ^ 0x56;
  v118 = 0x1Eu % *a6;
  LOBYTE(v56) = (((v34[v118] ^ 0xF8) + 8) ^ ((v34[v118] ^ 0xD3) + 45) ^ ((v34[v118] ^ 0x74) - 116)) - 9;
  LOBYTE(v116) = v56 & 0xA ^ 0xF3;
  v34[v118] = v56 ^ (2 * ((v56 ^ 0x24) & (2 * ((v56 ^ 0x24) & (2 * ((v56 ^ 0x24) & (2 * ((v56 ^ 0x24) & (2 * ((v56 ^ 0x24) & 0x2E ^ v116)) ^ v116)) ^ v116)) ^ v116)) ^ v116)) ^ 0x55;
  v119 = 0x1Fu % *a6;
  LOBYTE(v75) = v122 + (((v34[v119] ^ 0xE2) + 30) ^ ((v34[v119] ^ 0x3E) - 62) ^ ((v34[v119] ^ 0x83) + 125)) - 12;
  LOBYTE(v56) = (v75 & 0xC1 | 0x30) ^ v75 & 0xE0;
  v34[v119] = v75 ^ (2 * ((v75 ^ 0x40) & (2 * ((v75 ^ 0x40) & (2 * ((v75 ^ 0x40) & (2 * ((v75 ^ 0x40) & (2 * ((v75 ^ 0x40) & (2 * ((v75 ^ 0x40) & (2 * v56) ^ v56)) ^ v56)) ^ v56)) ^ v56)) ^ v56)) ^ v56)) ^ 0x7E;
  return (*(v36 + 8 * v35))(210);
}

uint64_t sub_100239D40(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39)
{
  v45 = v44 + v39 + (((v42 + 898108159) | 0x118918) ^ 0x2AEC82DF);
  v46 = (a1 ^ 0x886FBD52) & (2 * (a1 & a7)) ^ a1 & a7;
  v47 = ((2 * (a1 ^ 0x8870BF52)) ^ 0xB03E0C62) & (a1 ^ 0x8870BF52) ^ (2 * (a1 ^ 0x8870BF52)) & 0x581F0630;
  v48 = a1 ^ (2 * ((((4 * (v47 ^ 0x48010211)) ^ 0x607C18C0) & (v47 ^ 0x48010211) ^ (4 * (v47 ^ 0x48010211)) & 0x581F0630) & (16 * (v47 & (4 * v46) ^ v46)) ^ v47 & (4 * v46) ^ v46)) ^ v45 ^ ((v45 ^ 0x2ECB7D52) - 1089343738) ^ ((v45 ^ 0xA3EB6A02) + 842135638) ^ ((v45 ^ 0x9CDC8503) + 218502997) ^ ((v45 ^ 0x7FD9FFFB) - 301765203);
  v49 = ((v48 ^ 0x94842C4B) + 52586883) ^ ((v48 ^ 0x3D2398B1) - 1434067591) ^ ((v48 ^ 0x27C36031) - 1335548423);
  v50 = ((a39 - v41 - 1899726079 * v49 + (v49 - 432181507) * (*(v43 + 4 * v40) + 1101741666) - 1169883651) & 7) == 1;
  return (*(a36 + 8 * ((v50 | (4 * v50)) ^ v42)))();
}

uint64_t sub_100239F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, unsigned int a21, char a22, unsigned int a23, char a24)
{
  v31 = v28[4];
  v32 = v28[5];
  v33 = v28[6];
  v34 = v24;
  v35 = 906386353 * ((((2 * &a18) | 0xFFE79BF8) - &a18 + 799236) ^ 0xCEF200D8);
  a18 = v25;
  a20 = v29;
  a24 = (91 * v33 - 73) ^ (-79 * ((((2 * &a18) | 0xF8) - &a18 + 4) ^ 0xD8));
  a19 = ((((v30 + 39) & 0xFC) + 51) * v32 + 80) ^ (-79 * ((((2 * &a18) | 0xF8) - &a18 + 4) ^ 0xD8));
  a23 = (v26 ^ 0x196951C7) + v35;
  a21 = v35 + v30 + 38064;
  a22 = -79 * ((((2 * &a18) | 0xF8) - &a18 + 4) ^ 0xD8) + (v31 ^ 0xAD) + ((2 * v31) & 0x5A) + 84;
  (*(v27 + 8 * (v30 + 46795)))(&a18);
  *v34 = 53;
  return (*(v27 + 8 * v30))(a15);
}

void sub_10023A04C(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = *(a1 + 8) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *(a1 + 16) ^ (139493411 * (((a1 | 0x626A32B4) - (a1 & 0x626A32B4)) ^ 0x6E47D3F1));
  __asm { BRAA            X11, X17 }
}

uint64_t sub_10023A1A8()
{
  v2 = *STACK[0x13E0];
  if ((v0 - 1999488370) < 0xE809AE84 != v2 > 0x17F6517B)
  {
    v3 = (v0 - 1999488370) < 0xE809AE84;
  }

  else
  {
    v3 = v0 - 1999488370 > v2 - 402018684;
  }

  return (*(STACK[0xF18] + 8 * ((v3 * (((v1 - 5127) | 0x31) ^ 0x8B34)) ^ v1)))();
}

void sub_10023A264(uint64_t a1)
{
  v1 = *(a1 + 8) + 353670337 * (a1 ^ 0xB421F83D);
  v2 = *a1;
  v4[0] = (17902189 * (((v4 | 0x10769865) - v4 + (v4 & 0xEF896798)) ^ 0x9E398E75)) ^ (v1 + 21845);
  v5 = v2;
  v3 = *(&off_1010A0B50 + (v1 ^ 0x57C0)) - 810145054;
  (*&v3[8 * v1 + 248992])(v4);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10023A600(__int128 *a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a1;
  v13 = (a8 + v10);
  *v13 = *(a1 - 1);
  v13[1] = v12;
  return (*(v11 + 8 * ((((v9 | v8) >> 63) * a3) ^ a2)))(a1 + 2);
}

uint64_t sub_10023A638@<X0>(unint64_t a1@<X8>)
{
  *(v2 + 3772) = v3;
  STACK[0x4A20] = a1;
  LODWORD(STACK[0x9790]) = v1;
  return (*(STACK[0xF18] + 8 * ((55137 * (v3 == ((v4 + 1655370948) & 0x9D54876B) - 371867738)) ^ (v4 - 15288))))();
}

uint64_t sub_10023A6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  v60 = v56 - 371894042;
  v61 = 1012831759 * ((~(v58 - 176) & 0x56E278F3 | (v58 - 176) & 0xA91D8708) ^ 0x46716E79);
  *(v58 - 152) = a56;
  *(v58 - 144) = &STACK[0x400];
  *(v58 - 136) = &STACK[0x220];
  *(v58 - 128) = v56 - 371894042 - v61 + 371915150;
  *(v58 - 124) = ((((v57 ^ 0xF196DFE7) + 241770521) ^ ((v57 ^ 0x465C0227) - 1180434983) ^ ((v57 ^ 0x5E1F1AD1) - 1579096785)) - 129709168 + ((38 * ((v56 - 371894042) ^ 0x69D5C45D) - 32056) | 0x8240)) ^ v61;
  *(v58 - 176) = &STACK[0x2C8];
  *(v58 - 168) = &STACK[0x318];
  v62 = (*(v59 + 8 * ((v56 - 371894042) ^ 0xE9D50CB5)))(v58 - 176);
  return (*(a48 + 8 * ((37128 * (((*(v58 - 160) - v60) | (v60 - *(v58 - 160))) >= 0)) ^ (v60 + 371879070))))(v62);
}

uint64_t sub_10023A874@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, int a7@<W8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14)
{
  LODWORD(v18) = (*(a14 + 32) ^ a13) + ((v14 + 10818) ^ 0xD64D3E60);
  HIDWORD(v18) = *(a14 + 28) - a13;
  HIDWORD(v17) = a7 ^ 0x7ADAC203;
  LODWORD(v17) = HIDWORD(v18) - 712952367;
  HIDWORD(a9) = HIDWORD(v18) - 1387822122;
  return (*(v15 + 8 * v14))(255893232, a1, a2, a3, a4, a5, a6, 43851, a8, a9, v17, v18);
}

void sub_10023A950(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = (*a1 ^ 0x57BBFBB7BFFFD7DFLL) - 0x57BBFBB6D092A64BLL + ((2 * *a1) & 0xAF77F76F7FFFAFBELL);
  v4 = v3 < 0xEF6D3194;
  v5 = v3 > v2 + 4016910740u;
  if (v2 > 0xFFFFFFFF1092CE6BLL != v4)
  {
    v5 = v4;
  }

  v1 = *(a1 + 24) + 297845113 * (((a1 | 0x698B7907) - (a1 | 0x967486F8) - 1770748168) ^ 0x1EB86599);
  __asm { BRAA            X0, X17 }
}

uint64_t sub_10023AB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = (a67 - 1832);
  v69 = *(v67 + 8 * ((9659 * (a67 == -654376143)) ^ v68));
  return v69(v68, a2, v69, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59);
}

uint64_t sub_10023AD60@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, _DWORD *a29)
{
  *a29 |= 0x40000u;
  STACK[0x840] = (((v29 ^ 0x9AA4479441D13525) + 0x655BB86BBE2ECADBLL) ^ ((v29 ^ 0xF1657412C626F728) + 0xE9A8BED39D908D8) ^ (((((a1 + 1489094853) & 0xA73E9DAB) + 0x6BC133866E217F71) ^ v29) - 0x6BC133866E22051CLL)) + 3923101457u;
  return (*(v30 + 8 * a1))();
}

uint64_t sub_10023AE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, unsigned int a44)
{
  v48 = *(&a32 + v45 + 72);
  v49 = ((2 * v45) & 0xB2D6BBE8) + (v45 ^ 0xD96B5DF7);
  *(a11 + v49 + 647275017) = v48 ^ 0x23;
  *(a11 + v49 + 647275018) = ((v44 - 55) ^ BYTE1(v48) ^ 0x7E) + (~(2 * ((v44 - 55) ^ BYTE1(v48) ^ 0x7E)) | 0x41) + 96;
  *(a11 + v49 + 647275019) = (BYTE2(v48) ^ 0x7C) - ((2 * (BYTE2(v48) ^ 0x7C)) & 0xBF) + 95;
  *(a11 + v49 + 647275020) = (HIBYTE(v48) ^ 0x1D) - ((2 * (HIBYTE(v48) ^ 0x1D)) & 0xBF) + 95;
  return (*(v47 + 8 * (((v45 + 4 < a44) * v46) ^ v44)))();
}

uint64_t sub_10023B054(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v13 = (v3 + a2);
  v14 = *v13;
  LODWORD(v13) = 1864610357 * ((*(*(v7 + v8) + (*(v5 + v6) & 0x72D7ACF8)) ^ v13) & 0x7FFFFFFF);
  *(v11 + a2) = *(v4 + (((1864610357 * (v13 ^ (v13 >> 16))) >> (((v9 - 69) | 0x81) ^ 0x9F)) & 0xFF0 | a2 & 0xF)) ^ v14 ^ (53 * (v13 ^ BYTE2(v13)));
  v15 = v10 < a3;
  if (v15 == a2 + 1 > 0xA8E8039D)
  {
    v15 = a2 + 1461189731 < v10;
  }

  return (*(v12 + 8 * ((8238 * v15) ^ v9)))();
}

uint64_t sub_10023B24C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v61 = *(v60 - 248);
  v62 = *(a7 + 8 * (((v61 == 0) * (((a8 - 37628) | 0x604) ^ 0x6CF)) ^ (a8 - 22315)));
  LODWORD(STACK[0x290]) = 371891400;
  return v62(v61, a1, a2, a3, a4, a5, a6, a7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_10023B348@<X0>(_BYTE *a1@<X8>)
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
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_10023B4FC()
{
  v7 = v5 + v3;
  v8 = (v3 - 1) & 0xF;
  v9 = (v4 - 1633) - v3 - 44922 + v8;
  v10 = v1 + v9;
  v11 = v8 + ((v4 - 46491) | 0x8380u) - 33728;
  v12 = v1 + v11;
  v13 = v8 + v0 + 4;
  v14 = v2 + v9;
  v15 = v2 + v11;
  v17 = v13 > v5 && v13 - v3 < v7;
  if (v12 > v5 && v10 < v7)
  {
    v17 = 1;
  }

  if (v15 > v5 && v14 < v7)
  {
    v17 = 1;
  }

  return (*(v6 + 8 * ((964 * v17) ^ v4)))();
}

uint64_t sub_10023B678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = (v6 ^ v7 ^ (v3 + 2708)) + v2;
  v10 = *(a2 + v9 - 15);
  v11 = *(a2 + v9 - 31);
  v12 = a1 + v9;
  *(v12 - 15) = v10;
  *(v12 - 31) = v11;
  return (*(v8 + 8 * ((508 * (v5 == v6)) ^ v4)))();
}

uint64_t sub_10023B6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22)
{
  v24 = ((HIDWORD(a12) + 428569459) ^ 0xA43FFD1B) & (2 * ((HIDWORD(a12) + 428569459) & 0xB6BFFD9C)) ^ (HIDWORD(a12) + 428569459) & 0xB6BFFD9C;
  v25 = ((v22 + 799604875 + a22) ^ (2 * ((HIDWORD(a12) + 428569459) ^ 0xA16AEE2B))) & ((HIDWORD(a12) + 428569459) ^ 0xA16AEE2B) ^ (2 * ((HIDWORD(a12) + 428569459) ^ 0xA16AEE2B)) & 0x17D513B6;
  v26 = v25 ^ 0x10551091;
  v27 = (v25 ^ 0x7800220) & (4 * v24) ^ v24;
  v28 = ((4 * v26) ^ 0x5F544EDC) & v26 ^ (4 * v26) & 0x17D513B4;
  v29 = (v28 ^ 0x17540280) & (16 * v27) ^ v27;
  v30 = ((16 * (v28 ^ 0x811123)) ^ 0x7D513B70) & (v28 ^ 0x811123) ^ (16 * (v28 ^ 0x811123)) & 0x17D513B0;
  v31 = v29 ^ 0x17D513B7 ^ (v30 ^ 0x15511300) & (v29 << 8);
  v32 = (HIDWORD(a12) + 428569459) ^ (2 * ((v31 << 16) & 0x17D50000 ^ v31 ^ ((v31 << 16) ^ 0x13B70000) & (((v30 ^ 0x2840087) << 8) & 0x17D50000 ^ 0x2C40000 ^ (((v30 ^ 0x2840087) << 8) ^ 0x55130000) & (v30 ^ 0x2840087))));
  v34 = v32 == -1103111438 || (((v22 + 690961865) & 0xD6D04BA7 ^ 0x4A88) & v32) != ((v22 - 40917) | 0x448C) - 26059;
  return (*(v23 + 8 * ((174 * v34) ^ (v22 - 6055))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

void sub_10023B8CC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = (*a1 ^ 0xEFFE7F63FEFFD4DFLL) + 0x1001809CEFE605B6 + ((2 * *a1) & 0xDFFCFEC7FDFFA9BELL);
  v4 = v3 < 0xEEE5DA95;
  v5 = v3 > v2 + 4008041109u;
  if (v2 > 0xFFFFFFFF111A256ALL != v4)
  {
    v5 = v4;
  }

  v1 = *(a1 + 28) ^ (906386353 * ((~a1 & 0x42D293C2 | a1 & 0xBD2D6C3D) ^ 0x73D35EE6));
  __asm { BRAA            X0, X17 }
}

uint64_t sub_10023BC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  a11 = *v12;
  LODWORD(a10) = ((v13 & 0x5D49F9FF) - 1762640392) ^ (906386353 * (((&a10 | 0x3ABBD5AC) - (&a10 & 0x3ABBD5A8)) ^ 0xBBA1888));
  (*(v11 + 8 * ((v13 & 0x5D49F9FF) + 37154)))(&a10);
  v12[2] = 0;
  v12[3] = 0;
  *(v12 + 8) = 0;
  v14 = *v12;
  LODWORD(a11) = (v13 & 0x5D49F9FF) + 155453101 * (&a10 ^ 0xE6261BCF) + 296774003;
  a10 = v14;
  v15 = (*(v11 + 8 * (v13 & 0x5D49F9FF ^ 0xF35Du)))(&a10);
  return (*(v11 + 8 * (v13 & 0x5D49F9FF)))(v15);
}

uint64_t sub_10023BDF4@<X0>(int a1@<W0>, int a2@<W2>, int a3@<W8>)
{
  v13 = v9 + v8 + (a1 ^ v7);
  *(v12 + v13) = *(v6 + (v13 & 0xF)) ^ *(v3 + v13) ^ *(v5 + (v13 & 0xF)) ^ *((v13 & 0xF) + v4 + 1) ^ ((v13 & 0xF) * v10);
  return (*(v11 + 8 * (((v13 == 0) * a2) ^ a3)))();
}

uint64_t sub_10023BE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v77 = 1022166737 * ((v76 - 168) ^ 0xBA10E192);
  *(a3 + 432) = v72;
  *(v76 - 160) = v73 - v77;
  *(v76 - 156) = v77 + 8889 + v74;
  v78 = (*(v75 + 8 * (v74 + 28767)))(v76 - 168);
  v79 = *(v76 - 152);
  LODWORD(STACK[0x240]) = v79;
  return (*(v75 + 8 * (((v79 == 1497668682) * (v74 ^ 0x7201 ^ (v74 - 12778))) ^ v74)))(v78, a72, &STACK[0x298]);
}

uint64_t sub_10023C138@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v5 = (v3 + a1);
  v5[73] = a2;
  v5[74] = a2;
  return (*(v4 + 8 * ((55 * (a1 + 32 != ((v2 + 4240) ^ 0x372DLL))) ^ v2)))();
}

uint64_t sub_10023C178@<X0>(unsigned int a1@<W8>)
{
  LODWORD(STACK[0x1160]) = 1578209115;
  STACK[0x5288] = 0;
  LOBYTE(STACK[0x710B]) = v1 == 203 * (a1 ^ 0xA392) - 371916996;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_10023C1CC@<X0>(int a1@<W8>)
{
  v1[2] &= (a1 - 3358) ^ 0x7FFFF3D4;
  v1[8] = v2[3] ^ 0xE9D5C711;
  v1[9] = v2[4] ^ 0xE9D5C711;
  v1[10] = v2[5] ^ 0xE9D5C711;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_10023C260()
{
  v1 = STACK[0x73C0];
  v2 = STACK[0x88C0];
  LODWORD(STACK[0x1C34]) = STACK[0x92E0];
  v3 = STACK[0x7690];
  STACK[0x92F8] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = v3 + 48;
  STACK[0x4CC8] = v2;
  STACK[0x4FB8] = 0;
  STACK[0x7A38] = 0;
  STACK[0x59C8] = v1;
  if (v1)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  return (*(STACK[0xF18] + 8 * ((v5 * ((29 * ((v0 - 786973707) & 0x2EE88F7B ^ 0x8B78)) ^ 0x7B0)) ^ v0)))();
}

uint64_t sub_10023C2F8()
{
  STACK[0x10EE0] = &STACK[0x1D70];
  LODWORD(STACK[0x10ED8]) = (v0 - 403192222) ^ (155453101 * ((((&STACK[0x10000] + 3800) | 0xE6DE241) - ((&STACK[0x10000] + 3800) & 0xE6DE240)) ^ 0xE84BF98E));
  v1 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 + 44536)))(&STACK[0x10ED8]);
  v2 = (*(v1 + 8 * (v0 + 44602)))(STACK[0x698] - 925571059, STACK[0x768] - 1383350530, 0, *(&off_1010A0B50 + (v0 ^ 0x187F)) - 2088764827, &STACK[0x1D70], 2);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10023C4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, unint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(a52) = 0;
  v69 = *a66;
  v70 = *STACK[0x3A0];
  STACK[0x368] = v67;
  LODWORD(STACK[0x22C]) = v69;
  STACK[0x278] = v70;
  STACK[0x308] = a44;
  LODWORD(STACK[0x394]) = 0;
  LODWORD(STACK[0x2CC]) = -1736147872;
  return (*(v68 + 8 * v66))(a1, a2, a3, a4, a5, v69, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a44, a50, a51, a52, a53, a54, a55, v70, a57, a58);
}

uint64_t sub_10023C638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned __int8 a22, unsigned __int8 a23, unsigned __int8 a24, unsigned __int8 a25, unsigned __int8 a26, unsigned __int8 a27, unsigned __int8 a28, unsigned __int8 a29, unsigned __int8 a30, unsigned __int8 a31, unsigned __int8 a32, unsigned __int8 a33, unsigned __int8 a34, unsigned __int8 a35, unsigned __int8 a36, unsigned __int8 a37)
{
  v41 = -1802333311 * v38;
  v439 = v38;
  v440 = v37;
  v42 = (*(*(v40 + 8 * (v39 ^ 0xAEFF)) + (((-27775 * v38) >> 8) ^ 0x85) - 1512631183) + (((-27775 * v38) >> 8) ^ 0xFC) + (v39 ^ 0x2E)) << 8;
  v43 = v39;
  v44 = ((-127 * v38) ^ 0xD5) - ((2 * v38) & 0x10) + *(*(v40 + 8 * (v39 ^ 0xAB8A)) + ((-127 * v38) ^ 0xC5) - 1237619182) - 58;
  v45 = ((*(*(v40 + 8 * (v39 - 39777)) + (BYTE2(v41) ^ 0xC4) - 1215705247) << 16) ^ 0x6A706B2F) & (v44 ^ 0xEAFF7F6F);
  v46 = (((v45 & 0x56002E | v44 & 0xD0) ^ 0x7AD264F7) & (v42 & 0xF600 ^ 0x7AFEACFF) & 0x3252D461 | v42 & 0x9000) ^ 0x8DF83E23 ^ ((((v45 & 0x56002E | v44 & 0xD0) ^ 0x7AD264F7) & (v42 & 0xF600 ^ 0x7AFEACFF) | v42 & 0x9200) ^ 0x4290B06) & ((v42 & 0x900 | (*(*(v40 + 8 * (v43 - 39777)) + (BYTE2(v41) ^ 0xC4) - 1215705247) << 16) & 0x10900 | v45 & 0xA80001) ^ 0x4C252B9F);
  v47 = (((HIBYTE(v41) ^ 0xEEEEEEEE) + *(*(v40 + 8 * (v43 - 42457)) + (HIBYTE(v41) ^ 0xA1) - 1774120663) - 52) ^ 0x4E) << 24;
  v436 = v46 & (v47 ^ 0x5CFFFFFF) ^ v47 & 0xC000000;
  v48 = *(v40 + 8 * (v43 ^ 0xB42E)) - 1774723946;
  v49 = *(v48 + (a27 ^ 0xBALL));
  v50 = v43;
  v51 = *(v40 + 8 * (v43 ^ 0xB791)) - 1920123167;
  HIDWORD(v53) = v49 ^ 0x4A;
  LODWORD(v53) = ~v49 << 24;
  v52 = v53 >> 31;
  v54 = *(v40 + 8 * (v43 ^ 0xA843)) - 189187163;
  v55 = *(v40 + 8 * (v43 ^ 0xAF4B)) - 1094483875;
  v56 = *(v55 + (a34 ^ 0x54));
  v57 = (*(v51 + (a32 ^ 0xBALL)) + 93) << 8;
  v58 = *(v48 + (a31 ^ 0x27));
  HIDWORD(v53) = v58 ^ 0x4A;
  LODWORD(v53) = ~v58 << 24;
  v59 = *(v54 + (a33 ^ 0x22));
  v60 = ((((v53 >> 31) ^ (4 * (v53 >> 31) * (v53 >> 31))) << 16) ^ 0xBCA48B9) & (v57 ^ 0x5FFFFBBF) | v57 & 0xB700;
  v61 = *(v55 + (a22 ^ 0xB4));
  v62 = v59 ^ 0x9D;
  v63 = -(v60 ^ 0xB0F4DB9) ^ ((v60 ^ 0xB0F4DB9) - ((2 * (v60 ^ 0xB0F4DB9)) & 0x4E77B000) + 1731975228) ^ ((v59 ^ 0x9D) - (((v60 ^ 0xB410B046) & (v59 ^ 0xBC13B4E5) | v60 & 0x3EC4B00) ^ 0xBF1FFD78)) ^ 0x673BD83C;
  v64 = *(v48 + (a35 ^ 0x79));
  v65 = v63 + v62;
  HIDWORD(v53) = v64 ^ 0x4A;
  LODWORD(v53) = ~v64 << 24;
  LOBYTE(v63) = (*(v55 + (a30 ^ 0x74)) >> 4) & 3 ^ *(v55 + (a30 ^ 0x74));
  v66 = *(v55 + (a26 ^ 0xA4));
  v433 = v66;
  LODWORD(v48) = *(v48 + (a23 ^ 0xC2) - 2 * ((a23 ^ 0xC2) & 0x93u) + 147);
  v67 = v52 ^ (4 * v52 * v52);
  v68 = (((2 * v48) & 0xE ^ 0x47) & (~(2 * v48) | 0xF) | (2 * v48) & 0x1B0) ^ ((v48 >> 7) | 6);
  LOBYTE(v52) = *(v51 + (a28 ^ 0xCLL));
  LOBYTE(v48) = *(v51 + (a36 ^ 0x7ELL));
  LOBYTE(v62) = *(v51 + (a24 ^ 0x26));
  v69 = *(v54 + (a25 ^ 0x12));
  LODWORD(v51) = (v68 ^ (4 * (v68 ^ 0xD4) * (v68 ^ 0xD4))) << 16;
  LODWORD(v51) = (v51 ^ 0x3901A1FF) & (v69 ^ 0x39B7A909) ^ (v51 & 0x480000 | 0x4005228);
  v70 = *(v54 + (a29 ^ 0xE5));
  v71 = *(v54 + (a37 ^ 0xDELL));
  v72 = *(v40 + 8 * (v50 - 40544)) - 1468471190;
  LODWORD(v55) = *(v72 + 4 * ((v61 ^ (v61 >> 4) & 3) ^ 0xDDu));
  v73 = ((v71 ^ 0xFFFFFFEF) & ((((v53 >> 31) ^ (4 * (v53 >> 31) * (v53 >> 31))) << 16) ^ 0x844094B0) | v71 & 0x4F) ^ 0x114EA082;
  v74 = *(v40 + 8 * (v50 ^ 0xAC2A)) - 227883918;
  v75 = *(v40 + 8 * (v50 ^ 0xA83B)) - 629580531;
  v76 = v55 + 195154082;
  LODWORD(v55) = ((v55 + 195154082) >> 5) ^ ((v55 + 195154082) >> 3);
  v77 = *(v40 + 8 * (v50 ^ 0xAEA4)) - 56042930;
  LODWORD(v71) = *(v74 + 4 * (v67 ^ 0xD3u)) ^ v67 ^ 0x34 ^ ((((v71 ^ 0xEF) & 0xB0 | v71 & 0x4F) ^ 0x7615356B) + *(v77 + 4 * v71) - 1868233456) ^ ((-v55 ^ (v76 - (v55 ^ v76)) ^ (v55 + 370237478 + (~(2 * v55) | 0xD3DD3FB5)) ^ 0x16116025) + v76) ^ (*(v75 + 4 * (BYTE1(v65) ^ 0x43u)) + 2016039656);
  v78 = *(v72 + 4 * (v66 ^ 0xDEu ^ (((v66 >> 4) & 3) + ~(2 * ((v66 >> 4) & 3)) - 96))) + 195154082;
  HIDWORD(v53) = v78;
  LODWORD(v53) = v78;
  LODWORD(v53) = (v53 >> 30) & 0xFFFFFF83 ^ __ROR4__(v78, 28);
  HIDWORD(v53) = v53;
  LODWORD(v48) = v78 ^ BYTE2(v65) ^ (*(v75 + 4 * ((v48 + 93) ^ 0xC1u)) + 2016039656) ^ *(v74 + 4 * (BYTE2(v65) ^ 0x15u)) ^ ((v53 >> 4) >> 3) ^ ((v51 ^ 0x76153554) + *(v77 + 4 * (v69 ^ 0xBE)) - 1868233456);
  v79 = *(v74 + 4 * (BYTE2(v73) ^ 0x92u));
  LODWORD(v55) = v79 & 0x800000 | BYTE2(v73);
  v80 = *(v72 + 4 * (v63 ^ HIBYTE(v65) ^ 0x2B)) + 195154082;
  v81 = v56 ^ 0xBF ^ ((v56 >> 4) | 0x2C);
  v82 = (*(v75 + 4 * ((v62 + 93) ^ 0x6Au)) + 2016039656) ^ v79 & 0xFF7FFFFF ^ v55 ^ ((v70 ^ 0x76153557) - 1868233456 + *(v77 + 4 * (v70 ^ 0x9C))) ^ (((v80 >> 5) ^ (v80 >> 3)) + v80 + 2 * (((v80 >> 5) ^ (v80 >> 3)) & v80) - 4 * (((v80 >> 5) ^ (v80 >> 3)) & v80));
  v83 = (v65 ^ 0x76153555) - 1868233456 + *(v77 + 4 * (v65 ^ 0x9Eu));
  v84 = *(v72 + 4 * v81) + 195154082;
  v85 = v84 ^ BYTE2(v51) ^ (v84 >> 3) ^ *(v74 + 4 * (BYTE2(v51) ^ 0x51u)) ^ (v84 >> 5) ^ (*(v75 + 4 * ((v52 + 93) ^ 0x2Bu)) + 2016039656) ^ v83;
  BYTE1(v51) = BYTE1(v48) ^ 0x85;
  v86 = *(v72 + 4 * ((v71 ^ 0xE56CB419) >> 24)) + 195154082;
  v87 = *(v74 + 4 * (((v48 ^ 0xDFFD85F9) >> 16) ^ 0x45u)) ^ ((v48 ^ 0xDFFD85F9) >> 16) ^ v86 ^ (v86 >> 3) ^ (v86 >> 5) ^ (*(v77 + 4 * (v85 ^ 0x3Bu)) + (v85 ^ 0x761535F0) - 1868233456) ^ (*(v75 + 4 * (BYTE1(v82) ^ 0x5Fu)) + 2016039656);
  v88 = *(v72 + 4 * ((v48 ^ 0xDFFD85F9) >> 24)) + 195154082;
  v89 = *(v74 + 4 * (BYTE2(v82) ^ 0x7Fu)) ^ BYTE2(v82) ^ v88 ^ (v88 >> 3) ^ (v88 >> 5) ^ (*(v75 + 4 * (BYTE1(v85) ^ 0xEBu)) + 2016039656) ^ ((v71 ^ 0x761535A7) - 1868233456 + *(v77 + 4 * (v71 ^ 0x6Cu)));
  v90 = *(v72 + 4 * (HIBYTE(v82) ^ 0x3B)) + 195154082;
  v91 = v90 ^ BYTE2(v85) ^ (v90 >> 5) ^ (v90 >> 3) ^ *(v74 + 4 * (BYTE2(v85) ^ 0xC6u)) ^ (*(v75 + 4 * ((v71 ^ 0xB419) >> 8)) + 2016039656) ^ ((v48 ^ 0x76153547) - 1868233456 + *(v77 + 4 * (v48 ^ 0x8Cu)));
  LODWORD(v48) = (v82 ^ 0x7615350B) - 1868233456 + *(v77 + 4 * (v82 ^ 0xC0u));
  v92 = *(v72 + 4 * (HIBYTE(v85) ^ 2));
  v93 = *(v74 + 4 * (((v71 ^ 0xE56CB419) >> 16) ^ 0x45u)) ^ ((v71 ^ 0xE56CB419) >> 16) ^ (v92 + 195154082) ^ ((v92 + 195154082) >> 3) ^ ((v92 + 195154082) >> 5) ^ (*(v75 + 4 * BYTE1(v51)) + 2016039656) ^ v48;
  LODWORD(v48) = *(v72 + 4 * (HIBYTE(v87) ^ 0x4B)) + 195154082;
  v94 = (v48 >> 5) ^ (v48 >> 3);
  LODWORD(v51) = v94 & 0xAB6A119;
  v95 = (v48 & 0x35495EE6 ^ 0xB174DEBE ^ v94 & 0x15495EE6) & (v48 & 0xCAB6A119 ^ 0xB57FDEFF) | v48 & 0x4A822101;
  v96 = ((v91 ^ 0x4022) >> 8);
  v97 = *(v74 + 4 * (BYTE2(v89) ^ 0x73u)) ^ BYTE2(v89) ^ v51 ^ (*(v75 + 4 * (v96 ^ 0xE8u)) + ((((v96 - (v96 ^ 0x9290A910)) ^ 0xFFFFFFE0) + v96) ^ v96) - 442914344) ^ v95 ^ (*(v77 + 4 * (((v93 ^ 0x968F6CB1) & 0x75 | v93 & 0x8A) ^ 0xF5)) + (v93 ^ 0x7615350F) - 1868233456);
  LODWORD(v51) = *(v72 + 4 * (HIBYTE(v89) ^ 0xAF)) + 195154082;
  LODWORD(v55) = *(v74 + 4 * (BYTE2(v93) ^ 0xCAu));
  v98 = *(v74 + 4 * (((v91 ^ 0xAF5A4022) >> 16) ^ 0x45u)) ^ ((v91 ^ 0xAF5A4022) >> 16) ^ v51 ^ (v51 >> 3) ^ (v51 >> 5) ^ (*(v75 + 4 * (BYTE1(v93) ^ 0x84u)) + 2016039656) ^ ((v87 ^ 0x761535D4) - 1868233456 + *(v77 + 4 * (v87 ^ 0x1Fu)));
  v99 = ((v93 ^ 0x968F6CB1) >> 16) ^ 0x1A10A2AF;
  v100 = *(v72 + 4 * ((v91 ^ 0xAF5A4022) >> 24)) + 195154082;
  v101 = v100 ^ (v100 >> 5) ^ (v100 >> 3) ^ (*(v75 + 4 * (BYTE1(v87) ^ 0x72u)) + 2016039656) ^ ((v89 ^ 0x7615350D) - 1868233456 + *(v77 + 4 * (v89 ^ 0xC6u))) ^ (v99 + (v55 ^ 0x6C68A95) + ((2 * ((v55 ^ 0x1800A2FD) & v99 ^ ((v93 ^ 0x968F6CB1) >> 16) & 0x68)) ^ 0xCBFFBFAF) + 1);
  v102 = *(v72 + 4 * ((v93 ^ 0x968F6CB1) >> 24)) + 195154082;
  v103 = *(v74 + 4 * (BYTE2(v87) ^ 0xD8u)) ^ BYTE2(v87) ^ v102 ^ (v102 >> 3) ^ (v102 >> 5) ^ (*(v75 + 4 * (BYTE1(v89) ^ 0x30u)) + 2016039656);
  v104 = v97 ^ 0x13745144;
  v434 = v97;
  LODWORD(v48) = *(v72 + 4 * ((v97 ^ 0x13745144u) >> 24));
  v105 = v103 ^ ((v91 ^ 0x7615359C) - 1868233456 + *(v77 + 4 * (v91 ^ 0x57u)));
  v106 = (v48 ^ 0xF24AB80E) & (2 * (v48 & 0xF06AB82F)) ^ v48 & 0xF06AB82F;
  LODWORD(v55) = ((2 * (v48 ^ 0xF20AF802)) ^ 0x4C0805A) & (v48 ^ 0xF20AF802) ^ (2 * (v48 ^ 0xF20AF802)) & 0x260402C;
  v107 = v106 ^ 0x260402D ^ (v55 ^ 0x400008) & (4 * v106);
  LODWORD(v55) = (4 * (v55 ^ 0x2204025)) & 0x260402C ^ 0x2604009 ^ ((4 * (v55 ^ 0x2204025)) ^ 0x98100B4) & (v55 ^ 0x2204025);
  v108 = (16 * v107) & 0x2604020 ^ v107 ^ ((16 * v107) ^ 0x260402D0) & v55;
  LODWORD(v55) = (16 * v55) & 0x2604000 ^ 0x60402D ^ ((16 * v55) ^ 0x260402D0) & v55;
  v109 = (v108 << 8) & 0x2604000 ^ v108 ^ ((v108 << 8) ^ 0x60402D00) & v55;
  v110 = (v48 ^ (2 * ((v109 << 16) & 0x2600000 ^ v109 ^ ((v109 << 16) ^ 0x402D0000) & ((v55 << 8) & 0x2600000 ^ 0x2200000 ^ ((v55 << 8) ^ 0x60400000) & v55))) ^ 0xEB5D2006) + ((2 * (((v48 ^ 0x40BD8B52) + 819409789) ^ v48 ^ ((v48 ^ 0x154CE038) + 1697011735) ^ ((v48 ^ 0xD9BD344) + 502360939) ^ ((v48 ^ 0xF7FFFFFF) + 127223762))) & 0x366E30E6 ^ 0x162A00A2);
  v111 = *(v77 + 4 * (v105 ^ 0xF7u)) + (v105 ^ 0x7615353C) - 1868233456;
  if ((v105 & 0x100000) != 0)
  {
    v112 = 16;
  }

  else
  {
    v112 = -16;
  }

  v113 = *(v72 + 4 * ((v98 ^ 0x3660900F) >> 24)) + 195154082;
  LODWORD(v114) = __ROR4__(v113 ^ BYTE2(v101) ^ (v113 >> 5) ^ (v113 >> 3) ^ (*(v75 + 4 * (BYTE1(v105) ^ 0x54u)) + 2016039656) ^ *(v74 + 4 * (BYTE2(v101) ^ 0xFFu)) ^ ((v97 ^ 0x761535FA) - 1868233456 + *(v77 + 4 * (v97 ^ 0x31u))), 12);
  v115 = *(v72 + 4 * (HIBYTE(v101) ^ 0xBE)) + 195154082;
  v116 = ((BYTE2(v105) ^ 0xB5) + v112) ^ *(v74 + 4 * (((BYTE2(v105) ^ 0xB5) + v112) ^ 0x55u)) ^ (*(v75 + 4 * BYTE1(v104)) + 2016039656) ^ v115 ^ (((v115 & 0x5B315F70 ^ 0xF97D97C8 ^ (v115 >> 2) & 0x1B315F70) & ~((v115 >> 2) & 0x24CEA088 ^ v115 & 0xA4CEA088) | ((v115 >> 2) & 0x24CEA088 ^ v115 & 0xA4CEA088) & 0x4822000) >> 3) ^ 0x3F99AD3;
  v117 = (v98 ^ 0x761535B1) + *(v77 + 4 * (v98 ^ 0x7Au));
  v118 = *(v72 + 4 * (HIBYTE(v105) ^ 0xF)) + 195154082;
  v119 = ((1868233456 - v117) ^ (v117 - 1868233456 - ((2 * (v117 - 1868233456)) & 0x9A165D32) - 854905191) ^ 0xCD0B2E99 ^ (v116 - (v116 ^ (v117 - 1868233456)))) + v116;
  v120 = ((v98 ^ 0x3660900F) >> 16) ^ (*(v75 + 4 * (BYTE1(v101) ^ 0x3Fu)) + 2016039656) ^ *(v74 + 4 * (((v98 ^ 0x3660900F) >> 16) ^ 0x45u)) ^ v111 ^ v110 ^ (v110 >> 3) ^ (v110 >> 5) ^ 0x1CD6283A;
  v121 = v120 - ((2 * v120) & 0x1BFF9736) - 1912616037;
  v122 = (*(v75 + 4 * (BYTE1(v98) ^ 0x78u)) + 2016039656) ^ *(v74 + 4 * (BYTE2(v104) ^ 0x45u)) ^ ((v101 ^ 0x76153560) - 1868233456 + *(v77 + 4 * (v101 ^ 0xABu))) ^ (((v118 >> 5) ^ (v118 >> 3)) + v118 - 2 * (((v118 >> 5) ^ (v118 >> 3)) & v118));
  LODWORD(v114) = v114 ^ 0x7E003893;
  HIDWORD(v114) = v114;
  v123 = v114 >> 20;
  v124 = *(v72 + 4 * (HIBYTE(v121) ^ 0xA9)) + 195154082;
  v125 = *(v74 + 4 * (BYTE2(v123) ^ 0xD3u)) ^ BYTE2(v123) ^ v124 ^ (v124 >> 3) ^ (v124 >> 5) ^ (*(v75 + 4 * (((((-1296 - v117) ^ (v117 + 1296 - ((2 * (v117 + 1296)) & 0x5D32) + 11929) ^ 0x2E99 ^ (v116 - (v116 ^ (v117 + 1296)))) + v116) ^ 0x4C70) >> 8)) + 2016039656) ^ (*(v77 + 4 * ((v122 ^ BYTE2(v104)) ^ 0x6Au)) + ((v122 ^ BYTE2(v104)) ^ 0x89EACA5E) - 2 * ((v122 ^ BYTE2(v104)) ^ 0x89EACA5E) - 1868233457);
  v126 = *(v72 + 4 * (HIBYTE(v123) ^ 0x36)) + 195154082;
  v127 = v126 ^ (v126 >> 5) ^ (v126 >> 3) ^ *(v74 + 4 * (((v119 ^ 0xB0F34C70) >> 16) ^ 0x45u)) ^ (*(v75 + 4 * (BYTE1(v122) ^ 0xF7u)) + 2016039656) ^ ((v119 ^ 0xB0F34C70) >> 16) ^ (*(v77 + 4 * (v121 ^ 0x75u)) + (v121 ^ 0x761535BE) - 1868233456);
  v128 = *(v72 + 4 * ((v119 ^ 0xB0F34C70) >> 24)) + 195154082;
  v129 = HIBYTE(v122) ^ 0x98;
  v130 = v128 ^ BYTE2(v122) ^ (v128 >> 5) ^ (v128 >> 3) ^ *(v74 + 4 * (BYTE2(v122) ^ 0x83u)) ^ ((v114 >> 20) + 112867856 + *(v77 + 4 * ((v114 >> 20) ^ 0xCBu))) ^ (*(v75 + 4 * (BYTE1(v121) ^ 0xE8u)) + 2016039656);
  v131 = *(v72 + 4 * v129) + 195154082;
  v132 = v131 ^ *(v74 + 4 * (BYTE2(v121) ^ 0x45u)) ^ (v131 >> 3) ^ (v131 >> 5) ^ (*(v75 + 4 * (BYTE1(v123) ^ 0x83u)) + 2016039656) ^ ((v119 ^ 0x761535CE) - 1868233456 + *(v77 + 4 * (v119 ^ 5u)));
  v133 = *(v72 + 4 * (HIBYTE(v125) ^ 0x52)) + 195154082;
  v134 = v133 ^ *(v74 + 4 * (BYTE2(v127) ^ 0xC0u)) ^ (v133 >> 3) ^ (v133 >> 5) ^ (*(v75 + 4 * (BYTE1(v130) ^ 0x5Fu)) + 2016039656) ^ (*(v77 + 4 * ((v132 ^ BYTE2(v121)) ^ 0xA7u)) + ((v132 ^ BYTE2(v121)) ^ 0x7615356C) - 1868233456) ^ BYTE2(v127);
  v135 = *(v74 + 4 * (BYTE2(v130) ^ 0xB3u));
  v136 = (v135 ^ ((BYTE2(v130) ^ 0x1A10A259) - (BYTE2(v130) ^ 0x1CD628CC ^ v135)) ^ 0x6C68A95 ^ (-113674901 - (((v135 ^ 0x46E51878) - 1189419128) ^ ((v135 ^ 0xB84EA8BB) + 1202804549) ^ ((v135 ^ 0xF86D3A56) + 127059370)))) + (BYTE2(v130) ^ 0x1A10A259);
  v137 = *(v72 + 4 * (HIBYTE(v130) ^ 0xCB));
  v138 = ((v137 + 195154082) >> 5) ^ ((v137 + 195154082) >> 3) ^ (v137 - ((2 * (v137 + 195154082)) & 0x4DF393A4) + 849058420);
  v139 = v138 ^ 0x26F9C9D2;
  v140 = *(v74 + 4 * (BYTE2(v132) ^ 0x23u));
  v141 = v140 ^ (-113674901 - (((v140 ^ 0x11439256) - 289641046) ^ ((v140 ^ 0x11A70D4C) - 296160588) ^ ((v140 ^ 0x622158F) - 102897039))) ^ 0x6C68A95 ^ ((v138 ^ 0x26F9C9D2) - (((v138 ^ 0x26F9C9D2) - 2 * ((v138 ^ 0x26F9C9D2) & 0x6C68A9D ^ v138 & 8) + 113674901) ^ v140));
  v142 = *(v72 + 4 * (HIBYTE(v127) ^ 0x5C)) + 195154082;
  v143 = v142 ^ (v142 >> 5) ^ (v142 >> 3) ^ (*(v75 + 4 * (BYTE1(v132) ^ 0x6Fu)) + 2016039656) ^ ((v125 & 0xBE ^ 0x8969E791 ^ (v125 & 0x41 | 0xFF7CD290)) - 1868233456 + *(v77 + 4 * (v125 ^ 0xCAu))) ^ v136;
  v144 = ((v127 ^ 0x76153539) - 1868233456 + *(v77 + 4 * (v127 ^ 0xF2u))) ^ (*(v75 + 4 * (BYTE1(v125) ^ 0x8Fu)) + 2016039656) ^ (v141 + v139);
  v145 = *(v72 + 4 * (HIBYTE(v132) ^ 0x68)) + 195154082;
  v146 = (*(v75 + 4 * (BYTE1(v127) ^ 0xFCu)) + 2016039656) ^ (*(v77 + 4 * (v130 ^ 0x34u)) - v130 + 112868111) ^ *(v74 + 4 * (BYTE2(v125) ^ 0x89u)) ^ ((v145 & 0x93100C2C ^ 0x3B3ACE03 ^ ((v145 >> 5) ^ (v145 >> 3)) & 0x13100C2C) & ~(((v145 >> 5) ^ (v145 >> 3)) & 0xCEFF3D3 ^ v145 & 0x6CEFF3D3) | (((v145 >> 5) ^ (v145 >> 3)) & 0xCEFF3D3 ^ v145 & 0x6CEFF3D3) & 0x44C531D0);
  v147 = v134 ^ 0x9679A8C2;
  v148 = *(v72 + 4 * (HIBYTE(v134) ^ 0x3F)) + 195154082;
  v149 = v148 ^ *(v74 + 4 * (((v143 ^ 0x447C53B0) >> 16) ^ 0x45u)) ^ (v148 >> 3) ^ (v148 >> 5) ^ (*(v75 + 4 * (((((v127 ^ 0x3539) + 1296 + *(v77 + 4 * (v127 ^ 0xF2u))) ^ (*(v75 + 4 * (BYTE1(v125) ^ 0x8Fu)) + 21224) ^ (v141 + v139)) >> 8) ^ 0x81u)) + 2016039656) ^ ((v143 ^ 0x447C53B0) >> 16) ^ (*(v77 + 4 * ((v146 ^ BYTE2(v125)) ^ 0x65u)) + ((v146 ^ BYTE2(v125)) ^ 0x761535AE) - 1868233456);
  v150 = (v134 ^ 0x7615357C) - 1868233456 + *(v77 + 4 * (v134 ^ 0xB7u));
  v151 = *(v72 + 4 * ((v143 ^ 0x447C53B0) >> 24)) + 195154082;
  v152 = BYTE2(v144);
  v153 = v151 ^ (v151 >> 5) ^ (v151 >> 3) ^ *(v74 + 4 * (BYTE2(v144) ^ 0x89u)) ^ (*(v75 + 4 * ((((BYTE1(v146) ^ 0x85) - (BYTE1(v146) ^ 0x6D)) ^ 0xFFFFFFF0) + (BYTE1(v146) ^ 0x85))) + 2016039656) ^ v150;
  LOBYTE(v132) = v144 ^ BYTE2(v132);
  v154 = *(v72 + 4 * (HIBYTE(v144) ^ 0xAE)) + 195154082;
  v155 = v154 ^ BYTE2(v146) ^ (v154 >> 3) ^ *(v74 + 4 * (BYTE2(v146) ^ 0x45u)) ^ (v154 >> 5) ^ (*(v75 + 4 * BYTE1(v147)) + 2016039656) ^ ((v143 ^ 0x7615350E) - 1868233456 + *(v77 + 4 * (v143 ^ 0xC5u)));
  v156 = *(v72 + 4 * (HIBYTE(v146) ^ 0xC0)) + 195154082;
  v157 = *(v74 + 4 * (BYTE2(v147) ^ 0x45u)) ^ BYTE2(v147) ^ v156 ^ (v156 >> 3) ^ (v156 >> 5) ^ (*(v75 + 4 * (BYTE1(v143) ^ 0xBBu)) + 2016039656) ^ ((v132 ^ 0x7615350A) - 1868233456 + *(v77 + 4 * (v132 ^ 0xC1u)));
  v158 = (*(v74 + 4 * (BYTE2(v147) ^ 0x45u)) ^ BYTE2(v147) ^ v156 ^ (v156 >> 3) ^ (v156 >> 5) ^ (*(v75 + 4 * (BYTE1(v143) ^ 0xBBu)) - 24) ^ ((v132 ^ 0xA) + 16 + *(v77 + 4 * (v132 ^ 0xC1u))));
  v159 = *(v77 + 4 * (v158 ^ 0x8Au)) + (v158 ^ 0x76153541) - 1868233456;
  v160 = *(v72 + 4 * (HIBYTE(v153) ^ 0xBB)) + 195154082;
  v161 = (v160 >> 2) & 0x1000 ^ v160;
  if (((v160 >> 2) & 0x1000 & v160) != 0)
  {
    v161 = v160 - ((v160 >> 2) & 0x1000);
  }

  v162 = *(v72 + 4 * (HIBYTE(v149) ^ 0xD8)) + 195154082;
  v163 = BYTE2(v153) ^ *(v74 + 4 * (BYTE2(v153) ^ 0xF7u)) ^ v162 ^ (v162 >> 3) ^ (v162 >> 5) ^ (*(v75 + 4 * (BYTE1(v155) ^ 0x69u)) + 2016039656) ^ v159 ^ 0x1CD62888;
  v164 = *(v74 + 4 * (BYTE2(v155) ^ 0xABu)) ^ BYTE2(v155) ^ v160 ^ (*(v75 + 4 * (BYTE1(v157) ^ 0xDu)) + 2016039656) ^ ((v149 ^ 0x76153519) - 1868233456 + *(v77 + 4 * (v149 ^ 0xD2u))) ^ __ROR4__(__ROR4__(((v161 + ((v160 >> 2) & 0xFFFFEFFF) - 2 * (v161 & (v160 >> 2) & 0xFFFFEFFF)) >> 3) ^ 0x82637F8A, 3) ^ 0x366CE605, 29);
  v165 = *(v72 + 4 * (HIBYTE(v155) ^ 0x28)) + 195154082;
  v166 = __ROR4__(BYTE2(v157) ^ *(v74 + 4 * (BYTE2(v157) ^ 0xC7u)) ^ v165 ^ (v165 >> 3) ^ (v165 >> 5) ^ 0xD54BAC08, 2);
  LOWORD(v165) = v153 ^ v152;
  v167 = (((v153 ^ v152) ^ 0x76153515) - 1868233456 + *(v77 + 4 * ((v153 ^ v152) ^ 0xDEu))) ^ (*(v75 + 4 * (BYTE1(v149) ^ 0xF1u)) + 2016039656) ^ __ROR4__(v166 ^ 0xF82C5294, 30);
  v168 = *(v72 + 4 * (HIBYTE(v157) ^ 0xE8)) + 195154082;
  v169 = (((v168 ^ (v168 >> 2)) >> 5) ^ 0xDFF996D3) & (~((v168 ^ (v168 >> 2)) << 27) | 0x3FFFFFFF) ^ __ROR4__(v168, 2);
  v170 = BYTE1(v153) ^ 0x4D;
  if ((v165 & 0x400) != 0)
  {
    v171 = 4;
  }

  else
  {
    v171 = -4;
  }

  v172 = v163 - ((2 * v163) & 0x5EAED6AC) - 1353225386;
  v174 = __ROR4__(v169, 30);
  v173 = (*(v75 + 4 * ((v170 + v171) ^ 0xECu)) + 2016039656) ^ *(v74 + 4 * (BYTE2(v149) ^ 0xBu)) ^ ((v155 ^ 0x761535D4) - 1868233456 + *(v77 + 4 * (v155 ^ 0x1Fu))) ^ v174;
  v175 = ((*(v75 + 4 * ((v170 + v171) ^ 0xECu)) - 24) ^ *(v74 + 4 * (BYTE2(v149) ^ 0xBu)) ^ ((v155 ^ 0xD4) + 16 + *(v77 + 4 * (v155 ^ 0x1Fu))) ^ v174 ^ BYTE2(v149));
  v176 = *(v72 + 4 * (HIBYTE(v172) ^ 0xA9)) + 195154082;
  v428 = *(v75 + 4 * (BYTE1(v167) ^ 0x81u));
  v177 = v176 ^ (v176 >> 5) ^ (v176 >> 3) ^ *(v74 + 4 * (BYTE2(v164) ^ 0x24u)) ^ (v428 + 2016039656) ^ BYTE2(v164) ^ (*(v77 + 4 * (v175 ^ 0xA0u)) + (v175 ^ 0x7615356B) - 1868233456);
  v178 = *(v72 + 4 * (HIBYTE(v164) ^ 0xAB)) + 195154082;
  v179 = v178 ^ *(v74 + 4 * (BYTE2(v167) ^ 0x62u)) ^ (v178 >> 3) ^ (v178 >> 5) ^ BYTE2(v167) ^ (*(v75 + 4 * (BYTE1(v173) ^ 0xF6u)) + 2016039656) ^ (((v163 - ((2 * v163) & 0xAC) + 86) ^ 0x761535BE) - 1868233456 + *(v77 + 4 * ((v163 - ((2 * v163) & 0xAC) + 86) ^ 0x75u)));
  v180 = *(v72 + 4 * (HIBYTE(v167) ^ 0xBC)) + 195154082;
  v181 = *(v74 + 4 * (BYTE2(v173) ^ 0xAAu)) ^ BYTE2(v173) ^ v180 ^ (v180 >> 3) ^ (v180 >> 5) ^ (*(v75 + 4 * (BYTE1(v172) ^ 0xE8u)) + 2016039656) ^ ((v164 ^ 0x761535B2) - 1868233456 + *(v77 + 4 * (v164 ^ 0x79u)));
  v182 = *(v72 + 4 * (HIBYTE(v173) ^ 0x25));
  v183 = (v182 ^ 0xFE40BC2E) & (2 * (v182 & 0xF06AB82F)) ^ v182 & 0xF06AB82F;
  v184 = ((2 * (v182 ^ 0x3ED5BC34)) ^ 0x9D7E0836) & (v182 ^ 0x3ED5BC34) ^ (2 * (v182 ^ 0x3ED5BC34)) & 0xCEBF041A;
  v185 = (v184 ^ 0x803E0010) & (4 * v183) ^ v183;
  v186 = ((4 * (v184 ^ 0x42810409)) ^ 0x3AFC106C) & (v184 ^ 0x42810409) ^ (4 * (v184 ^ 0x42810409)) & 0xCEBF0418;
  v187 = v185 ^ 0xCEBF041B ^ (v186 ^ 0xABC0000) & (16 * v185);
  v188 = (16 * (v186 ^ 0xC4030413)) & 0xCEBF0410 ^ 0x40F040B ^ ((16 * (v186 ^ 0xC4030413)) ^ 0xEBF041B0) & (v186 ^ 0xC4030413);
  v189 = (v187 << 8) & 0xCEBF0400 ^ v187 ^ ((v187 << 8) ^ 0xBF041B00) & v188;
  v190 = (((4 * ((v189 << 16) & 0xFCFFFFFF ^ v189 ^ ((v189 << 16) ^ 0x41B0000) & ((v188 << 8) & 0xEBF0000 ^ ((v188 << 8) ^ 0x3F040000) & v188 ^ 0xFF0000))) ^ (2 * v182)) & 0x366E30E6 ^ 0x32442022) + (v182 ^ ((v182 ^ 0xA31E3885) + 1400144044) ^ ((v182 ^ 0x7698A2) - 266592115) ^ ((v182 ^ 0x53021A1A) - 1553423819) ^ ((v182 ^ 0xFFFFFDEC) + 261440963) ^ 0x14A25FA2);
  v191 = *(v74 + 4 * (BYTE2(v172) ^ 0x45u)) ^ BYTE2(v172) ^ (*(v75 + 4 * (BYTE1(v164) ^ 0x86u)) + 2016039656) ^ ((v167 ^ 0x76153506) - 1868233456 + *(v77 + 4 * (v167 ^ 0xCDu))) ^ v190 ^ (v190 >> 3) ^ (v190 >> 5);
  v192 = *(&off_1010A0B50 + (v50 ^ 0xA1DC)) - 248530314;
  v193 = *(&off_1010A0B50 + (v50 ^ 0xB432)) - 1994920630;
  v194 = v191 ^ 0x1A6BA0BD;
  v438 = v50;
  v195 = *(&off_1010A0B50 + v50 - 40604) - 807881138;
  v196 = v181 ^ 0x7B34CACC;
  v427 = *&v195[4 * (BYTE1(v196) ^ 0x9A)] - BYTE1(v196);
  v197 = (((2 * v191) & 0xA0 ^ 0xFFFFFFDF) + (v191 ^ 0xBD) + 909524049) ^ 0x36363C32;
  v198 = *(&off_1010A0B50 + v50 - 40498) - 42188282;
  v199 = v177 ^ 0x688C6462;
  v200 = *&v198[4 * v177];
  v201 = (16 * v200) & 0xDE429940;
  v202 = (16 * v200) & 0x21BD66B0 ^ 0x8D22DEB;
  v200 >>= 28;
  v203 = v202 & (v200 & 0x55555555 ^ 0x6BFF7FFB) ^ (v200 & 4 | 0x42205000);
  v204 = *&v192[4 * ((v181 ^ 0x7B34CACCu) >> 24)] - 339016074;
  v205 = (v204 >> 2) & 0x1516B9CE ^ v204;
  v206 = (v203 ^ 0x94008010) & ((v201 ^ 0xC40FCFBA) & (v200 ^ 0xDE4FDFF2) ^ 0xC062DE66);
  v207 = (BYTE2(v194) - (BYTE2(v194) ^ 0xA2D1A651) - ((2 * (BYTE2(v194) - (BYTE2(v194) ^ 0xA2D1A651))) & 0xB20C9126) + 1536617619) ^ *&v193[4 * (BYTE2(v194) ^ 0xCD)];
  v208 = v207 & 0x10000000;
  if ((v207 & 0x10000000 & v205) != 0)
  {
    v208 = -v208;
  }

  v431 = v195;
  v209 = (BYTE1(v179) ^ 0xFFFFFF95) - 892219434 + *&v195[4 * (BYTE1(v179) ^ 0xF0)];
  v210 = v436 ^ __ROR4__(*&v198[4 * (v179 ^ 0x4D)], 28) ^ (*&v195[4 * (BYTE1(v199) ^ 0x9A)] - BYTE1(v199) - 892219435) ^ v207 & 0xEFFFFFFF ^ 0xCBA4EAB9 ^ (v208 + v205);
  v211 = *&v192[4 * (HIBYTE(v179) ^ 0xC9)] - 339016074;
  v212 = v436 ^ (BYTE2(v196) - (BYTE2(v196) ^ 0xA2D1A651)) ^ v211 ^ *&v193[4 * (BYTE2(v196) ^ 0xCD)] ^ (v211 >> 2) & 0x1516B9CE ^ v203 & 0x21907F23 ^ v206 ^ 0xCAD2A312 ^ (*&v195[4 * (BYTE1(v194) ^ 0x9A)] - BYTE1(v194) - 892219435);
  v435 = v436 ^ 0x4D8E7716;
  v213 = *&v192[4 * HIBYTE(v199)];
  v429 = v193;
  v430 = v192;
  v432 = v198;
  v214 = v436 ^ ((BYTE2(v179) ^ 0xBF) - (BYTE2(v179) ^ 0xA2D1A6EE)) ^ (v213 - 339016074) ^ *&v193[4 * (BYTE2(v179) ^ 0x72)] ^ ((v213 - 339016074) >> 2) & 0x1516B9CE ^ (v427 - 892219435) ^ (*&v198[4 * v197] >> 28) ^ (16 * *&v198[4 * v197]) ^ v212 ^ 0x39DAE64;
  v215 = v210 ^ v212;
  HIDWORD(v216) = v215 ^ 0xE3B83E;
  LODWORD(v216) = v215 ^ 0xC4000000;
  v217 = *&v192[4 * HIBYTE(v194)] - 339016074;
  v218 = (BYTE2(v199) - (BYTE2(v199) ^ 0x2D1A651)) & 0xD0203FF ^ v436 ^ 0x4D8E7716 ^ *&v193[4 * (BYTE2(v199) ^ 0xCD)] ^ v209 ^ v217 ^ (v217 >> 2) & 0x1516B9CE;
  v219 = *&v198[4 * (v181 ^ 0xAE)];
  v220 = v218 ^ (16 * v219) ^ (v219 >> 28);
  LODWORD(v216) = __ROR4__((v216 >> 24) - ((2 * (v216 >> 24)) & 0xF0F07796) + 2021145547, 8);
  v221 = v220 ^ v216;
  v222 = v210 ^ v214;
  v223 = *(v72 + 4 * (((v210 ^ v214) >> 24) ^ 0x7B)) + 195154082;
  v224 = v214 ^ v220 ^ 0xA5D74BFC;
  v225 = v222 ^ v220 ^ 0xA5D74BFC ^ v220 ^ v216 ^ 0x1B384013;
  v226 = v223 ^ (*(v75 + 4 * (((v224 ^ 0xD812) >> 8) ^ 0xE8u)) + 2016039656) ^ *(v74 + 4 * (BYTE2(v221) ^ 0xC6u)) ^ ((v223 ^ (v223 >> 2)) >> (v428 & 2) >> (v428 & 1) >> (~v428 & 3)) ^ BYTE2(v221) ^ (*(v77 + 4 * ((v222 ^ v220 ^ 0xFC ^ v220 ^ v216) ^ 0x66u)) + ((v222 ^ v220 ^ 0xFC ^ v220 ^ v216) ^ 0x761535AD) - 1868233456);
  v227 = *(v72 + 4 * (((v220 ^ v216) >> 24) ^ 0x78)) + 195154082;
  v228 = v227 ^ *(v74 + 4 * (((v224 ^ 0xCD15D812) >> 16) ^ 0x45u)) ^ (v227 >> 3) ^ (v227 >> 5) ^ (*(v75 + 4 * BYTE1(v225)) + 2016039656) ^ ((v224 ^ 0xCD15D812) >> 16) ^ (*(v77 + 4 * (v222 ^ 0x1Bu)) + (v222 ^ 0x761535D0) - 1868233456);
  v437 = v224 ^ 0xCD15D812;
  v229 = *(v77 + 4 * (v224 ^ 0x67u)) + (v224 ^ 0x761535AC) - 1868233456;
  v230 = *(v72 + 4 * HIBYTE(v225)) + 195154082;
  v231 = v230 ^ (v230 >> 5) ^ (v230 >> 3) ^ *(v74 + 4 * (BYTE2(v222) ^ 0x30u)) ^ (*(v75 + 4 * (BYTE1(v221) ^ 0x6Bu)) + 2016039656) ^ v229;
  v232 = *(v72 + 4 * (HIBYTE(v231) ^ 0x6D));
  v233 = *(v74 + 4 * (BYTE2(v226) ^ 0x9Bu)) ^ ((v232 + 195154082) >> 3) ^ ((v232 + 195154082) >> 5) ^ (v232 - ((2 * (v232 + 195154082)) & 0x6583B6AE) + 1046719481) ^ BYTE2(v226) ^ 0x2E17F3B3;
  v234 = *(v75 + 4 * (BYTE1(v228) ^ 0xA5u));
  v235 = -2016039656 - v234;
  v236 = v234 + 2016039656;
  v237 = v234 - ((2 * (v234 + 2016039656)) & 0x999154EA);
  v238 = *(v72 + 4 * HIBYTE(v437)) + 195154082;
  v239 = v238 ^ (v238 >> 5) ^ (v238 >> 3) ^ (*(v75 + 4 * (BYTE1(v222) ^ 0xF0u)) + (BYTE1(v222) ^ 0x92908018 ^ (((v222 >> 7) | 0xFFFFFFDF) + (BYTE1(v222) ^ 0x18) + 10513)) - 442914344) ^ (*(v77 + 4 * (v221 ^ 0xE6u)) + (v221 ^ 0x7615352D) - 1868233456) ^ *(v74 + 4 * (BYTE2(v225) ^ 0x45u)) ^ BYTE2(v225);
  v240 = *(v72 + 4 * (HIBYTE(v226) ^ 4)) + 195154082;
  v241 = BYTE2(v228);
  v242 = v240 ^ *(v74 + 4 * (BYTE2(v228) ^ 0x62u)) ^ (v240 >> 3) ^ (v240 >> 5) ^ (*(v75 + 4 * ((v239 ^ 0x1715) >> 8)) + 2016039656) ^ (*(v77 + 4 * ((v231 ^ BYTE2(v222)) ^ 0xC0u)) + ((v231 ^ BYTE2(v222)) ^ 0x7615350B) - 1868233456);
  v243 = *(v72 + 4 * (HIBYTE(v228) ^ 0xD7)) + 195154082;
  v244 = v243 ^ *(v74 + 4 * (((v239 ^ 0x665C1715) >> 16) ^ 0x45u)) ^ (v243 >> 3) ^ (v243 >> 5) ^ (*(v75 + 4 * (BYTE1(v231) ^ 0x5Du)) + 2016039656) ^ ((v239 ^ 0x665C1715) >> 16) ^ (*(v77 + 4 * (v226 ^ 0x6Du)) + (v226 ^ 0x761535A6) - 1868233456);
  v245 = *(v72 + 4 * ((v239 ^ 0x665C1715) >> 24)) + 195154082;
  v246 = v245 ^ *(v74 + 4 * (BYTE2(v231) ^ 0xD6u)) ^ (v245 >> 3) ^ (v245 >> 5) ^ (*(v75 + 4 * (BYTE1(v226) ^ 0x60u)) + 2016039656) ^ BYTE2(v231) ^ (*(v77 + 4 * (v228 ^ 0xA1u)) + (v228 ^ 0x7615356A) - 1868233456);
  v247 = ((v235 ^ (v237 + 1156775261) ^ 0xCCC8AA75 ^ (v233 - (v233 ^ v236))) + v233) ^ (*(v77 + 4 * (v239 ^ 0x60u)) + (v239 ^ 0x761535AB) - 1868233456);
  v248 = (v247 & 0xFC7049A3 ^ 0xD843305F) & (v247 & 0x38FB65C ^ 0xFD7BFFFF);
  v249 = v242 ^ v241;
  v250 = v248 | v247 & 0x38C8600;
  v251 = *(v77 + 4 * (v248 ^ 0xE5u)) + (v248 ^ 0x7615352E) - 1868233456;
  v252 = *(v72 + 4 * (HIBYTE(v242) ^ 0x64)) + 195154082;
  v253 = v252 ^ *(v74 + 4 * (BYTE2(v244) ^ 0x50u)) ^ (v252 >> 3) ^ (v252 >> 5) ^ (*(v75 + 4 * (BYTE1(v246) ^ 0x87u)) + 2016039656) ^ BYTE2(v244) ^ v251;
  v254 = *(v72 + 4 * (HIBYTE(v250) ^ 0xA1)) + 195154082;
  v255 = ((v249 ^ 0xCDFC0023) >> (v247 & 0x10) >> (v247 & 0x10 ^ 0x10));
  v256 = v254 ^ *(v74 + 4 * (v255 ^ 0x45u)) ^ (v254 >> 3) ^ (v254 >> 5) ^ ((v246 ^ 0x76153552) - 1868233456 + *(v77 + 4 * (v246 ^ 0x99u))) ^ (*(v75 + 4 * (BYTE1(v244) ^ 0xBu)) + 2016039656) ^ v255;
  v258 = v256 ^ 0x68474ECE;
  if (((v433 >> 4) & 3) != 0)
  {
    v259 = ((v256 ^ 0x68474ECEu) >> 16) ^ 0x50;
  }

  else
  {
    v259 = -81;
  }

  v257 = *(v72 + 4 * (HIBYTE(v244) ^ 0x5A));
  v260 = ((v257 + 195154082) >> 5) ^ ((v257 + 195154082) >> 3) ^ 0x1037E61F ^ (v257 - ((2 * (v257 + 195154082)) & 0x206FCC3E) + 467252929);
  v261 = *(v74 + 4 * (BYTE2(v246) ^ 0x6Bu)) ^ BYTE2(v246) ^ 0x1CD62814;
  v262 = ((v249 ^ 0x7615359D) - 1868233456 + *(v77 + 4 * (v249 ^ 0x56u))) ^ (v261 + v260 - 2 * (v261 & v260)) ^ (*(v75 + 4 * (BYTE1(v250) ^ 0x1Du)) + 2016039656);
  v263 = *(v72 + 4 * (HIBYTE(v246) ^ 0x71)) + 195154082;
  v264 = v263 ^ *(v74 + 4 * (BYTE2(v250) ^ 0xC0u)) ^ (v263 >> 3) ^ (v263 >> 5) ^ (*(v75 + 4 * (BYTE1(v242) ^ 0xE8u)) + 2016039656) ^ (*(v77 + 4 * (v244 ^ 0xD6u)) + (v244 ^ 0x7615351D) - 1868233456);
  v265 = *(v72 + 4 * (HIBYTE(v253) ^ 0x70));
  v266 = (v265 ^ 0xEE68BE2E) & (2 * (v265 & 0xF06AB82F)) ^ v265 & 0xF06AB82F;
  v267 = ((2 * (v265 ^ 0xE699E20)) ^ 0xFC064C1E) & (v265 ^ 0xE699E20) ^ (2 * (v265 ^ 0xE699E20)) & 0xFE03260E;
  v268 = (v267 ^ 0xC002000C) & (4 * v266) ^ v266;
  v269 = ((4 * (v267 ^ 0x2012201)) ^ 0xF80C983C) & (v267 ^ 0x2012201) ^ (4 * (v267 ^ 0x2012201)) & 0xFE03260C;
  v270 = (v269 ^ 0xF8000000) & (16 * v268) ^ v268;
  v271 = ((16 * (v269 ^ 0x6032603)) ^ 0xE03260F0) & (v269 ^ 0x6032603) ^ (16 * (v269 ^ 0x6032603)) & 0xFE032600;
  v272 = v270 ^ 0xFE03260F ^ (v271 ^ 0xE0022000) & (v270 << 8);
  v273 = (((4 * ((v272 << 16) & 0xFC07FFFF ^ v272 ^ ((v272 << 16) ^ 0x40B0000) & (((v271 ^ 0x1E01060F) << 8) & 0x3E030000 ^ 0xC010000 ^ (((v271 ^ 0x1E01060F) << 8) ^ 0x3260000) & (v271 ^ 0x1E01060F)))) ^ (2 * v265)) & 0x366E30E6 ^ 0x442062) + (v265 ^ ((v265 ^ 0x94C78E43) + 1689073262) ^ ((v265 ^ 0x52BF3708) - 1563062489) ^ ((v265 ^ 0x36120131) - 965166816) ^ ((v265 ^ 0xFFFFFFAB) + 261441414) ^ 0x14A25FA2);
  BYTE1(v265) = BYTE1(v262) ^ 0x42;
  v274 = ((v262 ^ 0xFBC5428F) >> 16) ^ *(v74 + 4 * (((v262 ^ 0xFBC5428F) >> 16) ^ 0x45u)) ^ (*(v75 + 4 * (BYTE1(v264) ^ 0x12u)) + 2016039656) ^ (*(v77 + 4 * (v256 ^ 0xBBu)) + (v256 ^ 0x76153570) - 1868233456) ^ v273 ^ (v273 >> 3) ^ (v273 >> 5);
  v275 = v264 ^ HIWORD(v250);
  v276 = HIBYTE(v264) ^ 0x7B;
  v277 = *(v72 + 4 * ((v262 ^ 0xFBC5428F) >> 24)) + 195154082;
  v278 = v277 ^ *(v74 + 4 * (BYTE2(v264) ^ 0x6Cu)) ^ (v277 >> 3) ^ (v277 >> 5) ^ (*(v75 + 4 * (BYTE1(v258) ^ 0xE8u)) + 2016039656) ^ BYTE2(v264) ^ (*(v77 + 4 * (v253 ^ 0xE1u)) + (v253 ^ 0x7615352A) - 1868233456);
  v279 = *(v72 + 4 * v276) + 195154082;
  v280 = v279 ^ (v279 >> 5) ^ (v279 >> 3) ^ *(v74 + 4 * (BYTE2(v258) ^ 0x45u)) ^ (*(v75 + 4 * (BYTE1(v253) ^ 0x71u)) + 2016039656) ^ ((v262 ^ 0x76153531) - 1868233456 + *(v77 + 4 * (v262 ^ 0xFAu))) ^ (BYTE2(v258) - 2 * (v259 & BYTE2(v258)) + 437297839);
  v281 = *(v72 + 4 * HIBYTE(v258)) + 195154082;
  v282 = v281 ^ BYTE2(v253) ^ (v281 >> 5) ^ (v281 >> 3) ^ *(v74 + 4 * (BYTE2(v253) ^ 0x23u));
  v283 = *(v75 + 4 * BYTE1(v265)) + 2016039656;
  v284 = v282 ^ 0x1CD6285C;
  if ((v283 & 0x4000000 & ~v282) != 0)
  {
    v285 = -(v283 & 0x4000000);
  }

  else
  {
    v285 = v283 & 0x4000000;
  }

  v286 = ((v275 ^ 0x7615351C) - 1868233456 + *(v77 + 4 * (v275 ^ 0xD7u))) ^ v283 & 0xFBFFFFFF ^ (v285 + v284);
  v287 = *(v72 + 4 * ((v274 ^ 0x5D23BD52u) >> 24)) + 195154082;
  v288 = v287 ^ *(v74 + 4 * (BYTE2(v278) ^ 0xC8u)) ^ (v287 >> 3) ^ (v287 >> 5) ^ (*(v75 + 4 * (BYTE1(v280) ^ 0x9Bu)) + 2016039656) ^ BYTE2(v278) ^ (*(v77 + 4 * (v286 ^ 0xF9u)) + (v286 ^ 0x76153532) - 1868233456);
  v289 = *(v72 + 4 * (HIBYTE(v278) ^ 0x41)) + 195154082;
  v290 = *(v74 + 4 * (BYTE2(v280) ^ 0x4Cu)) ^ BYTE2(v280) ^ v289 ^ (v289 >> 3) ^ (v289 >> 5) ^ (*(v75 + 4 * (BYTE1(v286) ^ 0xBAu)) + 2016039656) ^ (*(v77 + 4 * (v274 ^ 0x27u)) + (v274 ^ 0x761535EC) - 1868233456);
  HIDWORD(v292) = v278;
  LODWORD(v292) = v278 ^ 0xDE45C97E;
  v291 = v292 >> 1;
  HIDWORD(v292) = v291 ^ 0x32DA4629;
  LODWORD(v292) = v291;
  v293 = *(v72 + 4 * ((((((v280 ^ 0x99097349) >> (v434 & 0x18)) - ((2 * ((v280 ^ 0x99097349) >> (v434 & 0x18))) & 0x9EFF9A52) - 813707991) ^ 0xCF7FCD29) >> ((v434 & 0x18 ^ 0x7B) & 8) >> ((v434 & 0x18 ^ 0x7B) & 0x10)) ^ 0xA9u)) + 195154082;
  v294 = *(v74 + 4 * (((v274 ^ 0x5D23BD52u) >> 16) ^ 0x45u));
  v295 = BYTE2(v286) ^ *(v74 + 4 * (BYTE2(v286) ^ 0x97u)) ^ v293 ^ (v293 >> 3) ^ (v293 >> 5) ^ ((v278 ^ 0x76153519) - 1868233456 + *(v77 + 4 * ((v292 >> 31) ^ 0xBBF145FE))) ^ (*(v75 + 4 * (((v274 ^ 0xBD52) >> 8) ^ 0xE8u)) + 2016039656);
  v296 = *(v72 + 4 * (HIBYTE(v286) ^ 0xA2)) + 195154082;
  v297 = v296 ^ (v296 >> 5) ^ (v296 >> 3) ^ (*(v75 + 4 * (BYTE1(v278) ^ 0xC4u)) + 2016039656) ^ ((v280 ^ 0x761535F7) - 1868233456 + *(v77 + 4 * (v280 ^ 0x3Cu))) ^ ((v274 ^ 0x5D23BD52u) >> 16) & 0xAD ^ (((v274 ^ 0x5D23BD52u) >> 16) ^ 0x1A10A2AF) & (v294 ^ 0x1210205B) ^ (((v274 ^ 0x5D23BD52u) >> 16) ^ 0xE5EF5D50) & (v294 ^ 0xE4CA1809);
  v298 = *(v72 + 4 * (HIBYTE(v290) ^ 0xE5)) + 195154082;
  v299 = v288 ^ 0xAB7D182;
  v300 = *(v72 + 4 * ((v288 ^ 0xAB7D182u) >> 24)) + 195154082;
  v302 = (((((v298 >> 2) ^ v298) & 0x2A12A978 ^ 0xFB359C90) & ((v298 >> 2) & 0x15ED5680 ^ v298 & 0xD5ED5680 ^ 0xFFBFFDF8) | ((v298 >> 2) & 0x15ED5680 ^ v298 & 0xD5ED5680) & 0x4C84200) >> 3) ^ 0x1F66B392;
  v303 = v302 & 0x8000000;
  if ((v302 & 0x8000000 & v298) != 0)
  {
    v303 = -v303;
  }

  v304 = (*(v75 + 4 * (BYTE1(v297) ^ 0xB1u)) + 2016039656) ^ *(v74 + 4 * (BYTE2(v295) ^ 0x5Du)) ^ ((v288 ^ 0x7615353C) - 1868233456 + *(v77 + 4 * (v288 ^ 0xF7u))) ^ v302 & 0xF7FFFFFF ^ (v303 + v298);
  v305 = *(v74 + 4 * ((((BYTE2(v297) ^ 0x72) - (BYTE2(v297) ^ 0x37)) ^ 0xFFFFFFFE) + (BYTE2(v297) ^ 0x72)));
  v306 = *(v72 + 4 * (HIBYTE(v295) ^ 0x5A));
  v307 = ((v306 + 195154082) >> 5) ^ ((v306 + 195154082) >> 3) ^ 0x1552D11 ^ (v306 - ((2 * (v306 + 195154082)) & 0x2AA5A22) + 217513395);
  v308 = HIWORD(v297) & 0x96 ^ v305 & 0x35C46096;
  v309 = ((v308 ^ 0xCA3B9FED) & (v305 & 0xCA3B9F69 ^ HIWORD(v297) & 0x69 ^ 0x5C2CA0A4) | v308 & 0x21C04012) ^ 0x54FEA8EC;
  v310 = ((v290 ^ 0x761535F2) - 1868233456 + *(v77 + 4 * (v290 ^ 0x39u))) ^ (*(v75 + 4 * (BYTE1(v299) ^ 0xE8u)) + 2016039656) ^ ((-v309 ^ (v307 - (v309 ^ v307)) ^ 0xFE33BD8C ^ (v309 - 2 * (v309 & 0x7E33BD9C ^ v308 & 0x10) - 30163572)) + v307);
  v311 = *(v72 + 4 * (HIBYTE(v297) ^ 0x1F)) + 195154082;
  HIDWORD(v313) = *(v74 + 4 * (BYTE2(v299) ^ 0x45u)) ^ v311 ^ (v311 >> 5) ^ (v311 >> 3) ^ 0xC0AFA24E;
  LODWORD(v313) = HIDWORD(v313);
  v312 = v313 >> 12;
  v301 = v300 ^ *(v74 + 4 * (BYTE2(v290) ^ 0xA7u)) ^ (v300 >> 3) ^ (v300 >> 5) ^ (*(v75 + 4 * (BYTE1(v295) ^ 0x1Fu)) + 2016039656) ^ BYTE2(v290) ^ (*(v77 + 4 * (v297 ^ 0xBFu)) + (v297 ^ 0x76153574) - 1868233456);
  v314 = (-(v301 ^ 0x1CD628D8) ^ (-540428198 - (v301 ^ 0xC31F9082)) ^ 0x67633200 ^ ((v301 ^ 0x1CD628D8) - ((2 * (v301 ^ 0x1CD628D8)) & 0xCEC66400) + 1734554112)) - 540428198;
  v315 = *(v75 + 4 * (BYTE1(v290) ^ 5u));
  v316 = ((2 * (v315 ^ 0x22F84C08)) ^ 0x8EC3CBA0) & (v315 ^ 0x22F84C08) ^ (2 * (v315 ^ 0x22F84C08)) & 0xC761E5D0;
  v317 = v316 ^ 0x41202450;
  v318 = 2 * (v315 & 0xE599A9D8);
  v319 = (v316 ^ 0x8641C180) & (4 * (v318 & (v315 ^ 0xE1D90D98) ^ v315 & 0xE599A9D8)) ^ v318 & (v315 ^ 0xE1D90D98) ^ v315 & 0xE599A9D8;
  v320 = ((4 * v317) ^ 0x1D879740) & v317 ^ (4 * v317) & 0xC761E5D0;
  v321 = (v320 ^ 0x5018540) & (16 * v319) ^ v319;
  v322 = ((16 * (v320 ^ 0xC2606090)) ^ 0x761E5D00) & (v320 ^ 0xC2606090) ^ (16 * (v320 ^ 0xC2606090)) & 0xC761E5C0;
  v323 = v321 ^ 0xC761E5D0 ^ (v322 ^ 0x46004500) & (v321 << 8);
  v324 = ((4 * ((v323 << 16) & 0x7C00000 ^ v323 ^ ((v323 << 16) ^ 0x7C00000) & ((((v322 ^ 0x8161A0D0) << 8) ^ 0x21E50000) & (v322 ^ 0x8161A0D0) ^ ((v322 ^ 0x8161A0D0) << 8) & 0x7610000))) ^ (2 * v315)) & 0x25215220 ^ 0x1204020;
  v325 = ((2 * (v315 ^ 0x97B46D4B)) ^ 0xE45B8926) & (v315 ^ 0x97B46D4B) ^ (2 * (v315 ^ 0x97B46D4B)) & 0x722DC492;
  v326 = (v325 ^ 0x20098000) & (4 * (v318 & (v315 ^ 0xD5952DDB) ^ v315 & 0xE599A9D8)) ^ v318 & (v315 ^ 0xD5952DDB) ^ v315 & 0xE599A9D8;
  v327 = ((4 * (v325 ^ 0x12244491)) ^ 0xC8B7124C) & (v325 ^ 0x12244491) ^ (4 * (v325 ^ 0x12244491)) & 0x722DC490;
  v328 = (v327 ^ 0x40250000) & (16 * v326) ^ v326;
  v329 = ((16 * (v327 ^ 0x3208C493)) ^ 0x22DC4930) & (v327 ^ 0x3208C493) ^ (16 * (v327 ^ 0x3208C493)) & 0x722DC490;
  v330 = v328 ^ 0x722DC493 ^ (v329 ^ 0x220C4000) & (v328 << 8);
  v331 = ((v295 ^ 0x76153581) - 1868233456 + *(v77 + 4 * (v295 ^ 0x4Au))) ^ BYTE2(v299) ^ (v312 << 12) & 0x8F06C000 ^ ((((((v312 ^ 0x61E2724Cu) >> (BYTE1(v437) & 0x14)) - ((2 * ((v312 ^ 0x61E2724Cu) >> (BYTE1(v437) & 0x14))) & 0x12B3C73A) + 156885917) ^ 0x959E39D) >> (BYTE1(v437) & 0x14 ^ 0x14)) ^ 0x70F93A79) & ((v312 << 12) ^ 0xD8DB3FFF) ^ (v324 + (v315 ^ (2 * ((v330 << 16) & 0x722D0000 ^ v330 ^ ((v330 << 16) ^ 0x44930000) & (((v329 ^ 0x50218483) << 8) & 0x722D0000 ^ 0x52290000 ^ (((v329 ^ 0x50218483) << 8) ^ 0x2DC40000) & (v329 ^ 0x50218483)))) ^ 0x135089EE));
  v332 = *(v72 + 4 * (HIBYTE(v314) ^ 0xA9)) + 195154082;
  HIDWORD(v313) = v332;
  LODWORD(v313) = v332;
  v333 = (v313 >> 24) ^ ((v332 ^ (v332 >> 2)) >> 27) ^ ((v332 ^ (v332 >> 2)) >> 3 << 8) ^ 0xAE957140;
  v334 = v331 ^ 0xB492958C;
  v335 = v304 ^ BYTE2(v295) ^ 0x6F22836D;
  v336 = (*(v75 + 4 * (BYTE1(v310) ^ 0xE7u)) + 2016039656) ^ *(v74 + 4 * (BYTE2(v335) ^ 0x45u)) ^ __ROR4__(v333, 8) ^ (*(v77 + 4 * (v331 ^ 0xF9u)) + (v331 ^ 0x76153532) - 1868233456);
  v337 = *(v72 + 4 * HIBYTE(v335)) + 195154082;
  v338 = v337 ^ *(v74 + 4 * (BYTE2(v310) ^ 0xA4u)) ^ (*(v75 + 4 * BYTE1(v334)) + 2016039656) ^ (((v337 >> (BYTE1(v299) & 2) >> (BYTE1(v299) & 2 ^ 2)) ^ v337) >> 3) ^ (*(v77 + 4 * (v314 ^ 0x75u)) + (v314 ^ 0x761535BE) - 1868233456);
  v339 = *(v72 + 4 * ((HIBYTE(v310) ^ 0x32) - ((2 * (HIBYTE(v310) ^ 0x32)) & 0x152) + 169)) + 195154082;
  v340 = v339 ^ *(v74 + 4 * (BYTE2(v334) ^ 0x45u)) ^ (v339 >> 3) ^ (v339 >> 5) ^ (*(v75 + 4 * (BYTE1(v314) ^ 0xE8u)) + 2016039656) ^ (((v304 ^ BYTE2(v295)) ^ 0x761535D3) - 1868233456 + *(v77 + 4 * ((v304 ^ BYTE2(v295)) ^ 0x18u))) ^ BYTE2(v334);
  v341 = *(v72 + 4 * HIBYTE(v334)) + 195154082;
  v342 = BYTE2(v314) ^ *(v74 + 4 * (BYTE2(v314) ^ 0x45u)) ^ v341 ^ (v341 >> 5) ^ (v341 >> 3) ^ 0x11058F11;
  v343 = ((v310 ^ 0x7615359C) - 1868233456 + *(v77 + 4 * (v310 ^ 0x57u))) ^ (*(v75 + 4 * (BYTE1(v304) ^ 0x6Bu)) + 2016039656) ^ ((v342 & 0x4F2FCD11 ^ 0x7B48D12E) & (v342 & 0xB0D032EE ^ 0x7FAFFD55) | v342 & 0x809022C0);
  v344 = *(v72 + 4 * (HIBYTE(v336) ^ 0x34)) + 195154082;
  v345 = v344 ^ BYTE2(v338) ^ (v344 >> 5) ^ (v344 >> 3) ^ (*(v75 + 4 * (BYTE1(v340) ^ 0x8Cu)) + 2016039656) ^ *(v74 + 4 * (BYTE2(v338) ^ 0x33u)) ^ (*(v77 + 4 * (v343 ^ 0x3Du)) + (v343 ^ 0x761535F6) - 1868233456);
  v346 = v340 ^ 0x225A6401;
  v347 = HIBYTE(v340) ^ 0x8B;
  v348 = *(v72 + 4 * (HIBYTE(v338) ^ 0xB8)) + 195154082;
  v349 = v348 ^ *(v74 + 4 * (BYTE2(v346) ^ 0x45u)) ^ (v348 >> 3) ^ (v348 >> 5) ^ (*(v75 + 4 * (BYTE1(v343) ^ 0x6Au)) + 2016039656) ^ (*(v77 + 4 * ((v336 ^ BYTE2(v335)) ^ 0x35u)) + ((v336 ^ BYTE2(v335)) ^ 0x761535FE) - 1868233456);
  v350 = *(v72 + 4 * v347) + 195154082;
  v351 = v350 ^ (v350 >> 5) ^ (v350 >> 3) ^ *(v74 + 4 * (BYTE2(v343) ^ 0x32u)) ^ BYTE2(v343) ^ (((v338 ^ BYTE2(v310)) ^ 0x76153516) - 1868233456 + *(v77 + 4 * ((v338 ^ BYTE2(v310)) ^ 0xDDu))) ^ (*(v75 + 4 * (BYTE1(v336) ^ 0x2Cu)) + 2016039656);
  v352 = *(v72 + 4 * (HIBYTE(v343) ^ 0x58));
  v353 = BYTE2(v336);
  v354 = *(v74 + 4 * (v353 ^ 0xB5u)) ^ ((v352 + 195154082) >> 3) ^ ((v352 + 195154082) >> 5) ^ (*(v75 + 4 * (BYTE1(v338) ^ 0xE7u)) + 2016039656) ^ (v352 - ((2 * (v352 + 195154082)) & 0x5B32A2D0) + 960176650) ^ (*(v77 + 4 * (v346 ^ 0x75u)) + (v346 ^ 0x761535BE) - 1868233456);
  v355 = v345 ^ 0x411ACB1;
  v356 = (v345 ^ 0x411ACB1) + 2025980323;
  if (v356 >= 0x873DFE5D)
  {
    LOBYTE(v356) = (v345 ^ 0xB1) + 70;
  }

  v357 = v356 + 93;
  if (v355 >= 0x873DFE5D)
  {
    LOBYTE(v355) = v357;
  }

  v358 = *(v72 + 4 * (HIBYTE(v345) ^ 0xAD)) + 195154082;
  v359 = v358 ^ *(v74 + 4 * (BYTE2(v349) ^ 8u)) ^ (v358 >> 3) ^ (v358 >> 5) ^ BYTE2(v349);
  v360 = v354 ^ v353;
  v361 = v360 ^ 0x2B5FDB0D;
  v362 = *(v75 + 4 * (BYTE1(v351) ^ 0xACu));
  v363 = (v362 + 2016039656) ^ 0x5997335 ^ v359;
  if (v362 == -2016039656)
  {
    v363 = -424631107;
  }

  v364 = (*(v77 + 4 * (v360 ^ 0xA4u)) + (v360 ^ 0x7615356F) - 1868233456) ^ (v362 + 2016039656) & 0xDBCC5436 ^ (v359 ^ 0x38E583BE) & (-2016039657 - v362) ^ v363 & 0xE9AD4D4D ^ (v363 ^ 0xE6B0A4BD) & (v359 ^ 0xF57B653A);
  v365 = *(v72 + 4 * (HIBYTE(v349) ^ 0x1A)) + 195154082;
  v366 = (*(v77 + 4 * (v355 ^ 0x75u)) + (v355 ^ 0x761535BE) - 1868233456) ^ (*(v75 + 4 * (BYTE1(v354) ^ 0xB6u)) + 2016039656) ^ __ROR4__(__ROR4__(BYTE2(v351) ^ v365 ^ (v365 >> 5) ^ (v365 >> 3) ^ *(v74 + 4 * (BYTE2(v351) ^ 0xEEu)) ^ 0x677DD79E, 17) ^ 0x32EFDBE2, 15);
  v367 = *(v72 + 4 * HIBYTE(v361));
  v368 = *(v72 + 4 * (HIBYTE(v351) ^ 0xBB)) + 195154082;
  v369 = BYTE2(v354) ^ v368 ^ *(v74 + 4 * (BYTE2(v354) ^ 0x27u)) ^ (v368 >> 3) ^ (v368 >> 5) ^ (*(v75 + 4 * (BYTE1(v345) ^ 0x44u)) + 2016039656) ^ (((v349 ^ BYTE2(v346)) ^ 0x7615356C) - 1868233456 + *(v77 + 4 * ((v349 ^ BYTE2(v346)) ^ 0xA7u)));
  v370 = *(v75 + 4 * (BYTE1(v349) ^ 0xB5u)) + 2016039656;
  v371 = ((v367 + 195154082) >> 5) ^ ((v367 + 195154082) >> 3);
  v372 = ((-195154082 - v367) ^ (v367 - ((2 * (v367 + 195154082)) & 0x46085E60) - 1364852782) ^ (v371 - (v371 ^ (v367 + 195154082))) ^ 0xA3042F30) + v371;
  v373 = v351;
  v374 = *(v77 + 4 * (v351 ^ 0x77u));
  v375 = ((2 * (v374 ^ 0xCD1757E2)) ^ 0xBB64A5DA) & (v374 ^ 0xCD1757E2) ^ (2 * (v374 ^ 0xCD1757E2)) & 0x5DB252EC;
  v376 = v375 ^ 0x44925225;
  v377 = 2 * (v374 & 0x90A5050F);
  v378 = (v375 ^ 0x1200048) & (4 * (v377 & (v374 ^ 0xCC1555EE) ^ v374 & 0x90A5050F)) ^ v377 & (v374 ^ 0xCC1555EE) ^ v374 & 0x90A5050F;
  v379 = ((4 * v376) ^ 0x76C94BB4) & v376 ^ (4 * v376) & 0x5DB252EC;
  v380 = (v379 ^ 0x548042A0) & (16 * v378) ^ v378;
  v381 = ((16 * (v379 ^ 0x9321049)) ^ 0xDB252ED0) & (v379 ^ 0x9321049) ^ (16 * (v379 ^ 0x9321049)) & 0x5DB252C0;
  v382 = v380 ^ 0x5DB252ED ^ (v381 ^ 0x59200200) & (v380 << 8);
  v383 = v374 ^ (2 * ((v382 << 16) & 0x5DB20000 ^ v382 ^ ((v382 << 16) ^ 0x52ED0000) & (((v381 ^ 0x492502D) << 8) & 0x5DB20000 ^ 0x4DA00000 ^ (((v381 ^ 0x492502D) << 8) ^ 0x32520000) & (v381 ^ 0x492502D)))) ^ 0x44124CEB;
  v384 = ((2 * (v374 ^ 0x677A8472)) ^ 0xEFBF02FA) & (v374 ^ 0x677A8472) ^ (2 * (v374 ^ 0x677A8472)) & 0xF7DF817C;
  v385 = (v384 ^ 0xC79C0078) & (4 * (v377 & (v374 ^ 0x4630846E) ^ v374 & 0x90A5050F)) ^ v377 & (v374 ^ 0x4630846E) ^ v374 & 0x90A5050F;
  v386 = ((4 * (v384 ^ 0x10408105)) ^ 0xDF7E05F4) & (v384 ^ 0x10408105) ^ (4 * (v384 ^ 0x10408105)) & 0xF7DF817C;
  v387 = (v386 ^ 0xD75E0170) & (16 * v385) ^ v385;
  v388 = ((16 * (v386 ^ 0x20818009)) ^ 0x7DF817D0) & (v386 ^ 0x20818009) ^ (16 * (v386 ^ 0x20818009)) & 0xF7DF8150;
  v389 = v387 ^ 0xF7DF817D ^ (v388 ^ 0x75D80100) & (v387 << 8);
  v390 = v370 ^ *(v74 + 4 * (BYTE2(v345) ^ 0x54u)) ^ v372 ^ ((v373 ^ 0x761535BC) + v383 + 829166531 + (((4 * ((v389 << 16) ^ v389 ^ ((v389 << 16) ^ 0x1FF0000) & (((v388 ^ 0x8207802D) << 8) & 0x37DF0000 ^ 0x20480000 ^ (((v388 ^ 0x8207802D) << 8) ^ 0x1F810000) & (v388 ^ 0x8207802D)))) ^ (2 * v374)) & 0x9D27D87C ^ 0x99000868));
  v391 = v364 ^ 0x51646922;
  v392 = ((BYTE2(v369) ^ 0x26) - (BYTE2(v369) ^ 0xA677)) & 0x20;
  v393 = *&v193[4 * (BYTE2(v369) ^ 0xEB)];
  v394 = (v392 & v393) == 0;
  v395 = v393 ^ 0x5B96EC93;
  if (!v394)
  {
    v392 = -v392;
  }

  v396 = v392 + v395;
  v397 = *&v431[4 * (BYTE1(v390) ^ 0xC3)] + (BYTE1(v390) ^ 0xFFFFFFA6) - 892219434;
  v398 = BYTE2(v390);
  v399 = (BYTE2(v390) ^ 0x33) - (BYTE2(v390) ^ 0xA2D1A662);
  v400 = v390 ^ BYTE2(v345);
  v401 = *&v430[4 * (HIBYTE(v390) ^ 0xB3)];
  v402 = *&v430[4 * (HIBYTE(v364) ^ 0x5F)] - 339016074;
  v403 = *&v430[4 * (HIBYTE(v366) ^ 0x43)] - 339016074;
  v404 = *&v430[4 * (HIBYTE(v369) ^ 0x7E)] - 339016074;
  v405 = *&v429[4 * (v398 ^ 0xFE)] ^ v404 ^ (v404 >> 2) & 0x1516B9CE ^ (*&v431[4 * (BYTE1(v391) ^ 0x9A)] - BYTE1(v391) - 892219435) ^ __ROR4__(*&v432[4 * (v366 ^ 0xE0)], 28) ^ v399 ^ 0x259AD14E;
  v406 = *&v429[4 * (BYTE2(v391) ^ 0xCD)];
  v407 = BYTE2(v391) - (BYTE2(v391) ^ 0xA2D1A651);
  v408 = v403 ^ ((BYTE2(v369) ^ 0x26) - (BYTE2(v369) ^ 0xA677)) & 0x3DF ^ (v403 >> 2) & 0x1516B9CE ^ __ROR4__(*&v432[4 * (v364 ^ 0x22)], 28) ^ v396 ^ v397;
  v409 = v407 ^ v406 ^ (v401 - 339016074) ^ ((BYTE1(v366) ^ 0xFFFFFF0D) - 892219434 + *&v431[4 * (BYTE1(v366) ^ 0x68)]) ^ ((v401 - 339016074) >> 2) & 0x1516B9CE ^ __ROR4__(*&v432[4 * (v369 ^ 0x26)], 28) ^ 0x8B891755;
  v410 = v408 ^ 0x594E4678 ^ v405;
  v411 = v410 ^ v435 ^ *&v429[4 * (BYTE2(v366) ^ 0x2D)] ^ v402 ^ ((BYTE2(v366) ^ 0xE0) - (BYTE2(v366) ^ 0xA2D1A6B1)) ^ (v402 >> 2) & 0x1516B9CE ^ __ROR4__(*&v432[4 * (v400 ^ 0x6C)], 28) ^ ((BYTE1(v369) ^ 0xFFFFFF99) - 892219434 + *&v431[4 * (BYTE1(v369) ^ 0xFC)]);
  v412 = v411 ^ 0xEA76AC ^ v410;
  v413 = v409 ^ v435 ^ v410;
  v414 = v405 ^ v409 ^ v411 ^ 0xEA76AC;
  v415 = *(&off_1010A0B50 + v438 - 39072) - 924574678;
  v439[9] = v415[BYTE1(v414) ^ 0xB2] ^ 0x6D ^ (2 * v415[BYTE1(v414) ^ 0xB2]) & 0xD8;
  v416 = *(&off_1010A0B50 + v438 - 39263) - 217560719;
  v417 = v416[HIBYTE(v413) ^ 0xE0];
  v439[3] = ((v417 >> 3) | (32 * v417)) ^ (((v417 >> 3) | (32 * v417)) >> 5) ^ (((v417 >> 3) | (32 * v417)) >> 1) ^ 0x6C;
  v439[6] = v415[BYTE1(v413) ^ 0xDELL] ^ 0x6D ^ (2 * v415[BYTE1(v413) ^ 0xDELL]) & 0xD8;
  v418 = *(&off_1010A0B50 + (v438 ^ 0xA5A6)) - 1501372578;
  v419 = v418[v411 ^ 0xC2];
  v439[15] = v419 ^ (v419 >> 4) ^ 0xC2;
  v439[8] = v415[BYTE1(v412) ^ 0xFBLL] ^ 0x6D ^ (2 * v415[BYTE1(v412) ^ 0xFBLL]) & 0xD8;
  v420 = v416[HIBYTE(v411) ^ 0x92];
  v421 = (-(v414 ^ 0x7C) ^ (143 - (v414 ^ 0xF3)) ^ 0xABD89451 ^ ((v414 ^ 0x7C) - 2 * ((v414 ^ 0x7C) & 0x53 ^ v414 & 2) - 1411869615)) + 143;
  v439[10] = ((v420 >> 3) | (32 * v420)) ^ 0x2D ^ ((((v420 >> 3) | (32 * v420)) & 0xFE) >> 1) ^ (((((v420 >> 3) | (32 * v420)) ^ 0x2D) >> 5) | 0x58) ^ 0x18;
  v439[13] = v418[v421] ^ (v418[v421] >> 4) ^ 0xC2;
  v422 = v416[HIBYTE(v412) ^ 0xB4];
  v439[12] = ((v422 >> 3) | (32 * v422)) ^ (((v422 >> 3) | (32 * v422)) >> 1) ^ ((((v422 >> 3) | (32 * v422)) >> 5) | 0x60) ^ 0xC;
  v423 = v416[HIBYTE(v414) ^ 0xCFLL];
  v439[1] = ((v423 >> 3) | (32 * v423)) ^ (((v423 >> 3) | (32 * v423)) >> 5) ^ (((v423 >> 3) | (32 * v423)) >> 1) ^ 0x6C;
  v439[11] = v418[v413 ^ 0xC1] ^ (v418[v413 ^ 0xC1] >> 4) ^ 0xC2;
  v424 = *(&off_1010A0B50 + (v438 ^ 0xA224)) - 1787643186;
  v439[2] = v424[((v411 ^ 0xEA76AC) >> 16) ^ 0x48] ^ ((v411 ^ 0xEA76AC) >> 16) ^ ((((v411 ^ 0xEA76AC) >> 16) ^ 0xF) - 30) ^ 0x66;
  LOBYTE(v421) = ((BYTE2(v412) ^ 0x6D) - 30) ^ BYTE2(v412) ^ v424[BYTE2(v412) ^ 0x2ALL];
  v439[4] = (v421 ^ 0xC ^ -(v421 ^ 0xC) ^ (8 - (v421 ^ 4))) + 8;
  v439[5] = v424[BYTE2(v414) ^ 0x26] ^ BYTE2(v414) ^ ((BYTE2(v414) ^ 0x61) - 30) ^ 8;
  *v439 = v415[((v411 ^ 0x76AC) >> 8) ^ 0xCDLL] ^ 0x6D ^ (2 * v415[((v411 ^ 0x76AC) >> 8) ^ 0xCDLL]) & 0xD8;
  v425 = v418[(-(v412 ^ 0x5C) ^ (143 - (v412 ^ 0xD3)) ^ 0x60BBA4 ^ ((v412 ^ 0x5C) - ((2 * (v412 ^ 0x5C)) & 0x148) + 6339492)) + 143];
  v439[14] = v425 ^ (v425 >> 4) ^ 0xC2;
  LOBYTE(v415) = v424[((v413 ^ 0xEAA157C1) >> 16) ^ 0x47];
  v439[7] = ((((v413 ^ 0xEAA157C1) >> 15) & 0xC4) + (((v413 ^ 0xEAA157C1) >> 16) ^ 0xE2)) ^ ((v413 ^ 0xEAA157C1) >> 16) ^ ((((v415 ^ 0xA) - 10) ^ ((v415 ^ 0x18) - 24) ^ ((v415 ^ 0x73) - 115)) - 4 * (v415 & 8) + 2 * (v415 & 8) + 105);
  return (*(v440 + 8 * v438))(a1);
}

uint64_t sub_100240C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (((v4 ^ 0x588B793D) - 1485535549) ^ ((v4 ^ 0x6BBA8512) - 1807385874) ^ ((v4 ^ 0xDAE4B005 ^ (v3 - 1657364600) & 0x22C9BB7B) + 622576834)) + 138200342;
  v6 = (v5 ^ 0xE5D535FA) & (2 * (v5 & 0xE19901FC)) ^ v5 & 0xE19901FC;
  v7 = ((2 * (v5 ^ 0x64E7367A)) ^ 0xAFC6F0C) & (v5 ^ 0x64E7367A) ^ (2 * (v5 ^ 0x64E7367A)) & 0x857E3786;
  v8 = v7 ^ 0x85021082;
  v9 = (v7 ^ 0x6C0700) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0x15F8DE18) & v8 ^ (4 * v8) & 0x857E3780;
  v11 = (v10 ^ 0x5781600) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x80062186)) ^ 0x57E37860) & (v10 ^ 0x80062186) ^ (16 * (v10 ^ 0x80062186)) & 0x857E3780;
  v13 = v11 ^ 0x857E3786 ^ (v12 ^ 0x5623000) & (v11 << 8);
  *(a3 + 112) = STACK[0x1F70];
  *(a3 + 116) = v5 ^ (2 * ((v13 << 16) & 0x57E0000 ^ v13 ^ ((v13 << 16) ^ 0x37860000) & (((v12 ^ 0x801C0786) << 8) & 0x57E0000 ^ 0x1480000 ^ (((v12 ^ 0x801C0786) << 8) ^ 0x7E370000) & (v12 ^ 0x801C0786)))) ^ 0x8BCA9E1;
  return (*(STACK[0xF18] + 8 * v3))(a1, a2, 3923101457);
}

void sub_100240E64(uint64_t a1)
{
  v1 = *(a1 + 4) - 1112314453 * (a1 ^ 0xEF562AD9);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100240F2C()
{
  v1 = STACK[0xF10];
  *(STACK[0xB718] + 4) = v0;
  return (*(STACK[0xF18] + 8 * (v1 - 26084)))();
}

void sub_100240FB0(uint64_t a1)
{
  v1 = *a1 + 1022166737 * (a1 ^ 0xBA10E192);
  v2 = *(a1 + 32);
  v3 = (v1 - 1845153646) | 0x2895u;
  v4 = (v2 & 0x4000000000000000) % (v3 ^ 0x6896uLL) * ((v2 & 0x4000000000000000) % (v3 ^ 0x6896uLL));
  v5 = v2 ^ (v2 >> 60) & 4 ^ ((v2 >> 30) & &dword_100000000 | (v2 >> 60) & 4) ^ ((v4 - 3 * ((v4 * 0x5555555555555556uLL) >> 64)) << 32) ^ 0x159F1A7106A73ECCLL;
  v6 = &v9 & 0xA44A9248A290A248;
  v7 = &v9 & 0x1294491249451520;
  v8 = (v5 & 0x492124A5142A4892) + (&v9 & 0x492124A5142A4890);
  v10 = v8 + 2 * (v5 & v7) + 2 * (v5 & v6) + ((v7 - (v5 & 0x1294491249451524) + 0x5289224928A2A48) & 0x1294491249451524) + (((v5 & 0xA44A9248A290A249) - v6 + 0x4895249145214492) & 0xA44A9248A290A249);
  v9 = ((v8 + 2 * (v5 & v7) + 2 * (v5 & v6) + ((v7 - (v5 & 0x49451524) - 1836438968) & 0x49451524) + (((v5 & 0xA290A249) - v6 + 1159808146) & 0xA290A249)) ^ 0xF521E958) - (~(2 * (v8 + 2 * (v5 & v7) + 2 * (v5 & v6) + ((v7 - (v5 & 0x49451524) - 1836438968) & 0x49451524) + (((v5 & 0xA290A249) - v6 + 1159808146) & 0xA290A249))) & 0xEA43D2B0) - 364653904;
  __asm { BRAA            X13, X17 }
}

uint64_t sub_1002412D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (v15)
  {
    v17 = v14 == 0;
  }

  else
  {
    v17 = 1;
  }

  v19 = v17 || *(a1 + 40) == 0;
  return (*(v16 + 8 * ((((((v13 - 25665) ^ v19) & 1) == 0) * ((v13 - 36684) ^ 0x1A67)) ^ v13)))(a1, a2, a3, a4, a5, a6, a7, a8, a1, a10, a11, a12, a13);
}

uint64_t sub_100241338(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  v20 = (((v10 ^ v12) + a6) ^ ((v10 ^ 0x30E7A3B2) - 820487090) ^ ((v10 ^ (v19 - 1099395469) & 0x41876FDF ^ v11) + a5)) + v17;
  v21 = (((v9 ^ a7) + a8) ^ ((v9 ^ v13) + v14) ^ ((v9 ^ v15) + v16)) + v17;
  v22 = (v21 < v18) ^ (v20 < v18);
  v23 = v20 < v21;
  if (v22)
  {
    v23 = v21 < v18;
  }

  return (*(v8 + 8 * ((v23 * a2) ^ v19)))();
}

uint64_t sub_1002413F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 56);
  STACK[0x2A0] = v3;
  return (*(a2 + 8 * ((12135 * (v4 == v3)) ^ v2)))();
}

uint64_t sub_100241508@<X0>(int a1@<W8>)
{
  v5 = v1 < v2;
  if (v5 == ((1801 * (a1 ^ 0x1A66)) ^ 0x85AAu) + v3 > 0xEEDD8AE7)
  {
    v5 = v3 + 287470873 < v1;
  }

  return (*(v4 + 8 * ((v5 | (2 * v5)) ^ a1)))();
}

uint64_t sub_100241570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = (v10 ^ 0xBEDACB7D6FD7FB4FLL) + 0x41253482C1DEAF59 + ((v10 << ~((v8 ^ 0x90u) - 90)) & ((((v8 ^ 0x1590) + 1827812518) & 0x930D7697) + 0x7DB596FADFAFD208));
  v13 = v12 < 0x31B6AAA8;
  v14 = v12 > v9 + 834054824;
  if (v9 > 0xFFFFFFFFCE495557 != v13)
  {
    v14 = v13;
  }

  return (*(v11 + 8 * ((209 * !v14) ^ v8 ^ 0x1590)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_10024171C()
{
  v1 = STACK[0xF10] - 27668;
  v2 = STACK[0x58D4];
  v3 = (v2 ^ 0xF65CBE19) & (2 * ((STACK[0xF10] - 34970 + STACK[0xF10] - 6736 - 417577712) & v2)) ^ (STACK[0xF10] - 34970 + STACK[0xF10] - 6736 - 417577712) & v2;
  v4 = ((2 * (v2 ^ 0x3445CE19)) ^ 0xA6B2ED0A) & (v2 ^ 0x3445CE19) ^ (2 * (v2 ^ 0x3445CE19)) & 0xD3597684;
  v5 = v4 ^ 0x51491285;
  v6 = (v4 ^ 0xC1187405) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0x4D65DA14) & v5 ^ (4 * v5) & 0xD3597684;
  v8 = (v7 ^ 0x41415200) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x92182481)) ^ 0x35976850) & (v7 ^ 0x92182481) ^ (16 * (v7 ^ 0x92182481)) & 0xD3597680;
  v10 = v8 ^ 0xD3597685 ^ (v9 ^ 0x11116000) & (v8 << 8);
  *(STACK[0xAE70] + 4 * (((LODWORD(STACK[0x58D4]) ^ (2 * ((v10 << 16) & 0x53590000 ^ v10 ^ ((v10 << 16) ^ 0x76850000) & (((v9 ^ 0xC2481685) << 8) & 0x53590000 ^ 0x2090000 ^ (((v9 ^ 0xC2481685) << 8) ^ 0x59760000) & (v9 ^ 0xC2481685))))) >> 2) ^ 0x396B1565)) = v0;
  LODWORD(STACK[0x58D4]) = v2 + 4;
  return (*(STACK[0xF18] + 8 * ((73 * ((v2 - 417548128) > 0x3F)) ^ v1)))();
}

void sub_1002419A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a7 == 800995989)
  {
    v8 = -371865839;
  }

  else
  {
    v8 = 371891401;
  }

  *(v7 + 16) = v8;
}

uint64_t sub_100241A4C@<X0>(int a1@<W1>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10)
{
  v22 = (v13 - 5285);
  v23 = *(a10 + (((v12 % a8) ^ 0xFB3F6A4F) + ((2 * (v12 % a8)) & 0xF67ED49E) - 83417078 + ((2863311531u * (((v20 ^ 0xA49E58B22E1B2631) + 0x5B61A74DD1E4D9CFLL) ^ ((v20 ^ 0x2DE201B506378ABDLL) - 0x2DE201B506378ABDLL) ^ ((v20 ^ 0x897C59076355E8D8) + v22 + 0x7683A6F89CA9ED55)) + 0x45C3B38619286C1CLL) >> 33)) % (a2 - 1626871694));
  v24 = v15 - ((2 * v15) & 0x16) - 1895000501;
  v25 = (v23 ^ 0x5F) << ((v15 - ((2 * v15) & 0x16) + 75) & 0x15 ^ 1) << (~(v15 - ((2 * v15) & 0x16) + 75) & 0xA);
  v26 = v18 ^ __ROR4__(v20, 25) ^ (v25 - ((2 * v25) & 0xBA8CC2A8) + 1564893524);
  v27 = (((v26 ^ 0xB4A3B8DE63DBB96) - 0x6B4A3B8D32A1BDBCLL) ^ ((v26 ^ 0x1D10CF4471887A7) + 0x2E2EF30B6C7B7E73) ^ ((v26 ^ 0xA9B377910CA7F68) + 0x4564C8863BA986BELL)) * v21 + 0x759706CAB8ED13FBLL;
  v28 = v27 ^ ((v27 ^ 0xC6AE837A662A76ABLL) + 0x758B9065763BE40) ^ ((v27 ^ 0xC9702F22EA7C25EELL) + 0x886155EDB35ED7BLL) ^ ((v27 ^ 0x9C2D5C748F1E8B9CLL) + 0x5DDB6608BE574309) ^ ((v27 ^ 0xADFA35AFCDFEEFB2) + 0x6C0C0FD3FCB72727);
  v29 = ((v28 ^ 0x2778BB865CEDD15FLL) - 0xDC064FCB9F5ACF8) ^ ((v28 ^ 0x98C69BADD2482780) + 0x4D81BB28C8AFA5D9);
  LODWORD(v28) = (__CFADD__((v29 ^ ((v28 ^ 0x81B7E5A84013C1B4) + 0x54F0C52D5AF443EDLL)) * v10, 0xE4989714BB959E0CLL) + (((v29 ^ ((v28 ^ 0x81B7E5A84013C1B4) + 0x54F0C52D5AF443EDLL)) * v10) >> 64) + ((__CFADD__(v28 ^ 0x2778BB865CEDD15FLL, 0xF23F9B03460A5308) - 1) ^ (__CFADD__(v28 ^ 0x98C69BADD2482780, 0x4D81BB28C8AFA5D9) - 1) ^ (__CFADD__(v28 ^ 0x81B7E5A84013C1B4, 0x54F0C52D5AF443EDLL) - 1)) * v10 + 1944986704) * v14 + 1878797438;
  v30 = (v17 ^ 0x2DDF8B15) + ((2 * v17) & 0x2A) - 22937600;
  v31 = v28 - ((v28 / 0x10001) | ((v28 / 0x10001) << 16)) + (-3 * v30 + ((4 * v24) ^ 0xC3CDA6D3) - v11) * a1 - 1521271583;
  v32 = (((v26 ^ 0xBA75E3226C6FAF51) + 0x458A1CDD470C5685) ^ ((v26 ^ 0x1A715FEC1E23863DLL) - 0x1A715FECCABF8017) ^ ((v26 ^ 0xA004BCCEC3A36A35) + 0x5FFB4331E8C093E1)) + 3076328451u;
  v33 = v32 > 0x148ACBD51;
  LODWORD(v32) = (v16 + 13 * (((v24 ^ 0x5296E2B3) - 1385620147) ^ ((v24 ^ 0xC0D95736) + 1059498186) ^ ((v24 ^ 0x1D4323CE) - 490939342))) * a1 + (v33 << 16) + ((4294901761u * v32 - 0x48AB74A68B59C690) >> 48);
  LODWORD(v32) = ((4099 * v32 - 1237039233 - (((4099 * v32 - 1237039233) / 0x10001u) | (((4099 * v32 - 1237039233) / 0x10001u) << 16))) * v10) ^ v26 ^ (v31 - ((v31 / 0x10001) | ((v31 / 0x10001) << 16)));
  LOBYTE(v31) = v30 ^ ((v30 ^ 0xC7) + 46) ^ ((v30 ^ 0xF3) + 26) ^ ((v30 ^ 0x9E) + 117) ^ ((v30 ^ 0xBF) + 86) ^ 5;
  v34 = v32 ^ 0xB1EF4359;
  *(a10 + (a2 - 1626871694)) = (v34 >> (v31 & 0x2E) >> (v31 & 0xD1 ^ 0x10)) ^ v19;
  return (*(a4 + 8 * v13))(4294901761, 3057928063, v34, v33, 3804027954, a2, a3, v22);
}

uint64_t sub_1002420B0(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0x825C]) = v4;
  LODWORD(STACK[0x3FA8]) = a3;
  LODWORD(STACK[0x659C]) = STACK[0xEC0];
  LODWORD(STACK[0x1370]) = STACK[0xED0];
  LODWORD(STACK[0x5D04]) = v5;
  LODWORD(STACK[0x8A44]) = v7;
  return (*(STACK[0xF18] + 8 * ((10396 * (v6 == ((v6 + 1532318324) ^ 0xE89E740))) ^ (v6 + 1532292971))))(a1, a2, v3);
}

uint64_t sub_100242160(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  HIDWORD(a17) = 0;
  v23 = v21 & 0xFFFFFFF2 ^ 0x2A5D30DLL;
  *(v22 - 128) = v23;
  v24 = *(v20 + v23);
  v168 = v21 & 0xFFFFFFFB ^ 0x2A5D305;
  v25 = *(v20 + v168);
  HIDWORD(v157) = (v19 - 22939) ^ 0x6E7E3659;
  v26 = v21 & 0xFFFFFFF3 ^ (HIDWORD(v157) - 1809343307);
  *(v22 - 140) = v26;
  v27 = 1191182336 * *(a13 + (v25 ^ 0xB1)) + 1107296256;
  LODWORD(v25) = ((HIDWORD(a11) + 71 * *(a13 + (*(v20 + v26) ^ 0x78))) ^ 0xB6) << 24;
  v28 = (v25 ^ 0x41FFD5A8) & (((*(a12 + (v24 ^ 0x58)) ^ v24) << (((v19 + 101) | 0x34) ^ 0x25)) ^ 0x49D3D5A8) | v25 & 0xB6000000;
  v29 = v21 & 0xFFFFFFF1 ^ 0x2A5D30FLL;
  *(v22 - 136) = v29;
  v30 = *(v20 + v29);
  v31 = v21 & 0xFFFFFFF6 ^ 0x2A5D30DLL;
  *(v22 - 152) = v31;
  v32 = v20;
  v162 = v21 & 0xFFFFFFFC ^ 0x2A5D307;
  v33 = (v28 ^ 0x2312A51) & (((*(a14 + (v30 ^ 0xE5)) ^ v30) << 8) ^ 0x26315979);
  v167 = v21 & 0xFFFFFFFE ^ 0x2A5D305;
  LODWORD(v25) = *(a15 + (*(v20 + v162) ^ 0x1FLL));
  LODWORD(v30) = *(a12 + (*(v20 + v31) ^ 0xA8)) ^ *(v20 + v31);
  v169 = v21 & 0xFFFFFFF7 ^ 0x2A5D30DLL;
  v34 = *(a13 + (*(v20 + v169) ^ 0xDBLL));
  HIDWORD(v158) = *(v20 + v167) ^ 0xDB ^ *(a12 + (*(v20 + v167) ^ 0x19));
  v35 = v21 ^ 0x2A5D305;
  *(v22 - 160) = v35;
  v36 = ((((HIDWORD(a11) + 71 * v34) ^ 0x90) << 24) ^ 0x15FF0D0B) & ((v30 << 16) ^ 0x5D9E0D0B) | (((HIDWORD(a11) + 71 * v34) ^ 0x90) << 24) & 0xA2000000;
  v165 = v21 & 0xFFFFFFFD ^ 0x2A5D307;
  v163 = v21 & 0xFFFFFFF8 ^ 0x2A5D307;
  LODWORD(v30) = ((((HIDWORD(a11) + 71 * *(a13 + (*(v20 + v35) ^ 0xA4))) ^ 0x26) << 24) ^ 0x121938DB) & ((v25 - 66) ^ 0xFF1938FB) | (v25 - 66) & 0x24;
  v166 = v21 & 0xFFFFFFFA ^ 0x2A5D305;
  LODWORD(v25) = (*(a14 + (*(v20 + v165) ^ 0x36)) ^ *(v20 + v165)) << 8;
  LODWORD(v30) = ((v25 & 0xFFFF8FFF | (v30 ^ 0xFB3D483D) & (v25 ^ 0xFF3FACFF)) ^ 0x739D7F85) & ((HIDWORD(v158) << 16) ^ 0xFF2DFFFF);
  LOWORD(v25) = *(a15 + (*(v20 + v163) ^ 0x72)) - 66;
  v37 = (~v25 | 0xFFFFFE00) & (v27 ^ 0x3445D2A3) | v25 & 0x5C;
  v164 = v21 & 0xFFFFFFF5 ^ 0x2A5D30FLL;
  v38 = *(a14 + (*(v32 + v164) ^ 0xA1)) ^ *(v32 + v164);
  v159 = v21 & 0xFFFFFFF4 ^ 0x2A5D30FLL;
  LOBYTE(v25) = *(a15 + (*(v20 + v159) ^ 0x18)) - 66;
  LODWORD(v25) = ((((v38 << 8) ^ 0xFFFFCA0F) & (v36 ^ 0x2818C204) & 0xFFFFCFFF | (((v38 >> 4) & 3) << 12)) ^ 0x10BBA018) & (~v25 | 0xFFFFFF00) | v25 & 0xE8;
  v160 = v21 & 0xFFFFFFF9 ^ 0x2A5D307;
  v39 = (*(a14 + (*(v20 + v160) ^ 0x90)) ^ *(v20 + v160)) << 8;
  v161 = v21 & 0xFFFFFFF0 ^ 0x2A5D30FLL;
  v40 = v18 ^ v39 & 0xD300 ^ 0x1B64DE76 ^ (v39 ^ 0xFFFF13FF) & (((((*(a12 + (*(v20 + v166) ^ 0xC7)) ^ *(v20 + v166)) << 16) ^ 0x2FE03719) & (v37 ^ 0xDFBAA55A) | v37 & 0xD00040E6) ^ 0xD1905BDF);
  v41 = v25 ^ a3;
  LOBYTE(v25) = *(a15 + (-(*(v20 + v161) ^ 0xBE) ^ (27 - (*(v20 + v161) ^ 0xA5)) ^ 0xDBFFF6D5 ^ ((*(v20 + v161) ^ 0xBE) - ((2 * (*(v20 + v161) ^ 0xBE)) & 0x1AA) - 603982123)) + 27) - 66;
  LODWORD(v30) = (HIDWORD(v158) << 16) & 0x460000 ^ a5 ^ v30;
  v42 = (v25 & 0x21 | (~v25 | 0xFFFFFF00) & (v28 & 0xD9CE4000 ^ 0x6760B7A7 ^ v33)) ^ v17;
  v43 = v40 - ((2 * v40) & 0xE8196312) + 1946988937;
  v44 = *(&off_1010A0B50 + (v19 ^ 0x5DC5)) - 1622261823;
  v45 = *(&off_1010A0B50 + v19 - 19578) - 2009439534;
  LODWORD(v25) = *&v45[4 * (BYTE2(v43) ^ 0xE5)] ^ __ROR4__(__ROR4__(*&v44[4 * (BYTE3(v30) ^ 0x16)], 20) ^ 0x401516F9, 12);
  v46 = *(&off_1010A0B50 + (v19 ^ 0x5345)) - 1474266559;
  v47 = *&v46[4 * (BYTE1(v41) ^ 0x91)] ^ 0x441601B;
  LODWORD(v25) = (-(v25 ^ 0x796229C5) ^ (v47 - (v25 ^ 0x796229C5 ^ v47)) ^ 0xE87BD091 ^ ((v25 ^ 0x796229C5) - 2 * ((v25 ^ 0x796229C5) & 0x687BD099 ^ v25 & 8) - 394538863)) + v47;
  v48 = *(&off_1010A0B50 + (v19 ^ 0x4836)) - 1895945318;
  v49 = v25 ^ *&v48[4 * (v42 ^ 0x23)];
  LODWORD(v30) = v30 ^ 0xA2983A01;
  v50 = *&v45[4 * (BYTE2(v41) ^ 0x36)] ^ *&v48[4 * v30] ^ *&v44[4 * (HIBYTE(v43) ^ 0xB4)] ^ *&v46[4 * (BYTE1(v42) ^ 0x16)];
  HIDWORD(v51) = (v30 >> 12) ^ 0xAC4A1E7;
  LODWORD(v51) = (v30 << 20) ^ 0xE0000000;
  LODWORD(v25) = *&v46[4 * ((v51 >> 28) ^ 0xAC4A1EA9)];
  v52 = *&v45[4 * (BYTE2(v42) ^ 0x72)] ^ *&v44[4 * (HIBYTE(v41) ^ 0x2D)] ^ *&v48[4 * (v43 ^ 0x1E)] ^ ((((v25 ^ 0xF5069CD8) - (v25 ^ 0x441601B)) ^ 0xFFFFFFFE) + (v25 ^ 0xF5069CD8));
  LODWORD(v30) = *&v45[4 * BYTE2(v30)] ^ *&v46[4 * (BYTE1(v43) ^ 0xD7)] ^ *&v44[4 * (HIBYTE(v42) ^ 0xB3)] ^ *&v48[4 * (v41 ^ 0xD)];
  v53 = *&v44[4 * ((v49 ^ 0x6D367139u) >> 24)];
  v54 = ((v53 ^ 0x71E7BE14) - 1911012884) ^ ((v53 ^ 0x5159FC2) - 85303234) ^ ((v53 ^ 0xEDDE44AB) + 304200533);
  v55 = ((2 * v53) & 0x8D6BF91C ^ 0xFFB737E7) + 1608671756;
  v56 = v30 ^ 0xB90B2CFF;
  v57 = *&v45[4 * (BYTE2(v50) ^ 0xA9)] ^ *&v48[4 * (~v30 ^ 0x1E)] ^ *&v46[4 * (BYTE1(v52) ^ 0x2A)] ^ 0x1A8C39FA ^ (v55 + v54);
  v58 = (v57 & 0x677C5F8E ^ 0xB18CD1D1) & (v57 & 0x9883A071 ^ 0xEF7FFFAE) | v57 & 0x8032020;
  v59 = *&v45[4 * (BYTE2(v52) ^ 0x24)] ^ *&v44[4 * (HIBYTE(v50) ^ 0x2B)] ^ *&v46[4 * ((v30 ^ 0x2CFF) >> 8)] ^ *&v48[4 * (v49 ^ 0x39)];
  HIDWORD(v51) = BYTE1(v50) ^ 0x9FF33FE9;
  LODWORD(v51) = HIDWORD(v51);
  LODWORD(v25) = v51 >> 6;
  HIDWORD(v51) = v25 ^ 0x1F312B6;
  LODWORD(v51) = v25 ^ 0xC0000000;
  LODWORD(v30) = *&v44[4 * (HIBYTE(v52) ^ 0x4B)] ^ *&v45[4 * (BYTE2(v30) ^ 0xEE)] ^ *&v48[4 * (v50 ^ 0xA1)] ^ *&v46[4 * (BYTE1(v49) ^ 0xA6)];
  v60 = *&v45[4 * (BYTE2(v49) ^ 0xD3)] ^ *&v44[4 * HIBYTE(v56)] ^ *&v46[4 * ((v51 >> 26) ^ 0xE3379226)] ^ 0x12B7488F;
  LODWORD(v25) = *&v48[4 * (v52 ^ 0x11)] ^ 0xB6B24C64;
  v61 = (-v60 ^ (v25 - (v60 ^ v25)) ^ 0xB8F4B17E ^ (v60 - ((2 * v60) & 0x71E962FC) - 1191923330)) + v25;
  v62 = *&v44[4 * ((v58 ^ 0xDDB5F102) >> 24)] ^ *&v46[4 * ((v30 ^ 0x6220) >> 8)] ^ *&v45[4 * (BYTE2(v59) ^ 0x6B)] ^ *&v48[4 * (((-v60 ^ (v25 - (v60 ^ v25)) ^ 0x7E ^ (v60 - ((2 * v60) & 0xFC) + 126)) + v25) ^ 0x1E)];
  v63 = *&v44[4 * (HIBYTE(v59) ^ 0xE6)] ^ *&v45[4 * ((v30 ^ 0xE9856220) >> 16)] ^ *&v46[4 * (BYTE1(v61) ^ 0xD7)] ^ *&v48[4 * (v58 ^ 2)];
  v64 = *&v46[4 * (BYTE1(v58) ^ 0x26)];
  v65 = *&v44[4 * (BYTE3(v30) ^ 0x5D)] ^ *&v48[4 * (v59 ^ 0x1E)] ^ *&v45[4 * (BYTE2(v61) ^ 0xE5)] ^ ((v64 ^ 0x4ED891A1) + (v64 & 0x4A99F1BA ^ 0xB5676E5F) + (v64 & 0x4A99F1BA ^ 0x1601A) + 1);
  LODWORD(v25) = *&v44[4 * (HIBYTE(v61) ^ 0xB4)] ^ *&v48[4 * (v30 ^ 0x20)] ^ *&v46[4 * (BYTE1(v59) ^ 0xB5)] ^ *&v45[4 * (BYTE2(v58) ^ 0x50)];
  v66 = *&v45[4 * ((v63 ^ 0x5DA0052Fu) >> 16)] ^ *&v44[4 * ((v62 ^ 0x4FA5FA1Bu) >> 24)] ^ *&v48[4 * ((v44[4 * (HIBYTE(v61) ^ 0xB4)] ^ v48[4 * (v30 ^ 0x20)] ^ v46[4 * (BYTE1(v59) ^ 0xB5)] ^ v45[4 * (BYTE2(v58) ^ 0x50)]) ^ 0xFA)] ^ *&v46[4 * ((v65 ^ 0x4D20) >> 8)];
  v67 = *&v44[4 * ((v63 ^ 0x5DA0052Fu) >> 24)] ^ *&v46[4 * (BYTE1(v25) ^ 0x63)] ^ *&v48[4 * (v62 ^ 5)] ^ *&v45[4 * (BYTE2(v65) ^ 0xEF)];
  v68 = *&v46[4 * ((v62 ^ 0xFA1B) >> 8)] ^ *&v48[4 * (v63 ^ 0x2F)] ^ *&v44[4 * (HIBYTE(v65) ^ 0xF0)] ^ __ROR4__(__ROR4__(*&v45[4 * (BYTE2(v25) ^ 0xC5)] ^ 0xF58CC1E7, 7) ^ 0xBB19EA82, 25) ^ 0x5B4D5822;
  v69 = (v68 & 0xC4486582 ^ 0x10D4F60E) & (v68 & 0x3BB79A7D ^ 0xCD5EEF82) | v68 & 0x2B230871;
  v70 = *&v44[4 * (BYTE3(v25) ^ 0x10)] ^ *&v45[4 * (BYTE2(v62) ^ 0x40)] ^ *&v46[4 * (BYTE1(v63) ^ 0xD2)];
  LODWORD(v25) = *&v48[4 * (v65 ^ 0x20)];
  v71 = v70 ^ v25;
  v72 = *&v46[4 * ((v69 ^ 0xE81B) >> 8)] ^ *&v45[4 * ((v67 ^ 0xBB88B190) >> 16)] ^ __ROR4__(__ROR4__(*&v44[4 * (HIBYTE(v66) ^ 0xA6)], 11) ^ 0xCA4061ED, 21) ^ *&v48[4 * ((v70 ^ v25) ^ 0x51)];
  v73 = *&v44[4 * (HIBYTE(v67) ^ 0xF)];
  v74 = ((2 * v73) & 0x9217BB6C ^ 0xEDEF7597) + 1647854388 + (((v73 ^ 0xF24D7E94) + 229802348) ^ ((v73 ^ 0x811856DF) + 2129111329) ^ ((v73 ^ 0xEA794D36) + 361149130));
  v75 = (v74 - ((2 * v74) & 0x8DA320BE) + 1188139103) ^ *&v45[4 * (BYTE2(v69) ^ 0xCD)];
  LODWORD(v25) = *&v46[4 * (BYTE1(v71) ^ 0x28)] ^ 0x441601B;
  v76 = (v75 + v25 - 2 * (v75 & v25)) ^ *&v48[4 * (v66 ^ 0x8B)];
  LODWORD(v30) = *&v45[4 * (BYTE2(v71) ^ 0xE3)] ^ *&v48[4 * (v67 ^ 0x90)] ^ *&v46[4 * (BYTE1(v66) ^ 0x29)] ^ *&v44[4 * ((v69 ^ 0x2D28E81B) >> 24)];
  v77 = *&v44[4 * (HIBYTE(v71) ^ 0xEB)] ^ *&v45[4 * (BYTE2(v66) ^ 0xA3)] ^ *&v46[4 * (BYTE1(v67) ^ 0x66)] ^ *&v48[4 * (((v69 ^ 0x1B) - (v69 ^ 5)) ^ 0xFFFFFFFC) + 4 * (v69 ^ 0x1B)];
  LODWORD(v25) = *&v46[4 * (BYTE1(v30) ^ 0x79)];
  v78 = *&v44[4 * (HIBYTE(v72) ^ 0x57)] ^ *&v48[4 * (v77 ^ 0x4D)] ^ *&v45[4 * (BYTE2(v76) ^ 0x98)] ^ ((v25 ^ (-246940477 - (v25 ^ 0x441601B)) ^ 0xF5069CD8 ^ (184116008 - (((v25 ^ 0x8DEA300C) + 1914032116) ^ ((v25 ^ 0x6F25C8DD) - 1864747229) ^ ((v25 ^ 0x17C96409) - 399074313)))) - 246940477);
  v79 = *&v45[4 * (BYTE2(v30) ^ 9)] ^ *&v46[4 * (BYTE1(v77) ^ 0xCC)] ^ *&v48[4 * (v72 ^ 0x75)] ^ *&v44[4 * ((v76 ^ 0xBD7DAD0C) >> 24)];
  v80 = *&v45[4 * (BYTE2(v77) ^ 0x61)] ^ *&v46[4 * (BYTE1(v72) ^ 0xA7)] ^ *&v44[4 * (BYTE3(v30) ^ 0x54)] ^ *&v48[4 * (v76 ^ 0xC)];
  v81 = *&v45[4 * ((BYTE2(v72) ^ 0xC6) - ((2 * (BYTE2(v72) ^ 0xC6)) & 0x1CA)) + 916] ^ *&v44[4 * (HIBYTE(v77) ^ 0x4B)] ^ *&v46[4 * (BYTE1(v76) ^ 0x7A)] ^ *&v48[4 * (v30 ^ 0x28)];
  v82 = BYTE2(v78) ^ 0x3B;
  v83 = *&v46[4 * (BYTE1(v80) ^ 0xC3)] ^ *&v44[4 * ((v78 ^ 0x9B3BE8F2) >> 24)] ^ __ROR4__(__ROR4__(*&v45[4 * (BYTE2(v79) ^ 0x3B)], 14) ^ 0xD6DD5F2D, 18) ^ *&v48[4 * (v81 ^ 0x25)];
  v84 = *&v45[4 * (BYTE2(v80) ^ 0xB9)] ^ *&v44[4 * (HIBYTE(v79) ^ 0xC4)] ^ *&v48[4 * (v78 ^ 0xEC)] ^ *&v46[4 * (BYTE1(v81) ^ 0x92)];
  LODWORD(v25) = (-(v81 ^ 0x4ED1F12E) ^ (560444437 - (v81 ^ 0x6FB6453B)) ^ 0x775316EC ^ ((v81 ^ 0x4ED1F12E) - ((2 * (v81 ^ 0x4ED1F12E)) & 0xEEA62DD8) + 2001934060)) + 560444437;
  v85 = *&v44[4 * (HIBYTE(v80) ^ 0x64)] ^ 0x16F62894 ^ *&v45[4 * (BYTE2(v25) ^ 0xE5)];
  v86 = *&v46[4 * ((v78 ^ 0xE8F2) >> 8)] ^ 0x441601B;
  v87 = (v86 + v85 - 2 * (v86 & v85)) ^ *&v48[4 * (v79 ^ 0x40)];
  v88 = *&v45[4 * (((v78 ^ 0x9B3BE8F2) >> 16) ^ 0xE5)] ^ *&v46[4 * (BYTE1(v79) ^ 0x27)] ^ *&v48[4 * (v80 ^ 0x5C)] ^ *&v44[4 * (BYTE3(v25) ^ 0xB4)];
  v89 = *&v44[4 * ((v83 ^ 0xAF6CC010) >> 24)] ^ *&v45[4 * (((v84 ^ 0xAD5008EA) >> 16) ^ 0xA2)];
  v90 = *&v46[4 * (BYTE1(v87) ^ 0xCE)];
  LODWORD(v158) = *(v22 - 116) < 0x5201A2F8u;
  v91 = ((v90 | v89) & 0x4000000) == 0;
  v92 = v89 ^ 0x16F62894;
  v93 = ~v90 & 0x4000000;
  if (v91)
  {
    v93 = -v93;
  }

  v94 = *&v48[4 * (v88 ^ 0xAA)] ^ v90 & 0xFBFFFFFF ^ (v93 + v92);
  v95 = HIWORD(v88) ^ 0xC3FD;
  if (HIDWORD(v158) != 210)
  {
    LOBYTE(v95) = (BYTE2(v88) ^ 0xFD) - 35 * ((235 * (BYTE2(v88) ^ 0xFDu)) >> 13);
  }

  v96 = *&v44[4 * (((v84 ^ 0xAD5008EA) >> 24) ^ 0x65)] ^ *&v46[4 * (BYTE1(v88) ^ 0x89)] ^ *&v48[4 * (v83 ^ 0x10)] ^ *&v45[4 * (BYTE2(v87) ^ 0x77)];
  v97 = v84 ^ 0xD8D3;
  v98 = *&v46[4 * HIBYTE(v97)];
  v99 = *&v45[4 * ((35 * ((235 * (BYTE2(v88) ^ 0xFDu)) >> 13) + (v95 - 35 * ((235 * v95) >> 13))) ^ 0xE5)] ^ *&v44[4 * (HIBYTE(v87) ^ 0x4A)] ^ *&v46[4 * (BYTE1(v83) ^ 0x17)] ^ *&v48[4 * v97];
  v100 = *&v45[4 * (BYTE2(v83) ^ 0x89)] ^ v98 ^ *&v44[4 * (HIBYTE(v88) ^ 0x77)] ^ *&v48[4 * (v87 ^ 0x34)];
  v101 = ((((v99 ^ 0xF4B6699A) >> (v82 & 0x10)) - ((2 * ((v99 ^ 0xF4B6699A) >> (v82 & 0x10))) & 0xEDA22ACC) - 154069658) ^ 0xF6D11566) >> (v82 & 0x10 ^ 0x10);
  v102 = *&v45[4 * (BYTE2(v96) ^ 0x18)] ^ *&v44[4 * (HIBYTE(v94) ^ 0xC2)] ^ *&v48[4 * (v100 ^ 0x1A)] ^ *&v46[4 * (BYTE1(v99) ^ 0xBE)];
  v103 = *&v45[4 * (BYTE2(v100) ^ 0xC0)];
  v104 = *&v44[4 * (((v96 & 0xFFFFFFAD ^ 0x58FD7257) >> (~v99 & 0x18) >> (v99 & 8) >> (v99 & 0x10)) ^ 0xB4)];
  v105 = *&v44[4 * (HIBYTE(v99) ^ 0x40)];
  v106 = v103 & 0x80000 ^ v103 & 0xFFF7FFFF ^ *&v48[4 * (v96 ^ 0xB)];
  v107 = *&v44[4 * (HIBYTE(v100) ^ 0xC3)];
  v108 = *&v46[4 * (BYTE1(v100) ^ 0xAA)];
  v109 = *&v46[4 * (BYTE1(v94) ^ 0xC8)];
  v110 = *&v46[4 * (BYTE1(v96) ^ 0xA5)];
  v111 = *&v45[4 * (v101 ^ 0xE5)];
  v112 = *&v45[4 * (BYTE2(v94) ^ 0x97)];
  v113 = v106 ^ v109 ^ 0xFBE2138 ^ v105;
  v114 = v111 ^ v104 ^ v108 ^ *&v48[4 * (v94 ^ 0x78)] ^ 0x7E30CBB7;
  v115 = v110 ^ v107 ^ v112;
  v116 = *(&off_1010A0B50 + v19 - 21648) - 1767661042;
  v117 = v115 ^ *&v48[4 * (v99 ^ 0x84)];
  v118 = *&v116[4 * (HIBYTE(v102) ^ 0x66)] ^ 0xFD3D8033;
  v119 = -102858328 * v118;
  v120 = v118 ^ BYTE2(v114);
  v121 = *(&off_1010A0B50 + (v19 ^ 0x5CA5)) - 652490847;
  v122 = v120 ^ v119;
  v123 = *(&off_1010A0B50 + (v19 ^ 0x5CF4)) - 1062578870;
  v124 = *&v123[4 * (BYTE1(v113) ^ 0x81)];
  v125 = *(&off_1010A0B50 + v19 - 20579) - 2048136287;
  v126 = *&v125[4 * (v117 ^ 0x29)];
  v127 = *&v116[4 * HIBYTE(v114)];
  v128 = *&v116[4 * (HIBYTE(v113) ^ 0xC5)];
  v129 = v122 ^ v124 ^ v126 ^ *&v121[4 * (BYTE2(v114) ^ 0xD6)] ^ (((8 * v124) ^ 0x93EDC50) + 186082248) ^ (v126 >> 4) & 0xDC482C4;
  v130 = *&v116[4 * (HIBYTE(v117) ^ 0xFD)];
  v131 = BYTE2(v113);
  v132 = *&v121[4 * (BYTE2(v113) ^ 0x80)];
  v133 = BYTE2(v117);
  v134 = *&v121[4 * (BYTE2(v117) ^ 0x75)];
  v135 = ((v102 ^ 0xE5A3F388) >> 16);
  LODWORD(v121) = *&v121[4 * (v135 - (((v102 ^ 0xE5A3F388) >> 15) & 0x1AC)) + 856];
  v136 = *&v125[4 * (v102 ^ 0x88)];
  v137 = ((BYTE1(v114) + (-BYTE1(v114) ^ (72 - (BYTE1(v114) ^ 0x48)) ^ (BYTE1(v114) - ((v114 >> 7) & 2) - 483378431) ^ 0x1CCFC4FE) - 71) ^ 0xFFFFFFF0) + BYTE1(v114);
  v138 = *&v125[4 * v114];
  v139 = *&v125[4 * (v113 ^ 0x3F)];
  v140 = *&v123[4 * (BYTE1(v117) ^ 0x97)];
  v141 = *&v123[4 * (BYTE1(v102) ^ 0xBB)];
  LODWORD(v125) = *&v123[4 * v137];
  v142 = *(&off_1010A0B50 + (v19 ^ 0x5B78)) - 1703186778;
  *(v32 + v162) = v142[(v129 & 0x20 ^ ((v129 & 0xDF ^ 0xC7) - (v129 & 0x20 ^ 0xB3 ^ v129 & 0xDF ^ 0xC7)) ^ (732934320 - (v129 & 0x20) - ((2 * (v129 & 0x20 ^ 0xB3)) & 0xFFFFFFE3)) ^ 0xD45050B0) + (v129 & 0xDF ^ 0xC7)] ^ 0xC2;
  v143 = v134 ^ v133 ^ v141 ^ v138 ^ (((8 * v141) ^ 0x93EDC50) + 186082248) ^ (v138 >> 4) & 0xDC482C4 ^ __ROR4__(((-200458240 * (v128 ^ 0xFD3D8033)) | ((-102858328 * (v128 ^ 0xFD3D8033)) >> 21)) ^ __ROR4__(v128 ^ 0xFD3D8033, 21) ^ 0x9140C566, 11);
  *(v32 + v159) = v142[v143 ^ 0xDALL] ^ 0x43;
  v144 = v132 ^ v131 ^ v140 ^ (((8 * v140) ^ 0x93EDC50) + 186082248) ^ (((v136 >> 4) & 0x8040080 ^ v136 & 0x8A3E09B1 ^ 0x75C9F74E) & (v136 & 0x75C1F64E ^ 0xE80BF346 ^ (v136 >> 4) & 0x5C08244) | ((v136 >> 4) & 0x8040080 ^ v136 & 0x8A3E09B1) & 0x23408B1) ^ ((-(v127 ^ 0xFD3D8033) ^ ((v127 ^ 0xFD3D8033) - 2 * ((v127 ^ 0xFD3D8033) & 0x220EA73A ^ v127 & 8) - 1576097998) ^ (-102858328 * (v127 ^ 0xFD3D8033) - ((-102858328 * (v127 ^ 0xFD3D8033)) ^ v127 ^ 0xFD3D8033)) ^ 0xA20EA732) - 102858328 * (v127 ^ 0xFD3D8033));
  v145 = *(&off_1010A0B50 + (v19 ^ 0x5891)) - 60902891;
  *(v32 + v168) = v145[HIBYTE(v144) ^ 0x20] ^ 0xC0;
  v146 = *(&off_1010A0B50 + (v19 ^ 0x5E67)) - 50247563;
  *(v32 + v160) = v146[BYTE1(v144) ^ 0xE8] ^ 0x3B;
  LODWORD(v121) = v135 ^ v130 ^ 0xFD3D8033 ^ v121 ^ (-102858328 * (v130 ^ 0xFD3D8033)) ^ v125 ^ 0xE425593E ^ (((8 * v125) ^ 0x93EDC50) + 186082248);
  v147 = v121 + (v139 ^ 0x9D435EF0 ^ (v139 >> 4) & 0xDC482C4) - 2 * (v121 & (v139 ^ 0x9D435EF0 ^ (v139 >> 4) & 0xDC482C4));
  *(v32 + v161) = v142[(v121 + (v139 ^ 0xF0 ^ (v139 >> 4) & 0xC4) - 2 * (v121 & (v139 ^ 0xF0 ^ (v139 >> 4) & 0xC4))) ^ 0x4BLL] ^ 0xC0;
  *(v32 + v163) = v142[v144 ^ 3] ^ 0xA4;
  v148 = *(&off_1010A0B50 + v19 - 22643) - 2087165167;
  LODWORD(v125) = v148[BYTE2(v129) ^ 0xF2];
  *(v32 + v167) = v125 ^ (v125 >> 4) ^ (v125 >> 1) ^ 0x81;
  *(v32 + *(v22 - 140)) = v145[HIBYTE(v147) ^ 0x12] ^ 0x30;
  *(v32 + v165) = v146[BYTE1(v129) ^ 0xC7] ^ 0xCD;
  *(v32 + v169) = v145[HIBYTE(v143) ^ 0x41] ^ 0xA0;
  LODWORD(v125) = v148[BYTE2(v143) ^ 0x51];
  *(v32 + *(v22 - 152)) = v125 ^ (v125 >> 4) ^ (v125 >> 1) ^ 0x74;
  *(v32 + v164) = v146[(BYTE1(v143) ^ 0x70) - ((2 * (BYTE1(v143) ^ 0x70)) & 0x3C) + 30] ^ 0xBC;
  LODWORD(v125) = v148[BYTE2(v144) ^ 0x7CLL];
  *(v32 + v166) = v125 ^ (v125 >> 4) ^ (v125 >> 1) ^ 0xD;
  *(v32 + *(v22 - 160)) = v145[BYTE3(v129) ^ 0xA9] ^ 0xAC;
  *(v32 + *(v22 - 136)) = v146[BYTE1(v147) ^ 0xA7] ^ 0x31;
  v149 = v148[BYTE2(v147) ^ 0xEBLL];
  LODWORD(v148) = (((v21 ^ 0x239A8643) - 597329475) ^ ((v21 ^ 0x9571CD27) + 1787704025) ^ ((v21 ^ 0xB44E9861) + 1269917599)) + 2094976396;
  v150 = v149 & 0x10;
  v151 = ((v148 ^ 0xD612FF67) + 1406532336) ^ v148 ^ ((v148 ^ 0x2B8BD08C) - 1370696443) ^ ((v148 ^ 0xFC562A61) + 2039558122) ^ ((v148 ^ 0x7BF7FFFD) - 30344586);
  v152 = (v149 ^ 0x64u) >> 3;
  if ((v152 & v149 & 0x10) != 0)
  {
    v150 = -v150;
  }

  *(v32 + *(v22 - 128)) = v149 ^ ((((v150 + v152) ^ (v149 ^ 0x64) & 0xEF) & 0xFE) >> 1) ^ 0x92;
  v153 = (((v151 ^ 0x9A424564) + 488674282) ^ ((v151 ^ 0x1C630F2C) - 1694377566) ^ ((v151 ^ 0xFC19B03F) + 2071684787)) + 1420260861;
  v154 = v158 ^ (v153 < 0x5201A2F8);
  v155 = v153 < *(v22 - 116);
  if (v154)
  {
    v155 = v158;
  }

  LODWORD(v157) = (v19 - 22939) | 0x2434;
  return (*(a16 + 8 * ((54574 * v155) ^ v19)))(v145, 186082248, v130, 155114576, v129, 4248666163, v146, v142, a9, a10, a11, a12, a13, a14, a15, a16, a17, v157, v158, v159, v160, v161);
}

uint64_t sub_100243D38@<X0>(int a1@<W2>, int a2@<W8>)
{
  v2 = (a2 - 32682) ^ 0x3E85u;
  v3 = a2 - 22055;
  STACK[0x10EE0] = STACK[0x7D68];
  LODWORD(STACK[0x10ED8]) = a2 + 193924789 * ((~(&STACK[0x10000] + 3800) & 0xD022901 | (&STACK[0x10000] + 3800) & 0xF2FDD6F8) ^ 0xBBB91B67) - 32304;
  v4 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (a2 ^ 0x41D5)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x6D24]) = a1;
  STACK[0x7690] = v2 + STACK[0x7690] - 14164;
  return (*(v4 + 8 * ((44566 * (a1 == -371865839)) ^ v3)))(v6);
}

uint64_t sub_100243E7C()
{
  STACK[0x77A0] = v1;
  STACK[0x1298] = STACK[0x56F0];
  v2 = STACK[0x7690];
  STACK[0x9198] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = v2 + ((v0 - 28454) ^ 0x98ELL);
  v3 = *(STACK[0x6F68] + 36);
  STACK[0x6CE0] = STACK[0x6F68] + 36;
  return (*(STACK[0xF18] + 8 * ((55 * (((v0 - 1) ^ (v3 == -371865834)) & 1)) ^ v0)))();
}

uint64_t sub_100243FA8(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, _DWORD *a56)
{
  v61 = (((a56[18] ^ 0xD8CFE9DB) + 657462821) ^ ((a56[18] ^ 0xB25DC099) + 1302478695) ^ (6451 * (a4 ^ 0x9C73) + (a56[18] ^ 0x77EEAF3E) - 2012144036)) + (((a1 ^ 0x94E2BC30) + 1797080016) ^ ((a1 ^ 0x99BB07E9) + 1715795991) ^ ((a1 ^ 0xF5E232C7) + 169725241));
  v62 = (((a56[19] ^ 0x165D1BDE) - 375200734) ^ ((a56[19] ^ 0xAFBE51F) - 184280351) ^ ((a56[19] ^ 0x1DA78BD) - 31094973)) + (((v59 ^ 0x158DCC27) - 361614375) ^ ((v59 ^ 0xF247184) - 254046596) ^ ((v59 ^ 0x4F67E2F2) - 1332208370));
  a56[18] = v61 - ((2 * v61 + 745545524) & 0x3AF90CF8) + 867472918;
  a56[19] = v62 - ((2 * v62 + 647351194) & 0x3AF90CF8) - 1865978807;
  v63 = (((a56[20] ^ 0x7160F17A) - 1902178682) ^ ((a56[20] ^ 0x612688DC) - 1629915356) ^ ((a56[20] ^ 0xD3AFFDA) - 221970394)) + (((v58 ^ 0x2DB48EAC) - 766807724) ^ ((v58 ^ 0xC5F623BB) + 973724741) ^ ((v58 ^ 0x331C7177) - 857502071));
  v64 = (((a56[21] ^ 0xAE4C1CE1) + 1370743583) ^ ((a56[21] ^ 0xFEEEA779) + 17913991) ^ ((a56[21] ^ 0x4DDE3DE4) - 1306410468)) + (((v57 ^ 0x53892DAD) - 1401499053) ^ ((v57 ^ 0xEFA3E302) + 274472190) ^ ((v57 ^ 0x23A6F981) - 598145409));
  a56[20] = v63 - 2 * ((v63 + 417030876) & 0x1D7C867F ^ v63 & 3) + 374860120;
  a56[21] = v64 - 2 * ((v64 + 487112106) & 0x1D7C867D ^ v64 & 1) - 628800474;
  return (*(v56 + 8 * a4))();
}

uint64_t sub_100244398@<X0>(char a1@<W0>, uint64_t a2@<X2>, unsigned int a3@<W3>, unsigned int a4@<W8>)
{
  v17 = ((v11 ^ 0x536D20A1AE053FF9) - 0x536D20A1AE053FF9) ^ ((v11 ^ 0xF526466D460CE42CLL) + 0xAD9B992B9F31BD4) ^ ((v11 ^ 0xA64B66CC974ED741) + ((STACK[0xF10] - 11069) ^ 0x59B4993368B17741));
  v18 = (v17 + 0x5BBEBEC62697B0E4) * (v17 + 2573754629u) - 0x5BBEBEC5A750A450 * v17 + 0x4DB236C7C9CA692BLL;
  v19 = ((2 * (v18 % 0xC95119CF)) & 0x1DEFFFB3CLL) + ((v18 % 0xC95119CF) ^ 0xBFDFDEF7EF7FFD9ELL);
  v20 = ((a3 ^ 0xABF52B4519C53160) + 0x540AD4BAE63ACEA0) ^ ((a3 ^ 0x793501AB7D62B6B6) - 0x793501AB7D62B6B6) ^ ((a3 ^ 0xD2C02AEE1BE08B42) + 0x2D3FD511E41F74BELL);
  v21 = (v20 - 0x6ED918B430199DAFLL) * (v20 + 2135362708) + 0x6ED918B4AF60AA43 * v20 + 2575459919u * v19 - 0x112F5C8D4C585CCFLL;
  v22 = v21 % 0x8C3E3039 - ((2 * (v21 % 0x8C3E3039)) & 0x1518353BELL) + 0x7C287C3AA8C1A9DFLL;
  v23 = ((((v22 ^ 0x4494FC4ED42B0C85) - 0x4494FC4ED42B0C85) ^ ((v22 ^ 0x325FC627E5886DC4) - 0x325FC627E5886DC4) ^ ((v22 ^ 0xAE346539962C89ELL) - 0xAE346539962C89ELL)) + 0x5E7DEFB198E0A40BLL) * (v19 + 0x4020210810800262) + 0x1DAA8C890FE105D4 * v19 - 0x3CD4986C2EE55C5FLL;
  v24 = (v23 ^ 0xFC81F8202E503F87) & (2 * (v23 & 0xFE05FA842F153F87)) ^ v23 & 0xFE05FA842F153F87;
  v25 = ((2 * (v23 ^ 0x8C8A9C2078585E81)) ^ 0xE51ECD48AE9AC20CLL) & (v23 ^ 0x8C8A9C2078585E81) ^ (2 * (v23 ^ 0x8C8A9C2078585E81)) & 0x728F66A4574D6106;
  v26 = v25 ^ 0x128122A451452102;
  v27 = (v25 ^ 0x600E440004084004) & (4 * v24) ^ v24;
  v28 = ((4 * v26) ^ 0xCA3D9A915D358418) & v26 ^ (4 * v26) & 0x728F66A4574D6100;
  v29 = (v28 ^ 0x420D028055050000) & (16 * v27) ^ v27;
  v30 = ((16 * (v28 ^ 0x3082642402486106)) ^ 0x28F66A4574D61060) & (v28 ^ 0x3082642402486106) ^ (16 * (v28 ^ 0x3082642402486106)) & 0x728F66A4574D6100;
  v31 = (v30 ^ 0x2086620454440000) & (v29 << 8) ^ v29;
  v32 = (((v30 ^ 0x520904A003096106) << 8) ^ 0x8F66A4574D610600) & (v30 ^ 0x520904A003096106) ^ ((v30 ^ 0x520904A003096106) << 8) & 0x728F66A4574D6000;
  v33 = v31 ^ 0x728F66A4574D6106 ^ (v32 ^ 0x206240445410000) & (v31 << 16);
  v34 = (v9 + v7);
  v35 = (((v4 + v34) ^ *(*v13 + (*v8 & v5))) & 0x7FFFFFFF) * v10;
  v36 = (v35 ^ HIWORD(v35)) * v10;
  v37 = v23 ^ (2 * ((v33 << 32) & 0x728F66A400000000 ^ v33 ^ ((v33 << 32) ^ 0x574D610600000000) & (((v32 ^ 0x708942A0120C6106) << 16) & 0x728F66A400000000 ^ 0x100B20A000000000 ^ (((v32 ^ 0x708942A0120C6106) << 16) ^ 0x66A4574D00000000) & (v32 ^ 0x708942A0120C6106))));
  *(v6 + v34) = *(v4 + v34) ^ *(a2 + (v36 >> 24)) ^ *((v36 >> 24) + v16 + 2) ^ *((v36 >> 24) + v15 + 1) ^ v36 ^ (BYTE3(v36) * a1) ^ (v37 >> 15) ^ 0x1F;
  v38 = (v9 - 358132422);
  LODWORD(v34) = ((*(*v13 + (*v8 & v5)) ^ (v4 + v38)) & 0x7FFFFFFF) * v10;
  v39 = (v34 ^ WORD1(v34)) * v10;
  *(v6 + v38) = *(v4 + v38) ^ *(a2 + (v39 >> 24)) ^ *((v39 >> 24) + v16 + 2) ^ *((v39 >> 24) + v15 + 1) ^ v39 ^ (BYTE3(v39) * a1) ^ 0x42 ^ (((v37 >> 23) ^ 3) - ((2 * ((v37 >> 23) ^ 3)) & 0x84) + 66);
  v40 = (v9 - 358132421);
  LODWORD(v32) = ((*(*v13 + (*v8 & v5)) ^ (v4 + v40)) & 0x7FFFFFFF) * v10;
  v41 = (v32 ^ WORD1(v32)) * v10;
  *(v6 + v40) = *(v4 + v40) ^ *(a2 + (v41 >> 24)) ^ *((v41 >> 24) + v16 + 2) ^ *((v41 >> 24) + v15 + 1) ^ v41 ^ (BYTE3(v41) * a1) ^ 0x52 ^ (((v37 >> 31) ^ 0x89) - ((2 * (v37 >> 31)) & 0xA4) + 82);
  LODWORD(v41) = (v9 ^ 0xC88745B1) & (2 * (v9 & v7)) ^ v9 & v7;
  LODWORD(v40) = ((2 * (v9 ^ 0x988DCFC1)) ^ 0xE45535F0) & (v9 ^ 0x988DCFC1) ^ (2 * (v9 ^ 0x988DCFC1)) & v14;
  LODWORD(v26) = v40 ^ 0x122A8A08;
  LODWORD(v40) = (v40 ^ 0x600010E0) & (4 * v41) ^ v41;
  LODWORD(v41) = ((4 * v26) ^ 0xC8AA6BE0) & v26 ^ (4 * v26) & v14;
  LODWORD(v40) = (v41 ^ 0x402A0AE0) & (16 * v40) ^ v40;
  LODWORD(v41) = ((16 * (v41 ^ 0x32009018)) ^ 0x22A9AF80) & (v41 ^ 0x32009018) ^ (16 * (v41 ^ 0x32009018)) & 0x722A9AC0;
  LODWORD(v40) = v40 ^ v14 ^ (v41 ^ 0x22288A00) & (v40 << 8);
  v42 = (v9 ^ (2 * ((v40 << 16) & v12 ^ v40 ^ ((v40 << 16) ^ 0x1AF80000) & (((v41 ^ 0x50021078) << 8) & v12 ^ 0x50200000 ^ (((v41 ^ 0x50021078) << 8) ^ 0x2A9A0000) & (v41 ^ 0x50021078))))) & 0xFFFFFFFC ^ 0x2AA260CBLL;
  LODWORD(v41) = (((v4 + v42) ^ *(*v13 + (*v8 & v5))) & 0x7FFFFFFF) * v10;
  v43 = (v41 ^ WORD1(v41)) * v10;
  *(v6 + v42) = *(v4 + v42) ^ *(a2 + (v43 >> 24)) ^ *((v43 >> 24) + v16 + 2) ^ *((v43 >> 24) + v15 + 1) ^ v43 ^ (BYTE3(v43) * a1) ^ 5 ^ (((v37 >> 39) ^ 0xEF) - ((2 * ((v37 >> 39) ^ 0xEF)) & 0xA) + 5);
  v44 = v9 - 1570173301 < a4;
  if (a4 < 0xB7C1B94E != (v9 - 1570173301) < 0xB7C1B94E)
  {
    v44 = a4 < 0xB7C1B94E;
  }

  return (*(STACK[0xF18] + 8 * ((46824 * v44) ^ LODWORD(STACK[0xED0]))))();
}

uint64_t sub_100244DC0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, unsigned int a6)
{
  if ((((a4 ^ 0x3D35CE7) - 64183527) ^ ((a4 ^ 0xF2336BA2) + 231511134) ^ ((a4 ^ 0x1835F054) - 406188116)) + a5 - 371916043 >= 5)
  {
    a2 = a2;
  }

  else
  {
    a2 = a4;
  }

  return (*(v6 + 8 * (a6 ^ 0xA4A5F9A8 ^ (10401 * (a6 > 0x2B6A7067)))))(a1, a2);
}

uint64_t sub_100244EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q1>)
{
  a3.n128_u16[0] = -14393;
  a3.n128_u8[2] = -57;
  a3.n128_u8[3] = -57;
  a3.n128_u8[4] = -57;
  a3.n128_u8[5] = -57;
  a3.n128_u8[6] = -57;
  a3.n128_u8[7] = -57;
  return (*(v6 + 8 * v5))(a2 + -7 - a1, 8 - (v3 & 0x18), v3 & 7, -a1, v4 + -7 - a1, v5 ^ 0xFFFFFFFFFFFFE3F5, 12269, xmmword_100F523B0, a3);
}

uint64_t sub_100244F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (*(a8 + 8 * (v9 + 20184)))(v8);
  v11 = STACK[0x2F0];
  *STACK[0x2D0] = 0;
  return (*(v11 + 8 * v9))(v10);
}

uint64_t sub_100244F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v36 = *(v35 + 24);
  *(v34 - 112) = veorq_s8(**(v35 + 40), xmmword_100F52A50);
  if (v32)
  {
    v37 = v36 == 0;
  }

  else
  {
    v37 = 1;
  }

  v38 = v37;
  return (*(v33 + 8 * ((102 * v38) ^ a1)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, v35, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_100244FD4(double a1, __n128 a2)
{
  a2.n128_u16[0] = -26215;
  a2.n128_u8[2] = -103;
  a2.n128_u8[3] = -103;
  a2.n128_u8[4] = -103;
  a2.n128_u8[5] = -103;
  a2.n128_u8[6] = -103;
  a2.n128_u8[7] = -103;
  return (*(v3 + 8 * (v2 - 3178)))(xmmword_100F523B0, a2);
}

uint64_t sub_1002450A4(uint64_t a1)
{
  v4 = *(&off_1010A0B50 + a1 - 22676) - 479050199;
  v5 = *(&off_1010A0B50 + a1 - 20729) - 332986722;
  v6 = (v5[((((a1 - 87) & 0xDD) - 37) ^ *(v2 - 102))] ^ *(v2 - 102));
  v7 = *(&off_1010A0B50 + a1 - 22358) - 329455271;
  v8 = *(&off_1010A0B50 + (a1 ^ 0x5473)) - 2140651978;
  v9 = (v5[*(v2 - 110)] ^ *(v2 - 110)) << 8;
  v10 = *(v2 - 103);
  v11 = (v10 ^ 0x70) - ((2 * (v10 ^ 0x70)) & 0xB6) - 37;
  v12 = *(v2 - 100) ^ 0x41;
  v13 = ((-(v11 ^ 0xF2) ^ ((v11 ^ 0xF2) - ((2 * (v11 ^ 0xF2)) & 0xB2) + 89) ^ 0x59 ^ ((v8[v10 ^ 0xAD] ^ 0x39) - (v8[v10 ^ 0xAD] ^ v11 ^ 0xCB))) + (v8[v10 ^ 0xAD] ^ 0x39)) << 16;
  LODWORD(v10) = (((v5[*(v2 - 98) ^ 0x8ALL] ^ *(v2 - 98)) << 8) ^ 0x9AD77940) & ((((1191182336 * v7[v12] + 1107296256) ^ 0xE46E58B2) & ((v4[*(v2 - 97) ^ 0xA1] - 66) ^ 0xFFFEF8F2) | (v4[*(v2 - 97) ^ 0xA1] - 66) & 0x4D) ^ 0x18B1A765);
  v14 = v5[*(v2 - 106) ^ 0xB4] ^ 0x2Eu;
  v15 = v8[*(v2 - 99) ^ 0x4ELL] ^ *(v2 - 99);
  v16 = ((v15 << 16) ^ 0xFFC3FFFF) & ((((1191182336 * v7[v12] + 1107296256) ^ 0xE46E58B2) & ((v4[*(v2 - 97) ^ 0xA1] - 66) ^ 0xFFFEF8F2) & 0x650840BF | (v4[*(v2 - 97) ^ 0xA1] - 66) & 0xD) ^ 0x792117A5 ^ v10);
  v17 = (v4[*(v2 - 101) ^ 0xBELL] - 66) & 0x97 ^ 0x9C10C793 ^ ((v4[*(v2 - 101) ^ 0xBELL] - 66) ^ 0xFFFFFFFE) & ((v13 & 0x820000 | ((((((71 * v7[*(v2 - 104) ^ 0xFLL] + 66) ^ 0x22222222) << 24) ^ 0x4F47BF0A) & ((v6 << 8) ^ 0xFFF7702A) & 0xFFFFBFFF | (((v6 >> 6) & 1) << 14)) ^ 0x193AFCA0) & ~v13) ^ 0x360606C2);
  v18 = ((v4[*(v2 - 109) ^ 0xABLL] - 66) & 0x22 | (~(v4[*(v2 - 109) ^ 0xABLL] - 66) | 0xFFFFFF00) & ((((((71 * v7[*(v2 - 112) ^ 0x84] + 66) ^ 0xC6) << 24) ^ 0xCCCFA17B) & (v9 ^ 0xFFFF9EFF) | v9 & 0x5E00) ^ 0xC7C3C726) & 0xBC69126) ^ 0xB6B218D3 ^ (((v8[*(v2 - 111) ^ 0xCFLL] ^ *(v2 - 111)) << 16) ^ 0xF4EE6ED9) & (((v4[*(v2 - 109) ^ 0xABLL] - 66) & 0xA2 | (~(v4[*(v2 - 109) ^ 0xABLL] - 66) | 0xFFFFFF00) & ((((((71 * v7[*(v2 - 112) ^ 0x84] + 66) ^ 0xC6) << 24) ^ 0xCCCFA17B) & (v9 ^ 0xFFFF9EFF) | v9 & 0x5E00) ^ 0xC7C3C726)) ^ 0x38F391A4);
  *(v2 - 116) = (((v1 ^ 0x7F058E2B) + 304233357) ^ ((v1 ^ 0xCE354A9B) - 1559036099) ^ ((v1 ^ 0xBE493FE4) - 747730364)) - 274508796;
  return (*(v3 + 8 * a1))(a1, v16, v17, v15, v18, v14, v4);
}