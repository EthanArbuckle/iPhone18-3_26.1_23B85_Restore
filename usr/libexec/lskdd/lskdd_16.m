uint64_t sub_1003F2830()
{
  v2 = STACK[0xB4F8];
  *(v2 + 304) = STACK[0xA7D8];
  *(v2 + 312) = 16;
  *(v2 + 320) = STACK[0x8E50];
  *(v2 + 328) = 20;
  *(v2 + 336) = STACK[0x91A8];
  *(v2 + 344) = STACK[0xAD64];
  *(v2 + 352) = STACK[0x8168];
  *(v2 + 360) = STACK[0x6B1C];
  *(v2 + 368) = *(STACK[0x8438] + 8);
  *(v2 + 376) = *STACK[0x6D70];
  *(v2 + 384) = 0;
  *(v2 + 392) = 0;
  *(v2 + 400) = STACK[0x9A90];
  *(v2 + 408) = &STACK[0x1D14C];
  *(v2 + 416) = 2;
  *(v2 + 424) = &STACK[0x7630];
  *(v2 + 432) = &STACK[0x7D74];
  STACK[0x1D4C8] = v2 + 304;
  LODWORD(STACK[0x1D4C0]) = v0 - 1089234077 * ((((v1 - 240) | 0x1459CBD3) - (v1 - 240) + ((v1 - 240) & 0xEBA63428)) ^ 0xF40417AB) + 1554482641;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x6EA1)))(v1 - 240);
  return (*(v3 + 8 * v0))(v4);
}

uint64_t sub_1003F298C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x5370]) = v7;
  LODWORD(STACK[0x55A0]) = a7;
  if (v8 == ((v10 - 9001) ^ 0x3B1889AD))
  {
    v11 = v9;
  }

  else
  {
    v11 = 61;
  }

  LODWORD(STACK[0x5320]) = v11;
  return (*(STACK[0x57D8] + 8 * v10))(a1, a2, a3, a4, a5, 1756924801);
}

uint64_t sub_1003F2A10()
{
  v1 = STACK[0x7700];
  v2 = *(STACK[0x7700] + 8);
  v3 = STACK[0x7F88];
  v3[1] = v2;
  *v3 = *v1;
  return (*(STACK[0x57D8] + 8 * (((((v2 == 0) ^ (81 * (v0 ^ 0x1B))) & 1) * ((525 * (v0 ^ 0x7529)) ^ 0x1ECF)) ^ v0)))();
}

uint64_t sub_1003F2A78()
{
  LODWORD(STACK[0x5CF4]) = 0;
  STACK[0x74B0] = 4;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x2440)))(&STACK[0x1D1CD], &STACK[0x8B0C], &STACK[0x74B0], 0, 0);
  v4 = STACK[0x2CE8];
  LODWORD(STACK[0x1D4C4]) = (551690071 * STACK[0x2CE8]) ^ (v0 - 966451972) ^ 0xD15;
  LODWORD(STACK[0x1D4C0]) = (v0 - 1079089617) ^ (551690071 * v4);
  v5 = v0 - 966451972 - 551690071 * v4;
  LODWORD(STACK[0x1D4C8]) = v5 - 76;
  STACK[0x1D4D8] = -551690071 * v4;
  LODWORD(STACK[0x1D4D0]) = 551690071 * v4;
  STACK[0x1D4E0] = 551690071 * v4 + v3;
  LODWORD(STACK[0x1D4CC]) = v5;
  v6 = (*(v2 + 8 * (v0 + 9201)))(v1 - 240);
  return (*(v2 + 8 * SLODWORD(STACK[0x1D4D4])))(v6);
}

uint64_t sub_1003F2BBC()
{
  v1 = STACK[0x57D8];
  STACK[0x7CA8] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 - 20743 + v0 + 20014)))();
}

uint64_t sub_1003F2C64()
{
  v1 = STACK[0x1CBC];
  STACK[0xC4C0] = STACK[0x9F40];
  LODWORD(STACK[0x5C5C]) = STACK[0x5BB4];
  *(v0 + 181) = STACK[0xAA8C];
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1003F2D8C()
{
  v0 = STACK[0x51B8] ^ 0x5E4B;
  v1 = STACK[0x51B8] ^ 0x6391;
  v2 = STACK[0x8AD8];
  *v2 = 0;
  v2[1] = 0;
  return (*(STACK[0x57D8] + 8 * ((32550 * ((v0 ^ 0xC123DBE5) < 0x983D30C8)) ^ (v0 - 5925 + v1))))();
}

uint64_t sub_1003F2E18()
{
  v1 = STACK[0x57D8];
  STACK[0xC098] = *(STACK[0x57D8] + 8 * (v0 - 22526));
  return (*(v1 + 8 * ((v0 - 20366) ^ (v0 - 22526) ^ (14566 * ((v0 + 1490107982) < 0x6FF05C50)))))();
}

uint64_t sub_1003F2E7C()
{
  v1 = STACK[0x7ED8];
  v2 = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0xBCC0] = v2;
  STACK[0xA020] = (v2 + 120);
  STACK[0x7ED8] = v1 + 240;
  return (*(STACK[0x57D8] + 8 * (v0 - 6729)))(&STACK[0x7974]);
}

uint64_t sub_1003F2F08(int a1)
{
  v6 = v5 ^ 0x5832A67D ^ LODWORD(STACK[0x56C0]) ^ v2;
  v7 = LODWORD(STACK[0x5630]) ^ a1 ^ (((v1 + 193) | 0x1002) + 1199489709);
  v8 = LODWORD(STACK[0x5620]) ^ v4 ^ (((v1 - 5121) | 0x4D00) + 844045047);
  v9 = v5 ^ 0x1F66FF56 ^ LODWORD(STACK[0x56E0]) ^ v3;
  v10 = STACK[0x57C0];
  v11 = ((((6272 * v7) >> 2) & 0xFFFF3FFF | ((((49 * v7) >> 9) & 3) << 14)) >> 5) | ((((6272 * v7) >> 2) | ((49 * v7) >> 11)) << 11);
  v12 = STACK[0x57B0];
  v13 = v5 ^ 0x852337B ^ LODWORD(STACK[0x56D0]) ^ ((*(v10 + (49 * BYTE2(v7) - 1152 * (((178409 * BYTE2(v7)) >> 16) >> 6))) << 16) | (*(v10 + (49 * HIBYTE(v8) - 1152 * (((178409 * HIBYTE(v8)) >> 16) >> 6))) << 24) | *(v10 + (49 * v6 - 1152 * (((178409 * v6) >> 16) >> 6))) | (*(v10 + (49 * BYTE1(v9) - 1152 * (((178409 * BYTE1(v9)) >> 16) >> 6))) << 8));
  v14 = v5 ^ 0xFC839A3 ^ LODWORD(STACK[0x5660]) ^ (*(v10 + (49 * v8 - 1152 * (((178409 * v8) >> 16) >> 6))) | (*(v10 + (49 * HIBYTE(v7) - 1152 * (((178409 * HIBYTE(v7)) >> 16) >> 6))) << 24) | (*(v10 + (49 * BYTE1(v6) - 1152 * (((178409 * BYTE1(v6)) >> 16) >> 6))) << 8) | (*(v10 + (49 * BYTE2(v9) - 1152 * (((178409 * BYTE2(v9)) >> 16) >> 6))) << 16));
  v15 = v5 ^ 0xCE35F755 ^ LODWORD(STACK[0x5670]) ^ (*(v10 + (49 * v9 - 1152 * (((178409 * v9) >> 16) >> 6))) | (*(v10 + (49 * HIBYTE(v6) - 1152 * (((178409 * HIBYTE(v6)) >> 16) >> 6))) << 24) | (*(STACK[0x57C0] + (49 * BYTE2(v8) - 1152 * (((178409 * BYTE2(v8)) >> 16) >> 6))) << 16) | (*(STACK[0x57C0] + (49 * BYTE1(v7) - 1152 * (((178409 * BYTE1(v7)) >> 16) >> 6))) << 8));
  v16 = v5 ^ 0xFD9C4D46 ^ LODWORD(STACK[0x5680]) ^ (*(STACK[0x57C0] + (v11 - 1152 * ((v11 & 0x3FFFu) / 0x480))) | (*(v10 + (49 * BYTE2(v6) - 1152 * (((178409 * BYTE2(v6)) >> 16) >> 6))) << 16) | (*(v10 + (49 * HIBYTE(v9) - 1152 * (((178409 * HIBYTE(v9)) >> 16) >> 6))) << 24) | (*(v10 + (49 * BYTE1(v8) - 1152 * (((178409 * BYTE1(v8)) >> 16) >> 6))) << 8));
  v17 = (STACK[0x5710] + (LODWORD(STACK[0x57B0]) + LODWORD(STACK[0x5650])));
  v17[11] = v13 - 2 * (v13 & 0xF) + 15;
  v17[2] = BYTE1(v16) - ((v16 >> 7) & 0x1E) + 15;
  v17[15] = v14 - 2 * (v14 & 0xF) + 15;
  v17[6] = BYTE1(v15) - ((v15 >> 7) & 0x1E) + 15;
  v17[4] = (~(v15 >> 23) | 0xE1) + HIBYTE(v15) + 16;
  v17[10] = BYTE1(v13) - ((v13 >> 7) & 0x1E) + 15;
  v17[13] = BYTE2(v14) - ((v14 >> 15) & 0x1E) + 15;
  *v17 = HIBYTE(v16) - ((v16 >> 23) & 0x1E) + 15;
  v17[8] = HIBYTE(v13) - ((v13 >> 23) & 0x1E) + 15;
  v17[7] = v15 - 2 * (v15 & 0xF) + 15;
  v17[3] = v16 - 2 * (v16 & 0xF) + 15;
  v17[9] = BYTE2(v13) - ((v13 >> 15) & 0x1E) + 15;
  v17[12] = HIBYTE(v14) - ((v14 >> 23) & 0x1E) + 15;
  v17[5] = BYTE2(v15) - ((v15 >> 15) & 0x1E) + 15;
  v17[1] = BYTE2(v16) - ((v16 >> 15) & 0x1E) + 15;
  v17[14] = BYTE1(v14) - ((v14 >> 7) & 0x1E) + 15;
  return (*(STACK[0x57D8] + 8 * (v1 ^ (98 * (LODWORD(STACK[0x5640]) > v12 + 16)))))(LODWORD(STACK[0x5730]));
}

uint64_t sub_1003F3470()
{
  v4 = STACK[0x51B8];
  v5 = STACK[0x51B8] - 22614;
  v6 = STACK[0x6EC8];
  v7 = 1534937323 * (v0 ^ 0xCD7888C2C6EEFB47);
  *(v2 + 612) = (STACK[0x51B8] - 971858487) ^ v7;
  *(v2 + 592) = v6 ^ v7;
  *(v2 + 604) = v7 + 1451493860 + v4;
  *(v2 + 616) = v7;
  *(v2 + 600) = (v5 ^ 0xC612E657) - v7;
  *(v2 + 624) = v4 - 971858487 + v7 + 92;
  *(v2 + 608) = v7;
  v8 = STACK[0x57D8];
  v9 = (*(STACK[0x57D8] + 8 * (v4 + v1)))(v3 - 240);
  return (*(v8 + 8 * *(v2 + 628)))(v9);
}

uint64_t sub_1003F3528()
{
  v6 = STACK[0x51B8];
  v7 = STACK[0x51B8] + v4;
  v8 = LODWORD(STACK[0x9758]);
  v9 = STACK[0x51B8] + v1;
  v10 = ((STACK[0x1070] - (v0 | 0x5FE2284C2EC47B91) + 0x5FE2284C2EC47B91) ^ 0xD180857D9FD6D739) * v3;
  *(v2 + 604) = v7 - v10 - 1466908170;
  *(v2 + 624) = v10 + 3404521692u;
  *(v2 + 600) = v7 - v10 - 1466908162;
  *(v2 + 608) = v10;
  *(v2 + 596) = (v7 - 1466904754) ^ v10;
  *(v2 + 616) = v8 - v10;
  *(v2 + 592) = v9 ^ v10;
  v11 = STACK[0x57D8];
  v12 = (*(STACK[0x57D8] + 8 * (v6 + 9201)))(v5 - 240);
  return (*(v11 + 8 * *(v2 + 612)))(v12);
}

uint64_t sub_1003F3718()
{
  v5 = STACK[0x7590];
  v6 = STACK[0x1884];
  v7 = (((v3 | 0x67341E8BE84B055ALL) - (v3 & 0x67341E8BE84B055ALL)) ^ 0x16A94C45A6A6560DLL) * v2;
  *(v1 + 608) = v7;
  *(v1 + 616) = v5 - v7;
  *(v1 + 624) = v7 - 0x537B3EBB2B1C68ECLL;
  *(v1 + 600) = (v6 ^ 0x27) - v7;
  *(v1 + 596) = v7 ^ LODWORD(STACK[0x1880]);
  *(v1 + 592) = v0 ^ v7;
  *(v1 + 604) = v6 - v7;
  v8 = STACK[0x57D8];
  v9 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9201)))(v4 - 240);
  return (*(v8 + 8 * *(v1 + 612)))(v9);
}

uint64_t sub_1003F3838(uint64_t a1)
{
  v3 = STACK[0x9930];
  LOBYTE(STACK[0x6013]) = 12;
  STACK[0xA6A0] = STACK[0x9A08];
  LODWORD(STACK[0x8A2C]) = STACK[0xBD6C];
  STACK[0x6E28] = v3;
  STACK[0x5908] = &STACK[0x64B8];
  STACK[0x8E78] = &STACK[0x86E0];
  LODWORD(STACK[0x9058]) = 8;
  LODWORD(STACK[0xCF24]) = v2 + 8;
  return (*(STACK[0x57D8] + 8 * v1))(a1, &STACK[0x1D270], &STACK[0x67A7]);
}

uint64_t sub_1003F397C@<X0>(unint64_t a1@<X8>)
{
  v4 = STACK[0x57D8];
  STACK[0xD5F8] = *(STACK[0x57D8] + 8 * v3);
  return (*(v4 + 8 * ((46 * (a1 > v1 + 3)) ^ v2)))();
}

uint64_t sub_1003F39E0()
{
  STACK[0xAF90] = STACK[0x8438];
  LODWORD(STACK[0x88FC]) = 2083993372;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1003F3AD8@<X0>(uint64_t a1@<X5>, int a2@<W6>, int a3@<W7>, uint64_t a4@<X8>)
{
  v14 = (v6 + 18154);
  v15 = v4 + (v8 - 423963511);
  v16 = a4 + (v7 + v8);
  v17 = *v13 & 0xFFFFFFFFFFFFFFF8;
  v18 = *(*v12 + (((v15 & 0xFFFFFFF8) + a3) & v17));
  v19 = __ROR8__(v15 & 0xFFFFFFFFFFFFFFF8, 8);
  v20 = (v19 + v18 + (v14 ^ 0x4FBB2E87D14B4D80) - ((2 * (v19 + v18)) & 0x9F765D0FA2962BACLL)) ^ 0xBBAD7FCE4E1529B1 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__((v19 + v18 + (v14 ^ 0x4FBB2E87D14B4D80) - ((2 * (v19 + v18)) & 0x9F765D0FA2962BACLL)) ^ 0xBBAD7FCE4E1529B1, 8) + v20) ^ v10;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (((2 * ((v23 + v22) ^ 0xD5148B5030000AEDLL)) & 0xDE64F5B193D6AF2ELL) - ((v23 + v22) ^ 0xD5148B5030000AEDLL) - 0x6F327AD8C9EB5798) ^ 0x67ACDAB03E219B1ELL;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ a1;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (0xCB56354923F88318 - ((v28 + v27) | 0xCB56354923F88318) + ((v28 + v27) | 0x34A9CAB6DC077CE7)) ^ 0xF37403401042CBC6;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (((2 * (v31 + v30)) | 0xA91067CE5EB72ACCLL) - (v31 + v30) + 0x2B77CC18D0A46A9ALL) ^ 0x7CAE134276894F1ELL;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = __ROR8__(v32, 8);
  v35 = *(*v12 + (((v16 & 0x8C28FC08 | 0x73D703F1) + a3 + (v16 & 0x73D703F0 | 0x8C28FC0F)) & v17));
  v36 = __ROR8__(v16 & 0xFFFFFFFFFFFFFFF8, 8);
  v37 = (0x56A308929B65A41CLL - ((v36 + v35) | 0x56A308929B65A41CLL) + ((v36 + v35) | 0xA95CF76D649A5BE3)) ^ 0x5D4AA624FBC46784;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (((2 * ((v39 + v38) ^ 0x2AF8A473C61B628ALL)) & 0xFCB33E568BB420C6) - ((v39 + v38) ^ 0x2AF8A473C61B628ALL) - 0x7E599F2B45DA1064) ^ 0xBE6C864940CEE75FLL;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ v9;
  v43 = (((2 * (v34 + v33)) | 0xBC73FB80ECDAE1FALL) - (v34 + v33) + 0x21C6023F89928F03) ^ 0x81B411FED5F57AE6;
  v44 = v42 ^ __ROR8__(v41, 61);
  v45 = (__ROR8__(v42, 8) + v44) ^ a1;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ v11;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = __ROR8__(v47, 8);
  v50 = __ROR8__(v43, 8) + (v43 ^ __ROR8__(v33, 61));
  v51 = __ROR8__((((2 * (v49 + v48)) | 0x19C3649002A60EDELL) - (v49 + v48) + 0x731E4DB7FEACF891) ^ 0x24C792ED5881DD17, 8);
  v52 = (((2 * (v49 + v48)) | 0x19C3649002A60EDELL) - (v49 + v48) + 0x731E4DB7FEACF891) ^ 0x24C792ED5881DD17 ^ __ROR8__(v48, 61);
  v53 = (((2 * (v51 + v52)) | 0xF6E11C31DABD1A6ELL) - (v51 + v52) - 0x7B708E18ED5E8D37) ^ 0x24FD62264EC6872CLL;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = __ROR8__(v53, 8);
  *v16 = (((((2 * v50) & 0x362E8DB4AC8A0A72) - v50 + 0x64E8B925A9BAFAC6) ^ 0xA52B71F70D7FB2EELL) >> (8 * (v15 & 7u))) ^ (((v55 + v54 - ((2 * (v55 + v54)) & 0x81EBE793F2E01A6ALL) - 0x3F0A0C36068FF2CBLL) ^ 0x1363B1B5DB5451DLL) >> (8 * (v16 & 7u))) ^ *v15;
  v56 = v8 + a2 < v5;
  if (v5 < 0x66F16B4D != (v8 + a2) < 0x66F16B4D)
  {
    v56 = v5 < 0x66F16B4D;
  }

  return (*(STACK[0x57D8] + 8 * ((9101 * v56) ^ v6)))();
}

uint64_t sub_1003F40B0()
{
  STACK[0x1D4C0] = v0;
  LODWORD(STACK[0x1D4C8]) = (v1 - 1723133771) ^ (1917435887 * ((2 * (((v2 - 240) ^ 0x1414E9D8) & 0x8DC3E08) - ((v2 - 240) ^ 0x1414E9D8) - 148651529) ^ 0x58C7329));
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 + 9178)))(v2 - 240);
  return (*(v3 + 8 * (v1 - 7601)))(v4);
}

uint64_t sub_1003F41A8()
{
  STACK[0x1D4C0] = v0;
  LODWORD(STACK[0x1D4C8]) = v1 - 289235981 * ((((v2 - 240) | 0x838B9FA3) - ((v2 - 240) & 0x838B9FA3)) ^ 0x4094F9C) + 6019;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x407E)))(v2 - 240);
  return (*(v3 + 8 * (((*STACK[0x4C48] == 0) * ((((v1 + 2091065276) & 0x835CFC77) - 20074) ^ (62 * (v1 ^ 0x3D7F)))) ^ v1)))(v4);
}

uint64_t sub_1003F426C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v8);
  return (*(v9 + 8 * ((13917 * ((v8 ^ 0x99B23173) >= v7 + 2044)) ^ (v8 + 3415))))(a1, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1003F4460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, unsigned int a3@<W4>, int a4@<W8>)
{
  v6 = (a4 - 318865721) & 0x13016DFD;
  v7 = a2 + a3;
  v8 = *(v4 + (((v7 & (v6 - 25728) ^ 0x9CAA2931) - 577630231 + ((2 * (v7 & (v6 - 25728))) & 0x39545260)) & v5));
  v9 = (v8 + __ROR8__(v7 & (v6 - 25728), 8)) ^ 0xB88801D4E1C76353;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0x38C8B16AE7056877;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = __ROR8__(v11, 8);
  v14 = (v13 + v12 - ((2 * (v13 + v12)) & 0x31A0A84B4856B826) + 0x18D05425A42B5C13) ^ 0xFD50E55828EEB942;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0xE1A1FD5BD155F97ALL;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0xDA604B0C03A2BF99;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0xFA35E2CDCB3E31C7;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0xD2F00CE620E5D3AELL;
  return (*(STACK[0x57D8] + 8 * (a4 ^ (98 * (STACK[0x57A0] & 1)))))(a1, (((__ROR8__(v22, 8) + (v22 ^ __ROR8__(v21, 61))) ^ 0xF4730B31AE70757BLL) >> (8 * (v7 & 7u))) ^ *v7);
}

uint64_t sub_1003F4628()
{
  v1 = STACK[0x924C];
  v2 = STACK[0xC958];
  LODWORD(STACK[0x831C]) = -769884012;
  LODWORD(STACK[0x7864]) = v1;
  LODWORD(STACK[0xA4E0]) = v2;
  LODWORD(STACK[0x5834]) = -769884012;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1003F46F4()
{
  v0 = STACK[0x1F78];
  v1 = STACK[0x57D8];
  STACK[0xB880] = *(STACK[0x57D8] + 8 * STACK[0x1F78]);
  return (*(v1 + 8 * ((v0 + 8917) ^ v0)))();
}

uint64_t sub_1003F4864@<X0>(int a1@<W8>)
{
  v2 = STACK[0x57D8];
  v3 = *(STACK[0x57D8] + 8 * a1);
  v4 = STACK[0x51B8];
  STACK[0x1D4C8] = STACK[0x4190];
  LODWORD(STACK[0x1D4C0]) = (v4 + 1717148634) ^ (1964904101 * ((((2 * (v1 - 240)) | 0x44EC174) - (v1 - 240) + 2111348550) ^ 0x78058B3E));
  v5 = (*(v2 + 8 * (v4 ^ 0x2413)))(v1 - 240);
  return v3(v5);
}

uint64_t sub_1003F48EC()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x2110E566)))();
  return (*(v1 + 8 * ((5888 * (v0 < 0x6CC9AA50)) ^ (v0 - 554733045))))(v2);
}

uint64_t sub_1003F4940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(STACK[0x57D8] + 8 * (v6 ^ 0x8DC2687D ^ (54975 * (v6 > (v6 ^ 0x5D027C3A)))));
  v8 = STACK[0x5650];
  STACK[0x55C0] = STACK[0x5650] - 0x7BF76E9FFFF5DEAFLL;
  STACK[0x55D0] = v8 - 0x7BF76E9FFFF5DEA7;
  return v7(a1, a2, a3, a4, a5, a6, 0);
}

uint64_t sub_1003F49C0()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x565D)))(v1);
  *STACK[0xAB88] = v3;
  return (*(v2 + 8 * (((v3 != 0) * (207 * (v0 ^ 0x2A2A) - 14881)) ^ v0)))();
}

uint64_t sub_1003F4A28()
{
  STACK[0xE7A0] = v2;
  v3 = STACK[0x8220];
  STACK[0xE7A8] = STACK[0x8220];
  return (*(STACK[0x57D8] + 8 * (((v2 - v3 > 9) * (v0 + ((v1 + 52431819) | 0x80814830) + 14 * (v1 ^ 0x2464) + 216)) ^ v1)))();
}

uint64_t sub_1003F4AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v10 = v9 - 22613 + 3 * (v7 ^ a7);
  v11 = v9 + 1565260001 < v8;
  if (v8 < 0x5D4BF8E0 != v10 > 0xFFFFFFFFA2B4071FLL)
  {
    v11 = v8 < 0x5D4BF8E0;
  }

  return (*(STACK[0x57D8] + 8 * ((8175 * !v11) ^ v7)))();
}

uint64_t sub_1003F4B44(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = *(a5 + 8);
  v21 = v20 + 4 * v10;
  v22 = v20 + 4 * (v10 + 1);
  v23 = *STACK[0x51F0];
  v24 = *STACK[0x51E8] & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v23 + (((v22 & 0xFFFFFFF8) + LODWORD(STACK[0x57B0])) & v24));
  v26 = (__ROR8__(v22 & 0xFFFFFFFFFFFFFFF8, 8) + v25) ^ a4;
  v27 = __ROR8__(v26, 8);
  v28 = v26 ^ __ROR8__(v25, 61);
  v29 = (v27 + v28) ^ v17;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ v19;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ v13;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ v16;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (((2 * (v37 + v36)) | 0xF4009B7F41669A8ELL) - (v37 + v36) + 0x5FFB2405F4CB2B9) ^ 0xA8F1C5F6B86B9BE5;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ v6;
  v41 = *(v23 + (((v21 & 0xFFFFFFF8 & v5) + (v21 & 0xFFFFFFF8 | v5) + 1075727003) & v24));
  v42 = __ROR8__(v21 & 0xFFFFFFFFFFFFFFF8, 8);
  v43 = (v7 - ((v41 + v42) | v7) + ((v41 + v42) | 0x4529FB6113CECD66)) ^ 0xF57E8F5AC26638DALL;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ v17;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ v19;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ v13;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ v16;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ v14;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ v6;
  v56 = __ROR8__(v55, 8) + (v55 ^ __ROR8__(v54, 61));
  v57 = v20 + v9;
  v58 = *(v23 + (v24 & ((v57 & 0xFFFFFFF8) - 133448597)));
  LODWORD(v22) = (((__ROR8__(v40, 8) + (v40 ^ __ROR8__(v39, 61))) ^ v18) >> (8 * (v22 & 7u))) ^ *v22;
  v59 = (__ROR8__(v57 & 0xFFFFFFFFFFFFFFF8, 8) + v58) ^ a4;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = __ROR8__(v59, 8);
  v62 = (v12 - ((v61 + v60) | v12) + ((v61 + v60) | 0x31748258954A4CC8)) ^ 0xBB33F31466C60B4BLL;
  v63 = v62 ^ __ROR8__(v60, 61);
  v64 = __ROR8__(v62, 8);
  v65 = (v64 + v63 - ((2 * (v64 + v63)) & 0x50627D3CA0AA9B22) + 0x28313E9E50554D91) ^ 0x8A5ADAE44A3C62E1;
  v66 = v65 ^ __ROR8__(v63, 61);
  v67 = __ROR8__(v65, 8);
  v68 = __ROR8__((v8 - ((v67 + v66) | v8) + ((v67 + v66) | 0x3551405A0DBE9B27)) ^ 0x29525762E918DA23, 8);
  v69 = (v8 - ((v67 + v66) | v8) + ((v67 + v66) | 0x3551405A0DBE9B27)) ^ 0x29525762E918DA23 ^ __ROR8__(v66, 61);
  v70 = (((2 * (v68 + v69)) | 0xCE97472FAB240428) - (v68 + v69) + 0x18B45C682A6DFDECLL) ^ 0x9A41693D3C7E3A09;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = (__ROR8__(v70, 8) + v71) ^ v14;
  v73 = v72 ^ __ROR8__(v71, 61);
  v74 = __ROR8__(v72, 8);
  LODWORD(v22) = ((2 * v22) << ~v11) | (((((((2 * v56) | 0xE6B5C029DA8F7ALL) - v56 + 0x7F8CA51FEB12B843) ^ 0x11CDD7088371F9FDuLL) >> (8 * (v21 & 7u))) ^ *v21) >> v11);
  v75 = (v15 - ((v74 + v73) | v15) + ((v74 + v73) | 0x8F0F80FEB1D63407)) ^ 0x842FF29040200EA8;
  *v57 = (((__ROR8__(v75, 8) + (v75 ^ __ROR8__(v73, 61))) ^ v18) >> (8 * (v57 & 7u))) ^ v22;
  return (*(STACK[0x57D8] + 8 * ((30198 * (a3 == 0)) ^ a2)))();
}

uint64_t sub_1003F4F60()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))(v1);
  return (*(v2 + 8 * (v0 ^ 0x3F07)))(v3);
}

uint64_t sub_1003F4FFC()
{
  v2 = STACK[0x1A28];
  LODWORD(STACK[0xDA50]) = v0;
  LODWORD(STACK[0xDA4C]) = v1;
  return (*(STACK[0x57D8] + 8 * (v2 ^ 0xA4EC4460 ^ (24006 * (v2 < 0x292FF2B7)))))();
}

uint64_t sub_1003F5070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(STACK[0x57D8] + 8 * (v7 - 6877));
  STACK[0x54E0] = (a2 & 0xFFFFFFF0) - 16;
  STACK[0x5490] = a2 & 0xFFFFFFF0;
  v9 = a5 + v5 + a3 + v6 + a2;
  STACK[0x54D0] = v9 + 0x25032A5D00BAFB6;
  return v8(0xA199F9AE5F876A45, a2, 0x224C09CA440C0C0BLL, 16 - (a2 & 0xFFFFFFF0), v9 + 0x25032A5D00BAFC6, a4 + a2, v9 + 0x25032A5D00BAFB7, v9 + 0x25032A5D00BAFB8);
}

uint64_t sub_1003F528C@<X0>(int a1@<W8>)
{
  v4 = STACK[0x8C30];
  STACK[0xCF30] += 16;
  STACK[0xD6B0] = v1;
  STACK[0xD6A8] = v3;
  STACK[0xD6D0] = v2 + 0x3B6C83FFA83C8794;
  STACK[0xD6C0] = v1;
  return (*(STACK[0x57D8] + 8 * ((19946 * (v4 == v1)) ^ a1)))();
}

void *sub_1003F532C@<X0>(unint64_t a1@<X8>)
{
  v4 = STACK[0x57D8];
  STACK[0x6E58] = *(STACK[0x57D8] + 8 * v1);
  STACK[0x5BA8] = a1;
  STACK[0xB780] = v3;
  LODWORD(STACK[0x7174]) = -769884012;
  LODWORD(STACK[0xA5A8]) = -769884012;
  STACK[0xAE50] = 0;
  LODWORD(STACK[0xA49C]) = 0;
  STACK[0x5B10] = 0;
  LODWORD(STACK[0xA04C]) = 1280;
  v5 = STACK[0x7ED8];
  STACK[0x8B68] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v5 + ((v2 + 794581417) & 0xD0A37F3F ^ 0x316FLL);
  STACK[0xB798] = 0;
  LODWORD(STACK[0xB27C]) = -769884012;
  STACK[0xBEC8] = 0;
  return (*(v4 + 8 * ((v2 - 21906) ^ 0x16EA)))(&STACK[0xBEC8]);
}

uint64_t sub_1003F5990@<X0>(uint64_t a1@<X5>, unint64_t a2@<X8>)
{
  v4 = __ROR8__(a2 & 0xFFFFFFFFFFFFFFF8, 8);
  v5 = (v4 + 2 * (v2 ^ 0x2887u) + 0x639B6E8EBC44B0A9) & 0x74AD2B2108178780 | (0x1C64917143BAF700 - v4) & 0x8B52D4DEF7E8787FLL;
  v6 = v5 ^ 0x8E34F6B63E3A6ED2;
  v5 ^= 0x92EF82C3DC12292DLL;
  v7 = (__ROR8__(v6, 8) + v5) ^ a1;
  v8 = v7 ^ __ROR8__(v5, 61);
  v9 = __ROR8__(v7, 8);
  v10 = (((2 * (v9 + v8)) | 0xFE86D126B1C4F3B4) - (v9 + v8) - 0x7F43689358E279DALL) ^ 0x6F7B0CA67A2F6E48;
  v11 = v10 ^ ((v8 << ((v3 == 0) ^ 3u)) | (v8 >> 61));
  v12 = __ROR8__(v10, 8);
  v13 = (((2 * (v12 + v11)) & 0xB0D44B7071B84F6ALL) - (v12 + v11) - 0x586A25B838DC27B6) ^ 0x1863185CE62D977DLL;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (v15 + v14 - ((2 * (v15 + v14)) & 0x87FF0DD304FE0270) - 0x3C0079167D80FEC8) ^ 0x5B7D61CE5948CEACLL;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0x5FD252103B569EALL;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (v20 + v19 - ((2 * (v20 + v19)) & 0x4E3A768518582194) - 0x58E2C4BD73D3EF36) ^ 0xDC4B1D77B2082B60;
  *a2 = (((__ROR8__(v21, 8) + (v21 ^ __ROR8__(v19, 61))) ^ 0xAF1BD4ED8A66164BLL) >> (8 * (a2 & 7u))) ^ 0x1F;
  return (*(STACK[0x57D8] + 8 * (v2 ^ 0x1344)))();
}

uint64_t sub_1003F5CF0(__n128 a1)
{
  v5.n128_u64[0] = (v2 + 13) & 0xF;
  v5.n128_u64[1] = (v2 + 12) & 0xF;
  v6.n128_u64[0] = (v2 + 11) & 0xF;
  v6.n128_u64[1] = (v2 + 10) & 0xF;
  v7.n128_u64[0] = (v2 + 9) & 0xF;
  v7.n128_u64[1] = v4 & 0xF ^ 1;
  v8.n128_u64[0] = (v2 + 7) & 0xF;
  v8.n128_u64[1] = (v2 + 6) & 0xF;
  v9.n128_u64[0] = (v2 + 5) & 0xF;
  v9.n128_u64[1] = (v2 + 4) & 0xF;
  v10.n128_u64[0] = (v2 + 3) & 0xF;
  v10.n128_u64[1] = (v2 + 2) & 0xF;
  v11.n128_u64[0] = (v2 + 1) & 0xF;
  v11.n128_u64[1] = v2 & 0xF;
  return (*(STACK[0x57D8] + 8 * v3))((v2 + 14) & 0xF, v1 - 15, (v2 & 0x10) - 16, a1, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1003F5DE4()
{
  v0 = STACK[0x51B8] - 8702;
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))(STACK[0x94A8]);
  STACK[0x94A8] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1003F5E2C()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x51B8] - 1805;
  v2 = STACK[0x51B8] - 19758;
  v3 = STACK[0x57D8];
  STACK[0xCF38] = *(STACK[0x57D8] + 8 * v2);
  return (*(v3 + 8 * (v1 ^ v2 ^ 0x57E9 ^ (7760 * ((v0 + 711319405) < 0xDF33D7CB)))))();
}

uint64_t sub_1003F5F18()
{
  v1 = STACK[0x51B8];
  STACK[0xA6B0] = v0;
  return (*(STACK[0x57D8] + 8 * (v1 - 5326)))();
}

uint64_t sub_1003F5F40()
{
  v3 = ((v0 ^ 0xEA2A3C88) - 1141331019) ^ ((v0 ^ 0x74099C12) + 635112239) ^ ((v0 ^ 0x4ADD3E8B) + 454011320);
  v4 = (((v3 + 11) ^ (14 - v3) ^ (((v3 + 11) ^ 0xC) + 11) ^ (((v3 + 11) ^ 0xE) + 9)) ^ ((((((v0 ^ 0x88) - 75) ^ ((v0 ^ 0x12) + 47) ^ ((v0 ^ 0x8B) - 72)) + 11) ^ (v1 + 9) ^ 2) + 3)) & 0xF;
  v6 = v3 == -2060711634 || v4 != 9;
  return (*(v2 + 8 * ((50 * v6) | v1)))();
}

uint64_t sub_1003F6090(unint64_t a1)
{
  STACK[0x7410] = a1;
  v2 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * ((v1 + 4612) ^ v1)))();
}

uint64_t sub_1003F6128()
{
  v1 = v0 - 14552;
  v2 = STACK[0x8510];
  STACK[0xE610] = STACK[0x8510];
  v3 = STACK[0x7EA0];
  v4 = *(v2 - 0x1883660EE814440ALL) + LODWORD(STACK[0x686C]);
  v5 = *(v2 - 0x1883660EE814440ELL);
  LODWORD(STACK[0xE61C]) = v4 - 2101965948;
  v4 -= 1975319141;
  v6 = v4 < 0x84D5EE93;
  v7 = v5 + 126646807 < v4;
  if (v6 != (v5 + 126646807) < 0x84D5EE93)
  {
    v7 = v6;
  }

  v8 = v3 == 0 || v7;
  if (v8)
  {
    v9 = -143155721;
  }

  else
  {
    v9 = -143113071;
  }

  LODWORD(STACK[0xE620]) = v9;
  return (*(STACK[0x57D8] + 8 * ((195 * !v8) ^ v1)))();
}

uint64_t sub_1003F622C()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  STACK[0xB318] = 0;
  return (*(v1 + 8 * (v0 - 13063)))(v2);
}

uint64_t sub_1003F6268()
{
  LODWORD(STACK[0x76A4]) = -769884012;
  v1 = STACK[0x57D8];
  STACK[0xB200] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * ((((v0 - 562768765) & 0x218B3FA7) + 11271) ^ v0)))();
}

uint64_t sub_1003F6470()
{
  v1 = STACK[0x51B8] - 16051;
  v2 = (STACK[0x51B8] + 1375502199) & 0xFFE32FBF;
  v3 = *(STACK[0x7C08] + 216);
  v4 = *(STACK[0x7C08] + 352);
  v5 = *(STACK[0x7C08] + 368);
  v6 = STACK[0x8BB0];
  v7 = *(STACK[0x7C08] + 4);
  v8 = *(STACK[0x7C08] + 16);
  v9 = *(STACK[0x7C08] + 244);
  v10 = *(STACK[0x7C08] + 760);
  v11 = *STACK[0x51E8];
  v12 = *STACK[0x51F0];
  v13 = 0x7A74DAC21B3C5F96 - 0x6C2CFBF4C45FCC49 * (*(STACK[0x7C08] + 752) - (*(v12 + (v11 & 0xA66FDD90)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x7E38F0E06E9D52ELL));
  v14 = STACK[0x7C08] + 196;
  v15 = STACK[0x7C08] + 228;
  v16 = *(STACK[0x7C08] + 796);
  LODWORD(STACK[0x68E4]) = *STACK[0x7C08];
  STACK[0x5E10] = 0;
  STACK[0xAC88] = v3;
  LODWORD(STACK[0xAA28]) = v4;
  STACK[0x7480] = v14;
  STACK[0x72C0] = v5;
  v17 = ((v13 ^ 0x255DFEC0D5691BC2) - 0x5F292402CE554454) ^ v13 ^ ((v13 ^ (v2 - 0x59AE71260E0239D1)) + 0x23DAABE7A71E6DD6) ^ ((v13 ^ 0x687512F2663327FLL) - 0x7CF38BED3D5F6DE9) ^ ((v13 ^ 0xFFFFFBF7ABEBBB97) + 0x7A74DECA4F281BFFLL);
  STACK[0x6118] = STACK[0x8FA8];
  STACK[0xBB78] = v6;
  LODWORD(STACK[0x7FEC]) = v0;
  LODWORD(STACK[0x787C]) = v7;
  STACK[0x7418] = v8;
  STACK[0x64A8] = 0;
  STACK[0xA4B0] = 0;
  STACK[0xCCF0] = 0;
  STACK[0xB038] = 0;
  STACK[0xAF10] = &STACK[0x5D80];
  STACK[0x7FF0] = 0;
  LODWORD(STACK[0xA524]) = -769884012;
  STACK[0x9010] = 0x67310FA72B6EDB77 * (((v17 ^ 0xE36CCCB8363386BCLL) - 0x4B51F2A470E6C135) ^ ((v17 ^ 0xC97DC0DD8E71C355) - 0x6140FEC1C8A484DCLL) ^ ((v17 ^ 0x5065D6A7A37E1A7FLL) + 0x7A717441A54A20ALL)) - 0x352952AB7C4A690ELL;
  STACK[0x7C00] = v15;
  LODWORD(STACK[0xA1D0]) = v9;
  LODWORD(STACK[0xA5BC]) = (*(v12 + (v11 & 0x2D5887C)) & 0x7FFFFFFF ^ 0x39E8D924) + 139967035 * (((v10 ^ 0xFA60AC78) + 94327688) ^ ((v10 ^ 0xB9312589) + 1187961463) ^ ((v10 ^ 0x914D0965) + 1857222299)) + 1950951964;
  LODWORD(STACK[0x8458]) = v16;
  LODWORD(STACK[0x7E3C]) = -1066788876;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1003F68A8()
{
  v0 = STACK[0x1CE4];
  v1 = STACK[0x57D8];
  STACK[0x7CA8] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1CE4]));
  return (*(v1 + 8 * (v0 ^ 0x1889 ^ (12927 * ((v0 ^ 0xA84257EB) == -1958877371)))))();
}

uint64_t sub_1003F69E8()
{
  v1 = *(STACK[0xCCD8] + 24);
  STACK[0xAFF8] = v1;
  return (*(STACK[0x57D8] + 8 * (((v1 == 0) * (((v0 + 191895477) & 0xF48FDE7F) + (v0 ^ 0xFFFFC58E))) ^ v0)))();
}

uint64_t sub_1003F6AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0x5790];
  v5 = 233 * (STACK[0x5790] ^ 0x15ED);
  v6 = *STACK[0x51F0];
  v7 = *STACK[0x51E8] & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v6 + (v7 & STACK[0x56E0]));
  v9 = STACK[0x5620];
  v10 = __ROR8__((v8 + v9 - ((2 * (v8 + v9)) & 0x4E87618C749EEEA4) + 0x2743B0C63A4F7752) ^ 0x9FCBB112DB881401, 8);
  v11 = (v8 + v9 - ((2 * (v8 + v9)) & 0x4E87618C749EEEA4) + 0x2743B0C63A4F7752) ^ 0x9FCBB112DB881401 ^ __ROR8__(v8, 61);
  v12 = (((v5 - 0x4CC068F8BE57D420) & (2 * (v10 + v11))) - (v10 + v11) + 0x2660347C5F2BDF23) ^ 0x1EA88516B82EB754;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0xE580B17D8CC5E551;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (((2 * (v16 + v15)) & 0x20F8FAD36DCF0158) - (v16 + v15) + 0x6F83829649187F53) ^ 0x8E227FCD984D8629;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xDA604B0C03A2BF99;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (((2 * (v21 + v20)) & 0x91D46C1E2E5B01EALL) - (v21 + v20) + 0x3715C9F0E8D27F0ALL) ^ 0xCD202B3D23EC4ECDLL;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ a3;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  STACK[0x5700] = 0xDB5564FA9E0F964CLL - ((v26 + v25) | 0xDB5564FA9E0F964CLL) + ((v26 + v25) | 0x24AA9B0561F069B3);
  STACK[0x57C0] = v7;
  STACK[0x5710] = v6;
  v27 = *(v6 + (v7 & ((v3 ^ 0x6252D5B6) + 401171300 + ((2 * v3) & 0xC4A5AB60))));
  v28 = __ROR8__((((2 * (v27 + v9)) & 0x1A792FD8501F9048) - (v27 + v9) - 0xD3C97EC280FC825) ^ 0x4A4B69C736375488, 8);
  v29 = (((2 * (v27 + v9)) & 0x1A792FD8501F9048) - (v27 + v9) - 0xD3C97EC280FC825) ^ 0x4A4B69C736375488 ^ __ROR8__(v27, 61);
  v30 = (v28 + v29) ^ 0x38C8B16AE7056877;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0xE580B17D8CC5E551;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0xE1A1FD5BD155F97ALL;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = __ROR8__((0x4F204C93F7422741 - ((v36 + v35) | 0x4F204C93F7422741) + ((v36 + v35) | 0xB0DFB36C08BDD8BELL)) ^ 0x6ABFF8600B1F6727, 8);
  v38 = (0x4F204C93F7422741 - ((v36 + v35) | 0x4F204C93F7422741) + ((v36 + v35) | 0xB0DFB36C08BDD8BELL)) ^ 0x6ABFF8600B1F6727 ^ __ROR8__(v35, 61);
  v39 = (((2 * (v37 + v38)) | 0xD5441D37641715F8) - (v37 + v38) - 0x6AA20E9BB20B8AFCLL) ^ 0x9097EC567935BB3BLL;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ a3;
  STACK[0x56F0] = __ROR8__(v41, 8) + (v41 ^ __ROR8__(v40, 61));
  v42 = *(STACK[0x57D8] + 8 * v4);
  STACK[0x57B0] = v5;
  return v42(a1, a2, LODWORD(STACK[0x3FF0]));
}

uint64_t sub_1003F6EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x2E78];
  v4 = STACK[0x2E78] + 24167;
  v5 = STACK[0x57D8];
  STACK[0x65D8] = *(STACK[0x57D8] + 8 * STACK[0x2E78]);
  return (*(v5 + 8 * (v3 - 11873 + v4)))(113, a2, a3, 108, 4294945851);
}

uint64_t sub_1003F6FA4()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x241B)))(v1);
  return (*(v2 + 8 * (v0 - 14040)))(v3);
}

uint64_t sub_1003F6FD4()
{
  v1 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (((v0 << 6) ^ 0x7727) + v0)))();
}

uint64_t sub_1003F7014@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  STACK[0xCF30] = v3 + 16;
  LODWORD(STACK[0xD854]) = 0;
  STACK[0xD838] = a1;
  v4 = STACK[0x53A0];
  STACK[0xD808] = STACK[0x53A0];
  return (*(STACK[0x57D8] + 8 * (v2 | (a2 != v4) | (4 * (a2 != v4)))))();
}

uint64_t sub_1003F71BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0x51B8];
  LODWORD(STACK[0xC410]) = 813006153;
  return (*(STACK[0x57D8] + 8 * (v7 - 13555)))(a1, 21553, 840133462, 2090271397, a5, 4294947640, a7, 1280);
}

uint64_t sub_1003F7210(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *(STACK[0x57D8] + 8 * (((v4 < ((a4 + 2664) | 0x1101u) - 15137) * (((a4 + 285730875) | 0x80311510) + 1858527984)) ^ a4));
  *&STACK[0x5780] = vdupq_n_s64(v5);
  *&STACK[0x5770] = vdupq_n_s64(0x12F935AAB1860845uLL);
  *&STACK[0x5740] = vdupq_n_s64(v6);
  *&STACK[0x5730] = vdupq_n_s64(0xE1C85EE578AC8EC3);
  *&STACK[0x57C0] = vdupq_n_s64(0xB23A7CD5B50039BELL);
  *&STACK[0x57B0] = vdupq_n_s64(0xA6E2C195257FE321);
  *&STACK[0x57A0] = vdupq_n_s64(0x6D92E444F0054A2uLL);
  *&STACK[0x5790] = vdupq_n_s64(0xA11546BAC485FC9CLL);
  *&STACK[0x5720] = vdupq_n_s64(0xBFE87BE3EA1051B0);
  *&STACK[0x5710] = vdupq_n_s64(0xC5A5AAD63E28C3A2);
  *&STACK[0x5700] = vdupq_n_s64(0xE2D2D56B1F1461D1);
  *&STACK[0x56F0] = vdupq_n_s64(0x499295D052705972uLL);
  *&STACK[0x56E0] = vdupq_n_s64(0xA4C94AE829382CB9);
  *&STACK[0x56D0] = vdupq_n_s64(0x99E18830D34B5E05);
  return v7();
}

uint64_t sub_1003F7470@<X0>(int a1@<W0>, int a2@<W1>, unint64_t a3@<X2>, int a4@<W3>, char a5@<W4>, unint64_t a6@<X5>, unint64_t a7@<X6>, int a8@<W7>, unint64_t a9@<X8>)
{
  STACK[0x9518] = v12;
  STACK[0x82B0] = v20;
  STACK[0x8238] = v14;
  LODWORD(STACK[0xC620]) = v18;
  LODWORD(STACK[0x6F60]) = a1;
  LODWORD(STACK[0x924C]) = v11;
  STACK[0xA508] = a3;
  LODWORD(STACK[0x6AB4]) = a4;
  STACK[0x5DD0] = v15;
  STACK[0x68D8] = v21;
  LODWORD(STACK[0x7918]) = a2;
  STACK[0x8648] = v19;
  STACK[0x5F70] = v9;
  LODWORD(STACK[0x6F10]) = v10;
  STACK[0xA760] = v16;
  LODWORD(STACK[0xBF94]) = v13;
  LODWORD(STACK[0x6B58]) = v22;
  STACK[0xA0D8] = a6;
  LODWORD(STACK[0xB7FC]) = a8;
  LOBYTE(STACK[0x6F37]) = a5;
  STACK[0xB020] = a7;
  v24 = STACK[0x7ED8];
  v25 = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x62F0] = v25;
  v26 = (v25 + 64);
  STACK[0xB5D0] = (v25 + 64);
  STACK[0x7ED8] = v24 + 112;
  STACK[0xA6D0] = a9;
  LODWORD(STACK[0x7BA8]) = -769884028;
  STACK[0x7AC0] = 0;
  LODWORD(STACK[0x8C08]) = -769884012;
  LODWORD(STACK[0x5BD8]) = 1522742687;
  v27 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * (v17 + 9221)))();
  STACK[0x6428] = 0;
  LODWORD(STACK[0xB0BC]) = -769884012;
  (*(v27 + 8 * (v17 ^ 0x240D)))(v26, 0, 48);
  STACK[0xCA60] = v26;
  LODWORD(STACK[0xC958]) = *(v20 - 0x79296B4A625EDC74) - 769884012 - ((2 * *(v20 - 0x79296B4A625EDC74)) & 0x128);
  LOBYTE(STACK[0x9493]) = 0xF726234C92AC6E47 * *v19 == 0x291872199EE7C0FFLL;
  v28 = (*(v27 + 8 * (v17 ^ 0x2468)))(101);
  STACK[0xA638] = v28;
  v29 = STACK[0x3AF8];
  LODWORD(STACK[0x1D4CC]) = v17 - STACK[0x3AF8] - 740088615;
  LODWORD(STACK[0x1D4C0]) = (v17 - 1079089617) ^ v29;
  STACK[0x1D4E0] = v29;
  STACK[0x1D4D8] = v28 - v29;
  LODWORD(STACK[0x1D4C4]) = (v17 - 740090978) ^ v29;
  LODWORD(STACK[0x1D4D0]) = v29;
  LODWORD(STACK[0x1D4C8]) = v17 - v29 - 740088675;
  v30 = (*(v27 + 8 * (v17 ^ 0x2411)))(v23 - 240);
  return (*(v27 + 8 * SLODWORD(STACK[0x1D4D4])))(v30);
}

uint64_t sub_1003F77FC()
{
  v0 = STACK[0x1470];
  v1 = STACK[0x1470] + 4207;
  v2 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * STACK[0x1470]);
  return (*(v2 + 8 * (v0 ^ 0x295 ^ v1)))();
}

uint64_t sub_1003F792C(int a1)
{
  v1 = *(STACK[0xA758] + 8);
  v2 = STACK[0xA058];
  v3 = (&STACK[0x10120] + STACK[0x7ED8]);
  STACK[0x7ED8] += 16;
  *v3 = 0xC86ABA709793CD7ALL;
  v3[1] = 0x90B5B4C33994FDB9;
  STACK[0xCF30] += 544;
  STACK[0xD078] = v2;
  STACK[0xD080] = v1;
  return (*(STACK[0x57D8] + 8 * (((v3 == v1) * ((a1 + 209145759) ^ 0xC77B8E5)) ^ a1)))();
}

uint64_t sub_1003F7A40()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0xE5DCAF67)))();
  return (*(v1 + 8 * ((21500 * (v0 == -323728107)) ^ (v0 + 438525480))))(v2);
}

uint64_t sub_1003F7AA0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, char a7@<W8>)
{
  v10 = a7 - 29 - v8;
  v11 = STACK[0x5E80];
  v12 = STACK[0x5E80] + (v7 + 46);
  v13 = STACK[0x51E8];
  v14 = STACK[0x29E0];
  v15 = STACK[0x51F0];
  v16 = *(*STACK[0x51F0] + (*STACK[0x51E8] & (LODWORD(STACK[0x29E0]) - 13644) & (a2 + (v12 & 0x90EDF90 | 0xF6F12069) + (v12 & 0xF6F12068 | 0x90EDF96) + 1)));
  v17 = (__ROR8__(v12 & 0xFFFFFFFFFFFFFFF8, 8) + v16) ^ v9;
  v18 = __ROR8__(v17, 8);
  v19 = v17 ^ __ROR8__(v16, 61);
  v20 = (((2 * (v18 + v19)) & 0xCEB8B0089EEAD5C8) - (v18 + v19) - 0x675C58044F756AE5) ^ 0x8D91E5158C7AFF52;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ a4;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ a1;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ a6;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ a5;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ a3;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  *v12 = (((v32 + v31 - ((2 * (v32 + v31)) & 0x7531952D082288B2) + 0x3A98CA9684114459) ^ 0xFB5B024420D40C71) >> (8 * (v12 & 7u))) ^ 0x52;
  v33 = v11 + (v7 + 47);
  v34 = *(*v15 + ((*v13 & ((v33 & 0xFFFFFFF8) + a2)) & 0xFFFFFFFFFFFFFFF8));
  v35 = (v34 + __ROR8__(v33 & 0xFFFFFFFFFFFFFFF8, 8)) ^ v9;
  v36 = __ROR8__(v35, 8);
  v37 = v35 ^ __ROR8__(v34, 61);
  v38 = (((2 * (v36 + v37)) & 0x9E5416D1A5AE2862) - (v36 + v37) + 0x30D5F4972D28EBCELL) ^ 0x25E7B67911D88187;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ a4;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v40, 8);
  v43 = (((2 * (v42 + v41)) & 0x343470F188445F12) - (v42 + v41) - 0x1A1A3878C4222F8ALL) ^ 0x4ADD341560ECABLL;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ a6;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ a5;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ a3;
  v50 = __ROR8__(v49, 8);
  v51 = __ROR8__(v48, 61);
  *v33 = (((((2 * (v50 + (v49 ^ v51))) & 0xE0C26E3C1AC1E40ELL) - (v50 + (v49 ^ v51)) + 0xF9EC8E1F29F0DF8) ^ 0xCE5D0033565A45D0) >> (8 * (v33 & 7u))) ^ (v10 - 48);
  return (*(STACK[0x57D8] + 8 * v14))();
}

uint64_t sub_1003F7E14()
{
  STACK[0x9EC0] = &STACK[0xB20C];
  LODWORD(STACK[0x9E1C]) = -442591519;
  return (*(STACK[0x57D8] + 8 * (v0 - 16846)))();
}

uint64_t sub_1003F7F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = a8 - 0x709728451869305BLL;
  v9 = (v8 ^ 0x82FDB478D2FEDEFLL) & (2 * (((STACK[0x8B4] & 0x53A1BBF7) - 0x6DD063B82FB08803) & v8)) ^ ((STACK[0x8B4] & 0x53A1BBF7) - 0x6DD063B82FB08803) & v8;
  v10 = ((2 * (v8 ^ 0x838C3C52DAFED8FLL)) ^ 0x342EBF05FBC0C8FELL) & (v8 ^ 0x838C3C52DAFED8FLL) ^ (2 * (v8 ^ 0x838C3C52DAFED8FLL)) & 0x9A175F82FDE0647ELL;
  v11 = v10 ^ 0x8A11408204202401;
  v12 = (v10 ^ 0x12071380C5404041) & (4 * v9) ^ v9;
  v13 = ((4 * v11) ^ 0x685D7E0BF78191FCLL) & v11 ^ (4 * v11) & 0x9A175F82FDE0647CLL;
  v14 = (v13 ^ 0x8155E02F5800063) & (16 * v12) ^ v12;
  v15 = ((16 * (v13 ^ 0x9202018008606403)) ^ 0xA175F82FDE0647F0) & (v13 ^ 0x9202018008606403) ^ (16 * (v13 ^ 0x9202018008606403)) & 0x9A175F82FDE06470;
  v16 = (v15 ^ 0x80155802DC00440FLL) & (v14 << 8) ^ v14;
  v17 = (((v15 ^ 0x1A02078021E0200FLL) << 8) ^ 0x175F82FDE0647F00) & (v15 ^ 0x1A02078021E0200FLL) ^ ((v15 ^ 0x1A02078021E0200FLL) << 8) & 0x9A175F82FDE06400;
  v18 = v16 ^ 0x9A175F82FDE0647FLL ^ (v17 ^ 0x12170280E060007FLL) & (v16 << 16);
  v19 = v8 ^ (2 * ((v18 << 32) & 0x1A175F8200000000 ^ v18 ^ ((v18 << 32) ^ 0x7DE0647F00000000) & (((v17 ^ 0x88005D021D80007FLL) << 16) & 0x1A175F8200000000 ^ 0x15020200000000 ^ (((v17 ^ 0x88005D021D80007FLL) << 16) ^ 0x5F82FDE000000000) & (v17 ^ 0x88005D021D80007FLL))));
  LODWORD(v18) = STACK[0x51B8] - 245;
  STACK[0xA7D0] = (*(*STACK[0x51F0] + (*STACK[0x51E8] & 0x645C8A28)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x5CF48C4EEE5BDE29) + 0x3A3DE2F081B652CBLL * (((v19 ^ 0x727B82FF96072017) + 0x27EB41745E2AAF93) ^ ((v19 ^ 0x11C0844FFD12202ELL) + 0x445047C4353FAFACLL) ^ ((v19 ^ 0xF5BAADF6409A4137) - 0x5FD591827748314DLL)) + 0x3B5D6BEF4355EFCLL;
  return (*(STACK[0x57D8] + 8 * v18))(a1, a2, a3, a4, a5, a6, a7, LODWORD(STACK[0xE3A4]));
}

uint64_t sub_1003F8508()
{
  v5 = (((v1 - 20474) | 0x5003) ^ 0x4CCE) * v0;
  *(v4 + 4 * (v5 + 1012233683 - ((((v5 + 1012233683) * v3) >> 32) >> 12) * v2)) = *(v4 + 4 * (v5 + 967940225 - ((((v5 + 967940225) * v3) >> 32) >> 12) * v2));
  return (*(STACK[0x57D8] + 8 * ((121 * (v0 == 276084156)) ^ v1)))();
}

uint64_t sub_1003F860C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, int a7@<W8>)
{
  v7 = STACK[0xA250];
  v8 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * a7);
  return (*(v8 + 8 * (a7 + 3396)))(v7, a1, a2, a3, a4, a5, a6, 3562894612);
}

uint64_t sub_1003F88A0()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x241B)))();
  return (*(v1 + 8 * (v0 - 18099)))(v2);
}

uint64_t sub_1003F8958()
{
  STACK[0x96E0] = 0;
  LODWORD(STACK[0xA17C]) = -769884012;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1003F89D0()
{
  v2 = STACK[0x6A08];
  LODWORD(STACK[0x98F4]) = v1;
  STACK[0x6230] = v2;
  LODWORD(STACK[0x6974]) = 441973105;
  return (*(STACK[0x57D8] + 8 * ((v0 - 1055118254) ^ 0xC11C8E83 ^ (6532 * ((v0 - 1055118254) > 0x22F0BFE0)))))();
}

uint64_t sub_1003F8A90@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xDB54]) = v1;
  v3 = STACK[0x3600];
  LODWORD(STACK[0x1D4C8]) = ((a1 + 73775211) ^ 5) - STACK[0x3600];
  STACK[0x1D4D8] = v1 - v3;
  STACK[0x1D4E0] = v3 + 4151854225u;
  LODWORD(STACK[0x1D4C0]) = (a1 - 1079089617) ^ v3;
  LODWORD(STACK[0x1D4C4]) = (a1 + 73778991) ^ v3;
  LODWORD(STACK[0x1D4CC]) = a1 + 73775211 - v3;
  LODWORD(STACK[0x1D4D0]) = v3;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (a1 ^ 0x2411)))(v2 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4D4])))(v5);
}

uint64_t sub_1003F8C78()
{
  v1 = *(STACK[0x5938] + 24);
  STACK[0x9A70] = v1;
  return (*(STACK[0x57D8] + 8 * (((((v1 == 0) ^ (v0 - 37)) & 1) * (((v0 + 4116) | 0x1014) ^ 0x584F)) ^ v0)))();
}

uint64_t sub_1003F8D28(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  LODWORD(STACK[0x5060]) = LODWORD(STACK[0x4DE8]) ^ 0x40404040 ^ LODWORD(STACK[0x4DE0]);
  LODWORD(STACK[0x5050]) = a5 - LODWORD(STACK[0x5388]);
  LODWORD(STACK[0x53C0]) += LODWORD(STACK[0x4F10]);
  LODWORD(STACK[0x5040]) = LODWORD(STACK[0x5048]) + LODWORD(STACK[0x4FC8]);
  LODWORD(STACK[0x4FC8]) = LODWORD(STACK[0x5038]) + LODWORD(STACK[0x4F18]);
  LODWORD(STACK[0x5030]) = LODWORD(STACK[0x5120]) + LODWORD(STACK[0x5030]) + LODWORD(STACK[0x4F28]) - 1765550974;
  LODWORD(STACK[0x5048]) = LODWORD(STACK[0x4F40]) + a3 + LODWORD(STACK[0x4F30]) + 1;
  LODWORD(STACK[0x5038]) = LODWORD(STACK[0x4F20]) + LODWORD(STACK[0x4ED8]);
  LODWORD(STACK[0x5070]) ^= LODWORD(STACK[0x4FF0]) ^ LODWORD(STACK[0x4F78]) ^ LODWORD(STACK[0x4F08]);
  LODWORD(STACK[0x5120]) = LODWORD(STACK[0x4F88]) ^ 0x6D6D6D6D;
  return (*(STACK[0x57D8] + 8 * v5))(4220255348, 0xFFFFFFFFLL, 1483462841, a4, 3457847967);
}

uint64_t sub_1003F91D4@<X0>(int a1@<W8>)
{
  STACK[0x6338] = 0;
  LODWORD(STACK[0x7534]) = -769884012;
  STACK[0xCA80] = v2 | 0x20000;
  return (*(STACK[0x57D8] + 8 * (((((v1 + 212150098) & 0xF35AAFFD) + 3694) * (a1 == 0)) ^ v1)))();
}

uint64_t sub_1003F9294()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x241B)))();
  return (*(v2 + 8 * v0))(v3);
}

void *sub_1003F930C()
{
  v0 = STACK[0x57D8];
  v1 = STACK[0x1E0C];
  STACK[0xAE08] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1E0C]));
  return (*(v0 + 8 * (v1 ^ 0x172F)))(&STACK[0xA344]);
}

uint64_t sub_1003F9374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v11 = *v10;
  v12 = v7 + a7;
  *(a1 + v12) = (v9 ^ 0xA0) - 2 * (v9 & 0xF) + 15;
  *(a1 + v12 + 1) = v8 ^ 0x19;
  return v11();
}

uint64_t sub_1003F93AC()
{
  v0 = STACK[0x51B8] - 6056;
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9207)))();
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1003F94A4@<X0>(unint64_t a1@<X8>)
{
  v6 = STACK[0x7718] + v3;
  v7 = ((v1 - 346125947) & STACK[0x3F8] ^ (2 * v1) ^ 0x7C9A ^ 0x9D0D4B5) + 1978732275 * (v4 - (v2 ^ 0x39E8D924));
  v8 = ((v7 ^ 0x3577573B) - 1017626675) ^ v7 ^ ((v7 ^ 0xC53CF2B2) + 856922694) ^ ((v7 ^ 0x8460C73E) + 1917824970) ^ ((v7 ^ 0x7DFBF5BF) - 1949000375);
  v9 = ((v8 ^ 0x190A611F) + 2115625708) ^ ((v8 ^ 0x16961EAF) + 1904581980) ^ ((v8 ^ 0x64CE8B8) + 1633643341);
  LODWORD(STACK[0x8834]) = v9 + 243687295;
  STACK[0x7ED8] = a1;
  STACK[0xE048] = v6;
  STACK[0xC9E8] = &STACK[0x10120] + v5;
  STACK[0x9C58] = 0;
  return (*(STACK[0x57D8] + 8 * ((31719 * (((2 * (v9 + 243687295)) & 8 ^ (v9 + 243687295) & 0xF) == 4)) ^ v1)))();
}

uint64_t sub_1003F963C()
{
  v1 = *(STACK[0x5BF0] + 24);
  STACK[0x9B68] = v1;
  return (*(STACK[0x57D8] + 8 * (((v1 == 0) * (((v0 + 961264941) & 0xC6B43D7E ^ 0xFFFFC85F) + v0 - 12272)) ^ v0)))();
}

uint64_t sub_1003F96AC@<X0>(int a1@<W5>, unsigned __int16 a2@<W7>, int a3@<W8>)
{
  LODWORD(STACK[0xD4E4]) = v9;
  LODWORD(STACK[0x6C24]) = a3;
  LODWORD(STACK[0xD4DC]) = v8;
  LODWORD(STACK[0xB9CC]) = v4;
  LODWORD(STACK[0xD4D8]) = v5;
  LODWORD(STACK[0xCF4C]) = v7;
  LOWORD(STACK[0xCF4A]) = a2;
  LOWORD(STACK[0xCF52]) = a2;
  LODWORD(STACK[0xCF54]) = v3;
  LODWORD(STACK[0x9A1C]) = v6 + 60100 + (((a2 ^ 0xEE705EFE) + 294625538) ^ ((a2 ^ 0x331F76EB) - 857700075) ^ (((((a1 ^ 0x34AF) - 20698) | 0x21A7) ^ 0x22901E8E) + (a2 ^ 0xDD6FC2D7)));
  return (*(STACK[0x57D8] + 8 * (a1 ^ 0x34AF)))();
}

uint64_t sub_1003F978C()
{
  v1 = STACK[0x57D8];
  STACK[0x8D48] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 - 24947 + ((v0 + 12022877) & 0xFF48ECA4))))(4427);
}

uint64_t sub_1003F9874(unint64_t a1)
{
  v3 = STACK[0xAE50];
  v4 = STACK[0xA49C];
  v5 = 289235981 * ((v2 - 5627924 - 2 * ((v2 - 240) & 0xFFAA20DC)) ^ 0x7828F0E3);
  STACK[0x1D4E0] = &STACK[0xA04C];
  STACK[0x1D4D0] = a1;
  LODWORD(STACK[0x1D4D8]) = -529096856 - v5 + v1 + 1139;
  LODWORD(STACK[0x1D4DC]) = v4 ^ v5;
  STACK[0x1D4C8] = v3;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x7920)))(v2 - 240);
  return (*(v6 + 8 * ((18927 * ((((LODWORD(STACK[0xA04C]) ^ v1) & v1) >> (__clz(LODWORD(STACK[0xA04C]) ^ v1 | (v1 - 1091930882) & 0x4115DE56 ^ 0x5857) ^ 0x1F)) & 1)) ^ (((v1 + 162040556) & 0xF6577977 ^ 0xD01) + v1))))(v7);
}

uint64_t sub_1003F99B0@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v3 = *(v2 - 0x55A8D952E5D4689ALL);
  *(a2 - 0x683CBC57EAB92A2ALL) = v3;
  return (*(STACK[0x57D8] + 8 * (((a1 - 31832 + ((a1 + 6155) | 0x440)) * (v3 == 0)) ^ a1)))();
}

uint64_t sub_1003F9A1C(uint64_t a1, uint64_t a2, double a3, double a4, double a5, int8x16_t a6, int8x16_t a7, uint64_t a8, int a9)
{
  v14 = v9 + v12;
  v15 = *(v14 - 15);
  v16 = *(v14 - 31);
  v17 = a1 + v11;
  *(v17 - 15) = vaddq_s8(vaddq_s8(v15, a7), vmvnq_s8(vandq_s8(vaddq_s8(v15, v15), a6)));
  *(v17 - 31) = vaddq_s8(vaddq_s8(v16, a7), vmvnq_s8(vandq_s8(vaddq_s8(v16, v16), a6)));
  return (*(STACK[0x57D8] + 8 * (((a2 != 0) * ((v10 + 800) ^ v13)) ^ a9)))();
}

uint64_t sub_1003F9A90()
{
  v0 = STACK[0x27D0];
  v1 = (STACK[0x27D0] + 413554752) & 0xE759B7F8;
  v2 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * STACK[0x27D0]);
  return (*(v2 + 8 * ((v1 ^ 0x1BD) + v0)))();
}

uint64_t sub_1003F9B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x2288];
  v4 = (LODWORD(STACK[0x2288]) + 22986) | 0x4C0;
  v5 = STACK[0x57D8];
  STACK[0x65D8] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x2288]));
  return (*(v5 + 8 * (v3 ^ 0x5D86 ^ v4)))(113, a2, a3, 108, 4294945851);
}

uint64_t sub_1003F9C4C()
{
  v0 = STACK[0x51B8] ^ 0x3186;
  v1 = STACK[0x51B8] - 22118;
  LODWORD(STACK[0x84A4]) = 16 * LODWORD(STACK[0x7684]);
  v2 = STACK[0x57D8];
  STACK[0x9078] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v0 + v1 - 22116)))();
}

uint64_t sub_1003F9CAC()
{
  v0 = STACK[0x51B8] - 1805;
  v1 = STACK[0xD610];
  v2 = STACK[0x51B8] - 19779;
  *(v1 + 248) = 0;
  *(v1 + 256) = 0;
  *(v1 + 340) = 0;
  *(v1 + 400) = 0;
  *(v1 + 408) = -769884012;
  *(v1 + 384) = -769884012;
  *v1 = -769884012;
  *(v1 + 4) = -769884012;
  *(v1 + 8) = -1998605045;
  *(v1 + 368) = 0xD38CBDD3ACAFF84ALL;
  *(v1 + 376) = 0;
  *(v1 + 264) = 0;
  *(v1 + 272) = 0;
  *(v1 + 216) = 0;
  *(v1 + 224) = 0;
  v3 = STACK[0x57D8];
  STACK[0xCF38] = *(STACK[0x57D8] + 8 * v2);
  return (*(v3 + 8 * ((v0 ^ 0x598C) + v2)))();
}

void *sub_1003F9D5C@<X0>(unint64_t a1@<X8>)
{
  v4 = STACK[0x57D8];
  STACK[0x8850] = *(STACK[0x57D8] + 8 * v2);
  STACK[0xAAC0] = a1;
  LODWORD(STACK[0x68D4]) = -769884012;
  LODWORD(STACK[0x9D54]) = -769884012;
  STACK[0x7B00] = 0;
  LODWORD(STACK[0x6C0C]) = 0;
  STACK[0x6658] = 0;
  LODWORD(STACK[0x903C]) = 1280;
  v5 = STACK[0x7ED8];
  STACK[0x7F38] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v5 + 80;
  STACK[0x9590] = 0;
  LODWORD(STACK[0x5B3C]) = -769884012;
  STACK[0x9290] = 0;
  return (*(v4 + 8 * ((((v1 - 10027) | v3) ^ 0x20B1) + v1 - 21942)))(&STACK[0x9290]);
}

uint64_t sub_1003F9EA8()
{
  v3 = *v0 + 2;
  *v0 = v3;
  v4 = *v1;
  v5 = STACK[0xD500];
  v6 = 1917435887 * ((2 * ((v2 - 240) & 0x24C5CE30) - (v2 - 240) - 616943156) ^ 0x3D816ACA);
  LODWORD(STACK[0x1D4D0]) = 1121622731 - v6 + 1504951603 * v3;
  STACK[0x1D4D8] = v5;
  LODWORD(STACK[0x1D4D4]) = v6 + STACK[0x51B8] + 8497;
  LODWORD(STACK[0x1D4CC]) = -1338408083 - v6;
  STACK[0x1D4C0] = v4;
  v7 = STACK[0x57D8];
  v8 = (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x3964])))(v2 - 240);
  STACK[0x57B0] = LODWORD(STACK[0x1D4C8]);
  return (*(v7 + 8 * STACK[0x3958]))(v8);
}

uint64_t sub_1003FA078()
{
  v1 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x255 ^ (v0 + 542710363) & 0xDFA6F5D3)))();
}

uint64_t sub_1003FA0F0(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 30;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v1 + 20089)))(30);
  *(a1 + 24) = v5;
  return (*(v4 + 8 * (((v5 != 0) * (((v1 ^ 0x2F48) * v2) ^ 0x1C03)) ^ v1)))();
}

uint64_t sub_1003FA1B0()
{
  v3 = *(v2 + 3064);
  v4 = *(v2 + 3076);
  v5 = *(v2 + 3080);
  v6 = *(v2 + 3099);
  v7 = *(v2 + 3100);
  v8 = *(v2 + 3124);
  LODWORD(STACK[0x57C0]) = *(v2 + 3160);
  return (*(STACK[0x57D8] + 8 * (v0 - 18019)))(v3, v5, v4, v8, v7, v6, v1);
}

uint64_t sub_1003FA3C4()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x241B)))();
  STACK[0x80E8] = 0;
  return (*(v1 + 8 * (v0 + 1998)))(v2);
}

uint64_t sub_1003FA454@<X0>(unint64_t a1@<X8>)
{
  v4 = STACK[0x7B18] + v1;
  STACK[0x6D88] = a1;
  LODWORD(STACK[0xA17C]) = v3;
  STACK[0x9B40] = v4;
  return (*(STACK[0x57D8] + 8 * (((v4 == 0) * ((v2 + 2268) ^ 0x54AB)) ^ v2)))();
}

void *sub_1003FA4A8@<X0>(unint64_t a1@<X8>)
{
  STACK[0xA978] = v1;
  LODWORD(STACK[0x5D1C]) = v2;
  STACK[0x9190] = v4;
  STACK[0xA270] = v3;
  STACK[0x8A40] = a1;
  STACK[0x64A0] = v5;
  STACK[0xCB28] = 0x79CEC8CF5A6FCEBALL;
  LODWORD(STACK[0xB24C]) = -769884012;
  STACK[0xA560] = 0;
  return (*(STACK[0x57D8] + 8 * (v6 - 8170 + 7 * (v6 ^ 0x5D0))))(&STACK[0xA560]);
}

uint64_t sub_1003FA554@<X0>(uint64_t a1@<X8>)
{
  v2 = STACK[0x96DC];
  STACK[0x7ED8] = a1 - 256;
  return (*(STACK[0x57D8] + 8 * ((16361 * (v2 == LODWORD(STACK[0xB4C0]))) ^ (v1 - 14448))))();
}

uint64_t sub_1003FA6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0xCB54]) = v9;
  LODWORD(STACK[0xC224]) = 1731653788;
  return (*(STACK[0x57D8] + 8 * (v8 + a8)))();
}

uint64_t sub_1003FA73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v19 = *(v13 + 8) + 4 * v10;
  v20 = *STACK[0x51F0];
  v21 = *STACK[0x51E8] & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v20 + (((v19 & 0xFFFFFFF8) + v11) & v21));
  v23 = (__ROR8__(v19 & 0xFFFFFFFFFFFFFFF8, 8) + v22) ^ v16;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0x8A47714CF38C4783;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = ((v8 - 789) | 0x300u) ^ 0xA26BE47A1A693CF3 ^ (__ROR8__(v25, 8) + v26);
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (v15 - ((v29 + v28) | v15) + ((v29 + v28) | 0xBB408E5D58DA15B1)) ^ a4;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v14;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8) + v33;
  v35 = *(STACK[0x57B0] + 8) + 4 * v10;
  v36 = *(v20 + (((v35 & 0xFFFFFFF8) + v11) & v21));
  v37 = __ROR8__(v35 & 0xFFFFFFFFFFFFFFF8, 8);
  v38 = (v34 - (a2 & (2 * v34)) + v12) ^ 0x8D72AA328D39F7B6;
  v39 = v38 ^ __ROR8__(v33, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ v7;
  v41 = (((v37 + v36) ^ 0x573E7FAF0D5E8B02) - ((2 * ((v37 + v36) ^ 0x573E7FAF0D5E8B02)) & 0xB056B5A4DCBC933CLL) - 0x27D4A52D91A1B662) ^ 0x3F425146B2A83720;
  v42 = v41 ^ __ROR8__(v36, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ 0x8A47714CF38C4783;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0xA26BE47A1A692F70;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = __ROR8__(v40, 8) + (v40 ^ __ROR8__(v39, 61));
  v48 = (__ROR8__(v45, 8) + v46) ^ v17;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = __ROR8__(v48, 8);
  v51 = (((2 * (v50 + v49)) & 0xE91D0D4D7905E4ELL) - (v50 + v49) + 0x78B717959437D0D8) ^ 0x5BDDD3F7DDBE8C5;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (v53 + v52 - ((2 * (v53 + v52)) & 0x5222672A76A1DDF0) - 0x56EECC6AC4AF1108) ^ 0xFBE0BBDC2388385ALL ^ __ROR8__(v52, 61);
  v55 = (__ROR8__((v53 + v52 - ((2 * (v53 + v52)) & 0x5222672A76A1DDF0) - 0x56EECC6AC4AF1108) ^ 0xFBE0BBDC2388385ALL, 8) + v54) ^ v7;
  v56 = __ROR8__(v55, 8) + (v55 ^ __ROR8__(v54, 61));
  v57 = STACK[0x5790];
  v58 = *(v20 + (v21 & (((v19 - 4) & 0xFFFFFFF8 & a6) + ((v19 - 4) & 0xFFFFFFF8 | a6) + 836303683)));
  v59 = ((v56 - ((2 * v56) & 0x6792A95F7C0D8308) - 0x4C36AB5041F93E7CLL) ^ 0x2277D947299A7FC4) >> (8 * (v35 & 7u));
  v60 = (__ROR8__((v19 - 4) & 0xFFFFFFFFFFFFFFF8, 8) + v58) ^ v16;
  v61 = v60 ^ __ROR8__(v58, 61);
  v62 = __ROR8__(v60, 8) + v61;
  v63 = (((2 * v62) | 0x11800002893BCD62) - v62 + 0x773FFFFEBB62194FLL) ^ 0x287714DB711A132;
  v64 = v63 ^ __ROR8__(v61, 61);
  v65 = __ROR8__(v63, 8);
  LODWORD(v59) = v59 ^ *v35;
  v66 = (v6 - ((v65 + v64) | v6) + ((v65 + v64) | 0xC2FE698312FCB130)) ^ 0x60958DF908959E40;
  v67 = v66 ^ __ROR8__(v64, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ v17;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = (((v47 ^ 0x91BE8DE8979CBE40) >> (8 * (v19 & 7u))) ^ *v19) + HIDWORD(v9) + v18 * v59;
  v71 = (__ROR8__(v68, 8) + v69) ^ v14;
  v72 = __ROR8__(v71, 8);
  v73 = v71 ^ __ROR8__(v69, 61);
  v74 = (v72 + v73 - ((2 * (v72 + v73)) & 0x4C3909C7929967ELL) + 0x261C84E3C94CB3FLL) ^ 0x50904007244C1D9DLL;
  v75 = v74 ^ __ROR8__(v73, 61);
  v76 = (__ROR8__(v74, 8) + v75) ^ v7;
  v77 = v76 ^ __ROR8__(v75, 61);
  v78 = __ROR8__(v76, 8);
  *(v19 - 4) = v70 ^ (((((2 * (v78 + v77)) | 0xB9A10FABD4CBD504) - (v78 + v77) - 0x5CD087D5EA65EA82) ^ 0xCD6E0A3D7DF954C2) >> (8 * ((v19 - 4) & 7)));
  return (*(STACK[0x57D8] + 8 * ((18960 * (v10 + 1 == v57)) ^ v8)))();
}

uint64_t sub_1003FAD74()
{
  v1 = STACK[0x51B8] + 3586;
  LODWORD(STACK[0x987C]) = v0;
  v2 = STACK[0x57D8];
  v3 = STACK[0x2CDC];
  STACK[0x5C20] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x2CDC]));
  return (*(v2 + 8 * (LODWORD(STACK[0x2CD8]) ^ (631 * ((v1 + 1488958692 + v3) < 0xE2535ADB)))))();
}

uint64_t sub_1003FADF4@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, int a4@<W8>)
{
  v16 = *(a1 + 3904) + v5;
  v17 = *(*v14 + ((*v15 & ((v16 & 0xFFFFFFF8 & v7) + (v16 & 0xFFFFFFF8 | (v7 + 4)) - 1194374658)) & 0xFFFFFFFFFFFFFFF8));
  v18 = v11 + 12337 * ((((v4 + 12 + v9) ^ v6) + 14) & 0xF);
  v19 = __ROR8__(v16 & 0xFFFFFFFFFFFFFFF8, 8);
  v20 = (v17 + v19 - ((2 * (v17 + v19)) & 0x170B9214CDCE762CLL) - 0x747A36F59918C4EALL) ^ 0x330DC8DE87205845;
  v21 = v20 ^ __ROR8__(v17, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ v8;
  v23 = v18 - 12930 * (((10629463 * v18) >> 32) >> 5);
  v24 = v22 ^ __ROR8__(v21, 61);
  v25 = __ROR8__(v22, 8);
  v26 = (a3 - ((v25 + v24) | a3) + ((v25 + v24) | 0x1B37B5022C23CA4FLL)) ^ 0xFEB7047FA0E62F1ELL;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (v28 + v27 - ((2 * (v28 + v27)) & 0x32A99EA367C8488CLL) - 0x66AB30AE4C1BDBBALL) ^ 0x78F5320A62B1DD3CLL;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ v13;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ a2;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ v12;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  *(STACK[0x8070] + v23) ^= *v16 ^ (((v10 - ((v37 + v36) | v10) + ((v37 + v36) | 0x313CC569B62F3D92)) ^ 0xC54FCE58185F48E9) >> (8 * (v16 & 7u)));
  return (*(STACK[0x57D8] + 8 * ((((((v6 - 381949321) ^ ~v4) & (v6 - 381949321 - v4) | v4 & ~(v6 - 381949321)) >> 31) * a4) ^ (v4 + 22956))))();
}

uint64_t sub_1003FB050()
{
  v5 = (*((((v0 ^ 0x427D) - 23787) ^ v2) + STACK[0x5490] + 520) ^ (v2 - (v1 & (2 * v2)) + 5) ^ 0x99) * v3;
  *(STACK[0x8070] + (v2 * v3 + 113993880) % 0x3282) = *(STACK[0x8070] + v5 - 12930 * (((v5 * v4) >> 32) >> 2));
  return (*(STACK[0x57D8] + 8 * ((17021 * (v2 == 255)) ^ v0)))();
}

uint64_t sub_1003FB160()
{
  v0 = LODWORD(STACK[0xC50]) | 0x4209;
  STACK[0xC370] = 0;
  v1 = STACK[0x57D8];
  v2 = STACK[0xC6C];
  STACK[0xBDE0] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0xC6C]));
  return (*(v1 + 8 * ((v0 - 11501) ^ v2)))(0x308E083E0C524CBELL);
}

uint64_t sub_1003FB218@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x57A0]) = a1 ^ 0xF6;
  STACK[0x5790] = STACK[0x9360];
  STACK[0x5780] = STACK[0x7868];
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_1003FB29C(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = (((v5 - 7444) | 0x4056) ^ 0xB487849D) + v3 - v4;
  v7 = (v6 ^ 0x4378122F) & (2 * (v6 & 0x4B78234F)) ^ v6 & 0x4B78234F;
  v8 = (v5 ^ 0x30A0DBDC ^ (2 * (v6 ^ 0xD328542B))) & (v6 ^ 0xD328542B) ^ (2 * (v6 ^ 0xD328542B)) & 0x98507764;
  v9 = v8 ^ 0x88501124;
  v10 = (v8 ^ 0x90100640) & (4 * v7) ^ v7;
  v11 = ((4 * v9) ^ 0x6141DD90) & v9 ^ (4 * v9) & 0x98507764;
  v12 = (v11 ^ 0x405504) & (16 * v10) ^ v10;
  v13 = ((16 * (v11 ^ 0x98102264)) ^ 0x85077640) & (v11 ^ 0x98102264) ^ (16 * (v11 ^ 0x98102264)) & 0x98507760;
  v14 = v12 ^ 0x98507764 ^ (v13 ^ 0x80007624) & (v12 << 8);
  v15 = v6 ^ (2 * ((v14 << 16) & 0x18500000 ^ v14 ^ ((v14 << 16) ^ 0x77640000) & (((v13 ^ 0x18500124) << 8) & 0x18500000 ^ (((v13 ^ 0x18500124) << 8) ^ 0x50770000) & (v13 ^ 0x18500124) ^ 0x8000000)));
  STACK[0x5610] = a1;
  v16 = STACK[0x57D8];
  v17 = *(STACK[0x57D8] + 8 * (v5 + 18218));
  STACK[0x5600] = a2;
  STACK[0x5640] = a3;
  v18 = *(v16 + 8 * ((103 * (v17(v15 ^ 0x5B58CD87u) == 0)) ^ v5));
  return v18();
}

uint64_t sub_1003FCB00()
{
  v1 = STACK[0x57D8];
  STACK[0x8860] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 + 7543 + (v0 ^ 0xAD1))))();
}

uint64_t sub_1003FCB4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4[24];
  v4[24] = v4[27];
  v4[27] = v5;
  v6 = v4[25];
  v4[25] = v4[26];
  v4[26] = v6;
  v7 = v4[28];
  v4[28] = v4[31];
  v4[31] = v7;
  v8 = v4[29];
  v4[29] = v4[30];
  v4[30] = v8;
  v9 = v4[32];
  v4[32] = v4[35];
  v4[35] = v9;
  v10 = v4[33];
  v4[33] = v4[34];
  v4[34] = v10;
  v11 = v4[36];
  v4[36] = v4[39];
  v4[39] = v11;
  v12 = v4[37];
  v4[37] = v4[38];
  v4[38] = v12;
  v13 = v4[40];
  v4[40] = v4[43];
  v4[43] = v13;
  v14 = v4[41];
  v4[41] = v4[42];
  v4[42] = v14;
  v15 = v4[44];
  v4[44] = v4[47];
  v4[47] = v15;
  v16 = v4[45];
  v4[45] = v4[46];
  v4[46] = v16;
  v17 = v4[48];
  v4[48] = v4[51];
  v4[51] = v17;
  v18 = v4[49];
  v4[49] = v4[50];
  v4[50] = v18;
  v19 = v4[52];
  v4[52] = v4[55];
  v4[55] = v19;
  v20 = v4[53];
  v4[53] = v4[54];
  v4[54] = v20;
  v21 = v4[56];
  v4[56] = v4[59];
  v4[59] = v21;
  v22 = v4[57];
  v4[57] = v4[58];
  v4[58] = v22;
  v23 = v4[60];
  v4[60] = v4[63];
  v4[63] = v23;
  v24 = v4[61];
  v4[61] = v4[62];
  v4[62] = v24;
  v25 = v4[64];
  v4[64] = v4[67];
  v4[67] = v25;
  v26 = v4[65];
  v4[65] = v4[66];
  v4[66] = v26;
  v27 = v4[68];
  v4[68] = v4[71];
  v4[71] = v27;
  v28 = v4[69];
  v4[69] = v4[70];
  v4[70] = v28;
  v29 = v4[72];
  v4[72] = v4[75];
  v4[75] = v29;
  v30 = v4[73];
  v4[73] = v4[74];
  v4[74] = v30;
  v31 = v4[76];
  v4[76] = v4[79];
  v4[79] = v31;
  v32 = v4[77];
  v4[77] = v4[78];
  v4[78] = v32;
  v33 = v4[80];
  v4[80] = v4[83];
  v4[83] = v33;
  v34 = v4[81];
  v4[81] = v4[82];
  v4[82] = v34;
  v35 = v4[84];
  v4[84] = v4[87];
  v4[87] = v35;
  v36 = v4[85];
  v4[85] = v4[86];
  v4[86] = v36;
  v37 = STACK[0x57D8];
  STACK[0x8C70] = *(STACK[0x57D8] + 8 * v3);
  return (*(v37 + 8 * (v3 ^ 0x1879 ^ (v3 - 1738145996) & 0x679A5DBF)))(a1, a2, a3, 2625273121);
}

uint64_t sub_1003FCEC4()
{
  LODWORD(STACK[0x53E0]) = 0;
  v0 = *(STACK[0x5500] + (STACK[0x5520] & STACK[0x5550]));
  v1 = __ROR8__((STACK[0x3108] + STACK[0x5580]) ^ 0xB88801D4E1C76353, 8);
  v2 = (STACK[0x3108] + STACK[0x5580]) ^ 0xB88801D4E1C76353 ^ __ROR8__(STACK[0x3108], 61);
  v3 = (0xE35A2059578A01E0 - ((v1 + v2) | 0xE35A2059578A01E0) + ((v1 + v2) | 0x1CA5DFA6A875FE1FLL)) ^ 0x246D6ECC4F709668;
  v4 = v3 ^ __ROR8__(v2, 61);
  v5 = __ROR8__(v3, 8);
  v6 = (v5 + v4 - ((2 * (v5 + v4)) & 0xA022F4685910C1D4) - 0x2FEE85CBD3779F16) ^ 0x3591CB49A04D85BBLL;
  v7 = v6 ^ __ROR8__(v4, 61);
  v8 = (__ROR8__(v6, 8) + v7) ^ 0xE1A1FD5BD155F97ALL;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = __ROR8__(v8, 8);
  v11 = __ROR8__((((2 * (v10 + v9)) | 0xF6BE7F346E6E3F80) - (v10 + v9) + 0x4A0C065C8C8E040) ^ 0x213F74963495A059, 8);
  v12 = (((2 * (v10 + v9)) | 0xF6BE7F346E6E3F80) - (v10 + v9) + 0x4A0C065C8C8E040) ^ 0x213F74963495A059 ^ __ROR8__(v9, 61);
  v13 = (0x27E3C5F18B605510 - ((v11 + v12) | 0x27E3C5F18B605510) + ((v11 + v12) | 0xD81C3A0E749FAAEFLL)) ^ 0x2229D8C3BFA19B28;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0xD2F00CE620E5D3AELL;
  v16 = ((__ROR8__(v15, 8) + (v15 ^ __ROR8__(v14, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x57B0];
  v17 = (0x1C22569613CDE01ELL - (STACK[0x5188] | 0x1C22569613CDE01ELL) + (STACK[0x5188] | 0xE3DDA969EC321FE1)) ^ 0x65D181460F7FAB0;
  v18 = v17 ^ STACK[0x5190];
  v19 = __ROR8__(v17, 8);
  v20 = (v19 + v18 - ((2 * (v19 + v18)) & 0xDE2906C0274CDEAELL) - 0x10EB7C9FEC5990A9) ^ 0xEB57E3BC2F3962DLL;
  v21 = v20 ^ __ROR8__(v18, 61);
  LODWORD(STACK[0x55A0]) = ((v16 ^ LODWORD(STACK[0x57C0]) ^ 0xFFFFFF8B) + 32) ^ ((v16 ^ LODWORD(STACK[0x57C0]) ^ 0x4F) - 36) ^ ((v16 ^ LODWORD(STACK[0x57C0]) ^ 0xFFFFFFC4) + 81);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0xDA604B0C03A2BF99;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (0x970138198760D00FLL - ((v24 + v23) | 0x970138198760D00FLL) + ((v24 + v23) | 0x68FEC7E6789F2FF0)) ^ 0x92CB252BB3A11E37;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (0xDFFE7518AD064CC0 - ((v27 + v26) | 0xDFFE7518AD064CC0) + ((v27 + v26) | 0x20018AE752F9B33FLL)) ^ 0xF2F18601721C6091;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = __ROR8__(v28, 8);
  v31 = v30 + v29 - ((2 * (v30 + v29)) & 0x5ECA937A9C856794);
  v32 = STACK[0x5010];
  v33 = (0xBA553E5645170437 - (v32 | 0xBA553E5645170437) + (v32 | 0x45AAC1A9BAE8FBC8)) ^ 0xFD22C07D5B2F989BLL ^ STACK[0x5018];
  v34 = (__ROR8__((0xBA553E5645170437 - (v32 | 0xBA553E5645170437) + (v32 | 0x45AAC1A9BAE8FBC8)) ^ 0xFD22C07D5B2F989BLL, 8) + v33) ^ 0x38C8B16AE7056877;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = ((v31 - 0x509AB642B1BD4C36) ^ 0x5B16428CE032C6B1uLL) >> STACK[0x5480];
  v38 = (((v36 + v35) ^ 0x8038B111849A65DDLL) - ((2 * ((v36 + v35) ^ 0x8038B111849A65DDLL)) & 0x44EE149B4834D92ALL) - 0x5D88F5B25BE5936BLL) ^ 0xC7CF0A21AC45EC19;
  v39 = v38 ^ __ROR8__(v35, 61);
  LODWORD(STACK[0x5560]) = ((v37 ^ LODWORD(STACK[0x54A0]) ^ 0xFFFFFF9E) + 62) ^ ((v37 ^ LODWORD(STACK[0x54A0]) ^ 0xFFFFFFAB) + 9) ^ ((v37 ^ LODWORD(STACK[0x54A0]) ^ 0x35) - 105);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0xE1A1FD5BD155F97ALL;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v40, 8);
  v43 = (0xA529E20F3B62C221 - ((v42 + v41) | 0xA529E20F3B62C221) + ((v42 + v41) | 0x5AD61DF0C49D3DDELL)) ^ 0x80B656FCC73F8247;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0xFA35E2CDCB3E31C7;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = __ROR8__(v45, 8);
  v48 = (((2 * (v47 + v46)) & 0xAB7757AC53DDDFF8) - (v47 + v46) - 0x55BBABD629EEEFFDLL) ^ 0x78B458CFF6F4C3ADLL;
  STACK[0x5550] = __ROR8__(v48, 8) + (v48 ^ __ROR8__(v46, 61));
  v49 = (STACK[0x5068] - (STACK[0x4E00] & 0xDFA2248A414D0900) + 0x6FD1124520A68480) ^ 0x5719A32FC7A3ECF7;
  v50 = v49 ^ STACK[0x5030];
  v51 = __ROR8__(v49, 8);
  v52 = (0x2DED420F72E479FALL - ((v51 + v50) | 0x2DED420F72E479FALL) + ((v51 + v50) | 0xD212BDF08D1B8605)) ^ 0x37920C8D01DE6354;
  v53 = v52 ^ __ROR8__(v50, 61);
  v54 = __ROR8__(v52, 8);
  v55 = 0x3678EDA72C06149ELL - ((v54 + v53) ^ 0xB9E533F615FD056FLL | 0x3678EDA72C06149ELL) + ((v54 + v53) ^ 0xB9E533F615FD056FLL | 0xC9871258D3F9EB61);
  v56 = (STACK[0x30C0] + STACK[0x5360]) ^ 0xB88801D4E1C76353;
  v57 = v56 ^ __ROR8__(STACK[0x30C0], 61);
  v58 = __ROR8__(v56, 8);
  v59 = (((2 * (v58 + v57)) | 0x781DCA835468672ALL) - (v58 + v57) - 0x3C0EE541AA343395) ^ 0x4C6542B4D315BE2;
  v60 = v59 ^ __ROR8__(v57, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ 0xE580B17D8CC5E551;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = __ROR8__(v61, 8);
  v64 = (v63 + v62 - ((2 * (v63 + v62)) & 0x48711D09F669EC08) + 0x24388E84FB34F604) ^ 0xC59973DF2A610F7ELL;
  v65 = v64 ^ __ROR8__(v62, 61);
  v66 = __ROR8__(v64, 8);
  v55 ^= 0x91C3DCF517511774;
  v67 = v55 ^ __ROR8__(v53, 61);
  v68 = (__ROR8__(v55, 8) + v67) ^ 0xDA604B0C03A2BF99;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = __ROR8__(v68, 8);
  v71 = (v66 + v65 - ((2 * (v66 + v65)) & 0xD1C292CA4CB05F0) - 0x7971EB69AD9A7D08) ^ 0x5CEE5F9A51C73D61;
  v72 = v71 ^ __ROR8__(v65, 61);
  v73 = __ROR8__(v71, 8);
  v74 = (((2 * (v70 + v69)) | 0x66E33F55D07C5214) - (v70 + v69) - 0x33719FAAE83E290ALL) ^ 0xC9447D67230018CDLL;
  v75 = v74 ^ __ROR8__(v69, 61);
  v76 = (((2 * (v73 + v72)) & 0x632B4A1DA41708A8) - (v73 + v72) + 0x4E6A5AF12DF47BABLL) ^ 0xB45FB83CE6CA4A6CLL;
  v77 = v76 ^ __ROR8__(v72, 61);
  v78 = __ROR8__(v76, 8);
  v79 = (STACK[0x30C8] + STACK[0x5338] - ((2 * (STACK[0x30C8] + STACK[0x5338])) & 0x2542B3DE2B939A4) + 0x12A159EF15C9CD2) ^ 0xB9A2144A109BFF81;
  v80 = v79 ^ __ROR8__(STACK[0x30C8], 61);
  v81 = __ROR8__(v79, 8);
  v82 = (__ROR8__(v74, 8) + v75) ^ 0xD2F00CE620E5D3AELL;
  v83 = (((2 * (v78 + v77)) | 0xE97BE8DEDA7F3A6ELL) - (v78 + v77) - 0x74BDF46F6D3F9D37) ^ 0xA64DF8894DDA4E99;
  v84 = (((v81 + v80) & 0xD09E51BAA8120AC7 ^ 0xC0161122000202C1) + ((v81 + v80) & 0x2F61AE4557EDF538 ^ 0x20410E4115EDB409) - 1) ^ 0xD89FAE09F2EADEBELL;
  v85 = v84 ^ __ROR8__(v80, 61);
  v86 = __ROR8__(v84, 8);
  v87 = (((2 * (v86 + v85)) | 0xA16BEF5653BCBE12) - (v86 + v85) + 0x2F4A0854D621A0F7) ^ 0x353546D6A51BBA58;
  v88 = v87 ^ __ROR8__(v85, 61);
  STACK[0x5520] = __ROR8__(v82, 8) + (v82 ^ __ROR8__(v75, 61));
  v89 = (__ROR8__(v87, 8) + v88) ^ 0xE1A1FD5BD155F97ALL;
  v90 = v89 ^ __ROR8__(v88, 61);
  v91 = __ROR8__(v89, 8);
  STACK[0x5500] = __ROR8__(v83, 8) + (v83 ^ __ROR8__(v77, 61));
  v92 = (((2 * (v91 + v90)) | 0x519B1D694996AAB4) - (v91 + v90) - 0x28CD8EB4A4CB555ALL) ^ 0xF2ADC5B8A769EAC3;
  v93 = v92 ^ __ROR8__(v90, 61);
  v94 = (__ROR8__(v92, 8) + v93) ^ 0xFA35E2CDCB3E31C7;
  v95 = v94 ^ __ROR8__(v93, 61);
  v96 = (__ROR8__(v94, 8) + v95) ^ 0xD2F00CE620E5D3AELL;
  STACK[0x54F0] = __ROR8__(v96, 8) + (v96 ^ __ROR8__(v95, 61));
  v97 = (((2 * STACK[0x4980]) & 0xA2891A63AE476E72) - STACK[0x4980] + 0x2EBB72CE28DC48C6) ^ 0xCB3BC3B3A419AD97;
  v98 = v97 ^ STACK[0x4988];
  v99 = __ROR8__(v97, 8);
  v100 = (((2 * ((v99 + v98) ^ 0xFB9E3E2849D7383BLL)) & 0xCBB3F582201B63CALL) - ((v99 + v98) ^ 0xFB9E3E2849D7383BLL) + 0x1A26053EEFF24E1ALL) ^ 0x19C64D77708F5BLL;
  v101 = v100 ^ __ROR8__(v98, 61);
  v102 = __ROR8__(v100, 8);
  v103 = (((2 * (v102 + v101)) & 0xE19186CEFDA10296) - (v102 + v101) - 0x70C8C3677ED0814CLL) ^ 0x55577794828DC12DLL;
  v104 = v103 ^ __ROR8__(v101, 61);
  v105 = __ROR8__(v103, 8);
  v106 = (((v105 + v104) | 0x76F1ADB4772AB4B3) - ((v105 + v104) | 0x890E524B88D54B4CLL) - 0x76F1ADB4772AB4B4) ^ 0x8CC44F79BC148574;
  v107 = v106 ^ __ROR8__(v104, 61);
  v108 = __ROR8__(v106, 8);
  v109 = (v108 + v107 - ((2 * (v108 + v107)) & 0xBBB06DE1E69E96E0) - 0x2227C90F0CB0B490) ^ 0xF283A16D3AA98DELL;
  v110 = __ROR8__(v109, 8);
  v111 = __ROR8__(v107, 61);
  STACK[0x54D0] = ((2 * (v110 + (v109 ^ v111))) | 0xC8B9548C3CD3FAACLL) - (v110 + (v109 ^ v111));
  v112 = STACK[0x4DF0];
  v113 = ((v112 | 0xEA0A0764C51937FELL) - (v112 | 0x15F5F89B3AE6C801) + 0x15F5F89B3AE6C801) ^ 0xF8AB61949DCD2AFLL ^ STACK[0x4DF8];
  v114 = __ROR8__(((v112 | 0xEA0A0764C51937FELL) - (v112 | 0x15F5F89B3AE6C801) + 0x15F5F89B3AE6C801) ^ 0xF8AB61949DCD2AFLL, 8);
  v115 = (((2 * (v114 + v113)) & 0x45D3D131A60C241CLL) - (v114 + v113) - 0x22E9E898D306120FLL) ^ 0x3CB7EA3CFDAC148BLL;
  v116 = v115 ^ __ROR8__(v113, 61);
  v117 = __ROR8__(v115, 8);
  v118 = (v117 + v116 - ((2 * (v117 + v116)) & 0xFB09011C69ECBE96) - 0x27B7F71CB09A0B5) ^ 0x27E4CB823754E0D2;
  v119 = v118 ^ __ROR8__(v116, 61);
  v120 = __ROR8__(v118, 8);
  v121 = (v120 + v119 - ((2 * (v120 + v119)) & 0x363FF34E235F7732) - 0x64E00658EE504467) ^ 0x612A1B6ADA918A5ELL;
  v122 = v121 ^ __ROR8__(v119, 61);
  v123 = __ROR8__(v121, 8);
  v124 = (((v123 + v122) | 0x1241F29A7B44BD53) - ((v123 + v122) | 0xEDBE0D6584BB42ACLL) - 0x1241F29A7B44BD54) ^ 0xC0B1FE7C5BA16EFDLL;
  v125 = ((__ROR8__(v124, 8) + (v124 ^ __ROR8__(v122, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5148];
  v126 = (STACK[0x30D8] + STACK[0x50D0]) ^ 0xB88801D4E1C76353 ^ __ROR8__(STACK[0x30D8], 61);
  v127 = (__ROR8__((STACK[0x30D8] + STACK[0x50D0]) ^ 0xB88801D4E1C76353, 8) + v126) ^ 0x38C8B16AE7056877;
  v128 = v127 ^ __ROR8__(v126, 61);
  LODWORD(STACK[0x5370]) = ((v125 ^ LODWORD(STACK[0x5150]) ^ 0xFFFFFFDC) + 74) ^ ((v125 ^ LODWORD(STACK[0x5150]) ^ 0x14) - 126) ^ ((v125 ^ LODWORD(STACK[0x5150]) ^ 0xFFFFFFC8) + 94);
  v129 = (__ROR8__(v127, 8) + v128) ^ 0xE580B17D8CC5E551;
  v130 = v129 ^ __ROR8__(v128, 61);
  v131 = (__ROR8__(v129, 8) + v130) ^ 0xE1A1FD5BD155F97ALL;
  v132 = v131 ^ __ROR8__(v130, 61);
  v133 = __ROR8__(v131, 8);
  v134 = __ROR8__((((2 * (v133 + v132)) | 0xBB02DA314A70F308) - (v133 + v132) + 0x227E92E75AC7867CLL) ^ 0x7E12614A69AC61DLL, 8);
  v135 = (((2 * (v133 + v132)) | 0xBB02DA314A70F308) - (v133 + v132) + 0x227E92E75AC7867CLL) ^ 0x7E12614A69AC61DLL ^ __ROR8__(v132, 61);
  v136 = (((2 * (v134 + v135)) & 0xA0DCD3A0C14B49EALL) - (v134 + v135) - 0x506E69D060A5A4F6) ^ 0x55A474E254646ACDLL;
  v137 = v136 ^ __ROR8__(v135, 61);
  v138 = (__ROR8__(v136, 8) + v137) ^ 0xD2F00CE620E5D3AELL;
  STACK[0x5368] = __ROR8__(v138, 8) + (v138 ^ __ROR8__(v137, 61));
  v139 = ((STACK[0x4D98] | 0x6356E47EA6921024) - STACK[0x4DA0] + 0x4E548DC0ACB6F7EELL) ^ 0x92373EBB28E6B41;
  v140 = v139 ^ STACK[0x4DA8];
  v141 = (__ROR8__(v139, 8) + v140) ^ 0x38C8B16AE7056877;
  v142 = v141 ^ __ROR8__(v140, 61);
  v143 = __ROR8__(v141, 8);
  v144 = (v143 + v142 - ((2 * (v143 + v142)) & 0xF2EAA8CA9030F2AELL) - 0x68AAB9AB7E786A9) ^ 0x1CF5E518C4DD9C06;
  v145 = v144 ^ __ROR8__(v142, 61);
  v146 = __ROR8__(v144, 8);
  v147 = __ROR8__((((2 * (v146 + v145)) & 0xCB9054F5B50D4530) - (v146 + v145) + 0x1A37D58525795D67) ^ 0xFB9628DEF42CA41DLL, 8);
  v148 = (((2 * (v146 + v145)) & 0xCB9054F5B50D4530) - (v146 + v145) + 0x1A37D58525795D67) ^ 0xFB9628DEF42CA41DLL ^ __ROR8__(v145, 61);
  v149 = (((2 * (v147 + v148)) | 0x7582087308DC8B2ALL) - (v147 + v148) + 0x453EFBC67B91BA6BLL) ^ 0x60A14F3587CCFA0CLL;
  v150 = v149 ^ __ROR8__(v148, 61);
  v151 = __ROR8__(v149, 8);
  v152 = (v151 + v150 - ((2 * (v151 + v150)) & 0xF551E4021F77F804) - 0x5570DFEF04403FELL) ^ 0x9D10CCC485CDC5;
  v153 = v152 ^ __ROR8__(v150, 61);
  v154 = (__ROR8__(v152, 8) + v153) ^ 0xD2F00CE620E5D3AELL;
  v155 = v154 ^ __ROR8__(v153, 61);
  v156 = __ROR8__(v154, 8);
  STACK[0x5320] = ((2 * (v156 + v155)) | 0xF1C869E0463F5A86) - (v156 + v155);
  v157 = (STACK[0x33F8] - ((2 * STACK[0x33F8]) & 0xB70E3617E8981802) + 0x5B871B0BF44C0C01) ^ 0xE30F1ADF158B6F52;
  v158 = v157 ^ STACK[0x3400];
  v159 = (__ROR8__(v157, 8) + v158) ^ 0x38C8B16AE7056877;
  v160 = __ROR8__(v159, 8);
  v161 = v159 ^ __ROR8__(v158, 61);
  v162 = (((2 * ((v160 + v161) ^ 0xF84F73F4AAC2394ALL)) & 0x7E098872B7E40CA2) - ((v160 + v161) ^ 0xF84F73F4AAC2394ALL) + 0x40FB3BC6A40DF9AELL) ^ 0x5D34F94F820A25B5;
  v163 = v162 ^ __ROR8__(v161, 61);
  v164 = __ROR8__(v162, 8);
  v165 = (((v164 + v163) ^ 0xD8277B4CF4013A80 | 0x49F969CC0616C37ALL) - ((v164 + v163) ^ 0xD8277B4CF4013A80 | 0xB6069633F9E93C85) - 0x49F969CC0616C37BLL) ^ 0x707FEFDB23420080;
  v166 = v165 ^ __ROR8__(v163, 61);
  v167 = __ROR8__(v165, 8);
  v168 = (((2 * (v167 + v166)) | 0xD57ECE03B6AD64A8) - (v167 + v166) - 0x6ABF6701DB56B254) ^ 0xB0DF2C0DD8F40DCDLL;
  v169 = v168 ^ __ROR8__(v166, 61);
  v170 = __ROR8__(v168, 8);
  v171 = (((2 * (v170 + v169)) & 0x348C0EC43EDD2AEELL) - (v170 + v169) + 0x65B9F89DE0916A88) ^ 0x9F8C1A502BAF5B4FLL;
  v172 = v171 ^ __ROR8__(v169, 61);
  v173 = __ROR8__(v171, 8);
  v174 = (v173 + v172 - ((2 * (v173 + v172)) & 0xA633B6F77869838ALL) - 0x2CE6248443CB3E3BLL) ^ 0x1E9D79D9CD1126BLL;
  STACK[0x5310] = __ROR8__(v174, 8) + (v174 ^ __ROR8__(v172, 61));
  v175 = (((2 * (STACK[0x30E8] + STACK[0x4EB8])) & 0xD1302A89CCF4D240) - (STACK[0x30E8] + STACK[0x4EB8]) - 0x68981544E67A6921) ^ 0x2FEFEB6FF842F58CLL;
  v176 = v175 ^ __ROR8__(STACK[0x30E8], 61);
  v177 = (__ROR8__(v175, 8) + v176) ^ 0x38C8B16AE7056877;
  v178 = v177 ^ __ROR8__(v176, 61);
  v179 = __ROR8__(v177, 8);
  v180 = (((2 * (v179 + v178)) | 0x7A9AE3E4DA0F0D0ELL) - (v179 + v178) - 0x3D4D71F26D078687) ^ 0xD8CDC08FE1C263D6;
  v181 = v180 ^ __ROR8__(v178, 61);
  v182 = (__ROR8__(v180, 8) + v181) ^ 0xE1A1FD5BD155F97ALL;
  v183 = v182 ^ __ROR8__(v181, 61);
  v184 = (__ROR8__(v182, 8) + v183) ^ 0xDA604B0C03A2BF99;
  v185 = v184 ^ __ROR8__(v183, 61);
  v186 = __ROR8__(v184, 8);
  v187 = (((2 * (v186 + v185)) & 0x7C284378FC68356ALL) - (v186 + v185) + 0x41EBDE4381CBE54ALL) ^ 0xBBDE3C8E4AF5D48DLL;
  v188 = v187 ^ __ROR8__(v185, 61);
  v189 = __ROR8__(v187, 8);
  v190 = (((2 * (v189 + v188)) | 0xC17855497E4B109CLL) - (v189 + v188) - 0x60BC2AA4BF25884ELL) ^ 0xB24C26429FC05BE0;
  STACK[0x5308] = __ROR8__(v190, 8) + (v190 ^ __ROR8__(v188, 61));
  v191 = (STACK[0x3368] + STACK[0x4B78]) ^ 0xB88801D4E1C76353;
  v192 = v191 ^ __ROR8__(STACK[0x3368], 61);
  v193 = (__ROR8__(v191, 8) + v192) ^ 0x38C8B16AE7056877;
  v194 = v193 ^ __ROR8__(v192, 61);
  v195 = (__ROR8__(v193, 8) + v194) ^ 0xE580B17D8CC5E551;
  v196 = __ROR8__(v195, 8);
  v197 = v195 ^ __ROR8__(v194, 61);
  v198 = (((2 * (v196 + v197)) | 0xCAE5E2FADA32C860) - (v196 + v197) - 0x6572F17D6D196430) ^ 0x84D30C26BC4C9D4ALL;
  v199 = v198 ^ __ROR8__(v197, 61);
  v200 = __ROR8__(v198, 8);
  v201 = (((2 * (v200 + v199)) | 0x75254C458B109CALL) - (v200 + v199) - 0x3A92A622C5884E5) ^ 0xD9C9616E2FFA3B7CLL;
  v202 = v201 ^ __ROR8__(v199, 61);
  v203 = __ROR8__(v201, 8);
  v204 = __ROR8__((v203 + v202 - ((2 * (v203 + v202)) & 0x64E3FC8C75B3788CLL) + 0x3271FE463AD9BC46) ^ 0xC8441C8BF1E78D81, 8);
  v205 = (v203 + v202 - ((2 * (v203 + v202)) & 0x64E3FC8C75B3788CLL) + 0x3271FE463AD9BC46) ^ 0xC8441C8BF1E78D81 ^ __ROR8__(v202, 61);
  v206 = __ROR8__((v204 + v205) ^ 0xD2F00CE620E5D3AELL, 8) + ((v204 + v205) ^ 0xD2F00CE620E5D3AELL ^ __ROR8__(v205, 61));
  v207 = (STACK[0x3370] + STACK[0x4B20]) ^ 0xB88801D4E1C76353;
  v208 = v207 ^ __ROR8__(STACK[0x3370], 61);
  v209 = (__ROR8__(v207, 8) + v208) ^ 0x38C8B16AE7056877;
  v210 = v209 ^ __ROR8__(v208, 61);
  v211 = (__ROR8__(v209, 8) + v210) ^ 0xE580B17D8CC5E551;
  v212 = v211 ^ __ROR8__(v210, 61);
  v213 = __ROR8__(v211, 8);
  v214 = (v213 + v212 - ((2 * (v213 + v212)) & 0x889DFD599683D282) + 0x444EFEACCB41E941) ^ 0xA5EF03F71A14103BLL;
  v215 = v214 ^ __ROR8__(v212, 61);
  v216 = __ROR8__(v214, 8);
  v217 = (((2 * (v216 + v215)) | 0x38BC90D5DB5FC36) - (v216 + v215) + 0x7E3A1B79512501E5) ^ 0x5BA5AF8AAD784182;
  v218 = v217 ^ __ROR8__(v215, 61);
  v219 = (__ROR8__(v217, 8) + v218) ^ 0xFA35E2CDCB3E31C7;
  v220 = __ROR8__(v219, 8);
  v221 = v219 ^ __ROR8__(v218, 61);
  v222 = ((__ROR8__((v220 + v221) ^ 0xD2F00CE620E5D3AELL, 8) + ((v220 + v221) ^ 0xD2F00CE620E5D3AELL ^ __ROR8__(v221, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x4B28];
  v223 = ((v222 ^ LODWORD(STACK[0x4B30]) ^ 0x16) - 24) ^ ((v222 ^ LODWORD(STACK[0x4B30]) ^ 0xB) - 5) ^ ((v222 ^ LODWORD(STACK[0x4B30]) ^ 0x1D) - 19);
  v224 = (((2 * (STACK[0x3380] + STACK[0x4AA0])) & 0x9FF53FCAF2D73924) - (STACK[0x3380] + STACK[0x4AA0]) - 0x4FFA9FE5796B9C93) ^ 0x88D61CE6753003ELL;
  v225 = v224 ^ __ROR8__(STACK[0x3380], 61);
  v226 = __ROR8__(v224, 8);
  v227 = (((2 * (v226 + v225)) | 0x307EBC3A7AAA65B6) - (v226 + v225) + 0x67C0A1E2C2AACD25) ^ 0xA0F7EF77DA505AACLL;
  v228 = v227 ^ __ROR8__(v225, 61);
  v229 = (__ROR8__(v227, 8) + v228) ^ 0xE580B17D8CC5E551;
  v230 = v229 ^ __ROR8__(v228, 61);
  v231 = (__ROR8__(v229, 8) + v230) ^ 0xE1A1FD5BD155F97ALL;
  v232 = v231 ^ __ROR8__(v230, 61);
  v233 = (__ROR8__(v231, 8) + v232) ^ 0xDA604B0C03A2BF99;
  v234 = __ROR8__(v233, 8);
  v235 = v233 ^ __ROR8__(v232, 61);
  v236 = (v234 + v235) ^ 0xFA35E2CDCB3E31C7;
  v237 = v236 ^ __ROR8__(v235, 61);
  v238 = (__ROR8__(v236, 8) + v237) ^ 0xD2F00CE620E5D3AELL;
  v239 = v238 ^ __ROR8__(v237, 61);
  v240 = __ROR8__(v238, 8);
  v241 = ((v240 + v239 - ((2 * (v240 + v239)) & 0x5BC863C7D47BAB98) + 0x2DE431E3EA3DD5CCLL) ^ 0xD9973AD2444DA0B7) >> STACK[0x4AB0];
  v242 = ((v241 ^ LODWORD(STACK[0x4AB8]) ^ 0xFFFFFFEA) - 114) ^ ((v241 ^ LODWORD(STACK[0x4AB8]) ^ 0xE) + 106) ^ ((v241 ^ LODWORD(STACK[0x4AB8]) ^ 0xFFFFFFE4) - 124);
  v243 = (STACK[0x3390] + STACK[0x49B0]) ^ 0xB88801D4E1C76353 ^ __ROR8__(STACK[0x3390], 61);
  v244 = (__ROR8__((STACK[0x3390] + STACK[0x49B0]) ^ 0xB88801D4E1C76353, 8) + v243) ^ 0x38C8B16AE7056877;
  v245 = v244 ^ __ROR8__(v243, 61);
  v246 = __ROR8__(v244, 8);
  v247 = (((v246 + v245) | 0x5DA6C989FB0B30F2) - ((v246 + v245) | 0xA259367604F4CF0DLL) - 0x5DA6C989FB0B30F3) ^ 0xB82678F477CED5A3;
  v248 = v247 ^ __ROR8__(v245, 61);
  v249 = (__ROR8__(v247, 8) + v248) ^ 0xE1A1FD5BD155F97ALL;
  v250 = v249 ^ __ROR8__(v248, 61);
  v251 = (__ROR8__(v249, 8) + v250) ^ 0xDA604B0C03A2BF99;
  v252 = __ROR8__(v251, 8);
  v253 = v251 ^ __ROR8__(v250, 61);
  v254 = (((2 * (v252 + v253)) & 0x2F408E384DE4828CLL) - (v252 + v253) + 0x685FB8E3D90DBEB9) ^ 0x926A5A2E12338F7ELL;
  v255 = v254 ^ __ROR8__(v253, 61);
  v256 = __ROR8__(v254, 8);
  v257 = (((v256 + v255) | 0x49C7030642248FE1) - ((v256 + v255) | 0xB638FCF9BDDB701ELL) - 0x49C7030642248FE2) ^ 0x9B370FE062C15C4FLL;
  v258 = ((__ROR8__(v257, 8) + (v257 ^ __ROR8__(v255, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x4A50];
  LODWORD(v88) = ((v258 ^ LODWORD(STACK[0x4A58]) ^ 0xFFFFFFEC) + 69) ^ (87 - (v258 ^ LODWORD(STACK[0x4A58]))) ^ ((v258 ^ LODWORD(STACK[0x4A58]) ^ 0x13) - 68);
  v259 = (((STACK[0x33D8] << (STACK[0x3468] + 101)) | 0x50C0839E065FCEFELL) - STACK[0x33D8] + 0x579FBE30FCD01881) ^ 0x10E8401BE2E8842CLL ^ STACK[0x33E0];
  v260 = (__ROR8__((((STACK[0x33D8] << (STACK[0x3468] + 101)) | 0x50C0839E065FCEFELL) - STACK[0x33D8] + 0x579FBE30FCD01881) ^ 0x10E8401BE2E8842CLL, 8) + v259) ^ (STACK[0x5410] + 0x38C8B16AE70549C1);
  v261 = v260 ^ __ROR8__(v259, 61);
  v262 = (__ROR8__(v260, 8) + v261) ^ 0xE580B17D8CC5E551;
  v263 = v262 ^ __ROR8__(v261, 61);
  v264 = __ROR8__(v262, 8);
  v265 = (((2 * (v264 + v263)) | 0xB8A3CFEEEB2E646) - (v264 + v263) + 0x7A3AE18088A68CDDLL) ^ 0x6464E324A60C8A59;
  v266 = v265 ^ __ROR8__(v263, 61);
  v267 = (__ROR8__(v265, 8) + v266) ^ 0xDA604B0C03A2BF99;
  v268 = v267 ^ __ROR8__(v266, 61);
  v269 = __ROR8__(v267, 8);
  v270 = (((v269 + v268) | 0x31CC8DC816C5567ALL) - ((v269 + v268) | 0xCE337237E93AA985) - 0x31CC8DC816C5567BLL) ^ 0xCBF96F05DDFB67BDLL;
  v271 = v270 ^ __ROR8__(v268, 61);
  v272 = (__ROR8__(v270, 8) + v271) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(v112) = (((__ROR8__(v272, 8) + (v272 ^ __ROR8__(v271, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x3B10]) ^ LODWORD(STACK[0x3B1C]);
  v273 = (((2 * (STACK[0x4868] + STACK[0x4FE0])) | 0x3941DF176425AEDCLL) - (STACK[0x4868] + STACK[0x4FE0]) - 0x1CA0EF8BB212D76ELL) ^ 0xA428EE5F53D5B43DLL;
  v274 = v273 ^ __ROR8__(STACK[0x4868], 61);
  v275 = (__ROR8__(v273, 8) + v274) ^ 0x38C8B16AE7056877;
  v276 = v275 ^ __ROR8__(v274, 61);
  v277 = (__ROR8__(v275, 8) + v276) ^ 0xE580B17D8CC5E551;
  v278 = v277 ^ __ROR8__(v276, 61);
  v279 = (__ROR8__(v277, 8) + v278) ^ 0xE1A1FD5BD155F97ALL;
  v280 = __ROR8__(v279, 8);
  v281 = v279 ^ __ROR8__(v278, 61);
  v282 = (v280 + v281 - ((2 * (v280 + v281)) & 0x95E1D347E15B1F30) - 0x350F165C0F527068) ^ 0x1090A2AFF30F3001;
  v283 = v282 ^ __ROR8__(v281, 61);
  v284 = __ROR8__(v282, 8);
  v285 = (((2 * (v284 + v283)) & 0xAFE37659D09BCF36) - (v284 + v283) + 0x280E44D317B21864) ^ 0xD23BA61EDC8C29A3;
  v286 = v285 ^ __ROR8__(v283, 61);
  v287 = __ROR8__(v285, 8);
  v288 = ((2 * (v287 + v286)) & 0x7D7F4CFF7C68BF3ALL) - (v287 + v286);
  v289 = __ROR8__((STACK[0x4A60] + STACK[0x4978]) ^ 0xB88801D4E1C76353, 8);
  v290 = (STACK[0x4A60] + STACK[0x4978]) ^ 0xB88801D4E1C76353 ^ __ROR8__(STACK[0x4978], 61);
  v291 = (v289 + v290 - ((2 * (v289 + v290)) & 0x85148C92E99E4400) - 0x3D75B9B68B30DE00) ^ 0xFA42F72393CA4A77;
  v292 = v291 ^ __ROR8__(v290, 61);
  v293 = __ROR8__(v291, 8);
  v294 = ((v293 + v292) | 0x5890C1633D793F14) - ((v293 + v292) | 0xA76F3E9CC286C0EBLL);
  v295 = (STACK[0x49D8] + STACK[0x5090] - ((STACK[0x4B18] + 0x27DEBA2CD5939838) & (2 * (STACK[0x49D8] + STACK[0x5090]))) - 0x6C10A2E995360B33) ^ 0x2B675CC28B0E979ELL;
  v296 = v295 ^ __ROR8__(STACK[0x49D8], 61);
  v297 = __ROR8__(v295, 8);
  v298 = (v294 - 0x5890C1633D793F15) ^ 0xBD10701EB1BCDA45;
  v299 = v298 ^ __ROR8__(v292, 61);
  v300 = (__ROR8__(v298, 8) + v299) ^ 0xE1A1FD5BD155F97ALL;
  v301 = v300 ^ __ROR8__(v299, 61);
  v302 = __ROR8__(v300, 8);
  v303 = (((2 * (v297 + v296)) | 0x506FC4175A3A5752) - (v297 + v296) - 0x2837E20BAD1D2BA9) ^ 0x10FF53614A1843DELL;
  v304 = v303 ^ __ROR8__(v296, 61);
  v305 = __ROR8__(v303, 8);
  v306 = (v305 + v304 - ((2 * (v305 + v304)) & 0x24ED43A625AC35A8) + 0x1276A1D312D61AD4) ^ 0xF7F610AE9E13FF85;
  v307 = v306 ^ __ROR8__(v304, 61);
  v308 = __ROR8__(v306, 8);
  v309 = (v308 + v307 - ((2 * (v308 + v307)) & 0x29DC5ACEEB43FE8) + 0x14EE2D6775A1FF4) ^ 0xE0EF1F8DA60FE68ELL;
  v310 = v309 ^ __ROR8__(v307, 61);
  v311 = __ROR8__(v309, 8);
  v312 = ((2 * (v311 + v310)) | 0x9E3AC14E98BAB684) - (v311 + v310);
  v313 = (v0 + STACK[0x5780] - ((2 * (v0 + STACK[0x5780])) & 0xEE830306E1F55BB2) - 0x8BE7E7C8F055227) ^ (STACK[0x5590] + 0x4FC98057913D6F20);
  v314 = v313 ^ __ROR8__(v0, 61);
  v315 = (__ROR8__(v313, 8) + v314) ^ 0x38C8B16AE7056877;
  v316 = v315 ^ __ROR8__(v314, 61);
  v317 = __ROR8__(v315, 8);
  v318 = (((2 * (v317 + v316)) | 0xF4D493934D0AD15ELL) - (v317 + v316) + 0x595B636597A9751) ^ 0x1FEAF8B42A408DFELL;
  v319 = v318 ^ __ROR8__(v316, 61);
  v320 = (__ROR8__(v318, 8) + v319) ^ 0xE1A1FD5BD155F97ALL;
  v321 = v320 ^ __ROR8__(v319, 61);
  v322 = (__ROR8__(v320, 8) + v321) ^ 0xDA604B0C03A2BF99;
  v323 = v322 ^ __ROR8__(v321, 61);
  v324 = __ROR8__(v322, 8);
  v325 = ((2 * (v324 + v323)) | 0x80A82FC3731BE6ALL) - (v324 + v323);
  v326 = (v288 - 0x3EBFA67FBE345F9ELL) ^ 0x13B05566612E73CCLL;
  v327 = v326 ^ __ROR8__(v286, 61);
  v328 = __ROR8__(v326, 8);
  v329 = *(STACK[0x53A0] + ((LODWORD(STACK[0x5530]) - 1367824346 + (((STACK[0x5380] & 0x9786F6B0) + (STACK[0x5218] ^ 0xCBC37B5A)) & 0xFFFFFFF8)) & STACK[0x5348]));
  v330 = (v302 + v301 - ((2 * (v302 + v301)) & 0x8ECB3211B6668FE2) + 0x47659908DB3347F1) ^ 0x9D05D204D891F868;
  v331 = v330 ^ __ROR8__(v301, 61);
  v332 = (((STACK[0x5258] + v329) | 0x83BA8E1FBA054E07) - ((STACK[0x5258] + v329) | 0x7C4571E045FAB1F8) + 0x7C4571E045FAB1F8) ^ 0x3B328FCB5BC22D54;
  v333 = v332 ^ __ROR8__(v329, 61);
  v334 = (__ROR8__(v332, 8) + v333) ^ 0x38C8B16AE7056877;
  v335 = v334 ^ __ROR8__(v333, 61);
  v336 = __ROR8__(v334, 8);
  v337 = (v336 + v335 - ((2 * (v336 + v335)) & 0xF5A5024130863546) + 0x7AD2812098431AA3) ^ 0x9F52305D1486FFF2;
  v338 = v337 ^ __ROR8__(v335, 61);
  v339 = (__ROR8__(v337, 8) + v338) ^ 0xE1A1FD5BD155F97ALL;
  v340 = v339 ^ __ROR8__(v338, 61);
  v341 = (__ROR8__(v339, 8) + v340) ^ 0xDA604B0C03A2BF99;
  v342 = v341 ^ __ROR8__(v340, 61);
  v343 = __ROR8__(v341, 8);
  v344 = (__ROR8__(v330, 8) + v331) ^ 0xFA35E2CDCB3E31C7;
  v345 = v344 ^ __ROR8__(v331, 61);
  v346 = (__ROR8__(v344, 8) + v345) ^ 0xD2F00CE620E5D3AELL;
  v347 = v346 ^ __ROR8__(v345, 61);
  v348 = (v343 + v342 - ((2 * (v343 + v342)) & 0xA6A970657D50BF72) + 0x5354B832BEA85FB9) ^ 0xA9615AFF75966E7ELL;
  v349 = v348 ^ __ROR8__(v342, 61);
  v350 = __ROR8__(v348, 8);
  v351 = (v312 - 0x4F1D60A74C5D5B42) ^ 0x957D2BAB4FFFE4DBLL ^ __ROR8__(v310, 61);
  v352 = (__ROR8__((v312 - 0x4F1D60A74C5D5B42) ^ 0x957D2BAB4FFFE4DBLL, 8) + v351) ^ 0xFA35E2CDCB3E31C7;
  v353 = v352 ^ __ROR8__(v351, 61);
  v354 = (__ROR8__(v352, 8) + v353) ^ 0xD2F00CE620E5D3AELL;
  v355 = v354 ^ __ROR8__(v353, 61);
  v356 = (v325 + 0x7BFABE81E46720CBLL) ^ 0x7E30A3B3D0A6EEF2 ^ __ROR8__(v323, 61);
  v357 = *(STACK[0x5298] + (LODWORD(STACK[0x5140]) & ((STACK[0x5168] & 0xF8243D18) + (STACK[0x5168] | 0xF8243D1D) - 2112357379)));
  v358 = (__ROR8__((v325 + 0x7BFABE81E46720CBLL) ^ 0x7E30A3B3D0A6EEF2, 8) + v356) ^ 0xD2F00CE620E5D3AELL;
  v359 = v358 ^ __ROR8__(v356, 61);
  v360 = __ROR8__(v358, 8);
  v361 = (((2 * (v350 + v349)) & 0x53594F78F5CFD546) - (v350 + v349) - 0x29ACA7BC7AE7EAA4) ^ 0x4A354A5A5FDC6F2;
  v362 = (v357 + STACK[0x5158] - ((2 * (v357 + STACK[0x5158])) & 0x9D7BC12F9E16CC40) + 0x4EBDE097CF0B6620) ^ 0xF635E1432ECC0573;
  v363 = v362 ^ __ROR8__(v357, 61);
  LODWORD(v128) = ((v112 ^ 0x74) - 104) ^ ((v112 ^ 0xFFFFFF9A) + 122) ^ ((v112 ^ 0xFFFFFFEE) + 14);
  v364 = (__ROR8__(v362, 8) + v363) ^ 0x38C8B16AE7056877;
  v365 = v364 ^ __ROR8__(v363, 61);
  v366 = v328 + v327;
  v367 = (__ROR8__(v364, 8) + v365) ^ 0xE580B17D8CC5E551;
  v368 = v367 ^ __ROR8__(v365, 61);
  v369 = __ROR8__(v346, 8) + v347;
  v370 = (__ROR8__(v367, 8) + v368) ^ 0xE1A1FD5BD155F97ALL;
  v371 = v370 ^ __ROR8__(v368, 61);
  v372 = (__ROR8__(v370, 8) + v371) ^ 0xDA604B0C03A2BF99;
  v373 = v372 ^ __ROR8__(v371, 61);
  v374 = (__ROR8__(v372, 8) + v373) ^ 0xFA35E2CDCB3E31C7;
  v375 = v374 ^ __ROR8__(v373, 61);
  v376 = __ROR8__(v374, 8);
  v377 = __ROR8__(v354, 8) + v355;
  v378 = v360 + v359 - ((2 * (v360 + v359)) & 0x3331D787EF053790);
  v379 = __ROR8__(v361, 8) + (v361 ^ __ROR8__(v349, 61));
  v380 = (((2 * (v376 + v375)) & 0x9BEBEAF667A8524CLL) - (v376 + v375) - 0x4DF5F57B33D42927) ^ 0x60FA0662ECCE0577;
  v381 = v380 ^ __ROR8__(v375, 61);
  v382 = __ROR8__(v380, 8);
  v383 = ((2 * (v382 + v381)) | 0xA0F03E021099C54) - (v382 + v381);
  LODWORD(v112) = LODWORD(STACK[0x55D0]) + 3779;
  LODWORD(v381) = (LODWORD(STACK[0x55D0]) - 21890) | 0x2C64;
  v384 = STACK[0x5450];
  LODWORD(STACK[0x5138]) = 2 * STACK[0x5450];
  v385 = *STACK[0x51E8];
  v386 = STACK[0x5460];
  v387 = *(STACK[0x5460] + ((((v381 - 11381) & (((2 * v384) & 0x25B38B60) + (v384 ^ 0x12D9C5B2))) + 1734505320) & v385));
  v388 = (((v387 + STACK[0x54C0]) & 0xFC8F94BDA6FD1E91 ^ 0xA40B800882C80690) + ((v387 + STACK[0x54C0]) ^ 0x59845CF72435982BLL) - (((v387 + STACK[0x54C0]) ^ 0x59845CF72435982BLL) & 0xFC8F94BDA6FD1E91)) ^ 0x1D83C99E630FE5E9;
  v389 = v388 ^ __ROR8__(v387, 61);
  v390 = (__ROR8__(v388, 8) + v389) ^ 0x38C8B16AE7056877;
  v391 = v390 ^ __ROR8__(v389, 61);
  v392 = __ROR8__(v390, 8);
  v393 = (((2 * ((v392 + v391) ^ 0x66DDE743BEB6708FLL)) & 0xCEC04FF2FA0C353ELL) - ((v392 + v391) ^ 0x66DDE743BEB6708FLL) - 0x676027F97D061AA0) ^ 0x1BC28E38B08A70BELL;
  v394 = v393 ^ __ROR8__(v391, 61);
  v395 = (__ROR8__(v393, 8) + v394) ^ 0xE1A1FD5BD155F97ALL;
  v396 = v395 ^ __ROR8__(v394, 61);
  v397 = (__ROR8__(v395, 8) + v396) ^ 0xDA604B0C03A2BF99;
  v398 = v397 ^ __ROR8__(v396, 61);
  v399 = (__ROR8__(v397, 8) + v398) ^ 0xFA35E2CDCB3E31C7;
  v400 = v399 ^ __ROR8__(v398, 61);
  v401 = (__ROR8__(v399, 8) + v400) ^ 0xD2F00CE620E5D3AELL;
  v402 = __ROR8__(v401, 8);
  v403 = __ROR8__(v400, 61);
  v404 = ((2 * (v402 + (v401 ^ v403))) | 0xAE6051A0F061CE2) - (v402 + (v401 ^ v403));
  v405 = STACK[0x4FC0] + LODWORD(STACK[0x52E8]);
  LODWORD(STACK[0x5410]) = v385;
  LODWORD(STACK[0x5188]) = v385 & 0xFFFFFFF8;
  v406 = *(v386 + (v385 & 0xFFFFFFF8 & ((v405 & 0x3A967368) + (v405 & 0xC5698C90 | 0x3A96736F) + 1067828651)));
  STACK[0x5358] = v405 & 0xFFFFFFFFFFFFFFF8;
  v407 = __ROR8__(v405 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x5200] = v407;
  v408 = __ROR8__((((v406 + v407) | 0xC227322C226C495CLL) - ((v406 + v407) | 0x3DD8CDD3DD93B6A3) + 0x3DD8CDD3DD93B6A3) ^ 0x7AAF33F8C3AB2A0FLL, 8);
  v409 = (((v406 + v407) | 0xC227322C226C495CLL) - ((v406 + v407) | 0x3DD8CDD3DD93B6A3) + 0x3DD8CDD3DD93B6A3) ^ 0x7AAF33F8C3AB2A0FLL ^ __ROR8__(v406, 61);
  v410 = (v408 + v409) ^ 0x38C8B16AE7056877;
  v411 = v410 ^ __ROR8__(v409, 61);
  v412 = (__ROR8__(v410, 8) + v411) ^ 0xE580B17D8CC5E551;
  v413 = v412 ^ __ROR8__(v411, 61);
  v414 = __ROR8__(v412, 8);
  v415 = (((v414 + v413) | 0xBCA02350DEF88CFALL) - ((v414 + v413) | 0x435FDCAF21077305) + 0x435FDCAF21077305) ^ 0x5D01DE0B0FAD7580;
  v416 = v415 ^ __ROR8__(v413, 61);
  v417 = __ROR8__(v415, 8);
  v418 = (v417 + v416 - ((2 * (v417 + v416)) & 0xBBAD1604CD5BFF6CLL) + 0x5DD68B0266ADFFB6) ^ 0x87B6C00E650F402FLL;
  v419 = v418 ^ __ROR8__(v416, 61);
  v420 = (__ROR8__(v418, 8) + v419) ^ 0xFA35E2CDCB3E31C7;
  v421 = v420 ^ __ROR8__(v419, 61);
  v422 = (__ROR8__(v420, 8) + v421) ^ 0xD2F00CE620E5D3AELL;
  v423 = v422 ^ __ROR8__(v421, 61);
  v424 = __ROR8__(v422, 8);
  v425 = ((2 * ((v424 + v423) ^ 0xA98A747C6281E107)) | 0x23F275651C9CCDF0) - ((v424 + v423) ^ 0xA98A747C6281E107);
  LODWORD(STACK[0x5230]) = LODWORD(STACK[0x55A0]) + 112;
  LODWORD(STACK[0x4F70]) = LODWORD(STACK[0x5560]) + 111;
  LODWORD(STACK[0x4FF0]) = LODWORD(STACK[0x56F0]) ^ ((STACK[0x5550] ^ 0xF4730B31AE70757BLL) >> STACK[0x54B0]);
  LODWORD(STACK[0x54E0]) = LODWORD(STACK[0x5398]) ^ ((STACK[0x5500] ^ 0xF4730B31AE70757BLL) >> STACK[0x5390]);
  LODWORD(STACK[0x4F78]) = LODWORD(STACK[0x52F0]) ^ ((STACK[0x54F0] ^ 0xF4730B31AE70757BLL) >> STACK[0x52D0]);
  LODWORD(STACK[0x5590]) = LODWORD(STACK[0x5370]) - 109;
  LODWORD(STACK[0x5560]) = LODWORD(STACK[0x50C8]) ^ ((STACK[0x5368] ^ 0xF4730B31AE70757BLL) >> STACK[0x50C0]);
  LODWORD(STACK[0x5530]) = LODWORD(STACK[0x4F48]) ^ ((STACK[0x5310] ^ 0xF4730B31AE70757BLL) >> STACK[0x4F10]);
  LODWORD(STACK[0x5120]) = LODWORD(STACK[0x4E80]) ^ ((STACK[0x5308] ^ 0xF4730B31AE70757BLL) >> STACK[0x4EC8]);
  LODWORD(STACK[0x5520]) = LODWORD(STACK[0x4B70]) ^ ((v206 ^ 0xF4730B31AE70757BLL) >> STACK[0x4B68]);
  LODWORD(STACK[0x5248]) = v223 + 19;
  LODWORD(STACK[0x55D0]) = v242 + 17;
  LODWORD(STACK[0x5550]) = v88 + 126;
  LODWORD(STACK[0x4F98]) = v128 - 115;
  LODWORD(STACK[0x5310]) = LODWORD(STACK[0x5408]) ^ ((v366 ^ 0xF4730B31AE70757BLL) >> STACK[0x53A8]);
  LODWORD(STACK[0x5270]) = LODWORD(STACK[0x4AC8]) ^ ((v369 ^ 0xF4730B31AE70757BLL) >> STACK[0x4A68]);
  LODWORD(STACK[0x55A0]) = LODWORD(STACK[0x5790]) ^ ((v377 ^ 0xF4730B31AE70757BLL) >> STACK[0x5088]);
  LODWORD(STACK[0x54F0]) = LODWORD(STACK[0x5670]) ^ (((v378 + 0x1998EBC3F7829BC8) ^ 0xEDEBE0F259F2EEB3) >> STACK[0x53F8]);
  LODWORD(STACK[0x5370]) = LODWORD(STACK[0x5288]) ^ ((v379 ^ 0xF4730B31AE70757BLL) >> STACK[0x5260]);
  LODWORD(STACK[0x5320]) = LODWORD(STACK[0x5210]) ^ (((v383 + 0x7AF87E0FEF7B31D6) ^ 0x71748AC1BEF4BB51uLL) >> STACK[0x5178]);
  LODWORD(STACK[0x5380]) = LODWORD(STACK[0x5620]) ^ (((v404 - 0x573028D07830E71) ^ 0xF10009BCA9F37B0ALL) >> STACK[0x5600]);
  LODWORD(v423) = *v405;
  v426 = 8 * (v405 & 7);
  STACK[0x5190] = v426;
  LODWORD(STACK[0x51A0]) = v423 ^ 0x3B;
  LODWORD(STACK[0x54D0]) = v423 ^ 0x3B ^ (((v425 - 0x11F93AB28E4E66F8) ^ 0x4C0045FF42BFF284) >> v426);
  LODWORD(v404) = LODWORD(STACK[0x53D0]) != 32;
  LODWORD(STACK[0x5500]) = v112;
  v427 = *(STACK[0x57D8] + 8 * (v112 ^ (v404 | (32 * v404))));
  LODWORD(STACK[0x52E8]) = LODWORD(STACK[0x5008]) + 32;
  STACK[0x52F8] = 32;
  STACK[0x5308] = 155;
  LODWORD(STACK[0x51F8]) = 202;
  LODWORD(STACK[0x5368]) = 66;
  return v427(LODWORD(STACK[0x52A0]), 354021940);
}

uint64_t sub_1003FFE0C@<X0>(int a1@<W0>, void *a2@<X2>, uint64_t a3@<X3>, _DWORD *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v8 = v7 + STACK[0x78E0];
  v10 = v7 - 1;
  v9 = v7 == 1;
  v11 = (a6 + v7 - 1) & ((v6 - 4112) ^ 0xFFFFFFFFFFFFF306);
  v12 = *(*a2 + (*a4 & (v11 + a1) & 0xFFFFFFFFFFFFFFF8));
  v13 = (__ROR8__(v11, 8) + v12) ^ a3;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ a5;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0x4B8B7BC25EE752ALL;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xF1BBBD0ABB8FD506;
  v20 = __ROR8__(v19, 8);
  v21 = v19 ^ __ROR8__(v18, 61);
  v22 = (v20 + v21) ^ 0xC54DD35E7B5A79B6;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (0xB6D557E65FF64D2ELL - ((v24 + v23) | 0xB6D557E65FF64D2ELL) + ((v24 + v23) | 0x492AA819A009B2D1)) ^ 0x25D25173FDDBE1E4;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (((2 * (v27 + v26)) & 0x7E60D8B8990F7DA8) - (v27 + v26) - 0x3F306C5C4C87BED5) ^ 0x5737D73CAAB38C56;
  *(a6 + v10) = (((__ROR8__(v28, 8) + (v28 ^ __ROR8__(v26, 61))) ^ 0xD12AA0D6299D4D3BLL) >> (8 * ((a6 + v10) & 7))) ^ *(v8 + 15);
  v29 = v9;
  return (*(STACK[0x57D8] + 8 * ((22113 * v29) ^ v6)))();
}

uint64_t sub_100400000()
{
  *v1 = v0;
  LOBYTE(STACK[0xEBC3]) = 0;
  LODWORD(STACK[0xEBBC]) = v3;
  return (*(STACK[0x57D8] + 8 * (v2 ^ ((v2 - 1223433229) | 0x1070) ^ 0x48EC7D4A ^ (50033 * (v2 > 0xC268E293)))))();
}

uint64_t sub_100400178()
{
  v0 = STACK[0x51B8] ^ 0x4188;
  STACK[0x7ED8] += ((v0 - 6045) | 0x1Au) ^ 0xFFFFFFFFFFFFFDDBLL;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1004001B8()
{
  v1 = STACK[0x57D8];
  STACK[0x8D48] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * ((((v0 - 598678866) & 0x23AF7DEC) - 20946) ^ v0)))();
}

uint64_t sub_1004002B0()
{
  v6 = STACK[0x89F8];
  v7 = 1917435887 * ((2 * (v3 & 0x127230BD712A2E8) - v3 + 0x7ED8DCF428ED5D17) ^ 0xABD3B00ACE560611);
  LODWORD(STACK[0x1D4D0]) = v7 + v0 + 781713000;
  STACK[0x1D4E8] = v7 + v6 - ((2 * v6) & 0xC41C019BD0696304) + 0x620E00CDE834B182;
  STACK[0x1D4C8] = v1;
  STACK[0x1D4D8] = &STACK[0x6280];
  LODWORD(STACK[0x1D4D4]) = ((v2 ^ 0xDB69F5FF) + (v0 ^ v4) + 782216283 + ((v2 << (((v0 - 84) | 0x40) + 16)) & 0xB6D3EBFE)) ^ v7;
  STACK[0x1D4C0] = &STACK[0x9A24];
  v8 = STACK[0x57D8];
  v9 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x5501)))(v5 - 240);
  return (*(v8 + 8 * ((28226 * (LODWORD(STACK[0x1D4E0]) == -143113071)) ^ v0)))(v9);
}

uint64_t sub_1004006A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = STACK[0x21E0] & 0xF3827EEB;
  v7 = STACK[0x8840];
  v8 = STACK[0x57D8];
  STACK[0xBF38] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x21DC]));
  return (*(v8 + 8 * (LODWORD(STACK[0x21D8]) ^ v6)))(a1, a2, a3, a4, a5, a6, v7);
}

uint64_t sub_1004008FC()
{
  *v2 = *v1 + v4;
  *(v1 + 12) = v4 + (v0 ^ 0xD21C8094);
  return (*(STACK[0x57D8] + 8 * ((30479 * (v3 > 0xCBDDFC28)) ^ (v3 - 1824743781))))();
}

uint64_t sub_100400960(uint64_t a1, int a2, int a3)
{
  v10 = (STACK[0x5780] & 2) == 0;
  v11 = STACK[0x5730];
  if ((STACK[0x5780] & 2) != 0)
  {
    v11 = STACK[0x57B0];
  }

  LODWORD(STACK[0x54F0]) = v11;
  v12 = STACK[0x5750];
  if (v10)
  {
    v12 = STACK[0x5740];
  }

  LODWORD(STACK[0x5470]) = v12;
  v13 = STACK[0x57A0];
  if ((STACK[0x53A8] & 2) == 0)
  {
    v13 = STACK[0x51F8];
  }

  LODWORD(STACK[0x5408]) = v13;
  v14 = (v3 + v9 + ((v9 + v4 - ((v9 + v4) >> 16)) >> 8) - ((v9 + v4) >> 16) - v5) ^ 0x52CD2994;
  v15 = v14 + (v14 >> 14) + ((v14 + (v14 >> 14)) >> 5);
  v16 = v15 - 1901450374 + ((v15 - 1901450374) >> 11) - ((v15 - 1901450374 + ((v15 - 1901450374) >> 11)) >> 1);
  v17 = v16 ^ a3;
  v18 = v16 + 220331226 - ((v16 + 220331226) >> 12) - ((v16 + 220331226 - ((v16 + 220331226) >> 12)) >> 8);
  v19 = v18 + 1277474580 - ((v18 + 1277474580) >> 8) + ((v18 + 1277474580 - ((v18 + 1277474580) >> 8)) >> 4);
  v20 = v15 ^ v7 ^ v19;
  v21 = v19 - 1673258921 - ((v19 - 1673258921) >> 10) - ((v19 - 1673258921 - ((v19 - 1673258921) >> 10)) >> 6);
  v22 = v17 ^ v21;
  v23 = v21 - 1911106311 - ((v21 - 1911106311) >> 14) - ((v21 - 1911106311 - ((v21 - 1911106311) >> 14)) >> 6);
  v24 = (v23 ^ 0xD6CA1380) - ((v23 ^ 0xD6CA1380) >> 9) + (((v23 ^ 0xD6CA1380) - ((v23 ^ 0xD6CA1380) >> 9)) >> 3);
  v25 = v20 ^ v24;
  v26 = v24 - 1028100912 + ((v24 - 1028100912) >> 14) - ((v24 - 1028100912 + ((v24 - 1028100912) >> 14)) >> 3);
  v27 = v22 ^ v26;
  v28 = v18 ^ v8 ^ v23 ^ (v26 - 1553481641 - ((v26 - 1553481641) >> 8) - ((v26 - 1553481641 - ((v26 - 1553481641) >> 8)) >> 2));
  LODWORD(STACK[0x55A0]) = v25 & 0xFE ^ 0xF8;
  LODWORD(STACK[0x5580]) = v25 & 0xFFFFFF01;
  LODWORD(STACK[0x57B0]) = v28 & 7;
  LODWORD(STACK[0x5350]) = v28 ^ 0x74C28688;
  LODWORD(STACK[0x5220]) = (v28 ^ 0x34954B79) - 236020110;
  LODWORD(STACK[0x5730]) = v28;
  LODWORD(STACK[0x5310]) = (v28 ^ 0xDB757809) + 504278274;
  v29 = -v28 & 7;
  if ((v28 & 7) != 0)
  {
    v30 = 255;
  }

  else
  {
    v30 = 0;
  }

  LODWORD(STACK[0x57A0]) = v29;
  v31 = v30 << v29;
  LODWORD(STACK[0x5320]) = (-587202560 * v31) & v27 ^ (16843009 * v31);
  if ((v28 & 7) != 0)
  {
    v32 = ~v31;
  }

  else
  {
    v32 = 0;
  }

  LODWORD(STACK[0x5218]) = v25 & v32;
  LODWORD(STACK[0x5740]) = v25;
  v33 = 16843009 * (v25 ^ 0x85 ^ ((v25 ^ 0x9485) >> 8) ^ ((v25 ^ 0xB4A69485) >> 16) ^ HIBYTE(v25) ^ 0xFD);
  LODWORD(STACK[0x5750]) = v27;
  v34 = 16843009 * ((v27 ^ a2 ^ ((v27 ^ a2) >> 8) ^ ((v27 ^ a2) >> 16)) ^ HIBYTE(v27) ^ 0xD4);
  LODWORD(STACK[0x53E8]) = v34;
  LODWORD(STACK[0x5238]) = v34 ^ v33;
  LODWORD(STACK[0x53A0]) = v34 ^ v33 ^ 0xE3E3E3E3;
  LODWORD(STACK[0x53D8]) = v33;
  LODWORD(STACK[0x5318]) = v33 ^ 0xBE99519F;
  return (*(STACK[0x57D8] + 8 * v6))(213450365);
}

uint64_t sub_1004013D0(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v5.n128_u64[0] = 0xF0F0F0F0F0F0F0FLL;
  v5.n128_u64[1] = 0xF0F0F0F0F0F0F0FLL;
  v6.n128_u64[0] = 0x1E1E1E1E1E1E1E1ELL;
  v6.n128_u64[1] = 0x1E1E1E1E1E1E1E1ELL;
  return (*(STACK[0x57D8] + 8 * (v4 - 10433)))(a1, a2, a3, a4, v5, v6);
}

uint64_t sub_1004016B4(uint64_t a1, uint64_t a2, int a3)
{
  *v3 = v5;
  v3[1] = 0;
  return (*(STACK[0x57D8] + 8 * (v4 ^ (((v5 ^ 0x3FE7FBB8FBF7F33ELL) - 0x3FE7FBB8A668A1FBLL + ((2 * v5) & 0x1F7EFE67CLL) != a2) * a3))))();
}

uint64_t sub_100401770@<X0>(uint64_t a1@<X1>, uint64_t a2@<X4>, int a3@<W8>)
{
  v3 = STACK[0x5968];
  v4 = STACK[0xAE40];
  STACK[0x5CC0] = 0xE2E2DA9EC4B6DBELL;
  STACK[0x9DF0] = v3;
  LODWORD(STACK[0x9DC4]) = STACK[0xBD30];
  STACK[0x7B30] = v4;
  LODWORD(STACK[0x6DD4]) = -769884028;
  STACK[0x96F8] = 0;
  LODWORD(STACK[0x8814]) = -769884012;
  STACK[0xCDA0] = &STACK[0x7848];
  STACK[0x5888] = &STACK[0x7EE4];
  LOBYTE(STACK[0xADC7]) = 0;
  LODWORD(STACK[0x99E4]) = 789970115;
  return (*(STACK[0x57D8] + 8 * a3))(104, a1, 0x30BDFED8F32E6831, 0x36584CF65D907F3ELL, a2, 0xB83E331A657D2BFCLL);
}

uint64_t sub_100401870(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v9 - 1;
  *(v6 + v10) = *(a5 + (v10 & 0xF)) ^ *(v7 + v10) ^ *((v10 & 0xF) + a6 + 4) ^ ((v10 & 0xF) * a3) ^ *(a4 + (v10 & 0xF));
  return (*(STACK[0x57D8] + 8 * ((17072 * (v10 == 0)) ^ v8)))();
}

uint64_t sub_100401908()
{
  v0 = STACK[0x51B8] - 16999;
  v1 = STACK[0x51B8] - 19577;
  STACK[0x60F0] = STACK[0xB3F8] + SLODWORD(STACK[0xB054]);
  v2 = STACK[0x57D8];
  STACK[0x7DD8] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v0 + v1 - 3877)))();
}

uint64_t sub_1004019C8()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x57B4)))();
  v4 = (*(v2 + 8 * (v0 ^ 0x57B7)))(STACK[0x38E0], v1, v3, STACK[0x38D8]) != 0;
  return (*(v2 + 8 * ((97 * v4) ^ v0 ^ 0x5DC)))();
}

uint64_t sub_100401A4C@<X0>(unsigned int a1@<W8>)
{
  v2 = STACK[0x1760];
  v3 = STACK[0x1748];
  LODWORD(STACK[0x1D4D4]) = LODWORD(STACK[0x1760]) ^ STACK[0x1748];
  STACK[0x1D4C0] = v3;
  LODWORD(STACK[0x1D4D0]) = v3;
  STACK[0x1D4D8] = v3 + a1;
  v4 = STACK[0x51B8];
  LODWORD(STACK[0x1D4CC]) = v3 + 1451493860 + STACK[0x51B8];
  LODWORD(STACK[0x1D4C8]) = v2 - v3 + 4102;
  LODWORD(STACK[0x1D4E0]) = v3 + v2 - 8;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v4 + 9182)))(v1 - 240);
  return (*(v5 + 8 * SLODWORD(STACK[0x1D4E4])))(v6);
}

uint64_t sub_100401B04@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X4>, int a4@<W6>, uint64_t a5@<X8>)
{
  v11 = *(v7 + a5) * v6;
  v12 = (v11 ^ v10) + ((a5 + a3 + (v11 ^ v10)) >> ((v5 + 123) ^ 0xC1));
  v13 = a5 + v8 - ((v12 + v9) >> 8) + v12;
  v14 = a5 + v8 + (v13 ^ v11) - (((v13 ^ v11) + v9 + (((v13 ^ v11) + v9) >> 16)) >> 8) + (((v13 ^ v11) + v9) >> 16);
  v15 = a5 + v8 + (v14 ^ v11) - (((v14 ^ v11) + v9 + (((v14 ^ v11) + v9) >> 16)) >> 8) + (((v14 ^ v11) + v9) >> 16);
  return (*(STACK[0x57D8] + 8 * ((235 * (a5 + a3 == 15)) ^ a4)))(a1, v13 ^ a2 ^ a1 & (v13 >> 2) ^ v14 ^ a1 & (v14 >> 2) ^ v15 ^ a1 & (v15 >> 2));
}

uint64_t sub_100401C74()
{
  v0 = STACK[0x51B8];
  STACK[0xBBC8] = &STACK[0x718C];
  LODWORD(STACK[0xCDD8]) = 550409986;
  return (*(STACK[0x57D8] + 8 * (v0 - 17563)))();
}

uint64_t sub_100401D5C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = (v4 - 20411) | a4;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v4 + 9258)))(1028);
  STACK[0xD4A0] = v7;
  STACK[0x57B0] = v5;
  return (*(v6 + 8 * (((v7 == 0) * (v5 ^ 0x5787)) ^ v4)))();
}

uint64_t sub_100401E08@<X0>(unsigned int a1@<W8>)
{
  v6 = STACK[0x3554];
  v7 = LODWORD(STACK[0x3554]) ^ v3;
  v8 = STACK[0x3548];
  *(v4 + 624) = v7 + STACK[0x3548];
  *(v4 + 616) = v8 + a1;
  *(v4 + 600) = v6 - v8 + LODWORD(STACK[0x3550]) + v1 + 667;
  *(v4 + 592) = -v2 ^ v8;
  *(v4 + 612) = v6 ^ v8;
  *(v4 + 608) = v8;
  v9 = STACK[0x51B8];
  *(v4 + 604) = v8 + 1451493860 + STACK[0x51B8];
  v10 = STACK[0x57D8];
  v11 = (*(STACK[0x57D8] + 8 * (v9 ^ 0x2462)))(v5 - 240);
  return (*(v10 + 8 * SLODWORD(STACK[0x1D4E4])))(v11);
}

uint64_t sub_100401EB0@<X0>(int a1@<W8>)
{
  *v1 = a1 + 1;
  LODWORD(STACK[0x1D4C0]) = (v2 + 1717164589) ^ (1964904101 * ((((v3 - 240) | 0xC39F0D7E) - (v3 - 240) + ((v3 - 240) & 0x3C60F280)) ^ 0x39BDE6FA));
  STACK[0x1D4C8] = 0;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v2 ^ 0x6646)))(v3 - 240);
  return (*(v4 + 8 * (((*(STACK[0x4D10] + 8) == 0) * ((v2 ^ 0x31DB) + 15611)) ^ v2)))(v5);
}

uint64_t sub_100401FC8()
{
  v0 = STACK[0x18D0] & 0xC05C2F99;
  v1 = STACK[0x51B8] - 22613;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))(STACK[0xA838]);
  return (*(v2 + 8 * (v1 + 10912 + v0)))(v3);
}

uint64_t sub_100402030@<X0>(uint64_t a1@<X6>, void *a2@<X7>, uint64_t a3@<X8>)
{
  v13 = a3 + v3;
  v14 = v5 + v3;
  v15 = *v8 & 0xFFFFFFF8;
  v16 = *(*a2 + (v15 & (v6 + (v13 & 0x45943878 | 0xBA6BC787) + (v13 & 0xBA6BC780 | 0x45943878) + 1)));
  v17 = __ROR8__(v13 & 0xFFFFFFFFFFFFFFF8, 8);
  v18 = __ROR8__((v17 + v16 - (((v17 + v16) << ((4 * v4) ^ 0x59u)) & 0x4ED277B6ED52F848) + 0x27693BDB76A97C24) ^ 0x2E7A5F07C02A48FFLL, 8);
  v19 = (v17 + v16 - (((v17 + v16) << ((4 * v4) ^ 0x59u)) & 0x4ED277B6ED52F848) + 0x27693BDB76A97C24) ^ 0x2E7A5F07C02A48FFLL ^ __ROR8__(v16, 61);
  v20 = (v12 - ((v18 + v19) | v12) + ((v18 + v19) | 0x6A8F041B5224F61BLL)) ^ 0x2E026B77F5352E4ELL;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (((2 * (v22 + v21)) | 0xF2070B83520164F2) - (v22 + v21) - 0x790385C1A900B279) ^ 0x8CF17B12A1AA9001;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ v11;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0xF887455E88108A0CLL;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = *(*a2 + (v15 & ((v14 & 0x3FBB0BB8 | 0xC044F447) + v6 + (v14 & 0xC044F440 | 0x3FBB0BB9))));
  v30 = (__ROR8__(v27, 8) + v28) ^ v10;
  v31 = (v29 + __ROR8__(v14 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0x91364DCB68334DBLL;
  v32 = v30 ^ __ROR8__(v28, 61);
  v33 = v31 ^ __ROR8__(v29, 61);
  v34 = __ROR8__(v31, 8) + v33;
  v35 = __ROR8__(v30, 8) + v32;
  v36 = (((2 * v34) | 0x7E5CAF1765422602) - v34 - 0x3F2E578BB2A11301) ^ 0x7BA338E715B0CB54;
  v37 = v36 ^ __ROR8__(v33, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (v9 - ((v38 + v37) | v9) + ((v38 + v37) | 0xF4D68C1EED4D07CFLL)) ^ 0x12472CDE5E725B7;
  v40 = __ROR8__(v39, 8);
  v41 = __ROR8__(v37, 61);
  v42 = (((2 * v35) | 0xA70F75D14B979884) - v35 - 0x5387BAE8A5CBCC42) ^ 0x134E7502990E07A3;
  v43 = (v7 - ((v40 + (v39 ^ v41)) | v7) + ((v40 + (v39 ^ v41)) | 0x2A47FE40CDAB7123)) ^ 0x4D149080362025BELL;
  v44 = v43 ^ __ROR8__(v39 ^ v41, 61);
  v45 = __ROR8__(v43, 8) + v44;
  v46 = __ROR8__(v42, 8) + (v42 ^ __ROR8__(v32, 61));
  v47 = (v45 - ((2 * v45) & 0xDCFD1F6985DE3020) + 0x6E7E8FB4C2EF1810) ^ 0x96F9CAEA4AFF921CLL;
  v48 = v47 ^ __ROR8__(v44, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ v10;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = ((2 * v46) | 0xFAA31F760A74BBD0) - v46;
  v52 = __ROR8__(v49, 8);
  v53 = (a1 - ((v52 + v50) | a1) + ((v52 + v50) | 0x4BBB18460080BA6ELL)) ^ 0xB72D7AC3C45718FLL;
  v54 = v53 ^ __ROR8__(v50, 61);
  v55 = __ROR8__(v53, 8);
  *v14 = (((((2 * (v55 + v54)) & 0xEC49109D34868C5CLL) - (v55 + v54) + 0x9DB77B165BCB9D1) ^ 0x66B82B9F806B6B17) >> (8 * (v14 & 7u))) ^ (((v51 - 0x7D518FBB053A5DE8) ^ 0x1232D395E0ED8F2ELL) >> (8 * (v13 & 7u))) ^ *v13;
  return (*(STACK[0x57D8] + 8 * (((v3 + 1 < 0x1C) | (8 * (v3 + 1 < 0x1C))) ^ v4)))();
}

uint64_t sub_10040247C()
{
  v0 = (STACK[0x51B8] + 2103177833) & 0x82A3BDC7;
  v1 = STACK[0x51B8] - 21416;
  v2 = STACK[0x57D8];
  STACK[0x9340] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x145E) + v1)))();
}

uint64_t sub_100402538()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 6759)))(1280);
  STACK[0x9488] = v2;
  return (*(v1 + 8 * (((v2 != 0) * ((v0 ^ 0x3981) - 21644)) ^ v0)))();
}

uint64_t sub_100402624()
{
  STACK[0x95B0] = STACK[0x5770] + STACK[0x5620];
  LODWORD(STACK[0x6438]) = *(v3 + 1252) - 2069785675;
  LODWORD(STACK[0xAC68]) = v4;
  return (*(STACK[0x57D8] + 8 * ((228 * ((v0 ^ v2) > 1)) ^ v1)))();
}

uint64_t sub_100402B90()
{
  v2 = STACK[0x51B8] - 12960;
  LODWORD(STACK[0xDA38]) = v1;
  LOBYTE(STACK[0xDA3F]) = v0;
  return (*(STACK[0x57D8] + 8 * (v2 ^ (102 * (v0 ^ 1)))))();
}

uint64_t sub_100402CA8()
{
  v1 = *(v0 + 2088);
  v2 = STACK[0x51E8];
  v3 = STACK[0x51F0];
  v4 = *STACK[0x51F0];
  v5 = *STACK[0x51E8] & 0xFFFFFFF8;
  STACK[0x57C0] = *(v4 + (v5 & ((v1 & 0xFFFFFFF8) - 1831847764)));
  v6 = __ROR8__(v1 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x57B0] = v6;
  v7 = STACK[0x8070];
  v8 = *(STACK[0x8070] + 6176);
  v9 = *(v0 + 295);
  LODWORD(STACK[0x5790]) = v9;
  v10 = *(v4 + (v5 & (-1072949485 - 2136978239 * (((1387676481 * (v1 & 0xFFFFFFF8)) | 0xBD5D92D9) + ((1387676481 * (v1 & 0xFFFFFFF8)) & 0xBD5D92D8)))));
  v11 = 8 * (v1 & 7);
  STACK[0x57A0] = v11;
  v12 = (v10 + v6) ^ 0xC2AF3EAA3FF1B8E4;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (0x59F9C9E79B5E2C71 - ((v14 + v13) | 0x59F9C9E79B5E2C71) + ((v14 + v13) | 0xA606361864A1D38ELL)) ^ 0xC3F462C57C2C6772;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0x6FF046966119128DLL;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xA1B29DC5D776132BLL;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (((2 * (v21 + v20)) | 0x1EC3F523A3036214) - (v21 + v20) - 0xF61FA91D181B10ALL) ^ 0xE065DAD02464F9E6;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (0x5EE9754461EE5407 - ((v24 + v23) ^ 0x8C039F2E500D6465 | 0x5EE9754461EE5407) + ((v24 + v23) ^ 0x8C039F2E500D6465 | 0xA1168ABB9E11ABF8)) ^ 0xF5D2A68A04051643;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0x5455012E8AB1C38FLL;
  *(v7 + 6176) = v9 ^ v8 ^ (((__ROR8__(v27, 8) + (v27 ^ __ROR8__(v26, 61))) ^ 0x6F4F60BC0E025EE0uLL) >> v11);
  v28 = STACK[0x8070];
  v29 = *(STACK[0x8070] + 10327);
  v30 = ((v28[1548] ^ 0xB7) << 8) | ((v28[362] ^ 0xB7) << 24) | ((v28[12699] ^ 0xB7u) << 32) | (v28[12106] << 40) | ((v28[955] ^ 0xB7) << 16);
  v31 = ((*(STACK[0x8070] + 2141) ^ 0x7831FA1CF292F892) & (v30 ^ 0xFAB149DDF6DAFDFFLL) | v30 & 0x7CE05E30D6D0700) ^ 0x7831FF1CF292F825;
  v32 = (*(STACK[0x8070] + 9734) ^ 0xB7) << 8;
  v33 = (((v28[9141] ^ 0xB7) << 16) | ((v28[8548] ^ 0xB7) << 24)) + (((v28[7362] << 40) | ((v28[7955] ^ 0xB7u) << 32)) ^ 0xB70000000000) + (((v29 ^ 0x53A07470B24D73E8) & ~v32 | v32 & 0x8C00) ^ 0x53A07470B24D735FLL);
  v34 = (*(STACK[0x8070] + 6769) ^ 0xB7u) << 48;
  v35 = v33 & v34;
  v36 = v33 | (v34 | (*(STACK[0x8070] + 6176) << 56)) ^ 0xB700000000000000;
  v37 = (v31 + (((v28[10920] << 56) | ((v28[11513] ^ 0xB7u) << 48)) ^ 0xB700000000000000)) ^ (v31 << 23);
  v38 = v36 + 2 * v35;
  v39 = v37 ^ (v37 >> 17) ^ v38 ^ (v38 >> 26);
  LOBYTE(v31) = (v39 ^ 0x45) - ((2 * (v39 ^ 0x45)) & 0x6A) + 53;
  LOBYTE(v31) = (((v29 ^ 0xBF) + 65) ^ ((v29 ^ 0x48) - 72) ^ ((v29 ^ 0x40) - 64)) + (((v31 ^ 0xE8) + 24) ^ ((v31 ^ 0x83) + 125) ^ ((v31 ^ 0x5E) - 94)) + 88;
  LOBYTE(v32) = (v31 & 0x94 | 0x41) ^ v31 & 0x82;
  v28[2141] = v31 ^ (2 * ((v31 ^ 0x14) & (2 * ((v31 ^ 0x14) & (2 * ((v31 ^ 0x14) & (2 * ((v31 ^ 0x14) & (2 * ((v31 ^ 0x14) & (2 * (v31 & (2 * v32) ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ 0xA1;
  v40 = v38 ^ (v33 << 23) ^ ((v38 ^ (v33 << 23)) >> 17) ^ v39 ^ ((v39 ^ 0xF4C29045) >> 26);
  *(STACK[0x8070] + 1548) = (v40 + (v39 ^ 0x45) - ((2 * (v40 + (v39 ^ 0x45))) & 0xB8) - 36) ^ 0x6B;
  v41 = v39 ^ 0xF4C29045 ^ ((v39 ^ 0xF4C29045) << 23) ^ ((v39 ^ 0xF4C29045 ^ ((v39 ^ 0xF4C29045) << 23)) >> 17) ^ v40 ^ (v40 >> 26);
  v42 = v40 ^ (v40 << 23);
  v43 = v41 ^ 0xF4C29045;
  LOBYTE(v40) = ((~(2 * ((v41 ^ 0x45) + v40)) | 0x1B) + (v41 ^ 0x45) + v40 - 13) ^ 0x45;
  v44 = v42 ^ (v42 >> 17) ^ v41 ^ ((v41 ^ 0xF4C29045) >> 26);
  *(STACK[0x8070] + 362) = (v44 + v43 - ((2 * (v44 + v43)) & 0x9F) + 79) ^ 0xF8;
  v45 = v43 ^ (v43 << 23) ^ ((v43 ^ (v43 << 23)) >> 17) ^ v44 ^ (v44 >> 26);
  *(STACK[0x8070] + 955) = v40;
  *(STACK[0x8070] + 12699) = ((v45 ^ 0x45) + v44 - ((2 * ((v45 ^ 0x45) + v44)) & 0xC) + 6) ^ 0xB1;
  v46 = v44 ^ (v44 << 23) ^ ((v44 ^ (v44 << 23)) >> 17) ^ v45 ^ ((v45 ^ 0xF4C29045) >> 26);
  *(STACK[0x8070] + 12106) = (v46 + (v45 ^ 0x45) - ((2 * (v46 + (v45 ^ 0x45))) & 0x5C) + 46) ^ 0x99;
  v47 = ((v45 ^ 0xF4C29045) << 23) ^ v45 ^ ((((v45 ^ 0xF4C29045) << 23) ^ v45 ^ 0xF4C29045) >> 17) ^ v46 ^ (v46 >> 26);
  v48 = v46 ^ (v46 << 23) ^ ((v46 ^ (v46 << 23)) >> 17) ^ v47 ^ (v47 >> 26);
  *(STACK[0x8070] + 11513) = (v47 + v46 - ((2 * (v47 + v46)) & 0x87) + 67) ^ 0xF4;
  *(STACK[0x8070] + 10920) = ((v48 ^ 0x45) + v47 - 2 * (((v48 ^ 0x45) + v47) & 0x3F) + 63) ^ 0x88;
  v49 = v47 ^ (v47 << 23) ^ ((v47 ^ (v47 << 23)) >> 17) ^ v48 ^ ((v48 ^ 0xF4C29045) >> 26);
  v50 = v48 ^ 0xF4C29045 ^ ((v48 ^ 0xF4C29045) << 23) ^ ((v48 ^ 0xF4C29045 ^ ((v48 ^ 0xF4C29045) << 23)) >> 17) ^ v49 ^ (v49 >> 26);
  v51 = v50 ^ 0xF4C29045;
  *(STACK[0x8070] + 9734) = ((v50 ^ 0x45) + v49 - ((2 * ((v50 ^ 0x45) + v49)) & 0x4A) - 91) ^ 0x12;
  *(STACK[0x8070] + 10327) = (v49 + (v48 ^ 0x45) - ((2 * (v49 + (v48 ^ 0x45))) & 0xBF) - 33) ^ 0x68;
  v52 = v49 ^ (v49 << 23) ^ ((v49 ^ (v49 << 23)) >> 17) ^ v50 ^ ((v50 ^ 0xF4C29045) >> 26);
  LOBYTE(v48) = (v52 + v51 - ((2 * (v52 + v51)) & 0xA) - 123) ^ 0x32;
  v53 = v51 ^ (v51 << 23) ^ ((v51 ^ (v51 << 23)) >> 17) ^ v52 ^ (v52 >> 26);
  *(STACK[0x8070] + 9141) = v48;
  *(STACK[0x8070] + 8548) = ((v53 ^ 0x45) + v52 - ((2 * ((v53 ^ 0x45) + v52)) & 0x88) + 68) ^ 0xF3;
  v54 = v52 ^ (v52 << 23) ^ ((v52 ^ (v52 << 23)) >> 17) ^ v53 ^ ((v53 ^ 0xF4C29045) >> 26);
  *(STACK[0x8070] + 7955) = (v54 + (v53 ^ 0x45) - ((2 * (v54 + (v53 ^ 0x45))) & 0x9F) - 49) ^ 0x78;
  v55 = v53 ^ 0xF4C29045 ^ ((v53 ^ 0xF4C29045) << 23) ^ ((v53 ^ 0xF4C29045 ^ ((v53 ^ 0xF4C29045) << 23)) >> 17) ^ v54 ^ (v54 >> 26);
  *(STACK[0x8070] + 7362) = ((v55 ^ 0x45) + v54 - ((2 * ((v55 ^ 0x45) + v54)) & 0xDA) + 109) ^ 0xDA;
  v56 = v54 ^ (v54 << 23) ^ ((v54 ^ (v54 << 23)) >> 17) ^ v55 ^ ((v55 ^ 0xF4C29045) >> 26);
  *(STACK[0x8070] + 6769) = (v56 + (v55 ^ 0x45) - ((2 * (v56 + (v55 ^ 0x45))) & 0x7A) - 67) ^ 0xA;
  LODWORD(v49) = (((v55 ^ 0xF4C29045 ^ ((v55 ^ 0xF4C29045) << 23)) >> 17) ^ v55 ^ 0xF4C29045 ^ v56 ^ (v56 >> 26) ^ 0x45) + v56;
  *(STACK[0x8070] + 6176) = (v49 - ((2 * v49) & 0x90) - 56) ^ 0x7F;
  LODWORD(v55) = **(v0 + 3896);
  LODWORD(STACK[0x5780]) = v55;
  *(STACK[0x8070] + 2141) ^= v55;
  v57 = STACK[0x8070];
  LOBYTE(v56) = *(STACK[0x8070] + 1548);
  LODWORD(v55) = *(*(v0 + 3896) + 1);
  LODWORD(STACK[0x5770]) = v55;
  *(v57 + 1548) = v55 ^ v56;
  v58 = STACK[0x8070];
  LOBYTE(v56) = *(STACK[0x8070] + 955);
  LODWORD(v55) = *(*(v0 + 3896) + 2);
  LODWORD(STACK[0x5760]) = v55;
  *(v58 + 955) = v55 ^ v56;
  LODWORD(v55) = *(*(v0 + 3896) + 3);
  LODWORD(STACK[0x5750]) = v55;
  *(STACK[0x8070] + 362) ^= v55;
  v59 = STACK[0x8070];
  LOBYTE(v56) = *(STACK[0x8070] + 12699);
  LODWORD(v55) = *(*(v0 + 3896) + 4);
  LODWORD(STACK[0x5740]) = v55;
  *(v59 + 12699) = v55 ^ v56;
  LODWORD(v55) = *(*(v0 + 3896) + 5);
  LODWORD(STACK[0x5730]) = v55;
  *(STACK[0x8070] + 12106) ^= v55;
  LODWORD(v55) = *(*(v0 + 3896) + 6);
  LODWORD(STACK[0x5720]) = v55;
  *(STACK[0x8070] + 11513) ^= v55;
  v60 = STACK[0x8070];
  LOBYTE(v56) = *(STACK[0x8070] + 10920);
  LODWORD(v55) = *(*(v0 + 3896) + 7);
  LODWORD(STACK[0x5710]) = v55;
  *(v60 + 10920) = v55 ^ v56;
  v61 = *(*(v0 + 3896) + 8);
  LODWORD(STACK[0x5700]) = v61;
  *(STACK[0x8070] + 10327) ^= v61;
  LODWORD(v55) = *(*(v0 + 3896) + 9);
  LODWORD(STACK[0x56F0]) = v55;
  *(STACK[0x8070] + 9734) ^= v55;
  v62 = STACK[0x8070];
  LOBYTE(v56) = *(STACK[0x8070] + 9141);
  LODWORD(v55) = *(*(v0 + 3896) + 10);
  LODWORD(STACK[0x56E0]) = v55;
  *(v62 + 9141) = v55 ^ v56;
  LODWORD(v55) = *(*(v0 + 3896) + 11);
  LODWORD(STACK[0x56D0]) = v55;
  *(STACK[0x8070] + 8548) ^= v55;
  LODWORD(v55) = *(*(v0 + 3896) + 12);
  LODWORD(STACK[0x56C0]) = v55;
  *(STACK[0x8070] + 7955) ^= v55;
  v63 = STACK[0x8070];
  LOBYTE(v56) = *(STACK[0x8070] + 7362);
  LODWORD(v55) = *(*(v0 + 3896) + 13);
  LODWORD(STACK[0x5680]) = v55;
  *(v63 + 7362) = v55 ^ v56;
  v64 = *(*(v0 + 3896) + 14);
  LODWORD(STACK[0x5670]) = v64;
  *(STACK[0x8070] + 6769) ^= v64;
  LODWORD(v55) = *(*(v0 + 3896) + 15);
  LODWORD(STACK[0x5660]) = v55;
  *(STACK[0x8070] + 6176) ^= v55;
  v65 = STACK[0x8070];
  v66 = (*(STACK[0x8070] + 1548) ^ 0xB7) << 8;
  v67 = (*(STACK[0x8070] + 9734) ^ 0xB7) << 8;
  v68 = *(STACK[0x8070] + 10327);
  v69 = ((v65[362] << 24) ^ 0xB7000000 | ((v65[955] ^ 0xB7) << 16) | ((v65[12699] ^ 0xB7u) << 32)) + (((v65[2141] ^ 0xC430A1418C73E67) & ~v66 | v66 & 0xFFFFFFFFFFFFC1FFLL) ^ 0xC430A1418C73ED0) + ((v65[12106] ^ 0xB7u) << 40);
  v70 = (((v65[7362] ^ 0xB7u) << 40) | ((v65[7955] ^ 0xB7u) << 32) | ((((v65[9141] ^ 0xB7) << 16) | (v65[8548] << 24)) + (((v68 ^ 0xC283CF5FF0ABEC4DLL) & ~v67 | v67 & 0x1300) ^ 0xC283CF5FF0ABECFALL))) ^ 0xB7000000;
  v71 = (v70 | (v65[6769] << 48) ^ 0xB7000000000000) + ((v65[6176] << 56) ^ 0xB700000000000000);
  v72 = ((((v65[10920] << 56) | (v65[11513] << 48)) ^ 0xB7B7000000000000) + v69) ^ (v69 << 23);
  v73 = v72 ^ (v72 >> 17) ^ v71 ^ (v71 >> 26);
  LOBYTE(v69) = (v73 ^ 0x45) - ((2 * (v73 ^ 0x45)) & 0xC3) + 97;
  LOBYTE(v67) = (((v69 ^ 0xC9) + 55) ^ ((v69 ^ 0xA1) + 95) ^ ((v69 ^ 9) - 9)) + (((v68 ^ 0x9B) + 101) ^ ((v68 ^ 0x8B) + 117) ^ ((v68 ^ 0xA7) + 89));
  LOBYTE(v69) = v67 + 99;
  LOBYTE(v67) = v67 - 29;
  v65[2141] = v67 ^ (2 * ((v69 ^ 0x34) & (2 * ((v69 ^ 0x34) & (2 * ((v69 ^ 0x34) & (2 * ((v69 ^ 0x34) & (2 * ((v69 ^ 0x34) & (2 * (v69 & (2 * (v67 & 0xB5)) ^ v67 & 0xB5)) ^ v67 & 0xB5)) ^ v67 & 0xB5)) ^ v67 & 0xB5)) ^ v67 & 0xB5)) ^ (v67 & 0xB5 | 0x40))) ^ 2;
  v74 = v71 ^ (v70 << 23) ^ ((v71 ^ (v70 << 23)) >> 17) ^ v73 ^ ((v73 ^ 0xF4C29045) >> 26);
  *(STACK[0x8070] + 1548) = (v74 + (v73 ^ 0x45) - ((2 * (v74 + (v73 ^ 0x45))) & 0xCF) + 103) ^ 0xD0;
  v75 = v73 ^ 0xF4C29045 ^ ((v73 ^ 0xF4C29045) << 23) ^ ((v73 ^ 0xF4C29045 ^ ((v73 ^ 0xF4C29045) << 23)) >> 17) ^ v74 ^ (v74 >> 26);
  v76 = v74 ^ (v74 << 23) ^ ((v74 ^ (v74 << 23)) >> 17) ^ v75;
  v75 ^= 0xF4C29045uLL;
  v77 = v76 ^ (v75 >> 26);
  *(STACK[0x8070] + 362) = (v77 + v75 - 2 * ((v77 + v75) & 7) - 121) ^ 0x30;
  *(STACK[0x8070] + 955) = (v75 + v74 - 2 * ((v75 + v74) & 3) + 3) ^ 0xB4;
  v78 = v75 ^ (v75 << 23) ^ ((v75 ^ (v75 << 23)) >> 17) ^ v77 ^ (v77 >> 26);
  *(STACK[0x8070] + 12699) = ((v78 ^ 0x45) + v77 - ((2 * ((v78 ^ 0x45) + v77)) & 0x40) - 96) ^ 0x17;
  v79 = v77 ^ (v77 << 23) ^ ((v77 ^ (v77 << 23)) >> 17) ^ v78 ^ ((v78 ^ 0xF4C29045) >> 26);
  *(STACK[0x8070] + 12106) = (v79 + (v78 ^ 0x45) - ((2 * (v79 + (v78 ^ 0x45))) & 0xD8) + 108) ^ 0xDB;
  v80 = ((v78 ^ 0xF4C29045) << 23) ^ v78 ^ ((((v78 ^ 0xF4C29045) << 23) ^ v78 ^ 0xF4C29045) >> 17) ^ v79 ^ (v79 >> 26);
  *(STACK[0x8070] + 11513) = (v80 + v79 - ((2 * (v80 + v79)) & 0x58) - 84) ^ 0x1B;
  v81 = v79 ^ (v79 << 23) ^ ((v79 ^ (v79 << 23)) >> 17) ^ ((v80 ^ -v80 ^ ((v80 >> 26) - ((v80 >> 26) ^ v80))) + (v80 >> 26));
  *(STACK[0x8070] + 10920) = ((v81 ^ 0x45) + v80 - ((2 * ((v81 ^ 0x45) + v80)) & 0xC4) + 98) ^ 0xD5;
  v82 = v80 ^ (v80 << 23) ^ ((v80 ^ (v80 << 23)) >> 17) ^ v81 ^ ((v81 ^ 0xF4C29045) >> 26);
  *(STACK[0x8070] + 10327) = (v82 + (v81 ^ 0x45) - ((2 * (v82 + (v81 ^ 0x45))) & 0x52) + 41) ^ 0x9E;
  v83 = v81 ^ 0xF4C29045 ^ ((v81 ^ 0xF4C29045) << 23) ^ ((v81 ^ 0xF4C29045 ^ ((v81 ^ 0xF4C29045) << 23)) >> 17) ^ v82 ^ (v82 >> 26);
  LOBYTE(v75) = v83 ^ 0x45;
  *(STACK[0x8070] + 9734) = ((v83 ^ 0x45) + v82) ^ 0xB7;
  v84 = v82 ^ (v82 << 23) ^ ((v82 ^ (v82 << 23)) >> 17) ^ v83 ^ ((v83 ^ 0xF4C29045) >> 26);
  v85 = v83 ^ 0xF4C29045 ^ ((v83 ^ 0xF4C29045) << 23) ^ ((v83 ^ 0xF4C29045 ^ ((v83 ^ 0xF4C29045) << 23)) >> 17) ^ v84 ^ (v84 >> 26);
  *(STACK[0x8070] + 8548) = ((v85 ^ 0x45) + v84 - ((2 * ((v85 ^ 0x45) + v84)) & 0xBB) + 93) ^ 0xEA;
  *(STACK[0x8070] + 9141) = (v84 + v75 - ((2 * (v84 + v75)) & 0xD0) + 104) ^ 0xDF;
  v86 = v84 ^ (v84 << 23) ^ ((v84 ^ (v84 << 23)) >> 17) ^ v85 ^ ((v85 ^ 0xF4C29045) >> 26);
  *(STACK[0x8070] + 7955) = (v86 + (v85 ^ 0x45)) ^ 0xB7;
  v87 = ((v85 ^ 0xF4C29045) << 23) ^ v85 ^ ((((v85 ^ 0xF4C29045) << 23) ^ v85 ^ 0xF4C29045) >> 17) ^ v86 ^ (v86 >> 26);
  *(STACK[0x8070] + 7362) = (v87 + v86 - ((2 * (v87 + v86)) & 0x14) - 118) ^ 0x3D;
  v88 = v86 ^ (v86 << 23) ^ 0xF4C29045 ^ ((v86 ^ (v86 << 23)) >> 17) ^ v87 ^ (v87 >> 26);
  LODWORD(v65) = (((v87 ^ (v87 << 23)) >> 17) ^ v87 ^ v88 ^ (v88 >> 26) ^ 0x45) + v88;
  *(STACK[0x8070] + 6176) = (v65 - ((2 * v65) & 0x20) - 112) ^ 0x27;
  *(STACK[0x8070] + 6769) = (v88 + v87 - 2 * ((v88 + v87) & 0xF) + 15) ^ 0xB8;
  v89 = *(v0 + 3912);
  v90 = __ROR8__(v89 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x5630] = v90 - 0x70824D863E123F43;
  v91 = (0x10824D863E123F42 - v90) & 0x1C2691EE0F516CDFLL | (v90 - 0x70824D863E123F43) & 0xE3D96E11F0AE9320;
  v92 = v91 ^ 0xCFA17AF9F64093A9;
  v91 ^= 0xB44CE937F92E9645;
  v93 = (__ROR8__(v92, 8) + v91) ^ 0x3A7C64F71FBFC65BLL;
  v94 = __ROR8__(v93, 8);
  v95 = v93 ^ __ROR8__(v91, 61);
  v96 = (((2 * (v94 + v95)) | 0x9BC383EE620BA086) - (v94 + v95) - 0x4DE1C1F73105D043) ^ 0xB6204E7CA46D1403;
  v97 = v96 ^ __ROR8__(v95, 61);
  v98 = (__ROR8__(v96, 8) + v97) ^ 0x4AE5CE6F63977933;
  v99 = v98 ^ __ROR8__(v97, 61);
  v100 = (__ROR8__(v98, 8) + v99) ^ 0x2854CB5A8BDB8317;
  v101 = v100 ^ __ROR8__(v99, 61);
  v102 = __ROR8__(v100, 8);
  v103 = (((2 * (v102 + v101)) & 0xBE3CE80EF08D9120) - (v102 + v101) - 0x5F1E74077846C891) ^ 0x5793973E7417CCB3;
  v104 = v103 ^ __ROR8__(v101, 61);
  v105 = (__ROR8__(v103, 8) + v104) ^ 0xE6B7173A9B2BB05DLL;
  v106 = v105 ^ __ROR8__(v104, 61);
  v107 = __ROR8__(v105, 8);
  LODWORD(v29) = *v89;
  LODWORD(STACK[0x5640]) = v29;
  v108 = 8 * (v89 & 7);
  STACK[0x5650] = v108;
  *(STACK[0x8070] + 2141) ^= v29 ^ (((v107 + v106) ^ 0x94AC86FF716F8E22) >> v108);
  v110 = *(STACK[0xFE18] + 1);
  v109 = STACK[0xFE18] + 1;
  LODWORD(STACK[0x5600]) = v110;
  v111 = __ROR8__(v109 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x5610] = v111 - 0x70824D863E123F43;
  v112 = -2 - (((0x70824D863E123F42 - v111) | 0xB927FCD7AAD8D227) + ((v111 - 0x70824D863E123F43) | 0x46D8032855272DD8));
  v113 = v112 ^ 0x6AA017C053C92D51;
  v112 ^= 0x114D840E5CA728BDuLL;
  v114 = (__ROR8__(v113, 8) + v112) ^ 0x3A7C64F71FBFC65BLL;
  v115 = v114 ^ __ROR8__(v112, 61);
  v116 = (__ROR8__(v114, 8) + v115) ^ 0xFBC18F8B9568C440;
  v117 = v116 ^ __ROR8__(v115, 61);
  v118 = (__ROR8__(v116, 8) + v117) ^ 0x4AE5CE6F63977933;
  v119 = v118 ^ __ROR8__(v117, 61);
  v120 = (__ROR8__(v118, 8) + v119) ^ 0x2854CB5A8BDB8317;
  v121 = v120 ^ __ROR8__(v119, 61);
  v122 = (__ROR8__(v120, 8) + v121) ^ 0xF7721CC6F3AEFBDCLL;
  v123 = v122 ^ __ROR8__(v121, 61);
  v124 = __ROR8__(v122, 8);
  v125 = (0x224D2FC14841B73DLL - ((v124 + v123) | 0x224D2FC14841B73DLL) + ((v124 + v123) | 0xDDB2D03EB7BE48C2)) ^ 0x3B05C7042C95F89FLL;
  v126 = v125 ^ __ROR8__(v123, 61);
  v127 = __ROR8__(v125, 8);
  v128 = 8 * (v109 & 7);
  STACK[0x5620] = v128;
  *(STACK[0x8070] + 1548) ^= v110 ^ (((((2 * (v127 + v126)) & 0x1180CAE648694616) - (v127 + v126) + 0x773F9A8CDBCB5CF4) ^ 0xE3931C73AAA4D2D6) >> v128);
  v130 = *(STACK[0xFE18] + 2);
  v129 = STACK[0xFE18] + 2;
  LODWORD(STACK[0x55E0]) = v130;
  v131 = __ROR8__(v129 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x55D0] = v131;
  v132 = -2 - (((0x70824D863E123F42 - v131) | 0x47AA5F188D229647) + ((v131 + 0xF7DB279C1EDC0BDLL) | 0xB855A0E772DD69B8));
  v133 = v132 ^ 0x942DB40F74336931;
  v132 ^= 0xEFC027C17B5D6CDDLL;
  v134 = (__ROR8__(v133, 8) + v132) ^ 0x3A7C64F71FBFC65BLL;
  v135 = v134 ^ __ROR8__(v132, 61);
  v136 = __ROR8__(v134, 8);
  v137 = __ROR8__((0x11F0FB8B8E6CFCA8 - ((v136 + v135) | 0x11F0FB8B8E6CFCA8) + ((v136 + v135) | 0xEE0F047471930357)) ^ 0x15CE8BFFE4FBC717, 8);
  v138 = (0x11F0FB8B8E6CFCA8 - ((v136 + v135) | 0x11F0FB8B8E6CFCA8) + ((v136 + v135) | 0xEE0F047471930357)) ^ 0x15CE8BFFE4FBC717 ^ __ROR8__(v135, 61);
  v139 = (((2 * (v137 + v138)) & 0xAA8F5AC85437842) - (v137 + v138) - 0x5547AD642A1BC22) ^ 0xB04E4B46DEC93AEDLL;
  v140 = v139 ^ __ROR8__(v138, 61);
  v141 = (__ROR8__(v139, 8) + v140) ^ 0x2854CB5A8BDB8317;
  v142 = v141 ^ __ROR8__(v140, 61);
  v143 = __ROR8__(v141, 8);
  v144 = (((2 * (v143 + v142)) & 0x7FA120324B6C8178) - (v143 + v142) + 0x402F6FE6DA49BF43) ^ 0xB75D732029E7449FLL;
  v145 = v144 ^ __ROR8__(v142, 61);
  v146 = __ROR8__(v144, 8);
  v147 = (0xB39968FD76614168 - ((v146 + v145) | 0xB39968FD76614168) + ((v146 + v145) | 0x4C669702899EBE97)) ^ 0xAAD1803812B50ECALL;
  v148 = 8 * (v129 & 7);
  STACK[0x55F0] = v148;
  *(STACK[0x8070] + 955) ^= v130 ^ (((__ROR8__(v147, 8) + (v147 ^ __ROR8__(v145, 61))) ^ 0x94AC86FF716F8E22) >> v148);
  v150 = *(STACK[0xFE18] + 3);
  v149 = STACK[0xFE18] + 3;
  LODWORD(STACK[0x55A0]) = v150;
  v151 = __ROR8__(v149 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x55C0] = v151 - 0x70824D863E123F43;
  v152 = ((v151 - 0x70824D863E123F43) | 0xE4C37ECFA635CE9ELL) - ((v151 - 0x70824D863E123F43) | 0x1B3C813059CA3161) + 0x1B3C813059CA3161;
  v153 = v152 ^ 0x374495D85F2431E8;
  v152 ^= 0x4CA90616504A3404uLL;
  v154 = __ROR8__(v153, 8);
  v155 = __ROR8__((0x2DE3E6FF270E5D4FLL - ((v154 + v152) ^ 0x8FC5F84FA7E4834FLL | 0x2DE3E6FF270E5D4FLL) + ((v154 + v152) ^ 0x8FC5F84FA7E4834FLL | 0xD21C1900D8F1A2B0)) ^ 0x67A585B860AAE7A4, 8);
  v156 = (0x2DE3E6FF270E5D4FLL - ((v154 + v152) ^ 0x8FC5F84FA7E4834FLL | 0x2DE3E6FF270E5D4FLL) + ((v154 + v152) ^ 0x8FC5F84FA7E4834FLL | 0xD21C1900D8F1A2B0)) ^ 0x67A585B860AAE7A4 ^ __ROR8__(v152, 61);
  v157 = (v155 + v156) ^ 0xFBC18F8B9568C440;
  v158 = v157 ^ __ROR8__(v156, 61);
  v159 = __ROR8__(v157, 8);
  v160 = (0xD6DF7F02A1DF3D73 - ((v159 + v158) | 0xD6DF7F02A1DF3D73) + ((v159 + v158) | 0x292080FD5E20C28CLL)) ^ 0x63C54E923DB7BBBFLL;
  v161 = v160 ^ __ROR8__(v158, 61);
  v162 = (__ROR8__(v160, 8) + v161) ^ 0x2854CB5A8BDB8317;
  v163 = v162 ^ __ROR8__(v161, 61);
  v164 = __ROR8__(v162, 8);
  v165 = (v164 + v163 - ((2 * (v164 + v163)) & 0xBC6F4503E2FDBBA2) - 0x21C85D7E0E81222FLL) ^ 0x2945BE4702D0260DLL;
  v166 = v165 ^ __ROR8__(v163, 61);
  v167 = __ROR8__(v165, 8);
  v168 = (((2 * (v167 + v166)) & 0xCA6E97A611298964) - (v167 + v166) + 0x1AC8B42CF76B3B4DLL) ^ 0xFC7FA3166C408B10;
  v169 = 8 * (v149 & 7);
  STACK[0x55B0] = v169;
  *(STACK[0x8070] + 362) ^= v150 ^ (((__ROR8__(v168, 8) + (v168 ^ __ROR8__(v166, 61))) ^ 0x94AC86FF716F8E22) >> v169);
  v171 = *(STACK[0xFE18] + 4);
  v170 = STACK[0xFE18] + 4;
  LODWORD(STACK[0x5570]) = v171;
  v172 = __ROR8__(v170 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x5580] = v172 - 0x70824D863E123F43;
  STACK[0x5560] = 0x70824D863E123F42 - v172;
  v173 = -2 - (((0x70824D863E123F42 - v172) | 0x9D0DF2A02E0A782CLL) + ((v172 - 0x70824D863E123F43) | 0x62F20D5FD1F587D3));
  v174 = __ROR8__(v173 ^ 0x4E8A19B7D71B875ALL, 8);
  v173 ^= 0x35678A79D87582B6uLL;
  v175 = (v174 + v173) ^ 0x3A7C64F71FBFC65BLL;
  v176 = v175 ^ __ROR8__(v173, 61);
  v177 = (__ROR8__(v175, 8) + v176) ^ 0xFBC18F8B9568C440;
  v178 = v177 ^ __ROR8__(v176, 61);
  v179 = __ROR8__(v177, 8);
  v180 = (v179 + v178 - ((2 * (v179 + v178)) & 0x2E6547F57CD8ADF6) + 0x1732A3FABE6C56FBLL) ^ 0x5DD76D95DDFB2FC8;
  v181 = v180 ^ __ROR8__(v178, 61);
  v182 = (__ROR8__(v180, 8) + v181) ^ 0x2854CB5A8BDB8317;
  v183 = v182 ^ __ROR8__(v181, 61);
  v184 = __ROR8__(v182, 8);
  v185 = (((2 * (v184 + v183)) | 0xFC2DCEA516C759FALL) - (v184 + v183) + 0x1E918AD749C5303) ^ 0x964FB9478CD5721;
  v186 = v185 ^ __ROR8__(v183, 61);
  v187 = (__ROR8__(v185, 8) + v186) ^ 0xE6B7173A9B2BB05DLL;
  v188 = __ROR8__(v187, 8);
  v189 = __ROR8__(v186, 61);
  v190 = 8 * (v170 & 7);
  STACK[0x5590] = v190;
  *(STACK[0x8070] + 12699) ^= v171 ^ (((((2 * (v188 + (v187 ^ v189))) | 0xD4C3DE0A97D9F83ELL) - (v188 + (v187 ^ v189)) - 0x6A61EF054BECFC1FLL) ^ 0xFECD69FA3A83723DLL) >> v190);
  v192 = *(STACK[0xFE18] + 5);
  v191 = STACK[0xFE18] + 5;
  LODWORD(STACK[0x5500]) = v192;
  v193 = __ROR8__(v191 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x5550] = v193;
  STACK[0x5530] = v193 - 0x70824D863E123F43;
  v194 = ((2 * (v193 - 0x70824D863E123F43)) | 0x9AB43F0441A36EF2) - (v193 - 0x70824D863E123F43) + 0x32A5E07DDF2E4887;
  v195 = v194 ^ 0x1EDDF495D9C0480FLL;
  v194 ^= 0x6530675BD6AE4DE3uLL;
  v196 = (__ROR8__(v195, 8) + v194) ^ 0x3A7C64F71FBFC65BLL;
  v197 = v196 ^ __ROR8__(v194, 61);
  v198 = __ROR8__(v196, 8);
  v199 = (v198 + v197 - ((2 * (v198 + v197)) & 0xB8B08CE557209EE6) + 0x5C584672AB904F73) ^ 0xA799C9F93EF88B33;
  v200 = v199 ^ __ROR8__(v197, 61);
  v201 = __ROR8__(v199, 8);
  v202 = (0xA55B9D8C92279F3ALL - ((v201 + v200) | 0xA55B9D8C92279F3ALL) + ((v201 + v200) | 0x5AA462736DD860C5)) ^ 0x1041AC1C0E4F19F6;
  v203 = v202 ^ __ROR8__(v200, 61);
  v204 = (__ROR8__(v202, 8) + v203) ^ 0x2854CB5A8BDB8317;
  v205 = v204 ^ __ROR8__(v203, 61);
  v206 = (__ROR8__(v204, 8) + v205) ^ 0xF7721CC6F3AEFBDCLL;
  v207 = v206 ^ __ROR8__(v205, 61);
  v208 = (__ROR8__(v206, 8) + v207) ^ 0xE6B7173A9B2BB05DLL;
  v209 = 8 * (v191 & 7);
  STACK[0x5540] = v209;
  *(STACK[0x8070] + 12106) ^= v192 ^ (((__ROR8__(v208, 8) + (v208 ^ __ROR8__(v207, 61))) ^ 0x94AC86FF716F8E22) >> v209);
  v211 = *(STACK[0xFE18] + 6);
  v210 = STACK[0xFE18] + 6;
  LODWORD(STACK[0x54E0]) = v211;
  v212 = __ROR8__(v210 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x5520] = v212;
  STACK[0x54F0] = v212 - 0x70824D863E123F43;
  v213 = (__ROR8__((v212 - 0x70824D863E123F43) ^ 0xD387EB17F911FF76, 8) + ((v212 - 0x70824D863E123F43) ^ 0xA86A78D9F67FFA9ALL)) ^ 0x3A7C64F71FBFC65BLL;
  v214 = v213 ^ __ROR8__((v212 - 0x70824D863E123F43) ^ 0xA86A78D9F67FFA9ALL, 61);
  v215 = __ROR8__(v213, 8);
  v216 = (((2 * (v215 + v214)) | 0x812685BDDD32CC98) - (v215 + v214) + 0x3F6CBD21116699B4) ^ 0x3B52CD557BF1A20CLL;
  v217 = v216 ^ __ROR8__(v214, 61);
  v218 = (__ROR8__(v216, 8) + v217) ^ 0x4AE5CE6F63977933;
  v219 = __ROR8__(v218, 8);
  v220 = v218 ^ __ROR8__(v217, 61);
  v221 = (v219 + v220) ^ 0x2854CB5A8BDB8317;
  v222 = v221 ^ __ROR8__(v220, 61);
  v223 = (__ROR8__(v221, 8) + v222) ^ 0xF7721CC6F3AEFBDCLL;
  v224 = v223 ^ __ROR8__(v222, 61);
  v225 = (__ROR8__(v223, 8) + v224) ^ 0xE6B7173A9B2BB05DLL;
  v226 = 8 * (v210 & 7);
  STACK[0x5510] = v226;
  *(STACK[0x8070] + 11513) ^= v211 ^ (((__ROR8__(v225, 8) + (v225 ^ __ROR8__(v224, 61))) ^ 0x94AC86FF716F8E22) >> v226);
  v228 = *(STACK[0xFE18] + 7);
  v227 = STACK[0xFE18] + 7;
  LODWORD(STACK[0x54B0]) = v228;
  v229 = __ROR8__(v227 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x54D0] = v229 - 0x70824D863E123F43;
  v230 = ((0x30824D863E123F42 - v229) & 0x36F430D9CA3752BELL) + v229 - 0x70824D863E123F43 - ((v229 - 0x70824D863E123F43) & 0x36F430D9CA3752BELL);
  v231 = v230 ^ 0xE573DBCE3326ADC8;
  v230 ^= 0x9E9E48003C48A824;
  v232 = __ROR8__(v231, 8);
  v233 = (0x2219A006D8CBDBB6 - ((v232 + v230) | 0x2219A006D8CBDBB6) + ((v232 + v230) | 0xDDE65FF927342449)) ^ 0xE79A3B0E388BE212;
  v234 = v233 ^ __ROR8__(v230, 61);
  v235 = __ROR8__(v233, 8);
  v236 = (v235 + v234 - ((2 * (v235 + v234)) & 0x4EB11ED8830641BCLL) + 0x27588F6C418320DELL) ^ 0xDC9900E7D4EBE49ELL;
  v237 = v236 ^ __ROR8__(v234, 61);
  v238 = (__ROR8__(v236, 8) + v237) ^ 0x4AE5CE6F63977933;
  v239 = v238 ^ __ROR8__(v237, 61);
  v240 = (__ROR8__(v238, 8) + v239) ^ 0x2854CB5A8BDB8317;
  v241 = v240 ^ __ROR8__(v239, 61);
  v242 = (__ROR8__(v240, 8) + v241) ^ 0xF7721CC6F3AEFBDCLL;
  v243 = v242 ^ __ROR8__(v241, 61);
  v244 = (__ROR8__(v242, 8) + v243) ^ 0xE6B7173A9B2BB05DLL;
  v245 = v244 ^ __ROR8__(v243, 61);
  v246 = __ROR8__(v244, 8);
  v247 = 8 * (v227 & 7);
  STACK[0x54C0] = v247;
  *(STACK[0x8070] + 10920) ^= v228 ^ (((((v246 + v245) & 0x62D954FF39F39AFBLL ^ 0x4080409A29508AD3) + ((v246 + v245) & 0x9D26AB00C60C6504 ^ 0x1524220086084101) - 1) ^ 0xC108E465DE3745F1) >> v247);
  v249 = *(STACK[0xFE18] + 8);
  v248 = STACK[0xFE18] + 8;
  LODWORD(STACK[0x5480]) = v249;
  v250 = __ROR8__(v248 & 0xFFFFFFFFFFFFFFF8, 8) - 0x70824D863E123F43;
  STACK[0x5490] = v250;
  v251 = __ROR8__(v250 ^ 0xD387EB17F911FF76, 8);
  v250 ^= 0xA86A78D9F67FFA9ALL;
  v252 = (v251 + v250) ^ 0x3A7C64F71FBFC65BLL;
  v253 = v252 ^ __ROR8__(v250, 61);
  v254 = __ROR8__(v252, 8);
  v255 = (v254 + v253 - ((2 * (v254 + v253)) & 0xBAE186011EE29A84) + 0x5D70C3008F714D42) ^ 0xA6B14C8B1A198902;
  v256 = v255 ^ __ROR8__(v253, 61);
  v257 = (__ROR8__(v255, 8) + v256) ^ 0x4AE5CE6F63977933;
  v258 = v257 ^ __ROR8__(v256, 61);
  v259 = (__ROR8__(v257, 8) + v258) ^ 0x2854CB5A8BDB8317;
  v260 = v259 ^ __ROR8__(v258, 61);
  v261 = __ROR8__(v259, 8);
  v262 = (v261 + v260 - ((2 * (v261 + v260)) & 0x2E47CF367F5869BCLL) + 0x1723E79B3FAC34DELL) ^ 0xE051FB5DCC02CF02;
  v263 = v262 ^ __ROR8__(v260, 61);
  v264 = __ROR8__(v262, 8);
  v265 = 8 * (v248 & 7);
  STACK[0x54A0] = v265;
  *(STACK[0x8070] + 10327) ^= v249 ^ (((__ROR8__((0x598FD944050A8FA4 - ((v264 + v263) | 0x598FD944050A8FA4) + ((v264 + v263) | 0xA67026BBFAF5705BLL)) ^ 0x40C7318161DEC006, 8) + ((0x598FD944050A8FA4 - ((v264 + v263) | 0x598FD944050A8FA4) + ((v264 + v263) | 0xA67026BBFAF5705BLL)) ^ 0x40C7318161DEC006 ^ __ROR8__(v263, 61))) ^ 0x94AC86FF716F8E22) >> v265);
  v267 = *(STACK[0xFE18] + 9);
  v266 = STACK[0xFE18] + 9;
  LODWORD(STACK[0x5460]) = v267;
  v268 = __ROR8__(v266 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x5450] = v268;
  v269 = ((2 * v268 + 0x1EFB64F383DB817ALL) & 0xCF6A3D068F7FCE7ALL) - v268 - 0x7732D0FD09ADA7FBLL;
  v270 = __ROR8__(v269 ^ 0xCBCD0A6B4151E7B4, 8);
  v269 ^= 0xB02099A54E3FE258;
  v271 = (0x910C68C29BD2CF7DLL - ((v270 + v269) | 0x910C68C29BD2CF7DLL) + ((v270 + v269) | 0x6EF3973D642D3082)) ^ 0x548FF3CA7B92F6D9;
  v272 = v271 ^ __ROR8__(v269, 61);
  v273 = __ROR8__(v271, 8);
  v274 = (((2 * (v273 + v272)) | 0x299830F30E22D906) - (v273 + v272) + 0x6B33E78678EE937DLL) ^ 0x6F0D97F21279A8C3;
  v275 = v274 ^ __ROR8__(v272, 61);
  v276 = (__ROR8__(v274, 8) + v275) ^ 0x4AE5CE6F63977933;
  v277 = v276 ^ __ROR8__(v275, 61);
  v278 = (__ROR8__(v276, 8) + v277) ^ 0x2854CB5A8BDB8317;
  v279 = v278 ^ __ROR8__(v277, 61);
  v280 = (__ROR8__(v278, 8) + v279) ^ 0xF7721CC6F3AEFBDCLL;
  v281 = v280 ^ __ROR8__(v279, 61);
  v282 = (__ROR8__(v280, 8) + v281) ^ 0xE6B7173A9B2BB05DLL;
  v283 = 8 * (v266 & 7);
  STACK[0x5470] = v283;
  *(STACK[0x8070] + 9734) ^= v267 ^ (((__ROR8__(v282, 8) + (v282 ^ __ROR8__(v281, 61))) ^ 0x94AC86FF716F8E22) >> v283);
  v285 = *(STACK[0xFE18] + 10);
  v284 = STACK[0xFE18] + 10;
  LODWORD(STACK[0x5420]) = v285;
  v286 = __ROR8__(v284 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x5440] = v286 - 0x70824D863E123F43;
  v287 = ((0x70824D863E123F42 - v286) & 0xBD35CCF7F13D3762) + v286 - 0x70824D863E123F43 - ((v286 - 0x70824D863E123F43) & 0xBD35CCF7F13D3762);
  v288 = v287 ^ 0x6EB227E0082CC814;
  v287 ^= 0x155FB42E0742CDF8uLL;
  v289 = __ROR8__(v288, 8);
  v290 = (((2 * (v289 + v287)) & 0xC474D71427A032E6) - (v289 + v287) + 0x1DC59475EC2FE68CLL) ^ 0x27B9F082F39020D7;
  v291 = v290 ^ __ROR8__(v287, 61);
  v292 = (__ROR8__(v290, 8) + v291) ^ 0xFBC18F8B9568C440;
  v293 = v292 ^ __ROR8__(v291, 61);
  v294 = (__ROR8__(v292, 8) + v293) ^ 0x4AE5CE6F63977933;
  v295 = v294 ^ __ROR8__(v293, 61);
  v296 = (__ROR8__(v294, 8) + v295) ^ 0x2854CB5A8BDB8317;
  v297 = v296 ^ __ROR8__(v295, 61);
  v298 = (__ROR8__(v296, 8) + v297) ^ 0xF7721CC6F3AEFBDCLL;
  v299 = __ROR8__(v298, 8);
  v300 = v298 ^ __ROR8__(v297, 61);
  v301 = (((2 * (v299 + v300)) & 0x20F564F9ACFADC4) - (v299 + v300) - 0x107AB27CD67D6E3) ^ 0x184F43E2A9B39940;
  v302 = v301 ^ __ROR8__(v300, 61);
  v303 = __ROR8__(v301, 8);
  v304 = 8 * (v284 & 7);
  STACK[0x5430] = v304;
  *(STACK[0x8070] + 9141) ^= v285 ^ (((((2 * (v303 + v302)) | 0xA93A773F600641BCLL) - (v303 + v302) + 0x2B62C4604FFCDF22) ^ 0x4031BD60C16CAEFCLL) >> v304);
  v306 = *(STACK[0xFE18] + 11);
  v305 = STACK[0xFE18] + 11;
  LODWORD(STACK[0x53F8]) = v306;
  v307 = __ROR8__(v305 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x5410] = 0x70824D863E123F42 - v307;
  STACK[0x5408] = v307;
  v308 = ((0x70824D863E123F42 - v307) & 0x778FC4002CCCDCC2) + v307 - 0x70824D863E123F43 - ((v307 - 0x70824D863E123F43) & 0x778FC4002CCCDCC2);
  v309 = v308 ^ 0xA4082F17D5DD23B4;
  v308 ^= 0xDFE5BCD9DAB32658;
  v310 = __ROR8__(v309, 8);
  v311 = (0x487F6B505ECF84B3 - ((v310 + v308) ^ 0x57376FAE890B0A00 | 0x487F6B505ECF84B3) + ((v310 + v308) ^ 0x57376FAE890B0A00 | 0xB78094AFA1307B4CLL)) ^ 0xDACB9FF63784B717;
  v312 = v311 ^ __ROR8__(v308, 61);
  v313 = __ROR8__(v311, 8);
  v314 = (0xE1BD178B01B7E0B9 - ((v313 + v312) | 0xE1BD178B01B7E0B9) + ((v313 + v312) | 0x1E42E874FE481F46)) ^ 0xE58367FF6B20DB06;
  v315 = v314 ^ __ROR8__(v312, 61);
  v316 = __ROR8__(v314, 8);
  v317 = (v316 + v315 - ((2 * (v316 + v315)) & 0xF7E9DEE3091AA0FELL) - 0x40B108E7B72AF81) ^ 0xB111211EE71A294CLL;
  v318 = v317 ^ __ROR8__(v315, 61);
  v319 = __ROR8__(v317, 8);
  v320 = (0x518C98B34C78C856 - ((v319 + v318) | 0x518C98B34C78C856) + ((v319 + v318) | 0xAE73674CB38737A9)) ^ 0x8627AC16385CB4BELL;
  v321 = v320 ^ __ROR8__(v318, 61);
  v322 = __ROR8__(v320, 8);
  v323 = (((2 * (v322 + v321)) | 0x1506B910CD684668) - (v322 + v321) + 0x757CA377994BDCCCLL) ^ 0x7DF1404E951AD8E8;
  v324 = v323 ^ __ROR8__(v321, 61);
  v325 = (__ROR8__(v323, 8) + v324) ^ 0xE6B7173A9B2BB05DLL;
  v326 = 8 * (v305 & 7);
  STACK[0x5400] = v326;
  *(STACK[0x8070] + 8548) ^= v306 ^ (((__ROR8__(v325, 8) + (v325 ^ __ROR8__(v324, 61))) ^ 0x94AC86FF716F8E22) >> v326);
  v328 = *(STACK[0xFE18] + 12);
  v327 = STACK[0xFE18] + 12;
  LODWORD(STACK[0x53E0]) = v328;
  v329 = __ROR8__(v327 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x53F0] = v329;
  v330 = ((2 * (v329 - 0x70824D863E123F43)) | 0xDB4554BF61212FA0) - (v329 - 0x70824D863E123F43) - 0x6DA2AA5FB09097D0;
  v331 = __ROR8__(v330 ^ 0xBE254148498168A6, 8);
  v330 ^= 0xC5C8D28646EF6D4ALL;
  v332 = (v331 + v330) ^ 0x3A7C64F71FBFC65BLL;
  v333 = v332 ^ __ROR8__(v330, 61);
  v334 = __ROR8__(v332, 8);
  v335 = (v334 + v333 - ((2 * (v334 + v333)) & 0xC0A07D31C9BE22B8) + 0x60503E98E4DF115CLL) ^ 0x9B91B11371B7D51CLL;
  v336 = v335 ^ __ROR8__(v333, 61);
  v337 = __ROR8__(v335, 8);
  v338 = (0x696A7C45DE0F4E6ELL - ((v337 + v336) | 0x696A7C45DE0F4E6ELL) + ((v337 + v336) | 0x969583BA21F0B191)) ^ 0xDC704DD54267C8A2;
  v339 = v338 ^ __ROR8__(v336, 61);
  v340 = __ROR8__(v338, 8);
  v341 = (((2 * (v340 + v339)) | 0xFE41C1BDD616320CLL) - (v340 + v339) - 0x7F20E0DEEB0B1906) ^ 0x57742B8460D09A11;
  v342 = v341 ^ __ROR8__(v339, 61);
  v343 = (__ROR8__(v341, 8) + v342) ^ 0xF7721CC6F3AEFBDCLL;
  v344 = v343 ^ __ROR8__(v342, 61);
  v345 = (__ROR8__(v343, 8) + v344) ^ 0xE6B7173A9B2BB05DLL;
  v346 = __ROR8__(v345, 8);
  v347 = __ROR8__(v344, 61);
  v348 = 8 * (v327 & 7);
  STACK[0x53E8] = v348;
  *(STACK[0x8070] + 7955) ^= v328 ^ (((0x5CC97D5094324A65 - ((v346 + (v345 ^ v347)) | 0x5CC97D5094324A65) + ((v346 + (v345 ^ v347)) | 0xA33682AF6BCDB59ALL)) ^ 0x379A04501AA23BB8) >> v348);
  v350 = *(STACK[0xFE18] + 13);
  v349 = STACK[0xFE18] + 13;
  LODWORD(STACK[0x53C8]) = v350;
  v351 = __ROR8__(v349 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x53D8] = v351;
  v352 = (v351 - 0x70824D863E123F43) ^ 0xA86A78D9F67FFA9ALL;
  v353 = __ROR8__((v351 - 0x70824D863E123F43) ^ 0xD387EB17F911FF76, 8);
  v354 = (0xCC42AF4E8EAB2305 - ((v353 + v352) | 0xCC42AF4E8EAB2305) + ((v353 + v352) | 0x33BD50B17154DCFALL)) ^ 0x9C134466EEB1AA1;
  v355 = v354 ^ __ROR8__(v352, 61);
  v356 = (__ROR8__(v354, 8) + v355) ^ 0xFBC18F8B9568C440;
  v357 = v356 ^ __ROR8__(v355, 61);
  v358 = __ROR8__(v356, 8);
  v359 = (v358 + v357 - ((2 * (v358 + v357)) & 0x413E249E9AD0A03CLL) + 0x209F124F4D68501ELL) ^ 0x6A7ADC202EFF292DLL;
  v360 = v359 ^ __ROR8__(v357, 61);
  v361 = __ROR8__(v359, 8);
  v362 = (((2 * ((v361 + v360) ^ 0x2AB0D3C0CE71EA83)) & 0xEDA6FEC6914C4924) - ((v361 + v360) ^ 0x2AB0D3C0CE71EA83) - 0x76D37F6348A62493) ^ 0x8BC89806F2F3B2F9;
  v363 = v362 ^ __ROR8__(v360, 61);
  v364 = (__ROR8__(v362, 8) + v363) ^ 0xF7721CC6F3AEFBDCLL;
  v365 = v364 ^ __ROR8__(v363, 61);
  v366 = __ROR8__(v364, 8);
  v367 = 8 * (v349 & 7);
  STACK[0x53D0] = v367;
  *(STACK[0x8070] + 7362) ^= v350 ^ (((__ROR8__((0xD4BD7AB4F4357324 - ((v366 + v365) | 0xD4BD7AB4F4357324) + ((v366 + v365) | 0x2B42854B0BCA8CDBLL)) ^ 0xCDF5927190E13C86, 8) + ((0xD4BD7AB4F4357324 - ((v366 + v365) | 0xD4BD7AB4F4357324) + ((v366 + v365) | 0x2B42854B0BCA8CDBLL)) ^ 0xCDF5927190E13C86 ^ __ROR8__(v365, 61))) ^ 0x94AC86FF716F8E22) >> v367);
  v369 = *(STACK[0xFE18] + 14);
  v368 = STACK[0xFE18] + 14;
  LODWORD(STACK[0x53A8]) = v369;
  v370 = __ROR8__(v368 & 0xFFFFFFFFFFFFFFF8, 8);
  v371 = 2 * v370 + 0x1EFB64F383DB817ALL;
  STACK[0x53B8] = v371;
  STACK[0x53C0] = v370;
  v372 = (v371 & 0x1B669615EE9CF3E4) - v370 - 0x1D30FD84B93C3AB0;
  v373 = __ROR8__(v372 ^ 0xA1CB5FE2F1A0797BLL, 8);
  v372 ^= 0xDA26CC2CFECE7C97;
  v374 = (((2 * (v373 + v372)) & 0x98EB4A3400D2BCB4) - (v373 + v372) - 0x4C75A51A00695E5BLL) ^ 0x89F63E12E02967FELL;
  v375 = v374 ^ __ROR8__(v372, 61);
  v376 = (__ROR8__(v374, 8) + v375) ^ 0xFBC18F8B9568C440;
  v377 = v376 ^ __ROR8__(v375, 61);
  v378 = __ROR8__(v376, 8);
  v379 = (((2 * (v378 + v377)) & 0x9D7D7A3E4F4C2B98) - (v378 + v377) - 0x4EBEBD1F27A615CDLL) ^ 0xFBA48C8FBBCE9300;
  v380 = v379 ^ __ROR8__(v377, 61);
  v381 = __ROR8__(v379, 8);
  v382 = (v381 + v380 - ((2 * (v381 + v380)) & 0x29CDE9BB9A67759CLL) - 0x6B190B2232CC4532) ^ 0xBCB23F8746E839D9;
  v383 = v382 ^ __ROR8__(v380, 61);
  v384 = __ROR8__(v382, 8);
  v385 = (((2 * (v384 + v383)) | 0xA61ABE54A235DF86) - (v384 + v383) - 0x530D5F2A511AEFC3) ^ 0xA47F43ECA2B4141FLL;
  v386 = v385 ^ __ROR8__(v383, 61);
  v387 = __ROR8__(v385, 8);
  v388 = 8 * (v368 & 7);
  STACK[0x53B0] = v388;
  *(STACK[0x8070] + 6769) ^= v369 ^ (((__ROR8__((((2 * (v387 + v386)) & 0xA2AB0F537BC88D50) - (v387 + v386) + 0x2EAA7856421BB957) ^ 0xC81D6F6CD930090ALL, 8) + ((((2 * (v387 + v386)) & 0xA2AB0F537BC88D50) - (v387 + v386) + 0x2EAA7856421BB957) ^ 0xC81D6F6CD930090ALL ^ __ROR8__(v386, 61))) ^ 0x94AC86FF716F8E22) >> v388);
  v390 = *(STACK[0xFE18] + 15);
  v389 = STACK[0xFE18] + 15;
  LODWORD(STACK[0x5390]) = v390;
  v391 = __ROR8__(v389 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x5398] = v391;
  v392 = (v391 - 0x70824D863E123F43) ^ 0xA86A78D9F67FFA9ALL;
  v393 = (__ROR8__((v391 - 0x70824D863E123F43) ^ 0xD387EB17F911FF76, 8) + v392) ^ 0x3A7C64F71FBFC65BLL;
  v394 = v393 ^ __ROR8__(v392, 61);
  v395 = (__ROR8__(v393, 8) + v394) ^ 0xFBC18F8B9568C440;
  v396 = v395 ^ __ROR8__(v394, 61);
  v397 = __ROR8__(v395, 8);
  v398 = (0x560C1E6CCCEB1432 - ((v397 + v396) | 0x560C1E6CCCEB1432) + ((v397 + v396) | 0xA9F3E1933314EBCDLL)) ^ 0xE3162FFC508392FELL;
  v399 = v398 ^ __ROR8__(v396, 61);
  v400 = __ROR8__(v398, 8);
  v401 = __ROR8__((((2 * (v400 + v399)) & 0x4EC69645B179C58ELL) - (v400 + v399) + 0x589CB4DD27431D38) ^ 0x70C87F87AC989E2FLL, 8);
  v402 = (((2 * (v400 + v399)) & 0x4EC69645B179C58ELL) - (v400 + v399) + 0x589CB4DD27431D38) ^ 0x70C87F87AC989E2FLL ^ __ROR8__(v399, 61);
  v403 = (v401 + v402 - ((2 * (v401 + v402)) & 0x858FC6B10587E68ELL) + 0x42C7E35882C3F347) ^ 0xB5B5FF9E716D089BLL;
  v404 = v403 ^ __ROR8__(v402, 61);
  v405 = (__ROR8__(v403, 8) + v404) ^ 0xE6B7173A9B2BB05DLL;
  v406 = v405 ^ __ROR8__(v404, 61);
  v407 = __ROR8__(v405, 8);
  v408 = 8 * (v389 & 7);
  STACK[0x53A0] = v408;
  *(STACK[0x8070] + 6176) ^= v390 ^ (((0xD114E3BC3CD68364 - ((v407 + v406) | 0xD114E3BC3CD68364) + ((v407 + v406) | 0x2EEB1C43C3297C9BLL)) ^ 0xBA479ABCB246F2B9) >> v408);
  v409 = STACK[0x8070];
  v410 = (*(STACK[0x8070] + 1548) ^ 0xB7) << 8;
  v411 = (((v409[955] ^ 0xB7) << 16) | ((v409[12699] ^ 0xB7u) << 32)) + (((v409[2141] ^ 0x7EE84AFC90277121) & (v410 ^ 0xFFF8FFFFFB7F77FFLL) | v410 & 0x8E00) ^ 0x7EE84AFC90277196) + ((v409[362] ^ 0xB7) << 24) + ((v409[12106] << 40) ^ 0xB70000000000);
  v412 = *(STACK[0x8070] + 10327);
  v413 = (*(STACK[0x8070] + 9734) ^ 0xB7) << 8;
  v414 = (((v409[9141] ^ 0xB7) << 16) | ((v409[7955] ^ 0xB7u) << 32) | ((v409[7362] ^ 0xB7u) << 40) | ((v409[8548] ^ 0xB7) << 24)) + (((v412 ^ 0xBDB446C0A4125CA8) & ~v413 | v413 & 0xA300) ^ 0xBDB446C0A4125C1FLL);
  v415 = (v411 + (((v409[10920] << 56) | ((v409[11513] ^ 0xB7u) << 48)) ^ 0xB700000000000000)) ^ (v411 << 23);
  v416 = (v414 | (v409[6769] << 48) ^ 0xB7000000000000) + ((v409[6176] << 56) ^ 0xB700000000000000);
  v417 = v415 ^ (v415 >> 17) ^ v416 ^ (v416 >> 26);
  LOBYTE(v73) = (v417 ^ 0x45) - ((2 * (v417 ^ 0x45)) & 0x92) + 73;
  LOBYTE(v412) = (((v412 ^ 0x72) - 114) ^ ((v412 ^ 0x74) - 116) ^ ((v412 ^ 0xB1) + 79)) + (((v73 ^ 0x31) - 49) ^ ((v73 ^ 0x96) + 106) ^ ((v73 ^ 0xEE) + 18)) + 30;
  LOBYTE(v73) = v412 & 0xA4 ^ 0xE1;
  v409[2141] = v412 ^ (2 * ((v412 ^ 0x62) & (2 * ((v412 ^ 0x62) & (2 * ((v412 ^ 0x62) & (2 * ((v412 ^ 0x62) & (2 * ((v412 ^ 0x42) & (2 * ((v412 ^ 0x42) & 6 ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ 0x13;
  v418 = v416 ^ (v414 << 23) ^ ((v416 ^ (v414 << 23)) >> 17) ^ ((v417 ^ 0xF4C29045) >> 26);
  LOBYTE(v409) = v418 ^ v417;
  *(STACK[0x8070] + 1548) = ((v418 ^ v417) + (v417 ^ 0x45) - ((2 * ((v418 ^ v417) + (v417 ^ 0x45))) & 0x72) - 71) ^ 0xE;
  v419 = ((v417 ^ 0xF4C29045) << 23) ^ ((((v417 ^ 0xF4C29045) << 23) ^ v417 ^ 0xF4C29045) >> 17) ^ v418 ^ ((v418 ^ v417) >> 26);
  v420 = v418 ^ v417 ^ ((v418 ^ v417) << 23) ^ ((v418 ^ v417 ^ ((v418 ^ v417) << 23)) >> 17) ^ v419 ^ (v419 >> 26);
  *(STACK[0x8070] + 362) = ((v420 ^ 0x45) + v419 - ((2 * ((v420 ^ 0x45) + v419)) & 0x8F) + 71) ^ 0xF0;
  *(STACK[0x8070] + 955) = (v419 + v409 - ((2 * (v419 + v409)) & 0x4C) - 90) ^ 0x11;
  v421 = v419 ^ (v419 << 23) ^ ((v419 ^ (v419 << 23)) >> 17) ^ v420 ^ ((v420 ^ 0xF4C29045) >> 26);
  *(STACK[0x8070] + 12699) = (v421 + (v420 ^ 0x45) - ((2 * (v421 + (v420 ^ 0x45))) & 0x66) + 51) ^ 0x84;
  v422 = ((v420 ^ 0xF4C29045) << 23) ^ v420 ^ ((((v420 ^ 0xF4C29045) << 23) ^ v420 ^ 0xF4C29045) >> 17) ^ v421 ^ (v421 >> 26);
  v423 = v421 ^ (v421 << 23) ^ ((v421 ^ (v421 << 23)) >> 17) ^ v422 ^ (v422 >> 26);
  *(STACK[0x8070] + 11513) = ((v423 ^ 0x45) + v422 - ((2 * ((v423 ^ 0x45) + v422)) & 0x46) - 93) ^ 0x14;
  *(STACK[0x8070] + 12106) = (v422 + v421 - ((2 * (v422 + v421)) & 0x78) + 60) ^ 0x8B;
  v424 = v422 ^ (v422 << 23) ^ ((v422 ^ (v422 << 23)) >> 17) ^ v423 ^ ((v423 ^ 0xF4C29045) >> 26);
  v425 = v423 ^ 0xF4C29045 ^ ((v423 ^ 0xF4C29045) << 23) ^ ((v423 ^ 0xF4C29045 ^ ((v423 ^ 0xF4C29045) << 23)) >> 17) ^ v424 ^ (v424 >> 26);
  *(STACK[0x8070] + 10327) = ((v425 ^ 0x45) + v424 - ((2 * ((v425 ^ 0x45) + v424)) & 0x3C) + 30) ^ 0xA9;
  *(STACK[0x8070] + 10920) = (v424 + (v423 ^ 0x45) - ((2 * (v424 + (v423 ^ 0x45))) & 0x6A) - 75) ^ 2;
  v426 = v424 ^ (v424 << 23) ^ ((v424 ^ (v424 << 23)) >> 17) ^ v425 ^ ((v425 ^ 0xF4C29045) >> 26);
  *(STACK[0x8070] + 9734) = (v426 + (v425 ^ 0x45) - ((2 * (v426 + (v425 ^ 0x45))) & 0x30) + 24) ^ 0xAF;
  v427 = v425 ^ 0xF4C29045 ^ ((v425 ^ 0xF4C29045) << 23) ^ ((v425 ^ 0xF4C29045 ^ ((v425 ^ 0xF4C29045) << 23)) >> 17) ^ v426 ^ (v426 >> 26);
  *(STACK[0x8070] + 9141) = ((v427 ^ 0x45) + v426 + (~(2 * ((v427 ^ 0x45) + v426)) | 0xF5) + 6) ^ 0xB2;
  v428 = v426 ^ (v426 << 23) ^ ((v426 ^ (v426 << 23)) >> 17) ^ v427 ^ ((v427 ^ 0xF4C29045) >> 26);
  *(STACK[0x8070] + 8548) = (v428 + (v427 ^ 0x45) - ((2 * (v428 + (v427 ^ 0x45))) & 0x64) - 78) ^ 5;
  v429 = v427 ^ 0xF4C29045 ^ ((v427 ^ 0xF4C29045) << 23) ^ ((v427 ^ 0xF4C29045 ^ ((v427 ^ 0xF4C29045) << 23)) >> 17) ^ v428 ^ (v428 >> 26);
  *(STACK[0x8070] + 7955) = ((v429 ^ 0x45) + v428 - ((2 * ((v429 ^ 0x45) + v428)) & 0x26) + 19) ^ 0xA4;
  v430 = v428 ^ (v428 << 23) ^ ((v428 ^ (v428 << 23)) >> 17) ^ v429 ^ ((v429 ^ 0xF4C29045) >> 26);
  *(STACK[0x8070] + 7362) = (v430 + (v429 ^ 0x45) - ((2 * (v430 + (v429 ^ 0x45))) & 4) + 2) ^ 0xB5;
  v431 = ((v429 ^ 0xF4C29045) << 23) ^ v429 ^ ((((v429 ^ 0xF4C29045) << 23) ^ v429 ^ 0xF4C29045) >> 17) ^ (v430 >> 26);
  *(STACK[0x8070] + 6769) = ((v431 ^ v430) + v430 - ((2 * ((v431 ^ v430) + v430)) & 0x33) + 25) ^ 0xAE;
  LODWORD(v430) = (v431 ^ ((v430 ^ (v430 << 23)) >> 17) ^ 0x45 ^ ((v431 ^ v430) >> 26)) + (v431 ^ v430);
  *(STACK[0x8070] + 6176) = (v430 - ((2 * v430) & 0xEF) - 9) ^ 0x40;
  v432 = STACK[0xFE28];
  LODWORD(v425) = *v2 & ((STACK[0xFE28] & 0xFFFFFFF8) - 555828759);
  v433 = *v3;
  STACK[0x5388] = *(*v3 + (((STACK[0xFE28] & 0x79A2AAB8) + 1698434731 + (STACK[0xFE28] & 0x865D5540 | 0x79A2AABC) + 129) & *v2));
  v434 = *(v433 + (v425 & 0xFFFFFFF8));
  v435 = __ROR8__(v432 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x5378] = v435;
  v436 = (v434 + v435) ^ 0x91364DCB68334DBLL;
  v437 = v436 ^ __ROR8__(v434, 61);
  v438 = (__ROR8__(v436, 8) + v437) ^ 0x448D6F6CA711D855;
  v439 = v438 ^ __ROR8__(v437, 61);
  v440 = __ROR8__(v438, 8);
  v441 = (((2 * (v440 + v439)) & 0xD1E9B4FFC6FF9D7ELL) - (v440 + v439) - 0x68F4DA7FE37FCEC0) ^ 0x62F9DB53142A1338;
  v442 = v441 ^ __ROR8__(v439, 61);
  v443 = (__ROR8__(v441, 8) + v442) ^ 0x67536EC0FB8B549DLL;
  v444 = __ROR8__(v443, 8);
  v445 = v443 ^ __ROR8__(v442, 61);
  v446 = (v444 + v445) ^ 0xF887455E88108A0CLL;
  v447 = v446 ^ __ROR8__(v445, 61);
  v448 = (__ROR8__(v446, 8) + v447) ^ 0x24734B65A1E08459;
  v449 = v448 ^ __ROR8__(v447, 61);
  v450 = (__ROR8__(v448, 8) + v449) ^ 0x40C9CFEA3CC5CBE1;
  v451 = v450 ^ __ROR8__(v449, 61);
  v452 = __ROR8__(v450, 8);
  LODWORD(v444) = *v432;
  LODWORD(STACK[0x5370]) = v444;
  v453 = 8 * (v432 & 7);
  STACK[0x5380] = v453;
  *(STACK[0x8070] + 2141) ^= v444 ^ (((0x1573FED0DC096336 - ((v452 + v451) ^ 0x915000C3AE4CC04DLL | 0x1573FED0DC096336) + ((v452 + v451) ^ 0x915000C3AE4CC04DLL | 0xEA8C012F23F69CC9)) ^ 0x14BF5DC2686D8E42) >> v453);
  v454 = STACK[0xFD78] - 0x30BDFED8F32E6728;
  LODWORD(v444) = *v2 & (((LODWORD(STACK[0xFD78]) + 215062744) & 0xFFFFFFF8) - 555828759);
  v455 = *v3;
  STACK[0x5360] = *(*v3 + ((((LODWORD(STACK[0xFD78]) + 215062744) & 0xFFFFFFF8) - 555828760) & *v2));
  v456 = *(v455 + (v444 & 0xFFFFFFF8));
  v457 = __ROR8__(v454 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x5358] = v457;
  v458 = (v456 + v457) ^ 0x91364DCB68334DBLL;
  v459 = v458 ^ __ROR8__(v456, 61);
  v460 = __ROR8__(v458, 8);
  v461 = (((2 * ((v460 + v459) ^ 0x5CB0DE3A5BBC4667)) & 0x429196AC1F5F5D0) - ((v460 + v459) ^ 0x5CB0DE3A5BBC4667) + 0x7DEB734A9F050517) ^ 0x65D6C21C63A89B25;
  v462 = v461 ^ __ROR8__(v459, 61);
  v463 = (__ROR8__(v461, 8) + v462) ^ 0xF5F2FED308AA2278;
  v464 = v463 ^ __ROR8__(v462, 61);
  v465 = (__ROR8__(v463, 8) + v464) ^ 0x67536EC0FB8B549DLL;
  v466 = v465 ^ __ROR8__(v464, 61);
  v467 = __ROR8__(v465, 8);
  v468 = (((2 * ((v467 + v466) ^ 0x7DA970AC588D5938)) | 0x136EACFF5765ACE2) - ((v467 + v466) ^ 0x7DA970AC588D5938) + 0x7648A980544D298FLL) ^ 0xC99638D7B2F0545;
  v469 = v468 ^ __ROR8__(v466, 61);
  v470 = (__ROR8__(v468, 8) + v469) ^ 0x24734B65A1E08459;
  v471 = v470 ^ __ROR8__(v469, 61);
  v472 = __ROR8__(v470, 8);
  v473 = (0xE8FAEDF988D5BB40 - ((v472 + v471) | 0xE8FAEDF988D5BB40) + ((v472 + v471) | 0x17051206772A44BFLL)) ^ 0x57CCDDEC4BEF8F5ELL;
  v474 = __ROR8__(v473, 8) + (v473 ^ __ROR8__(v471, 61));
  LODWORD(v433) = *v454;
  LODWORD(STACK[0x5350]) = v433;
  v475 = 8 * (v454 & 7);
  STACK[0x5368] = v475;
  *(STACK[0x8070] + 1548) ^= v433 ^ ((v474 ^ 0x6F635C2EE5D7D2C6) >> v475);
  v476 = STACK[0xFD78] - 0x30BDFED8F32E6727;
  LODWORD(v433) = (((LODWORD(STACK[0xFD78]) + 215062745) & 0xE96BE138) + ((LODWORD(STACK[0xFD78]) + 215062745) & 0x16941EC0 | 0xE96BE13E) - 177022806) & *v2;
  v477 = *v3;
  STACK[0x5348] = *(*v3 + (*v2 & (((LODWORD(STACK[0xFD78]) + 215062745) & 0xFFFFFFF8 ^ 0xED3A5A04) - 240885787 + ((2 * ((LODWORD(STACK[0xFD78]) + 215062745) & 0xFFFFFFF8)) & 0xDA74B400)) & 0xFFFFFFF8));
  v478 = *(v477 + v433);
  v479 = __ROR8__(v476 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x5340] = v479;
  v480 = (v478 + v479 - ((2 * (v478 + v479)) & 0xE5B7793B5F075BACLL) - 0xD244362507C522ALL) ^ 0xFBC8D8411900990DLL;
  v481 = v480 ^ __ROR8__(v478, 61);
  v482 = __ROR8__(v480, 8);
  v483 = (((2 * (v482 + v481)) & 0xF78EE0586F9647ELL) - (v482 + v481) - 0x7BC7702C37CB240) ^ 0xBCCEE7919B929595;
  v484 = v483 ^ __ROR8__(v481, 61);
  v485 = __ROR8__(v483, 8);
  v486 = __ROR8__((v485 + v484 - ((2 * (v485 + v484)) & 0x4938215A33D16018) + 0x249C10AD19E8B00CLL) ^ 0xD16EEE7E11429274, 8);
  v487 = (v485 + v484 - ((2 * (v485 + v484)) & 0x4938215A33D16018) + 0x249C10AD19E8B00CLL) ^ 0xD16EEE7E11429274 ^ __ROR8__(v484, 61);
  v488 = (((2 * (v486 + v487)) & 0xAAC837D4E1AAD83ELL) - (v486 + v487) + 0x2A9BE4158F2A93E0) ^ 0x4DC88AD574A1C77DLL;
  v489 = v488 ^ __ROR8__(v487, 61);
  v490 = __ROR8__(v488, 8);
  v491 = (v490 + v489 - ((2 * (v490 + v489)) & 0x8DD96FADD28611BELL) - 0x3913482916BCF721) ^ 0x3E6BF288615382D3;
  v492 = v491 ^ __ROR8__(v489, 61);
  v493 = __ROR8__(v491, 8);
  v494 = (v493 + v492 - ((2 * (v493 + v492)) & 0x8533BB328D77DF82) - 0x3D662266B944103FLL) ^ 0xE6EA96FCE75B6B98;
  v495 = v494 ^ __ROR8__(v492, 61);
  v496 = __ROR8__(v494, 8);
  v497 = (((2 * (v496 + v495)) & 0x3D812CE96BFC565CLL) - (v496 + v495) + 0x613F698B4A01D4D1) ^ 0x21F6A66176C41F30;
  v498 = v497 ^ __ROR8__(v495, 61);
  v499 = __ROR8__(v497, 8);
  LODWORD(v486) = *v476;
  LODWORD(STACK[0x5330]) = v486;
  v500 = 8 * (v476 & 7);
  STACK[0x5338] = v500;
  *(STACK[0x8070] + 955) ^= v486 ^ (((v499 + v498) ^ 0x6F635C2EE5D7D2C6uLL) >> v500);
  v501 = STACK[0xFD78] - 0x30BDFED8F32E6726;
  LODWORD(v477) = *v2 & 0xFFFFFFF8;
  LODWORD(v486) = v477 & (((((LODWORD(STACK[0xFD78]) + 215062746) & 0xFFFFFFF8) - 774021982) ^ 0xFEE706B2) + 236607125 + ((2 * (((LODWORD(STACK[0xFD78]) + 215062746) & 0xFFFFFFF8) - 774021982)) & 0xFDCE0D64));
  LODWORD(v500) = v477 & (-1469131621 * (((1443226406 * ((LODWORD(STACK[0xFD78]) + 215062746) & 0xFFFFFFF8)) & 0x6191AF00) + ((-352128621 * ((LODWORD(STACK[0xFD78]) + 215062746) & 0xFFFFFFF8)) ^ 0xB0C8D787)) + 1321627436);
  v502 = *v3;
  STACK[0x5328] = *(*v3 + v486);
  v503 = *(v502 + v500);
  v504 = __ROR8__(v501 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x5320] = v504;
  v505 = (((2 * (v503 + v504)) | 0x378C9D1DE30D1678) - (v503 + v504) - 0x1BC64E8EF1868B3CLL) ^ 0x12D52A524705BFE7;
  v506 = v505 ^ __ROR8__(v503, 61);
  v507 = __ROR8__(v505, 8);
  v508 = (v507 + v506 - ((2 * (v507 + v506)) & 0xAE2408C99EBB58CCLL) + 0x57120464CF5DAC66) ^ 0x139F6B08684C7433;
  v509 = v508 ^ __ROR8__(v506, 61);
  v510 = __ROR8__(v508, 8);
  v511 = (((2 * (v510 + v509)) | 0x9015135992262446) - (v510 + v509) - 0x480A89ACC9131223) ^ 0xBDF8777FC1B9305BLL;
  v512 = v511 ^ __ROR8__(v509, 61);
  v513 = __ROR8__(v511, 8);
  v514 = (v513 + v512 - ((2 * (v513 + v512)) & 0xFEEF30B97ED7F0A6) - 0x8867A3409407ADLL) ^ 0x9824F69C44E0ACCELL;
  v515 = v514 ^ __ROR8__(v512, 61);
  v516 = (__ROR8__(v514, 8) + v515) ^ 0xF887455E88108A0CLL;
  v517 = __ROR8__(v516, 8);
  v518 = v516 ^ __ROR8__(v515, 61);
  v519 = (0x602C151FDD3C8137 - ((v517 + v518) | 0x602C151FDD3C8137) + ((v517 + v518) | 0x9FD3EAE022C37EC8)) ^ 0xBBA0A1858323FA91;
  v520 = v519 ^ __ROR8__(v518, 61);
  v521 = __ROR8__(v519, 8);
  v522 = (((2 * (v521 + v520)) & 0xA91C7DDAE8BBF7A2) - (v521 + v520) - 0x548E3EED745DFBD2) ^ 0xEBB80EF8B767CFCFLL;
  v523 = v522 ^ __ROR8__(v520, 61);
  v524 = __ROR8__(v522, 8);
  LODWORD(v517) = *v501;
  LODWORD(STACK[0x5310]) = v517;
  v525 = 8 * (v501 & 7);
  STACK[0x5318] = v525;
  *(STACK[0x8070] + 362) ^= v517 ^ (((((2 * (v524 + v523)) | 0x202F3C933B557B0) - (v524 + v523) - 0x10179E499DAABD8) ^ 0x6E6225CA7C0D791ELL) >> v525);
  v526 = STACK[0xFD78] - 0x30BDFED8F32E6725;
  v527 = *(*v3 + ((*v2 & (((LODWORD(STACK[0xFD78]) + 215062747) & 0xFFFFFFF8) - 555828759)) & 0xFFFFFFFFFFFFFFF8));
  v528 = (v527 + __ROR8__(v526 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0x91364DCB68334DBLL;
  v529 = v528 ^ __ROR8__(v527, 61);
  v530 = __ROR8__(v528, 8);
  STACK[0x5308] = v530 + v529;
  v531 = (0x2626913358249F75 - ((v530 + v529) | 0x2626913358249F75) + ((v530 + v529) | 0xD9D96ECCA7DB608ALL)) ^ 0x9D5401A000CAB8DFLL;
  v532 = __ROR8__(v529, 61);
  STACK[0x52F8] = v532;
  v533 = v531 ^ v532;
  v534 = (__ROR8__(v531, 8) + (v531 ^ v532)) ^ 0xF5F2FED308AA2278;
  v535 = v534 ^ __ROR8__(v533, 61);
  v536 = __ROR8__(v534, 8);
  v537 = (((2 * ((v536 + v535) ^ 0x5BD33F1EF87A8486)) | 0xCE664A77573F520CLL) - ((v536 + v535) ^ 0x5BD33F1EF87A8486) + 0x18CCDAC4546056FALL) ^ 0xDBB374E5A86E791DLL;
  v538 = v537 ^ __ROR8__(v535, 61);
  v539 = (__ROR8__(v537, 8) + v538) ^ 0xF887455E88108A0CLL;
  v540 = v539 ^ __ROR8__(v538, 61);
  v541 = (__ROR8__(v539, 8) + v540) ^ 0x24734B65A1E08459;
  v542 = v541 ^ __ROR8__(v540, 61);
  v543 = (__ROR8__(v541, 8) + v542) ^ 0x40C9CFEA3CC5CBE1;
  v544 = __ROR8__(v543, 8) + (v543 ^ __ROR8__(v542, 61));
  LODWORD(v502) = *v526;
  LODWORD(STACK[0x52F0]) = v502;
  v545 = 8 * (v526 & 7);
  STACK[0x5300] = v545;
  *(STACK[0x8070] + 12699) ^= v502 ^ ((v544 ^ 0x6F635C2EE5D7D2C6uLL) >> v545);
  v546 = STACK[0xFD78] - 0x30BDFED8F32E6724;
  LODWORD(v545) = (((LODWORD(STACK[0xFD78]) + 215062748) & 0xFFFFFFF8 ^ 0xB00680C2) + 785922342 + ((2 * ((LODWORD(STACK[0xFD78]) + 215062748) & 0xFFFFFFF8)) & 0x600D0180)) & *v2;
  v547 = *v3;
  STACK[0x52E8] = *(*v3 + (*v2 & (((LODWORD(STACK[0xFD78]) + 215062748) & 0xFFFFFFF8) - 555828759) & 0xFFFFFFF8));
  v548 = *(v547 + v545);
  v549 = __ROR8__(v546 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x52E0] = v549;
  v550 = (((2 * (v548 + v549)) & 0xFCC2DC085129A728) - (v548 + v549) - 0x7E616E042894D395) ^ 0x888DF52761E818B0;
  v551 = v550 ^ __ROR8__(v548, 61);
  v552 = (__ROR8__(v550, 8) + v551) ^ 0x448D6F6CA711D855;
  v553 = v552 ^ __ROR8__(v551, 61);
  v554 = (__ROR8__(v552, 8) + v553) ^ 0xF5F2FED308AA2278;
  v555 = v554 ^ __ROR8__(v553, 61);
  v556 = (__ROR8__(v554, 8) + v555) ^ 0x67536EC0FB8B549DLL;
  v557 = v556 ^ __ROR8__(v555, 61);
  v558 = (__ROR8__(v556, 8) + v557) ^ 0xF887455E88108A0CLL;
  v559 = v558 ^ __ROR8__(v557, 61);
  v560 = __ROR8__(v558, 8);
  v561 = __ROR8__((((2 * (v560 + v559)) | 0x41C9F08D6A57A4AALL) - (v560 + v559) + 0x5F1B07B94AD42DABLL) ^ 0x8497B32314CB560CLL, 8);
  v562 = (((2 * (v560 + v559)) | 0x41C9F08D6A57A4AALL) - (v560 + v559) + 0x5F1B07B94AD42DABLL) ^ 0x8497B32314CB560CLL ^ __ROR8__(v559, 61);
  v563 = (((2 * (v561 + v562)) & 0xB071A69F3C481694) - (v561 + v562) - 0x5838D34F9E240B4BLL) ^ 0xE70EE35A5D1E3F54;
  v564 = v563 ^ __ROR8__(v562, 61);
  v565 = __ROR8__(v563, 8);
  LODWORD(v547) = *v546;
  LODWORD(STACK[0x52D0]) = v547;
  v566 = 8 * (v546 & 7);
  STACK[0x52D8] = v566;
  *(STACK[0x8070] + 12106) ^= v547 ^ (((v565 + v564 - ((2 * (v565 + v564)) & 0x663465EFAEB7FCAELL) - 0x4CE5CD0828A401A9) ^ 0xDC796ED9328C2C91) >> v566);
  v567 = STACK[0xFD78] - 0x30BDFED8F32E6723;
  LODWORD(v561) = (((LODWORD(STACK[0xFD78]) + 215062749) & 0x497C00E8) + ((LODWORD(STACK[0xFD78]) + 215062749) & 0xB683FF10 | 0x497C00EC) - 1788692228) & *v2;
  v568 = *v3;
  STACK[0x52C8] = *(*v3 + (*v2 & (((LODWORD(STACK[0xFD78]) + 215062749) & 0xFFFFFFF8 ^ 0x36F00DA8) - 1477532841 + ((2 * ((LODWORD(STACK[0xFD78]) + 215062749) & 0xFFFFFFF8)) & 0x6DE01B50) + 2282) & 0xFFFFFFF8));
  v569 = *(v568 + v561);
  v570 = __ROR8__(v567 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x52C0] = v570;
  v571 = (v569 + v570) ^ 0x91364DCB68334DBLL;
  v572 = v571 ^ __ROR8__(v569, 61);
  v573 = __ROR8__(v571, 8);
  v574 = __ROR8__((0xB809885A9FF277C8 - ((v573 + v572) ^ 0xF80F3F31DD983449 | 0xB809885A9FF277C8) + ((v573 + v572) ^ 0xF80F3F31DD983449 | 0x47F677A5600D8837)) ^ 0xFB7427F81A84642BLL, 8);
  v575 = (0xB809885A9FF277C8 - ((v573 + v572) ^ 0xF80F3F31DD983449 | 0xB809885A9FF277C8) + ((v573 + v572) ^ 0xF80F3F31DD983449 | 0x47F677A5600D8837)) ^ 0xFB7427F81A84642BLL ^ __ROR8__(v572, 61);
  v576 = (((2 * (v574 + v575)) & 0x424852BA55B81D70) - (v574 + v575) - 0x2124295D2ADC0EB9) ^ 0x2B292871DD89D33FLL;
  v577 = v576 ^ __ROR8__(v575, 61);
  v578 = (__ROR8__(v576, 8) + v577) ^ 0x67536EC0FB8B549DLL;
  v579 = v578 ^ __ROR8__(v577, 61);
  v580 = __ROR8__(v578, 8);
  v581 = (((v580 + v579) ^ 0xE76752DF972513FFLL) - ((2 * ((v580 + v579) ^ 0xE76752DF972513FFLL)) & 0xE96A637A8FC18A48) - 0xB4ACE42B81F3ADCLL) ^ 0xEB55263C58D55CD7;
  v582 = v581 ^ __ROR8__(v579, 61);
  v583 = __ROR8__(v581, 8);
  v584 = (((2 * (v583 + v582)) | 0x5736F6AF3F1B0AFCLL) - (v583 + v582) + 0x546484A860727A82) ^ 0x8FE830323E6D0127;
  v585 = v584 ^ __ROR8__(v582, 61);
  v586 = (__ROR8__(v584, 8) + v585) ^ 0x40C9CFEA3CC5CBE1;
  v587 = v586 ^ __ROR8__(v585, 61);
  v588 = __ROR8__(v586, 8);
  LODWORD(v568) = *v567;
  LODWORD(STACK[0x52B0]) = v568;
  v589 = 8 * (v567 & 7);
  STACK[0x52B8] = v589;
  *(STACK[0x8070] + 11513) ^= v568 ^ (((0x411D1021D0C1CE4DLL - ((v588 + v587) | 0x411D1021D0C1CE4DLL) + ((v588 + v587) | 0xBEE2EFDE2F3E31B2)) ^ 0xD181B3F0CAE9E374) >> v589);
  v590 = STACK[0xFD78] - 0x30BDFED8F32E6722;
  LODWORD(v586) = (((LODWORD(STACK[0xFD78]) + 215062750) & 0x21F5A2F0) + ((LODWORD(STACK[0xFD78]) + 215062750) & 0xDE0A5D08 | 0x21F5A2F2) - 1125574922) & *v2;
  v591 = *v3;
  STACK[0x52A8] = *(*v3 + (*v2 & (((LODWORD(STACK[0xFD78]) + 215062750) & 0xFFFFFFF8) - 555828759) & 0xFFFFFFF8));
  v592 = *(v591 + v586);
  v593 = __ROR8__(v590 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x5290] = v593;
  v594 = (((2 * (v592 + v593)) & 0xCD436D14E34AEA20) - (v592 + v593) - 0x66A1B68A71A57511) ^ 0x904D2DA938D9BE34;
  v595 = v594 ^ __ROR8__(v592, 61);
  v596 = (__ROR8__(v594, 8) + v595) ^ 0x448D6F6CA711D855;
  v597 = __ROR8__(v596, 8);
  v598 = v596 ^ __ROR8__(v595, 61);
  v599 = (v597 + v598) ^ 0xF5F2FED308AA2278;
  v600 = v599 ^ __ROR8__(v598, 61);
  v601 = (__ROR8__(v599, 8) + v600) ^ 0x67536EC0FB8B549DLL;
  v602 = v601 ^ __ROR8__(v600, 61);
  v603 = (__ROR8__(v601, 8) + v602) ^ 0xF887455E88108A0CLL;
  v604 = v603 ^ __ROR8__(v602, 61);
  v605 = (__ROR8__(v603, 8) + v604) ^ 0x24734B65A1E08459;
  v606 = v605 ^ __ROR8__(v604, 61);
  v607 = __ROR8__(v605, 8);
  v608 = (((2 * (v607 + v606)) & 0x6D41B25282A00E64) - (v607 + v606) - 0x36A0D92941500733) ^ 0x8996E93C826A332CLL;
  v609 = v608 ^ __ROR8__(v606, 61);
  v610 = __ROR8__(v608, 8);
  LODWORD(v591) = *v590;
  LODWORD(STACK[0x5298]) = v591;
  v611 = 8 * (v590 & 7);
  STACK[0x52A0] = v611;
  *(STACK[0x8070] + 10920) ^= v591 ^ (((v610 + v609 - ((2 * (v610 + v609)) & 0x57BBB41C8BC0372ALL) - 0x542225F1BA1FE46BLL) ^ 0xC4BE8620A037C953) >> v611);
  v612 = STACK[0xFD78] - 0x30BDFED8F32E6721;
  LODWORD(v597) = *v2 & 0xFFFFFFF8;
  LODWORD(v608) = v597 & (((LODWORD(STACK[0xFD78]) + 215062751) & 0x4F924450 | 0xB06DBBAD) - 555828759 + ((LODWORD(STACK[0xFD78]) + 215062751) & 0xB06DBBA8 | 0x4F924453));
  LODWORD(v597) = v597 & (((LODWORD(STACK[0xFD78]) + 215062751) & 0xFFFFFFF8) - 555828759);
  v613 = *v3;
  STACK[0x5288] = *(*v3 + v608);
  v614 = *(v613 + v597);
  v615 = __ROR8__(v612 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x5280] = v615;
  v616 = (v614 + v615) ^ 0x91364DCB68334DBLL;
  v617 = v616 ^ __ROR8__(v614, 61);
  v618 = __ROR8__(v616, 8);
  v619 = (((2 * ((v618 + v617) ^ 0x262A22460BCBE609)) | 0x850654913330892ELL) - ((v618 + v617) ^ 0x262A22460BCBE609) + 0x3D7CD5B76667BB69) ^ 0xA024676235427ACBLL ^ __ROR8__(v617, 61);
  v620 = (__ROR8__((((2 * ((v618 + v617) ^ 0x262A22460BCBE609)) | 0x850654913330892ELL) - ((v618 + v617) ^ 0x262A22460BCBE609) + 0x3D7CD5B76667BB69) ^ 0xA024676235427ACBLL, 8) + v619) ^ 0xF5F2FED308AA2278;
  v621 = v620 ^ __ROR8__(v619, 61);
  v622 = (__ROR8__(v620, 8) + v621) ^ 0x67536EC0FB8B549DLL;
  v623 = v622 ^ __ROR8__(v621, 61);
  v624 = (__ROR8__(v622, 8) + v623) ^ 0xF887455E88108A0CLL;
  v625 = v624 ^ __ROR8__(v623, 61);
  v626 = __ROR8__(v624, 8);
  v627 = (((2 * (v626 + v625)) | 0x7A4F839DDF372F12) - (v626 + v625) - 0x3D27C1CEEF9B9789) ^ 0x19548AAB4E7B13D0;
  v628 = v627 ^ __ROR8__(v625, 61);
  v629 = __ROR8__(v627, 8);
  v630 = (((2 * (v629 + v628)) | 0x24C0779CDDBB94ELL) - (v629 + v628) + 0x7ED9FC4319122359) ^ 0xC1EFCC56DA281746;
  v631 = v630 ^ __ROR8__(v628, 61);
  v632 = __ROR8__(v630, 8);
  LODWORD(v613) = *v612;
  LODWORD(STACK[0x5270]) = v613;
  v633 = 8 * (v612 & 7);
  STACK[0x5278] = v633;
  *(STACK[0x8070] + 10327) ^= v613 ^ (((0xD7A36F1A763D210FLL - ((v632 + v631) | 0xD7A36F1A763D210FLL) + ((v632 + v631) | 0x285C90E589C2DEF0)) ^ 0x473FCCCB6C150C36) >> v633);
  v634 = STACK[0xFD78] - 0x30BDFED8F32E6720;
  LODWORD(v597) = (((LODWORD(STACK[0xFD78]) + 215062752) & 0x4D0C77F8) + ((LODWORD(STACK[0xFD78]) + 215062752) & 0xB2F38800 | 0x4D0C77FC) - 1848491540) & *v2;
  v635 = *v3;
  STACK[0x5268] = *(*v3 + ((((((LODWORD(STACK[0xFD78]) + 215062752) & 0x33EBBBF8 | 0xCC144401) - 871087103 + ((LODWORD(STACK[0xFD78]) + 215062752) & 0xCC144400 | 0x33EBBBFF)) & 0xFFFFFFF8) + 315258344) & *v2));
  v636 = *(v635 + v597);
  v637 = __ROR8__(v634 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x5260] = v637;
  v638 = (((v636 + v637) & 0x14D7F0A2329EA035 ^ 0x520820200A015) + ((v636 + v637) & 0xEB280F5DCD615FCALL ^ 0x8100090C09205F41) - 1) ^ 0x88164D52BDA3CB8ELL;
  v639 = v638 ^ __ROR8__(v636, 61);
  v640 = __ROR8__(v638, 8);
  v641 = (v640 + v639 - ((2 * (v640 + v639)) & 0xBFD9F1708A604CE8) - 0x20130747BACFD98CLL) ^ 0x9B6197D4E221FE21;
  v642 = v641 ^ __ROR8__(v639, 61);
  v643 = (__ROR8__(v641, 8) + v642) ^ 0xF5F2FED308AA2278;
  v644 = v643 ^ __ROR8__(v642, 61);
  v645 = (__ROR8__(v643, 8) + v644) ^ 0x67536EC0FB8B549DLL;
  v646 = v645 ^ __ROR8__(v644, 61);
  v647 = __ROR8__(v645, 8);
  v648 = __ROR8__((0x818E0542CBA0E18 - ((v647 + v646) | 0x818E0542CBA0E18) + ((v647 + v646) | 0xF7E71FABD345F1E7)) ^ 0xF605AF55B557BEBLL, 8);
  v649 = (0x818E0542CBA0E18 - ((v647 + v646) | 0x818E0542CBA0E18) + ((v647 + v646) | 0xF7E71FABD345F1E7)) ^ 0xF605AF55B557BEBLL ^ __ROR8__(v646, 61);
  v650 = (v648 + v649 - ((2 * (v648 + v649)) & 0x1EFA8BF0AC3AEE68) + 0xF7D45F8561D7734) ^ 0x2B0E0E9DF7FDF36DLL;
  v651 = v650 ^ __ROR8__(v649, 61);
  v652 = (__ROR8__(v650, 8) + v651) ^ 0x40C9CFEA3CC5CBE1;
  v653 = v652 ^ __ROR8__(v651, 61);
  v654 = __ROR8__(v652, 8);
  LODWORD(v635) = *v634;
  LODWORD(STACK[0x5250]) = v635;
  v655 = 8 * (v634 & 7);
  STACK[0x5258] = v655;
  *(STACK[0x8070] + 9734) ^= v635 ^ (((v654 + v653 - ((2 * (v654 + v653)) & 0x23CC9CBEA4E56B48) + 0x11E64E5F5272B5A4) ^ 0x7E851271B7A56762uLL) >> v655);
  v656 = STACK[0xFD78] - 0x30BDFED8F32E671FLL;
  LODWORD(v648) = 2 * ((LODWORD(STACK[0xFD78]) + 215062753) & 0xFFFFFFF8);
  LODWORD(v635) = *v2 & 0xFFFFFFF8;
  LODWORD(v652) = v635 & (((LODWORD(STACK[0xFD78]) + 215062753) & 0xFFFFFFF8 ^ 0x91CA2E46) + 1293192099 + (v648 & 0x23945C80));
  LODWORD(v648) = v635 & (((LODWORD(STACK[0xFD78]) + 215062753) & 0xFFFFFFF8 ^ 0xF47F2126) - 362833725 + (v648 & 0xE8FE4240));
  v657 = *v3;
  STACK[0x5248] = *(*v3 + v652);
  v658 = *(v657 + v648);
  v659 = __ROR8__(v656 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x5240] = v659;
  v660 = (((2 * (v658 + v659)) | 0xF36ED6442AB4D662) - (v658 + v659) - 0x79B76B22155A6B31) ^ 0x70A40FFEA3D95FEALL;
  v661 = v660 ^ __ROR8__(v658, 61);
  v662 = (__ROR8__(v660, 8) + v661) ^ 0x448D6F6CA711D855;
  v663 = v662 ^ __ROR8__(v661, 61);
  v664 = __ROR8__(v662, 8);
  v665 = (((2 * (v664 + v663)) & 0x673BCD65976A40BALL) - (v664 + v663) + 0x4C62194D344ADFA2) ^ 0xB990E79E3CE0FDDALL ^ __ROR8__(v663, 61);
  v666 = (__ROR8__((((2 * (v664 + v663)) & 0x673BCD65976A40BALL) - (v664 + v663) + 0x4C62194D344ADFA2) ^ 0xB990E79E3CE0FDDALL, 8) + v665) ^ 0x67536EC0FB8B549DLL;
  v667 = v666 ^ __ROR8__(v665, 61);
  v668 = __ROR8__(v666, 8);
  v669 = (v668 + v667 - ((2 * (v668 + v667)) & 0x4F84F0BF3EC187A4) - 0x583D87A0609F3C2ELL) ^ 0x5F453D01177049DELL;
  v670 = v669 ^ __ROR8__(v667, 61);
  v671 = (__ROR8__(v669, 8) + v670) ^ 0x24734B65A1E08459;
  v672 = v671 ^ __ROR8__(v670, 61);
  v673 = __ROR8__(v671, 8);
  v674 = (v673 + v672 - ((2 * (v673 + v672)) & 0x7B4F84149D1417A2) - 0x42583DF5B175F42FLL) ^ 0xFD6E0DE0724FC030;
  v675 = v674 ^ __ROR8__(v672, 61);
  v676 = __ROR8__(v674, 8);
  LODWORD(v657) = *v656;
  LODWORD(STACK[0x5230]) = v657;
  v677 = 8 * (v656 & 7);
  STACK[0x5238] = v677;
  *(STACK[0x8070] + 9141) ^= v657 ^ (((v676 + v675) ^ 0x6F635C2EE5D7D2C6) >> v677);
  v678 = STACK[0xFD78] - 0x30BDFED8F32E671ELL;
  LODWORD(v677) = ((LODWORD(STACK[0xFD78]) + 215062754) & 0xFFFFFFF8) + ((((LODWORD(STACK[0xFD78]) + 215062754) & 0xFFFFFFF8) + 1069483034) | 0xDA15A194) + ((4258789 - ((LODWORD(STACK[0xFD78]) + 215062754) & 0xFFFFFFF8)) | 0xDA15A194) + 80287830;
  LODWORD(v657) = *v2;
  v679 = *v3;
  STACK[0x5218] = *(*v3 + ((((LODWORD(STACK[0xFD78]) + 215062754) & 0xFFFFFFF8) - 555828760) & *v2));
  v680 = *(v679 + (v657 & v677 & 0xFFFFFFF8));
  v681 = __ROR8__(v678 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x5210] = v681;
  v682 = (v680 + v681) ^ 0x91364DCB68334DBLL;
  v683 = v682 ^ __ROR8__(v680, 61);
  v684 = __ROR8__(v682, 8);
  v685 = (((2 * (v684 + v683)) & 0xC204F3DADE9ECF26) - (v684 + v683) - 0x610279ED6F4F6794) ^ 0xDA70E97E37A14039;
  v686 = v685 ^ __ROR8__(v683, 61);
  v687 = __ROR8__(v685, 8);
  v688 = (0x7CAA93CE6D3E9D0FLL - ((v687 + v686) | 0x7CAA93CE6D3E9D0FLL) + ((v687 + v686) | 0x83556C3192C162F0)) ^ 0x76A792E29A6B4088;
  v689 = v688 ^ __ROR8__(v686, 61);
  v690 = (__ROR8__(v688, 8) + v689) ^ 0x67536EC0FB8B549DLL;
  v691 = v690 ^ __ROR8__(v689, 61);
  v692 = __ROR8__(v690, 8);
  v693 = (((2 * (v692 + v691)) | 0x2B4E416D74ED9902) - (v692 + v691) - 0x15A720B6BA76CC81) ^ 0xED2065E83266468DLL ^ __ROR8__(v691, 61);
  v694 = (__ROR8__((((2 * (v692 + v691)) | 0x2B4E416D74ED9902) - (v692 + v691) - 0x15A720B6BA76CC81) ^ 0xED2065E83266468DLL, 8) + v693) ^ 0x24734B65A1E08459;
  v695 = v694 ^ __ROR8__(v693, 61);
  v696 = (__ROR8__(v694, 8) + v695) ^ 0x40C9CFEA3CC5CBE1;
  LODWORD(v657) = *v678;
  LODWORD(STACK[0x5220]) = v657;
  v697 = 8 * (v678 & 7);
  STACK[0x5228] = v697;
  *(STACK[0x8070] + 8548) ^= v657 ^ (((__ROR8__(v696, 8) + (v696 ^ __ROR8__(v695, 61))) ^ 0x6F635C2EE5D7D2C6uLL) >> v697);
  v698 = STACK[0xFD78] - 0x30BDFED8F32E671DLL;
  LODWORD(v648) = (((LODWORD(STACK[0xFD78]) + 215062755) & 0xFFFFFFF8 ^ 0xCA333D34) - 1458442127 + ((2 * ((LODWORD(STACK[0xFD78]) + 215062755) & 0xFFFFFFF8)) | 0x6B998595) + 1710) & *v2;
  v699 = *v3;
  STACK[0x5208] = *(*v3 + (*v2 & (((LODWORD(STACK[0xFD78]) + 215062755) & 0xB429E130 | 0x4BD61ECB) - 555828759 + ((LODWORD(STACK[0xFD78]) + 215062755) & 0x4BD61EC8 | 0xB429E135)) & 0xFFFFFFF8));
  v700 = *(v699 + v648);
  v701 = __ROR8__(v698 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x5200] = v701;
  v702 = (v700 + v701) ^ 0x91364DCB68334DBLL;
  v703 = v702 ^ __ROR8__(v700, 61);
  v704 = __ROR8__(v702, 8);
  v705 = __ROR8__((v704 + v703 - ((2 * (v704 + v703)) & 0xE3DB974C75DC2EF4) + 0x71EDCBA63AEE177ALL) ^ 0x3560A4CA9DFFCF2FLL, 8);
  v706 = (v704 + v703 - ((2 * (v704 + v703)) & 0xE3DB974C75DC2EF4) + 0x71EDCBA63AEE177ALL) ^ 0x3560A4CA9DFFCF2FLL ^ __ROR8__(v703, 61);
  v707 = (((2 * (v705 + v706)) & 0xD4AAA756B06B7C4CLL) - (v705 + v706) - 0x6A5553AB5835BE27) ^ 0x60585287AF6063A1;
  v708 = v707 ^ __ROR8__(v706, 61);
  v709 = __ROR8__(v707, 8);
  v710 = (((v709 + v708) & 0x6381E2138DF5AB86 ^ 0x420080130D30A182) + ((v709 + v708) ^ 0x31FB7A64D2CD4A4CLL) - (((v709 + v708) ^ 0x31FB7A64D2CD4A4CLL) & 0x6381E2138DF5AB86)) ^ 0x3529F6B7A4B3B557;
  v711 = v710 ^ __ROR8__(v708, 61);
  v712 = __ROR8__(v710, 8);
  v713 = __ROR8__((((2 * (v712 + v711)) & 0x2AE0021D760414E8) - (v712 + v711) + 0x6A8FFEF144FDF58BLL) ^ 0x9208BBAFCCED7F87, 8);
  v714 = (((2 * (v712 + v711)) & 0x2AE0021D760414E8) - (v712 + v711) + 0x6A8FFEF144FDF58BLL) ^ 0x9208BBAFCCED7F87 ^ __ROR8__(v711, 61);
  v715 = (v713 + v714) ^ 0x24734B65A1E08459;
  v716 = v715 ^ __ROR8__(v714, 61);
  v717 = (__ROR8__(v715, 8) + v716) ^ 0x40C9CFEA3CC5CBE1;
  v718 = v717 ^ __ROR8__(v716, 61);
  v719 = __ROR8__(v717, 8);
  LODWORD(v697) = *v698;
  LODWORD(STACK[0x51E0]) = v697;
  v720 = 8 * (v698 & 7);
  STACK[0x51F8] = v720;
  *(STACK[0x8070] + 7955) ^= v697 ^ (((((2 * (v719 + v718)) | 0x74EDA58C39E8C8B0) - (v719 + v718) + 0x45892D39E30B9BA8) ^ 0xD5158EE8F923B69ELL) >> v720);
  v721 = STACK[0xFD78] - 0x30BDFED8F32E671CLL;
  LODWORD(v718) = *v2 & (((LODWORD(STACK[0xFD78]) + 215062756) & 0xFFFFFFF8) - 555828759);
  v722 = *v3;
  STACK[0x51C8] = *(*v3 + ((((LODWORD(STACK[0xFD78]) + 215062756) & 0xFFFFFFF8) - 555828760) & *v2));
  v723 = *(v722 + (v718 & 0xFFFFFFF8));
  v724 = __ROR8__(v721 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x51C0] = v724;
  v725 = (v723 + v724) ^ 0x91364DCB68334DBLL;
  v726 = v725 ^ __ROR8__(v723, 61);
  v727 = __ROR8__(v725, 8);
  v728 = (((2 * (v727 + v726)) | 0x496A044F82396622) - (v727 + v726) + 0x5B4AFDD83EE34CEFLL) ^ 0xE0386D4B660D6B44;
  v729 = v728 ^ __ROR8__(v726, 61);
  v730 = (__ROR8__(v728, 8) + v729) ^ 0xF5F2FED308AA2278;
  v731 = v730 ^ __ROR8__(v729, 61);
  v732 = (__ROR8__(v730, 8) + v731) ^ 0x67536EC0FB8B549DLL;
  v733 = __ROR8__(v732, 8);
  v734 = v732 ^ __ROR8__(v731, 61);
  v735 = (v733 + v734 - ((2 * (v733 + v734)) & 0x9DB34C4371307292) - 0x312659DE4767C6B7) ^ 0x365EE37F3088B345;
  v736 = v735 ^ __ROR8__(v734, 61);
  v737 = (__ROR8__(v735, 8) + v736) ^ 0x24734B65A1E08459;
  v738 = v737 ^ __ROR8__(v736, 61);
  v739 = (__ROR8__(v737, 8) + v738) ^ 0x40C9CFEA3CC5CBE1;
  LODWORD(v713) = *v721;
  LODWORD(STACK[0x51D0]) = v713;
  v740 = 8 * (v721 & 7);
  STACK[0x51D8] = v740;
  *(STACK[0x8070] + 7362) ^= v713 ^ (((__ROR8__(v739, 8) + (v739 ^ __ROR8__(v738, 61))) ^ 0x6F635C2EE5D7D2C6uLL) >> v740);
  v741 = STACK[0xFD78] - 0x30BDFED8F32E671BLL;
  v742 = *(*v3 + ((*v2 & (((LODWORD(STACK[0xFD78]) + 215062757) & 0xFFFFFFF8) - 555828759)) & 0xFFFFFFFFFFFFFFF8)) + __ROR8__(v741 & 0xFFFFFFFFFFFFFFF8, 8);
  v743 = (0x2D563BD56904BE63 - (v742 | 0x2D563BD56904BE63) + (v742 | 0xD2A9C42A96FB419CLL)) ^ 0xDBBAA0F620787547;
  v744 = __ROR8__(*(*v3 + ((*v2 & (((LODWORD(STACK[0xFD78]) + 215062757) & 0xFFFFFFF8) - 555828759)) & 0xFFFFFFFFFFFFFFF8)), 61);
  STACK[0x51A0] = v744;
  v745 = v743 ^ v744;
  v746 = __ROR8__(v743, 8);
  v747 = __ROR8__((v746 + v745 - ((2 * (v746 + v745)) & 0x584399B3F91BB3FCLL) + 0x2C21CCD9FC8DD9FELL) ^ 0x68ACA3B55B9C01ABLL, 8);
  v748 = (v746 + v745 - ((2 * (v746 + v745)) & 0x584399B3F91BB3FCLL) + 0x2C21CCD9FC8DD9FELL) ^ 0x68ACA3B55B9C01ABLL ^ __ROR8__(v745, 61);
  v749 = (((2 * (v747 + v748)) & 0xAA4F92799D5B52E6) - (v747 + v748) + 0x2AD836C33152568CLL) ^ 0xDF2AC81039F874F4;
  v750 = v749 ^ __ROR8__(v748, 61);
  v751 = (__ROR8__(v749, 8) + v750) ^ 0x67536EC0FB8B549DLL;
  v752 = v751 ^ __ROR8__(v750, 61);
  v753 = __ROR8__(v751, 8);
  v754 = (0x1FA6B4FF4E330336 - ((v753 + v752) | 0x1FA6B4FF4E330336) + ((v753 + v752) | 0xE0594B00B1CCFCC9)) ^ 0x18DE0E5E39DC76C5;
  v755 = v754 ^ __ROR8__(v752, 61);
  v756 = __ROR8__(v754, 8);
  v757 = (((2 * (v756 + v755)) & 0x66170CF3132F2686) - (v756 + v755) - 0x330B867989979344) ^ 0xE88732E3D788E8E5;
  v758 = v757 ^ __ROR8__(v755, 61);
  v759 = (__ROR8__(v757, 8) + v758) ^ 0x40C9CFEA3CC5CBE1;
  v760 = v759 ^ __ROR8__(v758, 61);
  v761 = __ROR8__(v759, 8);
  LODWORD(v713) = *v741;
  LODWORD(STACK[0x51A8]) = v713;
  v762 = 8 * (v741 & 7);
  STACK[0x51B0] = v762;
  *(STACK[0x8070] + 6769) ^= v713 ^ (((v761 + v760) ^ 0x6F635C2EE5D7D2C6uLL) >> v762);
  v763 = STACK[0xFD78] - 0x30BDFED8F32E671ALL;
  LODWORD(v762) = *v2;
  v764 = *v3;
  STACK[0x5198] = *(*v3 + ((((LODWORD(STACK[0xFD78]) + 215062758) & 0x9DAE6838) + ((LODWORD(STACK[0xFD78]) + 215062758) & 0x625197C0 | 0x9DAE683E) + 1093685674) & *v2));
  v765 = *(v764 + (v762 & ((v763 & 0xFFFFFFF8) - 555828759) & 0xFFFFFFF8));
  v766 = __ROR8__(v763 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x5188] = v766;
  v767 = (v765 + v766) ^ 0x91364DCB68334DBLL;
  v768 = v767 ^ __ROR8__(v765, 61);
  v769 = (__ROR8__(v767, 8) + v768) ^ 0x448D6F6CA711D855;
  v770 = v769 ^ __ROR8__(v768, 61);
  v771 = __ROR8__(v769, 8);
  v772 = (0xB6C48E6CFCBD5D5CLL - ((v771 + v770) | 0xB6C48E6CFCBD5D5CLL) + ((v771 + v770) | 0x493B71930342A2A3)) ^ 0xBCC98F400BE880DBLL;
  v773 = v772 ^ __ROR8__(v770, 61);
  v774 = __ROR8__(v772, 8);
  v775 = (((2 * (v774 + v773)) | 0xEB4BB52F470F70B4) - (v774 + v773) - 0x75A5DA97A387B85ALL) ^ 0x12F6B457580CECC7;
  v776 = v775 ^ __ROR8__(v773, 61);
  v777 = (__ROR8__(v775, 8) + v776) ^ 0xF887455E88108A0CLL;
  v778 = v777 ^ __ROR8__(v776, 61);
  v779 = (__ROR8__(v777, 8) + v778) ^ 0x24734B65A1E08459;
  v780 = __ROR8__(v779, 8);
  v781 = v779 ^ __ROR8__(v778, 61);
  v782 = (v780 + v781) ^ 0x40C9CFEA3CC5CBE1;
  v783 = v782 ^ __ROR8__(v781, 61);
  v784 = __ROR8__(v782, 8);
  LOBYTE(v417) = *v763;
  v785 = 8 * (v763 & 7);
  STACK[0x5190] = v785;
  *(STACK[0x8070] + 6176) ^= v417 ^ (((v784 + v783) ^ 0x6F635C2EE5D7D2C6uLL) >> v785);
  v786 = STACK[0x8070];
  v787 = (*(STACK[0x8070] + 1548) ^ 0xB7) << 8;
  v788 = (((v786[2141] ^ 0xCC1FB10AD1C8D6A3) & ~v787 | v787 & 0x2900) ^ 0xCC1FB10AD1C8D614) + ((v786[12699] ^ 0xB7u) << 32) + ((v786[955] ^ 0xB7) << 16) + ((v786[362] << 24) ^ 0xB7000000) + ((v786[12106] ^ 0xB7u) << 40);
  v789 = (*(STACK[0x8070] + 9734) ^ 0xB7) << 8;
  v790 = *(STACK[0x8070] + 10327);
  v791 = (((((v790 ^ 0x8669132BAC0AAE52) & ~v789 | v789 & 0x5100) ^ 0x8669132BAC0AAEE5) + (((v786[9141] ^ 0xB7) << 16) | (v786[8548] << 24))) | ((v786[7362] << 40) | ((v786[7955] ^ 0xB7u) << 32)) ^ 0xB70000000000) ^ 0xB7000000;
  v792 = (v791 | (v786[6769] << 48) ^ 0xB7000000000000) + ((v786[6176] ^ 0xB7u) << 56);
  v793 = (v788 + ((v786[11513] ^ 0xB7u) << 48) + ((v786[10920] ^ 0xB7u) << 56)) ^ (v788 << 23);
  v794 = v793 ^ (v793 >> 17) ^ v792 ^ (v792 >> 26);
  LOBYTE(v2) = (v794 ^ 0x45) - ((2 * (v794 ^ 0x45)) & 0xB4) - 38;
  LOBYTE(v790) = (((v790 ^ 0x87) + 121) ^ ((v790 ^ 0x25) - 37) ^ ((v790 ^ 0x15) - 21)) + (((v2 ^ 0xC5) + 59) ^ ((v2 ^ 0x33) - 51) ^ ((v2 ^ 0x2C) - 44)) - 47;
  LOBYTE(v3) = v790 & 0xB6 ^ 0x7B;
  v795 = v790 ^ 0x40;
  v786[2141] = v790 ^ (2 * (v795 & (2 * (v795 & (2 * (v795 & (2 * (v795 & (2 * (v795 & (2 * (v3 ^ v790 & 0x36)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ 1;
  v796 = v792 ^ (v791 << 23) ^ ((v792 ^ (v791 << 23)) >> 17) ^ ((v794 ^ 0xF4C29045) >> 26);
  *(STACK[0x8070] + 1548) = ((v796 ^ v794) + (v794 ^ 0x45) - ((2 * ((v796 ^ v794) + (v794 ^ 0x45))) & 0x38) + 28) ^ 0xAB;
  v797 = ((v794 ^ 0xF4C29045) << 23) ^ ((((v794 ^ 0xF4C29045) << 23) ^ v794 ^ 0xF4C29045) >> 17) ^ v796 ^ ((v796 ^ v794) >> 26);
  *(STACK[0x8070] + 955) = (v797 + (v796 ^ v794) - ((2 * (v797 + (v796 ^ v794))) & 0x48) + 36) ^ 0x93;
  v798 = v796 ^ v794 ^ ((v796 ^ v794) << 23) ^ ((v796 ^ v794 ^ ((v796 ^ v794) << 23)) >> 17) ^ v797 ^ (v797 >> 26);
  v799 = v798 ^ 0xF4C29045;
  v800 = STACK[0x4C28];
  *(STACK[0x8070] + 362) = ((v798 ^ 0x45) + v797 - ((2 * ((v798 ^ 0x45) + v797)) & 0x24) - 110) ^ 0x25;
  v801 = v797 ^ (v797 << 23) ^ ((v797 ^ (v797 << 23)) >> 17) ^ ((v798 ^ 0xF4C29045) >> 26);
  v802 = v801 ^ v798;
  *(STACK[0x8070] + 12699) = (v802 + v799 - ((2 * (v802 + v799)) & 0x42) + 33) ^ 0x96;
  v803 = (v799 << 23) ^ (((v799 << 23) ^ v799) >> 17) ^ v801 ^ (v802 >> 26);
  *(STACK[0x8070] + 12106) = (v803 + v802 - 2 * ((v803 + v802) & 7) - 121) ^ 0x30;
  v804 = v802 ^ (v802 << 23) ^ ((v802 ^ (v802 << 23)) >> 17) ^ v803 ^ (v803 >> 26);
  *(STACK[0x8070] + 11513) = ((v804 ^ 0x45) + v803 - ((2 * ((v804 ^ 0x45) + v803)) & 0xC7) - 29) ^ 0x54;
  v805 = v803 ^ (v803 << 23) ^ ((v803 ^ (v803 << 23)) >> 17) ^ v804 ^ ((v804 ^ 0xF4C29045) >> 26);
  *(STACK[0x8070] + 10920) = (v805 + (v804 ^ 0x45) - ((2 * (v805 + (v804 ^ 0x45))) & 0xB0) + 88) ^ 0xEF;
  v806 = ((v804 ^ 0xF4C29045) << 23) ^ v804 ^ ((((v804 ^ 0xF4C29045) << 23) ^ v804 ^ 0xF4C29045) >> 17) ^ v805 ^ (v805 >> 26);
  v807 = v805 ^ (v805 << 23) ^ ((v805 ^ (v805 << 23)) >> 17) ^ v806 ^ (v806 >> 26);
  LOBYTE(v803) = v807 ^ 0x45;
  *(STACK[0x8070] + 9734) = ((v807 ^ 0x45) + v806 - ((2 * ((v807 ^ 0x45) + v806)) & 0xE8) - 12) ^ 0x43;
  *(STACK[0x8070] + 10327) = (v806 + v805 - ((2 * (v806 + v805)) & 0x6C) - 74) ^ 1;
  v808 = v806 ^ (v806 << 23) ^ ((v806 ^ (v806 << 23)) >> 17) ^ v807 ^ ((v807 ^ 0xF4C29045) >> 26);
  v809 = ((v807 ^ 0xF4C29045) << 23) ^ v807 ^ ((((v807 ^ 0xF4C29045) << 23) ^ v807 ^ 0xF4C29045) >> 17) ^ v808 ^ (v808 >> 26);
  v810 = v808 ^ (v808 << 23) ^ ((v808 ^ (v808 << 23)) >> 17) ^ v809 ^ (v809 >> 26);
  *(STACK[0x8070] + 7955) = ((v810 ^ 0x45) + v809 - ((2 * ((v810 ^ 0x45) + v809)) & 0x40) + 32) ^ 0x97;
  *(STACK[0x8070] + 9141) = (v808 + v803 - ((2 * (v808 + v803)) & 0x33) - 103) ^ 0x2E;
  *(STACK[0x8070] + 8548) = (v809 + v808 - ((2 * (v809 + v808)) & 0xF7) - 5) ^ 0x4C;
  v811 = v809 ^ (v809 << 23) ^ ((v809 ^ (v809 << 23)) >> 17) ^ v810 ^ ((v810 ^ 0xF4C29045) >> 26);
  *(STACK[0x8070] + 7362) = (v811 + (v810 ^ 0x45) - ((2 * (v811 + (v810 ^ 0x45))) & 0xF4) - 6) ^ 0x4D;
  v812 = ((v810 ^ 0xF4C29045) << 23) ^ v810 ^ ((((v810 ^ 0xF4C29045) << 23) ^ v810 ^ 0xF4C29045) >> 17) ^ (v811 >> 26);
  *(STACK[0x8070] + 6769) = ((v812 ^ v811) + v811 - ((2 * ((v812 ^ v811) + v811)) & 0xF8) + 124) ^ 0xCB;
  LODWORD(v811) = (v812 ^ ((v811 ^ (v811 << 23)) >> 17) ^ 0x45 ^ ((v812 ^ v811) >> 26)) + (v812 ^ v811);
  *(STACK[0x8070] + 6176) = (v811 - ((2 * v811) & 0x3C) + 30) ^ 0xA9;
  LOBYTE(STACK[0xF5D1]) = STACK[0x5790];
  v813 = (STACK[0x57C0] + STACK[0x57B0]) ^ 0xC2AF3EAA3FF1B8E4;
  v814 = v813 ^ __ROR8__(STACK[0x57C0], 61);
  v815 = (__ROR8__(v813, 8) + v814) ^ 0x65F254DD188DB4FCLL;
  v816 = v815 ^ __ROR8__(v814, 61);
  v817 = (__ROR8__(v815, 8) + v816) ^ 0x6FF046966119128DLL;
  v818 = v817 ^ __ROR8__(v816, 61);
  v819 = (__ROR8__(v817, 8) + v818) ^ 0xA1B29DC5D776132BLL;
  v820 = v819 ^ __ROR8__(v818, 61);
  v821 = __ROR8__(v819, 8);
  v822 = (0xC49151E3A5A240D7 - ((v821 + v820) | 0xC49151E3A5A240D7) + ((v821 + v820) | 0x3B6EAE1C5A5DBF28)) ^ 0xD46A8E5DAFB8F7C4;
  v823 = v822 ^ __ROR8__(v820, 61);
  v824 = (__ROR8__(v822, 8) + v823) ^ 0xD8C7B31FCA19D9DELL;
  v825 = __ROR8__(v824, 8);
  v826 = v824 ^ __ROR8__(v823, 61);
  LOBYTE(STACK[0xF5D2]) = ((__ROR8__((v825 + v826) ^ 0x5455012E8AB1C38FLL, 8) + ((v825 + v826) ^ 0x5455012E8AB1C38FLL ^ __ROR8__(v826, 61))) ^ 0x6F4F60BC0E025EE0) >> STACK[0x57A0];
  LOBYTE(STACK[0xF5D3]) = LODWORD(STACK[0x5780]) + (~(2 * LODWORD(STACK[0x5780])) | 0x91) - 72;
  LOBYTE(STACK[0xF5D4]) = LODWORD(STACK[0x5770]) + (~(2 * LODWORD(STACK[0x5770])) | 0x91) - 72;
  LOBYTE(STACK[0xF5D5]) = LODWORD(STACK[0x5760]) - ((2 * LODWORD(STACK[0x5760])) & 0x6E) - 73;
  LOBYTE(STACK[0xF5D6]) = LODWORD(STACK[0x5750]) - ((2 * LODWORD(STACK[0x5750])) & 0x6E) - 73;
  LOBYTE(STACK[0xF5D7]) = LODWORD(STACK[0x5740]) - ((2 * LODWORD(STACK[0x5740])) & 0x6E) - 73;
  LOBYTE(STACK[0xF5D8]) = LODWORD(STACK[0x5730]) - ((2 * LODWORD(STACK[0x5730])) & 0x6E) - 73;
  LOBYTE(STACK[0xF5D9]) = LODWORD(STACK[0x5720]) - ((2 * LODWORD(STACK[0x5720])) & 0x6E) - 73;
  LOBYTE(STACK[0xF5DA]) = LODWORD(STACK[0x5710]) - ((2 * LODWORD(STACK[0x5710])) & 0x6E) - 73;
  LOBYTE(STACK[0xF5DB]) = LODWORD(STACK[0x5700]) + (~(2 * LODWORD(STACK[0x5700])) | 0x91) - 72;
  LOBYTE(STACK[0xF5DC]) = LODWORD(STACK[0x56F0]) - ((2 * LODWORD(STACK[0x56F0])) & 0x6E) - 73;
  LOBYTE(STACK[0xF5DD]) = LODWORD(STACK[0x56E0]) - ((2 * LODWORD(STACK[0x56E0])) & 0x6E) - 73;
  LOBYTE(STACK[0xF5DE]) = LODWORD(STACK[0x56D0]) - ((2 * LODWORD(STACK[0x56D0])) & 0x6E) - 73;
  LOBYTE(STACK[0xF5DF]) = LODWORD(STACK[0x56C0]) - ((2 * LODWORD(STACK[0x56C0])) & 0x6E) - 73;
  LOBYTE(STACK[0xF5E0]) = LODWORD(STACK[0x5680]) - ((2 * LODWORD(STACK[0x5680])) & 0x6E) - 73;
  LOBYTE(STACK[0xF5E1]) = LODWORD(STACK[0x5670]) - ((2 * LODWORD(STACK[0x5670])) & 0x6E) - 73;
  LOBYTE(STACK[0xF5E2]) = LODWORD(STACK[0x5660]) - ((2 * LODWORD(STACK[0x5660])) & 0x6E) - 73;
  v827 = STACK[0x5630] ^ 0xA86A78D9F67FFA9ALL;
  v828 = __ROR8__(STACK[0x5630] ^ 0xD387EB17F911FF76, 8);
  v829 = __ROR8__((((2 * (v828 + v827)) & 0xA91DB7D8F196FD5ELL) - (v828 + v827) - 0x548EDBEC78CB7EB0) ^ 0x910D40E4988B470BLL, 8);
  v830 = (((2 * (v828 + v827)) & 0xA91DB7D8F196FD5ELL) - (v828 + v827) - 0x548EDBEC78CB7EB0) ^ 0x910D40E4988B470BLL ^ __ROR8__(v827, 61);
  v831 = (((2 * (v829 + v830)) & 0x430BC9EF27DC3FDELL) - (v829 + v830) + 0x5E7A1B086C11E010) ^ 0xA5BB9483F9792450;
  v832 = v831 ^ __ROR8__(v830, 61);
  v833 = __ROR8__(v831, 8);
  v834 = (v833 + v832 - ((2 * (v833 + v832)) & 0x1EB1B00E0D2D2D90) + 0xF58D807069696C8) ^ 0x45BD16686501EFFBLL;
  v835 = v834 ^ __ROR8__(v832, 61);
  v836 = (__ROR8__(v834, 8) + v835) ^ 0x2854CB5A8BDB8317;
  v837 = v836 ^ __ROR8__(v835, 61);
  v838 = (__ROR8__(v836, 8) + v837) ^ 0xF7721CC6F3AEFBDCLL;
  v839 = v838 ^ __ROR8__(v837, 61);
  v840 = __ROR8__(v838, 8);
  v841 = (v840 + v839 - ((2 * (v840 + v839)) & 0x637BCBDD37FA9B7ELL) - 0x4E421A116402B241) ^ 0x570AF2D400D6FDE2;
  LOBYTE(STACK[0xF5E3]) = (((__ROR8__(v841, 8) + (v841 ^ __ROR8__(v839, 61))) ^ 0x94AC86FF716F8E22) >> STACK[0x5650]) ^ LODWORD(STACK[0x5640]);
  LOBYTE(STACK[0xF5E4]) = STACK[0x5600];
  v842 = STACK[0x5610] ^ 0xA86A78D9F67FFA9ALL;
  v843 = __ROR8__(STACK[0x5610] ^ 0xD387EB17F911FF76, 8);
  v844 = (v843 + v842 - ((2 * (v843 + v842)) & 0xDD8EF7A6D0BE0790) - 0x1138842C97A0FC38) ^ 0xD4BB1F2477E0C593;
  v845 = v844 ^ __ROR8__(v842, 61);
  v846 = (__ROR8__(v844, 8) + v845) ^ 0xFBC18F8B9568C440;
  v847 = v846 ^ __ROR8__(v845, 61);
  v848 = (__ROR8__(v846, 8) + v847) ^ 0x4AE5CE6F63977933;
  v849 = v848 ^ __ROR8__(v847, 61);
  v850 = __ROR8__(v848, 8);
  v851 = (v850 + v849 - ((2 * (v850 + v849)) & 0xD4F5D85BF3CBD616) + 0x6A7AEC2DF9E5EB0BLL) ^ 0x422E2777723E681CLL;
  v852 = v851 ^ __ROR8__(v849, 61);
  v853 = (__ROR8__(v851, 8) + v852) ^ 0xF7721CC6F3AEFBDCLL;
  v854 = __ROR8__(v853, 8);
  v855 = v853 ^ __ROR8__(v852, 61);
  v856 = (((2 * (v854 + v855)) | 0x6B37D032848EDD18) - (v854 + v855) - 0x359BE81942476E8CLL) ^ 0xD32CFF23D96CDED1;
  v857 = v856 ^ __ROR8__(v855, 61);
  v858 = __ROR8__(v856, 8);
  LOBYTE(STACK[0xF5E5]) = ((((2 * (v858 + v857)) & 0xA96B8651DBC9A8F0) - (v858 + v857) + 0x2B4A3CD7121B2B87) ^ 0xBFE6BA286374A5A5) >> STACK[0x5620];
  v859 = ((STACK[0x55D0] - 0x70824D863E123F43) ^ 0xA0E2C8E815EB3F69 | 0xC1A5E1B3F47F3917) - ((STACK[0x55D0] - 0x70824D863E123F43) ^ 0xA0E2C8E815EB3F69 | 0x3E5A1E4C0B80C6E8) + 0x3E5A1E4C0B80C6E8;
  v860 = v859 ^ 0xB2C0C24C1885F908;
  v859 ^= 0xC92D518217EBFCE4;
  v861 = __ROR8__(v860, 8);
  v862 = (v861 + v859 - ((2 * (v861 + v859)) & 0xDEAC961D572E2756) + 0x6F564B0EAB9713ABLL) ^ 0x552A2FF9B428D5F0;
  v863 = v862 ^ __ROR8__(v859, 61);
  v864 = (__ROR8__(v862, 8) + v863) ^ 0xFBC18F8B9568C440;
  v865 = v864 ^ __ROR8__(v863, 61);
  v866 = __ROR8__(v864, 8);
  v867 = (v866 + v865 - ((2 * (v866 + v865)) & 0xEE986274523F01AELL) + 0x774C313A291F80D7) ^ 0x3DA9FF554A88F9E4;
  v868 = v867 ^ __ROR8__(v865, 61);
  v869 = __ROR8__(v867, 8);
  v870 = (((2 * (v869 + v868)) | 0x93D39C721830F05ELL) - (v869 + v868) - 0x49E9CE390C18782FLL) ^ 0x61BD056387C3FB38;
  v871 = v870 ^ __ROR8__(v868, 61);
  v872 = __ROR8__(v870, 8);
  v873 = __ROR8__((((2 * (v872 + v871)) & 0x7FD68951DFDF132ALL) - (v872 + v871) - 0x3FEB44A8EFEF8996) ^ 0x3766A791E3BE8DB6, 8);
  v874 = (((2 * (v872 + v871)) & 0x7FD68951DFDF132ALL) - (v872 + v871) - 0x3FEB44A8EFEF8996) ^ 0x3766A791E3BE8DB6 ^ __ROR8__(v871, 61);
  v875 = (((2 * (v873 + v874)) | 0x8249138CB022558ALL) - (v873 + v874) - 0x412489C658112AC5) ^ 0xA7939EFCC33A9A98;
  v876 = v875 ^ __ROR8__(v874, 61);
  v877 = __ROR8__(v875, 8);
  LOBYTE(STACK[0xF5E6]) = (((((2 * (v877 + v876)) | 0xFC03A32278E2BAA0) - (v877 + v876) - 0x7E01D1913C715D50) ^ 0xEAAD576E4D1ED372) >> STACK[0x55F0]) ^ LODWORD(STACK[0x55E0]);
  v878 = (STACK[0x55C0] | 0xBCA1FD318003815ELL) - (STACK[0x55C0] | 0x435E02CE7FFC7EA1) + 0x435E02CE7FFC7EA1;
  v879 = v878 ^ 0x6F26162679127E28;
  v878 ^= 0x14CB85E8767C7BC4uLL;
  v880 = (__ROR8__(v879, 8) + v878) ^ 0x3A7C64F71FBFC65BLL;
  v881 = v880 ^ __ROR8__(v878, 61);
  v882 = (__ROR8__(v880, 8) + v881) ^ 0xFBC18F8B9568C440;
  v883 = v882 ^ __ROR8__(v881, 61);
  v884 = (__ROR8__(v882, 8) + v883) ^ 0x4AE5CE6F63977933;
  v885 = __ROR8__(v884, 8);
  v886 = v884 ^ __ROR8__(v883, 61);
  v887 = (v885 + v886 - ((2 * (v885 + v886)) & 0xF07D022503F8E04ELL) - 0x7C17EED7E038FD9) ^ 0xD06A4A480A27F330;
  v888 = v887 ^ __ROR8__(v886, 61);
  v889 = __ROR8__(v887, 8);
  v890 = (v889 + v888 - ((2 * (v889 + v888)) & 0xD64677C6D2D0D7DALL) - 0x14DCC41C96979413) ^ 0x1C5127259AC69031;
  v891 = v890 ^ __ROR8__(v888, 61);
  v892 = __ROR8__(v890, 8);
  v893 = (((2 * (v892 + v891)) & 0x3F3608770F68CEELL) - (v892 + v891) - 0x1F9B043B87B4678) ^ 0x18B15886DCAF09D5;
  v894 = v893 ^ __ROR8__(v891, 61);
  v895 = __ROR8__(v893, 8);
  LOBYTE(STACK[0xF5E7]) = (((0x1DE5688FA561696ALL - ((v895 + v894) | 0x1DE5688FA561696ALL) + ((v895 + v894) | 0xE21A97705A9E9695)) ^ 0x76B6118F2BF118B7) >> STACK[0x55B0]) ^ LODWORD(STACK[0x55A0]);
  v896 = (STACK[0x5560] & 0xC0F25551EE9A736BLL) + STACK[0x5580] - (STACK[0x5580] & 0xC0F25551EE9A736BLL);
  v897 = __ROR8__(v896 ^ 0x1375BE46178B8C1DLL, 8);
  v896 ^= 0x68982D8818E589F1uLL;
  v898 = (v897 + v896) ^ 0x3A7C64F71FBFC65BLL;
  v899 = v898 ^ __ROR8__(v896, 61);
  v900 = __ROR8__(v898, 8);
  v901 = (((2 * (v900 + v899)) | 0x75EEC8F1F97AD850) - (v900 + v899) - 0x3AF76478FCBD6C28) ^ 0xC136EBF369D5A868;
  v902 = v901 ^ __ROR8__(v899, 61);
  v903 = __ROR8__(v901, 8);
  v904 = (((2 * (v903 + v902)) | 0xC579298F5E7420C0) - (v903 + v902) - 0x62BC94C7AF3A1060) ^ 0x28595AA8CCAD6953;
  v905 = v904 ^ __ROR8__(v902, 61);
  v906 = (__ROR8__(v904, 8) + v905) ^ 0x2854CB5A8BDB8317;
  v907 = v906 ^ __ROR8__(v905, 61);
  v908 = __ROR8__(v906, 8);
  v909 = (((2 * (v908 + v907)) & 0xF1282BC57F0D87EELL) - (v908 + v907) - 0x789415E2BF86C3F8) ^ 0x7019F6DBB3D7C7D4;
  v910 = v909 ^ __ROR8__(v907, 61);
  v911 = (__ROR8__(v909, 8) + v910) ^ 0xE6B7173A9B2BB05DLL;
  v912 = __ROR8__(v911, 8);
  v913 = __ROR8__(v910, 61);
  LOBYTE(STACK[0xF5E8]) = (((v912 + (v911 ^ v913) - ((2 * (v912 + (v911 ^ v913))) & 0x4978DD0FAD1190F2) - 0x5B43917829773787) ^ 0x3010E878A7E7465BLL) >> STACK[0x5590]) ^ LODWORD(STACK[0x5570]);
  LOBYTE(STACK[0xF5E9]) = STACK[0x5500];
  v914 = -2 - (((0x70824D863E123F42 - STACK[0x5550]) | 0xAD24D5406E0A8196) + (STACK[0x5530] | 0x52DB2ABF91F57E69));
  v915 = v914 ^ 0x7EA33E57971B7EE0;
  v914 ^= 0x54EAD9998757B0CuLL;
  v916 = __ROR8__(v915, 8);
  v917 = __ROR8__((v916 + v914 - ((2 * (v916 + v914)) & 0x8741C771A686EF5ELL) - 0x3C5F1C472CBC8851) ^ 0xF9DC874FCCFCB1F4, 8);
  v918 = (v916 + v914 - ((2 * (v916 + v914)) & 0x8741C771A686EF5ELL) - 0x3C5F1C472CBC8851) ^ 0xF9DC874FCCFCB1F4 ^ __ROR8__(v914, 61);
  v919 = (v917 + v918) ^ 0xFBC18F8B9568C440;
  v920 = v919 ^ __ROR8__(v918, 61);
  v921 = __ROR8__(v919, 8);
  v922 = (0x2890A1AFA42EBC33 - ((v921 + v920) | 0x2890A1AFA42EBC33) + ((v921 + v920) | 0xD76F5E505BD143CCLL)) ^ 0x9D8A903F38463AFFLL;
  v923 = v922 ^ __ROR8__(v920, 61);
  v924 = (__ROR8__(v922, 8) + v923) ^ 0x2854CB5A8BDB8317;
  v925 = v924 ^ __ROR8__(v923, 61);
  v926 = (__ROR8__(v924, 8) + v925) ^ 0xF7721CC6F3AEFBDCLL;
  v927 = v926 ^ __ROR8__(v925, 61);
  v928 = (__ROR8__(v926, 8) + v927) ^ 0xE6B7173A9B2BB05DLL;
  v929 = v928 ^ __ROR8__(v927, 61);
  v930 = __ROR8__(v928, 8);
  LOBYTE(STACK[0xF5EA]) = ((0x620C29D5CF58F66ELL - ((v930 + v929) | 0x620C29D5CF58F66ELL) + ((v930 + v929) | 0x9DF3D62A30A70991)) ^ 0x95F50D541C887B3) >> STACK[0x5540];
  LOBYTE(STACK[0xF5EB]) = STACK[0x54E0];
  v931 = ((0x70824D863E123F42 - STACK[0x5520]) & 0xB24434361A5190C3) + STACK[0x54F0] - (STACK[0x54F0] & 0xB24434361A5190C3);
  v932 = v931 ^ 0x61C3DF21E3406FB5;
  v931 ^= 0x1A2E4CEFEC2E6A59uLL;
  v933 = (__ROR8__(v932, 8) + v931) ^ 0x3A7C64F71FBFC65BLL;
  v934 = v933 ^ __ROR8__(v931, 61);
  v935 = (__ROR8__(v933, 8) + v934) ^ 0xFBC18F8B9568C440;
  v936 = v935 ^ __ROR8__(v934, 61);
  v937 = __ROR8__(v935, 8);
  v938 = (((2 * ((v937 + v936) ^ 0x39D8C60A8DA6FA9CLL)) | 0xB92F1DA0E429DB78) - ((v937 + v936) ^ 0x39D8C60A8DA6FA9CLL) - 0x5C978ED07214EDBCLL) ^ 0x2FAA86B59C256E13;
  v939 = v938 ^ __ROR8__(v936, 61);
  v940 = __ROR8__(v938, 8);
  v941 = (((2 * (v940 + v939)) | 0xDD7D56248A120BECLL) - (v940 + v939) + 0x114154EDBAF6FA0ALL) ^ 0xC6EA6048CED286E1;
  v942 = v941 ^ __ROR8__(v939, 61);
  v943 = (__ROR8__(v941, 8) + v942) ^ 0xF7721CC6F3AEFBDCLL;
  v944 = v943 ^ __ROR8__(v942, 61);
  v945 = (__ROR8__(v943, 8) + v944) ^ 0xE6B7173A9B2BB05DLL;
  v946 = v945 ^ __ROR8__(v944, 61);
  v947 = __ROR8__(v945, 8);
  LOBYTE(STACK[0xF5EC]) = ((((2 * (v947 + v946)) | 0xCC6CE3686750D1D2) - (v947 + v946) + 0x19C98E4BCC579717) ^ 0x729AF74B42C7E6CBLL) >> STACK[0x5510];
  LOBYTE(STACK[0xF5ED]) = STACK[0x54B0];
  v948 = (STACK[0x54D0] | 0x498866617665C228) - (STACK[0x54D0] | 0xB677999E899A3DD7) - 0x498866617665C229;
  v949 = v948 ^ 0x9A0F8D768F743D5ELL;
  v948 ^= 0xE1E21EB8801A38B2;
  v950 = (__ROR8__(v949, 8) + v948) ^ 0x3A7C64F71FBFC65BLL;
  v951 = v950 ^ __ROR8__(v948, 61);
  v952 = (__ROR8__(v950, 8) + v951) ^ 0xFBC18F8B9568C440;
  v953 = v952 ^ __ROR8__(v951, 61);
  v954 = (__ROR8__(v952, 8) + v953) ^ 0x4AE5CE6F63977933;
  v955 = v954 ^ __ROR8__(v953, 61);
  v956 = (__ROR8__(v954, 8) + v955) ^ 0x2854CB5A8BDB8317;
  v957 = v956 ^ __ROR8__(v955, 61);
  v958 = __ROR8__(v956, 8);
  v959 = __ROR8__((v958 + v957 - ((2 * (v958 + v957)) & 0xC32A13FBAC3AB52) + 0x619509FDD61D5A9) ^ 0xF16B4C592ECF2E75, 8);
  v960 = (v958 + v957 - ((2 * (v958 + v957)) & 0xC32A13FBAC3AB52) + 0x619509FDD61D5A9) ^ 0xF16B4C592ECF2E75 ^ __ROR8__(v957, 61);
  v961 = (v959 + v960) ^ 0xE6B7173A9B2BB05DLL;
  v962 = v961 ^ __ROR8__(v960, 61);
  v963 = __ROR8__(v961, 8);
  LOBYTE(STACK[0xF5EE]) = ((v963 + v962 - ((2 * (v963 + v962)) & 0x1ECD2626DE7391A4) + 0xF6693136F39C8D2) ^ 0x9BCA15EC1E5646F0) >> STACK[0x54C0];
  LOBYTE(STACK[0xF5EF]) = STACK[0x5480];
  v964 = ((2 * STACK[0x5490]) | 0x52AE4F5B771CFDF8) - STACK[0x5490] - 0x295727ADBB8E7EFCLL;
  v965 = v964 ^ 0xFAD0CCBA429F818ALL;
  v964 ^= 0x813D5F744DF18466;
  v966 = __ROR8__(v965, 8);
  v967 = (((2 * (v966 + v964)) | 0x518BC8A9224046B2) - (v966 + v964) - 0x28C5E45491202359) ^ 0x12B980A38E9FE502;
  v968 = v967 ^ __ROR8__(v964, 61);
  v969 = (__ROR8__(v967, 8) + v968) ^ 0xFBC18F8B9568C440;
  v970 = v969 ^ __ROR8__(v968, 61);
  v971 = (__ROR8__(v969, 8) + v970) ^ 0x4AE5CE6F63977933;
  v972 = __ROR8__(v971, 8);
  v973 = v971 ^ __ROR8__(v970, 61);
  v974 = (((2 * (v972 + v973)) | 0x1E4C02E93509A612) - (v972 + v973) - 0xF2601749A84D309) ^ 0x2772CA2E115F501ELL;
  v975 = v974 ^ __ROR8__(v973, 61);
  v976 = __ROR8__(v974, 8);
  v977 = (0xC9ACA5C50F7340D2 - ((v976 + v975) | 0xC9ACA5C50F7340D2) + ((v976 + v975) | 0x36535A3AF08CBF2DLL)) ^ 0xC12146FC032244F1;
  v978 = v977 ^ __ROR8__(v975, 61);
  v979 = __ROR8__(v977, 8);
  v980 = (((2 * (v979 + v978)) & 0xFC33ECBFE954DDDCLL) - (v979 + v978) - 0x7E19F65FF4AA6EEFLL) ^ 0x67511E9A907E214CLL;
  LOBYTE(STACK[0xF5F0]) = ((__ROR8__(v980, 8) + (v980 ^ __ROR8__(v978, 61))) ^ 0x94AC86FF716F8E22) >> STACK[0x54A0];
  v981 = ((0x10824D863E123F42 - STACK[0x5450]) & 0x120CC25AF841C89FLL) + STACK[0x5450] - 0x70824D863E123F43 - ((STACK[0x5450] - 0x70824D863E123F43) & 0x120CC25AF841C89FLL);
  v982 = v981 ^ 0xC18B294D015037E9;
  v981 ^= 0xBA66BA830E3E3205;
  v983 = __ROR8__(v982, 8);
  v984 = __ROR8__((0xB2957D121677896 - ((v983 + v981) | 0xB2957D121677896) + ((v983 + v981) | 0xF4D6A82EDE988769)) ^ 0xCEAACCD9C1274132, 8);
  v985 = (0xB2957D121677896 - ((v983 + v981) | 0xB2957D121677896) + ((v983 + v981) | 0xF4D6A82EDE988769)) ^ 0xCEAACCD9C1274132 ^ __ROR8__(v981, 61);
  v986 = (v984 + v985 - ((2 * (v984 + v985)) & 0x37C6366350F068D2) + 0x1BE31B31A8783469) ^ 0xE02294BA3D10F029;
  v987 = v986 ^ __ROR8__(v985, 61);
  v988 = (__ROR8__(v986, 8) + v987) ^ 0x4AE5CE6F63977933;
  v989 = v988 ^ __ROR8__(v987, 61);
  v990 = __ROR8__(v988, 8);
  v991 = (((2 * (v990 + v989)) & 0xF6FFC42AFAAECE4CLL) - (v990 + v989) + 0x4801DEA82A898D9) ^ 0x2CD4D6B009731BCELL;
  v992 = v991 ^ __ROR8__(v989, 61);
  v993 = __ROR8__(v991, 8);
  v994 = (0xE8199CE4741C1276 - ((v993 + v992) | 0xE8199CE4741C1276) + ((v993 + v992) | 0x17E6631B8BE3ED89)) ^ 0xE0947FDD784D1655;
  v995 = v994 ^ __ROR8__(v992, 61);
  v996 = __ROR8__(v994, 8);
  v997 = (v996 + v995 - ((2 * (v996 + v995)) & 0x43B909012BB57982) + 0x21DC848095DABCC1) ^ 0xC76B93BA0EF10C9CLL;
  LOBYTE(STACK[0xF5F1]) = (((__ROR8__(v997, 8) + (v997 ^ __ROR8__(v995, 61))) ^ 0x94AC86FF716F8E22) >> STACK[0x5470]) ^ LODWORD(STACK[0x5460]);
  v998 = ((2 * STACK[0x5440]) | 0x4148BC0007135EBELL) - STACK[0x5440] - 0x20A45E000389AF5FLL;
  v999 = v998 ^ 0xF323B517FA985029;
  v998 ^= 0x88CE26D9F5F655C5;
  v1000 = (__ROR8__(v999, 8) + v998) ^ 0x3A7C64F71FBFC65BLL;
  v1001 = v1000 ^ __ROR8__(v998, 61);
  v1002 = __ROR8__(v1000, 8);
  v1003 = (0x3B8CF89293FFF5FELL - ((v1002 + v1001) | 0x3B8CF89293FFF5FELL) + ((v1002 + v1001) | 0xC473076D6C000A01)) ^ 0x3FB288E6F968CE41;
  v1004 = v1003 ^ __ROR8__(v1001, 61);
  v1005 = __ROR8__(v1003, 8);
  v1006 = (((2 * (v1005 + v1004)) & 0xEC68C30AA5027C8) - (v1005 + v1004) - 0x7634618552813E5) ^ 0xB2797788C9409528;
  v1007 = v1006 ^ __ROR8__(v1004, 61);
  v1008 = (__ROR8__(v1006, 8) + v1007) ^ 0x2854CB5A8BDB8317;
  v1009 = v1008 ^ __ROR8__(v1007, 61);
  v1010 = __ROR8__(v1008, 8);
  v1011 = __ROR8__((0xA07F915B09D1197BLL - ((v1010 + v1009) | 0xA07F915B09D1197BLL) + ((v1010 + v1009) | 0x5F806EA4F62EE684)) ^ 0xA8F2726205801D58, 8);
  v1012 = (0xA07F915B09D1197BLL - ((v1010 + v1009) | 0xA07F915B09D1197BLL) + ((v1010 + v1009) | 0x5F806EA4F62EE684)) ^ 0xA8F2726205801D58 ^ __ROR8__(v1009, 61);
  LOBYTE(STACK[0xF5F2]) = (((__ROR8__((v1011 + v1012) ^ 0xE6B7173A9B2BB05DLL, 8) + ((v1011 + v1012) ^ 0xE6B7173A9B2BB05DLL ^ __ROR8__(v1012, 61))) ^ 0x94AC86FF716F8E22) >> STACK[0x5430]) ^ LODWORD(STACK[0x5420]);
  v1013 = -2 - ((STACK[0x5410] | 0x3CE2E78E264E8A76) + ((STACK[0x5408] + 0xF7DB279C1EDC0BDLL) | 0xC31D1871D9B17589));
  v1014 = v1013 ^ 0xEF650C99DF5F7500;
  v1013 ^= 0x94889F57D03170ECLL;
  v1015 = (__ROR8__(v1014, 8) + v1013) ^ 0x3A7C64F71FBFC65BLL;
  v1016 = v1015 ^ __ROR8__(v1013, 61);
  v1017 = __ROR8__(v1015, 8);
  v1018 = (((2 * ((v1017 + v1016) ^ 0xF189B13DCB3BCD5)) | 0x803294DBF36E9758) - ((v1017 + v1016) ^ 0xF189B13DCB3BCD5) - 0x40194A6DF9B74BACLL) ^ 0xB4C05EF5B06C3339;
  v1019 = v1018 ^ __ROR8__(v1016, 61);
  v1020 = __ROR8__(v1018, 8);
  v1021 = (((2 * (v1020 + v1019)) & 0xE9E591805D10307ELL) - (v1020 + v1019) + 0xB0D373FD177E7C0) ^ 0x41E8F950B2E09EF3;
  v1022 = v1021 ^ __ROR8__(v1019, 61);
  v1023 = __ROR8__(v1021, 8);
  v1024 = (v1023 + v1022 - ((2 * (v1023 + v1022)) & 0xD6077A5C46CFC5DCLL) - 0x14FC42D1DC981D12) ^ 0xC3577674A8BC61F9;
  v1025 = v1024 ^ __ROR8__(v1022, 61);
  v1026 = (__ROR8__(v1024, 8) + v1025) ^ 0xF7721CC6F3AEFBDCLL;
  v1027 = v1026 ^ __ROR8__(v1025, 61);
  v1028 = __ROR8__(v1026, 8);
  v1029 = (((2 * (v1028 + v1027)) | 0x51D364BB789B5F6ELL) - (v1028 + v1027) - 0x28E9B25DBC4DAFB7) ^ 0xCE5EA56727661FEALL;
  v1030 = v1029 ^ __ROR8__(v1027, 61);
  v1031 = __ROR8__(v1029, 8);
  LOBYTE(STACK[0xF5F3]) = (((0x4207D61431E9C928 - ((v1031 + v1030) | 0x4207D61431E9C928) + ((v1031 + v1030) | 0xBDF829EBCE1636D7)) ^ 0x2954AF14BF79B8F5) >> STACK[0x5400]) ^ LODWORD(STACK[0x53F8]);
  v1032 = STACK[0x53F0] - ((2 * STACK[0x53F0] + 0x1EFB64F383DB817ALL) & 0xAB65FA460DCCF0D4) - 0x1ACF5063372BC6D9;
  v1033 = __ROR8__(v1032 ^ 0x86351634FFF7871CLL, 8);
  v1032 ^= 0xFDD885FAF09982F0;
  v1034 = (v1033 + v1032) ^ 0x3A7C64F71FBFC65BLL;
  v1035 = v1034 ^ __ROR8__(v1032, 61);
  v1036 = __ROR8__(v1034, 8);
  v1037 = (((2 * (v1036 + v1035)) | 0xB0FAC31684A559DELL) - (v1036 + v1035) + 0x27829E74BDAD5311) ^ 0x23BCEE00D73A68AFLL;
  v1038 = v1037 ^ __ROR8__(v1035, 61);
  v1039 = __ROR8__(v1037, 8);
  v1040 = (((2 * (v1039 + v1038)) | 0x4980D00A33DD9C6CLL) - (v1039 + v1038) + 0x5B3F97FAE61131CALL) ^ 0xEE25A66A7A79B705;
  v1041 = v1040 ^ __ROR8__(v1038, 61);
  v1042 = (__ROR8__(v1040, 8) + v1041) ^ 0x2854CB5A8BDB8317;
  v1043 = v1042 ^ __ROR8__(v1041, 61);
  v1044 = (__ROR8__(v1042, 8) + v1043) ^ 0xF7721CC6F3AEFBDCLL;
  v1045 = v1044 ^ __ROR8__(v1043, 61);
  v1046 = __ROR8__(v1044, 8);
  v1047 = (((2 * (v1046 + v1045)) & 0x62062700BF1E0AB2) - (v1046 + v1045) + 0x4EFCEC7FA070FAA6) ^ 0xA84BFB453B5B4AFBLL;
  v1048 = __ROR8__(v1047, 8);
  v1049 = __ROR8__(v1045, 61);
  LOBYTE(STACK[0xF5F4]) = (((v1048 + (v1047 ^ v1049) - ((2 * (v1048 + (v1047 ^ v1049))) & 0x2C641B9EAD3828D0) + 0x16320DCF569C1468) ^ 0x829E8B3027F39A4ALL) >> STACK[0x53E8]) ^ LODWORD(STACK[0x53E0]);
  v1050 = ((2 * STACK[0x53D8] + 0x1EFB64F383DB817ALL) & 0xB560236A80F757C8) - STACK[0x53D8] - 0x6A2DC42F02696CA2;
  v1051 = v1050 ^ 0xF6C8055D4695AB6DLL;
  v1050 ^= 0x8D25969349FBAE81;
  v1052 = __ROR8__(v1051, 8);
  v1053 = (((2 * (v1052 + v1050)) & 0x836AD341507DCA9ELL) - (v1052 + v1050) - 0x41B569A0A83EE550) ^ 0x8436F2A8487EDCEBLL;
  v1054 = v1053 ^ __ROR8__(v1050, 61);
  v1055 = (__ROR8__(v1053, 8) + v1054) ^ 0xFBC18F8B9568C440;
  v1056 = v1055 ^ __ROR8__(v1054, 61);
  v1057 = __ROR8__(v1055, 8);
  v1058 = (((2 * (v1057 + v1056)) & 0x3F1321EF6CC4F246) - (v1057 + v1056) + 0x60766F08499D86DCLL) ^ 0x2A93A1672A0AFFEFLL;
  v1059 = v1058 ^ __ROR8__(v1056, 61);
  v1060 = (__ROR8__(v1058, 8) + v1059) ^ 0x2854CB5A8BDB8317;
  v1061 = v1060 ^ __ROR8__(v1059, 61);
  v1062 = (__ROR8__(v1060, 8) + v1061) ^ 0xF7721CC6F3AEFBDCLL;
  v1063 = v1062 ^ __ROR8__(v1061, 61);
  v1064 = (__ROR8__(v1062, 8) + v1063) ^ 0xE6B7173A9B2BB05DLL;
  v1065 = v1064 ^ __ROR8__(v1063, 61);
  v1066 = __ROR8__(v1064, 8);
  LOBYTE(STACK[0xF5F5]) = (((((2 * (v1066 + v1065)) & 0x95F92326051A92ACLL) - (v1066 + v1065) - 0x4AFC9193028D4957) ^ 0x21AFE8938C1D388BLL) >> STACK[0x53D0]) ^ LODWORD(STACK[0x53C8]);
  LOBYTE(STACK[0xF5F6]) = STACK[0x53A8];
  v1067 = (STACK[0x53B8] & 0x96A7005028ECC040) - STACK[0x53C0] + 0x252ECD5E299BDF22;
  v1068 = v1067 ^ 0x672B94C0129860A9;
  v1067 ^= 0x1CC6070E1DF66545uLL;
  v1069 = (__ROR8__(v1068, 8) + v1067) ^ 0x3A7C64F71FBFC65BLL;
  v1070 = v1069 ^ __ROR8__(v1067, 61);
  v1071 = (__ROR8__(v1069, 8) + v1070) ^ 0xFBC18F8B9568C440;
  v1072 = v1071 ^ __ROR8__(v1070, 61);
  v1073 = (__ROR8__(v1071, 8) + v1072) ^ 0x4AE5CE6F63977933;
  v1074 = v1073 ^ __ROR8__(v1072, 61);
  v1075 = (__ROR8__(v1073, 8) + v1074) ^ 0x2854CB5A8BDB8317;
  v1076 = v1075 ^ __ROR8__(v1074, 61);
  v1077 = (__ROR8__(v1075, 8) + v1076) ^ 0xF7721CC6F3AEFBDCLL;
  v1078 = v1077 ^ __ROR8__(v1076, 61);
  v1079 = __ROR8__(v1077, 8);
  v1080 = (((2 * (v1079 + v1078)) | 0x29D7EDB53DEFD7AELL) - (v1079 + v1078) + 0x6B14092561081429) ^ 0x725CE1E005DC5B8ALL;
  v1081 = v1080 ^ __ROR8__(v1078, 61);
  v1082 = __ROR8__(v1080, 8);
  LOBYTE(STACK[0xF5F7]) = ((v1082 + v1081 - ((2 * (v1082 + v1081)) & 0x394AE41A665C7A74) + 0x1CA5720D332E3D3ALL) ^ 0x8809F4F24241B318) >> STACK[0x53B0];
  LOBYTE(STACK[0xF5F8]) = STACK[0x5390];
  v1083 = -2 - (((0x70824D863E123F42 - STACK[0x5398]) | 0x33EC371DEEFE6CC5) + ((STACK[0x5398] + 0xF7DB279C1EDC0BDLL) | 0xCC13C8E21101933ALL));
  v1084 = v1083 ^ 0xE06BDC0A17EF93B3;
  v1083 ^= 0x9B864FC41881965FLL;
  v1085 = (__ROR8__(v1084, 8) + v1083) ^ 0x3A7C64F71FBFC65BLL;
  v1086 = v1085 ^ __ROR8__(v1083, 61);
  v1087 = __ROR8__(v1085, 8);
  v1088 = (((v1087 + v1086) & 0x2EEAB6E9ED2ECF6BLL ^ 0x2C829460292C8F62) + ((v1087 + v1086) & 0xD115491612D13094 ^ 0x4004490412003081) - 1) ^ 0x974752EFAE447BA2;
  v1089 = v1088 ^ __ROR8__(v1086, 61);
  v1090 = (__ROR8__(v1088, 8) + v1089) ^ 0x4AE5CE6F63977933;
  v1091 = v1090 ^ __ROR8__(v1089, 61);
  v1092 = (__ROR8__(v1090, 8) + v1091) ^ 0x2854CB5A8BDB8317;
  v1093 = v1092 ^ __ROR8__(v1091, 61);
  v1094 = (__ROR8__(v1092, 8) + v1093) ^ 0xF7721CC6F3AEFBDCLL;
  v1095 = v1094 ^ __ROR8__(v1093, 61);
  v1096 = __ROR8__(v1094, 8);
  v1097 = (0xB438AF9774C1B66CLL - ((v1096 + v1095) | 0xB438AF9774C1B66CLL) + ((v1096 + v1095) | 0x4BC750688B3E4993)) ^ 0xAD7047521015F9CELL;
  v1098 = v1097 ^ __ROR8__(v1095, 61);
  v1099 = __ROR8__(v1097, 8);
  LOBYTE(STACK[0xF5F9]) = ((0x8D0A7941466C0D6DLL - ((v1099 + v1098) | 0x8D0A7941466C0D6DLL) + ((v1099 + v1098) | 0x72F586BEB993F292)) ^ 0xE6590041C8FC7CB0) >> STACK[0x53A0];
  LOBYTE(STACK[0xF5FA]) = STACK[0x5370];
  v1100 = (STACK[0x5388] + STACK[0x5378]) ^ 0x91364DCB68334DBLL;
  v1101 = v1100 ^ __ROR8__(STACK[0x5388], 61);
  v1102 = __ROR8__(v1100, 8);
  v1103 = (0x60DBD234677673ALL - ((v1102 + v1101) | 0x60DBD234677673ALL) + ((v1102 + v1101) | 0xF9F242DCB98898C5)) ^ 0xBD7F2DB01E994090;
  v1104 = v1103 ^ __ROR8__(v1101, 61);
  v1105 = (__ROR8__(v1103, 8) + v1104) ^ 0xF5F2FED308AA2278;
  v1106 = __ROR8__(v1105, 8);
  v1107 = v1105 ^ __ROR8__(v1104, 61);
  v1108 = (v1106 + v1107) ^ 0x67536EC0FB8B549DLL;
  v1109 = v1108 ^ __ROR8__(v1107, 61);
  v1110 = (__ROR8__(v1108, 8) + v1109) ^ 0xF887455E88108A0CLL;
  v1111 = v1110 ^ __ROR8__(v1109, 61);
  v1112 = __ROR8__(v1110, 8);
  v1113 = (((2 * (v1112 + v1111)) & 0xF4C018F754AD6742) - (v1112 + v1111) + 0x59FF38455A94C5ELL) ^ 0x21ECB8E1F449C807;
  v1114 = v1113 ^ __ROR8__(v1111, 61);
  v1115 = (__ROR8__(v1113, 8) + v1114) ^ 0x40C9CFEA3CC5CBE1;
  v1116 = v1115 ^ __ROR8__(v1114, 61);
  v1117 = __ROR8__(v1115, 8);
  LOBYTE(STACK[0xF5FB]) = ((0x266E701FA774B451 - ((v1117 + v1116) | 0x266E701FA774B451) + ((v1117 + v1116) | 0xD9918FE0588B4BAELL)) ^ 0xB6F2D3CEBD5C9968) >> STACK[0x5380];
  LOBYTE(STACK[0xF5FC]) = STACK[0x5350];
  v1118 = __ROR8__((STACK[0x5360] + STACK[0x5358]) ^ 0x91364DCB68334DBLL, 8);
  v1119 = (STACK[0x5360] + STACK[0x5358]) ^ 0x91364DCB68334DBLL ^ __ROR8__(STACK[0x5360], 61);
  v1120 = (v1118 + v1119 - ((2 * (v1118 + v1119)) & 0x2E6C4422F3738D40) - 0x68C9DDEE86463960) ^ 0xD3BB4D7DDEA81EF5;
  v1121 = v1120 ^ __ROR8__(v1119, 61);
  v1122 = __ROR8__(v1120, 8);
  v1123 = (v1122 + v1121 - ((2 * (v1122 + v1121)) & 0x5CA78C8C72A001AELL) + 0x2E53C646395000D7) ^ 0xDBA1389531FA22AFLL;
  v1124 = v1123 ^ __ROR8__(v1121, 61);
  v1125 = __ROR8__(v1123, 8);
  v1126 = (0x77576FE13AA05E8BLL - ((v1125 + v1124) | 0x77576FE13AA05E8BLL) + ((v1125 + v1124) | 0x88A8901EC55FA174)) ^ 0xEFFBFEDE3ED4F5E9;
  v1127 = v1126 ^ __ROR8__(v1124, 61);
  v1128 = __ROR8__(v1126, 8);
  v1129 = (v1128 + v1127 - ((2 * (v1128 + v1127)) & 0x4C8A95EC48B8567ELL) - 0x59BAB509DBA3D4C1) ^ 0x5EC20FA8AC4CA133;
  v1130 = v1129 ^ __ROR8__(v1127, 61);
  v1131 = __ROR8__(v1129, 8);
  v1132 = (0xC30FC9D0FA8DB3E1 - ((v1131 + v1130) | 0xC30FC9D0FA8DB3E1) + ((v1131 + v1130) | 0x3CF0362F05724C1ELL)) ^ 0x18837D4AA492C847;
  v1133 = v1132 ^ __ROR8__(v1130, 61);
  v1134 = (__ROR8__(v1132, 8) + v1133) ^ 0x40C9CFEA3CC5CBE1;
  v1135 = __ROR8__(v1134, 8);
  v1136 = __ROR8__(v1133, 61);
  LOBYTE(STACK[0xF5FD]) = ((v1135 + (v1134 ^ v1136) - ((2 * (v1135 + (v1134 ^ v1136))) & 0xC5D5BB1BBA7D1DCALL) - 0x1D15227222C1711BLL) ^ 0x8D8981A338E95C23) >> STACK[0x5368];
  v1137 = (((2 * (STACK[0x5348] + STACK[0x5340])) & 0xE9FC4896542ED4B2) - (STACK[0x5348] + STACK[0x5340]) - 0x74FE244B2A176A5ALL) ^ 0x8212BF68636BA17DLL;
  v1138 = v1137 ^ __ROR8__(STACK[0x5348], 61);
  v1139 = (__ROR8__(v1137, 8) + v1138) ^ 0x448D6F6CA711D855;
  v1140 = v1139 ^ __ROR8__(v1138, 61);
  v1141 = (__ROR8__(v1139, 8) + v1140) ^ 0xF5F2FED308AA2278;
  v1142 = v1141 ^ __ROR8__(v1140, 61);
  v1143 = (__ROR8__(v1141, 8) + v1142) ^ 0x67536EC0FB8B549DLL;
  v1144 = __ROR8__(v1143, 8);
  v1145 = v1143 ^ __ROR8__(v1142, 61);
  v1146 = (v1144 + v1145) ^ 0xF887455E88108A0CLL;
  v1147 = v1146 ^ __ROR8__(v1145, 61);
  v1148 = (__ROR8__(v1146, 8) + v1147) ^ 0x24734B65A1E08459;
  v1149 = v1148 ^ __ROR8__(v1147, 61);
  v1150 = (__ROR8__(v1148, 8) + v1149) ^ 0x40C9CFEA3CC5CBE1;
  LOBYTE(STACK[0xF5FE]) = (((__ROR8__(v1150, 8) + (v1150 ^ __ROR8__(v1149, 61))) ^ 0x6F635C2EE5D7D2C6uLL) >> STACK[0x5338]) ^ LODWORD(STACK[0x5330]);
  v1151 = (STACK[0x5328] + STACK[0x5320] - ((2 * (STACK[0x5328] + STACK[0x5320])) & 0x74B0CA3CC19BB0DELL) - 0x45A79AE19F322791) ^ 0xB34B01C2D64EECB4;
  v1152 = v1151 ^ __ROR8__(STACK[0x5328], 61);
  v1153 = __ROR8__(v1151, 8);
  v1154 = __ROR8__((v1153 + v1152 - ((2 * (v1153 + v1152)) & 0x6ACAC813ED6F4C10) + 0x35656409F6B7A608) ^ 0x71E80B6551A67E5DLL, 8);
  v1155 = (v1153 + v1152 - ((2 * (v1153 + v1152)) & 0x6ACAC813ED6F4C10) + 0x35656409F6B7A608) ^ 0x71E80B6551A67E5DLL ^ __ROR8__(v1152, 61);
  v1156 = (v1154 + v1155 - ((2 * (v1154 + v1155)) & 0x94F47782033C1A78) - 0x3585C43EFE61F2C4) ^ 0x3F88C51209342F44;
  v1157 = v1156 ^ __ROR8__(v1155, 61);
  v1158 = __ROR8__(v1156, 8);
  v1159 = (((2 * (v1158 + v1157)) | 0x5FA7D1BDDD3107A2) - (v1158 + v1157) - 0x2FD3E8DEEE9883D1) ^ 0x4880861E1513D74CLL;
  v1160 = v1159 ^ __ROR8__(v1157, 61);
  v1161 = __ROR8__(v1159, 8);
  v1162 = (((2 * (v1161 + v1160)) & 0xBCE46BE3823132B4) - (v1161 + v1160) + 0x218DCA0E3EE766A5) ^ 0xD90A8F50B6F7ECA9;
  v1163 = v1162 ^ __ROR8__(v1160, 61);
  v1164 = (__ROR8__(v1162, 8) + v1163) ^ 0x24734B65A1E08459;
  v1165 = v1164 ^ __ROR8__(v1163, 61);
  v1166 = __ROR8__(v1164, 8);
  v1167 = (v1166 + v1165 - ((2 * (v1166 + v1165)) & 0xED9E71C419608B7CLL) + 0x76CF38E20CB045BELL) ^ 0x3606F70830758E5FLL;
  LOBYTE(STACK[0xF5FF]) = (((__ROR8__(v1167, 8) + (v1167 ^ __ROR8__(v1165, 61))) ^ 0x6F635C2EE5D7D2C6) >> STACK[0x5318]) ^ LODWORD(STACK[0x5310]);
  v1168 = STACK[0x5308] ^ 0x448D6F6CA711D855 ^ STACK[0x52F8];
  v1169 = (__ROR8__(STACK[0x5308] ^ 0x448D6F6CA711D855, 8) + v1168) ^ 0xF5F2FED308AA2278;
  v1170 = v1169 ^ __ROR8__(v1168, 61);
  v1171 = (__ROR8__(v1169, 8) + v1170) ^ 0x67536EC0FB8B549DLL;
  v1172 = v1171 ^ __ROR8__(v1170, 61);
  v1173 = (__ROR8__(v1171, 8) + v1172) ^ 0xF887455E88108A0CLL;
  v1174 = v1173 ^ __ROR8__(v1172, 61);
  v1175 = __ROR8__(v1173, 8);
  v1176 = __ROR8__((0x1D9C66A6798566EALL - ((v1175 + v1174) | 0x1D9C66A6798566EALL) + ((v1175 + v1174) | 0xE2639959867A9915)) ^ 0xC610D23C279A1D4CLL, 8);
  v1177 = (0x1D9C66A6798566EALL - ((v1175 + v1174) | 0x1D9C66A6798566EALL) + ((v1175 + v1174) | 0xE2639959867A9915)) ^ 0xC610D23C279A1D4CLL ^ __ROR8__(v1174, 61);
  v1178 = (((2 * (v1176 + v1177)) & 0xEBFBCF05F84A87ALL) - (v1176 + v1177) + 0x78A02187D03DABC2) ^ 0x3869EE6DECF86023;
  LOBYTE(STACK[0xF600]) = (((__ROR8__(v1178, 8) + (v1178 ^ __ROR8__(v1177, 61))) ^ 0x6F635C2EE5D7D2C6uLL) >> STACK[0x5300]) ^ LODWORD(STACK[0x52F0]);
  v1179 = (STACK[0x52E8] + STACK[0x52E0]) ^ 0x91364DCB68334DBLL;
  v1180 = v1179 ^ __ROR8__(STACK[0x52E8], 61);
  v1181 = (__ROR8__(v1179, 8) + v1180) ^ 0x448D6F6CA711D855;
  v1182 = v1181 ^ __ROR8__(v1180, 61);
  v1183 = (__ROR8__(v1181, 8) + v1182) ^ 0xF5F2FED308AA2278;
  v1184 = v1183 ^ __ROR8__(v1182, 61);
  v1185 = (__ROR8__(v1183, 8) + v1184) ^ 0x67536EC0FB8B549DLL;
  v1186 = __ROR8__(v1185, 8);
  v1187 = v1185 ^ __ROR8__(v1184, 61);
  v1188 = (v1186 + v1187) ^ 0xF887455E88108A0CLL;
  v1189 = v1188 ^ __ROR8__(v1187, 61);
  v1190 = (__ROR8__(v1188, 8) + v1189) ^ 0x24734B65A1E08459;
  v1191 = v1190 ^ __ROR8__(v1189, 61);
  v1192 = __ROR8__(v1190, 8);
  v1193 = (((2 * (v1192 + v1191)) & 0x36226620A1340C98) - (v1192 + v1191) + 0x64EECCEFAF65F9B3) ^ 0x2427030593A03252;
  v1194 = v1193 ^ __ROR8__(v1191, 61);
  v1195 = __ROR8__(v1193, 8);
  LOBYTE(STACK[0xF601]) = (((((2 * (v1195 + v1194)) & 0x1FF22F712C43F934) - (v1195 + v1194) - 0xFF917B89621FC9BLL) ^ 0x9F65B4698C09D1A3) >> STACK[0x52D8]) ^ LODWORD(STACK[0x52D0]);
  LOBYTE(STACK[0xF602]) = STACK[0x52B0];
  v1196 = (0x64A23E01CF4F55DBLL - ((STACK[0x52C8] + STACK[0x52C0]) | 0x64A23E01CF4F55DBLL) + ((STACK[0x52C8] + STACK[0x52C0]) | 0x9B5DC1FE30B0AA24)) ^ 0x924EA52286339EFFLL;
  v1197 = v1196 ^ __ROR8__(STACK[0x52C8], 61);
  v1198 = (__ROR8__(v1196, 8) + v1197) ^ 0x448D6F6CA711D855;
  v1199 = v1198 ^ __ROR8__(v1197, 61);
  v1200 = (__ROR8__(v1198, 8) + v1199) ^ 0xF5F2FED308AA2278;
  v1201 = __ROR8__(v1200, 8);
  v1202 = v1200 ^ __ROR8__(v1199, 61);
  v1203 = (((2 * (v1201 + v1202)) | 0xDE5387A61C323992) - (v1201 + v1202) - 0x6F29C3D30E191CC9) ^ 0x87AAD13F5924854;
  v1204 = v1203 ^ __ROR8__(v1202, 61);
  v1205 = __ROR8__(v1203, 8);
  v1206 = (0xCA53EAD6636E1A18 - ((v1205 + v1204) | 0xCA53EAD6636E1A18) + ((v1205 + v1204) | 0x35AC15299C91E5E7)) ^ 0xCD2B507714816FEBLL;
  v1207 = v1206 ^ __ROR8__(v1204, 61);
  v1208 = (__ROR8__(v1206, 8) + v1207) ^ 0x24734B65A1E08459;
  v1209 = v1208 ^ __ROR8__(v1207, 61);
  v1210 = (__ROR8__(v1208, 8) + v1209) ^ 0x40C9CFEA3CC5CBE1;
  LOBYTE(STACK[0xF603]) = ((__ROR8__(v1210, 8) + (v1210 ^ __ROR8__(v1209, 61))) ^ 0x6F635C2EE5D7D2C6uLL) >> STACK[0x52B8];
  v1211 = (((2 * (STACK[0x52A8] + STACK[0x5290])) & 0x3F97482A09654A6ELL) - (STACK[0x52A8] + STACK[0x5290]) + 0x60345BEAFB4D5AC8) ^ 0x69273F364DCE6E13;
  v1212 = v1211 ^ __ROR8__(STACK[0x52A8], 61);
  v1213 = __ROR8__(v1211, 8);
  v1214 = (v1213 + v1212 - ((2 * (v1213 + v1212)) & 0x58CF2D34F31F5D64) - 0x539869658670514ELL) ^ 0xE8EAF9F6DE9E76E7;
  v1215 = v1214 ^ __ROR8__(v1212, 61);
  v1216 = __ROR8__(v1214, 8);
  v1217 = (((2 * (v1216 + v1215)) & 0x7A0FA88F14A91C36) - (v1216 + v1215) + 0x42F82BB875AB71E4) ^ 0xB70AD56B7D01539CLL;
  v1218 = v1217 ^ __ROR8__(v1215, 61);
  v1219 = (__ROR8__(v1217, 8) + v1218) ^ 0x67536EC0FB8B549DLL;
  v1220 = v1219 ^ __ROR8__(v1218, 61);
  v1221 = __ROR8__(v1219, 8);
  v1222 = (0x5B635517C4D67C6 - ((v1221 + v1220) | 0x5B635517C4D67C6) + ((v1221 + v1220) | 0xFA49CAAE83B29839)) ^ 0x2CE8FF00BA21235;
  v1223 = v1222 ^ __ROR8__(v1220, 61);
  v1224 = (__ROR8__(v1222, 8) + v1223) ^ 0x24734B65A1E08459;
  v1225 = __ROR8__(v1224, 8);
  v1226 = v1224 ^ __ROR8__(v1223, 61);
  LOBYTE(STACK[0xF604]) = (((__ROR8__((v1225 + v1226) ^ 0x40C9CFEA3CC5CBE1, 8) + ((v1225 + v1226) ^ 0x40C9CFEA3CC5CBE1 ^ __ROR8__(v1226, 61))) ^ 0x6F635C2EE5D7D2C6uLL) >> STACK[0x52A0]) ^ LODWORD(STACK[0x5298]);
  LOBYTE(STACK[0xF605]) = STACK[0x5270];
  v1227 = (((2 * (STACK[0x5288] + STACK[0x5280])) & 0x15DAE694BCD32502) - (STACK[0x5288] + STACK[0x5280]) + 0x75128CB5A1966D7ELL) ^ 0x7C01E869171559A5;
  v1228 = v1227 ^ __ROR8__(STACK[0x5288], 61);
  v1229 = (__ROR8__(v1227, 8) + v1228) ^ 0x448D6F6CA711D855;
  v1230 = v1229 ^ __ROR8__(v1228, 61);
  v1231 = __ROR8__(v1229, 8);
  v1232 = (0xA7733344590730F4 - ((v1231 + v1230) | 0xA7733344590730F4) + ((v1231 + v1230) | 0x588CCCBBA6F8CF0BLL)) ^ 0xAD7E3268AE52ED73;
  v1233 = v1232 ^ __ROR8__(v1230, 61);
  v1234 = (__ROR8__(v1232, 8) + v1233) ^ 0x67536EC0FB8B549DLL;
  v1235 = v1234 ^ __ROR8__(v1233, 61);
  v1236 = __ROR8__(v1234, 8);
  v1237 = (((2 * (v1236 + v1235)) & 0x31DDAF6C1F32A3F0) - (v1236 + v1235) + 0x67112849F066AE07) ^ 0x9F966D177876240BLL ^ __ROR8__(v1235, 61);
  v1238 = (__ROR8__((((2 * (v1236 + v1235)) & 0x31DDAF6C1F32A3F0) - (v1236 + v1235) + 0x67112849F066AE07) ^ 0x9F966D177876240BLL, 8) + v1237) ^ 0x24734B65A1E08459;
  v1239 = v1238 ^ __ROR8__(v1237, 61);
  v1240 = (__ROR8__(v1238, 8) + v1239) ^ 0x40C9CFEA3CC5CBE1;
  v1241 = v1240 ^ __ROR8__(v1239, 61);
  v1242 = __ROR8__(v1240, 8);
  LOBYTE(STACK[0xF606]) = ((((2 * (v1242 + v1241)) | 0xE64D678FF5F3A4D4) - (v1242 + v1241) + 0xCD94C3805062D96) ^ 0x9C45EFE91F2E00ACLL) >> STACK[0x5278];
  v1243 = (STACK[0x5268] + STACK[0x5260]) ^ 0x91364DCB68334DBLL;
  v1244 = v1243 ^ __ROR8__(STACK[0x5268], 61);
  v1245 = __ROR8__(v1243, 8);
  v1246 = __ROR8__((0x963B008B98AD57FCLL - ((v1245 + v1244) | 0x963B008B98AD57FCLL) + ((v1245 + v1244) | 0x69C4FF746752A803)) ^ 0x2D499018C0437056, 8);
  v1247 = (0x963B008B98AD57FCLL - ((v1245 + v1244) | 0x963B008B98AD57FCLL) + ((v1245 + v1244) | 0x69C4FF746752A803)) ^ 0x2D499018C0437056 ^ __ROR8__(v1244, 61);
  v1248 = (v1246 + v1247 - ((2 * (v1246 + v1247)) & 0xBDE2E45958A5DA7CLL) - 0x210E8DD353AD12C2) ^ 0x2B038CFFA4F8CF46;
  v1249 = v1248 ^ __ROR8__(v1247, 61);
  v1250 = __ROR8__(v1248, 8);
  v1251 = (((2 * (v1250 + v1249)) | 0xBA4543824EF72A9CLL) - (v1250 + v1249) + 0x22DD5E3ED8846AB2) ^ 0xBA71CF01DCF0C1D3;
  v1252 = v1251 ^ __ROR8__(v1249, 61);
  v1253 = (__ROR8__(v1251, 8) + v1252) ^ 0xF887455E88108A0CLL;
  v1254 = v1253 ^ __ROR8__(v1252, 61);
  v1255 = __ROR8__(v1253, 8);
  v1256 = (((2 * (v1255 + v1254)) | 0xA2327510407AAFCELL) - (v1255 + v1254) - 0x51193A88203D57E7) ^ 0x756A71ED81DDD3BELL;
  v1257 = v1256 ^ __ROR8__(v1254, 61);
  v1258 = (__ROR8__(v1256, 8) + v1257) ^ 0x40C9CFEA3CC5CBE1;
  v1259 = v1258 ^ __ROR8__(v1257, 61);
  v1260 = __ROR8__(v1258, 8);
  LOBYTE(STACK[0xF607]) = (((v1260 + v1259 - ((2 * (v1260 + v1259)) & 0x81E5E67AB8CC9286) + 0x40F2F33D5C664943) ^ 0x2F91AF13B9B19B85) >> STACK[0x5258]) ^ LODWORD(STACK[0x5250]);
  v1261 = (STACK[0x5248] + STACK[0x5240]) ^ 0x91364DCB68334DBLL;
  v1262 = v1261 ^ __ROR8__(STACK[0x5248], 61);
  v1263 = __ROR8__(v1261, 8);
  v1264 = (((2 * (v1263 + v1262)) | 0x243910CCBDEF002) - (v1263 + v1262) + 0x7EDE37799A1087FFLL) ^ 0xC5ACA7EAC2FEA054;
  v1265 = v1264 ^ __ROR8__(v1262, 61);
  v1266 = (__ROR8__(v1264, 8) + v1265) ^ 0xF5F2FED308AA2278;
  v1267 = v1266 ^ __ROR8__(v1265, 61);
  v1268 = __ROR8__(v1266, 8);
  v1269 = (((2 * (v1268 + v1267)) & 0x98965B3D9DEAC31ELL) - (v1268 + v1267) + 0x33B4D261310A9E70) ^ 0x54E7BCA1CA81CAEDLL;
  v1270 = v1269 ^ __ROR8__(v1267, 61);
  v1271 = (__ROR8__(v1269, 8) + v1270) ^ 0xF887455E88108A0CLL;
  v1272 = v1271 ^ __ROR8__(v1270, 61);
  v1273 = __ROR8__(v1271, 8);
  v1274 = (0xDD66D4FD50458396 - ((v1273 + v1272) | 0xDD66D4FD50458396) + ((v1273 + v1272) | 0x22992B02AFBA7C69)) ^ 0x6EA60670E5AF830 ^ __ROR8__(v1272, 61);
  v1275 = (__ROR8__((0xDD66D4FD50458396 - ((v1273 + v1272) | 0xDD66D4FD50458396) + ((v1273 + v1272) | 0x22992B02AFBA7C69)) ^ 0x6EA60670E5AF830, 8) + v1274) ^ 0x40C9CFEA3CC5CBE1;
  LOBYTE(STACK[0xF608]) = (((__ROR8__(v1275, 8) + (v1275 ^ __ROR8__(v1274, 61))) ^ 0x6F635C2EE5D7D2C6uLL) >> STACK[0x5238]) ^ LODWORD(STACK[0x5230]);
  v1276 = (0x84519274F75D40 - ((STACK[0x5218] + STACK[0x5210]) | 0x84519274F75D40) + ((STACK[0x5218] + STACK[0x5210]) | 0xFF7BAE6D8B08A2BFLL)) ^ 0xF668CAB13D8B9664;
  v1277 = v1276 ^ __ROR8__(STACK[0x5218], 61);
  v1278 = __ROR8__(v1276, 8);
  v1279 = (((2 * (v1278 + v1277)) | 0x3751D18426B69D02) - (v1278 + v1277) - 0x1BA8E8C2135B4E81) ^ 0x5F2587AEB44A96D4;
  v1280 = v1279 ^ __ROR8__(v1277, 61);
  v1281 = __ROR8__(v1279, 8);
  v1282 = (0x45FD99C654C8BC11 - ((v1281 + v1280) | 0x45FD99C654C8BC11) + ((v1281 + v1280) | 0xBA026639AB3743EELL)) ^ 0x4FF098EAA39D6196;
  v1283 = v1282 ^ __ROR8__(v1280, 61);
  v1284 = __ROR8__(v1282, 8);
  v1285 = __ROR8__((((2 * (v1284 + v1283)) & 0x5E8593FFB767732ALL) - (v1284 + v1283) - 0x2F42C9FFDBB3B996) ^ 0xB7EE58C0DFC712F7, 8);
  v1286 = (((2 * (v1284 + v1283)) & 0x5E8593FFB767732ALL) - (v1284 + v1283) - 0x2F42C9FFDBB3B996) ^ 0xB7EE58C0DFC712F7 ^ __ROR8__(v1283, 61);
  v1287 = (v1285 + v1286 - ((2 * (v1285 + v1286)) & 0x42000F4E9C72C428) - 0x5EFFF858B1C69DECLL) ^ 0x598742F9C629E818;
  v1288 = v1287 ^ __ROR8__(v1286, 61);
  v1289 = __ROR8__(v1287, 8);
  v1290 = (0x83C98CF0EE4AD702 - ((v1289 + v1288) | 0x83C98CF0EE4AD702) + ((v1289 + v1288) | 0x7C36730F11B528FDLL)) ^ 0x5845386AB055ACA4;
  v1291 = v1290 ^ __ROR8__(v1288, 61);
  v1292 = __ROR8__(v1290, 8);
  v1293 = (((2 * (v1292 + v1291)) | 0xDA6882599194B15ELL) - (v1292 + v1291) + 0x12CBBED33735A751) ^ 0xADFD8EC6F40F934ELL;
  LOBYTE(STACK[0xF609]) = (((__ROR8__(v1293, 8) + (v1293 ^ __ROR8__(v1291, 61))) ^ 0x6F635C2EE5D7D2C6) >> STACK[0x5228]) ^ LODWORD(STACK[0x5220]);
  LOBYTE(STACK[0xF60A]) = STACK[0x51E0];
  v1294 = (((2 * (STACK[0x5208] + STACK[0x5200])) | 0x98491D7799A856EELL) - (STACK[0x5208] + STACK[0x5200]) - 0x4C248EBBCCD42B77) ^ 0x4537EA677A571FACLL;
  v1295 = v1294 ^ __ROR8__(STACK[0x5208], 61);
  v1296 = (__ROR8__(v1294, 8) + v1295) ^ 0x448D6F6CA711D855;
  v1297 = v1296 ^ __ROR8__(v1295, 61);
  v1298 = __ROR8__(v1296, 8);
  v1299 = __ROR8__((((2 * (v1298 + v1297)) & 0xB15282C5D0C17CDCLL) - (v1298 + v1297) + 0x2756BE9D179F4191) ^ 0xD2A4404E1F3563E9, 8);
  v1300 = (((2 * (v1298 + v1297)) & 0xB15282C5D0C17CDCLL) - (v1298 + v1297) + 0x2756BE9D179F4191) ^ 0xD2A4404E1F3563E9 ^ __ROR8__(v1297, 61);
  v1301 = (0xC10D858B399B94F8 - ((v1299 + v1300) | 0xC10D858B399B94F8) + ((v1299 + v1300) | 0x3EF27A74C6646B07)) ^ 0x59A114B43DEF3F9ALL;
  v1302 = v1301 ^ __ROR8__(v1300, 61);
  v1303 = __ROR8__(v1301, 8);
  v1304 = (v1303 + v1302 - ((2 * (v1303 + v1302)) & 0xD62E89CC7ACC76B4) - 0x14E8BB19C299C4A6) ^ 0x139001B8B576B156;
  v1305 = v1304 ^ __ROR8__(v1302, 61);
  v1306 = __ROR8__(v1304, 8);
  v1307 = (((2 * (v1306 + v1305)) & 0x8154DBEF684E8F6ELL) - (v1306 + v1305) + 0x3F5592084BD8B848) ^ 0x1B26D96DEA383C11;
  v1308 = v1307 ^ __ROR8__(v1305, 61);
  v1309 = (__ROR8__(v1307, 8) + v1308) ^ 0x40C9CFEA3CC5CBE1;
  LOBYTE(STACK[0xF60B]) = ((__ROR8__(v1309, 8) + (v1309 ^ __ROR8__(v1308, 61))) ^ 0x6F635C2EE5D7D2C6uLL) >> STACK[0x51F8];
  v1310 = (STACK[0x51C8] + STACK[0x51C0] - ((2 * (STACK[0x51C8] + STACK[0x51C0])) & 0x7CC0B5E48CC398EELL) - 0x419FA50DB99E3389) ^ 0xB7733E2EF0E2F8ACLL;
  v1311 = v1310 ^ __ROR8__(STACK[0x51C8], 61);
  v1312 = __ROR8__(v1310, 8);
  v1313 = (0x60A155BBB5CCDB14 - ((v1312 + v1311) | 0x60A155BBB5CCDB14) + ((v1312 + v1311) | 0x9F5EAA444A3324EBLL)) ^ 0xDBD3C528ED22FCBELL;
  v1314 = v1313 ^ __ROR8__(v1311, 61);
  v1315 = __ROR8__(v1313, 8);
  v1316 = (0x561EC1C9C5EC5D42 - ((v1315 + v1314) | 0x561EC1C9C5EC5D42) + ((v1315 + v1314) | 0xA9E13E363A13A2BDLL)) ^ 0x5C13C0E532B980C5;
  v1317 = v1316 ^ __ROR8__(v1314, 61);
  v1318 = __ROR8__(v1316, 8);
  v1319 = (((2 * (v1318 + v1317)) & 0xEFAEB7DEA3D0541ELL) - (v1318 + v1317) + 0x828A410AE17D5F0) ^ 0x6F7BCAD0559C816DLL;
  v1320 = v1319 ^ __ROR8__(v1317, 61);
  v1321 = __ROR8__(v1319, 8);
  v1322 = (0x853A391AAD7AFF03 - ((v1321 + v1320) | 0x853A391AAD7AFF03) + ((v1321 + v1320) | 0x7AC5C6E5528500FCLL)) ^ 0x824283BBDA958AF0;
  v1323 = v1322 ^ __ROR8__(v1320, 61);
  v1324 = __ROR8__(v1322, 8);
  v1325 = (0xE331378B8DE04B97 - ((v1324 + v1323) | 0xE331378B8DE04B97) + ((v1324 + v1323) | 0x1CCEC874721FB468)) ^ 0x38BD8311D3FF3031 ^ __ROR8__(v1323, 61);
  v1326 = (__ROR8__((0xE331378B8DE04B97 - ((v1324 + v1323) | 0xE331378B8DE04B97) + ((v1324 + v1323) | 0x1CCEC874721FB468)) ^ 0x38BD8311D3FF3031, 8) + v1325) ^ 0x40C9CFEA3CC5CBE1;
  v1327 = v1326 ^ __ROR8__(v1325, 61);
  v1328 = __ROR8__(v1326, 8);
  v1329 = STACK[0x4C34];
  LOBYTE(STACK[0xF60C]) = (((0x7F227269FF0C410ELL - ((v1328 + v1327) ^ 0x14DD739CA64C8797 | 0x7F227269FF0C410ELL) + ((v1328 + v1327) ^ 0x14DD739CA64C8797 | 0x80DD8D9600F3BEF1)) ^ 0xFB63A2244368EBA0) >> STACK[0x51D8]) ^ LODWORD(STACK[0x51D0]);
  v1330 = (((2 * v742) & 0x42CACB591E738D6CLL) - v742 - 0x216565AC8F39C6B7) ^ 0xD789FE8FC6450D92 ^ STACK[0x51A0];
  v1331 = __ROR8__((((2 * v742) & 0x42CACB591E738D6CLL) - v742 - 0x216565AC8F39C6B7) ^ 0xD789FE8FC6450D92, 8);
  v1332 = (((2 * (v1331 + v1330)) | 0xB370AB6E6DE75A26) - (v1331 + v1330) - 0x59B855B736F3AD13) ^ 0x1D353ADB91E27546;
  v1333 = v1332 ^ __ROR8__(v1330, 61);
  v1334 = (__ROR8__(v1332, 8) + v1333) ^ 0xF5F2FED308AA2278;
  v1335 = v1334 ^ __ROR8__(v1333, 61);
  v1336 = __ROR8__(v1334, 8);
  v1337 = (((2 * (v1336 + v1335)) & 0x45850FF6BD3048EALL) - (v1336 + v1335) - 0x22C287FB5E982476) ^ 0xBA6E16C45AEC8F17;
  v1338 = v1337 ^ __ROR8__(v1335, 61);
  v1339 = (__ROR8__(v1337, 8) + v1338) ^ 0xF887455E88108A0CLL;
  v1340 = __ROR8__(v1339, 8);
  v1341 = v1339 ^ __ROR8__(v1338, 61);
  v1342 = (((2 * (v1340 + v1341)) & 0xB28DCC2DBBEBC834) - (v1340 + v1341) - 0x5946E616DDF5E41BLL) ^ 0x82CA528C83EA9FBCLL;
  v1343 = v1342 ^ __ROR8__(v1341, 61);
  v1344 = __ROR8__(v1342, 8);
  v1345 = (0xD035D85F9CD43BF7 - ((v1344 + v1343) | 0xD035D85F9CD43BF7) + ((v1344 + v1343) | 0x2FCA27A0632BC408)) ^ 0x6F03E84A5FEE0FE9;
  v1346 = v1345 ^ __ROR8__(v1343, 61);
  v1347 = __ROR8__(v1345, 8);
  LOBYTE(STACK[0xF60D]) = (((0x7FB263FBEEEA7C49 - ((v1347 + v1346) | 0x7FB263FBEEEA7C49) + ((v1347 + v1346) | 0x804D9C04111583B6)) ^ 0xEF2EC02AF4C25170) >> STACK[0x51B0]) ^ LODWORD(STACK[0x51A8]);
  LOBYTE(STACK[0xF60E]) = v417;
  v1348 = (STACK[0x5198] + STACK[0x5188]) ^ 0x91364DCB68334DBLL;
  v1349 = v1348 ^ __ROR8__(STACK[0x5198], 61);
  v1350 = __ROR8__(v1348, 8);
  v1351 = (v1350 + v1349 - ((2 * (v1350 + v1349)) & 0xDB90F8D5936412CALL) - 0x12378395364DF69BLL) ^ 0xA94513066EA3D130;
  v1352 = v1351 ^ __ROR8__(v1349, 61);
  v1353 = __ROR8__(v1351, 8);
  v1354 = (((2 * (v1353 + v1352)) | 0x1E875EB0586DC7D4) - (v1353 + v1352) - 0xF43AF582C36E3EALL) ^ 0xFAB1518B249CC192;
  v1355 = v1354 ^ __ROR8__(v1352, 61);
  v1356 = __ROR8__(v1354, 8);
  v1357 = (((2 * (v1356 + v1355)) & 0xB7DBBE83D83D42F8) - (v1356 + v1355) + 0x241220BE13E15E83) ^ 0x43414E7EE86A0A1ELL ^ __ROR8__(v1355, 61);
  v1358 = (__ROR8__((((2 * (v1356 + v1355)) & 0xB7DBBE83D83D42F8) - (v1356 + v1355) + 0x241220BE13E15E83) ^ 0x43414E7EE86A0A1ELL, 8) + v1357) ^ 0xF887455E88108A0CLL;
  v1359 = v1358 ^ __ROR8__(v1357, 61);
  v1360 = __ROR8__(v1358, 8);
  v1361 = (((v1360 + v1359) & 0x79FFE51A09AF828DLL ^ 0x7007A11A0021020DLL) + ((v1360 + v1359) ^ 0x8DF84E0019DED580) - (((v1360 + v1359) ^ 0x8DF84E0019DED580) & 0x79FFE51A09AF828DLL)) ^ 0xD074E07FB191D354;
  v1362 = v1361 ^ __ROR8__(v1359, 61);
  v1363 = __ROR8__(v1361, 8);
  LOBYTE(STACK[0xF60F]) = ((__ROR8__((((2 * (v1363 + v1362)) | 0xC84681167D11D0CALL) - (v1363 + v1362) - 0x6423408B3E88E865) ^ 0x24EA8F61024D2384, 8) + ((((2 * (v1363 + v1362)) | 0xC84681167D11D0CALL) - (v1363 + v1362) - 0x6423408B3E88E865) ^ 0x24EA8F61024D2384 ^ __ROR8__(v1362, 61))) ^ 0x6F635C2EE5D7D2C6) >> STACK[0x5190];
  v1364 = STACK[0xFE20] + 12;
  STACK[0xEFF8] = v1364;
  v1365 = STACK[0x57D8];
  v1366 = *(STACK[0x57D8] + 8 * (v1329 + 9041));
  STACK[0xF700] = v1364;
  STACK[0xEFE8] = v1366;
  return (*(v1365 + 8 * (v800 ^ 0x51A6)))();
}

uint64_t sub_10040C398()
{
  v1 = STACK[0x51B8];
  v2 = 2591 * (STACK[0x51B8] ^ 0x5852);
  v3 = STACK[0x51B8] + 634;
  v4 = STACK[0x8048];
  v5 = STACK[0x77C8];
  v6 = STACK[0xA0B0];
  v7 = STACK[0x7828];
  v8 = STACK[0x51B8] + 847660746;
  v9 = 1379010179 * ((((v0 - 240) | 0x531906B2) - (v0 - 240) + ((v0 - 240) & 0xACE6F948)) ^ 0x77483FDC);
  STACK[0x1D4E0] = STACK[0x9070];
  STACK[0x1D4D0] = v6;
  STACK[0x1D4C0] = v5;
  STACK[0x1D4D8] = v4;
  LODWORD(STACK[0x1D4E8]) = v9 - 467101311 + v7 * (v2 + 1806806849);
  LODWORD(STACK[0x1D4C8]) = v8 ^ v9;
  v10 = STACK[0x57D8];
  v11 = (*(STACK[0x57D8] + 8 * (v1 + 9236)))(v0 - 240);
  return (*(v10 + 8 * ((471 * (LODWORD(STACK[0x1D4EC]) == 221187128)) ^ v3)))(v11);
}

uint64_t sub_10040C88C()
{
  if (STACK[0x7AA8])
  {
    v1 = LODWORD(STACK[0x8404]) == -769884012;
  }

  else
  {
    v1 = 1;
  }

  v2 = v1;
  return (*(STACK[0x57D8] + 8 * ((v2 * (6 * (v0 ^ 0x33B2) + ((v0 + 6987) ^ 0xFFFFFFE9))) ^ v0)))();
}

uint64_t sub_10040C930@<X0>(int a1@<W8>)
{
  v3 = STACK[0x57D8];
  STACK[0x7A70] = *(STACK[0x57D8] + 8 * v2);
  STACK[0x7C48] = v1;
  LODWORD(STACK[0x7DEC]) = a1;
  return (*(v3 + 8 * (v2 ^ 0x677 ^ (v2 + 4905))))();
}

uint64_t sub_10040C9E8()
{
  v2 = v1 - 1;
  *STACK[0x3DB8] = v2;
  return (*(STACK[0x57D8] + 8 * ((17861 * (v2 == (((v0 - 6074) | 0xA84) ^ 0x24D79A97))) ^ v0)))();
}

uint64_t sub_10040CA94()
{
  v4 = v2 + 1409205173 < v1;
  if (v1 < v3 != (v2 + 1409205173) < 0x6E01F3B8)
  {
    v4 = v1 < v3;
  }

  return (*(STACK[0x57D8] + 8 * ((1019 * !v4) ^ v0)))();
}

uint64_t sub_10040D6C0(int a1, uint64_t a2)
{
  v7 = STACK[0x5700];
  v8 = STACK[0x5710];
  v9 = -749512935 * *(v3 + STACK[0x5710]);
  v10 = STACK[0x5710] + v2;
  LODWORD(STACK[0x5740]) = (LODWORD(STACK[0x5700]) - 1416) | 0x800;
  v11 = (v9 ^ v6) + ((v8 + v2 + (v9 ^ v6)) >> ((v7 + 120) ^ 1));
  v12 = (v11 + v5) >> 8;
  v13 = v8 + v2 + v11 + v12;
  v14 = v8 + v4 + v11 + v12;
  v15 = ((v14 ^ v9) + v5 + (((v14 ^ v9) + v5) >> 16)) >> 8;
  LODWORD(v12) = v8 + v2 + (v14 ^ v9) + (((v14 ^ v9) + v5) >> 16) + v15;
  v16 = v8 + v4 + (v14 ^ v9) + (((v14 ^ v9) + v5) >> 16) + v15;
  LODWORD(v15) = (v13 >> 2) & 0x3EF7FEED;
  v17 = v13 ^ a1;
  v18 = (v12 >> 2) & 0x3EF7FEED;
  v19 = v16 ^ v9;
  LODWORD(v15) = v17 ^ v15;
  v20 = (v19 + v5);
  LODWORD(v15) = v15 ^ v12;
  v21 = v20 >> 16;
  v22 = (v20 + WORD1(v20)) >> 8;
  LODWORD(v20) = v10 + v19 + ((v19 + v5) >> 16) + v22;
  LODWORD(STACK[0x5780]) ^= v14 ^ (v14 >> 2) & 0x3EF7FEED ^ v16 ^ (v16 >> 2) & 0x3EF7FEED ^ (v8 + v4 + v19 + v21 + v22) ^ ((v8 + v4 + v19 + v21 + v22) >> 2) & 0x3EF7FEED;
  return (*(STACK[0x57D8] + 8 * ((83 * (v10 == 15)) ^ v7)))(v15 ^ v18 ^ v20 ^ (v20 >> 2) & 0x3EF7FEED, a2 - 1);
}

uint64_t sub_10040D888@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, unsigned int a7@<W6>, int a8@<W8>)
{
  v15 = ((v12 * v8) ^ v13);
  *(v9 + 4 * (v12 * v8)) = v11 ^ ((((v15 ^ 0x7C) - (v15 ^ a2)) ^ 0xFFFFFFF0) + 2 * (v15 ^ 0x7C)) ^ *(*(a1 + 8 * v10) + 4 * (v15 ^ a7)) ^ a3;
  return (*(STACK[0x57D8] + 8 * (((v12 + a6 + ((v14 + 1837) | a5) == a8 + 256) * a4) ^ v14)))();
}

uint64_t sub_10040D960()
{
  v0 = STACK[0x16D8];
  v1 = 7 * (STACK[0x16D8] ^ 0x59B);
  v2 = STACK[0x57D8];
  STACK[0xB880] = *(STACK[0x57D8] + 8 * STACK[0x16D8]);
  return (*(v2 + 8 * (v0 + 5160 + v1)))();
}

uint64_t sub_10040DA24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W8>)
{
  v8 = *(STACK[0x57A0] + (a7 ^ (v7 - 920708012)));
  v9 = (((a7 & 0xFFFFFFC0 ^ 0x4A) + 46) ^ ((a7 & 0xFFFFFFC0 ^ 0xFFFFFF8E) - 22) ^ ((a7 & 0xFFFFFFC0 ^ 0x5D) + 59)) + (((v8 ^ 0xFFFFFF9C) + 100) ^ ((v8 ^ 0xFFFFFFBA) + 70) ^ ((v8 ^ 0xFFFFFF9B) + 101));
  v10 = v9 + 48;
  v11 = ((-49 - v9) & 0xFFFFFF8E | 0x50) ^ (v9 + 48) & 0xFFFFFFB4;
  v12 = v10 ^ (2 * ((v10 ^ 0xC) & (2 * ((v10 ^ 0xC) & (2 * ((v10 ^ 0xC) & (2 * ((v10 ^ 0xC) & (2 * ((v10 ^ 0xC) & (2 * v11) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11));
  LODWORD(STACK[0x5230]) = (((v12 ^ 0x3F) - 98) ^ ((v12 ^ 0xFFFFFF99) + 60) ^ ((v12 ^ 0x37) - 106)) - 60;
  v13 = *(STACK[0x57D8] + 8 * (v7 - 16949));
  LODWORD(STACK[0x54C0]) = 87;
  LODWORD(STACK[0x5378]) = 41;
  LODWORD(STACK[0x4FF0]) = 209;
  LODWORD(STACK[0x4F70]) = 19;
  LODWORD(STACK[0x4F78]) = 135;
  LODWORD(STACK[0x4F68]) = 11;
  LODWORD(STACK[0x5540]) = STACK[0x5008];
  return v13(a1, a2, a3, a4, a5, a6, 24);
}

uint64_t sub_10040DBD8(uint64_t a1)
{
  v1 = STACK[0x2528];
  STACK[0x7ED0] = STACK[0xC150];
  STACK[0xC880] = STACK[0x63D0];
  LODWORD(STACK[0xCD80]) = -2115088026;
  return (*(STACK[0x57D8] + 8 * v1))(a1, 272629776, 410912332, 1543499262, 2265206393, 3965507692, 4221484704, 0x1B3EC18598D49E09);
}

uint64_t sub_10040DCBC()
{
  v1 = ((v0 - 744892591) ^ 0x2584D051) & (2 * ((v0 - 744892591) & 0x9C8D562)) ^ (v0 - 744892591) & 0x9C8D562;
  v2 = (STACK[0x24C4] & 0xD9DE73FF ^ 0x7DB84880 ^ (((v0 - 0x867A45A2C6628AFLL) ^ 0x8751AE893714F811) << (STACK[0x2970] - 60))) & ((v0 - 744892591) ^ 0x3714F811) ^ (((v0 - 0x867A45A2C6628AFLL) ^ 0x8751AE893714F811) << (STACK[0x2970] - 60)) & 0x3EDC2D72;
  v3 = v2 ^ 0x2442511;
  v4 = (v2 ^ 0x2C000800) & (4 * v1) ^ v1;
  v5 = ((4 * v3) ^ 0xFB70B5CC) & v3 ^ (4 * v3) & 0x3EDC2D70;
  v6 = (v5 ^ 0x3A502540) & (16 * v4) ^ v4;
  v7 = ((16 * (v5 ^ 0x48C0833)) ^ 0xEDC2D730) & (v5 ^ 0x48C0833) ^ (16 * (v5 ^ 0x48C0833)) & 0x3EDC2D70;
  v8 = (v0 - 744892591) ^ (2 * ((((v7 ^ 0x121C2843) << 8) & 0x3EDC2D00 ^ 0x1C0C0000 ^ (((v7 ^ 0x121C2843) << 8) ^ 0xDC2D0000) & (v7 ^ 0x121C2843)) & (((v7 ^ 0x2CC00500) & (v6 << 8) ^ v6) << 16) ^ (v7 ^ 0x2CC00500) & (v6 << 8) ^ v6));
  *STACK[0x6348] = v8 ^ 0xDBD455F6;
  return (*(STACK[0x57D8] + 8 * ((13 * (v8 != 164156770)) ^ LODWORD(STACK[0x24C8]))))();
}

uint64_t sub_10040DE74()
{
  v0 = STACK[0x51B8];
  *(STACK[0xE458] + 456) = 0x1FF90131E266DB89;
  return (*(STACK[0x57D8] + 8 * (v0 - 8013)))();
}

uint64_t sub_10040DEDC@<X0>(uint64_t a1@<X8>)
{
  v1 = STACK[0x51B8] + 6790;
  v2 = (STACK[0x51B8] - 20886) | 0x2E;
  v3 = (STACK[0x51B8] - 86) | 0x56;
  v4 = *(a1 - 0x683CBC57EAB92A36);
  STACK[0x88A0] = 0;
  LODWORD(STACK[0xA96C]) = -769884012;
  STACK[0x7B70] = 0;
  return (*(STACK[0x57D8] + 8 * ((((v2 ^ 0xFFFFA143) + v3) * (v4 != 0x308E083E0C524CBELL)) ^ v1)))();
}

uint64_t sub_10040DF7C()
{
  v0 = STACK[0x51B8] ^ 0x1A6B;
  STACK[0xCF00] = 0;
  v1 = STACK[0x57D8];
  v2 = STACK[0xA50];
  STACK[0xBDE0] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0xA50]));
  return (*(v1 + 8 * (v0 + v2 - 14072)))(0x308E083E0C524CBELL);
}

uint64_t sub_10040E038()
{
  v1 = STACK[0x51B8] - 20800;
  LOWORD(STACK[0xD5EE]) = v0;
  return (*(STACK[0x57D8] + 8 * (v1 ^ 0x1E61)))();
}

uint64_t sub_10040E074@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a2;
  v5 = &STACK[0x1D280] + a1;
  *v5 = v4;
  *(v5 + 1) = *(v3 + 17);
  *(v5 + 9) = *(v3 + 25);
  *(v5 + 13) = *(v3 + 29);
  v5[15] = *(v3 + 31);
  v6 = *(v3 + 24);
  *(v5 + 2) = v4;
  *(v5 + 3) = v6;
  return (*(STACK[0x57D8] + 8 * v2))();
}

uint64_t sub_10040E0F0@<X0>(int a1@<W8>)
{
  v2 = ((a1 ^ 0x22D25944) + 940067394) ^ a1 ^ ((a1 ^ 0x256E070E) + 1068766220) ^ ((a1 ^ 0x3FFFA3AC ^ (6 * (v1 ^ 0x5520))) + 623241472) ^ (((6 * (v1 ^ 0x5520) + 1566961908) ^ a1) + 129784400);
  LODWORD(STACK[0x9730]) = (4 * v2) ^ 0x468B337C;
  STACK[0xCCA0] = STACK[0x9DB8];
  v3 = *STACK[0x45F8];
  v4 = *STACK[0x45F0];
  v5 = (3 * (v4 - v3) - 2 * ((3 * (v4 - v3)) & 3) + 11) & 0xB;
  v6 = ((((v2 >> 2) & 0xFFFFFFF ^ 0xBB6D5BBB) - 606623617) ^ (((v2 >> 2) & 0xFFFFFFF ^ 0x7721716E) + 396067500) ^ (((v2 >> 2) & 0xFFFFFFF ^ 0xC50551EB) - 1514167761)) + (((v5 ^ 0x2BE5229E) - 161029322) ^ ((v5 ^ 0x65EE05C) - 606264840) ^ ((v5 ^ 0x2DBBC2C9) - 264764573)) - 979205616;
  LODWORD(STACK[0xCAEC]) = (16 * (((v6 ^ 0xE960993C) + 193374832) ^ v6 ^ ((v6 ^ 0x2738C2E) + 9813886) ^ ((v6 ^ 0x9952600) + 192091476) ^ ((v6 ^ 0xF9FFFBE) + 226086126))) ^ 0xD19CCAC0;
  v7 = (19 * ((v4 ^ v3) ^ 0x10)) & 0x17;
  if (v7 == 1)
  {
    v7 = 0;
  }

  LODWORD(STACK[0x6EFC]) = v7;
  v8 = STACK[0x85C8];
  STACK[0xDD10] = STACK[0x85C8];
  return (*(STACK[0x57D8] + 8 * ((53 * (v8 == 0)) ^ v1)))();
}

uint64_t sub_10040E57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v7);
  return (*(v9 + 8 * (v7 ^ 0x1768)))(v8, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_10040E994(int a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x5258]) = 0;
  v21 = (v7 - 29457) | 0x2041;
  LODWORD(STACK[0x5650]) = v21;
  STACK[0x5750] = *(STACK[0x57D8] + 8 * ((37 * (((v7 - 102) ^ (v9 < v21 - 8640)) & 1)) ^ v7));
  LODWORD(STACK[0x5630]) = 3;
  LODWORD(STACK[0x5600]) = STACK[0x5760];
  LODWORD(STACK[0x55D0]) = STACK[0x54F0];
  LODWORD(STACK[0x5620]) = v8;
  LODWORD(STACK[0x55E0]) = v16;
  LODWORD(STACK[0x55B0]) = STACK[0x54E0];
  LODWORD(STACK[0x5610]) = v11;
  LODWORD(STACK[0x55F0]) = a7;
  LODWORD(STACK[0x55C0]) = STACK[0x53C8];
  LODWORD(STACK[0x55A0]) = STACK[0x53F0];
  LODWORD(STACK[0x5590]) = v18;
  LODWORD(STACK[0x5580]) = STACK[0x54C0];
  LODWORD(STACK[0x5570]) = STACK[0x5408];
  LODWORD(STACK[0x5560]) = v12;
  LODWORD(STACK[0x5550]) = v14;
  LODWORD(STACK[0x5540]) = STACK[0x5400];
  LODWORD(STACK[0x5388]) = STACK[0x53D8];
  LODWORD(STACK[0x5370]) = a2;
  LODWORD(STACK[0x5430]) = a1;
  LODWORD(STACK[0x5368]) = a1;
  LODWORD(STACK[0x5360]) = v15;
  LODWORD(STACK[0x5358]) = STACK[0x53F8];
  LODWORD(STACK[0x5350]) = v13;
  LODWORD(STACK[0x5348]) = STACK[0x5740];
  LODWORD(STACK[0x5340]) = STACK[0x53E8];
  LODWORD(STACK[0x5338]) = STACK[0x54B0];
  LODWORD(STACK[0x5318]) = STACK[0x5520];
  LODWORD(STACK[0x5440]) = a3;
  LODWORD(STACK[0x5328]) = a3;
  LODWORD(STACK[0x5330]) = STACK[0x5510];
  LODWORD(STACK[0x5320]) = STACK[0x5420];
  LODWORD(STACK[0x5310]) = STACK[0x53B8];
  LODWORD(STACK[0x5308]) = STACK[0x5410];
  LODWORD(STACK[0x5300]) = STACK[0x5460];
  LODWORD(STACK[0x52F8]) = STACK[0x5500];
  LODWORD(STACK[0x52F0]) = STACK[0x54D0];
  LODWORD(STACK[0x52E8]) = STACK[0x56C0];
  LODWORD(STACK[0x52D8]) = STACK[0x53E0];
  LODWORD(STACK[0x52E0]) = v19;
  LODWORD(STACK[0x52D0]) = v10;
  LODWORD(STACK[0x53A0]) = v17;
  LODWORD(STACK[0x52C8]) = v17;
  LODWORD(STACK[0x52C0]) = STACK[0x5398];
  LODWORD(STACK[0x52B8]) = v20;
  LODWORD(STACK[0x52B0]) = STACK[0x5380];
  LODWORD(STACK[0x52A8]) = STACK[0x5730];
  LODWORD(STACK[0x52A0]) = a5;
  LODWORD(STACK[0x5298]) = STACK[0x5390];
  LODWORD(STACK[0x5290]) = STACK[0x5720];
  return (STACK[0x5750])();
}

uint64_t sub_10040F0C4()
{
  v0 = STACK[0x51B8] ^ 0x4585;
  v1 = STACK[0x57D8];
  v2 = STACK[0x3F8C];
  STACK[0xCFB8] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x3F8C]));
  return (*(v1 + 8 * (v0 + v2 - 298)))();
}

uint64_t sub_10040F130()
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xA2C4];
  LODWORD(STACK[0x9094]) = -32197384;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10040F204()
{
  v0 = STACK[0x51B8] - 143135685;
  v1 = STACK[0x57D8];
  STACK[0x9BF0] = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x2468)))(2560);
  return (*(v1 + 8 * (v0 ^ 0xF7784B61)))();
}

uint64_t sub_10040F3A0()
{
  v0 = STACK[0x51B8];
  v1 = (STACK[0x51B8] - 22549) | 0x5108;
  v2 = STACK[0xD610];
  *(v2 + 244) = -769884012;
  *(v2 + 392) = 0;
  *(v2 + 360) = 0;
  v3 = *STACK[0x51E8];
  v4 = *STACK[0x51F0];
  v5 = *(v4 + (v3 & 0x13F614F0)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x32676144483E81A6;
  *(v2 + 448) = v5 + 0x40791AC78BD5C571 + 2 * ((v5 & 0x40791AC78BD5C541 | 0x30) ^ (v5 | (v1 + 0x7FFFFFFFFFFFAE86))) + 2;
  *(v2 + 456) = 0x1FF90131E266DB89;
  *(v2 + 464) = *(v4 + (v3 & 0x4D1C521C)) & 0x7FFFFFFF ^ 0x5F3DF645;
  *(v2 + 468) = *(v4 + (v3 & 0xFADE648C)) & 0x7FFFFFFF ^ 0x462E6B12;
  *(v2 + 472) = -769884012;
  *(v2 + 476) = *(v4 + (v3 & 0xD265232C)) & 0x7FFFFFFF ^ 0x11CBAE4E;
  *(v2 + 480) = 0x1FF90131E266DB89;
  *(v2 + 488) = *(v4 + (v3 & 0xCBE8CA54)) & 0x7FFFFFFF ^ 0xEC54757;
  *(v2 + 492) = *(v4 + (v3 & 0x75C5FB70)) & 0x7FFFFFFF ^ 0x4E6B2699;
  v6 = STACK[0x57D8];
  STACK[0xCF38] = *(STACK[0x57D8] + 8 * (v0 - 19830));
  return (*(v6 + 8 * (v0 - 17534)))();
}

uint64_t sub_10040F568()
{
  v0 = (STACK[0x51B8] + 1877910425) & 0xF3DD6FFB;
  v1 = STACK[0x683C];
  STACK[0x7ED8] -= 432;
  return (*(STACK[0x57D8] + 8 * (((v1 == LODWORD(STACK[0x36D0]) - 143131424) * (v0 ^ 0x63CC6B99)) ^ LODWORD(STACK[0x2DD4]))))(637896474);
}

uint64_t sub_10040F65C()
{
  v0 = STACK[0x51B8] - 20619;
  v1 = STACK[0xDB30];
  STACK[0xD038] = STACK[0xDB30];
  return (*(STACK[0x57D8] + 8 * (v0 ^ 0x1BA4)))(v1 + 4);
}

uint64_t sub_10040F6AC()
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0x9E58];
  LODWORD(STACK[0x9094]) = -32197431;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10040F764()
{
  v2 = v1 + 294137158 - ((2 * v1) & 0x23105A8C);
  v4 = v2 == 294137158 || (((v0 - 1341127701) & 0x4FEFBE5F ^ 0x1E49) & v2) != 323 * (v0 ^ 0x5BF2) - 2901;
  return (*(STACK[0x57D8] + 8 * ((2040 * v4) ^ v0)))();
}

uint64_t sub_10040F928()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 6987)))(LODWORD(STACK[0x89A4]));
  STACK[0x9C88] = v2;
  return (*(v1 + 8 * (((((v0 + 58) ^ (v2 == 0)) & 1) * ((v0 - 1119225354) & 0x42B5BDDF ^ 0x18C2)) ^ v0)))();
}

uint64_t sub_10040F9B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X4>, int a3@<W8>)
{
  v3 = STACK[0xCBA0];
  v4 = STACK[0xA9E8];
  v5 = STACK[0x753C];
  v6 = STACK[0x76F0];
  v7 = STACK[0x5C00];
  v8 = STACK[0x8F88];
  v9 = STACK[0x924B];
  STACK[0x5CC0] = 0x16973A6C0E658D69;
  STACK[0x9DF0] = v3;
  LODWORD(STACK[0x9DC4]) = v5;
  STACK[0x7B30] = v4;
  LODWORD(STACK[0x6DD4]) = v6;
  STACK[0x96F8] = 0;
  LODWORD(STACK[0x8814]) = -769884012;
  STACK[0xCDA0] = v7;
  STACK[0x5888] = v8;
  LOBYTE(STACK[0xADC7]) = v9;
  LODWORD(STACK[0x99E4]) = -1392055474;
  return (*(STACK[0x57D8] + 8 * (((a3 != -2050299684) * (a3 + 1158663310)) ^ (a3 + 1158657649))))(104, a1, 0x30BDFED8F32E6831, 0x36584CF65D907F3ELL, a2, 0xB83E331A657D2BFCLL);
}

uint64_t sub_10040FB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v7 = LODWORD(STACK[0x4DD0]) != 939601520;
  v8 = (STACK[0x51B8] - 22556) | 0x404;
  v9 = (STACK[0x51B8] - 419625047) & 0x1902E47F;
  v10 = STACK[0x51B8] + 4000;
  STACK[0x61F0] = STACK[0x4DD8];
  STACK[0xCEC8] = a7;
  return (*(STACK[0x57D8] + 8 * (((v9 + v8 - 14537) * v7) ^ v10)))();
}

uint64_t sub_10040FB88()
{
  v1 = STACK[0xC7C8];
  *(v1 + 152) = STACK[0xCD30];
  *(v1 + 160) = STACK[0xA118];
  *(v1 + 168) = STACK[0x7558];
  *(v1 + 172) = 1;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10040FC6C()
{
  v0 = STACK[0x51B8] ^ 0x91F;
  v1 = STACK[0x51B8] - 19754;
  v2 = STACK[0x57D8];
  STACK[0xCF38] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v0 ^ v1 ^ 0x49BD)))();
}

uint64_t sub_10040FD1C()
{
  v0 = STACK[0x82B0];
  v1 = STACK[0x8238];
  v2 = LODWORD(STACK[0xC620]);
  v3 = STACK[0x5DD0];
  v4 = LODWORD(STACK[0x6F60]);
  v5 = STACK[0x51B8] - 33326 + LODWORD(STACK[0x2D38]);
  LODWORD(STACK[0x57C0]) = 48;
  return (*(STACK[0x57D8] + 8 * v5))(v0, 3525083284, STACK[0xCA60], v1, v2, v3, v4, &STACK[0xB0BC]);
}

uint64_t sub_10040FEEC@<X0>(int a1@<W8>)
{
  *(v1 + 352) = STACK[0xA0E8];
  v2 = STACK[0x9AD4];
  LODWORD(STACK[0xA94C]) = STACK[0x9AD4];
  return (*(STACK[0x57D8] + 8 * ((a1 - 22613) ^ 0x2D83 ^ (21673 * (v2 == (((a1 - 21838) | 0x4091) ^ 0xF7780708))))))();
}

uint64_t sub_10040FF6C()
{
  v0 = STACK[0x51B8] - 1805;
  v1 = STACK[0x51B8] - 19793;
  v2 = STACK[0x57D8];
  STACK[0xCF38] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v0 - 18550 + v1)))();
}

uint64_t sub_1004100B8@<X0>(uint64_t a1@<X4>, int a2@<W5>, int a3@<W6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v21 = (v9 ^ 0xF6CFC5FF) & (2 * ((STACK[0x57C0] & 0xC8FF7A77 ^ 0xC68FB1A8) & v9)) ^ (STACK[0x57C0] & 0xC8FF7A77 ^ 0xC68FB1A8) & v9;
  v22 = ((2 * (v9 ^ LODWORD(STACK[0x57B0]))) ^ 0x68B1DEE2) & (v9 ^ LODWORD(STACK[0x57B0])) ^ (2 * (v9 ^ LODWORD(STACK[0x57B0]))) & a2;
  v23 = v22 ^ 0x94482111;
  v24 = (v22 ^ 0xA010CE61) & (4 * v21) ^ v21;
  v25 = ((4 * v23) ^ 0xD163BDC4) & v23 ^ (4 * v23) & a2;
  v26 = (v25 ^ 0x9040AD50) & (16 * v24) ^ v24;
  v27 = ((16 * (v25 ^ 0x24184231)) ^ 0x458EF710) & (v25 ^ 0x24184231) ^ (16 * (v25 ^ 0x24184231)) & a2;
  v28 = v26 ^ (a2 + 1) ^ (v27 ^ 0x408E761) & (v26 << 8);
  v29 = ((v28 << 16) ^ 0x6F710000) & (((v27 ^ 0xB0500861) << 8) & a3 ^ 0x24100000 ^ (((v27 ^ 0xB0500861) << 8) ^ 0x58EF0000) & (v27 ^ 0xB0500861));
  v30 = v6 + v5;
  v31 = *(*v12 + ((*v10 & ((v30 & 0xFFFFFFF8) + v13)) & 0xFFFFFFFFFFFFFFF8));
  v32 = (__ROR8__(v30 & 0xFFFFFFFFFFFFFFF8, 8) + v31) ^ a1;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0x153242EE3CF06A49;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (v28 << 16) & a3 ^ v28 ^ v29;
  v38 = (v14 - ((v36 + v35) | v14) + ((v36 + v35) | 0x1F14EC46A824BA78)) ^ 0x3D613881901183E3;
  v39 = v38 ^ __ROR8__(v35, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0xE5AF1AB32EBD3CDDLL;
  v41 = __ROR8__(v40, 8);
  v42 = v40 ^ __ROR8__(v39, 61);
  v43 = (((2 * (v41 + v42)) & 0x9394A061B0F3B938) - (v41 + v42) + 0x3635AFCF27862363) ^ 0xF1E86639EBC39442;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = __ROR8__(v43, 8);
  v46 = (v20 - ((v45 + v44) | v20) + ((v45 + v44) | 0xAE4F1D4373518CC7)) ^ 0x6693DE62A8356BFLL;
  v47 = v46 ^ __ROR8__(v44, 61);
  v48 = __ROR8__(v46, 8);
  v49 = (((v48 + v47) & 0xC25C4C9F91B92FFBLL ^ 0xC018049001090BE3) + ((v48 + v47) & 0x3DA3B3606E46D004 ^ 0x5A293006E044005) - 1) ^ 0x9A377BAECC9541FCLL;
  v50 = *(a5 + 4 * (((v9 ^ (2 * v37)) >> 2) ^ 0x39A78DC7) + 72);
  v51 = v49 ^ __ROR8__(v47, 61);
  v52 = __ROR8__(v49, 8);
  *v30 = v50 ^ 0x45 ^ (((v18 - ((v52 + v51) | v18) + ((v52 + v51) | 0x2694772624D08F1BLL)) ^ 0xE757BFF48015C733) >> (8 * (v30 & 7u)));
  v53 = v6 + v5 + 1;
  v54 = *(*v12 + ((*v10 & (v13 + (v53 & 0xFFFFFFF8) - 1)) & 0xFFFFFFFFFFFFFFF8));
  v55 = __ROR8__(v53 & 0xFFFFFFFFFFFFFFF8, 8);
  v56 = __ROR8__((v11 - ((v54 + v55) | v11) + ((v54 + v55) | 0x9FF91125F5085B8)) ^ 0xFDE9C05BC00EB9DFLL, 8);
  v57 = (v11 - ((v54 + v55) | v11) + ((v54 + v55) | 0x9FF91125F5085B8)) ^ 0xFDE9C05BC00EB9DFLL ^ __ROR8__(v54, 61);
  v58 = (((2 * (v56 + v57)) & 0x22680DFA3B0E97AALL) - (v56 + v57) + 0x6ECBF902E278B42ALL) ^ 0x7BF9BBECDE88DE63;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = __ROR8__(v58, 8);
  v61 = (v15 - ((v60 + v59) | v15) + ((v60 + v59) | 0x6EEDAB41A448DA6ALL)) ^ 0x4C987F869C7DE3F1;
  v62 = v61 ^ __ROR8__(v59, 61);
  v63 = __ROR8__(v61, 8);
  v64 = (v7 - ((v63 + v62) | v7) + ((v63 + v62) | 0x1CEBEAE8E6DC2AC9)) ^ 0xF944F05BC8611614;
  v65 = v64 ^ __ROR8__(v62, 61);
  v66 = (__ROR8__(v64, 8) + v65) ^ 0xC7DDC9F6CC45B721;
  v67 = v66 ^ __ROR8__(v65, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ 0xA82620A559D2DA78;
  v69 = __ROR8__(v68, 8);
  v70 = v68 ^ __ROR8__(v67, 61);
  v71 = (v69 + v70 - ((2 * (v69 + v70)) & 0xD640282177A93F28) + 0x6B201410BBD49F94) ^ 0x34ADF82E184C958FLL;
  *v53 = (((__ROR8__(v71, 8) + (v71 ^ __ROR8__(v70, 61))) ^ v17) >> (8 * (v53 & 7u))) ^ BYTE1(v50) ^ 0x84;
  v72 = v6 + v5 + 2;
  v73 = *(*v12 + ((((v72 & 0xFFFFFFF8) + v13) & *v10) & 0xFFFFFFFFFFFFFFF8));
  v74 = __ROR8__(v72 & 0xFFFFFFFFFFFFFFF8, 8);
  v75 = __ROR8__((((2 * (v73 + v74)) | 0xAD045F9CC028C28CLL) - (v73 + v74) + 0x297DD0319FEB9EBALL) ^ 0x22947E87FF4A5D21, 8);
  v76 = (((2 * (v73 + v74)) | 0xAD045F9CC028C28CLL) - (v73 + v74) + 0x297DD0319FEB9EBALL) ^ 0x22947E87FF4A5D21 ^ __ROR8__(v73, 61);
  v77 = (a4 - ((v75 + v76) | a4) + ((v75 + v76) | 0x372B9F7E7C1E2BABLL)) ^ 0x2219DD9040EE41E2;
  v78 = v77 ^ __ROR8__(v76, 61);
  v79 = __ROR8__(v77, 8);
  v80 = (((2 * (v79 + v78)) & 0x45402589A0CAE1C0) - (v79 + v78) - 0x22A012C4D06570E1) ^ 0xFF2A39FC17AFB684;
  v81 = v80 ^ __ROR8__(v78, 61);
  v82 = __ROR8__(v80, 8);
  v83 = (v8 - ((v82 + v81) | v8) + ((v82 + v81) | 0x1EB133D364E0338ALL)) ^ 0xFB1E29604A5D0F57;
  v84 = v83 ^ __ROR8__(v81, 61);
  v85 = __ROR8__(v83, 8);
  v86 = (v85 + v84 - ((2 * (v85 + v84)) & 0x2219F596E3A17A52) + 0x110CFACB71D0BD29) ^ 0xD6D1333DBD950A08;
  v87 = v86 ^ __ROR8__(v84, 61);
  v88 = __ROR8__(v86, 8);
  v89 = __ROR8__((((2 * (v88 + v87)) | 0x4362E3B07C85996ELL) - (v88 + v87) - 0x21B171D83E42CCB7) ^ 0x8997517D679016CFLL, 8);
  v90 = (((2 * (v88 + v87)) | 0x4362E3B07C85996ELL) - (v88 + v87) - 0x21B171D83E42CCB7) ^ 0x8997517D679016CFLL ^ __ROR8__(v87, 61);
  *v72 = (((__ROR8__((v89 + v90) ^ 0x5F8DEC3EA3980A1BLL, 8) + ((v89 + v90) ^ 0x5F8DEC3EA3980A1BLL ^ __ROR8__(v90, 61))) ^ v17) >> (8 * (v72 & 7u))) ^ BYTE2(v50) ^ 0x4B;
  v91 = v6 + v5 + 3;
  v92 = *(*v12 + ((((v91 & 0xFFFFFFF8) + v13) & *v10) & 0xFFFFFFFFFFFFFFF8));
  v93 = __ROR8__(v91 & 0xFFFFFFFFFFFFFFF8, 8);
  v94 = (((2 * (v92 + v93)) & 0x66756D3FE33EF8A6) - (v92 + v93) + 0x4CC549600E6083ACLL) ^ 0xB8D31829913EBFCBLL;
  v95 = v94 ^ __ROR8__(v92, 61);
  v96 = __ROR8__(v94, 8);
  v97 = (v96 + v95 - ((2 * (v96 + v95)) & 0xE7343EF5539D6334) + 0x739A1F7AA9CEB19ALL) ^ 0x66A85D94953EDBD3;
  v98 = v97 ^ __ROR8__(v95, 61);
  v99 = __ROR8__(v97, 8);
  v100 = (((2 * (v99 + v98)) | 0x898C547C978AAB3ALL) - (v99 + v98) - 0x44C62A3E4BC5559DLL) ^ 0x66B3FEF973F06C06;
  v101 = v100 ^ __ROR8__(v98, 61);
  v102 = (__ROR8__(v100, 8) + v101) ^ 0xE5AF1AB32EBD3CDDLL;
  v103 = __ROR8__(v102, 8);
  v104 = v102 ^ __ROR8__(v101, 61);
  v105 = (v103 + v104 - ((2 * (v103 + v104)) & 0x3A02643BF41280E6) + 0x1D01321DFA094073) ^ 0xDADCFBEB364CF752;
  v106 = v105 ^ __ROR8__(v104, 61);
  v107 = (__ROR8__(v105, 8) + v106) ^ 0xA82620A559D2DA78;
  v108 = v107 ^ __ROR8__(v106, 61);
  v109 = __ROR8__(v107, 8);
  v110 = (v109 + v108 - ((2 * (v109 + v108)) & 0x23028890B4DAECA0) + v16) ^ 0x4E0CA876F9F57C4BLL;
  *v91 = (((__ROR8__(v110, 8) + (v110 ^ __ROR8__(v108, 61))) ^ v17) >> (8 * (v91 & 7u))) ^ HIBYTE(v50) ^ 0xF2;
  v111 = v9 - 1267554408;
  v112 = *(a5 + 104) - 407587133;
  v113 = v112 < v19;
  v114 = v111 < v112;
  if (v111 < v19 != v113)
  {
    v114 = v113;
  }

  return (*(STACK[0x57D8] + 8 * (LODWORD(STACK[0x57A0]) | (16 * !v114))))();
}

uint64_t sub_100410AF4()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0xDB58];
  STACK[0xD070] = STACK[0xDB58];
  return (*(STACK[0x57D8] + 8 * (v0 - 15335)))(v1 + 4);
}

uint64_t sub_100410B44()
{
  v1 = STACK[0x9FE0];
  STACK[0xC150] = STACK[0x9FE0];
  return (*(STACK[0x57D8] + 8 * (((*(v1 - 0x1883660EE814440ELL) == 2101965968) * ((v0 + 19544) ^ 0x9A4)) ^ v0)))();
}

uint64_t sub_100410BB8()
{
  v0 = STACK[0x51B8] - 22030;
  LODWORD(STACK[0x8B2C]) += 4;
  return (*(STACK[0x57D8] + 8 * (v0 ^ 0x1595)))(STACK[0xDCF8]);
}

uint64_t sub_100410D88@<X0>(int a1@<W8>)
{
  *(v2 + 1168) = v4;
  *(v2 + 1180) = v1;
  *(v2 + 1184) = v3;
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  return (*(STACK[0x57D8] + 8 * ((v6 * (a1 + 23584 + (a1 ^ 0x41C5) - 51831)) ^ a1)))();
}

uint64_t sub_100410DE0()
{
  v1 = STACK[0x6A08];
  LODWORD(STACK[0x98F4]) = -143156040;
  STACK[0x6230] = v1;
  LODWORD(STACK[0x6974]) = -1624113657;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100410E3C()
{
  v0 = STACK[0x51B8] - 15352;
  v1 = STACK[0x51B8] - 15368;
  *(STACK[0x6DC0] + 368) = STACK[0x7020];
  return (*(STACK[0x57D8] + 8 * (((STACK[0x8FA8] == 0x79296B4A625EDF44) * (v0 ^ 0x1C4E)) | v1)))();
}

uint64_t sub_100410EA4()
{
  if (((((v0 ^ 0xD940) + 9920) ^ ((v0 ^ 0x6D71) - 28017) ^ ((v0 ^ 0x4698) - 18072)) - 3415) >= 0)
  {
    v1 = (LODWORD(STACK[0x25E0]) + 60 * (((v0 & 6 ^ 0x3E23) + 11804) ^ (v0 & 6 | 0x10B9) ^ ((v0 & 6 ^ 0x3E73) - 4532)) + 6056);
  }

  else
  {
    v1 = -(LODWORD(STACK[0x25E0]) + 60 * (((v0 & 6 ^ 0x3E23) + 11804) ^ (v0 & 6 | 0x10B9) ^ ((v0 & 6 ^ 0x3E73) - 4532)) + 6056);
  }

  v2 = *(STACK[0x65C8] - 0x30BDFED8F32E6551);
  STACK[0x6460] = v1 + 0x6672F5B7AF574C1FLL;
  v3 = v1 + 2962705698;
  v4 = (v2 > 0xFFFFFFFF4F68B8F5) ^ (v3 < 0xB097470A);
  v5 = v2 + 2962704138u > v3;
  if (v4)
  {
    v5 = v2 > 0xFFFFFFFF4F68B8F5;
  }

  return (*(STACK[0x57D8] + 8 * ((16123 * v5) ^ LODWORD(STACK[0x1E30]))))();
}

uint64_t sub_10041102C@<X0>(int a1@<W8>)
{
  v1 = a1 == 1460380713;
  v2 = a1 == 1460380713;
  v3 = (STACK[0x51B8] - 1796764057) & 0x6B181F57;
  v4 = 75 * (STACK[0x51B8] ^ 0x5847);
  v5 = STACK[0x51B8] - 17263;
  if (v1)
  {
    v6 = -143113071;
  }

  else
  {
    v6 = -143113091;
  }

  LODWORD(STACK[0xBF14]) = v6;
  return (*(STACK[0x57D8] + 8 * (((v3 + v4 + 933) * v2) ^ v5)))();
}

uint64_t sub_1004110B8()
{
  v2 = STACK[0x51B8];
  v3 = (STACK[0x51B8] - 22078) | 0x840;
  LODWORD(STACK[0xB2F8]) = v1;
  LOBYTE(STACK[0xB09F]) = v0;
  return (*(STACK[0x57D8] + 8 * (((v3 ^ 0x5169) * v0) ^ (v2 - 17949))))();
}

uint64_t sub_100411108()
{
  v1 = LODWORD(STACK[0x18B0]) | 0x1200;
  v2 = STACK[0x51B8] + v0;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))(STACK[0x8120]);
  return (*(v3 + 8 * ((v1 ^ 0xB1D) + v2)))(v4);
}

uint64_t sub_100411310()
{
  LODWORD(STACK[0xCA7C]) = 1978581539;
  STACK[0xB700] = 4;
  v1 = STACK[0x51B8];
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x2440)))(&STACK[0x1D1CD], &STACK[0x58EC], &STACK[0xB700], 0, 0);
  v4 = STACK[0x3700];
  v5 = (v0 + 0x256CD1CF365854DELL - 2 * ((v0 - 240) & 0x256CD1CF365855CELL)) ^ 0x54F1830178B50699;
  LODWORD(STACK[0x1D4C8]) = (LODWORD(STACK[0x3700]) | 0x31) - 551690071 * v5;
  STACK[0x1D4E0] = 551690071 * v5 + v3;
  LODWORD(STACK[0x1D4D0]) = 551690071 * v5;
  LODWORD(STACK[0x1D4C0]) = (v1 - 1079089617) ^ (551690071 * v5);
  LODWORD(STACK[0x1D4CC]) = v4 - 551690071 * v5;
  STACK[0x1D4D8] = -551690071 * v5;
  LODWORD(STACK[0x1D4C4]) = LODWORD(STACK[0x36FC]) ^ (551690071 * v5);
  v6 = (*(v2 + 8 * (v1 + 9201)))(v0 - 240);
  return (*(v2 + 8 * SLODWORD(STACK[0x1D4D4])))(v6);
}

uint64_t sub_100411440()
{
  v1 = STACK[0x1620] & 0x72657DCD;
  LODWORD(STACK[0x5B6C]) = v0;
  v2 = STACK[0xA130];
  v3 = STACK[0x91F0];
  *(v3 + 48) = *STACK[0xA130] ^ 0xEA4430B4;
  *(v3 + 52) = v1 ^ 0xEA442174 ^ *(v2 + 4);
  v4 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x161C]));
  return (*(v4 + 8 * SLODWORD(STACK[0x1618])))();
}

uint64_t sub_1004114D0@<X0>(int a1@<W0>, unint64_t a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, unint64_t a5@<X5>, int a6@<W6>, int a7@<W7>, int a8@<W8>)
{
  LODWORD(STACK[0xDE6C]) = a1;
  STACK[0xDE70] = v15;
  LODWORD(STACK[0xDE7C]) = a6;
  STACK[0xDE80] = v12;
  LODWORD(STACK[0xDE8C]) = a7;
  STACK[0xDEA0] = v9;
  STACK[0xDEA8] = v14;
  LODWORD(STACK[0xDEB0]) = a4;
  LOBYTE(STACK[0xDEB7]) = v13;
  STACK[0xDE90] = v10;
  LODWORD(STACK[0xDE98]) = v11;
  if (v10)
  {
    v19 = v11 == ((v8 - 1956422669) & 0x749C7F7F ^ 0xD21CD0EF);
  }

  else
  {
    v19 = 1;
  }

  v20 = STACK[0x7ED8];
  STACK[0x7ED8] += 256;
  LODWORD(STACK[0xDE9C]) = a8;
  STACK[0xC930] = a3;
  STACK[0xBE10] = a5;
  STACK[0x5C38] = a2;
  v21 = &STACK[0x10120] + v20;
  STACK[0x6288] = v21;
  STACK[0xDEB8] = v21;
  STACK[0x6BD8] = 0;
  STACK[0x7FD0] = 0;
  *(v17 + 3252) = -769884012;
  STACK[0x8960] = 0;
  LODWORD(STACK[0x6BAC]) = 0;
  *(v18 + 1984) = 0;
  STACK[0x8F28] = 0xD38CBDD3ACAFF84ALL;
  STACK[0x9BA0] = 0;
  LODWORD(STACK[0x6664]) = 0;
  v25 = !v19 && v16 != 0 && a8 != -769884012 && a3 != 0;
  return (*(STACK[0x57D8] + 8 * ((21 * v25) ^ v8)))();
}

uint64_t sub_100411610@<X0>(_DWORD *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, unsigned int a4@<W5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v25 = STACK[0x57C0] + v9;
  v26 = *(*v14 + (*a1 & (v12 ^ v7) & ((v25 & 0xFFFFFFF8) - 103642729)));
  v27 = __ROR8__(v25 & 0xFFFFFFFFFFFFFFF8, 8);
  v28 = (a3 - ((v27 + v26) | a3) + ((v27 + v26) | v23)) ^ v24;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ a5;
  v31 = __ROR8__(v30, 8);
  v32 = v30 ^ __ROR8__(v29, 61);
  v33 = ((v15 | (2 * (v31 + v32))) - (v31 + v32) + v16) ^ a6;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ a2;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ v19;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ v18;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ v17;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = __ROR8__(v41, 8);
  LOBYTE(v41) = *(a7 + v8);
  v44 = v8 + 1;
  *v25 = (((v43 + v42 - (v20 & (2 * (v43 + v42))) + v21) ^ v22) >> (8 * (v25 & 7u))) ^ v41;
  if (v11 < v13 != v44 > a4)
  {
    v45 = v11 < v13;
  }

  else
  {
    v45 = v44 + 1746257563 < v11;
  }

  return (*(STACK[0x57D8] + 8 * (((2 * !v45) | (16 * !v45)) ^ v10)))();
}

uint64_t sub_100411848@<X0>(int a1@<W8>)
{
  STACK[0x6E10] = v2;
  LODWORD(STACK[0x6890]) = v1;
  v3 = STACK[0xAF24] & (((2 * a1) ^ 0x2E05) + (a1 ^ 0x644C));
  LODWORD(STACK[0x9484]) = v3;
  return (*(STACK[0x57D8] + 8 * ((55 * (v1 < v3)) ^ a1)))();
}

uint64_t sub_1004118B0()
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xA1B8];
  LODWORD(STACK[0x9094]) = -32197452;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10041192C@<X0>(int a1@<W8>)
{
  v5 = STACK[0x57D8];
  STACK[0xA628] = *(STACK[0x57D8] + 8 * a1);
  STACK[0xEC40] = v3;
  LODWORD(STACK[0xEC4C]) = v4;
  STACK[0xEC50] = v2;
  v6 = STACK[0x7ED8];
  STACK[0xEC58] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v6 + 64;
  return (*(v5 + 8 * (((((v2 == 0) ^ (v1 + 15)) & 1) * (((v1 + 272256783) & 0xEFC54BEF) - 2734)) ^ v1)))();
}

uint64_t sub_100411A0C()
{
  v2 = v1 ^ 0xE8D3135;
  v3 = v0 < (((9 * (v2 ^ 0x409B) + 3934) | 0x5894) ^ 0xFE14CE1C);
  return (*(STACK[0x57D8] + 8 * ((4 * v3) | (16 * v3) | v2)))();
}

uint64_t sub_100411B24@<X0>(uint64_t a1@<X8>)
{
  v3 = STACK[0x7ED8];
  v4 = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7718] = STACK[0xDFF0] + a1;
  LODWORD(STACK[0xA814]) = v2;
  v5 = STACK[0xA3C0];
  STACK[0x7D50] = (v4 - 48);
  STACK[0xCD68] = (v4 - 48);
  STACK[0xC280] = (v4 - 16);
  STACK[0x70D8] = (v4 + 7);
  STACK[0x7788] = (v4 + 0x63A567E3E81FD35);
  STACK[0x6250] = (v4 + 0x3FF9F9826CABB762);
  STACK[0xC9F8] = (v4 + 0x52EFDEAB447FE2FCLL);
  STACK[0x8698] = (v4 + 14512);
  STACK[0x8540] = (v4 + 14560);
  STACK[0xA9D8] = (v4 + 14576);
  STACK[0x7ED8] = v3 + 14592;
  STACK[0x7D20] = v5;
  v6 = STACK[0x57D8];
  STACK[0xCFD8] = *(STACK[0x57D8] + 8 * v1);
  return (*(v6 + 8 * (((v1 + 21208) ^ 0x186D) + v1)))();
}

uint64_t sub_100411CBC@<X0>(int a1@<W8>)
{
  STACK[0xC8C0] = v2;
  LODWORD(STACK[0x9F6C]) = a1;
  STACK[0xA398] = &STACK[0xAA06];
  LODWORD(STACK[0xA7C0]) = 797714648;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_100411DCC@<X0>(int a1@<W8>)
{
  v1 = *(*STACK[0x51F0] + (*STACK[0x51E8] & 0x4B905A90)) & 0x7FFFFFFFFFFFFFFFLL;
  v2 = (v1 ^ 0x1412FC33B664102CLL) + 401809529 + (((STACK[0x64D8] ^ 0x4B61AC8B086708EALL ^ ((a1 + 319) | 0x6C05u)) - 0x4B61AC8B086765AFLL) ^ ((STACK[0x64D8] ^ 0x67CEAA6539CA84EBLL) - 0x67CEAA6539CA84EBLL) ^ ((v1 ^ 0x38BDFADD87C9F168 ^ STACK[0x64D8]) - (v1 ^ 0x38BDFADD87C9F168)));
  v3 = v2 < 0x17F32079;
  v4 = STACK[0x7FB8] + 401809529 < v2;
  if (STACK[0x7FB8] > 0xFFFFFFFFE80CDF86 != v3)
  {
    v4 = v3;
  }

  return (*(STACK[0x57D8] + 8 * ((3551 * v4) ^ (a1 | 0x634A))))();
}

uint64_t sub_100412124()
{
  STACK[0x7DC0] = *STACK[0xCCE8];
  LODWORD(STACK[0xA9D4]) = *STACK[0x81F8];
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1004121A8()
{
  v1 = STACK[0x51B8] - 18310;
  STACK[0xCA88] = v0;
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0x9F20];
  LODWORD(STACK[0x9094]) = -32197448;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_10041223C(uint64_t a1)
{
  v2 = STACK[0xB978];
  STACK[0xCE80] = STACK[0xB978];
  STACK[0x75C8] = &STACK[0x10042];
  STACK[0x7ED0] = v2;
  STACK[0xC880] = 0xD649DDB8A104088BLL;
  LODWORD(STACK[0xCD80]) = -329463961;
  return (*(STACK[0x57D8] + 8 * ((((v1 - 393500505) & 0xAFCE37D5 ^ 0x1F4B) * (v1 > 0xD44F4A01)) ^ (v1 - 1738943094))))(a1, 272629776, 410912332, 1543499262, 2265206393, 3965507692, 4221484704, 0x1B3EC18598D49E09);
}

uint64_t sub_1004123A0(int a1)
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xBE4C];
  LODWORD(STACK[0x9094]) = a1 + 48;
  return (*(STACK[0x57D8] + 8 * (v1 - 295)))();
}

uint64_t sub_100412578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0x57D8];
  STACK[0xD3B8] = *(STACK[0x57D8] + 8 * v6);
  return (*(v7 + 8 * (v6 ^ 0x6AA3)))(a1, a2, a3, a4, 0x9827CF4CE56C3ECLL, a6, 0xE39B6E8EBC4508FFLL);
}

uint64_t sub_100412690@<X0>(uint64_t a1@<X8>)
{
  v3 = a1 - 0x79296B4A625EDCF4;
  v2 = a1 == 0x79296B4A625EDCF4;
  v4 = *(a1 - 0x79296B4A625EDCB8);
  STACK[0x7D80] = v3;
  LODWORD(STACK[0x6E50]) = v4;
  STACK[0x7808] = 0;
  LODWORD(STACK[0xC050]) = -769884012;
  STACK[0x7BA0] = 0x2369327399A66D95;
  v5 = !v2;
  return (*(STACK[0x57D8] + 8 * (((((v1 ^ 0x2E4F) + 17171) ^ 0x5814) * v5) | v1)))();
}

uint64_t sub_100412778@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v10 = (v4 - 19541) | 0x1350u;
  v11 = *(*v8 + ((*v9 & (((v10 ^ 0xFFFFE0A9) & (v2 + v5) ^ 0x5B4D4A69) + 518975153 + ((2 * ((v10 ^ 0xFFFFE0A9) & (v2 + v5))) & 0xB69A94D0))) & 0xFFFFFFFFFFFFFFF8));
  v12 = __ROR8__((v10 ^ 0xFFFFFFFFFFFFE0A9) & (v2 + v5), 8);
  v13 = (((2 * (v12 + v11)) & 0x3D74AC9B170E656ELL) - (v12 + v11) - 0x1EBA564D8B8732B8) ^ 0x59CDA86695BFAE1BLL;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0x38C8B16AE7056877;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ v7;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (((2 * (v19 + v18)) & 0xEE81A36AE4C097F4) - (v19 + v18) - 0x7740D1B572604BFBLL) ^ 0x691ED3115CCA4D7FLL;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (v22 + v21 - ((2 * (v22 + v21)) & 0x9CF678CB7FEE37CLL) - 0x7B184C39A4008E42) ^ 0x5E87F8CA585DCE27;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (((2 * (v25 + v24)) | 0xEAD5CA72340B47C0) - (v25 + v24) + 0xA951AC6E5FA5C20) ^ 0xF5F07F4D13B9227;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (((2 * (v28 + v27)) & 0x17F76608B2B3F1A2) - (v28 + v27) + 0x74044CFBA6A6072ELL) ^ 0xA6F4401D8643D480;
  *(a1 + (v5 + a2)) = *(v2 + v5) ^ (((__ROR8__(v29, 8) + (v29 ^ __ROR8__(v27, 61))) ^ 0xF4730B31AE70757BLL) >> (8 * ((v2 + v5) & 7))) ^ 0xF;
  return (*(STACK[0x57D8] + 8 * ((954 * (v5 + 1 == v3)) ^ v6)))();
}

uint64_t sub_1004129E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);
  v4 = (v3 << ((v2 - 59) ^ 0x8D)) + ~v3;
  if (((v3 << ((v2 - 59) ^ 0x8D)) + ~v3 - 96) >= 0x9Fu || v3 >= ((v2 - 113) ^ 0x2Du))
  {
    v6 = 55;
  }

  else
  {
    v6 = 23;
  }

  return (*(STACK[0x57D8] + 8 * ((28 * ((v6 + v4 - 119) > 5u)) ^ v2)))();
}

uint64_t sub_100412A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v8 = v6 < v7;
  v9 = a5 + 1 + v7;
  v10 = v8 ^ (v9 < v7);
  v11 = v9 < v6;
  if (!v10)
  {
    v8 = v11;
  }

  return (*(STACK[0x57D8] + 8 * (a6 | (2 * !v8))))();
}

uint64_t sub_100412BDC()
{
  v0 = STACK[0x51B8] - 18532;
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9207)))(STACK[0xAA38]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_100412CD8()
{
  v0 = (STACK[0x51B8] - 548092519) & 0x20AAF7FF;
  v1 = STACK[0x51B8] - 19641;
  STACK[0x7DB0] = STACK[0x6550] + SLODWORD(STACK[0xB744]);
  v2 = STACK[0x57D8];
  STACK[0x7DD8] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0xCD5 ^ v0)))();
}

uint64_t sub_100412D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = STACK[0x9050];
  v7 = STACK[0x57D8];
  STACK[0xBF38] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x21F0]));
  return (*(v7 + 8 * SLODWORD(STACK[0x21EC])))(a1, a2, a3, a4, a5, a6, v6);
}

uint64_t sub_100412DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  STACK[0xE238] = v10;
  STACK[0xE240] = v8;
  v11 = STACK[0x7ED8];
  STACK[0xE248] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v11 + ((9806 * (v9 ^ a8)) ^ 0x4DDCLL);
  LODWORD(STACK[0x9A3C]) = v10[18];
  LODWORD(STACK[0x58FC]) = v10[19];
  LODWORD(STACK[0xCF1C]) = v10[20];
  LODWORD(STACK[0x64F8]) = v10[21];
  return (*(STACK[0x57D8] + 8 * v9))();
}

uint64_t sub_100412EA8@<X0>(uint64_t *a1@<X8>)
{
  v3 = &STACK[0x1D280] + v1;
  v4 = *a1;
  *(v3 + 17) = *(a1 + 1);
  *(v3 + 25) = *(a1 + 9);
  *(v3 + 29) = *(a1 + 13);
  v3[31] = *(a1 + 15);
  v6 = *a1;
  v5 = a1[1];
  *v3 = v6;
  *(v3 + 1) = v5;
  v3[16] = v4;
  return (*(STACK[0x57D8] + 8 * v2))();
}

uint64_t sub_100412F38()
{
  v1 = STACK[0x9008];
  v2 = STACK[0xC470];
  v3 = STACK[0xB0B0];
  v4 = STACK[0x67C8];
  v5 = STACK[0x51B8] + 847660746;
  v6 = 1379010179 * ((((v0 - 240) | 0xF030BE1) + (~(v0 - 240) | 0xF0FCF41E)) ^ 0x2B52328E);
  STACK[0x1D4D0] = STACK[0xB9D8];
  STACK[0x1D4E0] = v2;
  LODWORD(STACK[0x1D4E8]) = v6 - 467101311 + 1806817213 * v4;
  STACK[0x1D4D8] = v1;
  STACK[0x1D4C0] = v3;
  LODWORD(STACK[0x1D4C8]) = v5 ^ v6;
  v7 = STACK[0x57D8];
  v8 = (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x133C])))(v0 - 240);
  return (*(v7 + 8 * (((LODWORD(STACK[0x1D4EC]) == 221187128) * LODWORD(STACK[0x1340])) ^ LODWORD(STACK[0x1348]))))(v8);
}

uint64_t sub_10041308C@<X0>(int a1@<W8>)
{
  v1 = STACK[0x7508];
  v2 = STACK[0x8C38];
  STACK[0xDC78] = STACK[0x8C38];
  if (v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(STACK[0x57D8] + 8 * (((((a1 + 41) ^ v4) & 1) * (((a1 - 22599) | 0x487A) - 22382)) ^ a1)))();
}

uint64_t sub_1004131E0@<X0>(int a1@<W8>)
{
  STACK[0xD150] = STACK[0xCE98];
  STACK[0x6668] = 0x1883660EE8144416;
  return (*(STACK[0x57D8] + 8 * (a1 ^ 0x16D0u)))();
}

uint64_t sub_100413540()
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xC9CC];
  LODWORD(STACK[0x9094]) = -32197407;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100413600@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v2 = STACK[0x57D8];
  STACK[0xCFB8] = *(STACK[0x57D8] + 8 * a2);
  return (*(v2 + 8 * (((1527 * (a2 ^ 0xA88)) ^ 0x15C0) + a2)))(a1, 16390, -22613, 22798, 4294961082, 186);
}

uint64_t sub_100413788()
{
  v0 = (STACK[0x51B8] - 22542) | 0x1223;
  v1 = STACK[0x51B8] - 19667;
  STACK[0x9F90] = STACK[0xBD08] + SLODWORD(STACK[0xCAEC]);
  v2 = STACK[0x57D8];
  STACK[0xB058] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * ((v0 + 2161) ^ v1)))();
}

uint64_t sub_100413820()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0xDBE0];
  LODWORD(STACK[0xD118]) = (((LODWORD(STACK[0xDBE0]) ^ 0x74253CDA) - 1948597466) ^ (((STACK[0x51B8] - 11862) | 0x5008) + 1239499735 + (LODWORD(STACK[0xDBE0]) ^ 0xB61E4221)) ^ ((LODWORD(STACK[0xDBE0]) ^ 0x1027FE6F) - 271056495)) - 769884004;
  v2 = (((v1 ^ 0xCED2B55E) + 825051810) ^ ((v1 ^ 0xC1D217C7) + 1043195961) ^ ((v1 ^ 0xDD1C220D) + 585358835)) - 109694522;
  LODWORD(STACK[0xD11C]) = v2 ^ ((v2 ^ 0x24E23C4) - 622301932) ^ ((v2 ^ 0x78EF7281) - 1605813161) ^ ((v2 ^ 0xAA471B92) + 1927370054) ^ ((v2 ^ 0xF7BFFBFF) + 790213929) ^ 0xF54531BC;
  STACK[0xD120] = STACK[0x6060] + LODWORD(STACK[0xD10C]);
  STACK[0x9800] = 0;
  return (*(STACK[0x57D8] + 8 * (v0 - 7026)))();
}

uint64_t sub_100413A5C()
{
  v6 = 289235981 * (((v5 - 240) & 0x40521EA9 | ~((v5 - 240) | 0x40521EA9)) ^ 0x382F3169);
  STACK[0x1D4D0] = v3;
  STACK[0x1D4F0] = &STACK[0xAFF0];
  STACK[0x1D4E0] = &STACK[0xB374];
  LODWORD(STACK[0x1D4D8]) = v6 + 359748709;
  LODWORD(STACK[0x1D4EC]) = ((((v2 ^ 0x32103346) - 839922502) ^ ((v2 ^ 0xB94B4440) + 1186249664) ^ (((183 * (v0 ^ 0x34A4235A) + 1497888109) ^ v2) - 1497888658)) - 627343911) ^ v6;
  LODWORD(STACK[0x1D4C0]) = v0 - 883164088 - v6;
  STACK[0x1D4C8] = v1;
  v7 = STACK[0x57D8];
  v8 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x34A45F32)))(v5 - 240);
  *(v4 + 2392) *= 4;
  return (*(v7 + 8 * ((30697 * (v0 > 0x394C81A5)) ^ (v0 - 883160581))))(v8);
}

uint64_t sub_100413CF4()
{
  v1 = (((LODWORD(STACK[0x964C]) ^ 0xF671B1E5) + 160321051) ^ ((LODWORD(STACK[0x964C]) ^ 0x806FE723) + LODWORD(STACK[0x3724])) ^ (((((STACK[0x51B8] - 19917) | 0x2004) - 1543328827) ^ LODWORD(STACK[0x964C])) + 1543317934)) + 1121701809;
  v2 = (v0 + 1891585885) < 0x70BF4F1D;
  v3 = v2 ^ (v1 < 0x70BF4F1D);
  v4 = v0 + 1891585885 > v1;
  if (!v3)
  {
    v2 = v4;
  }

  STACK[0x57C0] = STACK[0x6F28];
  return (*(STACK[0x57D8] + 8 * ((28874 * v2) ^ LODWORD(STACK[0x44C4]))))(499, 106, 0xC693D3B38BFBAF3CLL, 0xE5AF1AB32EBD3CDDLL, 0x5B83B50EF1F21FCELL, 0x93FDEDAA23C3B830, 0x153242EE3CF06A49, 0x914A0CE92DD68ABBLL);
}

uint64_t sub_100413F40(uint64_t a1, int a2)
{
  v6 = STACK[0x5740];
  if ((STACK[0x5780] & 2) != 0)
  {
    v6 = STACK[0x5650];
  }

  LODWORD(STACK[0x53C8]) = v6;
  v7 = STACK[0x51C0];
  if ((STACK[0x57B0] & 2) != 0)
  {
    v7 = STACK[0x51B0];
  }

  LODWORD(STACK[0x5110]) = v7;
  v8 = v2 ^ 0x20;
  LODWORD(STACK[0x52F8]) = v8;
  LODWORD(STACK[0x51C0]) = 16843009 * v8;
  v9 = STACK[0x56D0];
  LODWORD(STACK[0x5158]) = LODWORD(STACK[0x57C0]) ^ ~(v4 & STACK[0x56D0]);
  LODWORD(STACK[0x5430]) = 16843009 * a2;
  LODWORD(STACK[0x5640]) = v5 ^ 0xE3E3E3E3 ^ (16843009 * a2);
  LODWORD(STACK[0x5168]) = v9 ^ ((v3 + 8602) | 0x22B) ^ 0x58CDC4E1;
  return (*(STACK[0x57D8] + 8 * v3))();
}

uint64_t sub_100414118()
{
  v2 = STACK[0x51B8] - 5335;
  LODWORD(STACK[0xDAF0]) = v1;
  LOBYTE(STACK[0xDAF7]) = v0;
  return (*(STACK[0x57D8] + 8 * (v2 ^ (236 * v0))))();
}

uint64_t sub_1004141EC()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x83B8];
  STACK[0x69F0] = STACK[0x83B8];
  return (*(STACK[0x57D8] + 8 * (((((v1 == 0) ^ LODWORD(STACK[0x419C])) & 1) * (v0 - 22601)) ^ LODWORD(STACK[0x23A4]))))();
}

uint64_t sub_100414290()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  return (*(v1 + 8 * (v0 + 3070)))(v2);
}

uint64_t sub_1004142FC()
{
  if (v2)
  {
    v3 = v1 > (((v0 + 2704) | 0x4068) - 19191);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  return (*(STACK[0x57D8] + 8 * ((v0 + 12637) ^ v0 ^ (24392 * v4))))();
}

uint64_t sub_100414350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(STACK[0x5370]) ^= LODWORD(STACK[0x5240]);
  v6 = STACK[0x57C0];
  v7 = STACK[0x5360];
  if (STACK[0x57C0])
  {
    v7 = STACK[0x5290];
  }

  v8 = STACK[0x5600];
  if (v6)
  {
    v8 = STACK[0x55E0];
    v9 = STACK[0x5288];
  }

  else
  {
    v9 = STACK[0x5630];
  }

  v10 = STACK[0x5278];
  if (v6)
  {
    v10 = STACK[0x5378];
  }

  v11 = (STACK[0x57C0] & 2) == 0;
  v12 = STACK[0x5490];
  if ((STACK[0x57C0] & 2) == 0)
  {
    v12 = STACK[0x5460];
  }

  LODWORD(STACK[0x5720]) = v12;
  v13 = STACK[0x54E0];
  if (!v11)
  {
    v13 = STACK[0x54A0];
  }

  LODWORD(STACK[0x5630]) = v13;
  v14 = STACK[0x55B0];
  if (v11)
  {
    v14 = STACK[0x5560];
  }

  LODWORD(STACK[0x55E0]) = v14;
  v15 = STACK[0x5550];
  if (!v11)
  {
    v15 = STACK[0x5540];
  }

  LODWORD(STACK[0x55B0]) = v15;
  v16 = STACK[0x5530];
  if (v11)
  {
    v16 = STACK[0x5520];
  }

  LODWORD(STACK[0x54E0]) = v16;
  v17 = STACK[0x5500];
  if (v11)
  {
    v17 = STACK[0x54D0];
  }

  LODWORD(STACK[0x5490]) = v17;
  v18 = STACK[0x5510];
  if (!v11)
  {
    v18 = STACK[0x54C0];
  }

  LODWORD(STACK[0x54A0]) = v18;
  v19 = STACK[0x5480];
  if (!v11)
  {
    v19 = STACK[0x5470];
  }

  LODWORD(STACK[0x5288]) = v19;
  if (v11)
  {
    v20 = v8;
  }

  else
  {
    v20 = v7;
  }

  LODWORD(STACK[0x5228]) = v20;
  LODWORD(STACK[0x5378]) = v7;
  LODWORD(STACK[0x5360]) = v8;
  if (v11)
  {
    v21 = v7;
  }

  else
  {
    v21 = v8;
  }

  LODWORD(STACK[0x5240]) = v21;
  LODWORD(STACK[0x5560]) = v9;
  LODWORD(STACK[0x5540]) = v10;
  if (v11)
  {
    v22 = v9;
  }

  else
  {
    v22 = v10;
  }

  LODWORD(STACK[0x5460]) = v22;
  if (STACK[0x5190])
  {
    v23 = STACK[0x5178];
  }

  else
  {
    v23 = STACK[0x5250];
  }

  if (STACK[0x5190])
  {
    v24 = STACK[0x5258];
  }

  else
  {
    v24 = STACK[0x5238];
  }

  v25 = STACK[0x5230];
  if (STACK[0x5190])
  {
    v26 = STACK[0x5218];
  }

  else
  {
    v25 = STACK[0x5260];
    v26 = STACK[0x51A0];
  }

  if (STACK[0x5190])
  {
    v27 = STACK[0x5270];
  }

  else
  {
    v27 = STACK[0x51A8];
  }

  v28 = (STACK[0x5780] & 2) == 0;
  LODWORD(STACK[0x5520]) = v23;
  LODWORD(STACK[0x5510]) = v24;
  if (v28)
  {
    v29 = v23;
  }

  else
  {
    v29 = v24;
  }

  LODWORD(STACK[0x5238]) = v29;
  v30 = STACK[0x5440];
  LODWORD(STACK[0x5550]) = v25;
  if (!v28)
  {
    v30 = v25;
  }

  LODWORD(STACK[0x5250]) = v30;
  v31 = STACK[0x5198];
  if (!v28)
  {
    v31 = STACK[0x5180];
  }

  LODWORD(STACK[0x5260]) = v31;
  v32 = STACK[0x53E8];
  if (v28)
  {
    v32 = a5;
  }

  LODWORD(STACK[0x5290]) = v32;
  LODWORD(STACK[0x5600]) = LODWORD(STACK[0x5740]) ^ 0x2249640A;
  v33 = *(STACK[0x57D8] + 8 * v5);
  v34 = STACK[0x53F8];
  LODWORD(STACK[0x5500]) = v26;
  if (v28)
  {
    v34 = v26;
  }

  LODWORD(STACK[0x5270]) = v34;
  v35 = STACK[0x53F0];
  if (!v28)
  {
    v35 = v27;
  }

  LODWORD(STACK[0x5278]) = v35;
  v36 = STACK[0x5430];
  if (!v28)
  {
    v36 = STACK[0x5420];
  }

  LODWORD(STACK[0x53E8]) = v36;
  return v33();
}

uint64_t sub_100414918@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v1) = v3;
  *(a1 - 0x308E083E0C524CBELL) = v3;
  return (*(STACK[0x57D8] + 8 * (v4 ^ v2 ^ (((v4 + 1088689743) & 0x91174FCF ^ 0x669C) * (v4 == -1371093278)))))();
}

uint64_t sub_10041497C@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W8>)
{
  v10 = *(v7 + v6) - (*(v5 + v6) ^ 0xF);
  v11 = (v10 ^ a3) + a1 + ((v10 << v8) & a2);
  v13 = v6 == 15 || v11 != v9;
  return (*(STACK[0x57D8] + 8 * ((v13 * a4) ^ a5)))();
}

uint64_t sub_1004149C8()
{
  STACK[0xC4D0] = &STACK[0x7BA0];
  LODWORD(STACK[0x7EBC]) = -1389924012;
  STACK[0x7910] = 0x1D9F5B454828635;
  LODWORD(STACK[0x9C14]) = 0;
  LODWORD(STACK[0xA25C]) = -1420789107;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100414A48()
{
  v1 = *(STACK[0x9A10] + 24);
  STACK[0xC9F0] = v1;
  return (*(STACK[0x57D8] + 8 * ((189 * (((v1 == 0) ^ (v0 - 8)) & 1)) ^ v0)))();
}

uint64_t sub_100414AAC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = v4 < a4;
  v8 = 8 * (STACK[0x57B0] + (v5 | ((v5 < 0x1085958F) << 32)) + 0x59352C465891A47) - 0x2C9A9623B076F158;
  *(STACK[0x5790] + v8) = *(v6 + v8) ^ 0x8484848484848484;
  if (v7 == v5 - 1306466176 < 0xC2A67E0E)
  {
    v7 = v5 - 1306466176 < v4;
  }

  return (*(STACK[0x57D8] + 8 * ((21 * !v7) ^ LODWORD(STACK[0x57A0]))))();
}

uint64_t sub_10041668C(int a1, int a2, int a3, int a4, int a5, uint64_t a6, int a7, int a8)
{
  LODWORD(STACK[0x5740]) = a8;
  LODWORD(STACK[0x5730]) = v11;
  LODWORD(STACK[0x5700]) = v10;
  LODWORD(STACK[0x5378]) = a7;
  LODWORD(STACK[0x5500]) = a5;
  LODWORD(STACK[0x5510]) = v12;
  LODWORD(STACK[0x54C0]) = a1;
  LODWORD(STACK[0x5520]) = v18;
  LODWORD(STACK[0x54D0]) = v17;
  LODWORD(STACK[0x54B0]) = v9;
  LODWORD(STACK[0x54E0]) = v16;
  LODWORD(STACK[0x54F0]) = v13;
  LODWORD(STACK[0x5760]) = a2;
  LODWORD(STACK[0x5388]) = a4;
  v22 = STACK[0x5640];
  v23 = STACK[0x5780];
  LODWORD(STACK[0x53B0]) = v15;
  v23[29] = v15;
  LODWORD(STACK[0x5398]) = v14;
  v23[108] = v14;
  v23[70] = STACK[0x53F0];
  v23[96] = STACK[0x53B8];
  v23[33] = STACK[0x5470];
  LODWORD(STACK[0x53A0]) = a3;
  v23[7] = a3;
  v23[13] = STACK[0x5740];
  v23[82] = STACK[0x53F8];
  v23[17] = STACK[0x5460];
  v23[76] = STACK[0x5730];
  v23[72] = STACK[0x56C0];
  v23[3] = STACK[0x5670];
  LODWORD(STACK[0x53A8]) = v19;
  v23[80] = v19;
  v23[23] = STACK[0x5408];
  v23[43] = STACK[0x53E8];
  v23[1] = STACK[0x5660];
  v23[19] = STACK[0x5490];
  v23[37] = STACK[0x5440];
  LODWORD(STACK[0x5390]) = v20;
  v23[21] = v20;
  v23[27] = STACK[0x5450];
  v23[88] = STACK[0x5410];
  LODWORD(STACK[0x5380]) = v8;
  v23[92] = v8;
  v23[39] = STACK[0x53D8];
  v23[31] = STACK[0x5430];
  v23[98] = STACK[0x5420];
  v23[86] = STACK[0x5700];
  v23[11] = STACK[0x53C8];
  v23[106] = STACK[0x53C0];
  v23[66] = STACK[0x56D0];
  v23[100] = STACK[0x53E0];
  v23[68] = STACK[0x5680];
  v23[78] = STACK[0x53D0];
  v23[90] = v21;
  v23[102] = STACK[0x5400];
  v23[41] = STACK[0x5480];
  v23[9] = STACK[0x56E0];
  v24 = *(STACK[0x57D8] + 8 * v22);
  LODWORD(STACK[0x5720]) = v21;
  return v24();
}

uint64_t sub_100416D44()
{
  v1 = STACK[0x51B8];
  v2 = (STACK[0x51B8] - 777332663) ^ 0xFF8;
  v3 = 1534937323 * ((v0 - 240) ^ 0xCD7888C2C6EEFB47);
  STACK[0x1D4C0] = STACK[0xB948] ^ v3;
  LODWORD(STACK[0x1D4D4]) = (v1 - 777332663) ^ v3;
  LODWORD(STACK[0x1D4CC]) = v3 + 1451493860 + v1;
  LODWORD(STACK[0x1D4E0]) = v3 + v1 - 777332663 + 53;
  LODWORD(STACK[0x1D4C8]) = v2 - v3;
  STACK[0x1D4D8] = v3;
  LODWORD(STACK[0x1D4D0]) = v3;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x2462)))(v0 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4E4])))(v5);
}

uint64_t sub_100416DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, int a4@<W3>, unsigned int a5@<W4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, int a9@<W8>)
{
  v15 = (a3 | ((a3 < (((a9 - 17236) | 0x430) ^ (v9 + 2888))) << 32)) + 0x37C1C03A921CC1DCLL;
  v16 = (*(a2 + 8 * v15 + 0x41F1FE2A791ABF48) ^ v13) * a6;
  v17 = v15 - 0x780FF4F68479EB27 + (((v16 ^ a8 ^ 0xD46E32948C05C0BDLL) + 0x48D7ED493CEEC744) ^ ((v16 ^ a8 ^ 0xA709806977F065F0) + 0x3BB05FB4C71B620FLL) ^ ((v16 ^ a8 ^ 0x7367B2FDFBF5A54DLL) - 0x102192DFB4E15D4CLL));
  v18 = (((v17 ^ 0xBB2BD3142172F698) + 0x18BF87CA03C0CD89) ^ v17 ^ ((v17 ^ 0x19C9E114ED5BCC2ALL) - 0x45A24A35301608C5) ^ ((v17 ^ 0x8167EA8F2E9131A2) + 0x22F3BE510C230AB3) ^ ((v17 ^ 0x7FEE73AE3FF5CFF0) - 0x2385D88FE2B80B10)) >> 32;
  v19 = v17 - (((v18 ^ 0x71E8F20DE7148563) - 0x5E36B1DD4684B3F9) ^ ((v18 ^ 0x82D15049746DDD04) + 0x52F0EC662A021462) ^ ((v18 ^ 0xF339A244CF12F346) + 0x23181E6B917D3A24)) + 0x73B6110D24B69D56;
  v20 = v19 + (v19 >> 16) + ((v19 + (v19 >> 16)) >> 8);
  v21 = v15 - 0x68FED7F4B5D0632 + ((((v20 + v12) ^ v16 ^ 0xBFD76D815E180B9BLL) - 0x536C78BDBD1F75BLL) ^ (((v20 + v12) ^ v16 ^ 0x5599178D53A76513) + 0x108742782991662DLL) ^ (((v20 + v12) ^ v16 ^ 0xEA4E7A0C0DBF6E88) - 0x50AFD00688769248));
  v22 = ((2 * (v21 ^ 0x79C477AED1681AFCLL)) ^ 0xE0D741C3E244804ELL) & (v21 ^ 0x79C477AED1681AFCLL) ^ (2 * (v21 ^ 0x79C477AED1681AFCLL)) & (v10 + 38);
  v23 = (v21 ^ 0x698FD72E91681ADALL) & (2 * (v21 & 0x89AFD74F204A5ADBLL)) ^ v21 & 0x89AFD74F204A5ADBLL;
  v24 = ((4 * (v22 ^ 0x1028A02011224021)) ^ 0xC1AE8387C489009CLL) & (v22 ^ 0x1028A02011224021) ^ (4 * (v22 ^ 0x1028A02011224021)) & (v10 + 36);
  v25 = ((16 * (v24 ^ 0x3041206031224023)) ^ 0x6BA0E1F12240270) & (v24 ^ 0x3041206031224023) ^ (16 * (v24 ^ 0x3041206031224023)) & (v10 + 32);
  v26 = (v24 ^ 0xC02A8081C0000000) & (16 * ((v22 ^ 0x6043004180000004) & (4 * v23) ^ v23)) ^ (v22 ^ 0x6043004180000004) & (4 * v23) ^ v23;
  v27 = (((v25 ^ 0xF041A0E0E1024007) << 8) ^ 0x6BA0E1F122402700) & (v25 ^ 0xF041A0E0E1024007) ^ ((v25 ^ 0xF041A0E0E1024007) << 8) & v10;
  v28 = (v25 ^ 0x2A000110200000) & (v26 << 8) ^ v26 ^ (v10 + 39) ^ (v27 ^ 0x6020A0E120000000) & (((v25 ^ 0x2A000110200000) & (v26 << 8) ^ v26) << 16);
  v29 = (v28 << 32) & 0x706BA0E100000000 ^ v28 ^ ((v28 << 32) ^ 0x7122402700000000) & (((v27 ^ 0x904B0000D1224027) << 16) & 0x706BA0E100000000 ^ 0x500A00C100000000 ^ (((v27 ^ 0x904B0000D1224027) << 16) ^ 0x20E1F12200000000) & (v27 ^ 0x904B0000D1224027));
  v30 = v21 - (((((v21 ^ (2 * v29)) >> 32) ^ 0xAA7D6D36CE1920B6) + 0x7AEA9B8EEDAD5F0) ^ ((((v21 ^ (2 * v29)) >> 32) ^ 0xD458CE3627070309) + 0x798B0AB807C4F651) ^ ((((v21 ^ (2 * v29)) >> 32) ^ 0x7E25A3006022B571) - 0x2C099871BF1EBFD7)) + 0x37839BDDCA49BE73;
  v31 = v30 + (v30 >> 16) + ((v30 + (v30 >> 16)) >> 8);
  v32 = a7 & (4 * v20) ^ v20 ^ a4 ^ a7 & (4 * v31) ^ v31;
  v33 = v15 + 0x55AF203C6F07F9F6 + ((((v31 + v12) ^ v16 ^ 0xB3B0B62D34DADEECLL) + 0x7B884FBDEEA17C2CLL) ^ (((v31 + v12) ^ v16 ^ 0x998885FA82908C29) + 0x51B07C6A58EB2EEFLL) ^ (((v31 + v12) ^ v16 ^ 0x2A3833D7B64A52C5) - 0x1DFF35B893CE0FFDLL));
  v34 = (((v33 ^ 0x743013624312E18ALL) - 0x2199C965B972A55FLL) ^ v33 ^ ((v33 ^ 0xF6B9398F7B11458BLL) + 0x5CEF1C777E8EFEA2) ^ ((v33 ^ 0x6ADFBB9D2D1D1A62) - 0x3F76619AD77D5EB6) ^ ((v33 ^ 0xBDFF4B77EF7EFAB6) + 0x17A96E8FEAE1419ELL)) >> 32;
  v35 = v33 - (((v34 ^ 0xD9141431A4F07E3FLL) + 0x41C64D5140871B65) ^ ((v34 ^ 0x8DE5B3E0668B30D4) + 0x1537EA8082FC5590) ^ ((v34 ^ 0x54F1A7D197D294ECLL) - 0x33DC014E8C5A0E48)) + 0x43287F58B77E7A88;
  v36 = v35 + (v35 >> 16) + ((v35 + (v35 >> 16)) >> 8);
  v37 = v32 ^ a7 & (4 * v36) ^ v36;
  if (a5 < v11 != a3 + 523302287 < 0x3DF0DBC9)
  {
    v38 = a5 < v11;
  }

  else
  {
    v38 = a3 + 523302287 < a5;
  }

  return (*(STACK[0x57D8] + 8 * ((474 * !v38) ^ a9)))(a1, a2, a3 + 523302287 + a1, v37);
}

uint64_t sub_100417678()
{
  STACK[0x4FC0] = v1;
  v2 = *(STACK[0x57D8] + 8 * (v0 - 1281));
  STACK[0x5240] = 1;
  return v2();
}

uint64_t sub_1004176CC()
{
  LODWORD(STACK[0x7AF4]) = v0;
  STACK[0x91D8] = v2;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x3AF7)))(v0 ^ 0xD21C8094);
  STACK[0x5C98] = v4;
  return (*(v3 + 8 * (((((v1 - 52) ^ (v2 > v4)) & 1) * ((v1 ^ 0x2D1B) - 27597)) ^ v1)))();
}

uint64_t sub_100417750()
{
  v0 = STACK[0x51B8] - 19657;
  STACK[0x57C0] = STACK[0x6600] + 24;
  STACK[0x5790] = STACK[0x69E0];
  return (*(STACK[0x57D8] + 8 * (v0 ^ 0x37E4)))();
}

uint64_t sub_100417864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v25 = *(v10 + 8) + v13;
  v26 = *v17 & 0xFFFFFFFFFFFFFFF8;
  v27 = *(*v15 + (((v25 & 0xFFFFFFF8) - 133448597) & v26));
  v28 = __ROR8__(v25 & 0xFFFFFFFFFFFFFFF8, 8);
  v29 = ((((v8 + a8) | v24) ^ v20) - (v28 + v27) + (v19 & (2 * (v28 + v27)))) ^ 0x2A2E4B9E59D40A59;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (v31 + v30 - ((2 * (v31 + v30)) & 0x2CFBF5B406F77E22) + 0x167DFADA037BBF11) ^ 0x9C3A8B96F0F7F892;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0xA26BE47A1A692F70;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ v18;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = ((v21 | (2 * (v38 + v37))) - (v38 + v37) + v9) ^ 0xC942C1A387474E38;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0x52F1884918D8D6A2;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (v43 + v42 - ((2 * (v43 + v42)) & 0xDAF3380C8866EC90) + 0x6D799C0644337648) ^ 0x6659EE68B5C54CE7;
  v45 = *(*v15 + ((470248893 * (((-795265643 * (v25 & 0xFFFFFFF8)) | 0x6889011A) + ((-795265643 * (v25 & 0xFFFFFFF8)) | 0x9776FEE5)) + 336800296) & v26));
  LOBYTE(v26) = 8 * (v25 & 7);
  v46 = (v45 + v28) ^ 0xB057743BD1A8F5BCLL;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ 0x8A47714CF38C4783;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = __ROR8__(v48, 8);
  v51 = (((2 * (v50 + v49)) & 0x671D273F514DD664) - (v50 + v49) + 0x4C716C60575914CDLL) ^ 0xEE1A881A4D303BBDLL;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ v18;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = v12 + v23 + ((((__ROR8__(v44, 8) + (v44 ^ __ROR8__(v42, 61))) ^ v22) >> v26) ^ *v25);
  v56 = (__ROR8__(v53, 8) + v54) ^ 0x7D0ACAAAE9EC381DLL;
  v57 = __ROR8__(v56, 8);
  v58 = v56 ^ __ROR8__(v54, 61);
  v59 = ((v16 & (2 * (v57 + v58))) - (v57 + v58) + 0x103D3671A6DBF5ECLL) ^ 0x42CCBE38BE03234ELL;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ 0xB20726EF1F63AAFLL;
  *v25 = v55 ^ (((__ROR8__(v61, 8) + (v61 ^ __ROR8__(v60, 61))) ^ v22) >> v26);
  return (*(STACK[0x57D8] + 8 * ((448 * (v14 < v11)) ^ v8)))();
}

uint64_t sub_100417C5C()
{
  v3 = *(v1 - 0x683CBC57EAB92A36);
  STACK[0x9798] = v0;
  STACK[0x73E8] = 0;
  return (*(STACK[0x57D8] + 8 * ((((((15061 * (v2 ^ 0x39F1)) ^ (v3 == 0x308E083E0C524CBELL)) & 1) == 0) * (v2 ^ 0x3A0B)) ^ v2)))();
}

uint64_t sub_100417E4C()
{
  v1 = (((LODWORD(STACK[0xDA6C]) ^ 0xFE749A8) - 266815912) ^ ((LODWORD(STACK[0xDA6C]) ^ 0x2AF68A7C) - 720800380) ^ ((LODWORD(STACK[0xDA6C]) ^ 0xF70D4340) + 150125760)) + ((9546 * (LODWORD(STACK[0x253C]) ^ 0x509F)) ^ 0x2ECD2E40);
  v3 = v1 > 0x5CB0C109 && (v0 ^ 0xF2A9u) + 1555087626 > v1;
  return (*(STACK[0x57D8] + 8 * ((54 * v3) ^ LODWORD(STACK[0x253C]))))();
}

uint64_t sub_100417F58()
{
  v3 = STACK[0x6A08];
  STACK[0xB420] = STACK[0x6D78];
  LODWORD(STACK[0x8C54]) = v2 - 16;
  STACK[0x8EA0] = v3;
  *(v1 + 1160) = -746967328;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100417FAC@<X0>(char a1@<W0>, int a2@<W3>, int a3@<W5>, int a4@<W6>, int a5@<W8>)
{
  v16 = STACK[0x5500];
  v17 = (v11 | a2) - (((v11 | a2) << (((STACK[0x5500] + 71) | 1) ^ 0x14)) & 0x31520000) + 413736207;
  LODWORD(STACK[0x5600]) = v5 & 0x35 ^ 0xC249B1A6 ^ (v17 & 0xD0891100 ^ 0xFDB666E5 ^ (v17 ^ 0x2756E220) & (a3 ^ 0x2F76C62F)) & (v5 ^ 0xFFFFFF64);
  v18 = (LODWORD(STACK[0x54F0]) | (((((LODWORD(STACK[0x54B0]) ^ 0x406C2E) & (LODWORD(STACK[0x54C0]) ^ 0xEEFF88) | STACK[0x54C0] & 0xD1) ^ 0x24BC03) & (LODWORD(STACK[0x54E0]) ^ 0xFEFFFF) ^ STACK[0x54E0] & 0x9B0000) << 8)) ^ 0x67516A;
  v19 = (v12 | a4) + 1742491716 - ((2 * (v12 | a4)) & 0xCFB80000);
  LODWORD(STACK[0x5580]) = v7 & 0x86 ^ 0x516204C2 ^ (((v19 ^ 0x8823AF81) & (v6 ^ 0x8A63DBC5) | v19 & 0x759C0000) ^ 0xBE9DDFBC) & (v7 ^ 0xFFFFFF27);
  if ((a1 & 0x10) != 0)
  {
    v20 = -268435456;
  }

  else
  {
    v20 = 0x10000000;
  }

  LODWORD(STACK[0x5590]) = (v13 | (v14 + v8 + v20) & 0xC400000 | (v15 | (v14 + v8 + v20)) & 0x4193C100 | (v15 | (v14 + v8 + v20)) & 0xB22C3E00) ^ 0x10000076;
  LODWORD(STACK[0x55E0]) = v9 ^ 0xADE19EE;
  LODWORD(STACK[0x55C0]) = LODWORD(STACK[0x54D0]) ^ 0x86A4D8D;
  LODWORD(STACK[0x55F0]) = v10 ^ 0xB2AEAE5F;
  LODWORD(STACK[0x55D0]) = a5 ^ 0x673E6E56;
  v21 = *(STACK[0x57D8] + 8 * v16);
  LODWORD(STACK[0x55A0]) = __ROR4__(v18, 8) ^ 0x6A64B76D;
  return v21();
}

uint64_t sub_100418328(uint64_t a1, _BYTE *a2)
{
  v7 = (v5 + v6);
  *a2 = ((v4 + 43) | 2) ^ 0x9C ^ v7[2];
  a2[1] = *(v5 + a1) ^ 0xA6;
  a2[2] = v7[3] ^ 1;
  a2[3] = v7[1] ^ 0x4A;
  v8 = v6 + 4 + v3;
  v10 = v2 >= v3 && v2 <= v8;
  return (*(STACK[0x57D8] + 8 * (((4 * v10) | (16 * v10)) ^ v4)))();
}

uint64_t sub_1004183B4()
{
  v1 = LODWORD(STACK[0x1E78]) | 0x12E6;
  v2 = (STACK[0x51B8] ^ 0x5FC9) + LODWORD(STACK[0xDA84]) - 1941;
  LODWORD(STACK[0xCF94]) = v2;
  v3 = ((v1 - 25918) ^ v0);
  LODWORD(STACK[0xCF98]) = v3;
  v4 = v3 + v2;
  LODWORD(STACK[0xCF9C]) = v4;
  return (*(STACK[0x57D8] + 8 * ((452 * (v4 > LODWORD(STACK[0xAEB4]))) ^ LODWORD(STACK[0x1E74]))))();
}

uint64_t sub_100418448()
{
  v0 = STACK[0x8AEC];
  STACK[0x7ED8] -= 32;
  return (*(STACK[0x57D8] + 8 * ((9360 * (v0 == -143113071)) ^ (STACK[0x51B8] - 16096))))();
}

uint64_t sub_1004184A0()
{
  v0 = STACK[0x51B8] - 1805;
  v1 = STACK[0x51B8] - 19746;
  v2 = STACK[0xD610];
  *(v2 + 432) = 0;
  *(v2 + 440) = -769884012;
  *(v2 + 496) = 988020014;
  *(v2 + 736) = -769884012;
  v3 = *STACK[0x51E8];
  v4 = *STACK[0x51F0];
  *(v2 + 744) = *(v4 + (v3 & 0x645C8A28)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x5CF48C4EEE5BDE29;
  *(v2 + 752) = *(v4 + (v3 & 0xA66FDD90)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x7E38F0E06E9D52ELL;
  *(v2 + 760) = -769884012;
  *(v2 + 776) = 0;
  *(v2 + 768) = *(v4 + (v3 & 0x74D5EAB0)) & (v0 ^ 0x7FFFFFFFFFFFAEB6) ^ 0x23414E84BD3BFC4CLL;
  *(v2 + 784) = -769884012;
  *(v2 + 352) = -769884012;
  *(v2 + 788) = 0;
  v5 = STACK[0x57D8];
  STACK[0xCF38] = *(STACK[0x57D8] + 8 * v1);
  return (*(v5 + 8 * (v1 ^ 0x18EC)))();
}

uint64_t sub_10041876C()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))(v0);
  STACK[0xC9C0] = 0;
  return (*(v1 + 8 * SLODWORD(STACK[0xF48])))(v2);
}

uint64_t sub_1004189CC()
{
  v2 = STACK[0xC540];
  v3 = STACK[0x57D8];
  v4 = v0;
  (*(STACK[0x57D8] + 8 * (v1 + 11395)))(STACK[0x6120], STACK[0xC540], 32);
  v5 = STACK[0x7ED8];
  (*(v3 + 8 * (v1 ^ 0x3387)))(v2, &STACK[0x10120] + STACK[0x7ED8] + 32, 32);
  STACK[0x7ED8] = (v1 ^ 0x1784u) - 6293 + v5 - 16225;
  STACK[0xB9B0] = 0;
  v6 = (*(v3 + 8 * (v1 + 11392)))(STACK[0x38E0], *(v4 + 8 * (v1 ^ 0x4C4C)) - 12, 1536, STACK[0x38D8]) != 0;
  return (*(v3 + 8 * ((50 * v6) ^ v1)))();
}

uint64_t sub_100418C00@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, int a6@<W8>)
{
  if (STACK[0xC458])
  {
    v6 = LODWORD(STACK[0x8454]) == ((((a6 + 41688388) & 0xFD83F97F) - 769896125) ^ (a6 - 6285));
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  return (*(STACK[0x57D8] + 8 * ((118 * v7) ^ a6)))(4293914623, 4294961853, a1, a2, a3, a4, a5, 3562894612);
}

uint64_t sub_100418EAC(uint64_t a1, uint64_t a2)
{
  v4 = -a2;
  v5 = STACK[0x1480];
  v6 = a1 + v3 + STACK[0x1480] + v4;
  v10 = STACK[0x18F8] + STACK[0x1480] + v4 < 0x10 || v6 < 0x10 || STACK[0x18F0] + v5 + v4 < 0x10 || STACK[0x18E8] + v5 + v4 < (2 * (((v2 - 13269) | 0x2080) ^ 0x3CA5)) - 10422;
  return (*(STACK[0x57D8] + 8 * ((73 * v10) ^ v2)))();
}

uint64_t sub_100418F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0xD594]) = v7;
  v9 = STACK[0x57D8];
  STACK[0xCF38] = *(STACK[0x57D8] + 8 * v8);
  return (*(v9 + 8 * ((((v8 - 423892773) & 0x19445DDB) - 14335) ^ v8)))(a1, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_100418FD0()
{
  v1 = STACK[0x7ED8];
  STACK[0x63F8] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v1 + ((v0 - 19576) | 0xA93u) - 627;
  STACK[0x5AD8] = 0xD38CBDD3ACAFF84ALL;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100419068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W3>, int a4@<W4>, int a5@<W5>, char a6@<W6>, char a7@<W8>)
{
  v12 = a7 + (((v8 - 45) & 0x7D ^ 0x83) & v10);
  if ((v12 & 2 & v9) != 0)
  {
    v13 = -(v12 & 2);
  }

  else
  {
    LOBYTE(v13) = v12 & 2;
  }

  v14 = *(*(a2 + 8 * (v8 ^ 0x248B)) + 4 * (((v13 + v9) ^ ((v12 & 0xFD) + a6 - 2 * (v12 & 0xFD & a6))) ^ 0x5Bu) - 8) ^ 0x4A7DB8F3;
  *(a1 + 4 * (a7 + (((v8 - 45) & 0x7D ^ 0x83) & v10))) = a3 ^ a4 ^ a5 ^ v14 ^ 0x2FC0A163 ^ (v14 >> 3) & 0x175A628E;
  return (*(STACK[0x57D8] + 8 * (((v11 != 0) * v7) ^ v8)))();
}

uint64_t sub_100419228()
{
  v3 = (((2 * v2) ^ 0xA33B5750) + 569496164) ^ (((2 * v2) ^ 0xAC54E97C) + 782134352) ^ (((3769 * (v1 ^ 0x75B5)) ^ 0x299C626E) + ((2 * v2) ^ 0xAB56BF04));
  v4 = v0 + 1262268688;
  v6 = v3 > 0x26F3841B && v3 + 608775412 < v4;
  return (*(STACK[0x57D8] + 8 * ((102 * v6) ^ v1)))();
}

uint64_t sub_100419354@<X0>(unint64_t a1@<X8>)
{
  STACK[0x1D4C8] = a1;
  LODWORD(STACK[0x1D4C0]) = v1 - 1964904101 * ((v2 - 240) ^ 0xFA22EB84) - 1070755257;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x6BDC)))(v2 - 240);
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_1004193D0()
{
  v2 = STACK[0x8058];
  v3 = STACK[0x9AE8] + 4;
  v4 = LOWORD(STACK[0x5B96]) ^ 0xF2A9;
  v5 = LOWORD(STACK[0x5B96]) ^ 0xBFEF0CF6;
  v6 = 1964904101 * ((2 * ((v1 - 240) & 0x776DB448) - (v1 - 240) - 2003678283) ^ 0x72B0A031);
  STACK[0x1D4C8] = *STACK[0x86D8];
  STACK[0x1D4C0] = STACK[0x3E18];
  LODWORD(STACK[0x1D4D4]) = v6 + v5 + ((v4 << ((v0 + 1) ^ 0x57)) & 0x1FCBE) + 1929101240;
  LODWORD(STACK[0x1D4E8]) = v0 - v6 + 5166;
  STACK[0x1D4D8] = v3;
  STACK[0x1D4E0] = v2;
  v7 = STACK[0x57D8];
  v8 = (*(STACK[0x57D8] + 8 * (v0 + 21252)))(v1 - 240);
  v9 = STACK[0x1D4D0];
  LODWORD(STACK[0xB1E8]) = STACK[0x1D4D0];
  return (*(v7 + 8 * ((247 * (v9 != -143113071)) ^ v0)))(v8);
}

uint64_t sub_100419578(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0xE648]) = a3;
  LOBYTE(STACK[0xE64F]) = 0;
  return (*(STACK[0x57D8] + 8 * v3))();
}

uint64_t sub_100419600()
{
  v1 = STACK[0x51B8] - 18310;
  STACK[0x5970] = v0;
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0x6F64];
  LODWORD(STACK[0x9094]) = -32197387;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1004196F4()
{
  v0 = STACK[0x3AF0];
  STACK[0xA230] = STACK[0xA320];
  STACK[0x7740] = STACK[0x7340];
  LODWORD(STACK[0xB998]) = 1985262324;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100419758(uint64_t a1)
{
  v2 = STACK[0x8C60];
  STACK[0x72F0] = STACK[0x8C60];
  STACK[0x75A8] = &STACK[0x1D1F8];
  STACK[0x7ED0] = v2;
  STACK[0xC880] = 0x6BB9542E1A0D8138;
  LODWORD(STACK[0xCD80]) = 1626814350;
  return (*(STACK[0x57D8] + 8 * (v1 ^ 0x733CD3F3)))(a1, 272629776, 410912332, 1543499262, 2265206393, 3965507692, 4221484704, 0x1B3EC18598D49E09);
}

uint64_t sub_100419870(int a1)
{
  LODWORD(STACK[0xDDC8]) = -143113071;
  LODWORD(STACK[0xDDCC]) = a1;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x220F)))();
  STACK[0xDDD0] = v3;
  return (*(v2 + 8 * (((v3 == 0) * ((3 * (v1 ^ 0x4343)) ^ ((v1 - 23085) | 0xD0) ^ 0x5CC7)) ^ v1)))();
}

uint64_t sub_1004199E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v7);
  return (*(v8 + 8 * (v7 ^ 0x1723 ^ (13943 * ((v7 ^ 0x1496462A) > 0x27AB3C64)))))(a1, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_100419AE8()
{
  STACK[0x8960] = STACK[0xCA58];
  LODWORD(STACK[0x6BAC]) = STACK[0xC0CC];
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100419CAC()
{
  v1 = STACK[0xC320];
  STACK[0xE6A8] = STACK[0xC320];
  v2 = STACK[0x8E90];
  v3 = *(v1 - 0x1883660EE814440ALL) + LODWORD(STACK[0x7D94]);
  v4 = *(v1 - 0x1883660EE814440ELL);
  LODWORD(STACK[0xE6B4]) = v3 - 2101965948;
  v3 += 1898248155;
  v5 = v3 < ((v0 - 5520) | 0x540) + 1807211403;
  v6 = v4 - 294753193 < v3;
  if (v5 != (v4 - 294753193) < 0x6BB7E0D3)
  {
    v6 = v5;
  }

  v7 = v2 == 0 || v6;
  if (v7)
  {
    v8 = -143155721;
  }

  else
  {
    v8 = -143113071;
  }

  LODWORD(STACK[0xE6B8]) = v8;
  return (*(STACK[0x57D8] + 8 * ((92 * v7) ^ v0)))();
}

uint64_t sub_100419DCC()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))(v0);
  STACK[0xA9B0] = 0;
  return (*(v1 + 8 * SLODWORD(STACK[0xF54])))(v2);
}

uint64_t sub_100419F6C@<X0>(int a1@<W8>)
{
  v1 = a1 + 25012;
  LODWORD(STACK[0x5660]) = (a1 + 25012) ^ 0x2CD0;
  v2 = 3698 * ((a1 + 25012) ^ 0x7856);
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (a1 + 25947)))(1032);
  v5 = STACK[0x5660];
  STACK[0xD278] = v4 + 0x258DA3F455597FD4;
  LODWORD(STACK[0x57C0]) = v2;
  return (*(v3 + 8 * (((v4 == 0) * ((v2 + 14288) ^ v5)) ^ v1)))();
}

uint64_t sub_10041A208(uint64_t a1, int a2)
{
  v5 = v3 < v4;
  v6 = v2 + 1;
  if (v5 == v6 > ((a2 + 13975) ^ (1149 * (a2 ^ 0x22A2u)) ^ 0xFFFFFFFF84F8423CLL))
  {
    v5 = v6 + 2064104778 < v3;
  }

  return (*(STACK[0x57D8] + 8 * ((17171 * v5) ^ a2)))();
}

uint64_t sub_10041A280()
{
  v3 = STACK[0x51B8];
  v4 = STACK[0x51B8] + v0;
  *(v1 + 600) = STACK[0xAE50];
  *(v1 + 592) = v3 - 711523751 * ((((2 * (v2 - 240)) | 0x2BB52328) - (v2 - 240) + 1780837996) ^ 0xA5C0B045) + 4438;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v3 ^ 0x244C)))(v2 - 240);
  return (*(v5 + 8 * (v4 ^ 0x148C ^ (972 * ((v4 ^ 0x3D9C0193u) < 0xE651E01B)))))(v6);
}

uint64_t sub_100431810()
{
  v0 = *(STACK[0x57D8] + 8 * ((13435 * (LODWORD(STACK[0x23EC]) == (STACK[0x51B8] ^ 0x3F6) - 1964478090)) ^ LODWORD(STACK[0x23F0])));
  STACK[0x8CB8] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x23F4]));
  return v0();
}

uint64_t sub_10043188C()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  return (*(v1 + 8 * (v0 - 1088)))(v2);
}

uint64_t sub_1004318B4()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x241B)))();
  *(v1 + 120) = 0;
  return (*(v2 + 8 * (v0 - 0x4000)))(v3);
}

uint64_t sub_100431928@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, int a9@<W8>)
{
  v23 = *(v9 + 4 * (a9 + v11 - 2));
  HIDWORD(v25) = v23 ^ 0x1616A;
  LODWORD(v25) = v23 ^ v21;
  v24 = v25 >> 17;
  HIDWORD(v25) = v23 ^ a6;
  LODWORD(v25) = v23 ^ a4;
  v26 = (v25 >> 19) ^ (v23 >> 10) ^ v24;
  v27 = *(v9 + 4 * (a9 + a1 + v10 - 7888));
  HIDWORD(v25) = v27 ^ a3;
  LODWORD(v25) = v27 ^ (a5 - 106);
  v28 = v25 >> 7;
  HIDWORD(v25) = v27 ^ a6;
  LODWORD(v25) = v27 ^ a4;
  v29 = (v25 >> 18) ^ (v27 >> 3) ^ v28;
  v30 = *(v9 + 4 * (a9 + v11 - 16));
  v31 = (*(v9 + 4 * (a9 + v11 - 7)) ^ a5) + (((v30 ^ v13) + 960829602) ^ ((v30 ^ v15) + v18) ^ ((v30 ^ a8) - 248809013)) + (((v26 ^ a2) + 1264984933) ^ ((v26 ^ a7) + 1293075883) ^ ((v26 ^ 0x6453616) - 1551417617)) + (((v29 ^ v16) + v17) ^ ((v29 ^ 0xCD32E9CE) + v14) ^ ((v29 ^ 0xFB12D3FE) - 608660299)) + v19;
  v32 = STACK[0x44CC];
  *(v9 + 4 * (a9 + v11)) = v31 ^ ((v31 ^ v20) - 1407238311) ^ ((v31 ^ 0x3DA6B2DC) + v22) ^ ((v31 ^ 0x11B989A6) - 1755864167) ^ ((v31 ^ 0x7FFFFBDD) + v12) ^ 0xBE52B4AB;
  return (*(STACK[0x57D8] + 8 * ((2023 * ((a9 - 1261123098) > 0x3F)) ^ v32)))();
}

uint64_t sub_100431B14()
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xCE4C];
  LODWORD(STACK[0x9094]) = -32197399;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100431C14()
{
  v2 = v0 - 8938;
  v3 = (v0 - 3529) | 0x1814;
  v4 = (v0 - 3529) ^ 0xD21CC0DE;
  v5 = v1 ^ 1;
  if (LODWORD(STACK[0x9F98]) != v4)
  {
    v5 = 1;
  }

  return (*(STACK[0x57D8] + 8 * ((v5 * (v3 ^ 0x5842)) ^ v2)))();
}

uint64_t sub_100431D2C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v14 = 15 * (LODWORD(STACK[0x5780]) ^ 0x3FF6);
  LODWORD(STACK[0x5790]) = v14;
  LODWORD(STACK[0x4EA0]) = LODWORD(STACK[0x5740]) - 529314715;
  v15 = a2 + v13 + 92417601;
  v16 = ((v15 & 0xFDF65B38) << (v14 ^ 0x60)) & (v15 ^ 0xFDE613B1) ^ v15 & 0xFDF65B38;
  v17 = ((2 * (v15 ^ 0x66207E1)) ^ 0xF728B9B2) & (v15 ^ 0x66207E1) ^ (2 * (v15 ^ 0x66207E1)) & 0xFB945CD8;
  v18 = v17 ^ 0x8944449;
  v19 = (v17 ^ 0xF3041889) & (4 * v16) ^ v16;
  v20 = ((4 * v18) ^ 0xEE517364) & v18 ^ (4 * v18) & 0xFB945CD8;
  v21 = (v20 ^ 0xEA105059) & (16 * v19) ^ v19;
  v22 = ((16 * (v20 ^ 0x11840C99)) ^ 0xB945CD90) & (v20 ^ 0x11840C99) ^ (16 * (v20 ^ 0x11840C99)) & 0xFB945CD0;
  v23 = v21 ^ 0xFB945CD9 ^ (v22 ^ 0xB9044C49) & (v21 << 8);
  v24 = (v15 ^ (2 * ((v23 << 16) & 0x7B940000 ^ v23 ^ ((v23 << 16) ^ 0x5CD90000) & (((v22 ^ 0x42901049) << 8) & 0x7B940000 ^ 0x6B800000 ^ (((v22 ^ 0x42901049) << 8) ^ 0x145C0000) & (v22 ^ 0x42901049))))) >> 15;
  v25 = ((v24 ^ 0xD5124776) + 1918575398) ^ ((v24 ^ 0x981AFD81) + 1062443475) ^ ((v24 ^ 0x4D09CD0A) - 364861094);
  v26 = a8 - v25 - v11 - v12 + v13 - 1402762283;
  v27 = (((v26 ^ 0xE1774CD5) + 522870152) ^ v26 ^ ((v26 ^ 0xB5C30AC8) + 1268652955) ^ ((v26 ^ 0x9A69576E) + 1681147453) ^ ((v26 ^ LODWORD(STACK[0x6A4])) + 824372877)) >> 3;
  v28 = ((v27 ^ 0xACBB23C3) + 1152095234) ^ ((v27 ^ 0xE9F88297) + 31995222) ^ ((v27 ^ 0x4577FC81) - 1385739452);
  v29 = a8 - v25 - v28 - v11 - v12 + v13;
  v30 = v29 + 156747934;
  v31 = ((v29 + 156747934) ^ 0x9ECE19D6) + 390309752;
  v32 = ((v29 + 156747934) ^ 0x8FC078C3) + 105760355;
  v33 = ((v29 + 156747934) ^ 0x3982DFB4) - 1341169386;
  v34 = ((v29 + 156747934) ^ 0x5EFEFFFF) - 680312481;
  v35 = ((((v29 + 1859492682) ^ 0x95EF9A36) + 997519175) ^ (v29 + 1859492682) ^ (((v29 + 1859492682) ^ 0xC8D48FFB) + 1716517516) ^ (((v29 + 1859492682) ^ 0xE3B060BC) + 1294669262) ^ (((v29 + 1859492682) ^ 0xEFEFFFF0) + 1098156688)) >> 15;
  v36 = ((v35 ^ 0xB20F852D) - 1510693074) ^ ((v35 ^ 0xFAAAA56C) - 313424019) ^ ((v35 ^ 0x48A58288) + 1600037001);
  v37 = v36 - v25 - v28;
  v38 = v37 + a8 - v11 - v12 + v13 + 132611553;
  v39 = (((v38 ^ 0xE9AEA5FE) + 337688562) ^ v38 ^ ((v38 ^ 0x462D17DD) - 1146944045) ^ ((v38 ^ 0x900D208C) + 1837314692) ^ ((v38 ^ 0x3DFF7F5F) - 1066308271)) >> 6;
  v40 = ((v39 ^ 0xF19EA097) + 2041898713) ^ ((v39 ^ 0xF14643D7) + 2037122457) ^ ((v39 ^ 0xD124F7) - 1996791111);
  v41 = v37 - v40 + a8 - v11 - v12 + v13;
  v42 = v41 - 261666797;
  LODWORD(STACK[0x57C0]) = ((v41 - 261666797) ^ 0xFBE1AF0D) + 1724933852;
  v43 = ((v41 - 261666797) ^ 0xB111532D) + 740334332;
  v44 = ((v41 - 261666797) ^ 0xDBC134D6) + 1190198529;
  v45 = ((v41 - 261666797) ^ 0xF3FFFEDF) + 1859008266;
  v46 = ((((v41 + 1669089084) ^ 0x5705F47E) - 2035241752) ^ (v41 + 1669089084) ^ (((v41 + 1669089084) ^ 0x484D77D8) - 1711788222) ^ (((v41 + 1669089084) ^ 0x9EFCDA7F) + 1330217703) ^ (((v41 + 1669089084) ^ 0xAFFEFEBF) + 2118886951)) >> 10;
  v47 = v36 + (((v46 ^ 0xBC4E55D7) - 773874392) ^ ((v46 ^ 0xC6275DB3) - 1414097596) ^ ((v46 ^ 0x7A629ACD) + 401822270));
  v48 = v47 - v25 - v28 - v40 + a8 - v11 - v12 + v13 + 856594231;
  v49 = (((v48 ^ 0xF03D5E13) + 1689645144) ^ v48 ^ ((v48 ^ 0x2DDF4E3B) - 1185423232) ^ ((v48 ^ 0x8969BE6C) + 501289001) ^ ((v48 ^ 0x3FFCFFFC) - 1418440260)) >> 4;
  v50 = v47 + (((v49 ^ 0xD4402A6F) - 955299399) ^ ((v49 ^ LODWORD(STACK[0x6A8])) + 717782694) ^ ((v49 ^ 0xEB704206) - 130080302)) - v25 - v28 - v40 + a8 - v11 - v12 + v13 + 254633958;
  v51 = (v50 ^ 0x186DC4E9) & (2 * (v50 & 0xA271C6C9)) ^ v50 & 0xA271C6C9;
  v52 = ((2 * (v50 ^ 0x58CC4C69)) ^ 0xF57B1540) & (v50 ^ 0x58CC4C69) ^ (2 * (v50 ^ 0x58CC4C69)) & 0xFABD8AA0;
  v53 = v52 ^ 0xA848AA0;
  v54 = (v52 ^ 0x90098080) & (4 * v51) ^ v51;
  v55 = ((4 * v53) ^ 0xEAF62A80) & v53 ^ (4 * v53) & 0xFABD8AA0;
  v56 = (v55 ^ 0xEAB40A80) & (16 * v54) ^ v54;
  v57 = ((16 * (v55 ^ 0x10098020)) ^ 0xABD8AA00) & (v55 ^ 0x10098020) ^ (16 * (v55 ^ 0x10098020)) & 0xFABD8AA0;
  v58 = v56 ^ 0xFABD8AA0 ^ (v57 ^ 0xAA988A00) & (v56 << 8);
  v59 = v50 ^ (2 * ((v58 << 16) & 0x7ABD0000 ^ v58 ^ ((v58 << 16) ^ 0xAA00000) & (((v57 ^ 0x502500A0) << 8) & 0xFABD0000 ^ 0x42350000 ^ (((v57 ^ 0x502500A0) << 8) ^ 0x3D8A0000) & (v57 ^ 0x502500A0))));
  v60 = (((v59 ^ LODWORD(STACK[0x6AC])) - 1055070825) ^ ((v59 ^ 0x54BF11B1) + 1126554719) ^ ((v59 ^ 0x75FCCCD6) + 1650852154)) - ((((v59 >> 8) ^ 0x3889042A) - 1705213002) ^ (((v59 >> 8) ^ 0x6D527CDF) - 813171903) ^ (((v59 >> 8) ^ 0x552CBD00) - 134661472));
  v61 = ((((v60 - 827296653) ^ 0x5C984909) - 1349854195) ^ (v60 - 827296653) ^ (((v60 - 827296653) ^ 0xD4046404) + 655814914) ^ (((v60 - 827296653) ^ 0x7B9FB809) - 2004013811) ^ (((v60 - 827296653) ^ 0xFFEEFFFC) + 217869052)) >> 3;
  v62 = v60 + (((v61 ^ 0x3EBCAB1) - 146414177) ^ ((v61 ^ 0x26707AC) - 154589052) ^ ((v61 ^ 0x116042) - 188788882));
  v63 = v62 - 28241110;
  v64 = ((v62 - 28241110) ^ 0x7722117D) - 1189322079;
  v65 = ((v62 - 28241110) ^ 0xE238422E) + 738603508;
  v62 += 1786222766;
  v66 = (v62 ^ 0xA5B28AEE) & (2 * (v62 & 0xB5BB0ACE)) ^ v62 & 0xB5BB0ACE;
  v67 = ((2 * (v62 ^ 0xE6A68FFA)) ^ 0xA63B0A68) & (v62 ^ 0xE6A68FFA) ^ (2 * (v62 ^ 0xE6A68FFA)) & 0x531D8534;
  v68 = v67 ^ 0x51048514;
  v69 = (v67 ^ 0x2180020) & (4 * v66) ^ v66;
  v70 = ((4 * v68) ^ 0x4C7614D0) & v68 ^ (4 * v68) & 0x531D8534;
  v71 = (v70 ^ 0x40140404) & (16 * v69) ^ v69;
  v72 = ((16 * (v70 ^ 0x13098124)) ^ 0x31D85340) & (v70 ^ 0x13098124) ^ (16 * (v70 ^ 0x13098124)) & 0x531D8530;
  v73 = v71 ^ 0x531D8534 ^ (v72 ^ 0x11180100) & (v71 << 8);
  v74 = (v62 ^ (2 * ((v73 << 16) & 0x531D0000 ^ v73 ^ ((v73 << 16) ^ 0x5340000) & (((v72 ^ 0x42058434) << 8) & 0x531D0000 ^ 0x42180000 ^ (((v72 ^ 0x42058434) << 8) ^ 0x1D850000) & (v72 ^ 0x42058434))))) >> 14;
  v75 = v63 - 1892438007 + (((v74 ^ 0xDF923B9B) + 1109297420) ^ ((v74 ^ 0xDA033E97) + 1200589832) ^ ((v74 ^ 0x59143AC) - 1742868163));
  v76 = (v75 ^ 0xF4AAE991) & (2 * (v75 & 0xF520EC18)) ^ v75 & 0xF520EC18;
  v77 = ((2 * (v75 ^ 0x5EEBB9B1)) ^ 0x5796AB52) & (v75 ^ 0x5EEBB9B1) ^ (2 * (v75 ^ 0x5EEBB9B1)) & 0xABCB55A8;
  v78 = v77 ^ 0xA84954A9;
  v79 = (v77 ^ 0x1CA0409) & (4 * v76) ^ v76;
  v80 = ((4 * v78) ^ 0xAF2D56A4) & v78 ^ (4 * v78) & 0xABCB55A8;
  v81 = (v80 ^ 0xAB0954A0) & (16 * v79) ^ v79;
  v82 = ((16 * (v80 ^ 0xC20109)) ^ 0xBCB55A90) & (v80 ^ 0xC20109) ^ (16 * (v80 ^ 0xC20109)) & 0xABCB55A0;
  v83 = v81 ^ 0xABCB55A9 ^ (v82 ^ 0xA8815000) & (v81 << 8);
  v84 = (v75 ^ (2 * ((v83 << 16) & 0x2BCB0000 ^ v83 ^ ((v83 << 16) ^ 0x55A90000) & (((v82 ^ 0x34A0529) << 8) & 0x2BCB0000 ^ 0x208A0000 ^ (((v82 ^ 0x34A0529) << 8) ^ 0x4B550000) & (v82 ^ 0x34A0529))))) >> 5;
  v85 = v75 + 1495541141 + (((v84 ^ 0xB4E0A30C) - 1100226972) ^ ((v84 ^ 0xACEFFAB5) - 1503361061) ^ ((v84 ^ 0x1D027B83) + 394856173));
  v86 = (v85 ^ 0x4C665788) & (2 * (v85 & 0x8C76672D)) ^ v85 & 0x8C76672D;
  v87 = ((2 * (v85 ^ 0x4C021DC0)) ^ 0x80E8F5DA) & (v85 ^ 0x4C021DC0) ^ (2 * (v85 ^ 0x4C021DC0)) & 0xC0747AEC;
  v88 = v87 ^ 0x40140A25;
  v89 = (v87 ^ 0x6430C8) & (4 * v86) ^ v86;
  v90 = ((4 * v88) ^ 0x1D1EBB4) & v88 ^ (4 * v88) & 0xC0747AEC;
  v91 = (v90 ^ 0x506AA0) & (16 * v89) ^ v89;
  v92 = ((16 * (v90 ^ 0xC0241049)) ^ 0x747AED0) & (v90 ^ 0xC0241049) ^ (16 * (v90 ^ 0xC0241049)) & 0xC0747AE0;
  v93 = v91 ^ 0xC0747AED ^ (v92 ^ 0x442A2D) & (v91 << 8);
  v94 = v85 ^ (2 * ((v93 << 16) & 0x40740000 ^ v93 ^ ((v93 << 16) ^ 0x7AED0000) & (((v92 ^ 0xC030502D) << 8) & 0x40740000 ^ (((v92 ^ 0xC030502D) << 8) ^ 0x747A0000) & (v92 ^ 0xC030502D) ^ 0x40000)));
  v95 = (((v94 ^ 0x76A66E2) - 1951401338) ^ ((v94 ^ 0xF35AE626) + 2141157954) ^ ((v94 ^ LODWORD(STACK[0x6B0])) + 1890574993)) - ((((v94 >> 14) ^ 0x2A880CBF) - 1493447206) ^ (((v94 >> 14) ^ 0x7476F8C6) - 133875295) ^ (((v94 >> 14) ^ 0x5EFED512) - 762506123));
  v96 = (v95 + 1069756054) ^ 0x802BAFBA;
  v97 = ((2 * ((v95 + 1069756054) & 0xC8114F23)) & 0x228000 | (v95 + 1069756054) & 0xC8114F23) ^ (2 * ((v95 + 1069756054) & 0xC8114F23)) & v96;
  v98 = ((2 * v96) ^ 0x9075C132) & v96 ^ (2 * v96) & 0x483AE098;
  v99 = (v98 ^ 0x8004011) & (4 * v97) ^ v97;
  v100 = ((4 * (v98 ^ 0x480A2089)) ^ 0x20EB8264) & (v98 ^ 0x480A2089) ^ (4 * (v98 ^ 0x480A2089)) & 0x483AE098;
  v101 = (v100 ^ 0x2A8009) & (16 * v99) ^ v99;
  v102 = ((16 * (v100 ^ 0x48106099)) ^ 0x83AE0990) & (v100 ^ 0x48106099) ^ (16 * (v100 ^ 0x48106099)) & 0x483AE090;
  v103 = v101 ^ 0x483AE099 ^ (v102 ^ 0x2A0009) & (v101 << 8);
  v104 = ((v95 + 1069756054) ^ (2 * ((v103 << 16) & 0x483A0000 ^ v103 ^ ((v103 << 16) ^ 0x60990000) & (((v102 ^ 0x4810E009) << 8) & 0x483A0000 ^ 0x401A0000 ^ (((v102 ^ 0x4810E009) << 8) ^ 0x3AE00000) & (v102 ^ 0x4810E009))))) >> 5;
  v105 = v95 + (((v104 ^ 0xF4DC3402) - 1303449197) ^ ((v104 ^ 0x4E8331C8) + 135394393) ^ ((v104 ^ 0xBC9DA1BA) - 99654613));
  v106 = v105 + 53525033;
  v105 -= 421182642;
  v107 = (v105 ^ 0xE40E7830) & (2 * (v105 & 0xE4AE6245)) ^ v105 & 0xE4AE6245;
  v108 = ((2 * (v105 ^ 0x6D4A38B0)) ^ 0x13C8B5EA) & (v105 ^ 0x6D4A38B0) ^ (2 * (v105 ^ 0x6D4A38B0)) & 0x89E45AF4;
  v109 = v108 ^ 0x88244A15;
  v110 = (v108 ^ 0x1C01020) & (4 * v107) ^ v107;
  v111 = ((4 * v109) ^ 0x27916BD4) & v109 ^ (4 * v109) & 0x89E45AF4;
  v112 = (v111 ^ 0x1804AD0) & (16 * v110) ^ v110;
  v113 = ((16 * (v111 ^ 0x88641021)) ^ 0x9E45AF50) & (v111 ^ 0x88641021) ^ (16 * (v111 ^ 0x88641021)) & 0x89E45AF0;
  v114 = v112 ^ 0x89E45AF5 ^ (v113 ^ 0x88440A00) & (v112 << 8);
  v115 = (v105 ^ (2 * ((v114 << 16) & 0x9E40000 ^ v114 ^ ((v114 << 16) ^ 0x5AF50000) & (((v113 ^ 0x1A050A5) << 8) & 0x89E40000 ^ 0x9A40000 ^ (((v113 ^ 0x1A050A5) << 8) ^ 0x645A0000) & (v113 ^ 0x1A050A5))))) >> 14;
  v116 = v106 - 172112690 + (((v115 ^ 0x4C6EFA52) - 1119589321) ^ ((v115 ^ 0xDB65CF85) + 709843426) ^ ((v115 ^ 0x9708AF6C) + 1713518857));
  v117 = (v116 ^ 0xE87DD9BB) & (2 * (v116 & 0xE17C19BC)) ^ v116 & 0xE17C19BC;
  v118 = ((2 * (v116 ^ 0x28FDF99B)) ^ 0x9303C04E) & (v116 ^ 0x28FDF99B) ^ (2 * (v116 ^ 0x28FDF99B)) & 0xC981E026;
  v119 = v118 ^ 0x48802021;
  v120 = (v118 ^ 0x8100C000) & (4 * v117) ^ v117;
  v121 = ((4 * v119) ^ 0x2607809C) & v119 ^ (4 * v119) & 0xC981E024;
  v122 = (v121 ^ 0x18003) & (16 * v120) ^ v120;
  v123 = ((16 * (v121 ^ 0xC9806023)) ^ 0x981E0270) & (v121 ^ 0xC9806023) ^ (16 * (v121 ^ 0xC9806023)) & 0xC981E020;
  v124 = v122 ^ 0xC981E027 ^ (v123 ^ 0x88000007) & (v122 << 8);
  v125 = (v116 ^ (2 * ((v124 << 16) & 0x49810000 ^ v124 ^ ((v124 << 16) ^ 0x60270000) & (((v123 ^ 0x4181E007) << 8) & 0x49810000 ^ 0x48010000 ^ (((v123 ^ 0x4181E007) << 8) ^ LODWORD(STACK[0x6B4])) & (v123 ^ 0x4181E007))))) >> 6;
  v126 = v116 + (((v125 ^ 0xBD1FD13F) + 1261724567) ^ ((v125 ^ 0x825A655E) + 1953617912) ^ ((v125 ^ 0x3C8C4306) - 894963280));
  v127 = v126 + 1613333941;
  v128 = (v127 ^ 0xCA6A4CB4) & (2 * (v127 & STACK[0x6B8])) ^ v127 & STACK[0x6B8];
  v129 = ((2 * (v127 ^ 0xDA8AC094)) ^ 0xA3F51D58) & (v127 ^ 0xDA8AC094) ^ (2 * (v127 ^ 0xDA8AC094)) & 0x51FA8EAC;
  v130 = v129 ^ 0x500A82A4;
  v131 = (v129 ^ 0x1C88A00) & (4 * v128) ^ v128;
  v132 = ((4 * v130) ^ 0x47EA3AB0) & v130 ^ (4 * v130) & 0x51FA8EAC;
  v133 = (v132 ^ 0x41EA0AA0) & (16 * v131) ^ v131;
  v134 = ((16 * (v132 ^ 0x1010840C)) ^ 0x1FA8EAC0) & (v132 ^ 0x1010840C) ^ (16 * (v132 ^ 0x1010840C)) & 0x51FA8EA0;
  v135 = v133 ^ 0x51FA8EAC ^ (v134 ^ 0x11A88A00) & (v133 << 8);
  v136 = v30 ^ v10 ^ v32 ^ v31 ^ v33 ^ v34 ^ v63 ^ v65 ^ v64 ^ ((v63 ^ 0xDB24018F) + 354054739) ^ ((v63 ^ 0x7FFFDEFE) - 1312707292) ^ (v126 + 1613333941) ^ (2 * ((v135 << 16) & 0x51FA0000 ^ v135 ^ ((v135 << 16) ^ 0xEAC0000) & (((v134 ^ 0x4052042C) << 8) & 0x51FA0000 ^ 0x1700000 ^ (((v134 ^ 0x4052042C) << 8) ^ 0x7A8E0000) & (v134 ^ 0x4052042C))));
  v137 = ((v126 - 1113014221) ^ 0xC7924C0F) & (2 * ((v126 - 1113014221) & 0x97228E2F)) ^ (v126 - 1113014221) & 0x97228E2F;
  v138 = ((2 * ((v126 - 1113014221) ^ 0xE5D75403)) ^ 0xE5EBB458) & ((v126 - 1113014221) ^ 0xE5D75403) ^ (2 * ((v126 - 1113014221) ^ 0xE5D75403)) & 0x72F5DA2C;
  v139 = v138 ^ 0x12144A24;
  v140 = (v138 ^ 0x60801008) & (4 * v137) ^ v137;
  v141 = ((4 * v139) ^ 0xCBD768B0) & v139 ^ (4 * v139) & 0x72F5DA2C;
  v142 = (v141 ^ 0x42D5482C) & (16 * v140) ^ v140;
  v143 = ((16 * (v141 ^ 0x3020920C)) ^ 0x2F5DA2C0) & (v141 ^ 0x3020920C) ^ (16 * (v141 ^ 0x3020920C)) & 0x72F5DA20;
  v144 = v142 ^ 0x72F5DA2C ^ (v143 ^ 0x22558200) & (v142 << 8);
  v145 = ((v126 - 1113014221) ^ (2 * ((v144 << 16) & 0x72F50000 ^ v144 ^ ((v144 << 16) ^ 0x5A2C0000) & (((v143 ^ 0x50A0582C) << 8) & 0x72F50000 ^ 0x2250000 ^ (((v143 ^ 0x50A0582C) << 8) ^ 0x75DA0000) & (v143 ^ 0x50A0582C))))) >> 9;
  v146 = v126 + 1613333941 - (((v145 ^ 0xBCD9600B) - 327569396) ^ ((v145 ^ 0x489D7FEE) + 406695919) ^ ((v145 ^ 0xF42F5F78) - 1534095495));
  v147 = ((v146 + 1365605198) ^ 0xF6E799FD) & (2 * ((v146 + 1365605198) & 0xF407DDFD)) ^ (v146 + 1365605198) & 0xF407DDFD;
  v148 = ((2 * ((v146 + 1365605198) ^ 0x1EECBB45)) ^ 0xD5D6CD70) & ((v146 + 1365605198) ^ 0x1EECBB45) ^ (2 * ((v146 + 1365605198) ^ 0x1EECBB45)) & 0xEAEB66B8;
  v149 = v148 ^ 0x2A292288;
  v150 = (v148 ^ 0xCA024430) & (4 * v147) ^ v147;
  v151 = ((4 * v149) ^ 0xABAD9AE0) & v149 ^ (4 * v149) & 0xEAEB66B8;
  v152 = (v151 ^ LODWORD(STACK[0x6C0])) & (16 * v150) ^ v150;
  v153 = ((16 * (v151 ^ 0x40426418)) ^ 0xAEB66B80) & (v151 ^ 0x40426418) ^ (16 * (v151 ^ 0x40426418)) & 0xEAEB66B0;
  v154 = v152 ^ 0xEAEB66B8 ^ (v153 ^ LODWORD(STACK[0x6BC])) & (v152 << 8);
  v155 = ((v146 + 1365605198) ^ (2 * ((v154 << 16) & 0x6AEB0000 ^ v154 ^ ((v154 << 16) ^ 0x66B80000) & (((v153 ^ 0x40490438) << 8) & 0x6AEB0000 ^ 0x890000 ^ (((v153 ^ 0x40490438) << 8) ^ 0x6B660000) & (v153 ^ 0x40490438))))) >> 1;
  v156 = v146 - (((v155 ^ 0x57C55879) + 515365507) ^ ((v155 ^ 0xD28375DA) - 1678641374) ^ ((v155 ^ 0xF706A5E5) - 1099684065));
  v157 = v42 ^ v8 ^ LODWORD(STACK[0x57C0]) ^ v43 ^ v44 ^ v45 ^ v94 ^ (v156 - 2006983566) ^ (((v156 - 2006983566) ^ 0x24798BFA) - 599389075) ^ (((v156 - 2006983566) ^ 0xFBDA97A7) + 65343538) ^ (((v156 - 2006983566) ^ 0x2F9C924F) - 677177894) ^ (((v156 - 2006983566) ^ 0xF7FFF67B) + 264270318);
  v158 = ((((v156 + 1015880334) ^ 0x7247F3BD) - 1257532682) ^ (v156 + 1015880334) ^ (((v156 + 1015880334) ^ 0x985D6427) + 1594951024) ^ (((v156 + 1015880334) ^ 0xAD5446D2) + 1779967899) ^ (((v156 + 1015880334) ^ 0x7FFD4FF8) - 1196347720)) >> 11;
  v159 = v156 + 1265830075 + (((v158 ^ 0xC03BEEE3) - 921914872) ^ ((v158 ^ 0x7CBFF152) + 1971891639) ^ ((v158 ^ 0xBC8309C2) - 1246472921));
  v160 = (((v159 ^ 0x9D1FDD62) + 841610722) ^ v159 ^ ((v159 ^ 0x75D8C692) - 621875694) ^ ((v159 ^ 0xC7722353) + 1749289937) ^ ((v159 ^ 0x7F7CEFDF) - 800405667)) >> 6;
  v161 = v159 - 619936213 + (((v160 ^ 0xC3EDEC9B) - 48337609) ^ ((v160 ^ 0x2847EEE9) + 380923717) ^ ((v160 ^ LODWORD(STACK[0x6C4])) - 736451453));
  v162 = (v106 ^ 0xA41A690F) & (2 * (v106 & 0xC45361AF)) ^ v106 & 0xC45361AF;
  v163 = ((2 * (v106 ^ 0x2C9E6809)) ^ 0xD19A134C) & (v106 ^ 0x2C9E6809) ^ (2 * (v106 ^ 0x2C9E6809)) & 0xE8CD09A6;
  v164 = v163 ^ 0x284508A2;
  v165 = (v163 ^ 0x8880106) & (4 * v162) ^ v162;
  v166 = ((4 * v164) ^ 0xA3342698) & v164 ^ (4 * v164) & 0xE8CD09A4;
  v167 = v165 ^ 0xE8CD09A6 ^ (v166 ^ 0xA0040080) & (16 * v165);
  v168 = (16 * (v166 ^ 0x48C90926)) & 0xE8CD09A0 ^ 0x600D0186 ^ ((16 * (v166 ^ 0x48C90926)) ^ 0x8CD09A60) & (v166 ^ 0x48C90926);
  v169 = (v167 << 8) & 0xE8CD0900 ^ v167 ^ ((v167 << 8) ^ 0xCD09A600) & v168;
  v170 = v59 ^ v9 ^ v106 ^ (2 * ((v169 << 16) & 0x68CD0000 ^ v169 ^ ((v169 << 16) ^ 0x9A60000) & ((v168 << 8) & 0xE8CD0000 ^ 0x20C40000 ^ ((v168 << 8) ^ 0x4D090000) & v168))) ^ v161 ^ ((v161 ^ 0xBB6021ED) + 790157963) ^ ((v161 ^ 0xDEC47377) + 1253869585) ^ ((v161 ^ 0xF1C481F1) + 1706850967) ^ ((v161 ^ 0xFFE7D7F3) + 1805593749);
  v171 = ((v136 & 0xFE ^ 0x891D5A8E) + 1994564980) ^ ((v136 & 0xFE ^ 0xCC0E0918) + 871495398) ^ ((v136 & 0xFE ^ 0x45135394) - 1158894486);
  LODWORD(STACK[0x5360]) = v171;
  LODWORD(STACK[0x52F0]) = (((16843009 * v171 + 359868631) ^ 0x9D620FD9) + 2012141810) ^ (16843009 * v171 + 359868631) ^ (((16843009 * v171 + 359868631) ^ 0x1827BA4F) - 223646360) ^ (((16843009 * v171 + 359868631) ^ 0xEFC96EBE) + 88455575) ^ (((16843009 * v171 + 359868631) ^ 0x7FFFF3FF) - 1787616040);
  v172 = ((v170 ^ 0x8D39DC03) + 491077557) ^ ((v170 ^ 0xAEC4A64A) + 1052263934) ^ ((v170 ^ 0x809208E1) + 284093271);
  v173 = (v170 & 7) == 0;
  LODWORD(STACK[0x5310]) = v170 & 7;
  v174 = (-1438005335 - v172) ^ v172 ^ (((-1438005335 - v172) ^ 0x4B9AA526) + 1) ^ (((-1438005335 - v172) ^ 0x4182161B) + 6) ^ (((-1438005335 - v172) ^ 3) + 6);
  LODWORD(STACK[0x54E0]) = v170;
  LODWORD(STACK[0x5128]) = ((v170 ^ 0x373877BF) + 1906087065) ^ ((v170 ^ 0x7B504B33) + 1039443989) ^ ((v170 ^ 0xF5332054) - 1281899660);
  LODWORD(STACK[0x5300]) = v174;
  v175 = v174 & 7;
  if ((v170 & 7) != 0)
  {
    v176 = 255;
  }

  else
  {
    v176 = 0;
  }

  LODWORD(STACK[0x50A8]) = v175;
  LODWORD(STACK[0x53B0]) = v175 ^ 1;
  v177 = v176 << (v175 ^ 1);
  v178 = ((v177 ^ 0xB5D9A3E2) + 1959704224) ^ ((v177 ^ 0x176EBF66) - 696669668) ^ ((v177 ^ 0xA2B71C84) + 1671432698);
  v179 = 16843009 * v178 + 134924184;
  LODWORD(STACK[0x5308]) = v179;
  v180 = (v179 ^ 0x6F40A6C3) & (2 * (v179 & 0x8C4AA4EA)) ^ v179 & 0x8C4AA4EA;
  v181 = ((2 * (v179 ^ 0x6F50A713)) ^ 0xC63407F2) & (v179 ^ 0x6F50A713) ^ (2 * (v179 ^ 0x6F50A713)) & 0xE31A03F8;
  v182 = v181 ^ 0x210A0009;
  v183 = (v181 ^ 0x421003F1) & (4 * v180) ^ v180;
  v184 = ((4 * v182) ^ 0x8C680FE4) & v182 ^ (4 * v182) & 0xE31A03F8;
  v185 = (v184 ^ LODWORD(STACK[0x6C8])) & (16 * v183) ^ v183;
  v186 = ((16 * (v184 ^ 0x63120019)) ^ 0x31A03F90) & (v184 ^ 0x63120019) ^ (16 * (v184 ^ 0x63120019)) & 0xE31A03F0;
  v187 = v186 ^ 0xC21A0069;
  v188 = v185 ^ 0xE31A03F9 ^ (v186 ^ 0x21000300) & (v185 << 8);
  LODWORD(STACK[0x52D8]) = (v188 << 16) & 0x631A0000 ^ v188 ^ ((v188 << 16) ^ 0x3F90000) & ((v187 << 8) & 0xE31A0000 ^ 0x61180000 ^ ((v187 << 8) ^ 0x1A030000) & v187);
  v189 = -829853317 - 285212672 * v178;
  LODWORD(STACK[0x5348]) = (v189 ^ ((v189 ^ 0xE1BBC167) + 1858949092) ^ ((v189 ^ 0x1BBAEBEB) - 1798544016) ^ ((v189 ^ 0xD777A409) + 1476471438) ^ ((v189 ^ 0x5DFFFFFE) - 762744453) ^ 0x32CD64FC) & (v157 ^ 0xF48E73E4) ^ v157 & 0x42441587;
  v190 = v177 ^ 0x63D5799E;
  if (v173)
  {
    v190 = -1674934687;
  }

  LODWORD(STACK[0x50A0]) = (v190 ^ 0x61) & (v136 ^ 0x39) ^ v190 & 0x4A;
  LODWORD(STACK[0x5320]) = v136;
  v191 = (v136 ^ BYTE2(v136) ^ BYTE1(v136)) ^ HIBYTE(v136);
  v192 = 16843009 * (((v191 ^ 0x73C3B854) - 2031038561) ^ ((v191 ^ 0xEB1B5EC7) + 505948430) ^ ((v191 ^ 0x98D8E676) + 1844154813)) + 1018546979;
  v193 = (v192 ^ 0xF34F8928) & (2 * (v192 & 0xF36F8DAD)) ^ v192 & 0xF36F8DAD;
  v194 = ((2 * (v192 ^ 0xB1189370)) ^ 0x84EE3DBA) & (v192 ^ 0xB1189370) ^ (2 * (v192 ^ 0xB1189370)) & 0x42771EDC;
  v195 = v194 ^ 0x42110245;
  v196 = (v194 ^ 0x671C99) & (4 * v193) ^ v193;
  v197 = ((4 * v195) ^ LODWORD(STACK[0x6CC])) & v195 ^ (4 * v195) & 0x42771EDC;
  v198 = (v197 ^ 0x541A50) & (16 * v196) ^ v196;
  v199 = ((16 * (v197 ^ 0x42230489)) ^ 0x2771EDD0) & (v197 ^ 0x42230489) ^ (16 * (v197 ^ 0x42230489)) & 0x42771ED0;
  v200 = v198 ^ 0x42771EDD ^ (v199 ^ 0x2710C00) & (v198 << 8);
  v201 = v192 ^ (2 * ((v200 << 16) & 0x42770000 ^ v200 ^ ((v200 << 16) ^ 0x1EDD0000) & (((v199 ^ 0x4006120D) << 8) & 0x42770000 ^ 0x610000 ^ (((v199 ^ 0x4006120D) << 8) ^ 0x771E0000) & (v199 ^ 0x4006120D))));
  LODWORD(STACK[0x57A0]) = v157;
  v202 = (v157 ^ BYTE1(v157) ^ BYTE2(v157)) ^ HIBYTE(v157);
  v203 = 16843009 * (((v202 ^ 0x8AD54DDD) + 1904389035) ^ ((v202 ^ 0xFED9B87B) + 93216269) ^ ((v202 ^ 0x740CF581) - 1889856521)) - 447227803;
  v204 = ((v203 ^ 0x6A66BD82) - 92385844) ^ v203 ^ ((v203 ^ 0xF6B0F2E4) + 1722286766) ^ ((v203 ^ 0x8CCAB74F) + 483542791) ^ ((v203 ^ 0x7FFBF79F) - 270333993);
  v205 = STACK[0xD7E8];
  v206 = *(STACK[0xD7E8] + 8 * (0x1E3D9380u % LODWORD(STACK[0x5700])));
  v207 = STACK[0x5710];
  v208 = *(STACK[0xD7E8] + 8 * (((((v206 ^ 0xEAF7CF052FDE57D8) + 0x59FB11ACC8E0BD73) ^ ((v206 ^ 0xFF173C58905D82E6) + 0x4C1BE2F17763684DLL) ^ ((v206 ^ 0x916477D93B0751BALL) + 0x2268A970DC39BB11)) - 0x37885A2C765A40ACLL) % STACK[0x5710]));
  v209 = *(STACK[0xD7E8] + 8 * (((((v208 ^ 0x3521327F6E1525A1) + 0x3015C2A24154C4E0) ^ ((v208 ^ 0x5D9768654792C7A1) + 0x58A398B868D326E0) ^ ((v208 ^ 0xEC32DE9EAD036684) - 0x16F9D1BC7DBD7805)) + 0x7E4F8BA66CBFFA34) % STACK[0x5710]));
  STACK[0x5770] = STACK[0xD7E8];
  v210 = *(v205 + 8 * (((((v209 ^ 0x8289FAC84823862FLL) + 0x2FF684F89848ADCLL) ^ ((v209 ^ 0xD504E187CF222E2BLL) + 0x557273000E8522E0) ^ ((v209 ^ 0xD3099FCB03852C80) + 0x537F0D4CC2222075)) - 0x4F21602848B1589) % v207));
  LODWORD(STACK[0x5340]) = v204;
  LODWORD(STACK[0x5090]) = v201;
  LODWORD(STACK[0x50D8]) = v204 ^ v201;
  LODWORD(v210) = ((((v210 ^ 0x61BC35044AAF772) + 0x26D4DC592C6537B9) ^ ((v210 ^ 0x40B9813C2C9EC9C3) + 0x60769E354451090ALL) ^ ((v210 ^ 0xC226C6E8ECB0BA35) - 0x1D16261E7B808500)) + 0x5BB464725F56B57BLL) % v207;
  LODWORD(STACK[0x57C0]) = LODWORD(STACK[0x56F0]) ^ 0xFA54349E;
  v211 = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x5780]));
  LODWORD(STACK[0x5760]) = ((((v210 - ((2 * v210) & 0x1EC8F8C2) - 278627231) ^ 0x634975E9) + 1148497848) ^ (((v210 - ((2 * v210) & 0x1EC8F8C2) - 278627231) ^ 0x373A5C64) + 268928571) ^ (((v210 - ((2 * v210) & 0x1EC8F8C2) - 278627231) ^ 0xBB1755EC) - 1674932301)) + 1727605139;
  LODWORD(STACK[0x5780]) = LODWORD(STACK[0x5790]) - 5036;
  LODWORD(STACK[0x5750]) = -67109281;
  LODWORD(STACK[0x5740]) = 2130640639;
  return v211(0xD8C998278704BCCCLL);
}

uint64_t sub_10043477C()
{
  v1 = STACK[0x6B98];
  *v1 = STACK[0x5968];
  *(v1 + 8) = STACK[0xBD30];
  *(v1 + 16) = STACK[0xAE40];
  *(v1 + 24) = -769884028;
  v2 = STACK[0x7ED8];
  STACK[0x7730] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v2 + 16;
  STACK[0x62E8] = 0;
  LODWORD(STACK[0x7208]) = 0;
  v3 = STACK[0x57D8];
  STACK[0x6928] = *(STACK[0x57D8] + 8 * v0);
  return (*(v3 + 8 * ((((v0 ^ 0xF43A9618) < 0x5BE98DA8) * (v0 ^ 0x3B1C)) ^ (v0 + 2153))))();
}

uint64_t sub_1004348AC()
{
  STACK[0xCB48] = 0;
  LODWORD(STACK[0x61AC]) = -769884012;
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0x61AC];
  LODWORD(STACK[0x9094]) = -32197402;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100434BAC()
{
  v2 = (v0 - 28460) | 0x5050;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v2 + 9207)))(v1);
  return (*(v3 + 8 * (v2 - 11451)))(v4);
}

uint64_t sub_100434C34()
{
  v1 = STACK[0xA3F0];
  v2 = *(STACK[0xA3F0] - 0x1883660EE814440ALL);
  LODWORD(STACK[0xE684]) = v2 + 48;
  v3 = *(v1 - 0x1883660EE814440ELL) + ((v0 - 38729310) & 0x24EDB56 ^ 0xB94C8D41);
  v2 -= 1186147001;
  v4 = v2 < 0x36964993;
  v5 = v3 < v2;
  if (v4 != v3 < v0 + 915789366)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = (STACK[0xCA60] == 0) | v6 & 1;
  if (v7)
  {
    v8 = -143155721;
  }

  else
  {
    v8 = -143113071;
  }

  LODWORD(STACK[0xE688]) = v8;
  return (*(STACK[0x57D8] + 8 * ((206 * v7) ^ v0)))();
}

uint64_t sub_100434D7C(uint64_t a1)
{
  v5 = STACK[0x57D8];
  v6 = *(v5 + 8 * ((v3 + 10222) | (8 * ((((*(STACK[0x57D8] + 8 * ((v3 + 10222) ^ 0x2A86)))((v2 + v1), a1, v4, 0) == 0) ^ (v3 - 52)) & 1))));
  return v6();
}

uint64_t sub_100434E84@<X0>(unsigned int a1@<W1>, int a2@<W8>)
{
  v6 = v3 < v4;
  if (v6 == a2 - 1010445739 < v5)
  {
    v6 = a2 - 1010445739 < a1;
  }

  return (*(STACK[0x57D8] + 8 * ((21 * !v6) ^ v2)))();
}

uint64_t sub_10043567C()
{
  v3 = STACK[0x51B8];
  v4 = 13 * (STACK[0x51B8] ^ 0x5A73);
  v1[8] = (v2 >> 3) & 3 ^ 2;
  v1[9] = (v4 ^ 0x1BE6) & v2 ^ 4;
  v1[6] = (v2 >> 9) ^ 0x40;
  v1[7] = (v2 >> 5) & 0xF ^ 4;
  v5 = (&STACK[0x10120] + STACK[0x7ED8]);
  STACK[0x7ED8] += 48;
  *v5 = *(v0 + 8 * (v3 - 21181)) - 4;
  v5[1] = 0x40000000;
  v6 = *(v0 + 8 * (v3 & 0xE35DA18F)) - 8;
  v5[2] = sub_1000021A0;
  v5[3] = v6;
  v5[4] = v1;
  v7 = STACK[0x57D8];
  v8 = v3 - 1375;
  v9 = (*(STACK[0x57D8] + 8 * (v3 ^ 0x2559)))(*(v0 + 8 * (v3 ^ 0x5D42)) - 4);
  STACK[0x7ED8] -= 48;
  LODWORD(STACK[0x5790]) = STACK[0xE000];
  return (*(v7 + 8 * v8))(v9);
}

uint64_t sub_100435788@<X0>(unint64_t a1@<X8>)
{
  v7 = (((v1 + 866732159) & 0xCC56B781) << ((v2 ^ 0xCD) + 119)) & ((v1 + 866732159) ^ 0x8A562795) ^ (v1 + 866732159) & 0xCC56B781;
  v8 = ((2 * ((v1 + 866732159) ^ 0x8A724E97)) ^ 0x8C49F22C) & ((v1 + 866732159) ^ 0x8A724E97) ^ (2 * ((v1 + 866732159) ^ 0x8A724E97)) & 0x4624F916;
  v9 = v8 ^ 0x42240912;
  v10 = (v8 ^ 0xF114) & (4 * v7) ^ v7;
  v11 = ((4 * v9) ^ 0x1893E458) & v9 ^ (4 * v9) & 0x4624F914;
  v12 = (v11 ^ 0xE010) & (16 * v10) ^ v10;
  v13 = ((16 * (v11 ^ 0x46241906)) ^ 0x624F9160) & (v11 ^ 0x46241906) ^ (16 * (v11 ^ 0x46241906)) & 0x4624F910;
  v14 = v12 ^ 0x4624F916 ^ (v13 ^ 0x42049116) & (v12 << 8);
  v15 = (v1 + 866732159) ^ (2 * ((v14 << 16) & 0x46240000 ^ v14 ^ ((v14 << 16) ^ 0x79160000) & (((v13 ^ 0x4206816) << 8) & 0x46240000 ^ 0x42040000 ^ (((v13 ^ 0x4206816) << 8) ^ 0x24F90000) & (v13 ^ 0x4206816)))) ^ 0xD6371DBC;
  v16 = 551690071 * ((((v6 - 240) | 0x2BA91E4B) - ((v6 - 240) & 0x2BA91E4B)) ^ 0x65444D1C);
  STACK[0x1D4C8] = a1;
  STACK[0x1D4D8] = v5;
  LODWORD(STACK[0x1D4D4]) = v15 - v16;
  STACK[0x1D4C0] = v4;
  LODWORD(STACK[0x1D4D0]) = (v2 + 4344) ^ v16;
  STACK[0x1D4E8] = v3;
  v17 = STACK[0x57D8];
  v18 = (*(STACK[0x57D8] + 8 * (v2 + 26187)))(v6 - 240);
  *v3 = *(v4 + (v1 - 16));
  v3[1] = *(v4 + (v1 - 15));
  v3[2] = *(v4 + (v1 - 14));
  v3[3] = *(v4 + (v1 - 13));
  v3[4] = *(v4 + (v1 - 12));
  v3[5] = *(v4 + (v1 - 11));
  v3[6] = *(v4 + (v1 - 10));
  v3[7] = *(v4 + (v1 - 9));
  v3[8] = *(v4 + (v1 - 8));
  v3[9] = *(v4 + (v1 - 7));
  v3[10] = *(v4 + (v1 - 6));
  v3[11] = *(v4 + (v1 - 5));
  v3[12] = *(v4 + (v1 - 4));
  v3[13] = *(v4 + (v1 - 3));
  v3[14] = *(v4 + (v1 - 2));
  v3[15] = *(v4 + (v1 - 1));
  return (*(v17 + 8 * v2))(v18);
}

uint64_t sub_100435A7C@<X0>(uint64_t a1@<X8>)
{
  *(v6 + 3780) = v1;
  *(*(v6 + 3768) + (v5 & 0x7F)) = (((2 * (v4 + *(v3 + a1) - 76)) & 0xF7) - ((4 * (v4 + *(v3 + a1) - 76)) & 0xA4) + 91) ^ 0x84;
  return (*(STACK[0x57D8] + 8 * ((23407 * (a1 == 15)) ^ (v1 + v2))))();
}

uint64_t sub_100435BA0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, int a6@<W6>, unsigned int a7@<W7>, uint64_t a8@<X8>)
{
  v11 = *(a2 + v8) * a4;
  v12 = v8 + a5 - (((v11 ^ a7) + a6) >> 16) + (v11 ^ a7) + ((v8 + a8 - (((v11 ^ a7) + a6) >> 16) + (v11 ^ a7)) >> (v9 - 82));
  v13 = v8 + a5 + (v12 ^ v11) - (((v12 ^ v11) + a6) >> 16) + (((v12 ^ v11) + a6 - (((v12 ^ v11) + a6) >> 16)) >> 8);
  v14 = v13 ^ v11;
  v15 = (v14 + a6) >> 16;
  return (*(STACK[0x57D8] + 8 * ((218 * (v8 + a8 != 15)) ^ v9)))(v12 ^ a1 ^ v10 & (2 * v12) ^ v13 ^ v10 & (2 * v13) ^ (v8 + a5 + v14 - v15 + ((v14 + a6 - v15) >> 8)) ^ v10 & (2 * (v8 + a5 + v14 - v15 + ((v14 + a6 - v15) >> 8))), a2 + 1, a3 + 1);
}

uint64_t sub_100435EB4()
{
  *(v1 + 592) = 0;
  *(v1 + 600) = (v0 - 1723115874) ^ (1917435887 * (((v2 | 0xBC676F01) - (v2 & 0xBC676F01)) ^ 0x5ADC3407));
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v0 + 27075)))(v3 - 240);
  if (*STACK[0x4678])
  {
    v6 = 1;
  }

  else
  {
    v6 = *STACK[0x4630] == 0;
  }

  v7 = v6;
  return (*(v4 + 8 * ((v7 * ((((v0 - 4061) | 0x1000) + 4171) ^ 0x2226)) ^ v0)))(v5);
}

uint64_t sub_100435F68(int a1)
{
  LODWORD(STACK[0x9F98]) = -769884012;
  STACK[0xA990] = 0;
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xBE4C];
  LODWORD(STACK[0x9094]) = a1 + 74;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_100435FE0()
{
  v0 = STACK[0x51B8] - 8034;
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))(STACK[0xC7B0]);
  STACK[0xC7B0] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_100436040(int a1)
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xBE4C];
  LODWORD(STACK[0x9094]) = a1 + 96;
  return (*(STACK[0x57D8] + 8 * (v1 ^ 0x908529B1 ^ ((v1 != -1720145678) * ((v1 + 1870349883) ^ 0x733C)))))();
}

uint64_t sub_10043617C()
{
  v0 = STACK[0x23CC] & 0x1ED26BFF;
  v1 = STACK[0x7928];
  STACK[0x7DA8] = STACK[0x7928];
  return (*(STACK[0x57D8] + 8 * (((v0 ^ 0x4354) * (v1 == 0)) ^ LODWORD(STACK[0x23C8]))))();
}

uint64_t sub_100436214()
{
  v1 = STACK[0x11D8];
  STACK[0x5ED8] = v0;
  LODWORD(STACK[0xBA34]) = STACK[0x8D04];
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_100436364()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 16072)))(v1);
  STACK[0x8960] = v3;
  return (*(v2 + 8 * (((11307 * ((v0 + 102129769) & 0xF9E966FC ^ 0x4DE) - 22457) * (v3 == 0)) ^ v0)))();
}

uint64_t sub_1004364D8()
{
  v1 = STACK[0x57D8];
  STACK[0x7E68] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * ((((v0 + 38428971) | 0x8249A16) ^ 0xA6ECF00) + v0)))();
}

uint64_t sub_1004365C4@<X0>(unsigned int a1@<W3>, int a2@<W8>)
{
  v4 = a1 < v3;
  if (v4 == v2 + 671549330 < v3)
  {
    v4 = v2 + 671549330 < a1;
  }

  return (*(STACK[0x57D8] + 8 * ((126 * v4) ^ a2)))();
}

uint64_t sub_100436F2C@<X0>(unint64_t a1@<X8>)
{
  v3 = STACK[0x57D8];
  STACK[0x8D08] = *(STACK[0x57D8] + 8 * v1);
  STACK[0x84F0] = a1;
  STACK[0x9920] = 0;
  LODWORD(STACK[0x6D30]) = 0;
  STACK[0x6928] = *(v3 + 8 * v2);
  return (*(v3 + 8 * (v2 ^ 0x5907 ^ (29 * (v2 ^ 0xBC9)))))();
}

uint64_t sub_100436FA4()
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xAEE4];
  LODWORD(STACK[0x9094]) = -32197393;
  return (*(STACK[0x57D8] + 8 * ((12671 * (v0 == -864820872)) ^ (v0 - 1983582525))))();
}

uint64_t sub_100437054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6)
{
  v8 = (*&v6 | 0xFFFFFFFF048D4BBDLL) - ((2 * v6) ^ 0xFFFFFFFE091A977ALL) + (~v6 | 0xFB72B442);
  v9 = ((a5 ^ 0x3C68) + 16 * ((v6 & 2 ^ v8 ^ 2) + (v8 | *&v6 | 0xFFFFFFFFFFFFFFFDLL) == (*&v6 | 0xFFFFFFFFFFFFFFFDLL)) + (a6 >> ((a5 + 92) ^ 0x34)) - ((a6 >> ((a5 + 92) ^ 0x34)) ^ 7) + v7) >> 31;
  return (*(STACK[0x57D8] + 8 * ((2 * v9) | (4 * v9) | a5)))();
}

uint64_t sub_10043713C@<X0>(int a1@<W8>)
{
  v4 = v1 << 32;
  STACK[0x4B0] ^= a1 ^ 0x41A4u ^ 0x64BD9244 ^ HIDWORD(v3);
  STACK[0x4B8] ^= v4 ^ 0x1CE0A19664BDC4A3 ^ HIDWORD(v3);
  STACK[0x460] ^= 0x1CE0A19600000000 ^ v4;
  v5 = *(v2 + 8 * a1);
  LODWORD(STACK[0x4AC]) = 8;
  return v5();
}

uint64_t sub_1004371C0()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x57D8];
  STACK[0x8060] = *(STACK[0x57D8] + 8 * (STACK[0x51B8] - 21226));
  return (*(v1 + 8 * (v0 - 11673)))();
}

uint64_t sub_1004371F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x5540]) = v12;
  v13 = ((v7 | 0xAF286624BE02B918) - v8 + 0x286BCCEDA0FEA374) ^ 0x6F1C32C6BEC63FDFLL;
  v14 = __ROR8__(v13, 8);
  v15 = v13 ^ v11;
  v16 = (v14 + v15) ^ 0x38C8B16AE7056877;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0xE580B17D8CC5E551;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0xE1A1FD5BD155F97ALL;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (((2 * (v22 + v21)) | 0x9B7000F045EF1096) - (v22 + v21) + 0x3247FF87DD0877B5) ^ 0x17D84B74215537D2;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0xFA35E2CDCB3E31C7;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = ((__ROR8__((((2 * (v27 + v26)) | 0xD29ACBFB1643DCE6) - (v27 + v26) + 0x16B29A0274DE118DLL) ^ 0x3BBD691BABC43DDDLL, 8) + ((((2 * (v27 + v26)) | 0xD29ACBFB1643DCE6) - (v27 + v26) + 0x16B29A0274DE118DLL) ^ 0x3BBD691BABC43DDDLL ^ __ROR8__(v26, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x57B0];
  v29 = a7 ^ 0x5A1Bu;
  v30 = *(*STACK[0x51F0] + (*STACK[0x51E8] & ((a5 & 0x725F79A7) + (a5 | 0x725F79A4) + 131907444)));
  v31 = __ROR8__((v30 + a2) ^ 0xB88801D4E1C76353, 8);
  v32 = (v30 + a2) ^ 0xB88801D4E1C76353 ^ __ROR8__(v30, 61);
  LODWORD(STACK[0x5230]) = (((v28 ^ LODWORD(STACK[0x57C0]) ^ 0xFFFFFFF0) + 91) ^ ((v28 ^ LODWORD(STACK[0x57C0]) ^ 0xFFFFFFC6) + 109) ^ ((v28 ^ LODWORD(STACK[0x57C0]) ^ 0x36) - 99)) + 90;
  v33 = (v29 + v31 + v32 - ((2 * (v31 + v32)) & 0x76CAE05315BDAFE0) + 0x3B6570298ADE6068) ^ 0x3ADC1436DDBBF87 ^ __ROR8__(v32, 61);
  v34 = __ROR8__((v29 + v31 + v32 - ((2 * (v31 + v32)) & 0x76CAE05315BDAFE0) + 0x3B6570298ADE6068) ^ 0x3ADC1436DDBBF87, 8) + v33;
  v35 = (0x7C6FF2BD8B9BB6D4 - (v34 | 0x7C6FF2BD8B9BB6D4) + (v34 | 0x83900D427464492BLL)) ^ 0x6610BC3FF8A1AC7ALL;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xE1A1FD5BD155F97ALL;
  v38 = __ROR8__(v37, 8);
  v39 = v37 ^ __ROR8__(v36, 61);
  v40 = (((2 * (v38 + v39)) & 0x56DCB4AF0A4FAF96) - (v38 + v39) + 0x5491A5A87AD82834) ^ 0x8EF1EEA4797A97ADLL;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ 0xFA35E2CDCB3E31C7;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(v43) = (((__ROR8__(v44, 8) + (v44 ^ __ROR8__(v43, 61))) ^ 0xF4730B31AE70757BLL) >> v9) ^ v10;
  v45 = *(STACK[0x57D8] + 8 * a7);
  LODWORD(STACK[0x4F70]) = (((v43 ^ 0x12) - 124) ^ ((v43 ^ 0x5D) - 51) ^ ((v43 ^ 0x4F) - 33)) - 127;
  LODWORD(STACK[0x54C0]) = 87;
  LODWORD(STACK[0x5378]) = 41;
  LODWORD(STACK[0x4FF0]) = 81;
  LODWORD(STACK[0x4F78]) = 135;
  LODWORD(STACK[0x4F68]) = 11;
  return v45();
}

uint64_t sub_100437610@<X0>(unsigned int a1@<W8>)
{
  LODWORD(STACK[0xDAC0]) = a1;
  LODWORD(STACK[0xDABC]) = v1;
  v3 = 263 * (v2 ^ 0x5850) + 1512435323 + (((LODWORD(STACK[0xC2BC]) ^ 0x5EF28859) - 1592952921) ^ ((LODWORD(STACK[0xC2BC]) ^ 0x73614E5) + ((v2 - 647754239) & 0x269BF9BC ^ 0xF8C98B0F)) ^ ((LODWORD(STACK[0xC2BC]) ^ 0x8BD81C28) + 1948771288)) + 3644;
  v4 = v3 < 0x8809824D;
  v5 = a1 - 2012642739 < v3;
  if (a1 > 0x77F67DB2 != v4)
  {
    v5 = v4;
  }

  if (v1 != -143113071)
  {
    v5 = 0;
  }

  return (*(STACK[0x57D8] + 8 * ((24095 * v5) ^ (v2 - 15024))))();
}

uint64_t sub_10043777C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v4 = (a2 + 1686007905) & 0x9B817EBE;
  STACK[0x57B0] = v4;
  STACK[0x5650] = v4 ^ 0x5A93 | v3;
  v5 = v3 | 0xALL;
  STACK[0x5550] = v5;
  v6 = (*(v2 + v5) ^ 0xF) << 8;
  STACK[0x55C0] = v3 | 0xELL;
  STACK[0x5580] = v3 | 0xCLL;
  STACK[0x5540] = v3 | 6;
  v7 = v2 + v3;
  v8 = v6 | ((*(v7 + 8) ^ 0xF) << 24);
  v9 = v3 | 9;
  STACK[0x5570] = v9;
  v10 = *(v2 + v9);
  STACK[0x5560] = v3 | 7;
  STACK[0x5590] = v3 | 5;
  v11 = *(v7 + 11) ^ 0xF | v8 | ((v10 ^ 0xFu) << 16);
  STACK[0x55A0] = v3 | 1;
  return (*(STACK[0x57D8] + 8 * a2))(a1, 15, v11);
}

uint64_t sub_1004378C0()
{
  v1 = STACK[0xE358];
  v2 = LODWORD(STACK[0xE364]);
  v3 = LODWORD(STACK[0xE368]);
  v4 = LOBYTE(STACK[0xE37B]);
  v5 = LODWORD(STACK[0xE37C]);
  v6 = LODWORD(STACK[0xE380]);
  v7 = LODWORD(STACK[0xE394]);
  v8 = LODWORD(STACK[0xE3A4]);
  LODWORD(STACK[0x57C0]) = STACK[0xE3B8];
  return (*(STACK[0x57D8] + 8 * v0))(v1, v3, v2, v7, v5, v4, v6, v8);
}

uint64_t sub_1004379FC()
{
  v0 = STACK[0x16D4];
  v1 = STACK[0x57D8];
  STACK[0xB880] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x16D4]));
  return (*(v1 + 8 * (v0 ^ 0x3412 ^ (631 * (v0 ^ 0x801)))))();
}

uint64_t sub_100437AB0(unsigned __int8 a1, uint64_t a2, unsigned __int8 a3, unsigned __int8 a4, int a5, uint64_t a6, unsigned __int8 a7, unsigned __int8 a8)
{
  v24 = a3 ^ 0xB6;
  v25 = v8 ^ 0xE4;
  v26 = v18 + (v12 ^ 0xC8) * v13 - ((3641 * (v18 + (v12 ^ 0xC8u) * v13)) >> 22) * v23;
  v27 = v18 + (v11 ^ 0x22) * v13 - ((3641 * (v18 + (v11 ^ 0x22u) * v13)) >> 22) * v23;
  v28 = (v18 + (a1 ^ 0xD4) * v13 - 2304 * (((3641 * (v18 + (a1 ^ 0xD4u) * v13)) >> 16) >> 7));
  if (v28 >= 0x480)
  {
    v28 -= 1152;
  }

  v29 = *(v22 + (v18 + v24 * v13 - (((3641 * (v18 + v24 * v13)) >> 16) >> 6) * v23)) | ((*(v22 + v26) ^ 0x51) << 16);
  v30 = ((*(v22 + (v18 + (v16 ^ 0x17) * v13 - (((3641 * (v18 + (v16 ^ 0x17u) * v13)) >> 16) >> 6) * v23)) ^ 8) << 8) | ((*(v22 + (v18 + (v15 ^ 0x4A) * v13 - (((3641 * (v18 + (v15 ^ 0x4Au) * v13)) >> 16) >> 6) * v23)) ^ 0x84) << 16) | ((*(v22 + (v18 + (v9 ^ 0x10) * v13 - (((3641 * (v18 + (v9 ^ 0x10u) * v13)) >> 16) >> 6) * v23)) ^ 0xA4) << 24);
  v31 = v29 | ((*(v22 + (v18 + (v17 ^ 0xE7) * v13 - (((3641 * (v18 + (v17 ^ 0xE7u) * v13)) >> 16) >> 6) * v23)) ^ a5) << 24) | ((*(v22 + (v18 + (a4 ^ 0xB4) * v13 - (((3641 * (v18 + (a4 ^ 0xB4u) * v13)) >> 16) >> 6) * v23)) ^ 0x93) << 8);
  v32 = v18 + (LODWORD(STACK[0x5760]) ^ 0xC7) * v13;
  v33 = *(v22 + (v18 + (v19 ^ 0xC) * v13 - (((3641 * (v18 + (v19 ^ 0xCu) * v13)) >> 16) >> 6) * v23)) ^ 0xDF | ((*(v22 + v27) ^ 0x13) << 24) | ((*(v22 + v28) ^ 0x2A) << 8) | ((*(v22 + (v32 - (((3641 * v32) >> 16) >> 6) * v23)) ^ 0xD3) << 16);
  v34 = *(v22 + (v18 + (a8 ^ 0x45) * v13 - (((3641 * (v18 + (a8 ^ 0x45u) * v13)) >> 16) >> 6) * v23));
  v35 = *(v22 + (v18 + v25 * v13 - (((3641 * (v18 + v25 * v13)) >> 16) >> 6) * v23)) ^ 0x2B | ((*(v22 + (v18 + (v14 ^ 0xB5) * v13 - (((3641 * (v18 + (v14 ^ 0xB5u) * v13)) >> 16) >> 6) * v23)) ^ 0x78) << 16) | ((*(v22 + (v18 + (a7 ^ 0xCE) * v13 - (((3641 * (v18 + (a7 ^ 0xCEu) * v13)) >> 16) >> 6) * v23)) ^ 0x16) << 8);
  v36 = *(v22 + (v18 + (v21 ^ 0x4C) * v13 - (((3641 * (v18 + (v21 ^ 0x4Cu) * v13)) >> 16) >> 6) * v23));
  v37 = STACK[0x5780];
  v37[52] = v31 ^ v20;
  v37[119] = v33;
  v37[117] = (v30 | v36) ^ 0xC3;
  v37[54] = v35 | ((v34 ^ 6) << 24);
  return (*(STACK[0x57D8] + 8 * v10))();
}

uint64_t sub_100437E04()
{
  v0 = STACK[0x51B8] - 21343;
  LODWORD(STACK[0xDD84]) = -143155982;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100437E78()
{
  if ((v3 - v0 + v2 + 59) == (((v0 - 113) | 0x22) ^ 0x88))
  {
    v1 = 0;
  }

  return (*(STACK[0x57D8] + 8 * ((v1 * (((v0 + 4165) | 0x4810) ^ 0x3E0E)) ^ (v0 + 14615))))();
}

uint64_t sub_100437EDC()
{
  v2 = *(v1 - 0x683CBC57EAB92A36);
  STACK[0xA530] = v2;
  return (*(STACK[0x57D8] + 8 * ((939 * (((v2 == 0x308E083E0C524CBELL) ^ (v0 - 51)) & 1)) ^ v0)))();
}

uint64_t sub_100438074@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xDAF0]) = v1;
  LOBYTE(STACK[0xDAF7]) = 0;
  STACK[0xB510] = 0xD38CBDD3ACAFF84ALL;
  LODWORD(STACK[0xCB38]) = -769884012;
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_100438150@<X0>(int a1@<W8>)
{
  v4 = STACK[0x57D8];
  v5 = *(STACK[0x57D8] + 8 * a1);
  v6 = STACK[0x7ED8];
  v7 = (&STACK[0x10120] + v6);
  *v7 = 0xB92DD1E8EAE74BFLL;
  v7[1] = 0x27C51F316326AFE4;
  *(&STACK[0x10120] + v6 + 16) = veorq_s8(*(&STACK[0x10120] + v6), xmmword_1012371F0);
  STACK[0xAF38] = v5;
  STACK[0x7ED8] = v6 + 32;
  STACK[0xCF30] += 32;
  LODWORD(STACK[0xD484]) = 0;
  STACK[0xD4D0] = v2;
  STACK[0xD490] = v3;
  return (*(v4 + 8 * ((32414 * ((&STACK[0x10120] + v6 + 16) == v3)) ^ v1)))();
}

uint64_t sub_100438320()
{
  *(v6 + 2924) = v3;
  *(v6 + 2923) = v1;
  *(v6 + 2916) = v4;
  *(v6 + 2928) = v2;
  *(v6 + 2936) = v2;
  v7 = v0 - 323734818;
  v8 = v7 < 0xF2E239B5;
  v9 = v4 - 220055115 < v7;
  if (v8 != v4 > ((v5 + 2074589254) & 0x8457FF8C ^ ((v5 ^ 0x1763) + 220031212)))
  {
    v9 = v8;
  }

  return (*(STACK[0x57D8] + 8 * ((8141 * v9) ^ v5)))();
}

uint64_t sub_1004384A4()
{
  v4 = STACK[0xA508];
  v5 = (((v1 ^ 0xB2276D2) - 186808018) ^ ((v1 ^ 0x24E344BD) - 618874045) ^ ((v1 ^ 0xFDDDB2FB) + 35779759 + 11307 * (v2 ^ 0x27B))) - 627343911;
  v6 = 289235981 * ((((2 * (v3 - 240)) | 0xE3915FE8) - (v3 - 240) - 1908977652) ^ 0xF64A7FCB);
  LODWORD(STACK[0x1D4D8]) = v6 + 359748709;
  STACK[0x1D4E0] = &STACK[0x5D6C];
  LODWORD(STACK[0x1D4EC]) = v5 ^ v6;
  STACK[0x1D4C8] = v4;
  LODWORD(STACK[0x1D4C0]) = v2 - v6 + 7464;
  STACK[0x1D4F0] = &STACK[0xBCD0];
  STACK[0x1D4D0] = v0;
  v7 = STACK[0x57D8];
  v8 = (*(STACK[0x57D8] + 8 * (v2 + 31218)))(v3 - 240);
  return (*(v7 + 8 * ((31372 * (LODWORD(STACK[0x1D4E8]) == (v2 ^ 0x27B) - 143113073)) ^ v2)))(v8);
}

uint64_t sub_100438650@<X0>(unsigned __int8 *a1@<X8>)
{
  STACK[0xD1B0] = 0x32FE2E1BBD6F5B40;
  STACK[0xD168] = 0;
  STACK[0xD190] = 0;
  v2 = a1[6];
  v3 = *(&off_101353600 + v1 - 26116);
  v4 = *(v3 + (v2 ^ 0x1A));
  STACK[0xD1A0] = 0;
  STACK[0xD178] = 0;
  STACK[0xD170] = 0;
  STACK[0xD188] = 0;
  LOBYTE(v2) = (((v2 ^ 0x34 ^ v4) >> 2) | ((v2 ^ 0x34 ^ v4) << 6)) ^ 0xB7;
  v5 = *a1;
  v6 = a1[2] ^ 0xF4;
  v7 = ((v2 >> 6) | (4 * v2)) ^ 0xDE;
  v8 = a1[7];
  v9 = *(&off_101353600 + (v1 ^ 0x6E27)) - 8;
  STACK[0x5610] = v9;
  LODWORD(v9) = *(v9 + v6);
  LODWORD(STACK[0xD164]) = -869503642;
  STACK[0x5600] = *(&off_101353600 + v1 - 25951) - 4;
  v10 = *(*(&off_101353600 + v1 - 25755) + (v8 ^ 0xEE));
  v11 = a1[12];
  v12 = *(&off_101353600 + v1 - 26884) - 8;
  LODWORD(v9) = ((v9 ^ 0x37) << 8) | ((*(*(&off_101353600 + v1 - 25832) + (v5 ^ 0xEF) - 8) ^ 0xFFFFFFE1) << 24);
  v13 = *(&off_101353600 + (v1 ^ 0x687C)) - 12;
  LODWORD(v8) = v13[(((a1[4] - (a1[4] ^ 0xBD)) ^ 0xFFFFFFFE) + a1[4]) ^ 0x1ELL];
  v14 = v10 & 0xFFFF00FF | (v7 << 8) | ((v8 ^ ((v8 ^ 0x69) >> 5) ^ ((v8 ^ 0x69) >> 4)) << 24);
  STACK[0x55E0] = *(&off_101353600 + (v1 ^ 0x6E97)) - 8;
  STACK[0x55F0] = v13;
  v15 = a1[1];
  v16 = a1[13];
  v17 = a1[3];
  LODWORD(STACK[0x57B0]) = (v13[v11 ^ 0x9F] ^ ((v13[v11 ^ 0x9F] ^ 0x69) >> 5) ^ ((v13[v11 ^ 0x9F] ^ 0x69) >> 4)) ^ 0xF3;
  LODWORD(v11) = v12[v15 ^ 0x15];
  v18 = a1[14];
  v19 = *(&off_101353600 + v1 - 27039);
  STACK[0x55D0] = v19;
  v20 = *(v19 + (v16 ^ 5)) - 95;
  LODWORD(v19) = v9 | ((v11 ^ 0xA8) << 16);
  LODWORD(STACK[0x57C0]) = (v18 ^ (((*(v3 + (v18 ^ 3)) + 33) ^ 0xBE) - ((2 * *(v3 + (v18 ^ 3))) & 0xBF) + ((2 * (*(v3 + (v18 ^ 3)) + 33)) & 0x7C))) ^ 0x40;
  LODWORD(STACK[0x5790]) = v20 ^ 0xF1;
  v21 = a1[15];
  v22 = a1[5] ^ 0x4CLL;
  v23 = *(&off_101353600 + v1 - 26560) - 4;
  STACK[0x55C0] = v23;
  LOBYTE(v22) = v23[v22];
  v24 = *(&off_101353600 + v1 - 26046) - 12;
  STACK[0x55B0] = v24;
  LODWORD(v21) = v24[v21 ^ 0x55];
  v25 = *(&off_101353600 + (v1 ^ 0x6E50)) - 4;
  STACK[0x55A0] = v25;
  LODWORD(v3) = v25[((v17 - ((2 * v17) & 0x18) + 12) ^ (-12 - (v17 - ((2 * v17) & 0x18))) ^ (14 - ((v17 - ((2 * v17) & 0x18) + 12) ^ 0xE))) + 14];
  LODWORD(STACK[0x57A0]) = v21 ^ 0xDD;
  LODWORD(v19) = v19 & 0xFFFFFF00 | ((v3 >> 7) | (2 * v3)) ^ 0x23;
  LODWORD(STACK[0x56C0]) = ((v22 + 17) ^ 0xF6) << 16;
  LODWORD(STACK[0x5720]) = v14 & 0xFF00FFFF | (((v22 + 17) ^ 0xF6) << 16);
  LODWORD(STACK[0x5640]) = v19;
  LODWORD(STACK[0x5660]) = v19 ^ 0xFB;
  return (*(STACK[0x57D8] + 8 * v1))(2152805016, 2069461121, v24, 3656246165);
}

uint64_t sub_100438AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0x51B8];
  v8 = STACK[0x77A8];
  v9 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * (STACK[0x51B8] - 21414));
  return (*(v9 + 8 * (v7 - 17963)))(v8, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_100438C20()
{
  v0 = STACK[0x51B8] - 10649;
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))(STACK[0x66A0] - 0x30BDFED8F32E6831);
  return (*(v1 + 8 * v0))(v2, 2147548249, 0x30BDFED8F32E6831);
}

uint64_t sub_100438EDC()
{
  if (v0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1 == ((v2 + 692726805) & 0xD6B5D3EE ^ 0x51EC);
  }

  v4 = v3;
  return (*(STACK[0x57D8] + 8 * (((4 * v4) | (8 * v4)) ^ v2)))();
}

uint64_t sub_100438FE8()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x57D8];
  STACK[0xCF38] = *(STACK[0x57D8] + 8 * (STACK[0x51B8] - 19757));
  return (*(v1 + 8 * ((v0 - 14887) ^ (v0 - 19757))))();
}

uint64_t sub_100439064()
{
  v1 = STACK[0xDB98];
  LODWORD(STACK[0xD0BC]) = LODWORD(STACK[0xDB98]) + 10;
  v2 = ((v0 ^ 0x79D01C2) - 127730114) ^ ((v0 ^ 0xC68E4930) + 963753680) ^ ((v0 ^ 0xC113BA5B) + LODWORD(STACK[0x1E60]));
  LODWORD(STACK[0xD0C0]) = v2 + 2069847806;
  v3 = v1 + 62131 + v2;
  v4 = v3 - 977807927;
  v5 = (((LODWORD(STACK[0xDB84]) ^ 0xF3300727) + 214956249) ^ ((LODWORD(STACK[0xDB84]) ^ 0x829B2141) + 2103762623) ^ ((LODWORD(STACK[0xDB84]) ^ 0xA3B7A6F2) + 1548245262)) - 1747691939;
  v6 = v3 > 0x3A482A36;
  v7 = v6 ^ (v5 < 0xC5B7D5C9);
  v8 = v4 > v5;
  if (!v7)
  {
    v6 = v8;
  }

  return (*(STACK[0x57D8] + 8 * ((3486 * v6) ^ LODWORD(STACK[0x1E24]))))();
}

uint64_t sub_10043933C(unint64_t a1)
{
  v3 = STACK[0xA008];
  v4 = STACK[0x7F00];
  v5 = 289235981 * ((v2 + 1966689331 - 2 * ((v2 - 240) & 0x75394D23)) ^ 0xF2BB9D1C);
  STACK[0x1D4E0] = &STACK[0xA55C];
  LODWORD(STACK[0x1D4DC]) = v4 ^ v5;
  STACK[0x1D4D0] = a1;
  STACK[0x1D4C8] = v3;
  LODWORD(STACK[0x1D4D8]) = -529122972 - v5 + v1 + 3489;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v1 + 6730)))(v2 - 240);
  return (*(v6 + 8 * ((2246 * (LODWORD(STACK[0xA55C]) < ((v1 + 301337635) & 0xEE099B7F) - 1145)) ^ v1)))(v7);
}

uint64_t sub_100439514()
{
  LODWORD(STACK[0x10038]) = v1;
  v2 = v0 - 0x3D67E77F652F2783 == ((v1 + 9477) ^ 0xE9Cu) + 3868963407;
  return (*(STACK[0x57D8] + 8 * (((8 * v2) | (32 * v2)) ^ v1)))(3868985625, 2695709820, 27);
}

uint64_t sub_10043959C()
{
  v10 = *(v9 + v1 * v7 + 8698028 - 5816 * (((((v1 * v7 + 8698028) >> 3) * v6) >> 32) >> 7));
  v11 = (((v0 ^ 0x320DD6F7 ^ v10) - 839751480) ^ ((v10 ^ 0x6B7E4057) - 1803436119) ^ ((v10 ^ 0x5973D7A8) - 1500764072)) * v2 + 53405818;
  v12 = *(v8 + 4 * (v11 - (((v11 * v5) >> 32) >> 12) * v4));
  v13 = (((HIBYTE(v12) ^ 0x12E10CF8) + 1865405712) ^ ((HIBYTE(v12) ^ 0x1A6B1FED) + 1738917403) ^ ((HIBYTE(v12) ^ 0x88A137D) + 1967442571)) * v7 - 131085855;
  v14 = *(v9 + (BYTE1(v12) ^ 0xB6) * v7 + 6213569 - 5816 * (((11815591 * ((BYTE1(v12) ^ 0xB6u) * v7 + 6213569)) >> 32) >> 4));
  v15 = *(v9 + (BYTE2(v12) ^ 0x4F) * v7 + 6213569 - 5816 * (((11815591 * ((BYTE2(v12) ^ 0x4Fu) * v7 + 6213569)) >> 32) >> 4)) << 8;
  v16 = (((v12 ^ 0x79205A5C) - 1479163614) ^ ((v12 ^ 0x91B5A880) + 1329607678) ^ ((v12 ^ 0xE895F256) + 912288044)) * v7 + 267465497;
  v17 = *(v9 + v16 - 5816 * ((((v16 >> 3) * v6) >> 32) >> 7));
  *(v8 + 4 * (v1 * v2 + 9469466 - ((((v1 * v2 + 9469466) * v5) >> 32) >> 12) * v4)) = ((((((((*(v9 + v13 - 5816 * ((((v13 >> 3) * v6) >> 32) >> 7)) << 16) ^ 0x9F6793) & (v15 ^ 0xFF3893) | v15 & 0x9800) ^ 0xD34B7E) & (v14 ^ (v3 + 24)) ^ v14 & 0x12) << 8) ^ 0x627D8B94) & (v17 ^ 0xFFFFFF18) | v17 & 0x6B) ^ 0x819ED25D;
  return (*(STACK[0x57D8] + 8 * ((10476 * (v1 == 255)) ^ v0)))(1092359492);
}

uint64_t sub_100439858(unint64_t a1)
{
  STACK[0x5770] = v3;
  LODWORD(STACK[0x5730]) = v2;
  STACK[0x5550] = v5;
  LODWORD(STACK[0x5280]) = v1;
  STACK[0x5790] = a1;
  LODWORD(STACK[0x5780]) = (v4 - 15720) | 0x250;
  LODWORD(STACK[0x57A0]) = (v4 + 1150586375) & 0xBB6B7DB5;
  STACK[0xD7D0] = 0;
  STACK[0xD7D8] = 0;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v4 + 4627)))(1032);
  STACK[0xD7F0] = v7;
  v8 = (*(v6 + 8 * (v4 ^ 0x1213)))(1032);
  STACK[0xD7E0] = v8;
  v9 = (*(v6 + 8 * (v4 | 0x1213)))(1032);
  STACK[0xD7D8] = v9;
  v10 = (*(v6 + 8 * (v4 ^ 0x1213)))(1028);
  STACK[0xD7D0] = v10;
  STACK[0x57B0] = v7;
  if (v7)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  v14 = !v11 && v10 != 0 && v8 != 0;
  return (*(v6 + 8 * ((v14 * (LODWORD(STACK[0x5780]) + LODWORD(STACK[0x57A0]) - 41129)) ^ v4)))(v8);
}

uint64_t sub_100439994@<X0>(int a1@<W8>)
{
  v3 = v1 - 12723;
  v4 = (((a1 ^ 0x7623D8BF) - 1982083349 + (v3 ^ 0x7EF5)) ^ ((a1 ^ 0xE0618C23) + 530478045) ^ ((a1 ^ 0x1B22BDA ^ v3 ^ 0x45ECD971) - 1147065352)) - 769884028;
  if (v2)
  {
    v5 = v4 >= 0xFFFFFFF0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  return (*(STACK[0x57D8] + 8 * ((17527 * v6) ^ v3)))();
}

uint64_t sub_100439A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, int a3@<W8>)
{
  v10 = STACK[0x5378];
  v11 = *(STACK[0x57D8] + 8 * ((((a3 - 9485) ^ 0x47C3 ^ (2713 * (a3 ^ 0x585D))) * (SLODWORD(STACK[0x5378]) > 1)) ^ (a3 + 2450)));
  v12 = STACK[0x5470];
  LODWORD(STACK[0x5700]) = v6;
  LODWORD(STACK[0x5490]) = v4;
  LODWORD(STACK[0x56E0]) = v3;
  LODWORD(STACK[0x5378]) = v10;
  LODWORD(STACK[0x5470]) = v12;
  LODWORD(STACK[0x5480]) = v5;
  return v11(a1, v7, v9, a2, v8);
}

uint64_t sub_100439B18()
{
  v1 = STACK[0x6BB8];
  v2 = *(STACK[0x6BB8] - 0x1883660EE814440ALL);
  LODWORD(STACK[0xDAB0]) = (((v0 ^ 0x708B) + 21614) ^ 0x587F) + v2;
  v3 = *(v1 - 0x1883660EE814440ELL) + 1950938828;
  v2 += 1950938869;
  v4 = v2 < 0xF1926B48;
  v5 = v3 < v2;
  if (v4 != v3 < 0xF1926B48)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = (STACK[0xBC08] == 0) | v6 & 1;
  if (v7)
  {
    v8 = -143155721;
  }

  else
  {
    v8 = -143113071;
  }

  LODWORD(STACK[0xDAB4]) = v8;
  return (*(STACK[0x57D8] + 8 * ((13 * v7) ^ v0)))();
}

uint64_t sub_100439BFC(uint64_t a1, char a2, int a3, int a4)
{
  v10 = STACK[0x5180];
  v11 = v5 ^ (((v5 ^ v8) & STACK[0x5180]) >> 1);
  v12 = v11 ^ 0xBD154C62;
  v13 = v11 ^ v8;
  v14 = STACK[0x53C0];
  v15 = STACK[0x5770];
  v16 = STACK[0x53B8];
  v17 = STACK[0x5368];
  LODWORD(STACK[0x5318]) = (((v12 & STACK[0x53B8] | LODWORD(STACK[0x4DB8])) ^ 0xE61334CC) << LODWORD(STACK[0x5368])) + ((v13 & STACK[0x53C0]) >> LODWORD(STACK[0x5770]));
  v18 = STACK[0x5178];
  v19 = v6 ^ ((v6 & STACK[0x5178]) >> 1);
  v20 = STACK[0x5348];
  LODWORD(STACK[0x53A8]) = (((((((a4 - 24627) | 0x6033) + 321158112) ^ v19) & STACK[0x5348] | LODWORD(STACK[0x4DC0])) ^ 0x1324F61B) << v9) ^ ((v19 & a3) >> a2);
  LODWORD(STACK[0x53A0]) = (((v7 ^ ((v7 & v10) >> 1)) & v20) << v17) + (((v7 ^ ((v7 & v10) >> 1)) & v14) >> v15);
  LODWORD(STACK[0x5320]) = ((((v4 ^ ((v4 & v18) >> 1) ^ 0xFA3D0328) & v16 | LODWORD(STACK[0x4DB0])) ^ 0xFA3D0328) << LODWORD(STACK[0x5378]) << LODWORD(STACK[0x5390])) ^ (((v4 ^ ((v4 & v18) >> 1)) & a3) >> a2);
  v21 = STACK[0x5790];
  v22 = STACK[0x51A0];
  v23 = STACK[0x5198];
  if (STACK[0x5790])
  {
    v24 = STACK[0x5198];
  }

  else
  {
    v24 = STACK[0x51A0];
  }

  v25 = STACK[0x5398];
  if (v21)
  {
    v23 = STACK[0x5190];
  }

  else
  {
    v22 = STACK[0x5398];
    v25 = STACK[0x5190];
  }

  if ((v21 & 2) != 0)
  {
    v26 = v25;
  }

  else
  {
    v26 = v24;
  }

  LODWORD(STACK[0x51A0]) = v26;
  if ((v21 & 2) == 0)
  {
    v24 = v25;
  }

  LODWORD(STACK[0x5190]) = v24;
  if ((v21 & 2) != 0)
  {
    v27 = v23;
  }

  else
  {
    v27 = v22;
  }

  LODWORD(STACK[0x5398]) = v27;
  if ((v21 & 2) != 0)
  {
    v28 = v22;
  }

  else
  {
    v28 = v23;
  }

  LODWORD(STACK[0x5198]) = v28;
  return (*(STACK[0x57D8] + 8 * (a4 - 17235)))();
}

uint64_t sub_100439F60()
{
  v0 = STACK[0xD610];
  *(v0 + 840) = 0u;
  *(v0 + 792) = 0;
  *(v0 + 796) = -769884012;
  *(v0 + 800) = 0x1F52A40E16363DABLL;
  *(v0 + 808) = 0;
  *(v0 + 816) = -769884012;
  *(v0 + 856) = 0;
  *(v0 + 864) = -769884012;
  *(v0 + 868) = 0;
  *(v0 + 344) = 0x1FF90131E266DB89;
  return (STACK[0x78A8])();
}

uint64_t sub_10043A180(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = (v8 + v6);
  *(a3 + 516) = v9 - 515301079;
  *(a3 + 520) = v5 + 64;
  *(a3 + 528) = a1 + v9;
  *(a3 + 536) = (v4 ^ a4);
  v10 = ((((146 * (v7 ^ 0x2216)) ^ 0x38FB) + 17449) ^ v4) + 3;
  *(a3 + 548) = v10;
  v12 = v4 != a4 && v10 <= 2560 - v9;
  return (*(STACK[0x57D8] + 8 * ((150 * v12) ^ v7)))();
}

uint64_t sub_10043A2D4@<X0>(unint64_t a1@<X1>, unint64_t a2@<X7>, int a3@<W8>)
{
  STACK[0x9360] = a1;
  STACK[0x7868] = a2;
  return (*(STACK[0x57D8] + 8 * (((*(a1 + 4) == (a3 ^ 0x12B3) + 1172438974) * (a3 ^ 0x4B13)) ^ a3)))();
}

uint64_t sub_10043A6C0@<X0>(unsigned int a1@<W8>)
{
  v2 = STACK[0x1000];
  LODWORD(STACK[0x1D4E0]) = LODWORD(STACK[0xFF4]) + STACK[0x1000];
  v3 = STACK[0x51B8];
  LODWORD(STACK[0x1D4CC]) = v2 + 1451493860 + STACK[0x51B8];
  LODWORD(STACK[0x1D4D0]) = v2;
  LODWORD(STACK[0x1D4D4]) = LODWORD(STACK[0x1010]) ^ v2;
  STACK[0x1D4C0] = a1 ^ v2;
  STACK[0x1D4D8] = v2;
  LODWORD(STACK[0x1D4C8]) = LODWORD(STACK[0x100C]) - v2;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v3 ^ 0x2462)))(v1 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4E4])))(v5);
}

uint64_t sub_10043A858()
{
  v2 = STACK[0x57D8];
  STACK[0x9CE0] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v0 - 14328 + v0 - 20385 - 4821)))();
}

uint64_t sub_10043A898()
{
  v1 = (v0 + 2054845804) & 0x8E0D57FF;
  v2 = STACK[0xCA28];
  LODWORD(STACK[0x896C]) = STACK[0x6378];
  v3 = STACK[0x7ED8];
  STACK[0xBAA8] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = (v1 ^ 0x49AB) + v3 - 22598;
  v4 = STACK[0x5F18];
  STACK[0xC808] = STACK[0x5F18];
  STACK[0xA408] = v2;
  STACK[0x5F38] = 0;
  LODWORD(STACK[0xA0C4]) = -769884012;
  STACK[0x8738] = 0;
  LODWORD(STACK[0xA7C4]) = 0;
  if (STACK[0xA418])
  {
    v5 = STACK[0xB340] == 0;
  }

  else
  {
    v5 = 1;
  }

  v8 = !v5 && v4 != 0 && LODWORD(STACK[0xB6AC]) == ((v1 - 1817) ^ 0xD21C8A60);
  return (*(STACK[0x57D8] + 8 * ((30370 * v8) ^ v1)))();
}

uint64_t sub_10043A9B4()
{
  *STACK[0x3DA8] = 1;
  *STACK[0x3D40] = STACK[0x9D88] ^ 0xC79E41E01ACBE866 ^ *(*STACK[0x51F0] + (*STACK[0x51E8] & (((v0 - 11906) | 0x6B2C) ^ 0x4B90313Du))) & 0x7FFFFFFFFFFFFFFFLL;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10043AAC8@<X0>(unint64_t a1@<X0>, unint64_t a2@<X2>, char a3@<W4>, int a4@<W5>, int a5@<W8>)
{
  STACK[0xDDE0] = v7;
  LODWORD(STACK[0xDDEC]) = v8;
  STACK[0xDDF0] = a1;
  STACK[0xDDF8] = v12;
  STACK[0xDE00] = v10;
  STACK[0xDE08] = v9;
  STACK[0xDE10] = v5;
  STACK[0xDE18] = v11;
  STACK[0xDE20] = v6;
  STACK[0xDE28] = a2;
  LOBYTE(STACK[0xDE36]) = v9 == 0;
  return (*(STACK[0x57D8] + 8 * (((((((a5 - 88 + a3) & 0x5E) + 1) ^ (v9 == 0)) & 1) * a4) ^ a5)))();
}

uint64_t sub_10043AB48()
{
  v0 = STACK[0x2E74];
  v1 = (LODWORD(STACK[0x2E74]) + 520380424) | 0x4403;
  STACK[0xA230] = &STACK[0x70E0];
  STACK[0x7740] = &STACK[0x71B8];
  LODWORD(STACK[0xB998]) = -1818308609;
  return (*(STACK[0x57D8] + 8 * ((v0 + 520356639 + v1) ^ (32190 * (v0 == 306978604)))))();
}

uint64_t sub_10043AC30()
{
  v4 = STACK[0xA8B8];
  v5 = STACK[0x1FA0];
  STACK[0x1D4C0] = STACK[0x1FA0];
  LODWORD(STACK[0x1D4CC]) = v5 + v0 + v2;
  LODWORD(STACK[0x1D4D4]) = v5 ^ (v2 + v1) ^ 0xC4F48105;
  LODWORD(STACK[0x1D4E0]) = ((v2 + v1) ^ 0xC4F4817D) + v5;
  STACK[0x1D4D8] = v4 + v5;
  LODWORD(STACK[0x1D4C8]) = ((v2 + v1) ^ 0xC4F48EB0) - v5;
  LODWORD(STACK[0x1D4D0]) = v5;
  v6 = v2 + 9182;
  v7 = STACK[0x57D8];
  v8 = (*(STACK[0x57D8] + 8 * v6))(v3 - 240);
  return (*(v7 + 8 * SLODWORD(STACK[0x1D4E4])))(v8);
}

uint64_t sub_10043ACC8()
{
  STACK[0xB6E0] = STACK[0xDCD0];
  LODWORD(STACK[0x6E34]) = *(STACK[0x44F0] + 256);
  return (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x2BFC])))();
}

uint64_t sub_10043AD48@<X0>(int a1@<W8>)
{
  *(v1 + 1272) = v3;
  v4 = v2 == (a1 ^ 0xF777C10A) + (a1 ^ 0x7567);
  return (*(STACK[0x57D8] + 8 * ((2 * v4) | (4 * v4) | a1)))();
}

uint64_t sub_10043AE4C@<X0>(_BYTE *a1@<X8>)
{
  a1[16] = v2[16] ^ 0x1E;
  a1[17] = v2[17] ^ 0xDC;
  a1[18] = v2[18] ^ 0xC2;
  a1[19] = v2[19] ^ 0x1F;
  a1[20] = v2[20] ^ 0xA;
  a1[21] = v2[21] ^ 0x5B;
  a1[22] = v2[22] ^ 0xBA;
  a1[23] = v2[23] ^ (v1 + 68);
  return (*(STACK[0x57D8] + 8 * (v1 - 18762)))();
}

uint64_t sub_10043AF48@<X0>(int a1@<W8>)
{
  v4 = *(*STACK[0x51F0] + (*STACK[0x51E8] & ((v3 + 499600784) & 0xFFFFFFFFE2387EFFLL ^ 0xFFFFFFFF815C2258)));
  v5 = v4 & 0x7FFFFFFF;
  v6 = STACK[0x57D8];
  v7 = (v4 & v1 ^ a1 ^ v5 ^ LODWORD(STACK[0x10F4])) - (v4 & v1 ^ a1) + ((2 * (v4 & v1 ^ a1 ^ v5)) & 0x20);
  STACK[0x9AA8] = *(STACK[0x57D8] + 8 * v2);
  v8 = v4 & (((v3 - 23098) | 0x5050) ^ 0x6D7EB6CC) ^ 0x647EE810;
  v9 = (*(v6 + 8 * (v3 ^ 0x1E7E)))((v8 ^ v5 ^ LODWORD(STACK[0x10F8])) - v8 + 2 * (v4 ^ 0x76FEF930) + v7 + ((2 * (v8 ^ v5)) & 0x2E ^ 0xEu) + 2);
  STACK[0x6278] = v9;
  return (*(v6 + 8 * ((35 * (v9 == 0)) ^ v3)))();
}

uint64_t sub_10043B068()
{
  STACK[0x57C0] = 0;
  v0 = STACK[0x143C];
  v1 = STACK[0x8818];
  STACK[0x8E90] = STACK[0xB238];
  v2 = STACK[0xCF18];
  LODWORD(STACK[0x7D94]) = STACK[0xCF18];
  STACK[0xC320] = 0x1883660EE8144416;
  STACK[0x7810] = v1;
  LODWORD(STACK[0xC0DC]) = -2013569041;
  STACK[0x8000] = &STACK[0xC320];
  STACK[0x5FC0] = 0;
  LODWORD(STACK[0xA12C]) = v2;
  return (*(STACK[0x57D8] + 8 * (v0 ^ 0xC8477A9B ^ (6409 * (v0 > 0x4AF56D7D)))))();
}

uint64_t sub_10043B258()
{
  v2 = STACK[0x9110];
  STACK[0xDAF8] = STACK[0xB510];
  LODWORD(STACK[0xAD74]) = v2;
  return (*(STACK[0x57D8] + 8 * (((((2589 * (v0 ^ 0x161F) + 985606359) & 0xC540A7FD) + 23230) * v1) ^ v0)))();
}

uint64_t sub_10043B2DC()
{
  STACK[0x57C0] = 0;
  STACK[0x97C0] = STACK[0xA788];
  v1 = ((((LODWORD(STACK[0x8784]) ^ 0x78058CC7) - 2013629639) ^ ((LODWORD(STACK[0x8784]) ^ 0x768C70D) - 124307213) ^ ((LODWORD(STACK[0x8784]) ^ (((v0 - 1588113816) & 0x5EA8EDFE) - 1385071178)) + 1385051298)) - 769883981) & 0xFFFFFFF0;
  v2 = STACK[0x6718];
  STACK[0x9F58] = 0x1883660EE8144416;
  STACK[0x7810] = v2;
  LODWORD(STACK[0xC0DC]) = -2013569075;
  STACK[0x8000] = &STACK[0x9F58];
  STACK[0x5FC0] = 0;
  LODWORD(STACK[0xA12C]) = (((v1 ^ 0x6437C21C) - 418530728) ^ ((v1 ^ 0xCB676E5A) + 1214060050) ^ ((v1 ^ 0xAF50AC46) + 745198606)) - 99681232;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10043B4B0()
{
  v2 = STACK[0x9524];
  LODWORD(STACK[0x9E14]) = 1;
  v4 = v1 == v0 - 143124130 && v2 == ((v0 - 6957) | 0x4850) - 143135685;
  return (*(STACK[0x57D8] + 8 * ((22614 * v4) ^ v0)))();
}

uint64_t sub_10043B5D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W4>, unsigned int a5@<W8>)
{
  LODWORD(STACK[0x5760]) = v11;
  LODWORD(STACK[0x5770]) = v10;
  LODWORD(STACK[0x5780]) = v5;
  STACK[0x5790] = v9;
  v13 = (LODWORD(STACK[0x57C0]) + 3284) | 0x804;
  v15 = STACK[0x5750];
  v16 = *(v6 + STACK[0x5750]) * v12;
  v17 = v16 ^ a5;
  v18 = (v16 ^ a5) + v7;
  v19 = v18 >> 16;
  v20 = (v18 + WORD1(v18)) >> 8;
  v21 = STACK[0x5750] + v8;
  LODWORD(v18) = STACK[0x5750] + v8 + v17 + (v18 >> 16) + v20;
  LODWORD(STACK[0x5740]) = v13;
  v22 = v15 + a4;
  v23 = v15 + a4 + v17 + v19 + v20;
  v24 = (v23 ^ v16) + v7;
  v25 = v24 >> 16;
  v26 = (v24 + WORD1(v24)) >> 8;
  v27 = v21 + (v23 ^ v16) + v25 + v26;
  v28 = (v22 + (v23 ^ v16) + v25 + v26) ^ v16;
  v29 = (v28 + v7);
  return (*(STACK[0x57D8] + 8 * (((4 * (v21 != 15)) | (16 * (v21 != 15))) ^ LODWORD(STACK[0x57C0]))))(a1 - 1, a2 - 1, (((v13 - a3 - 18950) ^ a3 ^ (((v18 >> 1) & 0x15556E9A ^ v18) - ((v18 >> 1) & 0x15556E9A ^ v18 ^ a3))) + ((v18 >> 1) & 0x15556E9A ^ v18)) ^ v27 ^ (v27 >> 1) & 0x15556E9A ^ (v21 + v28 + (v29 >> 16) + ((v29 + WORD1(v29)) >> 8)) ^ ((v21 + v28 + (v29 >> 16) + ((v29 + WORD1(v29)) >> 8)) >> 1) & 0x15556E9A);
}

uint64_t sub_10043B81C()
{
  LODWORD(STACK[0x1D4C8]) = v0 - 1606500204 - 16169987 * ((((2 * (v1 - 240)) | 0xC90C9332) - (v1 - 240) + 460961383) ^ 0xB1087CB1);
  v2 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * (v0 + 25522)))(v1 - 240);
  STACK[0xBF00] = STACK[0x1D4C0];
  LODWORD(STACK[0x1D4C8]) = v0 - 1606500204 - 16169987 * ((v1 - 240) ^ 0x558E3528);
  (*(v2 + 8 * (v0 ^ 0x64D6)))(v1 - 240);
  STACK[0x7978] = STACK[0x1D4C0];
  LODWORD(STACK[0x1D4C8]) = v0 - 1606500204 - 16169987 * (((((v1 - 240) | 0x5A11320) ^ 0xFFFFFFFE) - (~(v1 - 240) | 0xFA5EECDF)) ^ 0xAFD0D9F7);
  v3 = (*(v2 + 8 * (v0 ^ 0x64D6)))(v1 - 240);
  STACK[0x9D98] = STACK[0x1D4C0];
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_10043BB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v23 = v12 + a3 + v19;
  *(&v23 + 1) = v12 + a3 + v13;
  *&STACK[0x5780] = v23;
  *&v23 = v12 + a3 + 0x210EAB80021A04F5;
  *(&v23 + 1) = v12 + a3 + 0x210EAB80021A04F4;
  *&STACK[0x5790] = v23;
  *&v23 = v12 + a3 + a8;
  *(&v23 + 1) = v12 + a3 + 0x210EAB80021A04F6;
  *&STACK[0x57C0] = v23;
  v24.i64[0] = v12 + a3 + v21;
  v24.i64[1] = v12 + a3 + v22;
  v25.i64[0] = v12 + a3 + v17;
  v25.i64[1] = v12 + a3 + v20;
  v26.i64[0] = v12 + a3 + v16;
  v26.i64[1] = a4 + v8;
  v27.i64[0] = v12 + a3 + v14;
  v27.i64[1] = v12 + a3 + v15;
  v28 = *&STACK[0x4D70];
  v29 = vandq_s8(v27, *&STACK[0x4D70]);
  v30 = vandq_s8(v26, *&STACK[0x4D70]);
  v31 = vandq_s8(v25, *&STACK[0x4D70]);
  v32 = vandq_s8(v24, *&STACK[0x4D70]);
  v33 = vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL);
  v34 = vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL);
  v35 = vdupq_n_s64(0x38uLL);
  v36 = vdupq_n_s64(0x989A65DE61E98738);
  v37 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v29, 0x38uLL), v29, 8uLL), v36);
  v38 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v30, 0x38uLL), v30, 8uLL), v36);
  v39 = vaddq_s64(v34, v36);
  v40 = vaddq_s64(v33, v36);
  v41 = *&STACK[0x5680];
  v42 = vsubq_s64(vorrq_s8(v37, *&STACK[0x57B0]), vorrq_s8(v37, *&STACK[0x5680]));
  v43 = vsubq_s64(vorrq_s8(v38, *&STACK[0x57B0]), vorrq_s8(v38, *&STACK[0x5680]));
  v44 = vsubq_s64(vorrq_s8(v39, *&STACK[0x57B0]), vorrq_s8(v39, *&STACK[0x5680]));
  v45 = vaddq_s64(vsubq_s64(vorrq_s8(v40, *&STACK[0x57B0]), vorrq_s8(v40, *&STACK[0x5680])), *&STACK[0x5680]);
  v46 = vaddq_s64(v44, *&STACK[0x5680]);
  v47 = vaddq_s64(v43, *&STACK[0x5680]);
  v48 = veorq_s8(v46, *&STACK[0x5750]);
  v49 = veorq_s8(v45, *&STACK[0x5750]);
  v50 = *&STACK[0x5750];
  v51 = *&STACK[0x5740];
  v52 = veorq_s8(v45, *&STACK[0x5740]);
  v53 = veorq_s8(v46, *&STACK[0x5740]);
  v54 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v53);
  v55 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v52);
  v56 = veorq_s8(v55, *&STACK[0x5730]);
  v57 = veorq_s8(v54, *&STACK[0x5730]);
  v58 = *&STACK[0x5730];
  v59 = *&STACK[0x5670];
  v60 = *&STACK[0x5720];
  v61 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v55, *&STACK[0x5670]), *&STACK[0x5720]), v56), vandq_s8(v56, *&STACK[0x5670]));
  v62 = *&STACK[0x5710];
  v63 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v54, *&STACK[0x5670]), *&STACK[0x5720]), v57), vandq_s8(v57, *&STACK[0x5670])), *&STACK[0x5710]);
  v64 = vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL);
  v65 = veorq_s8(v61, *&STACK[0x5710]);
  v66 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL));
  v67 = veorq_s8(v63, v64);
  v68 = vdupq_n_s64(0xBD6CE439E669F3DFLL);
  v69 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v66), v68);
  v70 = vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL);
  v71 = vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL);
  v72 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v67), v68);
  v73 = veorq_s8(v72, v71);
  v74 = veorq_s8(v69, v70);
  v75 = vdupq_n_s64(0x1A1C4C99A6B3D690uLL);
  v76 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v73), v75);
  v77 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v74), v75);
  v78 = v75;
  v79 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL));
  v80 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v81 = vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL);
  v82 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL), v80);
  v83 = vaddq_s64(v81, v79);
  v84 = *&STACK[0x5700];
  v85 = *&STACK[0x57A0];
  v86 = veorq_s8(vaddq_s64(vsubq_s64(v83, vandq_s8(vaddq_s64(v83, v83), *&STACK[0x5700])), *&STACK[0x56F0]), *&STACK[0x57A0]);
  v87 = vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL);
  v88 = veorq_s8(vaddq_s64(vsubq_s64(v82, vandq_s8(vaddq_s64(v82, v82), *&STACK[0x5700])), *&STACK[0x56F0]), *&STACK[0x57A0]);
  v89 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL));
  v90 = veorq_s8(v86, v87);
  v91 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v92 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v90);
  v93 = vaddq_s64(v91, v89);
  v94 = *&STACK[0x56E0];
  v95 = *&STACK[0x56D0];
  v96 = *&STACK[0x56C0];
  v97 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v93, v93), *&STACK[0x56E0]), v93), *&STACK[0x56D0]), *&STACK[0x56C0]);
  v98 = vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL);
  v99 = vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL);
  v100 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v92, v92), *&STACK[0x56E0]), v92), *&STACK[0x56D0]), *&STACK[0x56C0]);
  v101 = veorq_s8(v100, v99);
  v102 = veorq_s8(v97, v98);
  v103 = vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL);
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v102);
  v105 = vaddq_s64(v103, v101);
  v106 = vdupq_n_s64(0x8469B2E456434039);
  v107 = veorq_s8(v105, v106);
  v108 = veorq_s8(v104, v106);
  v109 = vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL);
  v110 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v111 = veorq_s8(v107, v109);
  v112 = vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL);
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v111);
  v114 = vaddq_s64(v112, v110);
  v115 = vdupq_n_s64(0x9C8651A6C7A7E5AuLL);
  v229.val[3] = vshlq_u64(veorq_s8(v113, v115), vnegq_s64(vandq_s8(vshlq_n_s64(v24, 3uLL), v35)));
  v229.val[2] = vshlq_u64(veorq_s8(v114, v115), vnegq_s64(vandq_s8(vshlq_n_s64(v25, 3uLL), v35)));
  v116 = veorq_s8(v47, *&STACK[0x5750]);
  v117 = veorq_s8(v47, *&STACK[0x5740]);
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117);
  v119 = veorq_s8(v118, *&STACK[0x5730]);
  v120 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v118, *&STACK[0x5670]), *&STACK[0x5720]), v119), vandq_s8(v119, *&STACK[0x5670])), *&STACK[0x5710]);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), v68);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v124 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123), v78);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125);
  v127 = *&STACK[0x56F0];
  v128 = veorq_s8(vaddq_s64(vsubq_s64(v126, vandq_s8(vaddq_s64(v126, v126), *&STACK[0x5700])), *&STACK[0x56F0]), *&STACK[0x57A0]);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v130 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129);
  v131 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v130, v130), *&STACK[0x56E0]), v130), *&STACK[0x56D0]), *&STACK[0x56C0]);
  v132 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v133 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v132), v106);
  v119.i64[0] = v12 + a3 + a2;
  v119.i64[1] = v12 + a3 + v9;
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL)));
  v135 = vandq_s8(v119, *&STACK[0x4D70]);
  v136 = vaddq_s64(v42, *&STACK[0x5680]);
  *&STACK[0x5760] = v35;
  v229.val[1] = vshlq_u64(veorq_s8(v134, v115), vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), v35)));
  v137 = veorq_s8(v136, v50);
  v138 = v50;
  v139 = veorq_s8(v136, v51);
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v139);
  v141 = veorq_s8(v140, v58);
  v142 = v58;
  v143 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v140, v59), v60), v141), vandq_s8(v141, v59)), v62);
  v144 = veorq_s8(v143, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v145 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), v144), v68);
  v146 = veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v147 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), v146), v78);
  v148 = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL));
  v149 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL), v148);
  v150 = v84;
  v151 = veorq_s8(vaddq_s64(vsubq_s64(v149, vandq_s8(vaddq_s64(v149, v149), v84)), v127), v85);
  v152 = veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v153 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL), v152);
  v154 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v153, v153), v94), v153), v95), v96);
  v155 = veorq_s8(v154, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v156 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v155), v106);
  v157 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v158 = vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL);
  v159 = vandq_s8(*&STACK[0x57C0], v28);
  v160 = vaddq_s64(v158, v157);
  v161 = *&STACK[0x5790];
  v162 = vandq_s8(*&STACK[0x5790], v28);
  v229.val[0] = vshlq_u64(veorq_s8(v160, v115), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), v35)));
  v163 = *&STACK[0x5780];
  v164 = vandq_s8(*&STACK[0x5780], v28);
  v165 = vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL);
  v166 = vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL);
  v167 = vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL);
  v168 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v36);
  v169 = vaddq_s64(v167, v36);
  v170 = vaddq_s64(v166, v36);
  v171 = vaddq_s64(v165, v36);
  v172 = *&STACK[0x57B0];
  *&STACK[0x5770] = vsubq_s64(vorrq_s8(v168, *&STACK[0x57B0]), vorrq_s8(v168, v41));
  v173 = vaddq_s64(vsubq_s64(vorrq_s8(v171, v172), vorrq_s8(v171, v41)), v41);
  v174 = v18[25];
  v175 = vaddq_s64(vsubq_s64(vorrq_s8(v170, v172), vorrq_s8(v170, v41)), v41);
  v171.i64[0] = vqtbl4q_s8(v229, v174).u64[0];
  v229.val[3] = veorq_s8(v175, v138);
  v229.val[0] = veorq_s8(v173, v138);
  v176 = v138;
  v177 = veorq_s8(v173, v51);
  v178 = veorq_s8(v175, v51);
  v229.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229.val[3], 0x38uLL), v229.val[3], 8uLL), v178);
  v229.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229.val[0], 0x38uLL), v229.val[0], 8uLL), v177);
  v229.val[1] = veorq_s8(v229.val[0], v142);
  v229.val[0] = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v229.val[0], v59), v60), v229.val[1]), vandq_s8(v229.val[1], v59));
  v229.val[1] = veorq_s8(v229.val[3], v142);
  v229.val[3] = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v229.val[3], v59), v60), v229.val[1]), vandq_s8(v229.val[1], v59)), v62);
  v229.val[0] = veorq_s8(v229.val[0], v62);
  v229.val[1] = vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL);
  v179 = veorq_s8(v229.val[0], vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v180 = veorq_s8(v229.val[3], v229.val[1]);
  v229.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229.val[0], 0x38uLL), v229.val[0], 8uLL), v179), v68);
  v229.val[1] = vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL);
  v229.val[3] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229.val[3], 0x38uLL), v229.val[3], 8uLL), v180), v68);
  v181 = veorq_s8(v229.val[3], vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v182 = veorq_s8(v229.val[0], v229.val[1]);
  v229.val[1] = vsraq_n_u64(vshlq_n_s64(v229.val[3], 0x38uLL), v229.val[3], 8uLL);
  v229.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229.val[0], 0x38uLL), v229.val[0], 8uLL), v182);
  v229.val[0] = veorq_s8(vaddq_s64(v229.val[1], v181), v78);
  v229.val[3] = veorq_s8(v229.val[3], v78);
  v229.val[1] = vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL);
  v183 = veorq_s8(v229.val[3], vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v184 = veorq_s8(v229.val[0], v229.val[1]);
  v229.val[1] = vsraq_n_u64(vshlq_n_s64(v229.val[3], 0x38uLL), v229.val[3], 8uLL);
  v229.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229.val[0], 0x38uLL), v229.val[0], 8uLL), v184);
  v229.val[0] = vaddq_s64(v229.val[1], v183);
  v229.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v229.val[0], vandq_s8(vaddq_s64(v229.val[0], v229.val[0]), v150)), v127), *&STACK[0x57A0]);
  v229.val[1] = vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL);
  v229.val[3] = veorq_s8(vaddq_s64(vsubq_s64(v229.val[3], vandq_s8(vaddq_s64(v229.val[3], v229.val[3]), v150)), v127), *&STACK[0x57A0]);
  v185 = veorq_s8(v229.val[3], vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL));
  v186 = veorq_s8(v229.val[0], v229.val[1]);
  v229.val[1] = vsraq_n_u64(vshlq_n_s64(v229.val[3], 0x38uLL), v229.val[3], 8uLL);
  v229.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229.val[0], 0x38uLL), v229.val[0], 8uLL), v186);
  v229.val[0] = vaddq_s64(v229.val[1], v185);
  v229.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v229.val[0], v229.val[0]), v94), v229.val[0]), v95), v96);
  v229.val[3] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v229.val[3], v229.val[3]), v94), v229.val[3]), v95), v96);
  v229.val[1] = vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL);
  v187 = veorq_s8(v229.val[3], vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL));
  v188 = veorq_s8(v229.val[0], v229.val[1]);
  v229.val[1] = vsraq_n_u64(vshlq_n_s64(v229.val[3], 0x38uLL), v229.val[3], 8uLL);
  v229.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229.val[0], 0x38uLL), v229.val[0], 8uLL), v188);
  v229.val[0] = veorq_s8(vaddq_s64(v229.val[1], v187), v106);
  v229.val[1] = vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL);
  v229.val[3] = veorq_s8(v229.val[3], v106);
  v189 = veorq_s8(v229.val[3], vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL));
  v190 = veorq_s8(v229.val[0], v229.val[1]);
  v229.val[1] = vsraq_n_u64(vshlq_n_s64(v229.val[3], 0x38uLL), v229.val[3], 8uLL);
  v191 = vaddq_s64(vsubq_s64(vorrq_s8(v169, v172), vorrq_s8(v169, v41)), v41);
  v229.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229.val[0], 0x38uLL), v229.val[0], 8uLL), v190), v115), vnegq_s64(vandq_s8(vshlq_n_s64(v163, 3uLL), *&STACK[0x5760])));
  v229.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v229.val[1], v189), v115), vnegq_s64(vandq_s8(vshlq_n_s64(v161, 3uLL), *&STACK[0x5760])));
  v192 = veorq_s8(v191, v138);
  v193 = veorq_s8(v191, v51);
  v194 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192, 0x38uLL), v192, 8uLL), v193);
  v195 = veorq_s8(v194, v142);
  v196 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v194, v59), v60), v195), vandq_s8(v195, v59)), v62);
  v197 = veorq_s8(v196, vsraq_n_u64(vshlq_n_s64(v193, 3uLL), v193, 0x3DuLL));
  v198 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL), v197), v68);
  v199 = veorq_s8(v198, vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL));
  v200 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), v199), v78);
  v201 = veorq_s8(v200, vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL));
  v202 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), v201);
  v203 = veorq_s8(vaddq_s64(vsubq_s64(v202, vandq_s8(vaddq_s64(v202, v202), v150)), v127), *&STACK[0x57A0]);
  v204 = veorq_s8(v203, vsraq_n_u64(vshlq_n_s64(v201, 3uLL), v201, 0x3DuLL));
  v205 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL), v204);
  v206 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v205, v205), v94), v205), v95), v96);
  v207 = veorq_s8(v206, vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL));
  v208 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL), v207), v106);
  v209 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL), veorq_s8(v208, vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL)));
  v210 = vaddq_s64(*&STACK[0x5770], v41);
  v229.val[1] = vshlq_u64(veorq_s8(v209, v115), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x57C0], 3uLL), *&STACK[0x5760])));
  v211 = veorq_s8(v210, v176);
  v212 = veorq_s8(v210, v51);
  v213 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL), v212);
  v214 = veorq_s8(v213, v142);
  v215 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v213, v59), v60), v214), vandq_s8(v214, v59)), v62);
  v216 = veorq_s8(v215, vsraq_n_u64(vshlq_n_s64(v212, 3uLL), v212, 0x3DuLL));
  v217 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL), v216), v68);
  v218 = veorq_s8(v217, vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL));
  v219 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL), v218), v78);
  v220 = veorq_s8(v219, vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL));
  v221 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v219, 0x38uLL), v219, 8uLL), v220);
  v222 = veorq_s8(vaddq_s64(vsubq_s64(v221, vandq_s8(vaddq_s64(v221, v221), v150)), v127), *&STACK[0x57A0]);
  v223 = veorq_s8(v222, vsraq_n_u64(vshlq_n_s64(v220, 3uLL), v220, 0x3DuLL));
  v224 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v222, 0x38uLL), v222, 8uLL), v223);
  v225 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v224, v224), v94), v224), v95), v96);
  v226 = veorq_s8(v225, vsraq_n_u64(vshlq_n_s64(v223, 3uLL), v223, 0x3DuLL));
  v227 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v225, 0x38uLL), v225, 8uLL), v226), v106);
  v229.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL), veorq_s8(v227, vsraq_n_u64(vshlq_n_s64(v226, 3uLL), v226, 0x3DuLL))), v115), vnegq_s64(vandq_s8(vshlq_n_s64(v119, 3uLL), *&STACK[0x5760])));
  v171.i64[1] = vqtbl4q_s8(v229, v174).u64[0];
  v229.val[3] = vrev64q_s8(v171);
  *(a5 + v8) = veorq_s8(vextq_s8(v229.val[3], v229.val[3], 8uLL), *(v12 + a6));
  return (*(STACK[0x57D8] + 8 * ((44 * (v11 == 0)) ^ v10)))();
}

uint64_t sub_10043C710@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>)
{
  STACK[0x65C0] = a2;
  STACK[0x5AA8] = v3;
  STACK[0x96B8] = 0;
  return (*(STACK[0x57D8] + 8 * ((v2 + 12232) ^ v2)))(0x2F7972617262694CLL, 23352, a1, 20, 1);
}

uint64_t sub_10043C790(uint64_t a1)
{
  v2 = STACK[0x98D0];
  STACK[0x63A8] = STACK[0x98D0];
  STACK[0x9F08] = &STACK[0x10100];
  STACK[0x7ED0] = v2;
  STACK[0xC880] = 0x6BB9542E1A0D8138;
  LODWORD(STACK[0xCD80]) = 1797468596;
  return (*(STACK[0x57D8] + 8 * v1))(a1, 272629776, 410912332, 1543499262, 2265206393, 3965507692, 4221484704, 0x1B3EC18598D49E09);
}

uint64_t sub_10043C854()
{
  *(STACK[0x4D10] + 16) = 10;
  v1 = *(STACK[0x57D8] + 8 * (v0 + 2240));
  LODWORD(STACK[0xFB64]) = v0;
  STACK[0xFB68] = 0;
  return v1();
}

uint64_t sub_10043C92C()
{
  v0 = STACK[0x51B8] - 21393;
  STACK[0xD040] = STACK[0xD038] + 8;
  STACK[0xD048] = (((LODWORD(STACK[0x858C]) ^ 0x6325378F69E7D4E3) - 0x6325378F69E7D4E3) ^ ((LODWORD(STACK[0x858C]) ^ 0xEFD71B330937F9C3) + 0x1028E4CCF6C8063DLL) ^ ((LODWORD(STACK[0x858C]) ^ 0x8CF22CBCB2CCADB4) + 0x730DD3434D33524CLL)) + 0x3E4BCA9B0B988E1DLL;
  v1 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x16EE)))();
}

uint64_t sub_10043CBE4()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  STACK[0x88B0] = 0;
  return (*(v1 + 8 * (v0 - 15153)))(v2);
}

uint64_t sub_10043CC4C(int a1, int a2, int a3, int a4, int a5, uint64_t a6, int a7, int a8)
{
  LODWORD(STACK[0x5610]) = a8;
  LODWORD(STACK[0x5740]) = a2;
  LODWORD(STACK[0x5700]) = a3;
  LODWORD(STACK[0x5720]) = a5;
  LODWORD(STACK[0x5730]) = a7;
  LODWORD(STACK[0x5378]) = v13;
  LODWORD(STACK[0x56C0]) = v9;
  LODWORD(STACK[0x56E0]) = a1;
  LODWORD(STACK[0x56D0]) = v12;
  LODWORD(STACK[0x5660]) = v11;
  LODWORD(STACK[0x5670]) = v10;
  LODWORD(STACK[0x5680]) = v8;
  LODWORD(STACK[0x57B0]) = 0;
  LODWORD(STACK[0x5388]) = a4;
  v14 = STACK[0x5790];
  if (a4 == 2)
  {
    v14 = -1411046138;
  }

  LODWORD(STACK[0x5790]) = v14;
  v15 = STACK[0x5780];
  v15[80] = STACK[0x53A8];
  v15[43] = STACK[0x53E8];
  v15[29] = STACK[0x53B0];
  v15[82] = STACK[0x53F8];
  v15[96] = STACK[0x53B8];
  v15[37] = STACK[0x5440];
  v15[47] = STACK[0x54B0];
  v15[53] = STACK[0x54C0];
  v15[39] = STACK[0x53D8];
  v15[51] = STACK[0x5520];
  v15[92] = STACK[0x5380];
  v15[13] = STACK[0x5740];
  v15[108] = STACK[0x5398];
  v15[33] = STACK[0x5470];
  v15[17] = STACK[0x5460];
  v15[86] = STACK[0x5700];
  v15[98] = STACK[0x5420];
  v15[27] = STACK[0x5450];
  v15[88] = STACK[0x5410];
  v15[106] = STACK[0x53C0];
  v15[21] = STACK[0x5390];
  v15[49] = STACK[0x54E0];
  v15[19] = STACK[0x5490];
  v15[116] = STACK[0x54F0];
  v15[118] = STACK[0x54D0];
  v15[31] = STACK[0x5430];
  v15[78] = STACK[0x53D0];
  v15[41] = STACK[0x5480];
  v15[90] = STACK[0x5720];
  v15[110] = STACK[0x5500];
  v15[76] = STACK[0x5730];
  v15[100] = STACK[0x53E0];
  v15[23] = STACK[0x5408];
  v15[11] = STACK[0x53C8];
  v15[112] = STACK[0x5510];
  v15[102] = STACK[0x5400];
  v16 = STACK[0x5760];
  LODWORD(STACK[0x5630]) = LODWORD(STACK[0x53F0]) ^ LODWORD(STACK[0x5760]);
  LODWORD(STACK[0x5620]) = LODWORD(STACK[0x53A0]) ^ v16;
  return (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x5610])))();
}

uint64_t sub_10043D428(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v12 = (((a4 - 315919406) & 0x12D4DA57 ^ 0x4E408B2CABC9C262) - a8) & 0x625C00CB6DEDF78DLL | v8 & 0x99A3FF3492120872;
  v13 = v12 ^ 0xF2EE41329D4685B2;
  v12 ^= 0x7F15E7A83CF5ABEBuLL;
  v14 = (__ROR8__(v13, 8) + v12) ^ v10;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (((v16 + v15) & (((a4 + 10556) | 0x4000u) ^ 0x9BB674735A03964DLL) ^ 0xB2741208024520) + ((v16 + v15) & 0x64498B8CA5FC1ADALL ^ 0x4400A0421A01291) - 1) ^ 0xA348A8CBD7AC8C5ALL;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x6FDC5A952B1431;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0x67D37711E3C8D077;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (v23 + v22 - ((2 * (v23 + v22)) & 0xED61228743B71758) + 0x76B09143A1DB8BACLL) ^ 0x2F130D6B168E68FBLL;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (v26 + v25 - ((2 * (v26 + v25)) & 0x6AE39876EE66835CLL) - 0x4A8E33C488CCBE52) ^ 0x3E67F9339362ADA6;
  LOBYTE(v25) = (((__ROR8__(v27, 8) + (v27 ^ __ROR8__(v25, 61))) ^ v11) >> v9) ^ a6;
  return (*(STACK[0x57D8] + 8 * ((9774 * ((((v25 ^ 0xF2) + 50) ^ ((v25 ^ 0x8F) + 77) ^ ((v25 ^ 0x7D) - 65)) == 202)) ^ a4)))();
}

uint64_t sub_10043D6B4()
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xB748];
  LODWORD(STACK[0x9094]) = -32197390;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10043D734()
{
  v1 = STACK[0x51B8];
  v2 = (STACK[0x51B8] - 13898) | 0x1142;
  v3 = (STACK[0x51B8] - 3141) | 0x20C;
  v4 = STACK[0x51B8] - 16640;
  v5 = STACK[0x59D0];
  v6 = 410706167 * ((139634924 - ((v0 - 240) | 0x852A8EC) + ((v0 - 240) | 0xF7AD5713)) ^ 0x6C727B45);
  STACK[0x1D4D0] = &STACK[0x89F8];
  STACK[0x1D4C8] = v5;
  LODWORD(STACK[0x1D4DC]) = v6 ^ 0x6EE0D198;
  LODWORD(STACK[0x1D4D8]) = v6 + v1 + 585597919;
  STACK[0x1D4C0] = &STACK[0x5C48];
  STACK[0x1D4E0] = &STACK[0x97FC];
  v7 = STACK[0x57D8];
  v8 = (*(STACK[0x57D8] + 8 * (v1 + 9208)))(v0 - 240);
  return (*(v7 + 8 * (((LODWORD(STACK[0x1D4E8]) == -143113071) * (v3 - 17037 + v2)) ^ v4)))(v8);
}

uint64_t sub_10043D88C()
{
  STACK[0x9EC0] = &STACK[0xA510];
  LODWORD(STACK[0x9E1C]) = 1907263165;
  return (*(STACK[0x57D8] + 8 * (v0 - 16846)))();
}

uint64_t sub_10043D8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v7);
  return (*(v8 + 8 * (v7 ^ 0x16C4)))(a1, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_10043DBB4()
{
  v1 = STACK[0x94B0];
  v2 = STACK[0x6A08];
  STACK[0xB420] = STACK[0x76F8];
  LODWORD(STACK[0x8C54]) = v1;
  STACK[0x8EA0] = v2;
  LODWORD(STACK[0xBC38]) = -746967316;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10043DC20@<X0>(int a1@<W8>)
{
  v2 = STACK[0x6A08];
  LODWORD(STACK[0x98F4]) = v1;
  STACK[0x6230] = v2;
  LODWORD(STACK[0x6974]) = -1786907429;
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_10043DC84(int a1)
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xBE4C];
  LODWORD(STACK[0x9094]) = a1 + 92;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_10043DCE8()
{
  v0 = STACK[0x5790];
  v1 = (LODWORD(STACK[0x5790]) - 1123500669) & 0x42F75E7F;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (LODWORD(STACK[0x5790]) + 16296)))(1032);
  STACK[0xD498] = v3 + 0x76D80982DFC39851;
  STACK[0x57B0] = v1;
  return (*(v2 + 8 * (((v3 == 0) * ((v0 + 1535976332) & 0xA472E4F5 ^ v1 ^ 0x1CB6)) ^ v0)))();
}

uint64_t sub_10043DDC8()
{
  v2 = (v0 - 5427);
  v3 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & (((((v2 ^ 0xFFFFA7AE) & v1) + 48120067) ^ 0xF3F719C4) + 1355910031 + (((((v0 - 27881) | 0x201) ^ 0x5BC80A7) + 2 * ((v2 ^ 0xFFFFA7AE) & v1)) & 0xE7EE3380))) & 0xFFFFFFFFFFFFFFF8));
  v4 = __ROR8__((v2 ^ 0xFFFFFFFFFFFFA7AELL) & v1, 8);
  v5 = (v4 + v3 - ((2 * (v4 + v3)) & 0x6284233BC0C0E482) + 0x3142119DE0607241) ^ 0xBABC50E60F1F6267;
  v6 = v5 ^ __ROR8__(v3, 61);
  v7 = (__ROR8__(v5, 8) + v6) ^ 0xC933E755CB296E9BLL;
  v8 = v7 ^ __ROR8__(v6, 61);
  v9 = __ROR8__(v7, 8);
  v10 = (((v9 + v8) ^ 0xE501CF44B06F86CALL) - ((2 * ((v9 + v8) ^ 0xE501CF44B06F86CALL)) & 0xC90F7F4D961BBAD4) - 0x1B78405934F22296) ^ 0x30D3E30E77F36FF5;
  v11 = v10 ^ __ROR8__(v8, 61);
  v12 = __ROR8__(v10, 8);
  v13 = (((2 * (v12 + v11)) & 0x156D7990E22D9324) - (v12 + v11) - 0xAB6BCC87116C993) ^ 0xC32B82C2A4879A53;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (((2 * (v15 + v14)) & 0x8A4884E0B5392F4ELL) - (v15 + v14) - 0x452442705A9C97A8) ^ 0xC7D2227549AB9AE6;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0x249B405C26CF25A6;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0x5EB21AFA84768362;
  v21 = (((__ROR8__(v20, 8) + (v20 ^ __ROR8__(v19, 61))) ^ 0x47BC54C6839C8804uLL) >> (8 * (v1 & 7u))) ^ *v1;
  return (*(STACK[0x57D8] + 8 * ((98 * ((((v21 ^ 0x25) - 61) ^ (24 - v21) ^ ((v21 ^ 0xDA) + 62)) == 233)) | v0)))();
}

uint64_t sub_10043E070(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = *(STACK[0x57C0] + (4843 * v9 + 8698028) % 0x16B8u);
  v12 = ((v11 ^ 0x609870F9) - 1620603129) ^ (((v10 + 907779276) & 0xC9E45BFB ^ 0x9623CBF9 ^ v11) + 1776058351) ^ ((v11 ^ 0xF6BBF02F) + 155455441);
  v13 = *(v6 + 4 * (6157 * (v12 + 1993724877) - 313155033 - ((((6157 * (v12 + 1993724877) - 313155033) * v8) >> 32) >> 12) * v7));
  LOBYTE(v12) = ((v12 - 51) ^ (16 - v12) ^ (((v12 - 51) ^ 0x93) + 18) ^ (((v12 - 51) ^ 0xAA) + 10) ^ (((v12 - 51) ^ 0x1A) + 25)) & 0x10;
  HIDWORD(v14) = (BYTE1(v13) ^ 0xB6) + 1283;
  LODWORD(v14) = HIDWORD(v14);
  v15 = a6 + 4843 * (BYTE2(v13) ^ 0x4F) - 5816 * ((((a6 + 4843 * (BYTE2(v13) ^ 0x4Fu)) * a3) >> 32) >> 4);
  v16 = *(STACK[0x57C0] + (4843 * (((HIBYTE(v13) ^ 0xDEE98FEB) - 1722526216) ^ ((HIBYTE(v13) ^ 0x5C3C7ED6) + 461481163) ^ ((HIBYTE(v13) ^ 0x82D5F155) - 983028918)) - 876934054) % 0x16B8);
  v17 = *(STACK[0x57C0] + (4843 * (((v13 ^ 0x2D5E56BE) + 1931714482) ^ ((v13 ^ 0xF886E085) - 1493489269) ^ ((v13 ^ 0xD5D8B6B1) - 1952088129)) + 1790666175) % 0x16B8);
  v18 = (((*(STACK[0x57C0] + 4843 * (((v14 >> 16) << (v12 ^ 0x10) << v12) ^ ((v14 >> 16) >> 16)) % 0x16B8) ^ 0xC7) << 8) | (((*(STACK[0x57C0] + v15) ^ 0xF907) & ((v16 << 8) ^ 0x387F) ^ (*(STACK[0x57C0] + v15) | 0x620) & ((v16 << 8) | 0xA0)) << 16)) ^ 0xFFE00000;
  *(v6 + 4 * (6157 * v9 + 9469466 - ((((6157 * v9 + 9469466) * v8) >> 32) >> 12) * v7)) = v17 & 0xFFFFFFCF ^ 0xCACB327D ^ ((v18 - 84804634 - ((2 * v18) & 0xF5E3F600)) ^ 0x58757FD6) & (v17 ^ 0xFFFFFF38);
  return (*(STACK[0x57D8] + 8 * (((2 * (v9 != 255)) | (8 * (v9 != 255))) ^ v10)))();
}

uint64_t sub_10043E3A4@<X0>(int a1@<W8>)
{
  v1 = STACK[0x57D8];
  STACK[0x5838] = *(STACK[0x57D8] + 8 * a1);
  return (*(v1 + 8 * (((a1 + 14825) ^ 0x34DB) + a1)))();
}

uint64_t sub_10043E3D8()
{
  v1 = v0 ^ 0x4B81;
  v2 = ((v0 ^ 0x4B81) - 21507) | 0xE0;
  LODWORD(STACK[0x57C0]) = v2;
  v3 = v2 + 492335374;
  v4 = v0 ^ 0x407D;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * v4))(1028);
  STACK[0xD238] = v6;
  return (*(v5 + 8 * (((v6 != 0) * (v3 ^ 0x1D588DC8)) ^ v1)))();
}

uint64_t sub_10043E594()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x241B)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_10043E778()
{
  v3 = &STACK[0x1D280] + v0;
  *v3 = *v2;
  v3[1] = v2[1];
  v3[2] = v2[2];
  v3[3] = v2[3];
  v3[4] = v2[4];
  v3[5] = v2[5];
  v3[6] = v2[6];
  v3[7] = v2[7];
  v3[8] = v2[8];
  v3[9] = v2[9];
  v3[10] = v2[10];
  v3[11] = v2[11];
  v3[12] = v2[12];
  v3[13] = v2[13];
  v3[14] = v2[14];
  v3[15] = v2[15];
  return (*(STACK[0x57D8] + 8 * ((v1 - 48351 + 5 * ((v1 - 1345494999) ^ 0xAFCDAA2D) + 3778) ^ (21776 * ((v1 - 1345494999) > 0x6C5DBFCA)))))();
}

uint64_t sub_10043E864()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x5FAA)))();
  v4 = v3 == (*(v2 + 8 * (v0 ^ 0x5FA3)))(v1);
  return (*(v2 + 8 * ((v4 * ((v0 + 582735504) & 0xDD445DFE ^ (v0 + 1862126616) & 0xD3A71EFF ^ 0x42A5017A)) ^ v0)))();
}

uint64_t sub_10043E8F8@<X0>(int a1@<W8>)
{
  v1 = *STACK[0x3DA8];
  LODWORD(STACK[0x93B0]) = 0;
  v2 = STACK[0x63F8];
  *v2 = 1;
  v2[3] = 4;
  return (*(STACK[0x57D8] + 8 * (((((a1 - 14507) | 0x1C4) ^ 0x7F4F) * v1) ^ a1)))();
}

uint64_t sub_10043E980(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = *(a2 + v5);
  *(v6 - 1) = *(a2 + v5 - 16);
  *v6 = v8;
  return (*(STACK[0x57D8] + 8 * (((v7 != 0) * a5) ^ a1)))();
}

uint64_t sub_10043EBB8()
{
  v1 = 18 * (v0 ^ 0x29FB);
  STACK[0x6630] = 0;
  LODWORD(STACK[0xBFF4]) = 0;
  LODWORD(STACK[0x65AC]) = 103679699;
  LODWORD(STACK[0xC3BC]) = (((LOWORD(STACK[0x5B96]) ^ 0x7EA8ECD5) - 2124999893) ^ ((LOWORD(STACK[0x5B96]) ^ 0x23494085) - 592003205) ^ (((v1 + 784692123) & 0xD13ADBEA) + (LOWORD(STACK[0x5B96]) ^ 0x5DE15EF9) - 1575074491)) + 103741820;
  v2 = STACK[0x57D8];
  STACK[0x8520] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x4DA4)))();
}

uint64_t sub_10043ECE0()
{
  STACK[0x8348] = 0;
  LODWORD(STACK[0x78D4]) = -769884012;
  STACK[0x9BE0] = 0;
  LODWORD(STACK[0xA60C]) = -769884012;
  STACK[0xC510] = 0;
  LODWORD(STACK[0xA2C4]) = -769884012;
  STACK[0x6A58] = 0;
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0x78D4];
  LODWORD(STACK[0x9094]) = -32197378;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10043EDD0()
{
  v0 = STACK[0x51B8] - 17885;
  v1 = STACK[0xA380];
  *(v1 + 168) = -769884012;
  *(v1 + 176) = 0;
  *(v1 + 184) = -769884012;
  *(v1 + 192) = 0;
  *(v1 + 200) = -769884012;
  *(v1 + 208) = 0;
  *(v1 + 216) = -769884012;
  *(v1 + 220) = 0;
  *v1 = STACK[0x6B7C];
  *(v1 + 8) = STACK[0x5828];
  *(v1 + 16) = 0;
  *(v1 + 24) = STACK[0xA490];
  *(v1 + 32) = STACK[0x6F64];
  *(v1 + 36) = -769884012;
  *(v1 + 40) = STACK[0xBFD0];
  *(v1 + 48) = STACK[0xA99C];
  *(v1 + 56) = STACK[0xDA28];
  STACK[0x7C30] = v1;
  LOBYTE(STACK[0xA37F]) = 0;
  LODWORD(STACK[0xC354]) = 1303672186;
  return (*(STACK[0x57D8] + 8 * v0))(637896474);
}

uint64_t sub_10043EED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0x51B8] - 21345;
  v8 = STACK[0x82A8];
  v9 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v7);
  return (*(v9 + 8 * (v7 ^ 0x16DE)))(v8, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_10043EFC0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = v4 < v7;
  if (v9 == a4 + 716970005 < v8)
  {
    v9 = a4 + 716970005 < v5;
  }

  return (*(STACK[0x57D8] + 8 * ((467 * v9) ^ v6)))();
}

uint64_t sub_10043F6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v14 = STACK[0x53C8];
  v15 = STACK[0x4E68];
  v16 = LODWORD(STACK[0x53C8]) ^ LODWORD(STACK[0x4F58]) ^ LODWORD(STACK[0x4F48]) ^ LODWORD(STACK[0x4F38]) ^ LODWORD(STACK[0x4F30]) ^ LODWORD(STACK[0x4F18]) ^ LODWORD(STACK[0x5028]) ^ LODWORD(STACK[0x55E0]) ^ LODWORD(STACK[0x4E98]) ^ LODWORD(STACK[0x4E08]) ^ LODWORD(STACK[0x4ED8]) ^ LODWORD(STACK[0x4ED0]) ^ LODWORD(STACK[0x4DF8]) ^ LODWORD(STACK[0x4E10]) ^ LODWORD(STACK[0x4EE8]) ^ LODWORD(STACK[0x4EE0]) ^ LODWORD(STACK[0x4EF0]) ^ LODWORD(STACK[0x5150]) ^ LODWORD(STACK[0x4E70]) ^ LODWORD(STACK[0x53F0]) ^ LODWORD(STACK[0x5050]) ^ LODWORD(STACK[0x5160]) ^ LODWORD(STACK[0x5078]) ^ LODWORD(STACK[0x54A0]) ^ LODWORD(STACK[0x5250]) ^ LODWORD(STACK[0x4E68]) ^ LODWORD(STACK[0x5200]) ^ LODWORD(STACK[0x5020]) ^ LODWORD(STACK[0x51C0]) ^ LODWORD(STACK[0x4EC0]) ^ LODWORD(STACK[0x4EC8]) ^ LODWORD(STACK[0x4EB8]) ^ LODWORD(STACK[0x4E00]) ^ LODWORD(STACK[0x50D0]) ^ LODWORD(STACK[0x5018]) ^ LODWORD(STACK[0x5378]) ^ LODWORD(STACK[0x5560]) ^ LODWORD(STACK[0x5358]) ^ LODWORD(STACK[0x5388]) ^ LODWORD(STACK[0x4DF0]) ^ LODWORD(STACK[0x4EB0]) ^ LODWORD(STACK[0x4EA8]) ^ LODWORD(STACK[0x4EA0]) ^ LODWORD(STACK[0x56E0]) ^ LODWORD(STACK[0x51D0]) ^ LODWORD(STACK[0x50C0]) ^ LODWORD(STACK[0x5040]) ^ LODWORD(STACK[0x5208]) ^ LODWORD(STACK[0x51C8]) ^ LODWORD(STACK[0x5228]) ^ LODWORD(STACK[0x56D0]) ^ LODWORD(STACK[0x5240]) ^ LODWORD(STACK[0x4F70]) ^ LODWORD(STACK[0x4E24]) ^ LODWORD(STACK[0x4F68]) ^ LODWORD(STACK[0x4E20]);
  v17 = v16 ^ LODWORD(STACK[0x5080]) ^ LODWORD(STACK[0x5190]) ^ LODWORD(STACK[0x50A0]) ^ LODWORD(STACK[0x5030]) ^ LODWORD(STACK[0x4E88]) ^ LODWORD(STACK[0x5168]) ^ LODWORD(STACK[0x5158]) ^ LODWORD(STACK[0x50D8]) ^ LODWORD(STACK[0x4F10]) ^ LODWORD(STACK[0x4E34]) ^ LODWORD(STACK[0x4F00]) ^ LODWORD(STACK[0x4E28]) ^ LODWORD(STACK[0x5408]) ^ LODWORD(STACK[0x50E0]) ^ LODWORD(STACK[0x5038]) ^ LODWORD(STACK[0x5060]) ^ LODWORD(STACK[0x4FC8]) ^ LODWORD(STACK[0x5170]) ^ LODWORD(STACK[0x4F88]) ^ LODWORD(STACK[0x5490]) ^ LODWORD(STACK[0x4FA8]) ^ LODWORD(STACK[0x4FB0]) ^ LODWORD(STACK[0x4FA0]) ^ LODWORD(STACK[0x4E18]) ^ LODWORD(STACK[0x55D0]) ^ LODWORD(STACK[0x5368]) ^ LODWORD(STACK[0x51F8]) ^ LODWORD(STACK[0x5088]) ^ LODWORD(STACK[0x4F28]) ^ LODWORD(STACK[0x4F40]) ^ LODWORD(STACK[0x4F20]) ^ LODWORD(STACK[0x4F08]) ^ LODWORD(STACK[0x4F90]) ^ LODWORD(STACK[0x4F98]) ^ LODWORD(STACK[0x4F80]) ^ LODWORD(STACK[0x4F78]) ^ LODWORD(STACK[0x5198]) ^ LODWORD(STACK[0x4E80]) ^ LODWORD(STACK[0x5140]) ^ LODWORD(STACK[0x50E8]) ^ LODWORD(STACK[0x53E0]) ^ LODWORD(STACK[0x53B0]) ^ LODWORD(STACK[0x5128]) ^ LODWORD(STACK[0x5420]) ^ LODWORD(STACK[0x5220]) ^ LODWORD(STACK[0x5070]) ^ LODWORD(STACK[0x5138]) ^ LODWORD(STACK[0x4E78]) ^ LODWORD(STACK[0x5098]) ^ LODWORD(STACK[0x5620]);
  LODWORD(STACK[0x50B0]) ^= v17 ^ LODWORD(STACK[0x5148]) ^ LODWORD(STACK[0x50F8]) ^ LODWORD(STACK[0x51E0]) ^ LODWORD(STACK[0x5180]) ^ LODWORD(STACK[0x5440]) ^ LODWORD(STACK[0x5090]) ^ LODWORD(STACK[0x53F8]) ^ LODWORD(STACK[0x5410]) ^ LODWORD(STACK[0x5130]) ^ LODWORD(STACK[0x4FC0]) ^ LODWORD(STACK[0x5048]) ^ LODWORD(STACK[0x4E38]) ^ LODWORD(STACK[0x5670]) ^ LODWORD(STACK[0x5350]) ^ LODWORD(STACK[0x57B0]) ^ LODWORD(STACK[0x5230]) ^ LODWORD(STACK[0x5258]) ^ LODWORD(STACK[0x4F60]) ^ LODWORD(STACK[0x4F50]) ^ LODWORD(STACK[0x53C0]) ^ LODWORD(STACK[0x4E44]) ^ LODWORD(STACK[0x51D8]) ^ LODWORD(STACK[0x53D8]) ^ LODWORD(STACK[0x5340]) ^ LODWORD(STACK[0x5210]) ^ LODWORD(STACK[0x5118]) ^ LODWORD(STACK[0x5238]) ^ LODWORD(STACK[0x5430]) ^ LODWORD(STACK[0x5058]) ^ LODWORD(STACK[0x5188]) ^ LODWORD(STACK[0x5068]) ^ LODWORD(STACK[0x5460]) ^ LODWORD(STACK[0x51B0]) ^ LODWORD(STACK[0x50C8]) ^ LODWORD(STACK[0x5218]) ^ LODWORD(STACK[0x5010]) ^ LODWORD(STACK[0x5248]) ^ LODWORD(STACK[0x4E90]) ^ LODWORD(STACK[0x5450]) ^ LODWORD(STACK[0x55F0]) ^ LODWORD(STACK[0x4E60]) ^ LODWORD(STACK[0x53E8]) ^ LODWORD(STACK[0x4E50]) ^ LODWORD(STACK[0x51A0]) ^ LODWORD(STACK[0x53D0]) ^ LODWORD(STACK[0x5630]) ^ LODWORD(STACK[0x55A0]) ^ v13 ^ 0xACDFCB05;
  v18 = (v8 + ((v12 + v9) >> 16) + v12 + ((v12 + v9 + ((v12 + v9) >> 16)) >> 8) - v11) ^ 0x15C10927;
  v19 = v18 + (v18 >> 11) + ((v18 + (v18 >> 11)) >> 3);
  v20 = v19 ^ a8;
  v21 = v19 + 540814412 + ((v19 + 540814412) >> 8) - ((v19 + 540814412 + ((v19 + 540814412) >> 8)) >> 8);
  v22 = ((v21 - 2074224364 + ((v21 - 2074224364) >> 8)) >> 6) + v21 - 2074224364 + ((v21 - 2074224364) >> 8) - 2 * ((v21 - 2074224364 + ((v21 - 2074224364) >> 8)) >> 6);
  v23 = (v22 ^ 0x496CF002) + ((v22 ^ 0x496CF002) >> 14) - (((v22 ^ 0x496CF002) + ((v22 ^ 0x496CF002) >> 14)) >> 3);
  v24 = v20 ^ v23;
  v25 = v23 + 368114667 + ((v23 + 368114667) >> 12) + ((v23 + 368114667 + ((v23 + 368114667) >> 12)) >> 5);
  v26 = v21 ^ a7 ^ v25;
  v27 = v25 + 74618855 + ((v25 + 74618855) >> 11) + ((v25 + 74618855 + ((v25 + 74618855) >> 11)) >> 4);
  v28 = (v27 ^ 0xCE141C30) - ((v27 ^ 0xCE141C30) >> 13) - (((v27 ^ 0xCE141C30) - ((v27 ^ 0xCE141C30) >> 13)) >> 2);
  v29 = v24 ^ v28;
  v30 = v28 + 1812209792 + ((v28 + 1812209792) >> 12) - ((v28 + 1812209792 + ((v28 + 1812209792) >> 12)) >> 1);
  v31 = v26 ^ v30;
  v32 = v29 & 0x7F ^ 0x76;
  v33 = v22 ^ v10 ^ v27 ^ (v30 + 791743579 + ((v30 + 791743579) >> 9) + ((v30 + 791743579 + ((v30 + 791743579) >> 9)) >> 3));
  v34 = v29 & 0xFFFFFF80 ^ 0xA55F6C80;
  v35 = v33 & 7 ^ 6;
  v36 = v31 ^ 0x5E ^ ((v31 ^ 0xD75E) >> 8);
  v37 = ((((v31 ^ 0xFFADD75E) >> 16) - 1) ^ ((v31 ^ 0xFFADD75E) >> 16) ^ (v36 - (v36 ^ ((v31 ^ 0xFFADD75E) >> 16)))) - v36;
  v38 = 16843009 * (v29 ^ 0x92 ^ ((v29 ^ 0x792) >> 8) ^ ((v29 ^ 0xCA7B0792) >> 16) ^ HIBYTE(v29) ^ 0x3F);
  v39 = 16843009 * (v37 ^ HIBYTE(v31) ^ 0xFFFFFF6D);
  LODWORD(STACK[0x4FA8]) = v38;
  LODWORD(STACK[0x4F88]) = v39;
  v40 = v38 ^ 0x98989898 ^ v39;
  v41 = v14 ^ 0x21CE3BAA;
  v42 = STACK[0x4DD0];
  LODWORD(STACK[0x55E0]) = (-2139062144 * v32) ^ (-2139062144 * LODWORD(STACK[0x4DD0]));
  LODWORD(STACK[0x5060]) = LODWORD(STACK[0x5338]) ^ 0xEFEACD26;
  v43 = LODWORD(STACK[0x5780]) % 0x101;
  v44 = *(&off_101353600 + (v13 - 23032)) - 12;
  STACK[0x51D8] = v44;
  LODWORD(STACK[0x5338]) = *(v44 + 4 * (v40 % 0x101)) ^ 0xC2DFA741;
  v45 = *(&off_101353600 + (v13 ^ 0x598F));
  LODWORD(STACK[0x5028]) = *(v45 + 4 * v43) ^ 0x934CB1E4 ^ (*(v45 + 4 * v43) >> 1) & 0x6551AF39;
  v46 = *(&off_101353600 + (v13 - 22908));
  v47 = (v33 & 7 ^ 0xDCDAD4F3) - 45706027 - v35 + *(v46 + 4 * v35);
  v48 = STACK[0x5600] & 0xB1D4616D;
  LODWORD(v44) = -v35 & 7;
  LODWORD(STACK[0x5388]) = v44;
  LODWORD(STACK[0x53C0]) = 722277233 * (v44 - LODWORD(STACK[0x5380]));
  v49 = LODWORD(STACK[0x50A8]) ^ 0x99113112;
  v50 = STACK[0x5390];
  v51 = *(&off_101353600 + (v13 ^ 0x5801)) - 4;
  v52 = STACK[0x5370];
  v53 = (889483600 * (*&v51[4 * v52] ^ 0x6898F99F)) ^ *&v51[4 * v52];
  v47 ^= 0xDFE796DB;
  LODWORD(STACK[0x4FA0]) = v47;
  LODWORD(STACK[0x5078]) = (v53 ^ 0xE76C8B9B) + v49 - v47;
  LODWORD(STACK[0x4F50]) = 33686018 * v42;
  LODWORD(STACK[0x53C8]) = ((v50 - ((33686018 * v42) & 0x4A5CFBAC) + 1697545686) ^ v15) & 0x4E2B9E92 | v50 & 0x31D4616D ^ v48;
  LODWORD(STACK[0x4E98]) = v50;
  v54 = v50 | LODWORD(STACK[0x5770]);
  LODWORD(STACK[0x4F98]) = v53 ^ 0x18937464;
  LODWORD(v45) = *(v45 + 4 * (v54 % 0x101));
  LODWORD(STACK[0x5048]) = v41 + 1681371303 * (v52 - v35);
  v55 = STACK[0x4FF8];
  v56 = *&v51[4 * (LODWORD(STACK[0x4FF8]) % 0x101)];
  v57 = (v52 | LODWORD(STACK[0x4DD8])) ^ 0x4BDB6668;
  LODWORD(STACK[0x50A8]) = v56 ^ 0xE76C8B9B ^ (889483600 * (v56 ^ 0x6898F99F));
  LODWORD(STACK[0x55D0]) = -45706027 - v57 % 0x101 + ((v57 % 0x101) ^ 0xDCDAD4F5) + *(v46 + 4 * (v57 % 0x101));
  LODWORD(STACK[0x5020]) = v45 ^ 0x934CB1E4 ^ (v45 >> 1) & 0x6551AF39;
  v58 = LODWORD(STACK[0x5470]) ^ 0x3E71CEEE;
  LODWORD(STACK[0x5560]) = v35;
  v59 = (v35 | v33 & 0xFFFFFFF8) ^ 0xA55F6CF0;
  LODWORD(STACK[0x5470]) = v32;
  v60 = 16843009 * v32;
  v61 = v32;
  LODWORD(STACK[0x5038]) = v58 - (v29 ^ 0xA55F6CF6) + (v32 ^ v34);
  v62 = v33 ^ 0xA55F6CF6;
  v63 = -45706027 - v62 % 0x101 + ((v62 % 0x101) ^ 0xDCDAD4F5) + *(v46 + 4 * (v62 % 0x101));
  v64 = ~(2 * (((v59 % 0x101) ^ 0x23252B0A) + v59 % 0x101)) + ((v59 % 0x101) ^ 0x23252B0A) + v59 % 0x101 - 45706027 + *(v46 + 4 * (v59 % 0x101));
  v65 = LODWORD(STACK[0x5500]) ^ 0x31DE4337;
  v66 = (v29 ^ 0xA55F6CF6) % 0x101;
  v67 = STACK[0x4FF0];
  LODWORD(STACK[0x5018]) = ((1487073401 * v57) ^ (1487073401 * LODWORD(STACK[0x4FF0]))) - ((2 * ((1487073401 * v57) ^ (1487073401 * LODWORD(STACK[0x4FF0])))) & 0x5692ADAE) + 726226647;
  v68 = -45706027 - (v61 + v34) % 0x101 + (((v61 + v34) % 0x101) ^ 0xDCDAD4F5) + *(v46 + 4 * ((v61 + v34) % 0x101));
  LODWORD(STACK[0x4F40]) = LODWORD(STACK[0x51A8]) ^ 0xEC716C1D;
  LODWORD(STACK[0x51A8]) = v61 & v34;
  v69 = *&v51[4 * ((v61 | v34) % 0x101)];
  v70 = ((889483600 * (v69 ^ 0x6898F99F)) & 0x125C8140 ^ (v69 ^ 0x6898F99F) & 0x125C8149) + (((v69 ^ 0x6898F99F | 0xEDA37EB6) - (v69 ^ 0x853B8729)) ^ (889483600 * (v69 ^ 0x6898F99F)) & 0xEDA37EB0);
  v71 = v29 ^ LODWORD(STACK[0x5790]);
  LODWORD(STACK[0x5050]) = -2102181893 * v71 + 881767591;
  LODWORD(STACK[0x5040]) = (90603510 * v71) & 0x691D694E;
  LODWORD(STACK[0x5350]) = v31;
  LODWORD(v51) = (1640588491 * (v31 ^ 0xEE840A9F)) ^ (1640588491 * LODWORD(STACK[0x57C0]));
  v72 = (-1808634409 * (v33 ^ 0xEE840A9F)) ^ (-1808634409 * LODWORD(STACK[0x57A0]));
  v73 = STACK[0x55E0];
  LODWORD(STACK[0x4F38]) = LODWORD(STACK[0x55E0]) + 1716825547;
  LODWORD(STACK[0x4F10]) = (2 * v73) & 0xCCA95B00;
  v74 = STACK[0x5780];
  LODWORD(v44) = (v40 ^ LODWORD(STACK[0x5780])) >> 5;
  LODWORD(STACK[0x4FC8]) = v44 - 1053772255;
  LODWORD(STACK[0x4F18]) = (2 * v44) & 0x2616C42;
  LODWORD(STACK[0x4F70]) = (4 * (v59 ^ v33 ^ 0xA55F6CF6)) & 0xEFC90230;
  LODWORD(STACK[0x4F68]) = 2 * (v59 ^ v33 ^ 0xA55F6CF6) - 136019687;
  LODWORD(STACK[0x4F78]) = v57;
  LODWORD(STACK[0x4F08]) = ((v57 ^ v67) >> 1) & 0x33EBDDF2;
  LODWORD(STACK[0x4F00]) = ((v57 ^ v67) >> 2) - 1711935751;
  LODWORD(STACK[0x4EF0]) = v51 + 1571274453;
  LODWORD(STACK[0x4EE8]) = (2 * v51) & 0xBB4F7DAA;
  LODWORD(STACK[0x4F60]) = v72 - ((2 * v72) & 0x36D7FFD2) - 1687420951;
  if ((v33 & 7) == 6)
  {
    v75 = 0;
  }

  else
  {
    v75 = 255;
  }

  v76 = v75 << LODWORD(STACK[0x5388]);
  LODWORD(STACK[0x5600]) = 16843009 * v76;
  LODWORD(STACK[0x4EE0]) = -184549376 * v76;
  if ((v33 & 7) == 6)
  {
    v77 = 0;
  }

  else
  {
    v77 = ~v76;
  }

  LODWORD(STACK[0x55E0]) = v29;
  v78 = v29 & v77;
  v79 = STACK[0x4E98];
  LODWORD(STACK[0x4F80]) = v78;
  v80 = LODWORD(STACK[0x56D0]) ^ 0x6871ABFF;
  v81 = STACK[0x51D8];
  LODWORD(STACK[0x4FB0]) = *(STACK[0x51D8] + 4 * (v67 % 0x101));
  v82 = STACK[0x55D0];
  LODWORD(STACK[0x4F58]) = (2 * LODWORD(STACK[0x55D0])) & 0x1F948CEC;
  LODWORD(STACK[0x4F48]) = v82 + 264914550;
  LODWORD(STACK[0x5030]) = v63 ^ 0x20186924;
  LODWORD(STACK[0x4F28]) = v64 ^ 0xDFE796DB;
  LODWORD(STACK[0x4ED8]) = *(v46 + 4 * v66);
  LODWORD(STACK[0x4EC0]) = v65 - v55;
  LODWORD(STACK[0x4F30]) = v68 ^ 0x20186924;
  LODWORD(STACK[0x4EB8]) = v66 ^ 0xDCDAD4F5;
  LODWORD(STACK[0x4EB0]) = -v66;
  LODWORD(STACK[0x4EC8]) = *(v81 + 4 * v66);
  LODWORD(STACK[0x4F20]) = v80 - LODWORD(STACK[0x5390]) + v60;
  LODWORD(STACK[0x4ED0]) = v70 ^ 0x8FF47204;
  v83 = *(STACK[0x57D8] + 8 * v13);
  LODWORD(STACK[0x5500]) = v40;
  LODWORD(STACK[0x4EA0]) = v74 - v40;
  v84 = v79 + LODWORD(STACK[0x5770]);
  LODWORD(STACK[0x56D0]) = v59;
  LODWORD(STACK[0x55D0]) = v62;
  LODWORD(STACK[0x4EA8]) = v59 - v62;
  LODWORD(STACK[0x4FC0]) = v84;
  LODWORD(STACK[0x4F90]) = v84 ^ v55;
  return v83();
}

uint64_t sub_100440E98@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X5>, uint64_t a6@<X6>, unsigned int a7@<W8>)
{
  v11 = *(a1 + a5) * v9;
  v12 = v11 ^ v7;
  v13 = (v12 + a5) >> (((a7 - 118) | 0xC) + 4);
  v14 = a5 + v8 - ((v12 + a5 - v13) >> 8) + v12 - v13;
  v15 = a5 + v8 + (v14 ^ v11) - (((v14 ^ v11) + a5 - (((v14 ^ v11) + a5) >> 16)) >> 8) - (((v14 ^ v11) + a5) >> 16);
  v16 = v15 ^ v11;
  v17 = (v16 + a5) >> 16;
  return (*(STACK[0x57D8] + 8 * ((10701 * (a6 == a5)) ^ a7)))(STACK[0x53A0], (a2 + 1), a3, v14 ^ a4 ^ v10 & (v14 >> 1) ^ v15 ^ v10 & (v15 >> 1) ^ (a5 + v8 + v16 - ((v16 + a5 - v17) >> 8) - v17) ^ v10 & ((a5 + v8 + v16 - ((v16 + a5 - v17) >> 8) - v17) >> 1));
}

uint64_t sub_1004410B8()
{
  v2 = STACK[0x51B8] + 1373;
  LODWORD(STACK[0x7D9C]) = v0;
  LOBYTE(STACK[0x853F]) = v0 == v1;
  return (*(STACK[0x57D8] + 8 * (v2 ^ (113 * (v0 != v1)))))();
}

uint64_t sub_100441154()
{
  LODWORD(STACK[0x6E04]) = v1;
  v4 = 1534937323 * ((0x1F0A0DD14BD3DAC0 - (STACK[0x23D8] | 0x1F0A0DD14BD3DAC0) + STACK[0x23D0]) ^ 0xAEDCBC0B7E40D85BLL);
  LODWORD(STACK[0x1D4D4]) = (v0 - 876523663) ^ v4;
  STACK[0x1D4C0] = v2 ^ v4;
  LODWORD(STACK[0x1D4CC]) = v4 + v0 + 1451493860;
  LODWORD(STACK[0x1D4D0]) = v4;
  LODWORD(STACK[0x1D4E0]) = ((v0 - 876523663) ^ 0xF4) + v4;
  LODWORD(STACK[0x1D4C8]) = ((v0 - 876523663) ^ 0xD7E) - v4;
  STACK[0x1D4D8] = v4;
  v5 = v0 ^ 0x2462;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * v5))(v3 - 240);
  return (*(v6 + 8 * SLODWORD(STACK[0x1D4E4])))(v7);
}

uint64_t sub_1004412BC()
{
  v14 = v0 + (v2 - 103679700);
  v15 = v1 + (v2 - 103679696);
  v16 = *v4 & ((v3 + 546) ^ 0xFFFFFFFFFFFFDA35);
  v17 = *(*v12 + (((v14 & 0xFFFFFFF8) + v6) & v16));
  v18 = __ROR8__(v14 & 0xFFFFFFFFFFFFFFF8, 8);
  v19 = (0xEA595FE49E972A70 - ((v18 + v17) ^ 0x3B8D953D6CA39B32 | 0xEA595FE49E972A70) + ((v18 + v17) ^ 0x3B8D953D6CA39B32 | 0x15A6A01B6168D58FLL)) ^ 0xDA3D646F929572DALL;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ v7;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ v8;
  v24 = __ROR8__(v23, 8);
  v25 = v23 ^ __ROR8__(v22, 61);
  v26 = (0xC5B60ECBC0301C9ELL - ((v24 + v25) | 0xC5B60ECBC0301C9ELL) + ((v24 + v25) | 0x3A49F1343FCFE361)) ^ 0xDFE6EB871172DFBCLL;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ v11;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ v9;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = *(*v12 + (((v15 & 0xFFFFFFF8 ^ 0x7C4BEFAC) + 2105973227 + ((2 * (v15 & 0xFFFFFFF8)) & 0xF897DF50)) & v16));
  v33 = __ROR8__(v30, 8) + v31;
  v34 = (__ROR8__(v15 & 0xFFFFFFFFFFFFFFF8, 8) + v32) ^ v13;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ v7;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ v8;
  v39 = __ROR8__(v38, 8);
  v40 = v38 ^ __ROR8__(v37, 61);
  v41 = (((2 * v33) | 0xCC2C413C3B82138ALL) - v33 - 0x6616209E1DC109C5) ^ 0x399BCCA0BE5903DELL;
  v42 = (v39 + v40 - ((2 * (v39 + v40)) & 0xCD3074EF00CB9C8CLL) + 0x66983A778065CE46) ^ 0x833720C4AED8F29BLL;
  v43 = __ROR8__(v41, 8) + (v41 ^ __ROR8__(v31, 61));
  v44 = v42 ^ __ROR8__(v40, 61);
  v45 = __ROR8__(v42, 8);
  v46 = (0x3F85A7224CB8D34ELL - ((v45 + v44) | 0x3F85A7224CB8D34ELL) + ((v45 + v44) | 0xC07A58DDB3472CB1)) ^ 0x7A7912B7F029B90;
  v47 = v46 ^ __ROR8__(v44, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ v9;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = __ROR8__(v48, 8);
  v51 = (((2 * (v50 + v49)) | 0x2035CF94218909ELL) - (v50 + v49) - 0x101AE7CA10C484FLL) ^ 0x5E8C424202944254;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = __ROR8__(v51, 8);
  *v15 = (((((2 * (v53 + v52)) | 0xF2153F82040C7666) - (v53 + v52) - 0x790A9FC102063B33) ^ 0xB8C95713A6C3731BLL) >> (8 * (v15 & 7u))) ^ ((v43 ^ v10) >> (8 * (v14 & 7u))) ^ *v14;
  return (*(STACK[0x57D8] + 8 * ((31 * (v2 - 1 != v5)) ^ v3)))();
}

uint64_t sub_100441644()
{
  v1 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * (v0 ^ 0x5032)))();
  (*(v1 + 8 * (v0 ^ 0x5032)))(STACK[0xD650]);
  return (*(v1 + 8 * v0))(LODWORD(STACK[0x4E08]), LODWORD(STACK[0x4E10]), 2151743554, 2169728682);
}

uint64_t sub_1004416D8(uint64_t a1, unsigned int a2, uint64_t a3, char a4)
{
  v5 = (v4 & 0x7FFFF) + 2147221504 + (((v4 >> 19) - ((v4 >> 19) ^ 0x1FFF)) << ((((a2 - 87) & 0x56) + 119) ^ 0x65));
  v6 = ((v5 & 0xD83A59DEE22E9D22 ^ 0x27C5A621FFF3F6DFLL) - (v5 ^ 0xFFFFFFFF048D4BBDLL | 0xD83A59DEE22E9D22) + ((2 * (v5 ^ 0xFFFFFFFF048D4BBDLL)) & 0xB074B3BDC45D3A44)) ^ 0xD83A59DEE22E9D22;
  v7 = (v4 & 2 ^ v6 ^ 2) + v6 - (v6 & (v4 | 0xFFFFFFFFFFFFFFFDLL));
  LODWORD(v7) = ~(((v7 - a2) | (a2 - v7)) >> 59) & 0x10;
  return (*(STACK[0x57D8] + 8 * ((475 * (((v7 ^ ((a4 & 0xE) - 10)) + 2 * (v7 & ((a4 & 0xE) + 2147483638))) >> 31)) ^ (a2 + 16111))))();
}

uint64_t sub_100441A20()
{
  v0 = STACK[0x51B8] - 6806;
  v1 = STACK[0x51B8] ^ 0x3F83;
  v2 = STACK[0x51B8] - 16318;
  *(STACK[0xE738] - 0x1883660EE814440ALL) = STACK[0xE744];
  return (*(STACK[0x57D8] + 8 * (((LODWORD(STACK[0xE748]) == v1 - 143139652) * (v0 ^ 0x5FC1)) ^ v2)))();
}

uint64_t sub_100441A9C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  LODWORD(STACK[0x5730]) = LODWORD(STACK[0x5500]) ^ LODWORD(STACK[0x5510]) ^ LODWORD(STACK[0x51F8]) ^ LODWORD(STACK[0x5780]) ^ LODWORD(STACK[0x51B0]);
  LODWORD(STACK[0x5510]) = LODWORD(STACK[0x5750]) ^ LODWORD(STACK[0x51D0]) ^ LODWORD(STACK[0x5140]) ^ LODWORD(STACK[0x51A8]) ^ v7 ^ a5 ^ v6 ^ v5 ^ STACK[0x5138] & 0x71C9E77A ^ (a4 + 1595090038);
  return (*(STACK[0x57D8] + 8 * a4))();
}

uint64_t sub_100441CC8(int a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0x55A0]) = LODWORD(STACK[0x5220]) + (LODWORD(STACK[0x5348]) ^ 0x81369383);
  v9 = LODWORD(STACK[0x5118]) ^ LODWORD(STACK[0x5520]);
  v10 = LODWORD(STACK[0x55C0]) - 398769413 - 1129839345 * LODWORD(STACK[0x57A0]) + 1129839345 * LODWORD(STACK[0x5140]);
  LODWORD(STACK[0x5118]) = LODWORD(STACK[0x5660]) ^ LODWORD(STACK[0x55F0]);
  LODWORD(STACK[0x5228]) = LODWORD(STACK[0x50F0]) + ((LODWORD(STACK[0x5100]) - 638538045) ^ LODWORD(STACK[0x5228]) ^ LODWORD(STACK[0x50F8]));
  LODWORD(STACK[0x50F0]) = v5 ^ v6 ^ 0xE1754AD;
  LODWORD(STACK[0x55C0]) = LODWORD(STACK[0x50E8]) - LODWORD(STACK[0x5790]);
  LODWORD(STACK[0x50F8]) = a4 - v4;
  LODWORD(STACK[0x5100]) = 926119103 * a1;
  LODWORD(STACK[0x5348]) = LODWORD(STACK[0x5590]) ^ LODWORD(STACK[0x5580]);
  v11 = STACK[0x53A0];
  LODWORD(STACK[0x5590]) = v9 ^ LODWORD(STACK[0x53A0]);
  LODWORD(STACK[0x5220]) = v10 + 3992;
  v12 = LODWORD(STACK[0x51C0]) ^ LODWORD(STACK[0x5210]) ^ LODWORD(STACK[0x5120]);
  LODWORD(STACK[0x5120]) = 517371739 * LODWORD(STACK[0x5550]);
  LODWORD(STACK[0x50E8]) = LODWORD(STACK[0x5540]) ^ 0xF2E944C2;
  v13 = v12 ^ LODWORD(STACK[0x5730]) ^ v11 ^ v8 ^ LODWORD(STACK[0x50D8]);
  LODWORD(STACK[0x5660]) = LODWORD(STACK[0x50E0]) + 2036684529 * LODWORD(STACK[0x50C8]) + LODWORD(STACK[0x50D0]) - 867213969;
  LODWORD(STACK[0x5210]) = v13;
  LODWORD(STACK[0x55F0]) = v13 ^ 0x9B22B5FC;
  STACK[0x5790] = STACK[0xD688] - 0x5DA6670A2472BB8ALL;
  return (*(STACK[0x57D8] + 8 * v7))();
}

uint64_t sub_1004420E4()
{
  v1 = STACK[0x57D8];
  STACK[0x8D48] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x71CF ^ (6952 * (v0 ^ 0xBA0)))))();
}

uint64_t sub_100442274@<X0>(unint64_t a1@<X8>)
{
  STACK[0x1D4C0] = a1;
  LODWORD(STACK[0x1D4C8]) = v1 + 289235981 * (((v3 - 240) & 0xA7987E1F | ~((v3 - 240) | 0xA7987E1F)) ^ 0xDFE551DF) + 7939;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v1 + 22009)))(v3 - 240);
  *(v2 + 8) = 0x79296B4A625EDF44;
  return (*(v4 + 8 * v1))(v5);
}

uint64_t sub_100442318()
{
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x2426)))(v1);
  return (*(v3 + 8 * ((125 * (v2 == (v0 - 86))) ^ (v0 + 4454))))(v4);
}

uint64_t sub_100442368()
{
  v1 = STACK[0x6A08];
  STACK[0xB420] = STACK[0xC3F0];
  LODWORD(STACK[0x8C54]) = -769884028;
  STACK[0x8EA0] = v1;
  LODWORD(STACK[0xBC38]) = -746967308;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100442408()
{
  v1 = STACK[0x57D8];
  STACK[0x8D48] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * ((v0 + 3787) ^ v0)))();
}

uint64_t sub_100442434()
{
  LODWORD(STACK[0xB5CC]) = -769884012;
  STACK[0xBD40] = 0;
  STACK[0xC188] = STACK[0x6120];
  STACK[0xAAA0] = 0;
  LODWORD(STACK[0x6518]) = -769884012;
  LODWORD(STACK[0x9AA4]) = -769884012;
  LODWORD(STACK[0xB174]) = -769884012;
  STACK[0x8A60] = 0;
  STACK[0xA2E0] = 0;
  LODWORD(STACK[0xA754]) = -769884012;
  LODWORD(STACK[0xCB88]) = -769884012;
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xB5CC];
  LODWORD(STACK[0x9094]) = -32197417;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100442534@<X0>(int a1@<W8>)
{
  v1 = a1 - 4316;
  STACK[0xCA20] = *(STACK[0x4D10] + 8) + (LODWORD(STACK[0x5C1C]) << 7);
  v2 = STACK[0x7ED8];
  STACK[0xC8D8] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v2 + 128;
  v3 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * v1);
  return (*(v3 + 8 * ((v1 + 4604) ^ v1)))();
}

uint64_t sub_1004425BC()
{
  v2 = STACK[0xB680] + 4 * ((v1 ^ 0xC4EB78D8) + v0);
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = v2;
  LODWORD(STACK[0x9094]) = -32197396;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_100442694(uint64_t a1)
{
  v2 = STACK[0x9F58];
  STACK[0xB380] = STACK[0x9F58];
  STACK[0x8828] = STACK[0x97C0];
  LODWORD(STACK[0xC35C]) = ((((LODWORD(STACK[0x8784]) ^ 0xABB250A2) + 1414377310) ^ ((LODWORD(STACK[0x8784]) ^ LODWORD(STACK[0xE0C])) - 381698198) ^ (((v1 + 1523014523) & 0xA538AF77 ^ LODWORD(STACK[0x8784]) ^ 0x6F6EB0B1) - 1869516960)) - 769883997) & 0xFFFFFFF0 ^ 0xD21C8094;
  STACK[0x7ED0] = v2;
  STACK[0xC880] = 0xD591CB0B189BA27FLL;
  LODWORD(STACK[0xCD80]) = 1329730799;
  return (*(STACK[0x57D8] + 8 * v1))(a1, 272629776, 410912332, 1543499262, 2265206393, 3965507692, 4221484704, 0x1B3EC18598D49E09);
}

uint64_t sub_1004427F8@<X0>(int a1@<W1>, int a2@<W8>)
{
  v5 = v3 == 0;
  LOBYTE(STACK[0xC737]) = v5;
  if (a1 == (((a2 & 0x82CCF57B) + 896263800) & 0xCA940D6F ^ 0xD21C89BF))
  {
    v5 = 1;
  }

  if (v2)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  if (v4 == -769884012)
  {
    v6 = 1;
  }

  v7 = v6 == 0;
  v8 = 0x853D96933E0BCDC8;
  if (v7)
  {
    v9 = 31;
  }

  else
  {
    v8 = 0x419E4966F5395660;
    v9 = 30;
  }

  LOBYTE(STACK[0xBA57]) = v9;
  STACK[0xC4D0] = &STACK[0x8A98];
  LODWORD(STACK[0x7EBC]) = -1389924012;
  STACK[0x7910] = v8;
  LODWORD(STACK[0x9C14]) = 0;
  LODWORD(STACK[0xA25C]) = 1320877400;
  return (*(STACK[0x57D8] + 8 * (a2 & 0x82CCF57B)))();
}

uint64_t sub_1004428E4()
{
  v1 = STACK[0xB976];
  STACK[0x5E28] = (((v0 + 6873) & 0xC5B7 ^ 0xA9A9) + LOWORD(STACK[0xB976]));
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 22350)))((((v0 + 6873) & 0xC5B7 ^ 0xA9A9) + v1));
  STACK[0xACE8] = v3;
  v4 = (*(v2 + 8 * (v0 + 22350)))((((v0 + 6873) & 0xC5B7 ^ 0xA9A9) + v1));
  STACK[0x8B78] = v4;
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  return (*(v2 + 8 * ((2296 * v6) ^ v0)))();
}

uint64_t sub_1004429F0@<X0>(int a1@<W8>)
{
  v1 = ((a1 + 909036616) & 0xC9D1785E ^ 0x7FFFFFFFFFFFA7A9) & *(*STACK[0x51F0] + (*STACK[0x51E8] & 0xFFFFFFFFB7D68810));
  STACK[0xA470] = 0x2C1088EC235E8FE7 * ((v1 ^ 0xA60A9833DE881531) + (v1 ^ 0x59F567CC2177EACELL)) + 0x2C1088EC235E8FEALL;
  v2 = STACK[0x6A08];
  LODWORD(STACK[0x98F4]) = -143113071;
  STACK[0x6230] = v2;
  LODWORD(STACK[0x6974]) = -474037607;
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_100442AE8@<X0>(int a1@<W8>)
{
  v1 = a1 | 0xB4200340;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * ((a1 | 0xB4200340) ^ 0xB462C709)))();
  return (*(v2 + 8 * (v1 ^ LODWORD(STACK[0x1A64]) ^ (49573 * (v1 == -678398119)))))(v3);
}

void *sub_100442B74()
{
  STACK[0xD950] = STACK[0xA8D0];
  STACK[0x7378] = 0x1883660EE8144416;
  return (*(STACK[0x57D8] + 8 * (v0 + 13373)))(&STACK[0x9C44]);
}

uint64_t sub_100442BF4()
{
  STACK[0xDEC0] = v1;
  STACK[0xCA58] = 0;
  STACK[0xDEC8] = v2;
  LODWORD(STACK[0xDED4]) = *v2;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100442C88()
{
  LODWORD(STACK[0x1D4C0]) = (v0 + 1717163305) ^ (1964904101 * ((-1097015691 - ((v1 - 240) | 0xBE9CDE75) + ((v1 - 240) | 0x4163218A)) ^ 0xBB41CA0E));
  STACK[0x1D4C8] = STACK[0x4168];
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 23870)))(v1 - 240);
  return (*(v2 + 8 * (((LODWORD(STACK[0xB354]) != ((v0 + 14671) ^ 0xF7781CC7)) * (((v0 + 4379) | 0x60C) - 13861)) ^ v0)))(v3);
}

uint64_t sub_100442E14(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = v5 < v6;
  if (v7 == a5 - 150040118 < v6)
  {
    v7 = a5 - 150040118 < v5;
  }

  return (*(STACK[0x57D8] + 8 * ((4055 * !v7) ^ a2)))();
}

uint64_t sub_100443878()
{
  STACK[0x8928] = 0;
  LODWORD(STACK[0xAEAC]) = 0;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v3 ^ 0x3B74)))(v2 ^ (v0 + 1006) ^ (((v3 + 934777493) & (v1 + 2530)) - 21568));
  *(v4 + 104) = v6;
  return (*(v5 + 8 * ((201 * (v6 == 0)) ^ v3)))();
}

uint64_t sub_100443924@<X0>(char a1@<W8>)
{
  v4 = STACK[0x51B8];
  v5 = STACK[0x51B8] - 22613;
  v6 = v5 ^ v1 ^ 9 ^ v2;
  if (a1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 8;
  }

  v8 = 551690071 * ((((v3 - 240) | 0xF8A00028136FB084) - ((v3 - 240) & 0xF8A00028136FB084)) ^ 0x893D52E65D82E3D3);
  LODWORD(STACK[0x1D4CC]) = (v5 | 0x908812CA) - v8;
  STACK[0x1D4E0] = v8 + 8;
  LODWORD(STACK[0x1D4D0]) = v8;
  LODWORD(STACK[0x1D4C0]) = (v4 - 1079089617) ^ v8;
  LODWORD(STACK[0x1D4C8]) = -1870130935 - v8 + v5 + 448;
  LODWORD(STACK[0x1D4C4]) = v8 ^ v5 ^ 0x90881DF3;
  STACK[0x1D4D8] = v7 - v8;
  v9 = STACK[0x57D8];
  v10 = (*(STACK[0x57D8] + 8 * (v4 ^ 0x2411)))(v3 - 240);
  return (*(v9 + 8 * SLODWORD(STACK[0x1D4D4])))(v10);
}

uint64_t sub_100443A78@<X0>(int a1@<W8>)
{
  STACK[0xB460] = v2;
  STACK[0x8550] = v1;
  STACK[0x6320] = v3;
  STACK[0xA660] = v3;
  v5 = v3 != 0x2369327399A66D95 && *(v3 - 0x2369327399A66D85) != 0x1883660EE8144416;
  return (*(STACK[0x57D8] + 8 * ((v5 * (((a1 - 7428) | 0x7402) ^ (a1 + 22304))) ^ a1)))();
}

uint64_t sub_100443B18()
{
  LOWORD(STACK[0xDF86]) = v2;
  LODWORD(STACK[0xDF88]) = v1;
  LODWORD(STACK[0xDF8C]) = v0;
  return (*(STACK[0x57D8] + 8 * v3))();
}

uint64_t sub_100443B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = (((v14 ^ v12) + ((v9 - 1897) ^ 0x9E0F2697)) ^ ((v14 ^ 0xC64D015D) + 968031907) ^ ((v14 ^ 0x75A1432C) - 1973502764)) - 238790485;
  v18 = ((v17 ^ 0x7516BEB) - 418821107) ^ v17 ^ ((v17 ^ 0x2DAB539D) - 839682949) ^ (v11 + (v17 ^ 0x4AA23F91) + 3075) ^ ((v17 ^ 0x7FFFDFFF) - 1616381927);
  v19 = v18 ^ v13;
  v20 = (v8 + v19);
  v21 = __ROR8__((v8 + v19) & 0xFFFFFFFFFFFFFFF8, 8);
  v22 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & (((v8 + v19) & 0xFFFFFFF8) + 2050767130)) & 0xFFFFFFFFFFFFFFF8));
  v23 = *(v15 + 8) + v19;
  v24 = (v21 + v22) ^ 0xB88801D4E1C76353;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0x38C8B16AE7056877;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ a7;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (v10 - ((v30 + v29) | v10) + ((v30 + v29) | 0xA68803F2460728DALL)) ^ 0x4729FEA99752D1A0;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (v33 + v32 - ((2 * (v33 + v32)) & 0xEDAAE3C5C30E1FALL) + 0x76D571E2E1870FDLL) ^ 0xDD0D1C122DBACF64;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0xFA35E2CDCB3E31C7;
  v37 = __ROR8__(v36, 8);
  v38 = v36 ^ __ROR8__(v35, 61);
  v39 = __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8);
  v40 = ((2 * (v39 + 0x4E0B6541E4935D63)) | 0x78123815AD75FFELL) - (v39 + 0x4E0B6541E4935D63) + 0x7C3F6E3F52945001;
  v41 = (((2 * (v37 + v38)) | 0xB557DB28AE693A4ALL) - (v37 + v38) + 0x2554126BA8CB62DBLL) ^ 0x85BE17277D14E8BLL;
  v42 = v40 ^ 0x6C78CF51895F1F7BLL;
  v40 ^= 0x1C23E55EADC5F461uLL;
  v43 = (__ROR8__(v42, 8) + v40) ^ v16;
  v44 = v43 ^ __ROR8__(v40, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ a8;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = __ROR8__(v41, 8) + (v41 ^ __ROR8__(v38, 61));
  v48 = (__ROR8__(v45, 8) + v46) ^ 0x51FC477E33DE4033;
  v49 = __ROR8__(v48, 8);
  v50 = v48 ^ __ROR8__(v46, 61);
  v51 = (((2 * (v49 + v50)) | 0xE2939001EE3CE71ALL) - (v49 + v50) + 0xEB637FF08E18C73) ^ 0xD305C1CAB3127F86;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (((2 * (v53 + v52)) | 0x6D6B879988B5F058) - (v53 + v52) + 0x494A3C333BA507D4) ^ 0x172C3A629BDD9269;
  v55 = v54 ^ __ROR8__(v52, 61);
  v56 = __ROR8__(v54, 8);
  *v23 = (((__ROR8__((((2 * (v56 + v55)) & 0xEA39C1E63F16CC04) - (v56 + v55) + 0xAE31F0CE07499FDLL) ^ 0xB861211840489A9ALL, 8) + ((((2 * (v56 + v55)) & 0xEA39C1E63F16CC04) - (v56 + v55) + 0xAE31F0CE07499FDLL) ^ 0xB861211840489A9ALL ^ __ROR8__(v55, 61))) ^ 0x69517CAD07781183) >> (8 * (v23 & 7u))) ^ *v20 ^ (((((2 * v47) | 0xB1DF8A0824856ED6) - v47 - 0x58EFC5041242B76BLL) ^ 0xAC9CCE35BC32C210) >> (8 * (v20 & 7u)));
  return (*(STACK[0x57D8] + 8 * ((501 * (v18 != v13)) ^ v9)))();
}

uint64_t sub_1004440CC@<X0>(uint64_t a1@<X8>, __n128 a2@<Q5>)
{
  v10 = *(STACK[0x57D8] + 8 * (((v5 - 2024539462) & 0x78ABFE5F) - 1081));
  STACK[0x54C0] = v3 & 0xFFFFFFF0;
  *&STACK[0x55C0] = a2;
  *&STACK[0x5730] = v6;
  *&STACK[0x54E0] = v8;
  *&STACK[0x54D0] = v9;
  *&STACK[0x5720] = v7;
  return v10((v3 & 0xFFFFFFF0) - 16, v2 + v4, a1);
}

uint64_t sub_100444220()
{
  v0 = STACK[0x51B8] + 4474;
  v1 = STACK[0x51B8] - 22048;
  LODWORD(STACK[0xB30C]) = 16 * LODWORD(STACK[0x7C44]);
  v2 = STACK[0x57D8];
  STACK[0x9078] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x7AF6) + v1)))();
}

uint64_t sub_10044431C()
{
  v5 = v1 + v4;
  v6 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * (v0 + 15508)))(v2 + 32, v5 + 64, 32);
  v7 = (*(v6 + 8 * (v0 + 15609)))(v3, v5 + 64) != 0;
  return (*(v6 + 8 * ((v7 * (6 * (v0 ^ 0x3178) - 22587)) ^ v0)))();
}

uint64_t sub_10044439C()
{
  v3 = STACK[0x2950];
  LODWORD(STACK[0x1D4CC]) = v0 + 1167507680 - STACK[0x2950];
  LODWORD(STACK[0x1D4C4]) = v3 ^ (v0 + 1167507680) ^ 0xE6A;
  STACK[0x1D4D8] = v1 - v3;
  LODWORD(STACK[0x1D4C8]) = ((v0 + 1167507680) ^ 0x2D) - v3;
  LODWORD(STACK[0x1D4C0]) = (v0 - 1079089617) ^ v3;
  LODWORD(STACK[0x1D4D0]) = v3;
  STACK[0x1D4E0] = v3 + 4151854225u;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x2411)))(v2 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4D4])))(v5);
}

uint64_t sub_1004444CC(uint64_t a1)
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v1 + 8972)))(LODWORD(STACK[0x6034]), a1, &STACK[0x7190]);
  return (*(v2 + 8 * (((((((v1 - 20141) | 0x10) ^ 0xE3FFA56E) & (2 * v3)) + (v3 ^ 0xF1FFD7FE) == -234891266) * ((v1 - 1671601202) & 0x63A27373 ^ 0x3472)) ^ v1)))();
}

uint64_t sub_100444564()
{
  v2 = STACK[0x51B8] + 1775;
  STACK[0xC920] = 0;
  LODWORD(STACK[0xAB90]) = 0;
  v3 = STACK[0x7F98];
  v4 = STACK[0x65B8];
  v5 = LODWORD(STACK[0x7224]) + 1044042392;
  v6 = 16169987 * ((((v1 - 240) | 0x7D2358E1) - ((v1 - 240) & 0x7D2358E1)) ^ 0x28AD6DC9);
  *(v0 + 632) = LODWORD(STACK[0x294C]) ^ v6;
  *(v0 + 616) = &STACK[0xC920];
  *(v0 + 636) = v5 ^ v6;
  *(v0 + 644) = 1102348824 - v6;
  *(v0 + 640) = (3 * ((((v1 + 16) | 0xE1) - ((v1 + 16) & 0xE1)) ^ 0xC9)) ^ 0xA1;
  *(v0 + 624) = v4;
  *(v0 + 608) = v3;
  *(v0 + 592) = &STACK[0xAB90];
  v7 = STACK[0x57D8];
  v8 = (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x2938])))(v1 - 240);
  v9 = *(v0 + 600);
  LODWORD(STACK[0xDF58]) = v9;
  v11 = v9 != -143113071 || STACK[0xC920] == 0;
  return (*(v7 + 8 * ((v11 * LODWORD(STACK[0x2948])) ^ v2)))(v8);
}

uint64_t sub_100444918()
{
  v2 = STACK[0x68D0];
  LODWORD(STACK[0x9F88]) = 1;
  v4 = v1 == -143113071 && v2 == ((6 * (v0 ^ 0x2CD8)) ^ 0xF77875A6) + (v0 ^ 0x34C0);
  return (*(STACK[0x57D8] + 8 * ((21226 * v4) ^ v0)))();
}

uint64_t sub_1004449E4()
{
  v2 = STACK[0x51B8];
  *(STACK[0xE5A0] + 340) = 1978732275 * ((v1 ^ 0xC61726DB) + v0) + 1978732275;
  return (*(STACK[0x57D8] + 8 * (v2 - 17962)))();
}

uint64_t sub_100444AAC@<X0>(int a1@<W8>)
{
  *(v6 + 3372) = v5;
  *(v6 + 3368) = v4 - v1 + v2 - v3;
  return (*(STACK[0x57D8] + 8 * ((11298 * (v5 == ((a1 - 4160) | 0x1015) - 143119750)) ^ a1)))();
}

uint64_t sub_100444BF8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, int a8)
{
  v14 = v8 | ((*(STACK[0x57C0] + (v9 + (a5 ^ 0xB6) * v13 - ((((v9 + (a5 ^ 0xB6u) * v13) * v11) >> 16) >> 6) * v12)) ^ 0x25) << 24);
  v15 = *(STACK[0x57D8] + 8 * (((((a1 - 17778) | 0x400A) - 12965) * (a8 == v10)) ^ a1));
  LODWORD(STACK[0x5750]) = v14;
  return v15();
}

uint64_t sub_100444DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = *(STACK[0x57D8] + 8 * a7);
  STACK[0x57C0] = v7 & 0x18;
  return v8();
}

uint64_t sub_100444E90()
{
  v1 = (STACK[0x51B8] - 1431750791) & 0x55567574;
  v2 = STACK[0x51B8] - 21306;
  LODWORD(STACK[0x7090]) = v0;
  return (*(STACK[0x57D8] + 8 * ((19984 * (v0 == (v1 ^ 0xF77841D5))) ^ v2)))();
}

uint64_t sub_100444EFC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v9 = v7 < v8;
  v10 = a7 + 734579531;
  if (v9 == v10 < v8)
  {
    v9 = v10 < v7;
  }

  return (*(STACK[0x57D8] + 8 * ((29 * v9) ^ a2)))();
}

uint64_t sub_10044589C()
{
  v0 = STACK[0x51B8] - 9362;
  STACK[0x8088] = 0x683CBC57EAB92A3ELL;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100445948()
{
  STACK[0xB468] = STACK[0xB8E8];
  LODWORD(STACK[0x9CBC]) = -769883956;
  return (*(STACK[0x57D8] + 8 * v0))();
}

void *sub_100445A44@<X0>(int a1@<W8>)
{
  v1 = STACK[0x57D8];
  STACK[0xAE08] = *(STACK[0x57D8] + 8 * a1);
  return (*(v1 + 8 * ((5 * (a1 ^ 0x5A3) + 2891) ^ a1)))(&STACK[0xBF90]);
}

uint64_t sub_100445A88@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xDA58]) = v1;
  LOBYTE(STACK[0xDA5F]) = 0;
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_100445C0C()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))(v1);
  return (*(v2 + 8 * (v0 - 160)))(v3);
}

uint64_t sub_100445D04@<X0>(unsigned int a1@<W8>)
{
  v2 = STACK[0xA58];
  v3 = STACK[0x51B8];
  LODWORD(STACK[0x1D4CC]) = STACK[0xA58] + 1451493860 + STACK[0x51B8];
  v4 = STACK[0xA68];
  LODWORD(STACK[0x1D4E0]) = v2 + LODWORD(STACK[0xA68]) + 14;
  LODWORD(STACK[0x1D4C8]) = v4 - v2 - 2522;
  LODWORD(STACK[0x1D4D0]) = v2;
  LODWORD(STACK[0x1D4D4]) = v4 ^ v2;
  STACK[0x1D4C0] = a1 ^ v2;
  STACK[0x1D4D8] = v2;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v3 ^ 0x2462)))(v1 - 240);
  return (*(v5 + 8 * SLODWORD(STACK[0x1D4E4])))(v6);
}

uint64_t sub_100445DD0@<X0>(int a1@<W8>)
{
  if (STACK[0x8228])
  {
    v1 = LODWORD(STACK[0x953C]) == (((a1 - 27508) | 0x2000) ^ 0x62E22DF);
  }

  else
  {
    v1 = 1;
  }

  v4 = !v1 && STACK[0x63B0] != 0 && LODWORD(STACK[0xBB24]) != 103679699;
  return (*(STACK[0x57D8] + 8 * ((v4 * ((a1 - 703623105) & 0x29F00AF9 ^ 0xABE)) | a1)))();
}

uint64_t sub_100445EB0()
{
  v1 = STACK[0x51B8];
  v2 = STACK[0x6A08];
  LODWORD(STACK[0x98F4]) = v0;
  STACK[0x6230] = v2;
  LODWORD(STACK[0x6974]) = -708102945;
  return (*(STACK[0x57D8] + 8 * (v1 - 17575)))();
}

uint64_t sub_100445F84(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 + 1292)))(4096);
  *a1 = v4;
  return (*(v3 + 8 * (((((v1 - 1) ^ (v4 == 0)) & 1) * (((v1 - 715889204) & 0x2AAB7B57) - 22508)) ^ v1)))();
}

uint64_t sub_100463E90(uint64_t a1, __n128 a2)
{
  v6.n128_u64[0] = (v3 + 13) & 0xF;
  v6.n128_u64[1] = (v3 + 12) & 0xF;
  v7.n128_u64[0] = (v3 + 11) & 0xF;
  v7.n128_u64[1] = (v3 + 10) & 0xF;
  v8.n128_u64[0] = (v3 + 9) & 0xF;
  v8.n128_u64[1] = v3 & 0xF ^ 8;
  v9.n128_u64[0] = (v3 + 7) & 0xF;
  v9.n128_u64[1] = (v3 + 6) & 0xF;
  v10.n128_u64[0] = (v3 + 5) & 0xF;
  v10.n128_u64[1] = (v3 + 4) & 0xF;
  v11.n128_u64[0] = (v3 + 3) & 0xF;
  v11.n128_u64[1] = (v3 + 2) & 0xF;
  v12.n128_u64[0] = (v3 + 1) & 0xF;
  v12.n128_u64[1] = v3 & 0xF;
  return (*(STACK[0x57D8] + 8 * v5))(a1, v2 - 15, (v3 + 14) & 0xF, a1 - 15, (v3 + v4 + 3), v3 - 1, a2, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_100463F7C@<X0>(int a1@<W8>)
{
  if (STACK[0x7888])
  {
    v1 = STACK[0x87A8] == 0;
  }

  else
  {
    v1 = 1;
  }

  v4 = v1 || STACK[0x83A0] == 0 || STACK[0x60A0] == 0;
  return (*(STACK[0x57D8] + 8 * ((v4 * (((a1 - 4089) | 0x1040) - 5126)) ^ a1)))();
}

uint64_t sub_100463FDC@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, unint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>)
{
  STACK[0xB3C0] = a2;
  STACK[0x6FE8] = a1;
  STACK[0x6A78] = a7;
  STACK[0x62B8] = a3;
  STACK[0xA0D0] = v20;
  STACK[0xC0D0] = a4;
  LODWORD(STACK[0xCA04]) = v18;
  LODWORD(STACK[0x7494]) = a5;
  STACK[0x65F8] = a6;
  STACK[0xAF08] = v16;
  STACK[0x8AF0] = v15;
  STACK[0x5AE8] = v14;
  STACK[0x6680] = v13;
  STACK[0x9D28] = v23;
  STACK[0x8998] = v12;
  LODWORD(STACK[0xBF2C]) = v25;
  STACK[0xB4D8] = v21;
  LODWORD(STACK[0x9508]) = v19;
  v27 = 1978732275 * (v11 - (((v26 - 1373608193) | 0x43) ^ 0x39E8B7EB ^ *(v9 + (v24 & 0x2D5887C)) & 0x7FFFFFFF)) + 900237093;
  v28 = ((v27 ^ 0xBBF25427) + 1906650366) ^ v27 ^ ((v27 ^ 0x7026E163) - 1166960198) ^ ((v27 ^ 0x8283ED9E) + 1221891397) ^ ((v27 ^ 0x7CFFDFFF) - 1230461146);
  LODWORD(STACK[0x70D4]) = (((v28 ^ 0x991B6CFD) - 1662589283) ^ ((v28 ^ 0x857A7AE3) - 2138574717) ^ ((v28 ^ 0x29C9913B) + 741612379)) - 122864596;
  LODWORD(STACK[0x8434]) = v22;
  v29 = STACK[0x7ED8];
  v30 = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0xC1B8] = (v30 + 67);
  STACK[0x7ED8] = v29 + 432;
  LODWORD(STACK[0x5C8C]) = v10 ^ 0xD21C8094;
  STACK[0xC190] = 0xF726234C92AC6E47 * a8 - 0x291872199EE7C0FFLL;
  LODWORD(STACK[0x74C4]) = -769884028;
  STACK[0xABF8] = v30;
  STACK[0x7EE8] = v30;
  STACK[0x6790] = (v30 + 115);
  LODWORD(STACK[0xB8E4]) = a9 ^ 0xD21C8094;
  STACK[0x5CA8] = 0;
  STACK[0x6958] = 0;
  LODWORD(STACK[0xBAE4]) = -769884012;
  LODWORD(STACK[0xC5F4]) = -769884012;
  *(v17 + 2752) = 1522742687;
  v31 = STACK[0x57D8];
  v32 = (*(STACK[0x57D8] + 8 * (v26 - 1373604658)))();
  STACK[0x9060] = 0;
  *(v17 + 3180) = -769884012;
  STACK[0x7590] = 0x386D987F217E40C4;
  return (*(v31 + 8 * ((52733 * (v26 >= 0x9A4A2F66)) ^ (v26 - 1373618919))))(v32);
}

uint64_t sub_100464384(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0xE9D8] = v1 ^ 0xD21C8094;
  *(a1 + 16) = (((v1 ^ 0xA26BDED2) + 1569988910) ^ ((v1 ^ 0x622DAAF1) - 1647160049) ^ (((v2 - 931) ^ 0xEDA5531F) + (v1 ^ 0x125AF4B7))) + ((v2 - 20301) ^ 0xD21C8C32);
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v2 + 8261)))();
  *(a1 + 24) = v5;
  return (*(v4 + 8 * ((1945 * (v5 != 0)) ^ v2)))();
}

uint64_t sub_100464454()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x3FB7)))(1028);
  STACK[0xD770] = v2 + 0x3B44372B8C0487F0;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 - 9022) | 0x221) ^ ((v0 ^ 0x7150) - 4390))) ^ v0)))();
}

uint64_t sub_1004644D0()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 24619)))();
  *(v1 + 24) = 0;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_1004645EC@<X0>(uint64_t a1@<X8>)
{
  v2 = STACK[0xB4F0];
  STACK[0xB210] = STACK[0xB4F0];
  v3 = STACK[0x5FA8];
  v4 = (&STACK[0x10120] + a1);
  STACK[0x9510] = &STACK[0x10120] + a1;
  STACK[0x6F50] = &STACK[0x10120] + a1;
  STACK[0xA0B8] = &STACK[0x10120] + a1 + 16;
  v5 = &STACK[0x10120] + a1 + 272;
  STACK[0x8B90] = v5;
  STACK[0xABC8] = &STACK[0x10120] + a1 + 472;
  STACK[0x7ED8] = a1 + 736;
  STACK[0x9800] = 0;
  LODWORD(STACK[0x5C08]) = 0;
  STACK[0x7C88] = 0;
  *v4 = 0;
  v4[1] = 0;
  STACK[0xB3D0] = &STACK[0x10120] + a1 + 8;
  STACK[0x10084] = 0;
  STACK[0xB240] = STACK[0x1F08];
  v6 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * (v1 + 9221)))();
  v7 = (*(v6 + 8 * (v1 + 9221)))(v5, 0, 200);
  v4[59] = 0;
  v4[60] = 0;
  if (v2)
  {
    v8 = STACK[0x6E20] == 0;
  }

  else
  {
    v8 = 1;
  }

  v11 = v8 || v3 == 0 || STACK[0x6060] == 0;
  return (*(v6 + 8 * ((v11 * (v1 - 22506)) ^ (v1 + 213))))(v7);
}

uint64_t sub_100464778(uint64_t a1)
{
  v3 = *(v2 + 3076);
  v4 = *(v2 + 3080);
  v5 = *(v2 + 3099);
  v6 = *(v2 + 3100);
  v7 = *(v2 + 3104);
  v8 = *(v2 + 3124);
  LODWORD(STACK[0x57C0]) = *(v2 + 3160);
  return (*(STACK[0x57D8] + 8 * (v1 - 18019)))(a1, v4, v3, v8, v6, v5, v7);
}

uint64_t sub_1004647F4()
{
  v2 = 0xF40260A271B5317BLL * (v0 - v1) + 0x249B90018EA31DF8;
  *STACK[0xC6E8] = v2 ^ ((v2 ^ 0xCC2CA81B38F03B23) + 0x1748C7E549ACD925) ^ ((v2 ^ 0xBE2DDFF8D6B053DLL) - 0x2F794DFE03C818C5) ^ ((v2 ^ 0x9429323BEAE7D493) + 0x4F4D5DC59BBB3695) ^ ((v2 ^ 0x777CD7DED1DFF775) - 0x53E747DF5F7CEA8DLL) ^ 0xF7172DD2220CE5B2;
  return (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x14D0])))();
}

uint64_t sub_1004649A8()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 17279)))(23);
  *STACK[0x9960] = v2;
  return (*(v1 + 8 * (((v2 != 0) * ((v0 - 8911) ^ (v0 - 709278408) & 0x2A46978D)) ^ v0)))();
}

uint64_t sub_100464A58()
{
  v0 = STACK[0x51B8] - 22336;
  v1 = STACK[0x51B8] - 22613;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9192)))(16);
  STACK[0x7848] = v3;
  return (*(v2 + 8 * ((234 * (v3 == 0)) ^ ((v0 ^ 0x2971) + v1))))();
}

uint64_t sub_100464AD8@<X0>(int a1@<W8>)
{
  v1 = STACK[0x57D8];
  STACK[0xAFD0] = *(STACK[0x57D8] + 8 * a1);
  return (*(v1 + 8 * (a1 + a1 + 4738 - 3463)))();
}

uint64_t sub_100464B28()
{
  v1 = STACK[0x90A8];
  LODWORD(STACK[0x67D0]) = -769883980;
  STACK[0xA180] = v1;
  LODWORD(STACK[0x7B0C]) = -769884012;
  STACK[0xB6F0] = 0;
  return (*(STACK[0x57D8] + 8 * ((v1 == 0) | v0)))();
}

uint64_t sub_100464C3C@<X0>(uint64_t a1@<X8>)
{
  v2 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * (v1 ^ 0x26BA)))(a1);
  *(STACK[0xCF00] + 24) = 0;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_100464C84(uint64_t a1)
{
  v2 = STACK[0x57D8];
  STACK[0xCFB8] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v1 - 5617 + 3 * (v1 ^ 0x34F))))(a1, 16390, -22613, 22798, 4294961082, 186);
}

uint64_t sub_100464CF0@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  LODWORD(STACK[0x6B0]) = v3;
  LODWORD(STACK[0x6B8]) = v2;
  LODWORD(STACK[0x6C0]) = v4;
  STACK[0x3D8] = v5;
  STACK[0x518] = &STACK[0xC30];
  return (*(STACK[0x6D8] + 8 * a2))(15, 2285886961, 962, 938997584, 350659003, a1, 4294944019);
}

uint64_t sub_100464D7C@<X0>(int a1@<W8>)
{
  v6 = *(*(v4 + 1368) + v3 % 0x1808);
  v7 = v6 & 0x5C ^ 0xD4;
  *(*(v4 + 1360) + 4 * (a1 + (((v1 - 10187) | 0x4280) ^ 0x327C93) - 8768 * (((((v1 - 10187) | 0x4280) ^ 0x327C93u) + a1) / 0x2240))) = (v6 ^ (2 * ((v6 ^ 0x34) & (2 * ((v6 ^ 0x34) & (2 * ((v6 ^ 0x34) & (2 * ((v6 ^ 0x34) & (2 * v7) ^ v7)) ^ v7)) ^ v7)) ^ v7))) ^ (v5 - 44);
  return (*(STACK[0x57D8] + 8 * ((5853 * (v2 == 0)) ^ v1)))();
}

uint64_t sub_100464E68(int a1, int a2, int a3, int a4, int a5, int a6)
{
  LODWORD(STACK[0x510]) = a2;
  LODWORD(STACK[0x514]) = v8;
  LODWORD(STACK[0x638]) = a6;
  LODWORD(STACK[0x524]) = a5;
  LODWORD(STACK[0x6C8]) = a3;
  LODWORD(STACK[0x640]) = a1;
  LODWORD(STACK[0x528]) = v7;
  LODWORD(STACK[0x534]) = a4;
  v9 = v6 ^ 0x19EDu;
  v10 = STACK[0x5F0];
  LODWORD(STACK[0x310]) = 1262387236 - LODWORD(STACK[0x5F0]);
  STACK[0x6C0] = v9;
  return (*(STACK[0x6D8] + 8 * ((28 * ((v9 ^ v6 ^ 0x6293 ^ 0x1E381E2F) + v10 > 0xFFFFFFBF)) ^ v6)))(8711);
}

uint64_t sub_100464FDC(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  v33 = (a7 + a6 + (a5 | (a4 << 24))) ^ 0xE43D74C2;
  v34 = *(a10 + (v33 >> 24));
  v35 = (a3 + (v31 << 8) + v30 + v26) ^ 0x4A8792AEu;
  v36 = *(a10 + BYTE2(v35));
  v37 = *(a10 + BYTE2(v33));
  v38 = *(a10 + v27);
  v39 = *(a10 + (v35 >> 24));
  v40 = *(a10 + BYTE2(v29));
  v41 = *(a10 + (v29 >> 24));
  v42 = *(a10 + BYTE1(v35));
  v43 = *(a10 + BYTE1(v33));
  v44 = *(a10 + v35);
  v45 = *(a10 + v33);
  v46 = *(&off_101353600 + (a1 ^ 0x4EA0));
  LODWORD(v34) = (*(v46 + 8 * (v34 ^ 0xA5)) >> 16) ^ (*(v46 + 8 * (*(a10 + v29) ^ 0xA5)) >> 24);
  v47 = (*(v46 + 8 * (*(a10 + BYTE1(v29)) ^ 0xA5)) >> 8) ^ *(v46 + 8 * (v45 ^ 0xA5) + 4) ^ (*(v46 + 8 * (v44 ^ 0xA5)) >> 16) ^ 0x5A4B0E48;
  v48 = v34 ^ *(v46 + 8 * (v39 ^ 0xA5) + 4) ^ (*(v46 + 8 * (*(a10 + (v27 >> (a1 ^ 0xACu))) ^ 0xA5)) >> 8) ^ 0xFD145ABA;
  LODWORD(v45) = (*(v46 + 8 * (*(a10 + BYTE2(v27)) ^ 0xA5)) >> 24) ^ 0x44568885 ^ v47;
  v49 = *(a10 + ((v48 >> ((v38 ^ 0x3A) & 0x10)) >> ((v38 ^ 0x3A) & 0x10 ^ 0x10u)));
  v50 = (*(v46 + 8 * (v42 ^ 0xA5)) >> 24) ^ (*(v46 + 8 * (v40 ^ 0xA5)) >> 16) ^ *(v46 + 8 * (*(a10 + (v27 >> 24)) ^ 0xA5) + 4) ^ (*(v46 + 8 * (v43 ^ 0xA5)) >> 8) ^ 0x47101925;
  v51 = *(a10 + BYTE1(v48));
  v52 = *(v46 + 8 * ((((v38 ^ 0x3A) - (v38 ^ 0xA5)) ^ 0xFFFFFFFE) + (v38 ^ 0x3A)) + 4) ^ (*(v46 + 8 * (v36 ^ 0xA5)) >> 24) ^ (*(v46 + 8 * (v37 ^ 0xA5)) >> 8) ^ (*(v46 + 8 * (v41 ^ 0xA5)) >> 16) ^ 0xA5294E6B;
  v53 = *(a10 + (*(v46 + 8 * ((((v38 ^ 0x3A) - (v38 ^ 0xA5)) ^ 0xFFFFFFFE) + (v38 ^ 0x3A)) + 4) ^ BYTE3(*(v46 + 8 * (v36 ^ 0xA5))) ^ BYTE1(*(v46 + 8 * (v37 ^ 0xA5))) ^ BYTE2(*(v46 + 8 * (v41 ^ 0xA5))) ^ 0x6B));
  LOBYTE(v42) = v47 & 0x18;
  v54 = v45 >> (v47 & 0x18);
  v55 = *(a10 + v45);
  v56 = v48 >> 24;
  v57 = (*(v46 + 8 * (*(a10 + (v52 >> 24)) ^ 0xA5)) >> 24) ^ (*(v46 + 8 * (*(a10 + BYTE1(v50)) ^ 0xA5)) >> 16) ^ *(v46 + 8 * (*(a10 + v48) ^ 0xA5) + 4);
  v58 = (*(v46 + 8 * (*(a10 + BYTE2(v45)) ^ 0xA5)) >> 8) ^ (*(v46 + 8 * (*(a10 + (v50 >> 24)) ^ 0xA5)) >> 16) ^ (*(v46 + 8 * (*(a10 + BYTE1(v52)) ^ 0xA5)) >> 24) ^ 0x5AFDFABF ^ *(v46 + 8 * (v49 ^ 0xA5) + 4);
  v59 = (*(v46 + 8 * (*(a10 + v50) ^ 0xA5)) >> 16) ^ (*(v46 + 8 * (*(a10 + BYTE2(v52)) ^ 0xA5)) >> 24) ^ *(v46 + 8 * (*(a10 + v56) ^ 0xA5) + 4) ^ (*(v46 + 8 * (*(a10 + (v54 >> (v42 ^ 0x18u))) ^ 0xA5)) >> 8) ^ 0x2126B5E8;
  v60 = v57 ^ (*(v46 + 8 * (v55 ^ 0xA5)) >> 8) ^ 0x3CBBD205;
  v61 = (*(v46 + 8 * (v51 ^ 0xA5)) >> 8) ^ *(v46 + 8 * (v53 ^ 0xA5) + 4) ^ (*(v46 + 8 * (*(a10 + BYTE1(v45)) ^ 0xA5)) >> 16) ^ (*(v46 + 8 * (*(a10 + BYTE2(v50)) ^ 0xA5)) >> 24) ^ 0x3600DAD6;
  v62 = *(a10 + (v58 >> 24));
  v63 = *(a10 + (v60 >> 24));
  v64 = *(a10 + BYTE1(v59));
  v65 = *(a10 + (v61 >> 24));
  v66 = *(a10 + v61);
  v67 = *(a10 + v59);
  v68 = *(a10 + BYTE2(v58));
  v69 = *(a10 + BYTE2(v61));
  v70 = *(a10 + BYTE2(v60));
  v71 = *(a10 + ((v57 ^ (*(v46 + 8 * (v55 ^ 0xA5)) >> 8) ^ 0xD205) >> 8));
  v72 = *(a10 + BYTE1(v58));
  v73 = *(a10 + (v59 >> 24));
  v74 = *(a10 + v58);
  v75 = *(a10 + BYTE2(v59));
  v76 = *(a10 + v60);
  v77 = *(a10 + BYTE1(v61));
  v78 = (*(v46 + 8 * (v64 ^ 0xA5)) >> 24) ^ (*(v46 + 8 * (v62 ^ 0xA5)) >> 16);
  v79 = *(v46 + 8 * (v63 ^ 0xA5) + 4) ^ (*(v46 + 8 * (v66 ^ 0xA5)) >> 8);
  LODWORD(v63) = *(v46 + 8 * (v68 ^ 0xA5) + 4) ^ (*(v46 + 8 * (v65 ^ 0xA5)) >> 24);
  LODWORD(v64) = v63 ^ 0xE9FA3B6C;
  v80 = v63 ^ 0x6B9F671D;
  v81 = (*(v46 + 8 * (v67 ^ 0xA5)) >> 8) & 4;
  if ((v81 & v64) != 0)
  {
    v82 = -v81;
  }

  else
  {
    v82 = (*(v46 + 8 * (v67 ^ 0xA5)) >> 8) & 4;
  }

  v83 = (*(v46 + 8 * (v69 ^ 0xA5)) >> 16) ^ (*(v46 + 8 * (v71 ^ 0xA5)) >> 8) ^ (*(v46 + 8 * (v72 ^ 0xA5)) >> 24);
  v84 = v46 + 8 * (v73 ^ 0xA5);
  v85 = *(v46 + 8 * (v75 ^ 0xA5));
  v86 = *(v84 + 4);
  v87 = *(v46 + 8 * (v76 ^ 0xA5));
  v88 = v77 ^ 0xA5;
  v89 = v87 >> 24;
  v90 = v78 ^ v79 ^ 0x1DCA47D3u;
  LODWORD(v85) = v89 ^ *(v46 + 8 * v88 + 4) ^ (v85 >> 16);
  v91 = v83 ^ v86 ^ 0xD084AD2u;
  v92 = v85 ^ (*(v46 + 8 * (v74 ^ 0xA5)) >> 8) ^ 0xC24386B;
  v93 = *(v28 + (v83 ^ v86 ^ 0xD2));
  v94 = (*(v46 + 8 * (v70 ^ 0xA5)) >> 16) ^ (*(v46 + 8 * (v67 ^ 0xA5)) >> 8) & 0xFFFFFFFB ^ 0xE319BD04 ^ (v82 + v80);
  v95 = *(v28 + (v91 >> 24));
  v96 = *(v28 + (v92 >> 24));
  v97 = *(v28 + (v78 ^ v79 ^ 0xD3));
  v98 = *(v46 + 8 * (*(v28 + v92) ^ 0xA5) + 4) ^ (*(v46 + 8 * (*(v28 + BYTE1(v90)) ^ 0xA5)) >> 24) ^ (*(v46 + 8 * ((v93 ^ 0x3A) - 2 * ((v93 ^ 0x3A) & 0xFFFFFF9F) + 159)) >> 8);
  v99 = *(v46 + 8 * (*(v28 + v94) ^ 0xA5));
  v100 = (*(v46 + 8 * (*(v28 + (v94 >> 24)) ^ 0xA5)) >> 24) ^ (*(v46 + 8 * (*(v28 + BYTE2(v91)) ^ 0xA5)) >> 16) ^ *(v46 + 8 * (*(v28 + (v90 >> 24)) ^ 0xA5) + 4);
  v101 = *(v46 + 8 * (*(v28 + BYTE2(v92)) ^ 0xA5));
  *(&v102 + 1) = v101 ^ 0x44700;
  *&v102 = v101 ^ 0x9BF7780000;
  *&v102 = __ROR8__((v102 >> 19) ^ 0xC0A00000001CD6E0, 45);
  v103 = (*(v46 + 8 * (*(v28 + BYTE1(v91)) ^ 0xA5)) >> 16) ^ (*(v46 + 8 * (*(v28 + BYTE1(v92)) ^ 0xA5)) >> 8) ^ *(v46 + 8 * (*(v28 + BYTE2(v90)) ^ 0xA5) + 4) ^ (*(v46 + 8 * (*(v28 + BYTE2(v94)) ^ 0xA5)) >> 24) ^ 0xD739905D;
  v104 = *(v28 + BYTE1(v103));
  v105 = v98 ^ (*(v46 + 8 * (*(v28 + BYTE1(v94)) ^ 0xA5)) >> 16) ^ 0x10A5A628;
  v106 = *(v46 + 8 * (v97 ^ 0xA5) + 4) ^ (*(v46 + 8 * (v96 ^ 0xA5)) >> 8) ^ (*(v46 + 8 * (v95 ^ 0xA5)) >> 16) ^ 0xA6B6718E ^ (v99 >> 24);
  v107 = v100 ^ 0x18E0B625 ^ (v102 >> 8);
  v108 = *(v28 + ((*(v46 + 8 * (v97 ^ 0xA5) + 4) ^ (*(v46 + 8 * (v96 ^ 0xA5)) >> 8) ^ WORD1(*(v46 + 8 * (v95 ^ 0xA5))) ^ 0x718E ^ (v99 >> 24)) >> 8));
  v109 = *(v28 + (v105 >> 24));
  v110 = *(v28 + v106);
  v111 = *(v28 + v103);
  v112 = *(v28 + BYTE2(v107));
  v113 = *(v28 + BYTE2(v105));
  v114 = *(v28 + (v103 >> 24));
  v115 = *(v28 + BYTE2(v103));
  v116 = *(v28 + BYTE1(v105));
  LODWORD(v104) = *(v46 + 8 * (v104 ^ 0xA5) + 4) ^ (*(v46 + 8 * (*(v28 + v105) ^ 0xA5)) >> 24);
  v117 = (((v111 ^ 0x3A) >> 4) & 0xFFFFFFF | (((v111 ^ 0x3A) & 0xF) << 28)) ^ 0x4EA784DC;
  v118 = v104 ^ (*(v46 + 8 * (*(v28 + (v107 >> 24)) ^ 0xA5)) >> 8) ^ (*(v46 + 8 * (v108 ^ 0xA5)) >> 16) ^ 0xD4E2F536;
  v119 = *(v46 + 8 * (*(v28 + (v106 >> 24)) ^ 0xA5) + 4) ^ (*(v46 + 8 * (v113 ^ 0xA5)) >> 8) ^ (*(v46 + 8 * (*(v28 + ((v100 ^ 0xB625 ^ (v102 >> 8)) >> 8)) ^ 0xA5)) >> 24) ^ (*(v46 + 8 * (v114 ^ 0xA5)) >> 16) ^ 0x9F6CA6DD;
  v120 = (*(v46 + 8 * (*(v28 + (v100 ^ 0x25u ^ BYTE1(v102))) ^ 0xA5)) >> 8) ^ *(v46 + 8 * (v115 ^ 0xA5) + 4) ^ (*(v46 + 8 * (*(v28 + BYTE2(v106)) ^ 0xA5)) >> 16) ^ 0x9123FC60 ^ (__ROR8__(__ROR8__((v116 - 0x4CA55F640883B8A3) ^ 0xD3BBED91000000 ^ *(v46 + 8 * (v116 ^ 0xA5)), 34) ^ 0x354000000037F4B6, 30) >> 24);
  v121 = *(v28 + BYTE2(v120));
  v122 = (*(v46 + 8 * (v109 ^ 0xA5)) >> 8) ^ *(v46 + 8 * (v110 ^ 0xA5) + 4) ^ (*(v46 + 8 * (v112 ^ 0xA5)) >> 24) ^ 0x368EC62E ^ (*(v46 + 8 * (((16 * v117) & 0xEA784DF0 | (v117 >> 28)) ^ 0xEA784D5B)) >> 16);
  v123 = *(v28 + BYTE2(v119));
  v124 = *(v28 + (BYTE1(*(v46 + 8 * (v109 ^ 0xA5))) ^ *(v46 + 8 * (v110 ^ 0xA5) + 4) ^ BYTE3(*(v46 + 8 * (v112 ^ 0xA5))) ^ 0x2E ^ BYTE2(*(v46 + 8 * (((16 * v117) & 0xEA784DF0 | (v117 >> 28)) ^ 0xEA784D5B)))));
  v125 = *(v28 + (v122 >> 24));
  v214 = *(v28 + BYTE1(v120));
  v126 = *(v28 + BYTE1(v119));
  v127 = *(v28 + (v120 >> 24));
  v128 = *(v28 + BYTE2(v122));
  v129 = *(v28 + v120);
  v130 = *(v28 + v119);
  v131 = v119 >> 24;
  v132 = *(v28 + BYTE1(v122));
  v133 = *(v28 + v131);
  LODWORD(v113) = (*(v46 + 8 * (v121 ^ 0xA5)) >> 16) ^ (*(v46 + 8 * (*(v28 + v118) ^ 0xA5)) >> 8) ^ (*(v46 + 8 * (v123 ^ 0xA5)) >> 24);
  LODWORD(v121) = *(v46 + 8 * (v124 ^ 0xA5) + 4);
  v134 = *(v46 + 8 * (v125 ^ 0xA5)) >> 24;
  v135 = v113 ^ 0x64D8ACE1 ^ v121;
  v136 = (*(v46 + 8 * (v128 ^ 0xA5)) >> 8) ^ *(v46 + 8 * (v130 ^ 0xA5) + 4) ^ (*(v46 + 8 * (*(v28 + BYTE2(v118)) ^ 0xA5)) >> 16) ^ (*(v46 + 8 * (v129 ^ 0xA5)) >> 24) ^ 0x450D803F;
  v137 = (*(v46 + 8 * (v133 ^ 0xA5)) >> 16) ^ (*(v46 + 8 * (v127 ^ 0xA5)) >> 8) ^ *(v46 + 8 * (*(v28 + BYTE1(v118)) ^ 0xA5) + 4) ^ 0xE4142BDA ^ (*(v46 + 8 * (v132 ^ 0xA5)) >> 24);
  v138 = *(v46 + 8 * (*(v28 + (v118 >> 24)) ^ 0xA5) + 4) ^ (*(v46 + 8 * (v214 ^ 0xA5)) >> 8) ^ (*(v46 + 8 * (v126 ^ 0xA5)) >> 16) ^ 0x71E9E439 ^ v134;
  v139 = *(v28 + (BYTE1(*(v46 + 8 * (v128 ^ 0xA5))) ^ (*(v46 + 8 * (v130 ^ 0xA5) + 4) ^ WORD1(*(v46 + 8 * (*(v28 + BYTE2(v118)) ^ 0xA5))) ^ BYTE3(*(v46 + 8 * (v129 ^ 0xA5)))) ^ 0x3Fu));
  LODWORD(v133) = *(v46 + 8 * (*(v28 + (v138 >> 24)) ^ 0xA5) + 4) ^ (*(v46 + 8 * (*(v28 + (v136 >> 24)) ^ 0xA5)) >> 24) ^ (*(v46 + 8 * (*(v28 + (v113 ^ 0xE1u ^ v121)) ^ 0xA5)) >> 8) ^ (*(v46 + 8 * (*(v28 + (v137 >> 24)) ^ 0xA5)) >> 16);
  v140 = *(v46 + 8 * (*(v28 + BYTE2(v136)) ^ 0xA5) + 4) ^ (*(v46 + 8 * (*(v28 + BYTE2(v137)) ^ 0xA5)) >> 24) ^ (*(v46 + 8 * (*(v28 + BYTE2(v138)) ^ 0xA5)) >> 8) ^ (*(v46 + 8 * (*(v28 + (v135 >> 24)) ^ 0xA5)) >> 16) ^ 0x1A59F106;
  v141 = *(v46 + 8 * (*(v28 + BYTE1(v137)) ^ 0xA5) + 4) ^ (*(v46 + 8 * (*(v28 + BYTE2(v135)) ^ 0xA5)) >> 24) ^ (*(v46 + 8 * (*(v28 + BYTE1(v136)) ^ 0xA5)) >> 8) ^ (*(v46 + 8 * (*(v28 + BYTE1(v138)) ^ 0xA5)) >> 16) ^ 0x7853665D;
  v142 = v133 ^ 0xB47E151C;
  v143 = *(v28 + (v140 >> 24));
  v144 = (*(v46 + 8 * (*(v28 + BYTE1(v135)) ^ 0xA5)) >> 16) ^ (*(v46 + 8 * (*(v28 + v138) ^ 0xA5)) >> 8) ^ (*(v46 + 8 * (*(v28 + v137) ^ 0xA5)) >> 24) ^ *(v46 + 8 * (v139 ^ 0xA5) + 4) ^ 0xE76BA75D;
  v145 = *(v28 + (*(v46 + 8 * (*(v28 + BYTE1(v137)) ^ 0xA5) + 4) ^ BYTE3(*(v46 + 8 * (*(v28 + BYTE2(v135)) ^ 0xA5))) ^ (BYTE1(*(v46 + 8 * (*(v28 + BYTE1(v136)) ^ 0xA5))) ^ WORD1(*(v46 + 8 * (*(v28 + BYTE1(v138)) ^ 0xA5)))) ^ 0x5D));
  v146 = *(v28 + BYTE1(v142));
  v147 = *(v28 + BYTE2(v144));
  v148 = *(v28 + (v144 >> 24));
  LODWORD(v113) = *(v28 + BYTE2(v140));
  v149 = *(v28 + BYTE1(v144));
  v150 = *(v28 + BYTE1(v140));
  v151 = *(v28 + v140);
  v152 = *(v28 + v144);
  v153 = *(v46 + 8 * (v145 ^ 0xA5)) >> 24;
  v154 = *(v46 + 8 * (v143 ^ 0xA5)) ^ ((v143 ^ 0x3A) - 0x4CA55F640883B8A3 - ((2 * (v143 ^ 0x3A)) & 0xBA));
  v155 = ((((v154 ^ 0x9820702080E1BE5BLL) - (v154 ^ 0x8E0C69354408D53ELL)) ^ 0xFFFFFFFFFFFFFFFELL) + (v154 ^ 0x9820702080E1BE5BLL)) >> 32;
  v156 = *(v46 + 8 * (*(v28 + BYTE2(v142)) ^ 0xA5)) >> 8;
  v157 = *(v46 + 8 * (*(v28 + (v141 >> 24)) ^ 0xA5)) ^ (*(v28 + (v141 >> 24)) - 0x4CA55F640883B8A3 - ((2 * *(v28 + (v141 >> 24))) & 0xBA));
  LODWORD(v150) = (*(v46 + 8 * (v149 ^ 0xA5)) >> 8) ^ *(v46 + 8 * (*(v28 + v142) ^ 0xA5) + 4) ^ (*(v46 + 8 * (*(v28 + BYTE2(v141)) ^ 0xA5)) >> 16) ^ (*(v46 + 8 * (v150 ^ 0xA5)) >> 24);
  v158 = v156 ^ v153 ^ (*(v46 + 8 * (v148 ^ 0xA5)) >> 16) ^ 0x9446E885 ^ v155;
  v159 = (*(v46 + 8 * (*(v28 + (v142 >> 24)) ^ 0xA5)) >> 8) ^ *(v46 + 8 * (v151 ^ 0xA5) + 4) ^ (*(v46 + 8 * (v152 ^ 0xA5)) >> 16) ^ (*(v46 + 8 * (*(v28 + BYTE1(v141)) ^ 0xA5)) >> 24) ^ 0xEE3E8;
  v160 = v150 ^ 0xCF9FF192;
  v161 = (*(v46 + 8 * ((((v113 ^ 0x3A) - (v113 ^ 0xA5)) ^ 0xFFFFFFFE) + (v113 ^ 0x3A))) >> 24) ^ (*(v46 + 8 * (v147 ^ 0xA5)) >> 8) ^ *(v46 + 8 * (v146 ^ 0xA5) + 4) ^ ((v157 ^ 0x8E0C69354408D504) >> (v157 & 0x10) >> (v157 & 0x10 ^ 0x10)) ^ 0x76AB59FE;
  v162 = *(v28 + (v158 >> 24));
  v163 = (*(v46 + 8 * (*(v28 + (v160 >> 24)) ^ 0xA5)) >> 16) ^ 0xB3E949D296B057 ^ (*(v46 + 8 * (*(v28 + BYTE1(v161)) ^ 0xA5)) >> 24) ^ *(v46 + 8 * (*(v28 + BYTE2(v158)) ^ 0xA5) + 4) ^ (*(v46 + 8 * (*(v28 + v159) ^ 0xA5)) >> 8);
  v164 = (*(v46 + 8 * (*(v28 + BYTE2(v160)) ^ 0xA5)) >> 16) ^ (*(v46 + 8 * (*(v28 + (v159 >> 24)) ^ 0xA5)) >> 8) ^ (*(v46 + 8 * (*(v28 + v161) ^ 0xA5)) >> 24) ^ *(v46 + 8 * (*(v28 + ((v156 ^ v153 ^ WORD1(*(v46 + 8 * (v148 ^ 0xA5))) ^ 0xE885 ^ v155) >> 8)) ^ 0xA5) + 4) ^ 0x2CFCA703;
  v165 = *(v28 + ((WORD1(*(v46 + 8 * (*(v28 + BYTE2(v160)) ^ 0xA5))) ^ (*(v46 + 8 * (*(v28 + (v159 >> 24)) ^ 0xA5)) >> 8) ^ (*(v46 + 8 * (*(v28 + v161) ^ 0xA5)) >> 24) ^ *(v46 + 8 * (*(v28 + ((v156 ^ v153 ^ WORD1(*(v46 + 8 * (v148 ^ 0xA5))) ^ 0xE885 ^ v155) >> 8)) ^ 0xA5) + 4) ^ 0xA703) >> 8));
  v166 = (*(v46 + 8 * (*(v28 + BYTE2(v159)) ^ 0xA5)) >> 16) ^ (*(v46 + 8 * (*(v28 + BYTE1(v160)) ^ 0xA5)) >> 24) ^ *(v46 + 8 * (*(v28 + (v161 >> 24)) ^ 0xA5) + 4) ^ (*(v46 + 8 * (*(v28 + ((v156 ^ v153 ^ WORD1(*(v46 + 8 * (v148 ^ 0xA5)))) ^ 0x85u ^ v155)) ^ 0xA5)) >> 8) ^ 0xBEAB316E;
  v167 = v163 ^ 0xC72AD4E5;
  v168 = (*(v46 + 8 * (v162 ^ 0xA5)) >> 8) ^ *(v46 + 8 * (*(v28 + BYTE2(v161)) ^ 0xA5) + 4) ^ (*(v46 + 8 * (*(v28 + BYTE1(v159)) ^ 0xA5)) >> 16) ^ (*(v46 + 8 * (*(v28 + v160) ^ 0xA5)) >> 24) ^ 0x562AE7A8;
  v169 = *(v28 + BYTE1(v167));
  v170 = *(v28 + (v166 >> 24));
  LODWORD(v165) = (*(v46 + 8 * (v165 ^ 0xA5)) >> 24) ^ (*(v46 + 8 * (*(v28 + BYTE2(v166)) ^ 0xA5)) >> 16) ^ (*(v46 + 8 * (*(v28 + v168) ^ 0xA5)) >> 8) ^ *(v46 + 8 * (*(v28 + (v167 >> 24)) ^ 0xA5) + 4);
  LODWORD(v167) = (*(v46 + 8 * (*(v28 + BYTE1(v166)) ^ 0xA5)) >> 24) ^ (*(v46 + 8 * (*(v28 + (v168 >> 24)) ^ 0xA5)) >> 16) ^ *(v46 + 8 * (*(v28 + v164) ^ 0xA5) + 4) ^ (*(v46 + 8 * (*(v28 + BYTE2(v167)) ^ 0xA5)) >> 8);
  LODWORD(v160) = (*(v46 + 8 * (*(v28 + BYTE2(v168)) ^ 0xA5)) >> 8) ^ (*(v46 + 8 * (*(v28 + v166) ^ 0xA5)) >> 16) ^ (*(v46 + 8 * (*(v28 + (v164 >> 24)) ^ 0xA5)) >> 24) ^ *(v46 + 8 * (v169 ^ 0xA5) + 4);
  LODWORD(v166) = (*(v46 + 8 * (*(v28 + BYTE2(v164)) ^ 0xA5)) >> 24) ^ (*(v46 + 8 * (*(v28 + BYTE1(v168)) ^ 0xA5)) >> 8);
  v171 = v165 ^ 0xF635E5F5;
  v172 = *(v46 + 8 * (*(v28 + (v163 ^ 0xE5u)) ^ 0xA5) + 4) ^ v166 ^ (*(v46 + 8 * (v170 ^ 0xA5)) >> 16) ^ 0x76FCC4AA;
  v173 = v167 ^ 0xBD6352B1;
  v174 = v160 ^ 0x308E18C8;
  v175 = (*(v46 + 8 * (*(v28 + BYTE1(v173)) ^ 0xA5)) >> 24) ^ 0xB3E949D296B057 ^ *(v46 + 8 * (*(v28 + (v165 ^ 0xF5u)) ^ 0xA5) + 4) ^ (*(v46 + 8 * (*(v28 + BYTE2(v172)) ^ 0xA5)) >> 8) ^ (*(v46 + 8 * (*(v28 + (v160 ^ 0xC8u)) ^ 0xA5)) >> 16);
  LODWORD(v164) = (*(v46 + 8 * (*(v28 + v173) ^ 0xA5)) >> 8) ^ *(v46 + 8 * (*(v28 + (v174 >> 24)) ^ 0xA5) + 4) ^ (*(v46 + 8 * (*(v28 + (v171 >> 24)) ^ 0xA5)) >> 16) ^ (*(v46 + 8 * (*(v28 + BYTE1(v172)) ^ 0xA5)) >> 24);
  v176 = (*(v46 + 8 * (*(v28 + (v172 >> 24)) ^ 0xA5)) >> 16) ^ (*(v46 + 8 * (*(v28 + BYTE1(v171)) ^ 0xA5)) >> 8) ^ (*(v46 + 8 * (*(v28 + BYTE1(v174)) ^ 0xA5)) >> 24) ^ *(v46 + 8 * (*(v28 + BYTE2(v173)) ^ 0xA5) + 4) ^ 0xA4BF7638;
  LODWORD(v172) = (*(v46 + 8 * (*(v28 + BYTE2(v174)) ^ 0xA5)) >> 16) ^ (*(v46 + 8 * (*(v28 + v172) ^ 0xA5)) >> 8) ^ (*(v46 + 8 * (*(v28 + (v173 >> 24)) ^ 0xA5)) >> 24) ^ *(v46 + 8 * (*(v28 + BYTE2(v171)) ^ 0xA5) + 4);
  v177 = v164 ^ 0xE317550B;
  v178 = v175 ^ 0xF9D6B1E8;
  v179 = v172 ^ 0xF1D9CD3D;
  v180 = *(v28 + BYTE1(v176));
  v181 = *(v28 + BYTE1(v178));
  LODWORD(v173) = (*(v46 + 8 * (*(v28 + BYTE1(v179)) ^ 0xA5)) >> 16) ^ (*(v46 + 8 * (*(v28 + BYTE2(v176)) ^ 0xA5)) >> 8) ^ (*(v46 + 8 * (*(v28 + BYTE1(v177)) ^ 0xA5)) >> 24);
  LODWORD(v164) = (*(v46 + 8 * (*(v28 + (v172 ^ 0x3Du)) ^ 0xA5)) >> 16) ^ (*(v46 + 8 * (*(v28 + (v164 ^ 0xBu)) ^ 0xA5)) >> 24) ^ *(v46 + 8 * (*(v28 + (v175 ^ 0xE8u)) ^ 0xA5) + 4);
  v182 = *(v46 + 8 * (*(v28 + (v178 >> 24)) ^ 0xA5) + 4) ^ (*(v46 + 8 * (*(v28 + (v177 >> 24)) ^ 0xA5)) >> 24) ^ (*(v46 + 8 * (*(v28 + v176) ^ 0xA5)) >> 8) ^ (*(v46 + 8 * (*(v28 + (v179 >> 24)) ^ 0xA5)) >> 16);
  LODWORD(v178) = *(v46 + 8 * (*(v28 + BYTE2(v177)) ^ 0xA5) + 4) ^ (*(v46 + 8 * (*(v28 + BYTE2(v179)) ^ 0xA5)) >> 24);
  v183 = *(v46 + 8 * (*(v28 + (BYTE2(v175) ^ 0xD6)) ^ 0xA5)) >> 8;
  v184 = v173 ^ 0xCCA8DC1D ^ *(v46 + 8 * (v181 ^ 0xA5) + 4);
  v185 = v178 ^ (*(v46 + 8 * (*(v28 + (v176 >> 24)) ^ 0xA5)) >> 16) ^ v183 ^ 0x40F3C285;
  v186 = (((v182 ^ 0xC82A0FBuLL) >> 9) & 0xFFFFFFFF007FFFFFLL | (((v182 ^ 0xC82A0FB) & 0x1FF) << 23)) ^ 0x7F62B565;
  v187 = v164 ^ 0xE3B8A428 ^ (((v180 ^ 0x2080E1BE61) + (*(v46 + 8 * (v180 ^ 0xA5)) ^ 0x9BF77C475DLL) + ((2 * ((*(v46 + 8 * (v180 ^ 0xA5)) ^ 0x1020600000E09EBELL) & (v180 ^ 0x1820702080E1BE61) ^ v180 & 0xFFFFFFFFFFFFFFE3)) ^ 0xFEFEFECF3DLL) + 1) >> 8);
  v188 = ((v186 >> 23) | (v186 << 9)) ^ 0x85BD58A1;
  v189 = *(v28 + BYTE1(v184));
  v190 = *(v28 + (v187 >> 24));
  LODWORD(v178) = (*(v46 + 8 * (*(v28 + BYTE2(v187)) ^ 0xA5)) >> 8) ^ (*(v46 + 8 * (*(v28 + v184) ^ 0xA5)) >> 16) ^ (*(v46 + 8 * (*(v28 + BYTE1(v185)) ^ 0xA5)) >> 24);
  LODWORD(v164) = (*(v46 + 8 * (*(v28 + (v188 >> 24)) ^ 0xA5)) >> 24) ^ (*(v46 + 8 * (*(v28 + v185) ^ 0xA5)) >> 16) ^ *(v46 + 8 * (*(v28 + BYTE1(v187)) ^ 0xA5) + 4) ^ (*(v46 + 8 * (*(v28 + (v184 >> 24)) ^ 0xA5)) >> 8);
  v191 = (*(v46 + 8 * (*(v28 + (v185 >> 24)) ^ 0xA5)) >> 24) ^ (*(v46 + 8 * (*(v28 + ((v184 >> (v214 & 0x10 ^ 0x10)) >> (v214 & 0x10))) ^ 0xA5)) >> 16) ^ (*(v46 + 8 * (*(v28 + v187) ^ 0xA5)) >> 8) ^ 0x99E5E262 ^ *(v46 + 8 * (*(v28 + BYTE2(v188)) ^ 0xA5) + 4);
  v192 = v178 ^ 0xCC1FA583 ^ *(v46 + 8 * (*(v28 + ((v186 >> 23) ^ 0xA1u)) ^ 0xA5) + 4);
  v193 = (v164 ^ 0xC82A0FB ^ -(v164 ^ 0xC82A0FB) ^ (511653367 - (v164 ^ 0x12FD950C))) + 511653367;
  v194 = *(a10 + ((v164 ^ 0xFB ^ -(v164 ^ 0xFB) ^ (-9 - (v164 ^ 0xC))) - 9));
  v195 = (*(v46 + 8 * (v189 ^ 0xA5)) >> 8) ^ (*(v46 + 8 * (*(v28 + BYTE2(v185)) ^ 0xA5)) >> 16) ^ *(v46 + 8 * (v190 ^ 0xA5) + 4) ^ 0x4B5D40BE ^ (*(v46 + 8 * (*(v28 + BYTE1(v188)) ^ 0xA5)) >> 24);
  v196 = (v194 - 0x4CA55F640883B8A3 - ((2 * v194) & 0xBA)) ^ 0x8E0C69354408D504 ^ *(v46 + 8 * (v194 ^ 0xA5));
  v197 = *(a10 + (v192 >> 24));
  v198 = *(a10 + (v191 >> 24));
  LODWORD(v185) = *(v46 + 8 * ((*(a10 + v191) - ((2 * *(a10 + v191)) & 0x74u) + 58) ^ 0x9FLL) + 4) ^ (*(v46 + 8 * (*(a10 + (v195 >> 24)) ^ 0xA5)) >> 24) ^ (*(v46 + 8 * (*(a10 + (v193 >> 24)) ^ 0xA5)) >> 8);
  v199 = *(v46 + 8 * (*(a10 + v192) ^ 0xA5)) >> 16;
  LODWORD(v190) = *(v46 + 8 * (*(a10 + BYTE2(v193)) ^ 0xA5) + 4);
  LODWORD(v194) = *(v46 + 8 * (*(a10 + BYTE2(v191)) ^ 0xA5) + 4);
  v200 = *(v46 + 8 * (*(a10 + BYTE1(v192)) ^ 0xA5) + 4) ^ (*(v46 + 8 * (*(a10 + BYTE1(v191)) ^ 0xA5)) >> 16) ^ (*(v46 + 8 * ((((*(a10 + v195) ^ 0x3A) - (*(a10 + v195) ^ 0xA5)) ^ 0xFFFFFFFE) + (*(a10 + v195) ^ 0x3A))) >> 8) ^ 0xC20B85A6 ^ (v196 >> (v163 & 0x18) >> (v163 & 0x18 ^ 0x18));
  v201 = (*(v46 + 8 * (*(a10 + BYTE2(v192)) ^ 0xA5)) >> 16) ^ (*(v46 + 8 * (*(a10 + BYTE1(v195)) ^ 0xA5)) >> 24) ^ v194 ^ 0xA2E1C698 ^ (*(v46 + 8 * (*(a10 + BYTE1(v193)) ^ 0xA5)) >> 8);
  v202 = v185 ^ v199 ^ 0x4802CF22;
  v203 = (*(v46 + 8 * (*(a10 + BYTE2(v195)) ^ 0xA5)) >> 16) ^ (*(v46 + 8 * (v197 ^ 0xA5)) >> 8) ^ (*(v46 + 8 * (v198 ^ 0xA5)) >> 24) ^ 0xD870DB8D ^ v190;
  v204 = *(a10 + v200);
  LODWORD(v195) = (*(v46 + 8 * (*(a10 + BYTE1(v201)) ^ 0xA5)) >> 24) ^ *(v46 + 8 * (*(a10 + v203) ^ 0xA5) + 4) ^ (*(v46 + 8 * (*(a10 + BYTE1(v200)) ^ 0xA5)) >> 16);
  v205 = *(a10 + BYTE2(v203));
  LOWORD(v196) = WORD1(*(v46 + 8 * (v204 ^ 0xA5))) ^ (*(v46 + 8 * (*(a10 + (v185 ^ v199 ^ 0x22)) ^ 0xA5)) >> 8);
  LODWORD(v199) = (*(v46 + 8 * (*(a10 + v201) ^ 0xA5)) >> 24) ^ *(v46 + 8 * (*(a10 + (v203 >> 24)) ^ 0xA5) + 4);
  v206 = *(v46 + 8 * (v205 ^ 0xA5)) >> 24;
  v207 = *(v46 + 8 * (*(a10 + (v201 >> 24)) ^ 0xA5u)) >> 16;
  LODWORD(v185) = *(v46 + 8 * (*(a10 + (v202 >> 24)) ^ 0xA5) + 4) ^ v206 ^ (*(v46 + 8 * (*(a10 + (v200 >> 24)) ^ 0xA5)) >> 8) ^ v207;
  LODWORD(v201) = (*(v46 + 8 * (*(a10 + BYTE1(v203)) ^ 0xA5)) >> 16) ^ (*(v46 + 8 * (*(a10 + BYTE2(v201)) ^ 0xA5)) >> 8);
  v208 = *(a10 + BYTE1(v202));
  LODWORD(v202) = v201 ^ (*(v46 + 8 * (*(a10 + BYTE2(v202)) ^ 0xA5)) >> 24);
  v209 = v195 ^ (*(v46 + 8 * (v208 ^ 0xA5)) >> 8) ^ 0x50DF895E;
  v210 = v202 ^ *(v46 + 8 * (*(a10 + BYTE2(v200)) ^ 0xA5) + 4) ^ 0x47B1A7AB;
  v211 = v185 ^ 0x55DB8BBE;
  LOWORD(v185) = v196 ^ v199 ^ 0xC96;
  v212 = *(a10 + v211) << 24;
  return (*(v32 + 8 * (a1 ^ (13 * ((a26 & 1) == 0)))))(a1, v212, v212 | (*(a10 + BYTE1(v185)) << 16) | (*(a10 + (v209 >> 24)) << 8) | *(a10 + (v210 >> 24)), *(a10 + v185) | (*(a10 + BYTE2(v210)) << 16) | (*(a10 + (v211 >> 24)) << 8) | (*(a10 + BYTE2(v209)) << 24), v207, v206, v204, v205, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_100466CB8@<X0>(uint64_t a1@<X5>, uint64_t a2@<X6>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v13 = v7;
  v14 = v9 + v7;
  v15 = __ROR8__(v14 & 0xFFFFFFFFFFFFFFF8, 8);
  v16 = (v15 + a3) ^ v11;
  v17 = __ROR8__((v15 + a3) ^ a1, 8);
  v18 = ((((v17 + v16) << (v5 - 85)) | 0x91934128E0F65D6CLL) - (v17 + v16) + 0x37365F6B8F84D14ALL) ^ 0xD7B232005D940F59;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (((2 * (v20 + v19)) | 0x527ADAFB37727B12) - (v20 + v19) - 0x293D6D7D9BB93D89) ^ 0x353FB226BE3B5E64;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (v8 - ((v23 + v22) | v8) + ((v23 + v22) | 0x86677573FB3958DCLL)) ^ 0xD79B320DC8E718EFLL;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ a2;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (((v28 + v27) ^ 0x4EB9D1E1B65AA9FBLL) - ((2 * ((v28 + v27) ^ 0x4EB9D1E1B65AA9FBLL)) & 0xBED2379790D104E6) - 0x2096E43437977D8DLL) ^ 0x3049338421B541CDLL;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ v12;
  v32 = v7 + 1;
  *(a4 + v13) = (((__ROR8__(v31, 8) + (v31 ^ __ROR8__(v30, 61))) ^ v10) >> (8 * (v14 & 7u))) ^ *v14;
  if (v6 < v4 != v32 > 0x84E964F2)
  {
    v33 = v6 < v4;
  }

  else
  {
    v33 = v32 + v4 < v6;
  }

  return (*(STACK[0x57D8] + 8 * ((31371 * v33) ^ (v5 - 12222))))();
}

uint64_t sub_100467004@<X0>(unint64_t a1@<X8>)
{
  STACK[0xCF30] = STACK[0xCF30] - 13976 + ((v1 + 1402189213) & 0xAC6C36B9);
  STACK[0xD698] = v2;
  STACK[0xD690] = v4;
  STACK[0xD680] = a1;
  STACK[0xD688] = v2 + 0x5DA6670A2472BB8ALL;
  v5 = *(STACK[0x57D8] + 8 * (v1 ^ (11957 * (v3 == v2))));
  STACK[0x57C0] = v3;
  return v5();
}

uint64_t sub_1004670AC()
{
  v6 = STACK[0x51B8];
  v7 = STACK[0x51B8] - 22614;
  v8 = 0xF726234C92AC6E47 * *(v0 + 456) + 0x50F8881FE12AAC30;
  v9 = 1534937323 * (((v2 | 0x397EE1BA4EC04D21) - (v2 & 0x397EE1BA4EC04D21)) ^ 0xF4066978882EB666);
  *(v3 + 624) = (v7 ^ 0xAD3040E7) + v9;
  *(v3 + 604) = v9 + v4 + v6;
  *(v3 + 608) = v9;
  *(v3 + 612) = v9 ^ v7 ^ 0xAD3040F9;
  *(v3 + 600) = (v7 ^ 0xAD304FAD) - v9;
  *(v3 + 616) = v8 + v9;
  *(v3 + 592) = v9 ^ 0x7A10FA3980126D2FLL;
  v10 = STACK[0x57D8];
  v11 = (*(STACK[0x57D8] + 8 * v1))(v5 - 240);
  return (*(v10 + 8 * *(v3 + 628)))(v11);
}

uint64_t sub_1004671A4()
{
  v3 = v2 ^ 0x6662;
  v5 = -5 - v1 < (v0 - 1) || v0 - 1 > ((v3 + 1131921841) & 0xBC882E3B) + 4294955486u;
  return (*(STACK[0x57D8] + 8 * ((v5 * (v3 - 15750)) ^ v3)))();
}

uint64_t sub_100467214()
{
  v4 = v0 < 0x4B5EDF77;
  if (v4 == (v2 - 122944768) < 0x74B7DFD7)
  {
    v4 = v2 - 122944768 < v1;
  }

  return (*(STACK[0x57D8] + 8 * ((20369 * v4) ^ v3)))();
}

uint64_t sub_1004677FC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v17 = (a7 - 56) & 0xDB;
  v18 = (v15 + v14) >> 16;
  v19 = (v15 + v14 + v18) >> 8;
  v20 = (v15 + v13 + v18 + v19) >> 11;
  v21 = STACK[0x57C0];
  v22 = ((STACK[0x57C0] + v15 + v19 + v18 + v20 - a8) >> (v17 - 5)) + v15;
  v23 = v22 + v20 + v19 + v18;
  v24 = (STACK[0x57C0] + v23 - a8) ^ a1;
  v25 = v23 + a5;
  v26 = v25 >> 13;
  v27 = (v25 + (v25 >> 13)) >> 5;
  v28 = v22 + (v25 >> 13) + v20 + v27 + v19 + v18;
  v29 = (STACK[0x57C0] + v28 - a6) ^ v10;
  v30 = v28 + a4;
  v31 = (v28 + a4) >> 15;
  v32 = v28 + v31;
  v33 = (v30 + v31) >> 2;
  v34 = v32 + a3;
  v35 = (v34 - v33) >> 9;
  v36 = v34 + v35;
  v37 = v22 + v35 + v31;
  v38 = (v36 - v33) >> 3;
  v39 = v37 + v27 + v38 + v26 + v20 + v19 + v18;
  v40 = v24 ^ (STACK[0x57C0] + v39 - v33 - a2);
  v41 = v36 + v38 - v33 - 1181963997;
  v42 = v41 >> 12;
  v43 = (v41 >> 12) + v41;
  v44 = v39 + v42 + (v43 >> 7) - v33;
  v45 = v29 ^ (STACK[0x57C0] + v44 - v12);
  v46 = STACK[0x57C0] + v44 - (((v43 >> 7) + v43 - 505175844 - (((v43 >> 7) + v43 - 505175844) >> 11)) >> 7) - (((v43 >> 7) + v43 - 505175844) >> 11) - v11;
  v47 = (v46 ^ 0xB27566C9) + ((v46 ^ 0xB27566C9) >> 13) - (((v46 ^ 0xB27566C9) + ((v46 ^ 0xB27566C9) >> 13)) >> 6);
  v48 = v40 ^ v47;
  v49 = (v47 ^ 0xD21A5998) - ((v47 ^ 0xD21A5998) >> 11) + (((v47 ^ 0xD21A5998) - ((v47 ^ 0xD21A5998) >> 11)) >> 3);
  v50 = v45 ^ v49;
  v51 = (v49 ^ 0xD45CB986) - ((v49 ^ 0xD45CB986) >> 10) + (((v49 ^ 0xD45CB986) - ((v49 ^ 0xD45CB986) >> 10)) >> 7);
  v52 = (v45 ^ v49) ^ 5 ^ ((v45 ^ v49 ^ 0x4B05) >> 8) ^ ((v45 ^ v49 ^ 0x80274B05) >> 16);
  v53 = STACK[0x5660];
  v54 = STACK[0xD6C0];
  v55 = *(STACK[0xD6C0] + 8 * (0xD5F4147F % STACK[0x5660]));
  v56 = *(STACK[0xD6C0] + 8 * (((((v55 ^ 0xA815A3F8F7B181DDLL) + 0x183CB1A3BA47599ELL) ^ ((v55 ^ 0x4736AF9D5872746ALL) - 0x8E04239EA7B53D5) ^ ((v55 ^ 0xB478573EF498AEECLL) + 0x4514565B96E76ADLL)) + 0x148DB70065EC48C5) % STACK[0x5660]));
  LODWORD(STACK[0x56D0]) = v50;
  v57 = v52 ^ HIBYTE(v50);
  v58 = *(v54 + 8 * (((((v56 ^ 0x3B461D0B4C9FF92ALL) + 0x92189AB3DF2317DLL) ^ ((v56 ^ 0x7E12902D93CE535DLL) + 0x4C75048DE2A39B0CLL) ^ ((v56 ^ 0x1E0FD67D840AF12CuLL) + 0x2C6842DDF567397BLL)) - 0x693CCFFABAB93F27) % v53));
  v59 = *(v54 + 8 * (((((v58 ^ 0xF88AF587DC989417) + 0x58AB788FA5C0EA62) ^ ((v58 ^ 0x1C24CDC460B4072ELL) - 0x43FABF33E61386A7) ^ ((v58 ^ 0xBFF56318E777C862) + 0x1FD4EE109E2FB615)) + 0x48529AD3A84BDADLL) % v53));
  v60 = ((((v59 ^ 0x95F74DB39A3B85A4) - 0x3A4C3969E3C5D062) ^ ((v59 ^ 0x40B210135056A80CLL) + 0x10F69B36D6570236) ^ ((v59 ^ 0x8E1E06FB913676F3) - 0x21A57221E8C82335)) - 0xB1FD07E378AEFF2) % v53;
  v61 = (STACK[0x5780] & 2) == 0;
  v62 = STACK[0x5730];
  if ((STACK[0x5780] & 2) != 0)
  {
    v62 = STACK[0x5720];
  }

  LODWORD(STACK[0x5790]) = v62;
  v63 = STACK[0x5640];
  if (v61)
  {
    v63 = STACK[0x5450];
  }

  LODWORD(STACK[0x5120]) = v63;
  v64 = STACK[0x53E0];
  if ((STACK[0x57B0] & 2) != 0)
  {
    v64 = STACK[0x54C0];
  }

  LODWORD(STACK[0x5118]) = v64;
  v65 = (v21 + v32 - v33 - v8) ^ v9 ^ v46 ^ v51;
  LODWORD(STACK[0x5630]) = v48 & 0xFFFFFF80 ^ 0xAE303200;
  LODWORD(STACK[0x5720]) = v65;
  STACK[0x5178] = v65 & 7;
  v66 = -v65 & 7;
  if ((v65 & 7) != 0)
  {
    v67 = 255;
  }

  else
  {
    v67 = 0;
  }

  LODWORD(STACK[0x51C8]) = v66;
  v68 = v67 << v66;
  LODWORD(STACK[0x57C0]) = 16843009 * v68;
  if ((v65 & 7) != 0)
  {
    v69 = ~v68;
  }

  else
  {
    v69 = 0;
  }

  LODWORD(STACK[0x5520]) = v48 & v69;
  v70 = v57 ^ 0xCCu;
  LODWORD(STACK[0x5730]) = v48;
  LODWORD(STACK[0x53E0]) = v48 ^ 0x149943F2;
  v71 = LODWORD(STACK[0x5700]) ^ 0xFE4EE0BC;
  LODWORD(STACK[0x5450]) = (16843009 * (v48 ^ 0x53 ^ ((v48 ^ 0x5253) >> 8) ^ ((v48 ^ 0xE9D45253) >> 16) ^ HIBYTE(v48) ^ 0x46)) ^ 0xAFAFAFAF;
  return (*(STACK[0x57D8] + 8 * a7))(1856058202, v70, 0xCFBCF06405BCF25CLL, v71, ((((v60 - ((2 * v60) & 0x25FBC126) - 1291984749) ^ 0x1D94ACBA) - 1152856481) ^ (((v60 - ((2 * v60) & 0x25FBC126) - 1291984749) ^ 0xA94FCADB) + 261335104) ^ (((v60 - ((2 * v60) & 0x25FBC126) - 1291984749) ^ 0x62686F2) - 1594170345)) + 1504334308);
}