uint64_t sub_10098D6E4(int a1)
{
  v2 = STACK[0x860];
  v3 = STACK[0x860] & 0x6DC2CA3D ^ STACK[0xE70] & 0x10;
  v4 = LODWORD(STACK[0x718]) + LODWORD(STACK[0xAC0]) + LODWORD(STACK[0x708]) + LODWORD(STACK[0x790]) + LODWORD(STACK[0x798]) + LODWORD(STACK[0x710]) + LODWORD(STACK[0x7A0]);
  v5 = a1 - 46184988 + ((a1 - 46184988) >> 12) + ((a1 - 46184988 + ((a1 - 46184988) >> 12)) >> 5);
  v6 = LODWORD(STACK[0xE28]) + LODWORD(STACK[0xC70]) + LODWORD(STACK[0xC40]) + LODWORD(STACK[0xBA0]);
  LODWORD(STACK[0xAC0]) = v5;
  v7 = (v5 ^ 0x9E1B5C1D) - ((v5 ^ 0x9E1B5C1D) >> 10) + (((v5 ^ 0x9E1B5C1D) - ((v5 ^ 0x9E1B5C1D) >> 10)) >> 4);
  v8 = v6 + LODWORD(STACK[0xCA0]) + (v4 ^ LODWORD(STACK[0xB28]));
  v9 = v7 - ((2 * v7) & 0xFC271D14);
  v10 = v7 - 1512844957 - ((v7 - 1512844957) >> 8);
  LODWORD(STACK[0x790]) = v10;
  LODWORD(STACK[0x798]) = v10 >> ((((v1 + 53) ^ 3) & a1 ^ 3) + (((v1 + 53) ^ 3) & a1));
  LODWORD(STACK[0x7A0]) = v9 + 2115210890;
  LODWORD(STACK[0xBA0]) = v2 - 2 * v3 - 306001363;
  v11 = ((LODWORD(STACK[0xBB0]) - (((LODWORD(STACK[0xCE0]) ^ 0xC3552DA9) + 1017827927) ^ ((LODWORD(STACK[0xCE0]) ^ 0x77BF89E6) - 2009041382) ^ ((LODWORD(STACK[0xCE0]) ^ 0x35B9B96B) - 901364075)) + 2125259484 + ((((((((LODWORD(STACK[0xAB8]) + LODWORD(STACK[0xDF0]) + LODWORD(STACK[0x730]) + LODWORD(STACK[0xDA0]) + (((((((LODWORD(STACK[0xBC0]) ^ 0xC74F8EF9) + 951087367) ^ ((LODWORD(STACK[0xBC0]) ^ 0xF97C205A) + 109305766) ^ ((LODWORD(STACK[0xBC0]) ^ 0xB8B27535) + 1196264139)) + LODWORD(STACK[0xE00]) + LODWORD(STACK[0xA20]) + LODWORD(STACK[0x720]) + ((((LODWORD(STACK[0xCC0]) - 1428802772 + (~LODWORD(STACK[0xE10]) | 0xAA5399A9)) ^ LODWORD(STACK[0xBE8]) ^ 0xAAD6332B ^ ((LODWORD(STACK[0xC30]) ^ (LODWORD(STACK[0xA08]) - (STACK[0xE20] & 0xF294B51E) + 2034915983) ^ v8 ^ 0xF81947AB) + LODWORD(STACK[0xE18]))) - LODWORD(STACK[0xBF0])) ^ LODWORD(STACK[0xCB0]))) ^ LODWORD(STACK[0xB98])) + LODWORD(STACK[0xDD8])) ^ LODWORD(STACK[0xBE0]))) ^ LODWORD(STACK[0xC80])) + LODWORD(STACK[0x778])) ^ LODWORD(STACK[0xAD0])) - LODWORD(STACK[0x774])) ^ LODWORD(STACK[0xD50])) + LODWORD(STACK[0xDE0])) ^ LODWORD(STACK[0xBB8]))) ^ LODWORD(STACK[0xCC8])) + LODWORD(STACK[0x7B0]);
  v12 = ((((v2 - ((2 * v2) & 0x81B6E8C4) - 1059359646) ^ LODWORD(STACK[0xC24]) ^ 0xC0DB7462 ^ ((((((((LODWORD(STACK[0xCD0]) ^ 0x1A021212) - 436343314) ^ ((LODWORD(STACK[0xCD0]) ^ 0xA6FFF1D2) + 1493175854) ^ ((LODWORD(STACK[0xCD0]) ^ 0xB31A1A84) + 1290134908)) + LODWORD(STACK[0xC18]) + 266860868 + ((((LODWORD(STACK[0xA90]) + LODWORD(STACK[0x760]) + (((LODWORD(STACK[0xCF8]) ^ 0x80ED2902) + 2131941118) ^ ((LODWORD(STACK[0xCF8]) ^ 0x75FC40C3) - 1979465923) ^ ((LODWORD(STACK[0xCF8]) ^ 0xFAF69085) + 84504443)) + (LODWORD(STACK[0xDC8]) ^ LODWORD(STACK[0xA40]) ^ (LODWORD(STACK[0xD28]) - ((2 * LODWORD(STACK[0xD28])) & 0x5B59BB2E) - 1381180009) ^ 0xADACDD97 ^ (((LODWORD(STACK[0x768]) + LODWORD(STACK[0x738]) + LODWORD(STACK[0x780]) + LODWORD(STACK[0xDC0]) + ((((v11 - ((2 * v11) & 0x1FCFF288) + 266860868) ^ LODWORD(STACK[0xD08])) - LODWORD(STACK[0x7A8])) ^ LODWORD(STACK[0xA30]))) ^ LODWORD(STACK[0xB18])) - LODWORD(STACK[0xAE0])))) ^ LODWORD(STACK[0xD58])) + LODWORD(STACK[0x748])) ^ LODWORD(STACK[0xDD0]))) ^ LODWORD(STACK[0xD10])) + LODWORD(STACK[0xC60])) ^ LODWORD(STACK[0xB90])) + LODWORD(STACK[0xC88]))) + LODWORD(STACK[0x758])) ^ LODWORD(STACK[0xD20])) - LODWORD(STACK[0x750]);
  LODWORD(STACK[0x7B0]) = v12 - ((2 * v12) & 0xDF6825F8) - 273411332;
  LODWORD(STACK[0x7A8]) = (LODWORD(STACK[0xCD8]) ^ 0x2437D1BF) + LODWORD(STACK[0xCE8]) + LODWORD(STACK[0x740]);
  v13 = STACK[0x998] ^ 0x9380862C1FE8E956;
  STACK[0xE78] = v13 & 7 ^ 6;
  v14 = STACK[0xA48] & 6;
  v15 = STACK[0xE08] - ((2 * STACK[0xE08]) & 0xFFFFFFC7) + 99;
  LODWORD(STACK[0xE70]) = v15 ^ 0x63;
  LODWORD(STACK[0xE28]) = v15 & 0xFFFFFFC8;
  v16 = (((v14 ^ 0xF4A2DECC) - 1497269793) ^ ((v14 ^ 0x281556FA) + 2054615529) ^ ((v14 ^ 0xDCB78836) - 1898696923)) + (((v14 ^ 0x6AE8E7F2) - 2137649707) ^ ((v14 ^ 0x93466DAA) + 2033747853) ^ ((v14 ^ 0xF9AE8A66) + 332423233)) + 249234163;
  LODWORD(STACK[0xE20]) = ((v16 ^ 0x535A2E94) + 117) ^ v16 ^ ((v16 ^ 0xBCA12202) + 227) ^ ((v16 ^ 0x77) + 152) ^ ((v16 ^ 0xFE) + 31);
  LODWORD(STACK[0xE18]) = LODWORD(STACK[0xA3C]) - (STACK[0xA28] & 0x40) + 32;
  LODWORD(STACK[0xE00]) = STACK[0xD98] & 0x11C0443;
  STACK[0xDF0] = ~v13 & 2;
  STACK[0xE10] = v13 & 5 ^ 4;
  return (*(STACK[0xED8] + 8 * v1))();
}

uint64_t sub_10098DE4C@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  LODWORD(STACK[0xEA8]) = 0;
  LODWORD(STACK[0xE18]) = 0;
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
  v11 = *(STACK[0xF50] + 69) + 98;
  STACK[0xE88] = (v5 + 9689) | 0x1104u;
  v12 = (v11 & (((v5 - 39) | 4) + 44) | 0x45) ^ v11 & 0x8A;
  v13 = *((v6 & 0x6CF97B679F5E9306 ^ 0x60F13B219F540002) + (v6 & 0x6CF97B679F5E9306 ^ 0xC084046000A9304) + v10 + ((v11 ^ (2 * ((v11 ^ 0x30) & (2 * ((v11 ^ 0x30) & (2 * ((v11 ^ 0x30) & (2 * ((v11 ^ 0x30) & (2 * ((v11 ^ 0x30) & (2 * ((v11 ^ 0x30) & (2 * v12) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12))) ^ 0xABu) - 0x6CF97B679F5E8CBCLL);
  v14 = (((v13 ^ 0xCC) + 52) ^ ((v13 ^ v8) - 77) ^ ((v13 ^ 0xC7) + 57)) - 29;
  v15 = v14 & a3 ^ a1;
  v16 = v14 ^ (2 * ((v14 ^ a2) & (2 * ((v14 ^ a2) & (2 * ((v14 ^ a2) & (2 * ((v14 ^ a2) & (2 * ((v14 ^ a2) & (2 * (((2 * v14) & 0x6E ^ v9) & (v14 ^ 0x66) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15));
  v17 = v6 ^ LODWORD(STACK[0xAC0]) ^ *(a5 + 76);
  STACK[0xC88] = a4 ^ 0xBB0C18CEAFA04FA5;
  *(a5 + 76) = v17 ^ (-51 * (v16 ^ (v16 >> 4) ^ (v16 >> 1) ^ 2)) ^ 0xFE;
  v18 = *(v7 + 8 * v5);
  LODWORD(STACK[0xDF0]) = 1;
  LODWORD(STACK[0xDE8]) = 1;
  LODWORD(STACK[0xCF8]) = 1;
  LODWORD(STACK[0xD98]) = 1;
  LODWORD(STACK[0xD10]) = 1;
  LODWORD(STACK[0xE00]) = 1;
  return v18(4294947698, -22206133, STACK[0xBD8], 0xFFFFF20000000000, 184);
}

uint64_t sub_10098E100@<X0>(uint64_t a1@<X1>, char a2@<W3>, char a3@<W5>, char a4@<W7>, int a5@<W8>)
{
  LODWORD(STACK[0xE00]) = 0;
  LODWORD(STACK[0xDF8]) = 0;
  LODWORD(STACK[0xE08]) = 0;
  LODWORD(STACK[0xE28]) = 0;
  LODWORD(STACK[0xDC0]) = 0;
  LODWORD(STACK[0xDE0]) = 0;
  v12 = STACK[0xE78];
  *(STACK[0xF10] + 62) = LODWORD(STACK[0xC24]) ^ *(STACK[0xF10] + 43) ^ 0x12 ^ STACK[0xE78];
  v13 = STACK[0xC88];
  v14 = STACK[0xC88] >> (6 * (a5 ^ 0xE8u) - 124);
  *(STACK[0xF10] + 123) = LODWORD(STACK[0xAC8]) ^ *(STACK[0xF10] + 58) ^ 0xCB ^ STACK[0xC88];
  *(STACK[0xF10] + 43) = LODWORD(STACK[0xCE0]) ^ BYTE1(v12) ^ *(STACK[0xF10] + 136) ^ 0x19;
  *(STACK[0xF10] + 114) = LODWORD(STACK[0xC40]) ^ *(STACK[0xF10] + 151) ^ 0x59 ^ v14;
  v15 = *(STACK[0xEB8] + (((((BYTE2(v12) ^ 0xF4) - 117) ^ ((BYTE2(v12) ^ 0x2E) + 81) ^ ((BYTE2(v12) ^ v5) - 55)) - 1) ^ 0x91));
  v16 = (((v15 ^ 0x6F) - 111) ^ ((v15 ^ 0xFFFFFFA6) + 90) ^ ((v15 ^ 0xFFFFFF8F) + 113)) + 18;
  LODWORD(v14) = v16 & 0x5A ^ 0x49;
  v17 = v16 ^ (2 * ((v16 ^ 0x48) & (2 * ((v16 ^ 0x48) & (2 * ((v16 ^ 0x48) & (2 * ((v16 ^ 0x48) & (2 * (v16 & (2 * (v14 ^ v16 & 0x12)) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14));
  v18 = ((v12 >> 16) ^ 0x20D0BAF1A66CLL) >> ((BYTE2(v12) & 8 ^ 8) + (BYTE2(v12) & 8u));
  v19 = -48 - 51 * (v17 ^ (v17 >> 4) ^ (v17 >> 1) ^ 0xFFFFFF92);
  LODWORD(v14) = v19 & 0x18 ^ v6;
  v20 = *(STACK[0xF10] + 71) ^ LODWORD(STACK[0xBB8]) ^ v19 ^ (2 * ((v19 ^ 0x30) & (2 * ((v19 ^ 0x30) & (2 * ((v19 ^ 0x30) & (2 * ((v19 ^ 0x30) & (2 * v14) ^ v14)) ^ v14)) ^ v14)) ^ v14));
  HIDWORD(v21) = v20 ^ 0xE;
  LODWORD(v21) = (v20 ^ 0x60) << 24;
  LOBYTE(v20) = *(a1 + ((v21 >> 28) ^ 0x8DLL));
  LOBYTE(v20) = -74 - 81 * (((v20 ^ 0xC9) + 63) ^ ((v20 ^ 0x5E) - 86) ^ ((v20 ^ 0xA7) + 81));
  LOBYTE(v14) = v20 & v6 ^ 0x11;
  *(STACK[0xF10] + 34) = v20 ^ (2 * ((v20 ^ 0x12) & (2 * ((v20 ^ 0x12) & (2 * ((v20 ^ 0x12) & (2 * (((2 * (((2 * v20) & 0x24 | 0x12) & v20)) ^ 0x26) & (v20 ^ 0x12) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ 0x30;
  *(STACK[0xF10] + 30) = LODWORD(STACK[0xB20]) ^ BYTE2(v13) ^ *(STACK[0xF10] + 86) ^ a4;
  LOBYTE(v14) = ((*(STACK[0xF10] + 6) ^ 0x2A) - 42) ^ ((*(STACK[0xF10] + 6) ^ 0x7D) - 125) ^ ((*(STACK[0xF10] + 6) ^ 0xD3) + 45);
  v22 = v14 - 88;
  LOBYTE(v14) = ((87 - v14) & 0xD5 | 2) ^ (v14 - 88) & 0xA6;
  v23 = STACK[0xEC0];
  LOBYTE(v14) = *(STACK[0xEC0] + ((v22 ^ (2 * ((v22 ^ 0x54) & (2 * ((v22 ^ 0x54) & (2 * ((v22 ^ 0x54) & (2 * ((v22 ^ 0x54) & (2 * ((v22 ^ 0x54) & (2 * (v22 & (2 * v14) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14))) ^ 0xEBu));
  *(STACK[0xF10] + 108) = LODWORD(STACK[0xBB0]) ^ (-87 - 59 * (((v14 ^ 0x68) + 106) ^ ((v14 ^ v9) - 75) ^ ((v14 ^ 0xB6) - 72))) ^ (v18 - ((2 * v18) & 0x6A) - 75) ^ 3;
  v24 = *(v23 + (((((LODWORD(STACK[0xC78]) ^ BYTE3(v13) ^ v7) + 92) ^ ((LODWORD(STACK[0xC78]) ^ BYTE3(v13) ^ 0x3D) - 112) ^ ((LODWORD(STACK[0xC78]) ^ BYTE3(v13) ^ 0x58) - 21)) - 70) ^ 0x98));
  v25 = -59 * (((v24 ^ 1) + 95) ^ ((v24 ^ 0xCB) - 107) ^ ((v24 ^ 0xA1) - 1)) - 103;
  v26 = v25 & 0x22 ^ 0xC2;
  *(STACK[0xF10] + 58) = *(STACK[0xF10] + 21) ^ v25 ^ (2 * ((v25 ^ 0x1C) & (2 * ((v25 ^ 0x1C) & (2 * ((v25 ^ 0x1C) & (2 * ((v25 ^ 0x1C) & (2 * ((v25 ^ 0x1C) & (2 * v26) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ 0x22;
  v27 = STACK[0xE90];
  LODWORD(v18) = ((91 - 5 * (((HIDWORD(v12) ^ LODWORD(STACK[0xC70]) ^ 0xFFFFFF8A) + 17) ^ ((HIDWORD(v12) ^ LODWORD(STACK[0xC70]) ^ 0x3C) - 89) ^ ((HIDWORD(v12) ^ LODWORD(STACK[0xC70]) ^ 0xFFFFFFF2) + 105))) ^ 0xFFFFFF82 ^ *(STACK[0xE90] + ((91 - 5 * (((BYTE4(v12) ^ LOBYTE(STACK[0xC70]) ^ 0x8A) + 17) ^ ((BYTE4(v12) ^ LOBYTE(STACK[0xC70]) ^ 0x3C) - 89) ^ ((BYTE4(v12) ^ LOBYTE(STACK[0xC70]) ^ 0xF2) + 105))) ^ 0x26))) + 108;
  LOBYTE(v20) = v18 & 0x77 ^ 0x72;
  *(STACK[0xF10] + 136) = *(STACK[0xF10] + 99) ^ v18 ^ (2 * ((v18 ^ 0x12) & (2 * ((v18 ^ 0x12) & (2 * ((v18 ^ 0x12) & (2 * ((v18 ^ 0x12) & (2 * ((v18 ^ 2) & (2 * ((v18 ^ 2) & (2 * v18) & 0x26 ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ 0x77;
  LODWORD(v18) = 5 * (HIDWORD(v13) ^ LODWORD(STACK[0xC4C]) ^ *(STACK[0xF10] + 114) ^ v8);
  LOBYTE(v14) = -102 - v18;
  LOBYTE(v18) = (v18 - 27) & 0x66 | 0x81;
  v28 = v18 ^ v14 & 0x4A;
  LOBYTE(v14) = v14 ^ (2 * ((v14 ^ 0x66) & (2 * ((v14 ^ 0x66) & (2 * ((v14 ^ 0x66) & (2 * ((v14 ^ 0x66) & (2 * ((v14 ^ 0x66) & (2 * ((v14 ^ 0x66) & (2 * v18) ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28));
  LOBYTE(v14) = v14 ^ *(v27 + (v14 ^ 0xALL));
  LOBYTE(v14) = (((v14 ^ 0x44) - 40) ^ ((v14 ^ 0x9E) + 14) ^ ((v14 ^ 0x74) - 24)) - 18;
  v29 = v14 & 0xC1 ^ 0x1B;
  *(STACK[0xF10] + 86) = v14 ^ (2 * ((v14 ^ 0x52) & (2 * ((v14 ^ 0x52) & (2 * ((v14 ^ 0x52) & (2 * ((v14 ^ 0x52) & (2 * ((v14 ^ 0x52) & (2 * (((2 * v14) & 0x26 ^ 0x12) & (v14 ^ 0x12) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ 0x45;
  *(STACK[0xF10] + 6) = LODWORD(STACK[0xBC8]) ^ *(STACK[0xF10] + 34) ^ BYTE5(v12) ^ 0xDF;
  LOBYTE(v14) = ((*(STACK[0xF10] + 49) ^ 0xEF) + 17) ^ ((*(STACK[0xF10] + 49) ^ 0x36) - 54) ^ ((*(STACK[0xF10] + 49) ^ 0x5D) - 93);
  v30 = v14 - 120;
  LOBYTE(v14) = v14 & 7;
  LOBYTE(v14) = *(STACK[0xEA8] + ((v30 ^ (2 * ((v30 ^ 0x74) & (2 * ((v30 ^ 0x74) & (2 * ((v30 ^ 0x74) & (2 * ((v30 ^ 0x74) & (2 * ((v30 ^ 0x74) & (2 * (((2 * v14) ^ 0x72) & (v30 ^ 0x74) ^ v14 ^ 0x89)) ^ v14 ^ 0x89)) ^ v14 ^ 0x89)) ^ v14 ^ 0x89)) ^ v14 ^ 0x89)) ^ v14 ^ 0x89))) ^ 0x60u));
  v31 = (((v14 ^ 0xD7) + 41) ^ ((v14 ^ 0x20) - 32) ^ ((v14 ^ 0xB1) + 79)) + 52;
  v32 = v31 & 0xD6 ^ 0xBE;
  *(STACK[0xF10] + 40) = BYTE5(v13) ^ LODWORD(STACK[0xAF8]) ^ (-59 * ((8 * v14) & 0x10 ^ v31 ^ (2 * ((v31 ^ 0x78) & (2 * ((v31 ^ 0x78) & (2 * ((v31 ^ 0x78) & (2 * ((v31 ^ 0x78) & (2 * ((v31 ^ 0x78) & (2 * v32) ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ 0x5B)) ^ 0x7C;
  *(STACK[0xF10] + 118) = LODWORD(STACK[0xBA8]) ^ *(STACK[0xF10] + 127) ^ 0x90 ^ BYTE6(v12);
  LOBYTE(v18) = *(STACK[0xEC8] + (((BYTE6(v13) & 0x11) + (BYTE6(v13) & 0xEE ^ 0x7F) + 1) ^ 0xB9));
  LOBYTE(v18) = -51 * (((v18 ^ 0x1C) + 59) ^ ((v18 ^ 0x24) + 3) ^ ((v18 ^ 0xF9) - 32)) + 76;
  LOBYTE(v20) = v18 & 0xF8 ^ 0x8E;
  *(STACK[0xF10] + 77) = LODWORD(STACK[0xB98]) ^ *(STACK[0xF10] + 142) ^ v18 ^ (2 * ((v18 ^ 0x6C) & (2 * ((v18 ^ 0x6C) & (2 * ((v18 ^ 0x6C) & (2 * ((v18 ^ 0x6C) & (2 * ((v18 ^ 0x6C) & (2 * v20) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v11;
  LOBYTE(v20) = -94 - 5 * (((*(STACK[0xF10] + 62) ^ 0xC6) + 58) ^ ((*(STACK[0xF10] + 62) ^ 0x71) - 113) ^ ((*(STACK[0xF10] + 62) ^ 0x33) - 51));
  LOBYTE(v14) = v20 & v10 ^ 0x82;
  LOBYTE(v20) = v20 ^ (2 * ((v20 ^ 0x48) & (2 * ((v20 ^ 0x48) & (2 * ((v20 ^ 0x48) & (2 * ((v20 ^ 0x48) & (2 * ((v20 ^ 0x48) & (2 * v14) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14));
  LOBYTE(v20) = (*(v27 + (v20 ^ 0xE8)) ^ v20 ^ a2) + 101;
  LOBYTE(v14) = v20 & 0xEA ^ 0xA8;
  *(STACK[0xF10] + 155) = LOBYTE(STACK[0xAE8]) ^ v20 ^ HIBYTE(v12) ^ (2 * ((v20 ^ 0x18) & (2 * ((v20 ^ 0x18) & (2 * ((v20 ^ 0x18) & (2 * ((v20 ^ 0x18) & (2 * ((v20 ^ 0x18) & (2 * v14) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ a3;
  v33 = *(STACK[0xED8] + 8 * (a5 ^ 0xF14FBF4F ^ (7215 * (a5 != 693721934))));
  LODWORD(STACK[0xED0]) = 1;
  LODWORD(STACK[0xE38]) = 1;
  LODWORD(STACK[0xE60]) = 1;
  LODWORD(STACK[0xE58]) = 1;
  LODWORD(STACK[0xE30]) = 1;
  LODWORD(STACK[0xE40]) = 1;
  LODWORD(STACK[0xE48]) = 1;
  LODWORD(STACK[0xE50]) = 1;
  LODWORD(STACK[0xE18]) = 1;
  LODWORD(STACK[0xE20]) = 1;
  LODWORD(STACK[0xDD8]) = 1;
  return v33(188);
}

uint64_t sub_10098EBF0@<X0>(int a1@<W8>)
{
  v3 = v1;
  v4 = a1 & 0xF1D6F7FF;
  v5 = (*(v3 + 8 * ((a1 & 0xF1D6F7FF) + 25330)))();
  *v2 = 0;
  return (*(v3 + 8 * v4))(v5, 3973584754, 100, 1946184265, 2348750845, 437035326, 3698710021, 3583013739);
}

uint64_t sub_10098ED74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  *(v7 - 224) = v6 ^ 0xA2A7;
  v8 = *(v5 + 8 * (v6 ^ 0x7C56u));
  STACK[0x410] = a5;
  v9 = v8(1028);
  STACK[0x4B8] = 0;
  LODWORD(STACK[0x48C]) = 0;
  *(v7 - 192) = 0;
  STACK[0x4A0] = 0;
  *(v7 - 248) = 0;
  *(v7 - 176) = 0;
  STACK[0x498] = 0;
  *(v7 - 256) = 0;
  *(v7 - 168) = 0;
  STACK[0x480] = 0;
  *(v7 - 208) = 0;
  *(v7 - 200) = 0;
  *(v7 - 240) = 0;
  *(v7 - 232) = 0;
  *(v7 - 184) = 0;
  STACK[0x4A8] = 0;
  STACK[0x490] = 0;
  STACK[0x478] = 0;
  *(v7 - 160) = 0;
  STACK[0x4B0] = 0;
  v10 = *(v5 + 8 * (((v9 == 0) * (((v6 ^ 0xA2A7) + 1647295698) ^ 0x622FD0D8)) ^ v6));
  *(v7 - 148) = 1644243867;
  return v10();
}

uint64_t sub_10098EE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, uint64_t a45, int a46, int a47, int a48, int a49, int a50, int a51)
{
  LODWORD(STACK[0xD58]) = v51;
  LODWORD(STACK[0xDF8]) = v51 ^ 0x4C4C;
  v53 = STACK[0xAC0];
  v54 = STACK[0xD98];
  v55 = STACK[0x8D0];
  v56 = STACK[0xD40];
  v57 = STACK[0x958];
  v58 = STACK[0xBE0];
  v59 = STACK[0x878];
  v60 = STACK[0xE08];
  v61 = STACK[0x8A8];
  v62 = STACK[0xC88];
  v63 = STACK[0xCF0];
  v64 = STACK[0x880];
  v65 = STACK[0x888];
  v66 = STACK[0x870];
  v67 = STACK[0x898];
  v68 = STACK[0xB10];
  v69 = STACK[0x868];
  v70 = STACK[0xC50];
  v71 = STACK[0xAB8];
  v72 = STACK[0xAB0];
  v73 = STACK[0x890];
  v74 = STACK[0x998];
  v75 = STACK[0xC24];
  STACK[0xA68] = ((LODWORD(STACK[0xDA0]) - STACK[0x8D0]) ^ LODWORD(STACK[0xC24])) + LODWORD(STACK[0xDB0]);
  v76 = LODWORD(STACK[0xCD0]) ^ a44 ^ v58 ^ v57 ^ LODWORD(STACK[0xA80]) ^ LODWORD(STACK[0xCE0]) ^ v53 ^ v54 ^ v55 ^ STACK[0x8D8] ^ STACK[0xC18] ^ STACK[0x928] ^ LODWORD(STACK[0xDD0]) ^ LODWORD(STACK[0xA78]) ^ LODWORD(STACK[0x918]) ^ LODWORD(STACK[0x960]) ^ LODWORD(STACK[0x940]) ^ v74 ^ LODWORD(STACK[0xC78]) ^ LODWORD(STACK[0x7E8]) ^ v56 ^ LODWORD(STACK[0xAF8]) ^ LODWORD(STACK[0xDE8]) ^ LODWORD(STACK[0xC40]) ^ STACK[0xC30] ^ STACK[0x968] ^ LODWORD(STACK[0xA48]) ^ LODWORD(STACK[0xA3C]) ^ LODWORD(STACK[0xC38]) ^ LODWORD(STACK[0xBF0]) ^ LODWORD(STACK[0x930]) ^ LODWORD(STACK[0xD08]) ^ LODWORD(STACK[0xCE8]) ^ LODWORD(STACK[0xB28]) ^ STACK[0x908] ^ STACK[0x988] ^ STACK[0xB18] ^ STACK[0xB20] ^ STACK[0xC28] ^ a48 ^ STACK[0x970] ^ LODWORD(STACK[0x59C]) ^ LODWORD(STACK[0xA60]) ^ LODWORD(STACK[0x610]) ^ LODWORD(STACK[0x5A0]) ^ LODWORD(STACK[0x950]) ^ v75 ^ v71 ^ v68 ^ a46 ^ v66 ^ v59 ^ v61 ^ LODWORD(STACK[0x8E0]) ^ LODWORD(STACK[0x910]) ^ STACK[0x8C0] ^ STACK[0xAE0] ^ LODWORD(STACK[0xAD8]) ^ LODWORD(STACK[0xAE8]) ^ LODWORD(STACK[0xCC0]) ^ a51 ^ LODWORD(STACK[0x598]) ^ v60 ^ STACK[0x8F0] ^ v62 ^ v63 ^ v64;
  v77 = LODWORD(STACK[0xA48]);
  v78 = LODWORD(STACK[0xD50]) ^ LODWORD(STACK[0xC4C]) ^ v65 ^ STACK[0xD30] ^ LODWORD(STACK[0xD28]) ^ LODWORD(STACK[0x8A0]) ^ LODWORD(STACK[0xAD0]) ^ v67 ^ v69;
  v79 = LODWORD(STACK[0x7E8]);
  v80 = STACK[0xD40];
  LODWORD(STACK[0x7D8]) = v76 ^ v78 ^ LODWORD(STACK[0x810]) ^ LODWORD(STACK[0xC80]) ^ LODWORD(STACK[0xD00]) ^ v70 ^ STACK[0x8B8] ^ STACK[0x8C8] ^ v72 ^ STACK[0x900] ^ STACK[0x8F8] ^ LODWORD(STACK[0x978]) ^ STACK[0x938] ^ LODWORD(STACK[0xBE8]) ^ v73 ^ STACK[0x8E8] ^ LODWORD(STACK[0x948]) ^ LODWORD(STACK[0xDA8]) ^ 0x92CBF72C;
  STACK[0xC08] = STACK[0xF28];
  v81 = *(STACK[0xED8] + 8 * SLODWORD(STACK[0xD58]));
  STACK[0x200] = STACK[0xED0] + 93440;
  LODWORD(STACK[0xA98]) = v75;
  STACK[0xDE0] = v52;
  LODWORD(STACK[0xE70]) = v75;
  STACK[0xDA8] = STACK[0xE00];
  return v81(v77, v79, v80);
}

uint64_t sub_10098F51C()
{
  v3 = (v0 + 1832674007) & 0x92C3D21E;
  v4 = v2 == (((v3 ^ 0x6C8B) + 1420) ^ 0xE9D58335);
  return (*(v1 + 8 * (((4 * v4) | (v4 << 6)) ^ v3)))();
}

uint64_t sub_10098F56C(uint64_t a1, int a2, int a3, unsigned int a4, int a5, int a6, void *a7, uint64_t a8)
{
  v15 = ((*(*a7 + (((v11 + a2) & a3 ^ a4) & *v13)) ^ (a1 + v8)) & 0x7FFFFFFF) * a6;
  v16 = (v15 ^ HIWORD(v15)) * a6;
  *(a1 + v8) = *(v14 + (v16 >> 24)) ^ *(v10 + (v16 >> 24)) ^ *((v16 >> 24) + a8 + 3) ^ v16 ^ (BYTE3(v16) * v9);
  return (*(v12 + 8 * (((v8 == 11) * a5) ^ v11)))();
}

uint64_t sub_10098F5EC@<X0>(uint64_t a1@<X7>, unsigned int a2@<W8>)
{
  v5 = *(v2 + 8);
  *(v4 + 1208) = 0;
  STACK[0x5C8] = 0x67D86FBE0157EBAELL;
  return (*(a1 + 8 * ((208 * (((v5 == 0) ^ (a2 - 127 + v3 + 1)) & 1)) ^ a2)))();
}

uint64_t sub_10098F644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = &STACK[0x570] + v9;
  *v13 = a8;
  *(v13 + 1) = 0;
  *(v13 + 4) = 977947492;
  *(v13 + 6) = a8;
  *(v13 + 4) = 0;
  v14 = &STACK[0x570] + v9;
  *(v14 + 10) = a8;
  v15 = &STACK[0x570] + v9;
  *(v15 + 6) = 0;
  STACK[0x560] = (v14 + 40);
  STACK[0x3A8] = (v15 + 48);
  *(v13 + 14) = a8;
  STACK[0x540] = (v13 + 56);
  *(v13 + 8) = 0;
  *(v13 + 18) = a8;
  STACK[0x510] = (v13 + 64);
  STACK[0x458] = (v13 + 72);
  *(v13 + 10) = 0;
  STACK[0x4F8] = (v13 + 80);
  v13[88] = 100;
  *v10 = a8;
  *(v10 + 4) = v12;
  *(v10 + 28) = 0;
  STACK[0x2C8] = v10 + 28;
  *(v10 + 20) = 0xE9D5C71100000000;
  *(v10 + 232) = 0;
  STACK[0x2C0] = v10 + 232;
  *(v10 + 436) = v12;
  *(v10 + 452) = v12;
  *(v10 + 468) = 0;
  strcpy((v10 + 1128), "____________________");
  *(v10 + 1149) = 0;
  *(v10 + 1150) = 0;
  *(v10 + 1152) = 0;
  *(v10 + 1160) = 0;
  return (*(v11 + 8 * v8))();
}

uint64_t sub_10098FD28@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v3 = *(v2 + 864);
  *(v2 + 816) = v3;
  return (*(a1 + 8 * (((v3 == 0) * (a2 - 19666 + a2 + 30341 - 51082)) ^ a2)))();
}

uint64_t sub_10098FDF4()
{
  v34 = vld4q_s8(v3);
  v5 = veorq_s8(v34.val[0], v4);
  v6 = vmovl_u8(*v5.i8);
  v7 = vmovl_u16(*v6.i8);
  v8 = vmovl_high_u16(v6);
  v9 = vmovl_high_u8(v5);
  v10 = vmovl_u16(*v9.i8);
  v11 = vmovl_high_u16(v9);
  v12 = veorq_s8(v34.val[1], v4);
  v13 = vmovl_high_u8(v12);
  v14 = vmovl_u8(*v12.i8);
  v15 = vshll_n_u16(*v14.i8, 8uLL);
  v16 = veorq_s8(v34.val[2], v4);
  _Q21 = vmovl_high_u8(v16);
  _Q20 = vmovl_u8(*v16.i8);
  v19 = vshll_n_s16(*_Q20.i8, 0x10uLL);
  __asm { SHLL2           V20.4S, V20.8H, #0x10 }

  v24 = vshll_n_s16(*_Q21.i8, 0x10uLL);
  __asm { SHLL2           V21.4S, V21.8H, #0x10 }

  v25 = vmovl_high_u8(v34.val[3]);
  v34.val[0] = vmovl_u8(*v34.val[3].i8);
  v34.val[1] = vorrq_s8(vorrq_s8(_Q20, vshlq_n_s32(vmovl_high_u16(v34.val[0]), 0x18uLL)), vorrq_s8(vshll_high_n_u16(v14, 8uLL), v8));
  v14.i64[0] = 0x5F0000005F000000;
  v14.i64[1] = 0x5F0000005F000000;
  v34.val[3] = veorq_s8(vorrq_s8(vorrq_s8(_Q21, vshlq_n_s32(vmovl_high_u16(v25), 0x18uLL)), vorrq_s8(vshll_high_n_u16(v13, 8uLL), v11)), v14);
  v34.val[2] = veorq_s8(vorrq_s8(vorrq_s8(v24, vshlq_n_s32(vmovl_u16(*v25.i8), 0x18uLL)), vorrq_s8(vshll_n_u16(*v13.i8, 8uLL), v10)), v14);
  v34.val[1] = veorq_s8(v34.val[1], v14);
  v34.val[0] = veorq_s8(vorrq_s8(vorrq_s8(v19, vshlq_n_s32(vmovl_u16(*v34.val[0].i8), 0x18uLL)), vorrq_s8(v15, v7)), v14);
  v26 = veorq_s8(vandq_s8(v34.val[3], *&STACK[0x260]), (*&v11 & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
  v27 = veorq_s8(vandq_s8(v34.val[2], *&STACK[0x260]), (*&v10 & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
  v28 = veorq_s8(vandq_s8(v34.val[1], *&STACK[0x260]), (*&v8 & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
  v29 = veorq_s8(vandq_s8(v34.val[0], *&STACK[0x260]), (*&v7 & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
  v30 = vsubq_s32(v34.val[0], vaddq_s32(v29, v29));
  v31 = vsubq_s32(v34.val[1], vaddq_s32(v28, v28));
  v34.val[1] = vaddq_s32(vsubq_s32(v34.val[3], vaddq_s32(v26, v26)), *&STACK[0x280]);
  v34.val[0] = vaddq_s32(vsubq_s32(v34.val[2], vaddq_s32(v27, v27)), *&STACK[0x280]);
  v32 = vaddq_s32(v31, *&STACK[0x280]);
  *v0 = vaddq_s32(v30, *&STACK[0x280]);
  *(v0 + 16) = v32;
  *(v0 + 32) = v34.val[0];
  *(v0 + 48) = v34.val[1];
  return (*(v2 + 8 * v1))();
}

uint64_t sub_100990084(double a1, __n128 a2, uint64_t a3, unsigned int a4)
{
  a2.n128_u16[0] = -14393;
  a2.n128_u8[2] = -57;
  a2.n128_u8[3] = -57;
  a2.n128_u8[4] = -57;
  a2.n128_u8[5] = -57;
  a2.n128_u8[6] = -57;
  a2.n128_u8[7] = -57;
  return (*(v4 + 8 * ((27438 * (a4 > 0x3BCD6C6D)) ^ (a4 + 1541561532))))(xmmword_100F523B0, a2);
}

uint64_t sub_100990268@<X0>(int a1@<W4>, int a2@<W6>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  HIDWORD(a13) = 0;
  v219 = v16 & 0xFFFFFFF5 ^ 0x6DDD838ELL;
  v18 = *(a3 + v219);
  v19 = v16 ^ 0x6DDD8386;
  *(v17 - 128) = v19;
  LODWORD(v208) = 469 * (v14 ^ 0x177B);
  v20 = *(a10 + ((v208 ^ v18) ^ 0x30u));
  v21 = (*(a9 + (*(a3 + v19) ^ 0xCELL)) ^ 0x4A) << (v14 ^ 0x3C);
  v22 = v16 & 0xFFFFFFF0 ^ 0x6DDD838FLL;
  v23 = v16 & 0xFFFFFFF3 ^ 0x6DDD838ELL;
  *(v17 - 152) = v22;
  *(v17 - 144) = v23;
  v218 = v16 & 0xFFFFFFFC ^ 0x6DDD8387;
  v24 = *(a3 + v218);
  LOWORD(v22) = *(a11 + (*(a3 + v22) ^ 0x84)) - 116;
  v25 = *(a9 + (*(a3 + v23) ^ 0x2CLL));
  v26 = v16 & 0xFFFFFFF8 ^ 0x6DDD8387;
  *(v17 - 160) = v26;
  v217 = v16 & 0xFFFFFFFD ^ 0x6DDD8386;
  LODWORD(v24) = (~(*(a11 + (v24 ^ 0xCC)) - 116) | 0xFFFFFF00) & (v21 ^ 0x817EA5A2) | (*(a11 + (v24 ^ 0xCC)) - 116) & 0x5D;
  v216 = v16 & 0xFFFFFFF4 ^ 0x6DDD838FLL;
  v27 = (~v22 | 0xFFFFFE00) & ((v25 << 24) ^ 0xDE10C27F);
  v28 = v22 & 0x80 | v27;
  v29 = *(a11 + (*(a3 + v26) ^ 0xB4)) - 116;
  LODWORD(v22) = *(a10 + (*(a3 + v217) ^ 0x99));
  v30 = *(a11 + (*(a3 + v216) ^ 0x72)) - 116;
  v31 = v16 & 0xFFFFFFFA ^ 0x6DDD8387;
  *(v17 - 136) = v31;
  v32 = (~v30 | 0xFFFFFF00) & ((v20 << 8) ^ 0xD5BE1B9D);
  v33 = ((v22 << 8) ^ 0x12A8EED5) & (v24 ^ 0x4AC75A7F);
  v211 = v16 & 0xFFFFFFFB ^ 0x6DDD8386;
  v34 = ((*(a8 + (*(a3 + v31) ^ 0x3CLL)) << 16) ^ 0x320EAD39) & (v29 ^ 0xBFFFBFB9) | v29 & 0xC6;
  v214 = v16 & 0xFFFFFFF6 ^ 0x6DDD838FLL;
  v212 = v16 & 0xFFFFFFFE ^ 0x6DDD8387;
  v35 = *(a3 + v212);
  LODWORD(v22) = (((*(a9 + (*(a3 + v211) ^ 0x87)) ^ 0x61) << 24) ^ 0xA8A699AD) & (v34 ^ 0xCD1A70C4) ^ v34 & 0x30590452;
  v36 = ((*(a8 + (*(a3 + v214) ^ 0x44)) << 16) ^ 0x95C18A63) & ((v32 | v30 & 0x62) ^ 0x6A419AFA);
  v37 = ((*(a8 + (v35 ^ 0x41)) >> 6) | (4 * *(a8 + (v35 ^ 0x41)))) ^ 0x67;
  v38 = ((v37 >> 2) | (v37 << 6)) << 16;
  v39 = (v38 ^ 0xFFC4FFFF) & (v24 & 0xED10202A ^ 0x2D4C02AD ^ v33);
  v215 = v16 & 0xFFFFFFF2 ^ 0x6DDD838FLL;
  v213 = v16 & 0xFFFFFFF7 ^ 0x6DDD838ELL;
  v40 = (*(a9 + (*(a3 + v213) ^ 0xECLL)) ^ 0xCCCCCCCC) << 24;
  v210 = v16 & 0xFFFFFFF9 ^ 0x6DDD8386;
  v41 = v38 & 0xB0000 ^ a1 ^ v39;
  v209 = v16 & 0xFFFFFFF1 ^ 0x6DDD838ELL;
  LODWORD(v22) = v22 & 0x5E108CAB ^ v15 ^ ((*(a10 + (*(a3 + v210) ^ 0xEDLL)) << 8) ^ 0xA1EF1454) & (v22 ^ 0x835162CB);
  v42 = v40 & 0x9A000000 ^ a2 ^ (v40 ^ 0x50FFFFFF) & (v32 & 0x80759C ^ 0xF05BA72D ^ v36);
  v43 = (*(a10 + (*(a3 + v209) ^ 0x35)) << 8) & 0x7E00 ^ v13 ^ ((*(a10 + (*(a3 + v209) ^ 0x35)) << 8) | 0xFFFF00FF) & ((((*(a8 + ((*(a3 + v215) - ((2 * *(a3 + v215)) & 0xF6u) + 123) ^ 0x4FLL)) << 16) ^ 0xFC3EE781) & (v28 ^ 0x4EEF2DCC) | v27 & 0x300007E) ^ 0x60BF662C);
  v44 = *(&off_1010A0B50 + v14 - 5645) - 1244743055;
  v45 = *&v44[4 * ((v13 ^ ((v28 ^ 0xCC) & 0x81 | v27 & 0x7E) ^ 0x2C) ^ 0x34)] + 994610138;
  v46 = *(&off_1010A0B50 + v14 - 4783) - 1501040451;
  v47 = *(&off_1010A0B50 + v14 - 5922) - 1523618638;
  v48 = *(&off_1010A0B50 + v14 - 1789) - 2037480959;
  v49 = ((HIBYTE(v41) ^ 0xB) + 651680978) ^ *&v46[4 * BYTE2(v22)] ^ (*&v47[4 * (BYTE1(v42) ^ 0x58)] + 1317586701) ^ *&v48[4 * (HIBYTE(v41) ^ 0xFA)] ^ v45 ^ (((v45 & 0xA0FC3E30 ^ 0x1CCCBCA0 ^ (v45 >> 4) & 0xFC3E30) & ~((v45 >> 4) & 0xF03C1C8 ^ v45 & 0x5F03C1C8) | ((v45 >> 4) & 0xF03C1C8 ^ v45 & 0x5F03C1C8) & 0x43034148) >> 3);
  v50 = *&v47[4 * (((v43 ^ 0xB58FB5F3) >> (v35 & 8) >> (v35 & 8 ^ 8)) ^ 0x55)] + 1317586701;
  LODWORD(v35) = *&v44[4 * (v41 ^ 0x6B)] + 994610138;
  v51 = v50 ^ (((v22 ^ 0xA95DA224) >> 24) + 651680978) ^ *&v48[4 * (((v22 ^ 0xA95DA224) >> 24) ^ 0xF1)] ^ *&v46[4 * (BYTE2(v42) ^ 0x33)] ^ v35;
  LODWORD(v24) = 36 * ((v43 ^ 0xB58FB5F3) / 0x24000000) + (((v43 ^ 0xB58FB5F3) >> 24) - 36 * ((57 * ((v43 ^ 0xB58FB5F3) >> 24)) >> 11));
  v52 = *&v44[4 * (v22 ^ 0x24)] + 994610138;
  v53 = *&v46[4 * (BYTE2(v43) ^ 0xD2)] ^ ((HIBYTE(v42) ^ 0xA7) + 651680978) ^ *&v48[4 * (HIBYTE(v42) ^ 0x56)] ^ v52 ^ (v52 >> 3) ^ (v52 >> 7) ^ (*&v47[4 * (BYTE1(v41) ^ 6)] + 1317586701);
  LODWORD(v22) = (v24 + 651680978) ^ *&v46[4 * (BYTE2(v41) ^ 0x31)] ^ (*&v47[4 * (BYTE1(v22) ^ 0xF7)] + 1317586701);
  v54 = v51 ^ (v35 >> 3);
  v55 = v54 ^ (v35 >> 7);
  v56 = *&v44[4 * (v42 ^ 0xB3) + 800 + 4 * ((2 * v42) & 0x18E ^ 0xFFFFFEF9)] + 994610138;
  v57 = *&v48[4 * (v24 ^ 0xF1)] ^ v22 ^ v56 ^ (v56 >> 3) ^ (v56 >> 7);
  LODWORD(v24) = ((v54 >> 23) & 0x1A4 ^ 0x24) + (HIBYTE(v55) ^ 0x26D7DCE5);
  v58 = *&v44[4 * (v57 ^ 0x15)] + 994610138;
  v59 = *&v48[4 * (HIBYTE(v49) ^ 0x8A)] ^ ((HIBYTE(v49) ^ 0x7B) + 651680978) ^ *&v46[4 * (BYTE2(v55) ^ 0x12)] ^ (*&v47[4 * (BYTE1(v53) ^ 0xF7)] + 1317586701) ^ v58 ^ (v58 >> 3) ^ (v58 >> 7);
  v60 = *&v44[4 * (v49 ^ 0xE6)] + 994610138;
  v61 = *&v46[4 * (BYTE2(v53) ^ 0xA9)] ^ v24 ^ *&v48[4 * (HIBYTE(v55) ^ 0xC6)] ^ v60 ^ (*&v47[4 * BYTE1(v57)] + 1317586701) ^ (v60 >> 3) ^ (v60 >> 7);
  v62 = *&v44[4 * (v55 ^ 0xD9)] + 994610138;
  v63 = *&v48[4 * (HIBYTE(v53) ^ 0x23)] ^ ((HIBYTE(v53) ^ 0xD2) + 651680978) ^ (*&v47[4 * (BYTE1(v49) ^ 0xDC)] + 1317586701) ^ v62 ^ *&v46[4 * (BYTE2(v57) ^ 8)] ^ (v62 >> 3) ^ (v62 >> 7);
  LODWORD(v24) = *&v47[4 * (BYTE1(v55) ^ 0x3C)] + 1317586701;
  v64 = *&v44[4 * (v53 ^ 0x95)] + 994610138;
  LODWORD(v24) = ((HIBYTE(v57) ^ 0x88) + 651680978) ^ *&v46[4 * (BYTE2(v49) ^ 0x2A)] ^ v24;
  v65 = v59 ^ 0xE6423985;
  v66 = *&v48[4 * (HIBYTE(v57) ^ 0x79)] ^ v24 ^ v64 ^ (v64 >> 3) ^ (v64 >> 7);
  v67 = *&v44[4 * (v66 ^ 0xC2)] + 994610138;
  v68 = *&v48[4 * (HIBYTE(v65) ^ 0xF1)] ^ (HIBYTE(v65) + 651680978) ^ *&v46[4 * (BYTE2(v61) ^ 0xE0)] ^ (*&v47[4 * (BYTE1(v63) ^ 0xA7)] + 1317586701) ^ v67 ^ (v67 >> 3) ^ (v67 >> 7);
  v69 = *&v48[4 * (HIBYTE(v61) ^ 0xAF)] ^ ((HIBYTE(v61) ^ 0x5E) - ((2 * (HIBYTE(v61) ^ 0x5E) + 1303361956) & 0x48A800F6) + 190054221);
  v70 = *&v46[4 * (BYTE2(v63) ^ 0xF9)] ^ 0xCC9B207A;
  v71 = *(v17 - 116) < 0xE504EAAE;
  HIDWORD(v208) = v71;
  v72 = v69 & 8;
  if ((v69 & 8 & v70) != 0)
  {
    v72 = -v72;
  }

  v73 = v72 + v70;
  v74 = *&v44[4 * (v59 ^ 0x85)] + 994610138;
  v75 = (*&v47[4 * (BYTE1(v66) ^ 0x4F)] + 1317586701) ^ v69 & 0xFFFFFFF7 ^ v74 ^ (v74 >> 3) ^ (v74 >> 7) ^ v73;
  v76 = v61 & 0x76 ^ 4;
  v77 = v76 - (v61 & 0x76 ^ 0x42);
  if ((v77 & 0x8000) != 0)
  {
    v78 = -32768;
  }

  else
  {
    v78 = 0x8000;
  }

  v79 = *&v44[4 * (v76 | v61 & 0x89) + 4 * ((v78 + v77) ^ 0xFFFF7FFC)] + 994610138;
  v80 = *&v46[4 * (BYTE2(v66) ^ 0x41)] ^ ((HIBYTE(v63) ^ 3) + 651680978) ^ *&v48[4 * (HIBYTE(v63) ^ 0xF2)] ^ (*&v47[4 * (BYTE1(v59) ^ 0x6C)] + 1317586701) ^ v79 ^ (v79 >> 3) ^ (v79 >> 7);
  v81 = *&v46[4 * BYTE2(v65)] ^ ((HIBYTE(v66) ^ 4) + 651680978) ^ *&v48[4 * (HIBYTE(v66) ^ 0xF5)] ^ (*&v47[4 * (BYTE1(v61) ^ 0xB8)] + 1317586701);
  v82 = *&v44[4 * (v63 ^ 0xC9)] + 994610138;
  if ((v68 & 0x80) != 0)
  {
    v83 = -128;
  }

  else
  {
    v83 = 128;
  }

  v84 = v81 ^ v82 ^ (v82 >> 7) ^ (v82 >> 3);
  v85 = (v83 + (v68 ^ 0x28E70201)) ^ 0x32035F9B;
  v86 = *&v44[4 * (v84 ^ 0x4D)] + 994610138;
  v87 = *&v46[4 * (BYTE2(v75) ^ 0x53)] ^ (HIBYTE(v85) + 651680978) ^ v86 ^ *&v48[4 * (HIBYTE(v85) ^ 0xF1)] ^ (*&v47[4 * (BYTE1(v80) ^ 0x42)] + 1317586701) ^ (v86 >> 3) ^ (v86 >> 7);
  v88 = ((HIBYTE(v80) ^ 0x47) + 651680978) ^ *&v46[4 * (((v84 ^ 0xCC51B08A) >> (v81 & 0x10) >> (v81 & 0x10 ^ 0x10)) ^ 0x5D)] ^ *&v48[4 * (HIBYTE(v80) ^ 0xB6)] ^ 0x28E70201;
  v89 = *&v47[4 * BYTE1(v85)] + 1317586701;
  v90 = *&v44[4 * (v75 ^ 0x47)];
  v91 = v88 + v89 - 2 * (v88 & v89);
  v92 = ((2 * (v90 ^ 0x92751D4A)) ^ 0x57BFD628) & (v90 ^ 0x92751D4A) ^ (2 * (v90 ^ 0x92751D4A)) & 0x2BDFEB14;
  v93 = 2 * (v90 & 0xB9AAF65E);
  v94 = (v92 ^ 0x39FC200) & (4 * (v93 & (v90 ^ 0xB120F55E) ^ v90 & 0xB9AAF65E)) ^ v93 & (v90 ^ 0xB120F55E) ^ v90 & 0xB9AAF65E;
  v95 = ((4 * (v92 ^ 0x28402914)) ^ 0xAF7FAC50) & (v92 ^ 0x28402914) ^ (4 * (v92 ^ 0x28402914)) & 0x2BDFEB10;
  v96 = v94 ^ 0x2BDFEB14 ^ (v95 ^ 0x2B5FA800) & (16 * v94);
  v97 = (16 * (v95 ^ 0x804304)) & 0x2BDFEB00 ^ 0x2014A14 ^ ((16 * (v95 ^ 0x804304)) ^ 0xBDFEB140) & (v95 ^ 0x804304);
  v98 = (v96 << 8) & 0x2BDFEB00 ^ v96 ^ ((v96 << 8) ^ 0xDFEB1400) & v97;
  v99 = (v98 << 16) & 0x2BDF0000 ^ v98 ^ ((v98 << 16) ^ 0x6B140000) & ((v97 << 8) & 0x2BDF0000 ^ 0x20140000 ^ ((v97 << 8) ^ 0x5FEB0000) & v97);
  v100 = ((2 * (v90 ^ 0xDB9EAE19)) ^ 0xC468B08E) & (v90 ^ 0xDB9EAE19) ^ (2 * (v90 ^ 0xDB9EAE19)) & 0x62345846;
  v101 = v100 & (4 * (v93 & (v90 ^ 0xB98AE61D) ^ v90 & 0xB9AAF65E)) ^ v93 & (v90 ^ 0xB98AE61D) ^ v90 & 0xB9AAF65E;
  v102 = ((4 * (v100 ^ 0x22144841)) ^ 0x88D1611C) & (v100 ^ 0x22144841) ^ (4 * (v100 ^ 0x22144841)) & 0x62345844;
  v103 = v101 ^ 0x62345847 ^ (v102 ^ 0x104000) & (16 * v101);
  v104 = (16 * (v102 ^ 0x62241843)) & 0x62345840 ^ 0x40305807 ^ ((16 * (v102 ^ 0x62241843)) ^ 0x23458470) & (v102 ^ 0x62241843);
  v105 = ((v103 << 8) ^ 0x34584700) & v104 ^ v103 ^ ((v103 << 8) & 0x62345800 | 0x46);
  v106 = ((v104 << 8) ^ 0x34584700) & v104 ^ ((v104 << 8) & 0x62345000 | 0x46);
  v107 = (((4 * (v106 & 0x2159C646 ^ v105 ^ ((v105 << 16) ^ 0xB958C6F6) & (v106 ^ 0x2240000) ^ ((v105 << 16) ^ 0xB958C6F6) & 0x44006)) ^ (2 * v90)) & 0x33B2AF8 ^ 0x30008A0) + (v90 ^ (2 * v99) ^ 0x2E36B50A);
  v108 = v107 ^ v91 ^ (v107 >> 3) ^ (v107 >> 7);
  v109 = *&v44[4 * v85] + 994610138;
  v110 = ((HIBYTE(v75) ^ 0xE3) + 651680978) ^ *&v48[4 * (HIBYTE(v75) ^ 0x12)] ^ (*&v47[4 * (BYTE1(v84) ^ 0xE5)] + 1317586701) ^ *&v46[4 * (BYTE2(v80) ^ 0xFD)] ^ v109 ^ (v109 >> 3) ^ (v109 >> 7);
  v111 = *&v48[4 * (HIBYTE(v84) ^ 0x3D)] ^ ((HIBYTE(v84) ^ 0xCC) + 651680978) ^ *&v46[4 * BYTE2(v85)];
  v112 = *&v44[4 * (v80 ^ 0x91)] + 994610138;
  v113 = v111 ^ v112 ^ (*&v47[4 * (-((v75 >> 8) & 0x55 ^ 0x50) ^ (((v75 >> 8) & 0xAA ^ 0x5F) - ((v75 >> 8) & 0x55 ^ 0x50 ^ (v75 >> 8) & 0xAA ^ 0x5F)) ^ (((v75 >> 8) & 0x55 ^ 0x50) - ((v75 >> 7) & 8) + 1896810030) ^ 0x710F062E) + 4 * ((v75 >> 8) & 0xAA ^ 0x5F)] + 1317586701) ^ (v112 >> 3) ^ (v112 >> 7);
  v114 = *&v44[4 * ((v111 ^ v112 ^ (v47[4 * (-((v75 >> 8) & 0x55 ^ 0x50) ^ (((v75 >> 8) & 0xAA ^ 0x5F) - ((v75 >> 8) & 0x55 ^ 0x50 ^ (v75 >> 8) & 0xAA ^ 0x5F)) ^ (((v75 >> 8) & 0x55 ^ 0x50) - ((v75 >> 7) & 8) + 1896810030) ^ 0x710F062E) + 4 * ((v75 >> 8) & 0xAA ^ 0x5F)] + 13) ^ (v112 >> 3) ^ (v112 >> 7)) ^ 0xC9)] + 994610138;
  v115 = ((HIBYTE(v87) ^ 0x1D) + 651680978) ^ *&v48[4 * (HIBYTE(v87) ^ 0xEC)] ^ *&v46[4 * ((v110 ^ 0x595D5415u) >> 16)] ^ v114 ^ (*&v47[4 * (BYTE1(v108) ^ 0xFC)] + 1317586701) ^ (v114 >> 3) ^ (v114 >> 7);
  v108 ^= 0xB9F7A99B;
  v116 = *&v44[4 * (v87 ^ 0x4D)] + 994610138;
  v117 = *&v48[4 * ((((v110 ^ 0x595D5415u) >> 24) - (((v110 ^ 0x595D5415u) >> 24) ^ 0xF1)) ^ 0xFFFFFFFE) + 4 * ((v110 ^ 0x595D5415u) >> 24)] ^ (((v110 ^ 0x595D5415u) >> 24) + 651680978) ^ (*&v47[4 * (BYTE1(v113) ^ 0xF3)] + 1317586701) ^ v116 ^ *&v46[4 * BYTE2(v108)] ^ (v116 >> 3) ^ (v116 >> 7);
  HIDWORD(v118) = (v87 >> 23) & 1 | 0x1A55B28;
  LODWORD(v118) = (v87 << 9) ^ 0xA0000000;
  v119 = *&v44[4 * (v110 ^ 0x15)] + 994610138;
  v120 = *&v48[4 * (HIBYTE(v108) ^ 0xF1)] ^ *&v46[4 * (BYTE2(v113) ^ 0xAC)] ^ (*&v47[4 * (BYTE1(v87) ^ 0xB1)] + 1317586701) ^ v119 ^ (v119 >> 3) ^ (v119 >> 7) ^ (HIBYTE(v108) + 651680978);
  v121 = *&v46[4 * ((v118 >> 25) ^ 0xD2AD9409)] ^ (*&v47[4 * ((v110 ^ 0x5415) >> 8)] + 1317586701);
  v122 = *&v44[4 * v108] + 994610138;
  HIDWORD(v118) = v115 ^ 0x2F00A9D1;
  LODWORD(v118) = v115 ^ 0x2F00A9D1;
  v123 = v118 >> 8;
  v124 = *&v48[4 * (HIBYTE(v113) ^ 0x23)] ^ ((HIBYTE(v113) ^ 0xD2) + 651680978) ^ v121 ^ v122 ^ (v122 >> 3) ^ (v122 >> 7);
  v125 = ((v123 << 8) ^ 0xADA89A00) + (HIBYTE(v123) ^ 0x5030424B) + ((2 * (((v123 << 8) ^ 0x200073) & (HIBYTE(v123) ^ 0x5030424B) ^ HIBYTE(v123) & 0x73)) ^ 0xFFFFFB79) + 1;
  v126 = *&v44[4 * ((v48[4 * (HIBYTE(v113) ^ 0x23)] ^ ((HIBYTE(v113) ^ 0xD2) - 46) ^ v121 ^ v122 ^ (v122 >> 3) ^ (v122 >> 7)) ^ 5)] + 994610138;
  v127 = *&v46[4 * (BYTE2(v117) ^ 0x28)] ^ (HIBYTE(v125) + 651680978) ^ v126 ^ (*&v47[4 * (BYTE1(v120) ^ 0x8E)] + 1317586701) ^ *&v48[4 * (HIBYTE(v125) ^ 0xF1)] ^ (v126 >> 3) ^ (v126 >> 7);
  v128 = *&v44[4 * (HIBYTE(v123) ^ 0x8C)] + 994610138;
  v129 = *&v46[4 * (BYTE2(v120) ^ 0x88)] ^ ((HIBYTE(v117) ^ 4) + 651680978) ^ *&v48[4 * (HIBYTE(v117) ^ 0xF5)] ^ (*&v47[4 * (BYTE1(v124) ^ 0x95)] + 1317586701) ^ v128 ^ (v128 >> 3) ^ (v128 >> 7);
  v130 = *&v44[4 * (v117 ^ 0x56)] + 994610138;
  v131 = *&v46[4 * (HIWORD(v124) & 0xBF ^ 0x89 ^ (HIWORD(v124) & 0x40 | 0x1D))] ^ *&v48[4 * (HIBYTE(v120) ^ 0xEB)] ^ v130 ^ (*&v47[4 * (BYTE1(v125) ^ 0x55)] + 1317586701) ^ (v130 >> 3) ^ (v130 >> 7) ^ (((v120 >> 23) & 0x1A4 ^ 0x24) + (HIBYTE(v120) ^ 0x26D7DCC8));
  v132 = ((HIBYTE(v124) ^ 0x47) + 651680978) ^ *&v48[4 * (HIBYTE(v124) ^ 0xB6)] ^ (*&v47[4 * (BYTE1(v117) ^ 0x98)] + 1317586701);
  v133 = *&v44[4 * (v120 ^ 0xD2)] + 994610138;
  LOBYTE(v125) = v131 ^ 0x69;
  LODWORD(v118) = __ROR4__(v132 ^ __ROR4__(__ROR4__(*&v46[4 * (BYTE2(v125) ^ 0x5D)], 29) ^ 0x56DA698A, 3) ^ v133 ^ (v133 >> 3) ^ (v133 >> 7) ^ 0xE8C63F5, 26) ^ 0x19FEB63D;
  HIDWORD(v118) = v118;
  v134 = v118 >> 6;
  v135 = *&v44[4 * (v134 ^ 0x6E)] + 994610138;
  v136 = *&v46[4 * (BYTE2(v129) ^ 0xAA)] ^ ((HIBYTE(v127) ^ 0x90) + 651680978) ^ *&v48[4 * (HIBYTE(v127) ^ 0x61)] ^ v135 ^ (v135 >> 3) ^ (v135 >> 7) ^ (*&v47[4 * ((((v131 ^ 0x8ECF9769) >> 8) & 0x20 | 0x55) ^ ((v131 ^ 0x8ECF9769) >> 8) & 0xDF)] + 1317586701);
  v137 = *&v44[4 * (v127 ^ 0xED)] + 994610138;
  v138 = *&v48[4 * (HIBYTE(v129) ^ 0xEA)] ^ ((HIBYTE(v129) ^ 0x1B) + 651680978) ^ *&v46[4 * (BYTE2(v131) ^ 0x92)] ^ v137 ^ (*&v47[4 * (BYTE1(v134) ^ 0x6B)] + 1317586701) ^ (v137 >> 3) ^ (v137 >> 7);
  v139 = *&v44[4 * (v129 ^ 0xA5)] + 994610138;
  HIDWORD(v118) = v139;
  LODWORD(v118) = v139;
  LODWORD(v118) = (v118 >> 27) & 0xFFFFF01F ^ __ROR4__(v139, 23) ^ 0x1520818F;
  HIDWORD(v118) = v118;
  v140 = *&v48[4 * (((v131 ^ 0x8ECF9769) >> 24) ^ 0xF1)] ^ (*&v47[4 * (BYTE1(v127) ^ 0xD4)] + 1317586701) ^ (((v131 ^ 0x8ECF9769) >> 24) + 651680978) ^ v139 ^ *&v46[4 * ((v134 ^ 0xF6863E6E) >> 16)] ^ ((v118 >> 9) >> 3);
  v141 = *&v44[4 * v125] + 994610138;
  v142 = ((((v134 ^ 0xF6863E6E) >> 23) & 0x1A4) + (((v134 ^ 0xF6863E6E) >> 24) ^ 0x26D7DCD2)) ^ *&v46[4 * (BYTE2(v127) ^ 0x32)] ^ (*&v47[4 * (BYTE1(v129) ^ 0xA4)] + 1317586701) ^ v141 ^ *&v48[4 * (((v134 ^ 0xF6863E6E) >> 24) ^ 0xF1)] ^ (v141 >> 3) ^ (v141 >> 7);
  v143 = *&v44[4 * (((v142 & 0xF1 ^ 0xDEF6D544) & (v142 & 0xE ^ 0xFFF7F7FF) | v142 & 0xA) ^ 0xDEF6D59B)] + 994610138;
  v144 = *&v48[4 * (((v136 ^ 0x1B511B7Fu) >> 24) ^ 0xF1)] ^ (((v136 ^ 0x1B511B7Fu) >> 24) + 651680978) ^ *&v46[4 * (BYTE2(v138) ^ 0x16)] ^ (*&v47[4 * (BYTE1(v140) ^ 0x7A)] + 1317586701) ^ v143 ^ (v143 >> 3) ^ (v143 >> 7);
  v145 = *&v44[4 * (v136 ^ 0x7F)] + 994610138;
  v146 = *&v48[4 * (HIBYTE(v138) ^ 0x7E)] ^ ((HIBYTE(v138) ^ 0x8F) + 651680978) ^ *&v46[4 * (BYTE2(v140) ^ 0xC5)] ^ (*&v47[4 * (BYTE1(v142) ^ 0x7F)] + 1317586701) ^ v145 ^ (v145 >> 3) ^ (v145 >> 7);
  v140 ^= 0x96982F7C;
  v147 = *&v44[4 * (v138 ^ 0xC4)] + 994610138;
  v148 = *&v46[4 * (BYTE2(v142) ^ 0x32)] ^ *&v48[4 * (HIBYTE(v140) ^ 0xF1)] ^ (HIBYTE(v140) + 651680978) ^ v147 ^ (*&v47[4 * (BYTE1(v136) ^ 0x4E)] + 1317586701) ^ (v147 >> 3) ^ (v147 >> 7);
  v149 = *&v46[4 * (BYTE2(v136) ^ 0xC)] ^ ((HIBYTE(v142) ^ 0x47) + 651680978) ^ *&v48[4 * (HIBYTE(v142) ^ 0xB6)];
  v150 = *&v44[4 * (v140 ^ 0xC7)] + 994610138;
  v151 = v149 ^ (*&v47[4 * (BYTE1(v138) ^ 2)] + 1317586701) ^ v150 ^ (v150 >> 3) ^ (v150 >> 7);
  v152 = *&v44[4 * (v151 ^ 0x79)] + 994610138;
  v153 = *&v48[4 * (HIBYTE(v144) ^ 0x25)] ^ ((HIBYTE(v144) ^ 0xD4) + 651680978) ^ *&v46[4 * (BYTE2(v146) ^ 0x29)] ^ (*&v47[4 * (BYTE1(v148) ^ 0x33)] + 1317586701) ^ v152 ^ (v152 >> 3) ^ (v152 >> 7);
  v154 = *&v44[4 * (v144 ^ 0xCF)] + 994610138;
  v155 = *&v46[4 * (BYTE2(v148) ^ 0xAD)] ^ ((HIBYTE(v146) ^ 0xD4) + 651680978) ^ *&v48[4 * (HIBYTE(v146) ^ 0x25)] ^ v154 ^ (v154 >> 3) ^ (v154 >> 7) ^ (*&v47[4 * (BYTE1(v151) ^ 0xA4)] + 1317586701);
  v156 = *&v44[4 * (v146 ^ 0x15)] + 994610138;
  v157 = *&v48[4 * (HIBYTE(v148) ^ 0x24)] ^ ((HIBYTE(v148) ^ 0xD5) + 651680978) ^ *&v46[4 * (BYTE2(v151) ^ 0x2F)] ^ v156 ^ (*&v47[4 * (BYTE1(v144) ^ 0x19)] + 1317586701) ^ (v156 >> 3) ^ (v156 >> 7);
  v158 = *&v46[4 * (BYTE2(v144) ^ 0x8F)];
  v159 = *&v44[4 * (v148 ^ 0xB8)] + 994610138;
  v160 = HIBYTE(v153);
  v161 = *&v48[4 * (HIBYTE(v151) ^ 0xEC)] ^ ((HIBYTE(v151) ^ 0x1D) + 651680978) ^ (*&v47[4 * (BYTE1(v146) ^ 0xF3)] + 1317586701) ^ v158 ^ v159 ^ (v159 >> 3) ^ (v159 >> 7);
  v162 = *(&off_1010A0B50 + v14 - 4222) - 912983946;
  v163 = *(&off_1010A0B50 + (v14 ^ 0x1221)) - 1797966387;
  v164 = *(&off_1010A0B50 + v14 - 3454) - 349105290;
  v165 = *(&off_1010A0B50 + (v14 ^ 0x609)) - 2130328779;
  v166 = (*&v165[4 * (BYTE2(v155) ^ 0x9F)] - 747654940) ^ *&v162[4 * (HIBYTE(v153) ^ 0x7C)] ^ *&v164[4 * (v161 ^ 0x8C)] ^ (*&v163[4 * (BYTE1(v157) ^ 0xE0)] - 1228701806 + ((v157 >> 8) & 0x53 ^ 0xB67FDEF2 ^ (((v157 >> 8) & 0xAC ^ 0x9672CE8A ^ ((BYTE1(v157) ^ 0x78) + 2014162982) & 0x1000A0AC) & (((BYTE1(v157) ^ 0x78) + 2014162982) & 0x153 ^ 0x9672EFFE) | ((BYTE1(v157) ^ 0x78) + 2014162982) & 0x48000151)));
  v167 = HIBYTE(v157);
  v168 = (*&v165[4 * (BYTE2(v157) ^ 0x82)] - 747654940) ^ *&v162[4 * (HIBYTE(v155) ^ 0x27)] ^ *&v164[4 * (v153 ^ 0x46)] ^ (((((v161 ^ 0x348C) >> 8) + 2014162982) ^ ((v161 ^ 0x348C) >> 8)) - 1228701806 + *&v163[4 * (((v161 ^ 0x348C) >> 8) ^ 0x98)]);
  v169 = (*&v165[4 * (BYTE2(v161) ^ 0x1D)] - 747654940) ^ *&v162[4 * (HIBYTE(v157) ^ 0x7D)] ^ *&v164[4 * (v155 ^ 0x4D)] ^ ((((BYTE1(v153) ^ 0xB8) + 2014162982) ^ BYTE1(v153) ^ 0xB8) - 1228701806 + *&v163[4 * (BYTE1(v153) ^ 0x20)]);
  v170 = (v161 ^ 0x29F4348Cu) >> 24;
  v171 = (*&v165[4 * (BYTE2(v153) ^ 6)] - 747654940) ^ *&v162[4 * (v170 ^ 0xC6)];
  v172 = (((BYTE1(v155) ^ 0xA3) + 2014162982) ^ BYTE1(v155) ^ 0xA3) - 1228701806 + *&v163[4 * (BYTE1(v155) ^ 0x3B)];
  v173 = v168 ^ HIBYTE(v155);
  v174 = v171 ^ *&v164[4 * (v157 ^ 0xEB)] ^ v172;
  if ((v168 & 0x200) != 0)
  {
    v175 = 512;
  }

  else
  {
    v175 = -512;
  }

  v176 = (v173 & 0x5295CAF3 ^ 0x4285CA01) + v175 - ((2 * ((v173 & 0x5295CAF3 ^ 0x4285CA01) + v175)) & 0x8C790C62) - 969112011;
  v177 = v176 ^ v173 & 0xAD6A350C;
  v178 = (v177 ^ 0x39C37FC2) & 0xFFFFFEFF;
  v179 = v178 + (-(v177 ^ 0x39C37FC2) ^ (256 - (v177 ^ 0x39C37EC2)) ^ 0x538563BF ^ ((v177 ^ 0x39C37FC2) - 2 * ((v177 ^ 0x39C37FC2) & 0x2C7A9C60 ^ v176 & 0x20) - 1401250752));
  if (((v179 + 1) & 0x8BD0D42E) != 0)
  {
    v180 = ~v179;
  }

  else
  {
    v180 = v179 + 1;
  }

  v181 = (v180 - 1949248466) ^ v178;
  v182 = *(&off_1010A0B50 + (v14 ^ 0x1D97)) - 411647763;
  v183 = v182[HIBYTE(v181) ^ 0xB6];
  *(a3 + v211) = v183 ^ (2 * v183) & 0xD8 ^ 0x7C;
  v184 = *(&off_1010A0B50 + (v14 ^ 0x15F0)) - 238539242;
  *(a3 + v209) = v184[BYTE1(v174) ^ 0x25] ^ (16 * v184[BYTE1(v174) ^ 0x25]) ^ 0xF5;
  *(a3 + v219) = v184[BYTE1(v169) ^ 0x7ELL] ^ (16 * v184[BYTE1(v169) ^ 0x7ELL]) ^ 0x16;
  v185 = *(&off_1010A0B50 + (v14 ^ 0x1E11)) - 1145103491;
  v186 = v185[(v166 ^ v160) ^ 0xE3];
  *(a3 + v218) = (85 * v186 + 42) ^ (36 * v186 + 72) ^ 0x33;
  *(a3 + v217) = v184[BYTE1(v166) ^ 0xD0] ^ 0xE9 ^ ((16 * v184[BYTE1(v166) ^ 0xD0]) | 0xC);
  v187 = v185[(v169 ^ v167) ^ 0xCALL];
  *(a3 + v216) = (85 * v187 + 42) ^ (36 * v187 + 72) ^ 0x9E;
  *(a3 + v210) = v184[BYTE1(v181) ^ 0x8CLL] ^ (16 * v184[BYTE1(v181) ^ 0x8CLL]) ^ 0xA6;
  v188 = *(&off_1010A0B50 + (v14 ^ 0x1DFC)) - 1785379270;
  *(a3 + v212) = v188[BYTE2(v166) ^ 0xF9] ^ (v188[BYTE2(v166) ^ 0xF9] >> 2) & 0x14 ^ 0x7E;
  *(a3 + *(v17 - 160)) = (36 * v185[v181 ^ 0x24] + 72) ^ (85 * v185[v181 ^ 0x24] + 42) ^ 0x8E;
  *(a3 + v214) = v188[BYTE2(v169) ^ 0x41] ^ 0xA ^ (v188[BYTE2(v169) ^ 0x41] >> 2) & 0x14;
  v189 = v185[(v174 ^ v170) ^ 0x3FLL];
  *(a3 + *(v17 - 152)) = (85 * v189 + 42) ^ (36 * v189 + 72) ^ 0xDF;
  v190 = v182[HIBYTE(v174) ^ 0x49];
  *(a3 + *(v17 - 144)) = v190 ^ (2 * v190) & 0xD8 ^ 0xF0;
  v191 = v182[HIBYTE(v169) ^ 0x84];
  *(a3 + v213) = v191 ^ 0x82 ^ (2 * v191) & 0xD8;
  *(a3 + v215) = v188[BYTE2(v174) ^ 0x3CLL] ^ (v188[BYTE2(v174) ^ 0x3CLL] >> 2) & 0x14 ^ 0x10;
  v192 = v188[BYTE2(v181) ^ 0x6ELL];
  v193 = (((v16 ^ 0x9292D40F) + 1835871217) ^ ((v16 ^ 0x4CDE93F8) - 1289655288) ^ ((v16 ^ 0xB391C471) + 1282292623)) - 1759141064;
  LODWORD(v185) = (v193 ^ 0xC637EF1C) & (2 * (v193 & 0xD6B7E05E)) ^ v193 & 0xD6B7E05E;
  v194 = ((2 * (v193 ^ 0x437AAF9C)) ^ 0x2B9A9F84) & (v193 ^ 0x437AAF9C) ^ (2 * (v193 ^ 0x437AAF9C)) & 0x95CD4FC2;
  v195 = v194 ^ 0x94454042;
  v196 = (v194 ^ 0x1880380) & (4 * v185) ^ v185;
  LODWORD(v185) = ((4 * v195) ^ 0x57353F08) & v195 ^ (4 * v195) & 0x95CD4FC0;
  v197 = (v185 ^ 0x15050F00) & (16 * v196) ^ v196;
  LODWORD(v185) = ((16 * (v185 ^ 0x80C840C2)) ^ 0x5CD4FC20) & (v185 ^ 0x80C840C2) ^ (16 * (v185 ^ 0x80C840C2)) & 0x95CD4FC0;
  v198 = v185 ^ 0x810903C2;
  v199 = v197 ^ 0x95CD4FC2 ^ (v185 ^ 0x14C44C00) & (v197 << 8);
  LODWORD(v185) = (v185 ^ 0x810903C2) << 8;
  v200 = v185 ^ 0x4D4F0000;
  LODWORD(v185) = v185 & 0x15CD0000 ^ 0x10800000 ^ v200 & v198;
  *(a3 + *(v17 - 136)) = v192 ^ 0x7B ^ (v192 >> 2) & 0x14;
  v201 = (v199 << 16) ^ 0x4FC20000u;
  v202 = v201 & v185;
  v203 = v193 ^ (2 * ((v199 << 16) & 0x15CD0000 ^ v199 ^ v202));
  v204 = v182[HIBYTE(v166) ^ 0xF3];
  *(a3 + *(v17 - 128)) = v204 ^ 0x53 ^ (2 * v204) & 0xD8;
  v205 = (((v203 ^ 0x6E67F923) + 183040641) ^ ((v203 ^ 0xBC1A0937) - 661321067) ^ ((v203 ^ 0x24D08FCE) + 1080003694)) + 1390571060;
  LODWORD(v182) = v71 ^ (v205 < 0xE504EAAE);
  v206 = v205 < *(v17 - 116);
  if (v182)
  {
    v206 = v71;
  }

  return (*(a12 + 8 * ((23 * v206) ^ v14)))(v203, 276824064, v177, v199, v202, v201, v200, 36, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, v208, v209, v210, v211);
}

uint64_t sub_1009923CC()
{
  v9 = v0 - v6 + ((v6 - 1) & 0xFLL);
  v11 = (v5 - v7) >= 0x10 && (v9 + v2 + 1) >= 0x10 && (v9 + v1 + 5) >= 0x10;
  v12 = v9 + v3 + 2;
  v14 = !v11 || v12 < ((v4 + 6938) ^ 0xA2D2uLL);
  return (*(v8 + 8 * ((107 * v14) ^ v4)))(v6);
}

uint64_t sub_1009924B8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v23 = -175314531 - v19;
  if (4119652765 - v19 >= a2)
  {
    v23 = a2;
  }

  return (*(v22 + 8 * (((((v21 + 258158365) & 0xF09CD9C1) - v20 + 2105919323 >= v23) | (4 * (((v21 + 258158365) & 0xF09CD9C1) - v20 + 2105919323 >= v23))) ^ v21)))((v21 + 258158365) & 0xF09CD9C1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_100992524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, unsigned int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17)
{
  v19 = a11 < 0x43AF9546;
  if (v19 == (a17 + 2) > 0xBC506AB9)
  {
    v19 = a17 + 1135580488 < a11;
  }

  return (*(v18 + 8 * (((v17 ^ 0x18F1) * v19) ^ v17)))();
}

uint64_t sub_10099263C()
{
  v3 = STACK[0xFB0];
  v4 = *(STACK[0xFB0] + 6);
  LODWORD(STACK[0xFD0]) = *(STACK[0xFB0] + 1);
  v5 = v3[8];
  v6 = v3[9];
  v7 = v3[15];
  LODWORD(STACK[0xFE8]) = v4;
  LODWORD(STACK[0xFF0]) = v6;
  LODWORD(STACK[0xFD8]) = v5;
  LODWORD(STACK[0xFE0]) = v7;
  return (*(v2 + 8 * ((((v0 + 1518616719) & 0xA57B5FFF ^ (v0 - 24440)) * (v1 != 32720342)) | v0)))();
}

uint64_t sub_1009928D8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, unsigned int a25)
{
  v26 = a25 < 0x10EC8274;
  v27 = (((v25 - 43209) | 0x1464) ^ 0x4EA8EB5) + a4;
  v28 = v26 ^ (v27 < ((2311 * (v25 ^ 0xA9D2)) ^ 0x10EC9961u));
  v29 = v27 < a25;
  if (!v28)
  {
    v26 = v29;
  }

  return (*(STACK[0xED8] + 8 * ((4531 * v26) ^ v25)))();
}

uint64_t sub_10099297C@<X0>(unint64_t a1@<X0>, unsigned int a2@<W2>, uint64_t a3@<X8>)
{
  STACK[0x418] += a2 ^ 0x7F46;
  STACK[0x368] = a1;
  return (*(v3 + 8 * (((a3 == 0) * (a2 - 32303)) ^ a2)))();
}

uint64_t sub_1009929C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, int a14, char *a15, unsigned int a16, uint64_t a17)
{
  *v17 = 0;
  a17 = v20;
  a16 = (v21 + 1985) ^ (1012831759 * ((&a13 - 2 * (&a13 & 0x3F3FEFD8) - 1086328869) ^ 0xAFACF951));
  a15 = &a12;
  a13 = v19;
  v22 = (*(v18 + 8 * (v21 ^ 0x6F30)))(&a13);
  return (*(v18 + 8 * ((21976 * (a14 == (v21 ^ 0xE9D5639A))) ^ (v21 - 31404))))(v22);
}

uint64_t sub_100992BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = (((2 * v8) & 0x3FFDBF5FF7177E52) + (v8 ^ 0x9FFEDFAFFB8BBF29) + *(v10 + 992));
  v12 = (v11[0x60012050047440D8] << (v9 ^ 0xACu)) | (v11[0x60012050047440D7] << 56) | (((v11[0x60012050047440D9] - ((2 * v11[0x60012050047440D9]) & 0x1F8u) + 14265095) << 40) - 0xB0000000000) ^ 0xD9AAFC0000000000 | (((v11[0x60012050047440DALL] - ((2 * v11[0x60012050047440DALL]) & 0xBCu) - 380412027) << 32) - 0x2700000000) ^ 0xE9535F5E00000000 | (((v11[0x60012050047440DBLL] - ((2 * v11[0x60012050047440DBLL]) & 0x5E)) << 24) - 0x2EBBDFF0D1000000) ^ 0xD144200F2F000000 | (((v11[0x60012050047440DCLL] - 2 * (v11[0x60012050047440DCLL] & 0x3F)) << 16) - 0xBF699201FC10000) ^ 0xF40966DFE03F0000 | (((v11[0x60012050047440DDLL] - ((2 * v11[0x60012050047440DDLL]) & 0xBC)) << 8) + 0x564D9D4C1CB75E00) ^ 0x564D9D4C1CB75E00;
  v13 = v11[0x60012050047440DELL] - ((2 * v11[0x60012050047440DELL]) & 0x156) + 0x552540C778FCD2ABLL;
  *(v10 + 1080) = v13 & 0x102000000000C1FELL ^ 0x279CBDDC96023AE5 ^ ((v12 - ((2 * v12) & 0x255A2C96A1EB5E7ELL) + 0x12AD164B50F5AF2BLL) ^ 0x136C89B05C6FB92ALL) & (v13 ^ 0xAADABF3887032D54);
  return (*(a8 + 8 * v9))();
}

uint64_t sub_100992F00@<X0>(unint64_t a1@<X8>)
{
  v6 = (a1 + v2 - 3);
  if (a1 <= 2)
  {
    v6 = (v3 + a1);
  }

  v7 = *(v5 + a1);
  v8 = v7 ^ 0xC;
  v9 = v7 ^ *v6 ^ (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (((2 * (v7 & 0x8D)) ^ 0xD) & v7)) ^ v7 & 0x8D)) ^ v7 & 0x8D)) ^ v7 & 0x8D)) ^ v7 & 0x8D)) ^ v7 & 0x8D));
  *(v5 + a1) = (((v9 ^ 0x2D) + 10) ^ ((v9 ^ 0xC5) - 30) ^ ((v9 ^ 0x3D) + 26)) - 127;
  return (*(v4 + 8 * ((105 * (a1 != 15)) ^ v1)))();
}

uint64_t sub_100992FC4@<X0>(uint64_t a1@<X8>)
{
  *(v5 - 248) = a1;
  *(v5 - 256) = (v1 - 1650505768) ^ (155453101 * ((((2 * v3) | 0x76D4A190) - v3 + 1150660408) ^ 0x5D4C4B07));
  v6 = (*(v4 + 8 * (v1 ^ 0x62601A8E)))(v5 - 256);
  *(v2 + 352) = 0;
  return (*(v4 + 8 * (v1 - 1650480336)))(v6);
}

uint64_t sub_10099309C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a8 + 8 * (v8 - 37000 + ((v8 - 1103696933) & 0x41C9ABEE)));
  LODWORD(STACK[0x520]) = 47179;
  return v9();
}

uint64_t sub_1009933C4@<X0>(char a1@<W1>, unint64_t a2@<X2>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, char a40, int a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  LODWORD(STACK[0xED0]) = 0;
  LODWORD(STACK[0xE38]) = 0;
  LODWORD(STACK[0xE60]) = 0;
  LODWORD(STACK[0xE58]) = 0;
  LODWORD(STACK[0xE40]) = 0;
  LODWORD(STACK[0xE48]) = 0;
  LODWORD(STACK[0xE50]) = 0;
  LODWORD(STACK[0xDF8]) = 0;
  LODWORD(STACK[0xE08]) = 0;
  LODWORD(STACK[0xDD8]) = 0;
  LODWORD(STACK[0xE28]) = 0;
  LODWORD(STACK[0xDC0]) = 0;
  LODWORD(STACK[0xDE0]) = 0;
  v58 = STACK[0xE78];
  v59 = (((STACK[0xE78] ^ 0x96) - 119) ^ ((STACK[0xE78] ^ 0xB3) - 82) ^ ((STACK[0xE78] ^ 0x5B) + 70)) - 72;
  v60 = STACK[0xEC0];
  v61 = *(STACK[0xEC0] + ((((v59 ^ 0xB2) + 110) ^ v59 ^ ((v59 ^ 0x13) - 51) ^ ((v59 ^ 0x6F) - 79) ^ (((52 * (a3 ^ 0x3B) + 106) ^ v59) + 50)) ^ 0xB8));
  v62 = -26 - 59 * (((v61 ^ 0x60) + 43) ^ ((v61 ^ 0x28) + 99) ^ ((v61 ^ 0x23) + 106));
  v63 = ~v62 | 0x51;
  v64 = STACK[0xC88];
  v65 = (((LODWORD(STACK[0xAB0]) ^ STACK[0xC88] ^ 0xFFFFFFAE) - 30) ^ ((LODWORD(STACK[0xAB0]) ^ STACK[0xC88] ^ 7) + 73) ^ ((LODWORD(STACK[0xAB0]) ^ STACK[0xC88] ^ 0x34) + 124)) + 76;
  v66 = v65 & 0x64 ^ 0xC5;
  *(STACK[0xF10] + 69) ^= a42 ^ *(STACK[0xF50] + 73) ^ v62 ^ (2 * ((v62 ^ 0x70) & (2 * ((v62 ^ 0x70) & (2 * ((v62 ^ 0x70) & (2 * ((v62 ^ 0x70) & (2 * ((v62 ^ 0x70) & (2 * (v62 & 0x1E ^ v63)) ^ v63)) ^ v63)) ^ v63)) ^ v63)) ^ v63)) ^ 0xDD;
  v67 = STACK[0xEA8];
  v68 = *(STACK[0xEA8] + ((v65 ^ (2 * ((v65 ^ 0x5A) & (2 * ((v65 ^ 0x5A) & (2 * ((v65 ^ 0x5A) & (2 * ((v65 ^ 0x5A) & (2 * (((2 * (v66 ^ v65 & 0x3E)) ^ 0x34) & (v65 ^ 0x5A) ^ v66)) ^ v66)) ^ v66)) ^ v66)) ^ v66))) ^ 3u));
  v69 = (((v68 ^ v54) - 49) ^ v68 ^ ((v68 ^ 0x77) - 119)) + 56;
  LOBYTE(v65) = v69 & 0xFE ^ 4;
  v70 = v69 ^ (8 * v68) & 0x10 ^ (2 * ((v69 ^ 0x74) & (2 * ((v69 ^ 0x74) & (2 * ((v69 ^ 0x74) & (2 * ((v69 ^ 0x74) & (2 * ((v69 ^ 0x74) & (2 * v65) ^ v65)) ^ v65)) ^ v65)) ^ v65)) ^ v65));
  LOBYTE(v65) = -51 - 5 * (((*(STACK[0xF10] + 103) ^ 0xF6) + 10) ^ ((*(STACK[0xF10] + 103) ^ 0xDE) + 34) ^ ((*(STACK[0xF10] + 103) ^ 0xAC) + 84));
  v71 = v65 & 0xDB ^ a1;
  v72 = *(STACK[0xEA0] + ((v65 ^ (2 * ((v65 ^ 0x1E) & (2 * ((v65 ^ 0x1E) & (2 * ((v65 ^ 0x1E) & (2 * ((v65 ^ 0x1E) & (2 * ((v65 ^ 0x1E) & (2 * ((v65 ^ 0x1E) & (2 * v65) & 0x3E ^ v71)) ^ v71)) ^ v71)) ^ v71)) ^ v71)) ^ v71))) ^ 0x74u));
  LOBYTE(v65) = -59 * (((v70 ^ 0x88) + 82) ^ ((v70 ^ 0x66) - 64) ^ ((v70 ^ 0x9D) + 69)) - 91;
  v73 = v65 & 0x94 ^ 0xE8;
  v74 = (2 * (((v72 >> 2) | (v72 << 6)) ^ 0xFFFFFF9A)) & 0xFFFFFFE4 ^ ((v72 >> 2) | (v72 << 6)) ^ 0xFFFFFF9A;
  v75 = ((v64 >> 8) & 0xF9 ^ 0x5F4C0F86) & ((v64 >> 8) & 0xF9 ^ 0x5F6FFF1F) ^ (v64 >> 8) & 0x60;
  LOBYTE(v74) = (((v74 ^ 0x51) + 78) ^ ((v74 ^ 0xED) - 14) ^ ((v74 ^ 0x3A) + 39)) - 104;
  v76 = v74 & 0x38 ^ 0x3E;
  v77 = (v74 ^ 0x4C) & (2 * ((v74 ^ 0x4C) & (2 * ((v74 ^ 0x4C) & (2 * ((v74 ^ 0x4C) & (2 * ((v74 ^ 0x4C) & (2 * v76) ^ v76)) ^ v76)) ^ v76)) ^ v76)) ^ v76 ^ v73 ^ (v65 ^ 0x44) & (2 * ((v65 ^ 0x44) & (2 * ((v65 ^ 0x44) & (2 * ((v65 ^ 0x44) & (2 * v73) ^ v73)) ^ v73)) ^ v73));
  v78 = (((v75 ^ 0xA5) + 65) ^ ((v75 ^ 0xE8) + 14) ^ ((v75 ^ 0xB2) + 88)) + (((v58 & 0x4D ^ 9) - 93) ^ ((v58 & 0x4D ^ 0xCE) + 102) ^ ((v58 & 0x4D ^ 0x8B) + 33)) + (((v58 & 0x4D ^ 0x61) - 97) ^ ((v58 & 0x4D ^ 0x66) - 102) ^ ((v58 & 0x4D ^ 6) - 6)) + 79;
  LOBYTE(v75) = (v78 ^ 0xA6) & (2 * (v78 & 0xB6)) ^ v78 & 0xB6;
  v79 = ((2 * (v78 ^ 0xCA)) ^ 0xF8) & (v78 ^ 0xCA) ^ (2 * (v78 ^ 0xCA)) & 0x7C;
  LOBYTE(v75) = v75 ^ 0x7C ^ (v79 ^ 0x78) & (4 * v75);
  *(STACK[0xF10] + 103) = *(STACK[0xF50] + ((v78 ^ (2 * ((16 * v75) & 0x60 ^ v75 ^ ((16 * v75) ^ 0xC0) & (((4 * (v79 ^ 4)) ^ 0xF0) & (v79 ^ 4) ^ (4 * (v79 ^ 4)) & 0x70)))) ^ 0xCELL)) ^ v74 ^ v65 ^ (2 * v77) ^ 0x35;
  *(STACK[0xF10] + 4) ^= LODWORD(STACK[0xCD0]) ^ BYTE1(v58) ^ *(STACK[0xF50] + 42) ^ 0xAF;
  *(STACK[0xF10] + 38) ^= BYTE1(v64) ^ LODWORD(STACK[0xCB8]) ^ *(STACK[0xF50] + 18) ^ 0x62;
  v80 = (LODWORD(STACK[0xCE8]) ^ 0x55 ^ (v58 >> 16)) + 50;
  v81 = ((LOBYTE(STACK[0xCE8]) ^ 0x55 ^ BYTE2(v58)) + 50) & 0x32 ^ v55;
  v82 = STACK[0xEC8];
  v83 = *(STACK[0xEC8] + ((v80 ^ (2 * ((v80 ^ 0x60) & (2 * ((v80 ^ 0x60) & (2 * ((v80 ^ 0x60) & (2 * ((v80 ^ 0x60) & (2 * ((v80 ^ 0x60) & (2 * (v81 ^ v80 & 0x12)) ^ v81)) ^ v81)) ^ v81)) ^ v81)) ^ v81))) ^ 0x8Bu));
  v84 = -51 * (((v83 ^ 0x38) + 80) ^ ((v83 ^ 0x3A) + 78) ^ ((v83 ^ 0xFFFFFFC3) - 75)) - 76;
  v85 = v84 & 0xFFFFFFFB ^ 0xFFFFFF9D;
  v86 = *(STACK[0xF10] + 97) ^ *(STACK[0xF50] + 124) ^ v84 ^ (2 * ((v84 ^ 0x40) & (2 * ((v84 ^ 0x40) & (2 * ((v84 ^ 0x40) & (2 * ((v84 ^ 0x40) & (2 * ((v84 ^ 0x40) & (2 * ((v84 ^ 0x40) & (2 * v85) ^ v85)) ^ v85)) ^ v85)) ^ v85)) ^ v85)) ^ v85)) ^ 0xFFFFFFCD;
  v87 = STACK[0xEB0];
  v88 = ((v86 >> 4) | (16 * v86)) ^ *(STACK[0xEB0] + (((v86 >> 4) | (16 * v86)) ^ a2));
  v89 = LODWORD(STACK[0x510]) - 81 * (((v88 ^ 0xFFFFFFFE) + 36) ^ ((v88 ^ 0xFFFFFF8B) + 87) ^ ((v88 ^ 0x4F) - 109));
  LOBYTE(v85) = v89 & 0x6C ^ 0x47;
  *(STACK[0xF10] + 97) = v89 ^ (2 * ((v89 ^ 0x66) & (2 * ((v89 ^ 0x66) & (2 * ((v89 ^ 0x66) & (2 * ((v89 ^ 0x66) & (2 * ((v89 ^ 0x46) & (2 * ((v89 ^ 0x46) & 0xA ^ v85)) ^ v85)) ^ v85)) ^ v85)) ^ v85)) ^ v85)) ^ 0xE8;
  v90 = (v64 >> 16) ^ LODWORD(STACK[0xB28]) ^ *(STACK[0xF10] + 131);
  LOBYTE(v90) = (((v90 ^ 7) - 94) ^ ((v90 ^ 0x93) + 54) ^ ((v90 ^ 0x83) + 38)) + 104;
  LOBYTE(v65) = v90 & 0xA3 ^ 0xE2;
  LOBYTE(v90) = *(v60 + ((v90 ^ (2 * ((v90 ^ 0x5E) & (2 * ((v90 ^ 0x5E) & (2 * ((v90 ^ 0x5E) & (2 * ((v90 ^ 0x5E) & (2 * ((v90 ^ 0x5E) & (2 * ((v90 ^ 0x5E) & (2 * v90) & 0x3E ^ v65)) ^ v65)) ^ v65)) ^ v65)) ^ v65)) ^ v65))) ^ 0x3Bu));
  LOBYTE(v90) = -59 * (((v90 ^ 0x3E) - 65) ^ ((v90 ^ 0x3C) - 67) ^ ((v90 ^ 0x69) - 22)) - 124;
  LOBYTE(v65) = v90 & 0x92 ^ 0x59;
  *(STACK[0xF10] + 131) = *(STACK[0xF50] + 78) ^ v90 ^ (2 * ((v90 ^ 0x60) & (2 * ((v90 ^ 0x60) & (2 * ((v90 ^ 0x60) & (2 * ((v90 ^ 0x60) & (2 * ((v90 ^ 0x60) & (2 * (v65 ^ v90 & 0x32)) ^ v65)) ^ v65)) ^ v65)) ^ v65)) ^ v65)) ^ 0xAC;
  v91 = (((*(STACK[0xF50] + 41) >> 4) | (16 * *(STACK[0xF50] + 41))) + ((32 * *(STACK[0xF50] + 41)) & 0x1F80) + 64) ^ *(v87 + ((((*(STACK[0xF50] + 41) >> 4) | (16 * *(STACK[0xF50] + 41))) + ((32 * *(STACK[0xF50] + 41)) & 0x80) + 64) ^ 0xD3));
  v92 = LODWORD(STACK[0xD70]) - 81 * (((v91 ^ 0x52) - 24) ^ ((v91 ^ 0xFFFFFFFC) + 74) ^ ((v91 ^ 0xFFFFFFEC) + 90));
  v93 = v92 & 0xFFFFFFA4 ^ 0xFFFFFF9F;
  v94 = (v58 >> 24) ^ LODWORD(STACK[0xB08]) ^ *(STACK[0xF10] + 32) ^ v92 ^ (2 * ((v92 ^ 0xE) & (2 * ((v92 ^ 0xE) & (2 * ((v92 ^ 0xE) & (2 * ((v92 ^ 0xE) & (2 * ((v92 ^ 0xE) & (2 * ((v92 ^ 0xE) & 0x2A ^ v93)) ^ v93)) ^ v93)) ^ v93)) ^ v93)) ^ v93));
  LOBYTE(v94) = (((v94 ^ 0x4B) + 125) ^ ((v94 ^ 0x7B) + 77) ^ ((v94 ^ 0x86) - 78)) - 107;
  LOBYTE(v65) = v94 & 0xC9 ^ 0xAB;
  LOBYTE(v94) = *(v82 + ((v94 ^ (2 * ((v94 ^ 0x7A) & (2 * ((v94 ^ 0x7A) & (2 * ((v94 ^ 0x7A) & (2 * ((v94 ^ 0x7A) & (2 * ((v94 ^ 0x7A) & (2 * (((2 * v94) & 0x76 ^ 0x32) & (v94 ^ 0x72) ^ v65)) ^ v65)) ^ v65)) ^ v65)) ^ v65)) ^ v65))) ^ 0x70u));
  LOBYTE(v94) = -51 * (((v94 ^ 0xDB) + 99) ^ ((v94 ^ 0xAE) + 24) ^ ((v94 ^ 0xB4) + 14)) + 116;
  LOBYTE(v65) = v94 & 0xC3 ^ 0x96;
  *(STACK[0xF10] + 32) = v94 ^ (2 * ((v94 ^ 0x26) & (2 * ((v94 ^ 0x26) & (2 * ((v94 ^ 0x26) & (2 * ((v94 ^ 0x26) & (2 * ((v94 ^ 0x26) & (2 * ((v94 ^ 0x26) & (2 * v94) & 0x4E ^ v65)) ^ v65)) ^ v65)) ^ v65)) ^ v65)) ^ v65)) ^ 0x47;
  *(STACK[0xF10] + 66) ^= LODWORD(STACK[0xC98]) ^ BYTE3(v64) ^ *(STACK[0xF50] + 99) ^ 0x2B;
  LOBYTE(v91) = -5 * (((BYTE4(v58) ^ 0xD0) - 71) ^ ((BYTE4(v58) ^ 0x15) + 126) ^ ((BYTE4(v58) ^ 0x34) + 93)) - 123;
  LOBYTE(v91) = ((v91 ^ 0xBC) - 63) ^ v91 ^ ((v91 ^ 0x87) - 4) ^ ((v91 ^ 0x47) + 60) ^ (-v91 - 125);
  v95 = STACK[0xE90];
  LOBYTE(v91) = *(STACK[0xE90] + (v91 ^ 0xA5)) ^ v91;
  LOBYTE(v91) = ((v91 ^ 3) - 39) ^ ((v91 ^ 0x39) - 29) ^ ((v91 ^ 0x3B) - 31);
  LOBYTE(v94) = v91 + 52;
  LOBYTE(v91) = v91 - 76;
  *(STACK[0xF10] + 125) ^= LODWORD(STACK[0xCA8]) ^ *(STACK[0xF50] + 115) ^ v91 ^ (2 * ((v94 ^ 0x70) & (2 * ((v94 ^ 0x70) & (2 * ((v94 ^ 0x70) & (2 * ((v94 ^ 0x70) & (2 * (v91 & 0xF0)) ^ v91 & 0xF0)) ^ v91 & 0xF0)) ^ v91 & 0xF0)) ^ v91 & 0xF0)) ^ 0xDD;
  LOBYTE(v94) = *(v67 + (((BYTE4(v64) ^ LODWORD(STACK[0x748]) ^ *(STACK[0xF10] + 1) ^ 0xE8) - 7) ^ 0x67));
  LOBYTE(v65) = (((v94 ^ 0x78) - 120) ^ ((v94 ^ 0x8C) + 116) ^ ((v94 ^ 0xB2) + 78)) + 81;
  LOBYTE(v93) = v65 & 0x9F ^ 0xE1;
  LOBYTE(v94) = v65 ^ (8 * v94) & 0x10 ^ (2 * ((v65 ^ 0x5C) & (2 * ((v65 ^ 0x5C) & (2 * ((v65 ^ 0x5C) & (2 * ((v65 ^ 0x5C) & (2 * ((v65 ^ 0x5C) & (2 * (((2 * v65) & 0x3A ^ 0x42) & v65 ^ v93)) ^ v93)) ^ v93)) ^ v93)) ^ v93)) ^ v93));
  LOBYTE(v94) = -59 * (((v94 ^ 0x1A) + 33) ^ ((v94 ^ 0x78) + 67) ^ ((v94 ^ 0x70) + 75)) - 118;
  LOBYTE(v65) = v94 & 0x3D ^ 0x2A;
  *(STACK[0xF10] + 1) = *(STACK[0xF50] + 45) ^ v94 ^ (2 * ((v94 ^ 0x68) & (2 * ((v94 ^ 0x68) & (2 * ((v94 ^ 0x68) & (2 * ((v94 ^ 0x68) & (2 * ((v94 ^ 0x68) & (2 * (v94 & (2 * v94) & 0x52 ^ v65)) ^ v65)) ^ v65)) ^ v65)) ^ v65)) ^ v65)) ^ 0x23;
  *(STACK[0xF10] + (((HIWORD(v58) & 0x737C ^ 0x34705E60A3E532CLL) + (HIWORD(v58) & 0x737C ^ 0x2050) + 0xEE6FA3E1101A500) & (HIWORD(v58) & 0xE019 ^ 0x5373605740E53BB4 ^ (HIWORD(v58) & 0xE3BD ^ 0x5EA28ADF207BD889) & (HIWORD(v58) & 0xE3BD ^ 0x7FEF9FFFF2FFDB2FLL)))) = LODWORD(STACK[0xBD0]) ^ *(STACK[0xF10] + 60) ^ *(STACK[0xF50] + 48) ^ 0x32 ^ BYTE5(v58);
  v96 = (v64 >> 40) ^ LODWORD(STACK[0x4E4]);
  HIDWORD(v97) = v96 ^ 0xAAAAAAAA;
  LODWORD(v97) = (v96 ^ 0x60) << 24;
  v98 = *(STACK[0xE98] + ((v97 >> 28) ^ 0x8DLL));
  v99 = LODWORD(STACK[0x4DC]) - 81 * (((v98 ^ 0xFFFFFFD5) + 107) ^ ((v98 ^ 0xFFFFFFF7) + 73) ^ ((v98 ^ 0x12) - 82));
  v100 = v99 & 0xAE ^ 0x7D;
  LOBYTE(v99) = v99 ^ *(STACK[0xF10] + 94) ^ (2 * ((v99 ^ 0x74) & (2 * ((v99 ^ 0x74) & (2 * ((v99 ^ 0x74) & (2 * ((v99 ^ 0x74) & (2 * ((v99 ^ 0x74) & (2 * (v100 ^ v99 & 0x1A)) ^ v100)) ^ v100)) ^ v100)) ^ v100)) ^ v100));
  LOBYTE(v99) = *(v82 + (((((v99 ^ 0xB2) - 70) ^ ((v99 ^ 0xD) + 7) ^ ((v99 ^ v56) - 97)) - 16) ^ 0xB9));
  LOBYTE(v99) = a40 - 51 * (((v99 ^ 0x71) + 30) ^ ((v99 ^ 0x9D) - 14) ^ ((v99 ^ 0x2D) + 66));
  v101 = v99 & 0x54 ^ 0xF6;
  *(STACK[0xF10] + 94) = *(STACK[0xF50] + 88) ^ v99 ^ (2 * ((v99 ^ 0x68) & (2 * ((v99 ^ 0x68) & (2 * ((v99 ^ 0x68) & (2 * ((v99 ^ 0x68) & (2 * ((v99 ^ 0x68) & (2 * v101) ^ v101)) ^ v101)) ^ v101)) ^ v101)) ^ v101)) ^ 0x30;
  *(STACK[0xF10] + 153) ^= LODWORD(STACK[0xAA8]) ^ *(STACK[0xF50] + 100) ^ v57 ^ BYTE6(v58);
  v102 = 70 - 5 * (((*(STACK[0xF50] + 3) ^ 0xB5) + 117) ^ ((*(STACK[0xF50] + 3) ^ 0x97) + 87) ^ ((*(STACK[0xF50] + 3) ^ 0xD2) + 20));
  v103 = v102 & 0xE ^ 0x6D;
  v104 = v102 ^ (2 * ((v102 ^ 0x34) & (2 * ((v102 ^ 0x34) & (2 * ((v102 ^ 0x34) & (2 * ((v102 ^ 0x34) & (2 * ((v102 ^ 0x34) & (2 * (v103 ^ v102 & 0x3A)) ^ v103)) ^ v103)) ^ v103)) ^ v103)) ^ v103));
  *(STACK[0xF10] + 29) ^= BYTE6(v64) ^ LODWORD(STACK[0xB90]) ^ ((*(v95 + (v104 ^ 0x28)) ^ v104 ^ 0x8C) - 1) ^ 0x56;
  *(STACK[0xF10] + 88) ^= a54 ^ *(STACK[0xF50] + 2) ^ 0xC9 ^ HIBYTE(v58);
  v105 = *(STACK[0xED8] + 8 * a3);
  LODWORD(STACK[0xE30]) = 1;
  LODWORD(STACK[0xE00]) = 1;
  LODWORD(STACK[0xE18]) = 1;
  LODWORD(STACK[0xE20]) = 1;
  return v105(188);
}

uint64_t sub_1009945AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int a59, int a60, char a61, int a62, int a63)
{
  LODWORD(STACK[0x9A0]) = v82;
  v87 = STACK[0xAC0];
  v88 = 3 * (v82 ^ 0xDEDA);
  LODWORD(STACK[0xC58]) = v88;
  v89 = (v88 - 235033227) & 0xFF6FBBBF;
  LODWORD(STACK[0x608]) = v89;
  v90 = (v87 + 1) ^ (v75 + 4) ^ (((v87 + 1) ^ v76) - 59) ^ (((v87 + 1) ^ 0xE8) - 30) ^ ((v89 ^ (v87 + 1) ^ 0xB2) + 38);
  v91 = 7 * (((v90 ^ 0xBA) + 123) ^ ((v90 ^ 0x79) - 70) ^ ((v90 ^ 0x35) - 10)) - 58;
  v92 = v91 & 0x6F ^ 0x7B;
  v93 = v91 ^ (2 * ((v91 ^ 0x38) & (2 * ((v91 ^ 0x38) & (2 * ((v91 ^ 0x38) & (2 * ((v91 ^ 0x38) & (2 * ((v91 ^ 0x38) & (2 * (((2 * v91) & 0x72 ^ v80) & v91 ^ v92)) ^ v92)) ^ v92)) ^ v92)) ^ v92)) ^ v92));
  v94 = v87 + 11;
  STACK[0x700] = v94;
  LOBYTE(v94) = v93 ^ *(a1 + v94) ^ v77;
  v95 = (v87 + 1352899346) ^ (v75 + 14) ^ (((v87 + 1352899346) ^ 0xC6) + 41) ^ (((v87 + 1352899346) ^ 0x6E) + 129) ^ (((v87 + 1352899346) ^ v83) + 169);
  v96 = 7 * (((v95 ^ a8) + 69) ^ ((v95 ^ 0x2D) - 10) ^ ((v95 ^ 0xFFFFFFA0) + 121)) - 100;
  v97 = v96 & v83 ^ 0xFFFFFFD4;
  LODWORD(STACK[0xDE8]) = (v96 ^ 0x5C) & (2 * ((v96 ^ 0x5C) & (2 * ((v96 ^ 0x5C) & (2 * ((v96 ^ 0x5C) & (2 * ((v96 ^ 0x5C) & (2 * v97) ^ v97)) ^ v97)) ^ v97)) ^ v97)) ^ v97;
  LODWORD(v94) = (((*(a75 + v94) ^ 0xFFFFFFAC) + 84) ^ ((*(a75 + v94) ^ 0xFFFFFFA7) + 89) ^ ((*(a75 + v94) ^ 0x4D) - 77)) - 47;
  v98 = v94 & 0xFFFFFFAA ^ 0xFFFFFF86;
  LODWORD(v94) = v94 ^ (2 * ((v94 ^ 0x2C) & (2 * ((v94 ^ 0x2C) & (2 * ((v94 ^ 0x2C) & (2 * ((v94 ^ 0x2C) & (2 * ((v94 ^ 0x2C) & (2 * v98) ^ v98)) ^ v98)) ^ v98)) ^ v98)) ^ v98));
  LODWORD(STACK[0xE10]) = (16 * v94) & 0xFFFFFFBF ^ v94;
  LODWORD(STACK[0x640]) = v75;
  LODWORD(v94) = (v87 + 1182006822) ^ v75 ^ (((v87 + 1182006822) ^ 0xB7) + 96) ^ (((v87 + 1182006822) ^ 0x49) + 162) ^ (((v87 + 1182006822) ^ 0x16) - 1);
  LODWORD(v94) = 7 * (((v94 ^ 0xFFFFFFCE) - 78) ^ ((v94 ^ 0x6D) + 19) ^ ((v94 ^ 0xFFFFFFB4) - 52));
  v99 = v94 + 81;
  LODWORD(v94) = (v94 - 47) & 0xFFFFFFD0 | (v94 + 81) & 8 | 4;
  LODWORD(v94) = v99 ^ (2 * ((v99 ^ 0x50) & (2 * ((v99 ^ 0x50) & (2 * ((v99 ^ 0x50) & (2 * ((v99 ^ 0x50) & (2 * ((v99 ^ 0x50) & (2 * v94) ^ v94)) ^ v94)) ^ v94)) ^ v94)) ^ v94));
  v100 = v87 + 15;
  STACK[0x6D8] = v100;
  LODWORD(v94) = 79 - 5 * (((v94 ^ *(a1 + v100) ^ 0xFFFFFF93) + 122) ^ ((v94 ^ *(a1 + v100) ^ 0x5C) - 73) ^ ((v94 ^ *(a1 + v100) ^ 0x17) - 2));
  LODWORD(v100) = v94 & 0x7C ^ 0x66;
  LODWORD(v94) = v94 ^ (2 * ((v94 ^ 0x30) & (2 * ((v94 ^ 0x30) & (2 * ((v94 ^ 0x30) & (2 * ((v94 ^ 0x30) & (2 * ((v94 ^ 0x30) & (2 * v100) ^ v100)) ^ v100)) ^ v100)) ^ v100)) ^ v100));
  LODWORD(STACK[0xE28]) = *(STACK[0xE90] + (v94 ^ v78)) ^ v94;
  LOBYTE(v94) = (((v87 + 22) ^ 0x55) - 89) ^ (v87 + 22) ^ (((v87 + 22) ^ 0xF4) + 8) ^ (((v87 + 22) ^ 0x53) - 95) ^ (((v87 + 22) ^ 0xFE) + 14);
  v101 = 7 * (((v94 ^ 5) + 41) ^ ((v94 ^ 0xB1) - 99) ^ ((v94 ^ 0xB8) - 106)) + 63;
  LOBYTE(v94) = v101 & 0xF7 ^ 0x92;
  v102 = (v101 ^ 0x52) & (2 * ((v101 ^ 0x52) & (2 * ((v101 ^ 0x52) & (2 * ((v101 ^ 0x52) & (2 * ((v101 ^ 0x52) & (2 * ((v101 ^ 0x42) & (2 * v94) ^ v94)) ^ v94)) ^ v94)) ^ v94)) ^ v94)) ^ v94;
  LOBYTE(v94) = (((v87 + 64) ^ 0x8A) + 74) ^ (v87 + 64) ^ (((v87 + 64) ^ 0x22) - 30) ^ (((v87 + 64) ^ 0xE9) + 43) ^ (((v87 + 64) ^ v79) - 65);
  LOBYTE(v94) = 7 * (((v94 ^ 0xF4) + 99) ^ ((v94 ^ 0xB6) + 33) ^ ((v94 ^ 0x7E) - 23)) - 81;
  LOBYTE(v100) = v94 & 0xE6 ^ 0x21;
  LOBYTE(v94) = v94 ^ (2 * ((v94 ^ 0x24) & (2 * ((v94 ^ 0x24) & (2 * ((v94 ^ 0x24) & (2 * ((v94 ^ 0x24) & (2 * ((v94 ^ 0x24) & (2 * (v94 & (2 * v100) ^ v100)) ^ v100)) ^ v100)) ^ v100)) ^ v100)) ^ v100));
  v103 = v87 + 4;
  STACK[0x6F8] = v103;
  LODWORD(v94) = *(STACK[0xE98] + ((((v94 ^ *(a1 + v103) ^ 0x2D) >> 4) | (16 * (v94 ^ *(a1 + v103) ^ 0x2D))) ^ 0x31));
  LODWORD(STACK[0xDD0]) = ((v94 ^ 0x24) + 114) ^ ((v94 ^ 0x38) + 110) ^ ((v94 ^ 0x2C) + 122);
  LOBYTE(v94) = 7 * ((((v87 - ((2 * v87) & 0x98) - 52) ^ 0x70) - 112) ^ (((v87 - ((2 * v87) & 0x98) - 52) ^ 0xFC) + 4) ^ (((v87 - ((2 * v87) & 0x98) - 52) ^ 0x40) - 64));
  LOBYTE(v103) = v94 + 16;
  LOBYTE(v94) = ((-17 - v94) & v84 | 0x38) ^ (v94 + 16) & 0x78;
  STACK[0x6E0] = v87;
  v104 = (v103 ^ (2 * ((v103 ^ 4) & (2 * ((v103 ^ 4) & (2 * ((v103 ^ 4) & (2 * ((v103 ^ 4) & (2 * ((v103 ^ 4) & (2 * v94) ^ v94)) ^ v94)) ^ v94)) ^ v94)) ^ v94)) ^ *(a1 + v87) ^ 0x53);
  v105 = STACK[0xE80] + 2398;
  LODWORD(v104) = *(v105 + v104);
  v106 = a60 - 83 * (((v104 ^ 0xFFFFFF8A) + 118) ^ ((v104 ^ 0x29) - 41) ^ ((v104 ^ v85) + 27));
  v107 = v106 & 0x79 ^ 0xFFFFFFF0;
  LODWORD(v104) = -12 * ((-v104 - 128) ^ ((v104 ^ 2) + 126) ^ ((v104 ^ 0x3B) + 69)) + 55;
  v108 = (v104 & 0xFFFFFF81 | 0x52) ^ v104 & 0xFFFFFFA4;
  LODWORD(STACK[0xE78]) = v106 ^ v104 ^ (2 * (v108 ^ v107 ^ (v106 ^ 0x18) & (2 * ((v106 ^ 0x18) & (2 * ((v106 ^ 0x18) & (2 * ((v106 ^ 0x18) & (2 * (v106 & (2 * (v106 & (2 * v106) & 0x32 ^ v107)) ^ v107)) ^ v107)) ^ v107)) ^ v107)) ^ v104 & (2 * (v104 & (2 * (v104 & (2 * (v104 & (2 * (v104 & (2 * (v104 & (2 * v108) ^ v108)) ^ v108)) ^ v108)) ^ v108)) ^ v108))));
  LOBYTE(v106) = ((v87 + 102) ^ 6) & (2 * ((v87 + 102) & 0xA6)) ^ (v87 + 102) & 0xA6;
  v109 = ((2 * ((v87 + 102) ^ 0xA)) ^ 0x5A) & ((v87 + 102) ^ 0xA) ^ (2 * ((v87 + 102) ^ 0xA)) & 0xAC;
  LOBYTE(v104) = (v87 + 102) ^ (2 * (((4 * (v109 ^ 0xA5)) & 0xA0 ^ ((4 * (v109 ^ 0xA5)) ^ 0xA0) & (v109 ^ 0xA5) ^ 0x20) & (16 * ((v109 ^ 8) & (4 * v106) ^ v106)) ^ (v109 ^ 8) & (4 * v106) ^ v106));
  LOBYTE(v104) = 7 * (((v104 ^ 0xC0) - 101) ^ ((v104 ^ 0xA8) - 13) ^ ((v104 ^ 0xCF) - 106)) + 41;
  LOBYTE(v106) = v104 & 0xCF ^ 0x35;
  LOBYTE(v104) = *(a75 + (v104 ^ (2 * ((v104 ^ 0x64) & (2 * ((v104 ^ 0x64) & (2 * ((v104 ^ 0x64) & (2 * ((v104 ^ 0x64) & (2 * ((v104 ^ 0x64) & (2 * (((2 * v104) & 0x4A ^ 0x2A) & v104 ^ v106)) ^ v106)) ^ v106)) ^ v106)) ^ v106)) ^ v106)) ^ *(a1 + v87 + 13) ^ 0xE4));
  LOBYTE(v104) = (((v104 ^ 0x71) - 113) ^ ((v104 ^ 0x7A) - 122) ^ ((v104 ^ 0x4D) - 77)) - 14;
  LOBYTE(v106) = v104 & 0x95 ^ 4;
  v110 = v104 ^ (2 * ((v104 ^ 0xC) & (2 * ((v104 ^ 0xC) & (2 * ((v104 ^ 0xC) & (2 * ((v104 ^ 0xC) & (2 * ((v104 ^ 0xC) & (2 * (v104 & (2 * v104) & 0x1A ^ v106)) ^ v106)) ^ v106)) ^ v106)) ^ v106)) ^ v106));
  LOBYTE(v106) = (((v87 + 55) ^ 0xBE) + 118) ^ (v87 + 55) ^ (((v87 + 55) ^ 0xF) - 59) ^ (((v87 + 55) ^ 0x72) - 70) ^ (((v87 + 55) ^ 0xF7) + 61);
  LOBYTE(v106) = 7 * (((v106 ^ 0x1B) - 31) ^ ((v106 ^ 0x8E) + 118) ^ ((v106 ^ 0xA1) + 91));
  LOBYTE(v108) = (v106 - 82) & 0x26 ^ 0x42;
  v111 = v87 + 3;
  STACK[0x6C8] = v111;
  LOBYTE(v106) = (v106 + 46) ^ (2 * (((v106 - 82) ^ 0x20) & (2 * (((v106 - 82) ^ 0x20) & (2 * (((v106 - 82) ^ 0x20) & (2 * (((v106 - 82) ^ 0x20) & (2 * (((2 * (v106 - 82)) & 0x44 ^ 4) & (v106 - 82) ^ v108)) ^ v108)) ^ v108)) ^ v108)) ^ v108)) ^ *(a1 + v111);
  LOBYTE(v108) = ((2 * ((v87 + 50) ^ 0x38)) ^ 0xD6) & ((v87 + 50) ^ 0x38) ^ (2 * ((v87 + 50) ^ 0x38)) & 0xE8;
  LODWORD(STACK[0x648]) = v81;
  v112 = (v108 ^ 0xC0) & (4 * ((v81 & 0xA4 ^ 0xD2) & (v87 + 50))) ^ (v81 & 0xA4 ^ 0xD2) & (v87 + 50);
  v113 = (v87 + 50) ^ (2 * ((((v108 ^ 0x29) & 0xA0 | (v108 ^ 0xC0) & (4 * (v108 ^ 0x29))) ^ 0x20) & (16 * v112) ^ v112));
  v114 = 7 * (((v113 ^ 0x30) - 2) ^ ((v113 ^ 0xEB) + 39) ^ ((v113 ^ 8) - 58));
  LOBYTE(v108) = v114 + 3;
  v114 -= 125;
  LOBYTE(v108) = v108 & 4;
  v115 = v87 + 5;
  STACK[0x6F0] = v115;
  v116 = v114 ^ (2 * ((v114 ^ 0x24) & (2 * ((v114 ^ 0x24) & (2 * ((v114 ^ 0x24) & (2 * ((v114 ^ 0x24) & (2 * ((v114 ^ 0x24) & (2 * v108) | v108 | 0x70)) ^ (v108 | 0x70))) ^ (v108 | 0x70))) ^ (v108 | 0x70))) ^ (v108 | 0x70))) ^ *(a1 + v115);
  v117 = 32 - 5 * (((v116 ^ 0x15) - 4) ^ ((v116 ^ 0xB3) + 94) ^ ((v116 ^ 0x98) + 119));
  LOBYTE(v108) = v117 & 0xAB ^ 0xFB;
  v118 = v117 ^ (2 * ((v117 ^ 0x74) & (2 * ((v117 ^ 0x74) & (2 * ((v117 ^ 0x74) & (2 * ((v117 ^ 0x74) & (2 * ((v117 ^ 0x74) & (2 * (((2 * v117) & 0x6A ^ 0x5E) & (v117 ^ 0x74) ^ v108)) ^ v108)) ^ v108)) ^ v108)) ^ v108)) ^ v108));
  LOBYTE(v106) = *(v105 + v106);
  LOBYTE(v108) = -12 * (((v106 ^ 0x34) + 12) ^ ((v106 ^ 0x35) + 75) ^ ((v106 ^ 7) - 7)) - 33;
  v119 = v108 & 0xCD ^ 0x1A;
  LOBYTE(v106) = -83 * (((v106 ^ 0xD0) + 48) ^ ((v106 ^ 0xEE) + 18) ^ ((v106 ^ 0x78) - 120)) - 118;
  v120 = (v106 & 0xC4 | 0x33) ^ v106 & 0xEE;
  LOBYTE(v106) = *(STACK[0xEA8] + (((v108 ^ v106 ^ (2 * (v120 ^ v119 ^ (v108 ^ 0x58) & (2 * ((v108 ^ 0x58) & (2 * ((v108 ^ 0x58) & (2 * ((v108 ^ 0x58) & (2 * ((v108 ^ 0x58) & (2 * (v108 & (2 * v108) & 0x32 ^ v119)) ^ v119)) ^ v119)) ^ v119)) ^ v119)) ^ (v106 ^ 0x44) & (2 * ((v106 ^ 0x44) & (2 * ((v106 ^ 0x44) & (2 * ((v106 ^ 0x44) & (2 * ((v106 ^ 0x44) & (2 * ((v106 ^ 0x44) & (2 * v120) ^ v120)) ^ v120)) ^ v120)) ^ v120)) ^ v120)))) ^ 0xA) - 7) ^ 0x67));
  LOBYTE(v106) = (((v106 ^ 0x42) - 66) ^ ((v106 ^ 0x44) - 68) ^ ((v106 ^ 0x40) - 64)) + 79;
  LOBYTE(v108) = v106 & 0x83 ^ 0x72;
  LOBYTE(v106) = v106 ^ (2 * ((v106 ^ 0x5E) & (2 * ((v106 ^ 0x5E) & (2 * ((v106 ^ 0x5E) & (2 * ((v106 ^ 0x5E) & (2 * ((v106 ^ 0x5E) & (2 * ((v106 ^ 0x5E) & (2 * v106) & 0x3E ^ v108)) ^ v108)) ^ v108)) ^ v108)) ^ v108)) ^ v108));
  LOBYTE(v108) = (v110 & 0x1D ^ 8) + (v110 & 0x1D ^ 0x15);
  LOBYTE(v106) = v106 ^ (8 * ((v106 ^ 0x18) & ~v108 | v108 & 4));
  LOBYTE(v95) = v96 ^ (2 * LOBYTE(STACK[0xDE8]));
  v121 = v87 + 1;
  STACK[0x6C0] = v121;
  LODWORD(v121) = *(v105 + (v95 ^ *(a1 + v121) ^ 0xD3));
  LOBYTE(v95) = a71 - 83 * (((v121 ^ 0x5C) - 92) ^ ((v121 ^ 0x3B) - 59) ^ ((v121 ^ 0x21) - 33));
  LOBYTE(v108) = v95 & 0xD7 ^ 0x12;
  LODWORD(v121) = ((v121 ^ 0xFFFFFFA3) + 93) ^ ((v121 ^ 0x2D) - 45) ^ ((v121 ^ 0xFFFFFFC8) + 56);
  v122 = 84 * v121 - 4;
  LODWORD(v121) = v122 - 96 * v121;
  v123 = v122 & 8;
  v124 = v123 ^ 0xE;
  LODWORD(v121) = v121 - 64;
  v125 = 2 * (((4 * v123) & 0xFFFFFFE3 | (4 * (((v123 ^ 0xEu) >> 1) & 7))) & (v121 ^ 0x7C) ^ v123 ^ 0xE);
  LOBYTE(v125) = 2 * ((2 * (v125 ^ v124 ^ v125 & v121)) ^ v124 ^ (2 * (v125 ^ v124 ^ v125 & v121)) & v121);
  LOBYTE(v106) = -59 * (v106 ^ 0x2E);
  v126 = (((v121 ^ v95 ^ (2 * (v124 ^ v108 ^ (2 * (v125 ^ v124 ^ v125 & v121)) ^ (v95 ^ 0x32) & (2 * ((v95 ^ 0x32) & (2 * ((v95 ^ 0x32) & (2 * ((v95 ^ 0x32) & (2 * ((v95 ^ 0x22) & (2 * ((v95 ^ 0x22) & (2 * v95) & 0x66 ^ v108)) ^ v108)) ^ v108)) ^ v108)) ^ v108)) ^ (2 * (v125 ^ v124 ^ v125 & v121)) & v121))) << 16) ^ 0x5DA6F926) & (v106 ^ 0xDDFFFF27);
  LOBYTE(v121) = v101 ^ (2 * v102);
  v127 = v87 + 10;
  STACK[0x6E8] = v127;
  LODWORD(v127) = *(v105 + (v121 ^ *(a1 + v127) ^ 0xB0));
  LODWORD(STACK[0xDE8]) = v126 | v106 & 0xD9;
  LOBYTE(v126) = -12 * (((v127 ^ 0x14) - 20) ^ ((v127 ^ 8) - 8) ^ ((v127 ^ 0x1A) - 90)) + 22;
  LOBYTE(v106) = v126 & 0xA2 | 5;
  LOBYTE(v108) = v106 ^ v126 & 0xE;
  LODWORD(v127) = LODWORD(STACK[0x220]) - 83 * (((v127 ^ 0xFFFFFFCB) + 53) ^ v127 ^ ((v127 ^ 0xFFFFFF8D) + 115));
  v128 = v127 & 0xBB ^ 0xE9;
  v129 = *(STACK[0xEA0] + ((-5 * (v126 ^ v127 ^ (2 * (v108 ^ v128 ^ (v127 ^ 0x68) & (2 * ((v127 ^ 0x68) & (2 * ((v127 ^ 0x68) & (2 * ((v127 ^ 0x68) & (2 * (v127 & (2 * (v127 & ~(2 * v127) & 0x52 ^ v128)) ^ v128)) ^ v128)) ^ v128)) ^ v128)) ^ (v126 ^ 0x22) & (2 * ((v126 ^ 0x22) & (2 * ((v126 ^ 0x22) & (2 * ((v126 ^ 0x22) & (2 * ((v108 | 2) ^ ((2 * (v126 & (2 * v106) ^ v108)) ^ 4) & v126)) ^ v108)) ^ v108)) ^ v108)))) ^ 0xA1)) ^ 0xAFLL));
  v130 = ((((v129 >> 2) | (v129 << 6)) ^ 0xDC ^ (2 * ~((v129 >> 2) | (v129 << 6))) & 0xE4) - 1) << 8;
  LODWORD(STACK[0xE10]) = (LODWORD(STACK[0xE10]) ^ 0x861EBF7) & (v130 ^ 0xEA7BFBFF) | v130 & 0x1400;
  v131 = *(v105 + ((a64 - 81 * LODWORD(STACK[0xDD0])) ^ 0x55));
  v132 = -12 * (((v131 ^ 0xC) + 116) ^ ((v131 ^ 0x30) + 80) ^ ((v131 ^ 0x3A) - 122)) - 3;
  v133 = v132 & 0x54 ^ (12 * (((v131 ^ 0xC) + 116) ^ ((v131 ^ 0x30) + 80) ^ ((v131 ^ 0x3A) - 122))) & 0xFFFFFFB8;
  v134 = -83 * (((v131 ^ 0xFFFFFFBF) + 65) ^ ((v131 ^ 0xFFFFFFAB) + 85) ^ ((v131 ^ 0x52) - 82)) + 93;
  v135 = v134 & 0x47 ^ 0xFFFFFFEB;
  v136 = v132 ^ v134 ^ (2 * (v135 ^ v133 ^ (v132 ^ 0x38) & (2 * ((v132 ^ 0x38) & (2 * ((v132 ^ 0x38) & (2 * ((v132 ^ 0x38) & (2 * ((v132 ^ 0x38) & (2 * v133) ^ v133)) ^ v133)) ^ v133)) ^ v133)) ^ (v134 ^ 0x70) & (2 * ((v134 ^ 0x70) & (2 * ((v134 ^ 0x70) & (2 * ((v134 ^ 0x70) & (2 * ((v134 ^ 0x70) & (2 * (((2 * v134) & 0x62 ^ 0x36) & (v134 ^ 0x70) ^ v135)) ^ v135)) ^ v135)) ^ v135)) ^ v135))));
  LOBYTE(v133) = (((v87 - 34) ^ 0x79) + 82) ^ (v87 - 34) ^ (((v87 - 34) ^ 0x51) + 122) ^ (((v87 - 34) ^ 0xA5) - 114) ^ (((v87 - 34) ^ 0x5A) + 115);
  LOBYTE(v133) = 7 * (((v133 ^ 5) + 3) ^ ((v133 ^ 0xA4) - 92) ^ ((v133 ^ 0x76) + 114));
  LOBYTE(v132) = v133 - 119;
  LOBYTE(v133) = ((118 - v133) & 0xC0 | 0x17) ^ (v133 - 119) & 0xAE;
  LOBYTE(v133) = v132 ^ (2 * ((v132 ^ 0x40) & (2 * ((v132 ^ 0x40) & (2 * ((v132 ^ 0x40) & (2 * ((v132 ^ 0x40) & (2 * ((v132 ^ 0x40) & (2 * ((v132 ^ 0x40) & (2 * v133) ^ v133)) ^ v133)) ^ v133)) ^ v133)) ^ v133)) ^ v133));
  v137 = v87 + 7;
  STACK[0x6D0] = v137;
  LOBYTE(v133) = *(v105 + (v133 ^ *(a1 + v137) ^ 0x39));
  LOBYTE(v137) = -111 - 83 * (((v133 ^ 0x99) + 103) ^ ((v133 ^ 0x3F) - 63) ^ ((v133 ^ 0xE0) + 32));
  LOBYTE(v127) = v137 & 0xAB ^ 0x1F;
  LOBYTE(v133) = -34 - 12 * (((v133 ^ 0x2C) + 20) ^ ((v133 ^ 0x25) + 27) ^ ((v133 ^ 0xF) - 79));
  v138 = v133 & 0x3A ^ 0x30;
  LOBYTE(v137) = v137 ^ v133 ^ (2 * (v127 ^ v138 ^ (v133 ^ 0x58) & (2 * ((v133 ^ 0x58) & (2 * ((v133 ^ 0x58) & (2 * ((v133 ^ 0x58) & (2 * ((v133 ^ 0x58) & (2 * v138) ^ v138)) ^ v138)) ^ v138)) ^ v138)) ^ (v137 ^ 0x3C) & (2 * ((v137 ^ 0x3C) & (2 * ((v137 ^ 0x3C) & (2 * ((v137 ^ 0x3C) & (2 * ((v137 ^ 0x3C) & (2 * (((2 * v137) & 0x7A ^ 0x16) & (v137 ^ 0x3C) ^ v127)) ^ v127)) ^ v127)) ^ v127)) ^ v127))));
  LODWORD(v127) = (((v136 ^ 0xED) << 24) ^ 0x3453367B) & (v137 ^ 0xFF7FBFF0);
  v139 = *(v105 + (((LODWORD(STACK[0xE28]) ^ 0xFE) - 1) ^ 0xBCLL));
  v140 = (v139 ^ 0xFFFFFFD7) + 41;
  v141 = -83 * (((v139 ^ 0x41) - 65) ^ ((v139 ^ 0xFFFFFFD0) + 48) ^ v140) + 112;
  v142 = v141 & 0x3C ^ 0x33;
  v143 = LODWORD(STACK[0x788]) - 12 * (((v139 ^ 0x38) - 120) ^ ((v139 ^ 0x29) + 23) ^ v140);
  v144 = (v143 & 0xFFFFFF88 | 0x54) ^ v143 & 0xFFFFFFBC;
  v145 = v141 ^ v143 ^ (2 * (v144 ^ v142 ^ (v143 ^ 8) & (2 * ((v143 ^ 8) & (2 * ((v143 ^ 8) & (2 * ((v143 ^ 8) & (2 * ((v143 ^ 0xA) & (2 * v144) ^ v144)) ^ v144)) ^ v144)) ^ v144)) ^ (v141 ^ 0x5E) & (2 * ((v141 ^ 0x5E) & (2 * ((v141 ^ 0x5E) & (2 * ((v141 ^ 0x5E) & (2 * ((v141 ^ 0x5E) & (2 * ((v141 ^ 0x5E) & 0x22 ^ v142)) ^ v142)) ^ v142)) ^ v142)) ^ v142))));
  HIDWORD(v146) = v145 ^ 7;
  LODWORD(v146) = (v145 ^ 0xE0) << 24;
  LOBYTE(v145) = *(STACK[0xE98] + ((v146 >> 28) ^ 0x8DLL));
  LOBYTE(v145) = -81 * (((v145 ^ 0x9C) - 126) ^ ((v145 ^ 0x1F) + 3) ^ ((v145 ^ 0xB3) - 81)) - 114;
  LODWORD(STACK[0xE28]) = ((((16 * (v110 ^ 0x9B)) & 0xBF ^ v110 ^ 0x9B) << 16) ^ 0xA0FDE15D) & (v145 ^ 0xF7FFED76) | v145 & 0xA2;
  LOBYTE(v104) = *(a75 + (((*(STACK[0xE90] + (v118 ^ 0x8DLL)) ^ v118 ^ 0x29) - 1) ^ 0x47));
  LOBYTE(v104) = (((v104 ^ 0xC9) + 55) ^ ((v104 ^ 0xC5) + 59) ^ ((v104 ^ 0x4A) - 74)) - 116;
  v147 = v104 & 0x99 ^ 0x57;
  LOBYTE(v104) = v104 ^ (2 * ((v104 ^ 0x72) & (2 * ((v104 ^ 0x72) & (2 * ((v104 ^ 0x72) & (2 * ((v104 ^ 0x72) & (2 * ((v104 ^ 0x72) & (2 * (((2 * v104) & 0x66 ^ 0x6A) & (v104 ^ 0x62) ^ v147)) ^ v147)) ^ v147)) ^ v147)) ^ v147)) ^ v147)) ^ 0x69;
  v148 = ((v127 | v137 & 0x84) ^ 0x88AC4104) & (((((16 * v104) | 0x4A) ^ v104) << 16) ^ 0xC9F973B4) ^ v127 & 0x3612004B;
  LOBYTE(v143) = ((2 * ((v87 - 32) ^ 0xC)) ^ 0x4A) & ((v87 - 32) ^ 0xC) ^ (2 * ((v87 - 32) ^ 0xC)) & 0x24;
  LODWORD(v127) = (STACK[0x9B0] & 0x33D8E250 ^ 0x99EC7128) & (v87 + 1712557792);
  LOBYTE(v137) = (v87 - 32) ^ (2 * (v127 ^ 0x25 ^ v143 & (4 * v127) ^ ((4 * (v143 ^ 0x25)) & 0x20 ^ 0x20 ^ ((4 * (v143 ^ 0x25)) ^ 0x90) & (v143 ^ 0x25)) & ((16 * (v127 ^ 0x25 ^ v143 & (4 * v127))) ^ 0x50)));
  LOBYTE(v137) = 7 * (((v137 ^ 0x5A) - 110) ^ ((v137 ^ 0x43) - 119) ^ ((v137 ^ 0x7A) - 78)) - 50;
  LOBYTE(v143) = v137 & 0x17 ^ 0xC2;
  v149 = v87 + 9;
  STACK[0x6B8] = v149;
  LODWORD(v139) = *(STACK[0xE80] + ((v139 ^ 0xED) & 8 ^ 0x322DF629A3B3FF5FLL ^ ((v139 ^ 0xED) & 0x5C | 0x322DF629A3B3F601) & ((v139 ^ 0xED) & 0x5C ^ 0x3A7DF73FBBB3F677)) + (v137 ^ (2 * ((v137 ^ 0x12) & (2 * ((v137 ^ 0x12) & (2 * ((v137 ^ 0x12) & (2 * ((v137 ^ 0x12) & (2 * ((v137 ^ 2) & (2 * ((v137 ^ 2) & (2 * v137) & 0x26 ^ v143)) ^ v143)) ^ v143)) ^ v143)) ^ v143)) ^ v143)) ^ *(a1 + v149) ^ 0xA9));
  LOBYTE(v137) = a73 - 83 * (((v139 ^ 0x7A) - 122) ^ ((v139 ^ 0x85) + 123) ^ ((v139 ^ 0xB9) + 71));
  LOBYTE(v143) = v137 & 0xD5 ^ 0xA2;
  LODWORD(v139) = LODWORD(STACK[0x4FC]) - 12 * (((v139 ^ 3) - 3) ^ ((v139 ^ 0x21) + 31) ^ ((v139 ^ 0x24) + 92));
  v150 = v139 & 0xFA ^ 0x14;
  LOBYTE(v139) = v139 ^ v137 ^ (2 * (v143 ^ v150 ^ (v139 ^ 0x50) & (2 * ((v139 ^ 0x50) & (2 * ((v139 ^ 0x50) & (2 * ((v139 ^ 0x50) & (2 * ((v139 ^ 0x50) & (2 * v150) ^ v150)) ^ v150)) ^ v150)) ^ v150)) ^ (v137 ^ 0x10) & (2 * ((v137 ^ 0x10) & (2 * ((v137 ^ 0x10) & (2 * ((v137 ^ 0x10) & (2 * ((v137 ^ 0x10) & (2 * (v137 & (2 * v143) ^ v143)) ^ v143)) ^ v143)) ^ v143)) ^ v143))));
  v151 = (v87 + 11) ^ 0xCE;
  LOBYTE(v143) = (2 * ((v87 + 11) & 0xF6)) & 0x28 ^ (v87 + 11) & 0xF6 ^ ((2 * ((v87 + 11) & 0xF6)) | 2) & v151;
  LOBYTE(v127) = (2 * v151) & 0x38 ^ 9 ^ ((2 * v151) ^ 0x72) & v151;
  LOBYTE(v143) = (4 * v143) & 0x38 ^ v143 ^ ((4 * v143) | 4) & v127;
  LOBYTE(v137) = (v87 + 11) ^ (2 * ((16 * v143) & 0x30 ^ v143 ^ ((16 * v143) ^ 0x10) & ((4 * v127) & 0x38 ^ 0x19 ^ ((4 * v127) ^ 0xE4) & v127)));
  LOBYTE(v137) = ((v137 ^ 0xC2) + 12) ^ ((v137 ^ 0xA3) + 107) ^ ((v137 ^ 0xB4) + 126);
  LOBYTE(v143) = 7 * v137 + 112;
  LOBYTE(v127) = v143 & 0xB3 ^ 0x7F;
  v152 = v87 + 2;
  STACK[0x6B0] = v152;
  LOBYTE(v137) = *(v105 + (v143 ^ (2 * ((v143 ^ 0x44) & (2 * ((v143 ^ 0x44) & (2 * ((v143 ^ 0x44) & (2 * ((v143 ^ 0x44) & (2 * ((v143 ^ 0x44) & (2 * (((-2 * v137) & 0xA ^ 0x76) & (v143 ^ 0x44) ^ v127)) ^ v127)) ^ v127)) ^ v127)) ^ v127)) ^ v127)) ^ *(a1 + v152) ^ 0x41));
  LODWORD(STACK[0x690]) = -72;
  LOBYTE(v143) = -83 * (((v137 ^ 0x82) + 126) ^ ((v137 ^ 0x35) - 53) ^ ((v137 ^ 0xF1) + 15)) - 72;
  LOBYTE(v127) = v143 & 0x20 | 0x4D;
  LOBYTE(v137) = a67 - 12 * (((v137 ^ 7) - 7) ^ ((v137 ^ 8) + 120) ^ ((v137 ^ 9) + 55));
  LOBYTE(v142) = v137 & 0x2C ^ 0xCC;
  LODWORD(v137) = (v137 ^ v143 ^ (2 * (v142 ^ v127 ^ (v137 ^ 0x14) & (2 * ((v137 ^ 0x14) & (2 * ((v137 ^ 0x14) & (2 * ((v137 ^ 0x14) & (2 * v142) ^ v142)) ^ v142)) ^ v142)) ^ (v143 ^ 0x16) & (2 * ((v143 ^ 0x16) & (2 * ((v143 ^ 0x16) & (2 * ((v143 ^ 0x16) & (2 * ((v143 ^ 0x16) & (2 * (((((v143 & 0x20) != 0) << 6) | 0x36) & (v143 ^ 0x16) ^ v127)) ^ v127)) ^ v127)) ^ v127)) ^ v127))))) << 8;
  LODWORD(v149) = ((v137 & 0xD00 | (v137 ^ 0xFDFF50FF) & (LODWORD(STACK[0xDE8]) ^ 0xB5160BDE)) ^ 0x1FC945A4) & (((LODWORD(STACK[0xE78]) ^ 0x2D) << 24) ^ 0xAFFFFFFF) ^ ((LODWORD(STACK[0xE78]) ^ 0x2D) << 24) & 0x8000000;
  LOBYTE(v121) = *(STACK[0xEC0] + ((7 * v87 + 49) ^ 0x98));
  LOBYTE(v121) = ((v121 ^ 0x11) - 3) ^ (v121 - 18) ^ ((v121 ^ 0xFA) + 24);
  LOBYTE(v137) = -59 * v121 + 80;
  LOBYTE(v143) = v137 & 0x45 ^ 0x4C;
  LOBYTE(v121) = (v137 ^ 0x4C) & (2 * ((v137 ^ 0x4C) & (2 * ((v137 ^ 0x4C) & (2 * ((v137 ^ 0x4C) & (2 * ((v137 ^ 0xC) & (2 * (v143 ^ v137 & (10 * v121) & 0x1A)) ^ v143)) ^ v143)) ^ v143)) ^ v143)) ^ v143;
  v153 = v87 + 8;
  STACK[0x6A8] = v153;
  LOBYTE(v121) = *(a1 + v153) ^ v137 ^ (2 * v121) ^ 0xDC;
  LODWORD(v121) = *(a75 + ((-81 * (*(STACK[0xEB0] + (((v121 >> 4) | (16 * v121)) ^ 0x8CLL)) ^ ((v121 >> 4) | (16 * v121)) ^ 0x1D)) ^ 0x47));
  LODWORD(v121) = (((v121 ^ 0x21) - 33) ^ ((v121 ^ 0xFFFFFF89) + 119) ^ ((v121 ^ 0xFFFFFFEE) + 18)) - 114;
  LODWORD(v137) = v121 & 0x1B ^ 0x15;
  LODWORD(v121) = v121 ^ (2 * ((v121 ^ 0x70) & (2 * ((v121 ^ 0x70) & (2 * ((v121 ^ 0x70) & (2 * ((v121 ^ 0x70) & (2 * ((v121 ^ 0x70) & (2 * (((2 * v121) & 0x62 ^ 0x6A) & v121 ^ v137)) ^ v137)) ^ v137)) ^ v137)) ^ v137)) ^ v137)) ^ 0xFFFFFF83;
  v154 = (((v139 ^ 0x54) << 16) | 0x185C90EC) ^ (LODWORD(STACK[0xE10]) ^ 0xE63D7BB4) & ~((v139 ^ 0x54) << 16) ^ ((((16 * v121) | 0x4E) ^ v121) << 24);
  LOBYTE(v137) = (v87 + 66) ^ 0xDB;
  LOBYTE(v139) = (2 * ((v87 + 66) & 0xCC)) & v137 ^ ((v87 + 66) & 0xCC | 0x13) ^ ((2 * ((v87 + 66) & 0xCC)) & 0x10 | 4);
  LOBYTE(v121) = (2 * v137) & 0x16 ^ 0x11 ^ ((2 * v137) ^ 0x2E) & v137;
  LOBYTE(v139) = (4 * v139) & 0x14 ^ v139 ^ ((4 * v139) ^ 0x5C) & v121;
  LOBYTE(v130) = (v87 + 66) ^ (2 * ((16 * v139) & 0x10 ^ v139 ^ ((16 * v139) ^ 0x30) & (((4 * v121) ^ 0x5C) & v121 ^ (4 * v121) & 0x14)));
  LOBYTE(v130) = 7 * (((v130 ^ 0x6F) + 48) ^ ((v130 ^ 0x93) - 44) ^ ((v130 ^ 0x16) + 87)) - 92;
  v155 = v87 + 14;
  STACK[0x698] = v155;
  LOBYTE(v130) = *(a75 + (v130 ^ (2 * ((v130 ^ 0x2E) & (2 * ((v130 ^ 0x2E) & (2 * ((v130 ^ 0x2E) & (2 * ((v130 ^ 0x2E) & (2 * ((v130 ^ 0x2E) & (2 * ((v130 ^ 0x2E) & (2 * v130) ^ (v130 | 0x70))) ^ (v130 | 0x70))) ^ (v130 | 0x70))) ^ (v130 | 0x70))) ^ (v130 | 0x70))) ^ (v130 | 0x70))) ^ *(a1 + v155) ^ 0x6C));
  LOBYTE(v130) = (((v130 ^ 0x7C) - 124) ^ ((v130 ^ 0x36) - 54) ^ ((v130 ^ 0xC) - 12)) - 126;
  LOBYTE(v155) = v130 & 0x5B ^ 0xF7;
  LOBYTE(v130) = v130 ^ (2 * ((v130 ^ 0x7C) & (2 * ((v130 ^ 0x7C) & (2 * ((v130 ^ 0x7C) & (2 * ((v130 ^ 0x7C) & (2 * ((v130 ^ 0x7C) & (2 * (((2 * v130) & 0x7A ^ 0x26) & (v130 ^ 0x7C) ^ v155)) ^ v155)) ^ v155)) ^ v155)) ^ v155)) ^ v155)) ^ 0xA;
  LOBYTE(v155) = (16 * v130) & 0xBF ^ v130;
  v156 = (((v87 - 735310304) ^ 0x90563D99) - 1148859267) ^ (v87 - 735310304) ^ (((v87 - 735310304) ^ 0xC97D7620) - 491878458) ^ (((v87 - 735310304) ^ 0xF2F9BA58) - 651539522) ^ (((v87 - 735310304) ^ 0x7FFEFFFB) + 1412238879);
  LOBYTE(v121) = 7 * (((v156 ^ 0xB) + 1) ^ ((v156 ^ 0x50) + 92) ^ ((v156 ^ 0x41) + 75)) - 72;
  LOBYTE(v137) = v121 & 0x98 ^ 0x6B;
  LOBYTE(v121) = v121 ^ (2 * ((v121 ^ 0x4A) & (2 * ((v121 ^ 0x4A) & (2 * ((v121 ^ 0x4A) & (2 * ((v121 ^ 0x4A) & (2 * (((2 * (v137 ^ v121 & 0x52)) ^ 4) & (v121 ^ 0x4A) ^ v137)) ^ v137)) ^ v137)) ^ v137)) ^ v137)) ^ *(a1 + (v156 ^ 0xD42C0E1ALL));
  LOBYTE(v121) = 5 * (((v121 ^ 0x18) - 65) ^ ((v121 ^ 0x97) + 50) ^ ((v121 ^ 0x17) - 78));
  LOBYTE(v137) = -110 - v121;
  LOBYTE(v121) = ((v121 + 109) & 0xA9 | 0x40) ^ (-110 - v121) & 0xD2;
  LODWORD(v121) = *(STACK[0xEA0] + ((v137 ^ (2 * ((v137 ^ 0x28) & (2 * ((v137 ^ 0x28) & (2 * ((v137 ^ 0x28) & (2 * ((v137 ^ 0x28) & (2 * ((v137 ^ 0x28) & (2 * (v137 & (2 * v121) ^ v121)) ^ v121)) ^ v121)) ^ v121)) ^ v121)) ^ v121))) ^ 0xD4u));
  LOBYTE(v121) = *(v105 + (((((v121 >> 2) | (v121 << 6)) ^ (2 * ((v121 >> 2) | (v121 << 6))) & 0xE4 ^ 0x38) - 1) ^ 0x39));
  LODWORD(v105) = v155 << 8;
  v157 = (v105 ^ 0x77FFCAFF) & (LODWORD(STACK[0xE28]) ^ 0xA65E1B32);
  LOBYTE(v155) = -84 - 83 * (((v121 ^ 0x3D) - 61) ^ ((v121 ^ 0x20) - 32) ^ ((v121 ^ 0x5B) - 91));
  LOBYTE(v137) = v155 & 0x12 ^ 0xF8;
  LOBYTE(v121) = -12 * (v121 ^ 6) + 113;
  LOBYTE(v127) = v121 & 0x18 ^ 0xCC;
  LOBYTE(v155) = *(STACK[0xEC8] + (((v121 ^ v155 ^ (2 * (v137 ^ v127 ^ (v121 ^ 0xE) & (2 * ((v121 ^ 0xE) & (2 * ((v121 ^ 0xE) & (2 * ((v121 ^ 0xE) & (2 * v127) ^ v127)) ^ v127)) ^ v127)) ^ (v155 ^ 0x20) & (2 * ((v155 ^ 0x20) & (2 * ((v155 ^ 0x20) & (2 * ((v155 ^ 0x20) & (2 * (v155 & (2 * v155) & 0x44 ^ v137)) ^ v137)) ^ v137)) ^ v137)))) ^ 0xE6) + 18) ^ 0xB9));
  LOBYTE(v121) = ((((v87 + 32) ^ 0x99) + 125) ^ (v87 + 32) ^ (((v87 + 32) ^ 0x20) - 58) ^ (((v87 + 32) ^ 0x58) - 66) ^ (((v87 + 32) ^ 0xFB) + 31)) & 0x7E;
  LODWORD(v156) = (v148 ^ 0x448C00) & ((((LODWORD(STACK[0x57C]) - 51 * (((v155 ^ 0x6D) + 102) ^ ((v155 ^ 0xEC) - 27) ^ ((v155 ^ 0x40) + 73))) ^ (v121 ^ 0x6F) & (v121 ^ 0xE5) ^ ((((v87 + 32) ^ 0x99) + 125) ^ (v87 + 32) ^ (((v87 + 32) ^ 0x20) - 58) ^ (((v87 + 32) ^ 0x58) - 66) ^ (((v87 + 32) ^ 0xFB) + 31)) & 0x74) << 8) ^ 0x545DE8F2) | v148 & 0xABA2000D;
  LOBYTE(v104) = 7 * ((((v87 + 41) ^ 0x48) - 85) ^ (v87 + 41) ^ (((v87 + 41) ^ 0xA8) + 75) ^ (((v87 + 41) ^ 3) - 30) ^ (((v87 + 41) ^ 0xFE) + 29) ^ 0x1D) + 89;
  LOBYTE(v155) = v104 & 0x2F ^ 0xC4;
  LOBYTE(v104) = v104 ^ (2 * ((v104 ^ 0x26) & (2 * ((v104 ^ 0x26) & (2 * ((v104 ^ 0x26) & (2 * ((v104 ^ 0x26) & (2 * ((v104 ^ 6) & (2 * ((v104 ^ 6) & (2 * v104) & 0x4E ^ v155)) ^ v155)) ^ v155)) ^ v155)) ^ v155)) ^ v155));
  v158 = v87 + 12;
  STACK[0x6A0] = v158;
  LODWORD(v104) = *(a75 + (v104 ^ *(a1 + v158) ^ 0xAE));
  LODWORD(v104) = (((v104 ^ 0xFFFFFF9C) + 100) ^ ((v104 ^ 0xFFFFFFDE) + 34) ^ ((v104 ^ 4) - 4)) - 101;
  LODWORD(v158) = v104 & 0xFFFFFFBC ^ 0x6C;
  LODWORD(v104) = v104 ^ (2 * ((v104 ^ 0x64) & (2 * ((v104 ^ 0x64) & (2 * ((v104 ^ 0x64) & (2 * ((v104 ^ 0x64) & (2 * v158) ^ v158)) ^ v158)) ^ v158)) ^ v158));
  LODWORD(v153) = v156 ^ 0xDFDFF3FF;
  LODWORD(v152) = (v157 & 0x62BFE7DC | v105 & 0x500) ^ (v157 ^ 0xF9000020) & (((v104 ^ (16 * v104) & 0xB0 ^ 0x77777777) << 24) ^ 0xE5401823) ^ 0x9F6FFEEF;
  LODWORD(v104) = (((v149 ^ 0xC47CF8CF) - 1942441491) ^ v156 ^ 0xDFDFF3FF) - (v152 + v154);
  LODWORD(STACK[0x940]) = v104;
  LODWORD(v104) = v104 - 158622492;
  LODWORD(STACK[0xDD0]) = v104;
  LODWORD(v156) = v104 ^ LODWORD(STACK[0xDA0]);
  LODWORD(STACK[0x950]) = v156;
  LODWORD(v156) = v156 ^ LODWORD(STACK[0xCC0]);
  LODWORD(v104) = -402867663 * ((v149 ^ 0xF798B688) + (((v156 ^ 0xABA5A572) - 2070665211) ^ ((v156 ^ 0x7FFC4C61) + 1355661592) ^ ((v156 ^ 0xD459E913) - 77044634)));
  LODWORD(v105) = ((v104 - 1487397214) ^ 0x883E1717) & (2 * ((v104 - 1487397214) & 0xAD3F5797)) ^ (v104 - 1487397214) & 0xAD3F5797;
  LODWORD(v158) = ((2 * ((v104 - 1487397214) ^ 0xD0249633)) ^ 0xFA378348) & ((v104 - 1487397214) ^ 0xD0249633) ^ (2 * ((v104 - 1487397214) ^ 0xD0249633)) & 0x7D1BC1A4;
  LODWORD(v105) = (v158 ^ 0x78138000) & (4 * v105) ^ v105;
  LODWORD(v158) = ((4 * (v158 ^ 0x50840A4)) ^ 0xF46F0690) & (v158 ^ 0x50840A4) ^ (4 * (v158 ^ 0x50840A4)) & 0x7D1BC1A0;
  LODWORD(v105) = (v158 ^ 0x740B0080) & (16 * v105) ^ v105;
  LODWORD(v158) = ((16 * (v158 ^ 0x910C124)) ^ 0xD1BC1A40) & (v158 ^ 0x910C124) ^ (16 * (v158 ^ 0x910C124)) & 0x7D1BC180;
  LODWORD(v105) = v105 ^ 0x7D1BC1A4 ^ (v158 ^ 0x51180000) & (v105 << 8);
  LODWORD(v104) = v104 + 1419212346 + ((((v104 - 1487397214) ^ (2 * ((v105 << 16) & 0x7D1B0000 ^ v105 ^ ((v105 << 16) ^ 0x41A40000) & (((v158 ^ 0x2C03C1A4) << 8) & 0x7D1B0000 ^ 0x641A0000 ^ (((v158 ^ 0x2C03C1A4) << 8) ^ 0x1BC10000) & (v158 ^ 0x2C03C1A4))))) >> 16) ^ 0xFFFF2AF7);
  LODWORD(v104) = 1076964025 * (v104 + v153 + (v104 >> 8)) + ((1076964025 * (v104 + v153 + (v104 >> 8))) >> 16);
  LODWORD(v104) = 1792336085 * (v104 - v152 - (v104 >> 8)) - ((1792336085 * (v104 - v152 - (v104 >> 8))) >> 16);
  LODWORD(STACK[0xD58]) = v149 ^ 0xF798B688;
  LODWORD(v156) = -402867663 * (v156 + (v149 ^ 0xF798B688)) - ((-402867663 * (v156 + (v149 ^ 0xF798B688))) >> 16);
  LODWORD(STACK[0xDE8]) = v153;
  LODWORD(v156) = 1076964025 * (v156 + (v156 >> 8) + v153) + ((1076964025 * (v156 + (v156 >> 8) + v153)) >> 16);
  LODWORD(STACK[0xD98]) = v152;
  LODWORD(v156) = 1792336085 * (v156 - v152 - (v156 >> 8)) - ((1792336085 * (v156 - v152 - (v156 >> 8))) >> 16);
  LODWORD(STACK[0xDB0]) = v154;
  v159 = v156 + v154 - (v156 >> 8);
  v160 = (STACK[0xCB8] & 0x1D ^ 0x1D) + (STACK[0xCB8] & 0x1D);
  LODWORD(v156) = -2080722363 * (v153 ^ (LODWORD(STACK[0xCC8]) + LODWORD(STACK[0xCF8])));
  LODWORD(v156) = -801222199 * ((v156 - WORD1(v156) + ((v156 - WORD1(v156)) >> 8)) ^ v152);
  LODWORD(v105) = (v156 ^ WORD1(v156)) - v154 + ((v156 ^ WORD1(v156)) >> 8);
  LODWORD(v156) = 554385263 * (v104 + v154 - (v104 >> 8)) - ((554385263 * (v104 + v154 - (v104 >> 8))) >> 16);
  LODWORD(v104) = v156 ^ (v156 >> 8);
  v161 = LODWORD(STACK[0xA40]) - v104;
  LODWORD(STACK[0x930]) = v161;
  v162 = v104;
  LODWORD(STACK[0xC24]) = v104;
  LODWORD(v104) = -1310399985 * (((-796575931 * v105) ^ ((-796575931 * v105) >> 16) ^ (((-796575931 * v105) ^ ((-796575931 * v105) >> 16)) >> 8)) + (v149 ^ 0xF798B688));
  LODWORD(v156) = v104 + WORD1(v104) - ((v104 + WORD1(v104)) >> 8);
  LODWORD(STACK[0xE78]) = v156;
  v163 = v161 + v156;
  if ((v161 + v156))
  {
    v164 = STACK[0xD48];
  }

  else
  {
    v164 = STACK[0xD50];
  }

  if (v163)
  {
    v165 = STACK[0xCB0];
  }

  else
  {
    v165 = STACK[0xD48];
  }

  if (v163)
  {
    v166 = STACK[0xD50];
  }

  else
  {
    v166 = STACK[0xCA8];
  }

  if (v163)
  {
    v167 = STACK[0xCA8];
  }

  else
  {
    v167 = STACK[0xCB0];
  }

  v168 = v163 + v161;
  LODWORD(STACK[0xDA0]) = v163 + v161;
  v169 = STACK[0xDC0];
  if ((v163 + v161))
  {
    v170 = STACK[0xDC0];
  }

  else
  {
    v170 = STACK[0xE00];
  }

  v171 = STACK[0xDB8];
  if (v168)
  {
    v172 = STACK[0xE00];
  }

  else
  {
    v172 = STACK[0xDB8];
  }

  LODWORD(STACK[0xA10]) = v172;
  v173 = STACK[0xDF0];
  if (v168)
  {
    v174 = STACK[0xDF0];
  }

  else
  {
    v174 = v169;
  }

  LODWORD(STACK[0xA20]) = v174;
  if (v168)
  {
    v175 = v171;
  }

  else
  {
    v175 = v173;
  }

  v176 = (v168 & 2) == 0;
  if ((v168 & 2) != 0)
  {
    v177 = v175;
  }

  else
  {
    v177 = v170;
  }

  if (v176)
  {
    v178 = v175;
  }

  else
  {
    v178 = v170;
  }

  v179 = (554385263 * v159 - ((554385263 * v159) >> 16)) ^ ((554385263 * v159 - ((554385263 * v159) >> 16)) >> 8);
  v180 = 5 * v179;
  LODWORD(STACK[0xCB0]) = v179;
  if (v176)
  {
    v181 = v172;
  }

  else
  {
    v181 = v174;
  }

  LODWORD(STACK[0xC68]) = v180;
  LODWORD(STACK[0xC4C]) = v160;
  v182 = (v160 & (40 * v179)) + 0x7AFDA1A524E33FDCLL;
  v183 = v182 - ((2 * (v160 & (40 * v179))) & 0x30);
  LODWORD(STACK[0xA18]) = 8 * v162;
  v184 = 8 * v179;
  LODWORD(STACK[0xE10]) = v184;
  v185 = -8 * v162;
  v186 = v184 & 0x18;
  v187 = (-8 * v162) & 0x18;
  v188 = (-8 * v162) & 0x18 ^ 0xA8;
  LOBYTE(v184) = v188 & 0x18 ^ 8;
  v189 = v183 & 0x28 ^ 8;
  v190 = ~v183;
  STACK[0xDF0] = ~v183 & 0x10;
  v191 = ((v178 << v189) << (~v183 & 0x10)) + (v178 >> v184);
  STACK[0x9A8] = v189;
  v192 = ((v177 << v189) << (~v183 & 0x10)) ^ (v177 >> v184);
  v193 = v186 - 37;
  v194 = v186 - 37 - 2 * v186;
  v195 = v194 & 0x28 ^ 8;
  v196 = ~v194;
  v197 = ~v194 & 0x10;
  v198 = (v187 ^ 0xEDAA88651B06D0A8) & 0x18 ^ 8;
  v199 = (v181 << (~v194 & 0x10) << v195) ^ (v181 >> v184);
  STACK[0x8D8] = v177;
  if ((v185 & 0x18) != 0)
  {
    v200 = v192;
  }

  else
  {
    v200 = v177;
  }

  LODWORD(STACK[0x820]) = v200;
  STACK[0x908] = v181;
  if ((v185 & 0x18) != 0)
  {
    v201 = v199;
  }

  else
  {
    v201 = v181;
  }

  LODWORD(STACK[0x918]) = v201;
  STACK[0x938] = v178;
  if ((v185 & 0x18) != 0)
  {
    v202 = v191;
  }

  else
  {
    v202 = v178;
  }

  LODWORD(STACK[0x948]) = v202;
  if ((v163 & 2) != 0)
  {
    v203 = v165;
  }

  else
  {
    v203 = v166;
  }

  if ((v163 & 2) != 0)
  {
    v204 = v166;
  }

  else
  {
    v204 = v165;
  }

  if ((v163 & 2) != 0)
  {
    v205 = v167;
  }

  else
  {
    v205 = v164;
  }

  if ((v163 & 2) != 0)
  {
    v206 = v164;
  }

  else
  {
    v206 = v167;
  }

  STACK[0xE00] = v198;
  v207 = ~v188 & 8;
  v208 = v187 & 0x10;
  v209 = v183 & 0x38 ^ 0x18;
  STACK[0xC80] = v209;
  v210 = ((v203 >> v198) ^ 0xF1F2E9D8) & ~(v203 << v209) | (v203 << v209) & 0xE0D1627;
  STACK[0xCA8] = v190 & 0x18;
  STACK[0xE28] = v183 & 0x20;
  v211 = ((v205 >> (v187 & 0x10) >> v207) ^ 0x99D86283) & ~(v205 << (v190 & 0x18) << (v183 & 0x20)) | (v205 << (v190 & 0x18) << (v183 & 0x20)) & 0x66279D7C;
  STACK[0xC28] = v206;
  if ((v185 & 0x18) != 0)
  {
    v212 = ((v206 << v197 << v195) & 0x41DFC4 | ((v206 >> v198) ^ 0xFFBE203B) & ~(v206 << v197 << v195)) ^ 0xFFBE203B;
  }

  else
  {
    v212 = v206;
  }

  LODWORD(STACK[0x7F8]) = v212;
  STACK[0x638] = v204;
  if ((v185 & 0x18) != 0)
  {
    v213 = ((v204 << v195) << v197) + (v204 >> (v187 & 0x10) >> v207);
  }

  else
  {
    v213 = v204;
  }

  LODWORD(STACK[0x808]) = v213;
  STACK[0x878] = v203;
  if ((v160 & (8 * v180)) != 0)
  {
    v214 = v210 ^ 0xF1F2E9D8;
  }

  else
  {
    v214 = v203;
  }

  LODWORD(STACK[0x7F0]) = v214;
  STACK[0x8C8] = v205;
  if ((v185 & 0x18) != 0)
  {
    v215 = v211 ^ 0x99D86283;
  }

  else
  {
    v215 = v205;
  }

  LODWORD(STACK[0x800]) = v215;
  v216 = STACK[0xE78];
  v217 = STACK[0xCA0];
  if (STACK[0xE78])
  {
    v218 = STACK[0xC78];
  }

  else
  {
    v218 = STACK[0xCA0];
  }

  v219 = STACK[0xA68];
  if (v216)
  {
    v220 = STACK[0xA68];
  }

  else
  {
    v220 = STACK[0xC78];
  }

  LODWORD(STACK[0x8E8]) = v220;
  v221 = STACK[0xC70];
  if (v216)
  {
    v222 = v217;
  }

  else
  {
    v222 = STACK[0xC70];
  }

  LODWORD(STACK[0x8F8]) = v222;
  if ((v216 & 1) == 0)
  {
    v221 = v219;
  }

  v223 = STACK[0xAE0];
  if (v216)
  {
    v224 = STACK[0xE20];
  }

  else
  {
    v224 = STACK[0xAE0];
  }

  v225 = STACK[0xA30];
  if (v216)
  {
    v226 = STACK[0xA30];
  }

  else
  {
    v226 = STACK[0xE20];
  }

  LODWORD(STACK[0x8F0]) = v226;
  v227 = STACK[0xC30];
  if (v216)
  {
    v228 = v223;
  }

  else
  {
    v228 = STACK[0xC30];
  }

  LODWORD(STACK[0x928]) = v228;
  if (v216)
  {
    v229 = v227;
  }

  else
  {
    v229 = v225;
  }

  v230 = (v216 & 2) == 0;
  if ((v216 & 2) != 0)
  {
    v231 = v221;
  }

  else
  {
    v231 = v218;
  }

  if ((v216 & 2) != 0)
  {
    v232 = v218;
  }

  else
  {
    v232 = v221;
  }

  if (v230)
  {
    v233 = v224;
  }

  else
  {
    v233 = v229;
  }

  if (v230)
  {
    v234 = v229;
  }

  else
  {
    v234 = v224;
  }

  v235 = v194 & 0x30 ^ 0x10;
  STACK[0xC70] = v235;
  v236 = ~v193 & 8;
  STACK[0xC78] = v236;
  if (v230)
  {
    v237 = v222;
  }

  else
  {
    v237 = v220;
  }

  if (v230)
  {
    v238 = v228;
  }

  else
  {
    v238 = v226;
  }

  STACK[0x628] = v233;
  if ((v185 & 0x18) != 0)
  {
    v239 = (v233 >> v208 >> v207) + (v233 << v236 << v235);
  }

  else
  {
    v239 = v233;
  }

  LODWORD(STACK[0x7E8]) = v239;
  v240 = STACK[0xDA0];
  v241 = STACK[0xDD8];
  if ((STACK[0xDA0] & 1) == 0)
  {
    v241 = STACK[0xD28];
  }

  LODWORD(STACK[0x8B8]) = v241;
  v242 = STACK[0xDC8];
  if (v240)
  {
    v242 = STACK[0xE88];
  }

  LODWORD(STACK[0x910]) = v242;
  v243 = STACK[0xE18];
  if ((v240 & 1) == 0)
  {
    v243 = STACK[0xD20];
  }

  LODWORD(STACK[0xA68]) = v243;
  v244 = v240;
  if ((v240 & 2) != 0)
  {
    v245 = v242;
  }

  else
  {
    v245 = v241;
  }

  STACK[0xAE0] = v245;
  v176 = (v185 & 0x18) == 0;
  v246 = v185;
  LODWORD(STACK[0xD40]) = v185;
  v247 = v185 & 0x18 | 0xA0;
  v248 = v194 & 0x38 ^ 0x18;
  v249 = v247 & 0x10;
  v250 = (v245 >> (v247 & 8) >> (v247 & 0x10)) + (v245 << v248);
  if (v176)
  {
    v250 = v245;
  }

  LODWORD(STACK[0x7D0]) = v250;
  v251 = STACK[0xC60];
  v252 = STACK[0xBE0];
  if (v163)
  {
    LODWORD(v253) = STACK[0xC60];
  }

  else
  {
    LODWORD(v253) = STACK[0xBE0];
  }

  LODWORD(STACK[0x9B8]) = v253;
  v254 = STACK[0xB18];
  v255 = STACK[0xAB0];
  if (v163)
  {
    v256 = STACK[0xAB0];
  }

  else
  {
    v256 = STACK[0xB18];
  }

  v257 = v247 & 0x18;
  STACK[0xA30] = v196 & 0x18;
  STACK[0xA28] = v194 & 0x20;
  if ((v163 & 2) != 0)
  {
    v253 = v253;
  }

  else
  {
    v253 = v256;
  }

  v258 = (((v253 << (v194 & 0x20)) << (v196 & 0x18)) & 0x44D25D44 | ((v253 >> v257) ^ 0xBB2DA2BB) & ~((v253 << (v194 & 0x20)) << (v196 & 0x18))) ^ 0xBB2DA2BB;
  STACK[0x970] = v253;
  if ((v246 & 0x18) == 0)
  {
    v258 = v253;
  }

  LODWORD(STACK[0x7C8]) = v258;
  if ((v244 & 2) != 0)
  {
    v259 = LODWORD(STACK[0xA10]);
  }

  else
  {
    v259 = LODWORD(STACK[0xA20]);
  }

  v260 = ~v182 & 8;
  STACK[0xCA0] = v260;
  STACK[0xA08] = v183;
  v261 = v183 & 0x34 ^ 0x14;
  STACK[0xA10] = v261;
  STACK[0xC30] = v257;
  v262 = (v231 >> v257) ^ (v231 << v260 << v261);
  LOBYTE(v260) = v197;
  v263 = ((v232 >> v257) ^ 0x8CF70CDA) & ~((v232 << v195) << v197) | ((v232 << v195) << v197) & 0x7308F325;
  v264 = v247 & 8;
  STACK[0xDC0] = v197;
  v265 = v195;
  STACK[0xDB8] = v195;
  v266 = (v237 >> v249 >> (v247 & 8)) + (v237 << v197 << v195);
  v267 = (v238 >> v207 >> v208) ^ (v238 << STACK[0xCA8] << STACK[0xE28]);
  v268 = v183 & 0x2C ^ 0xC;
  STACK[0x9F8] = v268;
  STACK[0xD48] = v208;
  STACK[0xD50] = v207;
  v269 = (v234 >> v208 >> v207) & 0xBB065AFC | (((v234 << v268) << STACK[0xDF0]) ^ 0x44F9A503) & ~(v234 >> v208 >> v207);
  v270 = ((v259 << v265) << v260) + (v259 >> STACK[0xE00]);
  v271 = STACK[0xC68];
  v272 = STACK[0xC4C];
  STACK[0x630] = v231;
  if ((v272 & (8 * v271)) == 0)
  {
    v262 = v231;
  }

  LODWORD(STACK[0x7B0]) = v262;
  v273 = STACK[0xD40];
  v274 = v263 ^ 0x8CF70CDA;
  STACK[0xE20] = v232;
  if ((v273 & 0x18) == 0)
  {
    v274 = v232;
  }

  LODWORD(STACK[0x7A8]) = v274;
  STACK[0x620] = v237;
  if ((v273 & 0x18) != 0)
  {
    v275 = v266;
  }

  else
  {
    v275 = v237;
  }

  LODWORD(STACK[0x7A0]) = v275;
  v276 = v269 ^ 0x44F9A503;
  STACK[0x8C0] = v234;
  if ((v273 & 0x18) == 0)
  {
    v276 = v234;
  }

  LODWORD(STACK[0x7E0]) = v276;
  STACK[0x8D0] = v238;
  if ((v273 & 0x18) != 0)
  {
    v277 = v267;
  }

  else
  {
    v277 = v238;
  }

  LODWORD(STACK[0x7D8]) = v277;
  v278 = STACK[0xE10];
  STACK[0x958] = v259;
  if ((v278 & 0x18) != 0)
  {
    v279 = v270;
  }

  else
  {
    v279 = v259;
  }

  LODWORD(STACK[0x818]) = v279;
  LODWORD(STACK[0xA40]) = v163;
  if (v163)
  {
    v280 = v254;
  }

  else
  {
    v280 = v251;
  }

  LODWORD(STACK[0xB18]) = v280;
  if (v163)
  {
    v281 = v252;
  }

  else
  {
    v281 = v255;
  }

  LODWORD(STACK[0xBE0]) = v281;
  if ((v163 & 2) != 0)
  {
    v282 = v256;
  }

  else
  {
    v282 = LODWORD(STACK[0x9B8]);
  }

  if ((v163 & 2) != 0)
  {
    v283 = v281;
  }

  else
  {
    v283 = v280;
  }

  v284 = v247 & 8;
  STACK[0x888] = v264;
  v285 = v247 & 0x10;
  STACK[0x748] = v249;
  STACK[0x680] = v248;
  v286 = (v283 >> v264 >> v249) + (v283 << v248);
  v287 = STACK[0xE78];
  v288 = LODWORD(STACK[0xE78]) + LODWORD(STACK[0xC40]);
  v289 = STACK[0xDB0];
  v290 = STACK[0xDE8];
  if (v288)
  {
    v291 = STACK[0xDB0];
  }

  else
  {
    v291 = STACK[0xDE8];
  }

  v292 = STACK[0xD58];
  v293 = STACK[0xD98];
  if (v288)
  {
    v294 = STACK[0xD58];
  }

  else
  {
    v294 = STACK[0xD98];
  }

  if ((v288 & 2) != 0)
  {
    v295 = v291;
  }

  else
  {
    v295 = v294;
  }

  STACK[0x790] = v295;
  v296 = STACK[0xD10];
  if ((v287 & 1) == 0)
  {
    v296 = STACK[0xDE0];
  }

  LODWORD(STACK[0x8E0]) = v296;
  v297 = v278;
  STACK[0x900] = v283;
  if ((v278 & 0x18) == 0)
  {
    v286 = v283;
  }

  LODWORD(STACK[0x7C0]) = v286;
  v298 = v288;
  if ((v288 & 2) != 0)
  {
    v299 = v294;
  }

  else
  {
    v299 = v291;
  }

  LODWORD(STACK[0x798]) = -v297;
  v300 = (-v297 & 0x18) - 0x6E58E6318E8FAF58;
  STACK[0x778] = v300;
  v301 = v300 - ((2 * (-v297 & 0x18)) & 0x10);
  STACK[0xA20] = v301;
  v302 = v299 >> (v301 & 0x10) >> (~v301 & 0x28);
  v303 = STACK[0xA18];
  LODWORD(v301) = 2 * (STACK[0xA18] & 0x18);
  LODWORD(STACK[0x810]) = v301;
  v304 = ~((v303 & 0x18) + 56 - v301);
  v305 = ~((v303 & 0x18) + 56) & 8;
  STACK[0x760] = v304 & 0x30;
  v306 = ~((v303 & 0x18) + 56) & 8;
  STACK[0x758] = v305;
  v307 = ((v299 << (v304 & 0x30)) << v305) + v302;
  v308 = v303;
  if ((v303 & 0x18) != 0)
  {
    v309 = v307;
  }

  else
  {
    v309 = v299;
  }

  LODWORD(STACK[0x780]) = v309;
  v310 = STACK[0xC30];
  v311 = (v282 << STACK[0xCA0] << STACK[0xA10]) + (v282 >> STACK[0xC30]);
  v312 = v272 & (8 * v271);
  STACK[0x870] = v282;
  if (v312)
  {
    v313 = v311;
  }

  else
  {
    v313 = v282;
  }

  LODWORD(STACK[0x7B8]) = v313;
  LODWORD(STACK[0x9B8]) = v298;
  if (v298)
  {
    LODWORD(v314) = v293;
  }

  else
  {
    LODWORD(v314) = v289;
  }

  if (v298)
  {
    v315 = v290;
  }

  else
  {
    v315 = v292;
  }

  if ((v298 & 2) != 0)
  {
    v316 = v314;
  }

  else
  {
    v316 = v315;
  }

  if ((v298 & 2) != 0)
  {
    v314 = v315;
  }

  else
  {
    v314 = v314;
  }

  v317 = (32 - v312);
  STACK[0xA10] = v317;
  v318 = (v316 << (v304 & 0x18) << (v304 & 0x20)) + (v316 >> ((32 - v312) & 0x10) >> ((32 - v312) & 8));
  STACK[0xA18] = v308 & 0x18;
  if ((v308 & 0x18) != 0)
  {
    v319 = v318;
  }

  else
  {
    v319 = v316;
  }

  LODWORD(STACK[0x768]) = v319;
  if ((v308 & 0x18) != 0)
  {
    v320 = (v314 << v306 << (v304 & 0x30)) ^ (v314 >> (v317 & 0x18));
  }

  else
  {
    v320 = v314;
  }

  LODWORD(STACK[0x774]) = v320;
  v321 = STACK[0xDA0];
  v322 = LODWORD(STACK[0xDA0]) + LODWORD(STACK[0x930]);
  v323 = (v322 & 1) == 0;
  v324 = v322;
  LODWORD(STACK[0xC60]) = v322;
  v325 = STACK[0xC18];
  v326 = STACK[0x968];
  if (v323)
  {
    v327 = STACK[0xC18];
  }

  else
  {
    v327 = STACK[0x968];
  }

  LODWORD(STACK[0x750]) = v327;
  v328 = STACK[0x960];
  if (v323)
  {
    v329 = v326;
  }

  else
  {
    v329 = STACK[0x960];
  }

  LODWORD(STACK[0x898]) = v329;
  v330 = STACK[0xA70];
  if (v323)
  {
    LODWORD(v331) = STACK[0xA70];
  }

  else
  {
    LODWORD(v331) = v325;
  }

  LODWORD(STACK[0xC40]) = v331;
  if (v323)
  {
    v332 = v328;
  }

  else
  {
    v332 = v330;
  }

  LODWORD(STACK[0x880]) = v332;
  v333 = STACK[0xB88];
  v334 = STACK[0xA98];
  if (v323)
  {
    v335 = STACK[0xB88];
  }

  else
  {
    v335 = STACK[0xA98];
  }

  v336 = STACK[0xE70];
  if (v323)
  {
    v333 = STACK[0xB90];
  }

  else
  {
    v334 = STACK[0xE70];
    v336 = STACK[0xB90];
  }

  if (v323)
  {
    v337 = STACK[0xCF8];
  }

  else
  {
    v337 = STACK[0xCC0];
  }

  if (v323)
  {
    v338 = STACK[0xCC0];
  }

  else
  {
    v338 = STACK[0xCC8];
  }

  if (v323)
  {
    v339 = STACK[0xAA8];
  }

  else
  {
    v339 = STACK[0xCF8];
  }

  if (v323)
  {
    v340 = STACK[0xCC8];
  }

  else
  {
    v340 = STACK[0xAA8];
  }

  v341 = STACK[0x988];
  if (v323)
  {
    v342 = STACK[0x988];
  }

  else
  {
    v342 = STACK[0xAB8];
  }

  v343 = STACK[0x990];
  if (v323)
  {
    v344 = STACK[0xAB8];
  }

  else
  {
    v344 = STACK[0x990];
  }

  v345 = STACK[0xA00];
  if (v323)
  {
    v346 = STACK[0xA00];
  }

  else
  {
    v346 = STACK[0x988];
  }

  if (v323)
  {
    v347 = STACK[0x990];
  }

  else
  {
    v347 = STACK[0xA00];
  }

  v348 = (v324 & 2) == 0;
  if ((v324 & 2) != 0)
  {
    v349 = v333;
  }

  else
  {
    v349 = v334;
  }

  LODWORD(STACK[0xE70]) = v349;
  if ((v324 & 2) == 0)
  {
    v334 = v333;
  }

  LODWORD(STACK[0x8A8]) = v334;
  if ((v324 & 2) != 0)
  {
    v350 = v346;
  }

  else
  {
    v350 = v344;
  }

  STACK[0xC18] = v350;
  if ((v324 & 2) != 0)
  {
    v351 = v344;
  }

  else
  {
    v351 = v346;
  }

  STACK[0xAB8] = v351;
  if ((v324 & 2) != 0)
  {
    v352 = v335;
  }

  else
  {
    v352 = v336;
  }

  LODWORD(STACK[0x930]) = v352;
  if ((v324 & 2) != 0)
  {
    v335 = v336;
  }

  LODWORD(STACK[0x868]) = v335;
  if ((v324 & 2) != 0)
  {
    v331 = v331;
  }

  else
  {
    v331 = v329;
  }

  v353 = (v331 << STACK[0xC70]) << STACK[0xC78];
  v354 = v353 & 0x685C1756 | ((v331 >> v310) ^ 0x97A3E8A9) & ~v353;
  if ((v324 & 2) != 0)
  {
    v355 = v327;
  }

  else
  {
    v355 = v332;
  }

  v356 = ((v355 << STACK[0xDC0] << STACK[0xDB8]) ^ 0xE9633A81) & ~(v355 >> v284 >> v285) | (v355 >> v284 >> v285) & 0x169CC57E;
  v357 = STACK[0xDD0];
  v358 = LODWORD(STACK[0x940]) - ((2 * LODWORD(STACK[0xDD0])) & 0xCAF8B8E) + 2095276715;
  v359 = v358 ^ LODWORD(STACK[0xAE8]);
  v360 = v358 ^ LODWORD(STACK[0xB28]);
  v361 = v358 ^ LODWORD(STACK[0xBF0]);
  v362 = v358 ^ LODWORD(STACK[0xB20]);
  LODWORD(STACK[0x67C]) = v342;
  LODWORD(STACK[0x678]) = v347;
  if (v348)
  {
    v363 = v347;
  }

  else
  {
    v363 = v342;
  }

  STACK[0xA70] = v363;
  LODWORD(STACK[0x664]) = v338;
  LODWORD(STACK[0x660]) = v339;
  if (v348)
  {
    v364 = v338;
  }

  else
  {
    v364 = v339;
  }

  LODWORD(STACK[0x8A0]) = v364;
  LODWORD(STACK[0xAA8]) = v337;
  LODWORD(STACK[0x658]) = v340;
  if (v348)
  {
    v365 = v340;
  }

  else
  {
    v365 = v337;
  }

  LODWORD(STACK[0x960]) = v365;
  v366 = v354 ^ 0x97A3E8A9;
  STACK[0x968] = v331;
  if ((v273 & 0x18) == 0)
  {
    v366 = v331;
  }

  LODWORD(STACK[0xCC8]) = v366;
  v367 = v356 ^ 0xE9633A81;
  STACK[0x618] = v355;
  if ((v273 & 0x18) == 0)
  {
    v367 = v355;
  }

  LODWORD(STACK[0xCC0]) = v367;
  v368 = v321;
  v369 = (v321 & 1) == 0;
  v370 = STACK[0xDD8];
  if (v321)
  {
    v370 = STACK[0xDC8];
  }

  LODWORD(STACK[0xDD8]) = v370;
  v371 = STACK[0xD28];
  if ((v321 & 1) == 0)
  {
    v371 = STACK[0xE88];
  }

  LODWORD(STACK[0xE88]) = v371;
  v372 = v343 + v341;
  v373 = v357 ^ LODWORD(STACK[0xA50]);
  v374 = v357 ^ LODWORD(STACK[0xCD0]);
  v375 = v357;
  v376 = STACK[0xBA0];
  if (v321)
  {
    v377 = STACK[0xD20];
  }

  else
  {
    v377 = STACK[0xBA0];
  }

  if (v369)
  {
    v378 = v360;
  }

  else
  {
    v378 = v361;
  }

  if (v369)
  {
    v379 = v362;
  }

  else
  {
    v379 = v360;
  }

  LODWORD(STACK[0xDC8]) = v379;
  if (v369)
  {
    v380 = v361;
  }

  else
  {
    v380 = v359;
  }

  if (v369)
  {
    v381 = v359;
  }

  else
  {
    v381 = v362;
  }

  if (v369)
  {
    v382 = v374;
  }

  else
  {
    v382 = v373;
  }

  v383 = STACK[0xE78];
  v384 = STACK[0xA58];
  v385 = STACK[0xD10];
  if (STACK[0xE78])
  {
    v385 = STACK[0xA58];
  }

  LODWORD(STACK[0xD20]) = v385;
  v386 = STACK[0xAC8];
  if (v383)
  {
    v384 = STACK[0xAC8];
  }

  LODWORD(STACK[0xD28]) = v384;
  v387 = STACK[0xB08];
  if ((v383 & 1) == 0)
  {
    v387 = STACK[0xCE8];
  }

  LODWORD(STACK[0xBF0]) = v387;
  v388 = (v368 & 1) == 0;
  v389 = v368;
  if (v368)
  {
    v390 = STACK[0xA60];
  }

  else
  {
    v390 = STACK[0xAA4];
  }

  if (v368)
  {
    v391 = STACK[0xAA4];
  }

  else
  {
    v391 = STACK[0xA48];
  }

  if (v388)
  {
    v392 = STACK[0xA60];
  }

  else
  {
    v392 = STACK[0xCB8];
  }

  if (v388)
  {
    v393 = STACK[0xCB8];
  }

  else
  {
    v393 = STACK[0xA48];
  }

  if (v388)
  {
    v394 = v375 ^ LODWORD(STACK[0xC88]);
  }

  else
  {
    v394 = v374;
  }

  if (v388)
  {
    v395 = STACK[0x950];
  }

  else
  {
    v395 = v375 ^ LODWORD(STACK[0xC88]);
  }

  if (v388)
  {
    v396 = v373;
  }

  else
  {
    v396 = STACK[0x950];
  }

  v397 = -2080722363 * (v290 ^ v372);
  v398 = v359 ^ v345;
  v399 = -801222199 * ((((v397 - HIWORD(v397)) >> (((BYTE2(v397) & 0xC) + ~BYTE2(v397)) & 8)) + v397 - HIWORD(v397)) ^ v293);
  v400 = -796575931 * ((v399 ^ HIWORD(v399)) - LODWORD(STACK[0xDB0]) + ((v399 ^ HIWORD(v399)) >> 8));
  v401 = v400 ^ HIWORD(v400) ^ ((v400 ^ HIWORD(v400)) >> 8);
  v402 = (v401 + v292) ^ LODWORD(STACK[0xB98]) ^ (251907311 * (v401 + v292) * ((v401 & 0xB1E4E20F ^ 0xB1E4E20F) + (v401 & 0xB1E4E20F)));
  if (v389)
  {
    v403 = v402;
  }

  else
  {
    v403 = STACK[0xE18];
  }

  if (v389)
  {
    v404 = v376;
  }

  else
  {
    v404 = v402;
  }

  v405 = -402867663 * (v398 + v292) - ((-402867663 * (v398 + v292)) >> 16);
  v406 = 1076964025 * (v405 + v290 + (v405 >> 8)) + ((1076964025 * (v405 + v290 + (v405 >> 8))) >> 16);
  v407 = 1792336085 * (v406 - v293 - (v406 >> 8)) - ((1792336085 * (v406 - v293 - (v406 >> 8))) >> 16);
  v408 = v407 - (v407 >> 8) + LODWORD(STACK[0xDB0]);
  v409 = 554385263 * v408 + 291711973;
  v410 = (v409 ^ 0xCC5C829B) & (2 * (v409 & 0xEE9CD41B)) ^ v409 & 0xEE9CD41B;
  v411 = ((2 * (v409 ^ 0x1C640A89)) ^ 0xE5F1BD24) & (v409 ^ 0x1C640A89) ^ (2 * (v409 ^ 0x1C640A89)) & 0xF2F8DE92;
  v412 = (v411 ^ 0xE0F09000) & (4 * v410) ^ v410;
  v413 = ((4 * (v411 ^ 0x12084292)) ^ 0xCBE37A48) & (v411 ^ 0x12084292) ^ (4 * (v411 ^ 0x12084292)) & 0xF2F8DE90;
  v414 = (v413 ^ 0xC2E05A00) & (16 * v412) ^ v412;
  v415 = ((16 * (v413 ^ 0x30188492)) ^ 0x2F8DE920) & (v413 ^ 0x30188492) ^ (16 * (v413 ^ 0x30188492)) & 0xF2F8DE80;
  v416 = v414 ^ 0xF2F8DE92 ^ (v415 ^ 0x2288C800) & (v414 << 8);
  v417 = v409 ^ (2 * ((v416 << 16) & 0x72F80000 ^ v416 ^ ((v416 << 16) ^ 0x5E920000) & (((v415 ^ 0xD0701692) << 8) & 0x72F80000 ^ 0x2200000 ^ (((v415 ^ 0xD0701692) << 8) ^ 0x78DE0000) & (v415 ^ 0xD0701692))));
  v418 = (v417 & 0x58C92B87 ^ 0xF7B6D6F8) & (v417 ^ 0x44D147FD) ^ v417 & 0x10410105;
  v419 = -839319665 * (((v418 ^ 0x2154025C) + 1412723914) ^ ((v418 ^ 0xAF7E3D00) - 635548778) ^ ((v418 ^ 0x64F7109B) + 295134735)) + 1479745674;
  v420 = LODWORD(STACK[0xA80]) ^ (v408 + 872816476) ^ (((v408 + 872816476) ^ 0x8398E2AD) + 1214317071) ^ (((v408 + 872816476) ^ 0xA6B0C940) + 1833511396) ^ (((v408 + 872816476) ^ 0x6ECBDB4E) - 1523434514) ^ (((v408 + 872816476) ^ 0x7FE5EFFF) - 1273229475) ^ v419 ^ ((v419 ^ 0xF099C778) + 557812321) ^ ((v419 ^ 0x3B76280) - 770625639) ^ ((v419 ^ 0xA2C8E0A1) + 1936633274) ^ ((v419 ^ 0x7FBFF7BE) - 1374045529) ^ 0x1A5FADBB;
  v421 = v383;
  v422 = STACK[0xBC0];
  v423 = STACK[0xC38];
  if (v383)
  {
    v424 = STACK[0xBC0];
  }

  else
  {
    v424 = STACK[0xC38];
  }

  LODWORD(STACK[0xB90]) = v424;
  v425 = STACK[0xBC8];
  if ((v383 & 1) == 0)
  {
    v423 = STACK[0xBC8];
  }

  LODWORD(STACK[0xCF8]) = v423;
  v426 = STACK[0xBA8];
  if (v383)
  {
    v422 = STACK[0xBA8];
  }

  LODWORD(STACK[0xCB8]) = v422;
  if ((v383 & 1) == 0)
  {
    v425 = v426;
  }

  LODWORD(STACK[0xC38]) = v425;
  v427 = STACK[0xDE0];
  if ((v383 & 1) == 0)
  {
    v427 = v386;
  }

  LODWORD(STACK[0xD10]) = v427;
  v428 = STACK[0xC50];
  if ((v383 & 1) == 0)
  {
    v428 = STACK[0x9D0];
  }

  LODWORD(STACK[0xB88]) = v428;
  v429 = STACK[0x9C8];
  if ((v383 & 1) == 0)
  {
    v429 = STACK[0x9C0];
  }

  LODWORD(STACK[0xB28]) = v429;
  LODWORD(STACK[0xAC8]) = v420;
  if (v383)
  {
    v430 = STACK[0xA90];
  }

  else
  {
    v430 = v420;
  }

  LODWORD(v431) = STACK[0x910];
  if ((v389 & 2) != 0)
  {
    v431 = LODWORD(STACK[0x8B8]);
  }

  else
  {
    v431 = v431;
  }

  v432 = STACK[0xA08];
  v433 = STACK[0xA08] & 0x24 ^ 4;
  v434 = STACK[0xCA8];
  v435 = STACK[0xC30];
  v436 = (v431 << STACK[0xCA8] << v433) + (v431 >> STACK[0xC30]);
  v437 = STACK[0xC4C];
  v438 = STACK[0xC68];
  STACK[0x8B8] = v431;
  if ((v437 & (8 * v438)) != 0)
  {
    LODWORD(v431) = v436;
  }

  LODWORD(STACK[0xBA8]) = v431;
  v439 = STACK[0xA40];
  if ((STACK[0xA40] & 2) != 0)
  {
    v440 = LODWORD(STACK[0xB18]);
  }

  else
  {
    v440 = LODWORD(STACK[0xBE0]);
  }

  v441 = (v389 & 2) == 0;
  v442 = STACK[0xDD8];
  v443 = STACK[0xE88];
  if (v441)
  {
    v444 = v442;
  }

  else
  {
    v444 = v443;
  }

  if (v441)
  {
    v445 = v443;
  }

  else
  {
    v445 = v442;
  }

  v446 = STACK[0xA68];
  if (v441)
  {
    v447 = v404;
  }

  else
  {
    v447 = STACK[0xA68];
  }

  LODWORD(STACK[0x910]) = v447;
  if (v441)
  {
    v448 = v446;
  }

  else
  {
    v448 = v404;
  }

  LODWORD(STACK[0xA48]) = v448;
  if (v441)
  {
    v449 = v392;
  }

  else
  {
    v449 = v391;
  }

  LODWORD(STACK[0xA98]) = v449;
  if (v441)
  {
    v450 = v391;
  }

  else
  {
    v450 = v392;
  }

  LODWORD(STACK[0x890]) = v450;
  if (v441)
  {
    v451 = v381;
  }

  else
  {
    v451 = v378;
  }

  STACK[0xB20] = v451;
  if (v441)
  {
    v452 = v378;
  }

  else
  {
    v452 = v381;
  }

  STACK[0xA68] = v452;
  if (v441)
  {
    v453 = v382;
  }

  else
  {
    v453 = v395;
  }

  LODWORD(STACK[0xA60]) = v453;
  if (v441)
  {
    v454 = v395;
  }

  else
  {
    v454 = v382;
  }

  STACK[0xA58] = v454;
  if (v441)
  {
    v455 = v396;
  }

  else
  {
    v455 = v394;
  }

  LODWORD(STACK[0xA80]) = v455;
  if (v441)
  {
    v456 = v394;
  }

  else
  {
    v456 = v396;
  }

  LODWORD(STACK[0xC88]) = v456;
  v457 = STACK[0xDC8];
  if (v441)
  {
    v458 = v380;
  }

  else
  {
    v458 = v457;
  }

  STACK[0xAB0] = v458;
  LODWORD(STACK[0x610]) = v380;
  if (v441)
  {
    v459 = v457;
  }

  else
  {
    v459 = v380;
  }

  STACK[0xDD8] = v459;
  LODWORD(STACK[0x674]) = v377;
  LODWORD(STACK[0x668]) = v403;
  if (v441)
  {
    v460 = v377;
  }

  else
  {
    v460 = v403;
  }

  LODWORD(STACK[0x940]) = v460;
  LODWORD(STACK[0xA50]) = v390;
  LODWORD(STACK[0x990]) = v393;
  if (v441)
  {
    v461 = v393;
  }

  else
  {
    v461 = v390;
  }

  LODWORD(STACK[0xE18]) = v461;
  LODWORD(v462) = STACK[0x8E8];
  if ((v421 & 2) != 0)
  {
    v462 = LODWORD(STACK[0x8F8]);
  }

  else
  {
    v462 = v462;
  }

  if ((v421 & 2) != 0)
  {
    v463 = LODWORD(STACK[0x928]);
  }

  else
  {
    v463 = LODWORD(STACK[0x8F0]);
  }

  if ((STACK[0xC60] & 2) != 0)
  {
    v464 = LODWORD(STACK[0x898]);
  }

  else
  {
    v464 = LODWORD(STACK[0xC40]);
  }

  if ((STACK[0xC60] & 2) != 0)
  {
    v465 = LODWORD(STACK[0x880]);
  }

  else
  {
    v465 = LODWORD(STACK[0x750]);
  }

  LODWORD(STACK[0xDC8]) = v437 & (8 * v438);
  v466 = STACK[0x748];
  v467 = STACK[0x888];
  v468 = (v462 >> STACK[0x748] >> STACK[0x888]) ^ (v462 << STACK[0xDF0] << STACK[0x9F8]);
  v469 = ((v440 << STACK[0xC80]) ^ 0xAC9418D6) & ~(v440 >> v435) | (v440 >> v435) & 0x536BE729;
  STACK[0x928] = v462;
  if ((v437 & (8 * v438)) == 0)
  {
    v468 = v462;
  }

  LODWORD(STACK[0xB98]) = v468;
  STACK[0x8F8] = v440;
  if ((v437 & (8 * v438)) != 0)
  {
    v470 = v469 ^ 0xAC9418D6;
  }

  else
  {
    v470 = v440;
  }

  if (v439)
  {
    v471 = STACK[0xBB0];
  }

  else
  {
    v471 = STACK[0xBB8];
  }

  v472 = STACK[0xBE8];
  if (v439)
  {
    v473 = STACK[0xBE8];
  }

  else
  {
    v473 = STACK[0xBB0];
  }

  if (v439)
  {
    v474 = STACK[0xBB8];
  }

  else
  {
    v474 = STACK[0xB00];
  }

  if (v439)
  {
    v472 = STACK[0xB00];
  }

  v475 = STACK[0xAD8];
  if (v439)
  {
    v476 = STACK[0xAD8];
  }

  else
  {
    v476 = STACK[0xA88];
  }

  if (v439)
  {
    v477 = STACK[0xA88];
  }

  else
  {
    v477 = STACK[0xAF8];
  }

  if (v439)
  {
    v478 = STACK[0xAF8];
  }

  else
  {
    v478 = STACK[0xA78];
  }

  if (v439)
  {
    v475 = STACK[0xA78];
    v479 = STACK[0x9F0];
  }

  else
  {
    v479 = STACK[0x9E8];
  }

  if (v439)
  {
    v480 = STACK[0x9D8];
  }

  else
  {
    v480 = STACK[0x9E0];
  }

  if (v439)
  {
    v481 = STACK[0xCE0];
  }

  else
  {
    v481 = STACK[0xC90];
  }

  v482 = STACK[0xC98];
  if ((v439 & 1) == 0)
  {
    v482 = STACK[0xCD8];
  }

  if ((v439 & 2) != 0)
  {
    v483 = v472;
  }

  else
  {
    v483 = v471;
  }

  LODWORD(STACK[0x898]) = v483;
  if ((v439 & 2) == 0)
  {
    v471 = v472;
  }

  LODWORD(STACK[0xAD8]) = v471;
  if ((v439 & 2) != 0)
  {
    v484 = v478;
  }

  else
  {
    v484 = v476;
  }

  LODWORD(STACK[0xE88]) = v484;
  if ((v439 & 2) != 0)
  {
    v485 = v476;
  }

  else
  {
    v485 = v478;
  }

  LODWORD(STACK[0xAF8]) = v485;
  if ((v439 & 2) != 0)
  {
    v486 = v479;
  }

  else
  {
    v486 = v480;
  }

  STACK[0xBE0] = v486;
  if ((v439 & 2) != 0)
  {
    v487 = v480;
  }

  else
  {
    v487 = v479;
  }

  STACK[0xB18] = v487;
  if ((v439 & 2) != 0)
  {
    v488 = v475;
  }

  else
  {
    v488 = v477;
  }

  LODWORD(STACK[0xCD0]) = v488;
  if ((v439 & 2) != 0)
  {
    v489 = v477;
  }

  else
  {
    v489 = v475;
  }

  LODWORD(STACK[0xBE8]) = v489;
  v490 = v432 & 0x30 ^ 0x10;
  v491 = v445 << STACK[0xCA0];
  STACK[0x688] = v490;
  v492 = ((v491 << v490) ^ 0x42151CC7) & ~(v445 >> v467 >> v466) | (v445 >> v467 >> v466) & 0xBDEAE338;
  STACK[0x750] = v433;
  v493 = ((v464 << STACK[0xE28]) << v434) + (v464 >> v435);
  v494 = v444 << STACK[0xA30] << STACK[0xA28];
  v495 = ((v444 >> v466 >> v467) ^ 0xD3E3C8E0) & ~v494 | v494 & 0x2C1C371F;
  v496 = (v463 >> STACK[0xE00]) & 0x74B8F773 | ((v463 << STACK[0xDC0] << STACK[0xDB8]) ^ 0x8B47088C) & ~(v463 >> STACK[0xE00]);
  LODWORD(STACK[0xB00]) = v473;
  LODWORD(STACK[0xA88]) = v474;
  if ((v439 & 2) != 0)
  {
    v497 = v474;
  }

  else
  {
    v497 = v473;
  }

  STACK[0xDE0] = v497;
  LODWORD(STACK[0x748]) = v481;
  LODWORD(STACK[0x650]) = v482;
  if ((v439 & 2) != 0)
  {
    v498 = v482;
  }

  else
  {
    v498 = v481;
  }

  LODWORD(STACK[0x888]) = v498;
  v499 = STACK[0xD40];
  v500 = STACK[0xD40] & 0x18;
  v501 = v492 ^ 0x42151CC7;
  STACK[0x8F0] = v445;
  if ((v499 & 0x18) == 0)
  {
    v501 = v445;
  }

  LODWORD(STACK[0xBA0]) = v501;
  v502 = (((v465 << v434 << v433) ^ 0x1F3589CF) & ~(v465 >> v435) | (v465 >> v435) & 0xE0CA7630) ^ 0x1F3589CF;
  STACK[0x8E8] = v464;
  if ((v499 & 0x18) != 0)
  {
    v503 = v493;
  }

  else
  {
    v503 = v464;
  }

  LODWORD(STACK[0xBC0]) = v503;
  STACK[0x988] = v465;
  if (!v500)
  {
    v502 = v465;
  }

  LODWORD(STACK[0xBB8]) = v502;
  v504 = STACK[0xE10] & 0x18;
  LODWORD(STACK[0xAE8]) = v504;
  v505 = v495 ^ 0xD3E3C8E0;
  STACK[0xC30] = v444;
  if (!v504)
  {
    v505 = v444;
  }

  LODWORD(STACK[0xBB0]) = v505;
  v506 = v496 ^ 0x8B47088C;
  STACK[0xE28] = v463;
  if (!v504)
  {
    v506 = v463;
  }

  LODWORD(STACK[0xBC8]) = v506;
  v507 = STACK[0xB90];
  v508 = STACK[0xC38];
  if ((v421 & 2) != 0)
  {
    v509 = STACK[0xC38];
  }

  else
  {
    v509 = STACK[0xB90];
  }

  LODWORD(STACK[0xC40]) = v509;
  if ((v421 & 2) != 0)
  {
    v510 = v507;
  }

  else
  {
    v510 = v508;
  }

  LODWORD(STACK[0xC38]) = v510;
  v511 = STACK[0xBF0];
  if ((v421 & 2) != 0)
  {
    v512 = v430;
  }

  else
  {
    v512 = STACK[0xBF0];
  }

  LODWORD(STACK[0x880]) = v512;
  if ((v421 & 2) != 0)
  {
    v513 = v511;
  }

  else
  {
    v513 = v430;
  }

  LODWORD(STACK[0xA78]) = v513;
  v514 = STACK[0xB88];
  v515 = STACK[0xB28];
  if ((v421 & 2) != 0)
  {
    v516 = v514;
  }

  else
  {
    v516 = v515;
  }

  STACK[0xE10] = v516;
  if ((v421 & 2) != 0)
  {
    v517 = v515;
  }

  else
  {
    v517 = v514;
  }

  STACK[0xD40] = v517;
  v518 = STACK[0x8E0];
  v519 = STACK[0xD28];
  if ((v421 & 2) != 0)
  {
    v520 = STACK[0xD28];
  }

  else
  {
    v520 = STACK[0x8E0];
  }

  LODWORD(STACK[0xC4C]) = v520;
  if ((v421 & 2) != 0)
  {
    v521 = v518;
  }

  else
  {
    v521 = v519;
  }

  LODWORD(STACK[0xAA4]) = v521;
  v522 = STACK[0x790];
  v523 = STACK[0x790] << STACK[0x758] << STACK[0x760];
  v524 = ~STACK[0x778] & 8;
  v525 = STACK[0xA20] & 0x30 ^ 0x20;
  STACK[0x778] = v524;
  STACK[0x760] = v525;
  v526 = v523 + (v522 >> v524 >> v525);
  v527 = STACK[0xCF8];
  if ((v421 & 2) != 0)
  {
    v527 = STACK[0xCB8];
  }

  LODWORD(STACK[0x950]) = v527;
  v528 = STACK[0xD20];
  if ((v421 & 2) != 0)
  {
    v528 = STACK[0xD10];
  }

  LODWORD(STACK[0x8E0]) = v528;
  v529 = STACK[0x798] & 0x18;
  LODWORD(STACK[0xA00]) = v529;
  if (v529)
  {
    v530 = v526;
  }

  else
  {
    v530 = v522;
  }

  v531 = LODWORD(STACK[0x52C]) ^ LODWORD(STACK[0x768]) ^ LODWORD(STACK[0x7A8]);
  v532 = *(STACK[0xEA0] + ((-5 * (HIBYTE(v531) ^ 0x42)) ^ 0xAFLL));
  v533 = ((((v532 ^ 0x46) << STACK[0x570]) - ((2 * ((v532 ^ 0x46) << STACK[0x570])) & 8) + 4) ^ 4) + ((v532 >> 2) ^ 0x11);
  v534 = LODWORD(STACK[0x528]) ^ LODWORD(STACK[0x7A0]) ^ LODWORD(STACK[0x780]);
  v535 = LODWORD(STACK[0x524]) ^ LODWORD(STACK[0x7B0]) ^ LODWORD(STACK[0x774]);
  v536 = LODWORD(STACK[0x520]) ^ LODWORD(STACK[0xB98]) ^ v530;
  v537 = 295 * ((v533 ^ 0x89 ^ (2 * v533) & 0xE4) - 1) + 98530;
  v538 = STACK[0xC08];
  v539 = *(STACK[0xC08] + 4 * (295 * (BYTE2(v534) ^ 0x41) + 98530 - 1144 * ((3754343 * (295 * (BYTE2(v534) ^ 0x41u) + 98530)) >> 32)));
  HIDWORD(v540) = *(STACK[0xC08] + 4 * (295 * (BYTE1(v535) ^ 0x65) + 98530 - 1144 * ((3754343 * (295 * (BYTE1(v535) ^ 0x65u) + 98530)) >> 32)));
  LODWORD(v540) = HIDWORD(v540);
  v541 = (v540 >> 8) ^ __ROR4__(*(STACK[0xC08] + 4 * (v537 - 1144 * ((3754343 * v537) >> 32))), 24) ^ (v539 - ((2 * v539) & 0xBE90D3DE) - 548902417) ^ __ROR4__(*(STACK[0xC08] + 4 * (295 * v536 + 98530 - 1144 * ((3754343 * (295 * v536 + 98530)) >> 32))), 16);
  v542 = v421 + LODWORD(STACK[0xBD0]);
  LODWORD(STACK[0xB28]) = v542;
  v543 = STACK[0x9B8];
  v544 = LODWORD(STACK[0x4E4]) ^ LODWORD(STACK[0x7B8]) ^ 0xCDA1EAB8 ^ (LODWORD(STACK[0x9B8]) + (v541 ^ 0xDF4869EF) - v542);
  v545 = *(v538 + 4 * (295 * BYTE1(v544) + 98530 - 1144 * ((3754343 * (295 * BYTE1(v544) + 98530)) >> 32)));
  v546 = (295 * ((LOBYTE(STACK[0x4E4]) ^ LOBYTE(STACK[0x7B8])) ^ 0xB8u ^ (LOBYTE(STACK[0x9B8]) + (v541 ^ 0xEF) - v542)) + 98530) % (((v545 >> 8) & 0x30 ^ 0x8F5E35B5) & 0x420 ^ 0xDA59ABF8 ^ (((v545 >> 8) & 0x30 ^ 0x8F5E35B5) & 0x8A5821A0 | 0x50018A00));
  v547 = *(v538 + 4 * (295 * (BYTE1(v534) ^ 0x7B) + 98530 - 1144 * ((3754343 * (295 * (BYTE1(v534) ^ 0x7Bu) + 98530)) >> 32)));
  v548 = *(v538 + 4 * (295 * (BYTE2(v531) ^ 0xA1) + 98530 - 1144 * ((3754343 * (295 * (BYTE2(v531) ^ 0xA1u) + 98530)) >> 32))) ^ (v547 >> 8) ^ __ROR4__(*(v538 + 4 * (295 * (v535 ^ 0x17) + 98530 - 1144 * ((3754343 * (295 * (v535 ^ 0x17u) + 98530)) >> 32))), 16) ^ ((v547 << 24) - ((v547 << 25) & 0xD4000000) + 1787918247);
  LODWORD(v540) = __ROR4__(*(v538 + 4 * (295 * HIBYTE(v536) + 98530 - 1144 * ((3754343 * (295 * HIBYTE(v536) + 98530)) >> 32))), 24);
  LODWORD(STACK[0xC68]) = v500;
  v549 = STACK[0xCB0];
  v550 = (v548 ^ v540 ^ 0x6A9177A7) - LODWORD(STACK[0xCB0]) - v529;
  v551 = STACK[0xA10] & 0x5BEB3D58;
  LODWORD(STACK[0xBF0]) = v551;
  v552 = v550 + v551 + LODWORD(STACK[0xC24]) - v500 + (((v500 ^ 0x37267EF6) + 1889584033) ^ (v500 + 2015968601) ^ ((v500 ^ 0x6B75AEB3) + 754127846)) - 1200012631;
  LOBYTE(v542) = *(STACK[0xE98] + ((((v536 >> 20) & 0xF | 0xEBBF2B90) & ((v536 >> 12) & 0xF0 ^ 0xEBFF6BDF) | (v536 >> 12) & 0x60) ^ 0xEBBF2B1DLL));
  v553 = 295 * (40 - 81 * (((v542 ^ 0xBC) + 44) ^ ((v542 ^ 5) - 109) ^ ((v542 ^ 0x89) + 31))) + 98530;
  HIDWORD(v540) = *(v538 + 4 * (295 * (HIBYTE(v535) ^ 0x72) + 98530 - 1144 * ((3754343 * (295 * (HIBYTE(v535) ^ 0x72) + 98530)) >> 32)));
  LODWORD(v540) = HIDWORD(v540);
  v554 = *(v538 + 4 * (295 * (v534 ^ 0x6D) + 98530 - 1144 * ((3754343 * (295 * (v534 ^ 0x6Du) + 98530)) >> 32)));
  v555 = (*(v538 + 4 * (v553 - 1144 * ((3754343 * v553) >> 32))) ^ (v554 << 16) ^ HIWORD(v554) ^ ((v540 >> 24) - ((2 * (v540 >> 24)) & 0xE1EF9910) + 1895287944) ^ __ROR4__(*(v538 + 4 * (295 * (BYTE1(v531) ^ 0xAB) + 98530 - 1144 * ((3754343 * (295 * (BYTE1(v531) ^ 0xABu) + 98530)) >> 32))), 8) ^ 0x70F7CC88) - v549 - v504 + LODWORD(STACK[0xDC8]) + LODWORD(STACK[0xC24]);
  v556 = 295 * (v531 ^ 0x65) + 98530 - 1144 * ((3754343 * (295 * (v531 ^ 0x65u) + 98530)) >> 32);
  v557 = 295 * (HIBYTE(v534) ^ 0xBC) + 98530 - 1144 * ((3754343 * (295 * (HIBYTE(v534) ^ 0xBC) + 98530)) >> 32);
  v558 = 295 * BYTE1(v536) + 98530 - 1144 * ((3754343 * (295 * BYTE1(v536) + 98530)) >> 32);
  v559 = 295 * (BYTE2(v535) ^ 0xFE) + 98530 - 1144 * ((3754343 * (295 * (BYTE2(v535) ^ 0xFEu) + 98530)) >> 32);
  v560 = LODWORD(STACK[0x518]) ^ LODWORD(STACK[0x7C8]) ^ v555;
  v561 = LODWORD(STACK[0x4D8]) ^ v470 ^ 0x58F9FC05 ^ v552;
  v562 = v560 ^ 0x23B700A1;
  v563 = (v560 ^ 0x23B700A1u) >> 24;
  v564 = STACK[0xEC0];
  v565 = 295 * ((*(STACK[0xEC0] + ((BYTE1(v560) - 7) ^ 0x98)) ^ ((v563 & 0x6D ^ 0x6D) + (v563 & 0x6D) - ((2 * ((v563 & 0x6D ^ 0x6D) + (v563 & 0x6D))) & 0xF7) - 5) ^ 0xFD) * (v563 & 4 ^ (v563 & 0xC5 ^ 0x1B) & (v563 & 0xC5 ^ 0xFB) ^ ~((v563 & 0xC5 ^ 0xFB) & 0x21))) + 98530;
  v566 = 295 * v561 + 98530 - 1144 * ((3754343 * (295 * v561 + 98530)) >> 32);
  v567 = *(v538 + 4 * (295 * v563 + 98530 - 1144 * ((3754343 * (295 * v563 + 98530)) >> 32)));
  v568 = (-81 * (*(STACK[0xEB0] + (((v567 >> 20) & 0xF0 | (v567 >> 28)) ^ 0x93)) ^ (((v567 >> 20) & 0xF0 | (v567 >> 28)) - ((2 * ((v567 >> 20) & 0xF0 | (v567 >> 28))) & 0xB4) + 90) ^ 0x58)) | (v567 << 8);
  v569 = LODWORD(STACK[0xAD0]) ^ __ROR4__(*(v538 + 4 * v556), 16) ^ __ROR4__(*(v538 + 4 * v557), 24) ^ *(v538 + 4 * v559);
  LODWORD(v540) = __ROR4__(*(v538 + 4 * v558), 8);
  v570 = v421 + (LODWORD(STACK[0xD18]) ^ 0xEFB412FC);
  LODWORD(STACK[0xD28]) = v570;
  v571 = v569 ^ v540 ^ v543 ^ v570 ^ LODWORD(STACK[0x7C0]);
  v572 = *(v538 + 4 * (295 * v562 + 98530 - 1144 * ((3754343 * (295 * v562 + 98530)) >> 32)));
  LOBYTE(v556) = (v571 & 0x18 ^ 0x18) + (v571 & 0x18);
  v573 = v571 ^ LODWORD(STACK[0x56C]);
  LOBYTE(v555) = (v561 >> v556) - ((2 * (v561 >> v556)) & 0x66);
  LOBYTE(v556) = *(STACK[0xEA8] + ((((v573 & 0x8A ^ 0x8A) + (v573 & 0x8A)) ^ (BYTE1(v561) - 7)) ^ 0xEDLL));
  LOBYTE(v567) = ((v556 ^ 0x7E) - 126) ^ ((v556 ^ 0x3F) - 63) ^ ((v556 ^ 7) - 7);
  LOBYTE(v559) = v567 - 118;
  LOBYTE(v567) = ((v567 + 10) & 0xA4 | 0x43) ^ (v567 - 118) & 0x8E;
  v574 = v559 ^ ((16 * ((v556 & 2) != 0)) | 0xA7) ^ (2 * ((v559 ^ 0x24) & (2 * ((v559 ^ 0x24) & (2 * ((v559 ^ 0x24) & (2 * ((v559 ^ 0x24) & (2 * ((v559 ^ 0x24) & (2 * (v559 & (2 * v567) ^ v567)) ^ v567)) ^ v567)) ^ v567)) ^ v567)) ^ v567));
  v575 = 295 * ((v555 - 77) ^ 0xB3) + 98530;
  v576 = (BYTE2(v561) + 334) * ((v545 >> 8) & 0x25 ^ 0x7F4EE04 ^ (((v545 >> 8) & 0x25) - ((v545 >> 7) & 0x42) + 133492515)) % 0x478;
  LODWORD(v561) = LODWORD(STACK[0x4CC]) ^ __ROR4__(*(v538 + 4 * v546), 16) ^ __ROR4__(*(v538 + 4 * (295 * (-59 * v574) + 98530 - 1144 * ((3754343 * (295 * (-59 * v574) + 98530)) >> 32))), 8) ^ *(v538 + 4 * (295 * BYTE2(v562) + 98530 - 1144 * ((3754343 * (295 * BYTE2(v562) + 98530)) >> 32))) ^ __ROR4__(*(v538 + 4 * (295 * HIBYTE(v573) + 98530 - 1144 * ((3754343 * (295 * HIBYTE(v573) + 98530)) >> 32))), 24) ^ LODWORD(STACK[0xBA0]);
  v577 = LODWORD(STACK[0x4C0]) ^ __ROR4__(*(v538 + 4 * (v565 - 1144 * ((3754343 * v565) >> 32))), 8) ^ __ROR4__(*(v538 + 4 * v566), 16) ^ __ROR4__(*(v538 + 4 * (295 * HIBYTE(v544) + 98530 - 1144 * ((3754343 * (295 * HIBYTE(v544) + 98530)) >> 32))), 24) ^ *(v538 + 4 * (295 * BYTE2(v573) + 98530 - 1144 * ((3754343 * (295 * BYTE2(v573) + 98530)) >> 32))) ^ LODWORD(STACK[0xBA8]);
  v578 = LODWORD(STACK[0x4BC]) ^ ((HIWORD(v572) ^ 0xDF48562F) & ((v572 << 16) ^ 0xFFDFFFFF) | (v572 << 16) & 0x20B70000) ^ __ROR4__(*(v538 + 4 * (295 * BYTE1(v573) + 98530 - 1144 * ((3754343 * (295 * BYTE1(v573) + 98530)) >> 32))), 8) ^ *(v538 + 4 * (295 * BYTE2(v544) + 98530 - 1144 * ((3754343 * (295 * BYTE2(v544) + 98530)) >> 32))) ^ __ROR4__(*(v538 + 4 * (v575 - 1144 * ((3754343 * v575) >> 32))), 24) ^ LODWORD(STACK[0xBB0]);
  v579 = *(STACK[0xEA0] + ((-5 * BYTE2(v577)) ^ 0xAFLL));
  v580 = LODWORD(STACK[0x4B0]) ^ __ROR4__(v545, 8) ^ v568 ^ *(v538 + 4 * v576) ^ __ROR4__(*(v538 + 4 * (295 * v573 + 98530 - 1144 * ((3754343 * (295 * v573 + 98530)) >> 32))), 16) ^ LODWORD(STACK[0x7D0]);
  LOBYTE(v545) = ((v579 >> 2) | (v579 << 6)) ^ (2 * ((v579 >> 2) | (v579 << 6))) & 0xE4;
  v581 = *(STACK[0xEA0] + ((-5 * BYTE2(v561)) ^ 0xAFLL));
  LOBYTE(v556) = ((v581 >> 2) | (v581 << 6)) ^ (2 * ((v581 >> 2) | (v581 << 6))) & 0xE4;
  LOBYTE(v581) = *(v564 + (((BYTE2(v580) ^ 0xCE) - 7) ^ 0x98));
  v582 = 295 * (v578 ^ 0x2F) + 98530 - 1144 * ((3754343 * (295 * (v578 ^ 0x2Fu) + 98530)) >> 32);
  v583 = 295 * ((v556 ^ 0x38) - 1) + 98530;
  v584 = v583 - 1144 * ((3754343 * v583) >> 32);
  v585 = *(v538 + 4 * (295 * (HIBYTE(v578) ^ 0xDF) + 98530 - 1144 * ((3754343 * (295 * (HIBYTE(v578) ^ 0xDF) + 98530)) >> 32)));
  v586 = *(v538 + 4 * (295 * v561 + 98530 - 1144 * ((3754343 * (295 * v561 + 98530)) >> 32)));
  v587 = 295 * ((v545 ^ 0x38) - 1) + 98530;
  v588 = v587 - 1144 * ((3754343 * v587) >> 32);
  v589 = a62 - 59 * (*(v564 + ((HIBYTE(v585) - 7) ^ ((BYTE3(v561) | 0xFFFFFFC5) - (BYTE3(v561) & 0x3A) + 155) ^ 0xF8)) ^ 0x4F ^ (3 * ((HIWORD(v586) & 0x40 ^ 0x40) + (HIWORD(v586) & 0x40)) + 100));
  LOBYTE(v575) = (a62 - 59 * (*(v564 + ((HIBYTE(v585) - 7) ^ ((BYTE3(v561) | 0xFFFFFFC5) - (BYTE3(v561) & 0x3A) + 155) ^ 0xF8)) ^ 0x4F ^ (3 * ((BYTE2(v586) & 0x40 ^ 0x40) + (BYTE2(v586) & 0x40)) + 100))) & 0xBF ^ 0xB0;
  v590 = ((v589 ^ (2 * ((v589 ^ 0x5E) & (2 * ((v589 ^ 0x5E) & (2 * ((v589 ^ 0x5E) & (2 * ((v589 ^ 0x5E) & (2 * ((v589 ^ 0x5E) & (2 * ((v589 ^ 0x5E) & (2 * v589) & 0x3E ^ v575)) ^ v575)) ^ v575)) ^ v575)) ^ v575)) ^ v575))) ^ 0x5052592D) & ((v585 << 8) ^ 0x5FFF7DFF) | (v585 << 8) & 0xAFADA600;
  v591 = 295 * (a74 - 59 * (((v581 ^ 0x4F) + 27) ^ ((v581 ^ 0xCD) - 103) ^ ((v581 ^ 0xE9) - 67))) + 98530;
  v592 = *(v538 + 4 * (295 * BYTE1(v577) + 98530 - 1144 * ((3754343 * (295 * BYTE1(v577) + 98530)) >> 32)));
  v593 = ((BYTE1(v578) ^ 0x56) + 334) * (((v592 >> 8) & 0x127 ^ 0x127) + ((v592 >> 8) & 0x127));
  HIDWORD(v540) = *(v538 + 4 * (295 * BYTE1(v561) + 98530 - 1144 * ((3754343 * (295 * BYTE1(v561) + 98530)) >> 32)));
  LODWORD(v540) = HIDWORD(v540);
  v594 = *(v538 + 4 * v588) ^ __ROR4__(*(v538 + 4 * (295 * (v580 ^ 0x57) + 98530 - 1144 * ((3754343 * (295 * (v580 ^ 0x57u) + 98530)) >> 32))), 16) ^ ((v540 >> 8) - ((2 * (v540 >> 8)) & 0x378EEEAA) - 1681426603) ^ 0xCB952EC7 ^ v590;
  HIDWORD(v540) = *(v538 + 4 * (295 * (HIBYTE(v580) ^ 0xCC) + 98530 - 1144 * ((3754343 * (295 * (HIBYTE(v580) ^ 0xCC) + 98530)) >> 32)));
  LODWORD(v540) = HIDWORD(v540);
  v595 = ((v540 >> 24) - ((2 * (v540 >> 24)) & 0x4510C536) + 579363483) ^ __ROR4__(v586, 16) ^ __ROR4__(v592, 8) ^ *(v538 + 4 * (295 * (BYTE2(v578) ^ 0x48) + 98530 - 1144 * ((3754343 * (295 * (BYTE2(v578) ^ 0x48u) + 98530)) >> 32))) ^ 0x2288629B;
  HIDWORD(v540) = *(v538 + 4 * (295 * v577 + 98530 - 1144 * ((3754343 * (295 * v577 + 98530)) >> 32)));
  LODWORD(v540) = HIDWORD(v540);
  v596 = STACK[0xD08];
  v597 = STACK[0x860];
  v598 = LODWORD(STACK[0x4A8]) ^ LODWORD(STACK[0x860]) ^ LODWORD(STACK[0xD08]) ^ LODWORD(STACK[0x598]) ^ __ROR4__(*(v538 + 4 * (295 * HIBYTE(v577) + 98530 - 1144 * ((3754343 * (295 * HIBYTE(v577) + 98530)) >> 32))), 24) ^ (*(v538 + 4 * v582) << 16) ^ HIWORD(*(v538 + 4 * v582)) ^ *(v538 + 4 * v584) ^ __ROR4__(*(v538 + 4 * (295 * (BYTE1(v580) ^ 0xD6) + 98530 - 1144 * ((3754343 * (295 * (BYTE1(v580) ^ 0xD6u) + 98530)) >> 32))), 8) ^ LODWORD(STACK[0xBB8]);
  v599 = LODWORD(STACK[0x4A4]) ^ LODWORD(STACK[0xCC0]) ^ (v595 + LODWORD(STACK[0x554]));
  v600 = LODWORD(STACK[0x4A0]) ^ LODWORD(STACK[0xCC8]) ^ ((*(v538 + 4 * (v591 - 1144 * ((3754343 * v591) >> 32))) ^ __ROR4__(*(v538 + 4 * (v593 - 1144 * ((3754343 * v593) >> 32))), 8) ^ __ROR4__(*(v538 + 4 * (295 * BYTE3(v561) + 98530 - 1144 * ((3754343 * (295 * BYTE3(v561) + 98530)) >> 32))), 24) ^ ((v540 >> 16) - ((2 * (v540 >> 16)) & 0xB4F5A8E2) - 629484431) ^ 0xDA7AD471) + LODWORD(STACK[0x828]));
  v601 = LODWORD(STACK[0x49C]) ^ LODWORD(STACK[0xBC0]) ^ (v594 + LODWORD(STACK[0x540]));
  LOBYTE(v594) = *(STACK[0xEA8] + (((BYTE2(v600) ^ 0xF) - 7) ^ 0x67));
  LOBYTE(v561) = (((v594 ^ 0x90) + 112) ^ ((v594 ^ 0x65) - 101) ^ ((v594 ^ 0xB3) + 77)) + 122;
  LOBYTE(v561) = (8 * v594) & 0x10 ^ v561 ^ (2 * (((2 * (((2 * (((2 * (((2 * (v561 ^ 0x34)) & 0x38 ^ 0x1C) & (v561 ^ 0x34))) ^ 0x1C) & (v561 ^ 0x34))) ^ 0x1C) & (v561 ^ 0x34))) ^ 0x5C) & (v561 ^ 0x34)));
  LOBYTE(v594) = *(STACK[0xE98] + ((((v598 >> 28) ^ 0x564D22C4) & (~(v598 >> 20) | 0xFFFFFF3F) | (v598 >> 20) & 0x30) ^ 0x564D2249));
  HIDWORD(v540) = *(v538 + 4 * (295 * v598 + 98530 - 1144 * ((3754343 * (295 * v598 + 98530)) >> 32)));
  LODWORD(v540) = HIDWORD(v540);
  v602 = v599 >> ((STACK[0xAE0] & 0x10 ^ 0x10) + (STACK[0xAE0] & 0x10));
  LOBYTE(v591) = v602 - ((2 * v602) & 0x83);
  v603 = *(v538 + 4 * (295 * BYTE3(v599) + 98530 - 1144 * ((3754343 * (295 * BYTE3(v599) + 98530)) >> 32)));
  v604 = STACK[0xEC8];
  LOBYTE(v602) = *(STACK[0xEC8] + ((HIBYTE(v603) + 18) ^ 0xB9));
  LODWORD(v602) = (a69 - 51 * (((v602 ^ 0x78) - 117) ^ ((v602 ^ 0xF4) + 7) ^ ((v602 ^ 0x4D) - 64))) | (v603 << 8);
  LOBYTE(v603) = *(STACK[0xEC0] + ((BYTE2(v601) - 7) ^ 0x98));
  LOBYTE(v584) = -48 - 81 * (((v594 ^ 0x17) - 23) ^ ((v594 ^ 0x8D) + 115) ^ ((v594 ^ 0xAA) + 86));
  v605 = 295 * (-48 - 59 * (((v603 ^ 0x8D) - 118) ^ ((v603 ^ 0x13) + 24) ^ ((v603 ^ 0xF5) - 14))) + 98530;
  v606 = 295 * (v600 ^ 0x14) + 98530 - 1144 * ((3754343 * (295 * (v600 ^ 0x14u) + 98530)) >> 32);
  v607 = 295 * ((v591 - 63) ^ 0xC1) + 98530;
  v608 = (v540 >> 16) ^ __ROR4__(*(v538 + 4 * (295 * BYTE1(v601) + 98530 - 1144 * ((3754343 * (295 * BYTE1(v601) + 98530)) >> 32))), 8) ^ *(v538 + 4 * (v607 - 1144 * ((3754343 * v607) >> 32)));
  v609 = *(v538 + 4 * (295 * (BYTE1(v600) ^ 0x33) + 98530 - 1144 * ((3754343 * (295 * (BYTE1(v600) ^ 0x33u) + 98530)) >> 32)));
  v610 = *(v538 + 4 * (295 * BYTE2(v598) + 98530 - 1144 * ((3754343 * (295 * BYTE2(v598) + 98530)) >> 32))) ^ (v609 << 24) ^ (v609 >> 8);
  v611 = (v608 & 0x14E ^ 0x14E) + (v608 & 0x14E) + v599;
  HIDWORD(v540) = *(v538 + 4 * (295 * BYTE1(v599) + 98530 - 1144 * ((3754343 * (295 * BYTE1(v599) + 98530)) >> 32)));
  LODWORD(v540) = HIDWORD(v540);
  v612 = 295 * HIBYTE(v601) + 98530 - 1144 * ((3754343 * (295 * HIBYTE(v601) + 98530)) >> 32);
  LODWORD(v561) = 295 * (-59 * (v561 ^ 0x51)) + 98530;
  LODWORD(v561) = (v540 >> 8) ^ __ROR4__(*(v538 + 4 * (295 * v601 + 98530 - 1144 * ((3754343 * (295 * v601 + 98530)) >> 32))), 16) ^ __ROR4__(*(v538 + 4 * (295 * v584 + 98530 - 1144 * ((3754343 * (295 * v584 + 98530)) >> 32))), 24) ^ *(v538 + 4 * (v561 - 1144 * ((3754343 * v561) >> 32)));
  LODWORD(v540) = __ROR4__(*(v538 + 4 * (295 * (HIBYTE(v600) ^ 0xF4) + 98530 - 1144 * ((3754343 * (295 * (HIBYTE(v600) ^ 0xF4) + 98530)) >> 32))), 24);
  v613 = *(v538 + 4 * (v605 - 1144 * ((3754343 * v605) >> 32)));
  v614 = LODWORD(STACK[0x490]) ^ v608 ^ v540 ^ LODWORD(STACK[0x7D8]);
  v615 = LODWORD(STACK[0x488]) ^ v613 ^ __ROR4__(*(v538 + 4 * v606), 16) ^ __ROR4__(*(v538 + 4 * (295 * BYTE1(v598) + 98530 - 1144 * ((3754343 * (295 * BYTE1(v598) + 98530)) >> 32))), 8) ^ v602 ^ LODWORD(STACK[0x7E8]);
  v616 = *(v538 + 4 * (295 * v611 - 1144 * ((3754343 * (295 * v611)) >> 32)));
  v617 = STACK[0x484];
  LODWORD(STACK[0x7D8]) = v610;
  v618 = v617 ^ v610 ^ __ROR4__(v616, 16) ^ __ROR4__(*(v538 + 4 * v612), 24) ^ LODWORD(STACK[0xBC8]);
  v619 = LODWORD(STACK[0x560]) >> (!(v561 & 1) + (v561 & 1));
  v620 = ((v619 ^ 0x17171717) & STACK[0xD30]) >> STACK[0x850];
  v621 = ((LODWORD(STACK[0x480]) ^ (v619 ^ 0x3E042513u) & STACK[0x530]) << STACK[0x838]) << STACK[0x830];
  v622 = STACK[0xAD0];
  v623 = v561 ^ LODWORD(STACK[0xAD0]) ^ LODWORD(STACK[0x7E0]) ^ ((v620 ^ 0x2D0C0774) & ~v621 | v621 & 0xD2F3F88B);
  LOBYTE(v621) = *(v604 + ((HIBYTE(v614) + 18) ^ 0xB9));
  v624 = STACK[0xE90];
  LODWORD(v561) = 295 * ((*(STACK[0xE90] + ((-5 * BYTE2(v614)) ^ 0x26)) ^ (-5 * BYTE2(v614) - ((-10 * BYTE2(v614)) & 0xDF) + 111) ^ 0xED) - 1) + 98530;
  LODWORD(v602) = 295 * (a61 - 51 * (((v621 ^ 0xA5) + 108) ^ ((v621 ^ 0x14) - 37) ^ ((v621 ^ 0x70) - 65))) + 98530;
  v625 = *(v538 + 4 * (295 * HIBYTE(v618) + 98530 - 1144 * ((3754343 * (295 * HIBYTE(v618) + 98530)) >> 32)));
  LODWORD(v564) = HIBYTE(v625) + 96;
  v626 = v564 & 0x5A ^ 0x54;
  LOBYTE(v564) = v564 ^ (2 * ((v564 ^ 0x30) & (2 * ((v564 ^ 0x30) & (2 * ((v564 ^ 0x30) & (2 * ((v564 ^ 0x30) & (2 * ((v564 ^ 0x30) & (2 * v626) ^ v626)) ^ v626)) ^ v626)) ^ v626)) ^ v626));
  LODWORD(v564) = (a72 - 51 * (((*(v604 + (v564 ^ 0xE3u)) ^ 0xF8) + 65) ^ ((*(v604 + (v564 ^ 0xE3u)) ^ 0xA7) + 32) ^ ((*(v604 + (v564 ^ 0xE3u)) ^ 0x9E) + 39))) | (v625 << 8);
  LODWORD(v561) = LODWORD(STACK[0x478]) ^ *(v538 + 4 * (v561 - 1144 * ((3754343 * v561) >> 32))) ^ __ROR4__(*(v538 + 4 * (295 * (HIBYTE(v623) ^ 0x2D) + 98530 - 1144 * ((3754343 * (295 * (HIBYTE(v623) ^ 0x2D) + 98530)) >> 32))), 24) ^ __ROR4__(*(v538 + 4 * (295 * (BYTE1(v615) ^ 0xC2) + 98530 - 1144 * ((3754343 * (295 * (BYTE1(v615) ^ 0xC2u) + 98530)) >> 32))), 8);
  v627 = *(v538 + 4 * (295 * v618 + 98530 - 1144 * ((3754343 * (295 * v618 + 98530)) >> 32)));
  LODWORD(STACK[0x7E8]) = v627;
  LODWORD(v561) = v561 ^ __ROR4__(v627, 16) ^ LODWORD(STACK[0x7F0]);
  v628 = LODWORD(STACK[0x858]) ^ v597 ^ LODWORD(STACK[0x5A0]);
  v629 = LODWORD(STACK[0x558]) ^ LODWORD(STACK[0x594]);
  v630 = STACK[0x474];
  LODWORD(STACK[0x7F0]) = v629;
  v631 = *(v538 + 4 * (295 * (v615 ^ 0xB8) + 98530 - 1144 * ((3754343 * (295 * (v615 ^ 0xB8u) + 98530)) >> 32)));
  v632 = v630 ^ v629 ^ v628 ^ LODWORD(STACK[0x468]) ^ __ROR4__(*(v538 + 4 * (295 * BYTE1(v614) + 98530 - 1144 * ((3754343 * (295 * BYTE1(v614) + 98530)) >> 32))), 8) ^ (v631 << 16) ^ HIWORD(v631) ^ *(v538 + 4 * (295 * (BYTE2(v623) ^ 0xC) + 98530 - 1144 * ((3754343 * (295 * (BYTE2(v623) ^ 0xCu) + 98530)) >> 32))) ^ LODWORD(STACK[0x7F8]) ^ v564;
  v633 = STACK[0xC24];
  LODWORD(v620) = LODWORD(STACK[0x460]) ^ __ROR4__(*(v538 + 4 * (295 * BYTE1(v618) + 98530 - 1144 * ((3754343 * (295 * BYTE1(v618) + 98530)) >> 32))), 8) ^ __ROR4__(*(v538 + 4 * (v602 - 1144 * ((3754343 * v602) >> 32))), 24) ^ *(v538 + 4 * (295 * (BYTE2(v615) ^ 0xA0) + 98530 - 1144 * ((3754343 * (295 * (BYTE2(v615) ^ 0xA0u) + 98530)) >> 32))) ^ __ROR4__(*(v538 + 4 * (295 * (v623 ^ 0x74) + 98530 - 1144 * ((3754343 * (295 * (v623 ^ 0x74u) + 98530)) >> 32))), 16) ^ LODWORD(STACK[0x800]) ^ 0x8DA1B51B;
  v634 = *(v538 + 4 * (295 * (HIBYTE(v615) ^ 0x6D) + 98530 - 1144 * ((3754343 * (295 * (HIBYTE(v615) ^ 0x6D) + 98530)) >> 32)));
  LODWORD(v602) = *(STACK[0xEA0] + ((-5 * (BYTE1(v623) ^ 7)) ^ 0xAFLL));
  LODWORD(v602) = 295 * ((((v602 >> 2) | (v602 << 6)) ^ (2 * ((v602 >> 2) | (v602 << 6))) & 0xE4 ^ 0x38) - 1) + 98530;
  v635 = LODWORD(STACK[0x548]) ^ LODWORD(STACK[0x458]) ^ v596 ^ *(v538 + 4 * (295 * BYTE2(v618) + 98530 - 1144 * ((3754343 * (295 * BYTE2(v618) + 98530)) >> 32))) ^ __ROR4__(*(v538 + 4 * (v602 - 1144 * ((3754343 * v602) >> 32))), 8) ^ __ROR4__(*(v538 + 4 * (295 * v614 + 98530 - 1144 * ((3754343 * (295 * v614 + 98530)) >> 32))), 16) ^ LODWORD(STACK[0x808]) ^ (((*(v624 + ((-5 * HIBYTE(v634)) ^ 0x26)) ^ (-5 * HIBYTE(v634) + (~(-10 * HIBYTE(v634)) | 0xB7) + 37) ^ 0xA6) - 1) | (v634 << 8));
  LOBYTE(v631) = *(v604 + ((v620 + 18) ^ 0xB9));
  LOBYTE(v631) = ((v631 ^ 0xDA) - 62) ^ ((v631 ^ 0x17) + 13) ^ ((v631 ^ 0xC) + 24);
  LOBYTE(v602) = 77 * v631 + 29;
  LOBYTE(v631) = v602 + (v631 << 7);
  LOBYTE(v614) = (v631 & 0x84 | 0x7A) ^ v631 & 0xFC;
  LOBYTE(v631) = v631 ^ (2 * ((v602 ^ 4) & (2 * ((v602 ^ 4) & (2 * ((v602 ^ 4) & (2 * (((2 * (v602 & (2 * v614) ^ v614)) ^ 8) & (v602 ^ 4) ^ v614)) ^ v614)) ^ v614)) ^ v614));
  LOBYTE(v614) = *(v624 + ((-5 * (HIBYTE(v635) ^ 0x84)) ^ 0x26)) ^ (-5 * (HIBYTE(v635) ^ 0x84) - 2 * ((-5 * (HIBYTE(v635) ^ 0x84)) & 1) + 1);
  LOBYTE(v602) = *(STACK[0xEA8] + ((BYTE3(v620) - 7) ^ 0x67));
  LOBYTE(v584) = (((v602 ^ 0x53) - 83) ^ ((v602 ^ 0x29) - 41) ^ ((v602 ^ 0x3C) - 60)) - 114;
  LOBYTE(v623) = v584 & 0xF2 ^ 0x29;
  LODWORD(v602) = 295 * (-59 * ((8 * v602) & 0x10 ^ v584 ^ (2 * ((v584 ^ 0x20) & (2 * ((v584 ^ 0x20) & (2 * ((v584 ^ 0x20) & (2 * ((v584 ^ 0x20) & (2 * ((v584 ^ 0x20) & (2 * ((v584 ^ 0x20) & (2 * v623) ^ v623)) ^ v623)) ^ v623)) ^ v623)) ^ v623)) ^ v623)) ^ 0x7F)) + 98530;
  v636 = *(v538 + 4 * (295 * (BYTE2(v635) ^ 0xE5) + 98530 - 1144 * ((3754343 * (295 * (BYTE2(v635) ^ 0xE5u) + 98530)) >> 32))) ^ __ROR4__(*(v538 + 4 * (v602 - 1144 * ((3754343 * v602) >> 32))), 24);
  LODWORD(v624) = STACK[0xAE8];
  v637 = 295 * ((v614 ^ 0x83) - 1) + 98530;
  v638 = 295 * (v631 ^ 0x78) + 98530 - 1144 * ((3754343 * (295 * (v631 ^ 0x78u) + 98530)) >> 32);
  v639 = STACK[0xA18];
  v640 = LODWORD(STACK[0xDC8]) ^ (STACK[0xA18] - LODWORD(STACK[0x810]) + 1219464031) ^ __ROR4__(*(v538 + 4 * (295 * (BYTE1(v632) ^ 0xD8) + 98530 - 1144 * ((3754343 * (295 * (BYTE1(v632) ^ 0xD8u) + 98530)) >> 32))), 8);
  LODWORD(v602) = *(v538 + 4 * ((((v561 + 334) & 0x2A2) + 1182093957 + ((v561 + 334) & 0x2A2 ^ 0xB98AAEA2)) * (v561 + 334) % 0x478));
  LODWORD(STACK[0x810]) = v636;
  v641 = v640 ^ v636 ^ __ROR4__(v602, 16) ^ 0x48AF8B5F;
  LODWORD(v564) = STACK[0xCB0];
  v642 = (LODWORD(STACK[0xB28]) ^ LODWORD(STACK[0xD28]) ^ *(v538 + 4 * (295 * (BYTE2(v632) ^ 0x62) + 98530 - 1144 * ((3754343 * (295 * (BYTE2(v632) ^ 0x62u) + 98530)) >> 32))) ^ __ROR4__(*(v538 + 4 * (295 * BYTE1(v561) + 98530 - 1144 * ((3754343 * (295 * BYTE1(v561) + 98530)) >> 32))), 8) ^ __ROR4__(*(v538 + 4 * (v637 - 1144 * ((3754343 * v637) >> 32))), 24) ^ __ROR4__(*(v538 + 4 * v638), 16)) - LODWORD(STACK[0xCB0]) + v633;
  LODWORD(v602) = LODWORD(STACK[0x820]) ^ v622;
  LODWORD(STACK[0xCC0]) = v642;
  LODWORD(v604) = (295 * (v602 ^ v642) + 98530) % (((v641 & 0x78) + (v641 & 0x78 ^ 0x78)) | 0x400u);
  v643 = *(v538 + 4 * (295 * (HIBYTE(v632) ^ 0xEA) + 98530 - 1144 * ((3754343 * (295 * (HIBYTE(v632) ^ 0xEA) + 98530)) >> 32)));
  LOBYTE(v584) = *(STACK[0xEB8] + ((HIBYTE(v643) + 18) ^ 0x91));
  LOBYTE(v584) = (((v584 ^ 0x57) - 87) ^ ((v584 ^ 0x68) - 104) ^ ((v584 ^ 0x79) - 121)) + 66;
  LOBYTE(v638) = v584 & 0xBE ^ 0x93;
  LOBYTE(v584) = v584 ^ (2 * ((v584 ^ 0x18) & (2 * ((v584 ^ 0x18) & (2 * ((v584 ^ 0x18) & (2 * ((v584 ^ 0x18) & (2 * ((v584 ^ 0x18) & (2 * ((v584 ^ 0x18) & (2 * v638) ^ v638)) ^ v638)) ^ v638)) ^ v638)) ^ v638)) ^ v638));
  v644 = *(v538 + 4 * (295 * BYTE2(v561) + 98530 - 1144 * ((3754343 * (295 * BYTE2(v561) + 98530)) >> 32))) ^ __ROR4__(*(v538 + 4 * (295 * BYTE1(v620) + 98530 - 1144 * ((3754343 * (295 * BYTE1(v620) + 98530)) >> 32))), 8) ^ ((-51 * (v584 ^ (v584 >> 4) ^ (v584 >> 1) ^ 0xA)) | (v643 << 8));
  LODWORD(v561) = LODWORD(STACK[0x918]) ^ LODWORD(STACK[0x538]) ^ (v624 - v639 + v641);
  LODWORD(v620) = v564 ^ v622 ^ v633 ^ LODWORD(STACK[0x818]);
  LODWORD(v540) = __ROR4__(*(v538 + 4 * (295 * (v635 ^ 0xC8) + 98530 - 1144 * ((3754343 * (295 * (v635 ^ 0xC8u) + 98530)) >> 32))), 16);
  v645 = v620 ^ v540 ^ v644;
  v646 = 295 * (v620 ^ v540 ^ v644) + 98530;
  LODWORD(STACK[0x820]) = v645;
  HIDWORD(v540) = *(v538 + 4 * v604);
  LODWORD(v540) = HIDWORD(v540);
  LODWORD(v564) = (v540 >> 16) ^ __ROR4__(*(v538 + 4 * (295 * (BYTE1(v561) ^ 0x57) + 98530 - 1144 * ((3754343 * (295 * (BYTE1(v561) ^ 0x57u) + 98530)) >> 32))), 8);
  v647 = *(STACK[0xED8] + 8 * ((1009 * (73 * ((((BYTE2(v645) ^ 0x62) - BYTE2(v645)) & 0x13 | ((v602 ^ v642) ^ 0xEC) & ~((BYTE2(v645) ^ 0x62) - BYTE2(v645))) ^ 0xEC) != 0)) ^ LODWORD(STACK[0x9A0])));
  LODWORD(STACK[0x818]) = v561 ^ 0xACF95795;
  LODWORD(STACK[0x21C]) = HIWORD(v645);
  LODWORD(STACK[0x918]) = v564;
  LODWORD(STACK[0x948]) = v646 - 1144 * ((3754343 * v646) >> 32);
  return v647();
}

uint64_t sub_100999F80@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v8 = v5 - 1;
  *(a1 + v8) = *(v7 - 112 + v8) ^ *(v2 + v8) ^ (-21 * v8) ^ *(v3 + v8) ^ *(v4 + v8) ^ 0x5F;
  return (*(v6 + 8 * (((v8 == 0) * (a2 - 32912)) ^ a2)))();
}

uint64_t sub_10099A0AC()
{
  v5 = v1 % *v3;
  v6 = *(v2 + v5);
  v7 = v6 & 0x2E ^ 0xB7;
  v8 = v6 ^ (~*(v2 + (v1 - 37) % *v3) << 6) ^ (2 * (v7 ^ *(v2 + (v1 - 7) % *v3) ^ (v0 ^ v6 ^ 8) & (2 * ((v0 ^ v6 ^ 8) & (2 * ((v0 ^ v6 ^ 8) & (2 * ((v0 ^ v6 ^ 8) & 0x6E ^ v7)) ^ v7)) ^ v7))));
  *(v2 + v5) = (((v8 ^ 0x8A) + 5) ^ ((v8 ^ 0x83) + 14) ^ ((v8 ^ 0x67) - 22)) + 95;
  return (*(v4 + 8 * ((45191 * (v1 == 255)) ^ v0)))();
}

uint64_t sub_10099A184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a1 - 1;
  *(a2 + v10) ^= *(v5 + (v10 & 0xF)) ^ *(v3 + (v10 & 0xF)) ^ ((v10 & 0xF) * v6) ^ *((v10 & 0xF) + v4 + 3) ^ v7;
  return (*(v9 + 8 * (((v10 == 0) * v8) ^ v2)))();
}

uint64_t sub_10099A320()
{
  v5 = STACK[0x1FEC];
  v6 = 155453101 * (v1 ^ 0xE6261BCF);
  LOWORD(STACK[0x2F68]) = 16376 - 1709 * (v1 ^ 0x1BCF);
  *(v4 - 212) = v6 + 2069619737;
  *(v4 - 208) = v2 - v6 + 1777286891;
  *(v4 - 200) = v0;
  *(v4 - 232) = v6 ^ 0xE2FBFE53;
  *(v4 - 228) = v6 ^ 0x7CD6B3C8;
  v7 = STACK[0x4C0];
  *(v4 - 248) = &STACK[0x1E90];
  *(v4 - 240) = v7;
  *(v4 - 256) = ((v2 ^ 0x6260C0FC) - 1650488872 + 40409587 * v5 - 1378586854) ^ v6;
  *(v4 - 224) = 0;
  v8 = (*(v3 + 8 * LODWORD(STACK[0x264])))(v4 - 256);
  return (*(v3 + 8 * ((35753 * (*(v4 - 204) == -371865839)) ^ v2)))(v8);
}

uint64_t sub_10099A42C(int a1, double a2, double a3, double a4, double a5, int8x16_t a6, int8x16_t a7)
{
  v12 = vaddq_s8(vaddq_s8(*v8, a7), vmvnq_s8(vandq_s8(vaddq_s8(*v8, *v8), a6)));
  v10[-1] = vaddq_s8(vaddq_s8(v8[-1], a7), vmvnq_s8(vandq_s8(vaddq_s8(v8[-1], v8[-1]), a6)));
  *v10 = v12;
  return (*(v11 + 8 * (((v9 == 0) * a1) ^ v7)))();
}

uint64_t sub_10099A484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v22 = (((a4 ^ a2 ^ 0x4768 ^ 0x8C2A400B) + 1943375131) ^ ((a4 ^ 0x53CC0E0) - 87867616) ^ (((((a2 - 1021703488) | 0x14814F81) - 1993890483) ^ a4) - 1623422228)) + 90448324;
  v23 = v22 < 0x1B8E5AA7;
  v24 = (((a4 ^ 0xEB5381C4) + 346848828) ^ ((a4 ^ 0xD95DC096) + 648167274) ^ ((a4 ^ 0xDBDB8643) + 606370237)) + 90448312;
  v25 = (v24 < 0x1B8E5AA7) ^ v23;
  v26 = v24 < v22;
  if (!v25)
  {
    v23 = v26;
  }

  return (*(v21 + 8 * ((50425 * v23) ^ a2)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t sub_10099AA38()
{
  v6 = 1112314453 * ((((v5 - 136) | 0xF745BF1F) - ((v5 - 136) | 0x8BA40E0) + 146424032) ^ 0x181395C6);
  *(v5 - 136) = v6 + v0 + 7750;
  *(v5 - 128) = v1;
  *(v5 - 120) = v6 + v3 - 660265971;
  v7 = (*(v2 + 8 * (v0 + 49938)))(v5 - 136);
  return v4(v7);
}

uint64_t sub_10099AC70(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  LODWORD(STACK[0xE00]) = 0;
  LODWORD(STACK[0xDF8]) = 0;
  LODWORD(STACK[0xE08]) = 0;
  LODWORD(STACK[0xDD8]) = 0;
  LODWORD(STACK[0xE28]) = 0;
  LODWORD(STACK[0xDC0]) = 0;
  LODWORD(STACK[0xDE0]) = 0;
  v13 = v7 ^ 0xAC6A;
  v14 = v7 ^ 0xF0;
  v15 = STACK[0xE78];
  v16 = STACK[0xE78] >> 8;
  v17 = STACK[0xC88];
  v18 = 16 * STACK[0xC88];
  *(STACK[0xF10] + 115) = STACK[0xE78] ^ *(STACK[0xF50] + 64) ^ 0x19;
  v19 = 46 - 81 * (*(STACK[0xEB0] + (((23 * (((v14 + 9) & v16 ^ 9) + ((v14 + 9) & v16 ^ 0x84))) ^ (v18 & 0xF0 | (v17 >> 4))) ^ 0xE0)) ^ (23 * (((v14 + 9) & v16 ^ 9) + ((v14 + 9) & v16 ^ 0x84))) ^ (v18 & 0xF0 | (v17 >> 4)) ^ 0x71);
  v20 = v19 & 0xD2 | 9;
  v21 = v20 ^ v19 & 0x36;
  v22 = (((*(STACK[0xF50] + 33) ^ 0xD6) - 84) ^ ((*(STACK[0xF50] + 33) ^ 0xA0) - 34) ^ ((*(STACK[0xF50] + 33) ^ 0x62) + 32)) - 68;
  v23 = v22 & 0xFC ^ 0x88;
  v24 = *(STACK[0xEB8] + (v22 ^ (2 * ((v22 ^ 0x6C) & (2 * ((v22 ^ 0x6C) & (2 * ((v22 ^ 0x6C) & (2 * ((v22 ^ 0x6C) & (2 * ((v22 ^ 0x6C) & (2 * v23) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ a7));
  v25 = (((v24 ^ 0xFFFFFFF1) + 15) ^ ((v24 ^ v8) - 27) ^ ((v24 ^ 0xFFFFFFAC) + 84)) - 23;
  v26 = v25 & 0xFFFFFFD7 ^ 0x33;
  v27 = v25 ^ (2 * ((v25 ^ 0x70) & (2 * ((v25 ^ 0x70) & (2 * ((v25 ^ 0x70) & (2 * ((v25 ^ 0x70) & (2 * (v25 & (2 * (((2 * v25) & 0x62 ^ 0x26) & v25 ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26));
  v28 = -51 * (v27 ^ (v27 >> 4) ^ (v27 >> 1) ^ 0x51) - 45;
  LOBYTE(v26) = v28 & 0xA1 ^ 0xCA;
  *(STACK[0xF10] + 149) = v19 ^ v28 ^ (2 * ((v19 ^ 0x52) & (2 * ((v19 ^ 0x52) & (2 * ((v19 ^ 0x52) & (2 * ((v19 ^ 0x52) & (2 * ((a1 ^ (2 * (v19 & (2 * v20) ^ v21))) & (v19 ^ 0x52) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21 ^ v26 ^ (v28 ^ 0x2C) & (2 * ((v28 ^ 0x2C) & (2 * ((v28 ^ 0x2C) & (2 * ((v28 ^ 0x2C) & (2 * ((v28 ^ 0x2C) & (2 * (v28 & (2 * v28) & 0x5A ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26)))) ^ 0xC1;
  *(STACK[0xF10] + 50) = v16 ^ *(STACK[0xF50] + 68) ^ 0xDF;
  LOBYTE(v16) = (((*(STACK[0xF50] + 108) ^ BYTE1(v17) ^ 0x6F) - 90) ^ ((*(STACK[0xF50] + 108) ^ BYTE1(v17) ^ 0xCC) + 7) ^ ((*(STACK[0xF50] + 108) ^ BYTE1(v17) ^ 0x4D) - 120)) - 9;
  v29 = v16 & 0xE ^ 0xC;
  LOBYTE(v16) = *(STACK[0xEC8] + ((v16 ^ (2 * ((v16 ^ 0x74) & (2 * ((v16 ^ 0x74) & (2 * ((v16 ^ 0x74) & (2 * ((v16 ^ 0x74) & (2 * ((v16 ^ 0x74) & (2 * v29) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29))) ^ 0xB7u));
  LOBYTE(v16) = 71 - 51 * (((v16 ^ v10) + 63) ^ ((v16 ^ 0xD0) + 81) ^ ((v16 ^ 0xAF) + 48));
  v30 = v16 & 0x77 ^ 0xDC;
  *(STACK[0xF10] + 84) = v16 ^ (2 * ((v16 ^ 0x5E) & (2 * ((v16 ^ 0x5E) & (2 * ((v16 ^ 0x5E) & (2 * ((v16 ^ 0x5E) & (2 * ((v16 ^ 0x5E) & (2 * ((v16 ^ 0x1E) & (2 * v16) & 0x3E ^ v30)) ^ v30)) ^ v30)) ^ v30)) ^ v30)) ^ v30)) ^ 0xF3;
  *(STACK[0xF10] + 143) = *(STACK[0xF50] + 123) ^ BYTE2(v15) ^ 0x55;
  v31 = STACK[0xEA8];
  LODWORD(v16) = *(STACK[0xEA8] + (((BYTE2(v17) ^ 0x1F) - 7) ^ 0x67));
  v32 = v16 >> 1;
  LOBYTE(v16) = (((v16 ^ 0xE3) + 29) ^ ((v16 ^ v8) - 27) ^ ((v16 ^ v10) + 66)) + 121;
  v33 = v16 & 0xF5 ^ 0xA0;
  LOBYTE(v16) = v16 ^ ((16 * (v32 & 1)) | 0x2D) ^ (2 * ((v16 ^ v12) & (2 * ((v16 ^ v12) & (2 * ((v16 ^ v12) & (2 * ((v16 ^ v12) & (2 * ((v16 ^ v12) & (2 * (v16 & (2 * v33) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33));
  LOBYTE(v16) = -92 - 59 * (((v16 ^ 0x6B) + 59) ^ ((v16 ^ 2) + 84) ^ ((v16 ^ 0x3C) + 110));
  LOBYTE(v32) = v16 & 0x9F ^ 0xE;
  *(STACK[0xF10] + 19) = *(STACK[0xF50] + 116) ^ v16 ^ (2 * ((v16 ^ 2) & (2 * ((v16 ^ 2) & (2 * ((v16 ^ 2) & (2 * ((v16 ^ 2) & (2 * ((v16 ^ 2) & (2 * ((v16 ^ 2) & (2 * v32) ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ 0x83;
  *(STACK[0xF10] + 78) = *(STACK[0xF50] + 72) ^ BYTE3(v15) ^ 0xFD;
  *(STACK[0xF10] + 112) = *(STACK[0xF50] + 13) ^ BYTE3(v17) ^ 0xF6;
  LOBYTE(v16) = (((*(STACK[0xF50] + 65) ^ 0x84) - 34) ^ ((*(STACK[0xF50] + 65) ^ 0x4C) + 22) ^ ((*(STACK[0xF50] + 65) ^ 0xCB) - 109)) + 23;
  v34 = v16 & 0x1F ^ 0x4C;
  v35 = *(v31 + ((v16 ^ (2 * ((v16 ^ 6) & (2 * ((v16 ^ 6) & (2 * ((v16 ^ 6) & (2 * ((v16 ^ 6) & (2 * ((v16 ^ 6) & (2 * ((v16 ^ 6) & (2 * v16) & 0xE ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34))) ^ 0x78u));
  LOBYTE(v16) = ((v35 ^ v9) + 91) ^ ((v35 ^ 0xB9) + 71) ^ ((v35 ^ 0x5A) - 90);
  LOBYTE(v26) = (v16 - 10) & 0xB8 | (v16 + 118) & 2 | 1;
  v36 = -59 * ((8 * v35) & 0x10 ^ (v16 + 118) ^ (2 * (((v16 + 118) ^ 0x38) & (2 * (((v16 + 118) ^ 0x38) & (2 * (((v16 + 118) ^ 0x38) & (2 * (((v16 + 118) ^ 0x38) & (2 * (((v16 + 118) ^ 0x38) & (2 * ((v16 + 118) & (2 * (v26 ^ (v16 + 118) & 2)) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ 0x37) - 41;
  v37 = v36 & 0x29 | 0x96;
  LOBYTE(v28) = v37 ^ v36 & 0x7C;
  *(STACK[0xF10] + 13) = BYTE4(v15) ^ v36 ^ (2 * ((v36 ^ 0x28) & (2 * ((v36 ^ 0x28) & (2 * ((v36 ^ 0x28) & (2 * ((v36 ^ 0x28) & (2 * ((v36 ^ 0x28) & (2 * (v36 & (2 * v37) ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ 0x20;
  LOBYTE(v32) = *(STACK[0xF50] + 80) + 79;
  v38 = v32 & 0xC2 ^ 0x9C;
  LOBYTE(v32) = *(v31 + ((v32 ^ (2 * ((v32 ^ 0x28) & (2 * ((v32 ^ 0x28) & (2 * ((v32 ^ 0x28) & (2 * ((v32 ^ 0x28) & (2 * (v32 & (2 * v32) & 0x54 ^ v38)) ^ v38)) ^ v38)) ^ v38)) ^ v38))) ^ 0xA5u));
  v39 = (((v32 ^ 0xF) - 15) ^ ((v32 ^ 0xAD) + 83) ^ ((v32 ^ 0xE4) + 28)) - 107;
  LOBYTE(v28) = v39 & 0x91 | 0xC;
  *(STACK[0xF10] + 47) = BYTE4(v17) ^ (-59 * ((8 * v32) & 0x10 ^ v39 ^ (2 * ((v39 ^ 0x18) & (2 * ((v39 ^ 0x18) & (2 * ((v39 ^ 0x18) & (2 * ((v39 ^ 0x18) & (2 * ((v39 ^ 0x18) & (2 * ((v39 ^ 0x18) & (2 * v39) & 0x32 ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ 0x1C)) ^ 0x69;
  *(STACK[0xF10] + 106) = BYTE5(v15) ^ *(STACK[0xF50] + 84) ^ 0xC8;
  LOBYTE(v16) = ((*(STACK[0xF50] + 87) ^ 0x73) + 7) ^ ((*(STACK[0xF50] + 87) ^ 0x39) + 77) ^ ((*(STACK[0xF50] + 87) ^ 0xC5) - 79);
  LOBYTE(v32) = 20 - 5 * v16;
  v40 = v32 & 0x27 ^ 0xAA;
  LOBYTE(v16) = v32 ^ (2 * ((v32 ^ 0x52) & (2 * ((v32 ^ 0x52) & (2 * ((v32 ^ 0x52) & (2 * ((v32 ^ 0x52) & (2 * ((v32 ^ 0x52) & (2 * ((54 * v16 + 40) & (v32 ^ 0x52) & 0x26 ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ v40));
  LODWORD(v16) = *(STACK[0xEA0] + ((-5 * (BYTE5(v17) ^ ((*(STACK[0xE90] + (v16 ^ 1)) ^ v16 ^ v9) - 1) ^ 0xEF)) ^ 0xAFLL));
  LODWORD(v16) = (2 * (((v16 >> 2) | (v16 << 6)) ^ 0xA)) & 0x7FE4 ^ ((v16 >> 2) | (v16 << 6)) ^ 0xA;
  LOBYTE(v16) = (((v16 ^ 0x21) - 119) ^ ((v16 ^ v11) - 10) ^ ((v16 ^ 0x4B) - 29)) - 59;
  v41 = v16 & 0x2A ^ 0xC8;
  *(STACK[0xF10] + 140) = v16 ^ (2 * ((v16 ^ 0x18) & (2 * ((v16 ^ 0x18) & (2 * ((v16 ^ 0x18) & (2 * ((v16 ^ 0x18) & (2 * ((v16 ^ 0x18) & (2 * v41) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ 0xAE;
  *(STACK[0xF10] + 41) = BYTE6(v15) ^ *(STACK[0xF50] + 127) ^ 0x10;
  *(STACK[0xF10] + 75) = BYTE6(v17) ^ *(STACK[0xF50] + 62) ^ 0xBC;
  *(STACK[0xF10] + 134) = HIBYTE(v15) ^ *(STACK[0xF50] + 119) ^ 0x41;
  v42 = *(STACK[0xED8] + 8 * v13);
  LODWORD(STACK[0xED0]) = 1;
  LODWORD(STACK[0xE38]) = 1;
  LODWORD(STACK[0xE60]) = 1;
  LODWORD(STACK[0xE58]) = 1;
  LODWORD(STACK[0xE30]) = 1;
  LODWORD(STACK[0xE40]) = 1;
  LODWORD(STACK[0xE48]) = 1;
  LODWORD(STACK[0xE50]) = 1;
  LODWORD(STACK[0xE18]) = 1;
  LODWORD(STACK[0xE20]) = 1;
  return v42();
}

uint64_t sub_10099B678@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v8 = ((2 * (v4 ^ 0x400CCF1B)) ^ 0x921C1396) & (v4 ^ 0x400CCF1B) ^ (2 * (v4 ^ 0x400CCF1B)) & 0xC90E09CA;
  v9 = v8 ^ 0x49020849;
  v10 = (v4 ^ 0x4008C69B) & (2 * (v4 & 0x8902C6D0)) ^ v4 & 0x8902C6D0;
  v11 = (v8 ^ 0xC0180) & (4 * v10) ^ v10;
  v12 = ((4 * v9) ^ 0x2438272C) & v9 ^ (4 * v9) & 0xC90E09C8;
  v13 = (v12 ^ 0x80100) & (16 * v11) ^ v11;
  v14 = ((16 * (v12 ^ 0xC90608C3)) ^ 0x90E09CB0) & (v12 ^ 0xC90608C3) ^ (16 * (v12 ^ 0xC90608C3)) & 0xC90E09C0;
  v15 = v13 ^ 0xC90E09CB ^ (v14 ^ 0x80000800) & (v13 << 8);
  v16 = *(v7 + 4 * (((v4 ^ (2 * ((v15 << 16) & 0x490E0000 ^ v15 ^ ((v15 << 16) ^ 0x9CB0000) & (((v14 ^ 0x490E014B) << 8) & 0x490E0000 ^ 0x41060000 ^ (((v14 ^ 0x490E014B) << 8) ^ 0xE090000) & (v14 ^ 0x490E014B))))) >> 2) ^ 0x242B551) + 72);
  *(a3 + (v4 - 1996306736)) = v16 ^ a1;
  *(a3 + (v4 - 1996306735)) = (v5 ^ BYTE1(v16)) + (~(2 * (v5 ^ BYTE1(v16))) | 0x41) + 96;
  *(a3 + (v4 - 1996306734)) = (BYTE2(v16) ^ 0x7C) - ((2 * (BYTE2(v16) ^ 0x7C)) & 0xBF) + 95;
  *(a3 + (v4 - 1996306733)) = (a2 ^ HIBYTE(v16)) - ((2 * (a2 ^ HIBYTE(v16))) & 0xBF) + 95;
  if ((v4 - 401515279) < 0x5F0E961D != LODWORD(STACK[0x10A0]) > 0xA0F169E2)
  {
    v17 = LODWORD(STACK[0x10A0]) > 0xA0F169E2;
  }

  else
  {
    v17 = v4 - 401515279 < (LODWORD(STACK[0x10A0]) + 1594791453);
  }

  return (*(v6 + 8 * ((24285 * v17) ^ v3)))();
}

uint64_t sub_10099B8B4()
{
  v2 = (v1 - 1637928443) & 0x61A03256;
  v3 = (*(v0 + 8 * (v1 ^ 0x5110)))(1032);
  STACK[0x2B8] = v3;
  LODWORD(STACK[0x2B4]) = v2;
  return (*(v0 + 8 * (((v3 != 0) * (v2 + 103)) ^ v1)))();
}

uint64_t sub_10099B9E0(double a1, __n128 a2, uint64_t a3, uint64_t a4, int a5)
{
  a2.n128_u16[0] = -29813;
  a2.n128_u8[2] = -117;
  a2.n128_u8[3] = -117;
  a2.n128_u8[4] = -117;
  a2.n128_u8[5] = -117;
  a2.n128_u8[6] = -117;
  a2.n128_u8[7] = -117;
  return (*(v6 + 8 * a5))(8 - (v5 & 0x18), v5 & 7, xmmword_100F523B0, a2);
}

uint64_t sub_10099BA38(uint64_t a1, int a2)
{
  v5 = (((2 * *(v4 + 2)) & 0xFFD6) + (*(v4 + 2) ^ 0xFFFFFFEB)) ^ 0xFFFFFF80;
  v6 = *(v2 + 8 * a2);
  *(v3 - 216) = 714541983;
  return v6(v5, 240, 108);
}

uint64_t sub_10099BB34@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X4>, char a4@<W5>, int a5@<W8>)
{
  v14 = (v5 ^ a4);
  *(a3 + 4 * v5) = a1 ^ ((v14 ^ 3) + (v14 ^ v9)) ^ a2 ^ *(v12 + 4 * ((v14 ^ v7) * v8 - ((((v14 ^ v7) * v8 * v10) >> 32) >> 12) * v11));
  return (*(v13 + 8 * ((15 * (v6 != 0)) ^ a5)))();
}

uint64_t sub_10099BB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  STACK[0x368] = &STACK[0x460];
  v65 = v63 - 1;
  STACK[0x3D0] = v65;
  v66 = ((v60 ^ 0x40) + 50) ^ v60 ^ ((v60 ^ 0xCA) - 68) ^ ((v60 ^ 0xAF) - 33) ^ ((((v61 + 96) | 0x40) ^ 0x89) + (v60 ^ 0xAB));
  *(v62 + v65) = ((((v66 ^ 0xA8) - 87) ^ ((v66 ^ 0xCE) - 49) ^ ((v66 ^ 0x52) + 83)) - 83) * (v60 - 125) + 30 * v60 + 90;
  v67 = *(v64 + 8 * ((8080 * (STACK[0x3D0] == 0)) ^ v61));
  STACK[0x308] = STACK[0x300];
  STACK[0x360] = v62;
  return v67(v67, (v60 ^ 0x77F9FFAFu) - 1229019169, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_10099BCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a8 + 8 * v8);
  LODWORD(STACK[0x550]) = v9 + 12887;
  LODWORD(STACK[0x500]) = v9 - 290;
  LODWORD(STACK[0x510]) = v9 - 16237;
  LODWORD(STACK[0x4F0]) = v9 - 371907197;
  LODWORD(STACK[0x570]) = v9 - 24624;
  LODWORD(STACK[0x560]) = v9 - 1349561052;
  v11 = (v9 - 41090) | 0x4052;
  LODWORD(STACK[0x540]) = v9 - 371907229;
  LODWORD(STACK[0x580]) = v11;
  LODWORD(STACK[0x530]) = v11 + 10086;
  LODWORD(STACK[0x520]) = v9 - 26408;
  return v10(0xCF031BE5DA58FD0DLL, 0xFF53A90FB55653FELL);
}

uint64_t sub_10099BE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v17 - 128) = v14;
  *(v17 - 112) = a14;
  *(v17 - 136) = v16 - 1603510583 * ((~(v17 - 136) & 0x43ACAF40 | (v17 - 136) & 0xBC5350B8) ^ 0xD4779DEB) - 4907;
  v18 = (*(v15 + 8 * (v16 + 21175)))(v17 - 136);
  return (*(v15 + 8 * ((4073 * (*(v17 - 120) + ((v16 - 12974) ^ 0xC5086D11) < ((v16 + 1851733980) & 0x91A07E6D ^ 0xF21AAB70))) ^ v16)))(v18);
}

uint64_t sub_10099BF4C@<X0>(uint64_t a1@<X8>)
{
  *v1 = 131710219;
  v4 = ((v3 + 2435) ^ 0x61A8) * v2 + 1832768508;
  v1[6] = v2;
  v1[7] = v4;
  v1[9] = v4 * (v2 - 969514793) + 8;
  return (*(a1 + 8 * v3))();
}

uint64_t sub_10099BF9C()
{
  LODWORD(STACK[0x1C70]) = v0;
  STACK[0x818] = *(v2 + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x13E2)))();
}

uint64_t sub_10099C3E0@<X0>(unsigned int a1@<W0>, int a2@<W2>, int a3@<W3>, int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W7>, uint64_t a8@<X8>)
{
  v17 = (((a1 ^ (a1 >> 30) ^ a3) + a4) ^ ((a1 ^ (a1 >> 30) ^ a7) + v15) ^ (v12 + (a1 ^ (a1 >> 30) ^ a5) + a6)) * v9;
  *(v16 + 4 * a8) = a8 + v11 + v17;
  return (*(v13 + 8 * (((a8 < 0x26F) * a2) ^ v14)))((v8 + v10 + v17));
}

uint64_t sub_10099C448(uint64_t a1, int a2, int a3)
{
  v13 = ((a2 + v9) ^ v10) + v7;
  *(v11 + v13) = *(v5 + (v13 & 0xF)) ^ *(v8 + v13) ^ *((v13 & 0xF) + v6 + 2) ^ *((v13 & 0xF) + v4 + 1) ^ (9 * (v13 & 0xF));
  return (*(v12 + 8 * (((v13 == 0) * a3) ^ v3)))();
}

uint64_t sub_10099C4F4()
{
  LODWORD(STACK[0x10DC]) = v1;
  STACK[0x9E8] = *(v2 + 8 * v0);
  return (*(v2 + 8 * (v0 - 20955 + (v0 ^ 0x66D0))))();
}

uint64_t sub_10099C858@<X0>(int a1@<W8>)
{
  v5 = v1 < 0xCA4BA642;
  *(v4 + v2) = 0;
  if (v5 == (v2 + 1) > 0xFFFFFFFF35B459BDLL)
  {
    v5 = v2 + 3393955395 < v1;
  }

  return (*(v3 + 8 * ((!v5 * ((a1 + 1846215027) & 0x91F46B5A ^ 0x2B50)) ^ a1)))();
}

uint64_t sub_10099C90C()
{
  if (v0)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return (*(v1 + 8 * (((32 * ((v0 ^ 0x77) + v2 == 119)) | (((v0 ^ 0x77) + v2 == 119) << 6)) ^ 0x30A9u)))();
}

uint64_t sub_10099C958()
{
  STACK[0x418] = ((v1 + 40974) ^ 0xBCE3) + v0;
  LODWORD(STACK[0x404]) = STACK[0x1098];
  return (*(v2 + 8 * v1))();
}

uint64_t sub_10099CA00()
{
  STACK[0x360] = 0;
  STACK[0x4E8] = v1;
  v3 = *(&STACK[0x460] + (~LOBYTE(STACK[0x461]) & 3));
  v4 = 1009 * (((v3 ^ 0xF789) + 2167) ^ ((v3 ^ 0xBFB4) + 16460) ^ ((((v0 - 10128) | 0x3000) ^ 0x7890 ^ v3) - 18610)) - 15138;
  v5 = v4 & 0x28F1 ^ 0x6518;
  v6 = v4 ^ 0x6EC0;
  v7 = (v4 ^ (2 * (v6 & (2 * (v6 & (2 * (v6 & (2 * (v6 & (2 * (v6 & (2 * (v6 & (2 * (v6 & (2 * (v6 & (2 * (v6 & (2 * (v6 & (2 * (v6 & (2 * (v6 & (2 * (v6 & (2 * (v4 & (2 * v4) & 0x5D82 ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5))) ^ 0x86BB;
  v8 = ((16777281 * (((v7 ^ 0x319BB02C) - 832286764) ^ ((v7 ^ 0xB8B856CF) + 1195878705) ^ ((v7 ^ 0x892348A9) + 1994176343)) - 644398902) >> 16) < 0x6Bu;
  v9 = ~LOBYTE(STACK[0x462]) & 3;
  STACK[0x368] = &STACK[0x460];
  v10 = (((*(&STACK[0x460] + v9) ^ 0x8F) - 13 * ((330382100 * (*(&STACK[0x460] + v9) ^ 0x8Fu)) >> 32) + 7) & 0x1C) != 0;
  return (*(v2 + 8 * (((2 * v10) | (v10 << 6)) ^ v0)))(v8);
}

uint64_t sub_10099CC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = v8 - 12998;
  v12 = ((v8 - 12998) ^ 0x8EB0) + 37220;
  v13 = (v9 ^ 0xFF7DBAFBB7FF63DDLL) + 0x5FA7FF4DDDD2FCF0 + (((191 * ((v8 - 12998) ^ 0x8EB0u)) ^ 0x16FFECE08) & (2 * v9));
  v10[220] = v13;
  v14 = v10[109];
  v10[221] = v14;
  return (*(a8 + 8 * (((v13 - v14 - 0x370C23D3D156F787 < 0xFFFFFFFFFFFFFFF6) * (v12 ^ 0xB543)) ^ v11)))();
}

uint64_t sub_10099CD84@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W5>, char a6@<W6>, _BYTE *a7@<X8>)
{
  *(v16 - 256) = v15;
  LODWORD(STACK[0x1028]) = (a3 + (*a7 ^ a6) + (a5 & (2 * *a7)) - 24);
  LODWORD(STACK[0x1020]) = (v9 - 21);
  *(v16 - 176) = (v11 - 111);
  LODWORD(STACK[0x1018]) = (a2 - 113);
  LODWORD(STACK[0x1010]) = (a4 + (((v12 + 37) | 0x80) ^ 0x2B));
  LODWORD(STACK[0x1008]) = (v7 - 115);
  LODWORD(STACK[0x1040]) = (v10 - 71);
  LODWORD(STACK[0x1030]) = (v8 - 54);
  v18 = *(v17 + 8 * (v12 ^ (26 * (v13 < 8))));
  *(v16 - 248) = v14;
  return v18(a1, v13 - 8);
}

uint64_t sub_1009AE228(uint64_t a1, int a2)
{
  v4 = v2 + (a2 + 1287266728);
  STACK[0x540] = v4 + 0x6FD4CF41D7B431E1;
  v5 = *(v3 + 8 * (((v4 != 0x902B30BE284BCE1FLL) * (a2 - 15405)) ^ a2));
  return v5(v4 + 0x6FD4CF41D7B431E1, v5, 153, 109);
}

uint64_t sub_1009AE3DC@<X0>(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v34 = (v32 & 0xA545FE75) - 21223;
  *(a31 + 40) = v31 + *(a31 + 40) - 0x3CE25E0EC5202F06 + v34;
  return (*(v33 + 8 * ((249 * (*a1 == (v34 ^ 0x3CE25E0EC52028F6))) ^ v32 & 0xA545FE75)))();
}

uint64_t sub_1009AE450@<X0>(int a1@<W3>, int a2@<W8>)
{
  v6 = 23958;
  atomic_compare_exchange_strong(v4, &v6, v3);
  return (*(v5 + 8 * (((v6 == a1) * v2) ^ a2)))();
}

uint64_t sub_1009AE474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v21 = ((-43 * v8) ^ (v12 - 114));
  v22 = *(v15 + 8 * SLODWORD(STACK[0xD78]));
  LODWORD(v21) = *(v22 - 735015466 + v21);
  STACK[0xDF0] = v22 - 735015466;
  v23 = ((a2 - ((2 * a2) & 0x134) - 0x76992EB416734F66) ^ 0x8966D14BE98CB09ALL) + (v10 << 8);
  LODWORD(v21) = (((v21 >> 6) | (4 * v21)) - ((2 * ((v21 >> 6) | (4 * v21))) & 0x7B6) - 37) ^ 0x5B;
  LOBYTE(v21) = ((((v21 >> 4) | (16 * v21)) ^ 0x25) + 57) ^ ((((v21 >> 4) | (16 * v21)) ^ 0xA2) - 64) ^ ((((v21 >> 4) | (16 * v21)) ^ 0x54) + 74);
  v24 = v21 - 82;
  LOBYTE(v21) = ((v21 + 46) & 0x83 | 0x44) ^ (v21 - 82) & 0x88;
  v25 = *(v22 - 735015466 + ((v13 - 56) ^ 0x10) + 524);
  v27 = (((v24 ^ (2 * ((v24 ^ 2) & (2 * ((v24 ^ 2) & (2 * ((v24 ^ 2) & (2 * ((v24 ^ 2) & (2 * ((v24 ^ 2) & (2 * ((v24 ^ 2) & (2 * v21) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21))) << 32) ^ 0x35737E0C4E0A2D8FLL) & ((((v11 - ((2 * v11) & 0xAEu) + 3201628) << 40) - 0x50000000000) ^ 0xFAD29FFEFCE3F8FLL) | (((v11 - ((2 * v11) & 0xAEu) + 3201628) << 40) - 0x50000000000) & 0x8C810000000000;
  v28 = (v27 ^ 0xCA0480F8B190D250) & ((((v9 - ((2 * v9) & 0x162)) << 24) + 0x3FC1F993B1000000) ^ 0xAAF26748609AD65CLL) ^ v27 & 0x20CC61240E002983;
  v29 = v28 & 0xD53EBC945F92E7C6 ^ v23 ^ (v28 ^ 0xA00002020650000) & ((a8 << 16) ^ 0x2AC1436BA0081819);
  v30 = (81 * a7) ^ 0xABLL;
  v31 = v22 - 735014673;
  v32 = ((((v25 ^ 0xC9) << (a6 & 2) << (~a6 & 2)) ^ 0x48) & ((v25 >> 6) | 0xFC) ^ ((v25 >> 6) | 0x10)) << 48;
  v33 = (v29 ^ 0x4004000000050000) & (v32 ^ 0x743DF913B2976AD3);
  v34 = ((*(v22 - 735014673 + v30) >> 7) | (2 * *(v22 - 735014673 + v30))) + (~(4 * *(v22 - 735014673 + v30)) | 0x4F) - 39;
  v35 = (((v34 >> 1) | (v34 << 7)) ^ 0xFFFFFFFFFFFFFFFELL) & ((((v17 - ((2 * v17) & 0xD2)) << 8) + 0x5C06A250655F6900) ^ 0x7E99C58BFBEB1377) | ((v34 >> 1) | (v34 << 7)) & 0x88;
  LOBYTE(v30) = -83 * v16;
  v36 = (((-83 * v16) ^ 4) + 116) ^ (((-83 * v16) ^ 0xF3) - 123) ^ (((-83 * v16) ^ 0xF1) - 121);
  v37 = v36 + 23;
  v38 = ((-24 - v36) | 1) ^ (v36 + 23) & 0xAA;
  v39 = 2 * ((2 * v38) ^ v38 ^ (2 * v38) & v37);
  v40 = 2 * ((2 * (v39 ^ v38 ^ v39 & v37)) ^ v38 ^ (2 * (v39 ^ v38 ^ v39 & v37)) & v37);
  v41 = 2 * ((2 * (v40 ^ v38 ^ v40 & v37)) ^ v38 ^ (2 * (v40 ^ v38 ^ v40 & v37)) & v37);
  v42 = v37 ^ v30 ^ (2 * (v41 ^ v38 ^ v41 & v37));
  v43 = v22 - 735015205;
  LOBYTE(v22) = *(v22 - 735015205 + (v30 ^ 0x66));
  LOBYTE(v22) = v22 + (((v42 ^ 0x76) + 108) ^ ((v42 ^ v18) + 61) ^ ((v42 ^ 5) + 25)) - ((((2 * ((v42 ^ 0x52) & v22)) ^ v18) + 42) ^ (((2 * ((v42 ^ 0x52) & v22)) ^ 0x91) - 102) ^ (((2 * ((v42 ^ 0x52) & v22)) ^ 0xB0) - 71)) + 42;
  LOBYTE(v30) = v22 & 5 ^ 0x4F;
  v44 = ((STACK[0xE08] - ((2 * STACK[0xE08]) & 0x12)) << 16) - 0x6B46FB9AD5F70000;
  v45 = (((4 * v34) & 0x50 | 0xCu) ^ 0x7A516B54CA7B1C04 ^ v35) & (v44 ^ 0x6B46FB9AD5F6FFFFLL);
  LOBYTE(v22) = v22 ^ (2 * ((v22 ^ 0xE) & (2 * ((v22 ^ 0xE) & (2 * ((v22 ^ 0xE) & (2 * ((v22 ^ 0xE) & (2 * ((v22 ^ 0xE) & (2 * (((2 * (v22 & 0xF)) ^ 0xA) & (v22 ^ 0xE) ^ v30)) ^ v30)) ^ v30)) ^ v30)) ^ v30)) ^ v30));
  LOBYTE(v22) = ((v22 ^ 0x74) >> 4) | (16 * (v22 ^ 0x74));
  LOBYTE(v22) = (((v22 ^ 0xF4) + 35) ^ ((v22 ^ 0x82) + 85) ^ ((v22 ^ 0xDA) + 13)) - 34;
  LOBYTE(v35) = v22 & 0x11 ^ 0x7D;
  v46 = ((STACK[0xE10] - ((2 * STACK[0xE10]) & 0x72) + 1083736) << 40) - 0x1F0000000000;
  v47 = (((v44 & 0x843100602B300000 ^ 0xF189A2C11767F63BLL ^ v45) & ~(STACK[0xE18] << 24) | (STACK[0xE18] << 24) & 0x96000000) ^ ((((STACK[0xE28] >> 7) & 1) << 55) | 0x9E0977070B208284) ^ (((((v22 ^ (2 * ((v22 ^ 0x26) & (2 * ((v22 ^ 0x26) & (2 * ((v22 ^ 0x26) & (2 * ((v22 ^ 0x26) & (2 * ((v22 ^ 0x26) & (2 * (((2 * v22) & 0x4E ^ 0x36) & (v22 ^ 0x26) ^ v35)) ^ v35)) ^ v35)) ^ v35)) ^ v35)) ^ v35))) << 32) | 0x9ACB400B01364A0) & (v46 ^ 0xC9368EFFF9537CA5) | v46 & 0x10534B0000000000) ^ 0xAAD26438D29B76E0) & ((STACK[0xE28] << 48) ^ 0xFFFFFFFFFFDBFEF7)) + (STACK[0xE20] << 56);
  LODWORD(v22) = (171 - ((81 * STACK[0xE38]) ^ 0xAB)) ^ (81 * STACK[0xE38]) ^ (((2 * (1032575333 - (81 * STACK[0xE38]))) & 0x136) + ((1032575333 - (81 * STACK[0xE38])) ^ 0xC274269B));
  v48 = STACK[0xE48] << 8;
  v49 = (STACK[0xE60] << 15) ^ __ROR8__(STACK[0xE30] + (v20 << 16) + (v19 << 8) + (STACK[0xE40] << 24) + (((STACK[0xE58] << 40) - ((STACK[0xE58] << 41) & 0x1280000000000) - 0xE686B921AFE941BLL) ^ 0xF197946DE5016BE5), 17);
  v50 = *(v31 + (((v22 ^ 0x5480799C) + 416892697) ^ ((v22 ^ 0x1C2D10AB) + 1349791280) ^ ((v22 ^ 0x48AD6937) + 83122100)) - 1280916954);
  v51 = (STACK[0xE50] & 0x63 | v48 & 0x7B00) - 2 * ((STACK[0xE50] & 0x62 | v48 & 0x3A00) ^ STACK[0xE50] & 2);
  v52 = STACK[0xE50] & 0x9C | v48 & 0x8400;
  v53 = 8 * v50;
  v54 = v51 + 0x6448783F9A6D3A68;
  v55 = (v54 ^ 0x9BB787C06592C596) & ((v52 - 2 * (v52 ^ STACK[0xE50] & 0x10) - 0x6511884D679F2311) ^ 0x612A7B45FC6336B1);
  v56 = ((8 * v50) | 0xEA) + 49;
  v57 = 5 - ((8 * v50) | 0xEA);
  if ((((v56 ^ (2 * ((v56 ^ 0x64) & (2 * ((v56 ^ 0x64) & (2 * ((v56 ^ 0x64) & (2 * ((v56 ^ 0x64) & (2 * ((v56 ^ 0x64) & (2 * (v56 & 0x18 ^ v56 ^ 0x4B)) ^ v56 ^ 0x4B)) ^ v56 ^ 0x4B)) ^ v56 ^ 0x4B)) ^ v56 ^ 0x4B)) ^ v56 ^ 0x4B))) ^ 0x7A) & v50 & 0xFE) == 0)
  {
    v57 = ((8 * v50) | 0xEA) + 49;
  }

  v58 = (((v50 ^ 0x11) + 40) ^ ((v50 ^ 0x13) + 38) ^ ((v50 ^ 0x4C) + 123)) + v57;
  v59 = v58 - 62;
  v58 -= 30;
  v60 = v59 & 8 | 0xC3;
  v61 = (v58 ^ 0xA) & (2 * ((v58 ^ 0xA) & (2 * ((v58 ^ 0xA) & (2 * ((v58 ^ 0xA) & (2 * (((2 * v59) & 0x14 | 2) & (v58 ^ 0xA) ^ v60)) ^ v60)) ^ v60)) ^ v60)) ^ v60;
  v62 = (v32 ^ 0xB8F2AF5205B9FA2ALL) & v23;
  v63 = v23 & 0xB8A9AF5205B9FA2ALL;
  v64 = v29 & 0x8B9906EC4D68952CLL;
  v65 = -83 * STACK[0xDF8];
  v66 = v58 ^ (v53 & 0x40 | 0x87) ^ (2 * v61);
  v67 = (STACK[0xE80] << 48) ^ 0xA8223D78DA7819A2;
  HIDWORD(v68) = *(v31 + ((81 * v14) ^ 0xABLL));
  LODWORD(v68) = ((8 * (HIDWORD(v68) ^ 0x62)) & 0x55555555 ^ HIDWORD(v68) ^ 0x62) << 24;
  v69 = (v68 >> 25) ^ 0xFFFFFFC4;
  v70 = (((v65 ^ 0x8C) - 20) ^ ((v65 ^ 0x93) - 11) ^ ((v65 ^ 0x19) + 127)) + 58;
  v71 = v70 & 0x51 ^ 0x77;
  *(&v72 + 1) = (((((v66 << 16) & 0x200000 ^ 0x411C95F1123A0C90 ^ ((v66 << 16) ^ 0xFFFFFFFFFF30FFFFLL) & (v54 & 0x3000924C15A1 ^ 0xD241856344905EB5 ^ v55)) & ~(STACK[0xE88] << 24) | (STACK[0xE88] << 24) & 0x5F000000) ^ 0x40EAFBDBA2A2344ALL) & ~(STACK[0xE68] << 32) | (STACK[0xE68] << 32) & 0x4100000000) ^ (STACK[0xE78] << 40) ^ 0x49DF6B7B8DBE1DC4;
  *&v72 = *(&v72 + 1) ^ v67;
  v73 = (v70 ^ 0x6A) & (2 * ((v70 ^ 0x6A) & (2 * ((v70 ^ 0x6A) & (2 * ((v70 ^ 0x6A) & (2 * ((v70 ^ 0x6A) & (2 * (((2 * v70) & 0x56 ^ 0x3A) & (v70 ^ 0x6A) ^ v71)) ^ v71)) ^ v71)) ^ v71)) ^ v71)) ^ v71;
  v74 = -83 * STACK[0xDE0];
  v75 = v74 ^ 6;
  v76 = (v74 ^ 6) - 121;
  v77 = v76 ^ v74;
  v78 = v67 ^ (((v69 >> 7) & 1 | (2 * v69)) << 56) ^ __ROR8__((v72 >> 45) ^ (8 * STACK[0xE80]) ^ 0x7634C2DD8BB6BFC0, 19);
  v79 = v47 ^ (LODWORD(STACK[0xED0]) - 1621934219);
  LODWORD(v67) = *(v43 + ((-83 * STACK[0xDE0]) ^ 0x66));
  LOBYTE(v69) = v65 ^ v70 ^ (2 * v73) ^ *(v43 + (v65 ^ 0x66)) ^ 0xA6;
  v80 = (((((v69 >> 4) | (16 * v69)) ^ 0x53) - 94) ^ ((((v69 >> 4) | (16 * v69)) ^ 0xAE) + 93) ^ ((((v69 >> 4) | (16 * v69)) ^ 0x59) - 84)) - 26;
  v81 = (35 - v75) & 0xFFFFFFC1;
  v82 = (35 - v75) ^ 0x5C;
  v83 = v75 - (((v77 ^ 0xFFFFFFE7) - 23) ^ ((v77 ^ 7) + 9) ^ ((v77 ^ 0xFFFFFFE6) - 22)) - 45;
  v84 = v83 & 0xFFFFFFCE ^ 8;
  v85 = v83 ^ 0x3C;
  v86 = (35 - v75) ^ v75 ^ v83 ^ (2 * (v84 ^ (v81 | 0x12) ^ v82 & (2 * (v82 & (2 * (v82 & (2 * (v82 & (2 * (v82 & (2 * ((35 - v75) & (2 * v81) ^ (v81 | 0x12))) ^ (v81 | 0x12))) ^ (v81 | 0x12))) ^ (v81 | 0x12))) ^ (v81 | 0x12))) ^ v85 & (2 * (v85 & (2 * (v85 & (2 * (v85 & (2 * (v85 & (2 * v84) ^ v84)) ^ v84)) ^ v84)) ^ v84))));
  v87 = STACK[0xEB8] & 0x38;
  v88 = (((v86 ^ v76 ^ 0xFFFFFFC9) + 48) ^ ((v86 ^ v76 ^ 0xFFFFFFBB) + 94) ^ ((v86 ^ v76 ^ 0x7D) - 100)) + ((((2 * ((v86 ^ 0xF) & v76)) ^ 0x6B) + 57) ^ (((2 * ((v86 ^ 0xF) & v76)) ^ 3) + 81) ^ (((2 * ((v86 ^ 0xF) & v76)) ^ 0x68) + 60)) - 55;
  v89 = v88 & 0xFFFFFFC1 | 0x24;
  v90 = (v88 ^ 0x78) & (2 * ((v88 ^ 0x78) & (2 * ((v88 ^ 0x78) & (2 * ((v88 ^ 0x78) & (2 * ((v88 ^ 0x78) & (2 * ((v88 ^ 0x78) & (2 * (v88 & 0xFFFFFFC1)) | v89)) ^ v89)) ^ v89)) ^ v89)) ^ v89)) ^ v89;
  LOBYTE(v89) = v80 & 0xB7 ^ 0x7A;
  v91 = (v80 ^ (2 * ((v80 ^ 0x42) & (2 * ((v80 ^ 0x42) & (2 * ((v80 ^ 0x42) & (2 * ((v80 ^ 0x42) & (2 * ((v80 ^ 0x42) & (2 * ((v80 ^ 0x42) & (2 * v80) & 6 ^ v89)) ^ v89)) ^ v89)) ^ v89)) ^ v89)) ^ v89))) << 16;
  v92 = v79 - ((2 * v79) & 0xF8F6B8B4089957A0);
  v93 = ((((v67 ^ v88 ^ (2 * v90)) & 0xF0) >> 4) ^ 0xDB) & ((16 * (v67 ^ v88 ^ (2 * v90))) ^ 0x5F) ^ ((32 * (((v67 ^ v88 ^ (2 * v90)) >> 1) & 1)) | 2);
  v94 = ((STACK[0xE70] << 56) + (STACK[0xE90] << 48)) ^ __ROR8__(v49 ^ 0x9AA922B752098856, 47) ^ v79;
  v95 = ((STACK[0xEA0] << 48) + (STACK[0xEB0] << 40)) ^ (STACK[0xEA8] << v87 << ((v87 ^ 0xF2) & 0x18 ^ 8u) << ((v87 ^ 0xF2) & 0x20)) ^ 0x64BDB4697DD869E4 ^ (((((v93 << 24) & 0x18000000 ^ 0xED09409B0D23847DLL ^ (v91 & 0x310000 ^ 0x224E9ED07EFB3B7ELL ^ (v91 ^ 0xFFFFFFFFFF48FF6CLL) & ((((STACK[0xEC0] - ((2 * STACK[0xEC0]) & 0xFC)) << 8) + 0x527C72CA51B67E00) ^ 0x828CE804C878786CLL)) & ((v93 << 24) ^ 0xFFFFFFFF01FFFF7ELL)) & ~(STACK[0xE98] << 32) | (STACK[0xE98] << 32) & 0x7A00000000) ^ 0x7B0AF0EC8FFFD08BLL) & ~STACK[0xEB8] | STACK[0xEB8] & 0x1B);
  v96 = v95 ^ 0x4354AF7BCDDA2901 ^ v78;
  v97 = 0x100000000000;
  if ((v95 & 0x100000000000) != 0)
  {
    v97 = 0xFFFFF00000000000;
  }

  v98 = v63 ^ (a6 << 56) ^ v62 ^ v64 ^ v33 ^ (v97 + v95);
  v99 = v96 - ((2 * v96) & 0xF8D3EE1AF0313FA4) - 0x39608F287E7602ELL;
  v100 = (v92 + 0x7C7B5C5A044CABD0) & 0x2CCAF47D7C9614CELL | (v94 ^ 0xF00D08BE3AE501A9) & ~(v92 + 0x7C7B5C5A044CABD0);
  v101 = (v92 + 0x7C7B5C5A044CABD0) & (v98 ^ 0xA8B74AFACEE3FB2BLL);
  v102 = (v98 ^ 0xC10BA4649604AFB4) & ~v99 | v99 & 0x96431161A718AB60;
  v103 = ((v98 ^ 0x4DFF662ABC173743 ^ v100) & 0x51236715939A080 | ((((v98 ^ 0x4DFF662ABC173743 ^ v100) & 0xC2A9808822804005 ^ 0x1289C4F3B600A6ELL) & ((v98 ^ 0x4DFF662ABC173743 ^ v100) & 0x2044090084421868 ^ 0xFBB99ECFBBE45EB7) | (v98 ^ 0x4DFF662ABC173743 ^ v100) & 0x2044010084021000) ^ 0xDB85DCC93DE61550) & ((v98 ^ 0x4DFF662ABC173743 ^ v100) & 0x1D127677593DA792 ^ 0xEFFDFFBDB6EBF86FLL)) ^ 0x91DC329A86C611A6;
  v104 = v94 ^ v99 & (v78 ^ 0x8943DFD90902BBEDLL);
  v105 = (v94 ^ 0x2338033CB98CEA98) & (v78 ^ 0x72EB2F45096A8B96) ^ v94 & 0x4570F63FF97CF84 ^ (v92 + 0x7C7B5C5A044CABD0) ^ v103;
  v106 = v101 & 0xFFFFFFFFFFFFDFFFLL;
  if ((v101 & 0x2000 & v99) != 0)
  {
    v107 = v99 - (v101 & 0x2000);
  }

  else
  {
    v107 = v101 & 0x2000 ^ v99;
  }

  v108 = v102 ^ v78 ^ v104;
  v109 = v107 ^ v106;
  v110 = v103 ^ v107 ^ v106;
  *&v111 = __ROR8__(v110 ^ ((v110 ^ 0x65726E321FCE661CLL) >> 19) ^ 0xB55F0BE8F84CE8E4, 45);
  *(&v111 + 1) = v111 ^ 0x3C35F;
  *&v111 = v111 ^ 0x16A9836B70900000;
  v112 = *(v31 + ((81 * ((v105 >> 61) ^ 2)) ^ 0xABLL)) ^ 0x76;
  v113 = v105 ^ v112 & 0xFFFFFFFFFFFFFFFDLL;
  v114 = (-(v111 >> 19) ^ ((((v110 ^ 0x65726E321FCE661CLL) << 45) ^ 0xE00BE00000000000) - ((v111 >> 19) ^ ((v110 ^ 0x65726E321FCE661CLL) << 45) ^ 0xE00BE00000000000)) ^ 0xFFFDA9048B4DBA51 ^ ((v111 >> 19) - ((2 * (v111 >> 19)) & 0xFFFB5209169B74A2) - 0x256FB74B245AFLL)) + (((v110 ^ 0x65726E321FCE661CLL) << 45) ^ 0xE00BE00000000000);
  v115 = (v113 & 0xAA440202960B6135 ^ 0xF0876C0C03BC226FLL) & (v112 | 0xFBD77E8FD7FFF3FDLL);
  v116 = (v113 & 0x400000200088 ^ 0x66722FA3AA0B9DB7) & (v105 & 0x43200A128009800 ^ 0x62626F23822B95BFLL) | v113 & 0x1100001040400040;
  v117 = __ROR8__(((v104 ^ (v104 >> 1) ^ 0xFF9E6F4891CAC559) + (v104 << 63)) ^ (v104 >> 6) ^ 0x2C0FEBF18E3DB666, 46);
  v118 = (v108 >> 10) ^ (v108 >> 17) ^ v108 ^ 0xAFD06185512E8866 ^ ((v108 ^ 0xAFD06185512E8866) << 47) ^ ((v108 ^ 0xAFD06185512E8866) << 54);
  v119 = v118 ^ 0x551B409F3D9A3BA5;
  v120 = ((8 * v112) & 0x50 | 0xA49CE9BB9F730401) ^ (v105 >> 39) ^ (8 * (v105 ^ 0xB4FD6E722C0BD5D9)) ^ ((v105 ^ 0xB4FD6E722C0BD5D9) << 25) ^ v116 & 0x121048A160010100 ^ (v116 ^ 0x8CAD905C1D947240) & (v105 & 0x4089BD4C01940602 ^ 0x176DC55A0EC2BA80 ^ v115);
  v121 = v120 ^ (((v117 << 46) ^ (v104 << 58) ^ 0x6919BFFFFFFFFFFFLL) & ((v117 >> 18) ^ 0x7B9DDBD86A0941CFLL) | ((v117 << 46) ^ (v104 << 58)) & 0x8462000000000000);
  v122 = v109 ^ 0xD4BD06705949787ELL ^ ((v109 ^ 0xD4BD06705949787ELL) << 23) ^ (((v109 >> 7) ^ (v109 >> 41) ^ 0x3468F8175F23962FLL) & (((v109 ^ 0xD4BD06705949787ELL) << 57) ^ 0x5BFFFFFFFFFFFFFFLL) | ((v109 ^ 0xD4BD06705949787ELL) << 57) & 0xCA00000000000000);
  v123 = v122 ^ 0x17392A622441373;
  v124 = v122 ^ 0x17392A622441373 ^ v118 ^ 0x551B409F3D9A3BA5;
  v125 = v118 & 0xC7027F454EC37833 ^ 0x100434440404832 ^ (v122 ^ 0xB5987B55AD881132) & (v118 ^ 0x193D4364615CC9BELL);
  v126 = (((v121 ^ 0xA9A04BBBB4B7E0DALL) - 0x45FBBA710239343DLL) ^ ((v121 ^ 0x20D349EFF39E7BCALL) + 0x337747DABAEF50D3) ^ ((v121 ^ 0x7A9A2A9F51331B1BLL) + 0x693E24AA18423004)) - (((v121 ^ 0x43CC08BB817332E0) - 0x60011A498A09A782) ^ ((v121 ^ 0xCE41E880726B4135) + 0x1273058D86EE2BA9) ^ ((v121 ^ 0x7E64C8F0E502F37DLL) - 0x5DA9DA02EE78661FLL)) + 0x4F8E9EC883343F22;
  v127 = (((v126 ^ 0x54FF0810893756EDLL) - 0x61FB74998C086535) ^ ((v126 ^ 0x5E712DF1F25C9F77) - 0x6B755178F763ACAFLL) ^ ((v126 ^ 0xF571DA1E84943664) + 0x3F8A59687E54FA44)) + (((v121 ^ 0x24684DA225CD9010) + 0x37CC43976CBCBB09) ^ ((v121 ^ 0xCFA6AC3C362F3F87) - 0x23FD5DF680A1EB60) ^ ((v121 ^ 0x1827C95505F82F9CLL) + 0xB83C7604C890485));
  v128 = v127 - 0x1551A38764AADEEELL;
  v129 = (v127 - 0x1551A38764AADEEELL) & ((((v120 ^ 0x78F0359D87CC7AFELL) - 0x3F66EE404C9A4D94) ^ ((v120 ^ 0xCD98A1AFC605BA9ALL) + 0x75F1858DF2AC7210) ^ ((v120 ^ 0xB93C62068F9D857CLL) + 0x1554624BB344DEALL)) - 0x24B43D168339E9AALL + ((((2 * (v120 ^ 0x4796DBDDCB56376ALL)) ^ 0x766B9AAAB0346CD0) + 0x6E665478CDF32BD1) ^ (((2 * (v120 ^ 0x4796DBDDCB56376ALL)) ^ 0x647993D071570E2ALL) + 0x7C745D020C90492BLL) ^ (((2 * (v120 ^ 0x4796DBDDCB56376ALL)) ^ 0x7A69AD57349879E1) + 0x62646385495F3EE2)));
  v130 = (0x1551A38764AADEEDLL - v127) & (v118 ^ 0xDE5036D849D652B8);
  v131 = (-v125 ^ (v125 - ((2 * v125) & 0x6033274BBA1B72AALL) + 0x301993A5DD0DB955) ^ 0x301993A5DD0DB955 ^ (v128 - (v128 ^ v125))) + v128;
  *(&v111 + 1) = v110;
  *&v111 = v110 ^ 0x65726E321FCE661CLL;
  v132 = v123 ^ (v111 >> 28) ^ v114;
  v133 = v129 ^ v132 ^ 0x2C8E485000000000;
  v134 = (v132 ^ 0x2A000D73BA99A5FDLL) & (v120 ^ 0xC0846E941F0D1E02);
  v135 = v120 ^ 0x4796DBDDCB56376ALL ^ v128 & 0x38928A43D77564F9 ^ v130 ^ 0x11D5926E7BC2EBE2;
  v136 = ((v135 & 0xA51F1C651DA003E0 ^ 0xDD968AB7BDF0CA9ELL) & (v135 & 0x5AE0E39AE25FFC1FLL ^ 0xBF1F9E771DEE13F7) | v135 & 0x2606108420F3401) ^ 0xFF93BFF3B455FFFFLL;
  v137 = v134 ^ v124 ^ (v132 ^ 0x2C8E485000000000) & 0xCCD098A0D1595B1ALL;
  v138 = v124 & 0x1E4A8736E2E5A976 ^ v119 ^ (v132 ^ 0xCBB575BAA783F374) & (v124 ^ 0x3FCF954D9DC98869) ^ v131;
  v139 = (v137 ^ 0xC4B06A92F22F768ELL) & 8;
  v140 = v133 & 0xB57753BDE6B950EALL ^ 0x3041102104A81020;
  v141 = (((2 * (v136 ^ ((v135 & 0x5AE0E39AE25FFC1FLL ^ 0x62F43FA1902FE917) & (v135 & 0xA51F1C651DA003E0 ^ 0x5AF0EBBBFE5FFE3FLL) | v135 & 0x50B00440D8002E0))) ^ 0x40EA3CCA73742AFCLL) + v136) ^ v133;
  v142 = (v133 ^ v137 ^ 0xC4B06A92F22F768ELL) & 0x4A88AC421946AF15 ^ 0x4A8820021040AC11;
  if ((v133 & v139) != 0)
  {
    v143 = -v139;
  }

  else
  {
    v143 = (v137 ^ 0xC4B06A92F22F768ELL) & 8;
  }

  v144 = ((v143 + v140) ^ (v137 ^ 0xC4B06A92F22F768ELL) & 0xB57753BDE6B950E2) + v142;
  *(&v145 + 1) = v131;
  *&v145 = v131 ^ 0xAF52B0E9B02F4B1ALL;
  v146 = (8 * (v141 ^ 0xB5754326AC382E5)) ^ (v141 >> 39) ^ ((v141 ^ 0xB5754326AC382E5) << 25) ^ __ROR8__(__ROR8__(v141 ^ (v141 >> 61) ^ 0x363C685794C06A41, 35) ^ 0xAF52C813D09F8ACFLL, 29);
  v147 = v131 ^ 0xAF52B0E9B02F4B1ALL ^ (v131 >> 6) ^ (v145 >> 1) ^ ((v131 ^ 0xAF52B0E9B02F4B1ALL) << 58);
  v148 = v147 ^ 0xB437FADB56DFCC7CLL ^ v146 ^ 0xB1ECEF25B8A7C8A4;
  *&v145 = __ROR8__((16 * (v137 & 0x7F)) ^ __ROR8__(v137 ^ (v137 >> 7) ^ 0xE0C829446682E505, 53) ^ 0x88CE47C910A2973DLL, 11);
  v149 = (-((v137 >> 41) ^ 0x4F361E) ^ (((v137 >> 41) ^ 0x4F361E) - ((2 * ((v137 >> 41) ^ 0x4F361E)) & 0x4F2D72) - 0x4DE8050E46586947) ^ 0xB217FAF1B9A796B9 ^ ((v145 ^ 0x2829D533F984D226) - (v145 ^ 0x2829D533F984D226 ^ (v137 >> 41) ^ 0x4F361E))) + (v145 ^ 0x2829D533F984D226);
  v150 = v138 ^ 0x567F61E7CDCF5FA6 ^ (v138 >> 17) ^ __ROR8__(v138 ^ 0x567F61E7CDCF5FA6, 10) ^ ((v138 ^ 0x567F61E7CDCF5FA6) << 47);
  v151 = v149 + ((v137 << 23) ^ 0xE277FDEA6C000000) + 2 * (v149 & ((v137 << 23) ^ 0xE277FDEA6C000000)) - 4 * (v149 & ((v137 << 23) ^ 0xE277FDEA6C000000));
  v152 = v151 ^ v150;
  v153 = (v144 ^ (v144 >> 19) ^ ((v144 >> 28) | (v144 << 45))) & 0xFFFFFFFFFFEFFFFFLL ^ v151 ^ (~(v144 ^ (v144 >> 19) ^ (v144 >> 28)) | 0xFFFFFFFFFFEFFFFFLL) & ((v144 << 36) ^ 0x903B967B33313A0ALL);
  v154 = v153 & 0xEB4C9CC8968F18D6 ^ v151 ^ v150 ^ (v146 ^ 0xE84C5A0B6A61E27DLL) & (v153 ^ 0x6FC46984CCCEC5F5);
  v155 = v153 ^ v146 & 0x53CCF5C57D3A97CALL ^ (v146 ^ 0xFCFF393C03110554) & (v147 ^ 0x551726F86FAC69B9) ^ 0x84BA7E3DFEE3D5BLL;
  v156 = v154 ^ 0x9CEBACA4403EBBFDLL ^ v155;
  v157 = v146 ^ 0xB1ECEF25B8A7C8A4 ^ v150 & 0x77B84686648F5454 ^ v155 ^ (__ROR8__(__ROR8__(v148, 31) ^ 0xAC216FCB783ADCALL, 33) ^ 0xD3866F9C9E11A0D5) & (v150 ^ 0x4B0510AE266D431BLL);
  v158 = (v150 ^ 0xB4FAEF51D992BCE4) & v151;
  v159 = v148 + v158;
  v160 = v157 ^ 0x93D5749AAC0DFD1DLL;
  v161 = v148 + v158 - 2 * (v148 & v158);
  v157 >>= 39;
  v162 = v154 ^ 0xF3A66BD4AC038307;
  v163 = v152 & 0x79A5BF8E42404DC4 ^ v150 ^ (v153 ^ 0xE99E29F5717177CELL) & (v152 ^ 0xB4FAEF51D992BCE4) ^ v161;
  *&v145 = __ROR8__(v160, 61);
  v164 = (v160 ^ v145) & 0xB732D7CCE13E24FBLL;
  v165 = (v160 ^ v145) & 0x48CD28331EC1DB04 ^ v157 & 0xC1DB04;
  v166 = v163 ^ __ROR8__(v163 ^ 0x2118AF41CB9DF18BLL, 10) ^ 0xBA2882A41AB09A43;
  *(&v145 + 1) = v159;
  *&v145 = v161 ^ 0x94F640AD24B81E0ALL;
  v167 = ((v165 ^ 0xB737F7CCE1BE74FFLL) & (v157 & 0x13E24FB ^ 0x23672990C8925357 ^ v164) | v165 & 0x4888002316418800) ^ (v160 << 25);
  v168 = v161 ^ 0x94F640AD24B81E0ALL ^ __ROR8__(v161, 6) ^ (v145 >> 1);
  v169 = v167 ^ v168;
  *(&v145 + 1) = __ROR8__((-((v163 >> 17) ^ 0x5CE75B910121) ^ (v166 - (v166 ^ (v163 >> 17) ^ 0x5CE75B910121)) ^ (((v163 >> 17) ^ 0x5CE75B910121) - 2 * (((v163 >> 17) ^ 0x5CE75B910121) & 0x650B052FF81FLL ^ (v163 >> 17) & 0x18) - 0xBA01AF4FAD007F9) ^ 0xF45FE50B052FF807) + v166, 3);
  *&v145 = *(&v145 + 1) ^ (((v163 ^ 0x2118AF41CB9DF18BLL) & 0x1FFFF) << 44);
  v170 = __ROR8__((v145 >> 32) ^ 0xE8776A0979592185, 29);
  v171 = ((v162 >> 41) | (v162 << 57)) ^ (v162 << 23) ^ ((v162 >> 7) + v162 - 2 * ((v162 >> 7) & v162)) ^ 0x733223CDB1613678;
  v172 = v156 ^ __ROR8__(v156, 19) ^ __ROR8__(v156, 28) ^ v171;
  v173 = ((v171 ^ 0x6AA73DE4FB224AEALL ^ v170) & 0x98644592B297112ELL ^ 0x73931C6C80AC80C6) & ((v171 ^ 0x6AA73DE4FB224AEALL ^ v170) & 0x679BBA6D4D68EED1 ^ 0xBEE4EDFABAD7FF2FLL) | (v171 ^ 0x6AA73DE4FB224AEALL ^ v170) & 0x408A2014D406E11;
  v174 = (v167 ^ 0xA9C6E1DEBF44EEAALL) & (v172 ^ 0x8A6A6D17B2236B3DLL) ^ v172 & 0xA0C78707449AB1C7 ^ v173;
  v175 = v172 ^ v167 & 0xE8367E5B8FBEE64ELL ^ (v167 ^ 0xF6FE99260421A092) & (v168 ^ 0x3C21561DC78EAEF4) ^ 0x95A38AEA49FC34C0;
  v176 = v174 ^ v175;
  v177 = (v173 ^ 0x9024619176835320) & (v172 ^ 0x18944F73B14C13E2);
  v178 = ((v171 ^ 0x6AA73DE4FB224AEALL ^ v170) & 0x98644592B297112ELL ^ 0x73931C6C80AC80C6) & ((v171 ^ 0x6AA73DE4FB224AEALL ^ v170) & 0x679BBA6D4D68EED1 ^ 0xBEE4EDFABAD7FF2FLL) & 0x6D01DD9BFC908720 | (v171 ^ 0x6AA73DE4FB224AEALL ^ v170) & 0x40080014C000600;
  v179 = v174 ^ v175 ^ 0x4C36D3A5771BE2F2;
  v180 = ((v169 ^ 0x99D8C2B0F055479CLL ^ v170) + (v169 & 0x9E1AA271580BD765 ^ 0x63EDFDEEEFF5E8BALL ^ (v170 ^ 0x252BD1A1E44F78D1) & (v169 ^ 0xDD164E9FB3EE17D7)) + 1) ^ v167;
  v181 = v170 & 0xF750D4476738C114 ^ v169 ^ (v173 ^ 0x988B4A29EE446DCBLL) & (v170 ^ 0xBB3173D0BC44AFB4);
  v182 = v181 ^ 0x705712A259ECB280;
  v183 = ((v180 & 0x8000000000000000) + v175) ^ v180 & 0x7FFFFFFFFFFFFFFFLL;
  v184 = v181 ^ 0x9C5BFF97DAFABD4BLL;
  *(&v145 + 1) = v183 ^ 0x3578B7069AA75BA7;
  *&v145 = v183;
  v185 = (v183 << 25) ^ 0xFB4B441244000000;
  v186 = v183 ^ 0x3578B7069AA75BA7 ^ (v183 >> 39) ^ (v145 >> 61);
  v187 = v184 ^ __ROR8__(v184, 1);
  v188 = v170 ^ v178 ^ v177 ^ 0x9230C8AB5781377DLL ^ v182;
  v189 = (v186 ^ 0xE71DEB22C73214DALL) & 0x100000000000000;
  v190 = v182 >> 6;
  v191 = (((v179 << 45) ^ 0x1FFFFFFFFFFFFFFFLL) & ((v176 >> 28) ^ 0xBCC8C310D58CE893) & 0x5408800206B7F306 | (v179 << 45) & 0x4000000000000000) ^ (v179 << 36) & 0x5408972000000000;
  v192 = v174 ^ 0xCC8B077A07D2AFB2;
  v193 = (v191 ^ 0xABF76CFDFB7F0CF9) & ((v179 << 36) & 0xABF768D000000000 ^ 0x16A35CEF267721D0 ^ (((v179 << 45) ^ 0x1FFFFFFFFFFFFFFFLL) & ((v176 >> 28) ^ 0xBCC8C310D58CE893) & 0xABF7600DF9480CF9 | (v179 << 45) & 0x337200000000000)) | v191 & 0x400883000080D206;
  if ((v189 & v185) != 0)
  {
    v194 = -v189;
  }

  else
  {
    v194 = (v186 ^ 0xE71DEB22C73214DALL) & 0x100000000000000;
  }

  v195 = (v194 + v185) ^ (v186 ^ 0xE71DEB22C73214DALL) & 0xFEFFFFFFFFFFFFFFLL;
  v196 = __ROR8__(v192, 7);
  v197 = ((v174 ^ v196 ^ 0x45D39FBE30A248D7) + ((v174 >> 41) ^ 0x246D9F) - 2 * ((v174 ^ v196 ^ 0x45D39FBE30A248D7) & ((v174 >> 41) ^ 0x246D9F))) ^ (v192 << 23);
  v198 = ((v188 >> 17) | (v188 << 54)) ^ (v188 << 47) ^ ((-(v188 >> 10) ^ (v188 - ((v188 >> 10) ^ v188)) ^ ((v188 >> 10) - ((v188 >> 9) & 0x1286F2CE39432CLL) + 0x15494379671CA196) ^ 0x15494379671CA196) + v188);
  v199 = v198 ^ 0x779D988731B210C8;
  v200 = v198 ^ 0x779D988731B210C8 ^ v197 ^ 0xA4D2F59C56B095B8;
  v201 = v179 ^ (v176 >> 19) ^ v197 ^ 0xA4D2F59C56B095B8 ^ v193;
  v202 = ((v187 & 0xC89FC1C8FF25DBBDLL ^ v190 & 0x9FC1C8FF25DBBDLL ^ 0x37FCBEB732DE2543) & (v190 & 0x3603E3700DA2442 ^ 0xBABDACF5F25E6D45 ^ v187 & 0x37603E3700DA2442) | (v187 & 0xC89FC1C8FF25DBBDLL ^ v190 & 0x9FC1C8FF25DBBDLL) & 0x400241080D2192B8) ^ (v184 << 58) ^ (v195 - 2 * (v195 & 0x2B3B916F590943D7 ^ v186 & 5) + 0x2B3B916F590943D2);
  v203 = v202 ^ 0x5BE62BB9AF959845;
  v204 = v201 ^ 0x41ACE810D691DE47 ^ (v202 ^ 0x5BE62BB9AF959845) & (~(2 * v195) + v195);
  v205 = (v201 ^ 0x3F2E43CD534259CELL) & v195 ^ v200;
  v206 = v204 ^ v205 ^ 0x89CDC81DE2EFD06;
  v207 = v202 ^ 0xA419D446506A67BALL;
  v208 = (v202 ^ 0xA419D446506A67BALL) & (v198 ^ 0xCFA4D26C34E57B86);
  v209 = (v198 & 0xB884FA9240CEDB7 | (v197 ^ 0x5126AA11E70CEDB7) & ~v198) ^ 0xB884FA9240CEDB7;
  v210 = v202 & 0xCFA4D26C34E57B86 ^ v195 ^ v208 ^ v204;
  v211 = ((v209 - 1) ^ (v209 - ((2 * v209) & 0x1EAADEEE0ECCB71CLL) - 0x70AA9088F899A472) ^ 0x8F556F7707665B8ELL ^ ((v203 ^ v209) + v207)) + v203;
  v212 = (((-v206 ^ (0xA2CAEAB009EDAA2CLL - (v204 ^ v205 ^ 0xAA563631D7C3572ALL)) ^ 0xF7F8D6E7BB16C740 ^ (v206 - ((2 * v206) & 0x100E523089D2717ELL) + 0x807291844E938BFLL)) + 1) ^ (-2 * (v206 & -v206))) - 0x5D35154FF61255D4;
  v213 = v200 & 0x855F5B1D680F3288 ^ v199 ^ (v200 ^ 0x761E775C5BFD7A8FLL) & (v201 ^ 0x458EE72FC4B294B9) ^ v211;
  *(&v214 + 1) = v210 ^ 0x88E0B9EEC2A68041;
  *&v214 = v210 ^ 0x716928E75ADD1504;
  v215 = v210 ^ 0x88E0B9EEC2A68041 ^ (v210 >> 39) ^ (v214 >> 61) ^ ((v210 ^ 0x716928E75ADD1504) << 25);
  v216 = v211 ^ 0xC8B48A8717EC95C9 ^ (v211 >> 6) ^ __ROR8__(v211 ^ 0xC8B48A8717EC95C9, 1) ^ ((v211 ^ 0xC8B48A8717EC95C9) << 58) ^ 0x605885A24906A7E6;
  v217 = (-v216 ^ (v216 - ((2 * v216) & 0xBC51442099DD337ELL) + 0x5E28A2104CEE99BFLL) ^ 0x5E28A2104CEE99BFLL ^ ((v215 ^ 0xD544404DB933B03ELL) - v216 + (-(v215 ^ 0xD544404DB933B03ELL) ^ ((v215 ^ 0xD544404DB933B03ELL) - ((2 * (v215 ^ 0xD544404DB933B03ELL)) & 0x2760CDD193273DBELL) + 0x13B066E8C9939EDFLL) ^ (v216 - (v216 ^ v215 ^ 0xD544404DB933B03ELL)) ^ 0xEC4F9917366C6120) + 1)) + (v215 ^ 0xD544404DB933B03ELL);
  v218 = v213 ^ 0xC493094813B35C4CLL ^ (v213 >> 17) ^ __ROR8__(v213 ^ 0xC493094813B35C4CLL, 10) ^ ((v213 ^ 0xC493094813B35C4CLL) << 47);
  v219 = v218 ^ 0x9FE1BD29247A8C19;
  *(&v214 + 1) = v205 ^ 0xCCAFE188A001AF15;
  *&v214 = v205;
  v220 = v205 ^ 0xCCAFE188A001AF15 ^ __ROR8__(v205 ^ 0xCCAFE188A001AF15, 7) ^ (v214 >> 41);
  v221 = v218 ^ 0x9FE1BD29247A8C19 ^ v220 ^ 0xBC54195574A8D9B8;
  v222 = v212 ^ v220 ^ 0xBC54195574A8D9B8 ^ __ROR8__(v212, 19) ^ (v212 >> 28) ^ (v212 << 36);
  v223 = (((v221 ^ 0x3A2DEA9E8F2FB815) - (v221 ^ 0x597959B01B007AE8)) ^ 0xFFFFFFFFFFFFFFFELL) + (v221 ^ 0x3A2DEA9E8F2FB815);
  v224 = __ROR8__((v217 & 0x4C8D6BA4A074E1CFLL | (v218 ^ 0xE2B47EAC5E97A2EELL) & ~v217) ^ v215 ^ 0xD544404DB933B03ELL, 42) ^ 0xFEFE7EA7DC262D1ELL;
  *&v214 = __ROR8__(v222 ^ 0x69887CF65334E776 ^ v217 & (v215 ^ 0x2ABBBFB246CC4FC1), 22);
  v225 = v221 ^ v215 & 0x9A0619EACD9954E6 ^ (v222 ^ 0x6E0CA4AA67D0DC34) & (v215 ^ 0xD544404DB933B03ELL);
  v226 = (v218 ^ 0x51C6EAF7011CBCDELL) & (v220 ^ 0x91330C3453CED78BLL) ^ v218 & 0x269257DE72D0791ELL ^ v217;
  v227 = v223 - ((2 * v223) & 0x395699A2D7A07A04) - 0x6354B32E942FC2FELL;
  v228 = __ROR8__(v214 ^ 0x6CF80BAE295E58E3, 42) ^ 0x523B8F5152E35437;
  v229 = v228 ^ __ROR8__(v224, 22);
  v230 = v227 & (v222 ^ 0xBF542BF55B6772DLL);
  LODWORD(v222) = *(STACK[0xDF0] + ((-43 * ((v228 ^ ~__ROR8__(v224, 22)) >> 61)) ^ 0x12));
  v231 = v226 ^ v219 ^ v230;
  LODWORD(v222) = (((v222 >> 6) | (4 * v222)) - ((2 * ((v222 >> 6) | (4 * v222))) & 0x79A) + 77) ^ 0xFFFFFFA8;
  *(&v214 + 1) = v226;
  *&v214 = v226 ^ 0xC63F6A7917293AFDLL;
  v232 = v214 >> 1;
  v233 = v228 ^ v225 ^ 0x8F81CBE0AC243544 ^ ((v228 ^ v225) >> 28) ^ __ROR8__(v228 ^ v225 ^ 0x8F81CBE0AC243544, 19) ^ ((v228 ^ v225 ^ 0x8F81CBE0AC243544) << 36);
  v234 = v233 ^ 0x78DC43556ECB017ALL;
  STACK[0xDB0] = ((v233 ^ 0x17A) >> 8);
  STACK[0xDC0] = (v233 ^ 0x6ECB017A) >> 24;
  *&v214 = __ROR8__(v231 ^ 0x3DAB21DCD4ECDF95, 10);
  STACK[0xDC8] = (v233 ^ 0x78DC43556ECB017ALL) >> 56;
  v235 = v232 ^ v226 ^ 0xC63F6A7917293AFDLL ^ ((v226 ^ 0xC63F6A7917293AFDLL) << 58);
  v236 = v235 & 0xFEFFFFFFFFFFFFFFLL;
  v237 = (v231 ^ v214 ^ 0x369E1955787A50AALL) + ((v231 >> 17) ^ 0x1E8C3FE7839) - 2 * ((v231 ^ v214 ^ 0x369E1955787A50AALL) & ((v231 >> 17) ^ 0x1E8C3FE7839));
  v238 = v226 >> 6;
  LOBYTE(v222) = (((((v222 >> 4) | (16 * v222)) ^ 9) + 110) ^ ((((v222 >> 4) | (16 * v222)) ^ 0xCD) - 86) ^ ((((v222 >> 4) | (16 * v222)) ^ 0x41) + 38)) + 68;
  v239 = v235 & 0x100000000000000;
  LOBYTE(v204) = v222 & 0x4E ^ 0x5A;
  v240 = (v222 ^ (2 * ((v222 ^ 0x58) & (2 * ((v222 ^ 0x58) & (2 * ((v222 ^ 0x58) & (2 * ((v222 ^ 0x58) & (2 * ((v222 ^ 0x58) & (2 * v204) ^ v204)) ^ v204)) ^ v204)) ^ v204)) ^ v204))) ^ (v229 >> 39) ^ v229 ^ 0xB096AE14C3697373 ^ (8 * (v229 ^ 0xB096AE14C3697373));
  v241 = v240 ^ ((v229 ^ 0xB096AE14C3697373) << 25);
  STACK[0xD98] = (v233 ^ 0x78DC43556ECB017ALL) >> 32;
  v242 = v237 ^ ((v231 ^ 0x3DAB21DCD4ECDF95) << 47);
  if ((v239 & v238) != 0)
  {
    v243 = -v239;
  }

  else
  {
    v243 = v239;
  }

  v244 = v236 ^ 0x56E7301726D67803 ^ (v243 + (v238 ^ 0x15EAD6734ECA54));
  STACK[0xDB8] = BYTE2(v234);
  STACK[0xDA8] = BYTE5(v234);
  STACK[0xDD8] = BYTE1(v244);
  STACK[0xDA0] = HIWORD(v234);
  v245 = (-83 * BYTE2(v244));
  v246 = ((v245 ^ 6) + 135) ^ v245 ^ 6 ^ -(((v245 ^ 6) + 135) ^ v245 ^ 6) ^ (187 - (((v245 ^ 6) + 135) ^ v245 ^ 6 ^ 0xBB));
  v247 = (((v246 ^ 0xC) + 112) ^ ((v246 ^ 0xFFFFFF9A) - 6) ^ ((v246 ^ 0xFFFFFF96) - 10)) - 124;
  v248 = v247 & 0xB ^ 0x3C;
  LODWORD(v245) = v247 ^ *(v43 + (v245 ^ 0x66)) ^ (2 * ((v247 ^ 0x52) & (2 * ((v247 ^ 0x52) & (2 * ((v247 ^ 0x52) & (2 * ((v247 ^ 0x52) & (2 * ((v247 ^ 0x52) & (2 * ((v247 ^ 0x52) & (2 * v247) ^ v248)) ^ v248)) ^ v248)) ^ v248)) ^ v248)) ^ v248));
  HIDWORD(v249) = v245 ^ 0xB;
  LODWORD(v249) = v245 << 24;
  STACK[0xDD0] = (v249 >> 28);
  LODWORD(v245) = 173 * BYTE3(v237);
  v250 = *(v43 + ((-83 * BYTE3(v237)) ^ 0x66));
  v251 = (((v245 ^ 0x13) + 125) ^ ((v245 ^ 0xFFFFFFF7) - 103) ^ ((v245 ^ 0xFFFFFFE2) - 114)) + 51;
  v252 = v251 & 0x36 ^ 0xFFFFFFA6;
  STACK[0xE58] = BYTE5(v244);
  STACK[0xE60] = BYTE4(v244);
  LODWORD(v245) = v245 ^ v251 ^ v250 ^ (2 * ((v251 ^ 0x68) & (2 * ((v251 ^ 0x68) & (2 * ((v251 ^ 0x68) & (2 * ((v251 ^ 0x68) & (2 * ((v251 ^ 0x68) & (2 * v252) ^ v252)) ^ v252)) ^ v252)) ^ v252)) ^ v252));
  HIDWORD(v249) = v245 ^ 0xB;
  LODWORD(v249) = (v245 ^ 0x80) << 24;
  STACK[0xE88] = (v249 >> 28);
  *STACK[0xDE8] = v233 ^ 0x8D5CE914449052B8;
  v253 = 84;
  if ((LODWORD(STACK[0xEC8]) - 1749059755) >= 0x78)
  {
    v253 = 116;
  }

  v254 = *(STACK[0xD68] + v253) - 22;
  v255 = v254 & 4 ^ 0xFFFFFF9E;
  v256 = v254 ^ (2 * ((v254 ^ 0x68) & (2 * ((v254 ^ 0x68) & (2 * ((v254 ^ 0x68) & (2 * ((v254 ^ 0x68) & (2 * ((v254 ^ 0x68) & (2 * v255) ^ v255)) ^ v255)) ^ v255)) ^ v255)) ^ v255));
  v257 = (v256 & 0x48 ^ (16 * v256) & 0x40 ^ 0xFFFFFFBF) & ~(v256 & 0xFFFFFFB7 ^ (16 * v256) & 0xFFFFFFBF);
  STACK[0xE90] = BYTE6(v244);
  v258 = -(v257 & 0xFFFFFF8A ^ 0xFFFFFF8A) ^ (-126 - (v257 & 0xFFFFFF8A ^ 8)) ^ 0xFFFFFF89 ^ ((v257 & 0xFFFFFF8A ^ 0xFFFFFF8A) - ((2 * (v257 & 0xFFFFFF8A ^ 0xFFFFFF8A)) & 0x10) - 119);
  STACK[0xE40] = BYTE3(v244);
  v259 = (v225 >> 41) ^ (v225 >> 7) ^ v225 ^ 0x63AF338C7B643CALL;
  LODWORD(STACK[0xE00]) = 2 * (STACK[0xE00] & 1) + (LODWORD(STACK[0xE00]) ^ 1);
  STACK[0xE70] = HIBYTE(v244);
  STACK[0xDF0] = v233 ^ 0x7Au;
  STACK[0xD90] = BYTE1(v240) ^ 0xDCLL;
  STACK[0xE08] = BYTE2(v240) ^ 0x17;
  STACK[0xE10] = BYTE5(v241) ^ 0xBCLL;
  STACK[0xE28] = BYTE6(v241) ^ 0xADLL;
  STACK[0xE18] = ((v240 ^ ((v229 ^ 0xC3697373) << 25)) >> 24) ^ 0xBBLL;
  STACK[0xE30] = v244;
  STACK[0xE48] = BYTE1(v237);
  STACK[0xE68] = BYTE4(v237);
  STACK[0xE38] = v237 >> 16;
  STACK[0xE50] = v237;
  STACK[0xE80] = BYTE6(v242) ^ 0x6ALL;
  STACK[0xE20] = HIBYTE(v241) ^ 0x49;
  v260 = BYTE1(v259);
  v261 = v259 ^ ((v225 ^ 0xBCC25605C86C6985) << 23);
  v262 = v261 ^ ((v225 ^ 0xBCC25605C86C6985) << 57);
  STACK[0xEA0] = BYTE6(v261);
  STACK[0xEB0] = BYTE5(v261);
  STACK[0xDF8] = v261 >> 16;
  STACK[0xE78] = BYTE5(v242) ^ 0x80;
  ++LODWORD(STACK[0xED0]);
  v263 = *(STACK[0xED8] + 8 * ((14 * (((v258 + 2) & 0x2B ^ (125 - v258) & (v257 & 0x75 ^ 0x94)) != 212)) | LODWORD(STACK[0xD80])));
  STACK[0xEB8] = v262;
  STACK[0xE98] = HIDWORD(v262);
  STACK[0xEA8] = HIBYTE(v262);
  STACK[0xEC0] = v260;
  return v263();
}

uint64_t sub_1009B1634()
{
  v4 = *(v0 + 8 * (v1 + 24795));
  STACK[0x420] = v2;
  v5 = v4(1028);
  STACK[0x4B8] = 0;
  LODWORD(STACK[0x48C]) = 0;
  *(v3 - 192) = 0;
  STACK[0x4A0] = 0;
  *(v3 - 248) = 0;
  *(v3 - 176) = 0;
  STACK[0x498] = 0;
  *(v3 - 256) = 0;
  *(v3 - 168) = 0;
  STACK[0x480] = 0;
  *(v3 - 208) = 0;
  *(v3 - 200) = 0;
  *(v3 - 240) = 0;
  *(v3 - 232) = 0;
  *(v3 - 184) = 0;
  STACK[0x4A8] = 0;
  STACK[0x490] = 0;
  STACK[0x478] = 0;
  *(v3 - 160) = 0;
  STACK[0x4B0] = 0;
  *(v3 - 224) = v1 - 21908;
  v6 = *(v0 + 8 * (((v5 == 0) * ((((v1 - 470840962) & 0x7E3FDDBF) - 1647294823) ^ (v1 - 21908))) ^ v1));
  *(v3 - 148) = 1644243867;
  return v6();
}

uint64_t sub_1009B17F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (*(a8 + 8 * (v8 + 35055)))();
  v10 = STACK[0x5A0];
  STACK[0x5D8] = 0;
  return (*(v10 + 8 * v8))(v9);
}

uint64_t sub_1009B18B8@<X0>(int a1@<W0>, int a2@<W4>, int a3@<W5>, unsigned int a4@<W6>, int a5@<W8>)
{
  v8 = v5 < a4;
  if (v8 == v6 + 1 > ((a5 + a1) | 4u) + a3)
  {
    v8 = v6 + a2 < v5;
  }

  return (*(v7 + 8 * (((32 * !v8) | (!v8 << 6)) ^ a5)))();
}

uint64_t sub_1009B1928@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  if ((a2 ^ 0xB1FCFFDF) + ((2 * a2) & 0x63F8B098) == -1308819489)
  {
    v2 = -371865839;
  }

  else
  {
    v2 = 371891401;
  }

  *(result + 24) = v2;
  return result;
}

uint64_t sub_1009B1A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15)
{
  v18 = (((v15 ^ 0x936433BA) + 1822149702) ^ ((v15 ^ 0x1665B42C) - 375764012) ^ ((v15 ^ 0x6CD4CA78 ^ (11861 * (v17 ^ 0x32F2))) - 1825849479)) - 397217692;
  v19 = v18 < 0xFE7D2953;
  v20 = v18 > a15 - 496698417;
  if ((a15 - 496698417) < 0xFE7D2953 != v19)
  {
    v20 = v19;
  }

  return (*(v16 + 8 * ((73 * v20) ^ (v17 + 14240))))(a1, a2, a3, a4, a5, a6, a7, a12);
}

uint64_t sub_1009B1B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, int a13, int a14, int a15, int a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  *(v28 - 112) = v22;
  *(v28 - 128) = v27;
  *(v28 - 120) = v25 - a16 * v26 - 29398;
  (*(v23 + 8 * (v25 + 10103)))(v28 - 128);
  *(v28 - 128) = v25 - 1022166737 * a15 - 883400956;
  *(v28 - 120) = v27;
  (*(v23 + 8 * (v25 ^ 0x68EF)))(v28 - 128);
  *(v28 - 128) = v27;
  *(v28 - 120) = v25 - 11167 - a14;
  *(v28 - 116) = a13;
  (*(v23 + 8 * (v25 + 10275)))(v28 - 128);
  *(v28 - 112) = v25 + 297845113 * a12 - 1649005944;
  *(v28 - 128) = v27;
  *(v28 - 120) = a18;
  (*(v23 + 8 * (v25 + 10290)))(v28 - 128);
  *(v28 - 120) = v25 - 11167 - v21;
  *(v28 - 116) = a17 - v21;
  *(v28 - 128) = v27;
  (*(v23 + 8 * (v25 + 10275)))(v28 - 128);
  *(v28 - 112) = v25 - 906386353 * a11 - 25070;
  *(v28 - 128) = v22;
  *(v28 - 120) = v22;
  (*(v23 + 8 * (v25 + 10291)))(v28 - 128);
  *(v28 - 120) = v25 - 17902189 * a10 + 1051044733;
  *(v28 - 112) = v22;
  *(v28 - 128) = v27;
  (*(v23 + 8 * (v25 + 10348)))(v28 - 128);
  *(v28 - 120) = v22;
  *(v28 - 112) = &a21;
  *(v28 - 128) = v25 + 193924789 * v24 + 8387;
  v29 = (*(v23 + 8 * (v25 + 9994)))(v28 - 128);
  return (*(v23 + 8 * (((*(v28 - 104) >= ((v25 + 1733137508) & 0x98B1FBFF) + 92880815) * (13 * (v25 ^ 0xA8AC) - 39499)) | v25)))(v29);
}

uint64_t sub_1009B1D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, uint64_t a28)
{
  v29 = *(a2 + 4);
  a27 = 436897306;
  HIDWORD(a18) = -371865839;
  return (*(v28 + 145552))(a1, a2, 965508158, v29, 3923101457, &a27, 436897306, &a28, a9, a10, &STACK[0x218], a12, a13, a14, *(a2 + 8), 0xE9D5C71184B4E967, 0, a18);
}

uint64_t sub_1009B1FB0()
{
  v1 = STACK[0x18F8];
  LODWORD(STACK[0x1404]) = (((LODWORD(STACK[0x18F8]) ^ 0x182F6DD6) - 405761494) ^ ((LODWORD(STACK[0x18F8]) ^ 0xECB7D145) + 323497659) ^ ((LODWORD(STACK[0x2C8]) ^ LODWORD(STACK[0x18F8])) + ((LODWORD(STACK[0x2D0]) + 108) ^ 0xE2B28407))) - 371865758;
  v2 = (*(v0 + 8 * LODWORD(STACK[0x2C4])))((((v1 ^ 0x8A3E2EE7) + 1975636249) ^ ((v1 ^ 0xEEB87A46) + 289899962) ^ ((v1 ^ 0x8D5393B0) + 1923902544)) - 371865681);
  STACK[0x1568] = v2;
  return (*(v0 + 8 * ((38 * (v2 != 0)) ^ 0x1FCEu)))();
}

uint64_t sub_1009B21B0()
{
  v1 = *(&STACK[0x5C4] + (STACK[0x328] & LOBYTE(STACK[0x5C5]) ^ 1));
  v2 = 1009 * (((v1 ^ 0xDA0D) + 9715) ^ ((v1 ^ 0x7BEC) - 31724) ^ ((v1 ^ 0xA12C) + 24276)) - 4576;
  v3 = v2 & 0x4F4F ^ 0x8BD9;
  v4 = (v2 ^ (2 * ((v2 ^ 0x39DC) & (2 * ((v2 ^ 0x39DC) & (2 * ((v2 ^ 0x39DC) & (2 * ((v2 ^ 0x39DC) & (2 * ((v2 ^ 0x39DC) & (2 * ((v2 ^ 0x39DC) & (2 * ((v2 ^ 0x39DC) & (2 * ((v2 ^ 0x39DC) & (2 * ((v2 ^ 0x39DC) & (2 * ((v2 ^ 0x39DC) & (2 * ((v2 ^ 0x39DC) & (2 * ((v2 ^ 0x39DC) & (2 * ((v2 ^ 0x39DC) & (2 * (((2 * v2) & 0x73BA ^ 0x7692) & v2 ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3))) ^ 0xB31E;
  v5 = ((16777281 * (((v4 ^ 0xA3B41A8) - 171655592) ^ ((v4 ^ 0xEDA08A78) + 308245896) ^ ((v4 ^ 0xE79B3781) + 409258111)) - 727641967) >> 16);
  v6 = STACK[0x340] + v5 + ((v5 < 0x61) << 8);
  v7 = (((v6 ^ 0xE13B47467F539A48) + 0x6F18EC97B165A008) ^ v6 ^ ((v6 ^ 0x61FBF929D5B06909) - 0x1027AD07E479ACB9) ^ ((v6 ^ 0x4EB1DAF64C7B90CLL) - 0x75374981550E7CBCLL) ^ ((v6 ^ 0xF5F7F7EEFFED8FFDLL) + 0x7BD45C3F31DBB5B3)) & 0xFFFFFFFFFFFFFFFCLL;
  STACK[0x478] = (((v7 ^ 0x29CFC4463B47F0B6) - 0x52CCF869E47431FFLL) ^ ((v7 ^ 0xB7AC77C8EC94C8AELL) + 0x3350B418CC58F619) ^ ((v7 ^ 0xEFBFE7A0E61AFDA8) + 0x6B432470C6D6C31FLL)) + 0x5F1B59B8C18590F9;
  LOWORD(v7) = *(&STACK[0x5C4] + (STACK[0x5C6] & 3 ^ 1));
  LOWORD(v7) = 5042 * (((v7 ^ 0x314A) - 12618) ^ ((v7 ^ 0x3666) + 18842) ^ ((v7 ^ 0x7E1) + 30751)) + 9614;
  v8 = v7 & 0xDD92 ^ 0x235B;
  LODWORD(v7) = (v7 ^ (2 * ((v7 ^ 0x1FFC) & (2 * ((v7 ^ 0x1FFC) & (2 * ((v7 ^ 0x1FFC) & (2 * ((v7 ^ 0x1FFC) & (2 * ((v7 ^ 0x1FFC) & (2 * ((v7 ^ 0x1FFC) & (2 * ((v7 ^ 0x1FFC) & (2 * ((v7 ^ 0x1FFC) & (2 * ((v7 ^ 0x1FFC) & (2 * ((v7 ^ 0x1FFC) & (2 * ((v7 ^ 0x1FFC) & (2 * ((v7 ^ 0x1FFC) & (2 * ((v7 ^ 0x1FFC) & (2 * ((v7 ^ 0x1FFC) & 0x26E ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8))) ^ 0x6C2F;
  LODWORD(v7) = (13 * (((v7 ^ 0xFDB2B3D7) + 38620201) ^ ((v7 ^ 0x12B020B0) - 313532592) ^ ((v7 ^ 0xEF0222DA) + 16637222)) + 8717977) >> 16;
  return (*(v0 + 8 * ((LODWORD(STACK[0x364]) - 225) ^ (2 * ((((v7 + 3) ^ (2 * (((v7 - 125) ^ 8) & (2 * (((v7 - 125) ^ 8) & (2 * ((v7 + 3) & 8)) | (v7 + 3) & 8)) | (v7 + 3) & 8))) & 0x1C) != 8)))))();
}

uint64_t sub_1009B7D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  *(v32 - 112) = a13;
  *(v32 - 104) = a14;
  *(v32 - 136) = v31 + 1112314453 * ((2 * ((v32 - 144) & 0x181B57B0) - (v32 - 144) + 1743038536) ^ 0x88B28291) + 13830;
  *(v32 - 144) = &a18;
  *(v32 - 128) = &a18;
  *(v32 - 120) = &a30;
  v33 = (*(v30 + 8 * (v31 + 30625)))(v32 - 144);
  return (*(v30 + 8 * v31))(v33);
}

uint64_t sub_1009B7DAC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int8x16_t a7, int8x8_t a8, int8x8_t a9)
{
  v16.val[0].i64[0] = (v13 + a3 - 1) & 0xF;
  v16.val[0].i64[1] = (v13 + a3 + 14) & 0xF;
  v16.val[1].i64[0] = (v13 + a3 + 13) & 0xF;
  v16.val[1].i64[1] = (v13 + a3 + (v9 ^ 2)) & 0xF;
  v16.val[2].i64[0] = (v13 + a3 + 11) & 0xF;
  v16.val[2].i64[1] = (v13 + a3 + 10) & 0xF;
  v16.val[3].i64[0] = (v13 + a3 + 9) & 0xF;
  v16.val[3].i64[1] = (v13 + a3) & 0xF ^ 8;
  *(a4 + v13) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a5 + v13), *(v11 + v16.val[0].i64[0] - 7)), veor_s8(*(v12 + v16.val[0].i64[0] - 7), *(v10 + v16.val[0].i64[0] - 7)))), a9), vmul_s8(*&vqtbl4q_s8(v16, a7), a8)));
  return (*(v14 + 8 * (((a2 == a3) * a6) ^ a1)))();
}

uint64_t sub_1009B7E80@<X0>(unint64_t a1@<X8>)
{
  v7 = a1 + v4;
  v8 = (v5 ^ 0x1BFF) & (v4 + 15);
  v9 = ((v5 + 34174) ^ 0xA16FLL) - v4 + v8;
  v10 = v2 + v9;
  v11 = v2 + v8 + 1;
  v12 = v3 + v9;
  v13 = v3 + v8 + 1;
  v14 = v8 + v1 + 3;
  v16 = v11 > a1 && v10 < v7;
  v18 = v13 > a1 && v12 < v7 || v16;
  if (v14 <= a1 || v14 - v4 >= v7)
  {
    v20 = v18;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 8 * ((2019 * v20) ^ v5)))();
}

uint64_t sub_1009B7FB8(uint64_t a1, uint64_t a2)
{
  *v2 = 0x981390C2FED9246;
  v2[2] = 0;
  v2[3] = 0;
  v4 = STACK[0x8D8];
  *(v4 + 8) = -371865839;
  STACK[0x1D48] = v4;
  return (*(v3 + 120816))(a1, a2, 946722720, 3348244351, 235);
}

uint64_t sub_1009B80C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = STACK[0x270];
  v11 = STACK[0x270] < 0x8E37E6B9;
  v12 = (v8 ^ 0xE9D5C711) + STACK[0x450];
  STACK[0xBE0] = v12 + 10;
  v12 -= 0x5AC8A0085B94B802;
  v13 = v12 < 0x8E37E6B9;
  v14 = v12 > v10;
  if (v11 == v13)
  {
    v13 = v14;
  }

  return (*(a8 + 8 * ((v9 - 6622) ^ (43 * v13))))();
}

uint64_t sub_1009B854C()
{
  v6 = *(v4 + v2 * v5 + 36);
  v8 = v6 + 1181975489 < v1 && v6 != ((v0 - 14406) | 0x8D00) + 965463870;
  return (*(v3 + 8 * ((v8 * (((v0 - 272672087) & 0xBE5F4F31) + 1373736612)) ^ v0)))();
}

uint64_t sub_1009B88B8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8)
{
  v18 = ((v14 - 1350) | a4) + (v17 ^ a7) + v9 - (a8 & (2 * ((v17 ^ a7) + v9))) + v10;
  *(v15 + 4 * v16) = v18 ^ v11;
  return (*(v8 + 8 * (((HIDWORD(v18) == v12) * v13) ^ v14)))();
}

uint64_t sub_1009B8914(unsigned int a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v12 = 8 * ((v8 | ((v8 < 0x29DE81DF) << 32)) + 0x686052E45623B31CLL) - 0x430297240011A7D8;
  *(STACK[0x478] + v12) = *(v10 + v12) ^ 0xEEEEEEEEEEEEEEEELL;
  if (v9 < 0x633A36C != a1 < a8)
  {
    v13 = v9 < 0x633A36C;
  }

  else
  {
    v13 = a1 < a4;
  }

  return (*(STACK[0x480] + 8 * (((2 * !v13) | (4 * !v13)) ^ v11)))(a1 + 1);
}

uint64_t sub_1009B93E0()
{
  v7 = v1 & 0xF;
  *(v5 + v1) = *(*(&off_1010A0B50 + (v0 ^ 0xB88F)) + v7 - 161145738) ^ *(v4 + v1) ^ (-127 * v7) ^ *(*(&off_1010A0B50 + v0 - 42367) + v7 - 688259427) ^ *(*(&off_1010A0B50 + v0 - 40866) + v7 - 1859512476);
  v8 = v1 + 1904511269;
  v9 = v1 + 466234852 < v2;
  if (v2 < v3 != v0 - 1904556877 + v8 > 0xE435D21C)
  {
    v9 = v2 < v3;
  }

  return (*(v6 + 8 * ((4021 * v9) ^ v0)))();
}

uint64_t sub_1009B959C@<X0>(uint64_t a1@<X1>, unsigned __int8 a2@<W2>, int a3@<W3>, char a4@<W4>, unsigned __int8 a5@<W5>, uint64_t a6@<X6>, unsigned __int8 a7@<W7>, unsigned __int8 a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, unsigned int a39)
{
  v49 = ((36 * (v47 ^ 0x16)) ^ 0xA8) & a4 ^ 0xA4;
  v50 = 2 * ((2 * v49) ^ v49 ^ (2 * v49) & a4);
  v51 = 2 * ((2 * (v50 ^ v49 ^ v50 & a4)) ^ v49 ^ (2 * (v50 ^ v49 ^ v50 & a4)) & a4);
  v52 = v51 ^ v49 ^ v51 & a4;
  v53 = a39 < 0x761FFF6F;
  v54 = (((a4 ^ (2 * v52)) << 16) ^ 0xC03D2FDD5CDC75D2) & (v46 ^ 0xF57DBFDD7DFFF5CCLL) | v46 & 0x2D;
  v55 = a1 << 40;
  v56 = (v55 ^ 0x7FFFA1FFFF8B41C8) & ((((a6 << 32) ^ 0xD0492CF40A4289D1) & ((a7 << 24) ^ 0xF979BCFFC94BAFD9) | (a7 << 24) & 0xF5000000) ^ 0x92530D0DC4C9C819);
  v57 = v54 & 0x40190F9954770062 ^ 0xE9FDAFFD5C9840FFLL ^ (v54 ^ 0x3FC2D022A3E78A01) & (((v56 ^ v55 & 0xDE0000000000 ^ 0x900180E01120BE17) & ((a2 << 8) ^ 0x9013B6E235A33F9FLL) | (v56 ^ v55 & 0xDE0000000000) & 0x6FEC491DCA080040) ^ 0x7BFF5F93F7238742);
  v58 = ((v41 << 56) ^ 0x1C00000000000000 | (v45 << 48)) + v57;
  v59 = (*(v40 + (a3 - 201451162)) ^ STACK[0xE88]) << 56;
  v60 = ((v44 << 40) ^ 0x5D0F2C2535E0218DLL) & ~v59 | v59 & 0xA200000000000000;
  v61 = ((((v48 << 24) ^ 0x797F818EBC583DE3) & ((a8 << 8) ^ 0xFBFF8BEEFF7F07E3) & 0x2125010E1840B100 | (a8 << 8) & 0x8000) ^ 0x7185AB51BE243548 ^ ((((v39 << 32) ^ 0xFFFFFF03FFFFFFFFLL) & ((v43 << 16) ^ 0x16186BCD32F13970) | (v39 << 32) & 0x3200000000) ^ 0x4C42E32FD5C07720) & ((((v48 << 24) ^ 0x797F818EBC583DE3) & ((a8 << 8) ^ 0xFBFF8BEEFF7F07E3) | (a8 << 8) & 0xC200) ^ 0x6807E7161A78293)) & (a5 ^ 0xFFFFFFFFFFFFFFC1) ^ a5 & 0xE7;
  v62 = ((v42 << 48) & 0xF0000000000000 ^ 0x35DF1D162E12CA90 ^ (v60 ^ 0x15004920E5222098) & ((v42 << 48) ^ 0xFFEDFF25F7F2EBDDLL)) & (v61 ^ 0xF505DD28BEAF21E1) ^ v61 & 0xBF31EC012F347ALL;
  if (v53 == (a3 + 1780357334) < 0x761FFF6F)
  {
    v53 = a3 + 1780357334 < a39;
  }

  v63 = *(STACK[0xED8] + 8 * (v47 ^ (36063 * v53)));
  STACK[0xE88] = ((v62 ^ (v62 >> 26) ^ v58 ^ (v57 << 23) ^ ((v58 ^ (v57 << 23)) >> 17) ^ 0xE815FD672795DB4BLL) >> 56) ^ 0x95;
  return v63();
}

uint64_t sub_1009B9D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v10 + 80) = v8;
  *(v10 + 1024) = *(a8 + 8 * (v9 - 38639));
  return (*(a8 + 8 * (((v9 - 10660) ^ 0x67BD) + v9 - 38639)))();
}

uint64_t sub_1009B9DA4()
{
  v3 = (*(v2 + 8 * (v1 ^ 0xE389)))();
  *(v0 + 16) = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1009B9DE0@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v11 = (a5 + v6 + v8 + a1);
  *v11 = v10;
  v11[1] = v10;
  return (*(v9 + 8 * (((v6 + a3 + ((v5 - 1089) | a2) == v7) * a4) ^ v5)))();
}

uint64_t sub_1009B9E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = v8 + v10 + ((9916 * (v9 ^ 0xA259u)) ^ 0xFFFFFFFFFFFF8BC4);
  v12 = *(&off_1010A0B50 + v9 - 38816) + v8 - 381342526;
  v13 = *(&off_1010A0B50 + (v9 ^ 0xAA4E)) + v8 - 862364432;
  v14 = *(&off_1010A0B50 + v9 - 37178) + v8 - 1879826847;
  v18 = v11 > 0xF && v13 > 0xF && v12 >= ((v9 - 11814) ^ 0x7424uLL) && v14 > 0xF;
  return (*(a8 + 8 * (((16 * v18) | (32 * v18)) ^ v9)))();
}

uint64_t sub_1009B9F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = STACK[0x4D8] - 38842;
  LOWORD(STACK[0xB8A]) = v8;
  v10 = *(a8 + 8 * (v9 ^ 0x12FE));
  LODWORD(STACK[0x4E0]) = v8;
  return v10();
}

uint64_t sub_1009B9F90()
{
  v1 = STACK[0x4D8] - 35239;
  v0[160] = 0;
  v0[87] = v0[102];
  LODWORD(STACK[0x848]) = -386127142;
  v0[27] = &STACK[0xB30];
  LODWORD(STACK[0x61C]) = 1123196274;
  return (*(STACK[0x5A0] + 8 * v1))();
}

uint64_t sub_1009BA0C8@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v3 = a2 + 2680;
  v4 = *(v2 + 1176);
  *(v2 + 960) = *(a1 + 8 * v3);
  return (*(a1 + 8 * (v3 ^ 0xADFB ^ ((v3 + 30237) | 0x105))))(v4);
}

uint64_t sub_1009BA220@<X0>(int a1@<W8>)
{
  v4 = STACK[0x390];
  v5 = (a1 - 1704823205) ^ STACK[0x390];
  *(v3 - 216) = v5;
  *(v3 - 200) = v4 | 1;
  *(v3 - 192) = (v2 - 588921518) ^ v4;
  *(v3 - 208) = STACK[0x380];
  *(v3 - 176) = v4 + a1 - 486567692;
  *(v3 - 172) = v5 ^ 0xF7;
  *(v3 - 180) = ((a1 - 1704823205) ^ 0x127A) + v4;
  v6 = (*(v1 + 8 * (a1 ^ 0x4CBA9554u)))(v3 - 216);
  return (*(v1 + 8 * *(v3 - 184)))(v6);
}

uint64_t sub_1009BA2B4@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>, int8x16_t a4@<Q0>, int8x16_t a5@<Q1>, int8x16_t a6@<Q5>, int8x16_t a7@<Q6>, int8x16_t a8@<Q7>)
{
  v13 = a3 + v9;
  v14 = v12 + 4 * v9;
  v15 = v9 + 4;
  a5.i64[0] = *(v14 + 4);
  a5.i32[2] = *(v12 + 4 * v13 + a1);
  v16 = vextq_s8(a4, a5, 0xCuLL);
  a5.i32[3] = *(v12 + 4 * v15);
  v17.i32[0] = *(v11 + 4 * (*(v14 + 4) & 1));
  v17.i32[1] = *(v11 + 4 * (*(v14 + 8) & 1));
  v17.i32[2] = *(v11 + 4 * (a5.i8[8] & 1));
  v17.i32[3] = *(v11 + 4 * (a5.i8[12] & 1));
  *v14 = veorq_s8(veorq_s8(veorq_s8(*(v14 + 1588), v17), a7), vshrq_n_u32(vorrq_s8(vandq_s8(a5, a8), vandq_s8(v16, a6)), 1uLL));
  return (*(v10 + 8 * (((v15 == 224) * a2) ^ v8)))(a5);
}

uint64_t sub_1009BA398@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  *v4 = v3;
  *(v3 + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  return (*(a1 + 8 * v2))();
}

uint64_t sub_1009BA3BC@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xF34]) = *STACK[0xAF0] - ((2 * *STACK[0xAF0]) & 0x685AD670) - 1272091848;
  if (STACK[0xE98])
  {
    v2 = STACK[0xE90] == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v4 = *(v1 + 8 * (((((a1 - 50338) | 0x8600) - 34241) * v3) ^ a1));
  LODWORD(STACK[0xE50]) = v3;
  return v4();
}

uint64_t sub_1009BA4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, int8x16_t a8@<Q5>, uint64_t a9@<D6>)
{
  v20 = ~v9 + a3;
  v21 = v20 & 0xF;
  v22 = v12;
  v23.i64[0] = vqtbl4q_s8(*(&v17 - 1), a8).u64[0];
  v23.i64[1] = a9;
  v24 = vrev64q_s8(vmulq_s8(v23, v16));
  *(v10 + v20) = veorq_s8(veorq_s8(veorq_s8(*(a4 + v21 - 15), *(a1 + v20)), veorq_s8(*(a5 + v21 - 15), *(a6 + v21 - 15))), vextq_s8(v24, v24, 8uLL));
  return (*(v15 + 8 * ((((a7 ^ a2) + v9 != v13) * v14) ^ v11)))();
}

uint64_t sub_1009BA578(double a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  a2.n128_u16[0] = 6939;
  a2.n128_u8[2] = 27;
  a2.n128_u8[3] = 27;
  a2.n128_u8[4] = 27;
  a2.n128_u8[5] = 27;
  a2.n128_u8[6] = 27;
  a2.n128_u8[7] = 27;
  a3.n128_u16[0] = 24415;
  a3.n128_u8[2] = 95;
  a3.n128_u8[3] = 95;
  a3.n128_u8[4] = 95;
  a3.n128_u8[5] = 95;
  a3.n128_u8[6] = 95;
  a3.n128_u8[7] = 95;
  return (*(v7 + 8 * (a7 ^ 0xC9296AD8 ^ ((a7 < 0xD49D0AEE) * (a7 + 920051459)))))(xmmword_100F523B0, a2, a3);
}

uint64_t sub_1009BA608@<X0>(unsigned int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W7>, uint64_t a8@<X8>)
{
  v16 = (((a1 ^ (a1 >> 30) ^ a7) + v12) ^ ((a1 ^ (a1 >> 30) ^ a3) + a4) ^ (v11 + (a1 ^ (a1 >> 30) ^ a5))) * v13;
  *(v15 + 4 * a8) = v8 + v16;
  return (*(v14 + 8 * (((a8 < 0x26F) * a2) ^ v10)))((v9 + a6 + v16));
}

uint64_t sub_1009BA6CC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34)
{
  v36 = v34 - 1873014738;
  v37 = ((2 * (v36 ^ 0xA321FEF1)) ^ 0xAD936FAE) & (v36 ^ 0xA321FEF1) ^ (2 * (v36 ^ 0xA321FEF1)) & 0x56C9B7D6;
  v38 = ((4 * (v37 ^ 0x52489051)) ^ 0x5B26DF5C) & (v37 ^ 0x52489051) ^ (4 * (v37 ^ 0x52489051)) & 0x56C9B7D4;
  v39 = (v36 ^ 0xE1C00240 ^ a8) & (2 * (v36 & 0xF5E84926)) ^ v36 & 0xF5E84926;
  v40 = (v37 ^ 0x489B5C1) & (4 * v39) ^ v39;
  v41 = v38 ^ 0x52009743;
  v42 = ((16 * (v38 ^ 0x4C92083)) ^ 0x6C9B7D70) & (v38 ^ 0x4C92083) ^ (16 * (v38 ^ 0x4C92083)) & 0x56C9B7D0;
  v43 = v41 & (16 * v40) ^ v40 ^ 0x56C9B7D7 ^ (v42 ^ 0x44893587) & ((v41 & (16 * v40) ^ v40) << 8);
  v44 = v36 ^ (2 * ((v43 << 16) & 0x56C90000 ^ v43 ^ ((v43 << 16) ^ 0x37D70000) & (((v42 ^ 0x12408287) << 8) & 0x56C90000 ^ 0x16480000 ^ (((v42 ^ 0x12408287) << 8) ^ 0x49B70000) & (v42 ^ 0x12408287))));
  v46 = v44 == ((a34 - 1333788672) ^ 0x8836DDF3) || (((a34 - 1333788672) & 0x4F7FFFFF ^ 0x4D4FFB74) & v44) != 8;
  return (*(v35 + 8 * ((244 * v46) ^ (a34 - 1297078019))))(1456060368, a1, a2, a3, a4, a5, a6, a7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_1009BA894@<X0>(unsigned int a1@<W8>)
{
  v11 = a1 < v5;
  *(v10 + v8) = *(v4 + (v8 & 0xF)) ^ *(v1 + v8) ^ *((v8 & 0xF) + v3 + 2) ^ (-95 * (v8 & 0xF)) ^ *((v8 & 0xF) + v2 + 3);
  if (v11 == v8 + 1 > ((v7 - 9633) ^ 0x212F7FE2u))
  {
    v11 = v8 - 556754145 < a1;
  }

  return (*(v9 + 8 * ((v11 * v6) ^ v7)))();
}

uint64_t sub_1009BABBC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v14 = v9 + v8;
  v15 = v11 + a6 - v6 + 2 * v14 - v7 - 41111;
  if (a1)
  {
    v11 = v15;
  }

  v16 = v11 + 419036605 > v12;
  if (v12 < 0x18F9FDBD != v11 > 0xE7060242)
  {
    v16 = v11 > 0xE7060242;
  }

  return (*(v10 + 8 * (v14 ^ 0x5238 ^ (89 * (((v13 + 1) < 0xF) & ~v16)))))();
}

uint64_t sub_1009BAD58@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  *v50 = a48;
  v50[1] = *(a45 + 80);
  *(a45 + 80) = a1;
  *(v50[1] + 24) = a1;
  *(v50 - 2) = 0x79C4BC1D8A4006F0 - *(v50 - 2);
  return (*(v49 + 8 * ((7562 * ((v48 ^ 0x5EF9B0CBu) < 0x62C77E85)) ^ ((v48 ^ 0x5EF9B0CB) - 1593419750))))();
}

uint64_t sub_1009BAE34()
{
  v3 = 23958;
  atomic_compare_exchange_strong(v1, &v3, 0xA94EFu);
  return (*(v2 + 8 * (((v3 == 23958) * ((3 * (v0 ^ 0x7E6F)) ^ 0x43EF)) ^ v0)))();
}

uint64_t sub_1009BAE78@<X0>(int a1@<W8>)
{
  v4 = ((v1 ^ 0xB021835B) + 1339980965) ^ ((v1 ^ 0x5E08EE08) - 1577643528) ^ ((v1 ^ 0x7FCAA42) - 133999170);
  v5 = v4 - LODWORD(STACK[0x123C]) + 1542835708;
  v6 = *(v2 + v4 - 371865860);
  LODWORD(STACK[0x1F20]) = v5 ^ ((v5 ^ 0xE233085F) + 1481289330) ^ ((v5 ^ 0xFFE88600) + 1167138863) ^ ((v5 ^ 0xB7A23051) + 232494720) ^ ((v5 ^ 0xEFFFE7DF) + 1434862066) ^ 0xAC539EC0;
  LODWORD(STACK[0xCEC]) = v4 + (v6 ^ (a1 + 8910455)) - ((2 * v6) & 0xFFFFFFEF) - 380780812;
  return (*(v3 + 8 * ((19493 * LOBYTE(STACK[0xCFF])) ^ a1)))();
}

uint64_t sub_1009BB104@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v11 = a1 & 0xF;
  *(a2 + a1) = *(v11 + v7 + 1) ^ *(v5 + v11) ^ (-35 * v11) ^ ((*(v4 + a1) & 0x3B) + (*(v4 + a1) | 0x3B) + 100) ^ *(v6 + v11 + (v8 ^ 0xA5D5));
  v12 = v9 < 0x852C7F53;
  if (v12 == a1 + 1 > 0x7AD380AC)
  {
    v12 = a1 - 2060681388 < v9;
  }

  return (*(v10 + 8 * ((v12 * v2) ^ v3)))();
}

uint64_t sub_1009BB228()
{
  v2 = *(v1 + 8 * (v0 - 15928));
  LODWORD(STACK[0x348]) = 1468109800;
  return v2();
}

uint64_t sub_1009BB300()
{
  *(STACK[0x2D8] - 586084794) = v0;
  STACK[0x448] -= 32;
  return (*(v2 + 8 * (v1 + 8436)))();
}

uint64_t sub_1009BB3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, char a18)
{
  *(a13 + 16) = ((v18 - 23585) | 0x9462) - v21 - 40035;
  v23 = 17902189 * ((((2 * (v22 - 136)) | 0x2143C580) - (v22 - 136) + 1868438848) ^ 0x1EEEF4D0);
  *(v22 - 120) = 1148359541 - v23;
  *(v22 - 128) = v20;
  *(v22 - 136) = v18 - v23 - 12376;
  (*(v19 + 8 * (v18 ^ 0xAFAA)))(v22 - 136);
  v24 = 193924789 * ((((v22 - 136) | 0x175A8DFC) - ((v22 - 136) | 0xE8A57203) - 391810557) ^ 0xA1E1BF9A);
  *(v22 - 136) = (((((32 * a15) ^ 0x42254B15) + 632822895) ^ (((32 * a15) ^ 0xAEAF98C) + 1836560120) ^ (((((v18 - 11138) | 0x500) + 1221555449) ^ (32 * a15)) + 793961955)) - 875820329) ^ v24;
  *(v22 - 132) = (v18 + 2980) ^ v24;
  *(v22 - 128) = v20;
  (*(v19 + 8 * (v18 ^ 0xAED9)))(v22 - 136);
  *(v22 - 128) = v18 + 193924789 * ((v22 - 136) ^ 0xB6BB3266) - 12701;
  *(v22 - 120) = a17;
  *(v22 - 136) = &a18;
  (*(v19 + 8 * (v18 + 26286)))(v22 - 136);
  *(v22 - 128) = a17;
  *(v22 - 120) = v20;
  *(v22 - 112) = v18 - 1603510583 * ((((v22 - 136) | 0xB4FAC242) - ((v22 - 136) | 0x4B053DBD) + 1258634685) ^ 0x2321F0E9) + 23745;
  v25 = (*(v19 + 8 * (v18 + 26347)))(v22 - 136);
  return (*(v19 + 8 * ((21 * (*(v22 - 136) > 0x124D6441u)) ^ v18)))(v25);
}

uint64_t sub_1009BB814@<X0>(uint64_t a1@<X5>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v40 = LODWORD(STACK[0x3E4])++;
  *(STACK[0x3A0] - 775311879) = v40 + 1;
  v41 = 1603510583 * ((a36 - ((v39 - 216) | 0x78EC1A47EE0C07A6) + 0x78EC1A47EE0C07A6) ^ 0xB8E2F2548628CAF2);
  *(v39 - 200) = *(v37 + v38) ^ v41;
  *(v39 - 176) = a2 - 1603510583 * ((a36 - ((v39 - 216) | 0xEE0C07A6) - 301201498) ^ 0x8628CAF2) + 1226448149;
  *(v39 - 208) = (a2 - 1602699669) ^ (1603510583 * ((a36 - ((v39 - 216) | 0xEE0C07A6) - 301201498) ^ 0x8628CAF2));
  *(v39 - 216) = v41 ^ a1;
  *(v39 - 192) = (a2 - 1602703235) ^ (1603510583 * ((a36 - ((v39 - 216) | 0xEE0C07A6) - 301201498) ^ 0x8628CAF2));
  *(v39 - 188) = ((a2 - 1602699669) ^ 0x33) - 1603510583 * ((a36 - ((v39 - 216) | 0xEE0C07A6) - 301201498) ^ 0x8628CAF2);
  *(v39 - 184) = 1603510583 * ((a36 - ((v39 - 216) | 0xEE0C07A6) - 301201498) ^ 0x8628CAF2);
  v42 = (*(v36 + 8 * (a2 ^ 0x4CBA94D3u)))(v39 - 216);
  return (*(v36 + 8 * *(v39 - 180)))(v42);
}

uint64_t sub_1009BB980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = ((v7 / (a6 - v9) + 1) ^ (v7 / (a6 - v9))) - ((((v7 / (a6 - v9) + 1) ^ (v7 / (a6 - v9))) >> 1) & 0x5555555555555555);
  v12 = ((v11 >> (v8 ^ 0xBFu)) & 0x3333333333333333) + (v11 & ((v8 + 1973) + 0x33333333333278C1));
  return (*(v10 + 8 * ((97 * (v6 != ((((v12 + (v12 >> 4)) & 0xF0F0F0F0F0F0F0FLL) * a4) >> 56) - 1)) ^ v8)))();
}

uint64_t sub_1009BBA84(uint64_t a1)
{
  STACK[0x340] = v5;
  v6 = LODWORD(STACK[0x348]) + v1;
  v7 = (v6 ^ 0x8C7E4B87) & (2 * (v6 & 0xA87E6C27)) ^ v6 & 0xA87E6C27;
  v8 = ((2 * (((v2 ^ 0x659D) - 594664739) ^ v6)) ^ 0xA9E06F54) & (((v2 ^ 0x659D) - 594664739) ^ v6) ^ (2 * (((v2 ^ 0x659D) - 594664739) ^ v6)) & 0x74F037AA;
  v9 = v8 ^ 0x141010AA;
  v10 = (v8 ^ 0x60E02100) & (4 * v7) ^ v7;
  v11 = ((4 * v9) ^ 0xD3C0DEA8) & v9 ^ (4 * v9) & 0x74F037A8;
  v12 = (v11 ^ 0x50C016A0) & (16 * v10) ^ v10;
  v13 = ((16 * (v11 ^ 0x24302102)) ^ 0x4F037AA0) & (v11 ^ 0x24302102) ^ (16 * (v11 ^ 0x24302102)) & 0x74F037A0;
  v14 = v12 ^ 0x74F037AA ^ (v13 ^ 0x44003200) & (v12 << 8);
  v15 = v6 ^ (2 * ((v14 << 16) & 0x74F00000 ^ v14 ^ ((v14 << 16) ^ 0x37AA0000) & (((v13 ^ 0x30F0050A) << 8) & 0x74F00000 ^ 0x4C00000 ^ (((v13 ^ 0x30F0050A) << 8) ^ 0x70370000) & (v13 ^ 0x30F0050A))));
  v16 = (((v4 ^ 0x2636AA69) - 641116777) ^ ((v4 ^ 0x4EEE2FE3) - 1324232675) ^ ((v4 ^ 0x810D429B) + 2129837413)) + (((v15 ^ 0xCFDC24D7) + 520595316) ^ ((v15 ^ 0x85A61A7D) + 1434294746) ^ ((v15 ^ 0x9D5BC226) + 1300251011)) - 505722907 > 0xFFFFFFFC;
  return (*(v3 + 8 * (((32 * v16) | (v16 << 6)) ^ v2 ^ 0x659D)))(a1, 2699338539, 4294967135, 2699338507, 4022686966, 272271748, 4022686965);
}

void sub_1009BBD28()
{
  if (v0 == 1441981434)
  {
    v2 = 1492262570;
  }

  else
  {
    v2 = 1492220546;
  }

  *v1 = v2;
}

uint64_t sub_1009BBD88()
{
  STACK[0x2D0] = &STACK[0x580];
  v4 = (v2 ^ 0xFFFFFFFFFFFFC48BLL) + v3;
  STACK[0x420] = v4;
  v5 = (v0 ^ 0x2E) & (2 * (v0 & 0x2E)) ^ v0 & 0x2E;
  v6 = ((2 * (v0 ^ 0x32)) ^ 0x38) & (v0 ^ 0x32) ^ (2 * (v0 ^ 0x32)) & 0x1C;
  v7 = v0 ^ (2 * (((4 * v6) ^ 0x60) & v6 & (16 * ((v6 ^ 0x18) & (4 * v5) ^ v5)) ^ (v6 ^ 0x18) & (4 * v5) ^ v5));
  v8 = (((v7 ^ 0x56) - 69) ^ ((v7 ^ 0x25) - 54) ^ ((v7 ^ 0xE7) + 12)) - 63;
  *(v1 + v4) = v8 * (v0 + 12) - 5 * (41 * v8 + 114 * (v0 + 12)) + 114;
  v9 = *(STACK[0x350] + 8 * ((STACK[0x420] != 0) | (2 * (STACK[0x420] != 0)) | v2));
  STACK[0x290] = STACK[0x288];
  return v9(v1);
}

uint64_t sub_1009BBF8C(int8x16_t a1, int8x16_t a2, double a3, double a4, int32x4_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16)
{
  a2.i64[0] = *(v20 + 4);
  a2.i32[2] = *(v20 + 12);
  v23 = vextq_s8(a1, a2, 0xCuLL);
  a2.i32[3] = *(v19 + 16);
  v24 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(a2, a8), vandq_s8(v23, a6)), 1uLL), *(v20 - 908));
  v25.i32[0] = *(v22 + 4 * (*(v20 + 4) & 1));
  v25.i32[1] = *(v22 + 4 * (a2.i32[1] & (v16 ^ a16)));
  v25.i32[2] = *(v22 + 4 * (a2.i8[8] & 1));
  v25.i32[3] = *(v22 + 4 * (a2.i8[12] & 1));
  *v20 = veorq_s8(vaddq_s32(vaddq_s32(v24, a5), vmvnq_s8(vandq_s8(vaddq_s32(v24, v24), a7))), v25);
  return (*(v21 + 8 * (((v18 == 0) * a11) ^ v17)))(a2);
}

uint64_t sub_1009BC03C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0;
  a1[1] = 0;
  return (*(a8 + 8 * (((((v9 - 32709) | 0x4E) ^ 0x669) * (v8 != 0)) ^ v9)))();
}

uint64_t sub_1009BC1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v60 = STACK[0x538];
  v61 = STACK[0x538] - 0x66CF8E4EB534BE4ALL;
  if (v61 <= 5000)
  {
    v61 = 5000;
  }

  STACK[0x2C0] = v61;
  STACK[0x368] = STACK[0x428];
  STACK[0x308] = STACK[0x520];
  STACK[0x300] = STACK[0x4D8];
  v71 = STACK[0x618];
  v70 = STACK[0x400];
  STACK[0x268] = STACK[0x5C0];
  STACK[0x328] = STACK[0x4A0];
  STACK[0x350] = STACK[0x480];
  STACK[0x2A0] = STACK[0x3F0];
  STACK[0x2B0] = STACK[0x4B0];
  STACK[0x2D8] = v60 - 0x66CF8E4EB534BF13;
  v62 = v60 + 0x66CF8E4EB534BF15;
  v63 = v60 >= 0x66CF8E4EB534BF22;
  v64 = 0xCD9F1C9D6A697E37;
  if (v63)
  {
    v64 = v62;
  }

  v65 = (((v64 ^ 0x5D52166B2A435F51) + 0x6F32F509BFD5DE8BLL) ^ v64 ^ ((v64 ^ 0x418AEB9A7A58519ELL) + 0x73EA08F8EFCED046) ^ ((v64 ^ 0x2FBF53D7EAFFEF7BLL) + 0x1DDFB0B57F696EA1) ^ (((((v58 + 202503619) | 0x40A85A50u) - 0x1074D447C2CBEC2) ^ v64) - 0x3367AE26BAE4E1B4)) & 0xFFFFFFFFFFFFFFFCLL;
  v66 = ((v65 ^ 0x758133272AA3A9D0) - 0x5F2FB4F9FDB896C8) ^ ((v65 ^ 0x9FD946748124BED0) + 0x4A883E55A9C07E38) ^ ((v65 ^ 0x27C769CEC1EE6924) - 0xD69EE1016F5563CLL);
  STACK[0x2D0] = v61;
  v67 = ((v61 & 0x7FFFFFFFFFFFFFFCLL ^ 0x56115F0C5B16B956) - 0x53A699CEC586D058) ^ ((v61 & 0x7FFFFFFFFFFFFFFCLL ^ 0x37C2AEE4F85551FFLL) - 0x3275682666C538F1) ^ ((v61 & 0x7FFFFFFFFFFFFFFCLL ^ 0x61D3F1E8A343E8A9) - 0x6464372A3DD381A7);
  STACK[0x320] = v67 + 0x429A24D163B06C6ELL;
  v68 = ((((v67 + 1672506478) ^ 0xC7796598) - 39413472) ^ (v67 + 1672506478) ^ (((v67 + 1672506478) ^ 0xB4E35F85) - 1908628733) ^ (((v67 + 1672506478) ^ 0x4979E21A) + 1940266654) ^ (((v67 + 1672506478) ^ 0xFFC3DB7F) - 988010503)) & 0xFFFFFFFC;
  STACK[0x200] = v66 - 0x18CE64BC35FC55DFLL;
  STACK[0x260] = v67 + 0x5B7C6C29E9068F6;
  STACK[0x290] = (((v68 ^ 0x2BB36D747FCAB0C3) - 0x169A8EFAC1E6AB7FLL) ^ ((v68 ^ 0x6C01D3956DA09F09) - 0x5128301BD38C84B5) ^ ((v68 ^ 0x47B2BEE1D74A2CB2) - 0x7A9B5D6F6966370ELL)) + 0x3D29E38E7B0C189BLL;
  return (*(v59 + 8 * (v58 + 38883)))(0xAED7CFE42C737B4BLL, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, v66 - 0x6FF8F7BF5EE99660, a56, v66 + 0x59C89BDFC57559ECLL, a58, v70, v71);
}

uint64_t sub_1009BC6C0@<X0>(int a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W5>, int a5@<W6>, int a6@<W7>, int a7@<W8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, uint64_t a62, uint64_t a63)
{
  STACK[0x7E8] = v76;
  LODWORD(STACK[0xE88]) = 0;
  LODWORD(STACK[0x9C8]) = v66;
  v80 = v69;
  v81 = v69 & (v66 ^ 0x10B60868);
  v82 = v70;
  v83 = (LODWORD(STACK[0xBA0]) - 2122051518) & 0x1E7BFEF6;
  LODWORD(STACK[0x860]) = v83;
  v84 = (v83 + 1066961207) ^ (v70 & 0x3F992747 | v81);
  v85 = STACK[0xDA8];
  LODWORD(STACK[0xCF8]) = (((v84 << STACK[0xDA8]) - ((2 * (v84 << STACK[0xDA8])) & 0x340B9BB6) - 1710895653) ^ 0xEF31013) & ~a1 | a1 & 0x2B092237;
  v86 = STACK[0xDE8];
  LODWORD(STACK[0xCE8]) = (a7 << v85) + (STACK[0x9E0] >> v86);
  v87 = a6;
  v88 = STACK[0xA68] >> (((LODWORD(STACK[0xA00]) ^ 1) & a6 & 9 ^ (STACK[0x9C0] & 0x1F ^ 0x96) & (STACK[0x9C0] & 0x1F | 0x80) ^ 0xDFu) - 94);
  LODWORD(STACK[0xD10]) = v71;
  v89 = v82;
  v90 = v82 & 0x299DB400 ^ 0x299DB400 ^ (v88 ^ 0x3E8AA317) & (v82 ^ 0x3FFFFFFF);
  v91 = a4;
  LODWORD(STACK[0xC98]) = (((((v88 ^ 0x17171717) & a6) >> a3) - ((2 * (((v88 ^ 0x17171717) & a6) >> a3)) & 0x3BEC649A) - 571067827) ^ 0x7C91C7D3) & ~(v90 << v73 << a4) | (v90 << v73 << a4) & 0x5E980A61;
  LODWORD(STACK[0x9A8]) = LODWORD(STACK[0xC80]) + (STACK[0x908] >> v86);
  LODWORD(v88) = ((v68 & 0xA53F2BF8 | a5 & (LODWORD(STACK[0xAB0]) ^ 0x55CFDB08)) ^ 0xA53F2BF8) << v85;
  v93 = v88 - ((2 * v88) & 0xB12F8B4) + 92896346;
  LODWORD(STACK[0xC30]) = v93;
  v94 = STACK[0xE08];
  v95 = STACK[0xE08] & STACK[0xA80];
  STACK[0x878] = v95;
  LODWORD(STACK[0x988]) = (v93 ^ 0xFA7683A5) & ((v95 >> LODWORD(STACK[0xE20]) >> LODWORD(STACK[0xE28])) ^ 0x69BD013F);
  v96 = v94 & STACK[0xB18];
  v97 = v94;
  LODWORD(v95) = ((v89 & 0x63AC18F8 | v80 & (LODWORD(STACK[0xA70]) ^ 0x6EA115F5)) ^ 0x63AC18F8) << v85;
  STACK[0x8A0] = v96;
  v98 = v86;
  LODWORD(v95) = (v96 >> v86) + v95;
  v99 = v67 & 0x5ADADADA;
  v100 = v68;
  LODWORD(v96) = v68 & 0x9F5919E6 | a5 & (v67 & 0x5ADADADA ^ 0x2AECAC53);
  LODWORD(v94) = v67 & 0x5ADADADA ^ 0xB5B5B5B5;
  LODWORD(STACK[0x9C0]) = v67 & 0x5ADADADA;
  LODWORD(STACK[0x7F8]) = v94;
  v101 = v97 & v94;
  v102 = v97;
  STACK[0x898] = v101;
  LODWORD(STACK[0xD48]) = ((v96 ^ 0x9F5919E6) << v73 << v91) + (v101 >> a2 >> v72);
  v103 = v100;
  LODWORD(v96) = ((v100 & 0x71167D5A | a5 & (v75 & 0x5ADADADA ^ 0xC4A3C8EF)) ^ 0x71167D5A) << v85;
  LODWORD(STACK[0xD58]) = v96 - ((2 * v96) & 0x69CA2EB6);
  v104 = v67;
  LODWORD(v96) = v67 & 0x10101010 | 0x20202020;
  LODWORD(STACK[0xA00]) = v96;
  LODWORD(v94) = v80 & v96;
  LODWORD(STACK[0xBB0]) = v80 & v96;
  v105 = v102 & v96;
  v106 = v102;
  STACK[0x990] = v105;
  LODWORD(STACK[0xC80]) = v105 >> a3;
  LODWORD(v94) = v94 << STACK[0xE70];
  LODWORD(STACK[0xC88]) = v94;
  v107 = v74 ^ ((v105 >> a3) | v94);
  LODWORD(STACK[0xC70]) = v107;
  LODWORD(v105) = v75 & 0x10101010 | 0x20202020;
  v108 = a6 & v105;
  STACK[0x968] = v108;
  LODWORD(v108) = v108 >> a2 >> v72;
  LODWORD(STACK[0x970]) = a5 & v105;
  LODWORD(STACK[0xE78]) = ((a5 & v105) << v85) ^ v108 ^ LODWORD(STACK[0xDF0]);
  LODWORD(STACK[0xDE0]) = v108 + ((v80 & v105) << v85);
  LODWORD(v108) = 16843009 * (63 - LODWORD(STACK[0x958]) - v107);
  v109 = v108 ^ ((v108 & STACK[0xDF8]) >> 1);
  v110 = v108;
  LODWORD(v105) = ((v109 ^ 0xB45DC38F) & a5 | v100 & 0xB45DC38F) ^ 0xB45DC38F;
  LODWORD(STACK[0x9B0]) = v105;
  v111 = STACK[0xD28];
  v112 = STACK[0xDA0];
  v113 = v105 << STACK[0xD28] << STACK[0xDA0];
  LODWORD(v105) = LODWORD(STACK[0xC24]) ^ 0xB6A28C3C;
  v114 = v109 & v106;
  v115 = v106;
  v116 = v109;
  LODWORD(STACK[0xA68]) = v114 >> a3;
  STACK[0x950] = v114;
  LODWORD(STACK[0x858]) = v113;
  LODWORD(STACK[0xC60]) = v105 ^ (v113 + (v114 >> a3));
  LODWORD(v95) = v95 ^ LODWORD(STACK[0xB98]);
  LODWORD(STACK[0x978]) = v110;
  v117 = v110 ^ ((v110 & STACK[0xD00]) >> 1);
  v118 = ((v117 ^ 0x1479A900) & v80 | v89 & 0x1479A900) ^ 0x1479A900;
  LODWORD(STACK[0x850]) = v118;
  LODWORD(v105) = LODWORD(STACK[0xBC0]) ^ 0x33346E23;
  v119 = v117 & v87;
  STACK[0xA80] = v119;
  LODWORD(STACK[0x870]) = v118 << v85;
  LODWORD(STACK[0x868]) = v119 >> a3;
  LODWORD(STACK[0xC58]) = v105 ^ ((v118 << v85) | (v119 >> a3));
  LODWORD(v105) = ((v117 ^ 0x6200AE3E) & a5 | v103 & 0x6200AE3E) ^ 0x6200AE3E;
  LODWORD(STACK[0x840]) = v105;
  v120 = v105 << v85;
  LODWORD(STACK[0xC4C]) = LODWORD(STACK[0xDD0]) ^ 0xCADB868A ^ ((v105 << v85) & 0xB3A5A2E3 | ((v119 >> v98) ^ 0x4C5A5D1C) & ~(v105 << v85));
  LODWORD(v105) = (v109 & v106) >> LODWORD(STACK[0xDB8]) >> LODWORD(STACK[0xDC0]);
  LODWORD(STACK[0xB98]) = v105;
  LODWORD(STACK[0xC38]) = v95 ^ 0x9DE399AC ^ v113 ^ v105;
  LODWORD(STACK[0xDD0]) = LODWORD(STACK[0xBA8]) ^ 0x6698A576 ^ v113 ^ v105;
  LODWORD(STACK[0x890]) = v75 & 0x5ADADADA;
  LODWORD(v95) = ((v89 & 0xFC893B1F | v80 & (v75 & 0x5ADADADA ^ 0x493C8EAA)) ^ 0xFC893B1F) << v85;
  v121 = v87 & (v75 & 0x5ADADADA ^ 0xB5B5B5B5);
  STACK[0x9B8] = v121;
  v122 = ((v121 >> a3) - ((2 * (v121 >> a3)) & 0x33DC3F94) - 1712447542) ^ (v95 - ((2 * v95) & 0x308DFA92) - 1740178103) ^ (LODWORD(STACK[0xB88]) - ((2 * LODWORD(STACK[0xB88])) & 0x351C506) + 27845251);
  v123 = v104 & 0x65E5E5E5;
  LODWORD(v121) = v104 & 0x65E5E5E5 ^ 0xCBCBCBCB;
  LODWORD(STACK[0x7F0]) = v121;
  v124 = v115 & v121;
  v125 = v115;
  STACK[0x938] = v124;
  LODWORD(STACK[0xDF0]) = STACK[0xC30] & 0x9642FEC0 ^ LODWORD(STACK[0x988]) ^ LODWORD(STACK[0xB90]);
  v126 = ((v89 & 0x30ABD7C9 | v80 & (v99 ^ 0x851E627C)) ^ 0x30ABD7C9) << v85;
  LODWORD(STACK[0xC30]) = ((v101 >> a3) - ((2 * (v101 >> a3)) & 0xA108E622) + 1350857489) ^ (v126 - ((2 * v126) & 0x1B94E6F6) + 231371643);
  LODWORD(STACK[0x880]) = v75 & 0x65E5E5E5;
  LODWORD(v119) = v75 & 0x65E5E5E5 ^ 0xCBCBCBCB;
  LODWORD(STACK[0x988]) = v119;
  LODWORD(v95) = v87;
  v127 = v87 & v119;
  STACK[0x888] = v127;
  LOBYTE(v87) = STACK[0xE28];
  LOBYTE(v101) = STACK[0xE20];
  LODWORD(STACK[0x848]) = (((v103 & 0x7AE7BDDF | a5 & (v75 & 0x65E5E5E5 ^ 0xB12C7614)) ^ 0x7AE7BDDF) << v112 << v111) ^ (v127 >> v87 >> v101);
  v128 = ((v89 & 0x8D922477 | v80 & (v123 ^ 0x4659EFBC)) ^ 0x8D922477) << v85;
  LODWORD(STACK[0xC24]) = (v124 >> a3) & 0xE5099E22 | ((v128 - ((2 * v128) & 0x5ACF363E) - 1385719009) ^ 0xB791FAC2) & ~(v124 >> a3);
  LODWORD(STACK[0x8C0]) = v123;
  LODWORD(STACK[0xBA8]) = (((v103 & 0xA3E93681 | a5 & (v123 ^ 0x6822FD4A)) ^ 0xA3E93681) << v85) + (v124 >> a3);
  v129 = STACK[0xC90];
  v130 = v95 & STACK[0xC90];
  LODWORD(v111) = v95;
  STACK[0x8B8] = v130;
  v131 = v80 & v129;
  STACK[0x8A8] = v131;
  v132 = STACK[0xE10];
  v133 = STACK[0xDD8];
  LODWORD(STACK[0x838]) = (v130 >> v101 >> v87) + (v131 << v132 << STACK[0xDD8]);
  LODWORD(STACK[0xBC0]) = v122 - ((((v124 >> a3) & 0x65ED914D ^ 0x65ED914D) + ((v124 >> a3) & 0x65ED914D)) & 0xEDFD915F);
  LODWORD(v95) = ((v109 ^ 0xA394B469) & v80 | v89 & 0xA394B469) ^ 0xA394B469;
  LODWORD(v130) = (v95 << v85) - ((2 * (v95 << v85)) & 0x6F3AF896);
  LODWORD(v124) = (v77 ^ 0xCB69160B) & (2 * (v77 & 0xCC694653)) ^ v77 & 0xCC694653;
  LODWORD(v131) = ((2 * (v77 ^ 0x53F99AAB)) ^ 0x3F21B9F0) & (v77 ^ 0x53F99AAB) ^ (2 * (v77 ^ 0x53F99AAB)) & 0x9F90DCF8;
  LODWORD(v124) = (v131 ^ 0x130018D0) & (4 * v124) ^ v124;
  LODWORD(v131) = ((4 * (v131 ^ 0x80904408)) ^ 0x7E4373E0) & (v131 ^ 0x80904408) ^ (4 * (v131 ^ 0x80904408)) & 0x9F90DCF8;
  LODWORD(v124) = (v131 ^ 0x1E0050E0) & (16 * v124) ^ v124;
  LODWORD(v131) = ((16 * (v131 ^ 0x81908C18)) ^ 0xF90DCF80) & (v131 ^ 0x81908C18) ^ (16 * (v131 ^ 0x81908C18)) & 0x9F90DCC0;
  LODWORD(v124) = v124 ^ 0x9F90DCF8 ^ (v131 ^ 0x9900CC00) & (v124 << 8);
  LODWORD(v124) = v77 ^ (2 * ((v124 << 16) & 0x1F900000 ^ v124 ^ ((v124 << 16) ^ 0x5CF80000) & (((v131 ^ 0x6901078) << 8) & 0x1F900000 ^ (((v131 ^ 0x6901078) << 8) ^ 0x10DC0000) & (v131 ^ 0x6901078) ^ 0xF000000)));
  LODWORD(STACK[0x830]) = LODWORD(STACK[0x9A8]) ^ LODWORD(STACK[0xB28]);
  LODWORD(v127) = LODWORD(STACK[0x840]) << v133 << v132;
  v134 = LODWORD(STACK[0x948]) ^ 0x81531D24;
  v135 = v117 & v125;
  v136 = v135 >> a3;
  STACK[0x840] = v135;
  LODWORD(STACK[0xB88]) = v134 ^ (v127 | (v135 >> a3));
  v137 = STACK[0xE70];
  v138 = LODWORD(STACK[0x850]) << STACK[0xE70];
  LODWORD(STACK[0xB28]) = LODWORD(STACK[0x958]) ^ 0xFE7F944 ^ (v138 | (v135 >> a3));
  v139 = v116;
  LODWORD(STACK[0xB18]) = v116;
  v140 = a3;
  v141 = v116 & v111;
  STACK[0x850] = v141;
  LODWORD(v95) = v95 << v132 << v133;
  LODWORD(v111) = (v95 - ((2 * v95) & 0x453A00FE) - 1566769025) ^ ((v141 >> a3) - ((2 * (v141 >> a3)) & 0x453A00FE) - 1566769025);
  v142 = v80 & STACK[0xBD0];
  STACK[0x7E0] = v142;
  LODWORD(v142) = v142 << v85;
  v143 = STACK[0xA78];
  LODWORD(v135) = (LODWORD(STACK[0xA78]) | v142) ^ LODWORD(STACK[0xB00]) ^ 0xEBAEC38B;
  LODWORD(v101) = (v117 & v125) >> STACK[0xDE8];
  LODWORD(STACK[0xB90]) = v101;
  LODWORD(STACK[0x9A8]) = v135 ^ (v120 + v101);
  LODWORD(STACK[0xB00]) = (v120 + v136) ^ LODWORD(STACK[0x940]);
  LODWORD(v135) = v142 ^ v143 ^ LODWORD(STACK[0xB20]);
  LODWORD(v142) = v141 >> LODWORD(STACK[0xE00]) >> LODWORD(STACK[0xE18]);
  LODWORD(STACK[0xB20]) = v135 ^ 0xEBAEC38B ^ (v95 | v142);
  v144 = LODWORD(STACK[0xC28]) ^ LODWORD(STACK[0xC98]) ^ LODWORD(STACK[0xB08]);
  LODWORD(v131) = STACK[0x868];
  v145 = v127 + LODWORD(STACK[0x868]);
  LODWORD(STACK[0xC98]) = LODWORD(STACK[0xD40]) ^ 0x81531D24 ^ v145;
  LODWORD(STACK[0xD40]) = LODWORD(STACK[0xCE8]) ^ LODWORD(STACK[0xD08]) ^ 0x217DB00B ^ (v145 - ((2 * v145) & 0x42FB6016) + 561885195);
  v146 = LODWORD(STACK[0xAF8]) ^ v101 ^ LODWORD(STACK[0xCF8]);
  LODWORD(STACK[0xC18]) ^= 0xFE7F944 ^ v111;
  LODWORD(STACK[0xCE8]) = v111 ^ LODWORD(STACK[0xCC0]);
  v147 = STACK[0x870];
  LODWORD(STACK[0xD08]) = (LODWORD(STACK[0x870]) + v136) ^ LODWORD(STACK[0x960]);
  LODWORD(v135) = STACK[0x858];
  LODWORD(STACK[0xCF8]) = (LODWORD(STACK[0x858]) + v142) ^ a65;
  v148 = v136 ^ STACK[0xD50] ^ v138;
  LODWORD(STACK[0xD50]) = LODWORD(STACK[0xAE8]) ^ 0xE2736454 ^ (v95 + v142 - ((2 * (v95 + v142)) & 0xC41CF98) - 2044663860);
  LODWORD(STACK[0xCC0]) = (v120 | v136) ^ LODWORD(STACK[0xD10]);
  v149 = STACK[0xCF0];
  v150 = STACK[0xCF0] & v129;
  STACK[0x948] = v150;
  LODWORD(v150) = (v150 << v137) ^ LODWORD(STACK[0xCA8]) ^ LODWORD(STACK[0xBF0]);
  LODWORD(v130) = v130 + 933067851;
  v151 = v124 ^ v142 ^ 0xD9C25257 ^ v130;
  v152 = STACK[0xB98];
  LODWORD(v130) = v130 ^ LODWORD(STACK[0xB98]);
  LODWORD(STACK[0xBF0]) = LODWORD(STACK[0x830]) ^ 0x3AEF33C8 ^ v130;
  LODWORD(v130) = v130 ^ 0x2CB9853A;
  LODWORD(STACK[0xCA8]) = v144 ^ 0xBA430CEF ^ v130;
  LODWORD(STACK[0xD10]) = v150 ^ 0x1B24F971 ^ v130;
  LODWORD(v130) = LODWORD(STACK[0x9D8]) >> v140;
  LODWORD(v137) = v80 & STACK[0x8C8];
  LODWORD(STACK[0x830]) = v137;
  LODWORD(STACK[0xCD0]) ^= v130 ^ (v137 << v85) ^ v131 ^ v127;
  LODWORD(v130) = LODWORD(STACK[0x9B0]) << v85;
  LODWORD(STACK[0xC90]) = v142 ^ LODWORD(STACK[0xDC8]) ^ v130;
  LODWORD(v127) = v130 + v142;
  LODWORD(v150) = v142 ^ LODWORD(STACK[0xCB0]);
  LODWORD(STACK[0xDC8]) = LODWORD(STACK[0xCE0]) ^ LODWORD(STACK[0x838]) ^ (v135 | v142);
  v153 = STACK[0x848];
  v154 = v152;
  v155 = LODWORD(STACK[0x848]) ^ LODWORD(STACK[0xC68]) ^ 0x9B30E968 ^ (v95 + v152);
  v156 = LODWORD(STACK[0xC50]) ^ v131 ^ 0x9463CD1D ^ v147;
  LODWORD(STACK[0xCE0]) = LODWORD(STACK[0xAD8]) ^ LODWORD(STACK[0xBA8]) ^ (v147 | v136);
  v157 = v146 ^ 0xAEB67DDB ^ v120;
  LODWORD(STACK[0xCB0]) = v136 ^ LODWORD(STACK[0xBE8]) ^ v120;
  v158 = LODWORD(STACK[0xC24]) ^ LODWORD(STACK[0xCC8]) ^ 0xA5B0C27 ^ (v120 + v131 - ((2 * (v120 + v131)) & 0x31D4CADA) - 1729469075);
  v159 = STACK[0xA68];
  v160 = LODWORD(STACK[0xDF0]) ^ LODWORD(STACK[0xA68]) ^ 0x2D88EF8A ^ v95;
  v161 = v150 ^ v95;
  LODWORD(STACK[0xCC8]) = v153 ^ LODWORD(STACK[0xAA8]) ^ 0x41708262 ^ (v95 | v154);
  v162 = STACK[0xAC8];
  LODWORD(STACK[0xC68]) = LODWORD(STACK[0xC30]) ^ LODWORD(STACK[0xAC8]) ^ (v120 + v131 - ((2 * (v120 + v131)) & 0x39304470) - 1667751368);
  v163 = a61 ^ 0x81531D24 ^ v127;
  LODWORD(STACK[0xC50]) = v127 ^ (LODWORD(STACK[0xBC0]) + 1710068045);
  LODWORD(STACK[0xD48]) ^= LODWORD(STACK[0xCB8]) ^ (((((v117 ^ 0x113D36F1) & v80 | v89 & 0x113D36F1) ^ 0x113D36F1) << STACK[0xE10] << v133) + v136);
  v164 = v149;
  LODWORD(v137) = (v139 ^ 0xDB1AA50E) & v149;
  LODWORD(v149) = STACK[0xDB0];
  LODWORD(v127) = ((v117 ^ 0x18F3BB62) & v80 | v89 & 0x18F3BB62) ^ 0x18F3BB62;
  LODWORD(STACK[0x958]) = v127;
  v165 = STACK[0xA80] >> LODWORD(STACK[0xE28]) >> LODWORD(STACK[0xE20]);
  v166 = v127 << STACK[0xDA0] << STACK[0xD28];
  LODWORD(STACK[0xB98]) = v166;
  LODWORD(STACK[0xCB8]) = (STACK[0x9B8] >> LODWORD(STACK[0xDB8]) >> LODWORD(STACK[0xDC0])) ^ (LODWORD(STACK[0xD58]) + 887428955) ^ LODWORD(STACK[0xA88]) ^ 0x6A6C07A5 ^ ((v166 ^ 0x69A4AF80) & ~v165 | v165 & 0x965B507F);
  LODWORD(v127) = LODWORD(STACK[0xC88]) ^ LODWORD(STACK[0xC80]) ^ v162 ^ LODWORD(STACK[0xAA4]);
  LODWORD(v137) = (v137 | v149 & 0xDB1AA50E) ^ 0xDB1AA50E;
  LODWORD(STACK[0x960]) = v137;
  LODWORD(v124) = STACK[0xBB8];
  LODWORD(v150) = STACK[0xBB8] & 5;
  LODWORD(STACK[0xC24]) = v150;
  LODWORD(v124) = v124 & 2;
  LODWORD(STACK[0xDF0]) = v124;
  LODWORD(STACK[0xD58]) = v127 ^ v159;
  v167 = v137 << v150 << v124;
  LODWORD(STACK[0x828]) = v167;
  LODWORD(STACK[0xC88]) = (v167 + v159) ^ LODWORD(STACK[0xC70]);
  LODWORD(STACK[0xC70]) = v148 - v158 + v155 - 1615687382;
  LODWORD(STACK[0x858]) = v117;
  v168 = (v117 ^ 0x931A6F00) & v164 | v149 & 0x931A6F00;
  v169 = ((v148 - v158 + v155 + 42) & 1) == 0;
  LODWORD(STACK[0xBE8]) = (v148 - v158 + v155 + 42) & 1;
  v170 = STACK[0xC60];
  v171 = STACK[0xC38];
  if ((v148 - v158 + v155 + 42))
  {
    v172 = STACK[0xC38];
  }

  else
  {
    v172 = STACK[0xC60];
  }

  LODWORD(STACK[0xC80]) = v172;
  v173 = STACK[0xC4C];
  if (((v148 - v158 + v155 + 42) & 1) == 0)
  {
    v170 = STACK[0xC4C];
  }

  LODWORD(STACK[0xC30]) = v170;
  v174 = STACK[0xC58];
  if ((v148 - v158 + v155 + 42))
  {
    v171 = STACK[0xC58];
  }

  LODWORD(STACK[0xBC0]) = v171;
  if ((v148 - v158 + v155 + 42))
  {
    v174 = v173;
  }

  LODWORD(STACK[0xC60]) = v174;
  v175 = LODWORD(STACK[0xCD8]) ^ LODWORD(STACK[0xDE0]);
  v176 = v168 ^ 0x931A6F00;
  LODWORD(STACK[0x848]) = v176;
  v177 = v176 << v85;
  LODWORD(STACK[0x7C8]) = v177;
  LODWORD(STACK[0x838]) = v165;
  v178 = v175 ^ (v177 + v165);
  if ((v148 - v158 + v155 + 42))
  {
    v179 = v160;
  }

  else
  {
    v179 = v151;
  }

  LODWORD(STACK[0xC58]) = v179;
  v180 = STACK[0xDD0];
  if ((v148 - v158 + v155 + 42))
  {
    v181 = STACK[0xDD0];
  }

  else
  {
    v181 = v160;
  }

  LODWORD(STACK[0xCD8]) = v181;
  if ((v148 - v158 + v155 + 42))
  {
    v182 = v156;
  }

  else
  {
    v182 = v180;
  }

  if ((v148 - v158 + v155 + 42))
  {
    v183 = v151;
  }

  else
  {
    v183 = v156;
  }

  v184 = STACK[0xC98];
  if ((v148 - v158 + v155 + 42))
  {
    v185 = v163;
  }

  else
  {
    v185 = STACK[0xC98];
  }

  LODWORD(STACK[0xAF8]) = v185;
  v186 = STACK[0xB88];
  if ((v148 - v158 + v155 + 42))
  {
    v163 = STACK[0xB88];
  }

  LODWORD(STACK[0xDE0]) = v163;
  v187 = STACK[0xBF0];
  if ((v148 - v158 + v155 + 42))
  {
    v188 = STACK[0xBF0];
  }

  else
  {
    v188 = v186;
  }

  if ((v148 - v158 + v155 + 42))
  {
    v187 = v184;
  }

  LODWORD(STACK[0xDD0]) = v187;
  v189 = STACK[0x9A8];
  v190 = STACK[0xC18];
  if ((v148 - v158 + v155 + 42))
  {
    v191 = STACK[0x9A8];
  }

  else
  {
    v191 = STACK[0xC18];
  }

  LODWORD(STACK[0xB08]) = v191;
  if ((v148 - v158 + v155 + 42))
  {
    v192 = v190;
  }

  else
  {
    v192 = STACK[0xB28];
  }

  if ((v148 - v158 + v155 + 42))
  {
    v193 = STACK[0xB20];
  }

  else
  {
    v193 = v189;
  }

  if ((v148 - v158 + v155 + 42))
  {
    v194 = STACK[0xB28];
  }

  else
  {
    v194 = STACK[0xB20];
  }

  v195 = STACK[0xB00];
  v196 = STACK[0xCE8];
  if ((v148 - v158 + v155 + 42))
  {
    v197 = STACK[0xB00];
  }

  else
  {
    v197 = STACK[0xCE8];
  }

  LODWORD(STACK[0xC98]) = v197;
  v198 = STACK[0xD40];
  if ((v148 - v158 + v155 + 42))
  {
    v199 = v196;
  }

  else
  {
    v199 = STACK[0xD40];
  }

  v200 = STACK[0xCA8];
  if (((v148 - v158 + v155 + 42) & 1) == 0)
  {
    v198 = STACK[0xCA8];
  }

  LODWORD(STACK[0xC18]) = v198;
  if ((v148 - v158 + v155 + 42))
  {
    v201 = v200;
  }

  else
  {
    v201 = v195;
  }

  if ((v148 - v158 + v155 + 42))
  {
    v202 = v157;
  }

  else
  {
    v202 = v148;
  }

  v203 = STACK[0xCF8];
  if ((v148 - v158 + v155 + 42))
  {
    v204 = v148;
  }

  else
  {
    v204 = STACK[0xCF8];
  }

  LODWORD(STACK[0xB28]) = v204;
  if ((v148 - v158 + v155 + 42))
  {
    v205 = v203;
  }

  else
  {
    v205 = STACK[0xD08];
  }

  if ((v148 - v158 + v155 + 42))
  {
    v206 = STACK[0xD08];
  }

  else
  {
    v206 = v157;
  }

  v207 = STACK[0xC90];
  v208 = STACK[0xCB0];
  if (v169)
  {
    v209 = STACK[0xCB0];
  }

  else
  {
    v209 = STACK[0xC90];
  }

  LODWORD(STACK[0xBF0]) = v209;
  v210 = STACK[0xD50];
  if (!v169)
  {
    v207 = STACK[0xD50];
  }

  LODWORD(STACK[0xCA8]) = v207;
  if (v169)
  {
    v211 = v210;
  }

  else
  {
    v211 = STACK[0xCC0];
  }

  if (v169)
  {
    v212 = STACK[0xCC0];
  }

  else
  {
    v212 = v208;
  }

  v213 = STACK[0xD10];
  if (v169)
  {
    v214 = v161;
  }

  else
  {
    v214 = STACK[0xD10];
  }

  LODWORD(STACK[0xD40]) = v214;
  if (v169)
  {
    v215 = STACK[0xDC8];
  }

  else
  {
    v215 = v161;
  }

  v216 = STACK[0xCD0];
  if (v169)
  {
    v217 = STACK[0xCD0];
  }

  else
  {
    v217 = STACK[0xDC8];
  }

  LODWORD(STACK[0xDC8]) = v217;
  if (v169)
  {
    v218 = v213;
  }

  else
  {
    v218 = v216;
  }

  v219 = v155;
  v220 = STACK[0xCE0];
  if (v169)
  {
    v155 = STACK[0xCE0];
  }

  v221 = STACK[0xCC8];
  if (v169)
  {
    v220 = STACK[0xCC8];
  }

  LODWORD(STACK[0xD10]) = v220;
  if (v169)
  {
    v221 = v158;
    v222 = v219;
  }

  else
  {
    v222 = v158;
  }

  if (v169)
  {
    v223 = STACK[0xC68];
  }

  else
  {
    v223 = STACK[0xC50];
  }

  if (v169)
  {
    v224 = STACK[0xC50];
  }

  else
  {
    v224 = STACK[0xD48];
  }

  v225 = STACK[0xCB8];
  if (v169)
  {
    v226 = STACK[0xCB8];
  }

  else
  {
    v226 = STACK[0xC68];
  }

  if (v169)
  {
    v225 = STACK[0xD48];
  }

  v227 = LODWORD(STACK[0xD58]) ^ 0x168A074D ^ v167;
  LODWORD(STACK[0x7B8]) = v166 + v165;
  if (v169)
  {
    v228 = LODWORD(STACK[0xE78]) ^ (v166 + v165);
  }

  else
  {
    v228 = v178;
  }

  if (v169)
  {
    v229 = v178;
  }

  else
  {
    v229 = v227;
  }

  if (v169)
  {
    v230 = STACK[0xC88];
  }

  else
  {
    v227 = STACK[0xC88];
    v230 = LODWORD(STACK[0xE78]) ^ (v166 + v165);
  }

  v231 = (STACK[0xC70] & 2) == 0;
  v232 = STACK[0xC30];
  v233 = STACK[0xBC0];
  if ((STACK[0xC70] & 2) != 0)
  {
    v234 = STACK[0xC30];
  }

  else
  {
    v234 = STACK[0xBC0];
  }

  LODWORD(STACK[0xC38]) = v234;
  if (v231)
  {
    v235 = v232;
  }

  else
  {
    v235 = v233;
  }

  LODWORD(STACK[0xBA8]) = v235;
  v236 = STACK[0xC58];
  if (v231)
  {
    v237 = STACK[0xC58];
  }

  else
  {
    v237 = v182;
  }

  LODWORD(STACK[0xC68]) = v237;
  if (!v231)
  {
    v182 = v236;
  }

  LODWORD(STACK[0xB00]) = v182;
  v238 = STACK[0xC80];
  v239 = STACK[0xC60];
  if (v231)
  {
    v240 = STACK[0xC80];
  }

  else
  {
    v240 = STACK[0xC60];
  }

  LODWORD(STACK[0xBC0]) = v240;
  if (v231)
  {
    v241 = v239;
  }

  else
  {
    v241 = v238;
  }

  LODWORD(STACK[0xC4C]) = v241;
  v242 = STACK[0xCD8];
  if (v231)
  {
    v243 = v183;
  }

  else
  {
    v243 = STACK[0xCD8];
  }

  LODWORD(STACK[0xB88]) = v243;
  if (v231)
  {
    v244 = v242;
  }

  else
  {
    v244 = v183;
  }

  LODWORD(STACK[0xCD8]) = v244;
  v245 = STACK[0xAF8];
  if (v231)
  {
    v246 = v188;
  }

  else
  {
    v246 = STACK[0xAF8];
  }

  LODWORD(STACK[0xC58]) = v246;
  if (v231)
  {
    v247 = v245;
  }

  else
  {
    v247 = v188;
  }

  LODWORD(STACK[0xCE0]) = v247;
  if (v231)
  {
    v248 = v193;
  }

  else
  {
    v248 = v192;
  }

  LODWORD(STACK[0xCB8]) = v248;
  if (v231)
  {
    v249 = v192;
  }

  else
  {
    v249 = v193;
  }

  LODWORD(STACK[0xD08]) = v249;
  v250 = STACK[0xB08];
  if (v231)
  {
    v251 = v194;
  }

  else
  {
    v251 = STACK[0xB08];
  }

  LODWORD(STACK[0xCF8]) = v251;
  if (v231)
  {
    v194 = v250;
  }

  LODWORD(STACK[0xCD0]) = v194;
  v252 = STACK[0xDE0];
  v253 = STACK[0xDD0];
  if (v231)
  {
    v254 = STACK[0xDD0];
  }

  else
  {
    v254 = STACK[0xDE0];
  }

  LODWORD(STACK[0xC50]) = v254;
  if (v231)
  {
    v255 = v252;
  }

  else
  {
    v255 = v253;
  }

  LODWORD(STACK[0xC30]) = v255;
  if (v231)
  {
    v256 = v199;
  }

  else
  {
    v256 = v201;
  }

  LODWORD(STACK[0xC70]) = v256;
  if (v231)
  {
    v257 = v201;
  }

  else
  {
    v257 = v199;
  }

  LODWORD(STACK[0xCE8]) = v257;
  if (v231)
  {
    v258 = v205;
  }

  else
  {
    v258 = v202;
  }

  LODWORD(STACK[0xCC0]) = v258;
  if (v231)
  {
    v259 = v202;
  }

  else
  {
    v259 = v205;
  }

  LODWORD(STACK[0xCC8]) = v259;
  v260 = STACK[0xC98];
  v261 = STACK[0xC18];
  if (v231)
  {
    v262 = STACK[0xC98];
  }

  else
  {
    v262 = STACK[0xC18];
  }

  LODWORD(STACK[0xAE8]) = v262;
  if (v231)
  {
    v263 = v261;
  }

  else
  {
    v263 = v260;
  }

  LODWORD(STACK[0xB08]) = v263;
  v264 = STACK[0xB28];
  if (v231)
  {
    v265 = v206;
  }

  else
  {
    v265 = STACK[0xB28];
  }

  LODWORD(STACK[0xC60]) = v265;
  if (v231)
  {
    v266 = v264;
  }

  else
  {
    v266 = v206;
  }

  LODWORD(STACK[0xC90]) = v266;
  v267 = STACK[0xBF0];
  if (v231)
  {
    v268 = v211;
  }

  else
  {
    v268 = STACK[0xBF0];
  }

  LODWORD(STACK[0xCB0]) = v268;
  if (v231)
  {
    v269 = v267;
  }

  else
  {
    v269 = v211;
  }

  LODWORD(STACK[0xDE0]) = v269;
  v270 = STACK[0xCA8];
  if (v231)
  {
    v271 = v212;
  }

  else
  {
    v271 = STACK[0xCA8];
  }

  LODWORD(STACK[0xAF8]) = v271;
  if (v231)
  {
    v272 = v270;
  }

  else
  {
    v272 = v212;
  }

  LODWORD(STACK[0xAC8]) = v272;
  if (v231)
  {
    v273 = v218;
  }

  else
  {
    v273 = v215;
  }

  LODWORD(STACK[0xCA8]) = v273;
  if (v231)
  {
    v218 = v215;
  }

  LODWORD(STACK[0xD50]) = v218;
  if (v231)
  {
    v274 = v221;
  }

  else
  {
    v274 = v155;
  }

  LODWORD(STACK[0xAD8]) = v274;
  if (v231)
  {
    v221 = v155;
  }

  LODWORD(STACK[0xDD0]) = v221;
  v275 = STACK[0xD40];
  v276 = STACK[0xDC8];
  if (v231)
  {
    v277 = STACK[0xD40];
  }

  else
  {
    v277 = STACK[0xDC8];
  }

  LODWORD(STACK[0xAA8]) = v277;
  if (v231)
  {
    v278 = v276;
  }

  else
  {
    v278 = v275;
  }

  LODWORD(STACK[0xD48]) = v278;
  if (v231)
  {
    v279 = v225;
  }

  else
  {
    v279 = v223;
  }

  LODWORD(STACK[0xDC8]) = v279;
  if (v231)
  {
    v225 = v223;
  }

  LODWORD(STACK[0xD40]) = v225;
  if (v231)
  {
    v280 = v226;
  }

  else
  {
    v280 = v224;
  }

  LODWORD(STACK[0xAA4]) = v280;
  if (v231)
  {
    v281 = v224;
  }

  else
  {
    v281 = v226;
  }

  LODWORD(STACK[0xC98]) = v281;
  v282 = STACK[0xD10];
  if (v231)
  {
    v283 = v222;
  }

  else
  {
    v283 = STACK[0xD10];
  }

  LODWORD(STACK[0xD58]) = v283;
  if (v231)
  {
    v284 = v282;
  }

  else
  {
    v284 = v222;
  }

  LODWORD(STACK[0xC88]) = v284;
  if (v231)
  {
    v285 = v227;
  }

  else
  {
    v285 = v228;
  }

  LODWORD(STACK[0xD10]) = v285;
  if (v231)
  {
    v286 = v228;
  }

  else
  {
    v286 = v227;
  }

  LODWORD(STACK[0xB20]) = v286;
  if (v231)
  {
    v287 = v229;
  }

  else
  {
    v287 = v230;
  }

  LODWORD(STACK[0xB28]) = v287;
  if (v231)
  {
    v288 = v230;
  }

  else
  {
    v288 = v229;
  }

  LODWORD(STACK[0xC80]) = v288;
  v289 = STACK[0xBF8];
  v290 = STACK[0xBF8] & 0xB4FDFAE;
  v291 = STACK[0xE68];
  v292 = STACK[0xD98];
  v293 = STACK[0xD98] & 0x690AA9CF | STACK[0xE68] & (v290 ^ 0x7F951692);
  v294 = STACK[0xE08];
  v295 = STACK[0xB10];
  v296 = (STACK[0xE08] & (v290 ^ 0x169FBF5D)) >> STACK[0xB10];
  v297 = STACK[0xDD8];
  v298 = STACK[0xE10];
  v299 = LODWORD(STACK[0xD38]) ^ 0xA07BE1BF;
  v300 = ((v293 ^ 0x690AA9CF) << STACK[0xDD8] << STACK[0xE10]) ^ v299 ^ (v296 - ((2 * v296) & 0x29562830) - 726985704);
  LODWORD(STACK[0x7B0]) = v300;
  v301 = STACK[0xCF0];
  v302 = STACK[0xDB0];
  v303 = LODWORD(STACK[0xAB8]) - (STACK[0xA98] & 0x2A0F8AE8);
  v304 = LODWORD(STACK[0x924]) ^ 0x6B08B8E1;
  v305 = (((STACK[0xDB0] & 0x1C2E9B27 | STACK[0xCF0] & (LODWORD(STACK[0xAD0]) ^ 0x397DAC62)) ^ 0x1C2E9B27) << STACK[0xDA8]) ^ (LODWORD(STACK[0xA90]) >> LODWORD(STACK[0xE28]) >> LODWORD(STACK[0xE20])) ^ v304;
  LODWORD(STACK[0x7A8]) = v305;
  v306 = v291;
  v307 = ((v292 & 0x4B86BFCA | v291 & (LODWORD(STACK[0xAE0]) ^ 0xBD76D4F3)) ^ 0x4B86BFCA) << v298 << v297;
  v308 = ((v303 + 352830836) ^ 0xB0CFC2AA) & ~v307 | v307 & 0x5A37F821;
  v309 = (((LODWORD(STACK[0xBE8]) ^ 0xDDA7591) + LODWORD(STACK[0xBE8])) & 0x8027402 | 0x1145813C) ^ LODWORD(STACK[0xAC0]);
  v310 = (v302 & 0x1BC486CF ^ 0x1BC486CF ^ (v309 ^ 0x8E910773) & (v302 ^ 0xFFFFFE4F)) << v297 << v298;
  LOBYTE(v293) = STACK[0xDC0];
  LOBYTE(v296) = STACK[0xDB8];
  v311 = v310 & 0xACB6BF4B | ((((v309 ^ 0x955581BC) & STACK[0xD30]) >> v293 >> v296) ^ 0x534940B4) & ~v310;
  v312 = (((v302 & 0x560BD36 | v301 & (v289 & 0x5F77904B ^ 0xBB8F9DA0)) ^ 0x560BD36) << LODWORD(STACK[0xDF0]) << LODWORD(STACK[0xC24])) + ((STACK[0xD30] & (v289 & 0x5F77904B ^ 0xBEEF2096)) >> v296 >> v293);
  LODWORD(v298) = STACK[0x980];
  LODWORD(v291) = STACK[0x980] & 0x24F7904B;
  v313 = v292 & 0xDC3A9E1C | v306 & (v291 ^ 0x95D5BE8A);
  LODWORD(v291) = (STACK[0xD30] & (v291 ^ 0x49EF2096)) >> v295;
  v314 = v295;
  v315 = v311 ^ v304;
  LODWORD(STACK[0xE78]) = (v311 ^ v304) >> 24;
  LODWORD(v295) = 295 * ((((v311 ^ v304) & 0xFF00) >> 8) ^ 0x90) + 21240;
  LODWORD(STACK[0x790]) = v311 ^ v304;
  v316 = STACK[0xC08];
  v317 = (v291 - ((2 * v291) & 0x3AE656FE) + 494087039) ^ ((v313 ^ 0xDC3A9E1C) << STACK[0xD28] << STACK[0xDA0]) ^ v312 ^ v300 ^ __ROR4__(*(STACK[0xC08] + 4 * ((295 * (((HIBYTE(v315) ^ 0xF830A1CF) + 188034579) ^ ((HIBYTE(v315) ^ 0x8733FCF9) + 1949725477) ^ ((HIBYTE(v315) ^ 0x7F035D66) - 1945709892)) - 191371690) % 0x478)), 8) ^ *(STACK[0xC08] + 4 * (295 * ((v311 ^ v304) ^ 0x3D) + 21240 - 1144 * ((3754343 * (295 * ((v311 ^ v304) ^ 0x3Du) + 21240)) >> 32))) ^ __ROR4__(*(STACK[0xC08] + 4 * (v295 - 1144 * ((3754343 * v295) >> 32))), 24);
  v318 = __ROR4__(*(STACK[0xC08] + 4 * (295 * (BYTE2(v315) ^ 0x29) + 21240 - 1144 * ((3754343 * (295 * (BYTE2(v315) ^ 0x29u) + 21240)) >> 32))), 16);
  v319 = v292 & 0x3D881E79 | v306 & (v298 & 0x1648EA6E ^ 0x1119CAA5);
  v320 = v294;
  LODWORD(v297) = ((v294 & (v298 & 0x1648EA6E ^ 0x2C91D4DC)) >> v314) - ((2 * ((v294 & (v298 & 0x1648EA6E ^ 0x2C91D4DC)) >> v314)) & 0x5D8F6364);
  v321 = v308 ^ 0xF8CB2F81;
  LODWORD(STACK[0x780]) = v308 ^ 0xF8CB2F81;
  LODWORD(v298) = STACK[0xCA0];
  v322 = LODWORD(STACK[0xCA0]) ^ v305 ^ 0xF4B8A67F ^ v317 ^ v318;
  LODWORD(STACK[0x760]) = v317 ^ v318;
  v323 = v304;
  LODWORD(STACK[0xBF0]) = v304;
  v324 = v321 ^ v304 ^ v322;
  LODWORD(v294) = STACK[0xC28];
  LODWORD(v291) = LODWORD(STACK[0xC28]) - (STACK[0xBC8] & 0x14480880) - 1910168512;
  LODWORD(STACK[0xA88]) = v299;
  v325 = v299 ^ v291 ^ v311 ^ v304 ^ 0x7B411B86 ^ v324;
  LODWORD(v295) = HIBYTE(v325) + 72;
  LOBYTE(v291) = v295 | (23 - HIBYTE(v325));
  LODWORD(v295) = *(v316 + 4 * (295 * v295 - 1144 * ((3754343 * (295 * v295)) >> 32)));
  v326 = (v295 << (v291 & 0x18)) | (v295 >> 8);
  LODWORD(STACK[0x778]) = v325;
  v327 = BYTE1(v325) + 72;
  LODWORD(STACK[0xC18]) = v299 ^ v298;
  LODWORD(v291) = v298;
  LODWORD(v298) = v299 ^ v298 ^ 0xF967F501 ^ v322;
  LODWORD(STACK[0x798]) = v298;
  v328 = v320;
  v329 = ((v320 & (v289 & 0x948EA6E ^ 0x1291D4DCu)) >> LODWORD(STACK[0xE00]) >> LODWORD(STACK[0xE18])) ^ ((v319 ^ 0x3D881E79) << STACK[0xD20] << STACK[0xD18]);
  LOBYTE(v320) = STACK[0xBB8];
  LODWORD(STACK[0xAE0]) = STACK[0xBB8] & 1;
  LODWORD(STACK[0xAD0]) = v320 & 6;
  v330 = v329 ^ (((v302 & 0x559F4D81 | v301 & (v289 & 0x948EA6E ^ 0x470E995D)) ^ 0x559F4D81) << (v320 & 1) << (v320 & 6)) ^ (v297 - 1362644558) ^ __ROR4__(*(v316 + 4 * (295 * BYTE2(v325) + 21240 - 1144 * ((3754343 * (295 * BYTE2(v325) + 21240)) >> 32))), 16) ^ *(v316 + 4 * (295 * v325 + 21240 - 1144 * ((3754343 * (295 * v325 + 21240)) >> 32))) ^ v317 ^ v318 ^ __ROR4__(*(v316 + 4 * (295 * v327 - 1144 * ((3754343 * (295 * v327)) >> 32))), 24) ^ v326;
  v331 = v289;
  v332 = STACK[0xCF0];
  v333 = v302 & 0x83914CB6 | STACK[0xCF0] & (v289 & 0x53209569 ^ 0x25D06665);
  v334 = v289 & 0x53209569 ^ 0xA6412AD3;
  v335 = STACK[0xD30];
  v336 = STACK[0xD30] & v334;
  LODWORD(STACK[0x9B0]) = v320 & 4;
  v337 = v320 & 3;
  LODWORD(STACK[0xBB8]) = v337;
  LODWORD(v297) = ((v333 ^ 0x83914CB6) << v337 << (v320 & 4)) & 0x7A63D7A9 | ((v336 >> LODWORD(STACK[0xDC0]) >> LODWORD(STACK[0xDB8])) ^ 0x859C2856) & ~((v333 ^ 0x83914CB6) << v337 << (v320 & 4));
  v338 = v291;
  v339 = v291 ^ v323 ^ v298 ^ 0x13D0EE0C ^ v330 ^ 0xEBE818E8;
  v340 = 55 - BYTE1(v325);
  v341 = v331;
  v342 = (((v330 ^ 0xEBE818E8) & 0x64412AD3 ^ 0x644028C0) + (~(v340 ^ v327) & 0x3A) + ((v330 ^ 0xEBE818E8) & 0x64412AD3 ^ 0x10213)) ^ v331 & 0x32209569;
  v343 = STACK[0xB10];
  v344 = (((v342 ^ 0x4BBBA5BA) & v332 | v302 & 0x4BBBA5BA) ^ 0x4BBBA5BA) << (v320 & 6) << (v320 & 1);
  LODWORD(v295) = v344 & 0xC1F5486 | ((((v342 & v328) >> STACK[0xB10]) - ((2 * ((v342 & v328) >> STACK[0xB10])) & 0xBCACBDBE) + 1582718687) ^ 0xADB6F5A6) & ~v344;
  LODWORD(STACK[0xAB8]) = v338 ^ 0x55D5939;
  v345 = v338;
  v346 = v338 ^ 0x55D5939 ^ v324;
  LODWORD(STACK[0x768]) = v346;
  v347 = v339 ^ v346;
  v348 = v339;
  LODWORD(STACK[0x718]) = v339;
  v349 = v325 ^ v294 ^ v347;
  v350 = 295 * ((v325 ^ v294 ^ v347) ^ 0xEA) + 21240;
  v351 = 295 * ((v340 & 8) + (v340 & 8 ^ 0xE16A) + (-51 * (*(STACK[0xEC8] + (((BYTE1(v349) ^ 0xE2) + 18) ^ 0xB9)) ^ 0xC1)) + 7902);
  v352 = *(v316 + 4 * (v351 - 1144 * ((3754343 * v351) >> 32)));
  LOBYTE(v331) = *(STACK[0xEB8] + ((HIBYTE(v352) + 18) ^ 0x91));
  LOBYTE(v331) = ((v331 ^ 0xBB) + 69) ^ ((v331 ^ 0xAF) + 81) ^ ((v331 ^ 0x52) - 82);
  LOBYTE(v306) = v331 + 78;
  LOBYTE(v331) = (-79 - v331) & 0x8C | 0x13;
  LOBYTE(v298) = v331 ^ v306 & 0x36;
  LOBYTE(v331) = v306 ^ (2 * ((v306 ^ 0xC) & (2 * ((v306 ^ 0xC) & (2 * ((v306 ^ 0xC) & (2 * ((v306 ^ 0xC) & (2 * ((v306 ^ 0xC) & (2 * ((v306 ^ 0xC) & (2 * v331) ^ v298)) ^ v298)) ^ v298)) ^ v298)) ^ v298)) ^ v298));
  LODWORD(v297) = v297 ^ __ROR4__(*(v316 + 4 * (295 * (HIBYTE(v349) ^ 0xFB) + 21240 - 1144 * ((3754343 * (295 * (HIBYTE(v349) ^ 0xFB) + 21240)) >> 32))), 8) ^ *(v316 + 4 * (v350 - 1144 * ((3754343 * v350) >> 32)));
  v353 = __ROR4__(*(v316 + 4 * (295 * (BYTE2(v349) ^ 0x30) + 21240 - 1144 * ((3754343 * (295 * (BYTE2(v349) ^ 0x30u) + 21240)) >> 32))), 16);
  LODWORD(STACK[0x738]) = v330 ^ 0xAFC8259B;
  v354 = v297 ^ v353 ^ v330 ^ 0xAFC8259B ^ v295 ^ 0x4C00F70D ^ ((-51 * (v331 ^ (v331 >> 4) ^ (v331 >> 1) ^ 0xC)) | (v352 << 8));
  v355 = STACK[0x980];
  v356 = STACK[0x980] & 0x3E4A7EB3;
  LODWORD(v297) = STACK[0xD98] & 0x8D025525 | STACK[0xE68] & (v356 ^ 0xF196A842);
  LOBYTE(v306) = STACK[0xE20];
  LOBYTE(v298) = STACK[0xE28];
  v357 = (v335 & (v356 ^ 0x7C94FD67)) >> v306 >> v298;
  v358 = STACK[0xE70];
  v359 = v357 + ((v297 ^ 0x8D025525) << STACK[0xE70]);
  v360 = v341;
  LODWORD(v297) = (v328 & (v341 & 0x49CA7EB3 ^ 0x9394FD67)) >> v343;
  v361 = v343;
  LODWORD(v295) = (v297 + (((STACK[0xD98] & 0xCEC71C18 | STACK[0xE68] & (v341 & 0x49CA7EB3 ^ 0x5D53E17F)) ^ 0xCEC71C18) << STACK[0xDD8] << STACK[0xE10])) ^ v359;
  LODWORD(v297) = STACK[0xA88];
  v362 = v347 ^ LODWORD(STACK[0xA88]) ^ v294;
  LODWORD(STACK[0xBE8]) = v362;
  LODWORD(STACK[0x748]) = v349 ^ 0x2A33CB1F;
  v363 = v345 ^ LODWORD(STACK[0x924]) ^ 0x6E55E1D8;
  v364 = v348 ^ v363 ^ v354;
  LODWORD(STACK[0x774]) = v364;
  v365 = v354;
  LODWORD(STACK[0x708]) = v354;
  LODWORD(STACK[0x720]) = v362 ^ 0xC33F5DD9;
  v366 = v362 ^ 0xC33F5DD9 ^ v363 ^ v364 ^ 0x61B59A88;
  v367 = v349 ^ 0x2A33CB1F ^ v297 ^ v294 ^ v366;
  v368 = 295 * (HIBYTE(v367) ^ 0xE4) + 21240 - 1144 * ((3754343 * (295 * (HIBYTE(v367) ^ 0xE4) + 21240)) >> 32);
  LOBYTE(v350) = *(STACK[0xEA8] + (((((v367 ^ 0x3E) + 69) ^ ((v367 ^ 0xD2) - 87) ^ ((v367 ^ 0x5A) + 33)) + 44) ^ 0x67));
  LOBYTE(v350) = (((v350 ^ 0xDC) + 36) ^ ((v350 ^ 1) - 1) ^ ((v350 ^ 0x9B) + 101)) + 51;
  LOBYTE(v354) = v350 & 0x2D ^ 0x39;
  LOBYTE(v350) = v350 ^ (2 * ((v350 ^ 0x7A) & (2 * ((v350 ^ 0x7A) & (2 * ((v350 ^ 0x7A) & (2 * ((v350 ^ 0x7A) & (2 * ((v350 ^ 0x7A) & (2 * (((2 * v350) & 0x76 ^ 0x56) & (v350 ^ 0x72) ^ v354)) ^ v354)) ^ v354)) ^ v354)) ^ v354)) ^ v354));
  v369 = (STACK[0xE78] & 0x1D ^ 8) & (STACK[0xE78] & 0x1D ^ 0x30) ^ STACK[0xE78] & 5;
  LOBYTE(v369) = v350 ^ (8 * ((v350 ^ 5) & (v369 | 2) ^ v369 & 0xF7));
  v370 = (295 * (BYTE1(v367) ^ 0xD9) + 21240 - 1144 * ((3754343 * (295 * (BYTE1(v367) ^ 0xD9u) + 21240)) >> 32));
  v371 = 295 * (-59 * (v369 ^ 0xB0)) + 21240;
  v372 = v370 - ((2 * v370) & 0xB6E) + 0x3AE3C8EE2DF735B7;
  LOBYTE(v370) = (v370 - ((2 * v370) & 0x6E) - 73) ^ v370;
  v373 = *(v316 + 4 * (v371 - 1144 * ((3754343 * v371) >> 32))) ^ __ROR4__(*(v316 + 4 * v368), 8) ^ (*(v316 + 4 * (v372 ^ 0x3AE3C8EE2DF735B7)) << ((v368 & 8 ^ 8) + (v368 & 8))) ^ (*(v316 + 4 * (v372 ^ 0x3AE3C8EE2DF735B7)) >> (~v370 & 8) >> (v370 & 0x10)) ^ 0xA2837EF0;
  LODWORD(v295) = v295 ^ __ROR4__(*(v316 + 4 * (295 * (BYTE2(v367) ^ 0x1C) + 21240 - 1144 * ((3754343 * (295 * (BYTE2(v367) ^ 0x1Cu) + 21240)) >> 32))), 16) ^ v365;
  v374 = v345 ^ v364 ^ 0x61B59A88 ^ v295 ^ 0xEEA98D9C ^ v373;
  v375 = v373 ^ v295 ^ 0xEBF4D4A5;
  LODWORD(STACK[0x700]) = v375;
  LODWORD(STACK[0x740]) = v366 ^ v345;
  v367 ^= 0x1940BD85u;
  LODWORD(STACK[0x758]) = v367;
  v376 = v374 ^ LODWORD(STACK[0xBF0]);
  LODWORD(STACK[0x7A0]) = v376;
  v377 = v366 ^ v345 ^ 0xD0854A0A ^ v376;
  v378 = LODWORD(STACK[0xC18]) ^ 0x55D5939 ^ v377;
  LODWORD(STACK[0x710]) = v378;
  v379 = v367 ^ v294 ^ v377;
  LODWORD(v372) = v355;
  v380 = STACK[0xCF0];
  LODWORD(v294) = STACK[0xDB0];
  v381 = (STACK[0xD30] & (v355 & 0x25D33A8C ^ 0x4BA67519)) >> v298 >> v306;
  LODWORD(v343) = (STACK[0xDB0] & 0xF77C5C35 | STACK[0xCF0] & (v355 & 0x25D33A8C ^ 0xBCDA292C)) ^ 0xF77C5C35;
  LOBYTE(v355) = STACK[0xDF0];
  v382 = STACK[0xC24];
  v383 = (v343 << v355 << v382) & 0x64AB8390 | (v381 ^ 0x9B547C6F) & ~(v343 << v355 << v382);
  v384 = STACK[0xE68];
  LODWORD(v298) = STACK[0xD98];
  LODWORD(v343) = (STACK[0xD30] & (v360 & 0x73D33A8C ^ 0xE7A67519)) >> v361;
  LODWORD(v295) = 295 * (((v379 & 0xFF00) >> 8) ^ 0xFA) + 21240;
  v385 = v316;
  LODWORD(v332) = (((STACK[0xD98] & 0x174BC73E | STACK[0xE68] & (v360 & 0x73D33A8C ^ 0xF0EDB227)) ^ 0x174BC73E) << v358) ^ (v343 - ((2 * v343) & 0xA4FD3356) - 763455061) ^ v383 ^ __ROR4__(*(v316 + 4 * (295 * (BYTE2(v379) ^ 0x24) + 21240 - 1144 * ((3754343 * (295 * (BYTE2(v379) ^ 0x24u) + 21240)) >> 32))), 16) ^ __ROR4__(*(v316 + 4 * (v295 - 1144 * ((3754343 * v295) >> 32))), 24) ^ *(v316 + 4 * (295 * (v379 ^ 0x8F) + 21240 - 1144 * ((3754343 * (295 * (v379 ^ 0x8Fu) + 21240)) >> 32))) ^ __ROR4__(*(v316 + 4 * (295 * (HIBYTE(v379) ^ 0x6B) + 21240 - 1144 * ((3754343 * (295 * (HIBYTE(v379) ^ 0x6B) + 21240)) >> 32))), 8) ^ v375 ^ 0x19891ED9;
  LODWORD(STACK[0xAC0]) = v332;
  LODWORD(v370) = v372;
  v386 = v380;
  v387 = v294;
  LODWORD(v343) = v294 & 0x471D4470 | v380 & (v372 & 0x74ACE685 ^ 0xAE44897A);
  v388 = v372 & 0x74ACE685 ^ 0xE959CD0A;
  v389 = STACK[0xE08];
  v390 = STACK[0xDB8];
  LODWORD(v380) = STACK[0xDC0];
  v391 = (STACK[0xE08] & v388) >> LODWORD(STACK[0xDB8]) >> LODWORD(STACK[0xDC0]);
  LODWORD(v295) = (((v391 ^ 0xB244323B) + 1765265705) ^ ((v391 ^ 0x9E0D0E56) + 1165946182) ^ ((v391 ^ 0x2C493C6D) - 147136641)) - 757383313 + (((((v343 ^ 0x471D4470) << v382 << v355) ^ 0x6F4D7E84) + 1461051) ^ ((((v343 ^ 0x471D4470) << v382 << v355) ^ 0x2F99FD9A) + 1086507045) ^ ((((v343 ^ 0x471D4470) << v382 << v355) ^ 0x40D4831E) + 797947553));
  LODWORD(STACK[0x730]) = v379 ^ 0x470BE4D8;
  LODWORD(STACK[0x750]) = v332 ^ v374;
  LODWORD(v332) = v378 ^ v297 ^ v332 ^ v374;
  v392 = v379 ^ 0x470BE4D8 ^ LODWORD(STACK[0xC40]) ^ v332;
  STACK[0xA88] = v361 ^ 0xAFC478E847EBED46;
  STACK[0x9A8] = ~(v361 ^ 0x47EBED46);
  STACK[0xBF0] = ~(v361 ^ 0x46) & 6;
  STACK[0xC18] = v361 & 1;
  v393 = STACK[0xDA8];
  v394 = STACK[0xDA8] & 5;
  STACK[0xA78] = v394;
  v395 = ((v298 & 0xA82AC1F4 | v384 & (v370 & 0x45ACE685 ^ 0x23730CFE)) ^ 0xA82AC1F4) << v394;
  STACK[0xA68] = v393 & 2;
  v396 = (((v389 & (v370 & 0x45ACE685 ^ 0x8B59CD0A)) >> (~(v361 ^ 0x46) & 6) >> (v361 & 1)) ^ 0x2648382C) & ~(v395 << (v393 & 2)) | (v395 << (v393 & 2)) & 0xD9B7C7D3;
  HIDWORD(v397) = *(v316 + 4 * ((295 * (((HIBYTE(v392) ^ 0x4D3F1A60) + 643463623) ^ ((HIBYTE(v392) ^ 0xB6B2FF26) - 573072255) ^ ((HIBYTE(v392) ^ 0xFB8DE54F) - 1863809302)) + 1042969384) % 0x478));
  LODWORD(v397) = HIDWORD(v397);
  v398 = (v397 >> 8) - ((2 * (v397 >> 8)) & 0x3E7CBBA2);
  HIDWORD(v397) = *(v316 + 4 * ((295 * (((BYTE1(v392) ^ 0xFFFFCEF5) - 25144) ^ ((BYTE1(v392) ^ 0xD0D) + 24128) ^ ((BYTE1(v392) ^ 0xFFFFC31C) - 28625) | ((((((BYTE1(v392) ^ 0xCEF5) - 25144) ^ ((BYTE1(v392) ^ 0xD0D) + 24128) ^ ((BYTE1(v392) ^ 0xC31C) - 28625)) - 2923) < 0x4824u) << 16)) - 6310345) % 0x478));
  LODWORD(v397) = HIDWORD(v397);
  LODWORD(v384) = v392;
  LODWORD(STACK[0x6F0]) = v392;
  v399 = 295 * (((v392 ^ 0x4177DA5F) + 1350261569) ^ ((v392 ^ 0xCAF4586C) - 604448396) ^ ((v392 ^ 0x8B8382EF) - 1701903375)) - 2050199165;
  LODWORD(v389) = (v399 ^ 0xD6AA1650) & (2 * (v399 & 0xD4CA5899)) ^ v399 & 0xD4CA5899;
  v400 = ((2 * (v399 ^ 0x572A9640)) ^ 0x7C19DB2) & (v399 ^ 0x572A9640) ^ (2 * (v399 ^ 0x572A9640)) & 0x83E0CED8;
  LODWORD(v389) = (v400 ^ 0x3408480) & (4 * v389) ^ v389;
  v401 = ((4 * (v400 ^ 0x80204249)) ^ 0xF833B64) & (v400 ^ 0x80204249) ^ (4 * (v400 ^ 0x80204249)) & 0x83E0CED8;
  LODWORD(v389) = (v401 ^ 0x3800A40) & (16 * v389) ^ v389;
  v402 = ((16 * (v401 ^ 0x8060C499)) ^ 0x3E0CED90) & (v401 ^ 0x8060C499) ^ (16 * (v401 ^ 0x8060C499)) & 0x83E0CED0;
  LODWORD(v389) = v389 ^ 0x83E0CED9 ^ (v402 ^ 0x200CC00) & (v389 << 8);
  v403 = v399 ^ (2 * ((v389 << 16) & 0x3E00000 ^ v389 ^ ((v389 << 16) ^ 0x4ED90000) & (((v402 ^ 0x81E00249) << 8) & 0x3E00000 ^ 0x3200000 ^ (((v402 ^ 0x81E00249) << 8) ^ 0x60CE0000) & (v402 ^ 0x81E00249)))) ^ 0x66E928A4;
  v404 = 0x3949660ABDC323 * (((v403 ^ 0x8B757913287FB40) - 0x8B757913287FB40) ^ ((v403 ^ 0xFB04B6BFE94A84CELL) + 0x4FB494016B57B32) ^ ((v403 ^ 0xF3B3E12E6BAF9201) + 0xC4C1ED194506DFFLL)) - 0x210ABCA911FF342ALL;
  v405 = (v404 ^ 0xA1749757A32E5B26) & (2 * (v404 & 0x8A70C767830C9BB7)) ^ v404 & 0x8A70C767830C9BB7;
  v406 = ((2 * (v404 ^ 0xA5351FDDA12F7F2ALL)) ^ 0x5E8BB1744447C93ALL) & (v404 ^ 0xA5351FDDA12F7F2ALL) ^ (2 * (v404 ^ 0xA5351FDDA12F7F2ALL)) & 0x2F45D8BA2223E49CLL;
  v407 = (v406 ^ 0xA0110300002C018) & (4 * v405) ^ v405;
  v408 = ((4 * (v406 ^ 0x2144488A22202485)) ^ 0xBD1762E8888F9274) & (v406 ^ 0x2144488A22202485) ^ (4 * (v406 ^ 0x2144488A22202485)) & 0x2F45D8BA2223E49CLL;
  v409 = (v408 ^ 0x2D0540A800038010) & (16 * v407) ^ v407;
  v410 = ((16 * (v408 ^ 0x240981222206489)) ^ 0xF45D8BA2223E49D0) & (v408 ^ 0x240981222206489) ^ (16 * (v408 ^ 0x240981222206489)) & 0x2F45D8BA2223E490;
  v411 = (v410 ^ 0x244588A222224000) & (v409 << 8) ^ v409;
  v412 = (((v410 ^ 0xB0050180001A40DLL) << 8) ^ 0x45D8BA2223E49D00) & (v410 ^ 0xB0050180001A40DLL) ^ ((v410 ^ 0xB0050180001A40DLL) << 8) & 0x2F45D8BA2223E400;
  v413 = v411 ^ 0x2F45D8BA2223E49DLL ^ (v412 ^ 0x540982222200000) & (v411 << 16);
  v414 = v404 ^ (2 * ((v413 << 32) & 0x2F45D8BA00000000 ^ v413 ^ ((v413 << 32) ^ 0x2223E49D00000000) & (((v412 ^ 0x2A0540980003609DLL) << 16) & 0x2F45D8BA00000000 ^ 0x2745D89800000000 ^ (((v412 ^ 0x2A0540980003609DLL) << 16) ^ 0x58BA222300000000) & (v412 ^ 0x2A0540980003609DLL))));
  v415 = ((v414 ^ 0xEEB4E90C5569A783) - 0x5D71C2B0EE57983ALL) ^ ((v414 ^ 0x5F87C6C746680F49) + 0x13BD128402A9CF10);
  LODWORD(STACK[0xE78]) = -1;
  LODWORD(v414) = __CFADD__(1144 * (v415 ^ ((v414 ^ 0x21CBD8E8D44AFA47) + 0x6DF10CAB908B3A02)), 0x7C71E8B42CC00060) + (((v415 ^ ((v414 ^ 0x21CBD8E8D44AFA47) + 0x6DF10CAB908B3A02)) * 0x478uLL) >> 64) + 1144 * ((__CFADD__(v414 ^ 0xEEB4E90C5569A783, 0xA28E3D4F11A867C6) - 1) ^ (__CFADD__(v414 ^ 0x5F87C6C746680F49, 0x13BD128402A9CF10) - 1) ^ (__CFADD__(v414 ^ 0x21CBD8E8D44AFA47, 0x6DF10CAB908B3A02) - 1)) + 371380370;
  LODWORD(v415) = (v414 ^ 0xC199AB42) & (2 * (v414 & 0xE9DD300B)) ^ v414 & 0xE9DD300B;
  LODWORD(v412) = ((2 * (v414 ^ 0xD191AB40)) ^ 0x70993696) & (v414 ^ 0xD191AB40) ^ (2 * (v414 ^ 0xD191AB40)) & 0x384C9B4A;
  LODWORD(v415) = (v412 ^ 0x20080000) & (4 * v415) ^ v415;
  LODWORD(v412) = ((4 * (v412 ^ 0x8448949)) ^ 0xE1326D2C) & (v412 ^ 0x8448949) ^ (4 * (v412 ^ 0x8448949)) & 0x384C9B48;
  LODWORD(v415) = (v412 ^ 0x20000900) & (16 * v415) ^ v415;
  LODWORD(v412) = ((16 * (v412 ^ 0x184C9243)) ^ 0x84C9B4B0) & (v412 ^ 0x184C9243) ^ (16 * (v412 ^ 0x184C9243)) & 0x384C9B40;
  LODWORD(v415) = v415 ^ 0x384C9B4B ^ (v412 ^ 0x489000) & (v415 << 8);
  LODWORD(v414) = v414 ^ (2 * ((v415 << 16) & 0x384C0000 ^ v415 ^ ((v415 << 16) ^ 0x1B4B0000) & (((v412 ^ 0x38040B4B) << 8) & 0x384C0000 ^ 0x30440000 ^ (((v412 ^ 0x38040B4B) << 8) ^ 0x4C9B0000) & (v412 ^ 0x38040B4B))));
  v416 = *(v316 + 4 * ((295 * (((BYTE2(v392) ^ 0xD5A3C22) - 402852265) ^ ((BYTE2(v392) ^ 0xE44044AE) + 249990875) ^ ((BYTE2(v392) ^ 0xE91A785B) + 62698032)) - 1714630660) % 0x478));
  LODWORD(v415) = HIWORD(v416);
  v417 = v396 ^ v295 ^ ((v295 ^ 0x3874FDE8) - 635348394) ^ ((v295 ^ 0xDDDBE880) + 1066291006) ^ ((v295 ^ 0x87FAB8D5) + 1705975657) ^ ((v295 ^ 0x7FFFF5FF) - 1649782205) ^ (v398 - 1623302703) ^ ((v397 >> 24) - ((2 * (v397 >> 24)) & 0x13EAFE42) + 167083809) ^ (((v416 << 16) ^ 0xE3A1BA4A) & (HIWORD(v416) ^ 0xFFFFBEFA) | HIWORD(v416) & 0x45B5) ^ 0x5B7A9305 ^ *(v316 + 4 * (v414 ^ 0xA9D4069D));
  LODWORD(v393) = STACK[0xBF8];
  v418 = STACK[0xBF8] & 0xF4964D7;
  LODWORD(v394) = v386;
  v419 = v294 & 0x3EC4EBC6 | v386 & (v418 ^ 0x20562269);
  v420 = STACK[0xD30];
  v421 = (STACK[0xD30] & (v418 ^ 0x1E92C9AF)) >> STACK[0xDE8];
  v422 = (((v421 ^ 0x6CA15836) + 877822344) ^ ((v421 ^ 0x79B01C62) + 558089684) ^ ((v421 ^ 0x15114454) + 1306697190)) - 836196634 + (((((v419 ^ 0x3EC4EBC6) << v358) ^ 0xF1E7D82B) - 129150327) ^ ((((v419 ^ 0x3EC4EBC6) << v358) ^ 0x5E8427F3) + 1462676817) ^ ((((v419 ^ 0x3EC4EBC6) << v358) ^ 0xAF63FFD8) - 1496746628));
  v423 = (v422 ^ 0x8FB0E0A6) & (2 * (v422 & 0xCF38F4C4)) ^ v422 & 0xCF38F4C4;
  LODWORD(v295) = ((2 * (v422 ^ 0x83D1C0A6)) ^ 0x99D268C4) & (v422 ^ 0x83D1C0A6) ^ (2 * (v422 ^ 0x83D1C0A6)) & 0x4CE93462;
  v424 = (v295 ^ 0x8C02000) & (4 * v423) ^ v423;
  LODWORD(v295) = ((4 * (v295 ^ 0x44291422)) ^ 0x33A4D188) & (v295 ^ 0x44291422) ^ (4 * (v295 ^ 0x44291422)) & 0x4CE93460;
  v425 = (v295 ^ 0xA01000) & (16 * v424) ^ v424;
  LODWORD(v295) = ((16 * (v295 ^ 0x4C492462)) ^ 0xCE934620) & (v295 ^ 0x4C492462) ^ (16 * (v295 ^ 0x4C492462)) & 0x4CE93460;
  v426 = v425 ^ 0x4CE93462 ^ (v295 ^ 0x4C810400) & (v425 << 8);
  v427 = (v426 << 16) & 0x4CE90000 ^ v426 ^ ((v426 << 16) ^ 0x34620000) & (((v295 ^ 0x683042) << 8) & 0x4CE90000 ^ 0x4C90000 ^ (((v295 ^ 0x683042) << 8) ^ 0x69340000) & (v295 ^ 0x683042));
  LODWORD(v414) = ((v414 & 0x106 ^ 0xEFBEFDEA ^ (v414 & 0x1AE ^ 0x92C3464) & (v414 & 0x1AE ^ 0x192CF6CC)) & STACK[0xD00]) >> 1;
  LODWORD(v295) = (v414 ^ 0xE91B1542) & v386 | v294 & 0xF89DCED;
  v428 = LODWORD(STACK[0xAB8]) ^ v332;
  LODWORD(STACK[0x6E8]) = v428;
  v429 = LODWORD(STACK[0xD38]) ^ v374 ^ 0xA5F121B9 ^ v417;
  v430 = v429 ^ LODWORD(STACK[0x8B0]) ^ v428;
  LODWORD(STACK[0x6F8]) = v430;
  LODWORD(STACK[0x6C0]) = v429;
  v431 = v430 ^ LODWORD(STACK[0xBE0]) ^ v384;
  HIDWORD(v397) = *(v316 + 4 * ((295 * ((((v415 & 0x48) + 685492778) ^ ((v415 & 0x48) - 1491358422) ^ (v415 & 0x48 | 0x91B6E26)) + (((v415 & 0x48) - 1320876991) ^ ((v415 & 0x48) - 1362978239) ^ ((v415 & 0x48 ^ 0xA3534B48) + 233033585)) + (((BYTE2(v431) ^ 0x59CFB77C) + 1702476823) ^ ((BYTE2(v431) ^ 0x45CB7CEB) + 2038265730) ^ ((BYTE2(v431) ^ 0x1C04CB1Fu) + 548585590))) + 1449665642) % 0x478));
  LODWORD(v397) = HIDWORD(v397);
  LOBYTE(v430) = *(STACK[0xE98] + ((((v431 >> 20) & 0xF0 ^ 0xCA695A7A) & ((v431 >> 28) ^ 0xCA695AFA) | (v431 >> 28) & 0x55555555) ^ 0xCA695A63));
  v432 = (v397 >> 16) - ((2 * (v397 >> 16)) & 0xD0815A48);
  LOBYTE(v430) = 124 - 81 * (((v430 ^ 0xD1) - 112) ^ ((v430 ^ 0x5B) + 6) ^ ((v430 ^ 0xBA) - 27));
  LOBYTE(v370) = v430 & 0xD7 ^ 0x9A;
  v433 = (v430 ^ (2 * ((v430 ^ 0x22) & (2 * ((v430 ^ 0x22) & (2 * ((v430 ^ 0x22) & (2 * ((v430 ^ 0x22) & (2 * ((v430 ^ 0x22) & (2 * ((v430 ^ 0x22) & (2 * v430) & 0x46 ^ v370)) ^ v370)) ^ v370)) ^ v370)) ^ v370)) ^ v370))) ^ 0x6C;
  HIDWORD(v397) = *(v316 + 4 * ((295 * (((v433 ^ 0x406E229A) - 1080959642) ^ ((v433 ^ 0x2388B46C) - 596161644) ^ ((v433 ^ 0x63E6964Du) - 1676056141)) + 76405) % 0x478));
  LODWORD(v397) = HIDWORD(v397);
  v434 = (v397 >> 8) - ((2 * (v397 >> 8)) & 0x33B0D152);
  LODWORD(STACK[0x6D8]) = v431;
  HIDWORD(v397) = *(v316 + 4 * ((295 * ((((BYTE1(v431) ^ 0x7428) - 3065) ^ ((BYTE1(v431) ^ 0xF1B7) + 29082) ^ ((BYTE1(v431) ^ 0x8587) + 1450)) - 7722) - 7383555) % 0x478));
  LODWORD(v397) = HIDWORD(v397);
  LODWORD(v297) = STACK[0xBE8] & 0x127;
  LODWORD(v297) = (((v297 ^ 0xA6835839) - 546527964) ^ ((v297 ^ 0x8279DF2B) - 74046926) ^ ((v297 ^ 0x24FA8615) + 1561688848)) + (((v297 ^ 0xE3F4DCDE) + 1403080401) ^ ((v297 ^ 0x1CE83893) - 1396856162) ^ ((v297 ^ 0xFF1CE46D) + 1330214500));
  v435 = v422 ^ (2 * v427) ^ *(v316 + 4 * ((((((v431 ^ 0x6F09E7C4) + 574887222) ^ ((v431 ^ 0x33725398) + 2118099306) ^ ((v431 ^ 0x5C7BB499u) + 288769641)) - 1549446709) * (v297 - 709201485) + 252492872 * v297 - 648843688) % 0x478)) ^ (v432 + 1749069092) ^ ((v397 >> 24) - ((2 * (v397 >> 24)) & 0x413F0CD4) - 1600158102);
  v436 = LODWORD(STACK[0xAC0]) ^ v417;
  LODWORD(STACK[0x6D0]) = v436;
  v437 = v435 ^ v436 ^ (((v414 ^ 0xE692C9AF) & v420) >> v390 >> v380);
  v438 = STACK[0xD18];
  v439 = STACK[0xD20];
  LODWORD(v295) = v437 ^ ((v295 ^ 0xF89DCED) << STACK[0xD18] << STACK[0xD20]) ^ 0x8735B38A ^ (v434 - 1713870679);
  LODWORD(STACK[0xAB8]) = v295;
  v440 = STACK[0xE68];
  LODWORD(v384) = STACK[0xD98];
  v441 = v393 & 0x1C53961D;
  v442 = v387 & 0x3C81D763 | v394 & (v393 & 0x1C53961D ^ 0x426FB59);
  v443 = STACK[0xE08];
  v444 = STACK[0xE08] & (v393 & 0x6D53961D ^ 0xDAA72C3A);
  v445 = ((STACK[0xD98] & 0xF0456221 | STACK[0xE68] & (v393 & 0x6D53961D ^ 0x2AE24E1B)) ^ 0xF0456221) << STACK[0xDA8];
  v446 = STACK[0xA88];
  v447 = STACK[0xA88] & 3 ^ 2;
  STACK[0xBE8] = v447;
  v448 = STACK[0x9A8];
  v449 = STACK[0x9A8] & 4;
  STACK[0xA98] = v449;
  LODWORD(v444) = (v444 >> v449 >> v447) & 0x20EE4499 | (v445 ^ 0xDF11BB66) & ~(v444 >> v449 >> v447);
  LODWORD(STACK[0xA90]) = v295 ^ v332;
  LODWORD(v449) = LODWORD(STACK[0x924]) ^ 0x853B68BB ^ v431;
  v450 = v295 ^ v332 ^ LODWORD(STACK[0xA3C]);
  LODWORD(STACK[0x6E0]) = v450;
  v451 = STACK[0xC28];
  v452 = v450 ^ LODWORD(STACK[0xC28]) ^ v449;
  LODWORD(v445) = (v443 & (v441 ^ 0x38A72C3A)) >> LODWORD(STACK[0xE20]) >> LODWORD(STACK[0xE28]);
  v453 = (v442 ^ 0x3C81D763) << STACK[0xDA0] << STACK[0xD28];
  LODWORD(v445) = (((v445 ^ 0xB3484D0B) - 810282957) ^ ((v445 ^ 0x3AE9C833) + 1175819531) ^ ((v445 ^ 0x89A18538) - 178399230)) + 1214196851 + (((v453 ^ 0x4D217790) - 64555716) ^ ((v453 ^ 0x2795714A) - 1768754206) ^ ((v453 ^ 0x6AB406DA) - 608992142));
  v454 = (v445 ^ 0x251AFB27) & (2 * (v445 & 0x899CF3A7)) ^ v445 & 0x899CF3A7;
  v455 = ((2 * (v445 ^ 0x25321C65)) ^ 0x595DDF84) & (v445 ^ 0x25321C65) ^ (2 * (v445 ^ 0x25321C65)) & 0xACAEEFC2;
  v456 = (v455 ^ 0x804CF80) & (4 * v454) ^ v454;
  v457 = ((4 * (v455 ^ 0xA4A22042)) ^ 0xB2BBBF08) & (v455 ^ 0xA4A22042) ^ (4 * (v455 ^ 0xA4A22042)) & 0xACAEEFC0;
  v458 = (v457 ^ 0xA0AAAF00) & (16 * v456) ^ v456;
  v459 = ((16 * (v457 ^ 0xC0440C2)) ^ 0xCAEEFC20) & (v457 ^ 0xC0440C2) ^ (16 * (v457 ^ 0xC0440C2)) & 0xACAEEFC0;
  v460 = v458 ^ 0xACAEEFC2 ^ (v459 ^ 0x88AEEC00) & (v458 << 8);
  v461 = (v460 << 16) & 0x2CAE0000 ^ v460 ^ ((v460 << 16) ^ 0x6FC20000) & ((((v459 ^ 0x240003C2) << 8) ^ 0x2EEF0000) & (v459 ^ 0x240003C2) ^ ((v459 ^ 0x240003C2) << 8) & 0x2CAE0000);
  LOBYTE(v459) = (((HIBYTE(v452) ^ 0x51) - 13) ^ ((HIBYTE(v452) ^ 0xC8) + 108) ^ ((HIBYTE(v452) ^ 0x56) - 10)) - 9;
  LOBYTE(v459) = *(STACK[0xEA8] + ((((v459 ^ 0x85) + 18) ^ v459 ^ ((v459 ^ 0x15) - 126) ^ ((v459 ^ 0xC4) + 81) ^ ((v459 ^ 0x3F) - 84)) ^ 0xCLL));
  LOBYTE(v447) = (((v459 ^ 7) - 7) ^ ((v459 ^ 0x2B) - 43) ^ ((v459 ^ 0x6A) - 106)) + 108;
  LOBYTE(v414) = v447 & 0x2E ^ 0xB6;
  LOBYTE(v459) = v447 ^ (8 * v459) & 0x10 ^ (2 * ((v447 ^ 0x40) & (2 * ((v447 ^ 0x40) & (2 * ((v447 ^ 0x40) & (2 * ((v447 ^ 0x40) & (2 * ((v447 ^ 0x40) & (2 * v414) ^ v414)) ^ v414)) ^ v414)) ^ v414)) ^ v414));
  v462 = (a37 - 59 * (((v459 ^ 0xF2) - 50) ^ ((v459 ^ 0xCE) - 14) ^ ((v459 ^ 0x9F) - 95)));
  LODWORD(STACK[0x6C8]) = v452;
  HIDWORD(v397) = *(v385 + 4 * ((295 * (v462 | ((v462 < 0x43) << 8)) + 1475) % 0x478));
  LODWORD(v397) = HIDWORD(v397);
  v463 = (v397 >> 8) - ((2 * (v397 >> 8)) & 0xA37CC9C8);
  LODWORD(v447) = *(v385 + 4 * ((295 * ((((BYTE1(v452) ^ 0xFCBC) + 24810) ^ ((BYTE1(v452) ^ 0x28C0) - 19306) ^ ((BYTE1(v452) ^ 0xD404) + 18514)) - 25844) - 4149470) % 0x478));
  LODWORD(v370) = (((BYTE3(v447) ^ 0x71240A2) - 1969113556) ^ ((BYTE3(v447) ^ 0x95DB634A) + 409507268) ^ ((BYTE3(v447) ^ 0x92C923E8) + 528143714)) - 1442129361;
  LOBYTE(v443) = ((2 * (v370 ^ 0x71)) ^ 0x62) & (v370 ^ 0x71) ^ (2 * (v370 ^ 0x71)) & 0x30;
  LOBYTE(v412) = v443 & (4 * (((2 * v370) & 0x80 ^ 0x40) & v370)) ^ ((2 * v370) & 0x80 ^ 0x40) & v370;
  HIDWORD(v397) = *(v385 + 4 * ((295 * (((BYTE2(v452) ^ 0xDDC939D8) - 961344622) ^ ((BYTE2(v452) ^ 0x7EBC7D3E) + 1707495288) ^ ((BYTE2(v452) ^ 0xA37544BE) - 1206946056)) + 1446027322) % 0x478));
  LODWORD(v397) = HIDWORD(v397);
  LOBYTE(v370) = *(STACK[0xEC0] + ((((((BYTE3(v447) ^ 0xA2) + 44) ^ ((BYTE3(v447) ^ 0x4A) - 60) ^ ((BYTE3(v447) ^ 0xE8) + 98)) + 47) ^ (2 * ((v412 | 0x31) ^ ((4 * (v443 ^ 0x11)) ^ 0xC0) & (v443 ^ 0x11) & (16 * v412)))) ^ 0xBALL));
  LOBYTE(v370) = a66 - 59 * (((v370 ^ 0x94) + 32) ^ ((v370 ^ 0xB5) + 63) ^ ((v370 ^ 0x4A) - 62));
  LOBYTE(v443) = (v370 & 0x88 | 0x43) ^ v370 & 0x86;
  LOBYTE(v370) = v370 ^ (2 * ((v370 ^ 8) & (2 * ((v370 ^ 8) & (2 * ((v370 ^ 8) & (2 * ((v370 ^ 8) & (2 * ((v370 ^ 8) & (2 * ((v370 ^ 8) & (2 * v443) ^ v443)) ^ v443)) ^ v443)) ^ v443)) ^ v443)) ^ v443));
  LODWORD(v358) = v444 ^ v445 ^ (2 * v461) ^ *(v385 + 4 * ((295 * (((v452 ^ 0x9011C0CC) + 491954545) ^ ((v452 ^ 0x89D315DA) + 76575847) ^ ((v452 ^ 0x19C2D54F) - 1803438860)) + 928678638) % 0x478)) ^ ((v397 >> 16) - ((2 * (v397 >> 16)) & 0x17D9FE30) - 1947402472) ^ (v463 + 1371432164) ^ 0xCE10AEF8 ^ ((v370 & 0xFE ^ 0xFFFFFFC1) & ((v447 << 8) ^ 0x957934A) | v370 & 0xB5);
  v464 = v451;
  LODWORD(v420) = v429 ^ v358 ^ v451;
  v465 = v429 ^ v358;
  v466 = v449 ^ v420;
  LODWORD(v449) = (295 * (((BYTE2(v466) ^ 0x751CB4F9) + 1631824466) ^ ((BYTE2(v466) ^ 0x34FD0125) + 547495822) ^ ((BYTE2(v466) ^ 0x41E1B512u) + 1438559163)) - 2040247737) % ((((v420 & 0x478 ^ 0x70A17696) - 1847227147) ^ ((v420 & 0x478 ^ 0xD17A2E71) + 809423892) ^ ((v420 & 0x478 ^ 0xA1DB5C87) + 1084204774)) + (((v420 & 0x478 ^ 0xF2432677) + 576831559) ^ ((v420 & 0x478) - 380823754) ^ ((v420 & 0x478 ^ 0x7ED49EED) - 1359578915)) + 1318591443);
  LODWORD(v295) = STACK[0x980];
  v467 = STACK[0x980] & 0x52E497F7;
  v468 = ((v384 & 0x5BF158C | v440 & (v467 ^ 0xA0763A63)) ^ 0x5BF158C) << STACK[0xA68] << STACK[0xA78];
  v469 = STACK[0xD30];
  LOBYTE(v445) = v448 & 2;
  v470 = v446 & 5 ^ 4;
  v471 = (STACK[0xD30] & (v467 ^ 0xA5C92FEF)) >> v470;
  STACK[0xA78] = v470;
  STACK[0xA68] = v448 & 2;
  v472 = v384;
  LODWORD(v370) = ((v466 ^ 0x999383CD) + 1555807138) ^ ((v466 ^ 0xBFDC7273) + 2062830112) ^ ((v466 ^ 0x264FF1B0) - 479737379);
  LODWORD(v471) = ((v469 & (v295 & 0x17E497F7 ^ 0x2FC92FEF)) >> LODWORD(STACK[0xE00]) >> LODWORD(STACK[0xE18])) ^ (((v384 & 0x1B8A8DA5 | v440 & (v295 & 0x17E497F7 ^ 0x3443A24A)) ^ 0x1B8A8DA5) << LODWORD(STACK[0x9B0]) << LODWORD(STACK[0xBB8])) ^ (v471 >> (v448 & 2)) ^ v468;
  HIDWORD(v397) = *(v385 + 4 * ((295 * (((HIBYTE(v466) ^ 0xA4194D71) - 797257691) ^ ((HIBYTE(v466) ^ 0xD52C0DAE) - 1588621060) ^ ((HIBYTE(v466) ^ 0x71354095) + 89578945)) - 516537576) % 0x478));
  LODWORD(v397) = HIDWORD(v397);
  LODWORD(v447) = (v397 >> 8) - ((2 * (v397 >> 8)) & 0xEE2E58B0);
  LODWORD(v448) = v466;
  LODWORD(STACK[0x6B0]) = v466;
  LODWORD(v414) = (295 * (((BYTE1(v466) ^ 0xA7D735BC) + 1252941553) ^ ((BYTE1(v466) ^ 0x3668D969) - 619597274) ^ ((BYTE1(v466) ^ 0x91BFECBD) + 2093385714)) + 1494604629) % 0x478;
  v473 = LODWORD(STACK[0xAB8]) ^ v358;
  LODWORD(STACK[0x6B8]) = v473;
  LODWORD(STACK[0x7D8]) = v471 ^ v473;
  v474 = v471 ^ v473 ^ v464;
  LODWORD(v471) = (v474 & 0x127 ^ 0x3C5EB8EC) & (v474 & 0x127 ^ 0xBF5FFBEA) ^ v474 & 0x21;
  HIDWORD(v397) = *(v385 + 4 * v414);
  LODWORD(v397) = HIDWORD(v397);
  LODWORD(v414) = (v397 >> 24) - ((2 * (v397 >> 24)) & 0x1C61984A);
  HIDWORD(v397) = *(v385 + 4 * v449);
  LODWORD(v397) = HIDWORD(v397);
  LODWORD(v412) = (v447 - 149476264) ^ (v414 - 1909404635) ^ *(v385 + 4 * ((((((v471 ^ 0x1C440D35) + 119258321) ^ ((v471 ^ 0x95E4A46B) - 1900341873) ^ ((v471 ^ 0xB5FE1091) - 1365139083)) + 1349802565) * (v370 + 987219941) - 2004181616 * v370 - 664149552) % 0x478)) ^ ((v397 >> 16) - ((2 * (v397 >> 16)) & 0x186BDCD6) - 1942622613);
  LODWORD(STACK[0x7D0]) = v412;
  LODWORD(v295) = STACK[0xBF8];
  v475 = STACK[0xCF0];
  LODWORD(v358) = STACK[0xDB0];
  v476 = STACK[0xE08];
  v477 = (STACK[0xE08] & (STACK[0xBF8] & 0x2ED2BF67 ^ 0x5DA57ECF)) >> v470 >> v445;
  LODWORD(v447) = ((STACK[0xDB0] & 0x36AE74D2 | STACK[0xCF0] & (STACK[0xBF8] & 0x2ED2BF67 ^ 0x6B0B0A1D)) ^ 0x36AE74D2) << v439 << v438;
  LODWORD(v477) = (((v477 ^ 0x13A93CF) - 886889253) ^ ((v477 ^ 0xDCD251F1) + 382461669) ^ ((v477 ^ 0xDDE8C23E) + 401700140)) + (((v447 ^ 0x8ECE9D0E) - 1118092587) ^ ((v447 ^ 0xD3580574) - 523380049) ^ ((v447 ^ 0x5D96987A) + 1845708705)) + 184750546;
  LODWORD(v447) = (v477 ^ 0xE70817B9) & (2 * (v477 & 0xF74D573D)) ^ v477 & 0xF74D573D;
  LODWORD(v414) = ((2 * (v477 ^ 0xCB123B93)) ^ 0x78BED95C) & (v477 ^ 0xCB123B93) ^ (2 * (v477 ^ 0xCB123B93)) & 0x3C5F6CAE;
  LODWORD(v447) = (v414 ^ 0x381E480C) & (4 * v447) ^ v447;
  LODWORD(v414) = ((4 * (v414 ^ 0x44124A2)) ^ 0xF17DB2B8) & (v414 ^ 0x44124A2) ^ (4 * (v414 ^ 0x44124A2)) & 0x3C5F6CA8;
  LODWORD(v447) = (v414 ^ 0x305D20A0) & (16 * v447) ^ v447;
  LODWORD(v414) = ((16 * (v414 ^ 0xC024C06)) ^ 0xC5F6CAE0) & (v414 ^ 0xC024C06) ^ (16 * (v414 ^ 0xC024C06)) & 0x3C5F6CA0;
  LODWORD(v447) = v447 ^ 0x3C5F6CAE ^ (v414 ^ 0x4564800) & (v447 << 8);
  LODWORD(v370) = (v447 << 16) & 0x3C5F0000 ^ v447 ^ ((v447 << 16) ^ 0x6CAE0000) & (((v414 ^ 0x3809240E) << 8) & 0x3C5F0000 ^ 0x20130000 ^ (((v414 ^ 0x3809240E) << 8) ^ 0x5F6C0000) & (v414 ^ 0x3809240E));
  LODWORD(STACK[0x6A0]) = v420 ^ 0xC0734785;
  LODWORD(v447) = v412 ^ v474 ^ 0x6EF73319;
  LODWORD(STACK[0x680]) = v447;
  v478 = LODWORD(STACK[0xA90]) ^ v465;
  LODWORD(v445) = v465;
  LODWORD(STACK[0x6A8]) = v478;
  v479 = v448 ^ LODWORD(STACK[0xBE0]) ^ v478;
  v480 = v447 ^ v420 ^ 0xC0734785;
  LODWORD(STACK[0xBE0]) = v480;
  v481 = v479 ^ v480;
  v482 = (((v479 ^ v480) >> 4) & 0xF0 ^ 0xCFA2EE26) & (((v479 ^ v480) >> 12) ^ 0xCFBBEFF7) | ((v479 ^ v480) >> 12) & 9;
  LODWORD(v438) = v476;
  v483 = ((v476 & (v295 & 0x37D2BF67 ^ 0x6FA57ECF)) >> STACK[0xC18] >> STACK[0xBF0]) ^ 0x87B18FC5;
  v484 = STACK[0xDA8];
  v485 = STACK[0xDA8] & 6;
  STACK[0x690] = v485;
  STACK[0x688] = v484 & 1;
  LODWORD(v443) = ((v384 & 0xABB59D56 | v440 & (v295 & 0x37D2BF67 ^ 0xC410E399)) ^ 0xABB59D56) << v485 << (v484 & 1);
  v486 = v483 & ~v443 | v443 & 0x784E703A;
  LOBYTE(v482) = v482 ^ *(STACK[0xEB0] + (v482 ^ 0xCFA2EE5CLL));
  LODWORD(v443) = (STACK[0xA60] ^ 0xCB907FED) & (STACK[0xA60] | 0xFF90FFE8) ^ STACK[0xA60] & 2;
  LODWORD(v443) = ((v443 ^ 0x41A68079) - 1735797608) ^ ((v443 ^ 0x7214D72B) - 1422163002) ^ ((v443 ^ 0xF822299D) + 554532212);
  LODWORD(v482) = (-103 - 81 * (((v482 ^ 0x92) - 27) ^ ((v482 ^ 0x29) + 96) ^ ((v482 ^ 0x76) + 1)));
  LODWORD(v482) = ((v482 | ((v482 < 0x1D) << 8)) + 329083521) * (v443 - 314518050) - 329083478 * v443 + 958792194;
  LODWORD(v443) = (v482 ^ 0x461DB862) & (2 * (v482 & 0x975E396A)) ^ v482 & 0x975E396A;
  LODWORD(v412) = ((2 * (v482 ^ 0x64019A62)) ^ 0xE6BF4610) & (v482 ^ 0x64019A62) ^ (2 * (v482 ^ 0x64019A62)) & 0xF35FA308;
  LODWORD(v443) = (v412 ^ 0xE2190200) & (4 * v443) ^ v443;
  LODWORD(v412) = ((4 * (v412 ^ 0x1140A108)) ^ 0xCD7E8C20) & (v412 ^ 0x1140A108) ^ (4 * (v412 ^ 0x1140A108)) & 0xF35FA308;
  LODWORD(v443) = v443 ^ 0xF35FA308 ^ (v412 ^ 0xC15E8000) & (16 * v443);
  LODWORD(v412) = (16 * (v412 ^ 0x32012308)) & 0xF35FA300 ^ 0xC2058308 ^ ((16 * (v412 ^ 0x32012308)) ^ 0x35FA3080) & (v412 ^ 0x32012308);
  LODWORD(v443) = (v443 << 8) & 0xF35FA300 ^ v443 ^ ((v443 << 8) ^ 0x5FA30800) & v412;
  LODWORD(v443) = v482 ^ (2 * ((v443 << 16) & 0x735F0000 ^ v443 ^ ((v443 << 16) ^ 0x23080000) & ((v412 << 8) & 0x735F0000 ^ 0x205C0000 ^ ((v412 << 8) ^ 0x5FA30000) & v412)));
  LODWORD(v482) = (v443 ^ 0x91F77F7A) % 0x478;
  LOWORD(v443) = (v443 & 0xFFB8 ^ 0xCB95) & (v443 & 0xFFB8 ^ 0x7F3F) ^ v443 & 0x4B10;
  LOWORD(v443) = (((BYTE2(v481) ^ 0x42FB) + 30626) ^ ((BYTE2(v481) ^ 0x3F74) + 2607) ^ ((BYTE2(v481) ^ 0x7DCE) + 18581)) - (((v443 ^ 0x9E7) - 30494) ^ ((v443 ^ 0xF90D) + 30732) ^ ((v443 ^ 0x4447) - 15038)) + 6373;
  LOWORD(v412) = (v443 ^ 0xF7A3) & (2 * (v443 & 0xE7AB)) ^ v443 & 0xE7AB;
  LOWORD(v298) = ((2 * (v443 ^ 0xB9B5)) ^ 0xBC3C) & (v443 ^ 0xB9B5) ^ (2 * (v443 ^ 0xB9B5)) & 0x5E1E;
  LOWORD(v412) = (v298 ^ 0x1C1C) & (4 * v412) ^ v412;
  LOWORD(v298) = ((4 * (v298 ^ 0x4202)) ^ 0x7878) & (v298 ^ 0x4202) ^ (4 * (v298 ^ 0x4202)) & 0x5E18;
  LODWORD(v443) = (v443 ^ (2 * (((16 * (v298 ^ 0x606)) & 0x5E00 ^ ((16 * (v298 ^ 0x606)) ^ 0xE100) & (v298 ^ 0x606) ^ 0x4000) & (((v298 ^ 0x5810) & (16 * v412) ^ v412) << 8) ^ (v298 ^ 0x5810) & (16 * v412) ^ v412)));
  HIDWORD(v397) = *(v385 + 4 * v482);
  LODWORD(v397) = HIDWORD(v397);
  LODWORD(v412) = (v397 >> 24) - ((2 * (v397 >> 24)) & 0x49EE548A);
  HIDWORD(v397) = *(v385 + 4 * ((295 * (((v443 ^ 0x9BD2BA41) + 2078227028) ^ ((v443 ^ 0xB4FD02F6) + 1425048293) ^ ((v443 ^ 0x2F2F5F1C) - 819798257)) - 796034902) % 0x478));
  LODWORD(v397) = HIDWORD(v397);
  LODWORD(v443) = (v397 >> 16) - ((2 * (v397 >> 16)) & 0x47FE29BC);
  LODWORD(v482) = ((v481 ^ 0xBD4FFA19) - 878947064) ^ ((v481 ^ 0x619F848C) + 390867859) ^ ((v481 ^ 0xDCD07EC3) - 1442590242);
  HIDWORD(v397) = *(v385 + 4 * ((295 * (((HIBYTE(v481) ^ 0x8AC9B091) + 1541459005) ^ ((HIBYTE(v481) ^ 0x8064F4C7) + 1364035691) ^ ((HIBYTE(v481) ^ 0xAAD4404) - 612091734)) - 114210824) % 0x478));
  LODWORD(v397) = HIDWORD(v397);
  LODWORD(v470) = v486 ^ v477 ^ (2 * v370) ^ *(v385 + 4 * ((295 * v482 + 303125977) % 0x478u)) ^ (v412 - 1527305659) ^ ((v397 >> 8) - ((2 * (v397 >> 8)) & 0xD6488E40) + 1797539616) ^ 0x5B3175E3 ^ (v443 - 1543564066);
  LODWORD(STACK[0xA60]) = v470;
  LODWORD(v448) = STACK[0x9F0];
  LODWORD(v477) = (v384 & 0xC7B8D0D8 | v440 & (LODWORD(STACK[0x9F0]) ^ 0x37482028)) ^ 0xC7B8D0D8;
  v487 = STACK[0xD30];
  v488 = STACK[0xD30] & STACK[0xA08];
  STACK[0x868] = v488;
  v489 = STACK[0xDD8];
  v490 = STACK[0xE10];
  v491 = STACK[0xA88] & 7 ^ 6;
  LODWORD(STACK[0xA08]) = (v488 >> (STACK[0xA88] & 7 ^ 6u)) ^ (v477 << STACK[0xDD8] << STACK[0xE10]);
  v492 = STACK[0xAB0];
  LODWORD(v385) = v475;
  LODWORD(STACK[0x67C]) = v358 & 0x717F3B5C | v475 & (LODWORD(STACK[0xAB0]) ^ 0x818FCBAC);
  LODWORD(STACK[0x698]) = v481;
  LODWORD(STACK[0x678]) = v358 & 0xF9ADB2EE | v475 & (v448 ^ 0x95D421E);
  LOBYTE(v488) = (((v482 - 49) ^ 0xFE) - 46) ^ (v482 - 49) ^ (((v482 - 49) ^ 0x6E) + 66) ^ (((v482 - 49) ^ 0x3F) + 17) ^ (((v482 - 49) ^ 0x7F) + 81);
  LOBYTE(v477) = 64 - (((v481 ^ 0x5C) + 39) ^ ((v481 ^ 0xBB) - 62) ^ ((v481 ^ 0xB1) - 52));
  LOBYTE(v477) = (v488 ^ 3) & (v477 ^ ((v477 ^ 0x93) - 79) ^ ((v477 ^ 0x6D) + 79) ^ ((v477 ^ 0xDD) - 1) ^ ((((v481 ^ 0x5C) + 39) ^ ((v481 ^ 0xBB) - 62) ^ ((v481 ^ 0xB1) - 52)) - 100) ^ 2) ^ v488 & 1;
  LOBYTE(v477) = (((v477 & 0x43 ^ 0x92) - 114) ^ ((v477 | 0xBC) - 92) ^ ((v477 & 0x43 ^ 0x6C) + 116)) + 113;
  LOBYTE(v488) = v477 & 0x4F ^ 0x70;
  LOBYTE(v477) = v477 ^ (2 * ((v477 ^ 0x6E) & (2 * ((v477 ^ 0x6E) & (2 * ((v477 ^ 0x6E) & (2 * ((v477 ^ 0x6E) & (2 * ((v477 ^ 0x6E) & (2 * ((v477 ^ 0x6E) & (2 * v477) ^ v488)) ^ v488)) ^ v488)) ^ v488)) ^ v488)) ^ v488)) ^ 0x16;
  v493 = STACK[0xDF8] & 0xE1E1E1E0;
  v494 = v493 >> (v477 & 0xAF ^ 9) >> (~v477 & 0x50);
  LODWORD(v493) = v493 >> 1;
  LODWORD(v370) = v358 & 0xC784FD00 | v475 & (v493 ^ 0x26651CE1);
  v495 = STACK[0xA68];
  v496 = STACK[0xA78];
  LODWORD(STACK[0x660]) = ((((v494 ^ 0x64A8BF7B) & v440 | v472 & 0x85495E9A) ^ 0x85495E9A) << v489 << v490) & 0x31DF6543 | ((((v494 ^ 0xE1E1E1E1) & v438) >> STACK[0xA68] >> STACK[0xA78]) ^ 0xCE209ABC) & ~((((v494 ^ 0x64A8BF7B) & v440 | v472 & 0x85495E9A) ^ 0x85495E9A) << v489 << v490);
  v497 = v438 & (v493 ^ 0xE1E1E1E1);
  v498 = STACK[0xDA0];
  v499 = STACK[0xD28];
  LODWORD(STACK[0x658]) = (((v370 ^ 0xC784FD00) << STACK[0xDA0] << STACK[0xD28]) ^ 0xB4D6482F) & ~(v497 >> v495 >> v496) | (v497 >> v495 >> v496) & 0x4B29B7D0;
  v500 = v487;
  v501 = v487 & STACK[0xA10];
  LODWORD(v494) = ((v472 & 0xCE06AD32 | v440 & (LODWORD(STACK[0x9F8]) ^ 0x2FE74CD3)) ^ 0xCE06AD32) << v484;
  STACK[0x7C0] = v501;
  v502 = STACK[0xDE8];
  LODWORD(STACK[0x650]) = ((v501 >> STACK[0xDE8]) ^ 0x8E50A769) & ~v494 | v494 & 0x71AF5896;
  LODWORD(v494) = v440 & (v493 ^ 0xD7CB906D);
  LODWORD(v495) = v440;
  LODWORD(v440) = v472;
  LODWORD(v497) = v497 >> LODWORD(STACK[0xDB8]) >> LODWORD(STACK[0xDC0]);
  LODWORD(v494) = ((v472 & 0x362A718C | v494) ^ 0x362A718C) << v498 << v499;
  LODWORD(STACK[0x648]) = (((v494 ^ 0x176A479D) + 1677005115) ^ ((v494 ^ 0xDC9680F2) - 1475750314) ^ ((v494 ^ 0xCBFCC76F) - 1083993655)) + (((v497 ^ 0x171D17A0) - 1188534998) ^ ((v497 ^ 0x7816C4D1) - 702302631) ^ ((v497 ^ 0x6F0BD371) - 1052859911)) + 1411123090;
  LODWORD(v494) = v445 ^ v470;
  LODWORD(v485) = v445 ^ v470 ^ LODWORD(STACK[0xC28]);
  LODWORD(STACK[0xA88]) = v485;
  LODWORD(v439) = STACK[0xA20];
  LODWORD(v412) = STACK[0x980];
  LODWORD(v496) = (v485 & 0x9080840 ^ 0x4F745187 ^ (v485 & 0x49494949 ^ 0x4BA7A85B) & (v485 & 0x49494949 ^ 0x2FF6FDD2)) & (LODWORD(STACK[0xA20]) ^ 0x4FFBFFFF) | STACK[0x980] & 0x20240420;
  v503 = v491;
  LOBYTE(v501) = v484 & 3;
  LOBYTE(v470) = v484 & 4;
  LODWORD(STACK[0x640]) = ((v358 & 0xC6B96B27 ^ 0xC6B96B27 ^ (v496 ^ 0xCB22DBBB) & (v358 ^ 0xEFFFFFFF)) << (v484 & 3) << (v484 & 4)) ^ (((v496 ^ 0xD9BB09C) & v487) >> v491);
  LODWORD(v496) = ((v472 & 0xDE3BA329 | v495 & (LODWORD(STACK[0xA18]) ^ 0x9772EA60)) ^ 0xDE3BA329) << v484;
  v504 = v438 & STACK[0x8D0];
  STACK[0x940] = v504;
  LODWORD(v496) = (((v496 ^ 0x700B424E) - 717705060) ^ ((v496 ^ 0x35C37271) - 1863286619) ^ ((v496 ^ 0x45C8303F) - 520371477)) + ((((v504 >> v491) ^ 0xC5FC3FB0) + 647066997) ^ (((v504 >> v491) ^ 0x75D43174) - 1766229071) ^ (((v504 >> v491) ^ 0xB0280EC4) + 1397048321)) - 962952916;
  LODWORD(STACK[0x628]) = v496;
  LODWORD(v504) = (v496 ^ 0x24C42831) & (2 * (v496 & 0xB0C44139)) ^ v496 & 0xB0C44139;
  LODWORD(v493) = ((2 * (v496 ^ 0x6544A873)) ^ 0xAB01D294) & (v496 ^ 0x6544A873) ^ (2 * (v496 ^ 0x6544A873)) & 0xD580E94A;
  LODWORD(v504) = (v493 ^ 0x81000000) & (4 * v504) ^ v504;
  LODWORD(v493) = ((4 * (v493 ^ 0x5480294A)) ^ 0x5603A528) & (v493 ^ 0x5480294A) ^ (4 * (v493 ^ 0x5480294A)) & 0xD580E948;
  LODWORD(v504) = (v493 ^ 0x5400A100) & (16 * v504) ^ v504;
  LODWORD(v493) = ((16 * (v493 ^ 0x81804842)) ^ 0x580E94A0) & (v493 ^ 0x81804842) ^ (16 * (v493 ^ 0x81804842)) & 0xD580E940;
  LODWORD(v504) = v504 ^ 0xD580E94A ^ (v493 ^ 0x50008000) & (v504 << 8);
  LODWORD(STACK[0x5F8]) = (v504 << 16) & 0x55800000 ^ v504 ^ ((v504 << 16) ^ 0x694A0000) & (((v493 ^ 0x8580694A) << 8) & 0x55800000 ^ 0x55000000 ^ (((v493 ^ 0x8580694A) << 8) ^ 0xE90000) & (v493 ^ 0x8580694A));
  LODWORD(STACK[0x620]) = v358 & 0x59DA97F6 | v385 & (v439 ^ 0x1093DEBF);
  v505 = v487 & STACK[0xBD0];
  STACK[0x9A8] = v505;
  LODWORD(STACK[0x618]) = (v505 >> v491) & 0x16C99A75 | ((((v472 & 0x53DD2146 | v495 & (v439 ^ 0x1A94680F)) ^ 0x53DD2146) << v484) ^ 0x6936658A) & ~(v505 >> v491);
  v506 = STACK[0xBF8] & 0xB8B8B8B;
  v507 = STACK[0xE70];
  LODWORD(v504) = ((v358 & 0x8FAA0745 | v385 & (v506 ^ 0x98BD1052)) ^ 0x8FAA0745) << STACK[0xE70];
  LODWORD(STACK[0x608]) = v504 & 0x910B9449 | (((v438 & (v506 ^ 0x17171717)) >> v502) ^ 0x6EF46BB6) & ~v504;
  v508 = v487 & (v506 ^ 0x17171717);
  STACK[0x870] = v508;
  LODWORD(v504) = ((v472 & 0xE8D7EF7C | v495 & (v506 ^ 0xFFC0F86B)) ^ 0xE8D7EF7C) << (v484 & 3) << (v484 & 4);
  LODWORD(STACK[0x630]) = ((v508 >> v491) ^ 0xB2C156D3) & ~v504 | v504 & 0x4D3EA92C;
  LOBYTE(v502) = STACK[0xE28];
  LOBYTE(v487) = STACK[0xE20];
  LODWORD(v504) = ((v358 & 0x20D62772 | v385 & (LODWORD(STACK[0x8F8]) ^ 0x37C13065)) ^ 0x20D62772) << v507;
  LODWORD(STACK[0x600]) = ((((STACK[0x9E0] >> v502 >> v487) ^ 0x1A2EBCC5) + 296291923) ^ (((STACK[0x9E0] >> v502 >> v487) ^ 0xCF6337C7) - 991656623) ^ (((STACK[0x9E0] >> v502 >> v487) ^ 0xD54D8B02) - 557172330)) - 235346916 + (((v504 ^ 0x837D4BA0) - 1220061870) ^ ((v504 ^ 0x154EE644) + 561313974) ^ ((v504 ^ 0x9633ADE4) - 1576422634));
  LOBYTE(v484) = v487;
  LOBYTE(v445) = v502;
  LODWORD(STACK[0x610]) = v504 & 0x331AA3F8 | (((v500 & STACK[0xA30]) >> v487 >> v502) ^ 0xCCE55C07) & ~v504;
  LODWORD(v505) = v412 & 0x17979797;
  v509 = v385 & (v412 & 0x17979797 ^ 0xD34301FC) | v358 & 0xFC6C2ED3;
  v510 = v495;
  LODWORD(STACK[0x5E8]) = v440 & 0x1E4C6A07 | v495 & (v492 ^ 0xEEBC9AF7);
  LODWORD(v504) = v385 & (LODWORD(STACK[0x9E8]) ^ 0xA7A0F1C4) | v358 & 0xAAADFCC9;
  v511 = STACK[0xA98];
  v512 = STACK[0xBE8];
  v513 = STACK[0xD18];
  LODWORD(v508) = ((v440 & 0xC8DBEB96 | v495 & (LODWORD(STACK[0xA70]) ^ 0xC5D6E69B)) ^ 0xC8DBEB96) << STACK[0xD18];
  v514 = STACK[0xD20];
  LODWORD(STACK[0x5D0]) = ((STACK[0x8E0] >> STACK[0xA98] >> STACK[0xBE8]) ^ 0xF1F9192D) & ~(v508 << STACK[0xD20]) | (v508 << STACK[0xD20]) & 0xE06E6D2;
  v515 = STACK[0xA40];
  v516 = STACK[0xA40] >> v512 >> v511;
  LOBYTE(v499) = v511;
  LODWORD(v504) = v504 ^ 0xAAADFCC9;
  LODWORD(STACK[0x5C8]) = v504;
  LOBYTE(v412) = v489;
  v517 = v504 << v490 << v489;
  LODWORD(STACK[0x5D4]) = v517 ^ v516;
  LOBYTE(v511) = v484;
  LOBYTE(v504) = v445;
  LODWORD(v443) = v517 + (v515 >> v484 >> v445);
  LODWORD(v445) = LODWORD(STACK[0x680]) ^ LODWORD(STACK[0xA90]);
  LODWORD(STACK[0xA40]) = v445;
  LODWORD(STACK[0xBD0]) = v494 ^ LODWORD(STACK[0xA3C]) ^ v445;
  LODWORD(STACK[0xA90]) = LODWORD(STACK[0x7D0]) ^ LODWORD(STACK[0x7D8]) ^ 0xC0734785;
  LODWORD(STACK[0x7D8]) = v505;
  LODWORD(v505) = v505 ^ 0x2F2F2F2F;
  LODWORD(STACK[0x5E4]) = v505;
  v518 = v438 & v505;
  STACK[0x7D0] = v518;
  v519 = STACK[0xBF0];
  v520 = STACK[0xC18];
  v521 = v518 >> STACK[0xBF0] >> STACK[0xC18];
  LODWORD(STACK[0x5D8]) = v509 ^ 0xFC6C2ED3;
  LODWORD(v494) = (v509 ^ 0xFC6C2ED3) << v412 << v490;
  LOBYTE(v509) = v490;
  LODWORD(STACK[0x638]) = (v521 ^ 0x46E4BB) & ~v494 | v494 & 0xFFB91B44;
  v522 = STACK[0xD28];
  v523 = STACK[0xDA0];
  LOBYTE(v516) = STACK[0xDC0];
  LOBYTE(v512) = STACK[0xDB8];
  LODWORD(v494) = LODWORD(STACK[0x9D8]) >> v516 >> v512;
  LODWORD(v521) = (STACK[0x9D0] << STACK[0xD28] << STACK[0xDA0]) + v494;
  LODWORD(STACK[0x680]) = v521 - ((2 * v521) & 0xCC62D182);
  LODWORD(v521) = STACK[0x948] + 699949363 + (~(2 * STACK[0x948]) | 0xECCFFDDF);
  LOBYTE(v515) = STACK[0xAD0];
  LOBYTE(v491) = STACK[0xAE0];
  LODWORD(STACK[0xA20]) = v494 | (LODWORD(STACK[0x830]) << v515 << v491);
  LODWORD(STACK[0x5F0]) = v521 ^ 0x29B86132;
  LODWORD(STACK[0xA30]) = (v521 ^ 0x29B86132) << v501 << v470;
  LODWORD(v521) = STACK[0xDF8] & 0xCBCBCBCA;
  LODWORD(v490) = ((v440 & 0x81C3D9E7 | v510 & ((v521 >> 1) ^ 0x4A08122C)) ^ 0x81C3D9E7) << v522 << v523;
  LOBYTE(v523) = v503;
  STACK[0x5C0] = v503;
  v524 = (v500 & ((v521 >> 1) ^ 0xCBCBCBCB)) >> v503;
  LODWORD(STACK[0x674]) = (v490 ^ 0xF1BED366) & ~v524 | v524 & 0xE412C99;
  LODWORD(v521) = v521 >> (!(v500 & 1) + (v500 & 1));
  LODWORD(v521) = ((((v521 ^ 0x55478613) & v510 | v440 & 0x9E8C4DD8) ^ 0x9E8C4DD8) << v509 << v412) + (((v521 ^ 0xCBCBCBCB) & v500) >> v519 >> v520);
  LODWORD(STACK[0x668]) = v521 - ((2 * v521) & 0xBC9C0008);
  LODWORD(v518) = STACK[0x880];
  LODWORD(STACK[0x664]) = ((v358 & 0xDEA086F2 | v385 & (LODWORD(STACK[0x880]) ^ 0x156B4D39)) ^ 0xDEA086F2) << LODWORD(STACK[0x9B0]) << LODWORD(STACK[0xBB8]);
  LODWORD(v521) = ((v440 & 0x3080C0AA | v510 & (v518 ^ 0xFB4B0B61)) ^ 0x3080C0AA) << v491 << v515;
  LOBYTE(v470) = v511;
  LODWORD(STACK[0xD28]) = ((STACK[0x888] >> v511 >> v504) ^ 0xDCC2C092) & ~v521 | v521 & 0x233D3F6D;
  LODWORD(v501) = STACK[0x9C0];
  v525 = STACK[0x898];
  LOBYTE(v515) = v499;
  v526 = STACK[0xBE8];
  v527 = STACK[0x898] >> v499 >> STACK[0xBE8];
  v528 = STACK[0xE70];
  LODWORD(STACK[0xDA0]) = ((((v358 & 0x6009DE36 | v385 & (LODWORD(STACK[0x9C0]) ^ 0xD5BC6B83)) ^ 0x6009DE36) << STACK[0xE70]) ^ 0xB1F343F7) & ~v527 | v527 & 0x4E0CBC08;
  LODWORD(v521) = ((v358 & 0x6E5275C5 | v385 & (v501 ^ 0xDBE7C070)) ^ 0x6E5275C5) << v412 << v509;
  LOBYTE(v519) = STACK[0xE00];
  LOBYTE(v520) = STACK[0xE18];
  LODWORD(STACK[0xBB8]) = v521 & 0x82CC008A | ((v525 >> v519 >> v520) ^ 0x7D33FF75) & ~v521;
  LODWORD(v501) = STACK[0x890];
  v529 = STACK[0x9B8];
  v530 = STACK[0xA68];
  v531 = STACK[0xA78];
  v532 = STACK[0x690];
  v533 = STACK[0x688];
  LODWORD(STACK[0xA18]) = (STACK[0x9B8] >> STACK[0xA68] >> STACK[0xA78]) ^ (((v440 & 0x9736AC19 | v510 & (LODWORD(STACK[0x890]) ^ 0x228319ACu)) ^ 0x9736AC19) << STACK[0x690] << STACK[0x688]);
  LOBYTE(v491) = v513;
  LOBYTE(v509) = v514;
  LODWORD(v521) = ((v358 & 0x5F01135D | v385 & (v501 ^ 0xEAB4A6E8)) ^ 0x5F01135D) << v513 << v514;
  LODWORD(STACK[0xA10]) = v521 & 0xE9AE8BD5 | ((v529 >> v520 >> v519) ^ 0x1651742A) & ~v521;
  LODWORD(v521) = LODWORD(STACK[0xBB0]) << v533 << v532;
  LOBYTE(v385) = v526;
  LODWORD(STACK[0x968]) = ((LODWORD(STACK[0x970]) << v528) ^ 0xFC4EEF1) & ~(STACK[0x968] >> v515 >> v526) | (STACK[0x968] >> v515 >> v526) & 0x703B110E;
  v534 = STACK[0x990];
  LOBYTE(v490) = v530;
  LOBYTE(v514) = v531;
  LODWORD(STACK[0x970]) = (STACK[0x990] >> v530 >> v531) ^ v521;
  LOBYTE(v520) = v512;
  LOBYTE(v531) = v516;
  LODWORD(STACK[0x990]) = (v534 >> v512 >> v516) + v521;
  LODWORD(v530) = STACK[0xB18];
  LODWORD(v527) = (LODWORD(STACK[0xB18]) ^ 0x9BBFA5B8) & v510 | v440 & 0x9BBFA5B8;
  v535 = STACK[0x950];
  v536 = STACK[0x950] >> v490 >> v514;
  LODWORD(v532) = v443 ^ LODWORD(STACK[0x7B0]);
  v537 = STACK[0x840] >> v523;
  STACK[0x690] = v537;
  LODWORD(v521) = STACK[0x7C8];
  LODWORD(STACK[0xA78]) = v532 ^ 0xC1654012 ^ (LODWORD(STACK[0x7C8]) + v537);
  v538 = LODWORD(STACK[0x5D0]) ^ LODWORD(STACK[0x7A8]);
  v539 = STACK[0xE08];
  v540 = STACK[0xE08] & STACK[0xA58];
  STACK[0x830] = v540;
  v541 = STACK[0xDA8];
  LODWORD(v504) = LODWORD(STACK[0xD38]) ^ (v540 >> v504 >> v470) ^ (LODWORD(STACK[0x5C8]) << STACK[0xDA8]) ^ LODWORD(STACK[0x780]);
  LODWORD(v513) = v521;
  LODWORD(v540) = v521 & 0xF9A54C42 | (LODWORD(STACK[0xB90]) ^ 0x65AB3BD) & ~v521;
  LODWORD(STACK[0x7A8]) = v540;
  LODWORD(STACK[0xA68]) = LODWORD(STACK[0x5D4]) ^ v540 ^ 0x56732380 ^ LODWORD(STACK[0x790]);
  LODWORD(v533) = (STACK[0x878] >> STACK[0xDE8]) ^ 0x5E7DCC7C;
  LOBYTE(v443) = STACK[0xC24];
  LOBYTE(v521) = STACK[0xDF0];
  LODWORD(v490) = v527 ^ 0x9BBFA5B8;
  v542 = STACK[0xE10];
  v543 = STACK[0xDD8];
  LODWORD(v540) = v490 << STACK[0xE10] << STACK[0xDD8];
  v544 = STACK[0x850];
  LOBYTE(v526) = v515;
  LOBYTE(v523) = v385;
  v545 = STACK[0x850] >> v515 >> v385;
  LODWORD(v516) = ((LODWORD(STACK[0x5E8]) ^ 0x1E4C6A07) << v443 << v521) ^ v533;
  LODWORD(v515) = v540;
  LODWORD(STACK[0x790]) = v540;
  LODWORD(STACK[0xA58]) = v516 ^ (v540 + v545) ^ 0x826BA711 ^ LODWORD(STACK[0x760]);
  LODWORD(v540) = STACK[0x838];
  LODWORD(STACK[0x840]) = v504 ^ LODWORD(STACK[0x838]) ^ 0xE8B69DEA ^ v513;
  LODWORD(v385) = v513 | v540;
  v546 = (v510 & (LODWORD(STACK[0x9C8]) ^ 0xCC4E6225) | v440 & 0xE3614D0A) ^ 0xE3614D0A;
  v547 = v539 & STACK[0xA50];
  STACK[0x838] = v547;
  v548 = v547 >> v523 >> v526;
  LODWORD(v516) = v548 & 0x1C810F97 | ((v546 << v541) ^ 0xE37EF068) & ~v548;
  LODWORD(v440) = STACK[0x868] >> v531 >> v520;
  LODWORD(STACK[0x988]) = (v539 & STACK[0x988]) >> v520 >> v531;
  v549 = STACK[0xD30] & STACK[0x5E4];
  STACK[0x7C8] = v549;
  v550 = (LODWORD(STACK[0x678]) ^ 0xF9ADB2EE) << v443 << v521;
  LODWORD(v513) = (LODWORD(STACK[0x5D8]) << v443 << v521) & 0x26B879EC | ((v549 >> v520 >> v531) ^ 0xD9478613) & ~(LODWORD(STACK[0x5D8]) << v443 << v521);
  LODWORD(STACK[0x760]) = v548 ^ (v546 << v542 << v543);
  LODWORD(STACK[0x7B0]) = v385;
  LODWORD(STACK[0xDF0]) = 2 * v385;
  LODWORD(STACK[0xE10]) = LODWORD(STACK[0xA08]) ^ (v385 - ((2 * v385) & 0xE179188) - 2029270844) ^ 0x406C7454 ^ LODWORD(STACK[0x798]);
  LOBYTE(v520) = STACK[0xAD0];
  LOBYTE(v443) = STACK[0xAE0];
  HIDWORD(v397) = v533;
  LODWORD(v397) = v533;
  LODWORD(v531) = ((LODWORD(STACK[0x67C]) ^ 0x717F3B5C) << v520 << v443) ^ ((v397 >> 26) << 26) ^ ((v397 >> 26) >> 6);
  LODWORD(v539) = v536 ^ 0x4F097145 ^ v515;
  LODWORD(STACK[0xC24]) = v538 ^ 0xBD90B8E1 ^ v539;
  LODWORD(STACK[0xDD8]) = v531 ^ v539 ^ 0x6184014D ^ LODWORD(STACK[0x768]);
  LODWORD(v546) = STACK[0x828];
  LODWORD(STACK[0xDC0]) = v550 ^ v440 ^ v536 ^ LODWORD(STACK[0x828]) ^ LODWORD(STACK[0x778]);
  LODWORD(STACK[0xDB8]) = (LODWORD(STACK[0x7B8]) - ((2 * LODWORD(STACK[0x7B8])) & 0xBCA2B61A) + 1582390029) ^ LODWORD(STACK[0x738]) ^ 0x4D683EF5 ^ LODWORD(STACK[0x660]);
  LOBYTE(v521) = v541;
  LODWORD(v548) = v490 << v541;
  LOBYTE(v536) = STACK[0xE18];
  LOBYTE(v538) = STACK[0xE00];
  LODWORD(v526) = v535 >> v536 >> v538;
  LODWORD(STACK[0xA50]) = (LODWORD(STACK[0xC28]) - (STACK[0xBC8] & 0x4008383E) + 890518559) ^ LODWORD(STACK[0x658]) ^ ((v490 << v541) + v526) ^ 0xA022AAE ^ LODWORD(STACK[0x718]);
  LOBYTE(v385) = v491;
  LODWORD(v440) = LODWORD(STACK[0x848]) << v491 << v509;
  v551 = STACK[0xA80] >> STACK[0x5C0];
  LODWORD(v541) = v551;
  STACK[0x780] = v551;
  LODWORD(STACK[0xA08]) = LODWORD(STACK[0x650]) ^ (v440 + v551) ^ 0xA3914C50 ^ LODWORD(STACK[0x720]);
  v552 = STACK[0xCF0];
  LODWORD(STACK[0xC18]) = LODWORD(STACK[0x648]) ^ ((LODWORD(STACK[0x648]) ^ 0x8EBE334A) + 129047666) ^ ((LODWORD(STACK[0x648]) ^ 0xD5092B87) + 1543898301) ^ ((LODWORD(STACK[0x648]) ^ 0x529C77F6) - 611100466) ^ ((LODWORD(STACK[0x648]) ^ 0x7FDBBFFF) - 153841467) ^ ((((v530 ^ 0x352C3552) & STACK[0xCF0] | STACK[0xDB0] & 0x352C3552) ^ 0x352C3552) << v521) ^ (v544 >> STACK[0xBF0] >> STACK[0xC18]) ^ 0xA7F3F931 ^ LODWORD(STACK[0x748]);
  LODWORD(v533) = STACK[0xB90];
  v553 = STACK[0xB98];
  LODWORD(v523) = (((LODWORD(STACK[0xB98]) ^ 0xF473B755) - 206962220) ^ ((LODWORD(STACK[0xB98]) ^ 0x3E60CC) + 132634187) ^ ((LODWORD(STACK[0xB98]) ^ 0xF44DD799) - 208379616)) + (((v533 ^ 0xF59BCFA2) - 1979815253) ^ ((v533 ^ 0x6E69FE01) + 302799626) ^ ((v533 ^ 0x9BF231A3) - 409496404));
  LODWORD(STACK[0xBF0]) = (v523 - 2 * ((v523 + 2076222576) & 0x7E28473F ^ v523 & 1) + 2045307822) ^ LODWORD(STACK[0x708]) ^ 0x194DCC58 ^ LODWORD(STACK[0x640]);
  v554 = LODWORD(STACK[0x958]) << v520 << v443;
  LODWORD(v551) = LODWORD(STACK[0x628]) ^ (2 * LODWORD(STACK[0x5F8]));
  LODWORD(v521) = (v554 & 0x3AF3520B | (v533 ^ 0xC50CADF4) & ~v554) ^ 0xBCB8C8FE;
  LODWORD(STACK[0x798]) = v521;
  LODWORD(STACK[0xAE0]) = v551 ^ v521 ^ 0x4FC7B453 ^ LODWORD(STACK[0x774]);
  v555 = STACK[0xE70];
  LODWORD(v542) = LODWORD(STACK[0x960]) << STACK[0xE70];
  LODWORD(v551) = (((v545 ^ 0xA9E8DC1C) + 1941957710) ^ ((v545 ^ 0xC6FA5F51) + 481128193) ^ ((v545 ^ 0x6F12834D) - 1253723363)) + (((v542 ^ 0xCAF72A84) + 1738516106) ^ ((v542 ^ 0x13C0654) - 1403745702) ^ ((v542 ^ 0xCBCB2CD0) + 1721999582)) - 485611465;
  LODWORD(v443) = ((v551 ^ 0x7A092262) - 281331445) ^ v551 ^ ((v551 ^ 0x99864FCA) + 213144739) ^ ((v551 ^ 0x761C5680) - 483504663) ^ ((v551 ^ 0xFF5EDFBF) + 1785513176);
  LODWORD(STACK[0x960]) = (STACK[0x9A8] >> v536 >> v538) ^ ((LODWORD(STACK[0x620]) ^ 0x59DA97F6) << STACK[0xE70]) ^ v443 ^ 0x8F325E62 ^ LODWORD(STACK[0x740]);
  LODWORD(v521) = v546;
  LODWORD(STACK[0xAD0]) = LODWORD(STACK[0x608]) ^ (v546 & 0x30631D6D | (v545 ^ 0xCF9CE292) & ~v546) ^ 0xF7AA817 ^ LODWORD(STACK[0x700]);
  LODWORD(STACK[0x958]) = LODWORD(STACK[0x618]) ^ (v523 - 2 * ((v523 + 2076222576) & 0x764D923F ^ v523 & 0xA) - 233949531) ^ 0xE227938C ^ LODWORD(STACK[0x758]);
  LODWORD(v531) = v440 & 0xA4E8518F | (v533 ^ 0x5B17AE70) & ~v440;
  LODWORD(STACK[0x950]) = LODWORD(STACK[0x600]) ^ ((LODWORD(STACK[0x600]) ^ 0x5007CAD7) - 1639808881) ^ ((LODWORD(STACK[0x600]) ^ 0x6AB13992) - 1527483444) ^ ((LODWORD(STACK[0x600]) ^ 0x70F3B31C) - 1095304890) ^ ((LODWORD(STACK[0x600]) ^ 0x7BFFF5FF) - 1246052441) ^ v531 ^ 0x296896E5 ^ LODWORD(STACK[0x710]);
  LODWORD(v490) = STACK[0xCA0];
  LODWORD(STACK[0x848]) = LODWORD(STACK[0xCA0]) ^ LODWORD(STACK[0x630]) ^ ((((v545 ^ 0x2B92578A) - 238721060) ^ ((v545 ^ 0x9B3246D6) + 1097168520) ^ ((v545 ^ 0xB0A0115C) + 1794580750)) + (((v548 ^ 0x849F4135) + 704760740) ^ ((v548 ^ 0xDE2A6349) + 1890904544) ^ ((v548 ^ 0x5AB5227C) - 198465301)) + 1997161751) ^ 0xD4ED262C ^ LODWORD(STACK[0x7A0]);
  v556 = STACK[0x690];
  LODWORD(v543) = ((((STACK[0x690] ^ 0x11347452) + 1121797170) ^ ((STACK[0x690] ^ 0xDED3F661) - 1925528061) ^ ((STACK[0x690] ^ 0xCFE78233) - 1676758447)) - 2108713775 + (((v554 ^ 0x750AECAF) + 1556993638) ^ ((v554 ^ 0xE64D9023) - 812995862) ^ ((v554 ^ 0x93477C8C) - 1165998521))) ^ LODWORD(STACK[0x610]) ^ LODWORD(STACK[0x730]);
  LODWORD(v551) = v544 >> LODWORD(STACK[0xE28]) >> LODWORD(STACK[0xE20]);
  LODWORD(STACK[0xE28]) = v516 ^ ((((v551 ^ 0xAC0C6D8A) + 520369814) ^ ((v551 ^ 0x2136CD8A) - 1841391978) ^ ((v551 ^ 0x8D3AA000) + 1043528480)) - 1618011950 + (((v542 ^ 0x3253BD97) - 1623510629) ^ ((v542 ^ 0xC374BD44) + 1847341386) ^ ((v542 ^ 0xF12700D3) + 1548717279))) ^ 0x1DCF2A46 ^ LODWORD(STACK[0xAC0]);
  LODWORD(STACK[0xAC0]) = v490 ^ v513 ^ v541 ^ v553 ^ 0xF8264979 ^ 0xBA9CB532 ^ LODWORD(STACK[0x750]);
  LODWORD(STACK[0x7B8]) = LODWORD(STACK[0x760]) ^ (v546 + v526) ^ 0xC8ABFA58 ^ LODWORD(STACK[0x6E8]);
  v557 = STACK[0xC78];
  v558 = ((STACK[0xC78] - ((2 * STACK[0xC78]) & 0x33100212) + 0x2228C7707FEC250BLL) ^ 0x2228C7707FEC250BLL) >> STACK[0xA98] >> STACK[0xBE8];
  LODWORD(v513) = LODWORD(STACK[0x5F0]) << v385;
  v559 = STACK[0xD20];
  LODWORD(STACK[0xE20]) = LODWORD(STACK[0xBB0]) << v385 << STACK[0xD20];
  LODWORD(v558) = LODWORD(STACK[0xC40]) ^ v558 ^ (v513 << v559);
  LODWORD(STACK[0x7A0]) = v543;
  LODWORD(v516) = (v543 & 0xD48908E4 ^ 0x1605BF31) & (v543 & 0xD48908E4 ^ 0xEBCCF753) ^ v543 & 0x84;
  LODWORD(v515) = STACK[0x6C0];
  LODWORD(v385) = STACK[0xAB8];
  LODWORD(v516) = (((v516 ^ 0xE4B4CDE7) - 693688550) ^ ((v516 ^ 0x6E7A00F7) + 1550445066) ^ ((v516 ^ 0x5C4372E5) + 1850775580)) + 488806051 + (((v558 ^ LODWORD(STACK[0x6C0]) ^ v385 ^ 0x5162C8E2) - 1058013442) ^ ((v558 ^ LODWORD(STACK[0x6C0]) ^ v385 ^ 0xEFD784F4) + 2119873260) ^ ((v558 ^ LODWORD(STACK[0x6C0]) ^ v385 ^ 0x551A97C5) - 996695589));
  v560 = LODWORD(STACK[0x638]) ^ (v544 >> v536 >> v538) ^ ((((LODWORD(STACK[0xB18]) ^ 0x509E3851) & v552 | STACK[0xDB0] & 0x509E3851) ^ 0x509E3851) << v555) ^ 0x9910067 ^ LODWORD(STACK[0x6F0]);
  LODWORD(STACK[0xC40]) = ((v554 ^ 0x467AF0EA) & ~v556 | v556 & 0xB9850F15) ^ 0xAD394115 ^ LODWORD(STACK[0x6D0]);
  LODWORD(v544) = v490;
  LODWORD(STACK[0xB18]) = v490 ^ ((v548 ^ 0xA0F835A0) & ~v545 | v545 & 0x5F07CA5F) ^ 0xC0026A0B ^ v515;
  LODWORD(STACK[0xE70]) = v490 ^ v531 ^ 0xDE664CD5 ^ LODWORD(STACK[0x6F8]);
  LODWORD(v531) = (((v551 ^ 0x3919E06D) - 1978549389) ^ ((v551 ^ 0xB7C2067D) + 80371043) ^ ((v551 ^ 0x8EDBE610) + 1037286672)) - 125245128 + (((v521 ^ 0x286A1AEC) - 1677819423) ^ ((v521 ^ 0xAEF9E55) - 1183120038) ^ ((v521 ^ 0x228584B9) - 1861148746));
  LODWORD(v558) = (v531 ^ 0x8C982893) & (2 * (v531 & 0xA0DA209B)) ^ v531 & 0xA0DA209B;
  LODWORD(v513) = ((2 * (v531 ^ 0xCDB82883)) ^ 0xDAC41030) & (v531 ^ 0xCDB82883) ^ (2 * (v531 ^ 0xCDB82883)) & 0x6D620818;
  LODWORD(v558) = (v513 ^ 0x400010) & (4 * v558) ^ v558;
  LODWORD(v513) = ((4 * (v513 ^ 0x25220808)) ^ 0xB5882060) & (v513 ^ 0x25220808) ^ (4 * (v513 ^ 0x25220808)) & 0x6D620818;
  LODWORD(v558) = (v513 ^ 0x25000000) & (16 * v558) ^ v558;
  LODWORD(v513) = ((16 * (v513 ^ 0x48620818)) ^ 0xD6208180) & (v513 ^ 0x48620818) ^ (16 * (v513 ^ 0x48620818)) & 0x6D620800;
  LODWORD(v558) = v558 ^ 0x6D620818 ^ (v513 ^ 0x44200000) & (v558 << 8);
  v561 = v531 ^ (2 * ((v558 << 16) & 0x6D620000 ^ v558 ^ ((v558 << 16) ^ 0x8180000) & (((v513 ^ 0x29420818) << 8) & 0x6D620000 ^ 0xD620000 ^ (((v513 ^ 0x29420818) << 8) ^ 0x62080000) & (v513 ^ 0x29420818)))) ^ 0x2396286E ^ LODWORD(STACK[0x6D8]);
  v562 = (LODWORD(STACK[0x680]) + 1714514113) ^ v556 ^ 0xAC16CF9C ^ v553 ^ 0xF8264979 ^ 0x515A33B6 ^ v385;
  LODWORD(STACK[0xD20]) = v443 ^ v516 ^ ((v516 ^ 0x597F9ACA) - 152271018) ^ ((v516 ^ 0xD75BDB0C) + 2026423956) ^ ((v516 ^ 0x23B65CD9) - 1943715513) ^ ((v516 ^ 0xFDFEFF7F) + 1382933217) ^ 0x3AA106F7;
  LODWORD(STACK[0xBE8]) = LODWORD(STACK[0xC28]) ^ LODWORD(STACK[0xA20]) ^ LODWORD(STACK[0x798]) ^ 0x12370545 ^ LODWORD(STACK[0x6E0]);
  LODWORD(STACK[0xE00]) = (v557 >> STACK[0xDE8]) ^ LODWORD(STACK[0xA30]) ^ LODWORD(STACK[0x7A8]) ^ 0xC902CBE4 ^ LODWORD(STACK[0x6C8]);
  LODWORD(STACK[0xE18]) = v545 ^ LODWORD(STACK[0x674]) ^ LODWORD(STACK[0x790]) ^ 0xD9243FFB ^ LODWORD(STACK[0x6B8]);
  v563 = (LODWORD(STACK[0x668]) + 1582170116) ^ v551 ^ v542 ^ 0x70283799 ^ LODWORD(STACK[0x6A0]);
  v564 = LODWORD(STACK[0x988]) ^ LODWORD(STACK[0x664]) ^ v556 ^ 0xAC16CF9C ^ v554 ^ 0x2980DFCB ^ LODWORD(STACK[0x6A8]);
  LODWORD(v523) = (((v533 ^ 0x1568FD93) + 1762482332) ^ ((v533 ^ 0x645E613A) + 406570035) ^ ((v533 ^ 0x71369CA9) + 223558050)) + 888154173 + (((v440 ^ 0xC9FD7229) + 1602639869) ^ ((v440 ^ 0x7151B2DB) - 416639217) ^ ((v440 ^ 0xB8ACC0F2) + 785900840));
  LODWORD(v531) = (v523 ^ 0xB60FAAD4) & (2 * (v523 & 0xB82F0CE4)) ^ v523 & 0xB82F0CE4;
  LODWORD(v539) = ((2 * (v523 ^ 0xF611BADC)) ^ 0x9C7D6C70) & (v523 ^ 0xF611BADC) ^ (2 * (v523 ^ 0xF611BADC)) & 0x4E3EB638;
  LODWORD(v531) = (v539 ^ 0x3C2430) & (4 * v531) ^ v531;
  LODWORD(v539) = ((4 * (v539 ^ 0x42029208)) ^ 0x38FAD8E0) & (v539 ^ 0x42029208) ^ (4 * (v539 ^ 0x42029208)) & 0x4E3EB638;
  LODWORD(v531) = (v539 ^ 0x83A9020) & (16 * v531) ^ v531;
  LODWORD(v539) = ((16 * (v539 ^ 0x46042618)) ^ 0xE3EB6380) & (v539 ^ 0x46042618) ^ (16 * (v539 ^ 0x46042618)) & 0x4E3EB600;
  LODWORD(v531) = v531 ^ 0x4E3EB638 ^ (v539 ^ 0x422A2200) & (v531 << 8);
  v565 = LODWORD(STACK[0xD28]) ^ v523 ^ (2 * ((v531 << 16) & 0x4E3E0000 ^ v531 ^ ((v531 << 16) ^ 0x36380000) & (((v539 ^ 0xC149438) << 8) & 0x4E3E0000 ^ 0x40080000 ^ (((v539 ^ 0xC149438) << 8) ^ 0x3EB60000) & (v539 ^ 0xC149438)))) ^ 0xBE2EC808 ^ LODWORD(STACK[0x6B0]);
  v566 = STACK[0x8B0];
  v567 = v544;
  v568 = LODWORD(STACK[0x8B0]) ^ v544 ^ LODWORD(STACK[0xBB8]) ^ (v548 & 0xED4B8084 | (v551 ^ 0x12B47F7B) & ~v548) ^ 0x1A903FEB ^ LODWORD(STACK[0xBE0]);
  LODWORD(STACK[0xD28]) = LODWORD(STACK[0xA18]) ^ v556 ^ v440 ^ 0xD8FCB1DD ^ LODWORD(STACK[0xA40]);
  LODWORD(STACK[0xBE0]) = LODWORD(STACK[0xA10]) ^ ((v521 ^ 0x4625DB8E) & ~v526 | v526 & 0xB9DA2471);
  LODWORD(v551) = LODWORD(STACK[0xB98]) + STACK[0x780];
  LODWORD(STACK[0xBB8]) = LODWORD(STACK[0x968]) ^ v533 ^ v440 ^ 0x86929315 ^ LODWORD(STACK[0xA88]);
  LODWORD(v523) = v545 ^ v548 ^ 0x74C9BAC7;
  v569 = LODWORD(STACK[0xDA0]) ^ v523 ^ 0xD8C15C3E ^ LODWORD(STACK[0xA90]);
  LODWORD(STACK[0xDA0]) = LODWORD(STACK[0x970]) ^ v551 ^ LODWORD(STACK[0xA90]) ^ 0x7AB8A8F2 ^ LODWORD(STACK[0xA60]);
  LODWORD(STACK[0xBB0]) = v544 ^ LODWORD(STACK[0x990]) ^ v523;
  v570 = v560 - v564 + v563;
  LODWORD(STACK[0xD18]) = (v570 - 1118778633) ^ (((v570 - 1118778633) ^ 0x50517C7) - 412823050) ^ (((v570 - 1118778633) ^ 0xA3EBA89B) + 1099591338) ^ (((v570 - 1118778633) ^ 0x40F786E) - 428949923) ^ (((v570 - 1118778633) ^ 0xBF7FFEFF) + 1562261710) ^ 0xF22A2B31;
  v571 = LODWORD(STACK[0x7B0]) - (STACK[0xDF0] & 0xAF0F5A70);
  v572 = STACK[0x840];
  v573 = STACK[0xC24];
  if (v570)
  {
    v574 = STACK[0x840];
  }

  else
  {
    v574 = STACK[0xC24];
  }

  LODWORD(STACK[0xB98]) = v574;
  v575 = STACK[0xA78];
  if (v570)
  {
    v576 = v573;
  }

  else
  {
    v576 = STACK[0xA78];
  }

  LODWORD(STACK[0xDF0]) = v576;
  v577 = STACK[0xA68];
  if ((v570 & 1) == 0)
  {
    v575 = STACK[0xA68];
  }

  LODWORD(STACK[0xA98]) = v575;
  if (v570)
  {
    v578 = v577;
  }

  else
  {
    v578 = v572;
  }

  LODWORD(STACK[0xA90]) = v578;
  v579 = STACK[0xA58];
  v580 = STACK[0xDC0];
  if (v570)
  {
    v581 = STACK[0xA58];
  }

  else
  {
    v581 = STACK[0xDC0];
  }

  LODWORD(STACK[0xC24]) = v581;
  v582 = STACK[0xDD8];
  if ((v570 & 1) == 0)
  {
    v580 = STACK[0xDD8];
  }

  LODWORD(STACK[0xDC0]) = v580;
  v583 = STACK[0xE10];
  if (v570)
  {
    v584 = v582;
  }

  else
  {
    v584 = STACK[0xE10];
  }

  LODWORD(STACK[0xA78]) = v584;
  if (v570)
  {
    v579 = v583;
  }

  LODWORD(STACK[0xA88]) = v579;
  v585 = STACK[0xA50];
  v586 = STACK[0xA08];
  if (v570)
  {
    v587 = STACK[0xA08];
  }

  else
  {
    v587 = STACK[0xA50];
  }

  LODWORD(STACK[0xB90]) = v587;
  v588 = STACK[0xDB8];
  if ((v570 & 1) == 0)
  {
    v585 = STACK[0xDB8];
  }

  LODWORD(STACK[0xAB8]) = v585;
  v589 = STACK[0xC18];
  if ((v570 & 1) == 0)
  {
    v588 = STACK[0xC18];
  }

  LODWORD(STACK[0xA60]) = v588;
  if (v570)
  {
    v590 = v589;
  }

  else
  {
    v590 = v586;
  }

  v591 = STACK[0xAE0];
  v592 = STACK[0x960];
  if (v570)
  {
    v593 = STACK[0x960];
  }

  else
  {
    v593 = STACK[0xAE0];
  }

  LODWORD(STACK[0xA58]) = v593;
  v594 = STACK[0x958];
  if (v570)
  {
    v592 = STACK[0x958];
  }

  LODWORD(STACK[0xC18]) = v592;
  v595 = STACK[0xBF0];
  if ((v570 & 1) == 0)
  {
    v591 = STACK[0xBF0];
  }

  LODWORD(STACK[0xAE0]) = v591;
  if (v570)
  {
    v596 = v595;
  }

  else
  {
    v596 = v594;
  }

  v597 = LODWORD(STACK[0x7A0]) ^ 0xE0CA4250;
  v598 = STACK[0x950];
  if (v570)
  {
    v599 = LODWORD(STACK[0x7A0]) ^ 0xE0CA4250;
  }

  else
  {
    v599 = STACK[0x950];
  }

  LODWORD(STACK[0xDD8]) = v599;
  v600 = STACK[0xAD0];
  if (v570)
  {
    v601 = STACK[0xAD0];
  }

  else
  {
    v601 = v597;
  }

  v602 = STACK[0x848];
  if (v570)
  {
    v600 = STACK[0x848];
  }

  LODWORD(STACK[0xAD0]) = v600;
  if (v570)
  {
    v603 = v598;
  }

  else
  {
    v603 = v602;
  }

  v604 = STACK[0xC40];
  if (v570)
  {
    v605 = STACK[0xC40];
  }

  else
  {
    v605 = v561;
  }

  v606 = STACK[0xB18];
  if (v570)
  {
    v604 = STACK[0xB18];
  }

  LODWORD(STACK[0xE10]) = v604;
  v607 = STACK[0xE70];
  if (v570)
  {
    v608 = STACK[0xE70];
  }

  else
  {
    v608 = v606;
  }

  if (v570)
  {
    v607 = v561;
  }

  LODWORD(STACK[0xE70]) = v607;
  v609 = STACK[0xE00];
  if (v570)
  {
    v610 = v562;
  }

  else
  {
    v610 = STACK[0xE00];
  }

  v611 = STACK[0xD20];
  if (v570)
  {
    v612 = STACK[0xD20];
  }

  else
  {
    v612 = v562;
  }

  LODWORD(STACK[0xC40]) = v612;
  if (v570)
  {
    v613 = STACK[0xBE8];
  }

  else
  {
    v613 = v611;
  }

  if (v570)
  {
    v614 = v609;
  }

  else
  {
    v614 = STACK[0xBE8];
  }

  if (v570)
  {
    v615 = STACK[0xAC0];
  }

  else
  {
    v615 = STACK[0xE28];
  }

  if (v570)
  {
    v616 = STACK[0x7B8];
  }

  else
  {
    v616 = STACK[0xAC0];
  }

  if (v570)
  {
    v617 = v560;
  }

  else
  {
    v617 = STACK[0x7B8];
  }

  if (v570)
  {
    v618 = STACK[0xE28];
  }

  else
  {
    v618 = v560;
  }

  LODWORD(STACK[0x7B8]) = v563 + v560 - v564;
  if (v570)
  {
    v619 = v563;
  }

  else
  {
    v619 = STACK[0xE18];
  }

  if (v570)
  {
    v620 = v564;
  }

  else
  {
    v620 = v563;
  }

  if (v570)
  {
    v621 = STACK[0xE18];
  }

  else
  {
    v621 = v565;
  }

  if ((v570 & 1) == 0)
  {
    v565 = v564;
  }

  v622 = LODWORD(STACK[0x698]) ^ 0xC0734785;
  v623 = LODWORD(STACK[0xBE0]) ^ 0xC2467677 ^ v622;
  v624 = v567 ^ ((STACK[0xD30] & STACK[0xA00]) >> STACK[0xDE8]) ^ LODWORD(STACK[0xE20]) ^ v566 ^ (v571 + 1468509496) ^ v622 ^ 0x7C11E138 ^ LODWORD(STACK[0xBD0]);
  if (v570)
  {
    v625 = v568;
  }

  else
  {
    v625 = v569;
  }

  if (v570)
  {
    v626 = STACK[0xD28];
  }

  else
  {
    v626 = v568;
  }

  if (v570)
  {
    v627 = v569;
  }

  else
  {
    v627 = LODWORD(STACK[0xBE0]) ^ 0xC2467677 ^ v622;
  }

  if (v570)
  {
    v628 = LODWORD(STACK[0xBB0]) ^ 0xE04D6842 ^ LODWORD(STACK[0xBD0]);
  }

  else
  {
    v623 = STACK[0xD28];
    v628 = STACK[0xBB8];
  }

  if (v570)
  {
    v629 = v624;
  }

  else
  {
    v629 = LODWORD(STACK[0xBB0]) ^ 0xE04D6842 ^ LODWORD(STACK[0xBD0]);
  }

  v630 = STACK[0xDA0];
  if (v570)
  {
    v631 = STACK[0xDA0];
  }

  else
  {
    v631 = v624;
  }

  if (v570)
  {
    v630 = STACK[0xBB8];
  }

  v632 = v570 - 1615687382;
  v633 = STACK[0xB98];
  v634 = STACK[0xA98];
  if ((v632 & 2) != 0)
  {
    v635 = STACK[0xA98];
  }

  else
  {
    v635 = STACK[0xB98];
  }

  LODWORD(STACK[0xBB8]) = v635;
  if ((v632 & 2) != 0)
  {
    v636 = v633;
  }

  else
  {
    v636 = v634;
  }

  LODWORD(STACK[0xA68]) = v636;
  v637 = STACK[0xDF0];
  v638 = STACK[0xA90];
  if ((v632 & 2) != 0)
  {
    v639 = STACK[0xDF0];
  }

  else
  {
    v639 = STACK[0xA90];
  }

  LODWORD(STACK[0x990]) = v639;
  if ((v632 & 2) != 0)
  {
    v640 = v638;
  }

  else
  {
    v640 = v637;
  }

  LODWORD(STACK[0xDB8]) = v640;
  v641 = STACK[0xC24];
  v642 = STACK[0xA78];
  if ((v632 & 2) != 0)
  {
    v643 = STACK[0xC24];
  }

  else
  {
    v643 = STACK[0xA78];
  }

  LODWORD(STACK[0x970]) = v643;
  if ((v632 & 2) != 0)
  {
    v644 = v642;
  }

  else
  {
    v644 = v641;
  }

  LODWORD(STACK[0xB18]) = v644;
  v645 = STACK[0xDC0];
  v646 = STACK[0xA88];
  if ((v632 & 2) != 0)
  {
    v647 = STACK[0xA88];
  }

  else
  {
    v647 = STACK[0xDC0];
  }

  LODWORD(STACK[0xA30]) = v647;
  if ((v632 & 2) != 0)
  {
    v648 = v645;
  }

  else
  {
    v648 = v646;
  }

  LODWORD(STACK[0xD20]) = v648;
  v649 = STACK[0xB90];
  v650 = STACK[0xA60];
  if ((v632 & 2) != 0)
  {
    v651 = STACK[0xA60];
  }

  else
  {
    v651 = STACK[0xB90];
  }

  LODWORD(STACK[0xBE8]) = v651;
  if ((v632 & 2) != 0)
  {
    v652 = v649;
  }

  else
  {
    v652 = v650;
  }

  v653 = STACK[0xAB8];
  if ((v632 & 2) != 0)
  {
    v654 = v590;
  }

  else
  {
    v654 = STACK[0xAB8];
  }

  LODWORD(STACK[0xB98]) = v654;
  if ((v632 & 2) != 0)
  {
    v590 = v653;
  }

  LODWORD(STACK[0xD28]) = v590;
  v655 = STACK[0xA58];
  if ((v632 & 2) != 0)
  {
    v656 = v596;
  }

  else
  {
    v656 = STACK[0xA58];
  }

  LODWORD(STACK[0xCA0]) = v656;
  if ((v632 & 2) != 0)
  {
    v596 = v655;
  }

  LODWORD(STACK[0xBE0]) = v596;
  v657 = STACK[0xC18];
  v658 = STACK[0xAE0];
  if ((v632 & 2) != 0)
  {
    v659 = STACK[0xC18];
  }

  else
  {
    v659 = STACK[0xAE0];
  }

  LODWORD(STACK[0xBB0]) = v659;
  if ((v632 & 2) != 0)
  {
    v660 = v658;
  }

  else
  {
    v660 = v657;
  }

  LODWORD(STACK[0xC24]) = v660;
  if ((v632 & 2) != 0)
  {
    v661 = v601;
  }

  else
  {
    v661 = v603;
  }

  LODWORD(STACK[0xBF0]) = v661;
  if ((v632 & 2) == 0)
  {
    v603 = v601;
  }

  LODWORD(STACK[0xC18]) = v603;
  v662 = STACK[0xDD8];
  v663 = STACK[0xAD0];
  if ((v632 & 2) != 0)
  {
    v664 = STACK[0xDD8];
  }

  else
  {
    v664 = STACK[0xAD0];
  }

  LODWORD(STACK[0xAB8]) = v664;
  if ((v632 & 2) != 0)
  {
    v665 = v663;
  }

  else
  {
    v665 = v662;
  }

  LODWORD(STACK[0xAE0]) = v665;
  if ((v632 & 2) != 0)
  {
    v666 = v605;
  }

  else
  {
    v666 = v608;
  }

  LODWORD(STACK[0xA60]) = v666;
  if ((v632 & 2) == 0)
  {
    v608 = v605;
  }

  LODWORD(STACK[0xDC0]) = v608;
  if ((v632 & 2) != 0)
  {
    v667 = v618;
  }

  else
  {
    v667 = v616;
  }

  LODWORD(STACK[0xB90]) = v667;
  if ((v632 & 2) != 0)
  {
    v618 = v616;
  }

  LODWORD(STACK[0xA58]) = v618;
  if ((v632 & 2) != 0)
  {
    v668 = v617;
  }

  else
  {
    v668 = v615;
  }

  LODWORD(STACK[0xA20]) = v668;
  if ((v632 & 2) != 0)
  {
    v669 = v615;
  }

  else
  {
    v669 = v617;
  }

  if ((v632 & 2) != 0)
  {
    v670 = v610;
  }

  else
  {
    v670 = v613;
  }

  if ((v632 & 2) != 0)
  {
    v671 = v613;
  }

  else
  {
    v671 = v610;
  }

  LODWORD(STACK[0xA40]) = v671;
  v672 = STACK[0xC40];
  if ((v632 & 2) != 0)
  {
    v673 = v614;
  }

  else
  {
    v673 = STACK[0xC40];
  }

  LODWORD(STACK[0xAD0]) = v673;
  if ((v632 & 2) != 0)
  {
    v674 = v672;
  }

  else
  {
    v674 = v614;
  }

  LODWORD(STACK[0x968]) = v674;
  if ((v632 & 2) != 0)
  {
    v675 = v621;
  }

  else
  {
    v675 = v620;
  }

  LODWORD(STACK[0xA10]) = v675;
  if ((v632 & 2) != 0)
  {
    v676 = v620;
  }

  else
  {
    v676 = v621;
  }

  if ((v632 & 2) != 0)
  {
    v677 = v565;
  }

  else
  {
    v677 = v619;
  }

  LODWORD(STACK[0xA90]) = v677;
  if ((v632 & 2) != 0)
  {
    v678 = v619;
  }

  else
  {
    v678 = v565;
  }

  LODWORD(STACK[0x960]) = v678;
  v679 = STACK[0xE10];
  v680 = STACK[0xE70];
  if ((v632 & 2) != 0)
  {
    v681 = STACK[0xE70];
  }

  else
  {
    v681 = STACK[0xE10];
  }

  LODWORD(STACK[0xA18]) = v681;
  if ((v632 & 2) == 0)
  {
    v679 = v680;
  }

  LODWORD(STACK[0xA50]) = v679;
  if ((v632 & 2) != 0)
  {
    v682 = v623;
  }

  else
  {
    v682 = v625;
  }

  LODWORD(STACK[0x988]) = v682;
  if ((v632 & 2) == 0)
  {
    v625 = v623;
  }

  LODWORD(STACK[0x950]) = v625;
  if ((v632 & 2) != 0)
  {
    v683 = v627;
  }

  else
  {
    v683 = v626;
  }

  if ((v632 & 2) != 0)
  {
    v684 = v626;
  }

  else
  {
    v684 = v627;
  }

  LODWORD(STACK[0xA00]) = v684;
  if ((v632 & 2) != 0)
  {
    v685 = v628;
  }

  else
  {
    v685 = v631;
  }

  LODWORD(STACK[0xA88]) = v685;
  if ((v632 & 2) != 0)
  {
    v686 = v631;
  }

  else
  {
    v686 = v628;
  }

  LODWORD(STACK[0xA98]) = v686;
  if ((v632 & 2) != 0)
  {
    v687 = v630;
  }

  else
  {
    v687 = v629;
  }

  LODWORD(STACK[0xDA0]) = v687;
  if ((v632 & 2) != 0)
  {
    v688 = v629;
  }

  else
  {
    v688 = v630;
  }

  LODWORD(STACK[0xDD8]) = v688;
  v689 = STACK[0xBC0];
  v690 = STACK[0xBA8];
  v691 = STACK[0xC30];
  v692 = STACK[0xC70];
  v693 = STACK[0xAE8];
  v694 = STACK[0xAC8];
  v695 = STACK[0xCB0];
  v696 = STACK[0xAF8];
  v697 = STACK[0xAA8];
  v698 = STACK[0xD50];
  v699 = STACK[0xC98];
  v700 = STACK[0xAA4];
  v701 = STACK[0xC80];
  v702 = STACK[0xB20];
  v703 = LODWORD(STACK[0xCD8]) ^ LODWORD(STACK[0xC4C]) ^ LODWORD(STACK[0xBC0]) ^ LODWORD(STACK[0xC38]) ^ LODWORD(STACK[0xBA8]) ^ LODWORD(STACK[0xB88]) ^ LODWORD(STACK[0xC68]) ^ LODWORD(STACK[0xC58]) ^ LODWORD(STACK[0xC50]) ^ LODWORD(STACK[0xCE0]) ^ LODWORD(STACK[0xC30]) ^ LODWORD(STACK[0xD08]) ^ LODWORD(STACK[0xCB8]) ^ LODWORD(STACK[0xCF8]) ^ LODWORD(STACK[0xCE8]) ^ LODWORD(STACK[0xB08]) ^ LODWORD(STACK[0xC70]) ^ LODWORD(STACK[0xAE8]) ^ LODWORD(STACK[0xAC8]) ^ LODWORD(STACK[0xCB0]) ^ LODWORD(STACK[0xAF8]) ^ LODWORD(STACK[0xDE0]) ^ LODWORD(STACK[0xAA8]) ^ LODWORD(STACK[0xCA8]) ^ LODWORD(STACK[0xD48]) ^ LODWORD(STACK[0xD50]) ^ LODWORD(STACK[0xDD0]) ^ LODWORD(STACK[0xD58]) ^ LODWORD(STACK[0xAD8]) ^ LODWORD(STACK[0xC88]) ^ LODWORD(STACK[0xD40]) ^ LODWORD(STACK[0xC98]) ^ LODWORD(STACK[0xDC8]) ^ LODWORD(STACK[0xAA4]) ^ LODWORD(STACK[0xD10]) ^ LODWORD(STACK[0xC80]) ^ LODWORD(STACK[0xB20]);
  v704 = STACK[0xB28];
  v705 = LODWORD(STACK[0xB28]) - ((2 * LODWORD(STACK[0xB28])) & 0xBF287CBA) + 1603550813;
  v706 = STACK[0xB00];
  v707 = LODWORD(STACK[0xB00]) ^ 0xB75FDB43;
  v708 = LODWORD(STACK[0xCD0]) ^ 0x93A35232;
  LODWORD(STACK[0xA78]) = v707;
  LODWORD(STACK[0x848]) = v708;
  v709 = v707 ^ v708 ^ v705;
  v710 = STACK[0xCC0];
  v711 = STACK[0xCC8];
  v712 = v703 ^ v709 ^ LODWORD(STACK[0xCC0]) ^ LODWORD(STACK[0xC60]) ^ LODWORD(STACK[0xC90]) ^ LODWORD(STACK[0xCC8]);
  LODWORD(STACK[0x790]) = v712 ^ 0xC0734785;
  LODWORD(STACK[0x798]) = (v712 ^ 0xC0734785) & 0x66A521F ^ v712 & 0x18;
  v713 = (v706 ^ 0xDBC82E40) + 1;
  v714 = v693 + LODWORD(STACK[0x978]);
  LODWORD(STACK[0x958]) = v676;
  v715 = v714 + v676;
  LODWORD(STACK[0x7A0]) = v714 + v676;
  LODWORD(STACK[0xAC0]) = v702 - 417718223;
  v716 = STACK[0x990];
  v717 = v702 - 417718223 - v681 - LODWORD(STACK[0xDB8]) - LODWORD(STACK[0x990]) - v715 - v670;
  v718 = STACK[0x968];
  LODWORD(STACK[0xE28]) = v713;
  LODWORD(STACK[0xC40]) = v632;
  v719 = v713 + v692 + v632 + LODWORD(STACK[0xCA0]);
  v720 = STACK[0xA60];
  LODWORD(STACK[0xE20]) = 2 * v652;
  LODWORD(STACK[0xA08]) = v652;
  v721 = v691 ^ (v652 - ((2 * v652) & 0xC0FAD7B8) - 528651300) ^ 0x612E76F8 ^ (v719 - v720 + ((v717 - v718) ^ v704));
  v722 = v699 + v697 - LODWORD(STACK[0x970]);
  LODWORD(STACK[0x828]) = v669;
  LODWORD(STACK[0x840]) = v683;
  v723 = v722 + v669 - v683;
  LODWORD(STACK[0xE18]) = v723;
  LODWORD(STACK[0xE10]) = 2 * v710;
  v724 = (((v710 - ((2 * v710) & 0xF9B2CA6C) - 52861642) ^ LODWORD(STACK[0xBE8]) ^ 0xFCD96536 ^ (v721 + v723)) - LODWORD(STACK[0xBF0])) ^ v695;
  LODWORD(STACK[0xE00]) = v700 - 2038309994;
  v725 = LODWORD(STACK[0xA20]) + v700 - 2038309994 + (((v689 ^ 0x5AA84BE9) - 1520978921) ^ ((v689 ^ 0x9EF9241A) + 1627839462) ^ ((v689 ^ 0x42D0B465) - 1120973925));
  v726 = STACK[0xA98];
  v727 = (((v725 - LODWORD(STACK[0xA98]) + v724) ^ LODWORD(STACK[0xB98])) + LODWORD(STACK[0xDD8])) ^ LODWORD(STACK[0xBE0]);
  v728 = LODWORD(STACK[0xA50]) + v694;
  LODWORD(STACK[0xDF0]) = v690 ^ 0x8681DB96;
  v729 = ((LODWORD(STACK[0xCE0]) ^ 0xABAE7117) + 1414631145) ^ ((LODWORD(STACK[0xCE0]) ^ 0xC4DBF57) - 206421847) ^ ((LODWORD(STACK[0xCE0]) ^ 0x26B0D364) - 649122660);
  v730 = (LODWORD(STACK[0xAB8]) + (v690 ^ 0x8681DB96) - v728 + LODWORD(STACK[0xDA0]) + v727) ^ v701;
  v731 = v696 - LODWORD(STACK[0x960]);
  LODWORD(STACK[0x778]) = v731;
  v732 = (v730 + v731) ^ LODWORD(STACK[0xAD0]);
  v733 = LODWORD(STACK[0xC38]) ^ 0x8681DB96;
  LODWORD(STACK[0x774]) = v733;
  v734 = (LODWORD(STACK[0xBB0]) - v729 + 2125259484 + ((((v732 - v733) ^ v698) + LODWORD(STACK[0xDE0])) ^ LODWORD(STACK[0xBB8]))) ^ v711;
  v735 = LODWORD(STACK[0xC58]) ^ 0x81531D24;
  LODWORD(STACK[0x7B0]) = v735;
  v736 = (v734 + v735 - ((2 * (v734 + v735)) & 0x1FCFF288) + 266860868) ^ LODWORD(STACK[0xD08]);
  v737 = LODWORD(STACK[0xD40]) + LODWORD(STACK[0xB08]) + LODWORD(STACK[0xA10]) + LODWORD(STACK[0xA88]);
  LODWORD(STACK[0x7A8]) = v737;
  v738 = (v736 - v737) ^ LODWORD(STACK[0xA30]);
  v739 = (LODWORD(STACK[0xCB8]) ^ 0xF01806BB) + 1;
  v740 = LODWORD(STACK[0xB88]) ^ 0x2437D1BF;
  v741 = STACK[0xAD8];
  LODWORD(STACK[0x768]) = v740;
  LODWORD(STACK[0x780]) = v739;
  v742 = LODWORD(STACK[0xDC8]) ^ (LODWORD(STACK[0xA40]) - ((2 * LODWORD(STACK[0xA40])) & 0x67B99512) - 1277375863) ^ LODWORD(STACK[0xD28]) ^ 0xB3DCCA89 ^ (((v740 - v741 + v739 + LODWORD(STACK[0xDC0]) + v738) ^ LODWORD(STACK[0xB18])) - LODWORD(STACK[0xAE0]));
  v743 = ((LODWORD(STACK[0xCF8]) ^ 0x550250EB) - 1426215147) ^ ((LODWORD(STACK[0xCF8]) ^ 0x9743F58B) + 1757153909) ^ ((LODWORD(STACK[0xCF8]) ^ 0xCDA65C24) + 844735452);
  v744 = LODWORD(STACK[0xD48]) + (LODWORD(STACK[0xC50]) ^ 0x81531D24) + (LODWORD(STACK[0xC68]) ^ 0x2437D1BF) - LODWORD(STACK[0xC90]) + 266860868;
  LODWORD(STACK[0x760]) = v744;
  v745 = STACK[0xCD0];
  v746 = (LODWORD(STACK[0xA90]) + v744 + v743 + v742) ^ LODWORD(STACK[0xD58]);
  v747 = LODWORD(STACK[0xA58]) - LODWORD(STACK[0xCA8]) - LODWORD(STACK[0x988]);
  LODWORD(STACK[0x748]) = v747;
  v748 = ((((LODWORD(STACK[0xC18]) + (((v745 ^ 0x11D7FA5D) - 299367005) ^ ((v745 ^ 0x55883968) - 1434990952) ^ ((v745 ^ 0x4BB83A71) - 1270364785)) + 266860868 + ((v746 + v747) ^ LODWORD(STACK[0xDD0]))) ^ LODWORD(STACK[0xD10])) + LODWORD(STACK[0xC60])) ^ LODWORD(STACK[0xB90])) + LODWORD(STACK[0xC88]);
  LODWORD(STACK[0xE70]) = v712;
  v749 = v712 ^ LODWORD(STACK[0xC24]) ^ 0x722002EE ^ v748;
  v750 = LODWORD(STACK[0x7B8]) - 1615687382;
  LODWORD(STACK[0xBD0]) = v750;
  v751 = LODWORD(STACK[0xA68]) + v750;
  LODWORD(STACK[0x758]) = v751;
  v752 = (v749 + v751) ^ LODWORD(STACK[0xD20]);
  v753 = LODWORD(STACK[0xC4C]) ^ 0x8681DB96;
  LODWORD(STACK[0x750]) = v753;
  v754 = LODWORD(STACK[0xA00]) + LODWORD(STACK[0x950]);
  LODWORD(STACK[0x5A0]) = LODWORD(STACK[0xCE8]) + (((LODWORD(STACK[0xCD8]) ^ 0x4AA1C9E7) - 1252116967) ^ ((LODWORD(STACK[0xCD8]) ^ 0x2361D99D) - 593615261) ^ ((LODWORD(STACK[0xCD8]) ^ 0x4DF7C1C5) - 1308082629)) - v754 + 607637951 + ((v752 - v753 - ((2 * (v752 - v753)) & 0xDF6825F8) - 273411332) ^ LODWORD(STACK[0xD18]));
  LODWORD(STACK[0x7B8]) = LODWORD(STACK[0x790]) - 2 * LODWORD(STACK[0x798]) - 2039852537;
  LODWORD(STACK[0x798]) = -LODWORD(STACK[0x7A0]);
  LODWORD(STACK[0x730]) = -v728;
  LODWORD(STACK[0x740]) = -v754;
  v755 = *(STACK[0xED8] + 8 * LODWORD(STACK[0xBA0]));
  LODWORD(STACK[0x738]) = -v741;
  LODWORD(STACK[0x790]) = -v716;
  LODWORD(STACK[0x718]) = -LODWORD(STACK[0xDB8]);
  LODWORD(STACK[0xBA0]) = -v720;
  LODWORD(STACK[0x850]) = v670;
  LODWORD(STACK[0x710]) = -v670;
  LODWORD(STACK[0x708]) = -LODWORD(STACK[0xA18]);
  LODWORD(STACK[0x7A0]) = -v718;
  LODWORD(STACK[0x720]) = -v726;
  return v755(1792892559, LODWORD(STACK[0x860]));
}

int *sub_1009C4530(int *result)
{
  if ((v1 ^ 0x1FC4FADD) + ((2 * v1) & 0x3F88B098) == 533002973)
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

uint64_t sub_1009C47A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v19 = v14 + *v11;
  v20 = __ROR8__((v19 - 0x77618121D9EA8995) & 0xFFFFFFFFFFFFFFF8, 8);
  v21 = ((2 * v20 + 0x2D22D5F321CF2B02) & 0x3833AC852BF37AD8) - v20 + 0xD54BEC3D91EAD12;
  v22 = __ROR8__(v21 ^ 0xE4C4305E962176E1, 8);
  v21 ^= 0x504F6792111DDAEFuLL;
  v23 = __ROR8__((v22 + v21) ^ 0x14BA074A2F986FE5, 8);
  v24 = (v22 + v21) ^ 0x14BA074A2F986FE5 ^ __ROR8__(v21, 61);
  v25 = (v23 + v24) ^ a2;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (((v27 + v26) | 0x9CA55D84F65A99B2) - ((v27 + v26) | v17) + v17) ^ 0x21D8706D375038D8;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x82B08017BF43C069;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = *(a1 + 8 * v15);
  v34 = __ROR8__((((v32 + v31) | 0x2DBC9B9342966C8DLL) - ((v32 + v31) | v9) + v9) ^ 0x87214129A072B8F1, 8);
  v35 = (((v32 + v31) | 0x2DBC9B9342966C8DLL) - ((v32 + v31) | v9) + v9) ^ 0x87214129A072B8F1 ^ __ROR8__(v31, 61);
  v36 = (((v34 + v35) | 0xABFB04E607E229F0) - ((v34 + v35) | v8) + v8) ^ 0x244925A5F9394543;
  *(v19 - 0x77618121D9EA8995) = (((__ROR8__(v36, 8) + (v36 ^ __ROR8__(v35, 61))) ^ 0x9B1C7427651E0F18) >> (8 * ((v19 + 107) & 7))) ^ HIBYTE(v13) ^ 0x91;
  v37 = __ROR8__((v19 - 0x77618121D9EA8994) & 0xFFFFFFFFFFFFFFF8, 8);
  v38 = ((0x296E95066F186A7ELL - v37) & 0x51F1AF3817ABCAD4) + v37 - 0x296E95066F186A7FLL - ((v37 - 0x296E95066F186A7FLL) & 0x53F1AF3817ABCAD4);
  v39 = __ROR8__(v38 ^ 0x54D3B6DBEB8CFEA6, 8);
  v38 ^= 0xE058E1176CB052A8;
  v40 = (v39 + v38) ^ 0x14BA074A2F986FE5;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = __ROR8__(v40, 8);
  v43 = (v42 + v41 - ((2 * (v42 + v41)) & 0x75A6D19F0C6867C0) + 0x3AD368CF863433E0) ^ 0x16E4E08C7F905D78;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = __ROR8__(v43, 8);
  v46 = (((2 * (v45 + v44)) | 0xCC64C34E16E9732CLL) - (v45 + v44) + 0x19CD9E58F48B466ALL) ^ 0x5B4F4C4ECA7E18FCLL;
  v47 = v46 ^ __ROR8__(v44, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ 0x82B08017BF43C069;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = __ROR8__(v48, 8);
  v51 = (((2 * (v50 + v49)) & 0x19C65FC09C0D4C32) - (v50 + v49) - 0xCE32FE04E06A61ALL) ^ 0x59810AA5531D8D9ALL;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (((v53 + v52) | 0x78989669C029B6EBLL) - ((v53 + v52) | a3) + a3) ^ 0xF72AB72A3EF2DA58;
  v55 = __ROR8__((v19 - 0x77618121D9EA8993) & 0xFFFFFFFFFFFFFFF8, 8);
  *(v19 - 0x77618121D9EA8994) = (((__ROR8__(v54, 8) + (v54 ^ __ROR8__(v52, 61))) ^ 0x9B1C7427651E0F18) >> (8 * ((v19 + 108) & 7))) ^ BYTE2(v13) ^ 0xDE;
  v56 = ((0x296E95066F186A7ELL - v55) & 0x815F3681021F858BLL) + v55 - 0x296E95066F186A7FLL - ((v55 - 0x296E95066F186A7FLL) & 0x835F3681021F858BLL);
  v57 = v56 ^ 0x847D2F62FE38B1F9;
  v56 ^= 0x30F678AE79041DF7uLL;
  v58 = __ROR8__(v57, 8);
  v59 = (((v58 + v56) | 0x97B76A051CE23393) - ((v58 + v56) | v7) + v7) ^ 0x830D6D4F337A5C76;
  v60 = v59 ^ __ROR8__(v56, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ a2;
  v62 = __ROR8__(v61, 8);
  v63 = v61 ^ __ROR8__(v60, 61);
  v64 = (((2 * (v62 + v63)) & 0x4A116F4A475E6212) - (v62 + v63) - 0x2508B7A523AF310ALL) ^ 0x678A65B31D5A6F9CLL;
  v65 = v64 ^ __ROR8__(v63, 61);
  v66 = __ROR8__(v64, 8);
  v67 = (((2 * (v66 + v65)) & 0x1C31660AE6BB1B66) - (v66 + v65) + 0x71E74CFA8CA2724CLL) ^ 0xF357CCED33E1B225;
  v68 = v67 ^ __ROR8__(v65, 61);
  v69 = __ROR8__(v67, 8);
  v70 = (((v69 + v68) & 0xE46CE57B6C42BADDLL ^ 0xE444C40A4C42304CLL) + ((v69 + v68) & 0x1B931A8493BD4522 ^ 0x1101080400B80523) - 1) ^ 0x5FD816B4AE1EE112;
  v71 = v70 ^ __ROR8__(v68, 61);
  v72 = __ROR8__(v70, 8);
  *(v19 - 0x77618121D9EA8993) = (((__ROR8__((((v72 + v71) | 0x66DE1BC79C4C0F5ELL) - ((v72 + v71) | v12) + v12) ^ 0xE96C3A84629763EDLL, 8) + ((((v72 + v71) | 0x66DE1BC79C4C0F5ELL) - ((v72 + v71) | v12) + v12) ^ 0xE96C3A84629763EDLL ^ __ROR8__(v71, 61))) ^ 0x9B1C7427651E0F18) >> (8 * ((v19 + 109) & 7))) ^ BYTE1(v13) ^ 0xF4;
  v19 -= 0x77618121D9EA8992;
  v73 = __ROR8__(v19 & 0xFFFFFFFFFFFFFFF8, 8);
  v74 = ((2 * (v73 - 0x296E95066F186A7FLL)) | 0xC93FF201A6CF04B4) - (v73 - 0x296E95066F186A7FLL) + 0x1B6006FF2C987DA6;
  v75 = v74 ^ 0xE3BDE0E32F40B628;
  v76 = v74 ^ v10;
  v77 = (__ROR8__(v75, 8) + v76) ^ 0x14BA074A2F986FE5;
  v78 = v77 ^ __ROR8__(v76, 61);
  v79 = (__ROR8__(v77, 8) + v78) ^ a2;
  v80 = v79 ^ __ROR8__(v78, 61);
  v81 = __ROR8__(v79, 8);
  v82 = (((v81 + v80) | a5) - ((v81 + v80) | v6) + v6) ^ v5;
  v83 = v82 ^ __ROR8__(v80, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ 0x82B08017BF43C069;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = __ROR8__(v84, 8);
  v87 = ((v16 | (2 * (v86 + v85))) - (v86 + v85) + v18) ^ a4;
  v88 = v87 ^ __ROR8__(v85, 61);
  v89 = (__ROR8__(v87, 8) + v88) ^ 0x8FB22143FEDB6CB3;
  *v19 = v13 ^ (((__ROR8__(v89, 8) + (v89 ^ __ROR8__(v88, 61))) ^ 0x9B1C7427651E0F18) >> (8 * (v19 & 7u))) ^ 0x70;
  return v33();
}

uint64_t sub_1009C513C(int a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, int a6, int8x16_t a7, int8x8_t a8)
{
  v15.val[0].i64[0] = (v12 + a3 - 1) & 0xF;
  v15.val[0].i64[1] = (v12 + a3 + 14) & 0xF;
  v15.val[1].i64[0] = (v12 + a3 + 13) & 0xF;
  v15.val[1].i64[1] = (v12 + a3 + 12) & 0xF;
  v15.val[2].i64[0] = (v12 + a3 + 11) & 0xF;
  v15.val[2].i64[1] = (v12 + a3 + 10) & 0xF;
  v15.val[3].i64[0] = (a4 + a3 + v8) & 0xF;
  v15.val[3].i64[1] = (v12 + a3) & 0xF ^ 8;
  *(a5 + a3) = veor_s8(veor_s8(veor_s8(*(v10 + v15.val[0].i64[0] - 7), *(a5 + a3)), veor_s8(*(v11 + v15.val[0].i64[0] - 7), *(v15.val[0].i64[0] + v9 - 5))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v15, a7), a8)));
  return (*(v13 + 8 * (((a2 == a3) * a6) ^ a1)))();
}

uint64_t sub_1009C5200@<X0>(int a1@<W4>, uint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q2>)
{
  a3.n128_u16[0] = -24673;
  a3.n128_u8[2] = -97;
  a3.n128_u8[3] = -97;
  a3.n128_u8[4] = -97;
  a3.n128_u8[5] = -97;
  a3.n128_u8[6] = -97;
  a3.n128_u8[7] = -97;
  a4.n128_u16[0] = -8739;
  a4.n128_u8[2] = -35;
  a4.n128_u8[3] = -35;
  a4.n128_u8[4] = -35;
  a4.n128_u8[5] = -35;
  a4.n128_u8[6] = -35;
  a4.n128_u8[7] = -35;
  return (*(v7 + 8 * a1))(v6 & 7, ((((a1 - 588) | 0x249) - 9143) & v6) - 8, -v4, a2 + -7 - v4, v5 + -7 - v4, (((a1 - 588) | 0x249) + 1527404996) & 0xA4F5ABFD ^ 0xFFFFFFFFFFFFD66ELL, 29, a3, xmmword_100F523B0, a4);
}

uint64_t sub_1009C5274@<X0>(unsigned int a1@<W3>, uint64_t a2@<X6>, _DWORD *a3@<X7>, uint64_t a4@<X8>)
{
  v17 = (v14 + (v4 + v8));
  v18 = *(*v12 + (*a3 & a1));
  v19 = *v17;
  v20 = (a4 + (v5 + v8));
  v21 = ((((v17 ^ v18) & 0x7FFFFFFF) * v9) ^ ((((v17 ^ v18) & 0x7FFFFFFF) * v9) >> 16)) * v10;
  v22 = ((((v20 ^ v18) & 0x7FFFFFFF) * v10) ^ ((((v20 ^ v18) & 0x7FFFFFFF) * v10) >> 16)) * v10;
  *v20 = *(v15 + (v21 >> 24)) ^ v19 ^ *(a2 + (v21 >> 24)) ^ *((v21 >> 24) + v13 + 5) ^ *(v15 + (v22 >> 24)) ^ *(a2 + (v22 >> 24)) ^ *((v22 >> 24) + v13 + 5) ^ v21 ^ v22 ^ (BYTE3(v21) * v16) ^ (BYTE3(v22) * v16);
  v23 = v8 - 611387112 < v6;
  if (v6 < 0xDB8EF917 != (v8 + 1) > 0x247106E8)
  {
    v23 = v6 < 0xDB8EF917;
  }

  return (*(v11 + 8 * ((54330 * v23) ^ v7)))();
}

uint64_t sub_1009C53D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = 0;
  v11 = *(*(STACK[0x340] - 1680276466) + (*(STACK[0x338] - 231415367) & 0x4BA6E21C)) ^ 0x4BA6E21ELL;
  v12 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v11 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v11;
  v13 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v12 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v12;
  v14 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v13 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v13;
  v15 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v14 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v14;
  v16 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v15 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v15;
  v17 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v16 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v16;
  v18 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v17 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v17;
  v19 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v18 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v18;
  STACK[0x668] = 0;
  v20 = 16777619 * ((1269228062 * v19 + 7) ^ (1269228062 * v19)) % 7;
  v21 = 16777619 * ((1269228062 * v19 + 6) ^ (1269228062 * v19)) % 6;
  v22 = 16777619 * ((1269228062 * v19 + 5) ^ (1269228062 * v19)) % 5;
  v23 = 16777619 * ((1269228062 * v19 + 3) ^ (1269228062 * v19)) % 3;
  v24 = *(&STACK[0x668] | v20);
  *(&STACK[0x668] | v20) = STACK[0x66F];
  v25 = *(&STACK[0x668] | v21);
  *(&STACK[0x668] | v21) = STACK[0x66E];
  v26 = *(&STACK[0x668] | v22);
  *(&STACK[0x668] | v22) = STACK[0x66D];
  v27 = STACK[0x668];
  LOBYTE(STACK[0x668]) = STACK[0x66C];
  v28 = *(&STACK[0x668] | v23);
  *(&STACK[0x668] | v23) = STACK[0x66B];
  STACK[0x670] = v6;
  v29 = vdup_n_s32(1269228062 * v19);
  v30.i32[0] = v29.i32[0];
  v30.i32[1] = (1269228062 * v19) | 1;
  LOBYTE(STACK[0x66F]) = v24;
  LOBYTE(STACK[0x66E]) = v25;
  LOBYTE(STACK[0x66D]) = v26;
  LOBYTE(STACK[0x66C]) = v27;
  LOBYTE(STACK[0x66B]) = v28;
  v31 = STACK[0x669];
  LOBYTE(STACK[0x66A]) = STACK[0x668];
  LOWORD(STACK[0x668]) = v31;
  v32 = STACK[0x670];
  v33 = (1269228062 * STACK[0x670]) ^ v19;
  v34 = veor_s8(vmul_s32(v30, v29), v29);
  STACK[0x668] = vmla_s32(v34, STACK[0x668], v8);
  v35 = vdupq_n_s32(v33);
  v36 = xmmword_100BC7620;
  v37 = xmmword_100BC7630;
  v38 = xmmword_100BC7640;
  v39 = xmmword_100BC7650;
  v40.i64[0] = 0x9393939393939393;
  v40.i64[1] = 0x9393939393939393;
  v41.i64[0] = 0x1000000010;
  v41.i64[1] = 0x1000000010;
  do
  {
    v42 = *(v32 + v10);
    v62.val[1] = veorq_s8(vqtbl1q_s8(v42, xmmword_100BC7690), veorq_s8(v35, vmulq_s32(vaddq_s32(v38, v35), vsubq_s32(v38, v35))));
    v62.val[0] = veorq_s8(vqtbl1q_s8(v42, xmmword_100BC76A0), veorq_s8(v35, vmulq_s32(vaddq_s32(v39, v35), vsubq_s32(v39, v35))));
    v62.val[2] = veorq_s8(vqtbl1q_s8(v42, xmmword_100BC7680), veorq_s8(v35, vmulq_s32(vaddq_s32(v37, v35), vsubq_s32(v37, v35))));
    v62.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v42, xmmword_100BC7670), v35), vmulq_s32(vaddq_s32(v36, v35), vsubq_s32(v36, v35)));
    *(v32 + v10) = vmulq_s8(vqtbl4q_s8(v62, xmmword_100BC7660), v40);
    v10 += 16;
    v39 = vaddq_s32(v39, v41);
    v38 = vaddq_s32(v38, v41);
    v37 = vaddq_s32(v37, v41);
    v36 = vaddq_s32(v36, v41);
  }

  while (v10 != 2176);
  v43 = 0;
  v44 = xmmword_100F52AB0;
  v45 = xmmword_100F52AC0;
  v46 = v32 + 2176;
  v47 = vdupq_n_s32(v33);
  v48.i64[0] = 0x800000008;
  v48.i64[1] = 0x800000008;
  do
  {
    v38.i64[0] = *(v46 + v43);
    v61.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v38, xmmword_100BC7690), v47), vmulq_s32(vaddq_s32(v44, v47), vsubq_s32(v44, v47)));
    v61.val[0] = veorq_s8(vqtbl1q_s8(v38, xmmword_100BC76A0), veorq_s8(v47, vmulq_s32(vaddq_s32(v45, v47), vsubq_s32(v45, v47))));
    v38 = vqtbl2q_s8(v61, xmmword_100F52AD0);
    *(v46 + v43) = vmul_s8(*v38.i8, v9);
    v45 = vaddq_s32(v45, v48);
    v44 = vaddq_s32(v44, v48);
    v43 += 8;
  }

  while (v43 != 8);
  v49 = 272;
  do
  {
    v50 = 16777619 * ((v33 + v49) ^ v33) % v49;
    v51 = *(v32 + 8 * v50) ^ *(v32 + 8 * v49);
    *(v32 + 8 * v49) = v51;
    v52 = *(v32 + 8 * v50) ^ v51;
    *(v32 + 8 * v50) = v52;
    *(v32 + 8 * v49) ^= v52;
    v53 = v49-- + 1;
  }

  while (v53 > 2);
  v54 = *(&STACK[0x670] + v20);
  *(&STACK[0x670] + v20) = STACK[0x677];
  LOBYTE(STACK[0x677]) = v54;
  v55 = *(&STACK[0x670] + v21);
  *(&STACK[0x670] + v21) = STACK[0x676];
  LOBYTE(STACK[0x676]) = v55;
  v56 = *(&STACK[0x670] + v22);
  *(&STACK[0x670] + v22) = STACK[0x675];
  LOBYTE(STACK[0x675]) = v56;
  v57 = STACK[0x670];
  LOBYTE(STACK[0x670]) = STACK[0x674];
  LOBYTE(STACK[0x674]) = v57;
  v58 = *(&STACK[0x670] + v23);
  *(&STACK[0x670] + v23) = STACK[0x673];
  LOBYTE(STACK[0x673]) = v58;
  v59 = STACK[0x671];
  LOBYTE(STACK[0x672]) = STACK[0x670];
  LOWORD(STACK[0x670]) = v59;
  STACK[0x670] = vmla_s32(v34, STACK[0x670], v8);
  STACK[0x408] = STACK[0x670] ^ STACK[0x668];
  return (*(v7 + 8 * (a6 ^ 0x54EBu)))();
}

uint64_t sub_1009C5858(__n128 a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v8.n128_u64[0] = (v5 + 13) & 0xF;
  v8.n128_u64[1] = (v5 + 12) & 0xF;
  v9.n128_u64[0] = (v5 + 11) & 0xF;
  v9.n128_u64[1] = (v5 + 10) & 0xF;
  v10.n128_u64[0] = (v5 + 9) & 0xF;
  v10.n128_u64[1] = v6 & 0xF ^ 0xELL;
  v13.val[0].i64[0] = (v5 + 7) & 0xF;
  v13.val[0].i64[1] = (v5 + 6) & 0xF;
  v13.val[1].i64[0] = (v5 + 5) & 0xF;
  v13.val[1].i64[1] = (v5 + 4) & 0xF;
  v13.val[2].i64[0] = (v5 + 3) & 0xF;
  v13.val[2].i64[1] = (v5 + 2) & 0xF;
  v13.val[3].i64[0] = (v5 + 1) & 0xF;
  v13.val[3].i64[1] = v5 & 0xF;
  v11.n128_u64[0] = 0xEFEFEFEFEFEFEFEFLL;
  v11.n128_u64[1] = 0xEFEFEFEFEFEFEFEFLL;
  return (*(*(v7 - 192) + 8 * (a3 ^ 0xFB18)))((v5 + 14) & 0xF, (a3 ^ 0xFB18u) + 14308, v5 - 16, a5, (v6 & 0x10) - 16, -37324, 1014, a1, v8, v9, v10, xmmword_100BC76B0, vqtbl4q_s8(v13, xmmword_100BC76B0), v11);
}

uint64_t sub_1009C594C()
{
  v5 = v0 - 39666 + v3;
  LODWORD(STACK[0x47C]) = v5;
  LOBYTE(STACK[0x5BF]) = v2;
  return (*(v1 + 8 * (((v5 < 6) * (((v4 - 9668) | 0x9080) ^ 0x97CA)) ^ v4)))();
}

uint64_t sub_1009C5AF8(uint64_t a1, __int16 a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v77 = STACK[0x5C8];
  v78 = v70;
  LODWORD(STACK[0x918]) = v70;
  v79 = v77 + v73;
  LODWORD(STACK[0xCE8]) += 3408;
  LODWORD(STACK[0xAA4]) -= 16;
  v80 = (LODWORD(STACK[0x990]) + 24550) | 0x412;
  LODWORD(STACK[0xDA8]) = v80;
  v81 = (((v71 ^ 0x7A057BB7) - 2047179703) ^ ((v71 ^ 0x35423359) - 893530969) ^ ((v71 ^ 0x4F47486A) + v80 - 1330109924)) * v74 + 137470;
  v82 = v81 - (((v81 * a3) >> 32) >> 10) * v76;
  v83 = STACK[0x9C8];
  if (STACK[0x9C8])
  {
    v84 = STACK[0x9B8];
  }

  else
  {
    v84 = STACK[0x9B0];
  }

  if (v83)
  {
    v85 = STACK[0x518];
  }

  else
  {
    v85 = STACK[0x9B8];
  }

  if (v83)
  {
    v86 = STACK[0x9C0];
  }

  else
  {
    v86 = STACK[0x518];
  }

  if (v83)
  {
    v87 = STACK[0x9B0];
  }

  else
  {
    v87 = STACK[0x9C0];
  }

  if (v83)
  {
    v88 = STACK[0x590];
  }

  else
  {
    v88 = STACK[0x598];
  }

  v89 = STACK[0x9D0];
  v90 = STACK[0x594];
  LODWORD(STACK[0xAE0]) = a6;
  v91 = v75;
  if (v83)
  {
    v92 = v90;
  }

  else
  {
    v92 = v89;
  }

  v93 = v79 + LODWORD(STACK[0x5D8]) - 814616171;
  v94 = STACK[0x998] ^ 0xACBEBA3A ^ v93;
  v95 = STACK[0xC30] ^ 0xACBEBA3A ^ v93;
  v96 = STACK[0x9A0] ^ 0xACBEBA3A ^ v93;
  v97 = STACK[0x9A8] ^ 0xACBEBA3A ^ v93;
  v98 = STACK[0x5E4];
  if (STACK[0x5E4])
  {
    v99 = v95;
  }

  else
  {
    v99 = v94;
  }

  if (v98)
  {
    v100 = v96;
  }

  else
  {
    v100 = v95;
  }

  if (v98)
  {
    v101 = v97;
  }

  else
  {
    v101 = v96;
  }

  if (v98)
  {
    v97 = v94;
  }

  if ((v98 & 2) != 0)
  {
    v102 = v101;
  }

  else
  {
    v102 = v99;
  }

  if ((v98 & 2) != 0)
  {
    v101 = v99;
    v103 = v97;
  }

  else
  {
    v103 = v100;
  }

  if ((v98 & 2) != 0)
  {
    v104 = v100;
  }

  else
  {
    v104 = v97;
  }

  v105 = 295 * (((HIBYTE(a2) ^ 0xAA113C9D) - 1026800057) ^ ((HIBYTE(a2) ^ 0xD9670CA3) - 1313180039) ^ ((HIBYTE(a2) ^ 0x737630D5) + 464210447)) + 684307051;
  LODWORD(STACK[0xE10]) = v105 - (((v105 * a3) >> 32) >> 10) * v76;
  v106 = 295 * (((v72 ^ 0xFABB8EE5) - 137402616) ^ ((v72 ^ 0xADE06D9D) - 1600879488) ^ ((v72 ^ 0x575BE363) + 1513032322)) + 2118640076;
  v107 = STACK[0xC08];
  v108 = *(STACK[0xC08] + 4 * v82);
  v109 = ((HIBYTE(v108) ^ 0x96) - 65) ^ ((HIBYTE(v108) ^ 0x60) + 73) ^ ((HIBYTE(v108) ^ 0xF6) - 33);
  HIDWORD(v110) = *(STACK[0xC08] + 4 * (v106 - (((v106 * a3) >> 32) >> 10) * v76));
  LODWORD(v110) = HIDWORD(v110);
  v111 = *(STACK[0xEC8] + (((v109 + 70) ^ (23 - v109) ^ (((v109 + 70) ^ 0xCF) + 110) ^ (((v109 + 70) ^ 0xD1) + 116) ^ (((v109 + 70) ^ 0xBC) + 31)) ^ 0xE4));
  LODWORD(STACK[0x9D0]) = (v110 >> 16) - ((2 * (v110 >> 16)) & 0x9260E18E);
  v112 = ((v111 ^ 0xB6) - 110) ^ ((v111 ^ 0x26) + 2) ^ ((v111 ^ 0x51) + 119);
  if ((v83 & 2) != 0)
  {
    v113 = v86;
  }

  else
  {
    v113 = v84;
  }

  LODWORD(STACK[0xAC8]) = v113;
  if ((v83 & 2) != 0)
  {
    v114 = v84;
  }

  else
  {
    v114 = v86;
  }

  LODWORD(STACK[0x9B8]) = v114;
  if ((v83 & 2) != 0)
  {
    v115 = v92;
  }

  else
  {
    v115 = v88;
  }

  if ((v83 & 2) != 0)
  {
    v116 = v88;
  }

  else
  {
    v116 = v92;
  }

  v117 = STACK[0x524];
  if ((v83 & 2) == 0)
  {
    v117 = STACK[0x520];
  }

  LODWORD(STACK[0x928]) = v117;
  if ((v83 & 2) != 0)
  {
    v118 = v87;
  }

  else
  {
    v118 = v85;
  }

  LODWORD(STACK[0x9C0]) = v118;
  if ((v83 & 2) != 0)
  {
    v119 = v85;
  }

  else
  {
    v119 = v87;
  }

  LODWORD(STACK[0x9B0]) = v119;
  LODWORD(v120) = STACK[0x548];
  if ((v83 & 2) != 0)
  {
    v120 = LODWORD(STACK[0x540]);
  }

  else
  {
    v120 = v120;
  }

  STACK[0xD20] = v120;
  v121 = STACK[0x52C];
  if ((v83 & 2) == 0)
  {
    v121 = STACK[0x528];
  }

  LODWORD(STACK[0x924]) = v121;
  v122 = STACK[0xC4C];
  v123 = STACK[0xCC0];
  if (STACK[0xC4C])
  {
    LODWORD(v123) = STACK[0xCD0];
  }

  if (v122)
  {
    v124 = STACK[0xCD8];
  }

  else
  {
    v124 = STACK[0xCC8];
  }

  if (v122)
  {
    v125 = STACK[0xA50];
  }

  else
  {
    v125 = STACK[0xA48];
  }

  if (v122)
  {
    v126 = STACK[0xA60];
  }

  else
  {
    v126 = STACK[0xA58];
  }

  if (v122)
  {
    v127 = STACK[0xA68];
  }

  else
  {
    v127 = STACK[0xA78];
  }

  if (v122)
  {
    v128 = STACK[0xA78];
  }

  else
  {
    v128 = STACK[0xA70];
  }

  if (v122)
  {
    v129 = STACK[0xA70];
  }

  else
  {
    v129 = STACK[0xCB8];
  }

  if (v122)
  {
    v130 = STACK[0xCB8];
  }

  else
  {
    v130 = STACK[0xA68];
  }

  v131 = STACK[0xA80];
  if (v122)
  {
    v132 = STACK[0xA80];
  }

  else
  {
    v132 = STACK[0xA90];
  }

  if (v122)
  {
    LODWORD(v131) = STACK[0xCE0];
  }

  v133 = STACK[0xA88];
  if (v122)
  {
    v134 = STACK[0xA88];
  }

  else
  {
    v134 = STACK[0xCE0];
  }

  if (v122)
  {
    LODWORD(v133) = STACK[0xA90];
  }

  v135 = STACK[0x558];
  if ((v122 & 2) == 0)
  {
    v135 = STACK[0x554];
  }

  LODWORD(STACK[0xAB0]) = v135;
  if ((v122 & 2) != 0)
  {
    v136 = v134;
  }

  else
  {
    v136 = v132;
  }

  LODWORD(STACK[0xCB8]) = v136;
  if ((v122 & 2) != 0)
  {
    v137 = v132;
  }

  else
  {
    v137 = v134;
  }

  LODWORD(STACK[0xCC0]) = v137;
  if ((v122 & 2) != 0)
  {
    v138 = LODWORD(STACK[0x560]);
  }

  else
  {
    v138 = LODWORD(STACK[0x56C]);
  }

  if ((v122 & 2) != 0)
  {
    v139 = v130;
  }

  else
  {
    v139 = v128;
  }

  LODWORD(STACK[0xCD8]) = v139;
  if ((v122 & 2) != 0)
  {
    v140 = v128;
  }

  else
  {
    v140 = v130;
  }

  LODWORD(STACK[0xCC8]) = v140;
  if ((v122 & 2) != 0)
  {
    v141 = v129;
  }

  else
  {
    v141 = v127;
  }

  LODWORD(STACK[0xA90]) = v141;
  if ((v122 & 2) != 0)
  {
    v142 = v127;
  }

  else
  {
    v142 = v129;
  }

  LODWORD(STACK[0xCD0]) = v142;
  if ((v122 & 2) != 0)
  {
    v143 = v124;
  }

  else
  {
    v143 = v123;
  }

  LODWORD(STACK[0xA78]) = v143;
  if ((v122 & 2) != 0)
  {
    v144 = v123;
  }

  else
  {
    v144 = v124;
  }

  LODWORD(STACK[0xAA8]) = v144;
  if ((v122 & 2) != 0)
  {
    v145 = v133;
  }

  else
  {
    v145 = v131;
  }

  LODWORD(STACK[0xA80]) = v145;
  if ((v122 & 2) != 0)
  {
    v146 = v131;
  }

  else
  {
    v146 = v133;
  }

  LODWORD(STACK[0xA88]) = v146;
  if ((v122 & 2) != 0)
  {
    v147 = v126;
  }

  else
  {
    v147 = v125;
  }

  STACK[0xD18] = v147;
  if ((v122 & 2) != 0)
  {
    v148 = v125;
  }

  else
  {
    v148 = v126;
  }

  STACK[0xD10] = v148;
  v149 = STACK[0x5B4];
  v150 = STACK[0xCA8];
  if (STACK[0x5B4])
  {
    LODWORD(v150) = STACK[0xA40];
  }

  if (v149)
  {
    v151 = STACK[0xCB0];
  }

  else
  {
    v151 = STACK[0xCA0];
  }

  if (v149)
  {
    v152 = STACK[0xC98];
  }

  else
  {
    v152 = STACK[0xC78];
  }

  if (v149)
  {
    v153 = STACK[0xDF0];
  }

  else
  {
    v153 = STACK[0xC90];
  }

  if (v149)
  {
    v154 = STACK[0xA30];
  }

  else
  {
    v154 = STACK[0x5A4];
  }

  if (v149)
  {
    v155 = STACK[0xA28];
  }

  else
  {
    v155 = STACK[0xA20];
  }

  if (v149)
  {
    v156 = STACK[0xC80];
  }

  else
  {
    v156 = STACK[0xC70];
  }

  if (v149)
  {
    v157 = STACK[0xC70];
  }

  else
  {
    v157 = STACK[0xC88];
  }

  if (v149)
  {
    v158 = STACK[0xC88];
  }

  else
  {
    v158 = STACK[0xA3C];
  }

  if (v149)
  {
    v159 = STACK[0xA3C];
  }

  else
  {
    v159 = STACK[0xC80];
  }

  v160 = STACK[0x588];
  if ((v149 & 2) == 0)
  {
    v160 = STACK[0x580];
  }

  LODWORD(STACK[0xC70]) = v160;
  if ((v149 & 2) != 0)
  {
    v161 = v155;
  }

  else
  {
    v161 = v154;
  }

  STACK[0xCF8] = v161;
  if ((v149 & 2) != 0)
  {
    v162 = v154;
  }

  else
  {
    v162 = v155;
  }

  STACK[0xD08] = v162;
  if ((v149 & 2) != 0)
  {
    v163 = v158;
  }

  else
  {
    v163 = v156;
  }

  LODWORD(STACK[0xCB0]) = v163;
  if ((v149 & 2) != 0)
  {
    v164 = v156;
  }

  else
  {
    v164 = v158;
  }

  LODWORD(STACK[0xCA8]) = v164;
  v165 = STACK[0x5A0];
  if ((v149 & 2) == 0)
  {
    v165 = STACK[0x59C];
  }

  LODWORD(STACK[0xA40]) = v165;
  if ((v149 & 2) != 0)
  {
    v166 = v151;
  }

  else
  {
    v166 = v150;
  }

  LODWORD(STACK[0xC80]) = v166;
  if ((v149 & 2) != 0)
  {
    v167 = v150;
  }

  else
  {
    v167 = v151;
  }

  LODWORD(STACK[0xC88]) = v167;
  if ((v149 & 2) != 0)
  {
    v168 = v153;
  }

  else
  {
    v168 = v152;
  }

  LODWORD(STACK[0xC98]) = v168;
  if ((v149 & 2) != 0)
  {
    v169 = v152;
  }

  else
  {
    v169 = v153;
  }

  LODWORD(STACK[0xC90]) = v169;
  LODWORD(v170) = STACK[0x5AC];
  if ((v149 & 2) != 0)
  {
    v170 = LODWORD(STACK[0x5A8]);
  }

  else
  {
    v170 = v170;
  }

  STACK[0xDF0] = v170;
  if ((v149 & 2) != 0)
  {
    v171 = v159;
  }

  else
  {
    v171 = v157;
  }

  LODWORD(STACK[0xCA0]) = v171;
  if ((v149 & 2) != 0)
  {
    v172 = v157;
  }

  else
  {
    v172 = v159;
  }

  LODWORD(STACK[0xC78]) = v172;
  v173 = STACK[0x5B0];
  if (STACK[0x5B0])
  {
    v174 = STACK[0xC50];
  }

  else
  {
    v174 = STACK[0xC60];
  }

  if (v173)
  {
    v175 = STACK[0xC58];
  }

  else
  {
    v175 = STACK[0xC68];
  }

  if (v173)
  {
    v176 = STACK[0x9E8];
  }

  else
  {
    v176 = STACK[0x9F0];
  }

  if (v173)
  {
    v177 = STACK[0x9E0];
  }

  else
  {
    v177 = STACK[0x9E8];
  }

  if (v173)
  {
    v178 = STACK[0x9F8];
  }

  else
  {
    v178 = STACK[0x9E0];
  }

  if (v173)
  {
    v179 = STACK[0x9F0];
  }

  else
  {
    v179 = STACK[0x9F8];
  }

  v180 = STACK[0xC28];
  LODWORD(STACK[0xA70]) = 2 * LODWORD(STACK[0xC28]);
  v181 = v78 - ((2 * v180) & 0x597D7474) - 1578164330;
  v182 = LODWORD(STACK[0x5D4]) + (v102 ^ v181) - 788608670 * LODWORD(STACK[0x5D4]) + LODWORD(STACK[0x5D0]);
  v183 = v103 ^ v181;
  v184 = v101 ^ v181;
  v185 = v104 ^ v181;
  v186 = STACK[0xA00] ^ v180;
  v187 = STACK[0xA10] ^ v180;
  v188 = STACK[0xA08] ^ v180;
  if (v173)
  {
    v189 = STACK[0xA10] ^ v180;
  }

  else
  {
    v189 = STACK[0xA00] ^ v180;
  }

  if (v173)
  {
    v187 = STACK[0xA08] ^ v180;
    v188 = STACK[0xA18] ^ v180;
    v190 = v183;
  }

  else
  {
    v186 = STACK[0xA18] ^ v180;
    v190 = v182;
  }

  if (v173)
  {
    v183 = v184;
  }

  else
  {
    v182 = v185;
    v185 = v184;
  }

  v191 = STACK[0x57C];
  if ((v173 & 2) != 0)
  {
    v191 = STACK[0x570];
  }

  LODWORD(STACK[0xC68]) = v191;
  if ((v173 & 2) != 0)
  {
    v192 = v185;
  }

  else
  {
    v192 = v190;
  }

  if ((v173 & 2) != 0)
  {
    v193 = v190;
  }

  else
  {
    v193 = v185;
  }

  v194 = -51 * v112 + 67;
  v195 = ((-68 - -51 * v112) & 0xC2 | 0x11) ^ v194 & 0xA2;
  LODWORD(STACK[0xA68]) = ((v194 ^ (2 * ((v194 ^ 0x42) & (2 * ((v194 ^ 0x42) & (2 * ((v194 ^ 0x42) & (2 * ((v194 ^ 0x42) & (2 * ((v194 ^ 0x42) & (2 * ((v194 ^ 0x42) & (2 * v195) ^ v195)) ^ v195)) ^ v195)) ^ v195)) ^ v195)) ^ v195))) ^ 0x6580A339) & ((v108 << 8) ^ 0xFD95AFFF) | (v108 << 8) & 0x9A7F5C00;
  if ((v173 & 2) != 0)
  {
    v196 = v175;
  }

  else
  {
    v196 = v174;
  }

  LODWORD(STACK[0xC4C]) = v196;
  if ((v173 & 2) != 0)
  {
    v197 = v174;
  }

  else
  {
    v197 = v175;
  }

  LODWORD(STACK[0x9F0]) = v197;
  if ((v173 & 2) != 0)
  {
    v198 = v178;
  }

  else
  {
    v198 = v176;
  }

  LODWORD(STACK[0xA18]) = v198;
  if ((v173 & 2) != 0)
  {
    v199 = v176;
  }

  else
  {
    v199 = v178;
  }

  LODWORD(STACK[0xA10]) = v199;
  if ((v173 & 2) != 0)
  {
    v200 = v179;
  }

  else
  {
    v200 = v177;
  }

  LODWORD(STACK[0xA08]) = v200;
  if ((v173 & 2) != 0)
  {
    v201 = v177;
  }

  else
  {
    v201 = v179;
  }

  LODWORD(STACK[0xC60]) = v201;
  if ((v173 & 2) != 0)
  {
    v202 = v183;
  }

  else
  {
    v202 = v182;
  }

  STACK[0x9A8] = v202;
  if ((v173 & 2) != 0)
  {
    v203 = v182;
  }

  else
  {
    v203 = v183;
  }

  STACK[0xC30] = v203;
  if ((v173 & 2) != 0)
  {
    v204 = v186;
  }

  else
  {
    v204 = v187;
  }

  LODWORD(STACK[0xA00]) = v204;
  if ((v173 & 2) != 0)
  {
    v205 = v187;
  }

  else
  {
    v205 = v186;
  }

  LODWORD(STACK[0x9F8]) = v205;
  if ((v173 & 2) != 0)
  {
    v206 = v188;
  }

  else
  {
    v206 = v189;
  }

  LODWORD(STACK[0xC50]) = v206;
  if ((v173 & 2) != 0)
  {
    v207 = v189;
  }

  else
  {
    v207 = v188;
  }

  LODWORD(STACK[0xC58]) = v207;
  v208 = (295 * (((STACK[0xCF0] ^ 0xD2C83506) - 1340823794) ^ ((STACK[0xCF0] ^ 0xD1922253) - 1286688679) ^ ((STACK[0xCF0] ^ 0x35A17D6) + 1636206046)) + 332702979) % 0x478;
  v209 = STACK[0x5B8];
  v210 = STACK[0x5B8] & 0x18 ^ 0x10;
  v211 = STACK[0x988];
  v212 = STACK[0x988] & 0x20;
  STACK[0xA58] = v210;
  v213 = STACK[0x5C0];
  v214 = v115 << STACK[0x5C0];
  STACK[0xB88] = v115;
  v215 = (v115 >> v210 >> v212) + v214;
  v216 = v91 - ((2 * v91) & 0x82427DF2);
  v217 = LODWORD(STACK[0xD40]) == 0;
  v218 = ~v209 & 0x10;
  v219 = v211 & 0x28;
  v220 = STACK[0x968];
  v221 = v116 << STACK[0x968];
  v222 = v116;
  STACK[0xAE8] = v116;
  v223 = (v116 >> v218 >> (v211 & 0x28)) & 0x8214596C | (v221 ^ 0x7DEBA693) & ~(v116 >> v218 >> (v211 & 0x28));
  v224 = STACK[0xD48];
  v225 = (STACK[0xD48] << v213) ^ (STACK[0xD48] >> STACK[0x970]);
  v226 = STACK[0x538];
  v227 = v138 << STACK[0x538];
  STACK[0xCE0] = v138;
  v228 = (v227 << STACK[0x530]) & 0x7169BD33 | ((v138 >> v218 >> (v211 & 0x28)) ^ 0x8E9642CC) & ~(v227 << STACK[0x530]);
  v229 = v193 << STACK[0x530] << v226;
  STACK[0x9A0] = v193;
  v230 = v229 ^ (v193 >> (v211 & 0x28) >> v218);
  STACK[0x998] = v192;
  if (v217)
  {
    v215 = v115;
  }

  v231 = v107;
  v232 = LODWORD(STACK[0x27C]) ^ (v215 - ((2 * v215) & 0x36E1B39E) + 460380623) ^ __ROR4__(*(v107 + 4 * LODWORD(STACK[0xE10])), 8) ^ *(v107 + 4 * v208) ^ (LODWORD(STACK[0x9D0]) + 1227911367) ^ 0x37C00A51 ^ LODWORD(STACK[0xA68]);
  LODWORD(STACK[0xA60]) = v232;
  v233 = STACK[0xEA0];
  v234 = *(STACK[0xEA0] + ((-5 * HIBYTE(v232)) ^ 0xAFLL));
  v235 = (2 * ((v234 >> 2) | (v234 << 6))) & 0x7FE4 ^ ((v234 >> 2) | (v234 << 6));
  v236 = STACK[0xD20];
  v237 = (STACK[0xD20] << STACK[0xC38]) << STACK[0x978];
  v238 = ((STACK[0xD20] >> v210 >> v212) ^ 0xB037676A) & ~v237 | v237 & 0x4FC89895;
  v239 = v223 ^ 0x7DEBA693;
  if (v217)
  {
    v240 = v224;
  }

  else
  {
    v240 = v225;
  }

  if (v217)
  {
    v241 = v138;
  }

  else
  {
    v241 = v228 ^ 0x8E9642CC;
  }

  LODWORD(STACK[0xA68]) = v241;
  if (v217)
  {
    v242 = v193;
  }

  else
  {
    v242 = v230;
  }

  LODWORD(STACK[0xD40]) = v242;
  if (v217)
  {
    v243 = v192;
  }

  else
  {
    v243 = (v192 >> v218 >> (v211 & 0x28)) + (v192 << v213);
  }

  LODWORD(STACK[0xCF0]) = v243;
  v244 = LODWORD(STACK[0xDE8]) == 0;
  if (!LODWORD(STACK[0xDE8]))
  {
    v239 = v222;
  }

  v245 = LODWORD(STACK[0x240]) ^ v239 ^ LODWORD(STACK[0xAD0]);
  v246 = v238 ^ 0xB037676A;
  if (!LODWORD(STACK[0xDE8]))
  {
    v246 = v236;
  }

  v247 = v246 ^ LODWORD(STACK[0x280]) ^ LODWORD(STACK[0xAE0]);
  v248 = LODWORD(STACK[0x23C]) ^ v240 ^ (v216 + 1092697849);
  v249 = (((v235 ^ 0x6E) - 77) ^ ((v235 ^ 0x1F) - 60) ^ ((v235 ^ 0x49) - 106)) + 98;
  v250 = v249 & 6 ^ 0xE7;
  v251 = v249 ^ (2 * ((v249 ^ 0x38) & (2 * ((v249 ^ 0x38) & (2 * ((v249 ^ 0x38) & (2 * ((v249 ^ 0x38) & (2 * ((v249 ^ 0x38) & (2 * ((v249 ^ 0x38) & 0x3E ^ v250)) ^ v250)) ^ v250)) ^ v250)) ^ v250)) ^ v250));
  v252 = STACK[0xD50];
  v253 = (STACK[0xD50] >> v218 >> v219) & 0x62EF1FC2 | ((STACK[0xD50] << v220) ^ 0x9D10E03D) & ~(STACK[0xD50] >> v218 >> v219);
  v254 = STACK[0xD10];
  v255 = (STACK[0xD10] >> v218 >> v219) ^ ((STACK[0xD10] << STACK[0x9D8]) << (~STACK[0x980] & 0x10));
  v256 = v248 ^ 0x41213EF9;
  v257 = 295 * (v246 ^ LOBYTE(STACK[0x280]) ^ LOBYTE(STACK[0xAE0])) + 98530;
  v258 = v231;
  v259 = *(v231 + 4 * (295 * HIBYTE(v256) + 98530 - 1144 * ((3754343 * (295 * HIBYTE(v256) + 98530)) >> 32)));
  v260 = *(v233 + ((-5 * HIBYTE(v259)) ^ 0xAFLL));
  v261 = ((((v260 >> 2) | (v260 << 6)) ^ (2 * ((v260 >> 2) | (v260 << 6))) & 0xE4 ^ 0x38) - 1) | (v259 << 8);
  v262 = (295 * (((v251 ^ 0x415DFE4D) - 1096678925) ^ ((v251 ^ 0x7BA543FB) - 2074428347) ^ ((v251 ^ 0x3AF8BDB0u) - 989380080)) + 119180) % 0x478;
  v263 = 295 * (((-5 * BYTE2(v245)) ^ 0x82 ^ *(STACK[0xE90] + ((-5 * BYTE2(v245)) ^ 0x26))) - 1) + 98530;
  v264 = v263 - 1144 * ((3754343 * v263) >> 32);
  v265 = STACK[0xA60];
  v266 = 295 * LODWORD(STACK[0xA60]) + 98530;
  v267 = v266 - 1144 * ((3754343 * v266) >> 32);
  LODWORD(STACK[0xAE0]) = ((v248 ^ 0x41213EF9u) >> 16);
  v268 = ((v248 ^ 0x41213EF9u) >> 16) + 334;
  LODWORD(STACK[0xAD0]) = v268;
  v269 = STACK[0xD18] >> v212 >> STACK[0xA58];
  v270 = ((STACK[0xD18] << v213) ^ 0xCC2DCD47) & ~v269 | v269 & 0x33D232B8;
  v271 = v253 ^ 0x9D10E03D;
  if (v244)
  {
    v271 = v252;
    v272 = v254;
  }

  else
  {
    v272 = v255;
  }

  v273 = v270 ^ 0xCC2DCD47;
  if (!LODWORD(STACK[0xE68]))
  {
    v273 = STACK[0xD18];
  }

  v274 = v273 ^ LODWORD(STACK[0x254]) ^ *(v231 + 4 * v264) ^ __ROR4__(*(v231 + 4 * (295 * BYTE1(v247) + 98530 - 1144 * ((3754343 * (295 * BYTE1(v247) + 98530)) >> 32))), 8) ^ __ROR4__(*(v231 + 4 * v267), 16) ^ v261;
  v275 = LODWORD(STACK[0x238]) ^ v271 ^ __ROR4__(*(v231 + 4 * (v257 - 1144 * ((3754343 * v257) >> 32))), 16) ^ __ROR4__(*(v231 + 4 * v262), 24) ^ __ROR4__(*(v231 + 4 * (295 * BYTE1(v245) + 98530 - 1144 * ((3754343 * (295 * BYTE1(v245) + 98530)) >> 32))), 8) ^ *(v231 + 4 * (295 * v268 - 1144 * ((3754343 * (295 * v268)) >> 32)));
  v276 = *(STACK[0xEC0] + ((BYTE1(v265) - 7) ^ 0x98));
  v277 = 295 * (102 - 59 * (((v276 ^ 0x3A) - 127) ^ ((v276 ^ 0xDA) + 97) ^ ((v276 ^ 0x8B) + 50))) + 98530;
  LODWORD(STACK[0xE10]) = v247;
  v278 = LODWORD(STACK[0xA68]) ^ LODWORD(STACK[0x250]) ^ __ROR4__(*(v258 + 4 * (295 * v256 + 98530 - 1144 * ((3754343 * (295 * v256 + 98530)) >> 32))), 16) ^ __ROR4__(*(v258 + 4 * (295 * HIBYTE(v245) + 98530 - 1144 * ((3754343 * (295 * HIBYTE(v245) + 98530)) >> 32))), 24) ^ *(v258 + 4 * (295 * BYTE2(v247) + 98530 - 1144 * ((3754343 * (295 * BYTE2(v247) + 98530)) >> 32))) ^ __ROR4__(*(v258 + 4 * (v277 - 1144 * ((3754343 * v277) >> 32))), 8);
  v279 = v272 ^ LODWORD(STACK[0x24C]) ^ *(v258 + 4 * (295 * BYTE2(v265) + 98530 - 1144 * ((3754343 * (295 * BYTE2(v265) + 98530)) >> 32))) ^ __ROR4__(*(v258 + 4 * (295 * v245 + 98530 - 1144 * ((3754343 * (295 * v245 + 98530)) >> 32))), 16) ^ __ROR4__(*(v258 + 4 * (295 * HIBYTE(v247) + 98530 - 1144 * ((3754343 * (295 * HIBYTE(v247) + 98530)) >> 32))), 24) ^ __ROR4__(*(v258 + 4 * (295 * (BYTE1(v248) ^ 0x3E) + 98530 - 1144 * ((3754343 * (295 * (BYTE1(v248) ^ 0x3Eu) + 98530)) >> 32))), 8);
  v280 = *(STACK[0xEB8] + (((BYTE2(v279) ^ 0xC0) + 18) ^ 0x91));
  v281 = (((v280 ^ 0x31) - 49) ^ ((v280 ^ 0x73) - 115) ^ ((v280 ^ 4) - 4)) + 41;
  v282 = v281 & 0x79 ^ 0x64;
  v283 = v281 ^ (2 * ((v281 ^ 0x30) & (2 * ((v281 ^ 0x30) & (2 * ((v281 ^ 0x30) & (2 * ((v281 ^ 0x30) & (2 * ((v281 ^ 0x30) & (2 * (v281 & (2 * v281) & 0x62 ^ v282)) ^ v282)) ^ v282)) ^ v282)) ^ v282)) ^ v282));
  v284 = 295 * (-51 * (v283 ^ (v283 >> 4) ^ (v283 >> 1) ^ 0xA2)) + 98530;
  v285 = v284 - 1144 * ((3754343 * v284) >> 32);
  LODWORD(STACK[0xA60]) = 295 * (v274 ^ 0x93) + 98530 - 1144 * ((3754343 * (295 * (v274 ^ 0x93u) + 98530)) >> 32);
  v286 = STACK[0xD00];
  v287 = STACK[0xD00] ^ 0x4DADB287779D47D1;
  STACK[0xA68] = v287;
  v288 = (STACK[0xDD0] >> (v287 & 0x18 ^ 0x10)) + (STACK[0xDD0] << STACK[0xC40]);
  LOBYTE(v277) = STACK[0xE00] ^ 0xD3;
  v289 = STACK[0xD08];
  v290 = (STACK[0xDF0] >> (~v277 & 0x10) >> (STACK[0xE00] & 8)) + (STACK[0xDF0] << STACK[0xC40]);
  v292 = (((STACK[0xD08] >> (v277 & 0x18 ^ 0x10)) ^ 0x9F02F31D) & ~(STACK[0xD08] << STACK[0xC40]) | (STACK[0xD08] << STACK[0xC40]) & 0x60FD0CE2) ^ 0x9F02F31D;
  if (STACK[0xC40])
  {
    LODWORD(v289) = v292;
  }

  if (STACK[0xE00])
  {
    v293 = v290;
  }

  else
  {
    v293 = STACK[0xDF0];
  }

  if (!v286)
  {
    v288 = STACK[0xDD0];
  }

  v294 = LODWORD(STACK[0x234]) ^ v288 ^ __ROR4__(*(v258 + 4 * (295 * HIBYTE(v278) + 98530 - 1144 * ((3754343 * (295 * HIBYTE(v278) + 98530)) >> 32))), 24) ^ __ROR4__(*(v258 + 4 * (295 * BYTE1(v275) + 98530 - 1144 * ((3754343 * (295 * BYTE1(v275) + 98530)) >> 32))), 8) ^ *(v258 + 4 * v285) ^ __ROR4__(*(v258 + 4 * LODWORD(STACK[0xA60])), 16);
  v291 = 295 * (BYTE1(v274) ^ 0x3B) + 98530 - 1144 * ((3754343 * (295 * (BYTE1(v274) ^ 0x3Bu) + 98530)) >> 32);
  v295 = LODWORD(STACK[0x268]) ^ v289 ^ __ROR4__(*(v258 + 4 * (295 * (HIBYTE(v279) ^ 0xF1) + 98530 - 1144 * ((3754343 * (295 * (HIBYTE(v279) ^ 0xF1) + 98530)) >> 32))), 24) ^ __ROR4__(*(v258 + 4 * (295 * v278 + 98530 - 1144 * ((3754343 * (295 * v278 + 98530)) >> 32))), 16) ^ (*(v258 + 4 * v291) >> 8) ^ (*(v258 + 4 * v291) << 24) ^ 0x5C81B0D6 ^ *(v258 + 4 * (295 * BYTE2(v275) + 98530 - 1144 * ((3754343 * (295 * BYTE2(v275) + 98530)) >> 32)));
  v296 = LODWORD(STACK[0x230]) ^ v293 ^ *(v258 + 4 * (295 * (BYTE2(v274) ^ 0x29) + 98530 - 1144 * ((3754343 * (295 * (BYTE2(v274) ^ 0x29u) + 98530)) >> 32))) ^ __ROR4__(*(v258 + 4 * (295 * HIBYTE(v275) + 98530 - 1144 * ((3754343 * (295 * HIBYTE(v275) + 98530)) >> 32))), 24) ^ __ROR4__(*(v258 + 4 * (295 * (v279 ^ 0x77) + 98530 - 1144 * ((3754343 * (295 * (v279 ^ 0x77u) + 98530)) >> 32))), 16) ^ __ROR4__(*(v258 + 4 * (295 * BYTE1(v278) + 98530 - 1144 * ((3754343 * (295 * BYTE1(v278) + 98530)) >> 32))), 8);
  v297 = STACK[0xCF8];
  v298 = (STACK[0xCF8] >> (v286 & 8) >> (~STACK[0xA68] & 0x10)) + (STACK[0xCF8] << STACK[0xC40]);
  v299 = STACK[0xEC0];
  v300 = *(STACK[0xEC0] + ((BYTE2(v278) - 7) ^ 0x98));
  v301 = 295 * (-23 - 59 * (((v300 ^ 0x8B) - 53) ^ ((v300 ^ 0x64) + 38) ^ ((v300 ^ 0x84) - 58))) + 98530;
  v302 = 295 * v275 + 98530 - 1144 * ((3754343 * (295 * v275 + 98530)) >> 32);
  v303 = *(v258 + 4 * (295 * (BYTE1(v279) ^ 0x56) + 98530 - 1144 * ((3754343 * (295 * (BYTE1(v279) ^ 0x56u) + 98530)) >> 32)));
  v304 = ((v303 << 24) ^ 0x889024DB) & ((v303 >> 8) ^ 0xFFFD2FDB) | (v303 >> 8) & 0x6FDB24;
  v305 = *(v258 + 4 * (v301 - 1144 * ((3754343 * v301) >> 32)));
  if (!v286)
  {
    v298 = STACK[0xCF8];
  }

  v306 = v298 ^ LODWORD(STACK[0x248]) ^ v305 ^ __ROR4__(*(v258 + 4 * v302), 16) ^ __ROR4__(*(v258 + 4 * (295 * (HIBYTE(v274) ^ 0xB9) + 98530 - 1144 * ((3754343 * (295 * (HIBYTE(v274) ^ 0xB9) + 98530)) >> 32))), 24) ^ v304;
  v307 = *(v258 + 4 * (295 * BYTE2(v296) + 197060 - 1144 * ((3754343 * (295 * BYTE2(v296) + 197060)) >> 32)));
  v308 = *(STACK[0xEA8] + ((HIBYTE(v307) - 7) ^ 0x67));
  v309 = (((v308 ^ 0x5C) - 92) ^ ((v308 ^ 0xF2) + 14) ^ ((v308 ^ 0xE8) + 24)) + 127;
  v310 = v309 & 0x63 ^ 0xEA;
  v311 = v309 ^ 0x2E;
  v312 = LODWORD(STACK[0x264]) ^ LODWORD(STACK[0xCF0]) ^ __ROR4__(*(v258 + 4 * (295 * HIBYTE(v295) + 197060 - 1144 * ((3754343 * (295 * HIBYTE(v295) + 197060)) >> 32))), 16) ^ __ROR4__(*(v258 + 4 * (295 * v294 + 197060 - 1144 * ((3754343 * (295 * v294 + 197060)) >> 32))), 8) ^ *(v258 + 4 * (295 * (BYTE1(v306) ^ 0x24) + 197060 - 1144 * ((3754343 * (295 * (BYTE1(v306) ^ 0x24u) + 197060)) >> 32))) ^ 0xD64F68D0 ^ ((-59 * (v309 ^ ((8 * v308) | 0xEE) ^ (2 * (v311 & (2 * (v311 & (2 * (v311 & (2 * (v311 & (2 * (v311 & (2 * ((v309 ^ 0xE) & (2 * v309) & 0x5E ^ v310)) ^ v310)) ^ v310)) ^ v310)) ^ v310)) ^ v310)))) | (v307 << 8));
  v313 = STACK[0x988];
  v314 = (((v312 - ((2 * v312) & 0x106B5B8FELL) + 0xBC496D8835ADC7FLL) ^ 0xBC496D8835ADC7FuLL) >> STACK[0x5E8]) - ((2 * (((v312 - ((2 * v312) & 0x106B5B8FELL) + 0xBC496D8835ADC7FLL) ^ 0xBC496D8835ADC7FuLL) >> STACK[0x5E8])) & 0x363F75A) + 28441517;
  v315 = (v314 ^ 0xFE4E0452) & ((((v312 - ((2 * v312) & 0x6B5B8FE) - 2091197313) ^ 0x835ADC7F) << (STACK[0x988] & 0x38 ^ 0x10)) ^ 0x422F3487) ^ v314 & 0xBDD0CB78 ^ 0x43BFFFAF;
  v316 = STACK[0xE68];
  if (!LODWORD(STACK[0xE68]))
  {
    v315 = v312;
  }

  HIDWORD(v317) = *(v258 + 4 * (295 * (HIBYTE(v306) ^ 0x88) + 197060 - 1144 * ((3754343 * (295 * (HIBYTE(v306) ^ 0x88) + 197060)) >> 32)));
  LODWORD(v317) = HIDWORD(v317);
  v318 = (v317 >> 16) ^ __ROR4__(*(v258 + 4 * (295 * v296 + 197060 - 1144 * ((3754343 * (295 * v296 + 197060)) >> 32))), 8) ^ __ROR4__(*(v258 + 4 * (295 * BYTE2(v294) + 197060 - 1144 * ((3754343 * (295 * BYTE2(v294) + 197060)) >> 32))), 24);
  v319 = ((v318 & 0x127 ^ 0x127) + (v318 & 0x127)) & (689 - LODWORD(STACK[0xAE0]));
  v320 = LODWORD(STACK[0x260]) ^ LODWORD(STACK[0xD40]) ^ v318 ^ 0xFA6DBF41 ^ *(v258 + 4 * (((v319 - ((2 * v319) & 0x490) + 427860680) ^ (STACK[0xAD0] & 0xE67F5D27 | 0x1980A2C8)) * (BYTE1(v295) + 668) % 0x478));
  v321 = STACK[0x9A8];
  v322 = (STACK[0x9A8] >> STACK[0x970]) + (STACK[0x9A8] << STACK[0x968]);
  v323 = (STACK[0xC30] << STACK[0x978] << STACK[0xC38]) + (STACK[0xC30] >> STACK[0x970]);
  v324 = (((((v320 - ((2 * v320) & 0x1693CC9F8) + 0x1792813EB49E64FCLL) ^ 0x1792813EB49E64FCuLL) >> STACK[0x5E8]) - ((2 * (((v320 - ((2 * v320) & 0x1693CC9F8) + 0x1792813EB49E64FCLL) ^ 0x1792813EB49E64FCuLL) >> STACK[0x5E8])) & 0x945B010E) + 1244496007) ^ 0x4A2D8087) + (((v320 - ((2 * v320) & 0x693CC9F8) - 1264687876) ^ 0xB49E64FC) << (v313 & 0x68) << (v313 & 0x90 ^ 0x10));
  if (!v316)
  {
    v324 = v320;
    v323 = STACK[0xC30];
  }

  v325 = LODWORD(STACK[0x25C]) ^ v323 ^ __ROR4__(*(v258 + 4 * (295 * BYTE2(v295) + 197060 - 1144 * ((3754343 * (295 * BYTE2(v295) + 197060)) >> 32))), 24) ^ *(v258 + 4 * (295 * BYTE1(v296) + 197060 - 1144 * ((3754343 * (295 * BYTE1(v296) + 197060)) >> 32))) ^ __ROR4__(*(v258 + 4 * (295 * (v306 ^ 0xDB) + 197060 - 1144 * ((3754343 * (295 * (v306 ^ 0xDBu) + 197060)) >> 32))), 8) ^ __ROR4__(*(v258 + 4 * (295 * HIBYTE(v294) + 197060 - 1144 * ((3754343 * (295 * HIBYTE(v294) + 197060)) >> 32))), 16) ^ 0xA4234DA3;
  if (!v316)
  {
    v322 = STACK[0x9A8];
  }

  if (LODWORD(STACK[0xDE8]))
  {
    v326 = (((v325 - ((2 * v325) & 0xA6C67C4ELL) + 0x2BD8C84853633E27) ^ 0x2BD8C84853633E27uLL) >> STACK[0x978] >> (STACK[0x980] & 0x70 ^ 0x50)) + (((v325 - ((2 * v325) & 0xA6C67C4E) + 1399012903) ^ 0x53633E27) << (v313 & 0x78 ^ 0x10));
  }

  else
  {
    v326 = v325;
  }

  v327 = *(v299 + ((v295 - 7) ^ 0x98));
  v328 = 295 * HIBYTE(v296) + 197060 - 1144 * ((3754343 * (295 * HIBYTE(v296) + 197060)) >> 32);
  v329 = 295 * (LODWORD(STACK[0x214]) - 59 * (((v327 ^ 0x77) - 4) ^ ((v327 ^ 0x36) - 69) ^ ((v327 ^ 0x2A) - 89))) + 197060;
  v330 = *(v299 + ((BYTE1(v294) - 7) ^ 0x98));
  v331 = 295 * (LODWORD(STACK[0x218]) - 59 * (((v330 ^ 0xE3) - 114) ^ ((v330 ^ 0x38) + 87) ^ ((v330 ^ 0xB0) - 33))) + 197060;
  v332 = LODWORD(STACK[0x258]) ^ v322 ^ HIWORD(*(v258 + 4 * v328)) ^ (*(v258 + 4 * v328) << 16) ^ __ROR4__(*(v258 + 4 * (295 * (BYTE2(v306) ^ 0x90) + 197060 - 1144 * ((3754343 * (295 * (BYTE2(v306) ^ 0x90u) + 197060)) >> 32))), 24) ^ __ROR4__(*(v258 + 4 * (v329 - 1144 * ((3754343 * v329) >> 32))), 8) ^ 0x2337C6B8u ^ *(v258 + 4 * (v331 - 1144 * ((3754343 * v331) >> 32)));
  if (LODWORD(STACK[0xDE8]))
  {
    v333 = (((v332 - ((2 * v332) & 0xCC51B46E) + 1713953335) ^ 0x6628DA37) << (v313 & 0x50 ^ 0x10) << (v313 & 0xA8)) + (((v332 - ((2 * v332) & 0xCC51B46ELL) + 0x85499246628DA37) ^ 0x85499246628DA37uLL) >> (STACK[0x980] & 0x78 ^ 0x58));
  }

  else
  {
    v333 = v332;
  }

  LODWORD(STACK[0xE68]) = LODWORD(STACK[0x514]) < 0xA7B02293;
  if (STACK[0xC24])
  {
    v334 = STACK[0xAC0];
  }

  else
  {
    v334 = STACK[0xAB8];
  }

  if (STACK[0xC24])
  {
    v335 = STACK[0x7F0];
  }

  else
  {
    v335 = STACK[0xDF8];
  }

  if ((STACK[0x7E8] & 2) != 0)
  {
    v336 = STACK[0x7D8];
  }

  else
  {
    v336 = STACK[0x7E0];
  }

  if ((STACK[0x7E8] & 2) != 0)
  {
    v337 = v335;
  }

  else
  {
    v337 = v334;
  }

  if ((STACK[0x7E8] & 2) == 0)
  {
    v334 = v335;
  }

  v338 = STACK[0xE08];
  if (STACK[0xE08])
  {
    v339 = v326;
  }

  else
  {
    v339 = v324;
  }

  if ((v338 & 1) == 0)
  {
    v324 = v333;
    v333 = v315;
    v315 = v326;
  }

  v340 = v338 + 2 * LODWORD(STACK[0xDC8]);
  v341 = (v340 & 2) == 0;
  if ((v340 & 2) != 0)
  {
    v342 = v333;
  }

  else
  {
    v342 = v339;
  }

  if (v341)
  {
    v339 = v333;
    v343 = v324;
  }

  else
  {
    v343 = v315;
  }

  if (v341)
  {
    v344 = v315;
  }

  else
  {
    v344 = v324;
  }

  v345 = STACK[0x278];
  v346 = STACK[0xC28];
  v347 = v334 ^ v346;
  v348 = STACK[0x200];
  v349 = *(STACK[0x200] + 4 * ((v342 ^ LODWORD(STACK[0x278])) % 0x101)) ^ ((v334 ^ v346) % 0x101 + 442370775) ^ *(STACK[0x200] + 4 * ((v334 ^ v346) % 0x101)) ^ v339 ^ ((v342 ^ LODWORD(STACK[0x278])) % 0x101 + 442370775);
  v350 = STACK[0x270];
  v351 = STACK[0x228];
  v352 = STACK[0xAD8];
  v353 = LODWORD(STACK[0x270]) ^ LODWORD(STACK[0x228]) ^ LODWORD(STACK[0xAD8]);
  LODWORD(STACK[0xE00]) = v337;
  v354 = v346 ^ v350 ^ v337;
  v355 = v353 ^ v337 ^ v343 ^ v342 ^ v349 ^ 0x7038AC6F ^ ((v349 ^ 0x7038AC6F ^ v354) >> 2) ^ 0x6C368774;
  v356 = LODWORD(STACK[0x274]) ^ v346 ^ v336 ^ v343 ^ 0xAB30C1B1 ^ (v344 - ((2 * v344) & 0x2073643C) - 1875267042);
  v357 = *(a70 + 4 * ((v355 ^ v334) % 0x101)) + 1984681496;
  v358 = STACK[0x5F0] & 0x9F7E8AFF;
  v359 = v358 ^ 0x89000017;
  v360 = (v358 ^ 0x167E8AE8) + (v358 ^ 0x89000017);
  v361 = (((v360 & 0x3ADF1ED7) + (v346 ^ v345) % 0x101) ^ *(v348 + 4 * ((v346 ^ v345) % 0x101)) ^ 0x50739EE1) + v356 + (v357 ^ (v357 >> 7) ^ (v357 >> 4) ^ 0xABB8DD7D) + 1;
  v362 = v361 + (v336 ^ LODWORD(STACK[0x22C])) * ((STACK[0x5F0] ^ 0x161E0040 | 0x40C02EB0) & (STACK[0x5F0] & 0x9F1E0047 ^ 0x49CE2EF2) ^ v359 & 0x800E0045 ^ 0x3FD06FB2);
  v363 = LODWORD(STACK[0x26C]) ^ v346 ^ (v352 - ((2 * v352) & 0x62562334) - 1322577510) ^ v349 ^ 0x66CAC74F ^ v361;
  v364 = v354 ^ v344 ^ 0x995C2083 ^ v363;
  v365 = v362 + 14794425 * (v364 ^ (LODWORD(STACK[0x918]) - (STACK[0xA70] & 0x32B84106) - 1903393313));
  v366 = v364 ^ (1673298919 * v347) ^ (1673298919 * (v355 ^ v345) - ((125372366 * (v355 ^ v345)) & 0x32B84106) - 1722015613);
  v367 = *(a70 + 4 * ((v365 ^ v346) % 0x101)) + 1984681496;
  v368 = (((v352 ^ v351) % 0x101 + 442370775) ^ 0xAF8C611E ^ *(v348 + 4 * ((v352 ^ v351) % 0x101))) + v363 + (v367 ^ (v367 >> 7) ^ (v367 >> 4) ^ 0x54472282);
  v369 = v366 ^ v336;
  v370 = STACK[0xDD8];
  v371 = STACK[0xDD8] ^ STACK[0xD18] ^ STACK[0xD50] ^ STACK[0xD10] ^ STACK[0xCE0] ^ STACK[0xB98] ^ STACK[0xB90] ^ STACK[0xBF8] ^ STACK[0xBE0] ^ LODWORD(STACK[0xBB0]) ^ LODWORD(STACK[0xDC0]) ^ LODWORD(STACK[0xB18]) ^ LODWORD(STACK[0xDB8]) ^ STACK[0xD08] ^ STACK[0xDF0] ^ v297 ^ STACK[0xDD0] ^ STACK[0xAF8] ^ STACK[0xBA8] ^ STACK[0xB08] ^ LODWORD(STACK[0xBF0]) ^ LODWORD(STACK[0xBA0]) ^ LODWORD(STACK[0xC18]) ^ LODWORD(STACK[0xD58]) ^ STACK[0x998] ^ STACK[0x9A0] ^ STACK[0xD38] ^ STACK[0xDB0] ^ STACK[0xBC0] ^ STACK[0xB10] ^ STACK[0xBB8] ^ STACK[0xD28] ^ STACK[0xD30] ^ STACK[0xBC8] ^ v321 ^ STACK[0xAE8] ^ STACK[0xB88] ^ STACK[0xD48] ^ STACK[0xD20] ^ STACK[0xB20] ^ STACK[0xBD0] ^ STACK[0xB28] ^ STACK[0xE88] ^ (STACK[0xC30] - ((2 * STACK[0xC30]) & 0x865206CE) + 1126761319) ^ 0x4A61B6A5;
  v372 = v371 ^ STACK[0xB00];
  v373 = STACK[0x950];
  v374 = v366 + -717678751 * (v372 ^ STACK[0xDD8]) - (((((v372 ^ STACK[0xDD8] ^ 0xFFFFBFFF) & ((v359 & 0x9B2E821D) + (STACK[0x5F0] & 0x9B2E821D ^ 0x322EE208)) ^ 0x79E4449B) & (~(v372 ^ STACK[0xDD8]) | 0x44D11DE2) ^ (v372 ^ STACK[0xDD8]) & 0x820AE204 ^ 0x79E4049B) + 434778947) | 0x10200201) * LODWORD(STACK[0x950]);
  v375 = *(STACK[0xE98] + (((v374 >> 4) & 0xF0 | (v374 >> 12)) ^ 0x8DLL));
  v376 = LODWORD(STACK[0x210]) - 81 * (((v375 ^ 0x31) + 115) ^ ((v375 ^ 0xFFFFFFA4) - 24) ^ ((v375 ^ 0xFFFFFFA5) - 25));
  LOBYTE(v376) = v376 ^ (2 * ((v376 ^ 8) & (2 * ((v376 ^ 8) & (2 * ((v376 ^ 8) & (2 * ((v376 & 0xF4 ^ 0xB6 | 8) ^ v376 & 0x3C)) ^ v376 & 0xF4 ^ 0xB6)) ^ v376 & 0xF4 ^ 0xB6)) ^ v376 & 0xF4 ^ 0xB6));
  v377 = STACK[0xE80];
  v378 = STACK[0xE80] + 1867;
  LOBYTE(v376) = *(STACK[0x4E8] + (((*(v378 + (v376 ^ 0xD3)) ^ v376 ^ 0x12) + 18) ^ 0x91));
  LOBYTE(v376) = ((v376 ^ 8) - 8) ^ ((v376 ^ 0x3C) - 60) ^ ((v376 ^ 0x72) - 114);
  LOBYTE(v359) = v376 & 0xB6 ^ 0xFE;
  LOBYTE(v376) = v376 ^ (2 * ((v376 ^ 0x58) & (2 * ((v376 ^ 0x58) & (2 * ((v376 ^ 0x58) & (2 * ((v376 ^ 0x58) & (2 * ((v376 ^ 0x58) & (2 * v359) ^ v359)) ^ v359)) ^ v359)) ^ v359)) ^ v359));
  v379 = v368 + 1;
  v380 = *(a70 + 4 * ((v346 ^ LODWORD(STACK[0x22C])) % 0x101));
  v381 = *(a70 + 4 * (v369 % 0x101));
  v382 = v355 + 1413108579 * (v372 + LODWORD(STACK[0x244])) + 161559379;
  v383 = (-1319202003 * (v372 ^ LODWORD(STACK[0x950]))) ^ LODWORD(STACK[0x224]) ^ (v368 + 1);
  LOBYTE(v355) = *(STACK[0xEC8] + ((v374 + 18) ^ 0xB9));
  v384 = *(STACK[0xEC8] + ((BYTE2(v383) + 18) ^ 0xB9));
  LOBYTE(v359) = *(STACK[0xEC0] + ((BYTE1(v382) - 7) ^ 0x98));
  v385 = STACK[0xE78];
  *(v385 + STACK[0x618]) = LODWORD(STACK[0x4DC]) - 51 * (((v376 ^ (v376 >> 4) ^ (v376 >> 1) ^ 0x69) - 99) ^ ((v376 ^ (v376 >> 4) ^ (v376 >> 1) ^ 0xB7) + 67) ^ ((v376 ^ (v376 >> 4) ^ (v376 >> 1) ^ 0xD8) + 46));
  LOBYTE(v376) = *(v377 + 2921 + (HIBYTE(v383) ^ 0x74));
  *(v385 + STACK[0x640]) = v376 ^ (16 * (v376 ^ 0x5C)) ^ (4 * (v376 ^ 0x5C)) ^ 0xC0;
  v386 = STACK[0x608];
  *(v385 + STACK[0x608] - ((v360 ^ 0x6BE59100) & (v360 ^ 0xFFFF9FFF) ^ (v360 | 0x941A6EFF))) = *(v377 + 2921 + (BYTE2(v382) ^ 0xF5)) ^ (16 * (*(v377 + 2921 + (BYTE2(v382) ^ 0xF5)) ^ 0x5D)) ^ (4 * (*(v377 + 2921 + (BYTE2(v382) ^ 0xF5)) ^ 0x5D)) ^ 0xC8;
  *(v385 + (v386 + 12)) = *(v378 + (HIBYTE(v374) ^ 0x41)) ^ (HIBYTE(v374) + (~(v374 >> 23) | 0x67) - 51) ^ 0x2A;
  v387 = v370 ^ v373 ^ v372 ^ (((v380 + 1984681496) ^ ((v380 + 1984681496) >> 7) ^ ((v380 + 1984681496) >> 4) ^ 0x54472282) + v365 + ((v381 + 1984681496) ^ ((v381 + 1984681496) >> 7) ^ ((v381 + 1984681496) >> 4) ^ 0xABB8DD7D) + 655127895 * ((v379 ^ v346) - (LODWORD(STACK[0xE00]) ^ v350)) + 1);
  *(v385 + STACK[0x650]) = *(v378 + (HIBYTE(v387) ^ 0xD6)) ^ HIBYTE(v387) ^ 0x99;
  LOBYTE(v376) = *(v377 + 2921 + (v382 ^ 0x57));
  *(v385 + STACK[0x600]) = v376 ^ (16 * (v376 ^ 0x13)) ^ (4 * (v376 ^ 0x13)) ^ 0xFD;
  v388 = *(v377 + 2921 + (BYTE1(v383) ^ 0x10));
  v389 = (v388 ^ 0xFFFFFF98) << ((v381 & 2 ^ 2) + (v381 & 2));
  *(v385 + STACK[0x628]) = v388 ^ (4 * ((v389 - ((2 * v389) & 0x1C) + 14) ^ v388)) ^ 0x67;
  *(v385 + (v386 + 5)) = *(v377 + 2921 + (BYTE2(v387) ^ 0x5DLL)) ^ (16 * (*(v377 + 2921 + (BYTE2(v387) ^ 0x5DLL)) ^ 0xE7)) ^ (4 * (*(v377 + 2921 + (BYTE2(v387) ^ 0x5DLL)) ^ 0xE7)) ^ 0xD6;
  LOBYTE(v389) = *(v377 + 2921 + ((-51 * (((v384 ^ 0x97) - 51) ^ ((v384 ^ 0x1F) + 69) ^ ((v384 ^ 0x49) + 19)) - 31) ^ 0xF5));
  *(v385 + STACK[0x638]) = v389 ^ (16 * (v389 ^ 0xAC)) ^ (4 * (v389 ^ 0xAC)) ^ 0x1C;
  *(v385 + STACK[0x610]) = *(v377 + 2921 + (BYTE2(v374) ^ 0x53)) ^ (16 * (*(v377 + 2921 + (BYTE2(v374) ^ 0x53)) ^ 0xCD)) ^ (4 * (*(v377 + 2921 + (BYTE2(v374) ^ 0x53)) ^ 0xCD)) ^ 0x23;
  LOBYTE(v389) = *(v377 + 2921 + ((LODWORD(STACK[0x20C]) - 59 * (((v359 ^ 0x3C) + 15) ^ ((v359 ^ 0x5C) + 111) ^ ((v359 ^ 0xB) + 58))) ^ 0xCBLL));
  *(v385 + STACK[0x5F8]) = v389 ^ (16 * (v389 ^ 0x28)) ^ (4 * (v389 ^ 0x28)) ^ 0x4E;
  *(v385 + v386) = *(v377 + 2921 + ((v382 >> 24) ^ 0xB2)) ^ (16 * (*(v377 + 2921 + ((v382 >> 24) ^ 0xB2)) ^ 0x2B)) ^ (4 * (*(v377 + 2921 + ((v382 >> 24) ^ 0xB2)) ^ 0x2B)) ^ 0x2E;
  *(v385 + STACK[0x648]) = *(v378 + (BYTE1(v387) ^ 0x7DLL)) ^ BYTE1(v387) ^ 0x11;
  *(v385 + STACK[0x630]) = *(v378 + (v383 ^ 0xD5)) ^ v383 ^ 0xEF;
  LOBYTE(v389) = *(v377 + 2921 + ((-51 * (((v355 ^ 0x87) + 97) ^ ((v355 ^ 0xCF) + 41) ^ ((v355 ^ 0x89) + 111)) - 59) ^ 0xCCLL));
  *(v385 + STACK[0x620]) = v389 ^ (16 * (v389 ^ 0xAB)) ^ (4 * (v389 ^ 0xAB)) ^ 0x41;
  v390 = *(STACK[0xEB8] + (((*(v378 + (v387 ^ 0xEALL)) ^ v387 ^ 0x6E) + 18) ^ 0x91));
  v391 = ((v390 ^ 0xFFFFFFB0) + 80) ^ ((v390 ^ 0xFFFFFFF3) + 13) ^ ((v390 ^ 5) - 5);
  v392 = v391 - 17;
  v393 = (v391 + 111) & 0xFFFFFFEB | 4;
  v394 = v393 ^ v392 & 0x18;
  v395 = v392 ^ 0x6A;
  v396 = v392 ^ (2 * (v395 & (2 * (v395 & (2 * (v395 & (2 * (v395 & (2 * (v395 & (2 * ((v392 ^ 0x4A) & (2 * v393) ^ v394)) ^ v394)) ^ v394)) ^ v394)) ^ v394)) ^ v394));
  v397 = v396 ^ (v396 >> 4) ^ (v396 >> 1);
  *(v385 + STACK[0x658]) = LODWORD(STACK[0x208]) - 51 * (((v397 ^ 8) + 31) ^ ((v397 ^ 0x1E) + 9) ^ ((v397 ^ 0x73) + 102));
  v398 = STACK[0xE68];
  if (LODWORD(STACK[0xE68]) == (v386 - 1481629021) < 0xA7B02293)
  {
    v398 = (v386 - 1481629021) < LODWORD(STACK[0x514]);
  }

  LODWORD(STACK[0x4E4]) = (LODWORD(STACK[0xE10]) >> 8) ^ 0xFFFFFF85;
  LODWORD(STACK[0x4E0]) = (v382 >> 16) ^ 0xFFFFFFB0;
  return (*(STACK[0xED8] + 8 * (LODWORD(STACK[0x990]) ^ (v398 ^ 1 | (4 * (v398 ^ 1))))))(4294967284);
}

uint64_t sub_1009C8364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 80) = 13568;
  *a1 = 0x5A9E8B952ED91155;
  *(a1 + 8) = v9;
  *(a1 + 16) = v9;
  *(a1 + 24) = v9;
  *(a1 + 32) = v9;
  *(a1 + 40) = v9;
  *(a1 + 48) = v9;
  *(a1 + 56) = v9;
  *(a1 + 64) = v9;
  *(a1 + 72) = 0;
  v12 = *(v11 + 360);
  *(v12 + 84) = 7;
  *(v12 + 104) = 0;
  *(v12 + 88) = v9;
  *(v12 + 96) = v9;
  *(v12 + 108) = 0;
  *v10 = v12;
  return (*(a8 + 8 * v8))();
}

uint64_t sub_1009C8504(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  v15 = STACK[0xEC0];
  LODWORD(STACK[0xEC0]) = v12;
  LODWORD(STACK[0xEB8]) = v8;
  LODWORD(STACK[0xE20]) = v14;
  v16 = STACK[0xE38];
  v17 = ((v10 & ((v16 ^ 0x1BE4835Du) + 3826978300) ^ (((LODWORD(STACK[0xE38]) - 20733) | 8u) - 0x40ACD2E1B763FFDCLL)) + 0x19EA8B65BEB911ABLL) ^ ((v10 & ((v16 ^ 0x1BE4835Du) + 3826978300) ^ 0xAF716B622FBF243BLL) + 0x9C8CD19D99A151DLL) ^ ((v10 & ((v16 ^ 0x1BE4835Du) + 3826978300) ^ 0x1022467C3E3DC055) - 0x49641FF837E70E8DLL);
  STACK[0xE28] = v17;
  v18 = v17 + 1748007799 - ((2 * (v17 + 1748007799)) & 0xC842E5B2) - 467569959;
  v19 = *(STACK[0xED8] + 8 * ((((((v18 ^ 0x6F19AC45) - 1863953477) ^ ((v18 ^ 0x7D904729) - 2106607401) ^ ((v18 ^ 0xF6A899B5) + 156722763)) - 467569959 > 0x3F) * v11) ^ v16));
  LODWORD(STACK[0xE80]) = v13;
  LODWORD(STACK[0xE78]) = v9;
  LODWORD(STACK[0xE70]) = a4;
  LODWORD(STACK[0xE60]) = a8;
  LODWORD(STACK[0xE58]) = a5;
  LODWORD(STACK[0xE50]) = a3;
  LODWORD(STACK[0xEA0]) = v15;
  return v19(4294967215);
}

uint64_t sub_1009C86A4(uint64_t a1, int a2)
{
  v9 = v6 < v7;
  if (v9 == a2 + v4 < (((v3 ^ 0x8198) + v8) ^ (v3 + 1264)))
  {
    v9 = a2 + v4 < v6;
  }

  return (*(v5 + 8 * (v9 | (v9 << 6) | v3)))(a2 + v4 < v6, (a2 + v2));
}

uint64_t sub_1009C8704()
{
  v4 = *v1;
  *(v3 + 1056) = 0;
  return (*(v2 + 8 * (((v4 != 0) * ((9 * (v0 ^ 0x7D2E)) ^ (v0 + 1897759031) & 0x8EE227FD ^ 0x2C7E)) | v0)))();
}

uint64_t sub_1009C8760@<X0>(uint64_t a1@<X8>)
{
  *(STACK[0x3F0] + (v1 ^ 0x3E14) + v2) = HIBYTE(a1) ^ 0xBE;
  v4 = v2 + 1704305581 == ((v1 + 4640) ^ 0x6595D42ALL);
  return (*(v3 + 8 * ((v4 | (16 * v4)) ^ v1)))();
}

uint64_t sub_1009C87BC@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v4 = *v2;
  STACK[0xF50] = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  STACK[0xF38] = v6;
  v7 = *(v2 + 24);
  v8 = *(v2 + 56);
  v9 = *(v2 + 64);
  if (v4)
  {
    v10 = v6 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10 && v5 == ((a2 + 4404) ^ (a2 + 23152) ^ 0xCBC4);
  LODWORD(STACK[0xE68]) = v7;
  v15 = v11 && v7 != 0 && v8 != 0 && v9 == 32;
  return (*(v3 + 8 * ((51 * v15) ^ a2)))(a1, v8);
}

uint64_t sub_1009C887C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 128) = STACK[0x620];
  LODWORD(STACK[0x724]) = STACK[0x924];
  return (*(a8 + 8 * v8))();
}

uint64_t sub_1009C88F0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, unsigned int a26)
{
  v29 = a26 < 0x5697486F;
  if (v29 == (v27 + 1452755119) < 0x5697486F)
  {
    v29 = a26 >= v27 + 1452755119;
  }

  LODWORD(STACK[0xD58]) = v27;
  v30 = STACK[0xF48];
  *STACK[0xF58] = v28 ^ ((v26 - 58) | 0x80) ^ 0x7A;
  v31 = *(a1 + 8 * (v26 ^ v29));
  v32 = STACK[0xE38] + 5252;
  v33 = STACK[0xE38] + 2592;
  v34 = STACK[0xE38] + 3112;
  STACK[0xDA0] = STACK[0xE38] + 1546;
  v35 = STACK[0xED0];
  STACK[0xD98] = STACK[0xED0] + 77672;
  STACK[0xE08] = v35 + 137412;
  STACK[0xDB8] = v35 + 95576;
  STACK[0xE78] = v30;
  STACK[0xE20] = v35 + 34828;
  STACK[0xDD8] = v33;
  STACK[0xE10] = v35 + 90284;
  STACK[0xE00] = v35 + 105120;
  STACK[0xE70] = v35 + 75548;
  STACK[0xDF8] = v35 + 133176;
  STACK[0xE18] = v35 + 9484;
  STACK[0xE28] = v35 + 103036;
  STACK[0xDC0] = v35 + 139520;
  STACK[0xDB0] = v35 + 44672;
  STACK[0xDA8] = v32;
  STACK[0xDE0] = v34;
  return v31();
}

uint64_t sub_1009C8A54(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  return (*(v2 + 8 * ((32478 * ((v1 ^ 0x67290BD5u) >= 9 * (v1 ^ 0xD5E0u) + 1802635992)) ^ ((v1 ^ 0x67290BD5) - 1730781444))))();
}

uint64_t sub_1009C8AFC()
{
  *(v4 - 256) = v1 + 1650462872 + 1022166737 * (((v2 | 0xA90A5810) - (v2 & 0xA90A5810)) ^ 0x131AB982) - 1650467726;
  *(v4 - 248) = v0;
  v5 = (*(v3 + 8 * ((v1 + 1650462872) ^ 0x62601B5A)))(v4 - 256);
  return (*(v3 + 8 * (v1 - 36286)))(v5);
}

uint64_t sub_1009C8C38@<X0>(int a1@<W8>)
{
  v4 = (v1 ^ 0x7AEBCD7EF74EDEF7) - 0xA000962060298E4 + ((2 * v1) & 0x1EE9DBDEELL);
  v3[213] = v4;
  v5 = v3[76];
  v3[214] = v5;
  LODWORD(v4) = v4 - v5 + 0x68259458EADEFBFLL >= ((a1 + 86590921) & 0xFAD69FFF ^ 0xFFFFFFFFFFFFCA77) + 1913 * (a1 ^ 0x2B20u);
  return (*(v2 + 8 * ((v4 | (8 * v4)) ^ a1)))();
}

void sub_1009C8D80(uint64_t a1)
{
  v1 = *(a1 + 8) ^ (1112314453 * ((-2 - ((a1 ^ 0x9400450 | 0x24BEEB8F) + (a1 ^ 0x20388B04 | 0xDB411470))) ^ 0x39D15A72));
  __asm { BRAA            X3, X17 }
}

uint64_t sub_1009C9020(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (v4)
  {
    v9 = a4;
  }

  else
  {
    v9 = 0;
  }

  return (*(v8 + 8 * (((v7 == 0) * a3) | v5)))(a1, a2, a3, (v9 + (a4 + v6) * (a4 + v6) - a4 * a4 - v6 * v6));
}

uint64_t sub_1009C90AC@<X0>(uint64_t a1@<X8>)
{
  v7 = v4 - 1;
  *(*(v1 + 8) + 4 * v7) = *(*(a1 + 8) + 4 * v7);
  return (*(v2 + 8 * ((((v3 ^ (((v7 - v3) | (v3 - v7)) < 0)) & 1) * v6) ^ v5)))();
}

uint64_t sub_1009C90EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  *&v24 = v10 + a4 - 5;
  *(&v24 + 1) = v10 + a4 - 6;
  *&STACK[0x590] = v24;
  *&v24 = v10 + a4 - 3;
  *(&v24 + 1) = v10 + a4 - 4;
  *&STACK[0x580] = v24;
  v25.i64[0] = v10 + a4 + 3;
  v25.i64[1] = v10 + a4 + 2;
  v26.i64[0] = v10 + a4 + 5;
  v26.i64[1] = v10 + a4 + 4;
  v27.i64[0] = v10 + a4 + 9;
  v27.i64[1] = v10 + a4 + 8;
  v28.i64[0] = v10 + a4 + ((a6 + 262) ^ v8);
  v28.i64[1] = v10 + a4 + 6;
  v29 = vandq_s8(v27, *&STACK[0x560]);
  v30 = vandq_s8(v28, *&STACK[0x560]);
  v31 = vandq_s8(v26, *&STACK[0x560]);
  v32 = vandq_s8(v25, *&STACK[0x560]);
  v33 = vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL);
  v34 = vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL);
  v35 = vsraq_n_u64(vshlq_n_s64(v29, 0x38uLL), v29, 8uLL);
  v36 = vsraq_n_u64(vshlq_n_s64(v30, 0x38uLL), v30, 8uLL);
  v37 = vorrq_s8(vandq_s8(vsubq_s64(v22, v36), v14), vandq_s8(vaddq_s64(v36, v11), *&STACK[0x510]));
  v38 = vandq_s8(vsubq_s64(v22, v33), v14);
  v39 = vandq_s8(vaddq_s64(v33, v11), *&STACK[0x510]);
  v40 = vorrq_s8(vandq_s8(vsubq_s64(v22, v35), v14), vandq_s8(vaddq_s64(v35, v11), *&STACK[0x510]));
  v41 = vorrq_s8(vandq_s8(vsubq_s64(v22, v34), v14), vandq_s8(vaddq_s64(v34, v11), *&STACK[0x510]));
  v42 = vorrq_s8(v38, v39);
  v43 = veorq_s8(v42, *&STACK[0x500]);
  v44 = veorq_s8(v41, *&STACK[0x500]);
  v45 = veorq_s8(v41, *&STACK[0x4F0]);
  v46 = veorq_s8(v42, *&STACK[0x4F0]);
  v47 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), v45), v13);
  v48 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL), v46), v13);
  v49 = veorq_s8(v48, vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL));
  v50 = veorq_s8(v47, vsraq_n_u64(vshlq_n_s64(v45, 3uLL), v45, 0x3DuLL));
  v51 = vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL);
  v52 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v50);
  v53 = veorq_s8(vaddq_s64(v51, v49), *&STACK[0x4C0]);
  v54 = veorq_s8(v52, *&STACK[0x4C0]);
  v55 = veorq_s8(v54, vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL));
  v56 = veorq_s8(v53, vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL));
  v57 = vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL);
  v58 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v56);
  v59 = vaddq_s64(v57, v55);
  v60 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v59, v59), v15), v59), v16), v17);
  v61 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v58, v58), v15), v58), v16), v17);
  v62 = veorq_s8(v61, vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL));
  v63 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL));
  v64 = vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v63);
  v66 = veorq_s8(vaddq_s64(v64, v62), v18);
  v67 = veorq_s8(v65, v18);
  v68 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v69 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v70 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v69);
  v72 = vaddq_s64(v70, v68);
  v73 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v72, v72), v19), v72), v20), v21);
  v74 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v71, v71), v19), v71), v20), v21);
  v75 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v76 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v77 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v76);
  v79 = veorq_s8(vaddq_s64(v77, v75), v23);
  v80 = veorq_s8(v78, v23);
  v81 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v82 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v83 = veorq_s8(v79, v81);
  v81.i64[0] = v10 + a4 - 1;
  v81.i64[1] = v10 + a4 - 2;
  v178.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v83), *&STACK[0x430]), vnegq_s64(vandq_s8(vshlq_n_s64(v25, 3uLL), v12)));
  v178.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v82), *&STACK[0x430]), vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), v12)));
  v84 = veorq_s8(v40, *&STACK[0x500]);
  v85 = veorq_s8(v40, *&STACK[0x4F0]);
  v86 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v85), v13);
  v87 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL));
  v88 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v87), *&STACK[0x4C0]);
  v89 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v90 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v89);
  v91 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v90, v90), v15), v90), v16), v17);
  v92 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v93 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v92), v18);
  v94 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v94);
  v96 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v95, v95), v19), v95), v20), v21);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v98 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97), v23);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v100 = vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL);
  v98.i64[0] = v10 + a4 + 1;
  v98.i64[1] = v10 + a4;
  v101 = vaddq_s64(v100, v99);
  v102 = vandq_s8(v98, *&STACK[0x560]);
  v178.val[0] = vshlq_u64(veorq_s8(v101, *&STACK[0x430]), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), v12)));
  v103 = veorq_s8(v37, *&STACK[0x500]);
  v104 = veorq_s8(v37, *&STACK[0x4F0]);
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104), v13);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106), *&STACK[0x4C0]);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v109, v109), v15), v109), v16), v17);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111), v18);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113);
  v115 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v114, v114), v19), v114), v20), v21);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116), v23);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v119 = vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL);
  v120 = vandq_s8(v81, *&STACK[0x560]);
  v121 = vaddq_s64(v119, v118);
  v122 = vandq_s8(*&STACK[0x580], *&STACK[0x560]);
  v178.val[1] = vshlq_u64(veorq_s8(v121, *&STACK[0x430]), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v12)));
  v123 = vandq_s8(*&STACK[0x590], *&STACK[0x560]);
  v124 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v125 = vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL);
  v126 = vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL);
  v127 = vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL);
  v128 = vorrq_s8(vandq_s8(vsubq_s64(v22, v127), v14), vandq_s8(vaddq_s64(v127, v11), *&STACK[0x510]));
  v129 = vorrq_s8(vandq_s8(vsubq_s64(v22, v126), v14), vandq_s8(vaddq_s64(v126, v11), *&STACK[0x510]));
  v130 = vorrq_s8(vandq_s8(vsubq_s64(v22, v125), v14), vandq_s8(vaddq_s64(v125, v11), *&STACK[0x510]));
  v131 = vorrq_s8(vandq_s8(vsubq_s64(v22, v124), v14), vandq_s8(vaddq_s64(v124, v11), *&STACK[0x510]));
  v125.i64[0] = vqtbl4q_s8(v178, *&STACK[0x570]).u64[0];
  v178.val[0] = veorq_s8(v131, *&STACK[0x500]);
  v178.val[1] = veorq_s8(v130, *&STACK[0x500]);
  v178.val[2] = veorq_s8(v130, *&STACK[0x4F0]);
  v178.val[3] = veorq_s8(v131, *&STACK[0x4F0]);
  v178.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), v178.val[2]), v13);
  v178.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL), v178.val[3]), v13);
  v132 = vsraq_n_u64(vshlq_n_s64(v178.val[2], 3uLL), v178.val[2], 0x3DuLL);
  v178.val[2] = veorq_s8(v178.val[0], vsraq_n_u64(vshlq_n_s64(v178.val[3], 3uLL), v178.val[3], 0x3DuLL));
  v178.val[3] = veorq_s8(v178.val[1], v132);
  v133 = vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL);
  v178.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), v178.val[3]);
  v178.val[1] = veorq_s8(vaddq_s64(v133, v178.val[2]), *&STACK[0x4C0]);
  v134 = vsraq_n_u64(vshlq_n_s64(v178.val[2], 3uLL), v178.val[2], 0x3DuLL);
  v178.val[0] = veorq_s8(v178.val[0], *&STACK[0x4C0]);
  v178.val[2] = veorq_s8(v178.val[0], vsraq_n_u64(vshlq_n_s64(v178.val[3], 3uLL), v178.val[3], 0x3DuLL));
  v178.val[3] = veorq_s8(v178.val[1], v134);
  v135 = vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL);
  v178.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), v178.val[3]);
  v178.val[1] = vaddq_s64(v135, v178.val[2]);
  v178.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v178.val[1], v178.val[1]), v15), v178.val[1]), v16), v17);
  v178.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v178.val[0], v178.val[0]), v15), v178.val[0]), v16), v17);
  v136 = vsraq_n_u64(vshlq_n_s64(v178.val[2], 3uLL), v178.val[2], 0x3DuLL);
  v178.val[2] = veorq_s8(v178.val[0], vsraq_n_u64(vshlq_n_s64(v178.val[3], 3uLL), v178.val[3], 0x3DuLL));
  v178.val[3] = veorq_s8(v178.val[1], v136);
  v137 = vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL);
  v178.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), v178.val[3]);
  v178.val[1] = veorq_s8(vaddq_s64(v137, v178.val[2]), v18);
  v138 = vsraq_n_u64(vshlq_n_s64(v178.val[2], 3uLL), v178.val[2], 0x3DuLL);
  v178.val[0] = veorq_s8(v178.val[0], v18);
  v178.val[2] = veorq_s8(v178.val[0], vsraq_n_u64(vshlq_n_s64(v178.val[3], 3uLL), v178.val[3], 0x3DuLL));
  v178.val[3] = veorq_s8(v178.val[1], v138);
  v139 = vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL);
  v178.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), v178.val[3]);
  v178.val[1] = vaddq_s64(v139, v178.val[2]);
  v178.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v178.val[1], v178.val[1]), v19), v178.val[1]), v20), v21);
  v178.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v178.val[0], v178.val[0]), v19), v178.val[0]), v20), v21);
  v140 = vsraq_n_u64(vshlq_n_s64(v178.val[2], 3uLL), v178.val[2], 0x3DuLL);
  v178.val[2] = veorq_s8(v178.val[0], vsraq_n_u64(vshlq_n_s64(v178.val[3], 3uLL), v178.val[3], 0x3DuLL));
  v178.val[3] = veorq_s8(v178.val[1], v140);
  v141 = vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL);
  v178.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), v178.val[3]);
  v178.val[1] = veorq_s8(vaddq_s64(v141, v178.val[2]), v23);
  v142 = vsraq_n_u64(vshlq_n_s64(v178.val[2], 3uLL), v178.val[2], 0x3DuLL);
  v178.val[0] = veorq_s8(v178.val[0], v23);
  v178.val[2] = veorq_s8(v178.val[0], vsraq_n_u64(vshlq_n_s64(v178.val[3], 3uLL), v178.val[3], 0x3DuLL));
  v178.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), veorq_s8(v178.val[1], v142)), *&STACK[0x430]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x590], 3uLL), v12)));
  v178.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL), v178.val[2]), *&STACK[0x430]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x580], 3uLL), v12)));
  v143 = veorq_s8(v129, *&STACK[0x500]);
  v144 = veorq_s8(v129, *&STACK[0x4F0]);
  v145 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), v144), v13);
  v146 = veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v147 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), v146), *&STACK[0x4C0]);
  v148 = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL));
  v149 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL), v148);
  v150 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v149, v149), v15), v149), v16), v17);
  v151 = veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v152 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v151), v18);
  v153 = veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v154 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), v153);
  v155 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v154, v154), v19), v154), v20), v21);
  v156 = veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v157 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), v156), v23);
  v178.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL))), *&STACK[0x430]), vnegq_s64(vandq_s8(vshlq_n_s64(v81, 3uLL), v12)));
  v158 = veorq_s8(v128, *&STACK[0x500]);
  v159 = veorq_s8(v128, *&STACK[0x4F0]);
  v160 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v159), v13);
  v161 = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v162 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v161), *&STACK[0x4C0]);
  v163 = vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL);
  v164 = vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL);
  v165 = veorq_s8(v162, v163);
  v166 = vaddq_s64(v164, v165);
  v167 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v166, v166), v15), v166), v16), v17);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v169 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168), v18);
  v170 = vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL);
  v171 = vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL);
  v172 = veorq_s8(v169, v170);
  v173 = vaddq_s64(v171, v172);
  v174 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v173, v173), v19), v173), v20), v21);
  v175 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL));
  v176 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v175), v23);
  v178.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL))), *&STACK[0x430]), vnegq_s64(vandq_s8(vshlq_n_s64(v98, 3uLL), v12)));
  v125.i64[1] = vqtbl4q_s8(v178, *&STACK[0x570]).u64[0];
  v178.val[1] = vrev64q_s8(v125);
  *(v98.i64[1] - 6) = veorq_s8(vextq_s8(v178.val[1], v178.val[1], 8uLL), *(a8 + a4));
  return (*(a1 + 8 * (((a7 == 0) * v9) ^ a6)))();
}