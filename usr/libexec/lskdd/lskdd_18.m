uint64_t sub_100495110()
{
  LODWORD(STACK[0x93B0]) = 0;
  v1 = STACK[0x63F8];
  *v1 = 1;
  v1[3] = 4;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100495148()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x51B8] - 20938;
  v2 = STACK[0x7ED8];
  v3 = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0xBE68] = v3;
  STACK[0x7ED8] = v2 + v1 - 1548;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x240D)))(v3, 0, 120);
  STACK[0x7A18] = *(v4 + 8 * SLODWORD(STACK[0x1218]));
  return (*(v4 + 8 * SLODWORD(STACK[0x1214])))(v5);
}

uint64_t sub_1004951C0@<X0>(int a1@<W8>)
{
  STACK[0x9908] = *(v1 + 4352);
  *(v1 + 4360) = 2 * a1;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v2 + 9589)))((32 * a1), 50, 3385360067);
  *(v3 + 24) = v5;
  return (*(v4 + 8 * (((v5 != 0) * (1250 * (v2 ^ 0x5794) - 21195)) ^ v2)))();
}

uint64_t sub_100495248()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9207)))(v0);
  return (*(v1 + 8 * SLODWORD(STACK[0x1B30])))(v2);
}

uint64_t sub_1004952BC@<X0>(uint64_t a1@<X8>)
{
  v7 = *(STACK[0x57D8] + 8 * v6);
  v8 = (a1 + v2 - 0x7D01E36E69723302);
  *v8 = HIBYTE(v1) ^ v3;
  v8[1] = BYTE6(v1);
  v8[2] = BYTE5(v1) ^ 0x7C;
  v8[3] = BYTE4(v1) ^ v4;
  v8[4] = BYTE3(v1) ^ 0x16;
  v8[5] = v5 ^ BYTE2(v1);
  v8[6] = BYTE1(v1) ^ 0x93;
  v8[7] = v1 ^ 0x4C;
  return v7();
}

uint64_t sub_10049533C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = v11 - 1;
  v21 = *v19 & 0xFFFFFFFFFFFFFFF8;
  v22 = *(*v18 + ((((v9 + v20) & 0xFFFFFFF8 ^ 0x976396) - 113564159 + ((((v10 + 144764564) & 0xF75EFA56) + 19820234) & (2 * ((v9 + v20) & 0xFFFFFFF8)))) & v21));
  v23 = (__ROR8__((v9 + v20) & 0xFFFFFFFFFFFFFFF8, 8) + v22) ^ a7;
  v24 = __ROR8__(v23, 8);
  v25 = v23 ^ __ROR8__(v22, 61);
  v26 = (v24 + v25) ^ v12;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (((2 * (v28 + v27)) & 0x2D2A5171F399133ALL) - (v28 + v27) - 0x169528B8F9CC899ELL) ^ 0xCB1F03803E064FF9;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ a8;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ v16;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ v13;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8) + v36;
  v38 = *(*v18 + ((((((v8 + v20) & 0xFFFFFFF8) + 876249122) ^ 0xC9033F72) - ((-1752498256 - 2 * ((v8 + v20) & 0xFFFFFFF8)) & 0x92067EE0) + 251983978) & v21));
  v39 = (v38 + __ROR8__((v8 + v20) & 0xFFFFFFFFFFFFFFF8, 8)) ^ v14;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (((2 * v37) | 0x19F53F41D0B3B0F4) - v37 - 0xCFA9FA0E859D87ALL) ^ 0x5377739E4BC1D261;
  v43 = (((2 * (v41 + v40)) | 0xC538A4A474DA83C2) - (v41 + v40) + 0x1D63ADADC592BE1FLL) ^ 0xDA54E338DD682996;
  v44 = v43 ^ __ROR8__(v40, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0xE580B17D8CC5E551;
  v46 = __ROR8__(v42, 8) + (v42 ^ __ROR8__(v36, 61));
  v47 = v45 ^ __ROR8__(v44, 61);
  v48 = __ROR8__(v45, 8);
  v49 = (((2 * ((v48 + v47) ^ 0x61C928F458E34832)) & 0x7DF282897BDE4492) - ((v48 + v47) ^ 0x61C928F458E34832) + 0x4106BEBB4210DDB6) ^ 0xC16E6B14CBA66CFELL;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = __ROR8__(v49, 8);
  v52 = (0x4B042933116BC453 - ((v51 + v50) | 0x4B042933116BC453) + ((v51 + v50) | 0xB4FBD6CCEE943BACLL)) ^ 0x6E9B9DC0ED368435;
  v53 = v52 ^ __ROR8__(v50, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ a5;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ v17;
  *(v8 + v20) = (((__ROR8__(v56, 8) + (v56 ^ __ROR8__(v55, 61))) ^ a6) >> (8 * ((v8 + v20) & 7))) ^ ((v46 ^ v15) >> (8 * ((v9 + v20) & 7))) ^ *(v9 + v20);
  return (*(STACK[0x57D8] + 8 * (((8 * (v20 == 0)) | ((v20 == 0) << 7)) ^ v10)))();
}

uint64_t sub_100495688()
{
  v1 = STACK[0x51B8];
  LOWORD(STACK[0xD6DA]) = v0;
  return (*(STACK[0x57D8] + 8 * (v1 - 14266)))();
}

uint64_t sub_100495888()
{
  v3 = STACK[0x51B8];
  v4 = STACK[0x51B8] - 1079089617;
  v5 = STACK[0x4D28];
  *(v0 + 616) = -551690071 * STACK[0x4D28];
  v6 = v3 - 808034747 - 551690071 * v5;
  *(v0 + 604) = v6;
  *(v0 + 596) = (v3 - 808034236) ^ (551690071 * v5);
  *(v0 + 592) = v4 ^ (551690071 * v5);
  *(v0 + 600) = v6 + 23;
  *(v0 + 624) = (v1 & 7) + 551690071 * v5;
  *(v0 + 608) = 551690071 * v5;
  v7 = STACK[0x57D8];
  v8 = (*(STACK[0x57D8] + 8 * (v3 ^ 0x2411)))(v2 - 240);
  return (*(v7 + 8 * *(v0 + 612)))(v8);
}

uint64_t sub_10049591C()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x3731)))(((v1 + 3319) | 0x50) ^ (4 * v0) ^ (((v1 + 3319) ^ 0x50u) + 1215431088));
  STACK[0xA2E0] = v3;
  return (*(v2 + 8 * ((8053 * (v3 == 0)) ^ v1)))();
}

uint64_t sub_10049599C()
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0x84A0];
  LODWORD(STACK[0x9094]) = -32197380;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100495A8C()
{
  v1 = STACK[0x51B8];
  LOBYTE(STACK[0xDBD7]) = v0;
  return (*(STACK[0x57D8] + 8 * ((v1 - 13556) ^ (28784 * v0))))();
}

uint64_t sub_100495B44()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))(v0);
  return (*(v1 + 8 * SLODWORD(STACK[0x1B40])))(v2);
}

uint64_t sub_100495BA4()
{
  if (STACK[0xBF70])
  {
    v1 = LODWORD(STACK[0x7E54]) == 0;
  }

  else
  {
    v1 = 1;
  }

  v2 = !v1;
  return (*(STACK[0x57D8] + 8 * ((v2 * ((((v0 - 1446241875) & 0x5633BFB7) + 10016) ^ v0 ^ 8)) ^ v0)))();
}

uint64_t sub_100495C08()
{
  LODWORD(STACK[0x718C]) = 1978581539;
  STACK[0x95E0] = 4;
  v2 = STACK[0x51B8];
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9152)))(&STACK[0x1D1CD], &STACK[0xC4BC], &STACK[0x95E0], 0, 0);
  v5 = STACK[0x28C4];
  v6 = LODWORD(STACK[0x28C4]) ^ 0x45 ^ v0;
  v7 = STACK[0x28C8];
  LODWORD(STACK[0x1D4C0]) = (v2 - 1079089617) ^ (551690071 * STACK[0x28C8]);
  LODWORD(STACK[0x1D4C8]) = v6 - 551690071 * v7;
  LODWORD(STACK[0x1D4C4]) = (551690071 * v7) ^ LODWORD(STACK[0x28C0]);
  STACK[0x1D4D8] = -551690071 * v7;
  LODWORD(STACK[0x1D4D0]) = 551690071 * v7;
  STACK[0x1D4E0] = 551690071 * v7 + v4;
  LODWORD(STACK[0x1D4CC]) = v5 - 551690071 * v7;
  v8 = (*(v3 + 8 * (v2 + 9201)))(v1 - 240);
  return (*(v3 + 8 * SLODWORD(STACK[0x1D4D4])))(v8);
}

uint64_t sub_100495D5C()
{
  v0 = (STACK[0x51B8] - 30197927) & 0x7FCEFEF5;
  v1 = STACK[0x51B8] - 22182;
  v2 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v1 - 2114095437 + v0 + 2650)))();
}

uint64_t sub_100496054(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5)
{
  v11 = *(*a4 + ((*a5 & ((v8 & 0xFFFFFFF8) + 1628013346)) & 0xFFFFFFFFFFFFFFF8));
  v12 = __ROR8__(v8 & 0xFFFFFFFFFFFFFFF8, 8);
  v13 = (a2 - ((v11 + v12) | (1145 * (v10 ^ 0x5854u)) ^ (a2 + 1810)) + ((v11 + v12) | 0xD9F985D6D784AD0ALL)) ^ 0x6036493DE603F2C8;
  v14 = __ROR8__(v13, 8);
  v15 = v13 ^ __ROR8__(v11, 61);
  v16 = (a3 - ((v14 + v15) | a3) + ((v14 + v15) | 0x9D19FFDAC17C81AELL)) ^ 0xADBB5F094AE7255DLL;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (((2 * (v18 + v17)) & 0x9DEF49C780A91E24) - (v18 + v17) + 0x31085B1C3FAB70EDLL) ^ 0xA3BC201B76D51138;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (((2 * (v21 + v20)) | 0x62ED2CA0C6D0DD2ELL) - (v21 + v20) + 0x4E8969AF9C979169) ^ 0xFA1952EECC0F6522;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0x3E30B52E4F73C213;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0x613AACD51361D2FLL;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (((2 * (v28 + v27)) & 0xCE5E7A198D6882CELL) - (v28 + v27) - 0x672F3D0CC6B44168) ^ 0x1546D448A09B92D9;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = __ROR8__(v29, 8);
  *v9 = ((((v31 + v30) & 0x151CECEAE6948A99 ^ 0x1018C0AA46040819) + ((v31 + v30) & 0xEAE31315196B7566 ^ 0x8E3030019496507) - 1) ^ 0xB318578AFB2C8213) >> (v6 & 0x38);
  return (*(STACK[0x57D8] + 8 * ((303 * (v7 == 0)) ^ v5)))();
}

uint64_t sub_1004962E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = LODWORD(STACK[0x12F8]) + 15299;
  v7 = STACK[0x57D8];
  v8 = STACK[0x8D28];
  STACK[0xBF38] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x12F8]));
  return (*(v7 + 8 * (LODWORD(STACK[0x12F4]) ^ v6)))(a1, a2, a3, a4, a5, a6, v8);
}

uint64_t sub_10049634C@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v2 = *(STACK[0x5358] + (LODWORD(STACK[0x5268]) & (883380969 * (((130327897 * STACK[0x5338]) | 0x986694F6) + ((130327897 * STACK[0x5338]) | 0x67996B09)) - 1360819197)));
  v3 = (((2 * (v2 + STACK[0x5360])) & 0xAA3410A6E0C83E74) - (v2 + STACK[0x5360]) + 0x2AE5F7AC8F9BE0C5) ^ 0x926DF6786E5C8396;
  v4 = v3 ^ __ROR8__(v2, 61);
  v5 = __ROR8__(v3, 8);
  v6 = (((2 * (v5 + v4)) | 0x5D6D2E658BE34CB8) - (v5 + v4) - 0x2EB69732C5F1A65CLL) ^ 0x167E265822F4CE2BLL;
  v7 = v6 ^ __ROR8__(v4, 61);
  v8 = __ROR8__(v6, 8);
  v9 = __ROR8__((((2 * (v8 + v7)) | 0x15DE17B7A3267358) - (v8 + v7) - 0xAEF0BDBD19339ACLL) ^ 0xEF6FBAA65D56DCFDLL, 8);
  v10 = (((2 * (v8 + v7)) | 0x15DE17B7A3267358) - (v8 + v7) - 0xAEF0BDBD19339ACLL) ^ 0xEF6FBAA65D56DCFDLL ^ __ROR8__(v7, 61);
  v11 = (v9 + v10) ^ 0xE1A1FD5BD155F97ALL;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0xDA604B0C03A2BF99;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0xFA35E2CDCB3E31C7;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = __ROR8__(v15, 8);
  v18 = *(STACK[0x5450] + (a1 & ((STACK[0x5440] & 0x663F8CF7) + (STACK[0x5440] | 0x663F8CF5) + 335326245)));
  LODWORD(STACK[0x5368]) = LODWORD(STACK[0x57C0]) ^ (((__ROR8__((((v17 + v16) | 0x2E63D0E93D7ED84ELL) - ((v17 + v16) | 0xD19C2F16C28127B1) - 0x2E63D0E93D7ED84FLL) ^ 0xFC93DC0F1D9B0BE0, 8) + ((((v17 + v16) | 0x2E63D0E93D7ED84ELL) - ((v17 + v16) | 0xD19C2F16C28127B1) - 0x2E63D0E93D7ED84FLL) ^ 0xFC93DC0F1D9B0BE0 ^ __ROR8__(v16, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x57B0]);
  v19 = (v18 + STACK[0x56E0]) ^ 0xB88801D4E1C76353;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0x38C8B16AE7056877;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0xE580B17D8CC5E551;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (((2 * (v25 + v24)) & 0xA5A90BC24058E8BELL) - (v25 + v24) + 0x2D2B7A1EDFD38BA0) ^ 0xCC8A87450E8672DALL;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (((2 * (v28 + v27)) | 0x3A075C6AA32FB990) - (v28 + v27) + 0x62FC51CAAE682338) ^ 0x4763E53952356351;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (((2 * (v31 + v30)) & 0xA822122EA26D3C52) - (v31 + v30) - 0x5411091751369E2ALL) ^ 0x51DB142565F75011;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (((2 * (v34 + v33)) | 0xE927407D626E094) - (v34 + v33) + 0x78B6C5FC14EC8FB6) ^ 0x55B936E5CBF6A3E4;
  LODWORD(STACK[0x53A8]) = LODWORD(STACK[0x5790]) ^ (((__ROR8__(v35, 8) + (v35 ^ __ROR8__(v33, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5780]);
  v36 = *(STACK[0x5620] + (STACK[0x5460] & ((a2 & 0x1DD9F878) + (a2 | 0x1DD9F878) + 1549942944)));
  v37 = (v36 + STACK[0x56F0]) ^ 0xB88801D4E1C76353;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0x38C8B16AE7056877;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0xE580B17D8CC5E551;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ 0xE1A1FD5BD155F97ALL;
  v44 = __ROR8__(v43, 8);
  v45 = v43 ^ __ROR8__(v42, 61);
  v46 = (((v44 + v45) | 0xA0AC0BDE0A0AB574) - ((v44 + v45) | 0x5F53F421F5F54A8BLL) + 0x5F53F421F5F54A8BLL) ^ 0x7ACC40D209A80AEDLL;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = __ROR8__(v46, 8);
  v49 = __ROR8__((((2 * ((v48 + v47) ^ 0x46501A25C3DB8234)) & 0xF48D6323D7E546FALL) - ((v48 + v47) ^ 0x46501A25C3DB8234) - 0x7A46B191EBF2A37ELL) ^ 0x39DCB6861CE8EF71, 8);
  v50 = (((2 * ((v48 + v47) ^ 0x46501A25C3DB8234)) & 0xF48D6323D7E546FALL) - ((v48 + v47) ^ 0x46501A25C3DB8234) - 0x7A46B191EBF2A37ELL) ^ 0x39DCB6861CE8EF71 ^ __ROR8__(v47, 61);
  v51 = (((v49 + v50) ^ 0xAB06F2D364CFF8FCLL) - ((2 * ((v49 + v50) ^ 0xAB06F2D364CFF8FCLL)) & 0x8B4A19F5CB10CAF0) - 0x3A5AF3051A779A88) ^ 0xBC53F2CFA1A24E2ALL;
  v52 = STACK[0x54A0];
  v53 = *(STACK[0x54C0] + ((*STACK[0x51E8] & (STACK[0x54B0] + (STACK[0x54B0] | 0x4123CE2F) - ((131 * (LODWORD(STACK[0x54A0]) ^ 0x12F4) - 1092886937) & STACK[0x54B0]) + 957901547)) & 0xFFFFFFFFFFFFFFF8));
  v54 = __ROR8__((v53 + STACK[0x5600]) ^ 0xB88801D4E1C76353, 8);
  v55 = (v53 + STACK[0x5600]) ^ 0xB88801D4E1C76353 ^ __ROR8__(v53, 61);
  v56 = (v54 + v55) ^ 0x38C8B16AE7056877;
  v57 = __ROR8__(v56, 8);
  LODWORD(STACK[0x53A0]) = LODWORD(STACK[0x5670]) ^ (((__ROR8__(v51, 8) + (v51 ^ __ROR8__(v50, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5378]);
  v58 = v56 ^ __ROR8__(v55, 61);
  v59 = __ROR8__((((2 * (v57 + v58)) | 0x1A98B546AFADBDBELL) - (v57 + v58) - 0xD4C5AA357D6DEDFLL) ^ 0xE8CCEBDEDB133B8ELL, 8);
  v60 = (((2 * (v57 + v58)) | 0x1A98B546AFADBDBELL) - (v57 + v58) - 0xD4C5AA357D6DEDFLL) ^ 0xE8CCEBDEDB133B8ELL ^ __ROR8__(v58, 61);
  v61 = (((v59 + v60) | 0xF3FAE72A398A52B0) - ((v59 + v60) | 0xC0518D5C675AD4FLL) + 0xC0518D5C675AD4FLL) ^ 0x125B1A71E8DFABCALL;
  v62 = __ROR8__(v61, 8);
  v63 = v61 ^ __ROR8__(v60, 61);
  v64 = (v62 + v63 - ((2 * (v62 + v63)) & 0xBB5ECC5698AADF16) - 0x225099D4B3AA9075) ^ 0x7CF2D274FF7D012;
  v65 = __ROR8__(v64, 8);
  v66 = v64 ^ __ROR8__(v63, 61);
  v67 = (v65 + v66 - ((2 * (v65 + v66)) & 0xA2678850344713AELL) - 0x2ECC3BD7E5DC7629) ^ 0x2B0626E5D11DB810;
  v68 = __ROR8__(v67, 8);
  v69 = v67 ^ __ROR8__(v66, 61);
  v70 = (v68 + v69 - ((2 * (v68 + v69)) & 0xF871E3F484CAEF56) + 0x7C38F1FA426577ABLL) ^ 0xAEC8FD1C6280A405;
  v71 = __ROR8__(v70, 8);
  v72 = __ROR8__(v69, 61);
  LODWORD(STACK[0x5348]) = LODWORD(STACK[0x5740]) ^ (((((2 * (v71 + (v70 ^ v72))) | 0x69C75C9F6CFD6BDELL) - (v71 + (v70 ^ v72)) + 0x4B1C51B049814A11) ^ 0x4090A57E180EC094) >> STACK[0x5700]);
  STACK[0x52F8] = 39;
  return (*(STACK[0x57D8] + 8 * v52))(LODWORD(STACK[0x52A0]));
}

uint64_t sub_100496C80()
{
  STACK[0x9BA8] = 0;
  LODWORD(STACK[0xC1FC]) = -769884012;
  STACK[0x8E80] = 0;
  LODWORD(STACK[0xAE5C]) = -769884012;
  STACK[0x5B98] = 0xD38CBDD3ACAFF84ALL;
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xC1FC];
  LODWORD(STACK[0x9094]) = -32197467;
  return (*(STACK[0x57D8] + 8 * (v0 - 18310)))();
}

uint64_t sub_100496D4C()
{
  STACK[0xB7C8] = 0;
  STACK[0xADA8] = 0;
  LODWORD(STACK[0x8B44]) = -769884012;
  v1 = STACK[0x57D8];
  STACK[0x6B90] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (((v0 + 1526559614) & 0xA5029FCF ^ 0x2AF2) + v0)))();
}

uint64_t sub_100496F20()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x57D8];
  STACK[0x8580] = *(STACK[0x57D8] + 8 * (STACK[0x51B8] - 20074));
  return (*(v1 + 8 * (v0 - 18047)))();
}

uint64_t sub_100496F54()
{
  STACK[0xBF18] = v1;
  LODWORD(STACK[0x715C]) = v2;
  if (STACK[0xDC48])
  {
    v3 = *(STACK[0x4240] + 104) == 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  return (*(STACK[0x57D8] + 8 * ((v4 * (((v0 - 9729) | 0x2009) + 3278)) ^ v0)))();
}

uint64_t sub_100497064()
{
  v4 = STACK[0x51B8] + 1614708944;
  v5 = *(*v0 + (*v2 & 0x13F614F0)) & 0x7FFFFFFFFFFFFFFFLL ^ v3;
  *(v1 + 448) = v5 + 0x40791AC78BD5C571 - ((2 * v5) & 0x80F2358F17AB8AE2);
  return (*(STACK[0x57D8] + 8 * (v4 - 1614715575)))();
}

uint64_t sub_10049710C@<X0>(unint64_t a1@<X0>, int8x16_t *a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, unint64_t a9@<X8>)
{
  v23 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x55D0] = *(v22 + v21 - 16);
  v24.i64[0] = v20 + v21 - 3;
  v24.i64[1] = v20 + v21 - 4;
  v25.i64[0] = v20 + v21 - 5;
  v25.i64[1] = v20 + v21 - 6;
  v26.i64[0] = v22 + v21 - 5;
  v26.i64[1] = v22 + v21 - 6;
  v27.i64[0] = v22 + v21 - 3;
  v27.i64[1] = v22 + v21 - 4;
  v28 = vandq_s8(v27, v23);
  v29 = vandq_s8(v26, v23);
  v30 = *&STACK[0x4BD0];
  v31 = vdupq_n_s64(0xF9FFFFFFFFFFFFFFLL);
  v32 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v29, 0x38uLL), v29, 8uLL), *&STACK[0x4BD0]), v31);
  v33 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v28, 0x38uLL), v28, 8uLL), *&STACK[0x4BD0]), v31);
  v34 = v31;
  v35 = vdupq_n_s64(0xE9B85E912434B084);
  v36 = vdupq_n_s64(v10);
  v37 = veorq_s8(v33, v35);
  v38 = veorq_s8(v32, v35);
  v39 = v35;
  v40 = veorq_s8(v32, v36);
  v41 = veorq_s8(v33, v36);
  v42 = v36;
  v43 = *&STACK[0x44D0];
  v44 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL), v40), *&STACK[0x44D0]);
  v45 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL), v41), *&STACK[0x44D0]);
  v46 = veorq_s8(v45, vsraq_n_u64(vshlq_n_s64(v41, 3uLL), v41, 0x3DuLL));
  v47 = veorq_s8(v44, vsraq_n_u64(vshlq_n_s64(v40, 3uLL), v40, 0x3DuLL));
  v48 = vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL);
  v49 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), v47);
  v50 = veorq_s8(vaddq_s64(v48, v46), *&STACK[0x4600]);
  v51 = veorq_s8(v49, *&STACK[0x4600]);
  v52 = veorq_s8(v51, vsraq_n_u64(vshlq_n_s64(v47, 3uLL), v47, 0x3DuLL));
  v53 = veorq_s8(v50, vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL));
  v54 = vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL);
  v55 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v53);
  v56 = vaddq_s64(v54, v52);
  v57 = vdupq_n_s64(a6);
  *&STACK[0x5650] = v57;
  v58 = vdupq_n_s64(a7);
  *&STACK[0x5730] = v58;
  v59 = vaddq_s64(vsubq_s64(v55, vandq_s8(vaddq_s64(v55, v55), v57)), v58);
  v60 = vaddq_s64(vsubq_s64(v56, vandq_s8(vaddq_s64(v56, v56), v57)), v58);
  v61 = vdupq_n_s64(a5);
  v62 = veorq_s8(v60, v61);
  *&STACK[0x5720] = v61;
  v63 = veorq_s8(v59, v61);
  v64 = veorq_s8(v63, vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL));
  v65 = veorq_s8(v62, vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL));
  v66 = vdupq_n_s64(0x224C09CA440C0C0BuLL);
  v67 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v64), v66);
  *&STACK[0x5710] = v66;
  v68 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v65), v66);
  v69 = veorq_s8(v68, vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL));
  v70 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL));
  v71 = vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL);
  v72 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v70);
  v73 = vaddq_s64(v71, v69);
  v74 = vdupq_n_s64(0x19A41E7488B36A16uLL);
  *&STACK[0x5620] = v74;
  v75 = vorrq_s8(vaddq_s64(v72, v72), v74);
  v76 = vorrq_s8(vaddq_s64(v73, v73), v74);
  v77 = vdupq_n_s64(v13);
  *&STACK[0x5640] = v77;
  v78 = vaddq_s64(vsubq_s64(v75, v72), v77);
  v79 = vaddq_s64(vsubq_s64(v76, v73), v77);
  v80 = vdupq_n_s64(v9);
  *&STACK[0x5630] = v80;
  v81 = veorq_s8(v79, v80);
  v82 = veorq_s8(v78, v80);
  v83 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL));
  v84 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v85 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v84);
  v86 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v83);
  v87 = vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL);
  v88 = vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL);
  v89 = *&STACK[0x4490];
  v90 = veorq_s8(v86, *&STACK[0x4490]);
  v91 = vandq_s8(v25, v23);
  v92 = vandq_s8(v24, v23);
  v93 = v23;
  v94 = veorq_s8(v85, *&STACK[0x4490]);
  v95 = vdupq_n_s64(0xE18FB45CE577EDADLL);
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v95);
  v97 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v95);
  v98 = veorq_s8(v94, v88);
  v99 = vdupq_n_s64(a1);
  v100 = veorq_s8(v90, v87);
  v101 = vdupq_n_s64(a9);
  *&STACK[0x57A0] = v101;
  v102 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v96, v96), v99), v96), v101);
  v103 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v97, v97), v99), v97), v101);
  v104 = vdupq_n_s64(v15);
  v105 = veorq_s8(v103, v104);
  v106 = veorq_s8(v102, v104);
  v107 = vdupq_n_s64(v16);
  v108 = veorq_s8(v102, v107);
  v109 = veorq_s8(v103, v107);
  v110 = vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL);
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v109);
  v112 = vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL);
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v108);
  v114 = vdupq_n_s64(v17);
  *&STACK[0x5780] = v114;
  v115 = vsubq_s64(vorrq_s8(vaddq_s64(v113, v113), v114), v113);
  v116 = vsubq_s64(vorrq_s8(vaddq_s64(v111, v111), v114), v111);
  v117 = vdupq_n_s64(v18);
  v118 = vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL);
  v119 = vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL);
  v120 = vdupq_n_s64(v14);
  *&STACK[0x5770] = v120;
  v121 = vaddq_s64(v116, v117);
  v122 = veorq_s8(vaddq_s64(v115, v117), v120);
  v123 = veorq_s8(v121, v120);
  v124 = veorq_s8(v123, v119);
  v125 = veorq_s8(v122, v118);
  v126 = vaddq_s64(v112, v100);
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124);
  v128 = vdupq_n_s64(v11);
  *&STACK[0x5790] = v128;
  v129 = vsubq_s64(vorrq_s8(vaddq_s64(v127, v127), v128), v127);
  v130 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v125);
  v131 = vaddq_s64(v110, v98);
  v132 = vsubq_s64(vorrq_s8(vaddq_s64(v130, v130), v128), v130);
  v133 = vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL);
  v134 = vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL);
  v135 = vdupq_n_s64(v19);
  v136 = vaddq_s64(v132, v135);
  v137 = v135;
  *&STACK[0x5760] = v135;
  v138 = vdupq_n_s64(a3);
  v139 = veorq_s8(v136, v138);
  *&STACK[0x5750] = v138;
  v140 = veorq_s8(v139, v134);
  v141 = vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL);
  v142 = veorq_s8(vaddq_s64(v129, v137), v138);
  v143 = veorq_s8(v142, v133);
  v144 = vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL);
  v145 = vaddq_s64(v141, v140);
  v146 = vdupq_n_s64(0xA83C6FA80DE490C0);
  *&STACK[0x5740] = v146;
  v147 = vsubq_s64(v145, vandq_s8(vaddq_s64(v145, v145), v146));
  v148 = vaddq_s64(v144, v143);
  v149 = vsubq_s64(v148, vandq_s8(vaddq_s64(v148, v148), v146));
  v150 = vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL);
  v151 = vdupq_n_s64(a8);
  v152 = vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL);
  v153 = vaddq_s64(v149, v151);
  v154 = v151;
  *&STACK[0x5700] = v151;
  v155 = vdupq_n_s64(0x3C3444E9F05134E0uLL);
  v156 = veorq_s8(v153, v155);
  *&STACK[0x56F0] = v155;
  v157 = veorq_s8(v156, v152);
  v158 = vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL);
  v159 = veorq_s8(vaddq_s64(v147, v154), v155);
  v160 = veorq_s8(v159, v150);
  v161 = vdupq_n_s64(0x38uLL);
  v162 = vshlq_u64(veorq_s8(v126, *&STACK[0x4620]), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), v161)));
  v163 = *&STACK[0x4D00];
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v160), *&STACK[0x4D00]);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v166 = vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL);
  v167 = vshlq_u64(veorq_s8(v131, *&STACK[0x4620]), vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), v161)));
  v168 = veorq_s8(vaddq_s64(v158, v157), *&STACK[0x4D00]);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v170 = vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL);
  v171 = vaddq_s64(v166, v165);
  v172 = vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL);
  v173 = vaddq_s64(v170, v169);
  v174 = vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL);
  v175 = vdupq_n_s64(0x86A7DE0DC523147BLL);
  v176 = veorq_s8(v173, v175);
  *&STACK[0x56C0] = v175;
  v177 = veorq_s8(v176, v174);
  v178 = vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL);
  v179 = veorq_s8(v171, v175);
  v180 = veorq_s8(v179, v172);
  v181 = vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL);
  v182 = vaddq_s64(v178, v177);
  v183 = vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL);
  v184 = vaddq_s64(v181, v180);
  v185 = vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL);
  v186 = veorq_s8(v184, *&STACK[0x4CD0]);
  v187 = veorq_s8(v182, *&STACK[0x4CD0]);
  v188 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), veorq_s8(v187, v183));
  v189 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), veorq_s8(v186, v185));
  v190 = vdupq_n_s64(0x9DE5D77A09487310);
  *&STACK[0x5670] = v190;
  v191 = vsubq_s64(vandq_s8(vaddq_s64(v189, v189), v190), v189);
  v192 = vsubq_s64(vandq_s8(vaddq_s64(v188, v188), v190), v188);
  v193 = vdupq_n_s64(0xB10D1442FB5BC677);
  v194 = vdupq_n_s64(0x3103AA6540BBD086uLL);
  *&STACK[0x57B0] = v193;
  *&STACK[0x57C0] = v194;
  v195 = vshlq_u64(veorq_s8(vaddq_s64(v192, v193), v194), vnegq_s64(vandq_s8(vshlq_n_s64(v24, 3uLL), v161)));
  v24.i64[0] = v22 + v21 - 1;
  v24.i64[1] = v22 + v21 - 2;
  v404.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v191, v193), v194), vnegq_s64(vandq_s8(vshlq_n_s64(v25, 3uLL), v161))), v167);
  v404.val[1] = veorq_s8(v195, v162);
  v196 = v93;
  *&STACK[0x55E0] = v93;
  v197 = vandq_s8(v24, v93);
  v198 = v30;
  *&STACK[0x5610] = v34;
  v199 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL), v30), v34);
  v200 = v39;
  v201 = veorq_s8(v199, v39);
  v202 = v42;
  v203 = veorq_s8(v199, v42);
  v204 = vsraq_n_u64(vshlq_n_s64(v203, 3uLL), v203, 0x3DuLL);
  v205 = v43;
  v206 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL), v203), v43);
  v207 = veorq_s8(v206, v204);
  v208 = *&STACK[0x4600];
  v209 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL), v207), *&STACK[0x4600]);
  v210 = veorq_s8(v209, vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL));
  v211 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL), v210);
  v212 = *&STACK[0x5650];
  v213 = *&STACK[0x5730];
  v214 = *&STACK[0x5720];
  v215 = veorq_s8(vaddq_s64(vsubq_s64(v211, vandq_s8(vaddq_s64(v211, v211), *&STACK[0x5650])), *&STACK[0x5730]), *&STACK[0x5720]);
  v216 = veorq_s8(v215, vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL));
  v217 = *&STACK[0x5710];
  v218 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL), v216), *&STACK[0x5710]);
  v219 = veorq_s8(v218, vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL));
  v220 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL), v219);
  v221 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v220, v220), *&STACK[0x5620]), v220), *&STACK[0x5640]), *&STACK[0x5630]);
  v222 = veorq_s8(v221, vsraq_n_u64(vshlq_n_s64(v219, 3uLL), v219, 0x3DuLL));
  v223 = vsraq_n_u64(vshlq_n_s64(v221, 0x38uLL), v221, 8uLL);
  v221.i64[0] = v20 + v21 - 1;
  v221.i64[1] = v20 + v21 - 2;
  v224 = vaddq_s64(v223, v222);
  v225 = vsraq_n_u64(vshlq_n_s64(v222, 3uLL), v222, 0x3DuLL);
  v226 = vandq_s8(v221, v196);
  *&STACK[0x56E0] = v95;
  v227 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL), v95);
  *&STACK[0x56D0] = v99;
  v228 = veorq_s8(v224, v89);
  v229 = veorq_s8(v228, v225);
  v230 = vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL);
  v231 = *&STACK[0x57A0];
  v232 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v227, v227), v99), v227), *&STACK[0x57A0]);
  *&STACK[0x5680] = v104;
  v233 = veorq_s8(v232, v104);
  *&STACK[0x5600] = v107;
  v234 = veorq_s8(v232, v107);
  v235 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v233, 0x38uLL), v233, 8uLL), v234);
  v236 = *&STACK[0x5780];
  v237 = *&STACK[0x5770];
  v238 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v235, v235), *&STACK[0x5780]), v235), v117), *&STACK[0x5770]);
  v239 = veorq_s8(v238, vsraq_n_u64(vshlq_n_s64(v234, 3uLL), v234, 0x3DuLL));
  v240 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v238, 0x38uLL), v238, 8uLL), v239);
  v241 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v240, v240), *&STACK[0x5790]), v240), *&STACK[0x5760]), *&STACK[0x5750]);
  v242 = veorq_s8(v241, vsraq_n_u64(vshlq_n_s64(v239, 3uLL), v239, 0x3DuLL));
  v243 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v241, 0x38uLL), v241, 8uLL), v242);
  v244 = veorq_s8(vaddq_s64(vsubq_s64(v243, vandq_s8(vaddq_s64(v243, v243), *&STACK[0x5740])), *&STACK[0x5700]), *&STACK[0x56F0]);
  v245 = veorq_s8(v244, vsraq_n_u64(vshlq_n_s64(v242, 3uLL), v242, 0x3DuLL));
  v246 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL), v245), v163);
  v247 = veorq_s8(v246, vsraq_n_u64(vshlq_n_s64(v245, 3uLL), v245, 0x3DuLL));
  v248 = veorq_s8(vaddq_s64(v230, v229), *&STACK[0x4620]);
  *&STACK[0x55F0] = v161;
  v249 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v246, 0x38uLL), v246, 8uLL), v247), *&STACK[0x56C0]);
  v250 = veorq_s8(v249, vsraq_n_u64(vshlq_n_s64(v247, 3uLL), v247, 0x3DuLL));
  v251 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v249, 0x38uLL), v249, 8uLL), v250), *&STACK[0x4CD0]);
  v252 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v251, 0x38uLL), v251, 8uLL), veorq_s8(v251, vsraq_n_u64(vshlq_n_s64(v250, 3uLL), v250, 0x3DuLL)));
  v404.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v252, v252), *&STACK[0x5670]), v252), *&STACK[0x57B0]), *&STACK[0x57C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v221, 3uLL), v161))), vshlq_u64(v248, vnegq_s64(vandq_s8(vshlq_n_s64(v24, 3uLL), v161))));
  v253 = v21 + ((v12 + 110565192) & 0xF968F67F ^ 0xFFFFFFFFFFFF99E7);
  v230.i64[0] = v22 + v253;
  v230.i64[1] = v22 + v21 - 8;
  v254 = vandq_s8(v230, *&STACK[0x55E0]);
  v255 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v254, 0x38uLL), v254, 8uLL), v198), v34);
  v256 = veorq_s8(v255, v200);
  v257 = veorq_s8(v255, v202);
  v258 = vsraq_n_u64(vshlq_n_s64(v257, 3uLL), v257, 0x3DuLL);
  v259 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v256, 0x38uLL), v256, 8uLL), v257), v205);
  v260 = veorq_s8(v259, v258);
  v261 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v259, 0x38uLL), v259, 8uLL), v260), v208);
  v262 = veorq_s8(v261, vsraq_n_u64(vshlq_n_s64(v260, 3uLL), v260, 0x3DuLL));
  v263 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v261, 0x38uLL), v261, 8uLL), v262);
  v264 = veorq_s8(vaddq_s64(vsubq_s64(v263, vandq_s8(vaddq_s64(v263, v263), v212)), v213), v214);
  v265 = veorq_s8(v264, vsraq_n_u64(vshlq_n_s64(v262, 3uLL), v262, 0x3DuLL));
  v266 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v264, 0x38uLL), v264, 8uLL), v265), v217);
  v267 = veorq_s8(v266, vsraq_n_u64(vshlq_n_s64(v265, 3uLL), v265, 0x3DuLL));
  v268 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v266, 0x38uLL), v266, 8uLL), v267);
  v269 = vsraq_n_u64(vshlq_n_s64(v267, 3uLL), v267, 0x3DuLL);
  v267.i64[0] = v20 + v253;
  v267.i64[1] = v20 + v21 - 8;
  v270 = vandq_s8(v267, *&STACK[0x55E0]);
  v271 = *&STACK[0x55E0];
  v272 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v270, 0x38uLL), v270, 8uLL), v95);
  v273 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v272, v272), v99), v272), v231);
  v274 = veorq_s8(v273, v104);
  v275 = *&STACK[0x5620];
  v276 = veorq_s8(v273, v107);
  v277 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v274, 0x38uLL), v274, 8uLL), v276);
  v278 = vsubq_s64(vorrq_s8(vaddq_s64(v277, v277), v236), v277);
  v279 = vsraq_n_u64(vshlq_n_s64(v276, 3uLL), v276, 0x3DuLL);
  v280 = *&STACK[0x5640];
  v281 = *&STACK[0x5630];
  v282 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v268, v268), *&STACK[0x5620]), v268), *&STACK[0x5640]), *&STACK[0x5630]);
  v283 = veorq_s8(v282, v269);
  v284 = vsraq_n_u64(vshlq_n_s64(v282, 0x38uLL), v282, 8uLL);
  v285 = veorq_s8(vaddq_s64(v278, v117), v237);
  v286 = veorq_s8(v285, v279);
  v287 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v285, 0x38uLL), v285, 8uLL), v286);
  v288 = *&STACK[0x5790];
  v289 = vsraq_n_u64(vshlq_n_s64(v283, 3uLL), v283, 0x3DuLL);
  v290 = vaddq_s64(v284, v283);
  v291 = vsraq_n_u64(vshlq_n_s64(v286, 3uLL), v286, 0x3DuLL);
  v292 = *&STACK[0x4490];
  v293 = veorq_s8(v290, *&STACK[0x4490]);
  v294 = veorq_s8(v293, v289);
  v295 = vsraq_n_u64(vshlq_n_s64(v293, 0x38uLL), v293, 8uLL);
  v296 = *&STACK[0x5760];
  v297 = *&STACK[0x5750];
  v298 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v287, v287), *&STACK[0x5790]), v287), *&STACK[0x5760]), *&STACK[0x5750]);
  v299 = veorq_s8(v298, v291);
  v300 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v298, 0x38uLL), v298, 8uLL), v299);
  v301 = *&STACK[0x5740];
  v302 = *&STACK[0x5700];
  v303 = *&STACK[0x56F0];
  v304 = veorq_s8(vaddq_s64(vsubq_s64(v300, vandq_s8(vaddq_s64(v300, v300), *&STACK[0x5740])), *&STACK[0x5700]), *&STACK[0x56F0]);
  v305 = veorq_s8(v304, vsraq_n_u64(vshlq_n_s64(v299, 3uLL), v299, 0x3DuLL));
  v306 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v304, 0x38uLL), v304, 8uLL), v305), *&STACK[0x4D00]);
  v307 = veorq_s8(v306, vsraq_n_u64(vshlq_n_s64(v305, 3uLL), v305, 0x3DuLL));
  v308 = vsraq_n_u64(vshlq_n_s64(v306, 0x38uLL), v306, 8uLL);
  v309 = vaddq_s64(v295, v294);
  v310 = vsraq_n_u64(vshlq_n_s64(v307, 3uLL), v307, 0x3DuLL);
  v311 = veorq_s8(vaddq_s64(v308, v307), *&STACK[0x56C0]);
  v312 = veorq_s8(v311, v310);
  v313 = *&STACK[0x4620];
  v314 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v311, 0x38uLL), v311, 8uLL), v312), *&STACK[0x4CD0]);
  v315 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v314, 0x38uLL), v314, 8uLL), veorq_s8(v314, vsraq_n_u64(vshlq_n_s64(v312, 3uLL), v312, 0x3DuLL)));
  v316 = *&STACK[0x5670];
  v317 = *&STACK[0x55F0];
  v404.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v315, v315), *&STACK[0x5670]), v315), *&STACK[0x57B0]), *&STACK[0x57C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v267, 3uLL), *&STACK[0x55F0]))), vshlq_u64(veorq_s8(v309, *&STACK[0x4620]), vnegq_s64(vandq_s8(vshlq_n_s64(v230, 3uLL), *&STACK[0x55F0]))));
  v318 = a2[25];
  *&STACK[0x55B0] = v318;
  *&STACK[0x55C0] = vqtbl4q_s8(v404, v318);
  v34.i64[0] = v22 + v21 - 15;
  v34.i64[1] = v22 + v21 - 16;
  v404.val[0] = vandq_s8(v34, v271);
  v404.val[1] = vsraq_n_u64(vshlq_n_s64(v404.val[0], 0x38uLL), v404.val[0], 8uLL);
  v161.i64[0] = v22 + v21 - 13;
  v161.i64[1] = v22 + v21 - 14;
  v404.val[2] = vandq_s8(v161, v271);
  v404.val[3] = vsraq_n_u64(vshlq_n_s64(v404.val[2], 0x38uLL), v404.val[2], 8uLL);
  v404.val[0] = *&STACK[0x4BD0];
  v319 = *&STACK[0x5610];
  v404.val[1] = vandq_s8(vaddq_s64(v404.val[1], *&STACK[0x4BD0]), *&STACK[0x5610]);
  *&STACK[0x55A0] = v200;
  v404.val[2] = veorq_s8(v404.val[1], v200);
  v320 = vsraq_n_u64(vshlq_n_s64(v404.val[2], 0x38uLL), v404.val[2], 8uLL);
  v404.val[2] = vandq_s8(vaddq_s64(v404.val[3], v404.val[0]), v319);
  v404.val[3] = veorq_s8(v404.val[2], v200);
  v321 = vsraq_n_u64(vshlq_n_s64(v404.val[3], 0x38uLL), v404.val[3], 8uLL);
  *&STACK[0x5590] = v202;
  v404.val[1] = veorq_s8(v404.val[1], v202);
  v404.val[3] = vaddq_s64(v320, v404.val[1]);
  v322 = vsraq_n_u64(vshlq_n_s64(v404.val[1], 3uLL), v404.val[1], 0x3DuLL);
  v404.val[1] = veorq_s8(v404.val[2], v202);
  v404.val[2] = vaddq_s64(v321, v404.val[1]);
  v323 = vsraq_n_u64(vshlq_n_s64(v404.val[1], 3uLL), v404.val[1], 0x3DuLL);
  v404.val[1] = veorq_s8(v404.val[2], v205);
  v404.val[2] = veorq_s8(v404.val[1], v323);
  v324 = vsraq_n_u64(vshlq_n_s64(v404.val[1], 0x38uLL), v404.val[1], 8uLL);
  v404.val[1] = veorq_s8(v404.val[3], v205);
  v404.val[3] = veorq_s8(v404.val[1], v322);
  v325 = vsraq_n_u64(vshlq_n_s64(v404.val[1], 0x38uLL), v404.val[1], 8uLL);
  v404.val[1] = vaddq_s64(v324, v404.val[2]);
  v326 = vsraq_n_u64(vshlq_n_s64(v404.val[2], 3uLL), v404.val[2], 0x3DuLL);
  v404.val[2] = veorq_s8(vaddq_s64(v325, v404.val[3]), *&STACK[0x4600]);
  v404.val[3] = veorq_s8(v404.val[2], vsraq_n_u64(vshlq_n_s64(v404.val[3], 3uLL), v404.val[3], 0x3DuLL));
  v327 = vsraq_n_u64(vshlq_n_s64(v404.val[2], 0x38uLL), v404.val[2], 8uLL);
  v404.val[1] = veorq_s8(v404.val[1], *&STACK[0x4600]);
  v404.val[2] = veorq_s8(v404.val[1], v326);
  v328 = vsraq_n_u64(vshlq_n_s64(v404.val[1], 0x38uLL), v404.val[1], 8uLL);
  v404.val[1] = vaddq_s64(v327, v404.val[3]);
  v329 = vaddq_s64(v328, v404.val[2]);
  v330 = vsraq_n_u64(vshlq_n_s64(v404.val[3], 3uLL), v404.val[3], 0x3DuLL);
  v404.val[3] = vsraq_n_u64(vshlq_n_s64(v404.val[2], 3uLL), v404.val[2], 0x3DuLL);
  v404.val[2] = veorq_s8(vaddq_s64(vsubq_s64(v329, vandq_s8(vaddq_s64(v329, v329), v212)), *&STACK[0x5730]), *&STACK[0x5720]);
  v404.val[3] = veorq_s8(v404.val[2], v404.val[3]);
  v331 = vsraq_n_u64(vshlq_n_s64(v404.val[2], 0x38uLL), v404.val[2], 8uLL);
  v404.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v404.val[1], vandq_s8(vaddq_s64(v404.val[1], v404.val[1]), v212)), *&STACK[0x5730]), *&STACK[0x5720]);
  v404.val[2] = veorq_s8(v404.val[1], v330);
  v332 = vsraq_n_u64(vshlq_n_s64(v404.val[1], 0x38uLL), v404.val[1], 8uLL);
  v404.val[1] = vaddq_s64(v331, v404.val[3]);
  v333 = vsraq_n_u64(vshlq_n_s64(v404.val[3], 3uLL), v404.val[3], 0x3DuLL);
  v404.val[3] = vaddq_s64(v332, v404.val[2]);
  v334 = vsraq_n_u64(vshlq_n_s64(v404.val[2], 3uLL), v404.val[2], 0x3DuLL);
  v404.val[2] = veorq_s8(v404.val[3], *&STACK[0x5710]);
  v404.val[3] = veorq_s8(v404.val[2], v334);
  v335 = vsraq_n_u64(vshlq_n_s64(v404.val[2], 0x38uLL), v404.val[2], 8uLL);
  v404.val[1] = veorq_s8(v404.val[1], *&STACK[0x5710]);
  v404.val[2] = veorq_s8(v404.val[1], v333);
  v336 = vsraq_n_u64(vshlq_n_s64(v404.val[1], 0x38uLL), v404.val[1], 8uLL);
  v404.val[1] = vaddq_s64(v335, v404.val[3]);
  v337 = vaddq_s64(v336, v404.val[2]);
  v338 = vsraq_n_u64(vshlq_n_s64(v404.val[3], 3uLL), v404.val[3], 0x3DuLL);
  v404.val[3] = vsraq_n_u64(vshlq_n_s64(v404.val[2], 3uLL), v404.val[2], 0x3DuLL);
  v404.val[2] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v337, v337), v275), v337), v280), v281);
  v404.val[3] = veorq_s8(v404.val[2], v404.val[3]);
  v339 = vsraq_n_u64(vshlq_n_s64(v404.val[2], 0x38uLL), v404.val[2], 8uLL);
  v340 = v280;
  v404.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v404.val[1], v404.val[1]), v275), v404.val[1]), v280), v281);
  v404.val[2] = veorq_s8(v404.val[1], v338);
  v341 = vaddq_s64(v339, v404.val[3]);
  v342 = vsraq_n_u64(vshlq_n_s64(v404.val[3], 3uLL), v404.val[3], 0x3DuLL);
  v404.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v404.val[1], 0x38uLL), v404.val[1], 8uLL), v404.val[2]);
  v343 = vsraq_n_u64(vshlq_n_s64(v404.val[2], 3uLL), v404.val[2], 0x3DuLL);
  v319.i64[0] = v20 + v21 - 13;
  v319.i64[1] = v20 + v21 - 14;
  v404.val[2] = vandq_s8(v319, v271);
  v280.i64[0] = v20 + v21 - 15;
  v280.i64[1] = v20 + v21 - 16;
  v404.val[0] = vandq_s8(v280, v271);
  v344 = vsraq_n_u64(vshlq_n_s64(v404.val[0], 0x38uLL), v404.val[0], 8uLL);
  v404.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v404.val[2], 0x38uLL), v404.val[2], 8uLL), *&STACK[0x56E0]);
  v345 = vaddq_s64(v344, *&STACK[0x56E0]);
  v404.val[1] = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v345, v345), *&STACK[0x56D0]), v345), *&STACK[0x57A0]);
  v346 = veorq_s8(v404.val[1], *&STACK[0x5680]);
  v347 = vsraq_n_u64(vshlq_n_s64(v346, 0x38uLL), v346, 8uLL);
  v404.val[2] = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v404.val[0], v404.val[0]), *&STACK[0x56D0]), v404.val[0]), *&STACK[0x57A0]);
  v348 = veorq_s8(v404.val[2], *&STACK[0x5680]);
  v404.val[0] = vsraq_n_u64(vshlq_n_s64(v348, 0x38uLL), v348, 8uLL);
  v404.val[1] = veorq_s8(v404.val[1], *&STACK[0x5600]);
  v349 = vaddq_s64(v347, v404.val[1]);
  v350 = vsubq_s64(vorrq_s8(vaddq_s64(v349, v349), *&STACK[0x5780]), v349);
  v404.val[3] = veorq_s8(v404.val[3], v292);
  v351 = veorq_s8(v404.val[3], v343);
  v352 = vsraq_n_u64(vshlq_n_s64(v404.val[3], 0x38uLL), v404.val[3], 8uLL);
  v404.val[2] = veorq_s8(v404.val[2], *&STACK[0x5600]);
  v404.val[0] = vaddq_s64(v404.val[0], v404.val[2]);
  v404.val[0] = vsubq_s64(vorrq_s8(vaddq_s64(v404.val[0], v404.val[0]), *&STACK[0x5780]), v404.val[0]);
  v404.val[3] = vsraq_n_u64(vshlq_n_s64(v404.val[1], 3uLL), v404.val[1], 0x3DuLL);
  *&STACK[0x5580] = v117;
  v404.val[0] = veorq_s8(vaddq_s64(v404.val[0], v117), *&STACK[0x5770]);
  v404.val[1] = veorq_s8(v404.val[0], vsraq_n_u64(vshlq_n_s64(v404.val[2], 3uLL), v404.val[2], 0x3DuLL));
  v404.val[2] = vsraq_n_u64(vshlq_n_s64(v404.val[0], 0x38uLL), v404.val[0], 8uLL);
  v404.val[0] = veorq_s8(v341, v292);
  v353 = veorq_s8(v404.val[0], v342);
  v354 = vsraq_n_u64(vshlq_n_s64(v404.val[0], 0x38uLL), v404.val[0], 8uLL);
  v355 = veorq_s8(vaddq_s64(v350, v117), *&STACK[0x5770]);
  v404.val[0] = veorq_s8(v355, v404.val[3]);
  v404.val[3] = vsraq_n_u64(vshlq_n_s64(v355, 0x38uLL), v355, 8uLL);
  v356 = vaddq_s64(v404.val[2], v404.val[1]);
  v404.val[2] = vaddq_s64(v404.val[3], v404.val[0]);
  v404.val[3] = vsraq_n_u64(vshlq_n_s64(v404.val[1], 3uLL), v404.val[1], 0x3DuLL);
  v404.val[1] = vsraq_n_u64(vshlq_n_s64(v404.val[0], 3uLL), v404.val[0], 0x3DuLL);
  v404.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v404.val[2], v404.val[2]), v288), v404.val[2]), v296), v297);
  v404.val[1] = veorq_s8(v404.val[0], v404.val[1]);
  v404.val[2] = vsraq_n_u64(vshlq_n_s64(v404.val[0], 0x38uLL), v404.val[0], 8uLL);
  v357 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v356, v356), v288), v356), v296), v297);
  v404.val[0] = veorq_s8(v357, v404.val[3]);
  v404.val[3] = vsraq_n_u64(vshlq_n_s64(v357, 0x38uLL), v357, 8uLL);
  v358 = vaddq_s64(v404.val[2], v404.val[1]);
  v404.val[2] = vaddq_s64(v404.val[3], v404.val[0]);
  v404.val[3] = vaddq_s64(v354, v353);
  v359 = vsraq_n_u64(vshlq_n_s64(v404.val[1], 3uLL), v404.val[1], 0x3DuLL);
  v404.val[1] = vsraq_n_u64(vshlq_n_s64(v404.val[0], 3uLL), v404.val[0], 0x3DuLL);
  v404.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v404.val[2], vandq_s8(vaddq_s64(v404.val[2], v404.val[2]), v301)), v302), v303);
  v404.val[1] = veorq_s8(v404.val[0], v404.val[1]);
  v404.val[2] = vsraq_n_u64(vshlq_n_s64(v404.val[0], 0x38uLL), v404.val[0], 8uLL);
  v360 = veorq_s8(vaddq_s64(vsubq_s64(v358, vandq_s8(vaddq_s64(v358, v358), v301)), v302), v303);
  v404.val[0] = veorq_s8(v360, v359);
  v361 = vsraq_n_u64(vshlq_n_s64(v360, 0x38uLL), v360, 8uLL);
  v362 = vaddq_s64(v404.val[2], v404.val[1]);
  v404.val[2] = vsraq_n_u64(vshlq_n_s64(v404.val[1], 3uLL), v404.val[1], 0x3DuLL);
  v404.val[1] = vaddq_s64(v352, v351);
  v363 = vsraq_n_u64(vshlq_n_s64(v404.val[0], 3uLL), v404.val[0], 0x3DuLL);
  v404.val[0] = veorq_s8(vaddq_s64(v361, v404.val[0]), *&STACK[0x4D00]);
  v364 = veorq_s8(v404.val[0], v363);
  v365 = vsraq_n_u64(vshlq_n_s64(v404.val[0], 0x38uLL), v404.val[0], 8uLL);
  v404.val[0] = vshlq_u64(veorq_s8(v404.val[3], v313), vnegq_s64(vandq_s8(vshlq_n_s64(v161, 3uLL), v317)));
  v366 = veorq_s8(v362, *&STACK[0x4D00]);
  v404.val[2] = veorq_s8(v366, v404.val[2]);
  v404.val[3] = vsraq_n_u64(vshlq_n_s64(v366, 0x38uLL), v366, 8uLL);
  v367 = vaddq_s64(v365, v364);
  v368 = vsraq_n_u64(vshlq_n_s64(v364, 3uLL), v364, 0x3DuLL);
  v369 = vsraq_n_u64(vshlq_n_s64(v404.val[2], 3uLL), v404.val[2], 0x3DuLL);
  v404.val[2] = veorq_s8(vaddq_s64(v404.val[3], v404.val[2]), *&STACK[0x56C0]);
  v404.val[3] = veorq_s8(v404.val[2], v369);
  v370 = vsraq_n_u64(vshlq_n_s64(v404.val[2], 0x38uLL), v404.val[2], 8uLL);
  v371 = veorq_s8(v367, *&STACK[0x56C0]);
  v404.val[2] = veorq_s8(v371, v368);
  v372 = vsraq_n_u64(vshlq_n_s64(v371, 0x38uLL), v371, 8uLL);
  v373 = vaddq_s64(v370, v404.val[3]);
  v374 = vsraq_n_u64(vshlq_n_s64(v404.val[3], 3uLL), v404.val[3], 0x3DuLL);
  v404.val[3] = vaddq_s64(v372, v404.val[2]);
  v375 = vsraq_n_u64(vshlq_n_s64(v404.val[2], 3uLL), v404.val[2], 0x3DuLL);
  v404.val[2] = veorq_s8(v404.val[3], *&STACK[0x4CD0]);
  v376 = veorq_s8(v373, *&STACK[0x4CD0]);
  v377 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v376, 0x38uLL), v376, 8uLL), veorq_s8(v376, v374));
  v404.val[2] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v404.val[2], 0x38uLL), v404.val[2], 8uLL), veorq_s8(v404.val[2], v375));
  v405.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v404.val[2], v404.val[2]), v316), v404.val[2]), *&STACK[0x57B0]), *&STACK[0x57C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v280, 3uLL), v317))), vshlq_u64(veorq_s8(v404.val[1], v313), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), v317))));
  v405.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v377, v377), v316), v377), *&STACK[0x57B0]), *&STACK[0x57C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v319, 3uLL), v317))), v404.val[0]);
  v404.val[0].i64[0] = v22 + v21 - 11;
  v404.val[0].i64[1] = v22 + v21 - 12;
  v378 = vandq_s8(v404.val[0], v271);
  v379 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v378, 0x38uLL), v378, 8uLL), *&STACK[0x4BD0]), *&STACK[0x5610]);
  v404.val[1] = veorq_s8(v379, *&STACK[0x55A0]);
  v380 = veorq_s8(v379, *&STACK[0x5590]);
  v404.val[2] = vsraq_n_u64(vshlq_n_s64(v380, 3uLL), v380, 0x3DuLL);
  v381 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v404.val[1], 0x38uLL), v404.val[1], 8uLL), v380), *&STACK[0x44D0]);
  v404.val[1] = veorq_s8(v381, v404.val[2]);
  v382 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v381, 0x38uLL), v381, 8uLL), v404.val[1]), *&STACK[0x4600]);
  v404.val[1] = veorq_s8(v382, vsraq_n_u64(vshlq_n_s64(v404.val[1], 3uLL), v404.val[1], 0x3DuLL));
  v383 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v382, 0x38uLL), v382, 8uLL), v404.val[1]);
  v384 = veorq_s8(vaddq_s64(vsubq_s64(v383, vandq_s8(vaddq_s64(v383, v383), *&STACK[0x5650])), *&STACK[0x5730]), *&STACK[0x5720]);
  v404.val[1] = veorq_s8(v384, vsraq_n_u64(vshlq_n_s64(v404.val[1], 3uLL), v404.val[1], 0x3DuLL));
  v385 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v384, 0x38uLL), v384, 8uLL), v404.val[1]), *&STACK[0x5710]);
  v404.val[1] = veorq_s8(v385, vsraq_n_u64(vshlq_n_s64(v404.val[1], 3uLL), v404.val[1], 0x3DuLL));
  v404.val[2] = vsraq_n_u64(vshlq_n_s64(v385, 0x38uLL), v385, 8uLL);
  v385.i64[0] = v20 + v21 - 11;
  v385.i64[1] = v20 + v21 - 12;
  v404.val[3] = vandq_s8(v385, v271);
  v404.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v404.val[3], 0x38uLL), v404.val[3], 8uLL), *&STACK[0x56E0]);
  v386 = vsraq_n_u64(vshlq_n_s64(v404.val[1], 3uLL), v404.val[1], 0x3DuLL);
  v404.val[1] = vaddq_s64(v404.val[2], v404.val[1]);
  v404.val[2] = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v404.val[3], v404.val[3]), *&STACK[0x56D0]), v404.val[3]), *&STACK[0x57A0]);
  v404.val[3] = veorq_s8(v404.val[2], *&STACK[0x5680]);
  v404.val[2] = veorq_s8(v404.val[2], *&STACK[0x5600]);
  v404.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v404.val[3], 0x38uLL), v404.val[3], 8uLL), v404.val[2]);
  v387 = vsraq_n_u64(vshlq_n_s64(v404.val[2], 3uLL), v404.val[2], 0x3DuLL);
  v404.val[2] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v404.val[3], v404.val[3]), *&STACK[0x5780]), v404.val[3]), *&STACK[0x5580]), *&STACK[0x5770]);
  v404.val[3] = veorq_s8(v404.val[2], v387);
  v404.val[2] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v404.val[2], 0x38uLL), v404.val[2], 8uLL), v404.val[3]);
  v388 = vsraq_n_u64(vshlq_n_s64(v404.val[3], 3uLL), v404.val[3], 0x3DuLL);
  v404.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v404.val[1], v404.val[1]), v275), v404.val[1]), v340), v281);
  v404.val[3] = veorq_s8(v404.val[1], v386);
  v389 = vsraq_n_u64(vshlq_n_s64(v404.val[1], 0x38uLL), v404.val[1], 8uLL);
  v404.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v404.val[2], v404.val[2]), *&STACK[0x5790]), v404.val[2]), *&STACK[0x5760]), *&STACK[0x5750]);
  v404.val[2] = veorq_s8(v404.val[1], v388);
  v404.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v404.val[1], 0x38uLL), v404.val[1], 8uLL), v404.val[2]);
  v390 = vsraq_n_u64(vshlq_n_s64(v404.val[3], 3uLL), v404.val[3], 0x3DuLL);
  v404.val[3] = vaddq_s64(v389, v404.val[3]);
  v391 = vsraq_n_u64(vshlq_n_s64(v404.val[2], 3uLL), v404.val[2], 0x3DuLL);
  v404.val[2] = veorq_s8(v404.val[3], v292);
  v404.val[3] = veorq_s8(v404.val[2], v390);
  v392 = vsraq_n_u64(vshlq_n_s64(v404.val[2], 0x38uLL), v404.val[2], 8uLL);
  v404.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v404.val[1], vandq_s8(vaddq_s64(v404.val[1], v404.val[1]), *&STACK[0x5740])), *&STACK[0x5700]), *&STACK[0x56F0]);
  v404.val[2] = veorq_s8(v404.val[1], v391);
  v393 = vsraq_n_u64(vshlq_n_s64(v404.val[1], 0x38uLL), v404.val[1], 8uLL);
  v404.val[1] = vaddq_s64(v392, v404.val[3]);
  v404.val[3] = vaddq_s64(v393, v404.val[2]);
  v394 = vsraq_n_u64(vshlq_n_s64(v404.val[2], 3uLL), v404.val[2], 0x3DuLL);
  v404.val[2] = veorq_s8(v404.val[3], *&STACK[0x4D00]);
  v404.val[3] = veorq_s8(v404.val[2], v394);
  v404.val[0] = vshlq_u64(veorq_s8(v404.val[1], *&STACK[0x4620]), vnegq_s64(vandq_s8(vshlq_n_s64(v404.val[0], 3uLL), *&STACK[0x55F0])));
  v404.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v404.val[2], 0x38uLL), v404.val[2], 8uLL), v404.val[3]), *&STACK[0x56C0]);
  v404.val[2] = veorq_s8(v404.val[1], vsraq_n_u64(vshlq_n_s64(v404.val[3], 3uLL), v404.val[3], 0x3DuLL));
  v404.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v404.val[1], 0x38uLL), v404.val[1], 8uLL), v404.val[2]), *&STACK[0x4CD0]);
  v404.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v404.val[1], 0x38uLL), v404.val[1], 8uLL), veorq_s8(v404.val[1], vsraq_n_u64(vshlq_n_s64(v404.val[2], 3uLL), v404.val[2], 0x3DuLL)));
  v405.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v404.val[1], v404.val[1]), *&STACK[0x5670]), v404.val[1]), *&STACK[0x57B0]), *&STACK[0x57C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v385, 3uLL), *&STACK[0x55F0]))), v404.val[0]);
  v385.i64[0] = v22 + v21 - 9;
  v385.i64[1] = v22 + v21 - 10;
  v404.val[0] = vandq_s8(v385, *&STACK[0x55E0]);
  v404.val[0] = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v404.val[0], 0x38uLL), v404.val[0], 8uLL), *&STACK[0x4BD0]), *&STACK[0x5610]);
  v404.val[1] = veorq_s8(v404.val[0], *&STACK[0x55A0]);
  v404.val[0] = veorq_s8(v404.val[0], *&STACK[0x5590]);
  v404.val[2] = vsraq_n_u64(vshlq_n_s64(v404.val[1], 0x38uLL), v404.val[1], 8uLL);
  v404.val[1] = vsraq_n_u64(vshlq_n_s64(v404.val[0], 3uLL), v404.val[0], 0x3DuLL);
  v404.val[0] = veorq_s8(vaddq_s64(v404.val[2], v404.val[0]), *&STACK[0x44D0]);
  v404.val[1] = veorq_s8(v404.val[0], v404.val[1]);
  v404.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v404.val[0], 0x38uLL), v404.val[0], 8uLL), v404.val[1]), *&STACK[0x4600]);
  v404.val[1] = veorq_s8(v404.val[0], vsraq_n_u64(vshlq_n_s64(v404.val[1], 3uLL), v404.val[1], 0x3DuLL));
  v404.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v404.val[0], 0x38uLL), v404.val[0], 8uLL), v404.val[1]);
  v404.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v404.val[0], vandq_s8(vaddq_s64(v404.val[0], v404.val[0]), *&STACK[0x5650])), *&STACK[0x5730]), *&STACK[0x5720]);
  v404.val[1] = veorq_s8(v404.val[0], vsraq_n_u64(vshlq_n_s64(v404.val[1], 3uLL), v404.val[1], 0x3DuLL));
  v404.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v404.val[0], 0x38uLL), v404.val[0], 8uLL), v404.val[1]), *&STACK[0x5710]);
  v404.val[1] = veorq_s8(v404.val[0], vsraq_n_u64(vshlq_n_s64(v404.val[1], 3uLL), v404.val[1], 0x3DuLL));
  v404.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v404.val[0], 0x38uLL), v404.val[0], 8uLL), v404.val[1]);
  v404.val[2] = vsubq_s64(vorrq_s8(vaddq_s64(v404.val[0], v404.val[0]), v275), v404.val[0]);
  v404.val[3] = vsraq_n_u64(vshlq_n_s64(v404.val[1], 3uLL), v404.val[1], 0x3DuLL);
  v404.val[0].i64[0] = v20 + v21 - 9;
  v404.val[0].i64[1] = v20 + v21 - 10;
  v404.val[1] = vandq_s8(v404.val[0], *&STACK[0x55E0]);
  v404.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v404.val[1], 0x38uLL), v404.val[1], 8uLL), *&STACK[0x56E0]);
  v404.val[1] = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v404.val[1], v404.val[1]), *&STACK[0x56D0]), v404.val[1]), *&STACK[0x57A0]);
  v395 = veorq_s8(v404.val[1], *&STACK[0x5680]);
  v404.val[1] = veorq_s8(v404.val[1], *&STACK[0x5600]);
  v404.val[2] = veorq_s8(vaddq_s64(v404.val[2], v340), v281);
  v396 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v395, 0x38uLL), v395, 8uLL), v404.val[1]);
  v404.val[3] = veorq_s8(v404.val[2], v404.val[3]);
  v397 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v396, v396), *&STACK[0x5780]), v396), *&STACK[0x5580]), *&STACK[0x5770]);
  v398 = veorq_s8(v397, vsraq_n_u64(vshlq_n_s64(v404.val[1], 3uLL), v404.val[1], 0x3DuLL));
  v404.val[1] = vsraq_n_u64(vshlq_n_s64(v404.val[2], 0x38uLL), v404.val[2], 8uLL);
  v404.val[2] = vsraq_n_u64(vshlq_n_s64(v397, 0x38uLL), v397, 8uLL);
  v399 = vsraq_n_u64(vshlq_n_s64(v404.val[3], 3uLL), v404.val[3], 0x3DuLL);
  v404.val[2] = vaddq_s64(v404.val[2], v398);
  v404.val[1] = vaddq_s64(v404.val[1], v404.val[3]);
  v404.val[2] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v404.val[2], v404.val[2]), *&STACK[0x5790]), v404.val[2]), *&STACK[0x5760]), *&STACK[0x5750]);
  v404.val[3] = veorq_s8(v404.val[2], vsraq_n_u64(vshlq_n_s64(v398, 3uLL), v398, 0x3DuLL));
  v404.val[2] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v404.val[2], 0x38uLL), v404.val[2], 8uLL), v404.val[3]);
  v404.val[1] = veorq_s8(v404.val[1], v292);
  v400 = veorq_s8(v404.val[1], v399);
  v401 = vsraq_n_u64(vshlq_n_s64(v404.val[1], 0x38uLL), v404.val[1], 8uLL);
  v404.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v404.val[2], vandq_s8(vaddq_s64(v404.val[2], v404.val[2]), *&STACK[0x5740])), *&STACK[0x5700]), *&STACK[0x56F0]);
  v404.val[2] = veorq_s8(v404.val[1], vsraq_n_u64(vshlq_n_s64(v404.val[3], 3uLL), v404.val[3], 0x3DuLL));
  v404.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v404.val[1], 0x38uLL), v404.val[1], 8uLL), v404.val[2]), *&STACK[0x4D00]);
  v404.val[3] = veorq_s8(v404.val[1], vsraq_n_u64(vshlq_n_s64(v404.val[2], 3uLL), v404.val[2], 0x3DuLL));
  v404.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v404.val[1], 0x38uLL), v404.val[1], 8uLL), v404.val[3]), *&STACK[0x56C0]);
  v404.val[2] = veorq_s8(v404.val[1], vsraq_n_u64(vshlq_n_s64(v404.val[3], 3uLL), v404.val[3], 0x3DuLL));
  v404.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v404.val[1], 0x38uLL), v404.val[1], 8uLL), v404.val[2]), *&STACK[0x4CD0]);
  v404.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v404.val[1], 0x38uLL), v404.val[1], 8uLL), veorq_s8(v404.val[1], vsraq_n_u64(vshlq_n_s64(v404.val[2], 3uLL), v404.val[2], 0x3DuLL)));
  v405.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v404.val[1], v404.val[1]), *&STACK[0x5670]), v404.val[1]), *&STACK[0x57B0]), *&STACK[0x57C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v404.val[0], 3uLL), *&STACK[0x55F0]))), vshlq_u64(veorq_s8(vaddq_s64(v401, v400), *&STACK[0x4620]), vnegq_s64(vandq_s8(vshlq_n_s64(v385, 3uLL), *&STACK[0x55F0]))));
  v404.val[0] = *&STACK[0x55C0];
  v404.val[0].i64[1] = vqtbl4q_s8(v405, *&STACK[0x55B0]).u64[0];
  v402 = vrev64q_s8(v404.val[0]);
  *(v20 + v21 - 16) = veorq_s8(vextq_s8(v402, v402, 8uLL), *&STACK[0x55D0]);
  return (*(STACK[0x57D8] + 8 * ((18581 * (STACK[0x5570] == v21)) ^ a4)))();
}

uint64_t sub_10049886C@<X0>(unsigned int a1@<W8>)
{
  v4 = STACK[0x8070];
  v5 = *(STACK[0x8070] + (12337 * a1 + v3) % 0x3282);
  v6 = *(&off_101353600 + (v1 ^ 0x1736));
  STACK[0x5490] = v6;
  v7 = v5 ^ 0xFFFFFF91 ^ *(v6 + ((59 * (v1 ^ 0x94)) ^ 0x79u ^ v5) + 11294);
  v8 = ((v7 ^ (2 * (v7 & STACK[0x5700]))) << STACK[0x57C0]) + (((v7 ^ (2 * (v7 & LOBYTE(STACK[0x5700])))) & STACK[0x5240]) >> STACK[0x57A0]);
  LOBYTE(v8) = v2 ^ 0x89 ^ ((v8 >> 6) | (4 * v8));
  *(v4 + (12337 * a1 + 153065159) % 0x3282) = (((v8 >> 2) | (v8 << 6)) - ((2 * ((v8 >> 2) | (v8 << 6))) & 0xB4) + 90) ^ 0x8F;
  return (*(STACK[0x57D8] + 8 * ((54 * (a1 > 0xFE)) ^ v1)))();
}

uint64_t sub_100498A20@<X0>(unsigned __int8 *a1@<X8>)
{
  v3 = v1 + 4766;
  STACK[0xD368] = 0;
  v4 = a1[10];
  v5 = *(&off_101353600 + v3 - 26993) - 4;
  v6 = v5[((v3 - 122) | 0x48) ^ v4 ^ 1];
  v7 = *a1;
  STACK[0xD348] = 0;
  v8 = *(&off_101353600 + v3 - 27316) - 4;
  v9 = v8[v7 ^ 0x87];
  STACK[0xD328] = 0x5BD893C955F67311;
  v10 = v4 ^ 0x8B ^ v6;
  v11 = a1[6];
  LODWORD(STACK[0x5790]) = v10;
  STACK[0xD338] = 0;
  LODWORD(v7) = v7 ^ 0x32 ^ ((v7 ^ 0x32) - 117) ^ v9 ^ 0xFFFFFFBF;
  v12 = v5[v11 ^ 0xD7];
  STACK[0xD320] = 0x5AB0FB693CA1F07FLL;
  v13 = a1[2];
  LODWORD(STACK[0x57B0]) = v11 ^ 0x4A ^ v12;
  LODWORD(v11) = v13 ^ 0xAC ^ v5[v13 ^ 0xCC];
  v14 = *(&off_101353600 + v3 - 27341) - 12;
  LOBYTE(v13) = v14[a1[15] ^ 0xAFLL] + 94;
  v15 = a1[14];
  STACK[0xD358] = 0;
  STACK[0xD330] = 0;
  LODWORD(STACK[0xD374]) = -529837345;
  LODWORD(v7) = (v7 << 24) | (v11 << 8);
  STACK[0x56E0] = v5;
  v16 = a1[13];
  LODWORD(STACK[0x5780]) = v15 ^ 0x1B ^ v5[v15 ^ 0x47];
  LODWORD(STACK[0x5770]) = (v13 ^ (8 * v13) ^ (4 * v13));
  v17 = *(&off_101353600 + v3 - 27641) - 4;
  LODWORD(v11) = (v17[v16 ^ 0xE7] ^ -v17[v16 ^ 0xE7] ^ (-27 - (v17[v16 ^ 0xE7] ^ 0xFFFFFFE5))) - 27;
  LOBYTE(v15) = v14[a1[3] ^ 0x17] + 94;
  LODWORD(STACK[0x5760]) = (v11 ^ 0x4D ^ (v11 >> 1) & 6) << 16;
  LOBYTE(v11) = v14[a1[7] ^ 4] + 94;
  LODWORD(v7) = v7 & 0xFFFFFF00 | (v15 ^ (8 * v15) ^ (4 * v15));
  v18 = a1[8];
  LODWORD(STACK[0x57A0]) = (v11 ^ (8 * v11) ^ (4 * v11)) ^ 0x56;
  v19 = a1[4];
  LODWORD(STACK[0x5750]) = (v8[v18 ^ 0xBD] ^ v18 ^ 8 ^ ((v18 ^ 8) - 117)) ^ 0xF1;
  LOBYTE(v18) = v8[v19 ^ 0x98] ^ v19 ^ 0x2D ^ ((v19 ^ 0x2D) - 117) ^ 0x41;
  LODWORD(v19) = v17[a1[9] ^ 0x40];
  LODWORD(STACK[0x5740]) = v18;
  LODWORD(v18) = v17[a1[1] ^ 0xDCLL];
  v20 = a1[5];
  LODWORD(STACK[0x5730]) = v19 ^ 0xC9 ^ (v19 >> 1) & 6;
  STACK[0x5680] = v17;
  v21 = a1[12];
  LODWORD(v7) = v7 | (((v18 ^ (v18 >> 1) & 6) ^ 0xFD) << 16);
  LOBYTE(v18) = v17[v20 ^ 0xC7] ^ 0xAC ^ (v17[v20 ^ 0xC7] >> 1) & 6;
  STACK[0x56D0] = v8;
  LOBYTE(v19) = v8[v21 ^ 0x3B];
  LODWORD(STACK[0x5720]) = v18;
  v22 = a1[11] ^ 0x63;
  STACK[0x56C0] = v14;
  LOBYTE(v22) = v14[v22] + 94;
  LODWORD(STACK[0x5710]) = (v19 ^ v21 ^ 0x8E ^ ((v21 ^ 0x8E) - 117) ^ 0xA1);
  LODWORD(STACK[0x57C0]) = (v22 ^ (8 * v22) ^ (4 * v22)) ^ 0xF1;
  LODWORD(STACK[0x56F0]) = v7 ^ 0x9A;
  v23 = STACK[0xD350];
  LODWORD(STACK[0x5670]) = v2;
  v24 = *(STACK[0x57D8] + 8 * v3);
  LODWORD(STACK[0x5700]) = ((v3 - 3194) | 0xC48) - 19757;
  return v24(4065935965, 773158653, v23, 610267212, 17, 4278255361, 2442072344, 223);
}

uint64_t sub_100498F68()
{
  v2 = STACK[0xC888];
  STACK[0xE960] = v1;
  STACK[0xE968] = v2;
  return (*(STACK[0x57D8] + 8 * (((((((v1 - v2) ^ v0) & (v1 - v2)) >> (__clz((v1 - v2) ^ v0 | 1) ^ (((v0 + 1) | 0xD4) + 97))) & 1) * (((v0 + 1) ^ 0x585C) + 218)) ^ (v0 + 6479))))();
}

uint64_t sub_10049902C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X3>, int a3@<W6>, unsigned int a4@<W8>)
{
  LODWORD(STACK[0x4E68]) = LODWORD(STACK[0x5620]) + LODWORD(STACK[0x5630]);
  LODWORD(STACK[0x4EC8]) = a3 + LODWORD(STACK[0x57C0]);
  LODWORD(STACK[0x5630]) = v4 << 8;
  v6 = STACK[0x5760];
  v7 = *(STACK[0x5760] + 1131) + a4 - 4956;
  v8 = *(a1 + 1368);
  v9 = (v5[1457] - 76);
  v10 = v8[2663] - 76;
  v11 = v8[1601] - 76;
  LODWORD(STACK[0x5540]) = (v8[1601] - 76);
  v12 = STACK[0x5770];
  v13 = ((*(STACK[0x5680] + 1002) - 76) << 8) | (v7 << 16) | (*(STACK[0x5770] + 1290) - 76);
  v14 = v8[61] - 76;
  LODWORD(STACK[0x5550]) = v9;
  LODWORD(STACK[0x5530]) = (v9 << 16) | (v10 << 8);
  v15 = v8[941];
  v16 = v14;
  v17 = v14 | (v13 << 8);
  LOBYTE(v13) = v8[3452];
  LODWORD(STACK[0x5048]) = v17 - 150994944;
  LOBYTE(v9) = v6[122];
  LODWORD(STACK[0x5520]) = v5[1199] - 76;
  STACK[0x52E0] = a2;
  v18 = *(STACK[0x5580] + 1169);
  LODWORD(STACK[0x5238]) = *(a2 + 1032) - 76;
  LODWORD(STACK[0x54E0]) = (v9 - 76) << 8;
  LODWORD(STACK[0x54F0]) = (v13 - 76);
  v19 = STACK[0x5790];
  LOBYTE(v17) = *(STACK[0x57B0] + 1616);
  LODWORD(STACK[0x5570]) = ((v18 - 76) << 16) | ((*(STACK[0x5790] + 448) - 76) << 8) | (v18 - 76);
  LODWORD(STACK[0x54C0]) = (v15 - 76);
  v20 = (v17 - 76);
  v21 = STACK[0x57A0];
  v22 = v8[2352];
  LOBYTE(v9) = v8[1525];
  LODWORD(STACK[0x55E0]) = *(STACK[0x57A0] + 1252) - 76;
  v23 = STACK[0x5730];
  v24 = *(STACK[0x5730] + 949);
  v25 = (v10 << 16) | ((v9 - 76) << 8) | (v22 - 76);
  v26 = STACK[0x5740];
  LODWORD(STACK[0x5040]) = ((v8[850] - 76) | ((((v12[812] - 76) << 8) | (v8[668] << 16) | (*(STACK[0x5740] + 3740) - 76)) << 8)) - 1275068416;
  v27 = STACK[0x5308];
  v28 = v8[1821] - 76;
  LODWORD(STACK[0x5108]) = ((v8[3141] - 76) | (((v28 << 8) | (*(STACK[0x5308] + 1563) << 16) | (v8[5318] - 76)) << 8)) - 1275068416;
  LOBYTE(v9) = *(v23 + 1609);
  LODWORD(STACK[0x54B0]) = (v16 << 16) | ((v8[5022] - 76) << 8) | (*(v27 + 759) - 76);
  v29 = v8[6016];
  LODWORD(STACK[0x5490]) = ((*(v21 + 486) - 76) << 8) | ((v6[2026] - 76) << 16) | (v8[357] - 76);
  v30 = ((*(v26 + 3634) - 76) << 8) | (v29 << 16) | (v6[1404] - 76);
  LODWORD(STACK[0x5470]) = ((v8[3118] - 76) << 16) | ((v5[2936] - 76) << 8) | (*(v21 + 3725) - 76);
  LODWORD(STACK[0x55D0]) = (v30 << 8) - 1275068416;
  LOBYTE(v30) = v12[3763] - 76;
  LODWORD(STACK[0x5560]) = v20;
  LODWORD(STACK[0x54A0]) = (v20 << 8) & 0xFF00FF00 | (v30 << 16) | (v8[1510] - 76);
  LOBYTE(v30) = v5[99];
  LODWORD(STACK[0x5440]) = v24 - 76;
  LODWORD(STACK[0x5430]) = (v30 - 76) << 8;
  LODWORD(STACK[0x5460]) = (v12[1768] - 76);
  LODWORD(STACK[0x5620]) = v25 << 8;
  LODWORD(STACK[0x5510]) = (v12[2716] - 76);
  STACK[0x56C0] = (v8 + 4096);
  LODWORD(STACK[0x5500]) = (v8[5553] - 76);
  STACK[0x57C0] = v8;
  LODWORD(STACK[0x5450]) = v8[190] - 76;
  LODWORD(STACK[0x5590]) = ((v11 << 16) | ((v9 - 76) << 8) | v28) << 8;
  LODWORD(STACK[0x54D0]) = (v5[2261] - 76);
  LODWORD(STACK[0x55A0]) = (*(v26 + 3027) - 76);
  LODWORD(STACK[0x5480]) = (*(v19 + 797) - 76);
  return (*(STACK[0x57D8] + 8 * a4))();
}

uint64_t sub_1004994CC()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  STACK[0x9548] = 0;
  return (*(v1 + 8 * (v0 - 8104)))(v2);
}

uint64_t sub_100499558()
{
  v0 = STACK[0x5A98];
  STACK[0xC8A8] = STACK[0x5A98];
  return (*(STACK[0x57D8] + 8 * ((41 * (((v0 == 0) ^ LODWORD(STACK[0x419C])) & 1)) ^ LODWORD(STACK[0x239C]))))();
}

uint64_t sub_1004995CC(uint64_t a1)
{
  v2 = STACK[0xAE88];
  STACK[0x7B78] = STACK[0xAE88];
  LODWORD(STACK[0xBF6C]) = ((((LODWORD(STACK[0x6E50]) ^ 0xDE6DC841) + 563230655) ^ ((LODWORD(STACK[0x6E50]) ^ 0x16ABA852) - 380348498) ^ (((v1 + 814816435) & 0xCF6EEE3F ^ LODWORD(STACK[0x6E50]) ^ 0x1ADAC096) - 450551943)) - 769883997) & 0xFFFFFFF0 ^ 0xD21C8094;
  STACK[0x7ED0] = v2;
  STACK[0xC880] = 0xAC7FA9961989524CLL;
  LODWORD(STACK[0xCD80]) = -626547512;
  return (*(STACK[0x57D8] + 8 * v1))(a1, 272629776, 410912332, 1543499262, 2265206393, 3965507692, 4221484704, 0x1B3EC18598D49E09);
}

uint64_t sub_100499820(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v16 = *(a7 + v9);
  v17 = (a8 & (v8 + 1) ^ 0x94) & (v9 + 108);
  v18 = ((2 * ((v9 + 108) ^ v10)) ^ 0xA6) & ((v9 + 108) ^ v10) ^ (2 * ((v9 + 108) ^ v10)) & (v11 + 97);
  v19 = (v9 + 108) ^ (2 * ((((v18 ^ v12) & 0x40 | (4 * (v18 ^ v12)) & ~(v18 ^ v12)) ^ 0x50) & (16 * (v18 & (4 * v17) ^ v17)) ^ v18 & (4 * v17) ^ v17));
  *(a3 + v9) = v16 + 77 * (((v19 ^ 0x5A) + 41) ^ ((v19 ^ 0xC5) - 72) ^ ((v19 ^ 0xB) + 122)) + 73;
  HIDWORD(v20) = ((v15 - a4 + ((((300366133 * (v9 + v16) + 736583671) ^ v13) % 0x101) ^ (300366133 * (v9 + v16) + 736583671) ^ v13)) ^ a2) - 1259170158;
  LODWORD(v20) = HIDWORD(v20);
  return (*(STACK[0x57D8] + 8 * (((v9 == 15) * v14) ^ v8)))(a1, (((HIDWORD(v20) + a4 + (v20 >> 30)) ^ (v15 - HIDWORD(v20))) - (HIDWORD(v20) ^ a2)) ^ 0xAE173117 ^ HIDWORD(v20) ^ a2);
}

uint64_t sub_1004999E8@<X0>(int a1@<W8>)
{
  v1 = STACK[0x99B8];
  STACK[0xB500] = (((a1 - 374857804) & 0x1657FFFE) - 769912069 + ((a1 - 1058110168) & 0x3F115777u)) ^ LODWORD(STACK[0x99B8]);
  STACK[0x70C0] = LODWORD(STACK[0x76A0]) ^ 0xD21C8094;
  STACK[0x5CD8] = 0x2369327399A66D95;
  STACK[0x7000] = 0;
  LODWORD(STACK[0xBFE4]) = -769884012;
  return (*(STACK[0x57D8] + 8 * (((v1 != -769884012) | (4 * (v1 != -769884012))) ^ a1)))();
}

uint64_t sub_100499B00()
{
  v1 = STACK[0x6370];
  STACK[0x8398] = STACK[0x6370];
  v2 = STACK[0x5964];
  LOWORD(STACK[0x90CE]) = STACK[0x5964];
  STACK[0xB4B0] = STACK[0xC2F8];
  LODWORD(STACK[0xAAF4]) = v2;
  return (*(STACK[0x57D8] + 8 * ((28142 * (*(v1 - 0x1883660EE814440ELL) - v2 == v0 + 2101962893)) ^ v0)))(4427);
}

uint64_t sub_100499D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LODWORD(STACK[0x5DE8]) = LODWORD(STACK[0x8B54]) + v5;
  v6 = STACK[0x57D8];
  v7 = STACK[0x1C84];
  STACK[0xBE28] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1C84]));
  return (*(v6 + 8 * (v7 ^ 0x1765)))(a1, a2, a3, a4, a5, 0xFDA8E32437622097);
}

uint64_t sub_10049A360()
{
  if (STACK[0xAB88])
  {
    v1 = STACK[0xB980] == 0;
  }

  else
  {
    v1 = 1;
  }

  v2 = v1;
  return (*(STACK[0x57D8] + 8 * (((((v0 + 49) ^ v2) & 1) * (v0 - 21934)) ^ v0)))();
}

uint64_t sub_10049A3C4@<X0>(int a1@<W1>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  LODWORD(STACK[0x5010]) ^= LODWORD(STACK[0x5018]);
  LODWORD(STACK[0x5018]) = LODWORD(STACK[0x5340]) ^ LODWORD(STACK[0x57C0]) ^ (a1 - LODWORD(STACK[0x4F88])) ^ 0x232B3DCE;
  return (*(STACK[0x57D8] + 8 * (v4 ^ 0x1185938E ^ (14049 * (v4 == 993830594)))))(v5, STACK[0xD860] - 0x4DC10458F9981692, 3938692358, a4, 0x774577B10917B521, a2, a3, 0x87AF5D5B03BDC2A6);
}

uint64_t sub_10049A5B4@<X0>(unint64_t a1@<X0>, int a2@<W8>)
{
  LODWORD(STACK[0xDF70]) = v6;
  LOBYTE(STACK[0x9137]) = v4;
  STACK[0x8908] = a1;
  STACK[0xA018] = v3;
  LODWORD(STACK[0x8C0C]) = v7;
  v8 = STACK[0x7ED8];
  STACK[0xB590] = &STACK[0x10120] + STACK[0x7ED8] + 16;
  STACK[0x7ED8] = ((a2 + 735813251) & 0xD424777B) + v8 - 30522;
  STACK[0xC858] = v2;
  STACK[0x6728] = 0;
  STACK[0xCC00] = 0;
  if (v5)
  {
    v9 = v2 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  return (*(STACK[0x57D8] + 8 * ((v10 * ((4 * a2) ^ 0x185BE)) ^ a2)))();
}

uint64_t sub_10049A7B8@<X0>(char a1@<W0>, unsigned __int8 *a2@<X8>)
{
  v11 = (((v3 ^ 0x9FFE8EEC) + 1610707220) ^ ((v3 ^ 0x1F995679) - 530142841) ^ ((v3 ^ 0x3DBEC352) - 1035912018)) - (((v7 ^ (v10 + 3097)) + 412014152) ^ ((v7 ^ 0xF13A6761) + 247830687) ^ ((v7 ^ 0xAB92551E) + 1416473314)) + v8;
  v12 = (16 * v7) ^ 0xDD91BC70;
  a2[v5] = a1 ^ v6;
  a2[((v4 - 897) | 0x814) ^ 0x585E | v2] = ((v12 - 16) >> ((v4 + 59) & 0x57 ^ 0x4E)) ^ 0x1F;
  v13 = &a2[v2];
  v13[9] = ((v12 - 16) >> 16) ^ 0x2E;
  v13[10] = ((((16 * v7) ^ 0xBC70) - 16) >> 8) ^ 0x1E;
  v13[11] = (((16 * v7) ^ 0x70) - 16) ^ 0x92;
  v14 = *a2;
  v13[12] = -66;
  *(v13 + 13) = 15987;
  v13[15] = ((v14 ^ 0xFAu) % (v12 - 16)) ^ 0xE9;
  return (*(STACK[0x57D8] + 8 * (v4 ^ (25 * ((((v11 ^ 0x6DC1E0A3) - 1124699781) ^ v11 ^ ((v11 ^ 0x7D5BF836) - 1402181136) ^ ((v11 ^ 0x61A5895E) - 1332602744) ^ ((v11 ^ v9) - 1899991499)) == v8)))))();
}

uint64_t sub_10049AA18(_BYTE *a1)
{
  *a1 = 1;
  v2 = LOWORD(STACK[0xA750]) - ((2 * LOWORD(STACK[0xA750])) & 0xC0CE) + 24679;
  a1[1] = (v2 >> ((v1 - 112) ^ 0xD3)) ^ 0x60;
  a1[2] = v2 ^ 0x67;
  return (*(STACK[0x57D8] + 8 * (v1 ^ 0x1ED0)))();
}

uint64_t sub_10049AA98()
{
  v2 = *(v0 + 3112);
  v3 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v2 & 0xFFFFFFF8) - 1831847764)) & 0xFFFFFFFFFFFFFFF8));
  v4 = __ROR8__(v2 & 0xFFFFFFFFFFFFFFF8, 8);
  v5 = (v3 + v4 - ((2 * (v3 + v4)) & 0x8E2F531ABF857C22) - 0x38E85672A03D41EFLL) ^ 0x5B89727603306F5;
  v6 = v5 ^ __ROR8__(v3, 61);
  v7 = (__ROR8__(v5, 8) + v6) ^ 0x65F254DD188DB4FCLL;
  v8 = v7 ^ __ROR8__(v6, 61);
  v9 = (__ROR8__(v7, 8) + v8) ^ 0x6FF046966119128DLL;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0xA1B29DC5D776132BLL;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = __ROR8__(v11, 8);
  v14 = __ROR8__((v13 + v12 - ((2 * (v13 + v12)) & 0x9646698A03C4FEA0) + 0x4B2334C501E27F50) ^ 0xA4271484F40737BCLL, 8);
  v15 = (v13 + v12 - ((2 * (v13 + v12)) & 0x9646698A03C4FEA0) + 0x4B2334C501E27F50) ^ 0xA4271484F40737BCLL ^ __ROR8__(v12, 61);
  v16 = (v14 + v15 - ((2 * (v14 + v15)) & 0x54D89A6BF18E45FCLL) + 0x2A6C4D35F8C722FELL) ^ 0xF2ABFE2A32DEFB20;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0x5455012E8AB1C38FLL;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = 3903 * ((((((v20 + v19) & 0xFB1A663EB723986DLL ^ 0xEA1A262094211009) + ((v20 + v19) & 0x4E599C148DC6792 ^ 0x659840489C6283) - 1) ^ 0x8530DEDCD2BF2C6BLL) >> (8 * (v2 & 7u))) ^ *(v0 + 295)) + 4008381;
  *(*(v0 + 4000) + 36222) = *(*(v0 + 4008) + v21 - 5896 * (((1456909 * v21) >> 32) >> 1));
  v22 = *(v0 + 3984) + 9;
  *(v0 + 296) = v22;
  v23 = STACK[0x57D8];
  v24 = *(STACK[0x57D8] + 8 * (STACK[0x4D40] + 3321));
  *(v0 + 3120) = v22;
  *(v0 + 280) = v24;
  return (*(v23 + 8 * (v1 + 9870)))();
}

uint64_t sub_10049AE20@<X0>(uint64_t a1@<X8>)
{
  v5 = v3[4];
  v3[373] = v3[3];
  v3[374] = v5;
  return (*(STACK[0x57D8] + 8 * (((v4 != v1 + a1) | (2 * (v4 != v1 + a1))) ^ v2)))();
}

uint64_t sub_10049AE58(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6, int a7)
{
  v15 = (v7 + v12) >> 16;
  v16 = (v7 + v12 - v15) >> 8;
  v17 = (v7 + v11 - v16 - v15) >> 15;
  v18 = (v7 + v11 - v17 - v16 - v15) >> 3;
  v19 = (v9 + v7 - v18 - v17 - v16 - v15 - v13) ^ v8;
  v20 = (v7 + v10 - v18 - v17 - v16 - v15) >> 15;
  v21 = (v7 + v10 + v20 - v18 - v17 - v16 - v15) >> 6;
  v22 = (v9 + v7 + v20 - v21 - v18 - v17 - v16 - v15 - a7) ^ a3;
  v23 = v7 + v20 + a4;
  v24 = (v23 - v21 - v18 - v17 - v16 - v15) >> 10;
  v25 = v9 + v7 + ((v23 + v24 - v21 - v18 - v17 - v16 - v15) >> 4) + v24 + v20 - v21 - v18 - v17 - v16 - v15 - a2;
  v26 = (v25 ^ 0xB58F2697) - ((v25 ^ 0xB58F2697) >> 8) + (((v25 ^ 0xB58F2697) - ((v25 ^ 0xB58F2697) >> 8)) >> 3);
  v27 = v26 + 1403198580 + ((v26 + 1403198580) >> 14) + ((v26 + 1403198580 + ((v26 + 1403198580) >> 14)) >> 5);
  v28 = v22 ^ v27;
  v29 = v19 ^ v26;
  v30 = (v27 ^ 0x840C6CC4) - ((v27 ^ 0x840C6CC4) >> 14) + (((v27 ^ 0x840C6CC4) - ((v27 ^ 0x840C6CC4) >> 14)) >> 5);
  v31 = v30 + 68127163 + ((v30 + 68127163) >> 14) + ((v30 + 68127163 + ((v30 + 68127163) >> 14)) >> 6);
  v32 = v29 ^ v31;
  v33 = v31 + 1764850293 - ((v31 + 1764850293) >> 9) - ((v31 + 1764850293 - ((v31 + 1764850293) >> 9)) >> 1);
  v34 = v28 ^ v33;
  v35 = v25 ^ a5 ^ v30 ^ (v33 - 2093344818 + ((v33 - 2093344818) >> 11) + ((v33 - 2093344818 + ((v33 - 2093344818) >> 11)) >> 6));
  v36 = v35 & 7 ^ 6;
  v37 = -v36 & 7;
  v38 = (v35 & 7) == 6;
  v39 = 16843009 * ((v29 ^ v31) ^ 0xA2 ^ ((v29 ^ v31 ^ 0xC1A2) >> 8) ^ ((v29 ^ v31 ^ 0x9374C1A2) >> 16) ^ ((v29 ^ ~v31) >> 24));
  v40 = 16843009 * ((v28 ^ v33) ^ 9 ^ ((v28 ^ v33 ^ 0xA009) >> 8) ^ ((v28 ^ v33 ^ 0x3887A009) >> 16) ^ ((v28 ^ v33) >> 24) ^ 0xC8);
  LODWORD(STACK[0x5070]) = v39;
  LODWORD(STACK[0x5060]) = v40;
  v41 = v39 ^ 0x9C9C9C9C ^ v40;
  v42 = STACK[0x50D8];
  v43 = -753371169 * (((v42 ^ 0x95D4921E) - 701433684) ^ ((v42 ^ LODWORD(STACK[0x6D8])) - 1026635781) ^ ((v42 ^ 0xEBD16313) - 1472919129)) - 2060593672;
  v44 = STACK[0x5310];
  LODWORD(STACK[0x5790]) = LODWORD(STACK[0x5390]) ^ 0xBF5EB0A8;
  v45 = (v36 - 1936814417 + ((2 * (v35 & 7)) ^ 0xFFFFFFF3) + 1) ^ LODWORD(STACK[0x5770]);
  v46 = v36 ^ LODWORD(STACK[0x5570]) ^ (2 * v45 - ((4 * v45) & 0x2BF2FB6C) + 368672182);
  LODWORD(STACK[0x5090]) = v46 - 1936814417 - ((2 * v46) & 0x191D1D5E);
  LODWORD(STACK[0x5780]) = ((-753371169 * v41) ^ v43) - ((2 * ((-753371169 * v41) ^ v43)) & 0xBAB430DE);
  v47 = ((v42 ^ 0xA473725) + 1235443089) ^ ((v42 ^ 0xE4F71BEB) - 1491898017) ^ ((v42 ^ 0x119F708C) + 1383799354);
  v48 = *(&off_101353600 + v14 - 10235) - 8;
  v49 = *&v48[4 * v37] ^ (v37 - (v37 ^ 0xAD957B43) - ((2 * (v37 - (v37 ^ 0xAD957B43))) & 0x410862) + 70647345);
  v50 = *(&off_101353600 + v14 - 9757) - 4;
  v51 = (v49 - ((2 * v49) & 0x2980FE52) + 348159785) ^ *&v50[4 * LODWORD(STACK[0x53B0])];
  v52 = STACK[0x50A8];
  v53 = (v51 - ((2 * v51) & 0xABD12CF4) + 1441306234) ^ LODWORD(STACK[0x50A8]) ^ 0x55E8967B;
  LODWORD(STACK[0x5390]) = v53 - ((2 * v53) & 0x4FFD7A5E);
  LODWORD(STACK[0x5308]) = v52 ^ 0x55E8967B;
  v54 = (336859409 * (((v44 ^ 0xB131FF46) - 1035956713) ^ (v44 + 2072870289) ^ ((v44 ^ 0x872EF866) - 195065545)) - 1633871713) ^ (863292485 * v47 - 586379480) ^ (336859409 * v36) ^ (863292485 * v41) ^ (((v37 - ((-2 * v36) & 4) + 1441306234) ^ v52 ^ 0x55E8967B) << 6);
  v55 = v37 ^ LODWORD(STACK[0x5370]) ^ (v54 + 1927629384 - ((2 * v54) & 0xE5CAA884) + 2554);
  LODWORD(STACK[0x5050]) = v55 - ((2 * v55) & 0xABD12CF4);
  v56 = LODWORD(STACK[0x5388]) ^ v44 ^ 0xA85CA9C4 ^ v36;
  v57 = (v41 - ((2 * v41) & 0x2699210) + 120899848) ^ LODWORD(STACK[0x5750]);
  v58 = v41 ^ LODWORD(STACK[0x55B0]);
  v59 = v32 & 0xFE ^ 0xF6;
  LODWORD(STACK[0x5010]) = LODWORD(STACK[0x57C0]) - v59;
  v60 = v58 ^ ((v57 << 6) - ((v57 << 7) & 0x870FFC80) + 1132985955);
  v61 = (LODWORD(STACK[0x5610]) ^ 0x54BEAE8D) + 1193854447 * ((((v52 ^ 0xC1AC799E) + 1807421467) ^ (v52 + 719810053) ^ ((v52 ^ 0x2BC3135F) - 2116781348)) - v37);
  LODWORD(STACK[0x5388]) = 16843009 * v59;
  LODWORD(STACK[0x4F38]) = (16843009 * v59) >> 1;
  v62 = (v32 & 0xFFFFFF01 | (2 * (((16843009 * v59) >> 1) & 0x7F))) ^ 0x7F3CC700;
  v63 = STACK[0x52F0] & 0xFE ^ 0xFFFFFF21;
  v64 = v63 & (LODWORD(STACK[0x5098]) ^ 0x6BB3033) | STACK[0x52F0] & 0xCC;
  v65 = (v36 | v35 & 0xFFFFFFF8) ^ 0x7F3CC7F0;
  v66 = STACK[0x5320];
  v67 = ((LODWORD(STACK[0x5650]) ^ LODWORD(STACK[0x6E0])) - 1878454690) ^ ((LODWORD(STACK[0x5650]) ^ 0x4276AF5F) + 1473359017) ^ ((LODWORD(STACK[0x5650]) ^ 0xD5B702D8) - 1072692944);
  v68 = v63 & (LODWORD(STACK[0x5098]) ^ 0xCC3767B5) | STACK[0x52F0] & 0x4A;
  v69 = v64 ^ 0x25D114F6;
  v70 = (-1085125663 * (v64 ^ 0x25D114F6)) ^ (-1085125663 * (((v66 ^ 0xE77CBD0C) - 793703399) ^ ((v66 ^ 0xD6100BAC) - 505562439) ^ ((v66 ^ 0x120692A3) + 634069944)) + 374861288);
  LODWORD(STACK[0x5610]) = v70 - ((2 * v70) & 0x3E1AC7FC);
  v71 = v32 ^ 0x7F3CC7F6;
  LODWORD(STACK[0x5570]) = v68 ^ 0xEF5D43F6;
  v72 = ((v68 ^ 0xEF5D43F6) - ((2 * (v68 ^ 0xEF5D43F6)) & 0xD6B0D5D0) - 346527000) ^ v66 ^ 0xC8324EEB;
  v73 = ((~(v72 >> 2) | 0xE94F2A2F) + (v72 >> 3) - 346526999) ^ v66 ^ 0xC8324EEB;
  v74 = (v66 ^ 0x236A2403u) % 0x101;
  v75 = STACK[0x54E0];
  v76 = STACK[0x5128];
  v77 = (LODWORD(STACK[0x54E0]) ^ 0x46A4E327) + LODWORD(STACK[0x5128]) + v67;
  LODWORD(STACK[0x5320]) = *&v48[4 * v74];
  LODWORD(STACK[0x5088]) = v35;
  v78 = v35 ^ 0x7F3CC7F6;
  LODWORD(STACK[0x5650]) = ((LODWORD(STACK[0x5338]) ^ 0xFBDD76FF) + 1695303234) ^ LODWORD(STACK[0x5338]) ^ ((LODWORD(STACK[0x5338]) ^ 0xC3D45D23) + 1560636830) ^ ((LODWORD(STACK[0x5338]) ^ 0xA6D89B22) + 940157853) ^ ((LODWORD(STACK[0x5338]) ^ 0xFFFF7FBF) + 1630424834) ^ (((826190131 * v65) ^ (826190131 * v78)) - ((2 * ((826190131 * v65) ^ (826190131 * v78))) & 0x156BBC5C) + 179691054);
  v79 = v74 - (v74 ^ 0xAD957B43) - ((2 * (v74 - (v74 ^ 0xAD957B43))) & 0x410C62);
  STACK[0x4DE8] = v50;
  v80 = *&v50[4 * (v69 % 0x101)];
  HIDWORD(v81) = v80 ^ 0xC07F29;
  LODWORD(v81) = v80 ^ 0x14000000;
  LODWORD(STACK[0x5008]) = (v75 ^ 0xB95B1CD8) - v76;
  v82 = (v81 >> 26) ^ ((v69 % 0x101) << 6);
  LODWORD(STACK[0x5338]) = v34;
  LODWORD(STACK[0x50A8]) = v36;
  v83 = v34 ^ (v44 << 7) ^ v56 & 0x2B1F54F2 ^ ((v56 & 0xD4E0AB0D ^ (v36 << 7) & 0x300) & 0xFFFFFF7F | ((v36 & 1) << 7));
  v84 = (v32 - ((2 * v32) & 0x7C12FCB2) - 1106674087) ^ LODWORD(STACK[0x5760]);
  v85 = (-1195059341 * v84 - ((1904848614 * v84) & 0xBC2171F8) - 569329412) ^ LODWORD(STACK[0x5298]);
  STACK[0x57C0] = STACK[0xD7E8];
  if (v38)
  {
    v86 = 0;
  }

  else
  {
    v86 = 255;
  }

  LODWORD(STACK[0x5360]) = v37;
  v87 = v86 << v37;
  if (v38)
  {
    v88 = 0;
  }

  else
  {
    v88 = ~v87;
  }

  LODWORD(STACK[0x5370]) = v32 ^ 0xFC8C7783;
  LODWORD(STACK[0x57B0]) = 16843009 * v87;
  LODWORD(STACK[0x5298]) = -1795162112 * v87;
  LODWORD(STACK[0x5040]) = (v32 & v88);
  LODWORD(STACK[0x5030]) = LODWORD(STACK[0x5780]) + 1566185583;
  LODWORD(STACK[0x5058]) = LODWORD(STACK[0x5790]) + 468013936;
  LODWORD(STACK[0x5098]) = LODWORD(STACK[0x5390]) - 1476477649;
  LODWORD(STACK[0x5028]) = LODWORD(STACK[0x5050]) + 1441306234;
  v89 = STACK[0x5380];
  LODWORD(STACK[0x4FF8]) = (LODWORD(STACK[0x5380]) ^ 0x5904108D) - 1290842333;
  LODWORD(STACK[0x4FF0]) = (v89 ^ LODWORD(STACK[0x6DC])) + 911213544;
  LODWORD(STACK[0x4FE8]) = (v89 ^ 0xFE5413EB) + 341789765;
  LODWORD(STACK[0x5000]) = v89 ^ 0x6EFFFF7E;
  LODWORD(STACK[0x5018]) = (2 * v60) & 0x86699210;
  LODWORD(STACK[0x4FD0]) = v60 + 1127532808;
  LODWORD(STACK[0x5790]) = v62;
  LODWORD(STACK[0x4FC0]) = ((v62 ^ v71) << 6) & 0xDC382B00;
  LODWORD(STACK[0x4FA8]) = 32 * (v62 ^ v71) - 300149371;
  LODWORD(STACK[0x5020]) = LODWORD(STACK[0x5610]) - 1626512386;
  LODWORD(STACK[0x5780]) = v71;
  LODWORD(STACK[0x4FB8]) = v71 - 2 * ((v32 ^ 0x7F3CC7F6) & 0x1C2BB067 ^ v32 & 1) - 1674858394;
  LODWORD(STACK[0x4FB0]) = (2 * v73) & 0x5442B072;
  LODWORD(STACK[0x4FA0]) = v73 - 1440655303;
  LODWORD(STACK[0x4FC8]) = v79 + 70647345;
  LODWORD(STACK[0x5038]) = LODWORD(STACK[0x53B8]) ^ 0x1E3D5144;
  LODWORD(STACK[0x5050]) = __ROR4__(v82 ^ 0x56CA5850, 6) ^ 0xC9EA2122;
  v90 = LODWORD(STACK[0x55C0]) - 590628503;
  LODWORD(STACK[0x5048]) = v78;
  LODWORD(STACK[0x55C0]) = v61 - 1996464666 - ((2 * (v61 - 1996464666)) & 0x99D8DDC0) - 856920352;
  LODWORD(STACK[0x5390]) = v65;
  LODWORD(STACK[0x5128]) = v90 + v78 - v65 - 2175;
  LODWORD(STACK[0x4FE0]) = (2 * v83) & 0x21656864;
  LODWORD(STACK[0x4FD8]) = v83 + 280146994;
  LODWORD(STACK[0x55B0]) = v77;
  LODWORD(STACK[0x5610]) = v77 - 130589658;
  v91 = LODWORD(STACK[0x56E0]) ^ 0xD888BE71;
  LODWORD(STACK[0x4E90]) = v85;
  LODWORD(STACK[0x4E88]) = v85 ^ 0xC3DBB132;
  return (*(STACK[0x57D8] + 8 * v14))(0xDA8EDC8B27773DCALL, (v14 + 7235), v91, LODWORD(STACK[0x5720]) ^ 0xF8F7DC79, 0xD8C63E1A340BE898, 2137419295, 0xE444702B8C3E346FLL, 0xFE47EF8899D65ED2);
}

uint64_t sub_10049C1FC@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + v2 + 16);
  v6 = (a1 + v2);
  *v6 = *(v1 + v2);
  v6[1] = v5;
  return (*(STACK[0x57D8] + 8 * ((27164 * (v2 + 32 == v3)) ^ v4)))();
}

uint64_t sub_10049C234()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  return (*(v1 + 8 * (v0 - 8008)))(v2);
}

uint64_t sub_10049C284@<X0>(__int16 a1@<W8>)
{
  v2 = STACK[0x51B8] - 15590;
  LOWORD(STACK[0xB8F2]) = a1;
  LOWORD(STACK[0x86F6]) = v1;
  v3 = LODWORD(STACK[0xE5C0]) - 1603322843;
  LODWORD(STACK[0xD8DC]) = v3;
  return (*(STACK[0x57D8] + 8 * (v2 ^ (2 * ((v1 | ((v1 < 0x570Eu) << 16)) + v3 - 22286 <= LODWORD(STACK[0xE5B8]))))))();
}

uint64_t sub_10049C32C()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x57D8];
  STACK[0x8580] = *(STACK[0x57D8] + 8 * (STACK[0x51B8] - 20061));
  return (*(v1 + 8 * (v0 - 18047)))();
}

uint64_t sub_10049C588@<X0>(int a1@<W8>)
{
  v3 = a1 + 1;
  v4 = v3 + 583138746 < v2;
  if (v2 < 0x22C1FDBA != v3 >= 0xDD3E0246)
  {
    v4 = v2 < 0x22C1FDBA;
  }

  return (*(STACK[0x57D8] + 8 * ((231 * v4) ^ v1)))();
}

uint64_t sub_10049D2BC@<X0>(unsigned int a1@<W8>)
{
  v7 = 8 * (v4 + v3 + ((v3 < a1) << 32) + 0x68A606E7FA8AEF5ELL) - 0x4530373FE4464E80;
  v8 = *(v5 + v7);
  v9 = 0x9DEFDDF4551BA1F2 - (((v8 ^ 0xA5FD066BD31840E6) + 0x5CC65F37D135FA7) ^ ((v8 ^ 0x94FFD17F7321E17BLL) + 0x34CEB2E7DD2AFE3CLL) ^ ((v8 ^ 0x4B78AD6EDA43DBE7) - 0x14B631098BB73B58));
  v10 = (v9 ^ 0xA4D5B56AF9C03DEALL) & (2 * (v9 & 0xB6D5B668F9D03DC3)) ^ v9 & 0xB6D5B668F9D03DC3;
  v11 = ((2 * (v9 ^ 0xC1D7F56A9B60646ELL)) ^ 0xEE048604C560B35ALL) & (v9 ^ 0xC1D7F56A9B60646ELL) ^ (2 * (v9 ^ 0xC1D7F56A9B60646ELL)) & 0x7702430262B059ACLL;
  v12 = v11 ^ 0x11024102229048A5;
  v13 = (v11 ^ 0x6600020040001108) & (4 * v10) ^ v10;
  v14 = ((4 * v12) ^ 0xDC090C098AC166B4) & v12 ^ (4 * v12) & 0x7702430262B059ACLL;
  v15 = (v14 ^ 0x54000000028040A0) & (16 * v13) ^ v13;
  v16 = ((16 * (v14 ^ 0x2302430260301909)) ^ 0x702430262B059AD0) & (v14 ^ 0x2302430260301909) ^ (16 * (v14 ^ 0x2302430260301909)) & 0x7702430262B059A0;
  v17 = (v16 ^ 0x7000000222001800) & (v15 << 8) ^ v15;
  v18 = (((v16 ^ 0x702430040B0412DLL) << 8) ^ 0x2430262B059AD00) & (v16 ^ 0x702430040B0412DLL) ^ ((v16 ^ 0x702430040B0412DLL) << 8) & 0x7702430262B05900;
  v19 = v17 ^ 0x7702430262B059ADLL;
  v20 = v18 ^ 0x7500410042A050ADLL;
  v21 = (0x4D01DEE15D353932 - v8) ^ v8 ^ (((0x4D01DEE15D353932 - v8) ^ 0xF7D947438FACC6C8) + 0x4527665D2D660006) ^ (((0x4D01DEE15D353932 - v8) ^ 0x18703FA6C374AD51) - 0x5571E1479E419463) ^ (((0x4D01DEE15D353932 - v8) ^ 0xFC5E79F3EED265D1) + 0x4EA058ED4C18A31DLL) ^ (((0x4D01DEE15D353932 - v8) ^ 0x5EF6DFF7FF3F377ALL) - 0x13F70116A20A0E48) ^ v9 ^ (2 * (((v19 ^ (v18 ^ 0x202020220100000) & (v17 << 16)) << 32) & 0x7702430200000000 ^ v19 ^ (v18 ^ 0x202020220100000) & (v17 << 16) ^ (((v19 ^ (v18 ^ 0x202020220100000) & (v17 << 16)) << 32) ^ 0x62B059AD00000000) & ((v20 << 16) & 0x7702430200000000 ^ 0x3400010200000000 ^ ((v20 << 16) ^ 0x430262B000000000) & v20)));
  *(v6 + v7) = (((v21 ^ 0xFDB2018AD9A01735) + 0x3676E51178F0E2CFLL) ^ ((v21 ^ 0x5AA830F8F43C9136) - 0x6E932B9CAA939B32) ^ ((v21 ^ 0x76CA5DFF4C1931A8) - 0x42F1469B12B63BACLL)) + 0x6065F263B9A53829;
  v22 = v3 + 1805639127 < v2;
  if (v2 < 0x6D9D5B92 != v3 + 1805639127 < 0x6D9D5B92)
  {
    v22 = v2 < 0x6D9D5B92;
  }

  return (*(STACK[0x57D8] + 8 * (!v22 | (16 * !v22) | v1)))();
}

uint64_t sub_10049EB30()
{
  v0 = STACK[0x51B8] - 22613;
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9207)))(STACK[0xB198]);
  STACK[0xB198] = 0;
  return (*(v1 + 8 * (v0 ^ 0xD83)))(v2);
}

uint64_t sub_10049EB80()
{
  v1 = LODWORD(STACK[0x53E8]) ^ LODWORD(STACK[0x4FE0]) ^ LODWORD(STACK[0x4DB8]) ^ __ROR4__(STACK[0x4DB0], 8);
  LODWORD(STACK[0x5540]) = STACK[0x5540] ^ STACK[0x5460];
  LODWORD(STACK[0x53E8]) = LODWORD(STACK[0x4DA8]) + LODWORD(STACK[0x4DC0]);
  LODWORD(STACK[0x4FE0]) = STACK[0x4E00] + STACK[0x4E10];
  v2 = STACK[0x4A88];
  v4 = *(STACK[0x4A88] + 12);
  v3 = STACK[0x4A88] + 12;
  v5 = 2 * (v3 & 0xFFFFFFF8);
  v6 = *STACK[0x51E8];
  v7 = *STACK[0x51F0];
  v8 = *(v7 + (v6 & ((v3 & 0xFFFFFFF8 ^ 0x37FF9624) - 1304703167 + (v5 | 0x9000D3B3))));
  v9 = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  v10 = v6 & 0xFFFFFFF8;
  v11 = *(v7 + (v6 & 0xFFFFFFF8 & ((v3 & 0xFFFFFFF8 ^ 0x62A80B27) + 395587059 + (v5 & 0xC5501640))));
  v12 = (0x3183AFA8B4C5D683 - ((v8 + v9) | 0x3183AFA8B4C5D683) + ((v8 + v9) | 0xCE7C50574B3A297CLL)) ^ 0x76F45183AAFD4A2FLL;
  v13 = v12 ^ __ROR8__(v8, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0x38C8B16AE7056877;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = (((2 * (v11 + v9)) & 0x432270121869B080) - (v11 + v9) - 0x219138090C34D841) ^ 0x66E6C622120C44ECLL;
  v17 = v16 ^ __ROR8__(v11, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0x38C8B16AE7056877;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (__ROR8__(v14, 8) + v15) ^ 0xE580B17D8CC5E551;
  v22 = v21 ^ __ROR8__(v15, 61);
  v23 = (0x76B9052E87F55E86 - ((v20 + v19) | 0x76B9052E87F55E86) + ((v20 + v19) | 0x8946FAD1780AA179)) ^ 0x6CC64BACF4CF4428;
  v24 = v23 ^ __ROR8__(v19, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (__ROR8__(v21, 8) + v22) ^ 0xE1A1FD5BD155F97ALL;
  v27 = v26 ^ __ROR8__(v22, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0xDA604B0C03A2BF99;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (((2 * (v25 + v24)) & 0x945C8941721761BCLL) - (v25 + v24) - 0x4A2E44A0B90BB0DFLL) ^ 0x5470460497A1B65BLL;
  v31 = v30 ^ __ROR8__(v24, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (__ROR8__(v28, 8) + v29) ^ 0xFA35E2CDCB3E31C7;
  v34 = v33 ^ __ROR8__(v29, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0xD2F00CE620E5D3AELL;
  v36 = (((2 * (v32 + v31)) & 0xB185D79A88C8D76ALL) - (v32 + v31) - 0x58C2EBCD44646BB6) ^ 0x7D5D5F3EB8392BD3;
  v37 = v36 ^ __ROR8__(v31, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (((2 * (v38 + v37)) & 0xD904F393E07C6406) - (v38 + v37) - 0x6C8279C9F03E3204) ^ 0x694864FBC4FFFC3BLL;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (((2 * (v41 + v40)) & 0x71E0112D0D1C7260) - (v41 + v40) - 0x38F00896868E3931) ^ 0x15FFFB8F59941561;
  v43 = __ROR8__(v42, 8) + (v42 ^ __ROR8__(v40, 61));
  LOBYTE(v3) = 8 * (v3 & 7);
  HIDWORD(v41) = (((__ROR8__(v35, 8) + (v35 ^ __ROR8__(v34, 61))) ^ 0xF4730B31AE70757BLL) >> v3) ^ v4;
  LODWORD(v41) = ((((0x3FBB82723D58DE6DLL - (v43 | 0x3FBB82723D58DE6DLL) + (v43 | 0xC0447D8DC2A72192)) ^ 0x343776BC6CD754E9) >> v3) ^ v4) << 24;
  v44 = STACK[0x5750];
  v45 = LODWORD(STACK[0x5750]) ^ 0x8119FFF8;
  LODWORD(v43) = ((v45 ^ LODWORD(STACK[0x5370])) - 449890787 - ((2 * (v45 ^ LODWORD(STACK[0x5370]))) & 0xCA5E6C3A)) ^ 0x6436C9E5;
  LODWORD(STACK[0x5460]) = v43;
  LODWORD(v43) = ((v43 & 0x75 ^ 0x75) + (v43 & 0x75) - ((2 * ((v43 & 0x75 ^ 0x75) + (v43 & 0x75))) & 0x50) + 40) & 0x7F;
  v46 = STACK[0x57A0];
  v47 = *(STACK[0x57A0] + (((v41 >> 27) - ((2 * (v41 >> 27)) & 0xD2) - 23) ^ 0x2Bu) + 1024);
  LODWORD(v43) = (((v43 ^ 0xFFFFFFF4) + 52) ^ ((v43 ^ 0xFFFFFF9B) + 93) ^ ((v43 ^ 0x47) - 127)) + 76;
  v48 = (((v47 ^ 0xFFFFFFBD) + 104) ^ ((v47 ^ 0x16) - 51) ^ ((v47 ^ 0x7B) - 94)) - 8;
  LODWORD(STACK[0x4DC0]) = -49 * (115 * v43 - 4 * v48) + v48 * v43;
  v49 = STACK[0x5680];
  v50 = STACK[0x5420];
  if (STACK[0x5680])
  {
    v50 = STACK[0x5430];
  }

  v51 = STACK[0x5440];
  if (v49)
  {
    v52 = STACK[0x5378];
  }

  else
  {
    v51 = STACK[0x4E08];
    v52 = v1;
  }

  if (v49)
  {
    v53 = STACK[0x5288];
  }

  else
  {
    v1 = STACK[0x5358];
    v53 = STACK[0x5340];
  }

  if (v49)
  {
    v54 = STACK[0x5270];
  }

  else
  {
    v54 = STACK[0x5280];
  }

  if (v49)
  {
    v55 = STACK[0x5510];
  }

  else
  {
    v55 = STACK[0x5278];
  }

  if ((v49 & 2) != 0)
  {
    v56 = v50;
  }

  else
  {
    v56 = v51;
  }

  LODWORD(STACK[0x4E00]) = v56;
  if ((v49 & 2) != 0)
  {
    v50 = v51;
  }

  LODWORD(STACK[0x5420]) = v50;
  v57 = STACK[0x4E88];
  if ((v49 & 2) != 0)
  {
    v57 = STACK[0x4E78];
  }

  LODWORD(STACK[0x4E08]) = v57;
  v58 = STACK[0x5268];
  if ((v49 & 2) != 0)
  {
    v58 = STACK[0x5240];
  }

  LODWORD(STACK[0x4E78]) = v58;
  v59 = STACK[0x5250];
  if ((v49 & 2) != 0)
  {
    v59 = STACK[0x5228];
  }

  LODWORD(STACK[0x5280]) = v59;
  v60 = STACK[0x4EB8];
  if ((v49 & 2) != 0)
  {
    v61 = STACK[0x4EB8];
  }

  else
  {
    v61 = v52;
  }

  LODWORD(STACK[0x5430]) = v61;
  if ((v49 & 2) != 0)
  {
    v60 = v52;
  }

  LODWORD(STACK[0x5240]) = v60;
  v62 = STACK[0x5258];
  if ((v49 & 2) == 0)
  {
    v62 = STACK[0x5230];
  }

  v63 = STACK[0x4E90];
  if ((v49 & 2) != 0)
  {
    v64 = v1;
  }

  else
  {
    v64 = STACK[0x4E90];
  }

  LODWORD(STACK[0x5228]) = v64;
  if ((v49 & 2) == 0)
  {
    v63 = v1;
  }

  LODWORD(STACK[0x5258]) = v63;
  v65 = STACK[0x4EA8];
  if ((v49 & 2) != 0)
  {
    v65 = STACK[0x4EA0];
  }

  LODWORD(STACK[0x4EA0]) = v65;
  v66 = STACK[0x5260];
  if ((v49 & 2) != 0)
  {
    v66 = STACK[0x5078];
  }

  LODWORD(STACK[0x4EB8]) = v66;
  v67 = STACK[0x5140];
  v68 = STACK[0x5100];
  if ((v49 & 2) != 0)
  {
    v69 = STACK[0x5100];
  }

  else
  {
    v69 = STACK[0x5140];
  }

  LODWORD(STACK[0x5340]) = v69;
  if ((v49 & 2) != 0)
  {
    v70 = v67;
  }

  else
  {
    v70 = v68;
  }

  LODWORD(STACK[0x56C0]) = v70;
  v71 = STACK[0x4EB0];
  if ((v49 & 2) != 0)
  {
    v72 = STACK[0x4EB0];
  }

  else
  {
    v72 = v53;
  }

  LODWORD(STACK[0x4E90]) = v72;
  if ((v49 & 2) != 0)
  {
    v73 = v53;
  }

  else
  {
    v73 = v71;
  }

  LODWORD(STACK[0x4E88]) = v73;
  v74 = STACK[0x50F0];
  if ((v49 & 2) != 0)
  {
    v74 = STACK[0x4EF0];
  }

  LODWORD(STACK[0x4EA8]) = v74;
  v75 = STACK[0x50F8];
  if ((v49 & 2) != 0)
  {
    v75 = STACK[0x4EE8];
  }

  LODWORD(STACK[0x4EB0]) = v75;
  v76 = STACK[0x50E8];
  if ((v49 & 2) != 0)
  {
    v77 = STACK[0x50E8];
  }

  else
  {
    v77 = STACK[0x4EE0];
  }

  if ((v49 & 2) != 0)
  {
    v76 = STACK[0x4EE0];
  }

  LODWORD(STACK[0x5510]) = v76;
  v78 = STACK[0x4ED8];
  if ((v49 & 2) == 0)
  {
    v78 = STACK[0x4E80];
  }

  LODWORD(STACK[0x5288]) = v78;
  if ((v49 & 2) != 0)
  {
    v79 = v55;
  }

  else
  {
    v79 = v54;
  }

  LODWORD(STACK[0x5078]) = v79;
  if ((v49 & 2) != 0)
  {
    v80 = v54;
  }

  else
  {
    v80 = v55;
  }

  LODWORD(STACK[0x4ED8]) = v80;
  v81 = STACK[0x4EC8];
  if ((v49 & 2) == 0)
  {
    v81 = STACK[0x4E18];
  }

  LODWORD(STACK[0x5358]) = v81;
  v82 = STACK[0x4DF0];
  if ((v49 & 2) == 0)
  {
    v82 = STACK[0x4DD8];
  }

  LODWORD(STACK[0x4EE0]) = v82;
  v83 = STACK[0x4ED0];
  if ((v49 & 2) == 0)
  {
    v83 = STACK[0x4EC0];
  }

  LODWORD(STACK[0x5270]) = v83;
  LODWORD(STACK[0x5750]) = v44;
  LODWORD(STACK[0x5100]) = (v62 ^ v44) - 449890787 - ((2 * (v62 ^ v44)) & 0xCA5E6C3A);
  LODWORD(STACK[0x5378]) = v44 ^ 0x78E77471;
  LODWORD(STACK[0x50F8]) = (LODWORD(STACK[0x4DC8]) ^ v44 ^ 0x78E77471) - 449890787 - ((2 * (LODWORD(STACK[0x4DC8]) ^ v44 ^ 0x78E77471)) & 0xCA5E6C3A);
  LODWORD(STACK[0x4EF0]) = (LODWORD(STACK[0x4DD0]) ^ v44) - 449890787 - ((2 * (LODWORD(STACK[0x4DD0]) ^ v44)) & 0xCA5E6C3A);
  LODWORD(STACK[0x5268]) = (LODWORD(STACK[0x5320]) ^ v44) - 449890787 - ((2 * (LODWORD(STACK[0x5320]) ^ v44)) & 0xCA5E6C3A);
  LODWORD(STACK[0x4E10]) = v45;
  LODWORD(STACK[0x5250]) = (LODWORD(STACK[0x4DF8]) ^ v45) - 449890787 - ((2 * (LODWORD(STACK[0x4DF8]) ^ v45)) & 0xCA5E6C3A);
  LODWORD(STACK[0x5230]) = (v77 ^ v45) - 449890787 - ((2 * (v77 ^ v45)) & 0xCA5E6C3A);
  v84 = *(v7 + (((((v2 + 5) & 0xF7C70F8 | 0xF0838F01) + 2050767130 + ((v2 + 5) & 0xF0838F00 | 0xF7C70FF)) & v6) & 0xFFFFFFFFFFFFFFF8));
  v85 = __ROR8__((v2 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v86 = (v84 + v85 - ((2 * (v84 + v85)) & 0x48314049353898C2) - 0x5BE75FDB6563B39FLL) ^ 0x1C90A1F07B5B2F32;
  v87 = v86 ^ __ROR8__(v84, 61);
  v88 = __ROR8__(v86, 8);
  v89 = (((2 * (v88 + v87)) | 0xF7FDA4823378BFE0) - (v88 + v87) - 0x7BFED24119BC5FF0) ^ 0x4336632BFEB93787;
  v90 = v89 ^ __ROR8__(v87, 61);
  v91 = __ROR8__(v89, 8);
  v92 = (((2 * ((v91 + v90) ^ 0x4001959597736FC5)) | 0xA140AD096E3432E0) - ((v91 + v90) ^ 0x4001959597736FC5) + 0x2F5FA97B48E5E690) ^ 0x7521726CACAC93E4;
  v93 = v92 ^ __ROR8__(v90, 61);
  v94 = (__ROR8__(v92, 8) + v93) ^ 0xE1A1FD5BD155F97ALL;
  v95 = v94 ^ __ROR8__(v93, 61);
  v96 = __ROR8__(v94, 8);
  v97 = (((2 * (v96 + v95)) | 0xA2938EE365836724) - (v96 + v95) - 0x5149C771B2C1B392) ^ 0x8B298C7DB1630C0BLL;
  v98 = v97 ^ __ROR8__(v95, 61);
  v99 = __ROR8__(v97, 8);
  v100 = (((2 * (v99 + v98)) & 0x95A86AAFD0464D44) - (v99 + v98) - 0x4AD43557E82326A3) ^ 0x4F1E2865DCE2E89ALL;
  v101 = v100 ^ __ROR8__(v98, 61);
  v102 = (__ROR8__(v100, 8) + v101) ^ 0xD2F00CE620E5D3AELL;
  v103 = __ROR8__(v102, 8);
  v104 = __ROR8__(v101, 61);
  v105 = STACK[0x5490];
  v106 = *(STACK[0x5490] + ((((v103 + (v102 ^ v104) - ((2 * (v103 + (v102 ^ v104))) & 0x238012D47074E7A4) - 0x6E3FF695C7C58C2ELL) ^ 0x65B3025B964A06A9) >> (8 * ((v2 + 5) & 7))) ^ *(v2 + 5)));
  LODWORD(v102) = v106 & 0xFFFFFFC9 ^ 0x2B;
  LODWORD(STACK[0x5278]) = v106 ^ (2 * ((v106 ^ 0x7A) & (2 * ((v106 ^ 0x7A) & (2 * ((v106 ^ 0x7A) & (2 * ((v106 ^ 0x7A) & (2 * ((v106 ^ 0x7A) & (2 * (((2 * v106) & 0x76 ^ 0x32) & (v106 ^ 0x72) ^ v102)) ^ v102)) ^ v102)) ^ v102)) ^ v102)) ^ v102));
  v107 = *(v7 + (((((v2 + 9) & 0xFFFFFFF8 ^ 0x1B5B3C9F) + 1591803003 + ((2 * ((v2 + 9) & 0xFFFFFFF8)) & 0x36B67930)) & v6) & 0xFFFFFFFFFFFFFFF8));
  v108 = __ROR8__((v2 + 9) & 0xFFFFFFFFFFFFFFF8, 8);
  v109 = (((2 * (v107 + v108)) & 0x45F6B25AD87349FELL) - (v107 + v108) - 0x22FB592D6C39A500) ^ 0x658CA70672013853;
  v110 = v109 ^ __ROR8__(v107, 61);
  v111 = (__ROR8__(v109, 8) + v110) ^ 0x38C8B16AE7056877;
  v112 = v111 ^ __ROR8__(v110, 61);
  v113 = __ROR8__(v111, 8);
  v114 = (v113 + v112 - ((2 * (v113 + v112)) & 0xCBB85EB6290A29BCLL) + 0x65DC2F5B148514DELL) ^ 0x805C9E269840F18FLL ^ __ROR8__(v112, 61);
  v115 = (__ROR8__((v113 + v112 - ((2 * (v113 + v112)) & 0xCBB85EB6290A29BCLL) + 0x65DC2F5B148514DELL) ^ 0x805C9E269840F18FLL, 8) + v114) ^ 0xE1A1FD5BD155F97ALL;
  v116 = v115 ^ __ROR8__(v114, 61);
  v117 = (__ROR8__(v115, 8) + v116) ^ 0xDA604B0C03A2BF99;
  v118 = v117 ^ __ROR8__(v116, 61);
  v119 = __ROR8__(v117, 8);
  v120 = __ROR8__((((2 * (v119 + v118)) | 0xA76FF1E6750E15EELL) - (v119 + v118) - 0x53B7F8F33A870AF7) ^ 0xA9821A3EF1B93B30, 8);
  v121 = (((2 * (v119 + v118)) | 0xA76FF1E6750E15EELL) - (v119 + v118) - 0x53B7F8F33A870AF7) ^ 0xA9821A3EF1B93B30 ^ __ROR8__(v118, 61);
  v122 = *(v105 + ((((__ROR8__((v120 + v121) ^ 0xD2F00CE620E5D3AELL, 8) + ((v120 + v121) ^ 0xD2F00CE620E5D3AELL ^ __ROR8__(v121, 61))) ^ 0xF4730B31AE70757BLL) >> (8 * ((v2 + 9) & 7))) ^ *(v2 + 9)));
  LOBYTE(v117) = v122 & 0x9F ^ 0x52;
  v123 = *(v2 + 11);
  v124 = (((v2 + 11) & 0xFFFFFFF8) + 2050767130) & 0xFFFFFFFFFFFFFFF8;
  v125 = *(v7 + (v6 & v124));
  v126 = __ROR8__((v2 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v127 = (v125 + v126) ^ 0xB88801D4E1C76353;
  v128 = v127 ^ __ROR8__(v125, 61);
  v129 = __ROR8__(v127, 8);
  v130 = (v129 + v128 - ((2 * (v129 + v128)) & 0x171478C241E4084ALL) + 0xB8A3C6120F20425) ^ 0x33428D0BC7F76C52;
  v131 = v130 ^ __ROR8__(v128, 61);
  v132 = __ROR8__(v130, 8);
  v133 = (((2 * (v132 + v131)) & 0xC532872A918F4EALL) - (v132 + v131) + 0x79D66BC6AB73858ALL) ^ 0x9C56DABB27B660DBLL;
  v134 = v133 ^ __ROR8__(v131, 61);
  v135 = (__ROR8__(v133, 8) + v134) ^ 0xE1A1FD5BD155F97ALL;
  v136 = __ROR8__(v135, 8);
  v137 = v135 ^ __ROR8__(v134, 61);
  v138 = (v136 + v137 - ((2 * (v136 + v137)) & 0x6601105CFC67AAD2) - 0x4CFF77D181CC2A97) ^ 0x6960C3227D916AF0;
  v139 = v138 ^ __ROR8__(v137, 61);
  v140 = __ROR8__(v138, 8);
  v141 = (((2 * (v140 + v139)) & 0x7EBF95BB9BE726B4) - (v140 + v139) + 0x40A03522320C6CA5) ^ 0xBA95D7EFF9325D62;
  v142 = v141 ^ __ROR8__(v139, 61);
  v143 = __ROR8__(v141, 8);
  v144 = (0x458D4ADD39EB56C9 - ((v143 + v142) | 0x458D4ADD39EB56C9) + ((v143 + v142) | 0xBA72B522C614A936)) ^ 0x6882B9C4E6F17A98;
  v145 = v144 ^ __ROR8__(v142, 61);
  v146 = __ROR8__(v144, 8);
  LOBYTE(v136) = 8 * ((v2 + 11) & 7);
  LODWORD(v102) = (((0xC0C242D3958C276BLL - ((v146 + v145) ^ 0xDBA73102DB59EF9 | 0xC0C242D3958C276BLL) + ((v146 + v145) ^ 0xDBA73102DB59EF9 | 0x3F3DBD2C6A73D894)) ^ 0xC6F4C50DE9B63316) >> v136) ^ v123;
  LODWORD(v144) = LODWORD(STACK[0x5238]) + 55 * (((v102 ^ 0xFFFFFFD7) - 27) ^ ((v102 ^ 0xFFFFFFB3) - 127) ^ ((v102 ^ 0x64) + 88));
  LOBYTE(v145) = v144 & 0x11 ^ 0x92;
  v147 = *(v2 + 6);
  LODWORD(STACK[0x5260]) = 2050767131;
  LODWORD(STACK[0x4DB8]) = v10;
  v148 = *(v7 + (v10 & (((v2 + 6) & 0x8FEBA9F8 | 0x70145601) + 2050767131 + ((v2 + 6) & 0x70145600 | 0x8FEBA9FE))));
  v149 = (v144 ^ 0x6C) & (2 * ((v144 ^ 0x6C) & (2 * ((v144 ^ 0x6C) & (2 * ((v144 ^ 0x6C) & (2 * ((v144 ^ 0x6C) & (2 * ((v144 ^ 0x6C) & (2 * v144) & 0x5A ^ v145)) ^ v145)) ^ v145)) ^ v145)) ^ v145)) ^ v145;
  v150 = __ROR8__((v2 + 6) & 0xFFFFFFFFFFFFFFF8, 8);
  v151 = (((2 * (v148 + v150)) & 0x5BC61E3D7CBEC96ELL) - (v148 + v150) + 0x521CF0E141A09B48) ^ 0xEA94F135A067F81BLL;
  v152 = v151 ^ __ROR8__(v148, 61);
  v153 = __ROR8__(v151, 8);
  v154 = (((2 * (v153 + v152)) & 0xB7E61B1C211A60D6) - (v153 + v152) - 0x5BF30D8E108D306CLL) ^ 0x9CC4431B0877A7E3 ^ __ROR8__(v152, 61);
  v155 = (__ROR8__((((2 * (v153 + v152)) & 0xB7E61B1C211A60D6) - (v153 + v152) - 0x5BF30D8E108D306CLL) ^ 0x9CC4431B0877A7E3, 8) + v154) ^ 0xE580B17D8CC5E551;
  v156 = v155 ^ __ROR8__(v154, 61);
  v157 = (__ROR8__(v155, 8) + v156) ^ 0xE1A1FD5BD155F97ALL;
  v158 = v157 ^ __ROR8__(v156, 61);
  v159 = (__ROR8__(v157, 8) + v158) ^ 0xDA604B0C03A2BF99;
  v160 = v159 ^ __ROR8__(v158, 61);
  v161 = (__ROR8__(v159, 8) + v160) ^ 0xFA35E2CDCB3E31C7;
  v162 = v161 ^ __ROR8__(v160, 61);
  v163 = __ROR8__(v161, 8);
  v164 = (((2 * (v163 + v162)) & 0x77F8CDD1A279FB1ALL) - (v163 + v162) + 0x440399172EC30272) ^ 0x96F395F10E26D1DCLL;
  v165 = v164 ^ __ROR8__(v162, 61);
  v166 = __ROR8__(v164, 8);
  LOBYTE(v165) = (((((2 * (v166 + v165)) | 0x46F2015613B01230) - (v166 + v165) + 0x5C86FF54F627F6E8) ^ 0x570A0B9AA7A87C63) >> (8 * ((v2 + 6) & 7))) ^ v147;
  v167 = *(v7 + (v10 & (((v2 + 1) & 0x61943BB8 | 0x9E6BC443) + 2050767130 + ((v2 + 1) & 0x9E6BC440 | 0x61943BBD))));
  v168 = __ROR8__((v2 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v169 = (0x4CD99B173C04F737 - ((v167 + v168) | 0x4CD99B173C04F737) + ((v167 + v168) | 0xB32664E8C3FB08C8)) ^ 0xBAE653C223C6B9BLL;
  v170 = v169 ^ __ROR8__(v167, 61);
  v171 = __ROR8__(v169, 8);
  v172 = __ROR8__((v171 + v170 - ((2 * (v171 + v170)) & 0x7F8833222612CBCLL) + 0x3FC41991130965ELL) ^ 0x3B34F0F3F635FE29, 8);
  v173 = (v171 + v170 - ((2 * (v171 + v170)) & 0x7F8833222612CBCLL) + 0x3FC41991130965ELL) ^ 0x3B34F0F3F635FE29 ^ __ROR8__(v170, 61);
  v174 = (0x889C372A56383E12 - ((v172 + v173) | 0x889C372A56383E12) + ((v172 + v173) | 0x7763C8D5A9C7C1EDLL)) ^ 0x92E379A8250224BCLL;
  v175 = v174 ^ __ROR8__(v173, 61);
  v176 = __ROR8__(v174, 8);
  v177 = (v176 + v175 - ((2 * (v176 + v175)) & 0x64646C5DF25A9A9ELL) - 0x4DCDC9D106D2B2B1) ^ 0x5393CB752878B435;
  v178 = v177 ^ __ROR8__(v175, 61);
  v179 = (__ROR8__(v177, 8) + v178) ^ 0xDA604B0C03A2BF99;
  v180 = v179 ^ __ROR8__(v178, 61);
  v181 = (__ROR8__(v179, 8) + v180) ^ 0xFA35E2CDCB3E31C7;
  v182 = v181 ^ __ROR8__(v180, 61);
  v183 = (__ROR8__(v181, 8) + v182) ^ 0xD2F00CE620E5D3AELL;
  LOBYTE(v183) = (((__ROR8__(v183, 8) + (v183 ^ __ROR8__(v182, 61))) ^ 0xF4730B31AE70757BLL) >> (8 * ((v2 + 1) & 7))) ^ *(v2 + 1);
  v184 = *(((((((v122 ^ 2) & (2 * (v122 & 0x15 ^ 0x9D)) | v122 & 0x15 ^ 0x9D) << 6) ^ (32 * v122)) & 0xE0 | ((v122 ^ (2 * ((v122 ^ 0x78) & (2 * ((v122 ^ 0x7A) & (2 * ((v122 ^ 0x7A) & (2 * ((v122 ^ 0x7A) & (2 * ((v122 ^ 0x7A) & (2 * ((v122 ^ 0x72) & (2 * v122) & 0xF7 ^ v117)) ^ v117)) ^ v117)) ^ v117)) ^ v117)) ^ v117))) >> 3)) ^ 0x97u) + 111520 + v46 + 32);
  v185 = *(v7 + (((((v2 + 13) & 0xFFFFFFF8 ^ 0xB787D4DD) - 1028365251 + ((2 * ((v2 + 13) & 0xFFFFFFF8)) & 0x6F0FA9B0)) & v6) & 0xFFFFFFFFFFFFFFF8));
  v186 = (v185 + __ROR8__((v2 + 13) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xB88801D4E1C76353;
  v187 = v186 ^ __ROR8__(v185, 61);
  v188 = __ROR8__(v186, 8);
  v189 = (v188 + v187 - ((2 * (v188 + v187)) & 0x2F330AC7F15437ECLL) - 0x68667A9C0755E40ALL) ^ 0xAF5134091FAF7381 ^ __ROR8__(v187, 61);
  v190 = (__ROR8__((v188 + v187 - ((2 * (v188 + v187)) & 0x2F330AC7F15437ECLL) - 0x68667A9C0755E40ALL) ^ 0xAF5134091FAF7381, 8) + v189) ^ 0xE580B17D8CC5E551;
  v191 = v190 ^ __ROR8__(v189, 61);
  v192 = (__ROR8__(v190, 8) + v191) ^ 0xE1A1FD5BD155F97ALL;
  v193 = v192 ^ __ROR8__(v191, 61);
  v194 = __ROR8__(v192, 8);
  v195 = __ROR8__((v194 + v193 - ((2 * (v194 + v193)) & 0x40381D357CE5EF6CLL) - 0x5FE3F165418D084ALL) ^ 0x7A7C4596BDD0482FLL, 8);
  v196 = (v194 + v193 - ((2 * (v194 + v193)) & 0x40381D357CE5EF6CLL) - 0x5FE3F165418D084ALL) ^ 0x7A7C4596BDD0482FLL ^ __ROR8__(v193, 61);
  v197 = (v195 + v196) ^ 0xFA35E2CDCB3E31C7;
  v198 = v197 ^ __ROR8__(v196, 61);
  v199 = __ROR8__(v197, 8);
  v200 = (0x9678D74E0B263ED1 - ((v199 + v198) | 0x9678D74E0B263ED1) + ((v199 + v198) | 0x698728B1F4D9C12ELL)) ^ 0xBB772457D43C1280;
  v201 = v200 ^ __ROR8__(v198, 61);
  v202 = __ROR8__(v200, 8);
  STACK[0x5440] = (((v202 + v201 - ((2 * (v202 + v201)) & 0x5D3E6EF6F1364F08) - 0x5160C8848764D87CLL) ^ 0x5AEC3C4AD6EB52FFLL) >> (8 * ((v2 + 13) & 7))) ^ *(v2 + 13);
  LOBYTE(v165) = *(v105 + v165);
  LOBYTE(v164) = v165 & 0x87 ^ 0x46;
  LOBYTE(v165) = v165 ^ (2 * ((v165 ^ 0x7A) & (2 * ((v165 ^ 0x7A) & (2 * ((v165 ^ 0x7A) & (2 * ((v165 ^ 0x7A) & (2 * ((v165 ^ 0x7A) & (2 * ((v165 ^ 0x7A) & (2 * v165) & 0x76 ^ v164)) ^ v164)) ^ v164)) ^ v164)) ^ v164)) ^ v164));
  v203 = *(v7 + (v6 & v124));
  v204 = (0x9DF6B772E12873B2 - ((v203 + v126) | 0x9DF6B772E12873B2) + ((v203 + v126) | 0x6209488D1ED78C4DLL)) ^ 0xDA814959FF10EF1ELL;
  v205 = v204 ^ __ROR8__(v203, 61);
  v206 = (__ROR8__(v204, 8) + v205) ^ 0x38C8B16AE7056877;
  v207 = v206 ^ __ROR8__(v205, 61);
  v208 = (__ROR8__(v206, 8) + v207) ^ 0xE580B17D8CC5E551;
  v209 = v208 ^ __ROR8__(v207, 61);
  v210 = __ROR8__(v208, 8);
  v211 = (v210 + v209 - ((2 * (v210 + v209)) & 0x188A195C111ECALL) + 0xC450CAE088F65) ^ 0xE1ADB8577F5D761FLL;
  v212 = v211 ^ __ROR8__(v209, 61);
  v213 = (__ROR8__(v211, 8) + v212) ^ 0xDA604B0C03A2BF99;
  v214 = v213 ^ __ROR8__(v212, 61);
  v215 = __ROR8__(v213, 8);
  v216 = (v215 + v214 - ((2 * (v215 + v214)) & 0xF2F861405CCD24ECLL) - 0x683CF5FD1996D8ALL) ^ 0x349D26DE558A3B1;
  v217 = v216 ^ __ROR8__(v214, 61);
  v218 = (__ROR8__(v216, 8) + v217) ^ 0xD2F00CE620E5D3AELL;
  LOBYTE(v121) = (((__ROR8__(v218, 8) + (v218 ^ __ROR8__(v217, 61))) ^ 0xF4730B31AE70757BLL) >> v136) ^ v123;
  LOBYTE(v121) = 110 * (((v121 ^ 0x1D) - 78) ^ ((v121 ^ 0x39) + 22) ^ ((v121 ^ 0x24) - 119)) - 11;
  LOBYTE(v217) = v121 & 0xDD ^ 0x94;
  LOBYTE(v121) = v121 ^ (2 * ((v121 ^ 0x34) & (2 * ((v121 ^ 0x34) & (2 * ((v121 ^ 0x34) & (2 * ((v121 ^ 0x34) & (2 * ((v121 ^ 0x34) & (2 * (v121 & (2 * v121) & 0x6A ^ v217)) ^ v217)) ^ v217)) ^ v217)) ^ v217)) ^ v217));
  LOBYTE(v217) = *(v105 + v183);
  LOBYTE(v218) = v217 & 0xC7 ^ 0xA6;
  LOBYTE(v217) = v217 ^ (2 * ((v217 ^ 0x7A) & (2 * ((v217 ^ 0x7A) & (2 * ((v217 ^ 0x7A) & (2 * ((v217 ^ 0x7A) & (2 * ((v217 ^ 0x7A) & (2 * ((v217 ^ 0x7A) & (2 * v217) & 0x76 ^ v218)) ^ v218)) ^ v218)) ^ v218)) ^ v218)) ^ v218));
  LOBYTE(v218) = *(((v144 ^ (2 * v149)) ^ 0xD7u) + 66171 + v46 + 2885);
  LOBYTE(v121) = (((v218 ^ 0x51) - 81) ^ ((v218 ^ 0xD8) + 40) ^ ((v218 ^ 0x34) - 52)) - (((v121 ^ 0x38) - 51) ^ ((v121 ^ 0x3D) - 54) ^ ((v121 ^ 0x34) - 63)) - 42;
  LOBYTE(v136) = v121 & 0x65 ^ 0x5D;
  LOBYTE(v201) = v121 ^ (2 * ((v121 ^ 0x4A) & (2 * ((v121 ^ 0x4A) & (2 * ((v121 ^ 0x4A) & (2 * ((v121 ^ 0x4A) & (2 * ((v121 ^ 0x4A) & (2 * (((2 * v121) & 0x16 ^ 0x2E) & (v121 ^ 0xA) ^ v136)) ^ v136)) ^ v136)) ^ v136)) ^ v136)) ^ v136));
  v219 = *(v7 + (((((v2 + 10) & 0xFFFFFFF8 ^ 0x5A37D918) + 537157634 + ((2 * ((v2 + 10) & 0xFFFFFFF8)) & 0xB46FB230)) & v6) & 0xFFFFFFFFFFFFFFF8));
  v220 = __ROR8__((v2 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v221 = __ROR8__((((2 * (v219 + v220)) & 0xDD5E2199F9DAA506) - (v219 + v220) + 0x1150EF330312AD7CLL) ^ 0xA9D8EEE7E2D5CE2FLL, 8);
  v222 = (((2 * (v219 + v220)) & 0xDD5E2199F9DAA506) - (v219 + v220) + 0x1150EF330312AD7CLL) ^ 0xA9D8EEE7E2D5CE2FLL ^ __ROR8__(v219, 61);
  v223 = (0xB6E26223671C10E5 - ((v221 + v222) | 0xB6E26223671C10E5) + ((v221 + v222) | 0x491D9DDC98E3EF1ALL)) ^ 0x71D52CB67FE6876DLL;
  v224 = v223 ^ __ROR8__(v222, 61);
  v225 = __ROR8__(v223, 8);
  v226 = (((2 * (v225 + v224)) | 0xE61B75437019F4E6) - (v225 + v224) - 0x730DBAA1B80CFA73) ^ 0x968D0BDC34C91F22;
  v227 = v226 ^ __ROR8__(v224, 61);
  v228 = (__ROR8__(v226, 8) + v227) ^ 0xE1A1FD5BD155F97ALL;
  v229 = v228 ^ __ROR8__(v227, 61);
  v230 = (__ROR8__(v228, 8) + v229) ^ 0xDA604B0C03A2BF99;
  v231 = v230 ^ __ROR8__(v229, 61);
  v232 = __ROR8__(v230, 8);
  v233 = __ROR8__((((v232 + v231) ^ 0x9585C2C215C174E2) - ((2 * ((v232 + v231) ^ 0x9585C2C215C174E2)) & 0xC4272B28049623C4) - 0x1DEC6A6BFDB4EE1ELL) ^ 0x8DA3B59BDCB454C7, 8);
  v234 = (((v232 + v231) ^ 0x9585C2C215C174E2) - ((2 * ((v232 + v231) ^ 0x9585C2C215C174E2)) & 0xC4272B28049623C4) - 0x1DEC6A6BFDB4EE1ELL) ^ 0x8DA3B59BDCB454C7 ^ __ROR8__(v231, 61);
  v235 = (v233 + v234 - ((2 * (v233 + v234)) & 0xA1604016A81C1AA6) - 0x2F4FDFF4ABF1F2ADLL) ^ 0x2402CED74EBDEFDLL;
  v236 = v235 ^ __ROR8__(v234, 61);
  v237 = __ROR8__(v235, 8);
  LOBYTE(v218) = *(v105 + ((((v237 + v236 - ((2 * (v237 + v236)) & 0x871B76450F9369A2) + 0x438DBB2287C9B4D1) ^ 0xB7FEB01329B9C1AALL) >> (8 * ((v2 + 10) & 7))) ^ *(v2 + 10)));
  LOBYTE(v236) = v218 & 0xA9 ^ 0xFB;
  LODWORD(v121) = (117 * (((((v184 >> 7) | (2 * v184)) ^ 0x56) - 116) ^ ((((v184 >> 7) | (2 * v184)) ^ 0xC4) + 26) ^ ((((v184 >> 7) | (2 * v184)) ^ 0x93) + 79)) - 1);
  LODWORD(v218) = (((v218 ^ (2 * ((v218 ^ 0x7A) & (2 * ((v218 ^ 0x7A) & (2 * ((v218 ^ 0x7A) & (2 * ((v218 ^ 0x7A) & (2 * ((v218 ^ 0x7A) & (2 * (((2 * v218) & 0x76 ^ 0x52) & (v218 ^ 0x72) ^ v236)) ^ v236)) ^ v236)) ^ v236)) ^ v236)) ^ v236))) << 8) ^ 0x6DDFCD7E) & (LODWORD(STACK[0x4900]) ^ (v121 << 16)) & 0xFFDFFFFF | (((v121 >> 5) & 1) << 21);
  LODWORD(v121) = *(v2 + 15);
  v238 = STACK[0x4DB8];
  v239 = *(v7 + (LODWORD(STACK[0x4DB8]) & (((v2 + 15) & 0xFFFFFFF8 ^ 0x9C1F1BAF) - 568517269 + ((2 * ((v2 + 15) & 0xFFFFFFF8)) & 0x383E3750))));
  v240 = __ROR8__((v2 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  LOBYTE(v144) = ((v201 ^ 0xCC) + 115) ^ ((v201 ^ 0xD2) + 109) ^ ((v201 ^ 0x95) + 44);
  v241 = (((2 * ((v239 + v240) ^ 0x29EFCE69E4FAC70BLL)) | 0x74F8E757865F6AD0) - ((v239 + v240) ^ 0x29EFCE69E4FAC70BLL) + 0x45838C543CD04A98) ^ 0x2B1BBC16C6121130;
  v242 = v241 ^ __ROR8__(v239, 61);
  v243 = __ROR8__(v241, 8);
  v244 = (v243 + v242 - ((2 * (v243 + v242)) & 0x9836AA8414B3237ELL) - 0x33E4AABDF5A66E41) ^ 0xF4D3E428ED5CF9C8;
  v245 = v244 ^ __ROR8__(v242, 61);
  v246 = (__ROR8__(v244, 8) + v245) ^ 0xE580B17D8CC5E551;
  v247 = v246 ^ __ROR8__(v245, 61);
  v248 = __ROR8__(v246, 8);
  v249 = (v248 + v247 - ((2 * (v248 + v247)) & 0x478B8283A548749CLL) - 0x5C3A3EBE2D5BC5B2) ^ 0x42643C1A03F1C334 ^ __ROR8__(v247, 61);
  v250 = (__ROR8__((v248 + v247 - ((2 * (v248 + v247)) & 0x478B8283A548749CLL) - 0x5C3A3EBE2D5BC5B2) ^ 0x42643C1A03F1C334, 8) + v249) ^ 0xDA604B0C03A2BF99;
  v251 = v250 ^ __ROR8__(v249, 61);
  v252 = __ROR8__(v250, 8);
  v253 = (0x67B77970B538F9A4 - ((v252 + v251) | 0x67B77970B538F9A4) + ((v252 + v251) | 0x9848868F4AC7065BLL)) ^ 0x627D644281F9379CLL;
  v254 = v253 ^ __ROR8__(v251, 61);
  v255 = __ROR8__(v253, 8);
  v256 = (v255 + v254 - ((2 * (v255 + v254)) & 0x47D588C121FA92A6) - 0x5C153B9F6F02B6ADLL) ^ 0x711AC886B0189AFDLL;
  v257 = *(v7 + (LODWORD(STACK[0x4DB8]) & (((v2 + 15) & 0xF5D52850 | 0xA2AD7AB) + LODWORD(STACK[0x5260]) + ((v2 + 15) & 0xA2AD7A8 | 0xF5D52854))));
  v258 = __ROR8__(v256, 8) + (v256 ^ __ROR8__(v254, 61));
  v259 = (((2 * (v257 + v240)) & 0x5FBF0A1A30464492) - (v257 + v240) - 0x2FDF850D1823224ALL) ^ 0x68A87B26061BBEE5;
  v260 = v259 ^ __ROR8__(v257, 61);
  v261 = __ROR8__(v259, 8);
  v262 = (0x949F5721840E5646 - ((v261 + v260) | 0x949F5721840E5646) + ((v261 + v260) | 0x6B60A8DE7BF1A9B9)) ^ 0x53A819B49CF4C1CELL;
  v263 = v262 ^ __ROR8__(v260, 61);
  v264 = (__ROR8__(v262, 8) + v263) ^ 0xE580B17D8CC5E551;
  v265 = v264 ^ __ROR8__(v263, 61);
  v266 = __ROR8__(v264, 8);
  v267 = (0x41FD1C328645C4DDLL - ((v266 + v265) | 0x41FD1C328645C4DDLL) + ((v266 + v265) | 0xBE02E3CD79BA3B22)) ^ 0x5FA31E96A8EFC258;
  v268 = v267 ^ __ROR8__(v265, 61);
  v269 = __ROR8__(v267, 8);
  v270 = (((v269 + v268) ^ 0xB064B12919EB4AE9) - ((2 * ((v269 + v268) ^ 0xB064B12919EB4AE9)) & 0xB8822695882F5D10) + 0x5C41134AC417AE88) ^ 0x3645E96FDE5E5BF8;
  v271 = v270 ^ __ROR8__(v268, 61);
  v272 = (__ROR8__(v270, 8) + v271) ^ 0xFA35E2CDCB3E31C7;
  v273 = v272 ^ __ROR8__(v271, 61);
  v274 = __ROR8__(v272, 8);
  v275 = (0xC50482D608E7BE4ALL - ((v274 + v273) | 0xC50482D608E7BE4ALL) + ((v274 + v273) | 0x3AFB7D29F71841B5)) ^ 0xE80B71CFD7FD921BLL;
  v276 = __ROR8__(v275, 8);
  v277 = __ROR8__(v273, 61);
  LOBYTE(v236) = 8 * ((v2 + 15) & 7);
  v278 = ((0x1804FC63EA93906BLL - ((v276 + (v275 ^ v277)) | 0x1804FC63EA93906BLL) + ((v276 + (v275 ^ v277)) | 0xE7FB039C156C6F94)) ^ 0x138808ADBB1C1AEFLL) >> v236;
  HIDWORD(v277) = ((v258 ^ 0xF4730B31AE70757BLL) >> v236) ^ v121;
  LODWORD(v277) = (v278 ^ v121) << 24;
  LOBYTE(v236) = (v277 >> 29) + (~(2 * (v277 >> 29)) | 0x6F);
  LODWORD(v121) = (LODWORD(STACK[0x5278]) << 16) | (v165 << 8);
  v279 = *(v7 + (((((v2 + 3) & 0x6C96BF80 | 0x9369407B) + 2050767130 + ((v2 + 3) & 0x93694078 | 0x6C96BF85)) & v6) & 0xFFFFFFFFFFFFFFF8));
  v280 = __ROR8__((v2 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v281 = (0x89568AEEFEB6B7CDLL - ((v279 + v280) | 0x89568AEEFEB6B7CDLL) + ((v279 + v280) | 0x76A9751101494832)) ^ 0xCE2174C5E08E2B61;
  v282 = v281 ^ __ROR8__(v279, 61);
  v283 = (__ROR8__(v281, 8) + v282) ^ 0x38C8B16AE7056877;
  v284 = v283 ^ __ROR8__(v282, 61);
  v285 = (__ROR8__(v283, 8) + v284) ^ 0xE580B17D8CC5E551;
  v286 = __ROR8__(v285, 8);
  v287 = v285 ^ __ROR8__(v284, 61);
  v288 = (v286 + v287 - ((2 * (v286 + v287)) & 0xE9A93C5A3CD9D518) - 0xB2B61D2E1931574) ^ 0x15756376CF3913F6;
  v289 = v288 ^ __ROR8__(v287, 61);
  v290 = __ROR8__(v288, 8);
  v291 = (((2 * (v290 + v289)) & 0x2ADA602418DE508ALL) - (v290 + v289) + 0x6A92CFEDF390D7BALL) ^ 0xB0F284E1F0326823;
  v292 = v291 ^ __ROR8__(v289, 61);
  v293 = __ROR8__(v291, 8);
  v294 = __ROR8__((((2 * (v293 + v292)) & 0xCAC15BA384B24B5ELL) - (v293 + v292) - 0x6560ADD1C25925B0) ^ 0x60AAB0E3F698EB97, 8);
  v295 = (((2 * (v293 + v292)) & 0xCAC15BA384B24B5ELL) - (v293 + v292) - 0x6560ADD1C25925B0) ^ 0x60AAB0E3F698EB97 ^ __ROR8__(v292, 61);
  LOBYTE(v106) = *(v105 + ((((__ROR8__((v294 + v295) ^ 0xD2F00CE620E5D3AELL, 8) + ((v294 + v295) ^ 0xD2F00CE620E5D3AELL ^ __ROR8__(v295, 61))) ^ 0xF4730B31AE70757BLL) >> (8 * ((v2 + 3) & 7))) ^ *(v2 + 3)));
  LOBYTE(v295) = v106 & 0xE9 ^ 0x9B;
  LOBYTE(v278) = (v106 ^ 0x7A) & (2 * ((v106 ^ 0x7A) & (2 * ((v106 ^ 0x7A) & (2 * ((v106 ^ 0x7A) & (2 * ((v106 ^ 0x7A) & (2 * (((2 * v106) & 0x76 ^ 0x12) & (v106 ^ 0x72) ^ v295)) ^ v295)) ^ v295)) ^ v295)) ^ v295)) ^ v295;
  LOBYTE(v295) = *(v105 + (v144 - 67));
  LOBYTE(v183) = v106 ^ (2 * v278);
  LOBYTE(v278) = v295 & 0xC9 ^ 0x2B;
  LODWORD(v278) = ((v295 ^ (2 * ((v295 ^ 0x7A) & (2 * ((v295 ^ 0x7A) & (2 * ((v295 ^ 0x7A) & (2 * ((v295 ^ 0x7A) & (2 * ((v295 ^ 0x7A) & (2 * (((2 * v295) & 0x76 ^ 0x32) & (v295 ^ 0x72) ^ v278)) ^ v278)) ^ v278)) ^ v278)) ^ v278)) ^ v278))) ^ 0x7FFFFF06) & (v218 ^ 0x658161B1) ^ (v295 ^ (2 * ((v295 ^ 0x7A) & (2 * ((v295 ^ 0x7A) & (2 * ((v295 ^ 0x7A) & (2 * ((v295 ^ 0x7A) & (2 * ((v295 ^ 0x7A) & (2 * (((2 * v295) & 0x76 ^ 0x32) & (v295 ^ 0x72) ^ v278)) ^ v278)) ^ v278)) ^ v278)) ^ v278)) ^ v278))) & 0x30;
  LODWORD(v172) = v217 << 16;
  v296 = *(v46 + (v172 & 0x33333333 ^ 0xFFFCFFFF) - 1120643368 + (v172 & 0x33333333 ^ 0x42CFB615) + ((((v236 - 55) ^ 0xD5C95D77) + 708223623) ^ (((v236 - 55) ^ 0xACD489BD) + 1395357261) ^ (((v236 - 55) ^ 0x791DD4E8) - 2031998182)));
  v297 = (((v296 ^ 0xFFFFFFDC) + 36) ^ ((v296 ^ 0xFFFFFFF9) + 7) ^ ((v296 ^ 0xFFFFFF98) + 104)) - 16;
  LODWORD(v217) = v297 & 0xFFFFFFD0 ^ 0xFFFFFFBD;
  v298 = v297 ^ (2 * ((v297 ^ 0x66) & (2 * ((v297 ^ 0x66) & (2 * ((v297 ^ 0x66) & (2 * ((v297 ^ 0x66) & (2 * ((v297 ^ 0x66) & (2 * ((v297 ^ 0x66) & 0x36 ^ v217)) ^ v217)) ^ v217)) ^ v217)) ^ v217)) ^ v217));
  LODWORD(STACK[0x5278]) = ((v298 ^ 0xFFFFFFA2) - 78) ^ ((v298 ^ 0x77) + 101) ^ ((v298 ^ 0xB3) - 95);
  v299 = *(v7 + (v6 & (((v2 + 8) & 0xFFFFFFF8 ^ 0x8699CC44) + 14022868 + ((2 * ((v2 + 8) & 0xFFFFFFF8)) | 0xF2CC6773) + 3213)));
  v300 = (v299 + __ROR8__((v2 + 8) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xB88801D4E1C76353;
  v301 = v300 ^ __ROR8__(v299, 61);
  v302 = (__ROR8__(v300, 8) + v301) ^ 0x38C8B16AE7056877;
  v303 = v302 ^ __ROR8__(v301, 61);
  v304 = (__ROR8__(v302, 8) + v303) ^ 0xE580B17D8CC5E551;
  v305 = v304 ^ __ROR8__(v303, 61);
  v306 = (__ROR8__(v304, 8) + v305) ^ 0xE1A1FD5BD155F97ALL;
  v307 = v306 ^ __ROR8__(v305, 61);
  v308 = __ROR8__(v306, 8);
  v309 = (((2 * (v308 + v307)) & 0xEFD5FD91A16D8634) - (v308 + v307) - 0x77EAFEC8D0B6C31BLL) ^ 0x52754A3B2CEB837CLL;
  v310 = v309 ^ __ROR8__(v307, 61);
  v311 = __ROR8__(v309, 8);
  v312 = (v311 + v310 - ((2 * (v311 + v310)) & 0xC5C44AD59E1BE8E6) + 0x62E2256ACF0DF473) ^ 0x98D7C7A70433C5B4;
  v313 = v312 ^ __ROR8__(v310, 61);
  v314 = (__ROR8__(v312, 8) + v313) ^ 0xD2F00CE620E5D3AELL;
  v315 = *(v7 + (v238 & (((v2 + 7) & 0xFFFFFFF8 ^ 0xFA9E877C) + 2141041054 + ((2 * ((v2 + 7) & 0xFFFFFFF8)) & 0xF53D0EF0))));
  v316 = (v315 + __ROR8__((v2 + 7) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xB88801D4E1C76353;
  v317 = v316 ^ __ROR8__(v315, 61);
  v318 = (__ROR8__(v316, 8) + v317) ^ 0x38C8B16AE7056877;
  v319 = v318 ^ __ROR8__(v317, 61);
  v320 = (__ROR8__(v318, 8) + v319) ^ 0xE580B17D8CC5E551;
  v321 = v320 ^ __ROR8__(v319, 61);
  v322 = __ROR8__(v320, 8);
  v323 = (0x69F4C2FE7B719217 - ((v322 + v321) | 0x69F4C2FE7B719217) + ((v322 + v321) | 0x960B3D01848E6DE8)) ^ 0x77AAC05A55DB9492;
  v324 = v323 ^ __ROR8__(v321, 61);
  v325 = (__ROR8__(v323, 8) + v324) ^ 0xDA604B0C03A2BF99;
  v326 = v325 ^ __ROR8__(v324, 61);
  v327 = (__ROR8__(v325, 8) + v326) ^ 0xFA35E2CDCB3E31C7;
  v328 = v327 ^ __ROR8__(v326, 61);
  v329 = (__ROR8__(v327, 8) + v328) ^ 0xD2F00CE620E5D3AELL;
  v330 = v329 ^ __ROR8__(v328, 61);
  v331 = __ROR8__(v329, 8);
  LODWORD(v217) = *(v105 + ((((__ROR8__(v314, 8) + (v314 ^ __ROR8__(v313, 61))) ^ 0xF4730B31AE70757BLL) >> (8 * ((v2 + 8) & 7))) ^ *(v2 + 8)));
  LODWORD(v314) = v217 & 0xFFFFFFB7 ^ 0x6E;
  LODWORD(v217) = v217 ^ (2 * ((v217 ^ 0x7A) & (2 * ((v217 ^ 0x7A) & (2 * ((v217 ^ 0x7A) & (2 * ((v217 ^ 0x7A) & (2 * ((v217 ^ 0x7A) & (2 * ((v217 ^ 0x7A) & (2 * v217) & 0x76 ^ v314)) ^ v314)) ^ v314)) ^ v314)) ^ v314)) ^ v314));
  LOBYTE(v329) = *(v105 + ((((((2 * (v331 + v330)) | 0x2C1CE8D89E509984) - (v331 + v330) + 0x69F18B93B0D7B33ELL) ^ 0x627D7F5DE15839B9) >> (8 * ((v2 + 7) & 7))) ^ *(v2 + 7)));
  LOBYTE(v314) = v329 & 0xD1 ^ 0x3F;
  LODWORD(v121) = v121 & 0xFFFFFF00 | (v329 ^ (2 * ((v329 ^ 0x7A) & (2 * ((v329 ^ 0x7A) & (2 * ((v329 ^ 0x7A) & (2 * ((v329 ^ 0x7A) & (2 * ((v329 ^ 0x7A) & (2 * (((2 * v329) & 0x76 ^ 0x2A) & (v329 ^ 0x7A) ^ v314)) ^ v314)) ^ v314)) ^ v314)) ^ v314)) ^ v314)));
  LODWORD(v278) = (((v217 ^ 0x6F) << 24) ^ 0x99478A96) & (v278 ^ 0xF791AF30) ^ v278 & 0x3EB87569;
  v332 = *(v7 + (v238 & (((v2 + 2) & 0xAD11AFD0) + ((v2 + 2) & 0x52EE5028 | 0xAD11AFD7) - 852850365)));
  v333 = __ROR8__((v2 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v334 = (0x5D629B8DE1B836D7 - ((v332 + v333) | 0x5D629B8DE1B836D7) + ((v332 + v333) | 0xA29D64721E47C928)) ^ 0x1A1565A6FF80AA7BLL;
  v335 = v334 ^ __ROR8__(v332, 61);
  v336 = __ROR8__(v334, 8);
  v337 = (0x3EA1296FE6147662 - ((v336 + v335) | 0x3EA1296FE6147662) + ((v336 + v335) | 0xC15ED69019EB899DLL)) ^ 0xF99667FAFEEEE1EALL;
  v338 = v337 ^ __ROR8__(v335, 61);
  v339 = (__ROR8__(v337, 8) + v338) ^ 0xE580B17D8CC5E551;
  v340 = v339 ^ __ROR8__(v338, 61);
  v341 = (__ROR8__(v339, 8) + v340) ^ 0xE1A1FD5BD155F97ALL;
  v342 = v341 ^ __ROR8__(v340, 61);
  v343 = __ROR8__(v341, 8);
  v344 = (((2 * (v343 + v342)) & 0x1AD0EC1A4D6D43D4) - (v343 + v342) + 0x729789F2D9495E15) ^ 0xA8F7C2FEDAEBE18CLL;
  v345 = v344 ^ __ROR8__(v342, 61);
  v346 = __ROR8__(v344, 8);
  v347 = __ROR8__((v346 + v345 - ((2 * (v346 + v345)) & 0xBD22E5A1BB760CC0) - 0x216E8D2F2244F9A0) ^ 0x24A4901D168537A7, 8);
  v348 = (v346 + v345 - ((2 * (v346 + v345)) & 0xBD22E5A1BB760CC0) - 0x216E8D2F2244F9A0) ^ 0x24A4901D168537A7 ^ __ROR8__(v345, 61);
  v349 = (((2 * (v347 + v348)) | 0xBEE21273B58241D4) - (v347 + v348) - 0x5F710939DAC120EALL) ^ 0x8D8105DFFA24F344;
  v350 = v349 ^ __ROR8__(v348, 61);
  v351 = __ROR8__(v349, 8);
  v352 = ((0x7C75C5FB37C33A54 - ((v351 + v350) | 0x7C75C5FB37C33A54) + ((v351 + v350) | 0x838A3A04C83CC5ABLL)) ^ 0x77F93135664CB0D0) >> (8 * ((v2 + 2) & 7));
  v353 = *(v7 + (v6 & (((v2 + 14) & 0xFFFFFFF8 ^ 0x37D58C04) + 1114025236 + ((2 * ((v2 + 14) & 0xFFFFFFF8)) & 0x6FAB1800))));
  v354 = (v353 + __ROR8__((v2 + 14) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xB88801D4E1C76353;
  v355 = v354 ^ __ROR8__(v353, 61);
  v356 = __ROR8__(v354, 8);
  v357 = (((v356 + v355) & 0x261B655FD0E11A5FLL ^ 0x418205C80400854) + ((v356 + v355) & 0xD9E49AA02F1EE5A0 ^ 0xC9641200070E2581) - 1) ^ 0xF5B48336604B45A3;
  v358 = v357 ^ __ROR8__(v355, 61);
  v359 = (__ROR8__(v357, 8) + v358) ^ 0xE580B17D8CC5E551;
  v360 = v359 ^ __ROR8__(v358, 61);
  v361 = (__ROR8__(v359, 8) + v360) ^ 0xE1A1FD5BD155F97ALL;
  v362 = v361 ^ __ROR8__(v360, 61);
  v363 = (__ROR8__(v361, 8) + v362) ^ 0xDA604B0C03A2BF99;
  v364 = v363 ^ __ROR8__(v362, 61);
  v365 = (__ROR8__(v363, 8) + v364) ^ 0xFA35E2CDCB3E31C7;
  v366 = __ROR8__(v365, 8);
  v367 = v365 ^ __ROR8__(v364, 61);
  v368 = (v366 + v367) ^ 0xD2F00CE620E5D3AELL;
  v369 = v368 ^ __ROR8__(v367, 61);
  v370 = __ROR8__(v368, 8);
  LOBYTE(v369) = (((((2 * (v370 + v369)) & 0x63C25FB65000FBAELL) - (v370 + v369) - 0x31E12FDB28007DD8) ^ 0x3A6DDB15798FF753) >> (8 * ((v2 + 14) & 7))) ^ *(v2 + 14);
  LOBYTE(v352) = *(v105 + (v352 ^ *(v2 + 2)));
  LOBYTE(v350) = v352 & 0x1B ^ 0x90;
  v371 = *(v7 + (v238 & (((((v2 + 4) & 0xFFFFFFF8) - 1698587594) ^ 0x861C3CDE) + 1499357190 + ((2 * (((v2 + 4) & 0xFFFFFFF8) - 1698587594)) & 0xC3879BC))));
  LOBYTE(v352) = v352 ^ (2 * ((v352 ^ 0x7A) & (2 * ((v352 ^ 0x7A) & (2 * ((v352 ^ 0x7A) & (2 * ((v352 ^ 0x7A) & (2 * ((v352 ^ 0x7A) & (2 * ((v352 ^ 0x72) & (2 * v352) & 0xF7 ^ v350)) ^ v350)) ^ v350)) ^ v350)) ^ v350)) ^ v350));
  v372 = (v371 + __ROR8__((v2 + 4) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xB88801D4E1C76353;
  v373 = v372 ^ __ROR8__(v371, 61);
  v374 = (__ROR8__(v372, 8) + v373) ^ 0x38C8B16AE7056877;
  v375 = v374 ^ __ROR8__(v373, 61);
  v376 = (__ROR8__(v374, 8) + v375) ^ 0xE580B17D8CC5E551;
  v377 = v376 ^ __ROR8__(v375, 61);
  v378 = __ROR8__(v376, 8);
  v379 = __ROR8__((0x7858577B608A3D18 - ((v378 + v377) | 0x7858577B608A3D18) + ((v378 + v377) | 0x87A7A8849F75C2E7)) ^ 0x660655DF4E203B9DLL, 8);
  v380 = (0x7858577B608A3D18 - ((v378 + v377) | 0x7858577B608A3D18) + ((v378 + v377) | 0x87A7A8849F75C2E7)) ^ 0x660655DF4E203B9DLL ^ __ROR8__(v377, 61);
  v381 = (0xAC44C74279AFFB61 - ((v379 + v380) | 0xAC44C74279AFFB61) + ((v379 + v380) | 0x53BB38BD8650049ELL)) ^ 0x89DB73B185F2BB07;
  v382 = v381 ^ __ROR8__(v380, 61);
  v383 = __ROR8__(v381, 8);
  v384 = __ROR8__((0xE62D5A3F55ED299ALL - ((v383 + v382) | 0xE62D5A3F55ED299ALL) + ((v383 + v382) | 0x19D2A5C0AA12D665)) ^ 0xE3E7470D612CE7A2, 8);
  v385 = (0xE62D5A3F55ED299ALL - ((v383 + v382) | 0xE62D5A3F55ED299ALL) + ((v383 + v382) | 0x19D2A5C0AA12D665)) ^ 0xE3E7470D612CE7A2 ^ __ROR8__(v382, 61);
  v386 = (((2 * (v384 + v385)) & 0x34995560FA9E0E32) - (v384 + v385) + 0x65B3554F82B0F8E6) ^ 0xB74359A9A2552B48;
  v387 = *(v7 + (v238 & ((v2 & 0xFFFFFFF8) + 2050767130)));
  LOBYTE(v368) = (((__ROR8__(v386, 8) + (v386 ^ __ROR8__(v385, 61))) ^ 0xF4730B31AE70757BLL) >> (8 * ((v2 + 4) & 7))) ^ *(v2 + 4);
  v388 = __ROR8__(v2 & 0xFFFFFFFFFFFFFFF8, 8);
  v389 = (0x509B0FDA98D57847 - ((v387 + v388) | 0x509B0FDA98D57847) + ((v387 + v388) | 0xAF64F025672A87B8)) ^ 0x17ECF1F186EDE4EBLL;
  v390 = v389 ^ __ROR8__(v387, 61);
  v391 = __ROR8__(v389, 8);
  v392 = (0x35EC3A8D95B71797 - ((v391 + v390) ^ 0x4ACE96E2A6421A95 | 0x35EC3A8D95B71797) + ((v391 + v390) ^ 0x4ACE96E2A6421A95 | 0xCA13C5726A48E868)) ^ 0xB815E2FA2B0F9A8ALL;
  v393 = v392 ^ __ROR8__(v390, 61);
  v394 = (__ROR8__(v392, 8) + v393) ^ 0xE580B17D8CC5E551;
  v395 = v394 ^ __ROR8__(v393, 61);
  v396 = __ROR8__(v394, 8);
  v397 = (v396 + v395 - ((2 * (v396 + v395)) & 0x4CDC9C4CD7441D72) + 0x266E4E266BA20EB9) ^ 0xC7CFB37DBAF7F7C3;
  v398 = v397 ^ __ROR8__(v395, 61);
  v399 = __ROR8__(v397, 8);
  v400 = (((2 * (v399 + v398)) | 0x3744E19E38BF7414) - (v399 + v398) + 0x645D8F30E3A045F6) ^ 0x41C23BC31FFD0593 ^ __ROR8__(v398, 61);
  v401 = (__ROR8__((((2 * (v399 + v398)) | 0x3744E19E38BF7414) - (v399 + v398) + 0x645D8F30E3A045F6) ^ 0x41C23BC31FFD0593, 8) + v400) ^ 0xFA35E2CDCB3E31C7;
  v402 = v401 ^ __ROR8__(v400, 61);
  v403 = (__ROR8__(v401, 8) + v402) ^ 0xD2F00CE620E5D3AELL;
  v404 = v403 ^ __ROR8__(v402, 61);
  v405 = __ROR8__(v403, 8);
  LODWORD(v368) = *(v105 + v368);
  LODWORD(v403) = v368 & 0xFFFFFF95 ^ 0x5D;
  LODWORD(v366) = v368 ^ 0x7A;
  LODWORD(v368) = ((v366 & (2 * (v366 & (2 * (v366 & (2 * (v366 & (2 * (v366 & (2 * (((2 * v368) & 0x76 ^ 0x6E) & v366 ^ v403)) ^ v403)) ^ v403)) ^ v403)) ^ v403)) ^ v403) << 25) ^ (v368 << 24);
  LODWORD(v121) = (v368 | 0xFFFFFF) & (v121 ^ 0x9585FA32) ^ v368 & 0x6A000000;
  LODWORD(v368) = *(v105 + ((((v405 + v404) ^ 0xF4730B31AE70757BLL) >> (8 * (v2 & 7u))) ^ *v2));
  LODWORD(v404) = v368 & 0xFFFFFFB1 ^ 0xFFFFFFEF;
  LODWORD(v368) = (((v368 ^ 0x7A) & (2 * ((v368 ^ 0x7A) & (2 * ((v368 ^ 0x7A) & (2 * ((v368 ^ 0x7A) & (2 * ((v368 ^ 0x7A) & (2 * (((2 * v368) & 0x76 ^ 0x4A) & (v368 ^ 0x7A) ^ v404)) ^ v404)) ^ v404)) ^ v404)) ^ v404)) ^ v404) << 25) ^ (v368 << 24);
  LODWORD(v352) = (v368 ^ 0x4EF3FFFF) & ((((v352 << 8) ^ 0xF203126) & (v183 ^ 0xAFF3FFDF) | v183 & 0xD9) ^ 0xFA135CD2);
  LODWORD(v352) = (v368 & 0xE000000 ^ 0xACC0842 ^ v352) & (v172 ^ 0xBBE73A7A) ^ v352 & 0x44D3C585;
  v406 = *(v105 + (LODWORD(STACK[0x4DC0]) - 76));
  LOBYTE(v368) = v406 & 0x6B ^ 0x58;
  v407 = (v406 ^ (2 * ((v406 ^ 0x7A) & (2 * ((v406 ^ 0x7A) & (2 * ((v406 ^ 0x7A) & (2 * ((v406 ^ 0x7A) & (2 * ((v406 ^ 0x7A) & (2 * ((v406 ^ 0x72) & (2 * v406) & 0xF7 ^ v368)) ^ v368)) ^ v368)) ^ v368)) ^ v368)) ^ v368))) ^ 0xA7u;
  LODWORD(v407) = *(v46 + 111520 + (((v407 ^ 0xDB36AECDE31B5CFFLL) + 0x24C951321CE4A301) ^ ((v407 ^ 0xFB3310599D101473) + 0x4CCEFA662EFEB8DLL) ^ ((v407 ^ 0x2005BE947E0B487BLL) - 0x2005BE947E0B487BLL)) - 233);
  LODWORD(v407) = 33 * (((v407 ^ 0xFFFFFFC9) + 55) ^ ((v407 ^ 0xFFFFFF87) + 121) ^ ((v407 ^ 0xFFFFFFF3) + 13)) - 97;
  LODWORD(v368) = v407 & 0xFFFFFFAE ^ 0x18;
  LODWORD(v407) = v407 ^ (2 * ((v407 ^ 0x3C) & (2 * ((v407 ^ 0x3C) & (2 * ((v407 ^ 0x3C) & (2 * ((v407 ^ 0x3C) & (2 * ((v407 ^ 0x3C) & (2 * v368) ^ v368)) ^ v368)) ^ v368)) ^ v368)) ^ v368));
  LODWORD(v407) = v407 ^ 0xFFFFFFD0 ^ ((v407 & 0xF0) >> 4) ^ (((v407 ^ 0xFFFFFFD0) >> 7) & 1 | 0xFFFFFFD6);
  v408 = STACK[0x5630];
  LODWORD(STACK[0x5630]) = STACK[0x5630];
  LODWORD(v352) = v352 ^ (2 * ((v352 ^ 0x7F337E7F) & (v408 ^ 0x2CED7DF1) ^ v352 & 0x2D011175));
  LOBYTE(v369) = *(v105 + v369);
  LOBYTE(v404) = v369 & 0xFD ^ 0x81;
  LOBYTE(v184) = *(v105 + STACK[0x5440]);
  LOBYTE(v368) = v184 & 0x71 ^ 0x4F;
  v409 = (LODWORD(STACK[0x5278]) - 18);
  STACK[0x5490] = v105;
  LOBYTE(v409) = *(v105 + v409);
  LOBYTE(v184) = v184 ^ (2 * ((v184 ^ 0x7A) & (2 * ((v184 ^ 0x7A) & (2 * ((v184 ^ 0x7A) & (2 * ((v184 ^ 0x7A) & (2 * ((v184 ^ 0x7A) & (2 * (((2 * v184) & 0xF7 ^ 0xA) & (v184 ^ 0x7A) ^ v368)) ^ v368)) ^ v368)) ^ v368)) ^ v368)) ^ v368));
  LOBYTE(v368) = v409 & 0xF1 ^ 0x8F;
  LOBYTE(v409) = v409 ^ (2 * ((v409 ^ 0x7A) & (2 * ((v409 ^ 0x7A) & (2 * ((v409 ^ 0x7A) & (2 * ((v409 ^ 0x7A) & (2 * ((v409 ^ 0x7A) & (2 * (((2 * v409) & 0x76 ^ 0xA) & (v409 ^ 0x7A) ^ v368)) ^ v368)) ^ v368)) ^ v368)) ^ v368)) ^ v368));
  LODWORD(v409) = (v409 & 0xFE ^ 0x7EFFE90E) & ((v184 << 16) ^ 0x7ED6E92E) | v409 & 0xD1;
  LODWORD(v409) = ((((v369 ^ (2 * ((v369 ^ 0x7A) & (2 * ((v369 ^ 0x7A) & (2 * ((v369 ^ 0x7A) & (2 * ((v369 ^ 0x7A) & (2 * ((v369 ^ 0x7A) & (2 * (((2 * v369) & 0x76 ^ 6) & (v369 ^ 0x72) ^ v404)) ^ v404)) ^ v404)) ^ v404)) ^ v404)) ^ v404))) << 8) ^ 0x34514B07) & (v409 ^ 0xC1F21610) | v409 & 0x4AAE00F8) ^ 0x7EF7B6FF;
  v410 = (-704643072 - 1426063360 * (((v407 ^ 0x93) + 47) ^ ((v407 ^ 0x31) - 115) ^ ((v407 ^ 0x62) - 32))) | v409;
  LODWORD(v409) = v410 + 143560491 - 2 * (v410 & 0x88E8F2F ^ v409 & 4);
  LODWORD(v105) = STACK[0x5640];
  v411 = (v409 ^ 0x3E1E5CA3) & LODWORD(STACK[0x5670]) ^ STACK[0x5640] & 0x3690D388;
  LODWORD(STACK[0x5640]) = STACK[0x5640];
  LODWORD(v121) = v121 ^ (2 * ((v121 ^ 0x154C7DE3) & (v105 ^ 0x29E6C3B8) ^ v121 & 0x1B324E7D));
  LODWORD(v105) = ((v121 & 0xDCA65FEC ^ 0x94044520 ^ (v121 ^ 0xB74CE521) & (LODWORD(STACK[0x5660]) ^ 0xBFFA981A)) << STACK[0x5790]) | ((v121 & 0x1199669A ^ 0x11086400 ^ (v121 ^ 0xB74CE521) & (LODWORD(STACK[0x5650]) ^ 0x17C6774)) >> STACK[0x57C0]);
  LODWORD(v278) = v278 ^ (2 * ((v278 ^ 0x495F8FDF) & (v408 ^ LODWORD(STACK[0x48F8])) ^ v278 & 0x4C486105));
  LODWORD(v409) = (((2 * v411) ^ 0x65210300) + 143560491 - 2 * (((2 * v411) ^ 0x65210300) & 0x88E8F2E ^ (2 * v411) & 4)) ^ v409;
  v412 = ((v278 & 0x3D52F651 ^ 0x19428451 ^ (v278 ^ 0xD9CF8DD5) & (LODWORD(STACK[0x5650]) ^ 0x2DB7F7BF)) >> STACK[0x57C0]) | (((v278 ^ 0xD9CF8DD5) & STACK[0x5760]) << STACK[0x5790]);
  v413 = (((v352 ^ 0xA5315E95) & STACK[0x5760]) << STACK[0x57B0]) + (((v352 ^ 0xA5315E95) & STACK[0x5720]) >> STACK[0x5780]);
  v414 = ((v409 & STACK[0x56F0]) << STACK[0x57B0]) ^ ((v409 & STACK[0x5720]) >> STACK[0x5780]);
  v415 = STACK[0x5740];
  v416 = LODWORD(STACK[0x5740]) ^ LODWORD(STACK[0x5280]);
  LODWORD(v409) = LODWORD(STACK[0x5740]) ^ LODWORD(STACK[0x5148]);
  LODWORD(STACK[0x5278]) = v409;
  v417 = v105;
  LODWORD(STACK[0x5140]) = v105;
  v418 = v416 + v409 - v105 + v416 + v409 - 2 * (v416 + v409 - v105);
  v419 = LODWORD(STACK[0x5268]) ^ 0xE52F361D;
  LODWORD(STACK[0x5260]) = v419;
  LODWORD(v278) = LODWORD(STACK[0x5398]) ^ v415;
  LODWORD(STACK[0x5268]) = v278;
  LODWORD(v278) = (-1042307097 * (v418 ^ (v278 + v419))) ^ ((-1042307097 * (v418 ^ (v278 + v419))) >> 16);
  v420 = v278 - v412 + (v278 >> 8);
  LODWORD(STACK[0x4B60]) = v420;
  LODWORD(STACK[0x4B58]) = 256959573 * v420;
  LODWORD(v278) = 1019823249 * (256959573 * v420 + ((256959573 * v420) >> 16) - ((256959573 * v420 + ((256959573 * v420) >> 16)) >> 8) - v414);
  v421 = LODWORD(STACK[0x4EF0]) ^ 0xE52F361D;
  v422 = LODWORD(STACK[0x50F8]) ^ 0x9DC8426C;
  LODWORD(v278) = 1335225361 * (v278 - WORD1(v278) - v413 + ((v278 - WORD1(v278)) >> 8));
  v423 = (v278 ^ WORD1(v278)) + ((v278 ^ WORD1(v278)) >> 8);
  if (((v278 ^ BYTE2(v278)) + ((v278 ^ WORD1(v278)) >> 8)))
  {
    v424 = LODWORD(STACK[0x4EF0]) ^ 0xE52F361D;
  }

  else
  {
    v424 = LODWORD(STACK[0x5100]) ^ 0xE52F361D;
  }

  if (v423)
  {
    v425 = LODWORD(STACK[0x5100]) ^ 0xE52F361D;
  }

  else
  {
    v425 = v416;
  }

  LODWORD(STACK[0x4B80]) = v425;
  if (v423)
  {
    v426 = v416;
  }

  else
  {
    v426 = v422;
  }

  if (v423)
  {
    v427 = v422;
  }

  else
  {
    v427 = v421;
  }

  LODWORD(STACK[0x4BA8]) = v427;
  v428 = STACK[0x5358];
  if (v423)
  {
    v429 = STACK[0x5358];
  }

  else
  {
    v429 = STACK[0x5270];
  }

  v430 = STACK[0x5198];
  if (v423)
  {
    v431 = STACK[0x5150];
  }

  else
  {
    v431 = STACK[0x5198];
  }

  if ((v423 & 2) != 0)
  {
    v432 = v431;
  }

  else
  {
    v432 = v429;
  }

  v433 = (v423 & 1) == 0;
  v434 = v423;
  if (v423)
  {
    v435 = STACK[0x5270];
  }

  else
  {
    v435 = STACK[0x5150];
  }

  LODWORD(STACK[0x4C68]) = v435;
  if (v433)
  {
    v436 = v428;
  }

  else
  {
    v436 = v430;
  }

  LODWORD(STACK[0x4DB8]) = v436;
  v437 = LODWORD(STACK[0x5250]) ^ 0xD091494B ^ ((v432 & 0xB4A780AE ^ 0xB4A780AE) + (v432 & 0xB4A780AE));
  v438 = v415 ^ LODWORD(STACK[0x51A0]);
  v439 = v415 ^ LODWORD(STACK[0x5510]);
  v440 = LODWORD(STACK[0x5230]) ^ 0x6436C9E5;
  if (v433)
  {
    v441 = v415 ^ LODWORD(STACK[0x5510]);
  }

  else
  {
    v441 = LODWORD(STACK[0x5250]) ^ 0xD091494B ^ ((v432 & 0xB4A780AE ^ 0xB4A780AE) + (v432 & 0xB4A780AE));
  }

  LODWORD(STACK[0x4DD0]) = v441;
  if (v433)
  {
    v439 = v438;
  }

  LODWORD(STACK[0x4DC0]) = v439;
  if (v433)
  {
    v438 = v440;
  }

  LODWORD(STACK[0x4DD8]) = v438;
  if (v433)
  {
    v440 = v437;
  }

  LODWORD(STACK[0x4DC8]) = v440;
  v442 = (v434 & 2) == 0;
  v443 = v434;
  if ((v434 & 2) != 0)
  {
    v444 = v429;
  }

  else
  {
    v444 = v431;
  }

  if ((v434 & 2) != 0)
  {
    v445 = v424;
  }

  else
  {
    v445 = v426;
  }

  if ((v434 & 2) != 0)
  {
    v424 = v426;
  }

  v446 = v415 ^ LODWORD(STACK[0x5368]);
  LODWORD(STACK[0x5250]) = v446;
  v447 = LODWORD(STACK[0x52F8]) ^ v415;
  LODWORD(STACK[0x5270]) = v447;
  v448 = 1457654223 * (v447 + v446 - v418);
  LODWORD(STACK[0x4B28]) = v448;
  v449 = v448 - HIWORD(v448);
  LODWORD(STACK[0x4B48]) = v449;
  v450 = (1671363291 * ((v449 - (v449 >> 8)) ^ v412)) ^ ((1671363291 * ((v449 - (v449 >> 8)) ^ v412)) >> 16);
  v451 = 413352991 * (v414 + (v450 ^ (v450 >> 8))) - ((413352991 * (v414 + (v450 ^ (v450 >> 8)))) >> 16);
  v452 = -788119165 * ((v451 - (v451 >> 8)) ^ v413) - ((-788119165 * ((v451 - (v451 >> 8)) ^ v413)) >> 16);
  v453 = v452 + (v452 >> 8);
  v454 = v443 + LODWORD(STACK[0x5680]);
  LODWORD(STACK[0x5280]) = v443;
  if (v442)
  {
    v455 = v436;
  }

  else
  {
    v441 = v438;
    v455 = v435;
  }

  if (v442)
  {
    v456 = v439;
  }

  else
  {
    v456 = v440;
  }

  if (v442)
  {
    v457 = v427;
  }

  else
  {
    v457 = v425;
  }

  v458 = 8 * v453;
  if (v454)
  {
    v459 = v418;
  }

  else
  {
    v459 = v413;
  }

  LODWORD(STACK[0x4B88]) = v459;
  if (v454)
  {
    v460 = v414;
  }

  else
  {
    v460 = v412;
  }

  LODWORD(STACK[0x4B90]) = v460;
  v461 = (-8 * v453) & 0x18;
  v462 = -8 * v453;
  v463 = 8 * v453;
  LODWORD(STACK[0x5358]) = v458;
  if ((v458 & 0x18) != 0)
  {
    v432 = (v432 << ((8 * v453) & 0x18)) ^ (v432 >> v461);
  }

  LODWORD(STACK[0x4DA8]) = v432;
  v464 = (v445 >> v461) + (v445 << (v458 & 0x18));
  if ((v458 & 0x18) == 0)
  {
    v464 = v445;
  }

  LODWORD(STACK[0x5230]) = v464;
  v465 = __ROR4__(v444, v461);
  LODWORD(STACK[0x4B40]) = v444;
  if ((v458 & 0x18) == 0)
  {
    v465 = v444;
  }

  LODWORD(STACK[0x4DB0]) = v465;
  if ((v454 & 2) != 0)
  {
    v466 = v459;
  }

  else
  {
    v466 = v460;
  }

  v467 = v463 & 0x18;
  v468 = (v466 << (v463 & 0x18)) + (v466 >> v461);
  if (((8 * v453) & 0x18) != 0)
  {
    v466 = v468;
  }

  LODWORD(STACK[0x4DA0]) = v466;
  v469 = v462 & 0x18;
  if (((-8 * v453) & 0x18) != 0)
  {
    v456 = (v456 << v467) + (v456 >> (v462 & 0x18));
  }

  LODWORD(STACK[0x4E80]) = v456;
  v470 = (v441 >> v469) + (v441 << v467);
  v471 = __ROR4__(v457, v469);
  if (((-8 * v453) & 0x18) != 0)
  {
    v457 = v471;
  }

  LODWORD(STACK[0x4EE8]) = v457;
  v472 = (v424 >> v469) ^ (v424 << v467);
  if (((-8 * v453) & 0x18) != 0)
  {
    v424 = v472;
  }

  LODWORD(STACK[0x4EF0]) = v424;
  LODWORD(STACK[0x4B30]) = v441;
  if (((-8 * v453) & 0x18) != 0)
  {
    v473 = v470;
  }

  else
  {
    v473 = v441;
  }

  LODWORD(STACK[0x4E18]) = v473;
  LODWORD(STACK[0x5510]) = v454;
  if (v454)
  {
    v474 = v412;
  }

  else
  {
    v474 = v418;
  }

  LODWORD(STACK[0x4DF0]) = v474;
  if (v454)
  {
    v475 = v413;
  }

  else
  {
    v475 = v414;
  }

  LODWORD(STACK[0x4DF8]) = v475;
  if ((v454 & 2) == 0)
  {
    v475 = v474;
  }

  v476 = -8 * v453;
  if (((-8 * v453) & 0x18) != 0)
  {
    v455 = (v455 >> (v462 & 0x18)) ^ (v455 << v467);
  }

  LODWORD(STACK[0x4D58]) = v455;
  if (((-8 * v453) & 0x18) != 0)
  {
    v475 = (v475 >> (v462 & 0x18)) ^ (v475 << v467);
  }

  LODWORD(STACK[0x4D98]) = v475;
  v477 = STACK[0x5750];
  v478 = (LODWORD(STACK[0x52D0]) ^ v477) - 449890787 - ((2 * (LODWORD(STACK[0x52D0]) ^ v477)) & 0xCA5E6C3A);
  v479 = (v477 ^ LODWORD(STACK[0x52E8])) - 449890787 - ((2 * (v477 ^ LODWORD(STACK[0x52E8]))) & 0xCA5E6C3A);
  v480 = ((LODWORD(STACK[0x5258]) ^ v477) - 449890787 - ((2 * (LODWORD(STACK[0x5258]) ^ v477)) & 0xCA5E6C3A)) ^ 0xE52F361D;
  v481 = LODWORD(STACK[0x5750]) ^ 0xE52F361D;
  v482 = v481 ^ (LODWORD(STACK[0x5228]) - 449890787 - ((2 * LODWORD(STACK[0x5228])) & 0xCA5E6C3A));
  v483 = v415 ^ LODWORD(STACK[0x5430]);
  v484 = v415 ^ LODWORD(STACK[0x5240]);
  v485 = v453 + v443 + v453;
  v486 = v453 + v443;
  LODWORD(STACK[0x50F8]) = v453;
  v487 = v485 + v453;
  v488 = ((v485 + v453) & 1) == 0;
  v489 = v485 + v453;
  LODWORD(STACK[0x5258]) = v485 + v453;
  if ((v485 + v453))
  {
    v490 = v480;
  }

  else
  {
    v490 = v484;
  }

  LODWORD(STACK[0x4B98]) = v490;
  if (v487)
  {
    v491 = v482;
  }

  else
  {
    v484 = v482;
    v491 = v483;
  }

  LODWORD(STACK[0x4BA0]) = v491;
  if (v487)
  {
    v492 = v483;
  }

  else
  {
    v492 = v480;
  }

  LODWORD(STACK[0x5240]) = v478 ^ 0xE52F361D;
  v493 = v479 ^ 0xE52F361D;
  LODWORD(STACK[0x5228]) = v479 ^ 0xE52F361D;
  v494 = LODWORD(STACK[0x5298]) ^ v415;
  LODWORD(STACK[0x51A0]) = v494;
  v495 = LODWORD(STACK[0x5390]) ^ v415;
  LODWORD(STACK[0x5198]) = v495;
  if (v488)
  {
    LODWORD(v496) = v494;
  }

  else
  {
    LODWORD(v496) = v478 ^ 0xE52F361D;
  }

  if (v488)
  {
    v497 = v495;
  }

  else
  {
    v497 = v493;
  }

  if ((v489 & 2) != 0)
  {
    v498 = v484;
  }

  else
  {
    v498 = v492;
  }

  if ((v489 & 2) != 0)
  {
    v499 = v496;
  }

  else
  {
    v492 = v484;
    v499 = v497;
  }

  STACK[0x5680] = v499;
  if ((v489 & 2) != 0)
  {
    v496 = v497;
  }

  else
  {
    v496 = v496;
  }

  STACK[0x5430] = v496;
  if ((v489 & 2) != 0)
  {
    v500 = v490;
  }

  else
  {
    v500 = v491;
  }

  v501 = v476 & 0x18;
  v502 = v476;
  LODWORD(STACK[0x4B70]) = v476;
  if ((v476 & 0x18) != 0)
  {
    v492 = (v492 << v467) ^ (v492 >> (v476 & 0x18));
  }

  LODWORD(STACK[0x4EC8]) = v492;
  v503 = (v498 >> v501) ^ (v498 << v467);
  if ((v476 & 0x18) == 0)
  {
    v503 = v498;
  }

  LODWORD(STACK[0x4EC0]) = v503;
  v504 = (v500 << v467) + (v500 >> v501);
  if ((v476 & 0x18) == 0)
  {
    v504 = v500;
  }

  LODWORD(STACK[0x4ED0]) = v504;
  v505 = (LODWORD(STACK[0x4E00]) ^ v477) - 449890787 - ((2 * (LODWORD(STACK[0x4E00]) ^ v477)) & 0xCA5E6C3A);
  v506 = (LODWORD(STACK[0x4E08]) ^ v477) - 449890787 - ((2 * (LODWORD(STACK[0x4E08]) ^ v477)) & 0xCA5E6C3A);
  v507 = (LODWORD(STACK[0x5158]) ^ v477) - 449890787 - ((2 * (LODWORD(STACK[0x5158]) ^ v477)) & 0xCA5E6C3A);
  LODWORD(STACK[0x50F0]) = v412;
  LODWORD(STACK[0x5440]) = v413;
  LODWORD(STACK[0x50E8]) = v414;
  v508 = (v414 ^ (v417 - v412 - v413 - 794664914)) + 2060763512;
  v509 = v508 ^ 0xE52F361D ^ v506;
  v510 = v508 ^ 0xE52F361D ^ v505;
  v511 = v508 ^ 0xE52F361D ^ v507;
  v512 = (LODWORD(STACK[0x4EB8]) ^ v477) - 449890787 - ((2 * (LODWORD(STACK[0x4EB8]) ^ v477)) & 0xCA5E6C3A);
  v513 = (LODWORD(STACK[0x5340]) ^ v477) - 449890787 - ((2 * (LODWORD(STACK[0x5340]) ^ v477)) & 0xCA5E6C3A);
  v514 = (LODWORD(STACK[0x56C0]) ^ v477) - 449890787 - ((2 * (LODWORD(STACK[0x56C0]) ^ v477)) & 0xCA5E6C3A);
  v515 = STACK[0x4E10];
  v516 = (LODWORD(STACK[0x5160]) ^ v515) - 449890787 - ((2 * (LODWORD(STACK[0x5160]) ^ v515)) & 0xCA5E6C3A);
  v517 = LODWORD(STACK[0x5168]) ^ LODWORD(STACK[0x5378]);
  v518 = LODWORD(STACK[0x56D0]) ^ 0x3F88;
  LODWORD(STACK[0x49C0]) = 3923 * v518;
  v519 = (3923 * v518 - 11770) ^ (2 * v517) & 0xCA5E6C3A;
  v518 += 10198;
  LODWORD(STACK[0x56C0]) = v518;
  v520 = v517 + v518 - 449900987 + v519;
  v521 = v415 ^ LODWORD(STACK[0x5420]);
  LODWORD(STACK[0x5100]) = v508;
  v522 = v521 ^ v508;
  LODWORD(STACK[0x4AC8]) = v509;
  LODWORD(STACK[0x4AA0]) = v521 ^ v508;
  if ((v485 & 1) == 0)
  {
    v522 = v509;
  }

  LODWORD(STACK[0x4AC0]) = v510;
  LODWORD(STACK[0x4AB8]) = v511;
  if (v485)
  {
    v523 = v510;
  }

  else
  {
    v523 = v511;
  }

  v524 = v512 ^ 0xE52F361D;
  v525 = v513 ^ 0xE52F361D;
  if (v485)
  {
    v526 = v525;
  }

  else
  {
    v526 = v524;
  }

  LODWORD(STACK[0x5340]) = v526;
  v527 = v514 ^ 0xE52F361D;
  if (v485)
  {
    v528 = v524;
  }

  else
  {
    v528 = v514 ^ 0xE52F361D;
  }

  *(v0 - 152) = v527;
  LODWORD(STACK[0x4B78]) = v528;
  v529 = v415 ^ LODWORD(STACK[0x5178]);
  v530 = v415 ^ LODWORD(STACK[0x5170]);
  v531 = v415 ^ LODWORD(STACK[0x5288]);
  v532 = v516 ^ 0x6436C9E5;
  if (v485)
  {
    v525 = v415 ^ LODWORD(STACK[0x5178]);
  }

  LODWORD(STACK[0x4E08]) = v525;
  if (v485)
  {
    v533 = v530;
  }

  else
  {
    v533 = v516 ^ 0x6436C9E5;
  }

  LODWORD(STACK[0x4E00]) = v533;
  if ((v485 & 1) == 0)
  {
    v532 = v531;
  }

  LODWORD(STACK[0x5288]) = v532;
  if ((v485 & 2) == 0)
  {
    v525 = v528;
  }

  LODWORD(STACK[0x4AB0]) = v522;
  LODWORD(STACK[0x4AA8]) = v523;
  if ((v485 & 2) != 0)
  {
    v534 = v522;
  }

  else
  {
    v534 = v523;
  }

  LODWORD(STACK[0x5420]) = v534;
  v535 = v502 & 0x18;
  v536 = __ROR4__(v525, v502 & 0x18);
  if ((v502 & 0x18) != 0)
  {
    v537 = v536;
  }

  else
  {
    v537 = v525;
  }

  LODWORD(STACK[0x4EB8]) = v537;
  v538 = v481 ^ (LODWORD(STACK[0x4E78]) - 449890787 - ((2 * LODWORD(STACK[0x4E78])) & 0xCA5E6C3A));
  v539 = (LODWORD(STACK[0x5310]) ^ v477) - 449890787 - ((2 * (LODWORD(STACK[0x5310]) ^ v477)) & 0xCA5E6C3A);
  v540 = (v515 ^ LODWORD(STACK[0x5380])) - 449890787 - ((2 * (v515 ^ LODWORD(STACK[0x5380]))) & 0xCA5E6C3A);
  v541 = (v515 ^ LODWORD(STACK[0x53D8])) - 449890787 - ((2 * (v515 ^ LODWORD(STACK[0x53D8]))) & 0xCA5E6C3A);
  v542 = (LODWORD(STACK[0x52A0]) ^ v515) - 449890787 - ((2 * (LODWORD(STACK[0x52A0]) ^ v515)) & 0xCA5E6C3A);
  v543 = (LODWORD(STACK[0x5180]) ^ v515) - 449890787 - ((2 * (LODWORD(STACK[0x5180]) ^ v515)) & 0xCA5E6C3A);
  if (v486)
  {
    v544 = v415 ^ LODWORD(STACK[0x4EA0]);
  }

  else
  {
    v544 = v415 ^ LODWORD(STACK[0x4E90]);
  }

  if (v486)
  {
    v545 = v415 ^ LODWORD(STACK[0x4E90]);
  }

  else
  {
    v545 = v415 ^ LODWORD(STACK[0x5188]);
  }

  if (v486)
  {
    v546 = v415 ^ LODWORD(STACK[0x5188]);
  }

  else
  {
    v546 = v415 ^ LODWORD(STACK[0x4E88]);
  }

  if (v486)
  {
    v547 = v415 ^ LODWORD(STACK[0x4E88]);
  }

  else
  {
    v547 = v415 ^ LODWORD(STACK[0x4EA0]);
  }

  v548 = (v515 ^ LODWORD(STACK[0x52E0])) - 449890787 - ((2 * (v515 ^ LODWORD(STACK[0x52E0]))) & 0xCA5E6C3A);
  v549 = v520 ^ 0x9DC8426C;
  v550 = v415 ^ LODWORD(STACK[0x5190]);
  v551 = v539 ^ 0xE52F361D;
  LODWORD(STACK[0x5168]) = v539 ^ 0xE52F361D;
  v552 = v415 ^ LODWORD(STACK[0x4ED8]);
  v553 = v543 ^ 0x6436C9E5;
  v554 = v540 ^ 0x6436C9E5;
  LODWORD(STACK[0x5160]) = v540 ^ 0x6436C9E5;
  v555 = v542 ^ 0x6436C9E5;
  LODWORD(STACK[0x5188]) = v555;
  v556 = STACK[0x55C0] ^ v415;
  LODWORD(STACK[0x5158]) = v556;
  v557 = LODWORD(STACK[0x52A8]) ^ v415;
  LODWORD(STACK[0x5180]) = v557;
  if (v486)
  {
    v558 = v552;
  }

  else
  {
    v558 = v553;
  }

  LODWORD(STACK[0x4E88]) = v558;
  v559 = *(v0 - 152);
  if (v486)
  {
    v555 = v557;
  }

  LODWORD(STACK[0x5190]) = v555;
  v560 = STACK[0x5460];
  if (v486)
  {
    v560 = v556;
  }

  LODWORD(STACK[0x5150]) = v560;
  if (v486)
  {
    v561 = v554;
  }

  else
  {
    v561 = v551;
  }

  LODWORD(STACK[0x5148]) = v561;
  LODWORD(STACK[0x4AE8]) = v549;
  LODWORD(STACK[0x4AE0]) = v550;
  if (v486)
  {
    v562 = v549;
  }

  else
  {
    v562 = v550;
  }

  LODWORD(STACK[0x4B38]) = v538;
  LODWORD(v563) = STACK[0x5278];
  if (v486)
  {
    LODWORD(v563) = v538;
  }

  v564 = v486;
  v565 = (v486 & 1) == 0;
  v566 = v415 ^ LODWORD(STACK[0x5078]);
  if (v486)
  {
    v567 = v415 ^ LODWORD(STACK[0x4EE0]);
  }

  else
  {
    v567 = v552;
  }

  if (v565)
  {
    v568 = v415 ^ LODWORD(STACK[0x4EE0]);
  }

  else
  {
    v568 = v415 ^ LODWORD(STACK[0x5078]);
  }

  LODWORD(STACK[0x4E78]) = v568;
  if (v565)
  {
    v569 = v566;
  }

  else
  {
    v569 = v553;
  }

  LODWORD(STACK[0x5178]) = v548 ^ 0x6436C9E5;
  LODWORD(STACK[0x5170]) = v541 ^ 0x6436C9E5;
  if (v565)
  {
    v570 = v548 ^ 0x6436C9E5;
  }

  else
  {
    v570 = v541 ^ 0x6436C9E5;
  }

  if ((v564 & 2) != 0)
  {
    v571 = v562;
  }

  else
  {
    v571 = v563;
  }

  if ((v564 & 2) != 0)
  {
    v563 = v563;
  }

  else
  {
    v563 = v562;
  }

  v572 = STACK[0x5358];
  v573 = STACK[0x5358] & 0x18;
  v574 = __ROR4__(v571, v535);
  if ((STACK[0x5358] & 0x18) != 0)
  {
    v571 = v574;
  }

  LODWORD(STACK[0x4EE0]) = v571;
  v575 = v563 << v573;
  STACK[0x49B8] = v575;
  if ((v572 & 0x18) != 0)
  {
    LODWORD(v563) = (v563 >> v535) ^ v575;
  }

  LODWORD(STACK[0x5078]) = v563;
  v576 = STACK[0x5280];
  v577 = STACK[0x4BA8];
  if ((STACK[0x5280] & 2) == 0)
  {
    v577 = STACK[0x4B80];
  }

  v578 = v577 - (((STACK[0x56F0] & 0x72339217 ^ 0x72339217) + (STACK[0x56F0] & 0x72339217)) & ~LODWORD(STACK[0x56F0]) | STACK[0x56F0] & 0x72339217) + 1915982359;
  v579 = v572 & 0x18;
  if ((v572 & 0x18) != 0)
  {
    v578 = (v578 << (v572 & 0x18)) + (v578 >> v535);
  }

  LODWORD(STACK[0x4ED8]) = v578;
  if (v485)
  {
    v580 = v559;
  }

  else
  {
    v580 = v529;
  }

  LODWORD(STACK[0x4B68]) = v580;
  v581 = ((LODWORD(STACK[0x4EF8]) ^ v515) - 449890787 - ((2 * (LODWORD(STACK[0x4EF8]) ^ v515)) & 0xCA5E6C3A)) ^ 0x6436C9E5;
  if (v485)
  {
    v582 = ((LODWORD(STACK[0x4EF8]) ^ v515) - 449890787 - ((2 * (LODWORD(STACK[0x4EF8]) ^ v515)) & 0xCA5E6C3A)) ^ 0x6436C9E5;
  }

  else
  {
    v582 = v530;
  }

  LODWORD(STACK[0x4B80]) = v582;
  if (v485)
  {
    v581 = v531;
  }

  v583 = v544;
  if ((v564 & 2) != 0)
  {
    v584 = v546;
  }

  else
  {
    v584 = v544;
  }

  v585 = v546;
  if ((v564 & 2) != 0)
  {
    v586 = v547;
  }

  else
  {
    v586 = v545;
  }

  v587 = v547;
  v588 = v545;
  if ((v485 & 2) != 0)
  {
    v589 = v581;
  }

  else
  {
    v589 = STACK[0x4E00];
  }

  if ((v485 & 2) != 0)
  {
    v590 = STACK[0x4E00];
  }

  else
  {
    v590 = v581;
  }

  if ((v485 & 2) != 0)
  {
    v591 = v582;
  }

  else
  {
    v591 = STACK[0x5288];
  }

  if ((v485 & 2) != 0)
  {
    v592 = v580;
  }

  else
  {
    v592 = STACK[0x5340];
  }

  v593 = STACK[0x4B70];
  v594 = (v586 >> (STACK[0x4B70] & 0x18)) ^ (v586 << v579);
  if ((STACK[0x4B70] & 0x18) != 0)
  {
    v595 = (v584 >> (STACK[0x4B70] & 0x18)) + (v584 << v579);
  }

  else
  {
    v595 = v584;
  }

  LODWORD(STACK[0x4EA0]) = v595;
  if ((v593 & 0x18) != 0)
  {
    v596 = v594;
  }

  else
  {
    v596 = v586;
  }

  LODWORD(STACK[0x4E90]) = v596;
  v598 = (LODWORD(STACK[0x4EB0]) ^ v515) - 449890787 - ((2 * (LODWORD(STACK[0x4EB0]) ^ v515)) & 0xCA5E6C3A);
  v599 = ((LODWORD(STACK[0x4EA8]) ^ v515) - 449890787 - ((2 * (LODWORD(STACK[0x4EA8]) ^ v515)) & 0xCA5E6C3A)) ^ 0x6436C9E5;
  v600 = ((LODWORD(STACK[0x4F00]) ^ v515) - 449890787 - ((2 * (LODWORD(STACK[0x4F00]) ^ v515)) & 0xCA5E6C3A)) ^ 0x6436C9E5;
  if (STACK[0x5258])
  {
    v601 = ((LODWORD(STACK[0x4EA8]) ^ v515) - 449890787 - ((2 * (LODWORD(STACK[0x4EA8]) ^ v515)) & 0xCA5E6C3A)) ^ 0x6436C9E5;
  }

  else
  {
    v601 = ((LODWORD(STACK[0x4F00]) ^ v515) - 449890787 - ((2 * (LODWORD(STACK[0x4F00]) ^ v515)) & 0xCA5E6C3A)) ^ 0x6436C9E5;
  }

  v602 = STACK[0x5258];
  v597 = (LODWORD(STACK[0x50B8]) ^ v515) - 449890787 - ((2 * (LODWORD(STACK[0x50B8]) ^ v515)) & 0xCA5E6C3A);
  v603 = v597 ^ 0x6436C9E5;
  v604 = v598 ^ 0x6436C9E5;
  if (STACK[0x5258])
  {
    v605 = v597 ^ 0x6436C9E5;
  }

  else
  {
    v605 = v598 ^ 0x6436C9E5;
  }

  v606 = STACK[0x4DB8];
  if ((v576 & 2) != 0)
  {
    v607 = STACK[0x4DD0];
  }

  else
  {
    v606 = STACK[0x4C68];
    v607 = STACK[0x4DD8];
  }

  if ((v576 & 2) != 0)
  {
    v608 = STACK[0x4DC0];
  }

  else
  {
    v608 = STACK[0x4DC8];
  }

  LODWORD(STACK[0x4B50]) = v564;
  v609 = (v564 & 2) == 0;
  if ((v564 & 2) != 0)
  {
    v610 = v567;
  }

  else
  {
    v610 = v569;
  }

  if ((v564 & 2) != 0)
  {
    v611 = v569;
  }

  else
  {
    v611 = v567;
  }

  v612 = STACK[0x4E78];
  if ((v564 & 2) != 0)
  {
    v613 = STACK[0x4E88];
  }

  else
  {
    v613 = STACK[0x4E78];
  }

  if (v609)
  {
    v612 = STACK[0x4E88];
    v583 = v585;
    v588 = v587;
  }

  LODWORD(STACK[0x4EA8]) = v588;
  LODWORD(STACK[0x4AD8]) = v570;
  v614 = STACK[0x5190];
  if (!v609)
  {
    v614 = v570;
  }

  LODWORD(STACK[0x4F00]) = v614;
  v615 = STACK[0x5150];
  if (v609)
  {
    v615 = STACK[0x5148];
  }

  LODWORD(STACK[0x50B8]) = v615;
  if ((v602 & 2) != 0)
  {
    v616 = v605;
  }

  else
  {
    v616 = v601;
  }

  v617 = v593 & 0x18;
  v618 = __ROR4__(v606, v593 & 0x18);
  if ((v593 & 0x18) == 0)
  {
    v618 = v606;
  }

  v619 = __ROR4__(v613, v617);
  if ((v593 & 0x18) == 0)
  {
    v619 = v613;
  }

  LODWORD(STACK[0x4BA8]) = v619;
  v620 = (v590 >> v617) + (v590 << v579);
  if ((v593 & 0x18) == 0)
  {
    v620 = v590;
  }

  LODWORD(STACK[0x4DD0]) = v620;
  v621 = (v589 >> v617) + (v589 << v579);
  if ((v593 & 0x18) == 0)
  {
    v621 = v589;
  }

  LODWORD(STACK[0x4DC8]) = v621;
  v622 = STACK[0x5750];
  v623 = (v591 >> v617) ^ (v591 << v579);
  if ((v593 & 0x18) == 0)
  {
    v623 = v591;
  }

  LODWORD(STACK[0x4DC0]) = v623;
  v624 = (v616 << v579) ^ (v616 >> v617);
  if ((v593 & 0x18) == 0)
  {
    v624 = v616;
  }

  LODWORD(STACK[0x4E00]) = v624;
  v625 = __ROR4__(v612, v617);
  LODWORD(STACK[0x4A98]) = v612;
  if ((v593 & 0x18) == 0)
  {
    v625 = v612;
  }

  LODWORD(STACK[0x4C68]) = v625;
  v626 = STACK[0x5358];
  v627 = (v592 << (STACK[0x5358] & 0x18)) + (v592 >> v617);
  if ((STACK[0x5358] & 0x18) == 0)
  {
    v627 = v592;
  }

  LODWORD(STACK[0x4EB0]) = v627;
  v628 = v602;
  if (v602)
  {
    v629 = v604;
  }

  else
  {
    v629 = v599;
  }

  if (v602)
  {
    v630 = v600;
  }

  else
  {
    v630 = v603;
  }

  v631 = (v628 & 2) == 0;
  if ((v628 & 2) != 0)
  {
    v632 = v630;
  }

  else
  {
    v632 = v629;
  }

  if ((v628 & 2) != 0)
  {
    v630 = v629;
    v633 = v601;
  }

  else
  {
    v633 = v605;
  }

  v634 = STACK[0x4BA0];
  if (v631)
  {
    v634 = STACK[0x4B98];
  }

  v635 = __ROR4__(v634, v617);
  if ((v626 & 0x18) != 0)
  {
    v634 = v635;
  }

  LODWORD(STACK[0x4EF8]) = v634;
  LODWORD(STACK[0x4AD0]) = v485;
  v636 = STACK[0x4B80];
  if ((v485 & 2) != 0)
  {
    v636 = STACK[0x5288];
  }

  v637 = STACK[0x4B68];
  if ((v485 & 2) != 0)
  {
    v637 = STACK[0x5340];
  }

  v638 = STACK[0x4E08];
  if ((v485 & 2) != 0)
  {
    v638 = STACK[0x4B78];
  }

  v639 = STACK[0x5510];
  v640 = STACK[0x4DF8];
  if ((STACK[0x5510] & 2) != 0)
  {
    v640 = STACK[0x4DF0];
  }

  v641 = v593 & 0x18;
  if ((v593 & 0x18) != 0)
  {
    v642 = (v640 >> (v593 & 0x18)) ^ (v640 << (v626 & 0x18));
  }

  else
  {
    v642 = v640;
  }

  v643 = v626 & 0x18;
  v644 = __ROR4__(v610, v641);
  if ((v626 & 0x18) != 0)
  {
    v610 = v644;
  }

  LODWORD(STACK[0x4B98]) = v610;
  if ((v626 & 0x18) != 0)
  {
    v645 = (v611 >> v641) + (v611 << v643);
  }

  else
  {
    v645 = v611;
  }

  LODWORD(STACK[0x4BA0]) = v645;
  v646 = (v636 << v643) + (v636 >> v641);
  if ((v626 & 0x18) == 0)
  {
    v646 = v636;
  }

  LODWORD(STACK[0x4DB8]) = v646;
  v647 = STACK[0x5540];
  v648 = ((v647 & 0xA8CAA45D ^ 0xA8CAA45D) + (v647 & 0xA8CAA45D)) ^ 0xA8CAA45D ^ LODWORD(STACK[0x4EA8]);
  if ((v626 & 0x18) != 0)
  {
    v632 = (v632 << v643) ^ (v632 >> v641);
  }

  LODWORD(STACK[0x4DD8]) = v632;
  if ((v626 & 0x18) != 0)
  {
    v630 = (v630 >> v641) + (v630 << v643);
  }

  LODWORD(STACK[0x4DF8]) = v630;
  v649 = (v633 << v643) ^ (v633 >> v641);
  if ((v626 & 0x18) == 0)
  {
    v649 = v633;
  }

  LODWORD(STACK[0x4DF0]) = v649;
  v650 = (v607 >> v641) + (v607 << v643);
  if ((v626 & 0x18) == 0)
  {
    v650 = v607;
  }

  LODWORD(STACK[0x4E08]) = v650;
  v651 = (v608 >> v641) ^ (v608 << v643);
  if ((v626 & 0x18) == 0)
  {
    v651 = v608;
  }

  LODWORD(STACK[0x4E78]) = v651;
  v652 = __ROR4__(v583, v641);
  if ((v626 & 0x18) == 0)
  {
    v652 = v583;
  }

  LODWORD(STACK[0x4E88]) = v652;
  v653 = (v648 >> v641) + (v648 << v643);
  if ((v626 & 0x18) == 0)
  {
    v653 = v648;
  }

  LODWORD(STACK[0x4EA8]) = v653;
  v654 = __ROR4__(v637, v641);
  if ((v626 & 0x18) == 0)
  {
    v654 = v637;
  }

  LODWORD(STACK[0x5288]) = v654;
  if ((v626 & 0x18) != 0)
  {
    v638 = (v638 >> v641) + (v638 << v643);
  }

  LODWORD(STACK[0x5340]) = v638;
  v655 = STACK[0x4B90];
  if ((v639 & 2) == 0)
  {
    v655 = STACK[0x4B88];
  }

  LODWORD(STACK[0x5358]) = v641;
  LODWORD(STACK[0x4B90]) = v626 & 0x18;
  if ((v626 & 0x18) != 0)
  {
    v656 = (v655 >> v641) + (v655 << (v626 & 0x18));
  }

  else
  {
    v656 = v655;
  }

  v657 = (v622 ^ LODWORD(STACK[0x5318])) - 449890787 - ((2 * (v622 ^ LODWORD(STACK[0x5318]))) & 0xCA5E6C3A);
  v658 = STACK[0x5530];
  v659 = STACK[0x50D0];
  v660 = LODWORD(STACK[0x5378]) ^ LODWORD(STACK[0x50A8]);
  v661 = STACK[0x55B0];
  v662 = STACK[0x53D0];
  v663 = STACK[0x53A0];
  v664 = STACK[0x50D8];
  v665 = STACK[0x50A0];
  v666 = STACK[0x53E0];
  v667 = STACK[0x5450];
  v668 = STACK[0x50E0];
  v669 = STACK[0x5410];
  v670 = STACK[0x5520];
  LODWORD(STACK[0x5378]) = LODWORD(STACK[0x5368]) ^ LODWORD(STACK[0x5530]) ^ LODWORD(STACK[0x52E8]) ^ LODWORD(STACK[0x52E0]) ^ LODWORD(STACK[0x5318]) ^ LODWORD(STACK[0x5380]) ^ LODWORD(STACK[0x50D0]) ^ LODWORD(STACK[0x50A8]) ^ STACK[0x55B0] ^ LODWORD(STACK[0x53D0]) ^ LODWORD(STACK[0x53A0]) ^ LODWORD(STACK[0x50D8]) ^ LODWORD(STACK[0x50A0]) ^ LODWORD(STACK[0x53E0]) ^ LODWORD(STACK[0x5450]) ^ LODWORD(STACK[0x50E0]) ^ LODWORD(STACK[0x5410]) ^ LODWORD(STACK[0x52A0]) ^ STACK[0x55C0] ^ LODWORD(STACK[0x52A8]) ^ LODWORD(STACK[0x52D0]) ^ LODWORD(STACK[0x5520]) ^ LODWORD(STACK[0x5298]);
  v671 = (v622 ^ v658) - 449890787 - ((2 * (v622 ^ v658)) & 0xCA5E6C3A);
  v672 = (v515 ^ v664) - 449890787 - ((2 * (v515 ^ v664)) & 0xCA5E6C3A);
  v673 = v515 ^ STACK[0x55F0];
  v674 = (v515 ^ v665) - 449890787 - ((2 * (v515 ^ v665)) & 0xCA5E6C3A);
  v675 = v515 ^ v661;
  LODWORD(v661) = (LODWORD(STACK[0x53E8]) ^ v515) - 449890787 - ((2 * (LODWORD(STACK[0x53E8]) ^ v515)) & 0xCA5E6C3A);
  v676 = STACK[0x5740];
  v677 = LODWORD(STACK[0x5740]) ^ v659;
  v678 = STACK[0x54D0] ^ LODWORD(STACK[0x54E0]) ^ LODWORD(STACK[0x5250]);
  v679 = LODWORD(STACK[0x5740]) ^ STACK[0x5570];
  LODWORD(STACK[0x5380]) = v677;
  LODWORD(STACK[0x52A8]) = v679;
  v680 = v678 ^ v679 ^ v677;
  v681 = v662 ^ v676;
  v682 = LODWORD(STACK[0x53A8]) ^ v676;
  LODWORD(STACK[0x50A0]) = v681;
  LODWORD(STACK[0x4E10]) = v682;
  LODWORD(STACK[0x50A8]) = v663 ^ v676;
  LODWORD(STACK[0x50D8]) = v671 ^ 0xE52F361D;
  LODWORD(STACK[0x50D0]) = v657 ^ 0xE52F361D;
  v683 = v680 ^ v681 ^ v682 ^ v663 ^ v676 ^ v671 ^ 0xE52F361D ^ v657 ^ 0xE52F361D ^ LODWORD(STACK[0x5228]);
  v684 = (v660 - 449890787 - ((2 * v660) & 0xCA5E6C3A)) ^ 0x9DC8426C;
  LODWORD(STACK[0x52E8]) = v684;
  v685 = v683 ^ v684 ^ LODWORD(STACK[0x5160]) ^ LODWORD(STACK[0x5460]);
  v686 = (v673 - 449890787 - ((2 * v673) & 0xCA5E6C3A)) ^ 0x6436C9E5;
  LODWORD(STACK[0x52E0]) = v672 ^ 0x6436C9E5;
  LODWORD(STACK[0x52D0]) = v686;
  LODWORD(STACK[0x52A0]) = v674 ^ 0x6436C9E5;
  v687 = v685 ^ v672 ^ 0x6436C9E5 ^ v686 ^ v674 ^ 0x6436C9E5;
  v688 = (v675 - 449890787 - ((2 * v675) & 0xCA5E6C3A)) ^ 0x6436C9E5;
  LODWORD(STACK[0x4B88]) = v688;
  v689 = v688 ^ LODWORD(STACK[0x5178]) ^ LODWORD(STACK[0x5170]);
  LODWORD(STACK[0x5450]) = v667;
  v690 = v687 ^ v689 ^ v667;
  LODWORD(STACK[0x50E0]) = v666 ^ v676;
  v691 = v666 ^ v676 ^ LODWORD(STACK[0x5270]);
  LODWORD(STACK[0x5410]) = v669;
  LODWORD(STACK[0x4B80]) = v668 ^ v676;
  v692 = v691 ^ v669 ^ v668 ^ v676 ^ LODWORD(STACK[0x5470]) ^ LODWORD(STACK[0x5158]) ^ LODWORD(STACK[0x5188]) ^ LODWORD(STACK[0x5180]);
  v693 = LODWORD(STACK[0x5348]) ^ v676;
  LODWORD(STACK[0x5298]) = v693;
  v694 = v690 ^ v692 ^ v693 ^ LODWORD(STACK[0x5260]);
  LODWORD(STACK[0x5520]) = v670;
  v695 = v670 ^ LODWORD(STACK[0x5240]) ^ LODWORD(STACK[0x51A0]) ^ LODWORD(STACK[0x5168]) ^ LODWORD(STACK[0x5198]) ^ LODWORD(STACK[0x5268]);
  LODWORD(STACK[0x4B78]) = v661 ^ 0x6436C9E5;
  LODWORD(STACK[0x53D0]) = v694 ^ v695 ^ v661 ^ 0x6436C9E5;
  v696 = (STACK[0x4F08] & LODWORD(STACK[0x5760])) << STACK[0x57B0];
  v697 = STACK[0x5620] & 0x151104 ^ STACK[0x4F08] & (LODWORD(STACK[0x5650]) ^ 0x109A9202) ^ 0xB9388;
  v698 = STACK[0x5780];
  v699 = v647 ^ (v696 + (v697 >> STACK[0x5780])) ^ LODWORD(STACK[0x4D58]) ^ LODWORD(STACK[0x4DA0]);
  v700 = STACK[0x57A0];
  v701 = *(STACK[0x57A0] + (BYTE2(v699) ^ 0xEAu) + 138347);
  LODWORD(STACK[0x55C0]) = ((v701 ^ 0xFFFFFFAC) + 98) ^ ((v701 ^ 0x5C) + 18) ^ ((v701 ^ 0x37) + 123);
  v702 = STACK[0x5660];
  v703 = (STACK[0x5600] & 0x5141414 ^ 0x9189088 ^ (LODWORD(STACK[0x5660]) ^ 0xE00130Au) & STACK[0x51A8]) << STACK[0x5790];
  v704 = v703 ^ STACK[0x53B0] ^ v647 ^ LODWORD(STACK[0x4DA8]) ^ LODWORD(STACK[0x4D98]);
  LOBYTE(v701) = *(v700 + ((55 * BYTE2(v704)) ^ 0x80u) + 157365);
  LOBYTE(v701) = (((v701 ^ 0x27) - 39) ^ ((v701 ^ 0x42) - 66) ^ ((v701 ^ 0xD8) + 40)) - 54;
  LOBYTE(v661) = v701 & 0x6D ^ 0x57;
  LOBYTE(v681) = v701 ^ 0x46;
  LOBYTE(v701) = v701 ^ (2 * (v681 & (2 * (v681 & (2 * (v681 & (2 * (v681 & (2 * (v681 & (2 * (((2 * (v701 & 7)) ^ 0x2A) & (v701 ^ 6) ^ v661)) ^ v661)) ^ v661)) ^ v661)) ^ v661)) ^ v661));
  v705 = ((((v701 ^ 0xE5) - 95) ^ ((v701 ^ 0xC6) - 124) ^ ((v701 ^ 0x29) + 109)) - 75);
  v706 = v647 ^ (v696 + (v697 >> STACK[0x57C0])) ^ LODWORD(STACK[0x4DB0]) ^ v642;
  LOBYTE(v696) = BYTE1(v699) ^ *(v700 + (BYTE1(v699) ^ 0x1D9FLL));
  LODWORD(v696) = 545 * (-54 - 85 * (((v696 ^ 0xD2) + 126) ^ ((v696 ^ 0xAA) + 6) ^ ((v696 ^ 0x76) - 38))) + 140610;
  LODWORD(v661) = v696 - 1552 * ((2767376 * v696) >> 32);
  LODWORD(v697) = v703 ^ (STACK[0x4F48] >> v698) ^ v647 ^ v618 ^ v656;
  LODWORD(v696) = (v704 >> 5) | (8 * (v704 & 0x1F));
  LOBYTE(v673) = (((v696 ^ 0x6A) + 48) ^ ((v696 ^ 0x5E) + 28) ^ ((v696 ^ 0xF3) - 73)) + 103;
  v707 = v673 & 0xC6 ^ 0x9A;
  LOBYTE(v696) = v673 ^ *((v696 ^ 0x52) + v700 + 60096) ^ (2 * ((v673 ^ 0x50) & (2 * ((v673 ^ 0x50) & (2 * ((v673 ^ 0x50) & (2 * ((v673 ^ 0x50) & (2 * ((v673 ^ 0x50) & (2 * v707) ^ v707)) ^ v707)) ^ v707)) ^ v707)) ^ v707));
  LODWORD(v696) = 545 * ((((v696 ^ 0x50) + 13) ^ ((v696 ^ 0xD9) - 122) ^ ((v696 ^ 0xCC) - 111)) + 74) + 140610;
  v708 = 545 * HIBYTE(v704) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v704) + 140610)) >> 32);
  v709 = 545 * (((v697 >> 7) & 4) + (BYTE1(v697) ^ 0x102));
  LOBYTE(v704) = *(v700 + (BYTE1(v704) ^ 0x1Du) + 121862);
  v710 = 545 * (-85 * (((v704 ^ 0xCF) + 79) ^ ((v704 ^ 0xF1) + 113) ^ ((v704 ^ 0xD2) + 84)) - 122) + 140610;
  v711 = STACK[0x5770];
  HIDWORD(v712) = *(STACK[0x5770] + 4 * (v710 - 1552 * ((2767376 * v710) >> 32)));
  LODWORD(v712) = HIDWORD(v712);
  v713 = (v712 >> 16) ^ __ROR4__(*(STACK[0x5770] + 4 * (545 * v697 + 140610 - 1552 * ((2767376 * (545 * v697 + 140610)) >> 32))), 24) ^ *(STACK[0x5770] + 4 * (545 * HIBYTE(v706) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v706) + 140610)) >> 32)));
  HIDWORD(v712) = *(STACK[0x5770] + 4 * (545 * v706 + 140610 - 1552 * ((2767376 * (545 * v706 + 140610)) >> 32)));
  LODWORD(v712) = HIDWORD(v712);
  v714 = (v712 >> 24) ^ __ROR4__(*(STACK[0x5770] + 4 * ((545 * (v705 | ((v705 < 0x12) << 8)) + 130800) % 0x610)), 8) ^ *(STACK[0x5770] + 4 * (545 * HIBYTE(v699) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v699) + 140610)) >> 32))) ^ __ROR4__(*(STACK[0x5770] + 4 * (v709 - 1552 * ((2767376 * v709) >> 32))), 16);
  v715 = 545 * (-85 * LODWORD(STACK[0x55C0]) - 89) + 140610;
  v716 = v713 ^ __ROR4__(*(STACK[0x5770] + 4 * (v715 - 1552 * ((2767376 * v715) >> 32))), 8);
  LOBYTE(v682) = STACK[0x5790];
  v717 = (((STACK[0x5600] & 0x13424142 ^ 0xAA686081 ^ (LODWORD(STACK[0x5660]) ^ 0xD832A231) & STACK[0x4F50]) << v682) + (STACK[0x4F58] >> v698)) ^ v647 ^ LODWORD(STACK[0x4B98]) ^ ((((v714 ^ 0x5F358E7D) + 1615438772) ^ ((v714 ^ 0x15CECB25) + 716367596) ^ ((v714 ^ 0x4AFB4558) + 1971808407)) - 1065102799);
  v718 = STACK[0x5650];
  v719 = STACK[0x57C0];
  v720 = STACK[0x4F10] ^ v647 ^ ((STACK[0x5620] & 0x10111112 ^ 0xA8A81082 ^ STACK[0x4FD8] & (LODWORD(STACK[0x5650]) ^ 0xA8581078)) >> STACK[0x57C0]) ^ *(STACK[0x5770] + 4 * v708) ^ __ROR4__(*(STACK[0x5770] + 4 * (545 * BYTE2(v697) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v697) + 140610)) >> 32))), 8) ^ __ROR4__(*(STACK[0x5770] + 4 * (545 * BYTE1(v706) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v706) + 140610)) >> 32))), 16) ^ __ROR4__(*(STACK[0x5770] + 4 * (545 * v699 + 140610 - 1552 * ((2767376 * (545 * v699 + 140610)) >> 32))), 24) ^ LODWORD(STACK[0x4BA8]);
  LODWORD(v661) = v647 ^ LODWORD(STACK[0x4FC8]) ^ *(STACK[0x5770] + 4 * (545 * BYTE3(v697) + 140610 - 1552 * ((2767376 * (545 * BYTE3(v697) + 140610)) >> 32))) ^ __ROR4__(*(STACK[0x5770] + 4 * v661), 16) ^ __ROR4__(*(STACK[0x5770] + 4 * (v696 - 1552 * ((2767376 * v696) >> 32))), 24) ^ __ROR4__(*(STACK[0x5770] + 4 * ((HIDWORD(v712) & 0x2F83DCA6) + 545 * BYTE2(v706) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v706) + 140610)) >> 32) + (HIDWORD(v712) & 0x2F83DCA6 ^ 0x2F83DCA6) - 797170854)), 8) ^ LODWORD(STACK[0x4BA0]);
  v721 = 2 * (STACK[0x5630] & 0xA9A9A9A9);
  v722 = STACK[0x5660];
  LODWORD(STACK[0x5530]) = v721;
  v723 = v718;
  LODWORD(STACK[0x53E0]) = v721 ^ 0xAAF9F8A9;
  v724 = ((((v721 ^ 0x3505100) & 0x41011250 ^ (v702 ^ 0xAD1F102) & (v721 ^ 0xAAF9F8A9) ^ 0x298920A0) << v682) + (((v721 ^ 0x3505100) & 0x50025252 ^ (v718 ^ 0x68E3FB19) & (v721 ^ 0xAAF9F8A9) ^ 0x2800A8A1) >> v719)) ^ v647 ^ LODWORD(STACK[0x4C68]) ^ v716;
  v725 = v700;
  v726 = *(((55 * v720) ^ 0x96u) + v700 + 43136);
  v728 = *(v700 + ((55 * BYTE2(v724)) ^ 0x3428));
  v729 = v728 ^ (v728 >> 2) ^ ((~v728 >> 6) | 0xFFFFFFC0);
  v730 = ((v729 ^ 0x4C) + 25) ^ ((v729 ^ 0x61) + 54) ^ ((v729 ^ 0x71) + 38);
  LOBYTE(v729) = *(v700 + (BYTE2(v661) ^ 0x1890));
  LODWORD(STACK[0x55C0]) = 545 * HIBYTE(v720) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v720) + 140610)) >> 32);
  v731 = ((v729 ^ 0x81) + 108) ^ ((v729 ^ 0xE5) + 16) ^ ((v729 ^ 0x5F) - 74);
  v732 = 545 * BYTE3(v661) + 140610 - 1552 * ((2767376 * (545 * BYTE3(v661) + 140610)) >> 32);
  HIDWORD(v712) = *(v711 + 4 * (545 * BYTE2(v717) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v717) + 140610)) >> 32)));
  LODWORD(v712) = HIDWORD(v712);
  v733 = (v712 >> 8) ^ __ROR4__(*(v711 + 4 * (545 * v661 + 140610 - 1552 * ((2767376 * (545 * v661 + 140610)) >> 32))), 24);
  v734 = *(v711 + 4 * (545 * v717 + 140610 - 1552 * ((2767376 * (545 * v717 + 140610)) >> 32)));
  LOBYTE(v706) = BYTE3(v734) ^ *(((v734 >> 24) ^ 0xFD) + v725 + 37440);
  v735 = 545 * BYTE1(v661) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v661) + 140610)) >> 32);
  v736 = (LODWORD(STACK[0x4FB8]) - 85 * (((v706 ^ 0x38) + 124) ^ ((v706 ^ 0x40) + 4) ^ ((v706 ^ 0xFD) - 65))) | (v734 << 8);
  v737 = *(v711 + 4 * v735);
  v738 = *(v711 + 4 * ((545 * (1134193755 * (((v737 << 16) & 0x3A30000 ^ 0x3A31ED5) + ((v737 << 16) & 0x3A30000)) + HIBYTE(v724)) + 1967435435) % 0x610u));
  v739 = v733 & 0x20;
  if ((v738 & v733 & 0x20) != 0)
  {
    v739 = -v739;
  }

  v740 = (v739 + v738) ^ v733 & 0xFFFFFFDF;
  v741 = 545 * (LODWORD(STACK[0x4A70]) - 85 * v731) + 140610;
  v742 = v741 - 1552 * ((2767376 * v741) >> 32);
  v743 = 545 * BYTE1(v720) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v720) + 140610)) >> 32);
  v744 = LODWORD(STACK[0x4FE8]) ^ 0x45890B8A ^ (((v740 & 0x24800501) - 1073446682 + ((v740 ^ 0x27800711) & 0x24800501)) | 0x7E3E3E5);
  v745 = 545 * BYTE2(v720) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v720) + 140610)) >> 32);
  LODWORD(STACK[0x5660]) = v722;
  v727 = ((((v726 >> 7) | (2 * v726)) ^ 0xCA) - 79) ^ ((((v726 >> 7) | (2 * v726)) ^ 0xCE) - 75) ^ ((((v726 >> 7) | (2 * v726)) ^ 0x3E) + 69);
  v746 = v647 ^ __ROR4__(*(v711 + 4 * (545 * BYTE1(v717) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v717) + 140610)) >> 32))), 16) ^ *(v711 + 4 * v732) ^ __ROR4__(*(v711 + 4 * (545 * (v730 - 22) + 140610 - 1552 * ((2767376 * (545 * (v730 - 22) + 140610)) >> 32))), 8) ^ __ROR4__(*(v711 + 4 * (545 * (v727 - 78) + 140610 - 1552 * ((2767376 * (545 * (v727 - 78) + 140610)) >> 32))), 24) ^ LODWORD(STACK[0x4DC0]) ^ (((v744 & (v722 ^ 0x635CC7D6) ^ 0x20u) << STACK[0x57B0]) | ((v744 & STACK[0x5720]) >> v719));
  v747 = (STACK[0x4FD0] + ((STACK[0x5600] & 0x454B83C6 ^ 0x642B22C7 ^ (v723 ^ 0x658EA229u) & STACK[0x54B0]) >> STACK[0x5780])) ^ v647 ^ __ROR4__(v737, 16) ^ __ROR4__(*(v711 + 4 * v745), 8) ^ *(v711 + 4 * (545 * HIBYTE(v717) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v717) + 140610)) >> 32))) ^ __ROR4__(*(v711 + 4 * (545 * v724 + 140610 - 1552 * ((2767376 * (545 * v724 + 140610)) >> 32))), 24) ^ LODWORD(STACK[0x4DB8]);
  v748 = STACK[0x5008] & (v723 ^ 0x12A0B20);
  v749 = STACK[0x5620];
  v750 = v647 ^ ((STACK[0x5620] & LODWORD(STACK[0x48F0]) ^ 0x4E084C ^ v748) >> STACK[0x5780]) ^ ((STACK[0x5008] & LODWORD(STACK[0x5760])) << STACK[0x57B0]) ^ __ROR4__(*(v711 + 4 * (545 * BYTE1(v724) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v724) + 140610)) >> 32))), 16) ^ *(v711 + 4 * LODWORD(STACK[0x55C0])) ^ __ROR4__(*(v711 + 4 * v742), 8) ^ LODWORD(STACK[0x4DC8]) ^ v736;
  v751 = ((STACK[0x5600] & 0x4304090C ^ 0x6004080D ^ (v722 ^ 0x48CEEBu) & STACK[0x54B0]) << STACK[0x5790]) ^ ((STACK[0x5720] & LODWORD(STACK[0x54B0])) >> v719) ^ v647 ^ __ROR4__(*(v711 + 4 * v743), 16) ^ LODWORD(STACK[0x4DD0]) ^ v740;
  LOBYTE(v748) = *(v725 + ((55 * BYTE1(v747)) ^ 0x1D48Bu));
  LOBYTE(v748) = (((v748 ^ 0x8F) + 113) ^ ((v748 ^ 0xD1) + 47) ^ ((v748 ^ 0xE3) + 29)) - 56;
  v752 = v748 & 0xB4 ^ 0x62;
  v753 = v748 ^ (2 * ((v748 ^ 0x70) & (2 * ((v748 ^ 0x70) & (2 * ((v748 ^ 0x70) & (2 * ((v748 ^ 0x70) & (2 * ((v748 ^ 0x70) & (2 * v752) ^ v752)) ^ v752)) ^ v752)) ^ v752)) ^ v752));
  v754 = 545 * v747 + 140610 - 1552 * ((2767376 * (545 * v747 + 140610)) >> 32);
  v755 = 545 * v746 + 140610 - 1552 * ((2767376 * (545 * v746 + 140610)) >> 32);
  v756 = 545 * BYTE1(v746) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v746) + 140610)) >> 32);
  v757 = *(v711 + 4 * (545 * v750 + 140610 - 1552 * ((2767376 * (545 * v750 + 140610)) >> 32)));
  v758 = *(v725 + (((v757 >> 21) & 0xF8 | (v757 >> 29)) ^ 0x1657));
  v759 = 545 * ((v753 ^ (4 * v753) ^ 0x30) - 13) + 140610;
  v760 = v759 - 1552 * ((2767376 * v759) >> 32);
  v761 = 545 * BYTE2(v747) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v747) + 140610)) >> 32);
  v762 = (((((((v758 >> 3) | (32 * v758)) ^ 0xE6) - 48) ^ ((((v758 >> 3) | (32 * v758)) ^ 0xFA) - 44) ^ ((((v758 >> 3) | (32 * v758)) ^ 0x12) + 60)) + 60) | (v757 << 8)) ^ __ROR4__(*(v711 + 4 * v760), 16);
  v763 = 545 * HIBYTE(v751) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v751) + 140610)) >> 32);
  v764 = 545 * HIBYTE(v747) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v747) + 140610)) >> 32);
  v765 = 545 * v751 + 140610 - 1552 * ((2767376 * (545 * v751 + 140610)) >> 32);
  v766 = 545 * HIBYTE(v750) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v750) + 140610)) >> 32);
  LODWORD(STACK[0x53B0]) = 545 * BYTE1(v751) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v751) + 140610)) >> 32);
  v767 = v762 ^ *(v711 + 4 * (545 * HIBYTE(v746) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v746) + 140610)) >> 32)));
  v768 = 545 * BYTE1(v750) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v750) + 140610)) >> 32);
  v769 = 545 * BYTE2(v746) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v746) + 140610)) >> 32);
  v770 = 545 * BYTE2(v751) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v751) + 140610)) >> 32);
  v771 = LODWORD(STACK[0x5370]) ^ 0x1741D951 ^ STACK[0x5570] ^ LODWORD(STACK[0x54E0]) ^ STACK[0x54D0] ^ STACK[0x55F0] ^ LODWORD(STACK[0x53A8]) ^ LODWORD(STACK[0x53D8]) ^ LODWORD(STACK[0x52F8]) ^ LODWORD(STACK[0x5470]) ^ LODWORD(STACK[0x5348]) ^ LODWORD(STACK[0x5320]) ^ LODWORD(STACK[0x5310]) ^ LODWORD(STACK[0x5390]) ^ LODWORD(STACK[0x5398]) ^ LODWORD(STACK[0x53E8]);
  LODWORD(STACK[0x55C0]) = v771;
  v772 = LODWORD(STACK[0x5408]) ^ LODWORD(STACK[0x5338]);
  v773 = STACK[0x5378];
  LODWORD(STACK[0x5570]) = LODWORD(STACK[0x5378]) ^ v772;
  v774 = STACK[0x53D0];
  LODWORD(STACK[0x55B0]) = LODWORD(STACK[0x53D0]) ^ v772;
  v775 = (v767 ^ __ROR4__(*(v711 + 4 * v770), 8)) + 1904703085 * (v771 + (v773 ^ 0xE8BE26AE ^ v774));
  v776 = v749;
  v777 = *(v711 + 4 * v756);
  v778 = v749 & 0x42424242 ^ 0x61212323;
  v779 = STACK[0x5650];
  v780 = v749 & 0x42400000 ^ 0x40002120 ^ v778 & (LODWORD(STACK[0x5650]) ^ 0x42212042u);
  v781 = STACK[0x5010] >> STACK[0x5780];
  v782 = STACK[0x51B0];
  v783 = STACK[0x5760];
  v784 = (STACK[0x5760] & LODWORD(STACK[0x51B0]));
  STACK[0x5318] = v784;
  v785 = STACK[0x5790];
  v786 = ((v784 << STACK[0x5790]) + v781) ^ v647 ^ __ROR4__(v777, 16) ^ *(v711 + 4 * v764) ^ __ROR4__(*(v711 + 4 * v765), 24) ^ __ROR4__(*(v711 + 4 * (545 * BYTE2(v750) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v750) + 140610)) >> 32))), 8) ^ LODWORD(STACK[0x4DD8]);
  v787 = v647 ^ ((v780 >> STACK[0x57C0]) | ((v776 & 0x40420202 ^ 0x40200323 ^ v778 & (LODWORD(STACK[0x5660]) ^ 0x23224041u)) << STACK[0x57B0])) ^ __ROR4__(*(v711 + 4 * v755), 24) ^ *(v711 + 4 * v763) ^ __ROR4__(*(v711 + 4 * v761), 8) ^ __ROR4__(*(v711 + 4 * v768), 16) ^ LODWORD(STACK[0x4DF0]);
  v788 = ((STACK[0x5600] & 0x424200 ^ 0x1416000 ^ (LODWORD(STACK[0x5660]) ^ 0x62032162) & v782) << STACK[0x57B0]) + v781;
  v789 = (v776 & 0x42424202 ^ 0x41012303 ^ v778 & (v779 ^ 0x43226261u)) >> STACK[0x57C0];
  LODWORD(STACK[0x5320]) = v778;
  v790 = v778 & v783;
  STACK[0x52F8] = v790;
  v791 = (v790 << v785) ^ v647 ^ v789 ^ __ROR4__(*(v711 + 4 * v754), 24) ^ *(v711 + 4 * v766) ^ __ROR4__(*(v711 + 4 * LODWORD(STACK[0x53B0])), 16) ^ __ROR4__(*(v711 + 4 * v769), 8) ^ LODWORD(STACK[0x4E00]);
  v792 = v647 ^ v788 ^ LODWORD(STACK[0x4DF8]) ^ (v775 + 1904703085);
  LODWORD(STACK[0x55F0]) = 545 * HIBYTE(v787) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v787) + 140610)) >> 32);
  v793 = 545 * v792 + 140610 - 1552 * ((2767376 * (545 * v792 + 140610)) >> 32);
  LODWORD(v789) = 545 * BYTE1(v791) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v791) + 140610)) >> 32);
  v794 = *(v711 + 4 * (545 * HIBYTE(v791) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v791) + 140610)) >> 32))) ^ __ROR4__(*(v711 + 4 * (545 * BYTE2(v792) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v792) + 140610)) >> 32))), 8) ^ __ROR4__(*(v711 + 4 * (545 * v786 + 140610 - 1552 * ((2767376 * (545 * v786 + 140610)) >> 32))), 24);
  v795 = 545 * ((v794 & 0x102 ^ 0x102) + (v794 & 0x102) + v787);
  v796 = *(v711 + 4 * (v795 - 1552 * ((2767376 * v795) >> 32)));
  v797 = ((((v796 >> 24) ^ 0x604DB627) + 537419803) ^ (((v796 >> 24) ^ 0x14CAD9E9) + 1418661845) ^ (((v796 >> 24) ^ 0x74876FE6) + 885176796)) - ((((v796 >> 24) ^ 0xB329A49B) + 609243752) ^ (((v796 >> 24) ^ 0xE663566A) + 1897570455) ^ (((v796 >> 24) ^ 0x554AF22B) - 1036843816)) - 960894715;
  LOBYTE(v781) = (v797 ^ 0x8A) & (2 * (v797 & 0xC)) ^ v797 & 0xC;
  LOBYTE(v784) = ((2 * (v797 ^ 0x82)) ^ 0x1C) & (v797 ^ 0x82);
  v798 = 545 * v791 + 140610 - 1552 * ((2767376 * (545 * v791 + 140610)) >> 32);
  v799 = STACK[0x57A0];
  LOBYTE(v791) = ((((BYTE3(v796) ^ 0x27) + 27) ^ ((BYTE3(v796) ^ 0xE9) - 43) ^ ((BYTE3(v796) ^ 0xE6) - 36)) - (((BYTE3(v796) ^ 0x9B) + 104) ^ ((BYTE3(v796) ^ 0x6A) - 105) ^ ((BYTE3(v796) ^ 0x2B) - 40)) + 5) ^ (2 * (v784 & (4 * v784) & (16 * (v784 & (4 * v781) ^ v781)) ^ v784 & (4 * v781) ^ v781)) ^ *(STACK[0x57A0] + ((v796 >> 24) ^ 0xAF) + 124940);
  LODWORD(v780) = 545 * HIBYTE(v792) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v792) + 140610)) >> 32);
  v800 = *(v711 + 4 * (545 * HIBYTE(v786) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v786) + 140610)) >> 32))) ^ __ROR4__(*(v711 + 4 * (545 * BYTE1(v792) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v792) + 140610)) >> 32))), 16) ^ __ROR4__(*(v711 + 4 * (545 * BYTE2(v791) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v791) + 140610)) >> 32))), 8) ^ ((91 - 85 * (v791 ^ ((v791 ^ 0x43) - 64) ^ ((v791 ^ 0xD2) + 47) ^ 3)) | (v796 << 8));
  v801 = 545 * BYTE2(v786) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v786) + 140610)) >> 32);
  v802 = LODWORD(STACK[0x5040]) ^ 0xBFBB8B9A;
  v803 = v776 & 0x34302534 ^ 0xBEB80392 ^ v802 & (v779 ^ 0xAE1D2618);
  LODWORD(v785) = STACK[0x5660];
  v804 = LODWORD(STACK[0x4FE0]) ^ v647 ^ (v800 + LODWORD(STACK[0x4E08]) - 2 * (v800 & STACK[0x4E08]));
  v805 = v647 ^ (v803 >> STACK[0x57C0]) ^ ((v776 & 0x5303130 ^ 0x8F328912 ^ v802 & (LODWORD(STACK[0x5660]) ^ 0xAC2E3E84)) << STACK[0x57B0]) ^ __ROR4__(*(v711 + 4 * (545 * BYTE1(v786) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v786) + 140610)) >> 32))), 16) ^ __ROR4__(*(v711 + 4 * (545 * BYTE2(v787) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v787) + 140610)) >> 32))), 8) ^ __ROR4__(*(v711 + 4 * v798), 24) ^ LODWORD(STACK[0x4E18]) ^ *(v711 + 4 * v780);
  v806 = STACK[0x5050] >> STACK[0x57C0];
  v807 = STACK[0x5048] << STACK[0x57B0];
  STACK[0x5398] = v807;
  v808 = __ROR4__(*(v711 + 4 * (545 * BYTE1(v787) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v787) + 140610)) >> 32))), 16);
  v809 = v647 ^ (v807 | v806) ^ v794 ^ v808 ^ LODWORD(STACK[0x4E78]);
  LODWORD(v806) = *(((v647 ^ (v807 | v806) ^ v794 ^ v808 ^ LOBYTE(STACK[0x4E78])) ^ 0xAu) + v799 + 54400);
  LODWORD(STACK[0x4E78]) = -60;
  LODWORD(v806) = 67 * (((v806 ^ 0xFFFFFF9B) + 101) ^ ((v806 ^ 0xFFFFFFE2) + 30) ^ ((v806 ^ 0xFFFFFFC4) + 60)) - 60;
  v810 = v806 & 0x65 ^ 0xFFFFFFF9;
  LODWORD(v806) = v806 ^ (2 * ((v806 ^ 0x32) & (2 * ((v806 ^ 0x32) & (2 * ((v806 ^ 0x32) & (2 * ((v806 ^ 0x32) & (2 * ((v806 ^ 0x32) & (2 * (((2 * v806) & 0x66 ^ 0x56) & (v806 ^ 0x32) ^ v810)) ^ v810)) ^ v810)) ^ v810)) ^ v810)) ^ v810));
  LODWORD(STACK[0x5368]) = v802;
  v811 = (((v776 & 0x34150410 ^ 0x3E938A9A ^ v802 & (v785 ^ 0x1D8B092C)) << STACK[0x5790]) | (v803 >> STACK[0x5780])) ^ v647 ^ *(v711 + 4 * LODWORD(STACK[0x55F0])) ^ __ROR4__(*(v711 + 4 * v793), 24) ^ __ROR4__(*(v711 + 4 * v789), 16) ^ __ROR4__(*(v711 + 4 * v801), 8) ^ LODWORD(STACK[0x4E80]);
  LOBYTE(v785) = (((v806 >> 2) & 0x10 ^ v806 ^ 0x45) + 82) ^ (((v806 >> 2) & 0x10 ^ v806 ^ 0xAF) - 68) ^ (((v806 >> 2) & 0x10 ^ v806 ^ 0xC) + 25);
  LODWORD(v789) = (8 * (v805 & 0x1F)) | (v805 >> 5);
  LODWORD(STACK[0x53E8]) = ((HIBYTE(v804) ^ 0x19) - 102) ^ ((HIBYTE(v804) ^ 0x6D) - 18) ^ ((HIBYTE(v804) ^ 0x74) - 11);
  LOBYTE(v806) = *(v799 + (v789 ^ 0xE7) + 91072);
  LOBYTE(v789) = (((v806 ^ 0xCA) + 54) ^ ((v806 ^ 0xBE) + 66) ^ ((v806 ^ 0xC9) + 55)) - (((v789 ^ 0xA8) + 15) ^ ((v789 ^ 0xE0) + 71) ^ ((v789 ^ 9) - 80)) - 40;
  LOBYTE(v806) = v789 & 0x63 ^ 0x5B;
  LOBYTE(v789) = v789 ^ (2 * ((v789 ^ 0x4C) & (2 * ((v789 ^ 0x4C) & (2 * ((v789 ^ 0x4C) & (2 * ((v789 ^ 0x4C) & (2 * ((v789 ^ 0x4C) & (2 * (((2 * v789) & 0x1A ^ 0x2E) & v789 ^ v806)) ^ v806)) ^ v806)) ^ v806)) ^ v806)) ^ v806));
  LOBYTE(v806) = *(v799 + (BYTE1(v809) ^ 0xF8u) + 163091) ^ 0xAD;
  v812 = ((v804 >> 21) & 7 ^ 0x155C60B7) & ((v804 >> 13) & 0xF8 ^ 0x155C60BF) | (v804 >> 13) & 0x48;
  LOBYTE(v812) = v812 ^ *(v799 + (v812 ^ 0x155C4012u));
  LOBYTE(v780) = ((v812 ^ 0xBA) + 98) ^ ((v812 ^ 0x90) + 76) ^ ((v812 ^ 0xBF) + 101);
  LODWORD(v789) = 545 * ((((v789 ^ 0x5B) + 8) ^ ((v789 ^ 0xBB) - 24) ^ ((v789 ^ 0x17) + 76)) - 72) + 140610;
  LODWORD(v803) = v789 - 1552 * ((2767376 * v789) >> 32);
  LODWORD(v789) = 545 * BYTE2(v805) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v805) + 140610)) >> 32);
  v813 = ((HIBYTE(v804) ^ 0xD268771E) + 1654731316) ^ ((HIBYTE(v804) ^ 0x86ED2DEC) + 908355778) ^ ((HIBYTE(v804) ^ LODWORD(STACK[0x2348])) - 464773152);
  LODWORD(v799) = 545 * HIBYTE(v805) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v805) + 140610)) >> 32);
  v814 = 545 * (-85 * v785 - 81) + 140610;
  LODWORD(v784) = v814 - 1552 * ((2767376 * v814) >> 32);
  v815 = 545 * HIBYTE(v809) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v809) + 140610)) >> 32);
  v816 = 545 * BYTE1(v805) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v805) + 140610)) >> 32);
  v817 = 545 * BYTE2(v809) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v809) + 140610)) >> 32);
  v818 = 545 * v804 + 140610 - 1552 * ((2767376 * (545 * v804 + 140610)) >> 32);
  v819 = 545 * (LODWORD(STACK[0x4E68]) - 85 * (((((4 * v806) & 0x50 | 0x2E) ^ v806 ^ 0xD2) - 13) ^ ((((4 * v806) & 0x50 | 0x2E) ^ v806 ^ 0xD0) - 15) ^ ((((4 * v806) & 0x50 | 0x2E) ^ v806 ^ 0xE6) - 57))) + 140610;
  LODWORD(v796) = 545 * BYTE1(v804) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v804) + 140610)) >> 32);
  v820 = 545 * (v780 + 21) + 140610 - 1552 * ((2767376 * (545 * (v780 + 21) + 140610)) >> 32);
  v821 = v776 & 0x98B8088 ^ 0x400CC448 ^ STACK[0x51C8] & (v779 ^ 0x494AC506);
  v822 = STACK[0x5780];
  v823 = STACK[0x57B0];
  v824 = v647 ^ ((STACK[0x5028] << STACK[0x57B0]) + (STACK[0x5018] >> STACK[0x5780])) ^ LODWORD(STACK[0x4E90]) ^ __ROR4__(*(v711 + 4 * v803), 24) ^ *(v711 + 4 * (545 * HIBYTE(v811) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v811) + 140610)) >> 32))) ^ __ROR4__(*(v711 + 4 * (v819 - 1552 * ((2767376 * v819) >> 32))), 16) ^ __ROR4__(*(v711 + 4 * v820), 8);
  v825 = ((v776 & 0x3010382 ^ 0x40440647 ^ STACK[0x51C8] & (LODWORD(STACK[0x5660]) ^ 0x9C001u)) << STACK[0x5790]) ^ v647 ^ (v821 >> STACK[0x57C0]) ^ LODWORD(STACK[0x4EA0]) ^ __ROR4__(*(v711 + 4 * (545 * BYTE2(v811) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v811) + 140610)) >> 32))), 8) ^ *(v711 + 4 * v799) ^ __ROR4__(*(v711 + 4 * v784), 24) ^ __ROR4__(*(v711 + 4 * v796), 16);
  v826 = STACK[0x5600] & LODWORD(STACK[0x234C]) ^ 0x94801 ^ (LODWORD(STACK[0x5660]) ^ 0x42C50FC7u) & STACK[0x5030];
  v827 = STACK[0x5058] << STACK[0x5790];
  STACK[0x5310] = v827;
  v828 = v827 ^ v647 ^ (v821 >> v822) ^ LODWORD(STACK[0x4E88]) ^ __ROR4__(*(v711 + 4 * (545 * v811 + 140610 - 1552 * ((2767376 * (545 * v811 + 140610)) >> 32))), 24) ^ *(v711 + 4 * ((545 * v813 - 1551507884) % 0x610)) ^ __ROR4__(*(v711 + 4 * v816), 16) ^ __ROR4__(*(v711 + 4 * v817), 8);
  LODWORD(v789) = (v826 << v823) ^ STACK[0x5038] ^ 0x1741D951 ^ v647 ^ LODWORD(STACK[0x55C0]) ^ LODWORD(STACK[0x5570]) ^ LODWORD(STACK[0x55B0]) ^ LODWORD(STACK[0x4EA8]) ^ __ROR4__(*(v711 + 4 * v789), 8) ^ *(v711 + 4 * v815) ^ __ROR4__(*(v711 + 4 * (545 * BYTE1(v811) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v811) + 140610)) >> 32))), 16) ^ __ROR4__(*(v711 + 4 * v818), 24);
  v829 = 55 * HIBYTE(v824) - ((110 * HIBYTE(v824)) & 0x5C) + 46;
  v830 = STACK[0x57A0];
  LOBYTE(v815) = *(STACK[0x57A0] + ((55 * HIBYTE(v824)) ^ 0x5Fu) + 108736);
  LOBYTE(v829) = (((v815 ^ 0xB8) + 72) ^ ((v815 ^ 0x23) - 35) ^ ((v815 ^ 0x26) - 38)) + (((v829 ^ 0x33) - 71) ^ ((v829 ^ 0x9E) + 22) ^ ((v829 ^ 0xC9) + 67)) + 4;
  LOBYTE(v818) = v829 & 0x91 | 0x64;
  LOBYTE(v829) = v829 ^ (2 * ((v829 ^ 0x48) & (2 * ((v829 ^ 0x48) & (2 * ((v829 ^ 0x48) & (2 * ((v829 ^ 0x48) & (2 * ((v829 ^ 0x48) & (2 * ((v829 ^ 0x48) & (2 * (v829 & 0x91)) ^ v818)) ^ v818)) ^ v818)) ^ v818)) ^ v818)) ^ v818));
  LOBYTE(v815) = v829 ^ ((v829 ^ 0xA3) + 64) ^ ((v829 ^ 0xD7) + 76) ^ 0x63;
  LOBYTE(v829) = *(((55 * HIBYTE(v828)) ^ 0x72u) + STACK[0x57A0] + 46208);
  LOBYTE(v803) = ((v829 ^ 0xF2) - 65) ^ ((v829 ^ 0x10) + 93) ^ ((v829 ^ 0xE9) - 90);
  v831 = 545 * BYTE1(v789) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v789) + 140610)) >> 32);
  v832 = 545 * (v815 + 103) + 140610 - 1552 * ((2767376 * (545 * (v815 + 103) + 140610)) >> 32);
  LODWORD(v826) = *(v711 + 4 * (545 * v825 + 140610 - 1552 * ((2767376 * (545 * v825 + 140610)) >> 32)));
  LODWORD(v826) = (v826 << (((55 * HIBYTE(v828)) & 8 ^ 8) + ((55 * HIBYTE(v828)) & 8))) + BYTE3(v826);
  v833 = 545 * BYTE2(v828) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v828) + 140610)) >> 32);
  LODWORD(v796) = 545 * v828 + 140610 - 1552 * ((2767376 * (545 * v828 + 140610)) >> 32);
  LODWORD(v781) = *(v711 + 4 * (545 * v789 + 140610 - 1552 * ((2767376 * (545 * v789 + 140610)) >> 32)));
  LODWORD(v784) = *(STACK[0x57A0] + (((v781 >> 21) & 0xF8 | (v781 >> 29)) ^ 0x10A2));
  v834 = 545 * BYTE2(v824) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v824) + 140610)) >> 32);
  LOBYTE(v799) = v784 ^ (v784 >> 4) ^ (v784 >> 7);
  LODWORD(v799) = ((((v799 ^ 0x9B) + 103) ^ ((v799 ^ 0xE6) + 28) ^ ((v799 ^ 0xB3) + 79)) + 48) | (v781 << 8);
  v835 = *(v711 + 4 * ((545 * ((v803 + 34) | (((v803 + 34) < 0x77u) << 8)) + 75755) % 0x610u));
  LODWORD(v803) = 545 * HIBYTE(v825) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v825) + 140610)) >> 32);
  LODWORD(v784) = (((BYTE1(v825) ^ 0x6B) >> 3) | (32 * ((v825 >> 8) ^ 0x6B))) ^ 0xFFFFFFD0;
  LOBYTE(v781) = *(STACK[0x57A0] + (((v784 >> 5) | (8 * v784)) ^ 0x82u) + 256) ^ BYTE1(v825);
  LODWORD(v781) = 545 * (LODWORD(STACK[0x4E44]) - 85 * (((v781 ^ 0xE2) - 102) ^ ((v781 ^ 8) + 116) ^ ((v781 ^ 0x98) - 28))) + 140610;
  LODWORD(v781) = *(v711 + 4 * (v781 - 1552 * ((2767376 * v781) >> 32)));
  LODWORD(v821) = v835 ^ __ROR4__(*(v711 + 4 * (545 * v824 + 140610 - 1552 * ((2767376 * (545 * v824 + 140610)) >> 32))), 24) ^ WORD1(v781) ^ (v781 << 16) ^ __ROR4__(*(v711 + 4 * (545 * BYTE2(v789) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v789) + 140610)) >> 32))), 8);
  LOBYTE(v825) = *(STACK[0x57A0] + (BYTE2(v825) ^ 0xDCu) + 159421);
  v836 = (-85 * (((v825 ^ 0x4A) - 71) ^ ((v825 ^ 0x85) + 120) ^ ((v825 ^ 6) - 11)) + 36);
  HIDWORD(v837) = *(v711 + 4 * ((545 * (v836 | ((v836 < 0x38) << 8)) + 110090) % 0x610));
  LODWORD(v837) = HIDWORD(v837);
  v838 = (((*(v711 + 4 * v796) << 8) ^ 0xDEB0FD44) & (HIBYTE(*(v711 + 4 * v796)) ^ 0xFFFFFFEC) | HIBYTE(*(v711 + 4 * v796)) & 0xBBBBBBBB) ^ *(v711 + 4 * (545 * BYTE3(v789) + 140610 - 1552 * ((2767376 * (545 * BYTE3(v789) + 140610)) >> 32))) ^ __ROR4__(*(v711 + 4 * (545 * BYTE1(v824) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v824) + 140610)) >> 32))), 16);
  v839 = (STACK[0x53F8] & LODWORD(STACK[0x5760]));
  STACK[0x5390] = v839;
  v840 = v839 << v823;
  v841 = v838 ^ v647 ^ (v840 + STACK[0x51C0]) ^ LODWORD(STACK[0x4EB8]);
  LODWORD(v840) = v647 ^ (v840 | STACK[0x51C0]) ^ LODWORD(STACK[0x5288]) ^ __ROR4__(*(v711 + 4 * v834), 8) ^ __ROR4__(*(v711 + 4 * (545 * BYTE1(v828) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v828) + 140610)) >> 32))), 16) ^ *(v711 + 4 * v803) ^ v799;
  v842 = STACK[0x5650];
  v843 = (STACK[0x5600] & 0x4054600 ^ 0xA001C220 ^ (LODWORD(STACK[0x5650]) ^ 0xA4E0C7C6) & STACK[0x51E0]) >> STACK[0x57C0];
  v844 = (STACK[0x5600] & 0x7470140 ^ 0x20632001 ^ (LODWORD(STACK[0x5660]) ^ 0x4423E6A7u) & STACK[0x51E0]) << STACK[0x5790];
  v845 = (v844 | v843) ^ v647 ^ LODWORD(STACK[0x5340]) ^ __ROR4__(*(v711 + 4 * v831), 16) ^ v826 ^ *(v711 + 4 * v832) ^ __ROR4__(*(v711 + 4 * v833), 8);
  v846 = v647 ^ v844 ^ v843 ^ LODWORD(STACK[0x4EB0]) ^ v821;
  LODWORD(v843) = v841 ^ 0x9A6DDBF4 ^ ((v837 >> 8) - ((2 * (v837 >> 8)) & 0x89BA4D60) + 1155344048);
  v847 = (v840 ^ 0xB8u) + 122888;
  v848 = (v847 & 0x21 ^ 0x221) + (v847 & 0x21);
  v849 = 545 * BYTE1(v840) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v840) + 140610)) >> 32);
  LOBYTE(v826) = (((v840 ^ 0xE) - 127) ^ ((v840 ^ 0x39) - 72) ^ ((v840 ^ 0x5F) - 46)) - 38;
  LOBYTE(v833) = v826 & 0x4C ^ 0x48;
  LOBYTE(v847) = v840 ^ v826 ^ *(v830 + v847) ^ (2 * ((v826 ^ 0x3C) & (2 * ((v826 ^ 0x3C) & (2 * ((v826 ^ 0x3C) & (2 * ((v826 ^ 0x3C) & (2 * v833) ^ v833)) ^ v833)) ^ v833)) ^ v833));
  LOBYTE(v784) = -85 * (((v847 ^ 0xEC) - 15) ^ ((v847 ^ 0x4A) + 87) ^ ((v847 ^ 0xFC) - 31)) - 109;
  LODWORD(v847) = 545 * BYTE1(v846) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v846) + 140610)) >> 32);
  LODWORD(v826) = v848 * (HIBYTE(v846) + 258) - 1552 * ((2767376 * (v848 * (HIBYTE(v846) + 258))) >> 32);
  LODWORD(v844) = 545 * BYTE1(v843) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v843) + 140610)) >> 32);
  LODWORD(v796) = 545 * BYTE2(v843) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v843) + 140610)) >> 32);
  LODWORD(STACK[0x55F0]) = 545 * v843 + 140610 - 1552 * ((2767376 * (545 * v843 + 140610)) >> 32);
  LODWORD(v799) = 545 * HIBYTE(v845) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v845) + 140610)) >> 32);
  v850 = 545 * BYTE2(v845) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v845) + 140610)) >> 32);
  LODWORD(v821) = 545 * BYTE3(v843) + 140610 - 1552 * ((2767376 * (545 * BYTE3(v843) + 140610)) >> 32);
  LODWORD(v843) = (545 * BYTE2(v840) + 140610) % 0x610;
  v851 = 545 * v845 + 140610 - 1552 * ((2767376 * (545 * v845 + 140610)) >> 32);
  v852 = 545 * BYTE2(v846) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v846) + 140610)) >> 32);
  LODWORD(v781) = 545 * BYTE1(v845) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v845) + 140610)) >> 32);
  v853 = 545 * BYTE3(v840) + 140610 - 1552 * ((2767376 * (545 * BYTE3(v840) + 140610)) >> 32);
  LODWORD(v840) = 545 * v846 + 140610 - 1552 * ((2767376 * (545 * v846 + 140610)) >> 32);
  v854 = *(v711 + 4 * (545 * v784 + 140610 - 1552 * ((2767376 * (545 * v784 + 140610)) >> 32)));
  LOBYTE(v784) = (((55 * HIBYTE(v854) + 94) ^ 0x96) + 56) ^ (55 * HIBYTE(v854) + 94) ^ (((55 * HIBYTE(v854) + 94) ^ 0x70) - 46) ^ (((55 * HIBYTE(v854) + 94) ^ 0x45) - 27) ^ (((55 * HIBYTE(v854) + 94) ^ 0xFD) + 93);
  v855 = v830;
  LOBYTE(v784) = v784 ^ *(v830 + (v784 ^ 0xA5u) + 87744);
  v856 = STACK[0x5600] & 0x1024B0B4 ^ 0x5842C010 ^ (v842 ^ 0x4882F05Au) & STACK[0x5200];
  v857 = STACK[0x5600] & 0x14A4B0A0 ^ 0x50808242 ^ (LODWORD(STACK[0x5660]) ^ 0x36F87414u) & STACK[0x5200];
  v858 = (STACK[0x54C0] & LODWORD(STACK[0x5760]));
  STACK[0x5378] = v858;
  v859 = STACK[0x57B0];
  v860 = v858 << STACK[0x57B0];
  v861 = STACK[0x5540];
  v862 = LODWORD(STACK[0x5540]) ^ v860 ^ STACK[0x51D8] ^ LODWORD(STACK[0x4EF8]) ^ __ROR4__(*(v711 + 4 * v849), 16) ^ *(v711 + 4 * v826);
  LODWORD(v858) = *(v711 + 4 * v796);
  LODWORD(v826) = *(v711 + 4 * v851);
  LODWORD(STACK[0x5370]) = v858;
  LODWORD(v796) = v862 ^ __ROR4__(v858, 8) ^ __ROR4__(v826, 24);
  v863 = v857 << STACK[0x5790];
  v864 = (v863 + (v856 >> STACK[0x57C0])) ^ v861 ^ LODWORD(STACK[0x4EC0]) ^ __ROR4__(*(v711 + 4 * v844), 16) ^ *(v711 + 4 * v799) ^ __ROR4__(*(v711 + 4 * v852), 8);
  v865 = v864 ^ (v854 << 8);
  LOBYTE(v826) = v864 ^ ((((v784 ^ 0x2A) - 114) ^ ((v784 ^ 0x17) - 79) ^ ((v784 ^ 0xD7) + 113)) - 91);
  LODWORD(v844) = v861 ^ (v860 | STACK[0x5060]) ^ LODWORD(STACK[0x4EC8]) ^ *(v711 + 4 * v821) ^ __ROR4__(*(v711 + 4 * v843), 8) ^ __ROR4__(*(v711 + 4 * v781), 16) ^ __ROR4__(*(v711 + 4 * v840), 24);
  v866 = STACK[0x5780];
  v867 = (v863 | (v856 >> STACK[0x5780])) ^ v861 ^ LODWORD(STACK[0x4ED0]) ^ __ROR4__(*(v711 + 4 * v847), 16) ^ __ROR4__(*(v711 + 4 * LODWORD(STACK[0x55F0])), 24) ^ __ROR4__(*(v711 + 4 * v850), 8);
  LODWORD(v784) = v867 ^ *(v711 + 4 * v853);
  v868 = 545 * (v867 ^ *(v711 + 4 * v853)) + 140610;
  LODWORD(v860) = v868 - 1552 * ((2767376 * v868) >> 32);
  v869 = 545 * BYTE3(v796) + 140610 - 1552 * ((2767376 * (545 * BYTE3(v796) + 140610)) >> 32);
  LOBYTE(v850) = *(v855 + (((v784 >> 19) & 0xE0 | (v784 >> 27)) ^ 0x27F9));
  v870 = (LODWORD(STACK[0x4A68]) + 117 * (((v850 ^ 0x94) + 51) ^ ((v850 ^ 0x28) - 113) ^ ((v850 ^ 0x95) + 52)));
  LODWORD(STACK[0x53D8]) = 545 * BYTE1(v865) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v865) + 140610)) >> 32);
  LODWORD(v863) = (545 * (v870 | ((v870 < 0x38) << 8)) + 110090) % 0x610;
  LODWORD(STACK[0x53B0]) = 545 * v796 + 140610 - 1552 * ((2767376 * (545 * v796 + 140610)) >> 32);
  LODWORD(STACK[0x53A0]) = 545 * v826 + 140610 - 1552 * ((2767376 * (545 * v826 + 140610)) >> 32);
  LODWORD(STACK[0x53A8]) = 545 * BYTE3(v844) + 140610 - 1552 * ((2767376 * (545 * BYTE3(v844) + 140610)) >> 32);
  LODWORD(STACK[0x53D0]) = 545 * BYTE2(v796) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v796) + 140610)) >> 32);
  LODWORD(STACK[0x53F8]) = 545 * BYTE1(v844) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v844) + 140610)) >> 32);
  v871 = STACK[0x5660];
  LODWORD(v840) = STACK[0x5210];
  LODWORD(v826) = STACK[0x5620];
  LOBYTE(v843) = v859;
  LODWORD(v855) = v861 ^ ((STACK[0x5620] & 0x4010404 ^ 0x86818000 ^ STACK[0x5210] & (LODWORD(STACK[0x5660]) ^ 0x85850382)) << v859) ^ (STACK[0x5070] >> v866) ^ LODWORD(STACK[0x4EE8]) ^ __ROR4__(*(v711 + 4 * v860), 24) ^ *(v711 + 4 * (545 * HIBYTE(v865) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v865) + 140610)) >> 32)));
  v872 = STACK[0x5650];
  LODWORD(v860) = STACK[0x5218];
  LODWORD(v859) = STACK[0x5600];
  v873 = STACK[0x5790];
  v874 = STACK[0x5068] << STACK[0x5790];
  v875 = STACK[0x57C0];
  LODWORD(v781) = v861 ^ __ROR4__(*(v711 + 4 * (545 * v844 + 140610 - 1552 * ((2767376 * (545 * v844 + 140610)) >> 32))), 24) ^ *(v711 + 4 * v863);
  v876 = *(v711 + 4 * (545 * BYTE1(v796) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v796) + 140610)) >> 32)));
  v877 = *(v711 + 4 * (545 * BYTE2(v865) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v865) + 140610)) >> 32)));
  STACK[0x55F0] = v876;
  LODWORD(v796) = STACK[0x5760];
  LODWORD(v863) = LODWORD(STACK[0x5230]) ^ (v874 | ((v859 & 0x40100 ^ (v872 ^ 0x818086) & v860 ^ 0x8100) >> v875)) ^ v781 ^ __ROR4__(v876, 16) ^ __ROR4__(v877, 8);
  v878 = ((v871 ^ 0x83840186) & v860 ^ ((v859 & 0x400) - 2139061760)) << v873;
  LOBYTE(v871) = v875;
  LODWORD(v874) = v861;
  LODWORD(v844) = v878 ^ ((STACK[0x5720] & v860) >> v875) ^ v861 ^ LODWORD(STACK[0x4EF0]) ^ __ROR4__(*(v711 + 4 * (545 * BYTE1(v784) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v784) + 140610)) >> 32))), 16) ^ *(v711 + 4 * v869) ^ __ROR4__(*(v711 + 4 * LODWORD(STACK[0x53A0])), 24) ^ __ROR4__(*(v711 + 4 * (545 * BYTE2(v844) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v844) + 140610)) >> 32))), 8);
  v879 = v826;
  v880 = v840 & STACK[0x5760];
  STACK[0x5340] = v880;
  v881 = v880 << v843;
  STACK[0x5348] = v881;
  LODWORD(v878) = *(v711 + 4 * LODWORD(STACK[0x53B0]));
  LODWORD(v859) = v874 ^ (((v840 & (v872 ^ 0x82030704) ^ (v826 & 0x40400 | 0x82820282)) >> v866) + v881) ^ LODWORD(STACK[0x4ED8]) ^ __ROR4__(*(v711 + 4 * LODWORD(STACK[0x53D8])), 16) ^ BYTE3(v878) ^ (v878 << 8) ^ *(v711 + 4 * LODWORD(STACK[0x53A8])) ^ __ROR4__(*(v711 + 4 * (545 * BYTE2(v784) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v784) + 140610)) >> 32))), 8);
  LOBYTE(v869) = *(((55 * v863) ^ 0x2Bu) + STACK[0x57A0] + 54656);
  LODWORD(STACK[0x53B0]) = v859;
  LODWORD(v847) = 545 * BYTE1(v859) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v859) + 140610)) >> 32);
  v882 = ((((v869 ^ 0x60) + 15) ^ ((v869 ^ 0xBE) - 47) ^ ((v869 ^ 0x13) + 126)) + 100);
  LODWORD(v840) = *(v711 + 4 * LODWORD(STACK[0x53D0]));
  LODWORD(STACK[0x53A8]) = v844;
  LODWORD(v859) = BYTE3(v844) + 258;
  LODWORD(STACK[0x53D0]) = v859;
  LODWORD(v799) = v855 ^ __ROR4__(v840, 8) ^ __ROR4__(*(v711 + 4 * LODWORD(STACK[0x53F8])), 16);
  LODWORD(v878) = *(v711 + 4 * (545 * BYTE2(v844) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v844) + 140610)) >> 32)));
  LODWORD(v875) = STACK[0x5220];
  v883 = STACK[0x5220] & v796;
  STACK[0x53A0] = v883;
  LODWORD(v826) = *(v711 + 4 * ((545 * (v882 | ((v882 < 0x15) << 8)) + 129165) % 0x610));
  v884 = ((v883 << STACK[0x5790]) | ((v879 & 0xC2C0860 ^ 0x21C0A32 ^ v875 & (v872 ^ 0x1E580A1C)) >> v871)) ^ v874 ^ LODWORD(STACK[0x4EE0]) ^ __ROR4__(v878, 8) ^ __ROR4__(*(v711 + 4 * v847), 16) ^ BYTE3(v826) ^ (v826 << (((13 - BYTE3(v844)) & 8) + (v859 & 8))) ^ *(v711 + 4 * ((545 * (((BYTE3(v799) ^ 0x690A76B7) + 1069361919) ^ ((BYTE3(v799) ^ 0x2766E1) + 1452292777) ^ ((BYTE3(v799) ^ 0x692D1056) + 1067076640)) + 1671867320) % 0x610u));
  LODWORD(v847) = *(v711 + 4 * (545 * BYTE1(v799) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v799) + 140610)) >> 32)));
  LODWORD(v840) = (32650 * (WORD1(v847) == (WORD1(v847) - 29996))) ^ LODWORD(STACK[0x56D0]);
  v885 = STACK[0x5098] >> v866;
  v886 = *(v711 + 4 * (545 * BYTE2(v884) + 421285 - 1552 * ((2767376 * (545 * BYTE2(v884) + 421285)) >> 32)));
  HIDWORD(v837) = *(v711 + 4 * (545 * v844 + 140610 - 1552 * ((2767376 * (545 * v844 + 140610)) >> 32)));
  LODWORD(v837) = HIDWORD(v837);
  LODWORD(STACK[0x53D8]) = v837 >> 24;
  v887 = *(STACK[0x57D8] + 8 * v840);
  LODWORD(STACK[0x5230]) = LODWORD(STACK[0x53E8]) - 124;
  HIDWORD(v837) = v886;
  LODWORD(v837) = v886;
  LODWORD(STACK[0x53E8]) = v799;
  STACK[0x56D0] = (v837 >> 16);
  return v887(v885);
}

uint64_t sub_1004A6CF4()
{
  v2 = *(v1 - 0x683CBC57EAB92A36);
  STACK[0x7F18] = v2;
  return (*(STACK[0x57D8] + 8 * ((116 * (((v2 == 0x308E083E0C524CBELL) ^ ((v0 + 39) ^ (73 * (v0 ^ 0x28)))) & 1)) ^ v0)))();
}

uint64_t sub_1004A6D74()
{
  v1 = STACK[0xB658] - 0x30BDFED8F32E6575;
  v2 = STACK[0x6250];
  v3 = STACK[0x6F80];
  v4 = STACK[0x57D8];
  STACK[0x9D20] = *(STACK[0x57D8] + 8 * v0);
  return (*(v4 + 8 * (v0 - 22956 + v0 + 29288)))(&STACK[0xD760], v1, v2, v3);
}

uint64_t sub_1004A6DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = STACK[0x51B8] - 1932801477;
  v6 = STACK[0x51B8] - 20101;
  STACK[0xC630] = STACK[0x7228] + 16;
  v7 = STACK[0x57D8];
  STACK[0x8580] = *(STACK[0x57D8] + 8 * v6);
  return (*(v7 + 8 * ((v5 ^ (a5 + 3881)) + v6)))();
}

uint64_t sub_1004A6E60(uint64_t a1, uint64_t a2)
{
  STACK[0x8478] = (LODWORD(STACK[0x1AEC]) | 0x4080u) ^ 0x104492 | STACK[0x84B0];
  v3 = STACK[0xC448];
  STACK[0x7FC8] = STACK[0x7CC8];
  LODWORD(STACK[0xB564]) = *(v2 + 1408);
  STACK[0xAB48] = STACK[0x9E90];
  STACK[0xC5F8] = STACK[0xBA18];
  LODWORD(STACK[0x862C]) = -769884028;
  STACK[0xA980] = v3;
  STACK[0x9568] = STACK[0x1B00];
  LODWORD(STACK[0x8758]) = -47060464;
  return (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1AE8])))(103679699, a2, 43);
}

uint64_t sub_1004A6FE4()
{
  v0 = STACK[0x51B8] ^ 0x6265;
  v1 = STACK[0x51B8] - 12666;
  v2 = STACK[0x7198];
  v3 = 4 * *(STACK[0x7198] + 392) % ((((STACK[0x51B8] - 21462) | 0x225C) ^ 0x700) & 0xDDB3);
  v4 = STACK[0x7ED8];
  v5 = (&STACK[0x10120] + v4);
  *v5 = 0x851F179905AC939ELL;
  v5[1] = 0x901C5B2E8B3F6D1CLL;
  *(&STACK[0x10120] + v4 + 16) = veorq_s8(*(&STACK[0x10120] + v4), xmmword_1012370D0);
  STACK[0x7ED8] = v4 + (v0 ^ 0x3A13);
  v6 = STACK[0x8560];
  STACK[0xCF30] += 32;
  LODWORD(STACK[0xD254]) = 0;
  STACK[0xD230] = v2 + v3;
  STACK[0xD268] = v6;
  return (*(STACK[0x57D8] + 8 * ((30512 * ((&STACK[0x10120] + v4 + 16) == v6)) ^ v1)))();
}

uint64_t sub_1004A7154()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x51B8] - 19781;
  STACK[0x5930] = STACK[0xD208];
  v2 = *STACK[0x45F8];
  v3 = *STACK[0x45F0];
  LODWORD(STACK[0x7934]) = ((v0 - 22438) & (48 * (v3 - v2))) + 32;
  v4 = (3 * (v3 ^ v2)) & 0xF;
  if (v4 == 1)
  {
    v4 = 0;
  }

  LODWORD(STACK[0x974C]) = v4;
  v5 = *(STACK[0xA8E8] - 0x79296B4A625EDCB8);
  STACK[0xD210] = STACK[0xA8E8] - 0x79296B4A625EDCF4;
  LODWORD(STACK[0xD21C]) = v5;
  v6 = STACK[0x7ED8];
  STACK[0x63E0] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v6 + 32;
  v7 = STACK[0x57D8];
  STACK[0xCF38] = *(STACK[0x57D8] + 8 * v1);
  return (*(v7 + 8 * (v1 ^ 0xF85 ^ (4498 * ((v0 - 577707944) > 0xC53F5DC9)))))();
}

uint64_t sub_1004A7404@<X0>(int a1@<W8>)
{
  v1 = a1 ^ 0x361A;
  v2 = STACK[0x5540];
  if ((STACK[0x53B8] & 2) != 0)
  {
    v2 = STACK[0x5480];
  }

  LODWORD(STACK[0x51D8]) = v2;
  LODWORD(STACK[0x5590]) = LODWORD(STACK[0x55E0]) ^ 0x87D363A8;
  return (*(STACK[0x57D8] + 8 * v1))(1407191901);
}

uint64_t sub_1004A74E8()
{
  v0 = STACK[0x51B8];
  STACK[0xA548] = STACK[0x6FD8] + SLODWORD(STACK[0xBFF8]);
  v1 = STACK[0x57D8];
  STACK[0xB058] = *(STACK[0x57D8] + 8 * (v0 - 19643));
  return (*(v1 + 8 * ((v0 - 15762) ^ (v0 - 19643))))();
}

uint64_t sub_1004A7574()
{
  STACK[0x1D4C8] = STACK[0x4168];
  LODWORD(STACK[0x1D4C0]) = (v0 + 1717160320) ^ (1964904101 * ((v1 - 240) ^ 0xFA22EB84));
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 20885)))(v1 - 240);
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_1004A7660()
{
  v1 = STACK[0x51B8] - 21018;
  LODWORD(STACK[0xD108]) = v0;
  return (*(STACK[0x57D8] + 8 * (v1 ^ 0x14BF)))();
}

uint64_t sub_1004A775C()
{
  v0 = STACK[0x5560];
  if ((STACK[0x53C8] & 2) == 0)
  {
    v0 = STACK[0x55C0];
  }

  LODWORD(STACK[0x5290]) = v0;
  LODWORD(STACK[0x56E0]) ^= LODWORD(STACK[0x55A0]) ^ 0xEAEAEAEA;
  return (*(STACK[0x57D8] + 8 * LODWORD(STACK[0x56D0])))((LODWORD(STACK[0x56D0]) - 4977));
}

uint64_t sub_1004A79A4()
{
  if (STACK[0xB168])
  {
    v0 = LODWORD(STACK[0x7A54]) == ((LODWORD(STACK[0x38EC]) + 2093) | 0x1852) + 103657085;
  }

  else
  {
    v0 = 1;
  }

  v2 = v0 || LODWORD(STACK[0x7880]) != 20;
  return (*(STACK[0x57D8] + 8 * ((59 * v2) ^ LODWORD(STACK[0x38EC]))))();
}

uint64_t sub_1004A7A18@<X0>(int a1@<W5>, __int16 a2@<W7>, int a3@<W8>)
{
  LODWORD(STACK[0xD4E4]) = v9;
  LODWORD(STACK[0x6C24]) = a3;
  LODWORD(STACK[0xD4DC]) = v8;
  LODWORD(STACK[0xB9CC]) = v4;
  LODWORD(STACK[0xD4D8]) = v5;
  LODWORD(STACK[0xCF4C]) = v7;
  LOWORD(STACK[0xCF4A]) = a2;
  LOWORD(STACK[0xCF52]) = a1;
  LODWORD(STACK[0xCF54]) = v3;
  *STACK[0xED88] = v10;
  LODWORD(STACK[0x9A1C]) = v6 + 60098 + (((a1 ^ 0x384B06F8) - 944441080) ^ ((a1 ^ 0xE8B9CEE2) + 390476062) ^ ((a1 ^ 0xD0F222D8) + 789437736));
  return (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1EF0])))();
}

uint64_t sub_1004A7E38()
{
  v0 = STACK[0x51B8];
  LODWORD(STACK[0x73F4]) = LODWORD(STACK[0x69A0]) << ((116 * (STACK[0x51B8] ^ 0x52)) ^ 0xD4);
  v1 = STACK[0x57D8];
  STACK[0x9078] = *(STACK[0x57D8] + 8 * (v0 - 22076));
  return (*(v1 + 8 * (v0 - 17146)))();
}

uint64_t sub_1004A7EF4@<X0>(int a1@<W0>, char a2@<W1>, unint64_t a3@<X8>)
{
  v9 = a3 ^ (a3 >> 26) ^ v3 ^ (v3 << 23) ^ ((v3 ^ (v3 << 23)) >> 17);
  v10 = (v9 + a3) & 7;
  v11 = ((v9 + a3) >> 4) & 7;
  if (v11 == v10)
  {
    LOBYTE(v10) = (v9 + a3 + 1) & (v5 ^ a2);
  }

  *(v7 + 4 * v11) = *(v7 + 4 * v10) ^ *(v7 + 4 * (((v9 + a3) >> 4) & 7));
  return (*(STACK[0x57D8] + 8 * (((v4 != 0) * a1) ^ v6)))();
}

uint64_t sub_1004A7FE8()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x51B8] - 13466;
  v2 = STACK[0xA2AC];
  LODWORD(STACK[0xAB7C]) = (((STACK[0x51B8] - 22566) | 0x840) ^ 0x874) + LODWORD(STACK[0xA2AC]);
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v0 + 9192)))((v2 - 103679695));
  STACK[0x77D8] = v4;
  return (*(v3 + 8 * (((8 * (v4 == 0)) | ((v4 == 0) << 6)) ^ v1)))();
}

uint64_t sub_1004A82FC@<X0>(int a1@<W8>)
{
  v3 = a1 + 1;
  LODWORD(STACK[0x1D4C8]) = a1 + 9356 + 289235981 * ((2 * (((v2 - 240) ^ 0x2F8ED2F3) & 0x5801FD72) - ((v2 - 240) ^ 0x2F8ED2F3) - 1476525431) ^ 0xFF20045) - 4771;
  STACK[0x1D4C0] = v1;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * ((a1 + 9356) ^ 0x24FF)))(v2 - 240);
  return (*(v4 + 8 * v3))(v5);
}

uint64_t sub_1004A8394()
{
  v1 = STACK[0x79A8];
  v2 = STACK[0xAFE8];
  v3 = STACK[0xA960];
  v4 = STACK[0x8D04];
  v5 = STACK[0x51B8] + 847660746;
  v6 = 1379010179 * ((-986108162 - ((v0 - 240) | 0xC5392EFE) + ((v0 - 240) | 0x3AC6D101)) ^ 0x1E97E86F);
  STACK[0x1D4D8] = STACK[0xC3B0];
  STACK[0x1D4D0] = v3;
  STACK[0x1D4E0] = v1;
  LODWORD(STACK[0x1D4E8]) = v6 - 467101311 + 1806817213 * v4;
  STACK[0x1D4C0] = v2;
  LODWORD(STACK[0x1D4C8]) = v5 ^ v6;
  v7 = STACK[0x57D8];
  v8 = (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1350])))(v0 - 240);
  return (*(v7 + 8 * (((LODWORD(STACK[0x1D4EC]) != LODWORD(STACK[0x1358])) * LODWORD(STACK[0x1354])) ^ LODWORD(STACK[0x134C]))))(v8);
}

uint64_t sub_1004A8694()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x68D3)))();
  STACK[0x96E0] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1004A86CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = (((v12 ^ 0x9BD6AC41) + 1680430015) ^ ((v12 ^ 0x21AAD759) - 564844377) ^ (((v9 - 22538) ^ v12 ^ 0x6860FBC0) - 1751186316)) + 46215550;
  v19 = (v18 ^ 0xAF524E11) & (2 * (v18 & 0xCF5B4F15)) ^ v18 & 0xCF5B4F15;
  v20 = ((2 * (v18 ^ 0xBD70D41B)) ^ 0xE457361C) & (v18 ^ 0xBD70D41B) ^ (2 * (v18 ^ 0xBD70D41B)) & 0x722B9B0E;
  v21 = ((4 * (v20 ^ 0x12288902)) ^ 0xC8AE6C38) & (v20 ^ 0x12288902) ^ (4 * (v20 ^ 0x12288902)) & 0x722B9B0C;
  v22 = (v21 ^ LODWORD(STACK[0x15D4])) & (16 * ((v20 ^ 0x6003100C) & (4 * v19) ^ v19)) ^ (v20 ^ 0x6003100C) & (4 * v19) ^ v19;
  v23 = ((16 * (v21 ^ 0x32019306)) ^ 0x22B9B0E0) & (v21 ^ 0x32019306) ^ (16 * (v21 ^ 0x32019306)) & 0x722B9B00;
  v24 = v22 ^ 0x722B9B0E ^ (v23 ^ 0x22299000) & (v22 << 8);
  v25 = v18 ^ (2 * ((v24 << 16) & 0x722B0000 ^ v24 ^ ((v24 << 16) ^ 0x1B0E0000) & (((v23 ^ 0x50020B0E) << 8) & 0x722B0000 ^ 0x50200000 ^ (((v23 ^ 0x50020B0E) << 8) ^ 0x2B9B0000) & (v23 ^ 0x50020B0E))));
  v26 = v8 + (v25 ^ 0xF187909u);
  v27 = v7 + v11 + (((v25 ^ 0xF12F5D2C) - 741057713) ^ ((v25 ^ 0xC61A4CC0) - 454997341) ^ ((v25 ^ 0x382D68E5) + 450260616));
  v28 = *v13 & 0xFFFFFFFFFFFFFFF8;
  v29 = *(*v16 + ((633443051 * (((-1730737274 * (v26 & 0xFFFFFFF8)) & 0x88C885B0) + ((-865368637 * (v26 & 0xFFFFFFF8)) ^ 0xC46442DC)) - 801808090) & v28));
  v30 = (__ROR8__(v26 & 0xFFFFFFFFFFFFFFF8, 8) + v29) ^ 0xB88801D4E1C76353;
  v31 = __ROR8__(v30, 8);
  v32 = v30 ^ __ROR8__(v29, 61);
  v33 = (v31 + v32) ^ 0x38C8B16AE7056877;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (((2 * (v35 + v34)) | 0xD04C7ED08DAACC8) - (v35 + v34) + 0x797D9C097B92A99CLL) ^ 0x6302D28B08A8B335;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (((2 * (v38 + v37)) & 0xF21B7CF4D3C682A0) - (v38 + v37) - 0x790DBE7A69E34151) ^ 0x6753BCDE474947D5;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (((2 * (v41 + v40)) & 0x3B669D55D1D14AB6) - (v41 + v40) - 0x1DB34EAAE8E8A55CLL) ^ 0x382CFA5914B5E53DLL;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = __ROR8__(v42, 8);
  v45 = (((2 * (v44 + v43)) | 0x7CC9AD11050709BELL) - (v44 + v43) - 0x3E64D688828384DFLL) ^ 0xC451344549BDB518;
  v46 = *(*v16 + (((v27 & 0xBBEEEE40 | 0x441111BB) + v15 + (v27 & 0x441111B8 | 0xBBEEEE45)) & v28));
  v47 = v45 ^ __ROR8__(v43, 61);
  v48 = (__ROR8__(v27 & 0xFFFFFFFFFFFFFFF8, 8) + v46) ^ v17;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = __ROR8__(v45, 8);
  v51 = (__ROR8__(v48, 8) + v49) ^ 0x153242EE3CF06A49;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (((2 * (v53 + v52)) | 0x7D599003555A1D52) - (v53 + v52) + 0x415337FE5552F157) ^ 0x9CD91CC692983732;
  v55 = v54 ^ __ROR8__(v52, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ v14;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = __ROR8__(v56, 8);
  v59 = (0x4787FABC14F8168FLL - ((v50 + v47) | 0x4787FABC14F8168FLL) + ((v50 + v47) | 0xB8780543EB07E970)) ^ 0x6A8809A5CBE23ADELL;
  v60 = (v58 + v57 - ((2 * (v58 + v57)) & 0x358C91F835313580) + 0x1AC648FC1A989AC0) ^ 0xDD1B810AD6DD2DE1;
  v61 = v60 ^ __ROR8__(v57, 61);
  v62 = (__ROR8__(v60, 8) + v61) ^ 0xA82620A559D2DA78;
  v63 = v62 ^ __ROR8__(v61, 61);
  v64 = __ROR8__(v62, 8);
  v65 = (0x4666051D7E941E10 - ((v64 + v63) | 0x4666051D7E941E10) + ((v64 + v63) | 0xB999FAE2816BE1EFLL)) ^ 0xE61416DC22F3EBF4;
  v66 = v65 ^ __ROR8__(v63, 61);
  v67 = __ROR8__(v65, 8);
  *v27 = (((v67 + v66 - ((2 * (v67 + v66)) & 0x7411FE3069885A6ALL) - 0x45F700E7CB3BD2CBLL) ^ 0x7BCB37CA9001651DLL) >> (8 * ((v7 + v11 + (((v25 ^ 0x2C) + 79) ^ ((v25 ^ 0xC0) - 93) ^ ((v25 ^ 0xE5) - 120))) & 7))) ^ *v26 ^ (((__ROR8__(v59, 8) + (v59 ^ __ROR8__(v47, 61))) ^ a7) >> (8 * (v26 & 7u)));
  return (*(STACK[0x57D8] + 8 * ((109 * (v25 == 253262089)) ^ v10)))();
}

uint64_t sub_1004A8D60@<X0>(uint64_t a1@<X0>, char a2@<W2>, uint64_t a3@<X4>, int a4@<W6>, uint64_t a5@<X7>, char a6@<W8>)
{
  v20 = *(*(a5 + 8 * (a4 - 12079)) + 4 * (v12 ^ 0x60u) - 8);
  v21 = (((v12 ^ ((v12 & v10) >> 1)) & v11) >> a2) + ((v12 ^ ((v12 & v10) >> 1)) << v15);
  v22 = v20 ^ (((v20 ^ 0xBC22C058) & v18) >> 1);
  v23 = (181 * (a4 ^ 0x30F8)) ^ (v17 + 2054) ^ ((v22 ^ 0x5178A9E) & STACK[0x5550] | v16);
  v24 = (v19 ^ 0x22 ^ (v22 ^ 0x8C487DBF) & STACK[0x5790]) >> v9;
  v25 = (a6 ^ (v21 - ((2 * v21) & 0xB2) + 89)) ^ 0xBAu;
  *(STACK[0xD6A0] + 4 * v25) = v8 ^ v6 ^ v14 ^ (v13 + v24 - ((2 * v24) & 0x5FF66E0C) + 3358) ^ ((v23 << v7) - ((2 * (v23 << v7)) & 0x5DCB4234) + 786800922);
  *(a3 + 4 * v25) = v8 ^ v6 ^ 0xD10A13C3 ^ *(a1 + 4 * (v12 ^ 0x76u));
  return (*(STACK[0x57D8] + 8 * ((32057 * (v12 == 255)) ^ a4)))();
}

uint64_t sub_1004A8F28()
{
  v1 = STACK[0x57D8];
  STACK[0x8D48] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * ((v0 + 4407) ^ v0)))();
}

uint64_t sub_1004A9004(uint64_t a1, int a2)
{
  v2 = LODWORD(STACK[0x5348]) ^ LODWORD(STACK[0x5750]);
  LODWORD(STACK[0x5770]) = LODWORD(STACK[0x5310]) ^ 0x8C8E8EAF;
  LODWORD(STACK[0x4E98]) = v2;
  LODWORD(STACK[0x5348]) = v2 ^ 0xCC119520;
  LODWORD(STACK[0x5340]) ^= 0x16F86505u;
  return (*(STACK[0x57D8] + 8 * a2))(2880744102);
}

uint64_t sub_1004AC7B4(int a1, int a2, int a3, int a4, uint64_t a5, int a6, int a7, int a8)
{
  v17 = v8;
  v18 = (a1 + v16) >> 16;
  v19 = (a1 + v16 + v18) >> 8;
  v20 = a1 + v15 + v18 + v19;
  v21 = v20 >> 11;
  v22 = (v20 + (v20 >> 11)) >> 5;
  v23 = a1 + v21 + v19 + v22 + v18;
  v24 = v23 + a8;
  v25 = STACK[0x57C0] + v23;
  v26 = v25 + v12 - 2 * ((v25 - v14) & v12) - v14;
  v24 >>= 13;
  v27 = ((v25 + v24 - a7) >> (-9 * (v8 ^ 0x9D) + 95)) + a1;
  v28 = v27 + v24 + v22 + v21 + v19 + v18;
  v29 = (STACK[0x57C0] + v28 - a7) ^ v11;
  v30 = v28 + a4;
  v31 = (v28 + a4) >> 15;
  v32 = v28 + v31;
  v33 = (v30 + v31) >> 2;
  v34 = STACK[0x57C0] + v32 - v33 - a6;
  v35 = v32 + a3;
  v36 = (v35 - v33) >> 9;
  v37 = v35 + v36;
  v38 = LODWORD(STACK[0x5730]) ^ 0xAE303220;
  v39 = v27 + v36 + v31;
  v40 = (v37 - v33) >> 3;
  v41 = v39 + v24 + v40 + v22 + v21 + v19 + v18;
  v42 = (STACK[0x57C0] + v41 - v33 - a2) ^ v26;
  v43 = v37 + v40 - v33 - 1181963997;
  v44 = v43 >> 12;
  v45 = (v43 >> 12) + v43;
  v46 = v41 + v44 + (v45 >> 7) - v33;
  v47 = v29 ^ (STACK[0x57C0] + v46 - v13);
  v48 = STACK[0x57C0] + v46 - (((v45 >> 7) + v45 - 505175844 - (((v45 >> 7) + v45 - 505175844) >> 11)) >> 7) - (((v45 >> 7) + v45 - 505175844) >> 11) - v9;
  v49 = (v48 ^ 0xB27566C9) + ((v48 ^ 0xB27566C9) >> 13) - (((v48 ^ 0xB27566C9) + ((v48 ^ 0xB27566C9) >> 13)) >> 6);
  v50 = v42 ^ v49;
  v51 = (v49 ^ 0xD21A5998) - ((v49 ^ 0xD21A5998) >> 11) + (((v49 ^ 0xD21A5998) - ((v49 ^ 0xD21A5998) >> 11)) >> 3);
  v52 = ((v51 ^ 0xD45CB986) >> 10) + (v51 ^ 0xD45CB986) - 2 * ((v51 ^ 0xD45CB986) >> 10);
  v53 = v47 ^ v51;
  v54 = v34 ^ v10 ^ v48 ^ (v52 + (v52 >> 7));
  LODWORD(STACK[0x5750]) = -v54;
  v55 = v54 & 7;
  v56 = v50 & 0xFFFFFF80 ^ 0xC8DD6E00;
  v57 = -v54 & 7;
  v58 = (v47 ^ v51) ^ 5 ^ ((v47 ^ v51 ^ 0x80274B05) >> 16) ^ ((v47 ^ v51 ^ 0x4B05) >> 8) ^ ((v47 ^ v51) >> 24) ^ 0x24;
  LODWORD(STACK[0x54F0]) = 16 * v55 - 1022424114 - ((32 * v54) & 0x80);
  v59 = *(&off_101353600 + v8 - 17952);
  v60 = *(v59 + 4 * v57) ^ LODWORD(STACK[0x52C0]);
  v61 = v60 ^ 0x5F4CED34;
  LODWORD(STACK[0x54D0]) = (v60 ^ 0x5F4CED34) & 0x44C8870B ^ v60 & 2;
  v62 = STACK[0x5640];
  LODWORD(STACK[0x50F8]) = v38 - 598610068 - ((2 * v38) & 0xB8A3DED8);
  LODWORD(STACK[0x53B8]) = (v62 >> 6) - 865680466 - ((2 * (v62 >> 6)) & 0xCD875C);
  v63 = LODWORD(STACK[0x5760]) % 0x101;
  v64 = STACK[0x51C8];
  LODWORD(STACK[0x50F0]) = 570272379 * (v57 - LODWORD(STACK[0x51C8]));
  v65 = *(&off_101353600 + (v17 ^ 0x4334));
  v66 = *(&off_101353600 + v17 - 17025) - 8;
  v67 = STACK[0x5178];
  v68 = *&v66[4 * STACK[0x5178]] ^ 0xBB111BE6;
  v69 = v68 ^ (*(v65 + 4 * (v54 & 7)) - 2122509433) ^ (16 * v68);
  v70 = v54 ^ 0xC8DD6E70;
  v71 = (v69 + 442426779 - ((2 * v69) & 0x34BDCB36)) ^ LODWORD(STACK[0x5770]) ^ v54 ^ 0xC8DD6E70;
  LODWORD(STACK[0x50D0]) = (1850533395 * v38) ^ LODWORD(STACK[0x5408]);
  v72 = LODWORD(STACK[0x51C0]);
  v73 = STACK[0x5630];
  LODWORD(STACK[0x4FE8]) = v72 + LODWORD(STACK[0x5630]);
  LODWORD(STACK[0x50D8]) = v63 - 993491191 - ((2 * v63) & 0x212);
  LODWORD(STACK[0x54C0]) = (LODWORD(STACK[0x5460]) ^ 0xCC66C3AE) - v38 + (v72 ^ v73);
  v74 = v50 & 0x7F ^ 0x70;
  LODWORD(STACK[0x51B0]) = 16843009 * v74;
  v75 = v50 & 0x7F ^ 0x70;
  LODWORD(STACK[0x5420]) = v75 + v56;
  v76 = v75 | v56;
  v77 = 16843009 * (v50 ^ 0x53 ^ ((v50 ^ 0x5253) >> 8) ^ ((v50 ^ 0xE9D45253) >> 16) ^ HIBYTE(v50) ^ 0xD2);
  LODWORD(STACK[0x5410]) = v77;
  LODWORD(STACK[0x5460]) = 16843009 * v58;
  v78 = v77 ^ 0x9F9F9F9F ^ (16843009 * v58);
  v79 = *(v59 + 4 * (v78 % 0x101));
  v80 = *(v59 + 4 * v63);
  LODWORD(STACK[0x5098]) = v80 ^ 0xC5D65E3E;
  LODWORD(STACK[0x50C8]) = v80 ^ 0x3A29A1C1;
  LODWORD(v59) = STACK[0x56D0];
  LODWORD(STACK[0x5520]) = v53;
  v81 = v53 ^ v59;
  v82 = -641318842 * (v53 ^ v59);
  LODWORD(STACK[0x50A0]) = 1826824227 * v81 - 124166363;
  LODWORD(STACK[0x50E0]) = 2006645441 * ((LODWORD(STACK[0x5730]) ^ 0x9912A3AF) + v50) + 2006645441;
  v83 = STACK[0x5720];
  LODWORD(STACK[0x5650]) = LODWORD(STACK[0x54E0]) ^ LODWORD(STACK[0x5720]) ^ (*(v65 + 4 * (v62 % 0x101)) - 2122509433) ^ v54 ^ 0xC8DD6E70 ^ 0x1D34C70B ^ v79;
  if ((v54 & 7) != 0)
  {
    v84 = 255;
  }

  else
  {
    v84 = 0;
  }

  v85 = v84 << v57;
  LODWORD(STACK[0x57C0]) = 16843009 * v85;
  LODWORD(STACK[0x50A8]) = -452984832 * v85;
  if ((v54 & 7) != 0)
  {
    v86 = ~v85;
  }

  else
  {
    v86 = 0;
  }

  LODWORD(STACK[0x5770]) = v50 & v86;
  LODWORD(STACK[0x5068]) = LODWORD(STACK[0x5570]) ^ 0x1A5EE59B;
  LODWORD(STACK[0x5100]) ^= 0xD9A0640A;
  LODWORD(STACK[0x5038]) = (v78 >> 2) & 0x3132BE4A;
  v87 = *(&off_101353600 + (v17 ^ 0x4346)) - 4;
  v88 = *(v65 + 4 * v63);
  v89 = *&v66[4 * v63];
  LODWORD(STACK[0x5070]) = *&v87[4 * v63];
  LODWORD(STACK[0x5090]) = *&v87[4 * v64];
  LODWORD(STACK[0x5030]) = v61 - 993491191;
  v90 = STACK[0x52F8];
  LODWORD(STACK[0x52C0]) = v74;
  LODWORD(STACK[0x5078]) = v90 - v74;
  LODWORD(STACK[0x5760]) = 959791691 * (v90 - v74);
  LODWORD(STACK[0x5028]) = (2 * LODWORD(STACK[0x5750])) & 0xC;
  LODWORD(STACK[0x54E0]) = LODWORD(STACK[0x5138]) ^ 0x1A5EE59B;
  LODWORD(STACK[0x5088]) = v88 - 2122509433;
  LODWORD(STACK[0x5138]) = (v88 - 2122509433) ^ 0x508D30E0;
  v91 = v50 ^ 0xC8DD6E70;
  v92 = STACK[0x4FE8];
  LODWORD(STACK[0x5750]) = v71 + v70;
  LODWORD(STACK[0x5740]) = v71 & v70;
  LODWORD(STACK[0x5020]) = (-593900506 * v92) & 0xF132BE4A;
  LODWORD(STACK[0x5018]) = (32 * (v89 ^ 0xBB111BE6)) & 0xB6FDA700;
  LODWORD(STACK[0x5048]) = LODWORD(STACK[0x5590]) ^ 0xCC66C3AE;
  LODWORD(STACK[0x50B8]) = (v76 >> 6) & 0x132BE4A;
  LODWORD(STACK[0x5058]) = v54 >> 3;
  LODWORD(STACK[0x5050]) = v70 >> 3;
  LODWORD(STACK[0x5060]) = v82 & 0xF132BE4A;
  v93 = *(STACK[0x57D8] + 8 * v17);
  LODWORD(STACK[0x5040]) = 16 * v67;
  LODWORD(STACK[0x53D0]) = v62 >> 3;
  LODWORD(STACK[0x5630]) = v78;
  LODWORD(STACK[0x4FF8]) = (v78 >> 3) - 124166363;
  LODWORD(STACK[0x5570]) = 2 * v83;
  LODWORD(STACK[0x5408]) = (2 * v83) & 2;
  LODWORD(STACK[0x50E8]) = v67 - 708429871;
  LODWORD(STACK[0x5140]) = v57;
  LODWORD(STACK[0x4FF0]) = v57 - 1022424114;
  LODWORD(STACK[0x5080]) = v89 ^ 0xBB111BE6;
  LODWORD(STACK[0x5010]) = 16 * (v89 ^ 0xBB111BE6) - 612445306;
  LODWORD(STACK[0x5590]) = 1850533395 * v92 - 124166363;
  LODWORD(STACK[0x5008]) = v91 & 0xAB8C6FA2;
  LODWORD(STACK[0x5500]) = v91;
  LODWORD(STACK[0x5000]) = (v91 >> 1) - 708429871;
  LODWORD(STACK[0x53B0]) = v76;
  LODWORD(STACK[0x50B0]) = (v76 >> 7) - 124166363;
  LODWORD(STACK[0x5148]) = v55;
  LODWORD(STACK[0x50C0]) = v55 ^ v67;
  return v93();
}

uint64_t sub_1004AD620@<X0>(unsigned __int8 a1@<W8>)
{
  STACK[0x78B0] = v2;
  LODWORD(STACK[0xCDDC]) = v3;
  v7 = ((((v3 >> 4) ^ 0xC3B4B743) - 671399358) ^ (((v3 >> 4) ^ 0xD3C0DDB7) - 946919242) ^ (((v4 - 207) ^ 0x1D55A2FD ^ (v3 >> 4) ^ (3769 * (v4 ^ 0x5923))) + 152721408)) + 894764767 + ((((3 * (a1 ^ v1)) & 7 ^ 0x95F8EF97) - 2130316580) ^ (((3 * (a1 ^ v1)) & 7) + 1526817453) ^ (((3 * (a1 ^ v1)) & 7 ^ 0x32F6D86F) + 638305572));
  LODWORD(STACK[0xA148]) = (16 * (((v7 ^ 0xFC149FB2) + 2818427) ^ v7 ^ ((v7 ^ 0xFD29D8D) + 65864518) ^ ((v7 ^ 0xFFDDCF3) + 63062588) ^ ((v7 ^ 0xFFBBFFB) + 63185204))) ^ 0x3C061370;
  v8 = (3 * (a1 + v1)) & 0xF;
  if (v8 == 1)
  {
    v8 = 0;
  }

  LODWORD(STACK[0x7C44]) = v8;
  v9 = 289235981 * ((v6 - 240) ^ 0x8782D03F);
  LODWORD(STACK[0x1D4D4]) = v4 - v9 - 22820;
  STACK[0x1D4C8] = STACK[0x9210];
  LOWORD(STACK[0x1D4C0]) = v9 ^ 0x4C4;
  v10 = STACK[0x57D8];
  v11 = (*(STACK[0x57D8] + 8 * (v4 + 9127)))(v6 - 240);
  v12 = *(v5 + 1755);
  LODWORD(STACK[0xA334]) = (v12 ^ 0x7DFAFEFB) - 343933451 + ((2 * v12) & 0xFFFFFFF7);
  v14 = v12 != 1 || STACK[0xCC78] == 0xD38CBDD3ACAFF84ALL;
  return (*(v10 + 8 * ((79 * v14) ^ v4)))(v11);
}

uint64_t sub_1004AD8AC@<X0>(int a1@<W6>, __int16 a2@<W7>, int a3@<W8>)
{
  LODWORD(STACK[0xD4E4]) = v8;
  LODWORD(STACK[0x6C24]) = a3;
  LODWORD(STACK[0xD4DC]) = v7;
  LODWORD(STACK[0xB9CC]) = v4;
  LODWORD(STACK[0xD4D8]) = v5;
  LODWORD(STACK[0xCF4C]) = v6;
  LODWORD(STACK[0x9A1C]) = v3;
  LOWORD(STACK[0xCF4A]) = a2;
  LOWORD(STACK[0xCF52]) = a2;
  LODWORD(STACK[0xCF54]) = v3;
  return (*(STACK[0x57D8] + 8 * (a1 + 5926)))();
}

uint64_t sub_1004AD920()
{
  v0 = STACK[0x51B8] - 20447;
  v1 = STACK[0x57D8];
  STACK[0xC8E8] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x12AB ^ (367 * (v0 ^ 0x875)))))();
}

uint64_t sub_1004AD990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x5700];
  v4 = (LODWORD(STACK[0x5700]) + 9479) | 0x3C;
  LODWORD(STACK[0x5790]) = STACK[0x5278] - 1160899612;
  LODWORD(STACK[0x5780]) = v4 ^ 0x4531B0E7;
  v5 = *(STACK[0x57D8] + 8 * v3);
  LODWORD(STACK[0x5740]) = v4 + 484095070;
  return v5(a1, LODWORD(STACK[0x4000]), a3, LODWORD(STACK[0x3FF8]), (v4 + 365701121));
}

uint64_t sub_1004ADA50()
{
  v1 = STACK[0x51B8] + 2738;
  v2 = STACK[0xE950];
  v3 = STACK[0xE958] + 10 + (v0 ^ 0xD21C8094);
  STACK[0xD970] = v3;
  return (*(STACK[0x57D8] + 8 * ((53 * (v3 <= v2)) | v1)))();
}

uint64_t sub_1004ADAAC@<X0>(uint64_t a1@<X5>, int a2@<W6>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v20 = *(v8 + ((((v5 + v9) & 0xFFFFFFF8 & v16) + ((v5 + v9) & 0xFFFFFFF8 | v16) + v14) & v7));
  v21 = (__ROR8__((v5 + v9) & 0xFFFFFFFFFFFFFFF8, 8) + v20) ^ 0xF41651499F5E3C67;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (a3 - ((v23 + v22) | a3) + ((v23 + v22) | (a4 + v17))) ^ 0xD70D469D8169F993;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0x2275D4C73835399BLL;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (v12 - ((v28 + v27) | v12) + ((v28 + v27) | 0xFA3C7DCCA621018ELL)) ^ 0x1F93677F889C3D53;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ v15;
  v32 = __ROR8__(v31, 8);
  v33 = v31 ^ __ROR8__(v30, 61);
  v34 = ((a1 | (2 * ((v32 + v33) ^ v19))) - ((v32 + v33) ^ v19) - 0x5575245987FBA5E7) ^ 0x4FBD3E6F6612494;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ v13;
  v37 = __ROR8__(v36, 8) + (v36 ^ __ROR8__(v35, 61));
  v38 = *(v8 + (v7 & (273852895 * (((1324110367 * ((v6 + v9) & 0xFFFFFFF8)) | a2) + a2 + ((1324110367 * ((v6 + v9) & 0xFFFFFFF8)) | 0xCD3ABD49)) - 1202414290) & 0xFFFFFFF8));
  v39 = __ROR8__((v6 + v9) & 0xFFFFFFFFFFFFFFF8, 8);
  v40 = (v38 + v39 - ((2 * (v38 + v39)) & 0x41678D516F50D274) + 0x20B3C6A8B7A8693ALL) ^ 0xD4A597E128F6555DLL;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ 0x153242EE3CF06A49;
  v43 = __ROR8__(v42, 8);
  v44 = v42 ^ __ROR8__(v41, 61);
  v45 = (((2 * (v43 + v44)) & 0x8EF50897299EAA3ELL) - (v43 + v44) + 0x38857BB46B30AAE0) ^ 0x1AF0AF735305937BLL;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ 0xE5AF1AB32EBD3CDDLL;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = (((((2 * v37) | 0x1C795C6A03F8D836) - v37 + 0x71C351CAFE0393E5) ^ 0x4FFF66E7A5392433uLL) >> (v11 & 0x38)) ^ *(v5 + v9);
  v50 = (__ROR8__(v47, 8) + v48) ^ v15;
  v51 = v50 ^ __ROR8__(v48, 61);
  v52 = __ROR8__(v50, 8);
  v53 = (((2 * (v52 + v51)) & 0x3409BA9C84293706) - (v52 + v51) - 0x1A04DD4E42149B84) ^ 0x4DDD0214E439BE04;
  v54 = v53 ^ __ROR8__(v51, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ v13;
  v56 = v49 - ((((__ROR8__(v55, 8) + (v55 ^ __ROR8__(v54, 61))) ^ 0xC1C3C8D2A4C54828) >> (v10 & 0x38)) ^ *(v6 + v9));
  v58 = v9 != 15 && (v56 ^ 0x4A8D9A7D) - 1082661401 + ((2 * v56) & 0x951B34FA) == v18 + 35;
  return (*(STACK[0x57D8] + 8 * (((2 * v58) | (8 * v58)) ^ v4)))();
}

uint64_t sub_1004AE0F4()
{
  v0 = STACK[0x37C8];
  v1 = STACK[0x37C8] + 4154;
  v2 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * STACK[0x37C8]);
  return (*(v2 + 8 * (v0 + v1 - 322)))();
}

uint64_t sub_1004AE174()
{
  v1 = (v0 - 717491172) & 0x2AC3FB7E;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 4928)))(1032);
  STACK[0xD4B8] = v3;
  STACK[0x57B0] = v1;
  return (*(v2 + 8 * (((((v3 == 0) ^ (v0 + 68)) & 1) * (v1 - 22532)) ^ v0)))();
}

uint64_t sub_1004AE1F0()
{
  STACK[0xB270] = STACK[0xA8D0];
  STACK[0xBFE8] = 0;
  LODWORD(STACK[0x600C]) = 2101965948;
  STACK[0x8388] = 0;
  STACK[0xCBC0] = &STACK[0x8388];
  LODWORD(STACK[0x94E4]) = -1912211772;
  return (*(STACK[0x57D8] + 8 * (v0 ^ 0x48AB)))();
}

uint64_t sub_1004AE27C()
{
  v2 = STACK[0x85B0];
  *(v2 + 304) = STACK[0x6E38];
  *(v2 + 312) = 16;
  *(v2 + 320) = STACK[0xAAD8];
  *(v2 + 328) = 20;
  *(v2 + 336) = STACK[0xC4F0];
  *(v2 + 344) = STACK[0xBEAC];
  *(v2 + 352) = STACK[0x9AC8];
  *(v2 + 360) = STACK[0xB770];
  *(v2 + 368) = *(STACK[0xBF88] + 8);
  *(v2 + 376) = *STACK[0x93E0];
  *(v2 + 384) = 0;
  *(v2 + 392) = 0;
  *(v2 + 400) = STACK[0xB8C0];
  *(v2 + 408) = &STACK[0x1D270];
  *(v2 + 416) = 2;
  *(v2 + 424) = &STACK[0xAC70];
  *(v2 + 432) = &STACK[0xBE24];
  STACK[0x1D4C8] = v2 + 304;
  LODWORD(STACK[0x1D4C0]) = v0 - 1089234077 * ((v1 + 2054868929 - 2 * ((v1 - 240) & 0x7A7AD0B1)) ^ 0x9A270CC9) + 1554473300;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x4A24)))(v1 - 240);
  return (*(v3 + 8 * v0))(v4);
}

uint64_t sub_1004AE3EC()
{
  LODWORD(STACK[0x1D4C8]) = (v0 - 1723113426) ^ (1917435887 * ((v1 + 2130004233 - 2 * ((v1 - 240) & 0x7EF549F9)) ^ 0x984E12FF));
  STACK[0x1D4C0] = STACK[0x4168];
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x74ED)))(v1 - 240);
  return (*(v2 + 8 * (v0 - 26080 + v0 + 27376)))(v3);
}

uint64_t sub_1004AE4B8()
{
  v1 = STACK[0x51B8];
  v2 = LOBYTE(STACK[0xDB73]);
  STACK[0xCBC8] = v0;
  return (*(STACK[0x57D8] + 8 * ((v2 * (v1 - 113)) ^ (v1 - 20373))))();
}

uint64_t sub_1004AE5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = STACK[0x21BC] & 0x63C07FF5;
  v7 = STACK[0x6650];
  v8 = STACK[0x57D8];
  STACK[0xBF38] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x21B8]));
  return (*(v8 + 8 * (LODWORD(STACK[0x21B4]) + v6)))(a1, a2, a3, a4, a5, a6, v7);
}

uint64_t sub_1004AE738()
{
  STACK[0x7908] = (((LODWORD(STACK[0xBF9C]) ^ 0x8181154389A059CCLL) + ((v0 + 17989) ^ 0x7E7EEABC765FF77DLL)) ^ ((LODWORD(STACK[0xBF9C]) ^ 0x88EB8EA0077F79E2) + 0x7714715FF880861ELL) ^ ((LODWORD(STACK[0xBF9C]) ^ 0x96A9BE35CC3A0BALL) - 0x96A9BE35CC3A0BALL)) + 3525083284u;
  v1 = STACK[0x7ED8];
  STACK[0xA940] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v1 + 3072;
  LODWORD(STACK[0xA3E4]) = -769880940;
  v2 = STACK[0x57D8];
  STACK[0xCF38] = *(STACK[0x57D8] + 8 * v0);
  return (*(v2 + 8 * (v0 + 2562)))();
}

uint64_t sub_1004AE968(uint64_t a1, uint64_t a2, int a3)
{
  STACK[0xCF68] = v4;
  STACK[0xCF78] = v3;
  STACK[0xCF70] = v5;
  return (*(STACK[0x57D8] + 8 * a3))();
}

uint64_t sub_1004AEA08()
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0x9F24];
  LODWORD(STACK[0x9094]) = -32197403;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1004AED10()
{
  v2 = STACK[0xA008];
  v3 = 1534937323 * ((((2 * ((v1 - 240) ^ 0x2D178CD4A935DDF3)) | 0xAA0E3FCE922FAA26) - ((v1 - 240) ^ 0x2D178CD4A935DDF3) + 0x2AF8E018B6E82AEDLL) ^ 0x35681BF126CCF3A7);
  STACK[0x1D4D8] = v3;
  STACK[0x1D4C0] = v2 ^ v3;
  LODWORD(STACK[0x1D4E0]) = 1534937323 * ((((2 * ((v1 - 240) ^ 0xA935DDF3)) | 0x922FAA26) - ((v1 - 240) ^ 0xA935DDF3) - 1226298643) ^ 0x26CCF3A7) + v0 - 1747258946;
  LODWORD(STACK[0x1D4D4]) = (1534937323 * ((((2 * ((v1 - 240) ^ 0xA935DDF3)) | 0x922FAA26) - ((v1 - 240) ^ 0xA935DDF3) - 1226298643) ^ 0x26CCF3A7)) ^ (v0 - 22613) ^ 0x97DB4AE5;
  LODWORD(STACK[0x1D4CC]) = 1534937323 * ((((2 * ((v1 - 240) ^ 0xA935DDF3)) | 0x922FAA26) - ((v1 - 240) ^ 0xA935DDF3) - 1226298643) ^ 0x26CCF3A7) + v0 + 1451493860;
  LODWORD(STACK[0x1D4D0]) = 1534937323 * ((((2 * ((v1 - 240) ^ 0xA935DDF3)) | 0x922FAA26) - ((v1 - 240) ^ 0xA935DDF3) - 1226298643) ^ 0x26CCF3A7);
  LODWORD(STACK[0x1D4C8]) = v0 - 22613 - 1534937323 * ((((2 * ((v1 - 240) ^ 0xA935DDF3)) | 0x922FAA26) - ((v1 - 240) ^ 0xA935DDF3) - 1226298643) ^ 0x26CCF3A7) - 1747232105;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v0 + 9182)))(v1 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4E4])))(v5);
}

uint64_t sub_1004AEFDC()
{
  v1 = (STACK[0x51B8] - 21734) | 0x801;
  v2 = STACK[0x51B8] - 17254;
  v3 = LODWORD(STACK[0xB1BC]) == (STACK[0x51B8] ^ 0x5856);
  STACK[0xB480] = STACK[0x5900] + 16;
  STACK[0x67B0] = v0;
  return (*(STACK[0x57D8] + 8 * ((v3 * (v1 ^ 0xAD4)) ^ v2)))();
}

uint64_t sub_1004AF050()
{
  v1 = v0 ^ 0x5FCD;
  v2 = STACK[0x6E34];
  LODWORD(STACK[0xC31C]) = STACK[0x6E34];
  STACK[0xAF18] = STACK[0xB6E0];
  v3 = *STACK[0x45F8];
  v4 = *STACK[0x45F0];
  v5 = v4 ^ v3;
  v6 = -77 * (((v4 ^ v3 ^ 0x93) + 115) ^ ((v4 ^ v3 ^ 0xA9) + 73) ^ ((v4 ^ v3 ^ 0x6A) - 116)) + 53;
  v7 = ((((v6 ^ 4) + 1) ^ ((v6 ^ 6) + 3)) ^ ((v6 ^ 2) - 1)) & 7;
  v8 = ((((v2 >> 4) ^ 0xDF617AD8) - 1048701703) ^ (((v2 >> 4) ^ 0xBAE00782) - 1526765149) ^ (((v2 >> 4) ^ (v1 + 1755360696)) + 1992285044)) - 601098781 + (((v7 ^ 0x1A40A1A7) + 1205468889) ^ ((v7 ^ 0x2FE77BAD) + 1920869587) ^ ((v7 ^ 0x35A7DA0A) + 1748927862));
  LODWORD(STACK[0xB404]) = (16 * (((v8 ^ 0x21A63D74) + 56244488) ^ v8 ^ ((v8 ^ 0x93EC50) + 40888356) ^ ((v8 ^ 0x2E9D557) + 1429797) ^ ((v8 ^ 0xEDFFFFF) + 203684749))) ^ 0xD03FB8C0;
  v9 = v4 - v3;
  v10 = 2 * (v4 - v3);
  v11 = -77 * ((((v9 - (v10 & 0x2C) + 22) ^ 0xA4) + 56) ^ (((v9 - (v10 & 0x2C) + 22) ^ 0xF8) + 108) ^ (((v9 - (v10 & 0x2C) + 22) ^ 0x1A) - 118)) - 71;
  v12 = ((2 * v11) & 0x4A ^ 0xA5) & v11;
  v13 = ((-77 * ((((v9 - ((2 * v9) & 0x2C) + 22) ^ 0xA4) + 56) ^ (((v9 - ((2 * v9) & 0x2C) + 22) ^ 0xF8) + 108) ^ (((v9 - ((2 * v9) & 0x2C) + 22) ^ 0x1A) - 118)) - 71) ^ (2 * (((2 * (v11 ^ 0xF3)) & 0x56 ^ ((2 * (v11 ^ 0xF3)) ^ 0xAC) & ((-77 * ((((v9 - ((2 * v9) & 0x2C) + 22) ^ 0xA4) + 56) ^ (((v9 - ((2 * v9) & 0x2C) + 22) ^ 0xF8) + 108) ^ (((v9 - ((2 * v9) & 0x2C) + 22) ^ 0x1A) - 118)) - 71) ^ 0xF3) ^ 6) & (4 * v12) ^ v12))) & 0xF;
  if (v13 == 4)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13 ^ 5;
  }

  LODWORD(STACK[0x5D04]) = v14;
  STACK[0x6A98] = STACK[0xC388];
  v15 = -77 * ((((v9 - (v10 & 0x3A) - 99) ^ 0x59) + 24) ^ (((v9 - (v10 & 0x3A) - 99) ^ 0x22) + 109) ^ (((v9 - (v10 & 0x3A) - 99) ^ 0xB6) - 7)) + 71;
  v16 = (v15 ^ (2 * (((2 * v15) | 1) & v15))) & 7;
  v17 = (((v16 ^ 0x2D500665) - 39682393) ^ ((v16 ^ 0x97A94823) + 1197158625) ^ ((v16 ^ 0xBAF94E43) + 1779119745)) + 1343604025;
  LODWORD(STACK[0x9BCC]) = (16 * (((v17 ^ 0xBB2A96C3) + 98391235) ^ v17 ^ ((v17 ^ 0x6BD9FC8) + 139091402) ^ ((v17 ^ 0x3708B02) + 226969860) ^ ((v17 ^ 0xFEFBFF7) + 18382327))) ^ 0x1083DFE0;
  v18 = v3 + v4;
  v19 = -77 * ((((v18 - ((2 * v18) & 0x72) + 57) ^ 0x63) - 89) ^ (((v18 - ((2 * v18) & 0x72) + 57) ^ 0xAE) + 108) ^ (((v18 - ((2 * v18) & 0x72) + 57) ^ 0xA4) + 98)) - 22;
  v20 = (2 * v19) & 0x5E | v19 & ~(2 * v19);
  v21 = (v19 ^ (2 * (((2 * (v19 ^ 0x74)) ^ 0xD4) & (v19 ^ 0x74) & (4 * v20) ^ v20))) & 0xF;
  if (v21 == 14)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21 ^ 0xF;
  }

  LODWORD(STACK[0x66EC]) = v22;
  v23 = STACK[0x5C70];
  v24 = *(STACK[0x5C70] - 0x30BDFED8F32E6765);
  LODWORD(STACK[0x6A1C]) = v24;
  STACK[0xAA68] = v23 - 0x30BDFED8F32E682DLL;
  v25 = 784437427 * (((v5 ^ 0x533D70CC) - 701198110) ^ ((v5 ^ 0xC02BF7A1) + 1159862157) ^ ((v5 ^ 0x7E66CE3D) - 76599791)) + 1625010459;
  v26 = (((v25 ^ 0xFFFFFFF8) - 123763149) ^ v25 ^ ((v25 ^ 0xFFFFFFFD) - 1353507224)) & 0xB;
  v27 = ((((v24 >> 4) ^ 0xDA76925B) - 219580190) ^ (((v24 >> 4) ^ 0xCC826B64) - 467828257) ^ (((v24 >> 4) ^ 0x1BD53136) + 860543885)) + 1276919225 + (((v26 ^ 0xA08D44C3) - 1472495779) ^ (v26 | 0x92B93C60) ^ ((v26 ^ 0x6DBEED32) + 1695078062));
  v28 = (v27 ^ 0x254F63F5) & (2 * (v27 & 0x856F63F5)) ^ v27 & 0x856F63F5;
  v29 = ((2 * (v27 ^ 0x275F6075)) ^ 0x44600700) & (v27 ^ 0x275F6075) ^ (2 * (v27 ^ 0x275F6075)) & 0xA2300380;
  v30 = v29 ^ 0xA2100080;
  v31 = v28 ^ 0xA2300380 ^ (v29 ^ 0x80200300) & (4 * v28);
  v32 = (4 * v30) & 0xA2300380 ^ 0x22300180 ^ ((4 * v30) ^ 0x88C00E00) & v30;
  v33 = (16 * v31) & 0xA2300380 ^ v31 ^ ((16 * v31) ^ 0x23003800) & v32;
  v34 = (16 * v32) & 0xA2300380 ^ 0x80300380 ^ ((16 * v32) ^ 0x23003800) & v32;
  v35 = (v33 << 8) & 0xA2300300 ^ v33 ^ ((v33 << 8) ^ 0x30038000) & v34;
  LODWORD(STACK[0x607C]) = (16 * v27) ^ (32 * ((v35 << 16) & 0x2300000 ^ v35 ^ ((v35 << 16) ^ 0x3800000) & ((v34 << 8) & 0xA2300000 ^ 0x2300000 ^ ((v34 << 8) ^ 0x30000) & v34))) ^ 0x10F64F50;
  v36 = 784437427 * ((((v9 - (v10 & 0x88E8411E) + 1148461199) ^ 0xB0E529C9) - 1986388317) ^ (v9 - (v10 & 0x88E8411E) + 1086993851) ^ (((v9 - (v10 & 0x88E8411E) + 1148461199) ^ 0xDCC86256) - 440969922)) - 1514298986;
  v37 = (v36 ^ 0xF2031592) & (2 * (v36 & 0x24455DB)) ^ v36 & 0x24455DB;
  v38 = (v36 ^ (2 * ((((v36 ^ 0xF20B95A4) & 0x609F80FE | (v36 ^ 0xDF46A5B) & (2 * (v36 ^ 0xF20B95A4))) ^ 0xFFFFFFF9) & (4 * v37) ^ v37))) & 0x17;
  if (v38 == 18)
  {
    v39 = 0;
  }

  else
  {
    v39 = v38 ^ 0x13;
  }

  LODWORD(STACK[0xC2F0]) = v39;
  STACK[0xAB70] = v23 - 0x30BDFED8F32E6761;
  v40 = (((3 * ((((v9 + 84) ^ 0x25) + 47) ^ (((v9 + 84) ^ 0x37) + 61) ^ (((v9 + 84) ^ 0x16) + 30)) + 3) ^ 4) + 1) & 7;
  v41 = (((v40 ^ 0xA608CAF3) - 1307638549) ^ ((v40 ^ 0x7B2B5C3C) + 1865191974) ^ ((v40 ^ 0xDD2396CF) - 920364841)) + 1711719300;
  LODWORD(STACK[0x703C]) = (16 * (((v41 ^ 0xDACB88CE) + 255518381) ^ v41 ^ ((v41 ^ 0x9D04B40) + 203498787) ^ ((v41 ^ 0x6E8ADAC) + 52020175) ^ ((v41 ^ 0xFFDFFBF) + 168595934))) ^ 0xA0E919D0;
  v42 = (19 * ((((v18 - 556199184) ^ 0xFD87196B) + 1161336280) ^ (((v18 - 556199184) ^ 0x5EF250E7) - 431104932) ^ (((v18 - 556199184) ^ 0xC) + 17)) + 25) & 0x17;
  if (v42 == 1)
  {
    v42 = 0;
  }

  LODWORD(STACK[0x614C]) = v42;
  return (*(STACK[0x57D8] + 8 * (v1 ^ 0x1297)))(&STACK[0xC733]);
}

uint64_t sub_1004AFBCC()
{
  v1 = STACK[0x9A58];
  STACK[0x98A0] = STACK[0x9A58];
  v2 = STACK[0x7160];
  LOWORD(STACK[0x9616]) = STACK[0x7160];
  STACK[0xB338] = STACK[0xC670];
  LODWORD(STACK[0x673C]) = v2;
  return (*(STACK[0x57D8] + 8 * ((30282 * (*(v1 - 0x1883660EE814440ELL) - v2 == ((v0 - 1987948687) & 0x767DFCDF) + 2101943338)) ^ v0)))(4427);
}

uint64_t sub_1004AFC9C@<X0>(int a1@<W8>)
{
  v3 = (v2 + 1770361402) ^ 0x466B79D3;
  v4 = (2 * ((v2 + 1770361402) & 0x967A6DC6 ^ 0xD0117A47 ^ v1)) & 0x80101004 ^ (v2 + 1770361402) & 0x967A6DC6 ^ 0xD0117A47 ^ v1 ^ ((2 * ((v2 + 1770361402) & 0x967A6DC6 ^ 0xD0117A47 ^ v1)) ^ 0xA022282A) & v3;
  v5 = (2 * v3) & 0xD0111414 ^ 0x50111415 ^ ((2 * v3) ^ 0xA022282A) & v3;
  v6 = (4 * v4) & 0xD0111414 ^ v4 ^ ((4 * v4) ^ 0x40445054) & v5;
  v7 = (4 * v5) & 0xD0111414 ^ 0x90110401 ^ ((4 * v5) ^ 0x40445054) & v5;
  v8 = (16 * v6) & 0xD0111410 ^ v6 ^ ((16 * v6) ^ 0x1104010) & v7;
  v9 = (16 * v7) & 0xD0111410 ^ 0xD0001405 ^ ((16 * v7) ^ 0x1114150) & v7;
  v10 = v8 ^ 0xC0100004 ^ (v8 << 8) & 0xD0111400 ^ ((v8 << 8) ^ 0x1041100) & v9;
  v12 = ((v2 + 1770361402) ^ (2 * ((v10 << 16) & 0x50110000 ^ v10 ^ ((v10 << 16) ^ 0x14150000) & ((v9 << 8) & 0xD0110000 ^ 0x40010000 ^ ((v9 << 8) ^ 0x11140000) & v9)))) == 0x167A45EC || (((v2 + 58) ^ (2 * v10)) & 0xF) != ((a1 + 10697) ^ 0x3F8) - 18737;
  return (*(STACK[0x57D8] + 8 * (v12 | a1)))();
}

uint64_t sub_1004AFE6C@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v8 = *(v6 + 4 * ((63 * v2 + 56) & 0x7C));
  v9 = 493 * (((v2 + 0x3FFFFFFFCLL) >> 2) ^ (a2 - 19844)) + 284954;
  v10 = *(v6 + 4 * ((63 * v2 + 123) & 0x7F));
  v11 = *(v7 + (49 * BYTE2(v8) - (((178409 * BYTE2(v8)) >> 16) >> 6) * v5));
  v12 = *(v7 + (49 * BYTE1(v8) - (((178409 * BYTE1(v8)) >> 16) >> 6) * v5));
  v13 = *(v7 + (49 * HIBYTE(v8) - (((178409 * HIBYTE(v8)) >> 16) >> 6) * v5));
  v14 = *(a1 + 4 * (v9 - v9 / 0x284 * v3));
  v15 = *(v7 + (49 * v8 - (((178409 * v8) >> 16) >> 6) * v5));
  LODWORD(STACK[0x57B0]) = a2 + 4360;
  v16 = (v11 << 24) ^ 0xB0D943F ^ v10 ^ (v12 << 16) ^ v13 ^ v14 ^ (v15 << 8);
  *(v6 + 4 * ((63 * v2 + 119) & 0x7F)) = v16;
  v17 = *(v6 + 4 * ((63 * v2 + 58) & 0x7E)) ^ v16;
  v18 = *(v6 + 4 * ((63 * v2 + 121) & v4));
  *(v6 + 4 * ((63 * v2 + 54) & 0x7E)) = v17;
  v19 = v18 ^ v17;
  *(v6 + 4 * ((63 * v2 + 117) & v4)) = v19;
  *(v6 + 4 * ((63 * v2 + 52) & 0x7C)) = v8 ^ v19;
  return (*(STACK[0x57D8] + 8 * ((4872 * (v2 == 40)) ^ a2)))();
}

uint64_t sub_1004B015C()
{
  STACK[0xCCC8] = STACK[0xA170];
  STACK[0x9830] = &STACK[0x6070];
  LODWORD(STACK[0x8724]) = -1127511164;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1004B02D4()
{
  v0 = STACK[0x2EBC];
  STACK[0xC500] = STACK[0xBDF8];
  LODWORD(STACK[0xC8E4]) = 10136078;
  STACK[0xAAD0] = STACK[0x81E0];
  LOWORD(STACK[0x5E56]) = 16;
  LODWORD(STACK[0xAD70]) = -2122002190;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1004B03A8()
{
  *STACK[0x57C0] += (3415 * (STACK[0x51B8] ^ 0x5850)) ^ 0x5008;
  v0 = STACK[0xE0F8];
  v1 = (v0 ^ 0xAE54C81) & (2 * (v0 & 0x8AE90D21)) ^ v0 & 0x8AE90D21;
  v2 = ((2 * (v0 ^ 0xA7744C3)) ^ 0x13C93C4) & (v0 ^ 0xA7744C3) ^ (2 * (v0 ^ 0xA7744C3)) & 0x809E49E2;
  v3 = v2 ^ 0x80824822;
  v4 = (v2 ^ 0xC0180) & (4 * v1) ^ v1;
  v5 = ((4 * v3) ^ 0x2792788) & v3 ^ (4 * v3) & 0x809E49E0;
  v6 = (v5 ^ 0x180180) & (16 * v4) ^ v4;
  v7 = ((16 * (v5 ^ 0x80864862)) ^ 0x9E49E20) & (v5 ^ 0x80864862) ^ (16 * (v5 ^ 0x80864862)) & 0x809E49E0;
  LODWORD(v0) = (LODWORD(STACK[0xE0F8]) ^ (2 * ((((v7 ^ 0x801A41C2) << 8) & 0x809E0000 ^ (((v7 ^ 0x801A41C2) << 8) ^ 0x9E490000) & (v7 ^ 0x801A41C2) ^ 0x80000) & (((v7 ^ 0x840800) & (v6 << 8) ^ v6) << 16) ^ (v7 ^ 0x840800) & (v6 << 8) ^ v6))) != 2330529057;
  return (*(STACK[0x57D8] + 8 * (((16 * v0) | (32 * v0)) ^ LODWORD(STACK[0x3950]))))();
}

uint64_t sub_1004B0610()
{
  LODWORD(STACK[0x57C0]) = v1;
  LODWORD(STACK[0x53C8]) = v0;
  STACK[0x4DA8] = v3;
  STACK[0xD290] = 0;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v2 + 23989)))(1028);
  STACK[0xD2A8] = v5;
  v6 = (*(v4 + 8 * (v2 ^ 0x65BDu)))(1028);
  STACK[0xD290] = v6;
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  return (*(v4 + 8 * ((v8 * ((v2 + 15805) ^ 0x6501 ^ ((v2 + 2567) | 0x1000))) ^ v2)))(v5);
}

uint64_t sub_1004B0720()
{
  v6 = v4 == -2042800755;
  v7 = v4 + 2042800755 - ((v4 + 2042800755) >> 15) - ((v4 + 2042800755 - ((v4 + 2042800755) >> 15)) >> 3);
  v8 = v7 - 1970566789 + ((v7 - 1970566789) >> 15) - ((v7 - 1970566789 + ((v7 - 1970566789) >> 15)) >> 6);
  v9 = v8 - 1483174420 + ((v8 - 1483174420) >> 10) + ((v8 - 1483174420 + ((v8 - 1483174420) >> 10)) >> 4);
  v10 = ((v9 - (v9 ^ 0xB58F2697)) ^ 0xFFFFFFFE) + v9 - ((((v9 - (v9 ^ 0xB58F2697)) ^ 0xFFFFFFFE) + v9) >> 8);
  v11 = v10 + (v10 >> 3);
  v12 = v11 + 1403198580 + ((v11 + 1403198580) >> 14) + ((v11 + 1403198580 + ((v11 + 1403198580) >> 14)) >> 5);
  v13 = (v12 ^ 0x840C6CC4) - ((v12 ^ 0x840C6CC4) >> 14) + (((v12 ^ 0x840C6CC4) - ((v12 ^ 0x840C6CC4) >> 14)) >> 5);
  v14 = v13 + 68127163 + ((v13 + 68127163) >> 14) + ((v13 + 68127163 + ((v13 + 68127163) >> 14)) >> 6);
  v15 = v14 + 1764850293 - ((v14 + 1764850293) >> 9) - ((v14 + 1764850293 - ((v14 + 1764850293) >> 9)) >> 1);
  v16 = v15 - 2093344818 + ((v15 - 2093344818) >> 11) + ((v15 - 2093344818 + ((v15 - 2093344818) >> 11)) >> 6);
  v17 = (LODWORD(STACK[0x54E0]) ^ LODWORD(STACK[0x53E8]) ^ 0xE00E47C7) - 2134008214 - 2 * ((LODWORD(STACK[0x54E0]) ^ LODWORD(STACK[0x53E8]) ^ 0xE00E47C7) & 0xCD9E7A ^ (LODWORD(STACK[0x54E0]) ^ LODWORD(STACK[0x53E8])) & 0x10);
  v18 = LODWORD(STACK[0x5720]) ^ 0xD4993C22 ^ (LODWORD(STACK[0x5398]) - 1907898003 - (STACK[0x5390] & 0x1C8F92DA));
  v19 = v9 ^ v0 ^ v5 & (2 * v9);
  v20 = STACK[0x5540];
  v21 = ((LODWORD(STACK[0x5620]) ^ LODWORD(STACK[0x57A0]) ^ 0xF164E3D6) - 1669166239 - ((2 * (LODWORD(STACK[0x5620]) ^ LODWORD(STACK[0x57A0]) ^ 0xF164E3D6)) & 0x390516C2)) ^ LODWORD(STACK[0x5540]);
  v22 = v18 ^ LODWORD(STACK[0x5780]) ^ LODWORD(STACK[0x5570]) ^ v5 & (2 * LODWORD(STACK[0x5570])) ^ v5 & (2 * v18) ^ v2 ^ v7 ^ v11 ^ v14 ^ v5 & (2 * (v11 ^ v7 ^ v14));
  v23 = STACK[0x4F38];
  v24 = ((v5 & (2 * LODWORD(STACK[0x5560])) ^ 0x530B500) + 1130444143 - ((2 * (v5 & (2 * LODWORD(STACK[0x5560])) ^ 0x530B500)) & 0x86426A50)) ^ LODWORD(STACK[0x53E8]) ^ v17 ^ LODWORD(STACK[0x5318]) ^ v5 & (2 * (v17 ^ LODWORD(STACK[0x5318]))) ^ ((v19 ^ -v19 ^ ((v5 & (2 * v13) ^ v13) - (v5 & (2 * v13) ^ v13 ^ v19))) + (v5 & (2 * v13) ^ v13)) ^ v16 ^ v5 & (2 * v16);
  v25 = (v24 + 1849196492 - ((2 * v24) & 0xDC710E30) + 1868) ^ LODWORD(STACK[0x5288]);
  v26 = STACK[0x4F38] & 0x33114299 ^ 0x66228532;
  v27 = STACK[0x5320];
  v28 = (STACK[0x5320] & v26) << LODWORD(STACK[0x5310]);
  v29 = STACK[0x52D8];
  LODWORD(STACK[0x4F88]) = (v25 - 2134008214 - ((2 * v25) & 0x19B3CD4)) ^ LODWORD(STACK[0x5318]);
  v30 = v3 ^ v21 ^ v8 ^ v12 ^ v15 ^ v5 & (2 * (v21 ^ LODWORD(STACK[0x54A0]) ^ ((v12 ^ v8 ^ v15) - ((2 * (v12 ^ v8 ^ v15)) & 0x7CC132CC) + 2120259942)));
  v31 = (v30 - 1669166239 - ((2 * v30) & 0x390516C2)) ^ v20;
  v32 = (v31 - ((2 * v31) & 0xA3FE9838) - 771797988) ^ LODWORD(STACK[0x5600]);
  v33 = v32 - ((2 * v32) & 0xFCC132CC);
  v34 = STACK[0x5308];
  v35 = STACK[0x5308] & 6 ^ 2;
  v36 = STACK[0x5308] & 1;
  if (v6)
  {
    v38 = 0;
  }

  else
  {
    v38 = v28;
  }

  v37 = (v23 & 0x22000000 ^ 0x26200400 ^ v26 & (v29 ^ 0x5502471Bu)) >> (v34 & 1) >> (v34 & 6 ^ 2);
  v39 = ((v38 ^ v37 | v28) - ((2 * (v38 ^ v37 | v28)) & 0x4B876CDE) - 1513900433) ^ LODWORD(STACK[0x5340]);
  v40 = LODWORD(STACK[0x52F0]) >> 1;
  LODWORD(STACK[0x5740]) = v39 - ((2 * v39) & 0xFF54286A);
  v41 = STACK[0x50A8];
  v42 = STACK[0x5360];
  v43 = ((v27 & (v23 & 0x316B895A ^ 0x62D712B5)) << LODWORD(STACK[0x50A8])) ^ ((v23 & STACK[0x6EC] ^ 0x510231 ^ (v23 & 0x316B895A ^ 0x62D712B5) & (v29 ^ 0x73931168u)) >> v42);
  v44 = (v43 + 2141852725 + (~(2 * v43) | 0xABD795) + 1) ^ LODWORD(STACK[0x50A0]);
  LODWORD(STACK[0x5730]) = v44 - ((2 * v44) & 0x4B876CDE);
  v45 = v23 & 0x38EDF3C8 ^ 0x71DBE790;
  LODWORD(STACK[0x5710]) = v23 & 0x386802C8 ^ LODWORD(STACK[0x6F0]) ^ v45 & (v29 ^ 0x89071C0);
  v46 = v40 & 0x76B4F2C3 ^ 0xEFD975C4;
  LODWORD(STACK[0x4E78]) = v46;
  LODWORD(STACK[0x5700]) = v40 & 0x6945281 ^ 0x7D95080 ^ (v29 ^ 0x74352182) & v46;
  v47 = v40 & 0x45C2958E ^ 0x8B05BF17;
  LODWORD(STACK[0x56E0]) = v40 & 0x4142908C ^ 0x8304B004 ^ (v29 ^ 0x80848B97) & v47;
  v48 = v23 & 0x2561F3A9 ^ 0x4AC3E752;
  LODWORD(STACK[0x54E0]) = v48;
  LODWORD(STACK[0x50E0]) = v23 & 0x2061A088 ^ 0x2C3A052 ^ v48 & (v29 ^ 0x4101D3C1);
  v49 = v40 & 0x4A886283 ^ 0x9F98C504;
  LODWORD(STACK[0x57C0]) = v49;
  v50 = v23 & 0x5BACD70A ^ 0xB759AE15;
  LODWORD(STACK[0x5040]) = v23 & 0x1B08D402 ^ 0x9358AC00 ^ v50 & (v29 ^ 0xE8B08719);
  v51 = v23 & 0x3DF1A4BD ^ 0x7BE3497B;
  LODWORD(STACK[0x5000]) = v51;
  LODWORD(STACK[0x57B0]) = v23 & 0x3C008481 ^ 0x7A004101 ^ v51 & (v29 ^ 0xDE2AC9A);
  v52 = v23 & 0x14D4F0E3 ^ 0x29A9E1C7;
  LODWORD(STACK[0x4E50]) = v52;
  LODWORD(STACK[0x4FE8]) = v23 & 0x4443063 ^ 0x9012147 ^ v52 & (v29 ^ 0x3CAD4064);
  v53 = v23 & 0x12260866 ^ 0x244C10CD;
  LODWORD(STACK[0x5780]) = v53;
  LODWORD(STACK[0x4FE0]) = v23 & 0x2000860 ^ 0x10C1 ^ v53 & (v29 ^ 0x306A00EA);
  v54 = v40 & 0x74CD9BC3 ^ 0xE912A7C4;
  LODWORD(STACK[0x4E44]) = v54;
  LODWORD(STACK[0x4E38]) = v40 & 0x99300 ^ LODWORD(STACK[0x6F4]) ^ (v29 ^ 0xF0C3A803) & v54;
  v55 = STACK[0x5300] & 4;
  v56 = v34 & 3 ^ 2;
  v57 = STACK[0x5770];
  v58 = (STACK[0x5770] & 1) == 0;
  v59 = ~LODWORD(STACK[0x5770]) & 6;
  LODWORD(STACK[0x5078]) = ((v27 & (v40 & 0x3E77DD65 ^ 0x76DE2EAA)) << v58 << (~LODWORD(STACK[0x5770]) & 6)) + ((v40 & 0x1E564064 ^ 0x56560228 ^ (v29 ^ 0x2CBC3967) & (v40 & 0x3E77DD65 ^ 0x76DE2EAAu)) >> v56 >> v55);
  v60 = v23 & 0x1AA01E0F ^ 0x35403C1F;
  LODWORD(STACK[0x4E70]) = v60;
  LODWORD(STACK[0x4E34]) = v23 & 0xA800E03 ^ 0x21402C13 ^ v60 & (v29 ^ 0x18201408);
  v61 = v40 & 0x4F5F7CA8 ^ 0x94A7ED78;
  LODWORD(STACK[0x4DA0]) = v61;
  LODWORD(STACK[0x4D98]) = v40 & 0x1536888 ^ 0x10A36818 ^ (v29 ^ 0x42191180) & v61;
  v62 = v40 & 0x6C974C4B ^ 0xD1BF9CDC;
  LODWORD(STACK[0x4D58]) = v62;
  LODWORD(STACK[0x4E28]) = v40 & 0xC934408 ^ 0x11BB948C ^ (v29 ^ 0x6C118C97) & v62;
  LODWORD(STACK[0x4B90]) = (((STACK[0x5388] & (LODWORD(STACK[0x50D8]) ^ 0xFF2F5C42)) >> 1) + 1127532808 - (STACK[0x5388] & (LODWORD(STACK[0x50D8]) ^ 0xFF2F5C42) & 0x86699210)) ^ LODWORD(STACK[0x5750]);
  LODWORD(STACK[0x5318]) = (2 * v22) & 0x1C8F92DA;
  LODWORD(STACK[0x5060]) = v22 - 1907898003;
  LODWORD(STACK[0x5760]) = v33 + 2120259942;
  v63 = v40 & 0x5675BA63 ^ 0xAEDAE4A4;
  v64 = STACK[0x5348];
  LODWORD(STACK[0x5750]) = STACK[0x5348] & v63;
  v65 = LODWORD(STACK[0x55C0]);
  LODWORD(STACK[0x56F0]) = (v65 & v63) >> v42;
  v66 = v40 & 0x2554601 ^ LODWORD(STACK[0x6E8]);
  LODWORD(STACK[0x4B78]) = LODWORD(STACK[0x5740]) + 2141852725;
  LODWORD(STACK[0x5600]) = (v64 & v66) << (~v57 & 3);
  LODWORD(STACK[0x53E0]) = (v65 & v66) >> LODWORD(STACK[0x53B0]);
  LODWORD(STACK[0x4EE8]) = v40 & 0x40D09012 ^ 0x8131B027;
  LODWORD(STACK[0x5740]) = v40 & 0xC01012;
  v67 = v23 & 0x4E471611 ^ 0x9C8E2C23;
  LODWORD(STACK[0x5070]) = (LODWORD(STACK[0x5730]) - 1513900433) ^ LODWORD(STACK[0x5340]);
  LODWORD(STACK[0x5730]) = (v67 & v64) << v58;
  LODWORD(STACK[0x5058]) = (v65 & v67) >> v36 >> v35;
  LODWORD(STACK[0x4E18]) = LODWORD(STACK[0x5710]) >> v35;
  LODWORD(STACK[0x4DA8]) = (v45 & v64) << (~v57 & 6);
  v68 = v40 & 0x36C4D835 ^ 0x6F09204B;
  LODWORD(STACK[0x5050]) = v68;
  LODWORD(STACK[0x5710]) = (v65 & v68) >> v42;
  LODWORD(STACK[0x4E20]) = LODWORD(STACK[0x5700]) >> (v34 & 5);
  v69 = v23 & 0x278BC44B ^ 0x4F178897;
  v70 = ~v57 & 2;
  LODWORD(STACK[0x5700]) = (v27 & v69) << v70;
  LODWORD(STACK[0x5048]) = v65 & v69;
  LODWORD(STACK[0x4E10]) = LODWORD(STACK[0x56E0]) >> v55;
  v71 = v23 & 0x378BE46A ^ 0x6F17C8D5;
  LODWORD(STACK[0x4E08]) = (v64 & v47) << (~v57 & 6) << v58;
  LODWORD(STACK[0x5038]) = (v27 & STACK[0x54E0]) << (~v57 & 6);
  LODWORD(STACK[0x5030]) = LODWORD(STACK[0x50E0]) >> v36 >> v35;
  v72 = v40 & 0x73BC6A3E ^ 0xE5C0D456;
  LODWORD(STACK[0x5028]) = v72;
  LODWORD(STACK[0x5020]) = (v65 & v72) >> v42;
  v73 = v23 & 0x16E9D187 ^ 0x2DD3A30E;
  LODWORD(STACK[0x4E00]) = v73;
  LODWORD(STACK[0x4DF8]) = (v27 & v73) << (~v57 & 5) << v70;
  LODWORD(STACK[0x5008]) = (v40 & 0x2000281 ^ 0x96108104 ^ (v29 ^ 0xC598E086) & v49) >> v36;
  LODWORD(STACK[0x5010]) = v40 & 0x76B852FE ^ 0xEFC8B597;
  LODWORD(STACK[0x5540]) = v70;
  LODWORD(STACK[0x4DF0]) = (v50 & v64) << v70;
  v74 = v23 & 0x7B9DAB31 ^ 0xF73B5662;
  LODWORD(STACK[0x5018]) = v74;
  LODWORD(STACK[0x56E0]) = (v74 & v64) << v41;
  LODWORD(STACK[0x4DD0]) = LODWORD(STACK[0x5040]) >> v42;
  v75 = v40 & 0x5E21751F ^ 0xB663FE35;
  LODWORD(STACK[0x4BA8]) = v27 & v75;
  LODWORD(STACK[0x4DC8]) = (v65 & v75) >> v35 >> v36;
  LODWORD(STACK[0x5000]) = (v27 & STACK[0x5000]) << v41;
  v76 = v40 & 0x15CBFB61 ^ 0x2B1E66A3;
  LODWORD(STACK[0x4FF8]) = v64 & v76;
  LODWORD(STACK[0x5380]) = v35;
  LODWORD(STACK[0x4FF0]) = (v65 & v76) >> v35 >> v36;
  v77 = v40 & 0x6CFA2EAA ^ 0xD14C597F;
  LODWORD(STACK[0x4DB8]) = (v64 & v77) << (~v57 & 5);
  LODWORD(STACK[0x5378]) = v36;
  LODWORD(STACK[0x4DB0]) = (v65 & v77) >> v36;
  LODWORD(STACK[0x4DC0]) = LODWORD(STACK[0x4FE8]) >> v42;
  v78 = v40 & 0x4E6DF2F4 ^ 0x96F27589;
  LODWORD(STACK[0x4FD8]) = v27 & v78;
  LODWORD(STACK[0x4FD0]) = (v65 & v78) >> v42;
  LODWORD(STACK[0x4FE0]) >>= v34 & 5;
  v79 = v23 & 0x76200AB3 ^ 0xEC401567;
  v80 = v40 & 0x7C0BF217 ^ 0xF01E742C;
  LODWORD(STACK[0x53B8]) = v59;
  LODWORD(STACK[0x5040]) = (v64 & v80) << v58 << (~v57 & 6);
  LODWORD(STACK[0x4FC8]) = v23 & 0x24000200;
  LODWORD(STACK[0x4B98]) = (v65 & v80) >> v55 >> v56;
  LODWORD(STACK[0x4FE8]) = v79;
  LODWORD(STACK[0x4FC0]) = (v27 & v79) << v41;
  v81 = v23 & 0x3E00FCCB ^ 0x7C01F997;
  LODWORD(STACK[0x4FB8]) = (v81 & v64) << (~v57 & 5);
  v82 = ~v34 & 2;
  LODWORD(STACK[0x4DE0]) = (v65 & v81) >> v82 >> (v34 & 5);
  v83 = v23 & 0x4CBACDF4 ^ 0x99759BE9;
  v84 = ~v57 & 4;
  LODWORD(STACK[0x4C68]) = (v27 & STACK[0x4E70]) << v84;
  v85 = v40 & 0x4E673BC ^ 0x96CF750;
  LODWORD(STACK[0x4DD8]) = v85;
  LODWORD(STACK[0x5398]) = v55;
  LODWORD(STACK[0x5390]) = v56;
  LODWORD(STACK[0x4B80]) = (v65 & v85) >> v55 >> v56;
  LODWORD(STACK[0x4B58]) = (v27 & STACK[0x4DA0]) << v58;
  LODWORD(STACK[0x50E0]) = v82;
  LODWORD(STACK[0x4B50]) = LODWORD(STACK[0x4D98]) >> v82;
  v86 = v23 & 0x73BD7629 ^ 0xE77AEC52;
  LODWORD(STACK[0x4B70]) = v86;
  LODWORD(STACK[0x4B60]) = (v86 & v64) << v41;
  LODWORD(STACK[0x4E70]) = v40;
  v87 = v40 & 0x58F84530 ^ 0xB9488E40;
  LODWORD(STACK[0x4B48]) = v87;
  LODWORD(STACK[0x4B40]) = (v64 & v87) << v41;
  v88 = v23 & 0x3AC7C0A7 ^ 0x758F814F;
  LODWORD(STACK[0x4B38]) = v88;
  LODWORD(STACK[0x5308]) = v84;
  LODWORD(STACK[0x4D98]) = (v27 & v88) << (~v57 & 3) << v84;
  LODWORD(STACK[0x4BA0]) = (v64 & STACK[0x4D58]) << v58;
  v89 = v23 & 0x61E46464 ^ 0xC3C8C8C8;
  LODWORD(STACK[0x4B30]) = v27 & v89;
  LODWORD(STACK[0x50E8]) = v34 & 5;
  LODWORD(STACK[0x4B28]) = (v65 & v89) >> (v34 & 5);
  v90 = v27 & STACK[0x4B90];
  LODWORD(STACK[0x4B20]) = v65 & LODWORD(STACK[0x4B90]);
  LODWORD(STACK[0x5288]) = ~v57 & 3;
  LODWORD(STACK[0x4B18]) = v90 << (~v57 & 3);
  LODWORD(STACK[0x5770]) = v71;
  LODWORD(STACK[0x4B00]) = v65 & v71;
  LODWORD(STACK[0x4B08]) = v23 & 0x69950A01;
  LODWORD(STACK[0x4DA0]) = v83;
  LODWORD(STACK[0x4D58]) = v65 & v83;
  LODWORD(STACK[0x4B10]) = v23 & 0x308480A4;
  LODWORD(STACK[0x54E0]) = v29 ^ 0x73EA7B1B;
  v91 = *(STACK[0x57D8] + 8 * v1);
  LODWORD(STACK[0x4B68]) = (v1 - 10094) | 0x1000;
  return v91(v65);
}

uint64_t sub_1004B1D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0x51B8] - 11501;
  *(STACK[0x6DC0] + 533) = 1;
  return (*(STACK[0x57D8] + 8 * v7))(a1, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1004B1E50()
{
  *(v0 - 0x30BDFED8F32E6541) = *(v2 - 0x30BDFED8F32E6541);
  STACK[0x6BB0] = v2;
  LODWORD(STACK[0xACB4]) = -1915525705;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1004B1EA0()
{
  v0 = STACK[0x51B8];
  STACK[0xD098] = STACK[0xD088] + STACK[0xD090];
  return (*(STACK[0x57D8] + 8 * (v0 - 16521)))();
}

uint64_t sub_1004B201C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x7180];
  v9 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v7);
  return (*(v9 + 8 * (v7 + 3411)))(v8, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1004B2224()
{
  if (STACK[0xC0F8])
  {
    v0 = LODWORD(STACK[0x7ADC]) == LODWORD(STACK[0x26EC]) - 13588;
  }

  else
  {
    v0 = 0;
  }

  v1 = v0;
  return (*(STACK[0x57D8] + 8 * ((v1 * ((LODWORD(STACK[0x26EC]) ^ 0x31AB) + 26414)) ^ LODWORD(STACK[0x26EC]))))();
}

uint64_t sub_1004B23CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0x51B8];
  v8 = STACK[0x51B8] - 21572;
  *STACK[0xA460] = STACK[0xD3A4];
  return (*(STACK[0x57D8] + 8 * ((v7 - 12736) ^ v8)))(a1, a2, a3, a4, a5, a6, a7, 385182804);
}

uint64_t sub_1004B2480()
{
  v1 = STACK[0x51B8];
  STACK[0xBBC8] = &STACK[0xC46C];
  LODWORD(STACK[0xCDD8]) = ((((v0 - (v1 - 10)) | (v1 - 10 - v0)) & 0x80) >> 7) ^ 0x20CE9709;
  return (*(STACK[0x57D8] + 8 * ((v1 - 22538) ^ 0x20DB)))();
}

uint64_t sub_1004B24E8()
{
  STACK[0x7508] = v1;
  STACK[0x8C38] = &STACK[0x8A6C];
  LODWORD(STACK[0x9094]) = -32197492;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1004B2708@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 68) & 0x3F;
  v3 = a1 + v2;
  v4 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & (((v1 + 21702) ^ 0x5869) - 103642729 + (v3 & 0xFFFFFFF8) - 63)) & 0xFFFFFFFFFFFFFFF8));
  v5 = (__ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8) + v4) ^ 0xF41651499F5E3C67;
  v6 = v5 ^ __ROR8__(v4, 61);
  v7 = (__ROR8__(v5, 8) + v6) ^ 0x153242EE3CF06A49;
  v8 = v7 ^ __ROR8__(v6, 61);
  v9 = (__ROR8__(v7, 8) + v8) ^ 0x2275D4C73835399BLL;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = __ROR8__(v9, 8);
  v12 = (((v11 + v10) & 0x374D88210314DBD1 ^ 0x2048020000083D0) + ((v11 + v10) & 0xC8B277DEFCEB242ELL ^ 0xC01201C864E2000DLL) - 1) ^ 0x27B99B5B4A5FBF01;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = __ROR8__(v12, 8);
  v15 = __ROR8__((((v14 + v13) & 0x9B58F1FAEAD93379 ^ 0x9940D03800882121) + ((v14 + v13) ^ 0x6B927C2EA57965CLL) - (((v14 + v13) ^ 0x6B927C2EA57965CLL) & 0x9B58F1FAEAD93379)) ^ 0x5A3C1FCECCCB1204, 8);
  v16 = (((v14 + v13) & 0x9B58F1FAEAD93379 ^ 0x9940D03800882121) + ((v14 + v13) ^ 0x6B927C2EA57965CLL) - (((v14 + v13) ^ 0x6B927C2EA57965CLL) & 0x9B58F1FAEAD93379)) ^ 0x5A3C1FCECCCB1204 ^ __ROR8__(v13, 61);
  v17 = (((2 * (v15 + v16)) | 0x7A554A770375EE18) - (v15 + v16) - 0x3D2AA53B81BAF70CLL) ^ 0x950C859ED8682D74;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (v19 + v18 - ((2 * (v19 + v18)) & 0x6582381FA3989042) - 0x4D3EE3F02E33B7DFLL) ^ 0xED4CF0317254423ALL;
  *v3 = (((__ROR8__(v20, 8) + (v20 ^ __ROR8__(v18, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * (v3 & 7u))) ^ 0x80;
  return (*(STACK[0x57D8] + 8 * ((21341 * (v2 > 0x37)) ^ v1)))();
}

uint64_t sub_1004B2984()
{
  v2 = (((v0 ^ 0x8D5) + (v1 ^ 0x3CEA)) ^ ((v0 ^ 0x1C57) + ((v1 - 14894) ^ 0x6EBE)) ^ ((v0 ^ 0x4F97) + 14883)) + 12395;
  v3 = STACK[0xB658];
  *(STACK[0xB658] - 0x30BDFED8F32E64F9) = v2 + 2101943338 + ((v2 < 0x5EFCu) << 16) - 1706;
  v4 = v2 & 0x6D14 ^ 0xE608;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x3DB5)))((v2 ^ (2 * ((v2 ^ 0x2104) & (2 * ((v2 ^ 0x2104) & (2 * ((v2 ^ 0x2104) & (2 * ((v2 ^ 0x2104) & (2 * ((v2 ^ 0x2104) & (2 * ((v2 ^ 0x2104) & (2 * ((v2 ^ 0x2104) & (2 * ((v2 ^ 0x2104) & (2 * ((v2 ^ 0x2104) & (2 * ((v2 ^ 0x2104) & (2 * ((v2 ^ 0x2104) & (2 * ((v2 ^ 0x2104) & (2 * v4) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4))) ^ 0x6D14u);
  *(v3 - 0x30BDFED8F32E6501) = v6;
  return (*(v5 + 8 * ((799 * (v6 == 0)) ^ v1)))();
}

uint64_t sub_1004B2B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v7 = LODWORD(STACK[0x4DC8]) != -1201137552;
  v8 = STACK[0x51B8];
  v9 = ((STACK[0x51B8] + 1531894213) & 0xA4B0FDF7) - 11238;
  STACK[0x70B0] = STACK[0x9F60] + 16;
  STACK[0x7780] = a7;
  return (*(STACK[0x57D8] + 8 * (((v9 ^ 0x405) * v7) ^ (v8 - 9088))))();
}

uint64_t sub_1004B2BB8()
{
  v3 = LODWORD(STACK[0x3C58]) | 0x1856;
  v4 = STACK[0x3C5C];
  *(v0 + 600) = LODWORD(STACK[0x3C5C]) - 289235981 * (((v1 | 0x7C3A51A1) + (~v1 | 0x83C5AE5E)) ^ 0xFBB8819F) + 11969;
  v5 = STACK[0x4658];
  *(v0 + 592) = STACK[0x4658];
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x3C54])))(v2 - 240);
  v9 = *(v0 + 604) == (v3 ^ 0x5856) && *v5 != 0;
  return (*(v6 + 8 * (v4 ^ (2 * v9))))(v7);
}

uint64_t sub_1004B2CAC()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v1 + 18821)))();
  *(v0 - 0x30BDFED8F32E6519) = 0;
  *(v0 - 0x30BDFED8F32E6511) = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1004B2CFC()
{
  v0 = STACK[0x3714];
  v1 = STACK[0x6A08];
  LODWORD(STACK[0x98F4]) = -143113071;
  STACK[0x6230] = v1;
  LODWORD(STACK[0x6974]) = -2046483230;
  return (*(STACK[0x57D8] + 8 * (v0 ^ 0x5426EF1B ^ (13504 * (v0 >= v0 + 954720164)))))();
}

uint64_t sub_1004B2D90()
{
  v4 = STACK[0x51B8];
  v5 = STACK[0x51B8] + v1;
  v6 = STACK[0x51B8] - 1079089617;
  v7 = STACK[0xCC0];
  LODWORD(STACK[0x1D4C8]) = (v5 ^ 0x97DAF698) - STACK[0xCC0];
  LODWORD(STACK[0x1D4D0]) = v7;
  STACK[0x1D4E0] = v2 + v7;
  LODWORD(STACK[0x1D4CC]) = (v5 ^ 0x97DAF6C9) - v7;
  STACK[0x1D4D8] = 4151854225u - v7;
  LODWORD(STACK[0x1D4C4]) = v7 ^ v5 ^ 0x97DAF922;
  LODWORD(STACK[0x1D4C0]) = v6 ^ v7;
  v8 = STACK[0x57D8];
  v9 = (*(STACK[0x57D8] + 8 * (v4 ^ v0)))(v3 - 240);
  return (*(v8 + 8 * SLODWORD(STACK[0x1D4D4])))(v9);
}

uint64_t sub_1004B2E38@<X0>(int a1@<W8>)
{
  v5 = (((a1 - 169029453) & 0xA132F4E) - 3901) * v1;
  *(v2 + 4 * (v5 + 1688899684 - ((((v5 + 1688899684) * v4) >> 32) >> 12) * v3)) = *(v2 + 4 * (v5 + 1650947936 - ((((v5 + 1650947936) * v4) >> 32) >> 12) * v3));
  return (*(STACK[0x57D8] + 8 * (a1 ^ (2 * (v1 == 1187703329)))))();
}

uint64_t sub_1004B2EC0@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v4.i64[0] = 0x1E1E1E1E1E1E1E1ELL;
  v4.i64[1] = 0x1E1E1E1E1E1E1E1ELL;
  v5.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v5.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  *(a1 + (((v3 + 8326) | 0x50) ^ 0x40C7u) + a2 - 15) = vaddq_s8(vsubq_s8(*v2, vandq_s8(vaddq_s8(*v2, *v2), v4)), v5);
  return (*(STACK[0x57D8] + 8 * v3))();
}

uint64_t sub_1004B2F40@<X0>(unint64_t a1@<X8>)
{
  STACK[0x8470] = a1;
  STACK[0xB178] = v2;
  if (v2)
  {
    v3 = a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  return (*(STACK[0x57D8] + 8 * ((v4 * ((((v1 - 666) | 0x5816) ^ 0x55BF) + ((v1 + 5416) | 0x4054))) ^ v1)))();
}

uint64_t sub_1004B3024()
{
  LODWORD(STACK[0x9F4C]) = STACK[0xDED4];
  v1 = STACK[0x6288];
  *(v1 + 24) = -769884012;
  v1 += 24;
  STACK[0x97F0] = v1;
  STACK[0xD310] = v1;
  *(v1 + 8) = 0xD38CBDD3ACAFF84ALL;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = -769884012;
  *(v1 + 36) = -769884012;
  *(v1 + 40) = 0;
  *(v1 + 48) = -769884012;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xD38CBDD3ACAFF84ALL;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 104) = -769884012;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0xD38CBDD3ACAFF84ALL;
  *(v1 + 136) = -769884012;
  *(v1 + 144) = 0x2F0471E20AD18A8CLL;
  *(v1 + 128) = 0;
  v2 = STACK[0x57D8];
  STACK[0xCF38] = *(STACK[0x57D8] + 8 * v0);
  return (*(v2 + 8 * (((v0 ^ 0x5A69) - 13091) ^ v0)))();
}

uint64_t sub_1004B3214()
{
  v1 = STACK[0x51B8];
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9207)))(v0);
  return (*(v2 + 8 * (v1 - 6993)))(v3);
}

uint64_t sub_1004B3258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W8>)
{
  v12 = (v9 - 446490059);
  v13 = STACK[0x51E8];
  v14 = STACK[0x51F0];
  v15 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & (((a1 + v12) & 0xFFFFFFF8) + v10)) & 0xFFFFFFFFFFFFFFF8));
  v16 = (v15 + __ROR8__((a1 + v12) & 0xFFFFFFFFFFFFFFF8, 8)) ^ v11;
  v17 = __ROR8__(v16, 8);
  v18 = v16 ^ __ROR8__(v15, 61);
  v19 = (v17 + v18 - ((2 * (v17 + v18)) & 0xCDCE37C61068EDECLL) - 0x1918E41CF7CB890ALL) ^ 0xF3D5590D34C41CBFLL;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ a2;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (((2 * (v23 + v22)) | 0x3EFED83402AB66B2) - (v23 + v22) - 0x1F7F6C1A0155B359) ^ 0xFAD076A92FE88F84;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ a5;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (v28 + v27 - ((2 * (v28 + v27)) & 0x956C662A5790DEDELL) + 0x4AB633152BC86F6FLL) ^ 0xE29013B0721AB517;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (0x7AE8FF5541674C80 - ((v31 + v30) | 0x7AE8FF5541674C80) + ((v31 + v30) | 0x851700AABE98B37FLL)) ^ 0xDA9AEC941D00B964;
  v33 = *v7;
  *(a1 + v12) = v8 ^ a6 ^ (((__ROR8__(v32, 8) + (v32 ^ __ROR8__(v30, 61))) ^ a4) >> (8 * ((a1 + v9 + 53) & 7)));
  v34 = a1 + (v9 - 446490058);
  v35 = *(*v14 + (((v10 + (v34 & 0xFFFFFFF8) - 3) & *v13) & 0xFFFFFFFFFFFFFFF8));
  v36 = (v35 + __ROR8__(v34 & 0xFFFFFFFFFFFFFFF8, 8)) ^ v11;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (0x695C700A1E5CF80FLL - ((v38 + v37) | 0x695C700A1E5CF80FLL) + ((v38 + v37) | 0x96A38FF5E1A307F0)) ^ 0x8391CD1BDD536DB9;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ a2;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (0xD9951F94BB01149DLL - ((v43 + v42) | 0xD9951F94BB01149DLL) + ((v43 + v42) | 0x266AE06B44FEEB62)) ^ 0xC3C5FAD86A43D7BFLL;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ a5;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = __ROR8__(v46, 8);
  v49 = (((2 * (v48 + v47)) & 0xC745051369E6E83CLL) - (v48 + v47) + 0x1C5D7D764B0C8BE1) ^ 0xB47B5DD312DE5199;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ a3;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = __ROR8__(v51, 8);
  *v34 = a7 ^ (((((v53 + v52) ^ 0x49CF9684F7F69E4CLL) - ((2 * ((v53 + v52) ^ 0x49CF9684F7F69E4CLL)) & 0xE0643DF35A2CF0B8) - 0xFCDE10652E987A4) ^ 0x783E40AFFE25AE38) >> (8 * (v34 & 7u))) ^ 0xF7;
  return v33();
}

uint64_t sub_1004B3690()
{
  v1 = STACK[0x51B8];
  v2 = STACK[0x51B8] + 7857;
  v3 = STACK[0xC7C8];
  *(v3 + 112) = STACK[0x6A04];
  v4 = STACK[0xD0C8];
  *v4 = *(v3 + 72);
  *(v4 + 8) = *(v3 + 80);
  *(v4 + 16) = *(v3 + 104);
  *(v4 + 24) = *(v3 + 112);
  *(v4 + 32) = v3 + 120;
  *(v4 + 40) = v3 + 128;
  *(v4 + 48) = &STACK[0x98B8];
  *(v4 + 56) = &STACK[0xA76C];
  *(v4 + 64) = v3 + 56;
  *(v4 + 72) = v3 + 64;
  STACK[0x1D4C8] = v4;
  LODWORD(STACK[0x1D4C0]) = v1 - 1089234077 * (((((v0 - 240) | 0xA1263AA2) ^ 0xFFFFFFFE) - (~(v0 - 240) | 0x5ED9C55D)) ^ 0xBE841925) - 2786;
  v5 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * (v1 + 9273)))(v0 - 240);
  return (*(v5 + 8 * ((22 * (STACK[0x98B8] != 0)) ^ v2)))();
}

uint64_t sub_1004B37AC()
{
  v2 = LOBYTE(STACK[0x78C7]);
  v3 = 551690071 * ((~(v1 - 240) & 0xE488E70D62E9CD24 | (v1 - 240) & 0x1B7718F29D1632DBLL) ^ 0x9515B5C32C049E73);
  LODWORD(STACK[0x1D4D0]) = v3;
  LODWORD(STACK[0x1D4CC]) = ((v0 - 22613) ^ 0x2FA70CF5) - v3;
  LODWORD(STACK[0x1D4C0]) = (v0 - 1079089617) ^ v3;
  STACK[0x1D4E0] = v3;
  LODWORD(STACK[0x1D4C4]) = (v0 + 799451899) ^ v3;
  STACK[0x1D4D8] = v2 - v3;
  LODWORD(STACK[0x1D4C8]) = ((v0 - 22613) ^ 0x2FA70CC2) - v3;
  v4 = v0 ^ 0x2411;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * v4))(v1 - 240);
  return (*(v5 + 8 * SLODWORD(STACK[0x1D4D4])))(v6);
}

uint64_t sub_1004B389C()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))(v1);
  v4 = *(v2 + 8 * (v0 - 18093));
  STACK[0x57B0] = LODWORD(STACK[0x4C30]);
  return v4(v3);
}

uint64_t sub_1004B38D8(uint64_t a1, int a2, int a3)
{
  v7 = v4 + ((*v3 ^ a2) << 16);
  v8 = *(STACK[0x57D8] + 8 * STACK[0x57B0]);
  LODWORD(STACK[0x5600]) = v5;
  LODWORD(STACK[0x5640]) = v6;
  LODWORD(STACK[0x55B0]) = v7;
  LODWORD(STACK[0x55E0]) = a3;
  return v8(6669204);
}

uint64_t sub_1004B3988(uint64_t a1)
{
  v3 = v1 == a1;
  v4 = a1 + 1;
  v5 = v3;
  return (*(STACK[0x57D8] + 8 * ((2027 * v5) ^ v2)))(v4);
}

uint64_t sub_1004B3B5C()
{
  STACK[0x57C0] = 0;
  STACK[0xA8A8] = STACK[0xB5A8];
  v1 = (((((v0 - 1123369811) & 0x42F57FB9 ^ LODWORD(STACK[0x5834]) ^ 0xC11D1E73) + 1055042597) ^ ((LODWORD(STACK[0x5834]) ^ 0x586BE535) - 1483466037) ^ ((LODWORD(STACK[0x5834]) ^ 0x4B6A367A) - 1265251962)) - 769883981) & 0xFFFFFFF0;
  v2 = STACK[0xA8D0];
  STACK[0x85A0] = 0x1883660EE8144416;
  STACK[0x7810] = v2;
  LODWORD(STACK[0xC0DC]) = -2013569049;
  STACK[0x8000] = &STACK[0x85A0];
  STACK[0x5FC0] = 0;
  LODWORD(STACK[0xA12C]) = (((v1 ^ 0x53767214) + 227780363) ^ ((v1 ^ 0x16ACB437) + 1212768554) ^ ((v1 ^ 0x45DAC623) + 457118526)) + 509845341;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1004B3CEC()
{
  v1 = STACK[0x57D8];
  STACK[0xD900] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 + 6725)))();
}

uint64_t sub_1004B3E14()
{
  v0 = STACK[0x57D8];
  v1 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))(STACK[0x8D20]);
  STACK[0x8D20] = 0;
  return (*(v0 + 8 * SLODWORD(STACK[0x1148])))(v1);
}

uint64_t sub_1004B3ECC@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  *(a2 + v5 + v4 + 25) = *(v2 + v4);
  v9 = v6 < v7 || v6 > ((v3 - 4696) | 0x22A2u) + (a1 + 1) + 1749209953;
  return (*(STACK[0x57D8] + 8 * ((v9 | (2 * v9)) ^ v3)))();
}

uint64_t sub_1004B3FF4()
{
  v3 = STACK[0xA838];
  v4 = 1534937323 * ((v2 + 0x5BA9A86D88D6153DLL - 2 * ((v2 - 240) & 0x5BA9A86D88D6162DLL)) ^ 0x96D120AF4E38ED6ALL);
  LODWORD(STACK[0x1D4CC]) = 1534937323 * ((v2 - 1999235779 - 2 * ((v2 - 240) & 0x88D6162D)) ^ 0x4E38ED6A) + v1 + 1451493860;
  LODWORD(STACK[0x1D4C8]) = ((v1 + v0) ^ 0x714E51ED) - 1534937323 * ((v2 - 1999235779 - 2 * ((v2 - 240) & 0x88D6162D)) ^ 0x4E38ED6A);
  STACK[0x1D4D8] = v4;
  LODWORD(STACK[0x1D4E0]) = ((v1 + v0) ^ 0x714E5F60) + 1534937323 * ((v2 - 1999235779 - 2 * ((v2 - 240) & 0x88D6162D)) ^ 0x4E38ED6A);
  LODWORD(STACK[0x1D4D4]) = (v1 + v0 + 1900961707) ^ (1534937323 * ((v2 - 1999235779 - 2 * ((v2 - 240) & 0x88D6162D)) ^ 0x4E38ED6A));
  STACK[0x1D4C0] = v3 ^ v4;
  LODWORD(STACK[0x1D4D0]) = 1534937323 * ((v2 - 1999235779 - 2 * ((v2 - 240) & 0x88D6162D)) ^ 0x4E38ED6A);
  v5 = v1 + 9182;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * v5))(v2 - 240);
  return (*(v6 + 8 * SLODWORD(STACK[0x1D4E4])))(v7);
}

uint64_t sub_1004B432C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = STACK[0x8730];
  *(v6 + 24) = 1;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *v6 = v5;
  return (*(STACK[0x57D8] + 8 * ((251 * ((STACK[0xE600] ^ 0xF7D7BCBB4FED37FDLL) + 0x8284344B012C802 + ((STACK[0xE600] << ((v4 + 111) ^ 0x9B ^ (v4 + 111) & 0xB7 ^ 0xD2u)) & 0xEFAF79769FDA6FFALL) != 0)) ^ v4)))(a1, a2, a3, a4, 0xEA75699C2C6A837FLL, 0x2A346914086A013BLL, 0xD5CB96EBF795FEC5);
}

uint64_t sub_1004B4418@<X0>(unint64_t a1@<X8>)
{
  v7 = (v3 ^ 0xBFFFBD7F) + 1711243245 + ((2 * v3) & 0x7FFF7AFE);
  v8 = v1;
  v9 = (2 * (v7 & (v1 - 637487384))) & 0xA4000108 ^ (v7 & (v1 - 637487384) | 0x2448314B) ^ (2 * (v7 & (v1 - 637487384))) & (v7 ^ 0x3ED8B1DF);
  v10 = (2 * (v7 ^ 0x3ED8B1DF)) & 0xE4D8734A ^ 0x24481149 ^ ((2 * (v7 ^ 0x3ED8B1DF)) ^ 0xC9B0E696) & (v7 ^ 0x3ED8B1DF);
  v11 = ((4 * v9) ^ 0x9120C52C) & v10 ^ v9 ^ ((4 * v9) & 0xE0005348 | 0x400000);
  v12 = (4 * v10) & 0xE4D87348 ^ 0x64983243 ^ ((4 * v10) ^ 0x9361CD2C) & v10;
  v13 = (16 * v11) & 0xE4D87340 ^ v11 ^ ((16 * v11) ^ 0x40870430) & v12;
  v14 = (16 * v12) & 0xE4D87340 ^ 0xA058434B ^ ((16 * v12) ^ 0x4D8734B0) & v12;
  v15 = v13 ^ 0x80004008 ^ (v13 << 8) & 0xE4D87300 ^ ((v13 << 8) ^ 0x88704300) & v14;
  v16 = v7 ^ 0xC5007C13 ^ (2 * ((v15 << 16) & 0x64D80000 ^ v15 ^ ((v15 << 16) ^ 0x734B0000) & ((v14 << 8) & 0x64D80000 ^ 0x24880000 ^ ((v14 << 8) ^ 0xD8730000) & v14)));
  v17 = STACK[0x51B8] - 12567;
  v18 = 551690071 * ((v6 - 240) ^ 0x4EED5357);
  STACK[0x1D4D8] = STACK[0x4D98];
  LODWORD(STACK[0x1D4D4]) = v16 - v18;
  STACK[0x1D4C0] = v5;
  LODWORD(STACK[0x1D4D0]) = v18 ^ v17;
  STACK[0x1D4C8] = a1;
  STACK[0x1D4E8] = v4;
  v19 = STACK[0x57D8];
  v20 = (*(STACK[0x57D8] + 8 * (LODWORD(STACK[0x4E38]) ^ 0x24C4)))(v6 - 240);
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
  STACK[0xACC8] = v2 + SLODWORD(STACK[0xC0C8]);
  STACK[0xB058] = *(v19 + 8 * v8);
  return (*(v19 + 8 * ((13205 * ((v8 - 156088429) < 0xE971DA2F)) ^ (v8 + 1459))))(v20);
}

uint64_t sub_1004B47F0@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xC8D0]) = v1;
  LOBYTE(STACK[0x85D7]) = 0;
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_1004B4870(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0x7FB0];
  v4 = STACK[0x7ED8];
  STACK[0x68F0] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v4 + 16;
  STACK[0xAA40] = v3;
  STACK[0xCC88] = 0;
  STACK[0x6F98] = 0;
  LODWORD(STACK[0x9D6C]) = 2101965948;
  v5 = STACK[0x57D8];
  STACK[0xC1C0] = *(STACK[0x57D8] + 8 * v2);
  return (*(v5 + 8 * ((((v2 - 173039518) & 0xA507AF6) - 2491) ^ v2)))(4294960487, a2, 12942, 30467, 15506, 2193001348, 2147336180, 0x5FFBEFAF3FFEDFFBLL);
}

uint64_t sub_1004B4A08()
{
  v3 = STACK[0x70A8];
  v4 = STACK[0xB018];
  v5 = 1089234077 * ((v2 - 240) ^ 0xE05DDC78);
  STACK[0x1D4C8] = &STACK[0xBFE4];
  STACK[0x1D4F0] = v0;
  LODWORD(STACK[0x1D4E0]) = 1668369943 - v5 + ((v1 - 460) ^ 0x43D7C109) * v3;
  LODWORD(STACK[0x1D4C0]) = v5 + v1 - 6162;
  STACK[0x1D4D8] = &STACK[0x7000];
  STACK[0x1D4E8] = v4;
  LOBYTE(STACK[0x1D4D4]) = 9 - -99 * ((v2 + 16) ^ 0x78);
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v1 + 8724)))(v2 - 240);
  return (*(v6 + 8 * v1))(v7);
}

uint64_t sub_1004B4B54@<X0>(int a1@<W1>, int a2@<W3>, int a3@<W6>, int a4@<W8>)
{
  v9 = a4 + 9100 + a2 * a3 + 985670163 - (((((a4 + 9100 + a2 * a3 + 985670163) >> 3) * v4) >> 32) >> 7) * v5;
  v10 = *(STACK[0x57C0] + v9);
  v11 = (((v10 ^ 0x7B287C2) - 129140674) ^ ((v10 ^ 0xA70C18D8) + 1492379432) ^ ((v10 ^ 0xA0BE9FDD) + 1598119971)) * a1 + 12277058;
  *(STACK[0x57C0] + v9) = *(v6 + 4 * (v11 - (((v11 * v8) >> 32) >> 12) * v7)) ^ 0x4D;
  return (*(STACK[0x57D8] + 8 * ((23801 * (a2 == 1275077673)) ^ a4)))();
}

uint64_t sub_1004B4C30(uint64_t a1, int a2, int a3, unsigned int a4, uint64_t a5, int a6)
{
  v16 = LODWORD(STACK[0x5138]) - 2 * LODWORD(STACK[0x5140]);
  v17 = v6 ^ v7 ^ LODWORD(STACK[0x5470]) ^ v10 ^ LODWORD(STACK[0x54F0]) ^ LODWORD(STACK[0x53D0]) ^ LODWORD(STACK[0x51D0]);
  LODWORD(STACK[0x5450]) ^= LODWORD(STACK[0x52C0]);
  v18 = a3 ^ 0x45D6;
  LODWORD(STACK[0x52C0]) = a3 ^ 0x45D6;
  v19 = STACK[0x56D0];
  LODWORD(STACK[0x57A0]) = LODWORD(STACK[0x56D0]) ^ LODWORD(STACK[0x5780]) ^ 0x5F1300FD;
  v20 = STACK[0x55E0];
  v21 = LODWORD(STACK[0x5790]) ^ LODWORD(STACK[0x55E0]) ^ 0x9A2C55CD ^ v16;
  v22 = LODWORD(STACK[0x53B0]) ^ 0x9A2C55CD ^ LODWORD(STACK[0x51A8]) ^ LODWORD(STACK[0x5740]) ^ LODWORD(STACK[0x55D0]) ^ a6 ^ LODWORD(STACK[0x5770]) ^ LODWORD(STACK[0x5500]) ^ LODWORD(STACK[0x51F8]) ^ (-1277600521 - LODWORD(STACK[0x51C8]) + (STACK[0x51B0] & 0x57E3FD7A));
  v23 = v17 ^ STACK[0x51D8] & 0x57E3FD7A ^ 0x8A0E95F7;
  LODWORD(STACK[0x55D0]) = v23;
  v24 = STACK[0x53C8];
  v25 = STACK[0x5268];
  v26 = LODWORD(STACK[0x5720]) ^ LODWORD(STACK[0x5268]) ^ (v21 + 500485009 - ((2 * v21) & 0x3BA99722));
  v27 = LODWORD(STACK[0x55B0]) ^ LODWORD(STACK[0x5640]) ^ LODWORD(STACK[0x5710]) ^ (v26 + 530294952 - ((2 * v26) & 0x3F375150));
  v28 = (v27 + 1884652660 - ((2 * v27) & 0xE0AB08E8)) ^ v19;
  v29 = STACK[0x5208];
  v30 = (v28 + 500485009 - ((2 * v28) & 0x3BA99722)) ^ LODWORD(STACK[0x5208]);
  v31 = (v24 + 1853085050 - ((2 * v24) & 0xDCE7AAF4)) ^ LODWORD(STACK[0x56C0]);
  v32 = v31 - 1277600521 - ((2 * v31) & 0x67B2B9EE);
  v33 = STACK[0x5260];
  v34 = LODWORD(STACK[0x5730]) ^ LODWORD(STACK[0x5260]) ^ (v30 + 1884652660 - ((2 * v30) & 0xE0AB08E8));
  v35 = (v34 + 530294952 - ((2 * v34) & 0x3F375150)) ^ LODWORD(STACK[0x5700]);
  v36 = LODWORD(STACK[0x5680]) ^ LODWORD(STACK[0x5670]) ^ (v35 - 1277600521 - ((2 * v35) & 0x67B2B9EE));
  v37 = (v36 - 1024123231 - ((2 * v36) & 0x85EA3D42)) ^ LODWORD(STACK[0x5610]);
  v38 = STACK[0x5220];
  v39 = (v37 + 1884652660 - ((2 * v37) & 0xE0AB08E8)) ^ LODWORD(STACK[0x5220]);
  v40 = v20;
  v41 = v20 & 0x800;
  if ((v39 & v20 & 0x800) != 0)
  {
    v41 = -v41;
  }

  v42 = STACK[0x51C0];
  v43 = LODWORD(STACK[0x5590]) ^ LODWORD(STACK[0x56F0]) ^ LODWORD(STACK[0x51C0]) ^ LODWORD(STACK[0x5530]) ^ LODWORD(STACK[0x5520]) ^ LODWORD(STACK[0x5550]) ^ LODWORD(STACK[0x5540]) ^ v32;
  v44 = LODWORD(STACK[0x5650]) ^ 0x9DF2833F ^ LODWORD(STACK[0x55A0]) ^ ((v43 ^ LODWORD(STACK[0x5510]) ^ v23) - 1395260085 - ((2 * (v43 ^ LODWORD(STACK[0x5510]) ^ v23)) & 0x59AC0A96));
  v45 = (LODWORD(STACK[0x55F0]) ^ v40 & 0xFFFFF7FF ^ LODWORD(STACK[0x5600]) ^ (v41 + v39) ^ 0x6537F0CB) + 1698164939 - 2 * ((LODWORD(STACK[0x55F0]) ^ v40 & 0xFFFFF7FF ^ LODWORD(STACK[0x5600]) ^ (v41 + v39) ^ 0x6537F0CB) & 0x6537F0DF ^ (LODWORD(STACK[0x55F0]) ^ v40 & 0xFFFFF7FF ^ LODWORD(STACK[0x5600]) ^ (v41 + v39)) & 0x14);
  v46 = LODWORD(STACK[0x5560]) ^ LODWORD(STACK[0x5660]) ^ v22 ^ ((v45 ^ LODWORD(STACK[0x55C0])) - 1024123231 - ((2 * (v45 ^ LODWORD(STACK[0x55C0]))) & 0x85EA3D42));
  v47 = (v46 - 1445907677 - ((2 * v46) & 0x53A26646)) ^ LODWORD(STACK[0x5580]);
  v48 = (v47 + 1140072028 - ((2 * v47) & 0x87E83CB8)) ^ LODWORD(STACK[0x5570]);
  LODWORD(STACK[0x53B0]) = v18 - 6518;
  v49 = LODWORD(STACK[0x57A0]) ^ (v18 - 6518);
  LODWORD(STACK[0x5500]) = v49;
  v50 = (v48 - 1445907677 - ((2 * v48) & 0x53A26646)) ^ LODWORD(STACK[0x5630]) ^ v49;
  v51 = LODWORD(STACK[0x5620]) ^ 0x9DF2833F ^ (v50 + 1698164939 - ((2 * v50) & 0xCA6FE196));
  v52 = STACK[0x5380];
  LODWORD(STACK[0x5140]) = (((v44 ^ ((v44 & v8) >> 1)) & a2) >> v14) | (((v44 ^ ((v44 & v8) >> 1)) & STACK[0x5380]) << v15);
  LODWORD(STACK[0x5138]) = (((v51 ^ ((v51 & a4) >> 1)) & v9) >> v13) + (((v51 ^ ((v51 & a4) >> 1)) & v12) << v11);
  v55 = (((v8 & (v19 ^ 0x70558474)) >> 1) + 1884652660 - (v8 & (v19 ^ 0x70558474) & 0xE0AB08E8)) ^ v19;
  v56 = LODWORD(STACK[0x5410]) ^ LODWORD(STACK[0x5420]);
  LODWORD(STACK[0x51F8]) = v56;
  LODWORD(STACK[0x53D8]) = v56 ^ ((v9 & v55) >> v14) ^ ((v52 & v55) << v11);
  v57 = (((v8 & (v38 ^ 0x70558474)) >> 1) + 1884652660 - (v8 & (v38 ^ 0x70558474) & 0xE0AB08E8)) ^ v38;
  v58 = LODWORD(STACK[0x53F8]) ^ LODWORD(STACK[0x5400]);
  LODWORD(STACK[0x57A0]) = v58 ^ ((v9 & v57) >> v13) ^ ((v52 & v57) << v11);
  LODWORD(STACK[0x5780]) = v58 ^ ((((v21 ^ ((v21 & a4) >> 1)) & a2) >> v13) + (((v21 ^ ((v21 & a4) >> 1)) & v12) << v11));
  v59 = (((a4 & (v33 ^ 0x70558474)) >> 1) + 1884652660 - (a4 & (v33 ^ 0x70558474) & 0xE0AB08E8)) ^ v33;
  v60 = (((v8 & (v25 ^ 0x1DD4CB90)) >> 1) + 500485009 - (v8 & (v25 ^ 0x1DD4CB90) & 0x3BA99722)) ^ v25;
  LODWORD(STACK[0x5790]) = ((a2 & v60) >> v14) ^ ((v12 & v60) << v11);
  v61 = v56 ^ ((v59 & v9) >> v14) ^ ((v59 & v12) << v11);
  LODWORD(STACK[0x53D0]) = (((v24 ^ ((v24 & a4) >> 1)) & v9) >> v13) ^ (((v24 ^ ((v24 & a4) >> 1)) & v12) << v15);
  v62 = (((v8 & (v29 ^ 0x1DD4CB90)) >> 1) + 500485009 - (v8 & (v29 ^ 0x1DD4CB90) & 0x3BA99722)) ^ v29;
  LODWORD(STACK[0x5770]) = ((v12 & v62) << v11) + ((v9 & v62) >> v14);
  v63 = LODWORD(STACK[0x55B0]) ^ ((STACK[0x55B0] & v8) >> 1);
  LODWORD(STACK[0x5760]) = ((v52 & v63) << v15) | ((a2 & v63) >> v13);
  v64 = LODWORD(STACK[0x5720]) ^ ((STACK[0x5720] & a4) >> 1);
  LODWORD(STACK[0x53C8]) = ((v64 & v12) << v15) ^ ((v64 & v9) >> v14);
  v65 = (((v8 & (LODWORD(STACK[0x56C0]) ^ 0x6E73D57A)) >> 1) + 1853085050 - (v8 & (LODWORD(STACK[0x56C0]) ^ 0x6E73D57A) & 0xDCE7AAF4)) ^ LODWORD(STACK[0x56C0]);
  v66 = ((v52 & v65) << v15) ^ ((v9 & v65) >> v13);
  LODWORD(STACK[0x5750]) = ((v52 & (v42 ^ ((v42 & v8) >> 1))) << v11) + (((v42 ^ ((v42 & v8) >> 1)) & v9) >> v13);
  v67 = LODWORD(STACK[0x5730]) ^ ((a4 & STACK[0x5730]) >> 1);
  LODWORD(STACK[0x5740]) = ((v52 & v67) << v11) ^ ((v67 & v9) >> v14);
  v68 = (((v8 & (LODWORD(STACK[0x5640]) ^ 0x1F9BA8A8)) >> 1) + 530294952 - (v8 & (LODWORD(STACK[0x5640]) ^ 0x1F9BA8A8) & 0x3F375150)) ^ LODWORD(STACK[0x5640]);
  LODWORD(STACK[0x5730]) = ((v52 & v68) << v11) ^ ((a2 & v68) >> v13);
  v69 = LODWORD(STACK[0x5710]) ^ ((STACK[0x5710] & a4) >> 1);
  LODWORD(STACK[0x5720]) = ((v69 & v12) << v11) | ((v69 & a2) >> v13);
  v70 = LODWORD(STACK[0x5520]) ^ ((STACK[0x5520] & v8) >> 1);
  LODWORD(STACK[0x5710]) = ((v70 & v9) >> v13) | ((v70 & v12) << v11);
  v71 = (((a4 & (LODWORD(STACK[0x5700]) ^ 0x1F9BA8A8)) >> 1) + 530294952 - (a4 & (LODWORD(STACK[0x5700]) ^ 0x1F9BA8A8) & 0x3F375150)) ^ LODWORD(STACK[0x5700]);
  LODWORD(STACK[0x5700]) = ((a2 & v71) >> v13) + ((v71 & v12) << v11);
  v72 = (((a4 & (LODWORD(STACK[0x56F0]) ^ 0xB3D95CF6)) >> 1) - 1277600521 - (a4 & (LODWORD(STACK[0x56F0]) ^ 0xB3D95CF6) & 0x67B2B9EE)) ^ LODWORD(STACK[0x56F0]);
  v73 = LODWORD(STACK[0x53C0]) ^ ((v8 & STACK[0x53C0]) >> 1);
  LODWORD(STACK[0x56F0]) = ((v52 & v72) << v15) + ((a2 & v72) >> v13);
  LODWORD(STACK[0x51D8]) = ((v12 & v73) << v11) | ((v9 & v73) >> v14);
  v74 = LODWORD(STACK[0x5378]) ^ ((v8 & STACK[0x5378]) >> 1);
  LODWORD(STACK[0x56E0]) = (((v22 ^ ((v22 & a4) >> 1)) & v12) << v15) ^ (((v22 ^ ((v22 & a4) >> 1)) & a2) >> v13);
  LODWORD(STACK[0x5378]) = ((v52 & v74) << v11) + ((v9 & v74) >> v14);
  v75 = LODWORD(STACK[0x5550]) ^ ((STACK[0x5550] & a4) >> 1);
  LODWORD(STACK[0x53C0]) = ((v75 & a2) >> v14) | ((v75 & v12) << v11);
  v76 = LODWORD(STACK[0x5250]) ^ ((v8 & STACK[0x5250]) >> 1);
  LODWORD(STACK[0x51D0]) = ((v52 & v76) << v15) ^ ((v9 & v76) >> v13);
  v77 = (((a4 & (LODWORD(STACK[0x5670]) ^ 0xB3D95CF6)) >> 1) - 1277600521 - (a4 & (LODWORD(STACK[0x5670]) ^ 0xB3D95CF6) & 0x67B2B9EE)) ^ LODWORD(STACK[0x5670]);
  v78 = LODWORD(STACK[0x5370]) ^ ((v8 & STACK[0x5370]) >> 1);
  LODWORD(STACK[0x56D0]) = ((v77 & v9) >> v13) + ((v77 & v12) << v15);
  LODWORD(STACK[0x51C8]) = ((v52 & v78) << v11) + ((a2 & v78) >> v14);
  v79 = LODWORD(STACK[0x5680]) ^ ((STACK[0x5680] & v8) >> 1);
  v80 = LODWORD(STACK[0x5258]) ^ ((a4 & STACK[0x5258]) >> 1);
  LODWORD(STACK[0x5680]) = ((v79 & v9) >> v14) ^ ((v79 & v12) << v15);
  v81 = (((a4 & (LODWORD(STACK[0x5610]) ^ 0xC2F51EA0)) >> 1) - 1024123231 - (a4 & (LODWORD(STACK[0x5610]) ^ 0xC2F51EA0) & 0x85EA3D42)) ^ LODWORD(STACK[0x5610]);
  LODWORD(STACK[0x5370]) = ((v52 & v80) << v11) ^ ((a2 & v80) >> v13);
  v82 = LODWORD(STACK[0x53B8]) ^ ((v8 & STACK[0x53B8]) >> 1);
  LODWORD(STACK[0x56C0]) = ((a2 & v81) >> v14) ^ ((v81 & v12) << v15);
  LODWORD(STACK[0x51C0]) = ((v52 & v82) << v11) ^ ((v9 & v82) >> v13);
  v83 = LODWORD(STACK[0x5540]) ^ ((STACK[0x5540] & a4) >> 1);
  LODWORD(STACK[0x5670]) = ((v83 & a2) >> v14) ^ ((v83 & v12) << v15);
  v84 = LODWORD(STACK[0x5480]) ^ ((v8 & STACK[0x5480]) >> 1);
  v85 = (((v8 & (LODWORD(STACK[0x5660]) ^ 0xC2F51EA0)) >> 1) - 1024123231 - (v8 & (LODWORD(STACK[0x5660]) ^ 0xC2F51EA0) & 0x85EA3D42)) ^ LODWORD(STACK[0x5660]);
  LODWORD(STACK[0x51B0]) = ((v52 & v84) << v11) ^ ((v9 & v84) >> v13);
  v86 = LODWORD(STACK[0x5210]) ^ ((a4 & STACK[0x5210]) >> 1);
  LODWORD(STACK[0x51A8]) = ((v52 & v86) << v11) + ((a2 & v86) >> v13);
  LODWORD(STACK[0x5660]) = ((v12 & v85) << v15) ^ ((v9 & v85) >> v14);
  v87 = (((v8 & (LODWORD(STACK[0x5650]) ^ 0xACD6054A)) >> 1) - 1395260085 - (v8 & (LODWORD(STACK[0x5650]) ^ 0xACD6054A) & 0x59AC0A96)) ^ LODWORD(STACK[0x5650]);
  LODWORD(STACK[0x5650]) = ((v52 & v87) << v15) | ((a2 & v87) >> v14);
  v88 = LODWORD(STACK[0x5490]) ^ ((a4 & STACK[0x5490]) >> 1);
  LODWORD(STACK[0x5610]) = ((v88 & v9) >> v13) ^ ((v88 & v12) << v11);
  v89 = LODWORD(STACK[0x5600]) ^ ((STACK[0x5600] & v8) >> 1);
  v90 = LODWORD(STACK[0x5270]) ^ ((a4 & STACK[0x5270]) >> 1);
  LODWORD(STACK[0x53B8]) = ((v89 & v9) >> v14) | ((v89 & v12) << v11);
  LODWORD(STACK[0x5600]) = ((v52 & v90) << v15) ^ ((a2 & v90) >> v13);
  v91 = LODWORD(STACK[0x55F0]) ^ ((STACK[0x55F0] & a4) >> 1);
  LODWORD(STACK[0x5640]) = ((v52 & v91) << v15) | ((v91 & v9) >> v14);
  v92 = LODWORD(STACK[0x5278]) ^ ((v8 & STACK[0x5278]) >> 1);
  v93 = LODWORD(STACK[0x55D0]) ^ ((STACK[0x55D0] & a4) >> 1);
  LODWORD(STACK[0x55F0]) = ((a2 & v92) >> v13) ^ ((v12 & v92) << v11);
  v94 = ((v93 & a2) >> v13) | ((v93 & v12) << v15);
  v95 = LODWORD(STACK[0x5218]) ^ ((v8 & STACK[0x5218]) >> 1);
  LODWORD(STACK[0x55D0]) = ((v52 & v95) << v11) + ((v9 & v95) >> v14);
  v96 = LODWORD(STACK[0x5510]) ^ ((STACK[0x5510] & a4) >> 1);
  v97 = ((v96 & v12) << v11) + ((v96 & a2) >> v14);
  v98 = LODWORD(STACK[0x5130]) ^ ((v8 & STACK[0x5130]) >> 1);
  LODWORD(STACK[0x55B0]) = ((v52 & v98) << v15) | ((v9 & v98) >> v13);
  v99 = LODWORD(STACK[0x5590]) ^ ((a4 & STACK[0x5590]) >> 1);
  v100 = ((v52 & v99) << v15) + ((v99 & v9) >> v13);
  v101 = LODWORD(STACK[0x5280]) ^ ((v8 & STACK[0x5280]) >> 1);
  LODWORD(STACK[0x5590]) = ((a2 & v101) >> v14) | ((v12 & v101) << v11);
  v102 = LODWORD(STACK[0x5530]) ^ ((STACK[0x5530] & a4) >> 1);
  v103 = ((v102 & v52) << v15) | ((v102 & a2) >> v14);
  v104 = LODWORD(STACK[0x54A0]) ^ ((v8 & STACK[0x54A0]) >> 1);
  v105 = (((a4 & (LODWORD(STACK[0x5570]) ^ 0x43F41E5C)) >> 1) + 1140072028 - (a4 & (LODWORD(STACK[0x5570]) ^ 0x43F41E5C) & 0x87E83CB8)) ^ LODWORD(STACK[0x5570]);
  LODWORD(STACK[0x5570]) = ((v9 & v104) >> v13) | ((v12 & v104) << v11);
  v106 = ((v52 & v105) << v15) ^ ((v105 & v9) >> v13);
  v107 = LODWORD(STACK[0x54B0]) ^ ((v8 & STACK[0x54B0]) >> 1);
  LODWORD(STACK[0x5550]) = ((a2 & v107) >> v14) ^ ((v12 & v107) << v11);
  v108 = (((a4 & (LODWORD(STACK[0x5580]) ^ 0xA9D13322)) >> 1) - 1445907677 - (a4 & (LODWORD(STACK[0x5580]) ^ 0xA9D13322) & 0x53A26646)) ^ LODWORD(STACK[0x5580]);
  v109 = ((a2 & v108) >> v14) ^ ((v108 & v12) << v15);
  v110 = LODWORD(STACK[0x5228]) ^ ((v8 & STACK[0x5228]) >> 1);
  LODWORD(STACK[0x5530]) = ((v52 & v110) << v11) + ((v9 & v110) >> v13);
  v111 = LODWORD(STACK[0x55A0]) ^ ((v8 & STACK[0x55A0]) >> 1);
  v112 = ((v12 & v111) << v11) | ((v9 & v111) >> v14);
  v113 = LODWORD(STACK[0x5440]) ^ ((a4 & STACK[0x5440]) >> 1);
  LODWORD(STACK[0x5510]) = ((v52 & v113) << v15) + ((a2 & v113) >> v13);
  v114 = (((a4 & (LODWORD(STACK[0x5630]) ^ 0xA9D13322)) >> 1) - 1445907677 - (a4 & (LODWORD(STACK[0x5630]) ^ 0xA9D13322) & 0x53A26646)) ^ LODWORD(STACK[0x5630]);
  v115 = ((a2 & v114) >> v14) + ((v114 & v12) << v15);
  v116 = LODWORD(STACK[0x54C0]) ^ ((v8 & STACK[0x54C0]) >> 1);
  LODWORD(STACK[0x54F0]) = ((v52 & v116) << v11) + ((v9 & v116) >> v13);
  v117 = LODWORD(STACK[0x5500]) ^ ((STACK[0x5500] & a4) >> 1);
  LODWORD(STACK[0x5630]) = ((v117 & v9) >> v13) ^ ((v117 & v12) << v11);
  v118 = LODWORD(STACK[0x54E0]) ^ ((v8 & STACK[0x54E0]) >> 1);
  LODWORD(STACK[0x54E0]) = ((v52 & v118) << v15) + ((a2 & v118) >> v14);
  v119 = LODWORD(STACK[0x5560]) ^ ((STACK[0x5560] & a4) >> 1);
  v120 = ((v119 & a2) >> v13) + ((v119 & v12) << v11);
  v121 = LODWORD(STACK[0x53A8]) ^ ((v8 & STACK[0x53A8]) >> 1);
  LODWORD(STACK[0x54C0]) = ((v52 & v121) << v15) + ((v9 & v121) >> v14);
  v122 = (((v8 & (LODWORD(STACK[0x55C0]) ^ 0x6537F0CA)) >> 1) + 1698164939 - (v8 & (LODWORD(STACK[0x55C0]) ^ 0x6537F0CA) & 0xCA6FE196)) ^ LODWORD(STACK[0x55C0]);
  v123 = ((v52 & v122) << v11) ^ ((a2 & v122) >> v13);
  v124 = LODWORD(STACK[0x5430]) ^ ((a4 & STACK[0x5430]) >> 1);
  LODWORD(STACK[0x54A0]) = ((v124 & v12) << v15) ^ ((v124 & v9) >> v14);
  v125 = (((a4 & (LODWORD(STACK[0x55E0]) ^ 0x6537F0CA)) >> 1) + 1698164939 - (a4 & (LODWORD(STACK[0x55E0]) ^ 0x6537F0CA) & 0xCA6FE196)) ^ LODWORD(STACK[0x55E0]);
  v126 = ((v125 & v9) >> v14) ^ ((v125 & v12) << v15);
  v127 = LODWORD(STACK[0x5288]) ^ ((v8 & STACK[0x5288]) >> 1);
  LODWORD(STACK[0x5480]) = ((v52 & v127) << v11) + ((a2 & v127) >> v13);
  v128 = (((v8 & (LODWORD(STACK[0x5620]) ^ 0x6537F0CA)) >> 1) + 1698164939 - (v8 & (LODWORD(STACK[0x5620]) ^ 0x6537F0CA) & 0xCA6FE196)) ^ LODWORD(STACK[0x5620]);
  v129 = LODWORD(STACK[0x54D0]) ^ ((a4 & STACK[0x54D0]) >> 1);
  v130 = ((a2 & v128) >> v14) | ((v12 & v128) << v11);
  LODWORD(STACK[0x5460]) = ((v52 & v129) << v15) ^ ((v129 & v9) >> v13);
  v131 = LODWORD(STACK[0x53D0]) ^ LODWORD(STACK[0x5770]);
  LODWORD(STACK[0x53A8]) = v61;
  v132 = v131 ^ v61 ^ LODWORD(STACK[0x5790]) ^ LODWORD(STACK[0x5760]) ^ LODWORD(STACK[0x57A0]) ^ LODWORD(STACK[0x53D8]) ^ LODWORD(STACK[0x5780]);
  LODWORD(STACK[0x5620]) = v66;
  v133 = v132 + (LODWORD(STACK[0x53C8]) ^ v66) - 2 * (v132 & (LODWORD(STACK[0x53C8]) ^ v66));
  v134 = STACK[0x5420];
  v135 = (v134 - 141900992 - ((2 * v134) & 0xEF158680)) ^ LODWORD(STACK[0x5298]);
  LODWORD(STACK[0x5490]) = v126;
  v136 = v126 ^ LODWORD(STACK[0x5660]);
  LODWORD(STACK[0x5520]) = v112;
  v137 = v136 ^ v112 ^ LODWORD(STACK[0x56D0]);
  LODWORD(STACK[0x5500]) = v115;
  v138 = v137 ^ v115 ^ LODWORD(STACK[0x56C0]) ^ LODWORD(STACK[0x5700]);
  LODWORD(STACK[0x5540]) = v109;
  LODWORD(STACK[0x5470]) = v130;
  v139 = v138 ^ v109 ^ v130 ^ LODWORD(STACK[0x56F0]) ^ LODWORD(STACK[0x5730]);
  v140 = LODWORD(STACK[0x5740]) ^ LODWORD(STACK[0x5750]) ^ LODWORD(STACK[0x5650]) ^ LODWORD(STACK[0x5640]);
  LODWORD(STACK[0x55A0]) = v100;
  LODWORD(STACK[0x5560]) = v106;
  v141 = v139 ^ v140 ^ v100 ^ v106;
  LODWORD(STACK[0x54B0]) = v123;
  v142 = v123 ^ LODWORD(STACK[0x5680]);
  LODWORD(STACK[0x5580]) = v103;
  v143 = v142 ^ v103 ^ LODWORD(STACK[0x53B8]);
  LODWORD(STACK[0x54D0]) = v120;
  v144 = v141 ^ v143 ^ v120 ^ LODWORD(STACK[0x5710]);
  v145 = LODWORD(STACK[0x53C0]) ^ LODWORD(STACK[0x5670]) ^ LODWORD(STACK[0x5720]);
  LODWORD(STACK[0x55C0]) = v97;
  LODWORD(STACK[0x55E0]) = v94;
  v146 = v144 ^ v145 ^ v97 ^ v94 ^ LODWORD(STACK[0x56E0]) ^ v133;
  v147 = STACK[0x5400];
  v148 = STACK[0x53F8];
  LODWORD(STACK[0x5450]) ^= LODWORD(STACK[0x5400]) ^ LODWORD(STACK[0x53F8]) ^ LODWORD(STACK[0x5120]);
  v149 = STACK[0x5410];
  LODWORD(STACK[0x5440]) = (LODWORD(STACK[0x5410]) ^ -LODWORD(STACK[0x5410]) ^ ((v134 ^ LODWORD(STACK[0x5248])) - (LODWORD(STACK[0x5410]) ^ v134 ^ LODWORD(STACK[0x5248])))) + (v134 ^ LODWORD(STACK[0x5248]));
  LODWORD(STACK[0x5430]) = LODWORD(STACK[0x51F8]) ^ LODWORD(STACK[0x5128]);
  LODWORD(STACK[0x5420]) = v134 ^ LODWORD(STACK[0x5290]) ^ v149;
  LODWORD(STACK[0x5410]) = v135 ^ v149;
  v150 = v147 ^ LODWORD(STACK[0x5230]);
  v151 = LODWORD(STACK[0x5408]) ^ 0xDAD6523C;
  LODWORD(STACK[0x5408]) = v147 ^ LODWORD(STACK[0x5240]) ^ v148;
  LODWORD(STACK[0x5400]) = v150 ^ v148;
  LODWORD(STACK[0x53F8]) = (v147 - 141900992 - ((2 * v147) & 0xEF158680)) ^ LODWORD(STACK[0x5238]) ^ v148;
  v152 = (((a4 & v151) >> 1) + 391102350 - (a4 & v151 & 0x2E9F7F1C)) ^ LODWORD(STACK[0x5340]);
  LODWORD(STACK[0x5130]) = ((a2 & v152) >> v13) + ((v152 & v12) << v15);
  v153 = LODWORD(STACK[0x52C8]) ^ 0x464C752A;
  v154 = ((v8 & (LODWORD(STACK[0x5398]) ^ 0x77F7F598)) >> 1) + 432761309 - (v8 & (LODWORD(STACK[0x5398]) ^ 0x77F7F598) & 0x3396D3BA);
  LODWORD(STACK[0x5120]) = ((v52 & (v154 ^ LODWORD(STACK[0x5368]))) << v11) ^ ((v9 & (v154 ^ LODWORD(STACK[0x5368]))) >> v14);
  v155 = (((v8 & v153) >> 1) - 1191980996 - (v8 & v153 & 0x71E7A078)) ^ LODWORD(STACK[0x52D0]);
  v156 = LODWORD(STACK[0x5308]) ^ 0x16B7A220;
  LODWORD(STACK[0x5128]) = ((v12 & v155) << v15) ^ ((v9 & v155) >> v14);
  v157 = (((a4 & v156) >> 1) - (a4 & v156 & 0x76CC26C4) - 1150938270) ^ LODWORD(STACK[0x52A0]);
  v158 = LODWORD(STACK[0x52B8]) ^ 0xFA1C9C02;
  LODWORD(STACK[0x5118]) = ((v52 & v157) << v11) + ((a2 & v157) >> v13);
  v159 = ((v8 & v158) >> 1) + 502063261 - (v8 & v158 & 0x3BD9C392) + 300;
  LODWORD(STACK[0x5110]) = ((a2 & (v159 ^ LODWORD(STACK[0x5318]))) >> v13) | ((v12 & (v159 ^ LODWORD(STACK[0x5318]))) << v15);
  v160 = ((a4 & (LODWORD(STACK[0x52E8]) ^ 0x43FC1E64)) >> 1) - 1693373773 - (a4 & (LODWORD(STACK[0x52E8]) ^ 0x43FC1E64) & 0x36225566);
  LODWORD(STACK[0x5108]) = ((v52 & (v160 ^ LODWORD(STACK[0x52B0]))) << v11) ^ (((v160 ^ LODWORD(STACK[0x52B0])) & v9) >> v14);
  v161 = LODWORD(STACK[0x5360]) ^ 0x984080C0;
  LODWORD(STACK[0x5340]) = (((v8 & (LODWORD(STACK[0x5310]) ^ 0x8D256A84)) >> 1) + 1267860511 - (v8 & (LODWORD(STACK[0x5310]) ^ 0x8D256A84) & 0x9724083E)) ^ LODWORD(STACK[0x5330]);
  v162 = ((a4 & (LODWORD(STACK[0x5300]) ^ 0xB9EF746E)) >> 1) + 1136835081 - (a4 & (LODWORD(STACK[0x5300]) ^ 0xB9EF746E) & 0x87857412);
  LODWORD(STACK[0x5100]) = ((v52 & (v162 ^ LODWORD(STACK[0x5350]))) << v15) | ((a2 & (v162 ^ LODWORD(STACK[0x5350]))) >> v14);
  v163 = ((a4 & (LODWORD(STACK[0x5198]) ^ 0x48A67F10)) >> 1) + 1956680331 - (a4 & (LODWORD(STACK[0x5198]) ^ 0x48A67F10) & 0xE9412516);
  v164 = (((v8 & v161) >> 1) - 2037767279 - (v8 & v161 & 0xD144722)) ^ LODWORD(STACK[0x52D8]);
  LODWORD(STACK[0x5398]) = ((v52 & (v163 ^ LODWORD(STACK[0x51A0]))) << v15) + (((v163 ^ LODWORD(STACK[0x51A0])) & v9) >> v13);
  v165 = (((a4 & (LODWORD(STACK[0x5358]) ^ 0x81D3C60)) >> 1) + 729149457 - (a4 & (LODWORD(STACK[0x5358]) ^ 0x81D3C60) & 0x56EBE022)) ^ LODWORD(STACK[0x5338]);
  LODWORD(STACK[0x50F8]) = ((a2 & v164) >> v13) | ((v12 & v164) << v11);
  LODWORD(STACK[0x50F0]) = ((v52 & v165) << v15) | ((v165 & v9) >> v14);
  v166 = (((v8 & (LODWORD(STACK[0x52F8]) ^ 0x991C77F2)) >> 1) + 543367426 - (v8 & (LODWORD(STACK[0x52F8]) ^ 0x991C77F2) & 0x40C64204)) ^ LODWORD(STACK[0x52E0]);
  v167 = LODWORD(STACK[0x5328]) ^ 0xF7ABF63C;
  LODWORD(STACK[0x50E8]) = ((v52 & v166) << v15) ^ ((a2 & v166) >> v13);
  v168 = (((a4 & v167) >> 1) + 1559613646 - (a4 & v167 & 0xB9EBA19C)) ^ LODWORD(STACK[0x5348]);
  LODWORD(STACK[0x50E0]) = ((v168 & v12) << v11) + ((v168 & v9) >> v14);
  v169 = ((a4 & (LODWORD(STACK[0x52F0]) ^ 0x5E37350A)) >> 1) + 1595582447 - (a4 & (LODWORD(STACK[0x52F0]) ^ 0x5E37350A) & 0xBE354FDE);
  v170 = STACK[0x53A0];
  v171 = *(STACK[0x53A0] + 4) ^ 0x83;
  LODWORD(STACK[0x50D8]) = ((v52 & (v169 ^ LODWORD(STACK[0x52A8]))) << v11) | ((a2 & (v169 ^ LODWORD(STACK[0x52A8]))) >> v14);
  HIDWORD(v172) = *(STACK[0x5170] + v171);
  LODWORD(v172) = (HIDWORD(v172) ^ 0x30) << 24;
  v173 = STACK[0x5178];
  v174 = (((v172 >> 28) ^ 0x38) << 24) | (((*(STACK[0x5178] + (*(v170 + 5) ^ 0x4CLL)) - 2 * (*(v170 + 5) ^ 0x79) + (((*(v170 + 5) ^ 0x79) - (*(v170 + 5) ^ 0x5B)) ^ 3) - 6) ^ 0x2C) << 16);
  HIDWORD(v172) = *(STACK[0x5170] + (*(v170 + 13) ^ 0x4ALL));
  LODWORD(v172) = (HIDWORD(v172) ^ 0x30) << 24;
  v175 = STACK[0x5180];
  v176 = (((v172 >> 28) ^ 9) << 16) | ((*(v175 + (*(v170 + 14) ^ 0xB5)) ^ ((*(v175 + (*(v170 + 14) ^ 0xB5)) >> 4) & 0xC | 0x21) ^ 0xF9) << 8) | ((*(v170 + 15) ^ 0xCC) + (*(v170 + 15) ^ 0xEE) + *(STACK[0x5178] + (*(v170 + 15) ^ 0x24)) - 5) ^ 0x7D;
  v177 = *(STACK[0x5180] + (*v170 ^ 0x47));
  LODWORD(v171) = ((((*(v170 + 2) ^ 0x65) + (*(v170 + 2) ^ 0x47) + *(STACK[0x5178] + (*(v170 + 2) ^ 0xAFLL)) - 5) ^ 0x3B) << 8) | ((v177 ^ (v177 >> 4) & 0xC ^ 1) << 24);
  HIDWORD(v172) = *(STACK[0x5170] + (*(v170 + 9) ^ 0xB9));
  LODWORD(v172) = (HIDWORD(v172) ^ 0x30) << 24;
  v178 = v176 | ((*(STACK[0x5188] + (*(v170 + 12) ^ 0x64)) ^ (*(v170 + 12) - ((2 * *(v170 + 12)) & 0xB6) - 37) ^ 0xAB) << 24);
  v179 = (((v172 >> 28) ^ 0xCD) << 16) | ((((*(v170 + 10) ^ 0x9E) + (*(v170 + 10) ^ 0xBC) + *(v173 + (*(v170 + 10) ^ 0x54)) - 5) ^ 0xA0) << 8) | (((*(v170 + 8) + (*(v170 + 8) ^ 0x22222222) + *(v173 + (*(v170 + 8) ^ 0xCALL)) - 5) ^ 0xAC) << 24) | *(v175 + (*(v170 + 11) ^ 0x25)) ^ 0xF5 ^ (*(v175 + (*(v170 + 11) ^ 0x25)) >> 4) & 0xC;
  v180 = (v174 & 0xFFFFFF00 | ((*(v170 + 7) ^ 4) + (*(v170 + 7) ^ 0x26) + *(STACK[0x5178] + (*(v170 + 7) ^ 0xCELL)) - 5) | ((*(STACK[0x5188] + (*(v170 + 6) ^ 2)) ^ (*(v170 + 6) + (~(2 * *(v170 + 6)) | 0x49) - 36) ^ 0xBD) << 8)) ^ 0x28;
  LODWORD(v171) = (v171 & 0xFF00FF00 | ((((*(v170 + 1) ^ 0x60) + (*(v170 + 1) ^ 0x42) + *(v173 + (*(v170 + 1) ^ 0xAALL)) - 5) ^ 0xA2) << 16) | ((*(v170 + 3) ^ 0x1B) + (*(v170 + 3) ^ 0x39) + *(v173 + (*(v170 + 3) ^ 0xD1)) - 5)) ^ 0xC7;
  LODWORD(STACK[0x5360]) = (((v171 ^ ((v171 & v8) >> 1)) & v52) << v11) + (((v171 ^ ((v171 & v8) >> 1)) & v9) >> v13);
  LODWORD(STACK[0x5358]) = (((v180 ^ ((v180 & a4) >> 1)) & a2) >> v14) ^ (((v180 ^ ((v180 & a4) >> 1)) & v12) << v15);
  LODWORD(STACK[0x5350]) = (((v179 ^ ((v179 & a4) >> 1)) & a2) >> v14) + (((v179 ^ ((v179 & a4) >> 1)) & v52) << v11);
  LODWORD(STACK[0x5368]) = (((v178 ^ ((v178 & v8) >> 1)) & v12) << v15) | (((v178 ^ ((v178 & v8) >> 1)) & v9) >> v13);
  v181 = STACK[0x51E0];
  LODWORD(STACK[0x50D0]) = ((v52 & (STACK[0x51E0] & 0x43017A2E ^ 0x8602F45C)) << v11) | ((a2 & (STACK[0x51E0] & 0x43017A2E ^ 0x8602F45C)) >> v14);
  LODWORD(v173) = STACK[0x5200];
  LODWORD(STACK[0x50C8]) = ((v9 & (STACK[0x5200] & 0x413169FA ^ 0x8262D3F5)) >> v13) | ((v12 & (STACK[0x5200] & 0x413169FA ^ 0x8262D3F5)) << v15);
  LODWORD(STACK[0x50C0]) = ((v9 & (v173 & 0x77D1796B ^ 0xEFA2F2D7)) >> v13) | ((v12 & (v173 & 0x77D1796B ^ 0xEFA2F2D7)) << v11);
  LODWORD(STACK[0x50B8]) = ((v52 & (v181 & 0x479D38D9 ^ 0x8F3A71B2)) << v15) ^ ((a2 & (v181 & 0x479D38D9 ^ 0x8F3A71B2)) >> v14);
  v182 = v173 & 0x6590B27E ^ 0xCB2164FD;
  LODWORD(v171) = (v9 & v182) >> v13;
  LODWORD(STACK[0x50B0]) = ((v52 & v182) << v15) + v171;
  LODWORD(STACK[0x50A8]) = v171 | ((v12 & v182) << v15);
  LODWORD(v171) = v181 & 0x6449C24F ^ 0xC893849F;
  LODWORD(STACK[0x50A0]) = ((v171 & v12) << v15) + ((v171 & v9) >> v14);
  v183 = v173 & 0x6449C24F ^ 0xC893849F;
  LODWORD(STACK[0x5098]) = ((v52 & v183) << v11) + ((a2 & v183) >> v13);
  LODWORD(STACK[0x5090]) = ((v12 & v183) << v15) | ((v9 & v183) >> v14);
  LODWORD(STACK[0x5088]) = ((v52 & v171) << v11) | ((a2 & v171) >> v13);
  v184 = v146 ^ LODWORD(STACK[0x5630]);
  LODWORD(STACK[0x5080]) = v184;
  LODWORD(v170) = *(*(&off_101353600 + (LODWORD(STACK[0x52C0]) ^ 0x52EFu)) + (LODWORD(STACK[0x5138]) ^ v184) % 0x101) ^ 0xE556234;
  LODWORD(STACK[0x5070]) = *(*(&off_101353600 + (LODWORD(STACK[0x52C0]) ^ 0x51B9u)) + LODWORD(STACK[0x5140]) % 0x101 - 2) + 725873937;
  v185 = v181 & 0x3E3C8C6C ^ 0x7C7918D8;
  LODWORD(STACK[0x5068]) = ((v185 & v12) << v15) | ((v185 & v9) >> v14);
  v186 = v173 & 0x3E3C8C6C ^ 0x7C7918D8;
  LODWORD(STACK[0x5060]) = ((v9 & v186) >> v13) | ((v12 & v186) << v15);
  v187 = ((v52 & v185) << v11) + ((a2 & v185) >> v14);
  v188 = v173 & 0xCA31D11 ^ 0x19463A22;
  LODWORD(STACK[0x5050]) = ((v12 & v188) << v11) + ((v9 & v188) >> v14);
  LODWORD(v171) = v181 & 0xCA31D11 ^ 0x19463A22;
  LODWORD(STACK[0x5048]) = ((v52 & v171) << v15) + ((a2 & v171) >> v13);
  LODWORD(STACK[0x5040]) = ((a2 & v188) >> v14) + ((v12 & v188) << v15);
  LODWORD(STACK[0x5038]) = ((v52 & v171) << v11) | ((v171 & v9) >> v13);
  v189 = v181 & 0x2A8994E7 ^ 0x551329CE;
  v190 = (v189 & v12) << v15;
  LODWORD(STACK[0x5030]) = ((a2 & v189) >> v14) + v190;
  LODWORD(STACK[0x5028]) = ((v189 & v9) >> v13) | v190;
  LODWORD(v171) = v181 & 0x3759DE4F ^ 0x6EB3BC9F;
  v191 = ((v171 & v9) >> v13) + ((v171 & v12) << v15);
  v192 = v173 & 0xFD3472B ^ 0x1FA68E56;
  LODWORD(STACK[0x5020]) = ((a2 & v192) >> v13) | ((v12 & v192) << v11);
  v193 = v52 & v171;
  LODWORD(v171) = a2 & v171;
  v194 = v193 << v11;
  LODWORD(STACK[0x5018]) = v194 + (v171 >> v14);
  LODWORD(STACK[0x5010]) = v194 + (v171 >> v13);
  LODWORD(STACK[0x5008]) = a4 & 0x98F97626;
  LODWORD(v171) = ((a4 & 0x98F97626) >> 1) ^ 0x98F97627;
  v195 = (v52 & v171) << v15;
  LODWORD(STACK[0x5000]) = v195 + ((v171 & v9) >> v13);
  LODWORD(STACK[0x4FF8]) = v195 + ((a2 & v171) >> v14);
  v196 = v173 & 0x4C7CBB13 ^ 0x98F97627;
  v197 = (a2 & v196) >> v14;
  v198 = (v12 & v196) << v11;
  LODWORD(STACK[0x4FF0]) = v197 | ((v12 & v196) << v15);
  LODWORD(STACK[0x4FE8]) = v197 + v198;
  LODWORD(STACK[0x4FE0]) = ((v9 & v196) >> v13) | v198;
  LODWORD(STACK[0x4FD8]) = ((v52 & v196) << v15) | ((v9 & v196) >> v14);
  LODWORD(STACK[0x4FD0]) = ((a2 & v171) >> v13) | ((v171 & v12) << v11);
  v199 = v173 & 0x1928D73B ^ 0x3251AE76;
  LODWORD(v171) = v9 & v199;
  v200 = (v9 & v199) >> v13;
  LODWORD(STACK[0x4FC8]) = ((v52 & v199) << v11) + v200;
  v201 = (a2 & v199) >> v14;
  v202 = v12 & v199;
  LODWORD(STACK[0x4FC0]) = v201 | (v202 << v11);
  LODWORD(STACK[0x4FB8]) = v200 + (v202 << v11);
  v203 = v181 & 0x1928D73B ^ 0x3251AE76;
  LODWORD(STACK[0x4FB0]) = ((v52 & v203) << v11) | ((a2 & v203) >> v13);
  v204 = v52 & v192;
  v205 = (v9 & v192) >> v13;
  LODWORD(STACK[0x4FA8]) = (v204 << v11) | v205;
  LODWORD(STACK[0x4FA0]) = (v204 << v15) + v205;
  v206 = v181 & 0xFD3472B ^ 0x1FA68E56;
  v207 = (a2 & v206) >> v14;
  LODWORD(STACK[0x4F98]) = v207 | ((v206 & v12) << v15);
  LODWORD(STACK[0x4F90]) = v207 | ((v206 & v12) << v11);
  LODWORD(STACK[0x53A0]) = (((LODWORD(STACK[0x5390]) ^ 0x70D12764) + 1558358855) ^ ((LODWORD(STACK[0x5390]) ^ 0x97AF5646) - 1147348379) ^ ((LODWORD(STACK[0x5390]) ^ 0x29BA2792) + 92908465)) - 1749059242;
  v208 = STACK[0x5340];
  v209 = (v12 & STACK[0x5340]) << v11;
  LODWORD(STACK[0x4F88]) = v209;
  LODWORD(STACK[0x4F80]) = ((v9 & v208) >> v13) ^ v209;
  v210 = v173 & 0x119A1FD3 ^ 0x23343FA7;
  v211 = v12 & v210;
  v212 = (v9 & v210) >> v14;
  v213 = v181 & 0x119A1FD3 ^ 0x23343FA7;
  LODWORD(v175) = (a2 & v213) >> v13;
  LODWORD(STACK[0x4F70]) = v175;
  LODWORD(STACK[0x4F68]) = ((v52 & v213) << v15) + v175;
  LODWORD(STACK[0x4F60]) = v211 << v11;
  LODWORD(STACK[0x4F78]) = v212;
  LODWORD(STACK[0x4F58]) = (v211 << v15) + v212;
  LODWORD(STACK[0x4F50]) = (v52 & v213) << v11;
  v214 = v181 & 0x6590B27E ^ 0xCB2164FD;
  LODWORD(STACK[0x4F48]) = (v214 & v12) << v11;
  v215 = (a2 & v214) >> v14;
  LODWORD(STACK[0x4F40]) = v215;
  LODWORD(STACK[0x4F38]) = ((v52 & v214) << v11) | v215;
  LODWORD(STACK[0x5078]) = v170;
  LODWORD(STACK[0x4F30]) = 2 * v170 + 232931554;
  LODWORD(STACK[0x4F28]) = (v52 & v186) << v11;
  LODWORD(STACK[0x4F20]) = (a2 & v186) >> v13;
  v216 = v173 & 0x2A8994E7 ^ 0x551329CE;
  v217 = (v52 & v216) << v11;
  LODWORD(STACK[0x4F18]) = v217;
  LODWORD(STACK[0x4F10]) = v217 | ((v9 & v216) >> v13);
  LODWORD(STACK[0x4F08]) = (a2 & v216) >> v14;
  v218 = v173 & 0x3759DE4F ^ 0x6EB3BC9F;
  v219 = (v12 & v218) << v15;
  v220 = (v52 & v218) << v11;
  v221 = v9 & v218;
  v222 = (a2 & v218) >> v14;
  v223 = LODWORD(STACK[0x5398]) ^ LODWORD(STACK[0x5130]);
  LODWORD(STACK[0x4EE8]) = v223;
  LODWORD(STACK[0x4EE0]) = v223 ^ v191;
  LODWORD(STACK[0x4ED8]) = (a2 & v203) >> v14;
  LODWORD(STACK[0x4ED0]) = ((a2 & v203) >> v14) + ((v203 & v12) << v15);
  LODWORD(STACK[0x5398]) = (v52 & v203) << v15;
  LODWORD(STACK[0x4EC8]) = ((v203 ^ v208) & v9) >> v13;
  v224 = (v52 & v206) << v15;
  v225 = (v206 & v9) >> v14;
  LODWORD(STACK[0x4EB0]) = v221 >> v13;
  v226 = v221 >> v14;
  v227 = LODWORD(STACK[0x53B0]);
  LODWORD(STACK[0x4F00]) = v219;
  LODWORD(STACK[0x4EA8]) = v219 + v226;
  LODWORD(STACK[0x4EA0]) = v202 << v15;
  LODWORD(STACK[0x4E98]) = v171 >> v14;
  LODWORD(STACK[0x4E90]) = LODWORD(STACK[0x5320]) ^ 0x93D9E003 ^ LODWORD(STACK[0x51A0]);
  v228 = *(STACK[0x57D8] + 8 * LODWORD(STACK[0x52C0]));
  LODWORD(STACK[0x5058]) = v187;
  LODWORD(STACK[0x4E88]) = -v187;
  LODWORD(STACK[0x4EF8]) = v220;
  LODWORD(STACK[0x4EF0]) = v222;
  LODWORD(STACK[0x4E80]) = v220 + v222;
  LODWORD(STACK[0x4E78]) = -LODWORD(STACK[0x5128]);
  LODWORD(STACK[0x4EC0]) = v224;
  LODWORD(STACK[0x4EB8]) = v225;
  LODWORD(STACK[0x4E70]) = v224 + v225;
  v229 = STACK[0xD638];
  LODWORD(STACK[0x5390]) = STACK[0x57B0];
  return v228(v229, v227, 2137339555);
}

uint64_t sub_1004B78AC(int a1, uint64_t a2, unsigned __int8 a3, int a4, int a5, int a6, int a7, int a8)
{
  LODWORD(STACK[0x4000]) = LODWORD(STACK[0x4DA8]) | LODWORD(STACK[0x4E08]);
  LODWORD(STACK[0x3378]) = LODWORD(STACK[0x4DA0]) | LODWORD(STACK[0x4E00]);
  LODWORD(STACK[0x3380]) = LODWORD(STACK[0x4D98]) + LODWORD(STACK[0x4DB8]);
  LODWORD(STACK[0x4E70]) = STACK[0x4DF0] & (v14 ^ 0x8B8B038A);
  LODWORD(STACK[0x4E34]) = STACK[0x4E28] & (a8 ^ 0xABC06E08);
  LODWORD(STACK[0x4E60]) = v13 & (a7 ^ 0xC32283D7);
  LODWORD(STACK[0x4E28]) = STACK[0x4E50] & (v12 ^ 0xCB7868F3);
  LODWORD(STACK[0x4EC8]) = ((((v15 + 956270604) & 0xC70077EF) - 1835013867) ^ a6) & STACK[0x4E44];
  LODWORD(STACK[0x4E08]) = v11 & (a4 ^ 0x7DD85885);
  LODWORD(STACK[0x4E44]) = a5 & (a3 ^ 0xE3D21198);
  LODWORD(STACK[0x4E00]) = v10 & (a1 ^ 0x93C528C6);
  LODWORD(STACK[0x4E50]) = v8 & (v9 ^ 0x89A35D74);
  return (*(STACK[0x57D8] + 8 * v15))();
}

uint64_t sub_1004B7A44(int a1, int a2, int a3, uint64_t a4, unsigned __int8 a5, int a6, uint64_t a7, unsigned __int8 a8)
{
  v17 = STACK[0x56C0] ^ 4;
  v18 = STACK[0x56C0] ^ v11 ^ -(STACK[0x56C0] ^ v11) ^ (v10 - v17);
  v19 = LODWORD(STACK[0x5680]) - 2 * (STACK[0x56D0] & 0x92);
  v20 = STACK[0x57C0];
  LOBYTE(v17) = *(STACK[0x57C0] + v17) ^ (v18 - ((2 * v18 + 44) & 0xDF) - 123);
  v21 = *(STACK[0x57C0] + ((v19 + 376) ^ 0x96)) ^ (v19 + 120 - ((2 * (v19 + 120)) & 0xDF) - 17);
  v22 = *(v20 + (a6 ^ (v14 - 117))) ^ a6 ^ *(v20 + (STACK[0x56E0] ^ 4));
  LODWORD(STACK[0x56E0]) = STACK[0x56E0] ^ 0x4B ^ (v22 + (~(2 * v22) | 0x65) - 50);
  v23 = STACK[0x5700];
  v24 = *(v20 + (a2 ^ 0x9DLL)) ^ a2 ^ *(v20 + (STACK[0x5700] ^ 4));
  v25 = v24 - ((2 * v24) & 0xA8);
  v26 = STACK[0x5610];
  v27 = *(v20 + (v15 ^ 0x87)) ^ v15 ^ *(v20 + (STACK[0x5610] ^ 4));
  v28 = v14;
  LODWORD(STACK[0x5600]) = v14;
  LODWORD(STACK[0x5700]) = v23 ^ 0x4D ^ (v25 - 44);
  v29 = (v12 - ((2 * v12) & 0xFFFFFFDF) - 17) ^ 0xFFFFFFA4 ^ *(v20 + (v12 ^ 0xA4));
  v30 = STACK[0x5780] ^ 0xFFFFFFEB ^ *(v20 + (STACK[0x5780] ^ 4));
  LODWORD(STACK[0x56F0]) = v26 ^ a1 ^ (v27 - ((2 * v27) & 0x2C) + 22);
  LODWORD(STACK[0x56D0]) = v30 + v29 - 2 * (v30 & v29);
  v31 = a8 ^ (v21 - ((2 * v21) & 0xDF) - 17) ^ 0x13 ^ *(v20 + (a8 ^ 0x13));
  LOBYTE(v26) = v16 ^ (v17 - ((2 * v17) & 0xDF) - 17) ^ 0xD1 ^ *(v20 + (v16 ^ 0xD1));
  v32 = *(v20 + (v9 ^ 0xA6)) ^ v9 ^ *(v20 + (STACK[0x5790] ^ 4));
  v33 = STACK[0x5790] ^ 0xD2 ^ (v32 - ((2 * v32) & 0xE0) + 112);
  v34 = STACK[0x5710];
  LOBYTE(v17) = *(v20 + (STACK[0x5710] ^ 4)) ^ *(v20 + (a5 ^ 0xD4));
  STACK[0x5790] = v8;
  LODWORD(STACK[0x5780]) = v8 ^ 0xFFFFFFC4;
  LOBYTE(v29) = a5 ^ v34 ^ (((2 * v17) & 0x5E) - v17 - 48);
  v35 = *(v20 + (STACK[0x5720] ^ 4)) ^ *(v20 + (a3 ^ 0xD0));
  v36 = STACK[0x5720] ^ a3 ^ 0x22 ^ (v35 - 2 * (v35 & 3) + 3);
  LOBYTE(v30) = v36 - ((2 * v36) & 0xEA);
  LOBYTE(v36) = v13 ^ *(v20 + (STACK[0x5730] ^ 4));
  LOBYTE(v36) = (*(v20 + (v13 ^ 0xDFLL)) ^ v36) - ((2 * (*(v20 + (v13 ^ 0xDFLL)) ^ v36)) & 0x34);
  v37 = STACK[0x5740];
  v38 = *(v20 + (STACK[0x5630] ^ 0x2FLL)) ^ STACK[0x5630] ^ *(v20 + (STACK[0x5740] ^ 4));
  LOBYTE(v17) = STACK[0x5730] ^ (v36 + 26);
  LODWORD(STACK[0x5730]) = LODWORD(STACK[0x5700]);
  LODWORD(STACK[0x5710]) = LODWORD(STACK[0x56F0]) << 8;
  LODWORD(STACK[0x5720]) = LODWORD(STACK[0x56D0]);
  LODWORD(STACK[0x5700]) = v26 << 8;
  LODWORD(STACK[0x56F0]) = v31;
  LODWORD(STACK[0x56C0]) = v33 << 24;
  LODWORD(STACK[0x56D0]) = v29;
  LODWORD(STACK[0x5680]) = (v30 - 11);
  LODWORD(STACK[0x5660]) = (v17 ^ 0xC1) << 8;
  LODWORD(STACK[0x5740]) = v37 ^ 0x2A ^ (v38 - ((2 * v38) & 0x2E) - 105);
  return (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x5600])))((v28 - 20246) - 1);
}

uint64_t sub_1004B81B4()
{
  v1 = STACK[0xB658];
  *(v1 - 0x30BDFED8F32E6565) = -769884011;
  *(v1 - 0x30BDFED8F32E6561) = v0;
  return (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1888])))();
}

uint64_t sub_1004B8274@<X0>(int a1@<W8>)
{
  v1 = a1 - 11699;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (a1 ^ 0x241B)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1004B82A0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a2 == ((v6 - 10845) | 0x1047) + 354017245)
  {
    v8 = v7;
  }

  else
  {
    v8 = a6;
  }

  LODWORD(STACK[0x53A8]) = v8;
  v9 = *(STACK[0x57D8] + 8 * v6);
  LODWORD(STACK[0x53A0]) = 189;
  return v9();
}

uint64_t sub_1004B8354(int a1)
{
  v5 = v3 > 0xF;
  v4 = (v2 - 1) & 0xF;
  v5 = v5 && STACK[0x3D70] - v1 - v2 + v4 > 0xF;
  v8 = v5 && STACK[0x3D78] - v1 - v2 + v4 > 0xF && STACK[0x3D80] - v1 - v2 + v4 >= ((a1 + 995697764) & 0xC4A6EFE5) - 28593;
  return (*(STACK[0x57D8] + 8 * ((254 * v8) ^ a1)))();
}

uint64_t sub_1004B84AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v10 = (STACK[0x57A0] & 2) == 0;
  v11 = STACK[0x5640];
  if ((STACK[0x57A0] & 2) == 0)
  {
    v11 = STACK[0x5610];
  }

  LODWORD(STACK[0x53D0]) = v11;
  v12 = STACK[0x5600];
  if (v10)
  {
    v12 = STACK[0x55F0];
  }

  LODWORD(STACK[0x5640]) = v12;
  v13 = STACK[0x5440];
  if (v10)
  {
    v13 = STACK[0x5430];
  }

  LODWORD(STACK[0x5570]) = v13;
  if (v10)
  {
    v14 = v7;
  }

  else
  {
    v14 = v6;
  }

  LODWORD(STACK[0x5238]) = v14;
  v15 = (STACK[0x5780] & 2) == 0;
  if ((STACK[0x5780] & 2) != 0)
  {
    v16 = v8;
  }

  else
  {
    v16 = v9;
  }

  LODWORD(STACK[0x53B8]) = v16;
  v17 = STACK[0x53D8];
  if (v15)
  {
    v17 = STACK[0x5388];
  }

  LODWORD(STACK[0x5440]) = v17;
  v18 = STACK[0x53F0];
  if (!v15)
  {
    v18 = STACK[0x53E0];
  }

  LODWORD(STACK[0x5230]) = v18;
  return (*(STACK[0x57D8] + 8 * (((((a6 + 399658614) & 0x939FBBF) + 32882) * (a6 < 0xD1CEAB18)) ^ (a6 + 554453558))))(-1283227691);
}

uint64_t sub_1004B8668(unsigned int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v22 = *(*(v13 + 8 * (v12 + v19)) - 8 + 4 * (v17 ^ v20)) * a2;
  v23 = v17 ^ (2 * (v17 & a8));
  v24 = v22 ^ (v22 >> 3) ^ (v22 >> 1) ^ v9;
  v25 = v23 << v11;
  v26 = (v23 & v10) >> v8;
  v27 = STACK[0x5760];
  v28 = (((v24 ^ (2 * (v24 & a8))) & v14) << v11) ^ LODWORD(STACK[0x5630]) ^ (((v24 ^ (2 * (v24 & a8))) & a1) >> v8);
  v29 = *(v13 + 8 * (v12 ^ v18));
  *(STACK[0x55C0] + 4 * (v25 ^ v27 ^ v26)) = v28;
  v30 = (*(v29 - 8 + 2 * ((v17 ^ v21) + 769)) + (v17 ^ v16)) ^ 0xFCB3;
  *(v15 + 4 * ((v26 | v25) ^ LODWORD(STACK[0x5740]))) = (((v30 ^ (2 * (v30 & STACK[0x5750]))) & v14) << v11) ^ v27 ^ (((v30 ^ (2 * (v30 & STACK[0x5750]))) & a1) >> v8);
  return (*(STACK[0x57D8] + 8 * ((28 * (v17 != 255)) | v12)))();
}

uint64_t sub_1004B8860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x6578];
  v9 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v7);
  return (*(v9 + 8 * ((v7 + 4651) ^ v7)))(v8, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1004B88FC()
{
  v0 = STACK[0x51B8] - 2681;
  v1 = STACK[0x57D8];
  v2 = STACK[0xA6C];
  STACK[0xCB60] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0xA6C]));
  return (*(v1 + 8 * (v0 ^ 0x544D ^ v2)))();
}

uint64_t sub_1004B897C()
{
  v1 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x20C ^ (v0 + 4088))))();
}

uint64_t sub_1004B89B0()
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

uint64_t sub_1004B8AE0()
{
  v0 = STACK[0x51B8] - 21023;
  *(STACK[0xE5A0] + 516) = 1;
  return (*(STACK[0x57D8] + 8 * (v0 ^ 0x1023)))();
}

uint64_t sub_1004B8B3C@<X0>(__int16 a1@<W8>)
{
  v1 = STACK[0x51B8];
  LOWORD(STACK[0xD57E]) = a1;
  return (*(STACK[0x57D8] + 8 * (v1 - 17527)))();
}

uint64_t sub_1004B8BDC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X4>, int a3@<W8>)
{
  v3 = STACK[0xCA50];
  v4 = STACK[0x7CC8];
  STACK[0x5CC0] = 0x1A586E20345C03A4;
  STACK[0x9DF0] = v4;
  LODWORD(STACK[0x9DC4]) = STACK[0xBD30];
  STACK[0x7B30] = v3;
  LODWORD(STACK[0x6DD4]) = -769884028;
  STACK[0x96F8] = 0;
  LODWORD(STACK[0x8814]) = -769884012;
  STACK[0xCDA0] = &STACK[0xB8D8];
  STACK[0x5888] = &STACK[0xB288];
  LOBYTE(STACK[0xADC7]) = 0;
  LODWORD(STACK[0x99E4]) = -2119397337;
  return (*(STACK[0x57D8] + 8 * a3))(104, a1, 0x30BDFED8F32E6831, 0x36584CF65D907F3ELL, a2, 0xB83E331A657D2BFCLL);
}

uint64_t sub_1004B8CE4@<X0>(int a1@<W8>)
{
  STACK[0x9330] = STACK[0x8A98];
  STACK[0x9D60] = 0;
  LODWORD(STACK[0xCD3C]) = 2101965948;
  STACK[0xAED0] = 0;
  STACK[0xCBC0] = &STACK[0xAED0];
  LODWORD(STACK[0x94E4]) = -1300136059;
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_1004B8DB0@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xDBE0]) = v2;
  LODWORD(STACK[0xDBDC]) = a1;
  LODWORD(STACK[0xDBD8]) = v3;
  v5 = (a1 + 10) <= LODWORD(STACK[0x9E5C]) && v3 == (v1 ^ 0xF778151F);
  return (*(STACK[0x57D8] + 8 * ((v5 * ((v1 ^ 0x6663) - 14300)) | v1)))();
}

uint64_t sub_1004B8E74@<X0>(uint64_t a1@<X8>)
{
  *v4 = v3;
  *(v3 + 8) = *(a1 + v2);
  *(a1 + v2) = v3;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1004B8EAC()
{
  v7 = v1 < LODWORD(STACK[0x57C0]);
  v8 = v4 & v0;
  v9 = 16 * v5;
  v10 = STACK[0x57D8];
  v11 = (*(STACK[0x57D8] + 8 * v6))(*(v3 + v9));
  *(v3 + v9) = 0;
  v12 = v5 + 1644853213 < v1;
  if (v7 != v5 + 1 > 0x9DF58823)
  {
    v12 = v7;
  }

  return (*(v10 + 8 * ((v12 * (v8 ^ 0x66)) ^ v2)))(v11);
}

uint64_t sub_1004B8F64()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0xB485EDCD)))();
  return (*(v1 + 8 * (v0 ^ 0xB485BD0F ^ (24836 * (v0 > 41 * (v0 ^ 0xB48591BB) - 1543636664)))))(v2);
}

uint64_t sub_1004B9094@<X0>(unsigned int a1@<W8>)
{
  v6 = 8 * ((v1 | ((v1 < a1) << 32)) + 0x309C7300522D1EEELL) + 0x7B1C67FD5EAB1AB0;
  *(v4 + v6) = *(v3 + v6) ^ 0x7A7A7A7A7A7A7A7ALL;
  v7 = v1 + 1206274961 < v5;
  if (v5 < 0x49E3C94C != v1 + 1206274961 < 0x49E3C94C)
  {
    v7 = v5 < 0x49E3C94C;
  }

  return (*(STACK[0x57D8] + 8 * ((4042 * !v7) ^ v2)))();
}

uint64_t sub_1004BAF04()
{
  v1 = STACK[0x51B8] ^ 0x5FF3;
  LODWORD(STACK[0x79EC]) = v0;
  return (*(STACK[0x57D8] + 8 * ((11858 * (v0 == v1 - 143115028)) ^ LODWORD(STACK[0x2D78]))))();
}

uint64_t sub_1004BAFC4(uint64_t a1)
{
  v2 = STACK[0x66C8];
  STACK[0xA8B0] = STACK[0x66C8];
  LODWORD(STACK[0x5884]) = (((v1 - 14405 + (LODWORD(STACK[0x9124]) ^ 0xFC54C1D1) + 61546014) ^ ((LODWORD(STACK[0x9124]) ^ 0x8A16E6FF) + 1978210561) ^ ((LODWORD(STACK[0x9124]) ^ 0xA45EA7BA) + 1537300550)) - 769883997) & 0xFFFFFFF0 ^ 0xD21C8094;
  STACK[0x7ED0] = v2;
  STACK[0xC880] = 0xFB6342D37F4CDB8CLL;
  LODWORD(STACK[0xCD80]) = -1264939555;
  return (*(STACK[0x57D8] + 8 * (v1 - 17208)))(a1, 272629776, 410912332, 1543499262, 2265206393, 3965507692, 4221484704, 0x1B3EC18598D49E09);
}

uint64_t sub_1004BB674(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v17 = *(a8 + 4 * (v9 * v10 - 41442092 - ((((v9 * v10 - 41442092) * v13) >> 32) >> 12) * v12));
  v18 = ((((4 * a4) ^ 0xE500) + 1268194486 + (v17 ^ 0xEFCB820C)) ^ ((v17 ^ 0x12221C6E) - 1233222696) ^ ((v17 ^ 0xFDE99EE8) + 1505034578)) * v16 - 1675164923;
  *(a8 + 4 * (v9 * v10 - 41442092 - ((((v9 * v10 - 41442092) * v13) >> 32) >> 12) * v12)) = *(v14 + v18 - ((((v18 >> 3) * v15) >> 32) >> 7) * v11) ^ a7;
  return (*(STACK[0x57D8] + 8 * ((13 * (v9 + 1 == v8 + 256)) ^ a4)))();
}

uint64_t sub_1004BB98C()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x57D8];
  STACK[0x8580] = *(STACK[0x57D8] + 8 * (STACK[0x51B8] - 20160));
  return (*(v1 + 8 * (v0 - 18047)))();
}

uint64_t sub_1004BBA10@<X0>(int a1@<W8>)
{
  v3 = STACK[0x9E0];
  LODWORD(STACK[0x1D4E0]) = STACK[0x9E0] + a1 + 1789273026 + 18;
  LODWORD(STACK[0x1D4C8]) = ((a1 + 1789273026) ^ 0xE35) - v3;
  LODWORD(STACK[0x1D4D0]) = v3;
  STACK[0x1D4D8] = v3 + v1;
  STACK[0x1D4C0] = STACK[0x9D8];
  LODWORD(STACK[0x1D4D4]) = (a1 + 1789273026) ^ v3;
  LODWORD(STACK[0x1D4CC]) = v3 + a1 + 1451493860;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (a1 ^ 0x2462)))(v2 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4E4])))(v5);
}

uint64_t sub_1004BBC8C@<X0>(int a1@<W8>)
{
  v3 = 551690071 * ((v2 + 0x5CBC3D8044135CAALL - 2 * ((v2 - 240) & 0x5CBC3D8044135D9ALL)) ^ 0x2D216F4E0AFE0ECDLL);
  LODWORD(STACK[0x1D4D0]) = v3;
  STACK[0x1D4E0] = v3 + 84;
  LODWORD(STACK[0x1D4CC]) = a1 + 1442580111 - v3;
  LODWORD(STACK[0x1D4C4]) = v3 ^ (a1 + 1442580111) ^ 0xFF5;
  LODWORD(STACK[0x1D4C0]) = (a1 - 1079089617) ^ v3;
  LODWORD(STACK[0x1D4C8]) = ((a1 + 1442580111) ^ 0x1FE7) - v3;
  STACK[0x1D4D8] = v1 - v3;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (a1 ^ 0x2411)))(v2 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4D4])))(v5);
}

uint64_t sub_1004BBE8C()
{
  v0 = 7 * LODWORD(STACK[0x1F64]);
  v1 = STACK[0x51B8] - 22613;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x2468)))(16);
  *STACK[0x5C00] = v3;
  return (*(v2 + 8 * (v1 ^ 0x414B ^ ((v3 != 0) * (v0 - 1236)))))();
}

uint64_t sub_1004BBF0C()
{
  v1 = STACK[0x51B8] - 16911;
  v2 = LODWORD(STACK[0x9E74]) != ((STACK[0x51B8] - 19398) | 0x5222) + ((STACK[0x51B8] - 19660) ^ 0xFFFFAAC4);
  STACK[0xB300] = STACK[0x8020] + 16;
  STACK[0x7320] = v0;
  return (*(STACK[0x57D8] + 8 * ((241 * v2) ^ v1)))();
}

uint64_t sub_1004BBFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x5760] & 0x7F;
  LODWORD(STACK[0x5640]) = v5;
  LODWORD(STACK[0x5700]) = 16843009 * v5;
  v6 = 16843009 * LODWORD(STACK[0x5790]);
  LODWORD(STACK[0x5680]) = v6;
  LODWORD(STACK[0x5240]) = LODWORD(STACK[0x5770]) ^ v6;
  v7 = LODWORD(STACK[0x5740]) ^ 0x84848484;
  STACK[0x57C0] &= 7uLL;
  LODWORD(STACK[0x5238]) = v7;
  return (*(STACK[0x57D8] + 8 * v4))(a1, a2, a3, a4, 0xE580B17D8CC5E551, 5477628, 6464588, 9647534);
}

uint64_t sub_1004BC110()
{
  v0 = STACK[0x24F8];
  v1 = STACK[0x7ED8];
  STACK[0xE830] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v1 + 48;
  v2 = **(&off_101353600 + SLODWORD(STACK[0x24F4]));
  LOBYTE(STACK[0x1D1E1]) = *v2 ^ 0x9C;
  LOBYTE(STACK[0x1D1E2]) = LODWORD(STACK[0x24E8]) ^ 0xD6 ^ v2[1];
  LOBYTE(STACK[0x1D1E3]) = v2[2] ^ 0x9C;
  LOBYTE(STACK[0x1D1E4]) = v2[3] ^ (89 * (v0 ^ 0x22) - 22);
  LOBYTE(STACK[0x1D1E5]) = v2[4] ^ 0x9C;
  LOBYTE(STACK[0x1D1E6]) = v2[5] ^ 0x9C;
  LOBYTE(STACK[0x1D1E7]) = v2[6] ^ 0x9C;
  LOBYTE(STACK[0x1D1E8]) = v2[7] ^ 0x9C;
  LOBYTE(STACK[0x1D1E9]) = v2[8] ^ 0x9C;
  LOBYTE(STACK[0x1D1EA]) = v2[9] ^ 0x9C;
  LOBYTE(STACK[0x1D1EB]) = v2[10] ^ 0x9C;
  LOBYTE(STACK[0x1D1EC]) = v2[11] ^ 0x9C;
  LOBYTE(STACK[0x1D1ED]) = v2[12] ^ 0x9C;
  LOBYTE(STACK[0x1D1EE]) = v2[13] ^ 0x9C;
  LOBYTE(STACK[0x1D1EF]) = v2[14] ^ 0x9C;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x24F0])))();
  v5 = (*(v3 + 8 * SLODWORD(STACK[0x24EC])))(0, &STACK[0x1D1E1], v4);
  STACK[0xE838] = v5;
  return (*(v3 + 8 * (v0 ^ (2 * (v5 == 0)))))();
}

uint64_t sub_1004BC27C()
{
  v1 = STACK[0x57D8];
  STACK[0x8D48] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 46680))(4427);
}

uint64_t sub_1004BC2CC()
{
  v1 = STACK[0x57D8];
  STACK[0x9A00] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * ((5688 * ((v0 - 985201954) > 0x92024391)) ^ (v0 + 2877))))();
}

uint64_t sub_1004BC378()
{
  v1 = *(STACK[0x5F90] - 0x683CBC57EAB92A3ELL);
  STACK[0x8878] = 0;
  return (*(STACK[0x57D8] + 8 * (((v1 == 0x308E083E0C524CBELL) * (((v0 - 5128) | 0xC0) ^ (v0 - 4932))) ^ v0)))();
}

uint64_t sub_1004BC3F0(_DWORD *a1)
{
  v1 = a1[851];
  v2 = *(STACK[0x57D8] + 8 * (((a1[795] == (a1[850] ^ 0x4606)) * (v1 - 25103)) ^ a1[852]));
  a1[853] = v1;
  return v2();
}

uint64_t sub_1004BC434@<X0>(char a1@<W8>)
{
  LOBYTE(STACK[0x64E7]) = a1;
  STACK[0xA260] = v3;
  LODWORD(STACK[0x87D4]) = v2;
  return (*(STACK[0x57D8] + 8 * (v1 - 18477)))();
}

uint64_t sub_1004BC5A8(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v7 = STACK[0x51B8];
  v8 = 1978732275 * (v3 - (*(*v4 + (*v6 & a2)) & 0x7FFFFFFF ^ a3)) - LODWORD(STACK[0x7884]) + 1869510067;
  v9 = STACK[0x51B8] - 1079089617;
  v10 = 551690071 * ((v5 - 240) ^ 0x719D52CE4EED5357);
  LODWORD(STACK[0x1D4C4]) = v10 ^ (STACK[0x51B8] + 514260100) ^ 0xD48;
  STACK[0x1D4E0] = v10 + 652316651;
  LODWORD(STACK[0x1D4C8]) = ((v7 + 514260100) ^ 0x64) - v10;
  LODWORD(STACK[0x1D4C0]) = v9 ^ v10;
  LODWORD(STACK[0x1D4CC]) = v7 + 514260100 - v10;
  LODWORD(STACK[0x1D4D0]) = v10;
  STACK[0x1D4D8] = v8 - v10;
  v11 = STACK[0x57D8];
  v12 = (*(STACK[0x57D8] + 8 * (v7 ^ 0x2411)))(v5 - 240);
  return (*(v11 + 8 * SLODWORD(STACK[0x1D4D4])))(v12);
}

uint64_t sub_1004BC6BC@<X0>(uint64_t a1@<X6>, uint64_t a2@<X8>)
{
  v15 = v3 + v2 + 28;
  v16 = *v5 & 0xFFFFFFFFFFFFFFF8;
  v17 = *(*v13 + ((((a2 + v3) & 0xFFFFFFF8) + v7) & v16));
  v18 = (v17 + __ROR8__((a2 + v3) & 0xFFFFFFFFFFFFFFF8, 8)) ^ v14;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (v20 + v19 - (((3 * (v4 ^ 0x265u)) ^ 0x31DEF5C220C25CDDLL) & (2 * (v20 + v19))) + 0x18EF7AE110611DE0) ^ 0xDDD380F2C9177A9;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (((2 * (v23 + v22)) | 0x6235231A9F7778ECLL) - (v23 + v22) - 0x311A918D4FBBBC76) ^ 0x136F454A778E85EDLL;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ a1;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ v12;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = *(*v13 + (((v15 & 0xFFFFFFF8) + ((1930594628 - (v15 & 0xFFFFFFF8)) | v6) + (((v15 & 0xFFFFFFF8) + 216889019) | v6) + 971146768) & v16));
  v32 = __ROR8__((((2 * (v30 + v29)) & 0x42CC5E0E69CBFFACLL) - (v30 + v29) + 0x5E99D0F8CB1A0029) ^ 0xF6BFF05D92C8DA51, 8);
  v33 = (((2 * (v30 + v29)) & 0x42CC5E0E69CBFFACLL) - (v30 + v29) + 0x5E99D0F8CB1A0029) ^ 0xF6BFF05D92C8DA51 ^ __ROR8__(v29, 61);
  v34 = (v31 + __ROR8__(v15 & 0xFFFFFFFFFFFFFFF8, 8)) ^ v14;
  v35 = v34 ^ __ROR8__(v31, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ v8;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ v9;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = __ROR8__((v32 + v33) ^ v10, 8) + ((v32 + v33) ^ v10 ^ __ROR8__(v33, 61));
  v42 = (((2 * (v40 + v39)) | 0x5FE40B129D3AF21CLL) - (v40 + v39) + 0x500DFA76B16286F2) ^ 0x4A5D1F3A602045D3;
  v43 = v42 ^ __ROR8__(v39, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ v12;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = __ROR8__(v44, 8);
  v47 = __ROR8__((0x7BF0882AAB50182CLL - ((v46 + v45) | 0x7BF0882AAB50182CLL) + ((v46 + v45) | 0x840F77D554AFE7D3)) ^ 0x2C2957700D7D3DABLL, 8);
  v48 = (0x7BF0882AAB50182CLL - ((v46 + v45) | 0x7BF0882AAB50182CLL) + ((v46 + v45) | 0x840F77D554AFE7D3)) ^ 0x2C2957700D7D3DABLL ^ __ROR8__(v45, 61);
  v49 = (v47 + v48) ^ v10;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = __ROR8__(v49, 8);
  *v15 = (((v51 + v50 - ((2 * (v51 + v50)) & 0xFBA7DAE45E67523ELL) + 0x7DD3ED722F33A91FLL) ^ 0xBC1025A08BF6E137) >> (8 * (v15 & 7u))) ^ ((v41 ^ v11) >> (8 * ((a2 + v3) & 7))) ^ *(a2 + v3);
  return (*(STACK[0x57D8] + 8 * ((6528 * (v3 == 15)) ^ v4)))();
}

uint64_t sub_1004BC9E4()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))();
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1004BCA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = v6 ^ 0x748F;
  v9 = ((v6 ^ 0x748F) - 9349) | 0x5002;
  v11 = -3 - v7 >= (54 - v7) && 56 - (v7 + 2) <= ((v8 - 814436074) & 0x308B7AFB ^ a6);
  return (*(STACK[0x57D8] + 8 * ((v11 * (v9 - 22608)) | v8)))();
}

uint64_t sub_1004BCCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = LODWORD(STACK[0x17A8]) | 0x641;
  v7 = STACK[0x6B70];
  v8 = STACK[0x57D8];
  v9 = STACK[0x17AC];
  STACK[0xBF38] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x17AC]));
  return (*(v8 + 8 * ((v6 ^ 0x4E62) + v9)))(a1, a2, a3, a4, a5, a6, v7);
}

uint64_t sub_1004BCD90()
{
  if (v0 == -994851648)
  {
    v1 = -143113065;
  }

  else
  {
    v1 = -143113064;
  }

  LODWORD(STACK[0xC74C]) = v1;
  return (*(STACK[0x57D8] + 8 * ((1177 * (STACK[0x51B8] != 1319572454)) ^ (STACK[0x51B8] - 19867))))();
}

uint64_t sub_1004BCE54()
{
  v1 = STACK[0x51B8];
  LODWORD(STACK[0xD0F4]) = v0;
  return (*(STACK[0x57D8] + 8 * (v1 - 15976)))();
}

uint64_t sub_1004BCE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(*v12 + ((*v13 & (((v9 + v10) & 0xFFFFFFF8) + (((v11 - 6391) | 0x2C21) ^ 0xF9D2E5B2))) & 0xFFFFFFFFFFFFFFF8));
  v15 = (__ROR8__((v9 + v10) & 0xFFFFFFFFFFFFFFF8, 8) + v14) ^ a1;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (v17 + v16 - ((2 * (v17 + v16)) & 0x86CC308742CBE5CLL) - 0x7BC99E7BC5E9A0D2) ^ 0x9104236A06E63567;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (((2 * (v20 + v19)) & 0x45AEEB2757F74996) - (v20 + v19) - 0x22D77593ABFBA4CCLL) ^ 0xFF5D5EAB6C3162AFLL;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ a2;
  v24 = __ROR8__(v23, 8);
  v25 = v23 ^ __ROR8__(v22, 61);
  v26 = (v24 + v25) ^ a8;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ a6;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (0xE5BE0F067F8753CBLL - ((v30 + v29) | 0xE5BE0F067F8753CBLL) + ((v30 + v29) | 0x1A41F0F98078AC34)) ^ 0x45CC1CC723E0A62FLL;
  *(v9 + v10) = (((__ROR8__(v31, 8) + (v31 ^ __ROR8__(v29, 61))) ^ a7) >> (8 * ((v9 + v10) & 7))) ^ *(v8 + v10);
  return (*(STACK[0x57D8] + 8 * ((453 * (v10 == 19)) ^ v11)))();
}

uint64_t sub_1004BD050()
{
  if (LODWORD(STACK[0xBE4C]) == -769884010)
  {
    v1 = v0;
  }

  else
  {
    v1 = 0;
  }

  return (*(STACK[0x57D8] + 8 * ((v1 * (((STACK[0x51B8] - 18438) | 0x80) ^ 0x4FFB)) ^ (STACK[0x51B8] - 20393))))();
}

uint64_t sub_1004BD0A8()
{
  v0 = STACK[0x51B8] - 22060;
  LODWORD(STACK[0x7D0C]) = LODWORD(STACK[0xAF20]) << ((STACK[0x51B8] - 99) & 0xDC ^ 0xD4);
  v1 = STACK[0x57D8];
  STACK[0x9078] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1776)))();
}

uint64_t sub_1004BD11C(uint64_t a1, int a2, unint64_t a3, unint64_t a4, int a5, unint64_t a6)
{
  LODWORD(STACK[0x5388]) = v6;
  STACK[0x5780] = a6;
  STACK[0x5770] = a3;
  STACK[0x5110] = v8;
  LODWORD(STACK[0x5680]) = 0;
  STACK[0x57B0] = a4 + 3;
  STACK[0x57C0] = (a4 + 3) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(STACK[0x57A0]) = ((a4 + 3) & 0x8C99B0E0) + ((a4 + 3) & 0x73664F18 | 0x8C99B0E3);
  STACK[0x5790] = a4 + 13;
  STACK[0x5760] = a4 + 4;
  LODWORD(STACK[0x5740]) = ((a4 + 4) & 0x99213348 | 0x66DECCB7) + v11 + ((a4 + 4) & 0x66DECCB0 | 0x99213349);
  STACK[0x5750] = a4 + 5;
  LODWORD(STACK[0x5730]) = ((a4 + 5) & 0x6A0ED768) + ((a4 + 5) & 0x95F12890 | 0x6A0ED769);
  STACK[0x5720] = a4 + 8;
  v12 = (a4 + 8) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(STACK[0x56F0]) = (v12 ^ 0x65AA9CD9) + 345087041 + ((2 * v12) & 0xCB5539B0);
  STACK[0x56E0] = a4 + 14;
  v13 = (a4 + 14) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(STACK[0x56D0]) = (v13 ^ 0x792BF593) + 17843079 + ((2 * v13) & 0xF257EB20);
  STACK[0x5700] = a4 & 0xFFFFFFFFFFFFFFF8;
  LODWORD(STACK[0x5670]) = (a4 & 0x71098DE0) + (a4 & 0x8EF67218 | 0x71098DE3);
  STACK[0x5650] = a4 + 9;
  v14 = (a4 + 9) & 0xFFFFFFFFFFFFFFF8;
  STACK[0x56C0] = v14;
  LODWORD(STACK[0x5640]) = (v14 ^ 0x3EAAD31) + 1985055721 + ((2 * v14) & 0x7D55A60);
  STACK[0x5630] = a4 + 7;
  LODWORD(STACK[0x5620]) = ((553805113 * ((a4 + 7) & 0xFFFFFFF8)) | 0xA458D996) + ((553805113 * ((a4 + 7) & 0xFFFFFFF8)) & 0xA458D990);
  STACK[0x5560] = (a4 + 13) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(STACK[0x5610]) = ((a4 + 13) & 0x886BE390) + ((a4 + 13) & 0x77941C68 | 0x886BE393);
  LODWORD(STACK[0x5600]) = ((a4 + 8) & 0xB9E5568 | 0xF461AA93) + 2050767131 + ((a4 + 8) & 0xF461AA90 | 0xB9E556C);
  STACK[0x55C0] = (a4 + 7) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(STACK[0x55F0]) = ((a4 + 7) & 0x6ECB04B0) + ((a4 + 7) & 0x9134FB48 | 0x6ECB04B5);
  LODWORD(STACK[0x55E0]) = ((a4 + 5) & 0xE8044E90) + ((a4 + 5) & 0x17FBB168 | 0xE8044E91);
  STACK[0x5510] = (a4 + 4) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(STACK[0x55D0]) = ((a4 + 4) & 0x7E616848) + ((a4 + 4) & 0x819E97B0 | 0x7E616848);
  STACK[0x54C0] = a4 + 10;
  v15 = (a4 + 10) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(STACK[0x55B0]) = (v15 ^ 0xDA73D224) - 1614256394 + ((2 * v15) & 0xB4E7A440);
  LODWORD(STACK[0x55A0]) = ((1385132546 * v13) & 0xC88AFCD0) + ((692566273 * v13) ^ 0x64457E6F);
  STACK[0x5590] = v9 + 2;
  STACK[0x5660] = (v9 + 2) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(STACK[0x5580]) = ((v9 + 2) & 0x119C8D0 | 0xFEE63729) + 2050767131 + ((v9 + 2) & 0xFEE63728 | 0x119C8D6);
  STACK[0x5570] = v9 + 7;
  LODWORD(STACK[0x5260]) = a2;
  v16 = (v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(STACK[0x5550]) = ((v9 + 7) & 0xB0447AB0) + ((v9 + 7) & 0x4FBB8548 | 0xB0447AB3);
  STACK[0x5540] = v9 + 4;
  LODWORD(STACK[0x5530]) = ((v9 + 4) & 0xAC0F1858) + ((v9 + 4) & 0x53F0E7A0 | 0xAC0F185C);
  STACK[0x5520] = v9 + 1;
  v17 = (v9 + 1) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(STACK[0x5500]) = (v17 ^ 0x859B64A1) - 190786439 + ((2 * v17) & 0xB36C940);
  STACK[0x54F0] = v9 + 6;
  LODWORD(STACK[0x4EC8]) = v7;
  v18 = (v9 + 6) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(STACK[0x54E0]) = ((v9 + 6) & 0xD5D1B7D0 | 0x2A2E482D) - 707676206 + ((v9 + 6) & 0x2A2E4828 | 0xD5D1B7D2);
  STACK[0x54D0] = v9 + 10;
  v19 = (v9 + 10) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(STACK[0x54B0]) = (v19 ^ 0x1BE53858) + 1582760130 + ((2 * v19) & 0x37CA70B0);
  STACK[0x54A0] = v9 + 11;
  v20 = (v9 + 11) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(STACK[0x5490]) = (v20 ^ 0xEF2A8B68) - 1961775694 + ((2 * v20) & 0xDE5516D0);
  STACK[0x5480] = v9 + 8;
  v21 = (v9 + 8) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(STACK[0x5470]) = (v21 ^ 0xD49AF168) - 1516157006 + ((2 * v21) & 0xA935E2D0);
  STACK[0x5460] = v9 + 5;
  v22 = (v9 + 5) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(STACK[0x5450]) = ((v9 + 5) & 0x74B5DCF8 | 0x8B4A2303) + 2050767130 + ((v9 + 5) & 0x8B4A2300 | 0x74B5DCFD);
  STACK[0x5440] = v9 + 3;
  v23 = (v9 + 3) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(STACK[0x5430]) = ((2 * v23) | 0x16B755D5) + (v23 ^ 0xF4A45515);
  STACK[0x5420] = v9 + 13;
  v24 = (v9 + 13) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(STACK[0x5100]) = a5;
  LODWORD(STACK[0x5410]) = (v24 ^ 0x1A5E4B5D) + 1608379837 + ((2 * v24) & 0x34BC96B0);
  STACK[0x5408] = v9 + 9;
  v25 = (v9 + 9) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(STACK[0x5400]) = (v25 ^ 0x9C961020) - 576313094 + ((2 * v25) & 0x392C2040);
  STACK[0x53F8] = v9 + 15;
  v26 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(STACK[0x53F0]) = (v26 ^ 0x81351553) - 116972601 + ((2 * v26) & 0x26A2AA0);
  LODWORD(STACK[0x53E8]) = ((v9 + 8) & 0x7EE6B0C0) + ((v9 + 8) & 0x81194F38 | 0x7EE6B0C1);
  v27 = (v9 + 14) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(STACK[0x53E0]) = ((v9 + 14) & 0x1D4DDF90) + ((v9 + 14) & 0xE2B22068 | 0x1D4DDF91);
  LODWORD(STACK[0x53D8]) = ((v9 + 11) & 0x9EE268C0) + ((v9 + 11) & 0x611D9738 | 0x9EE268C0);
  STACK[0x53D0] = (v17 ^ 0x9471A1AF) - 439707797 + ((2 * v17) & 0x28E34350);
  LODWORD(STACK[0x53C8]) = ((v19 - 1690504550) ^ 0xFA7671EC) - 460794732 + ((2 * v19 + 913958198) & 0xF4ECE3D0);
  LODWORD(STACK[0x53C0]) = ((v9 + 4) & 0xA1311100) + ((v9 + 4) & 0x5ECEEEF8 | 0xA1311103);
  LODWORD(STACK[0x53B8]) = (v22 ^ 0xF8B7DE0F) + 1928599338 + ((2 * v22) | 0xE9043E1);
  v28 = (v9 + 12) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(STACK[0x53B0]) = (v28 ^ 0x87413D17) - 218432509 + ((2 * v28) & 0xE827A20);
  LODWORD(STACK[0x5078]) = (v16 ^ 0xA299F8E8) + 483799557 + ((2 * v16) | 0xBACC0E2B);
  LODWORD(STACK[0x53A8]) = (v24 ^ 0x4FBD0387) + 712975872 + ((2 * v24) & 0x9F7A0700);
  LODWORD(STACK[0x53A0]) = (v25 ^ 0x264B86E8) - 1601716221 + ((2 * v25) | 0xB368F22F);
  LODWORD(STACK[0x5398]) = (25167 * (v10 > 0x652E340B)) ^ (v10 - 1173151250);
  STACK[0x4FF8] = __ROR8__((a4 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x4FF0] = 8 * ((a4 + 1) & 7);
  STACK[0x4FE8] = (((a4 + 1) & 0xFFFFFFF8) + 2050767130) & 0xFFFFFFFFFFFFFFF8;
  STACK[0x4FE0] = __ROR8__((a4 + 6) & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x4FD8] = 8 * ((a4 + 6) & 7);
  STACK[0x4FD0] = (((a4 + 6) & 0xFFFFFFF8) + 2050767130) & 0xFFFFFFFFFFFFFFF8;
  STACK[0x4FC8] = __ROR8__((a4 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x4FC0] = 8 * ((a4 + 2) & 7);
  STACK[0x4FB8] = (((a4 + 2) & 0xFFFFFFF8) + 2050767130) & 0xFFFFFFFFFFFFFFF8;
  STACK[0x4FB0] = __ROR8__(v15, 8);
  STACK[0x4FA8] = 8 * (STACK[0x54C0] & 7);
  STACK[0x4E70] = (v15 + 2050767130) & 0xFFFFFFFFFFFFFFF8;
  STACK[0x4FA0] = (((a4 + 12) & 0xFFFFFFF8) + 2050767130) & 0xFFFFFFFFFFFFFFF8;
  STACK[0x4F98] = __ROR8__((a4 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x4F90] = 8 * ((a4 + 12) & 7);
  STACK[0x4E68] = (LODWORD(STACK[0x57A0]) - 308115401) & 0xFFFFFFFFFFFFFFF8;
  STACK[0x4F88] = 8 * (STACK[0x57B0] & 7);
  v29 = STACK[0x5560];
  STACK[0x4E60] = (STACK[0x5560] + 2050767130) & 0xFFFFFFFFFFFFFFF8;
  STACK[0x4F80] = __ROR8__(v29, 8);
  STACK[0x4F78] = 8 * (STACK[0x5790] & 7);
  STACK[0x4F70] = (((a4 + 11) & 0xFFFFFFF8) + 2050767130) & 0xFFFFFFFFFFFFFFF8;
  STACK[0x4F68] = __ROR8__((a4 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x4F60] = 8 * ((a4 + 11) & 7);
  LODWORD(STACK[0x4E50]) = STACK[0x5740] & 0xFFFFFFF8;
  STACK[0x4F58] = __ROR8__(STACK[0x5510], 8);
  STACK[0x4F50] = 8 * (STACK[0x5760] & 7);
  LODWORD(v15) = LODWORD(STACK[0x5730]) + 271409585;
  STACK[0x4F48] = __ROR8__((a4 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  LODWORD(STACK[0x4E44]) = v15 & 0xFFFFFFF8;
  STACK[0x4F40] = 8 * (STACK[0x5750] & 7);
  LODWORD(STACK[0x4E38]) = STACK[0x56F0] & 0xFFFFFFF8;
  STACK[0x4F38] = __ROR8__(v12, 8);
  STACK[0x4F30] = 8 * (STACK[0x5720] & 7);
  LODWORD(STACK[0x4E34]) = STACK[0x56D0] & 0xFFFFFFF8;
  STACK[0x4F28] = __ROR8__(v13, 8);
  STACK[0x4F20] = 8 * (STACK[0x56E0] & 7);
  STACK[0x4E28] = (LODWORD(STACK[0x5670]) + 154315575) & 0xFFFFFFFFFFFFFFF8;
  STACK[0x4F18] = (((a4 + 15) & 0xFFFFFFF8) + 2050767130) & 0xFFFFFFFFFFFFFFF8;
  STACK[0x4F10] = __ROR8__((a4 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x4F08] = 8 * ((a4 + 15) & 7);
  LODWORD(STACK[0x4E24]) = STACK[0x5640] & 0xFFFFFFF8;
  STACK[0x4F00] = 8 * (STACK[0x5650] & 7);
  LODWORD(STACK[0x4E20]) = (1546057993 * LODWORD(STACK[0x5620]) + 322284756) & 0xFFFFFFF8;
  STACK[0x4EF8] = __ROR8__(STACK[0x55C0], 8);
  STACK[0x4EF0] = 8 * (STACK[0x5630] & 7);
  v30 = STACK[0x5700];
  STACK[0x4EE8] = __ROR8__(STACK[0x5700], 8);
  STACK[0x4EC0] = (v30 + 2050767130) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(STACK[0x4EB8]) = (LODWORD(STACK[0x5610]) - 238004857) & 0xFFFFFFF8;
  LODWORD(STACK[0x4EB0]) = STACK[0x5600] & 0xFFFFFFF8;
  LODWORD(STACK[0x4EA8]) = (LODWORD(STACK[0x55F0]) + 191968357) & 0xFFFFFFF8;
  LODWORD(STACK[0x4EA0]) = (LODWORD(STACK[0x55E0]) - 1841829239) & 0xFFFFFFF8;
  v31 = STACK[0x56C0];
  STACK[0x4EE0] = __ROR8__(STACK[0x56C0], 8);
  LODWORD(STACK[0x4E98]) = (v31 + 2050767130) & 0xFFFFFFF8;
  v32 = STACK[0x57C0];
  STACK[0x4ED8] = __ROR8__(STACK[0x57C0], 8);
  STACK[0x4E90] = (v32 + 2050767130) & 0xFFFFFFFFFFFFFFF8;
  STACK[0x4E88] = (LODWORD(STACK[0x55D0]) - 69545774) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(STACK[0x4E80]) = STACK[0x55B0] & 0xFFFFFFF8;
  LODWORD(STACK[0x4E78]) = (292112129 * LODWORD(STACK[0x55A0]) - 1788939861) & 0xFFFFFFF8;
  LODWORD(STACK[0x50F0]) = STACK[0x5580] & 0xFFFFFFF8;
  STACK[0x5230] = 8 * (STACK[0x5590] & 7);
  LODWORD(v15) = LODWORD(STACK[0x5550]) - 906510745;
  STACK[0x5228] = __ROR8__(v16, 8);
  LODWORD(STACK[0x50E8]) = v15 & 0xFFFFFFF8;
  STACK[0x5220] = 8 * (STACK[0x5570] & 7);
  LODWORD(STACK[0x50E0]) = LODWORD(STACK[0x5530]) - 835903300;
  STACK[0x5218] = __ROR8__((v9 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x5210] = 8 * (STACK[0x5540] & 7);
  LODWORD(STACK[0x50D8]) = STACK[0x5500] & 0xFFFFFFF8;
  STACK[0x5208] = __ROR8__(v17, 8);
  STACK[0x5200] = 8 * (STACK[0x5520] & 7);
  STACK[0x51F8] = ((v9 & 0xFFFFFFF8) + 2050767130) & 0xFFFFFFFFFFFFFFF8;
  STACK[0x51E0] = __ROR8__(v9 & 0xFFFFFFFFFFFFFFF8, 8);
  LODWORD(STACK[0x50D0]) = ((LODWORD(STACK[0x54E0]) + 1) & 0xFFFFFFF8) - 1536523960;
  STACK[0x51D8] = 8 * (STACK[0x54F0] & 7);
  LODWORD(STACK[0x50C8]) = STACK[0x54B0] & 0xFFFFFFF8;
  STACK[0x51D0] = __ROR8__(v19, 8);
  STACK[0x51C8] = 8 * (STACK[0x54D0] & 7);
  LODWORD(STACK[0x50C0]) = STACK[0x5490] & 0xFFFFFFF8;
  STACK[0x51C0] = __ROR8__(v20, 8);
  STACK[0x51B0] = 8 * (STACK[0x54A0] & 7);
  STACK[0x51A8] = __ROR8__(v21, 8);
  LODWORD(STACK[0x50B8]) = STACK[0x5470] & 0xFFFFFFF8;
  STACK[0x51A0] = 8 * (STACK[0x5480] & 7);
  LODWORD(STACK[0x50B0]) = STACK[0x5450] & 0xFFFFFFF8;
  STACK[0x5198] = __ROR8__(v22, 8);
  STACK[0x5190] = 8 * (STACK[0x5460] & 7);
  LODWORD(STACK[0x50A8]) = (STACK[0x5430] & 0xFFFFFFF8) + 1860210224;
  STACK[0x5188] = 8 * (STACK[0x5440] & 7);
  LODWORD(STACK[0x50A0]) = STACK[0x5410] & 0xFFFFFFF8;
  STACK[0x5180] = __ROR8__(v24, 8);
  STACK[0x5178] = 8 * (STACK[0x5420] & 7);
  LODWORD(STACK[0x5098]) = STACK[0x5400] & 0xFFFFFFF8;
  STACK[0x5170] = __ROR8__(v25, 8);
  STACK[0x5168] = 8 * (STACK[0x5408] & 7);
  LODWORD(STACK[0x5090]) = ((v9 + 12) & 0xFFFFFFF8) + 2050767128;
  STACK[0x5160] = __ROR8__(v28, 8);
  STACK[0x5158] = 8 * ((v9 + 12) & 7);
  LODWORD(STACK[0x5088]) = (v27 + 2050767130) & 0xFFFFFFF8;
  STACK[0x5150] = __ROR8__(v27, 8);
  STACK[0x5148] = 8 * ((v9 + 14) & 7);
  LODWORD(STACK[0x5080]) = STACK[0x53F0] & 0xFFFFFFF8;
  STACK[0x5140] = 8 * (STACK[0x53F8] & 7);
  STACK[0x5138] = __ROR8__(v26, 8);
  LODWORD(STACK[0x5070]) = (v26 + 2050767130) & 0xFFFFFFF8;
  LODWORD(STACK[0x5068]) = (LODWORD(STACK[0x53E8]) - 78280615) & 0xFFFFFFF8;
  LODWORD(STACK[0x5060]) = (LODWORD(STACK[0x53E0]) + 1559124361) & 0xFFFFFFF8;
  LODWORD(STACK[0x5058]) = LODWORD(STACK[0x53D8]) - 614870952;
  v33 = STACK[0x53D0];
  v34 = STACK[0x5660];
  STACK[0x5130] = __ROR8__(STACK[0x5660], 8);
  STACK[0x5050] = v33 & 0xFFFFFFFFFFFFFFF8;
  LODWORD(STACK[0x5048]) = (v34 + 2050767130) & 0xFFFFFFF8;
  LODWORD(STACK[0x5040]) = STACK[0x53C8] & 0xFFFFFFF8;
  LODWORD(STACK[0x5038]) = (LODWORD(STACK[0x53C0]) - 653580265) & 0xFFFFFFF8;
  LODWORD(STACK[0x5030]) = STACK[0x53B8] & 0xFFFFFFF8;
  LODWORD(STACK[0x5028]) = STACK[0x53B0] & 0xFFFFFFF8;
  LODWORD(STACK[0x5020]) = (LODWORD(STACK[0x53A8]) + 3987) & 0xFFFFFFF8;
  STACK[0x5128] = __ROR8__(v18, 8);
  LODWORD(STACK[0x5018]) = (v18 + 2050767130) & 0xFFFFFFF8;
  STACK[0x5120] = __ROR8__(v23, 8);
  LODWORD(STACK[0x5010]) = (v23 + 2050767130) & 0xFFFFFFF8;
  LODWORD(STACK[0x5008]) = STACK[0x53A0] & 0xFFFFFFF8;
  v35 = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x5398]));
  v36 = STACK[0x4EC8];
  LODWORD(STACK[0x57A0]) = (v10 + 258729509) & 0xAAA73F4D;
  STACK[0x5000] = a4;
  STACK[0x4ED0] = 8 * (a4 & 7);
  STACK[0x56F0] = v9;
  STACK[0x5118] = 8 * (v9 & 7);
  LODWORD(STACK[0x5108]) = LODWORD(STACK[0x5100]) + 16;
  LODWORD(STACK[0x50F8]) = 1;
  LODWORD(STACK[0x5660]) = v36;
  LODWORD(STACK[0x5790]) = 864386559;
  LODWORD(STACK[0x57B0]) = -185001958;
  LODWORD(STACK[0x5258]) = 1;
  return v35();
}

uint64_t sub_1004BE418()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x57D8];
  STACK[0xCF38] = *(STACK[0x57D8] + 8 * (STACK[0x51B8] - 19752));
  return (*(v1 + 8 * ((7248 * (v0 != 543401020)) ^ (v0 - 18638))))();
}

uint64_t sub_1004BE52C()
{
  v0 = (STACK[0x51B8] - 51821143) & 0x31677EF;
  v1 = STACK[0x51B8] - 19597;
  STACK[0x92D0] = STACK[0x8E40] + SLODWORD(STACK[0x9F9C]);
  v2 = STACK[0x57D8];
  STACK[0x7DD8] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * ((14312 * ((v1 ^ 0x69B78B27u) > 0xA8B2CAB7)) ^ ((v0 ^ 0x1331) + v1))))();
}

uint64_t sub_1004BE5EC()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x57D8];
  STACK[0x8060] = *(STACK[0x57D8] + 8 * (STACK[0x51B8] - 21224));
  return (*(v1 + 8 * (v0 - 11673)))();
}

uint64_t sub_1004BE628(uint64_t a1, int a2)
{
  v4 = v3 == 0x38899B22F3E91C6DLL;
  *(v2 + 1751) = v4;
  return (*(STACK[0x57D8] + 8 * ((a2 + 1558) ^ v4)))();
}

uint64_t sub_1004BE684()
{
  v2 = (LODWORD(STACK[0x5560]) + (v1 ^ 0x2990107E) + 1355072852) & 0xFFFFFFFE ^ 0xA89D43F5;
  v3 = LODWORD(STACK[0x5500]) ^ (LODWORD(STACK[0x5520]) + 215496341 - ((2 * LODWORD(STACK[0x5520])) & 0x12A));
  LODWORD(STACK[0x5770]) = (LODWORD(STACK[0x5510]) ^ -LODWORD(STACK[0x5510]) ^ (v3 - (v3 ^ LODWORD(STACK[0x5510])))) + v3;
  v4 = STACK[0x5650];
  v5 = STACK[0x5570];
  v6 = 2 * (STACK[0x5570] & 0xF4C67245);
  LODWORD(STACK[0x5520]) = v6;
  LODWORD(STACK[0x5580]) = v5 & 0xF4C67245;
  v7 = ((2 * (v5 ^ 0xEB9BB710)) ^ 0x3EBB8AAA) & (v5 ^ 0xEB9BB710) ^ (2 * (v5 ^ 0xEB9BB710)) & 0x1F5DC554;
  v8 = v7 ^ 0x1444555;
  v9 = (v7 ^ 0x165D8441) & (4 * (v6 & (v5 ^ 0xE2977310) ^ v5 & 0xF4C67245)) ^ v6 & (v5 ^ 0xE2977310) ^ v5 & 0xF4C67245;
  v10 = ((4 * v8) ^ 0x7D771554) & v8 ^ (4 * v8) & 0x1F5DC554;
  v11 = (v10 ^ 0x1D550550) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x208C001)) ^ 0xF5DC5550) & (v10 ^ 0x208C001) ^ (16 * (v10 ^ 0x208C001)) & 0x1F5DC550;
  v13 = v11 ^ 0x1F5DC555 ^ (v12 ^ 0x155C4505) & (v11 << 8);
  return (*(STACK[0x57D8] + 8 * v0))((v4 ^ 0xC1FAA719) + 966517907, (v4 ^ 0xFFFFE5FF) + 127837813, 2 * ((v13 << 16) & 0x1F5D0000 ^ v13 ^ ((v13 << 16) ^ 0x45550000) & (((v12 ^ 0xA018005) << 8) & 0x1F5D0000 ^ 0x2180000 ^ (((v12 ^ 0xA018005) << 8) ^ 0x5DC50000) & (v12 ^ 0xA018005))), 397192077 * v2, 255);
}

uint64_t sub_1004BEB1C()
{
  STACK[0x7ED8] = (v1 ^ 0xFFFFFFFFFFFFEF70) + v0;
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0x9F7C];
  LODWORD(STACK[0x9094]) = -32197379;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1004BF288@<X0>(unint64_t a1@<X8>)
{
  v4 = STACK[0x57D8];
  STACK[0xBE60] = *(STACK[0x57D8] + 8 * v3);
  STACK[0xC348] = a1;
  STACK[0x7128] = v2;
  return (*(v4 + 8 * v1))();
}

uint64_t sub_1004BF390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = STACK[0x51B8] ^ 0x1E17;
  v7 = STACK[0x57D8];
  v8 = STACK[0x21E4];
  v9 = STACK[0xB438];
  STACK[0xBF38] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x21E4]));
  return (*(v7 + 8 * (v6 + v8 - 15910)))(a1, a2, a3, a4, a5, a6, v9);
}

uint64_t sub_1004BF438()
{
  v0 = (STACK[0x51B8] - 18262) | 0x4049;
  v1 = STACK[0x51B8] - 19805;
  v2 = STACK[0x57D8];
  STACK[0xCF38] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * ((v0 - 14376) ^ v1)))();
}

uint64_t sub_1004BF49C(uint64_t a1)
{
  v2 = LODWORD(STACK[0x54F0]) ^ LODWORD(STACK[0x56C0]) ^ -(LODWORD(STACK[0x54F0]) ^ LODWORD(STACK[0x56C0])) ^ (-1690064278 - (LODWORD(STACK[0x54F0]) ^ LODWORD(STACK[0x56C0]) ^ 0x9B43AA6A));
  v3 = (-1690064278 - ((v2 - 1519022442) ^ 0x9B43AA6A)) ^ (v2 - 1519022442) ^ (((7078 * ((v1 - 8449) ^ 0x3757)) ^ 0x5A8A4626) - v2);
  v4 = (LODWORD(STACK[0x5670]) - 1519022442 + ((v3 - 1519022442) ^ (1519022442 - v3) ^ (-1690064278 - ((v3 - 1519022442) ^ 0x9B43AA6A)))) & 0xFFFFFFFE;
  return (*(STACK[0x57D8] + 8 * (v1 - 8449)))(a1, STACK[0x54D0] & 0x4263EAD3, (((LODWORD(STACK[0x54D0]) ^ 0xA6594F06) - 851543767) ^ ((LODWORD(STACK[0x54D0]) ^ 0x5C1F647E) + 930632273) ^ ((LODWORD(STACK[0x54D0]) ^ 0x53D7F095) + 951109308)) + 1502114277, 2093446017 * (((v4 ^ 0x88DB2AE) + 1388341183) ^ ((v4 ^ 0xB04B4DCE) - 368666401) ^ ((v4 ^ 0x6D66AECB) + 925596636)) - 1250863902, 255);
}

uint64_t sub_1004BF700()
{
  v1 = STACK[0x51B8];
  STACK[0x8F28] = v0;
  return (*(STACK[0x57D8] + 8 * (v1 - 16960)))();
}

uint64_t sub_1004BF754()
{
  LODWORD(STACK[0x9304]) = v1[22];
  LODWORD(STACK[0x663C]) = v1[23];
  LODWORD(STACK[0x76DC]) = v1[24];
  LODWORD(STACK[0xAFA4]) = v1[25];
  LODWORD(STACK[0x8394]) = 1261123099;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1004BF9B4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v20 = v6 + v8 + v7;
  v21 = (__ROR8__(v20 & 0xFFFFFFFFFFFFFFF8, 8) + a3) & 0xF9FFFFFFFFFFFFFFLL;
  v22 = __ROR8__(v21 ^ (((v10 - 3713) | 0x4810u) - 0x70E742659D330216), 8);
  v21 ^= 0xA9114E495B9659F5;
  v23 = (v22 + v21) ^ a1;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = __ROR8__(v23, 8);
  v26 = __ROR8__((v25 + v24 - ((2 * (v25 + v24)) & 0x55469D95E615D726) + v18) ^ v19, 8);
  v27 = (v25 + v24 - ((2 * (v25 + v24)) & 0x55469D95E615D726) + v18) ^ v19 ^ __ROR8__(v24, 61);
  v28 = (0xD765336002CC7388 - ((v26 + v27) ^ 0x43B68CDC83EF87B7 | 0xD765336002CC7388) + ((v26 + v27) ^ 0x43B68CDC83EF87B7 | 0x289ACC9FFD338C77)) ^ v13;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0xEE93EFF9FB91609BLL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = ((v14 & (2 * (v32 + v31))) - (v32 + v31) + v15) ^ v16;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (0x2572239CF8068E83 - ((v35 + v34) | 0x2572239CF8068E83) + ((v35 + v34) | v17)) ^ a4;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = __ROR8__(v36, 8);
  *v20 = *(a6 + v8) ^ ((((a5 & (2 * (v38 + v37))) - (v38 + v37) + v11) ^ v12) >> (8 * (v20 & 7u))) ^ 0x87;
  return (*(STACK[0x57D8] + 8 * ((15 * (((v8 + 1) ^ v9) != a2)) ^ v10)))();
}

uint64_t sub_1004BFDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0x51B8];
  LODWORD(STACK[0xC410]) = 813006155;
  return (*(STACK[0x57D8] + 8 * (v7 - 13555)))(a1, 21553, 840133462, 2090271397, a5, 4294947640, a7, 1280);
}

uint64_t sub_1004BFE00()
{
  v0 = STACK[0x51B8];
  STACK[0xB3F8] = STACK[0xC198] + SLODWORD(STACK[0x8E2C]);
  v1 = STACK[0x57D8];
  STACK[0xB058] = *(STACK[0x57D8] + 8 * (v0 - 19616));
  return (*(v1 + 8 * ((v0 - 15725) ^ (v0 - 19616))))();
}

void *sub_1004BFE94@<X0>(unint64_t a1@<X8>)
{
  STACK[0x84D0] = v2;
  STACK[0x90F8] = v1;
  LODWORD(STACK[0xB8F8]) = -769884012;
  LODWORD(STACK[0x74CC]) = -769884012;
  STACK[0x5890] = 0;
  LODWORD(STACK[0x9FEC]) = 0;
  STACK[0x7AA0] = 0;
  LODWORD(STACK[0xC7F4]) = 1280;
  v4 = STACK[0x7ED8];
  v5 = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x9A98] = v5;
  STACK[0x71D8] = (v5 + 64);
  STACK[0x7ED8] = ((v3 + 76885793) & 0xFB6AFF3F) + v4 - 12463;
  STACK[0x8F10] = a1;
  STACK[0x7100] = 0;
  LODWORD(STACK[0xB13C]) = -769884012;
  STACK[0x7998] = 0;
  return (*(STACK[0x57D8] + 8 * ((15432 * ((v3 ^ 0xA3CFCA36) < 0x36383645)) ^ (v3 + 4432))))(&STACK[0x7998]);
}

uint64_t sub_1004BFF9C()
{
  STACK[0xCF30] = v1 - 32;
  STACK[0x7ED8] = v0 - 23126 + ((v3 - 674479487) & 0x2833FC5E);
  return (*(STACK[0x57D8] + 8 * ((11150 * ((v2 ^ 0x5FB7F7DE) + ((v3 - 5315) ^ 0xAEFE6E4F) + ((2 * v2) & 0xBF6EA0BC) == 246833882)) ^ v3)))();
}

uint64_t sub_1004C00E8()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 21290)))();
  STACK[0x9BA0] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1004C012C()
{
  LOBYTE(STACK[0xDB2F]) = 0;
  STACK[0xDB20] = v1;
  LODWORD(STACK[0xDB1C]) = -143113071;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1004C0160()
{
  STACK[0x1D4C8] = STACK[0x3E78];
  LODWORD(STACK[0x1D4C0]) = (v0 + 1717162648) ^ (1964904101 * ((((v1 - 240) | 0xCC2C4CB0) - ((v1 - 240) & 0xCC2C4CB0)) ^ 0x360EA734));
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x5DDD)))(v1 - 240);
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_1004C02D0()
{
  v1 = STACK[0x51B8];
  v2 = STACK[0x51B8] - 2156;
  STACK[0x1D4C0] = STACK[0x3E78];
  LODWORD(STACK[0x1D4C8]) = (v1 - 1723133771) ^ (1917435887 * ((((v0 - 240) | 0xC3D5550D) - (v0 - 240) + ((v0 - 240) & 0x3C2AAAF0)) ^ 0x256E0E0B));
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 + 9178)))(v0 - 240);
  return (*(v3 + 8 * ((*STACK[0x3DA8] * ((((2 * v2) ^ 0xC782) + 1517097623) & 0xA592D577 ^ 0x4075)) ^ v2)))(v4);
}

uint64_t sub_1004C039C()
{
  v1 = STACK[0xB22C];
  v2 = STACK[0x6A08];
  STACK[0xB420] = STACK[0x88B0];
  LODWORD(STACK[0x8C54]) = v1;
  STACK[0x8EA0] = v2;
  LODWORD(STACK[0xBC38]) = -746967305;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1004C04E0()
{
  v1 = STACK[0x62D4];
  LODWORD(STACK[0xC58C]) = STACK[0x62D4];
  STACK[0x9338] = STACK[0x9548];
  v2 = *STACK[0x45F8];
  v3 = *STACK[0x45F0];
  v4 = (5 * (v3 ^ v2) - 1) & 7;
  v5 = ((((v1 >> 4) ^ 0x943F8617) + 1587993485) ^ (((v1 >> 4) ^ 0x122E5D39) - 659095389) ^ (((v1 >> 4) ^ 0x8B301327) + 1101614781)) - 1666007000 + (((v4 ^ 0xECD45EAA) + 1014014838) ^ ((v4 ^ 0x8CC501F6) + 1549925418) ^ ((v4 ^ 0x60115F5B) - 1330273659)) + 2022;
  LODWORD(STACK[0x9424]) = (16 * (((v5 ^ 0xA972B2FB) + 60626558) ^ v5 ^ ((v5 ^ 0xA58DCA2) + 12023845) ^ ((v5 ^ 0xBC1CADF) + 19820122) ^ ((v5 ^ 0xDFBFFFF) + 118774650))) ^ 0x5105B790;
  v6 = (3 * (v3 - v2)) & 0xF;
  if (v6 == 1)
  {
    v6 = 0;
  }

  LODWORD(STACK[0xAF20]) = v6;
  LODWORD(STACK[0x8FA4]) = 0;
  STACK[0x7F68] = 4;
  v7 = STACK[0x51B8];
  v8 = STACK[0x57D8];
  v9 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9152)))(&STACK[0x1D1CD], &STACK[0x7464], &STACK[0x7F68], 0, 0);
  v10 = 551690071 * ((((v0 - 240) | 0xAE922320F7BDB0EBLL) - (v0 - 240) + ((v0 - 240) & 0x516DDCDF08424F10)) ^ 0xDF0F71EEB950E3BCLL);
  LODWORD(STACK[0x1D4C4]) = (v7 + 1029868618) ^ v10;
  STACK[0x1D4D8] = v9 - v10;
  STACK[0x1D4E0] = v10;
  LODWORD(STACK[0x1D4CC]) = v7 - v10 + 1029870266;
  LODWORD(STACK[0x1D4C0]) = (v7 - 1079089617) ^ v10;
  LODWORD(STACK[0x1D4D0]) = v10;
  LODWORD(STACK[0x1D4C8]) = v7 - v10 + 1029870360;
  v11 = (*(v8 + 8 * (v7 + 9201)))(v0 - 240);
  return (*(v8 + 8 * SLODWORD(STACK[0x1D4D4])))(v11);
}

uint64_t sub_1004C07D4()
{
  v0 = (STACK[0x51B8] - 20534) | 0x191;
  *(STACK[0x63A8] - 0x1883660EE814440ALL) = STACK[0xDBEC];
  return (*(STACK[0x57D8] + 8 * (((LODWORD(STACK[0xDBF0]) == -143113071) * (v0 ^ 0x3917)) ^ LODWORD(STACK[0xCDC]))))();
}

uint64_t sub_1004C084C()
{
  v3 = v0 ^ 0x29CE;
  v4 = (v0 ^ 0x29CE) + 7690;
  v5 = (v0 ^ 0x29CE) - 8408;
  v8 = STACK[0xA8E8] == 0x79296B4A625EDF44 || v1 == 0 || v2 == 0;
  return (*(STACK[0x57D8] + 8 * ((217 * (((v4 ^ v5 ^ v8) & 1) == 0)) ^ v3)))();
}

uint64_t sub_1004C0914(int a1)
{
  v3 = STACK[0x9460] + 4 * (((v2 + 22524) ^ 0xAAC46400) + v1);
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = v3;
  LODWORD(STACK[0x9094]) = a1 + 4;
  return (*(STACK[0x57D8] + 8 * v2))();
}

uint64_t sub_1004C0A5C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v2 = STACK[0x7378];
  STACK[0x9FD0] = STACK[0x7378];
  STACK[0xA9C8] = &STACK[0x9C44];
  STACK[0x7ED0] = v2;
  STACK[0xC880] = 0xC4E69D8A42A41684;
  LODWORD(STACK[0xCD80]) = -244136838;
  return (*(STACK[0x57D8] + 8 * a2))(a1, 272629776, 410912332, 1543499262, 2265206393, 3965507692, 4221484704, 0x1B3EC18598D49E09);
}

uint64_t sub_1004C0B94@<X0>(int a1@<W8>)
{
  v1 = STACK[0x6A08];
  LODWORD(STACK[0x98F4]) = ((a1 - 1262622552) & 0x4B425BFE) + (LODWORD(STACK[0x7D58]) ^ 0xFF78FCFF) + (STACK[0x145C] & (2 * LODWORD(STACK[0x7D58]))) - 134287556;
  STACK[0x6230] = v1;
  LODWORD(STACK[0x6974]) = -97429137;
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_1004C0CF8()
{
  v1 = STACK[0x51B8] ^ 0xA9;
  v2 = STACK[0x51B8] - 8983;
  *STACK[0xDC78] = v0;
  *STACK[0xDC80] += v1 - 22779;
  return (*(STACK[0x57D8] + 8 * v2))(4262769784, 4262753852, 4404, 4294961847, 8340, 230, 454, 80);
}

uint64_t sub_1004C0DE8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v7 = STACK[0x55E0] + v6;
  v8 = *++v7;
  v9 = *(v4 + (a4 & ((v7 & 0xFFFFFFF8 ^ 0xF11DB6C) + 1797938606 + ((2 * (v7 & 0xFFFFFFF8)) & 0x1E23B6D0))));
  v10 = (v9 + __ROR8__(v7 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xB88801D4E1C76353;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0x38C8B16AE7056877;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (0x81EF1FC3A7108FC8 - ((v14 + v13) | 0x81EF1FC3A7108FC8) + ((v14 + v13) | 0x7E10E03C58EF7037)) ^ 0x9B905141D42A9566;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (v17 + v16 - ((2 * (v17 + v16)) & 0x567C34864DC32A68) - 0x54C1E5BCD91E6ACCLL) ^ 0x4A9FE718F7B46C4ELL;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0xDA604B0C03A2BF99;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0xFA35E2CDCB3E31C7;
  v23 = __ROR8__(v22, 8);
  v24 = v22 ^ __ROR8__(v21, 61);
  v25 = __ROR8__((v23 + v24) ^ 0xD2F00CE620E5D3AELL, 8) + ((v23 + v24) ^ 0xD2F00CE620E5D3AELL ^ __ROR8__(v24, 61));
  return (*(STACK[0x57D8] + 8 * (((v6 > 0xB) | (16 * (v6 > 0xB))) ^ v5)))(158, (a2 - ((2 * a2) & 0xFFFFFFD6) - 21) ^ v8 ^ 0xFFFFFFEB ^ (((v25 - ((2 * v25) & 0x6C97ECB788610D4ELL) + 0x364BF65BC43086A7) ^ 0xC238FD6A6A40F3DCLL) >> (8 * (v7 & 7u))));
}

uint64_t sub_1004C18E4@<X0>(int a1@<W8>)
{
  v1 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * (a1 & 0xE5AA00FB));
  return (*(v1 + 8 * (a1 & 0xE5AA00FB ^ 0xE3 ^ (4636 * ((a1 & 0xE5AA00FB ^ 0x663DB0E8) != (a1 & 0xE5AA00FB ^ 0x113B) + 1074178841)))))();
}

uint64_t sub_1004C1A00()
{
  STACK[0x57C0] = 0;
  v1 = STACK[0x6FF0];
  STACK[0x61D0] = STACK[0x7E90];
  STACK[0x5F00] = 0x1883660EE8144416;
  STACK[0x7810] = v1;
  STACK[0x8000] = &STACK[0x5F00];
  STACK[0x5FC0] = 0;
  LODWORD(STACK[0xC0DC]) = -2013569033;
  LODWORD(STACK[0xA12C]) = 2101965996;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1004C1BE0@<X0>(_DWORD *a1@<X8>)
{
  *v1 = *a1;
  v1[1] = a1[1];
  v1[2] = a1[2];
  v1[3] = a1[3];
  v1[4] = 1390488722;
  return (*(STACK[0x57D8] + 8 * (((v2 + 625) ^ 0x181C) + v2)))();
}

uint64_t sub_1004C1C3C()
{
  v1 = STACK[0x51B8] ^ 0x5857;
  v2 = STACK[0x51B8] + v0;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))(STACK[0x6F98]);
  return (*(v3 + 8 * ((v1 + 19132) ^ v2)))(v4);
}

uint64_t sub_1004C1C88()
{
  v2 = STACK[0xBD70];
  v3 = 1534937323 * ((v1 - 0x4BE6A8A8E9A171B8 - 2 * ((v1 - 240) & 0xB4195757165E8F38)) ^ 0x7961DF95D0B0747FLL);
  STACK[0x1D4C0] = v3;
  STACK[0x1D4D8] = v2 + v3;
  LODWORD(STACK[0x1D4E0]) = 1534937323 * ((v1 + 375295560 - 2 * ((v1 - 240) & 0x165E8F38)) ^ 0xD0B0747F) + v0 + 625190251;
  LODWORD(STACK[0x1D4CC]) = 1534937323 * ((v1 + 375295560 - 2 * ((v1 - 240) & 0x165E8F38)) ^ 0xD0B0747F) + v0 + 1451493860;
  LODWORD(STACK[0x1D4D0]) = 1534937323 * ((v1 + 375295560 - 2 * ((v1 - 240) & 0x165E8F38)) ^ 0xD0B0747F);
  LODWORD(STACK[0x1D4C8]) = ((v0 - 22613) | 0x2543ED74) - 1534937323 * ((v1 + 375295560 - 2 * ((v1 - 240) & 0x165E8F38)) ^ 0xD0B0747F);
  LODWORD(STACK[0x1D4D4]) = (1534937323 * ((v1 + 375295560 - 2 * ((v1 - 240) & 0x165E8F38)) ^ 0xD0B0747F)) ^ (v0 - 22613) ^ 0x2543FDDB;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x2462)))(v1 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4E4])))(v5);
}

uint64_t sub_1004C1D70@<X0>(unint64_t a1@<X0>, int a2@<W8>)
{
  v13 = v10;
  LODWORD(STACK[0x4EC8]) = v9;
  LODWORD(STACK[0x5370]) = v6;
  STACK[0x5098] = 0;
  LODWORD(STACK[0x5068]) = LODWORD(STACK[0x55B0]) ^ LODWORD(STACK[0x55C0]);
  LODWORD(STACK[0x5290]) = a2 | (v2 >> 8);
  LODWORD(STACK[0x5070]) = v4 | (v3 << 16);
  v14 = STACK[0x50C0] ^ LODWORD(STACK[0x5750]);
  LODWORD(STACK[0x50C0]) = v5;
  v15 = v14 - 449890787 - ((2 * v14) & 0xCA5E6C3A);
  v16 = LODWORD(STACK[0x5710]) ^ LODWORD(STACK[0x5730]);
  v17 = v16 ^ LODWORD(STACK[0x4A90]);
  v18 = v16 ^ LODWORD(STACK[0x5130]);
  v19 = v16 ^ LODWORD(STACK[0x50C8]);
  LODWORD(STACK[0x5130]) = v7;
  v20 = STACK[0x5100];
  v21 = v17 ^ LODWORD(STACK[0x5100]);
  v22 = v18 ^ LODWORD(STACK[0x5100]);
  v23 = STACK[0x4B28];
  v24 = LODWORD(STACK[0x4B28]) ^ LODWORD(STACK[0x4B78]);
  v25 = v24 & 1;
  if ((v25 & STACK[0x4B28]) != 0)
  {
    v25 = -v25;
  }

  v26 = STACK[0x4AD0];
  v27 = v19 ^ v20;
  v28 = v15 ^ 0xE52F361D ^ v20;
  if (STACK[0x4AD0])
  {
    v29 = v22;
  }

  else
  {
    v29 = v21;
  }

  if (v26)
  {
    v22 = v27;
    v27 = v28;
    v28 = v21;
  }

  v30 = STACK[0x4AB8];
  if ((v26 & 1) == 0)
  {
    v30 = STACK[0x4AA0];
  }

  v31 = STACK[0x4AC8];
  if ((v26 & 1) == 0)
  {
    v31 = STACK[0x4AC0];
  }

  v32 = STACK[0x50A0];
  v33 = STACK[0x4E10];
  if (v26)
  {
    v34 = STACK[0x50A0];
  }

  else
  {
    v34 = STACK[0x4E10];
  }

  STACK[0x53F8] = a1;
  if (v26)
  {
    v35 = STACK[0x5260];
  }

  else
  {
    v35 = v32;
  }

  if (v26)
  {
    v36 = STACK[0x4B80];
  }

  else
  {
    v36 = STACK[0x5260];
  }

  if (v26)
  {
    v37 = v33;
  }

  else
  {
    v37 = STACK[0x4B80];
  }

  v38 = (v25 + v23) ^ v24 & 0xFFFFFFFE;
  if (v26)
  {
    v39 = v38;
  }

  else
  {
    v39 = STACK[0x50A8];
  }

  if (v26)
  {
    v40 = STACK[0x50A8];
  }

  else
  {
    v40 = STACK[0x4B88];
  }

  if (v26)
  {
    v41 = STACK[0x4B88];
  }

  else
  {
    v41 = STACK[0x5268];
  }

  if (v26)
  {
    v42 = STACK[0x5268];
  }

  else
  {
    v42 = v38;
  }

  if ((v26 & 2) != 0)
  {
    v43 = v27;
  }

  else
  {
    v43 = v29;
  }

  LODWORD(STACK[0x50C8]) = v43;
  if ((v26 & 2) != 0)
  {
    v27 = v29;
  }

  LODWORD(STACK[0x5008]) = v27;
  v44 = STACK[0x4AB0];
  if ((v26 & 2) != 0)
  {
    v44 = STACK[0x4AA8];
  }

  LODWORD(STACK[0x5260]) = v44;
  if ((v26 & 2) != 0)
  {
    v45 = v31;
  }

  else
  {
    v45 = v30;
  }

  LODWORD(STACK[0x5208]) = v45;
  if ((v26 & 2) != 0)
  {
    v46 = v30;
  }

  else
  {
    v46 = v31;
  }

  LODWORD(STACK[0x5268]) = v46;
  if ((v26 & 2) != 0)
  {
    v47 = v28;
  }

  else
  {
    v47 = v22;
  }

  LODWORD(STACK[0x4FF0]) = v47;
  if ((v26 & 2) != 0)
  {
    v28 = v22;
  }

  LODWORD(STACK[0x4FE8]) = v28;
  if ((v26 & 2) != 0)
  {
    v48 = v36;
  }

  else
  {
    v48 = v34;
  }

  if ((v26 & 2) != 0)
  {
    v49 = v34;
  }

  else
  {
    v49 = v36;
  }

  if ((v26 & 2) != 0)
  {
    v50 = v37;
  }

  else
  {
    v50 = v35;
  }

  if ((v26 & 2) != 0)
  {
    v51 = v35;
  }

  else
  {
    v51 = v37;
  }

  if ((v26 & 2) != 0)
  {
    v52 = v42;
  }

  else
  {
    v52 = v40;
  }

  LODWORD(STACK[0x4FD0]) = v52;
  if ((v26 & 2) != 0)
  {
    v53 = v40;
  }

  else
  {
    v53 = v42;
  }

  LODWORD(STACK[0x4FD8]) = v53;
  if ((v26 & 2) != 0)
  {
    v54 = v41;
  }

  else
  {
    v54 = v39;
  }

  LODWORD(STACK[0x4F58]) = v54;
  if ((v26 & 2) != 0)
  {
    v55 = v39;
  }

  else
  {
    v55 = v41;
  }

  LODWORD(STACK[0x4F48]) = v55;
  v56 = STACK[0x5280];
  v57 = STACK[0x50D0];
  if (STACK[0x5280])
  {
    v58 = STACK[0x50E0];
  }

  else
  {
    v58 = STACK[0x50D0];
  }

  v59 = STACK[0x5250];
  if ((v56 & 1) == 0)
  {
    v57 = STACK[0x5250];
  }

  v60 = STACK[0x50D8];
  if ((v56 & 1) == 0)
  {
    v59 = STACK[0x50D8];
    v60 = STACK[0x50E0];
  }

  if ((v56 & 2) != 0)
  {
    v61 = v59;
  }

  else
  {
    v61 = v58;
  }

  if ((v56 & 2) != 0)
  {
    v62 = v58;
  }

  else
  {
    v62 = v59;
  }

  LODWORD(STACK[0x5060]) = v62;
  if ((v56 & 2) != 0)
  {
    v63 = v60;
  }

  else
  {
    v63 = v57;
  }

  LODWORD(STACK[0x5050]) = v63;
  if ((v56 & 2) != 0)
  {
    v64 = v57;
  }

  else
  {
    v64 = v60;
  }

  LODWORD(STACK[0x50A0]) = v64;
  v65 = STACK[0x4B40];
  LODWORD(STACK[0x4ED8]) = v8;
  v66 = STACK[0x50F0];
  v67 = (-220373115 * (v65 + v8 + LODWORD(STACK[0x4B30])) + ((-220373115 * (v65 + v8 + LODWORD(STACK[0x4B30]))) >> 16)) ^ LODWORD(STACK[0x50F0]) ^ ((-220373115 * (v65 + v8 + LODWORD(STACK[0x4B30])) + ((-220373115 * (v65 + v8 + LODWORD(STACK[0x4B30]))) >> 16)) >> 8);
  LODWORD(STACK[0x50A8]) = v67;
  LODWORD(STACK[0x5030]) = 1750673141 * v67;
  v68 = STACK[0x5440];
  v69 = -700513055 * ((((1750673141 * v67) ^ ((1750673141 * v67) >> 16)) - (((1750673141 * v67) ^ ((1750673141 * v67) >> 16)) >> 8)) ^ LODWORD(STACK[0x5440]));
  v70 = STACK[0x50E8];
  v71 = v69 - HIWORD(v69) + LODWORD(STACK[0x50E8]) - ((v69 - HIWORD(v69)) >> 8);
  v72 = (LODWORD(STACK[0x4A98]) ^ v20 ^ v45) + v66;
  LODWORD(STACK[0x5038]) = v72;
  v73 = -1943940917 * (((-223756083 * v72) ^ ((-223756083 * v72) >> 16)) + v11 - (((-223756083 * v72) ^ ((-223756083 * v72) >> 16)) >> 8));
  v74 = v73 - HIWORD(v73) + v68 + ((v73 - HIWORD(v73)) >> 8);
  v75 = __ROR4__(__ROR4__(v61, 26) ^ 0x8F3DC85B, 6) ^ 0x6E3CF721;
  LODWORD(STACK[0x5058]) = v75;
  v76 = -1030192829 * (((278543685 * v74 - ((278543685 * v74) >> 16)) ^ ((278543685 * v74 - ((278543685 * v74) >> 16)) >> 8)) - v70);
  v77 = v76 ^ HIWORD(v76) ^ ((v76 ^ HIWORD(v76)) >> 8);
  LODWORD(STACK[0x55B0]) = v77;
  if (((v76 ^ BYTE2(v76)) ^ ((v76 ^ HIWORD(v76)) >> 8)))
  {
    v78 = v64;
  }

  else
  {
    v78 = v75;
  }

  if (((v76 ^ BYTE2(v76)) ^ ((v76 ^ HIWORD(v76)) >> 8)))
  {
    v79 = v63;
  }

  else
  {
    v79 = v62;
  }

  if ((((v76 ^ BYTE2(v76)) ^ ((v76 ^ HIWORD(v76)) >> 8)) & 2) != 0)
  {
    v80 = v79;
  }

  else
  {
    v80 = v78;
  }

  if ((((v76 ^ BYTE2(v76)) ^ ((v76 ^ HIWORD(v76)) >> 8)) & 2) == 0)
  {
    v78 = v79;
  }

  v81 = 1201002897 * v71 - ((1201002897 * v71) >> 16) + ((1201002897 * v71 - ((1201002897 * v71) >> 16)) >> 8);
  LODWORD(STACK[0x5288]) = v81;
  v82 = v81 - LODWORD(STACK[0x50F8]);
  v83 = v82 + (v76 ^ BYTE2(v76) ^ ((v76 ^ HIWORD(v76)) >> 8));
  v84 = v82 + v77 + v82;
  if (v84)
  {
    v85 = v50;
  }

  else
  {
    v85 = v48;
  }

  LODWORD(STACK[0x4EE0]) = v85;
  if (v84)
  {
    v86 = v51;
  }

  else
  {
    v86 = v49;
  }

  LODWORD(STACK[0x4EE8]) = v86;
  v87 = 8 * v81;
  LODWORD(STACK[0x55F0]) = v87;
  v88 = -v87;
  if ((v84 & 2) != 0)
  {
    v86 = v85;
  }

  v89 = v87 & 0x18;
  v90 = v88 & 0x18;
  if ((v88 & 0x18) != 0)
  {
    v91 = (v86 << (v87 & 0x18)) ^ (v86 >> (v88 & 0x18));
  }

  else
  {
    v91 = v86;
  }

  LODWORD(STACK[0x50D8]) = v91;
  if ((v88 & 0x18) != 0)
  {
    v92 = (v80 << v89) ^ (v80 >> v90);
  }

  else
  {
    v92 = v80;
  }

  LODWORD(STACK[0x50E0]) = v92;
  if ((v88 & 0x18) != 0)
  {
    v93 = (v78 << v89) + (v78 >> v90);
  }

  else
  {
    v93 = v78;
  }

  LODWORD(STACK[0x5250]) = v93;
  v94 = STACK[0x5258];
  if (STACK[0x5258])
  {
    v95 = STACK[0x5298];
  }

  else
  {
    v95 = STACK[0x5380];
  }

  v96 = STACK[0x5380];
  v97 = STACK[0x51A0];
  if ((v94 & 1) == 0)
  {
    v97 = STACK[0x5228];
  }

  v98 = STACK[0x5198];
  if (v94)
  {
    v99 = ((LODWORD(STACK[0x52A0]) - LODWORD(STACK[0x4B48])) ^ LODWORD(STACK[0x4B48])) + 2 * ((LODWORD(STACK[0x52A0]) - LODWORD(STACK[0x4B48])) & STACK[0x4B48]);
  }

  else
  {
    v98 = STACK[0x5240];
    v99 = STACK[0x5298];
  }

  v100 = STACK[0x52A8];
  if (v94)
  {
    v101 = STACK[0x52A8];
  }

  else
  {
    v101 = ((LODWORD(STACK[0x52A0]) - LODWORD(STACK[0x4B48])) ^ LODWORD(STACK[0x4B48])) + 2 * ((LODWORD(STACK[0x52A0]) - LODWORD(STACK[0x4B48])) & STACK[0x4B48]);
  }

  STACK[0x52A0] = v12;
  if (v94)
  {
    v102 = v96;
  }

  else
  {
    v102 = v100;
  }

  if ((v94 & 2) != 0)
  {
    v103 = v98;
  }

  else
  {
    v103 = v97;
  }

  if ((v94 & 2) == 0)
  {
    v97 = v98;
  }

  v104 = v84 + v82;
  v105 = STACK[0x5680];
  if ((v84 + v82))
  {
    v106 = v103;
  }

  else
  {
    v106 = STACK[0x5680];
  }

  LODWORD(STACK[0x5040]) = v106;
  v107 = STACK[0x5430];
  if (v104)
  {
    v103 = STACK[0x5430];
    LODWORD(v107) = v97;
  }

  LODWORD(STACK[0x5048]) = v107;
  if ((v104 & 1) == 0)
  {
    LODWORD(v105) = v97;
  }

  LODWORD(STACK[0x5198]) = v105;
  v108 = v104;
  if ((v104 & 2) != 0)
  {
    LODWORD(v107) = v106;
    v109 = v105;
  }

  else
  {
    v109 = v103;
  }

  v110 = v103;
  if ((v88 & 0x18) != 0)
  {
    v111 = (v109 << v89) + (v109 >> (v88 & 0x18));
  }

  else
  {
    v111 = v109;
  }

  LODWORD(STACK[0x5298]) = v111;
  v112 = __ROR4__(v107, v88 & 0x18);
  if ((v88 & 0x18) != 0)
  {
    v113 = v112;
  }

  else
  {
    v113 = v107;
  }

  LODWORD(STACK[0x52A8]) = v113;
  if (v84)
  {
    v114 = v48;
  }

  else
  {
    v114 = v51;
  }

  if (v84)
  {
    v115 = v49;
  }

  else
  {
    v115 = v50;
  }

  if ((v84 & 2) != 0)
  {
    v116 = v115;
  }

  else
  {
    v116 = v114;
  }

  if ((v94 & 2) != 0)
  {
    v117 = v102;
  }

  else
  {
    v117 = v99;
  }

  if ((v94 & 2) != 0)
  {
    v118 = v99;
  }

  else
  {
    v118 = v102;
  }

  if ((v94 & 2) != 0)
  {
    v119 = v95;
  }

  else
  {
    v119 = v101;
  }

  if ((v94 & 2) != 0)
  {
    v95 = v101;
  }

  v120 = v108;
  if (v108)
  {
    v121 = v117;
  }

  else
  {
    v121 = v95;
  }

  LODWORD(STACK[0x5018]) = v121;
  if (v108)
  {
    v122 = v95;
  }

  else
  {
    v122 = v118;
  }

  LODWORD(STACK[0x5010]) = v122;
  if (v108)
  {
    v123 = v118;
  }

  else
  {
    v123 = v119;
  }

  LODWORD(STACK[0x5680]) = v123;
  if (v108)
  {
    v124 = v119;
  }

  else
  {
    v124 = v117;
  }

  LODWORD(STACK[0x5028]) = v124;
  if ((v88 & 0x18) != 0)
  {
    v116 = (v116 << v89) ^ (v116 >> (v88 & 0x18));
  }

  LODWORD(STACK[0x51A0]) = v116;
  v125 = STACK[0x4B50];
  v126 = STACK[0x5460];
  if ((STACK[0x4B50] & 1) == 0)
  {
    v126 = STACK[0x5160];
  }

  v127 = STACK[0x5158];
  if (v125)
  {
    v127 = STACK[0x5168];
  }

  if ((v125 & 2) != 0)
  {
    v128 = v127;
  }

  else
  {
    v128 = v126;
  }

  if ((v125 & 2) != 0)
  {
    v129 = STACK[0x5148];
  }

  else
  {
    v126 = v127;
    v129 = STACK[0x5150];
  }

  if (v83)
  {
    v130 = v126;
  }

  else
  {
    v130 = v129;
  }

  LODWORD(STACK[0x4EF0]) = v130;
  v131 = STACK[0x50B8];
  if (v83)
  {
    v132 = v128;
  }

  else
  {
    v132 = STACK[0x50B8];
  }

  if ((v83 & 2) != 0)
  {
    v133 = v130;
  }

  else
  {
    v133 = v132;
  }

  v134 = v88;
  LODWORD(STACK[0x55C0]) = v88;
  if ((v88 & 0x18) != 0)
  {
    v135 = (v133 << v89) + (v133 >> (v88 & 0x18));
  }

  else
  {
    v135 = v133;
  }

  LODWORD(STACK[0x5160]) = v135;
  if (v83)
  {
    v126 = v131;
  }

  LODWORD(STACK[0x50B8]) = v126;
  if (v83)
  {
    v136 = v129;
  }

  else
  {
    v136 = v128;
  }

  LODWORD(STACK[0x4ED0]) = v136;
  if ((v83 & 2) != 0)
  {
    v137 = v136;
  }

  else
  {
    v137 = v126;
  }

  LODWORD(STACK[0x4EF8]) = v108;
  if ((v108 & 2) != 0)
  {
    v138 = v123;
  }

  else
  {
    v138 = v121;
  }

  if ((v108 & 2) != 0)
  {
    v139 = v124;
  }

  else
  {
    v139 = v122;
  }

  v140 = STACK[0x5740];
  v141 = LODWORD(STACK[0x5450]) ^ LODWORD(STACK[0x5740]);
  if (v56)
  {
    v142 = LODWORD(STACK[0x5740]) ^ STACK[0x54D0];
  }

  else
  {
    v142 = STACK[0x52D0];
  }

  if (v56)
  {
    v143 = STACK[0x52D0];
  }

  else
  {
    v143 = STACK[0x52E0];
  }

  if (v56)
  {
    v144 = STACK[0x52E0];
  }

  else
  {
    v144 = LODWORD(STACK[0x5450]) ^ LODWORD(STACK[0x5740]);
  }

  if ((v56 & 1) == 0)
  {
    v141 = LODWORD(STACK[0x5740]) ^ STACK[0x54D0];
  }

  if ((v56 & 2) != 0)
  {
    v145 = v141;
  }

  else
  {
    v145 = v143;
  }

  if ((v56 & 2) != 0)
  {
    v141 = v143;
    v146 = v144;
  }

  else
  {
    v146 = v142;
  }

  if ((v56 & 2) == 0)
  {
    v142 = v144;
  }

  v147 = STACK[0x55B0];
  if (STACK[0x55B0])
  {
    v148 = v145;
  }

  else
  {
    v148 = v142;
  }

  LODWORD(STACK[0x4F08]) = v148;
  if ((v147 & 1) == 0)
  {
    v142 = v141;
  }

  LODWORD(STACK[0x4F50]) = v142;
  if ((v147 & 1) == 0)
  {
    v141 = v146;
  }

  LODWORD(STACK[0x4F10]) = v141;
  if ((v147 & 1) == 0)
  {
    v146 = v145;
  }

  LODWORD(STACK[0x4FC8]) = v146;
  if ((v147 & 2) != 0)
  {
    v149 = v141;
  }

  else
  {
    v146 = v142;
    v149 = v148;
  }

  v151 = v134 & 0x18;
  v150 = (v134 & 0x18) == 0;
  LODWORD(STACK[0x5228]) = v138;
  v152 = (v138 >> (v134 & 0x18)) + (v138 << v89);
  v153 = __ROR4__(v139, v151);
  if (v150)
  {
    v154 = v139;
  }

  else
  {
    v154 = v153;
  }

  LODWORD(STACK[0x5240]) = v154;
  if (!v150)
  {
    v146 = (v146 >> v151) ^ (v146 << v89);
  }

  LODWORD(STACK[0x5150]) = v146;
  v155 = __ROR4__(v149, v151);
  if (v150)
  {
    v155 = v149;
  }

  LODWORD(STACK[0x5148]) = v155;
  v156 = (v137 << v89) ^ (v137 >> v151);
  if (v150)
  {
    v156 = v137;
  }

  LODWORD(STACK[0x5158]) = v156;
  if (v150)
  {
    v157 = v138;
  }

  else
  {
    v157 = v152;
  }

  LODWORD(STACK[0x50D0]) = v157;
  v158 = LODWORD(STACK[0x50C8]) ^ v20;
  v159 = LODWORD(STACK[0x5008]) ^ v20;
  v160 = LODWORD(STACK[0x4FE8]) ^ v20;
  v161 = LODWORD(STACK[0x4FF0]) ^ v20;
  if (v84)
  {
    v162 = LODWORD(STACK[0x4FF0]) ^ v20;
  }

  else
  {
    v162 = LODWORD(STACK[0x50C8]) ^ v20;
  }

  LODWORD(STACK[0x4FF0]) = v162;
  if (v84)
  {
    v163 = v158;
  }

  else
  {
    v163 = v160;
  }

  LODWORD(STACK[0x4FE0]) = v163;
  if ((v84 & 1) == 0)
  {
    v160 = v159;
  }

  LODWORD(STACK[0x5008]) = v160;
  if (v84)
  {
    v164 = v159;
  }

  else
  {
    v164 = v161;
  }

  LODWORD(STACK[0x4FE8]) = v164;
  if ((v84 & 2) != 0)
  {
    v165 = v162;
  }

  else
  {
    v164 = v163;
    v165 = v160;
  }

  v166 = STACK[0x55F0];
  v167 = __ROR4__(v165, v151);
  if ((STACK[0x55F0] & 0x18) != 0)
  {
    v165 = v167;
  }

  LODWORD(STACK[0x5430]) = v165;
  v168 = __ROR4__(v164, v151);
  if ((v166 & 0x18) != 0)
  {
    v164 = v168;
  }

  LODWORD(STACK[0x52E0]) = v164;
  v169 = STACK[0x5198];
  if ((v120 & 2) != 0)
  {
    v169 = v110;
  }

  v170 = STACK[0x4FD0];
  v171 = STACK[0x4F48];
  if (v84)
  {
    v172 = STACK[0x4FD0];
  }

  else
  {
    v172 = STACK[0x4F48];
  }

  v173 = STACK[0x4F58];
  v174 = STACK[0x4FD8];
  if (v84)
  {
    v175 = STACK[0x4FD8];
  }

  else
  {
    v175 = STACK[0x4F58];
  }

  if ((v84 & 2) != 0)
  {
    v176 = v114;
  }

  else
  {
    v176 = v115;
  }

  v177 = STACK[0x4EE8];
  if ((v84 & 2) != 0)
  {
    v178 = v175;
  }

  else
  {
    v177 = STACK[0x4EE0];
    v178 = v172;
  }

  v180 = v166 & 0x18;
  v179 = (v166 & 0x18) == 0;
  if ((v166 & 0x18) != 0)
  {
    v181 = (v178 << (v166 & 0x18)) + (v178 >> v151);
  }

  else
  {
    v181 = v178;
  }

  LODWORD(STACK[0x50C8]) = v181;
  v182 = __ROR4__(v177, v151);
  if (!v179)
  {
    v177 = v182;
  }

  LODWORD(STACK[0x5168]) = v177;
  if (!v179)
  {
    v176 = (v176 >> v151) ^ (v176 << v180);
  }

  LODWORD(STACK[0x5198]) = v176;
  v183 = __ROR4__(v169, v151);
  if (!v179)
  {
    v169 = v183;
  }

  LODWORD(STACK[0x5258]) = v169;
  v184 = STACK[0x5170];
  v185 = (-1217801419 * ((v184 & 0xEECB165 ^ 0xEECB165) + (v184 & 0xEECB165))) ^ LODWORD(STACK[0x5408]) ^ LODWORD(STACK[0x4B60]) ^ 0x22A3F8E9 ^ (LODWORD(STACK[0x4B58]) * ((STACK[0x5380] & 0x7C6CF8FD ^ 0x7C6CF8FD) + (STACK[0x5380] & 0x7C6CF8FD)));
  LODWORD(STACK[0x52D0]) = v185;
  v186 = STACK[0x5520];
  if (v56)
  {
    v185 = STACK[0x5520];
  }

  LODWORD(STACK[0x4EE0]) = v185;
  v187 = STACK[0x5470];
  v188 = STACK[0x5338];
  if (v56)
  {
    v189 = STACK[0x5338];
  }

  else
  {
    v189 = STACK[0x5470];
  }

  LODWORD(STACK[0x4EE8]) = v189;
  if ((v56 & 2) != 0)
  {
    v190 = v189;
  }

  else
  {
    v190 = v185;
  }

  if (v84)
  {
    v174 = v171;
    v191 = v173;
  }

  else
  {
    v191 = v170;
  }

  LODWORD(STACK[0x5380]) = v191;
  v192 = STACK[0x4B38];
  if (v125)
  {
    v192 = STACK[0x4AE0];
  }

  v193 = STACK[0x5278];
  if ((v125 & 1) == 0)
  {
    v193 = STACK[0x4AE8];
  }

  v194 = v140 ^ LODWORD(STACK[0x54E0]);
  if (v125)
  {
    v195 = v140 ^ LODWORD(STACK[0x54E0]);
  }

  else
  {
    v195 = STACK[0x5270];
  }

  v196 = STACK[0x52E8];
  if (v125)
  {
    v197 = STACK[0x5270];
  }

  else
  {
    v197 = STACK[0x52E8];
  }

  if (v125)
  {
    v194 = LODWORD(STACK[0x5410]) ^ v140;
  }

  else
  {
    v196 = LODWORD(STACK[0x5410]) ^ v140;
  }

  if (v125)
  {
    v198 = STACK[0x5188];
  }

  else
  {
    v198 = v184;
  }

  if (v125)
  {
    v199 = STACK[0x5178];
  }

  else
  {
    v199 = STACK[0x5180];
  }

  if ((v125 & 2) != 0)
  {
    v200 = v193;
  }

  else
  {
    v200 = v192;
  }

  LODWORD(STACK[0x5450]) = v200;
  if ((v125 & 2) == 0)
  {
    v192 = v193;
  }

  LODWORD(STACK[0x5460]) = v192;
  if ((v125 & 2) != 0)
  {
    v201 = v194;
  }

  else
  {
    v201 = v197;
  }

  if ((v125 & 2) != 0)
  {
    v202 = v197;
  }

  else
  {
    v202 = v194;
  }

  if ((v125 & 2) != 0)
  {
    v203 = v196;
  }

  else
  {
    v203 = v195;
  }

  if ((v125 & 2) != 0)
  {
    v204 = STACK[0x5190];
  }

  else
  {
    v195 = v196;
    v204 = STACK[0x4AD8];
  }

  if ((v125 & 2) != 0)
  {
    v205 = v199;
  }

  else
  {
    v205 = v198;
  }

  if ((v125 & 2) == 0)
  {
    v198 = v199;
  }

  v206 = LODWORD(STACK[0x50A8]) ^ v198 ^ (((STACK[0x5030] & 0x8387D55D ^ 0x8387D55D) + (STACK[0x5030] & 0x8387D55D)) * LODWORD(STACK[0x5030]));
  v207 = v195 + (v161 & 0x4E25121A) + (v161 & 0x4E25121A ^ 0x4E25121A);
  if (v83)
  {
    v208 = v202;
  }

  else
  {
    v208 = v203;
  }

  if (v83)
  {
    v209 = v206;
  }

  else
  {
    v209 = (v145 + LODWORD(STACK[0x4ED8]) + v190) ^ LODWORD(STACK[0x4F00]) ^ (-220373115 * (v145 + LODWORD(STACK[0x4ED8]) + v190) * (((v145 & 0x8BC58835) + 1882872088 + (v145 & 0x8BC58835 ^ 0x8BC58835)) & 0xFFFBC97D));
  }

  if (v83)
  {
    v210 = (v145 + LODWORD(STACK[0x4ED8]) + v190) ^ LODWORD(STACK[0x4F00]) ^ (-220373115 * (v145 + LODWORD(STACK[0x4ED8]) + v190) * (((v145 & 0x8BC58835) + 1882872088 + (v145 & 0x8BC58835 ^ 0x8BC58835)) & 0xFFFBC97D));
  }

  else
  {
    v210 = v205;
  }

  if (v83)
  {
    v206 = v204;
  }

  else
  {
    v205 = v204;
  }

  if (v83)
  {
    v202 = v207 - 1311052314;
  }

  else
  {
    v203 = v201;
  }

  if (v83)
  {
    v211 = v201;
  }

  else
  {
    v211 = v207 - 1311052314;
  }

  if ((v83 & 2) != 0)
  {
    v212 = v209;
  }

  else
  {
    v212 = v205;
  }

  if ((v83 & 2) != 0)
  {
    v213 = v205;
  }

  else
  {
    v213 = v209;
  }

  LODWORD(STACK[0x50A8]) = v213;
  if ((v83 & 2) != 0)
  {
    v214 = v210;
  }

  else
  {
    v214 = v206;
  }

  if ((v83 & 2) != 0)
  {
    v210 = v206;
  }

  else
  {
    v132 = STACK[0x4EF0];
  }

  if ((v83 & 2) != 0)
  {
    v215 = STACK[0x50B8];
  }

  else
  {
    v215 = STACK[0x4ED0];
  }

  if ((v83 & 2) != 0)
  {
    v216 = v202;
  }

  else
  {
    v216 = v203;
  }

  if ((v83 & 2) != 0)
  {
    v202 = v203;
    v217 = v211;
  }

  else
  {
    v217 = v208;
  }

  if ((v83 & 2) != 0)
  {
    v211 = v208;
  }

  if ((v84 & 2) != 0)
  {
    v218 = v172;
  }

  else
  {
    v218 = v175;
  }

  if ((v84 & 2) != 0)
  {
    v219 = v174;
  }

  else
  {
    v219 = v191;
  }

  v220 = v174;
  v221 = STACK[0x55C0];
  v222 = STACK[0x55C0] & 0x18;
  v223 = __ROR4__(v219, v222);
  if ((STACK[0x55C0] & 0x18) != 0)
  {
    v224 = v223;
  }

  else
  {
    v224 = v219;
  }

  LODWORD(STACK[0x50B8]) = v224;
  if ((v221 & 0x18) != 0)
  {
    v225 = (v218 >> v222) ^ (v218 << v180);
  }

  else
  {
    v225 = v218;
  }

  LODWORD(STACK[0x5170]) = v225;
  v226 = STACK[0x55F0];
  v227 = STACK[0x55F0] & 0x18;
  if ((STACK[0x55F0] & 0x18) != 0)
  {
    v217 = (v217 << (STACK[0x55F0] & 0x18)) ^ (v217 >> v222);
  }

  LODWORD(STACK[0x54E0]) = v217;
  if ((v226 & 0x18) != 0)
  {
    v202 = (v202 >> v222) ^ (v202 << v227);
  }

  LODWORD(STACK[0x52E8]) = v202;
  if ((v226 & 0x18) != 0)
  {
    v228 = (v211 << v227) ^ (v211 >> v222);
  }

  else
  {
    v228 = v211;
  }

  LODWORD(STACK[0x5408]) = v228;
  v229 = (v216 >> v222) + (v216 << v227);
  if ((v226 & 0x18) == 0)
  {
    v229 = v216;
  }

  LODWORD(STACK[0x5410]) = v229;
  if (v56)
  {
    v230 = v187;
  }

  else
  {
    v230 = v186;
  }

  v231 = STACK[0x52D0];
  if ((v56 & 1) == 0)
  {
    v231 = v188;
  }

  v232 = STACK[0x4EE0];
  if ((v56 & 2) != 0)
  {
    v233 = v231;
  }

  else
  {
    v232 = STACK[0x4EE8];
    v233 = v230;
  }

  if ((v56 & 2) != 0)
  {
    v231 = v230;
  }

  v234 = STACK[0x55B0];
  v235 = STACK[0x5058];
  if ((STACK[0x55B0] & 1) == 0)
  {
    v235 = STACK[0x5050];
  }

  v236 = STACK[0x5060];
  if ((v234 & 1) == 0)
  {
    v236 = STACK[0x50A0];
  }

  LODWORD(STACK[0x54D0]) = v190;
  if (v234)
  {
    v237 = v190;
  }

  else
  {
    v237 = v231;
  }

  if ((v234 & 1) == 0)
  {
    v231 = v232;
    v232 = v233;
    v233 = v190;
  }

  v238 = v234;
  if ((v234 & 2) != 0)
  {
    v239 = v236;
  }

  else
  {
    v239 = v235;
  }

  if ((v234 & 2) == 0)
  {
    v235 = v236;
  }

  if ((v226 & 0x18) != 0)
  {
    v240 = (v239 << (v226 & 0x18)) ^ (v239 >> v222);
  }

  else
  {
    v240 = v239;
  }

  LODWORD(STACK[0x5338]) = v240;
  if ((v226 & 0x18) != 0)
  {
    v235 = (v235 << (v226 & 0x18)) ^ (v235 >> v222);
  }

  LODWORD(STACK[0x52D0]) = v235;
  if ((v238 & 2) != 0)
  {
    v241 = v237;
  }

  else
  {
    v241 = v232;
  }

  if ((v238 & 2) != 0)
  {
    v242 = v232;
  }

  else
  {
    v242 = v237;
  }

  if ((v238 & 2) != 0)
  {
    v243 = v231;
  }

  else
  {
    v243 = v233;
  }

  if ((v238 & 2) != 0)
  {
    v244 = v233;
  }

  else
  {
    v244 = v231;
  }

  v245 = STACK[0x4F10];
  if ((v238 & 2) != 0)
  {
    v245 = STACK[0x4F08];
    v246 = STACK[0x4F50];
  }

  else
  {
    v246 = STACK[0x4FC8];
  }

  if ((STACK[0x4EF8] & 2) != 0)
  {
    v247 = STACK[0x5018];
  }

  else
  {
    v247 = STACK[0x5680];
  }

  if ((STACK[0x4EF8] & 2) != 0)
  {
    v248 = STACK[0x5010];
  }

  else
  {
    v248 = STACK[0x5028];
  }

  if ((STACK[0x4EF8] & 2) != 0)
  {
    v249 = STACK[0x5048];
  }

  else
  {
    v249 = STACK[0x5040];
  }

  v250 = v238 + LODWORD(STACK[0x5510]);
  if (v250)
  {
    v251 = STACK[0x50F0];
  }

  else
  {
    v251 = STACK[0x5140];
  }

  if (v250)
  {
    v252 = STACK[0x50E8];
  }

  else
  {
    v252 = STACK[0x50F0];
  }

  if (v250)
  {
    v253 = STACK[0x5440];
  }

  else
  {
    v253 = STACK[0x50E8];
  }

  if (v250)
  {
    v254 = STACK[0x5140];
  }

  else
  {
    v254 = STACK[0x5440];
  }

  v255 = (v250 & 2) == 0;
  v256 = v250;
  LODWORD(STACK[0x5680]) = v250;
  if ((v250 & 2) != 0)
  {
    v257 = v251;
  }

  else
  {
    v257 = v253;
  }

  if (v255)
  {
    v258 = v252;
  }

  else
  {
    v258 = v254;
  }

  v260 = v221 & 0x18;
  v259 = (v221 & 0x18) == 0;
  v261 = __ROR4__(v257, v221 & 0x18);
  if (!v259)
  {
    v257 = v261;
  }

  v262 = __ROR4__(v258, v260);
  if (!v259)
  {
    v258 = v262;
  }

  v263 = v226 & 0x18;
  v264 = __ROR4__(v248, v260);
  if ((v226 & 0x18) != 0)
  {
    v265 = v264;
  }

  else
  {
    v265 = v248;
  }

  LODWORD(STACK[0x5178]) = v265;
  if ((v226 & 0x18) != 0)
  {
    v266 = (v247 >> v260) ^ (v247 << v263);
  }

  else
  {
    v266 = v247;
  }

  LODWORD(STACK[0x5180]) = v266;
  if ((v226 & 0x18) != 0)
  {
    v267 = (v246 << v263) ^ (v246 >> v260);
  }

  else
  {
    v267 = v246;
  }

  LODWORD(STACK[0x5190]) = v267;
  if ((v226 & 0x18) != 0)
  {
    v245 = (v245 >> v260) ^ (v245 << v263);
  }

  LODWORD(STACK[0x5188]) = v245;
  v268 = (v132 >> v260) ^ (v132 << v263);
  if ((v226 & 0x18) == 0)
  {
    v268 = v132;
  }

  LODWORD(STACK[0x5270]) = v268;
  v269 = (v215 << v263) + (v215 >> v260);
  if ((v226 & 0x18) == 0)
  {
    v269 = v215;
  }

  LODWORD(STACK[0x5278]) = v269;
  v270 = (v249 << v263) + (v249 >> v260);
  if ((v226 & 0x18) == 0)
  {
    v270 = v249;
  }

  LODWORD(STACK[0x5280]) = v270;
  v271 = STACK[0x4FE8];
  if ((v84 & 2) != 0)
  {
    v271 = STACK[0x4FE0];
  }

  LODWORD(STACK[0x5470]) = v271;
  v272 = STACK[0x5008];
  if ((v84 & 2) == 0)
  {
    v272 = STACK[0x4FF0];
  }

  LODWORD(STACK[0x5520]) = v272;
  if ((v84 & 2) != 0)
  {
    v273 = STACK[0x5380];
  }

  else
  {
    v273 = v220;
  }

  v274 = v226 & 0x18;
  if ((v226 & 0x18) != 0)
  {
    v214 = (v214 >> v260) + (v214 << (v226 & 0x18));
  }

  LODWORD(STACK[0x50A0]) = v214;
  if ((v226 & 0x18) != 0)
  {
    v275 = (v210 >> v260) ^ (v210 << v274);
  }

  else
  {
    v275 = v210;
  }

  v276 = (v212 >> v260) ^ (v212 << v274);
  if ((v226 & 0x18) == 0)
  {
    v276 = v212;
  }

  LODWORD(STACK[0x50E8]) = v276;
  LODWORD(STACK[0x5140]) = v273;
  v277 = (v273 << v274) + (v273 >> v260);
  if ((v226 & 0x18) == 0)
  {
    v277 = v273;
  }

  LODWORD(STACK[0x50F0]) = v277;
  if ((v256 & 2) != 0)
  {
    v278 = v252;
  }

  else
  {
    v278 = v254;
  }

  if ((v256 & 2) != 0)
  {
    v279 = v253;
  }

  else
  {
    v279 = v251;
  }

  v281 = v226 & 0x18;
  v280 = v281 == 0;
  v282 = (v243 << v281) ^ (v243 >> v260);
  if (!v281)
  {
    v282 = v243;
  }

  v283 = STACK[0x5640] & 0x8A8A8A8A;
  v284 = (v283 ^ 0x2808880) << (!((v244 >> v260) & 1) + ((v244 >> v260) & 1));
  v285 = STACK[0x5660];
  v286 = STACK[0x5790];
  v287 = STACK[0x5780];
  v288 = STACK[0x5540];
  v289 = v282 ^ LODWORD(STACK[0x5540]) ^ v257 ^ (((v284 & 0x22D6639A ^ 0x282028A ^ (v284 ^ 0x8A8A8A8A) & (LODWORD(STACK[0x5660]) ^ 0x418AA46D)) << STACK[0x5790]) + (((v284 ^ 0x8A8A8A8A) & STACK[0x5720]) >> STACK[0x5780]));
  v290 = (v241 >> v260) ^ (v241 << v281);
  if (!v281)
  {
    v290 = v241;
  }

  v291 = (v278 >> v260) ^ (v278 << v281);
  if (!v281)
  {
    v291 = v278;
  }

  v292 = STACK[0x57C0];
  v293 = STACK[0x5760];
  v294 = STACK[0x57B0];
  v295 = v288 ^ (((((2 * v283) ^ 0x8F8B9B8A) & STACK[0x5760]) << STACK[0x57B0]) + ((((2 * v283) ^ 0x8F8B9B8A) & STACK[0x5720]) >> STACK[0x57C0])) ^ v291 ^ v290;
  LODWORD(STACK[0x5380]) = v281;
  v296 = (v242 >> v260) ^ (v242 << v281);
  if (v281)
  {
    LODWORD(v244) = (v244 << v281) ^ (v244 >> v260);
  }

  else
  {
    v296 = v242;
  }

  v297 = __ROR4__(v279, v260);
  if (v281)
  {
    v279 = v297;
  }

  v298 = STACK[0x5650];
  v299 = STACK[0x5600] & 0x11141000 ^ 0xB12980A ^ (LODWORD(STACK[0x5650]) ^ 0xB939984u) & STACK[0x51A8];
  v300 = v288 ^ (STACK[0x4AF0] + (v299 >> v292)) ^ v258 ^ v296;
  v301 = v286;
  v302 = ((STACK[0x5600] & 0x15001104 ^ 0x8B82998A ^ (v285 ^ 0x9C9E1E18) & STACK[0x51A8]) << v286) ^ v288 ^ (v299 >> v287) ^ v279 ^ v244;
  v303 = STACK[0x53E0];
  v304 = v293 & STACK[0x53E0];
  v305 = v288 ^ (v304 << v294) ^ ((STACK[0x5530] & 0x1435342 ^ 0x80E1F0A0 ^ (LODWORD(STACK[0x5650]) ^ 0x9102F208) & STACK[0x53E0]) >> v287) ^ v275 ^ __ROR4__(*(v13 + 4 * (545 * v289 + 140610 - 1552 * ((2767376 * (545 * v289 + 140610)) >> 32))), 24) ^ __ROR4__(*(v13 + 4 * (545 * BYTE2(v302) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v302) + 140610)) >> 32))), 8) ^ __ROR4__(*(v13 + 4 * (545 * BYTE1(v295) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v295) + 140610)) >> 32))), 16) ^ *(v13 + 4 * (545 * HIBYTE(v300) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v300) + 140610)) >> 32)));
  STACK[0x5060] = v305;
  LODWORD(STACK[0x5058]) = (545 * v305 + 140610) % ((STACK[0x5228] & 0x610 ^ 0x610) + (STACK[0x5228] & 0x610));
  v306 = LODWORD(STACK[0x5510]) + 1283880843 + (((LODWORD(STACK[0x55B0]) ^ 0xEECBAD87) + 159995321) ^ ((LODWORD(STACK[0x55B0]) ^ 0x9F2DDC4F) + 2020549745) ^ ((LODWORD(STACK[0x55B0]) ^ 0x71E671C8) - 1767601672));
  v307 = __ROR4__(STACK[0x50A8], v260);
  if (v280)
  {
    v307 = STACK[0x50A8];
  }

  v308 = v304 << v301;
  v309 = STACK[0x5720];
  v310 = STACK[0x57A0];
  v311 = *((((v300 >> 13) & 0xF8 | (v300 >> 21) & 7) ^ 0x60) + STACK[0x57A0] + 43648);
  LOBYTE(v311) = v311 ^ (v311 >> 3) ^ (v311 >> 2) ^ 0x25;
  v312 = (v311 + 100) + 258;
  v313 = 545 * (v295 - ((((545 * v312) & 0xFFEFE ^ 0xFFFFFEFE) + ((545 * v312) & 0xFFEFE)) & 0xFFFFFEFE));
  v314 = *(v13 + 4 * (545 * v312 - 1552 * ((2767376 * (545 * v312)) >> 32)));
  v315 = (v314 >> ((((v311 + 102) & 0x1C) + ((-71 - v311) & 0x1C)) & 0x28)) + (v314 << 24);
  v316 = v289;
  LODWORD(v314) = *(v13 + 4 * ((545 * (((HIBYTE(v289) ^ 0x139557C5) + 975017639) ^ ((HIBYTE(v289) ^ 0x859A4FB6) - 1408069930) ^ ((HIBYTE(v289) ^ 0x960F1873) - 1081616111)) - 1814139042) % 0x610)) ^ __ROR4__(*(v13 + 4 * (545 * BYTE1(v302) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v302) + 140610)) >> 32))), 16);
  v317 = __ROR4__(*(v13 + 4 * (v313 % 0x610)), 24);
  v318 = (v308 + ((STACK[0x5720] & v303) >> v292)) ^ v288 ^ v307;
  v319 = STACK[0x5680];
  LODWORD(STACK[0x51A8]) = 0;
  v320 = v318 ^ ((v314 ^ -v314 ^ (v315 - (v315 ^ v314))) + v315) ^ v317;
  LOBYTE(v318) = *((v302 ^ 0xE2u) + v310 + 13888);
  v321 = 545 * (LODWORD(STACK[0x5238]) - 85 * (((v318 ^ (16 * v318) ^ 0x2F) + 65) ^ ((v318 ^ (16 * v318) ^ 0x4A) + 38) ^ ((v318 ^ (16 * v318) ^ 0x40) + 48))) + 140610;
  v322 = v316;
  v323 = 545 * BYTE2(v316) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v316) + 140610)) >> 32);
  LODWORD(v308) = 545 * (-85 * (*(v310 + (BYTE1(v300) ^ 0x52u) + 86720) ^ (*(v310 + (BYTE1(v300) ^ 0x52u) + 86720) >> 2) & 0x39 ^ 0xEF)) + 140610;
  LODWORD(v314) = v308 - 1552 * ((2767376 * v308) >> 32);
  v324 = *(v310 + ((55 * v300) ^ 0x7Eu) + 108992) ^ (((55 * v300) ^ 4) + ((55 * v300) ^ 0x59) - ((2 * (((55 * v300) ^ 4) + ((55 * v300) ^ 0x59))) & 0x8E) + 71);
  v325 = STACK[0x5620];
  LODWORD(v308) = STACK[0x5620] & 0x53535352 ^ 0xE8A8BAAB;
  v326 = STACK[0x5660];
  v327 = v288 ^ ((STACK[0x5620] & 0x50120200 ^ 0xE088AA00 ^ v308 & (LODWORD(STACK[0x5660]) ^ 0x93C269F2)) << v294) ^ ((STACK[0x5620] & 0x11405312 ^ 0x80922A ^ v308 & (v298 ^ 0x121D2D0)) >> STACK[0x5780]) ^ LODWORD(STACK[0x50A0]) ^ __ROR4__(*(v13 + 4 * (v321 - 1552 * ((2767376 * v321) >> 32))), 24) ^ __ROR4__(*(v13 + 4 * v323), 8) ^ __ROR4__(*(v13 + 4 * v314), 16) ^ *(v13 + 4 * (545 * HIBYTE(v295) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v295) + 140610)) >> 32)));
  LOBYTE(v314) = (STACK[0x5440] & 8 ^ 8) + (STACK[0x5440] & 8);
  v328 = 545 * ((((v324 ^ 0xA3) + 46) ^ ((v324 ^ 0xD8) + 87) ^ ((v324 ^ 0x44) - 53)) + 65) + 140610;
  LODWORD(STACK[0x5228]) = v322;
  v329 = *(v13 + 4 * (545 * BYTE2(v295) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v295) + 140610)) >> 32)));
  v330 = *(v13 + 4 * (545 * HIBYTE(v302) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v302) + 140610)) >> 32))) ^ v319 ^ (v329 >> v314) ^ (v329 << 24) ^ __ROR4__(*(v13 + 4 * (v328 - 1552 * ((2767376 * v328) >> 32))), 24);
  v331 = __ROR4__(*(v13 + 4 * (545 * BYTE1(v322) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v322) + 140610)) >> 32))), 16);
  v332 = v325 & 0x41134112 ^ 0x4088208A ^ v308 & (v326 ^ 0x22C3A268);
  v333 = v309;
  v334 = v308 & v309;
  STACK[0x5440] = v334;
  v335 = STACK[0x5790];
  v336 = v332 << STACK[0x5790];
  v337 = v292;
  LODWORD(STACK[0x55B0]) = v306;
  v338 = v288 ^ (v336 | (v334 >> v292)) ^ v306 ^ ((v306 ^ 0xE73BE4AD) + 722302106) ^ ((v306 ^ 0xEDBEC049) + 562581630) ^ ((v306 ^ 0x469FB4D0) - 1968626459) ^ ((v306 ^ 0x7FD3FFFF) - 1276809268) ^ LODWORD(STACK[0x50E8]) ^ 0x39F7CCBC ^ ((v330 ^ v331) - ((2 * (v330 ^ v331)) & 0x147D46EE) + 171877239);
  v339 = STACK[0x54B0];
  v340 = STACK[0x5600] & 0x80480382 ^ 0x802802A2 ^ (v298 ^ 0x808D024C) & STACK[0x54B0];
  v341 = !((STACK[0x5600] & 0x82 ^ 0xA2 ^ (v298 ^ 0x4C) & LODWORD(STACK[0x54B0])) & 1);
  LOBYTE(v308) = (v341 + (v298 & 1)) | 1;
  v342 = STACK[0x5640] & 0xE7E7E7E7;
  LOBYTE(v322) = v335;
  v343 = v333;
  LODWORD(v308) = ((((v342 ^ 0x22C485C5) << v308) & 0xE5970D3E ^ 0xE5870527 ^ (((v342 ^ 0x22C485C5) << v308) ^ 0xE7E7E7E7) & (v326 ^ 0x86CBCAC9)) << v335) | (((((v342 ^ 0x22C485C5) << v308) ^ 0xE7E7E7E7) & v333) >> v337);
  LODWORD(v332) = *(v310 + (((v320 >> 5) & 0xF8 | (v320 >> 13)) ^ 0x81) + 109504);
  LODWORD(v332) = 545 * ((((((v332 >> 1) | (v332 << 7)) ^ 0xA2) + 81) ^ ((((v332 >> 1) | (v332 << 7)) ^ 0x74) - 121) ^ ((((v332 >> 1) | (v332 << 7)) ^ 0x94) + 103)) - 77) + 140610;
  v344 = *(v310 + (((v327 >> 11) & 0xE0 | (v327 >> 19) & 0x1F) ^ 0x4F) + 135781);
  v345 = (((v344 ^ 0x4E) - 78) ^ ((v344 ^ 0x98) + 104) ^ ((v344 ^ 0x6B) - 107)) - 109;
  LOBYTE(v333) = v345 & 0xD6 ^ 0x82;
  v346 = v345 ^ (2 * ((v345 ^ 0x50) & (2 * ((v345 ^ 0x50) & (2 * ((v345 ^ 0x50) & (2 * ((v345 ^ 0x50) & (2 * ((v345 ^ 0x50) & (2 * v333) ^ v333)) ^ v333)) ^ v333)) ^ v333)) ^ v333));
  v347 = 545 * (117 * (v346 ^ (v346 >> 1) ^ (v346 >> 4) ^ 0x29)) + 140610;
  v348 = v308 ^ v288 ^ LODWORD(STACK[0x50F0]) ^ __ROR4__(*(v13 + 4 * LODWORD(STACK[0x5058])), 24) ^ *(v13 + 4 * (545 * HIBYTE(v338) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v338) + 140610)) >> 32))) ^ __ROR4__(*(v13 + 4 * (v332 - 1552 * ((2767376 * v332) >> 32))), 16) ^ __ROR4__(*(v13 + 4 * (v347 - 1552 * ((2767376 * v347) >> 32))), 8);
  LODWORD(v335) = STACK[0x5600];
  LODWORD(STACK[0x50F0]) = 545 * ((v348 >> ((v341 + (v340 | 0x1E)) & 0x10)) - (STACK[0x5600] & 0xCFCFCECE ^ STACK[0x54B0] & 0xEFEFEEEE ^ 0x1BD0D010)) % (((v341 + (v340 & 1)) | 0xB0BAC6F0) ^ 0xB0BAC0E1);
  v349 = STACK[0x5060];
  v350 = *(v13 + 4 * (545 * BYTE1(v338) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v338) + 140610)) >> 32)));
  LODWORD(v350) = (((((2 * v342) ^ 0xA26EEC6D) & STACK[0x5760]) << v322) | ((((2 * v342) ^ 0xA26EEC6D) & v343) >> STACK[0x5780])) ^ v288 ^ LODWORD(STACK[0x50B8]) ^ *(v13 + 4 * (545 * HIBYTE(v320) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v320) + 140610)) >> 32))) ^ __ROR4__(*(v13 + 4 * (545 * v327 + 140610 - 1552 * ((2767376 * (545 * v327 + 140610)) >> 32))), 24) ^ __ROR4__(*(v13 + 4 * (545 * BYTE2(v349) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v349) + 140610)) >> 32))), 8) ^ WORD1(v350) ^ (v350 << (((v336 & 0x2E ^ 0x2E) + (v336 & 0x2E) + (STACK[0x5140] & 0xE2) + (STACK[0x5140] & 0xE2 ^ 0xE2)) & 0xFE));
  v351 = STACK[0x5660];
  v352 = STACK[0x57B0];
  v353 = v288 ^ ((v335 & 0x87CB824E ^ 0x842B226E ^ (LODWORD(STACK[0x5660]) ^ 0xE4A76588) & v339) << STACK[0x57B0]) ^ (v340 >> STACK[0x57C0]) ^ LODWORD(STACK[0x5170]) ^ *(v13 + 4 * (545 * HIBYTE(v327) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v327) + 140610)) >> 32))) ^ __ROR4__(*(v13 + 4 * (545 * v338 + 140610 - 1552 * ((2767376 * (545 * v338 + 140610)) >> 32))), 24) ^ __ROR4__(*(v13 + 4 * (545 * BYTE2(v320) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v320) + 140610)) >> 32))), 8) ^ __ROR4__(*(v13 + 4 * (545 * BYTE1(v349) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v349) + 140610)) >> 32))), 16);
  v354 = 545 * (STACK[0x5060] >> ((STACK[0x5440] & ((v338 & 0xA0 ^ 0xA0) + (v338 & 0xA0)) & 0xE0 | (v343 & 0xA0 | STACK[0x53E0] & 0x18 ^ STACK[0x5530] & 0x10) ^ 0xA0) ^ 0xB0)) + 140610;
  LOBYTE(v308) = *(((55 * v320) ^ 0xD2u) + v310 + 64192) ^ (55 * v320);
  LODWORD(v308) = 545 * ((((v308 ^ 0xED) + 118) ^ ((v308 ^ 0x74) - 19) ^ ((v308 ^ 0xCF) + 88)) + 36) + 140610;
  v355 = *(v310 + ((55 * BYTE1(v327)) ^ 0x6Bu) + 130650);
  v356 = 545 * ((((((v355 >> 5) | (8 * v355)) ^ 0x76) + 52) ^ ((((v355 >> 5) | (8 * v355)) ^ 0xEB) - 81) ^ ((((v355 >> 5) | (8 * v355)) ^ 0x8D) - 55)) - 99) + 140610;
  v357 = v288 ^ (STACK[0x4AF8] + (v340 >> STACK[0x5780])) ^ LODWORD(STACK[0x50C8]) ^ *(v13 + 4 * (v354 - 1552 * ((2767376 * v354) >> 32))) ^ __ROR4__(*(v13 + 4 * (v308 - 1552 * ((2767376 * v308) >> 32))), 24) ^ __ROR4__(*(v13 + 4 * (v356 - 1552 * ((2767376 * v356) >> 32))), 16) ^ __ROR4__(*(v13 + 4 * (545 * BYTE2(v338) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v338) + 140610)) >> 32))), 8);
  LODWORD(STACK[0x54B0]) = 545 * BYTE1(v357) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v357) + 140610)) >> 32);
  v358 = *(v310 + ((55 * HIBYTE(v353)) ^ 0x70u) + 162573);
  LOBYTE(v322) = v358 ^ (v358 >> 6) ^ (v358 >> 3);
  LODWORD(STACK[0x53E0]) = 545 * HIBYTE(v357) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v357) + 140610)) >> 32);
  v359 = 545 * BYTE1(v348) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v348) + 140610)) >> 32);
  LODWORD(STACK[0x5440]) = 545 * v348 + 140610 - 1552 * ((2767376 * (545 * v348 + 140610)) >> 32);
  LODWORD(v340) = 545 * BYTE3(v350) + 140610 - 1552 * ((2767376 * (545 * BYTE3(v350) + 140610)) >> 32);
  HIDWORD(v360) = *(v13 + 4 * (545 * v357 + 140610 - 1552 * ((2767376 * (545 * v357 + 140610)) >> 32)));
  LODWORD(v360) = HIDWORD(v360);
  LODWORD(v308) = 545 * ((v322 ^ 0x8A) - 13) + 140610;
  v361 = 545 * v350 + 140610 - 1552 * ((2767376 * (545 * v350 + 140610)) >> 32);
  v362 = BYTE2(v350) + 258;
  LODWORD(v350) = ((v362 & 0x221 ^ 0x221) + (v362 & 0x221)) * (BYTE1(v350) + 258);
  LODWORD(v336) = (v360 >> 24) ^ __ROR4__(*(v13 + 4 * (545 * BYTE2(v353) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v353) + 140610)) >> 32))), 8) ^ *(v13 + 4 * (545 * BYTE3(v348) + 140610 - 1552 * ((2767376 * (545 * BYTE3(v348) + 140610)) >> 32))) ^ __ROR4__(*(v13 + 4 * (v350 - 1552 * ((2767376 * v350) >> 32))), 16);
  LODWORD(v314) = (LODWORD(STACK[0x5570]) ^ 0x1741D951) - LODWORD(STACK[0x5068]);
  LODWORD(STACK[0x5570]) = v314;
  LODWORD(v348) = v335;
  v363 = (LODWORD(STACK[0x5650]) ^ 0x20410320) & STACK[0x51B0] ^ (v335 & 0x242 | 0x20200000);
  v364 = v288 ^ (STACK[0x5318] << v352) ^ (v363 >> STACK[0x57C0]) ^ LODWORD(STACK[0x5178]) ^ __ROR4__(*(v13 + 4 * v359), 16) ^ *(v13 + 4 * v340) ^ __ROR4__(*(v13 + 4 * (545 * v353 + 140610 - 1552 * ((2767376 * (545 * v353 + 140610)) >> 32))), 24) ^ __ROR4__(*(v13 + 4 * (545 * BYTE2(v357) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v357) + 140610)) >> 32))), 8);
  v365 = STACK[0x5720];
  v366 = (STACK[0x5320] & LODWORD(STACK[0x5720]));
  v367 = ((STACK[0x5620] & 0x40024200 ^ 0x40000220 ^ STACK[0x5320] & (v351 ^ 0x23420142)) << STACK[0x5790]) ^ v288 ^ (v366 >> STACK[0x5780]) ^ LODWORD(STACK[0x50D0]) ^ *(v13 + 4 * LODWORD(STACK[0x53E0])) ^ __ROR4__(*(v13 + 4 * LODWORD(STACK[0x50F0])), 8) ^ __ROR4__(*(v13 + 4 * (545 * BYTE1(v353) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v353) + 140610)) >> 32))), 16) ^ __ROR4__(*(v13 + 4 * v361), 24);
  LODWORD(v335) = v288;
  LODWORD(v366) = ((STACK[0x52F8] << STACK[0x5790]) | (v366 >> STACK[0x57C0])) ^ v288 ^ LODWORD(STACK[0x5240]) ^ (v336 + 1443055937 * v314);
  v368 = v351;
  LODWORD(v310) = v348;
  LOBYTE(v320) = STACK[0x5780];
  LODWORD(v348) = v335 ^ (((v348 & 0x40024200 ^ 0x20216100 ^ (v351 ^ 0x3632062u) & STACK[0x51B0]) << v352) | (v363 >> v320)) ^ LODWORD(STACK[0x5180]) ^ __ROR4__(*(v13 + 4 * LODWORD(STACK[0x54B0])), 16) ^ __ROR4__(*(v13 + 4 * LODWORD(STACK[0x5440])), 24) ^ *(v13 + 4 * (v308 - 1552 * ((2767376 * v308) >> 32))) ^ __ROR4__(*(v13 + 4 * (545 * v362 - 1552 * ((2767376 * (545 * v362)) >> 32))), 8);
  LODWORD(v308) = (v367 >> 13) & 0xF8 | (v367 >> 21) & 7;
  v369 = v308 - ((2 * v308) & 0x76) + 1088393019;
  v370 = STACK[0x57A0];
  LOBYTE(v363) = v369 ^ *(STACK[0x57A0] + (v369 ^ 0x40DE47A6));
  v371 = v364;
  LODWORD(STACK[0x5530]) = v364;
  LOBYTE(v363) = ((v363 ^ 0xA0) - 119) ^ ((v363 ^ 0x4A) + 99) ^ ((v363 ^ 0x3D) + 22);
  LODWORD(v314) = *(v370 + (v364 ^ 0xEEu) + 157879);
  LOBYTE(v336) = ((v314 >> 7) | (2 * v314)) ^ (*(v370 + (v364 ^ 0xEEu) + 157879) >> 1) & 0x3A ^ 0xAF;
  LODWORD(STACK[0x5240]) = HIBYTE(v367);
  v372 = *(v13 + 4 * (545 * BYTE2(v366) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v366) + 140610)) >> 32)));
  v373 = (v372 << ((v366 & 0x18 ^ 0x18) + (v366 & 0x18))) | (v372 >> 8);
  v374 = *(v13 + 4 * (545 * BYTE1(v364) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v364) + 140610)) >> 32)));
  v375 = 545 * (-85 * v336) + 140610 - 1552 * ((2767376 * (545 * (-85 * v336) + 140610)) >> 32);
  v376 = *(v13 + 4 * (545 * (v363 + 100) + 140610 - 1552 * ((2767376 * (545 * (v363 + 100) + 140610)) >> 32)));
  LODWORD(v335) = (v376 >> (((BYTE2(v374) & 0x7C ^ 0x7C) + (BYTE2(v374) & 0x7C)) ^ 0x74u)) + (v376 << 24);
  v377 = v310 & 0x1210104 ^ 0x8B8A8382 ^ (LODWORD(STACK[0x5650]) ^ 0x9B0E8228) & STACK[0x4B00];
  v378 = STACK[0x5620] & 0x24041030 ^ 0x2400021A ^ STACK[0x5368] & (v368 ^ 0x718958C);
  LODWORD(v376) = *(v13 + 4 * (545 * v348 + 140610 - 1552 * ((2767376 * (545 * v348 + 140610)) >> 32)));
  v379 = (v378 << STACK[0x5790]) ^ ((STACK[0x5368] & v365) >> v320);
  v380 = v377 >> STACK[0x57C0];
  LODWORD(v314) = LODWORD(STACK[0x5540]) ^ (STACK[0x5398] | v380) ^ LODWORD(STACK[0x5148]) ^ __ROR4__(v376, 24) ^ __ROR4__(*(v13 + 4 * (545 * BYTE1(v366) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v366) + 140610)) >> 32))), 16) ^ *(v13 + 4 * (545 * HIBYTE(v371) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v371) + 140610)) >> 32))) ^ v335;
  v381 = v379 ^ LODWORD(STACK[0x5540]) ^ LODWORD(STACK[0x5150]) ^ v373 ^ *(v13 + 4 * ((545 * (((HIBYTE(v367) ^ 0xA4604E4D) + 1193460962) ^ ((HIBYTE(v367) ^ 0x998AF7D) - 354802222) ^ ((HIBYTE(v367) ^ 0xADF8E130) + 1320840093)) + 794356469) % 0x610)) ^ __ROR4__(*(v13 + 4 * (545 * BYTE1(v348) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v348) + 140610)) >> 32))), 16) ^ __ROR4__(*(v13 + 4 * v375), 24);
  v382 = 545 * (v314 >> (v378 & 0x10) >> (v378 & 0x10 ^ 0x10)) + 140610;
  v383 = (545 * BYTE2(v381) + 140610) % ((v382 & 0x610 ^ 0x610) + (v382 & 0x610));
  v384 = v370;
  LODWORD(v369) = *(v370 + ((55 * BYTE3(v366)) ^ 0x56u) + 158906);
  LODWORD(v369) = (v369 >> 1) | (v369 << 7);
  LOBYTE(v378) = -78 - 72 * (((v369 ^ 0x1C) + 117) ^ ((v369 ^ 6) - 81) ^ ((v369 ^ 4) + 45));
  LOBYTE(v343) = v378 & 8 | 0x20;
  LOBYTE(v352) = 2 * (((2 * (v343 ^ v378 & 8)) | 8) & v378);
  LOBYTE(v352) = 2 * ((v352 & 0x44 | v343) ^ v352 & v378);
  LOBYTE(v352) = 2 * ((v352 & 0x44 | v343) ^ v352 & v378);
  LOBYTE(v352) = 2 * ((v352 & 0x44 | v343) ^ v352 & v378);
  LODWORD(v369) = 545 * ((v369 ^ v378 ^ (2 * ((v352 & 0x44 | v343) ^ v352 & v378)) ^ 0x3B) - 13) + 140610;
  v385 = 545 * BYTE1(v367) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v367) + 140610)) >> 32);
  v386 = 545 * BYTE2(LODWORD(STACK[0x5530])) + 140610;
  v387 = LODWORD(STACK[0x5540]) ^ (STACK[0x5398] + v380) ^ LODWORD(STACK[0x5188]) ^ ((v374 >> 16) | (v374 << 16)) ^ *(v13 + 4 * (v369 - 1552 * ((2767376 * v369) >> 32))) ^ __ROR4__(*(v13 + 4 * (545 * v367 + 140610 - 1552 * ((2767376 * (545 * v367 + 140610)) >> 32))), 24) ^ __ROR4__(*(v13 + 4 * (545 * BYTE2(v348) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v348) + 140610)) >> 32))), 8);
  LODWORD(v366) = *(v13 + 4 * (545 * v366 + 140610 - 1552 * ((2767376 * (545 * v366 + 140610)) >> 32)));
  LODWORD(v366) = v379 ^ LODWORD(STACK[0x5540]) ^ LODWORD(STACK[0x5190]) ^ *(v13 + 4 * (545 * BYTE3(v348) + 140610 - 1552 * ((2767376 * (545 * BYTE3(v348) + 140610)) >> 32))) ^ (v366 << 8) ^ __ROR4__(*(v13 + 4 * v385), 16) ^ (v366 >> (((3 - v363) ^ (v363 + 100)) & 6 ^ 0x1E));
  LODWORD(v360) = __ROR4__(*(v13 + 4 * (v386 - 1552 * ((2767376 * v386) >> 32))), 8);
  LOWORD(v369) = v366 ^ v360;
  v388 = v387 >> (~v376 & 8) >> (~v376 & 8 ^ 8);
  v389 = *(v13 + 4 * (545 * ((v366 ^ v360) >> 24) + 140610 - 1552 * ((2767376 * (545 * ((v366 ^ v360) >> 24) + 140610)) >> 32)));
  LODWORD(v366) = 545 * ((v366 ^ v360) >> 16) + 140610;
  LODWORD(v348) = 545 * v381 + 140610 - 1552 * ((2767376 * (545 * v381 + 140610)) >> 32);
  LODWORD(v376) = 545 * BYTE1(v369) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v369) + 140610)) >> 32);
  LODWORD(v363) = 545 * HIBYTE(v387) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v387) + 140610)) >> 32);
  LODWORD(v374) = 545 * HIBYTE(v381) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v381) + 140610)) >> 32);
  v390 = v389 ^ __ROR4__(*(v13 + 4 * (v382 - 1552 * ((2767376 * v382) >> 32))), 8) ^ __ROR4__(*(v13 + 4 * (545 * BYTE1(v381) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v381) + 140610)) >> 32))), 16) ^ __ROR4__(*(v13 + 4 * (545 * v387 + 140610 - 1552 * ((2767376 * (545 * v387 + 140610)) >> 32))), 24);
  LODWORD(v380) = 545 * v369 + 140610 - 1552 * ((2767376 * (545 * v369 + 140610)) >> 32);
  LODWORD(v369) = 545 * BYTE2(v387) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v387) + 140610)) >> 32);
  v391 = 545 * v388 + 140610 - 1552 * ((2767376 * (545 * v388 + 140610)) >> 32);
  v392 = *(v13 + 4 * v376);
  LODWORD(v376) = v390 + 1668740781 * LODWORD(STACK[0x5570]);
  v393 = STACK[0x5630] & 0xC5C5C5C5;
  v394 = (v393 ^ 0x81C44484) << (!(v392 & 0x10000) + (BYTE2(v392) & 1));
  v395 = LODWORD(STACK[0x5270]) ^ LODWORD(STACK[0x5540]) ^ __ROR4__(*(v13 + 4 * v383), 8) ^ *(v13 + 4 * (545 * BYTE3(v314) + 140610 - 1552 * ((2767376 * (545 * BYTE3(v314) + 140610)) >> 32))) ^ __ROR4__(*(v13 + 4 * v380), 24) ^ __ROR4__(*(v13 + 4 * v391), 16) ^ ((v394 & 0x2E369896 ^ 0x4048084 ^ (v394 ^ 0xC5C5C5C5) & (LODWORD(STACK[0x5650]) ^ 0x3ED39978)) >> STACK[0x57C0]) ^ ((v394 & 0x1B0D03F1 ^ 0x10501C1 ^ (v394 ^ 0xC5C5C5C5) & (LODWORD(STACK[0x5660]) ^ 0x7851C407)) << STACK[0x57B0]);
  v396 = STACK[0x5660];
  v397 = STACK[0x5310] ^ LODWORD(STACK[0x5540]) ^ ((STACK[0x51C8] & LODWORD(STACK[0x5720])) >> STACK[0x5780]) ^ LODWORD(STACK[0x5158]) ^ v376;
  v398 = LODWORD(STACK[0x5540]) ^ (((STACK[0x5620] & 0x898A8B00 ^ 0xC048CA04 ^ STACK[0x51C8] & (LODWORD(STACK[0x5650]) ^ 0xC90FCACA)) >> STACK[0x57C0]) | ((STACK[0x5620] & 0x98A098A ^ 0xC080B ^ STACK[0x51C8] & (LODWORD(STACK[0x5660]) ^ 0x4AC2CE4Du)) << STACK[0x57B0])) ^ LODWORD(STACK[0x5278]) ^ __ROR4__(v392, 16) ^ __ROR4__(*(v13 + 4 * (545 * v314 + 140610 - 1552 * ((2767376 * (545 * v314 + 140610)) >> 32))), 24) ^ *(v13 + 4 * v374) ^ __ROR4__(*(v13 + 4 * v369), 8);
  v399 = (((STACK[0x5760] & ((2 * v393) ^ 0xC64D4CCD)) << STACK[0x5790]) | ((STACK[0x5720] & ((2 * v393) ^ 0xC64D4CCD)) >> STACK[0x5780])) ^ LODWORD(STACK[0x5540]) ^ LODWORD(STACK[0x5160]) ^ __ROR4__(*(v13 + 4 * (v366 - 1552 * ((2767376 * v366) >> 32))), 8) ^ __ROR4__(*(v13 + 4 * v348), 24) ^ *(v13 + 4 * v363) ^ __ROR4__(*(v13 + 4 * (545 * BYTE1(v314) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v314) + 140610)) >> 32))), 16);
  LOBYTE(v369) = *((((v399 >> 21) & 0xF8 | (v399 >> 29)) ^ 0x29) + v370 + 14656);
  LODWORD(v369) = 545 * ((((v369 ^ 0x4B) + 65) ^ ((v369 ^ 0x3A) + 50) ^ ((v369 ^ 0x55) + 95)) + 52) + 140610;
  v400 = STACK[0x51E0];
  v401 = STACK[0x5600];
  v402 = STACK[0x57B0];
  v403 = LODWORD(STACK[0x5540]) ^ ((STACK[0x5600] & LODWORD(STACK[0x48E0]) ^ 0x80C30020 ^ (LODWORD(STACK[0x5660]) ^ 0xE483C7C2) & v400) << STACK[0x57B0]) ^ ((STACK[0x5600] & 0x7460304 ^ LODWORD(STACK[0x48E8]) ^ (LODWORD(STACK[0x5650]) ^ 0x7232263) & v400) >> STACK[0x57C0]) ^ LODWORD(STACK[0x50D8]) ^ (LODWORD(STACK[0x51A8]) + (*(v13 + 4 * (v369 - 1552 * ((2767376 * v369) >> 32))) ^ __ROR4__(*(v13 + 4 * (545 * BYTE2(v397) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v397) + 140610)) >> 32))), 8) ^ __ROR4__(*(v13 + 4 * (545 * v398 + 140610 - 1552 * ((2767376 * (545 * v398 + 140610)) >> 32))), 24) ^ __ROR4__(*(v13 + 4 * (545 * BYTE1(v395) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v395) + 140610)) >> 32))), 16)));
  LODWORD(STACK[0x5570]) = (545 * BYTE1(v403) + 140610) % ((STACK[0x5620] & 0x600 ^ 0x410) + (STACK[0x5620] & 0x600 ^ 0x200u));
  LOBYTE(v369) = *(v370 + (HIBYTE(v397) ^ 0xA8) + 111808) ^ HIBYTE(v397);
  v404 = 545 * v399 + 140610 - 1552 * ((2767376 * (545 * v399 + 140610)) >> 32);
  LODWORD(v369) = 545 * (64 - 85 * (((v369 ^ 0x44) - 51) ^ ((v369 ^ 0xA3) + 44) ^ ((v369 ^ 0x50) - 39))) + 140610;
  v405 = v369 - 3104 * ((1383688 * v369) >> 32);
  if (v405 >= 0x610)
  {
    v406 = v405 - 1552;
  }

  else
  {
    v406 = v405;
  }

  v407 = 545 * HIBYTE(v395) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v395) + 140610)) >> 32);
  v408 = 545 * BYTE2(v395) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v395) + 140610)) >> 32);
  v409 = *(v13 + 4 * (545 * BYTE1(v397) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v397) + 140610)) >> 32)));
  v410 = (v409 & 0x18 ^ 0x18) + (v409 & 0x18);
  HIDWORD(v411) = v409;
  LODWORD(v411) = v409;
  v412 = (v411 >> 16) ^ __ROR4__(*(v13 + 4 * (545 * BYTE2(v399) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v399) + 140610)) >> 32))), 8);
  v413 = *(v13 + 4 * (545 * v397 + 140610 - 1552 * ((2767376 * (545 * v397 + 140610)) >> 32)));
  v414 = ((32 * ((v413 >> v410) & 7)) ^ 0xFD5D45CF) & (((v413 >> v410) >> 3) ^ 0xFF7DCFFF) | ((v413 >> v410) >> 3) & 0x10;
  LOBYTE(v414) = ((v414 ^ *(v370 + (v414 ^ 0xFD5C90DB)) ^ 0xF4) + 104) ^ ((v414 ^ *(v370 + (v414 ^ 0xFD5C90DB)) ^ 0x44) - 40) ^ ((v414 ^ *(v370 + (v414 ^ 0xFD5C90DB)) ^ 0x1C) - 112);
  v415 = *(v13 + 4 * (545 * v395 + 140610 - 1552 * ((2767376 * (545 * v395 + 140610)) >> 32)));
  LODWORD(STACK[0x4FC8]) = -64;
  v416 = LODWORD(STACK[0x5680]) - LODWORD(STACK[0x55B0]) + 868839371 + (v412 ^ __ROR4__(v415, 24) ^ *(v13 + 4 * (545 * HIBYTE(v398) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v398) + 140610)) >> 32))));
  v417 = v401;
  v418 = LODWORD(STACK[0x5540]) ^ (((v401 & 0x47400146 ^ 0x20C02002 ^ (v396 ^ 0x484E6A0) & v400) << v402) | ((v401 & 0x45430540 ^ 0x8063A000 ^ (LODWORD(STACK[0x5650]) ^ 0xC586A4A6) & v400) >> STACK[0x57C0])) ^ LODWORD(STACK[0x5168]) ^ *(v13 + 4 * v407) ^ __ROR4__(*(v13 + 4 * (545 * BYTE1(v399) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v399) + 140610)) >> 32))), 16) ^ __ROR4__(*(v13 + 4 * (545 * BYTE2(v398) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v398) + 140610)) >> 32))), 8) ^ ((117 * v414 - 64) | (v413 << 8));
  v419 = STACK[0x5790];
  v420 = STACK[0x5390] << STACK[0x5790];
  v421 = v420 ^ STACK[0x51C0] ^ LODWORD(STACK[0x5540]) ^ LODWORD(STACK[0x51A0]) ^ v416;
  v422 = (v420 + STACK[0x51C0]) ^ LODWORD(STACK[0x5540]) ^ LODWORD(STACK[0x5198]) ^ __ROR4__(*(v13 + 4 * v404), 24) ^ *(v13 + 4 * v406) ^ __ROR4__(*(v13 + 4 * (545 * BYTE1(v398) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v398) + 140610)) >> 32))), 16) ^ __ROR4__(*(v13 + 4 * v408), 8);
  v423 = *((BYTE2(v422) ^ 0x6Du) + v384 + 49024);
  v424 = ((((v423 >> 5) | (8 * v423)) ^ 0x85) - 38) ^ ((((v423 >> 5) | (8 * v423)) ^ 0xBD) - 30) ^ ((((v423 >> 5) | (8 * v423)) ^ 0x89) - 42);
  v425 = 545 * HIBYTE(v403) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v403) + 140610)) >> 32);
  LODWORD(v420) = 545 * v421 + 140610 - 1552 * ((2767376 * (545 * v421 + 140610)) >> 32);
  LOBYTE(v408) = (((((8 * v422) | (v422 >> 5)) ^ 0x2F) + 27) ^ ((((8 * v422) | (v422 >> 5)) ^ 0x97) - 93) ^ ((((8 * v422) | (v422 >> 5)) ^ 3) + 55)) - 35;
  v426 = v408 & 0x90 | 0x2B;
  v427 = v426 ^ v408 & 0x76;
  v428 = 545 * BYTE1(v418) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v418) + 140610)) >> 32);
  v429 = 545 * ((*((((8 * v422) | (v422 >> 5)) ^ 0xD6u) + v384 + 54912) ^ v408 ^ (2 * ((v408 ^ 0x10) & (2 * ((v408 ^ 0x10) & (2 * ((v408 ^ 0x10) & (2 * ((v408 ^ 0x10) & (2 * (v408 & (2 * (v408 & (2 * v426) ^ v427)) ^ v427)) ^ v427)) ^ v427)) ^ v427)) ^ v427)) ^ 0xF5) + 100) + 140610;
  v430 = *(v13 + 4 * (v429 - 1552 * ((2767376 * v429) >> 32)));
  v431 = *((((v418 >> 13) & 0xF8 | (v418 >> 21) & 7) ^ 0xF4) + v384 + 37696);
  LOBYTE(v414) = v431 ^ 0xB7 ^ (2 * v431) & 0xC7;
  v432 = 545 * BYTE2(v421) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v421) + 140610)) >> 32);
  v433 = *(v384 + ((v430 >> 24) ^ 0x7B) + 131163);
  v434 = (LODWORD(STACK[0x4A50]) - 85 * (((v433 ^ 0xAB) + 38) ^ ((v433 ^ 0x3F) - 78) ^ ((v433 ^ 0xFA) + 117))) | (v430 << 8);
  v435 = 545 * v403 + 140610 - 1552 * ((2767376 * (545 * v403 + 140610)) >> 32);
  LODWORD(v413) = 545 * BYTE1(v421) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v421) + 140610)) >> 32);
  v436 = 545 * BYTE2(v403) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v403) + 140610)) >> 32);
  LODWORD(v430) = 545 * HIBYTE(v418) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v418) + 140610)) >> 32);
  v437 = 545 * BYTE1(v422) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v422) + 140610)) >> 32);
  v438 = 545 * HIBYTE(v422) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v422) + 140610)) >> 32);
  v439 = 545 * (((v421 >> 8) + 16908288) >> 16) - 1552 * ((2767376 * (545 * (((v421 >> 8) + 16908288) >> 16))) >> 32);
  v440 = 545 * (v414 + 100) + 140610 - 1552 * ((2767376 * (545 * (v414 + 100) + 140610)) >> 32);
  v441 = (((STACK[0x5620] & 0xB4100080 ^ STACK[0x54C0] & (v396 ^ 0xDE048E7E) ^ 0x3C584888) << STACK[0x5790]) | STACK[0x51D8]) ^ LODWORD(STACK[0x5540]) ^ LODWORD(STACK[0x5280]) ^ __ROR4__(*(v13 + 4 * v436), 8) ^ __ROR4__(*(v13 + 4 * v437), 16) ^ *(v13 + 4 * v439) ^ __ROR4__(*(v13 + 4 * (545 * v418 + 140610 - 1552 * ((2767376 * (545 * v418 + 140610)) >> 32))), 24);
  v442 = v417 & 0xB4349490 ^ 0x5A0A8058 ^ (v396 ^ 0x9C62522E) & STACK[0x5200];
  v443 = (v417 & 0x84840094 ^ 0xACA0052 ^ (LODWORD(STACK[0x5650]) ^ LODWORD(STACK[0x48D8])) & STACK[0x5200]) >> STACK[0x57C0];
  v444 = STACK[0x5540];
  v445 = LODWORD(STACK[0x5540]) ^ (STACK[0x4B08] | v443) ^ LODWORD(STACK[0x5298]) ^ __ROR4__(*(v13 + 4 * LODWORD(STACK[0x5570])), 16) ^ __ROR4__(*(v13 + 4 * v432), 8) ^ *(v13 + 4 * v430) ^ v434;
  v446 = LODWORD(STACK[0x5540]) ^ (v442 << STACK[0x57B0]) ^ v443 ^ LODWORD(STACK[0x52A8]) ^ __ROR4__(*(v13 + 4 * v435), 24) ^ __ROR4__(*(v13 + 4 * v413), 16) ^ *(v13 + 4 * v438) ^ __ROR4__(*(v13 + 4 * v440), 8);
  v447 = 545 * (LODWORD(STACK[0x4D1C]) - 85 * v424) + 140610;
  v448 = ((STACK[0x5378] << STACK[0x5790]) | STACK[0x51D8]) ^ LODWORD(STACK[0x5540]) ^ LODWORD(STACK[0x5258]) ^ *(v13 + 4 * v425) ^ __ROR4__(*(v13 + 4 * v420), 24) ^ __ROR4__(*(v13 + 4 * v428), 16) ^ __ROR4__(*(v13 + 4 * (v447 - 1552 * ((2767376 * v447) >> 32))), 8);
  v449 = *(v13 + 4 * (545 * HIBYTE(v448) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v448) + 140610)) >> 32))) ^ __ROR4__(*(v13 + 4 * (545 * v441 + 140610 - 1552 * ((2767376 * (545 * v441 + 140610)) >> 32))), 24) ^ __ROR4__(*(v13 + 4 * (545 * BYTE1(v445) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v445) + 140610)) >> 32))), 16) ^ __ROR4__(*(v13 + 4 * (545 * BYTE2(v446) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v446) + 140610)) >> 32))), 8);
  LODWORD(v420) = 545 * BYTE1(v448) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v448) + 140610)) >> 32);
  v450 = 545 * BYTE2(v441) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v441) + 140610)) >> 32);
  LODWORD(v443) = 545 * v448 + 140610 - 1552 * ((2767376 * (545 * v448 + 140610)) >> 32);
  LODWORD(v430) = 545 * BYTE1(v441) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v441) + 140610)) >> 32);
  v451 = STACK[0x5660];
  v452 = STACK[0x5600];
  v453 = STACK[0x5720] & (LODWORD(STACK[0x4B10]) ^ 0x83828382);
  v454 = LODWORD(STACK[0x5540]) ^ (((STACK[0x5600] & 0x1010004 ^ LODWORD(STACK[0x48D0]) ^ (LODWORD(STACK[0x5660]) ^ 0x70502u) & STACK[0x5218]) << STACK[0x57B0]) | (v453 >> STACK[0x57C0])) ^ LODWORD(STACK[0x50E0]) ^ __ROR4__(*(v13 + 4 * (545 * BYTE2(v448) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v448) + 140610)) >> 32))), 8) ^ __ROR4__(*(v13 + 4 * (545 * BYTE1(v446) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v446) + 140610)) >> 32))), 16) ^ *(v13 + 4 * (545 * HIBYTE(v441) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v441) + 140610)) >> 32))) ^ __ROR4__(*(v13 + 4 * (545 * v445 + 140610 - 1552 * ((2767376 * (545 * v445 + 140610)) >> 32))), 24);
  v455 = (STACK[0x5620] & 0x4050100 ^ 0x84810300 ^ STACK[0x5210] & (LODWORD(STACK[0x5650]) ^ 0x84000286)) >> STACK[0x5780];
  v456 = (STACK[0x5340] << STACK[0x5790]) ^ LODWORD(STACK[0x5540]) ^ v455 ^ LODWORD(STACK[0x52D0]) ^ __ROR4__(*(v13 + 4 * v420), 16) ^ __ROR4__(*(v13 + 4 * (545 * v446 + 140610 - 1552 * ((2767376 * (545 * v446 + 140610)) >> 32))), 24) ^ __ROR4__(*(v13 + 4 * v450), 8) ^ *(v13 + 4 * (545 * HIBYTE(v445) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v445) + 140610)) >> 32)));
  v457 = LODWORD(STACK[0x5540]) ^ STACK[0x5348] ^ v455 ^ LODWORD(STACK[0x5250]) ^ *(v13 + 4 * (545 * HIBYTE(v446) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v446) + 140610)) >> 32))) ^ __ROR4__(*(v13 + 4 * v443), 24) ^ __ROR4__(*(v13 + 4 * (545 * BYTE2(v445) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v445) + 140610)) >> 32))), 8) ^ __ROR4__(*(v13 + 4 * v430), 16);
  v458 = LODWORD(STACK[0x5338]) ^ LODWORD(STACK[0x5540]) ^ __ROR4__(__ROR4__(v449, 28) ^ 0x3314E6C1, 4);
  v459 = STACK[0x57A0];
  LOBYTE(v428) = *(STACK[0x57A0] + (((v454 >> 3) & 0xE0 | (v454 >> 11)) ^ 0x82) + 131420);
  LOBYTE(v428) = (((v428 ^ 0x8F) + 113) ^ ((v428 ^ 0x3E) - 62) ^ ((v428 ^ 0xC) - 12)) - 122;
  LOBYTE(v430) = v428 & 0xF ^ 0x23;
  LOBYTE(v428) = v428 ^ (2 * ((v428 ^ 0x48) & (2 * ((v428 ^ 0x48) & (2 * ((v428 ^ 0x48) & (2 * ((v428 ^ 0x48) & (2 * ((v428 ^ 0x48) & (2 * (((2 * v428) & 0x12 ^ 0x46) & v428 ^ v430)) ^ v430)) ^ v430)) ^ v430)) ^ v430)) ^ v430));
  LODWORD(v430) = ((STACK[0x5600] & 0x5010404 ^ 0x3820080 ^ (LODWORD(STACK[0x5660]) ^ 0x4878302u) & STACK[0x5218]) << STACK[0x5790]) | (v453 >> STACK[0x57C0]);
  LOBYTE(v445) = v428 ^ 0xCD ^ (8 * v428) & 0xCF;
  v460 = v458 ^ 0x13314E6C ^ v430;
  LODWORD(v430) = 545 * (v458 ^ 0x6C ^ v430) + 140610;
  LODWORD(STACK[0x51E0]) = HIBYTE(v457);
  v461 = (v452 & 0x440C0460 ^ 0x160E1630 ^ (v451 ^ 0x34525006u) & STACK[0x5108]) << v419;
  v462 = v452 & 0x440C0460 ^ 0x160E1630 ^ (v451 ^ 0x34525006u) & STACK[0x5108];
  v463 = STACK[0x53F8];
  v464 = v444;
  v465 = *(v13 + 4 * (545 * (117 * v445) + 140610 - 1552 * ((2767376 * (545 * (117 * v445) + 140610)) >> 32)));
  LODWORD(v430) = v461 ^ STACK[0x53F8] ^ v444 ^ LODWORD(STACK[0x52E8]) ^ __ROR4__(*(v13 + 4 * (v430 - 1552 * ((2767376 * v430) >> 32))), 24) ^ __ROR4__(*(v13 + 4 * (545 * BYTE2(v456) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v456) + 140610)) >> 32))), 8) ^ (v465 << 16) ^ HIWORD(v465) ^ *(v13 + 4 * ((545 * (((HIBYTE(v457) ^ 0x1497E493) + 700217346) ^ ((HIBYTE(v457) ^ 0x4B4454DE) + 1987037261) ^ ((HIBYTE(v457) ^ 0x5FD3B04D) + 1660431584)) - 970338225) % 0x610u));
  LODWORD(STACK[0x54C0]) = v430;
  LODWORD(STACK[0x5570]) = 545 * (BYTE1(v430) + 773) % (((1274 - BYTE1(v430)) | (BYTE1(v430) + 773)) & 0x610u);
  LOBYTE(v430) = v458 ^ 0x93;
  LOBYTE(v458) = (v458 ^ 0x93 | v458 ^ 0x6C) & ((v455 & 0x10 ^ 0x10) + (v455 & 0x10));
  LODWORD(v455) = (v457 >> 11) & 0xE0 | (v457 >> 19) & 0x1F;
  LOBYTE(v452) = ((v455 ^ 8) + 24) ^ ((v455 ^ 0xBD) - 93) ^ ((v455 ^ 0xD3) - 51);
  LOBYTE(v461) = ((v452 + 117) & 8 | 0xF3) ^ (v452 + 117) & 0xE6;
  LOBYTE(v453) = (v452 + 117) ^ 8;
  LOBYTE(v455) = (v452 + 117) ^ *(v459 + (v455 ^ 0x22) + 88512) ^ (2 * (v453 & (2 * (v453 & (2 * (v453 & (2 * (v453 & (2 * (v453 & (2 * (v453 & (2 * v461) ^ v461)) ^ v461)) ^ v461)) ^ v461)) ^ v461)) ^ v461));
  v466 = 545 * (117 * (((v455 ^ 0x5F) - 53) ^ ((v455 ^ 0xBB) + 47) ^ ((v455 ^ 6) - 108)) + 40) + 140610;
  v467 = ((v456 + 0x362EE04F28C422B3 - ((2 * v456) & 0x51884566)) ^ 0x362EE04F28C422B3uLL) >> ((((v430 & 0x18 ^ 0x18) + (v430 & 0x18)) & ~(v452 - 122)) + ((v457 >> 19) & 0x18));
  LODWORD(v467) = 545 * ((v467 - ((2 * v467) & 0x94) + 74) ^ 0x4A) + 140610;
  LODWORD(v461) = v467 - 1552 * ((2767376 * v467) >> 32);
  v468 = 545 * BYTE1(v457) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v457) + 140610)) >> 32);
  v469 = 545 * (v454 >> v458) + 140610;
  v470 = *(v13 + 4 * ((545 * (((v457 ^ 0x548AAFC6) - 929017272) ^ ((v457 ^ 0xD90F3389) + 1160105481) ^ ((v457 ^ 0x8D859C4F) + 296706511)) - 2005109888) % 0x610));
  v471 = (HIBYTE(v470) & 0x10 ^ 0x10) + (HIBYTE(v470) & 0x10);
  v472 = STACK[0x5220];
  LODWORD(v467) = STACK[0x5620];
  v473 = STACK[0x57C0];
  v474 = (STACK[0x5620] & LODWORD(STACK[0x2294]) ^ LODWORD(STACK[0x48C8]) ^ STACK[0x5220] & (LODWORD(STACK[0x5650]) ^ 0x4C540E04u)) >> STACK[0x57C0];
  v475 = v464 ^ (v474 | (STACK[0x53A0] << STACK[0x57B0])) ^ LODWORD(STACK[0x54E0]) ^ *(v13 + 4 * v461) ^ __ROR4__(v470, 24);
  v476 = *(v13 + 4 * (545 * BYTE1(v460) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v460) + 140610)) >> 32)));
  v477 = v475 ^ __ROR4__(*(v13 + 4 * (v469 - 1552 * ((2767376 * v469) >> 32))), 8) ^ WORD1(v476) ^ (v476 << v471);
  v478 = v464 ^ ((v462 << STACK[0x57B0]) | v463) ^ LODWORD(STACK[0x5410]) ^ __ROR4__(*(v13 + 4 * (545 * v456 + 140610 - 1552 * ((2767376 * (545 * v456 + 140610)) >> 32))), 24) ^ __ROR4__(*(v13 + 4 * v468), 16) ^ *(v13 + 4 * (545 * BYTE3(v454) + 140610 - 1552 * ((2767376 * (545 * BYTE3(v454) + 140610)) >> 32))) ^ __ROR4__(*(v13 + 4 * (545 * BYTE2(v460) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v460) + 140610)) >> 32))), 8);
  v479 = (STACK[0x52A0] | v474) ^ v464 ^ LODWORD(STACK[0x5408]) ^ __ROR4__(*(v13 + 4 * (545 * v454 + 140610 - 1552 * ((2767376 * (545 * v454 + 140610)) >> 32))), 24) ^ __ROR4__(*(v13 + 4 * (v466 - 1552 * ((2767376 * v466) >> 32))), 8) ^ *(v13 + 4 * (545 * HIBYTE(v460) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v460) + 140610)) >> 32))) ^ __ROR4__(*(v13 + 4 * (545 * BYTE1(v456) + 140610 - 1552 * ((2767376 * (545 * BYTE1(v456) + 140610)) >> 32))), 16);
  LOBYTE(v454) = *(((55 * BYTE2(v479)) ^ 0x65u) + v459 + 50560);
  LOBYTE(v454) = (((v454 ^ 0xB8) + 72) ^ ((v454 ^ 0xEE) + 18) ^ ((v454 ^ 0xEB) + 21)) - 86;
  LOBYTE(v456) = v454 & 0xDC ^ 0x93;
  LOBYTE(v454) = v454 ^ (2 * ((v454 ^ 0x3E) & (2 * ((v454 ^ 0x3E) & (2 * ((v454 ^ 0x3E) & (2 * ((v454 ^ 0x3E) & (2 * ((v454 ^ 0x3E) & (2 * ((v454 ^ 0x3E) & 0x22 ^ v456)) ^ v456)) ^ v456)) ^ v456)) ^ v456)) ^ v456));
  LODWORD(v454) = 545 * ((((v454 ^ 0x63) + 39) ^ ((v454 ^ 7) + 67) ^ ((v454 ^ 0xC7) - 125)) + 12) + 421285;
  LODWORD(STACK[0x5410]) = v478;
  LODWORD(v455) = v464 + 1175615168 + (v472 & 0x386C0622 | v467 & 0x286C0420 ^ 0xA9E18100);
  v480 = v467 & 0xC0C0C0C0 ^ 0x20E060E0;
  LODWORD(STACK[0x5440]) = v480;
  v481 = STACK[0x5720];
  v482 = v480 & STACK[0x5760];
  STACK[0x54B0] = v482;
  v483 = STACK[0x5790];
  v484 = v455 + 542;
  LODWORD(v455) = (v482 << STACK[0x5790]) ^ ((v480 & v481) >> v473) ^ (v455 + 542);
  LODWORD(v430) = STACK[0x52E0];
  LODWORD(v454) = *(v13 + 4 * (v454 - 1552 * ((2767376 * v454) >> 32)));
  LODWORD(STACK[0x55B0]) = v454;
  v485 = v455 ^ v430 ^ __ROR4__(v454, 16) ^ *(v13 + 4 * (545 * v477 + 421285 - 1552 * ((2767376 * (545 * v477 + 421285)) >> 32))) ^ __ROR4__(*(v13 + 4 * (545 * HIBYTE(v478) + 421285 - 1552 * ((2767376 * (545 * HIBYTE(v478) + 421285)) >> 32))), 8) ^ __ROR4__(*(v13 + 4 * LODWORD(STACK[0x5570])), 24);
  v486 = STACK[0x55C0];
  v487 = STACK[0x5380];
  v488 = __ROR4__(v485, STACK[0x5380]);
  if ((STACK[0x55C0] & 0x18) != 0)
  {
    v489 = v488;
  }

  else
  {
    v489 = v485;
  }

  LODWORD(STACK[0x5570]) = v489;
  LODWORD(STACK[0x54E0]) = v477;
  v490 = 545 * HIBYTE(v477) + 421285 - 1552 * ((2767376 * (545 * HIBYTE(v477) + 421285)) >> 32);
  v491 = STACK[0x54C0];
  v492 = 545 * LODWORD(STACK[0x54C0]) + 421285;
  v493 = v492 - 1552 * ((2767376 * v492) >> 32);
  v494 = v479;
  v495 = 545 * BYTE1(v479) + 421285 - 1552 * ((2767376 * (545 * BYTE1(v479) + 421285)) >> 32);
  v496 = v486 & 0x18;
  v497 = STACK[0x5470];
  v498 = v487;
  if ((v486 & 0x18) != 0)
  {
    v497 = (v497 >> (v486 & 0x18)) + (v497 << v487);
  }

  LODWORD(STACK[0x5470]) = v497;
  v499 = (LODWORD(STACK[0x5520]) >> v496) + (LODWORD(STACK[0x5520]) << v487);
  if ((v486 & 0x18) == 0)
  {
    v499 = STACK[0x5520];
  }

  v500 = STACK[0x5650];
  v501 = STACK[0x4B18];
  v502 = STACK[0x5660];
  v503 = STACK[0x5600];
  v504 = STACK[0x5780];
  v505 = STACK[0x57B0];
  v506 = v484 ^ (((STACK[0x5600] & 0x40000000 ^ 0x40202000 ^ (LODWORD(STACK[0x5660]) ^ 0x2060E0E0) & v501) << STACK[0x57B0]) | ((STACK[0x5600] & 0x40C04000 ^ LODWORD(STACK[0x48C0]) ^ (LODWORD(STACK[0x5650]) ^ 0x400040C0) & v501) >> STACK[0x5780])) ^ v499 ^ __ROR4__(*(v13 + 4 * (545 * BYTE2(v478) + 421285 - 1552 * ((2767376 * (545 * BYTE2(v478) + 421285)) >> 32))), 16) ^ *(v13 + 4 * v493) ^ __ROR4__(*(v13 + 4 * v490), 8) ^ __ROR4__(*(v13 + 4 * v495), 24);
  if ((v486 & 0x18) != 0)
  {
    v507 = (v506 >> v498) + (v506 << v496);
  }

  else
  {
    v507 = v506;
  }

  LODWORD(STACK[0x5530]) = v507;
  v508 = STACK[0x5410];
  v509 = 545 * LODWORD(STACK[0x5410]) + 421285;
  v510 = v481;
  v511 = STACK[0x57C0];
  v512 = ((v503 & 0x40C08000 ^ (v502 ^ 0x8060C0) & v501 ^ 0x6080A020) << v483) ^ ((v481 & v501) >> STACK[0x57C0]) ^ v484 ^ LODWORD(STACK[0x5430]) ^ *(v13 + 4 * (v509 - 1552 * ((2767376 * v509) >> 32))) ^ __ROR4__(*(v13 + 4 * (545 * BYTE2(v491) + 421285 - 1552 * ((2767376 * (545 * BYTE2(v491) + 421285)) >> 32))), 16) ^ __ROR4__(*(v13 + 4 * (545 * HIBYTE(v494) + 421285 - 1552 * ((2767376 * (545 * HIBYTE(v494) + 421285)) >> 32))), 8) ^ __ROR4__(*(v13 + 4 * ((545 * (((BYTE1(v477) ^ 0x74D0AB37) + 415495154) ^ ((BYTE1(v477) ^ 0xE48A585A) - 2003238755) ^ ((BYTE1(v477) ^ 0x905AF36D) - 62280788)) - 355045890) % 0x610)), 24);
  v513 = STACK[0x55C0] & 0x18;
  if ((STACK[0x55C0] & 0x18) != 0)
  {
    v514 = (v512 << (STACK[0x55C0] & 0x18)) ^ (v512 >> v498);
  }

  else
  {
    v514 = v512;
  }

  LODWORD(STACK[0x55C0]) = v514;
  v515 = 545 * BYTE2(LODWORD(STACK[0x54E0])) + 421285;
  v516 = v500;
  v517 = v484 ^ (STACK[0x54B0] << v505) ^ ((STACK[0x5620] & 0x40C0 ^ 0x60E0 ^ STACK[0x5440] & (v500 ^ 0xE06000)) >> v504) ^ LODWORD(STACK[0x5470]) ^ *(v13 + 4 * (545 * v494 + 421285 - 1552 * ((2767376 * (545 * v494 + 421285)) >> 32))) ^ __ROR4__(*(v13 + 4 * (545 * BYTE1(v508) + 421285 - 1552 * ((2767376 * (545 * BYTE1(v508) + 421285)) >> 32))), 24) ^ __ROR4__(*(v13 + 4 * (v515 - 1552 * ((2767376 * v515) >> 32))), 16) ^ __ROR4__(*(v13 + 4 * (545 * HIBYTE(v491) + 421285 - 1552 * ((2767376 * (545 * HIBYTE(v491) + 421285)) >> 32))), 8);
  v518 = (v517 >> (STACK[0x55F0] & 0x18)) ^ (v517 << v513);
  if ((STACK[0x55F0] & 0x18) != 0)
  {
    v519 = v518;
  }

  else
  {
    v519 = v517;
  }

  LODWORD(STACK[0x55F0]) = v519;
  v520 = STACK[0x53B0];
  v521 = 545 * LODWORD(STACK[0x53B0]) + 140610;
  v522 = v521 - 1552 * ((2767376 * v521) >> 32);
  v523 = 545 * BYTE1(LODWORD(STACK[0x53A8])) + 140610;
  v524 = STACK[0x5130];
  v525 = STACK[0x53E8];
  v526 = *(v13 + 4 * (545 * HIBYTE(v524) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v524) + 140610)) >> 32))) ^ __ROR4__(*(v13 + 4 * (v523 - 1552 * ((2767376 * v523) >> 32))), 16) ^ __ROR4__(*(v13 + 4 * ((545 * (((BYTE2(v525) ^ LODWORD(STACK[0x2298])) + 250013643) ^ ((BYTE2(v525) ^ 0xE85C59E) - 509358289) ^ ((BYTE2(v525) ^ 0xEF4528E4) + 6496853)) - 536518031) % 0x610)), 8);
  v527 = *(v13 + 4 * v522);
  LOBYTE(v522) = *(STACK[0x57A0] + (HIBYTE(v527) ^ 0x22) - (v526 & 0xFFFE9F40) + (v526 | 0x160BF) + 1);
  LOBYTE(v522) = ((v522 ^ 0xAD) + 83) ^ ((v522 ^ 0x82) + 126) ^ ((v522 ^ 0x92) + 110);
  v528 = 545 * BYTE1(LODWORD(STACK[0x5130])) + 140610;
  v529 = (((v528 & 0xC7 ^ 0x72) + 114) ^ ((v528 & 0xC7 ^ 0x3A) + 58) ^ ((v528 & 0xC7 ^ 0x48) + 76)) + (((v528 & 0xC7 ^ 0xD8) + 45) ^ ((v528 & 0xC7 ^ 0x95) + 98) ^ ((v528 & 0xC7 ^ 0x8A) + 127)) - 91;
  v530 = ((2 * (v529 ^ 0x56)) ^ 0xEA) & (v529 ^ 0x56) ^ (2 * (v529 ^ 0x56)) & 0x74;
  v531 = 4 * (v530 ^ 0x15);
  v532 = (v531 ^ 0xD4) & (v530 ^ 0x15);
  v533 = v530 & (4 * ((v529 ^ 0x12) & (2 * (v529 & 0x23)) ^ v529 & 0x23)) ^ (v529 ^ 0x12) & (2 * (v529 & 0x23)) ^ v529 & 0x23;
  v534 = v529 ^ (2 * ((v531 & 0x70 ^ 0x50 ^ v532) & (16 * v533) ^ v533));
  LOBYTE(v522) = (v522 - 67) * ((((v534 ^ 0xFD) - 105) ^ ((v534 ^ 0xF5) - 97) ^ ((v534 ^ 0x2B) + 65)) - 117) + 44 * v522 - 15;
  v535 = v522 & 0xE3 ^ 0xBC;
  LOBYTE(v522) = v522 ^ (2 * ((v522 ^ 0xA) & (2 * ((v522 ^ 0xA) & (2 * ((v522 ^ 0xA) & (2 * ((v522 ^ 0xA) & (2 * ((v522 ^ 0xA) & (2 * ((v522 ^ 0xA) & (2 * v522) ^ v535)) ^ v535)) ^ v535)) ^ v535)) ^ v535)) ^ v535));
  v536 = (LODWORD(STACK[0x4E24]) - 85 * (((v522 ^ 0x6B) + 75) ^ ((v522 ^ 0xA5) - 123) ^ ((v522 ^ 0xCD) - 19))) | (v527 << 8);
  v537 = STACK[0x4B90];
  v538 = STACK[0x5358];
  v539 = (LODWORD(STACK[0x5450]) << LODWORD(STACK[0x4B90])) + (LODWORD(STACK[0x5450]) >> LODWORD(STACK[0x5358]));
  if (!LODWORD(STACK[0x5358]))
  {
    v539 = STACK[0x5450];
  }

  v540 = LODWORD(STACK[0x53E8]) + 258;
  v541 = v540 & 0x236 ^ LODWORD(STACK[0x4B20]) ^ (1073741565 - LODWORD(STACK[0x53E8])) & 0x36363636;
  v542 = STACK[0x5660];
  v543 = ((v541 & 0xE223E6A ^ 0x4200808 ^ (v541 ^ 0x64280808) & (LODWORD(STACK[0x5660]) ^ 0x6C7E781Cu)) << v505) | (((v541 ^ 0x64280808) & v510) >> v511);
  v544 = STACK[0x5540];
  v545 = v539 ^ LODWORD(STACK[0x5540]) ^ v543 ^ v526 ^ v536;
  if (v538)
  {
    v546 = (LODWORD(STACK[0x5460]) >> v538) | (LODWORD(STACK[0x5460]) << v537);
  }

  else
  {
    v546 = STACK[0x5460];
  }

  LODWORD(STACK[0x5520]) = 545 * BYTE1(v545) + 421285 - 1552 * ((2767376 * (545 * BYTE1(v545) + 421285)) >> 32);
  LODWORD(STACK[0x54C0]) = 545 * v545 + 421285 - 1552 * ((2767376 * (545 * v545 + 421285)) >> 32);
  v547 = STACK[0x50C0];
  LODWORD(STACK[0x54B0]) = 545 * BYTE1(LODWORD(STACK[0x50C0])) + 421285 - 1552 * ((2767376 * (545 * BYTE1(LODWORD(STACK[0x50C0])) + 421285)) >> 32);
  v548 = v516;
  v549 = STACK[0x50B0] ^ v544 ^ ((STACK[0x5600] & 0x2824446C ^ 0x3224462C ^ (v516 ^ 0x2A404602u) & STACK[0x5108]) >> v504) ^ LODWORD(STACK[0x5078]) ^ LODWORD(STACK[0x5070]) ^ *(v13 + 4 * (545 * HIBYTE(v520) + 140610 - 1552 * ((2767376 * (545 * HIBYTE(v520) + 140610)) >> 32))) ^ LODWORD(STACK[0x53D8]) ^ __ROR4__(*(v13 + 4 * (545 * BYTE2(v524) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v524) + 140610)) >> 32))), 8);
  v550 = (BYTE2(v520) & 0x13 ^ 0x13) + (BYTE2(v520) & 0x13);
  v551 = 545 * BYTE2(v520) + 140610 - 1552 * ((2767376 * (545 * BYTE2(v520) + 140610)) >> 32);
  v552 = v542;
  v553 = (v542 ^ 0x3A2C242E) & STACK[0x5108];
  v554 = STACK[0x5600];
  v555 = v505;
  v556 = v544 ^ (((STACK[0x5600] & 0x48606048 ^ 0x10706218 ^ v553) << v505) | STACK[0x53F8]) ^ v546 ^ *(v13 + 4 * (545 * LODWORD(STACK[0x53D0]) - 1552 * ((2767376 * (545 * LODWORD(STACK[0x53D0]))) >> 32))) ^ __ROR4__(*(v13 + 4 * v551), 8) ^ __ROR4__(*(v13 + 4 * (545 * v540 - 1552 * ((2767376 * (545 * v540)) >> 32))), 24);
  v558 = __ROR4__(*(v13 + 4 * (v528 - 1552 * ((2767376 * v528) >> 32))), 16);
  v557 = v556 ^ v558;
  v559 = v545 >> (v550 & 0xFC);
  v560 = 545 * BYTE3(v545) + 421285 - 1552 * ((2767376 * (545 * BYTE3(v545) + 421285)) >> 32);
  v561 = 545 * (v556 ^ v558) + 421285 - 1552 * ((2767376 * (545 * (v556 ^ v558) + 421285)) >> 32);
  v562 = (HIBYTE(v549) + 773) * ((STACK[0x54D0] & 0x221 ^ 0x221) + (STACK[0x54D0] & 0x221));
  v563 = 545 * v549 + 421285 - 1552 * ((2767376 * (545 * v549 + 421285)) >> 32);
  v564 = 545 * v559 + 421285 - 1552 * ((2767376 * (545 * v559 + 421285)) >> 32);
  v565 = v562 - 1552 * ((2767376 * v562) >> 32);
  v566 = (545 * BYTE1(v549) + 419733) % 0x610;
  v567 = 545 * BYTE1(v557) + 421285 - 1552 * ((2767376 * (545 * BYTE1(v557) + 421285)) >> 32);
  v568 = 545 * BYTE2(v549) + 421285 - 1552 * ((2767376 * (545 * BYTE2(v549) + 421285)) >> 32);
  v569 = 545 * v547 + 421285 - 1552 * ((2767376 * (545 * v547 + 421285)) >> 32);
  v570 = 545 * BYTE2(v557) + 421285 - 1552 * ((2767376 * (545 * BYTE2(v557) + 421285)) >> 32);
  v571 = 545 * HIBYTE(v557) + 421285 - 1552 * ((2767376 * (545 * HIBYTE(v557) + 421285)) >> 32);
  v572 = (LODWORD(STACK[0x5260]) >> v538) + (LODWORD(STACK[0x5260]) << v537);
  if (!v538)
  {
    v572 = STACK[0x5260];
  }

  v573 = (LODWORD(STACK[0x5420]) >> v538) | (LODWORD(STACK[0x5420]) << v537);
  if (v538)
  {
    v574 = (LODWORD(STACK[0x5268]) << v537) | (LODWORD(STACK[0x5268]) >> v538);
  }

  else
  {
    v574 = STACK[0x5268];
  }

  if (!v538)
  {
    v573 = STACK[0x5420];
  }

  v575 = STACK[0x5620] & 0x90909090 ^ 0x48C858C8;
  v576 = STACK[0x5620] & 0x80909000 ^ 0x40801000 ^ v575 & (v552 ^ 0x80C850D0);
  if (v538)
  {
    v577 = (LODWORD(STACK[0x5208]) >> v538) | (LODWORD(STACK[0x5208]) << v537);
  }

  else
  {
    v577 = STACK[0x5208];
  }

  v578 = v554 & 0x90909090 ^ 0x48D8D848;
  v579 = STACK[0x5720];
  v580 = LODWORD(STACK[0x5540]) ^ (v576 << v555) ^ ((v575 & STACK[0x5720]) >> STACK[0x57C0]);
  v581 = v580 ^ v574 ^ STACK[0x56D0] ^ __ROR4__(*(v13 + 4 * v560), 8) ^ *(v13 + 4 * v563) ^ __ROR4__(*(v13 + 4 * v567), 24);
  v582 = STACK[0x5790];
  v583 = ((STACK[0x5760] & v578) << STACK[0x5790]) ^ LODWORD(STACK[0x5540]);
  v584 = STACK[0x5780];
  v585 = v583 ^ ((v554 & 0x80101090 ^ 0x8181040 ^ (v548 ^ 0x98D81018) & v578) >> STACK[0x5780]) ^ v572 ^ __ROR4__(*(v13 + 4 * LODWORD(STACK[0x54B0])), 24) ^ *(v13 + 4 * v561) ^ __ROR4__(*(v13 + 4 * v565), 8) ^ __ROR4__(*(v13 + 4 * v564), 16);
  v586 = v548;
  v587 = v583 ^ ((v554 & 0x80808090 ^ 0x48C0C048 ^ (v548 ^ 0xD800C010) & v578) >> STACK[0x5780]) ^ v577 ^ __ROR4__(*(v13 + 4 * LODWORD(STACK[0x5520])), 24) ^ __ROR4__(*(v13 + 4 * v568), 16) ^ *(v13 + 4 * v569) ^ __ROR4__(*(v13 + 4 * v571), 8);
  v588 = STACK[0x5510];
  v589 = LODWORD(STACK[0x5510]) + 2 * LODWORD(STACK[0x50F8]);
  v590 = v580 ^ v573 ^ LODWORD(STACK[0x5290]) ^ *(v13 + 4 * LODWORD(STACK[0x54C0])) ^ __ROR4__(*(v13 + 4 * v566), 24) ^ __ROR4__(*(v13 + 4 * v570), 16);
  v591 = (v581 >> v537) + (v581 << v538);
  if (v537)
  {
    v587 = (v587 << v538) + (v587 >> v537);
  }

  else
  {
    v591 = v581;
  }

  if (v537)
  {
    v585 = (v585 >> v537) ^ (v585 << v538);
    v590 = (v590 >> v537) | (v590 << v538);
  }

  if (v588)
  {
    v592 = v590;
  }

  else
  {
    v592 = v591;
  }

  if (v588)
  {
    v593 = v591;
  }

  else
  {
    v593 = v585;
  }

  if ((v588 & 1) == 0)
  {
    v585 = v587;
    v587 = v590;
  }

  if ((v589 & 2) != 0)
  {
    v594 = v592;
  }

  else
  {
    v594 = v585;
  }

  if ((v589 & 2) != 0)
  {
    v595 = v585;
  }

  else
  {
    v595 = v592;
  }

  if ((v589 & 2) != 0)
  {
    v596 = v593;
  }

  else
  {
    v596 = v587;
  }

  v597 = v554 & 0x50505050 ^ 0x28787828;
  v598 = v554 & 0x40405050 ^ 0x20607028 ^ (v586 ^ 0x70007010) & v597;
  v599 = STACK[0x5620] & 0x50505050 ^ 0x68283828;
  v600 = LODWORD(STACK[0x5680]) + 2 * LODWORD(STACK[0x5288]);
  if ((v589 & 2) == 0)
  {
    v587 = v593;
  }

  v601 = STACK[0x55C0];
  if (STACK[0x5680])
  {
    v602 = STACK[0x55F0];
  }

  else
  {
    v602 = STACK[0x55C0];
  }

  v603 = STACK[0x5530];
  if (STACK[0x5680])
  {
    v604 = STACK[0x5570];
  }

  else
  {
    v604 = STACK[0x5530];
  }

  if ((STACK[0x5680] & 1) == 0)
  {
    v601 = STACK[0x5570];
    v603 = STACK[0x55F0];
  }

  v605 = (v600 & 2) == 0;
  if ((v600 & 2) != 0)
  {
    v606 = v604;
  }

  else
  {
    v606 = v602;
  }

  if ((v600 & 2) != 0)
  {
    v607 = v602;
  }

  else
  {
    v607 = v604;
  }

  if (v605)
  {
    v608 = v601;
  }

  else
  {
    v608 = v603;
  }

  if (v605)
  {
    v601 = v603;
  }

  v609 = STACK[0x5100];
  v610 = ((v599 & (LODWORD(STACK[0x5660]) ^ 0x60402040) ^ ((STACK[0x5620] & 0x104010) + 532512)) << v582) | ((v599 & v579) >> STACK[0x57C0]);
  v611 = v598 >> v584;
  v612 = v608 + 94756685 * ((v595 ^ v610) - (v601 ^ LODWORD(STACK[0x5100])));
  v613 = ((STACK[0x5600] & 0x50404050 ^ 0x684808 ^ (LODWORD(STACK[0x5660]) ^ 0x30300828) & v597) << v582) ^ ((v579 & v597) >> STACK[0x57C0]);
  v614 = ((STACK[0x5760] & v597) << STACK[0x57B0]) ^ v611;
  LODWORD(v611) = ((v599 & STACK[0x5760]) << STACK[0x57B0]) ^ ((STACK[0x5620] & 0x50405050 ^ 0x68281020 ^ v599 & (v586 ^ 0x68085018u)) >> v584);
  v615 = LODWORD(STACK[0x5100]) ^ v614 ^ v606 ^ v587 ^ v612;
  v616 = STACK[0x4E50];
  v617 = *(STACK[0x4E50] + 4 * ((v594 ^ LODWORD(STACK[0x5100])) % 0x101 + 19211)) - 1617842393;
  v618 = LODWORD(STACK[0x5100]) ^ v613 ^ v596;
  v619 = v618 ^ v607 ^ ((*(STACK[0x4E50] + 4 * ((v615 ^ v611) % 0x101 + 18697)) ^ 0xC96C9B3C) + (v617 ^ (v617 >> 6) ^ (v617 >> 3) ^ 0xABBAC992) + v606 + 1);
  v620 = v619 ^ v614;
  v621 = LODWORD(STACK[0x5100]) ^ v610;
  v622 = v595 ^ v621 ^ v607;
  v623 = v618 ^ (881585357 * *(v616 + 4 * ((v587 ^ LODWORD(STACK[0x5100])) % 0x101 + 771))) ^ v622 ^ *(v616 + 4 * ((v619 ^ v614) % 0x101 + 53007));
  v624 = *(STACK[0x4E50] + 4 * ((v623 ^ v595 ^ 0x1CDAE7FD) % 0x101 + 54036));
  v625 = *(STACK[0x4E50] + 4 * (v621 % 0x101 + 53521));
  v626 = LODWORD(STACK[0x5100]) ^ v611 ^ v594;
  v627 = v619 ^ v626 ^ v615;
  LODWORD(STACK[0x53D0]) = v627;
  HIDWORD(v628) = v625;
  LODWORD(v628) = v625;
  v629 = v615 - (v624 ^ (8 * (v624 ^ 0x25CD8161)) ^ (4 * (v624 ^ 0x25CD8161)) ^ 0xD81B6AA7) + ((v628 >> 8) ^ (4 * (v628 >> 8)) ^ 0x5909AC89);
  LODWORD(STACK[0x53F8]) = v629;
  v630 = (v596 ^ v609) % 0x101;
  v631 = v626 ^ v601 ^ v622 ^ v629 ^ ((v629 ^ v626) >> 5);
  LODWORD(STACK[0x5450]) = v631;
  v632 = v631 ^ v613;
  v633 = *(v616 + 4 * v630);
  v634 = STACK[0x5110];
  LODWORD(STACK[0x5110]) = STACK[0x5110];
  STACK[0x56D0] = v634;
  v635 = v634 - ((2 * v634) & 0xCF519512) - 0x3CAFE00C98573577;
  v636 = *(v616 + 4 * (v632 % 0x101 + 514));
  v637 = STACK[0x5490];
  v638 = *(STACK[0x5490] + 1);
  v639 = STACK[0x4FF8];
  v640 = *(STACK[0x4FF8] + v634);
  STACK[0x52E0] = v640;
  v641 = v614 ^ 0x1CDAE7FD ^ v609 ^ v587 ^ v627 ^ v623;
  v642 = *(v639 + (BYTE2(v635) ^ 0xA8));
  v643 = *(v639 + ((v635 >> 24) ^ 0xC3501FF367));
  LODWORD(STACK[0x53B0]) = v641 - (v636 ^ 0x7B3F450C ^ (v636 >> 4) & 0xE97095B) + ((v630 - (v630 ^ 0xDB38657F)) ^ 0x7F472D0C ^ v633);
  v644 = *(v639 + (BYTE1(v635) ^ 0xCALL));
  v645 = v638 & 0xD ^ 0xFFFFFF89;
  v646 = (2 * v638) & 0x76;
  LODWORD(STACK[0x54C0]) = v646;
  LODWORD(STACK[0x53E8]) = v638 ^ 0x72;
  LODWORD(STACK[0x52E8]) = v638 ^ 0x7A;
  LODWORD(STACK[0x52D0]) = v638;
  v647 = (v638 ^ v642 ^ (2 * ((v638 ^ 0x7A) & (2 * ((v638 ^ 0x7A) & (2 * ((v638 ^ 0x7A) & (2 * ((v638 ^ 0x7A) & (2 * ((v638 ^ 0x7A) & (2 * ((v646 ^ 0x76) & (v638 ^ 0x72) ^ v645)) ^ v645)) ^ v645)) ^ v645)) ^ v645)) ^ v645)) ^ 0xB0) << 24;
  v648 = v643 & 0xFFFFFFE7 ^ LODWORD(STACK[0x5088]) ^ ((((v644 << 16) ^ 0xA5148321) & ~v647 | v647 & 0x5A000000) ^ 0x92134939) & (v643 ^ 0xFFFFDFA2);
  v649 = v648 ^ (v640 << 8);
  LODWORD(v635) = v649 ^ 0x37BA77BD;
  v650 = v649 ^ LODWORD(STACK[0x5118]);
  LODWORD(STACK[0x55C0]) = v650 ^ 0x60C5F290;
  v651 = v650;
  LODWORD(STACK[0x54B0]) = v650;
  v652 = STACK[0x5328];
  LODWORD(STACK[0x5328]) = STACK[0x5328];
  v653 = v650 ^ 0x60C5F290 ^ (v652 + 1467974957 - ((2 * v652) & 0xAEFF0A5A));
  LODWORD(STACK[0x5540]) = v653;
  v654 = v637[2];
  v655 = v653 ^ v634;
  v656 = v654 & 0x89 ^ 0xFFFFFFCB;
  LODWORD(STACK[0x5680]) = 2 * v654;
  LODWORD(STACK[0x5570]) = v654 ^ 0x7A;
  LODWORD(STACK[0x5530]) = v654;
  LODWORD(STACK[0x55F0]) = v635;
  v657 = v655 - ((2 * v655) & 0xDA271284) - 0x330CB9AD92EC76BELL;
  v658 = *(v639 + (BYTE1(v657) ^ 0x89));
  HIDWORD(v628) = v648 ^ 1;
  LODWORD(v628) = (v635 - ((2 * v635) & 0xD54633E) - 2035666529) ^ ((v654 ^ (2 * ((v654 ^ 0x7A) & (2 * ((v654 ^ 0x7A) & (2 * ((v654 ^ 0x7A) & (2 * ((v654 ^ 0x7A) & (2 * ((v654 ^ 0x7A) & (2 * (((2 * v654) & 0xFFFFFFF7 ^ 0x72) & (v654 ^ 0x72) ^ v656)) ^ v656)) ^ v656)) ^ v656)) ^ v656)) ^ v656)) ^ 0x24) << 24) ^ 0x2BAA319C;
  HIDWORD(v628) = v628 >> 2;
  LODWORD(v628) = HIDWORD(v628);
  v659 = STACK[0x57A0];
  LOBYTE(v656) = *(STACK[0x57A0] + ((2 * ((v658 >> 3) | (32 * v658))) & 0xB6 ^ 0xA2) + (((v658 >> 3) | (32 * v658)) ^ 0x1FF2Eu));
  v660 = ((v628 >> 30) - ((2 * (v628 >> 30)) & 0xCB5FDAF6) - 441455237) ^ ((*(v639 + (v653 ^ v634)) << 8) | (*(v639 + (BYTE2(v657) ^ 0x13)) << 24) | *(v639 + ((v657 >> 24) ^ 0xCCF346526DLL)) | ((LODWORD(STACK[0x4E20]) + 117 * (((v656 ^ 0x6E) - 113) ^ ((v656 ^ 0xF1) + 18) ^ ((v656 ^ 0x45) - 90))) << 16));
  v661 = v655;
  STACK[0x53E0] = v655;
  v662 = v637[4];
  LOBYTE(v656) = (HIWORD(LODWORD(STACK[0x55B0])) & 5 ^ 0xFD) + (HIWORD(LODWORD(STACK[0x55B0])) & 5);
  v663 = v662 & 0xFFFFFFDB ^ 0x30;
  v664 = (2 * v662) & 0x76;
  LODWORD(STACK[0x5520]) = v664;
  LODWORD(STACK[0x5510]) = v662 ^ 0x7A;
  LODWORD(STACK[0x5298]) = v662;
  LODWORD(STACK[0x54D0]) = v660 ^ v652;
  LODWORD(STACK[0x5430]) = v660;
  v665 = v660 ^ v652 ^ 0x3344A5BB;
  LODWORD(STACK[0x5410]) = v665;
  v666 = v665 ^ (v655 + 1810625917 - ((2 * v655) & 0xD7D7EAFA));
  LOBYTE(v648) = *(v659 + (((v665 ^ (v655 - 2691 - ((2 * v655) & 0xEAFA))) >> 8) ^ 0x30CFLL));
  LOBYTE(v648) = (((v648 ^ 0x99) + 103) ^ ((v648 ^ 0x6F) - 111) ^ ((v648 ^ 0x4B) - 75)) + 32;
  LOBYTE(v657) = (v648 & 0xC1 | 0x2C) ^ v648 & 0xD8;
  LOBYTE(v656) = v648 ^ v656 & 7;
  LOBYTE(v648) = v648 ^ 0x40;
  LOBYTE(v648) = v656 ^ (2 * (v648 & (2 * (v648 & (2 * (v648 & (2 * (v648 & (2 * (v648 & (2 * (v648 & (2 * v657) ^ v657)) ^ v657)) ^ v657)) ^ v657)) ^ v657)) ^ v657));
  v667 = *(v639 + (85 - 85 * (((v648 ^ 0xE4) - 58) ^ ((v648 ^ 0x10) + 50) ^ ((v648 ^ 0xD5) - 11))));
  v668 = (((v662 ^ (2 * ((v662 ^ 0x7A) & (2 * ((v662 ^ 0x7A) & (2 * ((v662 ^ 0x7A) & (2 * ((v662 ^ 0x7A) & (2 * ((v662 ^ 0x7A) & (2 * (v664 & (v662 ^ 0x72) ^ v663)) ^ v663)) ^ v663)) ^ v663)) ^ v663)) ^ v663)) ^ 9) << 24) ^ 0xBF03146B) & ((v667 << 16) ^ 0xFF0E946F) & 0xFF03FFFF | (v667 >> 2 << 18);
  v669 = *((BYTE2(v666) ^ 0xC4u) + v659 + 48512);
  v670 = (((v669 ^ 3) - 3) ^ -v669 ^ ((v669 ^ 0x41) - 65)) - (((WORD1(v666) ^ 0x35) + 89) ^ ((WORD1(v666) ^ 0xFFFFFFA6) - 52) ^ ((WORD1(v666) ^ 0xFFFFFFE9) - 123));
  LOBYTE(v669) = (((v669 ^ 3) - 3) ^ -v669 ^ ((v669 ^ 0x41) - 65)) - (((BYTE2(v666) ^ 0x35) + 89) ^ ((BYTE2(v666) ^ 0xA6) - 52) ^ ((BYTE2(v666) ^ 0xE9) - 123)) - 30;
  LOBYTE(v670) = v670 + 98;
  LOBYTE(v670) = v670 ^ (2 * ((v669 ^ 0x2C) & (2 * ((v669 ^ 0x2C) & (2 * ((v669 ^ 0x2C) & (2 * ((v669 ^ 0x2C) & (2 * ((v669 ^ 0x2C) & (2 * (v669 & (2 * (v670 & 0xAD)) ^ v670 & 0xAD)) ^ v670 & 0xAD)) ^ v670 & 0xAD)) ^ v670 & 0xAD)) ^ v670 & 0xAD)) ^ (v670 & 0xAD | 0x40)));
  v671 = *(v639 + (LODWORD(STACK[0x52C8]) - 85 * (((v670 ^ 0xEE) + 13) ^ ((v670 ^ 0xFD) + 32) ^ ((v670 ^ 0x1A) - 7))));
  STACK[0x5440] = v666;
  v672 = *(v659 + (((v671 >> 5) | (8 * v671)) ^ 0x19u) + 36672);
  v673 = ((*(v639 + (v666 >> 24)) & 0x26 | ((((v672 >> 6) | (4 * v672)) ^ ((v672 >> 1) & 2 | 0x2C) ^ 0x33333333) << 24)) + 1677721600) ^ LODWORD(STACK[0x229C]) ^ (v668 ^ 0x701B83B2) & (*(v639 + (v666 >> 24)) ^ 0xFFFFD764);
  v674 = *(v639 + (v665 ^ (v655 + 125 - ((2 * v655) & 0xFA)))) << 8;
  v675 = v673 & (v674 ^ 0xFFFF42FF) ^ (v674 & 0xB828617C | 0x47D78283);
  v676 = v675 ^ v651;
  v677 = v675 ^ v651 ^ 0x98A54A24;
  LODWORD(STACK[0x5470]) = v677 + 1810625917 - 2 * (v677 & 0x6BEBF57F ^ v676 & 2);
  LODWORD(v655) = v637[8];
  v678 = v655 & 0x13 ^ 0x1C;
  v679 = (2 * v655) & 0x76;
  LODWORD(STACK[0x5290]) = v679;
  LODWORD(STACK[0x5280]) = v655 ^ 0x7A;
  LODWORD(STACK[0x50B0]) = v655;
  LODWORD(v657) = (v655 ^ 0x7A) & (2 * ((v655 ^ 0x7A) & (2 * ((v655 ^ 0x7A) & (2 * ((v655 ^ 0x7A) & (2 * ((v655 ^ 0x7A) & (2 * (v679 & (v655 ^ 0x7A) ^ v678)) ^ v678)) ^ v678)) ^ v678)) ^ v678)) ^ v678;
  v620 &= 0x7Cu;
  LOBYTE(v666) = v620 ^ 0x7C;
  v680 = (v620 ^ 0x7C) + v620 - ((2 * ((v620 ^ 0x7C) + v620)) & 0x90) + 74;
  v681 = ((v680 ^ 0xA2) + 94) ^ ((v680 ^ 0x81) + 127) ^ ((v680 ^ 0x69) - 105);
  LOBYTE(v662) = -29 - v681;
  v682 = ((v681 + 28) & 0xBA | 0x41) ^ (-29 - v681) & 0xD2;
  v683 = v676 ^ v661;
  v684 = v676 ^ v661 ^ 0x64D9E402u;
  v685 = v662 ^ *(v639 + ((v684 >> 24) ^ 0xFC)) ^ (2 * ((v662 ^ 0x3A) & (2 * ((v662 ^ 0x3A) & (2 * ((v662 ^ 0x3A) & (2 * ((v662 ^ 0x3A) & (2 * ((v662 ^ 0x3A) & (2 * ((v662 ^ 0x3A) & (2 * v682) ^ v682)) ^ v682)) ^ v682)) ^ v682)) ^ v682)) ^ v682));
  v686 = (v683 >> 11) & 0xE0 | (v683 >> 19) & 0x1F;
  LOBYTE(v679) = *(v659 + (v686 ^ 0xA9u) + 67008);
  LOBYTE(v686) = (((v679 ^ 0x18) - 24) ^ ((v679 ^ 0x6F) - 111) ^ ((v679 ^ 0xCA) + 54)) + (((((v686 ^ 0x50) - 9) ^ v686 ^ 0x6D) + 36) ^ ((((v686 ^ 0x50) - 9) ^ v686 ^ 0x7A) + 53) ^ ((((v686 ^ 0x50) - 9) ^ v686 ^ 0x47) + 10)) - 61;
  LOBYTE(v686) = v686 ^ (2 * ((v686 ^ 0x5A) & (2 * ((v686 ^ 0x5A) & (2 * ((v686 ^ 0x5A) & (2 * ((v686 ^ 0x5A) & (2 * ((v686 ^ 0x5A) & (2 * ((v686 ^ 0x5A) & (2 * v686) ^ (v686 | 0x6C))) ^ (v686 | 0x6C))) ^ (v686 | 0x6C))) ^ (v686 | 0x6C))) ^ (v686 | 0x6C))) ^ (v686 | 0x6C)));
  v687 = *(v659 + (v685 ^ 0xC5u) + 50816);
  v688 = -85 * (((v687 ^ 0x42) - 81) ^ ((v687 ^ 0xBB) + 88) ^ ((v687 ^ 0x48) - 91)) + 54;
  v689 = (((v655 ^ (2 * v657) ^ 0x28) << 24) ^ 0x5631DD66) & (~v688 | 0xFFFFFF00) | v688 & 0x99;
  v690 = v689 & 0x2A00C0A6 ^ ((*(v639 + (117 * (((v686 ^ 0xC6) + 28) ^ ((v686 ^ 0x14) - 54) ^ ((v686 ^ 0xF7) + 43)) + 51)) ^ 0x16) << 24) ^ (v689 ^ 0x908A2219) & ((*(v639 + (v683 ^ 0x24)) << 8) ^ 0xD5BB9359) ^ 0x8185522;
  LODWORD(v657) = *(v639 + (BYTE1(v684) ^ 0xAELL)) << 16;
  LODWORD(STACK[0x5460]) = v660 ^ 0x2AA0DA6D;
  v691 = v660 ^ 0x2AA0DA6D ^ v675;
  LODWORD(STACK[0x5420]) = v691;
  v692 = v691 ^ v657 & 0x5C0000 ^ v690 & (v657 ^ 0xFF42FFFF);
  v693 = ((v692 ^ 0x83AF0C6F) + 1810625917 - ((2 * (v692 ^ 0x83AF0C6F)) & 0xD7D7EAFA)) ^ v665;
  LODWORD(v616) = v683;
  LODWORD(STACK[0x5398]) = v683;
  LOBYTE(v675) = 55 * (((v693 ^ v683) >> 24) ^ 0x98) + 85;
  LOBYTE(v657) = (v675 ^ 0xA2) & (2 * (v675 & 0xAB)) ^ v675 & 0xAB;
  LOBYTE(v691) = ((2 * (v675 ^ 0xA4)) ^ 0x1E) & (v675 ^ 0xA4) ^ (2 * (v675 ^ 0xA4)) & 0xE;
  LOBYTE(v657) = v675 ^ (2 * (((4 * (v691 ^ 1)) & 0xC ^ 3 ^ ((4 * (v691 ^ 1)) ^ 0x30) & (v691 ^ 1)) & (16 * ((v691 ^ 0xD) & (4 * v657) ^ v657)) ^ (v691 ^ 0xD) & (4 * v657) ^ v657));
  v694 = v637[16];
  v695 = (2 * v694) & 0x76;
  LODWORD(STACK[0x5268]) = v695;
  v696 = v694 & 0xFFFFFFDD ^ 0x31;
  LODWORD(STACK[0x5208]) = v694 ^ 0x7A;
  LODWORD(STACK[0x5200]) = v694;
  v697 = v694 ^ (2 * ((v694 ^ 0x7A) & (2 * ((v694 ^ 0x7A) & (2 * ((v694 ^ 0x7A) & (2 * ((v694 ^ 0x7A) & (2 * ((v694 ^ 0x7A) & (2 * ((v695 ^ 0x26) & (v694 ^ 0x72) ^ v696)) ^ v696)) ^ v696)) ^ v696)) ^ v696)) ^ v696)) ^ 5;
  LODWORD(STACK[0x53D8]) = v693 ^ v683;
  v698 = *(v639 + ((v693 ^ v683) ^ 0x24)) << 8;
  v699 = ((v697 << 24) ^ 0xC69F56DE) & (v698 ^ 0xFF9F42FE) ^ ((v698 & 0xA900) + 16777248);
  LOBYTE(v657) = v657 ^ 0x1E ^ *((v657 ^ 0xBAu) + v659 + 50048);
  v700 = *(v639 + ((((v657 ^ 0x67) - 124) ^ ((v657 ^ 0xF8) + 29) ^ ((v657 ^ 0x1A) - 1)) - 111));
  LODWORD(v657) = v693 ^ v683 ^ 0x584AB24A;
  v701 = *(v659 + ((((v700 ^ 0xBDu) >> (((v666 & 4) - (v666 | 0xB)) & 9) >> (((v666 & 4) - (v666 | 0xB)) & 4)) ^ (8 * v700)) ^ 0x69u) + 40768);
  v702 = (((((v701 >> 6) | (4 * v701)) ^ 0xEF) - 120) ^ ((((v701 >> 6) | (4 * v701)) ^ 0x94) - 3) ^ ((((v701 >> 6) | (4 * v701)) ^ 0xB1) - 38)) - 63;
  v703 = (v699 & 0x3F94F342 ^ 0x6BD3EAA9 ^ (v699 ^ 0xC0600001) & ((*(v639 + (BYTE1(v657) ^ 0xF8)) << 16) ^ 0xC0F60CA5)) & (~v702 | 0xFFFFFF00) | v702 & 0xB1;
  v704 = v637[32];
  v705 = v704 & 0xFFFFFFD1 ^ 0x3F;
  v706 = (2 * v704) & 0x76;
  LODWORD(STACK[0x5270]) = v706;
  LODWORD(STACK[0x5260]) = v704 ^ 0x7A;
  v707 = v704;
  LODWORD(STACK[0x5070]) = v704;
  v708 = (v704 ^ 0x7A) & (2 * ((v704 ^ 0x7A) & (2 * ((v704 ^ 0x7A) & (2 * ((v704 ^ 0x7A) & (2 * ((v704 ^ 0x7A) & (2 * ((v706 ^ 0x2A) & (v704 ^ 0x7A) ^ v705)) ^ v705)) ^ v705)) ^ v705)) ^ v705)) ^ v705;
  v709 = v703 ^ ((*(v639 + (BYTE2(v657) ^ 0xEFLL)) ^ 0x9C) << 24);
  LODWORD(STACK[0x55B0]) = v692 ^ 0x83AF0C6F;
  LODWORD(STACK[0x53A0]) = v677;
  v709 ^= 0x8796EDC2;
  LODWORD(v666) = v709 ^ ((v692 ^ 0x83AF0C6F) + 312146060 - 2 * ((v692 ^ 0x83AF0C6F) & 0x129AF89C ^ v692 & 0x10));
  LODWORD(STACK[0x5390]) = v666;
  v710 = v709 ^ (v677 + 312146060 - ((2 * v677) & 0x2535F118));
  v711 = v710 - 10040069 - ((2 * v710) & 0xFECD99F6);
  LODWORD(STACK[0x5250]) = v693;
  LODWORD(STACK[0x53A8]) = v693 - 10040069 - ((2 * v693) & 0xFECD99F6);
  v712 = v616 ^ 0x67C386DF ^ v711;
  v713 = v711;
  LODWORD(STACK[0x5218]) = v711;
  LOBYTE(v709) = *(((55 * (v616 ^ 0xDF ^ v711)) ^ 0xFu) + v659 + 51840);
  LOBYTE(v709) = (((v709 ^ 0xFB) + 5) ^ ((v709 ^ 0x50) - 80) ^ ((v709 ^ 0x16) - 22)) + ((((55 * (v616 ^ 0xDF ^ v711)) ^ 0x91) + 86) ^ (((55 * (v616 ^ 0xDF ^ v711)) ^ 0xC1) + 6) ^ (((55 * (v616 ^ 0xDF ^ v711)) ^ 0x24) - 31)) - 32;
  LOBYTE(v657) = v709 & 0x7F ^ 0x65;
  LOBYTE(v709) = v709 ^ (2 * ((v709 ^ 0x34) & (2 * ((v709 ^ 0x34) & (2 * ((v709 ^ 0x34) & (2 * ((v709 ^ 0x34) & (2 * ((v709 ^ 0x34) & (2 * (((2 * v709) & 0x6A ^ 0x4A) & v709 ^ v657)) ^ v657)) ^ v657)) ^ v657)) ^ v657)) ^ v657));
  v714 = v616 ^ 0x67C386DF ^ v711;
  STACK[0x5380] = v712;
  v715 = v712 - ((2 * v712) & 0xB08BA2B6) - 0x24759B68A7BA2EA5;
  v716 = *(v639 + ((v715 >> 24) ^ 0xDB8A649758));
  v717 = *(v639 + ((((v709 ^ 0xC9) - 4) ^ ((v709 ^ 0x1F) + 46) ^ ((v709 ^ 0x98) - 85)) + 118));
  LODWORD(v717) = (LODWORD(STACK[0x4A58]) - 85 * (((*(v659 + (v717 ^ 0x1CBB9)) ^ v717 ^ 0xE7) + 20) ^ ((*(v659 + (v717 ^ 0x1CBB9)) ^ v717 ^ 0x23) - 40) ^ ((*(v659 + (v717 ^ 0x1CBB9)) ^ v717 ^ 0xDA) + 47))) << 8;
  v718 = ((((*(v639 + (BYTE2(v715) ^ 0x45)) ^ 0xFA) << 24) ^ 0xDD31AF34) & (v716 ^ 0xFF33FF01) | v716 & 0xCB) ^ 0x38332B8D;
  LODWORD(v715) = *(v639 + (BYTE1(v715) ^ 0xD1)) << 16;
  LODWORD(v717) = v715 & 0x140000 ^ 0xB0FFCFB8 ^ ((v717 & 0x7B00 | v718 & ~v717) ^ LODWORD(STACK[0x22A0])) & (v715 ^ 0xFF42FFFF);
  v719 = (v708 << 25) ^ (v707 << 24) ^ v666 ^ (v717 - 837373117 + ~(2 * (v717 & 0x4E16B346 ^ v718 & 4)));
  LODWORD(STACK[0x5378]) = v719;
  LODWORD(v616) = STACK[0x48B8];
  v720 = v637[64];
  v721 = v720 & 0x1B ^ 0x10;
  LODWORD(v715) = (2 * v720) & 0x76;
  LODWORD(STACK[0x50A8]) = v715;
  LODWORD(STACK[0x50A0]) = v720 ^ 0x7A;
  LODWORD(STACK[0x5078]) = v720;
  v722 = (v720 ^ 0x7A) & (2 * ((v720 ^ 0x7A) & (2 * ((v720 ^ 0x7A) & (2 * ((v720 ^ 0x7A) & (2 * ((v720 ^ 0x7A) & (2 * (v715 & (v720 ^ 0x72) ^ v721)) ^ v721)) ^ v721)) ^ v721)) ^ v721)) ^ v721;
  LODWORD(v717) = v719 ^ 0x1F7FB8D;
  v723 = v719 ^ 0x1F7FB8D ^ (v693 + v616 - ((2 * v693) & 0x3DC2919E));
  v724 = v717;
  LODWORD(STACK[0x5320]) = v717;
  v725 = v714 ^ v723;
  STACK[0x5220] = v725;
  v726 = v725 - ((2 * v725) & 0xA88B7EA) + 0x6EB8EEBF05445BF5;
  v727 = (v720 ^ *(v639 + (BYTE2(v726) ^ 0x44)) ^ (2 * v722) ^ 0xA6) << 24;
  LODWORD(v717) = *(v639 + (BYTE1(v726) ^ 0x5BLL)) << 16;
  LODWORD(v726) = *(v639 + ((v726 >> 24) ^ 0x6EB8EEBF05));
  LODWORD(v726) = v726 & 0xBA ^ 0x5E70B1A8 ^ (v717 & 0xF40000 ^ 0xB03EA46F ^ ((((*(v639 + (v714 ^ v723)) << 8) ^ 0xE83C8688) & ~v727 | v727 & 0x17000000) ^ 0xFC37ACA2) & (v717 ^ 0xFF42FFFE)) & (v726 ^ 0xFFFFFF42);
  v728 = v637[128];
  v729 = v728 & 0xB1 ^ 0x6F;
  LODWORD(v717) = (2 * v728) & 0x76;
  LODWORD(STACK[0x5148]) = v717;
  LODWORD(STACK[0x50D8]) = v728 ^ 0x7A;
  LODWORD(STACK[0x50C8]) = v728;
  LODWORD(STACK[0x52F8]) = v723;
  LODWORD(STACK[0x5348]) = v723 + 93802158 - ((2 * v723) & 0xB2E9D5C);
  v730 = (((v728 ^ 0x7A) & (2 * ((v728 ^ 0x7A) & (2 * ((v728 ^ 0x7A) & (2 * ((v728 ^ 0x7A) & (2 * ((v728 ^ 0x7A) & (2 * ((v717 ^ 0x4A) & (v728 ^ 0x7A) ^ v729)) ^ v729)) ^ v729)) ^ v729)) ^ v729)) ^ v729) << 25) ^ (v728 << 24);
  v731 = v726 ^ v684;
  v732 = *(v639 + ((v731 >> 24) ^ 6));
  v733 = (v730 ^ 0xE8988C57) & (v732 ^ 0xFF9C9F62) | v732 & 0xA8;
  v734 = *(v639 + ((v726 ^ v684) ^ 0x73)) << 8;
  v735 = (v734 & 0xBC00 | ((*(v639 + (BYTE2(v731) ^ 0x8DLL)) ^ 0x20) << 24)) ^ 0x69B014BE ^ (v733 ^ 0x920CCF58) & (v734 ^ 0xFF9DFAFF);
  v736 = *(v639 + (BYTE1(v731) ^ 0x2CLL)) << 16;
  LODWORD(STACK[0x5340]) = v726 ^ v724;
  v737 = v726 ^ v724 ^ v736 & 0xDB0000 ^ v735 & (v736 ^ 0xFF42FFFF);
  LODWORD(STACK[0x5338]) = v737;
  LODWORD(v666) = v737 ^ 0xEA5AF82F;
  v738 = v737 ^ 0xEA5AF82F ^ (v723 + 838326700 - ((2 * v723) & 0x63EFB358));
  LODWORD(STACK[0x5210]) = v737 ^ 0xEA5AF82F;
  v739 = (v738 + 109915251 - ((2 * v738) & 0xD1A58E6)) ^ v731;
  STACK[0x5318] = v739;
  v740 = v739 - ((2 * v739) & 0xA2B3B354) - 0x1F558B70AEA62656;
  LODWORD(v739) = *(v639 + (BYTE2(v740) ^ 0x59));
  LODWORD(v739) = (v739 >> 3) | (32 * v739);
  LODWORD(v725) = (((v739 ^ 0xA) + 22) ^ ((v739 ^ 0xFFFFFF8B) - 107) ^ ((v739 ^ 0x10) + 16)) - 77;
  v741 = v725 & 0x4E ^ 0x54;
  LODWORD(v725) = v725 ^ v739 ^ (2 * ((v725 ^ 0x24) & (2 * ((v725 ^ 0x24) & (2 * ((v725 ^ 0x24) & (2 * ((v725 ^ 0x24) & (2 * ((v725 ^ 0x24) & (2 * v741) ^ v741)) ^ v741)) ^ v741)) ^ v741)) ^ v741));
  LODWORD(v739) = *(v659 + (v739 ^ 0x7Eu) + 41280);
  LODWORD(v739) = (((v739 ^ 0xFFFFFF82) + 126) ^ ((v739 ^ 0xFFFFFFC8) + 56) ^ ((v739 ^ 0xFFFFFFF7) + 9)) - (((v725 ^ 0xFFFFFFB6) + 53) ^ ((v725 ^ 0x1F) - 98) ^ ((v725 ^ 0x76) - 11));
  LODWORD(v725) = v739 + 109;
  LODWORD(v739) = (-110 - v739) & 0xFFFFFFAE | 1;
  v742 = v739 ^ v725 & 0x4A;
  LODWORD(v739) = v725 ^ (2 * ((v725 ^ 0x2E) & (2 * ((v725 ^ 0x2E) & (2 * ((v725 ^ 0x2E) & (2 * ((v725 ^ 0x2E) & (2 * ((v725 ^ 0x2E) & (2 * ((v725 ^ 0x2E) & (2 * v739) ^ v742)) ^ v742)) ^ v742)) ^ v742)) ^ v742)) ^ v742));
  LODWORD(v739) = 117 * (((v739 ^ 0xFFFFFFEE) - 10) ^ ((v739 ^ 0xFFFFFFBD) - 89) ^ ((v739 ^ 0x21) + 59));
  LODWORD(v725) = v739 + 9;
  LODWORD(v739) = (-10 - v739) & 0xFFFFFF85 | 0x22;
  v743 = v739 ^ v725 & 0x46;
  v744 = *(v639 + ((v738 + 115 - ((2 * v738) & 0xE6)) ^ v726 ^ v684));
  v745 = v637[27];
  LODWORD(v712) = v745 & 0xFFFFFFE7 ^ 0x16;
  LODWORD(v635) = (2 * v745) & 0x76;
  LODWORD(STACK[0x51C8]) = v635;
  LODWORD(STACK[0x5150]) = v745 ^ 0x7A;
  LODWORD(STACK[0x5140]) = v745;
  LODWORD(v739) = (((v745 ^ 0x7A) & (2 * ((v745 ^ 0x7A) & (2 * ((v745 ^ 0x7A) & (2 * ((v745 ^ 0x7A) & (2 * ((v745 ^ 0x7A) & (2 * (v635 & (v745 ^ 0x7A) ^ v712)) ^ v712)) ^ v712)) ^ v712)) ^ v712)) ^ v712 ^ v743 ^ (v725 ^ 4) & (2 * ((v725 ^ 4) & (2 * ((v725 ^ 4) & (2 * ((v725 ^ 4) & (2 * ((v725 ^ 4) & (2 * (v725 & (2 * v739) ^ v743)) ^ v743)) ^ v743)) ^ v743)) ^ v743))) << 25) ^ ((v725 ^ v745) << 24);
  LOBYTE(v725) = *(v659 + (((v744 >> 3) | (32 * v744)) ^ 0x5Eu) + 52352);
  LODWORD(v739) = v739 & 0xFFFF00FF | ((LODWORD(STACK[0x52C0]) + 117 * (((v725 ^ 0x94) + 80) ^ ((v725 ^ 0x15) - 49) ^ ((v725 ^ 6) - 34))) << 8);
  LODWORD(v725) = *(v639 + (BYTE1(v740) ^ 0xD9));
  LODWORD(v740) = *(v639 + ((v740 >> 24) ^ 0xE0AA748F51));
  LODWORD(v740) = v740 & 0x86 ^ 0xF47B8915 ^ ((((v739 ^ 0x24000000) - ((2 * (v739 ^ 0x24000000)) & 0x6C014E00) + 914859861) ^ 0xE60B1AC) & ((v725 << 16) ^ 0xFF42FFFF) ^ ((((v725 >> 3) & 3) << 19) | 0xC0409E80)) & (v740 ^ 0xFFFFFF42);
  LODWORD(STACK[0x5310]) = v738 + 156454726 - ((2 * v738) & 0x12A69E8C);
  v746 = v637[54];
  LODWORD(v739) = v746 & 0xFFFFFF83 | 0x44;
  LODWORD(STACK[0x52A8]) = v746 ^ 0x7A;
  LODWORD(STACK[0x52A0]) = v746;
  v747 = (v746 ^ 0x7A) & (2 * ((v746 ^ 0x7A) & (2 * ((v746 ^ 0x7A) & (2 * ((v746 ^ 0x7A) & (2 * ((v746 ^ 0x7A) & (2 * ((v746 ^ 0x7A) & (2 * (v746 & 0xFFFFFF83)) ^ v739)) ^ v739)) ^ v739)) ^ v739)) ^ v739)) ^ v739;
  v748 = v726 ^ v713;
  v749 = v740 ^ v726 ^ v713;
  v750 = v731 ^ 0xFDE6335 ^ v749;
  v751 = v750 - ((2 * v750) & 0x1B6D8FB62) + 0x3A6D7009DB6C7DB1;
  LODWORD(v739) = *(v639 + ((v751 >> 24) ^ 0x3A6D7009DBLL));
  v752 = ((v747 << 25) ^ (v746 << 24) ^ 0x80867EAE) & (v739 ^ 0xFFCE7F13) | v739 & 0x51;
  LOBYTE(v739) = *(v639 + (BYTE1(v751) ^ 0x7DLL));
  LODWORD(STACK[0x5060]) = -56;
  LOBYTE(v739) = 55 * (((v739 ^ 0x66) - 102) ^ ((v739 ^ 0xFD) + 3) ^ ((v739 ^ 0x26) - 38)) - 56;
  LOBYTE(v725) = v739 & 0x63 ^ 0x48;
  LOBYTE(v739) = *(((v739 ^ (2 * ((v739 ^ 0x52) & (2 * ((v739 ^ 0x52) & (2 * ((v739 ^ 0x52) & (2 * ((v739 ^ 0x52) & (2 * ((v739 ^ 0x52) & (2 * ((v739 ^ 2) & (2 * v739) & 0x26 ^ v725)) ^ v725)) ^ v725)) ^ v725)) ^ v725)) ^ v725))) ^ 3u) + 132728 + v659 + 3823);
  LOBYTE(v739) = (((v739 ^ 0x27) - 39) ^ ((v739 ^ 0xEA) + 22) ^ ((v739 ^ 0x70) - 112)) + 1;
  LOBYTE(v725) = v739 & 0x91 ^ 0xD4;
  LOBYTE(v739) = v739 ^ (2 * ((v739 ^ 0x68) & (2 * ((v739 ^ 0x68) & (2 * ((v739 ^ 0x68) & (2 * ((v739 ^ 0x68) & (2 * ((v739 ^ 0x68) & (2 * ((v739 ^ 0x68) & (2 * v739) & 0x52 ^ v725)) ^ v725)) ^ v725)) ^ v725)) ^ v725)) ^ v725));
  LODWORD(v725) = *(v639 + (v731 ^ 0x35u ^ (v740 ^ v748))) << 8;
  LODWORD(v751) = (v725 & 0xDE00 | ((*(v639 + (BYTE2(v751) ^ 0x6CLL)) ^ 0x9D) << 24)) ^ 0x75B83E37 ^ (v752 ^ 0x2DDA5FE5) & (v725 ^ 0xFFDE98FF);
  v753 = ((((v739 ^ 0xC3) + 55) ^ ((v739 ^ 0x15) - 31) ^ ((v739 ^ 0xD5) + 33)) - 4) << 16;
  v754 = (v753 & 0x1B0000 | v751 & ~v753) ^ 0x7BE4836D;
  v755 = v740 ^ v666;
  v756 = v740 ^ v666 ^ (v754 + 1026807876 - 2 * (v754 & 0x3D33D854 ^ v751 & 0x10));
  v757 = v756 ^ v738 ^ 0x7D7D7D7D;
  v758 = LODWORD(STACK[0x5540]) ^ 0x65656565;
  LODWORD(v751) = ((LOBYTE(STACK[0x5540]) ^ 0x65) - (v740 ^ v666 ^ (v754 + 68 - 2 * (v754 & 0x54 ^ v751 & 0x10)) ^ v738 ^ 0x7D) - 68);
  v759 = (16843009 * v751);
  LODWORD(v635) = 33686018 * v751;
  v760 = v759 - 10040069 - ((33686018 * v751) & 0xFECD99F6);
  LODWORD(STACK[0x5540]) = v756 + 156454726 - ((2 * v756) & 0x12A69E8C);
  v761 = v759 + v616 - ((33686018 * v751) & 0x3DC2919E);
  v762 = v759 + 93802158 - ((33686018 * v751) & 0xB2E9D5C);
  LODWORD(STACK[0x51B0]) = v759 + 1026807876 - ((33686018 * v751) & 0x7A67B088);
  v763 = v759 + 156454726 - ((33686018 * v751) & 0x12A69E8C);
  v764 = LODWORD(STACK[0x5420]) ^ 0x62626262 ^ (v759 - ((33686018 * v751) & 0xBA216E64) - 586107086);
  v765 = LODWORD(STACK[0x5410]) ^ LODWORD(STACK[0x5470]);
  v766 = v759 + 838326700 - (v635 & 0x63EFB358);
  v767 = v731 ^ 0x71717171 ^ (v759 + 109915251 - (v635 & 0xD1A58E6));
  LODWORD(STACK[0x5408]) = LODWORD(STACK[0x55C0]) ^ 0x65656565 ^ (v759 + 1467974957 - (v635 & 0xAEFF0A5A));
  v768 = v635;
  v769 = LODWORD(STACK[0x5398]) ^ 0x6BB8660 ^ (v759 - (v635 & 0xF8F95C4C) - 58937818);
  v770 = LODWORD(STACK[0x54B0]) ^ LODWORD(STACK[0x22A4]) ^ LODWORD(STACK[0x5460]) ^ (v759 + 628099018 - (v635 & 0x4AE01F0C) + 1980);
  v771 = LODWORD(STACK[0x54D0]) ^ 0x24F48DE4 ^ (v759 + 1810625917 - (v635 & 0xD7D7EAFA));
  LODWORD(STACK[0x5288]) = v759 ^ 0x62626262;
  v772 = v759 ^ 0x62626262 ^ v765;
  v773 = v759 ^ LODWORD(STACK[0x53A0]);
  LODWORD(STACK[0x5398]) = v773;
  v774 = ((v772 - v764) ^ 0x12CA5FC9) - (v773 ^ 0x62626262);
  if (v774)
  {
    v775 = v773 ^ 0x62626262;
  }

  else
  {
    v775 = v764;
  }

  LODWORD(STACK[0x54D0]) = v775;
  if ((v774 & 1) == 0)
  {
    v764 = v769;
  }

  LODWORD(STACK[0x54B0]) = v764;
  if (v774)
  {
    v776 = v769;
  }

  else
  {
    v776 = v772;
  }

  LODWORD(STACK[0x5460]) = v776;
  if (v774)
  {
    v777 = v772;
  }

  else
  {
    v777 = v773 ^ 0x62626262;
  }

  LODWORD(STACK[0x5470]) = v777;
  v778 = STACK[0x5218];
  v779 = LODWORD(STACK[0x5218]) ^ 0x3E3E3E3E ^ v760;
  v780 = LODWORD(STACK[0x5430]) ^ 0x4F1F7899 ^ v759;
  v781 = STACK[0x5440] ^ 0x17B0285F ^ v759;
  if (v774)
  {
    v782 = STACK[0x5440] ^ 0x17B0285F ^ v759;
  }

  else
  {
    v782 = v771;
  }

  LODWORD(STACK[0x5420]) = v782;
  if ((v774 & 1) == 0)
  {
    v771 = v770;
  }

  LODWORD(STACK[0x5440]) = v771;
  if ((v774 & 1) == 0)
  {
    v770 = v780;
  }

  LODWORD(STACK[0x5410]) = v770;
  if ((v774 & 1) == 0)
  {
    v780 = v781;
  }

  LODWORD(STACK[0x5430]) = v780;
  LODWORD(STACK[0x50C0]) = v768;
  v783 = LODWORD(STACK[0x53D8]) ^ 0xE19C782C ^ (v759 - (v768 & 0x81DFF0DC) - 1058015122);
  v784 = LODWORD(STACK[0x5378]) ^ 0x84727E08 ^ v761;
  LODWORD(STACK[0x5278]) = v759 ^ 0x3E3E3E3E;
  v785 = v759 ^ 0x3E3E3E3E ^ LODWORD(STACK[0x5390]);
  v786 = v759 ^ 0x3E3E3E3E ^ LODWORD(STACK[0x53A8]) ^ v778;
  if (v774)
  {
    v787 = v779;
  }

  else
  {
    v787 = v759 ^ 0x3E3E3E3E ^ LODWORD(STACK[0x5390]);
  }

  LODWORD(STACK[0x53D8]) = v787;
  if (v774)
  {
    v779 = v786;
  }

  LODWORD(STACK[0x5390]) = v779;
  v788 = v759 ^ 0x3E3E3E3E ^ STACK[0x5380];
  if (v774)
  {
    v786 = v759 ^ 0x3E3E3E3E ^ STACK[0x5380];
  }

  LODWORD(STACK[0x5368]) = v786;
  if (v774)
  {
    v788 = v785;
  }

  LODWORD(STACK[0x5358]) = v788;
  v789 = LODWORD(STACK[0x5320]) ^ v778;
  v790 = LODWORD(STACK[0x5340]) ^ 0x71717171 ^ (v759 - (v768 & 0xC8219534) - 468661606);
  v791 = v748 ^ LODWORD(STACK[0x5210]);
  v792 = v748 ^ 0x71717171 ^ v762;
  v793 = v759 ^ 0xCAB51049 ^ STACK[0x5318];
  v794 = v759 ^ 0xCAB51049 ^ v738;
  v795 = v748 ^ 0x71717171 ^ LODWORD(STACK[0x5348]) ^ v759;
  if (v774)
  {
    v796 = LODWORD(STACK[0x5340]) ^ 0x71717171 ^ (v759 - (v768 & 0xC8219534) - 468661606);
  }

  else
  {
    v796 = v767;
  }

  LODWORD(STACK[0x51D8]) = v796;
  if (v774)
  {
    v797 = v767;
  }

  else
  {
    v797 = v795;
  }

  LODWORD(STACK[0x5348]) = v797;
  if ((v774 & 1) == 0)
  {
    v795 = v792;
  }

  LODWORD(STACK[0x51C0]) = v795;
  if (v774)
  {
    v790 = v792;
  }

  LODWORD(STACK[0x5340]) = v790;
  v798 = v755 ^ 0xDADADADA ^ LODWORD(STACK[0x51B0]);
  v799 = LODWORD(STACK[0x5338]) ^ 0x20EFE866 ^ v766;
  v800 = v749 ^ LODWORD(STACK[0x5540]);
  v801 = v749 ^ 0xDADADADA ^ LODWORD(STACK[0x5310]) ^ v759;
  if (v774)
  {
    v802 = v755 ^ 0xDADADADA ^ LODWORD(STACK[0x51B0]);
  }

  else
  {
    v802 = v759 ^ v750 ^ 0xDADADADA;
  }

  LODWORD(STACK[0x5338]) = v802;
  if (v774)
  {
    v798 = v749 ^ 0xDADADADA ^ v763;
  }

  LODWORD(STACK[0x5320]) = v798;
  if (v774)
  {
    v803 = v801;
  }

  else
  {
    v803 = v749 ^ 0xDADADADA ^ v763;
  }

  LODWORD(STACK[0x5310]) = v803;
  if (v774)
  {
    v804 = v759 ^ v750 ^ 0xDADADADA;
  }

  else
  {
    v804 = v801;
  }

  LODWORD(STACK[0x5318]) = v804;
  v805 = v759 ^ v758;
  v806 = v757 ^ v759 ^ v750;
  v807 = v759 ^ v757;
  v808 = v759 ^ 0x85858585 ^ LODWORD(STACK[0x52F8]);
  LODWORD(STACK[0x50D0]) = v759 ^ 0x85858585;
  v809 = v759 ^ LODWORD(STACK[0x5118]) ^ 0x17171717;
  LODWORD(STACK[0x53A0]) = v809;
  v810 = v759 ^ v791 ^ 0xFED5874B;
  LODWORD(STACK[0x50B8]) = v759 ^ 0x65656565;
  v811 = v759 ^ 0x65656565 ^ LODWORD(STACK[0x55F0]);
  v812 = STACK[0x5328];
  v813 = LODWORD(STACK[0x5328]) ^ 0x17171717 ^ v759;
  LODWORD(STACK[0x5380]) = v813;
  v814 = STACK[0x5110];
  v815 = LODWORD(STACK[0x5110]) ^ 0x17171717 ^ v759;
  LODWORD(STACK[0x5378]) = v815;
  v816 = STACK[0x5088];
  v817 = LODWORD(STACK[0x5088]) ^ 0x17171717 ^ v759;
  LODWORD(STACK[0x52F8]) = v817;
  v818 = v759 ^ 0x65656565 ^ STACK[0x53E0];
  v819 = v759 ^ LODWORD(STACK[0x5250]) ^ 0xB9D6CA66;
  v820 = LODWORD(STACK[0x55B0]) ^ 0xB9D6CA66 ^ v759;
  LODWORD(STACK[0x50F8]) = v820;
  if ((v774 & 1) == 0)
  {
    v820 = v783;
  }

  LODWORD(STACK[0x5190]) = v820;
  LODWORD(STACK[0x5100]) = v819;
  if (v774)
  {
    v821 = v783;
  }

  else
  {
    v821 = v819;
  }

  LODWORD(STACK[0x5198]) = v821;
  v822 = v789 ^ 0x640201B1 ^ v759;
  v823 = v759 ^ 0x85858585 ^ STACK[0x5220];
  LODWORD(STACK[0x5220]) = v759 ^ 0x7D7D7D7D;
  v824 = v759 ^ 0x7D7D7D7D ^ v756;
  v825 = v759 ^ 0x7D7D7D7D ^ v800;
  if (v774)
  {
    v826 = v813;
  }

  else
  {
    v826 = v809;
  }

  LODWORD(STACK[0x53E0]) = v826;
  if (v774)
  {
    v827 = v815;
  }

  else
  {
    v827 = v813;
  }

  LODWORD(STACK[0x5170]) = v827;
  if (v774)
  {
    v828 = v817;
  }

  else
  {
    v828 = v815;
  }

  LODWORD(STACK[0x53A8]) = v828;
  LODWORD(STACK[0x5130]) = v811;
  LODWORD(STACK[0x5108]) = v818;
  if (v774)
  {
    v829 = v811;
  }

  else
  {
    v829 = v818;
  }

  LODWORD(STACK[0x5180]) = v829;
  LODWORD(STACK[0x5160]) = v805;
  v830 = STACK[0x5408];
  if (v774)
  {
    v830 = v805;
  }

  LODWORD(STACK[0x5178]) = v830;
  LODWORD(STACK[0x5168]) = v808;
  LODWORD(STACK[0x50F0]) = v822;
  if (v774)
  {
    v831 = v808;
  }

  else
  {
    v831 = v822;
  }

  LODWORD(STACK[0x51B0]) = v784;
  LODWORD(STACK[0x50E8]) = v823;
  if (v774)
  {
    v832 = v784;
  }

  else
  {
    v832 = v823;
  }

  LODWORD(STACK[0x51A0]) = v794;
  LODWORD(STACK[0x5158]) = v810;
  if (v774)
  {
    v833 = v794;
  }

  else
  {
    v833 = v810;
  }

  LODWORD(STACK[0x4F58]) = v807;
  LODWORD(STACK[0x4F50]) = v806;
  if (v774)
  {
    v834 = v806;
  }

  else
  {
    v834 = v807;
  }

  LODWORD(STACK[0x5250]) = v834;
  LODWORD(STACK[0x51A8]) = v793;
  LODWORD(STACK[0x5188]) = v799;
  if (v774)
  {
    v835 = v799;
  }

  else
  {
    v835 = v793;
  }

  LODWORD(STACK[0x4F48]) = v824;
  LODWORD(STACK[0x4F10]) = v825;
  if (v774)
  {
    v824 = v825;
  }

  LODWORD(STACK[0x5210]) = v824;
  LODWORD(STACK[0x5258]) = v774;
  v836 = (v774 & 2) == 0;
  if ((v774 & 2) != 0)
  {
    v837 = v832;
  }

  else
  {
    v837 = v831;
  }

  LODWORD(STACK[0x5218]) = v837;
  if ((v774 & 2) == 0)
  {
    v831 = v832;
  }

  LODWORD(STACK[0x55F0]) = v831;
  if ((v774 & 2) != 0)
  {
    v838 = v835;
  }

  else
  {
    v838 = v833;
  }

  LODWORD(STACK[0x5540]) = v838;
  if ((v774 & 2) != 0)
  {
    v839 = v833;
  }

  else
  {
    v839 = v835;
  }

  LODWORD(STACK[0x55C0]) = v839;
  v840 = STACK[0x52D0];
  v841 = STACK[0x52E8];
  v842 = ((v841 & (2 * (v841 & (2 * (v841 & (2 * (v841 & (2 * (v841 & (2 * (STACK[0x54C0] & LODWORD(STACK[0x53E8]) ^ v840 & 0x7B)) ^ v840 & 0x7B)) ^ v840 & 0x7B)) ^ v840 & 0x7B)) ^ v840 & 0x7B)) ^ v840 & 0x7B) << 25) ^ (v840 << 24);
  v843 = STACK[0x57A0];
  v844 = (((STACK[0x52E0] ^ 0x31D9D3502DFB0A7FLL) - 0x31D9D3502DFB0A76) ^ ((STACK[0x52E0] ^ 0xD12BAD92D9BF3056) + 0x2ED4526D2640CFA1) ^ ((STACK[0x52E0] ^ 0xE0F27EC2F4443A1DLL) + 0x1F0D813D0BBBC5ECLL)) + STACK[0x57A0];
  LOBYTE(v844) = *(v844 + 33917) ^ (16 * (*(v844 + 33917) ^ 0xEE)) ^ (8 * (*(v844 + 33917) ^ 0xEE));
  v845 = BYTE2(STACK[0x56D0]);
  v846 = (*(v639 + v845) << 24) & 0x71000000 ^ 0xBFA0FB57 ^ (((*(v639 + (STACK[0x56D0] >> 24)) ^ 0xFFFFFFC0) & ((*(v639 + BYTE1(STACK[0x56D0])) << 16) ^ 0x164DA14D) | *(v639 + (STACK[0x56D0] >> 24)) & 0xB2) ^ 0x98505AAA) & ((*(v639 + v845) << 24) ^ 0x42FFFBFF);
  v847 = ((v846 - (STACK[0x22A8] & (2 * v846)) - 937786709) ^ 0x331A82AB ^ v842) + ((76 - 85 * (v844 ^ ((v844 ^ 0x23) - 102) ^ ((v844 ^ 0x47) - 2) ^ 0x45)) << 8);
  LODWORD(v844) = STACK[0x5530] & 0x73 ^ 0xFFFFFFCC;
  LODWORD(v845) = STACK[0x5570];
  v848 = v847 ^ v816;
  v849 = LODWORD(STACK[0x5530]) ^ (2 * (v845 & (2 * (v845 & (2 * (v845 & (2 * (v845 & (2 * (v845 & (2 * (LODWORD(STACK[0x5680]) & v845 ^ v844)) ^ v844)) ^ v844)) ^ v844)) ^ v844)) ^ v844)) ^ 0x68;
  v850 = STACK[0x5118];
  LODWORD(STACK[0x5570]) = v848 ^ LODWORD(STACK[0x5118]);
  v851 = v848;
  LODWORD(v844) = v848 ^ v850 ^ v812;
  LODWORD(STACK[0x5680]) = v844;
  v852 = v844 ^ v814;
  v853 = v852 - ((2 * v852) & 0x1D3940B26) + 0x2936DD40E9CA0593;
  v854 = *(v639 + ((v853 >> 24) ^ 0x2936DD40E9));
  v855 = ((v849 << 24) ^ 0x266215FB) & (v854 ^ 0xFF6E7D46) | v854 & 4;
  v856 = *(v639 + v852) << 8;
  v857 = (v855 ^ 0xC5B6CBFD) & (v856 ^ 0xFFFE42FF) ^ ((v856 & 0x2100) + 252055660);
  v858 = *(v639 + (BYTE1(v853) ^ 5)) << 16;
  v859 = (v858 & 0x2D0000 | (*(v639 + (BYTE2(v853) ^ 0xCALL)) << 24)) ^ 0x864B830B ^ v857 & (v858 ^ 0xFF42FFFF);
  LODWORD(STACK[0x5530]) = v851;
  v860 = v859 ^ (v851 - 860591003 - ((2 * v851) & 0x9968D8CA));
  v861 = v859 ^ (v850 - 860591003 - ((2 * v850) & 0x9968D8CA));
  v862 = STACK[0x5298] & 0xFFFFFFE7 ^ 0xFFFFFF96;
  LODWORD(v845) = STACK[0x5510];
  v863 = ((v845 & (2 * (v845 & (2 * (v845 & (2 * (v845 & (2 * (v845 & (2 * (STACK[0x5520] & v845 ^ v862)) ^ v862)) ^ v862)) ^ v862)) ^ v862)) ^ v862) << 25) ^ (LODWORD(STACK[0x5298]) << 24);
  LODWORD(v845) = v860 ^ v812 ^ v852;
  v864 = v860 ^ v812;
  LODWORD(STACK[0x5510]) = v860 ^ v812;
  v865 = *(v639 + BYTE1(v845)) << 16;
  v866 = (v863 ^ 0xF89BAA0A) & (v865 ^ 0xFF66EB5E) | v865 & 0x640000;
  v867 = v843;
  LOBYTE(v853) = *(v843 + (BYTE3(v845) ^ 0xD5) + 160963);
  LOBYTE(v853) = (4 * (v853 ^ 0x31)) & 0xD4 ^ v853 ^ 0x31;
  STACK[0x52E8] = v845;
  LODWORD(v853) = *(v639 + (-85 * (((v853 ^ 0xE9) + 126) ^ ((v853 ^ 0xE5) + 114) ^ ((v853 ^ 0xC9) + 94)) + 58));
  v868 = *(v639 + (v860 ^ v812 ^ v852)) << 8;
  LODWORD(v853) = v868 & 0xFFFF9FFF | (((((*(v639 + BYTE2(v845)) ^ 0xFFFFFF81) << 24) ^ 0xA41589AF) & (v853 ^ 0xFF95D902) | v853 & 0x50) ^ 0x7684E9B9) & (v868 ^ 0xFF97D7FF);
  LODWORD(STACK[0x50E0]) = v860;
  v869 = v853 ^ v860 ^ ((v866 ^ 0x1FBFAA0A) - ((2 * (v866 ^ 0x1FBFAA0A)) & 0x612C0000) - 1332332873) ^ 0x5E07CBB1;
  v870 = STACK[0x50B0] & 0x71 ^ 0x4F;
  LODWORD(v845) = STACK[0x5280];
  v871 = ((v845 & (2 * (v845 & (2 * (v845 & (2 * (v845 & (2 * (v845 & (2 * ((LODWORD(STACK[0x5290]) ^ 0xA) & v845 ^ v870)) ^ v870)) ^ v870)) ^ v870)) ^ v870)) ^ v870) << 25) ^ (LODWORD(STACK[0x50B0]) << 24);
  LODWORD(STACK[0x5520]) = v869 ^ v861;
  v872 = v869;
  LODWORD(STACK[0x53E8]) = v869;
  LODWORD(STACK[0x5068]) = v861;
  v873 = v869 ^ v861 ^ v852;
  LOBYTE(v853) = *((BYTE1(v873) ^ 0xEu) + v843 + 58560);
  LODWORD(v853) = *(v639 + (-85 * (((v853 ^ 0x97) + 107) ^ ((v853 ^ 0xCD) + 49) ^ ((v853 ^ 0xFD) + 1)) + 55)) << 16;
  v874 = (v871 ^ 0x504DE919) & (v853 ^ 0xFFC2EFBF) | v853 & 0xB20000;
  LODWORD(v853) = *(v639 + (v869 ^ v861 ^ v852));
  LOBYTE(v853) = *(v843 + (((v853 >> 3) | (32 * v853)) ^ 0x3Du) + 16704);
  LOBYTE(v853) = (((v853 ^ 0x43) - 67) ^ ((v853 ^ 0xA3) + 93) ^ ((v853 ^ 0x5D) - 93)) + 54;
  LOBYTE(v868) = v853 & 0x68 ^ 0x4B;
  LOBYTE(v853) = v853 ^ (2 * ((v853 ^ 0x5A) & (2 * ((v853 ^ 0x5A) & (2 * ((v853 ^ 0x5A) & (2 * ((v853 ^ 0x5A) & (2 * (((2 * (v868 ^ v853 & 0x32)) ^ 0x24) & (v853 ^ 0x5A) ^ v868)) ^ v868)) ^ v868)) ^ v868)) ^ v868));
  v875 = (v873 >> 19) & 0xE0 | (v873 >> 27);
  LOBYTE(v845) = v875 + (~(2 * v875) | 0x55) + 86;
  LOBYTE(v845) = (((v845 ^ 0xAF) + 49) ^ ((v845 ^ 0xBC) + 36) ^ ((v845 ^ 7) - 103)) + 44;
  LOBYTE(v869) = v845 & 0x3D ^ 0xC4;
  LOBYTE(v875) = v845 ^ *(v843 + (v875 ^ 0xEu) + 138604) ^ (2 * ((v845 ^ 0x34) & (2 * ((v845 ^ 0x34) & (2 * ((v845 ^ 0x34) & (2 * ((v845 ^ 0x34) & (2 * ((v845 ^ 0x34) & (2 * (v845 & (2 * v845) & 0x6A ^ v869)) ^ v869)) ^ v869)) ^ v869)) ^ v869)) ^ v869));
  LOBYTE(v853) = v853 ^ 0x88 ^ (8 * (v853 ^ 0x88)) ^ (2 * (v853 ^ 0x88));
  v876 = *(v639 + (117 * (((v875 ^ 0xBB) - 90) ^ ((v875 ^ 0xC2) - 35) ^ ((v875 ^ 0x5A) + 69)) - 86));
  LODWORD(v853) = (LODWORD(STACK[0x4A18]) + 117 * (((v853 ^ 0xC) - 96) ^ ((v853 ^ 0x26) - 74) ^ ((v853 ^ 0xB) - 103))) << 8;
  v877 = ((v874 ^ 0x21FDE919) - ((2 * (v874 ^ 0x21FDE919)) & 0xD2BA0000) + 1767728441) ^ v853 & 0x6100 ^ ((((*(v639 + BYTE2(v873)) << 24) ^ 0x1A4757E3) & (v876 ^ 0xFF6FF742) | v876 & 0x1C) ^ 0x9F89C9FE) & ~v853 ^ 0x5193FB38;
  v878 = STACK[0x5200];
  LODWORD(v853) = STACK[0x5200] & 0xFFFFFFF1 ^ 0xF;
  LODWORD(v845) = STACK[0x5208];
  LODWORD(v853) = v845 & (2 * (v845 & (2 * (v845 & (2 * (v845 & (2 * (v845 & (2 * ((LODWORD(STACK[0x5268]) ^ 0xA) & v845 ^ v853)) ^ v853)) ^ v853)) ^ v853)) ^ v853)) ^ v853;
  LODWORD(v845) = v877 ^ v872 ^ v864;
  LODWORD(STACK[0x5268]) = v877 ^ v872;
  v879 = v845 ^ v873;
  v880 = v845;
  LODWORD(STACK[0x50B0]) = v845;
  STACK[0x52E0] = v879;
  v881 = v879 - ((2 * v879) & 0x146E5C582) + 0x3F9E02EDA372E2C1;
  LODWORD(v845) = *(v639 + ((v881 >> 24) ^ 0x3F9E02EDA3));
  LODWORD(v853) = (((v878 ^ (2 * v853) ^ 1) << 24) ^ 0xB8C58AB8) & (v845 ^ LODWORD(STACK[0x22AC])) | v845 & 0x47;
  LODWORD(v845) = *(v639 + (BYTE1(v881) ^ 0xE2));
  LODWORD(v853) = v853 ^ (*(v639 + (BYTE2(v881) ^ 0x72)) << 24);
  LODWORD(v881) = *(v639 + v879) << 8;
  LOBYTE(v845) = *(v843 + (((v845 >> 3) | (32 * v845)) ^ 0x141ELL));
  LOBYTE(v845) = ((v845 ^ 0x90) + 112) ^ ((v845 ^ 0x32) - 50) ^ ((v845 ^ 0x1F) - 31);
  LOBYTE(v878) = v845 - 4;
  LOBYTE(v845) = ((v845 + 124) & 0xCC | 0x31) ^ (v845 - 4) & 0xE2;
  LOBYTE(v845) = v878 ^ (2 * ((v878 ^ 0x4C) & (2 * ((v878 ^ 0x4C) & (2 * ((v878 ^ 0x4C) & (2 * ((v878 ^ 0x4C) & (2 * ((v878 ^ 0x4C) & (2 * ((v878 ^ 0x4C) & (2 * v845) ^ v845)) ^ v845)) ^ v845)) ^ v845)) ^ v845)) ^ v845));
  LODWORD(v853) = v881 & 0x6200 ^ 0x17D5EDE2 ^ (v853 ^ 0xA0371724) & (v881 ^ 0xFFFF42FF);
  LODWORD(v881) = (LODWORD(STACK[0x5060]) + 117 * (((v845 ^ 0xFA) - 75) ^ ((v845 ^ 0xFB) - 74) ^ ((v845 ^ 0x18) + 87))) << 16;
  v882 = v877 ^ v861;
  LODWORD(v843) = v877 ^ v872 ^ v853 & ~v881 ^ (v881 & 0xD80000 | 0x2D002E04) ^ 0x6F277E7F;
  LODWORD(STACK[0x5200]) = v843;
  LODWORD(STACK[0x5208]) = v843 ^ v877 ^ v861;
  v883 = v843 ^ v877 ^ v861 ^ v873;
  v884 = v883 - ((2 * v883) & 0x2DEB998) - 0x25F81CCFE90A334;
  LODWORD(v853) = *(v639 + ((v884 >> 24) ^ 0xFDA07E3301));
  LODWORD(v881) = STACK[0x5070] & 0xFFFFFFE7 ^ 0x16;
  LODWORD(v879) = STACK[0x5260];
  LODWORD(v853) = *((((v853 >> 5) | (8 * v853)) ^ 0x88u) + 123914 + v867 + 3848);
  LODWORD(v853) = ((((v853 >> 2) & 0x2C ^ v853 ^ 3) - 53) ^ (((v853 >> 2) & 0x2C ^ v853 ^ 0x5D) - 107) ^ (((v853 >> 2) & 0x2C ^ v853 ^ 0x4A) - 124)) - 122;
  LODWORD(v853) = (((LODWORD(STACK[0x5070]) ^ (2 * (v879 & (2 * (v879 & (2 * (v879 & (2 * (v879 & (2 * (v879 & (2 * (STACK[0x5270] & v879 ^ v881)) ^ v881)) ^ v881)) ^ v881)) ^ v881)) ^ v881)) ^ 0x41) << 24) ^ 0x3ED28AA9) & (v853 ^ 0xFFF3DABD) | v853 & 0x56;
  STACK[0x5040] = v883;
  LODWORD(v881) = (v853 ^ 0x62D7542) & ((*(v639 + (v843 ^ v882 ^ v873)) << 8) ^ 0x1EBD12CB) | v853 & 0xE1020034;
  LODWORD(v853) = STACK[0x5078] & 0x65 ^ 0xFFFFFFD5;
  LODWORD(v879) = STACK[0x50A0];
  LODWORD(v853) = ((v879 & (2 * (v879 & (2 * (v879 & (2 * (v879 & (2 * (v879 & (2 * ((LODWORD(STACK[0x50A8]) ^ 0x1E) & v879 ^ v853)) ^ v853)) ^ v853)) ^ v853)) ^ v853)) ^ v853) << 25) ^ (LODWORD(STACK[0x5078]) << 24);
  LODWORD(v845) = *(v639 + (BYTE2(v884) ^ 0x6FLL));
  LODWORD(STACK[0x54C0]) = v845;
  LODWORD(v884) = *(v639 + (BYTE1(v884) ^ 0x5CLL)) << 16;
  LODWORD(v881) = (v881 ^ ((v845 ^ 0x5C) << 24) ^ 0x6706DF9B) & (v884 ^ 0xFF42FFFF) ^ v884 & 0x460000;
  LODWORD(v883) = v881 ^ (v882 - ((2 * v882) & 0x9F69D4E6) + 1337256563) ^ 0x57099A03;
  v885 = v843 ^ v882 ^ v880;
  LODWORD(STACK[0x50A0]) = v885;
  LODWORD(STACK[0x4F08]) = v885 ^ v883;
  v886 = v885 ^ v883 ^ v843 ^ v882 ^ v873;
  LOBYTE(v884) = *(v867 + ((55 * BYTE2(v886)) ^ 0x1BD94u));
  LODWORD(v884) = *(v639 + ((((v884 ^ 0xCF) + 43) ^ ((v884 ^ 0x30) - 42) ^ ((v884 ^ 0x1B) - 1)) - 15));
  LOBYTE(v845) = (v884 >> 3) | (32 * v884);
  LODWORD(v884) = *(v639 + BYTE1(v886)) << 16;
  LODWORD(v884) = (v884 ^ 0xFFC3FFFF) & ((*(v639 + (v885 ^ v883 ^ v843 ^ v882 ^ v873)) << 8) ^ 0xAF645377) | v884 & 0x9B0000;
  LODWORD(v845) = *((v845 ^ 0x84u) + 123914 + v867 + 2053);
  LODWORD(v879) = v843 ^ v881;
  LODWORD(v881) = (v843 ^ v881) & 0x8B;
  LODWORD(STACK[0x5270]) = v879;
  LODWORD(v881) = (((((v881 ^ 0x8B) + v881) ^ 0xFFFFFFD8) + 104) ^ ((((v881 ^ 0x8B) + v881) ^ 0xFFFFFFFA) + 70) ^ ((((v881 ^ 0x8B) + v881) ^ 0x22) - 98)) + 117;
  v887 = v881 & 0xFFFFFFD7 ^ 0x1E;
  LODWORD(v881) = v881 ^ ((v845 >> 7) | (2 * v845)) ^ (2 * ((v881 ^ 0x3A) & (2 * ((v881 ^ 0x3A) & (2 * ((v881 ^ 0x3A) & (2 * ((v881 ^ 0x3A) & (2 * ((v881 ^ 0x3A) & (2 * ((v881 ^ 0x3A) & (2 * v881) & 0x76 ^ v887)) ^ v887)) ^ v887)) ^ v887)) ^ v887)) ^ v887));
  LOBYTE(v845) = *((BYTE3(v886) ^ 0x79) + v867 + 46976);
  LODWORD(v884) = v884 & 0xDF02602 ^ (v853 ^ 0xE8F02606 | v884 & 0x2FFFFF00 ^ 0x2F0DCA00) ^ 0x7EA96BC9 ^ (1962934272 * (((v881 ^ 2) + 6) ^ ((v881 ^ 0x7C) + 124) ^ ((v881 ^ 0xFFFFFFD2) - 42)) + 1677721600);
  LODWORD(v853) = *(v639 + (LODWORD(STACK[0x4A60]) - 85 * (((v845 ^ 0x35) + 50) ^ ((v845 ^ 0x41) + 70) ^ ((v845 ^ 4) + 1))));
  v888 = v879 ^ v853 & 0x32 ^ v884 & (v853 ^ 0xFFFFFF42);
  LODWORD(v884) = STACK[0x50C8] & 0x27 ^ 0xFFFFFFB6;
  LODWORD(v845) = STACK[0x50D8];
  LODWORD(v884) = LODWORD(STACK[0x50C8]) ^ (2 * (v845 & (2 * (v845 & (2 * (v845 & (2 * (v845 & (2 * (v845 & (2 * (LODWORD(STACK[0x5148]) & v845 ^ v884)) ^ v884)) ^ v884)) ^ v884)) ^ v884)) ^ v884));
  LODWORD(STACK[0x5058]) = v883;
  LODWORD(STACK[0x5260]) = v883 - 1565489102 - ((2 * v883) & 0x45611064);
  LODWORD(v843) = v888 ^ v885;
  v889 = v888;
  LODWORD(STACK[0x5060]) = v888;
  LODWORD(v853) = v888 ^ v885 ^ 0x56DB924;
  LODWORD(STACK[0x50D8]) = v853;
  STACK[0x5050] = v886;
  LODWORD(v845) = ((v853 ^ v886) >> 27) ^ 0x675E8D4C;
  v890 = v853 ^ v886 ^ 0xD06315A9;
  v891 = (((v890 >> 19) & 0xA0 | 0x675E8D09) ^ ((v890 >> 19) | 0x675E8D1F) & v845) + 109760;
  LODWORD(v884) = ((*(v639 + (BYTE1(v890) ^ 0xB7)) << 16) ^ 0xC2754502) & ~((v884 ^ 0x2E) << 24) | ((v884 ^ 0x2E) << 24) & 0x3D000000;
  LOBYTE(v891) = 39 * (((*(v867 + v891) ^ 0x52) - 82) ^ ((*(v867 + v891) ^ 0x8E) + 114) ^ ((*(v867 + v891) ^ 0x61) - 97)) + 14;
  LOBYTE(v845) = v891 & 0xF3 ^ 0x2B;
  LOBYTE(v891) = v891 ^ (2 * ((v891 ^ 0x3C) & (2 * ((v891 ^ 0x3C) & (2 * ((v891 ^ 0x3C) & (2 * ((v891 ^ 0x3C) & (2 * ((v891 ^ 0x3C) & (2 * (((2 * v891) & 0x7A ^ 0x4E) & (v891 ^ 0x3C) ^ v845)) ^ v845)) ^ v845)) ^ v845)) ^ v845)) ^ v845));
  LOBYTE(v845) = 55 * (((*(v639 + v890) ^ 0x26) - 38) ^ ((*(v639 + v890) ^ 0x5A) - 90) ^ ((*(v639 + v890) ^ 0xC1) + 63));
  LOBYTE(v888) = v845 + 25;
  LOBYTE(v845) = (v845 - 103) & 0x82 | 0x31;
  LOBYTE(v879) = v845 ^ v888 & 0x66;
  LODWORD(v891) = *(v639 + (117 * (((v891 ^ 0x4E) + 80) ^ ((v891 ^ 8) + 10) ^ ((v891 ^ 0x95) - 107)) - 111));
  LOBYTE(v845) = *(v867 + ((v888 ^ (2 * (((2 * (((2 * (((2 * (((2 * (((2 * (v888 & (2 * v845) ^ v879)) ^ 4) & v888 ^ v879)) ^ 4) & v888 ^ v879)) ^ 4) & v888 ^ v879)) ^ 4) & v888 ^ v879)) ^ 4) & v888 ^ v879))) ^ 0x68u) + 12800);
  LOBYTE(v845) = (((v845 ^ 0xE5) + 3) ^ ((v845 ^ 0x79) - 97) ^ ((v845 ^ 0xA7) + 65)) + 40;
  LOBYTE(v888) = v845 & 0x8A ^ 0x56;
  LOBYTE(v845) = v845 ^ (2 * ((v845 ^ 0x6C) & (2 * ((v845 ^ 0x6C) & (2 * ((v845 ^ 0x6C) & (2 * ((v845 ^ 0x6C) & (2 * ((v845 ^ 0x6C) & (2 * v888) ^ v888)) ^ v888)) ^ v888)) ^ v888)) ^ v888));
  STACK[0x56D0] = v890;
  LODWORD(v884) = ((v845 ^ 0x8C) << 8) & 0x4B00 ^ 0x16AB6AA ^ (((v845 ^ 0x8C) << 8) ^ 0xFFFFF9FF) & ((v891 & 0x2C | ((*(v639 + (BYTE2(v890) ^ 0x1ALL)) ^ 0x6E) << 24)) ^ (v884 ^ 0x4A0A48D1) & (v891 ^ 0xFFFF4D6E) ^ 0x53A8B955);
  v892 = (v884 - 1565489102 - ((2 * v884) & 0x45611064)) ^ v889 ^ 0x44A493BF;
  LODWORD(STACK[0x5048]) = v892;
  v893 = 2 * (v884 ^ v883);
  v894 = v884 ^ v883;
  LODWORD(STACK[0x50C8]) = (v884 ^ v883) - 478567767 - (v893 & 0xC6F34552);
  LODWORD(v891) = STACK[0x5140] & 0xFFFFFFA9 ^ 0x7B;
  LODWORD(v884) = ((STACK[0x5150] & (2 * (STACK[0x5150] & (2 * (STACK[0x5150] & (2 * (STACK[0x5150] & (2 * (STACK[0x5150] & (2 * ((LODWORD(STACK[0x51C8]) ^ 0x52) & (LODWORD(STACK[0x5140]) ^ 0x72) ^ v891)) ^ v891)) ^ v891)) ^ v891)) ^ v891)) ^ v891) << 25) ^ (LODWORD(STACK[0x5140]) << 24);
  v895 = v894 ^ v886;
  LODWORD(STACK[0x5010]) = v894;
  LODWORD(v891) = *(v639 + ((v894 ^ v886) >> 8)) << 16;
  LODWORD(v884) = (v884 ^ 0x1BAF7FA3) & (v891 ^ 0xFF42FFBB) | v891 & 0x500000;
  LOBYTE(v891) = (((v890 & 8) - 19) ^ ((v890 & 8) + 15) ^ ((v890 & 8 ^ 0xFD) + 18)) + 21 + (((v890 & 8 ^ 0x1D) - 96) ^ (v890 & 8 | 0x43) ^ ((v890 & 8 ^ 0x7F) - 2));
  LOBYTE(v891) = v891 ^ ((v891 ^ 0x28) - 85) ^ ((v891 ^ 0xC5) + 72) ^ ((v891 ^ 0x2F) - 82) ^ ((v891 ^ 0xBF) + 62) ^ 0x43;
  v896 = (*(v639 + (v894 ^ v886)) ^ 0xBD) << (v891 & 0xEE ^ 0x2E) << (v891 & 0x11 ^ 0x10);
  LOBYTE(v891) = (((v845 & 0x1A ^ 0xFD) + 1) ^ ((v845 & 0x1A ^ 0x5C) - 94) ^ ((v845 & 0x1A ^ 0xAB) + 87)) + (((v845 & 0x1A ^ 0x4B) + 25) ^ ((v845 & 0x1A ^ 0xEE) - 66) ^ ((v845 & 0x1A ^ 0xB5) - 25)) - 34;
  LOBYTE(v845) = v891 & 0xF0 ^ 0x8D;
  LOBYTE(v891) = *(((55 * ((v894 ^ v886) >> 24)) ^ 0xB7u) + v867 + 58816) ^ v891 ^ (2 * ((v891 ^ 0x66) & (2 * ((v891 ^ 0x66) & (2 * ((v891 ^ 0x66) & (2 * ((v891 ^ 0x66) & (2 * (((2 * (v845 ^ v891 & 0x16)) ^ 0xC) & (v891 ^ 0x66) ^ v845)) ^ v845)) ^ v845)) ^ v845)) ^ v845)) ^ 0x84;
  LODWORD(v891) = *(v639 + ((((v891 ^ (16 * v891) ^ 0xA) + 89) ^ ((v891 ^ (16 * v891) ^ 0x3C) + 111) ^ ((v891 ^ (16 * v891) ^ 0x9E) - 51)) - 8));
  LODWORD(v891) = LODWORD(STACK[0x4E70]) + 55 * (((v891 ^ 0xB) - 11) ^ ((v891 ^ 0xFFFFFFD3) + 45) ^ ((v891 ^ 0x65) - 101));
  LOBYTE(v845) = v891 & 0xF0 ^ 0x10;
  LODWORD(v891) = *(v867 + ((v891 ^ (2 * ((v891 ^ 0x50) & (2 * ((v891 ^ 0x50) & (2 * ((v891 ^ 0x50) & (2 * ((v891 ^ 0x50) & (2 * ((v891 ^ 0x50) & (2 * v845) ^ v845)) ^ v845)) ^ v845)) ^ v845)) ^ v845))) ^ 0xF2u) + 16960);
  LODWORD(v891) = (v891 >> 2) & 0x30 ^ ((v891 >> 1) | (v891 << 7));
  LODWORD(v891) = (((v891 ^ 0x99) - 1) ^ ((v891 ^ 0xE3) - 123) ^ ((v891 ^ 0x30) + 88)) - 59;
  LODWORD(v845) = (v891 - ((2 * v891) & 0x12) - 1062511607) ^ ((*(v639 + ((v894 ^ v886) >> 16)) ^ 0x4F) << 24) ^ v884 ^ v892 ^ v896;
  v897 = STACK[0x52A0];
  LODWORD(v884) = STACK[0x52A0] & 0xFFFFFFB7 ^ 0x6E;
  LODWORD(v879) = STACK[0x52A8];
  LODWORD(v884) = v879 & (2 * (v879 & (2 * (v879 & (2 * (v879 & (2 * (v879 & (2 * (v879 & (2 * LODWORD(STACK[0x52A0])) & 0x76 ^ v884)) ^ v884)) ^ v884)) ^ v884)) ^ v884)) ^ v884;
  LODWORD(v879) = v843 ^ 0x2909BE6B ^ v845 ^ 0x801423AA;
  LODWORD(STACK[0x52A8]) = v879;
  LODWORD(STACK[0x5018]) = v845 ^ 0x801423AA;
  v898 = v894 ^ v886 ^ 0x63191A01 ^ v879;
  LODWORD(v890) = *(v867 + (*(v639 + ((v898 >> 24) ^ 0xAC)) ^ 0x218DLL));
  LODWORD(v890) = (((v890 ^ 0x13) - 19) ^ ((v890 ^ 0xB) - 11) ^ ((v890 ^ 0xFFFFFFA5) + 91)) + 9;
  LODWORD(v891) = v890 & 0xFFFFFFF4 ^ 0xFFFFFF92;
  LODWORD(v890) = v890 ^ (2 * ((v890 ^ 0x50) & (2 * ((v890 ^ 0x50) & (2 * ((v890 ^ 0x50) & (2 * ((v890 ^ 0x50) & (2 * ((v890 ^ 0x50) & (2 * v891) ^ v891)) ^ v891)) ^ v891)) ^ v891)) ^ v891));
  LODWORD(v884) = (v897 ^ *(v639 + (BYTE2(v898) ^ 4)) ^ (2 * v884) ^ 0xA) << 24;
  STACK[0x5038] = v898;
  LODWORD(v890) = -85 * ((((v890 >> 3) & 0x19 ^ v890 ^ 0xFFFFFFC1) - 75) ^ (((v890 >> 3) & 0x19 ^ v890 ^ 0x3C) + 74) ^ (((v890 >> 3) & 0x19 ^ v890 ^ 0xFFFFFFD2) - 88)) + 95;
  LOBYTE(v891) = v890 & 0xA6 ^ 0x67;
  LOBYTE(v890) = v890 ^ (2 * ((v890 ^ 0x58) & (2 * ((v890 ^ 0x58) & (2 * ((v890 ^ 0x58) & (2 * ((v890 ^ 0x58) & (2 * ((v890 ^ 0x58) & (2 * ((v890 ^ 0x58) & 0x3E ^ v891)) ^ v891)) ^ v891)) ^ v891)) ^ v891)) ^ v891));
  LODWORD(v884) = v890 & 0xD5 | (v890 & 0xFE ^ 0xFF7EFF08) & ((((*(v639 + (v898 ^ 0xE7)) << 8) ^ 0x4A0258E7) & ~v884 | v884 & 0xB5000000) ^ 0x2A06E1CD);
  LODWORD(v890) = *(v639 + (BYTE1(v898) ^ 0xBFLL)) << 16;
  v899 = (v884 ^ 0x535C5F19) & (v890 ^ 0xFFC2FFFF) ^ v890 & 0xA70000;
  LODWORD(STACK[0x4FE0]) = v899;
  LODWORD(STACK[0x5008]) = (v845 ^ 0x801423AA) - 616361980 - ((2 * v845) & 0xB6862008);
  LODWORD(STACK[0x4FF0]) = v899 ^ 0xE8BE4BB3;
  LODWORD(v890) = v899 ^ 0xE8BE4BB3 ^ (v894 - 616361980 - (v893 & 0xB6862008));
  LODWORD(STACK[0x4FE8]) = v890;
  LODWORD(STACK[0x4FD8]) = v890 - 820140570 - ((2 * v890) & 0x9E3B4BCC);
  v900 = STACK[0x50C0];
  v901 = v759 - 478567767 - (STACK[0x50C0] & 0xC6F34552);
  v902 = v759 - 798812759 - (STACK[0x50C0] & 0xA0C62B52);
  v903 = v759 - 1565489102 - (STACK[0x50C0] & 0x45611064);
  LODWORD(STACK[0x4FD0]) = v759 - 820140570 - (STACK[0x50C0] & 0x9E3B4BCC);
  v904 = v759 + 1662589441 - (v900 & 0xC6323402);
  v905 = v759 - 350296599 - (v900 & 0xD63DCBD2);
  LODWORD(v884) = STACK[0x50B8];
  LODWORD(STACK[0x52D0]) = LODWORD(STACK[0x50B8]) ^ v852;
  LODWORD(STACK[0x52A0]) = v884 ^ LODWORD(STACK[0x5530]);
  LODWORD(STACK[0x5298]) = v884 ^ LODWORD(STACK[0x5570]);
  LODWORD(STACK[0x5290]) = v884 ^ LODWORD(STACK[0x5680]);
  v906 = LODWORD(STACK[0x5288]) ^ LODWORD(STACK[0x53E8]);
  v907 = v759 ^ LODWORD(STACK[0x5510]);
  v908 = LODWORD(STACK[0x5288]) ^ v873;
  v909 = LODWORD(STACK[0x5288]) ^ LODWORD(STACK[0x5520]);
  v910 = LODWORD(STACK[0x5520]) ^ 0x62626262 ^ v907;
  v911 = ((v910 - v906) ^ 0x12CA5FC9) - v909;
  v912 = STACK[0x53E0];
  if (v836)
  {
    v912 = STACK[0x53A8];
  }

  LODWORD(STACK[0x5148]) = v912;
  v913 = STACK[0x54D0];
  if (v836)
  {
    v913 = STACK[0x5460];
  }

  LODWORD(STACK[0x5070]) = v913;
  v914 = STACK[0x5420];
  if (v836)
  {
    v914 = STACK[0x5410];
  }

  LODWORD(STACK[0x5150]) = v914;
  v915 = STACK[0x5440];
  if (v836)
  {
    v915 = STACK[0x5430];
  }

  LODWORD(STACK[0x5140]) = v915;
  v916 = STACK[0x54B0];
  if (!v836)
  {
    v916 = STACK[0x5470];
  }

  LODWORD(STACK[0x5078]) = v916;
  v917 = STACK[0x53D8];
  if (!v836)
  {
    v917 = STACK[0x5368];
  }

  LODWORD(STACK[0x51C8]) = v917;
  v918 = STACK[0x5390];
  if (v836)
  {
    v918 = STACK[0x5358];
  }

  LODWORD(STACK[0x50A8]) = v918;
  v919 = STACK[0x5348];
  if (v836)
  {
    v919 = STACK[0x5340];
  }

  LODWORD(STACK[0x5510]) = v919;
  v920 = STACK[0x5338];
  if (v836)
  {
    v920 = STACK[0x5310];
  }

  LODWORD(STACK[0x5530]) = v920;
  if (v836)
  {
    v921 = STACK[0x5210];
  }

  else
  {
    v921 = STACK[0x5250];
  }

  LODWORD(STACK[0x4EE0]) = v921;
  v922 = STACK[0x5320];
  if (!v836)
  {
    v922 = STACK[0x5318];
  }

  LODWORD(STACK[0x5520]) = v922;
  if (v911)
  {
    v923 = v909;
  }

  else
  {
    v923 = v906;
  }

  LODWORD(STACK[0x5288]) = v923;
  if (v911)
  {
    v924 = v910;
  }

  else
  {
    v924 = v909;
  }

  LODWORD(STACK[0x5680]) = v924;
  if (v911)
  {
    v925 = v906;
  }

  else
  {
    v925 = v908;
  }

  LODWORD(STACK[0x50B8]) = v925;
  if (v911)
  {
    v910 = v908;
  }

  LODWORD(STACK[0x5280]) = v910;
  v926 = ~v911 & 0x8004820 | v911 & 0x8004821;
  v927 = v759 + 555747777 - (v900 & 0x42401382);
  v928 = v759 ^ 0x59595959 ^ v882;
  v929 = v759 ^ 0x59595959 ^ STACK[0x52E0];
  v930 = v759 ^ 0x59595959 ^ LODWORD(STACK[0x5268]);
  v931 = v759 ^ 0x59595959 ^ LODWORD(STACK[0x50B0]);
  v932 = STACK[0x5278];
  LODWORD(STACK[0x5570]) = LODWORD(STACK[0x5278]) ^ LODWORD(STACK[0x5208]);
  v933 = v932 ^ LODWORD(STACK[0x5200]);
  v934 = v932 ^ STACK[0x5040];
  v935 = v932 ^ LODWORD(STACK[0x50A0]);
  v936 = LODWORD(STACK[0x50D0]) ^ LODWORD(STACK[0x5058]);
  v937 = STACK[0x5050];
  v938 = STACK[0x5050] ^ 0x55E6902C ^ v902;
  v939 = LODWORD(STACK[0x5270]) ^ 0x7626101C ^ v905;
  v940 = v895 ^ 0x611B1803 ^ v904;
  v941 = v927 ^ STACK[0x56D0] ^ 0x2BF2C78C;
  v942 = v901 ^ LODWORD(STACK[0x50D8]) ^ 0x39C8794D;
  v943 = LODWORD(STACK[0x5060]) ^ 0x7D6CEAF2;
  v944 = v943 ^ v903;
  v945 = v943 ^ LODWORD(STACK[0x5260]);
  v946 = v759 ^ 0x2020202 ^ LODWORD(STACK[0x50C8]) ^ LODWORD(STACK[0x50D8]);
  v947 = v759 ^ 0x2020202 ^ LODWORD(STACK[0x5048]);
  v948 = v759 ^ 0xE82D998F ^ STACK[0x52E8];
  v949 = v907 ^ 0xE82D998F;
  v950 = STACK[0x53A0];
  if (v911)
  {
    v950 = STACK[0x5380];
  }

  LODWORD(STACK[0x5278]) = v950;
  v951 = STACK[0x5378];
  if (v911)
  {
    v951 = STACK[0x52F8];
  }

  LODWORD(STACK[0x5270]) = v951;
  v952 = STACK[0x52D0];
  if (v911)
  {
    v952 = STACK[0x52A0];
  }

  LODWORD(STACK[0x5268]) = v952;
  v953 = STACK[0x5298];
  if (v911)
  {
    v953 = STACK[0x5290];
  }

  LODWORD(STACK[0x5260]) = v953;
  LODWORD(STACK[0x5040]) = v949;
  LODWORD(STACK[0x5028]) = v948;
  if (v911)
  {
    v954 = v948;
  }

  else
  {
    v954 = v949;
  }

  LODWORD(STACK[0x5030]) = v954;
  v955 = v928;
  if (v911)
  {
    v956 = v928;
  }

  else
  {
    v956 = v930;
  }

  LODWORD(STACK[0x5048]) = v956;
  LODWORD(STACK[0x52E0]) = v926;
  v957 = v926 == 134236192;
  if (v926 == 134236192)
  {
    v958 = v941;
  }

  else
  {
    v958 = v944;
  }

  LODWORD(STACK[0x5200]) = v958;
  if (v926 == 134236192)
  {
    v959 = v942;
  }

  else
  {
    v959 = v941;
  }

  LODWORD(STACK[0x5208]) = v959;
  if (v926 == 134236192)
  {
    v942 = v945 ^ v759;
    v960 = v944;
  }

  else
  {
    v960 = v945 ^ v759;
  }

  v961 = LODWORD(STACK[0x4FD0]) ^ LODWORD(STACK[0x52A8]) ^ 0x583E5401;
  v962 = v937 ^ LODWORD(STACK[0x4FE0]);
  v963 = LODWORD(STACK[0x5220]) ^ LODWORD(STACK[0x4FD8]) ^ LODWORD(STACK[0x52A8]);
  v964 = LODWORD(STACK[0x5220]) ^ LODWORD(STACK[0x4FE8]);
  v965 = LODWORD(STACK[0x5220]) ^ LODWORD(STACK[0x4FF0]) ^ LODWORD(STACK[0x5008]);
  v966 = v962 ^ 0x4E8026CA ^ v759;
  if (v957)
  {
    v967 = LODWORD(STACK[0x5220]) ^ LODWORD(STACK[0x4FE8]);
  }

  else
  {
    v967 = LODWORD(STACK[0x5220]) ^ LODWORD(STACK[0x4FD8]) ^ LODWORD(STACK[0x52A8]);
  }

  LODWORD(STACK[0x4EB0]) = v967;
  if (v957)
  {
    v968 = v963;
  }

  else
  {
    v968 = v966;
  }

  if (v957)
  {
    v969 = v966;
  }

  else
  {
    v969 = v965;
  }

  LODWORD(STACK[0x4EA8]) = v969;
  if (v957)
  {
    v964 = v965;
  }

  LODWORD(STACK[0x4FE8]) = v759 ^ 0xE82D998F ^ LODWORD(STACK[0x5068]);
  v970 = v759 ^ LODWORD(STACK[0x5010]);
  LODWORD(STACK[0x5068]) = v931;
  if (v957)
  {
    v971 = v955;
  }

  else
  {
    v971 = v931;
  }

  LODWORD(STACK[0x50C0]) = v929;
  if (v957)
  {
    v930 = v929;
  }

  LODWORD(STACK[0x5050]) = v934;
  if (v957)
  {
    v972 = v935;
  }

  else
  {
    v972 = v934;
  }

  v973 = STACK[0x5570];
  if (v957)
  {
    v974 = STACK[0x5570];
  }

  else
  {
    v974 = v935;
  }

  LODWORD(STACK[0x5010]) = v974;
  LODWORD(STACK[0x5060]) = v933;
  if (v957)
  {
    v973 = v933;
  }

  LODWORD(STACK[0x4ED0]) = v938;
  if (v957)
  {
    v975 = v938;
  }

  else
  {
    v975 = v939;
  }

  LODWORD(STACK[0x4E88]) = v975;
  LODWORD(STACK[0x4ED8]) = v936;
  if (v957)
  {
    v976 = v939;
  }

  else
  {
    v976 = v936;
  }

  LODWORD(STACK[0x4EB8]) = v976;
  v977 = LODWORD(STACK[0x5018]) ^ 0x583E5401;
  v978 = v970 ^ 0x2020202;
  v979 = v977 ^ v970;
  v980 = v977 ^ v759;
  v981 = STACK[0x5038];
  STACK[0x5570] = v759;
  v982 = v759 ^ v981 ^ 0xF43AEBE6;
  LODWORD(STACK[0x4E10]) = v946;
  LODWORD(STACK[0x4E00]) = v978;
  if (v957)
  {
    v983 = v978;
  }

  else
  {
    v983 = v946;
  }

  LODWORD(STACK[0x4E18]) = v940;
  LODWORD(STACK[0x4E08]) = v947;
  if (v957)
  {
    v947 = v940;
  }

  LODWORD(STACK[0x4DD0]) = v961;
  LODWORD(STACK[0x4DC8]) = v979;
  if (v957)
  {
    v984 = v979;
  }

  else
  {
    v984 = v961;
  }

  LODWORD(STACK[0x4DC0]) = v980;
  LODWORD(STACK[0x4DB0]) = v982;
  if (v957)
  {
    v985 = v982;
  }

  else
  {
    v985 = v980;
  }

  LODWORD(STACK[0x53E8]) = v911;
  v986 = (v911 & 2) == 0;
  v987 = STACK[0x5680];
  v988 = STACK[0x50B8];
  if ((v911 & 2) != 0)
  {
    v989 = STACK[0x5680];
  }

  else
  {
    v989 = STACK[0x50B8];
  }

  LODWORD(STACK[0x50A0]) = v989;
  if ((v911 & 2) != 0)
  {
    v990 = v988;
  }

  else
  {
    v990 = v987;
  }

  LODWORD(STACK[0x5038]) = v990;
  if ((v911 & 2) != 0)
  {
    v991 = v972;
  }

  else
  {
    v991 = v973;
  }

  LODWORD(STACK[0x50B8]) = v991;
  if ((v911 & 2) != 0)
  {
    v992 = v973;
  }

  else
  {
    v992 = v972;
  }

  LODWORD(STACK[0x50B0]) = v992;
  LODWORD(STACK[0x5220]) = STACK[0x56D0];
  v993 = STACK[0x5790] - ((2 * STACK[0x5790]) & 0x1A) + 0xBA97E039A80570DLL;
  v994 = v993 & 0x1F89 ^ 0x1709;
  STACK[0x5680] = v993;
  v995 = v993 & 0x76 ^ 4;
  v996 = STACK[0x56C0];
  LODWORD(STACK[0x56D0]) = 1582 * (LODWORD(STACK[0x56C0]) ^ 0x27C8);
  LODWORD(STACK[0x4E80]) = -LODWORD(STACK[0x53D0]);
  LODWORD(STACK[0x52A8]) = -LODWORD(STACK[0x53F8]);
  LODWORD(STACK[0x52E8]) = -LODWORD(STACK[0x5450]);
  if (v986)
  {
    v997 = LODWORD(STACK[0x5270]);
  }

  else
  {
    v997 = LODWORD(STACK[0x5278]);
  }

  v998 = STACK[0x5268];
  if (!v986)
  {
    v998 = STACK[0x5260];
  }

  LODWORD(STACK[0x5058]) = v998;
  v999 = STACK[0x5288];
  if (!v986)
  {
    v999 = STACK[0x5280];
  }

  LODWORD(STACK[0x5018]) = v999;
  LODWORD(STACK[0x5008]) = v971;
  LODWORD(STACK[0x4FF0]) = v930;
  if (v986)
  {
    v1000 = v930;
  }

  else
  {
    v1000 = v971;
  }

  LODWORD(STACK[0x50C8]) = v1000;
  LODWORD(STACK[0x4F00]) = v960;
  v1001 = STACK[0x5208];
  if (!v986)
  {
    v1001 = v960;
  }

  LODWORD(STACK[0x4EF0]) = v1001;
  LODWORD(STACK[0x4EF8]) = v942;
  v1002 = STACK[0x5200];
  if (v986)
  {
    v1002 = v942;
  }

  LODWORD(STACK[0x4EE8]) = v1002;
  LODWORD(STACK[0x4DF8]) = v983;
  LODWORD(STACK[0x4DF0]) = v947;
  if (v986)
  {
    v1003 = v947;
  }

  else
  {
    v1003 = v983;
  }

  LODWORD(STACK[0x4DD8]) = v1003;
  LODWORD(STACK[0x4DB8]) = v984;
  LODWORD(STACK[0x4DA0]) = v985;
  if (v986)
  {
    v1004 = v985;
  }

  else
  {
    v1004 = v984;
  }

  LODWORD(STACK[0x4DA8]) = v1004;
  LODWORD(STACK[0x4EA0]) = v968;
  LODWORD(STACK[0x4E90]) = v964;
  if (v986)
  {
    v1005 = v968;
  }

  else
  {
    v1005 = v964;
  }

  LODWORD(STACK[0x4EC0]) = v1005;
  return (*(STACK[0x57D8] + 8 * v996))(STACK[0x4A78], 1402217394, v994, 589832, v995, v997, 562440, 4060255678);
}