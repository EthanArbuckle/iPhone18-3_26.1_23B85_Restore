uint64_t sub_100598800()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x241B)))();
  STACK[0x7630] = 0;
  return (*(v1 + 8 * (v0 - 18035)))(v2);
}

uint64_t sub_100598830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = a2 + v3 + v2;
  v7 = __ROR8__(v6 & 0xFFFFFFFFFFFFFFF8, 8);
  v8 = ((v4 - 3120) | 0x2F01u) ^ 0x6B970A892F008491 ^ (v7 - 0x67659A219E1678C8);
  v9 = (__ROR8__((v7 - 0x67659A219E1678C8) ^ 0xAF44247A204C829CLL, 8) + v8) ^ 0x767CBF12CE87AC7DLL;
  v10 = __ROR8__(v9, 8);
  v11 = v9 ^ __ROR8__(v8, 61);
  v12 = (v10 + v11 - ((2 * (v10 + v11)) & 0x50FB8E646F368208) - 0x578238CDC864BEFCLL) ^ 0x1511230BD1F2B2DBLL;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0x1A1C4C99A6B3D690;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0x58EFACCBC8D7665BLL;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0xF30ADCCD896F82F3;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (((2 * (v20 + v19)) & 0xE2D9E6443930D5DCLL) - (v20 + v19) - 0x716CF3221C986AEFLL) ^ 0xAFABE39B524D528;
  *(a1 + v3) = (((__ROR8__(v21, 8) + (v21 ^ __ROR8__(v19, 61))) ^ 0x9C8651A6C7A7E5ALL) >> (8 * (v6 & 7u))) ^ *v6;
  return (*(STACK[0x57D8] + 8 * ((29953 * (((v3 + 1) ^ v5) == 189070)) ^ v4)))();
}

uint64_t sub_100598A10()
{
  v0 = STACK[0x51B8] - 20189;
  v1 = STACK[0x57D8];
  STACK[0x8580] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x18AE)))();
}

uint64_t sub_100598A44()
{
  LODWORD(STACK[0xAC08]) = v2;
  v5 = STACK[0x2368];
  LODWORD(STACK[0x1D4C8]) = v1 + 553227945 - STACK[0x2368] - 3026;
  LODWORD(STACK[0x1D4D0]) = v5;
  LODWORD(STACK[0x1D4D4]) = (v1 + 553227945) ^ v5;
  STACK[0x1D4C0] = v3 ^ v5;
  LODWORD(STACK[0x1D4CC]) = v5 + v1 + 1451493860;
  STACK[0x1D4D8] = v5;
  LODWORD(STACK[0x1D4E0]) = v5 + v1 + 553227945 - 17;
  v6 = v1 + v0;
  v7 = STACK[0x57D8];
  v8 = (*(STACK[0x57D8] + 8 * v6))(v4 - 240);
  return (*(v7 + 8 * SLODWORD(STACK[0x1D4E4])))(v8);
}

uint64_t sub_100598BB4(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = &STACK[0x1D280] + a2;
  *(v5 + 17) = *(a1 + 17);
  *(v5 + 25) = *(a1 + 25);
  *(v5 + 29) = *(a1 + 29);
  v5[31] = *(a1 + 31);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  *v5 = v7;
  *(v5 + 1) = v6;
  v5[16] = v4;
  return (*(STACK[0x57D8] + 8 * v3))();
}

uint64_t sub_100598C3C@<X0>(int a1@<W0>, unsigned __int8 *a2@<X8>)
{
  v8 = (((16 * a1) ^ 0xDD11DCD0) + 1103836669) ^ (((16 * a1) ^ 0x9871517D) + 78362706) ^ (((16 * a1) ^ 0x45608DAD) - 642095998);
  v9 = (((v8 - 995748265) ^ 0x652D103) - 1741827735) ^ (v8 - 995748265) ^ (((v8 - 995748265) ^ 0x8E744EC6) + 269176494) ^ (((v8 - 995748265) ^ 0x545B8FAE) - 903573562) ^ (((v8 - 995748265) ^ 0xBDFDEFFF) + 595783573);
  a2[v3 + 8] = (59 * ((v3 + 8) & 0xF)) ^ HIBYTE(v9) ^ *(v4 + ((v3 + 8) & 0xFLL)) ^ *(((v3 + 8) & 0xFLL) + v5 + 4) ^ *(v6 + ((v7 + 1372990096) & 0xAE29DA5E ^ 0x5857) + ((v3 + 8) & 0xFLL)) ^ 0x61;
  v10 = (v3 + 9);
  a2[v10] = (59 * ((v3 + 9) & 0xF)) ^ *(v4 + (v10 & 0xF)) ^ *((v10 & 0xF) + v5 + 4) ^ *((v10 & 0xF) + v6 + 1) ^ (v9 >> ((v7 - 112) ^ 0xE7)) ^ 0x80;
  v11 = (v3 + 10);
  v12 = *(&off_101353600 + (v7 ^ 0x5082)) - 12;
  v13 = *(&off_101353600 + v7 - 20709);
  v14 = *(&off_101353600 + (v7 ^ 0x5255)) - 4;
  a2[v11] = (97 * ((v3 + 10) & 0xF)) ^ (((((v8 + 5719) ^ 0xD103) - 11927) ^ (v8 + 5719) ^ (((v8 + 5719) ^ 0x4EC6) + 20142) ^ (((v8 + 5719) ^ 0x8FAE) - 28730) ^ (((v8 + 5719) ^ 0xEFFF) - 4203)) >> 8) ^ v12[v11 & 0xF] ^ *((v11 & 0xF) + v13 + 1) ^ ~v14[v11 & 0xF];
  v15 = (v3 + 11);
  a2[v15] = (97 * ((v3 + 11) & 0xF)) ^ v12[v15 & 0xF] ^ *((v15 & 0xF) + v13 + 1) ^ v14[v15 & 0xF] ^ 0x94 ^ (((v8 + 87) ^ 3) + 105) ^ (v8 + 87) ^ (((v8 + 87) ^ 0xC6) - 82) ^ (((v8 + 87) ^ 0xAE) - 58) ^ (-(v8 + 87) - 108);
  LODWORD(v15) = *a2 ^ 0x77;
  a2[v3 + 12] = v12[(v3 + 12) & 0xFLL] ^ (97 * ((v3 + 12) & 0xF)) ^ *(((v3 + 12) & 0xFLL) + v13 + 1) ^ v14[(v3 + 12) & 0xFLL];
  a2[v3 + 13] = v12[(v3 + 13) & 0xFLL] ^ (97 * ((v3 + 13) & 0xF)) ^ *(((v3 + 13) & 0xFLL) + v13 + 1) ^ v14[(v3 + 13) & 0xFLL];
  a2[v3 + 14] = v12[(v3 + 14) & 0xFLL] ^ (97 * ((v3 + 14) & 0xF)) ^ *(((v3 + 14) & 0xFLL) + v13 + 1) ^ v14[(v3 + 14) & 0xFLL];
  a2[v3 + 15] = (v15 % (v9 ^ 0x6180FF94)) ^ 0xBD;
  return (*(STACK[0x57D8] + 8 * (v7 ^ (8426 * (v2 == a1)))))();
}

uint64_t sub_100598F48()
{
  v5 = v0 - 9088;
  v6 = 551690071 * ((((v4 - 240) | 0x8C02E14B) + (~(v4 - 240) | 0x73FD1EB4)) ^ 0xC2EFB21D);
  STACK[0x1D4D8] = STACK[0x4E18];
  STACK[0x1D4C0] = v3;
  LODWORD(STACK[0x1D4D0]) = (v0 - 12567) ^ v6;
  STACK[0x1D4E8] = v2;
  LODWORD(STACK[0x1D4D4]) = LODWORD(STACK[0x4B78]) - v6;
  STACK[0x1D4C8] = v1;
  v7 = STACK[0x57D8];
  v8 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x24C4)))(v4 - 240);
  *v2 = *(v3 + STACK[0x4B70]);
  v2[1] = *(v3 + STACK[0x4B50]);
  v2[2] = *(v3 + STACK[0x4B48]);
  v2[3] = *(v3 + STACK[0x4B40]);
  v2[4] = *(v3 + STACK[0x4B38]);
  v2[5] = *(v3 + STACK[0x4B30]);
  v2[6] = *(v3 + STACK[0x4B28]);
  v2[7] = *(v3 + STACK[0x4B20]);
  v2[8] = *(v3 + STACK[0x4B18]);
  v2[9] = *(v3 + STACK[0x4B10]);
  v2[10] = *(v3 + STACK[0x4B08]);
  v2[11] = *(v3 + STACK[0x4B00]);
  v2[12] = *(v3 + STACK[0x4AF8]);
  v2[13] = *(v3 + STACK[0x4AF0]);
  v2[14] = *(v3 + STACK[0x4AE8]);
  v2[15] = *(v3 + STACK[0x4AE0]);
  return (*(v7 + 8 * v5))(v8);
}

uint64_t sub_1005990F0()
{
  v1 = STACK[0x57D8];
  STACK[0xC8E8] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 + v0 - 1402 + 3276)))();
}

uint64_t sub_100599174()
{
  v1 = STACK[0x57D8];
  STACK[0x65D8] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1697 ^ (672 * ((v0 + 1756184783 + v0 + 24153) > 0x5019CC27)))))();
}

uint64_t sub_100599290()
{
  STACK[0x57C0] = 0;
  v1 = STACK[0xBC78];
  STACK[0xC990] = 0x1883660EE8144416;
  STACK[0x7810] = v1;
  STACK[0x8000] = &STACK[0xC990];
  STACK[0x5FC0] = 0;
  LODWORD(STACK[0xA12C]) = 2101966012;
  LODWORD(STACK[0xC0DC]) = -2013569070;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100599334@<X0>(unsigned __int16 a1@<W8>)
{
  v1 = STACK[0x2400];
  STACK[0xD3A8] = STACK[0x9528];
  STACK[0xD3B0] = a1;
  v2 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x1730)))();
}

uint64_t sub_100599460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x51B8];
  LODWORD(STACK[0xC410]) = v7 + 3;
  return (*(STACK[0x57D8] + 8 * (v8 - 13555)))(a1, 21553, 840133462, 2090271397, a5, 4294947640, a7, 1280);
}

uint64_t sub_1005994AC()
{
  v1 = STACK[0x51B8];
  v2 = STACK[0x6108];
  v3 = (STACK[0x51B8] - 1872880836) ^ 0xE60;
  v4 = 1534937323 * ((2 * (((v0 - 240) ^ 0x15ADFF973A0F04EDLL) & 0x32BE1A101A2A4204) - ((v0 - 240) ^ 0x15ADFF973A0F04EDLL) + 0x4D41E5EFE5D5BDFBLL) ^ 0x959492BA19344251);
  LODWORD(STACK[0x1D4CC]) = 1534937323 * ((2 * (((v0 - 240) ^ 0x3A0F04ED) & 0x1A2A4204) - ((v0 - 240) ^ 0x3A0F04ED) - 438977029) ^ 0x19344251) + STACK[0x51B8] + 1451493860;
  LODWORD(STACK[0x1D4E0]) = ((v1 - 1872880836) ^ 0x36) + 1534937323 * ((2 * (((v0 - 240) ^ 0x3A0F04ED) & 0x1A2A4204) - ((v0 - 240) ^ 0x3A0F04ED) - 438977029) ^ 0x19344251);
  STACK[0x1D4C0] = v2 ^ v4;
  LODWORD(STACK[0x1D4D0]) = 1534937323 * ((2 * (((v0 - 240) ^ 0x3A0F04ED) & 0x1A2A4204) - ((v0 - 240) ^ 0x3A0F04ED) - 438977029) ^ 0x19344251);
  STACK[0x1D4D8] = v4;
  LODWORD(STACK[0x1D4C8]) = v3 - 1534937323 * ((2 * (((v0 - 240) ^ 0x3A0F04ED) & 0x1A2A4204) - ((v0 - 240) ^ 0x3A0F04ED) - 438977029) ^ 0x19344251);
  LODWORD(STACK[0x1D4D4]) = (v1 - 1872880836) ^ (1534937323 * ((2 * (((v0 - 240) ^ 0x3A0F04ED) & 0x1A2A4204) - ((v0 - 240) ^ 0x3A0F04ED) - 438977029) ^ 0x19344251));
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x2462)))(v0 - 240);
  return (*(v5 + 8 * SLODWORD(STACK[0x1D4E4])))(v6);
}

uint64_t sub_1005995A8()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  STACK[0x6A58] = 0;
  return (*(v1 + 8 * (v0 - 6071)))(v2);
}

uint64_t sub_1005995E0()
{
  STACK[0x57C0] = 0;
  v0 = STACK[0x51B8];
  STACK[0x7810] = STACK[0xD300];
  STACK[0x8000] = &STACK[0xAA90];
  STACK[0x5FC0] = 0;
  LODWORD(STACK[0xA12C]) = 2101965980;
  LODWORD(STACK[0xC0DC]) = -2013569083;
  return (*(STACK[0x57D8] + 8 * (v0 - 18197)))();
}

uint64_t sub_1005996F0()
{
  v4 = *(v1 + 2856);
  v5 = STACK[0x51E8];
  v6 = *STACK[0x51E8];
  v7 = STACK[0x51F0];
  v8 = *STACK[0x51F0];
  v9 = *(v8 + (v6 & ((v4 & 0x9738B040) + (v4 & 0x68C74FB8 | 0x9738B042) - 73955222) & 0xFFFFFFF8));
  v10 = (v9 + __ROR8__(v4 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xC2AF3EAA3FF1B8E4;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = __ROR8__(v10, 8);
  v13 = (v12 + v11 - ((2 * (v12 + v11)) & 0x2B5158E331EC24EELL) + 0x15A8AC7198F61277) ^ 0x705AF8AC807BA68BLL;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0x6FF046966119128DLL;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xA1B29DC5D776132BLL;
  v18 = __ROR8__(v17, 8);
  v19 = v17 ^ __ROR8__(v16, 61);
  v20 = (v18 + v19) ^ v2;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (((2 * (v22 + v21)) | 0x92645DC354E2C114) - (v22 + v21) + 0x36CDD11E558E9F76) ^ 0x11F59DFE6068B954;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0x5455012E8AB1C38FLL;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  LODWORD(v25) = 3903 * ((((0xC88036EF83FBD40BLL - ((v27 + v26) | 0xC88036EF83FBD40BLL) + ((v27 + v26) | 0x377FC9107C042BF4)) ^ 0x5830A9AC72067514) >> (8 * (v4 & 7u))) ^ *(v1 + 295)) + 4008381;
  v28 = *(v1 + 4008);
  v29 = *(v28 + v25 - 5896 * (((1456909 * v25) >> 32) >> 1));
  v30 = *(v1 + 4000);
  v30[38464] = v29;
  v30[39792] = *(v1 + 2791);
  v31 = *(v1 + 3752) - 0x30BDFED8F32E6727;
  v32 = *(v8 + ((((*(v1 + 3752) + 215062745) & 0xFFFFFFF8 ^ 0x6207FD68) + 1088862035 + ((2 * ((*(v1 + 3752) + 215062745) & 0xFFFFFFF8)) | 0x3BF0052D)) & v6));
  v33 = (__ROR8__(v31 & 0xFFFFFFFFFFFFFFF8, 8) + v32) ^ 0x91364DCB68334DBLL;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = __ROR8__((v35 + v34 - ((2 * (v35 + v34)) & 0x61C3D3D1AFFC6090) + 0x30E1E9E8D7FE3048) ^ 0x746C868470EFE81DLL, 8);
  v37 = (v35 + v34 - ((2 * (v35 + v34)) & 0x61C3D3D1AFFC6090) + 0x30E1E9E8D7FE3048) ^ 0x746C868470EFE81DLL ^ __ROR8__(v34, 61);
  v38 = (((2 * (v36 + v37)) | 0xAA57E009D289201CLL) - (v36 + v37) + 0x2AD40FFB16BB6FF2) ^ 0x20D90ED7E1EEB276;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (v40 + v39 - ((2 * (v40 + v39)) & 0x39F52AC9E3B0F286) + 0x1CFA9564F1D87943) ^ 0x7BA9FBA40A532DDELL;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ v3;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0x24734B65A1E08459;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = __ROR8__(v45, 8);
  v48 = (((2 * (v47 + v46)) & 0x89B52CCA231BAFB8) - (v47 + v46) - 0x44DA9665118DD7DDLL) ^ 0xFBECA670D2B7E3C2;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = __ROR8__(v48, 8);
  LODWORD(v49) = 3903 * ((((v50 + v49 - ((2 * (v50 + v49)) & 0xC650C1B1E0287AAELL) - 0x1CD79F270FEBC2A9) ^ 0x8C4B3CF615C3EF91) >> (8 * (v31 & 7u))) ^ *v31) + 4002485;
  v30[35973] = *(v28 + v49 - 5896 * (((1456909 * v49) >> 32) >> 1));
  v51 = *(v1 + 3752) - 0x30BDFED8F32E671FLL;
  v52 = *(*v7 + ((*v5 & (((*(v1 + 3752) + 215062753) & 0xFFFFFFF8) - 555828759)) & 0xFFFFFFFFFFFFFFF8));
  v53 = __ROR8__(v51 & 0xFFFFFFFFFFFFFFF8, 8);
  v54 = (0x2D4FEC74447E17C4 - ((v52 + v53) | 0x2D4FEC74447E17C4) + ((v52 + v53) | 0xD2B0138BBB81E83BLL)) ^ 0xDBA377570D02DCE0;
  v55 = v54 ^ __ROR8__(v52, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ 0x448D6F6CA711D855;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ 0xF5F2FED308AA2278;
  v59 = __ROR8__(v58, 8);
  v60 = v58 ^ __ROR8__(v57, 61);
  v61 = (((2 * (v59 + v60)) & 0x2FD40AA2772792C4) - (v59 + v60) + 0x6815FAAEC46C369DLL) ^ 0xF46946E3FE76200;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = (__ROR8__(v61, 8) + v62) ^ v3;
  v64 = v63 ^ __ROR8__(v62, 61);
  v65 = __ROR8__(v63, 8);
  v66 = (((2 * (v65 + v64)) | 0xEFC48334E4BD29F6) - (v65 + v64) + 0x81DBE658DA16B05) ^ 0xD3910AFFD3BE10A2;
  v67 = v66 ^ __ROR8__(v64, 61);
  v68 = __ROR8__(v66, 8);
  v69 = (((2 * (v68 + v67)) | 0x1756739CD216D924) - (v68 + v67) - 0xBAB39CE690B6C92) ^ 0x4B62F62455CEA773;
  LODWORD(v30) = 3903 * ((((__ROR8__(v69, 8) + (v69 ^ __ROR8__(v67, 61))) ^ 0x6F635C2EE5D7D2C6uLL) >> (8 * (v51 & 7u))) ^ *v51) + 4008381;
  *(*(v1 + 4000) + 37717) = *(*(v1 + 4008) + v30 - 5896 * (((1456909 * v30) >> 32) >> 1));
  v70 = *(v1 + 3976);
  v71 = *(v70 + 9);
  v70 += 9;
  v72 = __ROR8__(v70 & 0xFFFFFFFFFFFFFFF8, 8);
  v73 = ((2 * v72 + 0x1EFB64F383DB817ALL) & 0xAD4816CA524D9694) - v72 - 0x6621BDDEEB148C08;
  v74 = v73 ^ 0xFADC1F8D2FC8CBC3;
  v73 ^= 0x81318C4320A6CE2FLL;
  v75 = (__ROR8__(v74, 8) + v73) ^ 0x3A7C64F71FBFC65BLL;
  v76 = __ROR8__(v75, 8);
  v77 = v75 ^ __ROR8__(v73, 61);
  v78 = (((v76 + v77) & 0x46444D797BF6C37BLL ^ 0x4400047829E6822BLL) + ((v76 + v77) ^ 0xAADC4B8752195DD0) - (((v76 + v77) ^ 0xAADC4B8752195DD0) & 0x46444D797BF6C37BLL)) ^ 0x17598975BC875AEBLL;
  v79 = v78 ^ __ROR8__(v77, 61);
  v80 = __ROR8__(v78, 8);
  v81 = (0x9401F076B8E3A014 - ((v80 + v79) | 0x9401F076B8E3A014) + ((v80 + v79) | 0x6BFE0F89471C5FEBLL)) ^ 0x211BC1E6248B26D8;
  v82 = v81 ^ __ROR8__(v79, 61);
  v83 = (__ROR8__(v81, 8) + v82) ^ 0x2854CB5A8BDB8317;
  v84 = __ROR8__(v83, 8);
  v85 = v83 ^ __ROR8__(v82, 61);
  v86 = (v84 + v85 - ((2 * (v84 + v85)) & 0xAD83CF78EAEC6D0ALL) - 0x293E18438A89C97BLL) ^ 0x21B3FB7A86D8CD59;
  v87 = v86 ^ __ROR8__(v85, 61);
  v88 = (__ROR8__(v86, 8) + v87) ^ 0xE6B7173A9B2BB05DLL;
  v89 = v88 ^ __ROR8__(v87, 61);
  v90 = __ROR8__(v88, 8);
  LODWORD(v30) = (((((2 * (v90 + v89)) | 0xD22FE0036A01DFFALL) - (v90 + v89) - 0x6917F001B500EFFDLL) ^ 0xFDBB76FEC46F61DFLL) >> (8 * (v70 & 7u))) ^ v71;
  *(*(v1 + 4000) + 35806) = *(*(v1 + 4008) + 3903 * v30 + 4008381 - 5896 * (((1456909 * (3903 * v30 + 4008381)) >> 32) >> 1));
  v91 = *(v1 + 3984) + 27;
  *(v1 + 296) = v91;
  v92 = STACK[0x57D8];
  v93 = *(STACK[0x57D8] + 8 * (v0 ^ 0x23E5));
  *(v1 + 2864) = v91;
  *(v1 + 280) = v93;
  return (*(v92 + 8 * (v0 ^ 0x2346)))();
}

uint64_t sub_10059A004@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, int a4@<W7>, uint64_t a5@<X8>)
{
  v16 = v12 - 1;
  v17 = __ROR8__((v13 + v16) & 0xFFFFFFFFFFFFFFF8, 8);
  v18 = ((v15 - v17) & ((v11 - 7462) - 0x7DC1982F3F1A4A72)) + v17 + v7 - ((v17 + v7) & 0x843E67D0C0E5D97FLL);
  v19 = v18 ^ 0xA0777CD511EAF41CLL;
  v18 ^= 0x849C7B414557B4E8;
  v20 = (__ROR8__(v19, 8) + v18) ^ v5;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (v22 + v21 - ((2 * (v22 + v21)) & 0x53EC64EC961D6DFALL) + 0x29F632764B0EB6FDLL) ^ 0xA3F50D82319479FDLL;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ a5;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0x8FB164D056AA1ED1;
  v28 = *(*a2 + ((*a3 & (((a1 + v16) & 0xFFFFFFF8 ^ 0xCB93B86A) - 983154173 + ((2 * ((a1 + v16) & 0xFFFFFFF8)) | 0x68D88F29))) & 0xFFFFFFFFFFFFFFF8));
  v29 = v27 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__((a1 + v16) & 0xFFFFFFFFFFFFFFF8, 8) + v28) ^ 0xF41651499F5E3C67;
  v31 = __ROR8__(v30, 8);
  v32 = v30 ^ __ROR8__(v28, 61);
  v33 = (v31 + v32) ^ 0x153242EE3CF06A49;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (__ROR8__(v27, 8) + v29) ^ v10;
  v37 = (v35 + v34 - ((2 * (v35 + v34)) & 0xC4C5EA0FA4F2EB88) - 0x1D9D0AF82D868A3CLL) ^ 0xC01721C0EA4C4C5FLL;
  v38 = v36 ^ __ROR8__(v29, 61);
  v39 = v37 ^ __ROR8__(v34, 61);
  v40 = (__ROR8__(v37, 8) + v39) ^ 0xE5AF1AB32EBD3CDDLL;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v40, 8);
  v43 = ((2 * (v42 + v41)) & 0xFC8F00BC30CEE05ALL) - (v42 + v41) + 0x1B87FA1E7988FD2;
  v44 = (__ROR8__(v36, 8) + v38) ^ v9;
  v45 = __ROR8__(v44, 8) + (v44 ^ __ROR8__(v38, 61));
  v46 = v43 ^ 0xC665B6572BDD38F3 ^ __ROR8__(v41, 61);
  v47 = __ROR8__(v43 ^ 0xC665B6572BDD38F3, 8);
  v48 = (((2 * (v47 + v46)) | 0x798686B6D471E5D6) - (v47 + v46) - 0x3CC3435B6A38F2EBLL) ^ 0x94E563FE33EA2893;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = (v45 ^ v6) >> (8 * ((v13 + v16) & 7));
  v51 = (__ROR8__(v48, 8) + v49) ^ v8;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = __ROR8__(v51, 8);
  *(a1 + v16) = (((((2 * (v53 + v52)) | 0x3117BCBD4EBA1A22) - (v53 + v52) + 0x677421A158A2F2EFLL) ^ 0x5948168C03984539) >> (8 * ((a1 + v16) & 7))) ^ v50 ^ *(v13 + v16);
  return (*(v14 + 8 * (((v16 != 0) * a4) ^ v11)))();
}

uint64_t sub_10059A354()
{
  v1 = STACK[0x51B8];
  v2 = 2 * STACK[0x51B8];
  LODWORD(STACK[0x7680]) = v0;
  return (*(STACK[0x57D8] + 8 * ((((((v0 - (v1 - 143135685)) | (v1 - 143135685 - v0)) & 0x80000000) == 0) * (v2 ^ 0x99E8)) | (v1 - 143135685) & 0x801A3B4)))();
}

uint64_t sub_10059A474()
{
  STACK[0xCE60] = 0;
  LODWORD(STACK[0x7698]) = -769884012;
  LODWORD(STACK[0x9F20]) = -769884012;
  STACK[0x5A40] = 0;
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0x7698];
  LODWORD(STACK[0x9094]) = -32197447;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10059A520@<X0>(uint64_t a1@<X4>, int a2@<W5>, int a3@<W6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v14 = v6 - 1;
  v15 = v5 + (v14 - 103679699);
  v16 = *v10 & 0xFFFFFFFFFFFFFFF8;
  v17 = *(*v12 + (((v9 & 0xA49F7B57) + (v15 & 0xFFFFFFF8 ^ 0x1869AE39) + (LODWORD(STACK[0x3E14]) & (2 * (v15 & 0xFFFFFFF8))) - 513244408) & v16));
  v18 = a5 + (v8 + v14);
  v19 = (__ROR8__(v15 & 0xFFFFFFFFFFFFFFF8, 8) + v17) ^ v13;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (((2 * (v21 + v20)) & 0x26FF900DDEF2C13ALL) - (v21 + v20) - 0x137FC806EF79609ELL) ^ 0xF9B275172C76F52BLL;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (v24 + v23 - ((2 * (v24 + v23)) & 0x4A92DE2321C0DF4) + 0x25496F1190E06FALL) ^ 0x20214236213B3F61;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ a1;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ v11;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0xA82620A559D2DA78;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8) + v32;
  v34 = *(*v12 + (((v18 & 0xFFFFFFF8) + a3) & v16));
  v35 = (__ROR8__(v18 & 0xFFFFFFFFFFFFFFF8, 8) + v34) ^ v13;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (((2 * v33) & 0x173029E661F6C012) - v33 + 0x7467EB0CCF049FF6) ^ 0x2BEA07326C9C95EDLL;
  v39 = (v37 + v36 - ((2 * (v37 + v36)) & 0x3BF8DFCE97BA365ELL) + 0x1DFC6FE74BDD1B2FLL) ^ 0x8CE2D09772D7166;
  v40 = v39 ^ __ROR8__(v36, 61);
  v41 = __ROR8__(v38, 8) + (v38 ^ __ROR8__(v32, 61));
  v42 = (__ROR8__(v39, 8) + v40) ^ a4;
  v43 = __ROR8__(v42, 8);
  v44 = v42 ^ __ROR8__(v40, 61);
  v45 = (((2 * ((v43 + v44) ^ 0x97385A335C7026E1)) | 0x139E0DC516993116) - ((v43 + v44) ^ 0x97385A335C7026E1) + 0x7630F91D74B36775) ^ 0xFB584662F98182B7;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = __ROR8__(v45, 8);
  v48 = (((2 * (v47 + v46)) | 0x1D5024D2DEA217A6) - (v47 + v46) + 0x7157ED9690AEF42DLL) ^ 0x4975DB9FA314BCF2;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ 0xA82620A559D2DA78;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = __ROR8__(v50, 8);
  v53 = (((2 * (v52 + v51)) & 0x2C2F59686921441ELL) - (v52 + v51) - 0x1617ACB43490A210) ^ 0xB665BF7568F757EBLL;
  v54 = __ROR8__(v53, 8);
  v55 = __ROR8__(v51, 61);
  *v18 = (((v54 + (v53 ^ v55) - ((2 * (v54 + (v53 ^ v55))) & 0x71A8AB060106E6E4) - 0x472BAA7CFF7C8C8ELL) ^ 0x79179D51A4463B5ALL) >> (8 * (v18 & 7u))) ^ (((((2 * v41) | 0x46881D3E211BB134) - v41 + 0x5CBBF160EF722766) ^ 0x6287C64DB44890B2uLL) >> (8 * (v15 & 7u))) ^ *v15;
  return (*(STACK[0x57D8] + 8 * ((15530 * (v14 == a2)) ^ v7)))();
}

uint64_t sub_10059A960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x55E0]) = v4;
  v5 = *(STACK[0x57D8] + 8 * v3);
  LODWORD(STACK[0x5398]) = 189;
  return v5(a1, 4294967211, a3, LODWORD(STACK[0x5550]));
}

uint64_t sub_10059AAD4()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x51B8] - 1479;
  v2 = STACK[0xD0F8];
  *v2 = 750655775;
  *(v2 + 4) = 1646485762;
  *(v2 + 8) = 0xF0F0F0F0F0F0F0FLL;
  *(v2 + 16) = 0xF0F0F0F0F0F0F0FLL;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x2424)))(STACK[0xEC40], LODWORD(STACK[0xEC4C]) ^ 0xD21C8094, STACK[0xEC58]);
  return (*(v3 + 8 * ((22 * ((LODWORD(STACK[0x419C]) ^ ((v4 ^ 0xFFFF47BB) - 143069185 + ((2 * v4) & 0xFFFE8F76) == -143116358)) & 1)) ^ v1)))();
}

uint64_t sub_10059ABAC()
{
  STACK[0xCBE0] = STACK[0xDC70];
  LODWORD(STACK[0x983C]) = STACK[0xA3E4];
  return (*(STACK[0x57D8] + 8 * ((17092 * (STACK[0x51B8] != -2050551725)) ^ (STACK[0x51B8] - 10614))))();
}

uint64_t sub_10059AC14@<X0>(int a1@<W8>)
{
  v2 = v1 ^ 0x7EFE;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * ((v1 ^ 0x7EFEu) + 26274)))((a1 << (v1 ^ 0x60)) ^ 0x48720250u);
  STACK[0x8E80] = v4;
  return (*(v3 + 8 * ((112 * (((v4 == 0) ^ (v2 + 1)) & 1)) ^ v2)))();
}

uint64_t sub_10059AC9C()
{
  v1 = *(*STACK[0x51F0] + (*STACK[0x51E8] & STACK[0x940])) & 0x7FFFFFFF ^ 0x19A013E727EF3B9FLL;
  v2 = *(*STACK[0x51F0] + (*STACK[0x51E8] & 0x4B905A90)) & 0x7FFFFFFFFFFFFFFFLL;
  return (*(STACK[0x57D8] + 8 * (LODWORD(STACK[0x874]) | (4 * ((v2 ^ 0x1412FC33B664102CLL) + (*(*STACK[0x51F0] + (*STACK[0x51E8] & STACK[0x940])) & 0x7FFFFFFF ^ 0x79DF8541u) + (((STACK[0x5EC0] ^ 0x66BF048E76B069E8) - 0x66BF048E76B069E8) ^ ((STACK[0x5EC0] ^ 0x52FAA83B6D788C63) - 0x52FAA83B6D788C63) ^ ((v2 ^ 0x20575086ADACF5A7 ^ STACK[0x5EC0]) - (v2 ^ 0x20575086ADACF5A7))) + (((v0 ^ 0x25AAC322325408DFLL) - 0x25AAC322325408DFLL) ^ ((v0 ^ 0x3C0AD0C56C64B601) - 0x3C0AD0C56C64B601) ^ ((v1 ^ v0) - v1)) >= 0xF726234C92AC6E47 * STACK[0x80B8] - 0x291872199EE7C0FFLL + (LODWORD(STACK[0x5924]) ^ 0x462E6B12 ^ *(*STACK[0x51F0] + (*STACK[0x51E8] & STACK[0x850])) & 0x7FFFFFFFu))))))();
}

uint64_t sub_10059AEF8()
{
  STACK[0x57C0] = 0;
  STACK[0xBF78] = STACK[0xA370];
  v1 = ((((LODWORD(STACK[0x9E4C]) ^ 0x65CB1FE1) - 1707810785) ^ ((LODWORD(STACK[0x9E4C]) ^ 0x29C4C2DF) - 700760799) ^ ((v0 ^ 0x5CE9 ^ LODWORD(STACK[0x9E4C]) ^ 0x9E131002) + 1642898006)) - 769883981) & 0xFFFFFFF0;
  v2 = STACK[0x9EB0];
  STACK[0x9EF0] = 0x1883660EE8144416;
  STACK[0x7810] = v2;
  LODWORD(STACK[0xC0DC]) = -2013569074;
  STACK[0x8000] = &STACK[0x9EF0];
  STACK[0x5FC0] = 0;
  LODWORD(STACK[0xA12C]) = (((v1 ^ 0xD274598A) + 231158307) ^ ((v1 ^ 0xFBA11A08) + 605188513) ^ ((v1 ^ 0x29D54382) - 161077205)) - 1651111725;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10059B13C()
{
  v0 = STACK[0x51B8];
  LODWORD(STACK[0x77D0]) = LODWORD(STACK[0xBFAC]) << (STACK[0x51B8] - 82);
  v1 = STACK[0x57D8];
  STACK[0x9078] = *(STACK[0x57D8] + 8 * (v0 - 22052));
  return (*(v1 + 8 * (v0 - 17146)))();
}

uint64_t sub_10059B1A0@<X0>(int a1@<W8>)
{
  v1 = STACK[0x6A08];
  LODWORD(STACK[0x98F4]) = (LODWORD(STACK[0x82C0]) ^ 0xFFFFCEF3) - 143123257 + ((2 * LODWORD(STACK[0x82C0])) & 0xFFFF9DE6) + ((a1 - 466631248) & 0x1BD07EF6) + 129;
  STACK[0x6230] = v1;
  LODWORD(STACK[0x6974]) = 19603532;
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_10059B284()
{
  v1 = STACK[0xCE80];
  v2 = *(STACK[0xCE80] - 0x1883660EE814440ALL);
  LODWORD(STACK[0xE630]) = v2 + 8;
  v3 = *(v1 - 0x1883660EE814440ELL) + ((v0 - 1926462463) ^ v0 ^ 0x2C33);
  v2 -= 1926455240;
  v4 = v2 < 0xA7614AC;
  v5 = v3 < v2;
  if (v4 != v3 < 0xA7614AC)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = (STACK[0x75C8] == 0) | v6;
  if (v7)
  {
    v8 = -143155721;
  }

  else
  {
    v8 = -143113071;
  }

  LODWORD(STACK[0xE634]) = v8;
  return (*(STACK[0x57D8] + 8 * ((228 * ((v7 & 1) == 0)) ^ v0)))();
}

uint64_t sub_10059B3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, int a8)
{
  v12 = (((a5 - 1631829066) & 0x6143D3F3) - 1007704548) ^ (v8 + a8 + ((a8 + v10) >> 16) - ((a8 + v10 + ((a8 + v10) >> 16)) >> 8) - v9);
  v13 = v12 + (v12 >> 8) + ((v12 + (v12 >> 8)) >> 6);
  v14 = (v13 ^ 0x46FC31C8) - ((v13 ^ 0x46FC31C8) >> 13) - (((v13 ^ 0x46FC31C8) - ((v13 ^ 0x46FC31C8) >> 13)) >> 4);
  v15 = v14 + 366068626 + ((v14 + 366068626) >> 12) - ((v14 + 366068626 + ((v14 + 366068626) >> 12)) >> 6);
  v16 = (v15 ^ 0x7F70C12F) - ((v15 ^ 0x7F70C12F) >> 10) + (((v15 ^ 0x7F70C12F) - ((v15 ^ 0x7F70C12F) >> 10)) >> 5);
  v17 = (v16 ^ 0xC6BB0CF1) + ((v16 ^ 0xC6BB0CF1) >> 14) + (((v16 ^ 0xC6BB0CF1) + ((v16 ^ 0xC6BB0CF1) >> 14)) >> 4);
  v18 = v17 - 1274243017 + ((v17 - 1274243017) >> 14) + ((v17 - 1274243017 + ((v17 - 1274243017) >> 14)) >> 6);
  v19 = v18 - 391941237 + ((v18 - 391941237) >> 15) + ((v18 - 391941237 + ((v18 - 391941237) >> 15)) >> 1);
  v20 = v19 + 106723516 - ((v19 + 106723516) >> 9) - ((v19 + 106723516 - ((v19 + 106723516) >> 9)) >> 5);
  v21 = v20 + 1217341658 + ((v20 + 1217341658) >> 8) + ((v20 + 1217341658 + ((v20 + 1217341658) >> 8)) >> 5);
  v22 = LODWORD(STACK[0x5730]) ^ LODWORD(STACK[0x5780]) ^ LODWORD(STACK[0x5710]);
  LODWORD(STACK[0x50E0]) = v11 & (4 * LODWORD(STACK[0x5710]));
  LODWORD(STACK[0x50F8]) = v22;
  LODWORD(STACK[0x50F0]) = v11 & (4 * v22);
  LODWORD(STACK[0x53A0]) = LODWORD(STACK[0x5530]) ^ 0x567C1A92;
  LODWORD(STACK[0x5750]) = LODWORD(STACK[0x5720]) ^ 0xEB5D65F7;
  LODWORD(STACK[0x55D0]) = v13;
  LODWORD(STACK[0x5128]) = v16;
  LODWORD(STACK[0x5130]) = v17;
  LODWORD(STACK[0x5120]) = v19;
  LODWORD(STACK[0x5100]) = 4 * (v16 ^ v13 ^ v19);
  LODWORD(STACK[0x5108]) = 4 * (v17 ^ v14 ^ v20);
  v23 = STACK[0x5790];
  v24 = LODWORD(STACK[0x5790]) ^ LODWORD(STACK[0x55A0]) ^ LODWORD(STACK[0x57A0]);
  LODWORD(STACK[0x50C8]) = 4 * LODWORD(STACK[0x55A0]);
  LODWORD(STACK[0x52F0]) = 4 * v24;
  LODWORD(STACK[0x50D8]) = v14 - 1083138445 + (~(2 * v14) | 0x811EC31B);
  v25 = STACK[0x5770];
  v26 = LODWORD(STACK[0x57C0]) ^ LODWORD(STACK[0x5770]);
  LODWORD(STACK[0x5300]) = v15;
  LODWORD(STACK[0x5118]) = v18;
  LODWORD(STACK[0x5110]) = v21;
  LODWORD(STACK[0x50D0]) = 4 * (v26 ^ v15 ^ v18 ^ v21);
  return (*(STACK[0x57D8] + 8 * a5))(787626501, v23 ^ 0xF8A17F6A, v25 ^ 0xDE83AD04, 0x4CF79BCAB09BDA86);
}

uint64_t sub_10059BB04()
{
  LODWORD(STACK[0x1D4C8]) = (v0 - 1723120089) ^ (1917435887 * ((~((v1 - 240) | 0x811EBA65) + ((v1 - 240) & 0x811EBA65)) ^ 0x985A1E9C));
  v2 = STACK[0x3E78];
  STACK[0x1D4C0] = STACK[0x3E78];
  v3 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * (v0 ^ 0x5ED4)))(v1 - 240);
  v4 = (*(v3 + 8 * (v0 ^ 0x5E66)))(*STACK[0x3E50], STACK[0xA798], 256, STACK[0xA090], &STACK[0x775C]);
  v5 = (v4 ^ 0xFFF9C6D5) - 142705220 + ((((v0 - 8850) | 0x5804) ^ 0xFFF3D5FC) & (2 * v4));
  LODWORD(STACK[0x1D4C0]) = (v0 + 1717162316) ^ (1964904101 * ((v1 - 1844018671 - 2 * ((v1 - 240) & 0x92168301)) ^ 0x68346885));
  STACK[0x1D4C8] = v2;
  v6 = (*(v3 + 8 * (v0 ^ 0x5EA1)))(v1 - 240);
  return (*(v3 + 8 * ((32581 * (v5 == -143113071)) ^ v0)))(v6);
}

uint64_t sub_10059BEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0x51B8];
  v8 = (STACK[0x51B8] + 1891673449) & 0x8F3F2F7F;
  v9 = STACK[0xBC10];
  *(v9 + 4) = STACK[0x875C];
  *(v9 + 368) = STACK[0xC3E0];
  *(v9 + 448) = v8 + (*(*STACK[0x51F0] + (*STACK[0x51E8] & 0x13F614F0)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x32676144483E81A6) - 2 * (((*(*STACK[0x51F0] + (*STACK[0x51E8] & 0x13F614F0)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x32676144483E81A6) & 0x40791AC78BD5C570) + (*(*STACK[0x51F0] + (*STACK[0x51E8] & 0x13F614F0)) & 1)) + 0x40791AC78BD59832;
  v10 = STACK[0x7110];
  *(v9 + 432) = STACK[0x7110] - 0x79296B4A625EDCF4;
  *(v9 + 440) = *(v10 - 0x79296B4A625EDCB8);
  *(v9 + 744) = STACK[0x6A40];
  *(v9 + 764) = -43;
  *(v9 + 216) = STACK[0x9E40];
  *(v9 + 224) = 67;
  v11 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * (v7 - 21258));
  return (*(v11 + 8 * ((v7 - 21258) ^ 0x87A ^ (6522 * (((v7 - 21258) ^ 0x741B0610u) < 0xCBEEACFF)))))(v9 + 228, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_10059C080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = STACK[0x57D8];
  v7 = STACK[0x160C];
  STACK[0xADE8] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x160C]));
  return (*(v6 + 8 * (v7 ^ 0x131A)))(0x1C64917143BAF700, a2, 462, 5992, 3152017279, a6, 0xE580B17D8CC5E551, 0xE39B6E8EBC4508FFLL);
}

uint64_t sub_10059C190(uint64_t a1, uint64_t a2, int a3, uint64_t a4, _DWORD *a5, void *a6)
{
  *a6 = 0;
  *a5 = -769884012;
  return (*(STACK[0x57D8] + 8 * (((2 * ((((a3 - 28359) | 0x5213) - 644043714) & 0x67FF7BDF ^ 0x419C5198) - 21577) * (v6 == 0)) ^ ((a3 - 28359) | 0x5213))))(a1, a2, 3525083264);
}

uint64_t sub_10059C274()
{
  v1 = STACK[0x7B78];
  v2 = ((v0 + 142966397) & 0xF77A79FE ^ 0xD21CD8C2) + *(STACK[0x7B78] - 0x1883660EE814440ALL) + (((LODWORD(STACK[0x6E50]) ^ 0xC307C843) + 1022900157) ^ ((LODWORD(STACK[0x6E50]) ^ 0xB524DB64) + 1255875740) ^ ((LODWORD(STACK[0x6E50]) ^ 0xA43F93B3) + 1539333348 + v0 - 23486 + 2893));
  LODWORD(STACK[0xDD70]) = v2;
  v3 = *(v1 - 0x1883660EE814440ELL) - 361694405;
  v2 -= 361694405;
  v4 = v2 < 0x67BA6FB7;
  v5 = v3 < v2;
  if (v3 < 0x67BA6FB7 != v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = (STACK[0x7D80] == 0) | v6;
  if (v7)
  {
    v8 = -143155721;
  }

  else
  {
    v8 = -143113071;
  }

  LODWORD(STACK[0xDD74]) = v8;
  return (*(STACK[0x57D8] + 8 * ((16378 * ((v7 & 1) == 0)) ^ v0)))();
}

uint64_t sub_10059C420()
{
  v1 = STACK[0x9098];
  v2 = *(STACK[0x9098] - 0x1883660EE814440ALL);
  LODWORD(STACK[0xE628]) = v2 + 20;
  v3 = *(v1 - 0x1883660EE814440ELL) + 104421361;
  v2 += 104421381;
  v4 = v2 < (v0 ^ 0x8382DAD9);
  v5 = v3 < v2;
  if (v4 != v3 < 0x8382CC6D)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = (STACK[0x7010] == 0) | v6 & 1;
  if (v7)
  {
    v8 = -143155721;
  }

  else
  {
    v8 = -143113071;
  }

  LODWORD(STACK[0xE62C]) = v8;
  return (*(STACK[0x57D8] + 8 * ((v7 * ((v0 + 471393835) & 0xE3E75B76 ^ 0x582C)) ^ v0)))();
}

uint64_t sub_10059C5D0()
{
  LODWORD(STACK[0x7974]) = v3;
  LODWORD(STACK[0xA15C]) = v0;
  if (v2)
  {
    v4 = STACK[0x7408] == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  return (*(STACK[0x57D8] + 8 * ((v5 * ((v1 - 13158) ^ 0x3274)) ^ (v1 - 13158))))();
}

uint64_t sub_10059C6DC()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  return (*(v1 + 8 * (v0 - 13191)))(v2);
}

uint64_t sub_10059C7C8()
{
  v0 = STACK[0x27D8];
  v1 = STACK[0x27D8] + 4087;
  v2 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * STACK[0x27D8]);
  return (*(v2 + 8 * (v0 + v1 - 389)))();
}

uint64_t sub_10059C7FC()
{
  v1 = STACK[0x3718] ^ 0x5C5C;
  LODWORD(STACK[0x5F9C]) = v0 + 64;
  v2 = LODWORD(STACK[0x721C]) + 2107194019;
  v3 = v0 - 2084093514 > v2;
  if ((v0 - 2084093514) < 0x83C74176 != v2 < v1 - 2084094612)
  {
    v3 = (v0 - 2084093514) < 0x83C74176;
  }

  return (*(STACK[0x57D8] + 8 * ((21 * !v3) ^ LODWORD(STACK[0x3720]))))();
}

uint64_t sub_10059C94C()
{
  v1 = STACK[0x51B8] - 6528;
  LODWORD(STACK[0xDDB0]) = v0;
  return (*(STACK[0x57D8] + 8 * (v1 ^ (32 * (v0 != -143113071)))))();
}

uint64_t sub_10059C98C()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  return (*(v1 + 8 * (v0 - 7228)))(v2);
}

uint64_t sub_10059C9B8@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xDA38]) = v1;
  LOBYTE(STACK[0xDA3F]) = 0;
  STACK[0x7720] = 0xD38CBDD3ACAFF84ALL;
  LODWORD(STACK[0xC9CC]) = -769884012;
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_10059CA50()
{
  STACK[0xC4D0] = &STACK[0x5CD8];
  LODWORD(STACK[0x7EBC]) = -1389924012;
  STACK[0x7910] = 0xA30AABF32028E509;
  *(v1 + 1160) = 0;
  *(v1 + 2768) = 591007258;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10059CB3C()
{
  v0 = STACK[0x51B8];
  ++*STACK[0xE520];
  return (*(STACK[0x57D8] + 8 * (v0 - 8377)))();
}

uint64_t sub_10059CD60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, char a5@<W4>, unsigned int a6@<W5>, int a7@<W6>, char a8@<W7>, int a9@<W8>)
{
  v17 = (((v9 ^ v14) - ((((a9 + a5) | a8) ^ v15) & (2 * (v9 ^ v14))) - 72) ^ v16);
  *(a1 + 4 * v9) = v12 ^ ((v17 ^ a7) - (v17 ^ a3)) ^ a4 ^ *(*(a2 + 8 * v11) + 4 * (v17 ^ a6) - 4);
  return (*(STACK[0x57D8] + 8 * (((v10 == 0) * v13) ^ a9)))();
}

uint64_t sub_10059CDDC@<X0>(int a1@<W8>)
{
  STACK[0x57C0] = 0;
  v5 = STACK[0x57D8];
  STACK[0x7210] = *(STACK[0x57D8] + 8 * a1);
  v6 = *v4;
  STACK[0x63D0] = v3;
  STACK[0xA288] = v2;
  STACK[0x9FE0] = 0x1883660EE8144416;
  STACK[0x7810] = v6;
  STACK[0x8000] = &STACK[0x9FE0];
  STACK[0x5FC0] = 0;
  LODWORD(STACK[0xC0DC]) = -2013569071;
  LODWORD(STACK[0xA12C]) = 2101965968;
  return (*(v5 + 8 * v1))();
}

uint64_t sub_10059CE90(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *(STACK[0x57D8] + 8 * (((((v4 + 1674751126) & 0x9C2D7BF5) + 2418) * (a4 == 15)) ^ v4));
  LODWORD(STACK[0x57B0]) = STACK[0x5530];
  return v5();
}

uint64_t sub_10059CF80()
{
  v0 = STACK[0x51B8] - 7180;
  v1 = (STACK[0x51B8] - 22598) | 0x40D;
  v2 = LODWORD(STACK[0x7524]) + *(STACK[0x8DD0] - 0x1883660EE814440ALL);
  v3 = *(STACK[0x8DD0] - 0x1883660EE814440ELL);
  LODWORD(STACK[0xEBF0]) = v2;
  v3 -= 1569144809;
  v2 -= 1569144809;
  v4 = v2 < 0x1FC23493;
  v5 = v3 < v2;
  if (v4 != v3 < (v1 ^ 0x1FC2308Eu))
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = (STACK[0x6918] == 0) | v6 & 1;
  if (v7)
  {
    v8 = -143155721;
  }

  else
  {
    v8 = -143113071;
  }

  LODWORD(STACK[0xEBF4]) = v8;
  return (*(STACK[0x57D8] + 8 * (v0 | (4 * v7))))();
}

uint64_t sub_10059D06C()
{
  v2 = 16 - ((v0 + 10) & 0xFu);
  STACK[0x5630] = v2;
  return (*(STACK[0x57D8] + 8 * ((32476 * (v2 + v0 < ((79 * (v1 ^ 0x35DFu)) ^ 0xFFFFCAE2uLL))) ^ v1)))();
}

uint64_t sub_10059D23C()
{
  v0 = STACK[0x51B8] + 4474;
  v1 = STACK[0x51B8] - 22091;
  LODWORD(STACK[0xBC74]) = 16 * LODWORD(STACK[0x6164]);
  v2 = STACK[0x57D8];
  STACK[0x9078] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v0 + v1 - 22143)))();
}

uint64_t sub_10059E8BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, char a5@<W4>, unsigned int a6@<W5>, char a7@<W6>, char a8@<W7>, int a9@<W8>)
{
  v15 = (a8 ^ a7 ^ (((v13 * v9) ^ v14) - ((((v13 * v9) ^ v14) << v10) & a5) - 33));
  *(a1 + 4 * (v13 * v9)) = v12 ^ ((v15 ^ a4) + *(*(a2 + 8 * v11) + 4 * (v15 ^ a6) - 4));
  v16 = 2 * (v13 & 1) + (v13 ^ 1u) >= a3 + 256;
  return (*(STACK[0x57D8] + 8 * ((v16 | (4 * v16)) ^ a9)))();
}

uint64_t sub_10059E934()
{
  v0 = STACK[0x51B8];
  STACK[0x5E18] = STACK[0xBDF0] + SLODWORD(STACK[0xBE7C]);
  v1 = STACK[0x57D8];
  STACK[0x7DD8] = *(STACK[0x57D8] + 8 * (v0 - 19694));
  return (*(v1 + 8 * ((v0 - 16007) ^ (v0 - 19694))))();
}

void *sub_10059EA40@<X0>(int a1@<W8>)
{
  v3 = 7 * (a1 ^ 0x5F5F);
  v4 = a1 - 21899;
  STACK[0xBD90] = v2;
  LODWORD(STACK[0x5D58]) = -769884012;
  LODWORD(STACK[0xCC54]) = -769884012;
  STACK[0xB290] = 0;
  LODWORD(STACK[0xBFB0]) = 0;
  STACK[0x9B30] = 0;
  LODWORD(STACK[0x6D6C]) = 1280;
  v5 = STACK[0x7ED8];
  STACK[0x6740] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v5 + 128;
  STACK[0xA4C8] = 0;
  *(v1 + 138) = -769884012;
  STACK[0xCD00] = 0;
  return (*(STACK[0x57D8] + 8 * (v4 ^ 0x27DA ^ v3)))(&STACK[0xCD00]);
}

uint64_t sub_10059EE74(uint64_t a1)
{
  v3 = STACK[0xBC90];
  strcpy(&STACK[0x87DA], "false");
  v4 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * (v1 ^ 0x483A)))(a1, v3, 21);
  v5 = STACK[0x1F58];
  STACK[0x1D4C0] = STACK[0x1F58] + 6;
  STACK[0x1D4C8] = v3;
  LODWORD(STACK[0x1D4D0]) = v1 - v5 + 5324;
  STACK[0x1D4D8] = &STACK[0x87DA];
  v6 = (*(v4 + 8 * (v1 + 18440)))(v2 - 240);
  return (*(v4 + 8 * (((LOBYTE(STACK[0x1D4D4]) == 1) * ((3 * (v1 ^ 0x2068)) ^ 0x33BC)) ^ v1)))(v6);
}

uint64_t sub_10059EF3C()
{
  STACK[0xC0E8] = v1;
  STACK[0x79F8] = &STACK[0x9430];
  STACK[0x5D08] = 0;
  STACK[0x9230] = &STACK[0x9AB8];
  LODWORD(STACK[0x96B0]) = 1334554964;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10059F034()
{
  v2 = STACK[0x9510];
  *(v2 + 608) = STACK[0x6F50];
  *(v2 + 616) = &STACK[0x10084];
  *(v2 + 624) = 2;
  v3 = STACK[0xB210];
  *(v2 + 632) = STACK[0xB210];
  v4 = *STACK[0x51F0];
  v5 = *STACK[0x51E8] & ((v0 - 1096037541) & 0x41547A57 ^ 0xFFFFFFFFFFFFA7AELL);
  v6 = *(v4 + (((v3 & 0x78845980) + (v3 & 0x877BA678 | 0x78845980) + 28827546) & v5));
  v7 = *v3;
  v8 = (v0 - 18) ^ 0xB88801D4E1C771C2 ^ (v6 + __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8));
  v9 = v8 ^ __ROR8__(v6, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0x38C8B16AE7056877;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0xE580B17D8CC5E551;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (v14 + v13 - ((2 * (v14 + v13)) & 0x2604F90D68A6B330) - 0x6CFD83794BACA668) ^ 0x72A381DD6506A0E2;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xDA604B0C03A2BF99;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xFA35E2CDCB3E31C7;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0xD2F00CE620E5D3AELL;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = ((((2 * (v23 + v22)) | 0xF228B92B1721C7DCLL) - (v23 + v22) + 0x6EBA36A746F1C12) ^ 0xD6757A425E09695) >> (8 * (v3 & 7u));
  v25 = *++v3;
  v26 = *(v4 + (((v3 & 0xFFFFFFF8) + 2050767130) & v5));
  v27 = v24 ^ v7;
  v28 = (v26 + __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xB88801D4E1C76353;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x38C8B16AE7056877;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0xE580B17D8CC5E551;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0xE1A1FD5BD155F97ALL;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0xDA604B0C03A2BF99;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0xFA35E2CDCB3E31C7;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(v3) = v27 + 16 * ((((__ROR8__(v40, 8) + (v40 ^ __ROR8__(v39, 61))) ^ 0xF4730B31AE70757BLL) >> (8 * (v3 & 7u))) ^ v25);
  *(v2 + 640) = (v3 - 47 * (((2789 * v3) >> 16) >> 1) + 17);
  *(v2 + 644) = 0;
  *(v2 + 648) = STACK[0x6E20];
  *(v2 + 656) = STACK[0x7C54];
  *(v2 + 664) = STACK[0xABC8];
  *(v2 + 672) = 16;
  *(v2 + 680) = STACK[0x8B90];
  *(v2 + 688) = 20;
  *(v2 + 696) = STACK[0xD120];
  *(v2 + 704) = STACK[0xD110];
  *(v2 + 712) = &STACK[0x9800];
  *(v2 + 720) = &STACK[0x5C08];
  LODWORD(STACK[0x1D4CC]) = (v0 - 1178824955) ^ (1964904101 * ((((v1 - 240) | 0xC6411BDD) - ((v1 - 240) & 0xC6411BDD)) ^ 0x3C63F059));
  STACK[0x1D4C0] = v2 + 608;
  v41 = STACK[0x57D8];
  v42 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x6E14)))(v1 - 240);
  v43 = STACK[0x1D4C8];
  LODWORD(STACK[0xDBE8]) = STACK[0x1D4C8];
  return (*(v41 + 8 * ((24098 * (v43 == -143113071)) ^ v0)))(v42);
}

uint64_t sub_10059F4C8()
{
  STACK[0xA2C8] = 0;
  LODWORD(STACK[0x79DC]) = -769884012;
  STACK[0xA668] = 0;
  LODWORD(STACK[0xB184]) = -769884012;
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xB184];
  LODWORD(STACK[0x9094]) = -32197441;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10059F584(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char a5)
{
  v18 = *(*(v16 + 8 * (v6 - 16342)) + 4 * (a2 ^ 0xC4u) - 4) - (a2 ^ 0xCFAF90A7);
  v19 = (v12 ^ ((((a2 ^ ((a2 & v8) >> 1)) & STACK[0x57A0]) >> LODWORD(STACK[0x57B0])) + ((a2 ^ ((a2 & v8) >> 1)) << STACK[0x5380]))) ^ 0x80u;
  v20 = a2 ^ 0x71;
  *(STACK[0xD290] + 4 * v19) = v10 ^ v9 ^ (((v18 ^ (((v18 ^ v17) & v13) >> 1) ^ v17) & STACK[0x53C0]) >> v15) ^ ((((v18 ^ (((v18 ^ v17) & v13) >> 1) ^ 0x262581E5) & STACK[0x53B8] | v11) ^ (v6 + 24738160)) << a5);
  v21 = a2 == 255;
  v22 = (a2 + 1);
  v23 = v21;
  *(v14 + 4 * v19) = v9 ^ v7 ^ v10 ^ *(v5 + 4 * v20);
  return (*(STACK[0x57D8] + 8 * ((4415 * v23) ^ v6)))(a1, v22);
}

uint64_t sub_10059F8B8()
{
  v3 = *(v2 + 48 * v1 + 36);
  LODWORD(STACK[0xB1EC]) = v3;
  v4 = v3 - 1796630644;
  v6 = v4 > (((v0 + 88010916) & 0xFAC0F73C) + 1354414787) || v4 < SLODWORD(STACK[0x57B0]);
  return (*(STACK[0x57D8] + 8 * ((v6 * (v0 ^ 0x3FD3)) ^ v0)))(4294924618);
}

uint64_t sub_10059FAE8()
{
  v0 = STACK[0x57B0] - 15162;
  LODWORD(STACK[0xD484]) = 0;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10059FB74()
{
  v0 = STACK[0x51B8] + 59;
  v1 = STACK[0x51B8] + 698;
  v2 = STACK[0x94B8];
  LODWORD(STACK[0x868C]) = STACK[0x96CC];
  v3 = STACK[0x7ED8];
  STACK[0x8AE0] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v3 + 16;
  STACK[0x5CC8] = v2;
  STACK[0xBF70] = 0;
  LODWORD(STACK[0x7E54]) = 0;
  STACK[0x7028] = 0;
  LODWORD(STACK[0x8CF4]) = 0;
  if (STACK[0xB1D8])
  {
    v4 = STACK[0x9500] == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(STACK[0x57D8] + 8 * ((7 * ((v0 ^ v5) & 1)) ^ v1)))();
}

uint64_t sub_10059FC48@<X0>(int a1@<W3>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v16 = v5 + v8 + v6;
  v17 = *(*v14 + ((*v15 & (((a5 + v8) & 0xFFFFFFF8) + a1)) & 0xFFFFFFFFFFFFFFF8));
  v18 = (v17 + __ROR8__((a5 + v8) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0x8BFE417BEF7F1026;
  v19 = __ROR8__(v18, 8);
  v20 = v18 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(((v9 - 8362) | 0x1842u) ^ 0xC933E755CB2936CDLL ^ (v19 + v20), 8);
  v22 = ((v9 - 8362) | 0x1842u) ^ 0xC933E755CB2936CDLL ^ (v19 + v20) ^ __ROR8__(v20, 61);
  v23 = (v21 + v22 - ((2 * (v21 + v22)) & 0x6507CE647C462188) + 0x3283E7323E2310C4) ^ 0x3D674DE32B22491;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0x3662C1F52A6EAC3ELL;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0x7D099FFAECC8F2BELL;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ a3;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v16 & 0xFFFFFFFFFFFFFFF8, 8) + v13;
  v32 = v31 ^ 0x8B18BD9A62CD5640;
  v31 ^= 0xAD114E495B9659F5;
  v33 = __ROR8__(v29, 8);
  v34 = (__ROR8__(v32, 8) + v31) ^ v12;
  v35 = v34 ^ __ROR8__(v31, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (((2 * (v36 + v35)) | 0xB9DABB2CDC19AF62) - (v36 + v35) + 0x2312A26991F3284FLL) ^ 0x55DA2F266D8F206DLL;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (((2 * (v33 + v30)) & 0x83559A30636B7968) - (v33 + v30) + 0x3E5532E7CE4A434BLL) ^ 0x60E7281D4A3CC029;
  v41 = (v39 + v38 - ((2 * (v39 + v38)) & 0xD157F5AA6887E42ELL) - 0x1754052ACBBC0DE9) ^ 0xC089F34CBF9F5274;
  v42 = v41 ^ __ROR8__(v38, 61);
  v43 = __ROR8__(v40, 8) + (v40 ^ __ROR8__(v30, 61));
  v44 = (__ROR8__(v41, 8) + v42) ^ 0xEE93EFF9FB91609BLL;
  v45 = __ROR8__(v44, 8);
  v46 = v44 ^ __ROR8__(v42, 61);
  v47 = (v45 + v46) ^ a2;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ a4;
  *v16 = (((__ROR8__(v49, 8) + (v49 ^ __ROR8__(v48, 61))) ^ v11) >> (8 * (v16 & 7u))) ^ *(a5 + v8) ^ ((v43 ^ v10) >> (8 * ((a5 + v8) & 7)));
  return (*(STACK[0x57D8] + 8 * ((85 * (((v8 + 1) ^ v7) == 1742607124)) ^ v9)))();
}

uint64_t sub_10059FFD4()
{
  v1 = v0 ^ 0xA82F26;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v1 - 11008803)))();
  STACK[0x67E0] = 0;
  return (*(v2 + 8 * ((((v1 + 150407206) & 0xF660F3EF ^ 0xB742) * (v1 > LODWORD(STACK[0x1A5C]))) ^ (v1 - 11023293))))(v3);
}

uint64_t sub_1005A004C()
{
  v0 = STACK[0x51B8] - 20079;
  v1 = STACK[0x57D8];
  STACK[0x8580] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1830)))();
}

uint64_t sub_1005A00A0()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x241B)))();
  return (*(v1 + 8 * (v0 + 168)))(v2);
}

uint64_t sub_1005A00C8()
{
  v1 = STACK[0x51B8];
  LODWORD(STACK[0x1D4C0]) = (STACK[0x51B8] + 1717148634) ^ (1964904101 * ((((2 * (v0 - 240)) | 0x46C54DA6) - (v0 - 240) + 1553815853) ^ 0x59404D57));
  STACK[0x1D4C8] = STACK[0x4168];
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x2413)))(v0 - 240);
  return (*(v2 + 8 * SLODWORD(STACK[0x1ED8])))(v3);
}

uint64_t sub_1005A0154@<X0>(unsigned int a1@<W8>)
{
  v4 = STACK[0x3904];
  v5 = LODWORD(STACK[0x3900]) + v2;
  v6 = STACK[0x38F0];
  LODWORD(STACK[0x1D4E0]) = (LODWORD(STACK[0x3904]) ^ 0xB) + STACK[0x38F0];
  LODWORD(STACK[0x1D4C8]) = (v4 ^ v1 ^ 0xD57 ^ v5) - v6;
  LODWORD(STACK[0x1D4D0]) = v6;
  LODWORD(STACK[0x1D4D4]) = v4 ^ v6;
  v7 = STACK[0x51B8];
  LODWORD(STACK[0x1D4CC]) = v6 + 1451493860 + STACK[0x51B8];
  STACK[0x1D4D8] = v6 + a1;
  STACK[0x1D4C0] = v6;
  v8 = STACK[0x57D8];
  v9 = (*(STACK[0x57D8] + 8 * (v7 ^ 0x2462)))(v3 - 240);
  return (*(v8 + 8 * SLODWORD(STACK[0x1D4E4])))(v9);
}

uint64_t sub_1005A01F0()
{
  LODWORD(STACK[0x9B24]) = v0;
  LODWORD(STACK[0xC224]) = -1424305827;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1005A046C()
{
  v0 = (STACK[0x51B8] - 13172) | 0x5011;
  v1 = STACK[0x51B8] - 20298;
  STACK[0x9F60] = STACK[0x6530] + SLODWORD(STACK[0x947C]);
  return (*(STACK[0x57D8] + 8 * ((v0 ^ 0x640D) + v1)))();
}

uint64_t sub_1005A0604@<X0>(_BYTE *a1@<X8>)
{
  a1[8] = v2[8] ^ 0x6B;
  a1[9] = v2[9] ^ 0xF6;
  a1[10] = v2[10] ^ 0x23;
  a1[11] = v2[11] ^ 0xB6;
  a1[12] = (v1 + 30) & 0xFE ^ v2[12] ^ 0x1F;
  a1[13] = v2[13] ^ 0x8A;
  a1[14] = v2[14] ^ 0x41;
  a1[15] = v2[15] ^ 0xE9;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1005A0708@<X0>(int a1@<W8>)
{
  v1 = STACK[0x57D8];
  STACK[0x8868] = *(STACK[0x57D8] + 8 * a1);
  return (*(v1 + 8 * ((((a1 - 964) | 0x4100) ^ 0x578D) + a1)))();
}

uint64_t sub_1005A076C()
{
  if (!v0)
  {
    v0 = v2;
  }

  return (*(STACK[0x57D8] + 8 * (((((*v0 == 0) ^ (25 * (v1 ^ 0x92) + 1)) & 1) * ((v1 + 10894) ^ 0x5873)) ^ v1)))();
}

uint64_t sub_1005A0A48@<X0>(int a1@<W8>)
{
  STACK[0xD130] = STACK[0xA928];
  STACK[0x98D0] = 0x1883660EE8144416;
  return (*(STACK[0x57D8] + 8 * (a1 ^ 0x16F0u)))();
}

uint64_t sub_1005A0AE0()
{
  v1 = (((v0 ^ 0xAED799B) - 183335323) ^ ((v0 ^ 0xFB657D9F) + 77234785) ^ (((LODWORD(STACK[0x1E70]) | 0x94404090) ^ 0xF90F4DC2) + (v0 ^ 0xF188F6AD))) + 1691556933;
  LODWORD(STACK[0x8404]) = ((v1 ^ (17 * LODWORD(STACK[0x1E20]) + 28384155)) - 1701029264) ^ v1 ^ ((v1 ^ 0x6D69CCFA) - 163308898) ^ ((v1 ^ 0xF7F69691) + 1826308343) ^ ((v1 ^ 0xFFFCFFFB) + 1691429277) ^ 0xB6CEA90C;
  return (*(STACK[0x57D8] + 8 * (LODWORD(STACK[0x1E6C]) ^ (4 * (((((v0 ^ 0xC7F8) + 14344) ^ ((v0 ^ 0xC0D2) + 16174) ^ ((v0 ^ 0xF583) + 2685)) - 5972) > 0xF602u)))))();
}

uint64_t sub_1005A0C68()
{
  v4 = *(v3 + v2);
  *(v0 + v2) = v4;
  return (*(STACK[0x57D8] + 8 * ((487 * (v4 == (-107 * (((v1 - 85) | 0x84) ^ 0xCA) + 5))) ^ (v1 - 365))))();
}

uint64_t sub_1005A0D4C()
{
  v1 = STACK[0x51B8] - 18310;
  STACK[0xC998] = v0;
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0x6B54];
  LODWORD(STACK[0x9094]) = -32197493;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1005A0DE0@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x8AEC]) = a1;
  v2 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (((v1 ^ 0x1088) + 396) ^ v1)))();
}

uint64_t sub_1005A0E20()
{
  v2 = STACK[0xF34];
  v3 = STACK[0x51B8];
  v4 = STACK[0xF28];
  STACK[0x1D4D8] = v0 - STACK[0xF28];
  LODWORD(STACK[0x1D4C0]) = (v3 - 1079089617) ^ v4;
  STACK[0x1D4E0] = v4 + 4151854225u;
  LODWORD(STACK[0x1D4D0]) = v4;
  LODWORD(STACK[0x1D4C8]) = (v2 ^ 0xCA) - v4;
  LODWORD(STACK[0x1D4CC]) = v2 - v4;
  LODWORD(STACK[0x1D4C4]) = v4 ^ v2 ^ 0x1084;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v3 ^ 0x2411)))(v1 - 240);
  return (*(v5 + 8 * SLODWORD(STACK[0x1D4D4])))(v6);
}

uint64_t sub_1005A0EC0()
{
  v0 = LODWORD(STACK[0x2A54]) | 0x2601;
  v1 = STACK[0x57D8];
  v2 = STACK[0x2A7C];
  STACK[0x6C78] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x2A7C]));
  return (*(v1 + 8 * ((v0 ^ 0x1C2E) + v2)))();
}

uint64_t sub_1005A103C()
{
  v1 = ((STACK[0x3728] & 0xFD67C0700D7AE712) - STACK[0x5530] - 0x7EB3E03806BD738ALL) ^ 0xB984AEAD1E47E401;
  v2 = v1 ^ STACK[0x5520];
  v3 = (__ROR8__(v1, 8) + v2) ^ 0xE580B17D8CC5E551;
  v4 = v3 ^ __ROR8__(v2, 61);
  v5 = __ROR8__(v3, 8);
  v6 = (((2 * (v5 + v4)) | 0x8BAD2415DA8ED2F4) - (v5 + v4) + 0x3A296DF512B89686) ^ 0x24776F513C129000;
  v7 = v6 ^ __ROR8__(v4, 61);
  v8 = (__ROR8__(v6, 8) + v7) ^ 0xDA604B0C03A2BF99;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0xFA35E2CDCB3E31C7;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0xD2F00CE620E5D3AELL;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = __ROR8__(v12, 8);
  LODWORD(v12) = (((v14 + v13 - ((2 * (v14 + v13)) & 0x62B76634D97B8BE4) - 0x4EA44CE593423A0ELL) ^ 0x4528B82BC2CDB089) >> STACK[0x57B0]) ^ LODWORD(STACK[0x57C0]);
  v15 = *(STACK[0x5740] + (LODWORD(STACK[0x54D0]) & ((STACK[0x5670] ^ 0x8A404877) + 75268498 + (LODWORD(STACK[0x5348]) | 0xEB7F6F11))));
  v16 = (v15 + STACK[0x56E0]) ^ 0xB88801D4E1C76353;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0x38C8B16AE7056877;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0xE580B17D8CC5E551;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0xE1A1FD5BD155F97ALL;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0xDA604B0C03A2BF99;
  v25 = v24 ^ __ROR8__(v23, 61);
  LODWORD(STACK[0x54D0]) = ((v12 ^ 0xB) + 115) ^ ((v12 ^ 0x41) + 57) ^ ((v12 ^ 0x4A) + 52);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0xFA35E2CDCB3E31C7;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (((2 * (v28 + v27)) & 0xF663D66F4FC87B20) - (v28 + v27) - 0x7B31EB37A7E43D91) ^ 0x563E182E78FE11C1;
  v30 = ((__ROR8__(v29, 8) + (v29 ^ __ROR8__(v27, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5480];
  LODWORD(STACK[0x5780]) = ((v30 ^ LODWORD(STACK[0x54A0]) ^ 0x73) - 94) ^ ((v30 ^ LODWORD(STACK[0x54A0]) ^ 0xFFFFFF82) + 81) ^ ((v30 ^ LODWORD(STACK[0x54A0]) ^ 0xFFFFFFF1) + 36);
  v31 = *(STACK[0x5328] + (LODWORD(STACK[0x5218]) & ((STACK[0x5308] ^ 0x361CB804) - 1336348385 + (LODWORD(STACK[0x5368]) | 0x93C68FF7))));
  v32 = (v31 + STACK[0x5700]) ^ 0xB88801D4E1C76353;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0x38C8B16AE7056877;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0xE580B17D8CC5E551;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0xE1A1FD5BD155F97ALL;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0xDA604B0C03A2BF99;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ 0xFA35E2CDCB3E31C7;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = __ROR8__(v42, 8);
  v45 = (((2 * (v44 + v43)) & 0xA9FB0451F9054180) - (v44 + v43) + 0x2B027DD7037D5F3FLL) ^ 0xF9F2713123988C91;
  v46 = v45 ^ __ROR8__(v43, 61);
  v47 = __ROR8__(v45, 8);
  v48 = ((2 * (v47 + v46)) & 0x2C072D3FA124D7ECLL) - (v47 + v46);
  v49 = *(STACK[0x5320] + (LODWORD(STACK[0x5198]) & ((STACK[0x54E0] & 0xCE200E68) + (STACK[0x54E0] | LODWORD(STACK[0x3FAC])) - 1407440213)));
  v50 = (v49 + STACK[0x5300]) ^ 0xB88801D4E1C76353;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = __ROR8__(v50, 8);
  v53 = (((2 * (v52 + v51)) | 0x14AA24E7089CB416) - (v52 + v51) + 0x75AAED8C7BB1A5F5) ^ 0xB29DA319634B327CLL;
  v54 = v53 ^ __ROR8__(v51, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ 0xE580B17D8CC5E551;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = __ROR8__(v55, 8);
  v58 = (((2 * (v57 + v56)) & 0x7DBB85A0D30E41FALL) - (v57 + v56) - 0x3EDDC2D0698720FELL) ^ 0x2083C074472D2678;
  v59 = v58 ^ __ROR8__(v56, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ 0xDA604B0C03A2BF99;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = __ROR8__(v60, 8);
  v63 = (((2 * (v62 + v61)) & 0xB55FB91E3954652CLL) - (v62 + v61) + 0x25502370E355CD69) ^ 0xDF65C1BD286BFCAELL;
  v64 = v63 ^ __ROR8__(v61, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ 0xD2F00CE620E5D3AELL;
  STACK[0x5740] = __ROR8__(v65, 8) + (v65 ^ __ROR8__(v64, 61));
  v66 = *(STACK[0x5370] + (LODWORD(STACK[0x50F0]) & (STACK[0x5380] - 555638542 - (STACK[0x5380] & 0x64A56C20) + (STACK[0x5380] | 0x9B5A93D8) + 1104)));
  v67 = (v66 + STACK[0x5360]) ^ 0xB88801D4E1C76353;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = __ROR8__(v67, 8);
  v70 = (0xEFE4B35CB98C00FLL - ((v69 + v68) | 0xEFE4B35CB98C00FLL) + ((v69 + v68) | 0xF101B4CA34673FF0)) ^ 0xC9C905A0D3625787;
  v71 = v70 ^ __ROR8__(v68, 61);
  v72 = (__ROR8__(v70, 8) + v71) ^ 0xE580B17D8CC5E551;
  v73 = v72 ^ __ROR8__(v71, 61);
  v74 = __ROR8__(v72, 8);
  v75 = (((2 * (v74 + v73)) | 0x30E1847E8BA6FC74) - (v74 + v73) + 0x678F3DC0BA2C81C6) ^ 0x79D13F6494868740;
  v76 = v75 ^ __ROR8__(v73, 61);
  v77 = (__ROR8__(v75, 8) + v76) ^ 0xDA604B0C03A2BF99;
  v78 = v77 ^ __ROR8__(v76, 61);
  v79 = __ROR8__(v77, 8);
  v80 = (((2 * ((v79 + v78) ^ 0xEBC1F88B4DEDDAALL)) | 0xBB10B44A383929CCLL) - ((v79 + v78) ^ 0xEBC1F88B4DEDDAALL) - 0x5D885A251C1C94E6) ^ 0xA901A76063FC788BLL;
  v81 = v80 ^ __ROR8__(v78, 61);
  v82 = __ROR8__(v80, 8);
  v83 = (((2 * (v82 + v81)) & 0x8FD40D43EA4CFB5CLL) - (v82 + v81) + 0x3815F95E0AD98251) ^ 0xEAE5F5B82A3C51FFLL;
  v84 = __ROR8__(v83, 8) + (v83 ^ __ROR8__(v81, 61));
  v85 = *(STACK[0x5260] + ((((STACK[0x5220] & 0x907348A0) + (STACK[0x5220] | 0x907348A1) - 372707207) & STACK[0x52A8]) & 0xFFFFFFFFFFFFFFF8));
  v86 = (v85 + STACK[0x5338] - ((2 * (v85 + STACK[0x5338])) & 0xA89E3B2A332CC964) - 0x2BB0E26AE6699B4ELL) ^ 0x6CC71C41F85107E1;
  v87 = v86 ^ __ROR8__(v85, 61);
  v88 = __ROR8__(v86, 8);
  v89 = (v88 + v87 - ((2 * (v88 + v87)) & 0xEDD8E5A2D13CE9F0) + 0x76EC72D1689E74F8) ^ 0x4E24C3BB8F9B1C8FLL;
  v90 = v89 ^ __ROR8__(v87, 61);
  v91 = (__ROR8__(v89, 8) + v90) ^ 0xE580B17D8CC5E551;
  v92 = v91 ^ __ROR8__(v90, 61);
  v93 = __ROR8__(v91, 8);
  STACK[0x5670] = v84 - ((2 * v84) & 0xEFB480B634A0A46CLL);
  v94 = (v93 + v92 - ((2 * (v93 + v92)) & 0x58C11F72F56E2EALL) + 0x2C608FB97AB7175) ^ 0xE367F5A046FE880FLL;
  v95 = v94 ^ __ROR8__(v92, 61);
  v96 = __ROR8__(v94, 8);
  v97 = (((v96 + v95) & 0x2F47D768EE00A11 ^ 0x1401348E800810) + ((v96 + v95) & 0xFD0B8289711FF5EELL ^ 0x440A0288401B3403) - 1) ^ 0x9E7E48B0CD39838BLL;
  v98 = v97 ^ __ROR8__(v95, 61);
  v99 = __ROR8__(v97, 8);
  v100 = (((v99 + v98) | 0x8984E973D715039ALL) - ((v99 + v98) | 0x767B168C28EAFC65) + 0x767B168C28EAFC65) ^ 0x73B10BBE1C2B325DLL;
  v101 = v100 ^ __ROR8__(v98, 61);
  v102 = (__ROR8__(v100, 8) + v101) ^ 0xD2F00CE620E5D3AELL;
  STACK[0x5620] = __ROR8__(v102, 8) + (v102 ^ __ROR8__(v101, 61));
  v103 = *(STACK[0x5258] + (LODWORD(STACK[0x50A8]) & ((STACK[0x5250] | 0x7480EB29) + LODWORD(STACK[0x3210]) + (STACK[0x5250] | 0x8B7F14D6))));
  v104 = (v103 + STACK[0x51A8]) ^ 0xB88801D4E1C76353;
  v105 = v104 ^ __ROR8__(v103, 61);
  v106 = (__ROR8__(v104, 8) + v105) ^ 0x38C8B16AE7056877;
  v107 = v106 ^ __ROR8__(v105, 61);
  v108 = (__ROR8__(v106, 8) + v107) ^ 0xE580B17D8CC5E551;
  v109 = v108 ^ __ROR8__(v107, 61);
  v110 = (__ROR8__(v108, 8) + v109) ^ 0xE1A1FD5BD155F97ALL;
  v111 = v110 ^ __ROR8__(v109, 61);
  v112 = __ROR8__(v110, 8);
  v113 = (((v112 + v111) ^ 0x948484D2E0102A7FLL | 0xCEED99493CFEEAE3) - ((v112 + v111) ^ 0x948484D2E0102A7FLL | 0x311266B6C301151CLL) + 0x311266B6C301151CLL) ^ 0x80095697DF4C7F05;
  v114 = v113 ^ __ROR8__(v111, 61);
  v115 = (__ROR8__(v113, 8) + v114) ^ 0xFA35E2CDCB3E31C7;
  v116 = v115 ^ __ROR8__(v114, 61);
  v117 = __ROR8__(v115, 8);
  v118 = (((2 * ((v117 + v116) ^ 0x3E995252DABB8BC7)) | 0x51C3509E7903F722) - ((v117 + v116) ^ 0x3E995252DABB8BC7) + 0x571E57B0C37E046FLL) ^ 0x4488F6FBC6DFA3F8;
  v119 = __ROR8__(v118, 8) + (v118 ^ __ROR8__(v116, 61));
  v120 = ((STACK[0x50B8] | 0x87DEDBB784D9A86ELL) - STACK[0x50D8] + 0x3C1092243D932BC9) ^ 0x7B676C0F23ABB764;
  v121 = __ROR8__(v120, 8);
  v122 = v120 ^ STACK[0x50E0];
  v123 = (v121 + v122 - ((2 * (v121 + v122)) & 0x37C20298AAE9CD74) + 0x1BE1014C5574E6BALL) ^ 0x2329B026B2718ECDLL;
  v124 = v123 ^ __ROR8__(v122, 61);
  v125 = (__ROR8__(v123, 8) + v124) ^ 0xE580B17D8CC5E551;
  v126 = v125 ^ __ROR8__(v124, 61);
  v127 = __ROR8__(v125, 8);
  STACK[0x5560] = ((2 * v119) | 0x788E4A194F088924) - v119;
  v128 = (((2 * (v127 + v126)) & 0xDC77232E42B7A558) - (v127 + v126) - 0x6E3B9197215BD2ADLL) ^ 0x706593330FF1D429;
  v129 = v128 ^ __ROR8__(v126, 61);
  v130 = (__ROR8__(v128, 8) + v129) ^ 0xDA604B0C03A2BF99;
  v131 = v130 ^ __ROR8__(v129, 61);
  v132 = __ROR8__(v130, 8);
  v133 = (((v132 + v131) | 0x695AD4653C92A5ECLL) - ((v132 + v131) | 0x96A52B9AC36D5A13) - 0x695AD4653C92A5EDLL) ^ 0x936F36A8F7AC942BLL;
  v134 = v133 ^ __ROR8__(v131, 61);
  v135 = (__ROR8__(v133, 8) + v134) ^ 0xD2F00CE620E5D3AELL;
  v136 = __ROR8__(v135, 8) + (v135 ^ __ROR8__(v134, 61));
  v137 = *(STACK[0x5060] + (LODWORD(STACK[0x4FE8]) & ((STACK[0x50B0] ^ 0xAB5AD30F) - 824089077 + (STACK[0x5028] & 0x56B5A610))));
  v138 = (v137 + STACK[0x50D0]) ^ 0xB88801D4E1C76353;
  v139 = v138 ^ __ROR8__(v137, 61);
  v140 = (__ROR8__(v138, 8) + v139) ^ 0x38C8B16AE7056877;
  v141 = v140 ^ __ROR8__(v139, 61);
  v142 = __ROR8__(v140, 8);
  v143 = (((2 * (v142 + v141)) & 0xFF599E9BB687510ALL) - (v142 + v141) + 0x5330B224BC577ALL) ^ 0xE5D381CFA879B22BLL;
  v144 = v143 ^ __ROR8__(v141, 61);
  v145 = __ROR8__(v143, 8);
  v146 = (((2 * (v145 + v144)) & 0x82118307A2F58C96) - (v145 + v144) - 0x4108C183D17AC64CLL) ^ 0x5F56C327FFD0C0CELL;
  v147 = v146 ^ __ROR8__(v144, 61);
  v148 = __ROR8__(v146, 8);
  LODWORD(v136) = (((((2 * v136) & 0x187203057AEDD8CCLL) - v136 + 0x73C6FE7D42891399) ^ 0x87B5F54CECF966E2) >> STACK[0x5148]) ^ LODWORD(STACK[0x5150]);
  v149 = (v148 + v147 - ((2 * (v148 + v147)) & 0xAB81BF5A851567FALL) - 0x2A3F2052BD754C03) ^ 0xFA094A141280C64;
  v150 = v149 ^ __ROR8__(v147, 61);
  v151 = ((STACK[0x4D98] & 0x5A38780139237AB0) - STACK[0x4DA0] + 0x52E3C3FF636E42A7) ^ 0xEA6BC22B82A921F4;
  v152 = __ROR8__(v151, 8);
  v153 = v151 ^ STACK[0x4DA8];
  v154 = (__ROR8__(v149, 8) + v150) ^ 0xFA35E2CDCB3E31C7;
  v155 = v154 ^ __ROR8__(v150, 61);
  v156 = __ROR8__(v154, 8);
  v157 = (v152 + v153 - ((2 * (v152 + v153)) & 0x44F1DECFA7068B3CLL) + 0x2278EF67D383459ELL) ^ 0x1AB05E0D34862DE9;
  v158 = v157 ^ __ROR8__(v153, 61);
  v159 = (__ROR8__(v157, 8) + v158) ^ 0xE580B17D8CC5E551;
  v160 = v159 ^ __ROR8__(v158, 61);
  v161 = __ROR8__(v159, 8);
  v162 = (v161 + v160 - ((2 * (v161 + v160)) & 0x52EE6B4D0C62DFC8) - 0x5688CA5979CE901CLL) ^ 0x48D6C8FD5764969ELL;
  v163 = v162 ^ __ROR8__(v160, 61);
  v164 = (__ROR8__(v162, 8) + v163) ^ 0xDA604B0C03A2BF99;
  v165 = v164 ^ __ROR8__(v163, 61);
  v166 = __ROR8__(v164, 8);
  v167 = (((v166 + v165) | 0x80067A8D2F0B6518) - ((v166 + v165) | 0x7FF98572D0F49AE7) + 0x7FF98572D0F49AE7) ^ 0x7A339840E43554DFLL;
  v168 = v167 ^ __ROR8__(v165, 61);
  v169 = __ROR8__(v167, 8);
  v170 = *(STACK[0x4F58] + ((((STACK[0x4FD0] & 0x3AD8A3E8) + (STACK[0x4FD0] | 0x3AD8A3E8) + 1063490866) & STACK[0x4F50]) & 0xFFFFFFFFFFFFFFF8));
  v171 = (v156 + v155 - ((2 * (v156 + v155)) & 0x53B721EFE98BCFE4) - 0x56246F080B3A180ELL) ^ 0x7B2B9C11D420345CLL;
  v172 = (((v169 + v168) | 0xD3E25C4D9B4CE33) - ((v169 + v168) | 0xF2C1DA3B264B31CCLL) - 0xD3E25C4D9B4CE34) ^ 0xDFCE2922F9511D9DLL;
  LODWORD(STACK[0x54E0]) = ((v136 ^ 0x1A) + 99) ^ ((v136 ^ 0xFFFFFF83) - 4) ^ ((v136 ^ 0xFFFFFF99) - 30);
  v173 = (v170 + STACK[0x4FC8]) ^ 0xB88801D4E1C76353;
  v174 = v173 ^ __ROR8__(v170, 61);
  v175 = __ROR8__(v171, 8) + (v171 ^ __ROR8__(v155, 61));
  v176 = (__ROR8__(v173, 8) + v174) ^ 0x38C8B16AE7056877;
  v177 = v176 ^ __ROR8__(v174, 61);
  v178 = __ROR8__(v176, 8);
  v179 = __ROR8__(v172, 8) + (v172 ^ __ROR8__(v168, 61));
  v180 = (v178 + v177) ^ 0xE580B17D8CC5E551;
  v181 = v180 ^ __ROR8__(v177, 61);
  v182 = __ROR8__(v180, 8);
  v183 = (((2 * (v182 + v181)) & 0x736F8561515E0E8CLL) - (v182 + v181) - 0x39B7C2B0A8AF0747) ^ 0x27E9C014860501C3;
  v184 = v183 ^ __ROR8__(v181, 61);
  v185 = __ROR8__(v183, 8);
  v186 = (((2 * (v185 + v184)) | 0xC44E2F61E4B80C16) - (v185 + v184) + 0x1DD8E84F0DA3F9F5) ^ 0x38475CBCF1FEB992;
  v187 = v186 ^ __ROR8__(v184, 61);
  v188 = (__ROR8__(v186, 8) + v187) ^ 0xFA35E2CDCB3E31C7;
  v189 = v188 ^ __ROR8__(v187, 61);
  v190 = __ROR8__(v188, 8);
  v191 = ((2 * (v190 + v189)) | 0xC7E2E7106E1D39BALL) - (v190 + v189);
  v192 = *(STACK[0x4B58] + (STACK[0x4A70] & ((v0 ^ 0x93168F5C) - 416962114 + (STACK[0x4E38] & 0x262D1EB0))));
  v193 = (((2 * (v192 + STACK[0x4EB8])) | 0xF55E03C19172B5E0) - (v192 + STACK[0x4EB8]) + 0x550FE1F3746A510) ^ 0x42270034297E39A3;
  v194 = v193 ^ __ROR8__(v192, 61);
  v195 = __ROR8__(v193, 8);
  v196 = (v195 + v194 - ((2 * (v195 + v194)) & 0x9F992DB34BF6D088) - 0x303369265A0497BCLL) ^ 0xF70427B342FE0033;
  v197 = v196 ^ __ROR8__(v194, 61);
  v198 = (__ROR8__(v196, 8) + v197) ^ 0xE580B17D8CC5E551;
  v199 = v198 ^ __ROR8__(v197, 61);
  v200 = (__ROR8__(v198, 8) + v199) ^ 0xE1A1FD5BD155F97ALL;
  v201 = v200 ^ __ROR8__(v199, 61);
  v202 = __ROR8__(v200, 8);
  v203 = __ROR8__((v191 + 0x1C0E8C77C8F16323) ^ 0x31017F6E17EB4F73, 8) + ((v191 + 0x1C0E8C77C8F16323) ^ 0x31017F6E17EB4F73 ^ __ROR8__(v189, 61));
  v204 = *(STACK[0x4B90] + (LODWORD(STACK[0x4AE8]) & ((STACK[0x4DC0] & 0x630C87C8) + (STACK[0x4DC0] | 0x630C87CC) + 389001550)));
  v205 = (((2 * (v202 + v201)) | 0xE2A29D888A3DCF12) - (v202 + v201) + 0xEAEB13BBAE11877) ^ 0x2B3105C846BC5810;
  v206 = v205 ^ __ROR8__(v201, 61);
  v207 = (__ROR8__(v205, 8) + v206) ^ 0xFA35E2CDCB3E31C7;
  v208 = v207 ^ __ROR8__(v206, 61);
  v209 = (__ROR8__(v207, 8) + v208) ^ 0xD2F00CE620E5D3AELL;
  v210 = (((v204 + STACK[0x4DD8]) | 0xAF87D2DAB856690CLL) - ((v204 + STACK[0x4DD8]) | 0x50782D2547A996F3) + 0x50782D2547A996F3) ^ 0x170FD30E59910A5FLL;
  v211 = v210 ^ __ROR8__(v204, 61);
  v212 = __ROR8__(v209, 8) + (v209 ^ __ROR8__(v208, 61));
  v213 = (__ROR8__(v210, 8) + v211) ^ 0x38C8B16AE7056877;
  v214 = v213 ^ __ROR8__(v211, 61);
  v215 = __ROR8__(v213, 8);
  v216 = (((2 * (v215 + v214)) | 0x94D034DEF27F8B4ELL) - (v215 + v214) - 0x4A681A6F793FC5A7) ^ 0xAFE8AB12F5FA20F6;
  v217 = v216 ^ __ROR8__(v214, 61);
  v218 = __ROR8__(v216, 8);
  v219 = (((2 * (v218 + v217)) | 0x1A18D66CB05241CCLL) - (v218 + v217) - 0xD0C6B36582920E6) ^ 0xECAD966D897CD99CLL;
  v220 = v219 ^ __ROR8__(v217, 61);
  v221 = (__ROR8__(v219, 8) + v220) ^ 0xDA604B0C03A2BF99;
  v222 = v221 ^ __ROR8__(v220, 61);
  v223 = (__ROR8__(v221, 8) + v222) ^ 0xFA35E2CDCB3E31C7;
  v224 = v223 ^ __ROR8__(v222, 61);
  v225 = __ROR8__(v223, 8);
  v226 = (((2 * (v225 + v224)) | 0xF01901F6069EF9F2) - (v225 + v224) - 0x780C80FB034F7CF9) ^ 0xAAFC8C1D23AAAF57;
  v227 = __ROR8__(v226, 8) + (v226 ^ __ROR8__(v224, 61));
  v228 = *(STACK[0x4B80] + (LODWORD(STACK[0x4AF8]) & ((STACK[0x4BA8] | 0x128E3C4D) + 2050767130 + (STACK[0x4BA8] | 0xED71C3B3))));
  v229 = (v228 + STACK[0x4B78]) ^ 0xB88801D4E1C76353;
  v230 = v229 ^ __ROR8__(v228, 61);
  v231 = (__ROR8__(v229, 8) + v230) ^ 0x38C8B16AE7056877;
  v232 = v231 ^ __ROR8__(v230, 61);
  v233 = (v227 | 0x48BD4DCFAC968012) - (v227 | 0xB742B23053697FEDLL);
  v234 = (__ROR8__(v231, 8) + v232) ^ 0xE580B17D8CC5E551;
  v235 = v234 ^ __ROR8__(v232, 61);
  v236 = __ROR8__(v234, 8);
  v237 = (((v236 + v235) & 0xA88D91F3C415B59BLL ^ 0x808100F280159511) + ((v236 + v235) & 0x57726E0C3BEA4A64 ^ 0x5402220C11AA0061) - 1) ^ 0x3522DFA540EA6C0BLL;
  v238 = v237 ^ __ROR8__(v235, 61);
  v239 = (__ROR8__(v237, 8) + v238) ^ 0xDA604B0C03A2BF99;
  v240 = v239 ^ __ROR8__(v238, 61);
  v241 = __ROR8__(v239, 8);
  v242 = *(STACK[0x4B10] + (STACK[0x4B08] & ((STACK[0x4B38] ^ 0x4699B590) - 1059725603 + (LODWORD(STACK[0x4AF0]) | 0x72CC94DB) + 4048)));
  v243 = (((2 * (v241 + v240)) | 0x9D43659A64C4385CLL) - (v241 + v240) - 0x4EA1B2CD32621C2ELL) ^ 0xB4945000F95C2DE9;
  v244 = v243 ^ __ROR8__(v240, 61);
  v245 = __ROR8__(v243, 8);
  v246 = (((2 * ((v245 + v244) ^ 0x336D452A389F10BCLL)) & 0xE61B3FB59407EBE0) - ((v245 + v244) ^ 0x336D452A389F10BCLL) - 0x730D9FDACA03F5F1) ^ 0x6D6F29E92D86C91DLL;
  v247 = __ROR8__(v246, 8) + (v246 ^ __ROR8__(v244, 61));
  v248 = (v242 + STACK[0x4B20]) ^ 0xB88801D4E1C76353;
  v249 = v248 ^ __ROR8__(v242, 61);
  v250 = (__ROR8__(v248, 8) + v249) ^ 0x38C8B16AE7056877;
  v251 = v250 ^ __ROR8__(v249, 61);
  v252 = __ROR8__(v250, 8);
  v253 = (((v252 + v251) | 0x4BDBC897A930F07DLL) - ((v252 + v251) | 0xB424376856CF0F82) - 0x4BDBC897A930F07ELL) ^ 0xAE5B79EA25F5152CLL;
  v254 = v253 ^ __ROR8__(v251, 61);
  v255 = __ROR8__(v253, 8);
  v256 = (((2 * (v255 + v254)) | 0xCD4C4552B7B551FCLL) - (v255 + v254) + 0x1959DD56A4255702) ^ 0x707DFF28A8F5184;
  v257 = v256 ^ __ROR8__(v254, 61);
  v258 = (__ROR8__(v256, 8) + v257) ^ 0xDA604B0C03A2BF99;
  v259 = v258 ^ __ROR8__(v257, 61);
  v260 = __ROR8__(v258, 8);
  v261 = (((2 * (v260 + v259)) | 0xED1A13CA749FDF32) - (v260 + v259) + 0x972F61AC5B01067) ^ 0xCB8EB28F171DE5ELL;
  v262 = v261 ^ __ROR8__(v259, 61);
  v263 = (__ROR8__(v261, 8) + v262) ^ 0xD2F00CE620E5D3AELL;
  v264 = v263 ^ __ROR8__(v262, 61);
  v265 = __ROR8__(v263, 8);
  v266 = (v247 | 0x7406E5079AC6E826) - (v247 | 0x8BF91AF8653917D9);
  LODWORD(v247) = (((v265 + v264) ^ 0xF4730B31AE70757BLL) >> STACK[0x4B28]) ^ LODWORD(STACK[0x4B30]);
  LODWORD(v264) = ((v247 ^ 0x5A) + 121) ^ ((v247 ^ 0x7D) + 96) ^ ((v247 ^ 0x27) + 6);
  v267 = *(STACK[0x4A48] + (STACK[0x4858] & ((STACK[0x3450] & 0xFFFFFFF8) + 2050767128)));
  v268 = (((2 * (v267 + STACK[0x3B40])) | 0x54604055820A6938) - (v267 + STACK[0x3B40]) - 0x2A30202AC105349CLL) ^ 0x92B821FE20C257CFLL;
  v269 = v268 ^ __ROR8__(v267, 61);
  v270 = (__ROR8__(v268, 8) + v269) ^ 0x38C8B16AE7056877;
  v271 = v270 ^ __ROR8__(v269, 61);
  v272 = (__ROR8__(v270, 8) + v271) ^ 0xE580B17D8CC5E551;
  v273 = v272 ^ __ROR8__(v271, 61);
  v274 = __ROR8__(v272, 8);
  v275 = (((v274 + v273) | 0x9CED25478AE8A517) - ((v274 + v273) | 0x6312DAB875175AE8) + 0x6312DAB875175AE8) ^ 0x7D4CD81C5BBD5C6DLL;
  v276 = v275 ^ __ROR8__(v273, 61);
  v277 = (__ROR8__(v275, 8) + v276) ^ 0xDA604B0C03A2BF99;
  v278 = v277 ^ __ROR8__(v276, 61);
  v279 = __ROR8__(v277, 8);
  v280 = *(STACK[0x53E0] + (LODWORD(STACK[0x5600]) & ((STACK[0x4E90] ^ 0xEB8B1D) + 2035330557 + (STACK[0x3214] & 0x1D71630))));
  v281 = v280 + STACK[0x4FE0];
  v282 = (((v279 + v278) | 0x70ADAD483297C1D7) - ((v279 + v278) | 0x8F5252B7CD683E28) - 0x70ADAD483297C1D8) ^ 0x8A984F85F9A9F010;
  v283 = v282 ^ __ROR8__(v278, 61);
  v284 = __ROR8__(v282, 8);
  v285 = (v281 - ((2 * v281) & 0xE7671FBF533A0C30) + 0x73B38FDFA99D0618) ^ 0xCB3B8E0B485A654BLL ^ __ROR8__(v280, 61);
  v286 = (__ROR8__((v281 - ((2 * v281) & 0xE7671FBF533A0C30) + 0x73B38FDFA99D0618) ^ 0xCB3B8E0B485A654BLL, 8) + v285) ^ 0x38C8B16AE7056877;
  v287 = v286 ^ __ROR8__(v285, 61);
  v288 = __ROR8__(v286, 8);
  v289 = (((2 * (v288 + v287)) | 0x10604ABCF2ADC806) - (v288 + v287) + 0x77CFDAA186A91BFDLL) ^ 0x6DB09423F5930152;
  v290 = v289 ^ __ROR8__(v287, 61);
  v291 = __ROR8__(v289, 8);
  v292 = (((2 * (v284 + v283)) & 0xD8325F383CAB82A0) - (v284 + v283) - 0x6C192F9C1E55C151) ^ 0x4116DC85C14FED01;
  v293 = (((v291 + v290) | 0xBD96256B064576FALL) - ((v291 + v290) | 0x4269DA94F9BA8905) + 0x4269DA94F9BA8905) ^ 0x5C37D830D7108F80;
  v294 = v293 ^ __ROR8__(v290, 61);
  v295 = __ROR8__(v293, 8);
  LODWORD(v292) = (((__ROR8__(v292, 8) + (v292 ^ __ROR8__(v283, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x3B10]) ^ LODWORD(STACK[0x3B1C]);
  v296 = (((v295 + v294) ^ 0xE1E45562270B46EELL) - ((2 * ((v295 + v294) ^ 0xE1E45562270B46EELL)) & 0x3D969EB009E78D58) - 0x6134B0A7FB0C3954) ^ 0xA54F5136205A3FDBLL;
  v297 = v296 ^ __ROR8__(v294, 61);
  v298 = __ROR8__(v296, 8);
  LODWORD(STACK[0x5230]) = LODWORD(STACK[0x54D0]) - 117;
  LODWORD(STACK[0x4F70]) = LODWORD(STACK[0x5780]) + 64;
  LODWORD(STACK[0x4FF0]) = LODWORD(STACK[0x56F0]) ^ (((v48 + 0x69FC69602F6D9409) ^ 0x9D8F6251811DE172) >> STACK[0x54B0]);
  LODWORD(STACK[0x5460]) = LODWORD(STACK[0x52C8]) ^ ((STACK[0x5740] ^ 0xF4730B31AE70757BLL) >> STACK[0x52C0]);
  LODWORD(STACK[0x54C0]) = LODWORD(STACK[0x5398]) ^ (((STACK[0x5670] - 0x825BFA4E5AFADCALL) ^ 0x3A94B6AB420274DLL) >> STACK[0x5390]);
  LODWORD(STACK[0x4F78]) = LODWORD(STACK[0x52F0]) ^ ((STACK[0x5620] ^ 0xF4730B31AE70757BLL) >> STACK[0x52D0]);
  LODWORD(STACK[0x5620]) = LODWORD(STACK[0x51C0]) ^ (((STACK[0x5560] + 0x43B8DAF3587BBB6ELL) ^ 0x48342E3D09F431E9) >> STACK[0x51B0]);
  LODWORD(STACK[0x5378]) = LODWORD(STACK[0x54E0]) - 80;
  LODWORD(STACK[0x5560]) = LODWORD(STACK[0x50C8]) ^ ((v175 ^ 0xF4730B31AE70757BLL) >> STACK[0x50C0]);
  LODWORD(STACK[0x5600]) = LODWORD(STACK[0x5040]) ^ ((((v179 | 0x5D3C3934CDDCFD88) - (v179 | 0xA2C3C6CB32230277) - 0x5D3C3934CDDCFD89) ^ 0xA94F320563AC88F3) >> STACK[0x5038]);
  LODWORD(STACK[0x5450]) = LODWORD(STACK[0x4F48]) ^ ((v203 ^ 0xF4730B31AE70757BLL) >> STACK[0x4F10]);
  LODWORD(STACK[0x5120]) = LODWORD(STACK[0x4E80]) ^ ((v212 ^ 0xF4730B31AE70757BLL) >> STACK[0x4EC8]);
  LODWORD(STACK[0x5358]) = LODWORD(STACK[0x4B60]) ^ (((v233 - 0x48BD4DCFAC968013) ^ 0xBCCE46FE02E6F569) >> STACK[0x4DD0]);
  LODWORD(STACK[0x5440]) = LODWORD(STACK[0x4B70]) ^ (((v266 - 0x7406E5079AC6E827) ^ 0x8075EE3634B69D5DLL) >> STACK[0x4B68]);
  LODWORD(STACK[0x5248]) = v264 - 30;
  v299 = LODWORD(STACK[0x52A0]);
  LODWORD(STACK[0x4F98]) = (((v292 ^ 0x63) + 88) ^ ((v292 ^ 0x2F) + 28) ^ ((v292 ^ 0x4C) + 121)) + 60;
  v300 = (((2 * (v298 + v297)) | 0x240CD16A69DFD226) - (v298 + v297) - 0x120668B534EFE913) ^ 0xE8338A78FFD1D8D4;
  v301 = v300 ^ __ROR8__(v297, 61);
  v302 = (__ROR8__(v300, 8) + v301) ^ 0xD2F00CE620E5D3AELL;
  v303 = ((__ROR8__(v302, 8) + (v302 ^ __ROR8__(v301, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x53A8];
  v304 = *(STACK[0x54F0] + (STACK[0x5500] & ((STACK[0x52F8] ^ 0x8B226018) + 90085685 + (LODWORD(STACK[0x52B8]) | 0xE9BB3FCB))));
  LODWORD(STACK[0x5310]) = LODWORD(STACK[0x5408]) ^ v303;
  v305 = (v304 + STACK[0x4A60]) ^ 0xB88801D4E1C76353;
  v306 = v305 ^ __ROR8__(v304, 61);
  v307 = (__ROR8__(v305, 8) + v306) ^ 0x38C8B16AE7056877;
  v308 = v307 ^ __ROR8__(v306, 61);
  v309 = (__ROR8__(v307, 8) + v308) ^ 0xE580B17D8CC5E551;
  v310 = v309 ^ __ROR8__(v308, 61);
  v311 = (__ROR8__(v309, 8) + v310) ^ 0xE1A1FD5BD155F97ALL;
  v312 = v311 ^ __ROR8__(v310, 61);
  v313 = (__ROR8__(v311, 8) + v312) ^ 0xDA604B0C03A2BF99;
  v314 = v313 ^ __ROR8__(v312, 61);
  v315 = __ROR8__(v313, 8);
  v316 = (((v315 + v314) | 0x265DED99B9459525) - ((v315 + v314) | 0xD9A2126646BA6ADALL) - 0x265DED99B9459526) ^ 0xDC680F54727BA4E2;
  v317 = v316 ^ __ROR8__(v314, 61);
  v318 = __ROR8__(v316, 8);
  v319 = (((v318 + v317) | 0x22B63220E6107E19) - ((v318 + v317) | 0xDD49CDDF19EF81E6) - 0x22B63220E6107E1ALL) ^ 0xF0463EC6C6F5ADB7;
  LODWORD(STACK[0x5270]) = LODWORD(STACK[0x4AC8]) ^ (((__ROR8__(v319, 8) + (v319 ^ __ROR8__(v317, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x4A68]);
  LODWORD(v155) = STACK[0x3218];
  v320 = 2675 * (LODWORD(STACK[0x3218]) ^ 0x46B0);
  LODWORD(v125) = STACK[0x4878];
  LOBYTE(v319) = (((v125 ^ 0x81) - 122) ^ ((v125 ^ 0xF) + 12) ^ ((v125 ^ 0xB9) - 66)) - 1;
  LODWORD(STACK[0x5780]) = (v320 - 384550032) & 0x16EBF77F;
  LOBYTE(v317) = (((v320 + 112) & 0x7F) - 50) & v319 ^ 0x20;
  LOBYTE(v48) = v319 ^ 0x3C;
  v321 = *(STACK[0x57D8] + 8 * ((13811 * ((((v319 ^ (2 * (v48 & (2 * (v48 & (2 * (v48 & (2 * (v48 & (2 * (v48 & (2 * (v319 & (2 * v317) ^ v317)) ^ v317)) ^ v317)) ^ v317)) ^ v317)) ^ v317))) ^ 0x7B) & (v125 ^ 0xC8) ^ v125 & 0x79) == 183)) ^ v155));
  STACK[0x52F8] = 25;
  LODWORD(STACK[0x52B8]) = 12;
  LODWORD(STACK[0x54F0]) = 188;
  return v321(v299);
}

uint64_t sub_1005A38B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = STACK[0x51B8] + 2329;
  v7 = STACK[0x57D8];
  STACK[0xD2D0] = *(STACK[0x57D8] + 8 * a6);
  return (*(v7 + 8 * (v6 ^ 0x4FAE ^ a6)))();
}

uint64_t sub_1005A38F4@<X0>(unint64_t a1@<X8>)
{
  STACK[0x7E48] = a1;
  LODWORD(STACK[0xA1C0]) = -656685065;
  return (*(STACK[0x57D8] + 8 * (v1 - 16656)))();
}

uint64_t sub_1005A3924()
{
  if (STACK[0x5A88])
  {
    v0 = LODWORD(STACK[0x9C80]) - 1 >= (STACK[0x51B8] ^ 0x5F8A) - 1960;
  }

  else
  {
    v0 = 1;
  }

  v1 = !v0;
  return (*(STACK[0x57D8] + 8 * ((v1 * LODWORD(STACK[0x21A4])) ^ LODWORD(STACK[0x21A8]))))();
}

uint64_t sub_1005A39D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, int8x16_t a10, int8x16_t a11, int8x16_t a12, int8x16_t a13, int8x16_t a14, int8x16_t a15, int64x2_t a16)
{
  v39.i64[0] = v18 + v16;
  v39.i64[1] = v17 + v16;
  v40.i64[0] = a4 + v16;
  v41.i64[0] = a6 + v16;
  v40.i64[1] = a3 + v16;
  v41.i64[1] = a5 + v16;
  v42.i64[0] = v16 + v19 + v22;
  v42.i64[1] = a7 + v16;
  v43 = vandq_s8(v41, v32);
  v44 = vandq_s8(v40, v32);
  v45 = vandq_s8(v39, v32);
  v46 = vandq_s8(v42, v32);
  v47 = vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL);
  v48 = vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL);
  v49 = vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL);
  v50 = vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL);
  v51 = vdupq_n_s64(v26);
  v52 = vaddq_s64(v49, v51);
  v53 = vaddq_s64(v50, v51);
  v54 = vaddq_s64(v48, v51);
  v55 = vaddq_s64(v47, v51);
  v56 = vorrq_s8(v54, v38);
  v57 = vorrq_s8(v54, v35);
  v58 = vdupq_n_s64(v30);
  v59 = vaddq_s64(vsubq_s64(vorrq_s8(v55, v38), vorrq_s8(v55, v35)), v35);
  v60 = vaddq_s64(vsubq_s64(v56, v57), v35);
  v61 = vaddq_s64(vsubq_s64(vorrq_s8(v52, v38), vorrq_s8(v52, v35)), v35);
  v62 = veorq_s8(v60, a11);
  v63 = veorq_s8(v59, a11);
  v64 = veorq_s8(v59, a10);
  v65 = veorq_s8(v60, a10);
  v66 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v65);
  v67 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v64);
  v68 = veorq_s8(v67, a13);
  v69 = veorq_s8(v66, a13);
  v70 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v66, a14), a12), v69), vandq_s8(v69, a14)), v31);
  v71 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v67, a14), a12), v68), vandq_s8(v68, a14)), v31);
  v72 = vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL);
  v73 = veorq_s8(v71, vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL));
  v74 = veorq_s8(v70, v72);
  v75 = vdupq_n_s64(v27);
  v76 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v73), v75);
  v77 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL), v74), v75);
  v78 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL));
  v79 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v80 = vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL);
  v81 = vdupq_n_s64(v24);
  v82 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL), v79);
  v83 = veorq_s8(vaddq_s64(v80, v78), v81);
  v84 = vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL);
  v85 = veorq_s8(v82, v81);
  v86 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL));
  v87 = veorq_s8(v83, v84);
  v88 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v89 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v87);
  v90 = vaddq_s64(v88, v86);
  v91 = veorq_s8(vaddq_s64(vsubq_s64(v90, vandq_s8(vaddq_s64(v90, v90), a15)), a16), v33);
  v92 = veorq_s8(vaddq_s64(vsubq_s64(v89, vandq_s8(vaddq_s64(v89, v89), a15)), a16), v33);
  v93 = vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL);
  v94 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v95 = veorq_s8(v91, v93);
  v96 = vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL);
  v97 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v95);
  v98 = vaddq_s64(v96, v94);
  v99 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v98, v98), v34), v98), v36), v37);
  v100 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v97, v97), v34), v97), v36), v37);
  v101 = vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL);
  v102 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v103 = veorq_s8(v99, v101);
  v104 = vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL);
  v105 = vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL);
  v106 = vdupq_n_s64(v25);
  v107 = veorq_s8(vaddq_s64(v104, v102), v106);
  v108 = vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL);
  v109 = veorq_s8(vaddq_s64(v105, v103), v106);
  v110 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL)));
  v111 = vdupq_n_s64(v23);
  v148.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), veorq_s8(v107, v108)), v111), vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), v58)));
  v148.val[2] = vshlq_u64(veorq_s8(v110, v111), vnegq_s64(vandq_s8(vshlq_n_s64(v40, 3uLL), v58)));
  v112 = veorq_s8(v61, a11);
  v113 = veorq_s8(v61, a10);
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113);
  v115 = veorq_s8(v114, a13);
  v116 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v114, a14), a12), v115), vandq_s8(v115, a14)), v31);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117), v75);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), v81);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121);
  v123 = veorq_s8(vaddq_s64(vsubq_s64(v122, vandq_s8(vaddq_s64(v122, v122), a15)), a16), v33);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124);
  v126 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v125, v125), v34), v125), v36), v37);
  v127 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v128 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v127), v106);
  v129 = vaddq_s64(vsubq_s64(vorrq_s8(v53, v38), vorrq_s8(v53, v35)), v35);
  v148.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL))), v111), vnegq_s64(vandq_s8(vshlq_n_s64(v41, 3uLL), v58)));
  v130 = veorq_s8(v129, a11);
  v131 = veorq_s8(v129, a10);
  v132 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131);
  v133 = veorq_s8(v132, a13);
  v134 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v132, a14), a12), v133), vandq_s8(v133, a14)), v31);
  v135 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v136 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v135), v75);
  v137 = veorq_s8(v136, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v138 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), v137), v81);
  v139 = veorq_s8(v138, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL));
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v139);
  v141 = veorq_s8(vaddq_s64(vsubq_s64(v140, vandq_s8(vaddq_s64(v140, v140), a15)), a16), v33);
  v142 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v143 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v142);
  v144 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v143, v143), v34), v143), v36), v37);
  v145 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v146 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v145), v106);
  v148.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL))), v111), vnegq_s64(vandq_s8(vshlq_n_s64(v42, 3uLL), v58)));
  *(a8 + v16 + v19) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v148, v28[26])), *(v21 + v16 + v19));
  return (*(STACK[0x57D8] + 8 * (((a2 != 0) * v29) ^ v20)))(a1, a2 + 8, a3 - 8, a4 - 8, a5 - 8, a6 - 8, a7 - 8, a8 - 8);
}

uint64_t sub_1005A3F7C(double a1, double a2, __n128 a3)
{
  v17 = *(STACK[0x57D8] + 8 * v3);
  v18 = STACK[0x5780];
  *&STACK[0x55F0] = v7;
  *&STACK[0x5680] = a3;
  *&STACK[0x5620] = v9;
  *&STACK[0x5670] = v10;
  *&STACK[0x5610] = v8;
  *&STACK[0x5640] = v11;
  *&STACK[0x5660] = v12;
  *&STACK[0x5700] = v14;
  *&STACK[0x5630] = v13;
  *&STACK[0x5650] = v15;
  *&STACK[0x5600] = v16;
  *&STACK[0x57B0] = v6;
  *&STACK[0x57A0] = v5;
  *&STACK[0x5770] = v4;
  return v17(v18);
}

uint64_t sub_1005A3FF8@<X0>(int a1@<W8>)
{
  *(v4 + 3292) = v1;
  v6 = a1 ^ v3;
  *(v4 + 3288) = v6;
  v7 = STACK[0x57D8];
  v8 = (*(STACK[0x57D8] + 8 * (v2 ^ 0x9D1)))(32);
  v9 = (v6 - 1882634842);
  *(v4 + 3296) = v9;
  *(v5 + 16 * v9) = v8;
  return (*(v7 + 8 * (((v8 != 0) * ((v2 - 30167) ^ (v2 - 30191))) ^ v2)))();
}

uint64_t sub_1005A4070@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, int a7@<W8>)
{
  v7 = STACK[0xB658] - 0x30BDFED8F32E6575;
  v8 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * (a7 - 16131));
  return (*(v8 + 8 * ((a7 - 16131) ^ 0x170E)))(v7, a1, a2, a3, a4, a5, a6, 3562894612);
}

uint64_t sub_1005A4194()
{
  *(STACK[0x91F0] + 112) |= v0 ^ 0xCC;
  STACK[0x7ED8] -= 32;
  v1 = STACK[0x57D8];
  STACK[0xC8E8] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 + 3980)))();
}

uint64_t sub_1005A41FC()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x3DAA)))(LODWORD(STACK[0x9FDC]) - 2101994637 + (v0 ^ 0x42F0u) + 23813 + 4008);
  STACK[0x88D0] = v2;
  return (*(v1 + 8 * ((88 * (v2 != 0)) ^ v0)))();
}

uint64_t sub_1005A42CC()
{
  v0 = (STACK[0x51B8] - 5966) | 0x1041;
  v1 = STACK[0x51B8] - 19765;
  STACK[0xAC00] = STACK[0x6B40];
  v2 = STACK[0x57D8];
  STACK[0xCF38] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * ((v0 - 14416) ^ v1)))();
}

uint64_t sub_1005A4338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v20 = *(*v18 + ((*v19 & (((v8 + v9) & 0xFFFFFFF8) + ((v13 - 7484) ^ (a8 + 1478)))) & 0xFFFFFFFFFFFFFFF8));
  v21 = v14 + v9 + 20;
  v22 = (v20 + __ROR8__((v8 + v9) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xB88801D4E1C76353;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = __ROR8__(v22, 8);
  v25 = __ROR8__((v10 - ((v24 + v23) | v10) + ((v24 + v23) | 0x500ED0BE1AFE1118)) ^ 0x68C661D4FDFB796FLL, 8);
  v26 = (v10 - ((v24 + v23) | v10) + ((v24 + v23) | 0x500ED0BE1AFE1118)) ^ 0x68C661D4FDFB796FLL ^ __ROR8__(v23, 61);
  v27 = (v12 - ((v25 + v26) | v12) + ((v25 + v26) | 0xF7B63ECAB46D4478)) ^ 0x12368FB738A8A129;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (((v29 + v28) & 0xAE3C2F9DE93146F9 ^ 0xA8242515810104D0) + ((v29 + v28) & 0x51C3D06216CEB906 ^ 0x5003C00212C42807) - 1) ^ 0x1986184C4290D5ACLL;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (v32 + v31 - ((2 * (v32 + v31)) & 0x31A5DD91F946064) - 0x7E72D1137035CFCELL) ^ 0x5BED65E08C688FABLL;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v21 & 0xFFFFFFFFFFFFFFF8, 8);
  v36 = (__ROR8__(v33, 8) + v34) ^ a7;
  v37 = (0x31F49ABE1B6CA29CLL - v35) & 0x204DD28C5D21E440 | (v35 + v15) & 0xDDB22D73A2DE1BBFLL;
  v38 = v37 ^ 0xCDF58C1D791554C4;
  v39 = v36 ^ __ROR8__(v34, 61);
  v37 ^= 0xBDAEA6125D8FBFDELL;
  v40 = __ROR8__(v38, 8);
  v41 = (((2 * (v40 + v37)) & 0x3725702EEECE1AC0) - (v40 + v37) + 0x646D47E88898F29FLL) ^ 0x7B16D57CA577D370;
  v42 = __ROR8__(v41, 8);
  v43 = (__ROR8__(v36, 8) + v39) ^ v17;
  v44 = v41 ^ __ROR8__(v37, 61);
  v45 = (v42 + v44 - ((2 * (v42 + v44)) & 0x96D1B6D4F24C1080) - 0x3497249586D9F7C0) ^ 0xD76A04315CA46BADLL;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = __ROR8__(v43, 8) + (v43 ^ __ROR8__(v39, 61));
  v48 = (__ROR8__(v45, 8) + v46) ^ 0x51FC477E33DE4033;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = __ROR8__(v48, 8);
  v51 = (((2 * (v50 + v49)) | 0xEF79633FC53B3022) - (v50 + v49) - 0x77BCB19FE29D9811) ^ 0x55F0B855A691941ALL;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ v16;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ 0xB2823E14A03C0367;
  *v21 = (((v11 - (v47 | v11) + (v47 | 0xECE472E62B5CACC2)) ^ 0x189779D7852CD9B9) >> (8 * ((v8 + v9) & 7))) ^ (((__ROR8__(v55, 8) + (v55 ^ __ROR8__(v54, 61))) ^ 0x69517CAD07781183) >> (8 * (v21 & 7u))) ^ *(v8 + v9);
  return (*(STACK[0x57D8] + 8 * ((112 * (v9 == 15)) ^ v13)))();
}

uint64_t sub_1005A4740(int a1)
{
  v9 = (v1 + v6 + ((v6 + v5 - ((v6 + v5) >> 16)) >> 8) - ((v6 + v5) >> 16) - a1) ^ 0x52CD2994;
  v10 = v9 + (v9 >> 14) + ((v9 + (v9 >> 14)) >> 5);
  v11 = v10 - 1901450374 + ((v10 - 1901450374) >> 11) - ((v10 - 1901450374 + ((v10 - 1901450374) >> 11)) >> ((v8 + 39) ^ 0x95));
  v12 = v11 ^ v4;
  v13 = v11 + 220331226 - ((v11 + 220331226) >> 12) - ((v11 + 220331226 - ((v11 + 220331226) >> 12)) >> 8);
  v14 = v13 + 1277474580 - ((v13 + 1277474580) >> 8) + ((v13 + 1277474580 - ((v13 + 1277474580) >> 8)) >> 4);
  v15 = v10 ^ v3 ^ v14;
  v16 = v14 - 1673258921 - ((v14 - 1673258921) >> 10) - ((v14 - 1673258921 - ((v14 - 1673258921) >> 10)) >> 6);
  v17 = v16 - 1911106311 - ((v16 - 1911106311) >> 14) - ((v16 - 1911106311 - ((v16 - 1911106311) >> 14)) >> 6);
  v18 = ((((v17 ^ 0xD6CA1380) - ((v17 ^ 0xD6CA1380) >> 9)) >> 3) ^ ((v17 ^ 0xD6CA1380) - ((v17 ^ 0xD6CA1380) >> 9))) + 2 * ((((v17 ^ 0xD6CA1380) - ((v17 ^ 0xD6CA1380) >> 9)) >> 3) & ((v17 ^ 0xD6CA1380) - ((v17 ^ 0xD6CA1380) >> 9)));
  v19 = v18 - 1028100912 + ((v18 - 1028100912) >> 14) - ((v18 - 1028100912 + ((v18 - 1028100912) >> 14)) >> 3);
  v20 = v12 ^ v16 ^ v19;
  v21 = v15 ^ v18;
  v22 = v13 ^ v2 ^ v17 ^ (v19 - 1553481641 - ((v19 - 1553481641) >> 8) - ((v19 - 1553481641 - ((v19 - 1553481641) >> 8)) >> 2));
  v23 = v21 & 0xFE ^ 0x94;
  v24 = v22 & 7 ^ 4;
  v25 = -v24 & 7;
  if ((v22 & 7) == 4)
  {
    v26 = 0;
  }

  else
  {
    v26 = 255;
  }

  v27 = v26 << v25;
  v28 = (v26 << v25) ^ 0xE63C3714;
  if ((v22 & 7) == 4)
  {
    v28 = 432261355;
  }

  LODWORD(STACK[0x5230]) = v28 & 0x2B ^ (v28 ^ 0xEB) & (v21 ^ 0x2B);
  v29 = 16843009 * ((((v20 ^ BYTE1(v20) ^ BYTE2(v20)) ^ 0xCD) + 1344296192 - ((2 * ((v20 ^ BYTE1(v20) ^ BYTE2(v20)) ^ 0xCD)) & 0xFFFFFF0F) + 135) ^ (HIBYTE(v20) | 0x50205500));
  v30 = (16843009 * ((((BYTE1(v21) ^ BYTE2(v21) ^ 0x32) - ((2 * (BYTE1(v21) ^ BYTE2(v21))) & 0x88) - 60) ^ v21) ^ HIBYTE(v21) ^ 0xB8)) ^ v7;
  v31 = v30 ^ v29;
  v32 = STACK[0x51C0];
  LODWORD(STACK[0x5120]) = (LODWORD(STACK[0x51C0]) >> 6) - 1302448541 - ((2 * (LODWORD(STACK[0x51C0]) >> 6)) & 0x4BC6CC6);
  LODWORD(STACK[0x5410]) = v29;
  v33 = v29 ^ (-16843009 * ((((v20 ^ BYTE1(v20) ^ BYTE2(v20)) ^ 0xCD) + 1344296192 - ((2 * ((v20 ^ BYTE1(v20) ^ BYTE2(v20)) ^ 0xCD)) & 0xFFFFFF0F) + 135) ^ (HIBYTE(v20) | 0x50205500))) ^ ((v30 ^ v29) - v30);
  v34 = STACK[0x57B0];
  LODWORD(STACK[0x51F8]) = (-2066919451 * LODWORD(STACK[0x57B0])) ^ LODWORD(STACK[0x5250]) ^ (-2066919451 * v24 - 2127129725 - ((26910666 * v24) & 0x26D2706));
  v35 = STACK[0x53A0];
  v36 = STACK[0x57A0];
  LODWORD(STACK[0x5220]) = 1003880991 * (v25 - LODWORD(STACK[0x57A0]));
  LODWORD(STACK[0x5570]) = ((1973463687 * v31) ^ (1973463687 * v35)) - 1302448541 - ((2 * ((1973463687 * v31) ^ (1973463687 * v35))) & 0x64BC6CC6);
  LODWORD(STACK[0x5118]) = v32 - 828241810 - ((33686018 * LODWORD(STACK[0x55A0])) & 0x9D4410DC);
  LODWORD(STACK[0x5200]) = (-243916951 * v35) ^ LODWORD(STACK[0x5228]);
  LODWORD(STACK[0x5140]) = v25;
  LODWORD(STACK[0x5780]) = 1431122327 * (v36 - v25);
  v37 = -120644859 * *(*(&off_101353600 + (v8 - 4270)) + v24);
  v38 = v35 % 0x101;
  LODWORD(STACK[0x55C0]) = ((LODWORD(STACK[0x55C0]) ^ 0xA954EBC2) + 1454052414) ^ ((LODWORD(STACK[0x55C0]) ^ 0x749F026C) - 1956577900) ^ ((LODWORD(STACK[0x55C0]) ^ 0x35F0BB3D) - 904969021);
  LODWORD(STACK[0x51E0]) = v37 ^ 0xB6C67FE7;
  v39 = *(&off_101353600 + (v8 ^ 0x10BC));
  v40 = *(v39 + 4 * (v31 % 0x101));
  LODWORD(v39) = *(v39 + 4 * v38);
  v41 = *(*(&off_101353600 + (v8 - 3831)) + v34 - 3);
  LODWORD(STACK[0x51D0]) = v41 ^ 0x94C95C4A ^ (4 * v41) & 0x640F4F7C;
  v42 = ((LODWORD(STACK[0x5660]) ^ 0x708CCE25) - 1888276005) ^ ((LODWORD(STACK[0x5660]) ^ 0x729B9B40) - 1922800448) ^ ((LODWORD(STACK[0x5660]) ^ 0xEA2C07F6) + 366213130);
  v43 = ((v40 ^ 0xC3053DE3) + 159593558) ^ ((v40 ^ 0xC1BD20F) - 962733126) ^ ((v40 ^ 0x34088E60) - 24213545);
  v44 = 16843009 * v23;
  v45 = (16843009 * v23) >> 1;
  LODWORD(STACK[0x5250]) = v45;
  v46 = (v21 & 0xFFFFFF01 | (2 * (v45 & 0x7F))) ^ 0xA8D7F200;
  LODWORD(STACK[0x5660]) = v46 - 828241810 - ((2 * v46) & 0x9D4410DC);
  v47 = (v32 & 0xFE | LODWORD(STACK[0x5580])) ^ 0x9B22B500;
  v48 = ((LODWORD(STACK[0x53F0]) ^ 0x5D8E4D2B) - 1569606955) ^ ((LODWORD(STACK[0x53F0]) ^ 0x96B782B) - 158038059) ^ ((LODWORD(STACK[0x53F0]) ^ 0xAEDBB789) + 1361332343);
  LODWORD(STACK[0x5228]) = (v39 ^ 0xC0CF9F8B) - 86355603;
  LODWORD(STACK[0x5100]) = v39 ^ 0xE3E56025;
  LODWORD(STACK[0x50F8]) = (v39 ^ 0xD83C9E22) - 500608826;
  LODWORD(STACK[0x50F0]) = v42 - v43 + 1489505122;
  v49 = STACK[0x5350];
  LODWORD(STACK[0x5158]) = (LODWORD(STACK[0x5350]) % 0x101) ^ 0xF1E8AB52 ^ *(*(&off_101353600 + (v8 ^ 0x1018)) + LODWORD(STACK[0x5350]) % 0x101 - 2);
  v50 = STACK[0x5730];
  LODWORD(STACK[0x50E8]) = v48 + (LODWORD(STACK[0x5730]) ^ 0x9B22B5F8) + 1486349178;
  LODWORD(v39) = v21 ^ 0x9F22A2C2;
  v51 = v21 ^ 0xA5440735;
  v52 = v21 ^ 0x993E29B;
  LODWORD(STACK[0x5208]) = v21 ^ 0xCED3B099;
  v53 = v21 ^ 0xA8D7F294;
  v54 = LODWORD(STACK[0x55F0]) ^ 0x4EA2086E;
  LODWORD(STACK[0x51D8]) = v46;
  LODWORD(STACK[0x5168]) = 2 * (v46 & v54) - v53;
  LODWORD(STACK[0x5170]) = v53 ^ LODWORD(STACK[0x5500]);
  LODWORD(STACK[0x50E0]) = (2120014355 * v53) ^ LODWORD(STACK[0x5590]) ^ (2120014355 * v46 + 1408480323 - ((-54938586 * v46) & 0xA7E76886));
  LODWORD(STACK[0x5500]) = v22 ^ 0xA8D7F294;
  LODWORD(STACK[0x51C8]) = (517371739 * (v22 ^ 0xA8D7F294) + 1408480323 - ((1034743478 * (v22 ^ 0xA8D7F294)) & 0xA7E76886)) ^ LODWORD(STACK[0x5510]);
  LODWORD(STACK[0x5128]) = 30371381 * (v49 - v47);
  LODWORD(STACK[0x5160]) = 991974217 * (v47 - v49);
  v55 = LODWORD(STACK[0x5790]) + 21381689 + (v50 ^ 0x64DD4A07);
  LODWORD(STACK[0x50D0]) = 333342041 * (LODWORD(STACK[0x5750]) - (((v20 ^ 0x58A3D860) + 1302719704) ^ ((v20 ^ 0xC2385F3D) - 683775093) ^ ((v20 ^ 0xA96EC031) - 1133972345)));
  v56 = 16843009 * v27;
  LODWORD(STACK[0x5510]) = v20;
  LODWORD(STACK[0x5590]) = (-620756992 * v27) & v20;
  LODWORD(STACK[0x5580]) = v56;
  LODWORD(STACK[0x5350]) = LODWORD(STACK[0x5230]) ^ v56;
  LODWORD(STACK[0x53F0]) = (-487833902 * v31) & 0xA7E76886;
  LODWORD(STACK[0x5108]) = 1408480323 - 243916951 * v31;
  LODWORD(STACK[0x5110]) = LODWORD(STACK[0x5550]) ^ 0xCEA2086E;
  LODWORD(STACK[0x50D8]) = v22 ^ 0xA8D7F290;
  LODWORD(STACK[0x5148]) = v24;
  LODWORD(STACK[0x5550]) = v24 | (v22 ^ 0xA8D7F290) & 0xFFFFFFF8;
  v57 = (v55 + 2663);
  LODWORD(STACK[0x50C8]) = ((v39 + 2098711923) ^ (v51 + 1198614662) ^ (v52 - 341406420)) - LODWORD(STACK[0x5740]);
  LODWORD(STACK[0x5218]) = v33 + v31;
  LODWORD(STACK[0x5230]) = (v33 + v31) ^ 0x247F7B7;
  v58 = *(STACK[0x57D8] + 8 * v8);
  LODWORD(STACK[0x53A0]) = v44;
  LODWORD(STACK[0x5150]) = -v34;
  return v58(v57);
}

uint64_t sub_1005A5AD8@<X0>(int a1@<W8>)
{
  v1 = 5 * (STACK[0x51B8] ^ 0x5BFB);
  v2 = 1108 * (STACK[0x51B8] ^ 0x5846);
  v3 = STACK[0x51B8] - 13899;
  LODWORD(STACK[0xAA30]) = a1;
  return (*(STACK[0x57D8] + 8 * (((*(STACK[0x8D40] - 0x79CEC8CF5A6FCE52) == 0) * (v2 ^ v1 ^ 0x5737)) ^ v3)))();
}

uint64_t sub_1005A5B54()
{
  v2 = STACK[0x51B8];
  LODWORD(STACK[0x5FF4]) = v1;
  return (*(STACK[0x57D8] + 8 * ((LODWORD(STACK[0x3AC8]) * (v0 & 1)) ^ (v2 - 13158))))();
}

uint64_t sub_1005A5B8C()
{
  v2 = *(STACK[0xE0A8] + 8);
  v3 = (v0 ^ (11307 * (v1 ^ 0x28E9)) ^ 0xEEB7FA6BDFFFD3C9) + ((2 * v0) & 0x1BFFF173ELL) + 0x1148059420007461;
  v4 = STACK[0x3EA8];
  v5 = STACK[0x3EB8];
  v6 = STACK[0x3EB0];
  v7 = ((*(v4 + ((v3 + 1) & 0xF)) ^ *(v2 + v3 + 1) ^ *(((v3 + 1) & 0xF) + v5 + 4) ^ *(((v3 + 1) & 0xF) + v6 + 2) ^ (71 * ((v3 + 1) & 0xF))) << 48) | ((*(v4 + (v3 & 0xF)) ^ *(v2 + v3) ^ *((v3 & 0xF) + v5 + 4) ^ *((v3 & 0xF) + v6 + 2) ^ (71 * (v3 & 0xF))) << 56) | ((*(v2 + v3 + 2) ^ (71 * ((v3 + 2) & 0xF)) ^ *(v4 + ((v3 + 2) & 0xF)) ^ *(((v3 + 2) & 0xF) + v5 + 4) ^ *(((v3 + 2) & 0xF) + v6 + 2)) << 40) | ((*(v2 + v3 + 3) ^ (71 * ((v3 + 3) & 0xF)) ^ *(v4 + ((v3 + 3) & 0xF)) ^ *(((v3 + 3) & 0xF) + v5 + 4) ^ *(((v3 + 3) & 0xF) + v6 + 2)) << 32);
  v8 = v7 & 0xFFFFFFFF0000FFFFLL | ((*(v2 + v3 + 4) ^ (71 * ((v3 + 4) & 0xF)) ^ *(v4 + ((v3 + 4) & 0xF)) ^ *(((v3 + 4) & 0xF) + v5 + 4) ^ *(((v3 + 4) & 0xF) + v6 + 2)) << 24) | ((*(v2 + v3 + 5) ^ (71 * ((v3 + 5) & 0xF)) ^ *(v4 + ((v3 + 5) & 0xF)) ^ *(((v3 + 5) & 0xF) + v5 + 4) ^ *(((v3 + 5) & 0xF) + v6 + 2)) << 16);
  v9 = (((*(v2 + v3 + 6) ^ (71 * ((v3 + 6) & 0xF)) ^ *(STACK[0x3EA8] + ((v3 + 6) & 0xF)) ^ *(((v3 + 6) & 0xF) + STACK[0x3EB8] + 4) ^ *(((v3 + 6) & 0xF) + STACK[0x3EB0] + 2)) << 8) ^ 0x88D38D450F3B34CELL) & (v8 ^ 0xBCDBBF7FDFBBFFDFLL);
  v3 += 7;
  LOBYTE(v2) = *(v2 + v3);
  v10 = v3 & 0xF;
  *STACK[0xE0B0] = (((v2 ^ (71 * v10) ^ *(STACK[0x3EA8] + v10) ^ *(v10 + STACK[0x3EB8] + 4)) ^ *(v10 + STACK[0x3EB0] + 2)) & 0x55 | ((v8 & 0x772C72BAF0C40000 | v9) ^ 0xC8610A0EB2254364) & ((v2 ^ (71 * v10) ^ *(STACK[0x3EA8] + v10) ^ *(v10 + STACK[0x3EB8] + 4)) ^ ~*(v10 + STACK[0x3EB0] + 2) | 0xFFFFFFFFFFFFFF00)) ^ 0xA4B509E6B95E6D0;
  LODWORD(STACK[0x6C24]) += LOWORD(STACK[0xD4E2]) ^ 0xEAC2;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1005A5E90()
{
  v1 = *(STACK[0xB150] - 0x683CBC57EAB92A3ELL);
  STACK[0x8598] = 0;
  LODWORD(STACK[0x7310]) = -769884012;
  STACK[0xC888] = 0;
  return (*(STACK[0x57D8] + 8 * (((v1 != 0x308E083E0C524CBELL) * (v0 - 22105)) ^ (v0 - 9640))))();
}

uint64_t sub_1005A60A4(uint64_t a1, int a2)
{
  STACK[0x7C30] = STACK[0x6D38];
  LOBYTE(STACK[0xA37F]) = 0;
  LODWORD(STACK[0xC354]) = a2 - 2;
  return (*(STACK[0x57D8] + 8 * v2))();
}

uint64_t sub_1005A60EC(uint64_t a1, int a2, uint64_t a3, int a4, int a5)
{
  LODWORD(STACK[0x55F0]) = v7;
  LODWORD(STACK[0x5540]) = v10;
  LODWORD(STACK[0x5128]) = a2;
  v11 = (16 * a2);
  STACK[0x5408] = v11;
  STACK[0x4A88] = v5 + v11;
  LODWORD(STACK[0x56F0]) = v8 ^ 0x5955581F;
  LODWORD(STACK[0x5630]) = v8;
  LODWORD(STACK[0x56E0]) = v8 ^ (v6 - 12438);
  LODWORD(STACK[0x56D0]) = a4 ^ 0x90E501EE;
  LODWORD(STACK[0x5650]) = a4;
  LODWORD(STACK[0x5660]) = a5;
  LODWORD(STACK[0x56C0]) = a5 ^ 0x5E1D8551;
  v12 = *(STACK[0x57D8] + 8 * v6);
  LODWORD(STACK[0x5680]) = a4 & (v9 + 87) ^ 0x146;
  return v12();
}

uint64_t sub_1005A6220()
{
  v0 = STACK[0x51B8];
  STACK[0x92E0] = STACK[0xB0A8];
  v1 = STACK[0x6EB8];
  STACK[0x6640] = STACK[0x6EB8];
  LOBYTE(STACK[0x100F8]) = (*(v1 + 7) - ((2 * *(v1 + 7)) & 0xEC) - 10) ^ 0xF6;
  v2 = *(v1 + 4) >> (((v0 - 54) | 0x80) ^ 0xB0);
  LOBYTE(STACK[0x100F9]) = (v2 - ((2 * v2) & 0xEC) - 10) ^ 0xF6;
  LOBYTE(STACK[0x100FA]) = (*(v1 + 5) - ((2 * *(v1 + 5)) & 0xEC) - 10) ^ 0xF6;
  LOBYTE(STACK[0x100FB]) = (*(v1 + 4) - ((2 * *(v1 + 4)) & 0xEC) - 10) ^ 0xF6;
  LOBYTE(STACK[0x100FC]) = (*(v1 + 3) - ((2 * *(v1 + 3)) & 0xEC) - 10) ^ 0xF6;
  LOBYTE(STACK[0x100FD]) = (*(v1 + 2) - ((2 * *(v1 + 2)) & 0xEC) - 10) ^ 0xF6;
  LOBYTE(STACK[0x100FE]) = (*(v1 + 1) - ((2 * *(v1 + 1)) & 0xEC) - 10) ^ 0xF6;
  LOBYTE(STACK[0x100FF]) = (*v1 - ((2 * *v1) & 0xEC) - 10) ^ 0xF6;
  v3 = *(STACK[0x57D8] + 8 * ((v0 - 20235) ^ 0x1F87));
  STACK[0x65B0] = *(STACK[0x57D8] + 8 * (v0 - 20235));
  return v3();
}

uint64_t sub_1005A6374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  v19 = *v14 & 0xFFFFFFF8;
  v20 = *(*v17 + (v19 & (v11 + ((2 * ((v4 + a1) & 0xFFFFFFF8)) | 0x847C6F5D) + (v5 ^ (v4 + a1) & 0xFFFFFFF8 ^ 0xBDC1D3DB) + 828)));
  v21 = (v20 + __ROR8__((v4 + a1) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xB88801D4E1C76353;
  v22 = __ROR8__(v21, 8);
  v23 = v21 ^ __ROR8__(v20, 61);
  v24 = (v22 + v23) ^ 0x38C8B16AE7056877;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0xE580B17D8CC5E551;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = __ROR8__(((v18 & (2 * (v28 + v27))) - (v28 + v27) + 0x3E265183979B6F9DLL) ^ 0xDF87ACD846CE96E7, 8);
  v30 = ((v18 & (2 * (v28 + v27))) - (v28 + v27) + 0x3E265183979B6F9DLL) ^ 0xDF87ACD846CE96E7 ^ __ROR8__(v27, 61);
  v31 = (((2 * (v29 + v30)) | 0xAA051F675AFBB990) - (v29 + v30) + v15) ^ 0x8F62C4BFAEDF6351;
  v32 = *(*v17 + (v19 & (((v7 + a1) & 0xFFFFFFF8 & v13) + ((v7 + a1) & 0xFFFFFFF8 | v13) + 543046540)));
  v33 = __ROR8__((v7 + a1) & 0xFFFFFFFFFFFFFFF8, 8);
  v34 = __ROR8__(v31, 8);
  v35 = v31 ^ __ROR8__(v30, 61);
  v36 = (((2 * (v32 + v33)) | 0xE525BBB8E4DAA064) - (v32 + v33) - 0x7292DDDC726D5032) ^ 0xDF70A4A0EE8DB1EFLL;
  v37 = v36 ^ __ROR8__(v32, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (v34 + v35) ^ 0xFA35E2CDCB3E31C7;
  v40 = (((2 * (v38 + v37)) & 0xC23E10B909D6A292) - (v38 + v37) + 0x1EE0F7A37B14AEB6) ^ 0x17158F1C55F491B6;
  v41 = v40 ^ __ROR8__(v37, 61);
  v42 = v39 ^ __ROR8__(v35, 61);
  v43 = (__ROR8__(v40, 8) + v41) ^ 0xB8F79A8BFDABDE30;
  v44 = __ROR8__(v39, 8);
  v45 = v43 ^ __ROR8__(v41, 61);
  v46 = __ROR8__(v43, 8);
  v47 = (v16 - ((v46 + v45) | v16) + ((v46 + v45) | 0x447A71ADF00370EDLL)) ^ 0x6A2853196D6B093CLL;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0xF1AD040F639B7ED3;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0xC158605A13FFA118;
  v52 = __ROR8__(v51, 8);
  v53 = v51 ^ __ROR8__(v50, 61);
  v54 = *(*v17 + ((((a2 & 0xFFFFFFF8) + 1385909346) & *v14) & 0xFFFFFFFFFFFFFFF8));
  v55 = (v54 + __ROR8__(a2 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0x55FC21F476016AFALL;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = __ROR8__(v55, 8);
  v58 = ((__ROR8__((v52 + v53) ^ 0x4267924AAAF3CDACLL, 8) + ((v52 + v53) ^ 0x4267924AAAF3CDACLL ^ __ROR8__(v53, 61))) ^ 0xBF8CA48E12B6B115) >> (v10 & 0x38);
  v59 = (v44 + v42 - ((2 * (v44 + v42)) & 0xF3146A057DEED0EELL) + 0x798A3502BEF76877) ^ 0xAB7A39E49E12BBD9;
  v60 = v59 ^ __ROR8__(v42, 61);
  v61 = (v3 - ((v57 + v56) | v3) + ((v57 + v56) | 0x9E970FE2FD908F32)) ^ 0x4EFFB9D7E2A9233CLL;
  v62 = v61 ^ __ROR8__(v56, 61);
  v63 = __ROR8__(v59, 8);
  v64 = (__ROR8__(v61, 8) + v62) ^ 0x2FAD8E464C25BF7ELL;
  v65 = v64 ^ __ROR8__(v62, 61);
  v66 = (__ROR8__(v64, 8) + v65) ^ 0x453604B45BF653AELL;
  v67 = v66 ^ __ROR8__(v65, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ 0x8DDE7A883D83B227;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = __ROR8__(v68, 8);
  v71 = (v70 + v69 - ((2 * (v70 + v69)) & 0x59AB2113D92A348ELL) + 0x2CD59089EC951A47) ^ 0xA1A4AC2F68ED6829;
  v72 = v71 ^ __ROR8__(v69, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ 0x8BDD5ABB48234B20;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = __ROR8__(v73, 8);
  *(v6 + a1) = *(v7 + a1) ^ *(v4 + a1) ^ v58 ^ (((v12 - ((v75 + v74) | v12) + ((v75 + v74) | 0x11BA305A51DAF9BELL)) ^ 0xAFED4AFAC74F8B44) >> (v8 & 0x38)) ^ (((((2 * (v63 + v60)) & 0xA4A7AEF0B54C91E6) - (v63 + v60) - 0x5253D7785AA648F4) ^ 0x59DF23B60B29C277) >> (v9 & 0x38));
  return (*(STACK[0x57D8] + 8 * ((30 * (a1 == 15)) ^ a3)))(a1 + 1, a2 + 1);
}

uint64_t sub_1005A68D4@<X0>(int a1@<W8>)
{
  if (STACK[0x5898])
  {
    v1 = LODWORD(STACK[0x6A04]) == ((a1 - 9176) ^ 0x60B8) - 769897673;
  }

  else
  {
    v1 = 1;
  }

  v2 = v1;
  return (*(STACK[0x57D8] + 8 * ((105 * v2) ^ a1)))();
}

uint64_t sub_1005A692C@<X0>(unsigned int a1@<W8>)
{
  v1 = STACK[0x4D10];
  v2 = (*(STACK[0x4D10] + 8) + (LODWORD(STACK[0x89EC]) << 7));
  STACK[0x8180] = v2;
  v3 = STACK[0x9578];
  *v2 = *STACK[0x9308];
  v2[1] = v3;
  v2[4] = 0;
  v2[5] = 0;
  ++*(v1 + 4);
  return (*(STACK[0x57D8] + 8 * ((32371 * (a1 < 0x519F5F30)) ^ (a1 + 1793648124))))();
}

uint64_t sub_1005A6ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = STACK[0xABF8];
  LODWORD(STACK[0xA24C]) = 1658624867;
  v9 = STACK[0x65F8];
  *(v8 + 184) = STACK[0x65F8];
  *(v8 + 192) = 16;
  v10 = STACK[0x7EE8];
  *(v8 + 200) = STACK[0x7EE8];
  *(v8 + 208) = 16;
  *(v8 + 216) = v6;
  *(v8 + 224) = 41;
  *(v8 + 232) = a6;
  *(v8 + 240) = 37;
  v11 = STACK[0x5CA8];
  v12 = STACK[0x7ED8];
  v13 = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x55B0] = (v13 + 48);
  STACK[0x5620] = (v13 + 320);
  *(v8 + 248) = v11;
  *(v8 + 256) = 16;
  STACK[0x5670] = (v13 + 592);
  STACK[0x56F0] = (v13 + 864);
  STACK[0x5610] = (v13 + 1408);
  STACK[0xCEA8] = v13;
  STACK[0x5780] = (v13 + 2736);
  STACK[0x5660] = (v13 + 3008);
  STACK[0x5680] = (v13 + 3280);
  STACK[0x5650] = (v13 + 3552);
  STACK[0x56C0] = (v13 + 4096);
  STACK[0x5600] = (v13 + 4368);
  STACK[0x55F0] = (v13 + 4640);
  STACK[0x55A0] = (v13 + 5968);
  STACK[0x55C0] = (v13 + 6240);
  STACK[0x7ED8] = (v7 - 17861) + v12 + 6644 * (v7 ^ 0x45C4u) - 1737;
  if (v11)
  {
    v14 = v9 == 0;
  }

  else
  {
    v14 = 1;
  }

  STACK[0x55E0] = v10;
  v16 = !v14 && v10 != 0;
  STACK[0x5730] = (v13 + 10496);
  v17 = *(STACK[0x57D8] + 8 * ((28 * v16) ^ v7));
  STACK[0x56D0] = (v13 + 10768);
  STACK[0x53F8] = v13;
  STACK[0x5640] = (v13 + 11216);
  STACK[0x5760] = 185;
  STACK[0x5750] = 215;
  return v17(14862, 24094, 2610, 2043, 4294954045);
}

uint64_t sub_1005A6CA8@<X0>(__int16 a1@<W8>)
{
  v1 = STACK[0x51B8];
  LOWORD(STACK[0xD9E8]) = a1;
  return (*(STACK[0x57D8] + 8 * (v1 - 17527)))();
}

uint64_t sub_1005A6E10@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v2 = STACK[0x5F00];
  STACK[0x9098] = STACK[0x5F00];
  STACK[0x7010] = STACK[0x61D0];
  STACK[0x7ED0] = v2;
  STACK[0xC880] = 0xAC7FA9961989524CLL;
  LODWORD(STACK[0xCD80]) = 138273836;
  return (*(STACK[0x57D8] + 8 * a2))(a1, 272629776, 410912332, 1543499262, 2265206393, 3965507692, 4221484704, 0x1B3EC18598D49E09);
}

uint64_t sub_1005A6ED4()
{
  v0 = STACK[0x51B8] - 5049;
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))();
  STACK[0x98B8] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1005A6F10()
{
  v1 = v0 + 5804;
  v2 = v0 - 16642;
  v3 = v0 + 9192;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * v3))(3300);
  *STACK[0x41A0] = v5;
  return (*(v4 + 8 * (((v5 != 0) * (v1 ^ 0x6FF5)) ^ v2)))();
}

uint64_t sub_1005A6F90()
{
  STACK[0x78C8] = v0;
  LODWORD(STACK[0x5F24]) = *(v3 - 0x2369327399A66D6DLL);
  v4 = v3 != 0x2369327399A66D95 && v0 != 0x1883660EE8144416;
  if (v4)
  {
    v5 = -143113071;
  }

  else
  {
    v5 = -143155722;
  }

  LODWORD(STACK[0x7220]) = v5;
  LOBYTE(STACK[0xC497]) = v4;
  LODWORD(STACK[0xC2A8]) = (((v2 + 2101965932) ^ 0x7BB6784D) + 2128310091) ^ (v2 + 2101965932) ^ (((v2 + 2101965932) ^ 0x37249C3B) + 843680573) ^ (((v2 + 2101965932) ^ 0xD9FF9379) - 594377601) ^ (((v2 + 2101965932) ^ (v1 + 325970133) & 0xEC91F87E ^ 0x6FFFC7A1) + 1787988209) ^ 0x288E686C;
  LODWORD(STACK[0xBA0C]) = ((((v2 + 2101965947) ^ 0x51B1FC10) + 1423764248) ^ (v2 + 2101965947) ^ (((v2 + 2101965947) ^ 0x8107F588) - 2073369968) ^ (((v2 + 2101965947) ^ 0xDD9B3695) - 654958189) ^ (((v2 + 2101965947) ^ 0xF7BFD7F5) - 221069069)) & 0xFFFFFFF0 ^ 0x288E6864;
  return (*(STACK[0x57D8] + 8 * (v1 ^ v4)))();
}

uint64_t sub_1005A7164()
{
  v3 = STACK[0x99E8];
  STACK[0x1D4D0] = v1;
  LODWORD(STACK[0x1D4C4]) = v0 - 16169987 * ((((2 * ((v2 - 240) ^ 0xBFB4408A)) | 0xAD8A2082) - ((v2 - 240) ^ 0xBFB4408A) - 1455755329) ^ 0xBCFF65E3) + 12727;
  STACK[0x1D4C8] = v3;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x4F08)))(v2 - 240);
  return (*(v4 + 8 * (((LODWORD(STACK[0x1D4C0]) == 2987 * (v0 ^ 0x3397) - 143119045) * (29 * (v0 ^ 0x335B) + 16321)) ^ v0)))(v5);
}

uint64_t sub_1005A72D4()
{
  v3 = v1 - 983375664 < v0 - 1087055363;
  if (v1 > 0x3A9D1F2F != v0 - 1087055363 < (((v2 - 7717) | 0x500) ^ 0xC562DFE1))
  {
    v3 = v0 - 1087055363 < (((v2 - 7717) | 0x500) ^ 0xC562DFE1);
  }

  return (*(STACK[0x57D8] + 8 * ((9253 * v3) ^ (v2 - 15066))))();
}

uint64_t sub_1005A7534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = LODWORD(STACK[0x5158]) ^ LODWORD(STACK[0x5150]);
  v7 = STACK[0x51D0];
  v8 = LODWORD(STACK[0x51D8]) ^ LODWORD(STACK[0x51D0]) ^ LODWORD(STACK[0x5180]) ^ LODWORD(STACK[0x5790]) ^ 0x81AFACFF;
  v9 = LODWORD(STACK[0x5208]) ^ LODWORD(STACK[0x5220]) ^ LODWORD(STACK[0x57A0]) ^ 0xE0AC6DAD;
  v10 = STACK[0x5780];
  if (STACK[0x5780])
  {
    v11 = STACK[0x5238];
  }

  else
  {
    v11 = STACK[0x5240];
  }

  if (v10)
  {
    v12 = STACK[0x5250];
  }

  else
  {
    v12 = STACK[0x5260];
  }

  if (v10)
  {
    v13 = STACK[0x5280];
  }

  else
  {
    v13 = STACK[0x5288];
  }

  v14 = STACK[0x5270];
  if (v10)
  {
    v15 = LODWORD(STACK[0x51D8]) ^ LODWORD(STACK[0x51D0]) ^ LODWORD(STACK[0x5180]) ^ LODWORD(STACK[0x5790]) ^ 0x81AFACFF;
  }

  else
  {
    v14 = STACK[0x5290];
    v15 = STACK[0x5248];
  }

  if (v10)
  {
    v8 = LODWORD(STACK[0x5208]) ^ LODWORD(STACK[0x5220]) ^ LODWORD(STACK[0x57A0]) ^ 0xE0AC6DAD;
    v9 = STACK[0x5230];
  }

  v16 = (STACK[0x5780] & 2) == 0;
  v17 = STACK[0x5550];
  if ((STACK[0x5780] & 2) == 0)
  {
    v17 = STACK[0x54C0];
  }

  LODWORD(STACK[0x5130]) = v17;
  v18 = STACK[0x54A0];
  if (!v16)
  {
    v18 = STACK[0x5480];
  }

  LODWORD(STACK[0x5100]) = v18;
  v19 = STACK[0x5408];
  if (v16)
  {
    v19 = STACK[0x5400];
  }

  LODWORD(STACK[0x5408]) = v19;
  v20 = STACK[0x5460];
  if (v16)
  {
    v20 = STACK[0x5450];
  }

  LODWORD(STACK[0x5480]) = v20;
  v21 = STACK[0x5440];
  if (!v16)
  {
    v21 = STACK[0x5430];
  }

  LODWORD(STACK[0x5460]) = v21;
  v22 = STACK[0x5420];
  if (!v16)
  {
    v22 = STACK[0x5410];
  }

  LODWORD(STACK[0x5550]) = v22;
  LODWORD(STACK[0x57C0]) = v11;
  LODWORD(STACK[0x54A0]) = v12;
  if (v16)
  {
    v23 = v12;
  }

  else
  {
    v23 = v11;
  }

  LODWORD(STACK[0x5440]) = v23;
  LODWORD(STACK[0x5430]) = v13;
  LODWORD(STACK[0x5420]) = v14;
  if (v16)
  {
    v24 = v14;
  }

  else
  {
    v24 = v13;
  }

  LODWORD(STACK[0x5108]) = v24;
  v25 = STACK[0x5640];
  LODWORD(STACK[0x5450]) = v8;
  if (!v16)
  {
    v25 = v8;
  }

  LODWORD(STACK[0x5230]) = v25;
  LODWORD(STACK[0x5790]) = v15;
  LODWORD(STACK[0x5250]) = v9;
  if (v16)
  {
    v26 = v15;
  }

  else
  {
    v26 = v9;
  }

  LODWORD(STACK[0x5290]) = v26;
  v27 = LODWORD(STACK[0x53C0]) == LODWORD(STACK[0x53B8]);
  if (LODWORD(STACK[0x53C0]) == LODWORD(STACK[0x53B8]))
  {
    v28 = STACK[0x50E0];
  }

  else
  {
    v28 = STACK[0x5148];
  }

  v29 = LODWORD(STACK[0x5178]) ^ v7 ^ 0xA1DF1AED;
  if (LODWORD(STACK[0x53C0]) == LODWORD(STACK[0x53B8]))
  {
    v30 = STACK[0x5140];
  }

  else
  {
    v30 = LODWORD(STACK[0x5178]) ^ v7 ^ 0xA1DF1AED;
  }

  if (LODWORD(STACK[0x53C0]) == LODWORD(STACK[0x53B8]))
  {
    v31 = LODWORD(STACK[0x5168]) ^ v7 ^ 0x4685EF18;
  }

  else
  {
    v29 = LODWORD(STACK[0x5168]) ^ v7 ^ 0x4685EF18;
    v31 = STACK[0x5128];
  }

  v32 = STACK[0x5120];
  if (LODWORD(STACK[0x53C0]) != LODWORD(STACK[0x53B8]))
  {
    v32 = STACK[0x5118];
  }

  LODWORD(STACK[0x54C0]) = v32;
  v33 = LODWORD(STACK[0x5160]) ^ LODWORD(STACK[0x51E0]) ^ 0xB77E677F;
  if (v27)
  {
    v34 = v5;
  }

  else
  {
    v34 = STACK[0x5110];
  }

  if (v27)
  {
    v35 = LODWORD(STACK[0x5160]) ^ LODWORD(STACK[0x51E0]) ^ 0xB77E677F;
  }

  else
  {
    v35 = v5;
  }

  if (v27)
  {
    v33 = STACK[0x50F8];
  }

  v36 = (STACK[0x57B0] & 2) == 0;
  v37 = STACK[0x52F0];
  if ((STACK[0x57B0] & 2) == 0)
  {
    v37 = STACK[0x52E8];
  }

  LODWORD(STACK[0x5238]) = v37;
  if (v36)
  {
    v38 = v33;
  }

  else
  {
    v38 = v34;
  }

  LODWORD(STACK[0x5280]) = v38;
  if (v36)
  {
    v39 = v34;
  }

  else
  {
    v39 = v33;
  }

  LODWORD(STACK[0x52E8]) = v39;
  v40 = STACK[0x50F0];
  if (!v36)
  {
    v40 = STACK[0x50E8];
  }

  LODWORD(STACK[0x52F0]) = v40;
  v41 = STACK[0x56E0];
  v42 = (LODWORD(STACK[0x56E0]) ^ 0x6BC767B8) + 1201902716;
  LODWORD(STACK[0x57A0]) = v6 ^ 0x9AD2108A;
  v43 = STACK[0x5378];
  LODWORD(STACK[0x5208]) = v28;
  if (v36)
  {
    v43 = v28;
  }

  LODWORD(STACK[0x5240]) = v43;
  v44 = STACK[0x52F8];
  LODWORD(STACK[0x5168]) = v29;
  if (!v36)
  {
    v44 = v29;
  }

  LODWORD(STACK[0x5270]) = v44;
  LODWORD(STACK[0x5410]) = v30;
  LODWORD(STACK[0x5400]) = v31;
  if (v36)
  {
    v45 = v31;
  }

  else
  {
    v45 = v30;
  }

  LODWORD(STACK[0x5260]) = v45;
  v46 = STACK[0x53C8];
  LODWORD(STACK[0x5178]) = v35;
  if (!v36)
  {
    v46 = v35;
  }

  LODWORD(STACK[0x5288]) = v46;
  return (*(STACK[0x57D8] + 8 * a5))((((v41 ^ 0x15FD21F4) + 966382136) ^ ((v41 ^ 0x7CF50EF1) + 1351744819) ^ v42) + 1720848072, a2, 0xD4B616D0B48F5A0);
}

uint64_t sub_1005A7B2C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, unsigned int a8)
{
  LODWORD(STACK[0x57C0]) = a4;
  v10 = (a4 + 1837458884) & 0x927A3F09;
  LODWORD(STACK[0x4DC8]) = v10;
  v11 = a6 ^ (v10 - 1785509926);
  STACK[0x53B0] = v11;
  v12 = STACK[0xD288] + v11;
  v13 = 2 * (v12 - 0xB3F8D9D5C1C608DLL);
  v14 = v12 - 0xB3F8D9D5C1C608DLL - (v13 & 0x59D59E72EBB9B31ALL) - 0x531530C68A232673;
  LODWORD(v13) = ((((v12 - 1545363597 - (v13 & 0xEBB9B31A) + 1977407885) & 0xFFFFFFF8 ^ 0xA2E66BBA) + 1876735376) ^ (((v12 - 1545363597 - (v13 & 0xEBB9B31A) + 1977407885) & 0xFFFFFFF8 ^ 0x47AE2B67) - 1969949357) ^ (((v12 - 1545363597 - (v13 & 0xEBB9B31A) + 1977407885) & 0xFFFFFFF8 ^ 0x90949955) + 1571702625)) + 354462193;
  v15 = v13 ^ ((v13 ^ 0xA614F21D) + 1621584285) ^ ((v13 ^ 0xA967447) - 869929017) ^ ((v13 ^ 0xEA215DDB) + 747816539) ^ ((v13 ^ 0x7FEFBFFF) - 1185143681) ^ 0x9882D450;
  LODWORD(v13) = *STACK[0x51E8];
  *(&v16 + 1) = v14 & 0xFFFFFFFFFFFFFFF8;
  *&v16 = v14;
  v17 = *STACK[0x51F0];
  v18 = *(v17 + (v13 & v15 & 0xFFFFFFF8 ^ v13 & 0xA1CEB028));
  v19 = (v18 + ((((v16 >> 8) ^ 0xD478DB55E480597DLL) - 0x406A61CB8D1DA676) ^ (((v16 >> 8) ^ 0xFA77A2ED885372DDLL) - 0x6E651873E1CE8DD6) ^ (((v16 >> 8) ^ 0xA6A3937755A6F779) - 0x32B129E93C3B0872)) + 0x1CBE505150E823D2) ^ 0x2CA497D373223849;
  *&v16 = __ROR8__(v18, 61);
  v20 = v19 ^ (v16 - ((2 * v16) & 0x8F556929161CEC1ELL) + 0x47AAB4948B0E760FLL);
  *&v16 = __ROR8__(v19, 8);
  v21 = (((v16 ^ 0x499FA42C8158693BLL) + 0xD06FD78A1B01668) ^ ((v16 ^ 0x44E8E139C072107DLL) + 0x71B86DE09A6F22) ^ ((v16 ^ 0x16E332963AC3B215) + 0x527A6BC21A2BCD4ALL)) + 0x74D0091807C37104 + (((v20 ^ 0xDF31C56427C035B0) + 0x20CE3A9BD83FCA50) ^ ((v20 ^ 0xF4ED516897E78BFBLL) + 0xB12AE9768187405) ^ ((v20 ^ 0xF801A3E3D2E29B5FLL) + 0x7FE5C1C2D1D64A1));
  v22 = v21 ^ __ROR8__(v20, 61);
  *&v16 = __ROR8__(v21 ^ 0x67B8DF542BFA061BLL, 8);
  v23 = v22 ^ 0x921DABE04F22184ELL;
  v24 = (((v22 ^ 0x838B078ACF312364) - 0x1196AC6A80133B2ALL) ^ ((v22 ^ 0xFE01E46CF6533C7FLL) - 0x6C1C4F8CB9712431) ^ ((v22 ^ 0xD6CBBFB997FB17FFLL) - 0x44D61459D8D90FB1)) - 0x54A96535CD85DB94 + (((v16 ^ 0xE73D7669BD706B1CLL) + 0x30693AA062A3CD08) ^ ((v16 ^ 0x14C03DA43A3D6C32) - 0x3C6B8E921A1135D6) ^ ((v16 ^ 0xAAAF5BF1F7DE4D08) + 0x7DFB1738280DEB14));
  v25 = __ROR8__(v24 ^ 0xEF1723FFC0EC5188, 8);
  v26 = v24 ^ __ROR8__(v23, 61);
  v27 = v26 ^ 0x6A75ED57F1442088;
  v28 = (((v26 ^ 0xA4A3AE21984E9BA1) + 0x3129BC8996F544D7) ^ ((v26 ^ 0x6C77D0FE7E864E47) - 0x6023DA98FC26ECFLL) ^ ((v26 ^ 0xA2E8C96E37B1491BLL) + 0x3762DBC6390A966DLL)) - 0x1B32F3EAD56A08AALL + (((v25 ^ 0x3E5324EDC1BFBD49) + 0x160A61485043520) ^ ((v25 ^ 0xF49CA70955C24EFLL) + 0x307A4889D1E7ACBALL) ^ ((v25 ^ 0x155522B4E5FFD4EELL) + 0x2A66A04DA1445CB9));
  v29 = v28 ^ __ROR8__(v27, 61);
  *&v16 = __ROR8__(v28 ^ 0x96501E23BCC4DA0ALL, 8);
  v30 = (((v29 ^ 0x75CAB1FE61F000EDLL) - 0x3CBD2AA83299D2A1) ^ ((v29 ^ 0x564680D39A248CE9) - 0x1F311B85C94D5EA5) ^ ((v29 ^ 0x7AF61208588B9B0CLL) - 0x3381895E0BE24940)) + 0x30B3D814982129EALL + (((v16 ^ 0xDF43AFB2FD037B07) - 0x5528D0F86DF7698FLL) ^ ((v16 ^ 0xD1F9C3FD2C6C203FLL) - 0x5B92BCB7BC9832B7) ^ ((v16 ^ 0xA4770CA5E6712D16) - 0x2E1C73EF76853F9ELL));
  *&v16 = __ROR8__(v29 ^ 0x49779B565369D24CLL, 61);
  v31 = v30 ^ v16 ^ 0xC3930C6582D293DFLL;
  v32 = ((((v30 >> 8) ^ 0x5FEC39B665D2CD72) - 0x7577E03DF3AD23D6) ^ (((v30 >> 8) ^ 0x64C842CDF2DBC8E4) - 0x4E539B4664A42640) ^ (((v30 >> 8) ^ 0x3BDD72078918689DLL) - 0x1146AB8C1F678639)) + ((((v30 << 56) ^ 0x75C5CD92BAAC8DD6) - 0x4490EA2BDE1DE6B0) ^ (((v30 << 56) ^ 0xE917A1D9613F9397) + 0x27BD799FFA71070FLL) ^ (((v30 << 56) ^ 0x44D26C4BDB931E41) - 0x75874BF2BF227527)) + (((v30 ^ v16 ^ 0xCAED10097C26B1A4) - 0x97E1C6CFEF4227BLL) ^ ((v30 ^ v16 ^ 0x53467B85A660CCFDLL) + 0x6F2A881FDB4DA0DELL) ^ ((v30 ^ v16 ^ 0xE0CFD40D4A9D5CA1) - 0x235CD868C84FCF7ELL)) - 0x3150536B00D65EC4;
  v33 = __ROR8__(v32 ^ 0x1B61EA0A471A5845, 8);
  v34 = v32 ^ __ROR8__(v31, 61);
  v35 = (v33 ^ 0xB59E9EF2FFDEFE5FLL) + ((2 * v33) & 0x6B3D3DE5FFBDFCBELL) + (((v34 ^ 0x6B9210D5D877F75ALL) + 0x3DA4B63FAA8F9F14) ^ ((v34 ^ 0xA2E70F9DFBB36CD5) - 0xB2E568876B4FB63) ^ ((v34 ^ 0x5A96A62F49352F7) + 0x539FCC88866B3ABFLL)) - 0x508972B3A58E9F91;
  v36 = v35 ^ __ROR8__(v34, 61) ^ 0x23D9ED11C38A43A0;
  *&v16 = __ROR8__(v35 ^ 0x453A444779340866, 8);
  v37 = v12 - 0xB3F8D9D5C1C6085 - ((2 * (v12 - 0xB3F8D9D5C1C6085)) & 0x4ABC72872992F2D4) - 0x5AA1C6BC6B368696;
  LOBYTE(v31) = (8 * (v12 + 115 - ((2 * (v12 + 115)) & 2)) + 40) & 0x38;
  v38 = v31 ^ 0x28;
  v39 = (((v16 + v36) ^ 0xBA0A5B6047D5AC04) >> (v31 ^ 0x28u)) - ((2 * (((v16 + v36) ^ 0xBA0A5B6047D5AC04) >> (v31 ^ 0x28u))) & 0x5D5634464DB103C6);
  v40 = (((v37 & 0xFFFFFFF8 ^ 0x8CC333AC) + 50795097) ^ ((v37 & 0xFFFFFFF8 ^ 0xCF9BCF7E) + 1080028811) ^ ((v37 & 0xFFFFFFF8 ^ 0xD79185BA) + 1482007631)) - 2145048606;
  v41 = (v40 ^ 0xF107AEA8) & (2 * (v40 & 0xF987CCB2)) ^ v40 & 0xF987CCB2;
  v42 = ((2 * (v40 ^ 0x700EA6A8)) ^ 0x1312D434) & (v40 ^ 0x700EA6A8) ^ (2 * (v40 ^ 0x700EA6A8)) & 0x89896A1A;
  v43 = (v42 ^ 0x804812) & (4 * v41) ^ v41;
  v44 = ((4 * (v42 ^ 0x88892A0A)) ^ 0x2625A868) & (v42 ^ 0x88892A0A) ^ (4 * (v42 ^ 0x88892A0A)) & 0x89896A18;
  v45 = (v44 ^ 0x12812) & (16 * v43) ^ v43;
  v46 = ((16 * (v44 ^ 0x89884212)) ^ 0x9896A1A0) & (v44 ^ 0x89884212) ^ (16 * (v44 ^ 0x89884212)) & 0x89896A10;
  v47 = v45 ^ 0x89896A1A ^ (v46 ^ 0x88802000) & (v45 << 8);
  *(&v16 + 1) = v37 & 0xFFFFFFFFFFFFFFF8;
  *&v16 = v37;
  LODWORD(v13) = v13 & 0xFFFFFFF8;
  v48 = *(v17 + (v13 & (v40 ^ (2 * ((v47 << 16) & 0x9890000 ^ v47 ^ ((v47 << 16) ^ 0x6A1A0000) & (((v46 ^ 0x1094A1A) << 8) & 0x9890000 ^ 0x810000 ^ (((v46 ^ 0x1094A1A) << 8) ^ 0x896A0000) & (v46 ^ 0x1094A1A)))) ^ 0xFA851880))) + ((((v16 >> 8) ^ 0x90B909D6830DCAE9) + 0x2C845FB5F5C5AD5DLL) ^ (((v16 >> 8) ^ 0xFAB566F511A320F9) + 0x46883096676B474DLL) ^ (((v16 >> 8) ^ 0x2A9311AD13A2369) - 0x416B9886580DBB23)) + 0x2B67F7A5CAA35133;
  *&v16 = __ROR8__(*(v17 + (v13 & (v40 ^ (2 * ((v47 << 16) & 0x9890000 ^ v47 ^ ((v47 << 16) ^ 0x6A1A0000) & (((v46 ^ 0x1094A1A) << 8) & 0x9890000 ^ 0x810000 ^ (((v46 ^ 0x1094A1A) << 8) ^ 0x896A0000) & (v46 ^ 0x1094A1A)))) ^ 0xFA851880))), 61);
  v49 = v16 - ((2 * v16) & 0xEA9CE31ED323718CLL) + 0x754E718F6991B8C6;
  *&v16 = __ROR8__(v48 ^ 0x84D931890514B119, 8);
  v50 = v48 ^ v49;
  v51 = v50 ^ 0x45939F94671496D6;
  v52 = (((v50 ^ 0x7B08E58883F18C0ELL) - 0x3E9B7A1CE4E51AD8) ^ ((v50 ^ 0x8111B9AC25E870C3) + 0x3B7DD9C7BD0319EBLL) ^ ((v50 ^ 0x3784390355612F59) - 0x7217A6973275B98FLL)) + (((v16 ^ 0x2DA30798BA106FC4) - 0x1AE70DBCF5CC9F49) ^ ((v16 ^ 0xA62CA5264F508416) + 0x6E9750FDFF738B65) ^ ((v16 ^ 0xC0B3A89BD4DF1608) + 0x8085D4064FC197BLL)) + 0x486FAB502AF5299;
  v53 = v39 - 0x5154E5DCD9277E1DLL;
  v54 = v52 ^ __ROR8__(v51, 61);
  v55 = ((v52 ^ 0x35A8E324B8B02042) << (~(-4 - v39) & 0x18) << (~(v39 - 29) & 0x20) << ((v39 - 29) & 0x38 ^ 0x18)) ^ (v52 >> 8);
  v56 = (((v54 ^ 0xB9BF9DB81F0F74F0) - 0x680BE2B7406426DBLL) ^ ((v54 ^ 0xA112017533FA7B41) - 0x70A67E7A6C91296ALL) ^ ((v54 ^ 0x6D72AA75372705E7) + 0x43392A8597B3A834)) - 0x58786326F18A06C7 + (((v55 ^ 0xA9402BC88437E9D8) + 0x55962FF596CC06BCLL) ^ ((v55 ^ 0xB6D1114E52E57394) + 0x4A071573401E9CF8) ^ ((v55 ^ 0x1FA49265F26A2A6CLL) - 0x1C8D69A71F6E3AF0));
  v57 = v56 ^ 0x1CE51DB4901C42A2;
  v58 = v56 ^ __ROR8__(v54 ^ 0xD1B47F0F5F6B522BLL, 61);
  *&v16 = __ROR8__(v57, 8);
  v59 = v58 ^ 0xAA76E427737580DALL;
  v60 = (((v58 ^ 0xB8DC14D69BF358DDLL) - 0x12AAF0F1E886D807) ^ ((v58 ^ 0x2F0AE5B6580609F3) + 0x7A83FE6ED48C76D7) ^ ((v58 ^ 0x1457B6943A9E8B6FLL) + 0x41DEAD4CB614F44BLL)) + 0x1297FFF7BC4DD6AELL + (((v16 ^ 0x1E6660F71B5C9E83) + 0x785FD3B2CC0A035) ^ ((v16 ^ 0x92F4D4684DE420CALL) - 0x74E8B65B8587E182) ^ ((v16 ^ 0x822E8A88ACF40312) - 0x6432E8BB6497C25ALL));
  v61 = v60 ^ 0xA76C8AEC00854A8CLL;
  v62 = v60 ^ __ROR8__(v59, 61);
  *&v16 = __ROR8__(v61, 8);
  v63 = v62 ^ 0x2A05D115C64C10C7;
  v64 = (((v62 ^ 0xF7DD9B04B14751DBLL) + 0x2227B5EE88F4BEE4) ^ ((v62 ^ 0x37F0CEE58591F1F4) - 0x1DF51FF043DDE133) ^ ((v62 ^ 0xD4A0BF69C6968056) + 0x15A9183FF256F6FLL)) + 0x2CF80915C4CD622CLL + (((v16 ^ 0xEB0844E92CC65AE4) - 0x299BD5EF44A55C34) ^ ((v16 ^ 0xEF6BD9FD7456084FLL) - 0x2DF848FB1C350E9FLL) ^ ((v16 ^ 0x289FC16AA0326515) + 0x15F3AF9337AE9C3BLL));
  v65 = v64 ^ __ROR8__(v63, 61);
  *&v16 = __ROR8__(v64 ^ 0x11F88002D3E7E6A7, 8);
  v66 = (((v65 ^ 0xCDC141D953F0A00BLL) + 0x537F840C1AEB8934) ^ ((v65 ^ 0xD4AE7D9A413AF1FELL) + 0x4A10B84F0821D8C7) ^ ((v65 ^ 0x14279CB4A3C6DFDCLL) - 0x7566A69E1522091BLL)) + 0x467265D3AFFD2D05 + (((v16 ^ 0xC3F089F15BB7AB50) - 0x6670B2FBEF61F5AALL) ^ ((v16 ^ 0x5E169BE30443E891) + 0x4695F164F6A4995) ^ ((v16 ^ 0xE20EE3EE4336C92CLL) - 0x478ED8E4F7E097D6));
  v67 = v66 ^ __ROR8__(v65 ^ 0x61413A2AB6E4D6C7, 61);
  v68 = v12 - 0xB3F8D9D5C1C607DLL - ((2 * (v12 - 0xB3F8D9D5C1C607DLL)) & 0x30B51D4E7C741846) - 0x67A57158C1C5F3DDLL;
  v69 = ((v67 ^ 0x7B2D3CE278589F36) + __ROR8__(v66 ^ 0x1B61EA0A471A5845, 8)) ^ 0x453A444779340866;
  v70 = (((v69 - ((2 * v69) & 0xD8F58B1D91F7B6F0) + 0x6C7AC58EC8FBDB78) ^ __ROR8__(v67, 61) ^ 0xB513229D0A3F22CBLL) + __ROR8__(v69, 8)) ^ 0xBA0A5B6047D5AC04;
  LOBYTE(v69) = v31 ^ 0x16;
  v71 = (((v68 & 0xFFFFFFF8 ^ 0x7A653272) - 482761626) ^ ((v68 & 0xFFFFFFF8 ^ 0xA6997949) + 1069936479) ^ ((v68 & 0xFFFFFFF8 ^ 0xE2C6471B) + 2073743629)) + 810723130;
  v72 = v13 & (v71 ^ ((v71 ^ 0x4E345C9F) - 214608094) ^ ((v71 ^ 0xFE98D1BB) + 1134156294) ^ ((v71 ^ 0xCFAC169A) + 1923947813) ^ ((v71 ^ 0x3DFE6FFF) - 2130746302) ^ 0x42FEF440);
  v73 = 4 * ((v70 << (v31 ^ 0x16u)) - ((2 * (v70 << (v31 ^ 0x16u))) & 0x29E6210199061200)) + 0x53CC4203320C24ACLL;
  v74 = *(v17 + v72);
  *(&v16 + 1) = v68 & 0xFFFFFFFFFFFFFFF8;
  *&v16 = v68;
  v75 = ((((v16 >> 8) ^ 0x10EA5C2003EFBCA2) - 0x6972D1ACB8C8468ALL) ^ (((v16 >> 8) ^ 0x9A03A6F30F19FD23) + 0x1C64D4804BC1F8F5) ^ (((v16 >> 8) ^ 0xAA71A05DABC87B8DLL) + 0x2C16D22EEF107E5BLL)) + 0x5900D7021C19C024;
  *&v16 = __ROR8__(v74, 61);
  v76 = v74 + v75;
  v77 = v76 ^ 0x89AC92D3A4BFCB9ELL;
  v78 = v76 ^ (v16 - ((2 * v16) & 0xE1993932EACA024ELL) - 0xF3363668A9AFED9);
  *&v16 = __ROR8__(v77, 8);
  v79 = v78 ^ 0x7B697648A67DCC2BLL;
  v80 = ((((v78 ^ 0x34B63E42C9E633CALL) - 0x4FDF480A6F9BFFE1) ^ ((v78 ^ 0x4A1B26596476FDC2) - 0x31725011C20B31E9) ^ ((v78 ^ 0x36B2902A421CA47DLL) - 0x4DDBE662E4616856)) + (((v16 ^ 0xE7368A74F009D8EFLL) + 0x3DAC6F18B81655ABLL) ^ ((v16 ^ 0x80D0CF5D77A9308CLL) + 0x5A4A2A313FB6BDCALL) ^ ((v16 ^ 0xABD73AAFFC9EBEC3) + 0x714DDFC3B4813387)) + 0x1CCB638F16CFCA78) ^ 0x1F23A5031B24FB2ELL;
  *&v16 = __ROR8__(v80, 8);
  v81 = v80 ^ __ROR8__(v79, 61);
  v82 = v81 ^ 0x88515AB5E8DEDCA2;
  v83 = (((v16 ^ 0x97273346058CF5E4) + 0x7FDDCC0A4F4E5165) ^ ((v16 ^ 0xADFEF086C49B09CBLL) + 0x45040FCA8E59AD4CLL) ^ ((v16 ^ 0x56F34886E6B468F4) - 0x41F648355389338BLL)) + (((v81 ^ 0x8BBEC04A84DE4D0DLL) - 0x3EF9AFF6C0091AFLL) ^ ((v81 ^ 0x81B1A1BE75C3B68DLL) - 0x9E0FB0B9D1D6A2FLL) ^ ((v81 ^ 0xBB33D4191D04121DLL) - 0x33628EACF5DACEBFLL)) - 0x4B6284B26899FB1DLL;
  v84 = v83 ^ __ROR8__(v82, 61);
  *&v16 = __ROR8__(v83 ^ 0xBB0516230FA6D341, 8);
  v85 = v84 ^ 0x97F4B2AC17B5D742;
  v86 = (((v84 ^ 0xBF2A8E7B228F6C90) - 0x28DE3CD7353ABBD2) ^ ((v84 ^ 0x9805DF4745F585DALL) - 0xFF16DEB52405298) ^ ((v84 ^ 0x4C9B21B29DE2591FLL) + 0x24906CE175A871A3)) + 0x5F9CD602ABBF72C5 + (((v16 ^ 0xF65EC429E0C17966) - 0x781909EA33807502) ^ ((v16 ^ 0x98652EBAD4F6A11ELL) - 0x1622E37907B7AD7ALL) ^ ((v16 ^ 0x8320348F59E4DFB2) - 0xD67F94C8AA5D3D6));
  v87 = v86 ^ 0xAF35ADC51829016CLL;
  v88 = v86 ^ __ROR8__(v85, 61);
  *&v16 = __ROR8__(v87, 8);
  v89 = v88 ^ 0xA9C20D81EF3681A4;
  v90 = (((v88 ^ 0xF4A9D699B551C791) - 0x5D6BDB185A674635) ^ ((v88 ^ 0x8F5F38A63B80CEA8) - 0x269D3527D4B64F0CLL) ^ ((v88 ^ 0xC2C00B3C4508C526) - 0x6B0206BDAA3E4482)) - 0x2C1E96EF1144E575 + (((v16 ^ 0xF4A5CD3F3A3D0D90) + 0x542B717DDB3A54BLL) ^ ((v16 ^ 0x5C1CC577FD068FB2) - 0x520440A0E577D897) ^ ((v16 ^ 0x644D0D11168119D7) - 0x6A5588C60EF04EF2));
  v91 = __ROR8__(v90 ^ 0x122ADFE0F2DF5CDFLL, 8);
  v92 = v90 ^ __ROR8__(v89, 61);
  v93 = v92 ^ 0x6515DF4AC45A0D17;
  v94 = ((((v92 ^ 0xB299B4D1C259945) - 0x6E3C4407D87F9452) ^ ((v92 ^ 0xF487101655860868) + 0x6E6D30A36E23FA81) ^ ((v92 ^ 0x8100B3547FB4F72DLL) + 0x1BEA93E1441105C6)) + 0x1FB60B07F5A892AALL + (((v91 ^ 0x54FB82413427D167) - 0x50EA8220C99F44A3) ^ ((v91 ^ 0x214288318200D27) - 0x60528E2E59898E3) ^ ((v91 ^ 0x51048961D2E46E17) - 0x551589002F5CFBD3))) ^ 0xEC09AB95E403341CLL;
  v95 = v94 ^ __ROR8__(v93, 61);
  *&v16 = __ROR8__(v94, 8);
  v96 = (((v16 ^ 0xC8755504DFB6A308) + 0x9EFBFA2E6792068) ^ ((v16 ^ 0xB9CF84572E7ABB29) + 0x78556EF117B53847) ^ ((v16 ^ 0x284DB9126E6F014DLL) - 0x1628AC4BA85F7DDDLL)) + (((v95 ^ 0xB90EF1C356AD64D0) - 0x3996B586830D1C6CLL) ^ ((v95 ^ 0x248BFBA70CE451F9) + 0x5BEC401D26BBD6BBLL) ^ ((v95 ^ 0xB73271D46B3B01C8) - 0x37AA3591BE9B7974)) + 0x11C1BD0E3E65B259;
  v97 = v96 ^ 0x453A444779340866;
  v98 = ((v96 ^ 0x453A444779340866) + 0x7DBF204D004B97E2 - 2 * ((v96 ^ 0x453A444779340866) & 0x7DBF204D004B97F2 ^ v96 & 0x10)) ^ __ROR8__(v95 ^ 0x80984445D5A078BCLL, 61) ^ 0x2CC6DFE226D9F50FLL;
  *&v16 = __ROR8__(v97, 8);
  v99 = 4 * ((((v98 + v16) ^ 0x3A0A5B6047D5AC04) << v69) - ((2 * (((v98 + v16) ^ 0x3A0A5B6047D5AC04) << v69)) & 0x24DB9CC245B9A780)) - 0x3648C67B748CB05CLL;
  STACK[0x5790] = v53;
  v100 = (((v53 ^ 0x48939B1F308EFB58) - 0x48939B1F308EFB58) ^ ((v53 ^ 0x4FD3226EAA691B00) - 0x4FD3226EAA691B00) ^ ((v53 ^ 0xA9EBA352BC3F61BBLL) + 0x56145CAD43C09E45)) - 0x721F0F2EDEADAC2DLL + (((v73 ^ 0xBEF72065797085F7) - 0x320EB4CBB10570ABLL) ^ ((v73 ^ 0xC75A53711268DFBFLL) - 0x4BA3C7DFDA1D2AE3) ^ ((v73 ^ 0x2A61311759147EE4) + 0x59675A466E9E7448));
  LODWORD(STACK[0x5310]) = 2 * v100;
  v101 = v100;
  LODWORD(v98) = v100 - ((2 * v100) & 0xFF1030EE) - 7858057;
  v102 = STACK[0x5160];
  LODWORD(v98) = *(STACK[0x5160] + (BYTE2(v98) ^ 0xB6)) - (((WORD1(v98) ^ 0xFFFFFF99) + 33) ^ ((WORD1(v98) ^ 0xFFFFFFE3) + 91) ^ ((WORD1(v98) ^ 0xFFFFFFB2) + 12));
  LOBYTE(v100) = v98 & 0x43 ^ 0x47;
  LODWORD(STACK[0x5308]) = ((v98 ^ (2 * ((v98 ^ 0x44) & (2 * ((v98 ^ 0x44) & (2 * ((v98 ^ 0x44) & (2 * ((v98 ^ 0x44) & (2 * ((v98 ^ 0x44) & (2 * (((2 * v98) & 0xA ^ 6) & v98 ^ v100)) ^ v100)) ^ v100)) ^ v100)) ^ v100)) ^ v100))) << 8) ^ 0xF9FF41BF;
  LODWORD(v98) = *(v102 + ((((BYTE4(v101) ^ 0xAC) & 0xC0 ^ 0x28A7A9DFE51BC594) & ((BYTE4(v101) ^ 0xAC) & 0x3F ^ 0x38F7EDDFEF9FF7DFLL) | (BYTE4(v101) ^ 0xAC) & 0x2B) ^ 0x28A7A9DFE51BC5DCLL)) - (((HIDWORD(v101) ^ 0x55) + 60) ^ ((HIDWORD(v101) ^ 0xFFFFFFC4) - 85) ^ ((HIDWORD(v101) ^ 0xB) + 102)) - 4;
  LODWORD(v95) = v98 & 0xFFFFFFE8 | 0x16;
  LODWORD(v95) = (((v98 ^ 0x4C) & (2 * ((v98 ^ 0x4C) & (2 * ((v98 ^ 0x4C) & (2 * ((v98 ^ 0x4C) & (2 * ((v98 ^ 0x4C) & (2 * v95) ^ v95)) ^ v95)) ^ v95)) ^ v95)) ^ v95) << 25) ^ (v98 << 24);
  LODWORD(v72) = *(v102 + (BYTE5(v101) ^ 0x71)) - ((((v101 >> 40) ^ 0x59) + 62) ^ (((v101 >> 40) ^ 0xFFFFFFDF) - 68) ^ (((v101 >> 40) ^ 0xFFFFFF89) - 18)) + 68;
  v103 = (*(v102 + (BYTE5(v101) ^ 0x71)) - (((BYTE5(v101) ^ 0x59) + 62) ^ ((BYTE5(v101) ^ 0xDF) - 68) ^ ((BYTE5(v101) ^ 0x89) - 18)) + 68) & 0x5F ^ 0x72;
  STACK[0x52E0] = v101;
  v104 = *(v102 + (BYTE6(v101) ^ 0xAALL)) - (((HIWORD(v101) ^ 0x2C) - 27) ^ ((HIWORD(v101) ^ 0xFFFFFFAC) + 101) ^ ((HIWORD(v101) ^ 0x54) - 99)) + 57;
  v105 = (*(v102 + (BYTE6(v101) ^ 0xAALL)) - (((BYTE6(v101) ^ 0x2C) - 27) ^ ((BYTE6(v101) ^ 0xAC) + 101) ^ ((BYTE6(v101) ^ 0x54) - 99)) + 57) & 0xC9 ^ 9;
  LODWORD(v95) = ((((v72 ^ (2 * ((v72 ^ 0x7A) & (2 * ((v72 ^ 0x7A) & (2 * ((v72 ^ 0x7A) & (2 * ((v72 ^ 0x7A) & (2 * ((v72 ^ 0x7A) & (2 * ((v72 ^ 0xF3) & (2 * v72) & 0x76 ^ v103)) ^ v103)) ^ v103)) ^ v103)) ^ v103)) ^ v103))) << 16) ^ 0x34357293) & ((v95 | 0xFF65FF) + 3220) | v95 & 0xCB000000) ^ 0xBDDECEA6;
  LODWORD(v72) = (v104 ^ (2 * ((v104 ^ 0x36) & (2 * ((v104 ^ 0x36) & (2 * ((v104 ^ 0x36) & (2 * ((v104 ^ 0x36) & (2 * ((v104 ^ 0x36) & (2 * ((((2 * v104) & 0x6E ^ 0x7E) & 0x36 | v105) ^ ((2 * v104) & 0x6E ^ 0x7E) & v104)) ^ v105)) ^ v105)) ^ v105)) ^ v105)) ^ v105))) << 8;
  LODWORD(v95) = v72 & 0x4300 ^ 0x2BEB6C4B ^ v95 & (v72 ^ 0xFFFFB8BF);
  LODWORD(v72) = *(STACK[0x5388] + (HIBYTE(v101) ^ 9));
  v106 = STACK[0x5388];
  LODWORD(STACK[0x5300]) = v95 & (v72 ^ 0xFFFFFF5F) ^ v72 & 0xFFFFFF81 ^ (((v95 & (v72 ^ 0xFFFFFF5F) ^ v72 & 0xFFFFFF81 ^ 0xEB4E90FE) & v8) >> 1);
  v107 = (v70 >> v38) - ((2 * (v70 >> v38)) & 0x9FBBFE7DBFBFAFBALL) + 0x4FDDFF3EDFDFD7DDLL;
  LODWORD(v70) = *(v102 + (v107 ^ 0xD6)) - (((v107 ^ 0x1A) - 93) ^ ((v107 ^ 6) - 65) ^ ((v107 ^ 0xFFFFFFB4) + 13)) - 21;
  LODWORD(v72) = v70 & 0x11 ^ 0x1C;
  LODWORD(STACK[0x52F8]) = (((v70 ^ 0x78) & (2 * ((v70 ^ 0x78) & (2 * ((v70 ^ 0x78) & (2 * ((v70 ^ 0x78) & (2 * ((v70 ^ 0x78) & (2 * ((v70 ^ 0x78) & (2 * v70) & 0x72 ^ v72)) ^ v72)) ^ v72)) ^ v72)) ^ v72)) ^ v72) << 25) ^ (v70 << 24);
  v108 = (((v99 ^ 0x8AEBDA9DCDC69597) - 0x1825BF25F3625CB3) ^ ((v99 ^ 0x99082256D2CA8904) - 0xBC647EEEC6E4020) ^ ((v99 ^ 0xDA54C14F947F5337) - 0x489AA4F7AADB9A13)) - 0x54A8A4846A48A1A3 + (((v107 ^ 0x1A9C97AEEE92B9FFLL) - 0x1A9C97AEEE92B9FFLL) ^ ((v107 ^ 0x6C78321E7CCE6E9) - 0x6C78321E7CCE6E9) ^ ((v107 ^ 0x5386EBB1D68188CBLL) - 0x5386EBB1D68188CBLL));
  LODWORD(v69) = 2 * ((((v99 ^ 0xCDC69597) + 211657549) ^ ((v99 ^ 0xD2CA8904) + 328318944) ^ ((v99 ^ 0x947F5337) + 1428448749)) - 1783144867 + (((v107 ^ 0xEE92B9FF) + 292374017) ^ ((v107 ^ 0xE7CCE6E9) + 406001943) ^ ((v107 ^ 0xD68188CB) + 696153909)));
  LODWORD(STACK[0x52F0]) = v69;
  v109 = ((((v99 ^ 0xCDC69597) + 211657549) ^ ((v99 ^ 0xD2CA8904) + 328318944) ^ ((v99 ^ 0x947F5337) + 1428448749)) - 1783144867 + (((v107 ^ 0xEE92B9FF) + 292374017) ^ ((v107 ^ 0xE7CCE6E9) + 406001943) ^ ((v107 ^ 0xD68188CB) + 696153909)) + 1737654205 + (~v69 | 0x30DB0087)) >> 24;
  LODWORD(v109) = *(v102 + (v109 ^ 0xED)) - (((v109 ^ 0x16) - 110) ^ ((v109 ^ 0xFFFFFFD3) + 85) ^ ((v109 ^ 0x56) - 46)) - 17;
  LODWORD(STACK[0x52E8]) = v109 ^ (2 * ((v109 ^ 0x78) & (2 * ((v109 ^ 0x78) & (2 * ((v109 ^ 0x78) & (2 * ((v109 ^ 0x78) & (2 * ((v109 ^ 0x78) & (2 * (((2 * v109) & 0x72 ^ 6) & v109 ^ v109 ^ 0xFFFFFFC3)) ^ v109 ^ 0xFFFFFFC3)) ^ v109 ^ 0xFFFFFFC3)) ^ v109 ^ 0xFFFFFFC3)) ^ v109 ^ 0xFFFFFFC3)) ^ v109 ^ 0xFFFFFFC3));
  v110 = STACK[0x5168];
  LODWORD(v109) = ((BYTE5(v108) ^ *(STACK[0x5168] + BYTE5(v108))) << 16) ^ 0x6117B953;
  LOBYTE(v67) = *(v102 + (BYTE6(v108) ^ 0x94)) - (((BYTE6(v108) ^ 0xAA) + 14) ^ ((BYTE6(v108) ^ 0x8A) + 46) ^ ((BYTE6(v108) ^ 0xCA) + 110)) + 64;
  LOBYTE(v99) = ((-65 - (*(v102 + (BYTE6(v108) ^ 0x94)) - (((BYTE6(v108) ^ 0xAA) + 14) ^ ((BYTE6(v108) ^ 0x8A) + 46) ^ ((BYTE6(v108) ^ 0xCA) + 110)))) & 0xE1 | 0x14) ^ v67 & 0xAA;
  LOBYTE(v67) = v67 ^ (2 * ((v67 ^ 0x60) & (2 * ((v67 ^ 0x60) & (2 * ((v67 ^ 0x60) & (2 * ((v67 ^ 0x60) & (2 * ((v67 ^ 0x60) & (2 * ((v67 ^ 0x60) & (2 * v99) ^ v99)) ^ v99)) ^ v99)) ^ v99)) ^ v99)) ^ v99));
  STACK[0x52D0] = v108;
  LODWORD(v99) = (*(v110 + (BYTE4(v108) ^ 0x48)) ^ HIDWORD(v108) ^ 0x74) << 24;
  LODWORD(v109) = (v67 << 8) & 0xC1FF ^ 0x46745223 ^ ((v67 << 8) ^ 0xFFFF0270) & ((v109 & (v99 ^ 0x7FFFFD53) | v99 & 0x9E000000) ^ 0x7F3D8723);
  LODWORD(v67) = *(v106 + (HIBYTE(v108) ^ 0x24));
  LODWORD(STACK[0x52D8]) = v109 & (v67 ^ 0xFFFFFF4D) ^ v67 & 0xAC ^ (((v109 & (v67 ^ 0xFFFFFF4D) ^ v67 & 0xAC ^ 0x5A7E6D76) & a8) >> 1);
  LODWORD(v106) = a6 & 0xFFFFFFF1 ^ 0x959366EF;
  LODWORD(STACK[0x52A0]) = v106;
  v111 = STACK[0xD2A0];
  STACK[0x5288] = STACK[0xD2A0];
  LOBYTE(v109) = *(v102 + (*(v111 + v106) ^ 0x46)) - (((*(v111 + v106) ^ 0xB9) - 65) ^ ((*(v111 + v106) ^ 0x53) + 85) ^ ((*(v111 + v106) ^ 0xD2) - 42)) + 69;
  LOBYTE(v100) = v109 & 0xAC ^ 0x73;
  v112 = ((v109 ^ (2 * ((v109 ^ 0x4E) & (2 * ((v109 ^ 0x4E) & (2 * ((v109 ^ 0x4E) & (2 * ((v109 ^ 0x4E) & (2 * ((v109 ^ 0x4E) & (2 * ((v109 ^ 0x4E) & 0x22 ^ v100)) ^ v100)) ^ v100)) ^ v100)) ^ v100)) ^ v100))) << 8) ^ 0x1911BADA;
  LODWORD(v106) = a6 & 0xFFFFFFFC ^ 0x959366E3;
  LODWORD(STACK[0x52C8]) = v106;
  v113 = *(v111 + v106);
  v114 = *(v110 + (v113 ^ 0xBD)) ^ v113 & 0xFFFD ^ v113 & 2 ^ 0x17 ^ (2 * (((v113 & 2 ^ 0x17) & 0x12 | 8) ^ ((v113 & 2 ^ 0x17) & 2 | 0x65)));
  LODWORD(v106) = a6 & 0xFFFFFFFE ^ 0x959366E3;
  LODWORD(STACK[0x5290]) = v106;
  v115 = ((*(v110 + (*(v111 + v106) ^ 6)) ^ *(v111 + v106)) << 16) ^ 0x82AB9A8D;
  LODWORD(v106) = a6 & 0xFFFFFFF8 ^ 0x959366E7;
  LODWORD(STACK[0x5280]) = v106;
  v116 = STACK[0x5170];
  LODWORD(v113) = *(STACK[0x5170] + ~*(v111 + v106));
  LODWORD(v53) = v113 ^ ((v113 ^ 0x60) >> 4) ^ ((v113 ^ 0x60) >> 3);
  LODWORD(v106) = a6 & 0xFFFFFFF9 ^ 0x959366E7;
  LODWORD(STACK[0x52C0]) = v106;
  v117 = ((*(v110 + (*(v111 + v106) ^ 0x4CLL)) ^ *(v111 + v106)) << 8) ^ 0xA217DB9;
  LODWORD(v106) = a6 & 0xFFFFFFF6 ^ 0x959366EB;
  LODWORD(STACK[0x5260]) = v106;
  v118 = *(v111 + v106);
  LODWORD(v100) = *(v110 + (v118 ^ 0xCC));
  LODWORD(v106) = a6 & 0xFFFFFFFB ^ 0x959366E7;
  LODWORD(STACK[0x52B0]) = v106;
  v119 = *(v116 + (*(v111 + v106) ^ 0xF3));
  LODWORD(v101) = a8;
  v120 = ((v100 ^ v118) << 16) ^ 0xA3FB5FE2;
  v121 = ((v119 ^ 0x60) >> 4) ^ ((v119 ^ 0x60) >> 3);
  LODWORD(v106) = a6 & 0xFFFFFFF3 ^ 0x959366EF;
  LODWORD(STACK[0x52B8]) = v106;
  LODWORD(v118) = *(v102 + (*(v111 + v106) ^ 0x2ELL)) - (((*(v111 + v106) ^ 0xFFFFFFB0) + 90) ^ ((*(v111 + v106) ^ 0x78) - 110) ^ ((*(v111 + v106) ^ 0xFFFFFF98) + 114)) - 59;
  LODWORD(v100) = v118 & 0x62 ^ 0x5D;
  v122 = v118 ^ (2 * ((v118 ^ 0x48) & (2 * ((v118 ^ 0x48) & (2 * ((v118 ^ 0x48) & (2 * ((v118 ^ 0x48) & (2 * ((v118 ^ 0x48) & (2 * (v100 ^ v118 & 0x2A)) ^ v100)) ^ v100)) ^ v100)) ^ v100)) ^ v100));
  LODWORD(v69) = a6 & 0xFFFFFFFD ^ 0x959366E3;
  LODWORD(STACK[0x5268]) = v69;
  LOBYTE(v49) = *(v116 + (*(v111 + v69) ^ 0x75));
  LODWORD(v69) = a6 & 0xFFFFFFF2 ^ 0x959366EF;
  LODWORD(STACK[0x52A8]) = v69;
  LOBYTE(v67) = ((v49 ^ 0x60) >> 4) ^ ((v49 ^ 0x60) >> 3);
  LODWORD(v118) = *(v110 + (*(v111 + v69) ^ 0xD4)) ^ *(v111 + v69);
  LODWORD(v69) = a6 & 0xFFFFFFF4 ^ 0x959366EB;
  LODWORD(STACK[0x5298]) = v69;
  v123 = (v118 << 16) ^ 0xE329F1B8;
  LOBYTE(v69) = *(v102 + (*(v111 + v69) ^ 0x8FLL)) - (((*(v111 + v69) ^ 0x79) + 55) ^ ((*(v111 + v69) ^ 0x68) + 40) ^ ((*(v111 + v69) ^ 0xE0) - 80)) - 2;
  LOBYTE(v118) = v69 ^ (2 * ((v69 ^ 0x14) & (2 * ((v69 ^ 0x14) & (2 * ((v69 ^ 0x14) & (2 * ((v69 ^ 0x14) & (2 * ((v69 ^ 0x14) & (2 * ((v69 ^ 0x14) & (2 * (v69 | 0x39)) & 0x5E ^ (v69 | 0x39))) ^ (v69 | 0x39))) ^ (v69 | 0x39))) ^ (v69 | 0x39))) ^ (v69 | 0x39))) ^ (v69 | 0x39)));
  LODWORD(v100) = ((v49 ^ (v67 - 2 * (v67 & 0xF) - 113)) ^ 0xC7) << 8;
  LODWORD(v69) = ((v100 | 0x4F255286) ^ (((v114 & 0x1FF ^ 0x82FF9A04) & v115 | v114 & 0x72) ^ 0xCD0CC87B) & ~v100) + ((*(v116 + (*(v111 + STACK[0x53B0]) ^ 0x93)) ^ ((*(v116 + (*(v111 + STACK[0x53B0]) ^ 0x93)) ^ 0x60) >> 4) ^ ((*(v116 + (*(v111 + STACK[0x53B0]) ^ 0x93)) ^ 0x60) >> 3) ^ 0x10) << 24);
  LODWORD(v100) = a6 & 0xFFFFFFFA ^ 0x959366E7;
  LODWORD(STACK[0x5258]) = v100;
  v124 = v69 ^ ((v69 & v101) >> 1);
  LOBYTE(v69) = *(v102 + (*(v111 + v100) ^ 0x38)) - (((*(v111 + v100) ^ 0x30) - 70) ^ ((*(v111 + v100) ^ 0x8C) + 6) ^ ((*(v111 + v100) ^ 0xFA) + 116)) - 66;
  LOBYTE(v106) = v69 & 0x11 ^ 0x9E;
  LODWORD(v69) = ((v69 ^ (2 * ((v69 ^ 0x64) & (2 * ((v69 ^ 0x64) & (2 * ((v69 ^ 0x64) & (2 * ((v69 ^ 0x64) & (2 * ((v69 ^ 0x64) & (2 * ((v69 ^ 0x64) & (2 * v69) & 0x4A ^ v106)) ^ v106)) ^ v106)) ^ v106)) ^ v106)) ^ v106))) << 16) ^ 0x7B0388FB;
  LODWORD(v106) = (v53 ^ 0x85) - ((2 * (v53 ^ 0x85)) & 0xC2) + 883156577;
  LODWORD(v100) = (v119 ^ 0x2E ^ (v121 - 2 * (v121 & 0xF) - 113)) << 24;
  LODWORD(v106) = v100 & 0x44444444 | (v106 & 0x10802646 ^ 0xA11CD90E ^ v117 & (v106 ^ 0x6A1C19D8)) & ~v100;
  LODWORD(v69) = v106 & 0x84157704 ^ 0xFBFFBEFF ^ v69 & (v106 ^ 0xC442970C);
  LODWORD(v106) = a6 & 0xFFFFFFF5 ^ 0x959366EB;
  LODWORD(STACK[0x5250]) = v106;
  v125 = v69 ^ ((v69 & v8) >> 1);
  LODWORD(v69) = (*(v110 + (*(v111 + v106) ^ 0x18)) ^ *(v111 + v106)) << 8;
  LODWORD(STACK[0x5278]) = a6;
  LODWORD(v100) = a6 & 0xFFFFFFF7 ^ 0x959366EB;
  LODWORD(STACK[0x5248]) = v100;
  v126 = STACK[0x5388];
  LODWORD(v69) = v120 & (v69 ^ 0xBFFF5FEE) ^ (v69 & 0xA000 | 0x1CD5000C);
  LODWORD(v69) = (v118 ^ 0xFFFFFF80) & (v69 & 0x189D6600 ^ 0x9624FC95 ^ (((*(STACK[0x5388] + (*(v111 + v100) ^ 0xCBLL)) ^ 0xC) << 24) ^ 0x7A629926) & (v69 ^ 0x40820088)) ^ v118 & 0x4C;
  LODWORD(v53) = v69 ^ (((v69 ^ 0x29DB23B6) & v8) >> 1);
  LODWORD(v69) = a6 & 0xFFFFFFF0 ^ 0x959366EF;
  LODWORD(STACK[0x5270]) = v69;
  LODWORD(v69) = *(v110 + (*(v111 + v69) ^ 0xF5)) ^ *(v111 + v69);
  LODWORD(v69) = (((v122 ^ 0xD7) << 24) ^ 0xE6DFFFFF) & ((v112 & (v69 ^ 0xFBDFFF9D) | v69 & 0x25) ^ 0xDDD12BE0) ^ ((v122 ^ 0xD7) << 24) & 0x3B000000;
  LODWORD(v69) = (v69 ^ 0x223F9180) & v123 ^ v69 & 0x1C070E47 ^ ((((v69 ^ 0x223F9180) & v123 ^ v69 & 0x1C070E47 ^ 0xFFF8F9BA) & v101) >> 1);
  LODWORD(v118) = STACK[0x52D8] & 0x98BD515B ^ 0x183C4153 ^ (LODWORD(STACK[0x52D8]) ^ 0x5A7E6D77) & STACK[0x4DF8];
  v127 = STACK[0x57B0];
  LODWORD(v49) = STACK[0x53B8];
  v128 = STACK[0x5368];
  v129 = STACK[0x5378];
  v130 = STACK[0x5390];
  LODWORD(v106) = LODWORD(STACK[0x5318]) ^ 0x490DB791 ^ (((((v69 ^ 0xE0C6DF2B) & STACK[0x53B8] | LODWORD(STACK[0x4E18])) ^ 0x1F3E2691) << LODWORD(STACK[0x5368])) | ((v69 & 0x341E6CD0 ^ 0x34186890 ^ (v69 ^ 0xFFF8F9BA) & STACK[0x4DF0]) >> v127)) ^ ((((LODWORD(STACK[0x52D8]) ^ 0x690B4538) & STACK[0x53B8] | LODWORD(STACK[0x4E24])) ^ 0x3375284F) << LODWORD(STACK[0x5378]) << LODWORD(STACK[0x5390])) ^ ((v118 >> v127) + 1225635729 - ((2 * (v118 >> v127)) & 0x921B6F22));
  v131 = STACK[0x5530];
  LODWORD(v111) = LODWORD(STACK[0x5398]) ^ LODWORD(STACK[0x5530]) ^ v106;
  LODWORD(STACK[0x5318]) = v106;
  v132 = (((-1370173451 * v111) >> 19) | ((-1370173451 * v111) >> 16 << 29)) ^ (((-1370173451 * v111) >> 3) | (-1610612736 * v111)) ^ 0xC0DD52B8;
  LODWORD(v100) = (v132 >> 29) | (8 * v132);
  LODWORD(v132) = *(v126 + (STACK[0x5790] ^ 0x12));
  LODWORD(v67) = *(v126 + (BYTE1(STACK[0x52E0]) ^ 2)) << 16;
  LODWORD(v116) = STACK[0x5308] & (((v67 ^ 0xF9204924) & ((v132 << 24) ^ 0x98344924) | v67 & 0xCB0000) ^ 0xC96CD911) & 0xF9FFFFFF | (((v132 >> 1) & 3) << 25);
  v133 = (STACK[0x52E0] - (STACK[0x5310] & 0x19C95A98) + 216313164) >> 24;
  LODWORD(v133) = (STACK[0x5308] & 0x6F88 ^ 0x258B2260 ^ v116) & ((v133 ^ *(v110 + (v133 ^ 0x37))) ^ 0xFFFFFF2A) ^ ((v133 ^ *(v110 + (v133 ^ 0x37))) & 0x22 | 0x418B0300);
  LODWORD(v133) = v133 ^ 0xF77E1C3B ^ ((((v133 ^ 0xD19BFFDC) & v101) >> 1) - ((v133 ^ 0xD19BFFDC) & v101 & 0x4DCBC7CC) + 652600294);
  v134 = STACK[0x5348];
  v135 = STACK[0x53C0];
  LODWORD(v101) = (((((v124 ^ 0x7FA5ABD) & v49 | LODWORD(STACK[0x4E20])) ^ 0x7FA5ABD) << LODWORD(STACK[0x5128]) << LODWORD(STACK[0x5150])) + ((v124 & STACK[0x57A0]) >> v127)) ^ LODWORD(STACK[0x5320]) ^ ((v133 & STACK[0x5348]) << v128) ^ ((v133 & STACK[0x53C0]) >> v127);
  LODWORD(v133) = (v100 ^ 0x6EA95C6) - v101 + ((v100 ^ 0x6EA95C6) >> 8);
  *&v16 = __ROR8__(LODWORD(STACK[0x53D0]), 24);
  v136 = ((v16 ^ 0xFE70E8D41BFE0D74) >> 40) | ((v16 ^ 0x1BFE0D74) << 24);
  LODWORD(v116) = STACK[0x5300] & 0x67E766CF ^ 0x634600CE ^ (LODWORD(STACK[0x5300]) ^ 0xEB4E90FE) & STACK[0x4E00];
  v137 = STACK[0x5770];
  LODWORD(v116) = (v116 >> v137) - ((2 * (v116 >> v137)) & 0xB34260B6) - 643747749;
  LODWORD(v116) = LODWORD(STACK[0x53A0]) ^ 0xF9BDFCDF ^ (((v125 & STACK[0x5348]) << v128) + ((v125 & STACK[0x53C0]) >> LODWORD(STACK[0x5770]))) ^ v116 & 0x57E3137B ^ (v116 ^ 0x265ECFA4) & (((((LODWORD(STACK[0x5300]) ^ 0x669A1345) & v49 | LODWORD(STACK[0x4E28])) ^ 0x8DD483BB) << LODWORD(STACK[0x5148]) << LODWORD(STACK[0x5120])) ^ 0xA81CEC84);
  LODWORD(v100) = 1085209869 * v133 + ((1085209869 * v133) >> 16) - v116 - ((1085209869 * v133 + ((1085209869 * v133) >> 16)) >> 8);
  v138 = STACK[0x5730];
  v139 = STACK[0x55C0];
  LODWORD(v133) = (-1370173451 * (v139 ^ v138 ^ v106)) ^ ((-1370173451 * (v139 ^ v138 ^ v106)) >> 16);
  v140 = v133 - v101 + (v133 >> 8);
  v141 = ((-1370173451 * v111) >> 16) ^ (-1370173451 * v111);
  LODWORD(STACK[0x5320]) = v101;
  LODWORD(v141) = 1085209869 * ((v141 >> 8) + v141 - v101);
  v142 = v116;
  LODWORD(STACK[0x53D0]) = v116;
  LODWORD(v141) = v141 + WORD1(v141) - v116 - ((v141 + WORD1(v141)) >> 8);
  LODWORD(v118) = STACK[0x52D0] - (STACK[0x52F0] & 0x8B06C88) - 2074593724;
  LOBYTE(v116) = ((STACK[0x52D0] - (STACK[0x52F0] & 0x3DB6) - 24869) >> 8) ^ *(v110 + (((STACK[0x52D0] - (STACK[0x52F0] & 0x3DB6) - 24869) >> 8) ^ 0x67));
  LODWORD(v118) = (BYTE2(v118) ^ *(v110 + (BYTE2(v118) ^ 0xDCLL))) << 8;
  LODWORD(v118) = (STACK[0x52E8] & 0x7F ^ 0xFFFFFF6A) & ((((LODWORD(STACK[0x52F8]) ^ 0xC31AE24) & ((v116 << 16) ^ 0xFF25EF7C) | (v116 << 16) & 0xCE0000) ^ 0x66C51910) & (v118 ^ 0xFFFFC07C) ^ (v118 & 0x4800 | 0x70DA1727)) ^ STACK[0x52E8] & 0xEC;
  LODWORD(v118) = v118 ^ 0xDFDF7D8F ^ ((((v118 ^ 0xDB68E816) & v8) >> 1) - ((v118 ^ 0xDB68E816) & v8 & 0x96F2B30) + 79140248);
  LODWORD(v67) = (((v53 ^ 0x29DB23B7) & v135) >> v137) ^ LODWORD(STACK[0x53A8]) ^ ((((v53 ^ 0xAB15B6D0) & v134 | LODWORD(STACK[0x4E34])) ^ 0x82CE9567) << v130 << v129) ^ ((v118 & v134) << v128) ^ ((v118 & v135) >> v137);
  LODWORD(STACK[0x53A8]) = v67;
  LODWORD(v141) = -203724179 * (((-1252872367 * v141 + ((-1252872367 * v141) >> 16)) ^ ((-1252872367 * v141 + ((-1252872367 * v141) >> 16)) >> 8)) + v67);
  v143 = STACK[0xD290];
  v144 = (v141 ^ WORD1(v141)) + STACK[0xD290] + ((v141 ^ WORD1(v141)) >> 8);
  LODWORD(STACK[0x5790]) = v144;
  LODWORD(v141) = 1085209869 * (((-1370173451 * v111) ^ ((-1370173451 * v111) >> 16)) - v101 + (((-1370173451 * v111) ^ ((-1370173451 * v111) >> 16)) >> 8));
  LODWORD(STACK[0x53A0]) = v141 + WORD1(v141) - v142 - ((v141 + WORD1(v141)) >> 8);
  LODWORD(v141) = ((-1252872367 * v100 + ((-1252872367 * v100) >> 16)) ^ ((-1252872367 * v100 + ((-1252872367 * v100) >> 16)) >> 8)) + v67;
  v145 = (v141 & 0x9BBF69C9 | STACK[0x54A0] & 0x64409636) ^ (v141 ^ LODWORD(STACK[0x54A0])) & 0x9BBF69C9;
  v146 = ((-203724179 * v141) ^ ((-203724179 * v141) >> 16)) + (((-203724179 * v141) ^ ((-203724179 * v141) >> 16)) >> 8);
  v147 = STACK[0x5630] & 0x2000000;
  if ((v146 & v147) != 0)
  {
    v147 = -v147;
  }

  v148 = v146 ^ STACK[0x5630] & 0xFDFFFFFF ^ (v147 + v146);
  v149 = 1085209869 * v140 + ((1085209869 * v140) >> 16) - ((1085209869 * v140 + ((1085209869 * v140) >> 16)) >> 8);
  v150 = v149 ^ LODWORD(STACK[0x5480]) ^ ((v149 | 0x29FD1605) - ((v149 | 0x29FD1605) ^ v149));
  v151 = v136 ^ 0x74FE70E8;
  v152 = v143 + LODWORD(STACK[0x5780]) + v146;
  *(v9 - 152) = v143;
  LODWORD(STACK[0x5780]) = v152;
  v153 = (v144 & 1) == 0;
  v154 = STACK[0x5760];
  v155 = STACK[0x5430];
  if (v144)
  {
    v156 = STACK[0x5430];
  }

  else
  {
    v156 = STACK[0x5760];
  }

  LODWORD(STACK[0x52E8]) = v156;
  v157 = STACK[0x5360];
  if ((v144 & 1) == 0)
  {
    v154 = STACK[0x5360];
  }

  LODWORD(STACK[0x51A8]) = v154;
  if (v144)
  {
    v158 = STACK[0x5410];
  }

  else
  {
    v158 = v155;
  }

  if ((v144 & 1) == 0)
  {
    v157 = STACK[0x5410];
  }

  LODWORD(STACK[0x5760]) = v157;
  v159 = STACK[0x5358];
  if (v144)
  {
    v160 = STACK[0x5358];
  }

  else
  {
    v160 = v138;
  }

  LODWORD(STACK[0x5208]) = v160;
  v161 = STACK[0x5740];
  if (v144)
  {
    v162 = v138;
  }

  else
  {
    v162 = STACK[0x5740];
  }

  LODWORD(STACK[0x52E0]) = v162;
  if (v144)
  {
    v163 = v161;
  }

  else
  {
    v163 = STACK[0x5750];
  }

  if (v144)
  {
    v159 = STACK[0x5750];
  }

  LODWORD(STACK[0x51C8]) = v159;
  v164 = STACK[0x5720];
  v165 = STACK[0x5710];
  if (v144)
  {
    v166 = STACK[0x5710];
  }

  else
  {
    v166 = STACK[0x5720];
  }

  LODWORD(STACK[0x51D0]) = v166;
  v167 = STACK[0x5700];
  if (v144)
  {
    v165 = STACK[0x5700];
  }

  LODWORD(STACK[0x5710]) = v165;
  if (v144)
  {
    v168 = STACK[0x5350];
  }

  else
  {
    v168 = v167;
  }

  if ((v144 & 1) == 0)
  {
    v164 = STACK[0x5350];
  }

  LODWORD(STACK[0x51C0]) = v164;
  v169 = STACK[0x56F0];
  v170 = STACK[0x56C0];
  if (v144)
  {
    v171 = STACK[0x56F0];
  }

  else
  {
    v171 = STACK[0x56C0];
  }

  LODWORD(STACK[0x5630]) = v171;
  v172 = STACK[0x56E0];
  if (v144)
  {
    v169 = STACK[0x56E0];
  }

  LODWORD(STACK[0x56F0]) = v169;
  v173 = STACK[0x56D0];
  if (v144)
  {
    v172 = STACK[0x56D0];
  }

  LODWORD(STACK[0x5238]) = v172;
  if (v144)
  {
    v174 = v170;
  }

  else
  {
    v174 = v173;
  }

  v175 = STACK[0x5660];
  if (v153)
  {
    v176 = v148;
  }

  else
  {
    v176 = STACK[0x5660];
  }

  LODWORD(STACK[0x5200]) = v176;
  v177 = STACK[0x5680];
  if (!v153)
  {
    v175 = STACK[0x5680];
  }

  LODWORD(STACK[0x5660]) = v175;
  v178 = STACK[0x5670];
  if (v153)
  {
    v148 = STACK[0x5670];
  }

  LODWORD(STACK[0x5230]) = v148;
  if (v153)
  {
    v179 = v177;
  }

  else
  {
    v179 = v178;
  }

  v180 = STACK[0x5620];
  v181 = STACK[0x5610];
  if (v153)
  {
    v182 = STACK[0x5620];
  }

  else
  {
    v182 = STACK[0x5610];
  }

  LODWORD(STACK[0x54A0]) = v182;
  if (v153)
  {
    v183 = STACK[0x5640];
  }

  else
  {
    v183 = v180;
  }

  v184 = STACK[0x5650];
  if (v153)
  {
    v185 = STACK[0x5650];
  }

  else
  {
    v185 = STACK[0x5640];
  }

  LODWORD(STACK[0x5228]) = v185;
  if (v153)
  {
    v186 = v181;
  }

  else
  {
    v186 = v184;
  }

  v187 = STACK[0x55F0];
  v188 = STACK[0x55E0];
  if (v153)
  {
    v189 = STACK[0x55F0];
  }

  else
  {
    v189 = STACK[0x55E0];
  }

  LODWORD(STACK[0x5310]) = v189;
  if (v153)
  {
    v190 = v188;
  }

  else
  {
    v190 = STACK[0x55D0];
  }

  v191 = STACK[0x5600];
  if (v153)
  {
    v192 = STACK[0x55D0];
  }

  else
  {
    v192 = STACK[0x5600];
  }

  LODWORD(STACK[0x5220]) = v192;
  if (v153)
  {
    v193 = v191;
  }

  else
  {
    v193 = v187;
  }

  v194 = STACK[0x5570];
  v195 = STACK[0x5560];
  if (v153)
  {
    v196 = STACK[0x5570];
  }

  else
  {
    v196 = STACK[0x5560];
  }

  LODWORD(STACK[0x51F8]) = v196;
  v197 = STACK[0x5550];
  if (v153)
  {
    v198 = v195;
  }

  else
  {
    v198 = STACK[0x5550];
  }

  LODWORD(STACK[0x5560]) = v198;
  if (v153)
  {
    v199 = v197;
  }

  else
  {
    v199 = STACK[0x5540];
  }

  if (v153)
  {
    v200 = STACK[0x5540];
  }

  else
  {
    v200 = v194;
  }

  v201 = STACK[0x5590];
  if (v153)
  {
    v202 = STACK[0x5590];
  }

  else
  {
    v202 = v139;
  }

  LODWORD(STACK[0x5308]) = v202;
  if (v153)
  {
    v203 = STACK[0x55A0];
  }

  else
  {
    v203 = v201;
  }

  v204 = STACK[0x55B0];
  if (v153)
  {
    v205 = STACK[0x55B0];
  }

  else
  {
    v205 = STACK[0x55A0];
  }

  LODWORD(STACK[0x5590]) = v205;
  if (v153)
  {
    v204 = v139;
  }

  v206 = STACK[0x54F0];
  if (v153)
  {
    v207 = STACK[0x54F0];
  }

  else
  {
    v207 = v145;
  }

  LODWORD(STACK[0x5480]) = v207;
  v208 = STACK[0x5580];
  if (v153)
  {
    v209 = STACK[0x5580];
  }

  else
  {
    v209 = v206;
  }

  LODWORD(STACK[0x54F0]) = v209;
  if (v153)
  {
    v210 = v150;
  }

  else
  {
    v210 = v208;
  }

  LODWORD(STACK[0x5360]) = v210;
  if (!v153)
  {
    v145 = v150;
  }

  v211 = STACK[0x5500];
  if (v153)
  {
    v212 = STACK[0x5500];
  }

  else
  {
    v212 = v131;
  }

  v213 = STACK[0x5510];
  if (v153)
  {
    v211 = STACK[0x5510];
  }

  LODWORD(STACK[0x52D8]) = v211;
  v214 = STACK[0x5520];
  if (v153)
  {
    v215 = v131;
  }

  else
  {
    v215 = STACK[0x5520];
  }

  LODWORD(STACK[0x5530]) = v215;
  if (v153)
  {
    v216 = v214;
  }

  else
  {
    v216 = v213;
  }

  v217 = STACK[0x54C0];
  v218 = STACK[0x54B0];
  if (v153)
  {
    v219 = STACK[0x54C0];
  }

  else
  {
    v219 = STACK[0x54B0];
  }

  LODWORD(STACK[0x5300]) = v219;
  if (v153)
  {
    v220 = v218;
  }

  else
  {
    v220 = STACK[0x54D0];
  }

  v221 = STACK[0x54E0];
  if (v153)
  {
    v222 = STACK[0x54D0];
  }

  else
  {
    v222 = STACK[0x54E0];
  }

  LODWORD(STACK[0x5218]) = v222;
  if (!v153)
  {
    v221 = v217;
  }

  v223 = STACK[0x5340];
  v224 = STACK[0x5338];
  if (v153)
  {
    v225 = STACK[0x5340];
  }

  else
  {
    v225 = STACK[0x5338];
  }

  LODWORD(STACK[0x51E0]) = v225;
  v226 = STACK[0x5490];
  if (v153)
  {
    v227 = STACK[0x5490];
  }

  else
  {
    v227 = v223;
  }

  LODWORD(STACK[0x5240]) = v227;
  if (v153)
  {
    v228 = STACK[0x5440];
  }

  else
  {
    v228 = v226;
  }

  if (v153)
  {
    v229 = v224;
  }

  else
  {
    v229 = STACK[0x5440];
  }

  v230 = STACK[0x5450];
  v231 = STACK[0x5420];
  if (v153)
  {
    v232 = STACK[0x5450];
  }

  else
  {
    v232 = STACK[0x5420];
  }

  LODWORD(STACK[0x52F8]) = v232;
  if (v153)
  {
    v233 = v231;
  }

  else
  {
    v233 = STACK[0x5470];
  }

  v234 = STACK[0x5460];
  if (v153)
  {
    v235 = STACK[0x5470];
  }

  else
  {
    v235 = STACK[0x5460];
  }

  LODWORD(STACK[0x5210]) = v235;
  if (v153)
  {
    v236 = v234;
  }

  else
  {
    v236 = v230;
  }

  v237 = STACK[0x5408];
  if (v153)
  {
    v238 = v151;
  }

  else
  {
    v238 = STACK[0x5408];
  }

  LODWORD(STACK[0x51D8]) = v238;
  v239 = STACK[0x53E8];
  if (v153)
  {
    v240 = STACK[0x53E8];
  }

  else
  {
    v240 = v151;
  }

  LODWORD(STACK[0x52D0]) = v240;
  if (v153)
  {
    v239 = STACK[0x5400];
  }

  else
  {
    v237 = STACK[0x5400];
  }

  LODWORD(STACK[0x53E8]) = v237;
  v241 = STACK[0x53F0];
  v242 = STACK[0x53D8];
  if (v153)
  {
    v243 = STACK[0x53D8];
  }

  else
  {
    v243 = STACK[0x53F0];
  }

  LODWORD(STACK[0x52F0]) = v243;
  v244 = STACK[0x53F8];
  if (v153)
  {
    v242 = STACK[0x53F8];
  }

  LODWORD(STACK[0x51B0]) = v242;
  v245 = STACK[0x53E0];
  if (v153)
  {
    v244 = STACK[0x53E0];
  }

  LODWORD(STACK[0x53D8]) = v244;
  if (!v153)
  {
    v241 = v245;
  }

  v246 = STACK[0x5780];
  v247 = STACK[0x5320];
  v248 = STACK[0x53D0];
  if (STACK[0x5780])
  {
    v249 = STACK[0x53D0];
  }

  else
  {
    v249 = STACK[0x5320];
  }

  LODWORD(STACK[0x5340]) = v249;
  v250 = STACK[0x5318];
  if ((v246 & 1) == 0)
  {
    v247 = STACK[0x5318];
  }

  LODWORD(STACK[0x5358]) = v247;
  v251 = STACK[0x53A8];
  if ((v246 & 1) == 0)
  {
    v250 = STACK[0x53A8];
  }

  LODWORD(STACK[0x5338]) = v250;
  if (v246)
  {
    v252 = v251;
  }

  else
  {
    v252 = v248;
  }

  LODWORD(STACK[0x5350]) = v252;
  v253 = (STACK[0x5790] & 2) == 0;
  v254 = STACK[0x51A8];
  if ((STACK[0x5790] & 2) != 0)
  {
    v255 = STACK[0x51A8];
  }

  else
  {
    v255 = v158;
  }

  LODWORD(STACK[0x5430]) = v255;
  if (v253)
  {
    v158 = v254;
  }

  v256 = STACK[0x52E8];
  v257 = STACK[0x5760];
  if (v253)
  {
    v258 = STACK[0x5760];
  }

  else
  {
    v258 = STACK[0x52E8];
  }

  LODWORD(STACK[0x5410]) = v258;
  v259 = *(v9 - 152);
  if (v253)
  {
    v260 = v256;
  }

  else
  {
    v260 = v257;
  }

  LODWORD(STACK[0x5760]) = v260;
  v261 = STACK[0x5208];
  if (v253)
  {
    v262 = STACK[0x5208];
  }

  else
  {
    v262 = v163;
  }

  LODWORD(STACK[0x5730]) = v262;
  if (v253)
  {
    v263 = v163;
  }

  else
  {
    v263 = v261;
  }

  LODWORD(STACK[0x5750]) = v263;
  v264 = STACK[0x52E0];
  v265 = STACK[0x51C8];
  if (v253)
  {
    v266 = STACK[0x52E0];
  }

  else
  {
    v266 = STACK[0x51C8];
  }

  LODWORD(STACK[0x5740]) = v266;
  if (v253)
  {
    v267 = v265;
  }

  else
  {
    v267 = v264;
  }

  v268 = STACK[0x51D0];
  if (v253)
  {
    v269 = STACK[0x51D0];
  }

  else
  {
    v269 = v168;
  }

  LODWORD(STACK[0x5720]) = v269;
  if (v253)
  {
    v270 = v168;
  }

  else
  {
    v270 = v268;
  }

  LODWORD(STACK[0x5700]) = v270;
  v271 = STACK[0x5710];
  if (v253)
  {
    v272 = STACK[0x51C0];
  }

  else
  {
    v272 = STACK[0x5710];
  }

  if (!v253)
  {
    v271 = STACK[0x51C0];
  }

  LODWORD(STACK[0x5710]) = v271;
  v273 = STACK[0x56F0];
  if (v253)
  {
    v274 = v174;
  }

  else
  {
    v274 = STACK[0x56F0];
  }

  LODWORD(STACK[0x56D0]) = v274;
  if (v253)
  {
    v275 = v273;
  }

  else
  {
    v275 = v174;
  }

  LODWORD(STACK[0x56F0]) = v275;
  v276 = STACK[0x5630];
  v277 = STACK[0x5238];
  if (v253)
  {
    v278 = STACK[0x5238];
  }

  else
  {
    v278 = STACK[0x5630];
  }

  LODWORD(STACK[0x56E0]) = v278;
  if (v253)
  {
    v279 = v276;
  }

  else
  {
    v279 = v277;
  }

  LODWORD(STACK[0x56C0]) = v279;
  v280 = STACK[0x5200];
  if (v253)
  {
    v281 = STACK[0x5200];
  }

  else
  {
    v281 = v179;
  }

  LODWORD(STACK[0x5630]) = v281;
  if (v253)
  {
    v282 = v179;
  }

  else
  {
    v282 = v280;
  }

  LODWORD(STACK[0x5680]) = v282;
  v283 = STACK[0x5660];
  v284 = STACK[0x5230];
  if (v253)
  {
    v285 = STACK[0x5230];
  }

  else
  {
    v285 = STACK[0x5660];
  }

  LODWORD(STACK[0x5670]) = v285;
  if (v253)
  {
    v286 = v283;
  }

  else
  {
    v286 = v284;
  }

  LODWORD(STACK[0x5660]) = v286;
  if (v253)
  {
    v287 = v186;
  }

  else
  {
    v287 = v183;
  }

  LODWORD(STACK[0x5610]) = v287;
  if (v253)
  {
    v288 = v183;
  }

  else
  {
    v288 = v186;
  }

  LODWORD(STACK[0x5640]) = v288;
  v289 = STACK[0x54A0];
  v290 = STACK[0x5228];
  if (v253)
  {
    v291 = STACK[0x54A0];
  }

  else
  {
    v291 = STACK[0x5228];
  }

  LODWORD(STACK[0x5620]) = v291;
  if (v253)
  {
    v292 = v290;
  }

  else
  {
    v292 = v289;
  }

  LODWORD(STACK[0x5650]) = v292;
  if (v253)
  {
    v293 = v193;
  }

  else
  {
    v293 = v190;
  }

  LODWORD(STACK[0x5600]) = v293;
  if (v253)
  {
    v294 = v190;
  }

  else
  {
    v294 = v193;
  }

  LODWORD(STACK[0x55E0]) = v294;
  v295 = STACK[0x5310];
  v296 = STACK[0x5220];
  if (v253)
  {
    v297 = STACK[0x5220];
  }

  else
  {
    v297 = STACK[0x5310];
  }

  LODWORD(STACK[0x55D0]) = v297;
  if (v253)
  {
    v298 = v295;
  }

  else
  {
    v298 = v296;
  }

  LODWORD(STACK[0x55F0]) = v298;
  v299 = STACK[0x51F8];
  if (v253)
  {
    v300 = v199;
  }

  else
  {
    v300 = STACK[0x51F8];
  }

  LODWORD(STACK[0x5550]) = v300;
  if (v253)
  {
    v301 = v299;
  }

  else
  {
    v301 = v199;
  }

  LODWORD(STACK[0x5570]) = v301;
  v302 = STACK[0x5560];
  if (v253)
  {
    v303 = v200;
  }

  else
  {
    v303 = STACK[0x5560];
  }

  LODWORD(STACK[0x5540]) = v303;
  if (v253)
  {
    v304 = v302;
  }

  else
  {
    v304 = v200;
  }

  LODWORD(STACK[0x5560]) = v304;
  if (v253)
  {
    v305 = v203;
  }

  else
  {
    v305 = v204;
  }

  LODWORD(STACK[0x55A0]) = v305;
  if (v253)
  {
    v306 = v204;
  }

  else
  {
    v306 = v203;
  }

  LODWORD(STACK[0x55C0]) = v306;
  v307 = STACK[0x5308];
  v308 = STACK[0x5590];
  if (v253)
  {
    v309 = STACK[0x5590];
  }

  else
  {
    v309 = STACK[0x5308];
  }

  LODWORD(STACK[0x55B0]) = v309;
  if (v253)
  {
    v310 = v307;
  }

  else
  {
    v310 = v308;
  }

  LODWORD(STACK[0x5590]) = v310;
  v311 = STACK[0x54F0];
  if (v253)
  {
    v312 = v145;
  }

  else
  {
    v312 = STACK[0x54F0];
  }

  LODWORD(STACK[0x54A0]) = v312;
  if (v253)
  {
    v313 = v311;
  }

  else
  {
    v313 = v145;
  }

  LODWORD(STACK[0x5580]) = v313;
  if (v253)
  {
    v314 = v212;
  }

  else
  {
    v314 = v216;
  }

  LODWORD(STACK[0x5500]) = v314;
  if (v253)
  {
    v315 = v216;
  }

  else
  {
    v315 = v212;
  }

  LODWORD(STACK[0x5520]) = v315;
  v316 = STACK[0x5480];
  v317 = STACK[0x5360];
  if (v253)
  {
    v318 = STACK[0x5480];
  }

  else
  {
    v318 = STACK[0x5360];
  }

  LODWORD(STACK[0x54F0]) = v318;
  if (v253)
  {
    v319 = v317;
  }

  else
  {
    v319 = v316;
  }

  LODWORD(STACK[0x5480]) = v319;
  v320 = STACK[0x52D8];
  v321 = STACK[0x5530];
  if (v253)
  {
    v322 = STACK[0x52D8];
  }

  else
  {
    v322 = STACK[0x5530];
  }

  LODWORD(STACK[0x5510]) = v322;
  if (v253)
  {
    v323 = v321;
  }

  else
  {
    v323 = v320;
  }

  LODWORD(STACK[0x5530]) = v323;
  if (v253)
  {
    v324 = v221;
  }

  else
  {
    v324 = v220;
  }

  LODWORD(STACK[0x54E0]) = v324;
  if (v253)
  {
    v325 = v220;
  }

  else
  {
    v325 = v221;
  }

  LODWORD(STACK[0x54B0]) = v325;
  v326 = STACK[0x5300];
  v327 = STACK[0x5218];
  if (v253)
  {
    v328 = STACK[0x5218];
  }

  else
  {
    v328 = STACK[0x5300];
  }

  LODWORD(STACK[0x54D0]) = v328;
  if (v253)
  {
    v329 = v326;
  }

  else
  {
    v329 = v327;
  }

  LODWORD(STACK[0x54C0]) = v329;
  v330 = STACK[0x51E0];
  if (v253)
  {
    v331 = v228;
  }

  else
  {
    v331 = STACK[0x51E0];
  }

  LODWORD(STACK[0x5440]) = v331;
  if (v253)
  {
    v332 = v330;
  }

  else
  {
    v332 = v228;
  }

  v333 = STACK[0x5240];
  if (v253)
  {
    v334 = STACK[0x5240];
  }

  else
  {
    v334 = v229;
  }

  LODWORD(STACK[0x5490]) = v334;
  if (v253)
  {
    v335 = v236;
  }

  else
  {
    v229 = v333;
    v335 = v233;
  }

  LODWORD(STACK[0x5460]) = v335;
  if (v253)
  {
    v336 = v233;
  }

  else
  {
    v336 = v236;
  }

  LODWORD(STACK[0x5420]) = v336;
  v337 = STACK[0x52F8];
  v338 = STACK[0x5210];
  if (v253)
  {
    v339 = STACK[0x5210];
  }

  else
  {
    v339 = STACK[0x52F8];
  }

  LODWORD(STACK[0x5470]) = v339;
  if (v253)
  {
    v340 = v337;
  }

  else
  {
    v340 = v338;
  }

  LODWORD(STACK[0x5450]) = v340;
  v341 = STACK[0x51D8];
  if (v253)
  {
    v342 = STACK[0x51D8];
  }

  else
  {
    v342 = v239;
  }

  LODWORD(STACK[0x53D0]) = v342;
  if (v253)
  {
    v343 = v239;
  }

  else
  {
    v343 = v341;
  }

  LODWORD(STACK[0x5400]) = v343;
  v344 = STACK[0x52D0];
  v345 = STACK[0x53E8];
  if (v253)
  {
    v346 = STACK[0x53E8];
  }

  else
  {
    v346 = STACK[0x52D0];
  }

  LODWORD(STACK[0x5408]) = v346;
  if (v253)
  {
    v347 = v344;
  }

  else
  {
    v347 = v345;
  }

  LODWORD(STACK[0x53E8]) = v347;
  v348 = STACK[0x51B0];
  if (v253)
  {
    v349 = v241;
  }

  else
  {
    v349 = STACK[0x51B0];
  }

  LODWORD(STACK[0x53F0]) = v349;
  if (v253)
  {
    v350 = v348;
  }

  else
  {
    v350 = v241;
  }

  LODWORD(STACK[0x53F8]) = v350;
  v351 = STACK[0x52F0];
  v352 = STACK[0x53D8];
  if (v253)
  {
    v353 = STACK[0x53D8];
  }

  else
  {
    v353 = STACK[0x52F0];
  }

  LODWORD(STACK[0x53E0]) = v353;
  if (v253)
  {
    v354 = v351;
  }

  else
  {
    v354 = v352;
  }

  LODWORD(STACK[0x53D8]) = v354;
  v355 = LODWORD(STACK[0x50E8]) ^ LODWORD(STACK[0x50D0]);
  v356 = v355 ^ LODWORD(STACK[0x5000]) ^ LODWORD(STACK[0x5008]);
  v357 = STACK[0x50E0];
  LODWORD(STACK[0x5360]) = v158;
  v358 = v356 ^ v357 ^ v158;
  v359 = STACK[0x5340];
  v360 = STACK[0x5338];
  if ((v246 & 2) != 0)
  {
    v361 = STACK[0x5338];
  }

  else
  {
    v361 = STACK[0x5340];
  }

  v362 = v358 ^ v361;
  STACK[0xD290] = v259 + 4 * ((v358 ^ v361) >> 8);
  v363 = *(v259 + 4 * ((v358 ^ v361) >> 8));
  STACK[0xD290] = v259 + 4 * ((v358 ^ v361) >> 16);
  v364 = -1252872367 * LODWORD(STACK[0x53A0]) + ((-1252872367 * LODWORD(STACK[0x53A0])) >> 16);
  v365 = -203724179 * ((v364 ^ (v364 >> 8)) + LODWORD(STACK[0x53A8]));
  v366 = *(v259 + 4 * BYTE2(v362));
  v367 = v259 + LODWORD(STACK[0x5370]) + (v365 ^ HIWORD(v365)) + ((v365 ^ HIWORD(v365)) >> 8);
  v368 = STACK[0x5358];
  v369 = STACK[0x5350];
  if ((v246 & 2) != 0)
  {
    v370 = STACK[0x5350];
  }

  else
  {
    v370 = STACK[0x5358];
  }

  v371 = v355 ^ LODWORD(STACK[0x4FF8]) ^ LODWORD(STACK[0x4FF0]) ^ v357 ^ LODWORD(STACK[0x5410]) ^ v370;
  STACK[0xD290] = v259;
  v372 = *(v259 + 4 * HIBYTE(v362));
  STACK[0xD290] = v259 + 4 * BYTE2(v371);
  if ((v246 & 2) != 0)
  {
    v373 = v359;
  }

  else
  {
    v373 = v360;
  }

  v374 = v355 ^ LODWORD(STACK[0x50B0]) ^ v357 ^ LODWORD(STACK[0x5430]) ^ v373;
  v375 = *(v259 + 4 * BYTE2(v371));
  STACK[0xD290] = v259 + 4 * BYTE2(v374);
  if ((v246 & 2) != 0)
  {
    v376 = v368;
  }

  else
  {
    v376 = v369;
  }

  v377 = *(v259 + 4 * BYTE2(v374));
  v378 = v355 ^ LODWORD(STACK[0x50A8]) ^ v357 ^ LODWORD(STACK[0x5760]) ^ v376;
  STACK[0xD290] = v259;
  v379 = *(v259 + 4 * HIBYTE(v374));
  STACK[0xD290] = v259 + 4 * v378;
  v380 = *(v259 + 4 * v378);
  STACK[0xD290] = v259 + 4 * BYTE2(v378);
  v381 = *(v259 + 4 * BYTE2(v378));
  STACK[0xD290] = v259 + 4 * v362;
  HIDWORD(v382) = *(v259 + 4 * v362);
  LODWORD(v382) = HIDWORD(v382);
  STACK[0xD290] = v259 + 4 * HIBYTE(v378);
  v383 = __ROR4__(((v382 >> 16) + v377 - 2 * ((v382 >> 16) & v377)) ^ __ROR4__(*(v259 + 4 * HIBYTE(v378)), 24) ^ v367, 10) ^ 0x6A391365;
  STACK[0xD290] = v259 + 4 * BYTE1(v378);
  v384 = *(v259 + 4 * BYTE1(v378));
  STACK[0xD290] = v259 + 4 * BYTE1(v374);
  v385 = STACK[0x5010];
  v386 = STACK[0x5100];
  v387 = *(v259 + 4 * BYTE1(v374));
  v388 = LODWORD(STACK[0x5010]) ^ LODWORD(STACK[0x4FE8]) ^ LODWORD(STACK[0x4FE0]) ^ LODWORD(STACK[0x5100]) ^ v366 ^ __ROR4__(v384, 8);
  STACK[0xD290] = v259 + 4 * v374;
  v389 = v388 ^ __ROR4__(*(v259 + 4 * v374), 16);
  STACK[0xD290] = v259 + 4 * v371;
  v390 = *(v259 + 4 * v371);
  STACK[0xD290] = v259 + 4 * HIBYTE(v371);
  v391 = v389 ^ __ROR4__(*(v259 + 4 * HIBYTE(v371)), 24);
  v392 = v386 ^ v385 ^ LODWORD(STACK[0x50A0]) ^ __ROR4__(v372, 24) ^ v381 ^ __ROR4__(v387, 8) ^ __ROR4__(v390, 16);
  v393 = v386 ^ v385 ^ LODWORD(STACK[0x5098]) ^ __ROR4__(v363, 8) ^ v375 ^ __ROR4__(v379, 24) ^ __ROR4__(v380, 16);
  STACK[0xD290] = v259 + 4 * BYTE1(v371);
  v394 = LODWORD(STACK[0x5018]) ^ LODWORD(STACK[0x4FD0]) ^ LODWORD(STACK[0x4FD8]) ^ v386 ^ __ROR4__(*(v259 + 4 * BYTE1(v371)), 8) ^ __ROR4__(v383, 22);
  LODWORD(STACK[0x5358]) = v267;
  v395 = v392 ^ v267;
  STACK[0xD290] = v259 + 4 * ((v392 ^ v267) >> 8);
  v396 = *(v259 + 4 * ((v392 ^ v267) >> 8));
  v397 = v394 ^ LODWORD(STACK[0x5750]) ^ v246 ^ 0xE44D95A8;
  STACK[0xD290] = v259 + 4 * BYTE1(v397);
  v398 = LODWORD(STACK[0x50B8]) ^ LODWORD(STACK[0x50F0]);
  v399 = v398 ^ LODWORD(STACK[0x5090]) ^ __ROR4__(*(v259 + 4 * BYTE1(v397)), 8);
  v400 = LODWORD(STACK[0x5790]) + LODWORD(STACK[0x53C8]);
  v401 = v400 ^ LODWORD(STACK[0x5730]);
  LODWORD(STACK[0x53C8]) = v400;
  v402 = v391 ^ v401 ^ v246;
  STACK[0xD290] = v259 + 4 * BYTE1(v402);
  v403 = *(v259 + 4 * BYTE1(v402));
  STACK[0xD290] = v259 + 4 * HIBYTE(v402);
  v404 = v399 ^ __ROR4__(*(v259 + 4 * HIBYTE(v402)), 24);
  STACK[0xD290] = v259 + 4 * HIBYTE(v395);
  v405 = *(v259 + 4 * HIBYTE(v395));
  STACK[0xD290] = v259 + 4 * HIBYTE(v397);
  v406 = *(v259 + 4 * HIBYTE(v397));
  v407 = v393 ^ LODWORD(STACK[0x5740]);
  STACK[0xD290] = v259 + 4 * BYTE2(v407);
  v408 = *(v259 + 4 * BYTE2(v407));
  STACK[0xD290] = v259 + 4 * v407;
  v409 = v404 ^ __ROR4__(*(v259 + 4 * v407), 16);
  v410 = v398 ^ LODWORD(STACK[0x5088]) ^ __ROR4__(v403, 8) ^ __ROR4__(v406, 24);
  STACK[0xD290] = v259 + 4 * HIBYTE(v407);
  v411 = *(v259 + 4 * HIBYTE(v407));
  STACK[0xD290] = v259 + 4 * BYTE2(v397);
  v412 = *(v259 + 4 * BYTE2(v397));
  v413 = v398 ^ LODWORD(STACK[0x5080]) ^ __ROR4__(v396, 8);
  STACK[0xD290] = v259 + 4 * BYTE2(v402);
  v414 = *(v259 + 4 * BYTE2(v402));
  LODWORD(v382) = __ROR4__(v411, 24);
  v415 = BYTE1(v407);
  STACK[0xD290] = v259 + 4 * v415;
  v416 = *(v259 + 4 * v415);
  STACK[0xD290] = v259 + 4 * v402;
  v417 = *(v259 + 4 * v402);
  STACK[0xD290] = v259 + 4 * v395;
  v418 = *(v259 + 4 * v395);
  v419 = BYTE2(v395);
  STACK[0xD290] = v259 + 4 * v419;
  v420 = *(v259 + 4 * v419);
  STACK[0xD290] = v259 + 4 * v397;
  v421 = v413 ^ v382 ^ v414 ^ __ROR4__(*(v259 + 4 * v397), 16);
  v422 = v398 ^ LODWORD(STACK[0x4FC8]) ^ LODWORD(STACK[0x4FC0]) ^ __ROR4__(v405, 24) ^ v412 ^ __ROR4__(v416, 8) ^ __ROR4__(v417, 16) ^ LODWORD(STACK[0x5720]);
  STACK[0xD290] = v259 + 4 * BYTE1(v422);
  LODWORD(STACK[0x5350]) = v272;
  v423 = v409 ^ v420 ^ v272;
  v424 = *(v259 + 4 * BYTE1(v422));
  STACK[0xD290] = v259 + 4 * BYTE1(v423);
  v425 = *(v259 + 4 * BYTE1(v423));
  v426 = v421 ^ LODWORD(STACK[0x5700]);
  STACK[0xD290] = v259 + 4 * BYTE1(v426);
  v427 = v410 ^ v408;
  v428 = *(v259 + 4 * BYTE1(v426));
  STACK[0xD290] = v259 + 4 * v422;
  v429 = *(v259 + 4 * v422);
  v430 = v427 ^ __ROR4__(v418, 16) ^ LODWORD(STACK[0x5710]);
  STACK[0xD290] = v259 + 4 * BYTE1(v430);
  v431 = *(v259 + 4 * BYTE1(v430));
  STACK[0xD290] = v259 + 4 * v426;
  v432 = *(v259 + 4 * v426);
  STACK[0xD290] = v259 + 4 * HIBYTE(v423);
  v433 = *(v259 + 4 * HIBYTE(v423));
  STACK[0xD290] = v259 + 4 * BYTE2(v426);
  v434 = *(v259 + 4 * BYTE2(v426));
  STACK[0xD290] = v259 + 4 * v430;
  v435 = *(v259 + 4 * v430);
  STACK[0xD290] = v259 + 4 * HIBYTE(v430);
  v436 = *(v259 + 4 * HIBYTE(v430));
  STACK[0xD290] = v259 + 4 * BYTE2(v423);
  v437 = *(v259 + 4 * BYTE2(v423));
  STACK[0xD290] = v259 + 4 * v423;
  v438 = *(v259 + 4 * v423);
  v439 = STACK[0x5108];
  v440 = STACK[0x50C0];
  v441 = LODWORD(STACK[0x5108]) ^ LODWORD(STACK[0x50C0]) ^ LODWORD(STACK[0x5078]) ^ __ROR4__(v428, 8);
  v442 = BYTE2(v430);
  STACK[0xD290] = v259 + 4 * v442;
  v443 = *(v259 + 4 * v442);
  LODWORD(v382) = __ROR4__(v438, 16);
  STACK[0xD290] = v259 + 4 * BYTE2(v422);
  v444 = *(v259 + 4 * BYTE2(v422));
  v422 >>= 24;
  STACK[0xD290] = v259 + 4 * v422;
  v445 = v441 ^ v382 ^ v443 ^ __ROR4__(*(v259 + 4 * v422), 24);
  v446 = LODWORD(STACK[0x4FB0]) ^ v440 ^ v439 ^ LODWORD(STACK[0x5130]) ^ LODWORD(STACK[0x5138]) ^ LODWORD(STACK[0x5118]) ^ __ROR4__(v425, 8) ^ __ROR4__(v429, 16) ^ v434 ^ __ROR4__(v436, 24);
  v447 = v439 ^ v440 ^ LODWORD(STACK[0x4FA8]) ^ LODWORD(STACK[0x4FB8]) ^ __ROR4__(v431, 8) ^ __ROR4__(v432, 16);
  v448 = v439 ^ v440 ^ LODWORD(STACK[0x5070]) ^ __ROR4__(v424, 8);
  v426 >>= 24;
  STACK[0xD290] = v259 + 4 * v426;
  v449 = v448 ^ __ROR4__(v435, 16) ^ v437;
  LODWORD(v382) = __ROR4__(*(v259 + 4 * v426), 24);
  v450 = v449 ^ v382 ^ LODWORD(STACK[0x56D0]);
  v451 = (v449 ^ v382 ^ LOBYTE(STACK[0x56D0]));
  STACK[0xD290] = v259 + 4 * v451;
  v452 = *(v259 + 4 * v451);
  v453 = v445 ^ LODWORD(STACK[0x56F0]);
  STACK[0xD290] = v259 + 4 * BYTE2(v453);
  v454 = v447 ^ __ROR4__(v433, 24) ^ v444 ^ LODWORD(STACK[0x56C0]);
  v455 = *(v259 + 4 * BYTE2(v453));
  STACK[0xD290] = v259 + 4 * BYTE2(v454);
  v456 = *(v259 + 4 * BYTE2(v454));
  STACK[0xD290] = v259;
  v457 = *(v259 + 4 * BYTE2(v450));
  v458 = v446 ^ LODWORD(STACK[0x56E0]);
  STACK[0xD290] = v259 + 4 * BYTE1(v458);
  v459 = *(v259 + 4 * BYTE1(v458));
  STACK[0xD290] = v259 + 4 * v454;
  v460 = *(v259 + 4 * v454);
  STACK[0xD290] = v259 + 4 * v458;
  v461 = *(v259 + 4 * v458);
  STACK[0xD290] = v259 + 4 * BYTE1(v454);
  v462 = *(v259 + 4 * BYTE1(v454));
  v463 = STACK[0x5328];
  v464 = LODWORD(STACK[0x5110]) ^ LODWORD(STACK[0x5328]);
  v465 = v464 ^ LODWORD(STACK[0x5068]) ^ __ROR4__(v452, 16);
  STACK[0xD290] = v259 + 4 * HIBYTE(v453);
  v466 = *(v259 + 4 * HIBYTE(v453));
  STACK[0xD290] = v259 + 4 * BYTE1(v450);
  v467 = v465 ^ v455;
  v468 = *(v259 + 4 * BYTE1(v450));
  v469 = v467 ^ __ROR4__(v459, 8);
  STACK[0xD290] = v259 + 4 * v453;
  v470 = *(v259 + 4 * v453);
  v454 >>= 24;
  STACK[0xD290] = v259 + 4 * v454;
  v471 = v469 ^ __ROR4__(*(v259 + 4 * v454), 24);
  v472 = v464 ^ LODWORD(STACK[0x4F98]) ^ v457 ^ __ROR4__(v462, 8) ^ __ROR4__(v470, 16);
  v450 >>= 24;
  STACK[0xD290] = v259 + 4 * v450;
  v473 = *(v259 + 4 * v450);
  STACK[0xD290] = v259 + 4 * BYTE2(v458);
  v474 = *(v259 + 4 * BYTE2(v458));
  v475 = BYTE1(v453);
  STACK[0xD290] = v259 + 4 * v475;
  v458 >>= 24;
  v476 = *(v259 + 4 * v475);
  STACK[0xD290] = v259 + 4 * v458;
  v477 = v472 ^ __ROR4__(*(v259 + 4 * v458), 24);
  v478 = v464 ^ LODWORD(STACK[0x4F90]) ^ LODWORD(STACK[0x4FA0]) ^ __ROR4__(v460, 16) ^ __ROR4__(v466, 24) ^ __ROR4__(v468, 8);
  v479 = v464 ^ LODWORD(STACK[0x5060]) ^ v456 ^ __ROR4__(v461, 16) ^ __ROR4__(v473, 24) ^ __ROR4__(v476, 8);
  v480 = v477 ^ LODWORD(STACK[0x5670]);
  STACK[0xD290] = v259 + 4 * BYTE1(v480);
  v481 = *(v259 + 4 * BYTE1(v480));
  v482 = v479 ^ LODWORD(STACK[0x5630]);
  STACK[0xD290] = v259 + 4 * BYTE1(v482);
  v483 = *(v259 + 4 * BYTE1(v482));
  v484 = v471 ^ LODWORD(STACK[0x5660]);
  STACK[0xD290] = v259 + 4 * (v471 ^ LOBYTE(STACK[0x5660]));
  v485 = *(v259 + 4 * v484);
  v486 = v478 ^ v474 ^ LODWORD(STACK[0x5680]);
  STACK[0xD290] = v259 + 4 * BYTE2(v486);
  HIDWORD(v382) = v481;
  LODWORD(v382) = v481;
  v487 = *(v259 + 4 * BYTE2(v486)) + (v382 >> 8) - 2 * (*(v259 + 4 * BYTE2(v486)) & (v382 >> 8));
  STACK[0xD290] = v259 + 4 * BYTE2(v482);
  v488 = *(v259 + 4 * BYTE2(v482));
  v489 = LODWORD(STACK[0x50C8]) ^ v439;
  v490 = v489 ^ LODWORD(STACK[0x5058]) ^ __ROR4__(v483, 8);
  STACK[0xD290] = v259;
  v491 = *(v259 + 4 * HIBYTE(v482));
  v492 = v490 ^ LODWORD(STACK[0x5650]) ^ __ROR4__(v485, 16);
  STACK[0xD290] = v259 + 4 * HIBYTE(v484);
  v493 = *(v259 + 4 * HIBYTE(v484));
  STACK[0xD290] = v259 + 4 * BYTE1(v486);
  v494 = *(v259 + 4 * BYTE1(v486));
  STACK[0xD290] = v259 + 4 * HIBYTE(v486);
  v495 = v492 ^ __ROR4__(*(v259 + 4 * HIBYTE(v486)), 24);
  STACK[0xD290] = v259 + 4 * BYTE1(v484);
  v496 = *(v259 + 4 * BYTE1(v484));
  v497 = v489 ^ LODWORD(STACK[0x5050]) ^ LODWORD(STACK[0x5620]) ^ __ROR4__(v491, 24);
  STACK[0xD290] = v259 + 4 * v486;
  v498 = *(v259 + 4 * v486);
  STACK[0xD290] = v259 + 4 * v480;
  v499 = v497 ^ __ROR4__(v494, 8) ^ __ROR4__(*(v259 + 4 * v480), 16);
  v500 = v489 ^ LODWORD(STACK[0x5048]) ^ LODWORD(STACK[0x4DE8]) ^ LODWORD(STACK[0x4F88]) ^ LODWORD(STACK[0x5610]) ^ v487 ^ __ROR4__(v493, 24);
  STACK[0xD290] = v259 + 4 * v482;
  v501 = v500 ^ __ROR4__(*(v259 + 4 * v482), 16);
  v502 = BYTE2(v484);
  STACK[0xD290] = v259 + 4 * v502;
  v503 = *(v259 + 4 * v502);
  STACK[0xD290] = v259 + 4 * HIBYTE(v480);
  v504 = *(v259 + 4 * HIBYTE(v480));
  v505 = BYTE2(v480);
  STACK[0xD290] = v259 + 4 * v505;
  v506 = *(v259 + 4 * v505);
  STACK[0xD290] = v259 + 4 * v501;
  v507 = v499 ^ v503;
  v508 = *(v259 + 4 * v501);
  STACK[0xD290] = v259 + 4 * v507;
  v509 = v489 ^ LODWORD(STACK[0x4F80]) ^ LODWORD(STACK[0x5640]) ^ v488;
  v510 = *(v259 + 4 * v507);
  STACK[0xD290] = v259 + 4 * BYTE1(v501);
  v511 = *(v259 + 4 * BYTE1(v501));
  STACK[0xD290] = v259 + 4 * BYTE1(v507);
  v512 = *(v259 + 4 * BYTE1(v507));
  v513 = v509 ^ __ROR4__(v496, 8) ^ __ROR4__(v498, 16) ^ __ROR4__(v504, 24);
  STACK[0xD290] = v259 + 4 * HIBYTE(v513);
  v514 = *(v259 + 4 * HIBYTE(v513));
  v515 = v495 ^ v506;
  v516 = (v495 ^ v506) >> 24;
  STACK[0xD290] = v259 + 4 * v516;
  v517 = *(v259 + 4 * v516);
  STACK[0xD290] = v259 + 4 * BYTE1(v515);
  v518 = *(v259 + 4 * BYTE1(v515));
  STACK[0xD290] = v259 + 4 * BYTE2(v501);
  v519 = *(v259 + 4 * BYTE2(v501));
  STACK[0xD290] = v259 + 4 * BYTE1(v513);
  v520 = *(v259 + 4 * BYTE1(v513));
  v521 = (v501 >> LODWORD(STACK[0x4F78]) >> LODWORD(STACK[0x4DE0]));
  STACK[0xD290] = v259 + 4 * v521;
  v522 = *(v259 + 4 * v521);
  STACK[0xD290] = v259 + 4 * v513;
  v523 = *(v259 + 4 * v513);
  v524 = BYTE2(v513);
  STACK[0xD290] = v259 + 4 * v524;
  v525 = *(v259 + 4 * v524);
  STACK[0xD290] = v259 + 4 * BYTE2(v507);
  v526 = *(v259 + 4 * BYTE2(v507));
  STACK[0xD290] = v259 + 4 * v515;
  v507 >>= 24;
  v527 = *(v259 + 4 * v515);
  STACK[0xD290] = v259 + 4 * v507;
  v528 = *(v259 + 4 * v507);
  v529 = BYTE2(v515);
  STACK[0xD290] = v259 + 4 * v529;
  HIDWORD(v382) = v514;
  LODWORD(v382) = v514;
  v530 = (v382 >> 24) ^ __ROR4__(v511, 8) ^ v526;
  LODWORD(v382) = __ROR4__(v527, 16);
  LODWORD(STACK[0x53A0]) = v530 ^ v382;
  v531 = *(v259 + 4 * v529);
  v532 = STACK[0x50F8];
  v533 = v532 ^ v439;
  v534 = LODWORD(STACK[0x50F8]) ^ v439 ^ LODWORD(STACK[0x5038]) ^ LODWORD(STACK[0x55F0]) ^ v530 ^ v382;
  STACK[0xD290] = v259 + 4 * v534;
  v535 = v519 ^ __ROR4__(v518, 8) ^ __ROR4__(v523, 16);
  v536 = __PAIR64__(v512, __ROR4__(v528, 24));
  LODWORD(STACK[0x53A8]) = v535 ^ v536;
  v537 = *(v259 + 4 * v534);
  v538 = v532 ^ v439 ^ LODWORD(STACK[0x5030]) ^ LODWORD(STACK[0x55E0]) ^ v535 ^ v536;
  STACK[0xD290] = v259 + 4 * BYTE2(v538);
  LODWORD(v536) = v512;
  v539 = (v536 >> 8) ^ __ROR4__(v508, 16);
  v540 = __PAIR64__(v520, __ROR4__(v517, 24));
  v541 = v539 ^ v540 ^ v525;
  LODWORD(v540) = v520;
  LODWORD(STACK[0x5370]) = v367;
  v542 = ((v540 >> 8) ^ __ROR4__(v510, 16) ^ __ROR4__(v522, 24) ^ v531) + v367 - v246;
  v543 = *(v259 + 4 * BYTE2(v538));
  STACK[0xD290] = v259;
  v544 = v541 - v400 + v246;
  v545 = v532 ^ v439 ^ LODWORD(STACK[0x5040]) ^ LODWORD(STACK[0x5600]) ^ v544;
  v546 = v544;
  LODWORD(STACK[0x5308]) = v544;
  v547 = *(v259 + 4 * HIBYTE(v545));
  v548 = v532 ^ v439 ^ LODWORD(STACK[0x4EC8]) ^ LODWORD(STACK[0x4F70]) ^ LODWORD(STACK[0x55D0]) ^ v542;
  v549 = v542;
  LODWORD(STACK[0x5318]) = v542;
  STACK[0xD290] = v259 + 4 * HIBYTE(v548);
  v550 = *(v259 + 4 * HIBYTE(v548));
  STACK[0xD290] = v259 + 4 * BYTE1(v545);
  v551 = *(v259 + 4 * BYTE1(v545));
  STACK[0xD290] = v259 + 4 * v545;
  v552 = *(v259 + 4 * v545);
  STACK[0xD290] = v259 + 4 * v538;
  v553 = *(v259 + 4 * v538);
  v554 = BYTE2(v545);
  STACK[0xD290] = v259 + 4 * v554;
  v555 = *(v259 + 4 * v554);
  STACK[0xD290] = v259 + 4 * BYTE1(v534);
  v556 = *(v259 + 4 * BYTE1(v534));
  STACK[0xD290] = v259 + 4 * BYTE1(v538);
  v557 = *(v259 + 4 * BYTE1(v538));
  STACK[0xD290] = v259 + 4 * v548;
  v558 = *(v259 + 4 * v548);
  STACK[0xD290] = v259 + 4 * BYTE2(v534);
  v559 = *(v259 + 4 * BYTE2(v534));
  v538 >>= 24;
  STACK[0xD290] = v259 + 4 * v538;
  v560 = *(v259 + 4 * v538);
  STACK[0xD290] = v259 + 4 * BYTE2(v548);
  v561 = *(v259 + 4 * BYTE2(v548));
  STACK[0xD290] = v259 + 4 * BYTE1(v548);
  v534 >>= 24;
  v562 = *(v259 + 4 * BYTE1(v548));
  STACK[0xD290] = v259 + 4 * v534;
  v563 = LODWORD(STACK[0x50D8]) ^ v385;
  v564 = v563 ^ LODWORD(STACK[0x4F50]) ^ LODWORD(STACK[0x5590]) ^ __ROR4__(v550, 24) ^ __ROR4__(v553, 16) ^ v555 ^ __ROR4__(v556, 8);
  v565 = *(v259 + 4 * v534);
  STACK[0xD290] = v259 + 4 * BYTE2(v564);
  v566 = v563 ^ LODWORD(STACK[0x4E90]) ^ LODWORD(STACK[0x4F68]) ^ LODWORD(STACK[0x55B0]) ^ v543 ^ __ROR4__(v552, 16) ^ __ROR4__(v562, 8);
  v567 = *(v259 + 4 * BYTE2(v564));
  STACK[0xD290] = v259;
  v568 = *(v259 + 4 * BYTE1(v564));
  v569 = v566 ^ __ROR4__(v565, 24);
  STACK[0xD290] = v259 + 4 * HIBYTE(v569);
  v570 = v563 ^ LODWORD(STACK[0x4F58]) ^ LODWORD(STACK[0x55C0]) ^ __ROR4__(v547, 24) ^ __ROR4__(v557, 8) ^ __ROR4__(v558, 16) ^ v559;
  v571 = *(v259 + 4 * HIBYTE(v569));
  STACK[0xD290] = v259 + 4 * HIBYTE(v570);
  v572 = *(v259 + 4 * HIBYTE(v570));
  STACK[0xD290] = v259 + 4 * v564;
  v573 = v563 ^ LODWORD(STACK[0x4F60]) ^ LODWORD(STACK[0x4EA0]) ^ LODWORD(STACK[0x55A0]) ^ __ROR4__(v537, 16) ^ __ROR4__(v551, 8) ^ __ROR4__(v560, 24) ^ v561;
  v574 = *(v259 + 4 * v564);
  STACK[0xD290] = v259 + 4 * BYTE2(v573);
  v575 = *(v259 + 4 * BYTE2(v573));
  STACK[0xD290] = v259 + 4 * BYTE2(v569);
  v576 = *(v259 + 4 * BYTE2(v569));
  STACK[0xD290] = v259 + 4 * BYTE2(v570);
  v577 = *(v259 + 4 * BYTE2(v570));
  STACK[0xD290] = v259;
  v578 = *(v259 + 4 * v570);
  STACK[0xD290] = v259 + 4 * BYTE1(v569);
  v579 = *(v259 + 4 * BYTE1(v569));
  STACK[0xD290] = v259 + 4 * BYTE1(v573);
  v580 = *(v259 + 4 * BYTE1(v573));
  STACK[0xD290] = v259 + 4 * HIBYTE(v573);
  v581 = *(v259 + 4 * HIBYTE(v573));
  STACK[0xD290] = v259 + 4 * v573;
  v582 = *(v259 + 4 * v573);
  STACK[0xD290] = v259 + 4 * v569;
  v583 = *(v259 + 4 * v569);
  STACK[0xD290] = v259 + 4 * BYTE1(v570);
  v564 >>= 24;
  v584 = *(v259 + 4 * BYTE1(v570));
  STACK[0xD290] = v259 + 4 * v564;
  v585 = STACK[0x5330];
  v586 = LODWORD(STACK[0x5330]) ^ v532;
  v587 = v586 ^ LODWORD(STACK[0x4F38]);
  v588 = v587 ^ LODWORD(STACK[0x4F20]) ^ LODWORD(STACK[0x54A0]) ^ v567 ^ __ROR4__(v581, 24) ^ __ROR4__(v583, 16) ^ __ROR4__(v584, 8);
  v589 = *(v259 + 4 * v564);
  STACK[0xD290] = v259 + 4 * HIBYTE(v588);
  v590 = v586 ^ LODWORD(STACK[0x4DD8]) ^ LODWORD(STACK[0x5580]) ^ __ROR4__(v572, 24) ^ __ROR4__(v574, 16) ^ v576;
  LODWORD(v540) = __ROR4__(v580, 8);
  v591 = v590 ^ v540;
  v592 = *(v259 + 4 * HIBYTE(v588));
  v593 = ((v590 ^ v540) >> 8);
  STACK[0xD290] = v259 + 4 * v593;
  v594 = *(v259 + 4 * v593);
  STACK[0xD290] = v259 + 4 * BYTE2(v588);
  v595 = STACK[0x54F0];
  v596 = v586 ^ LODWORD(STACK[0x4F40]) ^ LODWORD(STACK[0x4F28]) ^ LODWORD(STACK[0x54F0]) ^ __ROR4__(v568, 8) ^ __ROR4__(v571, 24) ^ v575;
  v597 = *(v259 + 4 * BYTE2(v588));
  STACK[0xD290] = v259;
  v598 = *(v259 + 4 * BYTE2(v591));
  v599 = v596 ^ __ROR4__(v578, 16);
  STACK[0xD290] = v259 + 4 * BYTE2(v599);
  v600 = v587 ^ LODWORD(STACK[0x4F30]) ^ LODWORD(STACK[0x5480]) ^ v577 ^ __ROR4__(v579, 8) ^ __ROR4__(v582, 16) ^ __ROR4__(v589, 24);
  v601 = *(v259 + 4 * BYTE2(v599));
  STACK[0xD290] = v259;
  v602 = *(v259 + 4 * BYTE1(v600));
  STACK[0xD290] = v259 + 4 * HIBYTE(v599);
  v603 = *(v259 + 4 * HIBYTE(v599));
  STACK[0xD290] = v259 + 4 * (v588 >> (v595 & 8) >> (v595 & 8 ^ 8));
  v604 = *(v259 + 4 * (v588 >> (v595 & 8) >> (v595 & 8 ^ 8)));
  STACK[0xD290] = v259 + 4 * BYTE1(v599);
  v605 = *(v259 + 4 * BYTE1(v599));
  STACK[0xD290] = v259 + 4 * v599;
  v606 = *(v259 + 4 * v599);
  STACK[0xD290] = v259 + 4 * v600;
  v607 = *(v259 + 4 * v600);
  STACK[0xD290] = v259 + 4 * v588;
  v608 = *(v259 + 4 * v588);
  STACK[0xD290] = v259 + 4 * HIBYTE(v600);
  v609 = *(v259 + 4 * HIBYTE(v600));
  v610 = v591;
  STACK[0xD290] = v259 + 4 * v591;
  v591 >>= 24;
  v611 = *(v259 + 4 * v610);
  STACK[0xD290] = v259 + 4 * v591;
  v612 = *(v259 + 4 * v591);
  v613 = BYTE2(v600);
  STACK[0xD290] = v259 + 4 * v613;
  v614 = *(v259 + 4 * v613);
  STACK[0xD290] = v259;
  v615 = v585 ^ v463;
  v616 = v585 ^ v463 ^ LODWORD(STACK[0x4F00]);
  LODWORD(STACK[0x5320]) = v616;
  v617 = v616 ^ LODWORD(STACK[0x4F18]);
  LODWORD(STACK[0x5340]) = v332;
  v618 = v617 ^ v332 ^ v597 ^ __ROR4__(v602, 8) ^ __ROR4__(v603, 24) ^ __ROR4__(v611, 16);
  v619 = STACK[0xD2A8];
  STACK[0xD2A8] += 4 * BYTE1(v618);
  v620 = v585 ^ v463 ^ LODWORD(STACK[0x4EF0]) ^ LODWORD(STACK[0x5440]) ^ v598 ^ __ROR4__(v605, 8) ^ __ROR4__(v608, 16) ^ __ROR4__(v609, 24);
  LODWORD(STACK[0x5300]) = *(v619 + 4 * BYTE1(v618));
  STACK[0xD2A8] = v619 + 4 * v620;
  v621 = v585 ^ v463 ^ LODWORD(STACK[0x4E50]) ^ LODWORD(STACK[0x5490]) ^ v601 ^ __ROR4__(v604, 8) ^ __ROR4__(v607, 16) ^ __ROR4__(v612, 24);
  LODWORD(STACK[0x5310]) = *(v619 + 4 * v620);
  STACK[0xD2A8] = v619 + 4 * BYTE1(v621);
  v622 = v585 ^ v463 ^ LODWORD(STACK[0x4EE0]);
  LODWORD(STACK[0x5338]) = v229;
  v623 = v622 ^ v229 ^ __ROR4__(v592, 24) ^ __ROR4__(v594, 8) ^ __ROR4__(v606, 16) ^ v614;
  LODWORD(STACK[0x52E0]) = *(v619 + 4 * BYTE1(v621));
  STACK[0xD2A8] = v619 + 4 * v623;
  LODWORD(STACK[0x52E8]) = *(v619 + 4 * v623);
  STACK[0xD2A8] = v619 + 4 * HIBYTE(v621);
  LODWORD(STACK[0x52F8]) = *(v619 + 4 * HIBYTE(v621));
  STACK[0xD2A8] = v619 + 4 * v621;
  LODWORD(STACK[0x5238]) = *(v619 + 4 * HIBYTE(v618));
  LODWORD(STACK[0x52D8]) = *(v619 + 4 * HIBYTE(v620));
  v624 = *(v619 + 4 * BYTE2(v620));
  v625 = *(v619 + 4 * v618);
  v626 = *(v619 + 4 * BYTE1(v620));
  LODWORD(STACK[0x5240]) = *(v619 + 4 * BYTE1(v623));
  LODWORD(STACK[0x52D0]) = *(v619 + 4 * BYTE2(v618));
  v627 = *(v619 + 4 * BYTE2(v621));
  v628 = *(v619 + 4 * BYTE2(v623));
  v629 = *(v619 + 4 * v621);
  STACK[0xD2A8] = v619 + 4 * HIBYTE(v623);
  v630 = *(v619 + 4 * HIBYTE(v623));
  v631 = v533 ^ LODWORD(STACK[0x4EB8]) ^ LODWORD(STACK[0x5570]) ^ v546;
  v632 = STACK[0xD290];
  STACK[0xD290] += 4 * BYTE2(v631);
  v633 = *(v632 + 4 * BYTE2(v631));
  STACK[0xD290] = v632;
  v634 = v533 ^ LODWORD(STACK[0x4EB0]) ^ LODWORD(STACK[0x4EC0]) ^ LODWORD(STACK[0x5560]) ^ LODWORD(STACK[0x53A0]);
  v635 = v533 ^ LODWORD(STACK[0x4ED8]) ^ LODWORD(STACK[0x4EA8]) ^ LODWORD(STACK[0x5540]) ^ v549;
  v636 = *(v632 + 4 * BYTE1(v634));
  STACK[0xD290] = v632 + 4 * BYTE2(v635);
  v637 = *(v632 + 4 * BYTE2(v635));
  STACK[0xD290] = v632;
  v638 = v533 ^ LODWORD(STACK[0x4ED0]) ^ LODWORD(STACK[0x5550]) ^ LODWORD(STACK[0x53A8]);
  v639 = *(v632 + 4 * BYTE2(v638));
  STACK[0xD290] = v632 + 4 * BYTE1(v635);
  v640 = *(v632 + 4 * BYTE1(v635));
  STACK[0xD290] = v632 + 4 * BYTE1(v631);
  v641 = *(v632 + 4 * BYTE1(v631));
  STACK[0xD290] = v632 + 4 * HIBYTE(v635);
  v642 = *(v632 + 4 * HIBYTE(v635));
  STACK[0xD290] = v632 + 4 * BYTE2(v634);
  v643 = *(v632 + 4 * BYTE2(v634));
  STACK[0xD290] = v632;
  v644 = *(v632 + 4 * v635);
  STACK[0xD290] = v632 + 4 * HIBYTE(v634);
  v645 = *(v632 + 4 * HIBYTE(v634));
  STACK[0xD290] = v632 + 4 * HIBYTE(v631);
  v646 = *(v632 + 4 * HIBYTE(v631));
  STACK[0xD290] = v632 + 4 * BYTE1(v638);
  v647 = *(v632 + 4 * BYTE1(v638));
  STACK[0xD2A8] = v619;
  STACK[0xD290] = v632 + 4 * HIBYTE(v638);
  v648 = *(v632 + 4 * HIBYTE(v638));
  STACK[0xD290] = v632 + 4 * v634;
  v649 = *(v632 + 4 * v634);
  STACK[0xD290] = v632 + 4 * v631;
  v650 = *(v632 + 4 * v631);
  STACK[0xD290] = v632 + 4 * v638;
  v651 = v563 ^ LODWORD(STACK[0x4E98]) ^ LODWORD(STACK[0x5500]) ^ v633 ^ __ROR4__(v636, 8) ^ __ROR4__(v642, 24) ^ __ROR4__(*(v632 + 4 * v638), 16);
  STACK[0xD290] = v632 + 4 * BYTE2(v651);
  LODWORD(v619) = v563 ^ LODWORD(STACK[0x4DD0]) ^ LODWORD(STACK[0x5510]) ^ v637 ^ __ROR4__(v641, 8) ^ __ROR4__(v648, 24);
  LODWORD(v540) = __ROR4__(v649, 16);
  v652 = v619 ^ v540;
  v653 = *(v632 + 4 * BYTE2(v651));
  STACK[0xD290] = v632;
  v654 = *(v632 + 4 * (v619 ^ v540));
  STACK[0xD290] = v632 + 4 * ((v619 ^ v540) >> 24);
  v655 = v563 ^ LODWORD(STACK[0x4E88]) ^ LODWORD(STACK[0x4E80]) ^ LODWORD(STACK[0x5520]) ^ v639 ^ __ROR4__(v640, 8) ^ __ROR4__(v645, 24) ^ __ROR4__(v650, 16);
  v656 = *(v632 + 4 * HIBYTE(v652));
  STACK[0xD290] = v632 + 4 * v655;
  v657 = v563 ^ LODWORD(STACK[0x4E78]) ^ LODWORD(STACK[0x5530]) ^ v643 ^ __ROR4__(v644, 16) ^ __ROR4__(v646, 24) ^ __ROR4__(v647, 8);
  v658 = *(v632 + 4 * v655);
  STACK[0xD290] = v632 + 4 * v657;
  v659 = STACK[0x5188];
  v660 = LODWORD(STACK[0x5140]) ^ LODWORD(STACK[0x5158]);
  LODWORD(STACK[0x52F0]) = v660;
  v661 = v659 ^ 0x6DA6B3CB ^ v660;
  v662 = v661 ^ LODWORD(STACK[0x5400]) ^ __ROR4__(STACK[0x5238], 16) ^ v626 ^ __ROR4__(v628, 24) ^ __ROR4__(v629, 8);
  v663 = v661 ^ LODWORD(STACK[0x53E8]) ^ __ROR4__(v624, 24) ^ __ROR4__(v625, 8) ^ LODWORD(STACK[0x52E0]) ^ __ROR4__(v630, 16);
  v664 = v661 ^ LODWORD(STACK[0x53D0]) ^ __ROR4__(STACK[0x52D8], 16) ^ __ROR4__(v627, 24) ^ LODWORD(STACK[0x5300]) ^ __ROR4__(STACK[0x52E8], 8);
  v665 = *(v632 + 4 * v657);
  v666 = v661 ^ LODWORD(STACK[0x5408]) ^ LODWORD(STACK[0x5240]) ^ __ROR4__(STACK[0x52D0], 24);
  STACK[0xD290] = v632 + 4 * v651;
  v667 = *(v632 + 4 * v651);
  v668 = v666 ^ __ROR4__(STACK[0x5310], 8);
  STACK[0xD290] = v632 + 4 * BYTE1(v657);
  v669 = *(v632 + 4 * BYTE1(v657));
  v670 = v668 ^ __ROR4__(STACK[0x52F8], 16);
  STACK[0xD290] = v632 + 4 * HIBYTE(v657);
  v671 = *(v632 + 4 * HIBYTE(v657));
  STACK[0xD290] = v632 + 4 * HIBYTE(v655);
  v672 = *(v632 + 4 * HIBYTE(v655));
  STACK[0xD290] = v632 + 4 * BYTE2(v652);
  v673 = STACK[0x53C8];
  if (STACK[0x53C8])
  {
    v674 = v662;
  }

  else
  {
    v674 = v663;
  }

  LODWORD(STACK[0x52F8]) = v674;
  if (v673)
  {
    v675 = v664;
  }

  else
  {
    v675 = v670;
  }

  LODWORD(STACK[0x5300]) = v675;
  if ((v673 & 2) == 0)
  {
    v675 = v674;
  }

  LODWORD(STACK[0x5310]) = v675;
  v676 = *(v632 + 4 * BYTE2(v652));
  STACK[0xD290] = v632 + 4 * (v655 >> (v675 & 8) >> (v675 & 8 ^ 8));
  v677 = *(v632 + 4 * (v655 >> (v675 & 8) >> (v675 & 8 ^ 8)));
  v678 = BYTE2(v657);
  STACK[0xD290] = v632 + 4 * v678;
  v679 = *(v632 + 4 * v678);
  v680 = BYTE1(v651);
  STACK[0xD290] = v632 + 4 * BYTE1(v651);
  v681 = HIBYTE(v651);
  v682 = *(v632 + 4 * v680);
  STACK[0xD290] = v632 + 4 * v681;
  v683 = *(v632 + 4 * v681);
  v684 = BYTE1(v652);
  STACK[0xD290] = v632 + 4 * v684;
  v685 = *(v632 + 4 * v684);
  v686 = BYTE2(v655);
  STACK[0xD290] = v632 + 4 * v686;
  v687 = LODWORD(STACK[0x5028]) >> (BYTE2(v667) & 1) >> !(v667 & 0x10000);
  v688 = v586 ^ LODWORD(STACK[0x54D0]) ^ __ROR4__(v667, 16) ^ __ROR4__(v671, 24) ^ (((LODWORD(STACK[0x4E08]) ^ 0xD45F463A ^ (v687 ^ 0x3ECC8D) & STACK[0x4E10]) << STACK[0x5380]) | (((v687 ^ 0xD4618AB7) & STACK[0x57A0]) >> LODWORD(STACK[0x57B0]))) ^ __ROR4__(v685, 8) ^ *(v632 + 4 * v686);
  v689 = v586 ^ LODWORD(STACK[0x4E68]) ^ LODWORD(STACK[0x54B0]) ^ __ROR4__(v654, 16) ^ __ROR4__(v677, 8) ^ v679;
  v690 = v586 ^ LODWORD(STACK[0x4E70]) ^ LODWORD(STACK[0x4F48]) ^ LODWORD(STACK[0x54C0]) ^ v653 ^ __ROR4__(v656, 24) ^ __ROR4__(v658, 16) ^ __ROR4__(v669, 8);
  v691 = v586 ^ LODWORD(STACK[0x4E60]) ^ LODWORD(STACK[0x54E0]) ^ __ROR4__(v665, 16) ^ __ROR4__(v672, 24) ^ v676;
  v693 = __ROR4__(v682, 8);
  v692 = v691 ^ v693;
  v694 = ((v691 ^ v693) >> 8);
  STACK[0xD290] = v632 + 4 * v694;
  v695 = *(v632 + 4 * v694);
  STACK[0xD290] = v632 + 4 * BYTE2(v690);
  v696 = *(v632 + 4 * BYTE2(v690));
  STACK[0xD290] = v632;
  v697 = *(v632 + 4 * BYTE1(v688));
  v699 = __ROR4__(v683, 24);
  v698 = v689 ^ v699;
  STACK[0xD290] = v632 + 4 * ((v689 ^ v699) >> 16);
  v700 = *(v632 + 4 * ((v689 ^ v699) >> 16));
  STACK[0xD290] = v632 + 4 * (v689 ^ v699);
  v701 = *(v632 + 4 * (v689 ^ v699));
  STACK[0xD290] = v632 + 4 * v688;
  v702 = *(v632 + 4 * v688);
  STACK[0xD290] = v632 + 4 * HIBYTE(v690);
  v703 = *(v632 + 4 * HIBYTE(v690));
  STACK[0xD290] = v632 + 4 * BYTE2(v688);
  v704 = *(v632 + 4 * BYTE2(v688));
  v705 = -1277933061 - LODWORD(STACK[0x5308]);
  STACK[0xD290] = v632 + 4 * BYTE2(v692);
  v706 = *(v632 + 4 * BYTE2(v692));
  v707 = LODWORD(STACK[0x53A0]) ^ v705;
  STACK[0xD290] = v632 + 4 * v690;
  v708 = *(v632 + 4 * v690);
  STACK[0xD290] = v632 + 4 * v692;
  v709 = *(v632 + 4 * v692);
  v710 = v707 + 804680250 - LODWORD(STACK[0x53A8]);
  v711 = BYTE1(v690);
  STACK[0xD290] = v632 + 4 * v711;
  v712 = *(v632 + 4 * v711);
  STACK[0xD290] = v632 + 4 * HIBYTE(v698);
  v713 = *(v632 + 4 * HIBYTE(v698));
  v714 = BYTE1(v698);
  STACK[0xD290] = v632 + 4 * v714;
  v688 >>= 24;
  v715 = *(v632 + 4 * v714);
  STACK[0xD290] = v632 + 4 * v688;
  v692 >>= 24;
  v716 = *(v632 + 4 * v688);
  STACK[0xD290] = v632 + 4 * v692;
  v717 = *(v632 + 4 * v692);
  STACK[0xD290] = v632;
  v718 = v615 ^ LODWORD(STACK[0x4E38]) ^ LODWORD(STACK[0x5450]) ^ __ROR4__(v697, 8) ^ v700 ^ __ROR4__(v703, 24) ^ __ROR4__(v709, 16);
  v719 = v615 ^ LODWORD(STACK[0x4EE8]) ^ LODWORD(STACK[0x5460]) ^ v696 ^ __ROR4__(v702, 16) ^ __ROR4__(v715, 8) ^ __ROR4__(v717, 24);
  v720 = LODWORD(STACK[0x5320]) ^ LODWORD(STACK[0x4F08]) ^ LODWORD(STACK[0x5420]) ^ __ROR4__(v695, 8) ^ v704 ^ __ROR4__(v708, 16) ^ __ROR4__(v713, 24);
  v721 = LODWORD(STACK[0x4EF8]) ^ LODWORD(STACK[0x4F10]) ^ LODWORD(STACK[0x5330]) ^ __ROR4__(__ROR4__(LODWORD(STACK[0x5470]) ^ LODWORD(STACK[0x5328]) ^ __ROR4__(v701, 16) ^ v706 ^ __ROR4__(v712, 8) ^ __ROR4__(v716, 24), 26) ^ 0x726013EA, 6);
  v722 = STACK[0xD2A8];
  STACK[0xD2A8] += 4 * HIBYTE(v720);
  v723 = *(v722 + 4 * HIBYTE(v720));
  STACK[0xD2A8] = v722 + 4 * BYTE1(v719);
  v724 = *(v722 + 4 * BYTE1(v719));
  v725 = v721 ^ 0xA9C9804F;
  STACK[0xD2A8] = v722 + 4 * HIBYTE(v718);
  v726 = *(v722 + 4 * HIBYTE(v718));
  v727 = (v722 + 4 * ((v721 ^ 0xA9C9804F) >> 24));
  STACK[0xD2A8] = v727;
  v728 = *v727;
  if (v673)
  {
    v729 = v670;
  }

  else
  {
    v729 = v662;
  }

  v730 = (v722 + 4 * (v721 ^ 0x4Fu));
  STACK[0xD2A8] = v730;
  v731 = *v730;
  if (v673)
  {
    v732 = v663;
  }

  else
  {
    v732 = v664;
  }

  STACK[0xD2A8] = v722 + 4 * BYTE2(v725);
  v733 = *(v722 + 4 * BYTE2(v725));
  v734 = v710 + LODWORD(STACK[0x5318]);
  STACK[0xD2A8] = v722 + 4 * BYTE1(v725);
  v735 = *(v722 + 4 * BYTE1(v725));
  STACK[0xD2A8] = v722 + 4 * HIBYTE(v719);
  v736 = v659 ^ 0x36A0CB65 ^ LODWORD(STACK[0x52F0]);
  v737 = v736 ^ LODWORD(STACK[0x53F8]) ^ v734 ^ __ROR4__(*(v722 + 4 * BYTE2(v718)), 24) ^ *(v722 + 4 * BYTE1(v720)) ^ __ROR4__(v731, 8) ^ __ROR4__(*(v722 + 4 * HIBYTE(v719)), 16);
  v738 = v736 ^ LODWORD(STACK[0x53E0]) ^ v734 ^ __ROR4__(*(v722 + 4 * v720), 8) ^ *(v722 + 4 * BYTE1(v718)) ^ __ROR4__(*(v722 + 4 * BYTE2(v719)), 24) ^ __ROR4__(v728, 16);
  v739 = v736 ^ LODWORD(STACK[0x53D8]) ^ v734 ^ __ROR4__(*(v722 + 4 * BYTE2(v720)), 24) ^ __ROR4__(*(v722 + 4 * v719), 8) ^ __ROR4__(v726, 16) ^ v735;
  v740 = v736 ^ LODWORD(STACK[0x53F0]) ^ v734 ^ __ROR4__(*(v722 + 4 * v718), 8) ^ __ROR4__(v723, 16) ^ v724 ^ __ROR4__(v733, 24);
  if (v673)
  {
    v741 = v738;
  }

  else
  {
    v741 = v737;
  }

  if (v673)
  {
    v742 = v737;
  }

  else
  {
    v742 = v739;
  }

  if (v673)
  {
    v743 = v740;
  }

  else
  {
    v743 = v738;
  }

  if ((v673 & 1) == 0)
  {
    v739 = v740;
  }

  v744 = STACK[0x5300];
  if ((v673 & 2) != 0)
  {
    v744 = STACK[0x52F8];
    v745 = v732;
  }

  else
  {
    v745 = v729;
  }

  if ((v673 & 2) != 0)
  {
    v746 = v739;
  }

  else
  {
    v729 = v732;
    v746 = v741;
  }

  if ((v673 & 2) != 0)
  {
    v747 = v741;
  }

  else
  {
    v747 = v739;
  }

  v748 = v729 ^ v734;
  v749 = (1206862361 * (v729 ^ v734)) ^ v744 ^ (1206862361 * (v747 ^ 0x5B0678AE));
  v750 = v749 ^ v745;
  if ((v673 & 2) != 0)
  {
    v751 = v742;
  }

  else
  {
    v751 = v743;
  }

  v752 = v751 ^ v734;
  v753 = v751 ^ v734 ^ v750;
  v754 = (v734 ^ 0x5B0678AE) + 1;
  v755 = LODWORD(STACK[0x5310]) + 1973505975 * (v754 + (v746 ^ 0xA4F98751 ^ v753));
  v756 = *(&off_101353600 + LODWORD(STACK[0x57C0]) - 31015) - 12;
  v757 = STACK[0x5288];
  *(v757 + LODWORD(STACK[0x5260])) = v756[BYTE2(v755) ^ 0x1DLL] ^ (16 * (v756[BYTE2(v755) ^ 0x1DLL] ^ 2)) ^ (8 * (v756[BYTE2(v755) ^ 0x1DLL] ^ 2)) ^ 0x40;
  v758 = v746 ^ v734;
  v759 = v751 ^ v748 ^ v749;
  v760 = 1205902523 * ((v746 ^ v734) - v753) + 1046942531 * (v754 + (v759 ^ v747 ^ 0xA4F98751));
  v761 = *(&off_101353600 + (LODWORD(STACK[0x57C0]) ^ 0x7A45)) - 8;
  *(v757 + LODWORD(STACK[0x5248])) = v761[HIBYTE(v755) ^ 0xA8] ^ HIBYTE(v755) ^ 0x10;
  v762 = v750 ^ v751 ^ v747 ^ v759;
  *(v757 + LODWORD(STACK[0x5258])) = v761[((v762 ^ 0x5B0678AEu) >> 16) ^ 0xD4] ^ ((v762 ^ 0x5B0678AEu) >> 16) ^ 0x86;
  v763 = *(&off_101353600 + (LODWORD(STACK[0x57C0]) ^ 0x7AEA)) - 8;
  *(v757 + LODWORD(STACK[0x5280])) = v763[v762 ^ 0x42] ^ 0x56;
  if ((v673 & 2) != 0)
  {
    v742 = v743;
  }

  v764 = v742 ^ v734;
  v765 = (-229111043 * v753) ^ (-229111043 * v758) ^ (v760 + (v764 ^ 0x5B0678AE ^ v749 ^ v755));
  v766 = v756[HIBYTE(v765) ^ 0x84];
  *(v757 + STACK[0x53B0]) = v766 ^ (16 * (v766 ^ 2)) ^ (8 * (v766 ^ 2)) ^ 0xDC;
  *(v757 + LODWORD(STACK[0x5268])) = v756[BYTE1(v765) ^ 7] ^ (16 * (v756[BYTE1(v765) ^ 7] ^ 2)) ^ (8 * (v756[BYTE1(v765) ^ 7] ^ 2)) ^ 0x58;
  v767 = *(&off_101353600 + LODWORD(STACK[0x57C0]) - 31245) - 4;
  *(v757 + LODWORD(STACK[0x5250])) = v767[BYTE1(v755) ^ 0xC3] ^ 0x5B;
  *(v757 + LODWORD(STACK[0x5290])) = v763[BYTE2(v765) ^ 0x13] ^ 0x38;
  v768 = v752 ^ v765 ^ (356814549 * (v764 + (v755 ^ 0xA4F98751)) + 356814549 + (v759 ^ 0x5B0678AE));
  *(v757 + LODWORD(STACK[0x52A0])) = (((v763[BYTE1(v768) ^ 0x64] ^ 0x5F) - 27) ^ ((v763[BYTE1(v768) ^ 0x64] ^ 0x8E) + 54) ^ ((v763[BYTE1(v768) ^ 0x64] ^ 0x58) - 28)) + (HIBYTE(v768) ^ 0x5B) - (((HIBYTE(v768) ^ 0x46) - 5) ^ ((HIBYTE(v768) ^ 0x99) + 38) ^ ((HIBYTE(v768) ^ 0x84) + 57)) - 75;
  v769 = STACK[0xD2A0];
  v770 = STACK[0xD2A0];
  *(v769 + LODWORD(STACK[0x5298])) = v755 ^ 0xAE ^ v761[v755 ^ 0xF0];
  *(v769 + LODWORD(STACK[0x52B0])) = ((v762 ^ 0x5B0678AEu) >> 24) ^ v761[((v762 ^ 0x5B0678AEu) >> 24) ^ 0xE4] ^ 4;
  *(v769 + LODWORD(STACK[0x52C8])) = v767[v765 ^ 0x18] ^ 0x39;
  *(v769 + LODWORD(STACK[0x52C0])) = v756[BYTE1(v762) ^ 0x9DLL] ^ (16 * (v756[BYTE1(v762) ^ 0x9DLL] ^ 2)) ^ (8 * (v756[BYTE1(v762) ^ 0x9DLL] ^ 2)) ^ 0x3F;
  *(v769 + LODWORD(STACK[0x5270])) = v756[v768 ^ 0x96] ^ (16 * (v756[v768 ^ 0x96] ^ 2)) ^ (8 * (v756[v768 ^ 0x96] ^ 2)) ^ 0x5B;
  *(v769 + LODWORD(STACK[0x52A8])) = v763[BYTE2(v768) ^ 0xC3] ^ 0xBD;
  LOBYTE(v764) = v756[HIBYTE(v768) ^ 0xBELL];
  v771 = STACK[0x57C0];
  *(v770 + LODWORD(STACK[0x52B8])) = v764 ^ (16 * (v764 ^ 2)) ^ (8 * (v764 ^ 2)) ^ 0x3F;
  STACK[0xD2A8] = v722;
  v772 = (((LODWORD(STACK[0x5278]) ^ 0x531AA8DA) - 1394256090) ^ ((LODWORD(STACK[0x5278]) ^ 0xD9B2C2A4) + 642596188) ^ ((LODWORD(STACK[0x5278]) ^ 0x1F3B0C9D) - 523963549)) - 744861412;
  v773 = (v772 ^ 0xFDF58196) & (2 * (v772 & 0xC1F915D7)) ^ v772 & 0xC1F915D7;
  v774 = ((2 * (v772 ^ 0xFDB58838)) ^ 0x78993BDE) & (v772 ^ 0xFDB58838) ^ (2 * (v772 ^ 0xFDB58838)) & 0x3C4C9DEE;
  v775 = (v774 ^ 0x80819CC) & (4 * v773) ^ v773;
  v776 = ((4 * (v774 ^ 0x4448421)) ^ 0xF13277BC) & (v774 ^ 0x4448421) ^ (4 * (v774 ^ 0x4448421)) & 0x3C4C9DEC;
  v777 = (v776 ^ 0x300015A3) & (16 * v775) ^ v775;
  v778 = ((16 * (v776 ^ 0xC4C8843)) ^ 0xC4C9DEF0) & (v776 ^ 0xC4C8843) ^ (16 * (v776 ^ 0xC4C8843)) & 0x3C4C9DE0;
  v779 = v777 ^ 0x3C4C9DEF ^ (v778 ^ 0x4489C00) & (v777 << 8);
  v780 = v772 ^ (2 * ((v779 << 16) & 0x3C4C0000 ^ v779 ^ ((v779 << 16) ^ 0x1DEF0000) & (((v778 ^ 0x3804010F) << 8) & 0x3C4C0000 ^ 0x30400000 ^ (((v778 ^ 0x3804010F) << 8) ^ 0x4C9D0000) & (v778 ^ 0x3804010F))));
  v781 = (((v780 ^ 0xAD7DF4B9) + 1189692333) ^ ((v780 ^ 0x52EB01EC) - 1182812422) ^ ((v780 ^ 0x7E6EDB5C) - 1778750390)) + 340368460;
  v782 = v781 >= LODWORD(STACK[0x5020]);
  v783 = (LODWORD(STACK[0x5020]) < 0x7EB63569) ^ (v781 < 0x7EB63569);
  v784 = !v782;
  if (v783)
  {
    v785 = LODWORD(STACK[0x5020]) < 0x7EB63569;
  }

  else
  {
    v785 = v784;
  }

  return (*(STACK[0x57D8] + 8 * ((112 * !v785) ^ v771)))();
}

uint64_t sub_1005AEC54@<X0>(int a1@<W8>)
{
  v9 = *(STACK[0x57C0] + v7 + a1 * v6 - 5816 * (((((v7 + a1 * v6) >> 3) * v5) >> 32) >> 7));
  v10 = (((v9 ^ 0xACA8D69E) + 1398221154) ^ v9 ^ ((v9 ^ 0xD4E73959) + 723044007)) * v8 + 13853250;
  v11 = *(v2 + 4 * (v10 - (((v10 * v4) >> 32) >> 12) * v3));
  v12 = (((HIBYTE(v11) ^ 0x797FC579) - 878769257) ^ ((HIBYTE(v11) ^ 0xA7E2D1F2) + 352460574) ^ ((HIBYTE(v11) ^ 0xDE9D14E3) + 1820187149)) * v6 - 42227479;
  v13 = (((v11 ^ 0xD3D5450C) + 1732661291) ^ ((v11 ^ 0xE07A5FEE) + 1424575177) ^ ((v11 ^ 0x33AF1A68) - 2026107057)) * v6 - 439107598;
  v14 = *(STACK[0x57C0] + v12 - 5816 * ((((v12 >> 3) * v5) >> 32) >> 7));
  v15 = *(STACK[0x57C0] + (BYTE1(v11) ^ 0xB6) * v6 + 6213569 - 5816 * (((11815591 * ((BYTE1(v11) ^ 0xB6u) * v6 + 6213569)) >> 32) >> 4));
  v16 = (((((*(STACK[0x57C0] + (BYTE2(v11) ^ 0x4F) * v6 + 6213569 - 5816 * (((11815591 * ((BYTE2(v11) ^ 0x4Fu) * v6 + 6213569)) >> 32) >> 4)) << 8) ^ 0xEAC90B) & (v15 ^ 0xEFFF8C) | v15 & 0xF4) ^ 0x30B24) & ((v14 << 16) ^ 0x8FFFF) ^ (v14 << 16) & 0x160000) << 11;
  v17 = (v16 ^ 0x85908537) & ((v14 >> 5) ^ 0x959F9534) | v16 & 0x6A606800;
  v18 = *(STACK[0x57C0] + v13 - 5816 * ((((v13 >> 3) * v5) >> 32) >> 7));
  HIDWORD(v19) = v17 ^ 0xFDBFDD32;
  LODWORD(v19) = v17 ^ 0xFDBFDD32;
  *(v2 + 4 * (a1 * v8 + 9469466 - ((((a1 * v8 + 9469466) * v4) >> 32) >> 12) * v3)) = v18 & 0x57 ^ 0x9E4F4365 ^ (((v19 >> 3) - ((2 * (v19 >> 3)) & 0x53699A1A) - 1447768819) ^ 0x5FB438A5) & (v18 ^ 0xFFFFFF38);
  return (*(STACK[0x57D8] + 8 * ((217 * (a1 != 255)) ^ v1)))();
}

uint64_t sub_1005AEF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0x51B8];
  v8 = STACK[0x6DC0];
  *(v8 + 244) = STACK[0xB474];
  v9 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * (v7 - 21299));
  return (*(v9 + 8 * ((v7 ^ 0x577F) + v7 - 21299)))(v8 + 28, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1005AEFD4()
{
  LODWORD(STACK[0x98F4]) = -143113071;
  STACK[0x6230] = v1;
  LODWORD(STACK[0x6974]) = 1592049155;
  return (*(STACK[0x57D8] + 8 * (v0 - 17575)))();
}

uint64_t sub_1005AF170()
{
  v0 = STACK[0x51B8] - 6231;
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9192)))(2560);
  STACK[0xA848] = v2;
  return (*(v1 + 8 * ((32683 * (((v2 == 0) ^ LODWORD(STACK[0x419C])) & 1)) ^ v0)))();
}

uint64_t sub_1005AF20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = STACK[0x57D8];
  v9 = *(STACK[0x57D8] + 8 * (v7 + 16225));
  STACK[0x5560] = a7;
  v10 = v9(1028);
  STACK[0xD178] = v10;
  return (*(v8 + 8 * (((((v7 - 95) ^ (v10 == 0)) & 1) * (((v7 - 13450) | 0x5046) - 22610)) ^ v7)))();
}

uint64_t sub_1005AF360(uint64_t a1)
{
  v2 = STACK[0x8FE0];
  STACK[0xA3F0] = STACK[0x8FE0];
  STACK[0x7ED0] = v2;
  STACK[0xC880] = 0xD38CBDD3ACAFF842;
  LODWORD(STACK[0xCD80]) = -1179612432;
  return (*(STACK[0x57D8] + 8 * v1))(a1, 272629776, 410912332, 1543499262, 2265206393, 3965507692, 4221484704, 0x1B3EC18598D49E09);
}

uint64_t sub_1005AF5B4()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9207)))(v0);
  return (*(v1 + 8 * SLODWORD(STACK[0x1CC8])))(v2);
}

uint64_t sub_1005AF5E4()
{
  STACK[0x1D4C8] = STACK[0x4168];
  LODWORD(STACK[0x1D4C0]) = (v0 + 1717166459) ^ (1964904101 * ((~((v1 - 240) | 0x40863E47) + ((v1 - 240) & 0x40863E47)) ^ 0x455B2A3C));
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x6EF0)))(v1 - 240);
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_1005AF6D4()
{
  v0 = STACK[0x51B8] - 1805;
  v1 = STACK[0x51B8] - 19819;
  v2 = STACK[0x57D8];
  STACK[0xCF38] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v0 - 18524 + v1)))();
}

uint64_t sub_1005AF72C()
{
  v2 = STACK[0x983C];
  v3 = STACK[0x6A08];
  STACK[0xB420] = STACK[0xCBE0];
  LODWORD(STACK[0x8C54]) = v2;
  STACK[0x8EA0] = v3;
  *(v1 + 1160) = -746967315;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1005AF790@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x9538]) = v1;
  v2 = ((((v1 - a1) | (a1 - v1)) >> ((a1 + 45) ^ 0xF7 ^ (6 * (a1 ^ 0x28)))) & 1) == 0;
  LOBYTE(STACK[0x9AA3]) = v2;
  return (*(STACK[0x57D8] + 8 * (a1 ^ 0xF7787D6B ^ (7 * v2))))();
}

uint64_t sub_1005AF904(int a1, int a2)
{
  v5 = STACK[0x5208];
  v6 = STACK[0x51B0];
  HIDWORD(v7) = a2 ^ v2;
  LODWORD(v7) = a2 ^ v2;
  LODWORD(v7) = __ROR4__((v7 >> 9) ^ __ROR4__((a2 ^ v2) & STACK[0x51B0], 8) ^ 0xF7F3E062, 23);
  v8 = STACK[0x5138];
  v9 = STACK[0x5148];
  v10 = STACK[0x5150];
  v11 = STACK[0x51C8];
  LODWORD(STACK[0x5390]) = (((((LODWORD(STACK[0x5208]) - 4433) | 0x7102) ^ v7 ^ 0xE7C0B485) & STACK[0x5138]) << LODWORD(STACK[0x5148])) + (((((LODWORD(STACK[0x5208]) - 4433) | 0x7102) ^ v7 ^ 0xE7C0B485) & STACK[0x5150]) >> LODWORD(STACK[0x51C8]));
  v12 = STACK[0x51C0];
  v13 = STACK[0x5130];
  v14 = STACK[0x5140];
  v15 = STACK[0x5158];
  v16 = STACK[0x5178];
  LODWORD(STACK[0x5388]) = (((v3 ^ (2 * (v3 & STACK[0x51C0]))) & STACK[0x5130]) >> LODWORD(STACK[0x5140])) | (((v3 ^ (2 * (v3 & STACK[0x51C0]))) & STACK[0x5158]) << STACK[0x5178]);
  LODWORD(STACK[0x5380]) = (((a1 ^ (2 * (a1 & v12))) & v8) << v9) | (((a1 ^ (2 * (a1 & v12))) & v10) >> v14);
  LODWORD(STACK[0x5398]) = (((v4 ^ v2 ^ (2 * ((v4 ^ v2) & v6))) & v15) << v16) + (((v4 ^ v2 ^ (2 * ((v4 ^ v2) & v6))) & v13) >> v11);
  v17 = STACK[0x57C0];
  v18 = STACK[0x5210];
  if (STACK[0x57C0])
  {
    v19 = STACK[0x5210];
  }

  else
  {
    v19 = STACK[0x5218];
  }

  v20 = STACK[0x5220];
  if (v17)
  {
    v21 = STACK[0x5220];
  }

  else
  {
    v21 = STACK[0x51F8];
  }

  if (v17)
  {
    v18 = STACK[0x51F8];
    v20 = STACK[0x5218];
  }

  v22 = STACK[0x5238];
  v23 = STACK[0x5200];
  if (v17)
  {
    v24 = -v23;
  }

  else
  {
    v24 = STACK[0x5238];
  }

  v25 = STACK[0x5228];
  if (v17)
  {
    v26 = STACK[0x5230];
  }

  else
  {
    v26 = STACK[0x5228];
  }

  if ((v17 & 1) == 0)
  {
    v25 = -v23;
    v22 = STACK[0x5230];
  }

  if ((v17 & 2) != 0)
  {
    v27 = v21;
  }

  else
  {
    v27 = v19;
  }

  LODWORD(STACK[0x5218]) = v27;
  if ((v17 & 2) != 0)
  {
    v28 = v20;
  }

  else
  {
    v28 = v18;
  }

  LODWORD(STACK[0x5210]) = v28;
  if ((v17 & 2) == 0)
  {
    v18 = v20;
  }

  LODWORD(STACK[0x5220]) = v18;
  if ((v17 & 2) == 0)
  {
    v19 = v21;
  }

  LODWORD(STACK[0x5378]) = v19;
  if ((v17 & 2) != 0)
  {
    v29 = v26;
  }

  else
  {
    v29 = v24;
  }

  LODWORD(STACK[0x5238]) = v29;
  if ((v17 & 2) != 0)
  {
    v30 = v25;
  }

  else
  {
    v30 = v22;
  }

  LODWORD(STACK[0x5230]) = v30;
  if ((v17 & 2) != 0)
  {
    v31 = v24;
  }

  else
  {
    v31 = v26;
  }

  LODWORD(STACK[0x5228]) = v31;
  return (*(STACK[0x57D8] + 8 * v5))();
}

uint64_t sub_1005AFB94()
{
  v0 = STACK[0x1808] | 0x18D;
  STACK[0x7ED8] -= 96;
  if (STACK[0x8A10])
  {
    v1 = LODWORD(STACK[0x7D60]) == v0 - 769885465;
  }

  else
  {
    v1 = 1;
  }

  v2 = v1;
  return (*(STACK[0x57D8] + 8 * ((15 * v2) | LODWORD(STACK[0x1804]))))();
}

uint64_t sub_1005AFBFC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = STACK[0x5440];
  if ((STACK[0x5780] & 2) == 0)
  {
    v5 = STACK[0x5550];
  }

  LODWORD(STACK[0x53F0]) = v5;
  LODWORD(STACK[0x5520]) = a4 ^ LODWORD(STACK[0x55C0]) ^ 0x26262626;
  LODWORD(STACK[0x53E0]) = a4 ^ 0xA6A6A6A6;
  return (*(STACK[0x57D8] + 8 * v4))(STACK[0xD280] - 0x660B201E6DB28949, (((LODWORD(STACK[0x5760]) ^ 0xF4B55824) - 2062673203) ^ ((LODWORD(STACK[0x5760]) ^ 0xB9DD1F51) - 932815430) ^ (((((v4 - 1100037155) & 0x41913BF7) + 1331245030) ^ LODWORD(STACK[0x5760])) + 1054998582)) + 208115162);
}

uint64_t sub_1005AFDBC@<X0>(uint64_t a1@<X8>)
{
  *(STACK[0x56F0] + a1) = v3[*(a1 + v2 + 4104) ^ ((a1 ^ 0x70) + (a1 ^ 2)) ^ 0xD1] ^ *v3;
  v4 = a1 - 7121 + (v1 - 14768) != 256;
  return (*(STACK[0x57D8] + 8 * (((2 * v4) | (32 * v4)) ^ v1)))();
}

uint64_t sub_1005AFE34()
{
  v1 = STACK[0x51B8] - 21021;
  LOWORD(STACK[0xD006]) = v0;
  return (*(STACK[0x57D8] + 8 * (v1 ^ 0x26A5)))();
}

uint64_t sub_1005AFE70()
{
  v1 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x261 ^ ((v0 - 165) | 0x10C0))))();
}

uint64_t sub_1005AFEEC()
{
  STACK[0xDCD0] = 0;
  LODWORD(STACK[0xDCCC]) = STACK[0x4C30];
  return (*(STACK[0x57D8] + 8 * (v0 - 14147)))();
}

uint64_t sub_1005AFFCC()
{
  v2 = v1[916];
  v3 = STACK[0x9B00];
  v4 = STACK[0x8D7C];
  v5 = STACK[0x8E10];
  v6 = STACK[0x6BE8];
  v7 = STACK[0x9460];
  v8 = STACK[0xCD84];
  LODWORD(STACK[0x8824]) = STACK[0x6B7C];
  STACK[0x7548] = STACK[0xB030];
  LODWORD(STACK[0xB39C]) = v2;
  STACK[0xB3B8] = 0;
  LODWORD(STACK[0x5E98]) = -769884012;
  STACK[0x9108] = v3;
  v1[478] = v4;
  STACK[0xB7F0] = v5;
  LODWORD(STACK[0x5FCC]) = v6;
  STACK[0x9B58] = STACK[0x9498];
  STACK[0x8170] = &STACK[0x76F8];
  STACK[0xB570] = STACK[0x1180];
  STACK[0xB9C0] = &STACK[0xCF28];
  STACK[0xA728] = v7;
  LODWORD(STACK[0xC748]) = v8;
  v1[510] = 709243792;
  LOBYTE(STACK[0x81F7]) = 0;
  return (*(STACK[0x57D8] + 8 * ((v0 - 44230863) ^ 0xFD5D613B ^ (7938 * ((v0 - 44230863) > 0x51595F30)))))();
}

uint64_t sub_1005B0238(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  LODWORD(STACK[0x5630]) = a3;
  v6 = (LODWORD(STACK[0x57C0]) << ((v5 - 5) ^ 0x41)) + v4 + LODWORD(STACK[0x57A0]);
  LODWORD(STACK[0x5700]) = v6;
  LODWORD(STACK[0x5670]) = v6 ^ 0x8A;
  return (*(STACK[0x57D8] + 8 * v5))(a1, a2, 536870914, a4, 10875652, 1227028004, 1270289876, 1542328400);
}

uint64_t sub_1005B03E4()
{
  if (LODWORD(STACK[0x5790]) == 16)
  {
    v1 = STACK[0x57B0];
  }

  else
  {
    v1 = -143155878;
  }

  LODWORD(STACK[0x5790]) = v1;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1005B054C()
{
  STACK[0x7508] = v1;
  STACK[0x8C38] = &STACK[0x6D54];
  LODWORD(STACK[0x9094]) = -32197499;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1005B05C4@<X0>(int a1@<W8>)
{
  STACK[0xD140] = STACK[0x5CD8];
  STACK[0x8CA0] = 0x1883660EE8144416;
  return (*(STACK[0x57D8] + 8 * (a1 ^ 0x16FE)))();
}

uint64_t sub_1005B0D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x57A0]) = a7 - 1200575956;
  v9 = STACK[0x4E98];
  LODWORD(STACK[0x56C0]) = (*(STACK[0x4E98] + v7) ^ 0xFFFFFFE7) + ((2 * *(STACK[0x4E98] + v7)) & 0xFFCF) + 95;
  LODWORD(STACK[0x5710]) = ((2 * *(v9 + (v8 - 5))) & 0xFFBA) + (*(v9 + (v8 - 5)) ^ 0x5D);
  LODWORD(STACK[0x56E0]) = ((2 * *(v9 + (v8 - 3))) & 0xFFE7) + (*(v9 + (v8 - 3)) ^ 0xFFFFFFF3);
  v10 = *(STACK[0x57D8] + 8 * (((8 * (a7 != -1543211370)) | (16 * (a7 != -1543211370))) ^ (a7 - 1200569246)));
  LODWORD(STACK[0x5740]) = v7;
  return v10();
}

uint64_t sub_1005B0F94()
{
  v2 = STACK[0xC900];
  STACK[0xE980] = v1;
  STACK[0xE988] = v2;
  return (*(STACK[0x57D8] + 8 * (((v1 - v2 > 9) * ((v0 + 17480) ^ 0x3EC9)) ^ v0)))();
}

uint64_t sub_1005B102C@<X0>(int a1@<W1>, int a2@<W8>)
{
  v6 = (((2 * (v2 - 142397415)) & 0xC04) + ((v2 - 142397415) ^ (a2 - 19904))) * a1;
  *(v3 + 4 * (v2 * a1 - 523311569 - ((((v2 * a1 - 523311569) * v5) >> 32) >> 12) * v4)) = *(v3 + 4 * (v6 - (((v6 * v5) >> 32) >> 12) * v4));
  return (*(STACK[0x57D8] + 8 * ((8610 * (v2 == 142397670)) ^ a2)))();
}

uint64_t sub_1005B1144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0x51B8];
  v8 = STACK[0x9EE0] - 0x79296B4A625EDCB4;
  v9 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * (STACK[0x51B8] - 21318));
  return (*(v9 + 8 * (v7 - 17418)))(v8, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1005B1438()
{
  STACK[0xB420] = v2;
  LODWORD(STACK[0x8C54]) = v0;
  STACK[0x8EA0] = v3;
  LODWORD(STACK[0xBC38]) = -746967327;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1005B14D4(int a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  STACK[0x57B0] = (v8 ^ 0x104Eu) * v9;
  v14 = *(STACK[0x57D8] + 8 * (((LODWORD(STACK[0x5250]) == ((v8 ^ 0x4E) * v9 + 19)) * (v8 - 3977)) ^ v8));
  LODWORD(STACK[0x5790]) = a1;
  LODWORD(STACK[0x5380]) = v12;
  LODWORD(STACK[0x5700]) = a7;
  LODWORD(STACK[0x5670]) = v10;
  LODWORD(STACK[0x5780]) = a2;
  LODWORD(STACK[0x5740]) = a3;
  LODWORD(STACK[0x5370]) = a4;
  v15 = LODWORD(STACK[0x5560]);
  LODWORD(STACK[0x5368]) = v13;
  LODWORD(STACK[0x53E0]) = v11;
  LODWORD(STACK[0x56E0]) = a8;
  return v14(v15, LODWORD(STACK[0x4FE0]), 4294967261, 4294967197, a5, a6, LODWORD(STACK[0x5580]), LODWORD(STACK[0x5410]));
}

uint64_t sub_1005B16C0()
{
  v1 = STACK[0x67D8];
  v2 = STACK[0x7ED8];
  STACK[0xA7F8] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v2 + 16;
  STACK[0xB968] = 0xD38CBDD3ACAFF84ALL;
  STACK[0x6760] = 0;
  LODWORD(STACK[0x878C]) = -769884012;
  return (*(STACK[0x57D8] + 8 * ((165 * (v1 == v0 - 769941102 + v0 - 8734 + 3128)) ^ v0)))();
}

uint64_t sub_1005B17A0()
{
  if (v2 + v0 + v3 == 0xFF)
  {
    v1 = 0;
  }

  return (*(STACK[0x57D8] + 8 * ((7643 * v1) ^ ((11307 * (v0 ^ 3)) ^ 0x1508 | v0))))();
}

uint64_t sub_1005B17EC()
{
  v4 = STACK[0x4658];
  *(v1 + 592) = STACK[0x4658];
  *(v1 + 600) = v0 - 289235981 * (v2 ^ 0x8782D03F) + 1185;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v0 + 11608)))(v3 - 240);
  v8 = *(v1 + 604) == ((v0 - 1151628181) & 0x44A436FD ^ 0x126D) && *v4 != 0;
  return (*(v5 + 8 * ((35 * v8) | v0)))(v6);
}

uint64_t sub_1005B1888(int a1)
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xBE4C];
  LODWORD(STACK[0x9094]) = a1 + 40;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1005B1910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = LODWORD(STACK[0x58FC]);
  v8 = LODWORD(STACK[0x64F8]);
  LODWORD(STACK[0x57C0]) = v6 + 2094669124;
  return (*(STACK[0x57D8] + 8 * v6))(v7, a2, LODWORD(STACK[0x9304]), a4, v8, a6, 4234546641, 2306853031);
}

uint64_t sub_1005B1A38@<X0>(int a1@<W8>)
{
  STACK[0xDA28] = v1;
  LODWORD(STACK[0xA0EC]) = v2;
  v3 = v2 == ((a1 - 10882) ^ 0xF7785E04);
  LOBYTE(STACK[0x5DFF]) = v3;
  return (*(STACK[0x57D8] + 8 * ((v3 * (((a1 - 17667) | 0xB00) ^ 0x8A9)) ^ a1)))();
}

uint64_t sub_1005B1AEC@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 72) = -1740479966;
  *(a1 + 76) = 1227631296;
  *(a1 + 80) = v2;
  *(a1 + 84) = 0xA345D63A5704717FLL;
  *(a1 + 92) = 0xEDC85DEE694EECC9;
  *(a1 + 100) = -1448392356;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1005B1C1C()
{
  v3 = STACK[0x19F8];
  STACK[0x1D4D8] = 4151854225u - STACK[0x19F8];
  LODWORD(STACK[0x1D4CC]) = v0 + 185730523 - v3;
  STACK[0x1D4E0] = v1 + v3;
  LODWORD(STACK[0x1D4C4]) = (v0 + 185727161) ^ v3;
  LODWORD(STACK[0x1D4D0]) = v3;
  LODWORD(STACK[0x1D4C0]) = (v0 - 1079089617) ^ v3;
  LODWORD(STACK[0x1D4C8]) = ((v0 + 185730523) ^ 0x16) - v3;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x2411)))(v2 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4D4])))(v5);
}

uint64_t sub_1005B1CC0()
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0x76A0];
  LODWORD(STACK[0x9094]) = -32197476;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1005B1DE0()
{
  v0 = STACK[0x51B8] + 8563;
  v1 = STACK[0x51B8] - 20717;
  v2 = STACK[0xB658] - 0x30BDFED8F32E6575;
  v3 = STACK[0x6250];
  v4 = STACK[0xE018];
  v5 = STACK[0x57D8];
  STACK[0x9D20] = *(STACK[0x57D8] + 8 * v1);
  return (*(v5 + 8 * (v0 ^ v1 ^ 0x59DE)))(&STACK[0xD760], v2, v3, v4);
}

uint64_t sub_1005B1F0C()
{
  v3 = STACK[0x6A08];
  *(v0 + 360) = v2;
  STACK[0x6230] = v3;
  LODWORD(STACK[0x6974]) = 1709081824;
  return (*(STACK[0x57D8] + 8 * (v1 - 17575)))();
}

uint64_t sub_1005B1F4C()
{
  LODWORD(STACK[0x8010]) = v0;
  v2 = LODWORD(STACK[0xC620]) - 730919856;
  v3 = v2 < 0x44A5C6AA;
  v4 = v0 + ((v1 - 27140) | 0x200) + (((v1 - 27492) | 0x428) ^ 0x44A5C662) < v2;
  if (v0 > 0xBB5A3955 != v3)
  {
    v4 = v3;
  }

  return (*(STACK[0x57D8] + 8 * ((2021 * !v4) ^ v1)))();
}

uint64_t sub_1005B20DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5 + ((v7 - 1950347558) & 0x343FAAFD ^ 0x5A) + v6;
  v13 = *(*v10 + ((*v9 & ((v12 & 0x65BD06F8) + (v12 & 0x9A42F900 | 0x65BD06FE) - 1810529639)) & 0xFFFFFFFFFFFFFFF8));
  v14 = (__ROR8__(v12 & 0xFFFFFFFFFFFFFFF8, 8) + v13) ^ v11;
  v15 = __ROR8__(v14, 8);
  v16 = v14 ^ __ROR8__(v13, 61);
  v17 = (v15 + v16) ^ v8;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (((2 * (v19 + v18)) | 0x385F477D4BB86476) - (v19 + v18) + 0x63D05C415A23CDC5) ^ 0xBE5A77799DE90BA0;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (v22 + v21 - ((2 * (v22 + v21)) & 0xA4236CF0CAC6A982) + 0x5211B678656354C1) ^ 0xB7BEACCB4BDE681CLL;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ a5;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (v27 + v26 - ((2 * (v27 + v26)) & 0xBC5410D77A628008) + 0x5E2A086BBD314004) ^ 0xF60C28CEE4E39A7CLL;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = __ROR8__(v28, 8);
  *v12 = (((__ROR8__((((2 * (v30 + v29)) | 0x9979BAAC86518D66) - (v30 + v29) + 0x334322A9BCD7394DLL) ^ 0x93313168E0B0CCA8, 8) + ((((2 * (v30 + v29)) | 0x9979BAAC86518D66) - (v30 + v29) + 0x334322A9BCD7394DLL) ^ 0x93313168E0B0CCA8 ^ __ROR8__(v29, 61))) ^ a4) >> (8 * (v12 & 7u))) ^ *(STACK[0x7028] + v6);
  return (*(STACK[0x57D8] + 8 * ((4047 * (v6 + 1 < LODWORD(STACK[0x8CF4]))) ^ v7)))();
}

uint64_t sub_1005B2328()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x57D8];
  STACK[0x8580] = *(STACK[0x57D8] + 8 * (STACK[0x51B8] - 20093));
  return (*(v1 + 8 * (v0 - 18047)))();
}

uint64_t sub_1005B2364@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xDF74]) = v2;
  STACK[0xDF78] = v1;
  v5 = a1 != ((v3 + 520267640) & 0xE0FD7FFD ^ (v3 + 10102)) && v2 == -143113071;
  return (*(STACK[0x57D8] + 8 * ((7 * v5) ^ v3)))((v3 + 10087));
}

uint64_t sub_1005B2458(uint64_t a1, uint64_t a2, int a3)
{
  v4 = STACK[0x7FC0];
  *v4 = 0;
  v4[1] = 0;
  v5 = STACK[0x57D8];
  STACK[0xD2B8] = *(STACK[0x57D8] + 8 * v3);
  return (*(v5 + 8 * (((v3 + 1238379968) ^ (a3 + 55)) + v3)))();
}

uint64_t sub_1005B2618()
{
  v2 = *(*STACK[0x51F0] + (((STACK[0xE558] & 0xC07B2900) + (STACK[0xE558] & 0x3F84D6F8 | 0xC07B2906) + 962027665) & *STACK[0x51E8] & 0xFFFFFFF8));
  v3 = (__ROR8__(STACK[0xE558] & 0xFFFFFFFFFFFFFFF8, 8) + v2) ^ 0xF41651499F5E3C67;
  v4 = v3 ^ __ROR8__(v2, 61);
  v5 = (__ROR8__(v3, 8) + v4) ^ 0x153242EE3CF06A49;
  v6 = v5 ^ __ROR8__(v4, 61);
  v7 = (83 * (v1 ^ 0x58E3u) + 0x2275D4C73834ED0FLL) ^ (v1 - 14897) ^ (__ROR8__(v5, 8) + v6);
  v8 = __ROR8__(v7, 8);
  v9 = v7 ^ __ROR8__(v6, 61);
  v10 = (((2 * (v8 + v9)) | 0xB67682EA6AD88DE0) - (v8 + v9) - 0x5B3B4175356C46F0) ^ 0xBE945BC61BD17A2DLL;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0xC7DDC9F6CC45B721;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (((2 * (v14 + v13)) & 0x20F0A62397A9FC18) - (v14 + v13) - 0x10785311CBD4FE0DLL) ^ 0x47A18C4B6DF9DB8BLL;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (v17 + v16 - ((2 * (v17 + v16)) & 0xEBE79AC5678FC8DCLL) - 0xA0C329D4C381B92) ^ 0xAA7E215C105FEE75;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (((0xA0518BA04D2330B7 - ((v20 + v19) | 0xA0518BA04D2330B7) + ((v20 + v19) | 0x5FAE745FB2DCCF48)) ^ 0x9E6DBC8D16198760) >> (8 * (STACK[0xE558] & 7u))) ^ LOBYTE(STACK[0xE567]);
  v22 = (((v21 ^ 0xD6) + 124) ^ ((v21 ^ 0x61) - 51) ^ ((v21 ^ 0xB7) + 27)) - LOBYTE(STACK[0xE507]);
  LOBYTE(STACK[0xE576]) = v0;
  return (*(STACK[0x57D8] + 8 * ((22082 * (v22 == 129)) ^ (v1 - 7591))))();
}

uint64_t sub_1005B29C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, unsigned int a5@<W4>, int a6@<W8>)
{
  *(a1 + a5 + 4) = *(*(a2 + 8) + (a4 + v10));
  v12 = v9 + a6 + a3 + *(a2 + 4);
  v13 = v12 < v8;
  v14 = a4 + v11 < v12;
  if (a4 + v11 < v8 != v13)
  {
    v14 = v13;
  }

  return (*(v6 + 8 * ((v14 * v7) ^ v9)))();
}

uint64_t sub_1005B2D30(int a1, unsigned int a2, int a3)
{
  v5 = (((*v4 ^ 0xFF2192E) - 267524398) ^ ((*v4 ^ 0x15F0D726) - 368105254) ^ (a1 + (*v4 ^ (a3 - 1749807878) & 0x684BF97F ^ 0xC81E67F3) + 382)) + 1435728213;
  v6 = v5 < a2;
  v7 = v3 + a2 < v5;
  if (v3 > 0x7C89073E != v6)
  {
    v7 = v6;
  }

  return (*(STACK[0x57D8] + 8 * ((6810 * v7) ^ a3)))();
}

uint64_t sub_1005B2E90()
{
  LODWORD(STACK[0xA9E4]) = -769884012;
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xA9E4];
  LODWORD(STACK[0x9094]) = -32197415;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1005B2FE8()
{
  v1 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (((v0 ^ 0x104B) + 463) ^ v0)))();
}

uint64_t sub_1005B301C()
{
  LODWORD(STACK[0xC490]) = -769884012;
  STACK[0xA3D8] = 0;
  STACK[0xB600] = 0;
  LODWORD(STACK[0x74EC]) = -769884012;
  STACK[0xB450] = 0;
  LODWORD(STACK[0x9224]) = -769884012;
  STACK[0xC160] = 0;
  LODWORD(STACK[0x9C0C]) = -769884012;
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xC490];
  LODWORD(STACK[0x9094]) = -32197477;
  return (*(STACK[0x57D8] + 8 * v0))();
}

void *sub_1005B31D0()
{
  STACK[0xB250] = *(STACK[0xCA20] + 16);
  v1 = STACK[0x57D8];
  STACK[0xC288] = *(STACK[0x57D8] + 8 * (v0 - 19529));
  return (*(v1 + 8 * (((v0 + 2124399007) & 0x815FEFFB ^ 0x18C1) + v0 - 19529)))(&STACK[0x8678]);
}

uint64_t sub_1005B3240(uint64_t a1)
{
  v2 = STACK[0x57D8];
  *(a1 + 400) = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x3F05)))();
}

uint64_t sub_1005B3648@<X0>(uint64_t a1@<X8>)
{
  *v1 = 0;
  *STACK[0xE5E8] = a1;
  return (*(STACK[0x57D8] + 8 * v2))();
}

uint64_t sub_1005B3698@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X6>, int a7@<W8>)
{
  v23 = *(*(&off_101353600 + v14 - 20991) + ((a4 ^ LODWORD(STACK[0x5770])) & (((v14 - 12229) | 0x1810) - 15259) ^ 0x6Bu)) ^ 0x9915533E;
  v24 = v7 ^ v22 ^ v8 ^ v9 ^ v10 ^ (16 * v23) & 0xB20692A0;
  v25 = v15 ^ v11 ^ v12 ^ a1 ^ a2 ^ 0x8A1A5878 ^ ((v24 ^ 0x61526C69) - 2 * ((v24 ^ 0x61526C69) & 0xD84E41E ^ v24 & 0x12) - 1920670708);
  v26 = (v25 - 978851807 - ((2 * v25) & 0x8B4FD042)) ^ v18;
  v27 = v20 ^ v21 ^ (v26 + 777209664 - ((2 * v26) & 0x5CA68E80));
  *(a6 + 4 * a4) = v19 ^ a7 ^ a3 ^ v13 ^ v17 ^ v16 ^ v23 ^ 0x279B2535 ^ (v27 - ((2 * v27) & 0x778BE92E) - 1144654697);
  return (*(STACK[0x57D8] + 8 * ((11972 * (a5 == 0)) ^ v14)))();
}

uint64_t sub_1005B386C@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v6 = *(STACK[0x57D8] + 8 * v5);
  STACK[0x5790] = v3 & 0xFFFFFFF0;
  *&STACK[0x57C0] = a2;
  return v6((v5 + 5171), (v3 & 0xFFFFFFF0) - 16, v2 + v4, a1 - 16);
}

uint64_t sub_1005B3930()
{
  v0 = STACK[0x6268];
  v1 = STACK[0x51B8];
  *v0 = 0x1D8A118EDE6D14DLL;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 1414217035;
  *(v0 + 28) = 0x800000002;
  *(v0 + 36) = 1;
  *(v0 + 40) = 0;
  *(v0 + 48) = -1005348292;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1768711563;
  *(v0 + 68) = 0x400000001;
  *(v0 + 76) = 2;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0x2CBAB9ADELL;
  *(v0 + 112) = 0x200000008;
  v2 = STACK[0x57D8];
  STACK[0xBDD0] = *(STACK[0x57D8] + 8 * (v1 - 21438));
  return (*(v2 + 8 * ((17 * (v1 ^ 0x5A43) + 3641) ^ (v1 - 21438))))();
}

uint64_t sub_1005B3BA0()
{
  v2 = 38 * (v1 ^ 0x756F) + LODWORD(STACK[0x7584]) + 1986832142;
  v3 = ((v0 - 337238295) < 0xF0FF6910) ^ (v2 < 0xF0FF6910);
  v4 = v2 < v0 - 337238295;
  if (v3)
  {
    v4 = (v0 - 337238295) < 0xF0FF6910;
  }

  return (*(STACK[0x57D8] + 8 * ((!v4 * (((2 * v1) ^ 0x8E8E) - 24916)) ^ v1)))();
}

uint64_t sub_1005B3D08()
{
  LODWORD(STACK[0x72EC]) = -143113071;
  STACK[0x8480] = 0;
  LODWORD(STACK[0x5824]) = -769884012;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1005B3D5C@<X0>(uint64_t a1@<X8>)
{
  v1 = STACK[0x51B8] + 854;
  STACK[0x7ED8] = a1 - 96;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1005B3D80()
{
  v3 = STACK[0x51B8] + 7587;
  v4 = STACK[0x51B8] + v0;
  v5 = STACK[0xC108];
  STACK[0x74A0] = STACK[0x9890];
  v6 = (v4 ^ 0x887BB6F) + LODWORD(STACK[0x791C]);
  if (((v2 - v4) | (v4 - v2)) > (v3 ^ 0xFFFF8A06))
  {
    ++v6;
  }

  LODWORD(STACK[0x901C]) = v6 + 1;
  STACK[0x8090] = v5;
  LODWORD(STACK[0x8014]) = -769884028;
  STACK[0xA3B8] = &STACK[0xA1D8];
  STACK[0x8BD8] = &STACK[0xAB34];
  LODWORD(STACK[0xAC7C]) = 1007292238;
  return (*(STACK[0x57D8] + 8 * (v4 ^ (v1 + 537))))();
}

uint64_t sub_1005B3F38()
{
  v6 = v0 * v2;
  *(v5 + 4 * (((2 * v1) ^ 0x8F9DB8F7) + v6 - ((((((2 * v1) ^ 0x8F9DB8F7) + v6) * v4) >> 32) >> 12) * v3)) = *(v5 + 4 * (v6 - 1913905996 - ((((v6 - 1913905996) * v4) >> 32) >> 12) * v3));
  return (*(STACK[0x57D8] + 8 * ((30 * (v0 != 1811216509)) ^ v1)))();
}

uint64_t sub_1005B4060()
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
  return (*(STACK[0x57D8] + 8 * (((((v2 - 8639) | 0x4816) + ((v2 - 7078) ^ 0xFFFFBDD2)) * v4) ^ v2)))();
}

uint64_t sub_1005B41B8()
{
  v2 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * (v0 ^ 0x489D)))(v1);
  v3 = (*(v2 + 8 * (v0 + 18307)))(STACK[0xD620]);
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_1005B4408(uint64_t a1)
{
  v5 = *(STACK[0xC890] - 0x2369327399A66D85);
  ++*(STACK[0xC890] - 0x2369327399A66D91);
  v6 = v5 + 16 * ((v4 ^ 0x7F7FEFCFF7FFD38) + ((v4 << ((v1 + 6) ^ 0xE0u)) & 0x1FEFFFA70)) + 0x67FCAA211FEBE86ALL;
  *(v6 + 8) = v3;
  *(v6 + 12) = 2101965948;
  *v6 = a1;
  return (*(STACK[0x57D8] + 8 * (((v1 - 19617) * (v2 == 0)) ^ v1)))();
}

uint64_t sub_1005B4520()
{
  STACK[0x7E20] = STACK[0xB2E8];
  LODWORD(STACK[0x91E4]) = STACK[0x5D3C];
  STACK[0x7408] = STACK[0x7CF0];
  STACK[0x77A8] = 0;
  STACK[0x7818] = 0;
  LODWORD(STACK[0xA61C]) = 0;
  STACK[0x7058] = 0;
  return (*(STACK[0x57D8] + 8 * (((STACK[0x5C70] == 0x30BDFED8F32E6831) * ((v0 ^ 0xFFFFB433) + v0 + 17620)) ^ v0)))();
}

uint64_t sub_1005B45B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0x51B8] - 21327;
  v8 = STACK[0x9B78];
  v9 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v7);
  return (*(v9 + 8 * (v7 ^ 0x114B)))(v8, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1005B4744()
{
  STACK[0x57C0] = 0;
  v1 = ((((LODWORD(STACK[0x64FC]) ^ 0xE64C729F) + 431197537) ^ ((LODWORD(STACK[0x64FC]) ^ 0x7B5CFCA5) - 2069691557) ^ ((LODWORD(STACK[0x64FC]) ^ 0x4F0C0EAE) + ((v0 + 15463) ^ 0xB0F3BCFA))) - 769883981) & 0xFFFFFFF0;
  v2 = STACK[0x8208];
  STACK[0xB750] = 0x1883660EE8144416;
  STACK[0x7810] = v2;
  LODWORD(STACK[0xC0DC]) = -2013569035;
  STACK[0x8000] = &STACK[0xB750];
  STACK[0x5FC0] = 0;
  LODWORD(STACK[0xA12C]) = (((v1 ^ 0x28C83E8A) + 575577940) ^ ((v1 ^ 0x5F58583D) + 1440676325) ^ ((v1 ^ 0x779066B7) + 2098644847)) + 1925370530;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1005B4948(int a1)
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xBE4C];
  LODWORD(STACK[0x9094]) = a1 + 67;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1005B4998()
{
  v1 = 4 * (v0 ^ 0x57C6);
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x2B04)))(1032);
  STACK[0xD248] = v3;
  LODWORD(STACK[0x57C0]) = v1;
  return (*(v2 + 8 * (((v3 == 0) * ((v0 ^ 0x57C6) + 23589 + v1 - 32323)) ^ v0)))();
}

uint64_t sub_1005B4AA0()
{
  v0 = STACK[0x51B8] - 9318;
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))(STACK[0xA5B0]);
  STACK[0xA5B0] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1005B4B28()
{
  v1 = STACK[0x51B8];
  v2 = STACK[0x51B8] + 60;
  STACK[0x9998] = v0;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 + 9192)))(37);
  STACK[0xA2C8] = v4;
  return (*(v3 + 8 * ((v4 == 0) ^ v2)))();
}

uint64_t sub_1005B4CDC()
{
  STACK[0x8558] = STACK[0x5780] + STACK[0x5610];
  LODWORD(STACK[0xB904]) = *(v2 + 1280) - 1581933896;
  LODWORD(STACK[0x93DC]) = v3;
  return (*(STACK[0x57D8] + 8 * ((251 * (((((v1 - 13900) | 0x4846) - 1072941406) ^ v0) > 1)) ^ v1)))();
}

uint64_t sub_1005B4E98()
{
  LODWORD(STACK[0x57C0]) = (v0 - 27061) | 0x1C84;
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 4582)))(1032);
  STACK[0xD260] = v2 + 0x65D60BB8BC60833ELL;
  return (*(v1 + 8 * ((59 * (((v2 == 0) ^ (v0 - 5 + v0 + 75 + 1)) & 1)) ^ v0)))();
}

uint64_t sub_1005B50EC@<X0>(int a1@<W8>)
{
  v2 = STACK[0xE18];
  LODWORD(STACK[0x1D4D0]) = STACK[0xE18];
  LODWORD(STACK[0x1D4E0]) = ((a1 - 22613) ^ 0x57A00E53) + v2;
  LODWORD(STACK[0x1D4D4]) = v2 ^ 0x57A00E57 ^ (a1 - 22613);
  STACK[0x1D4D8] = v2;
  LODWORD(STACK[0x1D4C8]) = a1 - 22613 - v2 + 1470103790;
  STACK[0x1D4C0] = v2;
  LODWORD(STACK[0x1D4CC]) = v2 + 1451493860 + a1;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (a1 + 9182)))(v1 - 240);
  return (*(v3 + 8 * SLODWORD(STACK[0x1D4E4])))(v4);
}

uint64_t sub_1005B518C@<X0>(int a1@<W8>)
{
  v3 = STACK[0x51B8];
  v4 = STACK[0x51B8] - 367343698;
  v5 = STACK[0x51B8] - 22613;
  v6 = 1534937323 * ((((v2 - 240) | 0x974F988CF3DDFEB1) - ((v2 - 240) & 0x974F988CF3DDFEB1)) ^ 0x5A37104E353305F6);
  STACK[0x1D4D8] = v6;
  LODWORD(STACK[0x1D4E0]) = (v4 ^ 0x13) + v6;
  LODWORD(STACK[0x1D4D4]) = v4 ^ v5 ^ a1 ^ v6;
  STACK[0x1D4C0] = v1 ^ v6;
  LODWORD(STACK[0x1D4D0]) = v6;
  LODWORD(STACK[0x1D4C8]) = v4 - v6 + 3655;
  LODWORD(STACK[0x1D4CC]) = v6 + 1451493860 + v3;
  v7 = STACK[0x57D8];
  v8 = (*(STACK[0x57D8] + 8 * (v3 ^ 0x2462)))(v2 - 240);
  return (*(v7 + 8 * SLODWORD(STACK[0x1D4E4])))(v8);
}

uint64_t sub_1005B526C()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9207)))(v1);
  return (*(v2 + 8 * (v0 ^ 0x2AF1)))(v3);
}

uint64_t sub_1005B52EC()
{
  v4 = *(*STACK[0x51F0] + (*STACK[0x51E8] & 0x4B905A90)) & 0x7FFFFFFFFFFFFFFFLL;
  v5 = (STACK[0x8530] - 0x2C73422C015E059FLL + (((*STACK[0x3D40] ^ 0xACB0464F9701A971) + 0x534FB9B068FE568FLL) ^ ((*STACK[0x3D40] ^ 0xD8CD85A7B4C20CA3) + 0x27327A584B3DF35DLL) ^ ((*STACK[0x3D40] ^ 0xA7F17E3B8F6C5D98) + 0x580E81C47093A268)) < 0x51F20217) ^ ((v4 ^ 0x1412FC33B664102CLL) + 1374814743 + (((STACK[0x9D88] ^ 0x7ED1ADDD174F3A7) - 0x7ED1ADDD174F3A7) ^ ((STACK[0x9D88] ^ 0x41330DB178EE46A7) - 0x41330DB178EE46A7) ^ ((v4 ^ 0x52CCEB5F1FFEA52CLL ^ STACK[0x9D88]) - (v4 ^ 0x52CCEB5F1FFEA52CLL))) < 0x51F20217);
  v6 = 1534937323 * ((v2 - 2 * (v2 & 0xB5C791280C5AAD7FLL) - 0x4A386ED7F3A55281) ^ 0x78BF19EACAB45638);
  *(v1 + 612) = (v0 - 348915129) ^ (1534937323 * ((v2 - 2 * (v2 & 0xC5AAD7F) + 207269247) ^ 0xCAB45638));
  *(v1 + 604) = 1534937323 * ((v2 - 2 * (v2 & 0xC5AAD7F) + 207269247) ^ 0xCAB45638) + v0 + 1451493860;
  *(v1 + 624) = ((v0 - 348915129) & 0xEF7C7BFE) + 1534937323 * ((v2 - 2 * (v2 & 0xC5AAD7F) + 207269247) ^ 0xCAB45638);
  *(v1 + 616) = v5 + v6;
  *(v1 + 592) = v6;
  *(v1 + 608) = 1534937323 * ((v2 - 2 * (v2 & 0xC5AAD7F) + 207269247) ^ 0xCAB45638);
  *(v1 + 600) = v0 - 348915129 - 1534937323 * ((v2 - 2 * (v2 & 0xC5AAD7F) + 207269247) ^ 0xCAB45638) + 2709;
  v7 = v0 ^ 0x2462;
  v8 = STACK[0x57D8];
  v9 = (*(STACK[0x57D8] + 8 * v7))(v3 - 240);
  return (*(v8 + 8 * *(v1 + 628)))(v9);
}

uint64_t sub_1005B55D8()
{
  *(v0 + 2496) = v6;
  v8 = STACK[0x7ED8];
  *(v0 + 2504) = v1 + STACK[0x7ED8];
  STACK[0x7ED8] = 633 * (v5 ^ 0x584Bu) + v8 + v4;
  STACK[0x1D4C0] = STACK[0x4428];
  LODWORD(STACK[0x1D4C8]) = (v5 + v2) ^ (1917435887 * ((v7 - 240 + v3 - 2 * ((v7 - 240) & v3)) ^ 0x71842D60));
  v9 = STACK[0x57D8];
  v10 = (*(STACK[0x57D8] + 8 * (v5 + 9178)))(v7 - 240);
  return (*(v9 + 8 * (((16 * (v6 != 0)) | (32 * (v6 != 0))) ^ (v5 + 4674))))(v10);
}

uint64_t sub_1005B5774(uint64_t a1, int a2, unsigned int a3, int a4, int a5, char a6, char a7)
{
  v14 = ((v13 + a6) ^ ((v8 ^ v12) - ((2 * (v8 ^ v12)) & 0x70) - 72) ^ a7) ^ 0x55;
  *(v7 + 4 * v8) = v10 ^ v14 ^ a4 ^ *(*(a1 + 8 * v11) + 4 * (a3 ^ __ROR4__(a2 ^ __ROR4__(v14, 4), 28)));
  return (*(STACK[0x57D8] + 8 * (((v9 == 0) * a5) ^ v13)))();
}

uint64_t sub_1005B59DC()
{
  STACK[0xE458] = v0;
  v3 = (&STACK[0x10120] + v1);
  STACK[0xA598] = &STACK[0x10120] + v1;
  STACK[0x7ED8] = ((v2 + 4345) ^ 0x58F6) + v1;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v2 ^ 0x3B63)))(32);
  *v3 = v5;
  LOBYTE(STACK[0xE467]) = v5 == 0;
  return (*(v4 + 8 * (((v5 != 0) * ((v2 - 15107) ^ 0xC7F)) ^ v2)))();
}

uint64_t sub_1005B5A7C(uint64_t a1)
{
  v3 = STACK[0x5790];
  if ((STACK[0x5780] & 2) != 0)
  {
    v3 = STACK[0x5620];
  }

  LODWORD(STACK[0x5620]) = v3;
  v4 = STACK[0x5450];
  if ((STACK[0x53A8] & 2) != 0)
  {
    v4 = STACK[0x5440];
  }

  LODWORD(STACK[0x5440]) = v4;
  LODWORD(STACK[0x51C0]) = 16843009 * LODWORD(STACK[0x55A0]);
  LODWORD(STACK[0x5220]) ^= LODWORD(STACK[0x5350]) - 1313254527;
  LODWORD(STACK[0x5138]) = LODWORD(STACK[0x5218]) ^ v1;
  LODWORD(STACK[0x5350]) = LODWORD(STACK[0x5740]) ^ 0x9B229FA4 ^ (v2 + 174887886) & 0x1FF8BEDE;
  STACK[0x5790] = STACK[0xD688] - 0x5DA6670A2472BB8ALL;
  return (*(STACK[0x57D8] + 8 * ((12947 * (v2 != -700320638)) ^ (v2 + 711278880))))(a1, 96444823);
}

uint64_t sub_1005B5D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(STACK[0x57B0]) = v4;
  LODWORD(STACK[0x57C0]) = v5;
  return (*(STACK[0x57D8] + 8 * (v4 - 9597)))(a1, 1998571750, 1856189356, a4, 1305152781, 2306521484, 2296395546, 1988445812);
}

uint64_t sub_1005B5E44@<X0>(int a1@<W8>)
{
  v2[26] = v1[30];
  v2[25] = v1[29];
  v2[24] = v1[28];
  v2[23] = v1[27];
  v2[22] = v1[26];
  v2[21] = v1[25];
  v2[20] = v1[24];
  v2[19] = v1[23];
  v2[18] = v1[22];
  v2[17] = v1[21];
  v2[16] = v1[20];
  return (*(STACK[0x57D8] + 8 * (a1 ^ 0x55DE0158)))();
}

uint64_t sub_1005B5EBC(int a1, uint64_t a2)
{
  LODWORD(STACK[0xDF3C]) = a1;
  v3 = ((v2 - 159460296 + (*(a2 - 0x79296B4A625EDC64) ^ 0x980E5C4)) ^ ((*(a2 - 0x79296B4A625EDC64) ^ 0x1665FCCA) - 375782602) ^ ((*(a2 - 0x79296B4A625EDC64) ^ 0xCDF9999A) + ((v2 - 564684590) & 0x21A8797F ^ 0x32063E30))) - 1390767428;
  v4 = v3 < 0xDAFE1228;
  v5 = a1 + 2146796852 < v3;
  if ((a1 + 2146796852) < 0xDAFE1228 != v4)
  {
    v5 = v4;
  }

  return (*(STACK[0x57D8] + 8 * ((76 * v5) ^ v2)))();
}

uint64_t sub_1005B60DC()
{
  v1 = STACK[0xBE24];
  v2 = STACK[0x6A08];
  STACK[0xB420] = STACK[0xAC70];
  LODWORD(STACK[0x8C54]) = v1;
  STACK[0x8EA0] = v2;
  LODWORD(STACK[0xBC38]) = -746967300;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1005B637C()
{
  v0 = STACK[0x7DA0];
  v1 = STACK[0x51B8];
  *(v0 + 168) = -769884012;
  *v0 = STACK[0x6B7C];
  *(v0 + 8) = STACK[0xCAB8];
  *(v0 + 16) = 0;
  *(v0 + 24) = STACK[0x83C8];
  v2 = STACK[0xB228];
  *(v0 + 32) = STACK[0x9B1C];
  *(v0 + 36) = v2;
  *(v0 + 40) = STACK[0xBD18];
  *(v0 + 48) = STACK[0x6D04];
  *(v0 + 56) = STACK[0x78F8];
  *(v0 + 176) = STACK[0xB680];
  *(v0 + 184) = STACK[0x6128];
  *(v0 + 192) = STACK[0xA290];
  *(v0 + 200) = STACK[0xAEE4];
  *(v0 + 208) = STACK[0xCD10];
  *(v0 + 216) = STACK[0x8B1C];
  *(v0 + 220) = LOBYTE(STACK[0xCE4C]) ^ 0x94;
  STACK[0x7C30] = v0;
  LODWORD(STACK[0xC354]) = 1303672185;
  LOBYTE(STACK[0xA37F]) = 0;
  return (*(STACK[0x57D8] + 8 * ((7851 * ((v1 - 1471687930) > 0x18CE6931)) ^ (v1 - 19332))))(637896474);
}

uint64_t sub_1005B6584()
{
  v0 = STACK[0x51B8] + 2114074191;
  v1 = STACK[0x51B8] - 22227;
  v2 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * ((v0 - 2114092484) ^ v1)))();
}

uint64_t sub_1005B65E0()
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
  STACK[0xEF80] = 0;
  STACK[0xEF88] = v0;
  v10 = 16777619 * ((-548819963 * v9 + 7) ^ (-548819963 * v9)) % 7;
  v11 = *(&STACK[0xEF80] | v10);
  *(&STACK[0xEF80] | v10) = 0;
  LOBYTE(STACK[0xEF87]) = v11;
  v12 = 16777619 * ((-548819963 * v9 + 6) ^ (-548819963 * v9)) % 6;
  v13 = *(&STACK[0xEF80] | v12);
  *(&STACK[0xEF80] | v12) = STACK[0xEF86];
  LOBYTE(STACK[0xEF86]) = v13;
  v14 = 16777619 * ((-548819963 * v9 + 5) ^ (-548819963 * v9)) % 5;
  v15 = *(&STACK[0xEF80] | v14);
  *(&STACK[0xEF80] | v14) = STACK[0xEF85];
  LOBYTE(STACK[0xEF85]) = v15;
  v16 = STACK[0xEF80];
  LOBYTE(STACK[0xEF80]) = STACK[0xEF84];
  LOBYTE(STACK[0xEF84]) = v16;
  v17 = 16777619 * ((-548819963 * v9 + 3) ^ (-548819963 * v9)) % 3;
  v18 = *(&STACK[0xEF80] | v17);
  *(&STACK[0xEF80] | v17) = STACK[0xEF83];
  LOBYTE(STACK[0xEF83]) = v18;
  v19 = STACK[0xEF81];
  LOBYTE(STACK[0xEF82]) = STACK[0xEF80];
  LOWORD(STACK[0xEF80]) = v19;
  v20 = vdup_n_s32(-548819963 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = -548819963 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xEF80] = vmla_s32(v22, STACK[0xEF80], vdup_n_s32(0x1000193u));
  STACK[0xEF88] ^= STACK[0xEF80];
  STACK[0xEF88] = vmul_s32(vsub_s32(STACK[0xEF88], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xEF8A];
  LOWORD(STACK[0xEF89]) = STACK[0xEF88];
  LOBYTE(STACK[0xEF88]) = v23;
  v24 = (&STACK[0xEF88] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xEF8B];
  LOBYTE(STACK[0xEF8B]) = v19;
  LOBYTE(v24) = STACK[0xEF88];
  LOBYTE(STACK[0xEF88]) = STACK[0xEF8C];
  LOBYTE(STACK[0xEF8C]) = v24;
  v25 = (&STACK[0xEF88] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xEF8D];
  LOBYTE(STACK[0xEF8D]) = v24;
  v26 = (&STACK[0xEF88] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xEF8E];
  LOBYTE(STACK[0xEF8E]) = v25;
  v27 = (&STACK[0xEF88] | v10);
  v28 = *v27;
  *v27 = STACK[0xEF8F];
  LOBYTE(STACK[0xEF8F]) = v28;
  v29 = STACK[0xEF88];
  v30 = (-548819963 * STACK[0xEF88]) ^ v9;
  for (i = 1; i != 4; ++i)
  {
    v32 = 16777619 * ((v30 + i) ^ v30) % i;
    v33 = *(v29 + 8 * v32) ^ *(v29 + 8 * i);
    *(v29 + 8 * i) = v33;
    v34 = *(v29 + 8 * v32) ^ v33;
    *(v29 + 8 * v32) = v34;
    *(v29 + 8 * i) ^= v34;
  }

  v35 = 0;
  v36 = xmmword_1012370F0;
  v37 = xmmword_101237100;
  v38 = xmmword_101237110;
  v39 = xmmword_101237120;
  v40 = vdupq_n_s32(v30);
  do
  {
    v41 = *(v29 + v35);
    v42 = vmovl_high_u8(v41);
    v43 = vmovl_u8(*v41.i8);
    v44.i64[0] = 0x9B009B009B009BLL;
    v44.i64[1] = 0x9B009B009B009BLL;
    v46.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v38, v40), vsubq_s32(v38, v40)), v40), vmull_high_u16(v43, v44));
    v46.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v37, v40), vsubq_s32(v37, v40)), v40), vmull_u16(*v42.i8, 0x9B009B009B009BLL));
    v46.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v39, v40), vsubq_s32(v39, v40)), v40), vmull_u16(*v43.i8, 0x9B009B009B009BLL));
    v46.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v36, v40), vsubq_s32(v36, v40)), v40), vmull_high_u16(v42, v44));
    *(v29 + v35) = vqtbl4q_s8(v46, xmmword_101237130);
    v35 += 16;
    v43.i64[0] = 0x1000000010;
    v43.i64[1] = 0x1000000010;
    v39 = vaddq_s32(v39, v43);
    v38 = vaddq_s32(v38, v43);
    v37 = vaddq_s32(v37, v43);
    v36 = vaddq_s32(v36, v43);
  }

  while (v35 != 32);
  *STACK[0x4630] = STACK[0xEF88];
  return (*(STACK[0x57D8] + 29144 * (v1 ^ 0x22D8)))(v36, v37, v38, v39);
}

uint64_t sub_1005B6B30(int a1)
{
  v7 = (v6 + ((a1 + v3 + ((a1 + v3) >> 16)) >> 8) + ((a1 + v3) >> 16) + a1 + v2 - 1) ^ 0xC5617561;
  v8 = v7 - (v7 >> 12) + ((v7 - (v7 >> 12)) >> 5);
  v9 = (v8 ^ 0x63FC5B0A) + ((v8 ^ 0x63FC5B0A) >> 15) + (((v8 ^ 0x63FC5B0A) + ((v8 ^ 0x63FC5B0A) >> 15)) >> 1);
  v10 = (v9 ^ 0xBF7C1EC9) + ((v9 ^ 0xBF7C1EC9) >> 15) + (((v9 ^ 0xBF7C1EC9) + ((v9 ^ 0xBF7C1EC9) >> 15)) >> 7);
  v11 = v10 + 573618605 - ((v10 + 573618605) >> 15) - ((v10 + 573618605 - ((v10 + 573618605) >> 15)) >> 1);
  v12 = (v11 ^ 0x6220D51A) + ((v11 ^ 0x6220D51A) >> 11) - (((v11 ^ 0x6220D51A) + ((v11 ^ 0x6220D51A) >> 11)) >> 5);
  v13 = v12 - ((v12 + 1578928324) >> 12) + 1578928324 + ((v12 - ((v12 + 1578928324) >> 12) + 1578928324) >> 7);
  v14 = v13 - 1255408131 + ((v13 - 1255408131) >> 8) - ((v13 - 1255408131 + ((v13 - 1255408131) >> 8)) >> 5);
  v15 = (v14 ^ 0x1FEFEDF) + ((v14 ^ 0x1FEFEDF) >> 12) - (((v14 ^ 0x1FEFEDF) + ((v14 ^ 0x1FEFEDF) >> 12)) >> 7);
  LODWORD(STACK[0x57C0]) = __ROR4__(v15, 30) & 0xBB2BBED2 ^ __ROR4__(v15, 28) ^ 0x80E126CC;
  LODWORD(STACK[0x5710]) = LODWORD(STACK[0x5600]) - ((2 * LODWORD(STACK[0x5600])) & 0xDA448E60) + 1830962993;
  v16 = LODWORD(STACK[0x5750]) + LODWORD(STACK[0x55A0]) - 2 * (STACK[0x5750] & LODWORD(STACK[0x55A0]));
  v17 = LODWORD(STACK[0x5550]) ^ LODWORD(STACK[0x55A0]) ^ v16;
  v18 = (v15 ^ 0xF14257BF) - ((v15 ^ 0xF14257BF) >> 13) - (((v15 ^ 0xF14257BF) - ((v15 ^ 0xF14257BF) >> 13)) >> 4);
  v19 = LODWORD(STACK[0x55A0]) ^ LODWORD(STACK[0x5390]) ^ v16 ^ v1;
  LODWORD(STACK[0x5750]) = (v8 ^ LODWORD(STACK[0x5740]) ^ v11 ^ v14) >> 2;
  LODWORD(STACK[0x5440]) = v19 ^ v10 ^ v13 ^ v18 ^ 0xB2D83471 ^ v5 & ((v17 ^ v10 ^ v13 ^ v18) >> 2);
  LODWORD(STACK[0x53B8]) = ~LODWORD(STACK[0x5308]);
  return (*(STACK[0x57D8] + 8 * v4))();
}

uint64_t sub_1005B6EB4()
{
  v0 = STACK[0x51B8];
  STACK[0x9750] = STACK[0x6A08];
  return (*(STACK[0x57D8] + 8 * (v0 - 8892)))();
}

uint64_t sub_1005B6F44()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x57D8];
  STACK[0xCF38] = *(STACK[0x57D8] + 8 * (STACK[0x51B8] - 19763));
  return (*(v1 + 8 * ((v0 - 16219) ^ (v0 - 19763))))();
}

uint64_t sub_1005B6FF4()
{
  v1 = (((v0 ^ 0x10C24387) - 107808723) ^ (((STACK[0x51B8] + 1377541762) ^ v0) - 1152692876) ^ ((v0 ^ 0x866A719F) + 1866123829)) + 1468740559;
  v2 = (LODWORD(STACK[0x56C0]) < 0x856EB33B) ^ (v1 < 0x856EB33B);
  v3 = v1 < LODWORD(STACK[0x56C0]);
  if (v2)
  {
    v3 = LODWORD(STACK[0x56C0]) < 0x856EB33B;
  }

  if (LODWORD(STACK[0x5680]) >= 0xFFFFFFF4)
  {
    v3 = 0;
  }

  return (*(STACK[0x57D8] + 8 * ((STACK[0x51B8] - 7572) | (4 * v3))))();
}

uint64_t sub_1005B7118()
{
  *(v3 + 8) = v0;
  *(v3 + 12) = v0;
  return (*(STACK[0x57D8] + 8 * (((((v4 + 66) ^ ((v2 + v4 - v5 + 1) < *(v1 - 0x2369327399A66D91))) & 1) * ((v4 + 2113) ^ 0x9AA)) ^ (v4 | 0x58F8))))();
}

uint64_t sub_1005B7204()
{
  v0 = STACK[0x51B8] - 22613;
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9207)))(0);
  return (*(v1 + 8 * (v0 ^ 0x10D6)))(v2);
}

uint64_t sub_1005B728C()
{
  v0 = STACK[0x51B8] ^ 0x7E02D6F3;
  v1 = STACK[0x51B8] - 22164;
  v2 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v0 - 2114095437 + v1 + 2632)))();
}

uint64_t sub_1005B72E4(uint64_t a1, uint64_t a2, int a3)
{
  v3 = (STACK[0x51B8] - 2138330582) | 0xC402011;
  v4 = STACK[0x51B8] - 20087;
  STACK[0x8930] = STACK[0x93C0] + 16;
  v5 = STACK[0x57D8];
  STACK[0x8580] = *(STACK[0x57D8] + 8 * v4);
  return (*(v5 + 8 * ((a3 + v3 + 310) ^ v4)))();
}

uint64_t sub_1005B7370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v19 = v7 ^ 0x15B9;
  LODWORD(STACK[0x57C0]) = (v7 ^ 0x15B9) + 6130;
  LODWORD(STACK[0x56C0]) = ((v7 ^ 0x15B9) + 6130) ^ 0x98A;
  v20 = -1744830464 * v11 + ((419583251 * v11) >> 5);
  v21 = 1788285568 * v10 + ((-1093325275 * v10) >> 25);
  v22 = (954728448 * v8) | ((128124701 * v8) >> 13);
  v23 = ((v22 ^ ((-385875968 * (((v9 ^ 0xC9) - 998963047) ^ ((v9 ^ 0x7B) - 1990395861) ^ ((v9 ^ 0x9C) - 1889482546))) | ((149754752 - 629723671 * (((v9 ^ 0xAE02EF87) - 2072140073) ^ ((v9 ^ 0xAD2B7792) - 2024522044) ^ ((v9 ^ (v19 + 6130) ^ 0xEB1FB16D) - 1050632085))) >> 8)) ^ 0x80000000) - v20) ^ v21;
  v24 = (658505728 * v23) | ((-1484445539 * v23) >> 10);
  v25 = ((v20 * LODWORD(STACK[0x724])) >> 4) | (1342177280 * v20);
  v26 = (-121875712 * v21) | ((-117916589 * v21) >> 24);
  v27 = v24 ^ ((1275068416 * v22) | ((-1518246125 * v22) >> 6));
  v28 = (-1771569152 * v24) | ((1165996749 * v24) >> 13);
  v29 = __ROR4__(1783916533 * v25, 31);
  v30 = v27 + v26 + (v25 ^ -v25 ^ (v27 - (v27 ^ v25)));
  v31 = 9 * ((2074662083 * v30) >> 25);
  v32 = (-731225728 * v30) | ((2074662083 * v30) >> 25);
  v33 = ((-1212773431 * v32) >> 5) | (v31 << 27);
  v34 = (v26 * LODWORD(STACK[0x728])) & 0xFFFC0000 | ((1393257563 * v26) >> 14);
  v35 = ((v28 ^ v29) - v32) ^ v34;
  v36 = (v35 * LODWORD(STACK[0x72C])) >> 4;
  v37 = v36 - 805306368 * v35 - 2 * ((v36 - 805306368 * v35) & 0x495B39AF ^ v36 & 0xD);
  v38 = ((2 * (-671088640 * v28 + ((-1389801701 * v28) >> 5))) & 0xBDB95776) + ((-671088640 * v28 + ((-1389801701 * v28) >> 5)) ^ 0xDEDCABBB);
  v39 = v33 - ((2 * v33) & 0xE568F1B6) + 1924430043;
  v40 = v37 - 916768350;
  v41 = ((v37 - 916768350) ^ 0xC95B39A2) - 209133063 * (v38 - (((v39 ^ 0xA2AB0A64) + 1565848988) ^ ((v39 ^ 0x44023D85) - 1140997509) ^ ((v39 ^ 0x941D4F3A) + 1810018502)));
  v42 = -451698232 - 1946157056 * v34 + ((1254960099 * v34) >> 6) + v38 - (((v39 ^ 0xF232F348) + 231541944) ^ ((v39 ^ 0x50349490) - 1345623184) ^ ((v39 ^ 0xD0B21F03) + 793633021)) - (((v40 ^ 0xD8D048F1) + 657438479) ^ ((v40 ^ 0xFE25337B) + 31116421) ^ ((v40 ^ 0xEFAE4228) + 273792472));
  v43 = ((2 * v42) & 0xFEFDEDC6) + (v42 ^ 0xFF7EF6E3);
  v44 = ((v36 & 0x80000 ^ 0x213BAE75) + 909822157) ^ (v36 & 0x80000 | 0xD76298BA) ^ ((v36 & 0x80000 ^ 0x510B73F5) + 1175065933);
  v45 = v44 + 13065041;
  v46 = ((v43 - 32864) ^ LODWORD(STACK[0x730])) & (2 * ((v43 - 32864) & 0x81897D)) ^ (v43 - 32864) & 0x81897D;
  v47 = ((2 * ((v43 - 32864) ^ 0x61FBE60D)) ^ 0xC2F4DEE0) & ((v43 - 32864) ^ 0x61FBE60D) ^ (2 * ((v43 - 32864) ^ 0x61FBE60D)) & 0x617A6F70;
  v48 = v47 ^ 0x210A2110;
  v49 = (v47 ^ 0x21004E60) & (4 * v46) ^ v46;
  v50 = ((4 * v48) ^ 0x85E9BDC0) & v48 ^ (4 * v48) & 0x617A6F70;
  v51 = (v50 ^ 0x1682D40) & (16 * v49) ^ v49;
  v52 = ((16 * (v50 ^ 0x60124230)) ^ 0x17A6F700) & (v50 ^ 0x60124230) ^ (16 * (v50 ^ 0x60124230)) & 0x617A6F70;
  v53 = v51 ^ 0x617A6F70 ^ (v52 ^ 0x1226700) & (v51 << 8);
  v54 = (v43 - 32864) ^ (v41 + 35078324 + ((2 * ((v41 + 223463690) & 0x74C577AA ^ v41 & 2)) ^ 0xFFFFFFFA)) ^ (2 * ((v53 << 16) & 0x617A0000 ^ v53 ^ ((v53 << 16) ^ 0x6F700000) & (((v52 ^ 0x60580870) << 8) & 0x617A0000 ^ 0x1100000 ^ (((v52 ^ 0x60580870) << 8) ^ 0x7A6F0000) & (v52 ^ 0x60580870)))) ^ 0xF4502035;
  LODWORD(STACK[0x5550]) = v54;
  v55 = (((v54 - 1321357793) ^ 0x26FC93EA) - 1595659902) ^ (v54 - 1321357793) ^ (((v54 - 1321357793) ^ 0x957DBFB3) + 325387737) ^ (((v54 - 1321357793) ^ 0xAD999632) + 729885786) ^ (((v54 - 1321357793) ^ 0x67FFFFFF) - 504937067);
  LODWORD(STACK[0x55F0]) = v55 ^ 0x619C7478;
  v56 = v55 ^ 0x619C7478 ^ v39;
  v57 = (v45 ^ 0xEC36BDF1) & (2 * (v45 & 0xE8373DF5)) ^ v45 & 0xE8373DF5;
  v58 = ((2 * (v45 ^ 0xEC5A8719)) ^ 0x8DB75D8) & (v45 ^ 0xEC5A8719) ^ (2 * (v45 ^ 0xEC5A8719)) & 0x46DBAEC;
  v59 = v58 ^ 0x4248A24;
  v60 = (v58 ^ 0x4930C8) & (4 * v57) ^ v57;
  v61 = ((4 * v59) ^ 0x11B6EBB0) & v59 ^ (4 * v59) & 0x46DBAEC;
  v62 = (v61 ^ 0x24AAA0) & (16 * v60) ^ v60;
  v63 = ((16 * (v61 ^ 0x449104C)) ^ 0x46DBAEC0) & (v61 ^ 0x449104C) ^ (16 * (v61 ^ 0x449104C)) & 0x46DBAE0;
  v64 = v62 ^ 0x46DBAEC ^ (v63 ^ 0x449AA00) & (v62 << 8);
  v65 = (v44 + 13065041) ^ (2 * ((v64 << 16) & 0x46D0000 ^ v64 ^ ((v64 << 16) ^ 0x3AEC0000) & (((v63 ^ 0x24102C) << 8) & 0x46D0000 ^ 0x450000 ^ (((v63 ^ 0x24102C) << 8) ^ 0x6DBA0000) & (v63 ^ 0x24102C))));
  v66 = v43 - (((v55 ^ 0x8F37D548) + 290741968) ^ ((v55 ^ 0x3F282F6F) - 1588878103) ^ ((v55 ^ 0xC9F8BFB3) + 1469789237)) + 805656355;
  v67 = ((v66 ^ 0x2F298191) - 1758920291) ^ v66 ^ ((v66 ^ 0xC037A303) + 2016879375) ^ ((v66 ^ 0xF716A29B) + 1326850711) ^ ((v66 ^ 0x5FF7FFFB) - 403210249);
  v68 = v67 ^ 0xE6BFBEDB;
  v69 = 785000645 - v44;
  if (((v55 ^ 0xF50F0051) & (v65 ^ 0xE034482D) ^ v65 & 0x8CE845C5) != 0x80204005)
  {
    v45 = v69;
  }

  v70 = v40 & 0xFFF7FFFF;
  LODWORD(STACK[0x55C0]) = v67;
  v71 = 2036908853 * (((v67 ^ (v12 + 1911)) + 1053791314) ^ ((v67 ^ 0xB827BD28) - 1587020787) ^ ((v67 ^ 0xD85717AF) - 1055435124)) - 1370768169;
  v72 = ((((v55 ^ 0x3B730223) - 1525642843) ^ ((v55 ^ (v17 + 1148)) + 467981901) ^ ((v55 ^ 0xC7131A7C) + 1500549628)) + 11694049 + v45) ^ v70;
  v73 = 1852202679 * (((v56 ^ 0x3A246075) - 975462517) ^ ((v56 ^ 0x2CF4FE05) - 754253317) ^ ((v56 ^ 0x7C1FD747) - 2082461511)) + 1993790982;
  v74 = ((v73 ^ 0xF0D3F481) + 1055999692) ^ v73 ^ ((v73 ^ 0x583248A) - 878602559) ^ ((v73 ^ 0x7B3AF240) - 1256701940) ^ ((v73 ^ 0xBFB76FFE) + 1905647030);
  v75 = 1521688991 - 1042789079 * (((v55 ^ 0xD025DCB4) + 1313232692) ^ ((v55 ^ 0x5FDF34FA) - 1044594818) ^ ((v55 ^ 0xF61DADDA) + 1753097822));
  v76 = (v75 ^ 0xA0BD908) & (2 * (v75 & 0xAA2BD92D)) ^ v75 & 0xAA2BD92D;
  v77 = ((2 * (v75 ^ 0x1A5DEB10)) ^ 0x60EC647A) & (v75 ^ 0x1A5DEB10) ^ (2 * (v75 ^ 0x1A5DEB10)) & 0xB076323C;
  v78 = v77 ^ 0x90121205;
  v79 = (v77 ^ 0x20642038) & (4 * v76) ^ v76;
  v80 = ((4 * v78) ^ 0xC1D8C8F4) & v78 ^ (4 * v78) & 0xB076323C;
  v81 = (v80 ^ 0x80500038) & (16 * v79) ^ v79;
  v82 = ((16 * (v80 ^ 0x30263209)) ^ 0x76323D0) & (v80 ^ 0x30263209) ^ (16 * (v80 ^ 0x30263209)) & 0xB0763230;
  v83 = v81 ^ 0xB076323D ^ (v82 ^ 0x62222D) & (v81 << 8);
  v84 = (v75 ^ (2 * ((v83 << 16) & 0x30760000 ^ v83 ^ ((v83 << 16) ^ 0x323D0000) & (((v82 ^ 0xB014102D) << 8) & 0x30760000 ^ 0x440000 ^ (((v82 ^ 0xB014102D) << 8) ^ 0x76320000) & (v82 ^ 0xB014102D))))) >> 17;
  LODWORD(STACK[0x5740]) = v56;
  v74 >>= 3;
  LODWORD(STACK[0x5730]) = v55;
  v85 = 647266304 * (((v55 ^ 0x13DFC) - 1119177092) ^ ((v55 ^ 0x1ADDE) + 1184638554) ^ ((v55 ^ 0x1D5B6) + 475160114)) - 181589887;
  v86 = (v85 ^ 0x45342B93) & (2 * (v85 & 0x88388001)) ^ v85 & 0x88388001;
  v87 = ((2 * (v85 ^ 0x45452B91)) ^ 0x9AFB8110) & (v85 ^ 0x45452B91) ^ (2 * (v85 ^ 0x45452B91)) & 0xCD7D0000;
  v88 = v87 ^ 0x45040002;
  v89 = (v87 ^ 0x460000E) & (4 * v86) ^ v86;
  v90 = ((4 * v88) ^ 0x35F7F3B8) & v88 ^ (4 * v88) & 0xCD7DFCEC;
  v91 = (v90 ^ 0x575F0A0) & (16 * v89) ^ v89;
  v92 = ((16 * (v90 ^ 0xC8080C46)) ^ 0xD7DFCEE0) & (v90 ^ 0xC8080C46) ^ (16 * (v90 ^ 0xC8080C46)) & 0xCD7DFCE0;
  v93 = v91 ^ 0xCD7DFCEE ^ (v92 ^ 0xC55DCC00) & (v91 << 8);
  v94 = (v93 << 16) & 0x4D7D0000 ^ v93 ^ ((v93 << 16) ^ 0x7CEE0000) & (((v92 ^ 0x820300E) << 8) & 0xCD7D0000 ^ (((v92 ^ 0x820300E) << 8) ^ 0x7DFC0000) & (v92 ^ 0x820300E) ^ 0x10000);
  v95 = (((v72 ^ 0xCA1AD35D) - 1573770739) ^ ((v72 ^ 0x2796E256) + 1337858824) ^ ((v72 ^ 0x24DF08A9) + 1291317753)) * LODWORD(STACK[0x734]) - 1555904060;
  LODWORD(STACK[0x5700]) = v72;
  v96 = (v74 ^ 0xF9C45649) & (((v56 << 29) + 1122580570) ^ ((((v56 << 29) + 1122580570) ^ 0xC9F8B72E) + 351170700) ^ ((((v56 << 29) + 1122580570) ^ 0x7608012E) - 1424046452) ^ ((((v56 << 29) + 1122580570) ^ 0xE36671BD) + 1047574041) ^ ((((v56 << 29) + 1122580570) ^ 0x7E7FFFE7) - 1553385405) ^ 0x224316D1);
  v97 = v74 & 0x1F55D174 ^ 0x6BBAFBF;
  v98 = (v71 ^ 0xCAF47387) & (2 * (v71 & 0xE0E67BA6)) ^ v71 & 0xE0E67BA6;
  v99 = ((2 * (v71 ^ 0xCA78C187)) ^ 0x553D7442) & (v71 ^ 0xCA78C187) ^ (2 * (v71 ^ 0xCA78C187)) & 0x2A9EBA20;
  v100 = v99 ^ 0x2A828A21;
  v101 = (v99 ^ 0x183000) & (4 * v98) ^ v98;
  v102 = ((4 * v100) ^ 0xAA7AE884) & v100 ^ (4 * v100) & 0x2A9EBA20;
  v103 = (v102 ^ LODWORD(STACK[0x738])) & (16 * v101) ^ v101;
  v104 = ((16 * (v102 ^ 0x841221)) ^ 0xA9EBA210) & (v102 ^ 0x841221) ^ (16 * (v102 ^ 0x841221)) & 0x2A9EBA20;
  v105 = v103 ^ 0x2A9EBA21 ^ (v104 ^ 0x288AA200) & (v103 << 8);
  v106 = v71 ^ (2 * ((v105 << 16) & 0x2A9E0000 ^ v105 ^ ((v105 << 16) ^ 0x3A210000) & (((v104 ^ (a7 + 3809)) << 8) & 0x2A9E0000 ^ 0x20040000 ^ (((v104 ^ (a7 + 3809)) << 8) ^ 0x1EBA0000) & (v104 ^ (a7 + 3809)))));
  LODWORD(STACK[0x56F0]) = v68;
  v107 = v97 ^ v96;
  v108 = ((((__PAIR64__(v68, v106) >> 2) ^ 0xA09D0E8A) - 621072292) ^ (((__PAIR64__(v68, v106) >> 2) ^ 0xDF003F83) - 1520041645) ^ (((__PAIR64__(v68, v106) >> 2) ^ 0x7EBF2F0) + 2106444834)) + 581716463;
  v109 = ((1858076672 * (((v72 ^ 0x1DC) + 926887054) ^ ((v72 ^ 0x350) + 1690438146) ^ ((v72 ^ 0x32E) - 226040192))) | (v95 >> 10)) + 1895825408;
  v110 = (v84 & 0x34E ^ 0x7A207DF7 ^ (v84 ^ 0xFFFFAAA8) & (v85 ^ 0xF03B5212 ^ (2 * v94))) - v107 + v109;
  v111 = (v110 - ((2 * v110) & 0x988A3C86) + 1279598147) ^ v108 ^ ((v108 ^ 0xB1235948) + 1784799664) ^ ((v108 ^ 0xE3674F2E) + 942012362) ^ ((v108 ^ 0xB9868C81) + 1657025639) ^ ((v108 ^ 0xCF7FDDFF) + 339567897) ^ 0x68F8595B;
  v112 = -1046769769 * v109;
  v113 = (365294580 * v111) | ((1165065469 * v111) >> 30);
  v114 = 107888220 * v109 + ((-1046769769 * v109) >> 30);
  v115 = v108 * v18 + ((-1168273961 * v108 - 1591143720) >> 5) - 0x40000000;
  v116 = (((-254521577 * v107) >> 2) - (v107 << 30) - v113) ^ v114;
  v117 = (1275068416 * v113) | ((1463253587 * v113) >> 6);
  v118 = ((1501530115 * (v116 + v115)) >> 2) - ((v116 + v115) << 30);
  v119 = v112 & 0xC0000000 | ((-1249868979 * v114) >> 2);
  v120 = (2080374784 * v115) | ((625647711 * v115) >> 6);
  v121 = (1884240975 * v118) >> 10;
  v122 = -960124009 * v120;
  v123 = 331350016 * v118 - 1881747248;
  v124 = (v123 ^ 0x7D031FF9) & (2 * (v123 & 0x70000010)) ^ v123 & 0x70000010;
  v125 = ((2 * (v123 ^ 0xBD031FD9)) ^ 0x9A544100) & (v123 ^ 0xBD031FD9) ^ (2 * (v123 ^ 0xBD031FD9)) & 0xCD000000;
  v126 = v125 ^ 0x45000029;
  v127 = (v125 ^ 0xBAFFFFD6) & (4 * v124) ^ v124;
  v128 = ((4 * v126) ^ 0x34A8C3A4) & v126 ^ (4 * v126) & 0xCD2A30E8;
  v129 = (v128 ^ 0x42800A9) & (16 * v127) ^ v127;
  v130 = ((16 * (v128 ^ 0xC9023049)) ^ 0xD2A30E90) & (v128 ^ 0xC9023049) ^ (16 * (v128 ^ 0xC9023049)) & 0xCD2A30E0;
  v131 = v129 ^ 0xCD2A30E9 ^ (v130 ^ 0xC0220069) & (v129 << 8);
  v132 = (v131 << 16) & 0x4D2A0000 ^ v131 ^ ((v131 << 16) ^ 0x30E90000) & (((v130 ^ 0xD083069) << 8) & 0x4D2A0000 ^ 0x450A0000 ^ (((v130 ^ 0xD083069) << 8) ^ 0x2A300000) & (v130 ^ 0xD083069));
  v133 = v120 ^ v119 ^ v117 ^ v118;
  v134 = 1377397737 * v133;
  v135 = 213251200 * v133 - 806134827;
  v136 = (2 * (v135 & 0x300CA400)) & 0x20094800 ^ v135 & 0x300CA400 ^ ((2 * (v135 & 0x300CA400)) | 2) & (v135 ^ 0x1EC34BFE);
  v137 = ((2 * (v135 ^ 0x1EC34BFE)) ^ (v14 + 1541)) & (v135 ^ 0x1EC34BFE) ^ (2 * (v135 ^ 0x1EC34BFE)) & 0x2ECFEF00;
  v138 = v137 ^ 0x22402001;
  v139 = (v137 ^ 0xC8FCFD5) & (4 * v136) ^ v136;
  v140 = (4 * v138) & 0x2ECFEFD4 ^ 0x4C04081 ^ ((4 * v138) ^ 0xBB3FBF54) & v138;
  v141 = (16 * v139) & 0x2ECFEFD0 ^ v139 ^ ((16 * v139) ^ 0x50) & v140;
  v142 = (16 * v140) & 0x2ECFEFD0 ^ 0x2010285 ^ ((16 * v140) ^ 0xECFEFD50) & v140;
  v143 = v141 ^ (v141 << 8) & 0x2ECFEF00 ^ ((v141 << 8) ^ 0x5500) & v142 ^ 0x2ECFAA80;
  v144 = v135 ^ (2 * ((v143 << 16) & 0x2ECF0000 ^ v143 ^ ((v143 << 16) ^ 0x6FD50000) & ((v142 << 8) & 0x2ECF0000 ^ ((v142 << 8) ^ 0x4FEF0000) & v142 ^ 0x20000000)));
  v145 = (v123 ^ (2 * v132) ^ 0x77CD48C1) & ~v121 | v121 & 0x1FF9DC;
  v146 = ((v145 ^ 0xD043FD02) - 518026328) ^ ((v145 ^ 0xE6E638C) + 1060246826) ^ ((v145 ^ 0x43CD98AD) + 1922166281);
  v147 = (((1778384896 * v117) | ((-1836838347 * v117) >> 7)) ^ 0x6B33FEFD) - 34619649 + ((2 * ((1778384896 * v117) | ((-1836838347 * v117) >> 7))) & 0xD667FDFA) + 109;
  v148 = (v144 ^ 0x8FC0007E) & ((v134 >> 25) ^ 0x8FC960B5) ^ v144 & 0x70369F4A;
  v149 = 1582249125 * (v147 + v146) - 1346849076;
  v150 = (2 * (v149 & 0x11304884)) & (v149 ^ 0xC19CC484) ^ v149 & 0x11304884 ^ (((2 * (v149 & 0x11304884)) & 0x208000) - 2147218432);
  v151 = (2 * (v149 ^ 0xC19CC484)) & 0xD0AC8C00 ^ 0x50A48400 ^ ((2 * (v149 ^ 0xC19CC484)) ^ 0xA1591800) & (v149 ^ 0xC19CC484);
  v152 = (4 * v150) & 0xD0AC8C00 ^ v150 ^ ((4 * v150) ^ LODWORD(STACK[0x73C])) & v151;
  v153 = (4 * v151) & 0xD0AC8C00 ^ 0x900C8C00 ^ ((4 * v151) ^ 0x42B23000) & v151;
  v154 = v152 ^ (16 * v152) & 0xD0AC8C00 ^ ((16 * v152) ^ 0x40C000) & v153 ^ 0x50A80000;
  v155 = (16 * v153) & 0xD0AC8C00 ^ 0xD0240C00 ^ ((16 * v153) ^ 0xAC8C000) & v153;
  v156 = (v154 << 8) & 0xD0AC8C00 ^ v154 ^ ((v154 << 8) ^ LODWORD(STACK[0x740])) & v155;
  v157 = v149 ^ (2 * ((v156 << 16) & 0x50AC0000 ^ v156 ^ ((v156 << 16) ^ 0xC000000) & ((v155 << 8) & 0x50AC0000 ^ 0x50200000 ^ ((v155 << 8) ^ LODWORD(STACK[0x740])) & v155)));
  v158 = 553239443 * (((2 * ((v157 ^ 0xFC0745C) & (v148 ^ 0x3FD97BB5) ^ v148 & 0x3EB124D8)) ^ 0x7D224120) + (((v157 ^ v148 ^ 0x4DC674C0) + 1850757584) ^ ((v157 ^ v148 ^ 0x3DE9C658) + 511697752) ^ ((v157 ^ v148 ^ 0x7E8799A9) + 1561443495))) - 1239214166;
  v159 = v147 - ((625647711 * v115) >> 6 << 30) + (v122 >> 2) - v146 - 1262454404;
  v160 = v159 ^ v148 ^ ((v159 ^ 0xF7BCA4CD) + 2036636781) ^ ((v159 ^ 0x162990F6) - 1728993192) ^ ((v159 ^ 0xEFCD0A9A) + 1628779068) ^ ((v159 ^ 0x7F7FF9FF) - 240664225);
  LODWORD(STACK[0x5590]) = v160;
  v161 = v160 ^ 0x28D4413F;
  v162 = v158 ^ v160 ^ 0x28D4413F ^ ((v158 ^ 0xB8E323FC) - 134570283) ^ ((v158 ^ 0xF8373CAF) - 1221688952) ^ ((v158 ^ 0xFCDA27A) + 1087643475) ^ ((v158 ^ 0xFFFFFFFE) - 1327086889);
  v163 = (((v162 ^ 0x53E19163) - 1977767259) ^ ((v162 ^ 0xFA04D31D) + 603515099) ^ ((v162 ^ 0xFF29FD7D) + 651544251)) - 1238609726;
  v164 = (v163 ^ 0xE8BFC4E8) & (2 * (v163 & 0xEA3FE6CA)) ^ v163 & 0xEA3FE6CA;
  v165 = ((2 * (v163 ^ 0x68D20DEC)) ^ 0x5DBD64C) & (v163 ^ 0x68D20DEC) ^ (2 * (v163 ^ 0x68D20DEC)) & 0x82EDEB26;
  v166 = v165 ^ 0x82242922;
  v167 = (v165 ^ 0xC98200) & (4 * v164) ^ v164;
  v168 = ((4 * v166) ^ 0xBB7AC98) & v166 ^ (4 * v166) & 0x82EDEB24;
  v169 = (v168 ^ 0x2A5A800) & (16 * v167) ^ v167;
  v170 = ((16 * (v168 ^ 0x80484326)) ^ 0x2EDEB260) & (v168 ^ 0x80484326) ^ (16 * (v168 ^ 0x80484326)) & 0x82EDEB20;
  v171 = v169 ^ 0x82EDEB26 ^ (v170 ^ 0x2CCA206) & (v169 << 8);
  v172 = v163 ^ (2 * ((v171 << 16) & 0x2ED0000 ^ v171 ^ ((v171 << 16) ^ 0x6B260000) & (((v170 ^ (v16 + 262)) << 8) & 0x2ED0000 ^ 0x2040000 ^ (((v170 ^ (v16 + 262)) << 8) ^ 0x6DEB0000) & (v170 ^ (v16 + 262)))));
  v173 = v146 - (((v172 ^ 0x7BD8A882) + 129522062) ^ ((v172 ^ 0x4B637881) + 922978703) ^ ((v172 ^ 0xDB17E085) - 1485368949));
  LODWORD(STACK[0x5540]) = v172 ^ 0x839F0EF0;
  v174 = v172 ^ 0x839F0EF0 ^ v161;
  v175 = (((v172 ^ 0xEBA8B06) + 1926920714) ^ ((v172 ^ 0xF203771A) - 1906080234) ^ ((v172 ^ 0x1715CC9A) + 1802845590)) + (((v148 ^ 0x72A33CC3) - 1272794311) ^ ((v148 ^ 0xE603F66) - 924733282) ^ ((v148 ^ 0xC31A7810) + 94107628));
  v176 = -2129503777 * v175 - 767673610;
  v177 = (2 * (v176 & 0xFF6DEC03)) & (v176 ^ 0xDDD8BB33) ^ v176 & 0xFF6DEC03 ^ (((2 * (v176 & 0xFF6DEC03)) & 0x22915000) + 2097664);
  v178 = (2 * (v176 ^ 0xDDD8BB33)) & 0x22B55730 ^ 0x22955110 ^ ((2 * (v176 ^ 0xDDD8BB33)) ^ 0x456AAE60) & (v176 ^ 0xDDD8BB33);
  v179 = (4 * v177) & 0x22B55730 ^ v177 ^ ((4 * v177) ^ (a5 + 3073)) & v178;
  v180 = (4 * v178) & 0x22B55730 ^ 0x20200330 ^ ((4 * v178) ^ 0x8AD55CC0) & v178;
  v181 = (16 * v179) & 0x22B55730 ^ v179 ^ ((16 * v179) ^ LODWORD(STACK[0x744])) & v180;
  v182 = (16 * v180) & 0x22B55730 ^ 0xA00430 ^ ((16 * v180) ^ 0x2B557300) & v180;
  v183 = v181 ^ 0x155530 ^ (v181 << 8) & 0x22B55700 ^ ((v181 << 8) ^ 0xA0020000) & v182;
  v184 = v176 ^ (2 * ((v183 << 16) & 0x22B50000 ^ v183 ^ ((v183 << 16) ^ 0x57300000) & ((v182 << 8) & 0x22B50000 ^ 0x2A00000 ^ ((v182 << 8) ^ 0x35570000) & v182)));
  v185 = 1191500441 * (((v172 ^ 0xC1169726) - 1116314070) ^ ((v172 ^ 0x7686DB7D) + 182856307) ^ ((v172 ^ LODWORD(STACK[0x748])) + 542936531)) - 413467338;
  v186 = (v185 ^ 0x372D8201) & (2 * (v185 & 0xB64DD350)) ^ v185 & 0xB64DD350;
  v187 = ((2 * (v185 ^ 0x7B2E0481)) ^ 0x9AC7AFA2) & (v185 ^ 0x7B2E0481) ^ (2 * (v185 ^ 0x7B2E0481)) & 0xCD63D7D0;
  v188 = v187 ^ 0x45205051;
  v189 = (v187 ^ 0x88438780) & (4 * v186) ^ v186;
  v190 = ((4 * v188) ^ 0x358F5F44) & v188 ^ (4 * v188) & 0xCD63D7D0;
  v191 = (v190 ^ 0x5035740) & (16 * v189) ^ v189;
  v192 = ((16 * (v190 ^ 0xC8608091)) ^ 0xD63D7D10) & (v190 ^ 0xC8608091) ^ (16 * (v190 ^ 0xC8608091)) & 0xCD63D7D0;
  v193 = v191 ^ 0xCD63D7D1 ^ (v192 ^ 0xC4215500) & (v191 << 8);
  v194 = v185 ^ (2 * ((v193 << 16) & 0x4D630000 ^ v193 ^ ((v193 << 16) ^ 0x57D10000) & (((v192 ^ 0x94282C1) << 8) & 0x4D630000 ^ 0xC200000 ^ (((v192 ^ 0x94282C1) << 8) ^ 0x63D70000) & (v192 ^ 0x94282C1))));
  LODWORD(STACK[0x56D0]) = v175;
  v195 = (((1004535808 * v175 + 605578062) ^ 0x35F8853A) - 1895884404) ^ (1004535808 * v175 + 605578062) ^ (((1004535808 * v175 + 605578062) ^ 0xE99487B0) + 1385372418) ^ (((1004535808 * v175 + 605578062) ^ LODWORD(STACK[0x74C])) - 294894965) ^ (((1004535808 * v175 + 605578062) ^ 0xCDFFBFFF) + 1995973455);
  v196 = (1283457024 * (((v172 ^ LODWORD(STACK[0x754])) - 1915096168) ^ ((v172 ^ 0x10D) - 219179005) ^ ((v172 ^ LODWORD(STACK[0x750])) - 386225635)) + 1979953272) | 0x305;
  v197 = 1024351131 * (((v174 ^ 0x63EFEC11) - 1676667921) ^ ((v174 ^ 0x8F543F5D) + 1890304163) ^ ((v174 ^ 0x62A210EE) - 1654788334)) - 440800313;
  v198 = 1392885863 * v173 - 1153913795;
  v199 = (v198 ^ 0x22403F9) & (2 * (v198 & 0xA3292BF8)) ^ v198 & 0xA3292BF8;
  v200 = ((2 * (v198 ^ 0x66447D9)) ^ 0x4A9AD842) & (v198 ^ 0x66447D9) ^ (2 * (v198 ^ 0x66447D9)) & 0xA54D6C20;
  v201 = v200 ^ 0xA5452421;
  v202 = (v200 ^ 0x20084801) & (4 * v199) ^ v199;
  v203 = ((4 * v201) ^ 0x9535B084) & v201 ^ (4 * v201) & 0xA54D6C20;
  v204 = (v203 ^ 0x85052000) & (16 * v202) ^ v202;
  v205 = ((16 * (v203 ^ 0x20484C21)) ^ 0x54D6C210) & (v203 ^ 0x20484C21) ^ (16 * (v203 ^ 0x20484C21)) & 0xA54D6C20;
  v206 = v204 ^ 0xA54D6C21 ^ (v205 ^ 0x4444021) & (v204 << 8);
  v207 = v198 ^ (2 * ((v206 << 16) & 0x254D0000 ^ v206 ^ ((v206 << 16) ^ 0x6C210000) & (((v205 ^ 0xA1092C21) << 8) & 0x254D0000 ^ 0x20010000 ^ (((v205 ^ 0xA1092C21) << 8) ^ 0x4D6C0000) & (v205 ^ 0xA1092C21))));
  v208 = (((v197 ^ 0xEB08E873) + 1917777214) ^ v197 ^ ((v197 ^ 0xFE54D8C1) + 1729283472) ^ ((v197 ^ 0xA81E2DFC) + 827863219) ^ ((v197 ^ 0xDBFBFFFE) + 1119740594)) >> 10;
  LODWORD(STACK[0x55E0]) = v174;
  v209 = -423624704 * (((v174 ^ 0xCCCCCCCC) + 1860058932) ^ ((v174 ^ 0xA0) + 329601888) ^ ((v174 ^ 0xF362AFCE) + 211636274)) + 1200298567;
  v210 = (v209 ^ 0xFD85B655) & (2 * (v209 & 0xFDC00001)) ^ v209 & 0xFDC00001;
  v211 = ((2 * (v209 ^ 0xC785B657)) ^ 0x74C2A410) & (v209 ^ 0xC785B657) ^ (2 * (v209 ^ 0xC785B657)) & 0x3A000000;
  v212 = v211 ^ 0xA000002;
  v213 = (v211 ^ 0x3000000E) & (4 * v210) ^ v210;
  v214 = ((4 * v212) ^ 0xE9C54FB8) & v212 ^ (4 * v212) & 0x3A7153EC;
  v215 = (v214 ^ 0x284143A0) & (16 * v213) ^ v213;
  v216 = ((16 * (v214 ^ 0x12301046)) ^ 0xA7153EE0) & (v214 ^ 0x12301046) ^ (16 * (v214 ^ 0x12301046)) & 0x3A7153E0;
  v217 = v215 ^ 0x3A7153EE ^ (v216 ^ 0x22111200) & (v215 << 8);
  v218 = (v194 >> 9) & 0x694E46 ^ 0x2057B5BF ^ ((v194 >> 9) ^ 0xFFACFBC1) & (v196 ^ ((v196 ^ 0x14AEC4AA) - 665679831) ^ ((v196 ^ 0xA0ABB48C) + 1817704463) ^ ((v196 ^ 0xF8613C34) + 882733239) ^ ((v196 ^ 0x7F67FF6F) - 1281641490) ^ 0x131502C4);
  v219 = v184 >> 11;
  v220 = (v184 >> 11) ^ 0x17CCE8;
  LODWORD(STACK[0x56E0]) = v173;
  v221 = (((432013312 * v173 + 795655099) ^ 0xAFA048BF) + 1920142588) ^ (432013312 * v173 + 795655099) ^ (((432013312 * v173 + 795655099) ^ 0xD2644545) + 263651586) ^ (((432013312 * v173 + 795655099) ^ 0xA017093E) + 2110016891) ^ (((432013312 * v173 + 795655099) ^ 0xFFFFBF7F) + 573373244);
  v222 = v208 & 0x27CD7D ^ 0xFA59BEFA ^ (v209 ^ (2 * ((v217 << 16) & 0x3A710000 ^ v217 ^ ((v217 << 16) ^ 0x53EE0000) & (((v216 ^ 0x1860410E) << 8) & 0x3A710000 ^ 0xA200000 ^ (((v216 ^ 0x1860410E) << 8) ^ 0x71530000) & (v216 ^ 0x1860410E)))) ^ 0x578E70E7) & (v208 ^ 0xFFE65187);
  v223 = ((v207 >> 10) ^ 0x6678B22C) & (v221 ^ 0xCCD34444) ^ v221 & 0x99AF21AF;
  v224 = ((v223 ^ 0x166699D1) - 160759485) ^ ((v223 ^ 0x8FDB8BD2) + 1876300610) ^ ((v223 ^ 0xFFC1EDF8) + 533493100);
  v225 = (v220 - (v219 & 0xF8B3D ^ 0xCAF7FCEA ^ (v219 ^ 0xFFE83317) & (v195 ^ 0x8E08178C))) ^ (615612734 - (((v195 ^ 0x8B64A9E2) - 349353070) ^ ((v195 ^ 0x394BCDAD) + 1493315551) ^ ((v195 ^ 0xF6D70701) - 1767971469)));
  v226 = (v195 ^ 0x9FB61D8C ^ (v225 - ((2 * v225) & 0xB69CFD84) - 615612734)) + v220;
  v227 = v218 - v222 - v224 - v226 - 2039388311;
  v228 = (2013265920 * v226) | ((336984655 * v226) >> 5);
  HIDWORD(v230) = v227;
  LODWORD(v230) = 1073830809 * v227;
  v229 = v230 >> 2;
  HIDWORD(v230) = v208;
  LODWORD(v230) = 188518837 * v222;
  v231 = v230 >> 1;
  v232 = (((-2006487040 * v224) | ((2107635761 - 1035434377 * v224) >> 20)) - v229 - v228 - 8187904) ^ v231;
  v233 = ((870507627 * v229) >> 3) | (1610612736 * v229);
  v234 = (783941632 * v232) | ((1744050013 * v232) >> 15);
  HIDWORD(v230) = v231;
  LODWORD(v230) = 1172989689 * v231;
  v235 = v230 >> 2;
  v236 = (v233 ^ ((-429707264 * v228) | ((-374446541 * v228) >> 20)) ^ v234) - v235;
  v237 = (-433979392 * v236) | ((796586769 * v236) >> 15);
  v238 = (-1414529024 * v234) | ((v234 * LODWORD(STACK[0x758])) >> 12);
  v239 = 10550488 * v233 + ((1075060635 * v233) >> 29);
  v240 = (561174784 * v235) | ((-1709083943 * v235) >> 24);
  v241 = (v239 ^ 0xE2437EF7 ^ v238) - v237;
  v242 = (v239 ^ v240) + 2 * (v239 & v240) + v238 - 2 * (((v239 ^ v240) + 2 * (v239 & v240)) & v238) - v237;
  v243 = (v241 ^ (v13 + 1476)) - v242;
  LODWORD(STACK[0x5530]) = v238;
  v244 = (931503677 * v243) ^ v238;
  v245 = 931503677 * v243 + v237;
  LODWORD(STACK[0x57B0]) = 931503677 * v243;
  v246 = ((v242 - 931503677 * v243) ^ 0x6E7F3B8D) - 1747190273 + ((2 * (v242 - 931503677 * v243)) & 0xDCFE771A);
  v247 = -895787417 * v243;
  LODWORD(STACK[0x5570]) = v243;
  v248 = -1355579392 * v243;
  LODWORD(STACK[0x5630]) = v244;
  v249 = (281903104 * v244) | ((-1110564453 * v244) >> 17);
  LODWORD(STACK[0x5720]) = v245;
  v250 = (211007488 * v245) | ((-1644064137 * v245) >> 21);
  LODWORD(STACK[0x55D0]) = v246;
  v251 = ((926542336 * v246) | ((630955253 * v246 + 1071422724) >> 23)) - 1187379200;
  v252 = v251 ^ ((v248 & 0xFFFF8000 | (v247 >> 17)) - v249 - v250);
  v253 = (1998685423 * v252) >> 23;
  v254 = (1124720128 * v252) | v253;
  v255 = -1389560231 * v254;
  v256 = (48578560 * v250) | ((885263253 * v250) >> 18);
  HIDWORD(v230) = 496337471 * v249;
  LODWORD(v230) = 496337471 * v249;
  v257 = (v230 >> 29) - v256 - v254;
  v259 = __PAIR64__(v253, __ROR4__((((267550791 * v251) >> 9) & 0x7F8000 | ((-226474240 * v251) >> 17) | (595591168 * v251)) ^ 0xE8162E5A, 15));
  v258 = v259 ^ 0x5CB5D02C;
  v260 = 342945349 * (v259 ^ 0x5CB5D02C);
  v261 = (1687054336 * (v259 ^ 0x5CB5D02C ^ v257)) | ((-1993567795 * (v259 ^ 0x5CB5D02C ^ v257)) >> 21);
  LODWORD(v259) = v255;
  v262 = v259 >> 1;
  v263 = (-929038336 * v258) | (v260 >> 11);
  HIDWORD(v259) = v262;
  LODWORD(v259) = 995504985 * v262;
  v264 = v259 >> 2;
  v265 = (v261 + (v262 ^ ((1241513984 * v256) | ((-2119657051 * v256) >> 7)))) ^ v263;
  v266 = (-335544320 * v261) | ((517471227 * v261) >> 6);
  v267 = 1709522944 * v265 - 339196993;
  v268 = (2 * (v267 & 0x14378000)) & 0x202E0000 ^ v267 & 0x14378000 ^ ((2 * (v267 & 0x14378000)) | 2) & (v267 ^ 0xF7894DF8);
  v269 = (2 * (v267 ^ 0xF7894DF8)) & 0xE3BE8000 ^ 0x20820001 ^ ((2 * (v267 ^ 0xF7894DF8)) ^ 0xC77DC242) & (v267 ^ 0xF7894DF8);
  v270 = (4 * v268) & 0xE3BEF1B8 ^ v268 ^ ((4 * v268) | 4) & v269;
  v271 = (4 * v269) & 0xE3BEF1B8 ^ 0x61043119 ^ ((4 * v269) ^ 0x8EFBC6E4) & v269;
  v272 = (16 * v270) & 0xE3BEF1B0 ^ v270 ^ ((16 * v270) ^ 0x10) & v271;
  v273 = (16 * v271) & 0xE3BEF1B0 ^ 0xC010E029 ^ ((16 * v271) ^ 0x3BEF1B90) & v271;
  v274 = v272 ^ (v272 << 8) & 0xE3BEF100 ^ ((v272 << 8) ^ 0x1100) & v273 ^ 0xE3BEE0A8;
  v275 = (v267 ^ 0x87095ABF ^ (2 * ((v274 << 16) & 0x63BE0000 ^ v274 ^ ((v274 << 16) ^ 0x71B90000) & ((v273 << 8) & 0x63BE0000 ^ 0x410E0000 ^ ((v273 << 8) ^ 0x3EF10000) & v273)))) & ~((-1274439787 * v265) >> 18) ^ (((-1274439787 * v265) >> 18) & 0x3A73 | 0x28440000);
  v276 = ((v275 ^ 0xE4598643) + 1960710930) ^ ((v275 ^ 0x66218B11) - 156885436) ^ ((v275 ^ 0x3D0F08DE) - 1383555699);
  v277 = v266 ^ (v264 + 1933802400 * v263 + ((-1818616867 * v263) >> 27));
  v278 = (((v277 ^ 0xE8AE2C49) + 1090062861) ^ ((v277 ^ 0x4F6E9816) - 415646124) ^ ((v277 ^ 0xA7C0B45F) + 261591579)) + v276 + 794733696;
  v279 = (1795968899 * (v276 + 794733696 + 219089665 * (v264 - v266)) + 823084899) ^ (v278 - 128344997);
  v280 = ((v279 ^ 0x6AB5206E) + 768932945) ^ ((v279 ^ LODWORD(STACK[0x75C])) - 1442334956) ^ ((v279 ^ 0x16F18E3F) + 1368412674);
  LODWORD(STACK[0x5580]) = v266;
  v281 = v279 ^ v266;
  v282 = v276 - (((v279 ^ 0xA4F0707E) - 476992447) ^ ((v279 ^ 0xAF0F14AC) - 395392877) ^ ((v279 ^ 0x9ADDA1AE) - 574849647));
  v283 = v278 - 1802905165 + v280;
  v284 = 181812681 * v282 - 1859900431;
  v285 = (v284 ^ 0x53D4BC93) & (2 * (v284 & 0x9BC0BE93)) ^ v284 & 0x9BC0BE93;
  v286 = ((2 * (v284 ^ 0x71D5A5B3)) ^ 0xD42A3640) & (v284 ^ 0x71D5A5B3) ^ (2 * (v284 ^ 0x71D5A5B3)) & 0xEA151B20;
  v287 = v286 ^ 0x2A150920;
  v288 = (v286 ^ 0xC0101320) & (4 * v285) ^ v285;
  v289 = ((4 * v287) ^ 0xA8546C80) & v287 ^ (4 * v287) & 0xEA151B20;
  v290 = v288 ^ 0xEA151B20 ^ (v289 ^ 0xA8140800) & (16 * v288);
  v291 = (16 * (v289 ^ 0x42011320)) & 0xEA151B20 ^ 0x4A040920 ^ ((16 * (v289 ^ 0x42011320)) ^ 0xA151B200) & (v289 ^ 0x42011320);
  v292 = (v290 << 8) & 0xEA151B00 ^ v290 ^ ((v290 << 8) ^ 0x151B2000) & v291;
  v293 = v284 ^ (2 * ((v292 << 16) & 0x6A150000 ^ v292 ^ ((v292 << 16) ^ 0x1B200000) & ((v291 << 8) & 0x6A150000 ^ 0x6A040000 ^ ((v291 << 8) ^ 0x151B0000) & v291)));
  v294 = -1072891809 * (((v281 ^ 0x7B95224) - 2077950008) ^ ((v281 ^ 0x7F4C00D1) - 53367501) ^ ((v281 ^ 0xE9D79789) + 1783249515)) + 115159733;
  v295 = ((v294 ^ 0x94118178) + 992901267) ^ v294 ^ ((v294 ^ 0x267E488A) - 1992183455) ^ ((v294 ^ 0xCC503118) + 1668270323) ^ ((v294 ^ 0x2EFFFEFE) - 2118121706);
  LODWORD(STACK[0x55B0]) = v281;
  v296 = 796917760 * (((v281 ^ 0x140) + 1817524388) ^ ((v281 ^ 0x92) + 1834618738) ^ ((v281 ^ 0xAE) + 330325838)) - 1042637275;
  v297 = (v296 & 0x8E000001 | (2 * (v296 & 0x8E000001)) & 0x10000002 | 0x60000000) ^ (2 * (v296 & 0x8E000001)) & (v296 ^ 0x7CA569D9);
  v298 = (2 * (v296 ^ 0x7CA569D9)) & 0xF2000000 ^ 0x12000002 ^ ((2 * (v296 ^ 0x7CA569D9)) ^ 0xE5001004) & (v296 ^ 0x7CA569D9);
  v299 = v297 ^ (4 * v297) & 0xF0000000 ^ v298 & 0x7800000C & (4 * v297) ^ 0x12800802;
  v300 = (4 * v298) & 0xF2800800 ^ 0x30800802 ^ ((4 * v298) ^ 0xCA002008) & v298;
  v301 = (16 * v299) & 0xF2800800 ^ v299 ^ ((16 * v299) ^ 0x28008020) & v300;
  v302 = (16 * v300) & 0xF2800800 ^ 0xD2800802 ^ ((16 * v300) ^ 0x28008020) & v300;
  v303 = (v301 << 8) & 0xF2800800 ^ v301 ^ ((v301 << 8) ^ 0x80080200) & v302;
  v304 = (v303 << 16) & 0x72800000 ^ v303 ^ ((v303 << 16) ^ 0x8020000) & ((v302 << 8) & 0xF2800000 ^ 0x72800000 ^ ((v302 << 8) ^ 0x80080000) & v302);
  v305 = 534901511 * (((v279 ^ 0x86E65E2B) - 1048083946) ^ ((v279 ^ 0x4DF16655) + 177257068) ^ ((v279 ^ 0x5A35FD02) + 492052797)) + 1730913586;
  v306 = (v305 ^ 0x323982F9) & (2 * (v305 & 0xBB2110F9)) ^ v305 & 0xBB2110F9;
  v307 = ((2 * (v305 ^ 0x43BA24B)) ^ 0x7E356564) & (v305 ^ 0x43BA24B) ^ (2 * (v305 ^ 0x43BA24B)) & 0xBF1AB2B2;
  v308 = (v307 ^ 0x3C000020) & (4 * v306) ^ v306;
  v309 = ((4 * (v307 ^ LODWORD(STACK[0x760]))) ^ 0xFC6ACAC8) & (v307 ^ LODWORD(STACK[0x760])) ^ (4 * (v307 ^ LODWORD(STACK[0x760]))) & 0xBF1AB2B0;
  v310 = v308 ^ 0xBF1AB2B2 ^ (v309 ^ 0xBC0A8280) & (16 * v308);
  v309 ^= 0x3103032u;
  v311 = 16 * v309;
  v312 = ((16 * v309) ^ 0xF1AB2B20) & v309;
  v313 = v311 & 0xBF1AB2B0 ^ 0xE109092 ^ v312;
  v314 = (v310 << 8) & 0xBF1AB200 ^ v310 ^ ((v310 << 8) ^ 0x1AB2B200) & v313;
  v315 = v312 & (v313 << 8) & (v314 << 16) ^ v314;
  v316 = (v295 >> 9) & 0x4F4F13 ^ 0xBCB8F0EF ^ (v296 ^ (2 * v304) ^ 0x9795C133) & ((v295 >> 9) ^ 0xFFD79FFC);
  LODWORD(STACK[0x5680]) = v282;
  v317 = -922746880 * v282 - 756165382;
  v318 = (v317 ^ 0x2895F3CE) & (2 * (v317 & 0xB1000002)) ^ v317 & 0xB1000002;
  v319 = ((2 * (v317 ^ 0x4A95F3CE)) ^ 0xF7082110) & (v317 ^ 0x4A95F3CE) ^ (2 * (v317 ^ 0x4A95F3CE)) & 0xFA000000;
  v320 = (v319 ^ 0xC0000008) & (4 * v318) ^ v318;
  v321 = ((4 * (v319 ^ 0x8000000)) ^ 0xEE1F6320) & (v319 ^ 0x8000000) ^ (4 * (v319 ^ 0x8000000)) & 0xFB87D8C8;
  v322 = (v321 ^ 0xEA074000) & (16 * v320) ^ v320;
  v323 = ((16 * (v321 ^ 0x118098C8)) ^ 0xB87D8C80) & (v321 ^ 0x118098C8) ^ (16 * (v321 ^ 0x118098C8)) & 0xFB87D8C0;
  v324 = v322 ^ 0xFB87D8C8 ^ (v323 ^ 0xB8058800) & (v322 << 8);
  v325 = v317 ^ (2 * ((v324 << 16) & 0x7B870000 ^ v324 ^ ((v324 << 16) ^ 0x58C80000) & (((v323 ^ 0x43825048) << 8) & 0x7B870000 ^ 0x78070000 ^ (((v323 ^ 0x43825048) << 8) ^ 0x7D80000) & (v323 ^ 0x43825048))));
  v326 = 1069803022 * (((v279 ^ 0x1C8C4D46) + 1542295929) ^ ((v279 ^ 0x2FADA5AB) + 1758230934) ^ ((v279 ^ 0x22032D91) - 446500432)) + 1644505965;
  v327 = (v326 ^ 0xC81576ED) & (2 * (v326 & 0xE29440E9)) ^ v326 & 0xE29440E9;
  v328 = ((2 * (v326 ^ 0x483D762F)) ^ 0x55526D8C) & (v326 ^ 0x483D762F) ^ (2 * (v326 ^ 0x483D762F)) & 0xAAA936C4;
  v329 = (v328 ^ 0x20081484) & (4 * v327) ^ v327;
  v330 = ((4 * (v328 ^ 0xAAA91242)) ^ 0xAAA4DB18) & (v328 ^ 0xAAA91242) ^ (4 * (v328 ^ 0xAAA91242)) & 0xAAA936C4;
  v331 = (v330 ^ 0xAAA01200) & (16 * v329) ^ v329;
  v332 = ((16 * (v330 ^ 0x924C6)) ^ 0xAA936C60) & (v330 ^ 0x924C6) ^ (16 * (v330 ^ 0x924C6)) & 0xAAA936C0;
  v333 = v331 ^ 0xAAA936C6 ^ (v332 ^ 0xAA812400) & (v331 << 8);
  v334 = (v326 ^ (2 * ((v333 << 16) & 0x2AA90000 ^ v333 ^ ((v333 << 16) ^ 0x36C60000) & (((v332 ^ 0x281286) << 8) & 0xAAA90000 ^ 0x2890000 ^ (((v332 ^ 0x281286) << 8) ^ 0x29360000) & (v332 ^ 0x281286)))) ^ 0xB167AB58) & ~((v305 ^ ~(2 * v315)) >> 31);
  v335 = ((v293 >> 8) ^ 0x722283FC) & (v325 ^ 0x81E26569) ^ v325 & 0x8D86B48A;
  v336 = ((v335 ^ 0xA8C3E3CA) + 170756476) ^ ((v335 ^ LODWORD(STACK[0x764])) + 280846888) ^ ((v335 ^ 0xEDED30AA) + 1325619740);
  LODWORD(STACK[0x5780]) = v283;
  v337 = v336 - 489117160;
  v338 = ((-352628576 * v283) | ((660068997 * v283 + 1185350521) >> 27)) - 723488992;
  v339 = v338 + (v334 ^ 0x43A1863D) - v316 - 1435742536 + v336;
  v340 = -1879048192 * v316 + ((411373289 * v316) >> 4);
  v341 = v18 - 356515840 * v337 + ((-1130882133 * v337 + 553375456) >> 10);
  v342 = 1553187373 * v339;
  v343 = (-1958739968 * v339) | ((1553187373 * v339) >> 10);
  v344 = -817916775 * v338;
  v345 = (-1530396672 * v338) | ((-817916775 * v338) >> 13);
  v346 = (1521305088 * (((v340 + v343) ^ v341) + v345)) | ((-2102569309 * (((v340 + v343) ^ v341) + v345)) >> 23);
  v347 = ((-1014914613 * v343) >> 3) | (1610612736 * (v342 >> 10));
  HIDWORD(v259) = v344 >> 13;
  LODWORD(v259) = -2088337063 * v345;
  v348 = v259 >> 2;
  v349 = -v348 - 797507584 * v341 + ((932499575 * v341) >> 16) - v347 - v346;
  v350 = (1132462080 * v347) | ((-1668055929 * v347) >> 9);
  v351 = ((2 * (-1215143094 * v349 + ((-607571547 * v349) >> 31))) & 0xF6F7B63E) + ((-1215143094 * v349 + ((-607571547 * v349) >> 31)) ^ 0xFB7BDB1F);
  v352 = (v346 * LODWORD(STACK[0x768])) & 0xFFFFC000 | ((1039533537 * v346) >> 18);
  v353 = v352 + (v350 ^ (-184549376 * v348 + ((168831221 * v348) >> 8))) + v351 + 75769057;
  v354 = (-875966705 * (v351 + 75769057 + 317535631 * (v352 + v350))) ^ v353;
  v355 = -1198984293 * v354 - 2126161520;
  v356 = (v355 ^ 0x7C389765) & (2 * (v355 & 0x7EBAA670)) ^ v355 & 0x7EBAA670;
  v357 = ((2 * (v355 ^ 0xBC099B25)) ^ 0x85667AAA) & (v355 ^ 0xBC099B25) ^ (2 * (v355 ^ 0xBC099B25)) & 0xC2B33D54;
  v358 = (v357 ^ 0x80223800) & (4 * v356) ^ v356;
  v359 = ((4 * (v357 ^ 0x42910555)) ^ 0xACCF554) & (v357 ^ 0x42910555) ^ (4 * (v357 ^ 0x42910555)) & 0xC2B33D54;
  v360 = (v359 ^ 0x2803541) & (16 * v358) ^ v358;
  v361 = ((16 * (v359 ^ 0xC0330801)) ^ 0x2B33D550) & (v359 ^ 0xC0330801) ^ (16 * (v359 ^ 0xC0330801)) & 0xC2B33D50;
  v362 = v360 ^ 0xC2B33D55 ^ (v361 ^ 0x2331505) & (v360 << 8);
  v363 = v355 ^ (2 * ((v362 << 16) & 0x42B30000 ^ v362 ^ ((v362 << 16) ^ 0x3D550000) & (((v361 ^ 0xC0802805) << 8) & 0x42B30000 ^ 0x40820000 ^ (((v361 ^ 0xC0802805) << 8) ^ 0x333D0000) & (v361 ^ 0xC0802805))));
  v364 = (((v363 ^ 0xB60CCACD) + 1350339725) ^ ((v363 ^ 0xA5E30938) + 1133727610) ^ ((v363 ^ 0xE8111F2F) + 241260911)) + v352;
  v365 = (v363 ^ v15) + v353 - 2 * ((v363 ^ 0x7BFEDCDA) & v353);
  v366 = (v365 ^ 0x67FE79EE) - 1087373386 + ((2 * v365) & 0xCFFCF3DC);
  LODWORD(STACK[0x57A0]) = v363;
  v367 = (((v363 ^ 0x24DD8D96) - 1028797480) ^ ((v363 ^ 0x645E01F1) - 2110896207) ^ ((v363 ^ 0xBB7D50BD) + 1561138941)) + v351;
  v368 = (((969670427 * v367 + 544770536) ^ 0xBC91AF8E) + 1833920977) ^ (969670427 * v367 + 544770536) ^ (((969670427 * v367 + 544770536) ^ 0xEC5B9EC9) + 1032149144) ^ (((969670427 * v367 + 544770536) ^ LODWORD(STACK[0x76C])) - 1060429752) ^ (((969670427 * v367 + 544770536) ^ 0x6FFEEEFE) - 1105188702);
  v369 = 1659658128 - 1877805783 * v364;
  v370 = (v369 ^ 0xEE0DD464) & (2 * (v369 & 0xC84D9174)) ^ v369 & 0xC84D9174;
  v371 = ((2 * (v369 ^ 0x7E95F46C)) ^ 0x6DB0CA30) & (v369 ^ 0x7E95F46C) ^ (2 * (v369 ^ 0x7E95F46C)) & 0xB6D86518;
  v372 = (v371 ^ 0x20104010) & (4 * v370) ^ v370;
  v373 = ((4 * (v371 ^ 0x92482508)) ^ 0xDB619460) & (v371 ^ 0x92482508) ^ (4 * (v371 ^ 0x92482508)) & 0xB6D86518;
  v374 = v372 ^ 0xB6D86518 ^ (v373 ^ 0x92400400) & (16 * v372);
  v375 = (16 * (v373 ^ 0x24986118)) & 0xB6D86510 ^ 0x92582418 ^ ((16 * (v373 ^ 0x24986118)) ^ 0x6D865180) & (v373 ^ 0x24986118);
  v376 = (v374 << 8) & 0xB6D86500 ^ v374 ^ ((v374 << 8) ^ 0xD8651800) & v375;
  v377 = v369 ^ (2 * ((v376 << 16) & 0x36000000 ^ v376 ^ ((v376 << 16) ^ 0x64000000) & ((v375 << 8) & 0x36D80000 ^ 0x26000000 ^ ((v375 << 8) ^ 0x58650000) & v375)));
  v378 = v366 * LODWORD(STACK[0x770]) + 527735491 * ((-519789964 * v366) ^ 0x80000000);
  LODWORD(STACK[0x5670]) = v367;
  v379 = HIWORD(v368) & 0xBE15 ^ 0xAEF36FEB ^ (HIWORD(v368) ^ 0xFFFFD1DE) & ((-15007744 * v367 - 1731183567) ^ (((-15007744 * v367 - 1731183567) ^ 0x330B4588) - 2072148409) ^ (((-15007744 * v367 - 1731183567) ^ 0xCBE26E11) + 2090118624) ^ (((-15007744 * v367 - 1731183567) ^ 0xDF9BA857) + 1760390042) ^ (((-15007744 * v367 - 1731183567) ^ 0x6FFBBFFF) - 661816270) ^ 0xE67A7DDB);
  LODWORD(STACK[0x5790]) = v364;
  v380 = (v377 >> 26) & 0xEEEEEEEE ^ 0x24192F33 ^ ((v377 >> 26) ^ 0xFFFFFFCC) & ((79514176 * v364 + 5761145) ^ (((79514176 * v364 + 5761145) ^ LODWORD(STACK[0x774])) - 1008907887) ^ (((79514176 * v364 + 5761145) ^ 0x973B56F4) + 1495207539) ^ (((79514176 * v364 + 5761145) ^ 0x54A61766) - 1702735903) ^ (((79514176 * v364 + 5761145) ^ 0xFFBFF7FD) + 832286588) ^ 0x15C28868);
  LODWORD(STACK[0x5600]) = v366;
  v381 = v378 + ((1732879199 * v366 + 847867940) >> 3);
  v382 = ((-1038523392 * v354) | ((1232111193 * v354) >> 22)) + v381 + v379 + v380;
  v383 = ((1860120739 * v382) >> 5) | (402653184 * v382);
  v384 = (877305856 * v379) | ((962175573 * v379) >> 19);
  v385 = (2101125120 * v381) | ((-1957434907 * v381) >> 19);
  v386 = (v383 ^ ((-1465909248 * v380) | ((1455207749 * v380) >> 11))) - v384 + v385;
  v387 = (1824522240 * v385) | ((-1354235469 * v385) >> 10);
  v388 = (-1330556928 * v383) | ((1461390101 * v383) >> 20);
  v389 = ((1980242295 * v386) >> 3) - (v386 << 29);
  v390 = (((926757184 * v389 - 2146341364) ^ 0x872EFB02) - 121607438) ^ (926757184 * v389 - 2146341364) ^ (((926757184 * v389 - 2146341364) ^ 0x16499AD7) + 1772555045) ^ (((926757184 * v389 - 2146341364) ^ 0x6689F02E) + 426205662) ^ (((926757184 * v389 - 2146341364) ^ 0x77FFFFF7) + 135360005);
  v391 = 527336656 * v384 - v387 + ((v384 * LODWORD(STACK[0x778])) >> 28) - v388 + v389;
  v392 = (v390 ^ 0x378010F3) & (((-2133003067 * v389) >> 26) ^ 0xB7817CDA) ^ v390 & 0x487E8325;
  v393 = ((831815680 * v388) | ((1673421609 * v388) >> 17)) - 2 * (((831815680 * v388) | ((1673421609 * v388) >> 17)) & 0x1DB0491F ^ ((1673421609 * v388) >> 17) & 1);
  v394 = -1243019264 * v391 + 1354202716;
  v395 = v394 & 0xAF488004 ^ 0x96084830 ^ (v394 ^ 0x2F40C994) & (2 * (v394 & 0xAF488004));
  v396 = (2 * (v394 ^ 0x3940C994)) & 0x96084000 ^ 0x92084000 ^ ((2 * (v394 ^ 0x3940C994)) ^ 0x2C109040) & (v394 ^ 0x3940C994);
  v397 = (4 * v395) & 0x96084830 ^ v395 ^ ((4 * v395) ^ 0x582120C0) & v396;
  v398 = (4 * v396) & 0x96084830 ^ 0x86084830 ^ ((4 * v396) ^ 0x582120C0) & v396;
  v399 = (16 * v397) & 0x96084830 ^ v397 ^ ((16 * v397) ^ 0x60848300) & v398;
  v400 = (16 * v398) & 0x96084830 ^ 0x96084830 ^ ((16 * v398) ^ 0x60848300) & v398;
  v401 = (v399 << 8) & 0x96084800 ^ v399 ^ ((v399 << 8) ^ 0x8483000) & v400;
  v402 = (v394 ^ (2 * ((v401 << 16) & 0x16080000 ^ v401 ^ ((v401 << 16) ^ 0x48300000) & ((v400 << 8) & 0x96080000 ^ 0x16000000 ^ ((v400 << 8) ^ 0x8480000) & v400))) ^ 0x376580E4) & ~((-1613316831 * v391) >> 21) | ((-1613316831 * v391) >> 21) & 0x6DF;
  v393 += 498092318;
  v403 = ((-1016635392 * v387) | ((-1225909445 * v387) >> 19)) + (((v393 ^ 0x77E38C93) - 2011401363) ^ ((v393 ^ 0xBCD5DE5D) + 1126834595) ^ ((v393 ^ 0xD6861BD0) + 695854128)) + 232548145 + (((v392 ^ 0x26E4E9C2) - 730713170) ^ ((v392 ^ 0xE6A35D37) + 339052377) ^ ((v392 ^ 0x77D6CA2B) - 2059399099));
  v404 = (v403 ^ 0xA2EAB83A) & (2 * (v403 & 0xCACC3D3B)) ^ v403 & 0xCACC3D3B;
  v405 = ((2 * (v403 ^ 0x3272904C)) ^ 0xF17D5AEE) & (v403 ^ 0x3272904C) ^ (2 * (v403 ^ 0x3272904C)) & 0xF8BEAD76;
  v406 = (v405 ^ 0x70300864) & (4 * v404) ^ v404;
  v407 = ((4 * (v405 ^ 0x882A511)) ^ 0xE2FAB5DC) & (v405 ^ 0x882A511) ^ (4 * (v405 ^ 0x882A511)) & 0xF8BEAD74;
  v408 = (v407 ^ 0xE0BAA550) & (16 * v406) ^ v406;
  v409 = ((16 * (v407 ^ 0x18040823)) ^ 0x8BEAD770) & (v407 ^ 0x18040823) ^ (16 * (v407 ^ 0x18040823)) & 0xF8BEAD70;
  v410 = v408 ^ 0xF8BEAD77 ^ (v409 ^ 0x88AA8500) & (v408 << 8);
  v411 = (((v392 ^ v393 ^ 0xDBDBCADE) + 1336947817) ^ ((v392 ^ v393 ^ 0xF110A997) + 1702582050) ^ ((v392 ^ v393 ^ 0x8F47207E) + 455925449)) - (((v402 ^ 0xE19A2233) + 1198029177) ^ ((v402 ^ 0xBC658BFE) + 446156982) ^ ((v402 ^ 0xC9D238ED) + 1864393639)) + 998611587;
  v412 = ((v411 ^ 0x2546288C) - 533439765) ^ v411 ^ ((v411 ^ 0xC17DA4D1) + 68146872) ^ ((v411 ^ 0xB1C9EE3A) + 1958452317) ^ ((v411 ^ 0x6F7FEFFE) - 1441948263);
  v413 = v402 ^ v403 ^ (2 * ((v410 << 16) & 0x78BE0000 ^ v410 ^ ((v410 << 16) ^ 0x2D770000) & (((v409 ^ 0x70142807) << 8) & 0x78BE0000 ^ 0x40120000 ^ (((v409 ^ 0x70142807) << 8) ^ LODWORD(STACK[0x77C])) & (v409 ^ 0x70142807))));
  v414 = (((v412 ^ 0xF6FDFAE6) + 385426835) ^ ((v412 ^ 0x634E709D) - 2092257302) ^ ((v412 ^ 0xEE1C2501) + 236518006)) - (((v413 ^ 0x4D9C5A49) - 1606448094) ^ ((v413 ^ 0xB5DEB01B) + 1484613236) ^ ((v413 ^ 0x7B21CA7) - 367932720)) - 1071475010;
  v415 = ((v414 ^ 0xA22C76CB) + 346648348) ^ v414 ^ ((v414 ^ 0x37AACB85) - 2127572394) ^ ((v414 ^ 0xA383959C) + 352750669) ^ ((v414 ^ 0x7F7FCEFD) - 906307794);
  v416 = ((v415 ^ LODWORD(STACK[0x780])) - 1173984760) ^ ((v415 ^ 0x2B378B4B) - 1263819716);
  LODWORD(STACK[0x5750]) = v415;
  v417 = (((v402 ^ 0xB932B121) + 532736619) ^ ((v402 ^ 0xE5BA1B7C) + 1128808504) ^ ((v402 ^ 0xC8A53B7D) + 1851220023)) - (v416 ^ ((v415 ^ 0xF392029D) + 1812868590)) + 1622422804;
  v418 = v417 ^ ((v417 ^ 0x9DFCF055) + 1391662085) ^ ((v417 ^ 0x13B18A16) - 591499704) ^ ((v417 ^ 0xC2469E30) + 222919266) ^ ((v417 ^ 0x7CFBFFDD) - 1275847795) ^ 0x9D646FFD;
  v419 = 0x44AEA67CB2 * (((v418 ^ 0x4EF5EF096947B37BLL) + 0x310A10F696B84C85) ^ ((v418 ^ 0x151D4958A8B836FLL) - 0x151D4958A8B836FLL) ^ ((v418 ^ 0x4FA43B9C4E584447) + 0x305BC463B1A7BBB9)) + 0x3CB8411A863B6826;
  v420 = v419 ^ ((v419 ^ 0xE53FC7602C6F4EE9) - 0x4FE2564E38B71C99) ^ ((v419 ^ 0x9844ECE58226AEFFLL) - 0x32997DCB96FEFC8FLL) ^ ((v419 ^ 0xAD57853454424791) - 0x78A141A409A15E1) ^ ((v419 ^ 0x7AF13F9FEED3F5F7) + 0x2FD3514E05F45879);
  v421 = ((v420 ^ 0x3D8BC90735042F7FLL) + 0x62D8AAAAC554CE3ALL) ^ ((v420 ^ 0x6D85D51A11AD2269) + 0x32D6B6B7E1FDC330);
  LODWORD(STACK[0x5660]) = __CFADD__(62533896 * (v421 ^ ((v420 ^ 0xFAD38D3330715F66) - 0x5A7F11613FDE41DFLL)), 0x379B87B6D676DF48) + (((v421 ^ ((v420 ^ 0xFAD38D3330715F66) - 0x5A7F11613FDE41DFLL)) * 0x3BA3108uLL) >> 64) + 62533896 * ((__CFADD__(v420 ^ 0x3D8BC90735042F7FLL, 0x62D8AAAAC554CE3ALL) - 1) ^ (__CFADD__(v420 ^ 0x6D85D51A11AD2269, 0x32D6B6B7E1FDC330) - 1) ^ (__CFADD__(v420 ^ 0xFAD38D3330715F66, 0xA580EE9EC021BE21) - 1)) + 1097268627;
  v422 = STACK[0x57D8];
  v423 = (*(STACK[0x57D8] + 8 * (v19 ^ 0x3B9F)))(1028);
  LODWORD(STACK[0x5760]) = v417;
  STACK[0xD848] = v423;
  return (*(v422 + 8 * (v19 | (2 * (v423 != 0)))))();
}

uint64_t sub_1005BC348()
{
  v0 = STACK[0x51B8];
  *(STACK[0x4240] + 104) = *(STACK[0x7888] + 28);
  return (*(STACK[0x57D8] + 8 * (v0 - 17381)))();
}

uint64_t sub_1005BC37C()
{
  v1 = v0 - 2186;
  if (*(STACK[0xA0D0] - 0x79296B4A625EDC73))
  {
    v2 = -769884011;
  }

  else
  {
    v2 = -769884012;
  }

  if (*(STACK[0xA0D0] - 0x79296B4A625EDC72))
  {
    v3 = v2 | 0xD21C8096;
  }

  else
  {
    v3 = v2;
  }

  LODWORD(STACK[0x83EC]) = v3;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1005BC50C()
{
  LODWORD(STACK[0x1D4C0]) = v0 + 410706167 * ((2 * ((v2 - 240) & 0x58FF88E0) - (v2 - 240) - 1493141731) ^ 0x3CDF5B4B) - 14302;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v0 + 9205)))(v2 - 240);
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_1005BC594()
{
  *(v1 + 3796) = v0;
  *(v1 + 3800) = STACK[0xDCA0];
  v2 = *(STACK[0x57D8] + 8 * (v0 - 17344));
  *(v1 + 308) = v0;
  *(v1 + 312) = 68;
  return v2();
}

uint64_t sub_1005BC73C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v11 = STACK[0x51B8];
  v12 = STACK[0x51B8] - 21332;
  STACK[0x57C0] = (STACK[0x51B8] - 22450) | 0x45BLL;
  v13 = STACK[0x9418];
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = v5;
  *(v13 + 24) = *(v9 + a1);
  *(v13 + 48) = a2;
  *(v13 + 56) = v3;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0;
  *(v13 + 64) = v2;
  *(v13 + 72) = v4;
  v14 = STACK[0x5C70];
  *(v13 + 80) = *(STACK[0x5C70] - 0x30BDFED8F32E6759);
  v15 = (v11 - 2066) | 0x812;
  *(v13 + 88) = *(v14 - 0x30BDFED8F32E6751);
  *(v13 + 96) = 0;
  *(v13 + 104) = 0;
  if (*(v9 - 0x79296B4A625EDC74))
  {
    v16 = -230804581;
  }

  else
  {
    v16 = -448705389;
  }

  *(v13 + 108) = v16;
  *(v13 + 112) = 0;
  *(v13 + 120) = 0;
  v17 = STACK[0x57D8];
  STACK[0x7818] = (*(STACK[0x57D8] + 8 * (v12 + 30524)))(256);
  LODWORD(STACK[0xA61C]) = v8;
  v18 = STACK[0x91E4];
  STACK[0x7058] = (*(v17 + 8 * (v12 ^ 0x793C)))((LODWORD(STACK[0x91E4]) + 256));
  LODWORD(STACK[0x8644]) = v18 + 256;
  STACK[0x86C8] = 0;
  LODWORD(STACK[0xC15C]) = 0;
  STACK[0x9B60] = 0;
  LODWORD(STACK[0x94A4]) = 0;
  STACK[0x7CB8] = 0;
  LODWORD(STACK[0x96B4]) = 0;
  v19 = STACK[0x9A40];
  *v19 = *(v9 - 0x79296B4A625EDC44);
  *(v19 + 8) = v13;
  *(v19 + 16) = STACK[0x7E20];
  *(v19 + 24) = v18;
  *(v19 + 32) = v6;
  *(v19 + 40) = v7;
  *(v19 + 48) = 5;
  *(v19 + 56) = &STACK[0x86C8];
  *(v19 + 64) = &STACK[0xC15C];
  *(v19 + 72) = &STACK[0x9B60];
  *(v19 + 80) = &STACK[0x94A4];
  *(v19 + 88) = &STACK[0x7CB8];
  *(v19 + 96) = &STACK[0x96B4];
  LODWORD(STACK[0x1D4C0]) = v12 - 1917435887 * (((v10 - 240) & 0x65221C0D | ~((v10 - 240) | 0x65221C0D)) ^ 0x7C66B8F4) + 19868;
  STACK[0x1D4C8] = v19;
  v20 = (*(v17 + 8 * (v12 ^ 0x796E)))(v10 - 240);
  v21 = STACK[0x1D4C4];
  LODWORD(STACK[0xDDA0]) = STACK[0x1D4C4];
  return (*(v17 + 8 * (((v21 == (STACK[0x57C0] ^ 0xF778406E)) * (v15 ^ 0x6633)) ^ v12)))(v20);
}

uint64_t sub_1005BCAFC()
{
  STACK[0x9EC0] = &STACK[0xC794];
  LODWORD(STACK[0x9E1C]) = 529964787;
  return (*(STACK[0x57D8] + 8 * (v0 - 16846)))();
}

uint64_t sub_1005BCB64@<X0>(char a1@<W8>)
{
  v6 = (a1 ^ v3);
  v7 = v2 - 1308;
  v8 = STACK[0x51B8];
  v9 = STACK[0x51B8] - 1079089617;
  v10 = STACK[0x1B78];
  v11 = v2 - STACK[0x1B78];
  LODWORD(STACK[0x1D4CC]) = v11;
  LODWORD(STACK[0x1D4C4]) = v7 ^ v10;
  LODWORD(STACK[0x1D4C8]) = v11 - 483;
  LODWORD(STACK[0x1D4D0]) = v10;
  STACK[0x1D4E0] = v10 + (v4 + v1);
  STACK[0x1D4D8] = v6 - v10;
  LODWORD(STACK[0x1D4C0]) = v9 ^ v10;
  v12 = STACK[0x57D8];
  v13 = (*(STACK[0x57D8] + 8 * (v8 ^ 0x2411)))(v5 - 240);
  return (*(v12 + 8 * SLODWORD(STACK[0x1D4D4])))(v13);
}

uint64_t sub_1005BCBF0()
{
  v0 = STACK[0x11C8];
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (LODWORD(STACK[0x11C8]) + 19544)))(2560);
  STACK[0xBE98] = v2;
  return (*(v1 + 8 * (((v2 != 0) * ((v0 ^ 0x334B) - 7747 + ((v0 - 1325702657) & 0x4F046FBE))) ^ v0)))();
}

uint64_t sub_1005BCC6C()
{
  v1 = STACK[0x57D8];
  STACK[0x9770] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * ((((v0 - 1144) | 0x440) ^ 0x405) + v0)))();
}

uint64_t sub_1005BCD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = STACK[0x51B8] - 4629;
  v7 = STACK[0xC3E8];
  v8 = STACK[0x57D8];
  v9 = STACK[0x17B4];
  STACK[0xBF38] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x17B4]));
  return (*(v8 + 8 * ((v6 ^ 0x41B6) + v9)))(a1, a2, a3, a4, a5, a6, v7);
}

uint64_t sub_1005BCD6C@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>)
{
  v7 = STACK[0x51B8] - 12567;
  v8 = 551690071 * ((((v6 - 240) | 0x9334D5A3) - ((v6 - 240) & 0x9334D5A3)) ^ 0xDDD986F4);
  STACK[0x1D4D8] = STACK[0x4D98];
  STACK[0x1D4C0] = v5;
  STACK[0x1D4C8] = a2;
  LODWORD(STACK[0x1D4D4]) = (((v2 + 1206) | 0x222) ^ (v3 - ((2 * v3) & 0x6E2A2F8A) + 924129221) ^ 0x21355DBF) - v8;
  LODWORD(STACK[0x1D4D0]) = v8 ^ v7;
  STACK[0x1D4E8] = v4;
  v9 = STACK[0x57D8];
  v11 = v2;
  v12 = (*(STACK[0x57D8] + 8 * (LODWORD(STACK[0x4E34]) + 10268)))(v6 - 240);
  *v4 = *(v5 + (v3 - 16));
  v4[1] = *(v5 + (v3 - 15));
  v4[2] = *(v5 + (v3 - 14));
  v4[3] = *(v5 + (v3 - 13));
  v4[4] = *(v5 + (v3 - 12));
  v4[5] = *(v5 + (v3 - 11));
  v4[6] = *(v5 + (v3 - 10));
  v4[7] = *(v5 + (v3 - 9));
  v4[8] = *(v5 + (v3 - 8));
  v4[9] = *(v5 + (v3 - 7));
  v4[10] = *(v5 + (v3 - 6));
  v4[11] = *(v5 + (v3 - 5));
  v4[12] = *(v5 + (v3 - 4));
  v4[13] = *(v5 + (v3 - 3));
  v4[14] = *(v5 + (v3 - 2));
  v4[15] = *(v5 + (v3 - 1));
  STACK[0x8E40] = a1 + SLODWORD(STACK[0xBE38]);
  STACK[0xB058] = *(v9 + 8 * v11);
  return (*(v9 + 8 * (v11 ^ 0x1ACC)))(v12);
}

uint64_t sub_1005BCFAC()
{
  v3 = v1 + 1 + v0;
  v4 = (v2 > 0x6BEB7C6C) ^ (v3 < v0);
  v5 = v3 < LODWORD(STACK[0x57B0]);
  if (v4)
  {
    v5 = v2 > 0x6BEB7C6C;
  }

  return (*(STACK[0x57D8] + 8 * ((31 * !v5) ^ LODWORD(STACK[0x57C0]))))();
}

uint64_t sub_1005BD6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0xB658] - 0x30BDFED8F32E6575;
  v9 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * (v7 ^ 0x2946));
  return (*(v9 + 8 * ((13892 * ((v7 ^ 0x2946) == 396198156)) ^ ((v7 ^ 0x2946) + 3331))))(v8, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1005BD8C0()
{
  v0 = STACK[0x224C];
  LODWORD(STACK[0x5E7C]) = -769884012;
  LOBYTE(STACK[0xAC0F]) = 0;
  STACK[0x58C0] = 0;
  v1 = STACK[0x67F0];
  v2 = STACK[0xBCA8];
  STACK[0xC678] = STACK[0xB100];
  STACK[0x72B8] = v1;
  STACK[0x5F28] = STACK[0x8448];
  LODWORD(STACK[0xCA34]) = STACK[0x80F4];
  STACK[0x8018] = &STACK[0xB85C];
  STACK[0x7258] = &STACK[0x6188];
  STACK[0x60F8] = &STACK[0xC954];
  STACK[0xC520] = v2;
  STACK[0xC850] = &STACK[0x6614];
  STACK[0x8320] = STACK[0x8358];
  STACK[0x7250] = &STACK[0x7298];
  STACK[0x8DE8] = &STACK[0xBAD4];
  LODWORD(STACK[0x8BEC]) = 108638220;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1005BD9EC()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 21619)))(1028);
  STACK[0xD360] = v2;
  return (*(v1 + 8 * ((2 * (v2 != 0)) | (16 * (v2 != 0)) | v0)))();
}

uint64_t sub_1005BDC8C@<X0>(uint64_t a1@<X8>)
{
  STACK[0x8CD0] = 0;
  STACK[0x9540] = 0;
  STACK[0xCCA8] = 0;
  return (*(STACK[0x57D8] + 8 * (((((v1 - 27207) | 0x4B) + ((v1 - 20630) | 0x182) - 10410) * (a1 == v2)) ^ v1)))();
}

uint64_t sub_1005BDCFC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = (a2 & 1) == 0;
  v9 = (a2 + a7);
  v10 = v8;
  return (*(STACK[0x57D8] + 8 * ((v10 | (4 * v10)) ^ v7)))(a1, v9);
}

uint64_t sub_1005BDD40@<X0>(int a1@<W2>, int a2@<W8>)
{
  v7 = *(*(v5 + 4008) + v3 - 5896 * ((((v3 >> 3) * v4) >> 64) >> 4));
  v8 = v7 & 0xEA ^ 0x83;
  *(*(v5 + 4000) + 4 * ((v6 + ((v2 - 7531) ^ 0x48C7u) * a2) % 0x2240)) = (v7 ^ (2 * ((v7 ^ 0x64) & (2 * ((v7 ^ 0x64) & (2 * ((v7 ^ 0x64) & (2 * ((v7 ^ 0x64) & (2 * ((v7 ^ 0x44) & (2 * ((v7 ^ 0x44) & 0xE ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8))) ^ (a1 - 214);
  return (*(STACK[0x57D8] + 8 * ((11290 * (a2 == 255)) ^ v2)))();
}

uint64_t sub_1005BDE18@<X0>(int a1@<W4>, int a2@<W6>, int a3@<W8>)
{
  LODWORD(STACK[0x5760]) = -915966662;
  v4 = (a3 - 112) | 0x23u;
  LODWORD(STACK[0x5188]) = LODWORD(STACK[0x56E0]) ^ 0xA42ED2A4;
  v5 = v3 + v4 + 0x1EC4C88DF9BB2A7FLL;
  v6 = (v5 ^ 0xAD4E62604AD8D969) & (2 * (v5 & 0xCD8F4B4A6AC11D6ALL)) ^ v5 & 0xCD8F4B4A6AC11D6ALL;
  v7 = ((2 * (v5 ^ 0x265072E00F58F929)) ^ 0xD7BE7354CB33C886) & (v5 ^ 0x265072E00F58F929) ^ (2 * (v5 ^ 0x265072E00F58F929)) & 0xEBDF39AA6599E442;
  v8 = v7 ^ 0x284108AA24882441;
  v9 = (v7 ^ 0x421E31004100C000) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0xAF7CE6A99667910CLL) & v8 ^ (4 * v8) & 0xEBDF39AA6599E440;
  v11 = (v10 ^ 0xAB5C20A804018000) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x4083190261986443)) ^ 0xBDF39AA6599E4430) & (v10 ^ 0x4083190261986443) ^ (16 * (v10 ^ 0x4083190261986443)) & 0xEBDF39AA6599E440;
  v13 = (v12 ^ 0xA9D318A241984400) & (v11 << 8) ^ v11;
  v14 = (((v12 ^ 0x420C21082401A043) << 8) ^ 0xDF39AA6599E44300) & (v12 ^ 0x420C21082401A043) ^ ((v12 ^ 0x420C21082401A043) << 8) & 0xEBDF39AA6599E400;
  v15 = v13 ^ 0xEBDF39AA6599E443 ^ (v14 ^ 0xCB19282001800000) & (v13 << 16);
  v16 = (v5 ^ (2 * ((v15 << 32) & 0x6BDF39AA00000000 ^ v15 ^ ((v15 << 32) ^ 0x6599E44300000000) & (((v14 ^ 0x20C6118A6419A443) << 16) & 0x6BDF39AA00000000 ^ 0x4255182200000000 ^ (((v14 ^ 0x20C6118A6419A443) << 16) ^ 0x39AA659900000000) & (v14 ^ 0x20C6118A6419A443))))) >> 25;
  v17 = v3 - 0x28CAA11F950E77BLL + (((v16 ^ 0xCC981F509A450855) - 0x117DA168B54C0B9DLL) ^ ((v16 ^ 0xD52F7C906DA9205BLL) - 0x8CAC2A842A02393) ^ ((v16 ^ 0x19B763AC7650255ELL) + 0x3BAD226BA6A6D96ALL));
  v18 = (v17 ^ 0xCE87783FC8D15F06) & (2 * (v17 & 0xCCC67C3F0C825FA7)) ^ v17 & 0xCCC67C3F0C825FA7;
  v19 = ((2 * (v17 ^ 0x568FE02DC8D1D246)) ^ 0x3493382588A71BC2) & (v17 ^ 0x568FE02DC8D1D246) ^ (2 * (v17 ^ 0x568FE02DC8D1D246)) & 0x9A499C12C4538DE0;
  v20 = v19 ^ 0x8A48841244508421;
  v21 = (v19 ^ 0x1001100000030980) & (4 * v18) ^ v18;
  v22 = ((4 * v20) ^ 0x6926704B114E3784) & v20 ^ (4 * v20) & 0x9A499C12C4538DE0;
  v23 = (v22 ^ 0x800100200420580) & (16 * v21) ^ v21;
  v24 = ((16 * (v22 ^ 0x92498C10C4118861)) ^ 0xA499C12C4538DE10) & (v22 ^ 0x92498C10C4118861) ^ (16 * (v22 ^ 0x92498C10C4118861)) & 0x9A499C12C4538DE0;
  v25 = (v24 ^ 0x8009800044108C00) & (v23 << 8) ^ v23;
  v26 = (((v24 ^ 0x1A401C12804301E1) << 8) ^ 0x499C12C4538DE100) & (v24 ^ 0x1A401C12804301E1) ^ ((v24 ^ 0x1A401C12804301E1) << 8) & 0x9A499C12C4538D00;
  v27 = v25 ^ 0x9A499C12C4538DE1 ^ (v26 ^ 0x808100040010000) & (v25 << 16);
  v28 = (v17 ^ (2 * ((v27 << 32) & 0x1A499C1200000000 ^ v27 ^ ((v27 << 32) ^ 0x44538DE100000000) & (((v26 ^ 0x92418C1284520CE1) << 16) & 0x1A499C1200000000 ^ 0x249180000000000 ^ (((v26 ^ 0x92418C1284520CE1) << 16) ^ 0x1C12C45300000000) & (v26 ^ 0x92418C1284520CE1))))) >> 8;
  v29 = v17 + 0x2B0C9E4382D27FAFLL + (((v28 ^ 0xAA6D87931BD12947) + 0x44C250596853D39ALL) ^ ((v28 ^ 0x3AA49B0A297E2234) - 0x2BF4B33FA5032715) ^ ((v28 ^ 0x9031CAC5282B2E37) + 0x7E9E1D0F5BA9D4EALL));
  v30 = (((v29 ^ 0x683E71B712142881) - 0x24A3522DCD42D722) ^ v29 ^ ((v29 ^ 0xDB1EF0DE05ADA89CLL) + 0x687C2CBB2504A8C1) ^ ((v29 ^ 0x4080FD1E373A4080) - 0xC1DDE84E86CBF22) ^ ((v29 ^ 0xBF3D5FEDFFD53F3CLL) + 0xC5F8388DF7C3F64)) >> 8;
  v31 = v29 - (((v30 ^ 0x18D6B7B03BCAEC2) - 0x6DCF50EB508E1A94) ^ ((v30 ^ 0x4C6681459749E4B2) - 0x2024BAD5C47B50E4) ^ ((v30 ^ 0x4DA7771D0E2A1C8FLL) - 0x21E54C8D5D18A8D9));
  LODWORD(v26) = v31 - 1371013081;
  v32 = ((((v31 + 0x74B6664984AA7669) ^ 0x6AA6A5B1D4B4AEC4) - 0x7045349180FE02ELL) ^ (v31 + 0x74B6664984AA7669) ^ (((v31 + 0x74B6664984AA7669) ^ 0x14288B99D9EFC64BLL) - 0x798A7D61155488A1) ^ (((v31 + 0x74B6664984AA7669) ^ 0x6CD7B72CB70EDDBCLL) - 0x17541D47BB59356) ^ (((v31 + 0x74B6664984AA7669) ^ 0x7FFB6FFC76EEFBD9) - 0x12599904BA55B533)) >> 25;
  v33 = v31 - (((v32 ^ 0x7D3065BBB2F6EF85) + 0x27DC3E332ACA794) ^ ((v32 ^ 0x36717420CBF41965) + 0x493CD2784BAE5174) ^ ((v32 ^ 0x4B4111ADA8798A86) + 0x340CB7F52823C291));
  v34 = ((v33 - 0x6534C2BD3E2141C8) ^ 0xCBD19D7E37B1DD36) & (2 * ((v33 - 0x6534C2BD3E2141C8) & 0xEB95D87C47319DB8)) ^ (v33 - 0x6534C2BD3E2141C8) & 0xEB95D87C47319DB8;
  v35 = ((2 * ((v33 - 0x6534C2BD3E2141C8) ^ 0x48F38DB6B3B3F546)) ^ 0x46CCAB95E904D1FCLL) & ((v33 - 0x6534C2BD3E2141C8) ^ 0x48F38DB6B3B3F546) ^ (2 * ((v33 - 0x6534C2BD3E2141C8) ^ 0x48F38DB6B3B3F546)) & 0xA36655CAF48268FELL;
  v36 = v35 ^ 0xA122544A14822802;
  v37 = (v35 ^ 0x2440180200040E0) & (4 * v34) ^ v34;
  v38 = ((4 * v36) ^ 0x8D99572BD209A3F8) & v36 ^ (4 * v36) & 0xA36655CAF48268FCLL;
  v39 = (v38 ^ 0x8100550AD00020E0) & (16 * v37) ^ v37;
  v40 = ((16 * (v38 ^ 0x226600C024824806)) ^ 0x36655CAF48268FE0) & (v38 ^ 0x226600C024824806) ^ (16 * (v38 ^ 0x226600C024824806)) & 0xA36655CAF48268F0;
  v41 = (v40 ^ 0x2264548A40020800) & (v39 << 8) ^ v39;
  v42 = (((v40 ^ 0x81020140B480601ELL) << 8) ^ 0x6655CAF48268FE00) & (v40 ^ 0x81020140B480601ELL) ^ ((v40 ^ 0x81020140B480601ELL) << 8) & 0xA36655CAF4826800;
  v43 = v41 ^ 0xA36655CAF48268FELL ^ (v42 ^ 0x224440C080000000) & (v41 << 16);
  v44 = ((v33 - 0x6534C2BD3E2141C8) ^ (2 * ((v43 << 32) & 0x236655CA00000000 ^ v43 ^ ((v43 << 32) ^ 0x748268FE00000000) & (((v42 ^ 0x8122150A748200FELL) << 16) & 0x236655CA00000000 ^ 0x2224014800000000 ^ (((v42 ^ 0x8122150A748200FELL) << 16) ^ 0x55CAF48200000000) & (v42 ^ 0x8122150A748200FELL))))) >> 8;
  v45 = v33 - (((v44 ^ 0x1B8115C85B420DF8) + 0x21787C1C28B65A83) ^ ((v44 ^ 0x3FEA553A47BC2D98) + 0x5133CEE34487AE3) ^ ((v44 ^ 0x24861D006150152CLL) + 0x1E7F74D412A44257));
  v46 = ((v45 + 0x3A79461C054EB244) ^ 0x15F94BE8829B43C3) & (2 * ((v45 + 0x3A79461C054EB244) & 0x85FC03C9121C0BE3)) ^ (v45 + 0x3A79461C054EB244) & 0x85FC03C9121C0BE3;
  v47 = ((2 * ((v45 + 0x3A79461C054EB244) ^ 0x16814B7A82835443)) ^ 0x26FA9167213EBF40) & ((v45 + 0x3A79461C054EB244) ^ 0x16814B7A82835443) ^ (2 * ((v45 + 0x3A79461C054EB244) ^ 0x16814B7A82835443)) & 0x937D48B3909F5FA0;
  v48 = v47 ^ 0x91054890908140A0;
  v49 = (v47 ^ 0x270002000101F00) & (4 * v46) ^ v46;
  v50 = ((4 * v48) ^ 0x4DF522CE427D7E80) & v48 ^ (4 * v48) & 0x937D48B3909F5FA0;
  v51 = (v50 ^ 0x1750082001D5E80) & (16 * v49) ^ v49;
  v52 = ((16 * (v50 ^ 0x9208483190820120)) ^ 0x37D48B3909F5FA00) & (v50 ^ 0x9208483190820120) ^ (16 * (v50 ^ 0x9208483190820120)) & 0x937D48B3909F5FA0;
  v53 = (v52 ^ 0x1354083100955A00) & (v51 << 8) ^ v51;
  v54 = (((v52 ^ 0x80294082900A05A0) << 8) ^ 0x7D48B3909F5FA000) & (v52 ^ 0x80294082900A05A0) ^ ((v52 ^ 0x80294082900A05A0) << 8) & 0x937D48B3909F5F00;
  v55 = v53 ^ 0x937D48B3909F5FA0 ^ (v54 ^ 0x11480090901F0000) & (v53 << 16);
  v56 = ((v45 + 0x3A79461C054EB244) ^ (2 * ((v55 << 32) & 0x137D48B300000000 ^ v55 ^ ((v55 << 32) ^ 0x109F5FA000000000) & (((v54 ^ 0x8235482300805FA0) << 16) & 0x137D48B300000000 ^ 0x134C482000000000 ^ (((v54 ^ 0x8235482300805FA0) << 16) ^ 0x48B3909F00000000) & (v54 ^ 0x8235482300805FA0))))) >> 2;
  v57 = v45 + (((v56 ^ 0xD24639B830B6D745) + 0x1B8C5997607C7811) ^ ((v56 ^ 0x433B6835CB6F44C7) - 0x750EF7E5645A146DLL) ^ ((v56 ^ 0xB1B2517677113EAALL) + 0x7878315927DB9200));
  v58 = v57 + 0x15F2E0EE67D3185CLL;
  v59 = ((((v57 - 0x115E5CD3BEA61551) ^ 0x74D01A0C5789CAE8) - 0x3932D0A63778164ELL) ^ (v57 - 0x115E5CD3BEA61551) ^ (((v57 - 0x115E5CD3BEA61551) ^ 0xD4157C272760AE3BLL) + 0x66084972B86E8D63) ^ (((v57 - 0x115E5CD3BEA61551) ^ 0x1AD2577E558E7718) - 0x57309DD4357FABBCLL) ^ (((v57 - 0x115E5CD3BEA61551) ^ 0xF7F5FBFF4596CF6FLL) + 0x45E8CEAADA98EC37)) >> 30;
  v60 = v58 - 0xDEB4CE9E2346DE6 + (((v59 ^ 0xEAF905D68D4C3DD7) + 0x4FD91201DB119B44) ^ ((v59 ^ 0xE2E7FEA25C34603DLL) + 0x47C7E9750A69C6AALL) ^ ((v59 ^ 0x81EFB75E6F37743) - 0x52C1135D4F512E28));
  v61 = (((v60 ^ 0x291FE8F7CDAF205FLL) - 0x25773BAECAA208F4) ^ v60 ^ ((v60 ^ 0xBB79DD4539FD2E0ALL) + 0x48EEF1E3C10FF95FLL) ^ ((v60 ^ 0xE5213E12EC62D800) + 0x16B612B414900F55) ^ ((v60 ^ 0x7B2FD8F91F3DFEFELL) - 0x77470BA01830D655)) >> 12;
  v62 = v60 - (((v61 ^ 0x1E39804FB37028F8) - 0x3F1BFD30BEE549BDLL) ^ ((v61 ^ 0x2EBD1600043903FELL) - 0xF9F6B7F09AC62BBLL) ^ ((v61 ^ 0x308450C282D95BD4) - 0x11A62DBD8F4C3A91));
  v63 = ((((v62 - 0x2B934F7662FD95CELL) ^ 0xD58520426A8BC09DLL) + 0x2B82E06949609B17) ^ (v62 - 0x2B934F7662FD95CELL) ^ (((v62 - 0x2B934F7662FD95CELL) ^ 0xA943E884BE14258DLL) + 0x574428AF9DFF7E07) ^ (((v62 - 0x2B934F7662FD95CELL) ^ 0x4C41E8BDF77C37BDLL) - 0x4DB9D7692B6893C9) ^ (((v62 - 0x2B934F7662FD95CELL) ^ 0x317F1FAFFFF776D9) - 0x3087207B23E3D2ADLL)) >> 1;
  v64 = v62 - (((v63 ^ 0xFC51DFDDB85C4225) + 0x47A2FA39F63DDF93) ^ ((v63 ^ 0xA0CC8E69FE1ACB4FLL) + 0x1B3FAB8DB07B56F9) ^ ((v63 ^ 0x5C614E5E284CDB50) - 0x186D944599D2B918)) - 0x43FC7CFA20CACAD0;
  v65 = ((v64 ^ 0xF9B49E8D92516CADLL) + 0x2834B93090750CB7) ^ v64 ^ ((v64 ^ 0x78E3281E2FA66395) - 0x569CF05CD27DFC71) ^ ((v64 ^ 0xD19BB324BFD77B33) + 0x1B9499BDF31B29) ^ ((v64 ^ 0x7EB3DDF5FFFBEBEFLL) - 0x50CC05B70220740BLL);
  v66 = (((v65 ^ 0x64D01ADD4EDAF7F6) + 0x237EA9A345830540) ^ ((v65 ^ 0x517F1D79E3129BABLL) + 0x16D1AE07E84B6963) ^ ((v65 ^ 0xA98F6A7B768A8E2FLL) - 0x11DE26FA822C8319)) - ((((v65 >> 31) ^ 0x9CAF78BDC909D884) + 0x20FB2E63887CA880) ^ (((v65 >> 31) ^ 0xF7AEC21449EFBA64) + 0x4BFA94CA089ACAA0) ^ (((v65 >> 31) ^ 0x6B01BAA8B8A6B95FLL) - 0x28AA1389062C365BLL));
  v67 = ((((v66 - 0x1AA86A017A5D5557) ^ 0x2B97280D76F7F658) - 0x2F0535CDAA7FE678) ^ (v66 - 0x1AA86A017A5D5557) ^ (((v66 - 0x1AA86A017A5D5557) ^ 0xA2526C4272E28165) + 0x593F8E7D51956EBBLL) ^ (((v66 - 0x1AA86A017A5D5557) ^ 0x7A44B27067328A92) - 0x7ED6AFB0BBBA9AB2) ^ (((v66 - 0x1AA86A017A5D5557) ^ 0xF713EBFFBFAFED8FLL) + 0xC7E09C09CD80251)) >> 8;
  v68 = v66 - (((v67 ^ 0x52EBEAB3712D5247) + 0x1BFF95A1C09EAFELL) ^ ((v67 ^ 0xA9798419EC7C83BCLL) - 0x5D2680F7EA7C4F9) ^ ((v67 ^ 0xFB96FCB75D8D59EBLL) - 0x573D10A1CF561EAELL));
  v69 = ((v68 + 0x42E3EC3EFDA3115ALL) ^ 0xFD23A9EB1D4F3999) & (2 * ((v68 + 0x42E3EC3EFDA3115ALL) & 0xF1320DF3596FB9DALL)) ^ (v68 + 0x42E3EC3EFDA3115ALL) & 0xF1320DF3596FB9DALL;
  v70 = ((2 * ((v68 + 0x42E3EC3EFDA3115ALL) ^ 0xBF23B10B2F4729BDLL)) ^ 0x9C2379F0EC5120CELL) & ((v68 + 0x42E3EC3EFDA3115ALL) ^ 0xBF23B10B2F4729BDLL) ^ (2 * ((v68 + 0x42E3EC3EFDA3115ALL) ^ 0xBF23B10B2F4729BDLL)) & 0x4E11BCF876289066;
  v71 = v70 ^ 0x4210840812289021;
  v72 = (v70 ^ 0xC0038D064000040) & (4 * v69) ^ v69;
  v73 = ((4 * v71) ^ 0x3846F3E1D8A2419CLL) & v71 ^ (4 * v71) & 0x4E11BCF876289064;
  v74 = (v73 ^ 0x800B0E050200000) & (16 * v72) ^ v72;
  v75 = ((16 * (v73 ^ 0x46110C1826089063)) ^ 0xE11BCF8762890670) & (v73 ^ 0x46110C1826089063) ^ (16 * (v73 ^ 0x46110C1826089063)) & 0x4E11BCF876289060;
  v76 = (v75 ^ 0x40118C8062080000) & (v74 << 8) ^ v74;
  v77 = (((v75 ^ 0xE00307814209007) << 8) ^ 0x11BCF87628906700) & (v75 ^ 0xE00307814209007) ^ ((v75 ^ 0xE00307814209007) << 8) & 0x4E11BCF876289000;
  v78 = v76 ^ 0x4E11BCF876289067 ^ (v77 ^ 0x10B87020000000) & (v76 << 16);
  v79 = ((v68 + 0x42E3EC3EFDA3115ALL) ^ (2 * ((v78 << 32) & 0x4E11BCF800000000 ^ v78 ^ ((v78 << 32) ^ 0x7628906700000000) & (((v77 ^ 0x4E01048856289067) << 16) & 0x4E11BCF800000000 ^ 0x420188D000000000 ^ (((v77 ^ 0x4E01048856289067) << 16) ^ 0x3CF8762800000000) & (v77 ^ 0x4E01048856289067))))) >> 7;
  v80 = v68 - (((v79 ^ 0xEDCCF57F8A81E580) - 0x41B020D6E9520F31) ^ ((v79 ^ 0xC3AD86A14B78649FLL) - 0x6FD1530828AB8E2ELL) ^ ((v79 ^ 0x2FA353774693FC2DLL) + 0x7C207921DABFE964));
  v81 = v80 - 1549931819;
  LODWORD(v78) = (v26 ^ 0x8D62D92D) & (2 * (v26 & 0xA8731D8D)) ^ v26 & 0xA8731D8D;
  LODWORD(v68) = ((2 * (v26 ^ 0x9DC2F235)) ^ 0x6B63DF70) & (v26 ^ 0x9DC2F235) ^ (2 * (v26 ^ 0x9DC2F235)) & 0x35B1EFB8;
  LODWORD(v77) = v68 ^ 0x14902088;
  LODWORD(v68) = (v68 ^ 0x2100CE30) & (4 * v78) ^ v78;
  LODWORD(v78) = ((4 * v77) ^ 0xD6C7BEE0) & v77 ^ (4 * v77) & 0x35B1EFB8;
  LODWORD(v68) = (v78 ^ 0x1481AEA0) & (16 * v68) ^ v68;
  LODWORD(v78) = ((16 * (v78 ^ 0x21304118)) ^ 0x5B1EFB80) & (v78 ^ 0x21304118) ^ (16 * (v78 ^ 0x21304118)) & 0x35B1EFB0;
  v82 = (((v78 ^ 0x24A10438) << 8) & 0x35B10000 ^ 0x31A10000 ^ (((v78 ^ 0x24A10438) << 8) ^ 0xB1EF0000) & (v78 ^ 0x24A10438)) & (((v78 ^ 0x1110EB00) & (v68 << 8) ^ v68) << 16) ^ (v78 ^ 0x1110EB00) & (v68 << 8) ^ v68;
  v83 = ((v80 - 0x7D44A9CCA1C90791) ^ 0xC9BF05D8014B24D3) & (2 * ((v80 - 0x7D44A9CCA1C90791) & 0xE9BFA9E1124BA8DBLL)) ^ (v80 - 0x7D44A9CCA1C90791) & 0xE9BFA9E1124BA8DBLL;
  v84 = ((2 * ((v80 - 0x7D44A9CCA1C90791) ^ 0x1BFE065801D87447)) ^ 0xE4835F722727B938) & ((v80 - 0x7D44A9CCA1C90791) ^ 0x1BFE065801D87447) ^ (2 * ((v80 - 0x7D44A9CCA1C90791) ^ 0x1BFE065801D87447)) & 0xF241AFB91393DC9CLL;
  v85 = v84 ^ 0x1240A08910904484;
  v86 = (v84 ^ 0xE0010F0003038018) & (4 * v83) ^ v83;
  v87 = ((4 * v85) ^ 0xC906BEE44E4F7270) & v85 ^ (4 * v85) & 0xF241AFB91393DC9CLL;
  v88 = (v87 ^ 0xC000AEA002035010) & (16 * v86) ^ v86;
  v89 = ((16 * (v87 ^ 0x3241011911908C8CLL)) ^ 0x241AFB91393DC9C0) & (v87 ^ 0x3241011911908C8CLL) ^ (16 * (v87 ^ 0x3241011911908C8CLL)) & 0xF241AFB91393DC90;
  v90 = (v89 ^ 0x2000AB911111C800) & (v88 << 8) ^ v88;
  v91 = (((v89 ^ 0xD24104280282141CLL) << 8) ^ 0x41AFB91393DC9C00) & (v89 ^ 0xD24104280282141CLL) ^ ((v89 ^ 0xD24104280282141CLL) << 8) & 0xF241AFB91393DC00;
  v92 = v90 ^ 0xF241AFB91393DC9CLL ^ (v91 ^ 0x4001A91113900000) & (v90 << 16);
  v93 = ((v80 - 0x7D44A9CCA1C90791) ^ (2 * ((v92 << 32) & 0x7241AFB900000000 ^ v92 ^ ((v92 << 32) ^ 0x1393DC9C00000000) & (((v91 ^ 0xB24006A80003409CLL) << 16) & 0x7241AFB900000000 ^ 0x5040AC2800000000 ^ (((v91 ^ 0xB24006A80003409CLL) << 16) ^ 0x2FB9139300000000) & (v91 ^ 0xB24006A80003409CLL))))) >> 29;
  v94 = v80 + 0x5B1D0EF369E35F90 + (((v93 ^ 0xDA65E0BA92677074) - 0x8C84858479CFF3BLL) ^ ((v93 ^ 0xFA4B7CB1BA99590ELL) - 0x28E6D4536F62D641) ^ ((v93 ^ 0x202E9C0A61015463) + 0xD7CCB174B0524D4));
  v95 = (v94 ^ 0xD7439B86B284A244) & (2 * (v94 & 0xE40B9A04A2A43410)) ^ v94 & 0xE40B9A04A2A43410;
  v96 = ((2 * (v94 ^ 0x9757AF87F284AA64)) ^ 0xE6B86B06A0413CE8) & (v94 ^ 0x9757AF87F284AA64) ^ (2 * (v94 ^ 0x9757AF87F284AA64)) & 0x735C358350209E74;
  v97 = v96 ^ 0x1144148150208214;
  v98 = (v96 ^ 0x2018200200001040) & (4 * v95) ^ v95;
  v99 = ((4 * v97) ^ 0xCD70D60D408279D0) & v97 ^ (4 * v97) & 0x735C358350209E74;
  v100 = (v99 ^ 0x4150140140001840) & (16 * v98) ^ v98;
  v101 = ((16 * (v99 ^ 0x320C218210208624)) ^ 0x35C358350209E740) & (v99 ^ 0x320C218210208624) ^ (16 * (v99 ^ 0x320C218210208624)) & 0x735C358350209E70;
  v102 = (v101 ^ 0x3140100100008600) & (v100 << 8) ^ v100;
  v103 = (((v101 ^ 0x421C258250201834) << 8) ^ 0x5C358350209E7400) & (v101 ^ 0x421C258250201834) ^ ((v101 ^ 0x421C258250201834) << 8) & 0x735C358350209E00;
  v104 = v102 ^ 0x735C358350209E74 ^ (v103 ^ 0x5014010000000000) & (v102 << 16);
  v105 = (v94 ^ (2 * ((v104 << 32) & 0x735C358300000000 ^ v104 ^ ((v104 << 32) ^ 0x50209E7400000000) & (((v103 ^ 0x2348348350208A74) << 16) & 0x735C358300000000 ^ 0x425C258300000000 ^ (((v103 ^ 0x2348348350208A74) << 16) ^ 0x3583502000000000) & (v103 ^ 0x2348348350208A74))))) >> 14;
  v106 = v94 - (((v105 ^ 0x2E08CF3D83AB8C4DLL) + 0x48D79065F8553573) ^ ((v105 ^ 0x1413F2510824664ALL) + 0x72CCAD0973DADF76) ^ ((v105 ^ 0x3A19B7A3EF87E193) + 0x5CC6E8FB947958ADLL));
  v107 = ((v106 + 0x632801579238DD32) ^ 0xF7CC6E23A25805A1) & (2 * ((v106 + 0x632801579238DD32) & 0xE7C16E443062098ALL)) ^ (v106 + 0x632801579238DD32) & 0xE7C16E443062098ALL;
  v108 = ((2 * ((v106 + 0x632801579238DD32) ^ 0x3ACCEAA3A2DC17B5)) ^ 0xBA1B09CF257C3C7ELL) & ((v106 + 0x632801579238DD32) ^ 0x3ACCEAA3A2DC17B5) ^ (2 * ((v106 + 0x632801579238DD32) ^ 0x3ACCEAA3A2DC17B5)) & 0xDD0D84E792BE1E3ELL;
  v109 = v108 ^ 0x4504842092820201;
  v110 = (v108 ^ 0x9809000100180C38) & (4 * v107) ^ v107;
  v111 = ((4 * v109) ^ 0x7436139E4AF878FCLL) & v109 ^ (4 * v109) & 0xDD0D84E792BE1E3CLL;
  v112 = (v111 ^ 0x5404008602B81820) & (16 * v110) ^ v110;
  v113 = ((16 * (v111 ^ 0x8909846190060603)) ^ 0xD0D84E792BE1E3F0) & (v111 ^ 0x8909846190060603) ^ (16 * (v111 ^ 0x8909846190060603)) & 0xDD0D84E792BE1E30;
  v114 = (v113 ^ 0xD008046102A00200) & (v112 << 8) ^ v112;
  v115 = (((v113 ^ 0xD058086901E1C0FLL) << 8) ^ 0xD84E792BE1E3F00) & (v113 ^ 0xD058086901E1C0FLL) ^ ((v113 ^ 0xD058086901E1C0FLL) << 8) & 0xDD0D84E792BE1E00;
  v116 = v114 ^ 0xDD0D84E792BE1E3FLL ^ (v115 ^ 0xD048482921E0000) & (v114 << 16);
  v117 = ((v106 + 0x632801579238DD32) ^ (2 * ((v116 << 32) & 0x5D0D84E700000000 ^ v116 ^ ((v116 << 32) ^ 0x12BE1E3F00000000) & (((v115 ^ 0xD009006500A0003FLL) << 16) & 0x5D0D84E700000000 ^ 0x5908044100000000 ^ (((v115 ^ 0xD009006500A0003FLL) << 16) ^ 0x4E792BE00000000) & (v115 ^ 0xD009006500A0003FLL))))) >> 4;
  v118 = v106 - 0x1BC9DD0ED4CF4970 + (((v117 ^ 0x2CCF5E6DD127683BLL) - 0xA38DD68688942DALL) ^ ((v117 ^ 0xBE072F0B1E50FF1) - 0x2D17F1F5084B2510) ^ ((v117 ^ 0x20F30A6131938495) - 0x6048964883DAE74));
  v119 = (v118 ^ 0x7DCEAA44641F5E2) & (2 * (v118 & 0x87DEF2A48069F9EALL)) ^ v118 & 0x87DEF2A48069F9EALL;
  v120 = ((2 * (v118 ^ 0xEF14EED46422662)) ^ 0x125F78938C57BF10) & (v118 ^ 0xEF14EED46422662) ^ (2 * (v118 ^ 0xEF14EED46422662)) & 0x892FBC49C62BDF88;
  v121 = v120 ^ 0x8920844842284088;
  v122 = (v120 ^ 0xF180000038F00) & (4 * v119) ^ v119;
  v123 = ((4 * v121) ^ 0x24BEF12718AF7E20) & v121 ^ (4 * v121) & 0x892FBC49C62BDF88;
  v124 = (v123 ^ 0x2EB001002B5E00) & (16 * v122) ^ v122;
  v125 = ((16 * (v123 ^ 0x89010C48C6008188)) ^ 0x92FBC49C62BDF880) & (v123 ^ 0x89010C48C6008188) ^ (16 * (v123 ^ 0x89010C48C6008188)) & 0x892FBC49C62BDF80;
  v126 = (v125 ^ 0x802B84084229D800) & (v124 << 8) ^ v124;
  v127 = (((v125 ^ 0x904384184020708) << 8) ^ 0x2FBC49C62BDF8800) & (v125 ^ 0x904384184020708) ^ ((v125 ^ 0x904384184020708) << 8) & 0x892FBC49C62BDF00;
  v128 = v126 ^ 0x892FBC49C62BDF88 ^ (v127 ^ 0x92C0840020B0000) & (v126 << 16);
  v129 = v118 ^ (2 * ((v128 << 32) & 0x92FBC4900000000 ^ v128 ^ ((v128 << 32) ^ 0x462BDF8800000000) & (((v127 ^ 0x8003B409C4205788) << 16) & 0x92FBC4900000000 ^ 0x126384000000000 ^ (((v127 ^ 0x8003B409C4205788) << 16) ^ 0x3C49C62B00000000) & (v127 ^ 0x8003B409C4205788))));
  LODWORD(v127) = (v58 ^ 0xDBD58248) & (2 * (v58 & 0xD395A34D)) ^ v58 & 0xD395A34D;
  LODWORD(v128) = ((2 * (v58 ^ 0x79DD84C2)) ^ 0x54904F1E) & (v58 ^ 0x79DD84C2) ^ (2 * (v58 ^ 0x79DD84C2)) & 0xAA48278E;
  LODWORD(v121) = v128 ^ 0xAA482081;
  LODWORD(v128) = (v128 ^ 0x70C) & (4 * v127) ^ v127;
  LODWORD(v127) = ((4 * v121) ^ 0xA9209E3C) & v121 ^ (4 * v121) & 0xAA48278C;
  LODWORD(v128) = (v127 ^ 0xA8000600) & (16 * v128) ^ v128;
  LODWORD(v127) = ((16 * (v127 ^ 0x2482183)) ^ 0xA48278F0) & (v127 ^ 0x2482183) ^ (16 * (v127 ^ 0x2482183)) & 0xAA482780;
  LODWORD(v128) = v58 ^ (2 * ((((v127 ^ 0xA48070F) << 8) & 0x2A480000 ^ (((v127 ^ 0xA48070F) << 8) ^ 0x48270000) & (v127 ^ 0xA48070F) ^ 0x8000000) & (((v127 ^ 0xA0002000) & (v128 << 8) ^ v128) << 16) ^ (v127 ^ 0xA0002000) & (v128 << 8) ^ v128)) ^ v129;
  v130 = (((v129 ^ 0x33A864B3EF132462) - 0x401E14329DB2A3EFLL) ^ ((v129 ^ 0x7296A9C43A8A7B80) - 0x120D945482BFC0DLL) ^ ((v129 ^ 0xEEDA512C17CBE60CLL) + 0x6293DE529A959E7FLL)) - ((((v129 >> 29) ^ 0x67F01FA29E2768CDLL) + 0x72813EFAE49037B6) ^ (((v129 >> 29) ^ 0xAFDB9361ED6E90DLL) + 0x1F8C986E6461B676) ^ (((v129 >> 29) ^ 0x6D0DA691FFD5631ELL) + 0x787C87C985623C67));
  v131 = ((((v130 + 0x3BD05BDE6017EE2DLL) ^ 0x2ABAF77B05184904) - 0x60B6BADDAC88BB27) ^ (v130 + 0x3BD05BDE6017EE2DLL) ^ (((v130 + 0x3BD05BDE6017EE2DLL) ^ 0x51E3C013DDE3CABALL) - 0x1BEF8DB574733899) ^ (((v130 + 0x3BD05BDE6017EE2DLL) ^ 0x4E20A5B1C48194C0) - 0x42CE8176D1166C0) ^ (((v130 + 0x3BD05BDE6017EE2DLL) ^ 0x7F75DF7FB5EAE57ELL) - 0x357992D91C7A175DLL)) >> 14;
  v132 = v130 - (((v131 ^ 0xF4D97A1AB25EA680) + 0x3C672CE7C3088A41) ^ ((v131 ^ 0x43555B3B7510B0AFLL) - 0x7414F239FBB96390) ^ ((v131 ^ 0xB78D0910F1D4B06CLL) + 0x7F335FED80829CADLL));
  v133 = ((v132 - 0x2952798B2C0C63E0) ^ 0xCB85364E801FE36DLL) & (2 * ((v132 - 0x2952798B2C0C63E0) & 0xE3D6068F2A5FEA6ELL)) ^ (v132 - 0x2952798B2C0C63E0) & 0xE3D6068F2A5FEA6ELL;
  v134 = ((2 * ((v132 - 0x2952798B2C0C63E0) ^ 0xCA053E5E848FB721)) ^ 0x53A671A35DA0BA9ELL) & ((v132 - 0x2952798B2C0C63E0) ^ 0xCA053E5E848FB721) ^ (2 * ((v132 - 0x2952798B2C0C63E0) ^ 0xCA053E5E848FB721)) & 0x29D338D1AED05D4ELL;
  v135 = v134 ^ 0x28510850A2504541;
  v136 = (v134 ^ 0x180300108801808) & (4 * v133) ^ v133;
  v137 = ((4 * v135) ^ 0xA74CE346BB41753CLL) & v135 ^ (4 * v135) & 0x29D338D1AED05D4CLL;
  v138 = (v137 ^ 0x21402040AA405500) & (16 * v136) ^ v136;
  v139 = ((16 * (v137 ^ 0x893189104900843)) ^ 0x9D338D1AED05D4F0) & (v137 ^ 0x893189104900843) ^ (16 * (v137 ^ 0x893189104900843)) & 0x29D338D1AED05D40;
  v140 = (v139 ^ 0x9130810AC005400) & (v138 << 8) ^ v138;
  v141 = (((v139 ^ 0x20C030C102D0090FLL) << 8) ^ 0xD338D1AED05D4F00) & (v139 ^ 0x20C030C102D0090FLL) ^ ((v139 ^ 0x20C030C102D0090FLL) << 8) & 0x29D338D1AED05D00;
  v142 = v140 ^ 0x29D338D1AED05D4FLL ^ (v141 ^ 0x110108080500000) & (v140 << 16);
  v143 = ((v132 - 0x2952798B2C0C63E0) ^ (2 * ((v142 << 32) & 0x29D338D100000000 ^ v142 ^ ((v142 << 32) ^ 0x2ED05D4F00000000) & (((v141 ^ 0x28C328512E80104FLL) << 16) & 0x29D338D100000000 ^ 0x102100100000000 ^ (((v141 ^ 0x28C328512E80104FLL) << 16) ^ 0x38D1AED000000000) & (v141 ^ 0x28C328512E80104FLL))))) >> 3;
  v144 = v132 + (((v143 ^ 0x4546E860D966F981) - 0x316C06B6FCC333E9) ^ ((v143 ^ 0x5334CE678F62C528) - 0x271E20B1AAC70F40) ^ ((v143 ^ 0xA482EF298FBD6B7) - 0x7E62C024BD5E1CDFLL));
  v145 = v144 + 0x57AF747D326CDCAALL;
  v146 = ((((v144 + 0x507732DE652D94FBLL) ^ 0x8AF19689F71457B6) + 0x16B2F535F2DD39F3) ^ (v144 + 0x507732DE652D94FBLL) ^ (((v144 + 0x507732DE652D94FBLL) ^ 0x113B33A82C8E5420) - 0x7287AFEBD6B8C59BLL) ^ (((v144 + 0x507732DE652D94FBLL) ^ 0x9589549BD6337790) + 0x9CA3727D3FA19D6) ^ (((v144 + 0x507732DE652D94FBLL) ^ 0x6DFF6DF9F79FE5BCLL) - 0xE43F1BA0DA97407)) >> 28;
  v147 = v145 - (((v146 ^ 0xD151922934056CAALL) - 0xB12D92E78581D4ALL) ^ ((v146 ^ 0x51AEA6111037DAB2) + 0x741212E9A39554AELL) ^ ((v146 ^ 0x80FF343E1FFB7227) - 0x5ABC7F3953A603C7));
  v148 = ((v147 + 0x31404BC97D1954D1) ^ 0xCD27AB1033D81BF6) & (2 * ((v147 + 0x31404BC97D1954D1) & 0x89878B5243DC1BE6)) ^ (v147 + 0x31404BC97D1954D1) & 0x89878B5243DC1BE6;
  v149 = ((2 * ((v147 + 0x31404BC97D1954D1) ^ 0xCD2CAD3433E03FB2)) ^ 0x89564CCCE07848A8) & ((v147 + 0x31404BC97D1954D1) ^ 0xCD2CAD3433E03FB2) ^ (2 * ((v147 + 0x31404BC97D1954D1) ^ 0xCD2CAD3433E03FB2)) & 0x44AB2666703C2454;
  v150 = v149 ^ 0x44A9222210042454;
  v151 = (v149 ^ 0x2044000300000) & (4 * v148) ^ v148;
  v152 = ((4 * v150) ^ 0x12AC9999C0F09150) & v150 ^ (4 * v150) & 0x44AB2666703C2454;
  v153 = (v152 ^ 0xA8000040300040) & (16 * v151) ^ v151;
  v154 = ((16 * (v152 ^ 0x44032666300C2404)) ^ 0x4AB2666703C24540) & (v152 ^ 0x44032666300C2404) ^ (16 * (v152 ^ 0x44032666300C2404)) & 0x44AB2666703C2450;
  v155 = (v154 ^ 0x40A2266600000400) & (v153 << 8) ^ v153;
  v156 = (((v154 ^ 0x4090000703C2014) << 8) ^ 0xAB2666703C245400) & (v154 ^ 0x4090000703C2014) ^ ((v154 ^ 0x4090000703C2014) << 8) & 0x44AB2666703C2400;
  v157 = v155 ^ 0x44AB2666703C2454 ^ (v156 ^ 0x22266030240000) & (v155 << 16);
  v158 = ((v147 + 0x31404BC97D1954D1) ^ (2 * ((v157 << 32) & 0x44AB266600000000 ^ v157 ^ ((v157 << 32) ^ 0x703C245400000000) & (((v156 ^ 0x4489000640182054) << 16) & 0x44AB266600000000 ^ 0x4089064200000000 ^ (((v156 ^ 0x4489000640182054) << 16) ^ 0x2666703C00000000) & (v156 ^ 0x4489000640182054))))) >> 10;
  v159 = v147 - (((v158 ^ 0xE19A1B6654846B9CLL) + 0x5B5463C2F167FB9) ^ ((v158 ^ 0xE0D2B6A24EA2D3AELL) + 0x4FDEBF83530C78BLL) ^ ((v158 ^ 0x1688DA7DF8E5126) - 0x1AB82F025BE3BAFDLL));
  v160 = ((((v159 - 0x28B19932098A3E3) ^ 0x56EBF58EFC3CAD25) - 0x87667999C0A4310) ^ (v159 - 0x28B19932098A3E3) ^ (((v159 - 0x28B19932098A3E3) ^ 0x7CCEC406499DC82FLL) - 0x2253561129AB261ALL) ^ (((v159 - 0x28B19932098A3E3) ^ 0x1F450E612B284462) - 0x41D89C764B1EAA57) ^ (((v159 - 0x28B19932098A3E3) ^ 0x6BFDADFEFEBFCF58) - 0x35603FE99E892168)) >> 7;
  v161 = v159 - (((v160 ^ 0xD2251447302A7486) - 0x382E97C653AD6511) ^ ((v160 ^ 0xA4EEBE6A3EB0E286) - 0x4EE53DEB5D37F311) ^ ((v160 ^ 0x76769109205AFBDCLL) + 0x6382ED77BC2215B5));
  v162 = ((v161 + 0x42C4CB4694D4A62DLL) ^ 0xE3AF4AF94D7732D2) & (2 * ((v161 + 0x42C4CB4694D4A62DLL) & 0xEBAF6CFD0E67BADBLL)) ^ (v161 + 0x42C4CB4694D4A62DLL) & 0xEBAF6CFD0E67BADBLL;
  v163 = ((2 * ((v161 + 0x42C4CB4694D4A62DLL) ^ 0xB7E90BF9513372F2)) ^ 0xB88CCE08BEA99052) & ((v161 + 0x42C4CB4694D4A62DLL) ^ 0xB7E90BF9513372F2) ^ (2 * ((v161 + 0x42C4CB4694D4A62DLL) ^ 0xB7E90BF9513372F2)) & 0x5C4667045F54C828;
  v164 = v163 ^ 0x4442210441544829;
  v165 = (v163 ^ 0x180446001A008000) & (4 * v162) ^ v162;
  v166 = ((4 * v164) ^ 0x71199C117D5320A4) & v164 ^ (4 * v164) & 0x5C4667045F54C828;
  v167 = (v166 ^ 0x500004005D500020) & (16 * v165) ^ v165;
  v168 = ((16 * (v166 ^ 0xC4663040204C809)) ^ 0xC4667045F54C8290) & (v166 ^ 0xC4663040204C809) ^ (16 * (v166 ^ 0xC4663040204C809)) & 0x5C4667045F54C820;
  v169 = (v168 ^ 0x4446600455448000) & (v167 << 8) ^ v167;
  v170 = (((v168 ^ 0x180007000A104829) << 8) ^ 0x4667045F54C82900) & (v168 ^ 0x180007000A104829) ^ ((v168 ^ 0x180007000A104829) << 8) & 0x5C4667045F54C800;
  v171 = v169 ^ 0x5C4667045F54C829 ^ (v170 ^ 0x4446040454400000) & (v169 << 16);
  v172 = ((v161 + 0x42C4CB4694D4A62DLL) ^ (2 * ((v171 << 32) & 0x5C46670400000000 ^ v171 ^ ((v171 << 32) ^ 0x5F54C82900000000) & (((v170 ^ 0x180063000B14C029) << 16) & 0x5C46670400000000 ^ 0x1842200000000000 ^ (((v170 ^ 0x180063000B14C029) << 16) ^ 0x67045F5400000000) & (v170 ^ 0x180063000B14C029))))) >> 31;
  v173 = v161 - 0x7617FE079BC90E25 + (((v172 ^ 0x42E02A27C5C0E95CLL) - 0x5D1A1606B1372D02) ^ ((v172 ^ 0xF44FE836410D3528) + 0x144A2BE8CA050E8ALL) ^ ((v172 ^ 0xB6AFC210539B999FLL) + 0x56AA01CED893A23FLL));
  v174 = (v173 ^ 0x80557243C0B6E2E3) & (2 * (v173 & 0xC486726BE2A6F0E2)) ^ v173 & 0xC486726BE2A6F0E2;
  v175 = ((2 * (v173 ^ 0x815DF68384B283E3)) ^ 0x8BB709D0CC28E602) & (v173 ^ 0x815DF68384B283E3) ^ (2 * (v173 ^ 0x815DF68384B283E3)) & 0x45DB84E866147300;
  v176 = v175 ^ 0x4448842822141101;
  v177 = (v175 ^ 0x1300C004004200) & (4 * v174) ^ v174;
  v178 = ((4 * v176) ^ 0x176E13A19851CC04) & v176 ^ (4 * v176) & 0x45DB84E866147300;
  v179 = (v178 ^ 0x54A00A000104000) & (16 * v177) ^ v177;
  v180 = ((16 * (v178 ^ 0x4091844866043301)) ^ 0x5DB84E8661473010) & (v178 ^ 0x4091844866043301) ^ (16 * (v178 ^ 0x4091844866043301)) & 0x45DB84E866147300;
  v181 = (v180 ^ 0x4598048060043000) & (v179 << 8) ^ v179;
  v182 = (((v180 ^ 0x43806806104301) << 8) ^ 0xDB84E86614730100) & (v180 ^ 0x43806806104301) ^ ((v180 ^ 0x43806806104301) << 8) & 0x45DB84E866147300;
  v183 = v181 ^ 0x45DB84E866147301 ^ (v182 ^ 0x4180806004100000) & (v181 << 16);
  v184 = (v183 << 32) & 0x45DB84E800000000 ^ v183 ^ ((v183 << 32) ^ 0x6614730100000000) & (((v182 ^ 0x45B048862047201) << 16) & 0x45DB84E800000000 ^ 0x411380E800000000 ^ (((v182 ^ 0x45B048862047201) << 16) ^ 0x4E8661400000000) & (v182 ^ 0x45B048862047201));
  LODWORD(v161) = v161 - 559755677;
  LODWORD(STACK[0x57A0]) = a1 ^ ((v161 ^ 0x2C23EF5F) + 2137377895) ^ 0xC025A756 ^ v26 ^ (2 * v82) ^ v81 ^ ((v81 ^ 0x1643D96E) - 654798410) ^ ((v81 ^ 0xB9589E09) + 2011420371) ^ ((v81 ^ 0x25F02B94) - 347380912) ^ ((v81 ^ 0xBBAFDBD7) + 1964282637) ^ v161 ^ ((v161 ^ 0x39C781F6) + 1786880720) ^ ((v161 ^ 0xF842CE4F) - 1425740425) ^ ((v161 ^ 0x411F7C20) + 307846938);
  v185 = v173 + 0x20077F941032F65FLL + (((((v173 ^ (2 * v184)) >> 8) ^ 0x4B6145DBFF41EA7) + 0x1A0AFC8AD7C13EC3) ^ ((((v173 ^ (2 * v184)) >> 8) ^ 0xB606B21095CAC7DCLL) - 0x5745A53802001846) ^ ((((v173 ^ (2 * v184)) >> 8) ^ 0xB277B7369110576DLL) - 0x5334A01E06DA88F7));
  v186 = (((v185 ^ 0x60C6B80C37DB9E8ELL) - 0x193BBED9377C2D7FLL) ^ v185 ^ ((v185 ^ 0x12C31F9353964A33) - 0x6B3E19465331F9C2) ^ ((v185 ^ 0x246F5EF5955500F2) - 0x5D92582095F2B302) ^ ((v185 ^ 0x2F97FFBFF1BF67BELL) - 0x566AF96AF118D44ELL)) >> 4;
  LODWORD(v185) = v185 - (((v186 ^ 0xF322203F) - 69663095) ^ ((v186 ^ 0x9E8FD4B6) - 1770720766) ^ ((v186 ^ 0x3DA78FB6) + 895265026)) + 54055320;
  LODWORD(v184) = (v185 ^ 0x1196957F) & (2 * (v185 & 0x5510D800)) ^ v185 & 0x5510D800;
  LODWORD(v186) = ((2 * (v185 ^ 0x9196957F)) ^ 0x890C9AFE) & (v185 ^ 0x9196957F) ^ (2 * (v185 ^ 0x9196957F)) & 0xC4864D7E;
  LODWORD(v182) = v186 ^ 0x44824501;
  LODWORD(v186) = (v186 ^ 0x80040000) & (4 * v184) ^ v184;
  LODWORD(v184) = ((4 * v182) ^ 0x121935FC) & v182 ^ (4 * v182) & 0xC4864D7C;
  LODWORD(v186) = (v184 ^ 0x560) & (16 * v186) ^ v186;
  LODWORD(v184) = ((16 * (v184 ^ 0xC4864803)) ^ 0x4864D7F0) & (v184 ^ 0xC4864803) ^ (16 * (v184 ^ 0xC4864803)) & 0xC4864D70;
  LODWORD(STACK[0x5790]) = a2 ^ 0x5DF3B84E ^ v128 ^ v185 ^ (2 * ((v184 ^ 0x40044500) & (v186 << 8) ^ v186 ^ 0xC4864D7F ^ ((((v184 ^ 0x8482080F) << 8) ^ 0x864D7F00) & (v184 ^ 0x8482080F) ^ ((v184 ^ 0x8482080F) << 8) & 0xC4864D00 ^ 0x84040000) & (((v184 ^ 0x40044500) & (v186 << 8) ^ v186) << 16)));
  LOBYTE(v184) = *(STACK[0x57C0] + 5) + 49;
  LOBYTE(v185) = *(STACK[0x57C0] + (((v184 ^ (2 * ((v184 ^ 2) & (2 * ((v184 ^ 0x5A) & (2 * (v184 & 0xFB)) ^ v184 & 0xFB)) ^ v184 & 0xFB))) & 0xE | (v184 & 1)) ^ 0xBLL));
  LOBYTE(v185) = *(STACK[0x57C0] + ((v185 ^ (2 * (v185 & (2 * ((v185 + 80) & (2 * ((v185 + 80) ^ 0xE3)) ^ (v185 + 80) ^ 0xE3)) ^ (v185 + 80) ^ 0xE3))) & 0xF ^ 0xFLL));
  LOBYTE(v185) = *(STACK[0x57C0] + (((v185 + 124) ^ (2 * (((v185 + 124) ^ 6) & (2 * (((v185 + 124) ^ 0xE) & (2 * (v185 & 2 ^ (v185 + 124) ^ 3)) ^ v185 & 2 ^ (v185 + 124) ^ 3)) ^ v185 & 2 ^ (v185 + 124) ^ 3))) & 0xF ^ 0xDLL));
  LOBYTE(v145) = v185 + 119;
  LOBYTE(v185) = ((-120 - v185) | 0x4B) ^ (v185 + 119) & 0x96;
  LODWORD(v185) = (v145 ^ (2 * ((v145 ^ 4) & (2 * (v145 & (2 * v185) ^ v185)) ^ v185))) & 0xF;
  v187 = *(STACK[0x57D8] + 8 * a3);
  LODWORD(STACK[0x5740]) = ((v185 - 37) ^ ((v185 ^ 0xD673444C) + 697088983) ^ ((v185 ^ 0xBFB900EE) + 1078394741)) + 887698826;
  LODWORD(STACK[0x5780]) = 1002062769;
  LODWORD(STACK[0x5770]) = -1061215514;
  LODWORD(STACK[0x5450]) = v4 + 18477;
  STACK[0x5750] = v4;
  LODWORD(STACK[0x5730]) = v4 + 1568366131;
  LODWORD(STACK[0x5720]) = 50335398;
  LODWORD(STACK[0x5710]) = 1009842912;
  return v187();
}

uint64_t sub_1005C1F5C()
{
  v4 = v2 < v0;
  if (v4 == v3 + 769218781 < v0)
  {
    v4 = v3 + 769218781 < v2;
  }

  return (*(STACK[0x57D8] + 8 * ((91 * !v4) ^ v1)))();
}

uint64_t sub_1005C29B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = (STACK[0x51B8] - 22597) | 0x2D2E;
  v9 = STACK[0x51B8] - 21242;
  LODWORD(STACK[0xD7C4]) = v7;
  v10 = STACK[0xA160] - 0x30BDFED8F32E6575;
  v11 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v9);
  return (*(v11 + 8 * (v9 - 7759 + v8)))(v10, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1005C2A74@<X0>(unsigned int a1@<W4>, int a2@<W8>)
{
  LODWORD(STACK[0xC76C]) = v2;
  v3 = LODWORD(STACK[0xC620]) + 940622725;
  v4 = v3 < 0xA8477DDF;
  v5 = v2 - 1471709729 < v3;
  if (v2 > a1 != v4)
  {
    v5 = v4;
  }

  return (*(STACK[0x57D8] + 8 * ((16358 * (((a2 - 73) ^ v5) & 1)) ^ a2)))();
}

uint64_t sub_1005C2AF0()
{
  v1 = STACK[0x64D8];
  v2 = STACK[0x7FB8] + (*(*STACK[0x51F0] + (*STACK[0x51E8] & 0x4B905A90)) ^ ((v0 - 11340) - 0x1412FC33B664102ELL)) - (((v1 ^ 0xC3EE53671501E0A9) + 0x3C11AC98EAFE1F57) ^ ((v1 ^ 0x11080006B9F13005) - 0x11080006B9F13005) ^ ((*(*STACK[0x51F0] + (*STACK[0x51E8] & 0x4B905A90)) ^ 0xC6F4AF521A94C080 ^ v1) - (*(*STACK[0x51F0] + (*STACK[0x51E8] & 0x4B905A90)) ^ 0xC6F4AF521A94C080))) + 0x121E2F0A97F315A2;
  v3 = (v2 ^ 0x6688E01F) & (2 * (v2 & 0x680CEA5F)) ^ v2 & 0x680CEA5F;
  v4 = ((2 * (v2 ^ 0xB688E43F)) ^ 0xBD081CC0) & (v2 ^ 0xB688E43F) ^ (2 * (v2 ^ 0xB688E43F)) & 0xDE840E60;
  v5 = v4 ^ 0x42840220;
  v6 = (v4 ^ 0x80000840) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0x7A103980) & v5 ^ (4 * v5) & 0xDE840E60;
  v8 = (v7 ^ 0x5A000800) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x84840660)) ^ 0xE840E600) & (v7 ^ 0x84840660) ^ (16 * (v7 ^ 0x84840660)) & 0xDE840E60;
  *(STACK[0x9C98] - 0x4CD3383D2FF34AE8) = v2 ^ (2 * ((((v9 ^ 0x16840860) << 8) & 0x5E840000 ^ (((v9 ^ 0x16840860) << 8) ^ 0x840E0000) & (v9 ^ 0x16840860) ^ 0x4040404) & (((v9 ^ 0xC8000600) & (v8 << 8) ^ v8) << 16) ^ (v9 ^ 0xC8000600) & (v8 << 8) ^ v8)) ^ 0xBA106ACB;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1005C2D38()
{
  v2 = v1 ^ 0x1DED8;
  *v0 = -769884012;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * ((v1 ^ 0x1DED8) + 8330)))(2560);
  STACK[0x6728] = v4;
  return (*(v3 + 8 * (((v4 != 0) * ((v2 + 1112432547) & 0xBDB15EB8 ^ 0x1A68)) ^ v2)))();
}

uint64_t sub_1005C2DC8@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x54A0]) = LODWORD(STACK[0x5420]) ^ LODWORD(STACK[0x55D0]) ^ LODWORD(STACK[0x5430]);
  LODWORD(STACK[0x5420]) = LODWORD(STACK[0x5580]) ^ 0xA618ED2E;
  LODWORD(STACK[0x5440]) = LODWORD(STACK[0x5570]) ^ 0x6286716;
  LODWORD(STACK[0x5398]) = LODWORD(STACK[0x5560]) ^ 0x1B97BB7B;
  return (*(STACK[0x57D8] + 8 * a1))(3263643784, -405863631, -811727262, v1);
}

uint64_t sub_1005C2EDC()
{
  v1 = (v0 + 14185) ^ LODWORD(STACK[0xA27C]) ^ 0xF6B9;
  v2 = STACK[0x8CF8];
  STACK[0xC500] = STACK[0xBF88];
  LODWORD(STACK[0xC8E4]) = -1837698116;
  STACK[0xAAD0] = v2;
  LOWORD(STACK[0x5E56]) = v1;
  LODWORD(STACK[0xAD70]) = 2106647932;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1005C30B8(uint64_t a1)
{
  v1 = *(a1 + 3340);
  *(a1 + 3344) = v1;
  v2 = *(a1 + 3336);
  *(a1 + 3348) = v2;
  *(a1 + 3352) = v2 - 11085;
  *(a1 + 3356) = v2 - 11085;
  v3 = *(STACK[0x4D10] + 24);
  v4 = (v1 - 531439761);
  *(a1 + 3360) = v4;
  *(a1 + 3184) = v3 + 16 * v4 + 8;
  v5 = STACK[0x57D8];
  *(a1 + 3168) = *(STACK[0x57D8] + 8 * (v2 ^ 0x1F2E));
  return (*(v5 + 8 * (v2 ^ 0x1FDA)))();
}

uint64_t sub_1005C3334@<X0>(unint64_t a1@<X8>)
{
  v4 = STACK[0xA518] + v1;
  STACK[0x7A28] = a1;
  LODWORD(STACK[0x7E70]) = v3;
  STACK[0x5CE8] = v4;
  return (*(STACK[0x57D8] + 8 * (((((v4 == 0) ^ (31 * (v2 ^ 0x58))) & 1) * ((v2 + 1745145973) & 0x97FAFF7F ^ 0x1554)) ^ v2)))();
}

uint64_t sub_1005C33AC(uint64_t a1, uint64_t a2)
{
  v2 = STACK[0x3E80];
  v3 = STACK[0x57D8];
  STACK[0x6568] = *(STACK[0x57D8] + 8 * STACK[0x3E80]);
  return (*(v3 + 8 * (v2 ^ 0x1DB9 ^ (15978 * ((v2 ^ 0xC22EE379) == -1529393144)))))(0x308E083E0C524CBELL, a2, 0x683CBC57EAB92A3ELL);
}

void *sub_1005C3444()
{
  STACK[0x92B8] = v1;
  LODWORD(STACK[0xBD4C]) = STACK[0xC7F4];
  v2 = STACK[0x7ED8];
  v3 = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x58D0] = v3;
  STACK[0x90A8] = (v3 + 32);
  STACK[0x7ED8] = v2 + ((1801 * (v0 ^ 0x2F5u)) ^ 0x317FLL);
  STACK[0x7628] = STACK[0x90F8];
  LODWORD(STACK[0xC558]) = 0;
  STACK[0x6BE0] = 0;
  LODWORD(STACK[0x61C8]) = -769884012;
  STACK[0xC2C8] = 0;
  return (*(STACK[0x57D8] + 8 * (v0 ^ 0x16DCu)))(&STACK[0xC2C8]);
}

uint64_t sub_1005C35A0()
{
  v2 = *(v0 - 0x683CBC57EAB92A36);
  STACK[0x59A0] = v2;
  return (*(STACK[0x57D8] + 8 * (((v2 == 0x308E083E0C524CBELL) * ((((v1 ^ 0x5646) - 1573110017) & 0x5DC3DBDE ^ 0xFFFF94CB) + 11 * (v1 ^ 0x6FFF))) ^ v1 ^ 0x5646)))();
}

uint64_t sub_1005C3630@<X0>(unint64_t a1@<X8>)
{
  STACK[0x9AB0] = a1;
  LODWORD(STACK[0x7B0C]) = v2;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1005C3668()
{
  LODWORD(STACK[0x6784]) = *(v0 - 0x30BDFED8F32E6559);
  v2 = STACK[0x57D8];
  STACK[0xBCF8] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * ((v1 + 7369) ^ v1)))();
}

uint64_t sub_1005C3978()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x241B)))();
  STACK[0xAAA0] = 0;
  return (*(v1 + 8 * (v0 - 16103)))(v2);
}

uint64_t sub_1005C39B8()
{
  v1 = (((LODWORD(STACK[0xDFE4]) ^ 0x420D3AFC) - 1108163324) ^ ((LODWORD(STACK[0xDFE4]) ^ 0x6531FB92) - 1697774482) ^ ((LODWORD(STACK[0xDFE4]) ^ 0xF52041FA) + 182435334)) - 769884012;
  v2 = STACK[0xDFFC];
  LODWORD(STACK[0x5640]) = -143113107;
  if (v1 >= 8)
  {
    v3 = v2;
  }

  else
  {
    v3 = -143113107;
  }

  LODWORD(STACK[0x5790]) = v3;
  v4 = STACK[0x96A0];
  v5 = STACK[0xDBDC];
  LODWORD(STACK[0x5600]) = STACK[0xDBDC];
  v6 = STACK[0x9EE0];
  LODWORD(STACK[0x5750]) = ((v5 + 4) ^ 0xCBFD1FDB) + 1968700990 + ((2 * (v5 + 4)) & 0x97FA3FB6);
  v7 = STACK[0xDBD0];
  LODWORD(STACK[0x55F0]) = STACK[0xDBD0];
  STACK[0x57A0] = STACK[0xDF30];
  STACK[0x5760] = STACK[0x6060];
  STACK[0x5740] = STACK[0xDBC0];
  v8 = LODWORD(STACK[0xDBCC]);
  STACK[0x5610] = v8;
  LODWORD(STACK[0x5730]) = ((v8 + 4) ^ 0xFFD5BFB9) + 1098866272 + ((2 * (v8 + 4)) & 0xFFAB7F72);
  STACK[0x5780] = STACK[0xDBB0];
  LODWORD(v8) = STACK[0xDB9C];
  LODWORD(STACK[0x55E0]) = STACK[0xDB9C];
  STACK[0x5720] = STACK[0xDB88];
  v9 = LODWORD(STACK[0xDB98]);
  STACK[0x5620] = v9;
  LODWORD(STACK[0x5710]) = ((v9 + 4) ^ 0x4DDD3F7B) - 210248034 + ((2 * (v9 + 4)) & 0x9BBA7EF6);
  STACK[0x5770] = STACK[0xDB78];
  LODWORD(STACK[0x5700]) = STACK[0xED50];
  LODWORD(v9) = LOBYTE(STACK[0xED4F]);
  v10 = STACK[0xED34];
  v11 = LODWORD(STACK[0xED34]) - 103679699;
  v12 = STACK[0xDA84];
  LODWORD(STACK[0x55D0]) = STACK[0xDA84];
  LODWORD(STACK[0x56F0]) = ((v12 + 4) ^ 0xEDFF7E1D) + 1398120444 + ((2 * (v12 + 4)) & 0xDBFEFC3A);
  LODWORD(STACK[0x5670]) = v9 | (v11 < 8);
  STACK[0x57B0] = STACK[0xED28];
  LODWORD(STACK[0x56E0]) = (((v7 & 0xFFFFFFFB ^ 0x6E55840) + 1012078925) ^ ((v7 & 0xFFFFFFFB ^ 0x58C435EE) + 1651668195) ^ ((v7 & 0xFFFFFFFB ^ 0x5E216DAA) + 1687628967)) + 111074576;
  LODWORD(STACK[0x56D0]) = (((v8 & 0xFFFFFFFB ^ 0x80FFEA04) - 1489696224) ^ ((v8 & 0xFFFFFFFB ^ 0x3FD3822A) + 404316722) ^ ((v8 & 0xFFFFFFFB ^ 0xBF2C682A) - 1729722318)) + 428490233;
  LODWORD(STACK[0x56C0]) = v10 + 2134944872;
  v13 = *(STACK[0x57D8] + 8 * (v0 - 5132));
  LODWORD(STACK[0x5680]) = v11 - 12;
  v14 = LODWORD(STACK[0xDF3C]);
  STACK[0x5660] = v4 - 0x79296B4A625EDF30;
  STACK[0x57C0] = v4;
  STACK[0x5650] = v4 - 0x79296B4A625EDF14;
  return v13(v14, v6);
}

void *sub_1005C3E74()
{
  STACK[0xD930] = STACK[0xA8D0];
  STACK[0x9900] = 0x1883660EE8144416;
  return (*(STACK[0x57D8] + 8 * (v0 ^ 0x6CB6 ^ (v0 + 22033))))(&STACK[0xB313]);
}

uint64_t sub_1005C3FB0()
{
  v2 = STACK[0x51B8];
  v3 = STACK[0x51B8] - 13972;
  LOBYTE(STACK[0x1D4C8]) = 3 * ((((v1 + 16) | 0x56) - (v1 + 16) + ((v1 + 16) & 0xA8)) ^ 0x7E) + 97;
  LODWORD(STACK[0x1D4CC]) = 16169987 * ((((v1 - 240) | 0x29A62756) - (v1 - 240) + ((v1 - 240) & 0xD659D8A8)) ^ 0x7C28127E) + v2 - 271213714;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v2 ^ 0x2439)))(v1 - 240);
  return (*(v4 + 8 * (((v2 + 7440) * (v0 == -143113071)) ^ v3)))(v5);
}

uint64_t sub_1005C4214@<X0>(int a1@<W8>)
{
  v3 = a1 ^ 0x1E1;
  LODWORD(STACK[0x1D4C8]) = ((a1 ^ 0x1E1) - 1723133771) ^ (1917435887 * ((2 * (((v2 - 240) ^ 0x1A95D89F) & 0x673AD9EC) - ((v2 - 240) ^ 0x1A95D89F) - 1731910125) ^ 0x64EBA58A));
  STACK[0x1D4C0] = v1;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (a1 ^ 0x2587)))(v2 - 240);
  return (*(v4 + 8 * (v3 - 11736)))(v5);
}

uint64_t sub_1005C4380()
{
  v5 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * (v3 + 20826)))(v4);
  v6 = (*(v5 + 8 * (v3 ^ 0x5757)))((v1 + v0));
  return (*(v5 + 8 * ((25875 * (v2 == v3 + 1648179522)) ^ v3)))(v6);
}

uint64_t sub_1005C444C@<X0>(int a1@<W5>, int a2@<W6>, int a3@<W8>)
{
  v10 = STACK[0xE238];
  v12 = *(STACK[0xE238] + 88);
  v11 = *(STACK[0xE238] + 92);
  LODWORD(STACK[0x9304]) = a1;
  LODWORD(STACK[0x8394]) = 1261123163;
  LODWORD(STACK[0x58FC]) = v8;
  LODWORD(STACK[0xCF1C]) = v7;
  LODWORD(STACK[0x64F8]) = v6;
  v13 = (((a2 ^ 0x651A015D) + 213225857) ^ ((a2 ^ 0xD6696FAB) - 1077477513) ^ ((a2 ^ 0xD7688591) - 1094249139)) + (((v12 ^ 0x5FE2D2D2) - 1608700626) ^ ((v12 ^ 0x390B7FC) - 59815932) ^ (((3 * (v9 ^ 0x5CC3)) ^ 0xAE39B93D ^ v12) + 1371938453)) + 148560054;
  LODWORD(STACK[0x663C]) = v5;
  LODWORD(STACK[0x76DC]) = v4;
  LODWORD(STACK[0xAFA4]) = v3;
  v14 = (((v5 ^ 0x227EEE34) - 578743860) ^ ((v5 ^ 0x6FFD51AB) - 1878872491) ^ ((v5 ^ 0xBFC83BDA) + 1077396518)) + 421375817 + (((v11 ^ 0x231A2907) - 588916999) ^ ((v11 ^ 0x298BBA02) - 697022978) ^ ((v11 ^ 0xF8DA1740) + 119924928));
  v10[22] = v13 ^ ((v13 ^ 0x94E18A3C) + 1331537392) ^ ((v13 ^ 0xC0479F40) + 469479572) ^ ((v13 ^ 0x871E3AEF) + 1554126141) ^ ((v13 ^ 0xF7FBFFBF) + 742903917) ^ 0xD6085469;
  v10[23] = v14 ^ ((v14 ^ 0x6C3BF002) - 1488803517) ^ ((v14 ^ 0x215B9717) - 366817704) ^ ((v14 ^ 0x960D3655) + 1567911702) ^ ((v14 ^ 0xEFEBF7FF) + 613592768) ^ 0xC6CD22FA;
  v15 = (((v4 ^ 0xEBA23829) + 341690327) ^ ((v4 ^ 0xA599E91C) + 1516639972) ^ ((v4 ^ 0xBC705570) + 1133488784)) - 382472189 + (((v10[24] ^ 0x8A410772) + 1975449742) ^ ((v10[24] ^ 0xD11F3084) + 786485116) ^ ((v10[24] ^ 0xA915B3B3) + 1458195533));
  v16 = (((v3 ^ 0xD2FBAA24) + 755258844) ^ ((v3 ^ 0xB18949EF) + 1316402705) ^ ((v3 ^ 0x9139678E) + 1858508914)) + 691147364 + (((v10[25] ^ 0x1F5D9BC9) - 526228425) ^ ((v10[25] ^ 0xCA7D6248) + 897752504) ^ ((v10[25] ^ 0x276B7DC4) - 661355972));
  v17 = (v16 ^ 0xB362E525) & (2 * (v16 & 0xBB64F626)) ^ v16 & 0xBB64F626;
  v18 = ((2 * (v16 ^ 0xC3A26561)) ^ 0xF18D268E) & (v16 ^ 0xC3A26561) ^ (2 * (v16 ^ 0xC3A26561)) & 0x78C69346;
  v19 = v18 ^ 0x8429141;
  v20 = (v18 ^ 0x70C40041) & (4 * v17) ^ v17;
  v21 = ((4 * v19) ^ 0xE31A4D1C) & v19 ^ (4 * v19) & 0x78C69344;
  v22 = (v21 ^ 0x60020100) & (16 * v20) ^ v20;
  v23 = ((16 * (v21 ^ 0x18C49243)) ^ 0x8C693470) & (v21 ^ 0x18C49243) ^ (16 * (v21 ^ 0x18C49243)) & 0x78C69340;
  v24 = v22 ^ 0x78C69347 ^ (v23 ^ 0x8401007) & (v22 << 8);
  v10[24] = v15 ^ 0xF6D7633C ^ ((v15 ^ 0x6B5CF93) - 36251882) ^ ((v15 ^ 0xB948F504) + 1110175107) ^ ((v15 ^ 0xCCBE2A31) + 937243320) ^ ((v15 ^ 0x77DFF7DF) - 1933775014);
  v10[25] = v16 ^ (2 * ((v24 << 16) & 0x78C60000 ^ v24 ^ ((v24 << 16) ^ 0x13470000) & (((v23 ^ 0x70868307) << 8) & 0x78C60000 ^ 0x38440000 ^ (((v23 ^ 0x70868307) << 8) ^ 0xC6930000) & (v23 ^ 0x70868307)))) ^ 0x982E54ED;
  LODWORD(STACK[0x9A3C]) = a3;
  return (*(STACK[0x57D8] + 8 * v9))();
}

uint64_t sub_1005C4B0C()
{
  v0 = STACK[0x51B8] ^ 0x6CFC;
  v1 = STACK[0x5DB8];
  v2 = STACK[0x7ED8];
  STACK[0x5EF0] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = (v0 ^ 0x348A) + v2;
  STACK[0x8E58] = v1;
  return (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x2BB8])))();
}

uint64_t sub_1005C4B6C()
{
  STACK[0x7508] = v1;
  STACK[0x8C38] = &STACK[0xAE5C];
  LODWORD(STACK[0x9094]) = -32197468;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1005C4C34()
{
  v2 = STACK[0xA2E0] + 4 * (((v1 + 22524) ^ 0xA3DF8B14) + v0);
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = v2;
  LODWORD(STACK[0x9094]) = -32197427;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1005C4CC8()
{
  v1 = STACK[0x51B8] - 18310;
  STACK[0xC1F0] = v0;
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xAAFC];
  LODWORD(STACK[0x9094]) = -32197414;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1005C4D60(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = LODWORD(STACK[0x57C0]) + 25;
  v7 = (LODWORD(STACK[0x57C0]) - 1924296712) & 0x72B27F7F;
  LODWORD(STACK[0x5350]) = (v7 ^ 0x14E26955) + LODWORD(STACK[0x5760]);
  LODWORD(STACK[0x50B0]) = LODWORD(STACK[0x52B8]) ^ 0x6F9A175A;
  LODWORD(STACK[0x4EA8]) = LODWORD(STACK[0x5328]) ^ 0xC19370A7;
  v8 = *(STACK[0x57D8] + 8 * v6);
  LODWORD(STACK[0x57C0]) = v7;
  v9 = (v7 - 26371) | 0x2A61;
  LODWORD(STACK[0x5780]) = v9;
  LODWORD(STACK[0x57B0]) = v9 ^ 0x7AAD7DDB;
  LODWORD(STACK[0x57A0]) = 1009624964;
  LODWORD(STACK[0x5790]) = -2121919996;
  return v8(1935669984, a2, (a1 + v5 + a5 - 1));
}

uint64_t sub_1005C4EB8()
{
  v0 = (STACK[0x51B8] + 2106) | 0x940;
  v1 = STACK[0x51B8] - 22050;
  LODWORD(STACK[0xB10C]) = 16 * LODWORD(STACK[0x8874]);
  v2 = STACK[0x57D8];
  STACK[0x9078] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x1768 ^ (16277 * (((v0 - 755785899) ^ v1) < 0x347238F2)))))();
}

uint64_t sub_1005C4FB4()
{
  v2 = STACK[0x51B8];
  v3 = STACK[0x51B8] - 19633;
  STACK[0xC590] = STACK[0x99C0];
  v4 = *STACK[0x45F8];
  v5 = *STACK[0x45F0];
  LODWORD(STACK[0xC0C8]) = 16 * ((3 * (v5 + v4)) & 7) + 32;
  v6 = (3 * (v5 - v4)) & 0xF;
  if (v6 == 1)
  {
    v6 = 0;
  }

  LODWORD(STACK[0x6724]) = v6;
  *(v0 + 592) = v2 - 289235981 * ((v1 - 1091094550 - 2 * ((v1 - 240) & 0xBEF738DA)) ^ 0x3975E8E5) - 1555;
  v7 = STACK[0x57D8];
  v8 = (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x3764])))(v1 - 240);
  LODWORD(STACK[0xC814]) = STACK[0x1D4C4];
  return (*(v7 + 8 * (v3 ^ 0x8FC ^ (5268 * (v3 != 870980872)))))(v8);
}

uint64_t sub_1005C50F0()
{
  v0 = STACK[0x51B8] - 21002;
  v1 = STACK[0xA240];
  *STACK[0x9A90] = STACK[0xA240];
  LODWORD(STACK[0x1D14C]) = 128;
  *STACK[0x6858] = v1 + 128;
  *STACK[0x6190] = 128;
  return (*(STACK[0x57D8] + 8 * (v0 ^ 0x14CF)))();
}

uint64_t sub_1005C5380()
{
  LODWORD(STACK[0xA048]) = 1978581539;
  STACK[0xB1E0] = 4;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 9152)))(&STACK[0x1D1CD], &STACK[0x99FC], &STACK[0xB1E0], 0, 0);
  v4 = STACK[0x1630];
  STACK[0x1D4E0] = STACK[0x1630];
  LODWORD(STACK[0x1D4C0]) = (v0 - 1079089617) ^ v4;
  LODWORD(STACK[0x1D4C8]) = ((v0 + 1768220220) | 4) - v4;
  LODWORD(STACK[0x1D4D0]) = v4;
  LODWORD(STACK[0x1D4C4]) = v4 ^ 0x100D ^ (v0 + 1768220220);
  STACK[0x1D4D8] = v3 - v4;
  LODWORD(STACK[0x1D4CC]) = v0 + 1768220220 - v4;
  v5 = (*(v2 + 8 * (v0 ^ 0x2411u)))(v1 - 240);
  return (*(v2 + 8 * SLODWORD(STACK[0x1D4D4])))(v5);
}

uint64_t sub_1005C5470(int a1)
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xBE4C];
  LODWORD(STACK[0x9094]) = a1 + 70;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1005C54C4()
{
  v1 = STACK[0x51B8];
  LODWORD(STACK[0x9DA4]) = v0;
  return (*(STACK[0x57D8] + 8 * (v1 - 18357)))();
}

uint64_t sub_1005C5638()
{
  v1 = STACK[0x51B8] ^ 0x6657;
  v2 = STACK[0xDE9C];
  v3 = v0 ^ 0xF2A9;
  LODWORD(STACK[0x9898]) = v3;
  v4 = (((v2 ^ 0x445D9A7C) - 1146985084) ^ ((v2 ^ 0x448A409B) - 1149911195) ^ ((v2 ^ 0xD2CB5A73) + 758424973)) - 1965529407;
  v6 = v4 < 0xB8BBE62D || v3 + v1 - 1195661268 < v4;
  return (*(STACK[0x57D8] + 8 * ((7949 * v6) ^ LODWORD(STACK[0x1E34]))))();
}

uint64_t sub_1005C5724()
{
  LODWORD(STACK[0x989C]) = v2;
  v5 = (v1 + 1756274360) ^ v0;
  v6 = 1534937323 * ((0xB62DFC6C04733A5ELL - ((v4 - 240) | 0xB62DFC6C04733A5ELL) + STACK[0x23B0]) ^ 0x84AA8B513D623EE6);
  LODWORD(STACK[0x1D4C8]) = ((v1 + 1756274360) ^ 0x10B7) - v6;
  LODWORD(STACK[0x1D4D4]) = (v1 + 1756274360) ^ v6;
  STACK[0x1D4D8] = v3 + v6;
  LODWORD(STACK[0x1D4D0]) = v6;
  LODWORD(STACK[0x1D4CC]) = v6 + v1 + 1451493860;
  STACK[0x1D4C0] = v6;
  LODWORD(STACK[0x1D4E0]) = v5 + v6;
  v7 = v1 + 9182;
  v8 = STACK[0x57D8];
  v9 = (*(STACK[0x57D8] + 8 * v7))(v4 - 240);
  return (*(v8 + 8 * SLODWORD(STACK[0x1D4E4])))(v9);
}

uint64_t sub_1005C5A34()
{
  v0 = STACK[0x51B8];
  LODWORD(STACK[0x965C]) = LODWORD(STACK[0x608C]) << ((STACK[0x51B8] - 88) & 0xD1 ^ 0xD4);
  v1 = STACK[0x57D8];
  STACK[0x9078] = *(STACK[0x57D8] + 8 * (v0 - 22036));
  return (*(v1 + 8 * (v0 - 17146)))();
}

uint64_t sub_1005C5D60()
{
  v0 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x2198]));
  return (*(v0 + 8 * SLODWORD(STACK[0x218C])))();
}

uint64_t sub_1005C5F70()
{
  v7 = STACK[0x57B0] + v3;
  v8 = *v0 & 0xFFFFFFFFFFFFFFF8;
  v9 = *(*v6 + (((v7 & 0x6F328D98) + (v7 & 0x90CD7260 | 0x6F328D9C) - 1969226758) & v8));
  v10 = STACK[0x57C0] + v3;
  v11 = (v9 + __ROR8__(v7 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xF41651499F5E3C67;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0x153242EE3CF06A49;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ (((v4 + 4524) | 0x69u) + 0x2275D4C73834FB32);
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xE5AF1AB32EBD3CDDLL;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xC7DDC9F6CC45B721;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0xA82620A559D2DA78;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (((2 * (v23 + v22)) | 0x84DE04C6F1B75E68) - (v23 + v22) + 0x3D90FD9C872450CCLL) ^ 0x9DE2EE5DDB43A52FLL;
  v25 = __ROR8__(v24, 8) + (v24 ^ __ROR8__(v22, 61));
  v26 = *(*v6 + (((v10 & 0xFFFFFFF8) - 1831847764) & v8));
  v27 = (v26 + __ROR8__(v10 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xC2AF3EAA3FF1B8E4;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0x65F254DD188DB4FCLL;
  v30 = __ROR8__(v29, 8);
  v31 = v29 ^ __ROR8__(v28, 61);
  v32 = (v30 + v31) ^ 0x6FF046966119128DLL;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (((2 * ((v34 + v33) ^ 0x5AD25BF48B770B0ALL)) & 0x771E628053968688) - ((v34 + v33) ^ 0x5AD25BF48B770B0ALL) - 0x3B8F314029CB4345) ^ 0x3F10088E8A35A49ALL;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xEF042041F5E548ECLL;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0xD8C7B31FCA19D9DELL;
  v40 = __ROR8__(v39, 8);
  v41 = v39 ^ __ROR8__(v38, 61);
  v42 = (((2 * (v40 + v41)) & 0xD26B8E6B1D9479ACLL) - (v40 + v41) + 0x16CA38CA7135C329) ^ 0x429F39E4FB8400A6;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = __ROR8__(v42, 8);
  LOBYTE(STACK[0xFD2A]) = (((0x27D40E5EE6B8635ELL - ((v44 + v43) | 0x27D40E5EE6B8635ELL) + ((v44 + v43) | 0xD82BF1A119479CA1)) ^ 0xB764911D1745C241) >> (8 * (v10 & 7u))) ^ ((v25 ^ 0xC1C3C8D2A4C54828) >> (8 * (v7 & 7u))) ^ *v7;
  v45 = (*(*v2 + 32 * *(((v10 - *v1) & 0xFFFFFFFFFFFFFFF0) + *v5 + 8) + 16))();
  return (*(STACK[0x57D8] + 8 * ((29852 * (v3 == 47)) ^ v4)))(v45);
}

uint64_t sub_1005C6384()
{
  LODWORD(STACK[0x1D4C0]) = v0 + 410706167 * ((1820620200 - ((v2 - 240) | 0x6C8475A8) + ((v2 - 240) | 0x937B8A57)) ^ 0x8A4A601) - 1907250167;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x71AE0824)))(v2 - 240);
  *(*(STACK[0x4D10] + 8) + v1) = 0xD38CBDD3ACAFF84ALL;
  return (*(v3 + 8 * (v0 ^ 0x71AE5756 ^ (2728 * (v0 != ((v0 - 1602713113) & 0xEDD959FF) - 1840307654)))))(v4);
}

uint64_t sub_1005C653C()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  return (*(v1 + 8 * (v0 - 8436)))(v2);
}

uint64_t sub_1005C668C()
{
  v4 = STACK[0x7EE8];
  v5 = STACK[0x5CA8];
  v6 = v2 ^ 0xD506408B | ((v2 - 1432426075) << 32);
  v7 = v2 | (((v2 & 0xDC020841) + (v2 ^ 0xA39A64BB) - ((((v1 - v6) | (v6 - v1)) & 0x8000000000000000) == 0)) << 32);
  LODWORD(v6) = 551690071 * ((((v3 - 240) | 0x3254C709) - (v3 - 240) + ((v3 - 240) & 0xCDAB38F0)) ^ 0x7CB9945E);
  STACK[0x1D4F8] = STACK[0x65F8];
  STACK[0x1D4E0] = v4;
  LODWORD(STACK[0x1D4C4]) = v6 ^ 0x1AC2C15A;
  LODWORD(STACK[0x1D500]) = 1586162030 - v6;
  LODWORD(STACK[0x1D504]) = v6 ^ 0x6235EC3E;
  STACK[0x1D4E8] = v5;
  STACK[0x1D4D8] = STACK[0x4E98];
  LODWORD(STACK[0x1D4C8]) = (v2 ^ 0x4D2C38CB ^ (((v0 - v7) | (v7 - v0)) >> ((v2 + 54) & 0x2B ^ 0x3E))) + v6;
  STACK[0x1D4D0] = STACK[0x53F0];
  LODWORD(STACK[0x1D4F0]) = v2 - v6 - 318356400;
  v8 = STACK[0x57D8];
  v9 = (*(STACK[0x57D8] + 8 * (v2 ^ 0x1E5ABC2)))(v3 - 240);
  return (*(v8 + 8 * (v2 ^ 0x1E5C593)))(v9);
}

uint64_t sub_1005C6840@<X0>(int a1@<W8>)
{
  STACK[0x7BC0] = v1;
  LODWORD(STACK[0x67A0]) = STACK[0x9FDC];
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_1005C68D0()
{
  LODWORD(STACK[0x5550]) = LODWORD(STACK[0x5730]) ^ 0xDA9CF010;
  LODWORD(STACK[0x56D0]) = LODWORD(STACK[0x5750]) ^ 0x8E714A1A;
  v1 = *(STACK[0x5790] + 9);
  v2 = v1 + 35;
  v3 = ((v1 - 93) & 0xE2 | 0x11) ^ (v1 + 35) & 0xE6;
  v4 = *(STACK[0x5790] + ((v2 ^ (2 * ((v2 ^ 2) & (2 * ((v2 ^ 0x62) & (2 * v3) ^ v3)) ^ v3))) & 0xF ^ 4)) + 93;
  v5 = *(STACK[0x5790] + (*(STACK[0x5790] + ((v4 ^ (2 * (v4 & (2 * (v4 & (2 * (v4 & 0x8E ^ 0xAF)) ^ v4 & 0x8E ^ 0xAF)) ^ v4 & 0x8E ^ 0xAF))) & 0xF ^ 0xELL)) & 0xF ^ 8)) + 118;
  v6 = (v5 ^ (2 * ((v5 ^ 6) & (2 * ((v5 ^ 0x16) & (2 * (v5 & 0xAC ^ 0x8F)) ^ v5 & 0xAC ^ 0x8F)) ^ v5 & 0xAC ^ 0x8F))) & 0xF;
  return (*(STACK[0x57D8] + 8 * v0))((((v6 ^ 0xAB96EB4E) + 1416172718) ^ v6 ^ 0x1C ^ ((v6 ^ 0xB0DD93BE) + 1327656030)) - 363852539, 0xFFFFFFFFLL, (v0 - 1246103339));
}

uint64_t sub_1005C6BCC()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x51B8] + 1350;
  v2 = STACK[0xE830];
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9211)))();
  v5 = *(v3 + 8 * ((60 * ((*(v3 + 8 * (v0 + 9309)))(STACK[0xE840], v2, 41, v4) != (v0 ^ 0x56))) ^ v1));
  return v5();
}

uint64_t sub_1005C6D20@<X0>(int a1@<W8>)
{
  v1 = (a1 - 1407569606) & 0x53E5BBF3;
  LODWORD(STACK[0xFFEC]) = LODWORD(STACK[0x9D38]) - ((v1 ^ 0x65E9AAF4) & (2 * LODWORD(STACK[0x9D38]))) + 854902994;
  v2 = *(STACK[0x57D8] + 8 * a1);
  LODWORD(STACK[0xFC7C]) = v1;
  STACK[0xFC80] = 0;
  return v2();
}

uint64_t sub_1005C6DAC@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xDC1C]) = v1;
  LODWORD(STACK[0xDC18]) = a1;
  v3 = (((LODWORD(STACK[0xBFE4]) ^ 0x5881A857) + ((10 * (v2 ^ 0x5D3D)) ^ 0xA77E6187)) ^ ((LODWORD(STACK[0xBFE4]) ^ 0x8F3F0278) + 1891696008) ^ ((v2 ^ 0x5D3D) - 94515238 + (LODWORD(STACK[0xBFE4]) ^ 0x5A22ABB))) + 133453398;
  v4 = v3 < 0x35D7D5C2;
  v5 = v1 + 903337410 < v3;
  if (v1 > 0xCA282A3D != v4)
  {
    v5 = v4;
  }

  if (a1 != -143113071)
  {
    v5 = 0;
  }

  return (*(STACK[0x57D8] + 8 * ((8869 * v5) ^ (v2 - 14664))))();
}

uint64_t sub_1005C6EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = STACK[0x37C0];
  v5 = STACK[0x37C0] + 24169;
  v6 = STACK[0x57D8];
  STACK[0x65D8] = *(STACK[0x57D8] + 8 * STACK[0x37C0]);
  return (*(v6 + 8 * ((v5 ^ 0x69CF) + v4)))(a1, a2, a3, a4, 4294945851);
}

uint64_t sub_1005C6F78()
{
  v2 = STACK[0x57C0];
  *(v2 + 216) = 0;
  *(v2 + 656) = 0;
  v4 = *(STACK[0x90E8] + 40);
  v3 = STACK[0x90E8] + 40;
  v5 = *(STACK[0x90E8] + 16);
  STACK[0x8EF8] = v3;
  STACK[0x5810] = v4;
  v6 = *(STACK[0x5BE8] - 0x1B2DFF50870950CBLL);
  LODWORD(STACK[0xB5C8]) = v6;
  STACK[0x8670] = v0;
  STACK[0xCAF0] = *(v3 + 80);
  v7 = STACK[0x7ED8];
  v8 = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x6888] = v8;
  STACK[0x7358] = (v8 + 48);
  STACK[0x7ED8] = v7 + 640;
  STACK[0xC660] = 0xD38CBDD3ACAFF84ALL;
  return (*(STACK[0x57D8] + 8 * ((24632 * ((((v6 ^ 0xF291FE40) + 225313216) ^ ((v6 ^ 0x92DF3F35) + ((3 * (v1 ^ 0x995)) ^ 0x6D20989D)) ^ ((v6 ^ 0xB25241E1) + 1303232031)) + ((173 * (v1 ^ 0x14EE)) ^ 0xD21C8681) < 0xC9)) ^ v1)))(v5);
}

uint64_t sub_1005C720C()
{
  v2 = v0 - 7221;
  v3 = ((*v1 == 0) ^ (v0 + 48 + v0 - 52 + 1)) & 1;
  return (*(STACK[0x57D8] + 8 * ((v3 | (2 * v3)) ^ v2)))();
}

uint64_t sub_1005C73D8()
{
  v2 = STACK[0x51B8];
  v3 = STACK[0x51B8] - 239560095;
  v4 = (((v0 ^ 0xA40EFFC6CB110B72) - 0x1A68ADCBD6124B34) ^ ((v0 ^ 0x1D9D296CC1976C07) + 0x5C04849E236BD3BFLL) ^ ((v0 ^ 0xD4793974BB2ADF79) - 0x6A1F6B79A6299F3FLL)) - 0x2C73422C45952996 < 0xDBADE20;
  v5 = (((*(STACK[0xC7C8] + 152) ^ 0x1ED7EAF07D99456CLL) - 0x1ED7EAF07D99456CLL) ^ ((*(STACK[0xC7C8] + 152) ^ 0x300BAD585143B8E8) - 0x300BAD585143B8E8) ^ ((*(STACK[0xC7C8] + 152) ^ 0x6425907DFA516CFEuLL) - 0x6425907DFA516CFELL)) + 0x4AF9D7D5E4466F9ALL < 0xDBADE20;
  v6 = 1534937323 * ((-2 - (((v1 - 240) ^ 0xA110018E08002C20 | 0x44A97200E37D9192) + ((v1 - 240) ^ 0x4202000E2388002 | 0xBB568DFF1C826E6DLL))) ^ 0x97B756B3D329A89ALL);
  LODWORD(STACK[0x1D4C8]) = (v3 ^ 0xEA4) - v6;
  LODWORD(STACK[0x1D4D4]) = v3 ^ v6;
  LODWORD(STACK[0x1D4CC]) = v6 + 1451493860 + v2;
  STACK[0x1D4D8] = (v4 ^ v5) + v6;
  STACK[0x1D4C0] = v6;
  LODWORD(STACK[0x1D4E0]) = (v3 ^ 0x55) + v6;
  LODWORD(STACK[0x1D4D0]) = v6;
  v7 = STACK[0x57D8];
  v8 = (*(STACK[0x57D8] + 8 * (v2 ^ 0x2462)))(v1 - 240);
  return (*(v7 + 8 * SLODWORD(STACK[0x1D4E4])))(v8);
}

uint64_t sub_1005C763C()
{
  v1 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 + v0 + 4181 - 295)))();
}

uint64_t sub_1005C7670@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xDA88]) = v2;
  LODWORD(STACK[0xDA84]) = a1;
  LODWORD(STACK[0xDA80]) = v3;
  v5 = (a1 + 10) <= LODWORD(STACK[0xAEB4]) && v3 == -143113071;
  return (*(STACK[0x57D8] + 8 * (((((v1 - 1) ^ v5) & 1) * (v1 - 22508)) ^ (v1 - 11219))))();
}

uint64_t sub_1005C7848@<X0>(int a1@<W8>)
{
  *(v3 - 0x2369327399A66D95) = 0;
  *(v3 - 0x2369327399A66D91) = 0;
  *(v3 - 0x2369327399A66D8DLL) = 0;
  *(v3 - 0x2369327399A66D7DLL) = 0;
  *(v3 - 0x2369327399A66D75) = 0xD38CBDD3ACAFF84ALL;
  *(v3 - 0x2369327399A66D6DLL) = -1;
  v5 = 1534937323 * ((((v4 - 240) | 0xA1730555716A5D03) - ((v4 - 240) & 0xA1730555716A5D03)) ^ 0x6C0B8D97B784A644);
  *(v1 + 608) = v5;
  *(v1 + 600) = a1 + 1600353954 - v5 + 4102;
  *(v1 + 624) = v5 + a1 + 1600353954 + 524;
  *(v1 + 592) = v5 ^ 0x4F8BF12A49EA04F8;
  *(v1 + 612) = (a1 + 1600353954) ^ v5;
  *(v1 + 604) = v5 + a1 + 1451493860;
  *(v1 + 616) = v2 + 0x37088B1B61D5C0E2 + v5;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (a1 + 9182)))(v4 - 240);
  return (*(v6 + 8 * SLODWORD(STACK[0x1D4E4])))(v7);
}

uint64_t sub_1005C79C8@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  *a2 = ((a1 ^ 0x17) - 11 + (v4 >> (-33 * (a1 ^ 0x17u) - 71)) - ((2 * (v4 >> (-33 * (a1 ^ 0x17u) - 71))) & 0xBC) + 8) ^ 0x5E;
  a2[1] = (127 - BYTE6(v4)) ^ 0x7F;
  a2[2] = BYTE5(v4);
  a2[3] = BYTE4(v4);
  a2[4] = BYTE3(v4);
  a2[5] = BYTE2(v4);
  a2[6] = BYTE1(v4);
  a2[7] = v4;
  a2[8] = HIBYTE(v3);
  a2[9] = BYTE2(v3);
  a2[10] = BYTE1(v3);
  a2[11] = v3;
  return (*(STACK[0x57D8] + 8 * ((v2 == 0) | (8 * (v2 == 0)) | a1)))();
}

uint64_t sub_1005C7AC0@<X0>(uint64_t a1@<X8>)
{
  v5 = a1 + v1;
  v6 = STACK[0x51E8];
  v7 = STACK[0x51F0];
  v8 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & (((v2 ^ 0xFFFFEED3) & v5) - 103642729)) & 0xFFFFFFFFFFFFFFF8));
  v9 = __ROR8__((v2 ^ 0xFFFFFFFFFFFFEED3) & v5, 8);
  v10 = (((((v2 + 12569) | 0x410) - 0x1474892E7A41994) | (2 * (v9 + v8))) - (v9 + v8) - 0x7F5C5BB68C2E1660) ^ 0x8B4A0AFF13702A07;
  v11 = __ROR8__(v10, 8);
  v12 = v10 ^ __ROR8__(v8, 61);
  v13 = (v11 + v12) ^ v4;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0x2275D4C73835399BLL;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = __ROR8__(v15, 8);
  v18 = __ROR8__((((2 * (v17 + v16)) | 0x61A0BC694392800CLL) - (v17 + v16) + 0x4F2FA1CB5E36BFFALL) ^ 0x557F44878F747CDBLL, 8);
  v19 = (((2 * (v17 + v16)) | 0x61A0BC694392800CLL) - (v17 + v16) + 0x4F2FA1CB5E36BFFALL) ^ 0x557F44878F747CDBLL ^ __ROR8__(v16, 61);
  v20 = (v18 + v19) ^ 0xC7DDC9F6CC45B721;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (0x953AB2054D361F74 - ((v22 + v21) | 0x953AB2054D361F74) + ((v22 + v21) | 0x6AC54DFAB2C9E08BLL)) ^ 0xC2E36D5FEB1B3AF3;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0x5F8DEC3EA3980A1BLL;
  *v5 = (((__ROR8__(v25, 8) + (v25 ^ __ROR8__(v24, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * (v5 & 7u))) ^ 0x55;
  v26 = a1 + (((v3 ^ 0x2439BB4D) - 607763277) ^ ((v3 ^ 0x9B9581A1) + 1684700767) ^ ((v3 ^ 0x6DB0BA78) - 1840298616)) - 769884005;
  v27 = *(*v7 + (((-570963226 - 1454092351 * (((2005385281 * (v26 & 0xFFFFFFF8)) ^ 0x819D50F) - ((252674178 * (v26 & 0xFFFFFFF8)) & 0x1033AA10 ^ 0x1033AA1E))) & *v6) & 0xFFFFFFFFFFFFFFF8));
  v28 = __ROR8__(v26 & 0xFFFFFFFFFFFFFFF8, 8);
  v29 = (0x4A448B873D25316CLL - ((v27 + v28) | 0x4A448B873D25316CLL) + ((v27 + v28) | 0xB5BB7478C2DACE93)) ^ 0x41AD25315D84F2F4;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ v4;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (((2 * (v33 + v32)) & 0xE0BDFA08804C312) - (v33 + v32) + 0x78FA102FBBFD9E76) ^ 0x5A8FC4E883C8A7EDLL;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0xE5AF1AB32EBD3CDDLL;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0xC7DDC9F6CC45B721;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = __ROR8__((0xC1E1775C52233F27 - ((v40 + v39) | 0xC1E1775C52233F27) + ((v40 + v39) | 0x3E1E88A3ADDCC0D8)) ^ 0x9638A806F40E1AA0, 8);
  v42 = (0xC1E1775C52233F27 - ((v40 + v39) | 0xC1E1775C52233F27) + ((v40 + v39) | 0x3E1E88A3ADDCC0D8)) ^ 0x9638A806F40E1AA0 ^ __ROR8__(v39, 61);
  v43 = (((2 * (v41 + v42)) & 0xD1C8AD60E95D0480) - (v41 + v42) - 0x68E456B074AE8241) ^ 0xC896457128C977A4;
  *v26 = LOBYTE(STACK[0xB2FC]) ^ 0x94 ^ (((__ROR8__(v43, 8) + (v43 ^ __ROR8__(v42, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * (v26 & 7u)));
  return (*(STACK[0x57D8] + 8 * ((26 * (STACK[0xCED0] > STACK[0x5E80] + (((v3 ^ 0x5F8F6E39) - 1603235385) ^ ((v3 ^ 0xED2AC68B) + 315963765) ^ ((v3 ^ 0x60B92826) - 1622747174)) - 769884004)) ^ v2)))();
}

uint64_t sub_1005C7FA8()
{
  v3 = STACK[0x2430];
  *(v1 + 616) = STACK[0xC518] + STACK[0x2430];
  *(v1 + 600) = v0 + 1770228322 - v3 + 3192;
  *(v1 + 624) = v3 + v0 + 1770228322 - 22;
  *(v1 + 592) = v3;
  *(v1 + 604) = v3 + 1451493860 + v0;
  *(v1 + 608) = v3;
  *(v1 + 612) = (v0 + 1770228322) ^ v3;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v0 + 9182)))(v2 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4E4])))(v5);
}

uint64_t sub_1005C8104()
{
  v1 = STACK[0x6A08];
  v2 = STACK[0x937C];
  STACK[0xB420] = STACK[0x6A58];
  LODWORD(STACK[0x8C54]) = v2;
  STACK[0x8EA0] = v1;
  LODWORD(STACK[0xBC38]) = -746967312;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1005C8208@<X0>(uint64_t a1@<X0>, char a2@<W2>, int a3@<W3>, char a4@<W4>, int a5@<W5>, char a6@<W7>, int a7@<W8>)
{
  v14 = ((((v10 * v7) ^ v12) - ((((v10 * v7) ^ v12) << ((3 * (v13 ^ a4)) ^ a2)) & a6) - 79) ^ v11) ^ a3;
  *(a1 + 4 * (v10 * v7)) = v9 ^ *(*(&off_101353600 + v8) + v14 - ((2 * v14) & 0x54u) + 41);
  return (*(STACK[0x57D8] + 8 * (((v10 + 1 == a7 + 256) * a5) ^ v13)))();
}

uint64_t sub_1005C8408@<X0>(int a1@<W8>)
{
  v4 = a1 - 1043;
  v5 = STACK[0x3500];
  STACK[0x1D4C0] = v1 ^ STACK[0x3500];
  LODWORD(STACK[0x1D4D0]) = v5;
  STACK[0x1D4D8] = v5 + v2;
  LODWORD(STACK[0x1D4E0]) = v5 + v4 + 2026924514 - 46;
  LODWORD(STACK[0x1D4C8]) = v4 + 2026924514 - v5 + 2702;
  LODWORD(STACK[0x1D4CC]) = v5 + v4 + 1451493860;
  LODWORD(STACK[0x1D4D4]) = (v4 + 2026924514) ^ v5;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v4 ^ 0x2462)))(v3 - 240);
  return (*(v6 + 8 * SLODWORD(STACK[0x1D4E4])))(v7);
}

uint64_t sub_1005C84C4()
{
  v0 = STACK[0x51B8] ^ 0x5A91;
  v1 = STACK[0x57D8];
  v2 = STACK[0x227C];
  STACK[0x8660] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x227C]));
  return (*(v1 + 8 * (v0 + v2 + 1153)))();
}

uint64_t sub_1005C8524@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v2 + 8) + 4 * (v1 - 1);
  v6 = *(a1 + (v4 & ((v5 & 0xFFFFFFF8 ^ (((v3 - 2018485102) & 0x784FF73D) + 172984420)) - 306462002 + ((2 * (v5 & 0xFFFFFFF8)) & 0x149FF330))));
  v7 = __ROR8__(v5 & 0xFFFFFFFFFFFFFFF8, 8);
  v8 = (v7 + v6 - ((2 * (v7 + v6)) & 0x6510F0C67D0A4FE6) - 0x4D77879CC17AD80DLL) ^ 0x2DF0C58EF2DD24FLL;
  v9 = v8 ^ __ROR8__(v6, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0x8A47714CF38C4783;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = __ROR8__(v10, 8);
  v13 = (((v12 + v11) & 0x9A368826FBD5FA14 ^ 0x88048022DAD46814) + ((v12 + v11) ^ 0x573B2814210197C8) - (((v12 + v11) ^ 0x573B2814210197C8) & 0x9A368826FBD5FA14)) ^ 0x6F664448C0BD42ACLL;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (0x6D7AE0285FF135D5 - ((v15 + v14) | 0x6D7AE0285FF135D5) + ((v15 + v14) | 0x92851FD7A00ECA2ALL)) ^ 0x8E8608EF44A88B2ELL;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = __ROR8__(v16, 8);
  v19 = __ROR8__((v18 + v17 - ((2 * (v18 + v17)) & 0x7590A59873915452) - 0x4537AD33C63755D7) ^ 0xC7C29866D0249234, 8);
  v20 = (v18 + v17 - ((2 * (v18 + v17)) & 0x7590A59873915452) - 0x4537AD33C63755D7) ^ 0xC7C29866D0249234 ^ __ROR8__(v17, 61);
  v21 = (v19 + v20 - ((2 * (v19 + v20)) & 0x6AFA950C2F505CELL) - 0x7CA82B579E857D19) ^ 0xD1A65CE179A25445;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (v23 + v22 - ((2 * (v23 + v22)) & 0x7CE0B7A15408239ALL) + 0x3E705BD0AA0411CDLL) ^ 0x355029BE5BF22B62;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = __ROR8__(v24, 8);
  LODWORD(v5) = (((((2 * (v26 + v25)) | 0xE287AFB17DFBEDC2) - (v26 + v25) - 0x7143D7D8BEFDF6E1) ^ 0xE0FD5A30296148A1) >> (8 * (v5 & 7u))) ^ *v5;
  return (*(STACK[0x57D8] + 8 * ((19 * ((((v5 ^ 0x16A47210) - 1043220077) ^ ((v5 ^ 0x21C60804) - 155991161) ^ ((v5 ^ 0x37627A14) - 535318121)) == -680146045)) ^ v3)))();
}

uint64_t sub_1005C8868()
{
  v1 = *(STACK[0xC3A0] + 24);
  STACK[0x6980] = v1;
  return (*(STACK[0x57D8] + 8 * (((v1 == 0) * ((v0 - 20696) ^ 0x1E1)) ^ v0)))();
}

uint64_t sub_1005C88C4@<X0>(int a1@<W3>, int a2@<W8>)
{
  v12 = (((v5 ^ 0x7B5D48C7) - 2069711047) ^ ((v5 ^ 0xD73E895E) + 683767458) ^ ((v5 ^ 0x7E7F51DF ^ ((v4 - 7803) | 0x1082)) - 2122268941)) + 427408619;
  v13 = ((2 * (v12 ^ 0x5108C3ED)) ^ 0xD354008A) & (v12 ^ 0x5108C3ED) ^ (2 * (v12 ^ 0x5108C3ED)) & 0xE9AA0044;
  v14 = 4 * (v13 ^ 0x28AA0045);
  v15 = (v12 ^ 0x3008C3AD) & (2 * (v12 & 0xB8A2C3A8)) ^ v12 & 0xB8A2C3A8;
  v16 = (v14 ^ 0xA6A80114) & (v13 ^ 0x28AA0045);
  v17 = (v13 ^ 0xC9200004) & (4 * v15) ^ v15;
  v18 = v16 ^ v14 & 0xE9AA0044;
  v19 = v17 ^ 0xE9AA0045 ^ (v18 ^ 0xA0A80001) & (16 * v17);
  v20 = (16 * (v18 ^ 0x49020041)) & 0xE9AA0040 ^ 0x610A0005 ^ ((16 * (v18 ^ 0x49020041)) ^ 0x9AA00450) & (v18 ^ 0x49020041);
  v21 = (v19 << 8) & 0xE9AA0000 ^ v19 ^ ((v19 << 8) ^ 0xAA004500) & v20;
  v22 = v12 ^ (2 * ((v21 << 16) & 0x69AA0000 ^ v21 ^ ((v21 << 16) ^ 0x450000) & ((v20 << 8) & 0xE9AA0000 ^ 0x41AA0000 ^ ((v20 << 8) ^ 0xAA000000) & v20)));
  v23 = v2 + (v22 ^ a1);
  v24 = *(*v10 + ((*v11 & ((v23 & 0xFFFFFFF8 ^ 0x4005C175) + 976648101 + ((2 * (v23 & 0xFFFFFFF8)) & 0x800B82E0))) & 0xFFFFFFFFFFFFFFF8));
  v25 = (__ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8) + v24) ^ v8;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ v7;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ v6;
  v30 = __ROR8__(v29, 8);
  v31 = v29 ^ __ROR8__(v28, 61);
  v32 = (v30 + v31 - ((2 * (v30 + v31)) & 0x3E722453D44E7EB0) + 0x1F391229EA273F58) ^ 0xFE98EF723B72C622;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = __ROR8__((v34 + v33 - ((2 * (v34 + v33)) & 0xCBFBEFCC5151B9B8) - 0x1A020819D7572324) ^ 0x3F9DBCEA2B0A6345, 8);
  v36 = (v34 + v33 - ((2 * (v34 + v33)) & 0xCBFBEFCC5151B9B8) - 0x1A020819D7572324) ^ 0x3F9DBCEA2B0A6345 ^ __ROR8__(v33, 61);
  v37 = (((2 * (v35 + v36)) | 0xB49E45746B8B556) - (v35 + v36) - 0x5A4F22BA35C5AABLL) ^ 0xFF9110E668626B6CLL;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ v9;
  *(v3 + a2 + 1515244539 + (((v22 ^ 0x7263F089) + 1685474497) ^ ((v22 ^ 0x5B2EBB9) + 329734129) ^ ((v22 ^ 0x4C27D812) + 1513251932))) = *v23 ^ (((__ROR8__(v39, 8) + (v39 ^ __ROR8__(v38, 61))) ^ 0xF4730B31AE70757BLL) >> (8 * (v23 & 7u))) ^ 0xF;
  return (*(STACK[0x57D8] + 8 * ((47 * (v22 != a1)) ^ v4)))();
}

uint64_t sub_1005C94E0()
{
  v1 = STACK[0x8278];
  STACK[0xE698] = STACK[0x8278];
  v2 = LODWORD(STACK[0x7944]) + *(v1 - 0x1883660EE814440ALL);
  LODWORD(STACK[0xE6A0]) = v2 - 2101965948;
  v3 = *(v1 - 0x1883660EE814440ELL) - 1108855765;
  v4 = v2 + ((v0 + 8366) ^ 0x409EE7F9);
  v5 = v4 < 0x3B31A8A7;
  v6 = v3 < v4;
  if (v5 != v3 < 0x3B31A8A7)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = (STACK[0x7098] == 0) | v7;
  if (v8)
  {
    v9 = -143155721;
  }

  else
  {
    v9 = -143113071;
  }

  LODWORD(STACK[0xE6A4]) = v9;
  return (*(STACK[0x57D8] + 8 * ((((v8 & 1) == 0) * (9 * (v0 ^ 0x3749) - 1950)) ^ v0)))();
}

uint64_t sub_1005C95E8()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 16636)))(v1 ^ 0xD21C8094);
  STACK[0x6DB8] = v3;
  return (*(v2 + 8 * (((v3 == 0) * ((v0 + 1402074297) & 0xAC6DD4FD ^ 0x438)) ^ v0)))();
}

uint64_t sub_1005C96FC@<X0>(uint64_t a1@<X1>, int a2@<W2>, int a3@<W3>, int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W7>, int a8@<W8>)
{
  v20 = *(*(a1 + 8 * (v16 ^ v17)) + 4 * ((v9 ^ (v13 * v8)) & ((v11 & (v15 + 1187)) + a3) ^ v18));
  *(v10 + 4 * (v13 * v8)) = v12 ^ v20 ^ v14 ^ ((a4 ^ (4 * v20)) + a5);
  return (*(STACK[0x57D8] + 8 * ((((v13 ^ a6) + (a2 & (2 * v13)) + a7 >= a8 + 256) * v19) ^ v16)))();
}

uint64_t sub_1005C97D0()
{
  STACK[0x84E8] = 4;
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0xFF0])))(&STACK[0x1D1CD], &STACK[0x93EC], &STACK[0x84E8], 0, 0);
  v3 = STACK[0x1018];
  v4 = STACK[0x51B8] - 1079089617;
  v5 = 551690071 * ((v0 - 240) ^ 0x719D52CE4EED5357);
  LODWORD(STACK[0x1D4C4]) = LODWORD(STACK[0x1014]) ^ v5;
  STACK[0x1D4E0] = v5;
  STACK[0x1D4D8] = v2 - v5;
  LODWORD(STACK[0x1D4C0]) = v4 ^ v5;
  LODWORD(STACK[0x1D4CC]) = v3 - v5;
  LODWORD(STACK[0x1D4D0]) = v5;
  LODWORD(STACK[0x1D4C8]) = (v3 ^ 6) - v5;
  v6 = (*(v1 + 8 * SLODWORD(STACK[0xFF8])))(v0 - 240);
  return (*(v1 + 8 * SLODWORD(STACK[0x1D4D4])))(v6);
}

uint64_t sub_1005C98C0()
{
  STACK[0x57C0] = 0;
  v1 = ((((LODWORD(STACK[0x58E8]) ^ 0xAED78688) + 1361607032) ^ ((LODWORD(STACK[0x58E8]) ^ 0x7B851C4C) - 2072321100) ^ ((LODWORD(STACK[0x58E8]) ^ 0x74E1A50) + ((40 * (v0 ^ 0x134C097B)) ^ 0xF8B1A818))) - 769883981) & 0xFFFFFFF0;
  v2 = STACK[0xA928];
  STACK[0x8590] = 0x1883660EE8144416;
  STACK[0x7810] = v2;
  LODWORD(STACK[0xC0DC]) = -2013569084;
  STACK[0x8000] = &STACK[0x8590];
  STACK[0x5FC0] = 0;
  LODWORD(STACK[0xA12C]) = (((v1 ^ 0x1B65AA9A) + 738520868) ^ ((v1 ^ 0x1CE68B1B) + 730320547) ^ ((v1 ^ 0x7832181) + 820143161)) + 1172844226;
  return (*(STACK[0x57D8] + 8 * ((6443 * (v0 < 0x8D80257A)) ^ (v0 - 1397489696))))();
}

uint64_t sub_1005C9ADC()
{
  v2 = STACK[0x51B8];
  v3 = STACK[0x51B8] - 22613;
  v4 = STACK[0x51B8] - 1079089617;
  v5 = STACK[0x1BB8];
  LODWORD(STACK[0x1D4C4]) = (v3 | 0xCCDC708C) ^ STACK[0x1BB8];
  STACK[0x1D4D8] = v0 - v5;
  LODWORD(STACK[0x1D4D0]) = v5;
  LODWORD(STACK[0x1D4CC]) = (v3 ^ 0xCCDC6025) - v5;
  LODWORD(STACK[0x1D4C0]) = v4 ^ v5;
  LODWORD(STACK[0x1D4C8]) = (v3 ^ 0xCCDC60B7) - v5;
  STACK[0x1D4E0] = v5 + 4151854225u;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v2 ^ 0x2411)))(v1 - 240);
  return (*(v6 + 8 * SLODWORD(STACK[0x1D4D4])))(v7);
}

uint64_t sub_1005C9B9C()
{
  LODWORD(STACK[0x1D4C0]) = (v0 + 1717140200) ^ (1964904101 * ((((2 * (v1 - 240)) | 0x5530625A) - (v1 - 240) - 714617133) ^ 0xD0BADAA9));
  STACK[0x1D4C8] = 0;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 765)))(v1 - 240);
  return (*(v2 + 8 * (((*STACK[0x4658] != 0) * (((v0 - 8440) | 6) ^ 0x584C)) ^ v0)))(v3);
}

uint64_t sub_1005C9C84()
{
  v1 = STACK[0x6328];
  STACK[0x8A18] = STACK[0x5FB0];
  LODWORD(STACK[0x879C]) = STACK[0x82FC];
  v2 = STACK[0xB6B0];
  STACK[0x8848] = STACK[0xB6B0];
  v3 = STACK[0x8628];
  LODWORD(STACK[0x6BCC]) = STACK[0x8628];
  v4 = STACK[0x7ED8];
  v5 = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7348] = v5;
  STACK[0x7C58] = (v5 + 80);
  STACK[0xA8A0] = (v5 + 96);
  STACK[0xB918] = (v5 + 112);
  STACK[0x7ED8] = v4 + 144;
  STACK[0xA540] = v1;
  STACK[0xB2A8] = 0;
  STACK[0xB850] = 0x4AF9D7D5D68B917ALL;
  if (v2)
  {
    v6 = v3 == ((((v0 + 290234339) & 0xEEB378FE) + 353) ^ 0xD21CD923);
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  return (*(STACK[0x57D8] + 8 * ((173 * v7) ^ v0)))();
}

uint64_t sub_1005C9E48()
{
  v0 = STACK[0x51B8] - 4933;
  v1 = STACK[0x51B8] - 22021;
  v2 = STACK[0x57D8];
  STACK[0xBCF8] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v0 ^ v1 ^ 0x5A8B)))();
}

uint64_t sub_1005C9FD4@<X0>(int a1@<W8>)
{
  STACK[0xC8C0] = v2;
  LODWORD(STACK[0x9F6C]) = a1;
  STACK[0xA398] = &STACK[0x87B6];
  LODWORD(STACK[0xA7C0]) = 255471788;
  return (*(STACK[0x57D8] + 8 * v1))(88);
}

uint64_t sub_1005CA08C()
{
  v1 = STACK[0x51B8];
  v2 = LOBYTE(STACK[0xDB6B]);
  STACK[0x5DA0] = v0;
  return (*(STACK[0x57D8] + 8 * ((v2 * (v1 ^ 0x3B8)) ^ (v1 - 20426))))();
}

uint64_t sub_1005CA1A0()
{
  v1 = STACK[0x978C];
  v2 = (v1 ^ 0x1AB4E357) & (2 * (v1 & 0x82B68B84)) ^ v1 & 0x82B68B84;
  v3 = ((2 * (v1 ^ 0x1AB4E65F)) ^ 0x3004DBB6) & (v1 ^ 0x1AB4E65F) ^ (2 * (v1 ^ 0x1AB4E65F)) & ((v0 ^ 0x7517) - 1744676025);
  v4 = v3 ^ 0x88022449;
  v5 = (v3 ^ 0x90004858) & (4 * v2) ^ v2;
  v6 = ((4 * v4) ^ 0x6009B76C) & v4 ^ (4 * v4) & 0x98026DD8;
  v7 = (v6 ^ 0x2550) & (16 * v5) ^ v5;
  v8 = ((16 * (v6 ^ 0x98024893)) ^ 0x8026DDB0) & (v6 ^ 0x98024893) ^ (16 * (v6 ^ 0x98024893)) & 0x98026DD0;
  v9 = v7 ^ 0x98026DDB ^ (v8 ^ 0x80024D4B) & (v7 << 8);
  v10 = STACK[0x57D8];
  v11 = *(v10 + 8 * ((4012 * ((*(STACK[0x57D8] + 8 * (v0 ^ 0x1BBA)))(LODWORD(STACK[0x978C]) ^ (2 * ((v9 << 16) & 0x18020000 ^ v9 ^ ((v9 << 16) ^ 0x6DDB0000) & (((v8 ^ 0x1800204B) << 8) & 0x18020000 ^ 0x18020000 ^ (((v8 ^ 0x1800204B) << 8) ^ 0x26D0000) & (v8 ^ 0x1800204B)))) ^ 0xA2B65032) != 0)) ^ v0));
  return v11();
}

uint64_t sub_1005CA3C4()
{
  v1 = STACK[0x57D8];
  STACK[0x7CA8] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 - 20716 + ((v0 - 1432062519) & 0x555BD87F))))();
}

uint64_t sub_1005CA464(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v8 = a7 > v7 - 954258824;
  if (a7 < a2 != (v7 - 954258824) < 0x5BFA197)
  {
    v8 = a7 < a2;
  }

  return (*(STACK[0x57D8] + 8 * ((205 * !v8) ^ a3)))();
}

uint64_t sub_1005CAEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x8670] - 0x30BDFED8F32E6595;
  v9 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v7);
  return (*(v9 + 8 * (v7 ^ 0x16D0)))(v8, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1005CB454@<X0>(uint64_t a1@<X1>, char a2@<W6>, int a3@<W7>, uint64_t a4@<X8>)
{
  *(a4 + a1) = a2 ^ v5;
  if (v4)
  {
    v6 = (a2 & 1) == (a3 + 25);
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  return (*(STACK[0x57D8] + 8 * ((v7 * (a3 - 10238)) ^ a3)))();
}

uint64_t sub_1005CB4A0()
{
  STACK[0xD0F8] = (v1 + 4);
  *v1 = 0;
  v2 = STACK[0x57D8];
  STACK[0xCF38] = *(STACK[0x57D8] + 8 * v0);
  return (*(v2 + 8 * ((v0 ^ 0xF4) + v0)))();
}

uint64_t sub_1005CB5D8()
{
  v3 = STACK[0x4658];
  *(v1 + 592) = STACK[0x4658];
  *(v1 + 600) = v0 - 289235981 * ((v2 + 375564480 - 2 * ((v2 - 240) & 0x1662A9B0)) ^ 0x91E0798F) + 8538;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v0 + 18961)))(v2 - 240);
  if (*(v1 + 604))
  {
    v6 = 1;
  }

  else
  {
    v6 = *v3 == 0;
  }

  v7 = v6;
  return (*(v4 + 8 * ((v7 * (((v0 - 6711) | 0x4042) - 22576)) ^ v0)))(v5);
}

uint64_t sub_1005CB680()
{
  STACK[0xC890] = v3;
  v4 = *(v3 + v2) == *(v3 - 0x2369327399A66D91) && v3 != 0x2369327399A66D95;
  return (*(STACK[0x57D8] + 8 * ((v4 * (((v0 ^ 0x454E) * v1) ^ (v0 - 1768310225) & 0x696627D4 ^ 0x456C)) ^ v0)))();
}

uint64_t sub_1005CB7D4@<X0>(unsigned int a1@<W8>)
{
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v2 ^ 0x3125u)))((13022 * (v2 ^ 0x4D19) - 769910056) ^ a1);
  *(v1 + 8) = v4;
  return (*(v3 + 8 * (((v4 == 0) * (1086 * (v2 ^ 0x4D09) - 19513)) ^ v2)))();
}

uint64_t sub_1005CB89C()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x57D8];
  STACK[0xCF38] = *(STACK[0x57D8] + 8 * (STACK[0x51B8] - 19719));
  return (*(v1 + 8 * ((v0 ^ 0x50DF) + v0 - 19719)))();
}

uint64_t sub_1005CB9E0()
{
  v1 = STACK[0x57D8];
  STACK[0x8D48] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 - 24911 + ((v0 - 398658512) & 0x17C36CF5))))();
}

uint64_t sub_1005CBA74(unint64_t a1)
{
  v3 = STACK[0x8108];
  v4 = STACK[0x6EC4];
  v5 = 1917435887 * ((v2 - 240) ^ 0xE6BB5B06);
  STACK[0x1D4D8] = a1;
  STACK[0x1D4C8] = &STACK[0x7E60];
  LODWORD(STACK[0x1D4D0]) = v4 + v5;
  STACK[0x1D4E8] = v3;
  LODWORD(STACK[0x1D4C0]) = v5 + v1 + 194287516;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v1 + 30031)))(v2 - 240);
  return (*(v6 + 8 * (((LODWORD(STACK[0x7E60]) < 0x501) * ((3 * (v1 ^ 0x1BB1)) ^ 0x6156)) | v1)))(v7);
}

uint64_t sub_1005CBB40()
{
  v3 = STACK[0xABD0];
  v4 = STACK[0x7E88];
  v5 = STACK[0x7048];
  v6 = STACK[0xC020];
  v7 = STACK[0x88CB];
  v8 = 1089234077 * ((v2 - 240) ^ 0xE05DDC78);
  LODWORD(STACK[0x1D4C0]) = v8 + v0 - 6085 + 383;
  LODWORD(STACK[0x1D4E0]) = 1668369943 - v8 + 1138202975 * v3;
  LOBYTE(STACK[0x1D4D4]) = ((v0 - 119) & 0x76 ^ 0xAC) - -99 * ((v2 + 16) ^ 0x78) + (v7 ^ 0xF) + 2 * (v7 & 0xF);
  STACK[0x1D4F0] = v1;
  STACK[0x1D4C8] = v6;
  STACK[0x1D4D8] = v5;
  STACK[0x1D4E8] = v4;
  v9 = STACK[0x57D8];
  v10 = (*(STACK[0x57D8] + 8 * ((v0 - 6085) ^ 0x3CA7)))(v2 - 240);
  return (*(v9 + 8 * (v0 - 6085)))(v10);
}

uint64_t sub_1005CBC34()
{
  v2 = v0 & 0x8556776F;
  if (((v1 + 4) & 0xF) != 0)
  {
    v3 = 16 - ((v1 + 4) & 0xF);
  }

  else
  {
    v3 = 0;
  }

  LODWORD(STACK[0xE230]) = v3;
  LODWORD(STACK[0xE234]) = v1 + 8;
  v4 = v3 + v1 + 8;
  LODWORD(STACK[0xC790]) = v4;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v2 ^ 0xA51)))((v4 + (((v0 & 0x8556776F) - 7707) | 2) - ((((v2 - 30317) | 0x5854) ^ 0x9A6CB16) & (2 * v4)) - 2066550454) ^ 0x84D349A0);
  STACK[0x71E8] = v6;
  return (*(v5 + 8 * ((255 * (v6 == 0)) ^ v2)))();
}

uint64_t sub_1005CBD20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W8>)
{
  v8 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * a8);
  return (*(v8 + 8 * (a8 + 3384)))(a1, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1005CBE90(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x5408]) = a8 - 703;
  v9 = (a8 - 703) ^ 0x479Bu;
  v10 = v8 ^ 0x91626033;
  STACK[0x5630] = v10;
  v11 = STACK[0x54A0];
  v12 = v11 + v10;
  STACK[0x5500] = v9;
  v13 = v9 + v11 + v10 - ((2 * (v11 + v10)) & 0xCE1448FE4FCB52C6) + 0x670A247F27E58996;
  v14 = 8 * (v12 & 7);
  v15 = (((v13 & 0xFFFFFFF8 ^ 0x56C3DAC) - 1717083032) ^ ((v13 & 0xFFFFFFF8 ^ 0x2948AF17) - 1249642787) ^ ((v13 & 0xFFFFFFF8 ^ 0xBC13BDB) - 1760927215)) + 1863962068;
  v16 = (v15 ^ 0xB2D1FB60) & (2 * (v15 & 0xB495FB69)) ^ v15 & 0xB495FB69;
  v17 = ((2 * (v15 ^ 0xFAFB89A0)) ^ 0x9CDCE592) & (v15 ^ 0xFAFB89A0) ^ (2 * (v15 ^ 0xFAFB89A0)) & 0x4E6E72C8;
  v18 = v17 ^ 0x42221249;
  v19 = (v17 ^ 0x44C6080) & (4 * v16) ^ v16;
  v20 = ((4 * v18) ^ 0x39B9CB24) & v18 ^ (4 * v18) & 0x4E6E72C8;
  v21 = (v20 ^ 0x8284200) & (16 * v19) ^ v19;
  v22 = ((16 * (v20 ^ 0x464630C9)) ^ 0xE6E72C90) & (v20 ^ 0x464630C9) ^ (16 * (v20 ^ 0x464630C9)) & 0x4E6E72C0;
  v23 = v21 ^ 0x4E6E72C9 ^ (v22 ^ 0x46662000) & (v21 << 8);
  v24 = v15 ^ (2 * ((v23 << 16) & 0x4E6E0000 ^ v23 ^ ((v23 << 16) ^ 0x72C90000) & (((v22 ^ 0x8085249) << 8) & 0x4E6E0000 ^ (((v22 ^ 0x8085249) << 8) ^ 0x6E720000) & (v22 ^ 0x8085249) ^ 0xC0000)));
  v25 = *(*STACK[0x51F0] + (v24 & 0xC70E0BC6 ^ 0x84080AC2 ^ (v24 ^ 0xACD91EFA) & STACK[0x5490]));
  v26 = *STACK[0x51F0];
  *(&v27 + 1) = v13 & 0xFFFFFFF8 ^ 0x60;
  *&v27 = v13 ^ 0x670A247F27E5A900;
  v28 = (v27 >> 8) + v25;
  *&v27 = __ROR8__(v25, 61);
  v29 = v28 ^ (v27 - ((2 * v27) & 0xC26DBE7FE6E1969CLL) - 0x1EC920C00C8F34B2);
  v30 = (((v29 ^ 0x348DB057322D0725) + 0x285A6630277FFCCBLL) ^ ((v29 ^ 0x1F0B54F34776EF26) + 0x3DC8294522414CALL) ^ ((v29 ^ 0xC3A35F4730A81796) - 0x208B76DFDA051386)) + ((((v28 << 56) ^ 0x30B06FB66AD2B36BLL) + 0x76CD3BA45543BFF7) ^ (((v28 << 56) ^ 0xCDC1C90DAB1D42B0) - 0x744362E06B73B1D2) ^ (((v28 << 56) ^ 0x2671A6BBC1CFF1DBLL) + 0x600CF2A9FE5EFD47)) + ((((v28 >> 8) ^ 0xB25979DC3C045FA3) - 0x301649BE9C40F9CCLL) ^ (((v28 >> 8) ^ 0x780E0869EDC7910) + 0x7A302F1BC1672081) ^ (((v28 >> 8) ^ 0xB5D08A3E7E6EA587) - 0x379FBA5CDE2A03E8)) - 0x10299E90133FEBBELL;
  v31 = v30 ^ __ROR8__(v29, 61);
  *&v27 = __ROR8__(v30 ^ 0x84336FC779BCEF43, 8);
  v32 = (((v31 ^ 0x32938D4159656C79) + 0x16549BDCC941D84DLL) ^ ((v31 ^ 0x127B7F4FA70C79D6) + 0x36BC69D23728CDE4) ^ ((v31 ^ 0x2548427876E73155) + 0x18F54E5E6C38561)) + 0x1CDE0CBFF68EE619 + (((v27 ^ 0x9DFDB5E04B3807DCLL) + 0x4A8747B4102023FELL) ^ ((v27 ^ 0x900E89C49B2C48E0) + 0x47747B90C0346CC2) ^ ((v27 ^ 0x1B3382247BCAE20BLL) - 0x33B68F8FDF2D39D5));
  v33 = v32 ^ __ROR8__(v31 ^ 0xDB38E9626FDB4BCALL, 61);
  *&v27 = __ROR8__(v32 ^ 0x63C7FEC034268A57, 8);
  v34 = (((v33 ^ 0x692DD6495DE1B573) - 0x6F9A8E9AF20C7408) ^ ((v33 ^ 0x8447DD8334050F87) + 0x7D0F7AAF64173104) ^ ((v33 ^ 0xEC5A3DBE5BE5E10ALL) + 0x15129A920BF7DF8FLL)) - 0x33C0C46F2FC98892 + (((v27 ^ 0x7DF1DB41B41BBAE7) + 0x692FDD576A91155ALL) ^ ((v27 ^ 0x2F423B9D648BE4A0) + 0x3B9C3D8BBA014B1FLL) ^ ((v27 ^ 0x7D25D5DCC3ACD2EFLL) + 0x69FBD3CA1D267D52));
  v35 = v34 ^ 0xC4976BAFE05A6308;
  v36 = v34 ^ __ROR8__(v33, 61);
  v37 = v36 ^ 0xA90E8BED6D9BADBFLL;
  *&v27 = __ROR8__(v35, 8);
  v38 = (((v36 ^ 0x112A35A0FD564F37) + 0x47DB41B26F321D78) ^ ((v36 ^ 0xDE5F7298E8AC0841) - 0x7751F9758537A5FELL) ^ ((v36 ^ 0xA1A79A597E7BCC1BLL) - 0x8A911B413E061A4)) + 0x32F800E404F8EEC5 + (((v27 ^ 0x3BAA83DF248C51EFLL) + 0x3AED12724AB6B8D5) ^ ((v27 ^ 0xDBF19498C32529CFLL) - 0x2549FACA52E03F0BLL) ^ ((v27 ^ 0x75F8D34288B2A917) + 0x74BF42EFE688402DLL));
  v39 = v38 ^ __ROR8__(v37, 61);
  *&v27 = __ROR8__(v38 ^ 0x69FC819B3BF95A25, 8);
  v40 = (((v39 ^ 0x7125E7C1179E88E6) + 0x7F13C9FF649789F7) ^ ((v39 ^ 0x1AEFAF20CC739371) + 0x14D9811EBF7A9262) ^ ((v39 ^ 0xADAFB9DF632CA70DLL) - 0x5C66681EEFDA59E2)) - 0x219CD19E872F936ELL + (((v27 ^ 0x68BAB1354AFDBBA5) + 0x1863386C34288798) ^ ((v27 ^ 0xB6B857D4280BAA28) - 0x399E2172A92169E5) ^ ((v27 ^ 0xF7939D25A745F85DLL) - 0x78B5EB83266F3B90));
  *&v27 = __ROR8__(v39 ^ 0xF1C9D1C18CF6FEEFLL, 61);
  v41 = v40 ^ v27;
  v42 = ((((v40 >> 8) ^ 0x6F310B8DB1EC4008) - 0x5DA1B78E931792C3) ^ (((v40 >> 8) ^ 0xA0C19C90BF855F20) + 0x6DAEDF6C62817215) ^ (((v40 >> 8) ^ 0xCFD4E4566BC8FFACLL) + 0x2BBA7AAB6CCD299)) + ((((v40 << 56) ^ 0x520091D5FCC9F210) - 0x6C8F98CF30380C12) ^ (((v40 << 56) ^ 0x22818505A3EC23CBLL) - 0x1C0E8C1F6F1DDDC9) ^ (((v40 << 56) ^ 0x298114D05F25D1DBLL) - 0x170E1DCA93D42FD9)) + (((v40 ^ v27 ^ 0x46362FEEF7C841F1) + 0x6BDC943A66C9D2C6) ^ ((v40 ^ v27 ^ 0x5103632447ADA27) + 0x28FA8DE6D57B4914) ^ ((v40 ^ v27 ^ 0xDA345540B3E80C26) - 0x821116BDD1660EDLL)) - 0x1AB51EE57D0ED474;
  v43 = __ROR8__(v42 ^ 0x40C9CFEA3CC5CBE1, 8) + (v42 ^ __ROR8__(v41 ^ 0xD215442B6EFE6CCBLL, 61) ^ 0x18F18A5149E2123BLL);
  LODWORD(v41) = (v12 + 8) & 0xFFFFFFF8;
  LODWORD(v35) = (((v41 + 1032954627) ^ 0xE930BD41) + 1216195493) ^ (v41 + 1032954627) ^ (((v41 + 1032954627) ^ 0x8588D9B3) + 616943447) ^ (((v41 + 1032954627) ^ 0x7DB57A17) - 587698957) ^ (((v41 + 1032954627) ^ 0x4FBFF7FF) - 286072549);
  v44 = *(v26 + (v35 & 0xDB3C92E8 ^ 0x5A308008 ^ (v35 & 0xFFFFFFF8 ^ 0x5EB2E918) & STACK[0x5480]));
  STACK[0x5620] = v26;
  *(&v27 + 1) = (v12 + 8) & 0xFFFFFFFFFFFFFFF8;
  *&v27 = v12 + 8;
  v45 = (v43 ^ 0x6F635C2EE5D7D2C6uLL) >> v14;
  v46 = (v27 >> 8) + v44;
  *&v27 = __ROR8__(v44, 61);
  v47 = (v27 - ((2 * v27) & 0x88D345AB26B804D4) + 0x4469A2D5935C026ALL) ^ v46;
  *&v27 = __ROR8__(v46 ^ 0x78B55FDCDB591A02, 8);
  v48 = (((v27 ^ 0x9E474DBEE9B2E7FELL) + 0x5E40A7ABB4C46069) ^ ((v27 ^ 0x7D123F0699178D42) - 0x42EA2AEC3B9EF52BLL) ^ ((v27 ^ 0x3A24D48370C8B092) - 0x5DCC169D241C8FBLL)) - 0x2F2141744B6B950 + (((v47 ^ 0xEF6949CEE88B5AC3) + 0x4B68482F2ACF37E5) ^ ((v47 ^ 0x8BB8310B9710AF0ELL) + 0x2FB930EA5554C22ALL) ^ ((v47 ^ 0x29ABBECC5A44C37CLL) - 0x725540D267FF51A4));
  v49 = v48 ^ __ROR8__(v47, 61);
  *&v27 = __ROR8__(v48 ^ 0xF5E80479B1229E3, 8);
  v50 = (((v49 ^ 0xFC5E85D0A95E7029) - 0x3A10C8A3044E358FLL) ^ ((v49 ^ 0x44A8163422A46B83) + 0x7D19A4B8704BD1DBLL) ^ ((v49 ^ 0x97ADCCC102127675) - 0x51E381B2AF0233D3)) - 0x40D31CAF3F82603FLL + (((v27 ^ 0x7C2E54E4FD421159) - 0x1C7257F14DFB65E0) ^ ((v27 ^ 0x5F42225AA12A9963) - 0x3F1E214F1193EDDALL) ^ ((v27 ^ 0x9527A55177548BCBLL) + 0xA8459BB3812008ELL));
  v51 = v50 ^ __ROR8__(v49 ^ 0xC64E4D73AD1045A6, 61);
  *&v27 = __ROR8__(v50 ^ 0x2AC4729A7E67C62BLL, 8);
  v52 = (((v51 ^ 0x38AECC69818E46BBLL) + 0x2DAAEAB52D42DD3) ^ ((v51 ^ 0x3004871CDFEBDA73) + 0xA70E5DE0CB1B11BLL) ^ ((v51 ^ 0xB5F02717710EFD7FLL) - 0x707BBA2A5DAB69E9)) + 0x6247C223D6FCDAB8 + (((v27 ^ 0x53D7931142F9D221) + 0x16828AA6275D05AELL) ^ ((v27 ^ 0x62959B35B0DBB5B9) + 0x27C08282D57F6236) ^ ((v27 ^ 0x629D3EA8BB54AA7CLL) + 0x27C8271FDEF07DF1));
  v53 = v52 ^ __ROR8__(v51 ^ 0xC58B9D3D2CA59496, 61);
  *&v27 = __ROR8__(v52, 8);
  v54 = ((((v53 ^ 0xA74658943829C064) - 0x43F610AE26340F8BLL) ^ ((v53 ^ 0xA6FA1535B4A8E6CLL) + 0x11201696BAA8BE7DLL) ^ ((v53 ^ 0xCF51DFF869FB39ELL) + 0x17BAAA3A677D838FLL)) + (((v27 ^ 0x8E8AAC1206C516B5) + 0x1CC380DB44D7087ELL) ^ ((v27 ^ 0x99C009977283A7E0) + 0xB89255E3091B929) ^ ((v27 ^ 0x8A2DF6EBB4BD3A01) + 0x1864DA22F6AF24CALL)) + 0x363E2C5B78F79CDCLL) ^ 0xC7BDA9BD13BD104ELL;
  v55 = v54 ^ __ROR8__(v53 ^ 0xE4B0483A1E1DCFEFLL, 61);
  *&v27 = __ROR8__(v54, 8);
  v56 = (((v55 ^ 0x187A6263876AD853) + 0x38DDAFDF71D46D22) ^ ((v55 ^ 0xB73A53B225DFF2EALL) - 0x686261F12C9EB867) ^ ((v55 ^ 0xBB1FBD25E6112331) - 0x64478F66EF5069BCLL)) + (((v27 ^ 0xFC1114B531234363) + 0x2D0AE72D10544202) ^ ((v27 ^ 0x23714033DE5CEAD7) - 0xD954C5400D4144ALL) ^ ((v27 ^ 0x9D5F6E6A0CE4042ELL) + 0x4C449DF22D93054DLL)) + 0x37E2F5428AF8960CLL;
  v57 = v56 ^ __ROR8__(v55 ^ 0xDF58324309414A8DLL, 61);
  *&v27 = __ROR8__(v56 ^ 0xCEC1526A9E1FF4BDLL, 8);
  v58 = ((((v57 ^ 0x11F5D7AAF666F474) - 0x822D87419544A3ELL) ^ ((v57 ^ 0x80D00667E8997F17) + 0x66F8F646F8543EA3) ^ ((v57 ^ 0xED6B6F12D0351714) + 0xB439F33C0F856A2)) + 0x3C327E2654416585 + (((v27 ^ 0xC8CFDFC260420B59) + 0x5425F01A2CB489FLL) ^ ((v27 ^ 0x1C375376609026AFLL) - 0x2E452C4A5DE69A97) ^ ((v27 ^ 0x30123EAD0FEDD286) - 0x2604191329B6EBELL))) ^ 0x82E684C9EE1D1AA7;
  v59 = v58 ^ __ROR8__(v57, 61);
  *&v27 = __ROR8__(v58, 8);
  v60 = *v12;
  v61 = ((((v27 ^ 0x7586DE44385EEC77) - 0x43FBCA664CF53FDFLL) ^ ((v27 ^ 0x2CA265F69C29E117) - 0x1ADF71D4E88232BFLL) ^ ((v27 ^ 0x1FE694F987A5D5B1) - 0x299B80DBF30E0619)) + (((v59 ^ 0x4F24441C151F5A00) + 0x6E982ADDD58193C1) ^ ((v59 ^ 0xAE1BE79C2F63E271) - 0x705876A21002D44ELL) ^ ((v59 ^ 0xC1651E5D9EF08A8CLL) - 0x1F268F63A191BCB3)) + 0x6ED8684CF366103BLL) ^ 0x6F635C2EE5D7D2C6;
  v62 = v61 >> v14;
  STACK[0x5570] = v61 >> v14;
  LOBYTE(v58) = v14 ^ 0x3B;
  v63 = v61 << (v14 ^ 0x3Bu);
  LODWORD(v61) = (v12 - 1937355760 - ((2 * (v12 + 16)) & 0x190C992E) + 151) & 0xFFFFFFF8;
  v64 = (((v61 ^ 0x9D010B80) - 1421324549) ^ ((v61 ^ 0x82530436) - 1273347763) ^ ((v61 ^ 0x93D44326) - 1516435875)) + 1822294881;
  v65 = *(v26 + (LODWORD(STACK[0x5470]) ^ 0x408826C0 ^ (v64 ^ 0x1066588 ^ ((v64 ^ 0xC8321E32) + 2135143087) ^ ((v64 ^ 0xFFDD65E1) + 1219283326) ^ ((v64 ^ 0x108ED54F) - 1476429356) ^ ((v64 ^ 0x6FEFFDFF) - 660713116)) & STACK[0x5460]));
  *(&v27 + 1) = v61 ^ 0x90;
  *&v27 = (v12 + 0x4A17360D8C864C10 - ((2 * (v12 + 16)) & 0x942E6C1B190C992ELL) + 151) ^ 0x4A17360D8C864C00;
  v66 = v27 >> 8;
  *&v27 = __ROR8__(v65, 61);
  v67 = (v66 + v65) ^ 0xA4C58999E3B57E01;
  v68 = v67 ^ (v27 - ((2 * v27) & 0xE4818F022A41CC84) - 0xDBF387EEADF19BELL);
  *&v27 = __ROR8__(v67, 8);
  v69 = (((v27 ^ 0x2F1A5C790157A0FDLL) + 0x3532724E071DEDLL) ^ ((v27 ^ 0x12A5010E3387B7EBLL) + 0x3D8A6F057CD70AFBLL) ^ ((v27 ^ 0xE7128B9A7785215CLL) - 0x37C21A6EC72A63B2)) + 0x6A1371DE3611213CLL + (((v68 ^ 0xA7B22A2D16A7AB6CLL) + 0x584DD5D2E9585494) ^ ((v68 ^ 0x4904F7E3C3A0C1E1) - 0x4904F7E3C3A0C1E1) ^ ((v68 ^ 0xB120F70A9511C615) + 0x4EDF08F56AEE39EBLL));
  v70 = v69 ^ __ROR8__(v68, 61);
  *&v27 = __ROR8__(v69 ^ 0xD4D7169334CD1184, 8);
  v71 = ((((v70 ^ 0x88533F4A9259D3A2) - 0xE492F3F34E5A59) ^ ((v70 ^ 0x38C45160931EDBDBLL) + 0x4F8C03260DF6ADE0) ^ ((v70 ^ 0x8AB5764A6E3B4EELL) + 0x7FE30522380BC2EBLL)) + 0x3291465500DB72C6 + (((v27 ^ 0x2CA51A1029BF9210) + 0xCF0ECB13FB8C7DLL) ^ ((v27 ^ 0xEA591D29C7ECC981) - 0x39CCF60D02572812) ^ ((v27 ^ 0x176C5D4011C08758) + 0x3B06499B2B849935))) ^ 0x43314FAD27A8389FLL;
  v72 = v71 ^ __ROR8__(v70 ^ 0x88B7ADB9611789FBLL, 61);
  *&v27 = __ROR8__(v71, 8);
  v73 = (((v72 ^ 0x1EE4043CFF010F58) + 0x5750A0AB41B2455BLL) ^ ((v72 ^ 0x4A902B79BE7EA089) + 0x3248FEE00CDEA8CLL) ^ ((v72 ^ 0x66EB39855BE41E57) + 0x2F5F9D12E5575456)) + (((v27 ^ 0xD2683C408CD09927) + 0x4B9F0568864B0C81) ^ ((v27 ^ 0xF504294D092061AALL) + 0x6CF3106503BBF40ELL) ^ ((v27 ^ 0xC0DAD6BCFBDFFA97) + 0x592DEF94F1446F31)) + 0x692530EE7226CBDLL;
  v74 = v73 ^ __ROR8__(v72 ^ 0xB64B5B68414CB5FDLL, 61);
  *&v27 = __ROR8__(v73 ^ 0xC24C3D3F04BF8D6ALL, 8);
  v75 = 2 * ((v27 ^ 0x77A51F53FFFF34D9) & (v74 ^ 0x6CFB72ECEC59845ALL) ^ v27 & 0x2D0A716EC96AF31BLL);
  v76 = ((((v27 ^ v74 ^ 0x2EF39E22097185E7) + 0x34F526A0899AFBLL) ^ ((v27 ^ v74 ^ 0x394ACDA5C902B4F4) + 0x178DA6A160FAABEALL) ^ ((v27 ^ v74 ^ 0xA1ED4F561ABF728BLL) - 0x70D5DBAD4CB89269)) + 0x5D23F486531F7C1ELL + (((v75 ^ 0x1DC6DEE38C3FDEB8) + 0x5D8E6FC2274799D2) ^ ((v75 ^ 0xCEE8887D1F1451DLL) + 0x4CA639A67A890275) ^ ((v75 ^ 0x5B2874E1CF1AFB97) + 0x1B60C5C06462BCFFLL))) ^ 0x14649AFC062E63F8;
  v77 = v76 ^ __ROR8__(v74 ^ 0xE11235A756D73BDBLL, 61);
  v78 = v77 ^ 0x8485862BB8A14A7CLL;
  *&v27 = __ROR8__(v76, 8);
  v79 = (((v27 ^ 0xCEC41563366F1B33) + 0x59C8FA702019984ELL) ^ ((v27 ^ 0x21CD8FC118AA3286) - 0x493E9F2DF1234E07) ^ ((v27 ^ 0x1BE5797D8C4B175CLL) - 0x7316699165C26BDDLL)) + (((v77 ^ 0x11D80A907746E5A7) + 0x6AA2734430185025) ^ ((v77 ^ 0xE6D8D1BCF96D53DLL) + 0x7517F4CF88C860BFLL) ^ ((v77 ^ 0xF44FE902A9CCBDBBLL) - 0x70CA6F29116DF7C7)) + 0xB9FDBD5F4C509C5;
  v80 = v79 ^ 0x3D057188C50AEE92;
  v81 = v79 ^ __ROR8__(v78, 61);
  v82 = v81 ^ 0xECCAB49DEF72CAD5;
  *&v27 = __ROR8__(v80, 8);
  v83 = ((((v81 ^ 0x490FFEA49B0EECC0) + 0x5A3AB5C68B83D9EBLL) ^ ((v81 ^ 0x2123D162A9F7F6C0) + 0x32169A00B97AC3EBLL) ^ ((v81 ^ 0x37A021B6DEF7A4B2) + 0x24956AD4CE7A9199)) - 0x19F2959C5513CCA9 + (((v27 ^ 0x9AD567AEADEF7D98) - 0x630ABEE2E7E42902) ^ ((v27 ^ 0xE363468548ADA331) - 0x1ABC9FC902A6F7ABLL) ^ ((v27 ^ 0xB2AF5711082634C3) - 0x4B708E5D422D6059))) ^ 0x841C5EB5F574A33FLL;
  v84 = v83 ^ __ROR8__(v82, 61);
  *&v27 = __ROR8__(v83, 8);
  v85 = (((((v27 ^ 0x65756BAB3721369) + 0x5C5ADE83B0E8E553) ^ ((v27 ^ 0x67D5BF2DE64DAA8DLL) + 0x3DD83714E5D75CB7) ^ ((v27 ^ 0xBF463C060AF6088CLL) - 0x1AB44BC0F6930148)) + (((v84 ^ 0x25048AC5270DEE44) - 0xF691FFF8784BF50) ^ ((v84 ^ 0x35016A9CF8ABB7B4) - 0x1F6CFFA65822E6A0) ^ ((v84 ^ 0x4EE5A66E0DF49213) + 0x377CCAB52823CF9)) + 0x7C47565168853A3) ^ 0x7635C2EE5D7D2C6) << v58;
  LODWORD(v58) = v8 & 0xFFFFFFFD ^ 0x91626033;
  LODWORD(STACK[0x5760]) = v58;
  v86 = *(v11 + v58);
  LODWORD(v82) = v8 & 0xFFFFFFFE ^ 0x91626033;
  LODWORD(STACK[0x5710]) = v82;
  LOBYTE(v83) = ((v86 ^ 0xEB) - 68) ^ ((v86 ^ 0xD5) - 122) ^ ((v86 ^ 0xD2) - 125);
  v87 = STACK[0x57B0];
  v88 = STACK[0x5790];
  LODWORD(v83) = ((*(v11 + v82) ^ 0xA8 ^ *(STACK[0x5790] + (*(v11 + v82) ^ 0xBLL))) << 16) | (((*(STACK[0x57B0] + (v86 ^ 0x8F)) - (v86 ^ 0xAF ^ (v83 - ((2 * v83 + 70) & 0x87) + 102))) ^ 0xF) << 8);
  LODWORD(v83) = v83 - ((2 * v83) & 0x1FDD600) - 1912673526;
  LODWORD(v86) = v8 & 0xFFFFFFF5 ^ 0x9162603B;
  LODWORD(STACK[0x5740]) = v86;
  v89 = *(v11 + v86);
  LOBYTE(v84) = ((v89 ^ 0x43) + 125) ^ ((v89 ^ 3) + 61) ^ ((v89 ^ 0x14) + 44);
  v90 = v8 & 0xFFFFFFF6 ^ 0x9162603B;
  LODWORD(STACK[0x5720]) = v90;
  LOBYTE(v89) = *(v87 + (v89 ^ 0x37)) - (v89 ^ (v84 - 2 * ((v84 + 20) & 0x15 ^ v84 & 1) + 8) ^ 0xC0);
  v91 = (((*(v11 + v90) ^ *(v88 + (*(v11 + v90) ^ 0x6CLL)) ^ 0xFC) << 16) ^ 0x305580A3) & ~((v89 ^ 0xD8) << 8) & 0xFFFF80FF | (((v89 ^ 0xD8) & 0x7F) << 8);
  LODWORD(v89) = v8 & 0xFFFFFFFA ^ 0x91626037;
  LODWORD(STACK[0x5730]) = v89;
  v92 = STACK[0x57A0];
  LODWORD(v89) = *(v11 + v89) ^ a3 ^ *(v88 + (*(v11 + v89) ^ 0x44));
  LODWORD(v82) = (v83 ^ 0x7202D135) & ((((*(STACK[0x57A0] + (v60 ^ 0xEFLL)) - 83) ^ 0x72) << 24) ^ 0xE7C02A3E);
  v93 = v8 & 0xFFFFFFF8 ^ 0x91626037;
  LODWORD(STACK[0x5750]) = v93;
  v94 = STACK[0x57C0];
  v95 = *(STACK[0x57C0] + (*(v11 + v93) ^ 0x56)) ^ 0x65;
  LODWORD(v89) = ((v95 ^ (4 * v95)) & 0xFC ^ 0xFFFF0310) & ((((v89 - ((2 * v89) & 0xBE)) << 16) + 1650393088) ^ 0xB62B03D4) | (v95 ^ (4 * v95)) & 0x2B;
  v96 = v8 & 0xFFFFFFF1 ^ 0x9162603F;
  LODWORD(STACK[0x5640]) = v96;
  v97 = *(v11 + v96);
  v98 = ((v97 ^ 0xFC) + 126) ^ ((v97 ^ 0xD0) + 82) ^ ((v97 ^ 0x58) - 38);
  LOBYTE(v97) = *(v87 + (v97 ^ 0x17)) - (v97 ^ (v98 - ((2 * v98 + 20) & 0x14) - 12) ^ 0x7E);
  v99 = v8 & 0xFFFFFFF2 ^ 0x9162603F;
  LODWORD(STACK[0x5700]) = v99;
  v100 = (*(v11 + v99) ^ 0xE6 ^ *(v88 + (*(v11 + v99) ^ 0xA4))) << 16;
  v101 = (((v97 ^ 0xCF) << 8) ^ 0xEF7B2069) & (v100 ^ 0xEFFFFFFD) | v100 & 0x840000;
  LODWORD(v97) = v8 & 0xFFFFFFFB ^ 0x91626037;
  LODWORD(STACK[0x56E0]) = v97;
  LODWORD(v97) = ((((*(v92 + (*(v11 + v97) ^ 0x28)) - 83) ^ 0x96) << 24) ^ 0xBF9ABA2E) & (v89 ^ 0x2BCAFCAB);
  LODWORD(v26) = v8 & a6 ^ 0x9162603B;
  LODWORD(STACK[0x5660]) = v26;
  LODWORD(v26) = *(v94 + (*(v11 + v26) ^ 0xE6));
  v102 = v8 & 0xFFFFFFF7 ^ 0x9162603B;
  LODWORD(STACK[0x56F0]) = v102;
  v103 = *(v11 + v102);
  LODWORD(STACK[0x55B0]) = v103;
  v104 = v103 + 2000829037 - ((2 * v103) & 0x100);
  v105 = v8 & 0xFFFFFFF0 ^ 0x9162603F;
  LODWORD(STACK[0x56D0]) = v105;
  v106 = *(v94 + (*(v11 + v105) ^ 0xC7)) ^ 0x33;
  v107 = (v101 ^ 0x9357F54F) & ((v106 ^ (4 * v106)) ^ 0x7FFFFF24) ^ (v106 ^ (4 * v106)) & 0xD9;
  v108 = (v26 ^ 0xFFFFFFFD ^ (4 * (v26 ^ 0xFFFFFFFD))) & 9 | ((v26 ^ 0xFFFFFFFD ^ (4 * (v26 ^ 0xFFFFFFFD))) & 0xFE ^ 0x7FFFFFC2) & (v91 ^ 0x33A58455);
  v109 = v8 & 0xFFFFFFF3 ^ 0x9162603F;
  LODWORD(STACK[0x5680]) = v109;
  v110 = (v107 ^ 0x83900810) & ((((*(v92 + (*(v11 + v109) ^ 0xEDLL)) - 83) ^ 0xD4) << 24) ^ 0x29909C3A);
  LODWORD(STACK[0x5670]) = v8;
  LODWORD(v84) = v8 & 0xFFFFFFF9 ^ 0x91626037;
  LODWORD(STACK[0x5650]) = v84;
  v111 = *(v11 + v84);
  LOBYTE(v26) = ((v111 ^ 0xAA) - 91) ^ ((v111 ^ 0x7F) + 114) ^ ((v111 ^ 0xA7) - 86);
  LODWORD(v83) = v83 & 0x83FD500 ^ 0x4FE3E7CA ^ v82;
  LODWORD(v82) = v8 & 0xFFFFFFFC ^ 0x91626033;
  LODWORD(STACK[0x56C0]) = v82;
  LOBYTE(v82) = *(v94 + (*(v11 + v82) ^ 3)) ^ 0x30;
  LOBYTE(v82) = v82 ^ (4 * v82);
  v112 = (v82 ^ 0xFFFFFF3A) & v83;
  LODWORD(v83) = (*(v87 + (v111 ^ 0x11)) - (v111 ^ 0xF1 ^ (v26 - ((2 * v26 + 6) & 6) - 26))) ^ 0x44;
  v113 = v107 & 0x566F63C5 ^ LODWORD(STACK[0x55C0]) ^ v110;
  v114 = v82 & 0xB ^ LODWORD(STACK[0x55D0]) ^ v112;
  LODWORD(v82) = *(v92 + ((v104 + 19) ^ 0x77423A6Du));
  v115 = v92;
  LODWORD(v92) = v89 & 0x406501D1 ^ LODWORD(STACK[0x55E0]) ^ v97 ^ ((v83 << 8) - ((v83 << 9) & 0x1D400) - 1002706417);
  LODWORD(STACK[0x55D0]) = v92;
  v116 = (((v82 - 83) ^ 0xD4) << 24) & 0xA1000000 ^ LODWORD(STACK[0x55F0]) ^ (v108 ^ 0x5DF88895) & ~(((v82 - 83) ^ 0xD4) << 24);
  LODWORD(STACK[0x55F0]) = v116;
  v117 = v45 + 32 * v63;
  v118 = *(v87 + (BYTE2(v117) ^ 0xBDLL)) - (((BYTE2(v117) ^ 0xDE) - 32) ^ BYTE2(v117) ^ 0xDE);
  LODWORD(STACK[0x55E0]) = *(v87 + (BYTE6(v117) ^ 0x87)) - (((HIWORD(v117) ^ 0xE4) + 224) ^ HIWORD(v117) ^ 0xE4);
  v119 = v62 + 32 * v85;
  LOBYTE(v63) = *(v87 + (BYTE2(v119) ^ 0x7ELL)) - (((BYTE2(v119) ^ 0x1D) - 32) ^ BYTE2(v119) ^ 0x1D);
  LOBYTE(v112) = *(v87 + (BYTE6(v119) ^ 0xD0)) - (((BYTE6(v119) ^ 0xB3) - 32) ^ BYTE6(v119) ^ 0xB3);
  v120 = STACK[0x5580];
  LOBYTE(v87) = *(v88 + (BYTE1(v117) ^ 0xD3)) ^ ((v114 ^ LODWORD(STACK[0x5580])) >> 16) ^ (BYTE1(v117) - ((v117 >> 7) & 0x78) + 60);
  LODWORD(v62) = a8;
  v121 = STACK[0x5600];
  v122 = v116 ^ LODWORD(STACK[0x5600]);
  v123 = *(v88 + (BYTE1(v119) ^ 0x7FLL)) ^ BYTE2(v122) ^ (BYTE1(v119) - ((v119 >> 7) & 0x78) + 60);
  LOBYTE(v82) = *(v88 + (BYTE5(v117) ^ 0xF6));
  v124 = STACK[0x55A0];
  LODWORD(v97) = v113 ^ LODWORD(STACK[0x55A0]);
  LOBYTE(v104) = *(v88 + (BYTE5(v119) ^ 0x33)) ^ BYTE2(v97) ^ (BYTE5(v119) - ((2 * BYTE5(v119)) & 0x78) + 60);
  LODWORD(v83) = STACK[0x5590];
  LODWORD(STACK[0x55C0]) = LODWORD(STACK[0x5590]) - ((2 * LODWORD(STACK[0x5590])) & 0xFFFFFFC8);
  LODWORD(v89) = v92 ^ v83;
  LOBYTE(v82) = v82 ^ ((v92 ^ v83) >> 16) ^ (BYTE5(v117) - ((2 * BYTE5(v117)) & 0x78) + 60);
  LOBYTE(v111) = *(v115 + (v45 ^ 0x9CLL));
  LODWORD(STACK[0x5600]) = v121 + (~(2 * v121) | 0xFFFFFF93);
  LOBYTE(v116) = v118 ^ ((v114 ^ v120) >> 8);
  LOBYTE(v45) = (v111 - 83) ^ ((v114 ^ v120) >> 24);
  v125 = (v82 ^ 0xCD454F28) + (v82 ^ 0x52);
  v126 = *(&off_101353600 + v62 - 22031);
  LODWORD(v92) = *(v126 + 4 * (v82 ^ 0x81u));
  LODWORD(v82) = -v92;
  LODWORD(v83) = (v92 ^ -v92 ^ (v125 - (v125 ^ v92))) + v125;
  LOBYTE(v113) = (v124 - ((2 * v124) & 0xE4) - 14) ^ v113;
  v127 = STACK[0x57C0];
  LOBYTE(v124) = *(STACK[0x57C0] + (HIBYTE(v119) ^ 0xA2)) ^ 0xFB;
  LOBYTE(v63) = v63 ^ BYTE1(v122);
  v128 = *(&off_101353600 + (v62 ^ 0x5E02)) - 8;
  LODWORD(v45) = *&v128[4 * (v45 ^ 0xDB)];
  LODWORD(STACK[0x5610]) = v62;
  v129 = *(&off_101353600 + (v62 ^ 0x5BB8)) - 8;
  v130 = *(&off_101353600 + (v62 ^ 0x5827));
  v131 = *(v130 + 4 * ((v113 ^ v124 ^ (4 * v124)) ^ 0x4Du)) - 1161249941;
  LODWORD(v45) = v45 ^ *&v129[4 * (v63 ^ 0x18)] ^ v131 ^ (v45 >> 2) & 0x9152D82 ^ (v131 >> 1) ^ (v131 >> 3) ^ v83 ^ 0x2F6A2BC;
  v132 = v115;
  LOBYTE(v83) = *(v115 + (BYTE4(v117) ^ 0xAALL)) - 83;
  LOBYTE(v115) = LODWORD(STACK[0x55E0]) ^ BYTE1(v89);
  LOBYTE(v131) = (v120 - ((2 * v120) & 0x84) - 62) ^ v114;
  LOBYTE(v114) = *(v127 + (BYTE3(v117) ^ 5)) ^ 0x6C;
  LODWORD(v89) = *&v128[4 * ((v83 ^ BYTE3(v89)) ^ 4)] ^ 0x954B8921;
  v133 = *(v130 + 4 * ((v131 ^ v114 ^ (4 * v114)) ^ 0x45u)) - 1161249941;
  LODWORD(v83) = v89 ^ *(v126 + 4 * (v123 ^ 0x32u)) ^ *&v129[4 * ((v112 ^ BYTE1(v97)) ^ 0x57)] ^ v133 ^ (v89 >> 2) & 0x9152D82 ^ (v133 >> 1) ^ (v133 >> 3) ^ (v112 ^ BYTE1(v97)) ^ 0xAD ^ ((v123 ^ 0x9B) - 851095686 + (v123 ^ 0xE1) - 122);
  v134 = (v104 ^ 0x5C) + (v104 ^ 0xCD454F26);
  LOBYTE(v112) = *(v127 + (HIBYTE(v117) ^ 0x50)) ^ 0x45;
  LODWORD(v89) = *&v128[4 * (((*(v132 + (STACK[0x5570] ^ 0x46)) - 83) ^ HIBYTE(v122)) ^ 0x3A)] ^ 0x954B8921;
  LODWORD(v89) = v89 ^ *(v126 + 4 * (v104 ^ 0x8Fu)) ^ (v89 >> 2) & 0x9152D82 ^ *&v129[4 * (v116 ^ 0x8D)];
  v135 = *(v130 + 4 * ((LODWORD(STACK[0x55C0]) - 28) ^ v112 ^ (4 * v112) ^ LODWORD(STACK[0x55D0]) ^ 0x27)) - 1161249941;
  LODWORD(v89) = v89 ^ v135 ^ (v135 >> 1) ^ (v135 >> 3) ^ v116 ^ 0x77 ^ v134;
  LOBYTE(v119) = *(v127 + (BYTE3(v119) ^ 0x1ALL)) ^ 0x59;
  LODWORD(v127) = (v83 ^ 0xD05D314D) >> (v82 & 8) >> (v82 & 8 ^ 8);
  LODWORD(v97) = *&v128[4 * (((*(v132 + (BYTE4(v119) ^ 0x55)) - 83) ^ BYTE3(v97)) ^ 0xA5)] ^ 0x954B8921;
  LODWORD(v119) = *(v130 + 4 * (((LODWORD(STACK[0x5600]) - 73) ^ LODWORD(STACK[0x55F0]) ^ v119 ^ (4 * v119)) ^ 0x7Eu)) - 1161249941;
  v136 = ((v83 ^ 0xD05D314D) >> 16);
  LODWORD(v82) = v136 ^ -v136 ^ (-851095686 - (v136 ^ 0xCD454F7A));
  LODWORD(v82) = (v82 ^ (v136 - 851095686)) + 2 * (v82 & (v136 - 851095686));
  LODWORD(v97) = *(v126 + 4 * (v87 ^ 0x94u)) ^ v97 ^ ((v87 ^ 0xCD454F3D) + (v87 ^ 0x47)) ^ *&v129[4 * (v115 ^ 0x94)] ^ v115 ^ 0x40 ^ (v97 >> 2) & 0x9152D82 ^ v119 ^ (v119 >> 1) ^ (v119 >> 3) ^ 0x22D161EE;
  LODWORD(v119) = *&v128[4 * ((v89 ^ 0xAC5A8998) >> 24)] ^ 0x954B8921;
  v137 = *(v130 + 4 * (v83 ^ 0xA3u)) - 1161249941;
  LODWORD(v119) = *(v126 + 4 * (BYTE2(v97) ^ 0xD3u)) ^ 0x77AFA422 ^ v119 ^ *&v129[4 * (BYTE1(v45) ^ 0xFA)] ^ (v119 >> 2) & 0x9152D82 ^ ((BYTE2(v97) ^ 0xCD454F7A) + BYTE2(v97)) ^ v137 ^ (v137 >> 1) ^ (v137 >> 3) ^ BYTE1(v45);
  v138 = *&v128[4 * BYTE3(v45)];
  v139 = ((v89 ^ 0x8998) >> 8);
  v140 = v138 ^ *(v126 + 4 * (v136 ^ 0xD3u)) ^ *&v129[4 * (v139 ^ 0xFA)] ^ (v138 >> 2) & 0x9152D82;
  v141 = *(v130 + 4 * v97) - 1161249941;
  LODWORD(v82) = v140 ^ v141 ^ (v141 >> 1) ^ (v141 >> 3) ^ v139 ^ v82 ^ 0x31111EED;
  LODWORD(v83) = *&v128[4 * (BYTE3(v83) ^ 0xE3)] ^ 0x954B8921;
  LODWORD(v63) = *(v130 + 4 * (v63 ^ 0xE2u ^ v45)) - 1161249941;
  v142 = *(v126 + 4 * (((v89 ^ 0xAC5A8998) >> 16) ^ 0xD3u)) ^ v83 ^ *&v129[4 * (BYTE1(v97) ^ 0xFA)] ^ (v83 >> 2) & 0x9152D82 ^ v63 ^ (v63 >> 1) ^ (v63 >> 3) ^ BYTE1(v97) ^ (2 * (((v89 ^ 0xAC5A8998) >> 16) & (((v89 ^ 0xAC5A8998) >> 16) ^ 0x7A)) - 851095686) ^ 0x376C11C;
  LODWORD(v83) = *&v128[4 * BYTE3(v97)];
  LODWORD(v89) = *(v130 + 4 * (v89 ^ 0x76u)) - 1161249941;
  LODWORD(v89) = *(v126 + 4 * (BYTE2(v45) ^ 0xD3u)) ^ v83 ^ 0x954B8921 ^ ((v83 ^ 0x954B8921) >> 2) & 0x9152D82 ^ *&v129[4 * (v127 ^ 0xFA)] ^ v127 ^ ((BYTE2(v45) ^ 0xCD454F7A) + BYTE2(v45)) ^ v89 ^ (v89 >> 1) ^ (v89 >> 3);
  LODWORD(v83) = *&v128[4 * BYTE3(v82)] ^ 0x954B8921;
  LODWORD(v27) = __ROR4__(__ROR4__(v119, 7) ^ 0xF2A0CBD2, 25);
  LODWORD(v63) = v89 ^ 0x8DFD29AA;
  v143 = *(v130 + 4 * (v89 ^ 0xAAu)) - 1161249941;
  LODWORD(v89) = v83 ^ *(v126 + 4 * (BYTE2(v142) ^ 0xD3u)) ^ (v83 >> 2) & 0x9152D82 ^ v143 ^ *&v129[4 * (((v27 ^ 0x4242) >> 8) ^ 0xFA)] ^ (v143 >> 1) ^ (v143 >> 3) ^ ((v27 ^ 0x4242) >> 8) ^ ((BYTE2(v142) ^ 0xCD454F7A) + BYTE2(v142));
  LODWORD(v83) = *&v128[4 * HIBYTE(v142)] ^ 0x954B8921;
  v144 = *(v130 + 4 * v82) - 1161249941;
  LODWORD(v97) = v83 ^ *&v129[4 * (BYTE1(v63) ^ 0xFA)] ^ (v83 >> 2) & 0x9152D82 ^ v144 ^ *(v126 + 4 * (((v27 ^ 0xCD874242) >> 16) ^ 0xD3u)) ^ (v144 >> 1) ^ (v144 >> 3) ^ BYTE1(v63) ^ ((((v27 ^ 0xCD874242) >> 16) ^ 0xCD454F7A) + ((v27 ^ 0xCD874242) >> 16));
  v145 = *&v128[4 * ((v27 ^ 0xCD874242) >> 24)] ^ 0x954B8921;
  v146 = *(v130 + 4 * v142) - 1161249941;
  LODWORD(v83) = v145 ^ *(v126 + 4 * (BYTE2(v63) ^ 0xD3u)) ^ *&v129[4 * (BYTE1(v82) ^ 0xFA)] ^ BYTE1(v82) ^ (v145 >> 2) & 0x9152D82 ^ v146 ^ ((BYTE2(v63) ^ 0xCD454F7A) + BYTE2(v63)) ^ (v146 >> 1) ^ (v146 >> 3);
  LODWORD(v82) = BYTE2(v82);
  v147 = BYTE1(v142);
  LODWORD(v119) = v147 ^ *(v126 + 4 * (v82 ^ 0xD3));
  LODWORD(v82) = ((v82 ^ 0xCD454F7A) + v82) ^ *&v129[4 * (v147 ^ 0xFA)];
  v148 = *&v128[4 * BYTE3(v63)] ^ 0x954B8921;
  LODWORD(v127) = *(v130 + 4 * (v27 ^ 0x42u)) - 1161249941;
  LODWORD(v63) = v119 ^ v148 ^ v82 ^ (v148 >> 2) & 0x9152D82 ^ v127 ^ (v127 >> 1) ^ (v127 >> 3);
  LOWORD(v148) = v97 ^ 0x5464;
  LODWORD(v127) = ((v97 ^ 0xE81E5464) >> 16);
  LODWORD(v82) = (v127 ^ 0xCD454F7A) + v127;
  LODWORD(v127) = *(v126 + 4 * (v127 ^ 0xD3));
  LODWORD(v127) = v82 + v127 - 2 * (v82 & v127);
  LODWORD(v82) = *&v128[4 * (BYTE3(v89) ^ 0x9D)] ^ 0x954B8921;
  v149 = *(v130 + 4 * (v63 ^ 0xD7u)) - 1161249941;
  LODWORD(v127) = *&v129[4 * (((v83 ^ 0x1CE0) >> 8) ^ 0xFA)] ^ v82 ^ (v82 >> 2) & 0x9152D82 ^ v149 ^ (v149 >> 1) ^ (v149 >> 3) ^ v127 ^ ((v83 ^ 0x1CE0) >> 8);
  LODWORD(v82) = *&v128[4 * (BYTE3(v97) ^ 0xDB)] ^ 0x954B8921;
  LODWORD(v115) = *(v130 + 4 * (v89 ^ 0xBu)) - 1161249941;
  LODWORD(v82) = v82 ^ *&v129[4 * (((v63 ^ 0x7239) >> 8) ^ 0xFA)] ^ *(v126 + 4 * (((v83 ^ 0x74321CE0) >> 16) ^ 0xD3u)) ^ (v82 >> 2) & 0x9152D82 ^ v115 ^ (v115 >> 1) ^ (v115 >> 3) ^ ((v63 ^ 0x7239) >> 8) ^ ((((v83 ^ 0x74321CE0) >> 16) ^ 0xCD454F7A) + ((v83 ^ 0x74321CE0) >> 16));
  LODWORD(v89) = v89 ^ 0xAE09D2E5;
  LODWORD(v119) = *&v128[4 * ((v83 ^ 0x74321CE0) >> 24)] ^ 0x954B8921;
  LODWORD(v97) = v119 ^ *(v126 + 4 * (((v63 ^ 0x8FAE7239) >> 16) ^ 0xD3u)) ^ *&v129[4 * (BYTE1(v89) ^ 0xFA)] ^ BYTE1(v89) ^ ((((v63 ^ 0x8FAE7239) >> 16) ^ 0xCD454F7A) + ((v63 ^ 0x8FAE7239) >> 16)) ^ (v119 >> 2) & 0x9152D82;
  LODWORD(v119) = *(v130 + 4 * v148) - 1161249941;
  v150 = v97 ^ v119 ^ (v119 >> 1) ^ (v119 >> 3);
  LODWORD(v97) = *&v128[4 * (BYTE3(v63) ^ 0xBC)] ^ 0x954B8921;
  LODWORD(v83) = *(v130 + 4 * (v83 ^ 0xEu)) - 1161249941;
  LODWORD(v97) = ((BYTE2(v89) ^ 0xCD454F7A) + BYTE2(v89)) ^ BYTE1(v148) ^ v97 ^ *(v126 + 4 * (BYTE2(v89) ^ 0xD3u)) ^ *&v129[4 * (BYTE1(v148) ^ 0xFA)] ^ (v97 >> 2) & 0x9152D82 ^ v83 ^ (v83 >> 1) ^ (v83 >> 3);
  v151 = v82 ^ 0x85B4051C;
  v152 = v150 ^ 0x87E75E61;
  v153 = ((v97 ^ 0x6B2B) >> 8);
  LODWORD(v83) = *&v128[4 * ((v82 ^ 0x85B4051C) >> 24)] ^ 0x954B8921;
  v154 = *(v130 + 4 * (v127 ^ 0xE5u)) - 1161249941;
  v155 = v83 ^ *&v129[4 * (v153 ^ 0xFA)] ^ *(v126 + 4 * (BYTE2(v152) ^ 0xD3u)) ^ (v83 >> 2) & 0x9152D82 ^ v154 ^ ((BYTE2(v152) ^ 0xCD454F7A) + BYTE2(v152)) ^ (v154 >> 1) ^ (v154 >> 3);
  v156 = *&v128[4 * (HIBYTE(v150) ^ 0xB4)] ^ 0x954B8921;
  BYTE2(v150) = BYTE2(v127) ^ 0xCB;
  LODWORD(v82) = *(v130 + 4 * (v82 ^ 0xF2u)) - 1161249941;
  v157 = *(v126 + 4 * (((v97 ^ 0x7E286B2B) >> 16) ^ 0xD3u)) ^ ((v127 ^ 0x160B) >> 8) ^ *&v129[4 * (((v127 ^ 0x160B) >> 8) ^ 0xFA)] ^ v156 ^ (2 * (((v97 ^ 0x7E286B2B) >> 16) & (((v97 ^ 0x7E286B2B) >> 16) ^ 0x7A)) - 851095686) ^ v82 ^ ((v156 & 0x2454B60A) >> (STACK[0x55B0] & 2 ^ 2) >> (STACK[0x55B0] & 2)) ^ (v82 >> 1) ^ (v82 >> 3);
  v158 = *&v128[4 * ((v127 ^ 0x1BCB160B) >> 24)] ^ 0x954B8921;
  LODWORD(v63) = *(v130 + 4 * (v97 ^ 0x2Bu)) - 1161249941;
  v159 = *(v126 + 4 * (BYTE2(v151) ^ 0xD3u)) ^ 0x657ADA17 ^ v158 ^ *&v129[4 * (BYTE1(v152) ^ 0xFA)] ^ (v158 >> 2) & 0x9152D82 ^ v63 ^ (v63 >> 1) ^ (v63 >> 3) ^ ((BYTE2(v151) ^ 0xCD454F7A) + BYTE2(v151));
  LODWORD(v63) = *(v130 + 4 * (v152 ^ 0xEEu)) - 1161249941;
  DWORD1(v27) = v63;
  LODWORD(v27) = v63;
  LODWORD(v97) = *&v128[4 * (BYTE3(v97) ^ 0x4D)] ^ 0x954B8921;
  LODWORD(v27) = __ROR4__(v63, 10) ^ 0x4026C297 ^ (v27 >> 12) & 0xFF8FFFFF;
  DWORD1(v27) = v27;
  v160 = ((BYTE2(v150) ^ 0xCD454F7A) + BYTE2(v150)) ^ BYTE1(v151) ^ v97 ^ *(v126 + 4 * (BYTE2(v150) ^ 0xD3u)) ^ *&v129[4 * (BYTE1(v151) ^ 0xFA)] ^ (v97 >> 2) & 0x9152D82 ^ v63 ^ ((v27 >> 22) >> 1) ^ 0x3A2A8AA2;
  LODWORD(STACK[0x5600]) = LODWORD(STACK[0x5770]) < 0xF00426CC;
  if ((v160 & 0x20) != 0)
  {
    v161 = -32;
  }

  else
  {
    v161 = 32;
  }

  v162 = (v161 + v160) ^ 0x2BCF0930;
  v163 = *&v128[4 * (HIBYTE(v157) ^ 0x54)] ^ 0x954B8921;
  v164 = BYTE1(v159) ^ 0x77AFA422 ^ v163 ^ *&v129[4 * (BYTE1(v159) ^ 0xFA)] ^ (v163 >> 2) & 0x9152D82;
  v165 = v155 ^ v153 ^ 0x96AF9896;
  v166 = *(v130 + 4 * (v155 ^ v153 ^ 0x96)) - 1161249941;
  v167 = (v166 >> 3) ^ (v166 >> 1);
  v168 = v164 ^ v166 ^ ((BYTE2(v162) ^ 0xCD454F7A) + BYTE2(v162)) ^ *(v126 + 4 * (BYTE2(v162) ^ 0xD3u));
  v169 = v167 & 0x800000;
  if ((v168 & v167 & 0x800000) != 0)
  {
    v169 = -v169;
  }

  v170 = (v169 + v168) ^ v167 & 0x7F7FFFFF;
  v171 = v157 ^ 0x6729816A;
  v172 = *&v128[4 * HIBYTE(v159)] ^ 0x954B8921;
  v173 = *(v130 + 4 * v162) - 1161249941;
  v174 = *(v126 + 4 * (BYTE2(v165) ^ 0xD3u)) ^ v172 ^ *&v129[4 * (BYTE1(v171) ^ 0xFA)] ^ (v172 >> 2) & 0x9152D82 ^ ((BYTE2(v165) ^ 0xCD454F7A) + BYTE2(v165)) ^ v173 ^ (v173 >> 1) ^ (v173 >> 3);
  v175 = *&v128[4 * (HIBYTE(v155) ^ 0xA5)] ^ 0x954B8921;
  v176 = *(v130 + 4 * (v159 ^ BYTE1(v152))) - 1161249941;
  v177 = *(v126 + 4 * (BYTE2(v171) ^ 0xD3u)) ^ v175 ^ (v175 >> 2) & 0x9152D82 ^ ((BYTE2(v171) ^ 0xCD454F7A) + BYTE2(v171)) ^ v176 ^ *&v129[4 * (BYTE1(v162) ^ 0xFA)] ^ (v176 >> 1) ^ (v176 >> 3);
  v178 = ((BYTE2(v159) ^ 0xCD454F7A) + BYTE2(v159)) ^ BYTE1(v165) ^ *(v126 + 4 * (BYTE2(v159) ^ 0xD3u)) ^ *&v129[4 * (BYTE1(v165) ^ 0xFA)];
  v179 = *&v128[4 * HIBYTE(v162)] ^ 0x954B8921;
  v180 = *(v130 + 4 * v171) - 1161249941;
  v181 = v178 ^ v179 ^ v180 ^ (v179 >> 2) & 0x9152D82 ^ (v180 >> 1) ^ (v180 >> 3);
  v174 ^= 0xFBDE3E94;
  v182 = v177 ^ 0x1B10E171;
  v183 = *&v128[4 * HIBYTE(v174)] ^ 0x954B8921;
  v184 = ((v170 ^ 0x83A4) >> 8);
  v185 = v181 ^ 0x1359CD29;
  v186 = *(v130 + 4 * (v181 ^ 0x29u)) - 1161249941;
  v187 = *&v128[4 * HIBYTE(v182)];
  v188 = v183 ^ *(v126 + 4 * (BYTE2(v182) ^ 0xD3u)) ^ *&v129[4 * (v184 ^ 0xFA)] ^ (v183 >> 2) & 0x9152D82 ^ v186 ^ (v186 >> 1) ^ (v186 >> 3) ^ ((BYTE2(v182) ^ 0xCD454F7A) + BYTE2(v182));
  v189 = *(v130 + 4 * (v174 ^ BYTE1(v171))) - 1161249941;
  v190 = v187 ^ *(v126 + 4 * (((v170 ^ 0x4EF783A4) >> 16) ^ 0xD3u)) ^ (v187 >> 2) & 0x9152D82 ^ *&v129[4 * (BYTE1(v185) ^ 0xFA)] ^ v189 ^ (v189 >> 1) ^ (v189 >> 3) ^ BYTE1(v185) ^ ((((v170 ^ 0x4EF783A4) >> 16) ^ 0xCD454F7A) + ((v170 ^ 0x4EF783A4) >> 16)) ^ 0x72EE3D26;
  v191 = *&v128[4 * (HIBYTE(v170) ^ 0x7D)];
  v192 = v188 ^ v184;
  v193 = *(v130 + 4 * (v170 ^ 0x4Au)) - 1161249941;
  LOBYTE(v189) = ((v193 >> 3) ^ (v193 >> 1)) & 0x10;
  v194 = ((v192 ^ 0x8BC432EB) >> v189) >> (v189 ^ 0x10);
  v191 ^= 0x954B8921;
  v195 = BYTE1(v174) ^ v191 ^ *&v129[4 * (BYTE1(v174) ^ 0xFA)] ^ *(v126 + 4 * (BYTE2(v185) ^ 0xD3u));
  v196 = *(v130 + 4 * (v182 ^ BYTE1(v162))) - 1161249941;
  v197 = ((BYTE2(v174) ^ 0xCD454F7A) + BYTE2(v174)) ^ BYTE1(v182) ^ *(v126 + 4 * (BYTE2(v174) ^ 0xD3u)) ^ *&v129[4 * (BYTE1(v182) ^ 0xFA)];
  v198 = *&v128[4 * HIBYTE(v185)] ^ 0x954B8921;
  v199 = v197 ^ v198 ^ v193 ^ (v198 >> 2) & 0x9152D82 ^ (v193 >> 3) ^ (v193 >> 1) ^ 0xFFB47E46;
  v200 = v195 ^ ((BYTE2(v185) ^ 0xCD454F7A) + BYTE2(v185)) ^ (v191 >> 2) & 0x9152D82 ^ v196 ^ (v196 >> 1) ^ (v196 >> 3) ^ 0xA98CF41C;
  v201 = *&v128[4 * (HIBYTE(v188) ^ 0xB8)];
  v202 = *(v130 + 4 * v199) - 1161249941;
  v203 = v201 ^ 0x954B8921 ^ *(v126 + 4 * (BYTE2(v190) ^ 0xD3u)) ^ *&v129[4 * (BYTE1(v200) ^ 0xFA)] ^ ((v201 ^ 0x954B8921) >> 2) & 0x9152D82 ^ v202 ^ (v202 >> 1) ^ (v202 >> 3) ^ BYTE1(v200) ^ ((BYTE2(v190) ^ 0xCD454F7A) + BYTE2(v190));
  v204 = *&v128[4 * HIBYTE(v200)];
  v205 = *(v130 + 4 * v190) - 1161249941;
  v206 = *&v128[4 * HIBYTE(v199)];
  v207 = ((v192 ^ 0x32EB) >> 8) ^ 0x77AFA422 ^ *(v126 + 4 * (BYTE2(v199) ^ 0xD3u)) ^ ((BYTE2(v199) ^ 0xCD454F7A) + BYTE2(v199)) ^ v204 ^ 0x954B8921 ^ *&v129[4 * (((v192 ^ 0x32EB) >> 8) ^ 0xFA)] ^ ((v204 ^ 0x954B8921) >> 2) & 0x9152D82 ^ v205 ^ (v205 >> 3) ^ (v205 >> 1);
  if ((v206 & 0x8000) != 0)
  {
    v208 = -32768;
  }

  else
  {
    v208 = 0x8000;
  }

  v209 = *&v128[4 * HIBYTE(v190)] ^ 0x954B8921;
  v210 = *(v130 + 4 * (v192 ^ 5u)) - 1161249941;
  v211 = *(v126 + 4 * (BYTE2(v200) ^ 0xD3u)) ^ v209 ^ *&v129[4 * (BYTE1(v199) ^ 0xFA)] ^ (v209 >> 2) & 0x9152D82 ^ BYTE1(v199) ^ ((BYTE2(v200) ^ 0xCD454F7A) + BYTE2(v200)) ^ v210 ^ (v210 >> 1) ^ (v210 >> 3);
  v212 = *(v130 + 4 * v200) - 1161249941;
  v211 ^= 0x2CF43EC0u;
  v213 = ((v194 ^ 0xCD454F7A) + v194) ^ BYTE1(v190) ^ *&v129[4 * (BYTE1(v190) ^ 0xFA)] ^ v212 ^ *(v126 + 4 * (v194 ^ 0xD3)) ^ (v212 >> 1) ^ (v212 >> 3) ^ (v208 + v206) ^ 0x954B0921 ^ (((v208 + v206) ^ 0x954B0921) >> 2) & 0x9152D82;
  v215 = __ROR4__(__ROR4__(v207, 6) ^ 0x41C5732, 26);
  v214 = v215 ^ 0xC;
  v216 = *&v128[4 * (HIBYTE(v203) ^ 0x8F)] ^ 0x954B8921;
  v217 = ((v215 ^ 0xE50C) >> 8);
  v218 = *(v130 + 4 * (v213 ^ 0x9Au)) - 1161249941;
  v219 = v216 ^ *(v126 + 4 * (BYTE2(v211) ^ 0xD3u)) ^ *&v129[4 * (v217 ^ 0xFA)] ^ (v216 >> 2) & 0x9152D82 ^ v218 ^ ((BYTE2(v211) ^ 0xCD454F7A) + BYTE2(v211)) ^ (v218 >> 1) ^ (v218 >> 3);
  v220 = BYTE1(v213) ^ 0xB4;
  v221 = *&v128[4 * HIBYTE(v211)];
  v222 = ((v215 ^ 0xB0A3E50C) >> 16);
  v223 = (v222 ^ 0xCD454F7A) + v222;
  v224 = *(v126 + 4 * (v222 ^ 0xD3u)) ^ v221 ^ (v221 >> 2) & 0x9152D82;
  v225 = *(v130 + 4 * (v203 ^ 0xB4u)) - 1161249941;
  v226 = v224 ^ v225 ^ *&v129[4 * (((v213 ^ 0xB474) >> 8) - (((v213 ^ 0x49CCB474) >> 7) & 0x1F4)) + 1000] ^ (v225 >> 1) ^ (v225 >> 3) ^ v223;
  v227 = v203 ^ 0xBC20ED5A;
  v228 = *&v128[4 * ((v215 ^ 0xB0A3E50C) >> 24)] ^ 0x954B8921;
  v229 = v228 ^ *(v126 + 4 * (((v213 ^ 0x49CCB474) >> 16) ^ 0xD3u)) ^ *&v129[4 * (BYTE1(v227) ^ 0xFA)] ^ (v228 >> 2) & 0x9152D82 ^ ((((v213 ^ 0x49CCB474) >> 16) ^ 0xCD454F7A) + ((v213 ^ 0x49CCB474) >> 16));
  v230 = *&v128[4 * (HIBYTE(v213) ^ 0x7A)];
  v231 = *(v130 + 4 * v211) - 1161249941;
  HIDWORD(v232) = v231 ^ (v231 >> 2);
  LODWORD(v232) = HIDWORD(v232);
  v233 = (v232 >> 8) & 0xFEFFFFFF ^ __ROR4__(((v229 ^ -v229 ^ ((BYTE1(v227) ^ 0x77AFA422) - (BYTE1(v227) ^ 0x77AFA422 ^ v229))) + (BYTE1(v227) ^ 0x77AFA422)) ^ v231, 7);
  v234 = *(v130 + 4 * v214) - 1161249941;
  v235 = ((BYTE2(v227) ^ 0xCD454F7A) + BYTE2(v227)) ^ BYTE1(v211) ^ *(v126 + 4 * (BYTE2(v227) ^ 0xD3u)) ^ *&v129[4 * (BYTE1(v211) ^ 0xFA)] ^ v230 ^ 0x954B8921 ^ v234 ^ ((v230 ^ 0x954B8921) >> 2) & 0x9152D82;
  v236 = STACK[0x5780] + STACK[0x5630];
  v237 = v236;
  v238 = STACK[0x5620];
  v239 = *(STACK[0x5620] + (LODWORD(STACK[0x5440]) ^ ((((((v236 & 0xFFFFFFF8) + 474274682) ^ 0x2A7B870F) - 387819166) ^ ((v236 & 0xFFFFFFF8) + 474274682) ^ ((((v236 & 0xFFFFFFF8) + 474274682) ^ 0x996151EA) + 1543016325) ^ ((((v236 & 0xFFFFFFF8) + 474274682) ^ 0xF181888A) + 857233126) ^ ((((v236 & 0xFFFFFFF8) + 474274682) ^ 0x7FFD7FFE) - 1117478510)) & 0xFFFFFFF8 ^ 0x89FB8708) & STACK[0x5450] ^ 0x848D2690));
  v240 = v235 ^ (v234 >> 1) ^ (v234 >> 3);
  *(&v241 + 1) = v236 & 0xFFFFFFFFFFFFFFF8;
  *&v241 = v236;
  v242 = v239 + (v241 >> 8);
  *&v241 = __ROR8__(v239, 61);
  v243 = (v241 - ((2 * v241) & 0xC5D2B4885BE18DF6) - 0x1D16A5BBD20F3905) ^ v242;
  *&v241 = __ROR8__(v242, 8);
  v244 = (((v243 ^ 0x677BD652A9C970CCLL) - 0x3F18BC1F8E90462ALL) ^ ((v243 ^ 0xAE5ADFD54860A143) + 0x9C64A6790C6685BLL) ^ ((v243 ^ 0x22DB371F7ADA23AFLL) - 0x7AB85D525D831549)) + ((((v241 - ((2 * v241) & 0x8594EB0B6F47588ELL) - 0x3D358A7A485C53B9) ^ 0x5AF61874F4B71C86) - 0x14990B933A5B87FBLL) ^ (((v241 - ((2 * v241) & 0x8594EB0B6F47588ELL) - 0x3D358A7A485C53B9) ^ 0x4E43E5EBEDAB66D3) - 0x2CF60C2347FDAELL) ^ (((v241 - ((2 * v241) & 0x8594EB0B6F47588ELL) - 0x3D358A7A485C53B9) ^ 0xD769B7E72095526) - 0x43198899BCE5CE5BLL)) + 0xB45C9DC622478D4;
  v245 = __ROR8__(v244 ^ 0xE71387B1D9EDB582, 8);
  v246 = v244 ^ __ROR8__(v243, 61);
  v247 = (((v246 ^ 0x1C4D076F03E7A7) - 0x1450DF4E6EC0A402) ^ ((v246 ^ 0xF1829BD8926953EBLL) + 0x1A31F66E6C55EFB2) ^ ((v246 ^ 0xEAC24D7781E4FD1ELL) + 0x17120C17FD84145)) - 0x1B7C07D0F071D4FCLL + (((v245 ^ 0x84F5492B69533648) + 0x79DAC671D99315D8) ^ ((v245 ^ 0x4CFB436E522E44BALL) - 0x4E2B33CB1D1198DALL) ^ ((v245 ^ 0x1FAD94ADE6038E9FLL) - 0x1D7DE408A93C52FFLL));
  v248 = v247 ^ __ROR8__(v246, 61);
  *&v241 = __ROR8__(v247 ^ 0xCEC0B52FAAD2DF9, 8);
  v249 = (((v248 ^ 0x464CE3799953515FLL) + 0x5CA47E62D5959012) ^ ((v248 ^ 0x1A39E52315894EC9) + 0xD17838594F8F88) ^ ((v248 ^ 0x736325CA6002777ELL) + 0x698BB8D12CC4B631)) + 0x582E79D03955460ALL + (((v241 ^ 0xADF5D746089DD82BLL) + 0x5DDE0E17AFE3CF6BLL) ^ ((v241 ^ 0x247DF34AB9ACED51) - 0x2BA9D5E4E12D05EFLL) ^ ((v241 ^ 0x8713AF930C33275) - 0x7A51C576842DACBLL));
  v250 = v249 ^ __ROR8__(v248 ^ 0xE51762E4B3393EB1, 61);
  *&v241 = __ROR8__(v249 ^ 0xAEBBB44008A3541FLL, 8);
  v251 = (((v250 ^ 0xC4C021665B067C91) - 0x34963B6A3CDCC761) ^ ((v250 ^ 0xF070600EB5C8AC44) - 0x267A02D21217B4) ^ ((v250 ^ 0x3E9240AEA4F3686) + 0xC40C1F9726A728ALL)) - 0x462759DAF8A8D1CBLL + (((v241 ^ 0xB860D4E381FF6263) + 0x379FE5705D08650FLL) ^ ((v241 ^ 0xF50FEA42C34A873FLL) + 0x7AF0DBD11FBD8053) ^ ((v241 ^ 0xCFA6D67BC246CD5CLL) + 0x4059E7E81EB1CA32));
  v252 = v251 ^ __ROR8__(v250 ^ 0xF0561A0C67DABBF0, 61);
  *&v241 = __ROR8__(v251 ^ 0xAA2CD879F03A9966, 8);
  v253 = (((v252 ^ 0xE617B22C235F20FALL) + 0x6EE182186E200245) ^ ((v252 ^ 0xF956549BAB2F8C85) + 0x71A064AFE650AE3CLL) ^ ((v252 ^ 0xDFBD589A1ABACB6DLL) + 0x574B68AE57C5E9D4)) + 0x3DBF1F4DB6291A4CLL + (((v241 ^ 0x3DA597D11941403DLL) + 0x2DC16ED45418CA29) ^ ((v241 ^ 0xE14FEA2D4ABEE632) - 0xED4ECD7F81893D8) ^ ((v241 ^ 0xB6B8D66174878C1CLL) - 0x5923D09BC621F9F6));
  v254 = v253 ^ __ROR8__(v252 ^ 0x7709CFCBB280DD41, 61);
  *&v241 = __ROR8__(v253 ^ 0x8D6785DEE5600875, 8);
  v255 = (((v254 ^ 0xDE88E3AD5526E6CALL) + 0x2C4DC4FFCF00B8C7) ^ ((v254 ^ 0xCC9C0EA1E7F0C9A2) + 0x3E5929F37DD697AFLL) ^ ((v254 ^ 0x89CC2958116379ACLL) + 0x7B090E0A8B4527A1)) + 0x32E16925C4054978 + (((v241 ^ 0x14516B3122C7E4CCLL) + 0x5CF8CC2B9BE4C9FFLL) ^ ((v241 ^ 0xFD71E7D0A4A8B4ALL) + 0x477EB967B369A679) ^ ((v241 ^ 0x372F618293C9EF0ALL) + 0x7F86C6982AEAC239));
  v256 = __ROR8__(v255 ^ 0x40C9CFEA3CC5CBE1, 8) + (v255 ^ __ROR8__(v254, 61) ^ 0x9E0FED4F216F7DC5);
  LODWORD(v255) = (v236 + 8) & 0xFFFFFFF8;
  *(&v241 + 1) = (v236 + 8) & 0xFFFFFFFFFFFFFFF8;
  *&v241 = v236 + 8;
  v257 = STACK[0x5430];
  v258 = *(STACK[0x5620] + (LODWORD(STACK[0x5420]) ^ (((((v255 + 989061581) ^ 0x5B910287) - 126100835) ^ (v255 + 989061581) ^ (((v255 + 989061581) ^ 0x60CB791E) - 1021206266) ^ (((v255 + 989061581) ^ 0x88B0A386) + 727350174) ^ (((v255 + 989061581) ^ 0xEFFFFFFB) + 1276454881)) & 0xFFFFFFF8 ^ 0x971D85E5) & STACK[0x5430]));
  v259 = v258 + (v241 >> 8);
  *&v241 = __ROR8__(v258, 61);
  v260 = v241 - ((2 * v241) & 0x1AC89EC2D8AB3B8ELL) - 0x729BB09E93AA6239;
  *&v241 = __ROR8__(v259 ^ 0xE7A2BC2CEBB3F718, 8);
  v261 = v260 ^ v259;
  v262 = ((((v241 ^ 0xEA0293C0EEF9977CLL) - 0x84F29E2CC71B517) ^ ((v241 ^ 0x167758DBFDBD85B6) + 0xBC51D0620CA5823) ^ ((v241 ^ 0x3F9B7AC3E3192209) + 0x22293F1E3E6EFF9ELL)) - 0x534E677E98A15495 + (((v261 ^ 0x91A7213809BDBC13) + 0x612179FCB81D7234) ^ ((v261 ^ 0x4F7F67E172B6E321) - 0x4006C0DA3CE9D2FELL) ^ ((v261 ^ 0x5AAF6D64A1DDF62ELL) - 0x55D6CA5FEF82C7F1))) ^ 0xFAE06418C02E3493;
  v263 = v262 ^ __ROR8__(v261, 61);
  *&v241 = __ROR8__(v262, 8);
  v264 = (((v241 ^ 0x841387B8445E9665) + 0x4B9EEA9BFF026FC2) ^ ((v241 ^ 0x525880A243974DE2) - 0x622A127E07344BB9) ^ ((v241 ^ 0x10F56A1173AEE46BLL) - 0x2087F8CD370DE230)) + (((v263 ^ 0x4AC9C8882DDDAC71) + 0x2F1F28F413B38B20) ^ ((v263 ^ 0x4C421E5D5D3ECB6ALL) + 0x2994FE216350EC05) ^ ((v263 ^ 0x9B5F804FC169C339) - 0x1769FCC00F81BA8)) - 0x135B70F5F204996;
  *&v241 = __ROR8__(v263 ^ 0x9A291F83C191D891, 61);
  v265 = v264 ^ v241;
  v266 = v264 ^ ~v241;
  *&v241 = __ROR8__(v264 ^ 0xE21CD223697C70B5, 8);
  v267 = ((v241 ^ 0x4472CA26AF32500ELL) + 0x4A777FE913E23BDBLL) ^ ((v241 ^ 0x3F7C52C056976348) + 0x3179E70FEA47089DLL) ^ ((v241 ^ 0xB61976CA09C4E514) - 0x47E33CFA4AEB713FLL);
  *(&v241 + 1) = v265;
  *&v241 = v266;
  v268 = (((v265 ^ 0x720C27D7D54B487DLL) - 0x4CFB9367A07BB5B3) ^ ((v265 ^ 0x85ABDA2332DACBC8) + 0x44A3916CB815C9FALL) ^ ((v265 ^ 0x3DBF4BEC6FE04455) - 0x348FF5C1AD0B99BLL)) + 0x31DCA6C5B08F7CA7 + v267;
  v269 = v268 ^ (v241 >> 61);
  *&v241 = __ROR8__(v268 ^ 0x6110F550DAD4FF89, 8);
  v270 = (((v269 ^ 0x4E730C0FE2BEDC45) + 0xA200F90FAB11C7CLL) ^ ((v269 ^ 0x2E07E5371EED717ELL) + 0x6A54E6A806E2B141) ^ ((v269 ^ 0x57E2373C4456C6A7) + 0x13B134A35C59069ALL)) + 0x44E43F513DFB7D51 + (((v241 ^ 0xBB87F31A8EDD9D30) - 0x172BAC6DC0FAEA6FLL) ^ ((v241 ^ 0x19C5345D87058032) + 0x4A9694D536DD0893) ^ ((v241 ^ 0xB64484DC99F942A9) - 0x1AE8DBABD7DE35F6));
  v271 = v270 ^ 0xE12702EA0DD046E4 ^ __ROR8__(v269 ^ 0xBBACFC60E7F03FC1, 61);
  v272 = ((((v270 >> 8) ^ 0xAE6F8C69F9C743E9) - 0x7908ABC9C35D2C41) ^ (((v270 >> 8) ^ 0x47F7CD99554F79C8) + 0x6F6F15C6902AE9A0) ^ (((v270 >> 8) ^ 0xE960C6B5F2002AABLL) - 0x3E07E115C89A4503)) + (((((v270 ^ 0xE12702EA0DD046E4) << 56) ^ 0x3576DBADDAF82509) + 0x6B53E68A31EDCE79) ^ ((((v270 ^ 0xE12702EA0DD046E4) << 56) ^ 0x1AEC494CEB8B013BLL) + 0x44C9746B009EEA4BLL) ^ ((((v270 ^ 0xE12702EA0DD046E4) << 56) ^ 0xC79A92E131732432) - 0x66405039259930BCLL)) + (((v271 ^ 0x2C8F01838F1913F1) - 0x5C935AADD77E5F78) ^ ((v271 ^ 0x9FE114F2C9137C20) + 0x1002B0236E8BCF57) ^ ((v271 ^ 0xCB1F41E73C6001D5) + 0x44FCE5369BF8B2A4)) + 0x29E773759B09B63DLL;
  v273 = v272 ^ __ROR8__(v271 ^ 0x701C5B2E58674C89, 61);
  *&v241 = __ROR8__(v272 ^ 0x97245D8D12E9C0CLL, 8);
  v274 = (((v273 ^ 0x9B471812E54CBEA2) - 0x639F128606AA063) ^ ((v273 ^ 0x9C645DC8678AC59BLL) - 0x11AB4F2E2ACDB5ALL) ^ ((v273 ^ 0x6038737E334FEB08) + 0x2B965BB49960A37)) + 0x14135AF0160E4FCLL + (((v241 ^ 0x2F628CF1527B29EFLL) - 0x7C94DBEF23BAB1FBLL) ^ ((v241 ^ 0xACC43BAEEC57A830) + 0xCD934F6269CFDCLL) ^ ((v241 ^ 0xD68BB651035C4FC7) + 0x7A821EB08D62282DLL));
  v275 = v274 ^ __ROR8__(v273 ^ 0x9D7EE93A85261EC1, 61);
  *&v241 = __ROR8__(v274 ^ 0xE749F24CE7568720, 8);
  v276 = ((v241 ^ 0xD5E9F04603AA411FLL) + 0x78D31450565E4CF9) ^ ((v241 ^ 0x5C0B3554F7691A24) - 0xECE2EBD5D62E83CLL) ^ ((v241 ^ 0x4845452F5218C877) - 0x1A805EC6F8133A6FLL);
  STACK[0x5630] = v236;
  LODWORD(v239) = (v236 + 16) & 0xFFFFFFF8;
  v277 = ((v239 + 1209086927) ^ 0x56C9C612) & (2 * ((v239 + 1209086927) & 0x96CD861A)) ^ (v239 + 1209086927) & 0x96CD861A;
  v278 = ((2 * ((v239 + 1209086927) ^ 0x7F53CE02)) ^ 0xD33C9030) & ((v239 + 1209086927) ^ 0x7F53CE02) ^ (2 * ((v239 + 1209086927) ^ 0x7F53CE02)) & 0xE99E4818;
  v279 = (v278 ^ 0xC19C4010) & (4 * v277) ^ v277;
  v280 = ((4 * (v278 ^ 0x28824808)) ^ 0xA6792060) & (v278 ^ 0x28824808) ^ (4 * (v278 ^ 0x28824808)) & 0xE99E4818;
  v281 = (v280 ^ 0xA0180000) & (16 * v279) ^ v279;
  v282 = ((16 * (v280 ^ 0x49864818)) ^ 0x99E48180) & (v280 ^ 0x49864818) ^ (16 * (v280 ^ 0x49864818)) & 0xE99E4810;
  v283 = v281 ^ 0xE99E4818 ^ (v282 ^ 0x89840018) & (v281 << 8);
  v284 = *(v238 + (LODWORD(STACK[0x5410]) ^ (((v239 + 1209086927) ^ (2 * ((v283 << 16) & 0x699E0000 ^ v283 ^ ((v283 << 16) ^ 0x48180000) & (((v282 ^ 0x601A4818) << 8) & 0xE99E0000 ^ 0x61960000 ^ (((v282 ^ 0x601A4818) << 8) ^ 0x1E480000) & (v282 ^ 0x601A4818))))) & 0xFFFFFFF8 ^ 0x54745509) & v257));
  *(&v241 + 1) = (v237 + 16) & 0xFFFFFFFFFFFFFFF8;
  *&v241 = v237 + 16;
  v285 = (((v275 ^ 0xDD2D89234251E450) - 0x3E497E61247463EDLL) ^ ((v275 ^ 0x572BAE893287345) + 0x19E9B2550AF20B08) ^ ((v275 ^ 0x4BB800D048C02B73) + 0x5723086DD11A5332)) + 0x3E6602E0C6C9D2FLL + v276;
  v286 = v284 + (v241 >> 8);
  *&v241 = __ROR8__(v284, 61);
  v287 = (v241 - ((2 * v241) & 0xE6D0276211BE6824) - 0xC97EC4EF720CBEELL) ^ v286;
  *&v241 = __ROR8__(v286 ^ 0xC47AE58ABB0E979ALL, 8);
  v288 = ((((v241 ^ 0xA29A3A7C6369311CLL) - 0x34EA366CADC523B7) ^ ((v241 ^ 0x13D47C45E5F27FB4) + 0x7A5B8FAAD4A192E1) ^ ((v241 ^ 0xF0832FB8D096C30BLL) - 0x66F323A81E3AD1A0)) + 0x6DEE5754C3FCAE13 + (((v287 ^ 0x7F91FFA3885FC134) - 0x13DA790D1D58CEF6) ^ ((v287 ^ 0x4ECAA636DA83CA75) - 0x228120984F84C5B7) ^ ((v287 ^ 0xCB202EF8EC800B88) + 0x589457A98678FBB6))) ^ 0xBCC20DE1CA98CLL;
  v289 = v288 ^ __ROR8__(v287, 61);
  *&v241 = __ROR8__(v288, 8);
  v290 = (((v289 ^ 0x5E0915BD9917FC40) + 0x3907826E593411CALL) ^ ((v289 ^ 0x500C165260CE203ALL) + 0x37028181A0EDCDB4) ^ ((v289 ^ 0x99581BCE7234ABECLL) - 0x1A973E24DE8B99ALL)) + (((v241 ^ 0xD549EAEEED72F595) - 0x7B5CE5D83769CC62) ^ ((v241 ^ 0x58CE820EDF0D0F40) + 0x92472C7FAE9C949) ^ ((v241 ^ 0x54C3EE437E06F7A4) + 0x5291E8A5BE231ADLL)) - 0x7902065CB56C659ALL;
  v291 = v290 ^ __ROR8__(v289 ^ 0x98F1682C3FDC1276, 61);
  *&v241 = __ROR8__(v290 ^ 0xD614FDF3F1B385A0, 8);
  v292 = (((v291 ^ 0x36CA68C9BE900C5CLL) - 0x5337B1BBD9833F1ALL) ^ ((v291 ^ 0xCC95610F947623CALL) + 0x569747820C9AEF74) ^ ((v291 ^ 0x72CE777883C722EELL) - 0x1733AE0AE4D411A8)) - 0x1041B396D822F65CLL + (((v241 ^ 0x34BFC07D41BF434ALL) + 0x11327D1DC7136E75) ^ ((v241 ^ 0x545B97E2D3A9C06FLL) + 0x71D62A825505ED52) ^ ((v241 ^ 0xB8C7B19CB2EF9A82) - 0x62B5F303CBBC4843));
  *&v241 = __ROR8__(v291 ^ 0x65FDD97267133346, 61);
  v293 = v292 ^ v241;
  v294 = ((((v292 >> 8) ^ 0x3B2B72382A4DADDBLL) + 0x37A20D6B7CCA9120) ^ (((v292 >> 8) ^ 0x4D8C691D66989FFLL) + 0x851B9C280EEB53CLL) ^ (((v292 >> 8) ^ 0x3F94E7C73CDFAF70) + 0x331D98946A5893B5)) + ((((v292 << 56) ^ 0x24F25C58FDB377FALL) - 0x485E82FA339ADCDBLL) ^ (((v292 << 56) ^ 0xDDDBF0FC188E1CB8) + 0x4E88D1A129584867) ^ (((v292 << 56) ^ 0x6429ACA4E53D6B42) - 0x88572062B14C063)) + (((v292 ^ v241 ^ 0xD427A59BEC52EE3FLL) + 0x6818331C5777012DLL) ^ ((v292 ^ v241 ^ 0x131CA147C586007CLL) - 0x50DCC83F815C1090) ^ ((v292 ^ v241 ^ 0xCB0D547AA3CE4B29) + 0x7732C2FD18EBA43BLL)) + 0x34B4EC44066DA916;
  v295 = v294 ^ __ROR8__(v293 ^ 0x43C0697844DA10ECLL, 61);
  *&v241 = __ROR8__(v294 ^ 0xBC47542396BEF20, 8);
  v296 = (((v295 ^ 0xC5543EA98496006ELL) - 0x201DCA2A85C7C9D7) ^ ((v295 ^ 0x2CA1D74B3846A417) + 0x3617DC37C6E89252) ^ ((v295 ^ 0x6EC3624A42C58247) + 0x74756936BC6BB402)) - 0x20FA7FD0DFE731D8 + (((v241 ^ 0x1C1CD4879CE5087FLL) - 0x4C6996B4A087ADBBLL) ^ ((v241 ^ 0x159F38EDBD51856CLL) - 0x45EA7ADE813320A8) ^ ((v241 ^ 0x2570AF5A3D05F676) - 0x7505ED69016753B2));
  v297 = v296 ^ 0x371775172DAF812FLL ^ __ROR8__(v295 ^ 0xE549F4830151C9B9, 61);
  v298 = (((((v296 ^ 0x371775172DAF812FLL) << 56) ^ 0xA4F5D6A9D8BEAC39) - 0x7D27E673B72CAA6CLL) ^ ((((v296 ^ 0x371775172DAF812FLL) << 56) ^ 0x2F8852BC25219AD0) + 0x9A59D99B54C637BLL) ^ ((((v296 ^ 0x371775172DAF812FLL) << 56) ^ 0xFD7D8415FD9F36E9) - 0x24AFB4CF920D30BCLL)) + 0x3CE884575C2B65B0 + (((v297 ^ 0x554902F7FA41F15ALL) + 0x273F69599F4F28B4) ^ ((v297 ^ 0x127D56F0BAE81771) + 0x600B3D5EDFE6CE99) ^ ((v297 ^ 0x47AB932A36C19F66) + 0x35DDF88453CF4690));
  v296 >>= 8;
  v299 = (v297 ^ 0x38A94F3A3C950) & (v296 ^ 0x24734B65A1E084) ^ v296 & 0x9C4DB985CBB01DLL;
  v300 = ((((2 * v299) ^ 0xBE14EE9D9294D12ALL) - 0x30F4256EF5CB027) ^ (((2 * v299) ^ 0x7904206FE5A83FAALL) + 0x3BE0735B679FA159) ^ (((2 * v299) ^ 0xC7184CE07C3FAE88) - 0x7A03E02B01F7CF85)) - 0x25F041C53C5A2C38 + (((v298 ^ v296 ^ 0xE4795F086704AEDCLL) + 0x75E5CDDB1800365) ^ ((v298 ^ v296 ^ 0xDD742D78BF1A051FLL) + 0x3E532EAD699EA8A8) ^ ((v298 ^ v296 ^ 0x3929013BBDBF4B47) - 0x25F1FD1194C41900));
  *&v241 = __ROR8__(v297 ^ 0x8D8994519AF12616, 61);
  v301 = ((v300 ^ v241 ^ 0xB2F9FD7EDC07B851) + 0x6A42EE1F6EB82208) ^ ((v300 ^ v241 ^ 0x722CE253E4694B9ALL) - 0x55680ECDA9292E33) ^ ((v300 ^ v241 ^ 0xE8AE4B206061C2F6) + 0x30155841D2DE58A1);
  *&v241 = __ROR8__(v300 ^ 0x40C9CFEA3CC5CBE1, 8);
  LOBYTE(v298) = 8 * (v237 & 7);
  v302 = (v256 ^ 0x6F635C2EE5D7D2C6) >> v298;
  v285 ^= 0x6F635C2EE5D7D2C6uLL;
  v303 = v285 >> v298;
  v304 = (((v241 ^ 0xDEEF77E4F6F6D7FELL) + ((2 * v241) & 0x3DDEEFC9EDEDAFFCLL) + v301 + 0x305040AE1E587C96) ^ 0x6F635C2EE5D7D2C6) << (v298 ^ 0x3Fu);
  DWORD1(v241) = v233 ^ 0x136175A4;
  LODWORD(v241) = v233 ^ 0x136175A4;
  v305 = v241 >> 25;
  v306 = v302 + 2 * (v285 << (v298 ^ 0x3Fu));
  v307 = STACK[0x5610];
  v308 = *(&off_101353600 + LODWORD(STACK[0x5610]) - 23019) - 12;
  LODWORD(STACK[0x55F0]) = *&v308[4 * (HIBYTE(v219) ^ 0x56)];
  LODWORD(STACK[0x5620]) = *&v308[4 * (HIBYTE(v226) ^ 0xAB)];
  LODWORD(STACK[0x55E0]) = *&v308[4 * (HIBYTE(v305) ^ 0x7D)];
  LODWORD(v301) = *&v308[4 * (HIBYTE(v240) ^ 0x85)];
  LODWORD(v308) = v219 ^ v217 ^ 0xB5AB6C23;
  v309 = *(&off_101353600 + v307 - 22346) - 4;
  LODWORD(STACK[0x5570]) = *&v309[4 * (BYTE2(v226) ^ 0x65)];
  LODWORD(STACK[0x55D0]) = *&v309[4 * (BYTE2(v305) ^ 0x53)];
  LODWORD(STACK[0x55A0]) = *&v309[4 * (BYTE2(v240) ^ 0xEB)];
  LODWORD(v298) = *&v309[4 * BYTE2(v308)];
  v310 = v303 + 2 * v304;
  v311 = STACK[0x5790];
  LODWORD(v309) = *(STACK[0x5790] + (BYTE5(v310) ^ 0x4BLL)) ^ (BYTE5(v310) - ((2 * BYTE5(v310)) & 0x78) + 60);
  LOBYTE(v237) = v226 ^ v220;
  v312 = *(&off_101353600 + v307 - 22235);
  v313 = *(v312 + 4 * (BYTE1(v305) ^ 0xD1u));
  LODWORD(STACK[0x55C0]) = *(v312 + 4 * (BYTE1(v240) ^ 0x54u));
  LODWORD(STACK[0x5580]) = *(v312 + 4 * (BYTE1(v219) ^ 0x14u));
  LODWORD(v312) = *(v312 + 4 * (BYTE1(v226) ^ 0xC4u));
  v314 = *(&off_101353600 + v307 - 21979);
  v315 = *(v314 + 4 * (v240 ^ 0xA5u));
  LODWORD(STACK[0x55B0]) = *(v314 + 4 * v308);
  LODWORD(STACK[0x5530]) = *(v314 + 4 * (v237 ^ 0xB1u));
  LODWORD(v308) = *(v314 + 4 * ((v241 >> 25) ^ 0x67u));
  v316 = STACK[0x57B0];
  v317 = *(STACK[0x57B0] + (BYTE6(v310) ^ 0xE1)) - (((BYTE6(v310) ^ 0x82) - 32) ^ BYTE6(v310) ^ 0x82);
  v318 = STACK[0x57C0];
  LODWORD(v304) = *(STACK[0x57C0] + HIBYTE(v310));
  LODWORD(v314) = (((v304 >> 7) | (2 * v304)) ^ 0xFFFFFF93) << (v293 & 6 ^ 2) << (v293 & 1) << ((v293 ^ 0x9F) & 4) << ((v293 ^ 0x9F) & 3 ^ 2);
  LOBYTE(v304) = (((v304 & 0x7F ^ 0x8E) + 23) ^ ((v304 & 0x7F ^ 0x22) - 69) ^ ((v304 & 0x7F ^ 0xE5) + 126)) + (((v314 ^ 0xEA) + 114) ^ ((v314 ^ 0xEB) + 113) ^ ((v314 ^ 1) - 101)) - 99;
  LOBYTE(v238) = v304 & 0xC1 | 0x2E;
  DWORD1(v241) = v301;
  LODWORD(v241) = v301;
  LOBYTE(v304) = v304 ^ (2 * ((v304 ^ 0x74) & (2 * ((v304 ^ 0x74) & (2 * ((v304 ^ 0x74) & (2 * ((v304 ^ 0x74) & (2 * ((v304 ^ 0x74) & (2 * ((v304 ^ 0x74) & (2 * (v304 & 0xC1)) ^ v238)) ^ v238)) ^ v238)) ^ v238)) ^ v238)) ^ v238));
  LODWORD(v301) = ((v241 >> 4) << 6) ^ (16 * (v241 >> 4)) ^ v298 ^ 0xD75A7C0F ^ ((v241 >> 4) - 177616125 - ((2 * (v241 >> 4)) & 0xEAD39668) + 49) ^ ((2 * (v298 ^ 0xD75A7C0F)) | 0x521A1960) ^ (v312 + 1730780020);
  LODWORD(v238) = *(STACK[0x57A0] + (v302 ^ 0x66));
  LODWORD(v293) = *(v311 + (BYTE1(v306) ^ 0xB4));
  v319 = STACK[0x57A0];
  LODWORD(v312) = (*(STACK[0x57A0] + (BYTE4(v310) ^ 0x8FLL)) - 83) ^ 0xBF;
  LODWORD(v309) = (v309 ^ 0x1C) << 16;
  LODWORD(v308) = v308 + 1428013042;
  LODWORD(v298) = (v304 ^ (4 * v304)) ^ 0x73;
  LODWORD(STACK[0x54F0]) = v312;
  LODWORD(STACK[0x54C0]) = v298;
  LODWORD(v301) = v301 ^ (v312 << 24) ^ (16 * v308) ^ v298;
  LODWORD(STACK[0x54E0]) = v309;
  STACK[0x5550] = BYTE2(v306);
  LODWORD(STACK[0x5560]) = *(v316 + (BYTE2(v306) ^ 0x40));
  v320 = v318;
  LODWORD(STACK[0x5590]) = *(v318 + ((((v306 >> 24) & 0xFC ^ 0x229D9C325B42BFDELL) & ((v306 >> 24) & 3 ^ 0x33DDDEB2DFD2BFFFLL) | (v306 >> 24) & 1) ^ 0x229D9C325B42BF33));
  LODWORD(STACK[0x5510]) = *(v319 + (BYTE4(v306) ^ 0xBBLL));
  LODWORD(v312) = *(v311 + (BYTE5(v306) ^ 0xEBLL));
  LODWORD(v318) = ((v309 ^ 0xF569CB03 ^ v301) + 481042145 - 2 * ((v309 ^ 0xF569CB03 ^ v301) & 0x1CAC1EF5 ^ v301 & 0x14)) ^ v308;
  LODWORD(STACK[0x5540]) = v318;
  v321 = *(v316 + (BYTE6(v306) ^ 0xADLL));
  LODWORD(STACK[0x5520]) = *(v320 + (HIBYTE(v306) ^ 0x61));
  LODWORD(v298) = *(v319 + (v303 ^ 6));
  LODWORD(v302) = *(v311 + (BYTE1(v310) ^ 0x63));
  LOBYTE(v319) = *(v316 + (BYTE2(v310) ^ 0xD6));
  LOBYTE(v308) = *(v320 + (BYTE3(v310) ^ 0xBDLL));
  LODWORD(v285) = (v317 ^ 5) << 8;
  LODWORD(STACK[0x54B0]) = v285;
  LODWORD(v285) = v318 ^ v285;
  LODWORD(STACK[0x54D0]) = v285;
  LODWORD(v285) = v285 ^ 0x1CAC1EE1;
  v322 = *(&off_101353600 + v307 - 23068);
  v323 = STACK[0x5780];
  *(v323 + LODWORD(STACK[0x5640])) = (*(v322 + (BYTE1(v285) ^ 0x79)) + 26) ^ 0x62;
  DWORD1(v241) = STACK[0x55F0];
  LODWORD(v241) = STACK[0x55F0];
  LODWORD(v318) = (v241 >> 4) ^ ((v241 >> 4) << 6) ^ (16 * (v241 >> 4)) ^ LODWORD(STACK[0x5570]) ^ 0xD75A7C0F ^ (((v238 - 83) ^ 0x3B) << 24) ^ ((2 * (LODWORD(STACK[0x5570]) ^ 0xD75A7C0F)) | 0x521A1960) ^ (v315 + 1428013042) ^ (v313 + 1730780020) ^ (16 * (v315 + 1428013042));
  v324 = ((v293 ^ (BYTE1(v306) - ((v306 >> 7) & 0x78) + 60) ^ 0x85) << 16) ^ v318;
  v325 = *(&off_101353600 + v307 - 22492) - 4;
  LOBYTE(v293) = v325[BYTE2(v324) ^ 0x73] - 24;
  *(v323 + LODWORD(STACK[0x5710])) = v293 ^ 0xD0 ^ ((2 * v293) | 0x80);
  v326 = BYTE3(v318) ^ 0x3FLL;
  v327 = *(&off_101353600 + (v307 ^ 0x5EE5));
  *STACK[0x5630] = *(v327 + v326) ^ 0xB8;
  DWORD1(v241) = STACK[0x55E0];
  LODWORD(v241) = STACK[0x55E0];
  LODWORD(v298) = (v241 >> 4) ^ ((v241 >> 4) << 6) ^ (16 * (v241 >> 4)) ^ LODWORD(STACK[0x55A0]) ^ 0xD75A7C0F ^ ((2 * (LODWORD(STACK[0x55A0]) ^ 0xD75A7C0F)) | 0x521A1960) ^ (LODWORD(STACK[0x5580]) + 1730780020) ^ (((v298 - 83) ^ 0xF6) << 24) ^ (LODWORD(STACK[0x5530]) + 1428013042) ^ (16 * (LODWORD(STACK[0x5530]) + 1428013042));
  LOWORD(v320) = (((v319 - (((BYTE2(v310) ^ 0xB5) - 32) ^ BYTE2(v310) ^ 0xB5)) ^ 0xFD) << 8) ^ v298;
  v328 = *(&off_101353600 + (v307 ^ 0x5813));
  *(v323 + LODWORD(STACK[0x5660])) = (*(v328 + ((v320 ^ v308 ^ 0x76 ^ (4 * (v308 ^ 0x76))) ^ 0xF8)) - (v320 ^ v308 ^ 0x76 ^ (4 * (v308 ^ 0x76)) ^ 0x2D)) ^ 0xBC;
  LOBYTE(v319) = v325[((((v302 ^ (BYTE1(v310) - ((v310 >> 7) & 0x78) + 60) ^ 0x28) << 16) ^ v298) >> 16) ^ 0xB2] - 24;
  *(v323 + LODWORD(STACK[0x5720])) = v319 ^ 0x41 ^ ((2 * v319) | 0x80);
  DWORD1(v241) = STACK[0x5620];
  LODWORD(v241) = STACK[0x5620];
  LODWORD(v312) = (v241 >> 4) ^ ((v241 >> 4) << 6) ^ (16 * (v241 >> 4)) ^ LODWORD(STACK[0x55D0]) ^ (LODWORD(STACK[0x55C0]) + 1730780020) ^ (2 * LODWORD(STACK[0x55D0])) & 0xADE5E69E ^ (((LODWORD(STACK[0x5510]) - 83) ^ 0xA7) << 24) ^ (LODWORD(STACK[0x55B0]) + 1428013042) ^ (16 * (LODWORD(STACK[0x55B0]) + 1428013042)) ^ LOBYTE(STACK[0x5520]) ^ 0x3E ^ (4 * (LOBYTE(STACK[0x5520]) ^ 0x3E)) ^ ((v312 ^ (BYTE5(v306) - ((2 * BYTE5(v306)) & 0x78) + 60) ^ 0xBA) << 16) ^ (((v321 - (((BYTE6(v306) ^ 0xCE) - 32) ^ BYTE6(v306) ^ 0xCE)) ^ 0xBE) << 8);
  v329 = (v312 ^ 0x29E48507) - ((2 * (v312 ^ 0x29E48507)) & 0x94976F08) - 901007484;
  *(v323 + LODWORD(STACK[0x5650])) = (*(v322 + (BYTE1(v329) ^ 0x3FLL)) + 26) ^ 0xE9;
  LOBYTE(v319) = v325[BYTE2(v285) ^ 0xCLL] - 24;
  *(v323 + LODWORD(STACK[0x5700])) = v319 ^ 0x98 ^ ((2 * v319) | 0x80);
  *(v323 + LODWORD(STACK[0x5740])) = (*(v322 + (BYTE1(v320) ^ 0x68)) + 26) ^ 0x81;
  *(v323 + LODWORD(STACK[0x56E0])) = *(v327 + (HIBYTE(v329) ^ 0xCELL)) ^ 0x5A;
  LOBYTE(v325) = v325[BYTE2(v329) ^ 0xE8] - 24;
  *(v323 + LODWORD(STACK[0x5730])) = v325 ^ 0x41 ^ ((2 * v325) | 0x80);
  LOWORD(v325) = v324 ^ (((LODWORD(STACK[0x5560]) - (((STACK[0x5550] ^ 0x23) - 32) ^ STACK[0x5550] ^ 0x23)) ^ 0x6E) << 8) ^ 0xC0DF;
  *(v323 + LODWORD(STACK[0x5760])) = (*(v322 + (BYTE1(v325) ^ 0xC0)) + 26) ^ 0xCC;
  *(v323 + LODWORD(STACK[0x56D0])) = (*(v328 + (v285 ^ 0x4ELL)) - (v285 ^ 0x9B)) ^ 2;
  *(v323 + LODWORD(STACK[0x56F0])) = *(v327 + (BYTE3(v298) ^ 0xA6)) ^ 0xDF;
  *(v323 + LODWORD(STACK[0x5680])) = *(v327 + (HIBYTE(LODWORD(STACK[0x5540])) ^ 0xA2)) ^ 0xD9;
  LOBYTE(v298) = LOBYTE(STACK[0x5590]) ^ 0xC9 ^ (4 * (LOBYTE(STACK[0x5590]) ^ 0xC9));
  *(v323 + LODWORD(STACK[0x5750])) = (*(v328 + (((v312 ^ 7) - ((2 * (v312 ^ 7)) & 8) - 124) ^ 0xABLL)) - (v329 ^ 0x7E)) ^ 0xEB;
  LODWORD(v327) = (((LODWORD(STACK[0x5670]) ^ 0x5103C8FC) - 1359202556) ^ ((LODWORD(STACK[0x5670]) ^ 0xCE45025A) + 834338214) ^ ((LODWORD(STACK[0x5670]) ^ 0xE24AA95) - 237283989)) - 1113968416;
  LODWORD(v327) = ((v327 ^ 0xED627266) + 1051352325) ^ v327 ^ ((v327 ^ 0xB619C39D) + 1708256512) ^ ((v327 ^ 0xB8A79C99) + 1802482684) ^ ((v327 ^ 0xCFEBFDFF) + 472109726);
  *(v323 + LODWORD(STACK[0x56C0])) = (*(v328 + ((v325 ^ v298) ^ 9)) - (v325 ^ v298 ^ 0xDC)) ^ 0xA1;
  LODWORD(v325) = (((v327 ^ 0x93862176) - 785617368) ^ ((v327 ^ 0xC37145AC) - 2116351234) ^ ((v327 ^ 0x7CC0B447) + 1047198487)) - 2123987201;
  v330 = LODWORD(STACK[0x5600]) ^ (v325 < 0xF00426CC);
  v331 = LODWORD(STACK[0x5770]) > v325;
  if (v330)
  {
    v331 = STACK[0x5600];
  }

  return (*(STACK[0x57D8] + 8 * ((13 * (v331 ^ 1)) ^ v307)))();
}

uint64_t sub_1005D26EC()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x7AA8];
  STACK[0xB1D8] = STACK[0x7AA8];
  v2 = STACK[0x8404];
  LODWORD(STACK[0xBF58]) = STACK[0x8404];
  STACK[0x6828] = STACK[0x7608];
  STACK[0x9500] = STACK[0x9000];
  STACK[0x94B8] = 0;
  LODWORD(STACK[0x96CC]) = 103679699;
  STACK[0xB990] = 0;
  LODWORD(STACK[0xA3AC]) = 103679699;
  STACK[0x87F0] = 0;
  LODWORD(STACK[0xA770]) = 103679699;
  STACK[0xC430] = 0;
  LODWORD(STACK[0x99BC]) = 103679699;
  STACK[0x7690] = 0;
  LODWORD(STACK[0x699C]) = 103679699;
  if (v1)
  {
    v3 = v2 == v0 - 769906626;
  }

  else
  {
    v3 = 1;
  }

  v5 = v3 || STACK[0x73B0] == 0;
  return (*(STACK[0x57D8] + 8 * ((47 * v5) ^ LODWORD(STACK[0x2548]))))();
}

uint64_t sub_1005D27F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = v7 + (v8 << 7) + 48;
  v11 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v9);
  return (*(v11 + 8 * ((v9 + 4569) ^ v9)))(v10, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1005D2888()
{
  v0 = (STACK[0x51B8] - 22447746) & 0x1563EFB;
  STACK[0x5A60] = 0;
  LODWORD(STACK[0xB99C]) = -769884012;
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xB99C];
  LODWORD(STACK[0x9094]) = -32197398;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1005D2978()
{
  v0 = STACK[0x51B8] - 8885;
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9207)))(STACK[0x7980]);
  STACK[0x7980] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1005D29C0()
{
  v1 = STACK[0x57C0];
  *(v1 + 724) = STACK[0x57B0];
  *(v1 + 656) = 0;
  v2 = STACK[0x57D8];
  *(v1 + 216) = (*(STACK[0x57D8] + 8 * (v0 + 29025)))(48, 50, 581860260);
  *(v1 + 224) = 103679743;
  *(v1 + 260) = 21;
  *(v1 + 280) = 16;
  *(v1 + 572) = -769883980;
  *(v1 + 608) = -769883980;
  return (*(v2 + 8 * ((((v0 + 19623) | 0x16) ^ 0x5462) + v0)))();
}

uint64_t sub_1005D2AC0@<X0>(int a1@<W8>)
{
  v2 = a1 - 5101;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (a1 + 9207)))(v1);
  return (*(v3 + 8 * v2))(v4);
}

uint64_t sub_1005D2B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v7);
  return (*(v8 + 8 * (v7 + 3383)))(&STACK[0x5B40], a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1005D2BF8()
{
  v2 = 1607 * (STACK[0x51B8] ^ 0x5853);
  v3 = STACK[0x51B8] - 143135685;
  LODWORD(STACK[0xCFEC]) = v1;
  if (v0 == -994851647)
  {
    v4 = STACK[0x5700];
  }

  else
  {
    v4 = -143155722;
  }

  return (*(STACK[0x57D8] + 8 * (v3 ^ 0xF77857DE ^ (15764 * ((v2 ^ (((v4 - v3) | (v3 - v4)) < 0)) & 1)))))();
}

uint64_t sub_1005D2DA4()
{
  STACK[0xDA28] = 0;
  LODWORD(STACK[0xA0EC]) = v1;
  LOBYTE(STACK[0x5DFF]) = 0;
  return (*(STACK[0x57D8] + 8 * (v0 - 4927)))();
}

uint64_t sub_1005D2DF4()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))(v0);
  return (*(v1 + 8 * SLODWORD(STACK[0x1B0C])))(v2);
}

uint64_t sub_1005D2E24()
{
  v2 = STACK[0x6A08];
  LODWORD(STACK[0x98F4]) = -143155725;
  STACK[0x6230] = v2;
  LODWORD(STACK[0x6974]) = v1;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1005D2F7C()
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0x5AF4];
  LODWORD(STACK[0x9094]) = -32197487;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1005D2FF8()
{
  v3 = STACK[0x6A08];
  STACK[0xB420] = v2;
  LODWORD(STACK[0x8C54]) = v0;
  STACK[0x8EA0] = v3;
  LODWORD(STACK[0xBC38]) = -746967306;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1005D3064@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v7 = v6 - 1;
  *(a4 + v7) = *(a1 + v7) ^ *(v4 + v7) ^ (v7 * (v5 + 111)) ^ *(a2 + v7) ^ *(a3 + v7);
  return (*(STACK[0x57D8] + 8 * ((61 * (v7 != 0)) ^ v5)))();
}

uint64_t sub_1005D30EC()
{
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 + 4122)))(*(v0 + 3160) ^ 0xD21CD8C2 ^ (v1 + 1372025394) & 0xAE3879FF);
  *(v2 + 1296) = v4;
  return (*(v3 + 8 * ((29 * ((((v1 - 26530) ^ (v4 == 0)) & 1) == 0)) ^ v1)))();
}

uint64_t sub_1005D3174()
{
  v0 = STACK[0x7ED8];
  v1 = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x69C8] = v1;
  STACK[0x7ED8] = v0 + 16;
  *v1 = 0;
  *(v1 + 2) = -42971;
  return (*(STACK[0x57D8] + 8 * (STACK[0x51B8] - 18186)))();
}

uint64_t sub_1005D3240()
{
  v2 = STACK[0x51B8];
  v3 = STACK[0x51B8] - 1022;
  v4 = STACK[0xAA40];
  v5 = STACK[0x68F0];
  v6 = STACK[0x6F98];
  v7 = STACK[0xCC88];
  v8 = STACK[0x9D6C];
  v9 = 1379010179 * ((v1 - 74721342 - 2 * ((v1 - 240) & 0xFB8BD8B2)) ^ 0xDFDAE1DC);
  LODWORD(STACK[0x1D4C8]) = (STACK[0x51B8] + 847660746) ^ v9;
  STACK[0x1D4D0] = v7;
  STACK[0x1D4E0] = v5;
  STACK[0x1D4D8] = v4;
  STACK[0x1D4C0] = v6;
  LODWORD(STACK[0x1D4E8]) = v9 - 467101311 + v8 * (v0 ^ 0x6BB1E780);
  v10 = STACK[0x57D8];
  v11 = (*(STACK[0x57D8] + 8 * (v2 + 9236)))(v1 - 240);
  return (*(v10 + 8 * (((LODWORD(STACK[0x1D4EC]) == 221187128) * LODWORD(STACK[0x137C])) ^ v3)))(v11);
}

uint64_t sub_1005D3344@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v13 = v7 + v9 - 0x54D881F87AAFC08CLL;
  v14 = __ROR8__(v13 & 0xFFFFFFFFFFFFFFF8, 8);
  v15 = ((2 * (v14 - 0x67659A219E1678C8)) | 0xB2D01AAA65765CE8) - (v14 - 0x67659A219E1678C8) - 0x59680D5532BB2E74;
  v16 = __ROR8__(v15 ^ 0xF62C292F12F7ACE8, 8);
  v15 ^= 0x32FF07DC1DBB952CuLL;
  v17 = (v16 + v15 - ((2 * (v16 + v15)) & 0x1EAA427F4EF5DBC0) + 0xF55213FA77AEDE0) ^ 0x79299E2D69FD419DLL;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xBD6CE439E669F3DFLL;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = __ROR8__((a6 - ((v21 + v20) | a6) + ((v21 + v20) | 0xD2073105FA7AA4CCLL)) ^ 0xC81B7D9C5CC9725CLL, 8);
  v23 = (a6 - ((v21 + v20) | a6) + ((v21 + v20) | 0xD2073105FA7AA4CCLL)) ^ 0xC81B7D9C5CC9725CLL ^ __ROR8__(v20, 61);
  v24 = (0x83A3680881D007D7 - ((v22 + v23) | 0x83A3680881D007D7) + ((v22 + v23) | 0x7C5C97F77E2FF828)) ^ 0x24B33B3CB6F89E73;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ a3;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = *(STACK[0x57D8] + 8 * v8);
  v29 = (__ROR8__(v26, 8) + v27) ^ 0x8469B2E456434039;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = __ROR8__(v29, 8);
  LOBYTE(v30) = (((((2 * (v31 + v30)) & 0x1C845B0DE2CC0D10) - (v31 + v30) + 0x71BDD2790E99F977) ^ 0x7875B76362E3872DLL) >> (8 * (v13 & 7u))) ^ HIBYTE(a7) ^ 0xDC;
  v32 = __ROR8__((v13 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  *v13 = v30;
  v33 = ((2 * v32 + 0x3134CBBCC3D30E70) & 0xA26E1915127518C4) - v32 + 0x162E8D9714DBEC65;
  v34 = v33 ^ 0x18CD70F5689F101;
  v33 ^= 0xC55FF9FC59C5C8C5;
  v35 = (__ROR8__(v34, 8) + v33) ^ 0x767CBF12CE87AC7DLL;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xBD6CE439E669F3DFLL;
  v38 = __ROR8__(v37, 8);
  v39 = v37 ^ __ROR8__(v36, 61);
  v40 = (((2 * (v38 + v39)) | 0xEAE5A91756122E6) - (v38 + v39) + 0x78A8D2B7454F6E8DLL) ^ 0x9D4B61D11C0347E3;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ 0x58EFACCBC8D7665BLL;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = __ROR8__(v42, 8);
  v45 = (((2 * (v44 + v43)) | 0xA0805577281438ALL) - (v44 + v43) - 0x50402ABB940A1C5) ^ 0xF60EDE66302F2336;
  v46 = v45 ^ __ROR8__(v43, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ 0x8469B2E456434039;
  *(v13 + 1) = (((__ROR8__(v47, 8) + (v47 ^ __ROR8__(v46, 61))) ^ a1) >> (8 * ((v13 + 1) & 7))) ^ BYTE6(a7) ^ 0x24;
  v48 = __ROR8__((v13 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v49 = (0x67659A219E1678C7 - v48) & 0x883B7152DFE4991DLL | (v48 + a4) & 0x71C48EAD201B66E2;
  v50 = v49 ^ 0x277F5528FFA81B81;
  v49 ^= 0xE3AC7BDBF0E42245;
  v51 = (__ROR8__(v50, 8) + v49) ^ 0x767CBF12CE87AC7DLL;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ 0xBD6CE439E669F3DFLL;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = __ROR8__(v53, 8);
  v56 = __ROR8__((0x6B0C93426FB2C7F9 - ((v55 + v54) | 0x6B0C93426FB2C7F9) + ((v55 + v54) | 0x94F36CBD904D3806)) ^ 0x8EEF202436FEEE96, 8);
  v57 = (0x6B0C93426FB2C7F9 - ((v55 + v54) | 0x6B0C93426FB2C7F9) + ((v55 + v54) | 0x94F36CBD904D3806)) ^ 0x8EEF202436FEEE96 ^ __ROR8__(v54, 61);
  v58 = (0x808DD37CE7F8D9F7 - ((v56 + v57) | 0x808DD37CE7F8D9F7) + ((v56 + v57) | 0x7F722C8318072608)) ^ 0x279D8048D0D04053;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = __ROR8__(v58, 8);
  v61 = (((2 * (v60 + v59)) & 0x759AF7086AEA7046) - (v60 + v59) - 0x3ACD7B8435753824) ^ 0x363858B643E5452FLL;
  v62 = v61 ^ __ROR8__(v59, 61);
  v63 = (__ROR8__(v61, 8) + v62) ^ 0x8469B2E456434039;
  *(v13 + 2) = (((__ROR8__(v63, 8) + (v63 ^ __ROR8__(v62, 61))) ^ a1) >> (8 * ((v13 + 2) & 7))) ^ BYTE5(a7) ^ 0xA3;
  v64 = __ROR8__((v13 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v65 = ((2 * v64 + 0x3134CBBCC3D30E70) & 0x33C03A465DBA4930) - v64 - 0x387A830190C6ABD1;
  v66 = __ROR8__(v65 ^ 0xCF5BC6A6F16E59FBLL, 8);
  v65 ^= 0xB88E855FE22603FuLL;
  v67 = (v66 + v65) ^ 0x767CBF12CE87AC7DLL;
  v68 = v67 ^ __ROR8__(v65, 61);
  v69 = (__ROR8__(v67, 8) + v68) ^ 0xBD6CE439E669F3DFLL;
  v70 = v69 ^ __ROR8__(v68, 61);
  v71 = (__ROR8__(v69, 8) + v70) ^ a5;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ 0x58EFACCBC8D7665BLL;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ a3;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = (__ROR8__(v75, 8) + v76) ^ 0x8469B2E456434039;
  v78 = __ROR8__((v13 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  *(v13 + 3) = (((__ROR8__(v77, 8) + (v77 ^ __ROR8__(v76, 61))) ^ a1) >> (8 * ((v13 + 3) & 7))) ^ BYTE4(a7) ^ 0x8B;
  v79 = (v78 - 0x67659A219E1678C8) ^ 0x6B970A892F00BB58;
  v80 = (__ROR8__((v78 - 0x67659A219E1678C8) ^ 0xAF44247A204C829CLL, 8) + v79) ^ 0x767CBF12CE87AC7DLL;
  v81 = v80 ^ __ROR8__(v79, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ 0xBD6CE439E669F3DFLL;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ a5;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = __ROR8__(v84, 8);
  v87 = (v11 - ((v86 + v85) | v11) + ((v86 + v85) | 0xC9FED5562FD9AC5FLL)) ^ 0x9111799DE70ECA04;
  v88 = v87 ^ __ROR8__(v85, 61);
  v89 = (__ROR8__(v87, 8) + v88) ^ a3;
  v90 = v89 ^ __ROR8__(v88, 61);
  v91 = (__ROR8__(v89, 8) + v90) ^ 0x8469B2E456434039;
  *(v13 + 4) = (((__ROR8__(v91, 8) + (v91 ^ __ROR8__(v90, 61))) ^ a1) >> (8 * ((v13 + 4) & 7))) ^ BYTE3(a7) ^ 0x22;
  v92 = __ROR8__((v13 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v93 = ((2 * v92 + 0x3134CBBCC3D30E70) & 0xC117A8FA0F7281D6) - v92 + 0x2D9C5A4965D37DCLL;
  v94 = v93 ^ 0x34300FF8D80A3D88;
  v93 ^= 0xF0E3210BD746044CLL;
  v95 = __ROR8__(v94, 8);
  v96 = __ROR8__((v95 + v93 - ((2 * (v95 + v93)) & 0x62FEB9CE3A9A904CLL) - 0x4E80A318E2B2B7DALL) ^ 0xC703E3F5D3CAE45BLL, 8);
  v97 = (v95 + v93 - ((2 * (v95 + v93)) & 0x62FEB9CE3A9A904CLL) - 0x4E80A318E2B2B7DALL) ^ 0xC703E3F5D3CAE45BLL ^ __ROR8__(v93, 61);
  v98 = (v96 + v97) ^ 0xBD6CE439E669F3DFLL;
  v99 = v98 ^ __ROR8__(v97, 61);
  v100 = __ROR8__(v98, 8);
  v101 = (a2 - ((v100 + v99) | a2) + ((v100 + v99) | 0xE8DD16DC51F657C4)) ^ 0xF2C15A45F7458154;
  v102 = v101 ^ __ROR8__(v99, 61);
  v103 = __ROR8__(v101, 8);
  v104 = (((2 * (v103 + v102)) & 0x99162EBE02B4876) - (v103 + v102) + 0x7B374E8A0FEA5BC4) ^ 0x23D8E241C73D3D9FLL;
  v105 = v104 ^ __ROR8__(v102, 61);
  v106 = __ROR8__(v104, 8);
  v107 = __ROR8__((((2 * (v106 + v105)) | 0x674E2D93FC1DC564) - (v106 + v105) - 0x33A716C9FE0EE2B2) ^ 0xC0ADCA0477616041, 8);
  v108 = (((2 * (v106 + v105)) | 0x674E2D93FC1DC564) - (v106 + v105) - 0x33A716C9FE0EE2B2) ^ 0xC0ADCA0477616041 ^ __ROR8__(v105, 61);
  v109 = (((2 * (v107 + v108)) | 0x4619981F6B1B3882) - (v107 + v108) + 0x5CF333F04A7263BFLL) ^ 0x27657EEBE3CEDC78;
  v110 = v109 ^ __ROR8__(v108, 61);
  v111 = __ROR8__(v109, 8);
  *(v13 + 5) = (((0xB6F214879B845D03 - ((v111 + v110) | 0xB6F214879B845D03) + ((v111 + v110) | 0x490DEB78647BA2FCLL)) ^ 0x40C58E620801DCA6) >> (8 * ((v13 + 5) & 7))) ^ BYTE2(a7) ^ 0xF9;
  v112 = __ROR8__((v13 + 6) & 0xFFFFFFFFFFFFFFF8, 8);
  v113 = (0x67659A219E1678C7 - v112) & 0xBD8DB45A20D6A33CLL | (v112 + a4) & 0x40724BA5DF295CC3;
  v114 = v113 ^ 0x12C99020009A21A0;
  v113 ^= 0xD61ABED30FD61864;
  v115 = __ROR8__(v114, 8);
  v116 = (((v115 + v113) & 0x54AE2F043A74F6F8 ^ 0x50A0030438401670) + ((v115 + v113) ^ 0x8E0F3C58C6B7E88CLL) - (((v115 + v113) ^ 0x8E0F3C58C6B7E88CLL) & 0x54AE2F043A74F6F8)) ^ 0xACDDAC4E3244B209;
  v117 = v116 ^ __ROR8__(v113, 61);
  v118 = __ROR8__(v116, 8);
  v119 = (((2 * (v118 + v117)) | 0x13497AF1E1F9131ELL) - (v118 + v117) - 0x9A4BD78F0FC898FLL) ^ 0xB4C8594116957A50;
  v120 = v119 ^ __ROR8__(v117, 61);
  v121 = (__ROR8__(v119, 8) + v120) ^ a5;
  v122 = v121 ^ __ROR8__(v120, 61);
  v123 = __ROR8__(v121, 8);
  v124 = (0xB219BE5C37A402F0 - ((v123 + v122) | 0xB219BE5C37A402F0) + ((v123 + v122) | 0x4DE641A3C85BFD0FLL)) ^ 0x1509ED68008C9B54;
  v125 = v124 ^ __ROR8__(v122, 61);
  v126 = (__ROR8__(v124, 8) + v125) ^ a3;
  v127 = v126 ^ __ROR8__(v125, 61);
  v128 = __ROR8__(v126, 8);
  *(v13 + 6) = (((__ROR8__((((2 * (v128 + v127)) | 0x9812D2C61653DC88) - (v128 + v127) - 0x4C0969630B29EE44) ^ 0xC860DB875D6AAE7DLL, 8) + ((((2 * (v128 + v127)) | 0x9812D2C61653DC88) - (v128 + v127) - 0x4C0969630B29EE44) ^ 0xC860DB875D6AAE7DLL ^ __ROR8__(v127, 61))) ^ a1) >> (8 * ((v13 + 6) & 7))) ^ BYTE1(a7) ^ 0xF1;
  v129 = __ROR8__((v13 + 7) & 0xFFFFFFFFFFFFFFF8, 8);
  v130 = ((v129 - 0x67659A219E1678C8) | 0x9570125A4BACB307) - ((v129 - 0x67659A219E1678C8) | 0x6A8FEDA5B4534CF8) + 0x6A8FEDA5B4534CF8;
  v131 = v130 ^ 0x3A3436206BE0319BLL;
  v130 ^= 0xFEE718D364AC085FLL;
  v132 = (__ROR8__(v131, 8) + v130) ^ 0x767CBF12CE87AC7DLL;
  v133 = v132 ^ __ROR8__(v130, 61);
  v134 = __ROR8__(v132, 8);
  v135 = (v12 - ((v134 + v133) | v12) + ((v134 + v133) | 0xC4CC1B150074BC87)) ^ 0x79A0FF2CE61D4F58;
  v136 = v135 ^ __ROR8__(v133, 61);
  v137 = __ROR8__(v135, 8);
  v138 = (v10 - ((v137 + v136) | v10) + ((v137 + v136) | 0x1BE7524BE9DBEA55)) ^ 0x1FB1ED24F683CC5;
  v139 = v138 ^ __ROR8__(v136, 61);
  v140 = __ROR8__(v138, 8);
  v141 = (((2 * (v140 + v139)) & 0x1129ABD4244440D6) - (v140 + v139) - 0x894D5EA1222206CLL) ^ 0xAF8486DE250AB9CFLL;
  v142 = v141 ^ __ROR8__(v139, 61);
  v143 = (__ROR8__(v141, 8) + v142) ^ a3;
  v144 = v143 ^ __ROR8__(v142, 61);
  v145 = __ROR8__(v143, 8);
  v146 = (((2 * (v145 + v144)) | 0xDC2AF214CA18306ALL) - (v145 + v144) + 0x11EA86F59AF3E7CBLL) ^ 0x6A7CCBEE334F580CLL;
  *(v13 + 7) = (((__ROR8__(v146, 8) + (v146 ^ __ROR8__(v144, 61))) ^ a1) >> (8 * ((v13 + 7) & 7))) ^ a7 ^ 0xBA;
  return v28();
}

uint64_t sub_1005D4090()
{
  LODWORD(STACK[0xB544]) = v0;
  STACK[0xAE48] = STACK[0x9210];
  v3 = *STACK[0x45F8];
  v4 = *STACK[0x45F0];
  v5 = ((((v0 >> 4) ^ 0x8BECA6AF) - 1241107891) ^ (((v0 >> 4) ^ 0x637FDFE7) + 1586842373) ^ (((v0 >> 4) ^ 0xE5B2B141) - 665311837)) - 1095921911 + ((((3 * (v4 - v3)) & 0xB ^ 0xD7E7C0E) - 2024062446) ^ (((3 * (v4 - v3)) & 0xB ^ 0x36F7BF12) - 1127055090) ^ (((3 * (v4 - v3)) & 0xB ^ 0x3B89C31C) - 1314063100));
  v6 = (v5 ^ 0xF46DD5CD) & (2 * (v5 & 0x8661D5ED)) ^ v5 & 0x8661D5ED;
  v7 = ((2 * (v5 ^ 0xF42CFED5)) ^ 0xE49A5670) & (v5 ^ 0xF42CFED5) ^ (2 * (v5 ^ 0xF42CFED5)) & 0x724D2B38;
  v8 = v7 ^ 0x12452908;
  v9 = (v7 ^ 0x20480230) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0xC934ACE0) & v8 ^ (4 * v8) & 0x724D2B38;
  v11 = (v10 ^ 0x40042828) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x32490318)) ^ 0x24D2B380) & (v10 ^ 0x32490318) ^ (16 * (v10 ^ 0x32490318)) & 0x724D2B30;
  v13 = v11 ^ 0x724D2B38 ^ (v12 ^ 0x20402338) & (v11 << 8);
  LODWORD(STACK[0x8E2C]) = (16 * v5) ^ (32 * ((v13 << 16) & 0x24D0000 ^ v13 ^ ((v13 << 16) ^ 0x3380000) & (((v12 ^ 0x520D0838) << 8) & 0x24D0000 ^ 0x2440000 ^ (((v12 ^ 0x520D0838) << 8) ^ 0x52B0000) & (v12 ^ 0x520D0838)))) ^ 0x6EB839D0;
  v14 = (19 * ((v4 ^ v3) ^ 0x10)) & 0x17;
  if (v14 == 1)
  {
    v14 = 0;
  }

  LODWORD(STACK[0xB68C]) = v14;
  v15 = *STACK[0x51E8];
  v16 = *STACK[0x51F0];
  v17 = *(v16 + (v15 & 0x4D6A3650));
  v18 = *(v16 + (v15 & 0x717266A8));
  v19 = v1 - 397582826;
  v20 = 0x9229CB9DA04E67F9 * (*(STACK[0x5C70] - 0x30BDFED8F32E6509) - (v18 & 0x7FFFFFFFFFFFFFFFLL ^ 0x65E1552A8BFEE85ALL));
  v21 = STACK[0x2270];
  LODWORD(STACK[0x1D4D4]) = (v1 - 397582826) ^ STACK[0x2270];
  LODWORD(STACK[0x1D4CC]) = v21 + v1 + 1451493860;
  if (v20 <= 0xFFFFFFFF0358F9C6)
  {
    v22 = v21;
  }

  else
  {
    v22 = v21 + 1;
  }

  STACK[0x1D4D8] = v22;
  LODWORD(STACK[0x1D4E0]) = (v19 ^ 0xC9) + v21;
  LODWORD(STACK[0x1D4C8]) = (v19 ^ 0x10B1) - v21;
  STACK[0xA610] = (v17 & 0x7FFFFFFFFFFFFFFFLL ^ 0x2704F72CA3C40846) - 0x26DBAC877D49B24FLL;
  LODWORD(STACK[0x1D4D0]) = v21;
  STACK[0x1D4C0] = v21;
  v23 = v1 + 9182;
  v24 = STACK[0x57D8];
  v25 = (*(STACK[0x57D8] + 8 * v23))(v2 - 240);
  return (*(v24 + 8 * SLODWORD(STACK[0x1D4E4])))(v25);
}

uint64_t sub_1005D4470()
{
  v2 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * (v1 ^ 0x52C0)))();
  (*(v2 + 8 * (v1 ^ 0x52C0)))(*(v0 + 112));
  (*(v2 + 8 * (v1 + 19776)))(STACK[0x57B0]);
  (*(v2 + 8 * (v1 ^ 0x52C0)))(*(v0 + 120));
  return (*(v2 + 8 * v1))(STACK[0x5790]);
}

uint64_t sub_1005D4530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v7);
  return (*(v8 + 8 * (v7 ^ 0x5D8B2064 ^ ((v7 + 17370923) | 0x5C82229A))))(a1, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1005D4654@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v11 = v8 + a7;
  v12 = v8 + a7 + 47;
  v13 = *(*v10 + ((*v9 & ((v12 & 0xFFFFFFF8) + a2)) & 0xFFFFFFFFFFFFFFF8));
  v14 = __ROR8__(v12 & 0xFFFFFFFFFFFFFFF8, 8);
  v15 = STACK[0x4124];
  v16 = (v14 + v13 - (((LODWORD(STACK[0x4124]) + 8757) - 0x1C35CCFCD8E7C0CCLL) & (2 * (v14 + v13))) + 0x71E51981938C4BC5) ^ 0x85F348C80CD277A2;
  v17 = v16 ^ __ROR8__(v13, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ a5;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ a3;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ a1;
  v23 = __ROR8__(v22, 8);
  v24 = v22 ^ __ROR8__(v21, 61);
  v25 = (v23 + v24) ^ a6;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ a4;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = v8 - 1;
  v31 = (((2 * (v29 + v28)) | 0x2F80180AC476CEF2) - (v29 + v28) + 0x683FF3FA9DC49887) ^ 0xC84DE03BC1A36D62;
  *(v11 + 47) = *(v7 + v30) ^ (((__ROR8__(v31, 8) + (v31 ^ __ROR8__(v28, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * (v12 & 7u))) ^ 0xF;
  return (*(STACK[0x57D8] + 8 * ((7 * (v30 == 0)) ^ v15)))();
}

uint64_t sub_1005D484C()
{
  LODWORD(STACK[0x98F4]) = -143113071;
  STACK[0x6230] = v1;
  LODWORD(STACK[0x6974]) = -942168283;
  return (*(STACK[0x57D8] + 8 * (v0 - 17575)))();
}

uint64_t sub_1005D4C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(STACK[0xE340] + (v3 - 671763643)) ^ 0xF | ((*(STACK[0xE340] + (v3 - 671763644)) ^ 0xF) << 8);
  v6 = (v5 ^ 0x2FE2) + ((v5 << ((v4 + 72) ^ 0x6B)) & 0x5FC4) - 2240;
  LOWORD(STACK[0xE3BE]) = v6;
  LODWORD(STACK[0xE3C0]) = v3 + 540808329;
  v7 = v6 & 0x52B2 ^ 0xCD7A;
  v8 = (v6 ^ (2 * ((v6 ^ 0x58DC) & (2 * ((v6 ^ 0x58DC) & (2 * ((v6 ^ 0x58DC) & (2 * ((v6 ^ 0x58DC) & (2 * ((v6 ^ 0x58DC) & (2 * ((v6 ^ 0x58DC) & (2 * ((v6 ^ 0x58DC) & (2 * ((v6 ^ 0x58DC) & (2 * ((v6 ^ 0x58DC) & (2 * ((v6 ^ 0x58DC) & (2 * ((v6 ^ 0x58DC) & (2 * ((v6 ^ 0x58DC) & (2 * ((v6 ^ 0x58DC) & (2 * v7) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7))) ^ 0xD21CD226;
  LODWORD(STACK[0xE3C4]) = v8;
  return (*(STACK[0x57D8] + 8 * (((((v6 - v4) | (v4 - v6)) & 0x8000) >> 14) ^ 2 | v4 ^ 0x3F7A)))(a1, a2, a3, v8);
}

uint64_t sub_1005D4DB0(int a1)
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xBE4C];
  LODWORD(STACK[0x9094]) = a1 + 32;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1005D4E98()
{
  v1 = STACK[0x57D8];
  STACK[0x5838] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 - 13278 + ((v0 + 1694644834) & 0x9AFDFF7F))))();
}

uint64_t sub_1005D5010()
{
  LODWORD(STACK[0x4A70]) = STACK[0x4B88] & 0xFFFFFFF8;
  v2 = STACK[0x4AC8] - 31246;
  STACK[0x5248] = (STACK[0x4B38] + v1) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(STACK[0x4A68]) = v2 ^ 0x1888;
  v3 = ((LODWORD(STACK[0x53D0]) - v2) | (v2 - LODWORD(STACK[0x53D0]))) >= 0;
  v4 = STACK[0x4FC0] + v0;
  LODWORD(STACK[0x4AB8]) = *v4;
  STACK[0x4A98] = v4 & 0xFFFFFFFFFFFFFFF8;
  STACK[0x4AA0] = __ROR8__(v4 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x4AB0] = 8 * (v4 & 7);
  STACK[0x4A90] = *STACK[0x51E8];
  STACK[0x4AA8] = *STACK[0x51F0];
  LODWORD(STACK[0x4A60]) = v2;
  return (*(STACK[0x57D8] + 8 * (((2 * v3) | (4 * v3)) ^ (v2 + 27633))))();
}

uint64_t sub_1005D50F0()
{
  v0 = STACK[0x51B8] - 20226;
  STACK[0x7ED8] += (5169 * (STACK[0x51B8] ^ 0x5854)) ^ 0xFFFFFFFFFFFFD7D2;
  return (*(STACK[0x57D8] + 8 * ((4663 * (LODWORD(STACK[0xB364]) == -143113071)) ^ v0)))();
}

uint64_t sub_1005D52B4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v7 = v6 - 1;
  *(a2 + v7) = *(v4 + (v7 & 0xF)) ^ *(a1 + v7) ^ *((v7 & 0xF) + v2 + 3) ^ (27 * (v7 & 0xF)) ^ *((v7 & 0xF) + v5 + 1);
  return (*(STACK[0x57D8] + 8 * ((25595 * (v7 == ((v3 + 6777) | 0x852u) - 22614)) ^ v3)))();
}

void *sub_1005D532C()
{
  STACK[0x92B0] = *(*STACK[0x51F0] + (*STACK[0x51E8] & 0x4B905A90)) & (STACK[0x51B8] - 22613 + 0x7FFFFFFFFFFFFFFELL) ^ 0x1412FC33B664102CLL;
  v0 = STACK[0x57D8];
  v1 = STACK[0x2754];
  STACK[0x8F80] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x2754]));
  return (*(v0 + 8 * (v1 ^ 0x265D)))(&STACK[0x92B0]);
}

uint64_t sub_1005D542C@<X0>(int a1@<W8>)
{
  v2 = STACK[0x9AA4];
  if (!v1)
  {
    v2 = -769884012;
  }

  LODWORD(STACK[0x9F78]) = v2;
  return (*(STACK[0x57D8] + 8 * ((((((a1 - 7635) | 0x5854) - 18310) ^ 0x681E) * v1) ^ a1)))();
}

uint64_t sub_1005D56F0()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  return (*(v2 + 8 * v1))(v3);
}