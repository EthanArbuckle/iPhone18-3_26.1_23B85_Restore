uint64_t sub_100A1E2D8()
{
  v2 = *(v0 + 832);
  v3 = *STACK[0x51E8];
  v4 = *STACK[0x51F0];
  v5 = *(v4 + (v3 & ((v2 & 0xFFFFFFF8 ^ 0x252F7359) - 1207981050 + ((2 * (v2 & 0xFFFFFFF8)) | 0xB5A1194D)) & 0xFFFFFFF8));
  v6 = (__ROR8__(v2 & 0xFFFFFFFFFFFFFFF8, 8) + v5) ^ 0xC2AF3EAA3FF1B8E4;
  v7 = v6 ^ __ROR8__(v5, 61);
  v8 = __ROR8__(v6, 8);
  v9 = (((2 * (v8 + v7)) | 0x7B273150255C0C7ELL) - (v8 + v7) - 0x3D9398A812AE063FLL) ^ 0x5861CC750A23B2C3;
  v10 = v9 ^ __ROR8__(v7, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0x6FF046966119128DLL;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0xA1B29DC5D776132BLL;
  v14 = __ROR8__(v13, 8);
  v15 = v13 ^ __ROR8__(v12, 61);
  v16 = (0x7203BAF5E87408C5 - ((v14 + v15) | 0x7203BAF5E87408C5) + ((v14 + v15) | 0x8DFC450A178BF73ALL)) ^ 0x62F8654BE26EBFD6;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (((2 * (v18 + v17)) | 0x3D70BF76A4B52220) - (v18 + v17) - 0x1EB85FBB525A9110) ^ 0xC67FECA4984348CELL;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (((2 * (v21 + v20)) | 0x1B8B87E3FBAF600CLL) - (v21 + v20) + 0x723A3C0E02284FFALL) ^ 0xD990C2DF77667389;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = __ROR8__(v22, 8);
  LODWORD(v22) = 5621 * ((((v24 + v23 - ((2 * (v24 + v23)) & 0xAE54C39790591036) - 0x28D59E3437D377E5) ^ 0xB8650177C62ED6FBLL) >> (8 * (v2 & 7u))) ^ *(v0 + 295)) + 32028458;
  LODWORD(v14) = v22 - 6152 * (((89362129 * v22) >> 32) >> 7);
  v25 = STACK[0xDCB8];
  LOBYTE(v14) = *(STACK[0xDCB8] + v14);
  v25[5826] = *(v0 + 465);
  v25[4506] = v14;
  v25[205] = *(v0 + 463);
  v26 = STACK[0xDCA8] + 7;
  v27 = *(v4 + (((v26 & 0x54B29CB8) + (v26 & 0xAB4D6340 | 0x54B29CBE) - 1976820438) & v3));
  v28 = __ROR8__(v26 & 0xFFFFFFFFFFFFFFF8, 8);
  v29 = (0x8DE8E174A629AEDBLL - ((v28 + v27) | 0x8DE8E174A629AEDBLL) + ((v28 + v27) | 0x72171E8B59D65124)) ^ 0x7B047A57EF5565FFLL;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x448D6F6CA711D855;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (((2 * (v33 + v32)) & 0xBC815A9EF9D51988) - (v33 + v32) + 0x21BF52B08315733BLL) ^ 0xD44DAC638BBF5143;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x67536EC0FB8B549DLL;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ v1;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (((2 * (v40 + v39)) | 0xB9E0E326C9A44542) - (v40 + v39) + 0x230F8E6C9B2DDD5FLL) ^ 0xF8833AF6C532A6F8;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (0xDFAA1C93237BFF49 - ((v43 + v42) | 0xDFAA1C93237BFF49) + ((v43 + v42) | 0x2055E36CDC8400B6)) ^ 0x609C2C86E041CB57;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = __ROR8__(v44, 8);
  LODWORD(v45) = 5621 * ((((0xA9EBA48295FC7FE8 - ((v46 + v45) | 0xA9EBA48295FC7FE8) + ((v46 + v45) | 0x56145B7D6A038017)) ^ 0x397707538FD452D1) >> (8 * (v26 & 7u))) ^ *v26) + 32028458;
  v25[1631] = v25[v45 - 6152 * (((89362129 * v45) >> 32) >> 7)];
  v47 = STACK[0xDCA0] + 41;
  *(v0 + 296) = v47;
  v48 = STACK[0x4D40];
  v49 = STACK[0x57D8];
  v50 = *(STACK[0x57D8] + 8 * (STACK[0x4D40] ^ 0x156A));
  *(v0 + 840) = v47;
  *(v0 + 280) = v50;
  return (*(v49 + 8 * (v48 ^ 0x15E8)))();
}

uint64_t sub_100A1E7D8()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 29629)))(v1);
  STACK[0x7FF8] = 0;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_100A1E810()
{
  v3 = *(v0 + 856);
  v4 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v3 & 0x3D69728 | 0xFC2968D7) - 1831847764 + (v3 & 0xFC2968D0 | 0x3D69728) + 1)) & 0xFFFFFFFFFFFFFFF8));
  v5 = (__ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8) + v4) ^ 0xC2AF3EAA3FF1B8E4;
  v6 = __ROR8__(v5, 8);
  v7 = v5 ^ __ROR8__(v4, 61);
  v8 = (v6 + v7) ^ 0x65F254DD188DB4FCLL;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = __ROR8__(v8, 8);
  v11 = (0xEFD1DBDE53A58DF1 - ((v10 + v9) | 0xEFD1DBDE53A58DF1) + ((v10 + v9) | 0x102E2421AC5A720ELL)) ^ 0x7FDE62B7CD436083;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = __ROR8__(v11, 8);
  v14 = __ROR8__((((v13 + v12) & 0x306FEB00F0D38604 ^ 0x30606100F0810600) + ((v13 + v12) ^ 0xC59F8A6A0A5AD947) - (((v13 + v12) ^ 0xC59F8A6A0A5AD947) & 0x306FEB00F0D38604)) ^ 0x5442FCAF2DFF4C68, 8);
  v15 = (((v13 + v12) & 0x306FEB00F0D38604 ^ 0x30606100F0810600) + ((v13 + v12) ^ 0xC59F8A6A0A5AD947) - (((v13 + v12) ^ 0xC59F8A6A0A5AD947) & 0x306FEB00F0D38604)) ^ 0x5442FCAF2DFF4C68 ^ __ROR8__(v12, 61);
  v16 = (v14 + v15) ^ v2;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0xD8C7B31FCA19D9DELL;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (((2 * (v20 + v19)) & 0x79DEBDF7A4853304) - (v20 + v19) + 0x4310A1042DBD667DLL) ^ 0x1745A02AA70CA5F2;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = __ROR8__(v21, 8);
  v24 = 5621 * ((((((2 * (v23 + v22)) & 0xD9C782EB88A1F49CLL) - (v23 + v22) - 0x6CE3C175C450FA4FLL) ^ 0xFC535E3635AD5B51) >> (8 * (v3 & 7u))) ^ *(v0 + 295)) + 32028458;
  *(STACK[0xDCB8] + 6008) = *(STACK[0xDCB8] + v24 - 6152 * (((89362129 * v24) >> 32) >> 7));
  v25 = *(v0 + 848) + 35;
  *(v0 + 296) = v25;
  v26 = STACK[0x57D8];
  v27 = *(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9013));
  *(v0 + 864) = v25;
  *(v0 + 280) = v27;
  return (*(v26 + 8 * (v1 ^ 0x2F92)))();
}

uint64_t sub_100A1EAB4()
{
  v1 = *(v0 + 880);
  v2 = *(*STACK[0x51F0] + ((((((2 * (v1 & 0xFFFFFFF8)) & 0x2F6541E0) + (v1 & 0xFFFFFFF8 ^ 0x17B2A0F4)) & 0xFFFFFFF8) + 2065536952) & *STACK[0x51E8]));
  v3 = (__ROR8__(v1 & 0xFFFFFFFFFFFFFFF8, 8) + v2) ^ 0xC2AF3EAA3FF1B8E4;
  v4 = v3 ^ __ROR8__(v2, 61);
  v5 = (__ROR8__(v3, 8) + v4) ^ 0x65F254DD188DB4FCLL;
  v6 = v5 ^ __ROR8__(v4, 61);
  v7 = __ROR8__(v5, 8);
  v8 = (0x73B515D3A406B1CELL - ((v7 + v6) | 0x73B515D3A406B1CELL) + ((v7 + v6) | 0x8C4AEA2C5BF94E31)) ^ 0xE3BAACBA3AE05CBCLL ^ __ROR8__(v6, 61);
  v9 = (__ROR8__((0x73B515D3A406B1CELL - ((v7 + v6) | 0x73B515D3A406B1CELL) + ((v7 + v6) | 0x8C4AEA2C5BF94E31)) ^ 0xE3BAACBA3AE05CBCLL, 8) + v8) ^ 0xA1B29DC5D776132BLL;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = __ROR8__(v9, 8);
  v12 = __ROR8__((((v11 + v10) ^ 0x1E31BAA1DC23B2DALL) - ((2 * ((v11 + v10) ^ 0x1E31BAA1DC23B2DALL)) & 0xFDD74DAF3E9C0FD6) + 0x7EEBA6D79F4E07EBLL) ^ 0x8FDE3C37B688FDDDLL, 8);
  v13 = (((v11 + v10) ^ 0x1E31BAA1DC23B2DALL) - ((2 * ((v11 + v10) ^ 0x1E31BAA1DC23B2DALL)) & 0xFDD74DAF3E9C0FD6) + 0x7EEBA6D79F4E07EBLL) ^ 0x8FDE3C37B688FDDDLL ^ __ROR8__(v10, 61);
  v14 = (v12 + v13) ^ 0xD8C7B31FCA19D9DELL;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0x5455012E8AB1C38FLL;
  v17 = 5621 * ((((__ROR8__(v16, 8) + (v16 ^ __ROR8__(v15, 61))) ^ 0x6F4F60BC0E025EE0uLL) >> (8 * (v1 & 7u))) ^ *(v0 + 295)) + 32028458;
  *(STACK[0xDCB8] + 2071) = *(STACK[0xDCB8] + v17 - 6152 * (((89362129 * v17) >> 32) >> 7));
  v18 = *(v0 + 872) + 8;
  *(v0 + 888) = v18;
  *(v0 + 296) = v18;
  v19 = STACK[0x57D8];
  *(v0 + 280) = *(STACK[0x57D8] + 8 * (LODWORD(STACK[0x4D6C]) ^ 0x23D8));
  return (*(v19 + 8 * (*(v0 + 3764) + 8890)))();
}

uint64_t sub_100A1ED04()
{
  v4 = STACK[0xDCB8];
  LODWORD(STACK[0x5710]) = *(STACK[0xDCB8] + 5136);
  LODWORD(STACK[0x57A0]) = v4[1563];
  LODWORD(STACK[0x57C0]) = *(v2 + 418);
  LODWORD(STACK[0x5740]) = v4[1381];
  STACK[0x56D0] = (v4 + 4096);
  LODWORD(STACK[0x5720]) = v4[4180];
  LODWORD(STACK[0x5780]) = v4[3687];
  STACK[0x5308] = v4;
  *(STACK[0xDCB0] + 4 * ((6419 * v0 + 36215998) % 0x2240u)) = v3;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_100A1EFC0@<X0>(unsigned int a1@<W8>)
{
  v1 = *(STACK[0x5770] + 8);
  LODWORD(STACK[0x5740]) = *v1;
  LODWORD(STACK[0x5730]) = (((a1 ^ 0xFFFFB546) & v1) - 133448597) & 0xFFFFFFF8;
  STACK[0x5720] = __ROR8__((a1 ^ 0xFFFFFFFFFFFFB546) & v1, 8);
  STACK[0x5710] = 8 * (v1 & 7);
  v2 = STACK[0x5790];
  STACK[0x5700] = (STACK[0x5790] - 1);
  v3 = *(STACK[0x57D8] + 8 * a1);
  STACK[0x56F0] = 4 * v2;
  return v3();
}

uint64_t sub_100A1F0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, int a8)
{
  v14 = v9 - 1;
  *(v11 + v14) = *(v13 + v14) ^ *(v12 + v14) ^ (v10 + a7) ^ (7 * v14) ^ *(v8 + v14) ^ *(a2 + v14);
  return (*(STACK[0x57D8] + 8 * (((v14 == 0) * a8) ^ v10)))();
}

uint64_t sub_100A1F114@<X0>(int a1@<W6>, uint64_t a2@<X8>)
{
  *&STACK[0x5790] = *(v6 + v2 - 16);
  v14.i64[0] = v6 + v2 - 15;
  v14.i64[1] = v6 + v2 - 16;
  *&STACK[0x5780] = v14;
  v14.i64[0] = v6 + v2 - 13;
  v14.i64[1] = v6 + v2 - 14;
  v15 = v14;
  v14.i64[0] = v6 + v2 - 11;
  v14.i64[1] = v6 + v2 - 12;
  *&STACK[0x57C0] = v14;
  v16.i64[0] = v6 + v2 - 7;
  v16.i64[1] = v6 + v2 - 8;
  v17.i64[0] = v6 + v2 - 5;
  v17.i64[1] = v6 + v2 - 6;
  v18.i64[0] = v6 + v2 - 1;
  v18.i64[1] = v6 + v2 - 2;
  v19.i64[0] = v6 + v2 - 3;
  v19.i64[1] = v6 + v2 + (v4 ^ a2);
  v20 = *&STACK[0x4D70];
  v21 = vandq_s8(v19, *&STACK[0x4D70]);
  v22 = vandq_s8(v18, *&STACK[0x4D70]);
  v23 = vandq_s8(v17, *&STACK[0x4D70]);
  v24 = vandq_s8(v16, *&STACK[0x4D70]);
  v25 = *&STACK[0x4BD0];
  v26 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v21, 0x38uLL), v21, 8uLL), *&STACK[0x4BD0]);
  v27 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v22, 0x38uLL), v22, 8uLL), *&STACK[0x4BD0]);
  v28 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v23, 0x38uLL), v23, 8uLL), *&STACK[0x4BD0]);
  v29 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v24, 0x38uLL), v24, 8uLL), *&STACK[0x4BD0]);
  v30 = *&STACK[0x5750];
  v31 = vsubq_s64(vorrq_s8(v26, *&STACK[0x5750]), vorrq_s8(v26, v12));
  v32 = vaddq_s64(vsubq_s64(vorrq_s8(v29, *&STACK[0x5750]), vorrq_s8(v29, v12)), v12);
  v33 = vaddq_s64(vsubq_s64(vorrq_s8(v28, *&STACK[0x5750]), vorrq_s8(v28, v12)), v12);
  v34 = veorq_s8(v33, v11);
  v35 = veorq_s8(v32, v11);
  v36 = *&STACK[0x5740];
  v37 = veorq_s8(v32, *&STACK[0x5740]);
  v38 = veorq_s8(v33, *&STACK[0x5740]);
  v39 = *&STACK[0x44D0];
  v40 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL), v37), *&STACK[0x44D0]);
  v41 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL), v38), *&STACK[0x44D0]);
  v42 = veorq_s8(v41, vsraq_n_u64(vshlq_n_s64(v38, 3uLL), v38, 0x3DuLL));
  v43 = veorq_s8(v40, vsraq_n_u64(vshlq_n_s64(v37, 3uLL), v37, 0x3DuLL));
  v44 = vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL);
  v45 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL), v43);
  v46 = veorq_s8(vaddq_s64(v44, v42), *&STACK[0x4600]);
  v47 = veorq_s8(v45, *&STACK[0x4600]);
  v48 = *&STACK[0x4600];
  v49 = vsraq_n_u64(vshlq_n_s64(v42, 3uLL), v42, 0x3DuLL);
  v50 = veorq_s8(v47, vsraq_n_u64(vshlq_n_s64(v43, 3uLL), v43, 0x3DuLL));
  v51 = veorq_s8(v46, v49);
  v52 = vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL);
  v53 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v51);
  v54 = *&STACK[0x4470];
  v55 = veorq_s8(vaddq_s64(v52, v50), *&STACK[0x4470]);
  v56 = vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL);
  v57 = veorq_s8(v53, *&STACK[0x4470]);
  v58 = veorq_s8(v57, vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL));
  v59 = veorq_s8(v55, v56);
  v60 = vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL);
  v61 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v59);
  v62 = vaddq_s64(v60, v58);
  v63 = *&STACK[0x5700];
  v64 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v61, *&STACK[0x5700]), vorrq_s8(v61, v13)), v13), *&STACK[0x57B0]);
  v65 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v62, *&STACK[0x5700]), vorrq_s8(v62, v13)), v13), *&STACK[0x57B0]);
  v66 = vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL);
  v67 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v68 = veorq_s8(v64, v66);
  v69 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v68);
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v67);
  v71 = *&STACK[0x57A0];
  v72 = *&STACK[0x56F0];
  v73 = *&STACK[0x5730];
  v74 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v70, v70), *&STACK[0x57A0]), v70), *&STACK[0x56F0]), *&STACK[0x5730]);
  v75 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v69, v69), *&STACK[0x57A0]), v69), *&STACK[0x56F0]), *&STACK[0x5730]);
  v76 = vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL);
  v77 = veorq_s8(v75, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v78 = veorq_s8(v74, v76);
  v79 = vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL);
  v80 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL), v78);
  v81 = vaddq_s64(v79, v77);
  v82 = *&STACK[0x5720];
  v83 = *&STACK[0x5710];
  v84 = veorq_s8(vaddq_s64(vsubq_s64(v81, vandq_s8(vaddq_s64(v81, v81), *&STACK[0x5720])), *&STACK[0x5710]), v10);
  v85 = vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL);
  v86 = veorq_s8(vaddq_s64(vsubq_s64(v80, vandq_s8(vaddq_s64(v80, v80), *&STACK[0x5720])), *&STACK[0x5710]), v10);
  v87 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL));
  v88 = v11;
  v89 = v10;
  v90 = vdupq_n_s64(v9);
  v91 = vaddq_s64(vsubq_s64(vorrq_s8(v27, *&STACK[0x5750]), vorrq_s8(v27, v12)), v12);
  v92 = *&STACK[0x4620];
  v199.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), veorq_s8(v84, v85)), *&STACK[0x4620]), vnegq_s64(vandq_s8(vshlq_n_s64(v16, 3uLL), v90)));
  v199.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v87), *&STACK[0x4620]), vnegq_s64(vandq_s8(vshlq_n_s64(v17, 3uLL), v90)));
  v93 = veorq_s8(v91, v88);
  v94 = veorq_s8(v91, *&STACK[0x5740]);
  v95 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v94), *&STACK[0x44D0]);
  v96 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v97 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96), *&STACK[0x4600]);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v99 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98), *&STACK[0x4470]);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100);
  v102 = *&STACK[0x57B0];
  v103 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v101, *&STACK[0x5700]), vorrq_s8(v101, v13)), v13), *&STACK[0x57B0]);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104);
  v106 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v105, v105), *&STACK[0x57A0]), v105), *&STACK[0x56F0]), *&STACK[0x5730]);
  v107 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107);
  v109 = veorq_s8(vaddq_s64(vsubq_s64(v108, vandq_s8(vaddq_s64(v108, v108), *&STACK[0x5720])), *&STACK[0x5710]), v89);
  v14.i64[0] = v6 + v2 - 9;
  v14.i64[1] = v6 + v2 - 10;
  *&STACK[0x5770] = v14;
  v110 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL)));
  v111 = vandq_s8(v14, v20);
  v112 = vaddq_s64(v31, v12);
  v199.val[0] = vshlq_u64(veorq_s8(v110, v92), vnegq_s64(vandq_s8(vshlq_n_s64(v18, 3uLL), v90)));
  v113 = veorq_s8(v112, v88);
  v114 = veorq_s8(v112, v36);
  v115 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114), v39);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116), v48);
  v118 = v48;
  v119 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v119), v54);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121);
  v123 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v122, v63), vorrq_s8(v122, v13)), v13), v102);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124);
  v126 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v125, v125), v71), v125), v72), v73);
  v127 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v128 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v127);
  v129 = veorq_s8(vaddq_s64(vsubq_s64(v128, vandq_s8(vaddq_s64(v128, v128), v82)), v83), v89);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v131 = vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL);
  v132 = vandq_s8(*&STACK[0x57C0], v20);
  v133 = vaddq_s64(v131, v130);
  v134 = v15;
  v135 = vandq_s8(v15, v20);
  v199.val[1] = vshlq_u64(veorq_s8(v133, v92), vnegq_s64(vandq_s8(vshlq_n_s64(v19, 3uLL), v90)));
  v136 = *&STACK[0x5780];
  v137 = vandq_s8(*&STACK[0x5780], v20);
  v138 = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v139 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v140 = vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL);
  v141 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v25);
  v142 = vaddq_s64(v140, v25);
  v143 = vaddq_s64(v139, v25);
  v144 = vaddq_s64(v138, v25);
  *&STACK[0x5760] = vsubq_s64(vorrq_s8(v141, v30), vorrq_s8(v141, v12));
  v145 = vaddq_s64(vsubq_s64(vorrq_s8(v144, v30), vorrq_s8(v144, v12)), v12);
  v146 = vaddq_s64(vsubq_s64(vorrq_s8(v143, v30), vorrq_s8(v143, v12)), v12);
  v147 = v8[25];
  v141.i64[0] = vqtbl4q_s8(v199, v147).u64[0];
  v199.val[0] = veorq_s8(v146, v88);
  v199.val[1] = veorq_s8(v145, v88);
  v148 = veorq_s8(v145, v36);
  v199.val[2] = veorq_s8(v146, v36);
  v199.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[1], 0x38uLL), v199.val[1], 8uLL), v148), v39);
  v199.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL), v199.val[2]), v39);
  v149 = v39;
  v199.val[3] = vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL);
  v150 = veorq_s8(v199.val[0], vsraq_n_u64(vshlq_n_s64(v199.val[2], 3uLL), v199.val[2], 0x3DuLL));
  v199.val[2] = veorq_s8(v199.val[1], v199.val[3]);
  v199.val[3] = vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL);
  v199.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[1], 0x38uLL), v199.val[1], 8uLL), v199.val[2]);
  v199.val[1] = veorq_s8(vaddq_s64(v199.val[3], v150), v48);
  v199.val[3] = vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL);
  v199.val[0] = veorq_s8(v199.val[0], v48);
  v151 = veorq_s8(v199.val[0], vsraq_n_u64(vshlq_n_s64(v199.val[2], 3uLL), v199.val[2], 0x3DuLL));
  v199.val[2] = veorq_s8(v199.val[1], v199.val[3]);
  v199.val[3] = vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL);
  v199.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[1], 0x38uLL), v199.val[1], 8uLL), v199.val[2]);
  v152 = v54;
  v199.val[1] = veorq_s8(vaddq_s64(v199.val[3], v151), v54);
  v199.val[3] = vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL);
  v153 = veorq_s8(v199.val[0], v54);
  v199.val[0] = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v199.val[2], 3uLL), v199.val[2], 0x3DuLL));
  v199.val[2] = veorq_s8(v199.val[1], v199.val[3]);
  v199.val[3] = vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL);
  v154 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[1], 0x38uLL), v199.val[1], 8uLL), v199.val[2]);
  v199.val[1] = vaddq_s64(v199.val[3], v199.val[0]);
  v155 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v154, v63), vorrq_s8(v154, v13)), v13), *&STACK[0x57B0]);
  v199.val[3] = vsraq_n_u64(vshlq_n_s64(v199.val[2], 3uLL), v199.val[2], 0x3DuLL);
  v199.val[2] = vsraq_n_u64(vshlq_n_s64(v199.val[0], 3uLL), v199.val[0], 0x3DuLL);
  v199.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v199.val[1], v63), vorrq_s8(v199.val[1], v13)), v13), *&STACK[0x57B0]);
  v199.val[1] = veorq_s8(v199.val[0], v199.val[2]);
  v199.val[2] = veorq_s8(v155, v199.val[3]);
  v156 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), v199.val[2]);
  v199.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL), v199.val[1]);
  v199.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v199.val[0], v199.val[0]), *&STACK[0x57A0]), v199.val[0]), v72), v73);
  v157 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v156, v156), *&STACK[0x57A0]), v156), v72), v73);
  v199.val[3] = vsraq_n_u64(vshlq_n_s64(v199.val[1], 3uLL), v199.val[1], 0x3DuLL);
  v199.val[1] = veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v199.val[2], 3uLL), v199.val[2], 0x3DuLL));
  v199.val[2] = veorq_s8(v199.val[0], v199.val[3]);
  v199.val[3] = vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL);
  v158 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL), v199.val[2]);
  v199.val[0] = vaddq_s64(v199.val[3], v199.val[1]);
  v199.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v199.val[0], vandq_s8(vaddq_s64(v199.val[0], v199.val[0]), v82)), v83), v89);
  v159 = veorq_s8(vaddq_s64(vsubq_s64(v158, vandq_s8(vaddq_s64(v158, v158), v82)), v83), v89);
  v160 = vaddq_s64(vsubq_s64(vorrq_s8(v142, v30), vorrq_s8(v142, v12)), v12);
  v199.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL), veorq_s8(v199.val[0], vsraq_n_u64(vshlq_n_s64(v199.val[1], 3uLL), v199.val[1], 0x3DuLL))), v92), vnegq_s64(vandq_s8(vshlq_n_s64(v136, 3uLL), v90)));
  v199.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v199.val[2], 3uLL), v199.val[2], 0x3DuLL))), v92), vnegq_s64(vandq_s8(vshlq_n_s64(v134, 3uLL), v90)));
  v161 = veorq_s8(v160, v88);
  v162 = veorq_s8(v160, v36);
  v163 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v162), v149);
  v164 = veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  v165 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v164), v118);
  v166 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL));
  v167 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166), v152);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168);
  v170 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v169, v63), vorrq_s8(v169, v13)), v13), *&STACK[0x57B0]);
  v171 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v172 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171);
  v173 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v172, v172), *&STACK[0x57A0]), v172), v72), v73);
  v174 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v175 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v174);
  v176 = veorq_s8(vaddq_s64(vsubq_s64(v175, vandq_s8(vaddq_s64(v175, v175), v82)), v83), v89);
  v177 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL)));
  v178 = vaddq_s64(*&STACK[0x5760], v12);
  v199.val[1] = vshlq_u64(veorq_s8(v177, v92), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x57C0], 3uLL), v90)));
  v179 = veorq_s8(v178, v88);
  v180 = vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL);
  v181 = veorq_s8(v178, v36);
  v182 = veorq_s8(vaddq_s64(v180, v181), v149);
  v183 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL));
  v184 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), v183), v118);
  v185 = veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  v186 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v185), v152);
  v187 = veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v188 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v187);
  v189 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v188, v63), vorrq_s8(v188, v13)), v13), *&STACK[0x57B0]);
  v190 = veorq_s8(v189, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL));
  v191 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), v190);
  v192 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v191, v191), *&STACK[0x57A0]), v191), v72), v73);
  v193 = veorq_s8(v192, vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL));
  v194 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192, 0x38uLL), v192, 8uLL), v193);
  v195 = veorq_s8(vaddq_s64(vsubq_s64(v194, vandq_s8(vaddq_s64(v194, v194), v82)), v83), v89);
  v199.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL), veorq_s8(v195, vsraq_n_u64(vshlq_n_s64(v193, 3uLL), v193, 0x3DuLL))), v92), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5770], 3uLL), v90)));
  v141.i64[1] = vqtbl4q_s8(v199, v147).u64[0];
  v196 = vrev64q_s8(*&STACK[0x5790]);
  v92.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v92.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  v197 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v196, v196, 8uLL), v92), v141));
  *(v7 + v2) = vextq_s8(v197, v197, 8uLL);
  return (*(STACK[0x57D8] + 8 * (((v5 != v2) * a1) ^ v3)))();
}

uint64_t sub_100A1FC14()
{
  v1 = *(v0 + 2944);
  v2 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v1 & 0x4C965EA8 | 0xB369A155) - 1831847764 + (v1 & 0xB369A150 | 0x4C965EAB))) & 0xFFFFFFFFFFFFFFF8));
  v3 = (v2 + __ROR8__(v1 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xC2AF3EAA3FF1B8E4;
  v4 = __ROR8__(v3, 8);
  v5 = v3 ^ __ROR8__(v2, 61);
  v6 = (((v4 + v5) ^ 0x1B06B8A1097BCF3DLL) - ((2 * ((v4 + v5) ^ 0x1B06B8A1097BCF3DLL)) & 0xC25A352DDA358D88) - 0x1ED2E56912E5393CLL) ^ 0x9FD9F6EAFCECBD05;
  v7 = v6 ^ __ROR8__(v5, 61);
  v8 = (__ROR8__(v6, 8) + v7) ^ 0x6FF046966119128DLL;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0xA1B29DC5D776132BLL;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = __ROR8__(v10, 8);
  v13 = (((2 * (v12 + v11)) & 0xF4CA66BC7EC0E38ALL) - (v12 + v11) - 0x7A65335E3F6071C6) ^ 0x6A9EECE0357AC6D6;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0xD8C7B31FCA19D9DELL;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (((v17 + v16) & 0xDDFF57BA72D8649 ^ 0x46E11BA5250441) + ((v17 + v16) & 0xF2200A8458D279B6 ^ 0xE200000048906085) - 1) ^ 0xB613E0356704A74ALL;
  v19 = 3903 * ((((__ROR8__(v18, 8) + (v18 ^ __ROR8__(v16, 61))) ^ 0x6F4F60BC0E025EE0) >> (8 * (v1 & 7u))) ^ *(v0 + 295)) + 4008381;
  *(*(v0 + 4000) + 36637) = *(*(v0 + 4008) + v19 - 5896 * (((1456909 * v19) >> 32) >> 1));
  v20 = *(v0 + 3984) + 40;
  *(v0 + 296) = v20;
  v21 = STACK[0x57D8];
  v22 = *(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x2324));
  *(v0 + 2952) = v20;
  *(v0 + 280) = v22;
  return (*(v21 + 8 * (LODWORD(STACK[0x4D68]) + 29306)))();
}

uint64_t sub_100A1FEFC()
{
  v0 = STACK[0x51B8] + 2391;
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))();
  STACK[0xAFD8] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_100A1FF58@<X0>(int a1@<W8>)
{
  v2 = a1 - 11630;
  v3 = (*(v1 + 8 * (a1 + 4769)))();
  return (*(v1 + 8 * v2))(v3);
}

uint64_t sub_100A1FF84()
{
  v1 = STACK[0x83D0];
  *v1 = 0u;
  v1[1] = 0u;
  return (*(STACK[0x57D8] + 8 * ((v0 + 4650) ^ v0)))();
}

uint64_t sub_100A2004C@<X0>(int a1@<W8>)
{
  STACK[0x74F0] = STACK[0x9810];
  LODWORD(STACK[0x988C]) = STACK[0x83F0];
  return (*(STACK[0x57D8] + 8 * (((LODWORD(STACK[0x8AE8]) == 0) * ((56 * (a1 ^ 0x59F3) - 13050) ^ (a1 - 12182))) ^ (a1 - 9063))))();
}

uint64_t sub_100A20374()
{
  v0 = STACK[0x1EC0];
  v1 = (STACK[0x1EC0] - 253806071) & 0xF20FEEF;
  v2 = STACK[0x57D8];
  STACK[0x91E8] = *(STACK[0x57D8] + 8 * STACK[0x1EC0]);
  return (*(v2 + 8 * (v0 ^ 0xA86 ^ v1)))();
}

uint64_t sub_100A204D0(_BYTE *a1)
{
  *a1 = v4;
  v5 = (((v3 - 9189) ^ 0xD35A) + (v1 ^ 0x85A9)) ^ ((v1 ^ 0xF74E) - 6427) ^ ((v1 ^ 0xF273) + ((v3 - 26370) | 0x631A) + 31871);
  v6 = v5 - 12506 + ((8834 - 2 * v5) | 0x3F31);
  a1[1] = HIBYTE(v6) ^ 0x60;
  a1[2] = v6 ^ 0x67;
  *v2 = 1;
  v7 = LOWORD(STACK[0x97D4]) - ((2 * LOWORD(STACK[0x97D4])) & 0xC0CE) + 24679;
  v2[1] = HIBYTE(v7) ^ 0x60;
  v2[2] = v7 ^ 0x67;
  return (*(STACK[0x57D8] + 8 * ((21 * (STACK[0xC478] + 0x1B67771B0EBF3B4ELL > (v2 + 0x1B67771B0EBF3B51))) ^ v3)))();
}

uint64_t sub_100A20640()
{
  LODWORD(STACK[0xB1F4]) = v1;
  v2 = STACK[0x57D8];
  STACK[0x9AC0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v2 + 8 * ((v0 ^ 0xCB4) + v0)))();
}

uint64_t sub_100A20810@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x53D0]) = v1;
  STACK[0x5430] = v4;
  v5 = *(STACK[0x57D8] + 8 * ((166 * (v1 <= 1447 * ((a1 - 827358281) & 0x315059F7 ^ 0x10F6u) - 4278)) ^ a1));
  LODWORD(STACK[0x5000]) = 103;
  LODWORD(STACK[0x5238]) = -25;
  LODWORD(STACK[0x4FB8]) = 19;
  LODWORD(STACK[0x51D0]) = -126;
  LODWORD(STACK[0x5400]) = v2;
  LODWORD(STACK[0x5350]) = v3;
  return v5();
}

uint64_t sub_100A20C94@<X0>(int a1@<W8>)
{
  STACK[0xB100] = 0x30BDFED8F32E6831;
  v1 = STACK[0x57D8];
  STACK[0x9270] = *(STACK[0x57D8] + 8 * a1);
  return (*(v1 + 8 * (a1 ^ 0x1737 ^ (23760 * (a1 + 1452965718 < (a1 ^ 0x7D3950A0u))))))();
}

uint64_t sub_100A20D9C@<X0>(unsigned int a1@<W0>, unsigned int a2@<W2>, uint64_t a3@<X3>, unsigned int a4@<W5>, int a5@<W6>, int a6@<W7>, uint64_t a7@<X8>)
{
  v25 = STACK[0x4FC0] + LODWORD(STACK[0x5420]) + a1;
  v26 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v25 & 0xFFFFFFF8) + (v10 ^ 0x7A3C6A4F))) & 0xFFFFFFFFFFFFFFF8));
  v27 = (__ROR8__(v25 & 0xFFFFFFFFFFFFFFF8, 8) + v26) ^ v14;
  v28 = __ROR8__(v27, 8);
  v29 = v27 ^ __ROR8__(v26, 61);
  v30 = (v28 + v29) ^ 0x38C8B16AE7056877;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = ((v24 | (2 * (v32 + v31))) - (v32 + v31) + a3) ^ v13;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (v35 + v34 - (v7 & (2 * (v35 + v34))) + v11) ^ v17;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = __ROR8__(v36, 8);
  v39 = ((v18 | (2 * (v38 + v37))) - (v38 + v37) + v19) ^ v20;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (a7 - ((v41 + v40) | a7) + ((v41 + v40) | v22)) ^ v23;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0xD2F00CE620E5D3AELL;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = __ROR8__(v44, 8);
  *v25 = (((v9 - ((v46 + v45) | v9) + ((v46 + v45) | v15)) ^ v16) >> (8 * (v25 & 7u))) ^ *(v21 + a1);
  LODWORD(v25) = a1 + 1 + v8;
  LODWORD(v44) = (a4 > a2) ^ (v25 < v8);
  v47 = v25 < v12;
  if (v44)
  {
    v47 = a4 > a2;
  }

  return (*(STACK[0x57D8] + 8 * ((!v47 * a5) ^ a6)))();
}

uint64_t sub_100A20F74()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))(v0);
  STACK[0x7920] = 0;
  return (*(v1 + 8 * SLODWORD(STACK[0x3650])))(v2);
}

uint64_t sub_100A20FA8@<X0>(int a1@<W8>)
{
  STACK[0xE290] = v2;
  LODWORD(STACK[0xE29C]) = v4;
  STACK[0xE2A0] = v3;
  LODWORD(STACK[0xE2A8]) = v1;
  LOBYTE(STACK[0xE2AF]) = v6;
  STACK[0xE2B0] = v7;
  STACK[0xE2B8] = v5;
  if (v2)
  {
    v8 = v3 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  return (*(STACK[0x57D8] + 8 * ((v9 * ((a1 - 3530) & 0x48C ^ 0x3FA)) ^ a1)))();
}

uint64_t sub_100A21484()
{
  STACK[0xEDA0] = v1;
  v2 = STACK[0x8F70];
  STACK[0xEDA8] = STACK[0x8F70];
  return (*(STACK[0x57D8] + 8 * (((v1 - v2 > (v0 ^ 0x1396uLL)) * (3 * (v0 ^ 0xEED) - 19695)) ^ v0)))();
}

uint64_t sub_100A21510()
{
  v0 = STACK[0x36C8];
  v1 = (7538 * (LODWORD(STACK[0x36C8]) ^ 0x6875) + 952614257) & 0xC737EF39;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (LODWORD(STACK[0x36C8]) + 5064)))(1280);
  STACK[0xA218] = v3;
  return (*(v2 + 8 * (((v1 ^ 0x5F4) * (v3 != 0)) ^ v0)))();
}

uint64_t sub_100A21590()
{
  STACK[0x6C98] = v0 - 0x683CBC57EAB92A36;
  v2 = STACK[0x6A90];
  LODWORD(STACK[0xC5A4]) = STACK[0xCC58];
  STACK[0x8BF0] = v2;
  STACK[0x7750] = 0;
  LODWORD(STACK[0x64F4]) = -769884012;
  STACK[0x99A8] = 0x8305A984834A17DDLL;
  STACK[0xB538] = 0;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x2EDA)))(16);
  STACK[0xAC48] = v4 + 0x308E083E0C524CBELL;
  return (*(v3 + 8 * (((8 * (((((v1 ^ 0xE0) + 1618) ^ (v4 == 0)) & 1) == 0)) & 0xEF | (16 * ((((v1 ^ 0xE0) + 82) ^ ~(v4 == 0)) & 1))) ^ v1)))();
}

uint64_t sub_100A2168C()
{
  if (*STACK[0x4158] & 1 | (v1 != ((v0 + 2071306905) & 0x848A35FF) - 143125598))
  {
    v2 = v1;
  }

  else
  {
    v2 = -143113113;
  }

  return (*(STACK[0x57D8] + 8 * ((31271 * (v2 == -143113071)) ^ (v0 - 14322))))();
}

uint64_t sub_100A21814(unint64_t a1)
{
  STACK[0xC0B8] = a1;
  STACK[0x5650] = STACK[0xB3A8];
  v2 = ((v1 - 872251417) & 0x33FD4FF7) + 20593 + *(STACK[0x9EE0] - 0x79296B4A625EDF10);
  v4 = v2 - 1172484202;
  v3 = v2 - 1172484202 < 0;
  v5 = 1172484202 - v2;
  if (!v3)
  {
    v5 = v4;
  }

  LODWORD(STACK[0x830C]) = 4 * v5;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v1 | 0x4438)))();
  STACK[0x9368] = v7;
  STACK[0x5610] = v7;
  return (*(v6 + 8 * ((28 * (v7 == 0)) ^ v1)))();
}

uint64_t sub_100A21ACC()
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

uint64_t sub_100A21BD0(double a1, __n128 a2, double a3, double a4, __n128 a5, double a6, __n128 a7, __n128 a8)
{
  v21 = *(STACK[0x57D8] + 11616 * (v8 ^ 0x6CC5));
  *&STACK[0x56D0] = a5;
  *&STACK[0x56F0] = v12;
  *&STACK[0x5780] = v19;
  *&STACK[0x5790] = a7;
  *&STACK[0x5770] = a2;
  *&STACK[0x5680] = v15;
  *&STACK[0x56C0] = v13;
  *&STACK[0x56E0] = v14;
  *&STACK[0x5710] = v18;
  *&STACK[0x5700] = v10;
  *&STACK[0x5650] = a8;
  *&STACK[0x5670] = v11;
  *&STACK[0x5760] = v16;
  *&STACK[0x5640] = v20;
  *&STACK[0x5660] = v17;
  *&STACK[0x57C0] = v9;
  return v21();
}

uint64_t sub_100A21D88()
{
  LODWORD(STACK[0x6824]) = v1;
  STACK[0x7ED8] -= 688;
  LODWORD(STACK[0xC7C4]) = 1978581539;
  STACK[0x69D8] = 4;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v0 + 9152)))(&STACK[0x1D1CD], &STACK[0x90C8], &STACK[0x69D8], 0, 0);
  v5 = 551690071 * ((0x5A39D9677BE6666 - ((v2 - 240) | 0x5A39D9677BE6666) + STACK[0x3928]) ^ 0x8BC130A7C6ACCACELL);
  STACK[0x1D4D8] = -551690071 * ((0x5A39D9677BE6666 - ((v2 - 240) | 0x5A39D9677BE6666) + STACK[0x3928]) ^ 0x8BC130A7C6ACCACELL);
  LODWORD(STACK[0x1D4D0]) = v5;
  LODWORD(STACK[0x1D4C8]) = v0 - v5 - 300694370;
  STACK[0x1D4E0] = v5 + v4;
  LODWORD(STACK[0x1D4CC]) = v0 - v5 - 300694457;
  LODWORD(STACK[0x1D4C4]) = (v0 - 300697218) ^ v5;
  LODWORD(STACK[0x1D4C0]) = (v0 - 1079089617) ^ v5;
  v6 = (*(v3 + 8 * (v0 + 9201)))(v2 - 240);
  return (*(v3 + 8 * SLODWORD(STACK[0x1D4D4])))(v6);
}

uint64_t sub_100A21ED8()
{
  v3 = STACK[0x480] & 0xCAD7BDBD;
  *STACK[0x4D0] = LODWORD(STACK[0x490]) ^ (*STACK[0x4D0] - ((2 * *STACK[0x4D0]) & 0x4F1FDC8E) + 663744071);
  return (*(v2 + 8 * (v0 + v1 + v3 - 345)))();
}

uint64_t sub_100A22030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v12 = 8 * ((v10 ^ 0x7E6A249A14F9B90FLL) + v8 + ((v8 < 0x66FC15AC) << 32)) + 0xCAEDB2C204F9BA8;
  v13 = *(v11 - 224);
  *(*(v11 - 216) + v12) = *(*(v11 - 232) + v12) ^ 0xC6C6C6C6C6C6C6C6;
  if (v6 < v7 != v8 + a5 < v7)
  {
    v14 = v6 < v7;
  }

  else
  {
    v14 = v8 + a5 < v6;
  }

  return (*(v13 + 8 * ((!v14 * v9) ^ a6)))();
}

void *sub_100A2280C()
{
  v4 = (*(v3 + 8 * (v2 + 29846)))(v0, 0, 24);
  *(v1 + 104) = -92061422;
  *(v1 + 108) = 0x400000001;
  *(v1 + 116) = 2;
  STACK[0x870] = *(v3 + 8 * v2);
  return (*(v3 + 8 * (v2 ^ 0x7EA5 ^ (v2 + 215807900) & 0xF32358FF)))(&STACK[0x12E0], v4);
}

uint64_t sub_100A228B8(int a1)
{
  v4 = v2 + a1 + 459;
  *(v1 + 288) = *(v3 + 8 * v4);
  return (*(v3 + 8 * ((a1 + 2120243115) ^ v4)))(2174744536);
}

uint64_t sub_100A22A70@<X0>(unsigned int a1@<W0>, int a2@<W1>, int a3@<W8>)
{
  LODWORD(STACK[0x5210]) = 0;
  v10 = STACK[0x2918];
  LODWORD(STACK[0x52D0]) = *(STACK[0x2918] - 0x3BAD382B94D391C5);
  LODWORD(STACK[0x52E8]) = *(v10 - 0x3BAD382B94D391C6);
  LODWORD(STACK[0x3190]) = STACK[0x5510];
  LODWORD(STACK[0x3188]) = STACK[0x5318];
  LODWORD(STACK[0x3180]) = STACK[0x5390];
  LODWORD(STACK[0x52D8]) = *(v10 - 0x3BAD382B94D391BCLL);
  LODWORD(STACK[0x3178]) = STACK[0x5550];
  LODWORD(STACK[0x3170]) = STACK[0x5348];
  LODWORD(STACK[0x3168]) = STACK[0x55C0];
  LODWORD(STACK[0x3160]) = STACK[0x53D0];
  LODWORD(STACK[0x3158]) = STACK[0x53A0];
  LODWORD(STACK[0x3150]) = STACK[0x53F8];
  LODWORD(STACK[0x52E0]) = *(v10 - 0x3BAD382B94D391BDLL);
  LODWORD(STACK[0x3148]) = STACK[0x5630];
  v11 = *(STACK[0x57D8] + 8 * a1);
  LODWORD(STACK[0x3140]) = STACK[0x54B0];
  LODWORD(STACK[0x3138]) = STACK[0x55D0];
  LODWORD(STACK[0x3130]) = STACK[0x5590];
  LODWORD(STACK[0x3128]) = STACK[0x52F0];
  LODWORD(STACK[0x3120]) = STACK[0x56F0];
  LODWORD(STACK[0x3118]) = STACK[0x56C0];
  LODWORD(STACK[0x3110]) = STACK[0x5420];
  LODWORD(STACK[0x3108]) = STACK[0x5500];
  LODWORD(STACK[0x3100]) = STACK[0x5310];
  LODWORD(STACK[0x30F8]) = STACK[0x57C0];
  LODWORD(STACK[0x30F0]) = STACK[0x54A0];
  LODWORD(STACK[0x30E8]) = STACK[0x5378];
  LODWORD(STACK[0x30E0]) = STACK[0x5398];
  LODWORD(STACK[0x30D8]) = STACK[0x56D0];
  LODWORD(STACK[0x30D0]) = STACK[0x55A0];
  LODWORD(STACK[0x30C8]) = a2;
  LODWORD(STACK[0x30C0]) = STACK[0x5368];
  LODWORD(STACK[0x30B8]) = STACK[0x5358];
  LODWORD(STACK[0x30B0]) = v5;
  LODWORD(STACK[0x30A8]) = STACK[0x5338];
  LODWORD(STACK[0x30A0]) = STACK[0x53C0];
  LODWORD(STACK[0x3098]) = STACK[0x5388];
  LODWORD(STACK[0x3090]) = STACK[0x53B0];
  LODWORD(STACK[0x3088]) = v8;
  LODWORD(STACK[0x3080]) = STACK[0x5770];
  LODWORD(STACK[0x3078]) = STACK[0x5660];
  LODWORD(STACK[0x3070]) = STACK[0x5400];
  LODWORD(STACK[0x3068]) = STACK[0x53F0];
  LODWORD(STACK[0x3060]) = STACK[0x5610];
  LODWORD(STACK[0x3058]) = STACK[0x5680];
  LODWORD(STACK[0x3050]) = STACK[0x5720];
  LODWORD(STACK[0x3048]) = v4;
  LODWORD(STACK[0x3040]) = STACK[0x5308];
  LODWORD(STACK[0x3038]) = v7;
  LODWORD(STACK[0x3030]) = v6;
  LODWORD(STACK[0x3028]) = STACK[0x5460];
  LODWORD(STACK[0x3020]) = STACK[0x5328];
  LODWORD(STACK[0x3018]) = STACK[0x5450];
  LODWORD(STACK[0x3010]) = STACK[0x5710];
  LODWORD(STACK[0x3008]) = STACK[0x53E8];
  LODWORD(STACK[0x3000]) = STACK[0x53C8];
  LODWORD(STACK[0x2FF8]) = STACK[0x55B0];
  LODWORD(STACK[0x2FF0]) = STACK[0x5320];
  LODWORD(STACK[0x2FE8]) = STACK[0x5430];
  LODWORD(STACK[0x2FE0]) = STACK[0x53E0];
  LODWORD(STACK[0x2FD8]) = STACK[0x55F0];
  LODWORD(STACK[0x2FD0]) = STACK[0x5790];
  LODWORD(STACK[0x2FC8]) = STACK[0x57A0];
  LODWORD(STACK[0x2FC0]) = STACK[0x53B8];
  LODWORD(STACK[0x2FB8]) = STACK[0x5760];
  LODWORD(STACK[0x2FB0]) = STACK[0x5740];
  LODWORD(STACK[0x2FA8]) = STACK[0x5750];
  LODWORD(STACK[0x2FA0]) = STACK[0x56E0];
  LODWORD(STACK[0x2F98]) = STACK[0x5300];
  LODWORD(STACK[0x2F90]) = STACK[0x5620];
  LODWORD(STACK[0x2F88]) = STACK[0x5560];
  LODWORD(STACK[0x2F80]) = STACK[0x5520];
  LODWORD(STACK[0x2F78]) = STACK[0x5370];
  LODWORD(STACK[0x2F74]) = STACK[0x5570];
  LODWORD(STACK[0x2F70]) = STACK[0x5380];
  LODWORD(STACK[0x2F6C]) = STACK[0x5330];
  LODWORD(STACK[0x2F68]) = STACK[0x5640];
  LODWORD(STACK[0x2F64]) = STACK[0x5780];
  LODWORD(STACK[0x2F60]) = STACK[0x5540];
  LODWORD(STACK[0x2F5C]) = STACK[0x5650];
  LODWORD(STACK[0x2F58]) = STACK[0x5360];
  LODWORD(STACK[0x2F54]) = v9;
  LODWORD(STACK[0x2F50]) = STACK[0x54E0];
  LODWORD(STACK[0x2F4C]) = STACK[0x55E0];
  LODWORD(STACK[0x2F48]) = STACK[0x5600];
  LODWORD(STACK[0x2F44]) = a3;
  LODWORD(STACK[0x2F40]) = STACK[0x53A8];
  LODWORD(STACK[0x2F3C]) = STACK[0x54C0];
  LODWORD(STACK[0x2F38]) = STACK[0x5530];
  LODWORD(STACK[0x2F34]) = STACK[0x5670];
  LODWORD(STACK[0x2F30]) = STACK[0x5408];
  LODWORD(STACK[0x2F2C]) = STACK[0x52F8];
  LODWORD(STACK[0x2F28]) = STACK[0x54F0];
  LODWORD(STACK[0x2F24]) = STACK[0x53D8];
  LODWORD(STACK[0x2F20]) = STACK[0x5730];
  LODWORD(STACK[0x2F1C]) = STACK[0x5580];
  LODWORD(STACK[0x2F18]) = v3;
  LODWORD(STACK[0x2F14]) = STACK[0x5350];
  LODWORD(STACK[0x2F10]) = STACK[0x5340];
  LODWORD(STACK[0x2F0C]) = STACK[0x54D0];
  LODWORD(STACK[0x2F08]) = STACK[0x5440];
  return v11();
}

uint64_t sub_100A23198(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5, int a6, uint64_t a7, uint64_t a8)
{
  v20 = a8 + 4 * ((v9 * v9 + 13) % 0x1D48u);
  v21 = (v20 + *(*v19 + (*v17 & a5)) + a4);
  *(*v14 + 4 * v9) = *(v20 + a7) ^ v13 ^ (v20 * a6) ^ *((*(v18 + 2792) ^ v8) + (v21 & (*v12 ^ v16))) ^ *((*(v18 + 2792) ^ v8) + ((v21 + 2) & (*v12 ^ v16)));
  return (*(STACK[0x668] + 8 * (((v9 + 1 >= *v15) * v11) ^ v10)))();
}

uint64_t sub_100A233D8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0x3FC8]) = LODWORD(STACK[0x5400]) | LODWORD(STACK[0x5510]);
  LODWORD(STACK[0x4060]) = LODWORD(STACK[0x53E0]) | LODWORD(STACK[0x5540]);
  LODWORD(STACK[0x4080]) = LODWORD(STACK[0x53C0]) | LODWORD(STACK[0x54F0]);
  LODWORD(STACK[0x3FC0]) = LODWORD(STACK[0x53B8]) | LODWORD(STACK[0x53C8]);
  LODWORD(STACK[0x4000]) = LODWORD(STACK[0x5360]) | LODWORD(STACK[0x4290]);
  LODWORD(STACK[0x3FB0]) = LODWORD(STACK[0x4278]) | LODWORD(STACK[0x5368]);
  LODWORD(STACK[0x40C8]) |= LODWORD(STACK[0x4280]);
  LODWORD(STACK[0x4290]) = LODWORD(STACK[0x40B8]) | LODWORD(STACK[0x40C0]);
  LODWORD(STACK[0x3FD8]) = LODWORD(STACK[0x4090]) | LODWORD(STACK[0x4098]);
  LODWORD(STACK[0x4088]) |= LODWORD(STACK[0x4078]);
  LODWORD(STACK[0x40B8]) = LODWORD(STACK[0x4024]) ^ 0xFABFDE1E;
  LODWORD(STACK[0x3FB8]) = LODWORD(STACK[0x4068]) | LODWORD(STACK[0x3FEC]);
  LODWORD(STACK[0x4024]) = LODWORD(STACK[0x4028]) | LODWORD(STACK[0x3B40]);
  LODWORD(STACK[0x4020]) |= LODWORD(STACK[0x4010]);
  LODWORD(STACK[0x3FD0]) |= LODWORD(STACK[0x38A0]);
  LODWORD(STACK[0x3478]) = LODWORD(STACK[0x38B0]) | LODWORD(STACK[0x38C0]);
  LODWORD(STACK[0x3FEC]) = LODWORD(STACK[0x37E8]) | LODWORD(STACK[0x3448]);
  LODWORD(STACK[0x40C0]) = LODWORD(STACK[0x3750]) | LODWORD(STACK[0x38A8]);
  v11 = a1 & 0x52 ^ 0xD7;
  v12 = v7 & 0xD0 ^ 0x16;
  v13 = 2 * ((v9 ^ v8) & (2 * ((v9 ^ v8) & (2 * ((v9 ^ v8) & (2 * (v9 & 0xB4)) ^ v9 & 0xB4)) ^ v9 & 0xB4)) ^ v9 & 0xB4);
  v14 = (((v9 ^ (2 * ((v13 ^ v9) & v8 ^ v13 & v9))) ^ 0xB4) << 8) | (((v7 ^ (2 * ((v7 ^ v8) & (2 * ((v7 ^ v8) & (2 * ((v7 ^ v8) & (2 * ((v7 ^ v8) & (2 * ((v7 ^ v8) & (2 * v12) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12))) ^ 0xD0) << 16);
  LODWORD(STACK[0x5540]) = ((((a1 ^ (2 * ((a1 ^ v8) & (2 * ((a1 ^ v8) & (2 * ((a1 ^ v8) & (2 * ((a1 ^ v8) & (2 * ((a1 ^ v8) & (2 * (v11 ^ a1 & 0x26)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11))) ^ 0xA791C1) & ~v14 | v14 & 0x586E00) << 8) & 0x6F03EA00;
  v15 = *(STACK[0x5790] + 281);
  v16 = v15 & 0xFFFFFF84 ^ 0xFFFFFFA8;
  v17 = *(STACK[0x5680] + 395);
  v18 = v17 & 0x16 ^ 0xF1;
  v19 = *(a7 + 2352);
  v20 = v15 ^ (2 * ((v15 ^ v8) & (2 * ((v15 ^ v8) & (2 * ((v15 ^ v8) & (2 * ((v15 ^ v8) & (2 * v16) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ 0x84;
  v21 = ((v17 ^ (2 * ((v17 ^ v8) & (2 * ((v17 ^ v8) & (2 * ((v17 ^ v8) & (2 * ((v17 ^ v8) & (2 * ((v17 ^ v8) & (2 * (v18 ^ v17 & 0x22)) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18))) ^ 0x16) << 8;
  v22 = v19 & 0xF2 ^ 0xA7;
  LODWORD(STACK[0x54F0]) = ((((v19 ^ (2 * ((v19 ^ v8) & (2 * ((v19 ^ v8) & (2 * ((v19 ^ v8) & (2 * ((v19 ^ v8) & (2 * ((v19 ^ v8) & (2 * (v22 ^ v19 & 6)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22))) ^ 0xFF9147) & ~(v21 | (v20 << 16)) | v21 & 0x6E00) << 8) & 0x45D59200;
  LOBYTE(v21) = *(STACK[0x55A0] + 3429);
  v23 = v21 & 0x12 ^ 0x77;
  LOBYTE(v21) = v21 ^ (2 * ((v21 ^ v8) & (2 * ((v21 ^ v8) & (2 * ((v21 ^ v8) & (2 * ((v21 ^ v8) & (2 * ((v21 ^ v8) & (2 * (v23 ^ v21 & 0x26)) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23));
  v24 = *(STACK[0x5580] + 1169);
  v25 = v24 & 0xA2 ^ 0x1F;
  v26 = *STACK[0x5660];
  v27 = v26 & 0x92 ^ 0x37;
  v28 = (((v24 ^ (2 * ((v24 ^ v8) & (2 * ((v24 ^ v8) & (2 * ((v24 ^ v8) & (2 * ((v24 ^ v8) & (2 * ((v24 ^ v8) & (2 * ((v24 ^ v8) & 0x16 ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25))) ^ 0xA2) << 16) | (((v26 ^ (2 * ((v26 ^ v8) & (2 * ((v26 ^ v8) & (2 * ((v26 ^ v8) & (2 * ((v26 ^ v8) & (2 * ((v26 ^ v8) & (2 * (v27 ^ v26 & 0x26)) ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ v27))) ^ 0x92) << 8);
  LODWORD(STACK[0x5510]) = (((v21 ^ 0x4F9BA8) & ~v28 | v28 & 0xB06400) << 8) & 0x7BA98D00;
  return (*(STACK[0x57D8] + 8 * v10))(98698544, 24674636, 36215998);
}

uint64_t sub_100A23A88()
{
  v1 = v0 ^ 0x68FD;
  v2 = v0 - 20529;
  v3 = STACK[0x57D8];
  STACK[0xA830] = *(STACK[0x57D8] + 8 * v2);
  return (*(v3 + 8 * ((v1 - 579) ^ v2)))();
}

uint64_t sub_100A23AE4()
{
  LODWORD(STACK[0x1D4C8]) = (v0 - 1723131119) ^ (1917435887 * ((((2 * (v1 - 240)) | 0x89F85600) - (v1 - 240) - 1157376768) ^ 0xA2477006));
  STACK[0x1D4C0] = 0;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 11830)))(v1 - 240);
  return (*(v2 + 8 * ((5555 * (*STACK[0x4270] > ((3 * (v0 ^ 0x4009)) ^ 0x29D9))) ^ v0)))(v3);
}

uint64_t sub_100A23B98()
{
  v2 = *(v0 + 3608);
  v3 = *(v0 + 4408) + v2;
  v4 = *(v0 + 3624);
  v5 = *STACK[0x51F0];
  v6 = (*(v0 + 3620) - 31206) & *STACK[0x51E8];
  v7 = *(v5 + (((v4 & 0xFFFFFFF8 ^ 0x38C40451) + 1510749275 + ((2 * (v4 & 0xFFFFFFF8)) & 0x718808A0)) & v6));
  v8 = __ROR8__(v4 & 0xFFFFFFFFFFFFFFF8, 8);
  v9 = (((2 * (v7 + v8)) & 0x5ABA66046DFF67CLL) - (v7 + v8) - 0x2D5D330236FFB3FLL) ^ 0x3F851265E361BC25;
  v10 = v9 ^ __ROR8__(v7, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0x65F254DD188DB4FCLL;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0x6FF046966119128DLL;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0xA1B29DC5D776132BLL;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ v1;
  v18 = __ROR8__(v17, 8);
  v19 = v17 ^ __ROR8__(v16, 61);
  v20 = (((v18 + v19) & 0x9D0DFD6B30D0AE40 ^ 0x9100140910008440) + ((v18 + v19) ^ 0x4C8FE972EEFB6A2CLL) - (((v18 + v19) ^ 0x4C8FE972EEFB6A2CLL) & 0x9D0DFD6B30D0AE40)) ^ 0x945A70614321DB2;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (((2 * (v22 + v21)) & 0x38B9E4F360B4B0DELL) - (v22 + v21) + 0x63A30D864FA5A790) ^ 0x37F60CA8C514641FLL;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = __ROR8__(v23, 8);
  v26 = *(v5 + (v6 & ((v3 & 0xFFFFFFF8) - 103642729)));
  v27 = ((v25 + v24 - ((2 * (v25 + v24)) & 0x1B983A0320998C82) - 0x7233E2FE6FB339BFLL) ^ 0xE2837DBD9E4E98A1) >> (8 * (v4 & 7u));
  v28 = (v26 + __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xF41651499F5E3C67;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (((2 * (v30 + v29)) | 0x745FA5B0FA6EF21ALL) - (v30 + v29) + 0x45D02D2782C886F3) ^ 0xAF1D903641C71344;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (((2 * (v33 + v32)) | 0x8A83CB581829113CLL) - (v33 + v32) + 0x3ABE1A53F3EB7762) ^ 0xE734316B3421B105;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0xE5AF1AB32EBD3CDDLL;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (((2 * (v38 + v37)) & 0x41D5FB219976F31ALL) - (v38 + v37) + 0x5F15026F33448672) ^ 0x98C8CB99FF013153;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0xA82620A559D2DA78;
  v42 = __ROR8__(v41, 8);
  v43 = v41 ^ __ROR8__(v40, 61);
  v44 = ((2 * (v42 + v43)) & 0x481798921A1218A8) - (v42 + v43) + 0x5BF433B6F2F6F3ABLL;
  *v3 = (((__ROR8__(v44 ^ 0x479DF88516EF9B0, 8) + (v44 ^ 0x479DF88516EF9B0 ^ __ROR8__(v43, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * (v3 & 7u))) ^ *(v0 + 295) ^ v27;
  ++v2;
  LODWORD(v3) = *(v0 + 3616);
  v45 = *(STACK[0x57D8] + 8 * ((107 * (v2 == 48)) ^ v3));
  *(v0 + 3596) = v3;
  *(v0 + 3600) = v2;
  return v45();
}

uint64_t sub_100A23FCC@<X0>(int a1@<W8>)
{
  v1 = STACK[0x61E0];
  STACK[0xC678] = STACK[0x6A48];
  STACK[0x72B8] = v1;
  STACK[0x5F28] = STACK[0x8EF0];
  LODWORD(STACK[0xCA34]) = STACK[0x9564];
  STACK[0x8018] = &STACK[0x82A0];
  STACK[0x7258] = &STACK[0x6F58];
  STACK[0x60F8] = &STACK[0xB38C];
  STACK[0xC520] = 0;
  STACK[0xC850] = 0;
  STACK[0x8320] = 0;
  STACK[0x7250] = 0;
  STACK[0x8DE8] = 0;
  LODWORD(STACK[0x8BEC]) = 108638223;
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_100A24130()
{
  v4 = *(v0 + 295);
  v5 = *(v0 + 2136);
  v6 = v5 & 0xFFFFFFF8;
  v7 = *STACK[0x51F0];
  v8 = *STACK[0x51E8] & 0xFFFFFFF8;
  v9 = *(v7 + (v8 & ((v5 & 0x62433AA0) + 814544600 + (v5 & 0x9DBCC558 | 0x62433AA7) + 1837)));
  v10 = __ROR8__(v5 & 0xFFFFFFFFFFFFFFF8, 8);
  v11 = (v9 + v10) ^ 0xC2AF3EAA3FF1B8E4;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = __ROR8__(v11, 8);
  v14 = (((v13 + v12) & 0xC8B22061ECD6E2B2 ^ 0x40A000004842C2A0) + ((v13 + v12) ^ 0xBE56A2EBA59D2053) - (((v13 + v12) ^ 0xBE56A2EBA59D2053) & 0xC8B22061ECD6E2B2)) ^ 0x1316D65751C6761DLL;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (0xEB7253CA61688FB2 - ((v16 + v15) | 0xEB7253CA61688FB2) + ((v16 + v15) | 0x148DAC359E97704DLL)) ^ 0x7B7DEAA3FF8E62C0;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xA1B29DC5D776132BLL;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ v3;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0xD8C7B31FCA19D9DELL;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0x5455012E8AB1C38FLL;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  LOBYTE(v5) = 8 * (v5 & 7);
  *(v0 + 1860) = (((v27 + v26 - ((2 * (v27 + v26)) & 0x39AD400A00DC8682) - 0x63295FFAFF91BCBFLL) ^ 0xF399C0B90E6C1DA1) >> v5) ^ v4;
  v28 = STACK[0x8070];
  LOBYTE(v25) = *(STACK[0x8070] + 362);
  v29 = *(v7 + (v8 & ((v6 | 0x57CE64F9) - 1831847764 + (v6 | 0xA8319B06) + 1)));
  *(v0 + 2151) = v25;
  v30 = (((2 * (v29 + v10)) | 0x162A8F36ABB1F406) - (v29 + v10) + 0x74EAB864AA2705FDLL) ^ 0x49BA79316A2942E7;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (((2 * (v32 + v31)) & 0x1BB453E68675C04) - (v32 + v31) + 0x7F225D60CBCC51FDLL) ^ 0x1AD009BDD341E501;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0x6FF046966119128DLL;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (0x7661AF9CED717A60 - ((v37 + v36) | 0x7661AF9CED717A60) + ((v37 + v36) | 0x899E5063128E859FLL)) ^ 0x282CCDA6C5F896B4;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ v3;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v40, 8);
  v43 = __ROR8__((0xA1A4844CC78C72FALL - ((v42 + v41) | 0xA1A4844CC78C72FALL) + ((v42 + v41) | 0x5E5B7BB338738D05)) ^ 0x869CC8ACF26A54DBLL, 8);
  v44 = (0xA1A4844CC78C72FALL - ((v42 + v41) | 0xA1A4844CC78C72FALL) + ((v42 + v41) | 0x5E5B7BB338738D05)) ^ 0x869CC8ACF26A54DBLL ^ __ROR8__(v41, 61);
  v45 = (((v43 + v44) & 0x892A51FFCC8799BDLL ^ 0x10A4005448498BDLL) + ((v43 + v44) & 0x76D5AE0033786642 ^ 0x1484280002582603) - 1) ^ 0x41DB692BCC6D7D30;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = __ROR8__(v45, 8);
  *(v28 + 362) = v25 ^ v4 ^ (((v47 + v46 - ((2 * (v47 + v46)) & 0x57067F6479A77584) + 0x2B833FB23CD3BAC2) ^ 0x44CC5F0E32D1E422) >> v5);
  v48 = *(v0 + 3920) + 16;
  *(v0 + 296) = v48;
  v49 = STACK[0x57D8];
  v50 = *(STACK[0x57D8] + 8 * (v1 + 10016));
  *(v0 + 2152) = v48;
  *(v0 + 280) = v50;
  return (*(v49 + 8 * (v2 + 20570)))();
}

uint64_t sub_100A245F4()
{
  LODWORD(STACK[0x66D0]) = -143113071;
  v1 = STACK[0x9930];
  LOBYTE(STACK[0x6013]) = 32;
  STACK[0xA6A0] = STACK[0x9A08];
  LODWORD(STACK[0x8A2C]) = STACK[0xBD6C];
  STACK[0x6E28] = v1;
  STACK[0x5908] = &STACK[0x9778];
  STACK[0x8E78] = &STACK[0x5874];
  LODWORD(STACK[0x9058]) = 8;
  LODWORD(STACK[0xCF24]) = -1060642908;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100A246E4@<X0>(int a1@<W6>, int a2@<W8>)
{
  v10 = *(v9 + 1368);
  v11 = *(v10 + v2 - 6152 * (((v2 * v7) >> 64) >> 12));
  v12 = *(v9 + 1360);
  v13 = *(v12 + 4 * ((6419 * (v11 + (v5 ^ 0x672ACFB9) + ((v11 < 0x4C) << 8)) + 867135705) % 0x2240));
  v14 = *(v10 + v8 + 5621 * (BYTE2(v13) ^ 0x38) - 6152 * (((89362129 * (v8 + 5621 * (BYTE2(v13) ^ 0x38u))) >> 32) >> 7));
  v15 = v14 & 0xBC ^ 0x84;
  v16 = *(v10 + (a1 + 5621 * (((HIBYTE(v13) ^ 0x287CEDF) + 120757288) ^ ((HIBYTE(v13) ^ 0x45A29EEB) + 1075301396) ^ ((HIBYTE(v13) ^ 0x47255076) + 1116734095)) + 112) % 0x1808u);
  v17 = v16 & 0xE8 ^ 0x3A;
  v18 = v14 ^ (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * v15) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ 0xBC;
  v19 = *(v10 + v8 + 5621 * (BYTE1(v13) ^ 0x8F) - 6152 * (((89362129 * (v8 + 5621 * (BYTE1(v13) ^ 0x8Fu))) >> 32) >> 7));
  LOBYTE(v10) = *(v10 + (5621 * (((v13 ^ 0x1F33B5F3) - 1015461873) ^ ((v13 ^ 0x60B3FEE5) - 1124531431) ^ ((v13 ^ 0x7F804BF0u) - 1546996210)) + 123809630) % 0x1808);
  v20 = v19 & 0x96 ^ 0x31;
  v21 = v19 ^ 0x34;
  v22 = (v18 << 8) | (((v16 ^ (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * v17) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17))) ^ 0xE8) << 16);
  v23 = (v19 ^ (2 * (v21 & (2 * (v21 & (2 * (v21 & (2 * (v21 & (2 * (v21 & (2 * (v20 ^ v19 & 0x22)) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20))) ^ 0xFA5C5C;
  v24 = v10 & 0x7C ^ 0x64;
  *(v12 + 4 * (v4 % 0x2240)) = ((v3 ^ (((v23 & (v22 ^ 0xFFFDFF)) + (v22 & (v6 + 750))) << 8)) & ((v10 ^ (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * v24) ^ v24)) ^ v24)) ^ v24)) ^ v24))) ^ 0xFFFFFFA2) | (v10 ^ (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * v24) ^ v24)) ^ v24)) ^ v24)) ^ v24))) & 0xE1) ^ 0x3911898;
  return (*(STACK[0x57D8] + 8 * ((15478 * (a2 == 0)) ^ v5)))();
}

uint64_t sub_100A24A44@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 0x2369327399A66D75);
  STACK[0x8C0] = STACK[0x9E8] + 16 * (((v1 + 5134) ^ LODWORD(STACK[0x9DC]) ^ 0xFB2ECDD7DFFEF30) + ((2 * LODWORD(STACK[0x9DC])) & 0xFBFF73FALL)) + 0x4D1322820046030;
  STACK[0x850] = v3;
  LODWORD(STACK[0x9F4]) = STACK[0x93C];
  LODWORD(STACK[0x82C]) = 1;
  LODWORD(STACK[0x894]) = -630677608;
  return (*(v2 + 8 * v1))(0xE77C99F117EBBBF2, 16107, 3648468536, 2101965948);
}

uint64_t sub_100A24B60(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v60 = a4[18];
  LODWORD(a46) = a4[18];
  LODWORD(STACK[0x230]) = a4[19];
  v61 = a4[21];
  LODWORD(STACK[0x26C]) = v61;
  return (*(v59 + 8 * v58))(v61, a2, a3, a4, a5, &STACK[0x280] + a5, v60, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a5 - 16680 + ((8 * v58) ^ 0x1E840u));
}

uint64_t sub_100A24BB4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = STACK[0x640] + 4 * ((((a2 - 81914715) & 0x4E1FF77u) + 695941 + 551 * v6 + 970) % 0x1D48);
  v10 = STACK[0x640] + 4 * ((551 * v6 + 569183) % 0x1D48u);
  v11 = *(*STACK[0x660] + (*v8 & STACK[0x658]));
  v12 = *v5 ^ v7;
  *(v10 - 0x34EE34220E8AC3B8) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v10 + v11 + 673210726) & v12)) ^ *(v9 - 0x34EE34220E8AC3B8) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v10 + v11 + a5) & v12)) ^ (-1962600273 * v9) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v9 + v11 + 673210726) & v12)) ^ (-1962600273 * v10) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v9 + v11 + a5) & v12));
  return (*(STACK[0x668] + 8 * ((5165 * (v6 == 255)) ^ a2)))();
}

uint64_t sub_100A24F60()
{
  v1 = STACK[0x3978];
  v2 = LODWORD(STACK[0x3978]) ^ 0x65CE;
  STACK[0x3DC8] = (v2 + 16141);
  v3 = (*(v0 + 8 * (v1 ^ 0xA61)))(STACK[0x3B58]);
  STACK[0x3E68] = v3;
  LODWORD(STACK[0x37E4]) = v2;
  return (*(v0 + 8 * (((v3 != 0) * (v2 - 4795)) ^ LODWORD(STACK[0x3978]))))();
}

uint64_t sub_100A250D4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, char a20, uint64_t a21, char a22, __int16 a23, char a24, int a25, int a26, unsigned int a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47)
{
  v55 = 496 * (v48 ^ 0x6D29);
  LODWORD(STACK[0x2C8]) = v55;
  v56 = (v49 - 107) & 0x47 ^ 0x74;
  v57 = (v49 - 107) ^ 0x1E;
  LOBYTE(STACK[0x4D6]) = (v49 - 107) ^ (2 * (v57 & (2 * (v57 & (2 * (v57 & (2 * (v57 & (2 * (v57 & (2 * (v57 & ((v49 - 107) << (v55 ^ 0x71)) & 0x3E ^ v56)) ^ v56)) ^ v56)) ^ v56)) ^ v56)) ^ v56)) ^ 0x42;
  v58 = (v47 + 81) & 0x85 ^ 0xBE;
  v59 = (v47 + 81) ^ 0x28;
  LOBYTE(STACK[0x387]) = (v47 - 47) ^ (2 * (v59 & (2 * (v59 & (2 * (v59 & (2 * (v59 & (2 * (((2 * (((2 * (v47 + 81)) & 0x52 | 0x29) & (v47 + 81))) ^ 0x2C) & v59 ^ v58)) ^ v58)) ^ v58)) ^ v58)) ^ v58));
  v60 = STACK[0x2C4];
  LOBYTE(STACK[0x43B]) = LODWORD(STACK[0x2C4]) ^ 0x68;
  LOBYTE(STACK[0x60F]) = (v54 - ((2 * v54) & 0xC0) - 32) ^ 0xE5;
  LOBYTE(STACK[0x58A]) = v52 ^ a5;
  LOBYTE(STACK[0x302]) = v50 ^ 0x87;
  v61 = v47 - v49;
  v62 = STACK[0x2B8];
  v63 = (LODWORD(STACK[0x2B8]) ^ 0x9139E979) & (2 * (STACK[0x2B8] & 0x923C097C)) ^ STACK[0x2B8] & 0x923C097C;
  v64 = STACK[0x2B8] & 0x6CBE4FA | (2 * LODWORD(STACK[0x2B8])) & ~LODWORD(STACK[0x2B8]);
  LOBYTE(STACK[0x2EC]) = LODWORD(STACK[0x2B8]) ^ (2 * (((4 * v64) & 0x78 ^ a3 ^ ((4 * v64) ^ 0xF4) & v64) & (16 * ((v64 ^ 0x75) & (4 * v63) ^ v63)) ^ (v64 ^ 0x75) & (4 * v63) ^ v63)) ^ 0x10;
  v65 = a6 + (((0x1FFFFFFF - a6) | a6) & 0x1BD55534) - (v54 ^ a6) + 559854346;
  v66 = v60 ^ 0xE0EC1DEF ^ v50;
  v67 = (((v50 ^ 0x13EDF7DA) - 334362586) ^ ((v50 ^ 0x194C1739) - 424417081) ^ ((v50 ^ 0xBD765708) + 1116317944)) - 183779287;
  v68 = a7 - v61 - v54 - 973802120;
  v69 = (v52 ^ 0xEAFA6227) - v67;
  v70 = v62 + (v60 ^ 0xA8C455FB) - v69 + 1;
  v71 = ((v70 ^ 0xCEB72EC) - 1630045288) ^ v70 ^ ((v70 ^ 0xDF8DB958) + 1303490596) ^ ((v70 ^ 0x4553C28F) - 680539147) ^ ((v70 ^ 0xFBF6FFBF) + 1774909125);
  v72 = (v54 ^ a6) + 1150064731;
  v73 = v67 - v66 - ((2 * (v67 - v66)) & 0x95C4CC9A) - 891132339;
  v74 = v61 - 116385815;
  LOBYTE(STACK[0x4C0]) = (a7 - ((2 * a7) & 0x83) - 63) ^ 0xC4;
  v75 = (((v69 - 335681152) ^ 0x1FE6A8EB) - 857634036) ^ (v69 - 335681152) ^ (((v69 - 335681152) ^ 0xA21137A) - 651808613) ^ (((v69 - 335681152) ^ 0x46C39870) - 1782269039) ^ (((v69 - 335681152) ^ 0x7FFCFFFE) - 1392780257);
  LOBYTE(STACK[0x425]) = (((v69 + 0x80) ^ 0xEB) + 12) ^ (v69 + 0x80) ^ (((v69 + 0x80) ^ 0x7A) - 101) ^ (((v69 + 0x80) ^ 0x70) - 111) ^ (((v69 + 0x80) ^ 0xFE) + 31) ^ 0x73;
  LOBYTE(v61) = v61 + 36;
  LOBYTE(v69) = v61 & 0xBB ^ 0x7B;
  LOBYTE(STACK[0x5F9]) = v61 ^ (2 * ((v61 ^ 0x44) & (2 * ((v61 ^ 0x44) & (2 * ((v61 ^ 0x44) & (2 * ((v61 ^ 0x44) & (2 * ((v61 ^ 0x44) & (2 * (((2 * v61) & 0xA ^ 0x7E) & (v61 ^ 0x44) ^ v69)) ^ v69)) ^ v69)) ^ v69)) ^ v69)) ^ v69)) ^ 0xBE;
  LOBYTE(STACK[0x4AA]) = (v72 + (~(2 * v72) | 0x3F) - 31) ^ 0xE5;
  LOBYTE(STACK[0x55E]) = v71 ^ 0xE8;
  v76 = v75 ^ 0x413B2A9B ^ v71;
  v77 = v72 - v74;
  LOBYTE(v61) = ((v66 + 123) ^ 0xC1) & (2 * ((v66 + 123) & 0xE0)) ^ (v66 + 123) & 0xE0;
  LOBYTE(v72) = ((2 * (v66 + 123)) ^ 0xC2) & (v66 + 123) ^ (2 * (v66 + 123)) & 0x60;
  LOBYTE(STACK[0x6AD]) = (v66 + 123) ^ (2 * ((v72 ^ 0x60) & (4 * v72) & (16 * v61) ^ v61)) ^ 0x8C;
  v78 = v65 ^ v74;
  v79 = v68 ^ v74;
  v80 = v78 + v79;
  v81 = v66 - (((v75 ^ 0xD9E1A471) - 1915843519) ^ ((v75 ^ 0x9DC8BA3F) - 907570673) ^ ((v75 ^ 0x68D1C251) + 1023339105));
  v82 = v79 - v77;
  v83 = v65 - v77 - 593491591;
  v77 += 1715737480;
  LOBYTE(STACK[0x371]) = (v65 - ((2 * v65) & 4) + 2) ^ 7;
  LOBYTE(STACK[0x574]) = v73 ^ 0x21;
  v84 = v73 ^ 0xE61ABA52 ^ v75;
  v85 = v76 + v84;
  v86 = v76 + v84 - 29;
  v87 = (((v73 ^ 0x109AB18) - 17410840) ^ ((v73 ^ 0xFF9AB2CB) + 6638901) ^ ((v73 ^ 0x34717F9E) - 879853470)) - (v81 - 1270735552);
  v88 = v87 - ((2 * v87 + 482345208) & 0x15E387D2) + 693224549;
  LOBYTE(STACK[0x345]) = (v77 - ((2 * v77) & 0x74) + 58) ^ 0x3F;
  v89 = v76 - (v81 - 1270735552) - 153251658 - ((2 * (v76 - (v81 - 1270735552) - 153251658)) & 0x55FF61DE) + 721400047;
  v90 = (((v81 + 815779819) ^ 0xFAC33041) + 164356200) ^ (v81 + 815779819) ^ (((v81 + 815779819) ^ 0x818CB5E4) + 1921279427) ^ (((v81 + 815779819) ^ 0x8475553) - 78674570) ^ (((v81 + 815779819) ^ 0x7FFFFF2F) - 1929957622);
  LOBYTE(STACK[0x548]) = v90 ^ 0xB5;
  v91 = v77 ^ v82;
  v92 = v80 - (v77 ^ v82);
  LOBYTE(STACK[0x40F]) = v88 ^ 0x85;
  LOBYTE(STACK[0x3F9]) = v89 ^ 0x83;
  LOBYTE(STACK[0x35B]) = (v68 - ((2 * v68) & 0xE7) + 115) ^ 0x76;
  LOBYTE(STACK[0x697]) = v86 ^ -v85 ^ ((v86 ^ 0x84) - 103) ^ ((v86 ^ 0xA) + 23) ^ ((v86 ^ 0x92) - 113) ^ 0x8F;
  v93 = v77 - v83;
  LOBYTE(STACK[0x494]) = (v80 + (~(2 * v80) | 0xFB) - 125) ^ 0x87;
  LOBYTE(STACK[0x5CD]) = (v82 - ((2 * v82) & 0xD0) + 104) ^ 0x6D;
  v94 = v89 ^ v90 ^ 0x26089F36;
  v95 = v92 - v91;
  LOBYTE(STACK[0x5E3]) = (v83 - ((2 * v83) & 0x24) - 110) ^ 0x97;
  v96 = v85 - v94;
  v97 = ((((v90 ^ 0x645745A5) - 421985583) ^ ((v90 ^ 0xEEE2E056) + 1819060004) ^ ((v90 ^ 0x86428A2A) + 80530784)) - (((v88 ^ 0x108A3838) - 277493816) ^ ((v88 ^ 0x99A3E091) + 1717313391) ^ ((v88 ^ 0x3D81B40) - 64494400)) - 426454166) ^ (v85 - v94);
  v98 = (v96 - ((2 * v96) & 0x15E387D2) - 1963867159) ^ v88;
  v99 = v92 ^ v93;
  v100 = (v92 ^ v83) + (v92 ^ v93);
  v101 = v98 + 18285546 + (((v97 ^ 0x77947B91) + 304905604) ^ ((v97 ^ 0xB775B58D) - 758271072) ^ ((v97 ^ 0xC0E1CE1C) - 1520842737));
  v102 = ((v101 ^ 0x5C579A7C) - 983077761) ^ v101 ^ ((v101 ^ 0x338F465F) - 1430278050) ^ ((v101 ^ 0x76EA2A21) - 270869468) ^ ((v101 ^ a25) - 422770178);
  v91 -= 1807456209;
  LOBYTE(v93) = ((v96 - v94) ^ 0xBF) - 40 + ((2 * (v96 - v94)) & 0x7E);
  LOBYTE(STACK[0x47E]) = (v100 - ((2 * v100) & 0xE3) + 113) ^ 0x74;
  *(&STACK[0x2E0] + (v102 & 0x3A1 ^ 0x200u) + (v102 & 0x3A1 ^ 0x1A1u)) = v102 ^ 0x91;
  LOBYTE(v101) = (v93 ^ 0x40) & (2 * (v93 & 0x69)) ^ v93 & 0x69;
  LOBYTE(v90) = ((2 * v93) ^ 0xD2) & v93 ^ (2 * v93) & 0x68;
  LOBYTE(STACK[0x532]) = v93 ^ (2 * (((4 * (v90 ^ 0x29)) & 0x60 ^ ((4 * (v90 ^ 0x29)) ^ 0xA0) & (v90 ^ 0x29) ^ 0x20) & (16 * ((v90 ^ 0x41) & (4 * v101) ^ v101)) ^ (v90 ^ 0x41) & (4 * v101) ^ v101)) ^ v51;
  LOBYTE(STACK[0x32F]) = (v95 - ((2 * v95) & 0xD0) - 24) ^ 0xED;
  v103 = v94 - 347797471;
  LOBYTE(STACK[0x3E3]) = v97 ^ 0x6C;
  v104 = (v99 & 0x88 ^ 0x88) + (v99 & 0x88u);
  v105 = v99 + v91;
  LOBYTE(v90) = (v99 - ((2 * v99) & 0xF0) + 120) ^ 0x7D;
  v106 = v100 + v91 + (v91 ^ 0xA007C053);
  v107 = v100 + v91 + v105;
  LOBYTE(STACK[0x5B7]) = v90;
  v108 = (v91 - ((2 * v91) & 0x26) + 19) ^ 0x16;
  v109 = v94 - 1221125507 + (((v102 ^ 0xC1A83F99) + 2053798870) ^ ((v102 ^ 0x3F2DD5B6) - 2064674309) ^ ((v102 ^ 0x984AE3D2) + 596158367));
  v110 = v95 - v100 - v106;
  LOBYTE(v100) = v110 + v53;
  *(&STACK[0x2E0] + (v104 | 0x180)) = v108;
  v111 = v105 - 1621424815;
  LOBYTE(v104) = v94 + (((v97 ^ 0x89) - 100) ^ ((v97 ^ 0x49) + 92) ^ ((v97 ^ 0xC0) - 45));
  LOBYTE(v94) = v104 - 113;
  LOBYTE(STACK[0x66B]) = ((v103 ^ 5) + 9) ^ v103 ^ ((v103 ^ 0x81) - 115) ^ ((v103 ^ 0xA9) - 91) ^ ((v103 ^ 0xDF) - 45) ^ 0x9E;
  v112 = (v103 ^ 0xAAFF7A0F) & (2 * (v103 & 0xA8FF600E)) ^ v103 & 0xA8FF600E;
  v113 = ((2 * (v103 ^ 0xABC1BA1F)) ^ 0x67DB422) & (v103 ^ 0xABC1BA1F) ^ (2 * (v103 ^ 0xABC1BA1F)) & 0x33EDA10;
  v114 = v113 ^ 0x1024A11;
  v115 = (v113 ^ 0x23C8000) & (4 * v112) ^ v112;
  v116 = ((4 * v114) ^ 0xCFB6844) & v114 ^ (4 * v114) & 0x33EDA10;
  v117 = (v116 ^ 0x3A4800) & (16 * v115) ^ v115;
  v118 = ((16 * (v116 ^ 0x3049211)) ^ 0x33EDA110) & (v116 ^ 0x3049211) ^ (16 * (v116 ^ 0x3049211)) & 0x33EDA10;
  v119 = v117 ^ 0x33EDA11 ^ (v118 ^ 0x32C8000) & (v117 << 8);
  LOBYTE(STACK[0x319]) = (v107 - ((2 * v107) & 0xB4) - 38) ^ 0xDF;
  v120 = (v103 ^ (2 * ((v119 << 16) & 0x33E0000 ^ v119 ^ ((v119 << 16) ^ 0x5A110000) & (((v118 ^ 0x125A01) << 8) & 0x33E0000 ^ 0x1240000 ^ (((v118 ^ 0x125A01) << 8) ^ 0x3EDA0000) & (v118 ^ 0x125A01)))) ^ 0xAA5147F) + v109;
  v121 = v120 + 2071951971 - ((2 * v120) & 0xF6FEF4C6);
  LOBYTE(v102) = v93 - (((v102 ^ 0x20) + 109) ^ ((v102 ^ 0x69) + 38) ^ ((v102 ^ 0xB4) - 7)) - (((v121 ^ 0x67) - 103) ^ ((v121 ^ 0x5D) - 93) ^ ((v121 ^ 0x59) - 89)) + 79;
  LOBYTE(v103) = (v102 ^ 0x4D) & (2 * (v102 & 0x69)) ^ v102 & 0x69;
  LOBYTE(v93) = ((2 * (v102 ^ 0x4F)) ^ 0x4C) & (v102 ^ 0x4F) ^ (2 * (v102 ^ 0x4F)) & 0x26;
  LOBYTE(v93) = v102 ^ (2 * ((((4 * (v93 ^ 0x22)) ^ 0x98) & (v93 ^ 0x22) ^ (4 * (v93 ^ 0x22)) & 0x24) & (16 * ((v93 ^ 4) & (4 * v103) ^ v103)) ^ (v93 ^ 4) & (4 * v103) ^ v103 ^ 0x26));
  LOBYTE(v102) = v104 + 28 + v109 - ((2 * (v104 + 28 + v109)) & 0x4A) - 91;
  LOBYTE(STACK[0x51C]) = v102 ^ 0xC9;
  LOBYTE(STACK[0x5A1]) = (v110 - ((2 * v110) & 0x18) + 12) ^ 9;
  LOBYTE(STACK[0x506]) = v121 ^ 0xF;
  LOBYTE(STACK[0x3CD]) = v93 ^ 0x49;
  LOBYTE(v104) = v104 - 108;
  LOBYTE(v118) = (v104 ^ 0x95) & (2 * (v104 & 0xD9)) ^ v104 & 0xD9;
  LOBYTE(v103) = ((2 * (v104 ^ 0xA5)) ^ 0xF8) & (v104 ^ 0xA5) ^ (2 * (v104 ^ 0xA5)) & 0x7C;
  LOBYTE(v114) = v103 ^ 4;
  LOBYTE(v103) = v118 ^ 0x7C ^ (v103 ^ 0x68) & (4 * v118);
  v122 = v102 ^ 0x80 ^ v93;
  LOBYTE(STACK[0x655]) = v104 ^ (2 * ((16 * v103) ^ v103 ^ ((16 * v103) ^ 0x40) & (((4 * v114) ^ 0xF0) & v114 ^ (4 * v114) & 0x70))) ^ 0xCD;
  v123 = (v121 & 0x2A066BA0 ^ 0x2A066A20) + (v121 & 0x2A066BA0 ^ 0x180) + 1762524250;
  LODWORD(v104) = v123 ^ (v110 + v53);
  v124 = v123 & (v110 + v53);
  v125 = v106 + 8890516;
  LOBYTE(STACK[0x452]) = (v111 - ((2 * v111) & 0x4A) + 37) ^ 0x20;
  LOBYTE(STACK[0x303]) = (v106 + (~(2 * v106) | 0xAD) - 86) ^ 0xAC;
  v126 = (v104 + 2 * v124) ^ v107;
  LODWORD(v104) = v110 + v106 + 8890516;
  LOBYTE(v124) = -7 - v110;
  v127 = v126 - (v106 + 8890516);
  LOBYTE(v126) = (v100 ^ v124) & 0x94;
  LOBYTE(v100) = v104 ^ (v106 - 108);
  LOBYTE(STACK[0x58B]) = (v127 + (~(2 * v127) | 0xAB) + 43) ^ 0x2F;
  LOBYTE(v126) = (v121 ^ 0x63) + v126;
  LOBYTE(v103) = ((2 * (v122 - v126)) & 0x76) + ((v122 - v126) ^ 0xBB);
  v128 = v111 - v106 - v127;
  LOBYTE(v93) = (v93 ^ 0x25) + v126;
  LOBYTE(v118) = ((2 * (v103 - 16)) & 0xAA ^ 0x55) & (v103 - 16);
  LOBYTE(v106) = ((2 * ((v103 - 16) ^ 0xBF)) ^ 0xD4) & ((v103 - 16) ^ 0xBF) ^ (2 * ((v103 - 16) ^ 0xBF)) & 0xEA;
  LOBYTE(STACK[0x3B7]) = (v103 - 16) ^ (2 * (((4 * (v106 ^ 0x2A)) & 0xE0 ^ ((4 * (v106 ^ 0x2A)) ^ 0xA0) & (v106 ^ 0x2A) ^ 0x20) & (16 * ((v106 ^ 0xC0) & (4 * v118) ^ v118)) ^ (v106 ^ 0xC0) & (4 * v118) ^ v118)) ^ 0x39;
  LOBYTE(v124) = v94 - (((v121 ^ 0xB) - 11) ^ ((v121 ^ 0xD8) + 40) ^ ((v121 ^ 0xB0) + 80)) - v103;
  LOBYTE(v121) = (v126 ^ 0x10) + 70 + v103;
  LOBYTE(v106) = v121 ^ v93;
  v129 = v127 - (v125 ^ 0xD0C1ADEF);
  LOBYTE(STACK[0x43C]) = (v100 - ((2 * v100) & 0x38) - 100) ^ 0x99;
  LOBYTE(STACK[0x63F]) = v93 ^ v126 ^ 0x6C;
  LOBYTE(STACK[0x4F0]) = (((v124 - 112) ^ 0xEB) + 79) ^ (-54 - v124) ^ (((v124 - 112) ^ 0x14) - 78) ^ 0x6C;
  LOBYTE(STACK[0x575]) = (v125 - ((2 * v125) & 0xB0) + 88) ^ 0x27;
  v130 = v129 ^ v104;
  LOBYTE(STACK[0x3A1]) = (v126 - ((2 * v126) & 0x28) - 108) ^ 0x82;
  LOBYTE(STACK[0x2ED]) = (v128 - ((2 * v128) & 0x38) + 28) ^ 0x19;
  v131 = v128 + 1090490643 + (v129 ^ v104 ^ 0xD0C1ADEF);
  v132 = v129 - v131;
  LOBYTE(STACK[0x6AE]) = ((v129 ^ v104) - ((2 * (v129 ^ v104)) & 0x9F) - 49) ^ 0x25;
  LOBYTE(v129) = v124 - 101 + (((v121 ^ v93 ^ 0x57) - 118) ^ ((v121 ^ v93 ^ 0xC5) + 28) ^ ((v121 ^ v93 ^ 0x7D) - 92));
  LOBYTE(STACK[0x55F]) = (v131 + (~(2 * v131) | 0x97) - 75) ^ 0xB1;
  LOBYTE(v121) = (((v121 - v129 + 15) ^ 0x1D) + 106) ^ (v121 - v129 + 15) ^ (((v121 - v129 + 15) ^ 0x70) + 5) ^ (((v121 - v129 + 15) ^ 8) + 125) ^ (((v121 - v129 + 15) ^ 0xEE) - 101);
  LOBYTE(STACK[0x4DA]) = v106 ^ 0x83;
  LOBYTE(STACK[0x426]) = (v132 - ((2 * v132) & 0xDF) + 111) ^ 0x6A;
  LOBYTE(STACK[0x629]) = v121 ^ 0xE7;
  LOBYTE(STACK[0x38B]) = ((v129 ^ 0xAF) - 43) ^ v129 ^ ((v129 ^ 0x49) + 51) ^ ((v129 ^ 0x1D) + 103) ^ ((v129 ^ 0x7F) + 5) ^ 0xE8;
  LOBYTE(v104) = v126 ^ 0x99 ^ v121;
  v133 = v125 ^ 0x42E9E12 ^ v132;
  LOBYTE(STACK[0x613]) = v126 ^ 0x7E;
  v134 = v131 + (v125 ^ 0x42E9E12);
  LOBYTE(v131) = (((v126 ^ 0x83) + 116) ^ ((v126 ^ 0xEA) + 27) ^ ((v126 ^ 0x7B) - 116)) + v129;
  LOBYTE(v129) = (((v106 ^ 0xD6) - v104) ^ 0xDE) - 2 + ((2 * ((v106 ^ 0xD6) - v104)) & 0xBC);
  LOBYTE(STACK[0x410]) = (v125 - ((2 * v125) & 0x20) + 16) ^ 7;
  v135 = (v133 - 338726769) ^ ((v125 ^ 0x42E9E12) + 276705437);
  LOBYTE(v104) = v104 - 69;
  LOBYTE(v103) = (v104 ^ 0x82) & (2 * (v104 & 0xD4)) ^ v104 & 0xD4;
  LOBYTE(v124) = ((2 * (v104 ^ 0x22)) ^ 0xEC) & (v104 ^ 0x22) ^ (2 * (v104 ^ 0x22)) & 0xF6;
  LOBYTE(v104) = v104 ^ (2 * ((((4 * (v124 ^ a24)) ^ 0xD8) & (v124 ^ a24) ^ (4 * (v124 ^ a24)) & 0xF4 ^ 0xC0) & (16 * ((v124 ^ 0xE0) & (4 * v103) ^ v103)) ^ (v124 ^ 0xE0) & (4 * v103) ^ v103 ^ 0xF6));
  LOBYTE(STACK[0x4C4]) = v104 ^ 0x54;
  v136 = (v130 ^ 0x8E73BDD6) - v133;
  LOBYTE(v124) = v134 + 4;
  LOBYTE(v118) = v104 ^ ((((v126 ^ 0x8D) + 126) ^ ((v126 ^ 0xE5) + 22) ^ ((v126 ^ 0x7A) - 117)) - 70);
  LOBYTE(STACK[0x4AE]) = v118 ^ 0x54;
  LOBYTE(STACK[0x375]) = ((v129 ^ 0xAE) - 114) ^ v129 ^ ((v129 ^ 0x26) + 6) ^ ((v129 ^ 0x8B) - 87) ^ ((v129 ^ 0xDF) - 3) ^ 0xB0;
  LOBYTE(v126) = (v133 - 43) & 0x6C ^ 0x79;
  LOBYTE(v130) = (v133 - 43) ^ (2 * (((v133 - 43) ^ 0x3A) & (2 * (((v133 - 43) ^ 0x3A) & (2 * (((v133 - 43) ^ 0x3A) & (2 * (((v133 - 43) ^ 0x3A) & (2 * (((2 * (v126 ^ (v133 - 43) & 0x56)) ^ 0x24) & ((v133 - 43) ^ 0x3A) ^ v126)) ^ v126)) ^ v126)) ^ v126)) ^ v126)) ^ 0x69;
  v137 = v135 ^ (v134 + 1977611524);
  LOBYTE(STACK[0x698]) = v130;
  v138 = v134 - 423787423;
  v139 = v136 - v135 + ((v133 - 338726769) ^ 0x28D7CA3E);
  LOBYTE(STACK[0x5FD]) = (((v131 - 61) ^ 0x5B) - 125) ^ (v131 - 61) ^ (((v131 - 61) ^ 0x3F) - 25) ^ (((v131 - 61) ^ 0xBD) + 101) ^ (99 - v131) ^ 0x4A;
  LOBYTE(STACK[0x549]) = (v136 - ((2 * v136) & 0x8C) + 70) ^ 0x43;
  LOBYTE(STACK[0x682]) = (v135 - ((2 * v135) & 0xD4) + 106) ^ 0x6F;
  LOBYTE(STACK[0x3FA]) = (v124 - ((2 * v124) & 0x12) + 9) ^ 0xC;
  LOBYTE(v93) = v129 - (((v118 ^ 0x7F) + 89) ^ ((v118 ^ 0x70) + 88) ^ ((v118 ^ 0x37) + 17)) - 104;
  v140 = v136 - v135 - v138;
  LOBYTE(v129) = v131 + 83;
  LOBYTE(v124) = (v139 + 126) & 0xD2 | 0x28;
  LOBYTE(STACK[0x533]) = (v139 + 126) ^ (2 * ((v139 + 126) & (2 * ((v139 + 126) & (2 * ((v139 + 126) & (2 * ((v139 + 126) & (2 * ((v139 + 126) & (2 * v124) ^ v124)) ^ v124)) ^ v124)) ^ v124)) ^ v124)) ^ 0xD7;
  LOBYTE(v124) = (v104 ^ 6) - 81 + v93;
  LOBYTE(v135) = v131 - 93 + ((((v131 - 61) ^ 0x5B) - 125) ^ (v131 - 61) ^ (((v131 - 61) ^ 0x3F) - 25) ^ (((v131 - 61) ^ 0xBD) + 101) ^ (99 - v131) ^ 0x1E ^ v118);
  LOBYTE(STACK[0x35F]) = ((v124 ^ 0x9A) + 103) ^ v124 ^ ((v124 ^ 0xC7) + 60) ^ ((v124 ^ 0x25) - 38) ^ ((v124 ^ 0x7B) - 120) ^ 0x6F;
  LOBYTE(v103) = v93 - (v131 - 93);
  LOBYTE(v118) = ((v103 + 22) ^ 0x3F) & (2 * ((v103 + 22) & 0x3F)) ^ (v103 + 22) & 0x3F;
  LOBYTE(v93) = ((2 * ((v103 + 22) ^ 3)) ^ 0x78) & ((v103 + 22) ^ 3) ^ (2 * ((v103 + 22) ^ 3)) & 0x3C;
  LOBYTE(STACK[0x5E7]) = (v103 + 22) ^ (2 * (((4 * (v93 ^ 4)) & 0x30 ^ ((4 * (v93 ^ 4)) ^ 0xF0) & (v93 ^ 4) ^ 0x30) & (16 * ((v93 ^ 0x38) & (4 * v118) ^ v118)) ^ (v93 ^ 0x38) & (4 * v118) ^ v118)) ^ 0x53;
  LOBYTE(STACK[0x3E4]) = (v140 + (~(2 * v140) | 0x39) + 100) ^ 0x66;
  LOBYTE(STACK[0x66C]) = (v138 - ((2 * v138) & 0xA0) + 80) ^ 0x55;
  LOBYTE(v106) = (v131 + 83) ^ 0x15;
  LOBYTE(v118) = (v131 + 83) & 0xA7;
  LOBYTE(v131) = (2 * v118) & ((v131 + 83) ^ 0x17) ^ v118;
  LOBYTE(v106) = ((2 * v106) ^ 0x64) & v106 ^ (2 * v106) & 0xB2;
  LOBYTE(STACK[0x498]) = v129 ^ (2 * ((((4 * (v106 ^ 0x92)) ^ 0xC0) & (v106 ^ 0x92) ^ (4 * (v106 ^ 0x92)) & 0xB0) & (16 * ((v106 ^ 0x20) & (4 * v131) ^ v131)) ^ (v106 ^ 0x20) & (4 * v131) ^ v131)) ^ 0xCB;
  LOBYTE(v131) = ((v135 - 7) ^ 0x5E) & (2 * ((v135 - 7) & 0x5E)) ^ (v135 - 7) & 0x5E;
  LOBYTE(v106) = ((2 * ((v135 - 7) ^ 0x72)) ^ 0x58) & ((v135 - 7) ^ 0x72) ^ (2 * ((v135 - 7) ^ 0x72)) & 0x2C;
  v141 = (v106 ^ 8) & (4 * v131) ^ v131;
  LOBYTE(v131) = 4 * (v106 ^ 0x24);
  v142 = (v131 ^ 0xA0) & (v106 ^ 0x24);
  v143 = v137 + v138;
  v144 = v140 - (v137 + v138);
  LOBYTE(v137) = v131 & 0x2C ^ v142;
  LOBYTE(v131) = v143 - 48;
  LOBYTE(STACK[0x349]) = (v135 - 7) ^ (2 * ((v137 ^ 0x20) & (16 * v141) ^ v141)) ^ 0x32;
  LOBYTE(v140) = v124 + v129;
  v145 = (v143 - 100584240) ^ 0x8466F102;
  v146 = v139 + v138 + v145;
  LOBYTE(v104) = 49 - v135 + v103 - 51;
  LOBYTE(v103) = (2 * v118) & (v129 ^ 0xB6) ^ v118;
  LOBYTE(v124) = ((2 * (v129 ^ 0xB0)) ^ 0x2E) & (v129 ^ 0xB0) ^ (2 * (v129 ^ 0xB0)) & 0x16;
  LOBYTE(v129) = v129 ^ (2 * ((((4 * (v124 ^ 0x11)) ^ 0x5C) & (v124 ^ 0x11) ^ (4 * (v124 ^ 0x11)) & 0x14 ^ 0x10) & (16 * ((v124 ^ 4) & (4 * v103) ^ v103)) ^ (v124 ^ 4) & (4 * v103) ^ v103 ^ 0x17)) ^ 0x27;
  v147 = v138 ^ 0x7FD278AE;
  LOBYTE(v138) = v135 + 39;
  LOBYTE(v129) = v129 + 108;
  LOBYTE(v103) = (v129 ^ 0x6C) & (2 * (v129 & 0x4C)) ^ v129 & 0x4C;
  LOBYTE(v135) = ((2 * (v129 ^ 0xFC)) ^ 0x60) & (v129 ^ 0xFC) ^ (2 * (v129 ^ 0xFC)) & 0xB0;
  LOBYTE(v103) = v129 ^ (2 * ((((4 * (v135 ^ 0x90)) ^ 0xC0) & (v135 ^ 0x90) ^ (4 * (v135 ^ 0x90)) & 0xB0 ^ 0x80) & (16 * ((v135 ^ 0x20) & (4 * v103) ^ v103)) ^ (v135 ^ 0x20) & (4 * v103) ^ v103 ^ 0xB0));
  LOBYTE(STACK[0x51D]) = (v143 - ((2 * v143) & 0x7C) + 62) ^ 0x3B;
  LOBYTE(v143) = v103 ^ v104;
  v148 = v144 ^ (v147 - 1419110216);
  LOBYTE(STACK[0x5BB]) = v138 ^ 0x6E;
  LOBYTE(STACK[0x3CE]) = (v146 - ((2 * v146) & 0x8F) - 57) ^ 0xC2;
  LOBYTE(STACK[0x333]) = v103 ^ 0x40;
  LOBYTE(STACK[0x507]) = (v147 - 72 - ((2 * (v147 - 72)) & 0xC0) - 32) ^ 0xE5;
  LOBYTE(v104) = v140 + (((v138 ^ 0xF6) + 111) ^ ((v138 ^ 0x3A) - 93) ^ ((v138 ^ 0xCE) + 87));
  LOBYTE(STACK[0x656]) = (v148 - ((2 * v148) & 0xA8) + 84) ^ 0x51;
  LOBYTE(v144) = ((v103 ^ 0x22) - 96) ^ ((v103 ^ 0xBB) + 7) ^ ((v103 ^ 0xB5) + 9);
  LOBYTE(v118) = ((v104 + 87) ^ 0x32) & (2 * ((v104 + 87) & 0xB2)) ^ (v104 + 87) & 0xB2;
  LOBYTE(v103) = ((v104 + 87) ^ 0x32) & (2 * ((v104 + 87) ^ 0x32));
  v149 = v147 - 1419110216 - v146;
  LOBYTE(v135) = v103 & (4 * v103) & (16 * (v103 & (4 * v118) ^ v118)) ^ v103 & (4 * v118) ^ v118;
  LOBYTE(v103) = v146 - v149;
  LOBYTE(STACK[0x5D1]) = (v104 + 87) ^ (2 * v135) ^ 0xDE;
  LOBYTE(STACK[0x3B8]) = (v131 - ((2 * v131) & 0xB0) + 88) ^ 0x5F;
  v150 = v146 + v145;
  LOBYTE(STACK[0x482]) = v143 ^ 0x40;
  LOBYTE(v145) = v144 - v104;
  v151 = v150 - (v146 - v149);
  v152 = (((v146 - v149 + 966593759) & 0x6FDF7D27) + ((1180889888 - (v146 - v149)) & 0x6FDF7D27)) & 0x6BF7B72B;
  LOBYTE(v146) = (((v138 ^ 0xB9) + 34) ^ ((v138 ^ 3) - 100) ^ ((v138 ^ 0xB8) + 33)) + v104 + 87;
  LOBYTE(v104) = ((v104 - v145 - 73) ^ 0xBD) - 20 + ((2 * (v104 - v145 - 73)) & 0x7A);
  v153 = v149 - v152 + v148;
  LOBYTE(STACK[0x640]) = (v103 + ((2 * v103 + 38) & 0x80) - 45) ^ 0xC5;
  LOBYTE(STACK[0x4F1]) = (v148 - ((2 * v148) & 0x48) + 36) ^ 0x21;
  LOBYTE(STACK[0x46C]) = ((v104 ^ 0x11) + 72) ^ v104 ^ ((v104 ^ 0x72) + 37) ^ ((v104 ^ 0x3D) + 108) ^ ((v104 ^ 0xF7) - 94) ^ 0xC5;
  LOBYTE(STACK[0x31D]) = v143 ^ 0x40;
  LOBYTE(v148) = v146 - 82 - v104;
  LOBYTE(v104) = v148 + 15;
  LOBYTE(STACK[0x456]) = (-18 - v148) ^ (v148 + 15) ^ (((v148 + 15) ^ 0xEF) - 18) ^ (((v148 + 15) ^ 0x11) + 20) ^ (((v148 + 15) ^ 0xFC) - 1) ^ 0x91;
  LOBYTE(STACK[0x3A2]) = (v149 - v152 - ((2 * (v149 - v152)) & 0x40) + 32) ^ 0x25;
  LOBYTE(v118) = ((2 * (v145 - 19)) & 0xAA ^ 0x55) & (v145 - 19);
  LOBYTE(v147) = ((2 * ((v145 - 19) ^ 0xA2)) ^ 0xEE) & ((v145 - 19) ^ 0xA2) ^ (2 * ((v145 - 19) ^ 0xA2)) & 0xF6;
  LOBYTE(v103) = (v147 ^ 0xE4) & (4 * v118) ^ v118;
  v154 = v151 - 680310989;
  LOBYTE(STACK[0x5A5]) = (v145 - 19) ^ (2 * ((((v147 ^ 0x11) & 0xD0 | (v147 ^ 0xE0) & (4 * (v147 ^ 0x11))) ^ 0xDF) & (16 * v103) ^ v103)) ^ 0x39;
  v155 = v150 + 753248582;
  LOBYTE(v150) = (v151 - ((2 * v151 + 2) & 6) - 16) ^ 6;
  LOBYTE(v151) = (((v143 ^ 0xD7) + 19) ^ ((v143 ^ 0xD9) + 29) ^ ((v143 ^ 0x22) - 24)) + v145 - 19;
  LOBYTE(v143) = v151 - 122;
  LOBYTE(STACK[0x62A]) = v150;
  v156 = v149 - v152 - v154;
  v157 = v155 + v154;
  LOBYTE(v150) = v104 + v146 - 82;
  LOBYTE(v145) = (v145 - v104 - 7) ^ (v146 + 93);
  LOBYTE(v131) = v146 + 66 + v151 - 122 - ((2 * (v146 + 66 + v151 - 122)) & 0xE8) - 12;
  LOBYTE(STACK[0x307]) = v131 ^ 0x98;
  LOBYTE(STACK[0x440]) = v145 ^ 0x6C;
  LOBYTE(v104) = v151 + 121;
  LOBYTE(v146) = (v151 + 121) ^ 2;
  LOBYTE(v151) = ((v151 + 121) ^ 0x32) & (2 * ((v151 + 121) & 0x38)) ^ (v151 + 121) & 0x38;
  LOBYTE(v146) = ((2 * v146) ^ 0x74) & v146 ^ (2 * v146) & 0x3A;
  LOBYTE(v151) = v151 ^ 0x3A ^ (v146 ^ 0x20) & (4 * v151);
  LOBYTE(v154) = ((16 * v151) ^ 0x20) & ((4 * (v146 ^ 0xA)) & 0x30 ^ ((4 * (v146 ^ 0xA)) ^ 0xE0) & (v146 ^ 0xA) ^ 0x10);
  v158 = v156 ^ v155;
  v159 = v153 + v155;
  LOBYTE(v154) = (16 * v151) & 0x30 ^ v151 ^ v154;
  v160 = v158 - 759413340;
  v161 = v159 ^ 0x56CE987D;
  LOBYTE(STACK[0x58F]) = v104 ^ (2 * v154) ^ 0x60;
  LOBYTE(STACK[0x2F1]) = (((v150 - 127) ^ 0xF7) - 126) ^ (v150 - 127) ^ (((v150 - 127) ^ 0xC) + 123) ^ (((v150 - 127) ^ 0xCF) - 70) ^ (((v150 - 127) ^ 0xBD) - 52) ^ 0xE5;
  LOBYTE(STACK[0x4DB]) = (v159 - ((2 * v159) & 0xE4) + 114) ^ 0x77;
  LOBYTE(v159) = ((v145 ^ 0xA5) - 79) ^ ((v145 ^ 0x84) - 110) ^ ((v145 ^ 0x21) + 53);
  LOBYTE(v104) = (v153 + 123) & 0x4F ^ 0x42;
  v162 = v157 + 243915060;
  LOBYTE(v145) = (v153 + 123) ^ 0x4A;
  LOBYTE(STACK[0x614]) = (v158 - ((2 * v158) & 0xD2) + 105) ^ 0x6C;
  LOBYTE(STACK[0x38C]) = v145 ^ (2 * (v145 & (2 * (v145 & (2 * (v145 & (2 * (v145 & (2 * (((v153 + 123) ^ 0xA) & (2 * (((v153 + 123) ^ 2) & (2 * (v153 + 123)) & 0x16 ^ v104)) ^ v104)) ^ v104)) ^ v104)) ^ v104)) ^ v104));
  v163 = v153 - v158 + 1057747362;
  LOBYTE(v145) = v143 - v159 - 99;
  v164 = v157 + 243915060 - v161;
  LOBYTE(v158) = v164 + v158 - 92;
  LOBYTE(v153) = v150 - (v131 ^ 0x89) - 126;
  LOBYTE(STACK[0x4C5]) = (v157 - ((2 * v157) & 0x40) - 96) ^ 0xA5;
  LOBYTE(STACK[0x42A]) = v145 ^ 0xFC;
  LOBYTE(v157) = (v153 ^ 0x2A) & (2 * (v153 ^ 0x2A));
  LOBYTE(v150) = v157 & (4 * (((2 * v153) & 0x54 ^ 0xAA) & v153)) ^ ((2 * v153) & 0x54 ^ 0xAA) & v153;
  LOBYTE(STACK[0x563]) = v153 ^ (2 * (v157 & (4 * v157) & (16 * v150) ^ v150)) ^ 0xC6;
  v165 = v160 + v162;
  LOBYTE(v160) = v153 - 114 + v159;
  LOBYTE(v159) = (v160 ^ 3) & (2 * (v160 & 0xAA)) ^ v160 & 0xAA;
  LOBYTE(v161) = ((2 * (v160 ^ 0x13)) ^ 0x72) & (v160 ^ 0x13) ^ (2 * (v160 ^ 0x13)) & 0xB8;
  LOBYTE(v159) = (((4 * (v161 ^ 0x89)) ^ 0xE4) & (v161 ^ 0x89) ^ (4 * (v161 ^ 0x89)) & 0xB8 ^ a22) & (16 * ((v161 ^ 0x31) & (4 * v159) ^ v159)) ^ (v161 ^ 0x31) & (4 * v159) ^ v159 ^ 0xB9;
  v166 = v165 - v164;
  LOBYTE(v160) = v160 ^ (2 * v159);
  LOBYTE(v104) = (v131 ^ 0x89) + 100 + (((v160 ^ 0xF) + 19) ^ ((v160 ^ 0xBE) - 92) ^ ((v160 ^ 0x69) + 117));
  LOBYTE(STACK[0x5FE]) = (v163 - ((2 * v163) & 0xF8) + 124) ^ 0xE9;
  LOBYTE(STACK[0x579]) = ((v104 ^ 0xED) + 57) ^ v104 ^ ((v104 ^ 0x62) - 72) ^ ((v104 ^ 0xDB) + 15) ^ ((v104 ^ 0x7E) - 84) ^ 0x46;
  LOBYTE(STACK[0x6B2]) = v160 ^ 0xB4;
  LOBYTE(v165) = v165 + 70;
  LOBYTE(v150) = v165 & 0x74 ^ 0x6D;
  LOBYTE(v160) = v145 ^ 0x48 ^ v160;
  LOBYTE(STACK[0x376]) = v165 ^ (2 * ((v165 ^ 0x3A) & (2 * ((v165 ^ 0x3A) & (2 * ((v165 ^ 0x3A) & (2 * ((v165 ^ 0x3A) & (2 * ((v165 ^ 0x3A) & (2 * ((v165 ^ 0x3A) & 0xE ^ v150)) ^ v150)) ^ v150)) ^ v150)) ^ v150)) ^ v150)) ^ 0x71;
  LOBYTE(v159) = v104 - v153;
  LOBYTE(v165) = v163 ^ 0x90 ^ v158;
  LOBYTE(STACK[0x4AF]) = (v158 - ((2 * v158) & 0x4C) + 38) ^ 0x23;
  v167 = v166 ^ v163 ^ 0x466F9090;
  LOBYTE(v145) = v145 ^ 0x61 ^ (v104 - v153 - ((2 * (v104 - v153) + 88) & 0xE2) + 29);
  v168 = v164 ^ 0x6149C873;
  LOBYTE(v160) = v160 + v145 + 54;
  LOBYTE(STACK[0x360]) = (v164 - ((2 * v164) & 0x8C) + 70) ^ 0x43;
  LOBYTE(v164) = (v166 ^ v163 ^ 0x90) + 31;
  LOBYTE(v163) = v164 & 0x3D ^ 0xC9;
  LOBYTE(v131) = v160 - 60;
  v169 = v168 + v166;
  LOBYTE(STACK[0x499]) = v164 ^ (2 * ((v164 ^ 0x2A) & (2 * ((v164 ^ 0x2A) & (2 * ((v164 ^ 0x2A) & (2 * ((v164 ^ 0x2A) & (2 * ((v164 ^ 0x2A) & (2 * (((2 * v164) & 0x56 ^ 0x16) & (v164 ^ 2) ^ v163)) ^ v163)) ^ v163)) ^ v163)) ^ v163)) ^ v163)) ^ 0x38;
  LOBYTE(STACK[0x5E8]) = (v169 - ((2 * v169) & 0x8A) - 59) ^ 0xC0;
  LOBYTE(v153) = v153 ^ ((v153 ^ 0x24) - 114) ^ ((v153 ^ 0x32) - 100) ^ ((v153 ^ 0xF7) + 95) ^ ((v153 ^ a20) + 31) ^ 0x25;
  LOBYTE(STACK[0x54D]) = (((v160 - 60) ^ 0x12) - 34) ^ (v160 - 60) ^ (((v160 - 60) ^ 0xC3) + 13) ^ (((v160 - 60) ^ 0xF) - 63) ^ (((v160 - 60) ^ 0xEE) + 34) ^ 0x5C;
  LOBYTE(v159) = v153 - 76 + v159;
  LOBYTE(v152) = v167 - 54 + v165;
  LOBYTE(v164) = v168 - v152;
  v170 = v167 + v169;
  LOBYTE(v165) = v153 - (v160 - 60) + 32;
  LOBYTE(STACK[0x69C]) = (v145 + 54) ^ (54 - v145) ^ (((v145 + 54) ^ 0x17) - 123) ^ (((v145 + 54) ^ 0xE0) + 116) ^ (((v145 + 54) ^ 0x64) - 8);
  LOBYTE(STACK[0x34A]) = (v152 - ((2 * v152) & 0xEF) + 119) ^ 0x72;
  LOBYTE(STACK[0x414]) = ((v159 ^ 0x7C) + 12) ^ v159 ^ ((v159 ^ 0xA) + 126) ^ ((v159 ^ 3) + 117) ^ ((v159 ^ 0xFD) - 117) ^ 0xE4;
  LOBYTE(v153) = v145 + 54 + v159;
  LOBYTE(STACK[0x686]) = (v153 + 31) ^ (23 - v153) ^ (((v153 + 31) ^ 0x65) - 83) ^ (((v153 + 31) ^ 0xAA) + 100) ^ (((v153 + 31) ^ 6) - 48) ^ 0x5A;
  LOBYTE(v160) = (((10 - v160) ^ 0x9F) + 11) ^ (10 - v160) ^ (((10 - v160) ^ 0x9F) + 11) ^ (((10 - v160) ^ 0x81) + 21) ^ (((10 - v160) ^ 0xEB) + 127);
  LOBYTE(v104) = ((2 * (v165 ^ 0xB0)) ^ 0x40) & (v165 ^ 0xB0);
  LOBYTE(v159) = v104 & (4 * (((2 * v165) & 0x20 ^ 0x10) & v165)) ^ ((2 * v165) & 0x20 ^ 0x10) & v165;
  LOBYTE(v104) = v104 & (4 * v104) & (16 * v159) ^ v159;
  LOBYTE(STACK[0x537]) = v160 ^ 6;
  LOBYTE(v145) = v145 - 121 + v131;
  LOBYTE(v159) = (v145 ^ 0x2E) & (2 * (v145 & 0xB0)) ^ v145 & 0xB0;
  LOBYTE(v131) = ((2 * (v145 ^ 0x2E)) ^ 0x3C) & (v145 ^ 0x2E) ^ (2 * (v145 ^ 0x2E)) & 0x9E;
  LOBYTE(v145) = v145 ^ (2 * ((((4 * (v131 ^ 0x82)) ^ 0x78) & (v131 ^ 0x82) ^ (4 * (v131 ^ 0x82)) & 0x9C) & (16 * (v131 & (4 * v159) ^ v159)) ^ v131 & (4 * v159) ^ v159 ^ 0x9E));
  LOBYTE(STACK[0x3E8]) = v145 ^ 0xE0;
  LOBYTE(v159) = (v167 + v169 + 27) & 0x1A ^ 0x4F;
  LOBYTE(v163) = (v167 + v169 + 27) ^ 0xC;
  LOBYTE(v159) = v163 & (2 * (v163 & (2 * (v163 & (2 * (v163 & (2 * (v163 & (2 * (v163 & 0x16 ^ v159)) ^ v159)) ^ v159)) ^ v159)) ^ v159)) ^ v159;
  LOBYTE(v163) = (v164 - 2 * (v164 & 0x3F) - 65) ^ 0xBA;
  LOBYTE(STACK[0x5D2]) = v163;
  LOBYTE(v104) = v165 ^ (2 * v104) ^ 0x7C;
  LOBYTE(STACK[0x3FE]) = v104;
  LOBYTE(v149) = v160 ^ 0xE6 ^ v145;
  LOBYTE(v160) = v152 + v167 - 54 - 99;
  LOBYTE(STACK[0x483]) = (v167 + v169 + 27) ^ (2 * v159) ^ 0x1F;
  LOBYTE(STACK[0x334]) = (52 - v152 - ((2 * (52 - v152)) & 0xEF) + 119) ^ 0x72;
  LOBYTE(STACK[0x5BC]) = (v160 - ((2 * v160) & 0x1C) - 114) ^ 0x8B;
  *(&STACK[0x2E0] + ((v170 + 115) & 0x18D) + ((396 - v170) & 0x18D)) = v163;
  LOBYTE(STACK[0x670]) = v104;
  LOBYTE(v169) = v145 ^ 0xFC;
  LOBYTE(v145) = v153 - v165 + (v145 ^ 0xFC) + 24;
  LOBYTE(v159) = ((v145 + v149) ^ 0x5C) & (2 * ((v145 + v149) & 0x5D)) ^ (v145 + v149) & 0x5D;
  LOBYTE(v104) = ((2 * ((v145 + v149) ^ 0x56)) ^ 0x16) & ((v145 + v149) ^ 0x56) ^ (2 * ((v145 + v149) ^ 0x56)) & 0xA;
  LOBYTE(v131) = (v145 + v149) ^ (2 * ((((4 * (v104 ^ 9)) ^ 0x2C) & (v104 ^ 9) ^ (4 * (v104 ^ 9)) & 8) & (16 * (v104 & (4 * v159) ^ v159)) ^ v104 & (4 * v159) ^ v159 ^ 0xB));
  LOBYTE(STACK[0x3D2]) = v131 ^ 0x27;
  LOBYTE(v159) = (v145 ^ 0x1D) & (2 * (v145 & 0x5D)) ^ v145 & 0x5D;
  LOBYTE(v104) = ((2 * (v145 ^ 0x25)) ^ 0xF0) & (v145 ^ 0x25) ^ (2 * (v145 ^ 0x25)) & 0x78;
  LOBYTE(v163) = v104 ^ 8;
  LOBYTE(v104) = v159 ^ 0x78 ^ (v104 ^ 0x70) & (4 * v159);
  LOBYTE(STACK[0x521]) = v145 ^ (2 * (((4 * v163) & 0x78 ^ ((4 * v163) ^ 0xE0) & v163 ^ 0x60) & (16 * v104) ^ v104)) ^ 0xC1;
  LOBYTE(STACK[0x65A]) = (v169 - v165 - 116 - ((2 * (v169 - v165 - 116)) & 2) + 1) ^ 0x6D;
  LOBYTE(v165) = v165 - (((v131 ^ 0xF5) + 37) ^ ((v131 ^ 0xAD) + 125) ^ ((v131 ^ 0x13) - 61)) - 101;
  LOBYTE(v163) = v165 ^ 0x7E;
  LOBYTE(v162) = ((v165 ^ 0xDA) - 86) ^ v165;
  LOBYTE(v159) = ((v165 ^ 0x3A) + 74) ^ ((v165 ^ 0x12) + 98);
  LOBYTE(v170) = v170 - v164;
  LOBYTE(v164) = v164 + 100;
  LOBYTE(v170) = v170 + 67 + (v160 ^ 0x70);
  LOBYTE(v165) = v170 + (v160 ^ (52 - v152));
  LOBYTE(STACK[0x50B]) = v162 ^ v159 ^ (v163 + 14) ^ 0xE0;
  LOBYTE(STACK[0x457]) = ((v160 ^ 0x70) - v164 + (~(2 * ((v160 ^ 0x70) - v164)) | 0x95) + 54) ^ 0x30;
  LOBYTE(STACK[0x31E]) = (v170 - ((2 * v170) & 0xEA) - 11) ^ 0xF0;
  LOBYTE(STACK[0x308]) = (v164 - v165 - ((2 * (v164 - v165)) & 0xD8) + 108) ^ 0x69;
  LOBYTE(STACK[0x5A6]) = (v165 - ((2 * v165) & 0x5E) - 81) ^ 0xAA;
  v171 = a47 - 896346756 > a27;
  if (a27 < 0x1EB76222 != (a47 - 896346756) < 0x1EB76222)
  {
    v171 = (a47 - 896346756) < 0x1EB76222;
  }

  return (*(STACK[0x2D0] + 8 * (v48 ^ (67 * v171))))();
}

uint64_t sub_100A28648@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  v42 = a1 & 0x1EABFB6B;
  v43 = ((a1 & 0x1EABFB6B) - 549168753) & 0x20BB7F7F;
  v44 = *(v41 - 192);
  v45 = (*(v44 + 8 * (a1 & 0x1EABFB6B ^ 0x2290u)))(1032);
  *(v41 - 248) = v45 + 0x3D735E47EAB5DC8ALL;
  *(v41 - 212) = v43;
  return (*(v44 + 8 * (((v45 == 0) * (v43 - 12918)) ^ v42)))(a41, 1108376383);
}

uint64_t sub_100A2874C(int a1, int a2)
{
  v7 = *(*(v4 + 1360) + 4 * (a1 + (((a2 - 10327) | 0x2078) ^ (v5 + 1423)) - 8768 * (((((a2 - 10327) | 0x2078) ^ (v5 + 1423)) + a1) / 0x2240)));
  *(*(v4 + 1368) + v3 - 6152 * (((v3 * v6) >> 64) >> 12)) = (((v7 ^ 0x79) + 34) ^ ((v7 ^ 0xBF) - 24) ^ ((v7 ^ 0x20) + 121)) - 115;
  return (*(STACK[0x57D8] + 8 * ((29359 * (v2 == 0)) ^ a2)))((a1 + 6419));
}

uint64_t sub_100A28804()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 15561)))(1032);
  STACK[0xD8A0] = v2 + 0x6374D18FC38B0251;
  LODWORD(STACK[0x57C0]) = v0 - 4497;
  return (*(v1 + 8 * (((v2 == 0) * (v0 - 4497 + v0 + 1153691098 - 1153718842)) ^ v0)))();
}

uint64_t sub_100A28894(unint64_t a1)
{
  v4 = STACK[0xDCB8];
  v5 = *(STACK[0xDCB8] + a1 % 0x1808);
  LODWORD(STACK[0x5640]) = (v1 - 667687625) & 0x27CC2CB7;
  v6 = STACK[0xDCB0];
  v7 = *(STACK[0xDCB0] + 4 * ((6419 * (v5 + 166826156 + ((v5 < (((v1 + 55) & 0xB7) - 105)) << 8)) - 1394281026) % 0x2240));
  LODWORD(STACK[0x5540]) = *(STACK[0x5760] + 122);
  LODWORD(STACK[0x5530]) = *(STACK[0x55A0] + 3429);
  LODWORD(STACK[0x5610]) = *(STACK[0x5730] + 1093);
  LODWORD(STACK[0x5600]) = *(STACK[0x5740] + 3634);
  v8 = 5621 * (((v7 ^ 0x619C3F27) - 2140883633) ^ ((v7 ^ 0x925A5CA4) + 1940051662) ^ ((v7 ^ 0xF3C66365) + 306112781)) + 1538149210;
  v9 = ((HIBYTE(v7) ^ 0xE097D782) - 472673964) ^ ((HIBYTE(v7) ^ 0x66F7E80) + 86718546);
  v10 = HIBYTE(v7) ^ 0xE6F8A940;
  LOBYTE(v7) = *(v4 + 5621 * (BYTE1(v7) ^ 0x8F) + 32028458 - 6152 * (((89362129 * (5621 * (BYTE1(v7) ^ 0x8Fu) + 32028458)) >> 32) >> 7));
  v11 = v9 ^ (v10 - 440602734);
  LOBYTE(v10) = *(v4 + 5621 * (BYTE2(v7) ^ 0x38) + 32028458 - 6152 * (((89362129 * (5621 * (BYTE2(v7) ^ 0x38u) + 32028458)) >> 32) >> 7));
  v12 = *(v4 + v8 % 0x1808);
  LOBYTE(v11) = *(v4 + (5621 * v11 + 1204225926) % 0x1808u);
  v13 = v11 & 0x76 ^ 0xE1;
  LOBYTE(v8) = v10 & 0x98 ^ 0xB2;
  LOBYTE(v4) = v7 & 0x62 ^ 0x7F;
  v14 = (((v10 ^ (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * v8) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8))) ^ 0x98) << 8) | (((v11 ^ (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * (v13 ^ v11 & 2)) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13))) ^ 0x76) << 16);
  *(v6 + 4 * (v2 % 0x2240)) = ((((((v7 ^ (2 * ((v7 ^ 0x34) & (2 * ((v7 ^ 0x34) & (2 * ((v7 ^ 0x34) & (2 * ((v7 ^ 0x34) & (2 * ((v7 ^ 0x34) & (2 * ((v7 ^ 0x34) & 0x16 ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4))) ^ 0x2F6E03) & ~v14 | v14 & 0xD09100) << 8) ^ 0x98284BD4) & ((v12 ^ (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * (v12 | 0xD9)) & 0x5E ^ (v12 | 0xD9))) ^ (v12 | 0xD9))) ^ (v12 | 0xD9))) ^ (v12 | 0xD9))) ^ (v12 | 0xD9))) ^ (v12 | 0xD9)))) ^ 0xFFFFFFFA) | (v12 ^ (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * (v12 | 0xFFFFFFD9)) & 0x5E ^ (v12 | 0xFFFFFFD9))) ^ (v12 | 0xFFFFFFD9))) ^ (v12 | 0xFFFFFFD9))) ^ (v12 | 0xFFFFFFD9))) ^ (v12 | 0xFFFFFFD9))) ^ (v12 | 0xFFFFFFD9)))) & 0x2B) ^ 0xF57EA510;
  return (*(STACK[0x57D8] + 8 * ((14 * (v3 != 0)) ^ v1)))(a1 + 5621);
}

uint64_t sub_100A28D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x254]) = LODWORD(STACK[0x208]) - LODWORD(STACK[0x254]);
  LODWORD(STACK[0x3F8]) ^= LODWORD(STACK[0x214]) ^ *(v8 - 200) ^ a7 ^ LODWORD(STACK[0x21C]) ^ LODWORD(STACK[0x218]) ^ LODWORD(STACK[0x204]);
  return (*(*(v8 - 120) + 8 * ((9072 * (v7 == -1247136643)) ^ (v7 + 1360065264))))(0);
}

uint64_t sub_100A28F8C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v19 = ((v12 ^ v17) >> v13) + (((v12 ^ v17) & v15) << v16);
  v20 = a6 & (4 * ((v19 ^ (2 * (v19 & a8))) & a8)) ^ v19 ^ (2 * (v19 & a8));
  v21 = (16 * (v20 & a8)) & (4 * (a8 & a4)) & v14 ^ v20 & (((v9 - 13740) | 0x2400) - 9065);
  v22 = *((v21 ^ 0x1571u) + v18 + 14679);
  v23 = (((v22 ^ 0xFFFFFF8B) + 117) ^ ((v22 ^ 0x5D) - 93) ^ ((v22 ^ 0xFFFFFFD3) + 45)) + (((v21 ^ 0xFFFFFFC4) - 55) ^ ((v21 ^ 0xFFFFFFC9) - 58) ^ (15 - (v21 ^ 0xFFFFFFE3))) + 10;
  v24 = v23 & 0x3F ^ 0xFFFFFFB0;
  v25 = v23 ^ (2 * ((v23 ^ 0x5E) & (2 * ((v23 ^ 0x5E) & (2 * ((v23 ^ 0x5E) & (2 * ((v23 ^ 0x5E) & (2 * ((v23 ^ 0x5E) & (2 * ((v23 ^ 0x5E) & (2 * v23) & 0x3E ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24));
  HIDWORD(v26) = v10;
  LODWORD(v26) = (v25 ^ 0xFFFFFFAD) << 24;
  v27 = 16 * (*(v18 + ((v26 >> 28) ^ 0x5Bu) + 1294) ^ ~(v26 >> 28));
  v28 = *(v18 + ((v27 & 0xAA | (*(v18 + ((((v25 ^ 0xAD) & 0xF) + v8) ^ 0x56u) + 777) ^ 0x27) & ~v27) ^ 0xD4) + 2068) ^ 0x65;
  *(STACK[0x8070] + v11 % 0x3282) = *(STACK[0x8070] + 12337 * v28 - 12930 * (((1328683 * (12337 * v28)) >> 32) >> 2));
  return (*(STACK[0x57D8] + 8 * ((47 * (v12 == 255)) ^ v9)))();
}

uint64_t sub_100A2918C(int a1, int a2, int a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x2C4]) = 0;
  v71 = (v68 + v65) ^ v64;
  LODWORD(STACK[0x2B8]) = v71;
  LODWORD(STACK[0x28C]) = v64 ^ v69;
  v72 = a2 - v71 + HIDWORD(a27) - 229602534;
  LODWORD(STACK[0x280]) = v72;
  LODWORD(STACK[0x2B0]) = v71 ^ a6;
  v73 = v72 ^ v71 ^ a6;
  LODWORD(STACK[0x290]) = v73;
  v73 -= 1520128811;
  v74 = v73 ^ v72;
  v545 = v74 + v73;
  v75 = (v74 + v73) ^ v64 ^ v69;
  LODWORD(STACK[0x298]) = v75;
  v76 = v75 ^ v74;
  LODWORD(STACK[0x218]) = v76;
  v77 = v76 + a35;
  v78 = (((v76 + a35) >> 16) & 0xF) * v63 + 621432;
  v536 = v78 - ((4369245 * v78) >> 32) * a5;
  v534 = (v76 + a35) >> (((v536 & 0xBC ^ 0xBC) + (v536 & 0xBC)) & 0xFC ^ 0xB4);
  LODWORD(STACK[0x250]) = v67 ^ a1;
  LODWORD(STACK[0x294]) = v66 ^ v67;
  v79 = v66 ^ v67 ^ v70;
  LODWORD(STACK[0x248]) = v79;
  v80 = v67 - (v66 ^ v67);
  LODWORD(STACK[0x2A4]) = v80;
  v81 = v80 - 498609093;
  v82 = (v80 - 498609093) ^ v79;
  LODWORD(STACK[0x258]) = v82;
  v82 -= 1520128811;
  v83 = v82 ^ v81;
  v84 = v83 + v82;
  LODWORD(STACK[0x238]) = v84;
  v85 = v84 ^ v67 ^ a1;
  LODWORD(STACK[0x210]) = v85;
  v86 = v85 ^ v83;
  LODWORD(STACK[0x2A8]) = v86;
  v87 = a36 - v86 - 749858936;
  v88 = &STACK[0x2E0];
  v89 = 16 * (*(&STACK[0x2E0] + ((v534 >> 4) * v63 + 621432 - ((4369245 * ((v534 >> 4) * v63 + 621432)) >> 32) * a5)) ^ 0x6C);
  v532 = ((v87 >> 28) * v63 + 621432) % ((v89 & 0x3D0 ^ a5) + (v89 & 0x3D0u));
  v90 = a32 - a3 - 529006108;
  LODWORD(STACK[0x224]) = a1;
  v91 = v64 + HIDWORD(a31);
  v92 = ((*(v88 + ((HIBYTE(v91) & 0xF) * v63 + 621432 - ((4369245 * ((HIBYTE(v91) & 0xF) * v63 + 621432)) >> 32) * a5)) ^ 0x6C) << 8) ^ ((*(v88 + ((v91 >> 28) * v63 + 621432 - ((4369245 * ((v91 >> 28) * v63 + 621432)) >> 32) * a5)) ^ 0xC) << 12) | *(v88 + ((HIWORD(v91) & 0xF) * v63 + 621432 - ((4369245 * ((HIWORD(v91) & 0xF) * v63 + 621432)) >> 32) * a5)) ^ 0x6C;
  LODWORD(STACK[0x230]) = v92;
  v93 = (((v64 + HIDWORD(a31)) >> 8) & 0xF) * v63 + 621432;
  LODWORD(STACK[0x288]) = v64 + HIDWORD(a31);
  v94 = (((*(v88 + (((v91 >> 20) & 0xF) * v63 + 621432 - ((4369245 * (((v91 >> 20) & 0xF) * v63 + 621432)) >> 32) * a5)) ^ 0x6C) << 20) | ((*(v88 + (v93 - ((4369245 * v93) >> 32) * a5)) ^ 0x6C) << 8)) ^ ((*(v88 + ((v91 >> 12) * v63 + 621432 - ((4369245 * ((v91 >> 12) * v63 + 621432)) >> 32) * a5)) ^ 0x6C) << 12);
  v95 = *(&STACK[0x2E0] + ((v91 & 0xF) * v63 + 621432 - ((4369245 * ((v91 & 0xF) * v63 + 621432)) >> 32) * a5)) ^ 0x6C;
  v96 = v94 ^ (v92 << 16);
  v97 = (v96 | v95) ^ (16 * (*(&STACK[0x2E0] + ((v91 >> 4) * v63 + 621432 - ((4369245 * ((v91 >> 4) * v63 + 621432)) >> 32) * a5)) ^ 0x6C));
  v98 = ((*(v88 + ((HIBYTE(v90) & 0xF) * v63 + 621432 - ((4369245 * ((HIBYTE(v90) & 0xF) * v63 + 621432)) >> 32) * a5)) ^ 0x6C) << 8) ^ ((*(v88 + ((v90 >> 28) * v63 + 621432 - ((4369245 * ((v90 >> 28) * v63 + 621432)) >> 32) * a5)) ^ 0x6C) << 12);
  LODWORD(STACK[0x228]) = v98;
  v99 = ((*(v88 + ((HIWORD(v90) & 0xF) * v63 + 621432) % ((135 - (HIWORD(v90) & 0xF) * v63) & a5 ^ ((HIWORD(v90) & 0xF) * v63 + 621432) & 0x3D0)) ^ 0x6C | v98) << 8) ^ ((*(v88 + (((v90 >> 20) & 0xF) * v63 + 621432 - 983 * ((4369245 * (((v90 >> 20) & 0xF) * v63 + 621432)) >> 32))) ^ 0x6C) << 12);
  v100 = *(&STACK[0x2E0] + (((a32 - a3 + 484) >> 12) * v63 + 621432 - 983 * ((4369245 * (((a32 - a3 + 484) >> 12) * v63 + 621432)) >> 32))) ^ 0x6C;
  v101 = v99 | *(&STACK[0x2E0] + (((v90 >> 8) & 0xF) * v63 + 621432 - 983 * ((4369245 * (((v90 >> 8) & 0xF) * v63 + 621432)) >> 32))) ^ 0x6C;
  LODWORD(STACK[0x208]) = v99;
  v102 = (v101 << 8) ^ (v100 << 12);
  v103 = (v90 >> 4) * v63 + 621432 - 983 * ((4369245 * ((v90 >> 4) * v63 + 621432)) >> 32);
  v104 = *(&STACK[0x2E0] + ((v90 & 0xF) * v63 + 621432 - 983 * ((4369245 * ((v90 & 0xF) * v63 + 621432)) >> 32))) ^ 0x6C;
  LOBYTE(v100) = *(&STACK[0x2E0] + v103) ^ ((v102 | v104) >> 4);
  v105 = v95 & 0xF;
  v106 = (v105 | (16 * (v104 & 0xF))) * v63;
  v107 = v106 + 16848 - 983 * ((4369245 * (v106 + 16848)) >> 32);
  v108 = LOBYTE(STACK[0x390]) ^ 0x6C;
  LODWORD(STACK[0x268]) = v108;
  v109 = *(&STACK[0x2E0] + (v106 + 406944 - 983 * ((4369245 * (v106 + 406944)) >> 32)));
  LODWORD(STACK[0x270]) = 16 * v108;
  v110 = (16 * v108) ^ 0x6C;
  v111 = (v109 ^ v110) * v63;
  v112 = v111 + 406944 - 983 * (((8738489 * (v111 + 406944)) >> 32) >> 1);
  v113 = *(&STACK[0x2E0] + v111 + 16848 - 983 * (((8738489 * (v111 + 16848)) >> 32) >> 1)) >> 4;
  v114 = (((v113 ^ 6) + ((2 * ((v113 ^ 6 | 0x7C) ^ v113)) ^ 0xB) + 109) ^ *(&STACK[0x2E0] + v107)) * v63 + 406944;
  LOBYTE(v100) = v100 ^ 0x6C;
  v115 = ((v97 >> 4) | (16 * (v100 & 0xF))) * v63;
  v116 = *(v88 + (v115 + 406944 - 983 * ((4369245 * (v115 + 406944)) >> 32))) ^ (16 * (*(v88 + (v114 - 983 * ((4369245 * v114) >> 32))) ^ 0x6C));
  LOWORD(v108) = v116 ^ 0x6C;
  v117 = (v116 ^ 0x6C) * v63;
  v118 = v117 + 406944 - 983 * (((8738489 * (v117 + 406944)) >> 32) >> 1);
  v119 = *(&STACK[0x2E0] + v117 + 16848 - 983 * (((8738489 * (v117 + 16848)) >> 32) >> 1)) >> 4;
  v120 = (v100 & 0xF0 | (v97 >> 8) & 0xF) * v63;
  v121 = (*(v88 + (v120 + 406944 - 983 * ((4369245 * (v120 + 406944)) >> 32))) ^ (16 * (*(v88 + ((((v119 ^ 6) + ((2 * ((v119 ^ 6 | 0x7C) ^ v119)) ^ 0xB) + 109) ^ *(v88 + (v115 + 16848 - 983 * ((4369245 * (v115 + 16848)) >> 32)))) + 93601500 * (((v108 & 0xB4F ^ 0x3FBCB4F) + (v108 & 0xB4F)) & 0x2F2CA4Bu)) * v63 % 0x3D7) ^ 0x6C)) ^ 0x6C) * v63;
  v122 = (*(&STACK[0x2E0] + v121 + 16848 - 983 * (((8738489 * (v121 + 16848)) >> 32) >> 1)) >> 4) ^ 6;
  v123 = ((v122 - ((2 * v122) & 0x18) + 108) ^ *(&STACK[0x2E0] + (v120 + 16848 - 983 * ((4369245 * (v120 + 16848)) >> 32)))) * v63 + 406944;
  v124 = ((v102 >> 8) & 0xF0 | (v94 >> 12)) * v63;
  v125 = (*(v88 + (v124 + 406944 - 983 * ((4369245 * (v124 + 406944)) >> 32))) ^ (16 * (*(v88 + (v123 - 983 * ((4369245 * v123) >> 32))) ^ 0x6C)) ^ 0x6C) * v63;
  v126 = v125 + 406944 - 983 * (((8738489 * (v125 + 406944)) >> 32) >> 1);
  v127 = *(&STACK[0x2E0] + v125 + 16848 - 983 * (((8738489 * (v125 + 16848)) >> 32) >> 1));
  v128 = ((((v127 >> 4) ^ 6) - 2 * (((v127 >> 4) ^ 6) & 0xFD ^ ((v127 & 0x10) != 0)) + 108) ^ *(&STACK[0x2E0] + (v124 + 16848 - 983 * ((4369245 * (v124 + 16848)) >> 32)))) * v63 + 406944;
  v129 = ((v102 >> 12) & 0xF0 | HIWORD(v96) & 0xF) * v63;
  v130 = (*(v88 + (v129 + 406944 - 983 * ((4369245 * (v129 + 406944)) >> 32))) ^ (16 * (*(v88 + (v128 - 983 * ((4369245 * v128) >> 32))) ^ 0x6C)) ^ 0x6C) * v63;
  v131 = v130 + 406944 - 983 * (((8738489 * (v130 + 406944)) >> 32) >> 1);
  v132 = (*(&STACK[0x2E0] + v130 + 16848 - 983 * (((8738489 * (v130 + 16848)) >> 32) >> 1)) >> 4) ^ 6;
  v133 = ((v132 - ((2 * v132) & 0x18) + 108) ^ *(&STACK[0x2E0] + (v129 + 16848 - 983 * ((4369245 * (v129 + 16848)) >> 32)))) * v63 + 406944;
  v134 = ((v99 >> 8) & 0xF0 | (v96 >> 20) & 0xF) * v63;
  LODWORD(STACK[0x200]) = v134;
  v543 = (*(v88 + (v134 + 406944 - 983 * ((4369245 * (v134 + 406944)) >> 32))) ^ (16 * (*(v88 + (v133 - 983 * ((4369245 * v133) >> 32))) ^ 0x6C)) ^ 0x6C) * v63;
  v135 = ((*(v88 + v543 + 406944 - 983 * (((8738489 * (v543 + 406944)) >> 32) >> 1)) ^ 0x6C) << 20) ^ ((*(v88 + v131) ^ 0x6C) << 16);
  LOBYTE(v133) = *(&STACK[0x2E0] + v112);
  LOBYTE(v112) = *(&STACK[0x2E0] + v118) ^ 0x6C;
  v136 = v105 & 0xFFFFFF0F | (16 * ((v133 ^ 0x6C) & 0xF));
  LOBYTE(v118) = v133 ^ 0x6C ^ (16 * v112);
  v137 = *(&STACK[0x2E0] + v121 + 406944 - 983 * (((8738489 * (v121 + 406944)) >> 32) >> 1)) ^ 0x6C;
  v138 = ((*(&STACK[0x2E0] + v126) ^ 0x6C) << 12) ^ (v137 << 8);
  v139 = (v118 & 0xF0 | (v97 >> 4)) * v63 + 235224;
  v140 = (v112 ^ (16 * v137)) & 0xF0 | (v97 >> 8) & 0xF;
  v141 = (v138 >> 8) & 0xF0 | (v94 >> 12);
  v142 = v140 * v63 + 235224 - 983 * ((4369245 * (v140 * v63 + 235224)) >> 32);
  v143 = (((2 * v141) & 0xD6) + (v141 ^ 0x16B)) * v63;
  v144 = ((*(v88 + v142) ^ 0x6C) << 8) ^ (16 * (*(v88 + (v139 - 983 * ((4369245 * v139) >> 32))) ^ 0x6C)) ^ ((*(v88 + (v143 - 983 * ((4369245 * v143) >> 32))) ^ 0x6C) << 12);
  v541 = v135 ^ v138;
  v145 = (((v135 ^ v138) >> 12) & 0xF0 | HIWORD(v96) & 0xF) * v63 + 235224;
  v542 = *(&STACK[0x2E0] + (v136 * v63 + 235224 - 983 * ((4369245 * (v136 * v63 + 235224)) >> 32)));
  v146 = HIWORD(v135) & 0xF0 | (v96 >> 20) & 0xF;
  v538 = v96;
  v147 = (((2 * v146) & 0xD6) + (v146 ^ 0x16B)) * v63;
  v530 = v144 ^ ((*(v88 + (v145 - 983 * ((4369245 * v145) >> 32))) ^ 0x6C) << 16) ^ ((*(v88 + (v147 - 983 * ((4369245 * v147) >> 32))) ^ 0x6C) << (v542 & 0x14 ^ 0x10 | v542 & 0x14 ^ 4));
  v539 = HIBYTE(v96) >> ((((v135 ^ v138) >> 16) & 4 ^ 4) + (((v135 ^ v138) >> 16) & 4));
  v148 = ((((*(v88 + ((HIBYTE(v77) & 0xF) * v63 + 621432 - 983 * ((4369245 * ((HIBYTE(v77) & 0xF) * v63 + 621432)) >> 32))) ^ 0x6C) << 8) ^ ((*(v88 + ((v77 >> 28) * v63 + 621432 - 983 * ((4369245 * ((v77 >> 28) * v63 + 621432)) >> 32))) ^ 0x6C) << 12) | *(v88 + v536) ^ 0x6C) << 8) ^ ((*(v88 + (((v77 >> 20) & 0xF) * v63 + 621432 - 983 * ((4369245 * (((v77 >> 20) & 0xF) * v63 + 621432)) >> 32))) ^ 0x6C) << 12);
  LODWORD(STACK[0x260]) = v77;
  v149 = (v148 | *(&STACK[0x2E0] + ((v534 & 0xF) * v63 + 621432 - 983 * ((4369245 * ((v534 & 0xF) * v63 + 621432)) >> 32))) ^ 0x6C) ^ v89;
  v150 = (*(v88 + ((v77 & 0xF) * v63 + 621432 - 983 * ((4369245 * ((v77 & 0xF) * v63 + 621432)) >> 32))) ^ 0x6C | (v149 << 8)) ^ (16 * (*(v88 + ((v77 >> 4) * v63 + 621432 - 983 * ((4369245 * ((v77 >> 4) * v63 + 621432)) >> 32))) ^ 0x6C));
  v151 = ((*(v88 + ((HIBYTE(v87) & 0xF) * v63 + 621432 - 983 * ((4369245 * ((HIBYTE(v87) & 0xF) * v63 + 621432)) >> 32))) ^ 0x6C) << 8) ^ ((*(v88 + v532) ^ 0x6C) << 12);
  v152 = ((((v87 >> 20) & 0xF) + 959) & v63 ^ -(v87 >> 20) & 8) * (((v87 >> 20) & 0xF) + 959);
  v153 = ((v151 | *(v88 + ((HIWORD(v87) & 0xF) * v63 + 621432 - 983 * ((4369245 * ((HIWORD(v87) & 0xF) * v63 + 621432)) >> 32))) ^ 0x6C) << 8) ^ ((*(v88 + (v152 - 983 * ((4369245 * v152) >> 32))) ^ 0x6C) << 12);
  v154 = ((v153 | *(v88 + (((v87 >> 8) & 0xF) * v63 + 621432 - 983 * ((4369245 * (((v87 >> 8) & 0xF) * v63 + 621432)) >> 32))) ^ 0x6C) << 8) ^ ((*(v88 + ((v87 >> 12) * v63 + 621432 - 983 * ((4369245 * ((v87 >> 12) * v63 + 621432)) >> 32))) ^ 0x6C) << 12);
  v155 = *(&STACK[0x2E0] + ((v87 & 0xF) * v63 + 621432 - 983 * ((4369245 * ((v87 & 0xF) * v63 + 621432)) >> 32))) ^ 0x6C;
  LOBYTE(v138) = *(&STACK[0x2E0] + ((v87 >> 4) * v63 + 621432 - 983 * ((4369245 * ((v87 >> 4) * v63 + 621432)) >> 32))) ^ ((v154 | v155) >> 4);
  v156 = (*(&STACK[0x2E0] + ((v77 & 0xF) * v63 + 621432 - 983 * ((4369245 * ((v77 & 0xF) * v63 + 621432)) >> 32))) ^ 0x6C) & 0xF;
  v157 = (v156 | (16 * (v155 & 0xF))) * v63;
  v158 = v157 + 16848 - 983 * ((4369245 * (v157 + 16848)) >> 32);
  v159 = v110;
  v160 = (*(&STACK[0x2E0] + (v157 + 406944 - 983 * ((4369245 * (v157 + 406944)) >> 32))) ^ v110) * v63;
  v161 = v160 + 406944 - 983 * (((8738489 * (v160 + 406944)) >> 32) >> 1);
  v162 = *(&STACK[0x2E0] + v160 + 16848 - 983 * (((8738489 * (v160 + 16848)) >> 32) >> 1));
  v163 = ((((v162 >> 4) ^ 6) - 2 * (((v162 >> 4) ^ 6) & 0xFD ^ ((v162 & 0x10) != 0)) + 108) ^ *(&STACK[0x2E0] + v158)) * v63 + 406944;
  LOBYTE(v138) = v138 ^ 0x6C;
  v164 = ((v150 >> 4) | (16 * (v138 & 0xF))) * v63;
  v165 = (*(v88 + (v164 + 406944 - 983 * ((4369245 * (v164 + 406944)) >> 32))) ^ (16 * (*(v88 + (v163 - 983 * ((4369245 * v163) >> 32))) ^ 0x6C)) ^ 0x6C) * v63;
  v166 = v165 + 406944 - 983 * (((8738489 * (v165 + 406944)) >> 32) >> 1);
  v167 = *(&STACK[0x2E0] + v165 + 16848 - 983 * (((8738489 * (v165 + 16848)) >> 32) >> 1));
  v168 = ((((v167 >> 4) ^ 6) - 2 * (((v167 >> 4) ^ 6) & 0xFD ^ ((v167 & 0x10) != 0)) + 108) ^ *(&STACK[0x2E0] + (v164 + 16848 - 983 * ((4369245 * (v164 + 16848)) >> 32)))) * v63 + 406944;
  v169 = (v138 & 0xF0 | (v150 >> 8) & 0xF) * v63;
  v170 = *(v88 + (v169 + 406944 - 983 * ((4369245 * (v169 + 406944)) >> 32))) ^ (16 * (*(v88 + (v168 - 983 * ((4369245 * v168) >> 32))) ^ 0x6C)) ^ 0x6C;
  v171 = *(v88 + v161) ^ (16 * (*(v88 + v166) ^ 0x6C)) ^ ((*(v88 + v170 * v63 + 406944 - 983 * (((8738489 * (v170 * v63 + 406944)) >> 32) >> 1)) ^ 0x6C) << 8);
  v172 = (((997 - v170) ^ (v170 + 26)) & v63) * (v170 + 26);
  v173 = (*(&STACK[0x2E0] + v172 - 983 * (((8738489 * v172) >> 32) >> 1)) >> 4) ^ 6;
  v174 = ((v173 - ((2 * v173) & 0x18) + 108) ^ *(&STACK[0x2E0] + (v169 + 16848 - 983 * ((4369245 * (v169 + 16848)) >> 32)))) * v63 + 406944;
  v175 = ((v154 >> 8) & 0xF0 | (v149 >> 4)) * v63;
  v176 = *(v88 + (v175 + 406944 - 983 * ((4369245 * (v175 + 406944)) >> 32))) ^ (16 * (*(v88 + (v174 - 983 * ((4369245 * v174) >> 32))) ^ 0x6C));
  v177 = (v176 ^ 0x6C) * v63 + 406944 - 983 * (((8738489 * ((v176 ^ 0x6Cu) * v63 + 406944)) >> 32) >> 1);
  v178 = (*(&STACK[0x2E0] + 648 * (((2 * (v176 ^ 0x6C)) & 0x34) + (v176 ^ 0x76u)) % 0x3D7) >> 4) ^ 6;
  v179 = (v178 - ((2 * v178) & 0x18) + 108) ^ *(&STACK[0x2E0] + (v175 + 16848 - 983 * ((4369245 * (v175 + 16848)) >> 32)));
  v180 = 648 * (((2 * v179) & 0xE8) + (v179 ^ 0x274));
  v181 = 648 * ((v154 >> 12) & 0xF0 | (v149 >> 8) & 0xF);
  v182 = 648 * (*(v88 + (v181 + 406944 - 983 * ((4369245 * (v181 + 406944)) >> 32))) ^ (16 * (*(v88 + (v180 - 983 * ((4369245 * v180) >> 32))) ^ 0x6C)) ^ 0x6C);
  v183 = v171 ^ ((*(v88 + v177) ^ 0x6C) << 12) ^ ((*(v88 + v182 + 406944 - 983 * (((8738489 * (v182 + 406944)) >> 32) >> 1)) ^ 0x6C) << 16);
  v184 = *(&STACK[0x2E0] + v182 + 16848 - 983 * (((8738489 * (v182 + 16848)) >> 32) >> 1));
  v185 = 648 * ((((v184 >> 4) ^ 6) + ~(2 * (((v184 >> 4) ^ 6) & 0xFD ^ ((v184 & 0x10) != 0))) + 109) ^ *(&STACK[0x2E0] + (v181 + 16848 - 983 * ((4369245 * (v181 + 16848)) >> 32)))) + 406944;
  v186 = 648 * ((v153 >> 8) & 0xF0 | (v149 << 8 >> 20) & 0xF);
  v187 = 648 * (*(v88 + (v186 + 406944 - 983 * ((4369245 * (v186 + 406944)) >> 32))) ^ (16 * (*(v88 + (v185 - 983 * ((4369245 * v185) >> 32))) ^ 0x6C)) ^ 0x6C);
  v188 = v187 + 406944 - 983 * (((8738489 * (v187 + 406944)) >> 32) >> 1);
  v189 = *(&STACK[0x2E0] + v187 + 16848 - 983 * (((8738489 * (v187 + 16848)) >> 32) >> 1));
  LOBYTE(v177) = ((v189 >> 4) ^ 6) - 2 * (((v189 >> 4) ^ 6) & 0xFD ^ ((v189 & 0x10) != 0));
  LOBYTE(v189) = *(&STACK[0x2E0] + (v186 + 16848 - 983 * ((4369245 * (v186 + 16848)) >> 32)));
  v190 = 648 * ((v177 + 108) ^ v189) + 406944;
  v191 = 648 * ((v153 >> 12) & 0xF0 | HIWORD(v148) & 0xF);
  v192 = v183 ^ ((*(&STACK[0x2E0] + v188) ^ 0x6C) << 20);
  v193 = 648 * (*(v88 + (v191 + 406944 - 983 * ((4369245 * (v191 + 406944)) >> 32))) ^ (16 * (*(v88 + (v190 - 983 * ((4369245 * v190) >> 32))) ^ 0x6C)) ^ 0x6C);
  v194 = v192 ^ ((*(&STACK[0x2E0] + v193 + 406944 - 983 * (((8738489 * (v193 + 406944)) >> 32) >> 1)) ^ 0x6C) << 24);
  v195 = (*(&STACK[0x2E0] + v193 + 16848 - 983 * (((8738489 * (v193 + 16848)) >> 32) >> 1)) >> 4) ^ 6;
  v196 = 648 * ((v195 - ((2 * v195) & 0x18) + 108) ^ *(&STACK[0x2E0] + (v191 + 16848 - 983 * ((4369245 * (v191 + 16848)) >> 32)))) + 406944;
  v197 = 648 * ((v151 >> 8) & 0xF0 | (v149 >> 20) & 0xF) + 406944;
  v198 = 648 * (*(v88 + (v197 - 983 * ((4369245 * v197) >> 32))) ^ (16 * (*(v88 + (v196 - 983 * ((4369245 * v196) >> 32))) ^ 0x6C)) ^ 0x6C) + 406944;
  v199 = *(&STACK[0x2E0] + v198 - 983 * (((8738489 * v198) >> 32) >> 1));
  v200 = v194 ^ ((v199 ^ 0x6Cu) << ((v199 & 0xD3 ^ 0x40) + (v199 & 0xD3 ^ 0x93u) + 73));
  v201 = 648 * (v156 & 0xFFFFFF0F | (16 * ((v200 ^ 0x6C) & 0xF))) + 235224;
  v202 = 648 * ((v200 ^ 0x6C) & 0xF0 | (v150 >> 4)) + 235224;
  v203 = v202 - 983 * ((4369245 * v202) >> 32);
  v204 = 648 * ((v200 >> 4) & 0xF0 | (v150 >> 8) & 0xF) + 235224;
  v205 = 648 * ((v200 >> 8) & 0xF0 | (v149 >> 4)) + 235224;
  v206 = ((*(v88 + (v205 - 983 * ((4369245 * v205) >> 32))) ^ 0x6C) << 12) ^ ((*(v88 + (v204 - 983 * ((4369245 * v204) >> 32))) ^ 0x6C) << 8);
  v207 = 648 * ((v200 >> 12) & 0xF0 | (v149 >> 8) & 0xF) + 235224;
  v208 = *(&STACK[0x2E0] + (((v200 >> 8) & 0x60 | (v149 << 8 >> 20) & 0xF) + ((v200 >> 8) & 0x60 ^ 0x16B) + (HIWORD(v200) & 0xF0)) * ((((v150 >> 4) & 0xAD1452B ^ 0xAD1452B) + ((v150 >> 4) & 0xAD1452B)) ^ 0xAD147A3) % 0x3D7);
  v209 = ((v208 ^ 0x6C) << 20) ^ ((*(&STACK[0x2E0] + (v207 - 983 * ((4369245 * v207) >> 32))) ^ 0x6C) << 16);
  v210 = ((v149 >> 12) & 0xFFF) >> ((v189 & 4 ^ 4) + (v189 & 4));
  v211 = (((v208 & 0x69 ^ 1) + (v208 & 0x69 ^ 0x68)) ^ (((LODWORD(STACK[0x298]) + 6) & 0x66) + ((121 - LODWORD(STACK[0x298])) & 0x66))) & v210 ^ (v200 >> 20) & 0xF0;
  v212 = *(&STACK[0x2E0] + (v201 - 983 * ((4369245 * v201) >> 32)));
  v213 = HIBYTE(v200) & 0xF0 | (v210 >> 4);
  v214 = ((*(v88 + (648 * v213 + 235224 - 983 * ((4369245 * (648 * v213 + 235224)) >> 32))) ^ 0xC) << 28) ^ ((*(v88 + (648 * v211 + 235224 - 983 * ((4369245 * (648 * v211 + 235224)) >> 32))) ^ 0x6C) << 24);
  v215 = v212 ^ (16 * (*(&STACK[0x2E0] + v203) ^ 0x6C)) ^ 0x6C;
  v216 = v206 ^ v215;
  v217 = v209 ^ v206 ^ v215;
  v218 = v214 ^ v217;
  v219 = ((((((*(v88 + (648 * (HIBYTE(v218) & 0xF) - 983 * (((2765016 * (HIBYTE(v218) & 0xF)) >> 16) >> 6))) ^ 0x6C) << 8) ^ ((*(v88 + (648 * (v218 >> 28) - 983 * (((2765016 * (v218 >> 28)) >> 16) >> 6))) ^ 0x6C) << 12) | *(v88 + (648 * (BYTE2(v217) & 0xF) - 983 * (((2765016 * (HIWORD(v217) & 0xF)) >> 16) >> 6))) ^ 0x6C) << 8) ^ ((*(v88 + (648 * ((v209 >> 20) & 0xF) - 983 * (((2765016 * ((v209 >> 20) & 0xF)) >> 16) >> 6))) ^ 0x6C) << 12) | *(v88 + (648 * ((v216 >> 8) & 0xF) - 983 * (((2765016 * ((v216 >> 8) & 0xF)) >> 16) >> 6))) ^ 0x6C) << 8) ^ ((*(v88 + (648 * (v206 >> 12) - 983 * (((2765016 * (v206 >> 12)) >> 16) >> 6))) ^ 0x6C) << 12);
  v220 = LODWORD(STACK[0x298]) - v545 + (((v219 & 0xC8E20800 ^ 0xC8E208E3) + (v219 & 0xC8E20800)) ^ 0x3BD4C23);
  v221 = LODWORD(STACK[0x210]) ^ (16 * (*(v88 + (648 * (v215 >> 4) - 983 * (((2765016 * (v215 >> 4)) >> 16) >> 6))) ^ 0x6C)) ^ (v219 | *(v88 + (648 * (v212 & 0xF ^ 0xC) - 983 * (((2765016 * (v212 & 0xF ^ 0xCu)) >> 16) >> 6))) ^ 0x6C);
  v222 = LODWORD(STACK[0x218]) + 274566607;
  v223 = (v220 + 882948928) ^ v222;
  v224 = 648 * (((v223 + HIDWORD(a42)) >> 24) & 0xF) + 621432;
  v225 = 648 * (((v223 + HIDWORD(a42)) >> 20) & 0xF) + 621432;
  LOWORD(v110) = ((v220 - 17600) ^ (LOWORD(STACK[0x218]) - 29233)) + WORD2(a42);
  LODWORD(a50) = v223 + HIDWORD(a42);
  v226 = 648 * (((v223 + HIDWORD(a42)) >> 16) & 0xF) + 621432;
  LODWORD(a49) = ((((*(v88 + (v224 - 983 * ((4369245 * v224) >> 32))) ^ 0x6C) << 8) ^ ((*(v88 + (648 * ((v223 + HIDWORD(a42)) >> 28) + 621432 - 983 * ((4369245 * (648 * ((v223 + HIDWORD(a42)) >> 28) + 621432)) >> 32))) ^ 0x6C) << 12) | *(v88 + (v226 - 983 * ((4369245 * v226) >> 32))) ^ 0x6C) << 8) ^ ((*(v88 + (v225 - 983 * ((4369245 * v225) >> 32))) ^ 0x6C) << 12);
  v227 = LODWORD(STACK[0x2A8]) + 274566607;
  v228 = STACK[0x238];
  v229 = LODWORD(STACK[0x210]) - LODWORD(STACK[0x238]);
  v230 = v227 ^ v229;
  HIDWORD(v526) = LODWORD(STACK[0x240]) + 2001903085;
  v231 = HIDWORD(v526) - (v227 ^ v229);
  LODWORD(STACK[0x2A8]) = v221;
  v232 = *(v88 + (648 * (HIWORD(v231) & 0xF) + 621432 - 983 * ((4369245 * (648 * (HIWORD(v231) & 0xF) + 621432)) >> 32))) ^ 0x6C | ((*(v88 + (648 * (HIBYTE(v231) & 0xF) + 621432 - 983 * ((4369245 * (648 * (HIBYTE(v231) & 0xF) + 621432)) >> 32))) ^ 0x6C ^ ((*(v88 + (648 * (v231 >> 28) + 621432 - 983 * ((4369245 * (648 * (v231 >> 28) + 621432)) >> 32))) ^ 0x6C) << ((v221 & 4 ^ 4) + (v221 & 4)))) << 8);
  v233 = 16 * (*(&STACK[0x2E0] + (648 * ((v231 >> 20) & 0xF) + 621432 - 983 * ((4369245 * (648 * ((v231 >> 20) & 0xF) + 621432)) >> 32))) ^ 0x6C);
  LODWORD(a52) = ((v232 + v233) << 8) - ((v232 & v233) << 9);
  LODWORD(a59) = 648 * ((a52 >> 8) & 0xF0 | (a49 >> 12));
  v528 = (a59 + 16848) % ((v110 & 0x3D7 ^ 0x3D7) + (v110 & 0x3D7u));
  v234 = (((LODWORD(STACK[0x2B0]) + LODWORD(STACK[0x2B8])) ^ 0x911B5615) - v545) ^ 0xFE2B8E85;
  v235 = v545 - v234;
  v236 = v234 - v222;
  v237 = (((LODWORD(STACK[0x248]) + LODWORD(STACK[0x294])) ^ 0x911B5615) - v228) ^ 0xFE2B8E85;
  v238 = v228 - v237;
  v239 = v237 - v227;
  v533 = v236;
  v537 = (v236 ^ v235) + v236;
  v240 = v220 + 1432409502 - v537;
  LODWORD(a55) = v220 + 1432409502;
  v535 = v240 + v223 - v537;
  v241 = a37 - 1140233838 + v535;
  v242 = v241;
  v243 = 648 * ((a37 + 27026 + v535) >> 12) + 621432;
  v244 = ((((*(v88 + (648 * (HIBYTE(v241) & 0xF) + 621432 - 983 * ((4369245 * (648 * (HIBYTE(v241) & 0xF) + 621432)) >> 32))) ^ 0x6C) << 8) ^ ((*(v88 + (648 * (v241 >> 28) + 621432 - 983 * ((4369245 * (648 * (v241 >> 28) + 621432)) >> 32))) ^ 0x6C) << 12) | *(v88 + (648 * (HIWORD(v242) & 0xF) + 621432 - 983 * ((4369245 * (648 * (HIWORD(v242) & 0xF) + 621432)) >> 32))) ^ 0x6C) << 8) ^ ((*(v88 + (648 * ((v242 >> 20) & 0xF) + 621432 - 983 * ((4369245 * (648 * ((v242 >> 20) & 0xF) + 621432)) >> 32))) ^ 0x6C) << 12);
  LODWORD(STACK[0x248]) = v241;
  LODWORD(a54) = (v244 | *(v88 + (648 * ((v242 >> 8) & 0xF) + 621432 - 983 * ((4369245 * (648 * ((v242 >> 8) & 0xF) + 621432)) >> 32))) ^ 0x6C) ^ ((*(v88 + (v243 - 983 * ((4369245 * v243) >> 32))) ^ 0x6C) << (((v220 - 98) & 4) + ((-63 - v220) & 4)));
  LODWORD(a53) = v229 + 549460574;
  v245 = (v239 ^ v238) + v239;
  v246 = v230 - v245 + a53 - v245;
  v247 = (*(v88 + (648 * (v241 & 0xF) + 621432 - 983 * ((4369245 * (648 * (v241 & 0xF) + 621432)) >> 32))) ^ 0x6C | (a54 << 8)) ^ (16 * (*(v88 + (648 * (v241 >> 4) + 621432 - 983 * ((4369245 * (648 * (v241 >> 4) + 621432)) >> 32))) ^ 0x6C));
  v248 = 648 * (((HIDWORD(a38) - v246) >> 24) & 0xF) + 621432;
  v249 = 648 * (((HIDWORD(a38) - v246) >> 20) & 0xF) + 621432;
  v250 = 648 * (((HIDWORD(a38) - v246) >> 16) & 0xF) + 621432;
  v251 = *(v88 + (v250 - 983 * ((4369245 * v250) >> 32))) ^ (16 * (*(v88 + (v249 - 983 * ((4369245 * v249) >> 32))) ^ 0x6C));
  v252 = 648 * ((WORD2(a38) - v246) >> 12) + 621432;
  v253 = 648 * (((HIDWORD(a38) - v246) >> 8) & 0xF) + 621432;
  LODWORD(a57) = v251 ^ 0x6C;
  LODWORD(a58) = ((*(v88 + (v248 - 983 * ((4369245 * v248) >> 32))) ^ 0x6C) << 8) ^ ((*(v88 + (648 * ((HIDWORD(a38) - v246) >> 28) + 621432 - 983 * ((4369245 * (648 * ((HIDWORD(a38) - v246) >> 28) + 621432)) >> 32))) ^ 0xC) << 12) ^ v251 ^ 0x6C;
  v254 = *(&STACK[0x2E0] + (v252 - 983 * ((4369245 * v252) >> 32))) ^ 0x6C;
  v255 = ((*(&STACK[0x2E0] + (v253 - 983 * ((4369245 * v253) >> 32))) ^ 0x6C) << 8) | (a58 << 16);
  LODWORD(STACK[0x2B8]) = v69;
  LODWORD(a51) = v255 ^ (v254 << 12);
  v256 = v159;
  LODWORD(a56) = v247;
  LODWORD(v526) = v240;
  LODWORD(STACK[0x294]) = v240 ^ 0xF0FBC691;
  v257 = v239 - (a53 - v245) - (v240 & 0x79FB63A3 ^ 0x9002122 | (v240 ^ 0xF0FBC691) & 0x79FB63A3);
  v258 = (a53 - v245) ^ 0xF0FBC691;
  LODWORD(STACK[0x240]) = v258;
  v259 = v258 + (v245 ^ 0x3D3F1616);
  v258 += 830606697;
  LODWORD(STACK[0x238]) = v258;
  v531 = v258 ^ v259;
  v246 ^= 0x5EEB9BBEu;
  LODWORD(STACK[0x2B0]) = v246;
  v546 = (v257 ^ 0x97B27D0B) - (v246 + (v258 ^ v259));
  v260 = (*(&STACK[0x2E0] + v543 + 16848 - 983 * (((8738489 * (v543 + 16848)) >> 32) >> 1)) >> 4) ^ 6;
  v261 = 648 * ((v260 + (~(2 * v260) | 0xE7) + 109) ^ *(&STACK[0x2E0] + (LODWORD(STACK[0x200]) + 16848 - 983 * ((4369245 * (LODWORD(STACK[0x200]) + 16848)) >> 32)))) + 406944;
  v262 = 648 * ((LODWORD(STACK[0x208]) >> 12) & 0xF0 | HIBYTE(v538) & 0xF);
  v263 = 648 * (*(v88 + (v262 + 406944 - 983 * ((4369245 * (v262 + 406944)) >> 32))) ^ (16 * (*(v88 + (v261 - 983 * ((4369245 * v261) >> 32))) ^ 0x6C)) ^ 0x6C);
  v264 = v263 + 406944 - 983 * (((8738489 * (v263 + 406944)) >> 32) >> 1);
  v265 = *(&STACK[0x2E0] + v263 + 16848 - 983 * (((8738489 * (v263 + 16848)) >> 32) >> 1));
  v266 = 648 * ((((v265 >> 4) ^ 6) - 2 * (((v265 >> 4) ^ 6) & 0xFD ^ ((v265 & 0x10) != 0)) + 108) ^ *(&STACK[0x2E0] + (v262 + 16848 - 983 * ((4369245 * (v262 + 16848)) >> 32)))) + 406944;
  v267 = 648 * ((LODWORD(STACK[0x228]) >> 8) & 0xF0 | (LODWORD(STACK[0x230]) >> 12)) + 406944;
  v268 = 648 * (*(v88 + (v267 - 983 * ((4369245 * v267) >> 32))) ^ (16 * (*(v88 + (v266 - 983 * ((4369245 * v266) >> 32))) ^ 0x6C)) ^ 0x6C) + 406944;
  v269 = (*(&STACK[0x2E0] + v264) ^ 0x6C) << 24;
  v270 = v269 ^ ((*(&STACK[0x2E0] + v268 - 983 * (((8738489 * v268) >> 32) >> 1)) ^ 0xC) << 28);
  v271 = ((v541 ^ v269) >> 20) & 0xF0 | HIBYTE(v538) & 0xF;
  v272 = (((660 - v271) ^ (v271 + 363)) & 0x288) * (v271 + 363);
  v273 = 648 * (v539 & 0xF | (16 * (v270 >> 28))) + 235224;
  v274 = v530 ^ ((*(&STACK[0x2E0] + (v272 - 983 * ((4369245 * v272) >> 32))) ^ 0x6C) << 24);
  v275 = (v274 ^ ((*(&STACK[0x2E0] + (v273 - 983 * ((4369245 * v273) >> 32))) ^ 0xC) << 28)) >> 28;
  v276 = *(v88 + (HIWORD(v530) & 0xF) * v63 % (-1093783189 * (((v539 & 0x7D ^ 0xBB7AD77D) + (v539 & 0x7D)) & 0x8A6896C7))) ^ 0x6C | ((*(v88 + (648 * (HIBYTE(v274) & 0xF) - 983 * (((2765016 * (HIBYTE(v274) & 0xF)) >> 16) >> 6))) ^ 0x6C) << 8) ^ ((*(v88 + (648 * v275 - 983 * (((2765016 * v275) >> 16) >> 6))) ^ 0x6C) << 12);
  v277 = (v530 - ((2 * v530) & 0xFFFFFFD8) + 108) ^ v542;
  LODWORD(STACK[0x230]) = v277;
  v278 = *(&STACK[0x2E0] + (648 * (v277 >> 4) - 983 * (((2765016 * (v277 >> 4)) >> 16) >> 6)));
  LODWORD(STACK[0x228]) = (((v276 << 8) ^ ((*(&STACK[0x2E0] + (648 * ((v530 >> 20) & 0xF) - 983 * (((2765016 * ((v530 >> 20) & 0xF)) >> 16) >> 6))) ^ 0x6C) << 12) | *(&STACK[0x2E0] + (648 * ((v530 >> 8) & 0xF) - 983 * (((2765016 * ((v530 >> 8) & 0xF)) >> 16) >> 6))) ^ 0x6C) << 8) ^ ((*(&STACK[0x2E0] + (648 * (v530 >> 12) - 983 * (((2765016 * (v530 >> 12)) >> 16) >> 6))) ^ 0x6C) << 12);
  LODWORD(STACK[0x224]) ^= 16 * (v278 ^ 0x6C);
  v279 = LODWORD(STACK[0x280]) + a33;
  LODWORD(STACK[0x218]) = v279;
  v280 = LODWORD(STACK[0x258]) + LODWORD(STACK[0x250]);
  v281 = ((((*(v88 + (648 * (HIBYTE(v279) & 0xF) + 621432 - 983 * ((4369245 * (648 * (HIBYTE(v279) & 0xF) + 621432)) >> 32))) ^ 0x6C) << 8) ^ ((*(v88 + (648 * (v279 >> 28) + 621432 - 983 * ((4369245 * (648 * (v279 >> 28) + 621432)) >> 32))) ^ 0x6C) << 12) | *(v88 + (648 * (HIWORD(v279) & 0xF) + 621432 - 983 * ((4369245 * (648 * (HIWORD(v279) & 0xF) + 621432)) >> 32))) ^ 0x6C) << 8) ^ ((*(v88 + (648 * ((v279 >> 20) & 0xF) + 621432 - 983 * ((4369245 * (648 * ((v279 >> 20) & 0xF) + 621432)) >> 32))) ^ 0x6C) << 12);
  v282 = v281 | *(&STACK[0x2E0] + (648 * ((v279 >> 8) & 0xF) + 621432 - 983 * ((4369245 * (648 * ((v279 >> 8) & 0xF) + 621432)) >> 32))) ^ 0x6C;
  v283 = (v282 << 8) ^ ((*(&STACK[0x2E0] + (648 * (v279 >> 12) + 621432 - 983 * ((4369245 * (648 * (v279 >> 12) + 621432)) >> 32))) ^ 0x6C) << 12);
  v284 = a34 - LODWORD(STACK[0x2A4]) + 268757630;
  v285 = *(&STACK[0x2E0] + (648 * (v279 >> 4) + 621432 - 983 * ((4369245 * (648 * (v279 >> 4) + 621432)) >> 32))) ^ 0x6C;
  v286 = *(&STACK[0x2E0] + (648 * (v279 & 0xF) + 621432 - 983 * ((4369245 * (648 * (v279 & 0xF) + 621432)) >> 32))) ^ 0x6C;
  v287 = (v283 | v286) ^ (16 * v285);
  v288 = 648 * ((a34 - LOWORD(STACK[0x2A4]) - 5506) >> 12) + 621432;
  v289 = *(&STACK[0x2E0] + (v288 - 983 * ((4369245 * v288) >> 32)));
  v290 = *(v88 + (648 * (HIWORD(v284) & 0xF) + 621432 - 983 * ((4369245 * (648 * (HIWORD(v284) & 0xF) + 621432)) >> 32))) ^ (16 * (*(v88 + (648 * ((v284 >> 20) & 0xF) + 621432 - 983 * ((4369245 * (648 * ((v284 >> 20) & 0xF) + 621432)) >> 32))) ^ 0x6C)) ^ 0x6C;
  v291 = ((*(v88 + (648 * (HIBYTE(v284) & 0xF) + 621432 - 983 * ((4369245 * (648 * (HIBYTE(v284) & 0xF) + 621432)) >> 32))) ^ 0x6C) << 8) ^ ((*(v88 + (648 * (v284 >> 28) + 621432 - 983 * ((4369245 * (648 * (v284 >> 28) + 621432)) >> 32))) ^ 0xC) << 12) ^ v290;
  v292 = (((*(&STACK[0x2E0] + (648 * ((v284 >> 8) & 0xF) + 621432 - 983 * ((4369245 * (648 * ((v284 >> 8) & 0xF) + 621432)) >> 32))) ^ 0x6C) << 8) | (v291 << 16)) ^ ((v289 ^ 0x6C) << 12);
  v293 = 648 * (v284 >> 4) + 621432 - 983 * ((4369245 * (648 * (v284 >> 4) + 621432)) >> 32);
  v294 = *(&STACK[0x2E0] + (648 * (v284 & 0xF) + 621432 - 983 * ((4369245 * (648 * (v284 & 0xF) + 621432)) >> 32))) ^ 0x6C;
  LOBYTE(v289) = *(&STACK[0x2E0] + v293) ^ ((v292 | v294) >> 4);
  v295 = v286 & 0xF;
  v296 = 648 * (v295 | (16 * (v294 & 0xF)));
  v297 = 648 * (*(&STACK[0x2E0] + (v296 + 406944 - 983 * ((4369245 * (v296 + 406944)) >> 32))) ^ v159);
  v298 = v297 + 406944 - 983 * (((8738489 * (v297 + 406944)) >> 32) >> 1);
  v299 = *(&STACK[0x2E0] + v297 + 16848 - 983 * (((8738489 * (v297 + 16848)) >> 32) >> 1)) >> 4;
  v300 = 648 * (((v299 ^ 6) + ((2 * ((v299 ^ 6 | 0x7C) ^ v299)) ^ 0xB) + 109) ^ *(&STACK[0x2E0] + (v296 + 16848 - 983 * ((4369245 * (v296 + 16848)) >> 32)))) + 406944;
  LOBYTE(v289) = v289 ^ 0x6C;
  v301 = 648 * ((v287 >> 4) | (16 * (v289 & 0xF)));
  v302 = v301 + 16848 - 983 * ((4369245 * (v301 + 16848)) >> 32);
  v303 = 648 * (*(v88 + (v301 + 406944 - 983 * ((4369245 * (v301 + 406944)) >> 32))) ^ (16 * (*(v88 + (v300 - 983 * ((4369245 * v300) >> 32))) ^ 0x6C)) ^ 0x6C);
  v304 = v303 + 406944 - 983 * (((8738489 * (v303 + 406944)) >> 32) >> 1);
  v305 = *(&STACK[0x2E0] + v303 + 16848 - 983 * (((8738489 * (v303 + 16848)) >> 32) >> 1)) ^ 0x60;
  v306 = 648 * (((v305 >> 4) - ((v305 >> 3) & 0x18) + 108) ^ *(&STACK[0x2E0] + v302)) + 406944;
  v307 = 648 * (v289 & 0xF0 | (v287 >> 8) & 0xF);
  v308 = 648 * (*(v88 + (v307 + 406944 - 983 * ((4369245 * (v307 + 406944)) >> 32))) ^ (16 * (*(v88 + (v306 - 983 * ((4369245 * v306) >> 32))) ^ 0x6C)) ^ 0x6C);
  v309 = v308 + 406944 - 983 * (((8738489 * (v308 + 406944)) >> 32) >> 1);
  LOBYTE(v307) = *(&STACK[0x2E0] + (v307 + 16848 - 983 * ((4369245 * (v307 + 16848)) >> 32)));
  v310 = (*(&STACK[0x2E0] + v308 + 16848 - 983 * (((8738489 * (v308 + 16848)) >> 32) >> 1)) ^ 0x6Cu) >> ((v307 & 4 ^ 4) + (v307 & 4));
  v311 = 648 * ((v310 - ((2 * v310) & 0xD8) + 108) ^ v307) + 406944;
  v312 = 648 * ((v292 >> 8) & 0xF0 | (v283 >> 12));
  v313 = v312 + 406944 - 1966 * ((2184623 * (v312 + 406944)) >> 32);
  v314 = *(&STACK[0x2E0] + (v311 - 983 * ((4369245 * v311) >> 32)));
  if (v313 >= 0x3D7)
  {
    v313 -= 983;
  }

  v315 = 648 * (*(&STACK[0x2E0] + v313) ^ (16 * (v314 ^ 0x6C)) ^ 0x6C);
  v316 = v315 + 406944 - 983 * (((8738489 * (v315 + 406944)) >> 32) >> 1);
  v317 = (*(&STACK[0x2E0] + v315 + 16848 - 983 * (((8738489 * (v315 + 16848)) >> 32) >> 1)) >> 4) ^ 6;
  v318 = 648 * ((v317 - ((2 * v317) & 0x18) + 108) ^ *(&STACK[0x2E0] + (v312 + 16848 - 983 * ((4369245 * (v312 + 16848)) >> 32)))) + 406944;
  v319 = ((*(&STACK[0x2E0] + v316) ^ 0x6C) << 12) ^ ((*(&STACK[0x2E0] + v309) ^ 0x6C) << 8);
  v320 = 648 * ((v292 >> 12) & 0xF0 | HIWORD(v283) & 0xF);
  v321 = *(&STACK[0x2E0] + (v320 + 406944 - 983 * ((4369245 * (v320 + 406944)) >> 32))) ^ (16 * (*(&STACK[0x2E0] + (v318 - 983 * ((4369245 * v318) >> 32))) ^ 0x6C)) ^ 0x6C;
  v322 = 648 * v321 + 406944 - 983 * (((8738489 * (648 * v321 + 406944)) >> 32) >> 1);
  v323 = (((997 - v321) | (v321 + 26)) & 0x288) * (v321 + 26);
  v324 = *(&STACK[0x2E0] + v323 - 983 * (((8738489 * v323) >> 32) >> 1));
  v325 = 648 * ((((v324 >> 4) ^ 6) - 2 * (((v324 >> 4) ^ 6) & 0xFD ^ ((v324 & 0x10) != 0)) + 108) ^ *(&STACK[0x2E0] + (v320 + 16848 - 983 * ((4369245 * (v320 + 16848)) >> 32)))) + 406944;
  v326 = 648 * (v290 & 0xF0 | (v281 >> 12));
  v327 = 648 * (*(&STACK[0x2E0] + (v326 + 406944 - 983 * ((4369245 * (v326 + 406944)) >> 32))) ^ (16 * (*(&STACK[0x2E0] + (v325 - 983 * ((4369245 * v325) >> 32))) ^ 0x6C)) ^ 0x6C);
  v328 = v327 + 16848 - 983 * (((8738489 * (v327 + 16848)) >> 32) >> 1);
  v329 = ((*(&STACK[0x2E0] + v327 + 406944 - 983 * (((8738489 * (v327 + 406944)) >> 32) >> 1)) ^ 0x6C) << 20) ^ ((*(&STACK[0x2E0] + v322) ^ 0x6C) << 16);
  v330 = (*(&STACK[0x2E0] + v328) >> 4) ^ 6;
  v331 = 648 * ((v330 - ((2 * v330) & 0x18) + 108) ^ *(&STACK[0x2E0] + (v326 + 16848 - 983 * ((4369245 * (v326 + 16848)) >> 32)))) + 406944;
  v332 = 648 * ((v291 >> 4) & 0xF0 | HIWORD(v281) & 0xF);
  v333 = 648 * (*(&STACK[0x2E0] + (v332 + 406944 - 983 * ((4369245 * (v332 + 406944)) >> 32))) ^ (16 * (*(&STACK[0x2E0] + (v331 - 983 * ((4369245 * v331) >> 32))) ^ 0x6C)) ^ 0x6C);
  v334 = v333 + 406944 - 983 * (((8738489 * (v333 + 406944)) >> 32) >> 1);
  v335 = v333 + 16848 - 983 * (((8738489 * (v333 + 16848)) >> 32) >> 1);
  v336 = v335 & 0x74;
  v337 = *(&STACK[0x2E0] + v335) >> 4;
  v338 = 648 * ((((v337 ^ 6) + ((2 * ((v337 ^ 6 | 0x7C) ^ v337)) ^ 0xB) + 109) ^ *(&STACK[0x2E0] + (v332 + 16848 - 983 * ((4369245 * (v332 + 16848)) >> 32)))) + (((v336 ^ 0x74) + v336) | 0x204));
  v339 = 648 * ((v291 >> 8) & 0xF0 | (v282 >> 20) & 0xF) + 406944;
  v340 = 648 * (*(&STACK[0x2E0] + (v339 - 983 * ((4369245 * v339) >> 32))) ^ (16 * (*(&STACK[0x2E0] + (v338 - 983 * ((4369245 * v338) >> 32))) ^ 0x6C)) ^ 0x6C) + 406944;
  v341 = v340 - 983 * (((8738489 * v340) >> 32) >> 1);
  LOBYTE(v340) = *(&STACK[0x2E0] + v298) ^ 0x6C;
  v342 = 648 * (v295 & 0xFFFFFF0F | (16 * (v340 & 0xF))) + 235224;
  v343 = 16 * (*(&STACK[0x2E0] + v304) ^ 0x6C);
  v344 = 648 * (((v343 ^ v340) & 0xF0 | (v287 >> 4)) + 323) + 25920;
  v345 = v319 ^ v343;
  v346 = 648 * ((v345 >> 4) & 0xF0 | (v287 >> 8) & 0xF) + 235224;
  v347 = 648 * ((v319 >> 8) & 0xF0 | (v283 >> 12)) + 235224;
  v348 = ((*(&STACK[0x2E0] + (v347 - 983 * ((4369245 * v347) >> 32))) ^ 0x6C) << 12) ^ ((*(&STACK[0x2E0] + (v346 - 983 * ((4369245 * v346) >> 32))) ^ 0x6C) << 8);
  v349 = v329 ^ v345 ^ ((*(&STACK[0x2E0] + v334) ^ 0x6C) << 24);
  v350 = ((v329 ^ v345) >> 12) & 0xF0 | HIWORD(v283) & 0xF;
  v351 = 648 * (HIWORD(v329) & 0xF0 | (v281 >> 12)) + 235224;
  v352 = ((*(&STACK[0x2E0] + (v351 - 983 * ((4369245 * v351) >> 32))) ^ 0x6C) << 20) ^ ((*(&STACK[0x2E0] + (648 * v350 + 235224 - 983 * ((4369245 * (648 * v350 + 235224)) >> 32))) ^ 0x6C) << 16);
  v353 = 648 * ((v349 >> 20) & 0xF0 | HIWORD(v281) & 0xF) + 235224;
  v354 = 648 * (((v349 ^ ((*(&STACK[0x2E0] + v341) ^ 0xC) << 28)) >> 24) & 0xF0 | (v282 >> 20) & 0xF) + 235224;
  v355 = *(&STACK[0x2E0] + (v342 - 983 * ((4369245 * v342) >> 32)));
  LODWORD(STACK[0x258]) = v355;
  v356 = v355 ^ (16 * (*(&STACK[0x2E0] + (v344 - 983 * ((4369245 * v344) >> 32))) ^ 0x6C));
  v357 = *(&STACK[0x2E0] + (v353 - 983 * ((4369245 * v353) >> 32)));
  v358 = v356 ^ 0x6C;
  v359 = v357 ^ 0x6C;
  v360 = v348 ^ v358;
  v361 = v352 ^ v348 ^ v358;
  v362 = v361 ^ (v359 << 24);
  v363 = (v362 ^ ((*(&STACK[0x2E0] + (v354 - 983 * ((4369245 * v354) >> 32))) ^ 0xC) << 28)) >> 28;
  LODWORD(STACK[0x250]) = (((((*(&STACK[0x2E0] + (648 * (HIBYTE(v362) & 0xF) - 983 * (((2765016 * (HIBYTE(v362) & 0xF)) >> 16) >> 6))) ^ 0x6C) << 8) ^ ((*(&STACK[0x2E0] + (648 * v363 - 983 * (((2765016 * v363) >> 16) >> 6))) ^ 0xC) << 12) | *(&STACK[0x2E0] + (648 * (BYTE2(v361) & 0xF) - 983 * (((2765016 * (HIWORD(v361) & 0xF)) >> 16) >> 6))) ^ 0x6C) << 16) ^ ((*(&STACK[0x2E0] + (648 * ((v352 >> 20) & 0xF) - 983 * (((2765016 * ((v352 >> 20) & 0xF)) >> 16) >> 6))) ^ 0x6C) << 20) | ((*(&STACK[0x2E0] + (648 * ((v360 >> 8) & 0xF) - 983 * (((2765016 * ((v360 >> 8) & 0xF)) >> 16) >> 6))) ^ 0x6C) << 8)) ^ ((*(&STACK[0x2E0] + (648 * (v348 >> 12) - 983 * (((2765016 * (v348 >> 12)) >> 16) >> 6))) ^ 0x6C) << 12);
  LODWORD(STACK[0x210]) = v280 ^ (16 * (*(&STACK[0x2E0] + (648 * (v358 >> 4) - 983 * (((2765016 * (v358 >> 4)) >> 16) >> 6))) ^ 0x6C));
  v364 = a49 | *(&STACK[0x2E0] + (648 * ((a50 >> 8) & 0xF) + 621432 - 983 * ((4369245 * (648 * ((a50 >> 8) & 0xF) + 621432)) >> 32))) ^ 0x6C;
  v365 = (v364 << 8) ^ ((*(&STACK[0x2E0] + (648 * (a50 >> 12) + 621432 - 983 * ((4369245 * (648 * (a50 >> 12) + 621432)) >> 32))) ^ 0x6C) << 12);
  v366 = *(&STACK[0x2E0] + (648 * (a50 & 0xF) + 621432 - 983 * ((4369245 * (648 * (a50 & 0xF) + 621432)) >> 32))) ^ 0x6C;
  v367 = (v365 | v366) ^ (16 * (*(&STACK[0x2E0] + (648 * (a50 >> 4) + 621432 - 983 * ((4369245 * (648 * (a50 >> 4) + 621432)) >> 32))) ^ 0x6C));
  v368 = ((a52 | *(&STACK[0x2E0] + (648 * ((v231 >> 8) & 0xF) + 621432 - 983 * ((4369245 * (648 * ((v231 >> 8) & 0xF) + 621432)) >> 32))) ^ 0x6C) << 8) ^ ((*(&STACK[0x2E0] + (648 * (v231 >> 12) + 621432 - 983 * ((4369245 * (648 * (v231 >> 12) + 621432)) >> 32))) ^ 0x6C) << 12);
  v369 = *(&STACK[0x2E0] + (648 * (v231 & 0xF) + 621432 - 983 * ((4369245 * (648 * (v231 & 0xF) + 621432)) >> 32))) ^ 0x6C;
  v370 = *(&STACK[0x2E0] + (648 * (v231 >> 4) + 621432 - 983 * ((4369245 * (648 * (v231 >> 4) + 621432)) >> 32))) ^ ((v368 | v369) >> 4);
  v371 = v366 & 0xF;
  v372 = 648 * (v371 | (16 * (v369 & 0xF)));
  v373 = v372 + 16848 - 983 * ((4369245 * (v372 + 16848)) >> 32);
  v374 = *(&STACK[0x2E0] + (v372 + 406944 - 983 * ((4369245 * (v372 + 406944)) >> 32)));
  LODWORD(STACK[0x2C8]) = v256;
  v375 = 648 * (v374 ^ v256);
  v376 = v375 + 406944 - 983 * (((8738489 * (v375 + 406944)) >> 32) >> 1);
  v377 = (*(&STACK[0x2E0] + v375 + 16848 - 983 * (((8738489 * (v375 + 16848)) >> 32) >> 1)) >> 4) ^ 6;
  v378 = 648 * ((v377 - ((2 * v377) & 0x18) + 108) ^ *(&STACK[0x2E0] + v373)) + 406944;
  v379 = v378 - 983 * ((4369245 * v378) >> 32);
  v380 = v370 ^ 0x6C;
  v381 = ((v379 & 0xF ^ 0xF) + (v379 & 0xF)) & (v370 ^ 0x6C);
  v382 = v367 >> 4;
  v383 = 648 * (v382 | (16 * v381));
  v384 = 648 * (*(&STACK[0x2E0] + (v383 + 406944) % 0x3D7u) ^ (16 * (*(&STACK[0x2E0] + v379) ^ 0x6C)) ^ 0x6C);
  v385 = v384 + 406944 - 983 * (((8738489 * (v384 + 406944)) >> 32) >> 1);
  v386 = *(&STACK[0x2E0] + v384 + 16848 - 983 * (((8738489 * (v384 + 16848)) >> 32) >> 1));
  v387 = 648 * ((((v386 >> 4) ^ 6) - 2 * (((v386 >> 4) ^ 6) & 0xFD ^ ((v386 & 0x10) != 0)) + 108) ^ *(&STACK[0x2E0] + (v383 + 16848) % 0x3D7u)) + 406944;
  v388 = 648 * (v380 & 0xF0 | (v367 >> 8) & 0xF);
  v389 = v388 + 16848 - 983 * ((4369245 * (v388 + 16848)) >> 32);
  v390 = 648 * (*(&STACK[0x2E0] + (v388 + 406944 - 983 * ((4369245 * (v388 + 406944)) >> 32))) ^ (16 * (*(&STACK[0x2E0] + (v387 - 983 * ((4369245 * v387) >> 32))) ^ 0x6C)) ^ 0x6C);
  v391 = *(&STACK[0x2E0] + v390 + 16848 - 983 * (((8738489 * (v390 + 16848)) >> 32) >> 1));
  v392 = v390 + 406944 - 983 * (((8738489 * (v390 + 406944)) >> 32) >> 1);
  v393 = (((v391 >> 4) ^ 6) - ((2 * ((v391 >> 4) ^ 6)) & 0x18) + 108) ^ *(&STACK[0x2E0] + v389);
  v394 = 648 * (((2 * v393) & 0xE8) + (v393 ^ 0x274));
  v395 = 648 * ((v368 >> 8) & 0xF0 | (v365 >> 12));
  v396 = v395 + 16848 - 983 * ((4369245 * (v395 + 16848)) >> 32);
  v397 = 648 * (*(&STACK[0x2E0] + (v395 + 406944 - 983 * ((4369245 * (v395 + 406944)) >> 32))) ^ (16 * (*(&STACK[0x2E0] + (v394 - 983 * ((4369245 * v394) >> 32))) ^ 0x6C)) ^ 0x6C);
  v398 = v397 + 406944 - 983 * (((8738489 * (v397 + 406944)) >> 32) >> 1);
  v399 = (*(&STACK[0x2E0] + v397 + 16848 - 983 * (((8738489 * (v397 + 16848)) >> 32) >> 1)) >> 4) ^ 6;
  v400 = 648 * ((v399 - ((2 * v399) & 0x18) + 108) ^ *(&STACK[0x2E0] + v396)) + 406944;
  v401 = 648 * ((v368 >> 12) & 0xF0 | HIWORD(v365) & 0xF);
  v402 = v401 + 16848 - 983 * ((4369245 * (v401 + 16848)) >> 32);
  v403 = 648 * (*(&STACK[0x2E0] + (v401 + 406944 - 983 * ((4369245 * (v401 + 406944)) >> 32))) ^ (16 * (*(&STACK[0x2E0] + (v400 - 983 * ((4369245 * v400) >> 32))) ^ 0x6C)) ^ 0x6C);
  v404 = v403 + 406944 - 983 * (((8738489 * (v403 + 406944)) >> 32) >> 1);
  v405 = (*(&STACK[0x2E0] + v403 + 16848 - 983 * (((8738489 * (v403 + 16848)) >> 32) >> 1)) >> 4) ^ 6;
  v406 = (v405 - ((2 * v405) & 0x18) + 108) ^ *(&STACK[0x2E0] + v402);
  v407 = 648 * (((2 * v406) & 0xE8) + (v406 ^ 0x274));
  v408 = 648 * (*(&STACK[0x2E0] + (a59 + 406944 - 983 * ((4369245 * (a59 + 406944)) >> 32))) ^ (16 * (*(&STACK[0x2E0] + (v407 - 983 * ((4369245 * v407) >> 32))) ^ 0x6C)) ^ 0x6C);
  v409 = v408 + 406944 - 983 * (((8738489 * (v408 + 406944)) >> 32) >> 1);
  v410 = *(&STACK[0x2E0] + v408 + 16848 - 983 * (((8738489 * (v408 + 16848)) >> 32) >> 1));
  v411 = 648 * ((((v410 >> 4) ^ 6) - 2 * (((v410 >> 4) ^ 6) & 0xFD ^ ((v410 & 0x10) != 0)) + 108) ^ *(&STACK[0x2E0] + v528)) + 406944;
  v412 = 648 * ((a52 >> 12) & 0xF0 | WORD1(a49) & 0xF);
  v413 = 648 * (*(&STACK[0x2E0] + (v412 + 406944 - 983 * ((4369245 * (v412 + 406944)) >> 32))) ^ (16 * (*(&STACK[0x2E0] + (v411 - 983 * ((4369245 * v411) >> 32))) ^ 0x6C)) ^ 0x6C);
  v414 = v413 + 406944 - 983 * (((8738489 * (v413 + 406944)) >> 32) >> 1);
  v415 = *(&STACK[0x2E0] + v413 + 16848 - 983 * (((8738489 * (v413 + 16848)) >> 32) >> 1)) >> 4;
  v416 = 648 * (((v415 ^ 6) + ((2 * ((v415 ^ 6 | 0x7C) ^ v415)) ^ 0xB) + 109) ^ *(&STACK[0x2E0] + (v412 + 16848 - 983 * ((4369245 * (v412 + 16848)) >> 32)))) + 406944;
  v417 = 648 * (WORD1(a52) & 0xF0 | (v364 >> 20) & 0xF) + 406944;
  v418 = 648 * (*(&STACK[0x2E0] + (v417 - 983 * ((4369245 * v417) >> 32))) ^ (16 * (*(&STACK[0x2E0] + (v416 - 983 * ((4369245 * v416) >> 32))) ^ 0x6C)) ^ 0x6C) + 406944;
  v419 = *(&STACK[0x2E0] + v376) ^ 0x6C;
  v420 = v419 ^ (16 * (*(&STACK[0x2E0] + v385) ^ 0x6C)) ^ ((*(&STACK[0x2E0] + v392) ^ 0x6C) << 8) ^ ((*(&STACK[0x2E0] + v398) ^ 0x6C) << 12) ^ ((*(&STACK[0x2E0] + v404) ^ 0x6C) << 16) ^ ((*(&STACK[0x2E0] + v409) ^ 0x6C) << 20) ^ ((*(&STACK[0x2E0] + v414) ^ 0x6C) << 24) ^ ((*(&STACK[0x2E0] + v418 - 983 * (((8738489 * v418) >> 32) >> 1)) ^ 0xC) << 28);
  v421 = v420 >> (((v420 & 0x97 ^ 0x97) + (v420 & 0x97)) ^ 0x93);
  v422 = 648 * (v371 & 0xFFFFFF0F | (16 * (v419 & 0xF))) + 235224;
  v423 = 648 * (v382 & 0xFFFFFF0F | (16 * (v421 & 0xF))) + 235224;
  v424 = 648 * (v421 & 0xF0 | (v367 >> 8) & 0xF) + 235224;
  v425 = 648 * ((v421 >> 4) & 0xF0 | (v365 >> 12)) + 235224;
  v426 = ((*(&STACK[0x2E0] + (v425 - 983 * ((4369245 * v425) >> 32))) ^ 0x6C) << 12) ^ ((*(&STACK[0x2E0] + (v424 - 983 * ((4369245 * v424) >> 32))) ^ 0x6C) << 8);
  v427 = 648 * ((v421 >> 8) & 0xF0 | HIWORD(v365) & 0xF) + 235224;
  v428 = 648 * ((v421 >> 12) & 0xF0 | (a49 >> 12)) + 235224;
  v429 = HIWORD(v421) & 0xF0 | WORD1(a49) & 0xF;
  v430 = 648 * ((v421 >> 20) & 0xF0 | (v364 >> 20) & 0xF) + 235224;
  v431 = ((*(&STACK[0x2E0] + (v430 - 983 * ((4369245 * v430) >> 32))) ^ 0xC) << 28) ^ ((*(&STACK[0x2E0] + (648 * v429 + 235224 - 983 * ((4369245 * (648 * v429 + 235224)) >> 32))) ^ 0x6C) << 24);
  v432 = *(&STACK[0x2E0] + (v422 - 983 * ((4369245 * v422) >> 32)));
  LODWORD(STACK[0x208]) = v432;
  v433 = v432 ^ (16 * (*(&STACK[0x2E0] + (v423 - 983 * ((4369245 * v423) >> 32))) ^ 0x6C)) ^ 0x6C;
  v434 = v426 ^ ((*(&STACK[0x2E0] + (v427 - 983 * ((4369245 * v427) >> 32))) ^ 0x6C) << 16);
  v435 = v434 ^ v433 ^ ((*(&STACK[0x2E0] + (v428 - 983 * ((4369245 * v428) >> 32))) ^ 0x6C) << 20);
  v436 = v431 ^ v435;
  LODWORD(STACK[0x200]) = ((((((*(&STACK[0x2E0] + (648 * (HIBYTE(v436) & 0xF) - 983 * (((2765016 * (HIBYTE(v436) & 0xF)) >> 16) >> 6))) ^ 0x6C) << 8) ^ ((*(&STACK[0x2E0] + (648 * (v436 >> 28) - 983 * (((2765016 * (v436 >> 28)) >> 16) >> 6))) ^ 0x6C) << 12) | *(&STACK[0x2E0] + (648 * (BYTE2(v434) & 0xF) - 983 * (((2765016 * (HIWORD(v434) & 0xF)) >> 16) >> 6))) ^ 0x6C) << 8) ^ ((*(&STACK[0x2E0] + (648 * ((v435 >> 20) & 0xF) - 983 * (((2765016 * ((v435 >> 20) & 0xF)) >> 16) >> 6))) ^ 0x6C) << 12) | *(&STACK[0x2E0] + (648 * (((v434 ^ v433) >> 8) & 0xF) - 983 * (((2765016 * (((v434 ^ v433) >> 8) & 0xF)) >> 16) >> 6))) ^ 0x6C) << 8) ^ ((*(&STACK[0x2E0] + (648 * (v426 >> 12) - 983 * (((2765016 * (v426 >> 12)) >> 16) >> 6))) ^ 0x6C) << 12);
  v544 = a53 ^ (16 * (*(&STACK[0x2E0] + (648 * (v433 >> 4) - 983 * (((2765016 * (v433 >> 4)) >> 16) >> 6))) ^ 0x6C));
  v540 = LODWORD(STACK[0x294]) + 830606697;
  LODWORD(v529) = (LODWORD(STACK[0x294]) + (v537 ^ 0x3D3F1616)) ^ v540;
  LODWORD(STACK[0x280]) = v535 ^ 0x5EEB9BBE;
  HIDWORD(v529) = LODWORD(STACK[0x2B0]) - v531;
  LODWORD(STACK[0x2A4]) = a50 ^ a55;
  LODWORD(a62) = ((v533 - v526 - 2046518179) ^ 0x97B27D0B) - LODWORD(STACK[0x280]) - v529;
  HIDWORD(a63) = (v535 ^ 0x5EEB9BBE) + LODWORD(STACK[0x280]) - (((v533 - v526 - 2046518179) ^ 0x97B27D0B) - LODWORD(STACK[0x280]));
  v437 = HIDWORD(a63) + a39;
  v438 = 648 * ((WORD2(a63) + a39) >> 12) + 621432;
  v439 = 648 * ((BYTE4(a63) + a39) >> 4) + 621432;
  v440 = ((((*(&STACK[0x2E0] + (648 * (HIBYTE(v437) & 0xF) + 621432 - 983 * ((4369245 * (648 * (HIBYTE(v437) & 0xF) + 621432)) >> 32))) ^ 0x6C) << 8) ^ ((*(&STACK[0x2E0] + (648 * (v437 >> 28) + 621432 - 983 * ((4369245 * (648 * (v437 >> 28) + 621432)) >> 32))) ^ 0xC) << 12) | *(&STACK[0x2E0] + (648 * (HIWORD(v437) & 0xF) + 621432 - 983 * ((4369245 * (648 * (HIWORD(v437) & 0xF) + 621432)) >> 32))) ^ 0x6C) << 16) ^ ((*(&STACK[0x2E0] + (v438 - 983 * ((4369245 * v438) >> 32))) ^ 0x6C) << 12) ^ (((*(&STACK[0x2E0] + (648 * ((v437 >> 20) & 0xF) + 621432 - 983 * ((4369245 * (648 * ((v437 >> 20) & 0xF) + 621432)) >> 32))) ^ 0x6C) << 20) | ((*(&STACK[0x2E0] + (648 * ((v437 >> 8) & 0xF) + 621432 - 983 * ((4369245 * (648 * ((v437 >> 8) & 0xF) + 621432)) >> 32))) ^ 0x6C) << 8));
  LODWORD(a61) = HIDWORD(v529) + LODWORD(STACK[0x2B0]) - v546;
  v441 = HIDWORD(a39) - a61 + 2145280495;
  v442 = 16 * (*(&STACK[0x2E0] + (v439 - 983 * ((4369245 * v439) >> 32))) ^ 0x6C);
  v443 = *(&STACK[0x2E0] + (648 * (v437 & 0xF) + 621432 - 983 * ((4369245 * (648 * (v437 & 0xF) + 621432)) >> 32))) ^ 0x6C;
  v444 = v440 | v443;
  v445 = v442 & 0x10;
  if ((v442 & 0x10 & v443) != 0)
  {
    v445 = -v445;
  }

  v446 = v445 + v444;
  v447 = ((*(&STACK[0x2E0] + (648 * (HIBYTE(v441) & 0xF) + 621432 - 983 * ((4369245 * (648 * (HIBYTE(v441) & 0xF) + 621432)) >> 32))) ^ 0x6C) << 8) ^ ((*(&STACK[0x2E0] + (648 * (v441 >> 28) + 621432 - 983 * ((4369245 * (648 * (v441 >> 28) + 621432)) >> 32))) ^ 0x6C) << 12);
  v448 = ((v447 | *(&STACK[0x2E0] + (648 * (HIWORD(v441) & 0xF) + 621432 - 983 * ((4369245 * (648 * (HIWORD(v441) & 0xF) + 621432)) >> 32))) ^ 0x6C) << 8) ^ ((*(&STACK[0x2E0] + (648 * ((v441 >> 20) & 0xF) + 621432 - 983 * ((4369245 * (648 * ((v441 >> 20) & 0xF) + 621432)) >> 32))) ^ 0x6C) << 12);
  v449 = 648 * ((v441 >> 8) & 0xF) + 621432 - 983 * ((4369245 * (648 * ((v441 >> 8) & 0xF) + 621432)) >> 32);
  v450 = v448 ^ (16 * (*(&STACK[0x2E0] + (648 * (v441 >> 12) + 621432 - 983 * ((4369245 * (648 * (v441 >> 12) + 621432)) >> 32))) ^ 0x6C));
  v451 = *(&STACK[0x2E0] + v449) ^ 0x6C ^ v450;
  v452 = *(&STACK[0x2E0] + (648 * ((BYTE4(a39) - a61 - 17) & 0xF) + 621432 - 983 * ((4369245 * (648 * ((BYTE4(a39) - a61 - 17) & 0xFu) + 621432)) >> 32))) ^ 0x6C;
  v453 = *(&STACK[0x2E0] + (648 * ((BYTE4(a39) - a61 - 17) >> 4) + 621432 - 983 * ((4369245 * (648 * ((BYTE4(a39) - a61 - 17) >> 4) + 621432)) >> 32))) ^ ((v452 | (v451 << 8)) >> 4);
  v454 = v443 & 0xF;
  v455 = v454 | (16 * (v452 & 0xF));
  v456 = 648 * (((2 * v455) & 0xE8) + (v455 ^ 0x274));
  v457 = 648 * (*(&STACK[0x2E0] + (v456 - 983 * ((4369245 * v456) >> 32))) ^ LODWORD(STACK[0x2C8]));
  v458 = (*(&STACK[0x2E0] + v457 + 16848 - 983 * (((8738489 * (v457 + 16848)) >> 32) >> 1)) >> 4) ^ 6;
  v459 = 648 * ((v458 - ((2 * v458) & 0x18) + 108) ^ *(&STACK[0x2E0] + (648 * v455 + 16848 - 983 * ((4369245 * (648 * v455 + 16848)) >> 32)))) + 406944;
  v460 = v446 ^ v442 & 0xFE0;
  v461 = 648 * ((v460 >> 4) | (16 * ((v453 ^ 0x6C) & 0xF)));
  v462 = 648 * (*(&STACK[0x2E0] + (v461 + 406944 - 983 * ((4369245 * (v461 + 406944)) >> 32))) ^ (16 * (*(&STACK[0x2E0] + (v459 - 983 * ((4369245 * v459) >> 32))) ^ 0x6C)) ^ 0x6C);
  v463 = *(&STACK[0x2E0] + v462 + 16848 - 983 * (((8738489 * (v462 + 16848)) >> 32) >> 1)) >> 4;
  v464 = 648 * (((v463 ^ 6) + ((2 * ((v463 ^ 6 | 0x7C) ^ v463)) ^ 0xB) + 109) ^ *(&STACK[0x2E0] + (v461 + 16848 - 983 * ((4369245 * (v461 + 16848)) >> 32)))) + 406944;
  v465 = 648 * ((v453 ^ 0x6C) & 0xF0 | (v460 >> 8) & 0xF);
  v466 = 648 * (*(&STACK[0x2E0] + (v465 + 406944 - 983 * ((4369245 * (v465 + 406944)) >> 32))) ^ (16 * (*(&STACK[0x2E0] + (v464 - 983 * ((4369245 * v464) >> 32))) ^ 0x6C)) ^ 0x6C);
  v467 = (*(&STACK[0x2E0] + v466 + 16848 - 983 * (((8738489 * (v466 + 16848)) >> 32) >> 1)) >> 4) ^ 6;
  v468 = 648 * ((v467 - ((2 * v467) & 0x18) + 108) ^ *(&STACK[0x2E0] + (v465 + 16848 - 983 * ((4369245 * (v465 + 16848)) >> 32)))) + 406944;
  v469 = 648 * (v451 & 0xF0 | (v446 >> 12));
  v470 = 648 * (*(&STACK[0x2E0] + (v469 + 406944 - 983 * ((4369245 * (v469 + 406944)) >> 32))) ^ (16 * (*(&STACK[0x2E0] + (v468 - 983 * ((4369245 * v468) >> 32))) ^ 0x6C)) ^ 0x6C);
  v471 = *(&STACK[0x2E0] + v470 + 16848 - 983 * (((8738489 * (v470 + 16848)) >> 32) >> 1));
  v472 = ((*(&STACK[0x2E0] + v470 + 406944 - 983 * (((8738489 * (v470 + 406944)) >> 32) >> 1)) ^ 0x6C) << 12) ^ ((*(&STACK[0x2E0] + v466 + 406944 - 983 * (((8738489 * (v466 + 406944)) >> 32) >> 1)) ^ 0x6C) << 8);
  v473 = 648 * ((((v471 >> 4) ^ 6) - 2 * (((v471 >> 4) ^ 6) & 0xFD ^ ((v471 & 0x10) != 0)) + 108) ^ *(&STACK[0x2E0] + (v469 + 16848 - 983 * ((4369245 * (v469 + 16848)) >> 32)))) + 406944;
  v474 = 648 * ((v450 >> 4) & 0xF0 | HIWORD(v446) & 0xF);
  v475 = 648 * (*(&STACK[0x2E0] + (v474 + 406944 - 983 * ((4369245 * (v474 + 406944)) >> 32))) ^ (16 * (*(&STACK[0x2E0] + (v473 - 983 * ((4369245 * v473) >> 32))) ^ 0x6C)) ^ 0x6C);
  v476 = v475 + 406944;
  v477 = (*(&STACK[0x2E0] + (v475 + 16848) % 0x3D7u) >> 4) ^ 6;
  v478 = 648 * ((v477 - ((2 * v477) & 0x18) + 108) ^ *(&STACK[0x2E0] + (v474 + 16848 - 983 * ((4369245 * (v474 + 16848)) >> 32)))) + 406944;
  v479 = 648 * ((v448 >> 8) & 0xF0 | (v446 >> 20) & 0xF);
  v480 = *(&STACK[0x2E0] + (v479 + 406944 - 983 * ((4369245 * (v479 + 406944)) >> 32))) ^ (16 * (*(&STACK[0x2E0] + (v478 - 983 * ((4369245 * v478) >> 32))) ^ 0x6C)) ^ 0x6C;
  v481 = (((v480 + 26) | (997 - v480)) & 0x288 | ((v460 & 0x88 ^ 0x88) + (v460 & 0x88))) * (v480 + 26);
  v482 = (*(&STACK[0x2E0] + v481 - 983 * (((8738489 * v481) >> 32) >> 1)) >> 4) ^ 6;
  v483 = (v482 - ((2 * v482) & 0x18) + 108) ^ *(&STACK[0x2E0] + (v479 + 16848 - 983 * ((4369245 * (v479 + 16848)) >> 32)));
  v484 = (v448 >> 12) & 0xF0 | HIBYTE(v446) & 0xF;
  v485 = (v448 >> 12) & 0xC0 | HIBYTE(v446) & 0xB;
  v486 = (((v485 ^ 0xA4019ECB) + v485) ^ 0xA4019C43) * (v484 + 628);
  LOBYTE(v484) = *(&STACK[0x2E0] + (648 * v484 + 16848 - 983 * ((4369245 * (648 * v484 + 16848)) >> 32)));
  v487 = 648 * (*(&STACK[0x2E0] + v486 % 0x3D7) ^ (16 * (*(&STACK[0x2E0] + (648 * v483 + 406944 - 983 * ((4369245 * (648 * v483 + 406944)) >> 32))) ^ 0x6C)) ^ 0x6C);
  v488 = (*(&STACK[0x2E0] + v487 + 16848 - 983 * (((8738489 * (v487 + 16848)) >> 32) >> 1)) ^ 0x6Cu) >> (((v484 & 0x16 ^ 4) + (v484 & 0x16 ^ 0x12)) & 0x24);
  v489 = 648 * ((v488 - ((2 * v488) & 0xD8) + 108) ^ v484) + 406944;
  HIDWORD(v490) = v447 >> 12;
  LODWORD(v490) = v446;
  v491 = *(&STACK[0x2E0] + (648 * (v490 >> 28) + 406944 - 983 * ((4369245 * (648 * (v490 >> 28) + 406944)) >> 32))) ^ (16 * (*(&STACK[0x2E0] + (v489 - 983 * ((4369245 * v489) >> 32))) ^ 0x6C)) ^ 0x6C;
  v492 = 16 * (*(&STACK[0x2E0] + v462 + 406944 - 983 * (((8738489 * (v462 + 406944)) >> 32) >> 1)) ^ 0x6C);
  LOBYTE(v484) = *(&STACK[0x2E0] + v457 + 406944 - 983 * (((8738489 * (v457 + 406944)) >> 32) >> 1)) ^ 0x6C;
  v493 = v454 & 0xFFFFFF0F | (16 * (v484 & 0xF));
  v494 = 648 * ((v492 ^ v484) & 0xF0 | (v460 >> 4)) + 235224;
  v495 = v494 - 983 * ((4369245 * v494) >> 32);
  v496 = v472 ^ v492;
  v497 = v472 ^ v492 ^ ((*(&STACK[0x2E0] + v476 % 0x3D7) ^ 0x6C) << 16);
  v498 = *(&STACK[0x2E0] + (648 * v493 + 235224 - 983 * ((4369245 * (648 * v493 + 235224)) >> 32))) ^ (16 * (*(&STACK[0x2E0] + v495) ^ 0x6C)) ^ ((*(&STACK[0x2E0] + (648 * ((((v496 >> 8) & 0xF) << (((v495 & 0x1F ^ 0x1F) + (v495 & 0x1F)) & 0x24)) ^ (v460 >> 8) & 0xF) + 235224) % 0x3D7) ^ 0x6C) << 8);
  v499 = v497 ^ ((*(&STACK[0x2E0] + 648 * v480 + 406944 - 983 * (((8738489 * (648 * v480 + 406944)) >> 32) >> 1)) ^ 0x6C) << 20);
  v500 = v499 ^ ((*(&STACK[0x2E0] + v487 + 406944 - 983 * (((8738489 * (v487 + 406944)) >> 32) >> 1)) ^ 0x6C) << 24);
  v501 = v500 ^ ((*(&STACK[0x2E0] + ((((-629 - v491) | (v491 + 628)) & 0xCA16420D) + 904511611) * (v491 + 628) % 0x3D7) ^ 0xC) << 28);
  v502 = HIWORD(v499) & 0xF0 | (v446 >> 20) & 0xF;
  v503 = (v500 >> 20) & 0xF0 | HIBYTE(v446) & 0xF;
  v504 = HIBYTE(v501) & 0xF0 | (v446 >> 28);
  v505 = 648 * ((v472 >> 8) & 0xF0 | (v446 >> 12)) + 235224;
  v506 = 648 * ((v497 >> 12) & 0xF0 | HIWORD(v446) & 0xF) + 235224;
  v507 = v498 ^ ((*(&STACK[0x2E0] + (v505 - 983 * ((4369245 * v505) >> 32))) ^ 0x6C) << 12);
  v508 = *(&STACK[0x2E0] + (648 * v502 + 235224 - 983 * ((4369245 * (648 * v502 + 235224)) >> 32)));
  LOBYTE(v502) = v507 ^ 0x6C;
  v509 = v507 ^ 0x6C ^ ((*(&STACK[0x2E0] + (v506 - 983 * ((4369245 * v506) >> 32))) ^ 0x6C) << 16);
  v510 = v509 ^ ((v508 ^ 0x6C) << 20);
  v511 = v510 ^ ((*(&STACK[0x2E0] + (648 * v503 + 235224 - 983 * ((4369245 * (648 * v503 + 235224)) >> 32))) ^ 0x6C) << 24);
  v512 = (v511 ^ ((*(&STACK[0x2E0] + (648 * v504 + 235224 - 983 * ((4369245 * (648 * v504 + 235224)) >> 32))) ^ 0xC) << 28)) >> 28;
  v513 = ((((((*(&STACK[0x2E0] + (648 * (HIBYTE(v511) & 0xF) - 983 * (((2765016 * (HIBYTE(v511) & 0xF)) >> 16) >> 6))) ^ 0x6C) << 8) ^ ((*(&STACK[0x2E0] + (648 * v512 - 983 * (((2765016 * v512) >> 16) >> 6))) ^ 0x6C) << 12) | *(&STACK[0x2E0] + (648 * (BYTE2(v509) & 0xF) - 983 * (((2765016 * (HIWORD(v509) & 0xF)) >> 16) >> 6))) ^ 0x6C) << 8) ^ ((*(&STACK[0x2E0] + (648 * ((v510 >> 20) & 0xF) - 983 * (((2765016 * ((v510 >> 20) & 0xF)) >> 16) >> 6))) ^ 0x6C) << 12) | *(&STACK[0x2E0] + (648 * ((v498 >> 8) & 0xF) - 983 * (((2765016 * ((v498 >> 8) & 0xF)) >> 16) >> 6))) ^ 0x6C) << 8) ^ ((*(&STACK[0x2E0] + (648 * (v507 >> 12) - 983 * (((2765016 * (v507 >> 12)) >> 16) >> 6))) ^ 0x6C) << 12);
  v514 = (LODWORD(STACK[0x288]) ^ LODWORD(STACK[0x2B8]));
  v515 = LODWORD(STACK[0x224]) ^ (LODWORD(STACK[0x228]) | *(&STACK[0x2E0] + (648 * (STACK[0x230] & 0xF) - 983 * (((2765016 * (STACK[0x230] & 0xF)) >> 16) >> 6))) ^ 0x6C);
  v516 = LODWORD(STACK[0x250]) | *(&STACK[0x2E0] + (648 * (STACK[0x258] & 0xF ^ 0xC) - 983 * (((2765016 * (STACK[0x258] & 0xF ^ 0xCu)) >> 16) >> 6))) ^ 0x6C;
  LODWORD(STACK[0x288]) = LODWORD(STACK[0x218]) ^ (LODWORD(STACK[0x290]) + LODWORD(STACK[0x28C]));
  LODWORD(STACK[0x2C8]) = LODWORD(STACK[0x210]) ^ v516;
  v517 = *(&STACK[0x2E0] + (648 * (STACK[0x208] & 0xF ^ 0xC) - 983 * (((2765016 * (STACK[0x208] & 0xF ^ 0xCu)) >> 16) >> 6)));
  LODWORD(STACK[0x28C]) = LODWORD(STACK[0x260]) ^ LODWORD(STACK[0x298]);
  LODWORD(STACK[0x290]) = v544 ^ (LODWORD(STACK[0x200]) | v517 ^ 0x6C);
  v518 = LODWORD(STACK[0x238]) ^ 0x71BC7702;
  LODWORD(STACK[0x298]) = (v518 + 452104142) ^ (16 * (*(&STACK[0x2E0] + (648 * (v502 >> 4) - 983 * (((2765016 * (v502 >> 4)) >> 16) >> 6))) ^ 0x6C)) ^ (v513 | *(&STACK[0x2E0] + (648 * (v502 & 0xF) - 983 * (((2765016 * (v502 & 0xFu)) >> 16) >> 6))) ^ 0x6C);
  LODWORD(STACK[0x294]) = v437 ^ ((v540 ^ 0x71BC7702) + 452104142);
  v519 = HIDWORD(a63) ^ ((v540 ^ 0x71BC7702) + 452104142);
  v520 = (HIDWORD(a63) ^ 0x7378309Bu) - v519;
  v521 = v519 ^ 0x871FE274;
  v522 = 32 * LODWORD(STACK[0x268]);
  LODWORD(a47) = LODWORD(STACK[0x270]) - 1602603251 - (v522 & 0xE00);
  HIDWORD(a46) = LODWORD(STACK[0x270]) + 1359764885 - (v522 & 0x1B20);
  v523 = *(STACK[0x2D0] + 8 * a48);
  v527 = *(&off_101353600 + a48 - 20709) - 4;
  v524 = 265 * (a48 ^ 0x540F);
  LODWORD(a31) = v524;
  HIDWORD(a44) = v524 ^ 0x5418A770;
  LODWORD(STACK[0x280]) = HIDWORD(a40);
  return v523(v524, (a61 ^ 0x7378309B) - (a61 ^ (v518 + 452104142)), v521, 265, v520, (v515 & 0x225C422B ^ 0x225C422B) + (v515 & 0x225C422B) + (a61 ^ (v518 + 452104142) ^ 0x871FE274), &off_101353600, v514, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, v526, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, v527, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, v529, a61, a62, a63);
}

uint64_t sub_100A2E2F4@<X0>(int a1@<W0>, int a2@<W6>, unsigned int a3@<W8>)
{
  v5 = *(&STACK[0x320] + 2361 * (((a1 << (a3 - 82)) & 0x60C) + (a1 ^ 0x306u)) % 0xA88);
  LOBYTE(v5) = *(&STACK[0x320] + (2361 * (v5 | ((v5 < 0x60) << 8)) + 5293362) % 0xA88);
  v6 = v5 & 0x8C ^ 0x36;
  v7 = v5 ^ 0x20;
  *(&STACK[0xDE0] + (a2 + 825 * a1) % 0x1940u) = (v5 ^ (2 * (v7 & (2 * (v7 & (2 * (v7 & (2 * (v7 & (2 * (v7 & 0x2C ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6))) ^ (v3 - 132);
  return (*(v4 + 8 * ((16790 * (a1 == 255)) ^ a3)))();
}

uint64_t sub_100A2E420()
{
  *(v4 - 232) = (v1 - 1723119640) ^ (1917435887 * ((v4 - 240) ^ 0xE6BB5B06));
  *(v2 + 1040) = *(v0 + 8 * (v1 - 8073));
  v5 = (*(v3 + 8 * (v1 ^ 0x5D13)))(v4 - 240);
  v6 = *(v3 + 8 * (((**(v0 + 8 * (v1 - 6935)) == 1262530236) * (v1 - 2120245015 + v1 + 2120246498 + 12)) ^ v1));
  STACK[0x540] = v3;
  return v6(v5);
}

uint64_t sub_100A2E5E0@<X0>(int a1@<W8>)
{
  STACK[0xEF0] = STACK[0x1240];
  LODWORD(STACK[0xC9C]) = STACK[0x10B4];
  return (*(v2 + 8 * (((LODWORD(STACK[0xA1C]) == -143113071) * (v1 + ((a1 - 66) ^ 0x819FDE45) + ((a1 + 26994045) | 0x8003C004) + 1530)) ^ (a1 - 66))))();
}

uint64_t sub_100A2E6EC@<X0>(int a1@<W8>)
{
  if (v1)
  {
    v5 = v2 > ((a1 - 1391022107) ^ (v4 - 3));
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  return (*(v3 + 8 * ((28718 * v6) ^ a1)))();
}

uint64_t sub_100A2E770@<X0>(int a1@<W8>)
{
  v6 = STACK[0x598];
  *(v5 - 216) = ((a1 - 2084669660) ^ 0x60) + STACK[0x598];
  *(v5 - 172) = v6;
  *(v5 - 208) = v1 + v6;
  *(v5 - 192) = a1 - 2084669660 + v6;
  *(v5 - 184) = v6 ^ v4;
  *(v5 - 200) = 1988851091 - v6 + a1;
  *(v5 - 196) = v6 ^ (a1 - 2084669660) ^ 0x104A;
  v7 = (*(v2 + 8 * (v3 + a1 + 48)))(v5 - 216);
  return (*(v2 + 8 * *(v5 - 176)))(v7);
}

uint64_t sub_100A2E7F4(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  a2[127] = v5[15];
  a2[126] = v5[14];
  a2[125] = v5[13];
  a2[124] = v5[12];
  a2[123] = v5[11];
  a2[122] = v5[10];
  a2[121] = v5[9];
  a2[120] = v5[8];
  a2[119] = v5[7];
  a2[118] = v5[6];
  a2[117] = v5[5];
  a2[116] = v5[4];
  a2[115] = v5[3];
  a2[114] = v5[2];
  a2[113] = v5[1];
  *a5 = *v5;
  return (*(v7 + 8 * v6))();
}

uint64_t sub_100A2E904@<X0>(int a1@<W8>)
{
  STACK[0x790] = v1;
  v6 = *(v4 + 16 * ((v1 ^ 0xBFFF1BF7FFEFFFDDLL) + 0x4000E40800100023 + ((2 * v1) & 0x1FFDFFFBALL)));
  v7 = 1534937323 * ((~((v5 - 216) | v2) + ((v5 - 216) & v2)) ^ 0x663FBFA51CBA3093);
  *(v5 - 184) = ((a1 - 1672309975) ^ 0x76) + v7;
  *(v5 - 192) = v7;
  *(v5 - 216) = v6 ^ v7;
  *(v5 - 208) = ((a1 - 1672309975) ^ 0xF3A) - v7;
  *(v5 - 204) = v7 + a1 + 948130785;
  *(v5 - 200) = v7;
  *(v5 - 196) = (a1 - 1672309975) ^ v7;
  v8 = (*(v3 + 8 * (a1 ^ 0x1E01726D)))(v5 - 216);
  return (*(v3 + 8 * *(v5 - 180)))(v8);
}

uint64_t sub_100A2EA44@<X0>(unint64_t a1@<X0>, int8x16_t *a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X4>, unint64_t a5@<X6>, unint64_t a6@<X7>, int a7@<W8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, int8x16_t a46, int64x2_t a47, int8x16_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int8x16_t a53, int8x16_t a54, int8x16_t a55, int64x2_t a56, int8x16_t a57, int8x16_t a58, int8x16_t a59, int8x16_t a60)
{
  *&STACK[0x360] = *(v62 + v68 - 16);
  v70.i64[0] = v61 + v68 - 3;
  v70.i64[1] = v61 + v68 - 4;
  v71 = v70;
  v70.i64[0] = v62 + v68 - 13;
  v70.i64[1] = v62 + v68 - 14;
  v72 = v70;
  *&STACK[0x320] = v70;
  v70.i64[0] = v62 + v68 - 11;
  v70.i64[1] = v62 + v68 - 12;
  v73 = v70;
  *&STACK[0x340] = v70;
  v70.i64[0] = v62 + v68 - 9;
  v70.i64[1] = v62 + v68 - 10;
  *&STACK[0x350] = v70;
  v74.i64[0] = v62 + v68 - 5;
  v74.i64[1] = v62 + v68 - 6;
  v75.i64[0] = v62 + v68 - 3;
  v75.i64[1] = v62 + v68 - 4;
  v76.i64[0] = v62 + v68 - 1;
  v76.i64[1] = v62 + v68 - 2;
  v77 = v76;
  *&STACK[0x460] = v76;
  v76.i64[0] = v62 + v68 - 15;
  v76.i64[1] = v62 + v68 - 16;
  v78 = v76;
  *&STACK[0x330] = v76;
  v79 = v68 + (((a7 + v63 + 1939) | v64) ^ v65);
  v76.i64[0] = v62 + v68 - 7;
  v76.i64[1] = v62 + v79;
  v80 = v76;
  *&STACK[0x310] = v76;
  v76.i64[0] = v61 + v68 - 5;
  v76.i64[1] = v61 + v68 - 6;
  v81 = v76;
  v82 = *&STACK[0x3A0];
  v83 = vandq_s8(v77, *&STACK[0x3A0]);
  v84 = vandq_s8(v75, *&STACK[0x3A0]);
  v85 = vandq_s8(v74, *&STACK[0x3A0]);
  v86 = vandq_s8(v70, *&STACK[0x3A0]);
  v87 = vandq_s8(v73, *&STACK[0x3A0]);
  v88 = vandq_s8(v72, *&STACK[0x3A0]);
  v89 = vandq_s8(v80, *&STACK[0x3A0]);
  v90 = vandq_s8(v78, *&STACK[0x3A0]);
  v91 = vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL);
  v92 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v93 = vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL);
  v94 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v95 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v96 = vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL);
  v97 = vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL);
  v98 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v99 = vaddq_s64(v96, *&STACK[0x220]);
  v100 = vaddq_s64(v92, *&STACK[0x220]);
  v101 = vandq_s8(vaddq_s64(v91, *&STACK[0x220]), *&STACK[0x210]);
  v102 = vandq_s8(v100, *&STACK[0x210]);
  v103 = vandq_s8(vaddq_s64(v93, *&STACK[0x220]), *&STACK[0x210]);
  v104 = vandq_s8(vaddq_s64(v94, *&STACK[0x220]), *&STACK[0x210]);
  v105 = vandq_s8(vaddq_s64(v95, *&STACK[0x220]), *&STACK[0x210]);
  v106 = vandq_s8(v99, *&STACK[0x210]);
  v107 = vandq_s8(vaddq_s64(v97, *&STACK[0x220]), *&STACK[0x210]);
  v108 = vandq_s8(vaddq_s64(v98, *&STACK[0x220]), *&STACK[0x210]);
  v109 = veorq_s8(v107, *&STACK[0x200]);
  v110 = veorq_s8(v106, *&STACK[0x200]);
  v111 = veorq_s8(v105, *&STACK[0x200]);
  v112 = veorq_s8(v104, *&STACK[0x200]);
  v113 = veorq_s8(v103, *&STACK[0x200]);
  v114 = veorq_s8(v102, *&STACK[0x200]);
  v115 = veorq_s8(v101, *&STACK[0x200]);
  v116 = veorq_s8(v101, a60);
  v117 = veorq_s8(v102, a60);
  v118 = veorq_s8(v103, a60);
  v119 = veorq_s8(v104, a60);
  v120 = veorq_s8(v105, a60);
  v121 = veorq_s8(v106, a60);
  v122 = veorq_s8(v108, *&STACK[0x200]);
  v123 = veorq_s8(v107, a60);
  v124 = veorq_s8(v108, a60);
  v125 = vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL);
  v126 = vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL);
  v127 = vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL);
  v128 = vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL);
  v129 = vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL);
  v130 = vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL);
  v131 = vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL);
  v132 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v124);
  v133 = veorq_s8(vaddq_s64(v125, v116), a59);
  v134 = veorq_s8(vaddq_s64(v126, v117), a59);
  v135 = veorq_s8(vaddq_s64(v127, v118), a59);
  v136 = veorq_s8(vaddq_s64(v128, v119), a59);
  v137 = veorq_s8(vaddq_s64(v129, v120), a59);
  v138 = vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL);
  v139 = vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL);
  v140 = veorq_s8(vaddq_s64(v130, v121), a59);
  v141 = vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL);
  v142 = vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL);
  v143 = veorq_s8(vaddq_s64(v131, v123), a59);
  v144 = vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL);
  v145 = vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL);
  v146 = veorq_s8(v132, a59);
  v147 = veorq_s8(v143, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v148 = veorq_s8(v140, v145);
  v149 = veorq_s8(v137, v144);
  v150 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v151 = veorq_s8(v136, v142);
  v152 = veorq_s8(v135, v141);
  v153 = veorq_s8(v134, v139);
  v154 = veorq_s8(v133, v138);
  v155 = vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL);
  v156 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v157 = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v158 = vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL);
  v159 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v152);
  v160 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), v151);
  v161 = vaddq_s64(v158, v150);
  v162 = veorq_s8(vaddq_s64(v155, v147), a58);
  v163 = veorq_s8(vaddq_s64(v156, v148), a58);
  v164 = veorq_s8(vaddq_s64(v157, v149), a58);
  v165 = veorq_s8(v160, a58);
  v166 = veorq_s8(v159, a58);
  v167 = vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL);
  v168 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v153), a58);
  v169 = vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL);
  v170 = vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL);
  v171 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v154), a58);
  v172 = vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL);
  v173 = veorq_s8(v161, a58);
  v174 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL));
  v175 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v176 = veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v177 = veorq_s8(v165, v172);
  v178 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL));
  v179 = veorq_s8(v163, v170);
  v180 = veorq_s8(v162, v169);
  v181 = veorq_s8(v173, v167);
  v182 = vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL);
  v183 = vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL);
  v184 = vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL);
  v185 = vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL);
  v186 = vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL);
  v187 = vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL);
  v188 = vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL);
  v189 = vaddq_s64(v187, v180);
  v190 = vaddq_s64(v186, v179);
  v191 = vaddq_s64(v185, v178);
  v192 = vaddq_s64(v184, v177);
  v193 = vaddq_s64(v183, v176);
  v194 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v175);
  v195 = vaddq_s64(v182, v174);
  v196 = vaddq_s64(v188, v181);
  v197 = vaddq_s64(vsubq_s64(v189, vandq_s8(vaddq_s64(v189, v189), a57)), a56);
  v198 = vaddq_s64(vsubq_s64(v192, vandq_s8(vaddq_s64(v192, v192), a57)), a56);
  v199 = veorq_s8(vaddq_s64(vsubq_s64(v195, vandq_s8(vaddq_s64(v195, v195), a57)), a56), a55);
  v200 = veorq_s8(vaddq_s64(vsubq_s64(v194, vandq_s8(vaddq_s64(v194, v194), a57)), a56), a55);
  v201 = veorq_s8(vaddq_s64(vsubq_s64(v193, vandq_s8(vaddq_s64(v193, v193), a57)), a56), a55);
  v202 = veorq_s8(v198, a55);
  v203 = veorq_s8(vaddq_s64(vsubq_s64(v191, vandq_s8(vaddq_s64(v191, v191), a57)), a56), a55);
  v204 = vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL);
  v205 = vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL);
  v206 = veorq_s8(vaddq_s64(vsubq_s64(v190, vandq_s8(vaddq_s64(v190, v190), a57)), a56), a55);
  v207 = vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL);
  v208 = vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL);
  v209 = veorq_s8(v197, a55);
  v210 = vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL);
  v211 = veorq_s8(vaddq_s64(vsubq_s64(v196, vandq_s8(vaddq_s64(v196, v196), a57)), a56), a55);
  v212 = veorq_s8(v209, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v213 = veorq_s8(v206, vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL));
  v214 = veorq_s8(v203, v210);
  v215 = veorq_s8(v211, vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL));
  v216 = veorq_s8(v202, v208);
  v217 = veorq_s8(v201, v207);
  v218 = veorq_s8(v200, v205);
  v219 = veorq_s8(v199, v204);
  v220 = vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL);
  v221 = vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL);
  v222 = vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL);
  v223 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL), v217);
  v224 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL), v216);
  v225 = vaddq_s64(v222, v215);
  v226 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL), v212), a54);
  v227 = veorq_s8(vaddq_s64(v220, v213), a54);
  v228 = veorq_s8(vaddq_s64(v221, v214), a54);
  v229 = veorq_s8(v224, a54);
  v230 = veorq_s8(v223, a54);
  v231 = vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL);
  v232 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), v218), a54);
  v233 = vsraq_n_u64(vshlq_n_s64(v212, 3uLL), v212, 0x3DuLL);
  v234 = vsraq_n_u64(vshlq_n_s64(v213, 3uLL), v213, 0x3DuLL);
  v235 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL), v219), a54);
  v236 = vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL);
  v237 = vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL);
  v238 = veorq_s8(v225, a54);
  v239 = veorq_s8(v235, vsraq_n_u64(vshlq_n_s64(v219, 3uLL), v219, 0x3DuLL));
  v240 = veorq_s8(v232, vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL));
  v241 = veorq_s8(v230, vsraq_n_u64(vshlq_n_s64(v217, 3uLL), v217, 0x3DuLL));
  v242 = veorq_s8(v229, v237);
  v243 = veorq_s8(v228, v236);
  v244 = veorq_s8(v227, v234);
  v245 = veorq_s8(v226, v233);
  v246 = veorq_s8(v238, v231);
  v247 = vsraq_n_u64(vshlq_n_s64(v235, 0x38uLL), v235, 8uLL);
  v248 = vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL);
  v249 = vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL);
  v250 = vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL);
  v251 = vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL);
  v252 = vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL);
  v253 = vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL);
  v254 = vsraq_n_u64(vshlq_n_s64(v238, 0x38uLL), v238, 8uLL);
  v255 = vaddq_s64(v253, v245);
  v256 = vaddq_s64(v252, v244);
  v257 = vaddq_s64(v251, v243);
  v258 = vaddq_s64(v250, v242);
  v259 = vaddq_s64(v249, v241);
  v260 = vaddq_s64(v248, v240);
  v261 = vaddq_s64(v247, v239);
  v262 = vaddq_s64(v254, v246);
  *&STACK[0x2C0] = vsubq_s64(vorrq_s8(vaddq_s64(v261, v261), a53), v261);
  *&STACK[0x2A0] = vsubq_s64(vorrq_s8(vaddq_s64(v260, v260), a53), v260);
  *&STACK[0x2E0] = vsubq_s64(vorrq_s8(vaddq_s64(v259, v259), a53), v259);
  *&STACK[0x300] = vsubq_s64(vorrq_s8(vaddq_s64(v258, v258), a53), v258);
  *&STACK[0x280] = vsubq_s64(vorrq_s8(vaddq_s64(v255, v255), a53), v255);
  *&STACK[0x290] = vsubq_s64(vorrq_s8(vaddq_s64(v262, v262), a53), v262);
  v263 = *&STACK[0x410];
  v264 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v256, v256), a53), v256), *&STACK[0x410]);
  *&STACK[0x2B0] = vsraq_n_u64(vshlq_n_s64(v239, 3uLL), v239, 0x3DuLL);
  v265 = vsraq_n_u64(vshlq_n_s64(v240, 3uLL), v240, 0x3DuLL);
  *&STACK[0x2D0] = vsraq_n_u64(vshlq_n_s64(v241, 3uLL), v241, 0x3DuLL);
  *&STACK[0x2F0] = vsraq_n_u64(vshlq_n_s64(v242, 3uLL), v242, 0x3DuLL);
  v266 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v257, v257), a53), v257), v263), a48);
  v267 = vsraq_n_u64(vshlq_n_s64(v243, 3uLL), v243, 0x3DuLL);
  v268 = vsraq_n_u64(vshlq_n_s64(v244, 3uLL), v244, 0x3DuLL);
  v269 = vsraq_n_u64(vshlq_n_s64(v245, 3uLL), v245, 0x3DuLL);
  v270 = veorq_s8(v264, a48);
  *&STACK[0x260] = vsraq_n_u64(vshlq_n_s64(v246, 3uLL), v246, 0x3DuLL);
  *&STACK[0x270] = v265;
  v271 = vandq_s8(v81, v82);
  v272 = vandq_s8(v71, v82);
  v273 = v82;
  v274 = veorq_s8(v270, v268);
  v275 = vsraq_n_u64(vshlq_n_s64(v272, 0x38uLL), v272, 8uLL);
  v276 = *&STACK[0x3E0];
  v277 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v271, 0x38uLL), v271, 8uLL), *&STACK[0x3F0]);
  v278 = vaddq_s64(v275, *&STACK[0x3F0]);
  v279 = *&STACK[0x3F0];
  v280 = veorq_s8(v266, v267);
  v281 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v277, v277), *&STACK[0x3E0]), v277), a47);
  v282 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v278, v278), *&STACK[0x3E0]), v278), a47);
  v283 = *&STACK[0x3C0];
  v284 = veorq_s8(v282, *&STACK[0x3D0]);
  v285 = veorq_s8(v281, *&STACK[0x3D0]);
  v286 = vsraq_n_u64(vshlq_n_s64(v270, 0x38uLL), v270, 8uLL);
  v287 = vsraq_n_u64(vshlq_n_s64(v285, 0x38uLL), v285, 8uLL);
  v288 = vsraq_n_u64(vshlq_n_s64(v284, 0x38uLL), v284, 8uLL);
  v289 = vsraq_n_u64(vshlq_n_s64(v266, 0x38uLL), v266, 8uLL);
  v290 = vsraq_n_u64(vshlq_n_s64(v280, 3uLL), v280, 0x3DuLL);
  v291 = veorq_s8(v281, *&STACK[0x3C0]);
  v292 = veorq_s8(v282, *&STACK[0x3C0]);
  v293 = vaddq_s64(v288, v292);
  v294 = vaddq_s64(v289, v280);
  v295 = vaddq_s64(v287, v291);
  v296 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v295, v295), *&STACK[0x3B0]), v295), *&STACK[0x530]), *&STACK[0x4A0]);
  v297 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v293, v293), *&STACK[0x3B0]), v293), *&STACK[0x530]), *&STACK[0x4A0]);
  v298 = vsraq_n_u64(vshlq_n_s64(v291, 3uLL), v291, 0x3DuLL);
  v299 = veorq_s8(v297, vsraq_n_u64(vshlq_n_s64(v292, 3uLL), v292, 0x3DuLL));
  v300 = veorq_s8(v296, v298);
  v301 = vsraq_n_u64(vshlq_n_s64(v297, 0x38uLL), v297, 8uLL);
  v302 = vsraq_n_u64(vshlq_n_s64(v296, 0x38uLL), v296, 8uLL);
  v303 = vsraq_n_u64(vshlq_n_s64(v274, 3uLL), v274, 0x3DuLL);
  v304 = vaddq_s64(v286, v274);
  v305 = vaddq_s64(v302, v300);
  v306 = vaddq_s64(v301, v299);
  v307 = *&STACK[0x480];
  v308 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v306, v306), a46), v306), *&STACK[0x490]), *&STACK[0x480]);
  v309 = *&STACK[0x400];
  v310 = veorq_s8(v304, *&STACK[0x400]);
  v311 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v305, v305), a46), v305), *&STACK[0x490]), *&STACK[0x480]);
  v312 = vsraq_n_u64(vshlq_n_s64(v299, 3uLL), v299, 0x3DuLL);
  v313 = veorq_s8(v294, *&STACK[0x400]);
  v314 = veorq_s8(v311, vsraq_n_u64(vshlq_n_s64(v300, 3uLL), v300, 0x3DuLL));
  v315 = veorq_s8(v308, v312);
  v316 = veorq_s8(v313, v290);
  v317 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v308, 0x38uLL), v308, 8uLL), v315);
  v318 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v311, 0x38uLL), v311, 8uLL), v314);
  v319 = *&STACK[0x380];
  v320 = veorq_s8(v310, v303);
  v321 = vsubq_s64(v318, vandq_s8(vaddq_s64(v318, v318), *&STACK[0x380]));
  v322 = vsubq_s64(v317, vandq_s8(vaddq_s64(v317, v317), *&STACK[0x380]));
  v323 = vsraq_n_u64(vshlq_n_s64(v313, 0x38uLL), v313, 8uLL);
  v324 = vsraq_n_u64(vshlq_n_s64(v314, 3uLL), v314, 0x3DuLL);
  v325 = vsraq_n_u64(vshlq_n_s64(v315, 3uLL), v315, 0x3DuLL);
  v326 = vsraq_n_u64(vshlq_n_s64(v310, 0x38uLL), v310, 8uLL);
  v245.i64[0] = v61 + v68 - 7;
  v245.i64[1] = v61 + v79;
  v327 = v245;
  *&STACK[0x250] = v245;
  v328 = *&STACK[0x390];
  v329 = vnegq_s64(vandq_s8(vshlq_n_s64(v75, 3uLL), *&STACK[0x390]));
  v330 = vnegq_s64(vandq_s8(vshlq_n_s64(v74, 3uLL), *&STACK[0x390]));
  v331 = *&STACK[0x370];
  v332 = veorq_s8(vaddq_s64(v321, *&STACK[0x370]), *&STACK[0x470]);
  v333 = veorq_s8(vaddq_s64(v322, *&STACK[0x370]), *&STACK[0x470]);
  v334 = veorq_s8(v333, v325);
  v335 = veorq_s8(v332, v324);
  v336 = vaddq_s64(v326, v320);
  v337 = vaddq_s64(v323, v316);
  v338 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v333, 0x38uLL), v333, 8uLL), v334);
  v339 = vdupq_n_s64(v66);
  v340 = veorq_s8(v338, v339);
  *&STACK[0x450] = v339;
  v341 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v332, 0x38uLL), v332, 8uLL), v335), v339);
  v342 = vsraq_n_u64(vshlq_n_s64(v334, 3uLL), v334, 0x3DuLL);
  v343 = veorq_s8(v341, vsraq_n_u64(vshlq_n_s64(v335, 3uLL), v335, 0x3DuLL));
  v344 = veorq_s8(v340, v342);
  v345 = veorq_s8(v337, *&STACK[0x4C0]);
  v346 = veorq_s8(v336, *&STACK[0x4C0]);
  v347 = vdupq_n_s64(a1);
  *&STACK[0x440] = v347;
  v348 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v341, 0x38uLL), v341, 8uLL), v343), v347);
  v349 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v340, 0x38uLL), v340, 8uLL), v344), v347);
  v350 = vshlq_u64(v346, v329);
  v351 = vsraq_n_u64(vshlq_n_s64(v343, 3uLL), v343, 0x3DuLL);
  v352 = veorq_s8(v349, vsraq_n_u64(vshlq_n_s64(v344, 3uLL), v344, 0x3DuLL));
  v353 = vshlq_u64(v345, v330);
  v354 = veorq_s8(v348, v351);
  v355 = vdupq_n_s64(a3);
  v356 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v349, 0x38uLL), v349, 8uLL), v352), v355);
  v357 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v348, 0x38uLL), v348, 8uLL), v354), v355);
  v358 = veorq_s8(v357, vsraq_n_u64(vshlq_n_s64(v354, 3uLL), v354, 0x3DuLL));
  v359 = vsraq_n_u64(vshlq_n_s64(v357, 0x38uLL), v357, 8uLL);
  v360 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v356, 0x38uLL), v356, 8uLL), veorq_s8(v356, vsraq_n_u64(vshlq_n_s64(v352, 3uLL), v352, 0x3DuLL)));
  v361 = vaddq_s64(v359, v358);
  v362 = vdupq_n_s64(a4);
  v363 = vdupq_n_s64(a5);
  *&STACK[0x430] = v363;
  v364 = vdupq_n_s64(a6);
  v365 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v360, v360), v362), v360), v363);
  v366 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v361, v361), v362), v361), v363), v364);
  v367 = v328;
  v368 = vandq_s8(vshlq_n_s64(v81, 3uLL), v328);
  v369 = v364;
  v370 = v367;
  v371 = vnegq_s64(vandq_s8(vshlq_n_s64(v71, 3uLL), v367));
  *&STACK[0x4F0] = v353;
  *&STACK[0x500] = veorq_s8(vshlq_u64(veorq_s8(v365, v364), v371), v350);
  *&STACK[0x510] = veorq_s8(vshlq_u64(v366, vnegq_s64(v368)), v353);
  *&STACK[0x520] = v371;
  v372 = vandq_s8(v327, v273);
  v373 = vsraq_n_u64(vshlq_n_s64(v372, 0x38uLL), v372, 8uLL);
  v372.i64[0] = v61 + v68 - 1;
  v372.i64[1] = v61 + v68 - 2;
  v374 = vandq_s8(v372, v273);
  v375 = vaddq_s64(v373, v279);
  v376 = vsubq_s64(vorrq_s8(vaddq_s64(v375, v375), v276), v375);
  v377 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v374, 0x38uLL), v374, 8uLL), v279);
  v378 = vsubq_s64(vorrq_s8(vaddq_s64(v377, v377), v276), v377);
  v379 = *&STACK[0x410];
  v380 = veorq_s8(vaddq_s64(*&STACK[0x280], *&STACK[0x410]), a48);
  v381 = veorq_s8(v380, v269);
  v382 = vsraq_n_u64(vshlq_n_s64(v380, 0x38uLL), v380, 8uLL);
  v383 = vaddq_s64(v378, a47);
  v384 = *&STACK[0x3D0];
  v385 = veorq_s8(v383, *&STACK[0x3D0]);
  v386 = veorq_s8(v383, v283);
  v387 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v385, 0x38uLL), v385, 8uLL), v386);
  v388 = *&STACK[0x3B0];
  v389 = vsraq_n_u64(vshlq_n_s64(v381, 3uLL), v381, 0x3DuLL);
  v390 = vaddq_s64(v382, v381);
  v391 = vsraq_n_u64(vshlq_n_s64(v386, 3uLL), v386, 0x3DuLL);
  v392 = v309;
  v393 = veorq_s8(v390, v309);
  v394 = veorq_s8(v393, v389);
  v395 = vsraq_n_u64(vshlq_n_s64(v393, 0x38uLL), v393, 8uLL);
  v396 = *&STACK[0x530];
  v397 = *&STACK[0x4A0];
  v398 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v387, v387), *&STACK[0x3B0]), v387), *&STACK[0x530]), *&STACK[0x4A0]);
  v399 = veorq_s8(v398, v391);
  v400 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v398, 0x38uLL), v398, 8uLL), v399);
  v401 = vaddq_s64(v395, v394);
  v402 = *&STACK[0x490];
  v403 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v400, v400), a46), v400), *&STACK[0x490]), v307);
  v404 = veorq_s8(v403, vsraq_n_u64(vshlq_n_s64(v399, 3uLL), v399, 0x3DuLL));
  v405 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v403, 0x38uLL), v403, 8uLL), v404);
  v406 = *&STACK[0x470];
  v407 = veorq_s8(vaddq_s64(vsubq_s64(v405, vandq_s8(vaddq_s64(v405, v405), v319)), v331), *&STACK[0x470]);
  v408 = veorq_s8(v407, vsraq_n_u64(vshlq_n_s64(v404, 3uLL), v404, 0x3DuLL));
  v409 = v370;
  v410 = vshlq_u64(veorq_s8(v401, *&STACK[0x4C0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x460], 3uLL), v370)));
  v411 = *&STACK[0x450];
  v412 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v407, 0x38uLL), v407, 8uLL), v408), *&STACK[0x450]);
  v413 = veorq_s8(v412, vsraq_n_u64(vshlq_n_s64(v408, 3uLL), v408, 0x3DuLL));
  v414 = *&STACK[0x440];
  v415 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v412, 0x38uLL), v412, 8uLL), v413), *&STACK[0x440]);
  v416 = veorq_s8(v415, vsraq_n_u64(vshlq_n_s64(v413, 3uLL), v413, 0x3DuLL));
  v417 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v415, 0x38uLL), v415, 8uLL), v416), v355);
  v418 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v417, 0x38uLL), v417, 8uLL), veorq_s8(v417, vsraq_n_u64(vshlq_n_s64(v416, 3uLL), v416, 0x3DuLL)));
  v419 = v362;
  *&STACK[0x420] = v362;
  v420 = vsubq_s64(vandq_s8(vaddq_s64(v418, v418), v362), v418);
  v362.i64[0] = v61 + v68 - 9;
  v362.i64[1] = v61 + v68 - 10;
  *&STACK[0x460] = v362;
  v421 = *&STACK[0x430];
  v422 = vaddq_s64(v420, *&STACK[0x430]);
  v423 = v369;
  *&STACK[0x240] = v369;
  v424 = vshlq_u64(veorq_s8(v422, v369), vnegq_s64(vandq_s8(vshlq_n_s64(v372, 3uLL), v409)));
  v372.i64[0] = v61 + v68 - 11;
  v372.i64[1] = v61 + v68 - 12;
  *&STACK[0x280] = v372;
  v425 = vaddq_s64(v376, a47);
  v426 = veorq_s8(vaddq_s64(*&STACK[0x290], v379), a48);
  v427 = *&STACK[0x500];
  v428 = *&STACK[0x510];
  v429 = *&STACK[0x520];
  *&STACK[0x4F0] = veorq_s8(v424, v410);
  *&STACK[0x500] = v427;
  *&STACK[0x510] = v428;
  *&STACK[0x520] = v429;
  v430 = veorq_s8(v425, v384);
  v431 = veorq_s8(v425, v283);
  v432 = veorq_s8(v426, *&STACK[0x260]);
  v433 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v430, 0x38uLL), v430, 8uLL), v431);
  v434 = vsraq_n_u64(vshlq_n_s64(v426, 0x38uLL), v426, 8uLL);
  v435 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v433, v433), v388), v433), v396), v397);
  v436 = veorq_s8(v435, vsraq_n_u64(vshlq_n_s64(v431, 3uLL), v431, 0x3DuLL));
  v437 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v435, 0x38uLL), v435, 8uLL), v436);
  v438 = vsraq_n_u64(vshlq_n_s64(v436, 3uLL), v436, 0x3DuLL);
  v439 = vsraq_n_u64(vshlq_n_s64(v432, 3uLL), v432, 0x3DuLL);
  v440 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v437, v437), a46), v437), v402), v307);
  v441 = vaddq_s64(v434, v432);
  v442 = veorq_s8(v440, v438);
  v443 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v440, 0x38uLL), v440, 8uLL), v442);
  v444 = veorq_s8(v441, v392);
  v445 = v392;
  v446 = veorq_s8(vaddq_s64(vsubq_s64(v443, vandq_s8(vaddq_s64(v443, v443), v319)), v331), v406);
  v447 = veorq_s8(v446, vsraq_n_u64(vshlq_n_s64(v442, 3uLL), v442, 0x3DuLL));
  v448 = vsraq_n_u64(vshlq_n_s64(v446, 0x38uLL), v446, 8uLL);
  v446.i64[0] = v61 + v68 - 13;
  v446.i64[1] = v61 + v68 - 14;
  v449 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v444, 0x38uLL), v444, 8uLL), veorq_s8(v444, v439));
  v450 = veorq_s8(vaddq_s64(v448, v447), v411);
  v451 = veorq_s8(v450, vsraq_n_u64(vshlq_n_s64(v447, 3uLL), v447, 0x3DuLL));
  v452 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v450, 0x38uLL), v450, 8uLL), v451), v414);
  v453 = veorq_s8(v452, vsraq_n_u64(vshlq_n_s64(v451, 3uLL), v451, 0x3DuLL));
  v454 = vsraq_n_u64(vshlq_n_s64(v452, 0x38uLL), v452, 8uLL);
  v451.i64[0] = v61 + v68 - 15;
  v451.i64[1] = v61 + v68 - 16;
  v455 = vaddq_s64(*&STACK[0x2A0], v379);
  v456 = *&STACK[0x4C0];
  v458 = *&STACK[0x390];
  v457 = *&STACK[0x3A0];
  v459 = vshlq_u64(veorq_s8(v449, *&STACK[0x4C0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x310], 3uLL), *&STACK[0x390])));
  *&STACK[0x230] = v355;
  v460 = veorq_s8(vaddq_s64(v454, v453), v355);
  v461 = veorq_s8(v460, vsraq_n_u64(vshlq_n_s64(v453, 3uLL), v453, 0x3DuLL));
  v462 = vsraq_n_u64(vshlq_n_s64(v460, 0x38uLL), v460, 8uLL);
  v463 = vandq_s8(v451, v457);
  v464 = vaddq_s64(v462, v461);
  v465 = vandq_s8(v446, v457);
  v466 = v458;
  v467 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v464, v464), v419), v464), v421), v423), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x250], 3uLL), v458)));
  v468 = vandq_s8(v372, v457);
  v578.val[0] = *&STACK[0x4F0];
  v578.val[1] = *&STACK[0x500];
  v578.val[2] = *&STACK[0x510];
  v578.val[3] = veorq_s8(v467, v459);
  v469 = vandq_s8(*&STACK[0x460], v457);
  v470 = veorq_s8(v455, a48);
  v471 = vsraq_n_u64(vshlq_n_s64(v469, 0x38uLL), v469, 8uLL);
  v472 = vsraq_n_u64(vshlq_n_s64(v468, 0x38uLL), v468, 8uLL);
  v473 = vsraq_n_u64(vshlq_n_s64(v465, 0x38uLL), v465, 8uLL);
  v474 = veorq_s8(v470, *&STACK[0x270]);
  v475 = *&STACK[0x3E0];
  v476 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v463, 0x38uLL), v463, 8uLL), *&STACK[0x3F0]);
  v477 = vaddq_s64(v473, *&STACK[0x3F0]);
  v478 = vaddq_s64(v472, *&STACK[0x3F0]);
  v479 = vaddq_s64(v471, *&STACK[0x3F0]);
  *&STACK[0x310] = vsubq_s64(vorrq_s8(vaddq_s64(v479, v479), *&STACK[0x3E0]), v479);
  v480 = vsubq_s64(vorrq_s8(vaddq_s64(v478, v478), v475), v478);
  v481 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v476, v476), v475), v476), a47);
  v482 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v477, v477), v475), v477), a47);
  v483 = a2[25];
  *&STACK[0x4F0] = v483;
  v484 = *&STACK[0x2B0];
  v485 = vaddq_s64(*&STACK[0x2C0], v379);
  *&STACK[0x2C0] = vqtbl4q_s8(v578, v483);
  v578.val[0] = veorq_s8(v482, v384);
  v578.val[1] = veorq_s8(v481, v384);
  v578.val[2] = veorq_s8(v481, v283);
  v486 = veorq_s8(v485, a48);
  v578.val[3] = vsraq_n_u64(vshlq_n_s64(v578.val[1], 0x38uLL), v578.val[1], 8uLL);
  v578.val[1] = vsraq_n_u64(vshlq_n_s64(v578.val[0], 0x38uLL), v578.val[0], 8uLL);
  v578.val[0] = vaddq_s64(v578.val[3], v578.val[2]);
  v487 = veorq_s8(v486, v484);
  v488 = veorq_s8(v482, v283);
  v578.val[1] = vaddq_s64(v578.val[1], v488);
  v578.val[3] = vsraq_n_u64(vshlq_n_s64(v486, 0x38uLL), v486, 8uLL);
  v489 = vsraq_n_u64(vshlq_n_s64(v487, 3uLL), v487, 0x3DuLL);
  v578.val[3] = vaddq_s64(v578.val[3], v487);
  v490 = vsraq_n_u64(vshlq_n_s64(v578.val[2], 3uLL), v578.val[2], 0x3DuLL);
  v578.val[2] = vsraq_n_u64(vshlq_n_s64(v488, 3uLL), v488, 0x3DuLL);
  v491 = vsraq_n_u64(vshlq_n_s64(v474, 3uLL), v474, 0x3DuLL);
  v578.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v578.val[0], v578.val[0]), v388), v578.val[0]), *&STACK[0x530]), v397);
  v578.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v578.val[1], v578.val[1]), v388), v578.val[1]), *&STACK[0x530]), v397);
  v578.val[2] = veorq_s8(v578.val[1], v578.val[2]);
  v492 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v470, 0x38uLL), v470, 8uLL), v474);
  v493 = veorq_s8(v578.val[0], v490);
  v494 = vsraq_n_u64(vshlq_n_s64(v578.val[1], 0x38uLL), v578.val[1], 8uLL);
  v578.val[1] = vsraq_n_u64(vshlq_n_s64(v578.val[0], 0x38uLL), v578.val[0], 8uLL);
  v578.val[0] = veorq_s8(v492, v445);
  v578.val[1] = vaddq_s64(v578.val[1], v493);
  v495 = vaddq_s64(v494, v578.val[2]);
  v578.val[3] = veorq_s8(v578.val[3], v445);
  v496 = vsraq_n_u64(vshlq_n_s64(v578.val[2], 3uLL), v578.val[2], 0x3DuLL);
  v578.val[2] = veorq_s8(v578.val[3], v489);
  v497 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v495, v495), a46), v495), *&STACK[0x490]), *&STACK[0x480]);
  v578.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v578.val[1], v578.val[1]), a46), v578.val[1]), *&STACK[0x490]), *&STACK[0x480]);
  v498 = vsraq_n_u64(vshlq_n_s64(v578.val[3], 0x38uLL), v578.val[3], 8uLL);
  v578.val[3] = veorq_s8(v578.val[1], vsraq_n_u64(vshlq_n_s64(v493, 3uLL), v493, 0x3DuLL));
  v499 = veorq_s8(v497, v496);
  v500 = veorq_s8(v578.val[0], v491);
  v501 = vsraq_n_u64(vshlq_n_s64(v578.val[1], 0x38uLL), v578.val[1], 8uLL);
  v578.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v497, 0x38uLL), v497, 8uLL), v499);
  v502 = vsraq_n_u64(vshlq_n_s64(v578.val[0], 0x38uLL), v578.val[0], 8uLL);
  v578.val[0] = vaddq_s64(v501, v578.val[3]);
  v503 = vsraq_n_u64(vshlq_n_s64(v578.val[3], 3uLL), v578.val[3], 0x3DuLL);
  v578.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v578.val[0], vandq_s8(vaddq_s64(v578.val[0], v578.val[0]), *&STACK[0x380])), *&STACK[0x370]), *&STACK[0x470]);
  v578.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v578.val[1], vandq_s8(vaddq_s64(v578.val[1], v578.val[1]), *&STACK[0x380])), *&STACK[0x370]), *&STACK[0x470]);
  v578.val[3] = veorq_s8(v578.val[1], vsraq_n_u64(vshlq_n_s64(v499, 3uLL), v499, 0x3DuLL));
  v504 = veorq_s8(v578.val[0], v503);
  v505 = vaddq_s64(v502, v500);
  v506 = vsraq_n_u64(vshlq_n_s64(v578.val[1], 0x38uLL), v578.val[1], 8uLL);
  v578.val[1] = vaddq_s64(v498, v578.val[2]);
  v578.val[2] = veorq_s8(vaddq_s64(v506, v578.val[3]), *&STACK[0x450]);
  v507 = vsraq_n_u64(vshlq_n_s64(v578.val[3], 3uLL), v578.val[3], 0x3DuLL);
  v578.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v578.val[0], 0x38uLL), v578.val[0], 8uLL), v504), *&STACK[0x450]);
  v578.val[3] = veorq_s8(v578.val[0], vsraq_n_u64(vshlq_n_s64(v504, 3uLL), v504, 0x3DuLL));
  v508 = veorq_s8(v578.val[2], v507);
  v509 = vsraq_n_u64(vshlq_n_s64(v578.val[0], 0x38uLL), v578.val[0], 8uLL);
  v578.val[0] = vsraq_n_u64(vshlq_n_s64(v578.val[2], 0x38uLL), v578.val[2], 8uLL);
  v578.val[2] = veorq_s8(vaddq_s64(v509, v578.val[3]), *&STACK[0x440]);
  v510 = vsraq_n_u64(vshlq_n_s64(v578.val[3], 3uLL), v578.val[3], 0x3DuLL);
  v578.val[0] = veorq_s8(vaddq_s64(v578.val[0], v508), *&STACK[0x440]);
  v578.val[3] = veorq_s8(v578.val[0], vsraq_n_u64(vshlq_n_s64(v508, 3uLL), v508, 0x3DuLL));
  v511 = veorq_s8(v578.val[2], v510);
  v512 = vsraq_n_u64(vshlq_n_s64(v578.val[0], 0x38uLL), v578.val[0], 8uLL);
  v578.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v578.val[2], 0x38uLL), v578.val[2], 8uLL), v511);
  v578.val[2] = veorq_s8(vaddq_s64(v512, v578.val[3]), *&STACK[0x230]);
  v578.val[0] = veorq_s8(v578.val[0], *&STACK[0x230]);
  v513 = vsraq_n_u64(vshlq_n_s64(v578.val[3], 3uLL), v578.val[3], 0x3DuLL);
  v578.val[3] = veorq_s8(v578.val[0], vsraq_n_u64(vshlq_n_s64(v511, 3uLL), v511, 0x3DuLL));
  v514 = veorq_s8(v578.val[2], v513);
  v515 = vsraq_n_u64(vshlq_n_s64(v578.val[0], 0x38uLL), v578.val[0], 8uLL);
  v578.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v578.val[2], 0x38uLL), v578.val[2], 8uLL), v514);
  v578.val[2] = vaddq_s64(v515, v578.val[3]);
  v516 = veorq_s8(vaddq_s64(*&STACK[0x2E0], v379), a48);
  v517 = vaddq_s64(v480, a47);
  v578.val[3] = vshlq_n_s64(v446, 3uLL);
  v518 = vandq_s8(vshlq_n_s64(v451, 3uLL), v466);
  v519 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v578.val[0], v578.val[0]), *&STACK[0x420]), v578.val[0]), *&STACK[0x430]), *&STACK[0x240]), vnegq_s64(vandq_s8(v578.val[3], v466)));
  v578.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v578.val[2], v578.val[2]), *&STACK[0x420]), v578.val[2]), *&STACK[0x430]), *&STACK[0x240]), vnegq_s64(v518)), vshlq_u64(veorq_s8(v578.val[1], v456), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x330], 3uLL), v466))));
  v578.val[2] = veorq_s8(v519, vshlq_u64(veorq_s8(v505, v456), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x320], 3uLL), v466))));
  v520 = veorq_s8(v517, v384);
  v521 = veorq_s8(v516, *&STACK[0x2D0]);
  v522 = veorq_s8(v517, *&STACK[0x3C0]);
  v523 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v520, 0x38uLL), v520, 8uLL), v522);
  v524 = vsraq_n_u64(vshlq_n_s64(v516, 0x38uLL), v516, 8uLL);
  v525 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v523, v523), v388), v523), *&STACK[0x530]), *&STACK[0x4A0]);
  v526 = veorq_s8(v525, vsraq_n_u64(vshlq_n_s64(v522, 3uLL), v522, 0x3DuLL));
  v527 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v525, 0x38uLL), v525, 8uLL), v526);
  v528 = vsraq_n_u64(vshlq_n_s64(v521, 3uLL), v521, 0x3DuLL);
  v529 = vaddq_s64(v524, v521);
  v530 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v527, v527), a46), v527), *&STACK[0x490]), *&STACK[0x480]);
  v531 = veorq_s8(v530, vsraq_n_u64(vshlq_n_s64(v526, 3uLL), v526, 0x3DuLL));
  v532 = veorq_s8(v529, *&STACK[0x400]);
  v533 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v530, 0x38uLL), v530, 8uLL), v531);
  v534 = veorq_s8(v532, v528);
  v535 = vsraq_n_u64(vshlq_n_s64(v531, 3uLL), v531, 0x3DuLL);
  v536 = veorq_s8(vaddq_s64(vsubq_s64(v533, vandq_s8(vaddq_s64(v533, v533), *&STACK[0x380])), *&STACK[0x370]), *&STACK[0x470]);
  v537 = vsraq_n_u64(vshlq_n_s64(v532, 0x38uLL), v532, 8uLL);
  v538 = veorq_s8(v536, v535);
  v539 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v536, 0x38uLL), v536, 8uLL), v538), *&STACK[0x450]);
  v540 = vaddq_s64(v537, v534);
  v541 = veorq_s8(v539, vsraq_n_u64(vshlq_n_s64(v538, 3uLL), v538, 0x3DuLL));
  v542 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v539, 0x38uLL), v539, 8uLL), v541), *&STACK[0x440]);
  v543 = vshlq_u64(veorq_s8(v540, v456), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x340], 3uLL), v466)));
  v544 = veorq_s8(v542, vsraq_n_u64(vshlq_n_s64(v541, 3uLL), v541, 0x3DuLL));
  v545 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v542, 0x38uLL), v542, 8uLL), v544), *&STACK[0x230]);
  v546 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v545, 0x38uLL), v545, 8uLL), veorq_s8(v545, vsraq_n_u64(vshlq_n_s64(v544, 3uLL), v544, 0x3DuLL)));
  v547 = vaddq_s64(*&STACK[0x310], a47);
  v578.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v546, v546), *&STACK[0x420]), v546), *&STACK[0x430]), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x280], 3uLL), v466))), v543);
  v548 = veorq_s8(v547, v384);
  v549 = veorq_s8(v547, *&STACK[0x3C0]);
  v550 = vsraq_n_u64(vshlq_n_s64(v548, 0x38uLL), v548, 8uLL);
  v551 = veorq_s8(vaddq_s64(*&STACK[0x300], v379), a48);
  v552 = vaddq_s64(v550, v549);
  v553 = veorq_s8(v551, *&STACK[0x2F0]);
  v554 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v552, v552), v388), v552), *&STACK[0x530]), *&STACK[0x4A0]);
  v555 = veorq_s8(v554, vsraq_n_u64(vshlq_n_s64(v549, 3uLL), v549, 0x3DuLL));
  v556 = vsraq_n_u64(vshlq_n_s64(v551, 0x38uLL), v551, 8uLL);
  v557 = vsraq_n_u64(vshlq_n_s64(v554, 0x38uLL), v554, 8uLL);
  v558 = vsraq_n_u64(vshlq_n_s64(v553, 3uLL), v553, 0x3DuLL);
  v559 = vaddq_s64(v557, v555);
  v560 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v559, v559), a46), v559), *&STACK[0x490]), *&STACK[0x480]);
  v561 = veorq_s8(vaddq_s64(v556, v553), *&STACK[0x400]);
  v562 = veorq_s8(v560, vsraq_n_u64(vshlq_n_s64(v555, 3uLL), v555, 0x3DuLL));
  v563 = vsraq_n_u64(vshlq_n_s64(v560, 0x38uLL), v560, 8uLL);
  v564 = veorq_s8(v561, v558);
  v565 = vaddq_s64(v563, v562);
  v566 = vsraq_n_u64(vshlq_n_s64(v561, 0x38uLL), v561, 8uLL);
  v567 = veorq_s8(vaddq_s64(vsubq_s64(v565, vandq_s8(vaddq_s64(v565, v565), *&STACK[0x380])), *&STACK[0x370]), *&STACK[0x470]);
  v568 = veorq_s8(v567, vsraq_n_u64(vshlq_n_s64(v562, 3uLL), v562, 0x3DuLL));
  v569 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v567, 0x38uLL), v567, 8uLL), v568), *&STACK[0x450]);
  v570 = veorq_s8(v569, vsraq_n_u64(vshlq_n_s64(v568, 3uLL), v568, 0x3DuLL));
  v571 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v569, 0x38uLL), v569, 8uLL), v570), *&STACK[0x440]);
  v572 = veorq_s8(v571, vsraq_n_u64(vshlq_n_s64(v570, 3uLL), v570, 0x3DuLL));
  v573 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v571, 0x38uLL), v571, 8uLL), v572), *&STACK[0x230]);
  v574 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v573, 0x38uLL), v573, 8uLL), veorq_s8(v573, vsraq_n_u64(vshlq_n_s64(v572, 3uLL), v572, 0x3DuLL)));
  v578.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v574, v574), *&STACK[0x420]), v574), *&STACK[0x430]), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x460], 3uLL), v466))), vshlq_u64(veorq_s8(vaddq_s64(v566, v564), v456), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x350], 3uLL), v466))));
  v575 = *&STACK[0x2C0];
  v575.i64[1] = vqtbl4q_s8(v578, *&STACK[0x4F0]).u64[0];
  v576 = vrev64q_s8(v575);
  *(v61 + v68 - 16) = veorq_s8(vextq_s8(v576, v576, 8uLL), *&STACK[0x360]);
  return (*(STACK[0x540] + 8 * (((v60 == v68) * v67) ^ v69)))();
}

uint64_t sub_100A30438@<X0>(int a1@<W0>, uint64_t a2@<X2>, int a3@<W4>, uint64_t a4@<X7>, int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, int a55, int a56, int a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = (v68 ^ v66) - a5 - 1032655490;
  v73 = (((v71 ^ 0x459DBDD0) + 171303206) ^ ((v71 ^ 0xC53B7272) - 1970065784) ^ ((v71 ^ 0x1182C0A) + 1320186112)) - (((a57 ^ 0xA2A2A491) - 1158000213) ^ ((a57 ^ 0x6945A0A2) + 1897747866) ^ ((a57 ^ 0x46FD5BAE) + 1587916438));
  v103 = ((v72 ^ 0xE384AF) - 1752130437) ^ v72 ^ ((v72 ^ 0xABE14FB8) + 1016223598) ^ ((v72 ^ 0xBC63D7CA) + 722521888) ^ ((v72 ^ 0x7FEDFBF7) - 392240349);
  v74 = (((v65 ^ 0x681B8187) - 1224793791) ^ ((v65 ^ 0xAA9C44E3) + 1954079781) ^ ((v65 ^ 0x2D08D58A) - 202607282)) - (((v103 ^ 0x62C7DF16) - 1208769122) ^ ((v103 ^ 0xED59EEF2) + 946705530) ^ ((v103 ^ 0xE712D6CE) + 841395270));
  v75 = (((a55 ^ 0xDECC5E1F) + 557031905) ^ ((a55 ^ 0x49D43F65) - 1238646629) ^ ((a55 ^ 0xFDA53423) + 39504861)) - v74 + 413316574;
  v76 = ((v75 ^ 0x33A7C942) - 252619629) ^ v75 ^ ((v75 ^ 0x1DA88509) - 553772838) ^ ((v75 ^ 0xF559D19B) + 906972236) ^ ((v75 ^ 0xE7FFFFFF) + 615080496);
  v77 = v69 - 996993406 + v73 - ((2 * (v69 - 996993406 + v73)) & 0xD315222E) - 376794857;
  v78 = STACK[0x208];
  v79 = 893 * (((a1 ^ HIBYTE(v77)) & 0xF ^ 0x3B5) + (v70 & (2 * (a1 ^ HIBYTE(v77)))));
  v80 = 893 * (((v69 - 126 + v73 - ((2 * (v69 - 126 + v73)) & 0x2E) + 23) >> 4) ^ 1) + 847457;
  v81 = ((*(STACK[0x208] + (v79 - ((4405095 * v79) >> 32) * a3)) ^ 0x36) << 24) ^ ((*(STACK[0x208] + (893 * ((v77 >> 28) ^ 0xE) + 847457 - ((4405095 * (893 * ((v77 >> 28) ^ 0xE) + 847457)) >> 32) * a3)) ^ 6u) << 28);
  v82 = *(STACK[0x208] + (893 * (v77 & 0xF ^ 7) + 847457 - 975 * ((4405095 * (893 * (v77 & 0xF ^ 7) + 847457)) >> 32)));
  LOBYTE(v79) = v82 ^ 0x36;
  v83 = ((v81 ^ 0xE1) & (v82 ^ 0xC9) | (v82 ^ 0x36) & 0x1E) ^ (16 * (*(STACK[0x208] + (v80 - 975 * ((4405095 * v80) >> 32))) ^ 0x36));
  v84 = 893 * (HIWORD(v76) & 0xF ^ 9) + 847457;
  v85 = v84 - 975 * ((4405095 * v84) >> 32);
  v86 = (v76 ^ 0x3CA9622F) >> ((v85 & 8 ^ 8) + (v85 & 8));
  v87 = 893 * (HIBYTE(v76) & 0xF ^ 0xC) + 847457;
  v88 = (((((v76 >> 28) ^ 3) + 949) | (v67 - ((v76 >> 28) ^ 3))) & 0x37D) * (((v76 >> 28) ^ 3) + 949);
  v89 = 893 * ((v76 >> 20) & 0xF ^ v70) + 847457;
  v90 = (((((*(v78 + (v88 - 975 * ((4405095 * v88) >> 32))) ^ 0x36) << 12) ^ ((*(v78 + (v87 - 975 * ((4405095 * v87) >> 32))) ^ 0x36) << 8) | *(v78 + v85) ^ 0x36) << 8) ^ ((*(v78 + (v89 - 975 * ((4405095 * v89) >> 32))) ^ 0x36) << 12) | *(v78 + (893 * (v86 & 0xF) + 847457) % ((((893 * (v86 & 0xF) + 847457) & 0xA967) + ((536023454 - 893 * (v86 & 0xF)) & 0x1C80A967)) & 0x148193CF ^ 0x14808288)) ^ 0x36u) << 8;
  v91 = v90 ^ ((*(STACK[0x208] + (893 * (v86 >> 4) + 847457 - 975 * ((4405095 * (893 * (v86 >> 4) + 847457)) >> 32))) ^ 0x36) << 12);
  v92 = *(STACK[0x208] + (893 * (~v76 & 0xF) + 847457 - 975 * ((4405095 * (893 * (~v76 & 0xF) + 847457)) >> 32))) ^ 0x36;
  v93 = 893 * (v79 & 0xF | (16 * (v92 & 0xF)));
  v94 = *(STACK[0x208] + (893 * ((v76 >> 4) ^ 2) + 847457 - 975 * ((4405095 * (893 * ((v76 >> 4) ^ 2u) + 847457)) >> 32))) ^ ((v91 | v92) >> 4) ^ 0x36;
  v95 = 893 * (*(STACK[0x208] + (v93 + a4 - 975 * ((4405095 * (v93 + a4)) >> 32))) ^ (16 * (LOBYTE(STACK[0x2F6]) ^ 0x36)) ^ 0x36);
  v96 = (*(STACK[0x208] + (v95 + 382204 - 975 * ((4405095 * (v95 + 382204)) >> 32))) >> 4) ^ 3;
  v97 = a4 + 893 * ((v96 - ((2 * v96) & 0xC) + 54) ^ *(STACK[0x208] + (v93 + 382204) % (((771 - v93) | (v93 + 382204)) & 0x3CFu)));
  v98 = 893 * (((v83 >> 4) | (16 * (v94 & 0xF))) ^ 0xE);
  v99 = 893 * (*(v78 + (v98 + a4 - 975 * ((4405095 * (v98 + a4)) >> 32))) ^ (16 * (*(v78 + (v97 - 975 * ((4405095 * v97) >> 32))) ^ 0x36)) ^ 0x36);
  v100 = *(STACK[0x208] + (v99 + a4 - 975 * ((4405095 * (v99 + a4)) >> 32)));
  LOBYTE(v97) = ((v100 ^ 0x58) - 88) ^ ((v100 ^ 3) - 3) ^ ((v100 ^ 0x6D) - 109);
  v101 = v100 != (v97 + ((116 - 2 * v97) | 0x93) + 60);
  return (*(STACK[0x200] + 8 * ((8 * v101) | (32 * v101) | a65)))(v100, v74, a2, v90, v91, v81, STACK[0x208], a4, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46);
}

uint64_t sub_100A30B88@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  STACK[0x16D0] = *(v3 + 8 * a2);
  v4 = *(a1 + 3392);
  v5 = &STACK[0x2280] + v4;
  *(a1 + 3392) = v4 + 48;
  strcpy(&STACK[0x2280] + v4, "com_apple_driver_FairPlayIOKit");
  v5[31] = 0;
  v5[32] = 0;
  return (*(v3 + 8 * ((((v2 ^ 0xD9 ^ (**(&off_101353600 + v2 - 12539) == 0)) & 1) * ((v2 + 1643389433) & 0x9E0BAFBA ^ 0x449)) ^ v2)))();
}

uint64_t sub_100A30D1C@<X0>(int a1@<W8>)
{
  v5 = a1 - 1323;
  v6 = STACK[0x1184];
  v7 = *(v1 + 2832);
  v8 = 1089234077 * ((1525153655 - ((v4 - 240) ^ 0xC5105C19 | 0x5AE7FF77) + ((v4 - 240) ^ 0xC5105C19 | 0xA5180088)) ^ 0x805580E9);
  STACK[0x25D8] = &STACK[0xFA4];
  STACK[0x25E8] = &STACK[0x1300];
  STACK[0x2600] = v2;
  STACK[0x25F8] = v7;
  *(v4 - 240) = v8 + v5 - 445;
  *(v4 - 208) = (v5 ^ 0x819F81C1) - v8 + 1138202975 * v6 - 1898585585;
  LOBYTE(STACK[0x25E4]) = 9 - -99 * ((119 - ((v4 + 16) ^ 0x19 | 0x77) + ((v4 + 16) ^ 0x19 | 0x88)) ^ 0xE9);
  v9 = (*(v3 + 8 * (v5 ^ 0x3FFB)))(v4 - 240);
  return (*(v3 + 8 * v5))(v9);
}

uint64_t sub_100A30F98(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7, uint64_t a8)
{
  v12 = (v11 - v10) ^ v10 ^ ((v10 ^ a6) - 102) ^ (a5 + (v10 ^ v8) - 68) ^ ((v10 ^ 0xF8) - 119);
  *(a4 + v9) = *(a8 + v9) + (v12 ^ ((v12 ^ 0xF0) + 13) ^ ((v12 ^ 0xFC) + 1) ^ 3) * a7 + 21;
  return (*(STACK[0x57D8] + 8 * (((v9 == 63) * a2) ^ LODWORD(STACK[0x57C0]))))();
}

uint64_t sub_100A310A4@<X0>(int a1@<W8>)
{
  STACK[0x8738] = v2 + 2;
  v5 = *(v4 + (v1 & ((v3 & 0xC89F6938 | 0x376096C1) - 103647775 + (v3 & 0x376096C0 | 0xC89F693F) + 2 * (((a1 + 9216) | 0x1804) ^ 0x5E05) + 1808) & 0xFFFFFFF8));
  v6 = (v5 + __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xF41651499F5E3C67;
  v7 = v6 ^ __ROR8__(v5, 61);
  v8 = __ROR8__(v6, 8);
  v9 = __ROR8__((v8 + v7 - ((2 * (v8 + v7)) & 0x942C61FD311B0852) - 0x35E9CF0167727BD7) ^ 0xDF247210A47DEE60, 8);
  v10 = (v8 + v7 - ((2 * (v8 + v7)) & 0x942C61FD311B0852) - 0x35E9CF0167727BD7) ^ 0xDF247210A47DEE60 ^ __ROR8__(v7, 61);
  v11 = (v9 + v10) ^ 0x2275D4C73835399BLL;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0xE5AF1AB32EBD3CDDLL;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0xC7DDC9F6CC45B721;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (((2 * (v17 + v16)) | 0x4A2E280D8B8D550) - (v17 + v16) + 0x7DAE8EBF93A39558) ^ 0x2A7751E5358EB0D0;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (((2 * (v20 + v19)) | 0xC3619403862AA668) - (v20 + v19) - 0x61B0CA01C3155334) ^ 0x3E3D263F608D592FLL;
  v22 = (((__ROR8__(v21, 8) + (v21 ^ __ROR8__(v19, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * (v3 & 7u))) ^ *(v2 + 1);
  return (*(STACK[0x57D8] + 8 * ((19833 * ((((v22 ^ 0xFB) - 48) ^ ((v22 ^ 0x65) + 82) ^ ((v22 ^ 0x9E) - 85)) == 69)) ^ a1)))();
}

uint64_t sub_100A31338(double a1, double a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8)
{
  v9 = (v8 - 1517366686) & 0x5A715976;
  v10 = STACK[0x5490] == a8;
  LODWORD(STACK[0x56D0]) = v9;
  return (*(STACK[0x57D8] + 8 * (((v9 ^ 0x58AE) * v10) ^ v8)))(0x44268C0A999DF4D1, *&STACK[0x5650], *&STACK[0x56E0], a3, a4, a5, a6, *&STACK[0x5600]);
}

uint64_t sub_100A314D8()
{
  v0 = (STACK[0x51B8] - 22326) | 0x81;
  v1 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (((142 * (v0 ^ 0x181)) ^ 0x1A3) + v0)))();
}

uint64_t sub_100A31534()
{
  v1 = ((v0 + 23227) ^ 0x6D03) + STACK[0xFD38];
  v2 = STACK[0xFD38] + 1587622805 < STACK[0x10028];
  if ((LOBYTE(STACK[0x10033]) ^ (v1 > 0xFFFFFFFFA15ECC6BLL)))
  {
    v2 = STACK[0x10033];
  }

  v3 = *(STACK[0x57D8] + 8 * ((23 * (v2 & 1)) ^ v0));
  LODWORD(STACK[0xFD2C]) = v0;
  STACK[0xFD30] = v1;
  return v3();
}

uint64_t sub_100A315C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, char a6)
{
  LODWORD(STACK[0x3FC0]) = LODWORD(STACK[0x4E60]) | LODWORD(STACK[0x4ED0]);
  LODWORD(STACK[0x3318]) = LODWORD(STACK[0x4EF8]) | LODWORD(STACK[0x4E38]);
  LODWORD(STACK[0x3310]) = LODWORD(STACK[0x4E28]) | LODWORD(STACK[0x4E34]);
  v8 = *STACK[0x5100];
  v9 = *STACK[0x5670];
  v10 = v8 & 0xD2 ^ 0xBF;
  v11 = *STACK[0x5180];
  v12 = (v8 ^ (2 * ((v8 ^ a6) & (2 * ((v8 ^ a6) & (2 * ((v8 ^ a6) & (2 * ((v8 ^ a6) & (2 * ((v8 ^ a6) & (2 * ((v8 ^ a6) & 0x36 ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10)));
  v13 = v9 & 0xB0 ^ 0xEE;
  v14 = v11 & 0xC8 | 0x32;
  v15 = (((v9 ^ (2 * ((v9 ^ a6) & (2 * ((v9 ^ a6) & (2 * ((v9 ^ a6) & (2 * ((v9 ^ a6) & (2 * ((v9 ^ a6) & (2 * v13) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13))) ^ 0xB0) << 16) | (((v11 ^ (2 * ((v11 ^ a6) & (2 * ((v11 ^ a6) & (2 * ((v11 ^ a6) & (2 * ((v11 ^ a6) & (2 * ((v11 ^ a6) & (2 * v14) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14))) ^ 0xC8) << 8);
  v16 = ((v12 ^ 0x26CE89) & ~v15 | v15 & 0xD93100) << 8;
  LODWORD(STACK[0x4E24]) = v16 ^ 0x593180FF;
  LODWORD(STACK[0x4EF8]) = v16 & 0xA6883600;
  LOBYTE(v16) = *STACK[0x5320];
  v17 = v16 & 0xA8 ^ 0x62;
  v18 = *STACK[0x52A0];
  v19 = *STACK[0x5590];
  v20 = (v19 & 0xEE | v6) ^ v19 & 0x1C;
  v21 = (((v16 ^ (2 * ((v16 ^ a6) & (2 * ((v16 ^ a6) & (2 * ((v16 ^ a6) & (2 * ((v16 ^ a6) & (2 * ((v16 ^ 0x44) & (2 * v17) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17))) ^ 0xA8) << 8) | (((v19 ^ (2 * ((v19 ^ a6) & (2 * ((v19 ^ a6) & (2 * ((v19 ^ a6) & (2 * ((v19 ^ a6) & (2 * ((v19 ^ a6) & (2 * v20) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20))) ^ 0xF8) << 16);
  v22 = v18 & 0x32 ^ 0x2F;
  LODWORD(STACK[0x4E60]) = ((((v18 ^ (2 * ((v18 ^ a6) & (2 * ((v18 ^ a6) & (2 * ((v18 ^ a6) & (2 * ((v18 ^ a6) & (2 * ((v18 ^ a6) & (2 * (v22 ^ v18 & 0x16)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22))) ^ 0x3D6BDD) & ~v21 | v21 & 0xC29400) << 8) & 0xA4AD5B00;
  LOBYTE(v21) = *STACK[0x5080];
  v23 = *STACK[0x5138];
  v24 = v23 & 0xA0 ^ 0x66;
  v25 = *STACK[0x5300];
  v26 = v25 & 0x72 ^ 0x4F;
  v27 = (((v23 ^ (2 * ((v23 ^ a6) & (2 * ((v23 ^ a6) & (2 * ((v23 ^ a6) & (2 * ((v23 ^ a6) & (2 * ((v23 ^ 0x44) & (2 * v24) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24))) ^ 0xA0) << 16) | (((v25 ^ (2 * ((v25 ^ a6) & (2 * ((v25 ^ a6) & (2 * ((v25 ^ a6) & (2 * ((v25 ^ a6) & (2 * ((v25 ^ a6) & (2 * (v26 ^ v25 & 0x16)) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26))) ^ 0x72) << 8);
  LODWORD(STACK[0x4E34]) = ((((v21 ^ (2 * ((v21 ^ a6) & (2 * ((v21 ^ a6) & (2 * ((v21 ^ a6) & (2 * ((v21 ^ a6) & (2 * (((2 * (v21 & 0x24)) | 0x12) & (v21 ^ a6) ^ (v21 | 9))) ^ (v21 | 9))) ^ (v21 | 9))) ^ (v21 | 9))) ^ (v21 | 9)))) ^ 0xC9885A) & ~v27 | v27 & 0x367700) << 8) & 0xE2D54100;
  LOBYTE(v27) = *STACK[0x5470];
  LOBYTE(v21) = *STACK[0x52C0];
  v28 = v21 & 0x66 ^ 0x41;
  LOBYTE(v15) = (v21 ^ a6) & (2 * ((v21 ^ a6) & (2 * ((v21 ^ a6) & (2 * ((v21 ^ a6) & (2 * ((v21 ^ 0x44) & (2 * (v28 ^ v21 & 2)) ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28;
  v29 = *STACK[0x4F10];
  v30 = v29 & 0x78 ^ 0x4A;
  v31 = v29 ^ a6;
  v32 = (((v21 ^ (2 * v15)) ^ 0x66) << 16) | (((v29 ^ (2 * (v31 & (2 * (v31 & (2 * (v31 & (2 * (v31 & (2 * (v31 & (2 * v30) ^ v30)) ^ v30)) ^ v30)) ^ v30)) ^ v30))) ^ 0x78) << 8);
  LOBYTE(v15) = v27 & 0xBE ^ 0x6D;
  LODWORD(STACK[0x4E28]) = ((((v27 ^ (2 * ((v27 ^ a6) & (2 * ((v27 ^ a6) & (2 * ((v27 ^ a6) & (2 * ((v27 ^ a6) & (2 * ((v27 ^ a6) & (2 * (v15 ^ v27 & 0x1A)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15))) ^ 0xA1C8E6) & ~v32 | v32 & 0x5E3700) << 8) & 0x8E2E1E00;
  LOBYTE(v32) = *STACK[0x5098];
  v33 = *(v7 + 4000);
  v34 = (v33 + 37829);
  STACK[0x33B8] = v33 + 40487;
  LOBYTE(v33) = *(v33 + 40487);
  v35 = v33 & 0xF2 ^ 0x8F;
  STACK[0x4ED0] = v34;
  LOBYTE(v15) = *v34;
  v36 = (((v32 ^ (2 * ((v32 ^ a6) & (2 * ((v32 ^ a6) & (2 * ((v32 ^ a6) & (2 * ((v32 ^ a6) & (2 * (v32 & a6)) ^ v32 & a6)) ^ v32 & a6)) ^ v32 & a6)) ^ v32 & a6))) ^ 0xE4) << 8) | (((v33 ^ (2 * ((v33 ^ a6) & (2 * ((v33 ^ a6) & (2 * ((v33 ^ a6) & (2 * ((v33 ^ a6) & (2 * ((v33 ^ a6) & (2 * (v35 ^ v33 & 0x16)) ^ v35)) ^ v35)) ^ v35)) ^ v35)) ^ v35))) ^ 0xF2) << 16);
  v37 = *v34 & 0xA8 ^ 0x62;
  LODWORD(STACK[0x4E38]) = ((((v15 ^ (2 * ((v15 ^ a6) & (2 * ((v15 ^ a6) & (2 * ((v15 ^ a6) & (2 * ((v15 ^ a6) & (2 * ((v15 ^ 0x44) & (2 * v37) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37))) ^ 0x364EF2) & ~v36 | v36 & 0xC9B100) << 8) & 0xA4A3D600;
  return (*(STACK[0x57D8] + 8 * a3))(6270836, &STACK[0xEED0]);
}

uint64_t sub_100A321EC@<X0>(int a1@<W8>)
{
  v6 = (v1[9] << 16) | (v1[8] << 24) | (v1[10] << 8);
  v7 = v6 & (a1 ^ 0x3B4C2A6A) ^ 0x16AF4454 ^ ((v1[11] + 1303687285 + (~(2 * v1[11]) | 0xFFFFFF17)) ^ 0x890774B4) & (v6 ^ 0xD5F3FFFF);
  *v3 = v5 + 1;
  *v2 = v7;
  return (*(v4 + 8 * a1))();
}

uint64_t sub_100A32490@<X0>(int a1@<W8>)
{
  v4 = (((a1 + v1 - 780991122) ^ 0xF44F155B) + 526908592) ^ (a1 + v1 - 780991122) ^ (((a1 + v1 - 780991122) ^ 0x2472EB69) - 816184674) ^ (((a1 + v1 - 780991122) ^ 0x7B153784) - 1874993551) ^ (((a1 + v1 - 780991122) ^ 0xBFFFDFBD) + 1423390282);
  v6 = v4 != 349640203 && (((40 * (((v2 - 20747) | 0x3082) ^ 0x31DB)) ^ 0x35E7) & v4) == 11;
  return (*(v3 + 8 * ((16 * v6) | (32 * v6) | v2)))();
}

uint64_t sub_100A325E0@<X0>(unint64_t a1@<X1>, unint64_t a2@<X8>)
{
  STACK[0x490] = *(STACK[0x540] + 8 * ((1289 * (v2 > 0x9643A3FA)) ^ (v2 + 111293153)));
  *&STACK[0x530] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  STACK[0x4A0] = a1;
  STACK[0x4C0] = a2;
  return (STACK[0x490])();
}

uint64_t sub_100A327C0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v11 = STACK[0x3DC8];
  v12 = STACK[0x3C48];
  *(v12 + 3) = BYTE5(a6);
  *(v12 + 17) = BYTE6(a6);
  v13 = STACK[0x3C38];
  v13[14] = a6;
  STACK[0x3D98] = (v11 - 11609) | 0x2201u;
  v14 = STACK[0x3C40];
  v14[64] = a6 >> (((v11 - 89) | 1) ^ 0xF9);
  v13[2] = BYTE3(v9);
  *v13 = BYTE1(a6);
  *(v12 + 15) = BYTE4(a6);
  *(v12 + 78) = BYTE2(a6);
  v13[3] = BYTE2(v9);
  v14[5] = v9 >> (v11 ^ 0x19u);
  v13[21] = HIBYTE(a6);
  v15 = HIBYTE(v9);
  v13[36] = BYTE1(v9);
  v14[6] = BYTE5(v9);
  v14[106] = v9;
  v16 = STACK[0x3D70];
  v17 = ((((((111 * BYTE6(v9) - ((111 * BYTE6(v9)) ^ 0x1B)) ^ 0xFE) + 111 * BYTE6(v9)) ^ 0x92) + ((111 * BYTE6(v9) - ((111 * BYTE6(v9)) ^ 0x1B)) ^ 0xFE) + 111 * BYTE6(v9)) ^ *(STACK[0x3D70] + (((((111 * BYTE6(v9)) - ((111 * BYTE6(v9)) ^ 0x1B)) ^ 0xFFFFFFFE) + (111 * BYTE6(v9))) ^ 0x79)) ^ 0x9F) + 53;
  v13[33] = v15;
  v13[42] = v17;
  LODWORD(v11) = *(STACK[0x3E10] + ((a5 + 101) ^ 0xAFLL));
  v14[54] = BYTE1(a5);
  v14[68] = BYTE3(a5);
  *(v12 + 26) = BYTE2(a5);
  v14[67] = ((v11 >> 1) | (v11 << 7)) ^ 0x28;
  v18 = *(v16 + ((111 * BYTE4(a5)) ^ 0x62));
  v14[43] = BYTE6(a5);
  v19 = 2 * (((111 * BYTE4(a5)) ^ 9) & ((111 * BYTE4(a5)) ^ 0x1B)) - 110;
  v20 = (-107 * BYTE1(a2));
  v13[57] = BYTE5(a5);
  *(v12 + 55) = a2;
  *(v12 + 47) = HIBYTE(a5);
  v13[30] = (((v18 ^ -v18 ^ (v19 - (v18 ^ v19))) + v19) ^ 0x9F) + 53;
  v21 = STACK[0x3D68];
  v13[73] = (v20 ^ 0xD2 ^ ((v20 ^ 0xD2) + 116) ^ 0x36 ^ *(STACK[0x3D68] + (v20 ^ 0xD2 ^ -(v20 ^ 0xD2) ^ (194 - (v20 ^ 0x10u))) + 194)) - 49;
  v22 = *(v8 + ((-113 * BYTE2(a2)) ^ 0x73));
  v14[15] = BYTE3(a4);
  v14[4] = BYTE6(a2);
  *(v12 + 65) = BYTE3(a2);
  *(v12 + 50) = BYTE1(a4);
  v14[121] = a4;
  v13[27] = BYTE4(a4);
  v14[59] = (-113 * BYTE2(a2)) ^ 0x41 ^ v22;
  v13[26] = BYTE4(a2);
  v14[69] = HIBYTE(a2);
  v14[80] = a2 >> (v7 & 0x28) >> (v7 & 0x28 ^ 0x28u);
  v14[119] = BYTE2(a4);
  LOBYTE(v11) = ((((2 * ((-107 * BYTE5(a4)) ^ 0xD2)) & 0xE8) + ((-107 * BYTE5(a4)) ^ 0xA6)) ^ (-107 * BYTE5(a4)) ^ 0xD2 ^ 0x36 ^ *(v21 + ((-107 * BYTE5(a4)) ^ 0x10))) - 49;
  v14[25] = HIBYTE(v6);
  v14[99] = BYTE6(a4);
  *(v12 + 54) = v11;
  *(STACK[0x39B8] + 4) = LODWORD(STACK[0x3EAC]) + 1;
  LODWORD(STACK[0x3EC4]) = *(v12 + 84);
  return (*(v10 + 8 * (STACK[0x3DC8] ^ (103 * LODWORD(STACK[0x3D78])))))();
}

uint64_t sub_100A32BF0(uint64_t a1, unsigned int a2, int a3, int a4)
{
  v10 = *(v9 + 1368);
  v11 = *(v10 + v6);
  v12 = *(v10 + a3 + 8647 * (v4 ^ 0x49A8) - 6152 * ((((a3 + 8647 * (v4 ^ 0x49A8u)) * v5) >> 32) >> 12));
  if (((a2 >> a4) & 1) == 0)
  {
    v12 = v8;
  }

  v13 = (v11 & 0xB4 | 0x42) ^ v11 & 0x8C;
  v14 = v12 & 0x2A ^ 0x5B;
  v15 = v12 ^ v11 ^ (2 * (v14 ^ v13 ^ (v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * v13) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ (v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & 0x1E ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14))));
  *(v7 + v6) = ((v15 ^ 0xA0) - 6) ^ ((v15 ^ 0x6A) - 76) ^ ((v15 ^ 0xD8) + 2);
  return (*(STACK[0x57D8] + 8 * ((12105 * (a4 == 7)) ^ v4)))();
}

uint64_t sub_100A32DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, int8x16_t a3@<Q7>)
{
  v6 = (a1 + v3);
  v7 = veorq_s8(*(a2 + v3 + 16), a3);
  *v6 = veorq_s8(*(a2 + v3), a3);
  v6[1] = v7;
  return (*(v5 + 8 * (((v3 == 64) * (((v4 - 2018987047) & 0x78575FC7) - 18658)) ^ v4)))();
}

uint64_t sub_100A32EE4()
{
  v0[20] = v1[16];
  v0[21] = v1[17];
  v0[22] = v1[18];
  v0[23] = v1[19];
  v0[24] = v1[20];
  v0[25] = v1[21];
  v0[26] = v1[22];
  v0[27] = v1[23];
  v0[28] = v1[24];
  v0[29] = v1[25];
  v0[30] = v1[26];
  return (*(v3 + 8 * v2))();
}

uint64_t sub_100A32F58()
{
  LODWORD(STACK[0x1584]) = v1;
  STACK[0x1AF8] = *(v2 + 8 * v0);
  return (*(v2 + 8 * (v0 + ((v0 - 724) | 0x1401) + 2612)))();
}

uint64_t sub_100A32FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24, int a25, int a26, int a27, int a28, int a29, int a30, int a31, int a32, int a33, int a34, int a35, int a36, int a37, int a38, int a39, int a40, int a41, int a42, int a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, uint64_t a62, uint64_t a63)
{
  v76 = (v73 - 2057) | 0x804;
  LODWORD(STACK[0x360]) = LODWORD(STACK[0x358]) ^ a38;
  LODWORD(STACK[0x354]) = a43 + a23;
  LODWORD(STACK[0x2F8]) = a61 ^ a35 ^ a36 ^ (a26 + a37);
  LODWORD(STACK[0x2FC]) = *(v75 - 132) + a34 + a41;
  LODWORD(STACK[0x358]) = 2066868011 * LODWORD(STACK[0x364]);
  LODWORD(STACK[0x35C]) = LODWORD(STACK[0x368]) ^ LODWORD(STACK[0x330]) ^ a33 ^ a73 ^ a31 ^ a32 ^ a29;
  LODWORD(STACK[0x368]) = a40 + a28 - 926100514;
  v77 = *(v74 + 8 * v73);
  LODWORD(STACK[0x364]) = v76 - 7717;
  return v77((v76 - 7717) ^ 0x2DF1u);
}

uint64_t sub_100A33274@<X0>(int a1@<W8>)
{
  v11 = *(v7 + 1368);
  v12 = *(v11 + v4 - 6152 * (((v4 * v8) >> 64) >> 12));
  v13 = *(v7 + 1360);
  v14 = *(v13 + 4 * ((((v1 + 1224695278) & 0xB700799E ^ (v6 + 3942)) + 6419 * (v12 | ((v12 < 0x4C) << 8)) - 1420997752) % 0x2240));
  v15 = HIBYTE(v14);
  LOBYTE(v14) = *(v11 + (5621 * (((v14 ^ 0x5760BDFB) + 1355651748) ^ ((v14 ^ 0xEB2C881) + 153087962) ^ ((v14 ^ 0x59D2759Cu) + 1585402565)) + 1961820767) % 0x1808);
  v16 = *(v11 + v2 + 5621 * (BYTE2(v14) ^ 0x38) - 6152 * (((89362129 * (v2 + 5621 * (BYTE2(v14) ^ 0x38u))) >> 32) >> 7));
  LOBYTE(v12) = *(v11 + (5621 * (((v15 ^ 0x4EC3AE1C) + 599742522) ^ ((v15 ^ 0xC04B11D4) - 1388845070) ^ ((v15 ^ 0x8E88BF8A) - 470529616)) - 115712606) % 0x1808);
  LOBYTE(v11) = *(v11 + v2 + 5621 * (BYTE1(v14) ^ 0x8F) - 6152 * (((89362129 * (v2 + 5621 * (BYTE1(v14) ^ 0x8Fu))) >> 32) >> 7));
  v17 = v12 & 4 | 0xE8;
  v18 = v11 & 0xB4 | 3;
  v19 = v18 ^ v11 & 0xE;
  LOBYTE(v15) = (v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * (v11 & (2 * v18) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19;
  v20 = v16 & 0x14 ^ 0x70;
  v21 = (((v16 ^ (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * v20) ^ v20)) ^ v20)) ^ v20)) ^ v20))) ^ 0x14) << 8) | (((v12 ^ (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * v17) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17))) ^ 4) << 16);
  LODWORD(v11) = (v11 ^ (2 * v15)) ^ v3;
  LOBYTE(v15) = v14 & 0xC8 ^ 0x8A;
  LOBYTE(v14) = v14 ^ (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * v15) | v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15));
  *(v13 + 4 * (v5 % 0x2240)) = (((((v11 & (v21 ^ (v9 + 3522))) + (v21 & (v10 + 2552))) << 8) ^ 0x1C1401C1) & (v14 ^ 0xFFFFFF29) | v14 & 0x3E) ^ 0x7109F42F;
  return (*(STACK[0x57D8] + 8 * ((4568 * (a1 == 0)) ^ v1)))();
}

uint64_t sub_100A335D0()
{
  v4 = (*(v3 - 140) & 2) == 0;
  v5 = *(v3 - 168);
  if ((*(v3 - 140) & 2) != 0)
  {
    v5 = *(v3 - 172);
  }

  LODWORD(STACK[0x3F8]) = v5;
  v6 = *(v3 - 188);
  if (!v4)
  {
    v6 = *(v3 - 208);
  }

  LODWORD(STACK[0x444]) = v6;
  v7 = STACK[0x43C];
  if (v4)
  {
    v7 = STACK[0x438];
  }

  LODWORD(STACK[0x434]) = v7;
  v8 = (*(v3 - 144) & 2) == 0;
  v9 = STACK[0x408];
  if ((*(v3 - 144) & 2) != 0)
  {
    v9 = STACK[0x404];
  }

  LODWORD(STACK[0x284]) = v9;
  v10 = STACK[0x360];
  if (v8)
  {
    v10 = STACK[0x354];
  }

  LODWORD(STACK[0x29C]) = v10;
  return (*(*(v3 - 120) + 8 * v1))((v0 - 1562674634), 0, (78 * (v1 ^ 0x40B9)) ^ 0x3DD2u, v2, -1471956011, 1351055274, v0);
}

uint64_t sub_100A336B8@<X0>(unsigned __int8 a1@<W2>, int a2@<W5>, unsigned int a3@<W6>, int a4@<W7>, int a5@<W8>)
{
  LODWORD(STACK[0x3818]) = v9;
  LODWORD(STACK[0x39D8]) = v9 ^ 0x32B;
  v18 = (a2 ^ 0xCB) * ((v9 ^ 0x32B) - 15474) + 27589239;
  LODWORD(STACK[0x3A78]) = v10;
  v19 = v18 - (((v18 >> 7) * v15) >> 32) * a4;
  v20 = *(v17 + v16 + (v5 ^ 0xC) * v13 - ((((v16 + (v5 ^ 0xCu) * v13) * a3) >> 32) >> 1) * a4) - 71;
  v21 = (v20 ^ (v20 << 6) ^ (4 * v20) ^ 0xFE) + 26;
  v22 = v14 + (*(v17 + (v21 ^ 0xF) * v13 + 27589239 - (((((v21 ^ 0xFu) * v13 + 27589239) * a3) >> 32) >> 1) * a4) ^ v21 ^ 0xCD) * v13;
  v23 = (a1 ^ 0xDB) * v13 + 10734570 - (((((a1 ^ 0xDBu) * v13 + 10734570) * a3) >> 32) >> 1) * a4;
  v24 = STACK[0x3AD8];
  v25 = (v24 ^ 0x56) * v13 + 27589239 - (((((v24 ^ 0x56u) * v13 + 27589239) * a3) >> 32) >> 1) * a4;
  v26 = *(v17 + v22 - (((v22 * a3) >> 32) >> 1) * a4) + 117;
  v27 = v8;
  v28 = (v8 ^ 0x96) * v13 + 27589239 - (((((v8 ^ 0x96u) * v13 + 27589239) * a3) >> 32) >> 1) * a4;
  v29 = 4647 * (v6 ^ 0x67 ^ *(v17 + 4647 * (v6 ^ 0xB3) + 27589239 - ((((4647 * (v6 ^ 0xB3u) + 27589239) * a3) >> 32) >> 1) * a4)) + 25186740;
  v30 = v29 - 6784 * (((v29 * a3) >> 32) >> 1);
  v31 = *(v17 + v14 + 4647 * (v7 ^ 0x92) - 6784 * (((1266205 * (v14 + 4647 * (v7 ^ 0x92u))) >> 32) >> 1)) + 117;
  v32 = (v31 ^ 0x12 ^ (v31 >> 2) & 0x12) + 26;
  v33 = 4647 * (((v31 ^ 0x12 ^ (v31 >> 2) & 0x12) + 26) ^ 0xF) + 27589239;
  v34 = STACK[0x3AE8];
  LODWORD(STACK[0x37C8]) = 4647 * (LODWORD(STACK[0x3AE8]) ^ 0x91) + 27589239 - 6784 * (((1266205 * (4647 * (LODWORD(STACK[0x3AE8]) ^ 0x91u) + 27589239)) >> 32) >> 1);
  LODWORD(STACK[0x37D0]) = 4647 * (LODWORD(STACK[0x3AA8]) ^ 0x18) + 10734570 - 6784 * (((1266205 * (4647 * (LODWORD(STACK[0x3AA8]) ^ 0x18u) + 10734570)) >> 32) >> 1);
  LODWORD(STACK[0x37D8]) = 4647 * (a5 ^ 0xB2) + 27589239 - 6784 * (((1266205 * (4647 * (a5 ^ 0xB2u) + 27589239)) >> 32) >> 1);
  v36 = ((v26 ^ v11 ^ v11 & (v26 >> 2)) + 26) ^ LODWORD(STACK[0x37E0]);
  LODWORD(STACK[0x37E0]) = 4647 * (LODWORD(STACK[0x3AC8]) ^ 0x5B) + 10734570 - 6784 * (((1266205 * (4647 * (LODWORD(STACK[0x3AC8]) ^ 0x5Bu) + 10734570)) >> 32) >> 1);
  v37 = (LODWORD(STACK[0x37E8]) + 111) ^ 0x1C;
  v38 = *(STACK[0x3AE0] + 4647 * v37 + 4767822 - 6784 * (((1266205 * (4647 * v37 + 4767822)) >> 32) >> 1));
  LODWORD(STACK[0x37E8]) = 4647 * (v10 ^ 0x1C) + 27589239 - 6784 * (((1266205 * (4647 * (v10 ^ 0x1Cu) + 27589239)) >> 32) >> 1);
  v39 = *(STACK[0x3AE0] + v19) ^ a2 ^ (((v38 ^ 0xE3) >> 3) | (32 * (v38 ^ 0xFFFFFFE3)));
  LODWORD(STACK[0x3AD0]) = v39;
  LODWORD(STACK[0x3AA8]) = v36;
  LODWORD(STACK[0x3AC8]) = 4647 * (v39 ^ 0x85) + 21552786 - 6784 * (((1266205 * (4647 * (v39 ^ 0x85u) + 21552786)) >> 32) >> 1);
  v40 = 4647 * (*(STACK[0x3AE0] + v23) ^ ((*(STACK[0x3AE0] + 4647 * (LODWORD(STACK[0x3800]) ^ 0x9A) + 25186740 - 6784 * (((1266205 * (4647 * (LODWORD(STACK[0x3800]) ^ 0x9Au) + 25186740)) >> 32) >> 1)) ^ 0xC3) + 85) ^ 0x1F) + 14331348;
  v41 = *(STACK[0x3AE0] + v40 - 6784 * (((1266205 * v40) >> 32) >> 1)) + 117;
  v42 = 4647 * (((v41 ^ 0x12 ^ (v41 >> 2) & 0x12) + 26) ^ 0x5D) + 28816047;
  LODWORD(STACK[0x3800]) = v42 - 6784 * (((1266205 * v42) >> 32) >> 1);
  v43 = (LODWORD(STACK[0x37F8]) ^ v24 ^ *(STACK[0x3AE0] + v25)) ^ 0xF;
  v44 = 4647 * v43 + 28816047 - 6784 * (((1266205 * (4647 * v43 + 28816047)) >> 32) >> 1);
  LOBYTE(v43) = LODWORD(STACK[0x3808]) ^ v27 ^ *(STACK[0x3AE0] + v28);
  v45 = ((*(STACK[0x3AE0] + v30) ^ 0xFFFFFFC3) + 85) ^ LODWORD(STACK[0x3810]);
  LOBYTE(v32) = *(STACK[0x3AE0] + v33 - 6784 * (((1266205 * v33) >> 32) >> 1)) ^ v32 ^ LODWORD(STACK[0x39E0]);
  LOBYTE(v32) = v32 ^ 0x6A ^ *(STACK[0x3AE0] + 4647 * (v32 ^ 0xEE) + 21552786 - 6784 * (((1266205 * (4647 * (v32 ^ 0xEEu) + 21552786)) >> 32) >> 1));
  v46 = v34 ^ *(STACK[0x3AE0] + LODWORD(STACK[0x37C8])) ^ LODWORD(STACK[0x3A80]);
  v47 = (LODWORD(STACK[0x3A70]) + 111) ^ 0x36;
  LOBYTE(v47) = *(STACK[0x3AE0] + 4647 * v47 + 17937420 - 6784 * (((1266205 * (4647 * v47 + 17937420)) >> 32) >> 1)) ^ 0xE;
  v48 = ((v47 >> 3) | (32 * v47)) ^ *(STACK[0x3AE0] + 4647 * (v12 ^ 0x85) + 10734570 - 6784 * (((1266205 * (4647 * (v12 ^ 0x85u) + 10734570)) >> 32) >> 1));
  v49 = *(STACK[0x3AE0] + 4647 * (v48 ^ 0xF4) + 21552786 - 6784 * (((1266205 * (4647 * (v48 ^ 0xF4u) + 21552786)) >> 32) >> 1)) ^ v48 ^ 0x8B;
  v50 = 4647 * (((v45 >> 1) | (v45 << 7)) ^ 0xD9) + 19140993;
  v51 = a5 ^ LODWORD(STACK[0x3A90]) ^ *(STACK[0x3AE0] + LODWORD(STACK[0x37D8]));
  v52 = *(STACK[0x3AE0] + 4647 * v49 + 14331348 - 6784 * (((1266205 * (4647 * v49 + 14331348)) >> 32) >> 1)) + 117;
  v53 = *(STACK[0x3AE0] + LODWORD(STACK[0x37E0])) ^ LODWORD(STACK[0x3A98]);
  v54 = 4647 * ((*(STACK[0x3AE0] + v44) - 61) ^ 0x75) + 9544938;
  v55 = *(STACK[0x3AE0] + 4647 * (v53 ^ 0x84) + 21552786 - 6784 * (((1266205 * (4647 * (v53 ^ 0x84u) + 21552786)) >> 32) >> 1)) ^ v53;
  v56 = 4647 * ((97 * (*(STACK[0x3AE0] + v50 - 6784 * (((1266205 * v50) >> 32) >> 1)) ^ 0x27)) ^ 0x88) + 28816047;
  v57 = *(STACK[0x3AE0] + 4647 * (v43 ^ 0x18) + 28816047 - 6784 * (((1266205 * (4647 * (v43 ^ 0x18u) + 28816047)) >> 32) >> 1)) - 61;
  v58 = ((*(STACK[0x3AE0] + v54 - 6784 * (((1266205 * v54) >> 32) >> 1)) - 87) ^ 0xFFFFFFFB) + 85;
  v59 = *(STACK[0x3AE0] + v56 - 6784 * (((1266205 * v56) >> 32) >> 1)) - 61;
  v60 = (*(STACK[0x3AE0] + 4647 * v32 + 25186740 - 6784 * (((1266205 * (4647 * v32 + 25186740)) >> 32) >> 1)) ^ 0xFFFFFFC3) + 85;
  v61 = *(STACK[0x3AE0] + 4647 * (v46 ^ 0x2C) + 21552786 - 6784 * (((1266205 * (4647 * (v46 ^ 0x2Cu) + 21552786)) >> 32) >> 1));
  v62 = v51 ^ 0x57 ^ *(STACK[0x3AE0] + 4647 * (v51 ^ 0x61) + 21552786 - 6784 * (((1266205 * (4647 * (v51 ^ 0x61u) + 21552786)) >> 32) >> 1));
  LODWORD(STACK[0x3808]) = v60;
  LODWORD(STACK[0x3810]) = v55;
  v63 = *(STACK[0x3AC0] + 8 * (LODWORD(STACK[0x3818]) ^ (71 * ((STACK[0x3A58] & 1) == 0))));
  STACK[0x3AC8] = v55 ^ 0xFFFFFF90;
  STACK[0x3AA0] = v59 ^ 0xFFFFFFF5;
  STACK[0x3A98] = v58;
  LODWORD(STACK[0x3A68]) = v46 ^ 0xFFFFFFE5 ^ v61;
  LODWORD(STACK[0x3A90]) = (v52 ^ 0x12 ^ (v52 >> 2) & 0x12) + 26;
  STACK[0x3AA8] = v62;
  STACK[0x3A50] = v60 ^ 0xFFFFFFEC;
  STACK[0x3A88] = v57 ^ 0xFFFFFFF8;
  return v63();
}

uint64_t sub_100A34190@<X0>(_BYTE *a1@<X8>)
{
  a1[15] = 107 * (((v2[15] ^ 0x8D) + 45) ^ ((v2[15] ^ 0xE9) + 73) ^ (((v1 + 16) & 0xFE ^ 0x4D) + (v2[15] ^ 0x51))) + 24;
  a1[14] = 107 * (((v2[14] ^ 0x41) + 73) ^ ((v2[14] ^ 0xF9) - 15) ^ ((v2[14] ^ 0x25) + 45)) + 24;
  a1[13] = 107 * (((v2[13] ^ 0x8A) + 73) ^ ((v2[13] ^ 0x32) - 15) ^ ((v2[13] ^ 0xEE) + 45)) + 24;
  a1[12] = 107 * (((v2[12] ^ 0xA7) + 73) ^ ((v2[12] ^ 0x1F) - 15) ^ ((v2[12] ^ 0xC3) + 45)) + 24;
  a1[11] = 107 * (((v2[11] ^ 0xB6) + 73) ^ ((v2[11] ^ 0xE) - 15) ^ ((v2[11] ^ 0xD2) + 45)) + 24;
  a1[10] = 107 * (((v2[10] ^ 0x23) + 73) ^ ((v2[10] ^ 0x9B) - 15) ^ ((v2[10] ^ 0x47) + 45)) + 24;
  a1[9] = 107 * (((v2[9] ^ 0xF6) + 73) ^ ((v2[9] ^ 0x4E) - 15) ^ ((v2[9] ^ 0x92) + 45)) + 24;
  return (*(v3 + 8 * v1))();
}

uint64_t sub_100A34430@<X0>(uint64_t a1@<X3>, int a2@<W6>, int a3@<W8>)
{
  v8 = a2 + a3;
  v9 = v6 + a2 + ((a2 + v5 + HIWORD(v8) - ((a2 + v5 + HIWORD(v8) - ((v8 + HIWORD(v8)) >> 8)) >> 13) - ((v8 + HIWORD(v8)) >> 8)) >> 7) + HIWORD(v8) - ((a2 + v5 + HIWORD(v8) - ((v8 + HIWORD(v8)) >> 8)) >> 13) - ((v8 + HIWORD(v8)) >> 8) - a1;
  v10 = (v9 ^ 0xBFD074C1) + ((v9 ^ 0xBFD074C1) >> 15) + (((v9 ^ 0xBFD074C1) + ((v9 ^ 0xBFD074C1) >> 15)) >> 7);
  v11 = v10 + 1455601742 + ((v10 + 1455601742) >> 12) + ((v10 + 1455601742 + ((v10 + 1455601742) >> 12)) >> 5);
  v12 = ((v11 + 402092259) >> 13) + v11 + 402092259 - 2 * ((v11 + 402092259) >> 13);
  v13 = v12 - (v12 >> 4);
  v14 = v13 + 1767124869 + ((v13 + 1767124869) >> 15) + ((v13 + 1767124869 + ((v13 + 1767124869) >> 15)) >> 2);
  v15 = v14 + 345775710 - ((v14 + 345775710) >> 15) + ((v14 + 345775710 - ((v14 + 345775710) >> 15)) >> 1);
  v16 = (v3 & (4 * v15) ^ v15) + (v11 ^ v4 ^ v3 & (4 * v11)) - 2 * ((v3 & (4 * v15) ^ v15) & (v11 ^ v4 ^ v3 & (4 * v11)));
  v17 = ((v15 + 1034374308 + ((v15 + 1034374308) >> 15)) >> 5) + v15 + 1034374308 + ((v15 + 1034374308) >> 15) - 2 * ((v15 + 1034374308 + ((v15 + 1034374308) >> 15)) >> 5);
  v18 = v17 - 1382951538 + ((v17 - 1382951538) >> 12) - ((v17 - 1382951538 + ((v17 - 1382951538) >> 12)) >> 4);
  v19 = v18 - 579865062 - ((v18 - 579865062) >> 9) + ((v18 - 579865062 - ((v18 - 579865062) >> 9)) >> 5);
  v20 = *(v7 - 204);
  LODWORD(STACK[0x218]) = v3 & (4 * (*(v7 - 156) ^ v20 ^ *(v7 - 128)));
  LODWORD(STACK[0x214]) = v3 & (4 * v20) ^ LODWORD(STACK[0x3F4]);
  LODWORD(STACK[0x3AC]) = LODWORD(STACK[0x3A4]) ^ 0xC5C5C5C5;
  *(v7 - 200) = v9;
  LODWORD(STACK[0x234]) = v13;
  LODWORD(STACK[0x21C]) = v17;
  LODWORD(STACK[0x204]) = 4 * (v13 ^ v9 ^ v17);
  v21 = *(v7 - 152) ^ *(v7 - 144);
  v22 = v21 ^ (*(v7 - 188) - (*(v7 - 184) & 0xE8EC8652) - 193576151);
  v23 = v3 & (4 * LODWORD(STACK[0x3CC])) ^ LODWORD(STACK[0x378]) ^ LODWORD(STACK[0x414]) ^ v22 ^ LODWORD(STACK[0x2F4]) ^ v3 & (4 * v22) ^ v16 ^ v19 ^ v3 & (4 * v19);
  v24 = v21 ^ ((v23 ^ 0xA46E260) - 2 * ((v23 ^ 0xA46E260) & 0x7476432D ^ v23 & 4) - 193576151);
  LODWORD(STACK[0x208]) = v24;
  LODWORD(STACK[0x3F4]) = v24 ^ 0x1EDF74CA;
  *(v7 - 160) = LODWORD(STACK[0x300]) ^ 0x63;
  LODWORD(STACK[0x414]) = LODWORD(STACK[0x2DC]) ^ 0x168149E8;
  LODWORD(STACK[0x378]) = LODWORD(STACK[0x2E0]) ^ 0xFF;
  v25 = *(v7 - 140);
  v26 = *(v7 - 136);
  *(v7 - 152) = (v25 & 1) == 0;
  *(v7 - 156) = ~v25 & 6;
  v27 = *(*(v7 - 120) + 8 * v26);
  LODWORD(STACK[0x2F4]) = (v26 - 11501) | 0x130;
  return v27(0, STACK[0x228]);
}

uint64_t sub_100A348AC@<X0>(unsigned int a1@<W8>)
{
  v5 = *v1;
  STACK[0x848] = *(v2 + 8 * v3);
  STACK[0xA50] = v5;
  STACK[0x6B0] = a1;
  LODWORD(STACK[0x6F0]) = (v4 ^ 0xEA8) + a1 - 1833988966;
  return (*(v2 + 8 * v4))();
}

uint64_t sub_100A34A00@<X0>(int a1@<W8>)
{
  STACK[0xA38] = *(v2 + 8 * a1);
  v6 = *(v2 + 8 * (((((v4 - 92) ^ ((*(v2 + 8 * (v4 ^ 0x1E017267)))(48) == 0)) & 1) * v5) ^ (v1 + v4 - 445)));
  STACK[0x2B8] = *(&off_101353600 + (v4 ^ 0x1E010B9C)) - 8;
  STACK[0x648] = *(&off_101353600 + (v4 ^ 0x1E010F39));
  STACK[0x5B8] = *(&off_101353600 + (v4 ^ 0x1E010C24)) - 4;
  v7 = *(&off_101353600 + (v4 ^ 0x1E010E35));
  STACK[0x688] = *(&off_101353600 + (v4 ^ 0x1E010D00));
  STACK[0x680] = v7 - 4;
  STACK[0x678] = *(&off_101353600 + v3 + v4 + 349);
  return v6();
}

uint64_t sub_100A34AF4(unint64_t a1)
{
  v7 = *(v4 + 3456);
  v8 = 289235981 * ((((v6 - 240) ^ 0x6BD54D34) & 0x194B051F | ~((v6 - 240) ^ 0x6BD54D34 | 0x194B051F)) ^ 0xAE367EB);
  v9 = LODWORD(STACK[0x15CC]) ^ v8;
  STACK[0x25E0] = a1;
  *(v6 - 216) = -529095972 - v8 + v1 + 42;
  *(v6 - 212) = v9;
  STACK[0x25F0] = &STACK[0x1614];
  STACK[0x25D8] = v7;
  v10 = (*(v5 + 8 * (v1 ^ 0x79F7)))(v6 - 240);
  return (*(v5 + 8 * ((7014 * (LODWORD(STACK[0x1614]) < v3 + (v1 ^ (v2 + 1486)) + 1280)) ^ v1)))(v10);
}

uint64_t sub_100A34F84@<X0>(int a1@<W0>, int a2@<W8>, uint64_t a3, _DWORD *a4, void *a5, uint64_t a6)
{
  v8 = a2 - 13972;
  v9 = *(a6 + 960) + 4 * v7;
  v10 = *(*a5 + ((*a4 & ((v8 ^ 0x6258) + (v9 & 0xFFFFFFF8) - (v9 & 0x45E9B528) + (v9 & 0x45E9B528 | 0xBA164AD4) + 1039487113)) & 0xFFFFFFFFFFFFFFF8));
  v11 = __ROR8__(v9 & 0xFFFFFFFFFFFFFFF8, 8);
  v12 = (((2 * (v11 + v10)) & 0xF54E18A94937659ALL) - (v11 + v10) - 0x7AA70C54A49BB2CELL) ^ 0x350F87908ACCB88ELL;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0x8A47714CF38C4783;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (((v16 + v15) ^ 0x1CEBBEF72BB894F3) - ((2 * ((v16 + v15) ^ 0x1CEBBEF72BB894F3)) & 0x41C4EE140E147156) + 0x20E2770A070A38ABLL) ^ 0x9E622D8736DB8328;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x1C031738E4A64104;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (((2 * ((v21 + v20) ^ 0x7E7995423644F874)) | 0x418DF5554DED3800) - ((v21 + v20) ^ 0x7E7995423644F874) + 0x5F39055559096400) ^ 0xA3B5A542795E5C69;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0x52F1884918D8D6A2;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0xB20726EF1F63AAFLL;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  *v9 = (((((v28 + v27) | 0x4EF2C06ACA70F0E7) - ((v28 + v27) | 0xB10D3F95358F0F18) - 0x4EF2C06ACA70F0E8) ^ 0xDF4C4D825DEC4EA7) >> (8 * (v9 & 7u))) ^ a1;
  return (*(v6 + 8 * v8))();
}

uint64_t sub_100A351E8(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  STACK[0x3910] = v14;
  STACK[0x39C0] = v13;
  STACK[0x3A48] = v8;
  STACK[0x3A20] = v12;
  STACK[0x3A28] = v10;
  STACK[0x3A30] = v9;
  STACK[0x3A38] = v15;
  STACK[0x3940] = a1;
  STACK[0x3750] = a5;
  STACK[0x3758] = v16;
  STACK[0x3760] = a8;
  STACK[0x3768] = a7;
  STACK[0x3770] = a3;
  STACK[0x3778] = a4;
  v21 = *(v11 + 8 * STACK[0x3AD8]);
  v22 = STACK[0x3590];
  v23 = STACK[0x3580];
  v24 = STACK[0x3698];
  v25 = STACK[0x3570];
  v26 = STACK[0x3210];
  v27 = STACK[0x3208];
  v28 = STACK[0x32B0];
  v29 = STACK[0x3A00];
  STACK[0x27F8] = v17;
  STACK[0x27F0] = v18;
  STACK[0x27E8] = v19;
  STACK[0x27E0] = v20;
  return v21(v27, v23, v28, v24, v22, v29, v25, v26);
}

uint64_t sub_100A35290()
{
  v1 = *(v0 + 632);
  v2 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v1 & 0x86E40890) + (v1 & 0x791BF768 | 0x86E40893) + 200028185)) & 0xFFFFFFFFFFFFFFF8));
  v3 = (__ROR8__(v1 & 0xFFFFFFFFFFFFFFF8, 8) + v2) ^ 0xC2AF3EAA3FF1B8E4;
  v4 = v3 ^ __ROR8__(v2, 61);
  v5 = __ROR8__(v3, 8);
  v6 = (0xF737A88F5794E97 - ((v5 + v4) | 0xF737A88F5794E97) + ((v5 + v4) | 0xF08C85770A86B168)) ^ 0x957ED1AA120B0594;
  v7 = v6 ^ __ROR8__(v4, 61);
  v8 = (__ROR8__(v6, 8) + v7) ^ 0x6FF046966119128DLL;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = __ROR8__(v8, 8);
  v11 = (((2 * (v10 + v9)) & 0xCB2B93D732E06A88) - (v10 + v9) - 0x6595C9EB99703545) ^ 0x3BD8ABD1B1F9D990;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = __ROR8__(v11, 8);
  v14 = (((2 * (v13 + v12)) & 0xF80872C25DE83A92) - (v13 + v12) + 0x3FBC69ED10BE2B6) ^ 0xECFFE6DF24EEAA5ALL;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = __ROR8__(v14, 8);
  v17 = __ROR8__((((2 * (v16 + v15)) & 0x1585145A1D3425BALL) - (v16 + v15) + 0x753D75D2F165ED22) ^ 0xADFAC6CD3B7C34FCLL, 8);
  v18 = (((2 * (v16 + v15)) & 0x1585145A1D3425BALL) - (v16 + v15) + 0x753D75D2F165ED22) ^ 0xADFAC6CD3B7C34FCLL ^ __ROR8__(v15, 61);
  v19 = (0x2FAF381C7BAF0837 - ((v17 + v18) | 0x2FAF381C7BAF0837) + ((v17 + v18) | 0xD050C7E38450F7C8)) ^ 0x8405C6CD0EE13447;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  LODWORD(v1) = 5621 * ((((((2 * (v21 + v20)) & 0x55BCFCD0ECE35836) - (v21 + v20) - 0x2ADE7E687671AC1CLL) ^ 0xBA6EE12B878C0D04) >> (8 * (v1 & 7u))) ^ *(v0 + 295)) + 32028458;
  *(STACK[0xDCB8] + 76) = *(STACK[0xDCB8] + v1 - 6152 * (((89362129 * v1) >> 32) >> 7));
  v22 = *(v0 + 624) + 28;
  *(v0 + 296) = v22;
  LODWORD(v19) = STACK[0x4D68];
  v23 = STACK[0x57D8];
  v24 = *(STACK[0x57D8] + 8 * (LODWORD(STACK[0x4D68]) ^ 0x73EB));
  *(v0 + 640) = v22;
  *(v0 + 280) = v24;
  return (*(v23 + 8 * (v19 ^ 0x7386)))();
}

uint64_t sub_100A35698@<X0>(int a1@<W8>)
{
  v2 = *(v1 + 8 * a1);
  LODWORD(STACK[0x3D90]) = 1;
  LODWORD(STACK[0x3D88]) = 1;
  LODWORD(STACK[0x3B00]) = 1;
  LODWORD(STACK[0x3B18]) = 1;
  LODWORD(STACK[0x3980]) = 1;
  LODWORD(STACK[0x3988]) = 1;
  LODWORD(STACK[0x3D40]) = 1;
  LODWORD(STACK[0x3B08]) = 1;
  LODWORD(STACK[0x3998]) = 1;
  LODWORD(STACK[0x39A0]) = 1;
  LODWORD(STACK[0x3D80]) = STACK[0x3D70];
  LODWORD(STACK[0x3E18]) = 1;
  v3 = STACK[0x3D98];
  LODWORD(STACK[0x3D70]) = STACK[0x3D98];
  v4 = STACK[0x3D68];
  LODWORD(STACK[0x3D30]) = STACK[0x3D68];
  LODWORD(STACK[0x3B20]) = v4;
  LODWORD(STACK[0x3E40]) = v3;
  LODWORD(STACK[0x3828]) = v4;
  LODWORD(STACK[0x39E8]) = v4;
  LODWORD(STACK[0x3D78]) = v4;
  LODWORD(STACK[0x3830]) = v4;
  LODWORD(STACK[0x3CF0]) = v4;
  LODWORD(STACK[0x39F0]) = v4;
  LODWORD(STACK[0x3D50]) = v4;
  LODWORD(STACK[0x3838]) = v4;
  LODWORD(STACK[0x3A28]) = v4;
  LODWORD(STACK[0x3840]) = v4;
  LODWORD(STACK[0x3848]) = v4;
  LODWORD(STACK[0x3D38]) = v4;
  LODWORD(STACK[0x3D20]) = v4;
  LODWORD(STACK[0x3AA0]) = v4;
  LODWORD(STACK[0x3850]) = v4;
  LODWORD(STACK[0x3D58]) = v4;
  LODWORD(STACK[0x3AD8]) = v4;
  LODWORD(STACK[0x3858]) = v4;
  LODWORD(STACK[0x3860]) = v4;
  LODWORD(STACK[0x3D28]) = v4;
  LODWORD(STACK[0x3AE0]) = v4;
  LODWORD(STACK[0x38B0]) = v4;
  LODWORD(STACK[0x3D60]) = v4;
  LODWORD(STACK[0x3AE8]) = v4;
  LODWORD(STACK[0x38B8]) = v4;
  LODWORD(STACK[0x3948]) = v4;
  return v2();
}

uint64_t sub_100A358C0@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, int a6@<W8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = ((*a1 ^ 0x55F1FCF1) + 1658836343) ^ ((*a1 ^ 0xF0F66F76) - 942127374) ^ ((*a1 ^ 0x771B1313) + 1077230229);
  LODWORD(STACK[0x2C8]) = v19;
  v20 = (a6 - 1834840702) & 0x6D5D37FD;
  v21 = (a6 - 1874874507) | 0x203A3900u;
  v22 = (v21 ^ 0x83D3858D) + v20;
  LODWORD(STACK[0x2C4]) = v22;
  return (*(v18 + 8 * ((42 * (v19 + 1316432264 == v22)) ^ a6)))(a1, a2, a3, a4, v20, 1619292630, a5, v21, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_100A359D4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  STACK[0x3B0] = v4;
  v6 = a4 + 2120247061;
  STACK[0x4F0] = (*(v5 + 8 * (a4 + 2120268338)))(STACK[0x390] ^ 0x2702DC7A);
  *STACK[0x530] = (*(v5 + 255176))();
  return (*(v5 + 8 * v6))();
}

uint64_t sub_100A35B78()
{
  *(v0 - 0x79296B4A625EDF1CLL) = *(v1 + 24);
  LODWORD(STACK[0xAA2C]) = v3;
  v4 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v2);
  return (*(v4 + 8 * (((v2 + 1569403276) ^ 0x5D8B3B87) + v2)))(v0 - 0x79296B4A625EDF30);
}

uint64_t sub_100A35C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = v9 + a8 + 1939;
  v11 = STACK[0x540];
  *(v8 + 1192) = *(STACK[0x540] + 8 * v10);
  return (*(v11 + 8 * ((v9 + a8 + 5611) ^ v10)))();
}

uint64_t sub_100A35CC0()
{
  if (HIDWORD(v0))
  {
    v3 = 0;
  }

  else
  {
    v3 = ((((v1 - 8521) ^ 0x60A1u) - 12864) ^ LODWORD(STACK[0x3D80])) >= v0;
  }

  v4 = !v3;
  return (*(v2 + 8 * (((2 * v4) | (16 * v4)) ^ v1)))();
}

uint64_t sub_100A35D38@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v1) = v2;
  *(a1 - 0x308E083E0C524CBELL) = v2;
  return (*(v4 + 8 * v3))();
}

uint64_t sub_100A35E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x2AC8]) = 0;
  LODWORD(STACK[0x2AB0]) = 0;
  LODWORD(STACK[0x2AA8]) = 0;
  LODWORD(STACK[0x2AF0]) = 0;
  LODWORD(STACK[0x2B00]) = 0;
  LODWORD(STACK[0x2AE8]) = 0;
  LODWORD(STACK[0x2AE0]) = 0;
  LODWORD(STACK[0x2B18]) = 0;
  LODWORD(STACK[0x2AC0]) = 0;
  LODWORD(STACK[0x8F0]) = 0;
  LODWORD(STACK[0x860]) = 0;
  LODWORD(STACK[0x868]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  LODWORD(STACK[0x870]) = 0;
  LODWORD(STACK[0x878]) = 0;
  LODWORD(STACK[0x2B10]) = 0;
  LODWORD(STACK[0x2AD0]) = 0;
  LODWORD(STACK[0x880]) = 0;
  LODWORD(STACK[0x888]) = 0;
  LODWORD(STACK[0x900]) = 0;
  LODWORD(STACK[0x890]) = 0;
  LODWORD(STACK[0x898]) = 0;
  LODWORD(STACK[0x2AD8]) = 0;
  LODWORD(STACK[0x908]) = 0;
  LODWORD(STACK[0x8A0]) = 0;
  LODWORD(STACK[0x8A8]) = 0;
  LODWORD(STACK[0x910]) = 0;
  LODWORD(STACK[0x8B0]) = 0;
  LODWORD(STACK[0x8B8]) = 0;
  STACK[0x3D90] = 0;
  LODWORD(STACK[0x32D0]) = 0;
  v8 = (v6 + 5019) | 0xE;
  LODWORD(STACK[0x3B08]) = v8;
  v9 = STACK[0x2238] != (v8 ^ 0x5285);
  STACK[0x3AF0] = v6 + 5033;
  v10 = *(v7 + 8 * ((29967 * v9) ^ v6));
  LODWORD(STACK[0x2B48]) = STACK[0x2A48];
  v11 = STACK[0x1C28];
  LODWORD(STACK[0x2B88]) = STACK[0x1C28];
  LODWORD(STACK[0x3438]) = v11;
  LODWORD(STACK[0x2B58]) = STACK[0x1C20];
  LODWORD(STACK[0x2B78]) = STACK[0x3420];
  LODWORD(STACK[0x2B90]) = STACK[0x1BA0];
  LODWORD(STACK[0x2B50]) = STACK[0x2630];
  LODWORD(STACK[0x2B68]) = STACK[0x2228];
  v12 = STACK[0x1954];
  LODWORD(STACK[0x2B70]) = STACK[0x1954];
  LODWORD(STACK[0x3280]) = v12;
  v13 = STACK[0x32E8];
  LODWORD(STACK[0x2B60]) = STACK[0x32E8];
  LODWORD(STACK[0x3488]) = v13;
  LODWORD(STACK[0x3B00]) = v13;
  LODWORD(STACK[0x3290]) = v13;
  v14 = STACK[0x1A78];
  LODWORD(STACK[0x3268]) = STACK[0x1A78];
  LODWORD(STACK[0x3288]) = v14;
  v15 = STACK[0x2500];
  LODWORD(STACK[0x2B40]) = STACK[0x2500];
  LODWORD(STACK[0x3998]) = v15;
  LODWORD(STACK[0x3AE8]) = v15;
  v16 = STACK[0x21F4];
  LODWORD(STACK[0x3298]) = STACK[0x21F4];
  LODWORD(STACK[0x3AE0]) = v16;
  v17 = STACK[0x3810];
  LODWORD(STACK[0x2B28]) = STACK[0x3810];
  LODWORD(STACK[0x3260]) = v17;
  v18 = STACK[0x3318];
  LODWORD(STACK[0x2B98]) = STACK[0x3318];
  LODWORD(STACK[0x3278]) = v18;
  LODWORD(STACK[0x3980]) = 36;
  LODWORD(STACK[0x2BB0]) = 26;
  LODWORD(STACK[0x3988]) = 23;
  v19 = STACK[0x3E0];
  v20 = STACK[0x2928];
  STACK[0x3D78] = STACK[0x2928];
  LODWORD(STACK[0x3D30]) = 1;
  LODWORD(STACK[0x3D38]) = 1;
  LODWORD(STACK[0x3D58]) = 1;
  LODWORD(STACK[0x3D28]) = 1;
  LODWORD(STACK[0x3D70]) = 1;
  LODWORD(STACK[0x2B80]) = 1;
  LODWORD(STACK[0x3B18]) = 1;
  LODWORD(STACK[0x3D40]) = 1;
  LODWORD(STACK[0x3D20]) = 1;
  LODWORD(STACK[0x32C8]) = 1;
  LODWORD(STACK[0x32A0]) = 1;
  LODWORD(STACK[0x32A8]) = 1;
  LODWORD(STACK[0x3B20]) = 1;
  LODWORD(STACK[0x32B0]) = 1;
  LODWORD(STACK[0x32B8]) = 1;
  LODWORD(STACK[0x918]) = 1;
  LODWORD(STACK[0x3CF0]) = 1;
  LODWORD(STACK[0x32C0]) = 1;
  LODWORD(STACK[0x800]) = 1;
  LODWORD(STACK[0x8C0]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x810]) = 1;
  LODWORD(STACK[0x2AF8]) = 1;
  LODWORD(STACK[0x2A90]) = 1;
  LODWORD(STACK[0x8C8]) = 1;
  LODWORD(STACK[0x818]) = 1;
  LODWORD(STACK[0x820]) = 1;
  LODWORD(STACK[0x8D0]) = 1;
  LODWORD(STACK[0x828]) = 1;
  LODWORD(STACK[0x830]) = 1;
  LODWORD(STACK[0x2A98]) = 1;
  LODWORD(STACK[0x8D8]) = 1;
  LODWORD(STACK[0x7F8]) = 1;
  LODWORD(STACK[0x838]) = 1;
  LODWORD(STACK[0x2B08]) = 1;
  LODWORD(STACK[0x2AA0]) = 1;
  LODWORD(STACK[0x8E0]) = 1;
  LODWORD(STACK[0x840]) = 1;
  LODWORD(STACK[0x848]) = 1;
  LODWORD(STACK[0x8E8]) = 1;
  LODWORD(STACK[0x850]) = 1;
  LODWORD(STACK[0x858]) = 1;
  LODWORD(STACK[0x39A0]) = STACK[0x1204];
  LODWORD(STACK[0x3D48]) = STACK[0x1A90];
  LODWORD(STACK[0x3CE8]) = STACK[0x28CC];
  LODWORD(STACK[0x36B8]) = STACK[0x2134];
  LODWORD(STACK[0x2B30]) = STACK[0x3688];
  LODWORD(STACK[0x39E8]) = STACK[0x1BC8];
  STACK[0x32E0] = v20;
  STACK[0x3D50] = STACK[0x438];
  STACK[0x3AD8] = v19;
  STACK[0x32D8] = STACK[0x2618];
  LODWORD(STACK[0x3270]) = STACK[0x2B20];
  LODWORD(STACK[0x3258]) = STACK[0x2424];
  return v10(a1, 0, a3, v19, a5, a6, v18);
}

uint64_t sub_100A360D4(uint64_t a1, unint64_t a2, unsigned int *a3, uint64_t a4, void *a5, char a6)
{
  if (v8 == 3)
  {
    v17 = -16;
  }

  else
  {
    v17 = 0;
  }

  v18 = *STACK[0x660];
  v19 = *a3;
  v20 = *(v18 + (v19 & a2));
  v21 = *a5 ^ v12;
  v22 = *a5 ^ 0xDB653AB621E69720;
  v23 = 1645 * v8 + 3822980 - 2696 * (((12744711 * (1645 * v8 + 3822980)) >> 32) >> 3);
  v24 = (v23 ^ 0x5CBCBD4F7DDEEF6FLL) + a4 + ((2 * v23) & 0x1EDE);
  v25 = (v10 ^ v15 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v20 + v11 + v16) & v21)) ^ 0x45 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (((v20 + v11 - 963544002) + v6 + v22 * v6) & v22))) & (((v7 ^ 0x53) + (1 << v8) + v17 + 51) ^ 8) ^ (-52 - ((v7 ^ 0x53) + (1 << v8) + v17)) & 0x35;
  v26 = (*(v18 + (v19 & STACK[0x658])) + v13 + 673210726);
  v27 = v24 - 2111762287 + v20;
  v28 = *(v24 + 0x5D9FF9544903F67CLL) ^ (76 * (v24 - 111));
  v29 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((*(v18 + (v19 & STACK[0x658])) + v13 + 673210728) & v21));
  v30 = v9 ^ a6 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v26 & v21)) ^ v29;
  v31 = v28 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v27 - 963544004) & v21)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v27 - 963544002) & v21)) ^ v30 ^ 0x74;
  v32 = v25 == 53;
  v33 = v30 ^ 4;
  if (!v32)
  {
    v33 = v31;
  }

  *(v13 - 0x34EE34220E8AC3B8) = v14 ^ v29 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((0xF958B369DD707FDBLL * v22 - 0x6A74C96228F8025 + v26) & v22)) ^ v33 ^ 0xCD;
  return (*(STACK[0x668] + 8 * ((15 * ((((254 - v8) & (v8 + 249)) >> 7) & 1)) ^ v7)))();
}

uint64_t sub_100A36350@<X0>(int a1@<W2>, int a2@<W5>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18)
{
  v25 = (a2 + a18);
  v26 = *(v20 + (a1 & (313 * (((v18 - 9407) | 0x4420) ^ 0x452B) + ((v19 + v25) & 0xFFFFFFF8 ^ 0x8ACA3624) + ((2 * ((v19 + v25) & 0xFFFFFFF8)) & 0x15946C40) + 1862808176) & 0xFFFFFFF8));
  v27 = __ROR8__((v19 + v25) & 0xFFFFFFFFFFFFFFF8, 8);
  v28 = __ROR8__((v26 + v27) ^ v21, 8);
  v29 = (v26 + v27) ^ v21 ^ __ROR8__(v26, 61);
  v30 = (((2 * (v28 + v29)) & 0x16E31A16B390CE7ELL) - (v28 + v29) + 0x748E72F4A63798C0) ^ 0x61BC301A9AC7F289;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v24;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (((2 * ((v34 + v33) ^ 0x89AF39C7DA624424)) & 0x5FAC9FC210DEA982) - ((v34 + v33) ^ 0x89AF39C7DA624424) + 0x5029B01EF790AB3ELL) ^ 0x3C29936A034FD3C7;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xC7DDC9F6CC45B721;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ v22;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ v23;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = __ROR8__(v41, 8);
  LOBYTE(v42) = (((0xBD1C1FDFD9E65F32 - ((v43 + v42) | 0xBD1C1FDFD9E65F32) + ((v43 + v42) | 0x42E3E0202619A0CDLL)) ^ 0x832028F282DCE8E5) >> (8 * ((v19 + v25) & 7))) ^ *(v19 + v25);
  return (*(a3 + 8 * ((42 * ((((v42 ^ 0x69) - 38) ^ ((v42 ^ 0xF0) + 65) ^ ((v42 ^ 0x99) + 42)) != 7)) ^ v18)))(8 * ((v19 + (v25 + 1)) & 7));
}

uint64_t sub_100A36578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6, unsigned int a7)
{
  v9 = v8 < a6;
  if (a6 < a7 != v8 < 0x3C180CD0)
  {
    v9 = a6 < a7;
  }

  return (*(STACK[0x2D0] + 8 * ((v9 * v7) ^ a5)))();
}

uint64_t sub_100A366F0@<X0>(uint64_t a1@<X4>, unsigned int a2@<W8>)
{
  STACK[0x790] = v2;
  v5 = *(v3 + 8 * a2);
  LODWORD(STACK[0x780]) = a2 - 15165;
  return v5(*v4, 63, a1, STACK[0x6D0], a1, 0xD028EC505BB2F7F7, 0x5FAE275F489A1012, 0xCC1699745E8A36ACLL);
}

uint64_t sub_100A367F0(double a1, __n128 a2, __n128 a3, __n128 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const float *a9)
{
  v11 = vld1q_dup_f32(a9);
  v12.n128_u64[0] = 0x8000000080000000;
  v12.n128_u64[1] = 0x8000000080000000;
  return (*(v10 + 8 * (v9 + 2120257003)))(2174720927, -26468, 27247116, v11, a2, a3, a4, v12, *&STACK[0x410], *&STACK[0x400], *&STACK[0x3F0]);
}

uint64_t sub_100A36934(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  LODWORD(STACK[0x31E8]) = STACK[0x3E18];
  LODWORD(STACK[0x31A8]) = v9;
  STACK[0x3808] = a7;
  LODWORD(STACK[0x3E18]) = v8;
  return (*(v7 + 8 * (((v8 == 0) * ((a2 ^ 0x3D) - 8070)) ^ a2)))();
}

uint64_t sub_100A36B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  if (a28 < 0xA1877421 != (v35 + 1298327483) < 0xA1877421)
  {
    v36 = (v35 + 1298327483) < 0xA1877421;
  }

  else
  {
    v36 = v35 + 1298327483 > a28;
  }

  return (*(STACK[0x2D0] + 8 * ((((v36 ^ ((v34 ^ 0x31) + 1)) & 1) * (((v34 - 1409767490) & 0x54076F30) - 27948)) ^ v34)))(v34 ^ 0x6631u, a2, a3, a4, a5, LODWORD(STACK[0x2B0]), a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t sub_100A36C3C(unint64_t a1)
{
  *v1 = 104;
  STACK[0x620] = a1;
  STACK[0x600] = v5;
  v6 = STACK[0x668];
  v7 = (*(STACK[0x668] + 8 * v2))(416);
  *v4 = v7;
  return (*(v6 + 8 * (((v7 == 0) * (v3 - 7971)) ^ (v3 + 13066))))(STACK[0x620]);
}

uint64_t sub_100A36CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  LODWORD(STACK[0x3A38]) = 0;
  LODWORD(STACK[0x39F8]) = 0;
  LODWORD(STACK[0x39B8]) = 0;
  LODWORD(STACK[0x3A10]) = 0;
  LODWORD(STACK[0x3A18]) = 0;
  LODWORD(STACK[0x39B0]) = 0;
  LODWORD(STACK[0x3A00]) = 0;
  LODWORD(STACK[0x3A08]) = 0;
  LODWORD(STACK[0x3A30]) = 0;
  LODWORD(STACK[0x39F0]) = 0;
  LODWORD(STACK[0x3850]) = 0;
  LODWORD(STACK[0x39E8]) = 0;
  LODWORD(STACK[0x3A28]) = 0;
  LODWORD(STACK[0x34C0]) = 0;
  LODWORD(STACK[0x39A8]) = 0;
  LODWORD(STACK[0x3A20]) = 0;
  LODWORD(STACK[0x3A40]) = 0;
  LODWORD(STACK[0x38F8]) = 0;
  LODWORD(STACK[0x3A58]) = 0;
  LODWORD(STACK[0x39A0]) = 0;
  STACK[0x3B08] = STACK[0x39D8];
  v11 = STACK[0x34E8];
  v12 = *(STACK[0x34E8] + 30) + 111;
  v13 = 4647 * (*(STACK[0x34E8] + 19) ^ 0x9A) + 25186740;
  STACK[0x3A48] = v8 ^ 0x88C2F489;
  v14 = *(v9 + v13 % (v8 ^ 0x4AB6u));
  v15 = *(v9 + 4647 * (v12 ^ 0x1C) + 4767822 - 6784 * (((1266205 * (4647 * (v12 ^ 0x1Cu) + 4767822)) >> 32) >> 1)) ^ 0xFFFFFFE3;
  LODWORD(STACK[0x39D8]) = v11[25];
  STACK[0x3AA0] = v11[23];
  LODWORD(STACK[0x3A68]) = v11[26];
  STACK[0x3AC8] = (v15 >> 3) | (32 * v15);
  STACK[0x3AD0] = v11[31];
  STACK[0x3A98] = (v14 ^ 0xFFFFFFC3) + 85;
  v16 = *(v10 + 8 * (v8 ^ 0x19D9));
  STACK[0x35A8] = a8;
  STACK[0x35A0] = a7;
  LODWORD(STACK[0x3AE8]) = v11[17];
  v17 = v11[16];
  STACK[0x3AD8] = v11[28];
  LODWORD(STACK[0x3A90]) = v11[27];
  STACK[0x3A88] = v11[21];
  STACK[0x3A78] = v11[20];
  LODWORD(STACK[0x3A80]) = v11[18];
  LODWORD(STACK[0x3900]) = 163;
  LODWORD(STACK[0x3908]) = 170;
  LODWORD(STACK[0x3980]) = 36;
  LODWORD(STACK[0x3968]) = 147;
  LODWORD(STACK[0x3910]) = 83;
  LODWORD(STACK[0x3918]) = 33;
  LODWORD(STACK[0x3988]) = 1735013187;
  LODWORD(STACK[0x3960]) = 191;
  LODWORD(STACK[0x3948]) = 105;
  LODWORD(STACK[0x3958]) = 24;
  LODWORD(STACK[0x3978]) = 713447516;
  LODWORD(STACK[0x3990]) = -839768396;
  LODWORD(STACK[0x3950]) = 246;
  LODWORD(STACK[0x3998]) = 1298892032;
  LODWORD(STACK[0x3920]) = 52;
  LODWORD(STACK[0x3928]) = 238;
  LODWORD(STACK[0x3930]) = 120;
  LODWORD(STACK[0x3938]) = 248;
  LODWORD(STACK[0x3970]) = 5;
  LODWORD(STACK[0x3940]) = 199;
  return v16(LODWORD(STACK[0x3470]), LODWORD(STACK[0x3468]), LODWORD(STACK[0x3498]), v17, LODWORD(STACK[0x34D8]), LODWORD(STACK[0x3460]), LODWORD(STACK[0x34D0]), LODWORD(STACK[0x3448]));
}

uint64_t sub_100A37018(int a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  LODWORD(a34) = v38 - 1420709837;
  LODWORD(STACK[0x2C8]) = a1 - 303407265;
  LODWORD(a33) = a4 + a8 + 19 - v36 - 1327670132;
  HIDWORD(a31) = -357272572 - v37;
  LODWORD(a35) = -1515005237 - v35;
  LODWORD(a32) = a3 - 964729847;
  LODWORD(STACK[0x2B8]) = a1 + 1247215928;
  v41 = 2 * (-101 - LODWORD(STACK[0x2C4]));
  v42 = v41 & 0x10;
  v43 = (v41 ^ 0x78) & ((-101 - LODWORD(STACK[0x2C4])) ^ 8);
  v44 = v43 ^ 0x14;
  v45 = (v42 ^ 8) & (-101 - LODWORD(STACK[0x2C4])) ^ 0x34 ^ v43 & (4 * ((v42 ^ 8) & (-101 - LODWORD(STACK[0x2C4]))));
  v46 = ((-101 - LODWORD(STACK[0x2C4])) ^ (2 * (((4 * v44) & 0x30 ^ ((4 * v44) ^ 0xD0) & v44 ^ 0x10) & (16 * v45) ^ v45))) & 0x3F;
  v47 = (((v46 ^ 0xB3B16689) - 1441575212) ^ ((v46 ^ 0x1B54BEBF) + 49714918) ^ ((v46 ^ 0xA8E5D816) - 1320685491)) + LODWORD(STACK[0x2C4]);
  LODWORD(v59) = LODWORD(STACK[0x2C4]) + 1940124853;
  LODWORD(a23) = LODWORD(STACK[0x2C4]) - 254549322;
  HIDWORD(a18) = LODWORD(STACK[0x2C4]) + 604080813;
  v48 = (a19 ^ 0x3F4A0B14) & (2 * (a19 & 0xBF6CA001)) ^ a19 & 0xBF6CA001;
  v49 = ((2 * (a19 ^ 0x98A0B16)) ^ 0x6DCD562E) & (a19 ^ 0x98A0B16) ^ (2 * (a19 ^ 0x98A0B16)) & 0xB6E6AB16;
  v50 = (v49 ^ 0x24C40004) & (4 * v48) ^ v48;
  v51 = ((4 * (v49 ^ 0x9222A911)) ^ 0xDB9AAC5C) & (v49 ^ 0x9222A911) ^ (4 * (v49 ^ 0x9222A911)) & 0xB6E6AB14;
  v52 = (v51 ^ 0x9282A810) & (16 * v50) ^ v50;
  v53 = ((16 * (v51 ^ 0x24640303)) ^ 0x6E6AB170) & (v51 ^ 0x24640303) ^ (16 * (v51 ^ 0x24640303)) & 0xB6E6AB10;
  v54 = v52 ^ 0xB6E6AB17 ^ (v53 ^ 0x2662A100) & (v52 << 8);
  HIDWORD(a27) = -466965813;
  LODWORD(STACK[0x2B0]) = (((v38 - 1827379206) ^ (a3 + 466965812) ^ 0xB97885E8) - 573084634) ^ (a3 - v39 - 394721779);
  LODWORD(STACK[0x2C4]) = ((a2 + 2 * v37 + 1460260601) ^ 0x740420DF) - a1 - ((2 * (((a2 + 2 * v37 + 1460260601) ^ 0x740420DF) - a1)) & 0xAE775408) + 1463527940;
  HIDWORD(a24) = v47;
  HIDWORD(v59) = v47 + 374980285;
  LODWORD(a17) = (16 * ((v54 << 16) & 0x6E60000 ^ v54 ^ ((v54 << 16) ^ 0xB170000) & (((v53 ^ 0x90840A07) << 8) & 0x6E60000 ^ 0x440000 ^ (((v53 ^ 0x90840A07) << 8) ^ 0x6AB0000) & (v53 ^ 0x90840A07)))) ^ (8 * a19);
  HIDWORD(v58) = 5392629;
  LODWORD(v57) = 176161977;
  v55 = 0x7FFDFFFF04021012;
  LODWORD(v58) = HIDWORD(v55);
  HIDWORD(v57) = v55;
  HIDWORD(a19) = -35652681;
  return (*(v40 + 8 * (a8 + 1334176441)))(16245992, 25, 105, 621432, 75, 2927055880, (v39 - 594343244), 91, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, 0x409204290A200129, v57, v58, a23, a24, &STACK[0x724], &STACK[0xC38], a27, v59, a29, a30, a31, a32, a33, a34, a35);
}

uint64_t sub_100A375AC()
{
  v2 = ((v0 + 4486) ^ 0x9D19C86B) + v1;
  v3 = (((LODWORD(STACK[0x7DEC]) ^ 0x39A2CF05) - 966971141) ^ ((LODWORD(STACK[0x7DEC]) ^ 0x2F60C2E1) - 794870497) ^ (((v0 - 8493) | 0x102) + (LODWORD(STACK[0x7DEC]) ^ 0xC4DE8D70) + 992046925)) - 1338568039;
  v4 = v3 < 0xDE1A9205;
  v5 = v2 < v3;
  if (v2 < 0xDE1A9205 != v4)
  {
    v5 = v4;
  }

  return (*(STACK[0x57D8] + 8 * ((247 * v5) ^ v0)))();
}

uint64_t sub_100A37690@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W7>, int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23)
{
  v29 = *(a2 + (v27 - 1480245642));
  v30 = v28 + (v27 + (v29 ^ 0x7BF67375) + ((v29 << (v25 + 127)) & 0xEA) + 1150628580) * a6 + v23;
  v31 = ((v26 - a7 + v30 + v30 - 257 * (((v30 * v24) >> 32) >> 8)) ^ LODWORD(STACK[0x2D8])) - 208965112;
  v32 = v31 ^ LODWORD(STACK[0x2D8]);
  v33 = v31 + a7;
  v34 = v31 + v26;
  v35 = v31 + v26 + a4 + v32 + ((v31 + a7) ^ __ROR4__(v31, 31));
  v36 = v35 ^ v34;
  v37 = v35 ^ v33;
  HIDWORD(v38) = v35;
  LODWORD(v38) = v35;
  v39 = ((v38 >> 28) + v37) ^ v36;
  HIDWORD(v38) = a5 - v32 - v35 + v39;
  LODWORD(v38) = HIDWORD(v38);
  LODWORD(STACK[0x2D8]) = v39 + a5 - ((v39 + a5) ^ a3 ^ (v36 - HIDWORD(v38) + (v38 >> 30) - (HIDWORD(v38) ^ v37)));
  return (*(STACK[0x2D0] + 8 * (((v27 - a23 == a1) * a8) ^ (v25 + 1334193318))))();
}

uint64_t sub_100A37830(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, int a5, unint64_t a6)
{
  v11 = *(*(v10 + 4008) + a6 - 5896 * ((((a6 >> 3) * v7) >> 64) >> 4));
  v12 = *(a3 + a2);
  if (((1 << v6) & v9) == v8 - 8)
  {
    v11 = 28;
  }

  v13 = v12 & 0xB4 ^ 0xE8;
  v14 = v11 & 0x70 ^ 0x4E;
  v15 = v11 ^ v12 ^ (2 * (v14 ^ v13 ^ (v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * v13) ^ v13)) ^ v13)) ^ v13)) ^ (v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * v14) ^ v14)) ^ v14)) ^ v14)) ^ v14))));
  *(a3 + a2) = (((v15 ^ 0x56) + 95) ^ ((v15 ^ 0xA) + 3) ^ ((v15 ^ 0x98) - 111)) + 79;
  return (*(STACK[0x57D8] + 8 * ((61 * ((a5 | a4) >> 31)) ^ (v8 | 0x1511))))();
}

uint64_t sub_100A3EE90@<X0>(uint64_t a1@<X4>, char *a2@<X8>)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 9);
  v7 = *(a2 + 13);
  v8 = a2[15];
  *(v3 - 160) = v4;
  *(v3 - 159) = v5;
  *(v3 - 151) = v6;
  *(v3 - 147) = v7;
  *(v3 - 145) = v8;
  return (*(a1 + 8 * v2))();
}

uint64_t sub_100A3EEE4()
{
  STACK[0x25D8] = (v2 + 1) ^ v0;
  *(v4 - 220) = v1 - v0 + 4;
  *(v4 - 240) = v1 ^ v0;
  STACK[0x25E8] = STACK[0x4C0];
  *(v4 - 204) = -1527018645 - v0;
  *(v4 - 200) = v0 ^ 1;
  *(v4 - 208) = STACK[0x4A0];
  v5 = (*(v3 + 254704))(v4 - 240);
  return (*(v3 + 8 * *(v4 - 224)))(v5);
}

uint64_t sub_100A3EF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  qword_101362AE8 = *(v10 + a3 + 32) + v8 - *(v9 + 24);
  v13 = *(v10 + a3 + 40) ^ v11;
  return (*(v12 + 8 * ((63 * ((((v13 & v11) >> (__clz(v13 | 1) ^ 0x3Fu)) & 1) == 0)) ^ ((v11 - a8 - 15 + ((v11 + 9650172) | 0x810C8200) - 54481099) | v11))))();
}

uint64_t sub_100A3F008@<X0>(char a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W8>)
{
  v20 = *(*(&off_101353600 + a2) + ((((v12 + 2 - (v13 & 4)) ^ *(v18 - 196)) + v11 - ((((v12 - 1886939646 - (v13 & 0x1F0F2C04)) ^ *(v18 - 196)) & a8) << a1)) ^ 0x73u));
  v21 = v20 ^ 0xF852BD7A ^ *(v18 - 224);
  v22 = *(v18 - 192) ^ (v21 + a7 - (a5 & (2 * v21))) ^ 0x31695DEF;
  v23 = (v22 + (v21 ^ 0x4F644DDE) - 2 * v22) ^ v9;
  v24 = (v23 + a7 - (a5 & (2 * v23))) ^ v15;
  v25 = (((v24 ^ v21 ^ 0x4221B443) + 74974936) ^ ((v24 ^ v21 ^ 0x4DE08CEF) + 196689532) ^ ((v24 ^ v21 ^ 0x40A57572) + 117229543)) + 1785478383 + ((((2 * (v24 & (v21 ^ 0x4F644DDE))) ^ 0x5E463FF1) + 1566789645) ^ (((2 * (v24 & (v21 ^ 0x4F644DDE))) ^ 0x2356D0E7) + 544456475) ^ (((2 * (v24 & (v21 ^ 0x4F644DDE))) ^ 0x7D10EF16) + 2117435628));
  v26 = (2 * (v20 ^ 0xF852BD7A)) << (v20 & 4) << (v20 & 4 ^ 4);
  v27 = (v25 ^ 0x29AE538A) & (2 * (v25 & 0x893053C8)) ^ v25 & 0x893053C8;
  v28 = ((2 * (v25 ^ 0x2B8E729A)) ^ 0x457C42A4) & (v25 ^ 0x2B8E729A) ^ (2 * (v25 ^ 0x2B8E729A)) & (a4 + 2);
  v29 = v28 ^ 0xA2822152;
  v30 = v28 & (4 * v27) ^ v27;
  v31 = ((4 * v29) ^ 0x8AF88548) & v29 ^ (4 * v29) & a4;
  v32 = v26 + a6 - ((2 * v26) & 0x9CFDAF04);
  v33 = v30 ^ (a4 + 2) ^ (v31 ^ 0x82B80140) & (16 * v30);
  v34 = (16 * (v31 ^ 0x20062012)) & a4 ^ 0x801C2052 ^ ((16 * (v31 ^ 0x20062012)) ^ 0x2BE21520) & (v31 ^ 0x20062012);
  v35 = (v33 << 8) & (a4 - 80) ^ v33 ^ ((v33 << 8) ^ 0xBE215200) & v34;
  v36 = v25 ^ (2 * ((v35 << 16) & v14 ^ v35 ^ ((v35 << 16) ^ 0x21520000) & ((v34 << 8) & v14 ^ 0x9E0000 ^ ((v34 << 8) ^ 0x3E210000) & v34)));
  v37 = (-1316935554 - (((v32 ^ 0x867121C1) + 2039406143) ^ ((v32 ^ 0x6937A1E5) - 1765253605) ^ ((v32 ^ 0xA13857A6) + 1590143066))) ^ v32 ^ ((v32 ^ a6) + ((2 * (v36 ^ v32)) ^ 0xF3527223) + ((2 * ((v36 ^ v32 ^ 0x2D7379B4) & (v36 ^ 0x4828116C) ^ v36 & 0x2B25BF5A)) ^ 0x10402290) + 1);
  v38 = (((v36 ^ 0xDFDC9DC2) + 1781744094) ^ ((v36 ^ 0xEFC9CE52) + 1512444494) ^ ((v36 ^ 0xF83D42FC) + 1305648868)) + 1048068724 + (((v37 ^ 0x8665D32) - 390714969) ^ ((v37 ^ 0x16257BCD) - 151711910) ^ ((v37 ^ 0x503DF17D) - 1326610966));
  v39 = ((2 * (v38 ^ 0x7E28EEE3)) ^ 0xD67347C4) & (v38 ^ 0x7E28EEE3) ^ (2 * (v38 ^ 0x7E28EEE3)) & (a3 + 2);
  v40 = 4 * (v39 ^ 0x2908A022);
  v41 = ((2 * (v38 & 0x95114D01)) & 0x2A208202 | v38 & 0x95114D01) ^ (2 * (v38 & 0x95114D01)) & (v38 ^ 0x7E28EEE3);
  v42 = (v40 ^ 0xACE68F88) & (v39 ^ 0x2908A022);
  v43 = v40 & a3;
  v44 = *(v18 - 184);
  v45 = (v42 ^ v43 ^ 0xA8208380) & (16 * ((v39 ^ 0xC1018022) & (4 * v41) ^ v41)) ^ (v39 ^ 0xC1018022) & (4 * v41) ^ v41;
  v46 = ((16 * (v42 ^ v43 ^ 0x43192062)) ^ 0xB39A3E20) & (v42 ^ v43 ^ 0x43192062) ^ (16 * (v42 ^ v43 ^ 0x43192062)) & a3;
  v47 = v45 ^ (a3 + 2) ^ (v46 ^ 0xA3182200) & (v45 << 8);
  *(v17 + 4 * v12) = v10 ^ v38 ^ (2 * ((v47 << 16) & v16 ^ v47 ^ ((v47 << 16) ^ 0x23E20000) & (((v46 ^ 0x482181C2) << 8) & v16 ^ 0x42180000 ^ (((v46 ^ 0x482181C2) << 8) ^ 0x39A30000) & (v46 ^ 0x482181C2)))) ^ 0x5FBD6457;
  return (*(v44 + 8 * ((23268 * (v19 == 0)) ^ v8)))();
}

uint64_t sub_100A3F5A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5)
{
  STACK[0x658] = a5;
  STACK[0x660] = v6;
  STACK[0x650] = v5;
  *&STACK[0x6B0] = xmmword_1012372D0;
  *&STACK[0x670] = xmmword_1012372E0;
  *&STACK[0x680] = xmmword_1012372F0;
  *&STACK[0x690] = xmmword_101237300;
  *&STACK[0x6A0] = xmmword_101237310;
  return (*(STACK[0x668] + 8 * ((55 * ((a3 ^ 0x37FD8966) + LODWORD(STACK[0x628]) != 1081906188)) ^ (a3 + 7844))))();
}

uint64_t sub_100A3F6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unsigned int a31)
{
  if (a31 < 0xF56ADD2B != v31 - 177545877 < ((v33 + 1391017649) | 0x481Au) - 177564399)
  {
    v34 = v31 - 177545877 < ((v33 + 1391017649) | 0x481Au) - 177564399;
  }

  else
  {
    v34 = v31 - 177545877 > a31;
  }

  return (*(v32 + 8 * ((975 * v34) ^ (v33 + 1391031354))))();
}

uint64_t sub_100A3F768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v58 = v55;
  if (a39 < 0xB4B93274 != v57 - 2108663086 < ((v56 - 13533) | 0x134u) - 1262948160)
  {
    v59 = v57 - 2108663086 < ((v56 - 13533) | 0x134u) - 1262948160;
  }

  else
  {
    v59 = v57 - 2108663086 > a39;
  }

  return (*(v58 + 8 * ((v59 * ((v56 - 7281) ^ 0x590D)) ^ (v56 - 7281))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55);
}

uint64_t sub_100A3F7FC@<X0>(int a1@<W8>)
{
  if (((*(STACK[0x288] + ((*(STACK[0x288] + ((*(STACK[0x288] + ((*(STACK[0x288] + 2) + 4) & 0xFLL)) + 11) & 0xF)) + 7) & 0xF)) + 11) & 0xE) != 0)
  {
    v2 = (*(STACK[0x288] + ((*(STACK[0x288] + ((*(STACK[0x288] + ((*(STACK[0x288] + 2) + 4) & 0xFLL)) + 11) & 0xF)) + 7) & 0xF)) + 11) & 0xF;
  }

  else
  {
    v2 = 1;
  }

  return (*(v1 + 8 * a1))(v2 - 1, 28739, 0xFFFFFFFFLL);
}

uint64_t sub_100A3FBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, uint64_t a16, uint64_t a17)
{
  if (*(a17 + 8))
  {
    v18 = *(a17 + 24) == 0;
  }

  else
  {
    v18 = 1;
  }

  v20 = !v18 && a15 > 2114 * (((a7 - 927) | 0x4304) ^ 0x635Eu) - 16884;
  return (*(v17 + 8 * ((2758 * v20) ^ a7)))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_100A3FC60()
{
  v4 = v3 - 10378;
  v5 = (*(v1 + 8 * (v4 ^ 0x44E7)))();
  *(v0 + v2) = 0;
  return (*(v1 + 8 * v4))(v5);
}

uint64_t sub_100A3FCA4()
{
  LODWORD(STACK[0x71B4]) = v1;
  STACK[0x7ED8] += v0 ^ 0xFFFFFFFFFFFFEDFFLL;
  v2 = STACK[0x6A08];
  LODWORD(STACK[0x98F4]) = v1;
  STACK[0x6230] = v2;
  LODWORD(STACK[0x6974]) = 207907767;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100A3FD64@<X0>(int a1@<W0>, int a2@<W8>)
{
  STACK[0x9B8] = *(v6 + 8 * v7);
  STACK[0x8E0] = v3;
  STACK[0x998] = v2;
  STACK[0x9C8] = v4;
  return (*(v6 + 8 * ((a1 + a2 - 832) ^ (v5 - 1495) | a2)))();
}

uint64_t sub_100A3FDA4(uint64_t a1)
{
  v4 = STACK[0x9B8];
  *(v1 + 1424) = *(v3 + 8 * v2);
  return (*(v3 + 8 * ((v2 ^ 0x1111) + v2)))(a1, 4151849234, v4);
}

uint64_t sub_100A3FEA8@<X0>(int a1@<W8>)
{
  *(v2 + 3216) = v1;
  LODWORD(STACK[0x126C]) = STACK[0xE3C];
  return (*(v3 + 8 * a1))();
}

uint64_t sub_100A3FFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(a61) = LODWORD(STACK[0x204]) ^ LODWORD(STACK[0x2A8]) ^ HIDWORD(a58) ^ HIDWORD(a61) ^ a61 ^ HIDWORD(a60) ^ 0x6E74C2CF;
  v65 = 16843009 * LODWORD(STACK[0x2A0]);
  LODWORD(STACK[0x2A8]) = v65;
  LODWORD(STACK[0x270]) ^= v65;
  *(v64 - 240) = (16843009 * *(v64 - 240)) ^ 0xF2F2F2F2;
  v66 = *(*(v64 - 224) + 8 * v63);
  return v66(v66, a2, a3, a4, (v63 + 885) | 0xC2u, 0xC5ECF147E9C55600, 3201795596, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_100A40150@<X0>(int a1@<W8>)
{
  STACK[0x2020] = v1;
  v3 = STACK[0xBB8];
  STACK[0x2028] = STACK[0xBB8];
  return (*(v2 + 8 * (((v1 - v3 > (((a1 - 13648) | 0x120u) ^ 0x1521uLL)) * (a1 - 12911)) ^ a1)))();
}

uint64_t sub_100A402BC@<X0>(uint64_t a1@<X8>)
{
  *(v5 - 240) = (v3 - 457559516) ^ ((((v5 - 240) & 0xAE33EB04 | ~((v5 - 240) | 0xAE33EB04)) ^ 0xABEEFF7F) * v1);
  *(v2 + 1048) = a1;
  v6 = (*(v4 + 8 * (v3 ^ 0x819FBE49)))(v5 - 240);
  return (*(v4 + 8 * (v3 + 2120255259)))(v6);
}

uint64_t sub_100A40344()
{
  v5 = STACK[0x948];
  v6 = 1089234077 * (((v0 | 0x56297F8E) - (v0 & 0x56297F8E)) ^ 0xB674A3F6);
  *(v4 - 184) = (v3 ^ 0x1E01294C) - v6 + 1138202975 * LODWORD(STACK[0x844]) - 227240510;
  *(v4 - 216) = v6 + v3 + 6907;
  *(v4 - 208) = 0;
  *(v4 - 196) = 9 - v6;
  *(v4 - 176) = v5;
  *(v4 - 168) = v2;
  *(v4 - 192) = 0;
  v7 = (*(v1 + 8 * (v3 ^ 0x5B23)))(v4 - 216);
  return (*(v1 + 8 * v3))(v7);
}

uint64_t sub_100A40400@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, unint64_t *a48)
{
  v49 = STACK[0x1728];
  v50 = *a48;
  v51 = STACK[0x1310];
  v52 = &STACK[0x2280] + STACK[0x1310];
  STACK[0x5D0] = v52;
  STACK[0x1BD0] = (v52 + 16);
  STACK[0x1310] = v51 + 48;
  STACK[0x1A98] = 0x683CBC57EAB92A3ELL;
  STACK[0xD40] = 0;
  LODWORD(STACK[0xF7C]) = -769884012;
  STACK[0x1200] = 0;
  LODWORD(STACK[0xC74]) = -769884012;
  STACK[0x928] = v50;
  v54 = v50 == 0x79CEC8CF5A6FCEBALL || v49 == 0;
  return (*(v48 + 8 * (((((a1 + 15) ^ v54) & 1) * (((a1 - 541098446) & 0xA1DFF6EF) + 2120237043)) ^ a1)))();
}

uint64_t sub_100A40544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a8 + 68);
  v16 = STACK[0x730];
  v17 = *(*v11 + ((v8 ^ 0xFFFFD3E7) & (((a8 + 56) & 0xFFFFFFF8 ^ 0x86C1E0DA) + 1930471613 + ((2 * ((a8 + 56) & 0xFFFFFFF8)) & 0xD83C1B0)) & *STACK[0x730]));
  v18 = __ROR8__((a8 + 56) & 0xFFFFFFFFFFFFFFF8, 8);
  v19 = __ROR8__((((2 * (v17 + v18)) & 0x93E0E2E274FE818ELL) - (v17 + v18) + 0x360F8E8EC580BF38) ^ 0xC219DFC75ADE835FLL, 8);
  v20 = (((2 * (v17 + v18)) & 0x93E0E2E274FE818ELL) - (v17 + v18) + 0x360F8E8EC580BF38) ^ 0xC219DFC75ADE835FLL ^ __ROR8__(v17, 61);
  v21 = (0xB391E376299E51DLL - ((v19 + v20) | 0xB391E376299E51DLL) + ((v19 + v20) | 0xF4C6E1C89D661AE2)) ^ 0xE1F4A326A19670ABLL;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (((2 * (v23 + v22)) | 0x5CD03BC174923DAELL) - (v23 + v22) + 0x5197E21F45B6E129) ^ 0x8C1DC927827C274CLL;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0xE5AF1AB32EBD3CDDLL;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (((2 * ((v28 + v27) ^ 0x4FAB56C15E1B4FE1)) & 0xDDE7461920EEB746) - ((v28 + v27) ^ 0x4FAB56C15E1B4FE1) - 0x6EF3A30C90775BA4) ^ 0x197AC3C4FDD65C9CLL;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ v13;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ v14;
  *(a8 + 56) = (((__ROR8__(v33, 8) + (v33 ^ __ROR8__(v32, 61))) ^ v10) >> (8 * ((a8 + 56) & 7))) ^ (8 * v15);
  v34 = *(*v11 + (*v16 & (((((a8 + 57) & 0xAC1BBE58 | 0x53E441A7) + 1407467943 + ((a8 + 57) & 0x53E441A0 | 0xAC1BBE59)) & 0xFFFFFFF8) - 1511110672)));
  v35 = (v34 + __ROR8__((a8 + 57) & 0xFFFFFFFFFFFFFFF8, 8)) ^ v12;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0x153242EE3CF06A49;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (((2 * (v39 + v38)) | 0xD5D8C622D66B3888) - (v39 + v38) - 0x6AEC63116B359C44) ^ 0x4899B7D65300A5DFLL ^ __ROR8__(v38, 61);
  v41 = (__ROR8__((((2 * (v39 + v38)) | 0xD5D8C622D66B3888) - (v39 + v38) - 0x6AEC63116B359C44) ^ 0x4899B7D65300A5DFLL, 8) + v40) ^ 0xE5AF1AB32EBD3CDDLL;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (((2 * (v43 + v42)) & 0x8B53C73AD595FE36) - (v43 + v42) + 0x3A561C62953500E4) ^ 0xFD8BD5945970B7C5;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = __ROR8__(v44, 8);
  v47 = (((2 * (v46 + v45)) | 0x3653E945D4C625D4) - (v46 + v45) - 0x1B29F4A2EA6312EALL) ^ 0xB30FD407B3B1C892;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = __ROR8__(v47, 8);
  *(a8 + 57) = ((v15 >> 5) - ((v15 >> 4) & 0x5E) - 81) ^ 0xAF ^ (((__ROR8__((0xB2D6E09208129004 - ((v49 + v48) | 0xB2D6E09208129004) + ((v49 + v48) | 0x4D291F6DF7ED6FFBLL)) ^ 0x12A4F353547565E0, 8) + ((0xB2D6E09208129004 - ((v49 + v48) | 0xB2D6E09208129004) + ((v49 + v48) | 0x4D291F6DF7ED6FFBLL)) ^ 0x12A4F353547565E0 ^ __ROR8__(v48, 61))) ^ v10) >> (8 * ((a8 + 57) & 7)));
  v50 = STACK[0x9C0];
  v51 = STACK[0x9C0];
  v52 = *(STACK[0x9C0] + 68);
  v53 = STACK[0x9C0] + 58;
  v54 = *(*v11 + ((*v16 & ((v53 & 0xFFFFFFF8) - 103642729)) & 0xFFFFFFFFFFFFFFF8));
  v55 = __ROR8__(v53 & 0xFFFFFFFFFFFFFFF8, 8);
  v56 = (((2 * (v55 + v54)) | 0xD0D806CFA5E445F2) - (v55 + v54) + 0x1793FC982D0DDD07) ^ 0x1C7A522E4DAC1E9ELL;
  v57 = v56 ^ __ROR8__(v54, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ 0x153242EE3CF06A49;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ 0x2275D4C73835399BLL;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = __ROR8__(v60, 8);
  v63 = (v62 + v61 - ((2 * (v62 + v61)) & 0xEF6C8572D40A53A8) + 0x77B642B96A0529D4) ^ 0x9219580A44B81509;
  v64 = v63 ^ __ROR8__(v61, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ 0xC7DDC9F6CC45B721;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ v13;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = __ROR8__(v67, 8);
  v70 = (((2 * (v69 + v68)) & 0xF69A32A246177850) - (v69 + v68) - 0x7B4D1951230BBC29) ^ 0xDB3F0A907F6C49CCLL;
  *(v50 + 58) = ((v52 >> 13) - ((v52 >> 12) & 0x88) + 68) ^ (((__ROR8__(v70, 8) + (v70 ^ __ROR8__(v68, 61))) ^ v10) >> (8 * (v53 & 7u))) ^ 0x44;
  v71 = *(*v11 + ((*v16 & (((v50 + 59) & 0xF0B289D8) + ((v50 + 59) & 0xF4D7620 | 0xF0B289D8) + 153092028)) & 0xFFFFFFFFFFFFFFF8));
  v72 = (v71 + __ROR8__((v50 + 59) & 0xFFFFFFFFFFFFFFF8, 8)) ^ v12;
  v73 = v72 ^ __ROR8__(v71, 61);
  v74 = __ROR8__(v72, 8);
  v75 = (0xAB095594142F17FDLL - ((v74 + v73) | 0xAB095594142F17FDLL) + ((v74 + v73) | 0x54F6AA6BEBD0E802)) ^ 0x41C4E885D720824BLL;
  v76 = v75 ^ __ROR8__(v73, 61);
  v77 = (__ROR8__(v75, 8) + v76) ^ 0x2275D4C73835399BLL;
  v78 = v77 ^ __ROR8__(v76, 61);
  v79 = (__ROR8__(v77, 8) + v78) ^ 0xE5AF1AB32EBD3CDDLL;
  v80 = v79 ^ __ROR8__(v78, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ 0xC7DDC9F6CC45B721;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = __ROR8__(v81, 8);
  v84 = (0x4A7F908C39291B27 - ((v83 + v82) | 0x4A7F908C39291B27) + ((v83 + v82) | 0xB5806F73C6D6E4D8)) ^ 0x1DA64FD69F043EA0;
  v85 = v84 ^ __ROR8__(v82, 61);
  v86 = (__ROR8__(v84, 8) + v85) ^ v14;
  v87 = v86 ^ __ROR8__(v85, 61);
  v88 = __ROR8__(v86, 8);
  *(v50 + 59) = ((v52 >> 21) - ((v52 >> 20) & 0x1E) - 113) ^ (((v88 + v87 - ((2 * (v88 + v87)) & 0xF621DA0D83C573FELL) + 0x7B10ED06C1E2B9FFLL) ^ 0xBAD325D46527F1D7) >> (8 * ((v50 + 59) & 7))) ^ 0x8F;
  v89 = *(v51 + 64);
  HIDWORD(v88) = v89;
  LODWORD(v88) = *(v51 + 68);
  v90 = *(*v11 + ((*v16 & (((v51 + 60) & 0xF1B83978) + ((v51 + 60) & 0xE47C680 | 0xF1B8397C) + 135942170)) & 0xFFFFFFFFFFFFFFF8));
  LOBYTE(v86) = (v88 >> 29) - ((2 * (v88 >> 29)) & 0x83) + 65;
  v91 = (v90 + __ROR8__((v51 + 60) & 0xFFFFFFFFFFFFFFF8, 8)) ^ v12;
  v92 = v91 ^ __ROR8__(v90, 61);
  v93 = __ROR8__(v91, 8);
  v94 = (((2 * (v93 + v92)) & 0xA5E2963EB4D40BBELL) - (v93 + v92) - 0x52F14B1F5A6A05E0) ^ 0xB83CF60E99659069;
  v95 = v94 ^ __ROR8__(v92, 61);
  v96 = (__ROR8__(v94, 8) + v95) ^ 0x2275D4C73835399BLL;
  v97 = v96 ^ __ROR8__(v95, 61);
  v98 = (__ROR8__(v96, 8) + v97) ^ 0xE5AF1AB32EBD3CDDLL;
  v99 = v98 ^ __ROR8__(v97, 61);
  v100 = (__ROR8__(v98, 8) + v99) ^ 0xC7DDC9F6CC45B721;
  v101 = __ROR8__(v100, 8);
  v102 = v100 ^ __ROR8__(v99, 61);
  v103 = (v101 + v102) ^ v13;
  v104 = v103 ^ __ROR8__(v102, 61);
  v105 = __ROR8__(v103, 8);
  v106 = (((2 * (v105 + v104)) & 0x909FC9BEEC5D0218) - (v105 + v104) - 0x484FE4DF762E810DLL) ^ 0xE83DF71E2A4974E8;
  v107 = v106 ^ __ROR8__(v104, 61);
  v108 = __ROR8__(v106, 8);
  *(v51 + 60) = v86 ^ 0x41 ^ (((0x2F465AB2993DED24 - ((v108 + v107) | 0x2F465AB2993DED24) + ((v108 + v107) | 0xD0B9A54D66C212DBLL)) ^ 0x117A6D9FC2075AF3) >> (8 * ((v51 + 60) & 7)));
  v109 = *(*v11 + (((((v51 + 61) & 0xFFFFFFF8) - 103642729) & *v16) & 0xFFFFFFFFFFFFFFF8));
  v110 = __ROR8__((v51 + 61) & 0xFFFFFFFFFFFFFFF8, 8);
  v111 = __ROR8__((((2 * (v109 + v110)) & 0x292439626F7F746) - (v109 + v110) + 0x7EB6DE34EC84045CLL) ^ 0x8AA08F7D73DA383BLL, 8);
  v112 = (((2 * (v109 + v110)) & 0x292439626F7F746) - (v109 + v110) + 0x7EB6DE34EC84045CLL) ^ 0x8AA08F7D73DA383BLL ^ __ROR8__(v109, 61);
  v113 = (((2 * (v111 + v112)) | 0xE05C2FA7D003F5EELL) - (v111 + v112) - 0x702E17D3E801FAF7) ^ 0x651C553DD4F190BELL;
  v114 = v113 ^ __ROR8__(v112, 61);
  v115 = (__ROR8__(v113, 8) + v114) ^ 0x2275D4C73835399BLL;
  v116 = v115 ^ __ROR8__(v114, 61);
  v117 = (__ROR8__(v115, 8) + v116) ^ 0xE5AF1AB32EBD3CDDLL;
  v118 = __ROR8__(v117, 8);
  v119 = v117 ^ __ROR8__(v116, 61);
  v120 = (0x970AE8021DBDFE43 - ((v118 + v119) | 0x970AE8021DBDFE43) + ((v118 + v119) | 0x68F517FDE24201BCLL)) ^ 0xAF28DE0B2E07B69DLL;
  v121 = v120 ^ __ROR8__(v119, 61);
  v122 = (__ROR8__(v120, 8) + v121) ^ v13;
  v123 = v122 ^ __ROR8__(v121, 61);
  v124 = (__ROR8__(v122, 8) + v123) ^ v14;
  v125 = v124 ^ __ROR8__(v123, 61);
  v126 = __ROR8__(v124, 8);
  *(v51 + 61) = ((v89 >> 5) - ((v89 >> 4) & 0xDE) + 111) ^ 0x6F ^ (((v126 + v125 - ((2 * (v126 + v125)) & 0x58A823941FDC1ED8) - 0x53ABEE35F011F094) ^ 0x6D97D918AB2B4744uLL) >> (8 * ((v51 + 61) & 7)));
  v127 = STACK[0x9C0];
  v128 = STACK[0x9C0] + 62;
  v129 = *(*v11 + ((*v16 & ((v128 & 0xFFFFFFF8) - 103642729)) & 0xFFFFFFFFFFFFFFF8));
  LODWORD(v124) = *(STACK[0x9C0] + 64);
  v130 = __ROR8__(v128 & 0xFFFFFFFFFFFFFFF8, 8);
  v131 = (0x2B4690FFDE40D071 - ((v130 + v129) | 0x2B4690FFDE40D071) + ((v130 + v129) | 0xD4B96F0021BF2F8ELL)) ^ 0x20AF3E49BEE113E9;
  v132 = v131 ^ __ROR8__(v129, 61);
  v133 = __ROR8__(v131, 8);
  v134 = (v133 + v132 - ((2 * (v133 + v132)) & 0x930D27EEE949A134) - 0x36796C088B5B2F66) ^ 0xDCB4D1194854BAD3;
  v135 = v134 ^ __ROR8__(v132, 61);
  v136 = __ROR8__(v134, 8);
  v137 = (((2 * (v136 + v135)) & 0x14206CC196697F86) - (v136 + v135) + 0x75EFC99F34CB403CLL) ^ 0x579A1D580CFE79A7;
  v138 = v137 ^ __ROR8__(v135, 61);
  v139 = __ROR8__(v137, 8);
  v140 = (v139 + v138 - ((2 * (v139 + v138)) & 0x6DD1F51FE345BB98) + 0x36E8FA8FF1A2DDCCLL) ^ 0xD347E03CDF1FE111;
  v141 = v140 ^ __ROR8__(v138, 61);
  v142 = (__ROR8__(v140, 8) + v141) ^ 0xC7DDC9F6CC45B721;
  v143 = v142 ^ __ROR8__(v141, 61);
  v144 = (__ROR8__(v142, 8) + v143) ^ v13;
  v145 = v144 ^ __ROR8__(v143, 61);
  v146 = (__ROR8__(v144, 8) + v145) ^ v14;
  *(v127 + 62) = ((~(v124 >> 12) | 0x25) + (v124 >> 13) + 110) ^ 0x6D ^ (((__ROR8__(v146, 8) + (v146 ^ __ROR8__(v145, 61))) ^ v10) >> (8 * (v128 & 7u)));
  LOBYTE(v128) = (v124 >> 21) - ((v124 >> 20) & 0xF2);
  v147 = *(*v11 + (((((v127 + 63) & 0xFFFFFFF8) - 103642729) & *v16) & 0xFFFFFFFFFFFFFFF8));
  v148 = (v147 + __ROR8__((v127 + 63) & 0xFFFFFFFFFFFFFFF8, 8)) ^ v12;
  v149 = v148 ^ __ROR8__(v147, 61);
  v150 = (__ROR8__(v148, 8) + v149) ^ 0x153242EE3CF06A49;
  v151 = v150 ^ __ROR8__(v149, 61);
  v152 = (__ROR8__(v150, 8) + v151) ^ 0x2275D4C73835399BLL;
  v153 = __ROR8__(v152, 8);
  v154 = v152 ^ __ROR8__(v151, 61);
  v155 = (v153 + v154 - ((2 * (v153 + v154)) & 0x6CB310B75FF8C11ALL) - 0x49A677A450039F73) ^ 0x53F692E881415C50;
  v156 = v155 ^ __ROR8__(v154, 61);
  v157 = __ROR8__(v155, 8);
  v158 = (v157 + v156 - ((2 * (v157 + v156)) & 0x367E237D846AE5F8) - 0x64C0EE413DCA8D04) ^ 0x5CE2D8480E70C5DDLL;
  v159 = v158 ^ __ROR8__(v156, 61);
  v160 = __ROR8__(v158, 8);
  v161 = (0xDAE504FFADA17A2DLL - ((v160 + v159) | 0xDAE504FFADA17A2DLL) + ((v160 + v159) | 0x251AFB00525E85D2)) ^ 0x8D3CDBA50B8C5FAALL;
  v162 = v161 ^ __ROR8__(v159, 61);
  v163 = (__ROR8__(v161, 8) + v162) ^ v14;
  *(v127 + 63) = (v128 - 7) ^ (((__ROR8__(v163, 8) + (v163 ^ __ROR8__(v162, 61))) ^ v10) >> (8 * ((v127 + 63) & 7))) ^ 0xF9;
  return (*(v9 + 8 * v8))();
}

uint64_t sub_100A41344(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, int a6, unsigned int a7, uint64_t a8)
{
  v22 = v8 + (a6 - 1243034739);
  v23 = v22 & 0xFFFFFFF8;
  v24 = *(a5 + (a4 & ((v22 & 0xFFFFFFF8 ^ v14) + ((2 * (v22 & 0xFFFFFFF8)) & 0x806AAD10) - 1173953906) & 0xFFFFFFF8));
  v25 = *v22;
  v26 = __ROR8__(v22 & 0xFFFFFFFFFFFFFFF8, 8);
  v27 = (((2 * (v26 + v24)) | 0xAD0AD9ED9AEC44D6) - (v26 + v24) + 0x297A93093289DD95) ^ 0x6E0D6D222CB14138;
  v28 = v27 ^ __ROR8__(v24, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (((2 * (v29 + v28)) | 0x95AA5E77B4EBE7CALL) - (v29 + v28) - 0x4AD52F3BDA75F3E5) ^ 0x721D9E513D709B92;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (((2 * (v32 + v31)) & 0x414EB5F2A7CC18EALL) - (v32 + v31) + 0x5F58A506AC19F38ALL) ^ 0xBAD8147B20DC16DBLL;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0xE1A1FD5BD155F97ALL;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xDA604B0C03A2BF99;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (((2 * (v39 + v38)) & 0x596FFC6339B123DALL) - (v39 + v38) + 0x534801CE63276E12) ^ 0xA97DE303A8195FD5;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = __ROR8__(v40, 8);
  v43 = (((2 * (v42 + v41)) & 0xE207835C1ECE206ALL) - (v42 + v41) - 0x7103C1AE0F671036) ^ 0x5C0C32B7D07D3C64;
  LOBYTE(v22) = 8 * (v22 & 7);
  v44 = *(a5 + (((v23 & a3) + (v23 | (a3 + 4)) - 367132636) & a4));
  v45 = (__ROR8__(v43, 8) + (v43 ^ __ROR8__(v41, 61))) ^ 0xF4730B31AE70757BLL;
  v46 = (v12 - ((v26 + v44) | v12) + ((v26 + v44) | 0x810B52FAA15513B3)) ^ 0x3983532E409270E0;
  v47 = v46 ^ __ROR8__(v44, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ 0x38C8B16AE7056877;
  v49 = __ROR8__(v48, 8);
  v50 = v48 ^ __ROR8__(v47, 61);
  v51 = (((2 * (v49 + v50)) & 0x3815B503F1443586) - (v49 + v50) - 0x1C0ADA81F8A21AC4) ^ 0x67594038B98006DLL;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (((2 * (v53 + v52)) & 0x579542114F68A64) - (v53 + v52) + v21) ^ v9;
  v55 = v54 ^ __ROR8__(v52, 61);
  v56 = __ROR8__(v54, 8);
  v57 = (a2 - ((v56 + v55) | a2) + ((v56 + v55) | a8)) ^ v13;
  v58 = v57 ^ __ROR8__(v55, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ 0xFA35E2CDCB3E31C7;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ 0xD2F00CE620E5D3AELL;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = __ROR8__(v61, 8);
  v64 = (-55 - 68 * ((((v45 >> v22) ^ v25 ^ 2) + 84) ^ (((v45 >> v22) ^ v25 ^ 0x36) + 104) ^ (((v45 >> v22) ^ v25 ^ 0x34) + 102))) * (((((v16 & (2 * (v63 + v62))) - (v63 + v62) + v17) ^ v15) >> v22) ^ v25);
  v65 = ((((a6 ^ 7) + 12) ^ a6) ^ ((a6 ^ 4) + 9)) & 0xF ^ 3;
  *(v18 + v65) ^= v64;
  v66 = a6 + v19 < v10;
  if (v10 < v11 != (a6 + v19) < 0xA3D9DF27)
  {
    v66 = v10 < v11;
  }

  return (*(STACK[0x668] + 8 * ((!v66 * v20) ^ a7)))();
}

uint64_t sub_100A41798(uint64_t a1)
{
  v8 = *(v6 + 40);
  v9 = *(v1 + 8 * ((v5 - 254) ^ 0x245B));
  *v9 = &_mh_execute_header;
  v10 = 1964904101 * ((((v7 - 224) | 0xFED2FDE3) - ((v7 - 224) & 0xFED2FDE3)) ^ 0x4F01667);
  v11 = (v7 - 224);
  v11[6] = *(v1 + 8 * ((v5 - 254) ^ 0x2284)) - 8;
  v11[1] = a1;
  v11[2] = v2;
  *(v7 - 184) = v10 ^ (1021 * ((v5 - 254) ^ 0x27DA)) ^ 0xB9310985 ^ (v3 - ((9 * ((v5 - 254) ^ 0x242E) - 926899333) & (2 * v3)) - 463445072);
  *(v7 - 180) = v5 - 254 - v10 - 1907;
  v11[3] = v9;
  v11[4] = v8;
  (*(v4 + 8 * (v5 + 21521)))(v7 - 224);
  v13 = *(v7 - 224) == 1789310674 && *(*(&off_101353600 + v5 - 9165) - 4) == 0;
  return (*(v4 + 8 * ((54 * v13) ^ (v5 - 254))))();
}

uint64_t sub_100A4198C()
{
  v8 = STACK[0x1C1C];
  STACK[0xCD0] = v0;
  LODWORD(STACK[0x2170]) = v5;
  LOWORD(STACK[0x2176]) = v2;
  LODWORD(STACK[0x2178]) = v8;
  LODWORD(STACK[0x217C]) = STACK[0x1340];
  *(v6 + 2640) = STACK[0x1080];
  *(v6 + 160) = STACK[0xEC8];
  return (*(v7 + 8 * ((((v1 - 11720) ^ 0x7E603DFA ^ (v3 - 110)) * (v0 == v4)) ^ v1)))(0x224C09CA440C0C0BLL);
}

uint64_t sub_100A41A1C@<X0>(int a1@<W0>, int a2@<W2>, int a3@<W3>, int a4@<W5>, int a5@<W7>, int a6@<W8>)
{
  v20 = a4 & 0xEEB4C590 ^ 0x934FFAEF ^ (a1 ^ 0x7CBA0757) & (a4 ^ v15);
  v21 = *(v6 + 4 * (*(v7 + (a5 + v14)) - 70));
  v22 = *(v8 + 4 * (a5 + v14)) + (((a3 ^ 0x7C3D9ADB) - 2084412123) ^ ((a3 ^ 0x50E5C219) - 1357234713) ^ ((a3 ^ 0x412965FA) - 1093232122)) + ((v20 + v15 - ((v20 << (((a2 + 56) & 0xFE) + 39)) & 0xDBE27A70)) ^ a6) - 1907065858 + (((v21 ^ 0xFE155E89) + 32153975) ^ ((v21 ^ 0x32D1D119) - 852611353) ^ ((v21 ^ 0xB87EEFA) - 193457914));
  v23 = *(v9 + (a5 + v14));
  LOBYTE(v20) = ((2 * (v23 + 30)) & 0x28 ^ 0x94) & (v23 + 30) ^ 0x67;
  v24 = (v23 + 30) ^ (2 * ((4 * v20) & 0x64 ^ v20));
  v25 = v22 ^ ((v22 ^ 0x735879E0) + 803123664) ^ ((v22 ^ 0xE2247EE7) - 1096632631) ^ ((v22 ^ 0xCD63CF2A) - 1847261434) ^ ((v22 ^ 0xFF66FFFD) - 1545586733) ^ 0xA37937D0;
  v26 = (((a1 ^ 0xAD7B7B00) + 1384416512) ^ ((a1 ^ 0xD24B5BB1) + 766813263) ^ ((a1 ^ 0x12C11D89) - 314645897)) - 1655501933 + ((v25 << (v24 & 0x1A ^ 0x12) << (v24 & 5)) | (v25 >> (v12 - v23)));
  v27 = (v26 ^ 0x80DFAD84) & (2 * (v26 & 0xD09E31A5)) ^ v26 & 0xD09E31A5;
  v28 = ((2 * (v26 ^ 0x1CFEFC4)) ^ 0xA2A3BCC2) & (v26 ^ 0x1CFEFC4) ^ (2 * (v26 ^ 0x1CFEFC4)) & 0xD151DE60;
  v29 = v28 ^ 0x51504221;
  v30 = (v28 ^ 0x80018C00) & (4 * v27) ^ v27;
  v31 = ((4 * v29) ^ v17) & v29 ^ (4 * v29) & 0xD151DE60;
  v32 = (v31 ^ 0x41415800) & (16 * v30) ^ v30;
  v33 = ((16 * (v31 ^ 0x90108661)) ^ 0x151DE610) & (v31 ^ 0x90108661) ^ (16 * (v31 ^ 0x90108661)) & 0xD151DE60;
  v34 = v32 ^ 0xD151DE61 ^ (v33 ^ 0x1111C600) & (v32 << 8);
  return (*(v10 + 8 * ((((a5 + 1 + v14) < 0x40) | (4 * ((a5 + 1 + v14) < 0x40))) ^ a2)))(v26 ^ (2 * ((v34 << 16) & v13 ^ v34 ^ ((v34 << 16) ^ 0x5E610000) & (((v33 ^ 0xC0401861) << 8) & v13 ^ (((v33 ^ 0xC0401861) << 8) ^ v11) & (v33 ^ 0xC0401861) ^ 0x10000))) ^ v16);
}

uint64_t sub_100A41E40(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  v15 = (v8 - 1381546948) & 0x52587BBA;
  STACK[0x420] = v15;
  v16 = *(v11 + 8 * (((v9 < v15 - 11162) * (v8 - 27521)) | (v8 - 16814)));
  *&STACK[0x510] = vdupq_n_s64(0x2AA0ABC1F94F07A2uLL);
  *&STACK[0x500] = vdupq_n_s64(0xBA11945B63D2E5C7);
  *&STACK[0x4F0] = vdupq_n_s64(0x9E48E87A9E6AD591);
  *&STACK[0x4E0] = vdupq_n_s64(0xB8411BA9A731DA24);
  *&STACK[0x4D0] = vdupq_n_s64(a8);
  *&STACK[0x4B0] = vdupq_n_s64(0xF42A9DEE9A7260EALL);
  *&STACK[0x4A0] = vdupq_n_s64(0x5EAB108B2C6CF8AuLL);
  *&STACK[0x490] = vdupq_n_s64(0xC2426338D8F8292BLL);
  *&STACK[0x480] = vdupq_n_s64(v10);
  *&STACK[0x470] = vdupq_n_s64(a7);
  *&STACK[0x610] = vdupq_n_s64(0x83899CE40040063ALL);
  *&STACK[0x4C0] = vdupq_n_s64(0x3E3B318DFFDFFCE3uLL);
  *&STACK[0x600] = vdupq_n_s64(0xC418C220ED9DD338);
  *&STACK[0x630] = vdupq_n_s64(0xCC6B1AA49436A86CLL);
  *&STACK[0x5F0] = vdupq_n_s64(a1);
  *&STACK[0x650] = vdupq_n_s64(0x424A4E908EF1F472uLL);
  *&STACK[0x520] = vdupq_n_s64(0x9827CF4CE56C3ECuLL);
  *&STACK[0x770] = vdupq_n_s64(0xAD22C7B496DB2F16);
  *&STACK[0x760] = vdupq_n_s64(0xA96E9C25B4926875);
  *&STACK[0x690] = vdupq_n_s64(0x209044526AC00001uLL);
  *&STACK[0x730] = vdupq_n_s64(v12);
  *&STACK[0x6E0] = vdupq_n_s64(0x9307A233A3552064);
  *&STACK[0x720] = vdupq_n_s64(0x367C2EE62E556FCDuLL);
  *&STACK[0x6B0] = vdupq_n_s64(0x9967FA0BA4337986);
  *&STACK[0x6D0] = vdupq_n_s64(0x472F9ACC3636AADEuLL);
  *&STACK[0x710] = vdupq_n_s64(0x70E93863C81BB7FFuLL);
  *&STACK[0x460] = vdupq_n_s64(0x19BD561D2BFA5152uLL);
  *&STACK[0x780] = vdupq_n_s64(0xBDB5B16F710E0B8DLL);
  *&STACK[0x6F0] = vdupq_n_s64(v13);
  *&STACK[0x740] = vdupq_n_s64(0x47B76BB18D449D98uLL);
  *&STACK[0x790] = vdupq_n_s64(0xACBA46F27EE00801);
  *&STACK[0x5E0] = vdupq_n_s64(v14);
  *&STACK[0x5D0] = vdupq_n_s64(0x4E7AE938E8DB7528uLL);
  *&STACK[0x450] = vdupq_n_s64(0x4E9FA08069BD117DuLL);
  return v16();
}

uint64_t sub_100A4216C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = (LODWORD(STACK[0x6D0]) - 859706693);
  v8 = *(STACK[0x6D8] + 8 * (v6 - 20829));
  LODWORD(STACK[0x6C8]) = v6 - 1335;
  return v8(1702977088, a2, 1053257589, 2979689024, 520869224, a6, 1702952960, v7);
}

uint64_t sub_100A42270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  *(&STACK[0x280] + a24 + 196) = 0x1F562D8E1B3E0D8ELL;
  v55 = &STACK[0x280] + a24 + 196;
  *(v55 + 1) = 0xA90C667217B34D8ELL;
  v56 = (&STACK[0x280] + v51);
  STACK[0x250] = v55;
  *v56 = 0xF0F0F0F0F0F0F0FLL;
  v56[1] = 0xF0F0F0F0F0F0F0FLL;
  v56[2] = 0xF0F0F0F0F0F0F0FLL;
  v56[3] = 0xF0F0F0F0F0F0F0FLL;
  v56[4] = 0xF0F0F0F0F0F0F0FLL;
  v56[5] = 0xF0F0F0F0F0F0F0FLL;
  v56[6] = 0xF0F0F0F0F0F0F0FLL;
  v56[7] = 0xF0F0F0F0F0F0F0FLL;
  *(v55 - 76) = 0xF0F0F0F0F0F0F0FLL;
  *(v55 - 68) = 0xF0F0F0F0F0F0F0FLL;
  *(v55 - 60) = 0xF0F0F0F0F0F0F0FLL;
  *(v55 - 52) = 0xF0F0F0F0F0F0F0FLL;
  *(v55 - 44) = 0xF0F0F0F0F0F0F0FLL;
  *(v55 - 36) = 0xF0F0F0F0F0F0F0FLL;
  *(v55 - 28) = 0xF0F0F0F0F0F0F0FLL;
  *(v55 - 84) = 0xF0F0F0F0F0F0F0FLL;
  return (*(v54 + 8 * ((2 * (((v52 + 2) ^ (STACK[0x250] > &STACK[0x280] + v51)) & 1)) & 0xFB | (4 * (((v52 + 2) ^ (STACK[0x250] > &STACK[0x280] + v51)) & 1)) | v52)))(a1, &STACK[0x280] + a24, a3, &STACK[0x280] + v51, &STACK[0x280] + a24 + 112, a6, a7, a8, a9, a10, a11, a12, a13, a3 + (v53 - 20), a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, (v52 ^ 0xFFFFC8A1) + v53, a27, &STACK[0x280] + a24 + 176, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51);
}

uint64_t sub_100A42438()
{
  v1 = STACK[0xDCB8];
  v2 = *(STACK[0xDCB8] + (5621 * v0 + 26193860) % 0x1808u);
  LODWORD(STACK[0x5440]) = v0;
  v3 = *(v1 + (5621 * (v2 | ((v2 < 0x4C) << 8)) + 3912216) % 0x1808);
  v4 = (6419 * v0 + 36215998) % 0x2240u;
  v5 = STACK[0xDCB0];
  STACK[0x5610] = v4;
  STACK[0x5600] = v5;
  *(v5 + 4 * v4) = 1111003110;
  v6 = v3 ^ (2 * ((v3 ^ 0x34) & (2 * ((v3 ^ 0x34) & (2 * ((v3 ^ 0x34) & (2 * ((v3 ^ 0x34) & (2 * (v3 & 0x34)) ^ v3 & 0x34)) ^ v3 & 0x34)) ^ v3 & 0x34)) ^ (v3 & 0x34 | 0x40)));
  LODWORD(STACK[0x5540]) = v6 ^ 0x34;
  LODWORD(STACK[0x5530]) = v6 & 0x74;
  return (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x5640])))();
}

uint64_t sub_100A425B4(int8x16_t a1, int8x16_t a2, double a3, double a4, int8x16_t a5, int8x16_t a6, int32x4_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15)
{
  a2.i64[0] = *(v19 + 4);
  a2.i32[2] = *(v19 + 12);
  v22 = vextq_s8(a1, a2, 0xCuLL);
  a2.i32[3] = *(v18 + 16);
  v23 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(a2, a8), vandq_s8(v22, a5)), 1uLL), *(v19 - 908));
  v24.i32[0] = *(v20 + 4 * (*(v19 + 4) & v16));
  v24.i32[1] = *(v20 + 4 * (*(v19 + 8) & 1));
  v24.i32[2] = *(v20 + 4 * (a2.i8[8] & 1));
  v24.i32[3] = *(v20 + 4 * (a2.i8[12] & 1));
  *v19 = veorq_s8(vaddq_s32(vsubq_s32(v23, vandq_s8(vaddq_s32(v23, v23), a6)), a7), v24);
  return (*(v21 + 8 * (((v17 != 0) * a15) ^ (v15 + 1775))))(a2);
}

uint64_t sub_100A42714()
{
  v2 = v0 - 8027;
  v3 = HIBYTE(STACK[0x3D10]);
  STACK[0x3D98] = v3;
  v4 = STACK[0x3B38];
  v4[1422] = v3;
  v4[1425] = v3;
  v4[1439] = v3;
  v4[1424] = v3;
  v4[1428] = v3;
  v4[1431] = v3;
  v4[1434] = v3;
  v4[1423] = v3;
  *STACK[0x3C50] = v3;
  v4[1436] = v3;
  v4[1433] = v3;
  v4[1430] = v3;
  v4[1426] = v3;
  v4[1442] = v3;
  v4[1437] = v3;
  v4[1427] = v3;
  v4[1432] = v3;
  v4[1429] = v3;
  v4[1438] = v3;
  v4[1447] = v3;
  v4[1443] = v3;
  v4[1445] = v3;
  v4[1450] = v3;
  v4[1449] = v3;
  v4[1446] = v3;
  v4[1448] = v3;
  v4[1452] = v3;
  v4[1451] = v3;
  v4[1441] = v3;
  v4[1444] = v3;
  v4[1435] = v3;
  v4[1440] = v3;
  STACK[0x3980] = v3;
  return (*(v1 + 8 * (v2 | 0x11)))();
}

uint64_t sub_100A42838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v40 = (*(v32 + 8 * (v30 ^ 0x5374)))((v34 + v33), a30) == 0;
  v36 = *v31;
  *(v35 - 136) = (v30 - 1723123417) ^ (1917435887 * ((1675738417 - ((v35 - 144) | 0x63E1BD31) + ((v35 - 144) | 0x9C1E42CE)) ^ 0x7AA519C8));
  *(v35 - 144) = v36;
  (*(v32 + 8 * (v30 + 19532)))(v35 - 144);
  v31[1] = *(a30 + 48);
  v31[2] = *(a30 + 56);
  v37 = *v31;
  *(v35 - 144) = (v30 + 1717158988) ^ (1964904101 * (((v35 - 144) & 0x45B4430 | ~((v35 - 144) | 0x45B4430)) ^ 0x186504B));
  *(v35 - 136) = v37;
  v38 = (*(v32 + 8 * (v30 + 19553)))(v35 - 144);
  return (*(v32 + 8 * ((v40 * (((v30 - 11944) | 0x3680) - 14253)) ^ v30)))(v38);
}

uint64_t sub_100A42A10()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x241B)))();
  return (*(v1 + 8 * (v0 + 5311)))(v2);
}

uint64_t sub_100A42A40(uint64_t a1, unint64_t a2, unint64_t a3)
{
  LODWORD(STACK[0x3AD8]) = 0;
  STACK[0x3AD0] = v4 ^ 0x452CB12213579E7BLL ^ __ROR8__(v4 ^ 0x452CB12213579E7BLL, 7) ^ ((v4 ^ 0x452CB12213579E7BuLL) >> 41) ^ ((v4 ^ 0x452CB12213579E7BLL) << 23);
  v11 = v3 ^ v7 & ~v9 ^ v10 & v6 ^ v5 ^ 0xC18B834AD969F7C4;
  v12 = v11 >> ((3 * (v8 ^ 0xFE)) ^ 0x56);
  v13 = v11 ^ __ROR8__(v11, 61) ^ (v11 << 25);
  STACK[0x3AC8] = v8;
  v14 = STACK[0x3AE0];
  LODWORD(v11) = *(STACK[0x3AE0] + 4647 * (a3 ^ 0xFE) + 13123128 - 6784 * (((1266205 * (4647 * (a3 ^ 0xFEu) + 13123128)) >> 32) >> 1));
  STACK[0x3A70] = HIWORD(a2);
  STACK[0x3A58] = HIDWORD(a2);
  STACK[0x3AE8] = v13 ^ v12;
  v16 = 4647 * ((BYTE1(a2) + 111) ^ 0x1C) + 4767822;
  STACK[0x3A38] = a2 >> 16;
  v17 = *(v14 + v16 - 6784 * (((1266205 * v16) >> 32) >> 1));
  v18 = *(v14 + 4647 * (BYTE2(a3) ^ 0xB8) + 9544938 - 6784 * (((1266205 * (4647 * (BYTE2(a3) ^ 0xB8u) + 9544938)) >> 32) >> 1));
  STACK[0x3A48] = a2 >> 24;
  STACK[0x3A68] = HIWORD(a3);
  STACK[0x3A28] = a3 >> 8;
  STACK[0x3A78] = HIBYTE(a3);
  v19 = v11 - 71;
  v20 = 4647 * (HIBYTE(a2) ^ 0x9A) + 25186740;
  LODWORD(v11) = *(v14 + 4647 * (BYTE3(a3) ^ 0x9A) + 25186740 - 6784 * (((1266205 * (4647 * (BYTE3(a3) ^ 0x9A) + 25186740)) >> 32) >> 1));
  LODWORD(STACK[0x3A80]) = (v19 ^ (v19 << 6) ^ (4 * v19) ^ 0xFFFFFFFE) + 26;
  LODWORD(STACK[0x3A30]) = ((v18 - 87) ^ 0xFFFFFFFB) + 85;
  v21 = *(v14 + v20 - 6784 * (((1266205 * v20) >> 32) >> 1));
  STACK[0x3A50] = a3 >> 40;
  LODWORD(STACK[0x3A60]) = (v21 ^ 0xFFFFFFC3) + 85;
  LODWORD(STACK[0x3A20]) = ((v17 ^ 0xE3) >> 3) | (32 * (v17 ^ 0xFFFFFFE3));
  LODWORD(STACK[0x3A40]) = (v11 ^ 0xFFFFFFC3) + 85;
  LODWORD(STACK[0x3A18]) = a2;
  return (*(STACK[0x3AC0] + 8 * STACK[0x3AC8]))();
}

uint64_t sub_100A42D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  *(a2 + 64) = 0;
  *(a2 + 88) = -2057643115;
  *(a2 + 72) = 567089508;
  *(a2 + 76) = -1455058452;
  *(a2 + 80) = -567089509;
  *(a2 + 84) = 1455058451;
  *(a2 + 104) = 0x200000014;
  LODWORD(a31) = v58 + (v59 ^ 0x1736) - 177553695;
  LODWORD(a25) = v58 - 88;
  return (*(v60 + 8 * (v59 ^ 0x2609)))(a1, a2, a3, a4, a5, 64, a7, a8, a9, a10, a11, a12, a13, a14, a3 + 20, a16, a17, a18, a19, &STACK[0x280] + a24, a21, a5, a13 + a24 - a3, a11 + a24, a25, a26, a27, a28, a29, a2, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
}

uint64_t sub_100A42E78@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v5 = (((v2 ^ a2 ^ 0x9B678E48) + 102950331) ^ v2 ^ a2 ^ ((v2 ^ a2 ^ 0xFE3AF450) + 1669308323) ^ ((v2 ^ a2 ^ 0xB81813FE) + 626882573) ^ ((v2 ^ a2 ^ 0xBFFFFDEB) + 582653466)) == 0x62BA940D || (((((v2 ^ a2 ^ 0x48) - 69) ^ v2 ^ a2 ^ ((v2 ^ a2 ^ 0x50) - 93) ^ ((v2 ^ a2 ^ 0xFE) + 13)) ^ ((v2 ^ a2 ^ 0xEB) + 26)) & 0xF) != ((85 * (v3 ^ 0x2B70)) ^ 0xFFFFC69A) + (v3 ^ 0x67F);
  v6 = *(a1 + 8 * ((30 * v5) ^ v3));
  LODWORD(STACK[0x204]) = -42899;
  return v6();
}

uint64_t sub_100A42F80@<X0>(int a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v22 = v14 + v11;
  v23 = __ROR8__(v22 & ((a1 + 551) ^ 0xFFFFFFFFFFFFD76CLL), 8);
  v24 = v23 - ((2 * v23 - 0x63E9357C36D9453ALL) & a2) + a3;
  v25 = v24 ^ a4;
  v26 = v24 ^ a5;
  v27 = (__ROR8__(v25, 8) + v26) ^ v12;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (v29 + v28 - (a6 & (2 * (v29 + v28))) + a7) ^ v15;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0x51FC477E33DE4033;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (v13 - ((v34 + v33) | v13) + ((v34 + v33) | v16)) ^ v17;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xA199F9AE5F876A45;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0xB2823E14A03C0367;
  *(a8 + v11) = (((__ROR8__(v39, 8) + (v39 ^ __ROR8__(v38, 61))) ^ v20) >> (8 * (v22 & 7u))) ^ *v22;
  v40 = v11 + 1;
  v41 = v40 + v8 < v10;
  if (v10 < v8 != v40 > v18)
  {
    v41 = v10 < v8;
  }

  return (*(v21 + 8 * ((v41 * v19) ^ (v9 + 2120244732))))();
}

uint64_t sub_100A430F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = ((v9 + 919921250) & 0xC92B47FF ^ 0xFFFFFFFF8EE2327CLL) + v10;
  v14 = ((2 * (v10 ^ 0x6B)) ^ 0x44) & (v10 ^ 0x6B) ^ (2 * (v10 ^ 0x6B)) & 0xA2;
  v15 = v14 & (4 * (((2 * v10) & 0x92 ^ 0xC9) & v10)) ^ ((2 * v10) & 0x92 ^ 0xC9) & v10;
  v16 = v10 ^ (2 * (((4 * v14) ^ 0x80) & v14 & (16 * v15) ^ v15));
  *(a8 + v13) = *(v11 + v13) + 49 * (v16 ^ ((v16 ^ 0x91) - 6) ^ ((v16 ^ 0xCF) - 88) ^ 0x97) + 46;
  return (*(v12 + 8 * ((914 * (v10 + 1 == v8 + 16)) ^ (v9 + 11))))();
}

uint64_t sub_100A432C0@<X0>(int a1@<W1>, int a2@<W6>, int a3@<W8>)
{
  v6 = *(&STACK[0x320] + (v4 + 2361 * a3) % 0xA88u);
  v7 = (((v3 - 23305) | 0x3044) ^ 0x417A236B) + 825 * (v6 | ((v6 < 0x60) << 8)) - 1098599943;
  v8 = *(&STACK[0xDE0] + v7 - v7 / 0x1940 * a1);
  v9 = HIBYTE(v8);
  v10 = *(&STACK[0x320] + (2361 * (((v8 ^ 0x4CD4A255) + 2038478437) ^ ((v8 ^ 0x8DF7BE49) - 1197233543) ^ ((v8 ^ 0xC1231CF5) - 193525563)) + 733620912) % 0xA88);
  LOBYTE(v8) = *(&STACK[0x320] + (2361 * (((BYTE2(v8) ^ 0x49172D79) + 1655693452) ^ ((BYTE2(v8) ^ 0xB393B6EA) - 1741980903) ^ ((BYTE2(v8) ^ 0xFA849BF3) - 784574974)) - 993099962) % 0xA88);
  v11 = v10 & 0xBA ^ 0x8D;
  LOBYTE(v6) = *(&STACK[0x320] + (2361 * (((v9 ^ 0x68C9DF14) - 810081516) ^ ((v9 ^ 0x3AAAE682) - 1647043962) ^ ((v9 ^ 0x526339EA) - 182598162)) + 1040702565) % 0xA88);
  v12 = *(&STACK[0x320] + (2361 * (((BYTE1(v8) ^ 0xAE471F5A) - 757392301) ^ ((BYTE1(v8) ^ 0x4C5F88AA) + 818121635) ^ ((BYTE1(v8) ^ 0xE2189743) - 1635478452)) - 984613083) % 0xA88);
  v13 = (v6 & 0xA0 | 0x56) ^ v6 & 0xEC;
  v14 = (v10 ^ 0x20) & (2 * ((v10 ^ 0x20) & (2 * ((v10 ^ 0x20) & (2 * ((v10 ^ 0x20) & (2 * ((v10 ^ 0x20) & (2 * ((v10 ^ 0x20) & (2 * v11) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11;
  v15 = v10 << 29;
  LOBYTE(v10) = v10 ^ (2 * v14);
  v16 = (v8 & 0xA0 | 0x4D) ^ v8 & 0x9A;
  HIDWORD(v17) = ((v10 & 0xF8) >> 3) ^ 0x17;
  LODWORD(v17) = v15;
  v18 = (v8 ^ (2 * ((v8 ^ 0x20) & (2 * ((v8 ^ 0x20) & (2 * ((v8 ^ 0x20) & (2 * ((v8 ^ 0x20) & (2 * ((v8 ^ 0x20) & (2 * ((v8 ^ 0x20) & (2 * v16) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16))) << 8;
  v19 = v12 & 0xFFFFFFEA ^ 0x25;
  v20 = v12 ^ 0x20;
  v21 = (v17 >> 29) - ((2 * (v17 >> 29)) & 0xEA) + 2000460661;
  *(&STACK[0xDE0] + a2 + 825 * a3 - (a2 + 825 * a3) / 0x1940u * a1) = v21 & 0x40012F1 ^ 0x58B4CC96 ^ ((((((v18 ^ 0xFF03DA) & (((v6 ^ (2 * ((v6 ^ 0x20) & (2 * ((v6 ^ 0x20) & (2 * ((v6 ^ 0x20) & (2 * ((v6 ^ 0x20) & (2 * (v6 & (2 * v13) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13))) << 16) ^ 0xE12152) | v18 & 0xDE00) ^ 0x8216CE) & ((v12 ^ (2 * (v20 & (2 * (v20 & (2 * (v20 & (2 * (v20 & (2 * (v20 & (2 * (v12 & (2 * v19) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19))) ^ 0xFFFF35) ^ (v12 ^ (2 * (v20 & (2 * (v20 & (2 * (v20 & (2 * (v20 & (2 * (v20 & (2 * (v12 & (2 * v19) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19))) & 0x63) << 8) ^ 0xFF9930E) & (v21 ^ 0x88C3647A);
  return (*(v5 + 8 * ((62 * (a3 != 255)) ^ v3)))(0);
}

uint64_t sub_100A4373C(uint64_t a1)
{
  LODWORD(STACK[0x37D8]) = 0;
  LODWORD(STACK[0x3AD8]) = (v1 ^ 0x426B) + 18571;
  v3 = *(v2 + 8 * (((LODWORD(STACK[0x38F8]) == (((v1 ^ 0x6B) - 117) ^ 0x32)) * (29 * (v1 ^ 0x426B) - 3249)) ^ v1));
  LODWORD(STACK[0x38F8]) = 0;
  return v3(a1, STACK[0x37D0]);
}

uint64_t sub_100A43838()
{
  LOBYTE(STACK[0x454]) = -68;
  LOBYTE(STACK[0x52D]) = -67;
  LOBYTE(STACK[0x606]) = -66;
  LOBYTE(STACK[0x315]) = -65;
  LOBYTE(STACK[0x3EE]) = -72;
  LOBYTE(STACK[0x4C7]) = -71;
  LOBYTE(STACK[0x5A0]) = -70;
  LOBYTE(STACK[0x679]) = -69;
  LOBYTE(STACK[0x388]) = -76;
  LOBYTE(STACK[0x461]) = -75;
  LOBYTE(STACK[0x53A]) = -74;
  LOBYTE(STACK[0x613]) = -73;
  LOBYTE(STACK[0x322]) = -80;
  LOBYTE(STACK[0x3FB]) = -79;
  LOBYTE(STACK[0x4D4]) = -78;
  LOBYTE(STACK[0x5AD]) = -77;
  v4 = 217 * (v3 & 0xF) + 120652 - 970 * ((4427802 * (217 * (v3 & 0xFu) + 120652)) >> 32);
  LOBYTE(STACK[0x454]) = *(&STACK[0x2E0] + v4);
  *(&STACK[0x2E0] + v4) = -68;
  v5 = v0 % ((v4 & 0x7B) + 860537748 + (v4 & 0x7B ^ 0xCCB53C7B));
  LOBYTE(v4) = STACK[0x52D];
  v6 = 217 * v5 + 120869 - 970 * ((4427802 * (217 * v5 + 120869)) >> 32);
  LOBYTE(STACK[0x52D]) = *(&STACK[0x2E0] + v6);
  *(&STACK[0x2E0] + v6) = v4;
  v7 = 217 * (v1 % 0xE) + 121086 - 970 * ((4427802 * (217 * (v1 % 0xE) + 121086)) >> 32);
  v8 = v2 - v0;
  v9 = v2 % 0xD;
  v10 = STACK[0x606];
  v11 = v3 - v8;
  LOBYTE(STACK[0x606]) = *(&STACK[0x2E0] + v7);
  *(&STACK[0x2E0] + v7) = v10;
  v12 = v11 ^ 0xC2A462C2;
  v13 = STACK[0x315];
  v14 = 217 * v9 + 121303 - 970 * ((4427802 * (217 * v9 + 121303)) >> 32);
  LOBYTE(STACK[0x315]) = *(&STACK[0x2E0] + v14);
  v15 = v0 ^ v1;
  v16 = v8 + v1 + 971459918;
  *(&STACK[0x2E0] + v14) = v13;
  LOBYTE(v8) = STACK[0x3EE];
  v17 = v11 + v1 + 971459918;
  v18 = 217 * ((v11 ^ 0xC2A462C2) % 0xC) + 121520;
  v19 = v15 - v11;
  v20 = v18 - 970 * ((4427802 * v18) >> 32);
  LOBYTE(STACK[0x3EE]) = *(&STACK[0x2E0] + v20);
  *(&STACK[0x2E0] + v20) = v8;
  v21 = 217 * (v19 % 0xB) + 121737 - 970 * ((4427802 * (217 * (v19 % 0xB) + 121737)) >> 32);
  LOBYTE(v18) = STACK[0x4C7];
  LOBYTE(STACK[0x4C7]) = *(&STACK[0x2E0] + v21);
  *(&STACK[0x2E0] + v21) = v18;
  v12 += 468802815;
  LOBYTE(v18) = STACK[0x5A0];
  v22 = 217 * (v17 % 0xA) + 121954 - 970 * ((4427802 * (217 * (v17 % 0xA) + 121954)) >> 32);
  LOBYTE(STACK[0x5A0]) = *(&STACK[0x2E0] + v22);
  *(&STACK[0x2E0] + v22) = v18;
  v23 = v19 - v17;
  v24 = v12 - v23;
  LOBYTE(v22) = STACK[0x679];
  v25 = v12 + (v17 ^ 0x26953D0E);
  v26 = 217 * (v16 % 9) + 122171 - 970 * ((4427802 * (217 * (v16 % 9) + 122171)) >> 32);
  v27 = v25 ^ v23;
  LOBYTE(STACK[0x679]) = *(&STACK[0x2E0] + v26);
  *(&STACK[0x2E0] + v26) = v22;
  v28 = 217 * (v24 & 7) + 122388 - 970 * ((4427802 * (217 * (v24 & 7u) + 122388)) >> 32);
  v29 = STACK[0x388];
  LOBYTE(STACK[0x388]) = *(&STACK[0x2E0] + v28);
  *(&STACK[0x2E0] + v28) = v29;
  v30 = 217 * ((v25 ^ v23) % 7) + 122605 - 970 * ((4427802 * (217 * ((v25 ^ v23) % 7) + 122605)) >> 32);
  v31 = STACK[0x461];
  LOBYTE(STACK[0x461]) = *(&STACK[0x2E0] + v30);
  v32 = v16 - 1578076213 + v27;
  v33 = 217 * (v25 % 6);
  *(&STACK[0x2E0] + v30) = v31;
  v34 = STACK[0x53A];
  LOBYTE(STACK[0x53A]) = *(&STACK[0x2E0] + (v33 + 122822) % (((v33 + 122822) ^ (57 - v33)) & 0x3CA));
  *(&STACK[0x2E0] + (v33 + 122822 - 970 * ((4427802 * (v33 + 122822)) >> 32))) = v34;
  v35 = v32 % 5 + 567;
  LOBYTE(v33) = STACK[0x613];
  v36 = (((200 - v32 % 5) | v35) & 0xD9) * v35;
  v37 = v25 - v27;
  LOBYTE(STACK[0x613]) = *(&STACK[0x2E0] + (v36 - 970 * ((4427802 * v36) >> 32)));
  LOBYTE(v32) = v37 + 79 + v32 + (v37 ^ v24);
  *(&STACK[0x2E0] + (217 * v35 - 970 * ((4427802 * (217 * v35)) >> 32))) = v33;
  v38 = 217 * (v32 & 3) + 123256 - 970 * ((4427802 * (217 * (v32 & 3) + 123256)) >> 32);
  LOBYTE(v35) = STACK[0x322];
  LOBYTE(STACK[0x322]) = *(&STACK[0x2E0] + v38);
  *(&STACK[0x2E0] + v38) = v35;
  LOBYTE(v38) = STACK[0x3FB];
  v39 = 217 * (((v27 ^ v24) + v37) % 3) + 123473 - 970 * ((4427802 * (217 * (((v27 ^ v24) + v37) % 3) + 123473)) >> 32);
  LOBYTE(STACK[0x3FB]) = *(&STACK[0x2E0] + v39);
  *(&STACK[0x2E0] + v39) = v38;
  v40 = ((v37 - v32) & 1) == 0;
  v41 = 500;
  if (!v40)
  {
    v41 = 717;
  }

  v42 = STACK[0x4D4];
  LOBYTE(STACK[0x4D4]) = *(&STACK[0x2E0] + v41);
  *(&STACK[0x2E0] + v41) = v42;
  return (*(STACK[0x2D0] + 8 * SLODWORD(STACK[0x2D8])))(4156721659, 2267034285, 235, 75, 17550);
}

uint64_t sub_100A4403C@<X0>(int a1@<W8>)
{
  if (v1)
  {
    v4 = v3 == ((a1 - 5308) | 0x1DC) + ((a1 - 1391022958) ^ 0x5A6E83FB);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  return (*(v2 + 8 * ((16149 * v5) ^ a1)))();
}

uint64_t sub_100A440C8@<X0>(uint64_t a1@<X8>)
{
  v3.n128_u64[0] = 0x7D7D7D7D7D7D7D7DLL;
  v3.n128_u64[1] = 0x7D7D7D7D7D7D7D7DLL;
  v4.n128_u64[0] = 0xFAFAFAFAFAFAFAFALL;
  v4.n128_u64[1] = 0xFAFAFAFAFAFAFAFALL;
  return (*(a1 + 8 * (v2 + v1 + 2827)))(vdupq_n_s32(0x2935DE50u), vdupq_n_s32(0xD6CA2100), vdupq_n_s32(0x86FFC653), v3, v4);
}

uint64_t sub_100A44194@<X0>(_BYTE *a1@<X8>)
{
  a1[112] = v1[20];
  a1[113] = v1[21];
  a1[114] = v1[22];
  a1[115] = v1[23];
  return (*(v3 + 8 * v2))();
}

uint64_t sub_100A44358()
{
  v5 = *(STACK[0x5510] + v0);
  LODWORD(STACK[0x5500]) = v3 + 9187;
  v6 = v1 & 6 | 0xE9;
  v7 = v4 + 5621 * ((v1 ^ (v5 - ((2 * v5) & 0xB2) + 89) ^ (2 * ((v1 ^ 0x34) & (2 * ((v1 ^ 0x34) & (2 * ((v1 ^ 0x34) & (2 * ((v1 ^ 0x34) & (2 * ((v1 ^ 0x34) & (2 * (((4 * (((v1 & 6) >> 1) & 3)) | 0x32) & (v1 ^ 0x34) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6))) ^ 0x5F);
  LODWORD(STACK[0x5640]) = v7 - 6152 * (((89362129 * v7) >> 32) >> 7);
  v8 = STACK[0x5530];
  v9 = STACK[0x5530] & 0x5A ^ 0x53;
  v10 = v8 ^ (v5 - ((2 * v5) & 0x3E) - 97) ^ (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * (v9 ^ v8 & 0x2E)) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9));
  v11 = STACK[0x5540];
  v12 = STACK[0x5540] & 0x12 ^ 0x77;
  v13 = v11 ^ (v5 - ((2 * v5) & 0x1A) - 115) ^ (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * (v12 ^ v11 & 0x26)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12));
  v14 = STACK[0x5600];
  v15 = STACK[0x5600] & 0xD8 ^ 0x92;
  v16 = v4 + 5621 * ((v14 ^ (v5 - ((2 * v5) & 0x22) - 111) ^ (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * v15) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15))) ^ 0x49);
  v17 = v4 + 5621 * (v13 ^ 0x9F) - 6152 * (((89362129 * (v4 + 5621 * (v13 ^ 0x9Fu))) >> 32) >> 7);
  v18 = v4 + 5621 * (v10 ^ 0xC5) - 6152 * (((89362129 * (v4 + 5621 * (v10 ^ 0xC5u))) >> 32) >> 7);
  v19 = STACK[0x5610];
  v20 = STACK[0x5610] & 0x60 ^ 0x7E;
  v21 = v4 + 5621 * ((v19 ^ (v5 - ((2 * v5) & 0x34) - 102) ^ (2 * ((v19 ^ 0x34) & (2 * ((v19 ^ 0x34) & (2 * ((v19 ^ 0x34) & (2 * ((v19 ^ 0x34) & (2 * ((v19 ^ 0x34) & (2 * v20) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20))) ^ 0xFA);
  LODWORD(STACK[0x5600]) = *(v2 + v16 - 6152 * (((89362129 * v16) >> 32) >> 7));
  LODWORD(STACK[0x5530]) = *(v2 + v18);
  LODWORD(STACK[0x5610]) = *(v2 + v21 - 6152 * (((89362129 * v21) >> 32) >> 7));
  LODWORD(STACK[0x5540]) = *(v2 + v17);
  return (*(STACK[0x57D8] + 8 * ((47 * (v0 == 46)) ^ LODWORD(STACK[0x5520]))))();
}

uint64_t sub_100A44BC0()
{
  v2 = STACK[0x530];
  LODWORD(STACK[0x760]) = -143155721;
  *(v0 + 827) = 0;
  return (*(v1 + 8 * (v2 ^ 0x51522D44 ^ (6768 * (v2 > 0x5DA8A351)))))();
}

uint64_t sub_100A44C84@<X0>(uint64_t a1@<X8>)
{
  v4 = (*(v3 + 8 * (v1 ^ 0x4D61)))(1032);
  v5 = *(v2 - 192);
  *(v2 - 212) = v1 - 1056;
  return (*(v5 + 8 * (((v4 != 0) * ((v1 - 1056) ^ 0x327F)) | v1)))(a1);
}

uint64_t sub_100A44D44(uint64_t a1, char a2, char a3, int a4)
{
  v9 = *(a1 + v4);
  *(v8 + v4) = v9;
  return (*(v7 + 8 * (v5 | (2 * (v9 == ((((v5 - 2) | a3) ^ (v5 + v6) & a2) ^ a4))))))();
}

uint64_t sub_100A44F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = STACK[0x5A8];
  v7 = *(STACK[0x6D8] + 8 * SLODWORD(STACK[0x5A8]));
  LODWORD(STACK[0x678]) = 16 * (LOBYTE(STACK[0x8F7]) ^ 0xF2) - 165824725 - ((32 * (LOBYTE(STACK[0x8F7]) ^ 0xF2)) & 0xE40);
  v8 = 8423 * (v6 ^ 0x4F51);
  LODWORD(STACK[0x668]) = v8;
  LODWORD(STACK[0x670]) = v8 + 1525173728;
  return v7(2856, 56481, a3, a3, 204, a6, 275);
}

uint64_t sub_100A450D8()
{
  if (STACK[0x5B00])
  {
    v0 = LODWORD(STACK[0x826C]) == 0;
  }

  else
  {
    v0 = 1;
  }

  v1 = v0;
  return (*(STACK[0x57D8] + 8 * ((v1 * ((3769 * (LODWORD(STACK[0x35FC]) ^ 0x545F)) ^ 0x5860)) ^ LODWORD(STACK[0x35FC]))))();
}

uint64_t sub_100A451B4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, int a7)
{
  v10 = STACK[0x37A8];
  LODWORD(STACK[0x3A90]) = (v7 + 761862911) & 0xD296E2FF;
  v11 = (((v10 ^ 0xA2) + 111) ^ 0x36) * a7 + 17937420;
  v12 = *(v9 + v11 - (((v11 * a4) >> 32) >> 1) * a5) ^ 0xE;
  return (*(v8 + 8 * (v7 - 6114)))(((v12 >> 3) | (32 * v12)) ^ LODWORD(STACK[0x39F0]), v10 ^ LODWORD(STACK[0x39F8]) ^ 0x79u);
}

uint64_t sub_100A454B4(uint64_t a1, uint64_t a2, char a3)
{
  v9 = v3 ^ 0x699D;
  v10 = ((v3 ^ 0x699D) + 2096533039) & 0x83094F0D;
  LODWORD(STACK[0x4998]) = LODWORD(STACK[0x5430]) | LODWORD(STACK[0x5440]);
  LODWORD(STACK[0x49E8]) = LODWORD(STACK[0x5420]) | LODWORD(STACK[0x54E0]);
  LODWORD(STACK[0x48A0]) = LODWORD(STACK[0x5408]) | LODWORD(STACK[0x5620]);
  LODWORD(STACK[0x5148]) = LODWORD(STACK[0x53F0]) | LODWORD(STACK[0x5400]);
  v11 = v7 & 0x1E ^ 0xFFFFFFF5;
  v12 = (v10 + 52) ^ v7;
  HIDWORD(v14) = v7;
  LODWORD(v14) = ((v12 & (2 * (v12 & (2 * (v12 & (2 * (v12 & (2 * (v12 & (2 * (v11 ^ v7 & 0x2A)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11) << 25) ^ (v7 << 24);
  v13 = v14 >> 26;
  LODWORD(STACK[0x4A38]) = LODWORD(STACK[0x5540]) | LODWORD(STACK[0x53E0]);
  HIDWORD(v14) = v13 ^ 7;
  LODWORD(v14) = v13 << 24;
  v15 = v14 >> 29;
  v16 = v6 & 0x42 ^ 0xFFFFFFCF;
  v17 = v6 & 0x9A ^ 0x33;
  v18 = (8 * ((v6 ^ 0x14) & (2 * ((v6 ^ v4) & (2 * ((v6 ^ v4) & (2 * ((v6 ^ v4) & (2 * v16) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ (4 * v6);
  v19 = v18 << 24;
  v20 = v18 & 0xFFFFFFFC | ((((2 * v6) ^ 0x40) & (4 * ((v6 ^ v4) & (2 * ((v6 ^ v4) & (2 * ((v6 ^ v4) & (2 * ((v6 ^ v4) & (2 * (v17 ^ v6 & 0x2E)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v6) >> 6);
  v21 = v5 & 0x8A ^ 0x2B;
  HIDWORD(v14) = v20 ^ 0xB;
  LODWORD(v14) = v19;
  LODWORD(STACK[0x5540]) = ((((v15 & 0xFE) << 15) & 0xFFFF0000 | (v15 << 23) | (((v5 ^ (2 * ((v5 ^ v4) & (2 * ((v5 ^ v4) & (2 * ((v5 ^ v4) & (2 * ((v5 ^ v4) & (2 * ((v5 ^ v4) & (2 * ((v5 ^ v4) & 0x3E ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21))) ^ 0x8A) << 8) | (((v14 >> 29) >> 5) | (8 * (v14 >> 29)))) << 8) & 0x625F1700;
  LOBYTE(v12) = *(STACK[0x57A0] + 266);
  LOBYTE(v19) = *(STACK[0x5730] + 1093);
  v22 = v19 & 0xE0 ^ 0x3E;
  v23 = *(STACK[0x56F0] + 1586);
  v24 = v12 & 0xF4 ^ 0x20;
  LOBYTE(v19) = v19 ^ (2 * ((v19 ^ v4) & (2 * ((v19 ^ v4) & (2 * ((v19 ^ v4) & (2 * ((v19 ^ v4) & (2 * ((v19 ^ v4) & (2 * v22) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ 0xE0;
  v25 = v23 & a3 ^ 0x1F;
  v26 = (((v12 ^ (2 * ((v12 ^ v4) & (2 * ((v12 ^ v4) & (2 * ((v12 ^ v4) & (2 * ((v12 ^ v4) & (2 * v24) ^ v24)) ^ v24)) ^ v24)) ^ v24))) ^ 0xF4) << 16) | (v19 << 8);
  v27 = (((v23 ^ (2 * ((v23 ^ v4) & (2 * ((v23 ^ v4) & (2 * ((v23 ^ v4) & (2 * ((v23 ^ v4) & (2 * ((v23 ^ v4) & (2 * ((v23 ^ v4) & 0x16 ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25))) ^ 0x5C3971) & ~v26 | v26 & 0xA3C600) << 8;
  LOBYTE(v26) = *(STACK[0x5790] + 2921);
  v28 = *(STACK[0x5740] + 3634);
  v29 = v28 & 0xD6 ^ 0x91;
  v30 = v26 & 0x72 ^ 0xE7;
  v31 = *(v8 + 1389);
  v32 = (((v26 ^ (2 * ((v26 ^ v4) & (2 * ((v26 ^ v4) & (2 * ((v26 ^ v4) & (2 * ((v26 ^ v4) & (2 * ((v26 ^ v4) & (2 * (v30 ^ v26 & 6)) ^ v30)) ^ v30)) ^ v30)) ^ v30)) ^ v30))) ^ 0x72) << 8) | (((v28 ^ (2 * ((v28 ^ v4) & (2 * ((v28 ^ v4) & (2 * ((v28 ^ v4) & (2 * ((v28 ^ v4) & (2 * ((v28 ^ v4) & (2 * (v29 ^ v28 & 0x22)) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29))) ^ 0xD6) << 16);
  LODWORD(STACK[0x5440]) = v27 & 0xD6AF3C00;
  LOBYTE(v27) = v31 & 0x48 ^ 0xCA;
  LODWORD(STACK[0x54E0]) = ((((v31 ^ (2 * ((v31 ^ v4) & (2 * ((v31 ^ v4) & (2 * ((v31 ^ v4) & (2 * ((v31 ^ v4) & (2 * ((v31 ^ v4) & (2 * v27) | v27)) ^ v27)) ^ v27)) ^ v27)) ^ v27))) ^ 0x281D77) & ~v32 | v32 & 0xD7E200) << 8) & 0x4A088E00;
  return (*(STACK[0x57D8] + 8 * v9))(1 - v10, 36215998, 144863992, 49439138);
}

uint64_t sub_100A45AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, int a63)
{
  v72 = a11 ^ a18 ^ LODWORD(STACK[0x264]) ^ HIDWORD(a15);
  HIDWORD(a34) ^= HIDWORD(a31) ^ a27 ^ a23;
  v73 = STACK[0x284];
  LODWORD(STACK[0x258]) = LODWORD(STACK[0x284]) ^ LODWORD(STACK[0x26C]) ^ a15 ^ HIDWORD(a10) ^ HIDWORD(a36) ^ __ROR4__(a30, 8) ^ 0x2927B418;
  LODWORD(STACK[0x254]) = v72 ^ a63 ^ LODWORD(STACK[0x294]) ^ 0xEDD7C977;
  v74 = STACK[0x298];
  LODWORD(STACK[0x26C]) = LODWORD(STACK[0x278]) ^ v73 ^ LODWORD(STACK[0x298]) ^ 0x5CFC513B;
  v75 = STACK[0x27C];
  LODWORD(STACK[0x264]) = HIDWORD(a22) ^ a24 ^ a22 ^ a12 ^ a31 ^ LODWORD(STACK[0x27C]) ^ 0x9AD1909;
  LODWORD(STACK[0x25C]) = HIDWORD(a47) ^ v73;
  LODWORD(STACK[0x268]) = HIDWORD(a33) ^ v74;
  LODWORD(STACK[0x260]) = a29 ^ HIDWORD(a24) ^ HIDWORD(a28) ^ HIDWORD(a26) ^ a64 ^ v75 ^ 0x6C739E31;
  LODWORD(STACK[0x244]) = a70 ^ HIDWORD(a19) ^ HIDWORD(a27) ^ a28 ^ a65 ^ v75 ^ 0xB62ED012;
  return (*(v71 + 8 * v70))(2724800983, 397550836, *(v71 + 8 * v70), a4, (v70 - 27), 2814250895, 1819516465, 363242233, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59);
}

uint64_t sub_100A46008@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 - 144);
  v3 = *(v2 - 140);
  *(v2 - 152) = (8 * (v3 - (((v1 - 47) ^ 0xE) & (2 * v3))) - 16) ^ 0x8D;
  *(v2 - 151) = (v3 >> 5) ^ 0x7D;
  *(v2 - 150) = (v3 >> 13) ^ 0x7D;
  *(v2 - 149) = (v3 >> 21) ^ 0x7D;
  *(v2 - 148) = ((__PAIR64__(v4, v3) >> 29) - ((2 * (__PAIR64__(v4, v3) >> 29)) & 0x5A) + 45) ^ 0x50;
  *(v2 - 147) = (v4 >> 5) ^ 0x7D;
  *(v2 - 146) = (v4 >> 13) ^ 0x7D;
  return (*(a1 + 8 * v1))();
}

uint64_t sub_100A4635C()
{
  v0 = STACK[0x630];
  v1 = STACK[0x630] + 16743;
  HIDWORD(v2) = LODWORD(STACK[0x610]) ^ 0xE;
  LODWORD(v2) = LODWORD(STACK[0x608]) << 24;
  LODWORD(STACK[0x49C]) = ((v2 >> 29) >> 3) | (32 * (v2 >> 29));
  v3 = *(STACK[0x668] + 8 * v1);
  LODWORD(STACK[0x630]) = 38 * (v0 ^ 0x1D2C);
  return v3();
}

uint64_t sub_100A46470@<X0>(int8x16_t *a1@<X8>)
{
  v4.i64[0] = 0x1E1E1E1E1E1E1E1ELL;
  v4.i64[1] = 0x1E1E1E1E1E1E1E1ELL;
  v5 = vsubq_s8(v2[1], vandq_s8(vaddq_s8(v2[1], v2[1]), v4));
  v6 = vandq_s8(vaddq_s8(*v2, *v2), v4);
  v4.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v4.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  *a1 = vaddq_s8(vsubq_s8(*v2, v6), v4);
  a1[1] = vaddq_s8(v5, v4);
  return (*(v3 + 8 * (((v1 > 0x3341E448) * ((v1 - 1803043287) ^ 0x2055)) ^ (v1 - 1803039350))))();
}

uint64_t sub_100A464E4@<X0>(int a1@<W6>, unint64_t a2@<X7>, int a3@<W8>)
{
  LODWORD(STACK[0x3818]) = 0;
  LODWORD(STACK[0x2F60]) = 0;
  LODWORD(STACK[0x3288]) = 0;
  LODWORD(STACK[0x3228]) = 0;
  LODWORD(STACK[0x3230]) = 0;
  v5 = a3 + 8297;
  v6 = (v5 + 12321) | 0x20C;
  LODWORD(STACK[0x3D68]) = v6;
  v7 = *(v4 + 8 * ((3488 * (v3 != (((v5 + 8213) | 0x1218) ^ v6 ^ 7))) ^ v5));
  STACK[0x16A8] = STACK[0x36D0];
  STACK[0x3398] = STACK[0x37A8];
  STACK[0x16A0] = STACK[0x3860];
  STACK[0x29B0] = STACK[0x3760];
  STACK[0x480] = STACK[0x2B88];
  STACK[0x10F0] = STACK[0x3290];
  STACK[0x470] = a2;
  LODWORD(STACK[0x268C]) = a1;
  LODWORD(STACK[0x366C]) = STACK[0x36B8];
  LODWORD(STACK[0x2010]) = STACK[0x38B8];
  STACK[0x37B8] = LODWORD(STACK[0x3550]);
  v8 = STACK[0x3540];
  LODWORD(STACK[0x3E18]) = STACK[0x3540];
  LODWORD(STACK[0x3D40]) = v8;
  LODWORD(STACK[0x31D0]) = STACK[0x38C8];
  LODWORD(STACK[0x2A48]) = STACK[0x33C0];
  STACK[0x33A8] = LODWORD(STACK[0x3858]);
  LODWORD(STACK[0x2630]) = STACK[0x32E8];
  STACK[0x2228] = LODWORD(STACK[0x2B80]);
  LODWORD(STACK[0x128C]) = STACK[0x36A0];
  STACK[0x3D60] = STACK[0x3998];
  STACK[0x3D88] = STACK[0x39E8];
  LODWORD(STACK[0x3E40]) = STACK[0x39A0];
  STACK[0x3700] = LODWORD(STACK[0x3698]);
  LODWORD(STACK[0x3D20]) = STACK[0x3948];
  LODWORD(STACK[0x3D90]) = STACK[0x3988];
  LODWORD(STACK[0x3D80]) = STACK[0x3810];
  LODWORD(STACK[0x3D70]) = STACK[0x3980];
  LODWORD(STACK[0x2BB0]) = 7;
  LODWORD(STACK[0x3AD8]) = 5;
  LODWORD(STACK[0x3D78]) = 1;
  STACK[0x3D58] = STACK[0x2618];
  STACK[0x3D50] = STACK[0x2928];
  LODWORD(STACK[0x3688]) = STACK[0x32E0];
  v9 = STACK[0x3808];
  LODWORD(STACK[0x3D28]) = STACK[0x2424];
  LODWORD(STACK[0x3B08]) = v9;
  LODWORD(STACK[0x3AE8]) = STACK[0x31E8];
  LODWORD(STACK[0x3AF0]) = STACK[0x2500];
  v10 = STACK[0x32D8];
  LODWORD(STACK[0x3B00]) = STACK[0x32D8];
  LODWORD(STACK[0x3D10]) = STACK[0x3318];
  LODWORD(STACK[0x3820]) = 1;
  LODWORD(STACK[0x3290]) = 1;
  LODWORD(STACK[0x3830]) = 1;
  LODWORD(STACK[0x3298]) = 1;
  LODWORD(STACK[0x32A0]) = 1;
  LODWORD(STACK[0x3850]) = 1;
  LODWORD(STACK[0x3840]) = 1;
  LODWORD(STACK[0x32A8]) = 1;
  LODWORD(STACK[0x3248]) = 1;
  LODWORD(STACK[0x2B98]) = 1;
  LODWORD(STACK[0x2BA0]) = 1;
  LODWORD(STACK[0x3250]) = 1;
  LODWORD(STACK[0x2BA8]) = 1;
  LODWORD(STACK[0x32B0]) = 1;
  LODWORD(STACK[0x3258]) = 1;
  LODWORD(STACK[0x2BD0]) = 1;
  LODWORD(STACK[0x2BD8]) = 1;
  LODWORD(STACK[0x3260]) = 1;
  LODWORD(STACK[0x2BE0]) = 1;
  LODWORD(STACK[0x2BE8]) = 1;
  LODWORD(STACK[0x3848]) = 1;
  LODWORD(STACK[0x32B8]) = 1;
  LODWORD(STACK[0x3270]) = 1;
  LODWORD(STACK[0x2BF0]) = 1;
  LODWORD(STACK[0x2BF8]) = 1;
  LODWORD(STACK[0x3278]) = 1;
  LODWORD(STACK[0x2C00]) = 1;
  LODWORD(STACK[0x2C08]) = 1;
  LODWORD(STACK[0x3280]) = 1;
  LODWORD(STACK[0x2C10]) = 1;
  LODWORD(STACK[0x2BC8]) = 1;
  LODWORD(STACK[0x39F0]) = STACK[0x3AE0];
  LODWORD(STACK[0x39A8]) = STACK[0x3B18];
  LODWORD(STACK[0x3860]) = v9;
  LODWORD(STACK[0x3A28]) = STACK[0x1188];
  LODWORD(STACK[0x3268]) = v10;
  return v7();
}

uint64_t sub_100A46740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  HIDWORD(a29) = a8;
  *(v33 - 144) = v31 ^ 0x6F06;
  v42 = (*(v32 + 8 * (v31 ^ 0x2C6)))(1028);
  return (*(v32 + 8 * ((((v31 ^ (v42 == 0)) & 1) * ((3930 * (v31 ^ 0x793F)) ^ 0x1EC7)) ^ v31)))(v42, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31);
}

uint64_t sub_100A4684C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, _DWORD *a34)
{
  *a34 = v36;
  v39 = *(v34 + 8 * (LODWORD(STACK[0x3B08]) - 289));
  STACK[0x1848] = STACK[0x3D40];
  STACK[0x1840] = STACK[0x3D78];
  STACK[0x1A88] = STACK[0x3B20];
  STACK[0x1A80] = STACK[0x3B18];
  STACK[0x2238] = LODWORD(STACK[0x3CF0]);
  LODWORD(STACK[0x1A90]) = STACK[0x3D48];
  LODWORD(STACK[0x28CC]) = STACK[0x3CE8];
  LODWORD(STACK[0x1AA8]) = STACK[0x39A8];
  LODWORD(STACK[0x1C28]) = STACK[0x3B00];
  STACK[0x2038] = LODWORD(STACK[0x3D58]);
  LODWORD(STACK[0x3830]) = STACK[0x3D90];
  LODWORD(STACK[0x2A48]) = STACK[0x2B48];
  STACK[0x3D98] = v35;
  LODWORD(STACK[0x12B4]) = v35;
  LODWORD(STACK[0x2500]) = STACK[0x3AE8];
  LODWORD(STACK[0x1C20]) = STACK[0x2B58];
  STACK[0x3698] = v38;
  STACK[0x3420] = LODWORD(STACK[0x2B78]);
  LODWORD(STACK[0x21F4]) = STACK[0x3AE0];
  LODWORD(STACK[0x1BA0]) = STACK[0x2B90];
  LODWORD(STACK[0x1BC8]) = STACK[0x39E8];
  LODWORD(STACK[0x183C]) = STACK[0x23B0];
  LODWORD(STACK[0x3488]) = v37;
  LODWORD(STACK[0x2630]) = STACK[0x2B50];
  STACK[0x2228] = LODWORD(STACK[0x2B68]);
  STACK[0x3318] = LODWORD(STACK[0x2B98]);
  LODWORD(STACK[0x2158]) = STACK[0x36B8];
  LODWORD(STACK[0x1B50]) = STACK[0x3D38];
  LODWORD(STACK[0x3310]) = STACK[0x3D30];
  LODWORD(STACK[0x3308]) = STACK[0x3D28];
  LODWORD(STACK[0x3300]) = STACK[0x3D20];
  return v39(STACK[0x3700], a2, a3, a4, 7, 1);
}

uint64_t sub_100A46970()
{
  v3 = *STACK[0x15F8];
  STACK[0xBA8] = v3;
  return (*(v2 + 8 * (((v3 == 0x683CBC57EAB92A3ELL) * ((149 * (((v0 + v1 + 257) | 0x3A44) ^ 0x3B44)) ^ (v1 + 298) ^ ((((v0 + v1 + 257) | 0x3A44) + 18597570) | 0x8083C004))) | (v0 + v1 + 257) | 0x3A44)))();
}

uint64_t sub_100A46A00()
{
  LODWORD(STACK[0x84C]) = v0;
  v2 = LOWORD(STACK[0x1CDE]);
  STACK[0x1528] = STACK[0x1CE0];
  return (*(v1 + 8 * ((20682 * (v2 == 62543)) ^ 0x1A29)))();
}

uint64_t sub_100A46A88()
{
  STACK[0x34F0] = *(v2 + LODWORD(STACK[0x3E18]));
  LODWORD(STACK[0x3E18]) = v0 + 17;
  v5 = *(v4 + 8 * (((((v3 + 1206485029) & 0xB8165BB6) - 7016) * (v1 == 17)) ^ v3));
  STACK[0x3850] = 17;
  return v5();
}

uint64_t sub_100A46FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LODWORD(STACK[0x38D8]) = 0;
  LODWORD(STACK[0x38E8]) = 0;
  LODWORD(STACK[0x38F0]) = 0;
  LODWORD(STACK[0x38E0]) = 0;
  LODWORD(STACK[0x3A10]) = 0;
  LODWORD(STACK[0x38D0]) = 0;
  LODWORD(STACK[0x3A18]) = 0;
  LODWORD(STACK[0x38B8]) = 0;
  LODWORD(STACK[0x3A08]) = 0;
  LODWORD(STACK[0x38C0]) = 0;
  LODWORD(STACK[0x39F8]) = 0;
  LODWORD(STACK[0x39F0]) = 0;
  LODWORD(STACK[0x37D8]) = 0;
  LODWORD(STACK[0x3A00]) = 0;
  LODWORD(STACK[0x39E8]) = 0;
  LODWORD(STACK[0x38B0]) = 0;
  LODWORD(STACK[0x38C8]) = 0;
  STACK[0x3A88] = (a5 << ((-85 * (v5 ^ 0xD2)) ^ 0xCFu)) ^ v6;
  v9 = *(v7 + 8 * (v5 ^ 0x1EAB));
  LODWORD(STACK[0x3348]) = 1;
  STACK[0x3A90] = v8;
  LODWORD(STACK[0x38F8]) = 1;
  return v9(STACK[0x3580], STACK[0x35D8], a3, STACK[0x3578]);
}

uint64_t sub_100A4707C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = (v17 - 5938) & 0xFFFFFFDB;
  STACK[0x6B0] = a17 - 0x1B4BD588E23F182BLL;
  v19 = *(STACK[0x6D8] + 8 * v17);
  LODWORD(STACK[0x6A8]) = v18 - 452235457;
  LODWORD(STACK[0x6B8]) = v18;
  LODWORD(STACK[0x6A0]) = v18 ^ 0xFFFFE8CC;
  return v19();
}

uint64_t sub_100A4713C(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  LODWORD(STACK[0x5290]) = a5;
  LODWORD(STACK[0x52E8]) = a6;
  LODWORD(STACK[0x52F0]) = a4;
  LODWORD(STACK[0x52F8]) = a3;
  LODWORD(STACK[0x5300]) = a2;
  LODWORD(STACK[0x5380]) = v6;
  *STACK[0x4FB0] = 1;
  *STACK[0x4B38] = 58;
  v8 = STACK[0x4FD0];
  v9 = *(STACK[0x4FD0] + 4 * STACK[0x4F98]);
  v10 = *(STACK[0x4FD0] + 4 * STACK[0x4F90]);
  v11 = *(STACK[0x4FD0] + 4 * STACK[0x4F80]);
  v12 = *(STACK[0x4FD0] + 4 * STACK[0x4FB8]);
  v13 = *(STACK[0x4FD0] + 4 * STACK[0x4F78]);
  v14 = *(STACK[0x4FD0] + 4 * STACK[0x4F88]);
  *STACK[0x4B30] = 119;
  v15 = *(v8 + 4 * STACK[0x4F70]);
  *STACK[0x5328] = -65;
  v16 = LODWORD(STACK[0x5140]) - 1150757180;
  v17 = *(v8 + 4 * STACK[0x4F68]);
  v18 = *(v8 + 4 * STACK[0x4F60]);
  v19 = *(v8 + 4 * STACK[0x4F50]);
  v20 = *(v8 + 4 * STACK[0x4F58]);
  v21 = *(v8 + 4 * STACK[0x4F48]);
  *STACK[0x53C0] = 22;
  v22 = v16 + 2643;
  v23 = *(v8 + 4 * STACK[0x4ED8]);
  v24 = *(v8 + 4 * STACK[0x4EB8]);
  v25 = v11 ^ v18;
  v26 = *(v8 + 4 * STACK[0x4EC0]);
  LODWORD(v8) = *(v8 + 4 * STACK[0x4E50]);
  v27 = LODWORD(STACK[0x4EE0]) ^ 0x86DC53E2 ^ v9 ^ v25 ^ v19;
  v28 = LODWORD(STACK[0x4E44]) ^ v14 ^ v15 ^ v21 ^ v24;
  v29 = LODWORD(STACK[0x4E38]) ^ 0xC978FC4 ^ v12 ^ v17 ^ v23;
  LODWORD(STACK[0x4340]) = v22;
  v30 = v29 ^ v8;
  v31 = LODWORD(STACK[0x4E34]) ^ 0xAFE22EDE ^ v10 ^ v13 ^ v20 ^ v26;
  v32 = (v29 ^ v8) >> (v22 ^ 0x52);
  *STACK[0x53C8] = -49;
  *STACK[0x4B28] = -92;
  v33 = *(v7 + 4000);
  v34 = *(v33 + 4 * (2717 * BYTE2(v31) + 3488628 - 8768 * (((1959383 * (2717 * BYTE2(v31) + 3488628)) >> 32) >> 2)));
  v35 = *(v33 + 4 * (2717 * BYTE1(v27) + 19518928 - 8768 * (((62700253 * (2717 * BYTE1(v27) + 19518928)) >> 32) >> 7)));
  v36 = *(v33 + 4 * (2717 * HIBYTE(v30) + 4184180 - 8768 * (((1959383 * (2717 * HIBYTE(v30) + 4184180)) >> 32) >> 2)));
  v37 = *(v33 + 4 * (2717 * (v28 ^ 0x15) + 5575284 - 8768 * (((1959383 * (2717 * (v28 ^ 0x15u) + 5575284)) >> 32) >> 2)));
  LODWORD(v8) = *(v33 + 4 * (2717 * (HIBYTE(v28) ^ 0xDD) + 4184180 - 8768 * (((1959383 * (2717 * (HIBYTE(v28) ^ 0xDD) + 4184180)) >> 32) >> 2)));
  v38 = *(v33 + 4 * (2717 * BYTE1(v31) + 19518928 - 8768 * (((62700253 * (2717 * BYTE1(v31) + 19518928)) >> 32) >> 7)));
  LODWORD(v33) = *(v33 + 4 * (2717 * BYTE2(v30) + 3488628 - 8768 * (((1959383 * (2717 * BYTE2(v30) + 3488628)) >> 32) >> 2)));
  *STACK[0x4ED0] = -11;
  v39 = *(*(v7 + 4000) + 4 * (2717 * v27 + 5575284 - 8768 * (((1959383 * (2717 * v27 + 5575284)) >> 32) >> 2)));
  *STACK[0x4B20] = -96;
  v40 = *(*(v7 + 4000) + 4 * (2717 * HIBYTE(v27) + 4184180 - 8768 * (((1959383 * (2717 * HIBYTE(v27) + 4184180)) >> 32) >> 2)));
  v41 = LODWORD(STACK[0x4E28]) ^ v36;
  LODWORD(v33) = LODWORD(STACK[0x4E24]) ^ v33;
  *STACK[0x53E0] = -43;
  v42 = v41 ^ v34 ^ v35;
  v43 = 2717 * (BYTE2(v28) ^ 0x1C) + 3488628;
  v44 = v31;
  v45 = BYTE1(v28) ^ 0xE9;
  v46 = v38 ^ v39;
  v47 = 2717 * HIBYTE(v31) + 4184180;
  v48 = *(v7 + 4000);
  v49 = v42 ^ v37;
  v50 = v33 ^ v8 ^ v46;
  v51 = *(v48 + 4 * (v43 - 8768 * (((1959383 * v43) >> 32) >> 2)));
  v52 = 2717 * v45 + 19518928 - 8768 * (((62700253 * (2717 * v45 + 19518928)) >> 32) >> 7);
  LODWORD(v33) = LODWORD(STACK[0x4E20]) ^ v40 ^ *(v48 + 4 * (2717 * v32 + 19518928 - 8768 * (((62700253 * (2717 * v32 + 19518928)) >> 32) >> 7)));
  v53 = v51 ^ *(v48 + 4 * (2717 * v44 + 5575284 - 8768 * (((1959383 * (2717 * v44 + 5575284)) >> 32) >> 2)));
  v54 = 2717 * v30 + 5575284 - 8768 * (((1959383 * (2717 * v30 + 5575284)) >> 32) >> 2);
  v55 = *(v48 + 4 * (2717 * BYTE2(v27) + 3488628 - 8768 * (((1959383 * (2717 * BYTE2(v27) + 3488628)) >> 32) >> 2)));
  v56 = *(v48 + 4 * v52);
  v57 = ((v56 & 0x80) + 1220861089) ^ ((v56 & 0x80) + 1225054881) ^ ((v56 & 0x80 ^ 0xA462838E) - 2136974959);
  v58 = v33 ^ v53;
  v59 = 2717 * (((v33 ^ v53) >> 8) ^ 0x6D) + 19518928;
  v60 = LODWORD(STACK[0x4E68]) ^ *(v48 + 4 * (v47 - 8768 * (((1959383 * v47) >> 32) >> 2))) ^ v55;
  v61 = v56 & 0xFFFFFF7F;
  v62 = -2115713697 - v57;
  v63 = (((v57 + 945754145) ^ (((v57 + 945754145) ^ 0x3A567E38) - 1735890168) ^ (((v57 + 945754145) ^ 0xEBCF46C8) + 1225872376) ^ (((v57 + 945754145) ^ 0x7A57A5CF) - 662064911) ^ (((v57 + 945754145) ^ 0xF6EF77FF) + 1412522689) ^ 0x1ACC4A75) & (v60 ^ 0xDDC16DCF) ^ v60 & 0x47EDA0B5) == 1170284677;
  v64 = ((v60 ^ 0x2EF8D141) + 931523735) ^ ((v60 ^ 0x72C326E0) + 1807620920) ^ ((v60 ^ 0x81FA9A6E) - 1735940166);
  if (v63)
  {
    v62 = v57 + 945754145;
  }

  v65 = *(v48 + 4 * v54) ^ v61 ^ (v64 - 568212185 + v62);
  v66 = *(v48 + 4 * (2717 * (HIBYTE(v50) ^ 0xF9) + 4184180 - 8768 * (((1959383 * (2717 * (HIBYTE(v50) ^ 0xF9) + 4184180)) >> 32) >> 2)));
  v67 = LODWORD(STACK[0x4E18]) ^ *(v48 + 4 * (2717 * (HIBYTE(v49) ^ 0xA4) + 4184180 - 8768 * (((1959383 * (2717 * (HIBYTE(v49) ^ 0xA4) + 4184180)) >> 32) >> 2))) ^ *(v48 + 4 * (v59 - 8768 * (((62700253 * v59) >> 32) >> 7))) ^ *(v48 + 4 * (2717 * (v50 ^ 0xD2) + 5575284 - 8768 * (((1959383 * (2717 * (v50 ^ 0xD2u) + 5575284)) >> 32) >> 2)));
  v68 = *(v48 + 4 * (2717 * BYTE2(v65) + 3488628 - 8768 * (((1959383 * (2717 * BYTE2(v65) + 3488628)) >> 32) >> 2)));
  *STACK[0x4B18] = 93;
  v69 = *(v7 + 4000);
  v70 = *(v69 + 4 * (2717 * BYTE1(v65) + 19518928 - 8768 * (((62700253 * (2717 * BYTE1(v65) + 19518928)) >> 32) >> 7)));
  v71 = *(v69 + 4 * (2717 * (HIBYTE(v58) ^ 0x21) + 4184180 - 8768 * (((1959383 * (2717 * (HIBYTE(v58) ^ 0x21) + 4184180)) >> 32) >> 2)));
  v72 = *(v69 + 4 * (2717 * (v58 ^ 0xD5) + 5575284 - 8768 * (((1959383 * (2717 * (v58 ^ 0xD5u) + 5575284)) >> 32) >> 2)));
  v73 = v67 ^ v68;
  v74 = *(v69 + 4 * (2717 * (BYTE2(v50) ^ 0x20) + 3488628 - 8768 * (((1959383 * (2717 * (BYTE2(v50) ^ 0x20u) + 3488628)) >> 32) >> 2)));
  v75 = LODWORD(STACK[0x4E10]) ^ v66 ^ *(v69 + 4 * (2717 * (BYTE2(v49) ^ 0x1B) + 3488628 - 8768 * (((1959383 * (2717 * (BYTE2(v49) ^ 0x1Bu) + 3488628)) >> 32) >> 2)));
  *STACK[0x4B10] = 0x80;
  v76 = 2717 * (BYTE2(v58) ^ 0xE9) + 3488628 - 8768 * (((1959383 * (2717 * (BYTE2(v58) ^ 0xE9u) + 3488628)) >> 32) >> 2);
  v77 = v75 ^ v72 ^ v70;
  v78 = v49 ^ 0x6A;
  v79 = LODWORD(STACK[0x4FC0]) ^ v71 ^ v74 ^ *(v69 + 4 * (2717 * (BYTE1(v49) ^ 0x63) + 19518928 - 8768 * (((62700253 * (2717 * (BYTE1(v49) ^ 0x63u) + 19518928)) >> 32) >> 7))) ^ *(v69 + 4 * (2717 * (v65 ^ 0x80) + 5575284 - 8768 * (((1959383 * (2717 * (v65 ^ 0x80u) + 5575284)) >> 32) >> 2)));
  v80 = LODWORD(STACK[0x4E08]) ^ *(v69 + 4 * v76) ^ *(v69 + 4 * (2717 * (BYTE1(v50) ^ 0x18) + 19518928 - 8768 * (((62700253 * (2717 * (BYTE1(v50) ^ 0x18u) + 19518928)) >> 32) >> 7))) ^ *(v69 + 4 * (2717 * v78 + 5575284 - 8768 * (((1959383 * (2717 * v78 + 5575284)) >> 32) >> 2))) ^ *(v69 + 4 * (2717 * HIBYTE(v65) + 4184180 - 8768 * (((1959383 * (2717 * HIBYTE(v65) + 4184180)) >> 32) >> 2)));
  v81 = *(v69 + 4 * (2717 * (HIBYTE(v73) ^ 1) + 4184180 - 8768 * (((1959383 * (2717 * (HIBYTE(v73) ^ 1) + 4184180)) >> 32) >> 2)));
  *STACK[0x4B08] = 58;
  v82 = *(v69 + 4 * (2717 * (BYTE1(v79) ^ 0xFB) + 19518928 - 8768 * (((62700253 * (2717 * (BYTE1(v79) ^ 0xFBu) + 19518928)) >> 32) >> 7)));
  LODWORD(v69) = *(v69 + 4 * (2717 * (BYTE2(v80) ^ 0xB4) + 3488628 - 8768 * (((1959383 * (2717 * (BYTE2(v80) ^ 0xB4u) + 3488628)) >> 32) >> 2)));
  v83 = *(v7 + 4000);
  *STACK[0x56E0] = 29;
  v84 = *(v83 + 4 * (2717 * (v77 ^ 0xF1) + 5575284 - 8768 * (((1959383 * (2717 * (v77 ^ 0xF1u) + 5575284)) >> 32) >> 2)));
  v85 = *(v83 + 4 * (2717 * (HIBYTE(v77) ^ 0x77) + 4184180 - 8768 * (((1959383 * (2717 * (HIBYTE(v77) ^ 0x77) + 4184180)) >> 32) >> 2)));
  v86 = *(v83 + 4 * (2717 * (BYTE1(v80) ^ 0xD) + 19518928 - 8768 * (((62700253 * (2717 * (BYTE1(v80) ^ 0xDu) + 19518928)) >> 32) >> 7)));
  LODWORD(v83) = *(v83 + 4 * (2717 * (BYTE2(v73) ^ 0x35) + 3488628 - 8768 * (((1959383 * (2717 * (BYTE2(v73) ^ 0x35u) + 3488628)) >> 32) >> 2)));
  v87 = LODWORD(STACK[0x4E70]) ^ v81 ^ v69;
  v88 = *(v7 + 4000);
  *STACK[0x4EE8] = 0;
  v89 = *(v88 + 4 * (2717 * (HIBYTE(v79) ^ 0xF3) + 4184180 - 8768 * (((1959383 * (2717 * (HIBYTE(v79) ^ 0xF3) + 4184180)) >> 32) >> 2)));
  v90 = *(v88 + 4 * (2717 * (v79 ^ 0x71) + 5575284 - 8768 * (((1959383 * (2717 * (v79 ^ 0x71u) + 5575284)) >> 32) >> 2)));
  LODWORD(v69) = *(v88 + 4 * (2717 * (BYTE2(v77) ^ 0xCE) + 3488628 - 8768 * (((1959383 * (2717 * (BYTE2(v77) ^ 0xCEu) + 3488628)) >> 32) >> 2)));
  v91 = 2717 * (HIBYTE(v80) ^ 0xC1) + 4184180;
  LODWORD(v83) = v86 ^ v83;
  v92 = *(v88 + 4 * (2717 * (BYTE1(v73) ^ 0xF7) + 19518928 - 8768 * (((62700253 * (2717 * (BYTE1(v73) ^ 0xF7u) + 19518928)) >> 32) >> 7)));
  v93 = v87 ^ v82 ^ v84;
  v94 = *(v88 + 4 * (2717 * (v80 ^ 0xEF) + 5575284 - 8768 * (((1959383 * (2717 * (v80 ^ 0xEFu) + 5575284)) >> 32) >> 2)));
  v95 = LODWORD(STACK[0x4E00]) ^ v85 ^ v83;
  *STACK[0x4B00] = 102;
  LODWORD(v69) = LODWORD(STACK[0x4DF8]) ^ v69;
  v96 = *(*(v7 + 4000) + 4 * (v91 - 8768 * (((1959383 * v91) >> 32) >> 2)));
  v97 = v92 ^ v94;
  *STACK[0x4AF8] = 65;
  v98 = v95 ^ v90;
  v99 = *(v7 + 4000);
  v100 = *(v99 + 4 * (2717 * (BYTE2(v79) ^ 0xA6) + 3488628 - 8768 * (((1959383 * (2717 * (BYTE2(v79) ^ 0xA6u) + 3488628)) >> 32) >> 2)));
  v101 = *(v99 + 4 * (2717 * (BYTE1(v77) ^ 0x15) + 19518928 - 8768 * (((62700253 * (2717 * (BYTE1(v77) ^ 0x15u) + 19518928)) >> 32) >> 7)));
  v102 = v69 ^ v89 ^ v97;
  v103 = *(v99 + 4 * (2717 * (v73 ^ 0x2C) + 5575284 - 8768 * (((1959383 * (2717 * (v73 ^ 0x2Cu) + 5575284)) >> 32) >> 2)));
  *STACK[0x4AF0] = 98;
  v104 = LODWORD(STACK[0x4DF0]) ^ v96 ^ v100 ^ v101 ^ v103;
  *STACK[0x5510] = 11;
  LODWORD(v99) = *(*(v7 + 4000) + 4 * (2717 * (HIBYTE(v93) ^ 0x60) + 4184180 - 8768 * (((1959383 * (2717 * (HIBYTE(v93) ^ 0x60) + 4184180)) >> 32) >> 2)));
  *STACK[0x4FA8] = -82;
  v105 = *(v7 + 4000);
  v106 = *(v105 + 4 * (2717 * (BYTE1(v102) ^ 7) + 19518928 - 8768 * (((62700253 * (2717 * (BYTE1(v102) ^ 7u) + 19518928)) >> 32) >> 7)));
  LODWORD(v69) = 2717 * ((~(v98 >> 23) & 8) + (HIBYTE(v98) ^ 0x641));
  v107 = *(v105 + 4 * (2717 * (BYTE2(v104) ^ 0x4C) + 3488628 - 8768 * (((1959383 * (2717 * (BYTE2(v104) ^ 0x4Cu) + 3488628)) >> 32) >> 2)));
  *STACK[0x4AE8] = -38;
  v108 = *(v7 + 4000);
  LODWORD(v105) = *(v108 + 4 * (2717 * (v98 ^ 0xD7) + 5575284 - 8768 * (((1959383 * (2717 * (v98 ^ 0xD7u) + 5575284)) >> 32) >> 2)));
  v109 = *(v108 + 4 * (2717 * (BYTE2(v93) ^ 0x5D) + 3488628 - 8768 * (((1959383 * (2717 * (BYTE2(v93) ^ 0x5Du) + 3488628)) >> 32) >> 2)));
  LODWORD(v69) = *(v108 + 4 * (v69 - 8768 * (((1959383 * v69) >> 32) >> 2)));
  v110 = v106 ^ v107;
  *STACK[0x4AE0] = -83;
  v111 = *(v7 + 4000);
  v112 = *(v111 + 4 * (2717 * (BYTE1(v104) ^ 0x97) + 19518928 - 8768 * (((62700253 * (2717 * (BYTE1(v104) ^ 0x97u) + 19518928)) >> 32) >> 7)));
  v113 = *(v111 + 4 * (2717 * (HIBYTE(v102) ^ 0x67) + 4184180 - 8768 * (((1959383 * (2717 * (HIBYTE(v102) ^ 0x67) + 4184180)) >> 32) >> 2)));
  v114 = *(v111 + 4 * (2717 * (v102 ^ 0x6B) + 5575284 - 8768 * (((1959383 * (2717 * (v102 ^ 0x6Bu) + 5575284)) >> 32) >> 2)));
  LODWORD(v88) = *(v111 + 4 * (2717 * (BYTE2(v98) ^ 0x6E) + 3488628 - 8768 * (((1959383 * (2717 * (BYTE2(v98) ^ 0x6Eu) + 3488628)) >> 32) >> 2)));
  LODWORD(v99) = LODWORD(STACK[0x4DE8]) ^ v99 ^ v110;
  *STACK[0x4AD8] = -52;
  v115 = *(v7 + 4000);
  LODWORD(v108) = *(v115 + 4 * (2717 * (BYTE1(v93) ^ 0x6E) + 19518928 - 8768 * (((62700253 * (2717 * (BYTE1(v93) ^ 0x6Eu) + 19518928)) >> 32) >> 7)));
  v116 = *(v115 + 4 * ((2717 * (HIBYTE(v104) ^ 0xD0) + 4184180) % 0x2240u));
  v117 = *(v115 + 4 * (2717 * (BYTE2(v102) ^ 0xB8) + 3488628 - 8768 * (((1959383 * (2717 * (BYTE2(v102) ^ 0xB8u) + 3488628)) >> 32) >> 2)));
  LODWORD(v115) = *(v115 + 4 * (2717 * (v104 ^ 0x18) + 5575284 - 8768 * (((1959383 * (2717 * (v104 ^ 0x18u) + 5575284)) >> 32) >> 2)));
  v118 = v99 ^ v105;
  *STACK[0x5420] = -74;
  LODWORD(v99) = LODWORD(STACK[0x4DD8]) ^ v88 ^ v108 ^ v115;
  HIDWORD(v120) = v113;
  LODWORD(v120) = v113;
  v119 = v120 >> 24;
  HIDWORD(v120) = v119 ^ 0x4C;
  LODWORD(v120) = v119 ^ 0xC564F100;
  v121 = LODWORD(STACK[0x4DD0]) ^ v116 ^ v117 ^ *(STACK[0xFE70] + 4 * (2717 * (BYTE1(v98) ^ 0x15) + 19518928 - 8768 * (((62700253 * (2717 * (BYTE1(v98) ^ 0x15u) + 19518928)) >> 32) >> 7))) ^ *(STACK[0xFE70] + 4 * (2717 * (v93 ^ 0x5D) + 5575284 - 8768 * (((1959383 * (2717 * (v93 ^ 0x5Du) + 5575284)) >> 32) >> 2)));
  LODWORD(v108) = *(STACK[0xFE70] + 4 * (2717 * (HIBYTE(v118) ^ 0x8E) + 4184180 - 8768 * (((1959383 * (2717 * (HIBYTE(v118) ^ 0x8E) + 4184180)) >> 32) >> 2)));
  LODWORD(v115) = *(STACK[0xFE70] + 4 * (2717 * (BYTE2(v121) ^ 0xFC) + 3488628 - 8768 * (((1959383 * (2717 * (BYTE2(v121) ^ 0xFCu) + 3488628)) >> 32) >> 2)));
  v122 = v99 ^ (v120 >> 8);
  v123 = 2717 * (((v99 ^ ((v119 ^ 0xC564F100) >> 8)) >> 8) ^ 0x21) + 19518928;
  *STACK[0x4AD0] = -33;
  LODWORD(v105) = *(STACK[0xFE70] + 4 * (v123 - 8768 * (((62700253 * v123) >> 32) >> 7)));
  LODWORD(v115) = LODWORD(STACK[0x4DC8]) ^ v108 ^ v115;
  LODWORD(v108) = ((v105 & 0x8000000 ^ 0x4890FE83) - 1738282032) ^ 0x7FF1E;
  v124 = v108 - 1590951115;
  v125 = ((2 * (v124 & 0x80000002 ^ 0x593EAF83)) ^ 0xA2415006) & (v124 ^ 0xDCDE48FD) | v124 & 0x80000002 ^ 0x593EAF83;
  LODWORD(v111) = (2 * (v124 ^ 0xDCDE48FD)) & 0x593EAF82 ^ 0x4902A081 ^ ((2 * (v124 ^ 0xDCDE48FD)) ^ 0xB27D5F06) & (v124 ^ 0xDCDE48FD);
  v126 = v125 & 0xBFD55DFF;
  v125 *= 4;
  v127 = v125 & 0x592EA380 ^ v126;
  v128 = (v125 ^ 0x64FABE0C) & v111;
  LODWORD(v111) = (4 * v111) & 0x593EAF80 ^ 0x19040183 ^ ((4 * v111) ^ 0x64FABE0C) & v111;
  v129 = (16 * (v127 ^ v128)) & 0x593EAF80 ^ v127 ^ v128 ^ ((16 * (v127 ^ v128)) ^ 0x93EAF830) & v111;
  LODWORD(v111) = (16 * v111) & 0x593EAF80 ^ 0x48140783 ^ ((16 * v111) ^ 0x93EAF830) & v111;
  v130 = v129 ^ (v129 << 8) & 0x593EAF00 ^ ((v129 << 8) ^ 0x14078300) & v111 ^ 0x12C2B00;
  v63 = (((v108 - 1590951115) ^ (2 * ((v130 << 16) & 0x593E0000 ^ v130 ^ ((v130 << 16) ^ 0x2F830000) & ((v111 << 8) & 0x593E0000 ^ 0x41100000 ^ ((v111 << 8) ^ 0x3EAF0000) & v111))) ^ 0x809FC6E1) & (v115 ^ 0x646DFF7D) ^ v115 & 0xA5067E99) == 604274201;
  v131 = LODWORD(STACK[0x4DE0]) ^ v109 ^ v69 ^ v112 ^ v114;
  LODWORD(v69) = (v115 ^ 0xE35BDD6) + 2029439274;
  v132 = (v115 ^ 0xAB6FAE39) - 575874361;
  v133 = (v115 ^ 0xC137EC92) - 1208706962;
  LODWORD(v115) = *(STACK[0xFE70] + 4 * (2717 * (v131 ^ 0xED) + 5575284 - 8768 * (((1959383 * (2717 * (v131 ^ 0xEDu) + 5575284)) >> 32) >> 2)));
  v134 = *(STACK[0xFE70] + 4 * (2717 * (HIBYTE(v131) ^ 0x5E) + 4184180 - 8768 * (((1959383 * (2717 * (HIBYTE(v131) ^ 0x5E) + 4184180)) >> 32) >> 2)));
  LODWORD(v69) = v69 ^ v132 ^ v133;
  *STACK[0x5168] = 44;
  *STACK[0x4AC8] = 28;
  v135 = 1393700303 - v108;
  v136 = *(STACK[0xFE70] + 4 * (2717 * (BYTE2(v118) ^ 0x87) + 3488628 - 8768 * (((1959383 * (2717 * (BYTE2(v118) ^ 0x87u) + 3488628)) >> 32) >> 2)));
  v137 = v115 ^ v105 & 0xF7FFFFFF;
  v138 = v69 + 1932680187;
  *STACK[0x4FD8] = -92;
  v139 = STACK[0xFE70];
  v140 = v136 ^ *(STACK[0xFE70] + 4 * (2717 * (BYTE1(v121) ^ 0x7C) + 19518928 - 8768 * (((62700253 * (2717 * (BYTE1(v121) ^ 0x7Cu) + 19518928)) >> 32) >> 7)));
  if (!v63)
  {
    v124 = v135;
  }

  v141 = LODWORD(STACK[0x4DC0]) ^ v134 ^ v140 ^ *(v139 + 4 * (2717 * (v122 ^ 0x46) + 5575284 - 8768 * (((1959383 * (2717 * (v122 ^ 0x46u) + 5575284)) >> 32) >> 2)));
  v142 = *(v139 + 4 * (2717 * (HIBYTE(v122) ^ 0x9D) + 4184180 - 8768 * (((1959383 * (2717 * (HIBYTE(v122) ^ 0x9D) + 4184180)) >> 32) >> 2)));
  v143 = *(v139 + 4 * (2717 * (BYTE2(v131) ^ 0x6C) + 3488628 - 8768 * (((1959383 * (2717 * (BYTE2(v131) ^ 0x6Cu) + 3488628)) >> 32) >> 2)));
  *STACK[0x4AC0] = 31;
  v144 = *(STACK[0xFE70] + 4 * (2717 * (BYTE1(v118) ^ 0xE5) + 19518928 - 8768 * (((62700253 * (2717 * (BYTE1(v118) ^ 0xE5u) + 19518928)) >> 32) >> 7)));
  v145 = 2717 * (HIBYTE(v121) ^ 0x30) + 4184180 - 8768 * (((1959383 * (2717 * (HIBYTE(v121) ^ 0x30) + 4184180)) >> 32) >> 2);
  v146 = 2717 * (v121 ^ 0xEA) + 5575284 - 8768 * (((1959383 * (2717 * (v121 ^ 0xEAu) + 5575284)) >> 32) >> 2);
  v147 = 2717 * (BYTE2(v122) ^ 0xA4) + 3488628 - 8768 * (((1959383 * (2717 * (BYTE2(v122) ^ 0xA4u) + 3488628)) >> 32) >> 2);
  v148 = v137 ^ (v138 + v124);
  *STACK[0x5200] = -117;
  v149 = STACK[0xFE70];
  v150 = LODWORD(STACK[0x4DB8]) ^ v143 ^ v144 ^ *(STACK[0xFE70] + 4 * v146) ^ v142;
  LODWORD(v149) = LODWORD(STACK[0x4DB0]) ^ *(v149 + 4 * v145) ^ *(v149 + 4 * (2717 * (BYTE1(v131) ^ 0x54) + 19518928 - 8768 * (((62700253 * (2717 * (BYTE1(v131) ^ 0x54u) + 19518928)) >> 32) >> 7))) ^ *(v149 + 4 * (2717 * (v118 ^ 0x8F) + 5575284 - 8768 * (((1959383 * (2717 * (v118 ^ 0x8Fu) + 5575284)) >> 32) >> 2))) ^ *(v149 + 4 * v147);
  *STACK[0x4AB8] = 92;
  v151 = STACK[0xFE70];
  v152 = 2717 * (((v150 >> 23) & 8) + (HIBYTE(v150) ^ 0x61F));
  v153 = LODWORD(STACK[0x4DA8]) ^ *(v151 + 4 * (2717 * (BYTE2(v149) ^ 0xE2) + 3488628 - 8768 * (((1959383 * (2717 * (BYTE2(v149) ^ 0xE2u) + 3488628)) >> 32) >> 2))) ^ *(v151 + 4 * (2717 * (v141 ^ 2) + 5575284 - 8768 * (((1959383 * (2717 * (v141 ^ 2u) + 5575284)) >> 32) >> 2))) ^ *(v151 + 4 * (2717 * (BYTE1(v150) ^ 0xAF) + 19518928 - 8768 * (((62700253 * (2717 * (BYTE1(v150) ^ 0xAFu) + 19518928)) >> 32) >> 7))) ^ *(v151 + 4 * (2717 * (HIBYTE(v148) ^ 8) + 4184180 - 8768 * (((1959383 * (2717 * (HIBYTE(v148) ^ 8) + 4184180)) >> 32) >> 2)));
  v154 = LODWORD(STACK[0x4DA0]) ^ *(v151 + 4 * (2717 * (HIBYTE(v141) ^ 0xDE) + 4184180 - 8768 * (((1959383 * (2717 * (HIBYTE(v141) ^ 0xDE) + 4184180)) >> 32) >> 2))) ^ *(v151 + 4 * (2717 * (v150 ^ 0x1F) + 5575284 - 8768 * (((1959383 * (2717 * (v150 ^ 0x1Fu) + 5575284)) >> 32) >> 2))) ^ *(v151 + 4 * (2717 * (BYTE1(v149) ^ 0xEE) + 19518928 - 8768 * (((62700253 * (2717 * (BYTE1(v149) ^ 0xEEu) + 19518928)) >> 32) >> 7))) ^ *(v151 + 4 * (2717 * BYTE2(v148) + 3488628 - 8768 * (((1959383 * (2717 * BYTE2(v148) + 3488628)) >> 32) >> 2)));
  *STACK[0x4AB0] = -84;
  v155 = *(STACK[0xFE70] + 4 * (v152 - 8768 * (((1959383 * v152) >> 32) >> 2)));
  *STACK[0x4AA8] = 111;
  *STACK[0x4AA0] = 6;
  *STACK[0x5640] = -38;
  v156 = *(STACK[0xFE70] + 4 * (2717 * (BYTE2(v141) ^ 0x3B) + 3488628 - 8768 * (((1959383 * (2717 * (BYTE2(v141) ^ 0x3Bu) + 3488628)) >> 32) >> 2)));
  *STACK[0x4A98] = -27;
  v157 = *(STACK[0xFE70] + 4 * (2717 * BYTE1(v148) + 19518928 - 8768 * (((62700253 * (2717 * BYTE1(v148) + 19518928)) >> 32) >> 7)));
  v158 = 2717 * (v149 ^ 0xF4) + 5575284 - 8768 * (((1959383 * (2717 * (v149 ^ 0xF4u) + 5575284)) >> 32) >> 2);
  v159 = LODWORD(STACK[0x4D98]) ^ v156 ^ v155;
  *STACK[0x5460] = 57;
  *STACK[0x5000] = 64;
  LODWORD(v149) = *(STACK[0xFE70] + 4 * (2717 * (BYTE3(v149) ^ 0x17) + 4184180 - 8768 * (((1959383 * (2717 * (BYTE3(v149) ^ 0x17) + 4184180)) >> 32) >> 2)));
  v160 = *(STACK[0xFE70] + 4 * (2717 * (BYTE2(v150) ^ 0xDD) + 3488628 - 8768 * (((1959383 * (2717 * (BYTE2(v150) ^ 0xDDu) + 3488628)) >> 32) >> 2)));
  v161 = 2717 * (BYTE1(v141) ^ 0xF1) + 19518928 - 8768 * (((62700253 * (2717 * (BYTE1(v141) ^ 0xF1u) + 19518928)) >> 32) >> 7);
  v162 = v159 ^ *(STACK[0xFE70] + 4 * v158) ^ v157;
  *STACK[0x51D8] = -44;
  v163 = v160 ^ *(STACK[0xFE70] + 4 * v161);
  v164 = *(STACK[0xFE70] + 4 * (2717 * v148 + 5575284 - 8768 * (((1959383 * (2717 * v148 + 5575284)) >> 32) >> 2)));
  *STACK[0x4A90] = 124;
  v165 = LODWORD(STACK[0x4FC8]) ^ v149 ^ v163;
  *STACK[0x5010] = 54;
  *STACK[0x5470] = 13;
  LODWORD(v149) = *(STACK[0xFE70] + 4 * (2717 * (HIBYTE(v153) ^ 0xC0) + 4184180 - 8768 * (((1959383 * (2717 * (HIBYTE(v153) ^ 0xC0) + 4184180)) >> 32) >> 2)));
  v166 = v165 ^ v164;
  v167 = *(STACK[0xFE70] + 4 * (2717 * (BYTE2(v166) ^ 0x59) + 3488628 - 8768 * (((1959383 * (2717 * (BYTE2(v166) ^ 0x59u) + 3488628)) >> 32) >> 2)));
  v168 = LODWORD(STACK[0x4D58]) - 2125238614 + (((v149 ^ 0x1A0B1F7F) - 436936575) ^ ((v149 ^ 0xB5B2FE2D) + 1246560723) ^ ((v149 ^ 0xE37C85A3) + 478378589)) + ((2 * ((v149 ^ 0x7A2C096) & LODWORD(STACK[0x4C68]) ^ LODWORD(STACK[0x4BA8]))) ^ 0xED38BFFB) - 4042;
  v169 = (v168 ^ 0x92030EDF) & (2 * (v168 & 0xDB4B2E9E)) ^ v168 & 0xDB4B2E9E;
  v170 = ((2 * (v168 ^ 0x801107FF)) ^ 0xB6B452C2) & (v168 ^ 0x801107FF) ^ (2 * (v168 ^ 0x801107FF)) & 0x5B5A2960;
  v171 = (v170 ^ 0x12120141) & (4 * v169) ^ v169;
  v172 = ((4 * (v170 ^ 0x494A2921)) ^ 0x6D68A584) & (v170 ^ 0x494A2921) ^ (4 * (v170 ^ 0x494A2921)) & 0x5B5A2960;
  v173 = (v172 ^ 0x49482100) & (16 * v171) ^ v171;
  v174 = ((16 * (v172 ^ 0x12120861)) ^ 0xB5A29610) & (v172 ^ 0x12120861) ^ (16 * (v172 ^ 0x12120861)) & 0x5B5A2960;
  LODWORD(v149) = v173 ^ 0x5B5A2961 ^ (v174 ^ 0x11020061) & (v173 << 8);
  *STACK[0x4A88] = -19;
  v175 = *(STACK[0xFE70] + 4 * (2717 * (HIBYTE(v154) ^ 7) + 4184180 - 8768 * (((1959383 * (2717 * (HIBYTE(v154) ^ 7) + 4184180)) >> 32) >> 2)));
  v176 = *(STACK[0xFE70] + 4 * (2717 * (v154 ^ 6) + 5575284 - 8768 * (((1959383 * (2717 * (v154 ^ 6u) + 5575284)) >> 32) >> 2)));
  v177 = *(STACK[0xFE70] + 4 * (2717 * (BYTE1(v162) ^ 3) + 19518928 - 8768 * (((62700253 * (2717 * (BYTE1(v162) ^ 3u) + 19518928)) >> 32) >> 7)));
  *STACK[0x4A80] = -68;
  *STACK[0x4F08] = -68;
  v178 = STACK[0xFE70];
  v179 = *(STACK[0xFE70] + 4 * (2717 * (HIBYTE(v162) ^ 0x33) + 4184180 - 8768 * (((1959383 * (2717 * (HIBYTE(v162) ^ 0x33) + 4184180)) >> 32) >> 2)));
  v180 = ((v149 << 16) ^ 0x29610000) & (((v174 ^ 0x4A582961) << 8) & 0x5B5A0000 ^ 0x1520000 ^ (((v174 ^ 0x4A582961) << 8) ^ 0x5A290000) & (v174 ^ 0x4A582961));
  v181 = (v149 << 16) & 0x5B5A0000 ^ v149;
  v182 = LODWORD(STACK[0x4BA0]) ^ v175 ^ *(v178 + 4 * (2717 * (BYTE2(v153) ^ 0xF1) + 3488628 - 8768 * (((1959383 * (2717 * (BYTE2(v153) ^ 0xF1u) + 3488628)) >> 32) >> 2))) ^ *(v178 + 4 * (2717 * (BYTE1(v166) ^ 0x13) + 19518928 - 8768 * (((62700253 * (2717 * (BYTE1(v166) ^ 0x13u) + 19518928)) >> 32) >> 7))) ^ *(v178 + 4 * (2717 * (v162 ^ 0x5B) + 5575284 - 8768 * (((1959383 * (2717 * (v162 ^ 0x5Bu) + 5575284)) >> 32) >> 2)));
  HIDWORD(v183) = v182 ^ 0x1A;
  LODWORD(v183) = v182 ^ 0x8FDC920;
  v184 = 2717 * (HIBYTE(v166) ^ 0x82) + 4184180 - 8768 * (((1959383 * (2717 * (HIBYTE(v166) ^ 0x82) + 4184180)) >> 32) >> 2);
  *STACK[0x4A78] = -126;
  *STACK[0x54F0] = 46;
  v185 = STACK[0xFE70];
  v186 = LODWORD(STACK[0x4B98]) ^ v179 ^ *(v185 + 4 * (2717 * (BYTE2(v154) ^ 0xA1) + 3488628 - 8768 * (((1959383 * (2717 * (BYTE2(v154) ^ 0xA1u) + 3488628)) >> 32) >> 2))) ^ *(v185 + 4 * (2717 * (BYTE1(v153) ^ 0x76) + 19518928 - 8768 * (((62700253 * (2717 * (BYTE1(v153) ^ 0x76u) + 19518928)) >> 32) >> 7))) ^ *(v185 + 4 * (2717 * (v166 ^ 8) + 5575284 - 8768 * (((1959383 * (2717 * (v166 ^ 8u) + 5575284)) >> 32) >> 2)));
  v187 = 2717 * (BYTE2(v162) ^ 0xD4) + 3488628 - 8768 * (((1959383 * (2717 * (BYTE2(v162) ^ 0xD4u) + 3488628)) >> 32) >> 2);
  v188 = *(STACK[0xFE70] + 4 * v184);
  v189 = 2717 * (v153 ^ 0x43) + 5575284 - 8768 * (((1959383 * (2717 * (v153 ^ 0x43u) + 5575284)) >> 32) >> 2);
  v190 = *(STACK[0xFE70] + 4 * v187);
  v191 = *(STACK[0xFE70] + 4 * (2717 * (BYTE1(v154) ^ 0x39) + 19518928 - 8768 * (((62700253 * (2717 * (BYTE1(v154) ^ 0x39u) + 19518928)) >> 32) >> 7)));
  *STACK[0x5310] = 17;
  v192 = v190 ^ v191;
  v193 = STACK[0xFE70];
  LODWORD(v149) = LODWORD(STACK[0x4B90]) ^ v188 ^ v192 ^ *(STACK[0xFE70] + 4 * v189);
  v194 = v167 ^ v176 ^ v177 ^ v168 ^ (2 * (v181 ^ v180)) ^ 0xF9F4FFE9;
  HIDWORD(v183) = v183 >> 5;
  LODWORD(v183) = HIDWORD(v183);
  v195 = v183 >> 27;
  v196 = 2717 * (v183 >> 27) + 5575284;
  *STACK[0x52D0] = -88;
  *STACK[0x5680] = 6;
  v197 = LODWORD(STACK[0x4B88]) ^ *(v193 + 4 * (2717 * (BYTE1(v186) ^ 0x7D) + 19518928 - 8768 * (((62700253 * (2717 * (BYTE1(v186) ^ 0x7Du) + 19518928)) >> 32) >> 7))) ^ *(v193 + 4 * (2717 * (BYTE2(v149) ^ 0xFD) + 3488628 - 8768 * (((1959383 * (2717 * (BYTE2(v149) ^ 0xFDu) + 3488628)) >> 32) >> 2))) ^ *(v193 + 4 * (v196 - 8768 * (((1959383 * v196) >> 32) >> 2))) ^ *(v193 + 4 * (2717 * HIBYTE(v194) + 4184180 - 8768 * (((1959383 * (2717 * HIBYTE(v194) + 4184180)) >> 32) >> 2)));
  v198 = LODWORD(STACK[0x4B80]) ^ *(v193 + 4 * (2717 * HIBYTE(v195) + 4184180 - 8768 * (((1959383 * (2717 * HIBYTE(v195) + 4184180)) >> 32) >> 2))) ^ *(v193 + 4 * (2717 * (BYTE1(v149) ^ 0xB1) + 19518928 - 8768 * (((62700253 * (2717 * (BYTE1(v149) ^ 0xB1u) + 19518928)) >> 32) >> 7))) ^ *(v193 + 4 * (2717 * (v186 ^ 0x9B) + 5575284 - 8768 * (((1959383 * (2717 * (v186 ^ 0x9Bu) + 5575284)) >> 32) >> 2))) ^ *(v193 + 4 * (2717 * BYTE2(v194) + 3488628 - 8768 * (((1959383 * (2717 * BYTE2(v194) + 3488628)) >> 32) >> 2)));
  v199 = 2717 * (HIBYTE(v197) ^ 0xAA) + 4184180 - 17536 * (((1959383 * (2717 * (HIBYTE(v197) ^ 0xAA) + 4184180)) >> 32) >> 3);
  v200 = 2717 * (HIBYTE(v198) ^ 0xEB) + 4184180 - 17536 * (((1959383 * (2717 * (HIBYTE(v198) ^ 0xEB) + 4184180)) >> 32) >> 3);
  v201 = 2717 * (BYTE3(v149) ^ 0x62) + 4184180 - 8768 * (((1959383 * (2717 * (BYTE3(v149) ^ 0x62) + 4184180)) >> 32) >> 2);
  v202 = LODWORD(STACK[0x4B78]) ^ *(v193 + 4 * (2717 * (HIBYTE(v186) ^ 0xA6) + 4184180 - 8768 * (((1959383 * (2717 * (HIBYTE(v186) ^ 0xA6) + 4184180)) >> 32) >> 2))) ^ *(v193 + 4 * (2717 * BYTE2(v195) + 3488628 - 8768 * (((1959383 * (2717 * BYTE2(v195) + 3488628)) >> 32) >> 2))) ^ *(v193 + 4 * (2717 * (v149 ^ 0x93) + 5575284 - 8768 * (((1959383 * (2717 * (v149 ^ 0x93u) + 5575284)) >> 32) >> 2))) ^ *(v193 + 4 * (2717 * BYTE1(v194) + 19518928 - 8768 * (((62700253 * (2717 * BYTE1(v194) + 19518928)) >> 32) >> 7)));
  v203 = LODWORD(STACK[0x4E78]) ^ *(v193 + 4 * v201);
  *STACK[0x5028] = 114;
  v204 = v203 ^ *(v193 + 4 * (2717 * (BYTE2(v186) ^ 0xF2) + 3488628 - 8768 * (((1959383 * (2717 * (BYTE2(v186) ^ 0xF2u) + 3488628)) >> 32) >> 2))) ^ *(v193 + 4 * (2717 * BYTE1(v195) + 19518928 - 8768 * (((62700253 * (2717 * BYTE1(v195) + 19518928)) >> 32) >> 7))) ^ *(v193 + 4 * (2717 * v194 + 5575284 - 8768 * (((1959383 * (2717 * v194 + 5575284)) >> 32) >> 2)));
  v205 = v199 - 8768;
  if (v199 >> 6 < 0x89)
  {
    v205 = 2717 * (HIBYTE(v197) ^ 0xAA) + 4184180 - 17536 * (((1959383 * (2717 * (HIBYTE(v197) ^ 0xAA) + 4184180)) >> 32) >> 3);
  }

  *STACK[0x5730] = 63;
  *STACK[0x4A70] = 26;
  *STACK[0x4A68] = -33;
  *STACK[0x4A60] = 98;
  v206 = *(v193 + 4 * v205);
  *STACK[0x4A58] = -39;
  v207 = v200 - 8768;
  if (v200 >> 6 < 0x89)
  {
    v207 = 2717 * (HIBYTE(v198) ^ 0xEB) + 4184180 - 17536 * (((1959383 * (2717 * (HIBYTE(v198) ^ 0xEB) + 4184180)) >> 32) >> 3);
  }

  v208 = LODWORD(STACK[0x4B70]) ^ *(v193 + 4 * (2717 * (v198 ^ 0xC9) + 5575284 - 8768 * (((1959383 * (2717 * (v198 ^ 0xC9u) + 5575284)) >> 32) >> 2))) ^ *(v193 + 4 * (2717 * (BYTE2(v204) ^ 0x30) + 3488628 - 8768 * (((1959383 * (2717 * (BYTE2(v204) ^ 0x30u) + 3488628)) >> 32) >> 2))) ^ *(v193 + 4 * (2717 * (BYTE1(v202) ^ 9) + 19518928 - 8768 * (((62700253 * (2717 * (BYTE1(v202) ^ 9u) + 19518928)) >> 32) >> 7))) ^ v206;
  LODWORD(v209) = __ROR4__(LODWORD(STACK[0x4EB0]) ^ LODWORD(STACK[0x4EA8]) ^ LODWORD(STACK[0x4EA0]) ^ LODWORD(STACK[0x4E88]) ^ 0xC651A3E8 ^ *(v193 + 4 * v207), 20) ^ 0x5B31CFD4;
  HIDWORD(v209) = v209;
  v210 = (v209 >> 12) - ((2 * (v209 >> 12)) & 0x9007EBB4) + 1208219098;
  v211 = LODWORD(STACK[0x4B68]) ^ *(v193 + 4 * (2717 * (HIBYTE(v202) ^ 4) + 4184180 - 8768 * (((1959383 * (2717 * (HIBYTE(v202) ^ 4) + 4184180)) >> 32) >> 2))) ^ *(v193 + 4 * (2717 * (BYTE2(v198) ^ 0x71) + 3488628 - 8768 * (((1959383 * (2717 * (BYTE2(v198) ^ 0x71u) + 3488628)) >> 32) >> 2)));
  HIDWORD(v209) = v211 ^ 0x378D3C0;
  LODWORD(v209) = v211 ^ 0x66666666;
  HIDWORD(v209) = v209 >> 26;
  LODWORD(v209) = HIDWORD(v209);
  v212 = *(v193 + 4 * (2717 * (BYTE2(v197) ^ 0x2F) + 3488628 - 8768 * (((1959383 * (2717 * (BYTE2(v197) ^ 0x2Fu) + 3488628)) >> 32) >> 2)));
  v213 = (v209 >> 6) - ((2 * (v209 >> 6)) & 0x768E4D72) + 994518713;
  v214 = *(v193 + 4 * (2717 * (BYTE1(v204) ^ 0x25) + 19518928 - 8768 * (((62700253 * (2717 * (BYTE1(v204) ^ 0x25u) + 19518928)) >> 32) >> 7)));
  v215 = *(v193 + 4 * (2717 * (v202 ^ 0x14) + 5575284 - 8768 * (((1959383 * (2717 * (v202 ^ 0x14u) + 5575284)) >> 32) >> 2)));
  v216 = *(v193 + 4 * (2717 * (BYTE1(v197) ^ 0x36) + 19518928 - 8768 * (((62700253 * (2717 * (BYTE1(v197) ^ 0x36u) + 19518928)) >> 32) >> 7)));
  v217 = *(v193 + 4 * (2717 * (v204 ^ 0x64) + 5575284 - 8768 * (((1959383 * (2717 * (v204 ^ 0x64u) + 5575284)) >> 32) >> 2)));
  v218 = 2717 * (BYTE2(v202) ^ 0x21) + 3488628 - 8768 * (((1959383 * (2717 * (BYTE2(v202) ^ 0x21u) + 3488628)) >> 32) >> 2);
  *STACK[0x4A50] = -28;
  v219 = STACK[0xFE70];
  v220 = LODWORD(STACK[0x4B60]) ^ *(v219 + 4 * (2717 * (HIBYTE(v204) ^ 0x26) + 4184180 - 8768 * (((1959383 * (2717 * (HIBYTE(v204) ^ 0x26) + 4184180)) >> 32) >> 2))) ^ *(v219 + 4 * v218);
  HIDWORD(v209) = v220 ^ 0x32FB;
  LODWORD(v209) = v220 ^ 0x343D0000;
  v221 = v217 ^ v216 ^ v213;
  v222 = v212 ^ 0x231DE0E8 ^ v214 ^ v215 ^ v210;
  HIDWORD(v209) = v209 >> 15;
  LODWORD(v209) = HIDWORD(v209);
  v223 = *(STACK[0xFE70] + 4 * (2717 * (BYTE1(v198) ^ 0x13) + 19518928 - 8768 * (((62700253 * (2717 * (BYTE1(v198) ^ 0x13u) + 19518928)) >> 32) >> 7)));
  *STACK[0x52A8] = -119;
  v224 = *(v219 + 4 * (2717 * (v197 ^ 0xD) + 5575284 - 8768 * (((1959383 * (2717 * (v197 ^ 0xDu) + 5575284)) >> 32) >> 2))) ^ v223 ^ ((v209 >> 17) - ((2 * (v209 >> 17)) & 0x559CD358) - 1429313108);
  *STACK[0x4A48] = 60;
  v225 = LODWORD(STACK[0x4B58]) ^ *(v219 + 4 * (2717 * (HIBYTE(v208) ^ 0x39) + 1396538 - 8768 * (((1959383 * (2717 * (HIBYTE(v208) ^ 0x39) + 1396538)) >> 32) >> 2))) ^ *(v219 + 4 * (2717 * (BYTE2(v224) ^ 0xCE) + 10455016 - 8768 * (((31350127 * (2717 * (BYTE2(v224) ^ 0xCEu) + 10455016)) >> 32) >> 6)));
  *STACK[0x4A40] = 68;
  v226 = v225 ^ *(v219 + 4 * (2717 * (BYTE1(v221) ^ 0x26) + 9756747 - 8768 * (((31350127 * (2717 * (BYTE1(v221) ^ 0x26u) + 9756747)) >> 32) >> 6))) ^ *(v219 + 4 * (2717 * (v212 ^ 0xE8 ^ (v214 ^ v215) ^ v210) + 2793076 - 8768 * (((1959383 * (2717 * (v212 ^ 0xE8u ^ (v214 ^ v215) ^ v210) + 2793076)) >> 32) >> 2)));
  v227 = 2717 * ((~(v221 >> 23) & 4) + (HIBYTE(v221) ^ 0x239));
  v228 = *(v219 + 4 * (2717 * HIBYTE(v222) + 1396538 - 8768 * (((1959383 * (2717 * HIBYTE(v222) + 1396538)) >> 32) >> 2)));
  v229 = *(v219 + 4 * (2717 * (BYTE1(v224) ^ 0x69) + 9756747 - 8768 * (((31350127 * (2717 * (BYTE1(v224) ^ 0x69u) + 9756747)) >> 32) >> 6)));
  v230 = *(v219 + 4 * (2717 * (BYTE2(v208) ^ 0x1C) + 10455016 - 8768 * (((31350127 * (2717 * (BYTE2(v208) ^ 0x1Cu) + 10455016)) >> 32) >> 6)));
  v231 = *(v219 + 4 * (2717 * (v221 ^ 0xB9) + 2793076 - 8768 * (((1959383 * (2717 * (v221 ^ 0xB9u) + 2793076)) >> 32) >> 2)));
  v232 = *(v219 + 4 * (v227 - 8768 * (((1959383 * v227) >> 32) >> 2)));
  LODWORD(STACK[0x5378]) = v232;
  v233 = *(v219 + 4 * (2717 * BYTE2(v222) + 10455016 - 8768 * (((31350127 * (2717 * BYTE2(v222) + 10455016)) >> 32) >> 6)));
  v234 = *(v219 + 4 * (2717 * (BYTE1(v208) ^ 0x13) + 9756747 - 8768 * (((31350127 * (2717 * (BYTE1(v208) ^ 0x13u) + 9756747)) >> 32) >> 6)));
  LODWORD(v219) = LODWORD(STACK[0x4B50]) ^ v228 ^ v229 ^ v230;
  *STACK[0x4A38] = 43;
  v235 = STACK[0xFE70];
  v236 = v234 ^ *(STACK[0xFE70] + 4 * (2717 * (v224 ^ 0xAC) + 2793076 - 8768 * (((1959383 * (2717 * (v224 ^ 0xACu) + 2793076)) >> 32) >> 2)));
  v237 = v219 ^ v231;
  *STACK[0x4A30] = -66;
  v238 = *(v235 + 4 * (2717 * (HIBYTE(v224) ^ 0xAA) + 1396538 - 8768 * (((1959383 * (2717 * (HIBYTE(v224) ^ 0xAA) + 1396538)) >> 32) >> 2)));
  v239 = *(v235 + 4 * (2717 * BYTE1(v222) + 9756747 - 8768 * (((31350127 * (2717 * BYTE1(v222) + 9756747)) >> 32) >> 6)));
  v240 = *(v235 + 4 * (2717 * (BYTE2(v221) ^ 0x47) + 10455016 - 8768 * (((31350127 * (2717 * (BYTE2(v221) ^ 0x47u) + 10455016)) >> 32) >> 6)));
  *STACK[0x54E0] = -94;
  LODWORD(v235) = LODWORD(STACK[0x4B40]) ^ v238 ^ v239 ^ v240 ^ *(v235 + 4 * (2717 * (v208 ^ 0xC5) + 2793076 - 8768 * (((1959383 * (2717 * (v208 ^ 0xC5u) + 2793076)) >> 32) >> 2)));
  v241 = LODWORD(STACK[0x4B48]) ^ v233 ^ v232 ^ v236;
  *STACK[0x5008] = -41;
  *STACK[0x4A28] = -127;
  *STACK[0x4A20] = -64;
  HIDWORD(v209) = 3903 * (BYTE3(v235) ^ 0x34) + 6018426;
  LODWORD(v209) = HIDWORD(v209);
  v242 = STACK[0xFE78];
  v243 = *(STACK[0xFE78] + ((v209 >> 24) >> 8) - 5896 * ((v209 >> 24) / 0x170800));
  LODWORD(STACK[0x5280]) = v243;
  *STACK[0x53D8] = 42;
  v244 = *(v242 + 3903 * (HIBYTE(v226) ^ 0xE6) + 6018426 - 5896 * (((11655271 * (3903 * (HIBYTE(v226) ^ 0xE6) + 6018426)) >> 32) >> 4));
  *STACK[0x4A18] = 1;
  LODWORD(v242) = *(v242 + 3903 * v235 + 11057199 - 5896 * (((11655271 * (3903 * v235 + 11057199)) >> 32) >> 4));
  LODWORD(STACK[0x5370]) = v242;
  *STACK[0x4A10] = 1;
  v245 = *(STACK[0xFE78] + 3903 * (BYTE1(v235) ^ 0xE7) + 18106017 - 5896 * (((93242167 * (3903 * (BYTE1(v235) ^ 0xE7u) + 18106017)) >> 32) >> 7));
  LODWORD(v219) = *(STACK[0xFE78] + (3903 * (BYTE2(v241) ^ 0xD2) - 5896 * ((728455 * (3903 * (BYTE2(v241) ^ 0xD2u))) >> 32)));
  v246 = *(STACK[0xFE78] + 3903 * (v237 ^ 9) + 11057199 - 5896 * (((11655271 * (3903 * (v237 ^ 9u) + 11057199)) >> 32) >> 4));
  *STACK[0x4A08] = 93;
  v247 = *(STACK[0xFE78] + 3903 * (BYTE1(v241) ^ 0x2B) + 18106017 - 5896 * (((93242167 * (3903 * (BYTE1(v241) ^ 0x2Bu) + 18106017)) >> 32) >> 7));
  *STACK[0x4A00] = -52;
  *STACK[0x4FE0] = -41;
  v248 = *(STACK[0xFE78] + 3903 * (v226 ^ 8) + 11057199 - 5896 * (((11655271 * (3903 * (v226 ^ 8u) + 11057199)) >> 32) >> 4));
  *STACK[0x4FA0] = 112;
  v249 = STACK[0xFE78];
  v250 = *(STACK[0xFE78] + (3903 * (BYTE2(v235) ^ 0xD6) - 5896 * ((728455 * (3903 * (BYTE2(v235) ^ 0xD6u))) >> 32)));
  LODWORD(STACK[0x5250]) = v250;
  v251 = *(v249 + 3903 * (v241 ^ 0xED) + 11057199 - 5896 * (((11655271 * (3903 * (v241 ^ 0xEDu) + 11057199)) >> 32) >> 4));
  *STACK[0x52B0] = -101;
  v252 = *(STACK[0xFE78] + 3903 * (HIBYTE(v237) ^ 0x41) + 6018426 - 5896 * (((11655271 * (3903 * (HIBYTE(v237) ^ 0x41) + 6018426)) >> 32) >> 4));
  *STACK[0x52C8] = -24;
  v253 = *(STACK[0xFE78] + (3903 * (BYTE2(v226) ^ 0x47) - 5896 * ((728455 * (3903 * (BYTE2(v226) ^ 0x47u))) >> 32)));
  v254 = *(STACK[0xFE78] + (3903 * (BYTE2(v237) ^ 0x5A) - 5896 * ((728455 * (3903 * (BYTE2(v237) ^ 0x5Au))) >> 32)));
  LODWORD(v249) = *(STACK[0xFE78] + 3903 * (HIBYTE(v241) ^ 0xC9) + 6018426 - 5896 * (((11655271 * (3903 * (HIBYTE(v241) ^ 0xC9) + 6018426)) >> 32) >> 4));
  v255 = *(STACK[0xFE78] + 3903 * (BYTE1(v237) ^ 0xE7) + 18106017 - 5896 * (((93242167 * (3903 * (BYTE1(v237) ^ 0xE7u) + 18106017)) >> 32) >> 7));
  LODWORD(STACK[0x5278]) = v243 < 0x1C;
  LODWORD(STACK[0x5288]) = v242 < 0x1C;
  v256 = v245;
  LODWORD(STACK[0x5270]) = v245 < 0x1C;
  LODWORD(STACK[0x5220]) = v250 < 0x1C;
  LODWORD(STACK[0x51C8]) = (3903 * (v244 + 1823821147 + ((v244 < 0x1C) << 8)) - 1599174044) % 0x1708;
  v257 = v249 & 0x40 ^ 0xFFFFFFF6;
  v258 = v249 ^ (2 * ((v249 ^ 0x64) & (2 * ((v249 ^ 0x64) & (2 * ((v249 ^ 0x64) & (2 * ((v249 ^ 0x64) & (2 * ((v249 ^ 0x64) & 0x2C ^ v257)) ^ v257)) ^ v257)) ^ v257)) ^ v257));
  *STACK[0x49F8] = 103;
  v259 = *(STACK[0xFE78] + 3903 * (BYTE1(v226) ^ 0x48) + 18106017 - 5896 * (((93242167 * (3903 * (BYTE1(v226) ^ 0x48u) + 18106017)) >> 32) >> 7));
  v260 = v259 | ((v259 < 0x1C) << 8);
  LODWORD(v242) = (3903 * (v254 | ((v254 < 0x1C) << 8)) + 11947083) % 0x1708;
  v261 = ((2 * v258) & 0x26) + (v258 ^ 0xE53);
  v262 = v251 | ((v251 < 0x1C) << 8);
  v263 = (3903 * (v247 | ((v247 < 0x1C) << 8)) + 7919187) % 0x1708;
  v264 = (3903 * (LODWORD(STACK[0x5280]) | (LODWORD(STACK[0x5278]) << 8)) + 13953225) % 0x1708u;
  v265 = *(STACK[0xFE78] + LODWORD(STACK[0x51C8]));
  v266 = *(STACK[0xFE78] + (3903 * (v253 | ((v253 < 0x1C) << 8)) + 11947083) % 0x1708);
  v267 = *(STACK[0xFE78] + (3903 * (v252 | ((v252 < 0x1C) << 8)) + 13953225) % 0x1708);
  v268 = *(STACK[0xFE78] + (3903 * (v248 | ((v248 < 0x1C) << 8)) + 20662482) % 0x1708);
  v269 = *(STACK[0xFE78] + v242);
  v270 = *(STACK[0xFE78] + (3903 * (v255 | ((v255 < 0x1C) << 8)) + 7919187) % 0x1708);
  v271 = *(STACK[0xFE78] + (3903 * (v246 + 1077673566 + ((v246 < 0x1C) << 8)) - 1366282832) % 0x1708);
  v272 = *(STACK[0xFE78] + (3903 * v260 + 7919187) % 0x1708u);
  v273 = (3903 * (LODWORD(STACK[0x5250]) | (LODWORD(STACK[0x5220]) << 8)) + 11947083) % 0x1708u;
  v274 = (3903 * (v256 | (LODWORD(STACK[0x5270]) << 8)) + 7919187) % 0x1708;
  LODWORD(v242) = (3903 * (LODWORD(STACK[0x5370]) | (LODWORD(STACK[0x5288]) << 8)) + 20662482) % 0x1708u;
  *STACK[0x49F0] = 19;
  v275 = STACK[0xFE78];
  v276 = *(STACK[0xFE78] + 3903 * v261 - 5896 * (((11655271 * (3903 * v261)) >> 32) >> 4));
  LODWORD(STACK[0x5280]) = v276;
  *STACK[0x49E8] = -18;
  v277 = *(v275 + (3903 * (v219 | ((v219 < 0x1C) << 8)) + 11947083) % 0x1708);
  *STACK[0x49E0] = -108;
  v278 = *(v275 + v263);
  *STACK[0x5500] = -51;
  v279 = *(v275 + (3903 * v262 + 20662482) % 0x1708u);
  LODWORD(STACK[0x5288]) = v279;
  *STACK[0x51A0] = -127;
  v280 = *(v275 + v264);
  v281 = *(v275 + v273);
  v282 = *(v275 + v274);
  *STACK[0x49D8] = -2;
  v283 = *(v275 + v242);
  LODWORD(STACK[0x5278]) = v276 < 0x1C;
  LODWORD(STACK[0x5250]) = v277 < 0x1C;
  LODWORD(STACK[0x5270]) = v278 < 0x1C;
  LODWORD(STACK[0x5370]) = v279 < 0x1C;
  v284 = v281 >= 0x1C;
  v285 = v281 + 1340067312;
  v286 = !v284;
  v287 = v285 + (v286 << 8);
  v288 = v282 | ((v282 < 0x1C) << 8);
  v289 = STACK[0xFE70];
  v290 = *(v289 + 4 * ((2717 * (v287 + 3914) + 1179588073) % 0x2240)) ^ *(v289 + 4 * ((2717 * v288 + 18741866) % 0x2240u)) ^ *(v289 + 4 * ((2717 * (v283 | ((v283 < 0x1C) << 8)) - 76076) % 0x2240)) ^ *(v289 + 4 * ((2717 * (v280 | ((v280 < 0x1C) << 8)) + 11074492) % 0x2240));
  v291 = *(STACK[0xFE70] + 4 * ((2717 * (v265 | ((v265 < 0x1C) << 8)) + 11074492) % 0x2240));
  v292 = *(STACK[0xFE70] + 4 * (2717 * BYTE2(v290) + 8362926 - 8768 * (((1959383 * (2717 * BYTE2(v290) + 8362926)) >> 32) >> 2)));
  *STACK[0x49D0] = 94;
  *STACK[0x49C8] = -28;
  v293 = *(STACK[0xFE70] + 4 * ((2717 * (v266 | ((v266 < 0x1C) << 8)) + 20842107) % 0x2240)) ^ *(STACK[0xFE70] + 4 * ((2717 * (v272 | ((v272 < 0x1C) << 8)) + 18741866) % 0x2240)) ^ v291;
  *STACK[0x49C0] = -119;
  v294 = v290;
  v295 = *(STACK[0xFE70] + 4 * (2717 * BYTE1(v290) + 2094807 - 8768 * (((1959383 * (2717 * BYTE1(v290) + 2094807)) >> 32) >> 2)));
  v296 = v293 ^ *(STACK[0xFE70] + 4 * ((2717 * (v268 + 917114884 + ((v268 < 0x1C) << 8)) - 720184224) % 0x2240));
  LODWORD(STACK[0x5078]) = v296;
  v297 = v267 | ((v267 < 0x1C) << 8);
  *STACK[0x5048] = 51;
  *STACK[0x51D0] = -103;
  v298 = *(STACK[0xFE70] + 4 * (2717 * v294 + 17426838 - 8768 * (((62700253 * (2717 * v294 + 17426838)) >> 32) >> 7)));
  *STACK[0x4F10] = -12;
  v299 = *STACK[0x5348];
  v300 = v299 & 0xFFFFFFA8 ^ 0xFFFFFFE2;
  v301 = v269 | ((v269 < 0x1C) << 8);
  LODWORD(STACK[0x5068]) = v294;
  v302 = STACK[0xFE70];
  v303 = v295 ^ v292 ^ v298 ^ *(STACK[0xFE70] + 4 * (2717 * HIBYTE(v294) + 12547106 - 8768 * (((31350127 * (2717 * HIBYTE(v294) + 12547106)) >> 32) >> 6)));
  v304 = 2717 * (v270 | ((v270 < 0x1C) << 8)) + 18741866;
  v305 = (v299 ^ 0x64) & (2 * ((v299 ^ 0x64) & (2 * ((v299 ^ 0x64) & (2 * ((v299 ^ 0x64) & (2 * ((v299 ^ 0x44) & (2 * v300) ^ v300)) ^ v300)) ^ v300)) ^ v300)) ^ v300;
  v306 = *(STACK[0xFE70] + 4 * ((2717 * (v278 | (LODWORD(STACK[0x5270]) << 8)) + 18741866) % 0x2240));
  v307 = *(STACK[0xFE70] + 4 * ((2717 * (v277 | (LODWORD(STACK[0x5250]) << 8)) + 20842107) % 0x2240));
  v308 = *(STACK[0xFE70] + 4 * ((2717 * (LODWORD(STACK[0x5280]) | (LODWORD(STACK[0x5278]) << 8)) + 11074492) % 0x2240u));
  v309 = v303 ^ (((v305 << 25) ^ (v299 << 24) ^ 0xA8000000) + 656246286 - ((2 * ((v305 << 25) ^ (v299 << 24) ^ 0xA8000000)) & 0x4E000000)) ^ 0x271D860E;
  v310 = *(v302 + 4 * ((2717 * v297 + 11074492) % 0x2240u)) ^ *(v302 + 4 * (v304 % 0x2240)) ^ *(v302 + 4 * ((2717 * (v271 | ((v271 < 0x1C) << 8)) - 76076) % 0x2240)) ^ *(v302 + 4 * ((2717 * v301 + 20842107) % 0x2240u));
  LODWORD(STACK[0x5070]) = v310;
  v311 = (v309 + 1615872678 - 2 * (v309 & 0x605042B6 ^ v303 & 0x10)) ^ v296;
  LODWORD(STACK[0x5090]) = v311;
  v312 = v311 ^ 0x605042A6;
  LODWORD(STACK[0x5058]) = v311 ^ 0x605042A6;
  v313 = (v311 ^ 0x605042A6) - 1099242814 - ((2 * (v311 ^ 0x605042A6)) & 0x7CF5C584);
  v314 = 2717 * (LODWORD(STACK[0x5288]) + 2078146062 + (LODWORD(STACK[0x5370]) << 8)) + 1559067710;
  v315 = v307 ^ v306;
  *STACK[0x5430] = -18;
  v316 = STACK[0xFE70];
  v317 = v315 ^ *(STACK[0xFE70] + 4 * (v314 % 0x2240)) ^ v308;
  LODWORD(STACK[0x5080]) = v317;
  v318 = v310 ^ 0xBE7AE2C2;
  v319 = v313 ^ v310 ^ 0xBE7AE2C2;
  LODWORD(STACK[0x5098]) = v319;
  LODWORD(STACK[0x50A0]) = 2 * v319;
  v320 = (v319 - 237636884 - ((2 * v319) & 0xE3ABE5D8)) ^ v317;
  LODWORD(STACK[0x50D8]) = v320;
  v321 = v320 ^ 0xF1D5F2EC;
  v322 = 2 * (v320 ^ 0xF1D5F2EC);
  LODWORD(STACK[0x50B0]) = v322;
  v323 = v321;
  LODWORD(STACK[0x5088]) = v321;
  v324 = v294 ^ 0xDDC9B0BF;
  v325 = (v321 - 573984577 - (v322 & 0xBB93617E)) ^ v294 ^ 0xDDC9B0BF;
  v326 = *STACK[0x57B0];
  v327 = v326 & 0x7C ^ 0xFFFFFFCC;
  v328 = (((v326 ^ 0x64) & (2 * ((v326 ^ 0x64) & (2 * ((v326 ^ 0x64) & (2 * ((v326 ^ 0x64) & (2 * v327) ^ v327)) ^ v327)) ^ v327)) ^ v327) << 25) ^ (v326 << 24) ^ 0x7C000000;
  v329 = *(v316 + 4 * (2717 * v325 + 17426838 - 8768 * (((62700253 * (2717 * v325 + 17426838)) >> 32) >> 7))) ^ *(v316 + 4 * (2717 * BYTE2(v325) + 8362926 - 8768 * (((1959383 * (2717 * BYTE2(v325) + 8362926)) >> 32) >> 2))) ^ *(v316 + 4 * (2717 * BYTE1(v325) + 2094807 - 8768 * (((1959383 * (2717 * BYTE1(v325) + 2094807)) >> 32) >> 2))) ^ *(v316 + 4 * (2717 * HIBYTE(v325) + 12547106 - 8768 * (((31350127 * (2717 * HIBYTE(v325) + 12547106)) >> 32) >> 6)));
  v330 = v329 ^ (v328 + 1603053059 - ((2 * v328) & 0xBFFFFFFF)) ^ 0x5F8CA603;
  v331 = (v330 - 1099242814 - 2 * (v330 & 0x3E7AE2E2 ^ v329 & 0x20)) ^ v318;
  LODWORD(STACK[0x50C0]) = 2 * v331;
  LODWORD(STACK[0x5060]) = v331;
  v332 = (v331 - 573984577 - ((2 * v331) & 0xBB93617E)) ^ v294 ^ 0xDDC9B0BF;
  v333 = *(v316 + 4 * (2717 * BYTE2(v332) + 8362926 - 8768 * (((1959383 * (2717 * BYTE2(v332) + 8362926)) >> 32) >> 2)));
  *STACK[0x49B8] = 57;
  v334 = *(v316 + 4 * (2717 * BYTE1(v332) + 2094807 - 8768 * (((1959383 * (2717 * BYTE1(v332) + 2094807)) >> 32) >> 2)));
  v335 = *(v316 + 4 * (2717 * v332 + 17426838 - 8768 * (((62700253 * (2717 * v332 + 17426838)) >> 32) >> 7)));
  v336 = *(v316 + 4 * (2717 * HIBYTE(v332) + 12547106 - 8768 * (((31350127 * (2717 * HIBYTE(v332) + 12547106)) >> 32) >> 6)));
  *STACK[0x49B0] = 112;
  v337 = *STACK[0x5190];
  LODWORD(v302) = v337 & 0xFFFFFFB4 ^ 0x68;
  v338 = v334 ^ v333 ^ v335 ^ v336;
  v339 = (((v337 ^ 0x64) & (2 * ((v337 ^ 0x64) & (2 * ((v337 ^ 0x64) & (2 * ((v337 ^ 0x64) & (2 * v302) ^ v302)) ^ v302)) ^ v302)) ^ v302) << 25) ^ (v337 << 24) ^ 0xB4000000;
  v340 = v330 ^ v312;
  LODWORD(STACK[0x50A8]) = v340;
  v341 = v338 ^ v340 ^ (v339 - 2071450935 - ((2 * v339) & 0x8000000));
  LODWORD(STACK[0x50D0]) = v341;
  v342 = v341 ^ 0x84882AC9;
  v343 = v341 ^ 0x84882AC9 ^ v323;
  v344 = v342;
  LODWORD(STACK[0x50B8]) = v342;
  v345 = v343 ^ v332;
  v346 = v343;
  LODWORD(STACK[0x50C8]) = v343;
  v347 = 2717 * ((v343 ^ v332) >> 16) + 8362926;
  v348 = v345;
  *STACK[0x5320] = 59;
  v349 = *(v316 + 4 * (2717 * BYTE1(v345) + 2086039 - 8768 * (((1959383 * (2717 * BYTE1(v345) + 2086039)) >> 32) >> 2)));
  v350 = *(v316 + 4 * (v347 - 8768 * (((1959383 * v347) >> 32) >> 2)));
  LODWORD(v302) = v348;
  LODWORD(STACK[0x50F0]) = v348;
  v351 = 2717 * v348 + 17426838 - 8768 * (((62700253 * (2717 * v348 + 17426838)) >> 32) >> 7);
  *STACK[0x49A8] = 113;
  v352 = *STACK[0x5790];
  v353 = v352 & 0x2E ^ 0x25;
  v354 = (((v352 ^ 0x64) & (2 * ((v352 ^ 0x64) & (2 * ((v352 ^ 0x64) & (2 * ((v352 ^ 0x64) & (2 * ((v352 ^ 0x44444444) & (2 * (v353 ^ v352 & 0xA)) ^ v353)) ^ v353)) ^ v353)) ^ v353)) ^ v353) << 25) ^ (v352 << 24);
  v355 = STACK[0xFE70];
  LODWORD(v302) = v349 ^ 0x96BC29E7 ^ v350 ^ *(v355 + 4 * v351) ^ *(v355 + 4 * (2717 * BYTE3(v302) + 12547106 - 8768 * (((31350127 * (2717 * BYTE3(v302) + 12547106)) >> 32) >> 6))) ^ ((v354 ^ 0x2E000000) - 1766053401 - ((2 * (v354 ^ 0x2E000000)) & 0x2C000000));
  v356 = (v302 - 573984577 - ((2 * v302) & 0xBB93617E)) ^ v324;
  v357 = *STACK[0x53D0];
  v358 = v357 & 0xFFFFFFEC ^ 4;
  v359 = v357 ^ (2 * ((v357 ^ 0x64) & (2 * ((v357 ^ 0x64) & (2 * ((v357 ^ 0x64) & (2 * ((v357 ^ 0x64) & (2 * ((v357 ^ 0x64) & (2 * v358) ^ v358)) ^ v358)) ^ v358)) ^ v358)) ^ v358));
  LODWORD(STACK[0x5100]) = v356;
  v360 = *(v355 + 4 * (2717 * HIBYTE(v356) + 12547106 - 8768 * (((31350127 * (2717 * HIBYTE(v356) + 12547106)) >> 32) >> 6))) ^ 0x24022FCC ^ *(v355 + 4 * (2717 * BYTE2(v356) + 8362926 - 8768 * (((1959383 * (2717 * BYTE2(v356) + 8362926)) >> 32) >> 2))) ^ *(v355 + 4 * (2717 * BYTE1(v356) + 2094807 - 8768 * (((1959383 * (2717 * BYTE1(v356) + 2094807)) >> 32) >> 2)));
  LODWORD(v355) = *(v355 + 4 * (2717 * v356 + 17426838 - 8768 * (((62700253 * (2717 * v356 + 17426838)) >> 32) >> 7))) ^ (((v359 ^ 0xEC) << 24) + 604123084 - (((v359 ^ 0xEC) << 25) & 0x48000000));
  LODWORD(STACK[0x50E8]) = v302 ^ v344;
  LODWORD(v355) = v360 ^ v355 ^ v302 ^ v344;
  v361 = v355 ^ v346;
  v362 = v355;
  LODWORD(STACK[0x50F8]) = v355;
  v363 = v355 ^ v346 ^ v356;
  LODWORD(v355) = 2717 * BYTE2(v363) + 8362926 - 8768 * (((1959383 * (2717 * BYTE2(v363) + 8362926)) >> 32) >> 2);
  v364 = 2717 * BYTE1(v363) + 2094807 - 8768 * (((1959383 * (2717 * BYTE1(v363) + 2094807)) >> 32) >> 2);
  v365 = 2717 * HIBYTE(v363) + 12547106 - 8768 * (((31350127 * (2717 * HIBYTE(v363) + 12547106)) >> 32) >> 6);
  v366 = v363;
  v367 = 2717 * v363 + 17426838 - 8768 * (((62700253 * (2717 * v363 + 17426838)) >> 32) >> 7);
  *STACK[0x5240] = 109;
  v368 = *STACK[0x5408];
  v369 = v368 & 0x52 ^ 0x7F;
  v370 = v368 ^ (2 * ((v368 ^ 0x64) & (2 * ((v368 ^ 0x64) & (2 * ((v368 ^ 0x64) & (2 * ((v368 ^ 0x64) & (2 * ((v368 ^ 0x64) & (2 * ((v368 ^ 0x64) & 0x36 ^ v369)) ^ v369)) ^ v369)) ^ v369)) ^ v369)) ^ v369)) ^ 0x52;
  v371 = STACK[0xFE70];
  LODWORD(v355) = *(v371 + 4 * v365) ^ 0xE893E69F ^ *(v371 + 4 * v364) ^ *(v371 + 4 * v355) ^ *(v371 + 4 * v367) ^ ((v370 << 24) - 392960353 - ((v370 << 25) & 0xD0000000));
  LODWORD(STACK[0x50E0]) = v302 ^ v331;
  v372 = v355 ^ v302 ^ v331;
  LODWORD(STACK[0x5110]) = v361;
  v373 = v372 & v361;
  v374 = v372 + v361;
  v375 = v372;
  v376 = v374 - 2 * v373;
  v377 = v376 ^ v366;
  v378 = v366;
  LODWORD(STACK[0x5108]) = v366;
  v379 = v376;
  LODWORD(STACK[0x5130]) = v376;
  v380 = 2717 * ((v376 ^ v366) >> 16) + 8362926;
  v381 = *(v371 + 4 * (v380 - 8768 * (((1959383 * v380) >> 32) >> 2)));
  LODWORD(v316) = v377;
  v382 = 2717 * BYTE1(v377) + 2094807 - 8768 * (((1959383 * (2717 * BYTE1(v377) + 2094807)) >> 32) >> 2);
  *STACK[0x55F0] = 102;
  v383 = *STACK[0x5400];
  v384 = v383 & 0xFFFFFF92 ^ 0xFFFFFFDF;
  v385 = v383 ^ (2 * ((v383 ^ 0x64) & (2 * ((v383 ^ 0x64) & (2 * ((v383 ^ 0x64) & (2 * ((v383 ^ 0x64) & (2 * ((v383 ^ 0x64) & (2 * ((v383 ^ 0x64) & 0x36 ^ v384)) ^ v384)) ^ v384)) ^ v384)) ^ v384)) ^ v384));
  LODWORD(STACK[0x51B0]) = v316;
  v386 = STACK[0xFE70];
  v387 = v381 ^ 0x9A3ACA0B ^ *(v386 + 4 * v382) ^ *(v386 + 4 * (2717 * BYTE3(v316) + 12547106 - 8768 * (((31350127 * (2717 * BYTE3(v316) + 12547106)) >> 32) >> 6)));
  v388 = *(STACK[0xFE70] + 4 * (2717 * v316 + 17426838 - 8768 * (((62700253 * (2717 * v316 + 17426838)) >> 32) >> 7)));
  LODWORD(v355) = v355 ^ v362;
  LODWORD(STACK[0x5120]) = v355;
  LODWORD(STACK[0x5118]) = v375;
  v389 = v387 ^ v388 ^ v355 ^ (((v385 ^ 0x92) << 24) - 1707423221 - (((v385 ^ 0x92) << 25) & 0x34000000));
  LODWORD(STACK[0x5138]) = v389;
  v390 = v389 ^ v375 ^ v378;
  LODWORD(STACK[0x5160]) = v389 ^ v375;
  LODWORD(v355) = *(v386 + 4 * (2717 * BYTE2(v390) + 8362926 - 8768 * (((1959383 * (2717 * BYTE2(v390) + 8362926)) >> 32) >> 2)));
  v391 = 2717 * BYTE1(v390) + 2094807 - 8768 * (((1959383 * (2717 * BYTE1(v390) + 2094807)) >> 32) >> 2);
  *STACK[0x49A0] = -81;
  v392 = *STACK[0x5410];
  v393 = v392 & 0xFFFFFFF0 | 0xE;
  v394 = v389 ^ v375 ^ v378;
  LODWORD(STACK[0x51C8]) = v394;
  v395 = v392 ^ (2 * ((v392 ^ 0x64) & (2 * ((v392 ^ 0x64) & (2 * ((v392 ^ 0x64) & (2 * ((v392 ^ 0x64) & (2 * ((v392 ^ 0x64) & (2 * v393) ^ v393)) ^ v393)) ^ v393)) ^ v393)) ^ v393)) ^ 0xF0;
  LODWORD(v355) = v355 ^ 0xB8BDB233 ^ *(STACK[0xFE70] + 4 * v391) ^ *(STACK[0xFE70] + 4 * (2717 * (v389 ^ v375 ^ v378) + 17426838 - 8768 * (((62700253 * (2717 * (v389 ^ v375 ^ v378) + 17426838)) >> 32) >> 7)));
  v396 = *(STACK[0xFE70] + 4 * (2717 * HIBYTE(v394) + 12547106 - 8768 * (((31350127 * (2717 * HIBYTE(v394) + 12547106)) >> 32) >> 6))) ^ ((v395 << 24) - 1195527629 - ((v395 << 25) & 0x70000000));
  *STACK[0x4998] = -35;
  LODWORD(v355) = v355 ^ v396;
  *STACK[0x5350] = -7;
  LODWORD(STACK[0x5220]) = v355 ^ v375;
  v397 = v355 ^ v375 ^ v389 ^ v375 ^ v379;
  LODWORD(STACK[0x5278]) = v397;
  v398 = 2717 * (BYTE1(v397) ^ BYTE1(v394)) + 2094807 - 8768 * (((1959383 * (2717 * (BYTE1(v397) ^ BYTE1(v394)) + 2094807)) >> 32) >> 2);
  LODWORD(v316) = v397 ^ v394;
  v399 = 2717 * (v397 ^ v394) + 17426838 - 8768 * (((62700253 * (2717 * (v397 ^ v394) + 17426838)) >> 32) >> 7);
  v400 = *(STACK[0xFE70] + 4 * (2717 * ((v397 ^ v394) >> 16) + 8362926 - 8768 * (((1959383 * (2717 * ((v397 ^ v394) >> 16) + 8362926)) >> 32) >> 2)));
  *STACK[0x4990] = -119;
  v401 = *(STACK[0xFE70] + 4 * v398);
  *STACK[0x4988] = -27;
  v402 = *(STACK[0xFE70] + 4 * v399);
  *STACK[0x4980] = 92;
  v403 = *STACK[0x52A0];
  LODWORD(v371) = (v403 & 0xFFFFFFE4 | 0x10) ^ v403 & 0xFFFFFFE0;
  v404 = v403 ^ (2 * ((v403 ^ 0x64) & (2 * ((v403 ^ 0x64) & (2 * ((v403 ^ 0x64) & (2 * ((v403 ^ 0x64) & (2 * ((v403 ^ 0x64) & (2 * v371) ^ v371)) ^ v371)) ^ v371)) ^ v371)) ^ v371));
  LODWORD(STACK[0x5270]) = v316;
  LODWORD(v371) = *(STACK[0xFE70] + 4 * (2717 * BYTE3(v316) + 12547106 - 8768 * (((31350127 * (2717 * BYTE3(v316) + 12547106)) >> 32) >> 6)));
  LODWORD(v355) = v355 ^ v389;
  LODWORD(STACK[0x51C0]) = v355;
  LODWORD(v355) = v400 ^ 0x6650C1A6 ^ v401 ^ v402 ^ v371 ^ v355 ^ (((v404 ^ 4) << 24) + 1716568486 - (((v404 ^ 4) << 25) & 0xCC000000));
  LODWORD(STACK[0x5280]) = v355;
  LODWORD(v355) = v355 ^ v389 ^ v375 ^ v379;
  LODWORD(STACK[0x5288]) = v355;
  v405 = v355 ^ v316;
  LODWORD(v355) = 2717 * ((v355 ^ v316) >> 16) + 8362926;
  LODWORD(v386) = v405;
  v406 = 2717 * BYTE1(v405) + 2094807 - 8768 * (((1959383 * (2717 * BYTE1(v405) + 2094807)) >> 32) >> 2);
  *STACK[0x4978] = 22;
  v407 = *STACK[0x5770];
  v408 = v407 & 0xFFFFFFE6 ^ 0xFFFFFF81;
  LODWORD(STACK[0x5370]) = v386;
  LODWORD(v355) = *(STACK[0xFE70] + 4 * (v355 - 8768 * (((1959383 * v355) >> 32) >> 2)));
  LODWORD(v371) = *(STACK[0xFE70] + 4 * (2717 * BYTE3(v386) + 12547106 - 8768 * (((31350127 * (2717 * BYTE3(v386) + 12547106)) >> 32) >> 6)));
  v409 = (((v407 ^ 0x64) & (2 * ((v407 ^ 0x64) & (2 * ((v407 ^ 0x64) & (2 * ((v407 ^ 0x64) & (2 * ((v407 ^ 0x64) & (2 * (v407 & (2 * v408) ^ v408)) ^ v408)) ^ v408)) ^ v408)) ^ v408)) ^ v408) << 25) ^ (v407 << 24) ^ 0xE6000000;
  v410 = *(STACK[0xFE70] + 4 * v406) ^ *(STACK[0xFE70] + 4 * (2717 * v386 + 17426838 - 8768 * (((62700253 * (2717 * v386 + 17426838)) >> 32) >> 7)));
  LODWORD(STACK[0x5050]) = v325 - 1308622848 - ((2 * v325) & 0x640013C6);
  *STACK[0x5660] = 98;
  *STACK[0x4970] = -99;
  *STACK[0x4968] = -44;
  LODWORD(STACK[0x5128]) = v389 ^ v375 ^ v379 ^ 0x40DD93D4;
  LODWORD(STACK[0x5250]) = v355 ^ 0xCB40920E ^ v410 ^ v371 ^ (v409 - 884960754 - ((2 * v409) & 0x96000000));
  *STACK[0x51E0] = -101;
  *STACK[0x5230] = -2;
  v411 = STACK[0xC038];
  LODWORD(v355) = 2717 * (*STACK[0xC038] - 28) + 7664657;
  v412 = 2717 * (*(STACK[0xC038] + 4) - 28) + 7664657;
  HIDWORD(v413) = *(STACK[0xC038] + 5);
  LODWORD(v413) = (HIDWORD(v413) << 24) - 469762048;
  v414 = 2717 * (*(STACK[0xC038] + 2) - 28) + 6270836;
  v415 = 2717 * (*(STACK[0xC038] + 10) - 28) + 6270836;
  LODWORD(v302) = STACK[0x4E60];
  v416 = 2717 * (*(STACK[0xC038] + 7) - 28) + 16035734;
  v417 = *(STACK[0xFE70] + 4 * (v412 - 8768 * (((1959383 * v412) >> 32) >> 2)));
  v418 = *(STACK[0xFE70] + 4 * (v415 - 8768 * (((1959383 * v415) >> 32) >> 2)));
  v419 = *(STACK[0xFE70] + 4 * (v416 - 8768 * (((31350127 * v416) >> 32) >> 6)));
  LODWORD(v386) = *(STACK[0xFE70] + 4 * ((LODWORD(STACK[0x4E60]) + 2717 * (*(STACK[0xC038] + 13) - 28)) % 0x2240));
  LODWORD(v371) = *(STACK[0xFE70] + 4 * (v414 - 8768 * (((1959383 * v414) >> 32) >> 2))) ^ *(STACK[0xFE70] + 4 * (v355 - 8768 * (((1959383 * v355) >> 32) >> 2)));
  *STACK[0x5630] = -82;
  v420 = STACK[0xFE70];
  v421 = *(STACK[0xFE70] + 4 * ((v302 + 2717 * (((v413 >> 26) >> 6) | (4 * (v413 >> 26)))) % 0x2240));
  v422 = *(STACK[0xFE70] + 4 * ((v302 + 2717 * (v411[1] - 28)) % 0x2240));
  *STACK[0x4960] = -51;
  v423 = (v302 + 2717 * (v411[9] - 28)) % 0x2240;
  v424 = 2717 * (v411[14] - 28) + 6270836;
  v425 = v424 - 8768 * (((1959383 * v424) >> 32) >> 2);
  v426 = 2717 * (v411[6] - 28) + 6270836;
  LODWORD(v289) = 2717 * (v411[8] - 28) + 7664657;
  v427 = v289 - 8768 * (((1959383 * v289) >> 32) >> 2);
  LODWORD(v289) = 2717 * (v411[12] - 28) + 7664657;
  v428 = v289 - 8768 * (((1959383 * v289) >> 32) >> 2);
  LODWORD(v289) = 2717 * (v411[3] - 28) + 16035734;
  v429 = v289 - 8768 * (((31350127 * v289) >> 32) >> 6);
  LODWORD(v289) = 2717 * (v411[15] - 28) + 16035734;
  LODWORD(v411) = 2717 * (v411[11] - 28) + 16035734;
  v430 = v422 ^ *(v420 + 4 * v429);
  v431 = *(v420 + 4 * v423);
  v432 = *(v420 + 4 * v425);
  v433 = *(v420 + 4 * v427);
  v434 = *(v420 + 4 * v428);
  v435 = STACK[0x5078] & 0x2565B465;
  v436 = STACK[0x5078];
  v437 = *(v420 + 4 * (v411 - 8768 * (((31350127 * v411) >> 32) >> 6)));
  LODWORD(v316) = *(v420 + 4 * (v289 - 8768 * (((31350127 * v289) >> 32) >> 6)));
  v438 = v371 ^ v430;
  LODWORD(v420) = v417 ^ v419 ^ v421 ^ *(v420 + 4 * (v426 - 8768 * (((1959383 * v426) >> 32) >> 2)));
  v439 = (v438 ^ 0xDA9A4B9A) & (LODWORD(STACK[0x5078]) ^ 0x7FD89DE7);
  LODWORD(v420) = v420 ^ LODWORD(STACK[0x5070]);
  *STACK[0x5208] = 113;
  LODWORD(v289) = v386 ^ v432 ^ v434 ^ v316 ^ LODWORD(STACK[0x5068]);
  v440 = v418 ^ v431 ^ v433 ^ v437 ^ LODWORD(STACK[0x5080]);
  LODWORD(v411) = v439 ^ (v435 | 0x5A980982) ^ v436 & 0xB7010D8B ^ 0x80010008 ^ (v438 ^ 0xB7010D8B) & (v436 ^ 0x80276218);
  LODWORD(v316) = LODWORD(STACK[0x5058]) + 543786854 - 2 * (STACK[0x5058] & 0x2069877F ^ STACK[0x5090] & 0x19);
  *STACK[0x5750] = -99;
  *STACK[0x4958] = 10;
  v441 = STACK[0xFE70];
  v442 = v316 ^ *(v441 + 4 * (2717 * (v411 >> 24) + 13242658 - 8768 * (((31350127 * (2717 * (v411 >> 24) + 13242658)) >> 32) >> 6))) ^ 0x20698766 ^ *(v441 + 4 * (2717 * BYTE2(v420) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v420) + 22320155)) >> 32) >> 7)));
  v443 = *(v441 + 4 * (2717 * BYTE1(v440) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v440) + 11848837)) >> 32) >> 6))) ^ *(v441 + 4 * (2717 * v289 + 4879732 - 8768 * (((1959383 * (2717 * v289 + 4879732)) >> 32) >> 2)));
  LODWORD(v302) = LODWORD(STACK[0x5098]) - 243476382 - (STACK[0x50A0] & 0xE2F9B0C4);
  v444 = *(v441 + 4 * (2717 * BYTE3(v420) + 13242658 - 8768 * (((31350127 * (2717 * BYTE3(v420) + 13242658)) >> 32) >> 6))) ^ 0xF17CD862 ^ *(v441 + 4 * (2717 * BYTE2(v440) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v440) + 22320155)) >> 32) >> 7)));
  *STACK[0x4950] = -42;
  v445 = v444 ^ *(v441 + 4 * (2717 * BYTE1(v289) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v289) + 11848837)) >> 32) >> 6)));
  *STACK[0x5180] = 91;
  v446 = v445 ^ *(v441 + 4 * (2717 * v411 + 4879732 - 8768 * (((1959383 * (2717 * v411 + 4879732)) >> 32) >> 2)));
  *STACK[0x4948] = -104;
  v447 = v442 ^ v443;
  v448 = v302 ^ v446;
  v449 = LODWORD(STACK[0x5088]) - 927892923 - (STACK[0x50B0] & 0x9162F48A);
  LODWORD(v441) = *(v441 + 4 * (2717 * BYTE2(v289) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v289) + 22320155)) >> 32) >> 7))) ^ 0xC8B17A45 ^ *(v441 + 4 * (2717 * HIBYTE(v440) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v440) + 13242658)) >> 32) >> 6)));
  *STACK[0x4940] = 20;
  LODWORD(v441) = v441 ^ *(STACK[0xFE70] + 4 * (2717 * BYTE1(v411) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v411) + 11848837)) >> 32) >> 6))) ^ *(STACK[0xFE70] + 4 * (2717 * v420 + 4879732 - 8768 * (((1959383 * (2717 * v420 + 4879732)) >> 32) >> 2)));
  v450 = *(STACK[0xFE70] + 4 * (2717 * BYTE3(v289) + 13242658 - 8768 * (((31350127 * (2717 * BYTE3(v289) + 13242658)) >> 32) >> 6)));
  *STACK[0x55E0] = -84;
  v451 = *(STACK[0xFE70] + 4 * (2717 * BYTE2(v411) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v411) + 22320155)) >> 32) >> 7)));
  *STACK[0x5030] = -38;
  v452 = v450 ^ v451 ^ *(STACK[0xFE70] + 4 * (2717 * BYTE1(v420) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v420) + 11848837)) >> 32) >> 6)));
  LODWORD(v420) = v449 ^ v441;
  v453 = v452 ^ *(STACK[0xFE70] + 4 * (2717 * v440 + 4879732 - 8768 * (((1959383 * (2717 * v440 + 4879732)) >> 32) >> 2))) ^ (LODWORD(STACK[0x5050]) + 2531 - ((2 * (LODWORD(STACK[0x5050]) + 2531)) & 0x8C132206) - 972451581);
  LODWORD(v316) = LODWORD(STACK[0x50A8]) - 1472914468 - ((2 * LODWORD(STACK[0x50A8])) & 0x506A37B8);
  *STACK[0x51A8] = 88;
  v454 = STACK[0xFE70];
  LODWORD(v441) = *(v454 + 4 * (2717 * BYTE2(v448) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v448) + 22320155)) >> 32) >> 7))) ^ 0xA8351BDC ^ *(v454 + 4 * (2717 * HIBYTE(v447) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v447) + 13242658)) >> 32) >> 6))) ^ *(v454 + 4 * (2717 * BYTE1(v420) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v420) + 11848837)) >> 32) >> 6)));
  *STACK[0x4938] = 22;
  LODWORD(v386) = *(STACK[0xFE70] + 4 * ((2717 * (v453 ^ 0xE0u) + 4879732) % 0x2240));
  LODWORD(v454) = *(STACK[0xFE70] + 4 * (2717 * HIBYTE(v448) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v448) + 13242658)) >> 32) >> 6)));
  *STACK[0x4930] = -65;
  LODWORD(v302) = *(STACK[0xFE70] + 4 * (2717 * BYTE2(v420) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v420) + 22320155)) >> 32) >> 7)));
  LODWORD(v441) = v316 ^ v441;
  v455 = 2717 * ((v453 ^ 0x98E0) >> 8) + 11848837;
  *STACK[0x4928] = -69;
  *STACK[0x5440] = -121;
  LODWORD(v316) = *(STACK[0xFE70] + 4 * (v455 - 8768 * (((31350127 * v455) >> 32) >> 6)));
  *STACK[0x5178] = -30;
  v456 = *(STACK[0xFE70] + 4 * (2717 * v447 + 4879732 - 8768 * (((1959383 * (2717 * v447 + 4879732)) >> 32) >> 2)));
  v457 = STACK[0x50C0];
  v458 = STACK[0x5060];
  v459 = v441 ^ v386;
  LODWORD(v441) = (LODWORD(STACK[0x5060]) + 2003410093 - (STACK[0x50C0] & 0xEED3395A)) ^ v454 ^ 0x77699CAD ^ v302 ^ v316;
  *STACK[0x4920] = -23;
  *STACK[0x4F00] = 95;
  v460 = STACK[0xFE70];
  LODWORD(v316) = 2717 * BYTE2(v447) + 22320155;
  v461 = LODWORD(STACK[0x50D8]) ^ *(v460 + 4 * (2717 * (BYTE2(v453) ^ 9) + 22320155 - 8768 * (((62700253 * (2717 * (BYTE2(v453) ^ 9u) + 22320155)) >> 32) >> 7))) ^ *(STACK[0xFE70] + 4 * (2717 * BYTE3(v420) + 13242658 - 8768 * (((31350127 * (2717 * BYTE3(v420) + 13242658)) >> 32) >> 6))) ^ (v458 - (v457 & 0x3123230A) + 412193157) ^ *(v460 + 4 * (2717 * BYTE1(v447) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v447) + 11848837)) >> 32) >> 6))) ^ *(v460 + 4 * (2717 * v448 + 4879732 - 8768 * (((1959383 * (2717 * v448 + 4879732)) >> 32) >> 2))) ^ 0xE9446369;
  v462 = v441 ^ v456;
  v463 = (v332 + 772645186 - ((2 * v332) & 0x5C1B4284)) ^ *(v460 + 4 * (2717 * v420 + 4879732 - 8768 * (((1959383 * (2717 * v420 + 4879732)) >> 32) >> 2))) ^ 0x2E0DA142 ^ *(v460 + 4 * (2717 * ((v453 ^ 0x740998E0) >> 24) + 13242658 - 8768 * (((31350127 * (2717 * ((v453 ^ 0x740998E0) >> 24) + 13242658)) >> 32) >> 6))) ^ *(STACK[0xFE70] + 4 * (v316 - 8768 * (((62700253 * v316) >> 32) >> 7))) ^ *(STACK[0xFE70] + 4 * (2717 * BYTE1(v448) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v448) + 11848837)) >> 32) >> 6)));
  *STACK[0x4918] = 67;
  *STACK[0x5780] = 57;
  v464 = ((v441 ^ v456) >> 16);
  if ((v462 & 0x10000) != 0)
  {
    v465 = BYTE2(v462) - 1;
  }

  else
  {
    v465 = v464 + 1;
  }

  v466 = STACK[0x50B8];
  v467 = v466 + 1028292968 - 2 * (v466 & 0x3D4A8178 ^ STACK[0x50D0] & 0x10);
  *STACK[0x4910] = 41;
  v468 = STACK[0xFE70];
  v469 = v467 ^ *(v468 + 4 * (2717 * HIBYTE(v459) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v459) + 13242658)) >> 32) >> 6))) ^ 0x3D4A8168 ^ *(v468 + 4 * ((2717 * (v465 ^ 1u) + 22320155) % 0x2240)) ^ *(v468 + 4 * (2717 * v463 + 4879732 - 8768 * (((1959383 * (2717 * v463 + 4879732)) >> 32) >> 2))) ^ *(STACK[0xFE70] + 4 * (2717 * BYTE1(v461) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v461) + 11848837)) >> 32) >> 6)));
  HIDWORD(v471) = *(STACK[0xFE70] + 4 * (2717 * BYTE2(v461) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v461) + 22320155)) >> 32) >> 7)));
  LODWORD(v471) = HIDWORD(v471);
  v470 = v471 >> 9;
  HIDWORD(v471) = v470 ^ 2;
  LODWORD(v471) = v470 ^ 0x78A662B0;
  v472 = v466 ^ (v458 - (v457 & 0x136B36D6) - 1984586901) ^ *(v468 + 4 * (2717 * BYTE1(v463) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v463) + 11848837)) >> 32) >> 6))) ^ *(v468 + 4 * (2717 * HIBYTE(v462) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v462) + 13242658)) >> 32) >> 6))) ^ *(v468 + 4 * (2717 * v459 + 4879732 - 8768 * (((1959383 * (2717 * v459 + 4879732)) >> 32) >> 2)));
  v473 = STACK[0x50C8];
  HIDWORD(v471) = v471 >> 3;
  LODWORD(v471) = HIDWORD(v471);
  v474 = (v473 + 1540302379 - ((2 * v473) & 0xB79E4C56)) ^ *(v468 + 4 * (2717 * BYTE1(v459) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v459) + 11848837)) >> 32) >> 6))) ^ 0x5BCF262B ^ *(v468 + 4 * (2717 * HIBYTE(v461) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v461) + 13242658)) >> 32) >> 6))) ^ *(v468 + 4 * (2717 * BYTE2(v463) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v463) + 22320155)) >> 32) >> 7))) ^ *(v468 + 4 * (2717 * v462 + 4879732 - 8768 * (((1959383 * (2717 * v462 + 4879732)) >> 32) >> 2)));
  v475 = *(STACK[0xFE70] + 4 * (2717 * ((HIBYTE(v463) ^ 0x130A) + ((v463 >> 23) & 0x14)) % 0x2240));
  *STACK[0x4908] = -54;
  *STACK[0x4900] = -20;
  *STACK[0x5670] = -34;
  v476 = v472 ^ ((v471 >> 20) - ((2 * (v471 >> 20)) & 0x8AE1FF34) - 982450278);
  v477 = (LODWORD(STACK[0x50F0]) - 1847374934 - ((2 * LODWORD(STACK[0x50F0])) & 0x23C69754)) ^ v475 ^ 0x91E34BAA ^ *(v468 + 4 * (2717 * BYTE2(v459) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v459) + 22320155)) >> 32) >> 7))) ^ *(v468 + 4 * (2717 * BYTE1(v462) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v462) + 11848837)) >> 32) >> 6))) ^ *(v468 + 4 * (2717 * v461 + 4879732 - 8768 * (((1959383 * (2717 * v461 + 4879732)) >> 32) >> 2)));
  v478 = 2717 * ((BYTE2(v476) ^ 0x2017) + ((v476 >> 15) & 0x2E));
  v479 = LODWORD(STACK[0x50E8]) - 961510439 - ((2 * LODWORD(STACK[0x50E8])) & 0x8D6107B2);
  *STACK[0x48F8] = 62;
  *STACK[0x48F0] = -39;
  v480 = *(v468 + 4 * (2717 * HIBYTE(v469) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v469) + 13242658)) >> 32) >> 6)));
  v481 = *(v468 + 4 * (v478 - 8768 * (((31350127 * v478) >> 32) >> 6)));
  *STACK[0x4F40] = -24;
  v482 = v479 ^ v480 ^ 0xC6B083D9;
  v483 = *(v468 + 4 * (2717 * v477 + 4879732 - 8768 * (((1959383 * (2717 * v477 + 4879732)) >> 32) >> 2)));
  v484 = *(v468 + 4 * (2717 * BYTE1(v474) + 11840069 - 8768 * (((31350127 * (2717 * BYTE1(v474) + 11840069)) >> 32) >> 6)));
  *STACK[0x5368] = -104;
  LODWORD(v468) = *(v468 + 4 * (2717 * HIBYTE(v476) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v476) + 13242658)) >> 32) >> 6)));
  *STACK[0x48E8] = -16;
  v485 = *(STACK[0xFE70] + 4 * (2717 * BYTE2(v474) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v474) + 22320155)) >> 32) >> 7)));
  *STACK[0x5298] = -26;
  v486 = STACK[0x50E0];
  v487 = v482 ^ v483 ^ v484 ^ v481;
  LODWORD(v468) = (v486 - 483792193 - ((2 * v486) & 0xC653D57E)) ^ 0xE329EABF ^ v468 ^ v485 ^ *(STACK[0xFE70] + 4 * (2717 * BYTE1(v477) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v477) + 11848837)) >> 32) >> 6))) ^ *(STACK[0xFE70] + 4 * (2717 * v469 + 4879732 - 8768 * (((1959383 * (2717 * v469 + 4879732)) >> 32) >> 2)));
  *STACK[0x52C0] = 111;
  v488 = *(STACK[0xFE70] + 4 * (2717 * HIBYTE(v474) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v474) + 13242658)) >> 32) >> 6)));
  v489 = *(STACK[0xFE70] + 4 * (2717 * BYTE1(v469) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v469) + 11848837)) >> 32) >> 6)));
  v490 = *(STACK[0xFE70] + 4 * (2717 * BYTE2(v477) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v477) + 22320155)) >> 32) >> 7)));
  *STACK[0x56F0] = 125;
  *STACK[0x48E0] = 116;
  v491 = ((v486 ^ v473) + 1244734170 - ((2 * (v486 ^ v473)) & 0x946245B4)) ^ v488 ^ 0x4A3122DA ^ v489 ^ v490;
  v492 = STACK[0xFE70];
  v493 = v491 ^ *(STACK[0xFE70] + 4 * (2717 * v476 + 4879732 - 8768 * (((1959383 * (2717 * v476 + 4879732)) >> 32) >> 2)));
  HIDWORD(v471) = *(STACK[0xFE70] + 4 * (2717 * BYTE2(v469) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v469) + 22320155)) >> 32) >> 7)));
  LODWORD(v471) = HIDWORD(v471);
  v494 = v471 >> 18;
  HIDWORD(v471) = v494 ^ 1;
  LODWORD(v471) = v494 ^ 0x593C5330;
  HIDWORD(v471) = v471 >> 4;
  LODWORD(v471) = HIDWORD(v471);
  v495 = *(v492 + 4 * (2717 * HIBYTE(v477) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v477) + 13242658)) >> 32) >> 6))) ^ *(v492 + 4 * (2717 * BYTE1(v476) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v476) + 11848837)) >> 32) >> 6))) ^ *(v492 + 4 * (2717 * v474 + 4879732 - 8768 * (((1959383 * (2717 * v474 + 4879732)) >> 32) >> 2))) ^ (LODWORD(STACK[0x5100]) - ((2 * LODWORD(STACK[0x5100])) & 0x1C8524DE) - 1908239761) ^ ((v471 >> 10) - ((2 * (v471 >> 10)) & 0x850FED3C) - 1031276898);
  v496 = STACK[0x50F8];
  v497 = *(STACK[0xFE70] + 4 * (2717 * BYTE3(v468) + 13242658 - 8768 * (((31350127 * (2717 * BYTE3(v468) + 13242658)) >> 32) >> 6)));
  v498 = (v496 - 201448977 - ((2 * v496) & 0xE7FC43DE)) ^ *(v492 + 4 * (2717 * BYTE1(v493) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v493) + 11848837)) >> 32) >> 6))) ^ 0xF3FE21EF ^ *(v492 + 4 * (2717 * BYTE2(v468) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v468) + 22320155)) >> 32) >> 7))) ^ *(v492 + 4 * (2717 * HIBYTE(v487) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v487) + 13242658)) >> 32) >> 6))) ^ *(v492 + 4 * (2717 * v495 + 4879732 - 8768 * (((1959383 * (2717 * v495 + 4879732)) >> 32) >> 2)));
  *STACK[0x4E90] = -29;
  v499 = STACK[0xFE70];
  LODWORD(v492) = ((v496 ^ v486) + 1862143044 - ((2 * (v496 ^ v486)) & 0xDDFC1888)) ^ v497 ^ 0x6EFE0C44 ^ *(STACK[0xFE70] + 4 * (2717 * BYTE2(v493) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v493) + 22320155)) >> 32) >> 7)));
  *STACK[0x48D8] = -117;
  LODWORD(v492) = v492 ^ *(v499 + 4 * (2717 * BYTE1(v495) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v495) + 11848837)) >> 32) >> 6)));
  *STACK[0x48D0] = 52;
  *STACK[0x48C8] = 52;
  LODWORD(v492) = v492 ^ *(v499 + 4 * (2717 * v487 + 4879732 - 8768 * (((1959383 * (2717 * v487 + 4879732)) >> 32) >> 2)));
  v500 = (LODWORD(STACK[0x5110]) - 881693236 - ((2 * LODWORD(STACK[0x5110])) & 0x96E4DB98)) ^ 0xCB726DCC ^ *(v499 + 4 * (2717 * BYTE2(v495) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v495) + 22320155)) >> 32) >> 7)));
  v501 = *(v499 + 4 * (2717 * HIBYTE(v493) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v493) + 13242658)) >> 32) >> 6))) ^ *(v499 + 4 * (2717 * BYTE1(v487) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v487) + 11848837)) >> 32) >> 6))) ^ *(v499 + 4 * (2717 * v468 + 4879732 - 8768 * (((1959383 * (2717 * v468 + 4879732)) >> 32) >> 2)));
  *STACK[0x54A0] = 64;
  v502 = *(v499 + 4 * (2717 * HIBYTE(v495) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v495) + 13242658)) >> 32) >> 6)));
  LODWORD(v468) = *(v499 + 4 * (2717 * BYTE1(v468) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v468) + 11848837)) >> 32) >> 6)));
  LODWORD(v499) = *(v499 + 4 * (2717 * BYTE2(v487) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v487) + 22320155)) >> 32) >> 7)));
  *STACK[0x53B0] = 89;
  v503 = *(STACK[0xFE70] + 4 * (2717 * v493 + 4879732 - 8768 * (((1959383 * (2717 * v493 + 4879732)) >> 32) >> 2)));
  *STACK[0x5358] = -125;
  v504 = v500 ^ v501;
  v505 = (LODWORD(STACK[0x5108]) - 1895452855 - ((2 * LODWORD(STACK[0x5108])) & 0x1E0B5E92)) ^ 0x8F05AF49 ^ v502 ^ v468 ^ v499 ^ v503;
  LODWORD(v499) = *(STACK[0xFE70] + 4 * (2717 * HIBYTE(v498) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v498) + 13242658)) >> 32) >> 6)));
  v506 = *(STACK[0xFE70] + 4 * (2717 * BYTE2(v492) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v492) + 22320155)) >> 32) >> 7)));
  v507 = *(STACK[0xFE70] + 4 * (2717 * BYTE1(v504) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v504) + 11848837)) >> 32) >> 6)));
  *STACK[0x53F8] = 74;
  *STACK[0x5238] = -23;
  LODWORD(v468) = *(STACK[0xFE70] + 4 * (2717 * BYTE3(v492) + 13242658 - 8768 * (((31350127 * (2717 * BYTE3(v492) + 13242658)) >> 32) >> 6)));
  v508 = (LODWORD(STACK[0x5120]) + 785020886 - ((2 * LODWORD(STACK[0x5120])) & 0x5D94EFAC)) ^ v506 ^ 0x2ECA77D6 ^ v499;
  v509 = v507 ^ *(STACK[0xFE70] + 4 * (2717 * v505 + 4879732 - 8768 * (((1959383 * (2717 * v505 + 4879732)) >> 32) >> 2)));
  *STACK[0x48C0] = 91;
  v510 = *(STACK[0xFE70] + 4 * (2717 * BYTE1(v505) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v505) + 11848837)) >> 32) >> 6)));
  v511 = *(STACK[0xFE70] + 4 * (2717 * BYTE2(v504) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v504) + 22320155)) >> 32) >> 7)));
  *STACK[0x5620] = -73;
  v512 = STACK[0x5378];
  LODWORD(v499) = (((v512 ^ 0x838F3DA8) + 2087764568) ^ ((v512 ^ 0xCF9FD6FC) + 811608324) ^ ((v512 ^ 0xD58FA5) - 13995941)) - 151308747;
  v513 = (v499 ^ 0x3F951646) & (2 * (v499 & 0xB8259484)) ^ v499 & 0xB8259484;
  v514 = ((2 * (v499 ^ 0x2FDC174E)) ^ 0x2FF30794) & (v499 ^ 0x2FDC174E) ^ (2 * (v499 ^ 0x2FDC174E)) & 0x97F983CA;
  v515 = (v514 ^ 0x1B00200) & (4 * v513) ^ v513;
  v516 = v508 ^ v509;
  v517 = ((4 * (v514 ^ 0x9008804A)) ^ 0x5FE60F28) & (v514 ^ 0x9008804A) ^ (4 * (v514 ^ 0x9008804A)) & 0x97F983C8;
  v518 = v517 ^ 0x801980C2;
  v519 = (v517 ^ 0x17E00300) & (16 * v515) ^ v515;
  v520 = ((16 * v518) ^ 0x7F983CA0) & v518 ^ (16 * v518) & 0x97F983C0;
  v521 = v519 ^ 0x97F983CA ^ (v520 ^ 0x17980000) & (v519 << 8);
  LODWORD(v468) = v468 ^ 0xB22A93F2 ^ v510 ^ v511;
  v522 = STACK[0xFE70];
  v523 = (LODWORD(STACK[0x5118]) - 1305832462 + (~(2 * LODWORD(STACK[0x5118])) | 0x9BAAD81B) + 1) ^ v468 ^ *(STACK[0xFE70] + 4 * (2717 * v498 + 4879732 - 8768 * (((1959383 * (2717 * v498 + 4879732)) >> 32) >> 2)));
  v63 = ((v499 ^ (2 * ((v521 << 16) & 0x17F90000 ^ v521 ^ ((v521 << 16) ^ 0x3CA0000) & (((v520 ^ 0x8061834A) << 8) & 0x17F90000 ^ 0x6780000 ^ (((v520 ^ 0x8061834A) << 8) ^ 0x79830000) & (v520 ^ 0x8061834A)))) ^ 0xED1D8B0) & (v512 ^ 0xB33A9B0E) ^ v512 & 0x6168B45F) == -556306447;
  v524 = LODWORD(STACK[0x5130]) + 1097406582 - ((2 * LODWORD(STACK[0x5130])) & 0x82D230EC);
  LODWORD(v499) = *(v522 + 4 * (2717 * HIBYTE(v504) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v504) + 13242658)) >> 32) >> 6))) ^ 0x41691876 ^ *(v522 + 4 * (2717 * BYTE2(v505) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v505) + 22320155)) >> 32) >> 7))) ^ *(v522 + 4 * (2717 * BYTE1(v498) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v498) + 11848837)) >> 32) >> 6)));
  *STACK[0x48B8] = 50;
  LODWORD(v499) = v499 ^ *(STACK[0xFE70] + 4 * (2717 * v492 + 4879732 - 8768 * (((1959383 * (2717 * v492 + 4879732)) >> 32) >> 2)));
  LODWORD(v492) = *(STACK[0xFE70] + 4 * (2717 * BYTE2(v498) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v498) + 22320155)) >> 32) >> 7))) ^ 0xCDD77AD4 ^ *(STACK[0xFE70] + 4 * (2717 * BYTE1(v492) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v492) + 11848837)) >> 32) >> 6)));
  v525 = v524 ^ v499;
  v526 = (LODWORD(STACK[0x51B0]) - 841516332 - ((2 * LODWORD(STACK[0x51B0])) & 0x9BAEF5A8)) ^ v492 ^ *(STACK[0xFE70] + 4 * (2717 * HIBYTE(v505) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v505) + 13242658)) >> 32) >> 6))) ^ *(STACK[0xFE70] + 4 * (2717 * v504 + 4879732 - 8768 * (((1959383 * (2717 * v504 + 4879732)) >> 32) >> 2)));
  v527 = STACK[0x5128];
  if (v63)
  {
    v528 = STACK[0x5128] & 0xFC000000;
  }

  else
  {
    v528 = v523;
  }

  v529 = LODWORD(STACK[0x5138]) - 1561601383 - ((2 * LODWORD(STACK[0x5138])) & 0x45D7B532);
  *STACK[0x5150] = 61;
  *STACK[0x48B0] = -101;
  *STACK[0x48A8] = -32;
  v530 = STACK[0xFE70];
  v531 = v529 ^ *(v530 + 4 * (2717 * HIBYTE(v516) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v516) + 13242658)) >> 32) >> 6))) ^ 0xA2EBDA99 ^ *(v530 + 4 * (2717 * BYTE2(v523) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v523) + 22320155)) >> 32) >> 7))) ^ *(v530 + 4 * (2717 * BYTE1(v525) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v525) + 11848837)) >> 32) >> 6))) ^ *(v530 + 4 * (2717 * v526 + 4879732 - 8768 * (((1959383 * (2717 * v526 + 4879732)) >> 32) >> 2)));
  v532 = (LODWORD(STACK[0x5160]) + 904791018 - ((2 * LODWORD(STACK[0x5160])) & 0x6BDC07D4)) ^ 0x35EE03EA ^ *(v530 + 4 * (2717 * BYTE2(v525) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v525) + 22320155)) >> 32) >> 7))) ^ *(v530 + 4 * (2717 * BYTE1(v526) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v526) + 11848837)) >> 32) >> 6)));
  v533 = *(STACK[0xFE70] + 4 * (2717 * HIBYTE(v528) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v528) + 13242658)) >> 32) >> 6)));
  v534 = *(STACK[0xFE70] + 4 * (2717 * v516 + 4879732 - 8768 * (((1959383 * (2717 * v516 + 4879732)) >> 32) >> 2)));
  v535 = *(STACK[0xFE70] + 4 * (2717 * HIBYTE(v525) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v525) + 13242658)) >> 32) >> 6)));
  *STACK[0x48A0] = 55;
  v536 = v532 ^ v534 ^ v533;
  v537 = STACK[0xFE70];
  v538 = *(STACK[0xFE70] + 4 * (2717 * BYTE2(v526) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v526) + 22320155)) >> 32) >> 7)));
  v539 = *(STACK[0xFE70] + 4 * (2717 * BYTE1(v516) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v516) + 11848837)) >> 32) >> 6)));
  v540 = *(STACK[0xFE70] + 4 * (2717 * v528 + 4879732 - 8768 * (((1959383 * (2717 * v528 + 4879732)) >> 32) >> 2)));
  *STACK[0x4898] = -39;
  v541 = *(v537 + 4 * (2717 * BYTE2(v516) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v516) + 22320155)) >> 32) >> 7))) ^ 0x959E85E9 ^ *(v537 + 4 * (2717 * HIBYTE(v526) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v526) + 13242658)) >> 32) >> 6)));
  v542 = (v527 - ((2 * v527) & 0x12869B06) + 155405699) ^ v535 ^ 0x499EDE57 ^ v538 ^ v539 ^ v540;
  v543 = (LODWORD(STACK[0x51C8]) - 1784773143 - ((2 * LODWORD(STACK[0x51C8])) & 0x2B3D0BD2)) ^ v541;
  v544 = *(v537 + 4 * (2717 * BYTE1(v528) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v528) + 11848837)) >> 32) >> 6)));
  *STACK[0x4890] = -83;
  v545 = v543 ^ *(v537 + 4 * (2717 * v525 + 4879732 - 8768 * (((1959383 * (2717 * v525 + 4879732)) >> 32) >> 2))) ^ v544;
  v546 = LODWORD(STACK[0x51C0]) + 929536304 - ((2 * LODWORD(STACK[0x51C0])) & 0x6ECF3260);
  *STACK[0x4E98] = 77;
  v547 = *(v537 + 4 * (2717 * HIBYTE(v531) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v531) + 13242658)) >> 32) >> 6)));
  *STACK[0x5540] = 97;
  v548 = *(v537 + 4 * (2717 * BYTE2(v536) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v536) + 22320155)) >> 32) >> 7)));
  v549 = *(v537 + 4 * (2717 * BYTE1(v542) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v542) + 11848837)) >> 32) >> 6)));
  v550 = *(v537 + 4 * (2717 * BYTE2(v542) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v542) + 22320155)) >> 32) >> 7)));
  LODWORD(v530) = *(v537 + 4 * (2717 * v545 + 4879732 - 8768 * (((1959383 * (2717 * v545 + 4879732)) >> 32) >> 2)));
  v551 = *(v537 + 4 * (2717 * HIBYTE(v536) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v536) + 13242658)) >> 32) >> 6)));
  *STACK[0x4FE8] = 100;
  *STACK[0x4888] = -43;
  v552 = v546 ^ v547 ^ 0x37679930;
  v553 = *(STACK[0xFE70] + 4 * (2717 * BYTE1(v545) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v545) + 11848837)) >> 32) >> 6)));
  LODWORD(v537) = *(STACK[0xFE70] + 4 * (2717 * v531 + 4879732 - 8768 * (((1959383 * (2717 * v531 + 4879732)) >> 32) >> 2)));
  v554 = v549 ^ v530;
  v555 = STACK[0x5220];
  v556 = 2717 * ((((8 * v545) & 0x7F80000) + 12058625) >> 19) + 22257664;
  *STACK[0x4880] = 8;
  v557 = *(STACK[0xFE70] + 4 * (v556 - 8768 * (((31350127 * v556) >> 32) >> 6)));
  LODWORD(v530) = *(STACK[0xFE70] + 4 * (2717 * HIBYTE(v542) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v542) + 13242658)) >> 32) >> 6)));
  v558 = *(STACK[0xFE70] + 4 * (2717 * BYTE1(v531) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v531) + 11848837)) >> 32) >> 6)));
  v559 = v552 ^ v548 ^ v554;
  *STACK[0x5360] = 70;
  *STACK[0x5570] = -96;
  v560 = *(STACK[0xFE70] + 4 * (2717 * v536 + 4879732 - 8768 * (((1959383 * (2717 * v536 + 4879732)) >> 32) >> 2)));
  v561 = (v555 - 1201047063 - ((2 * v555) & 0x70D2F3D2)) ^ 0xB86979E9 ^ v550 ^ v551 ^ v553 ^ v537;
  *STACK[0x4878] = 69;
  LODWORD(v537) = (LODWORD(STACK[0x5278]) + 1876485579 - ((2 * LODWORD(STACK[0x5278])) & 0xDFB1CB96)) ^ 0x6FD8E5CB ^ v530 ^ v558 ^ v560 ^ v557;
  v562 = 2717 * BYTE2(v531) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v531) + 22320155)) >> 32) >> 7);
  v563 = 2717 * HIBYTE(v545) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v545) + 13242658)) >> 32) >> 6);
  v564 = STACK[0xFE70];
  v565 = STACK[0x5270];
  LODWORD(v564) = (v565 + 857675184 - ((2 * v565) & 0x663E2B60)) ^ 0x331F15B0 ^ *(v564 + 4 * v562) ^ *(v564 + 4 * v563) ^ *(v564 + 4 * (2717 * BYTE1(v536) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v536) + 11848837)) >> 32) >> 6))) ^ *(v564 + 4 * (2717 * v542 + 4879732 - 8768 * (((1959383 * (2717 * v542 + 4879732)) >> 32) >> 2)));
  v566 = 2717 * (((v559 >> 23) & 0x14) + (HIBYTE(v559) ^ 0x130A));
  *STACK[0x57A0] = 107;
  v567 = STACK[0xFE70];
  v568 = *(STACK[0xFE70] + 4 * (v566 - 8768 * (((1959383 * v566) >> 32) >> 2)));
  *STACK[0x4870] = 112;
  v569 = *(v567 + 4 * (2717 * BYTE2(v561) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v561) + 22320155)) >> 32) >> 7))) ^ v568 ^ *(v567 + 4 * (2717 * BYTE1(v537) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v537) + 11848837)) >> 32) >> 6)));
  v570 = STACK[0x5280];
  v571 = LODWORD(STACK[0x5250]) ^ v555;
  v572 = LODWORD(STACK[0x5250]) ^ LODWORD(STACK[0x5280]);
  v573 = *(v567 + 4 * (2717 * v564 + 4879732 - 8768 * (((1959383 * (2717 * v564 + 4879732)) >> 32) >> 2))) ^ LODWORD(STACK[0x5280]);
  v574 = 2717 * (((v561 >> 23) & 0x14) + (HIBYTE(v561) ^ 0x130A));
  LODWORD(v530) = *(v567 + 4 * (2717 * BYTE1(v564) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v564) + 11848837)) >> 32) >> 6)));
  v575 = *(v567 + 4 * (2717 * BYTE2(v537) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v537) + 22320155)) >> 32) >> 7)));
  v576 = *(v567 + 4 * (v574 - 8768 * (((1959383 * v574) >> 32) >> 2)));
  *STACK[0x4868] = -63;
  v577 = v569 ^ v573;
  LODWORD(v530) = ((v570 ^ v555) - 820766811 - ((2 * (v570 ^ v555)) & 0x9E282F4A)) ^ 0xCF1417A5 ^ v530 ^ v575;
  v578 = 2717 * BYTE3(v564) + 13242658 - 8768 * (((31350127 * (2717 * BYTE3(v564) + 13242658)) >> 32) >> 6);
  v579 = 2717 * v561 + 4879732 - 8768 * (((1959383 * (2717 * v561 + 4879732)) >> 32) >> 2);
  v580 = STACK[0x5288];
  v581 = (v580 - 1891768683 - ((2 * v580) & 0x1E7BCD2A)) ^ 0x8F3DE695 ^ *(v567 + 4 * (2717 * BYTE2(v564) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v564) + 22320155)) >> 32) >> 7)));
  LODWORD(v564) = v530 ^ v576 ^ *(v567 + 4 * (2717 * v559 + 4879732 - 8768 * (((1959383 * (2717 * v559 + 4879732)) >> 32) >> 2)));
  v582 = *(v567 + 4 * (2717 * BYTE3(v537) + 13242658 - 8768 * (((31350127 * (2717 * BYTE3(v537) + 13242658)) >> 32) >> 6)));
  *STACK[0x5760] = 77;
  v583 = *(v567 + 4 * (2717 * BYTE1(v559) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v559) + 11848837)) >> 32) >> 6)));
  LODWORD(v530) = *(v567 + 4 * v578);
  v584 = *(v567 + 4 * (2717 * BYTE2(v559) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v559) + 22320155)) >> 32) >> 7)));
  v585 = *(v567 + 4 * (2717 * BYTE1(v561) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v561) + 11848837)) >> 32) >> 6)));
  LODWORD(v567) = v581 ^ v583 ^ *(v567 + 4 * v579);
  *STACK[0x4860] = 22;
  v586 = (LODWORD(STACK[0x5370]) - 1438850424 - ((2 * LODWORD(STACK[0x5370])) & 0x5479C510)) ^ 0xAA3CE288 ^ v530 ^ v584;
  v587 = v567 ^ v582;
  LODWORD(v537) = v586 ^ v585 ^ *(STACK[0xFE70] + 4 * (2717 * v537 + 4879732 - 8768 * (((1959383 * (2717 * v537 + 4879732)) >> 32) >> 2)));
  *STACK[0x5218] = 86;
  v588 = STACK[0xFE70];
  LODWORD(v567) = 2717 * (((v564 >> 23) & 0x26) + (BYTE3(v564) ^ 0x1D13));
  v589 = (v572 - 80705347 - ((2 * v572) & 0xF661117A)) ^ 0xFB3088BD ^ *(v588 + 4 * (2717 * BYTE2(v564) + 698269 - 8768 * (((1959383 * (2717 * BYTE2(v564) + 698269)) >> 32) >> 2))) ^ *(v588 + 4 * (2717 * HIBYTE(v577) + 20222631 - 8768 * (((62700253 * (2717 * HIBYTE(v577) + 20222631)) >> 32) >> 7))) ^ *(v588 + 4 * (2717 * v537 + 9058478 - 8768 * (((31350127 * (2717 * v537 + 9058478)) >> 32) >> 6))) ^ *(v588 + 4 * (2717 * BYTE1(v587) + 6969105 - 8768 * (((1959383 * (2717 * BYTE1(v587) + 6969105)) >> 32) >> 2)));
  *STACK[0x5248] = 125;
  v590 = STACK[0xFE70];
  v591 = *(STACK[0xFE70] + 4 * (v567 - 8768 * (((31350127 * v567) >> 32) >> 6)));
  v592 = *(STACK[0xFE70] + 4 * (2717 * HIBYTE(v587) + 20222631 - 8768 * (((62700253 * (2717 * HIBYTE(v587) + 20222631)) >> 32) >> 7)));
  LODWORD(v588) = *(STACK[0xFE70] + 4 * (2717 * BYTE2(v537) + 698269 - 8768 * (((1959383 * (2717 * BYTE2(v537) + 698269)) >> 32) >> 2)));
  LODWORD(v567) = (v571 + 124319235 - ((2 * v571) & 0xED1EC06)) ^ 0x768F603 ^ *(v590 + 4 * (2717 * BYTE2(v587) + 698269 - 8768 * (((1959383 * (2717 * BYTE2(v587) + 698269)) >> 32) >> 2))) ^ *(v590 + 4 * (2717 * v577 + 9058478 - 8768 * (((31350127 * (2717 * v577 + 9058478)) >> 32) >> 6))) ^ *(v590 + 4 * (2717 * BYTE1(v537) + 6969105 - 8768 * (((1959383 * (2717 * BYTE1(v537) + 6969105)) >> 32) >> 2)));
  v593 = ((v592 ^ 0xE3DA0CF2) + 472249102) ^ ((v592 ^ 0xBDC06DA3) + 1111462493) ^ ((v592 ^ 0x12DF05A0) - 316605856);
  v594 = (v588 ^ 0x4CC564F1) & (v592 ^ 0x7CDD5AA9) ^ v588 & 0x30183E58;
  *STACK[0x4858] = 62;
  v595 = v571 ^ v565;
  v596 = v571 ^ v580 ^ *(STACK[0xFE70] + 4 * (2717 * BYTE1(v577) + 6969105 - 8768 * (((1959383 * (2717 * BYTE1(v577) + 6969105)) >> 32) >> 2)));
  *STACK[0x4850] = -54;
  v597 = v596 ^ *(STACK[0xFE70] + 4 * (2717 * v564 + 9058478 - 8768 * (((31350127 * (2717 * v564 + 9058478)) >> 32) >> 6)));
  LODWORD(v537) = *(STACK[0xFE70] + 4 * (2717 * BYTE3(v537) + 20222631 - 8768 * (((62700253 * (2717 * BYTE3(v537) + 20222631)) >> 32) >> 7)));
  v598 = v593 - 1718960128 + (((v588 ^ 0xA451B16C) + 1538150036) ^ ((v588 ^ 0xAE663912) + 1369032430) ^ ((v588 ^ 0x46F2EC8F) - 1190325391)) + ((2 * v594) ^ 0xFFFFB75F);
  *STACK[0x4848] = -61;
  v599 = *(STACK[0xFE70] + 4 * (2717 * BYTE1(v564) + 6969105 - 8768 * (((1959383 * (2717 * BYTE1(v564) + 6969105)) >> 32) >> 2)));
  v600 = v597 ^ (v598 + 68520337 - ((2 * (v598 + 2531)) & 0x82AFF5C));
  LODWORD(v564) = v567 ^ v591;
  LODWORD(v567) = v537 ^ (v595 - 2113729097 - ((2 * v595) & 0x4061B6E)) ^ *(STACK[0xFE70] + 4 * (2717 * BYTE2(v577) + 698269 - 8768 * (((1959383 * (2717 * BYTE2(v577) + 698269)) >> 32) >> 2))) ^ v599 ^ *(STACK[0xFE70] + 4 * (2717 * v587 + 9058478 - 8768 * (((31350127 * (2717 * v587 + 9058478)) >> 32) >> 6)));
  *STACK[0x4840] = -1;
  *STACK[0x4838] = 79;
  v601 = v600 ^ 0x4157FAE;
  LODWORD(v537) = ((v600 ^ 0x4157FAE) >> 24) & 0xFC | HIBYTE(v600) & 3;
  v602 = STACK[0xFE78];
  v603 = *(STACK[0xFE78] + 3903 * v564 + 21841188 - 5896 * (((93242167 * (3903 * v564 + 21841188)) >> 32) >> 7));
  LODWORD(v588) = *(STACK[0xFE78] + 3903 * HIBYTE(v589) + 13055535 - 5896 * (((11655271 * (3903 * HIBYTE(v589) + 13055535)) >> 32) >> 4));
  v604 = *(STACK[0xFE78] + 3903 * ((v567 ^ 0x82030DB7) >> 24) + 13055535 - 5896 * (((11655271 * (3903 * ((v567 ^ 0x82030DB7) >> 24) + 13055535)) >> 32) >> 4));
  LODWORD(STACK[0x5378]) = v604;
  v605 = *(v602 + 3903 * v537 + 13055535 - 5896 * (((11655271 * (3903 * v537 + 13055535)) >> 32) >> 4));
  *STACK[0x5170] = 88;
  v606 = *(STACK[0xFE78] + 3903 * BYTE1(v601) + 999168 - 5896 * (((1456909 * (3903 * BYTE1(v601) + 999168)) >> 32) >> 1));
  LODWORD(v602) = *(STACK[0xFE78] + 3903 * BYTE3(v564) + 13055535 - 5896 * (((11655271 * (3903 * BYTE3(v564) + 13055535)) >> 32) >> 4));
  *STACK[0x4830] = -51;
  v607 = *(STACK[0xFE78] + 3903 * BYTE2(v564) + 10046322 - 5896 * (((11655271 * (3903 * BYTE2(v564) + 10046322)) >> 32) >> 4));
  v608 = *(STACK[0xFE78] + 3903 * v589 + 21841188 - 5896 * (((93242167 * (3903 * v589 + 21841188)) >> 32) >> 7));
  v609 = *(STACK[0xFE78] + 3903 * BYTE1(v564) + 999168 - 5896 * (((1456909 * (3903 * BYTE1(v564) + 999168)) >> 32) >> 1));
  *STACK[0x4828] = 2;
  v610 = *(STACK[0xFE78] + 3903 * BYTE2(v589) + 10046322 - 5896 * (((11655271 * (3903 * BYTE2(v589) + 10046322)) >> 32) >> 4));
  v611 = *(STACK[0xFE78] + 3903 * (v567 ^ 0xB7) + 21841188 - 5896 * (((93242167 * (3903 * (v567 ^ 0xB7u) + 21841188)) >> 32) >> 7));
  *STACK[0x4820] = 106;
  v612 = WORD1(v567) & 0xF8 | ((v567 ^ 0x82030DB7) >> 16) & 7;
  LODWORD(v567) = 3903 * ((v567 ^ 0xDB7) >> 8) + 999168;
  v613 = v567 - 5896 * (((1456909 * v567) >> 32) >> 1);
  LODWORD(v567) = v605;
  v614 = v605 < 0x1C;
  LODWORD(STACK[0x5370]) = v604 < 0x1C;
  LODWORD(v590) = v606;
  LODWORD(STACK[0x5288]) = v606 < 0x1C;
  v615 = 3903 * BYTE1(v589) + 999168 - 5896 * (((1456909 * (3903 * BYTE1(v589) + 999168)) >> 32) >> 1);
  v616 = (3903 * (v610 | ((v610 < 0x1C) << 8)) + 11947083) % 0x1708;
  v617 = v588 | ((v588 < 0x1C) << 8);
  LODWORD(v588) = 3903 * v612 + 10046322 - 5896 * (((11655271 * (3903 * v612 + 10046322)) >> 32) >> 4);
  v618 = v607 | ((v607 < 0x1C) << 8);
  v619 = 3903 * (v602 + 36364439 + ((v602 < 0x1C) << 8) + 3327) - 195516705;
  *STACK[0x5330] = -22;
  v620 = STACK[0xFE78];
  v621 = *(STACK[0xFE78] + v613);
  LODWORD(v602) = v611;
  LODWORD(STACK[0x5280]) = v611 < 0x1C;
  v622 = *(v620 + 3903 * v601 + 21841188 - 5896 * (((93242167 * (3903 * v601 + 21841188)) >> 32) >> 7));
  v623 = (3903 * (*(v620 + v615) | ((*(v620 + v615) < 0x1Cu) << 8)) + 7919187) % 0x1708u;
  v624 = v619 % 0x1708;
  v625 = *(v620 + 3903 * BYTE2(v601) + 10046322 - 5896 * (((11655271 * (3903 * BYTE2(v601) + 10046322)) >> 32) >> 4));
  v626 = v625 | ((v625 < 0x1C) << 8);
  v627 = *(v620 + v616);
  v628 = *(v620 + v588);
  v629 = *(v620 + (3903 * v617 + 13953225) % 0x1708u);
  LODWORD(v588) = *(v620 + v624);
  LODWORD(STACK[0x5220]) = *(v620 + (3903 * (v608 | ((v608 < 0x1C) << 8)) + 20662482) % 0x1708);
  v630 = *(v620 + v623);
  v631 = *(v620 + (3903 * v618 + 11947083) % 0x1708u);
  v632 = v609 | ((v609 < 0x1C) << 8);
  v633 = v603 | ((v603 < 0x1C) << 8);
  v634 = (3903 * v632 + 7919187) % 0x1708u;
  v635 = (3903 * v626 + 11947083) % 0x1708u;
  LODWORD(v537) = (3903 * (v567 | (v614 << 8)) + 13953225) % 0x1708;
  v636 = v590 | (LODWORD(STACK[0x5288]) << 8);
  v637 = LODWORD(STACK[0x5378]) | (LODWORD(STACK[0x5370]) << 8);
  *STACK[0x5600] = 81;
  LODWORD(v590) = v621 | ((v621 < 0x1C) << 8);
  v638 = (3903 * (v622 | ((v622 < 0x1C) << 8)) + 20662482) % 0x1708;
  v639 = (3903 * v637 + 13953225) % 0x1708u;
  v640 = v602 + 993573490 + (LODWORD(STACK[0x5280]) << 8);
  v641 = STACK[0xFE78];
  LODWORD(v567) = *(STACK[0xFE78] + (3903 * v633 + 20662482) % 0x1708u);
  v642 = *(STACK[0xFE78] + v634);
  v643 = *(STACK[0xFE78] + v537);
  LODWORD(STACK[0x5278]) = v643;
  v644 = 3903 * v640 + 458799300;
  *STACK[0x4818] = -32;
  v645 = *(v641 + v635);
  LODWORD(STACK[0x5288]) = v645;
  v646 = *(v641 + (3903 * v636 + 7919187) % 0x1708u);
  LODWORD(STACK[0x5378]) = v646;
  LODWORD(v620) = *(v641 + v639);
  v647 = *(v641 + v638);
  v648 = *(v641 + (3903 * (v628 | ((v628 < 0x1C) << 8)) + 11947083) % 0x1708);
  *STACK[0x4810] = 58;
  v649 = *(v641 + (3903 * v590 + 7919187) % 0x1708u);
  v650 = *(v641 + v644 % 0x1708);
  LODWORD(v537) = v588;
  v651 = v588 < 0x1C;
  LODWORD(v588) = STACK[0x5220];
  v652 = LODWORD(STACK[0x5220]) < 0x1C;
  LODWORD(v602) = v631;
  LODWORD(v641) = v631 < 0x1C;
  LODWORD(STACK[0x5250]) = v567 < 0x1C;
  LODWORD(STACK[0x5270]) = v643 < 0x1C;
  LODWORD(STACK[0x5280]) = v645 < 0x1C;
  LODWORD(STACK[0x5370]) = v646 < 0x1C;
  *STACK[0x4808] = 89;
  LODWORD(v620) = *(STACK[0xFE70] + 4 * ((2717 * (v620 | ((v620 < 0x1C) << 8)) + 11074492) % 0x2240));
  v653 = v627 + 1024094336 + ((v627 < 0x1C) << 8);
  *STACK[0x4F28] = 42;
  v654 = STACK[0xFE70];
  v655 = *(STACK[0xFE70] + 4 * ((2717 * (v649 + 784144123 + ((v649 < 0x1C) << 8)) - 197061509) % 0x2240)) ^ v620;
  LODWORD(v620) = v629 | ((v629 < 0x1C) << 8);
  v656 = v630 & 0x62 ^ 0xFFFFFFC7;
  v657 = v630 ^ (2 * ((v630 ^ 0x64) & (2 * ((v630 ^ 0x64) & (2 * ((v630 ^ 0x64) & (2 * ((v630 ^ 0x64) & (2 * ((v630 ^ 0x44) & (2 * ((v630 ^ 0x44) & 6 ^ v656)) ^ v656)) ^ v656)) ^ v656)) ^ v656)) ^ v656));
  v658 = v655 ^ *(v654 + 4 * ((2717 * (v648 | ((v648 < 0x1C) << 8)) + 20842107) % 0x2240)) ^ *(v654 + 4 * ((2717 * (v650 | ((v650 < 0x1C) << 8)) - 76076) % 0x2240));
  v659 = 2717 * v620 + 11074492;
  v660 = ((2 * v657) & 0x1C ^ 4) + (v657 ^ 0x1B6C);
  v661 = 2717 * (v588 | (v652 << 8)) - 76076;
  HIDWORD(v662) = *(STACK[0xFE70] + 4 * (2717 * BYTE2(v658) + 8362926 - 8768 * (((1959383 * (2717 * BYTE2(v658) + 8362926)) >> 32) >> 2)));
  LODWORD(v662) = HIDWORD(v662);
  LODWORD(v620) = v662 >> 16;
  HIDWORD(v662) = v620 ^ 0x14CC5;
  LODWORD(v662) = v620 ^ 0x64F00000;
  v663 = *(STACK[0xFE70] + 4 * ((2717 * v653 + 695339003) % 0x2240u));
  HIDWORD(v662) = v662 >> 17;
  LODWORD(v662) = HIDWORD(v662);
  v664 = *(STACK[0xFE70] + 4 * (v659 % 0x2240));
  v665 = *(STACK[0xFE70] + 4 * (2717 * v660 - 8768 * (((31350127 * (2717 * v660)) >> 32) >> 6)));
  *STACK[0x56D0] = 118;
  LODWORD(v620) = *STACK[0x5348];
  v666 = v620 & 0xA6 ^ 0x61;
  v667 = v663 ^ 0x9FB138B2 ^ v664 ^ *(v654 + 4 * (v661 % 0x2240)) ^ v665;
  LODWORD(STACK[0x5078]) = v667;
  v668 = *(v654 + 4 * (2717 * v658 + 17426838 - 8768 * (((62700253 * (2717 * v658 + 17426838)) >> 32) >> 7))) ^ *(v654 + 4 * (2717 * BYTE1(v658) + 2094807 - 8768 * (((1959383 * (2717 * BYTE1(v658) + 2094807)) >> 32) >> 2))) ^ *(v654 + 4 * ((2717 * HIBYTE(v658) + 12547106) % 0x2240u));
  v669 = v620 ^ (2 * ((v620 ^ 0x64) & (2 * ((v620 ^ 0x64) & (2 * ((v620 ^ 0x64) & (2 * ((v620 ^ 0x64) & (2 * ((v620 ^ 0x44444444) & (2 * (v666 ^ v620 & 2)) ^ v666)) ^ v666)) ^ v666)) ^ v666)) ^ v666)) ^ 0xA6;
  v670 = *(v654 + 4 * ((2717 * (v537 | (v651 << 8)) + 11074492) % 0x2240));
  *STACK[0x4E80] = 103;
  LODWORD(v567) = 2717 * (v567 + 1068071397 + (LODWORD(STACK[0x5250]) << 8)) + 1447830371;
  LODWORD(v537) = 2717 * (LODWORD(STACK[0x5278]) | (LODWORD(STACK[0x5270]) << 8)) + 11074492;
  v671 = v668 ^ ((v669 << 24) - ((v669 << 25) & 0x77777777) - 1153247691);
  LODWORD(v564) = LODWORD(STACK[0x5288]) | (LODWORD(STACK[0x5280]) << 8);
  v672 = v670 ^ *(v654 + 4 * ((2717 * (v602 | (v641 << 8)) + 20842107) % 0x2240)) ^ 0xF4CD0D8;
  *STACK[0x4800] = -30;
  *STACK[0x47F8] = 6;
  v673 = STACK[0xFE70];
  LODWORD(v567) = v672 ^ *(v673 + 4 * ((2717 * (v642 | ((v642 < 0x1C) << 8)) + 18741866) % 0x2240)) ^ *(v673 + 4 * (v567 % 0x2240));
  v674 = v537 % 0x2240;
  v675 = v671 ^ ((v662 >> 31) - ((2 * (v662 >> 31)) & 0xEF0F6588) - 142101820);
  v676 = LODWORD(STACK[0x5378]) | (LODWORD(STACK[0x5370]) << 8);
  LODWORD(v537) = (v675 - 1615775566 - ((2 * v675) & 0x3F627164)) ^ v667;
  LODWORD(STACK[0x5088]) = 2 * v537;
  v677 = v537;
  LODWORD(STACK[0x5058]) = v537;
  v678 = *(v673 + 4 * v674) ^ *(v673 + 4 * ((2717 * (v647 | ((v647 < 0x1C) << 8)) - 76076) % 0x2240)) ^ 0xE295EBE7 ^ *(v673 + 4 * ((2717 * v564 + 20842107) % 0x2240u)) ^ *(v673 + 4 * ((2717 * v676 + 18741866) % 0x2240u));
  LODWORD(STACK[0x5080]) = v678;
  v679 = (v537 + 256692440 - ((2 * v537) & 0x1E99A1B0)) ^ v567;
  LODWORD(STACK[0x5060]) = v567;
  LODWORD(STACK[0x5098]) = v679;
  v680 = (v679 - 493491225 - ((2 * v679) & 0xC52BD7CE)) ^ v678;
  LODWORD(STACK[0x50A8]) = 2 * v680;
  v681 = v680;
  LODWORD(STACK[0x5070]) = v680;
  v682 = v658 ^ 0x84E7E0FB;
  v683 = (v680 - 2065178373 - ((2 * v680) & 0x9CFC1F6)) ^ v658 ^ 0x84E7E0FB;
  v684 = *(v673 + 4 * (2717 * BYTE2(v683) + 8362926 - 8768 * (((1959383 * (2717 * BYTE2(v683) + 8362926)) >> 32) >> 2)));
  *STACK[0x4FF8] = 121;
  LODWORD(v588) = v683;
  LODWORD(STACK[0x50A0]) = v683;
  v685 = 2717 * BYTE1(v683) + 2094807 - 8768 * (((1959383 * (2717 * BYTE1(v683) + 2094807)) >> 32) >> 2);
  v686 = *STACK[0x57B0];
  v687 = v686 & 0xFFFFFF9C ^ 0xFFFFFFDC;
  LODWORD(v673) = *STACK[0x5190];
  LODWORD(v564) = v673 & 0x66666666 ^ 0x41;
  LODWORD(v537) = v686 ^ (2 * ((v686 ^ 0x64) & (2 * ((v686 ^ 0x64) & (2 * ((v686 ^ 0x64) & (2 * ((v686 ^ 0x64) & (2 * v687) ^ v687)) ^ v687)) ^ v687)) ^ v687));
  v688 = (v673 ^ 0x64) & (2 * ((v673 ^ 0x64) & (2 * ((v673 ^ 0x64) & (2 * ((v673 ^ 0x64) & (2 * ((v673 ^ 0x44444444) & (2 * (v564 ^ v673 & 2)) ^ v564)) ^ v564)) ^ v564)) ^ v564)) ^ v564;
  v689 = STACK[0xFE70];
  v690 = *(v689 + 4 * v685) ^ v684 ^ *(v689 + 4 * (2717 * v588 + 17426838 - 8768 * (((62700253 * (2717 * v588 + 17426838)) >> 32) >> 7))) ^ *(v689 + 4 * (2717 * BYTE3(v588) + 12547106 - 8768 * (((31350127 * (2717 * BYTE3(v588) + 12547106)) >> 32) >> 6)));
  v691 = v690 ^ (((v537 << 24) ^ 0x9C000000) - 1045281319 - ((v537 << 25) & 0x82000000)) ^ 0xC1B245D9;
  v692 = (v691 + 256692440 - 2 * (v691 & 0xF4CD0DC ^ v690 & 4)) ^ v567;
  LODWORD(STACK[0x50B8]) = 2 * v692;
  v693 = v692;
  LODWORD(STACK[0x5068]) = v692;
  v694 = (v692 - 2065178373 - ((2 * v692) & 0x9CFC1F6)) ^ v658 ^ 0x84E7E0FB;
  v695 = 2717 * ((v692 - 5 - ((2 * v692) & 0xF6)) ^ v658 ^ 0xFB) + 17426838;
  v696 = 2717 * ((BYTE2(v694) ^ 0xC06) + ((v694 >> 15) & 0xC));
  LODWORD(STACK[0x50C0]) = v694;
  LODWORD(v673) = ((v673 ^ (2 * v688) ^ 0x66) << 24) - 444944015 - (((v673 ^ (2 * v688) ^ 0x66) << 25) & 0xCA000000);
  v697 = *(v689 + 4 * (2717 * BYTE1(v694) + 2094807 - 8768 * (((1959383 * (2717 * BYTE1(v694) + 2094807)) >> 32) >> 2))) ^ *(v689 + 4 * (v695 - 8768 * (((62700253 * v695) >> 32) >> 7))) ^ *(v689 + 4 * (2717 * HIBYTE(v694) + 12547106 - 8768 * (((31350127 * (2717 * HIBYTE(v694) + 12547106)) >> 32) >> 6))) ^ *(v689 + 4 * (v696 - 8768 * (((1959383 * v696) >> 32) >> 2)));
  v698 = v691 ^ v677;
  LODWORD(STACK[0x5090]) = v698;
  LODWORD(v673) = v697 ^ v673 ^ v698;
  LODWORD(STACK[0x50D0]) = v673;
  v699 = v673 ^ 0xE57AB171;
  LODWORD(v673) = v673 ^ 0xE57AB171 ^ v681;
  LODWORD(STACK[0x50B0]) = v699;
  v700 = v694 ^ v673;
  LODWORD(v641) = v673;
  LODWORD(STACK[0x50C8]) = v673;
  LODWORD(v673) = 2717 * ((v694 ^ v673) >> 16) + 8362926;
  LODWORD(v673) = *(v689 + 4 * (v673 - 8768 * (((1959383 * v673) >> 32) >> 2)));
  LODWORD(v602) = v700;
  LODWORD(STACK[0x50E8]) = v700;
  *STACK[0x47F0] = 32;
  v701 = STACK[0xFE70];
  v702 = *(STACK[0xFE70] + 4 * (2717 * BYTE1(v700) + 2094807 - 8768 * (((1959383 * (2717 * BYTE1(v700) + 2094807)) >> 32) >> 2)));
  v703 = *(STACK[0xFE70] + 4 * ((2717 * v700 + 17418070) % 0x2240));
  *STACK[0x5560] = -1;
  LODWORD(v564) = *STACK[0x5790];
  v704 = v564 & 0x18 ^ 0xFFFFFF9A;
  LODWORD(v673) = v673 ^ 0x19E7CA18 ^ v702 ^ v703 ^ *(v701 + 4 * (2717 * BYTE3(v602) + 12547106 - 8768 * (((31350127 * (2717 * BYTE3(v602) + 12547106)) >> 32) >> 6)));
  v705 = v564 ^ (2 * ((v564 ^ 0x64) & (2 * ((v564 ^ 0x64) & (2 * ((v564 ^ 0x64) & (2 * ((v564 ^ 0x64) & (2 * ((v564 ^ 0x64) & (2 * v704) ^ v704)) ^ v704)) ^ v704)) ^ v704)) ^ v704)) ^ 0x18;
  LODWORD(v673) = v673 ^ ((v705 << 24) + 434620952 - ((v705 << 25) & 0x33333333));
  LODWORD(v537) = (v673 - 2065178373 - ((2 * v673) & 0x9CFC1F6)) ^ v658 ^ 0x84E7E0FB;
  LODWORD(v564) = 2717 * ((v673 - 5 - ((2 * v673) & 0xF6)) ^ v658 ^ 0xFB) + 17426838;
  *STACK[0x55D0] = 114;
  v706 = *(v701 + 4 * (2717 * BYTE2(v537) + 8362926 - 8768 * (((1959383 * (2717 * BYTE2(v537) + 8362926)) >> 32) >> 2)));
  *STACK[0x47E8] = -100;
  LODWORD(v602) = v537;
  v707 = *(v701 + 4 * (2717 * BYTE1(v537) + 2094807 - 8768 * (((1959383 * (2717 * BYTE1(v537) + 2094807)) >> 32) >> 2)));
  LODWORD(v564) = *(v701 + 4 * (v564 - 8768 * (((62700253 * v564) >> 32) >> 7)));
  *STACK[0x51F8] = 37;
  LODWORD(v701) = *(v701 + 4 * (2717 * BYTE3(v537) + 12547106 - 8768 * (((31350127 * (2717 * BYTE3(v537) + 12547106)) >> 32) >> 6)));
  *STACK[0x47E0] = 126;
  *STACK[0x5610] = -121;
  v708 = *STACK[0x53D0];
  LODWORD(v537) = v708 & 0xFFFFFF84 | 0x50;
  v709 = v707 ^ v564;
  LODWORD(v564) = (((v708 ^ 0x64) & (2 * ((v708 ^ 0x64) & (2 * ((v708 ^ 0x64) & (2 * ((v708 ^ 0x64) & (2 * ((v708 ^ 0x64) & (2 * v537) | v537)) ^ v537)) ^ v537)) ^ v537)) ^ v537) << 25) ^ (v708 << 24) ^ 0x84000000;
  LODWORD(STACK[0x50E0]) = v673 ^ v699;
  v710 = v706 ^ 0x652BA989 ^ v709 ^ v701 ^ v673 ^ v699 ^ (v564 + 1697360265 - ((2 * v564) & 0xCA000000));
  LODWORD(v701) = v710 ^ v641;
  LODWORD(v641) = v710;
  LODWORD(STACK[0x50F8]) = v710;
  LODWORD(v537) = v701 ^ v602;
  v711 = (v673 - 2065178373 - ((2 * v673) & 0x9CFC1F6)) ^ v658 ^ 0x84E7E0FB;
  LODWORD(STACK[0x50F0]) = v602;
  LODWORD(v602) = v701;
  LODWORD(STACK[0x5100]) = v701;
  *STACK[0x47D8] = 41;
  v712 = *(STACK[0xFE70] + 4 * (2717 * BYTE2(v537) + 8362926 - 8768 * (((1959383 * (2717 * BYTE2(v537) + 8362926)) >> 32) >> 2)));
  *STACK[0x5740] = -106;
  LODWORD(v701) = *STACK[0x5408];
  v713 = v701 & 0x3A ^ 0x2B;
  LODWORD(STACK[0x5118]) = v537;
  v714 = v701 ^ (2 * ((v701 ^ 0x64) & (2 * ((v701 ^ 0x64) & (2 * ((v701 ^ 0x64) & (2 * ((v701 ^ 0x64) & (2 * ((v701 ^ 0x64) & (2 * (v713 ^ v701 & 0x1E)) ^ v713)) ^ v713)) ^ v713)) ^ v713)) ^ v713));
  v715 = STACK[0xFE70];
  LODWORD(v564) = *STACK[0x5400];
  v716 = v564 & 0x96 ^ 0xFFFFFFD9;
  v717 = v712 ^ 0xCA97F9CB ^ *(v715 + 4 * (2717 * BYTE1(v537) + 2094807 - 8768 * (((1959383 * (2717 * BYTE1(v537) + 2094807)) >> 32) >> 2))) ^ *(v715 + 4 * (2717 * BYTE3(v537) + 12547106 - 8768 * (((31350127 * (2717 * BYTE3(v537) + 12547106)) >> 32) >> 6))) ^ *(v715 + 4 * (2717 * v537 + 17426838 - 8768 * (((62700253 * (2717 * v537 + 17426838)) >> 32) >> 7))) ^ (((v714 ^ 0x3A) << 24) - 896009781 - (((v714 ^ 0x3A) << 25) & 0x94000000));
  v718 = v564 ^ (2 * ((v564 ^ 0x64) & (2 * ((v564 ^ 0x64) & (2 * ((v564 ^ 0x64) & (2 * ((v564 ^ 0x64) & (2 * ((v564 ^ 0x64) & (2 * (v716 ^ v564 & 0x32)) ^ v716)) ^ v716)) ^ v716)) ^ v716)) ^ v716));
  LODWORD(v673) = v673 ^ v693;
  LODWORD(STACK[0x50D8]) = v673;
  LODWORD(v673) = v717 ^ v673;
  v719 = v673 ^ v711;
  v720 = v673;
  LODWORD(STACK[0x5108]) = v673;
  LODWORD(v673) = *(v715 + 4 * (2717 * v719 + 17426838 - 8768 * (((62700253 * (2717 * v719 + 17426838)) >> 32) >> 7)));
  v721 = *(v715 + 4 * (2717 * BYTE1(v719) + 2094807 - 8768 * (((1959383 * (2717 * BYTE1(v719) + 2094807)) >> 32) >> 2)));
  LODWORD(v564) = *(v715 + 4 * (2717 * BYTE2(v719) + 8362926 - 8768 * (((1959383 * (2717 * BYTE2(v719) + 8362926)) >> 32) >> 2)));
  LODWORD(v715) = *(v715 + 4 * (2717 * HIBYTE(v719) + 12547106 - 8768 * (((31350127 * (2717 * HIBYTE(v719) + 12547106)) >> 32) >> 6)));
  LODWORD(STACK[0x5110]) = v717 ^ v641;
  v722 = v673 ^ 0x60D5838C ^ v721 ^ v564 ^ v715 ^ v717 ^ v641 ^ (((v718 << 24) ^ 0x96000000) + 1624605580 - (v718 >> 5 << 30));
  *STACK[0x5710] = -27;
  v723 = v722 ^ v602 ^ v719;
  LODWORD(STACK[0x5370]) = v719;
  LODWORD(STACK[0x5128]) = v722 ^ v602;
  LODWORD(v673) = *(STACK[0xFE70] + 4 * (2717 * BYTE2(v723) + 8362926 - 8768 * (((1959383 * (2717 * BYTE2(v723) + 8362926)) >> 32) >> 2)));
  LODWORD(STACK[0x51B0]) = v723;
  *STACK[0x47D0] = -1;
  LODWORD(v715) = *(STACK[0xFE70] + 4 * (2717 * (v722 ^ v602 ^ v719) + 17426838 - 8768 * (((62700253 * (2717 * (v722 ^ v602 ^ v719) + 17426838)) >> 32) >> 7)));
  v724 = *(STACK[0xFE70] + 4 * (2717 * BYTE1(v723) + 2094807 - 8768 * (((1959383 * (2717 * BYTE1(v723) + 2094807)) >> 32) >> 2)));
  v725 = *(STACK[0xFE70] + 4 * (2717 * HIBYTE(v723) + 12547106 - 8768 * (((31350127 * (2717 * HIBYTE(v723) + 12547106)) >> 32) >> 6)));
  LODWORD(STACK[0x5138]) = 2 * v722;
  LODWORD(STACK[0x5120]) = v722;
  LODWORD(v662) = __ROR4__(v673 ^ v715 ^ v724 ^ v725 ^ (v722 - ((2 * v722) & 0x4EBDB17A) - 1486956355) ^ 0xCAB097DD, 21);
  *STACK[0x47C8] = 32;
  LODWORD(v715) = *STACK[0x5410];
  v726 = v715 & 0xFFFFFFE6 | 1;
  LODWORD(v662) = v662 ^ 0x727B036F;
  HIDWORD(v662) = v662;
  LODWORD(v673) = v662 >> 11;
  LODWORD(STACK[0x51C0]) = v673;
  LODWORD(STACK[0x5130]) = v722 ^ v720;
  v727 = v673 ^ ((v715 ^ (2 * ((v715 ^ 0x64) & (2 * ((v715 ^ 0x64) & (2 * ((v715 ^ 0x64) & (2 * ((v715 ^ 0x64) & (2 * ((v715 ^ 0x64) & (2 * (v715 & (2 * v726) ^ v726)) ^ v726)) ^ v726)) ^ v726)) ^ v726)) ^ v726)) ^ 0xE6) << 24);
  LODWORD(STACK[0x5160]) = v727;
  LODWORD(v673) = v727 + (v722 ^ v720) - 2 * (v727 & (v722 ^ v720));
  LODWORD(STACK[0x5220]) = v673;
  LODWORD(v641) = v673 ^ v719;
  v728 = *STACK[0x52A0];
  LODWORD(v564) = v728 & 0xFFFFFFDA ^ 0xFFFFFFBB;
  LODWORD(STACK[0x51C8]) = v673 ^ v719;
  v729 = v728 ^ (2 * ((v728 ^ 0x64) & (2 * ((v728 ^ 0x64) & (2 * ((v728 ^ 0x64) & (2 * ((v728 ^ 0x64) & (2 * ((v728 ^ 0x64) & (2 * ((v728 ^ 0x64) & 0x3E ^ v564)) ^ v564)) ^ v564)) ^ v564)) ^ v564)) ^ v564));
  v730 = STACK[0xFE70];
  LODWORD(v673) = *(v730 + 4 * (2717 * v641 + 17426838 - 8768 * (((62700253 * (2717 * v641 + 17426838)) >> 32) >> 7))) ^ *(v730 + 4 * (2717 * BYTE2(v641) + 8362926 - 8768 * (((1959383 * (2717 * BYTE2(v641) + 8362926)) >> 32) >> 2))) ^ *(v730 + 4 * (2717 * BYTE1(v641) + 2094807 - 8768 * (((1959383 * (2717 * BYTE1(v641) + 2094807)) >> 32) >> 2))) ^ *(v730 + 4 * (2717 * BYTE3(v641) + 12547106 - 8768 * (((31350127 * (2717 * BYTE3(v641) + 12547106)) >> 32) >> 6))) ^ v727 ^ (((v729 ^ 0xDA) << 24) + 1960952962 - (((v729 ^ 0xDA) << 25) & 0xE8000000));
  LODWORD(STACK[0x5250]) = v673;
  LODWORD(v673) = v673 ^ 0x74E1C482;
  LODWORD(STACK[0x5378]) = v673;
  LODWORD(v673) = v673 ^ v722 ^ v602;
  LODWORD(STACK[0x5270]) = v673;
  v731 = v673 ^ v641;
  LODWORD(v673) = 2717 * ((v673 ^ v641) >> 16) + 8362926;
  *STACK[0x5450] = -116;
  LODWORD(v673) = *(STACK[0xFE70] + 4 * (v673 - 8768 * (((1959383 * v673) >> 32) >> 2))) ^ *(STACK[0xFE70] + 4 * (2717 * BYTE1(v731) + 2094807 - 8768 * (((1959383 * (2717 * BYTE1(v731) + 2094807)) >> 32) >> 2)));
  LODWORD(STACK[0x5278]) = v731;
  LODWORD(v715) = 2717 * v731 + 17426838 - 8768 * (((62700253 * (2717 * v731 + 17426838)) >> 32) >> 7);
  v732 = 2717 * HIBYTE(v731) + 12547106 - 8768 * (((31350127 * (2717 * HIBYTE(v731) + 12547106)) >> 32) >> 6);
  *STACK[0x5258] = -60;
  *STACK[0x47C0] = -36;
  v733 = *STACK[0x5770];
  LODWORD(v730) = v733 & 0xC ^ 0x14;
  v734 = (((v733 ^ 0x64) & (2 * ((v733 ^ 0x64) & (2 * ((v733 ^ 0x64) & (2 * ((v733 ^ 0x64) & (2 * v730) ^ v730)) ^ v730)) ^ v730)) ^ v730) << 25) ^ (v733 << 24);
  LODWORD(STACK[0x5288]) = v673 ^ *(STACK[0xFE70] + 4 * v715) ^ *(STACK[0xFE70] + 4 * v732);
  v735 = STACK[0x5490];
  *STACK[0x47B8] = 5;
  *STACK[0x5590] = 105;
  *STACK[0x47B0] = 91;
  v736 = STACK[0x55A0];
  LODWORD(v673) = *(STACK[0xFE78] + LODWORD(STACK[0x55A0]) + 19245693 - 5896 * (v735 / 0x1708));
  LODWORD(STACK[0x5280]) = (v734 ^ 0xC000000) + 875677318 - ((2 * (v734 ^ 0xC000000)) & 0x68000000);
  *STACK[0x47A8] = -106;
  *STACK[0x47A0] = -59;
  v737 = *(STACK[0xFE70] + 4 * ((2717 * (v673 | ((v673 < 0x1C) << 8)) + 6194760) % 0x2240));
  *STACK[0x4EC8] = 47;
  v738 = STACK[0xFE78];
  LODWORD(v673) = *(STACK[0xFE78] + v736 + 19269111 - 5896 * (LODWORD(STACK[0x53F0]) / 0x1708));
  v739 = (2717 * (v673 | ((v673 < 0x1C) << 8)) + 7588581) % 0x2240;
  v740 = v736;
  v741 = *(STACK[0xFE78] + 19284723 - 5896 * (LODWORD(STACK[0x54B0]) / 0x1708) + v736 + 3903);
  v742 = *(STACK[0xFE78] + 19276917 - 5896 * (LODWORD(STACK[0x54C0]) / 0x1708) + v736 + 3903);
  v284 = v742 >= 0x1C;
  v743 = v742 + 1302623669;
  v744 = !v284;
  v745 = v743 + (v744 << 8);
  v746 = ((2 * (v745 & 0x2F ^ 0x69)) ^ 0xD2) & (v745 ^ 0x46) ^ v745 & 0x2F ^ 0x69;
  v63 = ((v743 ^ (2 * ((v745 ^ 0x2E) & (2 * (v745 ^ 0x46)) & ~(4 * v746) ^ v746))) & 8) == 0;
  v747 = v745 - 1302623697;
  if (v63)
  {
    v748 = -8;
  }

  else
  {
    v748 = 8;
  }

  v749 = v747 + v748;
  v750 = *(v738 + v740 + 19284723 - 5896 * (LODWORD(STACK[0x53A8]) / 0x1708));
  v751 = (2717 * (v750 | ((v750 < 0x1C) << 8)) + 7588581) % 0x2240;
  v752 = (2717 * (v741 + 956007093 + ((v741 < 0x1C) << 8) + 323) + 1006009873) % 0x2240;
  v753 = (2717 * (v749 ^ 8) + 16035734) % 0x2240;
  v754 = *(v738 + v740 + 19261305 - 5896 * (LODWORD(STACK[0x53E8]) / 0x1708));
  v755 = (2717 * (v754 | ((v754 < 0x1C) << 8)) + 6194760) % 0x2240;
  v756 = *(v738 + v740 + 19237887 - 5896 * (LODWORD(STACK[0x53A0]) / 0x1708));
  v757 = v756 | ((v756 < 0x1C) << 8);
  v758 = *(v738 + v740 + 19276917 - 5896 * (LODWORD(STACK[0x5398]) / 0x1708));
  v759 = 2717 * (v758 | ((v758 < 0x1C) << 8)) + 6194760;
  v760 = *(v738 + 19253499 - 5896 * (LODWORD(STACK[0x5550]) / 0x1708) + v740 + 3903);
  v284 = v760 >= 0x1C;
  v761 = v760 + 1108310494;
  v762 = !v284;
  v763 = v761 + (v762 << 8);
  v764 = (2717 * v757 + 7588581) % 0x2240u;
  v765 = 2717 * (v763 + 2623) - 491719328;
  v766 = *(v738 + 19269111 - 5896 * (LODWORD(STACK[0x54D0]) / 0x1708) + v740 + 3903);
  v767 = v766 | ((v766 < 0x1C) << 8);
  v768 = *(v738 + v740 + 19253499 - 5896 * (LODWORD(STACK[0x5390]) / 0x1708));
  v769 = v759 % 0x2240;
  v770 = 2717 * (v768 | ((v768 < 0x1C) << 8)) + 7588581;
  v771 = *(STACK[0xFE70] + 4 * v739);
  v772 = *(STACK[0xFE70] + 4 * v752);
  v773 = *(STACK[0xFE70] + 4 * v751);
  v774 = *(STACK[0xFE70] + 4 * v753);
  v775 = *(STACK[0xFE70] + 4 * v755);
  v776 = *(STACK[0xFE70] + 4 * v764);
  v777 = *(STACK[0xFE70] + 4 * (v765 % 0x2240));
  v778 = *(STACK[0xFE70] + 4 * v769);
  v779 = *(STACK[0xFE70] + 4 * (v770 % 0x2240));
  v780 = 19261305 - 5896 * (LODWORD(STACK[0x5530]) / 0x1708);
  *STACK[0x5018] = -60;
  v781 = STACK[0xFE70];
  v782 = *(STACK[0xFE70] + 4 * ((2717 * v767 + 22945065) % 0x2240u));
  *STACK[0x4798] = 32;
  v783 = STACK[0xFE78];
  v784 = *(STACK[0xFE78] + v780 + v740 + 3903);
  v284 = v784 >= 0x1C;
  v785 = v784 + 235293753;
  v786 = !v284;
  v787 = 2717 * (v785 + (v786 << 8)) + 672959861;
  v788 = *(v783 + 19237887 - 5896 * (LODWORD(STACK[0x5720]) / 0x1708) + v740 + 3903);
  v789 = 2717 * (v788 | ((v788 < 0x1C) << 8)) + 22945065;
  v790 = *(v783 + v740 + 19292529 - 5896 * (LODWORD(STACK[0x5388]) / 0x1708));
  v791 = (2717 * (v790 | ((v790 < 0x1C) << 8)) + 6194760) % 0x2240;
  v792 = *(v781 + 4 * (v787 % 0x2240));
  v793 = *(v781 + 4 * (v789 % 0x2240));
  v794 = *(v781 + 4 * v791);
  *STACK[0x4790] = 16;
  v795 = 19245693 - 5896 * (LODWORD(STACK[0x5650]) / 0x1708) + v740;
  LODWORD(STACK[0x55A0]) = v740;
  v796 = *(v783 + (v795 + 3903));
  v797 = v773 ^ (LODWORD(STACK[0x5290]) + 1975569272 - ((2 * LODWORD(STACK[0x5290])) & 0xEB8196F0));
  v798 = 19292529 - 5896 * (LODWORD(STACK[0x5380]) / 0x1708) + v740;
  v799 = *(v781 + 4 * ((2717 * (v796 | ((v796 < 0x1C) << 8)) + 15959658) % 0x2240));
  *STACK[0x5268] = -53;
  v800 = *(v783 + (v798 + 3903));
  v801 = v737 ^ LODWORD(STACK[0x52E8]) ^ v776 ^ v782 ^ v774;
  v802 = (v801 - 1615775566 - ((2 * v801) & 0x3F627164)) ^ LODWORD(STACK[0x5078]);
  v803 = v771 ^ LODWORD(STACK[0x52F0]) ^ v778 ^ v793;
  v804 = ((v797 ^ v792 ^ v777 ^ v794 ^ 0x75C0CB78) - 2065178373 - 2 * ((v797 ^ v792 ^ v777 ^ v794 ^ 0x75C0CB78) & 0x4E7E0FF ^ (v797 ^ v792 ^ v777 ^ v794) & 4)) ^ v682;
  v805 = LODWORD(STACK[0x52F8]) ^ 0xAC31E151 ^ v775 ^ v772 ^ v779 ^ *(v781 + 4 * ((2717 * (v800 | ((v800 < 0x1C) << 8)) + 15959658) % 0x2240));
  v806 = ((v803 ^ v799 ^ 0xC0A23DA4) - 493491225 - 2 * ((v803 ^ v799 ^ 0xC0A23DA4) & 0x6295EBF7 ^ (v803 ^ v799) & 0x10)) ^ LODWORD(STACK[0x5080]);
  v807 = (v805 + 256692440 - ((2 * v805) & 0x1E99A1B0)) ^ LODWORD(STACK[0x5060]);
  *STACK[0x4788] = 67;
  *STACK[0x4780] = -108;
  *STACK[0x4778] = 6;
  v808 = *(STACK[0xFE70] + 4 * (2717 * BYTE2(v807) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v807) + 22320155)) >> 32) >> 7)));
  v809 = LODWORD(STACK[0x5058]) + 1174498758 - (STACK[0x5088] & 0x8C02DB8C);
  v810 = *(STACK[0xFE70] + 4 * (2717 * HIBYTE(v802) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v802) + 13242658)) >> 32) >> 6))) ^ *(STACK[0xFE70] + 4 * (2717 * BYTE1(v806) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v806) + 11848837)) >> 32) >> 6)));
  *STACK[0x55C0] = -101;
  v811 = *(STACK[0xFE70] + 4 * (2717 * v804 + 4879732 - 8768 * (((1959383 * (2717 * v804 + 4879732)) >> 32) >> 2)));
  v812 = *(STACK[0xFE70] + 4 * (2717 * HIBYTE(v807) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v807) + 13242658)) >> 32) >> 6)));
  *STACK[0x4770] = -109;
  v813 = *(STACK[0xFE70] + 4 * (2717 * BYTE2(v806) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v806) + 22320155)) >> 32) >> 7)));
  *STACK[0x4768] = 26;
  v814 = *(STACK[0xFE70] + 4 * (2717 * BYTE1(v804) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v804) + 11848837)) >> 32) >> 6)));
  LODWORD(v815) = __ROR4__((2717 * HIBYTE(v806) + 13242658) ^ 0x99AF3317, 19) ^ 0xE662F335;
  HIDWORD(v815) = v815;
  v816 = v809 ^ v808 ^ 0x46016DC6 ^ v810 ^ v811;
  v817 = LODWORD(STACK[0x5098]) ^ v812 ^ 0x4658CE5B ^ v813;
  *STACK[0x5040] = -102;
  v818 = *(STACK[0xFE70] + 4 * ((v815 >> 13) % 0x2240));
  v819 = *(STACK[0xFE70] + 4 * (2717 * BYTE2(v804) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v804) + 22320155)) >> 32) >> 7)));
  v820 = *(STACK[0xFE70] + 4 * (2717 * BYTE1(v802) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v802) + 11848837)) >> 32) >> 6)));
  v821 = *(STACK[0xFE70] + 4 * (2717 * v802 + 4879732 - 8768 * (((1959383 * (2717 * v802 + 4879732)) >> 32) >> 2))) ^ v814;
  *STACK[0x4760] = 59;
  *STACK[0x4758] = -42;
  v822 = *(STACK[0xFE70] + 4 * (2717 * v807 + 4879732 - 8768 * (((1959383 * (2717 * v807 + 4879732)) >> 32) >> 2)));
  v823 = STACK[0x5070];
  v824 = STACK[0x50A8];
  v825 = v818 ^ 0xA0E3B11 ^ v819 ^ v820;
  *STACK[0x4750] = 95;
  *STACK[0x4748] = -96;
  v826 = *(STACK[0xFE70] + 4 * (2717 * HIBYTE(v804) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v804) + 13242658)) >> 32) >> 6)));
  v827 = *(STACK[0xFE70] + 4 * (2717 * BYTE2(v802) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v802) + 22320155)) >> 32) >> 7)));
  *STACK[0x4740] = -48;
  v828 = v817 ^ (v821 + 1180225115 - ((2 * v821) & 0x8CB19CB6));
  v829 = (v823 + 168704785 - (v824 & 0x141C7622)) ^ v825 ^ v822;
  v830 = (LODWORD(STACK[0x50A0]) - 1857453081 - ((2 * LODWORD(STACK[0x50A0])) & 0x229307CE)) ^ v826 ^ 0x914983E7 ^ v827 ^ *(STACK[0xFE70] + 4 * (2717 * BYTE1(v807) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v807) + 11848837)) >> 32) >> 6))) ^ *(STACK[0xFE70] + 4 * (2717 * v806 + 4879732 - 8768 * (((1959383 * (2717 * v806 + 4879732)) >> 32) >> 2)));
  *STACK[0x52D8] = -100;
  *STACK[0x5520] = 63;
  *STACK[0x5480] = 102;
  v831 = *(STACK[0xFE70] + 4 * (2717 * HIBYTE(v816) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v816) + 13242658)) >> 32) >> 6)));
  *STACK[0x4EF0] = 77;
  v832 = LODWORD(STACK[0x5090]) + 2104495095 - ((2 * LODWORD(STACK[0x5090])) & 0xFAE017EE);
  v833 = *(STACK[0xFE70] + 4 * (2717 * BYTE2(v828) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v828) + 22320155)) >> 32) >> 7)));
  v834 = *(STACK[0xFE70] + 4 * (2717 * BYTE1(v829) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v829) + 11848837)) >> 32) >> 6)));
  v835 = *(STACK[0xFE70] + 4 * (2717 * v830 + 4879732 - 8768 * (((1959383 * (2717 * v830 + 4879732)) >> 32) >> 2)));
  *STACK[0x4738] = 42;
  v836 = v831 ^ 0x7D700BF7 ^ v833 ^ v834;
  *STACK[0x4F20] = 0;
  v837 = *(STACK[0xFE70] + 4 * (2717 * HIBYTE(v828) + 13233890 - 8768 * (((31350127 * (2717 * HIBYTE(v828) + 13233890)) >> 32) >> 6)));
  v838 = *(STACK[0xFE70] + 4 * (2717 * BYTE2(v829) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v829) + 22320155)) >> 32) >> 7)));
  v839 = *(STACK[0xFE70] + 4 * (2717 * BYTE1(v830) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v830) + 11848837)) >> 32) >> 6)));
  v840 = STACK[0x50B8];
  v841 = STACK[0x5068];
  v842 = *(STACK[0xFE70] + 4 * (2717 * v816 + 4879732 - 8768 * (((1959383 * (2717 * v816 + 4879732)) >> 32) >> 2)));
  v843 = *(STACK[0xFE70] + 4 * (2717 * HIBYTE(v829) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v829) + 13242658)) >> 32) >> 6)));
  v844 = v832 ^ v836 ^ v835;
  *STACK[0x4730] = 52;
  *STACK[0x4728] = 56;
  v845 = *(STACK[0xFE70] + 4 * (2717 * BYTE2(v830) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v830) + 22320155)) >> 32) >> 7)));
  *STACK[0x4720] = 9;
  v846 = (v823 + 642390362 - (v824 & 0x4C9432B4)) ^ 0x264A195A ^ v843 ^ v845 ^ *(STACK[0xFE70] + 4 * (2717 * BYTE1(v816) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v816) + 11848837)) >> 32) >> 6))) ^ *(STACK[0xFE70] + 4 * (2717 * v828 + 4879732 - 8768 * (((1959383 * (2717 * v828 + 4879732)) >> 32) >> 2)));
  *STACK[0x4718] = -48;
  v847 = *(STACK[0xFE70] + 4 * (2717 * HIBYTE(v830) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v830) + 13242658)) >> 32) >> 6))) ^ 0xB2F11D05 ^ *(STACK[0xFE70] + 4 * (2717 * BYTE2(v816) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v816) + 22320155)) >> 32) >> 7))) ^ *(STACK[0xFE70] + 4 * (2717 * BYTE1(v828) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v828) + 11848837)) >> 32) >> 6))) ^ *(STACK[0xFE70] + 4 * (2717 * v829 + 4879732 - 8768 * (((1959383 * (2717 * v829 + 4879732)) >> 32) >> 2)));
  v848 = ((v841 - (v840 & 0xE9BDAF9E) + 1960761295) ^ v837 ^ 0x9C4B4FB6 ^ v838 ^ v839 ^ v842) - 392849287 - ((2 * ((v841 - (v840 & 0xE9BDAF9E) + 1960761295) ^ v837 ^ 0x9C4B4FB6 ^ v838 ^ v839 ^ v842)) & 0xD12B30F2);
  v849 = (LODWORD(STACK[0x50C0]) - 1292821243 - ((2 * LODWORD(STACK[0x50C0])) & 0x65E23A0A)) ^ v847;
  v850 = v846 ^ v841;
  v851 = 2717 * ((v846 ^ v841) >> 8) + 11848837;
  v852 = LODWORD(STACK[0x50B0]) + 1721822921 - ((2 * LODWORD(STACK[0x50B0])) & 0xCD41DD92);
  v853 = 2717 * v844 + 4879732 - 8768 * (((1959383 * (2717 * v844 + 4879732)) >> 32) >> 2);
  v854 = 2717 * BYTE1(v844) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v844) + 11848837)) >> 32) >> 6);
  *STACK[0x4710] = 125;
  v855 = *(STACK[0xFE70] + 4 * (2717 * HIBYTE(v844) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v844) + 13242658)) >> 32) >> 6)));
  v856 = *(STACK[0xFE70] + 4 * (2717 * v849 + 4879732 - 8768 * (((1959383 * (2717 * v849 + 4879732)) >> 32) >> 2)));
  v857 = 2717 * BYTE2(v844) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v844) + 22320155)) >> 32) >> 7);
  v858 = *(STACK[0xFE70] + 4 * (2717 * BYTE2(v848) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v848) + 22320155)) >> 32) >> 7))) ^ 0x66A0EEC9 ^ *(STACK[0xFE70] + 4 * (v851 - 8768 * (((31350127 * v851) >> 32) >> 6)));
  *STACK[0x5188] = -94;
  v859 = STACK[0xFE70];
  v860 = LODWORD(STACK[0x50D0]) ^ (v841 - (v840 & 0xDBC83A4A) + 1843666213) ^ *(v859 + 4 * (2717 * BYTE2(v850) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v850) + 22320155)) >> 32) >> 7))) ^ *(v859 + 4 * (2717 * HIBYTE(v848) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v848) + 13242658)) >> 32) >> 6))) ^ *(v859 + 4 * v853);
  v861 = *(STACK[0xFE70] + 4 * (2717 * BYTE1(v849) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v849) + 11848837)) >> 32) >> 6))) ^ 0x889EAC54;
  v862 = v852 ^ v858 ^ v855 ^ v856;
  v863 = *(STACK[0xFE70] + 4 * v854);
  v864 = STACK[0x50C8];
  v865 = *(v859 + 4 * (2717 * HIBYTE(v850) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v850) + 13242658)) >> 32) >> 6))) ^ v863 ^ *(v859 + 4 * (2717 * BYTE2(v849) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v849) + 22320155)) >> 32) >> 7))) ^ *(v859 + 4 * (2717 * v848 + 4879732 - 8768 * (((1959383 * (2717 * v848 + 4879732)) >> 32) >> 2)));
  v866 = *(v859 + 4 * (2717 * HIBYTE(v849) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v849) + 13242658)) >> 32) >> 6))) ^ *(v859 + 4 * v857);
  *STACK[0x5020] = -123;
  v867 = STACK[0xFE70];
  v868 = *(STACK[0xFE70] + 4 * (2717 * BYTE1(v848) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v848) + 11848837)) >> 32) >> 6)));
  v869 = v860 ^ v861;
  v870 = (((v866 ^ 0xD034CEC2) - 497307384) ^ ((v866 ^ 0x206A4089) + 302333773) ^ ((v866 ^ 0xF05E8E4B) - 1036914289)) - 2 * ((v868 ^ 0x4CC564F1) & v866) + (((v868 ^ 0xA4DE420D) + 1528937971) ^ ((v868 ^ 0x7FA594AC) - 2141557932) ^ ((v868 ^ 0x97BEB250) + 1749110192)) + 1212328746;
  v871 = (v864 - ((2 * v864) & 0x297F140A) + 348097029) ^ v865 ^ 0x14BF8A05;
  v872 = LODWORD(STACK[0x50E8]) - ((2 * LODWORD(STACK[0x50E8])) & 0x2F22D2D8) - 1752077972;
  *STACK[0x4708] = 24;
  v873 = *(v867 + 4 * (2717 * v850 + 4879732 - 8768 * (((1959383 * (2717 * v850 + 4879732)) >> 32) >> 2))) ^ v872 ^ v870 ^ ((v870 ^ 0x2A22A172) - 130966669) ^ ((v870 ^ 0x3ADB3E74) - 389544843) ^ ((v870 ^ 0x2E0B906) - 789347577) ^ ((v870 ^ 0x3FF5E3FF) - 303638016);
  v874 = v873 ^ 0xF6B8C862;
  v875 = 2717 * ((v873 ^ 0x766) + ((2 * v873) & 8));
  v876 = LODWORD(STACK[0x50E0]) + 775381056 - ((2 * LODWORD(STACK[0x50E0])) & 0x5C6EC080);
  *STACK[0x4700] = -77;
  *STACK[0x46F8] = -32;
  v877 = v876 ^ *(v867 + 4 * (2717 * HIBYTE(v862) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v862) + 13242658)) >> 32) >> 6))) ^ 0x2E376040 ^ *(v867 + 4 * (2717 * BYTE2(v869) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v869) + 22320155)) >> 32) >> 7))) ^ *(v867 + 4 * (2717 * BYTE1(v871) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v871) + 11848837)) >> 32) >> 6))) ^ *(v867 + 4 * (v875 - 8768 * (((1959383 * v875) >> 32) >> 2)));
  v878 = *(v867 + 4 * (2717 * HIBYTE(v869) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v869) + 13242658)) >> 32) >> 6)));
  *STACK[0x5158] = 98;
  v879 = *(v867 + 4 * (2717 * BYTE2(v871) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v871) + 22320155)) >> 32) >> 7))) ^ v878;
  *STACK[0x46F0] = 78;
  v880 = 2717 * (((v874 >> 15) & 0x2E) + (BYTE2(v874) ^ 0x2017));
  v881 = *(v867 + 4 * (v880 - 8768 * (((31350127 * v880) >> 32) >> 6)));
  v882 = *(v867 + 4 * (2717 * BYTE1(v862) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v862) + 11848837)) >> 32) >> 6)));
  v883 = *(v867 + 4 * (2717 * HIBYTE(v871) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v871) + 13242658)) >> 32) >> 6)));
  LODWORD(v867) = v879 ^ *(v867 + 4 * (2717 * v862 + 4879732 - 8768 * (((1959383 * (2717 * v862 + 4879732)) >> 32) >> 2))) ^ LODWORD(STACK[0x50D8]) ^ *(v867 + 4 * (2717 * BYTE1(v874) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v874) + 11848837)) >> 32) >> 6)));
  v884 = (BYTE2(v862) ^ 0x2017) + ((v862 >> 15) & 0x2E);
  v885 = LODWORD(STACK[0x50D8]) ^ v864;
  v886 = STACK[0x50D8];
  *STACK[0x4418] = -113;
  v887 = (v885 - 253331379 - ((2 * v885) & 0xE1CCF09A)) ^ 0xF0E6784D ^ v882 ^ v883 ^ *(STACK[0xFE70] + 4 * (2717 * v869 + 4879732 - 8768 * (((1959383 * (2717 * v869 + 4879732)) >> 32) >> 2))) ^ v881;
  v888 = *(STACK[0xFE70] + 4 * (2717 * HIBYTE(v874) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v874) + 13242658)) >> 32) >> 6)));
  v889 = 2717 * v884 - 8768 * (((31350127 * (2717 * v884)) >> 32) >> 6);
  v890 = 2717 * BYTE1(v869) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v869) + 11848837)) >> 32) >> 6);
  v891 = LODWORD(STACK[0x50F0]) + 2091142440 - ((2 * LODWORD(STACK[0x50F0])) & 0xF9489A50);
  *STACK[0x5198] = 35;
  v892 = STACK[0xFE70];
  v893 = v891 ^ 0x7CA44D28 ^ v888 ^ *(v892 + 4 * v889) ^ *(v892 + 4 * v890) ^ *(v892 + 4 * (2717 * v871 + 4879732 - 8768 * (((1959383 * (2717 * v871 + 4879732)) >> 32) >> 2)));
  v894 = *(v892 + 4 * (2717 * HIBYTE(v877) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v877) + 13242658)) >> 32) >> 6))) ^ *(v892 + 4 * (2717 * BYTE2(v867) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v867) + 22320155)) >> 32) >> 7)));
  *STACK[0x4410] = 21;
  v895 = v894 ^ *(STACK[0xFE70] + 4 * (2717 * BYTE1(v887) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v887) + 11848837)) >> 32) >> 6)));
  v896 = *(STACK[0xFE70] + 4 * (2717 * v893 + 4879732 - 8768 * (((1959383 * (2717 * v893 + 4879732)) >> 32) >> 2)));
  *STACK[0x4408] = -60;
  v897 = *(STACK[0xFE70] + 4 * (2717 * BYTE2(v887) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v887) + 22320155)) >> 32) >> 7)));
  v898 = *(STACK[0xFE70] + 4 * (2717 * BYTE3(v867) + 13242658 - 8768 * (((31350127 * (2717 * BYTE3(v867) + 13242658)) >> 32) >> 6)));
  *STACK[0x53B8] = -55;
  LODWORD(v859) = *(STACK[0xFE70] + 4 * (2717 * v877 + 4879732 - 8768 * (((1959383 * (2717 * v877 + 4879732)) >> 32) >> 2)));
  v899 = *(STACK[0xFE70] + 4 * (2717 * BYTE1(v893) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v893) + 11848837)) >> 32) >> 6)));
  *STACK[0x4F38] = -58;
  v900 = STACK[0x50F8];
  v901 = (v886 + 1806543034 - ((2 * v886) & 0xD75B5174)) ^ 0x6BADA8BA ^ LODWORD(STACK[0x50F8]) ^ v898 ^ v897;
  v902 = v859 ^ v899;
  v903 = *(STACK[0xFE70] + 4 * (2717 * BYTE1(v877) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v877) + 11848837)) >> 32) >> 6)));
  v904 = *(STACK[0xFE70] + 4 * (2717 * BYTE2(v893) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v893) + 22320155)) >> 32) >> 7)));
  v905 = v901 ^ v902;
  v906 = STACK[0x5100];
  v907 = (v906 + 2127795466 - ((2 * v906) & 0xFDA72A14)) ^ *(STACK[0xFE70] + 4 * (2717 * HIBYTE(v887) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v887) + 13242658)) >> 32) >> 6))) ^ 0x7ED3950A;
  *STACK[0x4400] = -21;
  v908 = v907 ^ v903 ^ v904 ^ *(STACK[0xFE70] + 4 * (2717 * v867 + 4879732 - 8768 * (((1959383 * (2717 * v867 + 4879732)) >> 32) >> 2)));
  v909 = *(STACK[0xFE70] + 4 * (2717 * BYTE2(v877) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v877) + 22320155)) >> 32) >> 7)));
  v910 = *(STACK[0xFE70] + 4 * (2717 * HIBYTE(v893) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v893) + 13242658)) >> 32) >> 6)));
  v911 = *(STACK[0xFE70] + 4 * (2717 * v887 + 4879732 - 8768 * (((1959383 * (2717 * v887 + 4879732)) >> 32) >> 2)));
  LODWORD(v867) = *(STACK[0xFE70] + 4 * (2717 * BYTE1(v867) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v867) + 11848837)) >> 32) >> 6)));
  *STACK[0x43F8] = 13;
  v912 = (LODWORD(STACK[0x5118]) + 964492088 - ((2 * LODWORD(STACK[0x5118])) & 0x72F9F670)) ^ v909 ^ 0x397CFB38 ^ v910;
  v913 = ((((v895 ^ 0xAF029AAB) - 381167197) ^ ((v895 ^ 0x719BB1D2) + 937358044) ^ ((v895 ^ 0x925C4F88) - 736555902)) + (((v896 ^ 0xD1A59E05) + 777675259) ^ ((v896 ^ 0x41C32012) - 1103306770) ^ ((v896 ^ 0xDCA3DAE6) + 593241370)) + ((2 * ((v896 ^ 0x3BDDA089) & (v895 ^ 0x4CC564F1) ^ v895 & 0x7718C478)) ^ 0x77FF771F) + 1111833849) ^ v900;
  LODWORD(v867) = v912 ^ v911 ^ v867;
  *STACK[0x5340] = -118;
  *STACK[0x56C0] = 91;
  v914 = *(STACK[0xFE70] + 4 * (2717 * BYTE2(v905) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v905) + 22320155)) >> 32) >> 7)));
  LODWORD(v892) = *(STACK[0xFE70] + 4 * (2717 * HIBYTE(v913) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v913) + 13242658)) >> 32) >> 6)));
  v915 = *(STACK[0xFE70] + 4 * (2717 * BYTE1(v908) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v908) + 11848837)) >> 32) >> 6)));
  *STACK[0x57C0] = -20;
  v916 = *(STACK[0xFE70] + 4 * (2717 * v867 + 4879732 - 8768 * (((1959383 * (2717 * v867 + 4879732)) >> 32) >> 2)));
  v917 = (LODWORD(STACK[0x5110]) + 1716760777 - ((2 * LODWORD(STACK[0x5110])) & 0xCCA76192)) ^ 0x6653B0C9 ^ v914;
  *STACK[0x52B8] = -92;
  LODWORD(v892) = v917 ^ v915 ^ v916 ^ v892;
  *STACK[0x5338] = 76;
  v918 = STACK[0xFE70];
  v919 = LODWORD(STACK[0x5108]) ^ v906;
  v920 = LODWORD(STACK[0x5108]) - 1192214232 - ((2 * LODWORD(STACK[0x5108])) & 0x71E08250);
  v921 = *(v918 + 4 * (2717 * BYTE2(v908) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v908) + 22320155)) >> 32) >> 7))) ^ 0xB8F04128 ^ *(v918 + 4 * (2717 * BYTE1(v867) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v867) + 11848837)) >> 32) >> 6))) ^ *(v918 + 4 * (2717 * HIBYTE(v905) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v905) + 13242658)) >> 32) >> 6)));
  v922 = *(STACK[0xFE70] + 4 * (2717 * v913 + 4879732 - 8768 * (((1959383 * (2717 * v913 + 4879732)) >> 32) >> 2)));
  v923 = *(STACK[0xFE70] + 4 * (2717 * HIBYTE(v908) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v908) + 13242658)) >> 32) >> 6)));
  v924 = *(STACK[0xFE70] + 4 * (2717 * BYTE1(v913) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v913) + 11848837)) >> 32) >> 6)));
  v925 = *(STACK[0xFE70] + 4 * (2717 * BYTE2(v867) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v867) + 22320155)) >> 32) >> 7)));
  v926 = ((v892 | 0x4BFE5907) - v892) ^ (v892 | 0x4BFE5907);
  *STACK[0x5318] = -40;
  v927 = (v919 + 1698643672 - ((2 * v919) & 0xCA7E7DB0)) ^ v923 ^ 0x653F3ED8 ^ v925 ^ *(STACK[0xFE70] + 4 * (2717 * v905 + 4879732 - 8768 * (((1959383 * (2717 * v905 + 4879732)) >> 32) >> 2)));
  *STACK[0x43F0] = -108;
  v928 = *(STACK[0xFE70] + 4 * (2717 * BYTE2(v913) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v913) + 22320155)) >> 32) >> 7)));
  LODWORD(v867) = *(STACK[0xFE70] + 4 * (2717 * BYTE3(v867) + 13242658 - 8768 * (((31350127 * (2717 * BYTE3(v867) + 13242658)) >> 32) >> 6)));
  v929 = *(STACK[0xFE70] + 4 * (2717 * BYTE1(v905) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v905) + 11848837)) >> 32) >> 6)));
  LODWORD(v892) = v920 ^ v921 ^ v922;
  *STACK[0x43E8] = 123;
  v930 = v927 ^ v924;
  v931 = (LODWORD(STACK[0x5370]) - 1345324690 - ((2 * LODWORD(STACK[0x5370])) & 0x5F9FF2DC)) ^ 0xAFCFF96E ^ v867 ^ v929 ^ v928 ^ *(STACK[0xFE70] + 4 * (2717 * v908 + 4870964 - 8768 * (((1959383 * (2717 * v908 + 4870964)) >> 32) >> 2)));
  *STACK[0x5148] = 41;
  v932 = LODWORD(STACK[0x5120]) - 1287479935 - (STACK[0x5138] & 0x66853B02);
  *STACK[0x43E0] = -12;
  v933 = v932 ^ 0xB3429D81 ^ *(STACK[0xFE70] + 4 * (2717 * BYTE2(v892) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v892) + 22320155)) >> 32) >> 7)));
  v934 = *(STACK[0xFE70] + 4 * (2717 * HIBYTE(v926) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v926) + 13242658)) >> 32) >> 6)));
  v935 = *(STACK[0xFE70] + 4 * (2717 * BYTE1(v930) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v930) + 11848837)) >> 32) >> 6)));
  v936 = *(STACK[0xFE70] + 4 * (2717 * v926 + 4879732 - 8768 * (((1959383 * (2717 * v926 + 4879732)) >> 32) >> 2)));
  LODWORD(v867) = *(STACK[0xFE70] + 4 * (2717 * v931 + 4879732 - 8768 * (((1959383 * (2717 * v931 + 4879732)) >> 32) >> 2)));
  v937 = *(STACK[0xFE70] + 4 * (2717 * BYTE2(v930) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v930) + 22320155)) >> 32) >> 7)));
  v938 = *(STACK[0xFE70] + 4 * (2717 * BYTE1(v931) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v931) + 11848837)) >> 32) >> 6)));
  v939 = (LODWORD(STACK[0x5130]) - 308605156 + (~(2 * LODWORD(STACK[0x5130])) | 0x24C9E1C7) + 1) ^ 0xED9B0F1C ^ *(STACK[0xFE70] + 4 * (2717 * BYTE3(v892) + 13242658 - 8768 * (((31350127 * (2717 * BYTE3(v892) + 13242658)) >> 32) >> 6)));
  *STACK[0x5700] = -22;
  *STACK[0x43D8] = 33;
  *STACK[0x5580] = -28;
  LODWORD(v918) = *(STACK[0xFE70] + 4 * (2717 * HIBYTE(v930) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v930) + 13242658)) >> 32) >> 6)));
  *STACK[0x52E0] = 83;
  v940 = *(STACK[0xFE70] + 4 * (2717 * BYTE2(v931) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v931) + 22320155)) >> 32) >> 7)));
  *STACK[0x43D0] = -22;
  v941 = v937 ^ v938;
  v942 = v933 ^ v935 ^ v867 ^ v934;
  LODWORD(v867) = v939 ^ v936 ^ v941;
  v943 = STACK[0x5128];
  v944 = (v943 + 2009411070 - ((2 * v943) & 0xEF8A5BFC)) ^ 0x77C52DFE ^ v918 ^ v940 ^ *(STACK[0xFE70] + 4 * (2717 * v892 + 4879732 - 8768 * (((1959383 * (2717 * v892 + 4879732)) >> 32) >> 2))) ^ *(STACK[0xFE70] + 4 * (2717 * BYTE1(v926) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v926) + 11848837)) >> 32) >> 6)));
  v945 = 2717 * BYTE2(v926) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v926) + 22320155)) >> 32) >> 7);
  v946 = 2717 * BYTE1(v892) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v892) + 11848837)) >> 32) >> 6);
  LODWORD(v892) = 2717 * v930 + 4879732 - 8768 * (((1959383 * (2717 * v930 + 4879732)) >> 32) >> 2);
  *STACK[0x43C8] = -99;
  *STACK[0x55B0] = 40;
  v947 = STACK[0xFE70];
  v948 = (LODWORD(STACK[0x51B0]) - 2100916492 - ((2 * LODWORD(STACK[0x51B0])) & 0x58D1DE8)) ^ 0x82C68EF4 ^ *(v947 + 4 * v892) ^ *(v947 + 4 * v945) ^ *(v947 + 4 * (2717 * HIBYTE(v931) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v931) + 13242658)) >> 32) >> 6))) ^ *(v947 + 4 * v946);
  v949 = LODWORD(STACK[0x5160]) + 1423613862 - 2 * (STACK[0x5160] & 0x54DA9FBE ^ STACK[0x51C0] & 0x18);
  v950 = 2717 * ((v948 ^ 0x704) + ((2 * v948) & 8));
  *STACK[0x43C0] = 18;
  LODWORD(v947) = *(STACK[0xFE70] + 4 * (2717 * BYTE2(v867) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v867) + 22320155)) >> 32) >> 7)));
  v951 = *(STACK[0xFE70] + 4 * (2717 * HIBYTE(v942) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v942) + 13242658)) >> 32) >> 6)));
  v952 = *(STACK[0xFE70] + 4 * (2717 * BYTE1(v944) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v944) + 11848837)) >> 32) >> 6)));
  v953 = *(STACK[0xFE70] + 4 * (2717 * BYTE1(v948) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v948) + 11848837)) >> 32) >> 6)));
  v954 = *(STACK[0xFE70] + 4 * (2717 * BYTE2(v944) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v944) + 22320155)) >> 32) >> 7)));
  v955 = *(STACK[0xFE70] + 4 * (v950 - 8768 * (((1959383 * v950) >> 32) >> 2)));
  LODWORD(v892) = *(STACK[0xFE70] + 4 * (2717 * BYTE3(v867) + 13242658 - 8768 * (((31350127 * (2717 * BYTE3(v867) + 13242658)) >> 32) >> 6)));
  *STACK[0x43B8] = -53;
  v956 = v955 ^ 0x54DA9FA6 ^ v947;
  LODWORD(v947) = v954 ^ v953 ^ v892;
  v957 = v956 ^ v951;
  v958 = STACK[0xFE70];
  v959 = *(STACK[0xFE70] + 4 * (2717 * v942 + 4879732 - 8768 * (((1959383 * (2717 * v942 + 4879732)) >> 32) >> 2)));
  v960 = (v959 ^ 0xE23F4D77) + 499167881;
  LODWORD(v918) = v957 ^ v952;
  v961 = (v959 ^ 0x7EBCE762) - 2126309218;
  v962 = (v959 ^ 0xD046CEE4) + 800665884;
  v963 = ((v947 ^ 0xA158A61B) - 1073575820) ^ ((v947 ^ 0x8B1E3DA7) - 364637232) ^ ((v947 ^ 0x6683FF4D) + 131715366);
  LODWORD(v947) = (v959 ^ 0x4CC564F1) & (v947 ^ 0x4D2D3813) ^ v959 & 0x1E85CE2;
  v964 = v949 ^ v918;
  v965 = STACK[0x5220];
  v966 = 2717 * BYTE2(v942) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v942) + 22320155)) >> 32) >> 7);
  v967 = v943 ^ 0xF073BAC3 ^ *(v958 + 4 * (2717 * HIBYTE(v944) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v944) + 13242658)) >> 32) >> 6))) ^ *(v958 + 4 * (2717 * BYTE2(v948) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v948) + 22320155)) >> 32) >> 7))) ^ *(v958 + 4 * (2717 * BYTE1(v942) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v942) + 11848837)) >> 32) >> 6))) ^ *(v958 + 4 * (2717 * v867 + 4879732 - 8768 * (((1959383 * (2717 * v867 + 4879732)) >> 32) >> 2))) ^ (v965 - 260851005 - ((2 * v965) & 0xE0E77586));
  v968 = *(STACK[0xFE70] + 4 * (2717 * HIBYTE(v948) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v948) + 13242658)) >> 32) >> 6)));
  v969 = *(STACK[0xFE70] + 4 * v966);
  *STACK[0x4F30] = 8;
  v970 = (LODWORD(STACK[0x51C8]) + 919518236 - ((2 * LODWORD(STACK[0x51C8])) & 0x6D9D7838)) ^ v968 ^ 0x36CEBC1C ^ v969 ^ *(STACK[0xFE70] + 4 * (2717 * BYTE1(v867) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v867) + 11848837)) >> 32) >> 6))) ^ *(STACK[0xFE70] + 4 * (2717 * v944 + 4879732 - 8768 * (((1959383 * (2717 * v944 + 4879732)) >> 32) >> 2)));
  v971 = STACK[0x5378];
  v972 = ((v960 ^ v961 ^ v962) + 522587967 + v963 + ((2 * v947) ^ 0xFE7F763F) + 2841) ^ v965;
  v973 = v971 + 859832793 - 2 * (v971 & 0x334001F9 ^ STACK[0x5250] & 0x20);
  *STACK[0x43B0] = 15;
  LODWORD(v958) = *(STACK[0xFE70] + 4 * (2717 * BYTE1(v967) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v967) + 11848837)) >> 32) >> 6)));
  LODWORD(v867) = *(STACK[0xFE70] + 4 * (((10868 * BYTE2(v967) + 89280620) >> 2) - 8768 * (((31350127 * ((10868 * BYTE2(v967) + 89280620) >> 2)) >> 32) >> 6)));
  v974 = *(STACK[0xFE70] + 4 * (2717 * HIBYTE(v972) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v972) + 13242658)) >> 32) >> 6)));
  LODWORD(v947) = *(STACK[0xFE70] + 4 * (2717 * HIBYTE(v964) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v964) + 13242658)) >> 32) >> 6))) ^ 0x334001D9 ^ *(STACK[0xFE70] + 4 * (2717 * BYTE2(v972) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v972) + 22320155)) >> 32) >> 7))) ^ *(STACK[0xFE70] + 4 * (2717 * v970 + 4879732 - 8768 * (((1959383 * (2717 * v970 + 4879732)) >> 32) >> 2)));
  *STACK[0x43A8] = 33;
  v975 = *(STACK[0xFE70] + 4 * (2717 * BYTE1(v970) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v970) + 11848837)) >> 32) >> 6)));
  v976 = *(STACK[0xFE70] + 4 * (2717 * HIBYTE(v967) + 13242658 - 8768 * (((31350127 * (2717 * HIBYTE(v967) + 13242658)) >> 32) >> 6)));
  v977 = *(STACK[0xFE70] + 4 * (2717 * v964 + 4879732 - 8768 * (((1959383 * (2717 * v964 + 4879732)) >> 32) >> 2)));
  LODWORD(v958) = v947 ^ v958;
  *STACK[0x4FF0] = -101;
  LODWORD(v947) = v965 ^ 0x5F3A2A26 ^ v867 ^ v974 ^ v975 ^ (v971 + 1597647398 - ((2 * v971) & 0xBE74544C));
  LODWORD(v867) = v973 ^ v958;
  v978 = STACK[0x5270];
  v979 = v976 ^ 0x2B3416F0 ^ *(STACK[0xFE70] + 4 * (2717 * BYTE2(v970) + 22311387 - 8768 * (((31350127 * (2717 * BYTE2(v970) + 22311387)) >> 32) >> 6)));
  HIDWORD(v815) = HIBYTE(v970) + 4874;
  LODWORD(v815) = HIDWORD(v815);
  v980 = *(STACK[0xFE70] + 4 * (2717 * BYTE1(v964) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v964) + 11848837)) >> 32) >> 6)));
  LODWORD(v918) = *(STACK[0xFE70] + 4 * (2717 * v972 + 4879732 - 8768 * (((1959383 * (2717 * v972 + 4879732)) >> 32) >> 2)));
  v981 = *(STACK[0xFE70] + 4 * (2717 * ((v815 >> 19) >> 13) % 0x2240));
  v982 = *(STACK[0xFE70] + 4 * (2717 * BYTE2(v964) + 22320155 - 8768 * (((62700253 * (2717 * BYTE2(v964) + 22320155)) >> 32) >> 7)));
  v983 = v947 ^ v977;
  *STACK[0x43A0] = 86;
  *STACK[0x4398] = 111;
  v984 = *(STACK[0xFE70] + 4 * (2717 * BYTE1(v972) + 11848837 - 8768 * (((31350127 * (2717 * BYTE1(v972) + 11848837)) >> 32) >> 6)));
  v985 = *(STACK[0xFE70] + 4 * (2717 * v967 + 4879732 - 8768 * (((1959383 * (2717 * v967 + 4879732)) >> 32) >> 2)));
  *STACK[0x4390] = 27;
  v986 = v981 ^ v982 ^ (LODWORD(STACK[0x5278]) - 1070306122 - ((2 * LODWORD(STACK[0x5278])) & 0x8068D96C)) ^ v984 ^ v985;
  LODWORD(v947) = (v978 + 724834032 - ((2 * v978) & 0x56682DE0)) ^ v979 ^ v980 ^ v918;
  v987 = v986 ^ 0xC0346CB6;
  *STACK[0x4388] = 50;
  *STACK[0x4380] = 101;
  v988 = HIBYTE(v986) & 0xF | (16 * (((v986 ^ 0xC0346CB6) >> 28) & 0xE | (v986 >> 28) & 1));
  LODWORD(STACK[0x52F8]) = *(STACK[0xFE70] + 4 * (2717 * ((v973 ^ v958) >> 24) + 20222631 - 8768 * (((62700253 * (2717 * ((v973 ^ v958) >> 24) + 20222631)) >> 32) >> 7)));
  *STACK[0x4EF8] = -8;
  v989 = *(STACK[0xFE70] + 4 * (2717 * BYTE2(v983) + 698269 - 8768 * (((1959383 * (2717 * BYTE2(v983) + 698269)) >> 32) >> 2)));
  v990 = *(STACK[0xFE70] + 4 * (2717 * BYTE1(v947) + 6969105 - 8768 * (((1959383 * (2717 * BYTE1(v947) + 6969105)) >> 32) >> 2)));
  v991 = *(STACK[0xFE70] + 4 * (2717 * (v986 ^ 0xB6) + 9058478 - 8768 * (((31350127 * (2717 * (v986 ^ 0xB6u) + 9058478)) >> 32) >> 6)));
  *STACK[0x4378] = -55;
  *STACK[0x5228] = 83;
  v992 = 2717 * BYTE2(v987) + 698269 - 8768 * (((1959383 * (2717 * BYTE2(v987) + 698269)) >> 32) >> 2);
  v993 = *(STACK[0xFE70] + 4 * (2717 * HIBYTE(v983) + 20222631 - 8768 * (((62700253 * (2717 * HIBYTE(v983) + 20222631)) >> 32) >> 7)));
  *STACK[0x4370] = -71;
  v994 = *(STACK[0xFE70] + 4 * (2717 * (v973 ^ v958) + 9058478 - 8768 * (((31350127 * (2717 * (v973 ^ v958) + 9058478)) >> 32) >> 6)));
  v995 = *(STACK[0xFE70] + 4 * (2717 * BYTE1(v987) + 6969105 - 8768 * (((1959383 * (2717 * BYTE1(v987) + 6969105)) >> 32) >> 2)));
  v996 = *(STACK[0xFE70] + 4 * v992);
  v997 = *(STACK[0xFE70] + 4 * (2717 * v983 + 9058478 - 8768 * (((31350127 * (2717 * v983 + 9058478)) >> 32) >> 6)));
  LODWORD(v815) = __ROR4__(*(STACK[0xFE70] + 4 * (2717 * BYTE2(v947) + 698269 - 8768 * (((1959383 * (2717 * BYTE2(v947) + 698269)) >> 32) >> 2))), 21);
  v998 = (v978 - ((2 * v978) & 0x1828C826) + 202662931) ^ *(STACK[0xFE70] + 4 * (2717 * BYTE3(v947) + 20222631 - 8768 * (((62700253 * (2717 * BYTE3(v947) + 20222631)) >> 32) >> 7)));
  v999 = STACK[0x5288];
  LODWORD(v958) = LODWORD(STACK[0x5288]) ^ LODWORD(STACK[0x5280]) ^ 0x3431C686;
  v1000 = v958 ^ v965 ^ v998 ^ *(STACK[0xFE70] + 4 * (2717 * BYTE1(v867) + 6969105 - 8768 * (((1959383 * (2717 * BYTE1(v867) + 6969105)) >> 32) >> 2)));
  *STACK[0x5038] = 63;
  *STACK[0x4368] = 5;
  v1001 = v1000 ^ v996 ^ v997;
  v1002 = LODWORD(STACK[0x5370]) ^ 0xC11BCC6A ^ *(STACK[0xFE70] + 4 * (2717 * BYTE1(v983) + 6969105 - 8768 * (((1959383 * (2717 * BYTE1(v983) + 6969105)) >> 32) >> 2))) ^ (v958 - 1055142806 - 2 * (v958 & 0x411BCC7A ^ v999 & 0x10)) ^ *(STACK[0xFE70] + 4 * (2717 * BYTE2(v867) + 698269 - 8768 * (((1959383 * (2717 * BYTE2(v867) + 698269)) >> 32) >> 2))) ^ *(STACK[0xFE70] + 4 * (2717 * v947 + 9058478 - 8768 * (((31350127 * (2717 * v947 + 9058478)) >> 32) >> 6))) ^ *(STACK[0xFE70] + 4 * (2717 * v988 + 20222631 - 8768 * (((62700253 * (2717 * v988 + 20222631)) >> 32) >> 7)));
  v1003 = STACK[0x5300];
  *STACK[0x5260] = -91;
  *(STACK[0xC0F8] + v1003 + 11 - 32) = *(STACK[0xFE78] + 3903 * (v1001 ^ 0x13) + 19639896 - 5896 * (((93242167 * (3903 * (v1001 ^ 0x13u) + 19639896)) >> 32) >> 7)) - 28;
  v1004 = v993 ^ v994 ^ v958 ^ v965 ^ __ROR4__(v815 ^ 0x5C896AA7, 11) ^ v995;
  *(STACK[0xC0F8] + v1003 + 15 - 32) = *(STACK[0xFE78] + 3903 * v1002 + 19639896 - 5896 * (((93242167 * (3903 * v1002 + 19639896)) >> 32) >> 7)) - 28;
  *(STACK[0xC0F8] + v1003 + 4 - 32) = *(STACK[0xFE78] + 3903 * (HIBYTE(v1004) ^ 0x54) + 15065580 - 5896 * (((11655271 * (3903 * (HIBYTE(v1004) ^ 0x54) + 15065580)) >> 32) >> 4)) - 28;
  v1005 = v958 ^ LODWORD(STACK[0x5378]) ^ LODWORD(STACK[0x52F8]) ^ v989 ^ v990 ^ v991;
  *STACK[0x4360] = -4;
  *(STACK[0xC0F8] + v1003 + 8 - 32) = *(STACK[0xFE78] + 3903 * (HIBYTE(v1001) ^ 0xC) + 15065580 - 5896 * (((11655271 * (3903 * (HIBYTE(v1001) ^ 0xC) + 15065580)) >> 32) >> 4)) - 28;
  *(STACK[0xC0F8] + v1003 + 14 - 32) = *(STACK[0xFE78] + 3903 * BYTE1(v1002) + 5011452 - 5896 * (((11655271 * (3903 * BYTE1(v1002) + 5011452)) >> 32) >> 4)) - 28;
  *(STACK[0xC0F8] + v1003 + 1 - 32) = *(STACK[0xFE78] + 3903 * BYTE2(v1005) + 16068651 - 5896 * (((11655271 * (3903 * BYTE2(v1005) + 16068651)) >> 32) >> 4)) - 28;
  *STACK[0x5308] = 111;
  *(STACK[0xC0F8] + v1003 + 12 - 32) = *(STACK[0xFE78] + 3903 * HIBYTE(v1002) + 15065580 - 5896 * (((11655271 * (3903 * HIBYTE(v1002) + 15065580)) >> 32) >> 4)) - 28;
  *STACK[0x4358] = -30;
  *(STACK[0xC0F8] + v1003 + 13 - 32) = *(STACK[0xFE78] + 3903 * BYTE2(v1002) + 16068651 - 5896 * (((11655271 * (3903 * BYTE2(v1002) + 16068651)) >> 32) >> 4)) - 28;
  *STACK[0x4350] = -80;
  LOBYTE(v973) = *(STACK[0xFE78] + 3903 * (BYTE2(v1004) ^ 0xEB) + 16068651 - 5896 * (((11655271 * (3903 * (BYTE2(v1004) ^ 0xEBu) + 16068651)) >> 32) >> 4));
  *STACK[0x4348] = -40;
  *(STACK[0xC0F8] + v1003 + 5 - 32) = v973 - 28;
  *(STACK[0xC0F8] + v1003 - 32) = *(STACK[0xFE78] + 3903 * HIBYTE(v1005) + 15065580 - 5896 * (((11655271 * (3903 * HIBYTE(v1005) + 15065580)) >> 32) >> 4)) - 28;
  *STACK[0x4F18] = -18;
  v1006 = 3903 * (((2 * v1005) & 0x150) + (v1005 ^ 0x13A8));
  *(STACK[0xC0F8] + v1003 + 9 - 32) = *(STACK[0xFE78] + 3903 * (BYTE2(v1001) ^ 0x14) + 16068651 - 5896 * (((11655271 * (3903 * (BYTE2(v1001) ^ 0x14u) + 16068651)) >> 32) >> 4)) - 28;
  *(STACK[0xC0F8] + v1003 + 3 - 32) = *(STACK[0xFE78] + v1006 - 5896 * (((11655271 * v1006) >> 32) >> 4)) - 28;
  *STACK[0x5210] = -82;
  *(STACK[0xC0F8] + v1003 + 7 - 32) = *(STACK[0xFE78] + 3903 * (v1004 ^ 0x2D) + 19639896 - 5896 * (((93242167 * (3903 * (v1004 ^ 0x2Du) + 19639896)) >> 32) >> 7)) - 28;
  *(STACK[0xC0F8] + v1003 + 10 - 32) = *(STACK[0xFE78] + 3903 * (BYTE1(v1001) ^ 0x64) + 5011452 - 5896 * (((11655271 * (3903 * (BYTE1(v1001) ^ 0x64u) + 5011452)) >> 32) >> 4)) - 28;
  *(STACK[0xC0F8] + v1003 + 2 - 32) = *(STACK[0xFE78] + 3903 * BYTE1(v1005) + 5011452 - 5896 * (((11655271 * (3903 * BYTE1(v1005) + 5011452)) >> 32) >> 4)) - 28;
  v284 = v1003 + 16 >= LODWORD(STACK[0x94C4]);
  *(STACK[0xC0F8] + v1003 + 6 - 32) = *(STACK[0xFE78] + 3903 * (BYTE1(v1004) ^ 0x91) + 5011452 - 5896 * (((11655271 * (3903 * (BYTE1(v1004) ^ 0x91u) + 5011452)) >> 32) >> 4)) - 28;
  v1007 = !v284;
  LODWORD(STACK[0x5650]) += 62448;
  LODWORD(STACK[0x5388]) += 62448;
  LODWORD(STACK[0x5720]) += 62448;
  LODWORD(STACK[0x5530]) += 62448;
  LODWORD(STACK[0x5390]) += 62448;
  LODWORD(STACK[0x54D0]) += 62448;
  LODWORD(STACK[0x5550]) += 62448;
  LODWORD(STACK[0x5398]) += 62448;
  LODWORD(STACK[0x53A0]) += 62448;
  LODWORD(STACK[0x54C0]) += 62448;
  LODWORD(STACK[0x54B0]) += 62448;
  LODWORD(STACK[0x53A8]) += 62448;
  LODWORD(STACK[0x55A0]) += 62448;
  LODWORD(STACK[0x53E8]) += 62448;
  LODWORD(STACK[0x53F0]) += 62448;
  LODWORD(STACK[0x5490]) += 62448;
  return (*(STACK[0x57D8] + 8 * ((7 * v1007) ^ LODWORD(STACK[0x5140]))))();
}

uint64_t sub_100A5235C@<X0>(int a1@<W0>, char a2@<W8>)
{
  v9 = v3 - 1;
  STACK[0xA70] = v9;
  *(v4 + v9) = (a2 ^ v5) * (a2 + 17);
  return (*(v8 + 8 * (((STACK[0xA70] == 0) * (((a1 + v2 + 714) | v6) ^ (v7 - 3012))) ^ v2)))();
}

uint64_t sub_100A523D0()
{
  v1 = STACK[0x800];
  STACK[0xA48] = STACK[0x800];
  STACK[0x760] = v1;
  return (*(v0 + 8 * ((89 * (v1 == 0)) ^ 0x563D)))();
}

uint64_t sub_100A5242C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, uint64_t a56, uint64_t a57, int a58, int a59)
{
  *(v66 - 232) = v64;
  v67 = *(v66 - 256);
  v68 = v63 + v61;
  v69 = v63 + v61 + 598437591;
  HIDWORD(v265) = v67 ^ v62;
  HIDWORD(v70) = v67;
  LODWORD(v70) = -2105031039 * v67;
  v71 = (1505755136 * a55) | ((-801432217 * a55) >> 10);
  v72 = ((-771538944 * v69) | ((1421559821 * v69 + 188610302) >> 18)) + 2109702144;
  v73 = ((1469646848 * (((v67 ^ v62 ^ 0xE80B7) - 622644292) ^ ((v67 ^ v62 ^ 0x14BA07) + 458819852) ^ ((v67 ^ v62 ^ 0x1A3AB0) - 117995075))) | ((1770713889 * (((v67 ^ v62 ^ 0x727A0F20) + 1261943853) ^ ((v67 ^ v62 ^ 0x3BB18A6B) + 50084200) ^ ((v67 ^ v62 ^ 0x49CB854Bu) + 1887843912)) + 33854547) >> 21)) + 614635520;
  v74 = ((v70 >> 4) - v72 + v73) ^ v71;
  v75 = (-1996970418 * v71) | ((-998485209 * v71) >> 31);
  v76 = (1916796928 * v72) | ((1035761097 * v72) >> 10);
  v77 = (1946795520 * v74) | ((-2135292705 * v74) >> 23);
  v78 = v77 ^ ((-1743682304 * v73) | ((-1818750587 * v73) >> 24));
  v79 = (-2123876719 * v77) >> 21;
  v80 = (1102350336 * v77) | v79;
  v81 = -1623974089 * v80;
  v82 = (1124532224 * v75) | ((-493731065 * v75) >> 16);
  v83 = ((-202940127 * (v78 - (v75 + v76))) >> ((-107 * v76) & 0xA) >> ((-107 * v76) & 0xA ^ 0xA)) ^ (1212153856 * (v78 - (v75 + v76)));
  v84 = ((1261082960 * v76) | ((884124053 * v76) >> 28)) + v80 + v83;
  v85 = 1320868119 * v82;
  v86 = 1694347067 * v83;
  v87 = ((1879048192 * v79) | (v81 >> 4)) - ((2 * ((1879048192 * v79) | (v81 >> 4))) & 0x4FA23776) + 668015547;
  v88 = v86 << (v59 >> 4) << ((v59 >> 4) & 0x1F ^ 0x1F);
  v89 = ((((v86 >> 1) ^ 0x6545CB67) + 365732618) ^ (((v86 >> 1) ^ 0xAF4825F4) - 540979813) ^ (((v86 >> 1) ^ 0xCA0DEE93) - 1165719810)) - 1205990285 + ((((v88 - ((2 * v88) & 0x2D34E1D2) + 379220201) ^ 0xFC0DF768) + 66193560) ^ (((v88 - ((2 * v88) & 0x2D34E1D2) + 379220201) ^ 0x3110EAAA) - 823192234) ^ (((v88 - ((2 * v88) & 0x2D34E1D2) + 379220201) ^ 0xDB876D2B) + 611881685));
  v90 = v84 ^ v82;
  v91 = v89 ^ v87 ^ ((v89 ^ 0x2531D045) - 926733244) ^ ((v89 ^ 0x59C3C0D) - 395395060) ^ ((v89 ^ 0x4C4F564E) - 1581405623) ^ ((v89 ^ 0x7EEFB9FF) - 1826798086);
  v92 = (1879048192 * ((-493731065 * v75) >> 16)) | (v85 >> 4);
  v93 = v92 - 2 * (v92 & 0x3F0DE7D9 ^ (v85 >> 4) & 0x10) - 1089607735;
  v94 = ((-771751936 * v90) | ((-1731399831 * v90) >> 7)) - 2 * (((-771751936 * v90) | ((-1731399831 * v90) >> 7)) & 0xD2B3D7F ^ ((-1731399831 * v90) >> 7) & 8) + 220937591;
  v95 = (((v93 ^ 0xCA213B1A) + 903791846) ^ ((v93 ^ 0x1C51EF2B) - 475131691) ^ ((v93 ^ 0x697D33F8) - 1769812984)) - (((v87 ^ 0x9E49C86C) + 1639331732) ^ ((v87 ^ 0xCAFC7CC5) + 889422651) ^ ((v87 ^ 0x7364AF12) - 1935978258)) + v89 - (((v94 ^ 0x6B8C479D) - 1804355485) ^ ((v94 ^ 0x71C58E27) - 1908772391) ^ ((v94 ^ 0x1762F4CD) - 392361165)) - 1528820646;
  v96 = ((v95 ^ 0xDA8C9B56) + 162063638) ^ v95 ^ ((v95 ^ 0x9CC44AC0) + 1340093572) ^ ((v95 ^ 0x156CAD54) - 968305896) ^ ((v95 ^ 0x7FFFFD7E) - 1394900162);
  v97 = (((v94 ^ 0xD2B3D77) - 560640315 * (((v91 ^ 0xC0C6BC9B) - 571903180) ^ ((v91 ^ 0x3EC0D288) + 602873121) ^ ((v91 ^ 0xCBDA7651) - 688539142)) - 1161150935) ^ 0xD2C327DF) - (((v96 ^ 0xFEED8A00) - 102026954) ^ ((v96 ^ 0x10A6ABD8) + 396366062) ^ ((v96 ^ 0xC290A064) - 980018350)) - 440523939;
  v98 = ((v97 ^ 0xCB4FE837) + 554376349) ^ v97 ^ ((v97 ^ 0x66507543) - 1944813079) ^ ((v97 ^ 0xC75A79D7) + 756977021) ^ ((v97 ^ 0x7FFEEFF7) - 1782965411);
  HIDWORD(v263) = v96 ^ 0xF8F944CA;
  v99 = v98 ^ 0xBA4962F6 ^ v96 ^ 0xF8F944CA;
  v100 = -790293153 * (((v98 ^ 0x2ECFF319) + 1803120145) ^ ((v98 ^ 0xB66080F6) - 204071424) ^ ((v98 ^ 0x8D1478BB) - 928848461)) - 1702252042;
  v101 = v89 - 1214183642 + (((v98 ^ 0x6FC7BBF7) + 712058623) ^ ((v98 ^ 0x703C0DF9) + 898273521) ^ ((v98 ^ 0xA40BD5A) + 1341530196));
  v102 = ((2 * ((v98 ^ 0x45AB097A) & (v94 ^ 0xD2B3D77) ^ v94 & 0x5010022E)) ^ 0x4C) - 1022000955 + (((v98 ^ 0xBA4962F6 ^ v94 ^ 0x60CDFCC8) - 1624112328) ^ ((v98 ^ 0xBA4962F6 ^ v94 ^ 0x7119A938) - 1897507128) ^ ((v98 ^ 0xBA4962F6 ^ v94 ^ 0xB30D0125) + 1290993371));
  v103 = ((v102 ^ 0x7A348F82) - 1510515826) ^ v102 ^ ((v102 ^ 0xBFF4633B) + 1614264117) ^ ((v102 ^ 0x1A433CAA) - 981407578) ^ ((v102 ^ 0xFFBFFBE3) + 545009645);
  LODWORD(a20) = v99;
  v104 = 2011126973 * (((v99 ^ 0x3120E6C2) - 824239810) ^ ((v99 ^ 0x9E9B67FF) + 1633982465) ^ ((v99 ^ 0xD46B2DE9) + 731173399)) + 2144848004;
  v105 = 717094912 * (((v98 ^ 0x2EA) - 238280732) ^ ((v98 ^ 0x59A0) + 2017707178) ^ ((v98 ^ 0x501E) - 645772008)) + 1283034981;
  v106 = -1313948459 * v101 + 457476036;
  v107 = (v106 ^ 0x74816EB3) & (2 * (v106 & 0x81104F3B)) ^ v106 & 0x81104F3B;
  v108 = ((2 * (v106 ^ 0x7681F8B1)) ^ 0xEF236F14) & (v106 ^ 0x7681F8B1) ^ (2 * (v106 ^ 0x7681F8B1)) & 0xF791B78A;
  v109 = (v108 ^ 0x4012500) & (4 * v107) ^ v107;
  v110 = ((4 * (v108 ^ 0x1090908A)) ^ 0xDE46DE28) & (v108 ^ 0x1090908A) ^ (4 * (v108 ^ 0x1090908A)) & 0xF791B788;
  v111 = (v110 ^ 0xD6009600) & (16 * v109) ^ v109;
  v112 = ((16 * (v110 ^ 0x21912182)) ^ 0x791B78A0) & (v110 ^ 0x21912182) ^ (16 * (v110 ^ 0x21912182)) & 0xF791B780;
  v113 = v111 ^ 0xF791B78A ^ (v112 ^ 0x71113000) & (v111 << 8);
  v114 = v106 ^ (2 * ((v113 << 16) & 0x77910000 ^ v113 ^ ((v113 << 16) ^ 0x378A0000) & (((v112 ^ 0x8680870A) << 8) & 0x77910000 ^ 0x66000000 ^ (((v112 ^ 0x8680870A) << 8) ^ 0x11B70000) & (v112 ^ 0x8680870A))));
  v115 = 1584037888 * v101 + 1520116073;
  v116 = (v115 ^ 0x82C5694B) & (2 * (v115 & 0x10E40001)) ^ v115 & 0x10E40001;
  v117 = ((2 * (v115 ^ 0x83456949)) ^ 0x27424820) & (v115 ^ 0x83456949) ^ (2 * (v115 ^ 0x83456949)) & 0x93A10000;
  v118 = (v117 ^ 0x300000C) & (4 * v116) ^ v116;
  v119 = ((4 * (v117 ^ 0x90A10002)) ^ 0x4E84DF78) & (v117 ^ 0x90A10002) ^ (4 * (v117 ^ 0x90A10002)) & 0x93A137DC;
  v120 = (v119 ^ 0x2801750) & (16 * v118) ^ v118;
  v121 = ((16 * (v119 ^ 0x91212086)) ^ 0x3A137DE0) & (v119 ^ 0x91212086) ^ (16 * (v119 ^ 0x91212086)) & 0x93A137D0;
  v122 = v120 ^ 0x93A137DE ^ (v121 ^ 0x12013500) & (v120 << 8);
  v123 = v115 ^ (2 * ((v122 << 16) & 0x13A10000 ^ v122 ^ ((v122 << 16) ^ 0x37DE0000) & (((v121 ^ 0x81A0021E) << 8) & 0x93A10000 ^ 0x12800000 ^ (((v121 ^ 0x81A0021E) << 8) ^ 0x21370000) & (v121 ^ 0x81A0021E))));
  v124 = ((v114 >> 17) ^ 0x982BCB2B) & (v123 ^ 0xCA9DCED4) ^ v123 & 0x67D4344D;
  v125 = (v100 ^ 0x28FF8203) & (2 * (v100 & 0xB0FFCB28)) ^ v100 & 0xB0FFCB28;
  v126 = ((2 * (v100 ^ 0x68908653)) ^ 0xB0DE9AF6) & (v100 ^ 0x68908653) ^ (2 * (v100 ^ 0x68908653)) & 0xD86F4D7A;
  v127 = (v126 ^ 0x804E0860) & (4 * v125) ^ v125;
  v128 = ((4 * (v126 ^ 0x48214509)) ^ 0x61BD35EC) & (v126 ^ 0x48214509) ^ (4 * (v126 ^ 0x48214509)) & 0xD86F4D78;
  v129 = (v128 ^ 0x402D0560) & (16 * v127) ^ v127;
  v130 = ((16 * (v128 ^ 0x98424813)) ^ 0x86F4D7B0) & (v128 ^ 0x98424813) ^ (16 * (v128 ^ 0x98424813)) & 0xD86F4D70;
  v131 = v129 ^ 0xD86F4D7B ^ (v130 ^ 0x80644500) & (v129 << 8);
  v132 = ((v100 ^ (2 * ((v131 << 16) & 0x586F0000 ^ v131 ^ ((v131 << 16) ^ 0x4D7B0000) & (((v130 ^ 0x580B084B) << 8) & 0x586F0000 ^ 0x10220000 ^ (((v130 ^ 0x580B084B) << 8) ^ 0x6F4D0000) & (v130 ^ 0x580B084B)))) ^ 0x46FCDB57) & (~BYTE4(a44) | 0xFFFFFFFE) ^ 0xD60B8A89) >> v60;
  v133 = v104 << (v59 & 1) << !(v59 & 1);
  v134 = v133 ^ (v104 >> 31);
  v135 = v132 >> (*(v66 - 196) ^ 0xE);
  v136 = v105 ^ ((v105 ^ 0x345256FE) - 1718606235) ^ ((v105 ^ 0xD5282AD4) + 2028624463) ^ ((v105 ^ 0xC6A800B8) + 1802137635) ^ ((v105 ^ 0x75EFF3F7) - 668105874) ^ 0xBD2D00C7 ^ (v135 - ((2 * v135) & 0xDE211F44) - 284127326);
  v137 = ((1456019744 * (((v103 ^ 0x41D8055) - 1399767661) ^ ((v103 ^ 0x109136D) + 293973675) ^ ((v103 ^ 0x528B8C8) + 899941648))) | ((-1028241207 * (((v103 ^ 0x77CCFB5) - 1343196557) ^ ((v103 ^ 0x2A52BEB0) - 2099379336) ^ ((v103 ^ 0xD125AF5) - 1516312781)) - 951431672) >> 27)) - 381042432;
  HIDWORD(v70) = 258810009 * v134;
  LODWORD(v70) = 258810009 * v134;
  v138 = v70 >> 29;
  HIDWORD(v70) = 139104919 * (((v124 ^ 0x81E56BAA ^ (v136 - ((2 * v136) & 0x32952022) + 424316945)) - v137) ^ (v134 | 0x108614B2) & (v133 | 0xEF79EB4D));
  LODWORD(v70) = HIDWORD(v70);
  v139 = v70 >> 31;
  v140 = (-101538016 * v137) | ((1339004217 * v137) >> 27);
  v141 = (-320218560 * (((v124 ^ 0xA8A521) + 1186083189) ^ ((v124 ^ 0x3E9C511) - 705474235) ^ ((v124 ^ 0x3EE9B8B) + 1978929119)) - v140 + ((-1615616151 * (((v124 ^ 0x9E8E8AB9) - 527163667) ^ ((v124 ^ 0xE3EBEE84) - 1645118766) ^ ((v124 ^ 0xE5CA9F86) - 1680864300)) + 1316171257) >> 26) - 1664385472 + v139) ^ v138;
  v142 = (1184952320 * v139) | ((1574201871 * v139) >> 20);
  v143 = (-1184210944 * v141) | ((-1617573037 * v141) >> 19);
  v144 = (-562350976 * v138) | ((1975318121 * v138) >> 25);
  v145 = (-448898592 * v143) | ((-819334449 * v143) >> 27);
  v146 = 1999833344 * v140 - v144 + ((-1569246455 * v140) >> 24) + v142 - v143;
  v147 = 1072880039 * v146;
  v148 = 887095296 * v146;
  v149 = ((-2111153533 * v142) << ((78 * ((-801432217 * a55) >> 10)) & 0x1E) << ((78 * ((-801432217 * a55) >> 10)) & 0x1E ^ 0x1E)) | ((-2111153533 * v142) >> 2);
  v150 = v145 & v149;
  v151 = v148 & 0xFFE00000 | (v147 >> 11);
  v152 = v145 ^ v149;
  v153 = v149 ^ ((1940914176 * v144) | ((-1945548997 * v144) >> 12)) ^ v145;
  HIDWORD(v262) = v153 ^ 0x1D4D2DF2 ^ (v152 + 2 * v150 - 1083023117);
  HIDWORD(v266) = v153 ^ v151;
  v154 = (HIDWORD(v262) - 861622996) ^ v153 ^ v151;
  v155 = 1184806377 * (((v154 ^ 0xD0816EF8) + 510845441) ^ ((v154 ^ 0x5BB9C2A6) - 1790292385) ^ ((v154 ^ 0x8B38AC5E) + 1170940071)) - 1400460364;
  v156 = (v155 ^ 0xA97BF8A2) & (2 * (v155 & 0xAD73F8AB)) ^ v155 & 0xAD73F8AB;
  v157 = ((2 * (v155 ^ 0xF13B88E4)) ^ 0xB890E09E) & (v155 ^ 0xF13B88E4) ^ (2 * (v155 ^ 0xF13B88E4)) & 0x5C48704E;
  v158 = v157 ^ 0x44481041;
  v159 = (v157 ^ 0x1800600C) & (4 * v156) ^ v156;
  v160 = ((4 * v158) ^ 0x7121C13C) & v158 ^ (4 * v158) & 0x5C48704C;
  v161 = (v160 ^ 0x50004000) & (16 * v159) ^ v159;
  v162 = ((16 * (v160 ^ 0xC483043)) ^ 0xC48704F0) & (v160 ^ 0xC483043) ^ (16 * (v160 ^ 0xC483043)) & 0x5C487040;
  v163 = v161 ^ 0x5C48704F ^ (v162 ^ 0x44000000) & (v161 << 8);
  v164 = v155 ^ (2 * ((v163 << 16) & 0x5C480000 ^ v163 ^ ((v163 << 16) ^ 0x704F0000) & (((v162 ^ 0x1848700F) << 8) & 0x5C480000 ^ 0x14080000 ^ (((v162 ^ 0x1848700F) << 8) ^ 0x48700000) & (v162 ^ 0x1848700F))));
  LODWORD(a28) = v154;
  v165 = -1243021312 * (((v154 ^ 0x9F25) + 169350110) ^ ((v154 ^ 0xB34A) - 1273610317) ^ ((v154 ^ 0x2C6F) + 1895669912)) + 609794999;
  v166 = (((((v165 & 0x80060000) >> 17) & 3) << 18) | 2) & (v165 ^ 0xF88287FC) ^ v165 & 0x80060000 ^ (((((v165 & 0x80060000) >> 17) & 1) << 18) | 0x50008020);
  v167 = (2 * (v165 ^ 0xF88287FC)) & 0x78840000 ^ 0x8840001 ^ ((2 * (v165 ^ 0xF88287FC)) ^ 0xF109044A) & (v165 ^ 0xF88287FC);
  v168 = (4 * v166) & 0x7884C3B4 ^ v166 ^ ((4 * v166) ^ 0x40020000) & v167;
  v169 = (4 * v167) & 0x7884C3B4 ^ 0x1884C121 ^ ((4 * v167) ^ 0xE2130C40) & v167;
  v170 = (16 * v168) & 0x7884C3B0 ^ v168 ^ ((16 * v168) ^ 0x80A50) & v169;
  v171 = (16 * v169) & 0x7884C3B0 ^ 0x7080C0A5 ^ ((16 * v169) ^ 0x884C3B50) & v169;
  v172 = v170 ^ (v170 << 8) & 0x7884C300 ^ ((v170 << 8) ^ 0x82B500) & v171 ^ 0x6804C000;
  v173 = ((v172 << 16) ^ 0x43B50000) & ((v171 << 8) & 0x78840000 ^ 0x78040000 ^ ((v171 << 8) ^ 0x4C30000) & v171);
  v174 = (v172 << 16) & 0x78840000 ^ v172;
  v175 = HIDWORD(v262) - 861622996 + v151;
  v176 = HIWORD(v164) & 0x3697 ^ 0x9EA2FD7B ^ (v165 ^ (2 * (v174 ^ v173)) ^ 0x6EA50A4B) & (HIWORD(v164) ^ 0xFFFF4A8C);
  HIDWORD(a26) = v175;
  LODWORD(v267) = -3 * ((HIDWORD(v262) - 861622996) ^ v145) + 2 * (((HIDWORD(v262) - 861622996) ^ v145) + ((HIDWORD(v262) - 861622996) | v145));
  v177 = (999030784 * v267) | ((26578659 * v267) >> 14);
  HIDWORD(v268) = HIDWORD(v262) - 861622996;
  v178 = (-1098132560 * v175) | ((-1947681477 * v175) >> 28);
  v179 = -548878057 * v176;
  v180 = v178 ^ ((-649068544 * HIDWORD(v268)) | ((223964565 * HIDWORD(v268)) >> 12)) ^ v177 ^ v176;
  v181 = ((-423945185 * v178) >> 5) - (v178 << 27);
  v182 = (2044097792 * v180) | ((1366939253 * v180) >> 24);
  v183 = (610009088 * v176) | ((-548878057 * v176) >> 14);
  v184 = v181 - 453696512 * v177 + ((-2059846327 * v177) >> 22) + v183 - v182;
  v185 = -1392280243 * v182;
  v186 = (2080374784 * (v179 >> 14)) | ((527134111 * v183) >> 6);
  v187 = ((684598709 * v181) >> 4) | (1342177280 * v181);
  v188 = (1373053673 * v184) >> 5;
  v189 = v188 | (1207959552 * v184);
  v190 = -546870337 * v189;
  v191 = (-1603294816 * v182) | ((-1392280243 * v182) >> 27);
  v192 = 1064989155 * v191;
  v193 = (v187 - v191 - v189) ^ v186;
  v194 = -2077846565 * v193;
  v195 = 1765650432 * v193;
  v196 = (v192 >> 5) | (402653184 * (v185 >> 27));
  v197 = ((1780714783 * v186) & 0xFEF78CBC) >> (v139 & 0x19) >> (v139 & 0x19 ^ 0x19);
  v198 = (v190 >> 3) - (v188 << 29);
  v199 = v195 & 0xFFFFF000 | (v194 >> 20);
  v200 = (v196 + 298225536 * v186 + v197 + v198) ^ v199;
  v201 = (((v200 ^ 0x27DCDB75) + 1509293870) ^ ((v200 ^ 0xA6EE83CD) - 658004074) ^ ((v200 ^ 0x813258B8) - 14975775)) + 294089111;
  v202 = (v201 ^ (1424260519 * (v198 + v196)) ^ v199) + 2 * (v201 & ((1424260519 * (v198 + v196)) ^ v199)) + 195672679;
  v203 = (v202 ^ 0xFE19C06F) & (2 * (v202 & 0xFF41E44F)) ^ v202 & 0xFF41E44F;
  v204 = ((2 * (v202 ^ 0x8498C871)) ^ 0xF7B2587C) & (v202 ^ 0x8498C871) ^ (2 * (v202 ^ 0x8498C871)) & 0x7BD92C3E;
  v205 = (v204 ^ 0x7300003C) & (4 * v203) ^ v203;
  v206 = ((4 * (v204 ^ 0x8492402)) ^ 0xEF64B0F8) & (v204 ^ 0x8492402) ^ (4 * (v204 ^ 0x8492402)) & 0x7BD92C3C;
  v207 = (v206 ^ 0x6B402030) & (16 * v205) ^ v205;
  v208 = ((16 * (v206 ^ 0x10990C06)) ^ 0xBD92C3E0) & (v206 ^ 0x10990C06) ^ (16 * (v206 ^ 0x10990C06)) & 0x7BD92C30;
  v209 = v207 ^ 0x7BD92C3E ^ (v208 ^ 0x39900000) & (v207 << 8);
  v210 = v202 ^ (2 * ((v209 << 16) & 0x7BD90000 ^ v209 ^ ((v209 << 16) ^ 0x2C3E0000) & (((v208 ^ 0x42492C1E) << 8) & 0x7BD90000 ^ 0x22D10000 ^ (((v208 ^ 0x42492C1E) << 8) ^ 0x592C0000) & (v208 ^ 0x42492C1E))));
  HIDWORD(v261) = v200 ^ 0x81D6DBA7;
  v211 = v210 ^ 0xD7442A31 ^ v200 ^ 0x81D6DBA7;
  v212 = 4341553 * (((v211 ^ 0x12530D8F) - 307432847) ^ ((v211 ^ 0x72755B04) - 1920293636) ^ ((v211 ^ 0x6E771B2E) - 1853299502)) + 398394093;
  *(v66 - 196) = v210 ^ 0xD7442A31;
  v213 = v210 ^ 0xD7442A31 ^ (v199 - 2 * (v199 & 0xF87960F ^ (v194 >> 20) & 0xD) - 1886939646);
  v214 = (1705082880 * v213) | ((-326317245 * v213) >> 17);
  v215 = ((a53 << 16) + a51) ^ 0x6F;
  v216 = ((2 * (v69 ^ 0xCD6A3758)) ^ 0xF40D645C) & (v69 ^ 0xCD6A3758) ^ (2 * (v69 ^ 0xCD6A3758)) & 0x7A06B22E;
  LODWORD(v264) = v69 & 0xB76C8576;
  v217 = (v69 ^ 0xA76A3574) & (2 * (v69 & 0xB76C8576)) ^ v69 & 0xB76C8576;
  v218 = ((4 * (v216 ^ 0xA029222)) ^ 0xE81AC8B8) & (v216 ^ 0xA029222) ^ (4 * (v216 ^ 0xA029222)) & 0x7A06B22C;
  v219 = (v218 ^ 0x68028020) & (16 * ((v216 ^ 0x70042008) & (4 * v217) ^ v217)) ^ (v216 ^ 0x70042008) & (4 * v217) ^ v217;
  v220 = ((16 * (v218 ^ 0x12043206)) ^ 0xA06B22E0) & (v218 ^ 0x12043206) ^ (16 * (v218 ^ 0x12043206)) & 0x7A06B220;
  v221 = v219 ^ 0x7A06B22E ^ (v220 ^ 0x20022200) & (v219 << 8);
  HIDWORD(v264) = v69;
  v222 = (v69 ^ (2 * ((v221 << 16) & 0x7A060000 ^ v221 ^ ((v221 << 16) ^ 0x322E0000) & (((v220 ^ 0x5A04900E) << 8) & 0x7A060000 ^ 0x78040000 ^ (((v220 ^ 0x5A04900E) << 8) ^ 0x6B20000) & (v220 ^ 0x5A04900E)))) ^ 0x276DE12A) & v62;
  LODWORD(v266) = v62 + v68 + 2 * v222 - 619187123 - 4 * v222;
  HIDWORD(a44) = v103 ^ 0x57734238;
  LODWORD(v261) = (v101 ^ 0xCF92D417) + 701926038;
  HIDWORD(v260) = (v101 ^ 0xAC67263) - 327013150;
  LODWORD(v260) = (v101 ^ 0x6310F8E4) - 2058049945;
  HIDWORD(v259) = (v101 ^ 0xBFFFFFED) + 1505468784;
  v223 = v198 - (v210 ^ 0x58C3BC33);
  LODWORD(a33) = v213;
  LODWORD(v259) = (v223 ^ v213) - ((2 * (v223 ^ v213)) & 0x3ADB74E) - 2116625497;
  *(v66 - 224) = v223;
  v224 = ((-1816659625 * v223) << (a47 & 0x18) << (a47 & 0x18 ^ 0x18)) ^ ((-1816659625 * v223) >> 8);
  LODWORD(a19) = v211;
  HIDWORD(v70) = v211;
  LODWORD(v70) = ((v212 ^ 0xE3F32B50) + 1334140920) ^ v212 ^ ((v212 ^ 0xFFE78896) + 1402076210) ^ ((v212 ^ 0x3262C363) - 1642809403) ^ ((v212 ^ 0x7DFFEBFD) - 779509925);
  v225 = (((v70 >> 4) ^ 0xF8C74F3A) - 206142029) ^ (((v70 >> 4) ^ 0xF36E823F) - 132167496) ^ (((v70 >> 4) ^ 0x5E9155B0) + 1440784185);
  v226 = v225 - 159372368;
  v227 = -1860372779 * (v225 - 159372368) + 1095730426;
  v228 = 2119172096 * (((v210 ^ 0x103) + 1679877326) ^ ((v210 ^ 0x3A3) + 147428974) ^ ((v210 ^ 0xE93) + 479271774)) - v214 + v224 + ((-1180678171 * (((v210 ^ 0x13116398) + 1001043543) ^ ((v210 ^ 0x8BF00203) - 1555310642) ^ ((v210 ^ 0xC022DDA8) - 392624025)) + 841203146) >> 12) - v225 + 988369470;
  v229 = ((-1230503936 * v226) | (v227 >> 13)) + 667942912;
  v230 = (419430400 * v228) | ((423491865 * v228) >> 8);
  v231 = (-1529508008 * v214) | ((-1264930325 * v214) >> 29);
  v232 = ((((465043456 * v224) | ((1310958455 * v224) >> 13)) - v230) ^ v231) - v229;
  v233 = (847249408 * v232) | ((985938533 * v232) >> 9);
  v234 = ((1848972555 * v230) >> (a45 & 4) >> (a45 & 4 ^ 6)) | (738197504 * v230);
  v235 = v233 ^ (((1817247744 * v231) | ((2042981457 * v231) >> 16)) - v234);
  v236 = (-1486032992 * v229) | ((1161521021 * v229) >> 27);
  v237 = (-846493696 * v233) | ((-413327 * v233) >> 21);
  v238 = (779907936 * v234) | ((158589851 * v234) >> 27);
  HIDWORD(v70) = v235 ^ v236;
  LODWORD(v70) = 1119287037 * ((v235 ^ v236) + 2 * (v235 & v236));
  v239 = v70 >> 1;
  v240 = (((-1879048192 * ((1161521021 * v229) >> 27)) | ((-882165911 * v236) >> 4)) ^ v238) - v237 - v239;
  v241 = ((v238 - v237 - 770939480 + v239) ^ v240) + 593659246;
  v242 = (v241 ^ 0xF17A92A5) & (2 * (v241 & 0xF97898C9)) ^ v241 & 0xF97898C9;
  v243 = ((2 * (v241 ^ 0xF30A8327)) ^ 0x14E437DC) & (v241 ^ 0xF30A8327) ^ (2 * (v241 ^ 0xF30A8327)) & 0xA721BEE;
  v244 = (v243 ^ 0x60034C) & (4 * v242) ^ v242;
  v245 = ((4 * (v243 ^ 0xA120822)) ^ 0x29C86FB8) & (v243 ^ 0xA120822) ^ (4 * (v243 ^ 0xA120822)) & 0xA721BEC;
  v246 = (v245 ^ 0x8400BA0) & (16 * v244) ^ v244;
  v247 = ((16 * (v245 ^ 0x2321046)) ^ 0xA721BEE0) & (v245 ^ 0x2321046) ^ (16 * (v245 ^ 0x2321046)) & 0xA721BE0;
  v248 = v246 ^ 0xA721BEE ^ (v247 ^ 0x2201A00) & (v246 << 8);
  v249 = v241 ^ (2 * ((v248 << 16) & 0xA720000 ^ v248 ^ ((v248 << 16) ^ 0x1BEE0000) & (((v247 ^ 0x852010E) << 8) & 0xA720000 ^ 0x8600000 ^ (((v247 ^ 0x852010E) << 8) ^ 0x721B0000) & (v247 ^ 0x852010E))));
  LODWORD(v268) = v249 ^ 0xA987A610;
  v250 = (v249 ^ 0xF958AF15) + v237;
  LODWORD(a21) = v239 - (v249 ^ 0xF958AF15);
  LODWORD(a51) = v249 ^ 0xA987A610 ^ (v240 - ((2 * v240) & 0xA1BE120A) + 1356794117);
  v251 = a21 ^ v250 ^ a51;
  HIDWORD(a11) = v249;
  HIDWORD(a29) = v249 ^ 0xF958AF15;
  LODWORD(a23) = v251 + (v249 ^ 0xF958AF15) - 2 * (v251 & (v249 ^ 0x7958AF15)) - 2 * ((v251 + (v249 ^ 0xF958AF15) - 2 * (v251 & (v249 ^ 0x7958AF15))) & 0x197566A3 ^ (v251 + (v249 ^ 0xF958AF15)) & 1) - 1720359262;
  v252 = a49;
  v253 = (a49 - 449294024) | 0xA1;
  LODWORD(v265) = v250;
  v254 = HIDWORD(a54) ^ v250 ^ 0x3D0D4A08;
  HIDWORD(a54) = v215;
  v255 = (v215 + 305772834 + v254) & 0xFFFFFFFE ^ 0x4A951CF3;
  v256 = a49 < 0xD9C6E99D;
  LODWORD(v263) = v101;
  v257 = *(v66 - 252);
  LODWORD(a49) = (v257 >> 8) ^ 0x8A25FD;
  HIDWORD(v267) = HIWORD(v257);
  HIDWORD(v270) = HIWORD(v257) ^ 0x8A25;
  LODWORD(v269) = v98;
  LODWORD(a47) = (v98 >> 8) ^ 0x6C803960;
  LODWORD(a45) = (v210 >> 8) ^ 0x58C3BC;
  HIDWORD(v269) = HIWORD(v210) ^ 0x58C3;
  LODWORD(v270) = HIWORD(v98) ^ 0x3A1B652D;
  LODWORD(v262) = v210;
  LODWORD(a25) = HIBYTE(v210) ^ 0x58;
  LODWORD(a22) = v98 ^ 0xBA4962F6 ^ a59;
  LODWORD(a53) = v253 + 17214;
  return (*(v65 + 8 * (v252 ^ 0x1AC7D430 ^ (14937 * v256))))((v253 - 8374), (v253 - 7445), 3946423264, 2730369360, 2094989340, 1316935554, 1047494670, 2 * v255, a9, a10, a11, v259, v260, v261, v262, v263, v264, v265, a19, a20, a21, a22, a23, v266, a25, a26, v267, a28, a29, v268, v269, v270, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54);
}

void *sub_100A54850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = v8 + a8 + 2304;
  STACK[0x1B90] = *(v9 + 8 * v10);
  return (*(v9 + 8 * (((a8 + 2120255727) ^ 0x5170) + v10)))(&STACK[0x18D4]);
}

uint64_t sub_100A54A48(int a1, int a2, int a3, uint64_t a4, int a5, int a6, int a7, uint64_t a8, uint64_t a9, _BYTE *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, int a34, int a35, uint64_t a36, int a37, int a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, int a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int a59, int a60, int a61, int a62, int a63)
{
  v200 = v84;
  v201 = v85;
  v204 = v80 ^ a1;
  v206 = a64 ^ a61;
  v207 = a35 ^ a43 ^ a66 ^ a67 ^ v86 ^ a7 ^ a71;
  v211 = a2 ^ a68 ^ a3 ^ v87 ^ a5;
  v213 = a6 ^ a74;
  v214 = v83 ^ a73;
  v205 = (a72 >> 12) * v81 - ((1920843 * (a72 >> 12)) >> 21) * v79;
  v203[0] = ((a72 >> 8) & 0xF) * v81 - ((1920843 * ((a72 >> 8) & 0xF)) >> 21) * v79;
  v210[0] = (a72 >> 4) * v81 - ((1920843 * (a72 >> 4)) >> 21) * v79;
  v212 = (v90 - ((2 * v90) & 0xEDB04ADA) - 153606803) ^ a76 ^ ((a76 ^ 0x7E6D121D) - 933138345) ^ ((a76 ^ 0x3E98FF8) - 1243222604) ^ ((a76 ^ 0x8A88DF8E) + 1015332294) ^ ((a76 ^ 0xBEFFDFDF) + 150191509) ^ 0xBF2BB8D9;
  v202 = (a72 & 0xF) * v81 - ((1920843 * (a72 & 0xF)) >> 21) * v79;
  v91 = (v89 + 84928761) ^ 0xF0159D3D;
  v208 = v91 - 84928761 + (((v88 & 0x50BE8B9 ^ 0x50BE8B9) + (v88 & 0x50BE8B9)) | 0xCC051);
  v92 = a60 - 1050953144 + v212 - v91;
  v209 = v78 ^ a38 ^ ((a38 ^ 0x6E9ACC31) - 1789952713) ^ ((a38 ^ 0x469ADE3) - 4449051) ^ ((a38 ^ 0x9122DC99) + 1794600351) ^ ((a38 ^ 0xFFFBF3B3) + 70140597) ^ 0x7F4DC12E;
  v93 = v85 ^ 0x78F074D3;
  v94 = a34 - 2039096423 + (v85 ^ 0x78F074D3) - v209;
  v95 = ((a60 - 17848 + v212 - ((v89 - 5895) ^ 0x9D3D)) >> 12) * v81 + 847457;
  v96 = STACK[0x208];
  v97 = ((*(STACK[0x208] + ((HIBYTE(v92) & 0xF) * v81 + 847457 - ((((HIBYTE(v92) & 0xF) * v81 + 847457) * v82) >> 32) * v79)) ^ 0x36) << 8) ^ ((*(STACK[0x208] + ((v92 >> 28) * v81 + 847457 - ((((v92 >> 28) * v81 + 847457) * v82) >> 32) * v79)) ^ 0x36) << 12);
  v98 = ((v208 & 0x3B5 ^ 0x3B5) + (v208 & 0x3B5) + ((v92 >> 8) & 0xF)) * v81;
  v99 = (((*(STACK[0x208] + ((HIWORD(v92) & 0xF) * v81 + 847457 - ((((HIWORD(v92) & 0xF) * v81 + 847457) * v82) >> 32) * v79)) ^ 0xBE2272) & ~v97 | v97 & 0x1DD00) << 8) ^ (*(STACK[0x208] + (((v92 >> 20) & 0xF) * v81 + 847457 - (((((v92 >> 20) & 0xF) * v81 + 847457) * v82) >> 32) * v79)) << 12);
  v100 = (((v99 ^ 0x5CC8FF) & (*(STACK[0x208] + (v98 - ((v98 * v82) >> 32) * v79)) ^ 0x5DECB0) | v99 & 0xA21300) << 8) ^ 0x7DEC8600;
  v101 = v100 ^ (*(STACK[0x208] + (v95 - ((v95 * v82) >> 32) * v79)) << 12);
  v102 = *(STACK[0x208] + ((v92 & 0xF) * v81 + 847457 - ((((v92 & 0xF) * v81 + 847457) * v82) >> 32) * v79));
  v103 = v101 ^ 0x36000;
  v104 = ((v101 ^ 0xFFF8FFFF) & (v102 ^ 0xDE9B0B28) | v101 & 0x2164F400) ^ (16 * (*(STACK[0x208] + ((v92 >> 4) * v81 + 847457 - ((((v92 >> 4) * v81 + 847457) * v82) >> 32) * v79)) ^ 0x36)) ^ 0xDE9B6B1E;
  LOBYTE(v98) = *(STACK[0x208] + ((v94 >> 4) * v81 + 847457 - ((((v94 >> 4) * v81 + 847457) * v82) >> 32) * v79));
  v105 = *(STACK[0x208] + ((v94 & 0xF) * v81 + 847457 - ((((v94 & 0xF) * v81 + 847457) * v82) >> 32) * v79));
  v106 = (((v105 ^ (16 * v98)) & 0xF0 | ((~v101 & (v102 ^ 0x28) ^ (16 * (*(STACK[0x208] + ((v92 >> 4) * v81 + 847457 - ((((v92 >> 4) * v81 + 847457) * v82) >> 32) * v79)) ^ 0x36)) ^ 0x1E) >> 4)) ^ 0x50) * v81;
  v107 = v106 + 382204 - (((v106 + 382204) * v82) >> 32) * v79;
  v108 = v102 & 0xF ^ 6;
  v109 = ((v108 & 0xFFFFFF0F | (16 * (v105 & 0xF))) ^ 0x60) * v81;
  v110 = (*(STACK[0x208] + (v109 + 612598 - (((v109 + 612598) * v82) >> 32) * v79)) ^ (16 * (LOBYTE(STACK[0x2F6]) ^ 0x36) - ((32 * (LOBYTE(STACK[0x2F6]) ^ 0x36)) & 0x1F00) + 1071161225) ^ 0x3FD89FBF) * v81;
  v111 = *(STACK[0x208] + (v109 + 382204 - (((v109 + 382204) * v82) >> 32) * v79)) ^ (*(STACK[0x208] + v110 + 382204 - (v110 + 382204) / 0x3CFu * v79) >> 4);
  v112 = *(STACK[0x208] + ((v111 ^ 0x35) * v81 + 612598 - ((((v111 ^ 0x35u) * v81 + 612598) * v82) >> 32) * v79)) ^ 0x36;
  v113 = (*(STACK[0x208] + (v106 + 612598 - (((v106 + 612598) * v82) >> 32) * v79)) ^ 0x50953586 ^ (16 * v112 + 1351955846 - ((32 * v112) & 0xB60) + 42)) * v81;
  v114 = *(STACK[0x208] + v107) ^ (*(STACK[0x208] + v113 + 382204 - (v113 + 382204) / 0x3CFu * v79) >> 4);
  v115 = (((2 * (v114 ^ 0x24)) & 0x15C) + (v114 ^ 0x29B)) * v81;
  v116 = v115 - ((v115 * v82) >> 32) * v79;
  v117 = ((*(STACK[0x208] + ((HIBYTE(v94) & 0xF) * v81 + 847457 - ((((HIBYTE(v94) & 0xF) * v81 + 847457) * v82) >> 32) * v79)) ^ 0x36) << 8) ^ ((*(STACK[0x208] + ((v94 >> 28) * v81 + 847457 - ((((v94 >> 28) * v81 + 847457) * v82) >> 32) * v79)) ^ 0x36) << 12);
  v118 = (((*(STACK[0x208] + ((HIWORD(v94) & 0xF) * v81 + 847457 - ((((HIWORD(v94) & 0xF) * v81 + 847457) * v82) >> 32) * v79)) ^ 0xA05B) & ~v117 | v117 & 0x5F00) << 8) ^ (*(STACK[0x208] + (((v94 >> 20) & 0xF) * v81 + 847457 - (((((v94 >> 20) & 0xF) * v81 + 847457) * v82) >> 32) * v79)) << 12);
  v119 = ((v118 ^ 0xFF00FFFF) & (*(STACK[0x208] + (((v94 >> 8) & 0xF) * v81 + 847457 - (((((v94 >> 8) & 0xF) * v81 + 847457) * v82) >> 32) * v79)) ^ 0x9581E264) | v118 & 0x7E1D00) ^ 0x95A3EF52;
  v120 = (((-16 * (*(STACK[0x208] + (((v94 >> 8) & 0xF) * v81 + 847457 - (((((v94 >> 8) & 0xF) * v81 + 847457) * v82) >> 32) * v79)) ^ 0x36) + 120) ^ v98) & 0xF0 | (v104 >> 8) & 0xF) ^ 0x40;
  v121 = v120 * v81 + 612598 - (((v120 * v81 + 612598) * v82) >> 32) * v79;
  v122 = *(STACK[0x208] + v116) ^ 0x36;
  v123 = ((16 * v122 - 598095777 - ((32 * v122) & 0x10C0) + 10) ^ *(STACK[0x208] + v121) ^ 0xDC59C85F) * v81;
  v124 = v123 + 612598 - (v123 + 612598) / 0x3CF * v79;
  v125 = ((v121 & 0x1AC) + v120 + (v121 & 0x1AC ^ 0x1AC)) * v81;
  v126 = (*(STACK[0x208] + (v125 - ((v125 * v82) >> 32) * v79)) ^ (*(STACK[0x208] + v123 + 382204 - (v123 + 382204) / 0x3CF * v79) >> 4) ^ 0x35) * v81 + 612598;
  LOBYTE(v120) = *(STACK[0x208] + ((v94 >> 12) * v81 + 847457 - ((((v94 >> 12) * v81 + 847457) * v82) >> 32) * v79)) ^ 0x5D ^ ((~(v119 >> 3) | 0x29) + (v119 >> 4) + 108);
  v127 = ((v103 >> 12) & 0xFFFFFF0F | (16 * (v120 & 0xF))) * v81;
  v128 = *(STACK[0x208] + (v126 - ((v126 * v82) >> 32) * v79)) ^ 0x36;
  v129 = (*(STACK[0x208] + (v127 + 612598 - (((v127 + 612598) * v82) >> 32) * v79)) ^ 0x6013D0EC ^ (16 * v128 - ((32 * v128) & 0x1A0) + 1611911386)) * v81;
  v130 = ((*(STACK[0x208] + v129 + 612598 - (v129 + 612598) / 0x3CFu * v79) ^ 0x36) << 12) ^ ((*(STACK[0x208] + v124) ^ 0x36) << 8);
  v131 = *(STACK[0x208] + v113 + 612598 - (v113 + 612598) / 0x3CFu * v79);
  v132 = 16 * (v131 ^ 0x36);
  v133 = v130 ^ v132;
  v134 = (((v130 ^ v132) >> 4) & 0xF0 | (v104 >> 8) & 0xF) * v81 + 81263;
  LOBYTE(v131) = v132 - 32 * (v131 & 1);
  LOBYTE(v132) = *(STACK[0x208] + v110 + 612598 - (v110 + 612598) / 0x3CFu * v79);
  v135 = ((((v131 - 111) ^ v132) & 0xF0 | (v104 >> 4)) ^ 0xA0) * v81 + 81263;
  v136 = ((v108 & 0xFFFFFF0F | (16 * (v132 & 0xF))) ^ 0x60) * v81 + 81263;
  v137 = *(STACK[0x208] + (v135 - ((v135 * v82) >> 32) * v79)) ^ 0x36;
  v138 = (16 * v137 + 1339063189 - ((32 * v137) & 0x1740) + 14) ^ *(STACK[0x208] + (v136 - ((v136 * v82) >> 32) * v79));
  v139 = ((v130 >> 8) & 0xF0 | (v104 >> 12)) * v81 + 81263;
  v140 = *(STACK[0x208] + (v127 + 382204 - (((v127 + 382204) * v82) >> 32) * v79)) ^ (*(STACK[0x208] + v129 + 382204 - (v129 + 382204) / 0x3CFu * v79) >> 4) ^ 0x35;
  v141 = (((v140 + 686) | (337 - v140)) & v81) * (v140 + 686);
  v142 = (v120 & 0xF0 | HIWORD(v103) & 0xF) * v81;
  v143 = *(STACK[0x208] + (v141 - ((v141 * v82) >> 32) * v79)) ^ 0x36;
  v144 = (*(STACK[0x208] + (v142 + 612598 - (((v142 + 612598) * v82) >> 32) * v79)) ^ 0x3FA47BB5 ^ (16 * v143 - ((32 * v143) & 0x1700) + 1067744131)) * v81;
  v145 = v144 + 612598 - (v144 + 612598) / 0x3CFu * v79;
  v146 = (*(STACK[0x208] + (v142 + 382204 - (((v142 + 382204) * v82) >> 32) * v79)) ^ (*(STACK[0x208] + v144 + 382204 - (v144 + 382204) / 0x3CFu * v79) >> 4) ^ 0x35) * v81 + 612598;
  v147 = ((v118 >> 8) & 0xF0 | (v100 >> 20) & 0xF) * v81;
  v148 = *(STACK[0x208] + (v146 - ((v146 * v82) >> 32) * v79)) ^ 0x36;
  v149 = (*(STACK[0x208] + (v147 + 612598 - (((v147 + 612598) * v82) >> 32) * v79)) ^ 0x64DAD563 ^ (16 * v148 - ((32 * v148) & 0xAAAAAAAA) + 1692063061)) * v81;
  v150 = ((*(STACK[0x208] + v145) ^ 0x36) << 16) ^ (*(STACK[0x208] + v149 + 612598 - (v149 + 612598) / 0x3CF * v79) << 20) ^ 0x3600000;
  v151 = v150 ^ v133;
  v152 = ((v151 >> 12) & 0xF0 | HIWORD(v104) & 0xF) * v81 + 81263;
  v153 = (HIWORD(v150) & 0xF0 | (v104 >> 20) & 0xF) * v81 + 81263;
  v154 = ((*(STACK[0x208] + (v139 - ((v139 * v82) >> 32) * v79)) ^ 0x36) << 12) ^ ((*(STACK[0x208] + (v134 - ((v134 * v82) >> 32) * v79)) ^ 0x36) << 8) ^ ((*(STACK[0x208] + (v152 - ((v152 * v82) >> 32) * v79)) ^ 0x36) << 16) ^ ((*(STACK[0x208] + (v153 - ((v153 * v82) >> 32) * v79)) ^ 0x36) << 20);
  v155 = (*(STACK[0x208] + (v147 + 382204 - (((v147 + 382204) * v82) >> 32) * v79)) ^ (*(STACK[0x208] + v149 + 382204 - (v149 + 382204) / 0x3CF * v79) >> 4) ^ 0x35) * v81 + 612598;
  v156 = v155 - ((v155 * v82) >> 32) * v79;
  v157 = ((v118 >> 12) ^ 0xA30) >> ((v156 & 4 ^ 4) + (v156 & 4));
  v158 = (HIBYTE(v100) & 0xF | (16 * (v157 & 0xF))) * v81;
  v159 = *(STACK[0x208] + v156) ^ 0x36;
  v160 = (*(STACK[0x208] + (v158 + 612598 - (((v158 + 612598) * v82) >> 32) * v79)) ^ (16 * v159 - 343754872 - ((32 * v159) & 0xF60) + 54) ^ 0xEB82B788) * v81;
  v161 = (v157 & 0xF0 | (v100 >> 28)) * v81 + 612598;
  v162 = v161 - ((v161 * v82) >> 32) * v79;
  v163 = *(STACK[0x208] + (v158 + 382204 - (((v158 + 382204) * v82) >> 32) * v79)) ^ (*(STACK[0x208] + v160 + 382204 - (v160 + 382204) / 0x3CF * v79) >> 4) ^ 0x35;
  v164 = (((536870225 - v163) & 0x110394BC) + ((v163 + 686) & 0x2BC) - 285446975) * (v163 + 686);
  v165 = *(STACK[0x208] + (v164 - ((v164 * v82) >> 32) * v79)) ^ 0x36;
  v166 = (v162 & 0x2AE) + (v162 & 0x2AE ^ 0x2AE) + (*(STACK[0x208] + v162) ^ 0x41C9997E ^ ((~(32 * v165) | 0xFFFFED7F) + 16 * v165 + 1103731017));
  if (v166 >= 2)
  {
    v167 = v166 * v81 - 975 - (v166 * v81 - 975) / 0x3CF * v79;
  }

  else
  {
    v167 = v166 * v81;
  }

  v168 = v151 ^ ((*(v96 + v160 + 612598 - (v160 + 612598) / 0x3CF * v79) ^ 0x36) << 24);
  v169 = v168 ^ ((*(v96 + v167) ^ 6) << 28);
  v170 = ((v168 >> 20) & 0xF0 | HIBYTE(v104) & 0xF) * v81 + 81263;
  v171 = v170 - ((v170 * v82) >> 32) * v79;
  v172 = v154 ^ ((*(v96 + v171) ^ 0x36u) << (((v171 & 0xCC) + (v171 & 0xCC ^ 0xCC) + 76) & 0xFC));
  v173 = (HIBYTE(v169) & 0xF0 | (v104 >> 28)) * v81 + 81263;
  v174 = v172 ^ ((*(v96 + (v173 - ((v173 * v82) >> 32) * v79)) ^ 6) << 28);
  v175 = (v174 >> 28) * v81 - ((1920843 * (v174 >> 28)) >> 21) * v79;
  v176 = v138 ^ v174 ^ 0x4FD07B95;
  v177 = (HIBYTE(v172) & 0xF) * v81 - ((1920843 * (HIBYTE(v172) & 0xF)) >> 21) * v79;
  v178 = ((v172 >> 20) & 0xF) * v81 - ((1920843 * ((v172 >> 20) & 0xF)) >> 21) * v79;
  v179 = (HIWORD(v172) & 0xF) * v81 - ((1920843 * (HIWORD(v172) & 0xF)) >> 21) * v79;
  v180 = (v176 >> 12) * v81 - ((1920843 * (v176 >> 12)) >> 21) * v79;
  v181 = ((v176 >> 8) & 0xF) * v81 - ((1920843 * ((v176 >> 8) & 0xF)) >> 21) * v79;
  v182 = v176;
  if (v176 < 0x857EF05A)
  {
    v182 = v176;
  }

  v183 = (v182 >> 4) * v81 - (((1920843 * (v182 >> 4)) >> 16) >> 5) * v79;
  v184 = (v182 & 0xF) * v81 - (((1920843 * (v182 & 0xFu)) >> 16) >> 5) * v79;
  v185 = ((v204 ^ (((a77 - 82) ^ 0xB1 ^ v200) - ((2 * ((a77 + 591965102) ^ 0xB1 ^ v200)) & 0x1C0) + 7673056)) << 8) ^ (16 * (*(v96 + v205) ^ 0x36));
  v186 = ((v185 - ((2 * v185) & 0x64AB60) + 3298751) ^ *(v96 + LOWORD(v203[0]))) << 8;
  v187 = (v186 ^ 0xC80A54FF) & (*(v96 + v202) ^ 0xF80B5D79) | v186 & 0x7F4A200;
  v188 = ((*(v96 + v177) ^ 0x36) << 8) ^ ((*(v96 + v175) ^ 0x36) << 12);
  v189 = (*(v96 + v179) ^ 0x297E9A) & ~v188 | v188 & 0x8100;
  v190 = *(v96 + v180) ^ 0x36;
  v191 = *(v96 + LOWORD(v210[0])) ^ 0x36;
  v192 = *(v96 + v181);
  v193 = 16 * v190 - ((32 * v190) & 0x4A0) + 7754321;
  v194 = *(v96 + v183) ^ 0x36;
  v195 = ((v192 | (*(v96 + v178) << 12)) ^ (v189 << 8) ^ v193) << 8;
  v196 = (v195 ^ 0x600088FF) & (*(v96 + v184) ^ 0x6B9CEB9D) | v195 & 0x94631400;
  *a10 = HIBYTE(v206) ^ 0x83;
  a10[4] = ((v207 ^ 0x49DF06D4u) >> 24) ^ 0xA9;
  a10[8] = ((a69 ^ (a70 - ((2 * a70) & 0x3475FEB8u) - 1707409572)) >> 24) ^ 4;
  a10[12] = ((v211 ^ 0x5B06DE60u) >> 24) ^ 0x4A;
  a10[16] = ((a75 ^ a78) >> 24) ^ 0x83;
  a10[20] = HIBYTE(v213) ^ 0x64;
  v197 = (v89 + 84928761) ^ v201 ^ v88 ^ (16 * v191) ^ v187;
  v198 = v214 ^ v93 ^ v208 ^ v212 ^ v209 ^ v92 ^ (16 * v194) ^ v196;
  a10[24] = ((v197 ^ 0x72BA34A1u) >> 24) ^ 4;
  a10[28] = ((v198 ^ 0x6B9EEFABu) >> 24) ^ 0x4A;
  a10[1] = BYTE2(v206) ^ 0x7B;
  a10[5] = ((v207 ^ 0x49DF06D4u) >> 16) ^ 0xE9;
  a10[9] = ((a69 ^ (a70 - ((2 * a70) & 0x75FEB8u) + 3866460)) >> 16) ^ 0xB0;
  a10[13] = ((v211 ^ 0x5B06DE60u) >> 16) ^ 0xF1;
  a10[21] = BYTE2(v213) ^ 0xA4;
  a10[17] = ((a75 ^ a78) >> 16) ^ 0x7B;
  a10[25] = ((v197 ^ 0x72BA34A1u) >> 16) ^ 0xB0;
  a10[29] = ((v198 ^ 0x6B9EEFABu) >> 16) ^ 0xF1;
  a10[2] = BYTE1(v206) ^ 0xD5;
  a10[6] = ((v207 ^ 0x6D4) >> 8) ^ 0xB8;
  a10[10] = ((a69 ^ (a70 - ((2 * a70) & 0xFEB8) - 164)) >> 8) ^ 0xD9;
  a10[14] = ((v211 ^ 0xDE60) >> 8) ^ 0x78;
  a10[26] = ((v197 ^ 0x34A1) >> 8) ^ 0xD9;
  a10[18] = ((a75 ^ a78) >> 8) ^ 0xD5;
  a10[22] = BYTE1(v213) ^ 0x18;
  a10[3] = v206 ^ ((a78 & 0xE4 ^ 0xE4) + (a78 & 0xE4));
  a10[30] = ((v198 ^ 0xEFAB) >> 8) ^ 0x78;
  a10[7] = v207 ^ 2;
  a10[11] = a69 ^ (a70 - ((2 * a70) & 0xB8) + 92) ^ 0x71;
  a10[15] = v211 ^ 0x4C;
  a10[19] = a75 ^ a78 ^ 0xE4;
  a10[23] = v213 ^ 0xD0;
  a10[27] = v197 ^ 0xD0;
  a10[31] = v198 ^ 0x87;
  return (*(STACK[0x200] + 8 * ((27357 * (a77 > 0xCB6DD212)) ^ (a77 + 591943318))))(a11);
}

uint64_t sub_100A55DA0(int8x16_t a1, int8x16_t a2, int8x16_t a3, int32x4_t a4, int8x16_t a5, int8x16_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13)
{
  v20 = a13 + 4 * v13;
  a6.i64[0] = *(v20 + 4);
  a6.i32[2] = *(v20 + 12);
  v21 = vextq_s8(a5, a6, 0xCuLL);
  a6.i32[3] = *(a13 + 4 * (v13 + (v18 ^ (a11 + 1691))) + v15);
  v22 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(a6, a2), vandq_s8(v21, a1)), 1uLL), *(v20 + 1588));
  v23.i32[0] = *(v16 + 4 * (*(v20 + 4) & 1));
  v23.i32[1] = *(v16 + 4 * (*(v20 + 8) & 1));
  v23.i32[2] = *(v16 + 4 * (a6.i8[8] & 1));
  v23.i32[3] = *(v16 + 4 * (a6.i8[12] & 1));
  *v20 = veorq_s8(vaddq_s32(vsubq_s32(v22, vandq_s8(vaddq_s32(v22, v22), a3)), a4), v23);
  return (*(v19 + 8 * (((v13 != 220) * v17) ^ (v14 + 2469))))();
}

uint64_t sub_100A55EA0()
{
  LODWORD(STACK[0x740]) = 0;
  LODWORD(STACK[0x760]) = v2 ^ 0x1E01570A;
  v3 = STACK[0x648];
  v4 = 113 * *(STACK[0x648] + 118) - 103;
  STACK[0x780] = *(*STACK[0x688] + 4);
  v5 = v4 & 0x9F ^ 0x1C;
  v6 = STACK[0x5B8];
  v7 = *(STACK[0x5B8] + 53);
  v8 = *(STACK[0x5B8] + 25);
  LODWORD(STACK[0x710]) = v4;
  v9 = STACK[0x680];
  v10 = *(STACK[0x680] + 34);
  v11 = v6[22];
  v12 = (v4 ^ (2 * ((v4 ^ 0x66) & (2 * ((v4 ^ 0x66) & (2 * ((v4 ^ 0x66) & (2 * ((v4 ^ 0x66) & (2 * ((((v4 ^ 0x66) & (2 * v4) & 0x4E ^ v5) << ((v2 ^ 0xA) - 82)) & (v4 ^ 0x66) ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5))) ^ 0x86u;
  LODWORD(STACK[0x720]) = v2 - 503385688;
  v13 = *(&off_101353600 + v2 - 503385619);
  v14 = STACK[0x678];
  v15 = -41 - 83 * *(STACK[0x678] + 10);
  LODWORD(STACK[0x730]) = v2 + 812872753;
  v16 = ((((v0 - (v2 + 812872753)) | (v2 + 812872753 - v0)) >= 0) | 0x96) ^ (v2 + 49) ^ v15;
  LOBYTE(v4) = (v16 & 0x29 | 0xC2) ^ v15 & 0x96;
  v15 ^= 0x28u;
  v17 = v13 + ((v16 ^ (2 * (v15 & (2 * (v15 & (2 * (v15 & (2 * (v15 & (2 * (v15 & (2 * (v15 & (2 * v4) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4))) ^ 0x13u);
  v18 = v13 + 788;
  v19 = *(v13 + 788 + v12);
  LODWORD(STACK[0x6B0]) = v8;
  v20 = ((v8 >> 4) | (16 * v8)) + (~(32 * v8) | 0x5F) + 81;
  v21 = v6[41] - ((2 * v6[41]) & 0xFF87) - 0x67F11EED56F22A3DLL;
  v22 = (v21 ^ 0x67F11EED56F22A18) & ((((v7 - ((2 * v7) & 0xD4)) << 8) + 0x4338F8060DBD6A00) ^ 0x39CC8BBD5DAAF61BLL) ^ v21 & 0x800A0000210003E4;
  v23 = v6[49];
  LODWORD(v7) = v3[108];
  v24 = v13 + 266;
  v25 = *(v13 + 266 + ((((v8 >> 4) | (16 * v8)) + (~(32 * v8) | 0x5F) + 81) ^ 0x80));
  v26 = (v22 ^ 0x5018C448EE82204) & ((((v11 - ((2 * v11) & 0x138)) << 16) + 0x74D29059E39C0000) ^ 0x48FE38A9A0223A8DLL) ^ v22 & 0xC3D3570FBC41C572;
  LOBYTE(v8) = v11 & 0x20;
  v27 = (((v19 & 0xF8 ^ 8) & 0xF8 | v19 & 7) + (((v19 & 0xF8 ^ 8) - (v19 & 0xF8 ^ 0x50)) ^ 0xF0) - 13) << (v11 & 0x20);
  v28 = v9[14];
  v29 = (v27 << (v8 ^ 0x20)) ^ 0xF258CF23BAE6010DLL;
  v30 = (v26 ^ 0x10104048C000020) & ((((v10 - ((2 * v10) & 0x26)) << 24) - 0x62C2C7BBED000000) ^ 0xE907086589B89AAFLL);
  v31 = v9[36] - ((2 * v9[36]) & 0xD0u) + 3189;
  LOBYTE(v8) = ((2 * (v25 - ((2 * v25) & 0xA8) - 44)) & 0xDF) + ((v25 - ((2 * v25) & 0xA8) - 44) ^ 0xEF);
  LODWORD(v10) = (*(v17 + 7) >> 2) | (*(v17 + 7) << 6);
  v32 = v14[57];
  v33 = v8 & 0x3D ^ 0x56;
  v34 = v20 ^ 0xEB;
  v35 = v26 & 0x8BC5CFDE65476550 ^ __ROR8__(__ROR8__(v29, 24) ^ 0xE6010DF258CF23BALL, 40) ^ v30 ^ 0xFEFEFBFBFBBFBFFFLL;
  LODWORD(v26) = -(v20 ^ 0xFFFFFFEB);
  LOBYTE(v20) = v8 + (v20 ^ v8 ^ (2 * ((v8 ^ 0x10) & (2 * ((v8 ^ 0x10) & (2 * ((v8 ^ 0x10) & (2 * ((v8 ^ 0x10) & (2 * ((v8 ^ 0x10) & (2 * (v8 & (2 * v8) & 0x22 ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ 0xA9) + 18;
  v36 = v32 - ((2 * v32) & 0x1B8) - 0x55F6DD3B8B562B24;
  STACK[0x6E0] = v36;
  v37 = v36 >> 3;
  LOBYTE(v26) = v20 ^ v26;
  v38 = ((v31 << 45) - 0x1A00000000000) ^ 0x28275DEA695B66A7 ^ (32 * v35 - ((v35 << 6) & 0x5354BBD4D2B6CD40) + 0x29AA5DEA695B66A7);
  v39 = ((v28 - ((2 * v28) & 0xA6)) << 16) - 0x5F897F1D30AD0000;
  STACK[0x690] = ((v37 ^ 0x2DCC732B87D147A1) & ((v32 << 61) ^ 0x7FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL | ((v32 >> 1) << 62)) ^ 0x388D577309447D3ALL ^ ((((v7 - ((2 * v7) & 0x18) + 1356) << 53) - 0x800000000000000) ^ 0xFED8CC6FF5D9136CLL ^ (v38 - ((2 * v38) & 0xBEB198DFEBB226C0) + 0x5F58CC6FF5D9136CLL) | (v35 >> 59));
  LODWORD(v7) = v14[27];
  v40 = v34 + v8 + v26 - 2 * (v26 & v34) + 16;
  STACK[0x6F0] = v13 + 527;
  LOBYTE(v32) = *(v13 + 527 + (v23 ^ 0x72)) + 51;
  v41 = v14[2];
  v42 = (((-111 * v40) ^ 0x91) + ((34 * v40) & 0x22)) | ((((((v10 - ((2 * v10) & 0xFFFFFFBF) + 95) >> 1) & 0x1D ^ 0xD) + ~(2 * (((v10 - ((2 * v10) & 0xFFFFFFBF) + 95) >> 1) & 0x1D ^ 0xD)) + 96) ^ (v10 - ((2 * v10) & 0xBF) + 95)) << 8);
  v43 = ((v6[68] - ((2 * v6[68]) & 0x1CCu) + 23020) << 48) - 0x6000000000000;
  LODWORD(v10) = v14[71];
  v44 = ((v39 ^ 0xCF4D9C70F115D767) & ~v42 | v42 & 0x2898) ^ 0x6F3B1C923E46D767;
  LOBYTE(v17) = 113 * v6[60] + 31;
  v45 = v17 & 0x25 ^ 0xA2;
  v39 ^= 0xA07680E2CF530000;
  v46 = v6[40];
  LOBYTE(v13) = 113 * v14[40] - 75;
  v47 = v13 & 0x5B ^ 0x88;
  v48 = (v13 ^ 0x4A) & (2 * ((v13 ^ 0x4A) & (2 * ((v13 ^ 0x4A) & (2 * ((v13 ^ 0x4A) & (2 * ((v13 ^ 0x4A) & (2 * ((v13 ^ 2) & (2 * v47) ^ v47)) ^ v47)) ^ v47)) ^ v47)) ^ v47)) ^ v47;
  v49 = (v39 - v44) ^ (v42 & 0xC662 ^ -v42 & 0x7611AEBA12E8C662 | v42 & 0x399D ^ -v42 & 0x89EE5145ED17399DLL);
  LOBYTE(v23) = ((v14[60] >> 4) | (16 * v14[60])) + (~(v14[60] >> 3) | 0xF5) - 122;
  v50 = v14[59];
  v51 = v49 + v39;
  v52 = v14[29];
  v53 = ((v32 ^ 0x6E ^ (-84 * v32)) + 77);
  v54 = ((v14[64] - ((2 * v14[64]) & 0x120u) + 1845082053) << 32) - 0x3500000000;
  STACK[0x6D0] = v18;
  LOBYTE(v17) = *(v18 + ((v17 ^ (2 * ((v17 ^ 0x60) & (2 * ((v17 ^ 0x60) & (2 * ((v17 ^ 0x60) & (2 * ((v17 ^ 0x60) & (2 * (v17 & (2 * (v17 & (2 * v17) & 0x42 ^ v45)) ^ v45)) ^ v45)) ^ v45)) ^ v45)) ^ v45))) ^ 0x3Cu));
  v55 = ((v46 - ((2 * v46) & 0xFFFFFFFFFFFFFF1FLL)) << 24) + 0x22B39F08F000000;
  v56 = ((v10 - ((2 * v10) & 0xBC) + 253) << 56) - 0x1F00000000000000;
  v57 = v3[34] - ((2 * v3[34]) & 0x78) - 0x2D0B6539BC55C5C4;
  v58 = v43 ^ (((v7 - ((2 * v7) & 0x56) - 1406358427) << 32) - 0x3A00000000) ^ (((((v17 ^ 0xF1) - 87) ^ (-90 - v17) ^ ((v17 ^ 0x5E) + 8)) - 23) << 40) ^ ((v51 ^ (v53 << 24)) - ((2 * (v51 ^ (v53 << 24))) & 0x1CBAA9264433EF6) + 0xE5D54932219F7BLL);
  v59 = (((-111 * (v23 ^ 0xEA ^ *(v24 + (v23 ^ 0x55)))) << 16) ^ 0xCA1CEAFBF7E3CA72) & (v57 ^ 0x2CC9743DB455E4C2) | v57 & 0x102000000000118DLL;
  v60 = ((v14[28] - ((2 * v14[28]) & 0xB2u) + 11796073) << 40) - 0x100000000000;
  v61 = (v60 ^ 0x4C010269FC06ED7ELL) & ((((v52 - ((2 * v52) & 0x16Eu) + 14021) << 48) - 0xE000000000000) ^ 0xB7D5B69FC06ED7ELL);
  v62 = v50 - ((2 * v50) & 0xF8);
  v63 = v60 & 0x8235A40000000000;
  v64 = v14[74] - ((2 * v14[74]) & 0x1E0) - 0x5F9294DE85086310;
  v65 = ((v3[88] - ((2 * v3[88]) & 0x28u) + 9053745) << 40) - 0x1D0000000000;
  v66 = *(v18 + ((v13 ^ (2 * v48)) ^ 0x42u));
  v67 = v9[39];
  v68 = (v64 & 0x804820000244018ELL ^ 0x42060A9CD090EE65 ^ ((((v9[22] - ((2 * v9[22]) & 0xC0)) << 8) - 0x4F7B1461318CA000) ^ 0xC283F28896C89E71) & (v64 ^ 0x5F9294DE8508638BLL)) & (((v62 << 16) + 0x4ED14CD08C7C0000) ^ 0xB12EB32F7383FFFFLL) ^ ((v62 << 16) + 0x4ED14CD08C7C0000) & 0x4E904C5005900000;
  v69 = v58 & 0xBF0A5A051D18F2C3 ^ v56 & 0xBFFFFFFFFFFFFFFFLL | v58 & 0x40F5A5FAE2E70D3CLL ^ v56 & 0x4000000000000000;
  v70 = (v55 & 0x20928626E000000 ^ 0x4362F9EFC58220C3 ^ (v59 ^ 0x321AFF66663C714ALL) & (v55 ^ 0xFDD4C60F70FFFFFFLL)) & (v54 ^ 0x9206486FFFFFFFFFLL) ^ v54 & 0x44B03BED00000000;
  v71 = (v70 ^ 0x1202086DA5A27400) & ((((v41 - ((2 * v41) & 0xEEEEEEEEEEEEEEEELL)) << 8) - 0x50CC2BB331A18900) ^ 0x3F00C44F7FF23D54);
  v72 = v70 & 0x6FCCEFFC4E53B5ABLL;
  v73 = (v68 ^ 0x12680257180C548) & ((((v6[24] - ((2 * v6[24]) & 0x188)) << 24) - 0x47BE15E03C000000) ^ 0x233B5A9D1580C548) ^ v68 & 0x64854F7D2E7F3AB7;
  v74 = ((v3[44] - 2 * (v3[44] & 0x3Fu) + 229) << 56) - 0x2600000000000000;
  v75 = (v65 ^ 0x75D9E27559D1791ELL) & ((((v3[90] - ((2 * v3[90]) & 0x1Au) + 34123) << 48) - 0x3E000000000000) ^ 0x23E1F67559D1791ELL) ^ v65 & 0x803090000000000;
  v76 = v75 ^ 0xAEEEF67559D1791ELL;
  v77 = (v73 ^ 0x4002520002023) & ((((v6[67] - ((2 * v6[67]) & 0xDCu) + 1675826291) << 32) - 0x500000000) ^ 0xE555E2992D4F21FBLL) ^ v73 & 0x79490908D2B0DE04;
  v78 = (v75 ^ 0xAEEEF67559D1791ELL) - (v75 & 0xAA0D04054900310CLL ^ 0xFFFEFF7F59D3FB1FLL ^ (v75 ^ 0x5110090A00028201) & (v74 ^ 0xEAF2FB7A10D3CA13));
  v79 = 0xB53ECA555833CD66 - (((v74 ^ 0xA32BCE325E28F9F3) - 0x56EAFB98F9E4CB69) ^ ((v74 ^ 0xA38560697E58D5F3) - 0x564455C3D994E769) ^ ((v74 ^ 0xBFAEAE5B20702C00) - 0x4A6F9BF187BC1E9ALL));
  v80 = v74 ^ 0xF5C135AAA7CC329ALL ^ (v78 - ((2 * v78) & 0x95826B554F986534) + 0x4AC135AAA7CC329ALL);
  LODWORD(v28) = (((v67 >> 4) | (16 * v67)) - ((2 * ((v67 >> 4) | (16 * v67))) & 0x1FA2) - 47) ^ *(v24 + ((((v9[39] >> 4) | (16 * v9[39])) - ((2 * ((v9[39] >> 4) | (16 * v9[39]))) & 0xA2) - 47) ^ 1));
  HIDWORD(v81) = v28 ^ 6;
  LODWORD(v81) = (v28 ^ 0xFFFFFFBF) << 24;
  v82 = v80 ^ -v80 ^ (v79 - (v80 ^ v79));
  LODWORD(v28) = (((v81 >> 27) ^ 0x77) >> 5) | (8 * ((v81 >> 27) ^ 0x77));
  v83 = (v82 - (v74 ^ 0xBF00000000000000)) ^ v76;
  v84 = ((v14[38] - ((2 * v14[38]) & 0x66u) - 1232787636) << 32) - 0x1900000000;
  v85 = v82 & v76;
  LOBYTE(v28) = -21 - 111 * (v28 - ((2 * v28) & 0x76));
  v86 = v69 ^ STACK[0x780];
  v87 = (~v28 | 0xFFFFFFFFFFFFFF00) & ((((v14[39] - ((2 * v14[39]) & 0x28)) << 8) - 0x59C928366AA3EC00) ^ 0x9A38F2EDE005AE4FLL) | v28 & 0xB0;
  v88 = ((v6[48] - ((2 * v6[48]) & 0xCA)) << 24) + 0x1C835A8D65000000;
  v89 = v61 ^ v63 ^ v72 ^ v71 ^ (((((v66 ^ 0xFFFFFF9E) + 35) ^ ((v66 ^ 0x22) - 97) ^ ((v66 ^ 0xEC) + 81)) + 6) << 56) ^ v86;
  v90 = v84 & 0x20856F6D00000000 ^ 0xB6F5B7B315B7E976 ^ (v88 & 0x803120EA2000000 ^ 0xA8D3CF1F6866976DLL ^ (v87 & 0x7CA2F83CD581059CLL ^ 0x89FF6A6622AE8474 ^ (v87 ^ 0xC3F1DADB8AA64020) & ((((v14[96] - ((2 * v14[96]) & 0x84)) << 16) + 0x3B4424827B420000) ^ 0xB8192341513CFA63)) & (v88 ^ 0xE37CA5729AFFFFFFLL)) & (v84 ^ 0x497AD8CCFFFFFFFFLL);
  v91 = ((v6[78] - ((2 * v6[78]) & 0x144u) + 25545) << 48) - 0x27000000000000;
  v92 = ((((v3[20] - ((2 * v3[20]) & 0x1B2u) + 10381826) << 40) - 0x290000000000) ^ 0xD43E9B9DCA171239) & (v91 ^ 0x9C5DFFDFFABF1EFFLL) ^ v91 & 0x35A8000000000000 ^ (v90 - ((2 * v90) & 0x1A712BFE82C9A690) + 0xD3895FF4164D348);
  v93 = v77 ^ (v83 + 2 * v85 - ((2 * (v83 + 2 * v85)) & 0xCF36CC04EB3AAE98) - 0x186499FD8A62A8B4);
  v94 = __ROR8__(__ROR8__(v92 & 0x2AF9E52701AD6DF7 ^ 0x1DB0C3A1CE5A4F65 ^ (v92 ^ 0x9900089874001208) & ((((*v14 - ((2 * *v14) & 0x60u) + 67) << 56) - 0x1300000000000000) ^ 0xE5061AD8FE529208), 54) ^ 0xFC716CC4A67073A9, 10);
  v95 = __ROR8__(STACK[0x690], 5);
  v96 = (v94 ^ v95) - ((2 * (v94 ^ v95)) & 0xF15491CBE2478EEELL);
  v97 = v94 ^ v93;
  v96 -= 0x755B71A0EDC3889;
  v98 = v97 ^ 0xAFB3D267AFB8A6C5;
  v99 = v93 ^ 0xA8E6657DA1649E4DLL;
  v93 ^= 0x57199A825E9B61B2uLL;
  v100 = (v89 ^ 0x92A750F37B7B913) & v93;
  v101 = (v97 ^ 0xAFB3D267AFB8A6C5) & v99;
  v102 = v89 ^ 0xF6D58AF0C84846ECLL;
  v103 = v96 ^ (v89 ^ 0xF6D58AF0C84846ECLL) & (v86 ^ 0xFA2B8F1A8DC94958);
  v104 = (v96 ^ 0x60A07696747F926BLL) & (v97 ^ 0x504C2D985047593ALL);
  v105 = v101 ^ v102;
  v106 = (v96 ^ 0x9F5F89698B806D94) & (v86 ^ 0x5D470E57236B6A7) ^ v98;
  v107 = v103 ^ v106 ^ 0x38AA0FE946C55BBLL;
  v108 = v86 ^ v100 ^ v103 ^ 0x7D5DDDA7970088A1;
  v109 = __ROR8__(v107, 28);
  v110 = v105 ^ (v104 + v93 - 2 * (v104 & v93)) ^ 0x468584D5EEC58272;
  v111 = ((v107 << 36) - v109) ^ -(v107 >> 28);
  v112 = (v111 ^ v109) + 2 * (v111 & (v107 << 36));
  v113 = v110 ^ __ROR8__(v110, 10) ^ (v110 >> 17) ^ (v110 << 47);
  v114 = v106 ^ 0x8717DFE2A3B1E3F2 ^ ((v106 ^ 0x8717DFE2A3B1E3F2) << 23) ^ ((v106 ^ 0x8717DFE2A3B1E3F2) >> 7) ^ (((v106 ^ 0x8717DFE2A3B1E3F2) >> 41) | ((v106 ^ 0x8717DFE2A3B1E3F2) << 57));
  v115 = v113 & v114;
  v116 = v113 + v114;
  v117 = v108 ^ __ROR8__(v108, 61) ^ (v108 >> 39) ^ (v108 << 25);
  v118 = v107 ^ (v107 << 45) ^ (v107 >> (v40 & 0x13) >> (v40 & 0x13 ^ 0x13u)) ^ v114 ^ v112;
  v119 = v105 ^ 0x6E807D10291F7139 ^ __ROR8__(v105 ^ 0x6E807D10291F7139, 1) ^ ((v105 ^ 0x6E807D10291F7139) >> 6) ^ ((v105 ^ 0x6E807D10291F7139) << 58);
  v120 = v116 - 2 * v115;
  v121 = v117 ^ v119;
  v122 = v120 & ~v113 ^ v117 ^ v119;
  v123 = v118 ^ v119 & ~v117;
  v124 = v117 & ~v118 ^ v120;
  v125 = ~(v124 ^ v123);
  v126 = v124 ^ v123 ^ 0x56AAE6BF024184FFLL;
  STACK[0x690] = ~v126;
  if ((v120 & 0x8000000000) != 0)
  {
    v127 = 0xFFFFFF8000000000;
  }

  else
  {
    v127 = 0x8000000000;
  }

  v128 = v113 ^ 0x3378C4AC0693E070 ^ v122 ^ ((v127 + v120) ^ 0xFFFFFF7FFFFFFFFFLL) & v118;
  v129 = v117 ^ 0xE6CB410EAF9D375FLL ^ v113 & ~v121 ^ v123;
  v130 = v124 ^ 0x62C1F2A9E89E4C79;
  v131 = v122 ^ 0x15C7857573502C40 ^ (v122 << 58) ^ ((v122 ^ 0x15C7857573502C40) >> 1) ^ (((v122 ^ 0x15C7857573502C40) >> 6) | (v122 << 63));
  v132 = ((v129 ^ (v129 >> 61)) + 8 * v129 - 2 * ((8 * v129) & v129)) ^ __ROR8__(v129, 39);
  v133 = v132 ^ v131;
  v134 = v128 ^ (v128 << 47) ^ (v128 >> 10) ^ ((v128 >> 17) | (v128 << 54));
  v135 = (v124 ^ 0x62C1F2A9E89E4C79) << 23;
  if (LODWORD(STACK[0x6B0]) == 115)
  {
    v137 = ~(2 * (v132 ^ v131)) + (v132 ^ v131);
  }

  else
  {
    v137 = v134 ^ ~(~(2 * (v132 ^ v131)) + (v132 ^ v131));
  }

  v136 = (v130 ^ (v130 >> 7)) + (v130 << 57) - 2 * ((v130 << 57) & v130);
  v138 = (v136 ^ (v130 >> 41)) + (v135 ^ -v135) + (v136 ^ (v130 >> 41)) - ((v136 ^ (v130 >> 41) | v135) ^ v136 & v135) - 2 * (((v136 ^ (v130 >> 41)) - ((v136 ^ (v130 >> 41) | v135) ^ v136 & v135)) & (v135 ^ -v135));
  v139 = v126 ^ __ROR8__(v126, 19) ^ (v126 >> 28) ^ (v126 << 36) ^ v138;
  v140 = v138 ^ v134;
  v141 = v139 ^ v131 & ~v132;
  v142 = v138 & ~v134 ^ v133;
  v143 = v132 & ~v139 ^ v140;
  v144 = v132 ^ 0xEEAFC2D3EC65C482 ^ v137 & v134 ^ v141;
  v145 = v143 ^ v141;
  v146 = v144 >> v102 >> (v102 & 0x3F ^ 0x3F);
  v147 = v142 ^ v134 ^ (__ROR8__(__ROR8__(v140, 46) ^ 0x2F78FDE7D6E171D3, 18) ^ 0xA38B3421C0860A47) & v139;
  v148 = v146 << 63;
  v149 = (v143 ^ 0x99E8C06D49D6D666) - 0x33D180DA93ADACCCLL + ((2 * v143) & 0x33D180DA93ADACCCLL) - ((2 * v143) & 0xCC2E7F256C525334);
  v150 = ((v144 + (v146 >> 1)) & 0x7FFFFFFFFFFFFFFFLL ^ (v144 >> 61)) & 0x7FFFFFFFFFFFFFFFLL | (v146 << 63);
  v151 = v149 << 23;
  v152 = v149 ^ __ROR8__(v149, 7) ^ (v149 >> 41);
  v153 = (v144 >> 39) ^ (8 * v144) ^ (v144 << 25) ^ v150;
  v154 = v152 + v151 - 2 * (v152 & v151);
  *(&v155 + 1) = v145;
  *&v155 = v145 ^ 0x7D752DD7DCC251B6;
  v156 = v145 ^ 0x7D752DD7DCC251B6 ^ __ROR8__(v145 ^ 0x7D752DD7DCC251B6, 19) ^ (v155 >> 28) ^ v154;
  v157 = v142 ^ 0xE7E200F443AAFCDFLL ^ ((v142 ^ 0xE7E200F443AAFCDFLL) << 58) ^ ((v142 ^ 0xE7E200F443AAFCDFLL) >> 1) ^ (((v142 ^ 0xE7E200F443AAFCDFLL) >> 6) | ((v142 ^ 0xE7E200F443AAFCDFLL) << 63));
  v158 = __ROR8__(__ROR8__(v147 ^ __ROR8__(v147 ^ 0xD8700A4CB46F51B0, 10) ^ 0xEA09627070323158, 35) ^ 0x988BAC1D064F2D07, 29) ^ __ROR8__(v147 ^ 0xD8700A4CB46F51B0, 17);
  v159 = v158 ^ v154;
  v160 = v153 ^ v157;
  v161 = v154 & ~v158 ^ v153 ^ v157;
  v162 = (v156 ^ 0x33DAE49FFFFFFFFFLL) & v153;
  v156 ^= 0xCC251B6000000000;
  v163 = v156 ^ v157 & ~v153;
  v164 = v159 ^ v162;
  v165 = v156 & ~v159;
  v166 = v158 & ~v160 ^ v153 ^ v163;
  v167 = (v164 + v163 + 2 * (v164 & v163) - 4 * (v164 & v163)) ^ 0xC5AB08FD33C1B5A7;
  v168 = v164 ^ 0xA0B866C79876C7E4;
  v169 = v158 ^ 0xCC98C5A695FE0D08 ^ v165 ^ v161;
  v170 = (v161 ^ 0x32237A0B9C0468F5) << 58;
  v171 = v161 ^ 0x32237A0B9C0468F5 ^ __ROR8__(v161 ^ 0x32237A0B9C0468F5, 1) ^ ((v161 ^ 0x32237A0B9C0468F5) >> 6);
  v172 = v171 ^ v170;
  *(&v155 + 1) = v166 ^ 0x318CC080266427A2 ^ ((v166 ^ 0x318CC080266427A2) >> 61);
  *&v155 = v166 ^ 0x318CC080266427A2;
  v173 = v171 & v170;
  v174 = (v155 >> 42) ^ __ROR8__(v166 ^ 0x318CC080266427A2, 39) & 0xFFFFFFFFFE3FFFFFLL ^ 0xDD823F9B9C496F5ELL;
  v175 = v171 | v170;
  if (v148)
  {
    v176 = v175;
  }

  else
  {
    v176 = v172;
  }

  v177 = v176 & ~v173;
  v178 = __ROR8__(__ROR8__((v166 ^ 0x318CC080266427A2) << 25, 36) ^ __ROR8__((v166 >> 39) ^ __ROR8__(v174, 22) ^ 0x25BD7B76089D77F0, 36) ^ 0x7BB0789756EA60B8, 28);
  v179 = v178 ^ 0x6EA60B87BB078975 ^ v177;
  v180 = v169 ^ __ROR8__(v169, 10) ^ __ROR8__(v169, 17);
  v181 = v168 ^ (v168 << 23) ^ ((v168 >> 41) ^ (v168 >> 7) | (v168 << 57));
  v182 = (v167 << 45) ^ (v167 << 36) ^ v181 ^ ((v167 ^ (v167 >> 19) ^ -(v167 ^ (v167 >> 19)) ^ ((v167 >> 28) - (v167 ^ (v167 >> 19) ^ (v167 >> 28)))) + (v167 >> 28));
  v183 = v182 ^ (v178 ^ 0x9159F47844F8768ALL) & v177;
  v184 = (v178 ^ 0x6EA60B87BB078975) & ~v182 ^ v180 ^ v181;
  v185 = (v180 & ~v179 ^ v178 ^ 0x6EA60B87BB078975) + v183 - 2 * ((v180 & ~v179 ^ v178 ^ 0x6EA60B87BB078975) & v183);
  v186 = v185 ^ 0x68ABEAE5737B7693;
  v187 = (v185 ^ 0x68ABEAE5737B7693) >> 39;
  v188 = v179 ^ v181 & ~v180;
  v189 = v182 & ~(v180 ^ v181) ^ v180 ^ v188;
  v190 = 8 * (v185 ^ 0x68ABEAE5737B7693);
  v191 = v183 ^ 0xE78A8F8F26E90B2BLL ^ v184;
  v192 = ((v184 - (v184 ^ 0xF14770720A54D309)) ^ 0xFFFFFFFFFFFFFFFELL) + v184;
  v193 = (v190 & v186 | 3) ^ (v185 ^ 0x68ABEAE5737B7693 ^ (v185 >> 61) | v190) ^ -((v190 & v186 | 3) ^ (v185 ^ 0x68ABEAE5737B7693 ^ (v185 >> 61) | v190)) ^ (v187 - ((v190 & v186 | 3) ^ (v185 ^ 0x68ABEAE5737B7693 ^ (v185 >> 61) | v190) ^ v187));
  v194 = ((v186 << 25) ^ (-33554432 * v186) ^ (v193 + v187 - ((v193 + v187) ^ (v186 << 25)))) + v193 + v187;
  *(&v195 + 1) = v188;
  *&v195 = v188 ^ 0xA2A16E7D4060C2ACLL;
  v196 = v188 ^ 0xA2A16E7D4060C2ACLL ^ ((v188 ^ 0xA2A16E7D4060C2ACLL) >> 6) ^ (v195 >> 1) ^ ((v188 ^ 0xA2A16E7D4060C2ACLL) << 58);
  v197 = v192 << 23;
  v198 = ((v192 >> 7) ^ (v192 >> 41) | (v192 << 57)) ^ v192;
  v199 = v194 ^ v196;
  v200 = (v197 ^ -v197 ^ (v198 - (v198 ^ v197))) + v198;
  v201 = v191 ^ __ROR8__(v191, 19) ^ (v191 >> 28) ^ (v191 << 36) ^ v200;
  v202 = v189 ^ 0x1DE76D00F7B2971ELL ^ ((v189 ^ 0x1DE76D00F7B2971ELL) >> 17) ^ __ROR8__(v189 ^ 0x1DE76D00F7B2971ELL, 10) ^ ((v189 ^ 0x1DE76D00F7B2971ELL) << 47);
  v203 = v194 & ~v201 ^ v200 ^ v202;
  v204 = v196 & ~v194 ^ v201;
  v205 = v204 ^ 0x2139B223389E38FALL ^ v203;
  *&v195 = __ROR8__(v205, 19);
  v206 = (v195 - ((2 * v195) & 0x97CAEDF783758554) - 0x341A89043E453D56) ^ v205;
  v207 = v199 ^ v200 & ~v202;
  v208 = v194 ^ v202 & ~v199 ^ v204 ^ 0x9503C0FF64ECBF78;
  v209 = v201 & ~(v200 ^ v202) ^ v202 ^ v207;
  v210 = v207 ^ 0x60319059DF71CA55;
  v211 = v203 & 0xFFFFFFFFFFFDFFFFLL;
  v212 = (v205 >> 28) ^ -(v205 >> 28) ^ ((((v206 ^ 0x76736DC96FBF28A1) + 0x7C9F5860EC99B6A0) ^ ((v206 ^ 0x9DDE3924D9FDB397) - 0x68CDF372A524D256) ^ ((v206 ^ 0x2048221677F8599CLL) + 0x2AA417BFF4DEC7A3)) - (((v206 ^ (v205 >> 28) ^ 0x77F0153048322B2FLL) + 0x706B66302C7E9CC5) ^ ((v206 ^ (v205 >> 28) ^ 0x41A0560243EF1637) + 0x463B250227A3A1DDLL) ^ ((v206 ^ (v205 >> 28) ^ 0xFDB535C9CA67FFB2) - 0x5D1B93651D4B7A6)) + 0xB74C2A9635A18ADLL);
  v213 = (((v206 ^ 0xB5E1A082E90117D0) - 0x40F26AD495D87611) ^ ((v206 ^ 0xAC2295FAC5709C5ELL) - 0x59315FACB9A9FD9FLL) ^ ((v206 ^ 0xD2264383EDCB4924) - 0x273589D5911228E5)) - 0x6ED5D0A0A9867649 + (((v212 ^ 0x4AD8A82C285800CDLL) - 0x5D83084717D67C16) ^ ((v212 ^ 0x4F98EE16EB16327DLL) - 0x58C34E7DD4984EA6) ^ ((v212 ^ 0x540463AC34E32B0) - 0x121BE651FCC04E6BLL));
  v214 = (v213 ^ 0xD406093D2578C60FLL) & (2 * (v213 & 0xC5282DB9A678968FLL)) ^ v213 & 0xC5282DB9A678968FLL;
  v215 = ((2 * (v213 ^ 0x5416186C61D8E207)) ^ 0x227C6BAB8F40E910) & (v213 ^ 0x5416186C61D8E207) ^ (2 * (v213 ^ 0x5416186C61D8E207)) & 0x913E35D5C7A07488;
  v216 = v215 ^ 0x9102145440A01488;
  v217 = (v215 ^ 0x20218183006000) & (4 * v214) ^ v214;
  v218 = ((4 * v216) ^ 0x44F8D7571E81D220) & v216 ^ (4 * v216) & 0x913E35D5C7A07488;
  v219 = (v218 ^ 0x38155506805000) & (16 * v217) ^ v217;
  v220 = ((16 * (v218 ^ 0x91062080C1202488)) ^ 0x13E35D5C7A074880) & (v218 ^ 0x91062080C1202488) ^ (16 * (v218 ^ 0x91062080C1202488)) & 0x913E35D5C7A07480;
  v221 = (v220 ^ 0x1122155442004000) & (v219 << 8) ^ v219;
  v222 = (((v220 ^ 0x801C208185A03408) << 8) ^ 0x3E35D5C7A0748800) & (v220 ^ 0x801C208185A03408) ^ ((v220 ^ 0x801C208185A03408) << 8) & 0x913E35D5C7A07400;
  v223 = v221 ^ 0x913E35D5C7A07488 ^ (v222 ^ 0x103415C580200000) & (v221 << 16);
  v224 = v213 ^ (2 * ((v223 << 32) & 0x113E35D500000000 ^ v223 ^ ((v223 << 32) ^ 0x47A0748800000000) & (((v222 ^ 0x810A201047807488) << 16) & 0x113E35D500000000 ^ 0x2A305500000000 ^ (((v222 ^ 0x810A201047807488) << 16) ^ 0x35D5C7A000000000) & (v222 ^ 0x810A201047807488))));
  v225 = v203 & 0x20000;
  v226 = v224 ^ (v205 << 36);
  v227 = ((v210 ^ (v210 << 63)) + (v210 >> 1) - 2 * ((v210 >> 1) & v210)) ^ (v207 >> 6);
  v228 = v208 ^ __ROR8__(v208, 61) ^ (v208 >> 39);
  v229 = v228 ^ (v208 << 25);
  v230 = (v225 | 0xA39DBBE78CD033FCLL) ^ v211;
  v231 = v230 ^ (v230 >> 7);
  v232 = (v209 ^ 0x884CD14C357D2C36) << ((STACK[0x6E0] >> 3) & 0xF ^ 0xB) << ((STACK[0x6E0] >> 3) & 0xF ^ 0x24);
  v233 = v67 & 8;
  v234 = (v226 ^ 0x21DB38240671E29 ^ (STACK[0x710] & 1 | 0xE7099C90695F61B6)) >> v233;
  v6[41] = v224 ^ 0x9F;
  v6[53] = v234 >> (v233 ^ 8u);
  v235 = v209 ^ (v209 >> 17) ^ __ROR8__(v209 ^ 0x884CD14C357D2C36, 10);
  v236 = *(STACK[0x6F0] + (((v226 ^ 0xE5142F1229387F9FLL) >> (v231 & 0x10) >> (v231 & 0x10 ^ 0x10)) ^ 0x72)) + 51;
  LOBYTE(v209) = -84 * v236 - ((((88 * v236) & 0xDF ^ 0xA2) + 9) ^ (((88 * v236) & 0xDF ^ 0xAC) + 7) ^ (((88 * v236) & 0xDF ^ 0xE) - 91));
  LOBYTE(v206) = v209 - 114;
  LOBYTE(v209) = ((113 - v209) & 0x8B | 0x54) ^ (v209 - 114) & 0xAA;
  v14[57] = ((HIDWORD(v226) ^ 0x21DB382u) >> 24) ^ 0xE7;
  LOBYTE(v209) = v206 ^ v236 ^ (2 * ((v206 ^ 0xA) & (2 * ((v206 ^ 0xA) & (2 * ((v206 ^ 0xA) & (2 * ((v206 ^ 0xA) & (2 * ((v206 ^ 0xA) & (2 * ((v206 ^ 0xA) & (2 * v209) ^ v209)) ^ v209)) ^ v209)) ^ v209)) ^ v209)) ^ v209));
  v237 = ((v230 >> 41) | (v230 << 57)) ^ (v230 << 23) ^ v231;
  v6[22] = (((v209 ^ 0xE8) - 33) ^ ((v209 ^ 0xF7) - 62) ^ ((v209 ^ 0x3E) + 9)) + 53;
  v238 = STACK[0x648];
  *(v238 + 108) = ((v226 ^ 0x21DB38240671E29) >> 48) ^ 9;
  *(v238 + 118) = ((v226 ^ 0xE5142F1229387F9FLL ^ -(v226 ^ 0xE5142F1229387F9FLL) ^ (1108168489 - (v226 ^ 0x126B3530B6))) + 1108168489) >> 32;
  v239 = STACK[0x680];
  v239[36] = ((WORD2(v226) ^ 0xB382) >> 8) ^ 0x9C;
  v239[34] = BYTE3(v224) ^ 0x29;
  v240 = STACK[0x6D0];
  LOBYTE(v224) = *(STACK[0x6D0] + (113 * v228) - ((34 * v228) & 0x32u) + 25);
  v14[10] = BYTE1(v228);
  v239[14] = BYTE2(v228);
  v14[71] = HIBYTE(v229);
  v6[25] = (((v224 ^ 0xE1) + 94) ^ ((v224 ^ 0x15) - 86) ^ ((v224 ^ 0xA4) + 25)) + 6;
  v14[27] = BYTE4(v229);
  v6[60] = BYTE5(v229);
  v6[49] = BYTE3(v229);
  v6[68] = BYTE6(v229);
  v241 = v6;
  *(v238 + 34) = v227 ^ 0x29;
  LOBYTE(v229) = *(v240 + ((113 * (BYTE1(v227) ^ 0xC7)) ^ 0x19));
  v6[40] = BYTE3(v227) ^ 0x67;
  v14[64] = BYTE4(v227) ^ 0x41;
  v14[60] = BYTE2(v227) ^ 0x7D;
  v14[28] = BYTE5(v227) ^ 0xC6;
  v14[2] = (((v229 ^ 0xD6) + 1) ^ ((v229 ^ 0x72) - 91) ^ ((v229 ^ 0xF4) + 35)) + 108;
  v14[29] = BYTE6(v227) ^ 0x80;
  v14[74] = v235 ^ 0x88;
  v14[59] = BYTE2(v235) ^ 0xDB;
  *(v238 + 90) = ((v235 ^ v232) >> 48) ^ 0x4C;
  v6[24] = BYTE3(v235) ^ 0x5D;
  v14[40] = ((v227 ^ (v210 << 58)) >> 56) ^ 1;
  *(v238 + 88) = (((v235 ^ v232) >> 32) >> 8) ^ 0x95;
  v239[39] = (v230 >> 41) ^ v231;
  v242 = v237 >> 8 >> ((v235 ^ v232) & 8 ^ 8);
  v239[22] = BYTE1(v235) ^ 0x36;
  v243 = (v235 ^ v232 ^ 0x884C956A5DDB3688) >> (v125 & 0x28) >> (v125 & 0x10) >> (STACK[0x690] & 0x38);
  *(v238 + 44) = (v243 - ((2 * v243) & 0x34) + 26) ^ 0x1A;
  v6[67] = ((v235 ^ v232) >> 32) ^ 0x6A;
  v14[39] = ((v230 >> 41) ^ v231) >> 8;
  v14[96] = ((v242 >> ((v235 ^ v232) & 8)) - ((2 * (v242 >> ((v235 ^ v232) & 8))) & 0xF8) + 124) ^ 0x7C;
  LOBYTE(v210) = *(v240 + (((113 * BYTE3(v237)) - ((113 * BYTE3(v237)) ^ 0x19)) ^ 0xFFFFFFFE) + (113 * BYTE3(v237)));
  v6[48] = (((v210 ^ 0x3C) + 63) ^ ((v210 ^ 0x9D) - 96) ^ ((v210 ^ 0xF1) - 12)) - 96;
  LOBYTE(v210) = *(v240 + ((113 * BYTE4(v237)) ^ 0x19));
  v6[78] = BYTE6(v237);
  v14[38] = (((v210 ^ 0x60) + 35) ^ ((v210 ^ 0xA8) - 21) ^ ((v210 ^ 0x98) - 37)) - 32;
  *(v238 + 20) = BYTE5(v237);
  LOBYTE(v210) = *(v240 + ((113 * HIBYTE(v237)) ^ 0x19));
  *v14 = (((v210 ^ 0xE7) + 89) ^ ((v210 ^ 0x60) - 32) ^ ((v210 ^ 0xD7) + 105)) + 3;
  v244 = STACK[0x688];
  *(*STACK[0x688] + 4) = STACK[0x780] + 1;
  v245 = *v244;
  LODWORD(v224) = *(v238 + 18);
  v246 = *(v238 + 26);
  v247 = v14[23];
  v248 = v239[11];
  v249 = v6[61];
  v250 = ((v6[63] - ((2 * v6[63]) & 0x3333u) + 4113821) << 40) - 0x40000000000;
  LODWORD(v244) = (*(v238 + 86) >> 7) | (2 * *(v238 + 86));
  v251 = ((*(v238 + 30) - ((2 * *(v238 + 30)) & 0xEE)) << 8) - 0x725C2766AE7E8900;
  STACK[0x6F0] = v246;
  v252 = ((v246 - ((2 * v246) & 0x1AA)) << 24) - 0x762AC28B2B000000;
  v253 = *(v245 + 9);
  v254 = v245;
  STACK[0x710] = v245;
  v255 = *(&off_101353600 + LODWORD(STACK[0x720]) + 1352);
  v256 = v255;
  STACK[0x720] = v255;
  LOBYTE(v244) = *(v255 + ((v244 - ((2 * v244) & 0x5E) - 81) ^ 0xD0) + 262);
  v257 = *(v238 + 113);
  LODWORD(v255) = v239[40];
  v258 = ((v248 - ((2 * v248) & 0x9E)) << 16) + 0x2EDD958184F0000;
  v259 = v247 - ((2 * v247) & 0xD4) + 0x10BAED3C66FA36ALL;
  v260 = ((v14[67] - ((2 * v14[67]) & 0xAu) - 1652597976) << 32) - 0x2300000000;
  v261 = v14[22];
  v262 = v253 - ((2 * v253) & 0xE8) + 0x1489DB1DF6FADC74;
  v263 = v241[62];
  v264 = v241[9] - ((2 * v241[9]) & 0x118) - 0x59D5FA459EE00074;
  v265 = ((((((v244 - 93) ^ 0x8Du) << 8) ^ 0xE29561C4D47569A8) & (v252 ^ 0x7B2246930375FFECLL) | v252 & 0x9401C3B2B000000) ^ 0x4C7A451204E490EALL) & (v262 ^ 0xEB7624E20905239ALL);
  v266 = (v251 ^ 0x424C0462021088FFLL) & (v259 ^ 0xC3E4BAB1957F338DLL) ^ v251 & 0xD00C89900EF6F00;
  v267 = (v260 ^ 0x6280A4FAFFFF2510) & (v258 ^ 0x4083D63132072510) ^ v260 & 0x9D11509600000000;
  v268 = *(v238 + 71);
  LODWORD(STACK[0x6E0]) = *(v238 + 120) - 2 * (*(v238 + 120) & 1);
  v269 = (v267 ^ 0x2080A080C0861086) & (v250 ^ 0x1B18DCA5E28E3196) ^ v267 & 0xDA22BA5A1D710400;
  v270 = (v269 ^ 0xA0121531CA69) & (v262 & 0x4200204806BDLL ^ 0xCCCE04F1C885852BLL ^ v265) ^ v269 & 0x949E81E8C6A30582;
  v271 = v268 - ((2 * v268) & 0x138);
  LOBYTE(v268) = v262 & 0x10;
  v272 = ((v224 - ((2 * v224) & 0x1D0) + 10218) << 48) - 0x2000000000000;
  v273 = ((v257 - ((2 * v257) & 0xFFFFFFFFFFFFFF0FLL)) << 8) + 0x8D4347E65A28700;
  v274 = ((v249 - ((2 * v249) & 0xBE)) << 24) - 0x93D11AEA1000000;
  v275 = ((v255 - ((2 * v255) & 0x5A) + 11583853) << 40) - 0x400000000000;
  v276 = v14[82];
  LODWORD(v255) = v14[4];
  LODWORD(v265) = *(v254 + 8) - ((2 * *(v254 + 8)) & 0xF0);
  v277 = v270 & 0xCB84A1556FA9ED34 ^ 0xFFFF7FFFFBDE7FDFLL ^ (v270 ^ 0x200) & (v272 ^ 0x13935EAA905612CBLL);
  LODWORD(STACK[0x6B0]) = *(v238 + 96) - ((2 * *(v238 + 96)) & 0xDA);
  v278 = ((v261 - 0x4D88A0D817D45115 - ((2 * v261) & 0x1D6)) ^ 0xB2775F27E82BAEEBLL) << (v268 ^ 0x10u) << v268;
  LODWORD(v268) = v239[13];
  v279 = v264 & 0x50001C30A2ALL ^ (v264 ^ 0x59D5FA459EE00051) & (v273 ^ 0x3A5DDED81F9E72D5) ^ 0x4D284AF05C900F80 ^ (v278 - ((2 * v278) & 0x7F434AAC4F5FE0BALL) + 0x7FA1A55627AFF05DLL);
  v280 = (((v255 - ((2 * v255) & 0x16) - 2046271217) << 32) - 0x400000000) ^ 0x8608610B00000000;
  STACK[0x6D0] = v277 - ((2 * v277) & 0x27D17CCEA98E8F3CLL);
  v281 = ((((v263 - ((2 * v263) & 0xB6)) << 16) - 0x76CE070DAA50000) ^ 0x6DAEBB71B08E0916) & (v266 ^ 0x30102304AC6EAE99) ^ v266 & 0x6AC25B016A2AF6E9;
  v282 = (v281 ^ 0x2000030028020008) & (v274 ^ 0xA0285BA939D7559DLL) ^ v281 & 0xA9154A079928AA62;
  v283 = v241[47];
  v284 = ((v271 << 24) - 0x1558CAD564000000) ^ 0xEAA7352A9C000000;
  v285 = v282 & 0xE8CC6621D62CF0EDLL ^ 0xDFFFFDFFFFD7FFFFLL ^ (v282 ^ 0x2000020008000000) & (v275 ^ 0xA7F2B4DE29D30F12);
  LODWORD(v271) = *(v238 + 93);
  v286 = v268 - ((2 * v268) & 0x160);
  v287 = v285 + v280 - 2 * (v285 & v280);
  LODWORD(v285) = v239[33];
  v288 = *(v238 + 53) - ((2 * *(v238 + 53)) & 0x12);
  v289 = ((v276 - ((2 * v276) & 0x1DA)) << 8) + 0x7A624728C94BED00;
  v290 = v279 | v284;
  v291 = v241[6];
  v292 = *(v238 + 1);
  v293 = v14[63] ^ 0xCCLL;
  STACK[0x780] = v256 + 6;
  v294 = ((((v285 - ((2 * v285) & 0x1B0) + 1628157) << 40) - 0x250000000000) ^ 0xC8968ADF8F1747FLL) & (v290 ^ 0xFFFFFFFDFEFB7DFFLL);
  v295 = v271 - ((2 * v271) & 0x24);
  LOBYTE(v293) = (*(v256 + 6 + v293) - 2) ^ 0xCA;
  LOBYTE(v271) = (v293 >> 4) | (16 * v293);
  v296 = ((v241[38] - ((2 * v241[38]) & 0x1F4)) << 8) - 0x6EEE827F5F410600;
  v297 = v241[56] - ((2 * v241[56]) & 0x178) + 0x57680BD6C6684EBCLL;
  v298 = ((v283 - ((2 * v283) & 0x1E8)) << 16) + 0x3044D3FF82F40000;
  v299 = v298 & 0x3000C1F681F80000 ^ 0xFB57DBFFFEF79629 ^ (v297 & 0x3000000040007C5 ^ 0x1C87A4BEB8DBE897 ^ (v297 ^ 0xA897F4293997B102) & (v289 ^ 0xAEB2F99F0B97953ALL)) & (v298 ^ 0xCFBB2C007D0BFFFFLL);
  v300 = v291 - ((2 * v291) & 0x20) + 0x40B94B1C5657E510;
  v301 = (v296 ^ 0xA9669C00664811A0) & (v300 ^ 0xBF46B4E3A9A81AA7) ^ v300 & 0x8008001001045FLL;
  v302 = (0xBF46B4E3A9A81AF0 - (((v300 ^ 0x9CF4A10339C87978) + 0x630B5EFCC6378688) ^ ((v300 ^ 0x2F554AA308350358) - 0x2F554AA308350358) ^ ((v300 ^ 0xF318A0BC67AA9F30) + 0xCE75F43985560D0))) ^ v300 ^ ((((v296 ^ 0xBDFDDF749B389231) + 0x476F2720D8C44EE3) ^ ((v296 ^ 0x4644B51F5CF9C059) - 0x4329B2B4E0FAE375) ^ ((v296 ^ 0x6AA817EB677FA868) - 0x6FC51040DB7C8B44)) - (((v301 ^ 0x7EBEF6EF3C58D033) + 0x6831D2BB37348CE0) ^ ((v301 ^ 0x69E0FC7C0F51DD18) + 0x7F6FD828043D81F5) ^ ((v301 ^ 0x2FA9E313E5FEE29BLL) + 0x3926C747EE92BE78)) - 0x3D0AB80005A67377);
  v303 = (((v296 ^ 0x7D47B2D70D3744B2) - 0x782AB57CB134679ELL) ^ ((v296 ^ 0x8523028B9516616BLL) + 0x7FB1FADFD6EABDB9) ^ ((v296 ^ 0x6975CDDC389FDFD9) - 0x6C18CA77849CFCF5)) + 0x52E340D63EA24E0BLL + (((v302 ^ 0xA22DFFC7D2E38CCLL) + 0xB02ADB4F56256FDLL) ^ ((v302 ^ 0xECC39F7F0C4B1A10) - 0x121C12C87BF88BDFLL) ^ ((v302 ^ 0xA6580B9F2732C7CCLL) - 0x5887862850815603));
  v304 = (((v14[66] - ((2 * v14[66]) & 0xCEu) + 12981899) << 40) - 0x240000000000) ^ 0xC616670000000000;
  v305 = (((((v14[56] - ((2 * v14[56]) & 0x12Eu) - 1855854661) << 32) - 0x2400000000) ^ 0x9161E79700000000) & 0xFFFFFFFF00FFFFFFLL | (v271 << 24)) + v299;
  v307 = *(v238 + 60);
  v308 = (v304 ^ -v304 ^ (v305 - (v305 ^ v304))) + v305;
  v309 = (((v265 + 142) << 56) - 0x1600000000000000) ^ (v307 - ((2 * v307) & 0x363902D2) + 0x2AD21B781B1C8169) ^ (((v286 + 7627) << 48) - 0x1B000000000000) ^ v287;
  v310 = ((*(v238 + 9) - ((2 * *(v238 + 9)) & 0x1FC)) << 24) - 0x125A92BA02000000;
  v311 = (((v14[49] - ((2 * v14[49]) & 0xB4u) + 235) << 56) - 0x1100000000000000) ^ (((v14[41] - ((2 * v14[41]) & 0x7Au) + 44385) << 48) - 0x24000000000000) ^ v308;
  v312 = (v310 & 0x648000019C000000 ^ 0xEDEF7D57FFD07F6ALL ^ ((v303 & 0x800 | v310) ^ 0x125A921201D07F6ALL) & ((((v241[17] - ((2 * v241[17]) & 0x68u) + 15680837) << 40) - 0x110000000000) ^ 0x662A495663D07F6ALL) | (((v292 - ((2 * v292) & 0x9A)) << 16) + 0x40B00D4B374D0000) ^ 0x40B00D4B374D0000) ^ v303 & 0xFFFFFFFFFFFFF7FFLL;
  v313 = ((v241[69] - ((2 * v241[69]) & 0x1ACu) + 460962566) << 32) - 0x3000000000;
  v314 = v313 ^ 0xFD1E7BF300000000;
  if (!v263)
  {
    v314 = 0xE667C1DA00000000;
  }

  v315 = v290 & 0xEBA14F52070E8B80 ^ (((LODWORD(STACK[0x6B0]) + 45401735) << 32) - 0x1A00000000) ^ (((v295 + 46) << 56) - 0x1C00000000000000) ^ (((v288 + 52249) << 48) - 0x10000000000000) ^ v294 ^ v309;
  v306 = v14[61] - ((2 * v14[61]) & 0x16);
  v316 = (((v306 + 152) << 56) - 0xD00000000000000) & 0x9C00000000000000 ^ ((((v306 + 152) << 56) - 0xD00000000000000) ^ 0x74FFAFDAEE7B3D50) & ((((v241[77] - ((2 * v241[77]) & 0x92u) + 8064) << 48) - 0x37000000000000) ^ 0x7C31AFDAEE7B3D50) ^ 0xEB78AFDAEE7B3D50 ^ ((v313 & 0x26181E900000000 ^ v314 & (v313 ^ 0x1B79BAD64C422900) ^ 0x26180C000000000 ^ v312 & 0x9DD62933A4156EFBLL) + (v313 & 0xCC00000000 ^ 0xC400000000 ^ v312 & 0x6229D6CC5BEA9104));
  v317 = v316 ^ v311;
  v318 = (STACK[0x6D0] - 0x6C174198AB38B862) ^ (((LODWORD(STACK[0x6E0]) + 173) << 56) - 0x2C00000000000000) ^ v316;
  v319 = v318 ^ 0xF80430F0061D00D6;
  v320 = v318 ^ 0x7FBCF0FF9E2FF29;
  v321 = -(v318 ^ 0x7FBCF0FF9E2FF29);
  v322 = (v317 ^ 0x88D760D4E3601E0) & (v311 ^ 0xC3AEBB66CD1395FALL) ^ v315 ^ 0xF4050455053B25A4;
  v323 = (v320 ^ v321 ^ (((v315 ^ 0xF4050455053B25A4) & (v309 ^ 0x59340595516DE635)) - (v320 ^ (v315 ^ 0xF4050455053B25A4) & (v309 ^ 0x59340595516DE635)))) + ((v315 ^ 0xF4050455053B25A4) & (v309 ^ 0x59340595516DE635));
  v324 = __ROR8__(v319 & (v309 ^ 0xA6CBFA6AAE9219CALL) ^ v317 ^ 0x88D760D4E3601E0, 11);
  v325 = (((v317 ^ 0x88D760D4E3601E0) - (v317 ^ 0xF77289F2B1C9FE1FLL)) ^ 0xFFFFFFFFFFFFFFFELL) + (v317 ^ 0x88D760D4E3601E0);
  v326 = __ROR8__(v324 ^ 0xAB4DE7D0F5162FA2, 53);
  v327 = v309 ^ (v311 ^ 0x3C51449932EC6A05) & (v315 ^ 0xBFAFBAAFAC4DA5BLL) ^ 0xD7F5CB7B595E7858 ^ v323;
  v328 = v327 - ((2 * v327) & 0xD22FD58ACD0B9BFELL) + 0x6917EAC56685CDFFLL;
  v329 = v319 ^ v325;
  if (!v14[66])
  {
    v329 = v325;
  }

  v330 = v329 & v320;
  v331 = v323 ^ 0xC1451C0516ED28ALL ^ v326;
  v332 = v311 ^ v322 ^ 0x7AD4C04CDC29E877 ^ v330;
  v334 = ((8 * v328) ^ (-8 * v328) ^ ((v328 << 25) - ((v328 << 25) ^ (8 * v328)))) + (v328 << 25);
  *(&v336 + 1) = v328 ^ (v328 >> 39) ^ (v328 >> 61) ^ v334;
  *&v336 = v334 ^ v328;
  v335 = v336 >> 41;
  v337 = v332 ^ -v332;
  v338 = v337 & 0x10;
  if ((-v332 & v337 & 0x10) != 0)
  {
    v338 = -v338;
  }

  v339 = __ROR8__(v335 ^ 0xD74765FE3AF0DE6FLL, 23);
  v340 = v339 ^ __ROR8__((((v322 ^ 0x6E807D10291F7139) & 0x3F) << 30) ^ __ROR8__(v322 ^ 0x6E807D10291F7139 ^ (v322 >> 6) ^ __ROR8__(v322 ^ 0x6E807D10291F7139, 1) ^ 0x1BA01F440A47DC4, 28) ^ 0xC84EF89EA33CB55CLL, 36);
  v341 = (v332 >> 17) ^ (v332 >> 10) ^ (v332 << 47) ^ (((v338 + (v332 << 54) - ((v332 << 54) ^ v332)) ^ v337 & 0xFFFFFFFFFFFFFFEFLL) + (v332 << 54));
  v333 = v326 ^ 0xE829584A12CCF6A8;
  v342 = (((v333 << 57) ^ (0xFE00000000000000 * v333) ^ ((v333 ^ (v333 >> 7)) - (v333 ^ (v333 >> 7) ^ (v333 << 57)))) + (v333 ^ (v333 >> 7))) ^ __ROR8__(v333, 41);
  v343 = v331 ^ __ROR8__(v331, 19) ^ (v331 >> 28) ^ (v331 << 36) ^ v342;
  v344 = (v339 ^ 0xE1BCDFAE8ECBFC75) & ~v343;
  v345 = v341 + v342 - 2 * (v341 & v342);
  v346 = (v340 ^ 0xB8F14FB424F13FCLL) & (v339 ^ 0x1E4320517134038ALL) ^ v343;
  v347 = v343 & ~v345;
  v348 = v345 & ~v341 ^ v340 ^ 0xB8F14FB424F13FCLL;
  v349 = v345 ^ v344;
  v350 = v339 ^ v346 ^ ((v340 ^ 0xB8F14FB424F13FCLL ^ v341) + (v340 ^ 0xF470EB04BDB0EC03 | v341) + 1) ^ 0x7779EA02156CB2ALL;
  v351 = v347 ^ v341 ^ v348;
  v352 = __ROR8__((__ROR8__(v349 ^ v346, 63) & 0xDFFFFFFFFFFFFFFFLL | ((((v349 ^ v346) >> 60) & 1) << 61)) ^ 0xA62287645D4F9FCBLL, 1) ^ 0x85BBA50D2CE64B1ALL;
  *(&v353 + 1) = v348;
  *&v353 = v348 ^ 0x15C7857573502C40;
  v354 = (v353 >> 1) ^ v348 ^ 0x15C7857573502C40;
  v355 = 0x3378C4AC0693E070 - (v351 & 0x2000000);
  v356 = v350 ^ __ROR8__(v350, 61);
  v357 = v351 & 0xFFFFFFFFFDFFFFFFLL;
  v358 = v354 ^ 0xAEC247D5078E64EALL;
  if (!STACK[0x6F0])
  {
    v358 = 0x513DB82AF8719B15;
  }

  v359 = v355 ^ v357;
  v360 = v356 ^ __ROR8__(v350, 39);
  v361 = ((v360 ^ ((v348 ^ 0x15C7857573502C40uLL) >> 6)) & 0x513DB82AF8719B15 ^ v358 & v354 | (v360 ^ ((v348 ^ 0x15C7857573502C40uLL) >> 6) ^ v354) & 0xAEC247D5078E64EALL) ^ (v348 << 58);
  v362 = v359 ^ __ROR8__(v359, 10) ^ (v359 << 47) ^ (v359 >> 17);
  v363 = v349 ^ 0x62C1F2A9E89E4C79 ^ ((v349 ^ 0x62C1F2A9E89E4C79) << 23) ^ __ROR8__(v349 ^ 0x62C1F2A9E89E4C79, 7) ^ ((v349 ^ 0x62C1F2A9E89E4C79) >> (v356 & 0x29) >> (v356 & 0x29 ^ 0x29));
  v364 = v363 ^ v362;
  v365 = v352 ^ __ROR8__(v352, 19) ^ (v352 << 36) ^ (v352 >> 28) ^ v363;
  v366 = v365 & ~(v363 ^ v362);
  v367 = v360 & ~v365;
  v368 = v363 & ~v362 ^ v361;
  v369 = v365 + (v361 & ~v360) - 2 * (v365 & v361 & ~v360);
  v370 = ((v367 - (v367 ^ v364)) ^ v364 ^ (((2 * (0xA5CEB2CEFD9BEDB7 - v364)) & 0xB4629A6204C82492) + ((0xA5CEB2CEFD9BEDB7 - v364) ^ 0x5A314D3102641249))) + v367;
  v371 = v360 ^ 0xEEAFC2D3EC65C482 ^ v362 & ~v361 ^ v369;
  v372 = v369 ^ 0x7D752DD7DCC251B6 ^ v370;
  v373 = v366 ^ v362 ^ v368;
  *(&v375 + 1) = __ROR8__(__ROR8__(v368, 59) ^ 0xFD9743D5147DBC70, 5);
  *&v375 = *(&v375 + 1) ^ 0x600EBAEAEB09113CLL;
  v374 = v375 >> 1;
  v376 = v371 ^ (v371 >> 61) ^ (v371 >> 39) ^ (8 * v371) ^ (v371 << 25);
  *&v375 = __ROR8__((16 * (v372 & 0xFFFFFFF)) ^ __ROR8__(v372 ^ __ROR8__(v372, 19) ^ (v372 >> 28), 32) ^ 0xCB5F2447146BA3C2, 32);
  v377 = (v373 ^ (v372 >> 28) ^ v375 ^ 0x146BA3C2CB5F2447) + (v372 >> 28) - 2 * ((v373 ^ (v372 >> 28) ^ v375 ^ 0x146BA3C2CB5F2447) & (v372 >> 28));
  v378 = v377 & 0x1000000000000000;
  v379 = v370 + 0x66173F92B629299ALL - ((2 * v370) & 0xCC2E7F256C525334);
  v380 = v374 ^ *(&v375 + 1) ^ 0x600EBAEAEB09113CLL ^ ((*(&v375 + 1) ^ 0x600EBAEAEB09113CuLL) >> 6) ^ ((*(&v375 + 1) ^ 0x600EBAEAEB09113CLL) << 58);
  v381 = v376 ^ v380;
  if ((v377 & 0x1000000000000000 & v373) != 0)
  {
    v378 = -v378;
  }

  v382 = ((v379 ^ (v379 >> 7)) & 0x200000000 | (v379 << 57) & 0xD800000000000000) ^ (v379 ^ (v379 >> 7)) & 0xD9307A299DEFB42CLL | (v379 ^ (v379 >> 7)) & 0x26CF85D462104BD3 ^ (v379 << 57) & 0x2600000000000000;
  v383 = v373 ^ 0xD8700A4CB46F51B0 ^ ((v373 ^ 0xD8700A4CB46F51B0) << 47) ^ ((v373 ^ 0xD8700A4CB46F51B0) >> 10) ^ (((v373 ^ 0xD8700A4CB46F51B0) >> 17) | ((v373 ^ 0xD8700A4CB46F51B0) << 54));
  v384 = (v382 ^ (v379 >> 41)) + (v379 << 23) - 2 * (v382 & (v379 << 23));
  v385 = v384 ^ v383;
  v386 = v377 & 0xEFFFFFFFFFFFFFFFLL ^ v384 ^ (v378 + v373);
  v387 = v386 & ~(v384 ^ v383);
  v388 = v384 & ~v383;
  v389 = v376 & ~v386 ^ v385;
  v390 = v386 ^ v380 & ~v376;
  v391 = (v386 & 1) == 0;
  v392 = v389 & 0x800;
  v393 = v383 & ~v381 ^ v376 ^ v390;
  if ((v389 & 0x800 & v390) != 0)
  {
    v392 = -v392;
  }

  v394 = (v392 + v390) ^ v389 & 0xFFFFFFFFFFFFF7FFLL;
  v395 = v388 ^ v381;
  v396 = v389 ^ 0xA0B866C79876C7E4;
  v397 = __ROR8__(__ROR8__(v393, 24) ^ 0x6920427E42F044B8, 40) ^ 0x4FCE30C49E0D07E0;
  v398 = __ROR8__(v389 ^ ((v389 ^ 0xA0B866C79876C7E4) >> 7) ^ 0x169B7A7C23F91AEDLL, 8) ^ 0x9B6231CBBBB8FDDLL;
  v399 = v397 ^ __ROR8__(v397, 61) ^ (v397 >> 39) ^ (v397 << 25);
  v400 = v383 ^ 0xCC98C5A695FE0D08 ^ v395 ^ v387;
  v401 = (((v395 ^ 0x32237A0B9C0468F5) >> v391 >> (v391 ^ 1u)) ^ v395 ^ 0x32237A0B9C0468F5) + ((v395 ^ 0x32237A0B9C0468F5) << 63);
  v402 = (v400 >> 10) & 0x100;
  *(&v403 + 1) = v394;
  *&v403 = v394 ^ 0xC5AB08FD33C1B5A7;
  v404 = (v403 >> 19) & 0xFFFFE000000001FFLL ^ __ROR8__(v394 ^ 0xC5AB08FD33C1B5A7 ^ __ROR8__(v394 ^ 0xC5AB08FD33C1B5A7, 19) ^ ((v394 ^ 0xC5AB08FD33C1B5A7) >> 28), 55) ^ 0xFA5C2A4DA5F10073;
  if ((v402 & v400) != 0)
  {
    v405 = -2 * v402;
  }

  else
  {
    v405 = 0;
  }

  v406 = v401 ^ __ROR8__(v395 ^ 0x32237A0B9C0468F5, 6);
  v407 = __ROR8__(v396, 41) ^ (v396 << 57) ^ __ROR8__(v398, 56);
  v408 = v407 ^ __ROR8__(v404, 9);
  v409 = ((v400 >> 17) | (v400 << 54)) ^ (v400 << 47) ^ (v400 >> 10) & 0xFFFFFFFFFFFFFEFFLL ^ (v402 + v400 + v405);
  v410 = v399 ^ v406;
  v411 = v408 ^ v406 & ~v399;
  v412 = (v409 ^ -v409 ^ (v407 - (v409 ^ v407))) + v407;
  v413 = v412 & ~v409;
  v414 = v410 & 0x400000000000000;
  v415 = v409 & ~v410;
  v416 = (v408 ^ 0x39E6746526D2F880) & ~v412;
  v417 = (v408 ^ 0xC6198B9AD92D077FLL) & v399;
  if ((v413 & v410 & 0x400000000000000) != 0)
  {
    v414 = -v414;
  }

  v418 = (v414 + v413) ^ v410 & 0xFBFFFFFFFFFFFFFFLL;
  v419 = v417 ^ v412;
  v420 = v399 ^ v415 ^ 0x514D9E8055A98E13 ^ v411;
  v421 = v411 ^ 0xDE6CFBEA003BF3ABLL ^ v419;
  v422 = v409 ^ 0x1DE76D00F7B2971ELL ^ v416 ^ v418;
  *(&v423 + 1) = v418;
  *&v423 = v418 ^ 0xA2A16E7D4060C2ACLL;
  v424 = v420 ^ __ROR8__(v420, 61) ^ (v420 >> 39) ^ (v420 << 25);
  v425 = (v423 >> 1) ^ v418 ^ 0xA2A16E7D4060C2ACLL ^ __ROR8__(v418 ^ 0xA2A16E7D4060C2ACLL, 6);
  v426 = v425 ^ v424;
  v427 = (v422 << 54) ^ __ROR8__(v422, 17) ^ ((v422 >> 10) + v422 - 2 * ((v422 >> 10) & v422));
  v428 = v419 ^ 0xF14770720A54D309 ^ __ROR8__(v419 ^ 0xF14770720A54D309, 7) ^ ((v419 ^ 0xF14770720A54D309) >> 41) ^ ((v419 ^ 0xF14770720A54D309) << 23);
  v429 = v428 ^ (v421 << 36) ^ ((v421 ^ (v421 >> 19) ^ -(v421 ^ (v421 >> 19)) ^ (((v421 >> 28) | (v421 << 45)) - (((v421 >> 28) | (v421 << 45)) ^ v421 ^ (v421 >> 19)))) + ((v421 >> 28) | (v421 << 45)));
  v430 = v424 & ~v429 ^ v427 ^ v428;
  v431 = v429 ^ v425 & ~v424;
  v432 = (v431 - 0x314A4F67D6B7ACF7 - ((2 * v431) & 0x9D6B61305290A612)) ^ v430;
  v433 = __ROR8__(__ROR8__(v427 & ~(v425 ^ v424) ^ v424 ^ v431, 44) ^ 0x2169A59325CBAF00, 20) ^ 0xEDEB3763386D29A6;
  *(&v423 + 1) = (v431 + 692605705 - ((2 * v431) & 0x5290A612)) ^ v430 ^ 0x3CE2E;
  *&v423 = v432 ^ 0x7802D8F917F00000;
  v434 = v432 ^ 0xCEB5B09829485309 ^ ((v432 ^ 0xCEB5B09829485309) >> 28) ^ (v423 >> 19);
  v435 = v434 ^ ((v432 ^ 0xCEB5B09829485309) << 36);
  v436 = STACK[0x710];
  *(v436 + 9) = v434 ^ 0x34;
  *&v423 = __ROR8__(v433, 39);
  v437 = (v423 - ((2 * v423) & 0x64B1210D5028E420) + 0x32589086A8147210) ^ (8 * v433) ^ (((v433 >> 61) ^ -(v433 >> 61) ^ (v433 - ((v433 >> 61) ^ v433))) + v433);
  *(v238 + 86) = BYTE1(v434) ^ 0x1B;
  *(v238 + 26) = BYTE3(v434) ^ 0x55;
  v14[23] = v437 ^ 0x10;
  *(v238 + 30) = BYTE1(v437) ^ 0x72;
  *(v238 + 120) = HIBYTE(v435) ^ 0x5D;
  v239[11] = BYTE2(v434) ^ 0xCD;
  *(v238 + 18) = BYTE6(v435) ^ 0xE;
  v241[63] = BYTE5(v435) ^ 0xBA;
  v241[62] = (((v423 - ((2 * v423) & 0x5028E420) - 1475055088) ^ (8 * v433) ^ (((v433 >> 61) ^ -(v433 >> 61) ^ (v433 - ((v433 >> 61) ^ v433))) + v433)) >> 16) ^ 0x14;
  v14[67] = ((BYTE4(v435) ^ 0x1A) - ((2 * (BYTE4(v435) ^ 0x1A)) & 0x60) - 80) ^ 0xB0;
  v438 = STACK[0x720] + 521;
  LODWORD(v431) = *(v438 + ((((((v423 - ((2 * v423) & 0x5028E420) - 1475055088) ^ (8 * v433) ^ (((v433 >> 61) ^ -(v433 >> 61) ^ (v433 - ((v433 >> 61) ^ v433))) + v433)) >> 24) ^ 0xA8) + 70) ^ 0xFALL));
  LODWORD(v432) = (((BYTE3(v437) ^ 0xA8) + 70) ^ 0x5F) - (((BYTE3(v437) ^ 0xA8) + 70) ^ 0x3F);
  v239[40] = BYTE5(v437) ^ 0x90;
  DWORD1(v423) = v432 ^ ~v431;
  LODWORD(v423) = (v432 ^ v431) << 24;
  LODWORD(v431) = v423 >> 25;
  v14[4] = ((BYTE4(v437) ^ 0x86) - ((2 * BYTE4(v437)) & 0xD2) - 23) ^ 0xE9;
  v239[13] = BYTE6(v437) ^ 0x58;
  LOBYTE(v432) = (((v431 ^ 0x62) + 74) ^ ((v431 ^ 0x2A) + 2) ^ ((v431 ^ 0xE) + 38)) - (((v431 ^ 0x1A) - 24) ^ ((v431 ^ 0x91) + 109) ^ ((v431 ^ 0xCD) + 49)) - 112;
  LOBYTE(v425) = v432 & 0x94 ^ 0x3F;
  v241[61] = v431 ^ v432 ^ (2 * ((v432 ^ 0x3E) & (2 * ((v432 ^ 0x3E) & (2 * ((v432 ^ 0x3E) & (2 * ((v432 ^ 0x3E) & (2 * ((v432 ^ 0x3E) & (2 * ((v432 ^ 0x3E) & 0x2A ^ v425)) ^ v425)) ^ v425)) ^ v425)) ^ v425)) ^ v425)) ^ 0xD2;
  v439 = v428 & ~v427 ^ v426;
  v440 = v439 ^ v427 ^ __ROR8__(__ROR8__(v429 & ~(v427 ^ v428) ^ 0xF4C52484AC34F30, 13) ^ 0x79807A629242561ALL, 51);
  v441 = v440 ^ 0x1A26A05063A11339 ^ (v440 << 47) ^ ((((v440 ^ 0x1A26A05063A11339) << 54) ^ 0x15872C52C5FEFC99) & ((v440 >> 10) ^ (v440 >> 17) ^ 0xFFC8DA0C74541425) | ((v440 >> 10) ^ (v440 >> 17)) & 0x38D3AD3A010366);
  LODWORD(v438) = *(v438 + (((HIBYTE(v437) ^ 0x32) + 70) ^ 0xFALL));
  v241[56] = ~v441;
  v442 = v439 ^ 0xF8812C92AA9DD919;
  v443 = v439 ^ 0xF8812C92AA9DD919 ^ (v439 >> 6) ^ __ROR8__(v439 ^ 0xF8812C92AA9DD919, 1);
  v14[22] = BYTE2(v443) ^ 0xBA;
  v241[9] = v443 ^ 0x10;
  *(v238 + 113) = BYTE1(v443) ^ 0x43;
  *(v238 + 96) = ~BYTE4(v443);
  *(v238 + 53) = BYTE6(v443) ^ 0x45;
  v239[33] = BYTE5(v443) ^ 0xFA;
  *(v238 + 93) = ((v443 ^ (v442 << 58)) >> 56) ^ 0xCE;
  *(v238 + 71) = BYTE3(v443) ^ 0x46;
  LODWORD(v438) = ((((HIBYTE(v437) ^ 0x32) + 70) ^ 0xA0) + (((HIBYTE(v437) ^ 0x32) + 70) ^ 0x3F)) ^ v438;
  *(v436 + 8) = ((v438 >> 1) | (v438 << 7)) ^ 0x39;
  LOBYTE(v425) = *(STACK[0x780] + (BYTE1(v441) ^ 0xBLL));
  v241[47] = BYTE2(v441) ^ 0x36;
  v14[66] = ((BYTE5(v441) ^ 0x69) - 2 * ((BYTE5(v441) ^ 0x69) & 0x56 ^ BYTE5(v441) & 4) - 46) ^ 0xD2;
  LOBYTE(v443) = (((v425 - 2) ^ 0xCA) >> 4) | (16 * ((v425 - 2) ^ 0xCA));
  v444 = v430 ^ 0x609C8CFDAC601C54 ^ (v430 >> 41) ^ __ROR8__(v430 ^ 0x609C8CFDAC601C54, 7);
  v445 = v444 ^ ((v430 ^ 0x609C8CFDAC601C54) << 23);
  v14[82] = (v443 - ((2 * v443) & 0x42) - 95) ^ 0xA1;
  *(v238 + 9) = ((v444 ^ ((v430 ^ 0xAC601C54) << 23)) >> 24) ^ 0x4D;
  v241[17] = BYTE5(v445) ^ 0x17;
  v241[69] = BYTE4(v445) ^ 0x12;
  v14[41] = ((BYTE6(v441) ^ 2) - ((2 * (BYTE6(v441) ^ 2)) & 0xC) + 6) ^ 6;
  v241[77] = BYTE6(v445) ^ 0xE1;
  v14[56] = BYTE4(v441) ^ 0xE8;
  v14[63] = BYTE3(v441) ^ 0xCF;
  v14[49] = ((HIBYTE(v441) ^ 0xD6) - ((2 * (HIBYTE(v441) ^ 0xD6)) & 0xCA) - 27) ^ 0xE5;
  v14[61] = HIBYTE(v445) ^ 0xD3;
  *(v238 + 1) = BYTE2(v445) ^ 0x59;
  v241[38] = BYTE1(v444) ^ 0x2D;
  v241[6] = v444 ^ 0xB8;
  *(v238 + 60) = v307 + 1;
  STACK[0x8B8] = v435 ^ 0x6412BA122ECD505CLL;
  return (*(v1 + 8 * (LODWORD(STACK[0x730]) ^ 0x4E74E6FBu)))();
}

uint64_t sub_100A5A320@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  *(v3 + 4152) = 0;
  *(v3 + 2712) = 0;
  return (*(v4 + 8 * ((((((v2 ^ 0x2177) + 8009) ^ 0xFFFFE9F9) + 31 * (v2 ^ 0x2177)) * (a2 == a1)) | v2)))();
}

uint64_t sub_100A5A368()
{
  STACK[0x1700] = (*(v0 + 8 * (v1 ^ 0x7523)))(LODWORD(STACK[0x159C]));
  LODWORD(STACK[0x1AC4]) = STACK[0x159C];
  return (*(v0 + 8 * (v1 + 28846)))();
}

uint64_t sub_100A5A408()
{
  v3 = v1 + v0 - 3526;
  STACK[0x1AF8] = *(v2 + 8 * v3);
  return (*(v2 + 8 * ((v0 ^ 0x819FE4AB) + v3)))();
}

uint64_t sub_100A5A470()
{
  v2 = (LODWORD(STACK[0x70FC]) - LODWORD(STACK[0x3D80]));
  v3 = STACK[0x3D50];
  v4 = 980389751 * *(STACK[0x3D50] + 4 * LODWORD(STACK[0x3BE0]));
  v5 = 980389751 * *(STACK[0x3D50] + 4 * LODWORD(STACK[0x3BD8]));
  LODWORD(STACK[0x3D70]) = (v0 - 11482) | 0x214A;
  v6 = 980389751 * *(v3 + 4 * STACK[0x3BD0]);
  v7 = 980389751 * *(v3 + 4 * LODWORD(STACK[0x3BC8]));
  v8 = v5 ^ 0x5E248C73 ^ (v5 >> (((v0 + 38) | 0x4A) ^ 0x4C)) & 0x2C2E6C95 ^ __ROR4__(v4 ^ 0xBB9A0E46 ^ (v4 >> 2) & 0x2C2E6C95, 8) ^ __ROR4__(v6 ^ 0xF134C9D4 ^ (v6 >> 2) & 0x2C2E6C95, 24) ^ __ROR4__(v7 ^ 0x1DA262ED ^ (v7 >> 2) & 0x2C2E6C95, 16);
  v9 = STACK[0x3DA8];
  v10 = (STACK[0x3DA8] + (v2 & 0xFFFFFFFC));
  v11 = *v10 ^ HIBYTE(v8);
  v10[1] ^= BYTE2(v8);
  v10[2] ^= BYTE1(v8);
  v2 |= 3uLL;
  LOBYTE(v5) = *(v9 + v2);
  *v10 = v11;
  *(v9 + v2) = v8 ^ v5;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_100A5A5D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, int a4@<W8>)
{
  LODWORD(STACK[0x308]) = 0;
  LODWORD(STACK[0x324]) = (((v4 ^ 0x39284263) + 70421387) ^ ((v4 ^ 0xFC8BABCE) - 1047436760) ^ (((a4 - 6385) ^ 0x9A03A00B) + (v4 ^ 0xA7197DA0))) - 795231127;
  STACK[0x318] = &STACK[0x4A0];
  v5 = *(a3 + 8 * a4);
  LODWORD(STACK[0x338]) = *(a2 + 1);
  LODWORD(STACK[0x30C]) = 1549689852;
  STACK[0x260] = 1549689852;
  STACK[0x218] = 1549689852;
  STACK[0x280] = 1549689852;
  STACK[0x238] = 1549689852;
  STACK[0x278] = 1549689852;
  STACK[0x268] = 1549689852;
  STACK[0x270] = 1549689852;
  STACK[0x240] = 1549689852;
  STACK[0x230] = 1549689852;
  STACK[0x208] = 1549689852;
  STACK[0x258] = 1549689852;
  STACK[0x248] = 1549689852;
  STACK[0x250] = 1549689852;
  STACK[0x220] = 1549689852;
  STACK[0x210] = 1549689852;
  STACK[0x228] = 1549689852;
  STACK[0x348] = a3;
  return v5(a1, a2, a3);
}

uint64_t sub_100A5A6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v31 = (HIDWORD(a26) - 875444442) & 0x342DD77F;
  v40 = (*(v29 + 8 * (HIDWORD(a26) ^ 0xC6E)))(1028);
  *(v30 - 144) = v31;
  return (*(v29 + 8 * (((v40 == 0) * ((((HIDWORD(a26) - 13008) | 0x112A) - 15439) ^ v31)) ^ HIDWORD(a26))))(v40, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29);
}

uint64_t sub_100A5A754(uint64_t a1, int a2, uint64_t a3, unsigned __int8 a4)
{
  v13 = *(*(v12 + 1368) + v6 + a4 * v5 - (((44681065 * (v6 + a4 * v5)) >> 32) >> 6) * a2);
  v14 = (1 << a4) - (((17 * (v4 ^ 0x4A)) ^ 0xEC) & (2 * (1 << a4))) + 3;
  v15 = v13 & 0x94 ^ 0x30;
  v16 = v11 ^ v13 ^ (2 * ((v13 ^ 0x34) & (2 * ((v13 ^ 0x34) & (2 * ((v13 ^ 0x34) & (2 * ((v13 ^ 0x34) & (2 * v15) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ 0xD5;
  v17 = a4 + 1;
  if ((v14 & 0x5B ^ v10 ^ (v14 ^ 0xA4) & v9) == 3)
  {
    v18 = v11 ^ 0x41;
  }

  else
  {
    v18 = v16;
  }

  *(v8 + 4 * v7) = v18 ^ 0x42388F41;
  return (*(STACK[0x57D8] + 8 * (v4 ^ 0x2766 ^ (27 * ((((v17 & 0xF8) - v4) | (v4 - (v17 & 0xF8))) >= 0)))))();
}

uint64_t sub_100A5A86C@<X0>(int a1@<W0>, void *a2@<X2>, uint64_t a3@<X3>, _DWORD *a4@<X4>, uint64_t a5@<X8>)
{
  v8 = *(*a2 + ((*a4 & (a1 + ((a5 + v5) & 0xFFFFFFF8 | (v6 + 1136667845)) + ((a5 + v5) & 0x43C049F8 | 0xBC3FB602) + 1)) & 0xFFFFFFFFFFFFFFF8));
  v9 = (v8 + __ROR8__((a5 + v5) & 0xFFFFFFFFFFFFFFF8, 8)) ^ a3;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = __ROR8__(v9, 8);
  v12 = (((2 * (v11 + v10)) | 0xEC761892794E1514) - (v11 + v10) + 0x9C4F3B6C358F576) ^ 0x4E053F5359DA2176;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = __ROR8__(v12, 8);
  v15 = __ROR8__((v14 + v13 - ((2 * (v14 + v13)) & 0x7480B95F48F50E60) - 0x45BFA3505B8578D0) ^ 0xBEF8EB138194F21ALL, 8);
  v16 = (v14 + v13 - ((2 * (v14 + v13)) & 0x7480B95F48F50E60) - 0x45BFA3505B8578D0) ^ 0xBEF8EB138194F21ALL ^ __ROR8__(v13, 61);
  v17 = (v15 + v16 - ((2 * (v15 + v16)) & 0x1D361B57BBFB5FAELL) - 0x7164F25422025029) ^ 0x7F20B0A166727AD1;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (v19 + v18 - ((2 * (v19 + v18)) & 0x944615589B9CB434) - 0x35DCF553B231A5E6) ^ 0xF6ED9F2369423ACLL;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0x6CF8F96A5DD25335;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = __ROR8__(v22, 8);
  *(a5 + v5) = (((__ROR8__((0xCFEDBAAC2FC15C3DLL - ((v24 + v23) | 0xCFEDBAAC2FC15C3DLL) + ((v24 + v23) | 0x30124553D03EA3C2)) ^ 0xA7EA01CCC9F56EBFLL, 8) + ((0xCFEDBAAC2FC15C3DLL - ((v24 + v23) | 0xCFEDBAAC2FC15C3DLL) + ((v24 + v23) | 0x30124553D03EA3C2)) ^ 0xA7EA01CCC9F56EBFLL ^ __ROR8__(v23, 61))) ^ v7) >> (8 * ((a5 + v5) & 7))) ^ *(STACK[0x78E0] + v5 + 16);
  return (*(STACK[0x57D8] + 8 * ((22103 * (v5 == 15)) ^ v6)))();
}

uint64_t sub_100A5ACA8@<X0>(int a1@<W8>)
{
  v4 = v2 >> ((5 * (a1 ^ 0x33)) ^ 0x35);
  v5 = STACK[0x3D18];
  v5[81] = BYTE2(v2);
  v6 = STACK[0x3E18];
  v5[82] = BYTE1(v2);
  LODWORD(STACK[0x3D38]) = v4;
  v5[80] = v4;
  v5[83] = v2;
  return (*(v3 + 8 * ((93 * (v1 < v6)) ^ a1)))();
}

uint64_t sub_100A5AD08@<X0>(int a1@<W0>, int a2@<W2>, int a3@<W4>, int a4@<W7>, int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33)
{
  v38 = (a5 ^ 0x8F13BD9C) & (2 * (a5 & 0xAF43B9D8)) ^ a5 & 0xAF43B9D8;
  v39 = ((2 * (a5 ^ 0xDB15EE1C)) ^ 0xE8ACAF88) & (a5 ^ 0xDB15EE1C) ^ (2 * (a5 ^ 0xDB15EE1C)) & 0x745657C4;
  v40 = (v39 ^ 0x60040780) & (4 * v38) ^ v38;
  v41 = ((4 * (v39 ^ 0x14525044)) ^ 0xD1595F10) & (v39 ^ 0x14525044) ^ (4 * (v39 ^ 0x14525044)) & 0x745657C4;
  v42 = (v41 ^ 0x50505700) & (16 * v40) ^ v40;
  v43 = ((16 * (v41 ^ 0x240600C4)) ^ 0x45657C40) & (v41 ^ 0x240600C4) ^ (16 * (v41 ^ 0x240600C4)) & 0x745657C0;
  v44 = v42 ^ 0x745657C4 ^ (v43 ^ 0x44445400) & (v42 << 8);
  v45 = ((v34 ^ 0x7859AEC) - 1834092808) ^ v34 ^ ((v34 ^ 0xD767B49A) + 1112529026) ^ ((v34 ^ 0x65EA40EF) - 255709963) ^ ((v34 ^ 0xDFDFFD7D) + 1257738599) ^ a5 ^ (2 * ((v44 << 16) & 0x74560000 ^ v44 ^ ((v44 << 16) ^ 0x57C40000) & (((v43 ^ 0x30120384) << 8) & 0x74560000 ^ (((v43 ^ 0x30120384) << 8) ^ 0x56570000) & (v43 ^ 0x30120384) ^ 0x20000000)));
  v92 = (((a2 ^ (v33 + 92917236) ^ 0xA2EEB694) + 157597161) ^ ((a2 ^ (v33 + 92917236) ^ 0xCAE68DF0) + 1634502285) ^ ((a2 ^ (v33 + 92917236) ^ 0x68083B64) - 1014878183)) - ((((v33 + 92917236) ^ 0x2482C05B) + 230789743) ^ (((v33 + 92917236) ^ 0x5A7CCF08) + 1933548862) ^ (((v33 + 92917236) ^ 0x119BE731) + 953726213)) + 183562863;
  v46 = (((v92 + a33) ^ 0x447D1434) + 627611796) ^ (v92 + a33) ^ (((v92 + a33) ^ 0x94EEE3F3) - 168071339) ^ (((v92 + a33) ^ 0x19A63B60) + 2025043912) ^ (((v92 + a33) ^ 0x57DFBFFF) + 919221081);
  v47 = (v34 ^ 0x90A269DF) & (2 * (v34 & 0x95286C1C)) ^ v34 & 0x95286C1C;
  v48 = ((2 * (v34 ^ 0xB2A2E1F7)) ^ 0x4F151BD6) & (v34 ^ 0xB2A2E1F7) ^ (2 * (v34 ^ 0xB2A2E1F7)) & 0x278A8DEA;
  v49 = v48 ^ 0x208A8429;
  v50 = (v48 ^ 0x50804C8) & (4 * v47) ^ v47;
  v51 = ((4 * v49) ^ 0x9E2A37AC) & v49 ^ (4 * v49) & 0x278A8DE8;
  v52 = (v51 ^ 0x60A05A0) & (16 * v50) ^ v50;
  v53 = ((16 * (v51 ^ 0x21808843)) ^ 0x78A8DEB0) & (v51 ^ 0x21808843) ^ (16 * (v51 ^ 0x21808843)) & 0x278A8DE0;
  v54 = v52 ^ 0x278A8DEB ^ (v53 ^ 0x20888C00) & (v52 << 8);
  v55 = v34 ^ (2 * ((v54 << 16) & 0x278A0000 ^ v54 ^ ((v54 << 16) ^ 0xDEB0000) & (((v53 ^ 0x702014B) << 8) & 0x278A0000 ^ 0x25020000 ^ (((v53 ^ 0x702014B) << 8) ^ 0xA8D0000) & (v53 ^ 0x702014B))));
  v56 = (((v45 ^ 0x759A5C57) - 2059331243) ^ ((v45 ^ 0x8483A65A) + 1951982426) ^ ((v45 ^ 0x74A97FB9) - 2072888645)) - (((v55 ^ 0x73364298) - 2020032907) ^ ((v55 ^ 0xD999BCF8) + 758595605) ^ ((v55 ^ 0x14E361C8) - 531784411)) + 461038672;
  v57 = (v56 ^ 0x35FB3EBD) & (2 * (v56 & 0xB9FBBE3D)) ^ v56 & 0xB9FBBE3D;
  v58 = ((2 * (v56 ^ 0x375866A5)) ^ 0x1D47B130) & (v56 ^ 0x375866A5) ^ (2 * (v56 ^ 0x375866A5)) & 0x8EA3D898;
  v59 = v58 ^ 0x82A04888;
  v60 = (v58 ^ 0xC039010) & (4 * v57) ^ v57;
  v61 = ((4 * v59) ^ 0x3A8F6260) & v59 ^ (4 * v59) & 0x8EA3D898;
  v62 = (v61 ^ 0xA834000) & (16 * v60) ^ v60;
  v63 = ((16 * (v61 ^ 0x84209898)) ^ 0xEA3D8980) & (v61 ^ 0x84209898) ^ (16 * (v61 ^ 0x84209898)) & 0x8EA3D890;
  v64 = v62 ^ 0x8EA3D898 ^ (v63 ^ 0x8A218800) & (v62 << 8);
  v65 = v56 ^ (2 * ((v64 << 16) & 0xEA30000 ^ v64 ^ ((v64 << 16) ^ 0x58980000) & (((v63 ^ 0x4825018) << 8) & 0xEA30000 ^ 0xC230000 ^ (((v63 ^ 0x4825018) << 8) ^ 0x23D80000) & (v63 ^ 0x4825018))));
  v66 = (((a4 ^ 0x7F1D2F27) - 2132619047) ^ ((a4 ^ 0x3FC46533) - 1069835571) ^ ((a4 ^ 0x2A641F4D) - 711204685)) - (((v65 ^ 0xFB707EDD) - 1729733565) ^ ((v65 ^ 0x3C308416) + 1604757130) ^ ((v65 ^ 0x72FCF5C6) + 292214618)) - 1853512095;
  v67 = ((v66 ^ 0xEAE1AE2) - 1580218775) ^ v66 ^ ((v66 ^ 0x7D1D8AB8) - 763603405) ^ ((v66 ^ 0x5CD24418) - 206333805) ^ ((v66 ^ 0x7FFFF737) - 794940482);
  v68 = 893 * ((((v67 >> 20) & 0xF ^ 0xFDE26BD5) + 1119374037) ^ (((v67 >> 20) & 0xF) - 1067233854) ^ (((v67 >> 20) & 0xF ^ 0xC22EFDBC) + 2104810686)) - 2102939140;
  v69 = 893 * (((HIBYTE(v67) & 0xF ^ 0x875167A7) - 616764465) ^ ((HIBYTE(v67) & 0xF ^ 0xE3D4D862) - 1078373364) ^ ((HIBYTE(v67) & 0xF ^ 0x6485BFC5) + 954741677)) - 1779818337;
  v70 = 893 * ((((v67 >> 28) ^ 0x4B74E62) + 785554234) ^ (((v67 >> 28) ^ 0xE84B66E1) - 1037126725) ^ (((v67 >> 28) ^ 0xECFC2886) - 962986530)) + 450077182;
  v71 = *(v36 + v70 - v70 / 0x3CF * v35) ^ 0x36;
  v72 = a3 + 893 * (HIBYTE(v46) & 0xF ^ 0xE);
  v73 = ((*(v36 + (v72 - ((v72 * v37) >> 32) * v35)) ^ 0x36) << 8) ^ ((*(v36 + (a3 + 893 * ((v46 >> 28) ^ 9) - (((a3 + 893 * ((v46 >> 28) ^ 9)) * v37) >> 32) * v35)) ^ 0x36) << 12);
  v74 = *(v36 + (a3 + 893 * ((((((v92 + a33) ^ 0x34) - 108) ^ (v92 + a33) ^ (((v92 + a33) ^ 0xF3) + 85) ^ (((v92 + a33) ^ 0x60) - 56) ^ (88 - (v92 + a33))) >> 4) ^ 5u)) % (-2049033851 * (~v73 & 0x2407040 | v73 & 0x1000 | 0x1101EE03u))) ^ 0x36;
  v75 = 893 * ((((v46 >> 12) ^ 0xA7) & 0xF) - (((((v46 >> 12) ^ 0xA7) & 7 ^ 0x8B212A37) + (((v46 >> 12) ^ 0xA7) & 7)) ^ 0x74DED67C));
  v76 = a3 + 893 * ((v46 >> 20) & 0xF ^ 0xE);
  v77 = a3 + 893 * (HIWORD(v46) & 0xF ^ 0xA);
  v78 = *(v36 + (v77 - ((v77 * v37) >> 32) * v35)) ^ 0x36;
  v79 = ((v78 | v73) - 2 * ((v78 | v73) & 0x26273 ^ v78 & 3) + 1699897968) ^ (16 * (*(v36 + (v76 - ((v76 * v37) >> 32) * v35)) ^ 0x36)) ^ 0xFEF3729;
  v80 = a3 + 893 * ((v46 >> 8) & 0xF ^ 3);
  v81 = (*(v36 + (v80 - ((v80 * v37) >> 32) * v35)) ^ 0x36) << 8;
  v82 = ((((v79 << 16) ^ 0xCBEB445) & (v81 ^ 0xFFFFB7FF) | v81 & 0x4B00) ^ ((*(v36 + (v75 - ((v75 * v37) >> 32) * v35)) ^ 0x36) << 12) ^ 0x59E7B445 | *(v36 + (a3 + 893 * (v46 & 0xF ^ 8) - (((a3 + 893 * (v46 & 0xF ^ 8)) * v37) >> 32) * v35)) ^ 0x36) ^ (16 * v74);
  v83 = (v71 << 12) ^ ((*(v36 + v69 - v69 / 0x3CF * v35) ^ 0x36) << 8);
  v84 = 893 * (((HIWORD(v67) & 0xF ^ 0x4AE5105E) - 1943977665) ^ ((HIWORD(v67) & 0xF ^ 0x80E8ECED) + 1177337230) ^ ((HIWORD(v67) & 0xF ^ 0xCA0DFCBD) + 214543838)) - 1522737618;
  v85 = 893 * ((((v67 >> 12) ^ 0xEEDCA682) - 270298216) ^ (((v67 >> 12) ^ 0xFC7F2D5C) - 46131126) ^ (((v67 >> 12) ^ 0x12A38BDC) + 329039562)) - 1500464727;
  v86 = ((*(v36 + v84 - v84 / 0x3CF * v35) ^ 0x36 | v83) << 8) ^ ((*(v36 + v68 - v68 / 0x3CF * v35) ^ 0x36) << 12);
  v87 = 893 * ((((v67 >> 8) & 0xF ^ 0x431BBE6A) - 2066769513) ^ (((v67 >> 8) & 0xF ^ 0x8FEDB31A) + 1211733223) ^ (((v67 >> 8) & 0xF ^ 0xCCF60D73) + 186788496)) - 251828639;
  v88 = *(v36 + v85 - v85 / 0x3CF * v35) ^ 0x36;
  v89 = 893 * ((((v67 >> 4) ^ 0xBEC97AAD) + 2029779188) ^ (((v67 >> 4) ^ 0xB0F4CF51) + 1992707344) ^ (((v67 >> 4) ^ 0xE3DB5FB) - 938526810)) - 1579402641;
  v90 = 893 * (((v67 & 0xF ^ 0xE652C6E1) - 2085862865) ^ ((v67 & 0xF ^ 0x80F5634A) - 452204666) ^ ((v67 & 0xF ^ 0x66A7A5AE) + 56172898)) + 926398018;
  return (*(STACK[0x200] + 8 * ((93 * (((-107 * (v67 & 0x5F ^ 0xAA)) | v67 & 0xF ^ 0xA) != 0)) ^ a1)))(((*(v36 + v89 - v89 / 0x3CF * v35) ^ ((*(v36 + v90 - v90 / 0x3CF * v35) ^ 0x36 | (((v86 | *(v36 + v87 - v87 / 0x3CF * v35) ^ 0x36) ^ (16 * v88)) << 8)) >> 4)) ^ 0x36) & 0xF0 | (v82 >> 8) & 0xF, 1722941440, 3622601530);
}

uint64_t sub_100A5C52C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v8 = 56 * (v4 ^ 0x57F4);
  *(a1 + 840) = *(v7 + 8 * v2);
  v9 = (*(v6 + 68) & 0x3Fu) + a2 > 0x3F;
  LODWORD(STACK[0x4F0]) = v8;
  v10 = *v3;
  *(v5 + 176) = v6;
  LODWORD(STACK[0x5DC]) = a2;
  *(a1 + 2016) = v10;
  return (*(v7 + 8 * (((((v4 + 63) ^ v9) & 1) * (v8 - 15409)) ^ v4)))(2684652240, 1342326125, 2848998442);
}

uint64_t sub_100A5C6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v70 = (LODWORD(STACK[0x3838]) - 71) ^ ((LODWORD(STACK[0x3838]) - 71) << 6) ^ (4 * (LODWORD(STACK[0x3838]) - 71));
  STACK[0x3628] = 0;
  STACK[0x3620] = 0;
  STACK[0x200] = v63;
  STACK[0x3838] = 0;
  LODWORD(STACK[0x34C8]) = 0;
  STACK[0x35A8] = 0;
  STACK[0x35A0] = 0;
  LODWORD(STACK[0x34C0]) = 0;
  LODWORD(v115) = ((LOBYTE(STACK[0x37F8]) ^ 0xE3) >> 3) | (32 * (LODWORD(STACK[0x37F8]) ^ 0xFFFFFFE3));
  STACK[0x3208] = ((LOBYTE(STACK[0x37F0]) ^ 0xE) >> 3) | (32 * (LODWORD(STACK[0x37F0]) ^ 0xEu));
  v71 = (LODWORD(STACK[0x37E8]) - 71) ^ ((LODWORD(STACK[0x37E8]) - 71) << 6) ^ (4 * (LODWORD(STACK[0x37E8]) - 71));
  v72 = ((LOBYTE(STACK[0x37D0]) ^ 0xE) >> 3) | (32 * (LODWORD(STACK[0x37D0]) ^ 0xEu));
  v73 = (LODWORD(STACK[0x37C8]) - 71) ^ ((LODWORD(STACK[0x37C8]) - 71) << 6) ^ (4 * (LODWORD(STACK[0x37C8]) - 71));
  v74 = (LODWORD(STACK[0x37E0]) - 71) ^ ((LODWORD(STACK[0x37E0]) - 71) << 6) ^ (4 * (LODWORD(STACK[0x37E0]) - 71));
  v75 = ((LOBYTE(STACK[0x37D8]) ^ 0xE) >> 3) | (32 * (LODWORD(STACK[0x37D8]) ^ 0xEu));
  HIDWORD(v117) = ((LOBYTE(STACK[0x38A8]) ^ 0xE) >> 3) | (32 * (LODWORD(STACK[0x38A8]) ^ 0xE));
  v76 = ((LOBYTE(STACK[0x39A0]) ^ 0xE) >> 3) | (32 * (LODWORD(STACK[0x39A0]) ^ 0xEu));
  STACK[0x32B8] = ((LOBYTE(STACK[0x3800]) ^ 0xE) >> 3) | (32 * (LODWORD(STACK[0x3800]) ^ 0xEu));
  HIDWORD(a62) = ((LOBYTE(STACK[0x39B0]) ^ 0xE3) >> 3) | (32 * (LODWORD(STACK[0x39B0]) ^ 0xFFFFFFE3));
  v77 = (LODWORD(STACK[0x39B8]) - 71) ^ ((LODWORD(STACK[0x39B8]) - 71) << 6) ^ (4 * (LODWORD(STACK[0x39B8]) - 71));
  v78 = STACK[0x37B8];
  v79 = (v65 - 32);
  STACK[0x3508] = v79;
  v80 = (v62 + v79);
  v81 = (*(v62 + v79 + 3) >> 1) | (*(v62 + v79 + 3) << 7);
  v82 = LODWORD(STACK[0x3A50]) ^ 0x3168;
  v83 = (*(v62 + v79 + 6) + 111) ^ 0x36;
  v84 = *(v67 + (((v82 - 3213) ^ 0x1118C18) + v83 * v66 - ((81037119 * ((((v82 - 3213) ^ 0x1118C18u) + v83 * v66) >> 7)) >> 32) * v68)) ^ 0xE;
  STACK[0x38A8] = (v84 >> 3) | (32 * v84);
  v85 = ((v80[27] + 111) ^ 0x36) * v66 + 17937420;
  v86 = *(v67 + v85 - (((v85 * v64) >> 32) >> 1) * v68) ^ 0xE;
  LODWORD(STACK[0x35E0]) = (v86 >> 3) | (32 * v86);
  HIDWORD(v114) = (LODWORD(STACK[0x3810]) + 117) ^ 0x12 ^ ((LODWORD(STACK[0x3810]) + 117) >> 2) & 0x12;
  v87 = (LODWORD(STACK[0x3808]) + 117) ^ 0x12 ^ ((LODWORD(STACK[0x3808]) + 117) >> 2) & 0x12;
  v88 = (LODWORD(STACK[0x39D8]) + 117) ^ 0x12 ^ ((LODWORD(STACK[0x39D8]) + 117) >> 2) & 0x12;
  v89 = LODWORD(STACK[0x37C0]) + 117;
  v90 = (v80[15] ^ 0xC4) * v66 + 14331348;
  v91 = v90 - (((v90 * v64) >> 32) >> 1) * v68;
  v92 = (v80[12] ^ 0x9A) * v66 + 25186740;
  v93 = *(v67 + v91) + 117;
  v94 = (v80[28] ^ 0xB8) * v66 + 9544938;
  LODWORD(v114) = (v70 ^ 0xFFFFFFFE) + 26;
  v112 = (LODWORD(STACK[0x3820]) ^ 0xFFFFFFC3) + 85;
  LODWORD(STACK[0x31C0]) = v112 ^ LODWORD(STACK[0x38A0]);
  v95 = LODWORD(STACK[0x3830]) - 87;
  LODWORD(STACK[0x31F0]) = 97 * (LODWORD(STACK[0x3828]) ^ 0xFFFFFFA2);
  v113 = (v95 ^ 0xFFFFFFFB) + 85;
  STACK[0x31F8] = LODWORD(STACK[0x3898]) ^ STACK[0x330];
  HIDWORD(v115) = 97 * (LODWORD(STACK[0x3850]) ^ 0x27);
  LODWORD(STACK[0x31D8]) = ((LODWORD(STACK[0x3840]) - 87) ^ 0xFFFFFFFB) + 85;
  v96 = ((LODWORD(STACK[0x3848]) - 87) ^ 0xFFFFFFFB) + 85;
  LODWORD(STACK[0x31E0]) = (v71 ^ 0xFFFFFFFE) + 26;
  v97 = LODWORD(STACK[0x3A58]) - 87;
  STACK[0x3200] = v87 + 26;
  HIDWORD(a54) = (v97 ^ 0xFFFFFFFB) + 85;
  v98 = ((LODWORD(STACK[0x3A48]) - 87) ^ 0xFFFFFFFB) + 85;
  STACK[0x31E8] = 97 * (LODWORD(STACK[0x3A68]) ^ 0x27u);
  LODWORD(STACK[0x3318]) = v72 ^ LODWORD(STACK[0x3890]);
  STACK[0x3320] = v88 + 26;
  STACK[0x3328] = STACK[0x390] ^ LODWORD(STACK[0x3880]);
  STACK[0x3330] = LODWORD(STACK[0x3878]) ^ STACK[0x3A8];
  v99 = LODWORD(STACK[0x3A78]) ^ 0x27u;
  HIDWORD(v116) = 97 * (LODWORD(STACK[0x3A70]) ^ 0x27);
  HIDWORD(a57) = (v73 ^ 0xFFFFFFFE) + 26;
  LODWORD(STACK[0x3290]) = STACK[0x3C0] ^ LODWORD(STACK[0x3870]);
  STACK[0x32A0] = ((LODWORD(STACK[0x3A80]) - 87) ^ 0xFFFFFFFB) + 85;
  LODWORD(v117) = 97 * (LODWORD(STACK[0x3AC8]) ^ 0xFFFFFFA2);
  STACK[0x32B0] = STACK[0x3E8] ^ LODWORD(STACK[0x3868]);
  v100 = 97 * (LODWORD(STACK[0x3A90]) ^ 0xFFFFFFA2);
  STACK[0x3340] = LODWORD(STACK[0x3888]) ^ STACK[0x430];
  STACK[0x32A8] = (LODWORD(STACK[0x3AA8]) ^ 0xFFFFFFC3) + 85;
  LODWORD(v118) = 97 * (LODWORD(STACK[0x3A98]) ^ 0xFFFFFFA2);
  LODWORD(STACK[0x3298]) = LODWORD(STACK[0x3860]) ^ STACK[0x488];
  v101 = ((LODWORD(STACK[0x3AA0]) - 87) ^ 0xFFFFFFFB) + 85;
  STACK[0x32F0] = STACK[0x4F8] ^ LODWORD(STACK[0x3858]);
  STACK[0x32E8] = 97 * (LODWORD(STACK[0x39E0]) ^ 0xFFFFFFA2);
  STACK[0x3348] = LODWORD(STACK[0x4C0]) ^ v78;
  v102 = *(v67 + (v81 ^ 0xD9) * v66 + 19140993 - (((((v81 ^ 0xD9u) * v66 + 19140993) * v64) >> 32) >> 1) * v68);
  LODWORD(STACK[0x32E0]) = (v89 ^ 0x12 ^ (v89 >> 2) & 0x12) + 26;
  v103 = *(v67 + v92 - (((v92 * v64) >> 32) >> 1) * v68);
  LODWORD(STACK[0x39C8]) = 97 * (v102 ^ 0x27);
  STACK[0x3828] = (v103 ^ 0xFFFFFFC3) + 85;
  STACK[0x3870] = (v93 ^ 0x12 ^ (v93 >> 2) & 0x12) + 26;
  v104 = *(v67 + v94 - (((v94 * v64) >> 32) >> 1) * v68);
  v105 = STACK[0x3838];
  STACK[0x35F8] = ((v104 - 87) ^ 0xFFFFFFFB) + 85;
  v106 = *(STACK[0x3AC0] + 8 * v82);
  v107 = STACK[0x200];
  LODWORD(STACK[0x3188]) = STACK[0x2C0] ^ STACK[0x200];
  LODWORD(STACK[0x3170]) = STACK[0x2E0] ^ STACK[0x2B8];
  LODWORD(STACK[0x3180]) = STACK[0x2B0] ^ v69;
  STACK[0x3198] = STACK[0x2D0] ^ STACK[0x2A8];
  STACK[0x3178] = STACK[0x2D8] ^ STACK[0x2C8];
  STACK[0x3190] = LODWORD(STACK[0x2A4]) ^ STACK[0x2E8];
  LODWORD(STACK[0x31B0]) = STACK[0x308] ^ STACK[0x320];
  v108 = STACK[0x318];
  v109 = STACK[0x2F0];
  STACK[0x31C8] = STACK[0x2F0] ^ STACK[0x318];
  v110 = STACK[0x310];
  STACK[0x31B8] = STACK[0x310] ^ STACK[0x2F8];
  LODWORD(STACK[0x31A8]) = STACK[0x360] ^ STACK[0x348];
  LODWORD(v116) = v96;
  STACK[0x31D0] = STACK[0x340] ^ v96;
  LODWORD(STACK[0x31A0]) = STACK[0x358] ^ LODWORD(STACK[0x33C]);
  STACK[0x3338] = v98 ^ STACK[0x370];
  LODWORD(STACK[0x3300]) = STACK[0x388] ^ STACK[0x3B0];
  LODWORD(STACK[0x3310]) = v99;
  LODWORD(STACK[0x32F8]) = 97 * v99;
  STACK[0x3308] = STACK[0x380] ^ STACK[0x3A0];
  STACK[0x3288] = STACK[0x3F0] ^ STACK[0x3D0];
  LODWORD(STACK[0x3228]) = STACK[0x3C8] ^ STACK[0x400];
  LODWORD(STACK[0x3248]) = STACK[0x3F8] ^ STACK[0x3D8];
  LODWORD(STACK[0x3240]) = STACK[0x440] ^ STACK[0x428];
  LODWORD(STACK[0x3230]) = v75 ^ STACK[0x420];
  LODWORD(STACK[0x3238]) = v76 ^ STACK[0x448];
  LODWORD(STACK[0x3210]) = LODWORD(STACK[0x414]) ^ STACK[0x438];
  HIDWORD(v118) = v100;
  STACK[0x3258] = v100 ^ STACK[0x418];
  STACK[0x3278] = (LODWORD(STACK[0x3B8]) ^ LODWORD(STACK[0x3E4]));
  LODWORD(STACK[0x3220]) = STACK[0x490] ^ STACK[0x478];
  LODWORD(STACK[0x3218]) = STACK[0x480] ^ STACK[0x4A0];
  STACK[0x3260] = STACK[0x498] ^ STACK[0x470];
  STACK[0x3280] = STACK[0x4B0] ^ STACK[0x460];
  STACK[0x3270] = STACK[0x4B8] ^ STACK[0x468];
  LODWORD(STACK[0x32C0]) = LODWORD(STACK[0x4E4]) ^ STACK[0x4D0];
  STACK[0x3268] = STACK[0x4A8] ^ STACK[0x458];
  LODWORD(STACK[0x32D0]) = STACK[0x4D8] ^ STACK[0x4E8];
  STACK[0x3250] = v101 ^ LODWORD(STACK[0x454]);
  STACK[0x32D8] = STACK[0x4F0] ^ LODWORD(STACK[0x4C4]);
  LODWORD(STACK[0x32C8]) = ((v77 ^ 0xFFFFFFFE) + 26) ^ STACK[0x4C8];
  STACK[0x3890] = v80[4];
  LODWORD(STACK[0x3868]) = v80[2];
  LODWORD(STACK[0x3858]) = v80[11];
  LODWORD(STACK[0x35C8]) = v80[19];
  LODWORD(STACK[0x3860]) = v80[1];
  LODWORD(STACK[0x35C0]) = v80[25];
  STACK[0x3898] = *v80;
  STACK[0x3608] = v80[22];
  STACK[0x3848] = v80[16];
  STACK[0x38A0] = v80[5];
  LODWORD(STACK[0x3880]) = v80[9];
  STACK[0x3650] = v80[31];
  LODWORD(STACK[0x35B0]) = v80[18];
  STACK[0x3610] = v80[23];
  STACK[0x3888] = v80[8];
  STACK[0x3640] = v80[29];
  STACK[0x3878] = v80[14];
  LODWORD(STACK[0x35D8]) = v80[26];
  STACK[0x3600] = v80[21];
  STACK[0x34E8] = v80;
  STACK[0x35D0] = v80[24];
  STACK[0x3630] = 0xC0DA095330FBCB60;
  STACK[0x3638] = 0xDA926D090658F787;
  LODWORD(STACK[0x39B8]) = STACK[0x38D8];
  LODWORD(STACK[0x39B0]) = STACK[0x38E8];
  LODWORD(STACK[0x3660]) = STACK[0x3A10];
  LODWORD(STACK[0x34B0]) = STACK[0x3468];
  LODWORD(STACK[0x34D0]) = STACK[0x33B0];
  LODWORD(STACK[0x34E0]) = STACK[0x33C0];
  LODWORD(STACK[0x3688]) = STACK[0x3A18];
  LODWORD(STACK[0x3390]) = STACK[0x3460];
  LODWORD(STACK[0x3680]) = STACK[0x3A08];
  LODWORD(STACK[0x3398]) = STACK[0x3478];
  LODWORD(STACK[0x3388]) = STACK[0x3470];
  LODWORD(STACK[0x3380]) = STACK[0x3458];
  LODWORD(STACK[0x3658]) = STACK[0x39F8];
  LODWORD(STACK[0x3678]) = STACK[0x39F0];
  LODWORD(STACK[0x3370]) = STACK[0x3490];
  LODWORD(STACK[0x3378]) = STACK[0x3450];
  LODWORD(STACK[0x34B8]) = STACK[0x34A0];
  LODWORD(STACK[0x3670]) = STACK[0x3A00];
  LODWORD(STACK[0x39A8]) = STACK[0x38F0];
  LODWORD(STACK[0x34D8]) = STACK[0x33A8];
  LODWORD(STACK[0x34A8]) = STACK[0x3488];
  LODWORD(STACK[0x3668]) = STACK[0x39E8];
  LODWORD(STACK[0x39A0]) = STACK[0x38E0];
  LODWORD(STACK[0x3510]) = STACK[0x33A0];
  return v106(v108, v110, v105, v99, v98, v96, v109, v107, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, v112, v113, v114, v115, v98, a54, v116, (v74 ^ 0xFFFFFFFE) + 26, a57, v72, v117, v118, v76, a62, v75);
}

uint64_t sub_100A5D0A0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, unsigned int a8)
{
  v9 = STACK[0x288];
  v10 = *(STACK[0x288] + (a6 ^ 0x5667 ^ (a1 + 3393)) + v8);
  v11 = (v10 ^ 0xFFFFFFDF) + ((2 * v10) & 0xFFFFFFBF) + 109;
  LODWORD(STACK[0x2F4]) = v8 - 8;
  v12 = *(v9 + (a1 + v8 + 7));
  v13 = (v12 ^ 0x5D) + ((2 * v12) & 0xFFFFFFBA);
  v14 = *(v9 + (a1 + v8 + 5));
  return (*(STACK[0x2F8] + 8 * a6))(v13 - 4, 252, v11, a4, (v14 ^ 0xFFFFFFFB) + ((2 * v14) & 0xFFFFFFF7) + 125, 154, a7, v9 + a8);
}

uint64_t sub_100A5D1B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v9 = *(&STACK[0xDE0] + (a5 + ((v7 + 2092258311) ^ 0x7CB5C780u) * a3) % 0x1940);
  *(&STACK[0x320] + (a7 + 2361 * a3) % 0xA88u) = (((v9 ^ 0x61) - 29) ^ ((v9 ^ 0x30) - 76) ^ ((v9 ^ 0xB8) + 60)) - 11;
  return (*(v8 + 8 * ((992 * (a3 != 255)) ^ (v7 - 10932))))();
}

uint64_t sub_100A5D3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 < 0x5D4BF8E0;
  v6 = v4 + 1;
  if (v5 == v6 > 0xFFFFFFFFA2B4071FLL)
  {
    v5 = v6 + 1565260000 < v2;
  }

  return (*(a2 + 8 * (((((v3 + 7965) | 0x510) - 17707) * v5) ^ v3)))(a1);
}

uint64_t sub_100A5D56C(char a1)
{
  LODWORD(STACK[0x38A8]) = LODWORD(STACK[0x54E0]) | LODWORD(STACK[0x5610]);
  LODWORD(STACK[0x4090]) = LODWORD(STACK[0x54D0]) | LODWORD(STACK[0x5420]);
  LODWORD(STACK[0x40B0]) = LODWORD(STACK[0x54C0]) | LODWORD(STACK[0x5358]);
  LODWORD(STACK[0x3FF8]) |= LODWORD(STACK[0x53D8]);
  LODWORD(STACK[0x3468]) = LODWORD(STACK[0x53D0]) | LODWORD(STACK[0x3A08]);
  LODWORD(STACK[0x4078]) = v2 | LODWORD(STACK[0x54F0]);
  v3 = *(STACK[0x5308] + 774);
  v4 = *(STACK[0x57B0] + 1343);
  v5 = *(STACK[0x5770] + 1859);
  v6 = v5 & 0x24 | 0x58;
  v7 = v4 & 0x6C ^ 0x7C;
  v8 = (((v4 ^ (2 * ((v4 ^ a1) & (2 * ((v4 ^ a1) & (2 * ((v4 ^ a1) & (2 * ((v4 ^ a1) & (2 * v7) ^ v7)) ^ v7)) ^ v7)) ^ v7))) ^ 0x6C) << 8) | (((v5 ^ (2 * ((v5 ^ a1) & (2 * ((v5 ^ a1) & (2 * ((v5 ^ a1) & (2 * ((v5 ^ a1) & (2 * v6) ^ v6)) ^ v6)) ^ v6)) ^ v6))) ^ 0x24) << 16);
  v9 = v3 & 0x4A ^ 0xCB;
  LODWORD(STACK[0x3A08]) = ((((v3 ^ (2 * ((v3 ^ a1) & (2 * ((v3 ^ a1) & (2 * ((v3 ^ a1) & (2 * ((v3 ^ a1) & (2 * ((v3 ^ a1) & (2 * ((v3 ^ a1) & 0x3E ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9))) ^ 0x2AC461) & ~v8 | v8 & 0xD53B00) << 8) & 0x86997300;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_100A5D7B8(uint64_t a1)
{
  v3 = *(STACK[0x7D8] - 0x2369327399A66D85);
  ++*(STACK[0x7D8] - 0x2369327399A66D91);
  v4 = v3 + 16 * (((2 * STACK[0x780]) & 0x1F5FBFF4ELL) + ((((v2 - 30044) | 0x18DEu) - 0x82442005021B37) ^ STACK[0x780])) - 0x105F240E97F43E86;
  *(v4 + 8) = STACK[0x790];
  *(v4 + 12) = 2101965948;
  *v4 = a1;
  return (*(v1 + 8 * (v2 ^ ((STACK[0x760] == 0) | (2 * (STACK[0x760] == 0))))))();
}

uint64_t sub_100A5DA40@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 0x2369327399A66D75);
  STACK[0x8C0] = STACK[0x9E8] + 16 * LODWORD(STACK[0x9DC]);
  STACK[0x850] = v3;
  LODWORD(STACK[0x9F4]) = STACK[0xA1C];
  LODWORD(STACK[0x82C]) = STACK[0x93C];
  LODWORD(STACK[0x894]) = 1598172891;
  return (*(v2 + 8 * (v1 ^ 0xA7A917B8 ^ ((v1 + 1482112642) | 0x1481) ^ (51007 * (v1 == -1880464933)))))(0xE77C99F117EBBBF2, 16107, 3648468536, 2101965948);
}

void *sub_100A67C50()
{
  v3 = v2 - 103679699 + (v1 ^ 0x31Au) + (~((v0 - ((((v1 + 986143972) & 0xC538F856) - 143134924) ^ v1)) | (((((v1 + 986143972) & 0xC538F856) - 143134924) ^ v1) - v0)) >> 31);
  v4 = STACK[0x57D8];
  *STACK[0x8600] = (*(STACK[0x57D8] + 8 * (v1 ^ 0x7F25)))(v3);
  *STACK[0x90D0] = v2;
  return (*(v4 + 8 * (v1 ^ 0x1E05)))(&STACK[0xBC58], 103679699);
}

uint64_t sub_100A67D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = (a8 + 2062770258) & 0x850C9F7F;
  STACK[0x630] = v11;
  v12 = (((1645 * v8 + 2113825) % 0xA88u) ^ 0x97FF3E5BBBCFADEDLL) + STACK[0x638] + ((v11 ^ 0x4B4) & (2 * ((1645 * v8 + 2113825) % 0xA88u)));
  v13 = *STACK[0x650];
  v14 = *STACK[0x660];
  v15 = *(v14 + (v13 & STACK[0x648]));
  v16 = *v9 ^ v10;
  LODWORD(v12) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v12 + 1144017427 + v15 - 963544004) & v16)) ^ *(v12 + 0x225D78480B1337FELL) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v12 + 1144017427 + v15 - 963544002) & v16)) ^ (76 * (v12 + 19));
  v17 = STACK[0x640] + 4 * ((551 * (((v12 ^ 0xCA2FAFE5) - 1132772937) ^ ((v12 ^ 0xD80E380D) - 1369778593) ^ ((v12 ^ 0x12219798) + 1685420492)) + 1332751628) % 0x1D48);
  v18 = *(v14 + (v13 & STACK[0x658]));
  v19 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v17 + v18 + 673210726) & v16)) ^ *(v17 - 0x34EE34220E8AC3B8) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v17 + v18 + 673210728) & v16));
  v20 = v19 ^ (333999 * v17);
  v21 = ((v19 ^ (6319 * v17)) >> 8) ^ 0x79;
  v22 = 1645 * (((((v19 ^ (-1962600273 * v17)) >> 24 << 23) ^ 0x51800000) + 117440516) >> 23) + 3368960;
  LOBYTE(v17) = v19 ^ (-81 * v17);
  v23 = v22 - 2696 * (((12744711 * v22) >> 32) >> 3);
  v24 = BYTE2(v20) ^ 0x25;
  v25 = 1645 * (((v17 ^ 0x75EC0071) + 634110817) ^ ((v17 ^ 0x2C88A21F) + 2091868431) ^ ((v17 ^ 0x5964A2A7) + 155410871)) - 257013615;
  v26 = 1645 * v21 + 3391990 - 2696 * (((12744711 * (1645 * v21 + 3391990)) >> 32) >> 3);
  v27 = 1645 * v24 + 3391990 - 2696 * (((12744711 * (1645 * v24 + 3391990)) >> 32) >> 3);
  v28 = (v23 ^ 0x757FA5EFBBFE16BFLL) + STACK[0x638] + ((2 * v23) & 0xD7E);
  v29 = (v27 ^ 0x4ADF1ABBFDD78B6FLL) + STACK[0x638] + ((2 * v27) & 0x16DE);
  LODWORD(v27) = *(v14 + (v13 & 0xC6917C3C));
  LODWORD(v29) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v29 + 36205713 + v27 - 963544004) & v16)) ^ *(v29 + 0x6F7D9BE7C90B5A7CLL) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v29 + 36205713 + v27 - 963544002) & v16)) ^ (76 * (v29 - 111));
  LODWORD(v28) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v28 + 1140975937 + v27 - 963544004) & v16)) ^ *(v28 + 0x44DD10B40AE4CF2CLL) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v28 + 1140975937 + v27 - 963544002) & v16)) ^ (76 * (v28 + 65)) ^ 0x3009847F;
  v30 = ((v25 % 0xA88) ^ 0x3FE0F3AB8CF7BEE7) + STACK[0x638] + ((2 * (v25 % 0xA88)) & 0x1DCE);
  v31 = (v26 ^ 0x7D707EEE9DFE3DEFLL) + STACK[0x638] + ((2 * v26) & 0x1BDE);
  LODWORD(v28) = ((v28 << 16) & 0xC00000 | ((((v28 << 26) | 0xBF9800) & ((v29 << 18) ^ 0xFC3F9800) | (v29 << 18) & 0x3400000) >> 10)) ^ 0xF7FE6;
  LODWORD(v29) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v31 + 1644282385 + v27 - 963544004) & v16)) ^ *(v31 + 0x3CEC37B528E4A7FCLL) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v31 + 1644282385 + v27 - 963544002) & v16)) ^ (76 * (v31 + 17));
  LODWORD(v28) = ((v28 - ((2 * v28) & 0x81236E) + 12620215) ^ 0x2499A4) & (v29 ^ 0xFFFF8F) ^ v29 & 0xEC;
  LODWORD(v29) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v30 + 1929920793 + v15 - 963544004) & v16)) ^ *(v30 + 0x7A7BC2F839EB2704) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v30 + 1929920793 + v15 - 963544002) & v16)) ^ (76 * (v30 + 25));
  v32 = STACK[0x640] + 4 * (551 * (((2 * v8) & 0x14) + (v8 ^ 0x50Au)) % 0x1D48);
  *(v32 - 0x34EE34220E8AC3B8) = (-1962600273 * v32) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v18 + v32 + 673210726) & v16)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v18 + v32 + 673210728) & v16)) ^ 0xF1E41635 ^ (((v28 << 8) ^ 0xB6C91C9C) & (v29 ^ 0xFFFFFF8C) | v29 & 0x63);
  return (*(STACK[0x668] + 8 * ((9250 * (((2 * v8) & 2) + (v8 ^ 1u) < 0x100)) ^ a8)))();
}

uint64_t sub_100A6853C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if ((*(v7 + 8 * (v9 ^ 0x6A01)))(0, va) != ((v4 + 4428) ^ v5))
  {
    v8 = v6;
  }

  return (*(v7 + 8 * ((2118 * (v8 == 319206056)) ^ v9)))();
}

uint64_t sub_100A685C0@<X0>(int a1@<W8>)
{
  v14 = (*(v12 - 136) & 2) == 0;
  v15 = *(v12 - 172);
  if ((*(v12 - 136) & 2) == 0)
  {
    v15 = *(v12 - 132);
  }

  LODWORD(STACK[0x260]) = v15;
  if (v14)
  {
    a1 = v10;
  }

  LODWORD(STACK[0x338]) = a1;
  if ((STACK[0x2B0] & 2) != 0)
  {
    v16 = v11;
  }

  else
  {
    v16 = v13;
  }

  LODWORD(STACK[0x270]) = v16;
  v17 = (v2 + v8 + ((v8 + v6 - ((v8 + v6) >> 16)) >> 8) - ((v8 + v6) >> 16) - v7) ^ 0xA5E7146D;
  v18 = v17 - (v17 >> 15) + ((v17 - (v17 >> 15)) >> 8);
  v19 = v3 ^ v18;
  v20 = (((v18 ^ 0xFCD211DD) + ((v18 ^ 0xFCD211DD) >> 12)) >> (19 * (v1 ^ 0x2E) - 84)) + (v18 ^ 0xFCD211DD) + ((v18 ^ 0xFCD211DD) >> 12);
  v21 = v20 ^ v5;
  v22 = v20 - 120617819 - ((v20 - 120617819) >> 13) - ((v20 - 120617819 - ((v20 - 120617819) >> 13)) >> 8);
  v23 = v22 - 89550138 + ((v22 - 89550138) >> 9) - ((v22 - 89550138 + ((v22 - 89550138) >> 9)) >> 6);
  v24 = v19 ^ v23;
  v25 = (v23 ^ 0xCF4885C1) + ((v23 ^ 0xCF4885C1) >> 9) - (((v23 ^ 0xCF4885C1) + ((v23 ^ 0xCF4885C1) >> 9)) >> 3);
  v26 = v21 ^ v25;
  v27 = v25 - 405750948 - ((v25 - 405750948) >> 13) + ((v25 - 405750948 - ((v25 - 405750948) >> 13)) >> 3);
  v28 = v27 + 515040969 - ((v27 + 515040969) >> 11) + ((v27 + 515040969 - ((v27 + 515040969) >> 11)) >> 6);
  v29 = v28 - 129863067 - ((v28 - 129863067) >> 9) + ((v28 - 129863067 - ((v28 - 129863067) >> 9)) >> 1);
  v30 = v29 - 1289781242;
  v31 = v26 ^ v29;
  v32 = v22 ^ v4 ^ v27 ^ (v30 + (v30 >> 12) + ((v30 + (v30 >> 12)) >> 6));
  v33 = v24 ^ v28;
  LODWORD(STACK[0x200]) = (v24 ^ v28) & 0x7F ^ 0x69;
  v34 = v32 & 7 ^ 1;
  *(v12 - 132) = v34;
  v35 = -v34 & 7;
  if ((v32 & 7) == 1)
  {
    v36 = 0;
  }

  else
  {
    v36 = 255;
  }

  v37 = v36 << v35;
  v38 = v37;
  v39 = 1459617792 * v37;
  if ((v32 & 7) == 1)
  {
    v40 = 0;
  }

  else
  {
    v40 = ~v37;
  }

  if (*(v12 - 252) == -1338188924)
  {
    v41 = v39;
  }

  else
  {
    v41 = ~(v31 ^ v39);
  }

  LODWORD(STACK[0x2E4]) = v41;
  *(v12 - 152) = v31;
  LODWORD(STACK[0x258]) = v31 ^ 0x65 ^ ((v31 ^ 0x7065) >> 8) ^ ((v31 ^ 0xC8D37065) >> 16) ^ ((v31 ^ 0xC8D37065) >> 24) ^ 0x1A;
  v42 = v1 > 0x2D20BD01;
  v43 = v1 + 1545488107;
  v44 = v42;
  LODWORD(STACK[0x370]) = 16843009 * v38;
  LODWORD(STACK[0x35C]) = v33 & v40;
  LODWORD(STACK[0x364]) = 16843009 * (v33 ^ 0xE6 ^ ((v33 ^ 0x2CE6) >> 8) ^ ((v33 ^ 0x84482CE6) >> 16) ^ HIBYTE(v33) ^ 0x96);
  v45 = *(v9 + 8 * ((7590 * v44) ^ v43));
  LODWORD(STACK[0x280]) = v33 & 0xFFFFFF80;
  LODWORD(STACK[0x2D0]) = v32 & 0xFFFFFFF8;
  *(v12 - 176) = v33;
  LODWORD(STACK[0x368]) = v33 ^ 0x72513A69;
  *(v12 - 172) = v32;
  LODWORD(STACK[0x334]) = v32 ^ 0x72513A69;
  return v45(0x79504458FB528850, 0xBF43DADAD94F3250);
}

uint64_t sub_100A69120(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v13 = STACK[0x640] + 4 * (a2 * v10 + a6 - (((((a2 * v10 + a6) >> 3) * v7) >> 32) >> 7) * v12);
  v14 = STACK[0x640] + 4 * (a2 * v10 + 3254975 - (((((a2 * v10 + 3254975) >> 3) * v7) >> 32) >> 7) * v12);
  v15 = *(*STACK[0x660] + (*v9 & ((a4 + 1170869151) & 0xBA35EB75 ^ 0x28202A01)));
  v16 = *v6 ^ v8;
  *(v14 - 0x34EE34220E8AC3B8) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v14 + v15 + 673210726) & v16)) ^ *(v13 - 0x34EE34220E8AC3B8) ^ (-1962600273 * v14) ^ (-1962600273 * v13) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v14 + v15 + v11) & v16)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v13 + v15 + 673210726) & v16)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v13 + v15 + v11) & v16));
  return (*(STACK[0x668] + 8 * ((49 * (a2 == 255)) ^ a4)))();
}

uint64_t sub_100A6929C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = (v8 + a8 + ((a8 + a1 - ((a8 + a1) >> 16)) >> 8) - ((a8 + a1) >> 16) - v10) ^ 0xA5E7146D;
  v14 = v13 - (v13 >> 15) + ((v13 - (v13 >> 15)) >> 8);
  v15 = (v14 ^ 0xFCD211DD) + ((v14 ^ 0xFCD211DD) >> 12) + (((v14 ^ 0xFCD211DD) + ((v14 ^ 0xFCD211DD) >> 12)) >> 1);
  v16 = v15 - 120617819 - ((v15 - 120617819) >> (v14 & 0xD) >> (v14 & 0xD ^ 0xD));
  v17 = v16 - (v16 >> 8);
  v18 = v17 - 89550138 + ((v17 - 89550138) >> 9) - ((v17 - 89550138 + ((v17 - 89550138) >> 9)) >> 6);
  v19 = (v18 ^ 0xCF4885C1) + ((v18 ^ 0xCF4885C1) >> 9) - (((v18 ^ 0xCF4885C1) + ((v18 ^ 0xCF4885C1) >> 9)) >> 3);
  v20 = v19 - 405750948 - ((v19 - 405750948) >> 13) + ((v19 - 405750948 - ((v19 - 405750948) >> 13)) >> 3);
  v21 = v20 + 515040969 - ((v20 + 515040969) >> 11) + ((v20 + 515040969 - ((v20 + 515040969) >> 11)) >> 6);
  v22 = v21 - 129863067 - ((v21 - 129863067) >> 9) + ((v21 - 129863067 - ((v21 - 129863067) >> 9)) >> 1);
  v23 = *(v12 - 176);
  v24 = STACK[0x380];
  *(v12 - 192) = (v18 ^ v14 ^ v21) >> 2;
  LODWORD(STACK[0x364]) = (*(v12 - 156) ^ v24 ^ (v23 - 2097250420 - ((2 * v23) & 0x5FCFF18u))) >> 2;
  *(v12 - 160) = v20;
  *(v12 - 156) = v17;
  *(v12 - 176) = v22 - 1289781242 + ((v22 - 1289781242) >> 12) + ((v22 - 1289781242 + ((v22 - 1289781242) >> 12)) >> 6);
  return (*(v11 + 8 * v9))(827 * (v9 ^ 0x3BA6u));
}

uint64_t sub_100A6952C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, int a32)
{
  v35 = ((2 * (a32 ^ 0x49104901)) ^ 0x96B51E9E) & (a32 ^ 0x49104901) ^ (2 * (a32 ^ 0x49104901)) & 0xCB5A8F4E;
  v36 = v35 ^ 0x494A8141;
  v37 = (v35 ^ (a2 + 3786)) & (4 * (a10 & (a32 ^ 0x4900C50D) ^ a11)) ^ a10 & (a32 ^ 0x4900C50D) ^ a11;
  v38 = ((4 * v36) ^ 0x2D6A3D3C) & v36 ^ (4 * v36) & 0xCB5A8F4C;
  v39 = (v38 ^ 0x94A0D00) & (16 * v37) ^ v37;
  v40 = ((16 * (v38 ^ 0xC2108243)) ^ 0xB5A8F4F0) & (v38 ^ 0xC2108243) ^ (16 * (v38 ^ 0xC2108243)) & 0xCB5A8F40;
  v41 = v39 ^ 0xCB5A8F4F ^ (v40 ^ 0x81088400) & (v39 << 8);
  return (*(v34 + 8 * ((51300 * ((v32 - 2062687987) < 0x2EDC683A)) ^ (v32 - 4498))))(135, (v32 - 4498) ^ 0x4205u, 1663547151, a32 ^ (2 * ((v41 << 16) & 0x4B5A0000 ^ v41 ^ ((v41 << 16) ^ 0xF4F0000) & (((v40 ^ 0x4A520B0F) << 8) & 0x4B5A0000 ^ 0x1500000 ^ (((v40 ^ 0x4A520B0F) << 8) ^ 0x5A8F0000) & (v40 ^ 0x4A520B0F)))) ^ a13 ^ v33, 970705288, 45);
}

uint64_t sub_100A6978C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v10 = *(v9 + 1368);
  v11 = *(v10 + (5621 * v8 + 33523644) % ((v7 + 1578) ^ 0x51A2u));
  v12 = 3 * ((((v11 ^ (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * (v11 & 0x5A ^ 0xD3)) ^ v11 & 0x5A ^ 0xD3)) ^ v11 & 0x5A ^ 0xD3)) ^ v11 & 0x5A ^ 0xD3)) ^ v11 & 0x5A ^ 0xD3))) & 0xF8) >> 3) ^ 0xB);
  v13 = (v12 + 5) & 7;
  v14 = (((4 * v11) ^ 4) - v11 + 5) & 7;
  v15 = (v12 + 6) & 7;
  if (v13 != v14)
  {
    v15 = v13;
  }

  v16 = a7 + 5621 * v15;
  v17 = a7 + 5621 * v14 - 6152 * (((44681065 * (a7 + 5621 * v14)) >> 32) >> 6);
  v18 = *(v10 + v17);
  LOBYTE(v16) = *(v10 + v16 - 6152 * (((44681065 * v16) >> 32) >> 6));
  v19 = v18 & 0x96 ^ 0x31;
  v20 = v16 & 0xAE ^ 0x1D;
  v21 = v16 ^ v18 ^ (2 * (v20 ^ v19 ^ (v18 ^ 0x34) & (2 * ((v18 ^ 0x34) & (2 * ((v18 ^ 0x34) & (2 * ((v18 ^ 0x34) & (2 * ((v18 ^ 0x34) & (2 * (v19 ^ v18 & 0x22)) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ (v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * (v20 ^ v16 & 0x1A)) ^ v20)) ^ v20)) ^ v20)) ^ v20))));
  *(v10 + v17) = (((v21 ^ 0xE3) - 52) ^ ((v21 ^ 0x81) - 86) ^ ((v21 ^ 0x5A) + 115)) + 59;
  return (*(STACK[0x57D8] + 8 * ((14 * (v8 == 127)) | v7)))();
}

uint64_t sub_100A69950@<X0>(unsigned int a1@<W0>, int a2@<W1>, int a3@<W8>)
{
  v7 = a1 < v3;
  v8 = *(v6 + (a2 + v4));
  v9 = (((((2 * v8) ^ 0x98) + 44) ^ (((2 * v8) ^ 0x7A) + ((a3 + 11) & 0xBB ^ 0x78)) ^ (((2 * v8) ^ 0xE3) + 81)) + 77) * v8 + 98;
  v10 = v9 & 0x5C ^ 0x63;
  v11 = (a2 ^ 0xCB) & (2 * (a2 & v4)) ^ a2 & v4;
  v12 = (a2 ^ (2 * ((a2 ^ 0x8B) & (2 * (a2 ^ 0x8B)) & (4 * v11) ^ v11))) & 0xF ^ 3;
  v13 = (*(&STACK[0x310] + v12) - ((2 * *(&STACK[0x310] + v12)) & 0xE0) - 16) ^ v9 ^ (2 * ((v9 ^ 0x1E) & (2 * ((v9 ^ 0x1E) & (2 * ((v9 ^ 0x1E) & (2 * ((v9 ^ 0x1E) & (2 * ((v9 ^ 0x1E) & (2 * ((v9 ^ 0x1E) & 2 ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10));
  if (v7 == a2 + 2084040274 < v3)
  {
    v7 = a2 + 2084040274 < a1;
  }

  v14 = *(v5 + 8 * ((v7 | (4 * v7)) ^ a3));
  *(&STACK[0x310] + v12) = v13 ^ 0xAC;
  return v14();
}

uint64_t sub_100A69B1C()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x24CE)))(v0);
  return (*(v2 + 8 * (v1 - 13550)))(v3);
}

uint64_t sub_100A69B4C(uint64_t a1)
{
  v6 = v1 - 119;
  v7 = v1 + 9568;
  if (v2)
  {
    v8 = v3 == 0;
  }

  else
  {
    v8 = 1;
  }

  v11 = v8 || v4 == 0 || *(a1 + 40) == 0;
  return (*(v5 + 8 * (((4 * ((v6 ^ v11) & 1)) & 0xF7 | (8 * ((v6 ^ v11) & 1))) ^ v7)))();
}

uint64_t sub_100A6A1E0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v8 + (v6 * a2 + 2069067656) % 0xA88u) = v5;
  LODWORD(STACK[0x2F4]) = v6;
  v10 = *(v9 + 8 * v7);
  LODWORD(STACK[0x2F0]) = v7 + 11633;
  return v10(a1, 17, a3, a4, a5, (v7 - 5494));
}

uint64_t sub_100A6A33C(int a1, unsigned int a2, uint64_t a3, int a4)
{
  v6 = a2 < v4;
  if (v6 == v5 + a4 < v4)
  {
    v6 = v5 + a4 < a2;
  }

  return (*(STACK[0x6D8] + 8 * (((4 * v6) | (8 * v6)) ^ a1)))();
}

uint64_t sub_100A6A718(double a1, double a2, double a3, double a4, double a5, double a6, double a7, __n128 a8, uint64_t a9, __n128 *a10)
{
  a10[-1] = a8;
  *a10 = a8;
  return (*(v15 + 8 * (((v14 == 0) * (((v11 ^ (v16 - 2)) * v12) ^ v10)) ^ v13)))();
}

uint64_t sub_100A6A750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, unsigned int a16)
{
  v19 = *(v17 + 8 * v16);
  *(v18 - 248) = v16 + 17928;
  return v19(a16, a15, 1815847711, 151567788, 1652686138, 129164175, 3951620241, 2394680870);
}

uint64_t sub_100A6A880(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  LODWORD(STACK[0x5240]) = a3;
  LODWORD(STACK[0x5248]) = v12;
  LODWORD(STACK[0x5250]) = a4;
  LODWORD(STACK[0x5258]) = a5;
  LODWORD(STACK[0x5260]) = v17;
  LODWORD(STACK[0x5268]) = v13;
  LODWORD(STACK[0x5270]) = v10;
  LODWORD(STACK[0x5278]) = v18;
  LODWORD(STACK[0x5280]) = a7;
  LODWORD(STACK[0x5288]) = v9;
  LODWORD(STACK[0x5500]) = v15;
  LODWORD(STACK[0x5510]) = v14;
  LODWORD(STACK[0x5520]) = a2;
  LODWORD(STACK[0x5540]) = v11;
  LODWORD(STACK[0x5600]) = a8;
  LODWORD(STACK[0x5610]) = a1;
  LODWORD(STACK[0x5620]) = v16;
  LODWORD(STACK[0x5630]) = v8;
  LODWORD(STACK[0x5640]) = a6;
  return (*(STACK[0x57D8] + 8 * (((((LODWORD(STACK[0x5530]) - 34904562) ^ 0xFDEB7858) + LODWORD(STACK[0x52A8]) == 256) * ((LODWORD(STACK[0x5530]) - 34904562) & 0xDFD787AF ^ 0xDDC3519F)) ^ LODWORD(STACK[0x5530]))))();
}

uint64_t sub_100A6A9D4@<X0>(int a1@<W8>)
{
  v1 = STACK[0x57D8];
  STACK[0x73A0] = *(STACK[0x57D8] + 8 * a1);
  return (*(v1 + 8 * ((a1 ^ 0x1D86) + a1)))();
}

uint64_t sub_100A6AA14@<X0>(uint64_t a1@<X5>, uint64_t a2@<X6>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v12 = (((v10 ^ 0x8659C295) + 2040937835) ^ ((v10 ^ 0x62DB137F) - 1658524543) ^ (((2 * v5) ^ 0x8354) + (v10 ^ (v7 + 1716)) - 916358518)) + 822464273;
  v13 = ((v12 ^ 0xE014421) - 1357384287) ^ v12 ^ ((v12 ^ 0x3F139967) - 1643829017) ^ ((v12 ^ 0x900420C7) + 823300423) ^ ((v12 ^ 0xFFFFB3FF) + 1592328831);
  v14 = v13 ^ v6;
  v15 = __ROR8__((v9 + v14) & 0xFFFFFFFFFFFFFFF8, 8);
  v16 = ((a3 + 2 * v15) & 0xD79FE0A95A080288) - v15 - 0x39DB559691975EA8;
  v17 = __ROR8__(v16 ^ 0xFB88513A76CF4E3FLL, 8);
  v16 ^= 0x8BD37B355255A525;
  v18 = (((2 * (v17 + v16)) & 0xCF2F329414951E78) - (v17 + v16) + 0x186866B5F5B570C3) ^ 0x713F421D85A512CLL;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ a1;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ a2;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (v4 - ((v24 + v23) | v4) + ((v24 + v23) | 0xF9C89B137BF88599)) ^ 0xDB8492D93FF48992;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ v11;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0xB2823E14A03C0367;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  *(a4 + v14) = (((((2 * (v31 + v30)) & 0x56E2890F341C0CBALL) - (v31 + v30) + 0x548EBB7865F1F9A2) ^ 0x3DDFC7D56289E821) >> (8 * ((v9 + (v13 ^ v6)) & 7))) ^ *(v9 + v14);
  return (*(STACK[0x57D8] + 8 * ((9986 * (v13 == v6)) ^ v8)))();
}

uint64_t sub_100A6AED4(char a1, uint64_t a2, int a3, uint64_t a4, char a5, unsigned int a6, int a7, int a8)
{
  v19 = ((v13 % 0xA88) ^ 0xFFFABFF7FDDFED3ELL) + v8 + (((v13 % 0xA88) << (v9 ^ 0x6Fu)) & 0x1A7C);
  v20 = *(v19 - 0x459E095436FD0753);
  LODWORD(v19) = v19 + 35656386;
  v21 = *(*v18 + (*v17 & a7));
  v22 = *v12 ^ v14;
  v23 = *(v16 + 2792) ^ v15;
  v24 = *(v23 + ((v19 + v21 + a7) & v22)) ^ v20 ^ *(v23 + ((v19 + v21 + a7 + 2) & v22));
  HIDWORD(v25) = v24 ^ (12 * v19);
  LODWORD(v25) = (v24 ^ (v19 * a3) ^ 0x70) << 24;
  LODWORD(v19) = (v25 >> 28) - ((2 * (v25 >> 28)) & 0xFFFFFFA4) - 46;
  LODWORD(v19) = ((v19 >> 7) & 1 | (2 * v19)) ^ 0xFFFFFFC9;
  v26 = v21 + a8;
  LOBYTE(v21) = (v19 >> 5) | (8 * v19);
  v27 = a5 ^ *(v23 + ((v26 + a7) & v22)) ^ *(v23 + ((v26 + a7 + 2) & v22));
  LOBYTE(v26) = v27 ^ a1;
  v28 = (((v26 ^ 0x8C) + 33) ^ ((v26 ^ 0x8E) + 35) ^ ((v26 ^ 0x72) - 33)) + (v21 ^ 0x63) - ((((2 * ((v21 ^ 0x63) & (v27 ^ a1 ^ 0x1A) ^ v21 & 0x6A)) ^ 0xF5) + 121) ^ (((2 * ((v21 ^ 0x63) & (v27 ^ a1 ^ 0x1A) ^ v21 & 0x6A)) ^ 0xED) + 97) ^ (((2 * ((v21 ^ 0x63) & (v27 ^ a1 ^ 0x1A) ^ v21 & 0x6A)) ^ 0xDC) + 82)) + 111;
  v29 = (((v26 ^ 0xDE) - 26) ^ ((v26 ^ 0xFD) - 57) ^ ((v26 ^ 0x53) + 105)) - 74;
  if ((a6 >> v10))
  {
    v29 = v28;
  }

  v30 = v29 & 0x14 ^ 0x1F;
  v31 = 2 * ((2 * (v30 ^ v29 & 0x6A)) ^ 0xD4 ^ v30 ^ ((2 * (v30 ^ v29 & 0x6A)) ^ 0xD4) & v29);
  v32 = 2 * ((2 * (v31 ^ v30 ^ v31 & v29)) ^ v30 ^ (2 * (v31 ^ v30 ^ v31 & v29)) & v29);
  *(a4 + v11) = v27 ^ v29 ^ (2 * ((2 * (v32 ^ v30 ^ v32 & v29)) ^ v30 ^ (2 * (v32 ^ v30 ^ v32 & v29)) & v29)) ^ 0x64;
  return (*(STACK[0x668] + 8 * ((249 * (v10 != 7)) ^ v9)))();
}

uint64_t sub_100A6B178(int a1)
{
  v5 = *(&STACK[0x320] + (v2 + (((v1 - 1647509209) & 0x6232FEDFu) - 13715) * a1) % 0xA88);
  v6 = *(&STACK[0xDE0] + (825 * (v5 | ((v5 < 0x60) << 8)) + 3524400) % 0x1940);
  v7 = *(&STACK[0x320] + (2361 * (((HIBYTE(v6) ^ 0x4F23DDD2) + 1752275213) ^ ((HIBYTE(v6) ^ 0x52327B49) + 1969242008) ^ ((HIBYTE(v6) ^ 0x1D11A6E7) + 977527354)) + 1517513910) % 0xA88u);
  LOBYTE(v5) = *(&STACK[0x320] + (2361 * (((v6 ^ 0x6A35F109) - 964470231) ^ ((v6 ^ 0xBD91A921) + 287769089) ^ ((v6 ^ 0xD7A458C1) + 2064839649)) + 527963320) % 0xA88);
  v8 = v7 & 0x58 ^ 0xDC;
  v9 = *(&STACK[0x320] + (2361 * (((BYTE2(v6) ^ 0xEC8DED3B) - 1806746902) ^ ((BYTE2(v6) ^ 0xD687510D) - 1371175200) ^ ((BYTE2(v6) ^ 0x3A0ABC56) + 1120430981)) + 1127685670) % 0xA88);
  v10 = v9 & 0x30 | 0xC8;
  v11 = *(&STACK[0x320] + (2361 * (((BYTE1(v6) ^ 0x74B5047F) + 412847941) ^ ((BYTE1(v6) ^ 0x5811F2C8) + 876575220) ^ ((BYTE1(v6) ^ 0x2CA4F604u) + 1082817856)) + 1189711232) % 0xA88);
  v12 = ((v7 ^ (2 * ((v7 ^ 0x20) & (2 * ((v7 ^ 0x20) & (2 * ((v7 ^ 0x20) & (2 * ((v7 ^ 0x20) & (2 * v8) ^ v8)) ^ v8)) ^ v8)) ^ v8))) << 16) ^ 0x4312FA;
  v13 = v11 & 0xE0 ^ 0x20;
  v14 = (v9 ^ (2 * ((v9 ^ 0x20) & (2 * ((v9 ^ 0x20) & (2 * ((v9 ^ 0x20) & (2 * ((v9 ^ 0x20) & (2 * ((v9 ^ 0x20) & (2 * v10) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10))) << 8;
  v15 = v11 ^ (2 * ((v11 ^ 0x20) & (2 * ((v11 ^ 0x20) & (2 * ((v11 ^ 0x20) & (2 * ((v11 ^ 0x20) & (2 * v13) ^ v13)) ^ v13)) ^ v13)) ^ v13));
  v16 = (v14 ^ 0xFF02FA) & v12 | v14 & 0xED00;
  LOBYTE(v14) = (v5 & 0xA0 | 0x41) ^ v5 & 0x82;
  LOBYTE(v5) = v5 ^ (2 * ((v5 ^ 0x20) & (2 * ((v5 ^ 0x20) & (2 * ((v5 ^ 0x20) & (2 * ((v5 ^ 0x20) & (2 * ((v5 ^ 0x20) & (2 * (v5 & (2 * v14) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14));
  *(&STACK[0xDE0] + (v3 + 825 * a1) % 0x1940u) = (((((v16 ^ 0x2A5F2C) & (v15 ^ 0xFFFF1E) ^ v15 & 0x29) << 8) ^ 0x78B8F6D7) & (v5 ^ 0xFFFFFFD5) | v5 & 0x28) ^ 0x35B5B31E;
  return (*(v4 + 8 * (((a1 == 255) | (8 * (a1 == 255))) ^ v1)))();
}

uint64_t sub_100A6B5E0()
{
  v0 = STACK[0x274C];
  STACK[0x68A0] = STACK[0x69E8];
  LODWORD(STACK[0x8C10]) = 510163126;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100A6B620@<X0>(int a1@<W0>, int a2@<W5>, int a3@<W7>, int a4@<W8>)
{
  v9 = a2 - a1 - 601168885;
  LODWORD(v10) = __ROR4__(a2 ^ ((a2 ^ 0xEA6236F9) + 910742260) ^ ((a2 ^ 0x306E239B) - 331036782) ^ ((a2 ^ 0x7FFFEEF5) - 1546319104) ^ 0xE714A2FA ^ ((((((a4 | 0x1A08) - 1463583085) & 0x573C7E5F) - 2044287993) ^ a2) + 1510737001), 25) ^ 0x4D7FB7DA;
  HIDWORD(v10) = v10;
  v11 = STACK[0x6C0];
  LODWORD(STACK[0x49C]) = LODWORD(STACK[0x328]) + ((((v10 >> 7) ^ 0xCDC35ED7) + 904214616) ^ (((v10 >> 7) ^ 0xBA708509) + 1112990602) ^ (((v10 >> 7) ^ 0x7E89DBE) - 3212481));
  v12 = v6 - LODWORD(STACK[0x2C8]) - (v5 + a2 - 601168885) - 495965503;
  v13 = v7 - a3 - v11 + 1981004671;
  LODWORD(STACK[0x494]) = LODWORD(STACK[0x31C]) + v12;
  LODWORD(STACK[0x490]) = LODWORD(STACK[0x314]) - v13;
  v14 = v8 - LODWORD(STACK[0x310]);
  v15 = ((v11 - v8 + a3) ^ v13) - 524704228;
  v16 = v13 - (v14 + 1719111504);
  LODWORD(STACK[0x578]) = LODWORD(STACK[0x304]) - (((v12 ^ v9 ^ 0x99254CF4) + 848180504) ^ ((v12 ^ v9 ^ 0xE4BF8513) + 1326775537) ^ ((v12 ^ v9 ^ 0x7D9AC9E7) - 701386747));
  LODWORD(STACK[0x4B4]) = LODWORD(STACK[0x300]) - (v12 ^ (v5 + v9 + v4));
  LODWORD(STACK[0x4B8]) = LODWORD(STACK[0x2FC]) - v14 + 1559650189;
  LODWORD(STACK[0x660]) = v12 - (a1 - 1896270679) + 108920799;
  LODWORD(STACK[0x6A8]) = v16 + 108920799;
  LODWORD(STACK[0x6B0]) = ((a1 - 1896270679) ^ 0x3B9ABBCF) + 1230708005;
  LODWORD(STACK[0x650]) = v15 ^ (v16 + 108920799);
  v17 = *(STACK[0x6D8] + 8 * (a4 | 0x1A08));
  STACK[0x370] = STACK[0x2C0];
  STACK[0x470] = STACK[0x390];
  return v17();
}

uint64_t sub_100A6BAFC()
{
  LODWORD(STACK[0x3D80]) = 0;
  LODWORD(STACK[0x3D70]) = 0;
  LODWORD(STACK[0x3D58]) = 0;
  v2 = *(v1 + 8 * ((((v0 ^ 0x5AA) - 42289 + ((v0 - 12182358) & 0xB9DEBF)) * (STACK[0x32B0] & 1)) | v0));
  LODWORD(STACK[0x3CF0]) = 61;
  LODWORD(STACK[0x3D88]) = 2;
  v3 = STACK[0x448];
  STACK[0x3D40] = STACK[0x448];
  v4 = STACK[0x1BE8];
  STACK[0x3D78] = STACK[0x1BE8];
  STACK[0x3B20] = v3;
  STACK[0x3B18] = v4;
  STACK[0x3818] = LODWORD(STACK[0x3988]);
  LODWORD(STACK[0x1204]) = STACK[0x39A0];
  LODWORD(STACK[0x2134]) = STACK[0x36B8];
  v5 = STACK[0x3820];
  LODWORD(STACK[0x3688]) = STACK[0x2B30];
  LODWORD(STACK[0x3858]) = STACK[0x2B40];
  LODWORD(STACK[0x3B00]) = STACK[0x2B88];
  LODWORD(STACK[0x1954]) = STACK[0x2B70];
  LODWORD(STACK[0x1A78]) = v5;
  LODWORD(STACK[0x3AE8]) = STACK[0x3998];
  LODWORD(STACK[0x3AE0]) = STACK[0x2B60];
  LODWORD(STACK[0x3810]) = STACK[0x2B28];
  LODWORD(STACK[0x3D38]) = STACK[0x221C];
  LODWORD(STACK[0x3D30]) = STACK[0x35FC];
  LODWORD(STACK[0x3D28]) = STACK[0x3970];
  LODWORD(STACK[0x3D20]) = STACK[0x35F8];
  return v2();
}

uint64_t sub_100A6BC10(int a1, int a2)
{
  *(v5 + (a1 + v4)) = *(v8 + (a1 + v4));
  v10 = a1 + v6;
  v11 = (a1 + 1);
  v13 = v10 > v7 && v2 > v10;
  return (*(v9 + 8 * ((v13 * a2) ^ v3)))(v11);
}

uint64_t sub_100A6BD24@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X7>, int a7@<W8>)
{
  v18 = v7 + (v9 & 0xFE);
  v19 = *(*(a6 + 8 * v12) + 4 * ((v15 ^ v16 ^ v8 ^ v18) ^ v11) - 12);
  *(v14 + 4 * v18) = a3 ^ (v19 * v13) ^ ((v19 * a1) | a2) ^ a4;
  return (*(v17 + 8 * (((v10 == 0) * a5) ^ a7)))();
}

uint64_t sub_100A6C0B8@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v10 = *(v9 - 208 + 4 * (((((v7 ^ 0x60E60939) - 959496151) ^ v7 ^ ((v7 ^ 0xC849D1A4) + 1851824310) ^ (v4 + (v7 ^ 0xFFFFFFEC) + 16) ^ (((v2 - v8 - 611119706) ^ v7) - 1464870769)) >> 2) ^ 0x1675ADBB) + 72);
  *(a1 + (v7 + v3)) = v10 ^ 5;
  *(a1 + (v7 + v3 + 1)) = (BYTE1(v10) ^ 0x1F) - 2 * ((BYTE1(v10) ^ 0x1F) & 0xF) + 15;
  *(a1 + (v7 + v3 + 2)) = (BYTE2(v10) ^ 0xB3) - 2 * ((BYTE2(v10) ^ 0xB3) & 0xF) + 15;
  *(a1 + (v7 + v3 + 3)) = (HIBYTE(v10) ^ 0x43) - 2 * ((HIBYTE(v10) ^ 0x43) & 0xF) + 15;
  v11 = *(v9 - 104);
  v12 = v11 + v5;
  v13 = v11 > 0xCA808CFD;
  if (v7 - 609698792 < v5 == v13)
  {
    v13 = v7 - 609698792 < v12;
  }

  return (*(a2 + 8 * ((!v13 * v6) ^ v2)))();
}

uint64_t sub_100A6C260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 12) - v4;
  v8 = ((v5 - 22586) | 0x41E3) - 11600;
  *(v6 - 128) = v8;
  v10 = v7 != 232641432 && (v7 & 0xF) == (v8 ^ 0x2897);
  return (*(a4 + 8 * ((47 * v10) ^ v5)))();
}

uint64_t sub_100A6C300(int a1, int a2, int a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, int a63)
{
  v147 = (((v66 ^ 0x92A03D71) + 1834992271) ^ ((v66 ^ 0x190862AC) - 419979948) ^ ((v66 ^ 0xBA411F7F) + 1170137217)) - ((((v69 ^ 0x1D88A0D7) - 495493335) ^ ((v69 ^ 0x7873C3E) - 126303294) ^ ((v69 ^ 0xFCD166C9) + 53385527)) + (((a3 ^ 0x1B7676D9) - 460748505) ^ ((a3 ^ 0xC43042BD) + 1003470147) ^ ((a3 ^ 0x221D85FE) - 572360190))) + a63 + 1311275491;
  v71 = v70;
  v72 = (v147 ^ 0x3C7209D0) - 842920021;
  v73 = (v72 ^ 0x1BACE7A2) & (2 * (v72 & 0x93AEE7A4)) ^ v72 & 0x93AEE7A4;
  v74 = ((2 * (v72 ^ 0x18A0E5A2)) ^ 0x161C040C) & (v72 ^ 0x18A0E5A2) ^ (2 * (v72 ^ 0x18A0E5A2)) & 0x8B0E0206;
  v75 = v74 ^ 0x89020202;
  v76 = v73 ^ 0x8B0E0206 ^ (v74 ^ 0x20C0000) & (4 * v73);
  v77 = (4 * v75) & 0x8B0E0204 ^ 0x83060206 ^ ((4 * v75) ^ 0x2C380818) & v75;
  v78 = (16 * v76) & 0x8B0E0200 ^ v76 ^ ((16 * v76) ^ 0xB0E02060) & v77;
  v79 = (16 * v77) & 0x8B0E0200 ^ 0xB0E0206 ^ ((16 * v77) ^ 0xB0E02060) & v77;
  v80 = v78 ^ (v78 << 8) & 0x8B0E0200 ^ ((v78 << 8) ^ 0xE020600) & v79 ^ 0x8A020200;
  v81 = v72 ^ (2 * ((v80 << 16) & 0xB0E0000 ^ v80 ^ ((v80 << 16) ^ 0x2060000) & ((v79 << 8) & 0x8B0E0000 ^ 0x10C0000 ^ ((v79 << 8) ^ 0xE020000) & v79)));
  v82 = ((((v68 ^ 0x7D6171E3) - 2103538147) ^ ((v68 ^ 0xBD955865) + 1114285979) ^ ((v68 ^ 0xE606650) - 241198672)) + (((v67 ^ 0x2A0C04B2) - 705430706) ^ ((v67 ^ 0x4FFF1B4A) - 1342118730) ^ ((v67 ^ 0xB23FAAC5) + 1304450363)) - ((a6 ^ a1) + a2) - 1503591149) ^ 0x3C7209D0;
  v83 = (((a8 ^ 0xB26C711B) + 1301516005) ^ ((a8 ^ 0xA6AB35A7) + 1498729049) ^ ((a8 ^ 0xC32BC786) + 1020541050)) + 672318236 + (((v81 ^ 0xB1B03459) - 31954771) ^ ((v81 ^ 0xA7C5B6EE) - 395449828) ^ ((v81 ^ 0x97CB611F) - 664584725));
  v84 = (v83 ^ 0xE9BA14DE) & (2 * (v83 & 0xE1C300C0)) ^ v83 & 0xE1C300C0;
  v85 = ((2 * (v83 ^ 0xEA3E145E)) ^ 0x17FA293C) & (v83 ^ 0xEA3E145E) ^ (2 * (v83 ^ 0xEA3E145E)) & 0xBFD149E;
  v86 = v85 ^ 0x8051482;
  v87 = (v85 ^ 0x3F80000) & (4 * v84) ^ v84;
  v88 = ((4 * v86) ^ 0x2FF45278) & v86 ^ (4 * v86) & 0xBFD149C;
  v89 = (v88 ^ 0xBF41000) & (16 * v87) ^ v87;
  v90 = ((16 * (v88 ^ 0x90486)) ^ 0xBFD149E0) & (v88 ^ 0x90486) ^ (16 * (v88 ^ 0x90486)) & 0xBFD1490;
  v91 = v89 ^ 0xBFD149E ^ (v90 ^ 0xBD10000) & (v89 << 8);
  v92 = (v91 << 16) & 0xBFD0000 ^ v91 ^ ((v91 << 16) ^ 0x149E0000) & (((v90 ^ 0x2C141E) << 8) & 0xBFD0000 ^ 0x2E90000 ^ (((v90 ^ 0x2C141E) << 8) ^ 0x7D140000) & (v90 ^ 0x2C141E));
  v93 = v83 ^ (2 * v92);
  v94 = ((v82 - 1705562167) ^ 0xD7D1A736) & (2 * ((v82 - 1705562167) & 0xC719C786)) ^ (v82 - 1705562167) & 0xC719C786;
  v95 = ((2 * ((v82 - 1705562167) ^ 0x59C2AC32)) ^ 0x3DB6D768) & ((v82 - 1705562167) ^ 0x59C2AC32) ^ (2 * ((v82 - 1705562167) ^ 0x59C2AC32)) & 0x9EDB6BB4;
  v96 = v95 ^ 0x82492894;
  v97 = (v95 ^ 0x1C820220) & (4 * v94) ^ v94;
  v98 = ((4 * v96) ^ 0x7B6DAED0) & v96 ^ (4 * v96) & 0x9EDB6BB4;
  v99 = (v98 ^ 0x1A492A80) & (16 * v97) ^ v97;
  v100 = ((16 * (v98 ^ 0x84924124)) ^ 0xEDB6BB40) & (v98 ^ 0x84924124) ^ (16 * (v98 ^ 0x84924124)) & 0x9EDB6BB0;
  v101 = v99 ^ 0x9EDB6BB4 ^ (v100 ^ 0x8C922B00) & (v99 << 8);
  v102 = (v82 - 1705562167) ^ (2 * ((v101 << 16) & 0x1EDB0000 ^ v101 ^ ((v101 << 16) ^ 0x6BB40000) & (((v100 ^ 0x124940B4) << 8) & 0x1EDB0000 ^ 0x4900000 ^ (((v100 ^ 0x124940B4) << 8) ^ 0x5B6B0000) & (v100 ^ 0x124940B4))));
  v103 = 893 * ((v83 ^ ~(2 * v92)) >> 28) + 847457;
  v104 = 893 * (HIBYTE(v93) & 0xF ^ 7) + 847457;
  v105 = 893 * (HIWORD(v93) & 0xF ^ 1) + 847457;
  v106 = 893 * ((v93 >> 12) ^ 2) + 847457;
  v107 = ((*(v71 + (v104 - ((4405095 * v104) >> 32) * a4)) ^ 0x36) << 8) ^ ((*(v71 + (v103 - ((4405095 * v103) >> 32) * a4)) ^ 0x36) << 12) | *(v71 + (v105 - ((4405095 * v105) >> 32) * a4)) ^ 0x36;
  v108 = *(v71 + (v106 - ((4405095 * v106) >> 32) * a4));
  v109 = 893 * ((v93 >> 8) & 0xF ^ 9) + 847457;
  v110 = 893 * (~(v93 >> 4) & 0xF) + 847457;
  v111 = *(v71 + (893 * (v93 & 0xF ^ 0xC) + 847457 - ((4405095 * (893 * (v93 & 0xF ^ 0xC) + 847457)) >> 32) * a4)) ^ 0x36;
  v112 = (((v107 << 8) ^ ((*(v71 + (893 * ((v93 >> 20) & 0xF) + 847457 - ((4405095 * (893 * ((v93 >> 20) & 0xF) + 847457)) >> 32) * a4)) ^ 0x36) << 12) | *(v71 + (v109 - ((4405095 * v109) >> 32) * a4)) ^ 0x36) << 8) ^ ((v108 ^ 0x36) << 12);
  v113 = (v112 | v111) ^ (16 * (*(v71 + (v110 - ((4405095 * v110) >> 32) * a4)) ^ 0x36));
  v114 = a35 - (v102 ^ 0xEF8F10EE);
  v115 = ((((*(v71 + (893 * (v114 >> 28) + 847457 - ((4405095 * (893 * (v114 >> 28) + 847457)) >> 32) * a4)) ^ 0x36) << 12) ^ ((*(v71 + (893 * (HIBYTE(v114) & 0xF) + 847457 - ((4405095 * (893 * (HIBYTE(v114) & 0xF) + 847457)) >> 32) * a4)) ^ 0x36) << 8) | *(v71 + (893 * (HIWORD(v114) & 0xF) + 847457 - ((4405095 * (893 * (HIWORD(v114) & 0xF) + 847457)) >> 32) * a4)) ^ 0x36) << 8) ^ ((*(v71 + (893 * ((v114 >> 20) & 0xF) + 847457 - ((4405095 * (893 * ((v114 >> 20) & 0xF) + 847457)) >> 32) * a4)) ^ 0x36) << 12) ^ (16 * (*(v71 + (893 * (v114 >> 12) + 847457 - ((4405095 * (893 * (v114 >> 12) + 847457)) >> 32) * a4)) ^ 0x36));
  v116 = *(v71 + (893 * ((v114 >> 8) & 0xF) + 847457 - ((4405095 * (893 * ((v114 >> 8) & 0xF) + 847457)) >> 32) * a4)) ^ 0x36 ^ v115;
  LOBYTE(v108) = *(v71 + (893 * (v114 >> 4) + 847457 - ((4405095 * (893 * (v114 >> 4) + 847457)) >> 32) * a4));
  v117 = *(v71 + (893 * (v114 & 0xF) + 847457 - ((4405095 * (893 * (v114 & 0xF) + 847457)) >> 32) * a4)) ^ 0x36;
  v118 = v117 | (v116 << 8);
  v119 = ((16 * (v117 & 0xF)) ^ 0x3DDE9F51) & (v111 & 0xF ^ 0x3FDEFFFF) | v111 & 0xE;
  v120 = 893 * (((v119 ^ 0x1D6DAE91) + 1477967002) ^ ((v119 ^ 0x16FD0710) + 1401378073) ^ ((v119 ^ 0x364E36D0) + 1932813529)) + 690554372;
  LOBYTE(v108) = v108 ^ (v118 >> 4);
  v121 = 893 * (((v119 ^ 0xB78014B5) - 218478914) ^ ((v119 ^ 0xC303BE63) - 2038829972) ^ ((v119 ^ 0x495D3587) + 203909008)) + 690323978;
  v122 = *(v71 + v121 - v121 / 0x3CF * a4);
  v123 = 893 * (*(v71 + v120 - v120 / 0x3CF * a4) ^ (16 * (LOBYTE(STACK[0x2F6]) ^ 0x36)) ^ 0x36);
  v124 = v108 ^ 0x36;
  v125 = (*(v71 + (v123 + 382204 - ((4405095 * (v123 + 382204)) >> 32) * a4)) >> 4) ^ 3;
  v126 = 893 * ((v125 - ((2 * v125) & 0xC) + 54) ^ v122) + 612598;
  v127 = (v113 >> 4) | (16 * (v124 & 0xF));
  v128 = (((337 - v127) & 0x17D) + ((v127 + 686) & 0x37D)) * (v127 + 686);
  v129 = 893 * (*(v71 + (v128 - ((4405095 * v128) >> 32) * a4)) ^ (16 * (*(v71 + (v126 - ((4405095 * v126) >> 32) * a4)) ^ 0x36)) ^ 0x36);
  v130 = (*(v71 + (v129 + 382204 - ((4405095 * (v129 + 382204)) >> 32) * a4)) >> 4) ^ 3;
  v131 = 893 * ((v130 - ((2 * v130) & 0xC) + 54) ^ *(v71 + (893 * v127 + 382204 - ((4405095 * (893 * v127 + 382204)) >> 32) * a4))) + 612598;
  v132 = 893 * (v124 & 0xF0 | (v113 >> 8) & 0xF);
  v133 = 893 * (*(v71 + (v132 + 612598 - ((4405095 * (v132 + 612598)) >> 32) * a4)) ^ (16 * (*(v71 + (v131 - ((4405095 * v131) >> 32) * a4)) ^ 0x36)) ^ 0x36);
  v134 = (*(v71 + (v133 + 382204 - ((4405095 * (v133 + 382204)) >> 32) * a4)) >> 4) ^ 3;
  v135 = 893 * ((v134 + (~(2 * v134) | 0xF3) + 55) ^ *(v71 + (v132 + 382204 - ((4405095 * (v132 + 382204)) >> 32) * a4))) + 612598;
  v136 = 893 * (v116 & 0xF0 | (v112 >> 12));
  v137 = *(v71 + (v136 + 612598 - ((4405095 * (v136 + 612598)) >> 32) * a4)) ^ (16 * (*(v71 + (v135 - ((4405095 * v135) >> 32) * a4)) ^ 0x36));
  v138 = ((v137 ^ 0xEB8797CF) - 1013650627) ^ ((v137 ^ 0xA05BE) + 672758094) ^ ((v137 ^ 0xEB8D9247) - 1012994379);
  v139 = (*(v71 + 893 * v138 + 873174606 - (893 * v138 + 873174606) / 0x3CF * a4) >> 4) ^ 3;
  v140 = 893 * ((v139 - ((2 * v139) & 0xC) + 54) ^ *(v71 + (v136 + 382204 - ((4405095 * (v136 + 382204)) >> 32) * a4))) + 612598;
  v141 = 893 * ((v115 >> 4) & 0xF0 | HIWORD(v112) & 0xF);
  v142 = 893 * (*(v71 + (v141 + 612598 - ((4405095 * (v141 + 612598)) >> 32) * a4)) ^ (16 * (*(v71 + (v140 - ((4405095 * v140) >> 32) * a4)) ^ 0x36)) ^ 0x36);
  v143 = (*(v71 + (v142 + 382204 - ((4405095 * (v142 + 382204)) >> 32) * a4)) >> 4) ^ 3;
  v146 = *(v71 + (v141 + 382204 - ((4405095 * (v141 + 382204)) >> 32) * a4));
  v144 = 39 * ((((v143 + 122) ^ v143) & 0xAE | (v146 ^ 0x67) & ~((v143 + 122) ^ v143)) ^ 0x51);
  return (*(STACK[0x200] + 8 * ((70 * (((v146 ^ 0x6C) & ~v144 | v144 & 0xA5) != 90)) ^ a66)))(233);
}

uint64_t sub_100A6E078@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v7 = v6 - 1;
  *(a2 + v7) = *(v3 + v7);
  return (*(v2 + 8 * (((v7 == v4) * v5) ^ a1)))(0);
}

uint64_t sub_100A6E488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  if (a8 < v8 != v9 < v8)
  {
    v11 = a8 < v8;
  }

  else
  {
    v11 = v9 < a8;
  }

  return (*(STACK[0x6D8] + 8 * ((30 * v11) ^ v10)))();
}

uint64_t sub_100A6E9D4@<X0>(_DWORD *a1@<X6>, int a2@<W8>)
{
  v7 = a1[396] ^ (((((v2 - 1054333293) | 0x12820899) ^ 0xAC556643) & *a1 | a1[623] & 0x80000000) >> 1);
  a1[623] = (v4 + v7 - ((v7 << (v2 + 123 + v3)) & a2)) ^ *(v6 - 256 + 4 * (*a1 & 1));
  return (*(v5 + 8 * ((6946 * (LODWORD(STACK[0x115C]) > 0x26F)) ^ v2)))();
}

uint64_t sub_100A6EACC@<X0>(int a1@<W8>)
{
  v2 = a1 ^ 0x587D;
  v3 = (a1 ^ 0x587D) + 2050;
  v4 = v3 ^ 0x507Bu;
  STACK[0x5B00] = v1 + 1;
  v5 = *(*STACK[0x51F0] + (*STACK[0x51E8] & (((v4 - 22622) & v1) - 103642730) & 0xFFFFFFF8));
  v6 = (__ROR8__((v4 - 22622) & v1, 8) + v5) ^ 0xF41651499F5E3C67;
  v7 = v6 ^ __ROR8__(v5, 61);
  v8 = (__ROR8__(v6, 8) + v7) ^ 0x153242EE3CF06A49;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0x2275D4C73835399BLL;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0xE5AF1AB32EBD3CDDLL;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (((v14 + v13) | 0x4A43E89AC2D5566FLL) - ((v14 + v13) | 0xB5BC17653D2AA990) - 0x4A43E89AC2D55670) ^ 0x8D9E216C0E90E14ELL;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xA82620A559D2DA78;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (v19 + v18 - ((2 * (v19 + v18)) & 0xBFC3C38DA8BC2242) - 0x201E1E392BA1EEDFLL) ^ 0x806C0DF877C61B3ALL;
  LODWORD(v20) = (((__ROR8__(v20, 8) + (v20 ^ __ROR8__(v18, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * (v1 & 7u))) ^ *v1;
  LODWORD(v20) = ((v20 ^ 0x1A) - 63) ^ ((v20 ^ 0x61) - 68) ^ ((v20 ^ 0x7B) - 94);
  return (*(STACK[0x57D8] + 8 * ((4991 * ((((v20 - v2) | (v2 - v20)) & 0x80) == 0)) ^ v3)))();
}

uint64_t sub_100A6EEC0@<X0>(int a1@<W7>, int a2@<W8>)
{
  v5 = ((qword_101362A48 + 0x542692A192A0E734) ^ 0xB954D1D685FD4BELL) & (2 * ((qword_101362A48 + 0x542692A192A0E734) & ((17 * (v4 ^ 0x819FC41E)) ^ 0xABD96D5E6D5F7F8ELL))) ^ (qword_101362A48 + 0x542692A192A0E734) & ((17 * (v4 ^ 0x819FC41E)) ^ 0xABD96D5E6D5F7F8ELL);
  v6 = ((2 * ((qword_101362A48 + 0x542692A192A0E734) ^ 0x4A259799AADFE5AELL)) ^ 0xC3F9F58F8F01FA24) & ((qword_101362A48 + 0x542692A192A0E734) ^ 0x4A259799AADFE5AELL) ^ (2 * ((qword_101362A48 + 0x542692A192A0E734) ^ 0x4A259799AADFE5AELL)) & 0xE1FCFAC7C780FD12;
  v7 = v6 ^ 0x20040A4040800512;
  v8 = (v6 ^ 0xC1E8F0838700E000) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0x87F3EB1F1E03F448) & v7 ^ (4 * v7) & 0xE1FCFAC7C780FD10;
  v10 = (v9 ^ 0x81F0EA070600F410) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x600C10C0C1800912)) ^ 0x1FCFAC7C780FD120) & (v9 ^ 0x600C10C0C1800912) ^ (16 * (v9 ^ 0x600C10C0C1800912)) & 0xE1FCFAC7C780FD10;
  v12 = (v11 ^ 0x1CCA8444000D100) & (v10 << 8) ^ v10;
  v13 = (((v11 ^ 0xE030528387802C12) << 8) ^ 0xFCFAC7C780FD1200) & (v11 ^ 0xE030528387802C12) ^ ((v11 ^ 0xE030528387802C12) << 8) & 0xE1FCFAC7C780FD00;
  v14 = v12 ^ 0xE1FCFAC7C780FD12 ^ (v13 ^ 0xE0F8C2C780800000) & (v12 << 16);
  v15 = (qword_101362A48 + 0x542692A192A0E734) ^ (2 * ((v14 << 32) & 0x61FCFAC700000000 ^ v14 ^ ((v14 << 32) ^ 0x4780FD1200000000) & (((v13 ^ 0x10438004700ED12) << 16) & 0x61FCFAC700000000 ^ 0x138384700000000 ^ (((v13 ^ 0x10438004700ED12) << 16) ^ 0x7AC7C78000000000) & (v13 ^ 0x10438004700ED12))));
  v16 = 0x90D3884FC5988ABLL - (((HIDWORD(v15) ^ 0xF2BFC0AF305A2C1DLL) + 0xC096A7347C9D065) ^ ((HIDWORD(v15) ^ 0x5FE35EAF2E87CDE3) - 0x5EAA0B8CA6EBCE65) ^ ((HIDWORD(v15) ^ 0xAD5C9E00F5FC892BLL) + 0x53EA34DC826F7553));
  v17 = (v16 ^ 0xE12173571D550A29) & (2 * (v16 & 0x7A0590C02)) ^ v16 & 0x7A0590C02;
  v18 = ((2 * (v16 ^ 0x683133595DC7022DLL)) ^ 0x3B30821DFB3C1C5ELL) & (v16 ^ 0x683133595DC7022DLL) ^ (2 * (v16 ^ 0x683133595DC7022DLL)) & 0x9D98410EFD9E0E2ELL;
  v19 = v18 ^ 0x8488410204820221;
  v20 = (v18 ^ 0xC810C0008) & (4 * v17) ^ v17;
  v21 = ((4 * v19) ^ 0x7661043BF67838BCLL) & v19 ^ (4 * v19) & 0x9D98410EFD9E0E2CLL;
  v22 = (v21 ^ 0x1400000AF4180820) & (16 * v20) ^ v20;
  v23 = ((16 * (v21 ^ 0x8998410409860603)) ^ 0xD98410EFD9E0E2F0) & (v21 ^ 0x8998410409860603) ^ (16 * (v21 ^ 0x8998410409860603)) & 0x9D98410EFD9E0E20;
  v24 = v22 ^ 0x9D98410EFD9E0E2FLL ^ v23 & (v22 << 8);
  v25 = ((v23 ^ 0x4184100241E0C0FLL) << 8) & 0x9D98410EFD9E0E00 ^ 0x59841026190002FLL ^ (((v23 ^ 0x4184100241E0C0FLL) << 8) ^ 0x98410EFD9E0E2F00) & (v23 ^ 0x4184100241E0C0FLL);
  v26 = ((v16 ^ (2 * (((v25 << 16) ^ 0x410EFD9E00000000) & v25 & ((v25 & ((v24 << 16) ^ 0x410EFD9E0E2F0000) ^ v24) << 32) ^ v25 & ((v24 << 16) ^ 0x410EFD9E0E2F0000) ^ v24))) >> 32) & 0x20;
  v27 = ((v26 ^ 0xA93F5C11ABF75839) - 0x37B70CCC46F65350) ^ (v26 | 0x8D87CF529B00FB17) ^ ((v26 ^ 0xFF77ED09ED9AAF6BLL) - 0x61FFBDD4009BA402);
  v28 = v15 ^ 0xEB2168D5E25EE298;
  v29 = v28 >> v26;
  v30 = (((v29 ^ 0xE8418DBB80C1563CLL) - 0x351455E4E1480BEELL) ^ ((v29 ^ 0x7241525333FD1984) + 0x50EB75F3AD8BBBAALL) ^ ((v29 ^ 0x9A00DFE8B33C4FB8) - 0x475507B7D2B5126ALL)) + 0x263415314BAF6279;
  v31 = (v30 ^ 0x378DA3ACD5DEFB5CLL) & (2 * (v30 & 0xB721C32E15D8FB59)) ^ v30 & 0xB721C32E15D8FB59;
  v32 = ((2 * (v30 ^ 0x358C25ACDC6EFFCCLL)) ^ 0x55BCD05936C092ALL) & (v30 ^ 0x358C25ACDC6EFFCCLL) ^ (2 * (v30 ^ 0x358C25ACDC6EFFCCLL)) & 0x82ADE682C9B60494;
  v33 = v32 ^ 0x82A4228248920495;
  v34 = (v32 ^ 0x9040081240000) & (4 * v31) ^ v31;
  v35 = ((4 * v33) ^ 0xAB79A0B26D81254) & v33 ^ (4 * v33) & 0x82ADE682C9B60494;
  v36 = v35 & (16 * v34) ^ v34;
  v37 = ((16 * (v35 ^ 0x80086480C9260481)) ^ 0x2ADE682C9B604950) & (v35 ^ 0x80086480C9260481) ^ (16 * (v35 ^ 0x80086480C9260481)) & 0x82ADE682C9B60490;
  v38 = v37 & (v36 << 8) ^ v36;
  v39 = ((v30 ^ (2 * (((v37 << 8) ^ 0xADE682C9B6049500) & v37 & ((((v37 << 8) ^ 0xADE682C9B6049500) & v37) << 16) & ((((v37 << 8) ^ 0xADE682C9B6049500) & v37 & (v38 << 16) ^ v38) << 32) ^ ((v37 << 8) ^ 0xADE682C9B6049500) & v37 & (v38 << 16) ^ v38))) >> 32) & 0x10;
  v40 = v29 << v39;
  v41 = ((v40 + 0xFFF000000) >> 32) & 8;
  v42 = v40 << v41;
  v43 = ((v42 + 0x7F0000000) >> 32) & 4;
  v44 = v42 << v43;
  v45 = v27 - (v39 | v41 | v43) - (((v44 + 0x3C0000000) >> 32) & 2) + (~((v44 << (((v44 + 0x3C0000000) >> 32) & 2)) >> 31) & ((v44 << (((v44 + 0x3C0000000) >> 32) & 2)) >> 30));
  v46 = v45 - 0x6177AF2212FEF4B7;
  v47 = v45 - 122;
  if (v46 >= -46)
  {
    v48 = 0;
  }

  else
  {
    v48 = v47;
  }

  v49 = (1 << v47) - 0x8000;
  v50 = v46 <= -47;
  v51 = 15;
  if (v50)
  {
    v51 = 0;
  }

  v52 = v51 + v48;
  if (v50)
  {
    v49 = 0;
  }

  *(*(&off_101353600 + (v4 ^ 0x819FC14D)) - 4) = (v49 ^ 0xFFFFDFFF6FEF5E9FLL) + 0x744EFE9BFDF5FE00 + ((2 * v49) & 0xFFFFBFFEDFDEBD3ELL);
  v53 = (v28 - (1 << v52)) & ((a2 & 0xFFFFF000) + v3);
  *(*(&off_101353600 + a1 + v4 + 930) - 4) = v53 ^ 0x9C5B2D32715640A4;
  qword_101362AE8 = (v53 + qword_101362AE8) ^ 0x722E09814B3EBE59;
  qword_101362A48 = ((1 << v52) - 1) ^ 0xDB653AB621E69720;
  v54 = (*(STACK[0x540] + 8 * (v4 ^ 0x819FBEA0)))(31, 0, 0, 0);
  return (*(STACK[0x540] + 8 * ((14238 * v2) ^ (v4 + 2120240204))))(v54);
}

uint64_t sub_100A6F910(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v5 = (((a4 - 32155) & 0x7DE9) - 15606) * a3;
  v6 = 809 * (*(STACK[0x2C8] + (v5 - 27142 - 965 * ((((4007 * (v5 - 27142)) >> 16) + (((v5 - 27142 - ((4007 * (v5 - 27142)) >> 16)) & 0xFFFE) >> 1)) >> 9))) ^ 0x3C) + 237846;
  LOBYTE(v6) = *(v4 + (v6 - 928 * ((4628198 * v6) >> 32))) + 10;
  v7 = v6 & 0x3E ^ 0x2C;
  v8 = v6 ^ 0x64;
  *(STACK[0x2C8] + (v5 - 965 * ((((4007 * v5) >> 16) + (((v5 - ((4007 * v5) >> 16)) & 0xFFFE) >> 1)) >> 9))) = v6 ^ (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * v7) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ 0xAD;
  return (*(STACK[0x2D0] + 8 * ((115 * (a3 == 15)) ^ a4)))(a1, 0);
}

uint64_t sub_100A6FA44(uint64_t a1, unsigned __int8 a2, unsigned int a3)
{
  LODWORD(STACK[0x3850]) = 0;
  v13 = STACK[0x39C8];
  v14 = STACK[0x3890];
  v15 = STACK[0x3890];
  STACK[0x3AD0] = (v3 + 342741390) & 0xEB923AAD;
  v16 = STACK[0x3880];
  v17 = v5;
  v18 = STACK[0x38A8];
  v19 = ((v15 << ((v3 - 114) & 0xAD ^ 0xBDu)) & 0xFFFFFFFFFFFF0000 | v5 | (STACK[0x38A8] << 8)) + (v13 << 32);
  STACK[0x3830] = v7 - a3;
  v20 = STACK[0x3888];
  v21 = STACK[0x3828];
  v22 = STACK[0x3898];
  v23 = *(v11 + 4647 * (a2 ^ 0x7C) + 9544938 - (((1266205 * (4647 * (a2 ^ 0x7Cu) + 9544938)) >> 32) >> 1) * v10);
  v24 = STACK[0x3860];
  v25 = STACK[0x3878];
  v26 = STACK[0x3870];
  v27 = STACK[0x3858];
  v28 = (v16 << 48) | (STACK[0x3888] << 56) | (STACK[0x3828] << 24) | (v4 << 40) | (v8 << 16) | (STACK[0x3878] << 8) | STACK[0x3870] | (LODWORD(STACK[0x3858]) << 32);
  v29 = STACK[0x3868];
  v30 = ((v19 + (STACK[0x3898] << 56) + (LODWORD(STACK[0x3860]) << 48)) | (LODWORD(STACK[0x3868]) << 40)) ^ (STACK[0x38A0] << 16);
  STACK[0x3AB0] = v30;
  STACK[0x3638] = v30 ^ 0xFC8D2056C9130CEDLL;
  STACK[0x3AB8] = v28;
  STACK[0x3630] = v28 ^ 0xD8350E6628BDDCF4;
  LODWORD(STACK[0x34E0]) = ((((2 * v23) & 0x52) + (v23 ^ 0xFFFFFFA9)) ^ 0xFFFFFFFB) + 85;
  v31 = *(STACK[0x3AC0] + 8 * v3);
  LODWORD(STACK[0x35E8]) = 1;
  LODWORD(STACK[0x3430]) = STACK[0x35C8];
  LODWORD(STACK[0x3428]) = STACK[0x35C0];
  LODWORD(STACK[0x3470]) = v18;
  LODWORD(STACK[0x3440]) = v9;
  LODWORD(STACK[0x3420]) = STACK[0x3640];
  LODWORD(STACK[0x3418]) = v6;
  LODWORD(STACK[0x3410]) = STACK[0x3608];
  LODWORD(STACK[0x3408]) = STACK[0x35B0];
  LODWORD(STACK[0x3468]) = v8;
  LODWORD(STACK[0x3460]) = v24;
  LODWORD(STACK[0x3458]) = v26;
  LODWORD(STACK[0x3488]) = v21;
  LODWORD(STACK[0x33F8]) = STACK[0x3600];
  LODWORD(STACK[0x34D0]) = v14;
  LODWORD(STACK[0x3448]) = v20;
  LODWORD(STACK[0x33E8]) = STACK[0x3848];
  LODWORD(STACK[0x3400]) = v12;
  LODWORD(STACK[0x3478]) = v27;
  LODWORD(STACK[0x33E0]) = STACK[0x3610];
  LODWORD(STACK[0x3AC8]) = 1;
  LODWORD(STACK[0x3450]) = v4;
  LODWORD(STACK[0x33F0]) = STACK[0x35F8];
  LODWORD(STACK[0x3490]) = v13;
  LODWORD(STACK[0x3438]) = STACK[0x3650];
  LODWORD(STACK[0x33D8]) = STACK[0x35E0];
  LODWORD(STACK[0x34A0]) = v16;
  LODWORD(STACK[0x3498]) = v25;
  LODWORD(STACK[0x33D0]) = STACK[0x35D8];
  LODWORD(STACK[0x33C8]) = STACK[0x35D0];
  LODWORD(STACK[0x34D8]) = v22;
  LODWORD(STACK[0x3480]) = v17;
  LODWORD(STACK[0x3510]) = v29;
  STACK[0x3838] = 0;
  return v31();
}

uint64_t sub_100A6FC88(int a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x48A8]) = LODWORD(STACK[0x5640]) | LODWORD(STACK[0x5610]);
  LODWORD(STACK[0x47B8]) = LODWORD(STACK[0x5530]) | LODWORD(STACK[0x5600]);
  LODWORD(STACK[0x53B0]) = v12 & (LODWORD(STACK[0x5540]) ^ 0x218D4131);
  LODWORD(STACK[0x53E8]) = a7 & (v11 ^ 0x9CBA900B);
  LODWORD(STACK[0x5310]) = v13 << 8;
  LODWORD(STACK[0x5430]) = v14 & (v7 ^ 0x8D4B13B0);
  LODWORD(STACK[0x53A8]) = v9 & (v16 ^ 0xF07F3D59);
  LODWORD(STACK[0x53E0]) = v15 << 8;
  LODWORD(STACK[0x53A0]) = v10 & (v8 ^ 0x70D209C3);
  LODWORD(STACK[0x5400]) = a5 & (a2 ^ 0xC2AA5C64);
  v17 = STACK[0x57D8];
  LODWORD(STACK[0x5500]) = a1 + 372;
  return (*(v17 + 8 * (a1 + 372)))();
}

uint64_t sub_100A71F64()
{
  v2 = v0 - 1838;
  v3 = (v0 - 22630) | 0x4840;
  v4 = ((v0 - 22568) | 0x4802) ^ 0xF7781CC7;
  v5 = STACK[0xB530] != 0;
  if (v1 != v4 || LODWORD(STACK[0x93D8]) == (v3 ^ 0xD21CD8C2) || STACK[0xB530] == 0)
  {
    v8 = -143113071;
  }

  else
  {
    v8 = -143113070;
  }

  LODWORD(STACK[0x6AB0]) = v8;
  return (*(STACK[0x57D8] + 8 * ((26 * v5) ^ v2)))();
}

uint64_t sub_100A72000()
{
  LOBYTE(STACK[0xDB2F]) = 0;
  STACK[0xDB20] = v0;
  LODWORD(STACK[0xDB1C]) = -143113071;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_100A72034()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x143C)))();
  STACK[0xC568] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_100A72074@<X0>(int a1@<W8>)
{
  *(v1 + 32) = a1 - 1201017543;
  *(v1 + 24) = NDR_record;
  return (*(v2 + 165000))();
}

uint64_t sub_100A72120()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x241B)))();
  STACK[0xA070] = 0;
  return (*(v1 + 8 * (v0 - 7647)))(v2);
}

uint64_t sub_100A72238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v7 = a7[19];
  v8 = (((LODWORD(STACK[0x1164]) ^ 0x9B8C0691) + 1685322095) ^ ((LODWORD(STACK[0x1164]) ^ 0x9EC1155F) + 1631513249) ^ ((LODWORD(STACK[0x1164]) ^ 0x9E45C524) + 1639594716)) + (((a7[18] ^ 0x22B881C1) - 582517185) ^ ((a7[18] ^ 0xABB3C193) + 1414282861) ^ ((a7[18] ^ 0x120396B8) - 302225080)) + 1736159875;
  a7[18] = v8 ^ ((v8 ^ 0xD7034D9F) + 429307600) ^ ((v8 ^ 0x6FD61694) - 1589383739) ^ ((v8 ^ 0x3451E253) - 87811836) ^ ((v8 ^ 0xBDEEBDF7) + 1937458856) ^ 0xAA62D245;
  v9 = (((LODWORD(STACK[0x13A4]) ^ 0xD7BA1B9B) + 675669093) ^ ((LODWORD(STACK[0x13A4]) ^ 0x49F23AAE) - 1240611502) ^ ((LODWORD(STACK[0x13A4]) ^ 0x540F7DF) - 88143839)) + (((v7 ^ 0x51A25E42) - 1369595458) ^ ((v7 ^ 0x9CAD6B82) + 1666356350) ^ ((v7 ^ 0x5607E32A) - 1443357482)) - 1277851173;
  v10 = (2 * (v9 & 0x823C23F9 ^ 0xB8828054)) & 0x50 ^ v9 & 0x823C23F9 ^ 0xB8828054 ^ ((2 * (v9 & 0x823C23F9 ^ 0xB8828054)) ^ 0x710500A8) & (v9 ^ 0x3ABEA3AD);
  v11 = (2 * (v9 ^ 0x3ABEA3AD)) & 0xB8828054 ^ 0x88828054 ^ ((2 * (v9 ^ 0x3ABEA3AD)) ^ 0x710500A8) & (v9 ^ 0x3ABEA3AD);
  v12 = (4 * v10) & 0xB8828054 ^ v10 ^ ((4 * v10) ^ 0xE20A0150) & v11;
  v13 = (4 * v11) & 0xB8828054 ^ 0x18808004 ^ ((4 * v11) ^ 0xE20A0150) & v11;
  v14 = v12 ^ (16 * v12) & 0xB8828050 ^ ((16 * v12) ^ 0x88080040) & v13;
  v15 = (16 * v13) & 0xB8828050 ^ 0x30828014 ^ ((16 * v13) ^ 0x88280540) & v13;
  v16 = ((v14 ^ 0x28020010) << 8) & 0xB8828000 ^ v14 ^ 0x28020010 ^ (((v14 ^ 0x28020010) << 8) ^ 0x82805400) & v15;
  a7[19] = v9 ^ (2 * ((v16 << 16) & 0x38820000 ^ v16 ^ ((v16 << 16) ^ 0x540000) & ((v15 << 8) & 0xB8820000 ^ 0x38020000 ^ ((v15 << 8) ^ 0x2800000) & v15))) ^ 0x6931F5BB;
  v17 = a7[21];
  v18 = (((LODWORD(STACK[0x11A4]) ^ 0x4E1CCB13) - 1310509843) ^ ((LODWORD(STACK[0x11A4]) ^ 0xAAC6924B) + 1429826997) ^ ((LODWORD(STACK[0x11A4]) ^ 0x7FD28FB2) - 2144505778)) + (((a7[20] ^ 0xE9B3D8F0) + 374089488) ^ ((a7[20] ^ 0x67CAE42E) - 1741349934) ^ ((a7[20] ^ 0x1571EA34) - 359787060)) + 1196097294;
  a7[20] = v18 ^ ((v18 ^ 0x75204EB3) - 1679368073) ^ ((v18 ^ 0xFCB95302) + 310377928) ^ ((v18 ^ 0x675DD3B4) - 1986298510) ^ ((v18 ^ 0xFFFD9F3F) + 289092091) ^ 0x8A3187D0;
  v19 = (((LODWORD(STACK[0x1844]) ^ 0xD776FED8) + 680067368) ^ ((LODWORD(STACK[0x1844]) ^ 0xA734B67) - 175328103) ^ ((LODWORD(STACK[0x1844]) ^ 0x460D6355) - 1175282517)) + (((v17 ^ 0xEF78F342) + 277286078) ^ ((v17 ^ 0x583C973) - 92522867) ^ ((v17 ^ 0x71F3ECDB) - 1911811291)) - 2022832019;
  v20 = (v19 ^ 0xAC039046) & (2 * (v19 & 0xAEA3A567)) ^ v19 & 0xAEA3A567;
  v21 = ((2 * (v19 ^ 0xE442D80A)) ^ 0x95C2FADA) & (v19 ^ 0xE442D80A) ^ (2 * (v19 ^ 0xE442D80A)) & 0x4AE17D6C;
  v22 = v21 ^ 0x4A210525;
  v23 = (v21 ^ 0x803808) & (4 * v20) ^ v20;
  v24 = ((4 * v22) ^ 0x2B85F5B4) & v22 ^ (4 * v22) & 0x4AE17D6C;
  v25 = (v24 ^ 0xA817520) & (16 * v23) ^ v23;
  v26 = ((16 * (v24 ^ 0x40600849)) ^ 0xAE17D6D0) & (v24 ^ 0x40600849) ^ (16 * (v24 ^ 0x40600849)) & 0x4AE17D60;
  v27 = v25 ^ 0x4AE17D6D ^ (v26 ^ 0xA015400) & (v25 << 8);
  a7[21] = v19 ^ (2 * ((v27 << 16) & 0x4AE10000 ^ v27 ^ ((v27 << 16) ^ 0x7D6D0000) & (((v26 ^ 0x40E0292D) << 8) & 0x4AE10000 ^ 0xA800000 ^ (((v26 ^ 0x40E0292D) << 8) ^ 0x617D0000) & (v26 ^ 0x40E0292D)))) ^ 0x30AB8957;
  *(a1 + 3392) -= 320;
  return (STACK[0x1698])();
}

uint64_t sub_100A72CEC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W8>)
{
  v7 = (v3 + 4 * v4);
  v8 = (a1 + 4 * v4);
  v9 = v7[1];
  *v8 = *v7;
  v8[1] = v9;
  return (*(v6 + 8 * ((13874 * ((a2 ^ 0x1770) + v4 == v5)) ^ a3)))();
}

uint64_t sub_100A72E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  LODWORD(STACK[0x3D78]) = 0;
  LODWORD(STACK[0x3D50]) = 0;
  LODWORD(STACK[0x3D80]) = 0;
  LODWORD(STACK[0x3D98]) = 0;
  v8 = -89 * (v6 ^ 0x85);
  v9 = *(v7 + 8 * v6);
  STACK[0x3B08] = a6 >> (v8 ^ 0xBEu);
  LODWORD(STACK[0x3D70]) = 1;
  LODWORD(STACK[0x3E18]) = 1;
  LODWORD(STACK[0x3D88]) = 1;
  LODWORD(STACK[0x12F4]) = a6;
  return v9();
}

uint64_t sub_100A72EC4()
{
  *(v3 - 136) = v0;
  *(v3 - 128) = 0;
  *(v3 - 144) = 0;
  *(v3 - 116) = v1 - 711523751 * ((((v3 - 144) | 0xDADA2ECF) - ((v3 - 144) & 0xDADA2ECF)) ^ 0xEAC00F1E) - 1907348440;
  v4 = (*(v2 + 8 * (v1 - 1907337989)))(v3 - 144);
  return (*(v2 + 8 * (v1 ^ 0x71B011F6 ^ ((v1 > 0x50692CE6) * (v1 ^ 0x71B049CB)))))(v4, 16295, 0x1EF2BFD8ALL, 0xD5CB96EBF795FEC5, 0x2A346914086A013BLL, 1391039517, 2018409467, 2276551197);
}

uint64_t sub_100A73344@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v3 = STACK[0x10E0];
  v4 = STACK[0x1310];
  STACK[0x1428] = &STACK[0x2280] + STACK[0x1310];
  STACK[0x1310] = (a2 + 14585) + v4 - 15227;
  *(a1 + 568) = v3;
  STACK[0xE98] = 0;
  STACK[0xB00] = 0;
  LODWORD(STACK[0x1644]) = 0;
  return (*(v2 + 8 * (a2 + 23868)))();
}

uint64_t sub_100A73430@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x115C]) = a1;
  v3 = (&STACK[0x2280] + STACK[0x1310]);
  STACK[0x1310] += 16;
  *v3 = 0;
  v4 = (*(v2 + 8 * (v1 ^ 0x7CAE)))(0, v3);
  return (*(v2 + 8 * (v1 ^ 0x2142 ^ ((((((v1 ^ 0x819FC20C) + 1) ^ (((v4 - v1) | (v1 - v4)) >> 31)) & 1) == 0) * ((v1 - 2120236532) ^ 0x819FC2CF)))))();
}

uint64_t sub_100A734C8(int a1)
{
  v4 = *(v2 + 8 * ((((((a1 & 0x9DD1F797) + 2120457052) & 0x819C4A5C) - 18467) * (v1 < 0x10)) ^ a1 & 0x9DD1F797));
  STACK[0x630] = v3;
  return v4();
}

uint64_t sub_100A73518@<X0>(int a1@<W1>, int a2@<W3>, uint64_t a3@<X4>, int a4@<W5>, unsigned int a5@<W6>, char a6@<W7>, uint64_t a7@<X8>)
{
  v13 = *(a7 + (a4 + (v8 ^ 0xEu) * v7) % ((v9 + a2) ^ a5));
  v14 = 31 * (v13 ^ v10 ^ (a6 | (8 * ~v13))) + v12;
  *(a3 + (31 * v8 + 2077 - ((((31 * v8 + 2077) * a1) >> 16) >> 7) * v11)) = *(a3 + (v14 - (((v14 * a1) >> 16) >> 7) * v11));
  return (*(STACK[0x6D8] + 8 * ((50 * (v8 != 15)) ^ v9)))();
}

uint64_t sub_100A735B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  v14 = a2[126];
  v15 = __ROR8__((STACK[0x400] ^ 0xFFFFFFFFFFFFD029) & (v14 + 4), 8);
  v16 = ((v15 + v10) | (6299 * (a8 ^ (a8 + 2))) ^ 0xBFA520633D91B90DLL) - ((v15 + v10) | 0x405ADF9CC26E77C4) + 0x405ADF9CC26E77C4;
  v17 = v16 ^ 0x10E104191DDD0AA7;
  v16 ^= 0xD4322AEA12913363;
  v18 = (__ROR8__(v17, 8) + v16) ^ a3;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ v8;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ a4;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (((2 * (v24 + v23)) | 0x9B235AC2E9737AF2) - (v24 + v23) - 0x4D91AD6174B9BD79) ^ 0x157E01AABC6EDB22;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ v11;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (((2 * (v29 + v28)) & 0xA4CF151FDEEB7EA0) - (v29 + v28) + 0x2D987570108A40AFLL) ^ 0xA9F1C79446C90096;
  *(v14 + 4) = (((__ROR8__(v30, 8) + (v30 ^ __ROR8__(v28, 61))) ^ 0x9C8651A6C7A7E5ALL) >> (8 * ((v14 + 4) & 7))) ^ 0xD9;
  v31 = __ROR8__((v14 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v32 = (v31 + v10) ^ 0x6B970A892F00BB58;
  v33 = (__ROR8__((v31 + v10) ^ 0xAF44247A204C829CLL, 8) + v32) ^ a3;
  v34 = __ROR8__(v33, 8);
  v35 = v33 ^ __ROR8__(v32, 61);
  v36 = (v34 + v35 - ((2 * (v34 + v35)) & 0x8C0A8D02C3DF76CALL) - 0x39FAB97E9E10449BLL) ^ 0x7B69A2B8878648BALL;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ a4;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ v9;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ v11;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = __ROR8__(v42, 8);
  v45 = (v44 + v43 - ((2 * (v44 + v43)) & 0xFEBB09CD9C2BA522) - 0xA27B1931EA2D6FLL) ^ 0x7B343602985692A8;
  *(v14 + 5) = (((__ROR8__(v45, 8) + (v45 ^ __ROR8__(v43, 61))) ^ 0x9C8651A6C7A7E5ALL) >> (8 * ((v14 + 5) & 7))) ^ 0x61;
  v46 = a2[424];
  a2[279] = &STACK[0x2280] + v46 + 16;
  a2[69] = &STACK[0x2280] + v46 + 32;
  a2[434] = &STACK[0x2280] + v46 + 48;
  v12[3] = &STACK[0x2280] + v46 + 64;
  a2[424] = v46 + 80;
  v12[90] = v14;
  a2[14] = &STACK[0x2280] + v46;
  a2[482] = 0;
  v12[119] = 0;
  LODWORD(STACK[0x167C]) = 0;
  a2[106] = 0;
  v12[133] = 0;
  LODWORD(STACK[0x159C]) = 0;
  return (*(v13 + 8 * ((505 * (v14 == 0)) ^ (a5 + a8 - 105))))();
}

uint64_t sub_100A73994@<X0>(char a1@<W0>, char a2@<W1>, int a3@<W2>, unsigned __int8 a4@<W8>)
{
  v16 = v14 + ((3 * (*(v5 + v4) >> 3) + (a4 ^ 0xFD)) & 7) * v6;
  v17 = v14 + ((3 * *(v5 + v4) + 5) & 7) * v6;
  v18 = v17 - (((v17 * v7) >> 32) >> 4) * v8;
  v19 = *(v9 + v18);
  LOBYTE(v16) = *(v9 + v16 - (((v16 * v7) >> 32) >> 4) * v8);
  v20 = v16 & v12 ^ 0xFB;
  v21 = v19 & v11 ^ a1;
  v22 = v19 ^ 0x20;
  LOBYTE(v16) = v16 ^ v19 ^ (2 * (v20 ^ v21 ^ v22 & (2 * (v22 & (2 * (v22 & (2 * (v22 & (2 * v21) ^ v21)) ^ v21)) ^ v21)) ^ (v16 ^ 0x20) & (2 * ((v16 ^ 0x20) & (2 * ((v16 ^ 0x20) & (2 * ((v16 ^ 0x20) & (2 * ((v16 ^ 0x20) & v10 ^ v20)) ^ v20)) ^ v20)) ^ v20))));
  *(v9 + v18) = (((v16 ^ a2) + 70) ^ (v16 + 21) ^ ((v16 ^ 0x8F) - 100)) + 21;
  return (*(v15 + 8 * (((v4 == 47) * a3) ^ v13)))();
}

uint64_t sub_100A73A90(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = (v63 + 1334179012);
  v69 = (v68 ^ 0xCB07209B) + v65;
  v70 = (v66 + v64) ^ v69;
  v71 = (v66 ^ (v65 - 695986484)) - (v65 + 598162294 + (a6 ^ 0xEE5854B4)) - (v69 ^ 0x160EB5E9) + v70 + 453809784;
  v72 = v67;
  v73 = ((-64 - BYTE4(a22)) ^ 0xFB) & (2 * ((-64 - BYTE4(a22)) & 0xE3)) ^ (-64 - BYTE4(a22)) & 0xE3;
  v74 = ((2 * ((-64 - BYTE4(a22)) ^ 0x3B)) ^ 0xB0) & ((-64 - BYTE4(a22)) ^ 0x3B) ^ (2 * ((-64 - BYTE4(a22)) ^ 0x3B)) & 0xD8;
  LODWORD(a52) = (v63 + 1334167174) | 0x1401;
  v75 = v73 ^ 0xD8 ^ (v74 ^ 0x90) & (4 * v73);
  v76 = ((-64 - BYTE4(a22)) ^ (2 * (((v74 ^ 0xD8) & (4 * v74) ^ 8) & (16 * v75) ^ v75))) & 0x3F;
  LODWORD(STACK[0x218]) = (a5 ^ (a52 - 296206165)) + 783747618;
  v77 = v70 ^ 0x4A3B8A1Cu;
  v78 = (((((BYTE4(a22) + 66) ^ 0x3C) + 39) ^ (BYTE4(a22) + 66) ^ (((BYTE4(a22) + 66) ^ 0x20) + 59) ^ (((BYTE4(a22) + 66) ^ 0x13) + 10)) ^ (((BYTE4(a22) + 66) ^ 0xAA) + 49)) & 0x3F;
  v79 = (((v76 ^ 0xE76EC0FE) + 1438174502) ^ ((v76 ^ 0xE4DD7648) + 1443593108) ^ ((v76 ^ 0x3B3B6A5) - 1318732929)) + 1875599367;
  LODWORD(STACK[0x210]) = -192203614 - (a6 ^ 0xEE5854B4);
  LODWORD(STACK[0x208]) = v66 ^ 0xF25E30E2;
  if (v78 == 37)
  {
    v80 = v79;
  }

  else
  {
    v80 = -850311905 - (((v78 ^ 0x8E669F0D) + 617170983) ^ ((v78 ^ 0x53791359) - 103365517) ^ ((v78 ^ 0xDD1F8C71) + 2008046427));
  }

  v81 = v80 + HIDWORD(a22) + 1272650818;
  LODWORD(STACK[0x28C]) = a5 ^ 0x88537A6E;
  LODWORD(STACK[0x224]) = a3 ^ 0x24A69986;
  LODWORD(STACK[0x200]) = v64 ^ 0x9C1AB006;
  HIDWORD(a21) = v81;
  return (*(v72 + 8 * ((v63 + 1334182258) ^ (477 * (v81 != -1671427723)))))(v68, a2, (v77 - v71 - 373486655), v71, a5, a6, v77, v81, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}