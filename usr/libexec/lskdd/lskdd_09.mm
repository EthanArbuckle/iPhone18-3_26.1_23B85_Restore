uint64_t sub_10023E73C()
{
  v0 = (STACK[0x51B8] + 1537153557) & 0xA4609FFF;
  v1 = STACK[0x51B8] - 19636;
  STACK[0x5860] = STACK[0xC8A0] + SLODWORD(STACK[0x607C]);
  v2 = STACK[0x57D8];
  STACK[0xB058] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v1 + v0 - 3246)))();
}

uint64_t sub_10023E8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, int a60, int a61)
{
  v62 = STACK[0x1810];
  *(v61 - 240) = a59;
  *(v61 - 232) = a61 - a59 - 2691;
  *(v61 - 228) = a59 + 1451516474;
  *(v61 - 208) = a59 + a61 + 4;
  *(v61 - 216) = v62 + a59;
  *(v61 - 224) = a59;
  *(v61 - 220) = a61 ^ a59;
  v63 = STACK[0x8B0];
  v64 = (*(STACK[0x8B0] + 254368))(v61 - 240);
  return (*(v63 + 8 * *(v61 - 204)))(v64);
}

uint64_t sub_10023E9D8()
{
  v1 = *(STACK[0x9DD8] + 24);
  STACK[0xAE70] = v1;
  return (*(STACK[0x57D8] + 8 * (((v1 == 0) * (v0 - 20846 + ((v0 - 8515) | 0x3A))) ^ v0)))();
}

uint64_t sub_10023EA48@<X0>(int a1@<W8>)
{
  STACK[0xEB28] = v3;
  LODWORD(STACK[0xEB34]) = v1;
  STACK[0xEB38] = v5;
  STACK[0xEB40] = v2;
  STACK[0xEB48] = v4;
  return (*(STACK[0x57D8] + 8 * (((v3 == 0) * (((a1 - 20674) | 0x14C1) + ((a1 - 876) ^ 0xFFFFB813))) ^ a1)))();
}

uint64_t sub_10023EBE0(uint64_t a1, int a2)
{
  v7 = STACK[0x57B0];
  v8 = v3 + a2;
  v9 = (v3 + a2 + v5 + 1185482457) >> ((LODWORD(STACK[0x57B0]) + 56) & 0xEE ^ 0x8B);
  v10 = (v3 + a2 + v9 + v6) >> 7;
  v11 = v10 + v3 + a2 + v9 + 1185482457 + v5;
  v12 = (v11 ^ 0x612DE758) + ((v11 ^ 0x612DE758) >> 15) - (((v11 ^ 0x612DE758) + ((v11 ^ 0x612DE758) >> 15)) >> 5);
  v13 = v10 + v8 + v5 - 152227781 + v9 - ((2 * v11) & 0x608852C4);
  v14 = v12 ^ v2;
  v15 = v12 + 582701002 - ((v12 + 582701002) >> 9) + ((v12 + 582701002 - ((v12 + 582701002) >> 9)) >> 8);
  v16 = v15 + 87895557 + ((v15 + 87895557) >> 15) + ((v15 + 87895557 + ((v15 + 87895557) >> 15)) >> 8);
  v17 = v16 + 1896824274 - ((v16 + 1896824274) >> 8) + ((v16 + 1896824274 - ((v16 + 1896824274) >> 8)) >> 2);
  v18 = v17 + 1449418597 - ((v17 + 1449418597) >> 11) + ((v17 + 1449418597 - ((v17 + 1449418597) >> 11)) >> 1);
  v19 = v14 ^ v17;
  v20 = v18 + 2110635889 - ((2 * v18) & 0xFB9B9BE2) + 3712;
  v21 = v18 + 1370172432 - ((v18 + 1370172432) >> 12) - ((v18 + 1370172432 - ((v18 + 1370172432) >> 12)) >> 3);
  v22 = v13 ^ v16 ^ LODWORD(STACK[0x57C0]) ^ v21;
  v23 = v21 + 2094685960 - ((v21 + 2094685960) >> 9) + ((v21 + 2094685960 - ((v21 + 2094685960) >> 9)) >> 5);
  v24 = v4 ^ v15 ^ v20 ^ 0xD778693A ^ ((v23 ^ 0xBC6049B3) + ((v23 ^ 0xBC6049B3) >> 9) + (((v23 ^ 0xBC6049B3) + ((v23 ^ 0xBC6049B3) >> 9)) >> 7));
  LODWORD(STACK[0x57C0]) = v22;
  LODWORD(STACK[0x5790]) = v19 ^ v23;
  v25 = v19 ^ v23 | v22 ^ 0xA08A991D;
  v26 = (v25 >> 11) & 0xE0 | (v25 >> 19) & 0x1F;
  v27 = v26 + 67612951 - ((2 * v26) & 0xAAAAAAAA);
  v28 = v24 & 7;
  STACK[0x55E0] = v28;
  STACK[0x4F90] = v28;
  STACK[0x4F88] = -v24 & 7;
  if ((v24 & 7) != 0)
  {
    v29 = -1;
  }

  else
  {
    v29 = 0;
  }

  STACK[0x55D0] = -v24 & 7;
  v30 = v29 << (-v24 & 7);
  v31 = 16843009 * (v22 & 0x7F) - 945855406;
  LODWORD(STACK[0x5650]) = (v31 ^ 0x87193379) - 1082545963;
  LODWORD(STACK[0x5640]) = (v31 ^ 0x2C92C3B) + 984201111;
  LODWORD(STACK[0x5630]) = (v31 ^ 0x39B0A5EB) + 30424647;
  LODWORD(STACK[0x5660]) = v31;
  LODWORD(STACK[0x5760]) = v31 ^ 0x7BFFDEFB;
  LODWORD(STACK[0x5780]) = v30;
  LODWORD(STACK[0x5590]) = 16843009 * v30;
  v32 = ~v30;
  v33 = HIBYTE(v25);
  v34 = v27 + 62;
  if ((v24 & 7) != 0)
  {
    v35 = v32;
  }

  else
  {
    v35 = 0;
  }

  LODWORD(STACK[0x5750]) = v35;
  v36 = STACK[0x57A0];
  v37 = *(STACK[0x57A0] + (v34 ^ 0x407B117) + 166196);
  LODWORD(STACK[0x5740]) = (v25 ^ BYTE1(v25));
  v38 = STACK[0x5420];
  v39 = (((v37 ^ 3) - 3) ^ ((v37 ^ 0x5F) - 95) ^ ((v37 ^ 0xFFFFFFE1) + 31)) - (((v34 ^ 0xFFFFFFB0) - 47) ^ ((v34 ^ 0xF) + 112) ^ ((v34 ^ 0x6C) + 13));
  v40 = v39 & 0xFFFFFFF5 ^ 0xFFFFFF82;
  v41 = v39 ^ (2 * ((v39 ^ 0x70) & (2 * ((v39 ^ 0x70) & (2 * ((v39 ^ 0x70) & (2 * ((v39 ^ 0x70) & (2 * ((v39 ^ 0x70) & (2 * (v39 & (2 * v40) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ v40));
  v42 = *(v36 + (v33 ^ 0x82D));
  v43 = LODWORD(STACK[0x4960]) + 117 * (((v41 ^ 0xFFFFFF99) + 30) ^ ((v41 ^ 0xFFFFFFC0) + 69) ^ ((v41 ^ 0xFFFFFF96) + 19));
  v44 = STACK[0x53F0];
  v45 = *(STACK[0x53F0] + ((0xE9694969 % v38 - ((2 * (0xE9694969 % v38)) & 0xAC) - 42) ^ 0xD6));
  v46 = 2 * v33 - ((v25 >> 22) & 0x34) - 101;
  v47 = (((v46 ^ 0x1B) - 104) ^ ((v46 ^ 0x1C) - 111) ^ ((v46 ^ 0xFFFFFF94) + 25)) - 1;
  v48 = v47 & 0x27 ^ 0xFFFFFFA1;
  v49 = v47 ^ v42 ^ (2 * ((v47 ^ 0x64) & (2 * ((v47 ^ 0x64) & (2 * ((v47 ^ 0x64) & (2 * ((v47 ^ 0x64) & (2 * ((v47 ^ 0x44) & (2 * (((2 * v47) & 0x4A ^ 0x42) & v47 ^ v48)) ^ v48)) ^ v48)) ^ v48)) ^ v48)) ^ v48));
  LODWORD(STACK[0x4958]) = 52;
  v50 = *(v44 + (((v45 + 23) | (((v45 + 23) < 0x51u) << 8)) - 81) % v38);
  LODWORD(STACK[0x5730]) = v43 ^ (52 - 85 * (((v49 ^ 0xFFFFFFA0) + 19) ^ ((v49 ^ 0x7C) - 49) ^ ((v49 ^ 0xD) - 64)));
  v51 = (*(v44 + (((v50 - 117) | (((v50 - 117) < 0x3F) << 8)) - 63) % v38) + 83);
  v52 = (*(v44 + ((v51 | ((v51 < 0x66) << 8)) - 102) % v38) + 99);
  v53 = ((v52 | ((v52 < 0x30) << 8)) - 48) % v38 - ((2 * (((v52 | ((v52 < 0x30) << 8)) - 48) % v38)) & 0xF85C981A);
  v54 = *(v36 + (((32 * v53 - 96) & 0xE0 ^ 0xA0 | ((v53 - 64074739) >> 3) ^ 0x1F85C981) ^ 0xD) + 165156);
  v55 = (((v54 ^ 0xFFFFFFE5) + 27) ^ ((v54 ^ 0x60) - 96) ^ ((v54 ^ 0x38) - 56)) - 112;
  v56 = v55 & 0xFFFFFFC0 ^ 0xFFFFFFAB;
  v57 = v55 ^ (2 * ((v55 ^ 0x72) & (2 * ((v55 ^ 0x72) & (2 * ((v55 ^ 0x72) & (2 * ((v55 ^ 0x72) & (2 * ((v55 ^ 0x72) & (2 * ((v55 ^ 0x72) & 0x32 ^ v56)) ^ v56)) ^ v56)) ^ v56)) ^ v56)) ^ v56));
  LODWORD(STACK[0x4A18]) = 49;
  v58 = 117 * (((v57 ^ 0xFFFFFF92) - 16) ^ ((v57 ^ 0x56) + 44) ^ ((v57 ^ 0xFFFFFFC8) - 74)) + 49;
  v59 = v58 & 0xFFFFFFF7 ^ 0x21;
  LODWORD(STACK[0x5610]) = v25 ^ 0x658007E2;
  LODWORD(STACK[0x51F8]) = v58 ^ (2 * ((v58 ^ 0x34) & (2 * ((v58 ^ 0x34) & (2 * ((v58 ^ 0x34) & (2 * ((v58 ^ 0x34) & (2 * ((v58 ^ 0x34) & (2 * (v58 & (2 * v59) ^ v59)) ^ v59)) ^ v59)) ^ v59)) ^ v59)) ^ v59)) ^ 0x3D;
  return (*(STACK[0x57D8] + 8 * v7))();
}

uint64_t sub_10023F44C@<X0>(unint64_t a1@<X8>)
{
  v6 = STACK[0x57D8];
  STACK[0x95A0] = *(STACK[0x57D8] + 8 * v1);
  STACK[0xB690] = v2;
  LODWORD(STACK[0xA2EC]) = v4;
  STACK[0xC1D0] = a1;
  STACK[0x9A28] = 0;
  *(v3 + 640) = -769884012;
  STACK[0x8990] = 0x1FF90131E266DB89;
  STACK[0xCBD0] = 0;
  v7 = (*(v6 + 8 * (v5 ^ 0xD60)))(16);
  STACK[0x9FA0] = v7 + 0x308E083E0C524CBELL;
  return (*(v6 + 8 * (((v7 == 0) * ((v5 - 19005) ^ 0x7FB5 ^ (3769 * (v5 ^ 0x7158)))) ^ v5)))();
}

uint64_t sub_10023F578(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = *(v16 + 528) + 4 * v8;
  v23 = *v12;
  v24 = *STACK[0x51F0];
  v25 = *v12 & ((v17 ^ 0x664E) - 19142);
  v26 = *(v24 + (((v22 & 0x485F8408) + (v22 & 0xB7A07BF0 | 0x485F840E) - 1347667875) & v25));
  v27 = __ROR8__(v22 & 0xFFFFFFFFFFFFFFF8, 8);
  v28 = (a5 - ((v27 + v26) | a5) + ((v27 + v26) | 0xA01A12D4DD74B812)) ^ 0x104D66EF0CDC4DAELL;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ v13;
  v31 = __ROR8__(v30, 8);
  v32 = v30 ^ __ROR8__(v29, 61);
  v33 = *(STACK[0x57C0] + 8) + 4 * v8;
  v34 = (((2 * (v31 + v32)) | 0xB0BF9E0CA395FA64) - (v31 + v32) + 0x27A030F9AE3502CELL) ^ 0x7A342B7C4BA3D242;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x1C031738E4A64104;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ v19;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = *(v24 + (((v33 & 0xFFFFFFF8 ^ 0xF1896506) + 109205349 + ((2 * (v33 & 0xFFFFFFF8)) & 0xE312CA00)) & v25));
  v41 = __ROR8__(v38, 8);
  v42 = __ROR8__(v33 & 0xFFFFFFFFFFFFFFF8, 8);
  v43 = (v20 - ((v42 + v40) | v20) + ((v42 + v40) | 0x79B9BD9A755A66F3)) ^ 0xC9EEC9A1A4F2934FLL;
  v44 = v43 ^ __ROR8__(v40, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ v13;
  v46 = __ROR8__(v45, 8);
  v47 = v45 ^ __ROR8__(v44, 61);
  v48 = (((2 * (v41 + v39)) | 0x56611D75BAC440CCLL) - (v41 + v39) - 0x2B308EBADD622066) ^ 0x79C106F3C5BAF6C4;
  v49 = v48 ^ __ROR8__(v39, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ v9;
  v51 = (((2 * (v46 + v47)) & 0x46DEA00A740DFE0) - (v46 + v47) - 0x236F50053A06FF1) ^ 0x5FA2EE85B636BF7FLL;
  v52 = v51 ^ __ROR8__(v47, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (((2 * (v53 + v52)) & 0xDE8017DBF3AA6120) - (v53 + v52) + 0x10BFF412062ACF6FLL) ^ 0xCBCE32AE28C8E6BLL;
  v55 = v54 ^ __ROR8__(v52, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ v19;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = __ROR8__(v56, 8);
  v59 = (v58 + v57 - ((2 * (v58 + v57)) & 0x8D9E58BCD4289FB4) - 0x3930D3A195EBB026) ^ 0x943EA41772CC9978;
  v60 = v59 ^ __ROR8__(v57, 61);
  v61 = ((((__ROR8__(v50, 8) + (v50 ^ __ROR8__(v49, 61))) ^ v11) >> (8 * (v22 & 7u))) ^ *v22) + HIDWORD(v10);
  v62 = (__ROR8__(v59, 8) + v60) ^ v9;
  v63 = v62 ^ __ROR8__(v60, 61);
  v64 = __ROR8__(v62, 8);
  v65 = v64 + v63 - ((2 * (v64 + v63)) & 0x1A4CC8CBEA4B8396);
  v66 = *(v24 + ((v23 & (((v22 - 4) & 0xFFFFFFF8) + a2)) & 0xFFFFFFFFFFFFFFF8));
  v67 = __ROR8__((v22 - 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v68 = (((2 * (v67 + v66)) & 0xD91F22FE93CF3832) - (v67 + v66) - 0x6C8F917F49E79C1ALL) ^ v21;
  v69 = v68 ^ __ROR8__(v66, 61);
  v70 = (__ROR8__(v68, 8) + v69) ^ v13;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = __ROR8__(v70, 8);
  v73 = (v15 - ((v72 + v71) | v15) + ((v72 + v71) | 0x8D40CA170546118BLL)) ^ a3;
  v74 = v73 ^ __ROR8__(v71, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ 0x1C031738E4A64104;
  v76 = v75 ^ __ROR8__(v74, 61);
  LODWORD(v33) = (((v65 - 0x72D99B9A0ADA3E35) ^ 0x1C98E98D62B97F8BuLL) >> (8 * (v33 & 7u))) ^ *v33;
  v77 = (__ROR8__(v75, 8) + v76) ^ v19;
  v78 = __ROR8__(v77, 8);
  v79 = v77 ^ __ROR8__(v76, 61);
  v80 = (((2 * (v78 + v79)) | 0x5F69C1AB8EB4C9CALL) - (v78 + v79) + a8) ^ 0x7D45689CDF82B247;
  v81 = v80 ^ __ROR8__(v79, 61);
  v82 = __ROR8__(v80, 8);
  v83 = HIDWORD(v18) + v61 + STACK[0x57B0] * v33;
  v84 = (v14 - ((v82 + v81) | v14) + ((v82 + v81) | 0x9EF43EDFA28D6CDALL)) ^ 0x95D44CB1537B5675;
  *(v22 - 4) = v83 ^ (((__ROR8__(v84, 8) + (v84 ^ __ROR8__(v81, 61))) ^ v11) >> (8 * ((v22 - 4) & 7)));
  return (*(STACK[0x57D8] + 8 * ((456 * (((v8 + 1 - a4) | (a4 - (v8 + 1))) >> 63)) ^ v17)))();
}

uint64_t sub_10023FAF4()
{
  v2 = v0 ^ 0x4C80;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x7C7E)))(32);
  v5 = (v2 ^ 0x8FC90966) + v1;
  STACK[0xE450] = v5;
  *(STACK[0x8BB0] + 16 * v5) = v4;
  return (*(v3 + 8 * (((v4 == 0) * (v2 - 19597)) ^ v2)))();
}

uint64_t sub_10023FBC0()
{
  v0 = STACK[0x51B8];
  STACK[0xBBC8] = &STACK[0x798C];
  LODWORD(STACK[0xCDD8]) = 550409984;
  return (*(STACK[0x57D8] + 8 * (v0 - 17563)))();
}

uint64_t sub_10023FC64()
{
  v2 = STACK[0xB988];
  v3 = 1534937323 * ((0xA1FA97CF24065EFALL - ((v1 - 240) | 0xA1FA97CF24065EFALL) + STACK[0x34F8]) ^ 0x937DE0F21D175A42);
  LODWORD(STACK[0x1D4D4]) = (v0 - 880902332) ^ v3;
  STACK[0x1D4C0] = v2 ^ v3;
  LODWORD(STACK[0x1D4CC]) = v3 + v0 + 1451493860;
  LODWORD(STACK[0x1D4D0]) = v3;
  LODWORD(STACK[0x1D4C8]) = v0 - 880902332 - v3 + 245;
  LODWORD(STACK[0x1D4E0]) = ((v0 - 880902332) ^ 0x33) + v3;
  STACK[0x1D4D8] = v3;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x2462)))(v1 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4E4])))(v5);
}

uint64_t sub_10023FD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = STACK[0xAE7C];
  STACK[0x5F50] = 0;
  LODWORD(STACK[0xCBBC]) = -769884012;
  LODWORD(STACK[0xBA7C]) = -143113071;
  LODWORD(STACK[0x9790]) = -143113071;
  STACK[0x6E80] = v5 + 4;
  LODWORD(STACK[0x73FC]) = (v6 + 2035621171) ^ (((v6 + 2035621171) ^ 0x8936CEBB) + 261893236) ^ (((v6 + 2035621171) ^ 0xD74E87D4) + 1373922589) ^ (((v6 + 2035621171) ^ 0xFFFEFBFE) + 2035554615) ^ 0xAB499DA3 ^ (((v4 + 1738298848) & 0x9863FCF7) + ((v6 + 2035621171) ^ 0xD8D3AFA6) + 1584985369);
  return (*(STACK[0x57D8] + 8 * ((12907 * ((v4 - 1514690503) < 0x765D2BA2)) ^ (v4 + 3159))))(a1, 22611, a3, a4, 19);
}

uint64_t sub_10023FF5C()
{
  v1 = LODWORD(STACK[0xDFC4]) + 55882 + (((v0 ^ 0x599C1AB6) - 1503402678) ^ ((v0 ^ 0x6C2BFC2E) - 1814821934) ^ ((v0 ^ 0x35B73CDE) + LODWORD(STACK[0x22CC])));
  v2 = LODWORD(STACK[0xDFC0]) - 951699640;
  v3 = v1 - 848019941 > v2;
  if (v2 < 0xCD743E1B != v1 > 0x328BC1E4)
  {
    v3 = v1 > 0x328BC1E4;
  }

  return (*(STACK[0x57D8] + 8 * ((245 * !v3) ^ LODWORD(STACK[0x22D0]))))();
}

uint64_t sub_100240074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, unsigned int a7, int a8)
{
  LODWORD(STACK[0x5790]) = v15;
  v16 = 1071202283 * ((*(STACK[0x4E98] + v8) ^ 0x5FD5E4FD) - 2041009806 + ((*(STACK[0x4E98] + v8) << LODWORD(STACK[0x5710])) & 0x1FA)) + 55935537;
  v17 = v16 ^ ((v16 ^ 0x1E0290D7) + 869006399) ^ ((v16 ^ 0x525C1998) + 2140501362) ^ ((v16 ^ 0xE117E586) - 857831056) ^ ((v16 ^ 0x7F7FFFDF) + 1387696951) ^ 0xF6AF0FB4;
  v18 = ((v17 ^ v13 ^ 0x35D3D430) - 903074864) ^ ((v17 ^ v13 ^ 0x78EA545C) - 2028622940) ^ ((v17 ^ v13 ^ 0xB99250A6) + 1181593434);
  v19 = ((2 * ((v10 + v18) ^ 0xCA24D15B)) ^ 0xF8FEEC56) & ((v10 + v18) ^ 0xCA24D15B) ^ (2 * ((v10 + v18) ^ 0xCA24D15B)) & 0x7C7F762A;
  v20 = v19 ^ 0x4011229;
  v21 = ((v10 + v18) ^ 0xA613977B) & (2 * ((v10 + v18) & 0xB65BA770)) ^ (v10 + v18) & 0xB65BA770;
  v22 = (v19 ^ 0x787E2400) & (4 * v21) ^ v21;
  v23 = ((4 * v20) ^ 0xF1FDD8AC) & v20 ^ (4 * v20) & 0x7C7F7628;
  v24 = ((16 * (v23 ^ 0xC022603)) ^ 0xC7F762B0) & (v23 ^ 0xC022603) ^ (16 * (v23 ^ 0xC022603)) & 0x7C7F7620;
  v25 = (v23 ^ 0x707D5020) & (16 * v22) ^ v22 ^ 0x7C7F762B ^ (v24 ^ 0x4477620B) & (((v23 ^ 0x707D5020) & (16 * v22) ^ v22) << 8);
  v26 = v18 + ((((v10 + v18) ^ (2 * ((v25 << 16) & 0xFC7FFFFF ^ v25 ^ ((v25 << 16) ^ 0x762B0000) & (((v24 ^ 0x3808140B) << 8) & 0x7C7F0000 ^ 0x90000 ^ (((v24 ^ 0x3808140B) << 8) ^ 0x7F760000) & (v24 ^ 0x3808140B))))) >> 16) ^ 0xA6F3);
  v27 = (v26 + v11) >> 8;
  v28 = (v12 + v26 + v27) ^ v17 ^ (((v12 + v26 + v27) ^ 0xC80AA064) + 364672176) ^ (((v12 + v26 + v27) ^ 0x2B2B301) - 553359413) ^ (((v12 + v26 + v27) ^ 0x978E87A6) + 1245205358) ^ (((v12 + v26 + v27) ^ 0x7F7FBFF7) - 1563858115);
  v29 = ((v28 ^ 0xF56094E2) - 1061933453) ^ ((v28 ^ 0x1C089196) + 702294791) ^ ((v28 ^ 0xEFB8B2E2) - 630454157);
  v30 = ((a5 + v29) ^ 0xF47ABCD) & (2 * ((a5 + v29) & 0x9067ABE8)) ^ (a5 + v29) & 0x9067ABE8;
  v31 = ((2 * ((a5 + v29) ^ 0x2FC5FF1D)) ^ 0x7F44A9EA) & ((a5 + v29) ^ 0x2FC5FF1D) ^ (2 * ((a5 + v29) ^ 0x2FC5FF1D)) & 0xBFA254F4;
  v32 = ((4 * (v31 ^ 0x80A25415)) ^ 0xFE8953D4) & (v31 ^ 0x80A25415) ^ (4 * (v31 ^ 0x80A25415)) & 0xBFA254F4;
  v33 = (v32 ^ 0xBE8050C0) & (16 * ((v31 ^ 0x30000F5) & (4 * v30) ^ v30)) ^ (v31 ^ 0x30000F5) & (4 * v30) ^ v30;
  v34 = ((16 * (v32 ^ 0x1220421)) ^ 0xFA254F50) & (v32 ^ 0x1220421) ^ (16 * (v32 ^ 0x1220421)) & 0xBFA254F0;
  v35 = v33 ^ 0xBFA254F5 ^ (v34 ^ 0xBA204400) & (v33 << 8);
  v36 = v11 + v26 + v27;
  v37 = v29 + ((((a5 + v29) ^ (2 * ((v35 << 16) & 0x3FA20000 ^ v35 ^ ((v35 << 16) ^ 0x54F50000) & (((v34 ^ 0x58210A5) << 8) & 0x3FA20000 ^ 0x1DA20000 ^ (((v34 ^ 0x58210A5) << 8) ^ 0x22540000) & (v34 ^ 0x58210A5))))) >> 16) ^ 0xC663);
  v38 = (v37 + a8) >> 8;
  v39 = v9 + v37 + v38;
  v40 = STACK[0x5740];
  v41 = ((v36 & 0x2683C8B4 ^ 0x2683C8B4) + (v36 & 0x2683C8B4)) & v36;
  v42 = v36 ^ LODWORD(STACK[0x57C0]);
  v43 = LODWORD(STACK[0x5740]) < 0xA261A9F2;
  LODWORD(STACK[0x57C0]) = v42 ^ (v41 >> 2) ^ (a8 + v37 + v38) ^ ((a8 + v37 + v38) >> 2) & 0x9A0F22D;
  v44 = (v39 >> 2) & 0x9A0F22D;
  v45 = (v14 + v26 + v27) ^ LODWORD(STACK[0x57B0]) ^ ((v14 + v26 + v27) >> 2) & 0x9A0F22D ^ v39;
  if (v43 != a7 < 0xA261A9F2)
  {
    v46 = v43;
  }

  else
  {
    v46 = a7 < v40;
  }

  v47 = *(STACK[0x57D8] + 8 * ((11 * !v46) | LODWORD(STACK[0x5780])));
  LODWORD(STACK[0x57B0]) = v45 ^ v44;
  return v47();
}

uint64_t sub_1002407F4()
{
  v0 = STACK[0x51B8] - 21887;
  v1 = STACK[0x57D8];
  v2 = STACK[0xFA4];
  STACK[0x7B40] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0xFA4]));
  return (*(v1 + 8 * (v0 + v2 + 7817)))();
}

uint64_t sub_100240854()
{
  v5 = v1 + 1602892217;
  STACK[0x7FB8] = v0;
  if (v0)
  {
    v6 = 0;
  }

  else
  {
    v6 = v3 == -143113071;
  }

  if (v6)
  {
    v7 = 4151811413;
  }

  else
  {
    v7 = v3;
  }

  v8 = 551690071 * ((v4 - 0x5AFB81183DB4E201 - 2 * ((v4 - 240) & 0xA5047EE7C24B1EEFLL)) ^ 0xD4992C298CA64DB8);
  *(v2 + 608) = v8;
  *(v2 + 616) = 4151854225u - v8;
  *(v2 + 604) = v5 - v8;
  *(v2 + 592) = (v1 - 1079089617) ^ v8;
  *(v2 + 596) = v8 ^ v5 ^ 0xF65;
  *(v2 + 624) = v7 + v8;
  *(v2 + 600) = v5 - v8 - 12;
  v9 = STACK[0x57D8];
  v10 = (*(STACK[0x57D8] + 8 * (v1 + 9201)))(v4 - 240);
  return (*(v9 + 8 * *(v2 + 612)))(v10);
}

uint64_t sub_100240940()
{
  v4 = STACK[0x51B8];
  v5 = STACK[0x51B8] - 18736;
  *(v1 + 600) = v0;
  *(v1 + 592) = v4 - 711523751 * ((((2 * v2) | 0x37F382CC) - v2 - 469352806) ^ 0x2BE3E0B7) + 4438;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v4 ^ 0x244C)))(v3 - 240);
  return (*(v6 + 8 * v5))(v7);
}

uint64_t sub_1002409B8()
{
  LODWORD(STACK[0x7E64]) = v0;
  v2 = STACK[0x57D8];
  STACK[0xADE8] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x1377)))();
}

uint64_t sub_100240BE8()
{
  v1 = STACK[0x57D8];
  STACK[0x5838] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x159A ^ (13041 * ((v0 ^ 0xFB0C0401) < 0xE5024D8B)))))();
}

uint64_t sub_100240C54(uint64_t a1, uint64_t a2, int a3)
{
  v7 = STACK[0x51B8] - 21016;
  v8 = *v6;
  v9 = (v3 - (*(*v4 + (v8 & a2)) & 0x7FFFFFFF ^ a3)) * (((STACK[0x51B8] - 22609) | 0x1C40) ^ 0x75F112B6) + 1327420289;
  *(v5 + 468) = *(*v4 + (v8 & 0xFADE648C)) & 0x7FFFFFFF ^ 0x930B893 ^ v9 ^ ((v9 ^ 0x8AD989E) - 1202932511) ^ ((v9 ^ 0x69883D9D) - 647425564) ^ ((v9 ^ 0xD3EE897D) + 1661969668) ^ ((v9 ^ 0xFDD5FFFF) + 1295307650);
  return (*(STACK[0x57D8] + 8 * (v7 ^ 0x11C9)))();
}

uint64_t sub_100240D74@<X0>(int a1@<W8>)
{
  v3 = *((*(STACK[0x5730] + (v1 | 1)) ^ 0x19) + v2 + 9748);
  v4 = STACK[0x56F0];
  *(v4 + v1) = *((*(STACK[0x5730] + v1) ^ 0x19) + v2 + 9748) ^ 0x72;
  *(v4 + (v1 | 1)) = v3 ^ 0x72;
  return (*(STACK[0x57D8] + 8 * ((201 * (v1 != 254)) ^ a1)))();
}

uint64_t sub_100240ED0()
{
  STACK[0xADA0] = STACK[0x57C0];
  LODWORD(STACK[0xB728]) = STACK[0xB42C];
  return (*(STACK[0x57D8] + 8 * (((STACK[0x73C0] == 0) * (((v0 - 20979) ^ 0xFFFFFBC1) + ((v0 - 20979) | 1))) ^ v0)))();
}

uint64_t sub_1002410A0()
{
  v2 = STACK[0x9B28];
  v3 = 1534937323 * ((v1 - 240) ^ 0xCD7888C2C6EEFB47);
  LODWORD(STACK[0x1D4D4]) = v3 ^ (v0 - 22613) ^ 0xB64B6C86;
  LODWORD(STACK[0x1D4E0]) = ((v0 - 22613) ^ 0xB64B6D6F) + v3;
  LODWORD(STACK[0x1D4D0]) = v3;
  STACK[0x1D4D8] = v2 + v3;
  STACK[0x1D4C0] = v3;
  LODWORD(STACK[0x1D4CC]) = v3 + v0 + 1451493860;
  LODWORD(STACK[0x1D4C8]) = ((v0 - 22613) | 0xB64B61BE) - v3;
  v4 = v0 + 9182;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * v4))(v1 - 240);
  return (*(v5 + 8 * SLODWORD(STACK[0x1D4E4])))(v6);
}

uint64_t sub_1002411B4@<X0>(int a1@<W8>)
{
  v2 = (a1 + 1598345121) & 0xA0BAFB2B;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v2 ^ 0x5F6E)))();
  *(v1 - 0x30BDFED8F32E6501) = 0;
  return (*(v3 + 8 * v2))(v4);
}

uint64_t sub_10024120C@<X0>(int a1@<W8>)
{
  *(v3 + 1448) = v1;
  v4 = v1 - 2016936526 < a1 + 1654788280;
  if ((a1 + 1654788280) < 0x87C7FDB2 != v1 > 0x7838024D)
  {
    v4 = (a1 + 1654788280) < 0x87C7FDB2;
  }

  return (*(STACK[0x57D8] + 8 * ((30 * !v4) ^ (v2 - 17292))))();
}

uint64_t sub_10024127C()
{
  v0 = STACK[0x51B8] - 22460;
  v1 = STACK[0xC878];
  STACK[0xD430] = STACK[0xC878];
  if (STACK[0x66E0])
  {
    v2 = STACK[0xB658] == 0x30BDFED8F32E6585;
  }

  else
  {
    v2 = 1;
  }

  v5 = !v2 && LODWORD(STACK[0xB4AC]) + (v0 ^ 0x82B68BD9) < 0xFFFFFFBF && v1 != 0;
  return (*(STACK[0x57D8] + 8 * ((19027 * v5) ^ v0)))();
}

uint64_t sub_100241328()
{
  v2 = STACK[0x83B0];
  v3 = 1534937323 * ((2 * ((v1 - 240) & 0x6086AF77E9E1F5D0) - (v1 - 240) + 0x1F795088161E0A28) ^ 0xD201D84AD0F0F16FLL);
  LODWORD(STACK[0x1D4C8]) = ((v0 - 22614) ^ 0x610BA7E5) - v3;
  LODWORD(STACK[0x1D4D4]) = v3 ^ (v0 - 22614) ^ 0x610BB7D7;
  LODWORD(STACK[0x1D4E0]) = v0 + 1628131215 + v3 + 4057;
  STACK[0x1D4D8] = v2 + v3;
  STACK[0x1D4C0] = v3;
  LODWORD(STACK[0x1D4CC]) = v3 + v0 + 1451493860;
  LODWORD(STACK[0x1D4D0]) = v3;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x2462)))(v1 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4E4])))(v5);
}

uint64_t sub_100241794()
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
  STACK[0xEF70] = 0;
  STACK[0xEF78] = v0;
  v10 = 16777619 * ((-548819963 * v9 + 7) ^ (-548819963 * v9)) % 7;
  v11 = *(&STACK[0xEF70] | v10);
  *(&STACK[0xEF70] | v10) = 0;
  LOBYTE(STACK[0xEF77]) = v11;
  v12 = 16777619 * ((-548819963 * v9 + 6) ^ (-548819963 * v9)) % 6;
  v13 = *(&STACK[0xEF70] | v12);
  *(&STACK[0xEF70] | v12) = STACK[0xEF76];
  LOBYTE(STACK[0xEF76]) = v13;
  v14 = 16777619 * ((-548819963 * v9 + 5) ^ (-548819963 * v9)) % 5;
  v15 = *(&STACK[0xEF70] | v14);
  *(&STACK[0xEF70] | v14) = STACK[0xEF75];
  LOBYTE(STACK[0xEF75]) = v15;
  v16 = STACK[0xEF70];
  LOBYTE(STACK[0xEF70]) = STACK[0xEF74];
  LOBYTE(STACK[0xEF74]) = v16;
  v17 = 16777619 * ((-548819963 * v9 + 3) ^ (-548819963 * v9)) % 3;
  v18 = *(&STACK[0xEF70] | v17);
  *(&STACK[0xEF70] | v17) = STACK[0xEF73];
  LOBYTE(STACK[0xEF73]) = v18;
  v19 = STACK[0xEF71];
  LOBYTE(STACK[0xEF72]) = STACK[0xEF70];
  LOWORD(STACK[0xEF70]) = v19;
  v20 = vdup_n_s32(-548819963 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = -548819963 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xEF70] = vmla_s32(v22, STACK[0xEF70], vdup_n_s32(0x1000193u));
  STACK[0xEF78] ^= STACK[0xEF70];
  STACK[0xEF78] = vmul_s32(vsub_s32(STACK[0xEF78], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xEF7A];
  LOWORD(STACK[0xEF79]) = STACK[0xEF78];
  LOBYTE(STACK[0xEF78]) = v23;
  v24 = (&STACK[0xEF78] | v17);
  v25 = *v24;
  *v24 = STACK[0xEF7B];
  LOBYTE(STACK[0xEF7B]) = v25;
  LOBYTE(v24) = STACK[0xEF78];
  LOBYTE(STACK[0xEF78]) = STACK[0xEF7C];
  LOBYTE(STACK[0xEF7C]) = v24;
  v26 = (&STACK[0xEF78] | v14);
  LOBYTE(v24) = *v26;
  *v26 = STACK[0xEF7D];
  LOBYTE(STACK[0xEF7D]) = v24;
  v27 = (&STACK[0xEF78] | v12);
  LOBYTE(v26) = *v27;
  *v27 = STACK[0xEF7E];
  LOBYTE(STACK[0xEF7E]) = v26;
  v28 = (&STACK[0xEF78] | v10);
  v29 = *v28;
  *v28 = STACK[0xEF7F];
  LOBYTE(STACK[0xEF7F]) = v29;
  v30 = STACK[0xEF78];
  v31 = (-548819963 * STACK[0xEF78]) ^ v9;
  for (i = 1; i != 4; ++i)
  {
    v33 = 16777619 * ((v31 + i) ^ v31) % i;
    v34 = *(v30 + 8 * v33) ^ *(v30 + 8 * i);
    *(v30 + 8 * i) = v34;
    v35 = *(v30 + 8 * v33) ^ v34;
    *(v30 + 8 * v33) = v35;
    *(v30 + 8 * i) ^= v35;
  }

  v36 = 0;
  v37 = xmmword_1012370F0;
  v38 = xmmword_101237100;
  v39 = xmmword_101237110;
  v40 = xmmword_101237120;
  v41 = vdupq_n_s32(v31);
  v42.i64[0] = 0x9B009B009B009BLL;
  v42.i64[1] = 0x9B009B009B009BLL;
  v43.i64[0] = 0x1000000010;
  v43.i64[1] = 0x1000000010;
  do
  {
    v44 = *(v30 + v36);
    v45 = vmovl_high_u8(v44);
    v46 = vmovl_u8(*v44.i8);
    v48.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v39, v41), vsubq_s32(v39, v41)), v41), vmull_high_u16(v46, v42));
    v48.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v38, v41), vsubq_s32(v38, v41)), v41), vmull_u16(*v45.i8, 0x9B009B009B009BLL));
    v48.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v40, v41), vsubq_s32(v40, v41)), v41), vmull_u16(*v46.i8, 0x9B009B009B009BLL));
    v48.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v37, v41), vsubq_s32(v37, v41)), v41), vmull_high_u16(v45, v42));
    *(v30 + v36) = vqtbl4q_s8(v48, xmmword_101237130);
    v36 += 16;
    v40 = vaddq_s32(v40, v43);
    v39 = vaddq_s32(v39, v43);
    v38 = vaddq_s32(v38, v43);
    v37 = vaddq_s32(v37, v43);
  }

  while (v36 != 32);
  *STACK[0x4630] = STACK[0xEF78];
  return (*(STACK[0x57D8] + 8 * v1))(v37, v38, v39, v40);
}

uint64_t sub_100241BAC@<X0>(int a1@<W8>)
{
  STACK[0xDDB8] = v4;
  v5 = *(v4 + 8);
  STACK[0xDDC0] = v4 + 8;
  return (*(STACK[0x57D8] + 8 * ((((v1 | ((v1 < v2) << 32)) - 1539024015 + v5 < v3) * (((a1 + 5294) ^ 0x7E35) + 4781)) ^ a1)))();
}

uint64_t sub_100241C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0xE1EC]) = v8;
  STACK[0xE1E0] = 0;
  return (*(STACK[0x57D8] + 8 * v7))(a1, a2, a3, a4, a5, a6, a7, 4294958552);
}

uint64_t sub_100241C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = STACK[0x56C0];
  if ((STACK[0x57A0] & 2) != 0)
  {
    v9 = STACK[0x5680];
  }

  LODWORD(STACK[0x5680]) = v9;
  LODWORD(STACK[0x4E68]) = v7 ^ ~(v5 & STACK[0x5760]);
  LODWORD(STACK[0x5550]) = v6 ^ (16843009 * a5) ^ 0xE9E9E9E9;
  LODWORD(STACK[0x5410]) = (16843009 * a5) ^ 0x4040404;
  return (*(STACK[0x57D8] + 8 * v8))(411982141, STACK[0xD640] - 0x3635DE6C7DD3A5F0);
}

uint64_t sub_100241DDC@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W5>, int a6@<W7>, int a7@<W8>)
{
  v14 = STACK[0x57D8];
  STACK[0x9558] = *(STACK[0x57D8] + 8 * a7);
  *(a1 + 2347) = v8 & 1;
  STACK[0xB988] = 0;
  *(v9 + 9) = 0;
  STACK[0xA218] = 0;
  *(v12 + 1120) = a6;
  STACK[0x84D8] = 0;
  *(v13 + 3112) = v11;
  if ((v8 & 1) == 0)
  {
    a4 = a3;
  }

  *(v10 + 2852) = a4;
  return (*(v14 + 8 * ((v7 + a5) ^ a2)))();
}

uint64_t sub_100241EF0()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v1 + 9207)))();
  STACK[0x8228] = 0;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_100241F64()
{
  v0 = STACK[0x51B8];
  *(STACK[0xE5A0] + 533) = 1;
  return (*(STACK[0x57D8] + 8 * (v0 - 21610)))();
}

uint64_t sub_100242000()
{
  v2 = STACK[0x7C80];
  STACK[0xE8B0] = v1;
  STACK[0xE8B8] = v2;
  return (*(STACK[0x57D8] + 8 * ((8102 * (v1 - v2 > ((v0 - 29393) ^ 0xD5uLL))) ^ (v0 - 12833))))();
}

uint64_t sub_100242070()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  return (*(v1 + 8 * (v0 - 14792)))(v2);
}

uint64_t sub_1002421CC@<X0>(uint64_t a1@<X6>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  v13 = v6;
  v14 = v9 + v6;
  v15 = __ROR8__(v14 & 0xFFFFFFFFFFFFFFF8, 8);
  v16 = v15 - ((a2 + 2 * v15) & 0x4C13E36E47AA5750) - 0xBEAA906F79776F5;
  v17 = v16 ^ 0x49B1AF2607E19B2CLL;
  v16 ^= 0x39EA8529237B7036uLL;
  v18 = (__ROR8__(v17, 8) + v16) ^ v10;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ a1;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ v11;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (v24 + v23 - ((2 * (v24 + v23)) & 0x3ABE682FD3B1F90) + 0x1D5F3417E9D8FC8) ^ 0x2399FA8B3A9183C3;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ v12;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (v29 + v28 - ((2 * (v29 + v28)) & 0x596BACB3DDED1D20) - 0x534A29A611097170) ^ 0x1E37E84D4ECA8DF7;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8);
  v33 = v6 + 1;
  *(a3 + v13) = (((v8 - ((v32 + v31) | v8) + ((v32 + v31) | 0x2BECDBD23CCB5329)) ^ 0x42BDA77F3BB342AAuLL) >> (8 * (v14 & 7u))) ^ *v14;
  v34 = v33 + v3 < v5;
  if (v5 < v7 != v33 > 0xCA8EB4A2)
  {
    v34 = v5 < v7;
  }

  return (*(STACK[0x57D8] + 8 * ((v4 - 12159) | (32 * v34))))();
}

uint64_t sub_1002423AC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0x5238]) = 0;
  LODWORD(STACK[0x5750]) = 0;
  LODWORD(STACK[0x5640]) = v4 + 13240;
  v5 = *(STACK[0x57D8] + 8 * ((23593 * (((v4 - 72) ^ (((a4 - v4) | (v4 - a4)) < 0)) & 1)) ^ (v4 + 13122)));
  LODWORD(STACK[0x5268]) = 24;
  LODWORD(STACK[0x5380]) = 105;
  LODWORD(STACK[0x5278]) = 205;
  LODWORD(STACK[0x5248]) = 83;
  LODWORD(STACK[0x5240]) = 200;
  LODWORD(STACK[0x5270]) = 184;
  LODWORD(STACK[0x53B0]) = 55;
  LODWORD(STACK[0x5280]) = 229;
  LODWORD(STACK[0x5288]) = 237;
  LODWORD(STACK[0x53A8]) = 199;
  LODWORD(STACK[0x54A0]) = 16;
  LODWORD(STACK[0x5390]) = 20;
  LODWORD(STACK[0x53A0]) = 116;
  LODWORD(STACK[0x5398]) = 175;
  LODWORD(STACK[0x57B0]) = STACK[0x5530];
  v6 = LODWORD(STACK[0x5600]);
  LODWORD(STACK[0x53C0]) = STACK[0x5620];
  LODWORD(STACK[0x5660]) = STACK[0x55E0];
  LODWORD(STACK[0x5680]) = STACK[0x5610];
  LODWORD(STACK[0x53D0]) = STACK[0x55F0];
  LODWORD(STACK[0x53C8]) = STACK[0x55C0];
  LODWORD(STACK[0x53F0]) = STACK[0x55A0];
  LODWORD(STACK[0x5670]) = STACK[0x5590];
  v7 = LODWORD(STACK[0x5580]);
  LODWORD(STACK[0x5408]) = STACK[0x5570];
  LODWORD(STACK[0x5470]) = STACK[0x5560];
  LODWORD(STACK[0x5480]) = STACK[0x5550];
  LODWORD(STACK[0x5400]) = STACK[0x5540];
  LODWORD(STACK[0x5530]) = -1682881846;
  LODWORD(STACK[0x53D8]) = STACK[0x5388];
  LODWORD(STACK[0x56D0]) = STACK[0x5370];
  LODWORD(STACK[0x5430]) = STACK[0x5368];
  LODWORD(STACK[0x53F8]) = STACK[0x5358];
  LODWORD(STACK[0x5490]) = STACK[0x5350];
  LODWORD(STACK[0x53E8]) = STACK[0x5340];
  LODWORD(STACK[0x5440]) = STACK[0x5328];
  LODWORD(STACK[0x5420]) = STACK[0x5320];
  LODWORD(STACK[0x53B8]) = STACK[0x5310];
  LODWORD(STACK[0x5410]) = STACK[0x5308];
  LODWORD(STACK[0x5460]) = STACK[0x5300];
  LODWORD(STACK[0x56C0]) = STACK[0x52E8];
  LODWORD(STACK[0x53E0]) = STACK[0x52D8];
  LODWORD(STACK[0x56E0]) = STACK[0x52E0];
  LODWORD(STACK[0x5450]) = STACK[0x52D0];
  return v5(v7, v6, LODWORD(STACK[0x52C8]));
}

uint64_t sub_10024288C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x5338]) = v13 + 1813072255;
  v17 = (v9 + v15 + ((v15 + v12) >> 16) - ((v15 + v12 + ((v15 + v12) >> 16)) >> 8) - v14) ^ 0xC3EFFA0F;
  v18 = v17 + (v17 >> 8) + ((v17 + (v17 >> 8)) >> 6);
  v19 = v18 ^ v11;
  v20 = (v18 ^ 0x46FC31C8) - ((v18 ^ 0x46FC31C8) >> (((v13 - 72) | 0x50) ^ 0xD1));
  v21 = v20 - (v20 >> 4);
  v22 = v21 ^ v10;
  v23 = v21 + 366068626 + ((v21 + 366068626) >> 12) - ((v21 + 366068626 + ((v21 + 366068626) >> 12)) >> 6);
  v24 = (v23 ^ 0x7F70C12F) - ((v23 ^ 0x7F70C12F) >> 10) + (((v23 ^ 0x7F70C12F) - ((v23 ^ 0x7F70C12F) >> 10)) >> 5);
  v25 = v19 ^ v24;
  v26 = (v24 ^ 0xC6BB0CF1) + ((v24 ^ 0xC6BB0CF1) >> 14) + (((v24 ^ 0xC6BB0CF1) + ((v24 ^ 0xC6BB0CF1) >> 14)) >> 4);
  v27 = v22 ^ v26;
  v28 = v26 - 1274243017 + ((v26 - 1274243017) >> 14) + ((v26 - 1274243017 + ((v26 - 1274243017) >> 14)) >> 6);
  v29 = v28 - 391941237 + ((v28 - 391941237) >> 15) + ((v28 - 391941237 + ((v28 - 391941237) >> 15)) >> 1);
  v30 = v25 ^ v29;
  v31 = v29 + 106723516 - ((v29 + 106723516) >> 9) - ((v29 + 106723516 - ((v29 + 106723516) >> 9)) >> 5);
  LOBYTE(v25) = v27 ^ v31 ^ ((v27 ^ v31) >> 16) ^ ((v27 ^ v31) >> 8);
  LODWORD(STACK[0x55C0]) = v27 ^ v31;
  v32 = 16843009 * (((v27 ^ v31) >> 24) ^ 0xB4016165 ^ ((v25 ^ 0x37) - 1274977947 - ((2 * (v25 ^ 0x37)) & 0x15E) + 74));
  LODWORD(STACK[0x53D8]) = v32;
  v33 = 16843009 * ((((BYTE1(v30) ^ BYTE2(v30) ^ 0x4A) - ((2 * (BYTE1(v30) ^ BYTE2(v30) ^ 0x4A)) & 0x2E) - 105) ^ v30) ^ HIBYTE(v30) ^ 0x59);
  LODWORD(STACK[0x5328]) = v33;
  v34 = v32 ^ v33;
  v35 = (((LODWORD(STACK[0x53F8]) ^ 0x8C2C3ECD) + 1943257395) ^ ((LODWORD(STACK[0x53F8]) ^ 0xA7C28F5E) + 1480421538) ^ ((LODWORD(STACK[0x53F8]) ^ 0xDB5CE254) + 614669740)) + 1806034703 * ((((v34 ^ 0x820B32D6) - 68623310) ^ ((v34 ^ 0x28599B89) + 1371164015) ^ ((v34 ^ 0xD921DA2C) - 1597895476)) - (((a8 ^ 0xEBAB65F2) + 933956454) ^ ((a8 ^ 0xA2576AE4) + 2119631988) ^ ((a8 ^ 0xB702F1E8) + 1795334016)));
  v36 = v23 ^ v8 ^ v28 ^ (v31 + 1217341658 + ((v31 + 1217341658) >> 8) + ((v31 + 1217341658 + ((v31 + 1217341658) >> 8)) >> 5));
  v37 = v36 & 7;
  LODWORD(STACK[0x5170]) = v37 ^ 2;
  v38 = -(v37 ^ 2) & 7;
  if (v37 == 2)
  {
    v39 = 0;
  }

  else
  {
    v39 = 255;
  }

  LODWORD(STACK[0x53F8]) = v39 << v38;
  v40 = (v39 << v38) ^ 0x75481588;
  if (v37 == 2)
  {
    v41 = -1967658377;
  }

  else
  {
    v41 = v40;
  }

  LODWORD(STACK[0x55B0]) = v41;
  v42 = STACK[0x54D0];
  LODWORD(STACK[0x5228]) = 33686018 * LODWORD(STACK[0x54D0]);
  v43 = STACK[0x5188];
  v44 = v13 >= 0x47793DD6;
  v45 = v13 ^ 0x93EEF22B;
  v46 = v13 + 1813056569;
  v47 = ((LODWORD(STACK[0x5580]) ^ 0x1AAB41C6) - 447431110) ^ ((LODWORD(STACK[0x5580]) ^ 0xD970B6B7) + 646924617) ^ ((LODWORD(STACK[0x5580]) ^ 0x5642D79A) - 1447221146);
  v48 = *(&off_101353600 + v46 + 420) - 8;
  v49 = v38 ^ *&v48[4 * v38];
  LODWORD(STACK[0x53A0]) = ((v49 ^ 0x52EDE9BB) - 1276960975) ^ ((v49 ^ 0xC17CDEF7) + 544352381) ^ ((v49 ^ 0x1ED09F4C) - 2201144);
  v50 = *(&off_101353600 + v45) - 12;
  v51 = STACK[0x5178];
  LODWORD(STACK[0x5398]) = v47 + 899250788 + (((*&v50[4 * LODWORD(STACK[0x5178])] ^ 0x5DFF6B34) + 1739177637) ^ ((*&v50[4 * LODWORD(STACK[0x5178])] ^ 0xC321D70C) - 109641059) ^ ((*&v50[4 * LODWORD(STACK[0x5178])] ^ 0x68C76CBA) + 1385281835));
  v52 = v30 & 0x7F ^ 2;
  v53 = v43 ^ LODWORD(STACK[0x5570]) ^ (16843008 * v42);
  LODWORD(STACK[0x5330]) = v52;
  LODWORD(STACK[0x5480]) = v53 ^ (16843009 * v52) ^ (16843008 * v52 - ((33686016 * v52) & 0xD4752600) - 365259846);
  v54 = v34 ^ 0x861C2918 ^ v16;
  v55 = (16843008 * v42) ^ LODWORD(STACK[0x5420]) ^ (v43 - ((33686018 * v42) & 0x6C34E1CC) - 1239781146) ^ v16 ^ (16843009 * v52) ^ (16843008 * v52) ^ v34 ^ 0x861C2918;
  v56 = STACK[0x5180];
  v57 = 4 * STACK[0x5180];
  LODWORD(STACK[0x5420]) = *&v50[v57];
  STACK[0x51D0] = *(&off_101353600 + v46) + v57;
  LODWORD(STACK[0x5540]) = v35 - 1057722260;
  LODWORD(STACK[0x5320]) = ((LODWORD(STACK[0x5430]) ^ 0xBFEB2642) + 1075108286) ^ ((LODWORD(STACK[0x5430]) ^ 0x5C29B382) - 1546236802) ^ ((LODWORD(STACK[0x5430]) ^ 0x5B349200) - 1530171904);
  LODWORD(STACK[0x5168]) = 16843009 * v52;
  v58 = (v30 & 0xFFFFFF80 ^ 0xA8346BE8) & ~v52 | (16843009 * v52) & 0x17;
  v59 = (361062917 * v51) ^ LODWORD(STACK[0x54C0]);
  LODWORD(STACK[0x5150]) = v38;
  LODWORD(STACK[0x5300]) = ((v59 ^ (361062917 * v38) ^ 0xBA3EB89F) + 681150339) ^ ((v59 ^ (361062917 * v38) ^ 0xD2584672) + 1090484592) ^ ((v59 ^ (361062917 * v38) ^ 0x98D4AD2A) + 175346232);
  LODWORD(STACK[0x52F0]) = (((a8 ^ 0xC489C932) + 411674534) ^ ((a8 ^ 0x12181B9C) - 837257972) ^ ((a8 ^ 0x286F2C50) - 194035000)) - (((v34 ^ 0xC5AFB9DE) - 1135841478) ^ ((v34 ^ 0xF9D19EF2) - 2144188394) ^ ((v34 ^ 0x4F0D545F) + 921600697));
  LODWORD(STACK[0x51C0]) = ((LODWORD(STACK[0x5720]) ^ 0x5E69C5E0) - 1583990240) ^ ((LODWORD(STACK[0x5720]) ^ 0x9DD9E4D7) + 1646664489) ^ ((LODWORD(STACK[0x5720]) ^ 0x7B4626F7) - 2068195063);
  LODWORD(STACK[0x54C0]) = v58 ^ 0xE792C66F;
  LODWORD(STACK[0x5140]) = ((v58 ^ 0x57C5CCCE) + 1336472927) ^ ((v58 ^ 0x6198AAC2) + 2046137171) ^ ((v58 ^ 0x7F0C77E4) + 1734430325);
  LODWORD(STACK[0x5138]) = 754227139 * (((v30 ^ 0x6467441A) - 392024073) ^ ((v30 ^ 0xC7DA9869) + 1260385158) ^ ((v30 ^ 0x42D8A671) - 836907618));
  v60 = (LODWORD(STACK[0x53D0]) ^ 0xB927397A) & (~v43 | 0xFFFFFF05) | v43 & 5;
  v61 = ((v60 ^ 0x69912AF) + 464243945) ^ ((v60 ^ 0x30BBEA5A) + 763966494) ^ ((v60 ^ 0x7901440F) + 1681103433);
  LODWORD(STACK[0x53D0]) = ((LODWORD(STACK[0x5400]) ^ 0x29F9864E) - 704218702) ^ ((LODWORD(STACK[0x5400]) ^ 0xDD79B88A) + 579225462) ^ ((LODWORD(STACK[0x5400]) ^ 0xAE67095F) + 1368979105);
  LODWORD(STACK[0x5510]) ^= v36 ^ 0xC922125B ^ ((v36 & 0xFFFFFFF8 ^ 0x4308C683) & (v37 ^ 0xFFFFFFFD) | v36 & 4);
  v62 = STACK[0x57C0];
  v63 = (STACK[0x57C0] & 0xFFFFFFF8 ^ 0x3E6BA439) & (LODWORD(STACK[0x5500]) ^ 0xFFFFFFFE) | STACK[0x57C0] & 6;
  LODWORD(STACK[0x5130]) = 194504195 * ((((LODWORD(STACK[0x57C0]) ^ 0x20623AC3) - 2126911050) ^ ((LODWORD(STACK[0x57C0]) ^ 0x892078E1) + 679193496) ^ ((LODWORD(STACK[0x57C0]) ^ 0x5F46C7BF) - 31648566)) - (((v63 ^ 0xBAE25D2F) + 886476794) ^ ((v63 ^ 0xE7D1C443) + 1776621206) ^ ((v63 ^ 0x955CB8C9) + 459827744)));
  v64 = *(&off_101353600 + v46 + 154) - 8;
  v65 = *&v64[4 * ((v61 - 1376871102) % 0x101u)];
  v66 = STACK[0x5408];
  v67 = *&v48[4 * (v66 % 0x101)] ^ (v66 % 0x101);
  v68 = (((LODWORD(STACK[0x5550]) ^ 0x8D56A5F6) + 1923701258) ^ ((LODWORD(STACK[0x5550]) ^ 0x5E65D881) - 1583732865) ^ ((LODWORD(STACK[0x5550]) ^ 0x721B9D4E) - 1914412366)) + (((v65 ^ 0x8829EBC) - 1663558216) ^ ((v65 ^ 0xCF12045E) + 1531479894) ^ ((v65 ^ 0x31FEE3CA) - 1515953982)) - (((v67 ^ 0xD90AF1FE) + 222684436) ^ ((v67 ^ 0xBDD485C4) + 1771802922) ^ ((v67 ^ 0xE99FDC3A) + 1037093080)) - 1744657661;
  LODWORD(STACK[0x5570]) = v62 ^ 0x5EA42C89 ^ LODWORD(STACK[0x5440]) ^ ((v62 & 3) + 1077940608) ^ (v62 & 0xFFFFFFF8 ^ 0x50084BD4) & (v62 | 0xFFFFFFF8);
  LODWORD(STACK[0x54B0]) = v36;
  LODWORD(v50) = (v30 & 0xFFFFFF80 ^ 0xE1657A00 ^ v52) % 0x101;
  v69 = ((v36 & 0xFFFFFFF8 ^ 0xC4F1655A) & (v37 ^ 0xFFFFFFF9) | v36 & 5) ^ v36 ^ 0xEBE8654;
  LODWORD(v48) = v50 ^ *&v48[4 * v50];
  LODWORD(STACK[0x5128]) = ((v48 ^ 0x3455ADF) - 627638311) ^ ((v48 ^ 0xE7D5BDA2) + 1040586918) ^ ((v48 ^ 0x69D14F7D) - 1341986181);
  LODWORD(v48) = ((LODWORD(STACK[0x5530]) ^ 0x5BFF0AF6) - 1543441142) ^ ((LODWORD(STACK[0x5530]) ^ 0xB9BA0096) + 1178992490) ^ ((LODWORD(STACK[0x5530]) ^ 0x12F759A7) - 318200231);
  v70 = ((LODWORD(STACK[0x55F0]) ^ 0x78C73043) - 2026319939) ^ ((LODWORD(STACK[0x55F0]) ^ 0xD101CA8) - 219159720) ^ ((LODWORD(STACK[0x55F0]) ^ 0xD4FFCCD2) + 721433390);
  v71 = *&v64[4 * ((v30 ^ 0xE1657A02) % 0x101)];
  LODWORD(STACK[0x5120]) = ((v71 ^ 0x2D33B747) - 1345289425) ^ ((v71 ^ 0x610D29A6) - 470934064) ^ ((v71 ^ 0xBA50E7C9) + 951309217);
  LODWORD(STACK[0x5118]) = v48 + 279811073;
  v72 = ((LODWORD(STACK[0x5560]) ^ 0xB3F4452) - 188695634) ^ ((LODWORD(STACK[0x5560]) ^ 0x916A96BF) + 1855285569) ^ ((LODWORD(STACK[0x5560]) ^ 0xC0B2E576) + 1062017674);
  LODWORD(STACK[0x5110]) = ((v30 ^ LODWORD(STACK[0x57A0]) ^ 0x9555F406) + 1322102941) ^ ((v30 ^ LODWORD(STACK[0x57A0]) ^ 0x5E8D1A53) - 2062197046) ^ ((v30 ^ LODWORD(STACK[0x57A0]) ^ 0x7B320528) - 1599454797);
  LODWORD(STACK[0x5560]) = v62 ^ 0x5EA42C89 ^ LODWORD(STACK[0x5410]) ^ v63;
  LODWORD(STACK[0x5410]) = v72 + 547629082;
  LODWORD(STACK[0x5108]) = (v68 ^ v62) - ((2 * (v68 ^ v62)) & 0xAE79D794) + 1463610314;
  LODWORD(STACK[0x5530]) = v55 ^ (4 * v54);
  v73 = STACK[0x5170];
  LODWORD(STACK[0x5580]) = v56 ^ LODWORD(STACK[0x54A0]) ^ LODWORD(STACK[0x5170]) ^ (16 * (LODWORD(STACK[0x5170]) ^ v56));
  v74 = v69 ^ LODWORD(STACK[0x5470]);
  LODWORD(STACK[0x5550]) = v69 ^ LODWORD(STACK[0x5460]) ^ (v69 << 7);
  LODWORD(STACK[0x5720]) = v74 ^ (v69 >> 2);
  v75 = !v44;
  v76 = (50147 * v75) ^ LODWORD(STACK[0x5338]);
  v77 = LODWORD(STACK[0x53F8]);
  v78 = 16843009 * v77;
  v79 = (-1258291200 * v77) & STACK[0x55C0];
  LODWORD(STACK[0x5318]) = v78;
  LODWORD(STACK[0x5338]) = v79 ^ v78;
  LODWORD(STACK[0x53F8]) = v30 ^ 0x52;
  LODWORD(STACK[0x5460]) = STACK[0x55B0] & 0x52;
  LODWORD(STACK[0x5430]) = *&v64[4 * v73];
  LODWORD(STACK[0x5148]) = *(STACK[0x51D0] - 4);
  LODWORD(STACK[0x51D0]) = v30;
  LODWORD(STACK[0x5440]) = v70 - 214285577 + v66;
  LODWORD(STACK[0x55F0]) = v61;
  LODWORD(STACK[0x5470]) = v66 - v61;
  LODWORD(STACK[0x54A0]) = LODWORD(STACK[0x5730]) ^ LODWORD(STACK[0x5450]);
  LODWORD(STACK[0x51C8]) = LODWORD(STACK[0x53D8]) ^ 0x20954844;
  v80 = *(STACK[0x57D8] + 8 * v76);
  LODWORD(STACK[0x5450]) = LODWORD(STACK[0x54C0]) ^ v30 ^ 0x733A9413;
  return v80(3771665010);
}

uint64_t sub_100244118()
{
  v0 = STACK[0x51B8] - 20086;
  v1 = STACK[0x57D8];
  STACK[0x8580] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1837)))();
}

uint64_t sub_10024414C(uint64_t a1, uint64_t a2, int a3)
{
  STACK[0x5660] = 0;
  v4 = *(STACK[0x57D8] + 8 * ((89 * (((v3 < 0x10) ^ (a3 + 67 + 3 * (a3 ^ 0x1C))) & 1)) ^ a3));
  *&STACK[0x57B0] = vdupq_n_s64(0xFF57E2C344E3C6AELL);
  *&STACK[0x5680] = vdupq_n_s64(0xA81D3CBB1C3951uLL);
  *&STACK[0x5750] = vdupq_n_s64(0x5013C6B964AF4432uLL);
  *&STACK[0x5740] = vdupq_n_s64(0x94C0E84A6BE37DF6);
  *&STACK[0x5730] = vdupq_n_s64(0x3F2962448047FB02uLL);
  *&STACK[0x5670] = vdupq_n_s64(0xD3E89262E39393A3);
  *&STACK[0x5720] = vdupq_n_s64(0xC0C09022639000A1);
  *&STACK[0x5710] = vdupq_n_s64(0x9ABD4F34AD53C4DCLL);
  *&STACK[0x5700] = vdupq_n_s64(0x480166234BED7BA6uLL);
  *&STACK[0x56F0] = vdupq_n_s64(0xA400B311A5F6BDD3);
  *&STACK[0x57A0] = vdupq_n_s64(0xFCEF1FDA6D21DB88);
  *&STACK[0x56E0] = vdupq_n_s64(0x26208A451A7030A8uLL);
  *&STACK[0x56D0] = vdupq_n_s64(0x6CEFBADD72C7E7ACuLL);
  *&STACK[0x56C0] = vdupq_n_s64(0x601A99EF04579AA7uLL);
  return v4();
}

uint64_t sub_100244330()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 26131)))(48) == 0;
  return (*(v1 + 8 * ((v2 * ((4061 * (v0 ^ 0x1628)) ^ 0xE65)) ^ v0)))();
}

uint64_t sub_100244380(uint64_t a1, uint64_t a2)
{
  v2 = STACK[0xD00] ^ 0x524A;
  *(STACK[0xB840] - 0x1883660EE814440ALL) = STACK[0xE754];
  return (*(STACK[0x57D8] + 8 * (((LODWORD(STACK[0xE758]) == -143113071) * (v2 + 26354)) ^ LODWORD(STACK[0xD0C]))))(a1, a2, STACK[0x51B8]);
}

uint64_t sub_1002443F8@<X0>(uint64_t a1@<X4>, int a2@<W5>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v14 = v4 + v7 + v5;
  v15 = *(*v11 + (((v14 & 0xFFFFFFF8 & a2) + (v14 & 0xFFFFFFF8 | (a2 + 2)) + 163069174) & *v12));
  v16 = (__ROR8__(v14 & 0xFFFFFFFFFFFFFFF8, 8) + v15) ^ v9;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = ((((v18 + v17) << ((v8 - 121) ^ 0x57u)) | 0xB65AE6264AD9076ELL) - (v18 + v17) + 0x24D28CECDA937C49) ^ 0x9FA01C7F827D5BE2;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ a1;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (0x45AEA691D2B8C892 - ((v23 + v22) | 0x45AEA691D2B8C892) + ((v23 + v22) | 0xBA51596E2D47376DLL)) ^ 0xDD0237AED6CC63F0;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ v13;
  v27 = __ROR8__(v26, 8);
  v28 = v26 ^ __ROR8__(v25, 61);
  v29 = (((2 * (v27 + v28)) | 0xA0AA9C796357C07ELL) - (v27 + v28) - 0x50554E3CB1ABE03FLL) ^ 0x74260559104B6466;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ v10;
  v32 = __ROR8__(v31, 8);
  v33 = __ROR8__(v30, 61);
  *v14 = *(a4 + v7) ^ 0xDC ^ (((((2 * (v32 + (v31 ^ v33))) | 0x987EA37B7E276988) - (v32 + (v31 ^ v33)) - 0x4C3F51BDBF13B4C4) ^ 0x235C0D935AC46602) >> (8 * (v14 & 7u)));
  return (*(STACK[0x57D8] + 8 * ((61 * (((v7 + 1) ^ v6) != a3)) ^ v8)))();
}

uint64_t sub_100244688@<X0>(unsigned int a1@<W8>)
{
  *(v2 + 3640) = a1;
  v3 = ((v1 + 10214) ^ 0x1426) + ((v1 + 10214) | 0x2B08) + LODWORD(STACK[0xBC4C]) + 314997928;
  v4 = v3 < 0x82FDF752;
  v5 = a1 - 2097285294 < v3;
  if (a1 > 0x7D0208AD != v4)
  {
    v5 = v4;
  }

  return (*(STACK[0x57D8] + 8 * ((27434 * v5) ^ v1)))();
}

uint64_t sub_100244774(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v14 = STACK[0x5460];
  v15 = LODWORD(STACK[0x5470]) | LODWORD(STACK[0x56D0]) | v8 | LODWORD(STACK[0x5480]);
  v16 = (v9 & 0x4200 ^ LODWORD(STACK[0x2060]) ^ ((184549360 - v11) & 0xE200890 ^ 0x1359430A ^ (v10 ^ (1457 * (LODWORD(STACK[0x5460]) ^ 0x5576)) ^ 0xF13B81A4) & (v12 ^ 0xCEFFFEB5)) & (v9 ^ 0xFFFFFFBF)) & ~v6 | v6 & 0x42;
  v17 = (LODWORD(STACK[0x5440]) ^ 0xFE44908F) & (LODWORD(STACK[0x5450]) ^ 0xFEFFF9FF) ^ (LODWORD(STACK[0x5450]) | 0xFE44908F) | LODWORD(STACK[0x5420]) | LODWORD(STACK[0x5430]);
  v18 = (a5 ^ 0xFFFFFEFF) & (((v5 ^ LODWORD(STACK[0x2064])) & ~a3 | a3 & 0x80000) ^ 0x9A5EA490);
  LODWORD(STACK[0x5560]) = v18 & 0xBB7E228A ^ 0xF4A9FF7F ^ (a5 & 0xC900 ^ 0x400C990 ^ v18) & (v13 ^ 0xEA374591);
  LODWORD(STACK[0x5590]) = v15 ^ 0x1C;
  LODWORD(STACK[0x5730]) = v7 ^ 0x7552D3C4;
  LODWORD(STACK[0x5580]) = v16 ^ 0x8CCE73EF;
  LODWORD(STACK[0x5760]) = a4 ^ 0xF1822932;
  LODWORD(STACK[0x5570]) = v17 ^ 0x7F;
  return (*(STACK[0x57D8] + 8 * v14))(4294967174);
}

uint64_t sub_100244A04()
{
  v2 = *(STACK[0xB658] - 0x30BDFED8F32E6765);
  v3 = *(*STACK[0x51F0] + (*STACK[0x51E8] & 0x2D5887C)) & ((v0 + 13603) ^ 0x7FFFA7A9) ^ 0x39E8D924;
  v4 = 1978732275 * (v1 - v3);
  v5 = (((v2 ^ LODWORD(STACK[0x314])) - 1240048945) ^ ((v2 ^ 0xFA2EAF58) + 97603752) ^ ((v2 ^ 0x61DB8AFD) - 1641777917)) - 853795527;
  v6 = v4 > 0x500635A;
  v7 = v4 - 83911515;
  v8 = v6;
  v9 = (((v2 ^ 0x2D95DD4E) - 764796238) ^ ((v2 ^ LODWORD(STACK[0x310])) + 1535439423) ^ (((3255 * (v0 ^ 0x2336)) ^ v2 ^ 0x5BF26F88) - 1542606875)) - 1978732275 * (LODWORD(STACK[0x5350]) - v3);
  v10 = v5 > v7;
  if (v5 < 0xFAFF9CA5 != v8)
  {
    v11 = v5 < 0xFAFF9CA5;
  }

  else
  {
    v11 = v10;
  }

  v12 = v9 != 769884012 || v11;
  return (*(STACK[0x57D8] + 8 * ((82 * v12) ^ v0)))(STACK[0x8FD8]);
}

uint64_t sub_100244C54()
{
  v0 = STACK[0x1558];
  v1 = STACK[0x1558] + 1400;
  STACK[0xCCC0] = 0;
  LODWORD(STACK[0x599C]) = -769884012;
  return (*(STACK[0x57D8] + 8 * ((44 * (STACK[0x6B48] == v1 + (v0 ^ 0x2118) - 0x2C73422C535033D2)) ^ v0)))();
}

uint64_t sub_100244D2C@<X0>(uint64_t a1@<X8>)
{
  STACK[0x9780] = v2;
  v4 = &STACK[0x10120] + a1;
  STACK[0xA878] = v4;
  STACK[0x6AF8] = (v4 + 32);
  STACK[0x9068] = (v4 + 64);
  STACK[0x7ED8] = v1 - 5237 + ((v3 - 1698593559) & 0x653E1FF5);
  STACK[0x8148] = 0;
  STACK[0xACE8] = 0;
  STACK[0x8B78] = 0;
  STACK[0x8E68] = 0;
  return (*(STACK[0x57D8] + 8 * v3))();
}

uint64_t sub_100244DC4(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v8 = ((2 * (((a4 + 2038352662) ^ 0x797F0612) + a2 - 14443)) & 0xEF90D8BE) + ((((a4 + 2038352662) ^ 0x797F0612) + a2 - 14443) ^ 0xF7C86C5F) + 137860001;
  v9 = __ROR8__((v4 + v8) & 0xFFFFFFFFFFFFFFF8, 8);
  v10 = ((2 * v9 + 0x37EE9A6A86CCB96) & 0x154BA3020EC6C134) - v9 - 0x3C6546545B99C666;
  v11 = v10 ^ 0x65E86F870837ED5ALL;
  v10 ^= 0xE813C91DA984C303;
  v12 = (__ROR8__(v11, 8) + v10) ^ v5;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = __ROR8__(v12, 8);
  v15 = __ROR8__((0xFEA178C423633479 - ((v14 + v13) | 0xFEA178C423633479) + ((v14 + v13) | 0x15E873BDC9CCB86)) ^ 0xA6E451E62292106CLL, 8);
  v16 = (0xFEA178C423633479 - ((v14 + v13) | 0xFEA178C423633479) + ((v14 + v13) | 0x15E873BDC9CCB86)) ^ 0xA6E451E62292106CLL ^ __ROR8__(v13, 61);
  v17 = (v15 + v16) ^ 0x6FDC5A952B1431;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x67D37711E3C8D077;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = __ROR8__((v21 + v20 - ((2 * (v21 + v20)) & 0x104FE50E21440FD0) - 0x77D80D78EF5DF818) ^ 0xD1846EAFA7F7E4BFLL, 8);
  v23 = (v21 + v20 - ((2 * (v21 + v20)) & 0x104FE50E21440FD0) - 0x77D80D78EF5DF818) ^ 0xD1846EAFA7F7E4BFLL ^ __ROR8__(v20, 61);
  v24 = (((__ROR8__((v22 + v23) ^ 0x8B163508E451EC08, 8) + ((v22 + v23) ^ 0x8B163508E451EC08 ^ __ROR8__(v23, 61))) ^ v6) >> (8 * ((v4 + ((2 * (((a4 + 22) ^ 0x12) + a2 - 107)) & 0xBE) + ((((a4 + 22) ^ 0x12) + a2 - 107) ^ 0x5F) - 95) & 7))) ^ *(v4 + v8);
  v25 = v4 + (v8 + 1);
  v26 = __ROR8__(v25 & 0xFFFFFFFFFFFFFFF8, 8);
  v27 = (v26 + 0x31BF74D3543665CBLL) ^ 0x1D49E76351185C66;
  v28 = __ROR8__((v26 + 0x31BF74D3543665CBLL) ^ 0x90B241F9F0AB723FLL, 8);
  v29 = (0x8123D693C90BF24ELL - ((v28 + v27) ^ 0x5141AB107E507911 | 0x8123D693C90BF24ELL) + ((v28 + v27) ^ 0x5141AB107E507911 | 0x7EDC296C36F40DB1)) ^ 0xC4B8A24B1EB8404FLL;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (v31 + v30 - ((2 * (v31 + v30)) & 0xE01695B336452810) - 0xFF4B52664DD6BF8) ^ 0x57B19C04652C4FE2;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (((v34 + v33) & 0x4FAB2AA6CCB42FE3 ^ 0x41232226C0102AC3) + ((v34 + v33) ^ 0x1ECC9DC91EAD8538) - (((v34 + v33) ^ 0x1ECC9DC91EAD8538) & 0x4FAB2AA6CCB42FE3)) ^ 0x51086B354732BEEALL;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (v37 + v36 - ((2 * (v37 + v36)) & 0x55541C204C160A40) - 0x5555F1EFD9F4FAE0) ^ 0xCD797901C5C3D557;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = __ROR8__(v38, 8);
  v41 = __ROR8__((((2 * (v40 + v39)) & 0x94D8162BD7E1AB42) - (v40 + v39) + 0x3593F4EA140F2A5ELL) ^ 0x6C3068C2A35AC909, 8);
  v42 = (((2 * (v40 + v39)) & 0x94D8162BD7E1AB42) - (v40 + v39) + 0x3593F4EA140F2A5ELL) ^ 0x6C3068C2A35AC909 ^ __ROR8__(v39, 61);
  v43 = (((__ROR8__((v41 + v42) ^ 0x8B163508E451EC08, 8) + ((v41 + v42) ^ 0x8B163508E451EC08 ^ __ROR8__(v42, 61))) ^ v6) >> (8 * (v25 & 7u))) ^ *v25 | (v24 << 8);
  v44 = ((v43 ^ 0x97B) + ((2 * v43) & 0x12F6) - 35);
  return (*(STACK[0x57D8] + 8 * ((217 * (a2 + v44 + ((v44 < 0x958) << 16) - 2389 <= v7)) ^ a4)))();
}

uint64_t sub_100245230(uint64_t a1, uint64_t a2, int a3)
{
  v3 = (STACK[0x51B8] - 553820255) & 0xADCE6A99;
  v4 = STACK[0x51B8] - 20077;
  STACK[0xBD08] = STACK[0xB710] + 16;
  v5 = STACK[0x57D8];
  STACK[0x8580] = *(STACK[0x57D8] + 8 * v4);
  return (*(v5 + 8 * ((a3 + v3 + 296) ^ v4)))();
}

uint64_t sub_1002452C0(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0x7928];
  v4 = STACK[0x7ED8];
  STACK[0x9070] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v4 + 16;
  STACK[0x8048] = v3;
  STACK[0xA0B0] = 0;
  STACK[0x77C8] = 0;
  LODWORD(STACK[0x7828]) = 2101965948;
  v5 = STACK[0x57D8];
  STACK[0xC1C0] = *(STACK[0x57D8] + 8 * v2);
  return (*(v5 + 8 * (v2 ^ (1366 * (v2 ^ 0x492)) ^ 0x20DC ^ (5806 * ((v2 ^ 0xF4AE4CAE) < 0xF4CC5071)))))(4294960487, a2, 12942, 30467, 15506, 2193001348, 2147336180, 0x5FFBEFAF3FFEDFFBLL);
}

uint64_t sub_100245420(int a1, unsigned int a2, unsigned int a3)
{
  v6 = a2 < v4;
  v7 = v5 + a1;
  if (v6 == (v7 - 2133) < 0x8F8D65CE)
  {
    v6 = v7 - 2133 < a3;
  }

  return (*(STACK[0x57D8] + 8 * ((212 * !v6) ^ v3)))((v7 - 1401482512));
}

uint64_t sub_100245D90@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v1) = v3;
  *(a1 - 0x308E083E0C524CBELL) = v3;
  return (*(STACK[0x57D8] + 8 * ((v2 - 7266) | 0xAA0)))();
}

void *sub_100245F28@<X0>(int a1@<W2>, int a2@<W8>)
{
  v3 = STACK[0x57D8];
  STACK[0xC288] = *(STACK[0x57D8] + 8 * a2);
  return (*(v3 + 8 * ((((a2 ^ 0xBBC5B77D) > ((a2 + 1433551328) & 0xAA8DBBFF) - 390472712) * a1) ^ (a2 | v2))))(&STACK[0x85FC]);
}

uint64_t sub_100246074()
{
  STACK[0x8558] = 0;
  LODWORD(STACK[0xB904]) = 0;
  return (*(STACK[0x57D8] + 8 * (v0 - 5014)))();
}

uint64_t sub_10024611C()
{
  v2 = *(STACK[0x44F0] + 260) & 1;
  v3 = 1534937323 * ((~((v1 - 240) | 0x572E9C5B9262EB65) + ((v1 - 240) & 0x572E9C5B9262EB65)) ^ 0x65A9EB66AB73EFDDLL);
  STACK[0x1D4D8] = v3;
  LODWORD(STACK[0x1D4D4]) = (v0 + 2054729777) ^ v3;
  LODWORD(STACK[0x1D4CC]) = v3 + 1451493860 + v0;
  LODWORD(STACK[0x1D4D0]) = v3;
  STACK[0x1D4C0] = v2 ^ v3;
  LODWORD(STACK[0x1D4C8]) = ((v0 + 2054729777) ^ 0xDB7) - v3;
  LODWORD(STACK[0x1D4E0]) = ((v0 + 2054729777) | 0x18) + v3;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v0 + 9182)))(v1 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4E4])))(v5);
}

uint64_t sub_1002462B4@<X0>(uint64_t a1@<X8>)
{
  if (a1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  return (*(STACK[0x57D8] + 8 * ((111 * v4) ^ v1)))();
}

uint64_t sub_1002463F4@<X0>(unint64_t a1@<X8>)
{
  STACK[0x1D4C8] = a1;
  LODWORD(STACK[0x1D4C0]) = (v1 + 1717148634) ^ (1964904101 * (((v2 - 240) & 0x14FCEE08 | ~((v2 - 240) | 0x14FCEE08)) ^ 0x1121FA73));
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x2413)))(v2 - 240);
  return (*(v3 + 8 * (v1 - 10803)))(v4);
}

uint64_t sub_100246480(uint64_t a1)
{
  v3 = (v1 - 18198) | 0xC93;
  v4 = v1 - 19882;
  LODWORD(STACK[0xD518]) = v2;
  v5 = STACK[0x57D8];
  STACK[0xCFB8] = *(STACK[0x57D8] + 8 * v4);
  return (*(v5 + 8 * ((v3 - 1479) ^ v4)))(a1, 16390, -22613, 22798, 4294961082, 186);
}

uint64_t sub_1002464F4()
{
  v0 = STACK[0x7468];
  STACK[0xB478] = STACK[0x7468];
  return (*(STACK[0x57D8] + 8 * (((v0 != 0) * (STACK[0x27D0] - 360)) ^ LODWORD(STACK[0x2398]))))();
}

uint64_t sub_10024656C()
{
  v1 = *(STACK[0x55E0] + ((((STACK[0x55D0] ^ 0xC7C6B390) + 1107487915 + (LODWORD(STACK[0x52D8]) | 0x707298DF)) & STACK[0x55A0]) & 0xFFFFFFFFFFFFFFF8));
  v2 = (v1 + STACK[0x5580]) ^ 0xB88801D4E1C76353;
  v3 = v2 ^ __ROR8__(v1, 61);
  v4 = __ROR8__(v2, 8);
  v5 = (((v4 + v3) ^ 0xA5F02C62965A0090) - ((2 * ((v4 + v3) ^ 0xA5F02C62965A0090)) & 0x75A782451DEEAA52) - 0x452C3EDD7108AAD7) ^ 0x27EB5C2AFFA83DCELL;
  v6 = v5 ^ __ROR8__(v3, 61);
  v7 = (__ROR8__(v5, 8) + v6) ^ 0xE580B17D8CC5E551;
  v8 = v7 ^ __ROR8__(v6, 61);
  v9 = (__ROR8__(v7, 8) + v8) ^ 0xE1A1FD5BD155F97ALL;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = __ROR8__(v9, 8);
  v12 = (((2 * (v11 + v10)) & 0x4B29B324DB523D26) - (v11 + v10) + 0x5A6B266D9256E16CLL) ^ 0x800B6D6191F45EF5;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0xFA35E2CDCB3E31C7;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (((2 * (v16 + v15)) | 0x59D61C45354D037CLL) - (v16 + v15) - 0x2CEB0E229AA681BELL) ^ 0xFE1B02C4BA435210;
  v18 = ((__ROR8__(v17, 8) + (v17 ^ __ROR8__(v15, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x57B0];
  v19 = *(STACK[0x5328] + (LODWORD(STACK[0x5218]) & ((STACK[0x5308] & 0x534B7D28) + (STACK[0x5308] | 0x534B7D2F) + 653310955)));
  v20 = STACK[0x5298];
  v21 = __ROR8__((0x902EEFC3EC423F29 - (v20 | 0x902EEFC3EC423F29) + (v20 | 0x6FD1103C13BDC0D6)) ^ 0x5719A156F4B8A8A1, 8);
  v22 = (0x902EEFC3EC423F29 - (v20 | 0x902EEFC3EC423F29) + (v20 | 0x6FD1103C13BDC0D6)) ^ 0x5719A156F4B8A8A1 ^ STACK[0x5210];
  v23 = (((v21 + v22) & 0x6D3C210CC55CDF5DLL ^ 0x2C08000041541A10) + ((v21 + v22) & 0x92C3DEF33AA320A2 ^ 0x10C3149232810001) - 1) ^ 0xD94BA5EFFF10FF41;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (((2 * (v25 + v24)) & 0x9499D9F27D5BBED0) - (v25 + v24) - 0x4A4CECF93EADDF69) ^ 0x5412EE5D1007D9EDLL;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (0x8C04DA14E1F60B90 - ((v28 + v27) | 0x8C04DA14E1F60B90) + ((v28 + v27) | 0x73FB25EB1E09F46FLL)) ^ 0xA99B6EE71DAB4BF6;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0xFA35E2CDCB3E31C7;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0xD2F00CE620E5D3AELL;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = ((2 * (v35 + v34)) | 0x1AECA0C486681808) - (v35 + v34);
  v37 = (v19 + STACK[0x5700]) ^ 0xB88801D4E1C76353;
  v38 = v37 ^ __ROR8__(v19, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0x38C8B16AE7056877;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0xE580B17D8CC5E551;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (v43 + v42 - ((2 * (v43 + v42)) & 0xD91A66AF96F42752) + 0x6C8D3357CB7A13A9) ^ 0x8D2CCE0C1A2FEAD3;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ 0xDA604B0C03A2BF99;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ 0xFA35E2CDCB3E31C7;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ 0xD2F00CE620E5D3AELL;
  v51 = __ROR8__(v50, 8) + (v50 ^ __ROR8__(v49, 61));
  v52 = *(STACK[0x5370] + (LODWORD(STACK[0x50F0]) & ((STACK[0x5380] & 0x8D02945F) + (STACK[0x5380] | 0x8D02945B) - 314989377)));
  v53 = (v52 + STACK[0x5360]) ^ 0xB88801D4E1C76353;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ 0x38C8B16AE7056877;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = __ROR8__(v55, 8);
  v58 = (((2 * (v57 + v56)) & 0xA48B4DF7E9DA7660) - (v57 + v56) + 0x2DBA59040B12C4CFLL) ^ 0xC83AE87987D7219ELL;
  v59 = v58 ^ __ROR8__(v56, 61);
  v60 = __ROR8__(v58, 8);
  v61 = (((2 * ((v60 + v59) ^ 0x5C7B11EC62C96A99)) | 0xBD48DE303B607724) - ((v60 + v59) ^ 0x5C7B11EC62C96A99) + 0x215B90E7E24FC46ELL) ^ 0x637E83AFAE2CA871;
  v62 = v61 ^ __ROR8__(v59, 61);
  v63 = __ROR8__(v61, 8);
  v64 = (0x7FF12D7EC9113B9DLL - ((v63 + v62) | 0x7FF12D7EC9113B9DLL) + ((v63 + v62) | 0x800ED28136EEC462)) ^ 0x5A6E998D354C7BFBLL;
  v65 = v64 ^ __ROR8__(v62, 61);
  v66 = __ROR8__(v64, 8);
  v67 = (((2 * (v66 + v65)) & 0xB835EAD9FE58486ELL) - (v66 + v65) - 0x5C1AF56CFF2C2438) ^ 0x59D0E85ECBEDEA0FLL;
  v68 = v67 ^ __ROR8__(v65, 61);
  v69 = __ROR8__(v67, 8);
  v70 = (0x60BE60690773FB65 - ((v69 + v68) ^ 0x43E5E266C6B1FDC3 | 0x60BE60690773FB65) + ((v69 + v68) ^ 0x43E5E266C6B1FDC3 | 0x9F419F96F88C049ALL)) ^ 0xE5471161ED82AF7;
  v71 = v70 ^ __ROR8__(v68, 61);
  v72 = __ROR8__(v70, 8);
  v73 = ((v36 + 0x7289AF9DBCCBF3FCLL) ^ 0x79055B53ED44797FuLL) >> STACK[0x5480];
  v74 = ((((2 * (v72 + v71)) | 0x9B528BF8ECA1F302) - (v72 + v71) - 0x4DA945FC7650F981) ^ 0xB9DA4ECDD8208CFALL) >> STACK[0x5390];
  v75 = *(STACK[0x5370] + (((STACK[0x5220] ^ 0x59B0CA97) + 546008707 + (STACK[0x5208] & 0xB3619520)) & STACK[0x52B0] & 0xFFFFFFF8));
  LODWORD(v18) = ((v18 ^ LODWORD(STACK[0x57C0]) ^ 0x1F) + 2) ^ ((v18 ^ LODWORD(STACK[0x57C0]) ^ 0x41) + 96) ^ ((v18 ^ LODWORD(STACK[0x57C0]) ^ 0x5E) + 65);
  LODWORD(v15) = ((v73 ^ LODWORD(STACK[0x54A0]) ^ 0x7B) + 54) ^ ((v73 ^ LODWORD(STACK[0x54A0]) ^ 0xFFFFFFE9) - 88) ^ ((v73 ^ LODWORD(STACK[0x54A0]) ^ 0xFFFFFF92) - 35);
  LODWORD(STACK[0x4FF0]) = LODWORD(STACK[0x56F0]) ^ (((((2 * v51) | 0xEEC18AFBB114E9B2) - v51 - 0x7760C57DD88A74D9) ^ 0x8313CE4C76FA01A2) >> STACK[0x54B0]);
  v76 = (((2 * (v75 + STACK[0x5338])) | 0xAD90E5A7D445DCLL) - (v75 + STACK[0x5338]) + 0x7FA9378D2C15DD12) ^ 0x38DEC9A6322D41BDLL;
  v77 = v76 ^ __ROR8__(v75, 61);
  v78 = __ROR8__(v76, 8);
  LODWORD(STACK[0x54C0]) = LODWORD(STACK[0x5398]) ^ v74;
  v79 = (((2 * (v78 + v77)) | 0x4A2A7268981908C2) - (v78 + v77) - 0x251539344C0C8461) ^ 0x1DDD885EAB09EC16;
  v80 = v79 ^ __ROR8__(v77, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ 0xE580B17D8CC5E551;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = __ROR8__(v81, 8);
  v84 = (((2 * (v83 + v82)) & 0x75A0D395E8939F32) - (v83 + v82) + 0x452F96350BB63066) ^ 0xA48E6B6EDAE3C91CLL;
  v85 = v84 ^ __ROR8__(v82, 61);
  v86 = (__ROR8__(v84, 8) + v85) ^ 0xDA604B0C03A2BF99;
  v87 = v86 ^ __ROR8__(v85, 61);
  v88 = (__ROR8__(v86, 8) + v87) ^ 0xFA35E2CDCB3E31C7;
  v89 = v88 ^ __ROR8__(v87, 61);
  v90 = (__ROR8__(v88, 8) + v89) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(STACK[0x4F78]) = LODWORD(STACK[0x52F0]) ^ (((__ROR8__(v90, 8) + (v90 ^ __ROR8__(v89, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x52D0]);
  v91 = *(STACK[0x5110] + (LODWORD(STACK[0x5098]) & ((STACK[0x5130] ^ 0x5D58ED31) + 484658153 + (STACK[0x5128] & 0xBAB1DA60))));
  v92 = (((2 * (v91 + STACK[0x5160])) & 0x45BEE335AB2E8A88) - (v91 + STACK[0x5160]) - 0x22DF719AD5974545) ^ 0x65A88FB1CBAFD9E8;
  v93 = v92 ^ __ROR8__(v91, 61);
  v94 = (__ROR8__(v92, 8) + v93) ^ 0x38C8B16AE7056877;
  v95 = v94 ^ __ROR8__(v93, 61);
  v96 = __ROR8__(v94, 8);
  v97 = (((2 * (v96 + v95)) | 0x77093C6772F97FB8) - (v96 + v95) - 0x3B849E33B97CBFDCLL) ^ 0xDE042F4E35B95A8DLL;
  v98 = v97 ^ __ROR8__(v95, 61);
  v99 = __ROR8__(v97, 8);
  v100 = (((v99 + v98) | 0x659E51EE9D8FBFC4) - ((v99 + v98) | 0x9A61AE116270403BLL) - 0x659E51EE9D8FBFC5) ^ 0x843FACB54CDA46BELL;
  v101 = v100 ^ __ROR8__(v98, 61);
  v102 = __ROR8__(v100, 8);
  v103 = __ROR8__((((2 * (v102 + v101)) & 0x55603BC46067A5DELL) - (v102 + v101) - 0x2AB01DE23033D2F0) ^ 0xF2FA911CC6E9289, 8);
  v104 = (((2 * (v102 + v101)) & 0x55603BC46067A5DELL) - (v102 + v101) - 0x2AB01DE23033D2F0) ^ 0xF2FA911CC6E9289 ^ __ROR8__(v101, 61);
  v105 = (((2 * (v103 + v104)) | 0x886BD55E6AA6A356) - (v103 + v104) - 0x4435EAAF355351ABLL) ^ 0xBE000862FE6D606CLL;
  v106 = v105 ^ __ROR8__(v104, 61);
  v107 = (__ROR8__(v105, 8) + v106) ^ 0xD2F00CE620E5D3AELL;
  v108 = v107 ^ __ROR8__(v106, 61);
  v109 = __ROR8__(v107, 8);
  v110 = ((((2 * (v109 + v108)) & 0xCC71368E5C92B186) - (v109 + v108) + 0x19C764B8D1B6A73CLL) ^ 0xEDB46F897FC6D247) >> STACK[0x5148];
  LODWORD(v110) = ((v110 ^ LODWORD(STACK[0x5150]) ^ 0x6E) - 1) ^ ((v110 ^ LODWORD(STACK[0x5150]) ^ 0xFFFFFFD4) + 69) ^ ((v110 ^ LODWORD(STACK[0x5150]) ^ 0xFFFFFFBA) + 43);
  LODWORD(STACK[0x5230]) = v18 - 26;
  LODWORD(STACK[0x4F70]) = v15 - 60;
  LODWORD(STACK[0x5378]) = v110 - 104;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100247730()
{
  v1 = STACK[0x57D8];
  STACK[0xB568] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 - 10711 + (v0 ^ 0x3CA5))))();
}

uint64_t sub_100247848(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0x9E50];
  v4 = STACK[0x57D8];
  STACK[0xD2B8] = *(STACK[0x57D8] + 8 * v2);
  return (*(v4 + 8 * (v2 ^ 0x1312)))(v3, a2, 1238384546, 998, 43);
}

uint64_t sub_10024792C@<X0>(__int16 a1@<W8>)
{
  v1 = (STACK[0x51B8] + 714122087) & 0xD56F4EFB;
  v2 = STACK[0x51B8] - 22456;
  LOWORD(STACK[0xD98C]) = a1;
  return (*(STACK[0x57D8] + 8 * ((v1 - 14200) | v2)))();
}

uint64_t sub_1002479D0@<X0>(char a1@<W8>)
{
  LODWORD(STACK[0x8A84]) = v2;
  LOBYTE(STACK[0xB80F]) = a1;
  return (*(STACK[0x57D8] + 8 * (((v2 != -143113071) * ((v1 ^ 0x593A) - 39568 + ((v1 - 1388321778) & 0x52C058F6))) ^ v1)))();
}

uint64_t sub_100247ADC()
{
  v2 = STACK[0x8610];
  v3 = 1534937323 * ((0xE84D690E21EC37B8 - ((v1 - 240) | 0xE84D690E21EC37B8) + ((v1 - 240) | 0x17B296F1DE13C847)) ^ 0xDACA1E3318FD3300);
  LODWORD(STACK[0x1D4CC]) = v3 + v0 + 1451493860;
  LODWORD(STACK[0x1D4E0]) = ((v0 + 1874942317) ^ 0x3F0) + v3;
  STACK[0x1D4C0] = v3;
  STACK[0x1D4D8] = v2 + v3;
  LODWORD(STACK[0x1D4C8]) = ((v0 + 1874942317) ^ 0xE02) - v3;
  LODWORD(STACK[0x1D4D4]) = (v0 + 1874942317) ^ v3;
  LODWORD(STACK[0x1D4D0]) = v3;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x2462)))(v1 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4E4])))(v5);
}

uint64_t sub_100247BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v22 = v10 + a2;
  v23 = v10 - 1;
  v24 = (a1 + v23);
  v25 = __ROR8__((a1 + v23) & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = (0x31F49ABE1B6CA29CLL - v25) & a8 | (v25 + 0x4E0B6541E4935D63) & v8;
  v27 = v26 ^ v12;
  v28 = v26 ^ a4;
  v29 = __ROR8__(v27, 8);
  v30 = (v19 & (2 * (v29 + v28))) - (v29 + v28);
  v31 = __ROR8__((v22 + 9) & 0xFFFFFFFFFFFFFFF8, 8);
  v32 = ((v11 + 2 * v31) & v20) - v31 + v16;
  v33 = v32 ^ a7;
  v32 ^= 0x4BE530B0083FD1A4uLL;
  v34 = (v30 + a6) ^ v21;
  v35 = (__ROR8__(v33, 8) + v32) ^ 0x1F7B92942DEF21EFLL;
  v36 = v35 ^ __ROR8__(v32, 61);
  v37 = __ROR8__(v35, 8);
  v38 = v34 ^ __ROR8__(v28, 61);
  v39 = (__ROR8__(v34, 8) + v38) ^ 0x1C02DF5B258263EDLL;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ v14;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ 0x224C09CA440C0C0BLL;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0xA199F9AE5F876A45;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ v17;
  v48 = (v13 - ((v37 + v36) | v13) + ((v37 + v36) | 0xBB7179E685225BB8)) ^ 0xA773A6BDA0A03855;
  v49 = v48 ^ __ROR8__(v36, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ v14;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = __ROR8__(v50, 8);
  v53 = __ROR8__(v47, 8) + (v47 ^ __ROR8__(v46, 61));
  v54 = (v52 + v51 - ((2 * (v52 + v51)) & 0x7AECF1A2A95408F8) + 0x3D7678D154AA047CLL) ^ 0x1F3A711B10A60877;
  v55 = v54 ^ __ROR8__(v51, 61);
  v56 = __ROR8__(v54, 8);
  v57 = ((a3 | (2 * (v56 + v55))) - (v56 + v55) - 0x7F81AF56F489D5E1) ^ 0xDE1856F8AB0EBFA4 ^ __ROR8__(v55, 61);
  v58 = STACK[0x5730];
  v59 = (__ROR8__(((a3 | (2 * (v56 + v55))) - (v56 + v55) - 0x7F81AF56F489D5E1) ^ 0xDE1856F8AB0EBFA4, 8) + v57) ^ v17;
  v60 = v59 ^ __ROR8__(v57, 61);
  v61 = __ROR8__(v59, 8);
  v62 = STACK[0x5740];
  *(v22 + 9) = (((v18 - ((v61 + v60) | v18) + ((v61 + v60) | 0x206F5B884E33BDEELL)) ^ 0x493E2725494BAC6DLL) >> (8 * ((v22 + 9) & 7))) ^ ((v53 ^ v15) >> (8 * (v24 & 7u))) ^ *v24;
  return (*(STACK[0x57D8] + 8 * (((v23 == 0) * a5) ^ v9)))(v62, v58);
}

uint64_t sub_100247F0C(unsigned __int8 a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8)
{
  v12 = 1 << a1;
  v13 = v9 + a1 * a4 - ((((v9 + a1 * a4) * a7) >> 32) >> 6) * a3;
  v14 = a1 + 1;
  v15 = *(*(a6 + 1368) + v13);
  v16 = *(a6 + 1360);
  v17 = *(v16 + 4 * a8);
  v18 = v15 & ((v8 - 8415) ^ v10) | 0xFFFFFFC2;
  v19 = v15 ^ ((v17 ^ 0xFFFFFFE6) - 2 * ((v17 ^ 0xFFFFFFE6) & 0x35 ^ v17 & 1) - 76) ^ (2 * ((v15 ^ v10) & (2 * ((v15 ^ v10) & (2 * ((v15 ^ v10) & (2 * ((v15 ^ v10) & (2 * ((v15 ^ v10) & (2 * v18) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ 0x8C;
  if ((v12 & v11) == 0)
  {
    v19 = v17 ^ 0xFFFFFFE6;
  }

  *(v16 + 4 * a8) = v19 + 1111003110 - ((2 * v19) & 0x1CC);
  return (*(STACK[0x57D8] + 8 * ((26 * ((v14 & 0xF8) == 0)) ^ v8)))();
}

uint64_t sub_10024814C()
{
  STACK[0x98E0] = 0;
  v1 = STACK[0x57D8];
  STACK[0xBDE0] = *(STACK[0x57D8] + 8 * (v0 - 20786));
  return (*(v1 + 8 * (((v0 ^ 0x1A6B) - 11490) ^ (v0 - 20786))))(0x308E083E0C524CBELL);
}

uint64_t sub_1002481C0()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9675)))(32);
  STACK[0x83F8] = v2;
  return (*(v1 + 8 * (((v2 == 0) * ((((v0 ^ 0x54FE) + 11064) ^ 0xFFFFC91B) + 11 * (v0 ^ 0x54FE))) ^ v0)))();
}

uint64_t sub_1002482A8@<X0>(int a1@<W8>)
{
  v6 = *(v5 + (4843 * a1 + 8698028) % 0x16B8u);
  v7 = 6157 * (((v6 ^ 0x69E75391) - 1776767889) ^ ((v6 ^ 0x5099406F) + ((v1 - 3488) ^ 0xAF668638)) ^ ((v6 ^ 0x397E1339) - 964563769)) + 56582830;
  v8 = *(v4 + 4 * (v7 - (((v7 * v3) >> 32) >> 12) * v2));
  v9 = *(v5 + 4843 * (BYTE2(v8) ^ 0x4F) + 6213569 - 5816 * (((11815591 * (4843 * (BYTE2(v8) ^ 0x4Fu) + 6213569)) >> 32) >> 4));
  v10 = *(v5 + (4843 * (((HIBYTE(v8) ^ 0x17993947) - 1325942658) ^ ((HIBYTE(v8) ^ 0x9AA17AED) + 1037040600) ^ ((HIBYTE(v8) ^ 0x8D3843C2) + 710329081)) - 1999224176) % 0x16B8) << 8;
  v11 = *(v5 + (4843 * (((v8 ^ 0xEB5A7252) - 1261423745) ^ ((v8 ^ 0x839586BB) - 601897064) ^ ((v8 ^ 0x68CFF463) + 927315280)) - 1814639244) % 0x16B8);
  v12 = ((*(v5 + 4843 * (BYTE1(v8) ^ 0xB6) + 6213569 - 5816 * (((11815591 * (4843 * (BYTE1(v8) ^ 0xB6u) + 6213569)) >> 32) >> 4)) ^ 0xC7) << 8) | (((((v9 & 0x94 ^ 0xC2B4E671) & (v10 & 0xFFFFF9FF ^ 0x27F5) | v10 & 0x1900) ^ 0xC2B4E7F5) + (((v9 & 0x6B ^ 0xAE7DD370) & (v10 & 0x600 ^ 0xFFFFFDFF) | v10 & 0x400) ^ 0xAE7DD733)) << 16);
  *(v4 + 4 * (6157 * a1 + 9469466 - ((((6157 * a1 + 9469466) * v3) >> 32) >> 12) * v2)) = (v11 & 8 | ((v12 - ((2 * v12) & 0x9FCB3A00) - 807035554) ^ 0xAABA22A9) & (v11 ^ 0xFFFFFF38)) ^ 0xD10097D;
  return (*(STACK[0x57D8] + 8 * ((53 * (a1 != 255)) ^ v1)))(914018266);
}

uint64_t sub_1002485A8(int a1, uint64_t a2)
{
  v7 = STACK[0x56F0];
  v8 = STACK[0x51E8];
  v9 = STACK[0x51F0];
  v10 = *(*STACK[0x51F0] + (*STACK[0x51E8] & ((a1 ^ 0x6C8) - 9227) & (((v7 + a2) & 0xA4368780 | 0x5BC97879) + 2050767130 + ((v7 + a2) & 0x5BC97878 | 0xA4368787))));
  v11 = (v10 + __ROR8__((STACK[0x56F0] + a2) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xB88801D4E1C76353;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0x38C8B16AE7056877;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (((2 * (v15 + v14)) | 0x8301FA1D01B2E80ALL) - (v15 + v14) + 0x3E7F02F17F268BFBLL) ^ 0x24004C730C1C9154;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (((2 * (v18 + v17)) & 0xE543270D552CB438) - (v18 + v17) - 0x72A19386AA965A1DLL) ^ 0x6CFF9122843C5C99;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0xDA604B0C03A2BF99;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0xFA35E2CDCB3E31C7;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (((2 * (v25 + v24)) | 0xD8D7E8BF2E1FA342) - (v25 + v24) + 0x13940BA068F02E5FLL) ^ 0x3E9BF8B9B7EA020FLL;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = __ROR8__(v26, 8);
  *(STACK[0x56F0] + a2) = (((0xFDB4FB98BFA00C32 - ((v28 + v27) | 0xFDB4FB98BFA00C32) + ((v28 + v27) | 0x24B0467405FF3CDLL)) ^ 0xF6380F56EE2F86B6) >> (8 * ((LOBYTE(STACK[0x56F0]) + a2) & 7))) ^ v2;
  v29 = v7 + v6;
  v30 = *(*v9 + (((((v29 + 2) & 0xFFFFFFF8) + 2050767130) & *v8) & 0xFFFFFFFFFFFFFFF8));
  v31 = (v30 + __ROR8__((v29 + 2) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xB88801D4E1C76353;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (((2 * (v33 + v32)) | 0xAD3ABF5A4977225CLL) - (v33 + v32) + 0x2962A052DB446ED2) ^ 0xEE55EEC7C3BEF959;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0xE580B17D8CC5E551;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0xE1A1FD5BD155F97ALL;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (v40 + v39 - ((2 * (v40 + v39)) & 0x3DEDEE91827283EELL) - 0x610908B73EC6BE09) ^ 0x4496BC44C29BFE6ELL;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ 0xFA35E2CDCB3E31C7;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0xD2F00CE620E5D3AELL;
  *(v29 + 2) = (((__ROR8__(v45, 8) + (v45 ^ __ROR8__(v44, 61))) ^ 0xF4730B31AE70757BLL) >> (8 * ((v29 + 2) & 7))) ^ BYTE1(v5);
  v46 = v7 + STACK[0x5630];
  v47 = *(*v9 + (*v8 & ((v46 & 0xB85D4028) + (v46 & 0x47A2BFD0 | 0xB85D402C) - 1042351892)));
  v48 = __ROR8__(v46 & 0xFFFFFFFFFFFFFFF8, 8);
  v49 = (0x1C2C2B42E557E51DLL - ((v47 + v48) | 0x1C2C2B42E557E51DLL) + ((v47 + v48) | 0xE3D3D4BD1AA81AE2)) ^ 0x5B5BD569FB6F79B1;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0x38C8B16AE7056877;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (((2 * (v53 + v52)) | 0x4AE8D37624239A28) - (v53 + v52) - 0x257469BB1211CD14) ^ 0xC0F4D8C69ED42845;
  v55 = v54 ^ __ROR8__(v52, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ 0xE1A1FD5BD155F97ALL;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = __ROR8__(v56, 8);
  v59 = (0xAEFAE4FCE1A7C45CLL - ((v58 + v57) ^ 0xA7A65A2C58ADAE39 | 0xAEFAE4FCE1A7C45CLL) + ((v58 + v57) ^ 0xA7A65A2C58ADAE39 | 0x51051B031E583BA3)) ^ 0x2CC30A2345572A03;
  v60 = v59 ^ __ROR8__(v57, 61);
  v61 = __ROR8__(v59, 8);
  v62 = (0xF12C6587AAEEA9ALL - ((v61 + v60) | 0xF12C6587AAEEA9ALL) + ((v61 + v60) | 0xF0ED39A785511565)) ^ 0xAD8DB6A4E6F24A2;
  v63 = v62 ^ __ROR8__(v60, 61);
  v64 = (__ROR8__(v62, 8) + v63) ^ 0xD2F00CE620E5D3AELL;
  *v46 = (((__ROR8__(v64, 8) + (v64 ^ __ROR8__(v63, 61))) ^ 0xF4730B31AE70757BLL) >> (8 * (v46 & 7u))) ^ v3;
  v65 = v7 + STACK[0x5540];
  v66 = *(*v9 + (((211774598 - 1778675377 * (((-1469461666 * (v65 & 0xFFFFFFF8)) & 0x9E807A50) + ((1412752815 * (v65 & 0xFFFFFFF8)) ^ 0x4F403D2C))) & *v8) & 0xFFFFFFFFFFFFFFF8));
  v67 = (v66 + __ROR8__(v65 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xB88801D4E1C76353;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = __ROR8__(v67, 8);
  v70 = (((2 * (v69 + v68)) | 0xF6FCC4DC8B3A51F4) - (v69 + v68) - 0x7B7E626E459D28FALL) ^ 0x43B6D304A298408DLL;
  v71 = v70 ^ __ROR8__(v68, 61);
  v72 = __ROR8__(v70, 8);
  v73 = (v72 + v71 - ((2 * (v72 + v71)) & 0x877E3CF3DDCE7062) + 0x43BF1E79EEE73831) ^ 0xA63FAF046222DD60;
  v74 = v73 ^ __ROR8__(v71, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ 0xE1A1FD5BD155F97ALL;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = __ROR8__(v75, 8);
  v78 = (((2 * (v77 + v76)) | 0x1C9BB2BA2C9CBCA8) - (v77 + v76) + 0x71B226A2E9B1A1ACLL) ^ 0x542D925115ECE1CDLL;
  v79 = v78 ^ __ROR8__(v76, 61);
  v80 = (__ROR8__(v78, 8) + v79) ^ 0xFA35E2CDCB3E31C7;
  v81 = v80 ^ __ROR8__(v79, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ 0xD2F00CE620E5D3AELL;
  *v65 = (((__ROR8__(v82, 8) + (v82 ^ __ROR8__(v81, 61))) ^ 0xF4730B31AE70757BLL) >> (8 * (v65 & 7u))) ^ BYTE1(v4);
  v83 = *(*v9 + (*v8 & (((((2 * ((v29 + 4) & 0xFFFFFFF8)) & 0xD4F3FD0) + ((v29 + 4) & 0xFFFFFFF8 ^ 0x86A79FEA)) & 0xFFFFFFF8) - 208365264)));
  v84 = __ROR8__((v29 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v85 = __ROR8__((v83 + v84 - ((2 * (v83 + v84)) & 0x6630D4A9464BB2F6) + 0x33186A54A325D97BLL) ^ 0x8B906B8042E2BA28, 8);
  v86 = (v83 + v84 - ((2 * (v83 + v84)) & 0x6630D4A9464BB2F6) + 0x33186A54A325D97BLL) ^ 0x8B906B8042E2BA28 ^ __ROR8__(v83, 61);
  v87 = (0x9B8E080C6A83B8BELL - ((v85 + v86) ^ 0xFB36AB6426FEFD3BLL | 0x9B8E080C6A83B8BELL) + ((v85 + v86) ^ 0xFB36AB6426FEFD3BLL | 0x6471F7F3957C4741)) ^ 0xA78FEDFD5487D20DLL;
  v88 = v87 ^ __ROR8__(v86, 61);
  v89 = __ROR8__(v87, 8);
  v90 = __ROR8__((v89 + v88 - ((2 * (v89 + v88)) & 0x61A8CB46C98B221ELL) - 0x4F2B9A5C9B3A6EF1) ^ 0x5554D4DEE800745ELL, 8);
  v91 = (v89 + v88 - ((2 * (v89 + v88)) & 0x61A8CB46C98B221ELL) - 0x4F2B9A5C9B3A6EF1) ^ 0x5554D4DEE800745ELL ^ __ROR8__(v88, 61);
  v92 = (v90 + v91 - ((2 * (v90 + v91)) & 0x103BBA7EE5BCF0E4) - 0x77E222C08D21878ELL) ^ 0x69BC2064A38B8108;
  v93 = v92 ^ __ROR8__(v91, 61);
  v94 = (__ROR8__(v92, 8) + v93) ^ 0xDA604B0C03A2BF99;
  v95 = v94 ^ __ROR8__(v93, 61);
  v96 = __ROR8__(v94, 8);
  v97 = (v96 + v95 - ((2 * (v96 + v95)) & 0x39B1837F616423D4) + 0x1CD8C1BFB0B211EALL) ^ 0xE6ED23727B8C202DLL;
  v98 = v97 ^ __ROR8__(v95, 61);
  v99 = __ROR8__(v97, 8);
  v100 = (0xD88FE56203A6DD09 - ((v99 + v98) | 0xD88FE56203A6DD09) + ((v99 + v98) | 0x27701A9DFC5922F6)) ^ 0xF580167BDCBCF158;
  v101 = __ROR8__(v100, 8);
  v102 = __ROR8__(v98, 61);
  *(v29 + 4) = (((((2 * (v101 + (v100 ^ v102))) | 0x395AF44765C0FD56) - (v101 + (v100 ^ v102)) + 0x635285DC4D1F8155) ^ 0x68DE71121C900BD0) >> (8 * ((v29 + 4) & 7))) ^ HIBYTE(v4);
  v103 = v7 + STACK[0x5550];
  v104 = *(*v9 + ((((v103 & 0x43D3B380 | 0xBC2C4C7F) + 2050767130 + (v103 & 0xBC2C4C78 | 0x43D3B380) + 1) & *v8) & 0xFFFFFFFFFFFFFFF8));
  v105 = __ROR8__(v103 & 0xFFFFFFFFFFFFFFF8, 8);
  v106 = (((2 * (v104 + v105)) & 0x2F0F6F5D4DCA4ALL) - (v104 + v105) + 0x7FE8784851591ADALL) ^ 0xC760799CB09E7989;
  v107 = v106 ^ __ROR8__(v104, 61);
  v108 = (__ROR8__(v106, 8) + v107) ^ 0x38C8B16AE7056877;
  v109 = v108 ^ __ROR8__(v107, 61);
  v110 = __ROR8__(v108, 8);
  v111 = (((2 * (v110 + v109)) | 0x8CCD32F39197C20ALL) - (v110 + v109) + 0x3999668637341EFBLL) ^ 0x23E62804440E0454;
  v112 = v111 ^ __ROR8__(v109, 61);
  v113 = (__ROR8__(v111, 8) + v112) ^ 0xE1A1FD5BD155F97ALL;
  v114 = v113 ^ __ROR8__(v112, 61);
  v115 = (__ROR8__(v113, 8) + v114) ^ 0xDA604B0C03A2BF99;
  v116 = v115 ^ __ROR8__(v114, 61);
  v117 = (__ROR8__(v115, 8) + v116) ^ 0xFA35E2CDCB3E31C7;
  v118 = v117 ^ __ROR8__(v116, 61);
  v119 = __ROR8__(v117, 8);
  v120 = (((2 * (v119 + v118)) & 0xE676DE37A0BD5B70) - (v119 + v118) + 0xCC490E42FA15247) ^ 0xDE349C020F4481E9;
  v121 = v120 ^ __ROR8__(v118, 61);
  v122 = __ROR8__(v120, 8);
  *v103 = (((v122 + v121 - ((2 * (v122 + v121)) & 0x9E90EAFBDF7AFA14) - 0x30B78A82104282F6) ^ 0x3B3B7E4C41CD0871) >> (8 * (v103 & 7u))) ^ BYTE1(v2);
  v123 = *(*v9 + (((((v29 + 13) & 0xFFFFFFF8) + 2050767130) & *v8) & 0xFFFFFFFFFFFFFFF8));
  v124 = __ROR8__((v29 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v125 = (((2 * (v123 + v124)) & 0xD52B474F9E8BA8B4) - (v123 + v124) + 0x156A5C5830BA2BA5) ^ 0xADE25D8CD17D48F6;
  v126 = v125 ^ __ROR8__(v123, 61);
  v127 = __ROR8__(v125, 8);
  v128 = __ROR8__((((2 * (v127 + v126)) | 0x5FD6C1AF10CE6426) - (v127 + v126) + 0x50149F287798CDEDLL) ^ 0x9723D1BD6F625A64, 8);
  v129 = (((2 * (v127 + v126)) | 0x5FD6C1AF10CE6426) - (v127 + v126) + 0x50149F287798CDEDLL) ^ 0x9723D1BD6F625A64 ^ __ROR8__(v126, 61);
  v130 = (((2 * (v128 + v129)) | 0x48C1D9EB023B8BAELL) - (v128 + v129) - 0x2460ECF5811DC5D7) ^ 0xC1E05D880DD82086;
  v131 = v130 ^ __ROR8__(v129, 61);
  v132 = __ROR8__(v130, 8);
  v133 = (0x9C67B9F6F86D197DLL - ((v132 + v131) | 0x9C67B9F6F86D197DLL) + ((v132 + v131) | 0x639846090792E682)) ^ 0x8239BB52D6C71FF8;
  v134 = v133 ^ __ROR8__(v131, 61);
  v135 = __ROR8__(v133, 8);
  v136 = (0xB7AB693214D62835 - ((v135 + v134) | 0xB7AB693214D62835) + ((v135 + v134) | 0x485496CDEB29D7CALL)) ^ 0x9234DDC1E88B6853;
  v137 = v136 ^ __ROR8__(v134, 61);
  v138 = (__ROR8__(v136, 8) + v137) ^ 0xFA35E2CDCB3E31C7;
  v139 = v138 ^ __ROR8__(v137, 61);
  v140 = __ROR8__(v138, 8);
  v141 = (v140 + v139 - ((2 * (v140 + v139)) & 0xD005531728AF70F4) - 0x17FD56746BA84786) ^ 0x3AF2A56DB4B26BD4;
  *(v29 + 13) = (((__ROR8__(v141, 8) + (v141 ^ __ROR8__(v139, 61))) ^ 0xF4730B31AE70757BLL) >> (8 * ((v29 + 13) & 7))) ^ BYTE2(v3);
  v142 = *(*v9 + ((((v29 & 0xFFFFFFF8 ^ 0x6B376C0F) + 251972875 + ((2 * (v29 & 0xFFFFFFF8)) & 0xD66ED810)) & *v8) & 0xFFFFFFFFFFFFFFF8));
  v143 = __ROR8__(v29 & 0xFFFFFFFFFFFFFFF8, 8);
  v144 = (0xAAD1151B1EAD7D86 - ((v142 + v143) | 0xAAD1151B1EAD7D86) + ((v142 + v143) | 0x552EEAE4E1528279)) ^ 0xEDA6EB300095E12ALL;
  v145 = v144 ^ __ROR8__(v142, 61);
  v146 = __ROR8__(v144, 8);
  v147 = (v146 + v145 - ((2 * (v146 + v145)) & 0x94A40502EB5F8F70) + 0x4A52028175AFC7B8) ^ 0x729AB3EB92AAAFCFLL;
  v148 = v147 ^ __ROR8__(v145, 61);
  v149 = (__ROR8__(v147, 8) + v148) ^ 0xE580B17D8CC5E551;
  v150 = v149 ^ __ROR8__(v148, 61);
  v151 = __ROR8__(v149, 8);
  v152 = (v151 + v150 - ((2 * (v151 + v150)) & 0xC254B1C4C1C4A20ELL) - 0x1ED5A71D9F1DAEF9) ^ 0x8BA5B9B1B7A87DLL;
  v153 = v152 ^ __ROR8__(v150, 61);
  v154 = __ROR8__(v152, 8);
  v155 = (((2 * (v154 + v153)) | 0x1E809FA60B4D0378) - (v154 + v153) + 0x70BFB02CFA597E44) ^ 0x552004DF06043E25;
  v156 = v155 ^ __ROR8__(v153, 61);
  v157 = (__ROR8__(v155, 8) + v156) ^ 0xFA35E2CDCB3E31C7;
  v158 = __ROR8__(v157, 8);
  v159 = v157 ^ __ROR8__(v156, 61);
  *v29 = (((__ROR8__((v158 + v159) ^ 0xD2F00CE620E5D3AELL, 8) + ((v158 + v159) ^ 0xD2F00CE620E5D3AELL ^ __ROR8__(v159, 61))) ^ 0xF4730B31AE70757BLL) >> (8 * (v29 & 7u))) ^ HIBYTE(v5);
  v160 = *(*v9 + (((((v29 + 8) & 0xFFFFFFF8) + 2050767130) & *v8) & 0xFFFFFFFFFFFFFFF8));
  v161 = __ROR8__((v29 + 8) & 0xFFFFFFFFFFFFFFF8, 8);
  v162 = (((2 * (v160 + v161)) & 0xB11ABD28CFC119A4) - (v160 + v161) + 0x2772A16B981F732DLL) ^ 0x9FFAA0BF79D8107ELL;
  v163 = v162 ^ __ROR8__(v160, 61);
  v164 = __ROR8__(v162, 8);
  v165 = (((2 * (v164 + v163)) & 0xD1C388320F4B2CDCLL) - (v164 + v163) - 0x68E1C41907A5966FLL) ^ 0xAFD68A8C1F5F01E6;
  v166 = v165 ^ __ROR8__(v163, 61);
  v167 = (__ROR8__(v165, 8) + v166) ^ 0xE580B17D8CC5E551;
  v168 = v167 ^ __ROR8__(v166, 61);
  v169 = __ROR8__(v167, 8);
  v170 = (0xFD508AB5D34DDF8DLL - ((v169 + v168) | 0xFD508AB5D34DDF8DLL) + ((v169 + v168) | 0x2AF754A2CB22072)) ^ 0xE30E8811FDE7D908;
  v171 = v170 ^ __ROR8__(v168, 61);
  v172 = __ROR8__(v170, 8);
  v173 = (((2 * (v172 + v171)) | 0xF291580B24C63222) - (v172 + v171) + 0x6B753FA6D9CE6EFLL) ^ 0x2328E70991C1A688;
  v174 = v173 ^ __ROR8__(v171, 61);
  v175 = (__ROR8__(v173, 8) + v174) ^ 0xFA35E2CDCB3E31C7;
  v176 = __ROR8__(v175, 8);
  v177 = v175 ^ __ROR8__(v174, 61);
  *(v29 + 8) = (((__ROR8__((v176 + v177) ^ 0xD2F00CE620E5D3AELL, 8) + ((v176 + v177) ^ 0xD2F00CE620E5D3AELL ^ __ROR8__(v177, 61))) ^ 0xF4730B31AE70757BLL) >> (8 * ((v29 + 8) & 7))) ^ HIBYTE(v2);
  v178 = v7 + STACK[0x5560];
  v179 = *(*v9 + ((((v178 & 0xFFFFFFF8) + 2050767130) & *v8) & 0xFFFFFFFFFFFFFFF8));
  v180 = (v179 + __ROR8__(v178 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xB88801D4E1C76353;
  v181 = v180 ^ __ROR8__(v179, 61);
  v182 = (__ROR8__(v180, 8) + v181) ^ 0x38C8B16AE7056877;
  v183 = v182 ^ __ROR8__(v181, 61);
  v184 = __ROR8__(v182, 8);
  v185 = (0xD773AF80B14524B6 - ((v184 + v183) | 0xD773AF80B14524B6) + ((v184 + v183) | 0x288C507F4EBADB49)) ^ 0xCD0CE102C27F3E18;
  v186 = v185 ^ __ROR8__(v183, 61);
  v187 = __ROR8__(v185, 8);
  v188 = (v187 + v186 - ((2 * (v187 + v186)) & 0xE34F6D6B3CAD8D60) + 0x71A7B6B59E56C6B0) ^ 0x90064BEE4F033FCALL;
  v189 = v188 ^ __ROR8__(v186, 61);
  v190 = __ROR8__(v188, 8);
  v191 = (((2 * (v190 + v189)) & 0xFFCF9347977E3D04) - (v190 + v189) + 0x18365C3440E17DLL) ^ 0xDA787D5037E25EE4;
  v192 = v191 ^ __ROR8__(v189, 61);
  v193 = (__ROR8__(v191, 8) + v192) ^ 0xFA35E2CDCB3E31C7;
  v194 = v193 ^ __ROR8__(v192, 61);
  v195 = (__ROR8__(v193, 8) + v194) ^ 0xD2F00CE620E5D3AELL;
  *v178 = (((__ROR8__(v195, 8) + (v195 ^ __ROR8__(v194, 61))) ^ 0xF4730B31AE70757BLL) >> (8 * (v178 & 7u))) ^ v4;
  v196 = v7 + STACK[0x5650];
  v197 = *(*v9 + ((((v196 & 0xFFFFFFF8) - 668303495 - (v196 & 0x5DEE4658) + (v196 & 0x5DEE4658 | 0xA211B9A1)) & *v8) & 0xFFFFFFFFFFFFFFF8));
  v198 = __ROR8__(v196 & 0xFFFFFFFFFFFFFFF8, 8);
  v199 = (((2 * (v197 + v198)) | 0xA97233F05DE0395ALL) - (v197 + v198) - 0x54B919F82EF01CADLL) ^ 0xEC31182CCF377FFELL;
  v200 = v199 ^ __ROR8__(v197, 61);
  v201 = (__ROR8__(v199, 8) + v200) ^ 0x38C8B16AE7056877;
  v202 = v201 ^ __ROR8__(v200, 61);
  v203 = (__ROR8__(v201, 8) + v202) ^ 0xE580B17D8CC5E551;
  v204 = v203 ^ __ROR8__(v202, 61);
  v205 = (__ROR8__(v203, 8) + v204) ^ 0xE1A1FD5BD155F97ALL;
  v206 = __ROR8__(v205, 8);
  v207 = v205 ^ __ROR8__(v204, 61);
  v208 = (v206 + v207) ^ 0xDA604B0C03A2BF99;
  v209 = v208 ^ __ROR8__(v207, 61);
  v210 = __ROR8__(v208, 8);
  v211 = (((v210 + v209) & 0x78BE3785F55C7EF9 ^ 0x38B22680151038D8) + ((v210 + v209) ^ 0x444D9935E06DC723) - (((v210 + v209) ^ 0x444D9935E06DC723) & 0x78BE3785F55C7EF9)) ^ 0xC6C64C7DDE0F881DLL;
  v212 = v211 ^ __ROR8__(v209, 61);
  v213 = (__ROR8__(v211, 8) + v212) ^ 0xD2F00CE620E5D3AELL;
  v214 = v213 ^ __ROR8__(v212, 61);
  v215 = __ROR8__(v213, 8);
  *v196 = (((((2 * (v215 + v214)) | 0xA09814C54897B64ELL) - (v215 + v214) + 0x2FB3F59D5BB424D9) ^ 0x243F01530A3BAE5CLL) >> (8 * (v196 & 7u))) ^ v5;
  v216 = v7 + STACK[0x5570];
  v217 = *(*v9 + (*v8 & ((v216 & 0xFFFFFFF8 ^ 0xB11B6C9C) - 920597380 + ((2 * (v216 & 0xFFFFFFF8)) & 0x6236D930))));
  v218 = (v217 + __ROR8__(v216 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xB88801D4E1C76353;
  v219 = v218 ^ __ROR8__(v217, 61);
  v220 = __ROR8__(v218, 8);
  v221 = (((2 * (v220 + v219)) & 0xF58B283BDF35CCA2) - (v220 + v219) + 0x53A6BE2106519AELL) ^ 0x3DF2DA88F76071D9;
  v222 = v221 ^ __ROR8__(v219, 61);
  v223 = (__ROR8__(v221, 8) + v222) ^ 0xE580B17D8CC5E551;
  v224 = v223 ^ __ROR8__(v222, 61);
  v225 = __ROR8__(v223, 8);
  v226 = (v225 + v224 - ((2 * (v225 + v224)) & 0x330E11AF5ADE8B9ALL) + 0x198708D7AD6F45CDLL) ^ 0xF826F58C7C3ABCB7;
  v227 = v226 ^ __ROR8__(v224, 61);
  v228 = __ROR8__(v226, 8);
  v229 = __ROR8__((((2 * (v228 + v227)) | 0x3F7F863BA029FFE6) - (v228 + v227) + 0x60403CE22FEB000DLL) ^ 0x45DF8811D3B6406ALL, 8);
  v230 = (((2 * (v228 + v227)) | 0x3F7F863BA029FFE6) - (v228 + v227) + 0x60403CE22FEB000DLL) ^ 0x45DF8811D3B6406ALL ^ __ROR8__(v227, 61);
  v231 = (((2 * (v229 + v230)) | 0x6AC3A4E1FC8EF740) - (v229 + v230) - 0x3561D270FE477BA0) ^ 0xCF5430BD35794A67;
  v232 = v231 ^ __ROR8__(v230, 61);
  v233 = __ROR8__(v231, 8);
  v234 = (0x7F709A6CD52093FBLL - ((v233 + v232) | 0x7F709A6CD52093FBLL) + ((v233 + v232) | 0x808F65932ADF6C04)) ^ 0x527F69750A3ABFAALL;
  *v216 = (((__ROR8__(v234, 8) + (v234 ^ __ROR8__(v232, 61))) ^ 0xF4730B31AE70757BLL) >> (8 * (v216 & 7u))) ^ BYTE2(v2);
  v235 = v7 + STACK[0x5580];
  v236 = *(*v9 + ((((v235 & 0xFFFFFFF8) + 2050767130) & *v8) & 0xFFFFFFFFFFFFFFF8));
  v237 = (v236 + __ROR8__(v235 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xB88801D4E1C76353;
  v238 = v237 ^ __ROR8__(v236, 61);
  v239 = __ROR8__(v237, 8);
  v240 = (v239 + v238 - ((2 * (v239 + v238)) & 0x527111F248861F02) - 0x56C77706DBBCF07FLL) ^ 0x91F03993C34667F6;
  v241 = v240 ^ __ROR8__(v238, 61);
  v242 = (__ROR8__(v240, 8) + v241) ^ 0xE580B17D8CC5E551;
  v243 = __ROR8__(v242, 8);
  v244 = v242 ^ __ROR8__(v241, 61);
  v245 = (v243 + v244) ^ 0xE1A1FD5BD155F97ALL;
  v246 = v245 ^ __ROR8__(v244, 61);
  v247 = __ROR8__(v245, 8);
  v248 = (((2 * (v247 + v246)) & 0xFA3A445716AE1770) - (v247 + v246) + 0x2E2DDD474A8F447) ^ 0xD88296D8770A4BDELL;
  v249 = v248 ^ __ROR8__(v246, 61);
  v250 = (__ROR8__(v248, 8) + v249) ^ 0xFA35E2CDCB3E31C7;
  v251 = __ROR8__(v250, 8);
  v252 = v250 ^ __ROR8__(v249, 61);
  v253 = (v251 + v252 - ((2 * (v251 + v252)) & 0xA26114DD1E17780ELL) + 0x51308A6E8F0BBC07) ^ 0x83C08688AFEE6FA9;
  v254 = v253 ^ __ROR8__(v252, 61);
  v255 = __ROR8__(v253, 8);
  *v235 = (((((2 * (v255 + v254)) | 0x965BB80297902760) - (v255 + v254) + 0x34D223FEB437EC50) ^ 0x3F5ED730E5B866CBLL) >> (8 * (v235 & 7u))) ^ HIBYTE(v3);
  v256 = v7 + STACK[0x5590];
  v257 = *(*v9 + ((((v256 & 0xFFFFFFF8) + 2050767130) & *v8) & 0xFFFFFFFFFFFFFFF8));
  v258 = __ROR8__(v256 & 0xFFFFFFFFFFFFFFF8, 8);
  v259 = (v257 + v258 - ((2 * (v257 + v258)) & 0xCC47D3B9E52B4A5ALL) - 0x19DC16230D6A5AD3) ^ 0x5EABE8081352C67ELL;
  v260 = v259 ^ __ROR8__(v257, 61);
  v261 = (__ROR8__(v259, 8) + v260) ^ 0x38C8B16AE7056877;
  v262 = v261 ^ __ROR8__(v260, 61);
  v263 = (__ROR8__(v261, 8) + v262) ^ 0xE580B17D8CC5E551;
  v264 = __ROR8__(v263, 8);
  v265 = v263 ^ __ROR8__(v262, 61);
  v266 = (v264 + v265) ^ 0xE1A1FD5BD155F97ALL;
  v267 = v266 ^ __ROR8__(v265, 61);
  v268 = (__ROR8__(v266, 8) + v267) ^ 0xDA604B0C03A2BF99;
  v269 = v268 ^ __ROR8__(v267, 61);
  v270 = __ROR8__(v268, 8);
  v271 = (0xA5ECED20F28731E2 - ((v270 + v269) | 0xA5ECED20F28731E2) + ((v270 + v269) | 0x5A1312DF0D78CE1DLL)) ^ 0xA026F012C646FFDALL;
  v272 = v271 ^ __ROR8__(v269, 61);
  v273 = (__ROR8__(v271, 8) + v272) ^ 0xD2F00CE620E5D3AELL;
  v274 = __ROR8__(v273, 8);
  v275 = __ROR8__(v272, 61);
  *v256 = (((v274 + (v273 ^ v275) - ((2 * (v274 + (v273 ^ v275))) & 0x37D74B190DB3D8FALL) + 0x1BEBA58C86D9EC7DLL) ^ 0xEF98AEBD28A99906) >> (8 * (v256 & 7u))) ^ BYTE2(v4);
  v276 = v7 + STACK[0x55A0];
  v277 = *(*v9 + ((((v276 & 0x826E8CE8) + (v276 & 0x7D917310 | 0x826E8CEC) - 137515986) & *v8) & 0xFFFFFFFFFFFFFFF8));
  v278 = __ROR8__(v276 & 0xFFFFFFFFFFFFFFF8, 8);
  v279 = (v277 + v278 - ((2 * (v277 + v278)) & 0x42AC7EBED657DCBALL) - 0x5EA9C0A094D411A3) ^ 0x19DE3E8B8AEC8D0ELL;
  v280 = v279 ^ __ROR8__(v277, 61);
  v281 = (__ROR8__(v279, 8) + v280) ^ 0x38C8B16AE7056877;
  v282 = v281 ^ __ROR8__(v280, 61);
  v283 = (__ROR8__(v281, 8) + v282) ^ 0xE580B17D8CC5E551;
  v284 = v283 ^ __ROR8__(v282, 61);
  v285 = __ROR8__(v283, 8);
  v286 = (((2 * (v285 + v284)) & 0x993D3915C781CABALL) - (v285 + v284) + 0x336163751C3F1AA2) ^ 0xD2C09E2ECD6AE3D8;
  v287 = v286 ^ __ROR8__(v284, 61);
  v288 = (__ROR8__(v286, 8) + v287) ^ 0xDA604B0C03A2BF99;
  v289 = v288 ^ __ROR8__(v287, 61);
  v290 = (__ROR8__(v288, 8) + v289) ^ 0xFA35E2CDCB3E31C7;
  v291 = v290 ^ __ROR8__(v289, 61);
  v292 = __ROR8__(v290, 8);
  v293 = (((v292 + v291) ^ 0x89EF54E9F234EB22) - ((2 * ((v292 + v291) ^ 0x89EF54E9F234EB22)) & 0xE8163DC1C185C43ELL) - 0xBF4E11F1F3D1DE1) ^ 0xAF1446EF3213DA93;
  *v276 = (((__ROR8__(v293, 8) + (v293 ^ __ROR8__(v291, 61))) ^ 0xF4730B31AE70757BLL) >> (8 * (v276 & 7u))) ^ BYTE2(v5);
  v294 = v7 + STACK[0x55C0];
  v295 = *(*v9 + ((((v294 & 0xFFFFFFF8) + 2050767130) & *v8) & 0xFFFFFFFFFFFFFFF8));
  v296 = (v295 + __ROR8__(v294 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xB88801D4E1C76353;
  v297 = v296 ^ __ROR8__(v295, 61);
  v298 = (__ROR8__(v296, 8) + v297) ^ 0x38C8B16AE7056877;
  v299 = v298 ^ __ROR8__(v297, 61);
  v300 = __ROR8__(v298, 8);
  v301 = (0x65B2DCF56D6FD7B6 - ((v300 + v299) | 0x65B2DCF56D6FD7B6) + ((v300 + v299) | 0x9A4D230A92902849)) ^ 0x7FCD92771E55CD18;
  v302 = v301 ^ __ROR8__(v299, 61);
  v303 = (__ROR8__(v301, 8) + v302) ^ 0xE1A1FD5BD155F97ALL;
  v304 = __ROR8__(v303, 8);
  v305 = v303 ^ __ROR8__(v302, 61);
  v306 = (v304 + v305) ^ 0xDA604B0C03A2BF99;
  v307 = v306 ^ __ROR8__(v305, 61);
  v308 = __ROR8__(v306, 8);
  v309 = (((2 * (v308 + v307)) | 0xCA5AC4DF424DC240) - (v308 + v307) - 0x652D626FA126E120) ^ 0x9F1880A26A18D0E7;
  v310 = v309 ^ __ROR8__(v307, 61);
  v311 = __ROR8__(v309, 8);
  v312 = (((2 * (v311 + v310)) | 0x45B67875FE93880CLL) - (v311 + v310) - 0x22DB3C3AFF49C406) ^ 0xF02B30DCDFAC17A8;
  *v294 = (((__ROR8__(v312, 8) + (v312 ^ __ROR8__(v310, 61))) ^ 0xF4730B31AE70757BLL) >> (8 * (v294 & 7u))) ^ BYTE1(v3);
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_10024A2E8()
{
  v1 = v0 + 2683;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v1 + 18925)))(64);
  STACK[0xB930] = v3;
  return (*(v2 + 8 * (((v3 != 0) * (((v1 + 9733) ^ 0x6A49) - 12782)) ^ v1)))();
}

uint64_t sub_10024A358()
{
  STACK[0x89D0] = 0;
  LODWORD(STACK[0x8920]) = 103679699;
  LODWORD(STACK[0xDB40]) = -143113071;
  LOBYTE(STACK[0xDB3F]) = 0;
  LODWORD(STACK[0x5D5C]) = v0;
  LODWORD(STACK[0x865C]) = 0;
  LOBYTE(STACK[0x97BF]) = 1;
  return (*(STACK[0x57D8] + 8 * (v1 - 11236)))();
}

uint64_t sub_10024A434()
{
  v1 = *STACK[0x82D0];
  v2 = STACK[0x3B80];
  STACK[0x1D4C8] = STACK[0xC2B0];
  LODWORD(STACK[0x1D4D0]) = (v2 + 1568) ^ (800103191 * ((v0 - 1679403319 - 2 * ((v0 - 240) & 0x9BE657B9)) ^ 0xEAA21ADA));
  STACK[0x1D4D8] = v1;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v2 ^ 0x6E81)))(v0 - 240);
  return (*(v3 + 8 * v2))(v4);
}

uint64_t sub_10024A50C(uint64_t a1)
{
  *STACK[0x87A8] = a1;
  *STACK[0x83A0] = STACK[0x9D84];
  return (*(STACK[0x57D8] + 8 * ((14242 * (v1 == 513348088)) ^ (v1 - 700 + v2))))();
}

uint64_t sub_10024AB0C()
{
  v0 = STACK[0x16E0];
  v1 = STACK[0x57D8];
  STACK[0xB880] = *(STACK[0x57D8] + 8 * STACK[0x16E0]);
  return (*(v1 + 8 * ((v0 ^ 0x22A9) + v0)))();
}

uint64_t sub_10024ACE4()
{
  LODWORD(STACK[0x55C0]) = LODWORD(STACK[0x57B0]) ^ LODWORD(STACK[0x5040]);
  LODWORD(STACK[0x4FA8]) = LODWORD(STACK[0x5048]) ^ LODWORD(STACK[0x5750]) ^ LODWORD(STACK[0x5390]) ^ LODWORD(STACK[0x5018]);
  LODWORD(STACK[0x4FA0]) = LODWORD(STACK[0x5010]) + LODWORD(STACK[0x5038]);
  LODWORD(STACK[0x5290]) = LODWORD(STACK[0x5060]) ^ 0xF0F09D80 ^ (v2 - 62);
  v3 = *(STACK[0x57D8] + 8 * v2);
  LODWORD(STACK[0x57C0]) = v0;
  LODWORD(STACK[0x5790]) = v2 - 62;
  v4 = (v2 - 62) ^ 0x414F;
  LODWORD(STACK[0x5060]) = v4;
  LODWORD(STACK[0x5780]) = v4 + 2137407968;
  STACK[0x57B0] = v1;
  return v3();
}

uint64_t sub_10024AEB8()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x241B)))(v1);
  return (*(v2 + 8 * (v0 - 8618)))(v3);
}

uint64_t sub_10024B1D4()
{
  STACK[0x54E0] = v1 - 0x79296B4A625EDCB4;
  STACK[0x54B0] = v2 - 0x30BDFED8F32E674DLL;
  LODWORD(STACK[0x54C0]) = STACK[0x54D0];
  v3 = STACK[0x57C0];
  v4 = STACK[0x57B0];
  v4[41224] = (*STACK[0x57C0] ^ 0x5F) + ((2 * *STACK[0x57C0]) & 0xBF) - 70;
  v4[41225] = (v0 ^ 0x2E) + (v3[1] ^ 0x5F) + ((2 * v3[1]) & 0xBF) + 55;
  v4[41226] = (v3[2] ^ 0x5F) + ((2 * v3[2]) & 0xBF) - 70;
  v4[41227] = (v3[3] ^ 0x5F) + ((2 * v3[3]) & 0xBF) - 70;
  v4[41228] = (v3[4] ^ 0x5F) + ((2 * v3[4]) & 0xBF) - 70;
  v4[41229] = (v3[5] ^ 0x5F) + ((2 * v3[5]) & 0xBF) - 70;
  v4[41230] = (v3[6] ^ 0x5F) + ((2 * v3[6]) & 0xBF) - 70;
  v4[41231] = (v3[7] ^ 0x5F) + ((2 * v3[7]) & 0xBF) - 70;
  v4[41232] = (v3[8] ^ 0x5F) + ((2 * v3[8]) & 0xBF) - 70;
  v4[41233] = (v3[9] ^ 0x5F) + ((2 * v3[9]) & 0xBF) - 70;
  v4[41234] = (v3[10] ^ 0x5F) + ((2 * v3[10]) & 0xBF) - 70;
  v4[41235] = (v3[11] ^ 0x5F) + ((2 * v3[11]) & 0xBF) - 70;
  v4[41236] = (v3[12] ^ 0x5F) + ((2 * v3[12]) & 0xBF) - 70;
  v4[41237] = (v3[13] ^ 0x5F) + ((2 * v3[13]) & 0xBF) - 70;
  v4[41238] = (v3[14] ^ 0x5F) + ((2 * v3[14]) & 0xBF) - 70;
  v4[41239] = (v3[15] ^ 0x5F) + ((2 * v3[15]) & 0xBF) - 70;
  v5 = STACK[0x8718];
  STACK[0x9910] = STACK[0x8718] + 41240;
  v6 = STACK[0x7ADC];
  LODWORD(STACK[0x7D98]) = STACK[0x7ADC];
  LODWORD(STACK[0xA378]) = v6 + 32;
  *(v5 + 41240) = -1175200548;
  *(v5 + 41244) = 0x60F77F86FBDC740BLL;
  *(v5 + 41252) = 1368420886;
  *(v5 + 41260) = 0;
  v7 = *(STACK[0x57D8] + 8 * ((9660 * ((v0 ^ 0x9370B925) > 0x7BC72807)) ^ (v0 + 3043)));
  v8 = LODWORD(STACK[0x75F4]);
  LODWORD(STACK[0x5650]) = 268600889;
  LODWORD(STACK[0x5640]) = -1717559852;
  LODWORD(STACK[0x5630]) = 2134765567;
  LODWORD(STACK[0x5620]) = 1006563327;
  LODWORD(STACK[0x5610]) = -402091950;
  LODWORD(STACK[0x5600]) = 2129068775;
  LODWORD(STACK[0x55F0]) = 269012102;
  LODWORD(STACK[0x55E0]) = 1074791429;
  LODWORD(STACK[0x55D0]) = 604505384;
  LODWORD(STACK[0x55C0]) = 2142765053;
  LODWORD(STACK[0x55B0]) = -909872713;
  LODWORD(STACK[0x55A0]) = 1879048063;
  LODWORD(STACK[0x5540]) = 1333119266;
  LODWORD(STACK[0x5530]) = -10485777;
  LODWORD(STACK[0x5520]) = -1010335027;
  LODWORD(STACK[0x5510]) = 1451596016;
  LODWORD(STACK[0x5500]) = 1269211212;
  return v7(v8, 1795136302, 19, 81613577, 371612448, 11848, 4294952879, 8387583);
}

uint64_t sub_10024B6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = LODWORD(STACK[0x1E00]) | 0x5408249A;
  v8 = STACK[0x57D8];
  v9 = STACK[0x1E08];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1E08]));
  v10 = *(v8 + 8 * ((v7 ^ 0x5D8B3A60) + v9));
  LODWORD(STACK[0xE6CC]) = -143113071;
  return v10(STACK[0x59C0], a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_10024B9C8(int a1)
{
  LODWORD(STACK[0x54D0]) = 16843009 * LODWORD(STACK[0x5180]);
  v5 = v1 & STACK[0x5720];
  LODWORD(STACK[0x5000]) = v5 ^ a1;
  LODWORD(STACK[0x5338]) = v5 ^ ~a1;
  LODWORD(STACK[0x5780]) = v2 ^ v3 ^ 0x9595C10F ^ ((v4 - 5831) | 0x4080);
  LODWORD(STACK[0x4FE0]) = LODWORD(STACK[0x56C0]) ^ 0x7EE70FAE;
  return (*(STACK[0x57D8] + 8 * v4))();
}

uint64_t sub_10024BDEC@<X0>(uint64_t a1@<X8>)
{
  v3 = STACK[0x57D8];
  STACK[0xABE0] = *(STACK[0x57D8] + 8 * v2);
  return (*(v3 + 8 * ((38 * (((v1 ^ (a1 == 0x79CEC8CF5A6FCEBALL)) & 1) == 0)) ^ v1)))();
}

uint64_t sub_10024BE3C@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  LODWORD(STACK[0x5650]) = 0;
  v2 = STACK[0x5110];
  LODWORD(STACK[0x5280]) = *(STACK[0x5110] + 4) ^ (a2 - 6353);
  v3 = (a2 - 6271) | 0x2000u;
  LODWORD(STACK[0x5268]) = v2[9] ^ 0xF;
  LODWORD(STACK[0x5750]) = v2[12] ^ 0xF;
  LODWORD(STACK[0x54A0]) = v2[13] ^ 0xF;
  LODWORD(STACK[0x5270]) = v2[8] ^ 0xF;
  LODWORD(STACK[0x5288]) = v2[1] ^ 0xF;
  LODWORD(STACK[0x5278]) = v2[6] ^ 0xF;
  LODWORD(STACK[0x5760]) = STACK[0x5600];
  LODWORD(STACK[0x54F0]) = STACK[0x55D0];
  LODWORD(STACK[0x53C0]) = STACK[0x5620];
  LODWORD(STACK[0x54E0]) = STACK[0x55B0];
  LODWORD(STACK[0x53D0]) = STACK[0x55F0];
  LODWORD(STACK[0x53C8]) = STACK[0x55C0];
  LODWORD(STACK[0x53F0]) = STACK[0x55A0];
  LODWORD(STACK[0x54C0]) = STACK[0x5580];
  LODWORD(STACK[0x5408]) = STACK[0x5570];
  v4 = *(STACK[0x57D8] + 8 * a2);
  LODWORD(STACK[0x5470]) = STACK[0x5560];
  LODWORD(STACK[0x5480]) = STACK[0x5550];
  LODWORD(STACK[0x5400]) = STACK[0x5540];
  LODWORD(STACK[0x53D8]) = STACK[0x5388];
  LODWORD(STACK[0x5430]) = STACK[0x5368];
  v5 = LODWORD(STACK[0x5360]);
  LODWORD(STACK[0x53F8]) = STACK[0x5358];
  LODWORD(STACK[0x5490]) = STACK[0x5350];
  v6 = LODWORD(STACK[0x5348]);
  LODWORD(STACK[0x53E8]) = STACK[0x5340];
  LODWORD(STACK[0x54B0]) = STACK[0x5338];
  LODWORD(STACK[0x5520]) = STACK[0x5318];
  LODWORD(STACK[0x5440]) = STACK[0x5328];
  LODWORD(STACK[0x5510]) = STACK[0x5330];
  LODWORD(STACK[0x5420]) = STACK[0x5320];
  LODWORD(STACK[0x53B8]) = STACK[0x5310];
  LODWORD(STACK[0x5410]) = STACK[0x5308];
  LODWORD(STACK[0x5460]) = STACK[0x5300];
  LODWORD(STACK[0x5500]) = STACK[0x52F8];
  LODWORD(STACK[0x54D0]) = STACK[0x52F0];
  LODWORD(STACK[0x53E0]) = STACK[0x52D8];
  v7 = LODWORD(STACK[0x52E0]);
  LODWORD(STACK[0x5450]) = STACK[0x52D0];
  LODWORD(STACK[0x53A0]) = STACK[0x52C8];
  LODWORD(STACK[0x5398]) = STACK[0x52C0];
  LODWORD(STACK[0x53A8]) = STACK[0x52B8];
  LODWORD(STACK[0x5380]) = STACK[0x52B0];
  v8 = LODWORD(STACK[0x52A8]);
  LODWORD(STACK[0x53B0]) = STACK[0x52A0];
  LODWORD(STACK[0x5390]) = STACK[0x5298];
  v9 = LODWORD(STACK[0x5290]);
  LODWORD(STACK[0x5640]) = STACK[0x5100];
  return v4(v7, v6, v5, 12, v9, a1, v8, v3);
}

uint64_t sub_10024C3AC()
{
  v1 = STACK[0x99CC];
  STACK[0x7ED8] -= 48;
  return (*(STACK[0x57D8] + 8 * ((25534 * (v1 == ((v0 + 230077697) & 0xF2497AD6) - 143135685)) ^ v0)))();
}

uint64_t sub_10024C4BC()
{
  v4 = v0 + 1 + v3;
  if (v2 < v3 != v4 < v3)
  {
    v5 = v2 < v3;
  }

  else
  {
    v5 = v4 < v2;
  }

  return (*(STACK[0x57D8] + 8 * ((75 * !v5) ^ v1)))();
}

uint64_t sub_10024C6D4()
{
  v1 = *(STACK[0x6400] + 24);
  STACK[0x79C0] = v1;
  return (*(STACK[0x57D8] + 8 * (((v1 != 0) * ((v0 + 1006941837) & 0xC3FB5FFF ^ 0x5849)) ^ v0)))();
}

uint64_t sub_10024C730(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v16 = *(*(a2 + 8 * v14) + 4 * ((v8 ^ v11) ^ v13) - 12) * a3;
  *(v10 + 4 * v11) = a8 ^ a6 ^ v9 ^ a7 ^ v16 ^ (v16 >> 1) ^ (v16 >> 5) ^ a4;
  return (*(STACK[0x57D8] + 8 * (((v12 == 0) * a5) ^ v15)))();
}

uint64_t sub_10024C7B8@<X0>(unint64_t a1@<X8>)
{
  STACK[0xC348] = a1;
  STACK[0x7128] = v2;
  return (*(STACK[0x57D8] + 8 * ((((((v1 + 241463020) & 0xF19B5FF9) + 2645) ^ ((v1 + 2968) | 0x1814)) * (v2 == 0)) ^ v1)))();
}

uint64_t sub_10024C818()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x545C)))(1280);
  STACK[0x6658] = v2;
  return (*(v1 + 8 * (((v2 != 0) * (v0 ^ 0x212E ^ (597 * (v0 ^ 0x2866)))) | v0)))();
}

uint64_t sub_10024C880()
{
  v0 = STACK[0x51B8];
  LODWORD(STACK[0x8FBC]) = LODWORD(STACK[0xA804]) << ((STACK[0x51B8] - 100) & 0xDD ^ 0xD4);
  v1 = STACK[0x57D8];
  STACK[0x9078] = *(STACK[0x57D8] + 8 * (v0 - 22054));
  return (*(v1 + 8 * (v0 - 17146)))();
}

uint64_t sub_10024C950()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 15677)))(1032);
  STACK[0xD170] = v2;
  return (*(v1 + 8 * ((v2 == 0) | v0)))();
}

uint64_t sub_10024C99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0xB658] - 0x30BDFED8F32E6575;
  v9 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v7);
  return (*(v9 + 8 * ((((v7 + 364718674) & 0xEA42FDBF) - 7134) ^ v7)))(v8, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_10024CABC@<X0>(int a1@<W6>, uint64_t a2@<X7>, int a3@<W8>)
{
  v12 = *(v9 + v3 * v11 + 8698028 - (((((v3 * v11 + 8698028) >> 3) * v10) >> 32) >> 7) * v6);
  v13 = (((v12 ^ (((a3 - 157228566) & 0x95EDFFB) - 1430229367)) + 1430224765) ^ ((v12 ^ 0xA063B58A) + 1604078198) ^ ((v12 ^ 0xAA335CE) - 178468302)) * v11 + 14640389;
  *(a2 + 4 * (v4 + v3 * v5 - ((((v4 + v3 * v5) * v8) >> 32) >> 12) * v7)) = *(v9 + v13 - ((((v13 >> 3) * v10) >> 32) >> 7) * v6) ^ a1;
  return (*(STACK[0x57D8] + 8 * ((1126 * (v3 == 255)) ^ a3)))();
}

uint64_t sub_10024CEC4()
{
  LODWORD(STACK[0xACB0]) = v1;
  LODWORD(STACK[0xC224]) = -2021849705;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10024CF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (v3 ^ 0x3E38) - 10966;
  v6 = v3 - 7400;
  v7 = STACK[0xC8D4];
  LODWORD(STACK[0x57B0]) = STACK[0xC8D4];
  return (*(STACK[0x57D8] + 8 * (((v4 < v7) * (v5 ^ 0x4E38)) ^ v6)))(a1, 0x91BE8DE8979CBE40, a3, 0x7D0ACAAAE9EC381DLL, 0xBDCCD595E3F6F39ELL, 0xD5A65E3AB90972EDLL, 1406307121, STACK[0x51F0]);
}

uint64_t sub_10024D080(int a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = v9 - 1;
  v24 = STACK[0x5790] & (v12 - 1030);
  v26 = *(a2 + 8) + 4 * v23;
  v27 = *(v14 + 8);
  LODWORD(STACK[0x57B0]) = v24;
  v29 = (v26 & 0xFFFFFFF8 ^ (v24 + a1)) + v15;
  v31 = *v18 & 0xFFFFFFFFFFFFFFF8;
  v32 = *(*v11 + ((v29 + (v10 & (2 * (v26 & 0xFFFFFFF8)))) & v31));
  v33 = __ROR8__(v26 & 0xFFFFFFFFFFFFFFF8, 8);
  v34 = v27 + 4 * v23;
  v35 = ((v13 & (2 * (v32 + v33))) - (v32 + v33) + a7) ^ 0x738A5407D80B73F4;
  v36 = v35 ^ __ROR8__(v32, 61);
  v37 = __ROR8__(v35, 8);
  v38 = ((v19 | (2 * (v37 + v36))) - (v37 + v36) + 0x3BDC752EED7B52ADLL) ^ 0x4E64FB9DE108EAD0;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (v16 - ((v40 + v39) | v16) + ((v40 + v39) | v21)) ^ v22;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ v17;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ a6;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = __ROR8__(v45, 8);
  v48 = *(*v11 + (((v34 & 0xFFFFFFF8 ^ 0xA0DC0B77) + 1462743284 + ((2 * (v34 & 0xFFFFFFF8)) & 0x41B816E0)) & v31));
  v49 = (v48 + __ROR8__(v34 & 0xFFFFFFFFFFFFFFF8, 8)) ^ a5;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = __ROR8__(v49, 8);
  v52 = (((2 * (v51 + v50)) | 0xE4CBDEFC387CC426) - (v51 + v50) - 0x7265EF7E1C3E6213) ^ 0xF8229E32EFB22590;
  v53 = v52 ^ __ROR8__(v50, 61);
  v54 = __ROR8__(v52, 8);
  v55 = (((v47 + v46) ^ 0xB07944338725312ALL) - ((2 * ((v47 + v46) ^ 0xB07944338725312ALL)) & 0x4ADC4277A7CFEFELL) + a8) ^ 0xE0DE2E6922C398F7;
  v56 = v55 ^ __ROR8__(v46, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ v8;
  v58 = __ROR8__(v57, 8) + (v57 ^ __ROR8__(v56, 61));
  v59 = (((2 * (v54 + v53)) | 0xB9DA27A2C11499D6) - (v54 + v53) + 0x2312EC2E9F75B315) ^ 0x7E86F7AB7AE3639BLL;
  v60 = v59 ^ __ROR8__(v53, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ v17;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = __ROR8__(v61, 8);
  v64 = (v20 - ((v63 + v62) | v20) + ((v63 + v62) | 0x632E60BE105FD25CLL)) ^ 0x1E24AA14F9B3EA41;
  v65 = v64 ^ __ROR8__(v62, 61);
  v66 = (__ROR8__(v64, 8) + v65) ^ a3;
  v67 = v66 ^ __ROR8__(v65, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ v8;
  *v34 = (((((2 * v58) & 0x3E30B8D41FB3AE18) - v58 - 0x1F185C6A0FD9D70DLL) ^ 0x71592E7D67BA96B3) >> (8 * (v26 & 7u))) ^ (((__ROR8__(v68, 8) + (v68 ^ __ROR8__(v67, 61))) ^ a4) >> (8 * (v34 & 7u))) ^ *v26;
  return (*(STACK[0x57D8] + 8 * ((7468 * (v23 == 0)) ^ LODWORD(STACK[0x57A0]))))(3830571374, a2, a3);
}

uint64_t sub_10024D4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x57A0] = v8;
  STACK[0x5790] = v7;
  return (*(STACK[0x57D8] + 8 * (((STACK[0x5780] > ((v6 + 17170) ^ 0x5856)) * ((v6 + 13690) ^ 0x211)) ^ v6)))(a1, a2, a3, a4, a5, a6, 395);
}

uint64_t sub_10024D648()
{
  v3 = (2 * (-13 * (v2 - (v1 ^ 0x24)) - 87)) & 0x56 | (-13 * (v2 - (v1 ^ 0x24)) - 87) & ~(2 * (-13 * (v2 - (v1 ^ 0x24)) - 87));
  v4 = *(STACK[0x57D8] + 8 * ((30565 * ((((-13 * (v2 - (v1 ^ 0x24)) - 87) ^ (2 * ((((((v0 ^ 0xD6) + 3) & 0x1B) - 26) ^ (-13 * (v2 - (v1 ^ 0x24)) - 87)) & (4 * v3) & (2 * (((((v0 ^ 0xD6) + 3) & 0x1B) - 26) ^ (-13 * (v2 - (v1 ^ 0x24)) - 87))) ^ v3))) & 0xF) == 7)) ^ v0 ^ 0x37D6));
  LODWORD(STACK[0x57B0]) = -143155739;
  return v4();
}

uint64_t sub_10024D708@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v7 = __ROR8__((v3 + v4 - 0x389EF4A29CCA0A80) & 0xFFFFFFFFFFFFFFF8, 8);
  v8 = v7 - (((v7 << (59 * (v5 ^ 0x95u) + 16)) + 0x3134CBBCC3D30E70) & 0xB07C589F232B338ELL) + 0x72D8922DF37F20FFLL;
  v9 = v8 ^ 0x757A0835B1D91B5BLL;
  v10 = v8 ^ (((v5 - 19413) | 0x2070u) - 0x4E56D939416B0A52);
  v11 = (__ROR8__(v9, 8) + v10) ^ a1;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = __ROR8__(v11, 8);
  v14 = (((2 * (v13 + v12)) | 0x4046E087C2ACF836) - (v13 + v12) - 0x20237043E1567C1BLL) ^ 0x9D4F947A073F8FC4;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = __ROR8__(v14, 8);
  v17 = __ROR8__((v16 + v15 - ((2 * (v16 + v15)) & 0x8D2B5FEFD6337E0ALL) + 0x4695AFF7EB19BF05) ^ 0x5C89E36E4DAA6995, 8);
  v18 = (v16 + v15 - ((2 * (v16 + v15)) & 0x8D2B5FEFD6337E0ALL) + 0x4695AFF7EB19BF05) ^ 0x5C89E36E4DAA6995 ^ __ROR8__(v15, 61);
  v19 = (v17 + v18) ^ 0x58EFACCBC8D7665BLL;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ a2;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = v5 - 8809;
  v25 = (0x114F0648DBF35002 - ((v23 + v22) | 0x114F0648DBF35002) + ((v23 + v22) | 0xEEB0F9B7240CAFFDLL)) ^ 0x6AD94B53724FEFC4;
  return (*(STACK[0x57D8] + 8 * ((27 * (((((__ROR8__(v25, 8) + (v25 ^ __ROR8__(v22, 61))) ^ v6) >> (8 * ((v3 + v4 + 0x80) & 7))) ^ *(v3 + v4 - 0x389EF4A29CCA0A80)) != *(a3 + v4 - 0x389EF4A29CCA0A80))) ^ v24)))();
}

uint64_t sub_10024D938(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0xE8D8] = (((v2 ^ 0x4BFBC319596E5A3DLL) - 0x4BFBC319596E5A3DLL) ^ ((v2 ^ 0xEA1A5D45E505CD52) + 0x15E5A2BA1AFA32AELL) ^ ((v2 ^ 0xA1E19E5C6E7717FBLL) + 0x5E1E61A3918875B4 + v1 + 5495)) + (((v1 - 23702) | 0x5812) ^ 0x35EF01347D288133);
  *(a1 + 16) = (((v2 ^ 0xB67EE638) + 1233197512) ^ ((v2 ^ 0xEF71E5FD) + 277748227) ^ ((v2 ^ 0x8B138351) + 1961655471)) - 769884002;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v1 + 8036)))();
  *(a1 + 24) = v5;
  return (*(v4 + 8 * ((475 * (v5 != 0)) ^ v1)))();
}

uint64_t sub_10024DADC@<X0>(char a1@<W0>, int a2@<W1>, char a3@<W2>, int a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W7>, char a8@<W8>)
{
  v20 = STACK[0x49F0];
  v20[36] = a6;
  v20[39] = a1;
  LODWORD(STACK[0x52C0]) = LODWORD(STACK[0x40D8]) ^ LODWORD(STACK[0x4058]) ^ 0xFFFFFF96 ^ LODWORD(STACK[0x5750]);
  LODWORD(STACK[0x52B0]) = STACK[0x5760] ^ STACK[0x4098] ^ 0xFFFFFFE9;
  LODWORD(STACK[0x5290]) = a4 ^ STACK[0x4080] ^ 0xFFFFFF84;
  v20[43] = v19;
  v20[33] = a7;
  v21 = STACK[0x3FE0] ^ (v17 + 11261) ^ 0xFFFFFFD0;
  LODWORD(STACK[0x52C8]) = v10 ^ STACK[0x4010] ^ 6;
  LODWORD(STACK[0x52A0]) = STACK[0x3FF0] ^ STACK[0x5740] ^ 0xFFFFFFC7;
  LODWORD(STACK[0x5280]) = v21 ^ STACK[0x5720];
  v20[34] = v9;
  LODWORD(STACK[0x5288]) = STACK[0x56F0] ^ STACK[0x4078] ^ 0xFFFFFFB2;
  v20[38] = v18;
  LODWORD(STACK[0x5298]) = LODWORD(STACK[0x56E0]) ^ LODWORD(STACK[0x3FC0]) ^ 0xFFFFFF83;
  v20[42] = a5;
  v22 = LODWORD(STACK[0x40D0]) ^ LODWORD(STACK[0x4024]);
  v20[37] = v16;
  LODWORD(STACK[0x52A8]) = v22 ^ 0x7D ^ v15;
  v20[44] = a3;
  v20[45] = v12;
  v20[32] = v14;
  LODWORD(STACK[0x52B8]) = STACK[0x4088] ^ v13 ^ 0xFFFFFFE1;
  v20[35] = v11;
  LODWORD(STACK[0x5278]) = LODWORD(STACK[0x40C8]) ^ LODWORD(STACK[0x4020]) ^ 0xFFFFFFBA ^ LODWORD(STACK[0x5730]);
  v20[47] = STACK[0x57C0];
  v20[46] = STACK[0x5790];
  v20[41] = STACK[0x57A0];
  v20[40] = a8;
  LODWORD(STACK[0x52D0]) = a2 ^ STACK[0x4008] ^ 0x13;
  LODWORD(STACK[0x52D8]) = STACK[0x4038] ^ 0xFFFFFF99 ^ v8;
  v23 = *(STACK[0x57D8] + 8 * v17);
  LODWORD(STACK[0x5210]) = 6;
  return v23();
}

uint64_t sub_10024DD80()
{
  v0 = STACK[0x51B8] - 21887;
  v1 = STACK[0x57D8];
  v2 = STACK[0xFE0];
  STACK[0x7B40] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0xFE0]));
  return (*(v1 + 8 * (v0 + v2 + 7802)))();
}

uint64_t sub_10024DDE4(uint64_t a1)
{
  v3 = STACK[0x9360];
  v4 = *(STACK[0x57D8] + 8 * v2);
  STACK[0x57B0] = v1;
  return v4(a1, v3, v1 - 1);
}

uint64_t sub_10024DEA8()
{
  LODWORD(STACK[0x4280]) = LODWORD(STACK[0x5440]) | LODWORD(STACK[0x5640]);
  LODWORD(STACK[0x4098]) = LODWORD(STACK[0x5408]) | LODWORD(STACK[0x5500]);
  LODWORD(STACK[0x4010]) = LODWORD(STACK[0x53B0]) | LODWORD(STACK[0x5410]);
  LODWORD(STACK[0x4068]) = LODWORD(STACK[0x53A0]) | LODWORD(STACK[0x5370]);
  LODWORD(STACK[0x4278]) = LODWORD(STACK[0x5398]) | LODWORD(STACK[0x40B0]);
  LODWORD(STACK[0x40A0]) |= LODWORD(STACK[0x5390]);
  LODWORD(STACK[0x3B40]) = LODWORD(STACK[0x5388]) | LODWORD(STACK[0x3FAC]);
  LODWORD(STACK[0x3728]) = LODWORD(STACK[0x5380]) | LODWORD(STACK[0x3B1C]);
  LODWORD(STACK[0x3B1C]) = LODWORD(STACK[0x5378]) | LODWORD(STACK[0x3470]);
  LODWORD(STACK[0x5640]) = v1 & (v0 ^ 0x8456721C);
  return (*(STACK[0x57D8] + 8 * ((47799 * (v2 < 0x7349B3D9)) ^ (v2 + 2096665970))))();
}

uint64_t sub_10024E180(uint64_t a1)
{
  v1 = *(a1 + 3428);
  *(a1 + 3432) = v1;
  *(a1 + 3436) = 2 * (v1 ^ 0x41FF3B4D);
  v2 = *(STACK[0x4D10] + 24) + 16 * *(a1 + 3392) + 8;
  v3 = STACK[0x57D8];
  v4 = *(STACK[0x57D8] + 8 * (v1 - 1107204962));
  *(a1 + 220) = 0;
  *(a1 + 200) = v4;
  *(a1 + 208) = v2;
  return (*(v3 + 8 * (v1 ^ 0x41FF6D90)))();
}

uint64_t sub_10024E234()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x51B8] - 1110;
  STACK[0xDA40] = STACK[0x7168];
  STACK[0xB1A0] = 0x603BA2169EBD64A7 * ((*(*STACK[0x51F0] + (*STACK[0x51E8] & 0xAB7CC340)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x167AEF47A1A9D0B4) - STACK[0x8DF8]);
  STACK[0x5928] = 0;
  LODWORD(STACK[0x975C]) = 0;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 9192)))(20);
  STACK[0x5FE0] = v3;
  return (*(v2 + 8 * ((22 * (v3 == 0)) | v1)))();
}

uint64_t sub_10024E30C()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 - 1268572717)))(v1);
  return (*(v2 + 8 * (v0 ^ 0x4B9D39A7 ^ (43023 * (v0 > 0xD9DB7D22)))))(v3);
}

uint64_t sub_10024E384@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = v5 + v8 + v6;
  v11 = __ROR8__(v10 & 0xFFFFFFFFFFFFFFF8, 8);
  v12 = ((2 * ((v11 + a4) ^ 0xAFAE17A190086998)) | 0x665BF91B15CFFD9CLL) - ((v11 + a4) ^ 0xAFAE17A190086998) + (((a2 - 8476) | 0x1812u) ^ 0x4CD2037275185964);
  v13 = v12 ^ 0x979B56B67822C116;
  v12 ^= 0xB192A5654179CEA3;
  v14 = __ROR8__(v13, 8);
  v15 = (((2 * (v14 + v12)) | 0x2677B9BB61C65D1CLL) - (v14 + v12) + 0x6CC423224F1CD172) ^ 0xE581FB93777854ELL;
  v16 = v15 ^ __ROR8__(v12, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (((2 * (v17 + v16)) | 0xBDC2A214FB07627ALL) - (v17 + v16) - 0x5EE1510A7D83B13DLL) ^ 0xD7D623BA7E0046E1;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (((2 * (v20 + v19)) | 0xB58F68222706F968) - (v20 + v19) + 0x25384BEEEC7C834CLL) ^ 0xF2E5BD88985FDCD7;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ a1;
  v24 = __ROR8__(v23, 8);
  v25 = v23 ^ __ROR8__(v22, 61);
  v26 = (0xEC3E4596F526C474 - ((v24 + v25) | 0xEC3E4596F526C474) + ((v24 + v25) | 0x13C1BA690AD93B8BLL)) ^ 0x161DB63BE764EBAELL;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (((2 * (v28 + v27)) | 0xCB20BE213E3C3D18) - (v28 + v27) - 0x65905F109F1E1E8CLL) ^ 0x4B3D7241781F9958;
  *v10 = *(a5 + v8) ^ (((__ROR8__(v29, 8) + (v29 ^ __ROR8__(v27, 61))) ^ v9) >> (8 * (v10 & 7u))) ^ 0xF;
  return (*(STACK[0x57D8] + 8 * ((255 * (((v8 + 1) ^ v7) == a3)) ^ a2)))();
}

uint64_t sub_10024E5F4()
{
  v3 = *(v2 + 964);
  LODWORD(STACK[0x57C0]) = v3;
  v4 = (v3 + 1401) | 0x345u;
  *(v2 + 972) = v4;
  v5 = STACK[0x57B0];
  v6 = *STACK[0x57B0];
  *(v2 + 979) = v6;
  v7 = STACK[0x8070];
  v8 = *(STACK[0x8070] + 2141);
  *(v2 + 980) = v5 & 0xFFFFFFF8;
  v9 = STACK[0x51E8];
  v10 = STACK[0x51F0];
  v11 = *(*STACK[0x51F0] + ((((v5 & 0xFFFFFFF8) - 555828759) & *STACK[0x51E8]) & 0xFFFFFFFFFFFFFFF8));
  v12 = __ROR8__(v5 & 0xFFFFFFFFFFFFFFF8, 8);
  *(v2 + 984) = v12;
  v13 = v4 ^ 0x2D20C325A80E9BA4 ^ (v12 + v11 - ((2 * (v12 + v11)) & 0x48674FF23D1BD970) + 0x2433A7F91E8DECB8);
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (((2 * (v15 + v14)) | 0xCB5552D17635B78CLL) - (v15 + v14) - 0x65AAA968BB1ADBC6) ^ 0x2127C6041C0B0393;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (v18 + v17 - ((2 * (v18 + v17)) & 0xC9483C994B1991BELL) + 0x64A41E4CA58CC8DFLL) ^ 0x9156E09FAD26EAA7;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0x67536EC0FB8B549DLL;
  v22 = __ROR8__(v21, 8);
  v23 = v21 ^ __ROR8__(v20, 61);
  v24 = (((v22 + v23) | 0x614FA1C3680F1D55) - ((v22 + v23) | 0x9EB05E3C97F0E2AALL) - 0x614FA1C3680F1D56) ^ 0x99C8E49DE01F9759;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0x24734B65A1E08459;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x40C9CFEA3CC5CBE1;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = 8 * (v5 & 7);
  *(v2 + 992) = v31;
  *(v7 + 2141) = v6 ^ v8 ^ (((v30 + v29) ^ 0x6F635C2EE5D7D2C6uLL) >> v31);
  v32 = STACK[0x8070];
  LOBYTE(v7) = *(STACK[0x8070] + 1548);
  v33 = *(v2 + 3752) - 0x30BDFED8F32E674CLL;
  v34 = *v33;
  *(v2 + 1003) = *v33;
  v35 = STACK[0x57A0];
  *(v2 + 1004) = v33 & 0xFFFFFFF8;
  v36 = *(*v10 + ((((v33 & 0xFFFFFFF8) - 555828759) & *v9) & 0xFFFFFFFFFFFFFFF8));
  v37 = __ROR8__(v33 & 0xFFFFFFFFFFFFFFF8, 8);
  *(v2 + 1008) = v37;
  v38 = (v37 + v36) ^ 0x91364DCB68334DBLL;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0x448D6F6CA711D855;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v40, 8);
  v43 = (((2 * (v42 + v41)) & 0xC8526DC55522C946) - (v42 + v41) - 0x642936E2AA9164A4) ^ 0x6E2437CE5DC4B924 ^ __ROR8__(v41, 61);
  v44 = (__ROR8__((((2 * (v42 + v41)) & 0xC8526DC55522C946) - (v42 + v41) - 0x642936E2AA9164A4) ^ 0x6E2437CE5DC4B924, 8) + v43) ^ 0x67536EC0FB8B549DLL;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = __ROR8__(v44, 8);
  v47 = (v46 + v45 - ((2 * (v46 + v45)) & 0x2E38A2FA6F889B22) + 0x171C517D37C44D91) ^ 0xEF9B1423BFD4C79DLL;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = __ROR8__(v47, 8);
  v50 = (((2 * (v49 + v48)) | 0x25A4A8A10FFC0BAALL) - (v49 + v48) + 0x6D2DABAF7801FA2BLL) ^ 0xB6A11F35261E818CLL;
  v51 = v50 ^ __ROR8__(v48, 61);
  v52 = __ROR8__(v50, 8);
  v53 = 8 * (v33 & 7);
  *(v2 + 1016) = v53;
  *(v32 + 1548) = v34 ^ v7 ^ (((__ROR8__((((v52 + v51) | 0x8C7B92FF6C01CC3) - ((v52 + v51) | 0xF73846D0093FE33CLL) - 0x8C7B92FF6C01CC4) ^ 0x480E76C5CA05D722, 8) + ((((v52 + v51) | 0x8C7B92FF6C01CC3) - ((v52 + v51) | 0xF73846D0093FE33CLL) - 0x8C7B92FF6C01CC4) ^ 0x480E76C5CA05D722 ^ __ROR8__(v51, 61))) ^ 0x6F635C2EE5D7D2C6) >> v53);
  v54 = v5 + 2 % v35;
  LOBYTE(v7) = *v54;
  *(v2 + 1027) = *v54;
  v55 = STACK[0x8070];
  LOBYTE(v53) = *(STACK[0x8070] + 955);
  *(v2 + 1028) = v54 & 0xFFFFFFF8;
  v56 = *(*v10 + (((((v54 & 0xFFFFFFF8 ^ 0x93B5A6E6) + ((2 * (v54 & 0xFFFFFFF8)) | 0xD894B233)) & 0xFFFFFFF8) + 1922326736) & *v9));
  v57 = __ROR8__(v54 & 0xFFFFFFFFFFFFFFF8, 8);
  *(v2 + 1032) = v57;
  v58 = (((v57 + v56) | 0xBF8893FBC395DFE1) - ((v57 + v56) | 0x40776C043C6A201ELL) + 0x40776C043C6A201ELL) ^ 0xB69BF7277516EB3ALL;
  v59 = v58 ^ __ROR8__(v56, 61);
  v60 = __ROR8__(v58, 8);
  v61 = (v60 + v59 - ((2 * (v60 + v59)) & 0x80AC4644D841DC7CLL) + 0x405623226C20EE3ELL) ^ 0x4DB4C4ECB31366BLL;
  v62 = v61 ^ __ROR8__(v59, 61);
  v63 = (__ROR8__(v61, 8) + v62) ^ 0xF5F2FED308AA2278;
  v64 = v63 ^ __ROR8__(v62, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ 0x67536EC0FB8B549DLL;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ v1;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = (__ROR8__(v67, 8) + v68) ^ 0x24734B65A1E08459;
  v70 = v69 ^ __ROR8__(v68, 61);
  v71 = (__ROR8__(v69, 8) + v70) ^ 0x40C9CFEA3CC5CBE1;
  v72 = 8 * (v54 & 7);
  *(v2 + 1040) = v72;
  *(v55 + 955) = v7 ^ v53 ^ (((__ROR8__(v71, 8) + (v71 ^ __ROR8__(v70, 61))) ^ 0x6F635C2EE5D7D2C6uLL) >> v72);
  v73 = STACK[0x8070];
  LOBYTE(v55) = *(STACK[0x8070] + 362);
  v74 = v5 + 3 % v35;
  *(v2 + 1052) = v74 & 0xFFFFFFF8;
  v75 = *(*v10 + ((*v9 & ((v74 & 0x4DC7D608 | 0xB23829F0) + (v74 & 0xFFFFFFF8) - (v74 & 0x4DC7D608) + 749113337)) & 0xFFFFFFFFFFFFFFF8));
  v76 = __ROR8__(v74 & 0xFFFFFFFFFFFFFFF8, 8);
  *(v2 + 1056) = v76;
  v77 = (((2 * (v76 + v75)) | 0xEA40106DFE67E2C8) - (v76 + v75) + 0xADFF7C900CC0E9CLL) ^ 0xFC336CEA49B0C5BFLL;
  v78 = v77 ^ __ROR8__(v75, 61);
  v79 = (__ROR8__(v77, 8) + v78) ^ 0x448D6F6CA711D855;
  v80 = v79 ^ __ROR8__(v78, 61);
  v81 = __ROR8__(v79, 8);
  v82 = (((v81 + v80) | 0x31EC22288BA43F2ELL) - ((v81 + v80) | 0xCE13DDD7745BC0D1) - 0x31EC22288BA43F2FLL) ^ 0xC41EDCFB830E1D56 ^ __ROR8__(v80, 61);
  v83 = (__ROR8__((((v81 + v80) | 0x31EC22288BA43F2ELL) - ((v81 + v80) | 0xCE13DDD7745BC0D1) - 0x31EC22288BA43F2FLL) ^ 0xC41EDCFB830E1D56, 8) + v82) ^ 0x67536EC0FB8B549DLL;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = (__ROR8__(v83, 8) + v84) ^ v1;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = __ROR8__(v85, 8);
  v88 = *v74;
  *(v2 + 1051) = *v74;
  v89 = (((v87 + v86) | 0x654966164F0D4AF6) - ((v87 + v86) | 0x9AB699E9B0F2B509) - 0x654966164F0D4AF7) ^ 0x413A2D73EEEDCEAFLL;
  v90 = v89 ^ __ROR8__(v86, 61);
  v91 = (__ROR8__(v89, 8) + v90) ^ 0x40C9CFEA3CC5CBE1;
  v92 = v91 ^ __ROR8__(v90, 61);
  v93 = __ROR8__(v91, 8);
  v94 = 8 * (v74 & 7);
  *(v73 + 362) = v88 ^ v55 ^ (((((2 * (v93 + v92)) | 0x754443FEF3841B36) - (v93 + v92) - 0x3AA221FF79C20D9BLL) ^ 0x55C17DD19C15DF5DuLL) >> v94);
  v95 = STACK[0x8070];
  LOBYTE(v55) = *(STACK[0x8070] + 12699);
  *(v2 + 1064) = v94;
  v96 = v5 + 4 % v35;
  *(v2 + 1076) = v96 & 0xFFFFFFF8;
  v97 = *(*v10 + ((*v9 & ((v96 & 0xB34F2978 | 0x4CB0D682) + (v96 & 0xFFFFFFF8) - (v96 & 0xB34F2978) - 1842486425)) & 0xFFFFFFFFFFFFFFF8));
  v98 = __ROR8__(v96 & 0xFFFFFFFFFFFFFFF8, 8);
  *(v2 + 1080) = v98;
  v99 = (((2 * (v98 + v97)) & 0x2FF4DB6F935E9CAELL) - (v98 + v97) + 0x680592483650B1A8) ^ 0x6116F69480D38573;
  v100 = v99 ^ __ROR8__(v97, 61);
  v101 = __ROR8__(v99, 8);
  v102 = (((v101 + v100) | 0x38598E584F1B31CCLL) - ((v101 + v100) | 0xC7A671A7B0E4CE33) - 0x38598E584F1B31CDLL) ^ 0x7CD4E134E80AE999;
  v103 = v102 ^ __ROR8__(v100, 61);
  v104 = __ROR8__(v102, 8);
  v105 = (((v104 + v103) | 0x190D4AECD23E16ELL) - ((v104 + v103) | 0xFE6F2B5132DC1E91) - 0x190D4AECD23E16FLL) ^ 0xF4622A7DC589C316;
  v106 = v105 ^ __ROR8__(v103, 61);
  v107 = __ROR8__(v105, 8);
  v108 = (((v107 + v106) | 0x5803E26B3ECD72F4) - ((v107 + v106) | 0xA7FC1D94C1328D0BLL) - 0x5803E26B3ECD72F5) ^ 0x3F508CABC5462669;
  v109 = v108 ^ __ROR8__(v106, 61);
  v110 = (__ROR8__(v108, 8) + v109) ^ v1;
  v111 = v110 ^ __ROR8__(v109, 61);
  v112 = (__ROR8__(v110, 8) + v111) ^ 0x24734B65A1E08459;
  v113 = v112 ^ __ROR8__(v111, 61);
  v114 = __ROR8__(v112, 8);
  v115 = *v96;
  *(v2 + 1075) = *v96;
  v116 = (((2 * (v114 + v113)) | 0xC27478282D84E370) - (v114 + v113) - 0x613A3C1416C271B8) ^ 0x21F3F3FE2A07BA59;
  v117 = v116 ^ __ROR8__(v113, 61);
  v118 = __ROR8__(v116, 8);
  v119 = 8 * (v96 & 7);
  *(v2 + 1088) = v119;
  *(v95 + 12699) = v115 ^ v55 ^ (((((v118 + v117) | 0x679CB6D8E1D7FA0) - ((v118 + v117) | 0xF986349271E2805FLL) - 0x679CB6D8E1D7FA1) ^ 0x691A97436BCAAD66) >> v119);
  v120 = STACK[0x8070];
  LOBYTE(v55) = *(STACK[0x8070] + 12106);
  v121 = v5 + 5 % v35;
  LOBYTE(v119) = *v121;
  *(v2 + 1099) = *v121;
  LODWORD(v117) = ((v121 & 0xFFFFFFF8) - 555828759) & 0xFFFFFFF8;
  *(v2 + 1100) = v117;
  v122 = *(*v10 + (v117 & *v9));
  v123 = __ROR8__(v121 & 0xFFFFFFFFFFFFFFF8, 8);
  *(v2 + 1104) = v123;
  v124 = (v123 + v122) ^ 0x91364DCB68334DBLL;
  v125 = v124 ^ __ROR8__(v122, 61);
  v126 = __ROR8__(v124, 8);
  v127 = (((2 * (v126 + v125)) | 0xDF12303923B35D6ALL) - (v126 + v125) + 0x1076E7E36E26514BLL) ^ 0xAB04777036C876E0;
  v128 = v127 ^ __ROR8__(v125, 61);
  v129 = __ROR8__(v127, 8);
  v130 = (((2 * (v129 + v128)) & 0x7DB55B6345CFF7E4) - (v129 + v128) + 0x4125524E5D18040DLL) ^ 0xB4D7AC9D55B22675;
  v131 = v130 ^ __ROR8__(v128, 61);
  v132 = (__ROR8__(v130, 8) + v131) ^ 0x67536EC0FB8B549DLL;
  v133 = v132 ^ __ROR8__(v131, 61);
  v134 = __ROR8__(v132, 8);
  v135 = (((2 * (v134 + v133)) & 0x75B281F4F50A34CALL) - (v134 + v133) - 0x3AD940FA7A851A66) ^ 0x3DA1FA5B0D6A6F96 ^ __ROR8__(v133, 61);
  v136 = (__ROR8__((((2 * (v134 + v133)) & 0x75B281F4F50A34CALL) - (v134 + v133) - 0x3AD940FA7A851A66) ^ 0x3DA1FA5B0D6A6F96, 8) + v135) ^ 0x24734B65A1E08459;
  v137 = v136 ^ __ROR8__(v135, 61);
  v138 = (__ROR8__(v136, 8) + v137) ^ 0x40C9CFEA3CC5CBE1;
  v139 = 8 * (v121 & 7);
  *(v2 + 1112) = v139;
  *(v120 + 12106) = v119 ^ v55 ^ (((__ROR8__(v138, 8) + (v138 ^ __ROR8__(v137, 61))) ^ 0x6F635C2EE5D7D2C6uLL) >> v139);
  v140 = v5 + 6 % v35;
  LOBYTE(v120) = *v140;
  *(v2 + 1123) = *v140;
  v141 = STACK[0x8070];
  LOBYTE(v119) = *(STACK[0x8070] + 11513);
  *(v2 + 1124) = v140 & 0xFFFFFFF8;
  v142 = *(*v10 + (((v140 & 0xFFFFFFF8 ^ 0xF1432D32) - 308576641 + ((2 * (v140 & 0xFFFFFFF8)) & 0xE2865A60) + 3639) & *v9));
  v143 = __ROR8__(v140 & 0xFFFFFFFFFFFFFFF8, 8);
  *(v2 + 1128) = v143;
  v144 = (v143 + v142) ^ 0x91364DCB68334DBLL;
  v145 = v144 ^ __ROR8__(v142, 61);
  v146 = (__ROR8__(v144, 8) + v145) ^ 0x448D6F6CA711D855;
  v147 = v146 ^ __ROR8__(v145, 61);
  v148 = (__ROR8__(v146, 8) + v147) ^ 0xF5F2FED308AA2278;
  v149 = v148 ^ __ROR8__(v147, 61);
  v150 = (__ROR8__(v148, 8) + v149) ^ 0x67536EC0FB8B549DLL;
  v151 = v150 ^ __ROR8__(v149, 61);
  v152 = (__ROR8__(v150, 8) + v151) ^ v1;
  v153 = v152 ^ __ROR8__(v151, 61);
  v154 = __ROR8__(v152, 8);
  v155 = (((2 * (v154 + v153)) & 0xC560954AF3C2342ALL) - (v154 + v153) - 0x62B04AA579E11A16) ^ 0xB93CFE3F27FE61B3;
  v156 = v155 ^ __ROR8__(v153, 61);
  v157 = (__ROR8__(v155, 8) + v156) ^ 0x40C9CFEA3CC5CBE1;
  v158 = v157 ^ __ROR8__(v156, 61);
  v159 = __ROR8__(v157, 8);
  v160 = 8 * (v140 & 7);
  *(v2 + 1136) = v160;
  *(v141 + 11513) = v120 ^ v119 ^ (((((2 * (v159 + v158)) & 0x10EFCC3237400598) - (v159 + v158) + 0x778819E6E45FFD33) ^ 0x18EB45C801882FF5uLL) >> v160);
  v161 = STACK[0x8070];
  LOBYTE(v119) = *(STACK[0x8070] + 10920);
  v162 = v5 + 7 % v35;
  LODWORD(v158) = ((v162 & 0xFFFFFFF8) - 555828759) & 0xFFFFFFF8;
  *(v2 + 1148) = v158;
  v163 = *(*v10 + (v158 & *v9));
  v164 = __ROR8__(v162 & 0xFFFFFFFFFFFFFFF8, 8);
  *(v2 + 1152) = v164;
  v165 = (v164 + v163 - ((2 * (v164 + v163)) & 0x50F325C9665714CELL) - 0x57866D1B4CD47599) ^ 0xA16AF63805A8BEBCLL ^ __ROR8__(v163, 61);
  v166 = (__ROR8__((v164 + v163 - ((2 * (v164 + v163)) & 0x50F325C9665714CELL) - 0x57866D1B4CD47599) ^ 0xA16AF63805A8BEBCLL, 8) + v165) ^ 0x448D6F6CA711D855;
  v167 = v166 ^ __ROR8__(v165, 61);
  v168 = (__ROR8__(v166, 8) + v167) ^ 0xF5F2FED308AA2278;
  v169 = v168 ^ __ROR8__(v167, 61);
  v170 = __ROR8__(v168, 8);
  v171 = __ROR8__((v170 + v169 - ((2 * (v170 + v169)) & 0x4FFD45C00AA19C06) + 0x27FEA2E00550CE03) ^ 0x40ADCC20FEDB9A9ELL, 8);
  v172 = (v170 + v169 - ((2 * (v170 + v169)) & 0x4FFD45C00AA19C06) + 0x27FEA2E00550CE03) ^ 0x40ADCC20FEDB9A9ELL ^ __ROR8__(v169, 61);
  v173 = (((2 * (v171 + v172)) | 0x36224523DB948DA2) - (v171 + v172) - 0x1B112291EDCA46D1) ^ 0xE39667CF65DACCDDLL;
  v174 = v173 ^ __ROR8__(v172, 61);
  v175 = __ROR8__(v173, 8);
  LOBYTE(v171) = *v162;
  v176 = (((2 * (v175 + v174)) & 0xD429C16D2EBA21B6) - (v175 + v174) + 0x15EB1F4968A2EF24) ^ 0x3198542CC9426B7DLL;
  v177 = v176 ^ __ROR8__(v174, 61);
  *(v2 + 1147) = *v162;
  v178 = (__ROR8__(v176, 8) + v177) ^ 0x40C9CFEA3CC5CBE1;
  v179 = 8 * (v162 & 7);
  *(v2 + 1160) = v179;
  *(v161 + 10920) = v171 ^ v119 ^ (((__ROR8__(v178, 8) + (v178 ^ __ROR8__(v177, 61))) ^ 0x6F635C2EE5D7D2C6uLL) >> v179);
  v180 = v5 + 8 % v35;
  LOBYTE(v137) = *v180;
  *(v2 + 1171) = *v180;
  *(v2 + 1172) = v180 & 0xFFFFFFF8;
  v181 = *(*v10 + ((((2 * (v180 & 0xFFFFFFF8)) | 0x2B409DF9) + (v180 & 0xFFFFFFF8 ^ 0x6A5FB102) + 1228827373) & *v9));
  v182 = __ROR8__(v180 & 0xFFFFFFFFFFFFFFF8, 8);
  *(v2 + 1176) = v182;
  v183 = (v182 + v181) ^ 0x91364DCB68334DBLL;
  v184 = v183 ^ __ROR8__(v181, 61);
  v185 = (__ROR8__(v183, 8) + v184) ^ 0x448D6F6CA711D855;
  v186 = v185 ^ __ROR8__(v184, 61);
  v187 = (__ROR8__(v185, 8) + v186) ^ 0xF5F2FED308AA2278;
  v188 = v187 ^ __ROR8__(v186, 61);
  v189 = __ROR8__(v187, 8);
  v190 = (v189 + v188 - ((2 * (v189 + v188)) & 0xA330E54950022824) - 0x2E678D5B57FEEBEELL) ^ 0xB6CB1C64538A408FLL;
  v191 = v190 ^ __ROR8__(v188, 61);
  v192 = (__ROR8__(v190, 8) + v191) ^ v1;
  v193 = v192 ^ __ROR8__(v191, 61);
  v194 = (__ROR8__(v192, 8) + v193) ^ 0x24734B65A1E08459;
  v195 = v194 ^ __ROR8__(v193, 61);
  v196 = __ROR8__(v194, 8);
  v197 = STACK[0x8070];
  v198 = (((2 * (v196 + v195)) | 0xE9F66950C79C46BALL) - (v196 + v195) - 0x74FB34A863CE235DLL) ^ 0x3432FB425F0BE8BCLL;
  v199 = v198 ^ __ROR8__(v195, 61);
  v200 = __ROR8__(v198, 8);
  v201 = ((v200 + v199) | 0xC1A909DAB57E5392) - ((v200 + v199) | 0x3E56F6254A81AC6DLL);
  LOBYTE(v199) = *(STACK[0x8070] + 10327);
  v202 = 8 * (v180 & 7);
  *(v2 + 1184) = v202;
  *(v197 + 10327) = v137 ^ v199 ^ (((v201 + 0x3E56F6254A81AC6DLL) ^ 0xAECA55F450A98154) >> v202);
  v203 = STACK[0x8070];
  LOBYTE(v202) = *(STACK[0x8070] + 9734);
  v204 = v5 + 9 % v35;
  *(v2 + 1196) = v204 & 0xFFFFFFF8;
  v205 = *(*v10 + (((v204 & 0xFFFFFFF8 ^ 0xEDB8754C) - 249150308 + ((2 * (v204 & 0xFFFFFFF8)) & 0xDB70EA90)) & *v9));
  v206 = __ROR8__(v204 & 0xFFFFFFFFFFFFFFF8, 8);
  *(v2 + 1200) = v206;
  v207 = (v206 + v205) ^ 0x91364DCB68334DBLL;
  v208 = v207 ^ __ROR8__(v205, 61);
  v209 = (__ROR8__(v207, 8) + v208) ^ 0x448D6F6CA711D855;
  v210 = __ROR8__(v209, 8);
  v211 = v209 ^ __ROR8__(v208, 61);
  v212 = (v210 + v211) ^ 0xF5F2FED308AA2278;
  v213 = v212 ^ __ROR8__(v211, 61);
  v214 = (__ROR8__(v212, 8) + v213) ^ 0x67536EC0FB8B549DLL;
  v215 = v214 ^ __ROR8__(v213, 61);
  v216 = __ROR8__(v214, 8);
  v217 = __ROR8__((v216 + v215 - ((2 * (v216 + v215)) & 0xF84F4492567F93BCLL) - 0x3D85DB6D4C03622) ^ 0x4A0E717A32F43D2, 8);
  v218 = (v216 + v215 - ((2 * (v216 + v215)) & 0xF84F4492567F93BCLL) - 0x3D85DB6D4C03622) ^ 0x4A0E717A32F43D2 ^ __ROR8__(v215, 61);
  v219 = (v217 + v218) ^ 0x24734B65A1E08459;
  v220 = v219 ^ __ROR8__(v218, 61);
  v221 = __ROR8__(v219, 8);
  LOBYTE(v217) = *v204;
  *(v2 + 1195) = *v204;
  v222 = (v221 + v220 - ((2 * (v221 + v220)) & 0xBB1087AB4A5FB91CLL) + 0x5D8843D5A52FDC8ELL) ^ 0x1D418C3F99EA176FLL;
  v223 = 8 * (v204 & 7);
  *(v203 + 9734) = v217 ^ v202 ^ (((__ROR8__(v222, 8) + (v222 ^ __ROR8__(v220, 61))) ^ 0x6F635C2EE5D7D2C6) >> v223);
  *(v2 + 1208) = v223;
  v224 = v5 + v0 % v35;
  LOBYTE(v203) = *v224;
  v225 = STACK[0x8070];
  LOBYTE(v202) = *(STACK[0x8070] + 9141);
  *(v2 + 1219) = *v224;
  v226 = *(*v10 + ((((((2 * (v224 & 0xFFFFFFF8)) & 0xB61D77E0) + (v224 & 0xFFFFFFF8 ^ 0xDB0EBBF1)) & 0xFFFFFFF8) + 63962616) & *v9));
  *(v2 + 1220) = v224 & 0xFFFFFFF8;
  v227 = __ROR8__(v224 & 0xFFFFFFFFFFFFFFF8, 8);
  *(v2 + 1224) = v227;
  v228 = (v227 + v226) ^ 0x91364DCB68334DBLL;
  v229 = v228 ^ __ROR8__(v226, 61);
  v230 = (__ROR8__(v228, 8) + v229) ^ 0x448D6F6CA711D855;
  v231 = v230 ^ __ROR8__(v229, 61);
  v232 = __ROR8__(v230, 8);
  v233 = (v232 + v231 - ((2 * (v232 + v231)) & 0x633EED8F673020F4) + 0x319F76C7B398107ALL) ^ 0xC46D8814BB323202;
  v234 = v233 ^ __ROR8__(v231, 61);
  v235 = (__ROR8__(v233, 8) + v234) ^ 0x67536EC0FB8B549DLL;
  v236 = v235 ^ __ROR8__(v234, 61);
  v237 = __ROR8__(v235, 8);
  v238 = __ROR8__((((v237 + v236) ^ 0xA1485708AE5C76DBLL | 0xD59D14B782E695DALL) - ((v237 + v236) ^ 0xA1485708AE5C76DBLL | 0x2A62EB487D196A25) + 0x2A62EB487D196A25) ^ 0x8C5206E1A4AA690DLL, 8);
  v239 = (((v237 + v236) ^ 0xA1485708AE5C76DBLL | 0xD59D14B782E695DALL) - ((v237 + v236) ^ 0xA1485708AE5C76DBLL | 0x2A62EB487D196A25) + 0x2A62EB487D196A25) ^ 0x8C5206E1A4AA690DLL ^ __ROR8__(v236, 61);
  v240 = (v238 + v239 - ((2 * (v238 + v239)) & 0x461532AE2BDDD6AALL) + 0x230A995715EEEB55) ^ 0x779D232B40E6F0CLL;
  v241 = v240 ^ __ROR8__(v239, 61);
  v242 = (__ROR8__(v240, 8) + v241) ^ 0x40C9CFEA3CC5CBE1;
  v243 = 8 * (v224 & 7);
  *(v2 + 1232) = v243;
  *(v225 + 9141) = v203 ^ v202 ^ (((__ROR8__(v242, 8) + (v242 ^ __ROR8__(v241, 61))) ^ 0x6F635C2EE5D7D2C6uLL) >> v243);
  v244 = v5 + 0xB % v35;
  LOBYTE(v141) = *v244;
  v245 = STACK[0x8070];
  LOBYTE(v202) = *(STACK[0x8070] + 8548);
  *(v2 + 1243) = *v244;
  LODWORD(v242) = ((v244 & 0xFFFFFFF8) - 555828759) & 0xFFFFFFF8;
  *(v2 + 1244) = v242;
  v246 = *(*v10 + (v242 & *v9));
  v247 = __ROR8__(v244 & 0xFFFFFFFFFFFFFFF8, 8);
  *(v2 + 1248) = v247;
  v248 = (v247 + v246) ^ 0x91364DCB68334DBLL;
  v249 = v248 ^ __ROR8__(v246, 61);
  v250 = __ROR8__(v248, 8);
  v251 = (v250 + v249 - ((2 * (v250 + v249)) & 0xEA3F12DC4706C09ELL) + 0x751F896E2383604FLL) ^ 0x3192E6028492B81ALL;
  v252 = v251 ^ __ROR8__(v249, 61);
  v253 = (__ROR8__(v251, 8) + v252) ^ 0xF5F2FED308AA2278;
  v254 = __ROR8__(v253, 8);
  v255 = v253 ^ __ROR8__(v252, 61);
  v256 = (v254 + v255) ^ 0x67536EC0FB8B549DLL;
  v257 = v256 ^ __ROR8__(v255, 61);
  v258 = (__ROR8__(v256, 8) + v257) ^ 0xF887455E88108A0CLL;
  v259 = v258 ^ __ROR8__(v257, 61);
  v260 = __ROR8__(v258, 8);
  v261 = __ROR8__((((2 * (v260 + v259)) | 0xD4729FC3B3B0A8DELL) - (v260 + v259) - 0x6A394FE1D9D8546FLL) ^ 0x4E4A04847838D036, 8);
  v262 = (((2 * (v260 + v259)) | 0xD4729FC3B3B0A8DELL) - (v260 + v259) - 0x6A394FE1D9D8546FLL) ^ 0x4E4A04847838D036 ^ __ROR8__(v259, 61);
  v263 = 8 * (v244 & 7);
  *(v2 + 1256) = v263;
  *(v245 + 8548) = v141 ^ v202 ^ (((__ROR8__((v261 + v262) ^ 0x40C9CFEA3CC5CBE1, 8) + ((v261 + v262) ^ 0x40C9CFEA3CC5CBE1 ^ __ROR8__(v262, 61))) ^ 0x6F635C2EE5D7D2C6) >> v263);
  v264 = v5 + 0xC % v35;
  v265 = STACK[0x8070];
  LOBYTE(v202) = *(STACK[0x8070] + 7955);
  *(v2 + 1272) = v264 & 0xFFFFFFF8;
  LODWORD(v258) = 2 * (v264 & 0xFFFFFFF8);
  *(v2 + 1276) = v258;
  v266 = *(*v10 + ((*v9 & ((v258 & 0xC5F62FD0) + (v264 & 0xFFFFFFF8 ^ 0x62FB17E8) + 2078515713)) & 0xFFFFFFFFFFFFFFF8));
  v267 = __ROR8__(v264 & 0xFFFFFFFFFFFFFFF8, 8);
  *(v2 + 1280) = v267;
  v268 = (v267 + v266) ^ 0x91364DCB68334DBLL;
  v269 = v268 ^ __ROR8__(v266, 61);
  v270 = (__ROR8__(v268, 8) + v269) ^ 0x448D6F6CA711D855;
  v271 = v270 ^ __ROR8__(v269, 61);
  v272 = (__ROR8__(v270, 8) + v271) ^ 0xF5F2FED308AA2278;
  v273 = v272 ^ __ROR8__(v271, 61);
  v274 = __ROR8__(v272, 8);
  LOBYTE(v261) = *v264;
  v275 = (((v274 + v273) | 0x3F128961E8D07561) - ((v274 + v273) | 0xC0ED769E172F8A9ELL) - 0x3F128961E8D07562) ^ 0x5841E7A1135B21FCLL;
  v276 = v275 ^ __ROR8__(v273, 61);
  *(v2 + 1271) = *v264;
  v277 = (__ROR8__(v275, 8) + v276) ^ 0xF887455E88108A0CLL;
  v278 = v277 ^ __ROR8__(v276, 61);
  v279 = (__ROR8__(v277, 8) + v278) ^ 0x24734B65A1E08459;
  v280 = v279 ^ __ROR8__(v278, 61);
  v281 = (__ROR8__(v279, 8) + v280) ^ 0x40C9CFEA3CC5CBE1;
  v282 = v281 ^ __ROR8__(v280, 61);
  v283 = __ROR8__(v281, 8);
  v284 = 8 * (v264 & 7);
  *(v2 + 1288) = v284;
  *(v265 + 7955) = v261 ^ v202 ^ (((v283 + v282 - ((2 * (v283 + v282)) & 0x951E77563B21A594) + 0x4A8F3BAB1D90D2CALL) ^ 0x25EC6785F847000CLL) >> v284);
  v285 = v5 + 0xD % v35;
  LOBYTE(v265) = *v285;
  *(v2 + 1299) = *v285;
  v286 = STACK[0x8070];
  LOBYTE(v202) = *(STACK[0x8070] + 7362);
  *(v2 + 1300) = v285 & 0xFFFFFFF8;
  v287 = *(*v10 + (((v285 & 0xBB075DD0 | 0x44F8A22A) + (v285 & 0xFFFFFFF8) - (v285 & 0xBB075DD0) - 1712973890) & *v9));
  v288 = __ROR8__(v285 & 0xFFFFFFFFFFFFFFF8, 8);
  *(v2 + 1304) = v288;
  v289 = (((2 * (v288 + v287)) | 0x67C9A9EBA680F70CLL) - (v288 + v287) + 0x4C1B2B0A2CBF847ALL) ^ 0xBAF7B02965C34F5DLL;
  v290 = v289 ^ __ROR8__(v287, 61);
  v291 = (__ROR8__(v289, 8) + v290) ^ 0x448D6F6CA711D855;
  v292 = v291 ^ __ROR8__(v290, 61);
  v293 = (__ROR8__(v291, 8) + v292) ^ 0xF5F2FED308AA2278;
  v294 = __ROR8__(v293, 8);
  v295 = v293 ^ __ROR8__(v292, 61);
  v296 = (v294 + v295) ^ 0x67536EC0FB8B549DLL;
  v297 = v296 ^ __ROR8__(v295, 61);
  v298 = __ROR8__(v296, 8);
  v299 = (((v298 + v297) | 0x192E33DB07203ED2) - ((v298 + v297) | 0xE6D1CC24F8DFC12DLL) - 0x192E33DB07203ED3) ^ 0xE1A976858F30B4DELL;
  v300 = v299 ^ __ROR8__(v297, 61);
  v301 = (__ROR8__(v299, 8) + v300) ^ 0x24734B65A1E08459;
  v302 = v301 ^ __ROR8__(v300, 61);
  v303 = (__ROR8__(v301, 8) + v302) ^ 0x40C9CFEA3CC5CBE1;
  v304 = 8 * (v285 & 7);
  *(v2 + 1312) = v304;
  *(v286 + 7362) = v265 ^ v202 ^ (((__ROR8__(v303, 8) + (v303 ^ __ROR8__(v302, 61))) ^ 0x6F635C2EE5D7D2C6uLL) >> v304);
  v305 = v5 + 0xE % v35;
  LOBYTE(v265) = *v305;
  *(v2 + 1323) = *v305;
  v306 = STACK[0x8070];
  LOBYTE(v202) = *(STACK[0x8070] + 6769);
  *(v2 + 1324) = v305 & 0xFFFFFFF8;
  v307 = *(*v10 + ((*v9 & (-170520993 * (((-22308034 * (v305 & 0xFFFFFFF8)) & 0x80557DE0) + ((2136329631 * (v305 & 0xFFFFFFF8)) ^ 0xC02ABEF6)) + 686581919)) & 0xFFFFFFFFFFFFFFF8));
  v308 = __ROR8__(v305 & 0xFFFFFFFFFFFFFFF8, 8);
  *(v2 + 1328) = v308;
  v309 = (v308 + v307) ^ 0x91364DCB68334DBLL;
  v310 = v309 ^ __ROR8__(v307, 61);
  v311 = __ROR8__(v309, 8);
  v312 = (v311 + v310 - ((2 * (v311 + v310)) & 0x41D9C52604312290) + 0x20ECE29302189148) ^ 0x64618DFFA509491DLL;
  v313 = v312 ^ __ROR8__(v310, 61);
  v314 = __ROR8__(v312, 8);
  v315 = (((2 * (v314 + v313)) | 0x7EE196188782D4B2) - (v314 + v313) - 0x3F70CB0C43C16A59) ^ 0xCA8235DF4B6B4821;
  v316 = v315 ^ __ROR8__(v313, 61);
  v317 = __ROR8__(v315, 8);
  v318 = (((2 * (v317 + v316)) & 0x1D9C21B892742C8) - (v317 + v316) + 0x7F131EF23B6C5E9BLL) ^ 0x18407032C0E70A06;
  v319 = v318 ^ __ROR8__(v316, 61);
  v320 = __ROR8__(v318, 8);
  v321 = (((2 * (v320 + v319)) & 0x7D4340577E087A18) - (v320 + v319) + 0x415E5FD440FBC2F3) ^ 0xB9D91A8AC8EB48FFLL;
  v322 = v321 ^ __ROR8__(v319, 61);
  v323 = (__ROR8__(v321, 8) + v322) ^ 0x24734B65A1E08459;
  v324 = __ROR8__(v323, 8);
  v325 = v323 ^ __ROR8__(v322, 61);
  v326 = (v324 + v325) ^ 0x40C9CFEA3CC5CBE1;
  v327 = v326 ^ __ROR8__(v325, 61);
  v328 = __ROR8__(v326, 8);
  v329 = 8 * (v305 & 7);
  *(v2 + 1336) = v329;
  *(v306 + 6769) = v265 ^ v202 ^ (((((2 * (v328 + v327)) & 0x68706772E40544B0) - (v328 + v327) + 0x4BC7CC468DFD5DA7) ^ 0x24A49068682A8F61uLL) >> v329);
  v330 = v5 + 0xF % v35;
  LOBYTE(v141) = *v330;
  *(v2 + 1347) = *v330;
  v331 = STACK[0x8070];
  LOBYTE(v329) = *(STACK[0x8070] + 6176);
  v332 = *(*v10 + (((v330 & 0xFFFFFFF8 ^ 0x102EE78A) - 827338146 + ((2 * (v330 & 0xFFFFFFF8)) & 0x205DCF10)) & *v9));
  v333 = __ROR8__(v330 & 0xFFFFFFFFFFFFFFF8, 8);
  *(v2 + 1348) = v330 & 0xFFFFFFF8;
  *(v2 + 1352) = v333;
  v334 = (v333 + v332) ^ 0x91364DCB68334DBLL ^ __ROR8__(v332, 61);
  v335 = (__ROR8__((v333 + v332) ^ 0x91364DCB68334DBLL, 8) + v334) ^ 0x448D6F6CA711D855;
  v336 = v335 ^ __ROR8__(v334, 61);
  v337 = (__ROR8__(v335, 8) + v336) ^ 0xF5F2FED308AA2278;
  v338 = v337 ^ __ROR8__(v336, 61);
  v339 = __ROR8__(v337, 8);
  v340 = (((v339 + v338) & 0x49349EF0BEF761D7 ^ 0x492400C038C42050) + ((v339 + v338) ^ 0x12189E39863343AFLL) - (((v339 + v338) ^ 0x12189E39863343AFLL) & 0x49349EF0BEF761D7)) ^ 0x3C7F6E09C34F76E5;
  v341 = v340 ^ __ROR8__(v338, 61);
  v342 = __ROR8__(v340, 8);
  v343 = (((v342 + v341) & 0xA7DA38C26B41012 ^ 0x270A28426341010) + ((v342 + v341) ^ 0x4D8F5D0B408A0AC2) - (((v342 + v341) ^ 0x4D8F5D0B408A0AC2) & 0xA7DA38C26B41012)) ^ 0xBF75BBD9EE2E90DCLL;
  v344 = v343 ^ __ROR8__(v341, 61);
  v345 = (__ROR8__(v343, 8) + v344) ^ 0x24734B65A1E08459;
  v346 = v345 ^ __ROR8__(v344, 61);
  v347 = __ROR8__(v345, 8);
  v348 = (((2 * (v347 + v346)) | 0x97F80E5EE4C4F2EALL) - (v347 + v346) + 0x3403F8D08D9D868BLL) ^ 0x8B35C8C54EA7B294;
  v349 = v348 ^ __ROR8__(v346, 61);
  v350 = __ROR8__(v348, 8);
  v351 = 8 * (v330 & 7);
  *(v2 + 1360) = v351;
  *(v331 + 6176) = v141 ^ v329 ^ (((v350 + v349 - ((2 * (v350 + v349)) & 0xB43D6BCD7CD7B1AALL) - 0x25E14A194194272BLL) ^ 0xB57DE9C85BBC0A13) >> v351);
  v352 = STACK[0x8070];
  v353 = (*(STACK[0x8070] + 955) ^ 0xB7) << 16;
  v354 = (((v352[2141] ^ 0xDB359CDFA90565EBLL) & ~v353 | v353 & 0xFA0000) ^ 0xDB359CDFA905655CLL) + ((v352[12699] ^ 0xB7u) << 32) + ((v352[12106] << 40) ^ 0xB70000000000) + ((v352[1548] ^ 0xB7) << 8) + ((v352[362] << 24) ^ 0xB7000000);
  v355 = *(STACK[0x8070] + 10327);
  v356 = ((v352[9141] ^ 0xB7) << 16) | ((v352[9734] ^ 0xB7) << 8) | (v352[8548] << 24);
  v357 = (((v352[7362] ^ 0xB7u) << 40) | ((v352[7955] ^ 0xB7u) << 32) | (v352[6769] << 48) | (v352[6176] << 56)) ^ 0xB7B7000000000000 | ((v356 ^ 0x1C7EBEC608D15FFFLL) & (v355 ^ 0x1C7EBEC6BFD15FEBLL) | v356 & 0x402EA000) ^ 0x1C7EBEC6BFD15F5CLL;
  v358 = (v354 + (((v352[11513] << 48) | (v352[10920] << 56)) ^ 0xB7B7000000000000)) ^ (v354 << 23);
  v359 = v358 ^ (v358 >> 17) ^ v357 ^ (v357 >> 26);
  LOBYTE(v356) = (v359 ^ 0x45) - ((2 * (v359 ^ 0x45)) & 0x96) - 53;
  LOBYTE(v355) = (((v356 ^ 0x3A) - 58) ^ ((v356 ^ 0x87) + 121) ^ ((v356 ^ 0x76) - 118)) + (((v355 ^ 0x5D) - 93) ^ ((v355 ^ 0x55) - 85) ^ ((v355 ^ 0xBF) + 65));
  LOBYTE(v356) = v355 - 67;
  LOBYTE(v355) = (66 - v355) & 0xC5 | 0x2A;
  LOBYTE(v326) = v355 ^ v356 & 0x56;
  v352[2141] = v356 ^ (2 * ((v356 ^ 0x44) & (2 * ((v356 ^ 0x44) & (2 * ((v356 ^ 0x44) & (2 * ((v356 ^ 0x44) & (2 * ((v356 ^ 0x44) & (2 * ((v356 ^ 0x44) & (2 * v355) ^ v326)) ^ v326)) ^ v326)) ^ v326)) ^ v326)) ^ v326)) ^ 0x24;
  v360 = v357 ^ (v357 << 23) ^ ((v357 ^ (v357 << 23)) >> 17) ^ ((v359 ^ 0xF4C29045) >> 26);
  LOBYTE(v357) = v357 ^ ((v357 ^ (v357 << 23)) >> 17) ^ ((v359 ^ 0xF4C29045) >> 26) ^ v359;
  v361 = v360 ^ v359 ^ ((v360 ^ v359) << 23);
  *(STACK[0x8070] + 1548) = ((v360 ^ v359) + (v359 ^ 0x45) - ((2 * ((v360 ^ v359) + (v359 ^ 0x45))) & 0xEC) + 118) ^ 0xC1;
  v362 = ((v359 ^ 0xF4C29045) << 23) ^ ((((v359 ^ 0xF4C29045) << 23) ^ v359 ^ 0xF4C29045) >> 17) ^ v360 ^ ((v360 ^ v359) >> 26);
  v363 = v361 ^ (v361 >> 17) ^ v362 ^ (v362 >> 26);
  *(STACK[0x8070] + 955) = (v362 + v357 - ((2 * (v362 + v357)) & 0x74) - 70) ^ 0xD;
  v364 = v362 ^ (v362 << 23) ^ ((v362 ^ (v362 << 23)) >> 17) ^ v363 ^ ((v363 ^ 0xF4C29045) >> 26);
  *(STACK[0x8070] + 362) = ((v363 ^ 0x45) + v362 - ((2 * ((v363 ^ 0x45) + v362)) & 0x94) + 74) ^ 0xFD;
  LOBYTE(v362) = (v364 + (v363 ^ 0x45) + (~(2 * (v364 + (v363 ^ 0x45))) | 0xAD) - 86) ^ 0x1E;
  v365 = v363 ^ 0xF4C29045 ^ ((v363 ^ 0xF4C29045) << 23) ^ ((v363 ^ 0xF4C29045 ^ ((v363 ^ 0xF4C29045) << 23)) >> 17) ^ v364 ^ (v364 >> 26);
  *(STACK[0x8070] + 12699) = v362;
  v366 = v364 ^ (v364 << 23) ^ ((v364 ^ (v364 << 23)) >> 17) ^ v365 ^ ((v365 ^ 0xF4C29045) >> 26);
  v367 = v365 ^ 0xF4C29045 ^ ((v365 ^ 0xF4C29045) << 23) ^ ((v365 ^ 0xF4C29045 ^ ((v365 ^ 0xF4C29045) << 23)) >> 17) ^ v366 ^ (v366 >> 26);
  *(STACK[0x8070] + 11513) = (v366 + (v365 ^ 0x45) - ((2 * (v366 + (v365 ^ 0x45))) & 0xCF) - 25) ^ 0x50;
  *(STACK[0x8070] + 12106) = ((v365 ^ 0x45) + v364 - ((2 * ((v365 ^ 0x45) + v364)) & 0x3A) - 99) ^ 0x2A;
  v368 = v366 ^ (v366 << 23) ^ ((v366 ^ (v366 << 23)) >> 17) ^ v367 ^ ((v367 ^ 0xF4C29045) >> 26);
  v369 = v367 ^ 0xF4C29045 ^ ((v367 ^ 0xF4C29045) << 23) ^ ((v367 ^ 0xF4C29045 ^ ((v367 ^ 0xF4C29045) << 23)) >> 17) ^ v368 ^ (v368 >> 26);
  *(STACK[0x8070] + 10327) = (v368 + (v367 ^ 0x45) - ((2 * (v368 + (v367 ^ 0x45))) & 0xEC) + 118) ^ 0xC1;
  *(STACK[0x8070] + 10920) = ((v367 ^ 0x45) + v366 - ((2 * ((v367 ^ 0x45) + v366)) & 0xE4) + 114) ^ 0xC5;
  v370 = v368 ^ (v368 << 23) ^ ((v368 ^ (v368 << 23)) >> 17) ^ v369 ^ ((v369 ^ 0xF4C29045) >> 26);
  *(STACK[0x8070] + 9734) = ((v369 ^ 0x45) + v368 - ((2 * ((v369 ^ 0x45) + v368)) & 0x28) + 20) ^ 0xA3;
  *(STACK[0x8070] + 9141) = (v370 + (v369 ^ 0x45) - ((2 * (v370 + (v369 ^ 0x45))) & 0xF7) + 123) ^ 0xCC;
  v371 = ((v369 ^ 0xF4C29045) << 23) ^ v369 ^ ((((v369 ^ 0xF4C29045) << 23) ^ v369 ^ 0xF4C29045) >> 17) ^ v370 ^ (v370 >> 26);
  LOBYTE(v365) = ((v369 ^ ((((v369 ^ 0xF4C29045) << 23) ^ v369 ^ 0xF4C29045) >> 17) ^ v370 ^ (v370 >> 26)) + v370 + (~(2 * ((v369 ^ ((((v369 ^ 0xF4C29045) << 23) ^ v369 ^ 0xF4C29045) >> 17) ^ v370 ^ (v370 >> 26)) + v370)) | 0xBB) - 93) ^ 0x15;
  v372 = v370 ^ (v370 << 23) ^ ((v370 ^ (v370 << 23)) >> 17) ^ v371 ^ (v371 >> 26);
  LOBYTE(v367) = v372 ^ 0x45;
  *(STACK[0x8070] + 8548) = v365;
  *(STACK[0x8070] + 7955) = ((v372 ^ 0x45) + v371 - ((2 * ((v372 ^ 0x45) + v371)) & 0x14) - 118) ^ 0x3D;
  v373 = v372 ^ 0xF4C29045 ^ ((v372 ^ 0xF4C29045) << 23);
  v374 = v371 ^ (v371 << 23) ^ ((v371 ^ (v371 << 23)) >> 17) ^ v372 ^ ((v372 ^ 0xF4C29045) >> 26);
  LOBYTE(v371) = (v374 + v367 - ((2 * (v374 + v367)) & 0x8C) + 70) ^ 0xF1;
  v375 = v373 ^ (v373 >> 17) ^ (v374 >> 26);
  v376 = v374 ^ 0xF4C29045 ^ v375;
  *(STACK[0x8070] + 7362) = v371;
  LOBYTE(v326) = (v376 + v374 - ((2 * (v376 + v374)) & 0xD4) - 22) ^ 0x5D;
  LOBYTE(v374) = v375 ^ ((v374 ^ (v374 << 23)) >> 17);
  *(STACK[0x8070] + 6176) = ((v374 ^ (v376 >> 26)) + v376 - ((2 * ((v374 ^ (v376 >> 26)) + v376)) & 0xD6) + 107) ^ 0xDC;
  *(STACK[0x8070] + 6769) = v326;
  v377 = v5 + 0x10 % v35;
  v378 = *(*v10 + ((*v9 & ((v377 & 0x3E36A038 | 0xC1C95FC2) + (v377 & 0xFFFFFFF8) - (v377 & 0x3E36A038) + 487938599)) & 0xFFFFFFFFFFFFFFF8));
  v379 = __ROR8__(v377 & 0xFFFFFFFFFFFFFFF8, 8);
  *(v2 + 1372) = v377 & 0xFFFFFFF8;
  *(v2 + 1376) = v379;
  v380 = __ROR8__((v379 + v378) ^ 0x91364DCB68334DBLL, 8);
  v381 = (v379 + v378) ^ 0x91364DCB68334DBLL ^ __ROR8__(v378, 61);
  v382 = (((v380 + v381) | 0x79472D3BA16B90BBLL) - ((v380 + v381) | 0x86B8D2C45E946F44) - 0x79472D3BA16B90BCLL) ^ 0x3DCA4257067A48EELL;
  v383 = v382 ^ __ROR8__(v381, 61);
  v384 = (__ROR8__(v382, 8) + v383) ^ 0xF5F2FED308AA2278;
  v385 = v384 ^ __ROR8__(v383, 61);
  v386 = __ROR8__(v384, 8);
  v387 = __ROR8__((((v386 + v385) ^ 0xF550B45F026BB9F8 | 0xBB87AC48108829FDLL) - ((v386 + v385) ^ 0xF550B45F026BB9F8 | 0x447853B7EF77D602) + 0x447853B7EF77D602) ^ 0x298476D7E968C498, 8);
  v388 = (((v386 + v385) ^ 0xF550B45F026BB9F8 | 0xBB87AC48108829FDLL) - ((v386 + v385) ^ 0xF550B45F026BB9F8 | 0x447853B7EF77D602) + 0x447853B7EF77D602) ^ 0x298476D7E968C498 ^ __ROR8__(v385, 61);
  v389 = (v387 + v388) ^ 0xF887455E88108A0CLL;
  v390 = v389 ^ __ROR8__(v388, 61);
  LOBYTE(v387) = *v377;
  v391 = (__ROR8__(v389, 8) + v390) ^ 0x24734B65A1E08459;
  v392 = v391 ^ __ROR8__(v390, 61);
  *(v2 + 1371) = *v377;
  v393 = (__ROR8__(v391, 8) + v392) ^ 0x40C9CFEA3CC5CBE1;
  v394 = v393 ^ __ROR8__(v392, 61);
  v395 = __ROR8__(v393, 8);
  v396 = STACK[0x8070];
  v397 = 8 * (v377 & 7);
  *(v2 + 1384) = v397;
  *(v396 + 2141) ^= v387 ^ (((v395 + v394) ^ 0x6F635C2EE5D7D2C6uLL) >> v397);
  v398 = v5 + 0x11 % v35;
  LODWORD(v396) = ((v398 & 0xFFFFFFF8) - 555828759) & 0xFFFFFFF8;
  *(v2 + 1396) = v396;
  v399 = *(*v10 + (v396 & *v9));
  v400 = __ROR8__(v398 & 0xFFFFFFFFFFFFFFF8, 8);
  *(v2 + 1400) = v400;
  v401 = (v400 + v399) ^ 0x91364DCB68334DBLL;
  v402 = v401 ^ __ROR8__(v399, 61);
  v403 = __ROR8__(v401, 8);
  v404 = (((v403 + v402) & 0x44C2FDA5E6B20FDLL ^ 0x40280840230060) + ((v403 + v402) & 0xFBB3D025A194DF02 ^ 0x3032D00181000E03) - 1) ^ 0x74FF97656632D637;
  v405 = v404 ^ __ROR8__(v402, 61);
  v406 = __ROR8__(v404, 8);
  v407 = (((v406 + v405) ^ 0x523C2E18E1B45ABDLL) - ((2 * ((v406 + v405) ^ 0x523C2E18E1B45ABDLL)) & 0xEE44A6824CB72CF8) + 0x77225341265B967CLL) ^ 0xD0EC838ACF45EEB9;
  v408 = v407 ^ __ROR8__(v405, 61);
  v409 = __ROR8__(v407, 8);
  v410 = (v409 + v408 - ((2 * (v409 + v408)) & 0xCE99CF4380FD27E0) - 0x18B3185E3F816C10) ^ 0x801F89613BF5C76DLL;
  v411 = v410 ^ __ROR8__(v408, 61);
  v412 = (__ROR8__(v410, 8) + v411) ^ 0xF887455E88108A0CLL;
  v413 = v412 ^ __ROR8__(v411, 61);
  v414 = __ROR8__(v412, 8);
  v415 = STACK[0x8070];
  v416 = (v414 + v413 - ((2 * (v414 + v413)) & 0x7321ACD5B3645F2) + 0x3990D66AD9B22F9) ^ 0x27EA46030C7BA6A0;
  v417 = v416 ^ __ROR8__(v413, 61);
  v418 = (__ROR8__(v416, 8) + v417) ^ 0x40C9CFEA3CC5CBE1;
  v419 = (__ROR8__(v418, 8) + (v418 ^ __ROR8__(v417, 61))) ^ 0x6F635C2EE5D7D2C6;
  v420 = 8 * (v398 & 7);
  *(v2 + 1408) = v420;
  v421 = v419 >> v420;
  LOBYTE(v420) = *(v415 + 1548);
  LOBYTE(v398) = *v398;
  *(v2 + 1395) = v398;
  *(v415 + 1548) = v398 ^ v420 ^ v421;
  v422 = STACK[0x8070];
  v423 = v5 + 0x12 % v35;
  *(v2 + 1420) = v423 & 0xFFFFFFF8;
  v424 = *(*v10 + ((((v423 & 0xFFFFFFF8) - 555828759) & *v9) & 0xFFFFFFFFFFFFFFF8));
  v425 = __ROR8__(v423 & 0xFFFFFFFFFFFFFFF8, 8);
  *(v2 + 1424) = v425;
  v426 = (v425 + v424) ^ 0x91364DCB68334DBLL;
  v427 = v426 ^ __ROR8__(v424, 61);
  v428 = (__ROR8__(v426, 8) + v427) ^ 0x448D6F6CA711D855;
  v429 = v428 ^ __ROR8__(v427, 61);
  v430 = (__ROR8__(v428, 8) + v429) ^ 0xF5F2FED308AA2278;
  v431 = v430 ^ __ROR8__(v429, 61);
  v432 = __ROR8__(v430, 8);
  v433 = (((2 * (v432 + v431)) & 0x9174061D49F9224ELL) - (v432 + v431) + 0x3745FCF15B036ED8) ^ 0x50169231A0883A45;
  v434 = v433 ^ __ROR8__(v431, 61);
  v435 = __ROR8__(v433, 8);
  v436 = (((v435 + v434) | 0x3DBC94D823D7D0C6) - ((v435 + v434) | 0xC2436B27DC282F39) - 0x3DBC94D823D7D0C7) ^ 0xC53BD186ABC75ACALL;
  v437 = v436 ^ __ROR8__(v434, 61);
  v438 = (__ROR8__(v436, 8) + v437) ^ 0x24734B65A1E08459;
  v439 = v438 ^ __ROR8__(v437, 61);
  v440 = __ROR8__(v438, 8);
  LOBYTE(v415) = *(v422 + 955);
  v441 = (((v440 + v439) | 0x1BCAC7813BE70222) - ((v440 + v439) | 0xE435387EC418FDDDLL) - 0x1BCAC7813BE70223) ^ 0x5B03086B0722C9C3;
  v442 = __ROR8__(v441, 8) + (v441 ^ __ROR8__(v439, 61));
  LOBYTE(v439) = *v423;
  *(v2 + 1419) = *v423;
  v443 = 8 * (v423 & 7);
  *(v2 + 1432) = v443;
  *(v422 + 955) = v439 ^ v415 ^ ((v442 ^ 0x6F635C2EE5D7D2C6) >> v443);
  v444 = STACK[0x8070];
  LOBYTE(v422) = *(STACK[0x8070] + 362);
  v445 = v5 + 0x13 % v35;
  *(v2 + 1444) = v445 & 0xFFFFFFF8;
  v446 = *(*v10 + (((v445 & 0xFFFFFFF8 ^ 0x3FC1B38C) - 1625487780 + ((2 * (v445 & 0xFFFFFFF8)) & 0x7F836710)) & *v9));
  v447 = __ROR8__(v445 & 0xFFFFFFFFFFFFFFF8, 8);
  *(v2 + 1448) = v447;
  v448 = (((v447 + v446) | 0x818065D6C29696F0) - ((v447 + v446) | 0x7E7F9A293D69690FLL) + 0x7E7F9A293D69690FLL) ^ 0x8893010A7415A22BLL;
  v449 = v448 ^ __ROR8__(v446, 61);
  v450 = (__ROR8__(v448, 8) + v449) ^ 0x448D6F6CA711D855;
  v451 = v450 ^ __ROR8__(v449, 61);
  v452 = (__ROR8__(v450, 8) + v451) ^ 0xF5F2FED308AA2278;
  v453 = v452 ^ __ROR8__(v451, 61);
  v454 = __ROR8__(v452, 8);
  v455 = (((v454 + v453) | 0xEED2B1EE79336FFDLL) - ((v454 + v453) | 0x112D4E1186CC9002) + 0x112D4E1186CC9002) ^ 0x8981DF2E82B83B60 ^ __ROR8__(v453, 61);
  v456 = (__ROR8__((((v454 + v453) | 0xEED2B1EE79336FFDLL) - ((v454 + v453) | 0x112D4E1186CC9002) + 0x112D4E1186CC9002) ^ 0x8981DF2E82B83B60, 8) + v455) ^ 0xF887455E88108A0CLL;
  v457 = v456 ^ __ROR8__(v455, 61);
  v458 = (__ROR8__(v456, 8) + v457) ^ 0x24734B65A1E08459;
  v459 = v458 ^ __ROR8__(v457, 61);
  v460 = __ROR8__(v458, 8);
  LOBYTE(v415) = *v445;
  *(v2 + 1443) = *v445;
  v461 = (((v460 + v459) | 0x8D96D62EAAA5B92BLL) - ((v460 + v459) | 0x726929D1555A46D4) + 0x726929D1555A46D4) ^ 0xCD5F19C4966072CALL;
  v462 = 8 * (v445 & 7);
  *(v2 + 1456) = v462;
  *(v444 + 362) = v415 ^ v422 ^ (((__ROR8__(v461, 8) + (v461 ^ __ROR8__(v459, 61))) ^ 0x6F635C2EE5D7D2C6) >> v462);
  v463 = STACK[0x8070];
  LOBYTE(v444) = *(STACK[0x8070] + 12699);
  v464 = v5 + 0x14 % v35;
  *(v2 + 1468) = v464 & 0xFFFFFFF8;
  v465 = *(*v10 + ((*v9 & ((v464 & 0xFFFFFFF8) - 555828759)) & 0xFFFFFFFFFFFFFFF8));
  v466 = __ROR8__(v464 & 0xFFFFFFFFFFFFFFF8, 8);
  *(v2 + 1472) = v466;
  v467 = (v466 + v465) ^ 0x91364DCB68334DBLL;
  v468 = v467 ^ __ROR8__(v465, 61);
  v469 = __ROR8__(v467, 8);
  v470 = (v469 + v468 - ((2 * (v469 + v468)) & 0x6E1627E466647300) - 0x48F4EC0DCCCDC680) ^ 0xF3867C9E9423E1D5;
  v471 = v470 ^ __ROR8__(v468, 61);
  v472 = __ROR8__(v470, 8);
  v473 = (v472 + v471 - ((2 * (v472 + v471)) & 0x9BBDC3F391A172ALL) + 0x4DDEE1F9C8D0B95) ^ 0xF12F10CC942729EDLL;
  v474 = v473 ^ __ROR8__(v471, 61);
  v475 = __ROR8__(v473, 8);
  v476 = (v475 + v474 - ((2 * (v475 + v474)) & 0xC7E2ABDCBD2C0C2CLL) - 0x1C0EAA11A169F9EALL) ^ 0x84A23B2EA51D528BLL;
  v477 = v476 ^ __ROR8__(v474, 61);
  v478 = __ROR8__(v476, 8);
  v479 = (((2 * (v478 + v477)) | 0x81E066863ACE6870) - (v478 + v477) - 0x40F033431D673438) ^ 0xB877761D9577BE34;
  v480 = v479 ^ __ROR8__(v477, 61);
  v481 = __ROR8__(v479, 8);
  v482 = (((v481 + v480) | 0x99B5C4E11F6ACDEDLL) - ((v481 + v480) | 0x664A3B1EE0953212) + 0x664A3B1EE0953212) ^ 0xBDC68F84BE8A49B4;
  v483 = v482 ^ __ROR8__(v480, 61);
  v484 = (__ROR8__(v482, 8) + v483) ^ 0x40C9CFEA3CC5CBE1;
  v485 = v484 ^ __ROR8__(v483, 61);
  v486 = __ROR8__(v484, 8);
  LOBYTE(v484) = *v464;
  *(v2 + 1467) = *v464;
  v487 = 8 * (v464 & 7);
  *(v2 + 1480) = v487;
  *(v463 + 12699) = v484 ^ v444 ^ (((v486 + v485) ^ 0x6F635C2EE5D7D2C6uLL) >> v487);
  v488 = v5 + 0x15 % v35;
  LOBYTE(v463) = *v488;
  *(v2 + 1495) = *v488;
  *(v2 + 1496) = v488 & 0xFFFFFFF8;
  LODWORD(v484) = 2 * (v488 & 0xFFFFFFF8);
  *(v2 + 1500) = v484;
  v489 = *(*v10 + ((*v9 & ((((v488 & 0xFFFFFFF8) + 1326458983) ^ 0xC8A037D5) - ((1642049328 - v484) & 0x91406FA0) + 1483655511)) & 0xFFFFFFFFFFFFFFF8));
  v490 = __ROR8__(v488 & 0xFFFFFFFFFFFFFFF8, 8);
  *(v2 + 1504) = v490;
  v491 = (((2 * (v490 + v489)) | 0x9634EDF8ADF5F99ALL) - (v490 + v489) + 0x34E58903A9050333) ^ 0xC2091220E079C816;
  v492 = v491 ^ __ROR8__(v489, 61);
  v493 = (__ROR8__(v491, 8) + v492) ^ 0x448D6F6CA711D855;
  v494 = __ROR8__(v493, 8);
  v495 = v493 ^ __ROR8__(v492, 61);
  v496 = (v494 + v495) ^ 0xF5F2FED308AA2278;
  v497 = v496 ^ __ROR8__(v495, 61);
  v498 = __ROR8__(v496, 8);
  v499 = (((2 * (v498 + v497)) | 0xA46CE9A6A53DD8F8) - (v498 + v497) + 0x2DC98B2CAD611384) ^ 0xB5651A13A915B8E1;
  v500 = v499 ^ __ROR8__(v497, 61);
  v501 = __ROR8__(v499, 8);
  v502 = (((2 * (v501 + v500)) | 0x78230EC27FF21388) - (v501 + v500) + 0x43EE789EC006F63CLL) ^ 0x4496C23FB7E983C8;
  v503 = v502 ^ __ROR8__(v500, 61);
  v504 = (__ROR8__(v502, 8) + v503) ^ 0x24734B65A1E08459;
  v505 = v504 ^ __ROR8__(v503, 61);
  v506 = __ROR8__(v504, 8);
  v507 = STACK[0x8070];
  v508 = (v506 + v505 - ((2 * (v506 + v505)) & 0xDA07E0164FE74E70) + 0x6D03F00B27F3A738) ^ 0x2DCA3FE11B366CD9;
  v509 = v508 ^ __ROR8__(v505, 61);
  v510 = __ROR8__(v508, 8);
  LOBYTE(v508) = *(STACK[0x8070] + 12106);
  v511 = 8 * (v488 & 7);
  *(v2 + 1512) = v511;
  *(v507 + 12106) = v463 ^ v508 ^ (((v510 + v509 - ((2 * (v510 + v509)) & 0xFB70167A64CA581ELL) - 0x247F4C2CD9AD3F1) ^ 0x92DB5713D7B2FEC9) >> v511);
  v512 = v5 + 0x16 % v35;
  LODWORD(v508) = ((v512 & 0xFFFFFFF8) - 555828759) & 0xFFFFFFF8;
  *(v2 + 1524) = v508;
  v513 = *(*v10 + (v508 & *v9));
  v514 = __ROR8__(v512 & 0xFFFFFFFFFFFFFFF8, 8);
  *(v2 + 1528) = v514;
  v515 = (v514 + v513) ^ 0x91364DCB68334DBLL;
  v516 = v515 ^ __ROR8__(v513, 61);
  v517 = (__ROR8__(v515, 8) + v516) ^ 0x448D6F6CA711D855;
  v518 = v517 ^ __ROR8__(v516, 61);
  v519 = (__ROR8__(v517, 8) + v518) ^ 0xF5F2FED308AA2278;
  v520 = v519 ^ __ROR8__(v518, 61);
  v521 = __ROR8__(v519, 8);
  v522 = (((v521 + v520) | 0xB120F8A4A6045AFLL) - ((v521 + v520) | 0xF4EDF075B59FBA50) - 0xB120F8A4A6045B0) ^ 0x6C41614AB1EB1132;
  v523 = v522 ^ __ROR8__(v520, 61);
  v524 = (__ROR8__(v522, 8) + v523) ^ 0xF887455E88108A0CLL;
  v525 = v524 ^ __ROR8__(v523, 61);
  v526 = __ROR8__(v524, 8);
  LOBYTE(v507) = *v512;
  *(v2 + 1523) = *v512;
  v527 = (((v526 + v525) ^ 0x504A1674C05C3D6CLL) - ((2 * ((v526 + v525) ^ 0x504A1674C05C3D6CLL)) & 0xD058AC5557C14C08) - 0x17D3A9D5541F59FCLL) ^ 0x9C150B3BCA5C1F31;
  v528 = v527 ^ __ROR8__(v525, 61);
  v529 = (__ROR8__(v527, 8) + v528) ^ 0x40C9CFEA3CC5CBE1;
  v530 = __ROR8__(v529, 8) + (v529 ^ __ROR8__(v528, 61));
  v531 = STACK[0x8070];
  v532 = 8 * (v512 & 7);
  *(v2 + 1536) = v532;
  *(v531 + 11513) ^= v507 ^ ((v530 ^ 0x6F635C2EE5D7D2C6uLL) >> v532);
  v533 = STACK[0x8070];
  v534 = v5 + 0x17 % v35;
  *(v2 + 1548) = v534 & 0xFFFFFFF8;
  v535 = *(*v10 + ((((1020257283 * ((((-1105664341 * (v534 & 0xFFFFFFF8)) & 0xFF531688) + ((-1105664341 * (v534 & 0xFFFFFFF8)) | 0xFF531688)) | 3)) & 0xFFFFFFF8) + 309111368) & *v9));
  v536 = __ROR8__(v534 & 0xFFFFFFFFFFFFFFF8, 8);
  *(v2 + 1552) = v536;
  v537 = (v536 + v535) ^ 0x91364DCB68334DBLL;
  v538 = v537 ^ __ROR8__(v535, 61);
  v539 = (__ROR8__(v537, 8) + v538) ^ 0x448D6F6CA711D855;
  v540 = v539 ^ __ROR8__(v538, 61);
  v541 = __ROR8__(v539, 8);
  v542 = (((v541 + v540) | 0x9C91A925BF74A781) - ((v541 + v540) | 0x636E56DA408B587ELL) + 0x636E56DA408B587ELL) ^ 0x696357F6B7DE85F9;
  v543 = v542 ^ __ROR8__(v540, 61);
  v544 = __ROR8__(v542, 8);
  v545 = (((v544 + v543) | 0xADC215B686978775) - ((v544 + v543) | 0x523DEA497968788ALL) + 0x523DEA497968788ALL) ^ 0xCA917B767D1CD3E8;
  v546 = v545 ^ __ROR8__(v543, 61);
  v547 = (__ROR8__(v545, 8) + v546) ^ 0xF887455E88108A0CLL;
  v548 = v547 ^ __ROR8__(v546, 61);
  v549 = (__ROR8__(v547, 8) + v548) ^ 0x24734B65A1E08459;
  v550 = __ROR8__(v549, 8);
  v551 = v549 ^ __ROR8__(v548, 61);
  v552 = v550 + v551 - ((2 * (v550 + v551)) & 0xCB1BA1B2D3481984);
  LOBYTE(v550) = *(v533 + 10920);
  LOBYTE(v511) = *v534;
  *(v2 + 1547) = *v534;
  v553 = 8 * (v534 & 7);
  *(v533 + 10920) = v511 ^ v550 ^ (((__ROR8__((v552 - 0x1A722F26965BF33ELL) ^ 0xA5441F335561C723, 8) + ((v552 - 0x1A722F26965BF33ELL) ^ 0xA5441F335561C723 ^ __ROR8__(v551, 61))) ^ 0x6F635C2EE5D7D2C6) >> v553);
  *(v2 + 1560) = v553;
  v554 = v5 + 0x18 % v35;
  LOBYTE(v553) = *v554;
  *(v2 + 1571) = *v554;
  *(v2 + 1572) = v554 & 0xFFFFFFF8;
  v555 = *(*v10 + ((((v554 & 0xFFFFFFF8) - 555828759) & *v9) & 0xFFFFFFFFFFFFFFF8));
  v556 = __ROR8__(v554 & 0xFFFFFFFFFFFFFFF8, 8);
  *(v2 + 1576) = v556;
  v557 = (((2 * ((v556 + v555) ^ 0xDA8302074026B5ELL)) & 0xE173FE7CD51EB35CLL) - ((v556 + v555) ^ 0xDA8302074026B5ELL) + 0xF4600C19570A651) ^ 0xBFD543D57F1F9D4;
  v558 = v557 ^ __ROR8__(v555, 61);
  v559 = (__ROR8__(v557, 8) + v558) ^ 0x448D6F6CA711D855;
  v560 = __ROR8__(v559, 8);
  v561 = v559 ^ __ROR8__(v558, 61);
  v562 = (((2 * (v560 + v561)) & 0xD7C711D4B06DA21CLL) - (v560 + v561) - 0x6BE388EA5836D10FLL) ^ 0x61EE89C6AF630C89;
  v563 = v562 ^ __ROR8__(v561, 61);
  v564 = (__ROR8__(v562, 8) + v563) ^ 0x67536EC0FB8B549DLL;
  v565 = v564 ^ __ROR8__(v563, 61);
  v566 = __ROR8__(v564, 8);
  v567 = (((v566 + v565) | 0xD999D6A54B2BE188) - ((v566 + v565) | 0x2666295AB4D41E77) + 0x2666295AB4D41E77) ^ 0x211E93FBC33B6B84;
  v568 = v567 ^ __ROR8__(v565, 61);
  v569 = (__ROR8__(v567, 8) + v568) ^ 0x24734B65A1E08459;
  v570 = v569 ^ __ROR8__(v568, 61);
  v571 = __ROR8__(v569, 8);
  v572 = (((2 * (v571 + v570)) | 0xD4FFA5412BCE5694) - (v571 + v570) + 0x15802D5F6A18D4B6) ^ 0xAAB61D4AA922E0ABLL;
  v573 = v572 ^ __ROR8__(v570, 61);
  v574 = __ROR8__(v572, 8);
  v575 = STACK[0x8070];
  LOBYTE(v572) = *(STACK[0x8070] + 10327);
  v576 = 8 * (v554 & 7);
  *(v2 + 1584) = v576;
  *(v575 + 10327) = v553 ^ v572 ^ (((((v574 + v573) & 0x520066407C9C0114 ^ 0x5000604014140114) + ((v574 + v573) ^ 0xA6B4060B69CB146BLL) - (((v574 + v573) ^ 0xA6B4060B69CB146BLL) & 0x520066407C9C0114)) ^ 0x9BD73C65F080C7B9) >> v576);
  v577 = STACK[0x8070];
  LOBYTE(v573) = *(STACK[0x8070] + 9734);
  v578 = v5 + 0x19 % v35;
  *(v2 + 1596) = v578 & 0xFFFFFFF8;
  v579 = *(*v10 + ((((v578 & 0xFFFFFFF8) - 555828759) & *v9) & 0xFFFFFFFFFFFFFFF8));
  v580 = __ROR8__(v578 & 0xFFFFFFFFFFFFFFF8, 8);
  *(v2 + 1600) = v580;
  v581 = (((2 * ((v580 + v579) ^ 0x2ED50970819606E2)) | 0x1B18EF9FEF76C120) - ((v580 + v579) ^ 0x2ED50970819606E2) + 0x7273883008449F70) ^ 0xAA4A1A63C0AE52A9;
  v582 = v581 ^ __ROR8__(v579, 61);
  v583 = __ROR8__(v581, 8);
  v584 = (v583 + v582 - ((2 * (v583 + v582)) & 0x895B98955CAFC01ELL) + 0x44ADCC4AAE57E00FLL) ^ 0x20A3260946385ALL;
  v585 = v584 ^ __ROR8__(v582, 61);
  v586 = (__ROR8__(v584, 8) + v585) ^ 0xF5F2FED308AA2278;
  v587 = v586 ^ __ROR8__(v585, 61);
  v588 = (__ROR8__(v586, 8) + v587) ^ 0x67536EC0FB8B549DLL;
  v589 = v588 ^ __ROR8__(v587, 61);
  v590 = (__ROR8__(v588, 8) + v589) ^ 0xF887455E88108A0CLL;
  v591 = __ROR8__(v590, 8);
  v592 = v590 ^ __ROR8__(v589, 61);
  v593 = (((v591 + v592) | 0x18827738795A8E59) - ((v591 + v592) | 0xE77D88C786A571A6) - 0x18827738795A8E5ALL) ^ 0x3CF13C5DD8BA0A00;
  v594 = v593 ^ __ROR8__(v592, 61);
  v595 = __ROR8__(v593, 8);
  v596 = (((2 * (v595 + v594)) & 0xAE1724CFBFE232FELL) - (v595 + v594) - 0x570B9267DFF11980) ^ 0xE83DA2721CCB2D61;
  v597 = v596 ^ __ROR8__(v594, 61);
  v598 = __ROR8__(v596, 8);
  v599 = ((v598 + v597) & 0x53FEBA93CD36830BLL ^ 0x53642293C930820ALL) + ((v598 + v597) ^ 0xAC9BD84826862151) - (((v598 + v597) ^ 0xAC9BD84826862151) & 0x53FEBA93CD36830BLL);
  LOBYTE(v597) = *v578;
  *(v2 + 1595) = *v578;
  v600 = 8 * (v578 & 7);
  *(v577 + 9734) = v597 ^ v573 ^ ((v599 ^ 0x90063EF50E67709CLL) >> v600);
  *(v2 + 1608) = v600;
  v601 = v5 + 0x1A % v35;
  LOBYTE(v600) = *v601;
  v602 = STACK[0x8070];
  *(v2 + 1620) = v601 & 0xFFFFFFF8;
  v603 = *(*v10 + (((v601 & 0xEC61CF80 | 0x139E3078) - 884960754 + (v601 & 0x139E3078) - 2206) & *v9));
  v604 = __ROR8__(v601 & 0xFFFFFFFFFFFFFFF8, 8);
  *(v2 + 1624) = v604;
  v605 = (((2 * (v604 + v603)) | 0x2A88AED2BB40CBA4) - (v604 + v603) - 0x154457695DA065D2) ^ 0x1C5733B5EB235109;
  v606 = v605 ^ __ROR8__(v603, 61);
  v607 = __ROR8__(v605, 8);
  v608 = (v607 + v606 - ((2 * (v607 + v606)) & 0xFA712D340F7409ELL) - 0x782C76965F845FB1) ^ 0xC35EE605076A781ALL;
  v609 = v608 ^ __ROR8__(v606, 61);
  v610 = (__ROR8__(v608, 8) + v609) ^ 0xF5F2FED308AA2278;
  v611 = v610 ^ __ROR8__(v609, 61);
  v612 = __ROR8__(v610, 8);
  v613 = (((2 * (v612 + v611)) | 0x8B983639E0F78130) - (v612 + v611) + 0x3A33E4E30F843F68) ^ 0xA29F75DC0BF09405;
  v614 = v613 ^ __ROR8__(v611, 61);
  v615 = __ROR8__(v613, 8);
  LOBYTE(v597) = *(v602 + 9141);
  *(v2 + 1619) = v600;
  v616 = (((v615 + v614) | 0x31A72CC6AD1950D2) - ((v615 + v614) | 0xCE58D33952E6AF2DLL) - 0x31A72CC6AD1950D3) ^ 0xC92069982509DADELL;
  v617 = v616 ^ __ROR8__(v614, 61);
  v618 = (__ROR8__(v616, 8) + v617) ^ 0x24734B65A1E08459;
  v619 = v618 ^ __ROR8__(v617, 61);
  v620 = (__ROR8__(v618, 8) + v619) ^ 0x40C9CFEA3CC5CBE1;
  v621 = 8 * (v601 & 7);
  *(v2 + 1632) = v621;
  *(v602 + 9141) = v600 ^ v597 ^ (((__ROR8__(v620, 8) + (v620 ^ __ROR8__(v619, 61))) ^ 0x6F635C2EE5D7D2C6uLL) >> v621);
  v622 = STACK[0x8070];
  LOBYTE(v602) = *(STACK[0x8070] + 8548);
  v623 = v5 + 0x1B % v35;
  v624 = *(*v10 + (((((LODWORD(STACK[0x994]) & (2 * (v623 & 0xFFFFFFF8))) + (v623 & 0xFFFFFFF8 ^ 0xBB5387D9)) & 0xFFFFFFF8) + 596324880) & *v9));
  *(v2 + 1644) = v623 & 0xFFFFFFF8;
  v625 = __ROR8__(v623 & 0xFFFFFFFFFFFFFFF8, 8);
  *(v2 + 1648) = v625;
  v626 = (((2 * (v625 + v624)) | 0xE137D51CE217846ALL) - (v625 + v624) + 0xF6415718EF43DCBLL) ^ 0xF9888E52C788F6EELL;
  v627 = v626 ^ __ROR8__(v624, 61);
  v628 = (__ROR8__(v626, 8) + v627) ^ 0x448D6F6CA711D855;
  v629 = v628 ^ __ROR8__(v627, 61);
  v630 = (__ROR8__(v628, 8) + v629) ^ 0xF5F2FED308AA2278;
  v631 = v630 ^ __ROR8__(v629, 61);
  v632 = (__ROR8__(v630, 8) + v631) ^ 0x67536EC0FB8B549DLL;
  v633 = v632 ^ __ROR8__(v631, 61);
  v634 = __ROR8__(v632, 8);
  v635 = (((v634 + v633) | 0xD212FDEB05CB77FFLL) - ((v634 + v633) | 0x2DED0214FA348800) + 0x2DED0214FA348800) ^ 0x2A95B8B58DDBFDF3;
  v636 = v635 ^ __ROR8__(v633, 61);
  v637 = __ROR8__(v635, 8);
  v638 = (((v637 + v636) | 0x23FB1CECB8771DB9) - ((v637 + v636) | 0xDC04E3134788E246) - 0x23FB1CECB8771DBALL) ^ 0x7885789199799E0;
  v639 = v638 ^ __ROR8__(v636, 61);
  v640 = __ROR8__(v638, 8);
  LOBYTE(v597) = *v623;
  v641 = (((2 * (v640 + v639)) & 0x78709DAE84BAC08) - (v640 + v639) + 0x7C3C7B128BDA29FBLL) ^ 0x3CF5B4F8B71FE21ALL;
  v642 = v641 ^ __ROR8__(v639, 61);
  v643 = __ROR8__(v641, 8);
  *(v2 + 1643) = *v623;
  v644 = 8 * (v623 & 7);
  *(v622 + 8548) = v597 ^ v602 ^ (((((2 * (v643 + v642)) & 0x527FCE5C98587A6ALL) - (v643 + v642) - 0x293FE72E4C2C3D36) ^ 0xB9A344FF5604100CLL) >> v644);
  *(v2 + 1656) = v644;
  v645 = v5 + 0x1C % v35;
  LOBYTE(v622) = *v645;
  v646 = STACK[0x8070];
  LOBYTE(v644) = *(STACK[0x8070] + 7955);
  *(v2 + 1667) = *v645;
  v647 = *(*v10 + ((((v645 & 0xFFFFFFF8) - 555828759) & *v9) & 0xFFFFFFFFFFFFFFF8));
  v648 = __ROR8__(v645 & 0xFFFFFFFFFFFFFFF8, 8);
  *(v2 + 1668) = v645 & 0xFFFFFFF8;
  *(v2 + 1672) = v648;
  v649 = (v648 + v647) ^ 0x91364DCB68334DBLL ^ __ROR8__(v647, 61);
  v650 = (__ROR8__((v648 + v647) ^ 0x91364DCB68334DBLL, 8) + v649) ^ 0x448D6F6CA711D855;
  v651 = v650 ^ __ROR8__(v649, 61);
  v652 = __ROR8__(v650, 8);
  v653 = (((v652 + v651) | 0x33DB9E3E594C6A1FLL) - ((v652 + v651) | 0xCC2461C1A6B395E0) - 0x33DB9E3E594C6A20) ^ 0xC62960ED51E64867;
  v654 = v653 ^ __ROR8__(v651, 61);
  v655 = (__ROR8__(v653, 8) + v654) ^ 0x67536EC0FB8B549DLL;
  v656 = v655 ^ __ROR8__(v654, 61);
  v657 = __ROR8__(v655, 8);
  v658 = (((v657 + v656) | 0xFE5F7FE5EE70A500) - ((v657 + v656) | 0x1A0801A118F5AFFLL) + 0x1A0801A118F5AFFLL) ^ 0x6D83ABB66602F0CLL;
  v659 = v658 ^ __ROR8__(v656, 61);
  v660 = (__ROR8__(v658, 8) + v659) ^ 0x24734B65A1E08459;
  v661 = v660 ^ __ROR8__(v659, 61);
  v662 = (__ROR8__(v660, 8) + v661) ^ 0x40C9CFEA3CC5CBE1;
  v663 = 8 * (v645 & 7);
  *(v2 + 1680) = v663;
  *(v646 + 7955) = v622 ^ v644 ^ (((__ROR8__(v662, 8) + (v662 ^ __ROR8__(v661, 61))) ^ 0x6F635C2EE5D7D2C6uLL) >> v663);
  v664 = STACK[0x8070];
  LOBYTE(v663) = *(STACK[0x8070] + 7362);
  v665 = v5 + 0x1D % v35;
  *(v2 + 1692) = v665 & 0xFFFFFFF8;
  v666 = *(*v10 + ((((v665 & 0xFFFFFFF8) - 555828759) & *v9) & 0xFFFFFFFFFFFFFFF8));
  v667 = __ROR8__(v665 & 0xFFFFFFFFFFFFFFF8, 8);
  *(v2 + 1696) = v667;
  v668 = (((v667 + v666) & 0x49038345C82AE54 ^ 0x400080404002C04) + ((v667 + v666) ^ 0xC2D33479D8DE8252) - (((v667 + v666) ^ 0xC2D33479D8DE8252) & 0x49038345C82AE54)) ^ 0xCF50689132DF18DDLL;
  v669 = v668 ^ __ROR8__(v666, 61);
  v670 = (__ROR8__(v668, 8) + v669) ^ 0x448D6F6CA711D855;
  v671 = __ROR8__(v670, 8);
  v672 = v670 ^ __ROR8__(v669, 61);
  v673 = (v671 + v672) ^ 0xF5F2FED308AA2278;
  v674 = v673 ^ __ROR8__(v672, 61);
  v675 = (__ROR8__(v673, 8) + v674) ^ 0x67536EC0FB8B549DLL;
  v676 = v675 ^ __ROR8__(v674, 61);
  v677 = __ROR8__(v675, 8);
  v678 = (((v677 + v676) | 0x73DDC3D3FDB9F2D9) - ((v677 + v676) | 0x8C223C2C02460D26) - 0x73DDC3D3FDB9F2DALL) ^ 0x8B5A868D75A978D5;
  v679 = v678 ^ __ROR8__(v676, 61);
  v680 = __ROR8__(v678, 8);
  v681 = (((2 * (v680 + v679)) | 0x6753C60069C70F36) - (v680 + v679) - 0x33A9E30034E3879BLL) ^ 0x17DAA865950303C2;
  v682 = v681 ^ __ROR8__(v679, 61);
  v683 = __ROR8__(v681, 8);
  LOBYTE(v671) = *v665;
  *(v2 + 1691) = *v665;
  v684 = (v683 + v682 - ((2 * (v683 + v682)) & 0x8E30F850A7AEF5ELL) - 0x7B8E783D7AC28851) ^ 0xC4B84828B9F8BC4ELL;
  v685 = v684 ^ __ROR8__(v682, 61);
  v686 = __ROR8__(v684, 8);
  v687 = 8 * (v665 & 7);
  *(v2 + 1704) = v687;
  *(v664 + 7362) = v671 ^ v663 ^ (((((2 * (v686 + v685)) | 0xA0B88389A1310D78) - (v686 + v685) + 0x2FA3BE3B2F677944) ^ 0xBF3F1DEA354F547ALL) >> v687);
  v688 = STACK[0x8070];
  LOBYTE(v663) = *(STACK[0x8070] + 6769);
  v689 = v5 + 0x1E % v35;
  LOBYTE(v646) = *v689;
  *(v2 + 1715) = *v689;
  *(v2 + 1716) = v689 & 0xFFFFFFF8;
  v690 = *(*v10 + ((*v9 & ((v689 & 0x201793D8) + (v689 & 0xDFE86C20 | 0x201793D8) - 1094244847)) & 0xFFFFFFFFFFFFFFF8));
  v691 = __ROR8__(v689 & 0xFFFFFFFFFFFFFFF8, 8);
  *(v2 + 1720) = v691;
  v692 = (v691 + v690) ^ 0x91364DCB68334DBLL;
  v693 = v692 ^ __ROR8__(v690, 61);
  v694 = (__ROR8__(v692, 8) + v693) ^ 0x448D6F6CA711D855;
  v695 = v694 ^ __ROR8__(v693, 61);
  v696 = (__ROR8__(v694, 8) + v695) ^ 0xF5F2FED308AA2278;
  v697 = v696 ^ __ROR8__(v695, 61);
  v698 = (__ROR8__(v696, 8) + v697) ^ 0x67536EC0FB8B549DLL;
  v699 = v698 ^ __ROR8__(v697, 61);
  v700 = __ROR8__(v698, 8);
  v701 = (((2 * (v700 + v699)) & 0x1B0B887BC7CD70AELL) - (v700 + v699) - 0xD85C43DE3E6B858) ^ 0xAFD7E9C9409CDA4;
  v702 = v701 ^ __ROR8__(v699, 61);
  v703 = (__ROR8__(v701, 8) + v702) ^ 0x24734B65A1E08459;
  v704 = v703 ^ __ROR8__(v702, 61);
  v705 = __ROR8__(v703, 8);
  v706 = (((2 * (v705 + v704)) & 0x6273E29423ECB8EALL) - (v705 + v704) + 0x4EC60EB5EE09A38ALL) ^ 0xE0FC15FD2CC686BLL;
  v707 = 8 * (v689 & 7);
  *(v2 + 1728) = v707;
  *(v688 + 6769) = v646 ^ v663 ^ (((__ROR8__(v706, 8) + (v706 ^ __ROR8__(v704, 61))) ^ 0x6F635C2EE5D7D2C6uLL) >> v707);
  v708 = v5 + 0x1F % v35;
  LOBYTE(v688) = *v708;
  *(v2 + 1739) = *v708;
  v709 = STACK[0x8070];
  LOBYTE(v707) = *(STACK[0x8070] + 6176);
  *(v2 + 1740) = v708 & 0xFFFFFFF8;
  v710 = *(*v10 + ((*v9 & ((v708 & 0xFFFFFFF8) - 555828759)) & 0xFFFFFFFFFFFFFFF8));
  v711 = __ROR8__(v708 & 0xFFFFFFFFFFFFFFF8, 8);
  *(v2 + 1744) = v711;
  v712 = __ROR8__((v711 + v710 - ((2 * (v711 + v710)) & 0x8198B68C21672932) + 0x40CC5B4610B39499) ^ 0x49DF3F9AA630A042, 8);
  v713 = (v711 + v710 - ((2 * (v711 + v710)) & 0x8198B68C21672932) + 0x40CC5B4610B39499) ^ 0x49DF3F9AA630A042 ^ __ROR8__(v710, 61);
  v714 = (((2 * (v712 + v713)) | 0x9CE9EC022075D304) - (v712 + v713) + 0x318B09FEEFC5167ELL) ^ 0x8AF9996DB72B31D7;
  v715 = v714 ^ __ROR8__(v713, 61);
  v716 = (__ROR8__(v714, 8) + v715) ^ 0xF5F2FED308AA2278;
  v717 = v716 ^ __ROR8__(v715, 61);
  v718 = (__ROR8__(v716, 8) + v717) ^ 0x67536EC0FB8B549DLL;
  v719 = v718 ^ __ROR8__(v717, 61);
  v720 = (__ROR8__(v718, 8) + v719) ^ 0xF887455E88108A0CLL;
  v721 = v720 ^ __ROR8__(v719, 61);
  v722 = (__ROR8__(v720, 8) + v721) ^ 0x24734B65A1E08459;
  v723 = v722 ^ __ROR8__(v721, 61);
  v724 = __ROR8__(v722, 8);
  v725 = 8 * (v708 & 7);
  *(v709 + 6176) = v688 ^ v707 ^ (((__ROR8__((((2 * (v724 + v723)) | 0xFC59219C393F32C2) - (v724 + v723) - 0x7E2C90CE1C9F9961) ^ 0x3EE55F24205A5280, 8) + ((((2 * (v724 + v723)) | 0xFC59219C393F32C2) - (v724 + v723) - 0x7E2C90CE1C9F9961) ^ 0x3EE55F24205A5280 ^ __ROR8__(v723, 61))) ^ 0x6F635C2EE5D7D2C6) >> v725);
  v726 = STACK[0x8070];
  v727 = (((v726[955] ^ 0xB7) << 16) | ((v726[362] ^ 0xB7) << 24) | ((v726[12699] ^ 0xB7u) << 32)) + (((v726[2141] ^ 0x3D5DCAC29C0E072BLL) & ~((v726[1548] ^ 0xB7) << 8) & 0xFFFFFFFFFFFF07FFLL | (((v726[1548] ^ 0xB7) >> 3) << 11)) ^ 0x3D5DCAC29C0E079CLL) + (((v726[11513] << 48) | (v726[12106] << 40)) ^ 0xB7B70000000000);
  v728 = (*(STACK[0x8070] + 9734) ^ 0xB7) << 8;
  v729 = *(STACK[0x8070] + 10327);
  v730 = (((v726[8548] ^ 0xB7) << 24) | ((v726[9141] ^ 0xB7) << 16)) + (((v729 ^ 0xAE6F0B727A79A91DLL) & (v728 ^ 0xAFFFBFFF7AFBFFFFLL) | v728 & 0x5600) ^ 0xAE6F0B727A79A9AALL) + ((((v726[7955] ^ 0xB7u) << 32) | ((v726[6769] ^ 0xB7u) << 48) | (v726[7362] << 40)) ^ 0xB70000000000);
  v731 = v730 | (*(STACK[0x8070] + 6176) << 56) ^ 0xB700000000000000;
  v732 = (v727 + ((*(STACK[0x8070] + 10920) << 56) ^ 0xB700000000000000)) ^ (v727 << 23);
  v733 = v732 ^ (v732 >> 17) ^ v731 ^ (v731 >> 26);
  v734 = v733 ^ 0xF4C29045;
  v735 = v731 ^ (v730 << 23);
  LOBYTE(v730) = (v733 ^ 0x45) - ((2 * (v733 ^ 0x45)) & 0x58) - 84;
  LOBYTE(v730) = (((v729 ^ 0x4A) - 74) ^ ((v729 ^ 0x7B) - 123) ^ ((v729 ^ 0x86) + 122)) + (((v730 ^ 0xC1) + 63) ^ ((v730 ^ 0x72) - 114) ^ ((v730 ^ 0x1F) - 31)) - 67;
  LOBYTE(v729) = v730 & 0x50 ^ 0xDD;
  LOBYTE(v730) = v730 ^ (2 * ((v730 ^ 0x26) & (2 * ((v730 ^ 0x26) & (2 * ((v730 ^ 0x26) & (2 * ((v730 ^ 0x26) & (2 * ((v730 ^ 0x26) & (2 * ((v730 ^ 0x26) & 0x36 ^ v729)) ^ v729)) ^ v729)) ^ v729)) ^ v729)) ^ v729)) ^ 0xE7;
  v736 = (v733 ^ 0xF4C29045) << 23;
  v737 = v735 ^ (v735 >> 17) ^ ((v733 ^ 0xF4C29045) >> 26);
  v738 = v737 ^ v733;
  v726[2141] = v730;
  v739 = v736 ^ ((v736 ^ v734) >> 17) ^ v737 ^ (v738 >> 26);
  LOBYTE(v737) = (v738 + v734 - ((2 * (v738 + v734)) & 0x8A) + 69) ^ 0xF2;
  *(STACK[0x8070] + 955) = (v739 + v738 - ((2 * (v739 + v738)) & 0x50) - 88) ^ 0x1F;
  v740 = v738 ^ (v738 << 23) ^ ((v738 ^ (v738 << 23)) >> 17) ^ v739 ^ (v739 >> 26);
  *(STACK[0x8070] + 362) = ((v740 ^ 0x45) + v739 - ((2 * ((v740 ^ 0x45) + v739)) & 0xE7) - 13) ^ 0x44;
  v741 = v739 ^ (v739 << 23) ^ ((v739 ^ (v739 << 23)) >> 17) ^ v740 ^ ((v740 ^ 0xF4C29045) >> 26);
  *(STACK[0x8070] + 12699) = (v741 + (v740 ^ 0x45) - ((2 * (v741 + (v740 ^ 0x45))) & 0x88) - 60) ^ 0x73;
  v742 = v740 ^ 0xF4C29045 ^ ((v740 ^ 0xF4C29045) << 23) ^ ((v740 ^ 0xF4C29045 ^ ((v740 ^ 0xF4C29045) << 23)) >> 17) ^ v741 ^ (v741 >> 26);
  *(STACK[0x8070] + 1548) = v737;
  *(STACK[0x8070] + 12106) = ((v742 ^ 0x45) + v741 - ((2 * ((v742 ^ 0x45) + v741)) & 0xBB) + 93) ^ 0xEA;
  v743 = v741 ^ (v741 << 23) ^ ((v741 ^ (v741 << 23)) >> 17) ^ v742 ^ ((v742 ^ 0xF4C29045) >> 26);
  *(STACK[0x8070] + 11513) = (v743 + (v742 ^ 0x45) - ((2 * (v743 + (v742 ^ 0x45))) & 0x40) + 32) ^ 0x97;
  v744 = v742 ^ 0xF4C29045 ^ ((v742 ^ 0xF4C29045) << 23) ^ ((v742 ^ 0xF4C29045 ^ ((v742 ^ 0xF4C29045) << 23)) >> 17) ^ v743 ^ (v743 >> 26);
  *(STACK[0x8070] + 10920) = ((v744 ^ 0x45) + v743 - ((2 * ((v744 ^ 0x45) + v743)) & 0x16) - 117) ^ 0x3C;
  v745 = v743 ^ (v743 << 23) ^ ((v743 ^ (v743 << 23)) >> 17) ^ v744 ^ ((v744 ^ 0xF4C29045) >> 26);
  *(STACK[0x8070] + 10327) = (v745 + (v744 ^ 0x45) - ((2 * (v745 + (v744 ^ 0x45))) & 0x50) + 40) ^ 0x9F;
  v746 = ((v744 ^ 0xF4C29045) << 23) ^ v744 ^ ((((v744 ^ 0xF4C29045) << 23) ^ v744 ^ 0xF4C29045) >> 17) ^ v745 ^ (v745 >> 26);
  *(STACK[0x8070] + 9734) = (v746 + v745 - ((2 * (v746 + v745)) & 0x5A) - 83) ^ 0x1A;
  v747 = v745 ^ (v745 << 23) ^ ((v745 ^ (v745 << 23)) >> 17) ^ v746 ^ (v746 >> 26);
  LOBYTE(v742) = v747 ^ 0x45;
  v748 = v747 ^ 0xF4C29045 ^ ((v747 ^ 0xF4C29045) << 23);
  v749 = v746 ^ (v746 << 23) ^ ((v746 ^ (v746 << 23)) >> 17) ^ v747 ^ ((v747 ^ 0xF4C29045) >> 26);
  *(STACK[0x8070] + 9141) = (v742 + v746 - ((2 * (v742 + v746)) & 0xE3) + 113) ^ 0xC6;
  *(STACK[0x8070] + 8548) = (v749 + v742 - ((2 * (v749 + v742)) & 0x77) - 69) ^ 0xC;
  v750 = v748 ^ (v748 >> 17) ^ v749 ^ (v749 >> 26);
  *(STACK[0x8070] + 7955) = ((v750 ^ 0x45) + v749 - 2 * (((v750 ^ 0x45) + v749) & 1) - 127) ^ 0x36;
  v751 = v749 ^ (v749 << 23) ^ ((v749 ^ (v749 << 23)) >> 17) ^ v750 ^ ((v750 ^ 0xF4C29045) >> 26);
  v752 = ((v750 ^ 0xF4C29045) << 23) ^ v750 ^ ((((v750 ^ 0xF4C29045) << 23) ^ v750 ^ 0xF4C29045) >> 17) ^ (v751 >> 26);
  *(STACK[0x8070] + 7362) = (v751 + (v750 ^ 0x45) - 2 * ((v751 + (v750 ^ 0x45)) & 0x3F) - 65) ^ 8;
  *(STACK[0x8070] + 6769) = (v752 ^ v751) + v751 - ((2 * ((v752 ^ v751) + v751)) & 0x6E) - 73;
  LODWORD(v752) = (v752 ^ ((v751 ^ (v751 << 23)) >> 17) ^ 0x45 ^ ((v752 ^ v751) >> 26)) + (v752 ^ v751);
  *(STACK[0x8070] + 6176) = (v752 - ((2 * v752) & 0x28) + 20) ^ 0xA3;
  v753 = *(v2 + 3912);
  v754 = *(v753 + 16);
  v753 += 16;
  *(v2 + 1752) = v725;
  v755 = __ROR8__(v753 & 0xFFFFFFFFFFFFFFF8, 8);
  v756 = (v755 - 0x70824D863E123F43) ^ 0xA86A78D9F67FFA9ALL;
  v757 = (__ROR8__((v755 - 0x70824D863E123F43) ^ 0xD387EB17F911FF76, 8) + v756) ^ 0x3A7C64F71FBFC65BLL;
  v758 = v757 ^ __ROR8__(v756, 61);
  v759 = __ROR8__(v757, 8);
  v760 = (((2 * (v759 + v758)) | 0xC64E0806569D3570) - (v759 + v758) - 0x632704032B4E9AB8) ^ 0x98E68B88BE265EF8;
  v761 = v760 ^ __ROR8__(v758, 61);
  v762 = (__ROR8__(v760, 8) + v761) ^ 0x4AE5CE6F63977933;
  v763 = v762 ^ __ROR8__(v761, 61);
  v764 = (__ROR8__(v762, 8) + v763) ^ 0x2854CB5A8BDB8317;
  v765 = v764 ^ __ROR8__(v763, 61);
  v766 = (__ROR8__(v764, 8) + v765) ^ 0xF7721CC6F3AEFBDCLL;
  v767 = __ROR8__(v766, 8);
  v768 = v766 ^ __ROR8__(v765, 61);
  v769 = (v767 + v768) ^ 0xE6B7173A9B2BB05DLL;
  v770 = v769 ^ __ROR8__(v768, 61);
  v771 = __ROR8__(v769, 8);
  LOBYTE(v753) = 8 * (v753 & 7);
  *(v2 + 1763) = (((((v771 + v770) | 0x5614B2FAD9B58C69) - ((v771 + v770) | 0xA9EB4D05264A7396) - 0x5614B2FAD9B58C6ALL) ^ 0xC2B83405A8DA024BLL) >> v753) ^ v754;
  v772 = (0x70824D863E123F42 - v755) & 0x5219A000E8F94188 | (v755 - 0x70824D863E123F43) & 0xADE65FFF1706BE77;
  v773 = __ROR8__(v772 ^ 0x819E4B1711E8BEFELL, 8);
  v772 ^= 0xFA73D8D91E86BB12;
  v774 = (v773 + v772 - ((2 * (v773 + v772)) & 0x7AB2E9E378B7F880) - 0x42A68B0E43A403C0) ^ 0x87251006A3E43A1BLL;
  v775 = v774 ^ __ROR8__(v772, 61);
  v776 = (__ROR8__(v774, 8) + v775) ^ 0xFBC18F8B9568C440;
  v777 = v776 ^ __ROR8__(v775, 61);
  v778 = (__ROR8__(v776, 8) + v777) ^ 0x4AE5CE6F63977933;
  v779 = __ROR8__(v778, 8);
  v780 = v778 ^ __ROR8__(v777, 61);
  v781 = (((2 * (v779 + v780)) | 0x9A5AA04011F3D95CLL) - (v779 + v780) - 0x4D2D502008F9ECAELL) ^ 0x65799B7A83226FB9;
  v782 = v781 ^ __ROR8__(v780, 61);
  v783 = __ROR8__(v781, 8);
  v784 = (v783 + v782 - ((2 * (v783 + v782)) & 0x13F0444BEFF4362ELL) - 0x7607DDDA0805E4E9) ^ 0x7E8A3EE30454E0CBLL;
  v785 = v784 ^ __ROR8__(v782, 61);
  v786 = (__ROR8__(v784, 8) + v785) ^ 0xE6B7173A9B2BB05DLL;
  v787 = v786 ^ __ROR8__(v785, 61);
  v788 = __ROR8__(v786, 8);
  *(STACK[0x8070] + 2141) ^= v754 ^ (((((v788 + v787) & 0x91E81878CE738A6FLL ^ 0x80E0186004410022) + ((v788 + v787) & 0x6E17E787318C7590 ^ 0xC16200330081501) - 1) ^ 0x185ABE9C45269B00) >> v753);
  v789 = *(v2 + 3912);
  v790 = *(v789 + 17);
  v789 += 17;
  v791 = __ROR8__(v789 & 0xFFFFFFFFFFFFFFF8, 8);
  v792 = v791 - 0x70824D863E123F43;
  v793 = ((0x30824D863E123F42 - v791) & 0x376941066982318ELL) + v791 - 0x70824D863E123F43 - ((v791 - 0x70824D863E123F43) & 0x376941066982318ELL);
  v794 = v793 ^ 0xE4EEAA119093CEF8;
  v793 ^= 0x9F0339DF9FFDCB14;
  v795 = (__ROR8__(v794, 8) + v793) ^ 0x3A7C64F71FBFC65BLL;
  v796 = v795 ^ __ROR8__(v793, 61);
  v797 = __ROR8__(v795, 8);
  v798 = (((v797 + v796) | 0x35277CAE62527EA7) - ((v797 + v796) | 0xCAD883519DAD8158) - 0x35277CAE62527EA8) ^ 0xCEE6F325F73ABAE7;
  v799 = v798 ^ __ROR8__(v796, 61);
  v800 = (__ROR8__(v798, 8) + v799) ^ 0x4AE5CE6F63977933;
  v801 = v800 ^ __ROR8__(v799, 61);
  v802 = __ROR8__(v800, 8);
  v803 = (((2 * (v802 + v801)) | 0xCD8E6AF0E1C2A80CLL) - (v802 + v801) - 0x66C7357870E15406) ^ 0x4E93FE22FB3AD711;
  v804 = v803 ^ __ROR8__(v801, 61);
  v805 = (__ROR8__(v803, 8) + v804) ^ 0xF7721CC6F3AEFBDCLL;
  v806 = v805 ^ __ROR8__(v804, 61);
  v807 = (__ROR8__(v805, 8) + v806) ^ 0xE6B7173A9B2BB05DLL;
  v808 = v807 ^ __ROR8__(v806, 61);
  v809 = __ROR8__(v807, 8);
  LOBYTE(v789) = 8 * (v789 & 7);
  *(v2 + 1764) = (((((2 * (v809 + v808)) & 0x73ADF61FA05421FELL) - (v809 + v808) - 0x39D6FB0FD02A1100) ^ 0x5285820F5EBA6122) >> v789) ^ v790;
  v810 = (v792 | 0x385606F9D2E2DBE6) - (v792 | 0xC7A9F9062D1D2419) - 0x385606F9D2E2DBE7;
  v811 = v810 ^ 0xEBD1EDEE2BF32490;
  v810 ^= 0x903C7E20249D217CLL;
  v812 = __ROR8__(v811, 8);
  v813 = (v812 + v810 - ((2 * (v812 + v810)) & 0x616DBC8BABF487F8) + 0x30B6DE45D5FA43FCLL) ^ 0xACABAB2CA4585A7;
  v814 = v813 ^ __ROR8__(v810, 61);
  v815 = __ROR8__(v813, 8);
  v816 = (((2 * (v815 + v814)) & 0x910D1A551476A938) - (v815 + v814) + 0x377972D575C4AB63) ^ 0xCCB8FD5EE0AC6F23;
  v817 = v816 ^ __ROR8__(v814, 61);
  v818 = (__ROR8__(v816, 8) + v817) ^ 0x4AE5CE6F63977933;
  v819 = __ROR8__(v818, 8);
  v820 = v818 ^ __ROR8__(v817, 61);
  v821 = (((2 * (v819 + v820)) & 0xA540C24096BE7834) - (v819 + v820) - 0x52A061204B5F3C1BLL) ^ 0x850B55853F7B40F2;
  v822 = v821 ^ __ROR8__(v820, 61);
  v823 = __ROR8__(v821, 8);
  v824 = (v823 + v822 - ((2 * (v823 + v822)) & 0xA76FDF1BCE3FAFD2) - 0x2C48107218E02817) ^ 0x24C5F34B14B12C35;
  v825 = v824 ^ __ROR8__(v822, 61);
  v826 = (__ROR8__(v824, 8) + v825) ^ 0xE6B7173A9B2BB05DLL;
  *(STACK[0x8070] + 1548) ^= v790 ^ (((__ROR8__(v826, 8) + (v826 ^ __ROR8__(v825, 61))) ^ 0x94AC86FF716F8E22) >> v789);
  v827 = *(v2 + 3912);
  v828 = *(v827 + 18);
  v827 += 18;
  v829 = __ROR8__(v827 & 0xFFFFFFFFFFFFFFF8, 8);
  v830 = v829 - ((2 * v829 + 0x1EFB64F383DB817ALL) & 0xDA30E110D6C45840) + 0x7C9623022D4FECDDLL;
  v831 = __ROR8__(v830 ^ 0x3E9F9B9F9273D356, 8);
  v830 ^= 0x457208519D1DD6BAuLL;
  v832 = (v831 + v830) ^ 0x3A7C64F71FBFC65BLL;
  v833 = v832 ^ __ROR8__(v830, 61);
  v834 = (__ROR8__(v832, 8) + v833) ^ 0xFBC18F8B9568C440;
  v835 = v834 ^ __ROR8__(v833, 61);
  v836 = (__ROR8__(v834, 8) + v835) ^ 0x4AE5CE6F63977933;
  v837 = v836 ^ __ROR8__(v835, 61);
  v838 = __ROR8__(v836, 8);
  v839 = (((v838 + v837) & 0xD3DB179FFD11F047 ^ 0x529A1084B910D046) + ((v838 + v837) & 0x2C24E86002EE0FB8 ^ 0x24A04000680431) - 1) ^ 0x7AEA7B9E32A35761;
  v840 = v839 ^ __ROR8__(v837, 61);
  v841 = __ROR8__(v839, 8);
  v842 = (v841 + v840 - ((2 * (v841 + v840)) & 0x7E38BE2091F4BDF8) + 0x3F1C5F1048FA5EFCLL) ^ 0xC86E43D6BB54A520;
  v843 = v842 ^ __ROR8__(v840, 61);
  v844 = (__ROR8__(v842, 8) + v843) ^ 0xE6B7173A9B2BB05DLL;
  v845 = v844 ^ __ROR8__(v843, 61);
  v846 = __ROR8__(v844, 8);
  LOBYTE(v827) = 8 * (v827 & 7);
  *(v2 + 1765) = (((((2 * (v846 + v845)) | 0x791E6B45444DBE9ALL) - (v846 + v845) + 0x4370CA5D5DD920B3) ^ 0x2823B35DD349516FLL) >> v827) ^ v828;
  v847 = ((v829 - 0x70824D863E123F43) & 0xE5BF16472E184FC1 ^ 0xE423064600084D40) + ((v829 - 0x70824D863E123F43) & 0x1A40E9B8D1E7B03ELL ^ 0xA4049001182201FLL) - 1;
  v848 = __ROR8__(v847 ^ 0x3DE4A451E89B9228, 8);
  v847 ^= 0x4609379FE7F597C4uLL;
  v849 = (v848 + v847) ^ 0x3A7C64F71FBFC65BLL;
  v850 = v849 ^ __ROR8__(v847, 61);
  v851 = (__ROR8__(v849, 8) + v850) ^ 0xFBC18F8B9568C440;
  v852 = v851 ^ __ROR8__(v850, 61);
  v853 = __ROR8__(v851, 8);
  v854 = __ROR8__((((2 * (v853 + v852)) & 0x2F285E8089E6FEC0) - (v853 + v852) - 0x17942F4044F37F61) ^ 0xA28E1ED0D89BF9ACLL, 8);
  v855 = (((2 * (v853 + v852)) & 0x2F285E8089E6FEC0) - (v853 + v852) - 0x17942F4044F37F61) ^ 0xA28E1ED0D89BF9ACLL ^ __ROR8__(v852, 61);
  v856 = (v854 + v855) ^ 0x2854CB5A8BDB8317;
  v857 = v856 ^ __ROR8__(v855, 61);
  v858 = (__ROR8__(v856, 8) + v857) ^ 0xF7721CC6F3AEFBDCLL;
  v859 = v858 ^ __ROR8__(v857, 61);
  v860 = (__ROR8__(v858, 8) + v859) ^ 0xE6B7173A9B2BB05DLL;
  *(STACK[0x8070] + 955) ^= v828 ^ (((__ROR8__(v860, 8) + (v860 ^ __ROR8__(v859, 61))) ^ 0x94AC86FF716F8E22) >> v827);
  v861 = *(v2 + 3912);
  v862 = *(v861 + 19);
  v861 += 19;
  v863 = __ROR8__(v861 & 0xFFFFFFFFFFFFFFF8, 8);
  v864 = ((0x70824D863E123F42 - v863) | 0x40C699AB0B418AA9) + ((v863 + 0xF7DB279C1EDC0BDLL) | 0xBF396654F4BE7556);
  LOBYTE(v861) = 8 * (v861 & 7);
  v865 = v863 - ((2 * v863 + 0x1EFB64F383DB817ALL) & 0x9D4F8405E34DED42) + 0x5E25747CB394B75ELL;
  v866 = __ROR8__(v865 ^ 0x1D20291508B709D7, 8);
  v865 ^= 0x66CDBADB07D90C3BuLL;
  v867 = (((v866 + v865) | 0xC5FDB3A7A296BCD4) - ((v866 + v865) | 0x3A024C585D69432BLL) + 0x3A024C585D69432BLL) ^ 0xFF81D750BD297A8FLL;
  v868 = v867 ^ __ROR8__(v865, 61);
  v869 = __ROR8__(v867, 8);
  v870 = (((2 * (v869 + v868)) & 0x58FE7A144786617CLL) - (v869 + v868) - 0x2C7F3D0A23C330BFLL) ^ 0x28414D7E49540B01;
  v871 = v870 ^ __ROR8__(v868, 61);
  v872 = __ROR8__(v870, 8);
  v873 = (((2 * (v872 + v871)) | 0x1ADBB2E5DBF853CLL) - (v872 + v871) - 0xD6DD972EDFC29ELL) ^ 0x4A3313F84D48BBADLL;
  v874 = v873 ^ __ROR8__(v871, 61);
  v875 = (__ROR8__(v873, 8) + v874) ^ 0x2854CB5A8BDB8317;
  v876 = __ROR8__(v875, 8);
  v877 = v875 ^ __ROR8__(v874, 61);
  v878 = (((2 * ((v876 + v877) ^ 0x5E3E51FE3233454FLL)) & 0x8312F6281CC4A1AELL) - ((v876 + v877) ^ 0x5E3E51FE3233454FLL) - 0x41897B140E6250D8) ^ 0x173AC9D3300011BBLL;
  v879 = v878 ^ __ROR8__(v877, 61);
  v880 = __ROR8__(v878, 8);
  v881 = (((2 * (v880 + v879)) | 0xEB5D3061D28BE198) - (v880 + v879) - 0x75AE9830E945F0CCLL) ^ 0x93198F0A726E4091;
  v864 = -2 - v864;
  *(STACK[0x8070] + 362) ^= v862 ^ (((__ROR8__(v881, 8) + (v881 ^ __ROR8__(v879, 61))) ^ 0x94AC86FF716F8E22) >> v861);
  v882 = __ROR8__(v864 ^ 0x934172BCF25075DFLL, 8);
  v864 ^= 0xE8ACE172FD3E7033;
  v883 = (v882 + v864) ^ 0x3A7C64F71FBFC65BLL;
  v884 = v883 ^ __ROR8__(v864, 61);
  v885 = (__ROR8__(v883, 8) + v884) ^ 0xFBC18F8B9568C440;
  v886 = v885 ^ __ROR8__(v884, 61);
  v887 = __ROR8__(v885, 8);
  v888 = (((v887 + v886) ^ 0xCEB582A1A26074FDLL) - ((2 * ((v887 + v886) ^ 0xCEB582A1A26074FDLL)) & 0x6F84C73D2E1604FCLL) - 0x483D9C6168F4FD82) ^ 0x33922F5056FC0FB0;
  v889 = v888 ^ __ROR8__(v886, 61);
  v890 = __ROR8__(v888, 8);
  v891 = (((2 * (v890 + v889)) & 0xD9852A06CF60DD96) - (v890 + v889) - 0x6CC2950367B06ECCLL) ^ 0xBB69A1A613941223;
  v892 = v891 ^ __ROR8__(v889, 61);
  v893 = __ROR8__(v891, 8);
  v894 = __ROR8__((((v893 + v892) | 0xB4B3AC9FDAE3B5E6) - ((v893 + v892) | 0x4B4C5360251C4A19) + 0x4B4C5360251C4A19) ^ 0x43C1B059294D4E3ALL, 8);
  v895 = (((v893 + v892) | 0xB4B3AC9FDAE3B5E6) - ((v893 + v892) | 0x4B4C5360251C4A19) + 0x4B4C5360251C4A19) ^ 0x43C1B059294D4E3ALL ^ __ROR8__(v892, 61);
  v896 = (((2 * (v894 + v895)) & 0xECE4FF934BE15532) - (v894 + v895) + 0x98D80365A0F5566) ^ 0xEF3A970CC124E53BLL;
  v897 = STACK[0x57C0];
  *(v2 + 968) = STACK[0x57C0];
  *(v2 + 1766) = (((__ROR8__(v896, 8) + (v896 ^ __ROR8__(v895, 61))) ^ 0x94AC86FF716F8E22) >> v861) ^ v862;
  *(v2 + 1767) = *(STACK[0x8070] + 12699);
  v898 = *(v2 + 3920);
  *(v2 + 296) = v898;
  v899 = STACK[0x57D8];
  v900 = *(STACK[0x57D8] + 8 * (v897 ^ 0x4090));
  *(v2 + 1768) = v898;
  *(v2 + 280) = v900;
  return (*(v899 + 8 * (*(v2 + 968) ^ 0x4019)))();
}

uint64_t sub_100253C2C@<X0>(int a1@<W0>, unsigned int a2@<W2>, int a3@<W3>, char a4@<W4>, int a5@<W8>)
{
  v11 = v5 < a2;
  *(v6 + (v8 + v9)) = a4;
  if (v11 == v9 + a1 < a2)
  {
    v11 = v5 > v9 + a1;
  }

  v12 = *(STACK[0x57D8] + 8 * ((v11 * a3) ^ (a5 - 1285)));
  *(v10 + 964) = v7;
  return v12();
}

uint64_t sub_100253C80(int a1)
{
  LODWORD(STACK[0x4EA0]) = v1;
  LODWORD(STACK[0x40D0]) = LODWORD(STACK[0x5270]) | LODWORD(STACK[0x55A0]);
  LODWORD(STACK[0x42D8]) = LODWORD(STACK[0x5298]) | LODWORD(STACK[0x4EC0]);
  LODWORD(STACK[0x4778]) = LODWORD(STACK[0x5148]) | LODWORD(STACK[0x4E34]);
  return (*(STACK[0x57D8] + 8 * ((a1 - 1647218927 + 1156 * (a1 ^ 0x222E7AA0)) ^ (15005 * (a1 != 512409187)))))(0x3BCBADC7F10D149);
}

uint64_t sub_100253DE4(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7)
{
  LODWORD(STACK[0x50A8]) = a6;
  LODWORD(STACK[0x52D0]) = v15;
  LODWORD(STACK[0x52E0]) = v14;
  LODWORD(STACK[0x52E8]) = v13;
  LODWORD(STACK[0x5118]) = v10;
  STACK[0x55C0] = v12;
  v17 = STACK[0x4880];
  v18 = (LODWORD(STACK[0x4880]) - 1020253164) | 0x514A;
  v19 = LODWORD(STACK[0x5030]) ^ 0xB;
  LODWORD(STACK[0x56C0]) = v18;
  v20 = v19 ^ v18;
  LODWORD(STACK[0x5780]) = LODWORD(STACK[0x5540]) + a4;
  v21 = (46082049 * ((LODWORD(STACK[0x4E78]) - LODWORD(STACK[0x5520])) ^ LODWORD(STACK[0x56F0]))) ^ ((46082049 * ((LODWORD(STACK[0x4E78]) - LODWORD(STACK[0x5520])) ^ LODWORD(STACK[0x56F0]))) >> 16);
  v22 = -957767083 * (v21 + a7 - (v21 >> 8)) - ((-957767083 * (v21 + a7 - (v21 >> 8))) >> 16);
  v23 = v22 ^ (v22 >> 8);
  v24 = -263119183 * (v23 - LODWORD(STACK[0x53E0]));
  LODWORD(STACK[0x4A90]) = v24;
  v25 = STACK[0x5680];
  v26 = -155573403 * (v24 - HIWORD(v24) + LODWORD(STACK[0x5680]) - ((v24 - HIWORD(v24)) >> 8));
  LODWORD(STACK[0x5310]) = (v26 - HIWORD(v26)) >> 8;
  LODWORD(STACK[0x52F8]) = v26 & 0x832D20AF;
  LODWORD(STACK[0x4FC8]) = v22 & 0xA977131F;
  LODWORD(STACK[0x52A8]) = v23 | 0x27FB3C45;
  LODWORD(STACK[0x57B0]) = a5 & 0xA6C068D;
  v27 = STACK[0x5280];
  LODWORD(STACK[0x5110]) = v7 ^ LODWORD(STACK[0x5280]);
  v28 = *(STACK[0x57D8] + 8 * ((5424 * (v17 != -1371292379)) ^ (v17 - 1020262293)));
  LODWORD(STACK[0x5700]) = v7 | 0x18AC2729;
  LODWORD(STACK[0x53D0]) = STACK[0x5570];
  LODWORD(STACK[0x5580]) = STACK[0x5600];
  LODWORD(STACK[0x5480]) = STACK[0x4F48];
  LODWORD(STACK[0x5550]) = STACK[0x53E8];
  LODWORD(STACK[0x52F0]) = STACK[0x5078];
  LODWORD(STACK[0x55D0]) = STACK[0x53F8];
  LODWORD(STACK[0x5500]) = STACK[0x5620];
  LODWORD(STACK[0x5560]) = STACK[0x5200];
  LODWORD(STACK[0x55A0]) = STACK[0x53B0];
  LODWORD(STACK[0x54F0]) = STACK[0x54B0];
  LODWORD(STACK[0x5360]) = STACK[0x5348];
  STACK[0x53C0] = v20;
  LODWORD(STACK[0x55E0]) = STACK[0x5358];
  LODWORD(STACK[0x5590]) = STACK[0x5378];
  LODWORD(STACK[0x54A0]) = STACK[0x4F58];
  LODWORD(STACK[0x50A0]) = a4;
  LODWORD(STACK[0x5450]) = STACK[0x53A8];
  LODWORD(STACK[0x52A0]) = STACK[0x5268];
  LODWORD(STACK[0x49D0]) = a3;
  LODWORD(STACK[0x5348]) = a3;
  LODWORD(STACK[0x5298]) = v25;
  LODWORD(STACK[0x5740]) = v8;
  LODWORD(STACK[0x5670]) = v27;
  LODWORD(STACK[0x54C0]) = v16;
  LODWORD(STACK[0x57C0]) = v11;
  LODWORD(STACK[0x5790]) = v9;
  return v28();
}

uint64_t sub_1002542C0()
{
  STACK[0xE180] = v1;
  v2 = STACK[0x8040];
  STACK[0xE188] = STACK[0x8040];
  return (*(STACK[0x57D8] + 8 * (((v1 - v2 < 0xA) * ((v0 ^ 0x23EE) - 12461)) ^ v0)))();
}

uint64_t sub_100254318@<X0>(int a1@<W8>)
{
  v2 = *(STACK[0x57D8] + 8 * ((198 * (STACK[0x52F8] < ((a1 - 84704853) & 0xDDFE5FFD) + 655210557 + ((a1 - 9278) | 0x4010))) ^ a1));
  LODWORD(STACK[0x56F0]) = v1;
  return v2();
}

uint64_t sub_1002543A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  STACK[0x50D8] = __ROR8__(*(STACK[0x5200] + (v6 & STACK[0x5208])), 61);
  v7 = *STACK[0x51E8];
  STACK[0x5190] = v7;
  LODWORD(STACK[0x5118]) = v7 & 0xFFFFFFF8;
  LODWORD(STACK[0x5168]) = 2 * STACK[0x5298];
  STACK[0x50D0] = (a6 - 4703);
  v8 = STACK[0x4FC0] + LODWORD(STACK[0x52E8]);
  STACK[0x5268] = *STACK[0x51F0];
  STACK[0x5288] = __ROR8__(v8 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x5358] = 8 * (v8 & 7);
  STACK[0x5260] = v8 & 0xFFFFFFFFFFFFFFF8;
  LODWORD(STACK[0x5160]) = 2 * (v8 & 0xFFFFFFF8);
  LODWORD(v8) = LODWORD(STACK[0x53D0]) == 56;
  LODWORD(STACK[0x52E8]) = LODWORD(STACK[0x5008]) + 56;
  return (*(STACK[0x57D8] + 8 * (a6 ^ (4 * v8))))();
}

uint64_t sub_100254524()
{
  v1 = v0 - 12399;
  v2 = v0 ^ 0x241B;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * v2))();
  STACK[0x77E0] = 0;
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_1002545B8()
{
  v2 = STACK[0x57D8];
  v3 = *(v2 + 8 * ((100 * ((*(STACK[0x57D8] + 8 * (v1 + 16056)))(v0 + 25) != (v1 ^ 0x1DCE) - 9196)) ^ v1));
  return v3();
}

uint64_t sub_10025460C()
{
  LODWORD(STACK[0xC61C]) = v1;
  v2 = STACK[0x6A08];
  LODWORD(STACK[0x98F4]) = v1;
  STACK[0x6230] = v2;
  LODWORD(STACK[0x6974]) = 1286712251;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10025466C()
{
  v1 = STACK[0x57D8];
  STACK[0xBDE0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * ((547 * (v0 ^ 0x72B) - 11506) ^ v0)))(0x308E083E0C524CBELL);
}

uint64_t sub_100254718()
{
  v1 = LODWORD(STACK[0x85DC]);
  v2 = v1 > 0x425243A2;
  v3 = v1 + 1978732275 * ((*(*STACK[0x51F0] + (*STACK[0x51E8] & ((v0 ^ 0x734Au) + 47541895))) & 0x7FFFFFFF ^ 0xC61726DB) + 1 + LODWORD(STACK[0x5ECC])) - 1112687523;
  v4 = v2 ^ (v3 < 0xBDADBC5D);
  v5 = v3 < v1 - 1112687523;
  if (!v4)
  {
    v2 = v5;
  }

  return (*(STACK[0x57D8] + 8 * ((112 * v2) ^ v0)))();
}

uint64_t sub_10025482C()
{
  v3 = *(STACK[0xFE78] + ((v1 ^ 0x1894u) * v2 + 17079528) % 0x1708);
  v4 = *(STACK[0xFE70] + 4 * ((2717 * (v3 | ((v3 < 0x1C) << 8)) + 20842107) % 0x2240));
  v5 = *(STACK[0xFE78] + (3903 * (((v4 ^ 0x63C2B248) - 2027051980) ^ ((v4 ^ 0xD96E7174) + 1031890704) ^ ((v4 ^ 0xBAACC3CD) + 1581503927)) - 1491830648) % 0x1708);
  v6 = *(STACK[0xFE78] + 3903 * (BYTE1(v4) ^ 0x64) + 4008381 - 5896 * (((1456909 * (3903 * (BYTE1(v4) ^ 0x64u) + 4008381)) >> 32) >> 1));
  v7 = v6 & 0x60 ^ 0xC6;
  v8 = (3903 * (((HIBYTE(v4) ^ 0x5B2AAE20) - 1914481602) ^ ((HIBYTE(v4) ^ 0x2E711F7) - 735122453) ^ ((HIBYTE(v4) ^ 0x59CDBF9B) - 1895545465)) + 1323155855) % 0x1708u;
  LOBYTE(v4) = *(STACK[0xFE78] + 3903 * (BYTE2(v4) ^ 0xC5) + 4008381 - 5896 * (((1456909 * (3903 * (BYTE2(v4) ^ 0xC5u) + 4008381)) >> 32) >> 1));
  v9 = *(STACK[0xFE78] + v8);
  v10 = v9 & 0x6C ^ 0x44;
  LOBYTE(v8) = v6 ^ (2 * ((v6 ^ 0x64) & (2 * ((v6 ^ 0x64) & (2 * ((v6 ^ 0x64) & (2 * ((v6 ^ 0x64) & (2 * ((v6 ^ 0x44) & (2 * v7) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7));
  v11 = v4 & 0xB8 ^ 0xEA;
  v12 = v5 & 0x50 ^ 0x7E;
  v13 = (((v9 ^ (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * v10) ^ v10)) ^ v10)) ^ v10)) ^ v10))) ^ 0x6C) << 16) | (((v4 ^ (2 * ((v4 ^ 0x64) & (2 * ((v4 ^ 0x64) & (2 * ((v4 ^ 0x64) & (2 * ((v4 ^ 0x64) & (2 * ((v4 ^ 0x64) & (2 * v11) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11))) ^ 0xB8) << 8);
  *(STACK[0xFE70] + 4 * (v0 % 0x2240)) = (((((v8 ^ 0xB1451E) & ~v13 | v13 & 0x4EBA00) << 8) ^ 0xFD86F167) & ((v5 ^ (2 * ((v5 ^ 0x64) & (2 * ((v5 ^ 0x64) & (2 * ((v5 ^ 0x64) & (2 * ((v5 ^ 0x64) & (2 * ((v5 ^ 0x64) & (2 * v12) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12))) ^ 0xFFFFFF37) | (v5 ^ (2 * ((v5 ^ 0x64) & (2 * ((v5 ^ 0x64) & (2 * ((v5 ^ 0x64) & (2 * ((v5 ^ 0x64) & (2 * ((v5 ^ 0x64) & (2 * v12) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12))) & 0x98) ^ 0x6EB86;
  return (*(STACK[0x57D8] + 8 * ((18226 * (v2 == 255)) ^ v1)))();
}

uint64_t sub_100254E5C@<X0>(unint64_t a1@<X8>)
{
  STACK[0x55B0] = a1;
  STACK[0x5300] = v1;
  return (*(STACK[0x57D8] + 8 * ((((1051 * (v2 ^ 0x301E)) ^ 0x5D12) * (LODWORD(STACK[0x5670]) == 255)) ^ v2)))();
}

uint64_t sub_100254EAC()
{
  v1 = STACK[0x4FC0] + LODWORD(STACK[0x52E8]);
  STACK[0x5200] = __ROR8__(v1 & 0xFFFFFFFFFFFFFFF8, 8);
  v2 = *v1;
  STACK[0x5208] = 8 * (v1 & 7);
  LODWORD(STACK[0x5210]) = v2 ^ 0x6A;
  LODWORD(v1) = ((LODWORD(STACK[0x53D0]) - v0) | (v0 - LODWORD(STACK[0x53D0]))) >= 0;
  LODWORD(STACK[0x52E8]) = LODWORD(STACK[0x5008]) + 46;
  return (*(STACK[0x57D8] + 8 * (v0 ^ 0x14D9 ^ (496 * v1))))();
}

uint64_t sub_100254F70()
{
  v0 = STACK[0x51B8];
  STACK[0x57C0] = STACK[0x7F88] + 24;
  STACK[0x5790] = STACK[0x91C8];
  return (*(STACK[0x57D8] + 8 * (v0 - 7149)))();
}

uint64_t sub_100255174()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x6ACA)))();
  STACK[0xB3B0] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1002551A8(uint64_t a1)
{
  *(a1 + 5) = STACK[0x829F];
  STACK[0xA368] = 0;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v1 + 21882)))(120);
  STACK[0x5C68] = v3 + 0x79CEC8CF5A6FCEBALL;
  return (*(v2 + 8 * (((v3 == 0) * (v1 ^ 0x828 ^ ((v1 - 8302) | 0x28A1))) | v1)))();
}

uint64_t sub_10025534C@<X0>(uint64_t a1@<X8>)
{
  *(v4 + 16) = v1;
  *v3 = a1;
  return (*(STACK[0x57D8] + 8 * ((14908 * (v2 != ((2 * (v2 ^ 0xE83F277)) ^ 0xAE3B1319))) ^ (v2 - 243516377))))();
}

uint64_t sub_1002553A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unint64_t a6)
{
  LODWORD(STACK[0x5730]) = v7;
  LODWORD(STACK[0x57A0]) = (v6 + 254385306) ^ (a5 | (a6 >> 6));
  return (*(STACK[0x57D8] + 8 * (v6 - 2570)))();
}

uint64_t sub_100255470()
{
  v1 = STACK[0x6A08];
  STACK[0xB420] = STACK[0x81C0];
  LODWORD(STACK[0x8C54]) = STACK[0x5824];
  STACK[0x8EA0] = v1;
  LODWORD(STACK[0xBC38]) = -746967311;
  return (*(STACK[0x57D8] + 8 * ((v0 - 2326) ^ v0 ^ (8091 * (v0 != 1703919066)))))();
}

uint64_t sub_100255564(uint64_t a1, int a2)
{
  LODWORD(STACK[0x55D0]) = v2;
  LODWORD(STACK[0x55F0]) = a2;
  LODWORD(STACK[0x5610]) = v5;
  LODWORD(STACK[0x5620]) = v4;
  v7 = *(STACK[0x57D8] + 8 * (v3 ^ (38 * ((STACK[0x57A0] & 1) == 0))));
  LODWORD(STACK[0x5750]) = v6;
  STACK[0x5630] = ((382 * (v3 ^ 0x1510)) ^ 0xFFFFFFEF) + 4584 * (v3 ^ 0x155E) + v6;
  return v7();
}

uint64_t sub_100255600()
{
  v1 = STACK[0x57C0];
  v2 = LODWORD(STACK[0x57C0]) ^ 0x60F4;
  v3 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * v2))(STACK[0xD228]);
  (*(v3 + 8 * v2))(STACK[0xD278] - 0x258DA3F455597FD4);
  (*(v3 + 8 * (v1 + 24364)))(STACK[0xD260] - 0x65D60BB8BC60833ELL);
  (*(v3 + 8 * (v1 + 24364)))(STACK[0xD270]);
  (*(v3 + 8 * v2))(v0);
  (*(v3 + 8 * (v1 + 24364)))(STACK[0xD238]);
  (*(v3 + 8 * (v1 + 24364)))(STACK[0xD248]);
  v4 = (*(v3 + 8 * (v1 + 24364)))(STACK[0xD240]);
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_100255804()
{
  if (LODWORD(STACK[0xBE4C]) != ((2 * STACK[0x51B8]) ^ 0xA07C) - 769888313)
  {
    v0 = 0;
  }

  return (*(STACK[0x57D8] + 8 * ((v0 * (((STACK[0x51B8] - 6214) | 0x507) + 13855)) ^ (STACK[0x51B8] - 8528))))();
}

uint64_t sub_1002558FC@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  STACK[0x6BB0] = v2;
  LODWORD(STACK[0xACB4]) = -1915525708;
  return (*(STACK[0x57D8] + 8 * (a2 - 11739)))(a1, 2147548249, 0x30BDFED8F32E6831);
}

uint64_t sub_100255F78()
{
  v2 = *(v0 + 2376);
  v3 = v2 & 0xFFFFFFF8;
  v4 = *STACK[0x51E8];
  v5 = *STACK[0x51F0];
  v6 = *(v5 + (((v2 & 0xFFFFFFF8) - 1831847768) & v4));
  v7 = __ROR8__(v2 & 0xFFFFFFFFFFFFFFF8, 8);
  v8 = *(v0 + 295);
  v9 = (((2 * (v6 + v7)) & 0x361BE905CF059258) - (v6 + v7) - 0x1B0DF482E782C92DLL) ^ 0x265D35D7278C8E37;
  v10 = v9 ^ __ROR8__(v6, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0x65F254DD188DB4FCLL;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0x6FF046966119128DLL;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0xA1B29DC5D776132BLL;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ v1;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = __ROR8__((((2 * (v19 + v18)) & 0xADFD39EE046E89C4) - (v19 + v18) + 0x29016308FDC8BB1DLL) ^ 0xF1C6D01737D162C3, 8);
  v21 = (((2 * (v19 + v18)) & 0xADFD39EE046E89C4) - (v19 + v18) + 0x29016308FDC8BB1DLL) ^ 0xF1C6D01737D162C3 ^ __ROR8__(v18, 61);
  v22 = (v20 + v21) ^ 0x5455012E8AB1C38FLL;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = __ROR8__(v22, 8);
  LOBYTE(v2) = 8 * (v2 & 7);
  *(v0 + 1877) = (((((2 * (v24 + v23)) & 0x1FBA2BC080859F2ELL) - (v24 + v23) + 0x7022EA1FBFBD3068) ^ 0x1F6D8AA3B1BF6E88uLL) >> v2) ^ v8;
  v25 = *(v5 + (v4 & ((v3 | 0x9B0AB6F9) - 1831847764 + (v3 | 0x64F54907)) & 0xFFFFFFF8));
  v26 = (v25 + v7) ^ 0xC2AF3EAA3FF1B8E4;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (0x969E049D75CEF7B2 - ((v28 + v27) | 0x969E049D75CEF7B2) + ((v28 + v27) | 0x6961FB628A31084DLL)) ^ 0xC93AFBF92BCBCB1;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x6FF046966119128DLL;
  v32 = __ROR8__(v31, 8);
  v33 = v31 ^ __ROR8__(v30, 61);
  v34 = (((2 * (v32 + v33)) | 0xF1B32E173131CFDCLL) - (v32 + v33) - 0x78D9970B9898E7EELL) ^ 0xD96B0ACE4FEEF4C5;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ v1;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0xD8C7B31FCA19D9DELL;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (0x856730D9247EE384 - ((v40 + v39) | 0x856730D9247EE384) + ((v40 + v39) | 0x7A98CF26DB811C7BLL)) ^ 0x2ECDCE085130DFF4;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = __ROR8__(v41, 8);
  **(v0 + 2360) = *(v0 + 2375) ^ v8 ^ (((((2 * (v43 + v42)) | 0x1C48EEF1BC85E864) - (v43 + v42) + 0x71DB888721BD0BCELL) ^ 0xE16B17C4D040AAD2) >> v2);
  v44 = *(v0 + 3920) + 29;
  *(v0 + 296) = v44;
  v45 = STACK[0x57D8];
  v46 = *(STACK[0x57D8] + 8 * (LODWORD(STACK[0x4D6C]) ^ 0x23C1));
  *(v0 + 2384) = v44;
  *(v0 + 280) = v46;
  return (*(v45 + 8 * (STACK[0x51B8] + 8890)))();
}

uint64_t sub_100256394@<X0>(int a1@<W8>)
{
  STACK[0x8738] = v2 + 2;
  v5 = *(v4 + (((v1 ^ 0x58D9) - 22622) & a1 & ((v3 & 0xFFFFFFF8) + 1750430424 + (v3 & 0x6E82EEA0 | 0x917D1158) - ((((v1 + 18325) | 0x2402) ^ 0x6E828286) & v3 & 0xFFFFFFF8) + 1380)));
  v6 = (v5 + __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xF41651499F5E3C67;
  v7 = v6 ^ __ROR8__(v5, 61);
  v8 = __ROR8__(v6, 8);
  v9 = (((2 * (v8 + v7)) | 0x35A69BAC84474596) - (v8 + v7) - 0x1AD34DD64223A2CBLL) ^ 0xFE10F387ED3C882;
  v10 = v9 ^ __ROR8__(v7, 61);
  v11 = __ROR8__(v9, 8);
  v12 = (v11 + v10 - ((2 * (v11 + v10)) & 0x9A5D48B328683BC8) - 0x32D15BA66BCBE21CLL) ^ 0xEF5B709EAC01247FLL;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0xE5AF1AB32EBD3CDDLL;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (((v16 + v15) & 0x5223CA2284FFC7D9 ^ 0x21C222002646C0) + ((v16 + v15) ^ 0xD3C62890FED9B91FLL) - (((v16 + v15) ^ 0xD3C62890FED9B91FLL) & 0x5223CA2284FFC7D9)) ^ 0x46382B44B663C9E7;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xA82620A559D2DA78;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0x5F8DEC3EA3980A1BLL;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (((((2 * (v23 + v22)) | 0x282F3D44AF7E881ALL) - (v23 + v22) - 0x14179EA257BF440DLL) ^ 0xD5D45670F37A0C25) >> (8 * (v3 & 7u))) ^ *(v2 + 1);
  v25 = ((v24 ^ 0x48) + 55) ^ ((v24 ^ 0xFFFFFFB8) - 57) ^ ((v24 ^ 0xFFFFFFF0) - 113);
  return (*(STACK[0x57D8] + 8 * ((22723 * ((((v25 - v1) | (v1 - v25)) & 0x80) == 0)) ^ (v1 + 7107))))();
}

uint64_t sub_100256640()
{
  v1 = LOWORD(STACK[0x5D68]) ^ 0x8094;
  v2 = STACK[0x6EF0];
  STACK[0xC500] = STACK[0x8438];
  LODWORD(STACK[0xC8E4]) = -1837698116;
  STACK[0xAAD0] = v2;
  LOWORD(STACK[0x5E56]) = v1;
  LODWORD(STACK[0xAD70]) = 2139806519;
  return (*(STACK[0x57D8] + 8 * (v0 ^ 0x181D3FE8 ^ ((v0 == -1879024332) * ((v0 - 404523775) ^ 0x354D)))))();
}

uint64_t sub_100256704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0x57D8];
  v8 = STACK[0x1128];
  v9 = STACK[0x112C] & 0x7DDBFEDA;
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1128]));
  return (*(v7 + 8 * (v8 ^ 0x16D7 ^ (13918 * (LODWORD(STACK[0x111C]) > (v9 ^ 0x8844B93C))))))(STACK[0xB520], a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_100256830()
{
  v0 = STACK[0x51B8];
  *(STACK[0xBFC0] - 0x1883660EE814440ALL) = STACK[0xDACC];
  return (*(STACK[0x57D8] + 8 * ((v0 - 143135685) ^ 0xF7784E82 ^ (((((LODWORD(STACK[0xDAD0]) - (v0 - 143135685)) | (v0 - 143135685 - LODWORD(STACK[0xDAD0]))) & 0x80000000) == 0) * LODWORD(STACK[0x27B8])))))();
}

uint64_t sub_1002568B4@<X0>(void *a1@<X0>, _DWORD *a2@<X1>, int a3@<W8>)
{
  v4 = a3 ^ 0x2BA90F7A ^ *(*a1 + (*a2 & 0xFADE648C)) & 0x7FFFFFFFu;
  v5 = STACK[0x7E4];
  v6 = STACK[0x51B8];
  v7 = STACK[0x51B8] - 1079089617;
  v8 = 551690071 * ((~(v3 - 240) & 0x7ED1237C695D0073 | (v3 - 240) & 0x812EDC8396A2FF8CLL) ^ 0xF4C71B227B05324);
  STACK[0x1D4E0] = v8 + 1837589608;
  LODWORD(STACK[0x1D4C4]) = v8 ^ LODWORD(STACK[0x7E0]);
  LODWORD(STACK[0x1D4CC]) = v5 - v8;
  STACK[0x1D4D8] = v4 - v8;
  LODWORD(STACK[0x1D4C8]) = (v5 ^ 0x1E) - v8;
  LODWORD(STACK[0x1D4D0]) = v8;
  LODWORD(STACK[0x1D4C0]) = v7 ^ v8;
  v9 = STACK[0x57D8];
  v10 = (*(STACK[0x57D8] + 8 * (v6 ^ 0x2411)))(v3 - 240);
  return (*(v9 + 8 * SLODWORD(STACK[0x1D4D4])))(v10);
}

uint64_t sub_100256A2C()
{
  STACK[0x9CF0] = STACK[0x7CC8];
  LODWORD(STACK[0x70CC]) = STACK[0xBD30];
  STACK[0x6EA8] = STACK[0xBA18];
  LODWORD(STACK[0x639C]) = -769884028;
  STACK[0x9470] = &STACK[0x6338];
  STACK[0xB730] = &STACK[0x7534];
  LOBYTE(STACK[0x8DC7]) = 0;
  LODWORD(STACK[0xA5CC]) = -1246286815;
  return (*(STACK[0x57D8] + 8 * v0))(88);
}

uint64_t sub_100256B28()
{
  STACK[0x57C0] = STACK[0x6330];
  STACK[0x57B0] = STACK[0x6BF8];
  v1 = *(STACK[0x57D8] + 8 * ((((v0 + 660) | 0x220A) ^ 0x6475) + v0));
  LODWORD(STACK[0x57A0]) = 103679715;
  return v1();
}

uint64_t sub_100256C10()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v1 + 14699)))(((v1 - 15801) ^ 0x913A064E) + v0);
  STACK[0x7368] = v3;
  return (*(v2 + 8 * (((v3 == 0) * ((v1 + 5507) ^ 0x5867)) ^ v1)))();
}

uint64_t sub_100257014@<X0>(int a1@<W8>)
{
  STACK[0x7FF8] = v2;
  LODWORD(STACK[0x7F64]) = 2 * a1;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 + 6112)))((a1 << (v1 - 105 + v1 + 50 - 125)));
  *(STACK[0x4D10] + 8) = v4;
  return (*(v3 + 8 * ((3358 * (v4 == 0)) ^ v1)))();
}

uint64_t sub_100257094(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14)
{
  v23 = (((2 * STACK[0x5068]) & 0x35E2EDB40B317B7CLL) - STACK[0x5068] + 0x650E8925FA674241) ^ 0x5DC6384F1D622A36;
  v24 = v23 ^ STACK[0x5078];
  v25 = __ROR8__(v23, 8);
  v26 = (((2 * (v25 + v24)) | 0xE86FF15E5F695F3ELL) - (v25 + v24) + 0xBC80750D04B5061) ^ 0x11B749D2A3714ACELL;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (((v28 + v27) | 0xED020FB9ACDDBE6DLL) - ((v28 + v27) | 0x12FDF04653224192) + 0x12FDF04653224192) ^ 0xCA3F2E27D884717 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__((((v28 + v27) | 0xED020FB9ACDDBE6DLL) - ((v28 + v27) | 0x12FDF04653224192) + 0x12FDF04653224192) ^ 0xCA3F2E27D884717, 8) + v29) ^ 0xDA604B0C03A2BF99;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0xFA35E2CDCB3E31C7;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0xD2F00CE620E5D3AELL;
  v35 = *(STACK[0x5200] + (STACK[0x5208] & ((STACK[0x5158] & 0xEDDBBB88) + (STACK[0x5158] | 0xEDDBBB88) - 1939833456)));
  v36 = (v35 + STACK[0x5258] - ((2 * (v35 + STACK[0x5258])) & 0x8748CD752ABECAB6) - 0x3C5B99456AA09AA5) ^ 0x7B2C676E74980608;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (v38 + v37 - ((2 * (v38 + v37)) & 0x2CFDDDFC0AA4D7E8) - 0x69811101FAAD940CLL) ^ 0xAEB65F94E2570383;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0xE580B17D8CC5E551;
  v42 = __ROR8__(v41, 8);
  v43 = v41 ^ __ROR8__(v40, 61);
  v44 = (((2 * (v42 + v43)) & 0xC020593860ABE820) - (v42 + v43) + 0x1FEFD363CFAA0BEFLL) ^ 0xFE4E2E381EFFF295;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ 0xDA604B0C03A2BF99;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = __ROR8__(v46, 8);
  v49 = (v48 + v47 - ((2 * (v48 + v47)) & 0xCF02A68E891ED522) + 0x67815347448F6A91) ^ 0x9DB4B18A8FB15B56;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = __ROR8__(v49, 8);
  v52 = (v51 + v50 - ((2 * (v51 + v50)) & 0x9E83EFFC77B101C8) + 0x4F41F7FE3BD880E4) ^ 0x9DB1FB181B3D534ALL;
  v53 = v52 ^ __ROR8__(v50, 61);
  v54 = __ROR8__(v52, 8);
  LODWORD(STACK[0x5378]) = LODWORD(STACK[0x57C0]) ^ (((__ROR8__(v34, 8) + (v34 ^ __ROR8__(v33, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x57B0]);
  LODWORD(STACK[0x5460]) = LODWORD(STACK[0x56E0]) ^ (((((2 * (v54 + v53)) & 0x7738FDA314097DB6) - (v54 + v53) - 0x3B9C7ED18A04BEDCLL) ^ 0x30108A1FDB8B345FLL) >> STACK[0x5670]);
  v55 = *(STACK[0x56F0] + (LODWORD(STACK[0x5118]) & ((STACK[0x53B0] ^ 0xFBC18FB) - 1980214762 + (LODWORD(STACK[0x5100]) | 0xE087CE09))));
  v56 = (((2 * (v55 + STACK[0x5440])) | 0xAFD6DA514EA802BCLL) - (v55 + STACK[0x5440]) - 0x57EB6D28A754015ELL) ^ 0xEF636CFC4693620DLL;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = __ROR8__(v56, 8);
  v59 = __ROR8__((((2 * (v58 + v57)) | 0xA4DB5751F914D46CLL) - (v58 + v57) + 0x2D925457037595CALL) ^ 0xEAA51AC21B8F0241, 8);
  v60 = (((2 * (v58 + v57)) | 0xA4DB5751F914D46CLL) - (v58 + v57) + 0x2D925457037595CALL) ^ 0xEAA51AC21B8F0241 ^ __ROR8__(v57, 61);
  v61 = (v59 + v60) ^ 0xE580B17D8CC5E551;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = __ROR8__(v61, 8);
  v64 = (((v63 + v62) ^ 0xD4DBD52C7BF2231ALL | 0x3B3B44AFA1FF67B0) - ((v63 + v62) ^ 0xD4DBD52C7BF2231ALL | 0xC4C4BB505E00984FLL) - 0x3B3B44AFA1FF67B1) ^ 0xE416CD80B58BDD0;
  v65 = v64 ^ __ROR8__(v62, 61);
  v66 = (__ROR8__(v64, 8) + v65) ^ 0xDA604B0C03A2BF99;
  v67 = v66 ^ __ROR8__(v65, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ 0xFA35E2CDCB3E31C7;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = __ROR8__(v68, 8);
  v71 = (v70 + v69 - ((2 * (v70 + v69)) & 0xBD255EC75C89A894) - 0x216D509C51BB2BB6) ^ 0xC62A3858EA107E4;
  v72 = v71 ^ __ROR8__(v69, 61);
  v73 = __ROR8__(v71, 8);
  v74 = *(STACK[0x5250] + (LODWORD(STACK[0x5170]) & ((STACK[0x5298] ^ 0x22B00BE1) + 1468804409 + (STACK[0x5168] & 0x456017C0))));
  v75 = (((2 * (v74 + STACK[0x52C0])) | 0x7F53697738BD2B44) - (v74 + STACK[0x52C0]) + 0x40564B4463A16A5ELL) ^ 0x721B56F7D99F6F1;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = (__ROR8__(v75, 8) + v76) ^ 0x38C8B16AE7056877;
  v78 = v77 ^ __ROR8__(v76, 61);
  LODWORD(STACK[0x52B0]) = LODWORD(STACK[0x5600]) ^ (((((2 * (v73 + v72)) | 0x6BF406A0A9BBD66) - (v73 + v72) + 0x7CA05FCAFAB2214DLL) ^ 0x772CAB04AB3DABC8) >> STACK[0x5450]);
  v79 = (__ROR8__(v77, 8) + v78) ^ 0xE580B17D8CC5E551;
  v80 = v79 ^ __ROR8__(v78, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ 0xE1A1FD5BD155F97ALL;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = (__ROR8__(v81, 8) + v82) ^ 0xDA604B0C03A2BF99;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = (__ROR8__(v83, 8) + v84) ^ 0xFA35E2CDCB3E31C7;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = __ROR8__(v85, 8);
  v88 = STACK[0x50C0];
  v89 = (((v87 + v86) | 0x18ED5A6A926B6714) - ((v87 + v86) | 0xE712A5956D9498EBLL) - 0x18ED5A6A926B6715) ^ 0xCA1D568CB28EB4BALL;
  v90 = (((2 * v88) & 0x6E3B2CF34264EFALL) - v88 + 0x7C8E269865ECD882) ^ 0xC406274C842BBBD1 ^ STACK[0x50C8];
  v91 = (__ROR8__((((2 * v88) & 0x6E3B2CF34264EFALL) - v88 + 0x7C8E269865ECD882) ^ 0xC406274C842BBBD1, 8) + v90) ^ 0x38C8B16AE7056877;
  v92 = v91 ^ __ROR8__(v90, 61);
  v93 = __ROR8__(v89, 8) + (v89 ^ __ROR8__(v86, 61));
  v94 = (__ROR8__(v91, 8) + v92) ^ 0xE580B17D8CC5E551;
  v95 = v94 ^ __ROR8__(v92, 61);
  v96 = (__ROR8__(v94, 8) + v95) ^ 0xE1A1FD5BD155F97ALL;
  v97 = v96 ^ __ROR8__(v95, 61);
  v98 = __ROR8__(v96, 8);
  v99 = v98 + v97 - ((2 * (v98 + v97)) & 0x2A258913DB37ADALL);
  v100 = *(STACK[0x5148] + (LODWORD(STACK[0x5130]) & ((STACK[0x5138] | 0x51F463E1) + 2050767130 + (STACK[0x5138] | 0xAE0B9C1F))));
  v101 = (v100 + STACK[0x5140]) ^ 0xB88801D4E1C76353;
  v102 = v101 ^ __ROR8__(v100, 61);
  v103 = __ROR8__(v101, 8);
  v104 = (((v103 + v102) | 0xBE703317F7481958) - ((v103 + v102) | 0x418FCCE808B7E6A7) + 0x418FCCE808B7E6A7) ^ 0x86B8827D104D712FLL;
  v105 = v104 ^ __ROR8__(v102, 61);
  v106 = __ROR8__(v104, 8);
  v107 = *(STACK[0x5180] + (v15 & ((STACK[0x5178] | 0xB371F9B3) + 2050767130 + ((LODWORD(STACK[0x50E0]) + 1284367188) | STACK[0x5178]))));
  v108 = (((v106 + v105) | 0xB55891936B59A136) - ((v106 + v105) | 0x4AA76E6C94A65EC9) + 0x4AA76E6C94A65EC9) ^ 0x50D820EEE79C4467;
  v109 = v108 ^ __ROR8__(v105, 61);
  v110 = __ROR8__(v108, 8);
  v111 = (v99 - 0x7EAED3B761264293) ^ 0x5B3167449D7B02F4;
  v112 = v111 ^ __ROR8__(v97, 61);
  v113 = (__ROR8__(v111, 8) + v112) ^ 0xFA35E2CDCB3E31C7;
  v114 = v113 ^ __ROR8__(v112, 61);
  v115 = (v110 + v109 - ((2 * (v110 + v109)) & 0x82951216673E5C08) + 0x414A890B339F2E04) ^ 0xA0EB7450E2CAD77ELL;
  v116 = v115 ^ __ROR8__(v109, 61);
  v117 = __ROR8__(v115, 8);
  v118 = (__ROR8__(v113, 8) + v114) ^ 0xD2F00CE620E5D3AELL;
  v119 = v118 ^ __ROR8__(v114, 61);
  v120 = __ROR8__(v118, 8);
  v121 = (((2 * (v117 + v116)) | 0x71369168DED24E3ELL) - (v117 + v116) - 0x389B48B46F69271FLL) ^ 0xE2FB03B86CCB9886;
  v122 = v121 ^ __ROR8__(v116, 61);
  v123 = __ROR8__(v121, 8);
  v124 = (v107 + STACK[0x5188]) ^ 0xB88801D4E1C76353;
  v125 = v124 ^ __ROR8__(v107, 61);
  LODWORD(STACK[0x5020]) = LODWORD(STACK[0x5348]) ^ ((v93 ^ 0xF4730B31AE70757BLL) >> STACK[0x5328]);
  v126 = ((v120 + v119) | 0xF6C7F837891C6B63) - ((v120 + v119) | 0x93807C876E3949CLL);
  v127 = (__ROR8__(v124, 8) + v125) ^ 0x38C8B16AE7056877;
  v128 = v127 ^ __ROR8__(v125, 61);
  v129 = __ROR8__(v127, 8);
  v130 = (((2 * (v123 + v122)) & 0x45CA46F1D306BFF0) - (v123 + v122) + 0x5D1ADC87167CA007) ^ 0xA72F3E4ADD4291C0;
  v131 = v130 ^ __ROR8__(v122, 61);
  v132 = (__ROR8__(v130, 8) + v131) ^ 0xD2F00CE620E5D3AELL;
  v133 = ((((v129 + v128) << (v17 ^ 0xA0u)) & 0xFCCB409079405132) - (v129 + v128) - 0x7E65A0483CA0289ALL) ^ 0x641AEECA4F9A3237;
  v134 = v133 ^ __ROR8__(v128, 61);
  LODWORD(STACK[0x54B0]) = LODWORD(STACK[0x5198]) ^ (((v126 + 0x93807C876E3949CLL) ^ 0x2B4F306276C1E18) >> STACK[0x5358]);
  v135 = (__ROR8__(v133, 8) + v134) ^ 0xE1A1FD5BD155F97ALL;
  v136 = v135 ^ __ROR8__(v134, 61);
  v137 = __ROR8__(v135, 8);
  v138 = (((v137 + v136) ^ 0x5CFEF378FC906F51 | 0x8A31EB67D5AE7097) - ((v137 + v136) ^ 0x5CFEF378FC906F51 | 0x75CE14982A518F68) + 0x75CE14982A518F68) ^ 0xCAF53132A9CA05FLL;
  v139 = v138 ^ __ROR8__(v136, 61);
  LODWORD(STACK[0x5220]) = LODWORD(STACK[0x51C0]) ^ (((__ROR8__(v132, 8) + (v132 ^ __ROR8__(v131, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x51A8]);
  v140 = (__ROR8__(v138, 8) + v139) ^ 0xFA35E2CDCB3E31C7;
  v141 = __ROR8__(v140, 8);
  v142 = v140 ^ __ROR8__(v139, 61);
  v143 = (((2 * (v141 + v142)) & 0xE67EA00FFD75E030) - (v141 + v142) + 0xCC0AFF801450FE7) ^ 0xDE30A31E21A0DC49;
  LODWORD(STACK[0x5298]) = LODWORD(STACK[0x51B0]) ^ (((__ROR8__(v143, 8) + (v143 ^ __ROR8__(v142, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x51A0]);
  v144 = *(v14 + (((v18 ^ 0xE5D6DBBF) - 1805296293 + ((2 * v18) & 0xCBADB770)) & v16 & 0xFFFFFFF8));
  v145 = (v144 + STACK[0x5338]) ^ 0xB88801D4E1C76353;
  v146 = v145 ^ __ROR8__(v144, 61);
  v147 = __ROR8__(v145, 8);
  v148 = (((2 * (v147 + v146)) & 0x231761463394B6F2) - (v147 + v146) + 0x6E744F5CE635A486) ^ 0x56BCFE360130CCF1;
  v149 = v148 ^ __ROR8__(v146, 61);
  v150 = __ROR8__(v148, 8);
  v151 = __ROR8__((((v150 + v149) | 0x354D07C78F78CB36) - ((v150 + v149) | 0xCAB2F838708734C9) - 0x354D07C78F78CB37) ^ 0xD0CDB6BA03BD2E67, 8);
  v152 = (((v150 + v149) | 0x354D07C78F78CB36) - ((v150 + v149) | 0xCAB2F838708734C9) - 0x354D07C78F78CB37) ^ 0xD0CDB6BA03BD2E67 ^ __ROR8__(v149, 61);
  v153 = (((v151 + v152) | 0x7F3327541C37970BLL) - ((v151 + v152) | 0x80CCD8ABE3C868F4) - 0x7F3327541C37970CLL) ^ 0x9E92DA0FCD626E71;
  v154 = v153 ^ __ROR8__(v152, 61);
  v155 = __ROR8__(v153, 8);
  v156 = (((2 * (v155 + v154)) | 0x3043316247593DFELL) - (v155 + v154) + 0x67DE674EDC536101) ^ 0x4241D3BD200E2166;
  v157 = v156 ^ __ROR8__(v154, 61);
  v158 = __ROR8__(v156, 8);
  v159 = (((v158 + v157) | 0x7750564B856279F1) - ((v158 + v157) | 0x88AFA9B47A9D860ELL) - 0x7750564B856279F2) ^ 0x8D65B4864E5C4836;
  v160 = v159 ^ __ROR8__(v157, 61);
  v161 = (__ROR8__(v159, 8) + v160) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(STACK[0x5338]) = v20 ^ (((__ROR8__(v161, 8) + (v161 ^ __ROR8__(v160, 61))) ^ 0xF4730B31AE70757BLL) >> v21);
  v162 = *(v22 + (((7538 * (a4 ^ 0x1298)) ^ 0xFFFFA7AE) & *STACK[0x51E8] & ((v19 ^ a14) - 1602364081 + (((a4 ^ 0x37DB) - 1283681705) | (2 * v19)))));
  v163 = __ROR8__((v162 + STACK[0x53E8]) ^ 0xB88801D4E1C76353, 8);
  v164 = (v162 + STACK[0x53E8]) ^ 0xB88801D4E1C76353 ^ __ROR8__(v162, 61);
  v165 = (v163 + v164 - ((2 * (v163 + v164)) & 0x209386513B3D175ELL) + 0x1049C3289D9E8BAFLL) ^ 0x288172427A9BE3D8;
  v166 = __ROR8__(v165, 8);
  v167 = v165 ^ __ROR8__(v164, 61);
  v168 = (((v166 + v167) | 0xB4AB73E459829E55) - ((v166 + v167) | 0x4B548C1BA67D61AALL) + 0x4B548C1BA67D61AALL) ^ 0x512BC299D5477B04;
  v169 = v168 ^ __ROR8__(v167, 61);
  v170 = (__ROR8__(v168, 8) + v169) ^ 0xE1A1FD5BD155F97ALL;
  v171 = v170 ^ __ROR8__(v169, 61);
  v172 = (__ROR8__(v170, 8) + v171) ^ 0xDA604B0C03A2BF99;
  v173 = v172 ^ __ROR8__(v171, 61);
  v174 = (__ROR8__(v172, 8) + v173) ^ 0xFA35E2CDCB3E31C7;
  v175 = __ROR8__(v174, 8);
  v176 = v174 ^ __ROR8__(v173, 61);
  v177 = (((2 * ((v175 + v176) ^ 0xC1F533AAD19A54D4)) & 0x577C3AAD9FAE6ED8) - ((v175 + v176) ^ 0xC1F533AAD19A54D4) + 0x5441E2A93028C893) ^ 0x4744DDE5C1574FE9;
  v178 = ((__ROR8__(v177, 8) + (v177 ^ __ROR8__(v176, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x53F8];
  LODWORD(STACK[0x5328]) = (((v178 ^ LODWORD(STACK[0x5620]) ^ 0x4E) - 90) ^ ((v178 ^ LODWORD(STACK[0x5620]) ^ 0x2D) - 57) ^ ((v178 ^ LODWORD(STACK[0x5620]) ^ 0x63) - 119)) + 60;
  LODWORD(v178) = LODWORD(STACK[0x53D0]) == 63;
  LODWORD(STACK[0x52E8]) = LODWORD(STACK[0x5008]) + 63;
  STACK[0x52F8] = 63;
  return (*(STACK[0x57D8] + 8 * (a4 ^ (51 * v178))))(4294967211, LODWORD(STACK[0x52E0]));
}

uint64_t sub_100258500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x4E00] = 2 * STACK[0x5068];
  v8 = STACK[0x50D8] ^ 0xB88801D4E1C76353 ^ STACK[0x50E0];
  v9 = (__ROR8__(STACK[0x50D8] ^ 0xB88801D4E1C76353, 8) + v8) ^ 0x38C8B16AE7056877;
  v10 = v9 ^ __ROR8__(v8, 61);
  STACK[0x4DF0] = __ROR8__(v9, 8) + v10;
  STACK[0x4DF8] = __ROR8__(v10, 61);
  v11 = *(STACK[0x5060] + (STACK[0x5020] & STACK[0x5440]));
  STACK[0x4E88] = v11 + STACK[0x50D0];
  STACK[0x4E90] = __ROR8__(v11, 61);
  v12 = *STACK[0x51E8];
  LODWORD(STACK[0x4E50]) = v12;
  LODWORD(STACK[0x4E18]) = v12 & 0xFFFFFFF8;
  v13 = (STACK[0x4FD0] + v6) & 0xFFFFFFF8;
  v14 = *(STACK[0x4F58] + (STACK[0x4F50] & v13)) + STACK[0x4FC8];
  v15 = __ROR8__(*(STACK[0x4F58] + (STACK[0x4F50] & v13)), 61);
  STACK[0x4DE8] = v14;
  STACK[0x4DE0] = v15;
  v16 = v14 ^ 0xB88801D4E1C76353 ^ v15;
  STACK[0x4E78] = __ROR8__(v16, 61);
  STACK[0x4E70] = __ROR8__(v14 ^ 0xB88801D4E1C76353, 8) + v16;
  LODWORD(STACK[0x4E08]) = v7 ^ 0x6CE4;
  LODWORD(STACK[0x4E10]) = 2099 * (v7 ^ 0x6CE4);
  v17 = STACK[0x4FC0] + LODWORD(STACK[0x5540]);
  v18 = *v17;
  STACK[0x4EB8] = __ROR8__(v17 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x4DC8] = v17;
  STACK[0x4EC8] = 8 * (v17 & 7);
  LODWORD(STACK[0x4E80]) = v18 ^ 0xFFFFFF8E;
  LODWORD(STACK[0x4E38]) = 2 * (v17 & 0xFFFFFFF8);
  return (*(STACK[0x57D8] + 8 * (v7 ^ (491 * (LODWORD(STACK[0x53D0]) == 13)))))(4294967269, a2, a3, a4, a5, a6, (LODWORD(STACK[0x5008]) + 13));
}

uint64_t sub_1002586B0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = STACK[0x37E4];
  v21 = *(*v17 + (*v18 & (a4 + ((v9 + v10) & 0x67BFE748 | 0x984018B7) + ((v9 + v10) & 0xFFFFFFF8 | (((LODWORD(STACK[0x37E4]) - 7081) | 0x5016) + 1740607218)) + 1) & 0xFFFFFFF8));
  v22 = __ROR8__((v9 + v10) & 0xFFFFFFFFFFFFFFF8, 8);
  v23 = (((2 * (v21 + v22)) | 0xB1FD16C359C2DB5ELL) - (v21 + v22) - 0x58FE8B61ACE16DAFLL) ^ 0xACE8DA2833BF51C8;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ v11;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (((2 * (v27 + v26)) & 0x3A0B8596360DDDF0) - (v27 + v26) + 0x62FA3D34E4F91107) ^ 0x408FE9F3DCCC289CLL ^ __ROR8__(v26, 61);
  v29 = (__ROR8__((((2 * (v27 + v26)) & 0x3A0B8596360DDDF0) - (v27 + v26) + 0x62FA3D34E4F91107) ^ 0x408FE9F3DCCC289CLL, 8) + v28) ^ a8;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ v15;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (((2 * (v33 + v32)) | 0xB82A9DC6032DB254) - (v33 + v32) - 0x5C154EE30196D92ALL) ^ 0xF4336E4658440352;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = *(*v17 + ((((((2 * ((v8 + v10) & 0xFFFFFFF8)) & 0xDCC5F0) + ((v8 + v10) & 0xFFFFFFF8 ^ (v19 + 602))) & 0xFFFFFFF8) + 2043532832) & *v18));
  v37 = __ROR8__(v34, 8) + v35;
  v38 = (v36 + __ROR8__((v8 + v10) & 0xFFFFFFFFFFFFFFF8, 8)) ^ v13;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ v12;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v40, 8);
  v43 = (((2 * v37) | 0x885841AE586145E2) - v37 + 0x3BD3DF28D3CF5D0FLL) ^ 0x9BA1CCE98FA8A8EALL;
  v44 = (((2 * (v42 + v41)) & 0x2249311E9A91AC4ELL) - (v42 + v41) - 0x1124988F4D48D628) ^ 0xB5BD60D3E72CC89;
  v45 = v44 ^ __ROR8__(v41, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ 0xE1A1FD5BD155F97ALL;
  v47 = __ROR8__(v43, 8) + (v43 ^ __ROR8__(v35, 61));
  v48 = v46 ^ __ROR8__(v45, 61);
  v49 = __ROR8__(v46, 8);
  v50 = (v49 + v48 - ((2 * (v49 + v48)) & 0x6BD98C4AFD02C9C8) - 0x4A1339DA817E9B1CLL) ^ 0x6F8C8D297D23DB7DLL;
  v51 = v50 ^ __ROR8__(v48, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ a5;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ v16;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = __ROR8__(v54, 8);
  *(v8 + v10) = ((v47 ^ v14) >> (8 * ((v9 + v10) & 7))) ^ (((((2 * (v56 + v55)) & 0x709F165A029F94DCLL) - (v56 + v55) - 0x384F8B2D014FCA6FLL) ^ 0x33C37FE350C040EAuLL) >> (8 * ((v8 + v10) & 7))) ^ *(v9 + v10);
  return (*(STACK[0x57D8] + 8 * ((22 * (v10 != 15)) ^ v20)))();
}

uint64_t sub_100258BC4()
{
  v2 = STACK[0x51B8];
  v3 = 1978732275 * (v0 - v1) + 876038503;
  *(STACK[0xE5A0] + 796) = v3 ^ ((v3 ^ 0x55721507) - 1631935584) ^ ((v3 ^ 0x3AE8D930) - 249532503) ^ ((v3 ^ 0x2C227AAF) - 404042696) ^ ((v3 ^ 0x778FFFFF) - 1136178840) ^ 0xE62BC9F3;
  return (*(STACK[0x57D8] + 8 * (v2 + 7015)))();
}

uint64_t sub_100258CDC()
{
  v1 = STACK[0xA9D8];
  v2 = STACK[0x6250];
  v3 = STACK[0x6F80];
  v4 = STACK[0x57D8];
  STACK[0x9D20] = *(STACK[0x57D8] + 8 * v0);
  return (*(v4 + 8 * (v0 ^ 0x59EA ^ (v0 + 29292))))(&STACK[0xD760], v1, v2, v3);
}

uint64_t sub_100258DD8()
{
  v4 = (v3 + v1);
  *v4 = 0u;
  v4[1] = 0u;
  return (*(STACK[0x57D8] + 8 * ((30 * (((v2 - 1672) ^ 0x54C5) + v1 == v0)) ^ v2)))();
}

uint64_t sub_100258E18()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))(v0);
  return (*(v1 + 8 * SLODWORD(STACK[0x1B34])))(v2);
}

uint64_t sub_100258EB0(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x5128]) = 2 * a1;
  v8 = *(STACK[0x5740] + (STACK[0x52C8] & ((a1 ^ 0xD914F6D5) - 1591262651 + ((2 * a1) & 0xB229EDA0))));
  v9 = (v8 + STACK[0x5700]) ^ 0xB88801D4E1C76353;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = __ROR8__(v9, 8);
  v12 = (v11 + v10 - ((2 * (v11 + v10)) & 0xF725BD99062C438CLL) - 0x46D21337CE9DE3ALL) ^ 0xC35A6FA6641349B1;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0xE580B17D8CC5E551;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0xE1A1FD5BD155F97ALL;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (((v18 + v17) ^ 0xFB7550830E04A6B1 | 0x440292A759B4EDC5) - ((v18 + v17) ^ 0xFB7550830E04A6B1 | 0xBBFD6D58A64B123ALL) - 0x440292A759B4EDC6) ^ 0x651789285412F4EDLL;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (((2 * (v21 + v20)) & 0x3E2B7233A99A3FC6) - (v21 + v20) - 0x1F15B919D4CD1FE4) ^ 0x1ADFA42BE00CD1DBLL;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0xD2F00CE620E5D3AELL;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = ((((2 * (v26 + v25)) | 0x2A47CF1A41ED8A84) - (v26 + v25) - 0x1523E78D20F6C542) ^ 0xE150ECBC8E86B039) >> STACK[0x5780];
  LODWORD(STACK[0x56F0]) = (((v27 ^ LODWORD(STACK[0x5790]) ^ 0xFFFFFFE4) + 22) ^ ((v27 ^ LODWORD(STACK[0x5790]) ^ 0x13) - 29) ^ ((v27 ^ LODWORD(STACK[0x5790]) ^ 0xFFFFFFF7) + 7)) + 19;
  LODWORD(v27) = *STACK[0x51E8];
  LODWORD(STACK[0x5210]) = v27;
  v28 = *(STACK[0x53F8] + (v27 & 0xFFFFFFF8 & ((STACK[0x53E8] | 0x90DDDD2D) + 2050767130 + (STACK[0x53E8] | 0x6F2222D3))));
  v29 = (v28 + STACK[0x5620]) ^ 0xB88801D4E1C76353;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (((2 * (v31 + v30)) & 0x3866B4237E6F353ALL) - (v31 + v30) + 0x63CCA5EE40C86562) ^ 0x5B041484A7CD0D15;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0xE580B17D8CC5E551;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0xE1A1FD5BD155F97ALL;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0xDA604B0C03A2BF99;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (((v40 + v39) | 0x2E67674D3DA5E970) - ((v40 + v39) | 0xD19898B2C25A168FLL) - 0x2E67674D3DA5E971) ^ 0xD4528580F69BD8B7;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (((v43 + v42) | 0x9632E55B8C2B7477) - ((v43 + v42) | 0x69CD1AA473D48B88) + 0x69CD1AA473D48B88) ^ 0x44C2E9BDACCEA7D9;
  LODWORD(STACK[0x5378]) = LODWORD(STACK[0x57C0]) ^ (((__ROR8__(v44, 8) + (v44 ^ __ROR8__(v42, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x57B0]);
  v45 = STACK[0x4FC0] + LODWORD(STACK[0x52E8]);
  v46 = *(a6 + (((v45 & 0xFFFFFFF8) + 2050767130) & a2 & 0xFFFFFFF8));
  v47 = __ROR8__(v45 & 0xFFFFFFFFFFFFFFF8, 8);
  v48 = (v6 + 1835114216) & 0x929E576E ^ 0xFDEE978F99DD640BLL ^ ((((v46 + v47) << ((v6 + 13) ^ 0xB9u)) | 0x8ACD2CB6F03424B4) - (v46 + v47) - 0x4566965B781A125ALL);
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = __ROR8__(v48, 8);
  v51 = (((2 * (v50 + v49)) | 0x95634EE629FD2FD8) - (v50 + v49) + 0x354E588CEB016814) ^ 0xF2791619F3FBFF9BLL;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (((v53 + v52) | 0x430A6EAB798C14DLL) - ((v53 + v52) | 0xFBCF591548673EB2) - 0x430A6EAB798C14ELL) ^ 0xE1B017973B5D241CLL;
  v55 = v54 ^ __ROR8__(v52, 61);
  v56 = __ROR8__(v54, 8);
  v57 = __ROR8__((v56 + v55 - ((2 * (v56 + v55)) & 0xC762ADD51F5443F6) + 0x63B156EA8FAA21FBLL) ^ 0x8210ABB15EFFD881, 8);
  v58 = (v56 + v55 - ((2 * (v56 + v55)) & 0xC762ADD51F5443F6) + 0x63B156EA8FAA21FBLL) ^ 0x8210ABB15EFFD881 ^ __ROR8__(v55, 61);
  v59 = (v57 + v58 - ((2 * (v57 + v58)) & 0xE34CA96EB4E5BF56) + 0x71A654B75A72DFABLL) ^ 0xABC61FBB59D06032;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = __ROR8__(v59, 8);
  v62 = (((2 * (v61 + v60)) & 0x945DAB3D5D4FBD6ELL) - (v61 + v60) + 0x35D12A6151582148) ^ 0xCFE4C8AC9A66108FLL;
  v63 = v62 ^ __ROR8__(v60, 61);
  v64 = (__ROR8__(v62, 8) + v63) ^ 0xD2F00CE620E5D3AELL;
  v65 = v64 ^ __ROR8__(v63, 61);
  v66 = __ROR8__(v64, 8);
  LOBYTE(v45) = *v45 ^ 0x4F ^ (((((2 * ((v66 + v65) ^ 0xAF23F0D9CFD2E1DLL)) & 0x980E2EA99DA91DACLL) - ((v66 + v65) ^ 0xAF23F0D9CFD2E1DLL) + 0x33F8E8AB312B7129) ^ 0xCD79DC9703A62A4FLL) >> (8 * (v45 & 7u)));
  LOBYTE(v65) = STACK[0x53D0] & 0x18;
  v67 = v7 + 111520 + (((v45 ^ 0x47B9AF59B1522BE0) - 0x47B9AF59B1522BE0) ^ ((v45 ^ 0x3E0F11F75B0504BALL) - 0x3E0F11F75B0504BALL) ^ ((v45 ^ 0x79B6BEAEEA572F04) - 0x79B6BEAEEA572F04));
  LODWORD(v45) = LODWORD(STACK[0x53D0]) != 52;
  LODWORD(v67) = (((*(v67 - 2946) ^ 0x77) - 119) ^ ((*(v67 - 2946) ^ 0xFFFFFFEF) + 17) ^ ((*(v67 - 2946) ^ 0x25) - 37)) - 58;
  LODWORD(v64) = v67 & 0xFFFFFFB2 ^ 0x7F;
  LODWORD(STACK[0x52E8]) = LODWORD(STACK[0x5008]) + 52;
  LODWORD(v65) = v67 ^ (((v65 ^ 0x18) + v65) | 0xFFFFFFC7) ^ (2 * ((v67 ^ 0x44) & (2 * ((v67 ^ 0x44) & (2 * ((v67 ^ 0x44) & (2 * ((v67 ^ 0x44) & (2 * ((v67 ^ 0x44) & (2 * ((v67 ^ 0x44) & 0x36 ^ v64)) ^ v64)) ^ v64)) ^ v64)) ^ v64)) ^ v64));
  LODWORD(v65) = -112 - 85 * (((v65 ^ 0xFFFFFFD3) + 41) ^ ((v65 ^ 0x7B) - 127) ^ ((v65 ^ 6) - 2));
  LODWORD(v67) = v65 & 0xFFFFFF8E ^ 0x48;
  LODWORD(v64) = 2 * ((2 * v67) ^ v67 ^ (2 * v67) & v65);
  LODWORD(v64) = 2 * ((2 * (v64 ^ v67 ^ v64 & v65)) ^ v67 ^ (2 * (v64 ^ v67 ^ v64 & v65)) & v65);
  LODWORD(STACK[0x54C0]) = v65 ^ (2 * ((2 * (v64 ^ v67 ^ v64 & v65)) ^ v67 ^ (2 * (v64 ^ v67 ^ v64 & v65)) & v65)) ^ 0x33;
  v68 = *(STACK[0x57D8] + 8 * (v6 ^ (115 * v45)));
  LODWORD(STACK[0x52B0]) = 189;
  STACK[0x52F8] = 52;
  return v68();
}

uint64_t sub_1002597DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = STACK[0x36B0];
  v7 = (STACK[0x36B0] + 1374477524) & 0xAE135EEF;
  v8 = STACK[0xC4B0];
  v9 = STACK[0x57D8];
  STACK[0xBF38] = *(STACK[0x57D8] + 8 * STACK[0x36B0]);
  return (*(v9 + 8 * (v6 ^ 0x5EA9 ^ v7)))(a1, a2, a3, a4, a5, a6, v8);
}

uint64_t sub_100259848()
{
  v0 = STACK[0x51B8];
  STACK[0x60D0] = 0xD38CBDD3ACAFF84ALL;
  return (*(STACK[0x57D8] + 8 * (v0 - 20372)))();
}

uint64_t sub_10025987C()
{
  v3 = *(v1 + 40);
  v4 = STACK[0x320] == 0;
  STACK[0x460] = v3;
  v4 = v4 || v3 == 0;
  v5 = !v4;
  return (*(v2 + 8 * ((v5 * ((v0 + 1498978953) & 0xA6A77F6D ^ 0x601C)) ^ (v0 + 3571))))();
}

uint64_t sub_100259974@<X0>(unsigned int a1@<W8>)
{
  STACK[0xBF70] = v1 + 1;
  v2 = *(*STACK[0x51F0] + ((((((((5 * (a1 ^ 0x3206)) ^ 0xDB23FD40) + a1 + 9891) ^ v1 & 0xFFFFFFF8) + ((2 * (v1 & 0xFFFFFFF8)) & 0xB64849D0)) & 0xFFFFFFF8) + 514745512) & *STACK[0x51E8]));
  v3 = (v2 + __ROR8__(v1 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xF41651499F5E3C67;
  v4 = v3 ^ __ROR8__(v2, 61);
  v5 = __ROR8__(v3, 8);
  v6 = (((2 * (v5 + v4)) | 0x7521F9D4D5002336) - (v5 + v4) + 0x456F0315957FEE65) ^ 0xAFA2BE0456707BD2 ^ __ROR8__(v4, 61);
  v7 = (__ROR8__((((2 * (v5 + v4)) | 0x7521F9D4D5002336) - (v5 + v4) + 0x456F0315957FEE65) ^ 0xAFA2BE0456707BD2, 8) + v6) ^ 0x2275D4C73835399BLL;
  v8 = v7 ^ __ROR8__(v6, 61);
  v9 = __ROR8__(v7, 8);
  v10 = (((v9 + v8) | 0x9616E6C820187409) - ((v9 + v8) | 0x69E91937DFE78BF6) + 0x69E91937DFE78BF6) ^ 0x73B9FC7B0EA548D4;
  v11 = v10 ^ __ROR8__(v8, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0xC7DDC9F6CC45B721;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (((2 * ((v14 + v13) ^ 0x39FB75E44C99E40ALL)) | 0xB6D9AD3743EF4832) - ((v14 + v13) ^ 0x39FB75E44C99E40ALL) + 0x249329645E085BE7) ^ 0x4AB183DAB4BC9A6BLL;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0x5F8DEC3EA3980A1BLL;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  LOBYTE(v18) = (((((v19 + v18) | 0x105A1FB7A220DC03) - ((v19 + v18) | 0xEFA5E0485DDF23FCLL) - 0x105A1FB7A220DC04) ^ 0xD199D76506E5942BLL) >> (8 * (v1 & 7u))) ^ *v1;
  return (*(STACK[0x57D8] + 8 * ((648 * ((((v18 ^ 0xDD) - 102) ^ ((v18 ^ 0xA) + 79) ^ ((v18 ^ 0xD7) - 108)) == 156)) ^ a1)))();
}

uint64_t sub_100259E38()
{
  v1 = STACK[0x57D8];
  STACK[0x8D48] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x7660 ^ (32 * v0) ^ 0x1EDC0)))(4427);
}

uint64_t sub_100259E98(uint64_t a1, int a2)
{
  v7 = *(STACK[0x57C0] + (((5 * (v2 ^ 0x3922)) ^ 0x23FEu) * v3 + 8698028) % 0x16B8);
  v8 = (((v7 ^ 0x18BAF368) - 414905192) ^ ((v7 ^ 0x6334F565) - 1664415077) ^ ((v7 ^ 0x7B8E06CA) - 2072905418)) * a2 + 15435599;
  v9 = *(v4 + 4 * (v8 - (((v8 * v6) >> 32) >> 12) * v5));
  v10 = 4843 * (((HIBYTE(v9) ^ 0xE05878E9) - 904794719) ^ ((HIBYTE(v9) ^ 0xE3AFE09F) - 907643433) ^ ((HIBYTE(v9) ^ 0x3F7981E) + 700321112)) + 39224715;
  v11 = (4843 * (((v9 ^ 0x78797ECE) + 1578767797) ^ ((v9 ^ 0xFBC048A3) - 576511014) ^ ((v9 ^ 0x83B936E7) - 1512415842)) - 981219450) % 0x16B8;
  v12 = *(STACK[0x57C0] + 4843 * (BYTE2(v9) ^ 0x4F) + 6213569 - 5816 * (((11815591 * (4843 * (BYTE2(v9) ^ 0x4Fu) + 6213569)) >> 32) >> 4)) << 8;
  v13 = *(STACK[0x57C0] + 4843 * (BYTE1(v9) ^ 0xB6) + 6213569 - 5816 * (((11815591 * (4843 * (BYTE1(v9) ^ 0xB6u) + 6213569)) >> 32) >> 4));
  v14 = (((v12 ^ 0xFF2070) & ((*(STACK[0x57C0] + v10 % 0x16B8) << 16) ^ 0x42E370) | v12 & 0x1C00) ^ 0xF06C11) & (v13 ^ 0xFFFF28);
  v15 = *(STACK[0x57C0] + v11);
  *(v4 + 4 * (6157 * v3 + 9469466 - ((((6157 * v3 + 9469466) * v6) >> 32) >> 12) * v5)) = ((((v14 ^ v13 & 0x9E) << 8) ^ 0x130172CC) & (v15 ^ 0xFFFFFF0A) | v15 & 0x33333333) ^ 0xEC52345;
  return (*(STACK[0x57D8] + 8 * ((486 * (v3 == 255)) ^ v2)))();
}

uint64_t sub_10025A1F4()
{
  v0 = (STACK[0x51B8] ^ 0x5D5B) + 29386;
  v1 = STACK[0x51B8] + 7027;
  STACK[0x71A0] = STACK[0x7718] + LODWORD(STACK[0x85DC]);
  if (STACK[0x5D48])
  {
    v2 = STACK[0x7D20] == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  return (*(STACK[0x57D8] + 8 * ((45 * ((v0 ^ v3) & 1)) ^ v1)))();
}

uint64_t sub_10025A264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = STACK[0x55D0];
  if ((STACK[0x5780] & 2) == 0)
  {
    v7 = STACK[0x5410];
  }

  LODWORD(STACK[0x55D0]) = v7;
  LODWORD(STACK[0x5130]) = ~LODWORD(STACK[0x5320]);
  return (*(STACK[0x57D8] + 8 * v5))(1416043003, a2, v6, a4, 1439462147, -1416043002, v4);
}

uint64_t sub_10025A3E0()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x57D8];
  STACK[0x8580] = *(STACK[0x57D8] + 8 * (STACK[0x51B8] - 20075));
  return (*(v1 + 8 * (v0 - 18047)))();
}

uint64_t sub_10025A418()
{
  v1 = STACK[0xE358];
  v2 = LODWORD(STACK[0xE364]);
  v3 = LODWORD(STACK[0xE368]);
  v4 = LOBYTE(STACK[0xE37B]);
  v5 = LODWORD(STACK[0xE37C]);
  v6 = LODWORD(STACK[0xE380]);
  v7 = LODWORD(STACK[0xE394]);
  LODWORD(STACK[0x57C0]) = STACK[0xE3B8];
  return (*(STACK[0x57D8] + 8 * v0))(v1, v3, v2, v7, v5, v4, v6);
}

uint64_t sub_10025A4A8@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v1) = v2;
  *(a1 - 0x308E083E0C524CBELL) = v2;
  return (*(STACK[0x57D8] + 8 * v3))();
}

uint64_t sub_10025A594@<X0>(unsigned int a1@<W1>, unsigned int a2@<W7>, uint64_t a3@<X8>)
{
  v6 = a1 < a2;
  *(v3 + v4) = *(a3 + v4);
  v7 = v4 + 1;
  if (v6 == v7 > 3 * (v5 ^ 0x69EBu) + 614237884)
  {
    v6 = v7 + a2 < a1;
  }

  return (*(STACK[0x57D8] + 8 * (v5 ^ (2 * !v6))))();
}

uint64_t sub_10025A5F8@<X0>(uint64_t a1@<X2>, int a2@<W3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v16 = *v13 & 0xFFFFFFF8;
  v17 = *(*v15 + (v16 & (((v8 + a7) & 0xFFFFFFF8 ^ 0x83AB6A3E) + 1530089387 + ((v7 ^ 0x756FBB0) & (2 * ((v8 + a7) & 0xFFFFFFF8))))));
  v18 = __ROR8__((v8 + a7) & 0xFFFFFFFFFFFFFFF8, 8);
  v19 = (v17 + v18 - ((2 * (v17 + v18)) & 0xB72D680D7924A340) - 0x24694BF9436DAE60) ^ 0xD285D0DA0A11657BLL;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ v10;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (((2 * (v23 + v22)) | 0xBB128ED03A27D4EELL) - (v23 + v22) - 0x5D8947681D13EA77) ^ 0xA87BB9BB15B9C80FLL;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ v11;
  v27 = __ROR8__(v26, 8);
  v28 = v26 ^ __ROR8__(v25, 61);
  v29 = (a1 - ((v27 + v28) | a1) + ((v27 + v28) | 0xF4095E7213165BLL)) ^ 0xF8734C00FA039C57;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = *(*v15 + (v16 & (((v9 + a7) & 0xFFFFFFF8) + a2)));
  v32 = __ROR8__(v29, 8) + v30;
  v33 = (v31 + __ROR8__((v9 + a7) & 0xFFFFFFFFFFFFFFF8, 8)) ^ a3;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = v32 ^ a4;
  v36 = __ROR8__(v33, 8) + v34;
  v37 = v35 ^ __ROR8__(v30, 61);
  v38 = (v36 - ((2 * v36) & 0x5B9FD76E24250A2) - 0x7D2301448EDED7AFLL) ^ 0xC65191D7D630F004;
  v39 = v38 ^ __ROR8__(v34, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (__ROR8__(v35, 8) + v37) ^ a6;
  v42 = (((2 * (v40 + v39)) | 0x508B172C87DC2) - (v40 + v39) - 0x28458B9643EE1) ^ 0xF5F07A8BB1CE1C99;
  v43 = v42 ^ __ROR8__(v39, 61);
  v44 = __ROR8__(v42, 8);
  v45 = (a5 - ((v44 + v43) | a5) + ((v44 + v43) | 0xDA2712AFBC1963FALL)) ^ 0xBD747C6F47923767;
  v46 = __ROR8__(v41, 8) + (v41 ^ __ROR8__(v37, 61));
  v47 = v45 ^ __ROR8__(v43, 61);
  v48 = __ROR8__(v45, 8);
  v49 = (((2 * (v48 + v47)) & 0xA61F87F72392B660) - (v48 + v47) - 0x530FC3FB91C95B31) ^ 0x5477795AE6262EC3;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ a4;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ a6;
  *(v9 + a7) = (((__ROR8__(v53, 8) + (v53 ^ __ROR8__(v52, 61))) ^ v12) >> (8 * ((v9 + a7) & 7))) ^ (((((2 * v46) & 0xA61FB2B31DBAEFB6) - v46 - 0x530FD9598EDD77DCLL) ^ 0xC3937A8894F55AE2) >> (8 * ((v8 + a7) & 7))) ^ *(v8 + a7);
  return (*(STACK[0x57D8] + 8 * ((8147 * (((a7 + 1 - v14) | (v14 - (a7 + 1))) >> 63)) ^ v7)))();
}

uint64_t sub_10025A964()
{
  STACK[0x5FE8] = STACK[0xCC40];
  LODWORD(STACK[0xB8AC]) = v1 + 3;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10025AAB8()
{
  v1 = STACK[0x7AF8];
  *v1 = STACK[0xA428];
  *(v1 + 8) = STACK[0x7A04];
  *(v1 + 16) = STACK[0x6DE0];
  *(v1 + 24) = STACK[0xBC48];
  LOBYTE(STACK[0xCBDA]) = STACK[0x782F];
  STACK[0xAA58] = v1;
  STACK[0x8A30] = 0;
  LODWORD(STACK[0xAC24]) = 0;
  v2 = STACK[0x57D8];
  STACK[0x6928] = *(STACK[0x57D8] + 8 * v0);
  return (*(v2 + 8 * (v0 ^ 0x5905 ^ (v0 + 14291))))();
}

uint64_t sub_10025AC88()
{
  STACK[0x9EC0] = &STACK[0x9CD4];
  LODWORD(STACK[0x9E1C]) = 1988799246;
  return (*(STACK[0x57D8] + 8 * ((933 * ((v0 + 346798647) < 0xA027FD5C)) ^ (v0 - 17193))))();
}

uint64_t sub_10025AD98()
{
  STACK[0x62A0] = STACK[0x7180];
  LODWORD(STACK[0x93CC]) = v1;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10025AE48()
{
  v0 = STACK[0x1968] | 0x156;
  *(STACK[0x7B78] - 0x1883660EE814440ALL) = STACK[0xDD70];
  return (*(STACK[0x57D8] + 8 * (((LODWORD(STACK[0xDD74]) == -143113071) * (v0 ^ 0x214B)) ^ LODWORD(STACK[0x197C]))))();
}

uint64_t sub_10025AEB8(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a3 + 1209729692;
  v5 = LODWORD(STACK[0x5790]) > v4;
  if (LODWORD(STACK[0x5790]) < v3 != v4 < 0xB33A8127)
  {
    v5 = LODWORD(STACK[0x5790]) < v3;
  }

  return (*(STACK[0x57D8] + 8 * ((108 * !v5) ^ STACK[0x57C0])))();
}

uint64_t sub_10025D308@<X0>(uint64_t a1@<X8>)
{
  v2 = STACK[0x6F68];
  *v2 = 0;
  *(v2 + 8) = *(a1 - 0x79CEC8CF5A6FCE4ELL);
  *(v2 + 16) = 0;
  *(v2 + 24) = -92061422;
  *(v2 + 28) = 0x400000001;
  *(v2 + 36) = 1;
  v3 = STACK[0x57D8];
  STACK[0xBDD0] = *(STACK[0x57D8] + 8 * v1);
  return (*(v3 + 8 * (v1 ^ 0x3181 ^ (((v1 ^ 0xED2DC848) < 0x495F5B6A) * (v1 + 23179)))))();
}

uint64_t sub_10025D478@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 0x683CBC57EAB92A3ELL);
  STACK[0x7518] = 0;
  STACK[0xC900] = 0;
  return (*(STACK[0x57D8] + 8 * (((v3 == 0x308E083E0C524CBELL) * ((((v1 - 127459442) & 0x798DC7F ^ 0x5847) * v2) ^ 0x7DF)) ^ v1)))();
}

uint64_t sub_10025D660@<X0>(int a1@<W8>)
{
  if (STACK[0x8E18])
  {
    v2 = LODWORD(STACK[0x9124]) == ((a1 + 983) ^ 0xD21CAA24);
  }

  else
  {
    v2 = 1;
  }

  v4 = v2 || v1 != -143113071;
  return (*(STACK[0x57D8] + 8 * ((v4 * (a1 ^ 0x26F6)) ^ a1)))();
}

uint64_t sub_10025D6C0(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v5.n128_u64[0] = 0xF0F0F0F0F0F0F0FLL;
  v5.n128_u64[1] = 0xF0F0F0F0F0F0F0FLL;
  v6.n128_u64[0] = 0x1E1E1E1E1E1E1E1ELL;
  v6.n128_u64[1] = 0x1E1E1E1E1E1E1E1ELL;
  return (*(STACK[0x57D8] + 8 * (v4 - 10278)))(a1, a2, a3, a4, v5, v6);
}

uint64_t sub_10025D6F8()
{
  v0 = STACK[0x51B8] - 349;
  v1 = STACK[0xA9AC];
  LODWORD(STACK[0x8D14]) = STACK[0xA9AC];
  return (*(STACK[0x57D8] + 8 * ((478 * (v1 != 1)) ^ v0)))();
}

uint64_t sub_10025D860()
{
  v0 = STACK[0x57D8];
  STACK[0xC210] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x2CD0]));
  return (*(v0 + 8 * SLODWORD(STACK[0x2CCC])))();
}

uint64_t sub_10025D8FC()
{
  if (v0)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(STACK[0x57D8] + 8 * ((((v1 ^ 0x5028) + v1 - 6551 - 31230) * v4) ^ v1)))();
}

uint64_t sub_10025D93C@<X0>(__int16 a1@<W5>, __int16 a2@<W7>, int a3@<W8>)
{
  v10 = STACK[0x51B8] + 920;
  LODWORD(STACK[0xD4E4]) = v9;
  LODWORD(STACK[0x6C24]) = a3;
  LODWORD(STACK[0xD4DC]) = v8;
  LODWORD(STACK[0xD4D8]) = v5;
  LODWORD(STACK[0xCF4C]) = v7;
  LODWORD(STACK[0x9A1C]) = v6;
  LOWORD(STACK[0xCF4A]) = a2;
  LOWORD(STACK[0xCF52]) = a1;
  LODWORD(STACK[0xCF54]) = v3;
  LODWORD(STACK[0xB9CC]) = v4 + 2;
  return (*(STACK[0x57D8] + 8 * ((19 * (((LODWORD(STACK[0x2D60]) + (v8 ^ 0x469DBAB)) ^ ((v8 ^ 0xFBC96365) + 70687899) ^ (LODWORD(STACK[0x2D5C]) + (v8 ^ 0xF35C8D3))) - LODWORD(STACK[0xE094]) == -1184096278)) ^ v10)))();
}

uint64_t sub_10025DA1C()
{
  v1 = STACK[0x5C0C];
  LODWORD(STACK[0xA684]) = STACK[0x5C0C];
  return (*(STACK[0x57D8] + 8 * ((25013 * (v1 == (v0 ^ 0xD21CCA8B ^ (v0 + 180796041) & 0xF5397F7F))) ^ v0)))();
}

uint64_t sub_10025DA98()
{
  v2 = *(v1 + 3064);
  v3 = *(v1 + 3076);
  v4 = *(v1 + 3080);
  v5 = *(v1 + 3099);
  v6 = *(v1 + 3100);
  v7 = *(v1 + 3104);
  v8 = *(v1 + 3124);
  LODWORD(STACK[0x57C0]) = *(v1 + 3160);
  return (*(STACK[0x57D8] + 8 * ((v0 - 28957 + ((v0 + 470110117) & 0xE3FA7D6E)) ^ (7504 * (v0 != -388395423)))))(v2, v4, v3, v8, v6, v5, v7);
}

uint64_t sub_10025DB58()
{
  v1 = STACK[0x57C0];
  v2 = LODWORD(STACK[0x57C0]) ^ 0x51B1;
  v3 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * v2))(*(v0 + 352));
  (*(v3 + 8 * (v1 + 20079)))(STACK[0x57B0]);
  (*(v3 + 8 * (v1 + 20079)))(STACK[0xD8D0] - 0x5E465BAA0AB2C2CALL);
  (*(v3 + 8 * (v1 + 20079)))(STACK[0xD8A8]);
  (*(v3 + 8 * v2))(STACK[0xD898]);
  (*(v3 + 8 * (v1 + 20079)))(STACK[0xD8B0]);
  (*(v3 + 8 * v2))(STACK[0xD8A0] - 0x6374D18FC38B0251);
  v4 = (*(v3 + 8 * v2))(STACK[0xD8C8]);
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_10025DCDC()
{
  STACK[0x57C0] = 0;
  v1 = STACK[0x6718];
  STACK[0xA100] = STACK[0x6260];
  STACK[0xAEC8] = 0x1883660EE8144416;
  STACK[0x7810] = v1;
  STACK[0x8000] = &STACK[0xAEC8];
  STACK[0x5FC0] = 0;
  LODWORD(STACK[0xC0DC]) = -2013569078;
  LODWORD(STACK[0xA12C]) = 2101965980;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10025DD98@<X0>(int a1@<W8>)
{
  if (a1 == v1)
  {
    v3 = STACK[0xBA7C];
  }

  else
  {
    v3 = a1;
  }

  return (*(STACK[0x57D8] + 8 * ((4803 * (v3 == ((((v2 + 8072) | 0x1050) - 143135245) ^ (v2 - 1815655553) & 0x6C388EDA))) ^ v2)))();
}

uint64_t sub_10025E038()
{
  v1 = STACK[0xE358];
  v2 = LODWORD(STACK[0xE364]);
  v3 = LODWORD(STACK[0xE368]);
  v4 = LOBYTE(STACK[0xE37B]);
  v5 = LODWORD(STACK[0xE37C]);
  v6 = LODWORD(STACK[0xE380]);
  v7 = LODWORD(STACK[0xE394]);
  LODWORD(STACK[0x57C0]) = STACK[0xE3B8];
  return (*(STACK[0x57D8] + 8 * v0))(v1, v3, v2, v7, v5, v4, v6);
}

uint64_t sub_10025E164(uint64_t a1, int a2)
{
  LODWORD(STACK[0x5098]) ^= LODWORD(STACK[0x5118]);
  LODWORD(STACK[0x5018]) = LODWORD(STACK[0x4FD0]) - LODWORD(STACK[0x5018]);
  v2 = STACK[0x5790];
  LODWORD(STACK[0x4E60]) = LODWORD(STACK[0x5790]) ^ LODWORD(STACK[0x5780]) ^ LODWORD(STACK[0x5398]) ^ (LODWORD(STACK[0x4FA8]) - LODWORD(STACK[0x4FC0]));
  v3 = LODWORD(STACK[0x4FB8]) ^ LODWORD(STACK[0x5378]);
  LODWORD(STACK[0x53B8]) = LODWORD(STACK[0x4FA0]) - LODWORD(STACK[0x4FB0]);
  v4 = LODWORD(STACK[0x4FC8]) ^ LODWORD(STACK[0x5320]);
  v5 = LODWORD(STACK[0x4FF8]) ^ LODWORD(STACK[0x5380]);
  v6 = LODWORD(STACK[0x4FF0]) ^ LODWORD(STACK[0x4FE8]);
  v7 = STACK[0x5338];
  LODWORD(STACK[0x5320]) = LODWORD(STACK[0x57B0]) ^ ~(STACK[0x5298] & LODWORD(STACK[0x5338]));
  LODWORD(STACK[0x5090]) ^= LODWORD(STACK[0x5770]);
  LODWORD(STACK[0x5398]) = 1172112815 * LODWORD(STACK[0x5010]);
  v8 = LODWORD(STACK[0x5000]) - 2064342830;
  LODWORD(STACK[0x5380]) = v3 ^ v2;
  LODWORD(STACK[0x5010]) = 1793038449 * LODWORD(STACK[0x5008]);
  LODWORD(STACK[0x5378]) = v4 ^ 0x2A0CC5BE;
  LODWORD(STACK[0x5008]) = v5 ^ v6 ^ v8 ^ (a2 + 368335378);
  v9 = LODWORD(STACK[0x4FD8]) - LODWORD(STACK[0x4FE0]);
  LODWORD(STACK[0x5298]) = LODWORD(STACK[0x5070]) ^ 0x6C6C6C6C;
  LODWORD(STACK[0x5070]) = v7 ^ 0x1693E370;
  LODWORD(STACK[0x4E68]) = LODWORD(STACK[0x57A0]) ^ v9 ^ 0x81346E50;
  STACK[0x57C0] = STACK[0xD7E8];
  return (*(STACK[0x57D8] + 8 * a2))(0xEDD2A2500000000);
}

uint64_t sub_10025E50C@<X0>(unint64_t a1@<X8>)
{
  STACK[0xE0E0] = a1;
  STACK[0xE0E8] = v3;
  LOWORD(STACK[0xE0F6]) = v2;
  if (a1)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(STACK[0x57D8] + 8 * ((v5 * (v1 - 53181 + 150 * (v1 ^ 0x76B4))) ^ v1)))();
}

uint64_t sub_10025E5BC@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x7294]) = v5;
  STACK[0xB860] = v1;
  LODWORD(STACK[0xA150]) = v3;
  STACK[0x92A8] = v4;
  STACK[0x7D18] = v2;
  v6 = STACK[0x7ED8];
  v7 = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x59D0] = v7;
  STACK[0x99E8] = (v7 + 16);
  STACK[0x9A50] = (v7 + 32);
  STACK[0xA6A8] = (v7 + 48);
  STACK[0x6AE8] = (v7 + 64);
  STACK[0x7ED8] = v6 + 80;
  STACK[0x89F8] = 0;
  STACK[0x5C48] = 0;
  LODWORD(STACK[0x97FC]) = 0;
  STACK[0xA2B8] = 0;
  STACK[0x6280] = 0;
  LODWORD(STACK[0x9A24]) = 0;
  return (*(STACK[0x57D8] + 8 * (((v1 == 0) * (a1 ^ 0x5D72 ^ (a1 - 23097))) ^ a1)))();
}

uint64_t sub_10025E6EC@<X0>(__int16 a1@<W8>)
{
  v1 = STACK[0x51B8];
  LOWORD(STACK[0xD55E]) = a1;
  return (*(STACK[0x57D8] + 8 * (v1 - 17527)))();
}

uint64_t sub_10025EC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0xB658] - 0x30BDFED8F32E6575;
  v9 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v7);
  return (*(v9 + 8 * (v7 + 3324)))(v8, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_10025ED84(unint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6, __int16 a7, unint64_t a8)
{
  LODWORD(STACK[0x668]) = a2;
  STACK[0x670] = v16;
  STACK[0x678] = v13;
  STACK[0x680] = v12;
  STACK[0x688] = v11;
  STACK[0x690] = v10;
  STACK[0x698] = v9;
  STACK[0x628] = (((v11 * a1) >> 64) >> 8) * a3;
  v18 = (((v9 * a1) >> 64) >> 8) * a3;
  v19 = (((v10 * a1) >> 64) >> 8) * a3;
  v20 = 251 * a2;
  v21 = 251 * a2 + LODWORD(STACK[0x5F8]);
  v22 = STACK[0x6D0];
  v23 = LODWORD(STACK[0x6D0]) + 405690966;
  v24 = STACK[0x6E0];
  v25 = STACK[0x6B8];
  v26 = v23 - v14 + LODWORD(STACK[0x6B8]) + 1272844994;
  v27 = v8 - v14 + v23;
  v28 = v8 - v14 + 1874938604;
  LODWORD(STACK[0x630]) = v26 ^ (v14 - 1272844994) ^ v27;
  v29 = (v21 - ((((v21 >> 2) * a6) >> 16) >> 4) * a7);
  v30 = v27 - v26;
  v31 = (v27 - v26) ^ 0xCE39974;
  LODWORD(STACK[0x648]) = v27 - v26;
  v32 = *(v24 + 4 * (v20 + 14558 - (((((v20 + 14558) >> 2) * a6) >> 16) >> 4) * a7));
  HIDWORD(v34) = v32;
  LODWORD(v34) = v32;
  v33 = v34 >> 7;
  v35 = v22;
  v37 = *(v24 + 4 * (v20 + 17821 - (v20 + 17821) / 0x114u * a7));
  LODWORD(v29) = ((*(v24 + 4 * v29) ^ 0x7437EC0Du) >> 3) ^ __ROR4__(*(v24 + 4 * v29) ^ 0x7437EC0D, 7) ^ __ROR4__(*(v24 + 4 * v29) ^ 0x7437EC0D, 18);
  HIDWORD(v34) = *(v13 + v19) ^ 0x7437EC0D;
  LODWORD(v34) = HIDWORD(v34);
  v38 = (v34 >> 19) ^ (HIDWORD(v34) >> 10) ^ __ROR4__(HIDWORD(v34), 17);
  v40 = __PAIR64__(v37, __ROR4__(v32, 18));
  v39 = v33 ^ (v32 >> 3) ^ v40;
  LODWORD(v40) = v37;
  LODWORD(v19) = (v40 >> 17) ^ (v37 >> 10);
  LODWORD(v40) = __ROR4__(v37, 19);
  LODWORD(v24) = (v17 - 1490321080) ^ (v15 - 1394746912) ^ v39;
  v41 = v15 - a5;
  v42 = (v29 ^ v8) - v8;
  v43 = STACK[0x6B0];
  v44 = LODWORD(STACK[0x6B0]) + v17 - a5 + 188214880;
  LODWORD(STACK[0x6C0]) = v17;
  v45 = v17 + v15 - a5 + 1815590270;
  LODWORD(STACK[0x638]) = v41 + 480191692;
  LODWORD(STACK[0x650]) = v28;
  v46 = (v45 ^ (v41 + 480191692) ^ v38 ^ v19 ^ v40) - (v45 ^ (v41 + 480191692) ^ v38);
  v47 = v19 ^ v40 ^ v27;
  v48 = (v19 ^ v40 ^ v28) - v28;
  LODWORD(v19) = v45 - v44;
  v49 = (v45 - v44) ^ 0x1BCD1E43;
  LODWORD(STACK[0x658]) = v49;
  STACK[0x660] = a8;
  LODWORD(v18) = *(a8 + v18);
  LODWORD(STACK[0x610]) = v44;
  LODWORD(v24) = (v24 ^ v29) - v24;
  v50 = ((v29 ^ v35) - v35) ^ v42;
  LODWORD(v29) = ((v45 ^ (a5 - 1272844994) ^ v44 ^ v49 ^ 0x24A8E64D) + 925909730) ^ ((v45 ^ (a5 - 1272844994) ^ v44 ^ v49 ^ 0x6EDD892A) + 2101685639) ^ ((v45 ^ (a5 - 1272844994) ^ v44 ^ v49 ^ 0x5D5BE850) + 1321422077);
  LODWORD(STACK[0x6D0]) = v29;
  v51 = v44 - v25 + v18 + *(STACK[0x6A8] + STACK[0x628]) + v38 + 1049774806;
  LODWORD(STACK[0x618]) = v20;
  v52 = v51 + (v50 ^ v24);
  *(STACK[0x6E0] + 4 * (v20 - v20 / 0x114u * a7)) = v52 + 1622596245;
  v53 = v43 - v26 + *(STACK[0x6E0] + 4 * (v20 + 30873 - (v20 + 30873) / 0x114u * a7)) + *(STACK[0x6E0] + 4 * (v20 - 32404 - (v20 - 32404) / 0x114u * a7)) + v39 + 1187651344 + ((v47 - v27) ^ v48 ^ v46);
  LODWORD(STACK[0x6B8]) = v53;
  v54 = LODWORD(STACK[0x630]) ^ v31;
  LODWORD(STACK[0x6B0]) = v54;
  v55 = v31;
  LODWORD(STACK[0x640]) = v31;
  v56 = v29 - 79045532 + v53;
  v57 = HIBYTE(v56) & 0xF;
  LOWORD(v47) = 439 * v57;
  v58 = v52 - v54;
  v59 = (3781107 * v57) >> 23;
  v60 = (v56 >> 8) & 0xF;
  LOWORD(v24) = 439 * v60;
  v61 = (3781107 * v60) >> 23;
  LOWORD(v45) = 439 * ((v29 + 100 + v53) >> 4) - 974 * (((3781107 * ((v29 + 100 + v53) >> 4)) >> 16) >> 7);
  v62 = (LODWORD(STACK[0x650]) ^ 0x39E54E8F) - v30;
  LODWORD(STACK[0x650]) = v62;
  v63 = STACK[0x6C8];
  v64 = *(STACK[0x6C8] + (439 * (v56 >> 28) - 974 * (((3781107 * (v56 >> 28)) >> 16) >> 7)));
  v65 = *(STACK[0x6C8] + (v47 - 974 * v59));
  v66 = *(STACK[0x6C8] + (439 * ((v29 - 9116 + v53) >> 12) - 974 * (((3781107 * ((v29 - 9116 + v53) >> 12)) >> 16) >> 7))) << ((((v29 - 9116 + v53) >> 8) & 4 ^ 4) + (((v29 - 9116 + v53) >> 8) & 4));
  v67 = (*(STACK[0x6C8] + (439 * (HIBYTE(v58) & 0xF) - 974 * (((3781107 * (HIBYTE(v58) & 0xF)) >> 16) >> 7))) << 8) ^ (*(STACK[0x6C8] + (439 * (v58 >> 28) - 974 * (((3781107 * (v58 >> 28)) >> 16) >> 7))) << 12);
  LODWORD(STACK[0x608]) = v67;
  LODWORD(v18) = STACK[0x638];
  v68 = LODWORD(STACK[0x638]) ^ 0x8AC53D56;
  v69 = ((v67 | *(v63 + (439 * (BYTE2(v58) & 0xF) - 974 * (((3781107 * (HIWORD(v58) & 0xF)) >> 16) >> 7)))) << 8) ^ (*(v63 + (439 * ((v58 >> 20) & 0xF) - 974 * (((3781107 * ((v58 >> 20) & 0xF)) >> 16) >> 7))) << 12);
  v70 = (v65 << 8) ^ (v64 << 12) | *(v63 + (439 * (BYTE2(v56) & 0xF) - 974 * (((3781107 * (HIWORD(v56) & 0xF)) >> 16) >> 7)));
  LODWORD(STACK[0x620]) = v19;
  v71 = *(v63 + v45);
  v72 = *(v63 + (439 * (v56 & 0xF) - 974 * (((3781107 * (v56 & 0xF)) >> 16) >> 7)));
  v73 = v68 + 96674449;
  v74 = *(v63 + (439 * (v58 & 0xF) - 974 * (((3781107 * (v58 & 0xF)) >> 16) >> 7)));
  LODWORD(v24) = ((v70 << 8) ^ (*(v63 + (439 * ((v56 >> 20) & 0xF) - 974 * (((3781107 * ((v56 >> 20) & 0xF)) >> 16) >> 7))) << 12) | *(v63 + (v24 - 974 * v61))) ^ v66;
  v75 = ((v69 | *(v63 + (439 * ((v58 >> 8) & 0xF) - 974 * (((3781107 * ((v58 >> 8) & 0xF)) >> 16) >> 7)))) << 8) ^ (*(v63 + (439 * (v58 >> 12) - 974 * (((3781107 * (v58 >> 12)) >> 16) >> 7))) << 12);
  v76 = v72 & 0xF;
  v77 = 439 * (v76 | (16 * (v74 & 0xF)));
  v78 = (v72 | (v24 << 8)) ^ (16 * v71);
  v79 = v77 + 312568 - 974 * ((4409618 * (v77 + 312568)) >> 32);
  v80 = *(v63 + (v77 + 134334 - 974 * ((4409618 * (v77 + 134334)) >> 32))) ^ LODWORD(STACK[0x600]);
  v81 = *(v63 + (439 * (v58 >> 4) - 974 * (((3781107 * (v58 >> 4)) >> 16) >> 7))) ^ ((v75 | v74) >> 4);
  v82 = 439 * (*(v63 + v79) ^ (*(v63 + (439 * v80 + 312568 - 974 * ((4409618 * (439 * v80 + 312568)) >> 32))) >> 4)) + 134334;
  v83 = 439 * (((v72 ^ (16 * v71)) >> 4) & 0xF | (16 * (v81 & 0xF)));
  v84 = 439 * (*(v63 + (v83 + 134334 - 974 * ((4409618 * (v83 + 134334)) >> 32))) ^ (16 * *(v63 + (v82 - 974 * ((4409618 * v82) >> 32)))));
  v85 = 439 * (*(v63 + (v83 + 312568 - 974 * ((4409618 * (v83 + 312568)) >> 32))) ^ (*(v63 + (v84 + 312568 - 974 * ((4409618 * (v84 + 312568)) >> 32))) >> 4)) + 134334;
  v86 = v73 ^ ((v18 ^ 0xA20771BF) + 755068538) ^ ((v18 ^ 0x11270266) - 1641996895);
  v87 = v85 - 974 * ((4409618 * v85) >> 32);
  v88 = (v62 + (v26 ^ 0x9E41577F)) ^ v55;
  LODWORD(STACK[0x638]) = v88;
  LODWORD(v18) = 439 * ((((v87 & 0x24E ^ 0xE1364E) + (v87 & 0x24E)) ^ 0xE13641) & (v78 >> 8) ^ v81 & 0xF0);
  v89 = 439 * (*(v63 + (v18 + 134334) % 0x3CEu) ^ (16 * *(v63 + v87)));
  LODWORD(v18) = *(v63 + (v18 + 312568) % 0x3CEu);
  v90 = *(v63 + (v89 + 312568 - 974 * ((4409618 * (v89 + 312568)) >> 32)));
  v91 = v88 + LODWORD(STACK[0x6B0]);
  LODWORD(STACK[0x628]) = v91;
  LODWORD(v18) = v18 ^ (v90 >> 4);
  v92 = 439 * ((v75 >> 8) & 0xF0 | (v24 >> 4));
  LODWORD(v18) = 439 * (*(v63 + (v92 + 134334 - 974 * ((4409618 * (v92 + 134334)) >> 32))) ^ (16 * *(v63 + (439 * v18 + 134334 - 974 * ((4409618 * (439 * v18 + 134334)) >> 32)))));
  v93 = STACK[0x610];
  v94 = (LODWORD(STACK[0x610]) ^ 0x9049C7DA) + 1102853201;
  v95 = 439 * (*(v63 + (v92 + 312568 - 974 * ((4409618 * (v92 + 312568)) >> 32))) ^ (*(v63 + (v18 + 312568 - 974 * ((4409618 * (v18 + 312568)) >> 32))) >> 4));
  LODWORD(STACK[0x6B0]) = ((v19 ^ 0x80656EE1) + 1683459934) ^ ((v19 ^ 0x6D80F11C) - 1984819039) ^ ((v19 ^ 0xE1060689) + 87353142);
  LODWORD(STACK[0x630]) = ((v91 ^ 0x7DFA9464) & 0x20B13F51 ^ 0x20B13F51) + ((v91 ^ 0x7DFA9464) & 0x20B13F51);
  v96 = v94 ^ ((v93 ^ 0x64E9E83A) - 1256449103) ^ ((v93 ^ 0x6AE1789F) - 1156281578);
  v97 = STACK[0x618];
  v98 = 439 * ((v75 >> 12) & 0xF0 | (v24 >> 8) & 0xF);
  v99 = 439 * ((STACK[0x6C0] & 0x132 ^ 0x132) + (STACK[0x6C0] & 0x132) + v80);
  v100 = *(v63 + (v98 + 134334 - 974 * ((4409618 * (v98 + 134334)) >> 32))) ^ (16 * *(v63 + (v95 + 134334) % ((((65 - v95) | (v95 + 134334)) & 0xB6) + (((833 - v95) ^ (v95 + 134334)) & 0x3CEu) - 182)));
  v101 = v98 + 312568;
  v102 = v99 - 974 * ((4409618 * v99) >> 32);
  v103 = 439 * v100;
  v104 = v84 + 134334 - 974 * ((4409618 * (v84 + 134334)) >> 32);
  v105 = 439 * (*(v63 + (v101 - 974 * ((4409618 * v101) >> 32))) ^ (*(v63 + (439 * v100 + 312568 - 974 * ((4409618 * (439 * v100 + 312568)) >> 32))) >> 4)) + 134334;
  v106 = 439 * ((v69 >> 8) & 0xF0 | (v24 >> 12));
  v107 = 439 * (*(v63 + (v106 + 134334 - 974 * ((4409618 * (v106 + 134334)) >> 32))) ^ (16 * *(v63 + (v105 - 974 * ((4409618 * v105) >> 32)))));
  v108 = 439 * (*(v63 + (v106 + 312568 - 974 * ((4409618 * (v106 + 312568)) >> 32))) ^ (*(v63 + (v107 + 312568 - 974 * ((4409618 * (v107 + 312568)) >> 32))) >> 4)) + 134334;
  v109 = (v69 >> 12) & 0xF0 | WORD1(v24) & 0xF;
  v110 = *(v63 + (439 * v109 + 134334 - 974 * ((4409618 * (439 * v109 + 134334)) >> 32))) ^ (16 * *(v63 + (v108 - 974 * ((4409618 * v108) >> 32))));
  v111 = ((v109 & 0xB7 ^ 0x1B7) + (v109 & 0xB7)) * (v109 + 712);
  v112 = 439 * v110;
  v113 = 439 * (*(v63 + (v111 - 974 * ((4409618 * v111) >> 32))) ^ (*(v63 + (439 * v110 + 312568 - 974 * ((4409618 * (439 * v110 + 312568)) >> 32))) >> 4)) + 134334;
  v114 = 439 * ((LODWORD(STACK[0x608]) >> 8) & 0xF0 | (v24 >> 20) & 0xF) + 134334;
  LOBYTE(v102) = *(v63 + v102);
  v115 = 439 * (v76 & 0xFFFFFF0F | (16 * (v102 & 0xF))) + 8780;
  LOBYTE(v104) = *(v63 + v104);
  LOBYTE(v79) = *(v63 + (v89 + 134334 - 974 * ((4409618 * (v89 + 134334)) >> 32)));
  v116 = 439 * ((v102 ^ (16 * v104)) & 0xF0 | (v78 >> 4)) + 8780;
  v117 = v116 - 974 * ((4409618 * v116) >> 32);
  v118 = (v104 ^ (16 * v79)) & 0xF0 | (v78 >> 8) & 0xF;
  v119 = STACK[0x670];
  v120 = STACK[0x6E0];
  v121 = 439 * v118 + 8780 - 974 * ((4409618 * (439 * v118 + 8780)) >> 32);
  LOBYTE(v18) = *(v63 + (v18 + 134334 - 974 * ((4409618 * (v18 + 134334)) >> 32)));
  v122 = *(v63 + (v114 - 974 * ((4409618 * v114) >> 32))) ^ (16 * *(v63 + (v113 - 974 * ((4409618 * v113) >> 32))));
  v123 = 439 * ((v79 ^ (16 * v18)) & 0xF0 | (v24 >> 4)) + 8780;
  v124 = v123 - 974 * ((4409618 * v123) >> 32);
  v125 = *(v63 + (v115 - 974 * ((4409618 * v115) >> 32)));
  v126 = *(v63 + v117);
  LOBYTE(v103) = *(v63 + (v103 + 134334 - 974 * ((4409618 * (v103 + 134334)) >> 32)));
  v127 = *(v63 + v121);
  v128 = v125 ^ (16 * v126);
  v129 = (v18 ^ (16 * v103)) & 0xF0;
  LODWORD(v18) = v128 ^ (v127 << 8) ^ (*(v63 + v124) << 12);
  v130 = 439 * (v129 & 0xFFFFFFF0 | (v24 >> 8) & 0xF) + 8780;
  v131 = v130 - 974 * ((4409618 * v130) >> 32);
  LOBYTE(v111) = *(v63 + (v107 + 134334 - 974 * ((4409618 * (v107 + 134334)) >> 32)));
  LOBYTE(v113) = *(v63 + (v112 + 134334 - 974 * ((4409618 * (v112 + 134334)) >> 32)));
  v132 = 439 * (((v103 ^ (16 * v111)) & 0xF0 | (v24 >> 12)) - (((v18 & 0x2ECCD ^ 0x2752ECCD) + (v18 & 0x2ECCD)) ^ 0xD8AD1321));
  v133 = (v111 ^ (16 * v113)) & 0xF0 | WORD1(v24) & 0xF;
  LOBYTE(v113) = v113 ^ (16 * *(v63 + (439 * v122 + 134334 - 974 * ((4409618 * (439 * v122 + 134334)) >> 32))));
  v134 = v86 - LODWORD(STACK[0x620]) - 1987971552;
  v135 = (*(v63 + v132 % 0x3CE) << 20) ^ (*(v63 + v131) << 16);
  v136 = v135 ^ (*(v63 + (439 * v133 + 8780 - 974 * ((4409618 * (439 * v133 + 8780)) >> 32))) << 24);
  v137 = *(v63 + (439 * (v113 & 0xF0 | (v24 >> 20) & 0xF) + 8780) % 0x3CE);
  *(STACK[0x6E0] + 4 * ((LOWORD(STACK[0x618]) - 30647) % 0x114u)) = LODWORD(STACK[0x6B8]) - 593825672;
  LODWORD(v19) = v136 ^ (v137 << 28);
  LODWORD(v18) = v19 ^ v18;
  v138 = 439 * (v19 >> 28) + 124237;
  v139 = *(v63 + (439 * (HIBYTE(v136) & 0xF) + 124237 - 974 * ((4409618 * (439 * (HIBYTE(v136) & 0xF) + 124237)) >> 32)));
  LODWORD(v19) = 439 * ((v135 >> 20) & 0xF) + 124237 - 974 * ((4409618 * (439 * ((v135 >> 20) & 0xF) + 124237)) >> 32);
  v140 = v128 >> 4;
  v141 = STACK[0x658];
  v142 = (((v96 + 1877349280 + v134) ^ LODWORD(STACK[0x658]) ^ 0x6CF39C51) - 1827904593) ^ (((v96 + 1877349280 + v134) ^ LODWORD(STACK[0x658]) ^ 0x375603B8) - 928383928) ^ (((v96 + 1877349280 + v134) ^ LODWORD(STACK[0x658]) ^ 0x4C8B18DE) - 1284184286);
  v143 = 439 * (v18 >> 12) + 124237 - 974 * ((4409618 * (439 * (v18 >> 12) + 124237)) >> 32);
  v144 = LODWORD(STACK[0x648]) ^ *(v63 + (439 * (v125 & 0xF) + 124237 - 974 * ((4409618 * (439 * (v125 & 0xFu) + 124237)) >> 32))) ^ (16 * *(v63 + (439 * v140 + 124237 - 974 * ((4409618 * (439 * v140 + 124237)) >> 32))));
  LODWORD(v18) = ((((v139 ^ (16 * *(v63 + (v138 - 974 * ((4409618 * v138) >> 32))))) << (-72 * ((v139 & 0x87 ^ 7) + (v139 & 0x87u)))) ^ *(v63 + (439 * (WORD1(v18) & 0xF) + 124237 - 974 * ((4409618 * (439 * (WORD1(v18) & 0xF) + 124237)) >> 32)))) << 8) ^ (*(v63 + v19) << 12) | *(v63 + (439 * ((v18 >> 8) & 0xF) + 124237 - 974 * ((4409618 * (439 * ((v18 >> 8) & 0xF) + 124237)) >> 32)));
  v145 = *(v63 + v143);
  v146 = STACK[0x628];
  *(v119 - 1104 * (STACK[0x680] / 0x114)) = v144 ^ 0x78D47579 ^ (v18 << 8) ^ (v145 << 12);
  *(v120 + 4 * ((v97 + 18323) % 0x114u)) = (v56 - ((2 * v56) & 0x2E5D0E6E) + 388925239) ^ v141;
  LODWORD(v19) = (1664163399 * LODWORD(STACK[0x630])) & 0x4FD0FFBF;
  v147 = LODWORD(STACK[0x640]) + LODWORD(STACK[0x650]);
  LODWORD(STACK[0x6B0]) = v142 - 1030911573;
  LODWORD(STACK[0x6B8]) = LODWORD(STACK[0x638]) - 1419836812;
  v148 = LODWORD(STACK[0x668]) == 63;
  LODWORD(STACK[0x6A0]) = LODWORD(STACK[0x6A0]) - (((v19 ^ 0x5505563A) + 237566371) ^ ((v19 ^ 0x805FDB44) - 613255971) ^ ((v19 ^ 0xD55A8D7E) - 1904794905)) - 1556235056;
  v149 = v148;
  v150 = (9998 * v149) ^ LODWORD(STACK[0x590]);
  LODWORD(STACK[0x6D0]) = v147 - v146;
  v151 = *(STACK[0x6D8] + 8 * v150);
  STACK[0x6A8] += 1004;
  return v151();
}

uint64_t sub_10025FF50@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, int a3@<W8>)
{
  v5 = a3 - 14799;
  v6 = *(STACK[0x5620] + 288) + 4 * v3;
  v7 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v6 & 0x7F050A60) + (v6 & 0x80FAF598 | 0x7F050A64) + 2030481926)) & 0xFFFFFFFFFFFFFFF8));
  v8 = (__ROR8__(v6 & 0xFFFFFFFFFFFFFFF8, 8) + v7) ^ a2;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = (v5 + 1960335022) & 0x8B27BE3E ^ 0x8A47714CF38C7B9DLL ^ (__ROR8__(v8, 8) + v9);
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0xA26BE47A1A692F70;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (((2 * (v14 + v13)) & 0xEA5885236E4CA9B8) - (v14 + v13) - 0x752C4291B72654DDLL) ^ 0x96D0AA56AC7FEA27;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ a1;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (v19 + v18 - ((2 * (v19 + v18)) & 0x9ACCDF9C369E6E9ELL) - 0x32999031E4B0C8B1) ^ 0x9F97E7870397E1EDLL ^ __ROR8__(v18, 61);
  v21 = (__ROR8__((v19 + v18 - ((2 * (v19 + v18)) & 0x9ACCDF9C369E6E9ELL) - 0x32999031E4B0C8B1) ^ 0x9F97E7870397E1EDLL, 8) + v20) ^ 0xB20726EF1F63AAFLL;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  *v6 = (((v23 + v22 - ((2 * (v23 + v22)) & 0x4CE6D8520B232E90) - 0x598C93D6FA6E68B8) ^ 0x37CDE1C1920D2908uLL) >> (8 * (v6 & 7u))) ^ v4;
  return (*(STACK[0x57D8] + 8 * v5))((v3 + 1));
}

uint64_t sub_100260150()
{
  v1 = STACK[0x51B8] - 421362133;
  v2 = STACK[0x51B8] + 7096;
  v3 = STACK[0xE960];
  v4 = STACK[0xE968] + 10 + (v0 ^ 0xD21C8094);
  STACK[0xD960] = v4;
  return (*(STACK[0x57D8] + 8 * (((v4 <= v3) * (v1 ^ 0xE6E2DEAF)) ^ v2)))();
}

uint64_t sub_100260328()
{
  v1 = STACK[0xAE38];
  LODWORD(STACK[0x5CFC]) = STACK[0xAE38];
  return (*(STACK[0x57D8] + 8 * (((((v0 ^ 0xD21CB136 ^ (((v1 - v0) | (v0 - v1)) >> 31)) & 1) == 0) * ((v0 + 769906610) ^ 0x6EF)) ^ (v0 + 769897300))))();
}

uint64_t sub_100260490()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 27246)))();
  STACK[0x7F98] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_100260548()
{
  v0 = STACK[0x23FC];
  if (STACK[0x5B00])
  {
    v1 = LODWORD(STACK[0x826C]) == (v0 ^ 0x7270 ^ ((v0 - 10772) | 0x5844));
  }

  else
  {
    v1 = 1;
  }

  v2 = v1;
  return (*(STACK[0x57D8] + 8 * ((78 * v2) ^ v0)))();
}

uint64_t sub_1002605A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v8);
  return (*(v9 + 8 * (v8 ^ 0x1731)))(v7, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_100260668()
{
  v0 = STACK[0x1504];
  v1 = 2272 * (LODWORD(STACK[0x1504]) ^ 0x15F);
  v2 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1504]));
  return (*(v2 + 8 * (v0 + v1 - 281)))();
}

uint64_t sub_10026071C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  STACK[0x5218] = v9;
  LODWORD(STACK[0x5460]) = a3;
  LODWORD(STACK[0x5560]) = v10;
  LODWORD(STACK[0x5388]) = a8;
  v12 = (((*(v11 + a4) ^ (((v8 - 1874357511) & 0x6FB87AFD) - 29)) - 3) ^ ((*(v11 + a4) ^ 9) + 42) ^ ((*(v11 + a4) ^ 0xFFFFFF9A) - 69)) + 47;
  v13 = v12 & 0x59 ^ 0x4A;
  v14 = v12 ^ 0x44;
  LODWORD(STACK[0x5020]) = v12 ^ (2 * (v14 & (2 * (v14 & (2 * (v14 & (2 * (v14 & (2 * ((v13 & 0xFFFFFFFB | (4 * (((v12 & (2 * v12) & 0xA ^ v13) >> 1) & 1))) ^ v12 & (2 * (v12 & (2 * v12) & 0xA ^ v13)))) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ 0xFFFFFFE0;
  return (*(STACK[0x57D8] + 8 * v8))();
}

uint64_t sub_100260884@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, int a3@<W8>)
{
  STACK[0x9CF8] = *(STACK[0x57D8] + 8 * v4);
  v6 = *(v3 + 8);
  v7 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & (189770780 - 938204337 * (((-827971746 * (v6 & 0xFFFFFFF8)) & 0xB8C40600) + ((-413985873 * (v6 & 0xFFFFFFF8)) ^ 0x5C620301)))) & 0xFFFFFFFFFFFFFFF8));
  v8 = (__ROR8__(v6 & 0xFFFFFFFFFFFFFFF8, 8) + v7) ^ a2;
  v9 = __ROR8__(v8, 8);
  v10 = v8 ^ __ROR8__(v7, 61);
  v11 = (v9 + v10) ^ 0x8A47714CF38C4783;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = __ROR8__(v11, 8);
  v14 = (((2 * (v13 + v12)) & 0x34C0226C1592D448) - (v13 + v12) - 0x1A6011360AC96A25) ^ 0x47F40AB3EF5FBAABLL;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0x1C031738E4A64104;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ a1;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ v5;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0xB20726EF1F63AAFLL;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = __ROR8__(v22, 8);
  *v6 = (((v24 + v23 - ((2 * (v24 + v23)) & 0x2E2557E9C89C1C4) - 0x7E8ED540B1BB1F1ELL) ^ 0x10CFA757D9D85EA2uLL) >> (8 * (v6 & 7u))) ^ a3;
  *(v3 + 4) = 1172461589;
  return (STACK[0x9CF8])();
}

uint64_t sub_100260B2C@<X0>(int a1@<W8>)
{
  v1 = 3 * LODWORD(STACK[0x413C]);
  LODWORD(STACK[0x6B8C]) = a1;
  if (SLODWORD(STACK[0xAA64]) >= SLODWORD(STACK[0xC8D4]))
  {
    v2 = STACK[0xC8D4];
  }

  else
  {
    v2 = STACK[0xAA64];
  }

  return (*(STACK[0x57D8] + 8 * (((v2 > 0) * (v1 - 17263)) ^ LODWORD(STACK[0x4138]))))();
}

uint64_t sub_100260BA0()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x6EB1)))(1028);
  STACK[0xD368] = v2;
  return (*(v1 + 8 * (((((v0 + 1844308645) & 0x9212377B ^ 0xFFFF90D0) + ((v0 - 3336) | 0x5014)) * (v2 != 0)) ^ v0)))();
}

uint64_t sub_100260C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x51B8] - 21884;
  v4 = STACK[0x57D8];
  v5 = STACK[0x3A54];
  STACK[0xA740] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x3A54]));
  return (*(v4 + 8 * ((v3 ^ 0x2DB0) + v5)))(a1, a2, a3, &STACK[0x67A7]);
}

uint64_t sub_100260C94()
{
  *STACK[0xCCE0] = 0;
  *STACK[0x6130] = -769884012;
  return (*(STACK[0x57D8] + 8 * v0))();
}

void *sub_100260CE4@<X0>(int a1@<W8>)
{
  STACK[0xAB28] = v1;
  STACK[0x5A00] = v2;
  STACK[0xC6A8] = 0;
  STACK[0x6AD8] = 0;
  LODWORD(STACK[0x674C]) = -769884012;
  v3 = STACK[0x57D8];
  STACK[0xB9A0] = *(STACK[0x57D8] + 8 * a1);
  return (*(v3 + 8 * (a1 ^ 0x6A5B ^ (a1 - 1366603588) & 0x5174FFFD)))(&STACK[0xC6A8]);
}

uint64_t sub_100260D74()
{
  STACK[0x57C0] = 0;
  STACK[0x7810] = STACK[0xD130];
  STACK[0x8000] = &STACK[0x98D0];
  STACK[0x5FC0] = 0;
  LODWORD(STACK[0xA12C]) = 2101965980;
  LODWORD(STACK[0xC0DC]) = -2013569081;
  return (*(STACK[0x57D8] + 8 * ((5594 * (LODWORD(STACK[0x1324]) < 0xE9FDB04E)) ^ LODWORD(STACK[0x1338]))))();
}

uint64_t sub_100260E78@<X0>(unint64_t *a1@<X8>)
{
  *STACK[0xBB50] = -769883996;
  v4 = STACK[0x7718] + v1;
  v5 = *STACK[0x51F0];
  v6 = *STACK[0x51E8] & (((v3 - 25848) | 0x5850) ^ 0x2D5D02Au);
  v7 = 1978732275 * (v2 - (*(v5 + v6) & 0x7FFFFFFF ^ 0x39E8D924)) + 1369165625;
  v8 = (v7 ^ 0x8F612C86) & (2 * (v7 & 0xAE6430C7)) ^ v7 & 0xAE6430C7;
  v9 = ((2 * ((v3 - 15202) ^ 0xD7692518 ^ v7)) ^ 0xF21A7886) & ((v3 - 15202) ^ 0xD7692518 ^ v7) ^ (2 * ((v3 - 15202) ^ 0xD7692518 ^ v7)) & 0x790D3C42;
  v10 = v9 ^ 0x9050441;
  v11 = (v9 ^ 0x70040040) & (4 * v8) ^ v8;
  v12 = ((4 * v10) ^ 0xE434F10C) & v10 ^ (4 * v10) & 0x790D3C40;
  v13 = v11 ^ 0x790D3C43 ^ (v12 ^ 0x60043000) & (16 * v11);
  v14 = (16 * (v12 ^ 0x19090C43)) & 0x790D3C40 ^ 0x690C3843 ^ ((16 * (v12 ^ 0x19090C43)) ^ 0x90D3C430) & (v12 ^ 0x19090C43);
  v15 = (v13 << 8) & 0x790D3C00 ^ v13 ^ ((v13 << 8) ^ 0xD3C4300) & v14;
  v16 = v7 ^ (2 * ((v15 << 16) & 0x790D0000 ^ v15 ^ ((v15 << 16) ^ 0x3C430000) & ((v14 << 8) & 0x790D0000 ^ 0x70010000 ^ ((v14 << 8) ^ 0xD3C0000) & v14)));
  v17 = ((v16 ^ 0x74237C7) - 470845402) ^ ((v16 ^ 0xA4E10157) + 1078742710) ^ ((v16 ^ LODWORD(STACK[0x400])) + 2037002548);
  LODWORD(STACK[0xB4AC]) = v17 - 1568641832;
  STACK[0x66E0] = *a1;
  v18 = STACK[0x7ED8];
  STACK[0x7ED8] += 16;
  v20 = 1978732275 * (LODWORD(STACK[0xA8FC]) - (*(v5 + v6) & 0x7FFFFFFF ^ 0x39E8D924)) == 65 && v17 + 624359516 > 0x40;
  STACK[0xE018] = v4;
  STACK[0xB920] = &STACK[0x10120] + v18;
  STACK[0xC878] = 0;
  return (*(STACK[0x57D8] + 8 * ((495 * v20) ^ v3)))();
}

uint64_t sub_10026115C@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(STACK[0x57D8] + 8 * v1);
  *a1 = (HIBYTE(v2) ^ 0x1A) - 2 * ((HIBYTE(v2) ^ 0x1A) & 7) - 121;
  a1[1] = (BYTE2(v2) ^ 0x41) - 2 * ((BYTE2(v2) ^ 0x41) & 0xF ^ BYTE2(v2) & 8) - 121;
  a1[2] = (v3 ^ BYTE1(v2)) - ((v2 >> 7) & 0xE) - 121;
  a1[3] = v2 ^ 0xD5;
  return v4();
}

uint64_t sub_1002611CC()
{
  LODWORD(STACK[0x4F70]) = LODWORD(STACK[0x54F0]) ^ LODWORD(STACK[0x5328]);
  LODWORD(STACK[0x4F78]) = v1 ^ LODWORD(STACK[0x5460]);
  v2 = LODWORD(STACK[0x5500]) + v0 - 2 * (STACK[0x5500] & v0);
  LODWORD(STACK[0x5120]) = v2;
  v3 = ((LODWORD(STACK[0x52E0]) ^ 0xB7) << 16) | ((LODWORD(STACK[0x52D8]) ^ 0xB7) << 8);
  v4 = (LODWORD(STACK[0x52D0]) ^ 0xB7) << 16;
  v5 = (LODWORD(STACK[0x5290]) ^ 0xB7) << 16;
  v6 = ((LODWORD(STACK[0x5270]) ^ 0x78AF455E) & ~v3 | v3 & 0x50BA00) ^ 0x78AF45E9 | (LODWORD(STACK[0x5288]) << 24) ^ 0xB7000000;
  v7 = (((LODWORD(STACK[0x5298]) ^ 0xDEFDBE3D) & ~v4 | v4 & 0x20000) ^ 0xDEFDBE8A) + (LODWORD(STACK[0x52E8]) << 24) + ((LODWORD(STACK[0x52B8]) ^ 0xB7) << 8);
  v8 = (LODWORD(STACK[0x5280]) ^ 0xB7) << 8;
  v9 = ((v5 | 0x93B113E2) ^ (LODWORD(STACK[0x5278]) ^ 0x93B11355) & ~v5) + ((LODWORD(STACK[0x52A0]) ^ 0xB7) << 24) + ((LODWORD(STACK[0x52A8]) ^ 0xB7) << 8);
  v10 = LODWORD(STACK[0x5330]) ^ LODWORD(STACK[0x57B0]);
  v11 = STACK[0x5330];
  v12 = (((LODWORD(STACK[0x52B0]) ^ 0xB7) << 24) | ((LODWORD(STACK[0x52C8]) ^ 0xB7) << 16)) + v10 + (((LODWORD(STACK[0x52C0]) ^ 0xE8F91EB5) & ~v8 | v8 & 0xFFFFE1FF) ^ 0xE8F91E02);
  v13 = 194829779 * (((1297717539 * v12 + ((1297717539 * v12) >> 16)) ^ ((1297717539 * v12 + ((1297717539 * v12) >> 16)) >> 8)) - v9);
  v14 = -1807166309 * (v13 - HIWORD(v13) - ((v13 - HIWORD(v13)) >> 8) - (v7 ^ 0xB7000000));
  v15 = v14 + HIWORD(v14) - v6 + ((v14 + HIWORD(v14)) >> 8);
  v16 = v12 + v10 - 2 * v10;
  v17 = 1297717539 * (v16 + v10) + ((1297717539 * (v16 + v10)) >> 16);
  LODWORD(STACK[0x5440]) = v9;
  v18 = 194829779 * ((v17 ^ (v17 >> 8)) - v9) - ((194829779 * ((v17 ^ (v17 >> 8)) - v9)) >> 16);
  v19 = -1807166309 * (v18 - (v18 >> 8) - (v7 ^ 0xB7000000));
  LODWORD(STACK[0x5400]) = v6;
  v20 = v19 + HIWORD(v19) - v6 + ((v19 + HIWORD(v19)) >> 8);
  v21 = LODWORD(STACK[0x5570]) ^ LODWORD(STACK[0x54B0]);
  LODWORD(STACK[0x52E8]) = v21;
  v22 = __ROR4__(__ROR4__(v21 ^ v16, 18) ^ 0xCEDCE6CB, 14);
  LODWORD(STACK[0x5148]) = v22 ^ 0x9B2F3B73;
  v23 = (1127374083 * (v22 ^ 0x9B2F3B73)) ^ ((1127374083 * (v22 ^ 0x9B2F3B73)) >> 16);
  v24 = (335189161 * ((v23 + (v23 >> 8)) ^ v9)) ^ ((335189161 * ((v23 + (v23 >> 8)) ^ v9)) >> 16);
  v25 = v24 + (v24 >> 8);
  LODWORD(STACK[0x5140]) = v25;
  HIDWORD(v26) = v25 ^ v7;
  LODWORD(v26) = v25 ^ v7 ^ 0xB7000000;
  LODWORD(v26) = __ROR4__((v26 >> 12) ^ 0x47CE2B47, 20);
  LODWORD(STACK[0x5138]) = v26 ^ 0xE2B4747C;
  v27 = (227853499 * (v26 ^ 0xE2B4747C)) ^ ((227853499 * (v26 ^ 0xE2B4747C)) >> 16);
  v28 = LODWORD(STACK[0x5510]) ^ v0;
  LODWORD(STACK[0x5270]) = v28;
  v29 = -1442587715 * v15 - ((-1442587715 * v15) >> 16) - ((-1442587715 * v15 - ((-1442587715 * v15) >> 16)) >> 8);
  v30 = (-1973827129 * (v27 + v6 + (v27 >> 8))) ^ ((-1973827129 * (v27 + v6 + (v27 >> 8))) >> 16);
  v31 = v30 ^ (v30 >> 8);
  v32 = LODWORD(STACK[0x5560]) ^ v0;
  LODWORD(STACK[0x52D8]) = v32;
  v33 = STACK[0x5238];
  v34 = LODWORD(STACK[0x5360]) ^ LODWORD(STACK[0x5238]);
  LODWORD(STACK[0x52E0]) = v34;
  v35 = LODWORD(STACK[0x5630]) ^ v0;
  LODWORD(STACK[0x52F8]) = v35;
  v36 = LODWORD(STACK[0x53D0]) ^ v33;
  LODWORD(STACK[0x54D0]) = v36;
  v37 = LODWORD(STACK[0x5340]) ^ v33;
  LODWORD(STACK[0x5300]) = v37;
  v38 = LODWORD(STACK[0x5720]) ^ v33;
  LODWORD(STACK[0x5310]) = v38;
  v39 = LODWORD(STACK[0x55A0]) ^ v0;
  LODWORD(STACK[0x5260]) = v39;
  v40 = LODWORD(STACK[0x5390]) ^ v0;
  LODWORD(STACK[0x52F0]) = v40;
  v41 = LODWORD(STACK[0x5520]) ^ v33;
  LODWORD(STACK[0x5268]) = v41;
  v42 = LODWORD(STACK[0x5550]) ^ v0;
  LODWORD(STACK[0x5278]) = v42;
  v43 = LODWORD(STACK[0x5710]) ^ v33;
  LODWORD(STACK[0x54F0]) = v43;
  if (v31)
  {
    v34 = v36;
  }

  LODWORD(STACK[0x53F8]) = v34;
  if (v31)
  {
    v44 = v28;
  }

  else
  {
    v44 = v42;
  }

  LODWORD(STACK[0x53F0]) = v44;
  if (v31)
  {
    v45 = v35;
  }

  else
  {
    v45 = v32;
  }

  LODWORD(STACK[0x5108]) = v45;
  if (v31)
  {
    v46 = v43;
  }

  else
  {
    v46 = v40;
  }

  if (v31)
  {
    v47 = v38;
  }

  else
  {
    v47 = v37;
  }

  if (v31)
  {
    v48 = v41;
  }

  else
  {
    v48 = v39;
  }

  LODWORD(STACK[0x53A8]) = v48;
  v49 = v31 - v29;
  LODWORD(STACK[0x5430]) = v31 - v29;
  v50 = LODWORD(STACK[0x5540]) ^ v33;
  LODWORD(STACK[0x5130]) = v50;
  v51 = LODWORD(STACK[0x55B0]) ^ v33;
  LODWORD(STACK[0x50F8]) = v51;
  v52 = LODWORD(STACK[0x5530]) ^ v33;
  LODWORD(STACK[0x5128]) = v52;
  v53 = v33;
  if ((v31 - v29))
  {
    v54 = v2;
  }

  else
  {
    v54 = v50;
  }

  if ((v49 & 1) == 0)
  {
    v52 = v51;
  }

  if ((v49 & 2) != 0)
  {
    v55 = v54;
  }

  else
  {
    v55 = v52;
  }

  if ((v49 & 2) != 0)
  {
    v56 = v52;
  }

  else
  {
    v56 = v54;
  }

  v57 = LODWORD(STACK[0x5320]) ^ v53;
  LODWORD(STACK[0x5510]) = v57;
  v58 = LODWORD(STACK[0x5318]) ^ v0;
  LODWORD(STACK[0x5328]) = v58;
  v59 = -1442587715 * v20 - ((-1442587715 * v20) >> 16) - ((-1442587715 * v20 - ((-1442587715 * v20) >> 16)) >> 8);
  LODWORD(STACK[0x4F50]) = v59;
  v60 = v49 - v29;
  v61 = v29;
  LODWORD(STACK[0x5460]) = v29;
  v62 = ((v49 - v29 - v29) & 1) == 0;
  v63 = v49 - v29 - v29;
  v64 = LODWORD(STACK[0x55F0]) ^ v0;
  v65 = v53;
  v66 = LODWORD(STACK[0x5740]) ^ v53;
  LODWORD(STACK[0x52B0]) = v66;
  v67 = v11 ^ v0;
  v68 = LODWORD(STACK[0x5790]) ^ v0;
  v69 = LODWORD(STACK[0x5580]) ^ v53;
  v70 = LODWORD(STACK[0x5348]) ^ v65;
  v71 = v65;
  if (v62)
  {
    v72 = LODWORD(STACK[0x5790]) ^ v0;
  }

  else
  {
    v72 = LODWORD(STACK[0x5348]) ^ v65;
  }

  LODWORD(STACK[0x4ED0]) = v72;
  v73 = v68;
  LODWORD(STACK[0x4EF8]) = v68;
  LODWORD(STACK[0x4F00]) = v70;
  if (v62)
  {
    v74 = v64;
  }

  else
  {
    v74 = v66;
  }

  LODWORD(STACK[0x4ED8]) = v74;
  LODWORD(STACK[0x4F28]) = v64;
  if (v62)
  {
    v75 = v57;
  }

  else
  {
    v75 = v58;
  }

  LODWORD(STACK[0x50E8]) = v75;
  if (v62)
  {
    v76 = v69;
  }

  else
  {
    v76 = v67;
  }

  LODWORD(STACK[0x50F0]) = v76;
  v77 = v63;
  v78 = 8 * v61;
  LODWORD(STACK[0x57B0]) = 8 * v59;
  v79 = -8 * v59;
  LODWORD(STACK[0x5250]) = -8 * v59;
  if ((v63 & 2) != 0)
  {
    v80 = v72;
  }

  else
  {
    v80 = v74;
  }

  if ((v63 & 2) != 0)
  {
    v81 = v76;
  }

  else
  {
    v81 = v75;
  }

  v82 = v79 & 0x18;
  v83 = (8 * v59) & 0x18;
  v84 = (v55 << (v78 & 0x18)) ^ (v55 >> (v79 & 0x18));
  if ((v78 & 0x18) == 0)
  {
    v84 = v55;
  }

  LODWORD(STACK[0x5118]) = v84;
  v85 = (v56 << (v78 & 0x18)) | (v56 >> v82);
  if ((v78 & 0x18) == 0)
  {
    v85 = v56;
  }

  LODWORD(STACK[0x5110]) = v85;
  v86 = -v78;
  LODWORD(STACK[0x51E0]) = v80;
  if ((-v78 & 0x18) != 0)
  {
    v81 = (v81 >> (-v78 & 0x18)) | (v81 << v83);
  }

  LODWORD(STACK[0x50B0]) = v81;
  v87 = LODWORD(STACK[0x5338]) ^ v71;
  LODWORD(STACK[0x5000]) = v87;
  v88 = LODWORD(STACK[0x54E0]) ^ v0;
  LODWORD(STACK[0x4FF0]) = v88;
  v89 = LODWORD(STACK[0x54C0]) ^ v0;
  LODWORD(STACK[0x4FE8]) = v89;
  v90 = LODWORD(STACK[0x54B0]) ^ v71;
  LODWORD(STACK[0x4FF8]) = v90;
  if ((v86 & 0x18) != 0)
  {
    v91 = (v80 >> (-v78 & 0x18)) ^ (v80 << v83);
  }

  else
  {
    v91 = v80;
  }

  LODWORD(STACK[0x5040]) = v91;
  v92 = v60;
  v93 = (v60 & 1) == 0;
  v94 = LODWORD(STACK[0x5730]) ^ v0;
  LODWORD(STACK[0x54B0]) = v94;
  v95 = LODWORD(STACK[0x5750]) ^ v71;
  LODWORD(STACK[0x54C0]) = v95;
  v96 = v71;
  if (v93)
  {
    v97 = v94;
  }

  else
  {
    v97 = v95;
  }

  LODWORD(STACK[0x50C8]) = v97;
  if (!v93)
  {
    v87 = v88;
  }

  LODWORD(STACK[0x5008]) = v87;
  if (v93)
  {
    v98 = v89;
  }

  else
  {
    v98 = v90;
  }

  LODWORD(STACK[0x5010]) = v98;
  LODWORD(STACK[0x5248]) = v31;
  if ((v31 & 2) != 0)
  {
    v99 = v46;
  }

  else
  {
    v99 = v47;
  }

  if ((v31 & 2) != 0)
  {
    v100 = v47;
  }

  else
  {
    v100 = v46;
  }

  LODWORD(STACK[0x51D8]) = v100;
  v101 = STACK[0x53F0];
  if ((v31 & 2) != 0)
  {
    v101 = STACK[0x53A8];
  }

  v102 = v92;
  if ((v92 & 2) != 0)
  {
    v103 = v98;
  }

  else
  {
    v103 = v87;
  }

  v104 = v78;
  v105 = __ROR4__(v103, -v78 & 0x18);
  if ((v78 & 0x18) == 0)
  {
    v105 = v103;
  }

  LODWORD(STACK[0x5090]) = v105;
  if ((v31 & 2) != 0)
  {
    v106 = v45;
  }

  else
  {
    v106 = STACK[0x53F8];
  }

  v107 = __ROR4__(v100, v86 & 0x18);
  if ((v86 & 0x18) != 0)
  {
    v100 = v107;
  }

  LODWORD(STACK[0x5060]) = v100;
  if ((v78 & 0x18) != 0)
  {
    v101 = (v101 >> (v86 & 0x18)) + (v101 << (v78 & 0x18));
  }

  LODWORD(STACK[0x5100]) = v101;
  LODWORD(STACK[0x4E68]) = v77;
  if (v77)
  {
    v108 = v69;
  }

  else
  {
    v108 = STACK[0x5328];
  }

  LODWORD(STACK[0x4E70]) = v108;
  if (v77)
  {
    v109 = STACK[0x5510];
  }

  else
  {
    v109 = v67;
  }

  LODWORD(STACK[0x4E88]) = v109;
  v110 = LODWORD(STACK[0x54A0]) ^ 0x8CB78036;
  LODWORD(STACK[0x4F68]) = v110;
  v111 = v110 ^ v0;
  LODWORD(STACK[0x4EF0]) = v110 ^ v0;
  v112 = LODWORD(STACK[0x5660]) ^ v0;
  LODWORD(STACK[0x4F38]) = v112;
  v113 = LODWORD(STACK[0x53C8]) ^ v0;
  LODWORD(STACK[0x4F18]) = v113;
  v114 = LODWORD(STACK[0x5358]) ^ v0;
  LODWORD(STACK[0x5328]) = v114;
  if (v77)
  {
    v115 = v113;
  }

  else
  {
    v115 = v110 ^ v0;
  }

  if (v77)
  {
    v113 = v114;
  }

  else
  {
    v111 = v112;
    v112 = v114;
  }

  if ((v77 & 1) == 0)
  {
    v73 = STACK[0x52B0];
  }

  LODWORD(STACK[0x50E0]) = v73;
  if ((v77 & 1) == 0)
  {
    v64 = v70;
  }

  LODWORD(STACK[0x50D8]) = v64;
  if ((v77 & 2) != 0)
  {
    v116 = v113;
  }

  else
  {
    v116 = v111;
  }

  if ((v77 & 2) != 0)
  {
    v113 = v111;
    v117 = v115;
  }

  else
  {
    v117 = v112;
  }

  if ((v77 & 2) != 0)
  {
    v118 = v112;
  }

  else
  {
    v118 = v115;
  }

  if ((v77 & 2) == 0)
  {
    v73 = v64;
  }

  LODWORD(STACK[0x51D0]) = v73;
  if ((v77 & 2) != 0)
  {
    v109 = v108;
  }

  v119 = (v73 << v83) | (v73 >> (v86 & 0x18));
  if ((v86 & 0x18) == 0)
  {
    v119 = v73;
  }

  LODWORD(STACK[0x5030]) = v119;
  v120 = LODWORD(STACK[0x53E8]) ^ v0;
  v121 = LODWORD(STACK[0x5670]) ^ v96;
  LODWORD(STACK[0x5320]) = v121;
  v122 = LODWORD(STACK[0x53E0]) ^ v0;
  LODWORD(STACK[0x5308]) = v122;
  v123 = LODWORD(STACK[0x5378]) ^ v0;
  LODWORD(STACK[0x5318]) = v123;
  v124 = LODWORD(STACK[0x5650]) ^ v0;
  LODWORD(STACK[0x5258]) = v124;
  v125 = LODWORD(STACK[0x53C0]) ^ v96;
  LODWORD(STACK[0x5510]) = v125;
  if (v102)
  {
    v126 = v122;
  }

  else
  {
    v126 = v121;
  }

  LODWORD(STACK[0x4F48]) = v126;
  if (v102)
  {
    v125 = v124;
  }

  LODWORD(STACK[0x5338]) = v125;
  LODWORD(STACK[0x4F58]) = v120;
  if (v102)
  {
    v127 = v120;
  }

  else
  {
    v127 = v122;
  }

  if (v102)
  {
    v128 = v121;
  }

  else
  {
    v128 = v123;
  }

  if (v102)
  {
    v129 = v123;
  }

  else
  {
    v129 = v120;
  }

  LODWORD(STACK[0x4FC8]) = v129;
  if ((v102 & 2) != 0)
  {
    v130 = v127;
  }

  else
  {
    v130 = v128;
  }

  LODWORD(STACK[0x5170]) = v128;
  LODWORD(STACK[0x5168]) = v127;
  if ((v102 & 2) != 0)
  {
    v126 = v129;
    v131 = v97;
  }

  else
  {
    v131 = v125;
  }

  LODWORD(STACK[0x51C8]) = v131;
  v132 = (v131 >> (v86 & 0x18)) | (v131 << v83);
  if ((v86 & 0x18) == 0)
  {
    v132 = v131;
  }

  LODWORD(STACK[0x4FD0]) = v132;
  v133 = STACK[0x5430];
  v134 = LODWORD(STACK[0x5600]) ^ v96;
  LODWORD(STACK[0x54E0]) = v134;
  v135 = LODWORD(STACK[0x5640]) ^ v0;
  v136 = LODWORD(STACK[0x5620]) ^ v96;
  LODWORD(STACK[0x52A8]) = v136;
  v137 = LODWORD(STACK[0x5380]) ^ v0;
  LODWORD(STACK[0x54A0]) = v137;
  if (v133)
  {
    v136 = v134;
  }

  LODWORD(STACK[0x50C0]) = v136;
  if (v133)
  {
    v138 = v137;
  }

  else
  {
    v138 = v135;
  }

  LODWORD(STACK[0x50B8]) = v138;
  LODWORD(STACK[0x5298]) = v135;
  v139 = v133;
  if ((v133 & 2) != 0)
  {
    v140 = v136;
  }

  else
  {
    v140 = v138;
  }

  v141 = v86 & 0x18;
  if ((v86 & 0x18) != 0)
  {
    v142 = (v130 >> (v86 & 0x18)) | (v130 << v83);
  }

  else
  {
    v142 = v130;
  }

  LODWORD(STACK[0x4EC8]) = v142;
  v143 = v113;
  LODWORD(STACK[0x51B0]) = v113;
  v144 = (v113 << v83) ^ (v113 >> v141);
  LODWORD(STACK[0x51A8]) = v118;
  v145 = (v118 << v83) | (v118 >> v141);
  LODWORD(STACK[0x5198]) = v140;
  v146 = (v140 >> v141) ^ (v140 << v83);
  LODWORD(STACK[0x51A0]) = v126;
  v147 = __ROR4__(v126, v141);
  if ((v86 & 0x18) != 0)
  {
    v148 = v147;
  }

  else
  {
    v148 = v126;
  }

  LODWORD(STACK[0x4EC0]) = v148;
  LODWORD(STACK[0x51C0]) = v116;
  v149 = __ROR4__(v116, v141);
  if ((v86 & 0x18) != 0)
  {
    v150 = v149;
  }

  else
  {
    v150 = v116;
  }

  LODWORD(STACK[0x4F20]) = v150;
  if ((v86 & 0x18) != 0)
  {
    v151 = v145;
  }

  else
  {
    v151 = v118;
  }

  LODWORD(STACK[0x4F60]) = v151;
  if ((v86 & 0x18) != 0)
  {
    v143 = v144;
  }

  LODWORD(STACK[0x4F08]) = v143;
  if ((v86 & 0x18) != 0)
  {
    v152 = v146;
  }

  else
  {
    v152 = v140;
  }

  LODWORD(STACK[0x4FA8]) = v152;
  if ((v104 & 0x18) != 0)
  {
    v153 = (v109 << (v104 & 0x18)) + (v109 >> v141);
  }

  else
  {
    v153 = v109;
  }

  LODWORD(STACK[0x50A0]) = v153;
  v154 = LODWORD(STACK[0x5368]) ^ v0;
  v155 = LODWORD(STACK[0x55E0]) ^ v96;
  v156 = LODWORD(STACK[0x53B8]) ^ v0;
  v157 = LODWORD(STACK[0x53A0]) ^ v0;
  v158 = LODWORD(STACK[0x57A0]) ^ v0;
  v159 = LODWORD(STACK[0x5770]) ^ v0;
  v160 = LODWORD(STACK[0x5760]) ^ v96;
  v161 = v96;
  v162 = LODWORD(STACK[0x5370]) ^ v0;
  v163 = v0;
  v164 = v154;
  LODWORD(STACK[0x52C8]) = v154;
  LODWORD(STACK[0x52C0]) = v155;
  if (v139)
  {
    v154 = v155;
  }

  LODWORD(STACK[0x52D0]) = v157;
  if (v139)
  {
    v165 = v157;
  }

  else
  {
    v165 = v155;
  }

  LODWORD(STACK[0x5098]) = v165;
  LODWORD(STACK[0x52B8]) = v156;
  if ((v139 & 1) == 0)
  {
    v164 = v156;
  }

  LODWORD(STACK[0x50D0]) = v164;
  if (v139)
  {
    v166 = v156;
  }

  else
  {
    v166 = v157;
  }

  if (v139)
  {
    v167 = v158;
  }

  else
  {
    v167 = v160;
  }

  LODWORD(STACK[0x4EA0]) = v167;
  v168 = v160;
  LODWORD(STACK[0x5288]) = v160;
  LODWORD(STACK[0x52A0]) = v158;
  if (v139)
  {
    v169 = v159;
  }

  else
  {
    v169 = v162;
  }

  LODWORD(STACK[0x5048]) = v169;
  LODWORD(STACK[0x5280]) = v159;
  LODWORD(STACK[0x5290]) = v162;
  if ((v139 & 2) != 0)
  {
    v170 = v166;
  }

  else
  {
    v170 = v154;
  }

  if ((v139 & 2) != 0)
  {
    v171 = v154;
  }

  else
  {
    v171 = v166;
  }

  if ((v139 & 2) != 0)
  {
    v172 = v165;
  }

  else
  {
    v172 = v164;
  }

  LODWORD(STACK[0x5188]) = v172;
  if ((v139 & 2) != 0)
  {
    v173 = v167;
  }

  else
  {
    v173 = v169;
  }

  LODWORD(STACK[0x5190]) = v173;
  v174 = (v173 >> v82) | (v173 << (v104 & 0x18));
  if ((v104 & 0x18) != 0)
  {
    v172 = (v172 << (v104 & 0x18)) ^ (v172 >> v141);
  }

  LODWORD(STACK[0x4EB0]) = v172;
  if ((v104 & 0x18) == 0)
  {
    v174 = v173;
  }

  LODWORD(STACK[0x5068]) = v174;
  v176 = STACK[0x57B0] & 0x18;
  v175 = v176 == 0;
  LODWORD(STACK[0x5178]) = v171;
  v177 = (v171 >> v141) + (v171 << v176);
  LODWORD(STACK[0x5158]) = v99;
  v178 = (v99 << v176) + (v99 >> v141);
  v179 = LODWORD(STACK[0x5138]) ^ LODWORD(STACK[0x5140]);
  LODWORD(STACK[0x4E90]) = v179;
  v180 = LODWORD(STACK[0x5148]) ^ LODWORD(STACK[0x52E8]);
  LODWORD(STACK[0x4E98]) = v180;
  if (v175)
  {
    v181 = v171;
  }

  else
  {
    v181 = v177;
  }

  LODWORD(STACK[0x4EA8]) = v181;
  if (v175)
  {
    v178 = v99;
  }

  LODWORD(STACK[0x5038]) = v178;
  if ((v102 & 2) != 0)
  {
    v182 = v128;
  }

  else
  {
    v182 = v127;
  }

  LODWORD(STACK[0x5408]) = v104;
  LODWORD(STACK[0x5150]) = v106;
  if ((v104 & 0x18) != 0)
  {
    v182 = (v182 >> v141) ^ (v182 << (v104 & 0x18));
  }

  LODWORD(STACK[0x4EB8]) = v182;
  if ((v104 & 0x18) != 0)
  {
    v183 = (v106 >> v141) + (v106 << (v104 & 0x18));
  }

  else
  {
    v183 = v106;
  }

  LODWORD(STACK[0x4F30]) = v183;
  LODWORD(STACK[0x5160]) = v170;
  v184 = __ROR4__(v170, v141);
  if ((v104 & 0x18) == 0)
  {
    v184 = v170;
  }

  LODWORD(STACK[0x4EE0]) = v184;
  LODWORD(STACK[0x5180]) = v117;
  v185 = __ROR4__(v117, v141);
  if ((v104 & 0x18) == 0)
  {
    v185 = v117;
  }

  LODWORD(STACK[0x4EE8]) = v185;
  v186 = STACK[0x5248];
  v187 = LODWORD(STACK[0x5248]) + LODWORD(STACK[0x55D0]);
  LODWORD(STACK[0x52E8]) = v187;
  if (v187)
  {
    v188 = v179;
  }

  else
  {
    v188 = v180;
  }

  if (v187)
  {
    v189 = STACK[0x5400];
  }

  else
  {
    v189 = STACK[0x5440];
  }

  if ((v187 & 2) != 0)
  {
    v190 = v189;
  }

  else
  {
    v190 = v188;
  }

  if ((v187 & 2) == 0)
  {
    v188 = v189;
  }

  v191 = v104 & 0x18;
  v192 = __ROR4__(v188, v141);
  if ((v104 & 0x18) != 0)
  {
    v188 = v192;
  }

  LODWORD(STACK[0x4F10]) = v188;
  v193 = __ROR4__(v190, v141);
  if ((v104 & 0x18) != 0)
  {
    v194 = v193;
  }

  else
  {
    v194 = v190;
  }

  if (v186)
  {
    v195 = STACK[0x52F0];
  }

  else
  {
    v195 = STACK[0x5310];
  }

  if (v186)
  {
    v196 = STACK[0x5300];
  }

  else
  {
    v196 = STACK[0x54F0];
  }

  v197 = STACK[0x53F0];
  if ((v186 & 2) != 0)
  {
    v198 = v196;
  }

  else
  {
    v197 = STACK[0x53A8];
    v198 = v195;
  }

  LODWORD(STACK[0x5140]) = v198;
  v199 = v86;
  if ((v86 & 0x18) != 0)
  {
    v197 = (v197 >> (v86 & 0x18)) ^ (v197 << v191);
  }

  LODWORD(STACK[0x50A8]) = v197;
  if ((v86 & 0x18) != 0)
  {
    v200 = (v198 >> (v86 & 0x18)) + (v198 << v191);
  }

  else
  {
    v200 = v198;
  }

  LODWORD(STACK[0x5028]) = v200;
  v201 = STACK[0x4E68];
  if ((STACK[0x4E68] & 2) != 0)
  {
    v202 = STACK[0x50D8];
  }

  else
  {
    v202 = STACK[0x50E0];
  }

  v203 = STACK[0x50F0];
  if ((v201 & 2) != 0)
  {
    v203 = STACK[0x50E8];
  }

  if ((v199 & 0x18) != 0)
  {
    v203 = (v203 >> (v199 & 0x18)) + (v203 << v191);
  }

  LODWORD(STACK[0x5078]) = v203;
  LODWORD(STACK[0x5148]) = v202;
  v204 = __ROR4__(v202, v199 & 0x18);
  if ((v199 & 0x18) == 0)
  {
    v204 = v202;
  }

  LODWORD(STACK[0x4FE0]) = v204;
  LODWORD(STACK[0x5570]) = v102;
  v205 = STACK[0x54B0];
  if ((v102 & 1) == 0)
  {
    v205 = STACK[0x5258];
  }

  LODWORD(STACK[0x4FB0]) = v205;
  v206 = STACK[0x5510];
  if ((v102 & 1) == 0)
  {
    v206 = STACK[0x54C0];
  }

  LODWORD(STACK[0x4FB8]) = v206;
  if ((v102 & 2) != 0)
  {
    v207 = v206;
  }

  else
  {
    v207 = v205;
  }

  LODWORD(STACK[0x5138]) = v207;
  v208 = (v207 << v191) + (v207 >> (v199 & 0x18));
  if ((v199 & 0x18) == 0)
  {
    v208 = v207;
  }

  LODWORD(STACK[0x4FC0]) = v208;
  v209 = STACK[0x5120];
  if (v139)
  {
    v209 = STACK[0x50F8];
  }

  v210 = STACK[0x5130];
  if (v139)
  {
    v211 = v162;
  }

  else
  {
    v210 = STACK[0x5128];
    v211 = v158;
  }

  LODWORD(STACK[0x5128]) = v211;
  if (v139)
  {
    v212 = v135;
  }

  else
  {
    v212 = STACK[0x54E0];
  }

  LODWORD(STACK[0x53A8]) = v212;
  if (v139)
  {
    v213 = STACK[0x52A8];
  }

  else
  {
    v213 = STACK[0x54A0];
  }

  if (v139)
  {
    v214 = v168;
  }

  else
  {
    v214 = v159;
  }

  LODWORD(STACK[0x5130]) = v214;
  if ((v139 & 2) != 0)
  {
    v215 = STACK[0x50B8];
  }

  else
  {
    v215 = STACK[0x50C0];
  }

  if ((v139 & 2) != 0)
  {
    v216 = v210;
  }

  else
  {
    v216 = v209;
  }

  if ((v139 & 2) != 0)
  {
    v217 = v212;
  }

  else
  {
    v209 = v210;
    v217 = v213;
  }

  if ((v139 & 2) != 0)
  {
    v218 = v214;
  }

  else
  {
    v218 = v211;
  }

  if ((v139 & 2) != 0)
  {
    v214 = v211;
  }

  v219 = v199 & 0x18;
  LODWORD(STACK[0x5450]) = v199;
  if ((v199 & 0x18) != 0)
  {
    v214 = (v214 << v191) ^ (v214 >> (v199 & 0x18));
  }

  LODWORD(STACK[0x5058]) = v214;
  v220 = __ROR4__(v218, v219);
  if ((v199 & 0x18) != 0)
  {
    v218 = v220;
  }

  LODWORD(STACK[0x5050]) = v218;
  v221 = __ROR4__(v216, v219);
  if ((v199 & 0x18) == 0)
  {
    v221 = v216;
  }

  LODWORD(STACK[0x50C0]) = v221;
  if ((v199 & 0x18) != 0)
  {
    v209 = (v209 << v191) + (v209 >> v219);
  }

  LODWORD(STACK[0x50B8]) = v209;
  v222 = STACK[0x5260];
  if ((v186 & 1) == 0)
  {
    v222 = STACK[0x5270];
  }

  v223 = STACK[0x5268];
  if (v186)
  {
    v223 = STACK[0x5278];
  }

  v224 = LODWORD(STACK[0x5780]) ^ v163;
  v225 = LODWORD(STACK[0x5388]) ^ v163;
  v226 = LODWORD(STACK[0x53D8]) ^ v163;
  v227 = LODWORD(STACK[0x5610]) ^ v161;
  if (v186)
  {
    v228 = STACK[0x52D8];
  }

  else
  {
    v228 = STACK[0x54D0];
  }

  LODWORD(STACK[0x4E78]) = v228;
  if (v186)
  {
    v229 = STACK[0x52E0];
  }

  else
  {
    v229 = STACK[0x52F8];
  }

  LODWORD(STACK[0x5268]) = v225;
  LODWORD(STACK[0x5260]) = v226;
  if (v186)
  {
    v230 = v226;
  }

  else
  {
    v230 = v225;
  }

  LODWORD(STACK[0x4E80]) = v230;
  LODWORD(STACK[0x5270]) = v224;
  if (v186)
  {
    v231 = v224;
  }

  else
  {
    v231 = v226;
  }

  LODWORD(STACK[0x5278]) = v227;
  if (v186)
  {
    v232 = v227;
  }

  else
  {
    v232 = v224;
  }

  if (v186)
  {
    v233 = v225;
  }

  else
  {
    v233 = v227;
  }

  v234 = (v186 & 2) == 0;
  if ((v186 & 2) != 0)
  {
    v235 = STACK[0x53F8];
  }

  else
  {
    v235 = STACK[0x5108];
  }

  if ((v186 & 2) != 0)
  {
    v236 = v195;
  }

  else
  {
    v236 = v196;
  }

  if ((v186 & 2) != 0)
  {
    v237 = v222;
  }

  else
  {
    v237 = v223;
  }

  if ((v186 & 2) != 0)
  {
    v222 = v223;
    v238 = v229;
  }

  else
  {
    v238 = v228;
  }

  if ((v186 & 2) != 0)
  {
    v239 = v232;
  }

  else
  {
    v239 = v230;
  }

  if (v234)
  {
    v240 = v231;
  }

  else
  {
    v240 = v233;
  }

  v241 = STACK[0x57B0];
  v242 = STACK[0x57B0] & 0x18;
  LODWORD(STACK[0x5120]) = v236;
  if ((v241 & 0x18) != 0)
  {
    v243 = (v222 << (v241 & 0x18)) | (v222 >> v219);
  }

  else
  {
    v243 = v222;
  }

  LODWORD(STACK[0x5080]) = v243;
  if ((v241 & 0x18) != 0)
  {
    v244 = (v237 >> v219) | (v237 << v242);
  }

  else
  {
    v244 = v237;
  }

  LODWORD(STACK[0x5088]) = v244;
  if ((v241 & 0x18) != 0)
  {
    v245 = (v236 >> v219) + (v236 << (v241 & 0x18));
  }

  else
  {
    v245 = v236;
  }

  LODWORD(STACK[0x5020]) = v245;
  v246 = STACK[0x4ED8];
  if ((v201 & 2) == 0)
  {
    v246 = STACK[0x4ED0];
  }

  LODWORD(STACK[0x53F0]) = v246;
  if ((v201 & 2) != 0)
  {
    v247 = STACK[0x4E88];
  }

  else
  {
    v247 = STACK[0x4E70];
  }

  v249 = v199 & 0x18;
  v248 = v249 == 0;
  LODWORD(STACK[0x5108]) = v235;
  v250 = (v235 >> (v199 & 0x18)) + (v235 << v242);
  v251 = LODWORD(STACK[0x5590]) ^ (2 * (STACK[0x5590] & LODWORD(STACK[0x5700])));
  v252 = ((v251 & STACK[0x5220]) << STACK[0x5228]) | ((v251 & STACK[0x5240]) >> STACK[0x5230]);
  if (!v249)
  {
    v250 = v235;
  }

  v253 = v252 ^ LODWORD(STACK[0x4A88]) ^ v250 ^ v194;
  LODWORD(STACK[0x4E68]) = 563 * BYTE2(v253) + 144691 - 773 * ((5556232 * (563 * BYTE2(v253) + 144691)) >> 32);
  v254 = v252 ^ LODWORD(STACK[0x4A10]) ^ LODWORD(STACK[0x4F30]) ^ LODWORD(STACK[0x4F10]);
  v255 = 563 * (v252 ^ LOBYTE(STACK[0x4A10]) ^ LOBYTE(STACK[0x4F30]) ^ LOBYTE(STACK[0x4F10])) + 144691;
  LODWORD(STACK[0x4E70]) = v255 - 773 * ((5556232 * v255) >> 32);
  v256 = v249;
  LODWORD(STACK[0x50D8]) = v238;
  v257 = (v238 << v191) ^ (v238 >> v249);
  v258 = v240;
  LODWORD(STACK[0x50E8]) = v240;
  LODWORD(STACK[0x50E0]) = v239;
  LODWORD(STACK[0x50F0]) = v217;
  LODWORD(STACK[0x50F8]) = v215;
  if (v248)
  {
    v257 = v238;
  }

  else
  {
    v258 = (v240 << v191) ^ (v240 >> v256);
  }

  LODWORD(STACK[0x4ED8]) = v258;
  if (v248)
  {
    v259 = v239;
  }

  else
  {
    v259 = (v239 >> v256) + (v239 << v191);
  }

  LODWORD(STACK[0x4ED0]) = v259;
  if (v248)
  {
    v260 = v217;
  }

  else
  {
    v260 = (v217 << v191) ^ (v217 >> v256);
  }

  LODWORD(STACK[0x4F30]) = v260;
  if (v248)
  {
    v261 = v215;
  }

  else
  {
    v261 = (v215 << v191) + (v215 >> v256);
  }

  LODWORD(STACK[0x4F10]) = v261;
  v262 = (STACK[0x5430] & 2) == 0;
  v263 = STACK[0x53A8];
  if ((STACK[0x5430] & 2) != 0)
  {
    v263 = v213;
  }

  LODWORD(STACK[0x53A8]) = v263;
  if (v262)
  {
    v264 = STACK[0x5098];
  }

  else
  {
    v264 = STACK[0x50D0];
  }

  v265 = STACK[0x5048];
  if (v262)
  {
    v265 = STACK[0x4EA0];
  }

  if ((v241 & 0x18) != 0)
  {
    v266 = (v247 << (v241 & 0x18)) ^ (v247 >> v256);
  }

  else
  {
    v266 = v247;
  }

  LODWORD(STACK[0x5048]) = v266;
  v267 = (STACK[0x5570] & 2) == 0;
  v268 = STACK[0x4FC8];
  if ((STACK[0x5570] & 2) != 0)
  {
    v268 = STACK[0x4F48];
  }

  LODWORD(STACK[0x5430]) = v268;
  v269 = STACK[0x5338];
  if (v267)
  {
    v269 = STACK[0x50C8];
  }

  LODWORD(STACK[0x5338]) = v269;
  v270 = STACK[0x5250];
  LODWORD(STACK[0x50D0]) = v265;
  if ((v270 & 0x18) != 0)
  {
    v265 = (v265 >> (v270 & 0x18)) ^ (v265 << v191);
  }

  LODWORD(STACK[0x4FC8]) = v265;
  v271 = STACK[0x52E8];
  v272 = STACK[0x5440];
  if ((STACK[0x52E8] & 1) == 0)
  {
    v272 = STACK[0x4E90];
  }

  if (v271)
  {
    v273 = STACK[0x4E98];
  }

  else
  {
    v273 = STACK[0x5400];
  }

  v274 = STACK[0x5248];
  if ((STACK[0x5248] & 2) != 0)
  {
    v275 = STACK[0x4E78];
  }

  else
  {
    v275 = v229;
  }

  v276 = STACK[0x4E80];
  if ((v274 & 2) == 0)
  {
    v276 = v232;
  }

  LODWORD(STACK[0x5400]) = v276;
  if ((v274 & 2) != 0)
  {
    v277 = v231;
  }

  else
  {
    v277 = v233;
  }

  LODWORD(STACK[0x53F8]) = v277;
  v278 = (v271 & 2) == 0;
  if ((v271 & 2) != 0)
  {
    v279 = v272;
  }

  else
  {
    v279 = v273;
  }

  if (!v278)
  {
    v272 = v273;
  }

  v280 = v270 & 0x18;
  v281 = (v272 >> (v270 & 0x18)) ^ (v272 << v191);
  if (v280)
  {
    v272 = v281;
  }

  LODWORD(STACK[0x4F40]) = v191;
  LODWORD(STACK[0x4F48]) = v280;
  if (v280)
  {
    v282 = (v279 << v191) | (v279 >> v280);
  }

  else
  {
    v282 = v279;
  }

  v284 = v241 & 0x18;
  v283 = v284 == 0;
  LODWORD(STACK[0x50C8]) = v275;
  v285 = (v275 >> v256) ^ (v275 << v284);
  if ((v241 & 0x18) == 0)
  {
    v285 = v275;
  }

  v286 = STACK[0x4AD0] ^ LODWORD(STACK[0x4A90]) ^ v252 ^ v285 ^ v272;
  v287 = (STACK[0x4AD0] ^ LOBYTE(STACK[0x4A90]) ^ v252 ^ v285 ^ v272);
  v288 = 563 * HIBYTE(v286) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v286) + 144691)) >> 32);
  v289 = LODWORD(STACK[0x4DF0]) ^ LODWORD(STACK[0x4E24]) ^ v252 ^ v257 ^ v282;
  v290 = 563 * HIBYTE(v289) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v289) + 144691)) >> 32);
  v291 = 563 * BYTE1(v286) + 144691 - 773 * ((5556232 * (563 * BYTE1(v286) + 144691)) >> 32);
  v292 = 563 * BYTE2(v286) + 144691 - 773 * ((5556232 * (563 * BYTE2(v286) + 144691)) >> 32);
  v293 = 563 * HIBYTE(v254) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v254) + 144691)) >> 32);
  v294 = 563 * BYTE2(v254) + 144691 - 773 * ((5556232 * (563 * BYTE2(v254) + 144691)) >> 32);
  v295 = 563 * BYTE1(v254) + 144691 - 773 * ((5556232 * (563 * BYTE1(v254) + 144691)) >> 32);
  v296 = 563 * BYTE1(v289) + 144691 - 773 * ((5556232 * (563 * BYTE1(v289) + 144691)) >> 32);
  v297 = 563 * v289 + 144691 - 773 * ((5556232 * (563 * v289 + 144691)) >> 32);
  v298 = STACK[0x5218];
  v299 = v252 ^ LODWORD(STACK[0x4D58]) ^ LODWORD(STACK[0x4EA8]) ^ __ROR4__(*(STACK[0x5218] + 4 * (563 * v287 + 144691 - 773 * ((5556232 * (563 * v287 + 144691)) >> 32))), 16) ^ __ROR4__(*(STACK[0x5218] + 4 * (563 * BYTE1(v253) + 144691 - 773 * ((5556232 * (563 * BYTE1(v253) + 144691)) >> 32))), 8) ^ *(STACK[0x5218] + 4 * (563 * BYTE2(v289) + 144691 - 773 * ((5556232 * (563 * BYTE2(v289) + 144691)) >> 32))) ^ __ROR4__(*(STACK[0x5218] + 4 * v293), 24);
  v300 = 563 * BYTE1(v299) + 144691 - 773 * ((5556232 * (563 * BYTE1(v299) + 144691)) >> 32);
  v301 = *(STACK[0x5218] + 4 * v292) ^ __ROR4__(*(STACK[0x5218] + 4 * (563 * HIBYTE(v253) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v253) + 144691)) >> 32))), 24) ^ __ROR4__(*(STACK[0x5218] + 4 * v295), 8);
  v302 = __ROR4__(*(STACK[0x5218] + 4 * v297), 16);
  v303 = LODWORD(STACK[0x5460]) - LODWORD(STACK[0x4F50]);
  LODWORD(STACK[0x4F50]) = v303;
  v304 = v303 - v191;
  v305 = v284;
  v306 = STACK[0x4DE0] ^ STACK[0x4AC0] ^ v252 ^ LODWORD(STACK[0x4EE0]) ^ (v304 + v284 + (v301 ^ v302));
  v307 = 563 * BYTE2(v306) + 144691 - 773 * ((5556232 * (563 * BYTE2(v306) + 144691)) >> 32);
  v308 = 563 * BYTE2(v299) + 144691 - 773 * ((5556232 * (563 * BYTE2(v299) + 144691)) >> 32);
  v309 = *(v298 + 4 * v288);
  HIDWORD(v310) = *(v298 + 4 * (563 * v253 + 144691 - 773 * ((5556232 * (563 * v253 + 144691)) >> 32)));
  LODWORD(v310) = HIDWORD(v310);
  LODWORD(STACK[0x5250]) = v284;
  LODWORD(STACK[0x5098]) = v264;
  v311 = (v264 << v284) + (v264 >> v256);
  v312 = (v310 >> 16) ^ __ROR4__(v309, 24) ^ *(v298 + 4 * v294);
  LODWORD(v310) = __ROR4__(*(v298 + 4 * v296), 8);
  v313 = v274 + LODWORD(STACK[0x55C0]);
  LODWORD(STACK[0x4EE0]) = v313;
  v314 = STACK[0x53B0];
  v315 = v274 + LODWORD(STACK[0x53B0]);
  LODWORD(STACK[0x5440]) = v315;
  LODWORD(STACK[0x4E88]) = v256;
  v316 = v256 + v280 - 2 * v256 + v315 - v313 + (v312 ^ v310);
  if (v283)
  {
    v317 = v264;
  }

  else
  {
    v317 = v311;
  }

  v318 = v252 ^ LODWORD(STACK[0x4E10]) ^ v317 ^ v316;
  v319 = 563 * HIBYTE(v318) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v318) + 144691)) >> 32);
  v320 = 563 * v299 + 144691 - 773 * ((5556232 * (563 * v299 + 144691)) >> 32);
  v321 = v252 ^ LODWORD(STACK[0x4C68]) ^ LODWORD(STACK[0x4EB0]) ^ *(v298 + 4 * LODWORD(STACK[0x4E68])) ^ __ROR4__(*(v298 + 4 * LODWORD(STACK[0x4E70])), 16) ^ __ROR4__(*(v298 + 4 * v290), 24) ^ __ROR4__(*(v298 + 4 * v291), 8);
  v322 = 563 * HIBYTE(v321) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v321) + 144691)) >> 32);
  v323 = 563 * HIBYTE(v299) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v299) + 144691)) >> 32);
  v324 = 563 * BYTE1(v318) + 144691 - 773 * ((5556232 * (563 * BYTE1(v318) + 144691)) >> 32);
  v325 = 563 * v318 + 144691 - 773 * ((5556232 * (563 * v318 + 144691)) >> 32);
  v326 = 563 * BYTE1(v321) + 144691 - 773 * ((5556232 * (563 * BYTE1(v321) + 144691)) >> 32);
  v327 = 563 * BYTE2(v321) + 144691 - 773 * ((5556232 * (563 * BYTE2(v321) + 144691)) >> 32);
  v328 = 563 * HIBYTE(v306) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v306) + 144691)) >> 32);
  v329 = 563 * v306 + 144691 - 773 * ((5556232 * (563 * v306 + 144691)) >> 32);
  v330 = 563 * BYTE1(v306) + 144691 - 773 * ((5556232 * (563 * BYTE1(v306) + 144691)) >> 32);
  v331 = 563 * BYTE2(v318) + 144691 - 773 * ((5556232 * (563 * BYTE2(v318) + 144691)) >> 32);
  v332 = v252 ^ LODWORD(STACK[0x4BA8]);
  v333 = v332 ^ LODWORD(STACK[0x4EC0]) ^ __ROR4__(*(v298 + 4 * v300), 8) ^ __ROR4__(*(v298 + 4 * v328), 24) ^ *(v298 + 4 * v331) ^ __ROR4__(*(v298 + 4 * (563 * v321 + 144691 - 773 * ((5556232 * (563 * v321 + 144691)) >> 32))), 16);
  v334 = v332 ^ LODWORD(STACK[0x4EB8]) ^ *(v298 + 4 * v308) ^ __ROR4__(*(v298 + 4 * v319), 24) ^ __ROR4__(*(v298 + 4 * v326), 8) ^ __ROR4__(*(v298 + 4 * v329), 16);
  v335 = LODWORD(STACK[0x4A80]) ^ STACK[0x4DD8] ^ v252 ^ LODWORD(STACK[0x4EC8]) ^ *(v298 + 4 * v307) ^ __ROR4__(*(v298 + 4 * v320), 16) ^ __ROR4__(*(v298 + 4 * v322), 24) ^ __ROR4__(*(v298 + 4 * v324), 8);
  v336 = (LODWORD(STACK[0x5430]) << v305) ^ (LODWORD(STACK[0x5430]) >> v256);
  if (v283)
  {
    v336 = STACK[0x5430];
  }

  v337 = v252 ^ LODWORD(STACK[0x4BA0]) ^ v336 ^ __ROR4__(*(v298 + 4 * v323), 24) ^ __ROR4__(*(v298 + 4 * v325), 16) ^ *(v298 + 4 * v327) ^ __ROR4__(*(v298 + 4 * v330), 8);
  v338 = LODWORD(STACK[0x4F70]) - 1221124937;
  v339 = LODWORD(STACK[0x5410]) ^ 0x118C3D3;
  LODWORD(STACK[0x5410]) = v339;
  v340 = STACK[0x5680];
  v341 = STACK[0x4FD8];
  v342 = STACK[0x5420];
  v343 = STACK[0x4F90];
  v344 = STACK[0x56F0];
  v345 = STACK[0x5340];
  v346 = *(v298 + 4 * (563 * HIBYTE(v333) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v333) + 144691)) >> 32)));
  v347 = LODWORD(STACK[0x5680]) ^ LODWORD(STACK[0x5530]) ^ LODWORD(STACK[0x55C0]) ^ LODWORD(STACK[0x56D0]) ^ LODWORD(STACK[0x55D0]) ^ LODWORD(STACK[0x5770]) ^ v314 ^ LODWORD(STACK[0x4FD8]) ^ LODWORD(STACK[0x5540]) ^ LODWORD(STACK[0x5710]) ^ LODWORD(STACK[0x5398]) ^ LODWORD(STACK[0x5520]) ^ LODWORD(STACK[0x5580]) ^ LODWORD(STACK[0x5590]) ^ LODWORD(STACK[0x5330]) ^ LODWORD(STACK[0x5760]) ^ LODWORD(STACK[0x4F78]) ^ LODWORD(STACK[0x5550]) ^ LODWORD(STACK[0x5500]) ^ LODWORD(STACK[0x5420]) ^ LODWORD(STACK[0x5350]) ^ LODWORD(STACK[0x56C0]) ^ LODWORD(STACK[0x55A0]) ^ LODWORD(STACK[0x4F90]) ^ LODWORD(STACK[0x56E0]) ^ LODWORD(STACK[0x57A0]) ^ LODWORD(STACK[0x55B0]) ^ LODWORD(STACK[0x56F0]) ^ LODWORD(STACK[0x5720]) ^ LODWORD(STACK[0x4F88]) ^ (LODWORD(STACK[0x4F80]) + LODWORD(STACK[0x5340])) ^ 0x5C9A0517;
  LODWORD(STACK[0x5590]) = v347;
  v348 = *(v298 + 4 * (563 * BYTE2(v334) + 144691 - 773 * ((5556232 * (563 * BYTE2(v334) + 144691)) >> 32))) ^ __ROR4__(v346, 24) ^ __ROR4__(*(v298 + 4 * (563 * v335 + 144691 - 773 * ((5556232 * (563 * v335 + 144691)) >> 32))), 16);
  v349 = __ROR4__(*(v298 + 4 * (563 * BYTE1(v337) + 144691 - 773 * ((5556232 * (563 * BYTE1(v337) + 144691)) >> 32))), 8);
  v350 = LODWORD(STACK[0x57C0]) + 533724422;
  LODWORD(STACK[0x55D0]) = v350;
  LODWORD(STACK[0x5580]) = v338 + v350;
  LODWORD(STACK[0x5398]) = (v348 ^ v349) + 18735069 * (((v338 + v350) ^ v347) - v339);
  v351 = 563 * BYTE1(v333) + 144691 - 773 * ((5556232 * (563 * BYTE1(v333) + 144691)) >> 32);
  LODWORD(STACK[0x5520]) = 563 * HIBYTE(v334) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v334) + 144691)) >> 32);
  LODWORD(STACK[0x5500]) = 563 * BYTE2(v337) + 144691 - 773 * ((5556232 * (563 * BYTE2(v337) + 144691)) >> 32);
  v352 = 563 * v334 + 144691 - 773 * ((5556232 * (563 * v334 + 144691)) >> 32);
  LODWORD(STACK[0x53B0]) = 563 * BYTE1(v335) + 144691 - 773 * ((5556232 * (563 * BYTE1(v335) + 144691)) >> 32);
  v353 = 563 * HIBYTE(v337) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v337) + 144691)) >> 32);
  LODWORD(STACK[0x5350]) = 563 * v333 + 144691 - 773 * ((5556232 * (563 * v333 + 144691)) >> 32);
  v354 = 563 * BYTE2(v335) + 144691 - 773 * ((5556232 * (563 * BYTE2(v335) + 144691)) >> 32);
  v355 = (*(v298 + 4 * (563 * BYTE2(v333) + 144691 - 773 * ((5556232 * (563 * BYTE2(v333) + 144691)) >> 32))) ^ __ROR4__(*(v298 + 4 * (563 * BYTE1(v334) + 144691 - 773 * ((5556232 * (563 * BYTE1(v334) + 144691)) >> 32))), 8) ^ __ROR4__(*(v298 + 4 * (563 * HIBYTE(v335) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v335) + 144691)) >> 32))), 24) ^ __ROR4__(*(v298 + 4 * (563 * v337 + 144691 - 773 * ((5556232 * (563 * v337 + 144691)) >> 32))), 16)) + 903204385 * v342;
  v356 = STACK[0x53E8];
  v357 = v340 ^ LODWORD(STACK[0x53E8]) ^ LODWORD(STACK[0x54D0]) ^ LODWORD(STACK[0x5260]) ^ LODWORD(STACK[0x4EF0]) ^ LODWORD(STACK[0x5268]) ^ LODWORD(STACK[0x54E0]) ^ LODWORD(STACK[0x4EF8]) ^ LODWORD(STACK[0x52D8]) ^ LODWORD(STACK[0x5280]);
  v358 = STACK[0x5480];
  LODWORD(STACK[0x55C0]) = v341 ^ LODWORD(STACK[0x5480]);
  v359 = STACK[0x4F00];
  v360 = v357 ^ LODWORD(STACK[0x54C0]) ^ v341 ^ v358 ^ LODWORD(STACK[0x5270]) ^ LODWORD(STACK[0x54F0]) ^ LODWORD(STACK[0x5290]) ^ LODWORD(STACK[0x4F00]) ^ LODWORD(STACK[0x5288]) ^ LODWORD(STACK[0x5308]) ^ LODWORD(STACK[0x5328]) ^ LODWORD(STACK[0x5510]) ^ LODWORD(STACK[0x54B0]);
  v361 = LODWORD(STACK[0x4FA0]) ^ v358;
  LODWORD(STACK[0x55B0]) = v361;
  v362 = STACK[0x52E0];
  v363 = STACK[0x52B0];
  v364 = STACK[0x52F0];
  v365 = v360 ^ LODWORD(STACK[0x52E0]) ^ v361 ^ LODWORD(STACK[0x52C0]) ^ LODWORD(STACK[0x52B8]) ^ LODWORD(STACK[0x52B0]) ^ LODWORD(STACK[0x52F8]) ^ LODWORD(STACK[0x52F0]);
  v366 = v343 ^ v358;
  LODWORD(STACK[0x55A0]) = v366;
  v367 = STACK[0x5300];
  v368 = STACK[0x52A8];
  v369 = STACK[0x5258];
  v370 = STACK[0x4F38];
  v371 = STACK[0x5310];
  v372 = v365 ^ LODWORD(STACK[0x5298]) ^ LODWORD(STACK[0x5300]) ^ v366 ^ LODWORD(STACK[0x52A0]) ^ LODWORD(STACK[0x52C8]) ^ LODWORD(STACK[0x5318]) ^ LODWORD(STACK[0x4F18]) ^ LODWORD(STACK[0x54A0]) ^ LODWORD(STACK[0x52A8]) ^ LODWORD(STACK[0x4F28]) ^ LODWORD(STACK[0x5320]) ^ LODWORD(STACK[0x5258]) ^ LODWORD(STACK[0x4F38]) ^ LODWORD(STACK[0x52D0]) ^ LODWORD(STACK[0x5278]) ^ LODWORD(STACK[0x5310]);
  LODWORD(STACK[0x5550]) = v372;
  v373 = LODWORD(STACK[0x4A78]) ^ 0x866FDC49 ^ LODWORD(STACK[0x4E28]) ^ v344 ^ v252 ^ v372;
  v374 = v373 ^ LODWORD(STACK[0x4EE8]) ^ v355;
  v375 = 563 * (v373 ^ LOBYTE(STACK[0x4EE8]) ^ v355) + 144691;
  LODWORD(STACK[0x5540]) = v375 - 773 * ((5556232 * v375) >> 32);
  v376 = v252 ^ LODWORD(STACK[0x4A58]) ^ LODWORD(STACK[0x4F08]) ^ __ROR4__(*(v298 + 4 * v351), 8) ^ __ROR4__(*(v298 + 4 * v352), 16) ^ __ROR4__(*(v298 + 4 * v353), 24) ^ *(v298 + 4 * v354);
  LODWORD(STACK[0x5530]) = 563 * BYTE1(v376) + 144691 - 773 * ((5556232 * (563 * BYTE1(v376) + 144691)) >> 32);
  v377 = v252 ^ LODWORD(STACK[0x4A50]) ^ LODWORD(STACK[0x4F20]) ^ LODWORD(STACK[0x5398]);
  LODWORD(STACK[0x5330]) = 563 * BYTE2(v377) + 144691 - 773 * ((5556232 * (563 * BYTE2(v377) + 144691)) >> 32);
  LODWORD(STACK[0x5398]) = 563 * v377 + 144691 - 773 * ((5556232 * (563 * v377 + 144691)) >> 32);
  v378 = LODWORD(STACK[0x4F98]) ^ v341;
  v379 = LODWORD(STACK[0x55E0]) ^ v345 ^ LODWORD(STACK[0x5368]);
  v380 = STACK[0x53C8];
  v381 = STACK[0x55F0];
  v382 = LODWORD(STACK[0x53D0]) ^ v356 ^ LODWORD(STACK[0x53D8]) ^ LODWORD(STACK[0x5388]) ^ LODWORD(STACK[0x5600]) ^ LODWORD(STACK[0x5750]) ^ LODWORD(STACK[0x5710]) ^ LODWORD(STACK[0x5370]) ^ LODWORD(STACK[0x5760]) ^ LODWORD(STACK[0x53E0]) ^ LODWORD(STACK[0x5358]) ^ v379 ^ LODWORD(STACK[0x53C8]) ^ LODWORD(STACK[0x5620]) ^ LODWORD(STACK[0x55F0]) ^ LODWORD(STACK[0x5670]) ^ LODWORD(STACK[0x5650]) ^ LODWORD(STACK[0x53A0]);
  v383 = STACK[0x5560];
  v384 = STACK[0x5790];
  v385 = STACK[0x4F68];
  v386 = STACK[0x5630];
  v387 = LODWORD(STACK[0x5790]) ^ LODWORD(STACK[0x5560]) ^ LODWORD(STACK[0x4F68]) ^ LODWORD(STACK[0x5770]) ^ LODWORD(STACK[0x5780]) ^ LODWORD(STACK[0x5348]) ^ LODWORD(STACK[0x53C0]) ^ LODWORD(STACK[0x5730]) ^ LODWORD(STACK[0x5360]) ^ LODWORD(STACK[0x53B8]) ^ LODWORD(STACK[0x5740]) ^ LODWORD(STACK[0x5630]) ^ LODWORD(STACK[0x5390]) ^ LODWORD(STACK[0x5640]) ^ LODWORD(STACK[0x57A0]) ^ LODWORD(STACK[0x5378]) ^ LODWORD(STACK[0x5380]) ^ LODWORD(STACK[0x5660]) ^ LODWORD(STACK[0x5610]) ^ LODWORD(STACK[0x5720]);
  LODWORD(STACK[0x57A0]) = v387;
  v388 = LODWORD(STACK[0x54D0]) ^ LODWORD(STACK[0x4F58]) ^ LODWORD(STACK[0x5260]) ^ v385 ^ LODWORD(STACK[0x5268]) ^ LODWORD(STACK[0x54E0]) ^ v384 ^ v383 ^ LODWORD(STACK[0x5280]) ^ LODWORD(STACK[0x54C0]) ^ LODWORD(STACK[0x5270]) ^ LODWORD(STACK[0x54F0]) ^ LODWORD(STACK[0x5290]) ^ v359 ^ LODWORD(STACK[0x5288]) ^ LODWORD(STACK[0x5510]) ^ LODWORD(STACK[0x5308]) ^ LODWORD(STACK[0x5328]) ^ LODWORD(STACK[0x54B0]) ^ v362 ^ LODWORD(STACK[0x52C0]) ^ LODWORD(STACK[0x52B8]) ^ v363 ^ v386 ^ v364 ^ LODWORD(STACK[0x5298]) ^ v367 ^ LODWORD(STACK[0x52A0]) ^ v380 ^ v381 ^ v368 ^ LODWORD(STACK[0x54A0]) ^ LODWORD(STACK[0x52C8]) ^ LODWORD(STACK[0x5318]) ^ LODWORD(STACK[0x5320]) ^ v369 ^ v370 ^ LODWORD(STACK[0x52D0]) ^ LODWORD(STACK[0x5278]) ^ v371;
  v389 = (1366633626 - (v382 & 8)) ^ v382 & 0xFFFFFFF7;
  v390 = STACK[0x5018];
  v391 = LODWORD(STACK[0x4B98]) ^ 0x51752C9A ^ v390 ^ v252 ^ (v390 >> 6) ^ v387 ^ v389 ^ v388 ^ v378 ^ LODWORD(STACK[0x4F60]) ^ (v378 >> 6) ^ __ROR4__(*(v298 + 4 * LODWORD(STACK[0x5520])), 24) ^ *(v298 + 4 * LODWORD(STACK[0x5500])) ^ __ROR4__(*(v298 + 4 * LODWORD(STACK[0x53B0])), 8) ^ __ROR4__(*(v298 + 4 * LODWORD(STACK[0x5350])), 16);
  v392 = 563 * BYTE1(v377) + 144691 - 773 * ((5556232 * (563 * BYTE1(v377) + 144691)) >> 32);
  v393 = 563 * BYTE1(v374) + 144691 - 773 * ((5556232 * (563 * BYTE1(v374) + 144691)) >> 32);
  v394 = 563 * BYTE2(v374) + 144691 - 773 * ((5556232 * (563 * BYTE2(v374) + 144691)) >> 32);
  v395 = STACK[0x4E88];
  v396 = STACK[0x5250];
  v397 = (LODWORD(STACK[0x5400]) << LODWORD(STACK[0x5250])) ^ (LODWORD(STACK[0x5400]) >> LODWORD(STACK[0x4E88]));
  if (v283)
  {
    v397 = STACK[0x5400];
  }

  v398 = v252 ^ LODWORD(STACK[0x4B90]) ^ v397 ^ *(v298 + 4 * LODWORD(STACK[0x5330])) ^ __ROR4__(*(v298 + 4 * (563 * BYTE1(v391) + 144691 - 773 * ((5556232 * (563 * BYTE1(v391) + 144691)) >> 32))), 8) ^ __ROR4__(*(v298 + 4 * (563 * v376 + 144691 - 773 * ((5556232 * (563 * v376 + 144691)) >> 32))), 16);
  v400 = __ROR4__(*(v298 + 4 * (563 * HIBYTE(v374) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v374) + 144691)) >> 32))), 24);
  v399 = v398 ^ v400;
  v401 = 563 * (v398 ^ v400) + 144691 - 773 * ((5556232 * (563 * (v398 ^ v400) + 144691)) >> 32);
  v402 = v252 ^ LODWORD(STACK[0x4B88]) ^ LODWORD(STACK[0x4ED0]) ^ __ROR4__(*(v298 + 4 * LODWORD(STACK[0x5398])), 16) ^ __ROR4__(*(v298 + 4 * (563 * HIBYTE(v391) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v391) + 144691)) >> 32))), 24) ^ *(v298 + 4 * (563 * BYTE2(v376) + 144691 - 773 * ((5556232 * (563 * BYTE2(v376) + 144691)) >> 32))) ^ __ROR4__(*(v298 + 4 * v393), 8);
  v403 = STACK[0x4E88];
  v404 = (LODWORD(STACK[0x53F8]) >> v395) | (LODWORD(STACK[0x53F8]) << v396);
  if (v283)
  {
    v404 = STACK[0x53F8];
  }

  v405 = LODWORD(STACK[0x4AB0]) ^ LODWORD(STACK[0x4DC8]) ^ v252 ^ v404 ^ __ROR4__(*(v298 + 4 * LODWORD(STACK[0x5540])), 16) ^ __ROR4__(*(v298 + 4 * LODWORD(STACK[0x5530])), 8) ^ *(v298 + 4 * (563 * BYTE2(v391) + 144691 - 773 * ((5556232 * (563 * BYTE2(v391) + 144691)) >> 32))) ^ __ROR4__(*(v298 + 4 * (563 * HIBYTE(v377) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v377) + 144691)) >> 32))), 24);
  v406 = v252 ^ LODWORD(STACK[0x4DF8]) ^ LODWORD(STACK[0x4ED8]) ^ __ROR4__(*(v298 + 4 * (563 * HIBYTE(v376) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v376) + 144691)) >> 32))), 24) ^ __ROR4__(*(v298 + 4 * v392), 8) ^ __ROR4__(*(v298 + 4 * (563 * v391 + 144691 - 773 * ((5556232 * (563 * v391 + 144691)) >> 32))), 16) ^ *(v298 + 4 * v394);
  v407 = 563 * (((v406 >> 7) & 2) + (BYTE1(v406) ^ 0x101));
  v408 = (*(v298 + 4 * (563 * BYTE2(v402) + 144691 - 773 * ((5556232 * (563 * BYTE2(v402) + 144691)) >> 32))) ^ __ROR4__(*(v298 + 4 * v401), 16) ^ __ROR4__(*(v298 + 4 * (563 * HIBYTE(v405) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v405) + 144691)) >> 32))), 24) ^ __ROR4__(*(v298 + 4 * (v407 - 773 * ((5556232 * v407) >> 32))), 8)) + 1132943047 * ((LODWORD(STACK[0x5580]) ^ LODWORD(STACK[0x5410])) - LODWORD(STACK[0x5590]));
  v409 = *(v298 + 4 * (563 * v402 + 144691 - 773 * ((5556232 * (563 * v402 + 144691)) >> 32)));
  v410 = (*(v298 + 4 * (563 * BYTE2(v399) + 144691 - 773 * ((5556232 * (563 * BYTE2(v399) + 144691)) >> 32))) ^ __ROR4__(*(v298 + 4 * (563 * BYTE1(v405) + 144691 - 773 * ((5556232 * (563 * BYTE1(v405) + 144691)) >> 32))), 8) ^ __ROR4__(*(v298 + 4 * (563 * HIBYTE(v406) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v406) + 144691)) >> 32))), 24) ^ (v409 << 16) ^ HIWORD(v409)) + 78407111 * (v390 - v378);
  v411 = (LODWORD(STACK[0x5420]) ^ (LODWORD(STACK[0x5420]) << 8) ^ *(v298 + 4 * (563 * BYTE2(v405) + 144691 - 773 * ((5556232 * (563 * BYTE2(v405) + 144691)) >> 32))) ^ __ROR4__(*(v298 + 4 * (563 * v406 + 144691 - 773 * ((5556232 * (563 * v406 + 144691)) >> 32))), 16) ^ __ROR4__(*(v298 + 4 * (563 * HIBYTE(v399) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v399) + 144691)) >> 32))), 24) ^ __ROR4__(*(v298 + 4 * (563 * BYTE1(v402) + 144691 - 773 * ((5556232 * (563 * BYTE1(v402) + 144691)) >> 32))), 8)) + 179299277 * ((LODWORD(STACK[0x5550]) ^ 0x866FDC49) - LODWORD(STACK[0x56F0]));
  v412 = 563 * BYTE2(v406) + 144691 - 773 * ((5556232 * (563 * BYTE2(v406) + 144691)) >> 32);
  v413 = 563 * v405 + 144691 - 773 * ((5556232 * (563 * v405 + 144691)) >> 32);
  v414 = (LODWORD(STACK[0x53A8]) << v396) + (LODWORD(STACK[0x53A8]) >> v395);
  if (v283)
  {
    v414 = STACK[0x53A8];
  }

  v415 = STACK[0x4DC0];
  v416 = LODWORD(STACK[0x4AA8]) ^ LODWORD(STACK[0x4DC0]) ^ v252 ^ v414 ^ v408;
  LODWORD(STACK[0x5780]) = 563 * BYTE2(v416) + 144691 - 773 * ((5556232 * (563 * BYTE2(v416) + 144691)) >> 32);
  LODWORD(STACK[0x5650]) = 563 * BYTE1(v416) + 144691 - 773 * ((5556232 * (563 * BYTE1(v416) + 144691)) >> 32);
  LODWORD(STACK[0x5660]) = 563 * v416 + 144691 - 773 * ((5556232 * (563 * v416 + 144691)) >> 32);
  v417 = STACK[0x4E18] ^ v415 ^ v252 ^ LODWORD(STACK[0x4F10]) ^ v411;
  LODWORD(STACK[0x5610]) = 563 * BYTE2(v417) + 144691 - 773 * ((5556232 * (563 * BYTE2(v417) + 144691)) >> 32);
  v419 = __ROR4__(LODWORD(STACK[0x4B80]) ^ __ROR4__(LODWORD(STACK[0x4F30]) ^ v252 ^ v410, 28) ^ 0x76D445CC, 4);
  v418 = v419 ^ 0xC76D445C;
  v420 = 563 * ((v419 ^ 0x445C) >> 8) + 144691;
  LODWORD(STACK[0x5600]) = 563 * ((v419 ^ 0xC76D445C) >> 24) + 144691 - 773 * ((5556232 * (563 * ((v419 ^ 0xC76D445C) >> 24) + 144691)) >> 32);
  v421 = LODWORD(STACK[0x4AB8]) ^ 0x51752C9A ^ LODWORD(STACK[0x4DB8]) ^ v252 ^ LODWORD(STACK[0x57A0]) ^ v389 ^ v388 ^ LODWORD(STACK[0x4FA8]) ^ __ROR4__(*(v298 + 4 * (563 * BYTE1(v399) + 144691 - 773 * ((5556232 * (563 * BYTE1(v399) + 144691)) >> 32))), 8) ^ *(v298 + 4 * v412) ^ __ROR4__(*(v298 + 4 * (563 * HIBYTE(v402) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v402) + 144691)) >> 32))), 24);
  v423 = __ROR4__(*(v298 + 4 * v413), 16);
  v422 = v421 ^ v423;
  LODWORD(STACK[0x55F0]) = 563 * ((v421 ^ v423) >> 24) + 144691 - 773 * ((5556232 * (563 * ((v421 ^ v423) >> 24) + 144691)) >> 32);
  v424 = 563 * ((v421 ^ v423) >> 8) + 144691;
  v425 = v424 - 773 * ((5556232 * v424) >> 32);
  LODWORD(STACK[0x5580]) = 563 * BYTE1(v417) + 144691 - 773 * ((5556232 * (563 * BYTE1(v417) + 144691)) >> 32);
  v426 = 563 * v418 + 144691 - 773 * ((5556232 * (563 * v418 + 144691)) >> 32);
  v427 = 563 * HIBYTE(v417) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v417) + 144691)) >> 32);
  v428 = 563 * v422 + 144691 - 773 * ((5556232 * (563 * v422 + 144691)) >> 32);
  v429 = 563 * BYTE2(v418) + 144691 - 773 * ((5556232 * (563 * BYTE2(v418) + 144691)) >> 32);
  v430 = STACK[0x52E8];
  v431 = LODWORD(STACK[0x52E8]) ^ LODWORD(STACK[0x4EE0]) ^ __ROR4__(*(v298 + 4 * (v420 - 773 * ((5556232 * v420) >> 32))), 8) ^ *(v298 + 4 * (563 * BYTE2(v422) + 144691 - 773 * ((5556232 * (563 * BYTE2(v422) + 144691)) >> 32))) ^ __ROR4__(*(v298 + 4 * (563 * v417 + 144691 - 773 * ((5556232 * (563 * v417 + 144691)) >> 32))), 16);
  v432 = __ROR4__(*(v298 + 4 * (563 * HIBYTE(v416) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v416) + 144691)) >> 32))), 24);
  LODWORD(STACK[0x5590]) = v431 ^ v432;
  v433 = v431 ^ v432 ^ v252 ^ LODWORD(STACK[0x4A48]) ^ LODWORD(STACK[0x4FD0]);
  LODWORD(STACK[0x5560]) = 563 * BYTE1(v433) + 144691 - 773 * ((5556232 * (563 * BYTE1(v433) + 144691)) >> 32);
  v434 = v396;
  v435 = v403;
  if (v283)
  {
    v436 = STACK[0x5338];
  }

  else
  {
    v436 = (LODWORD(STACK[0x5338]) << v396) ^ (LODWORD(STACK[0x5338]) >> v403);
  }

  v437 = STACK[0x5570];
  if (STACK[0x5570])
  {
    v438 = STACK[0x4FE8];
  }

  else
  {
    v438 = STACK[0x4FF0];
  }

  v439 = STACK[0x4FF8];
  if (v437)
  {
    v439 = STACK[0x5000];
  }

  v440 = LODWORD(STACK[0x5680]) ^ LODWORD(STACK[0x5480]);
  v441 = STACK[0x55C0];
  if (v437)
  {
    v442 = LODWORD(STACK[0x5680]) ^ LODWORD(STACK[0x5480]);
  }

  else
  {
    v442 = STACK[0x55C0];
  }

  LODWORD(STACK[0x5670]) = v442;
  if (v437)
  {
    v443 = v441;
  }

  else
  {
    v443 = STACK[0x55A0];
  }

  v444 = STACK[0x55B0];
  if (v437)
  {
    v445 = STACK[0x55A0];
  }

  else
  {
    v445 = STACK[0x55B0];
  }

  LODWORD(STACK[0x5680]) = v445;
  if (v437)
  {
    v440 = v444;
  }

  v446 = STACK[0x5238];
  v447 = LODWORD(STACK[0x5070]) ^ LODWORD(STACK[0x5238]);
  LODWORD(STACK[0x5760]) = v447;
  v448 = LODWORD(STACK[0x56E0]) ^ v446;
  LODWORD(STACK[0x5730]) = v448;
  v449 = LODWORD(STACK[0x56D0]) ^ v446;
  LODWORD(STACK[0x5750]) = v449;
  v450 = LODWORD(STACK[0x56C0]) ^ v446;
  LODWORD(STACK[0x5740]) = v450;
  if (v437)
  {
    v451 = v447;
  }

  else
  {
    v451 = v450;
  }

  LODWORD(STACK[0x5710]) = v451;
  if (v437)
  {
    v452 = v448;
  }

  else
  {
    v452 = v449;
  }

  LODWORD(STACK[0x5720]) = v452;
  if ((v437 & 2) != 0)
  {
    v453 = STACK[0x4FB0];
  }

  else
  {
    v453 = STACK[0x4FB8];
  }

  v454 = STACK[0x5010];
  if ((v437 & 2) != 0)
  {
    v454 = STACK[0x5008];
  }

  LODWORD(STACK[0x5630]) = v454;
  if ((v437 & 2) != 0)
  {
    v455 = v439;
  }

  else
  {
    v455 = v438;
  }

  LODWORD(STACK[0x5620]) = v455;
  if ((v437 & 2) != 0)
  {
    v456 = v438;
  }

  else
  {
    v456 = v439;
  }

  LODWORD(STACK[0x5640]) = v456;
  if ((v437 & 2) != 0)
  {
    v457 = v440;
  }

  else
  {
    v457 = v443;
  }

  LODWORD(STACK[0x5790]) = v457;
  if ((v437 & 2) != 0)
  {
    v458 = v443;
  }

  else
  {
    v458 = v440;
  }

  LODWORD(STACK[0x57A0]) = v458;
  v459 = (LODWORD(STACK[0x5440]) ^ v430 ^ *(v298 + 4 * LODWORD(STACK[0x5780])) ^ __ROR4__(*(v298 + 4 * v425), 8) ^ __ROR4__(*(v298 + 4 * v426), 16) ^ __ROR4__(*(v298 + 4 * v427), 24)) + LODWORD(STACK[0x4F40]) - v434;
  LODWORD(STACK[0x56D0]) = v459;
  if ((v437 & 2) != 0)
  {
    v460 = v445;
  }

  else
  {
    v460 = v442;
  }

  LODWORD(STACK[0x5780]) = v460;
  if ((v437 & 2) != 0)
  {
    v461 = v451;
  }

  else
  {
    v461 = v452;
  }

  LODWORD(STACK[0x56E0]) = v461;
  v463 = STACK[0x5408] & 0x18;
  v462 = (STACK[0x5408] & 0x18) == 0;
  LODWORD(STACK[0x5770]) = v453;
  v464 = (v453 << v463) ^ (v453 >> v435);
  if (v462)
  {
    v464 = v453;
  }

  v465 = LODWORD(STACK[0x4B58]) ^ v464;
  LODWORD(STACK[0x55E0]) = v459 ^ v252;
  v466 = v459 ^ v252 ^ v465;
  v467 = (*(v298 + 4 * LODWORD(STACK[0x5610])) ^ __ROR4__(*(v298 + 4 * LODWORD(STACK[0x5650])), 8) ^ __ROR4__(*(v298 + 4 * LODWORD(STACK[0x5600])), 24) ^ __ROR4__(*(v298 + 4 * v428), 16)) + LODWORD(STACK[0x4F50]);
  LODWORD(STACK[0x56C0]) = v467;
  v468 = LODWORD(STACK[0x4B60]) ^ v436;
  LODWORD(STACK[0x55C0]) = v467 ^ v252;
  v469 = v467 ^ v252 ^ v468;
  v470 = 563 * (v467 ^ v252 ^ v468) + 144691 - 773 * ((5556232 * (563 * (v467 ^ v252 ^ v468) + 144691)) >> 32);
  HIDWORD(v471) = *(v298 + 4 * LODWORD(STACK[0x55F0]));
  LODWORD(v471) = HIDWORD(v471);
  v472 = v435;
  v473 = ((v471 >> 24) ^ __ROR4__(*(v298 + 4 * LODWORD(STACK[0x5660])), 16) ^ __ROR4__(*(v298 + 4 * LODWORD(STACK[0x5580])), 8) ^ *(v298 + 4 * v429)) + v435 - LODWORD(STACK[0x4F48]);
  v474 = LODWORD(STACK[0x4A40]) ^ LODWORD(STACK[0x4FC0]);
  LODWORD(STACK[0x55A0]) = v473 ^ v252;
  v475 = v473 ^ v252 ^ v474;
  v476 = 563 * HIBYTE(v466) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v466) + 144691)) >> 32);
  v477 = 563 * v466 + 144691 - 773 * ((5556232 * (563 * v466 + 144691)) >> 32);
  v478 = LODWORD(STACK[0x4DB0]) ^ LODWORD(STACK[0x4A68]) ^ v252 ^ LODWORD(STACK[0x4FE0]) ^ __ROR4__(*(v298 + 4 * LODWORD(STACK[0x5560])), 8) ^ *(v298 + 4 * (563 * BYTE2(v466) + 144691 - 773 * ((5556232 * (563 * BYTE2(v466) + 144691)) >> 32))) ^ __ROR4__(*(v298 + 4 * (563 * HIBYTE(v469) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v469) + 144691)) >> 32))), 24) ^ __ROR4__(*(v298 + 4 * (563 * (v473 ^ v252 ^ v474) + 144691 - 773 * ((5556232 * (563 * (v473 ^ v252 ^ v474) + 144691)) >> 32))), 16);
  v479 = v252 ^ LODWORD(STACK[0x4E08]) ^ LODWORD(STACK[0x5040]) ^ __ROR4__(*(v298 + 4 * (563 * v433 + 144691 - 773 * ((5556232 * (563 * v433 + 144691)) >> 32))), 16) ^ __ROR4__(*(v298 + 4 * (563 * HIBYTE(v475) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v475) + 144691)) >> 32))), 24) ^ *(v298 + 4 * (563 * BYTE2(v469) + 144691 - 773 * ((5556232 * (563 * BYTE2(v469) + 144691)) >> 32))) ^ __ROR4__(*(v298 + 4 * (563 * BYTE1(v466) + 144691 - 773 * ((5556232 * (563 * BYTE1(v466) + 144691)) >> 32))), 8);
  v480 = v472;
  v481 = (LODWORD(STACK[0x53F0]) << v463) + (LODWORD(STACK[0x53F0]) >> v472);
  if (v462)
  {
    v481 = STACK[0x53F0];
  }

  v482 = v252 ^ LODWORD(STACK[0x4B40]) ^ v481 ^ __ROR4__(*(v298 + 4 * v470), 16) ^ __ROR4__(*(v298 + 4 * (563 * BYTE1(v475) + 144691 - 773 * ((5556232 * (563 * BYTE1(v475) + 144691)) >> 32))), 8) ^ __ROR4__(*(v298 + 4 * v476), 24) ^ *(v298 + 4 * (563 * BYTE2(v433) + 144691 - 773 * ((5556232 * (563 * BYTE2(v433) + 144691)) >> 32)));
  v483 = 563 * HIBYTE(v482) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v482) + 144691)) >> 32);
  v484 = v298;
  v485 = v252 ^ LODWORD(STACK[0x4A70]) ^ LODWORD(STACK[0x5030]) ^ __ROR4__(*(v298 + 4 * v477), 16) ^ __ROR4__(*(v298 + 4 * (563 * HIBYTE(v433) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v433) + 144691)) >> 32))), 24) ^ *(v298 + 4 * (563 * BYTE2(v475) + 144691 - 773 * ((5556232 * (563 * BYTE2(v475) + 144691)) >> 32))) ^ __ROR4__(*(v298 + 4 * (563 * BYTE1(v469) + 144691 - 773 * ((5556232 * (563 * BYTE1(v469) + 144691)) >> 32))), 8);
  v486 = 563 * HIBYTE(v485) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v485) + 144691)) >> 32);
  v487 = 563 * v485 + 144691 - 773 * ((5556232 * (563 * v485 + 144691)) >> 32);
  v488 = 563 * BYTE2(v485) + 144691 - 773 * ((5556232 * (563 * BYTE2(v485) + 144691)) >> 32);
  v489 = 563 * v482 + 144691 - 773 * ((5556232 * (563 * v482 + 144691)) >> 32);
  v490 = 563 * BYTE1(v485) + 144691 - 773 * ((5556232 * (563 * BYTE1(v485) + 144691)) >> 32);
  v491 = 563 * BYTE1(v482) + 144691 - 773 * ((5556232 * (563 * BYTE1(v482) + 144691)) >> 32);
  v492 = STACK[0x5590];
  v493 = (((v473 ^ 0x3282CB20 ^ LODWORD(STACK[0x5590])) - 464097702) ^ LODWORD(STACK[0x56C0])) + 303909923;
  v494 = 563 * BYTE2(v482) + 144691 - 773 * ((5556232 * (563 * BYTE2(v482) + 144691)) >> 32);
  v495 = v493 ^ LODWORD(STACK[0x56D0]);
  v496 = LODWORD(STACK[0x5020]) ^ v252 ^ __ROR4__(*(v484 + 4 * (563 * BYTE1(v479) + 144691 - 773 * ((5556232 * (563 * BYTE1(v479) + 144691)) >> 32))), 8) ^ __ROR4__(*(v484 + 4 * v483), 24) ^ *(v484 + 4 * v488);
  v497 = LODWORD(STACK[0x5060]) ^ v252 ^ __ROR4__(*(v484 + 4 * v490), 8) ^ *(v484 + 4 * v494);
  v498 = LODWORD(STACK[0x5038]) ^ v252 ^ *(v484 + 4 * (563 * BYTE2(v479) + 144691 - 773 * ((5556232 * (563 * BYTE2(v479) + 144691)) >> 32))) ^ __ROR4__(*(v484 + 4 * v486), 24) ^ __ROR4__(*(v484 + 4 * v489), 16) ^ __ROR4__(*(v484 + 4 * (563 * BYTE1(v478) + 144691 - 773 * ((5556232 * (563 * BYTE1(v478) + 144691)) >> 32))), 8);
  v500 = __ROR4__(*(v484 + 4 * (563 * v478 + 144691 - 773 * ((5556232 * (563 * v478 + 144691)) >> 32))), 16);
  v499 = v496 ^ v500;
  v501 = 563 * (v496 ^ v500) + 144691 - 773 * ((5556232 * (563 * (v496 ^ v500) + 144691)) >> 32);
  v502 = v497 ^ __ROR4__(*(v484 + 4 * (563 * HIBYTE(v478) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v478) + 144691)) >> 32))), 24) ^ __ROR4__(*(v484 + 4 * (563 * v479 + 144691 - 773 * ((5556232 * (563 * v479 + 144691)) >> 32))), 16);
  v503 = LODWORD(STACK[0x5028]) ^ v252 ^ *(v484 + 4 * (563 * BYTE2(v478) + 144691 - 773 * ((5556232 * (563 * BYTE2(v478) + 144691)) >> 32))) ^ __ROR4__(*(v484 + 4 * v487), 16) ^ __ROR4__(*(v484 + 4 * (563 * HIBYTE(v479) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v479) + 144691)) >> 32))), 24) ^ __ROR4__(*(v484 + 4 * v491), 8);
  v495 -= 9698952;
  LODWORD(STACK[0x56D0]) = v495;
  v504 = v495 ^ LODWORD(STACK[0x56E0]);
  v505 = __ROR4__(v504, v480);
  if (!v462)
  {
    v504 = v505;
  }

  LODWORD(STACK[0x56E0]) = v504;
  v506 = v252 ^ LODWORD(STACK[0x4B30]) ^ LODWORD(STACK[0x5068]) ^ *(v484 + 4 * (563 * BYTE2(v498) + 144691 - 773 * ((5556232 * (563 * BYTE2(v498) + 144691)) >> 32))) ^ __ROR4__(*(v484 + 4 * (563 * v502 + 144691 - 773 * ((5556232 * (563 * v502 + 144691)) >> 32))), 16) ^ __ROR4__(*(v484 + 4 * (563 * HIBYTE(v499) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v499) + 144691)) >> 32))), 24) ^ __ROR4__(*(v484 + 4 * (563 * BYTE1(v503) + 144691 - 773 * ((5556232 * (563 * BYTE1(v503) + 144691)) >> 32))), 8);
  v507 = v252 ^ LODWORD(STACK[0x4B28]) ^ LODWORD(STACK[0x5050]) ^ __ROR4__(*(v484 + 4 * (563 * HIBYTE(v502) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v502) + 144691)) >> 32))), 24) ^ *(v484 + 4 * (563 * BYTE2(v499) + 144691 - 773 * ((5556232 * (563 * BYTE2(v499) + 144691)) >> 32))) ^ __ROR4__(*(v484 + 4 * (563 * BYTE1(v498) + 144691 - 773 * ((5556232 * (563 * BYTE1(v498) + 144691)) >> 32))), 8) ^ __ROR4__(*(v484 + 4 * (563 * v503 + 144691 - 773 * ((5556232 * (563 * v503 + 144691)) >> 32))), 16);
  v508 = LODWORD(STACK[0x4A98]) ^ LODWORD(STACK[0x4E20]) ^ v252 ^ LODWORD(STACK[0x4FC8]) ^ __ROR4__(*(v484 + 4 * (563 * v498 + 144691 - 773 * ((5556232 * (563 * v498 + 144691)) >> 32))), 16) ^ __ROR4__(*(v484 + 4 * (563 * HIBYTE(v503) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v503) + 144691)) >> 32))), 24) ^ *(v484 + 4 * (563 * BYTE2(v502) + 144691 - 773 * ((5556232 * (563 * BYTE2(v502) + 144691)) >> 32))) ^ __ROR4__(*(v484 + 4 * (563 * BYTE1(v499) + 144691 - 773 * ((5556232 * (563 * BYTE1(v499) + 144691)) >> 32))), 8);
  v509 = v252 ^ LODWORD(STACK[0x4A38]) ^ LODWORD(STACK[0x5058]) ^ __ROR4__(*(v484 + 4 * v501), 16) ^ *(v484 + 4 * (563 * BYTE2(v503) + 144691 - 773 * ((5556232 * (563 * BYTE2(v503) + 144691)) >> 32))) ^ __ROR4__(*(v484 + 4 * (563 * BYTE1(v502) + 144691 - 773 * ((5556232 * (563 * BYTE1(v502) + 144691)) >> 32))), 8) ^ __ROR4__(*(v484 + 4 * (563 * HIBYTE(v498) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v498) + 144691)) >> 32))), 24);
  v510 = STACK[0x5408];
  v511 = __ROR4__(STACK[0x57A0], v480);
  if ((STACK[0x5408] & 0x18) == 0)
  {
    v511 = STACK[0x57A0];
  }

  v512 = v252 ^ LODWORD(STACK[0x4A30]) ^ v511 ^ *(v484 + 4 * (563 * BYTE1(v509) - 773 * ((5556232 * (563 * BYTE1(v509))) >> 32))) ^ __ROR4__(*(v484 + 4 * (563 * BYTE2(v506) - 773 * ((5556232 * (563 * BYTE2(v506))) >> 32))), 24) ^ __ROR4__(*(v484 + 4 * (563 * v508 - 773 * ((5556232 * (563 * v508)) >> 32))), 8) ^ __ROR4__(*(v484 + 4 * (563 * HIBYTE(v507) - 773 * ((5556232 * (563 * HIBYTE(v507))) >> 32))), 16);
  v513 = __ROR4__(v512, STACK[0x5408] & 0x18);
  if ((v510 & 0x18) != 0)
  {
    v512 = v513;
  }

  LODWORD(STACK[0x56C0]) = v512;
  v514 = BYTE2(v507);
  LODWORD(STACK[0x55F0]) = v507;
  v515 = 563 * BYTE1(v507) - 773 * ((5556232 * (563 * BYTE1(v507))) >> 32);
  LODWORD(STACK[0x55B0]) = v506;
  v516 = v510 & 0x18;
  v517 = (LODWORD(STACK[0x5790]) >> v480) ^ (LODWORD(STACK[0x5790]) << (v510 & 0x18));
  if ((v510 & 0x18) == 0)
  {
    v517 = STACK[0x5790];
  }

  v518 = v252 ^ LODWORD(STACK[0x4B78]) ^ v517 ^ *(v484 + 4 * v515) ^ __ROR4__(*(v484 + 4 * (563 * HIBYTE(v509) - 773 * ((5556232 * (563 * HIBYTE(v509))) >> 32))), 16) ^ __ROR4__(*(v484 + 4 * (563 * v506 - 773 * ((5556232 * (563 * v506)) >> 32))), 8) ^ __ROR4__(*(v484 + 4 * (563 * BYTE2(v508) - 773 * ((5556232 * (563 * BYTE2(v508))) >> 32))), 24);
  LODWORD(STACK[0x5650]) = v516;
  if ((v510 & 0x18) != 0)
  {
    v518 = (v518 >> v516) + (v518 << v480);
  }

  LODWORD(STACK[0x5660]) = v518;
  v519 = STACK[0x5450] & 0x18;
  v520 = STACK[0x5250];
  v521 = (LODWORD(STACK[0x5780]) << v520) ^ (LODWORD(STACK[0x5780]) >> v519);
  v522 = (LODWORD(STACK[0x5620]) >> v519) | (LODWORD(STACK[0x5620]) << v520);
  if ((STACK[0x5450] & 0x18) != 0)
  {
    v523 = (LODWORD(STACK[0x5640]) << v516) ^ (LODWORD(STACK[0x5640]) >> v519);
  }

  else
  {
    v522 = STACK[0x5620];
    v523 = STACK[0x5640];
  }

  if ((STACK[0x5450] & 0x18) == 0)
  {
    v521 = STACK[0x5780];
  }

  LODWORD(STACK[0x5640]) = v521;
  v524 = (LODWORD(STACK[0x5630]) >> v519) + (LODWORD(STACK[0x5630]) << (STACK[0x57B0] & 0x18));
  if ((STACK[0x57B0] & 0x18) == 0)
  {
    v524 = STACK[0x5630];
  }

  LODWORD(STACK[0x5630]) = 563 * v514 - 773 * ((5556232 * (563 * v514)) >> 32);
  LODWORD(STACK[0x5620]) = 563 * v509 - 773 * ((5556232 * (563 * v509)) >> 32);
  LODWORD(STACK[0x5610]) = 563 * BYTE1(v506) - 773 * ((5556232 * (563 * BYTE1(v506))) >> 32);
  LODWORD(STACK[0x5600]) = 563 * HIBYTE(v508) - 773 * ((5556232 * (563 * HIBYTE(v508))) >> 32);
  v525 = LODWORD(STACK[0x55E0]) ^ LODWORD(STACK[0x4B50]) ^ v522;
  v526 = LODWORD(STACK[0x55A0]) ^ LODWORD(STACK[0x4B48]) ^ v523;
  v527 = LODWORD(STACK[0x55C0]) ^ LODWORD(STACK[0x4A28]) ^ LODWORD(STACK[0x5090]);
  v528 = 563 * BYTE1(v526) + 144691 - 773 * ((5556232 * (563 * BYTE1(v526) + 144691)) >> 32);
  v529 = LODWORD(STACK[0x4DA8]) ^ STACK[0x4AA0] ^ v252 ^ v524 ^ v492;
  v530 = 563 * HIBYTE(v526) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v526) + 144691)) >> 32);
  v531 = 563 * BYTE1(v527) + 144691 - 773 * ((5556232 * (563 * BYTE1(v527) + 144691)) >> 32);
  v532 = 563 * v527 + 144691 - 773 * ((5556232 * (563 * v527 + 144691)) >> 32);
  v533 = 563 * BYTE2(v526) + 144691 - 773 * ((5556232 * (563 * BYTE2(v526) + 144691)) >> 32);
  v534 = 563 * v526 + 144691 - 773 * ((5556232 * (563 * v526 + 144691)) >> 32);
  v535 = 563 * v525 + 144691 - 773 * ((5556232 * (563 * v525 + 144691)) >> 32);
  v536 = 563 * HIBYTE(v525) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v525) + 144691)) >> 32);
  v537 = 563 * BYTE1(v525) + 144691 - 773 * ((5556232 * (563 * BYTE1(v525) + 144691)) >> 32);
  v538 = v252 ^ LODWORD(STACK[0x4A08]) ^ LODWORD(STACK[0x5048]) ^ *(v484 + 4 * (563 * BYTE2(v525) + 144691 - 773 * ((5556232 * (563 * BYTE2(v525) + 144691)) >> 32))) ^ __ROR4__(*(v484 + 4 * (563 * BYTE1(v529) + 144691 - 773 * ((5556232 * (563 * BYTE1(v529) + 144691)) >> 32))), 8) ^ __ROR4__(*(v484 + 4 * v534), 16) ^ __ROR4__(*(v484 + 4 * (563 * HIBYTE(v527) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v527) + 144691)) >> 32))), 24);
  v539 = v252 ^ LODWORD(STACK[0x4B38]) ^ LODWORD(STACK[0x50B0]) ^ __ROR4__(*(v484 + 4 * v530), 24) ^ __ROR4__(*(v484 + 4 * (563 * v529 + 144691 - 773 * ((5556232 * (563 * v529 + 144691)) >> 32))), 16) ^ *(v484 + 4 * (563 * BYTE2(v527) + 144691 - 773 * ((5556232 * (563 * BYTE2(v527) + 144691)) >> 32))) ^ __ROR4__(*(v484 + 4 * v537), 8);
  v540 = v252 ^ LODWORD(STACK[0x4A00]) ^ LODWORD(STACK[0x5078]) ^ __ROR4__(*(v484 + 4 * v528), 8) ^ *(v484 + 4 * (563 * BYTE2(v529) + 144691 - 773 * ((5556232 * (563 * BYTE2(v529) + 144691)) >> 32))) ^ __ROR4__(*(v484 + 4 * v532), 16) ^ __ROR4__(*(v484 + 4 * v536), 24);
  v541 = STACK[0x4AC8] ^ LODWORD(STACK[0x4A60]) ^ v252 ^ LODWORD(STACK[0x50A0]) ^ __ROR4__(*(v484 + 4 * v531), 8) ^ *(v484 + 4 * v533) ^ __ROR4__(*(v484 + 4 * (563 * HIBYTE(v529) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v529) + 144691)) >> 32))), 24);
  v543 = __ROR4__(*(v484 + 4 * v535), 16);
  v542 = v541 ^ v543;
  v544 = 563 * BYTE1(v542) + 144691 - 773 * ((5556232 * (563 * BYTE1(v542) + 144691)) >> 32);
  v545 = 563 * HIBYTE(v540) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v540) + 144691)) >> 32);
  v546 = 563 * BYTE2(v542) + 144691 - 773 * ((5556232 * (563 * BYTE2(v542) + 144691)) >> 32);
  v547 = LODWORD(STACK[0x50A8]) ^ v252 ^ *(v484 + 4 * (563 * BYTE2(v538) + 144691 - 773 * ((5556232 * (563 * BYTE2(v538) + 144691)) >> 32))) ^ __ROR4__(*(v484 + 4 * (563 * (v541 ^ v543) + 144691 - 773 * ((5556232 * (563 * (v541 ^ v543) + 144691)) >> 32))), 16) ^ __ROR4__(*(v484 + 4 * (563 * BYTE1(v540) + 144691 - 773 * ((5556232 * (563 * BYTE1(v540) + 144691)) >> 32))), 8) ^ __ROR4__(*(v484 + 4 * (563 * HIBYTE(v539) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v539) + 144691)) >> 32))), 24);
  v548 = LODWORD(STACK[0x5080]) ^ v252 ^ __ROR4__(*(v484 + 4 * (563 * ((v541 ^ v543) >> 24) + 144691 - 773 * ((5556232 * (563 * ((v541 ^ v543) >> 24) + 144691)) >> 32))), 24) ^ *(v484 + 4 * (563 * BYTE2(v539) + 144691 - 773 * ((5556232 * (563 * BYTE2(v539) + 144691)) >> 32))) ^ __ROR4__(*(v484 + 4 * (563 * v540 + 144691 - 773 * ((5556232 * (563 * v540 + 144691)) >> 32))), 16) ^ __ROR4__(*(v484 + 4 * (563 * BYTE1(v538) + 144691 - 773 * ((5556232 * (563 * BYTE1(v538) + 144691)) >> 32))), 8);
  v549 = LODWORD(STACK[0x5088]) ^ v252 ^ __ROR4__(*(v484 + 4 * (563 * HIBYTE(v538) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v538) + 144691)) >> 32))), 24) ^ *(v484 + 4 * (563 * BYTE2(v540) + 144691 - 773 * ((5556232 * (563 * BYTE2(v540) + 144691)) >> 32))) ^ __ROR4__(*(v484 + 4 * v544), 8) ^ __ROR4__(*(v484 + 4 * (563 * v539 + 144691 - 773 * ((5556232 * (563 * v539 + 144691)) >> 32))), 16);
  v550 = v252;
  v551 = LODWORD(STACK[0x5100]) ^ v252 ^ __ROR4__(*(v484 + 4 * (563 * BYTE1(v539) + 144691 - 773 * ((5556232 * (563 * BYTE1(v539) + 144691)) >> 32))), 8) ^ __ROR4__(*(v484 + 4 * (563 * v538 + 144691 - 773 * ((5556232 * (563 * v538 + 144691)) >> 32))), 16);
  v552 = __ROR4__(*(v484 + 4 * v545), 24);
  v553 = v551 ^ v552 ^ *(v484 + 4 * v546);
  v554 = 563 * (v551 ^ v552 ^ *(v484 + 4 * v546)) + 144691;
  v555 = 563 * v548 + 144691 - 773 * ((5556232 * (563 * v548 + 144691)) >> 32);
  v556 = 563 * (((v549 >> 23) & 2) + (HIBYTE(v549) ^ 0x101));
  v557 = LODWORD(STACK[0x4DD0]) ^ STACK[0x4DE8] ^ v252 ^ LODWORD(STACK[0x5110]) ^ __ROR4__(*(v484 + 4 * (v554 - 773 * ((5556232 * v554) >> 32))), 16) ^ __ROR4__(*(v484 + 4 * (563 * BYTE1(v549) + 144691 - 773 * ((5556232 * (563 * BYTE1(v549) + 144691)) >> 32))), 8) ^ *(v484 + 4 * (563 * BYTE2(v547) + 144691 - 773 * ((5556232 * (563 * BYTE2(v547) + 144691)) >> 32))) ^ __ROR4__(*(v484 + 4 * (563 * HIBYTE(v548) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v548) + 144691)) >> 32))), 24);
  v558 = v252 ^ LODWORD(STACK[0x4B20]) ^ LODWORD(STACK[0x5118]) ^ __ROR4__(*(v484 + 4 * (563 * v547 + 144691 - 773 * ((5556232 * (563 * v547 + 144691)) >> 32))), 16) ^ __ROR4__(*(v484 + 4 * (v556 - 773 * ((5556232 * v556) >> 32))), 24) ^ __ROR4__(*(v484 + 4 * (563 * BYTE1(v548) + 144691 - 773 * ((5556232 * (563 * BYTE1(v548) + 144691)) >> 32))), 8) ^ *(v484 + 4 * (563 * BYTE2(v553) + 144691 - 773 * ((5556232 * (563 * BYTE2(v553) + 144691)) >> 32)));
  v559 = v252 ^ LODWORD(STACK[0x4A20]) ^ LODWORD(STACK[0x50B8]) ^ __ROR4__(*(v484 + 4 * (563 * HIBYTE(v553) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v553) + 144691)) >> 32))), 24) ^ __ROR4__(*(v484 + 4 * (563 * BYTE1(v547) + 144691 - 773 * ((5556232 * (563 * BYTE1(v547) + 144691)) >> 32))), 8) ^ __ROR4__(*(v484 + 4 * (563 * v549 + 144691 - 773 * ((5556232 * (563 * v549 + 144691)) >> 32))), 16) ^ *(v484 + 4 * (563 * BYTE2(v548) + 144691 - 773 * ((5556232 * (563 * BYTE2(v548) + 144691)) >> 32)));
  v560 = v252 ^ LODWORD(STACK[0x4B18]) ^ LODWORD(STACK[0x50C0]) ^ __ROR4__(*(v484 + 4 * (563 * BYTE1(v553) + 144691 - 773 * ((5556232 * (563 * BYTE1(v553) + 144691)) >> 32))), 8) ^ *(v484 + 4 * (563 * BYTE2(v549) + 144691 - 773 * ((5556232 * (563 * BYTE2(v549) + 144691)) >> 32))) ^ HIWORD(*(v484 + 4 * v555)) ^ (*(v484 + 4 * v555) << 16) ^ __ROR4__(*(v484 + 4 * (563 * HIBYTE(v547) + 144691 - 773 * ((5556232 * (563 * HIBYTE(v547) + 144691)) >> 32))), 24);
  LODWORD(STACK[0x55E0]) = 563 * BYTE1(v560) - 773 * ((5556232 * (563 * BYTE1(v560))) >> 32);
  LODWORD(STACK[0x55C0]) = 563 * HIBYTE(v559) - 773 * ((5556232 * (563 * HIBYTE(v559))) >> 32);
  LODWORD(STACK[0x55A0]) = 563 * BYTE2(v557) - 773 * ((5556232 * (563 * BYTE2(v557))) >> 32);
  LODWORD(STACK[0x5590]) = 563 * v558 - 773 * ((5556232 * (563 * v558)) >> 32);
  LODWORD(STACK[0x5580]) = 563 * HIBYTE(v558) - 773 * ((5556232 * (563 * HIBYTE(v558))) >> 32);
  v561 = 563 * BYTE1(v557) - 773 * ((5556232 * (563 * BYTE1(v557))) >> 32);
  v562 = 563 * BYTE2(v559) - 773 * ((5556232 * (563 * BYTE2(v559))) >> 32);
  v563 = 563 * BYTE2(v558) - 773 * ((5556232 * (563 * BYTE2(v558))) >> 32);
  v564 = 563 * HIBYTE(v560) - 773 * ((5556232 * (563 * HIBYTE(v560))) >> 32);
  v565 = 563 * v557 - 773 * ((5556232 * (563 * v557)) >> 32);
  v566 = 563 * BYTE1(v559) - 773 * ((5556232 * (563 * BYTE1(v559))) >> 32);
  LODWORD(STACK[0x5560]) = 563 * BYTE2(v560) - 773 * ((5556232 * (563 * BYTE2(v560))) >> 32);
  v567 = 563 * v559 - 773 * ((5556232 * (563 * v559)) >> 32);
  v568 = 563 * HIBYTE(v557) - 773 * ((5556232 * (563 * HIBYTE(v557))) >> 32);
  v569 = 563 * BYTE1(v558) - 773 * ((5556232 * (563 * BYTE1(v558))) >> 32);
  v570 = 563 * BYTE1(v508) - 773 * ((5556232 * (563 * BYTE1(v508))) >> 32);
  v571 = v252 ^ LODWORD(STACK[0x4B70]) ^ LODWORD(STACK[0x5640]) ^ __ROR4__(*(v484 + 4 * LODWORD(STACK[0x5630])), 24) ^ __ROR4__(*(v484 + 4 * LODWORD(STACK[0x5620])), 8) ^ *(v484 + 4 * LODWORD(STACK[0x5610])) ^ __ROR4__(*(v484 + 4 * LODWORD(STACK[0x5600])), 16);
  v572 = STACK[0x5570];
  if (STACK[0x5570])
  {
    v573 = STACK[0x5740];
  }

  else
  {
    v573 = STACK[0x5730];
  }

  if (v572)
  {
    v574 = STACK[0x5750];
  }

  else
  {
    v574 = STACK[0x5760];
  }

  if ((v572 & 2) != 0)
  {
    v575 = STACK[0x5670];
  }

  else
  {
    v575 = STACK[0x5680];
  }

  if ((v572 & 2) != 0)
  {
    v576 = v574;
  }

  else
  {
    v576 = v573;
  }

  if ((v572 & 2) != 0)
  {
    v577 = v573;
  }

  else
  {
    v577 = v574;
  }

  if ((v572 & 2) != 0)
  {
    v578 = STACK[0x5720];
  }

  else
  {
    v578 = STACK[0x5710];
  }

  v579 = STACK[0x57B0] & 0x18;
  v580 = (v571 << v519) ^ (v571 >> v579);
  if ((STACK[0x57B0] & 0x18) != 0)
  {
    v581 = (v575 << (STACK[0x57B0] & 0x18)) ^ (v575 >> v519);
  }

  else
  {
    v580 = v571;
    v581 = v575;
  }

  v582 = LODWORD(STACK[0x56D0]) ^ v576;
  v583 = STACK[0x5450];
  if ((STACK[0x5450] & 0x18) != 0)
  {
    v582 = (v582 << v579) | (v582 >> (STACK[0x5450] & 0x18));
  }

  v584 = v550 ^ LODWORD(STACK[0x4AF8]) ^ v582 ^ *(v484 + 4 * LODWORD(STACK[0x55E0])) ^ __ROR4__(*(v484 + 4 * LODWORD(STACK[0x55C0])), 16) ^ __ROR4__(*(v484 + 4 * LODWORD(STACK[0x55A0])), 24) ^ __ROR4__(*(v484 + 4 * LODWORD(STACK[0x5590])), 8);
  v585 = (v584 << (STACK[0x5450] & 0x18)) | (v584 >> v579);
  if ((v583 & 0x18) == 0)
  {
    v585 = v584;
  }

  v586 = v550 ^ LODWORD(STACK[0x4B00]) ^ LODWORD(STACK[0x56E0]) ^ __ROR4__(*(v484 + 4 * LODWORD(STACK[0x5580])), 16) ^ *(v484 + 4 * v561) ^ __ROR4__(*(v484 + 4 * (563 * v560 - 773 * ((5556232 * (563 * v560)) >> 32))), 8) ^ __ROR4__(*(v484 + 4 * v562), 24);
  v587 = STACK[0x5650];
  if ((v583 & 0x18) != 0)
  {
    v586 = (v586 >> LODWORD(STACK[0x5650])) + (v586 << (v583 & 0x18));
  }

  v588 = STACK[0x56D0];
  v589 = LODWORD(STACK[0x56D0]) ^ v577;
  if ((v583 & 0x18) != 0)
  {
    v589 = (v589 << v579) ^ (v589 >> (v583 & 0x18));
  }

  v590 = LODWORD(STACK[0x4B08]) ^ v550 ^ v589 ^ __ROR4__(*(v484 + 4 * v563), 24) ^ __ROR4__(*(v484 + 4 * v564), 16) ^ __ROR4__(*(v484 + 4 * v565), 8) ^ *(v484 + 4 * v566);
  if ((v583 & 0x18) != 0)
  {
    v590 = (v590 << (v583 & 0x18)) ^ (v590 >> v579);
  }

  v591 = v588 ^ v578;
  if ((v583 & 0x18) != 0)
  {
    v591 = (v591 >> (v583 & 0x18)) ^ (v591 << v587);
  }

  v592 = LODWORD(STACK[0x4B10]) ^ v550 ^ v591 ^ __ROR4__(*(v484 + 4 * LODWORD(STACK[0x5560])), 24) ^ __ROR4__(*(v484 + 4 * v567), 8) ^ __ROR4__(*(v484 + 4 * v568), 16) ^ *(v484 + 4 * v569);
  v593 = __ROR4__(v592, v587);
  if ((v583 & 0x18) != 0)
  {
    v592 = v593;
  }

  v594 = v550 ^ LODWORD(STACK[0x4B68]) ^ v581 ^ *(v484 + 4 * v570) ^ __ROR4__(*(v484 + 4 * (563 * BYTE2(v509) - 773 * ((5556232 * (563 * BYTE2(v509))) >> 32))), 24) ^ __ROR4__(*(v484 + 4 * (563 * HIBYTE(LODWORD(STACK[0x55B0])) - 773 * ((5556232 * (563 * HIBYTE(LODWORD(STACK[0x55B0])))) >> 32))), 16) ^ __ROR4__(*(v484 + 4 * (563 * LODWORD(STACK[0x55F0]) - 773 * ((5556232 * (563 * LODWORD(STACK[0x55F0]))) >> 32))), 8);
  v595 = (v594 >> v579) | (v594 << (v583 & 0x18));
  if ((STACK[0x5450] & 0x18) != 0)
  {
    v594 = v595;
  }

  v596 = LODWORD(STACK[0x5440]) - 2 * LODWORD(STACK[0x5460]);
  v597 = STACK[0x5660];
  if (STACK[0x5440])
  {
    v598 = STACK[0x5660];
  }

  else
  {
    v598 = v580;
  }

  if (STACK[0x5440])
  {
    v599 = v580;
  }

  else
  {
    v599 = STACK[0x56C0];
  }

  if (STACK[0x5440])
  {
    v597 = v594;
    v594 = STACK[0x56C0];
    v600 = v585;
  }

  else
  {
    v600 = v592;
  }

  if (STACK[0x5440])
  {
    v601 = v586;
  }

  else
  {
    v601 = v585;
  }

  if (STACK[0x5440])
  {
    v586 = v590;
    v590 = v592;
  }

  v602 = (v596 & 2) == 0;
  if ((v596 & 2) != 0)
  {
    v603 = v598;
  }

  else
  {
    v603 = v594;
  }

  if ((v596 & 2) != 0)
  {
    v604 = v590;
  }

  else
  {
    v594 = v598;
    v604 = v601;
  }

  if ((v596 & 2) != 0)
  {
    v590 = v601;
  }

  v605 = STACK[0x4AD8];
  v606 = v604 ^ LODWORD(STACK[0x4AD8]) ^ v588 ^ v594 ^ v603;
  v607 = v588 ^ LODWORD(STACK[0x4AF0]);
  if ((v596 & 2) != 0)
  {
    v608 = v597;
  }

  else
  {
    v608 = v599;
  }

  v609 = v608 + 1325126351 * ((v606 ^ v590) - v607);
  if ((v596 & 2) != 0)
  {
    v610 = v600;
  }

  else
  {
    v599 = v597;
    v610 = v586;
  }

  if (v602)
  {
    v611 = v600;
  }

  else
  {
    v611 = v586;
  }

  v612 = v610 ^ v588;
  v613 = STACK[0x4AE0];
  v614 = (1633501163 * v612) ^ v599 ^ (1633501163 * (v609 ^ LODWORD(STACK[0x4AE0])));
  v615 = v614 ^ v606;
  v616 = v611 ^ LODWORD(STACK[0x4AE8]);
  v617 = v616 ^ v603;
  v618 = v590 ^ v588;
  v619 = v612 ^ LODWORD(STACK[0x4AE0]) ^ (-75477329 * v607) ^ v617 ^ v609 ^ v614 ^ (-75477329 * (v618 ^ v616 ^ v615));
  v620 = v615 ^ v617 ^ v619;
  v621 = v609 + 184391401 * ((v620 ^ LODWORD(STACK[0x4AF0])) - v618);
  STACK[0x57B0] = STACK[0x5208] ^ 0xF4C29045 ^ STACK[0x5200] ^ STACK[0x5470] ^ STACK[0x51F8];
  v622 = v619 ^ v588;
  v623 = 178582375 * (v609 ^ v613);
  v624 = LODWORD(STACK[0x5128]) ^ LODWORD(STACK[0x5130]) ^ LODWORD(STACK[0x5120]) ^ LODWORD(STACK[0x5158]) ^ LODWORD(STACK[0x50D8]) ^ LODWORD(STACK[0x5108]) ^ LODWORD(STACK[0x50C8]) ^ LODWORD(STACK[0x5150]) ^ LODWORD(STACK[0x53F8]) ^ LODWORD(STACK[0x50E0]) ^ LODWORD(STACK[0x50E8]) ^ LODWORD(STACK[0x5400]) ^ LODWORD(STACK[0x5140]) ^ LODWORD(STACK[0x51D8]) ^ LODWORD(STACK[0x50F0]) ^ LODWORD(STACK[0x5198]) ^ LODWORD(STACK[0x50F8]) ^ LODWORD(STACK[0x53A8]) ^ LODWORD(STACK[0x5168]) ^ LODWORD(STACK[0x5170]) ^ LODWORD(STACK[0x5098]) ^ LODWORD(STACK[0x5160]) ^ LODWORD(STACK[0x5178]) ^ LODWORD(STACK[0x5188]) ^ LODWORD(STACK[0x50D0]) ^ LODWORD(STACK[0x5190]) ^ LODWORD(STACK[0x5780]) ^ LODWORD(STACK[0x5338]) ^ LODWORD(STACK[0x5770]) ^ LODWORD(STACK[0x51A0]) ^ LODWORD(STACK[0x5430]) ^ LODWORD(STACK[0x51C8]) ^ LODWORD(STACK[0x5138]) ^ LODWORD(STACK[0x5790]) ^ LODWORD(STACK[0x57A0]) ^ v575 ^ LODWORD(STACK[0x5148]) ^ LODWORD(STACK[0x51C0]) ^ LODWORD(STACK[0x51A8]) ^ LODWORD(STACK[0x51B0]) ^ LODWORD(STACK[0x5180]) ^ LODWORD(STACK[0x51D0]) ^ LODWORD(STACK[0x53F0]) ^ LODWORD(STACK[0x51E0]);
  v625 = v624 ^ LODWORD(STACK[0x5410]) ^ 0x866FDC49;
  v626 = -1375939811 - 1437225675 * v625;
  v627 = (v626 ^ 0x4B4B0CE3) & (2 * (v626 & 0x52032CE3)) ^ v626 & 0x52032CE3;
  v628 = (2 * (v626 ^ 0xCB4F4CA5)) & 0x994C6046 ^ 0x89442042 ^ ((2 * (v626 ^ 0xCB4F4CA5)) ^ 0x3298C08C) & (v626 ^ 0xCB4F4CA5);
  v629 = (4 * v627) & v628 ^ v627 ^ ((4 * v627) & 0x980C6004 | 0x1000000);
  v630 = (4 * v628) & 0x994C6044 ^ 0x984C6046 ^ ((4 * v628) ^ 0x65318118) & v628;
  v631 = (16 * v629) & 0x994C6040 ^ v629 ^ ((16 * v629) ^ 0x10000000) & v630;
  v632 = ((16 * v630) ^ 0x94C60460) & v630 ^ (16 * v630) & 0x994C6040;
  v633 = v632 ^ 0x9086006;
  v634 = v631 ^ 0x884C6046 ^ (v632 ^ 0x90440006) & (v631 << 8);
  v635 = (v634 << 16) & 0x194C0000 ^ v634 ^ ((v634 << 16) ^ 0x60460000) & ((v633 << 8) & 0x994C0000 ^ 0x110C0000 ^ ((v633 << 8) ^ 0x4C600000) & v633);
  v636 = STACK[0x56F0];
  v637 = LODWORD(STACK[0x56F0]) ^ v605 ^ v624 ^ v604 ^ v617 ^ (178582375 * v612) ^ v623;
  v638 = v637 ^ 0xD8DE200F;
  v639 = STACK[0x5410];
  STACK[0x5720] = v638 >> 8;
  v640 = v626 ^ (-1437225675 * (v639 ^ v636)) ^ (2 * v635) ^ v621;
  LODWORD(STACK[0x5750]) = v637;
  STACK[0x5760] = v638 >> 24;
  v641 = v622 + 1789063177 * ((v625 ^ v636) - v639) + 1468985890;
  v642 = ((v641 ^ 0x367A48EC) - 1643428558) ^ v641 ^ ((v641 ^ 0x7D2A1AEA) - 715450568) ^ ((v641 ^ 0x63295FDB) - 883404281) ^ ((v641 ^ 0x7FF7FFFF) - 679022045);
  LODWORD(STACK[0x5790]) = ((v642 ^ 0x52C7DCE9u) >> 8) ^ 0x56;
  v643 = v624 ^ v636 ^ v620;
  LODWORD(STACK[0x5780]) = ((v643 ^ 0x6CCB8A76u) >> 8) ^ 0x2E;
  STACK[0x56F0] = (v642 ^ 0x52C7DCE9u) >> 24;
  STACK[0x5710] = (v643 ^ 0x6CCB8A76u) >> 24;
  LODWORD(STACK[0x5770]) = ((v643 ^ 0x6CCB8A76u) >> 24) ^ 0xFFFFFF92;
  LODWORD(STACK[0x57A0]) = ((v640 ^ 0x10208273u) >> 16) ^ 0x4B;
  v644 = STACK[0x57C0];
  v645 = LODWORD(STACK[0x57C0]) < 0x796CEC04;
  LODWORD(STACK[0x56E0]) = v643;
  LODWORD(STACK[0x57C0]) = v642 ^ 0x5A;
  v646 = *(STACK[0x57D8] + 8 * ((45872 * v645) ^ (v644 + 533752755)));
  STACK[0x5740] = (v640 ^ 0x10208273u) >> 24;
  LODWORD(STACK[0x5730]) = v640;
  return v646(v643 ^ 0x31u);
}

uint64_t sub_100266734@<X0>(uint64_t a1@<X1>, int a2@<W4>, uint64_t a3@<X5>, unsigned int a4@<W6>, int a5@<W7>, uint64_t a6@<X8>, int8x8_t a7@<D1>)
{
  v13 = (((v12 ^ a4) * a2 + a3) ^ v10) + a6;
  *(v11 + v13 + v8) = veor_s8(*(v9 + v13 + v7), a7);
  return (*(STACK[0x57D8] + 8 * (((a1 == v10) * a5) ^ v12)))();
}

uint64_t sub_100266780()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 17469)))();
  STACK[0xBF30] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1002667B8@<X0>(unint64_t a1@<X8>)
{
  STACK[0x1D4C8] = a1;
  LODWORD(STACK[0x1D4C0]) = (v1 + 1717148634) ^ (1964904101 * ((~((v2 - 240) | 0xD6249721) + ((v2 - 240) & 0xD6249721)) ^ 0xD3F9835A));
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x2413)))(v2 - 240);
  return (*(v3 + 8 * (v1 - 12024)))(v4);
}

uint64_t sub_1002668A0@<X0>(int a1@<W8>)
{
  v1 = STACK[0x51B8] + 10;
  v2 = STACK[0x51B8] - 13698;
  LODWORD(STACK[0xC7F8]) = a1;
  return (*(STACK[0x57D8] + 8 * ((16565 * (SLODWORD(STACK[0x66DC]) > (v1 ^ 0x5860))) ^ v2)))();
}

uint64_t sub_1002668F4@<X0>(uint64_t a1@<X1>, int a2@<W2>, unsigned __int8 a3@<W8>)
{
  v10 = a2 + a3 * v3 - (((44681065 * (a2 + a3 * v3)) >> 32) >> 6) * v4;
  v11 = 1 << a3;
  v12 = *(a1 + 1360);
  v13 = 2 * (a3 & 1) + (a3 ^ 1);
  v14 = *(*(a1 + 1368) + v10);
  v15 = v14 & 2 ^ 0xFFFFFFEF;
  v16 = (6527 * (v9 ^ 0x559E)) ^ *(v12 + 4 * v6) ^ 0x18;
  v17 = v14 ^ (v16 - ((2 * v16) & 0x2E) + 23) ^ (2 * ((v14 ^ v7) & (2 * ((v14 ^ v7) & (2 * ((v14 ^ v7) & (2 * ((v14 ^ v7) & (2 * ((v14 ^ v7) & (2 * ((v14 ^ v7) & 0x36 ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ 0x15;
  if ((v11 & v8) == 0)
  {
    v17 = (6527 * (v9 ^ 0x559E)) ^ *(v12 + 4 * v6) ^ 0x18;
  }

  *(v12 + 4 * v6) = v5 + v17 - ((2 * v17) & 0x1CC);
  return (*(STACK[0x57D8] + 8 * ((37 * ((v13 & 0xF8) == 0)) ^ v9)))();
}

uint64_t sub_1002669F0@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 600) = (v2 - 1723119079) ^ (1917435887 * ((-965984176 - ((v4 - 240) | 0xC66C4050) + (v1 | 0x3993BFAF)) ^ 0xDF28E4A9));
  *(v3 + 592) = a1;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v2 ^ 0x62C2)))(v4 - 240);
  return (*(v5 + 8 * v2))(v6);
}

uint64_t sub_100266B3C@<X0>(int a1@<W3>, unint64_t a2@<X4>, unint64_t a3@<X5>, unint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  STACK[0x5620] = *(a5 + v8 - 8);
  v23.i64[0] = a5 + v8 + (v7 ^ a6);
  v23.i64[1] = a5 + v8 - 4;
  v24 = v23;
  *&STACK[0x5600] = v23;
  v23.i64[0] = v11 + v8 + 9;
  v23.i64[1] = v11 + v8 + 8;
  v25 = v23;
  *&STACK[0x55D0] = v23;
  v23.i64[0] = v11 + v8 + 7;
  v23.i64[1] = v11 + v8 + 6;
  v26 = v23;
  *&STACK[0x55C0] = v23;
  v27.i64[0] = v11 + v8 + 5;
  v28.i64[0] = v11 + v8 + 3;
  v27.i64[1] = v11 + v8 + 4;
  v28.i64[1] = v11 + v8 + 2;
  v29.i64[0] = a5 + v8 - 7;
  v29.i64[1] = a5 + v8 - 8;
  v30.i64[0] = a5 + v8 - 5;
  v30.i64[1] = a5 + v8 - 6;
  v23.i64[0] = a5 + v8 - 1;
  v23.i64[1] = a5 + v8 - 2;
  *&STACK[0x5610] = v23;
  v31 = *&STACK[0x4D70];
  v32 = vandq_s8(v23, *&STACK[0x4D70]);
  v33 = vandq_s8(v24, *&STACK[0x4D70]);
  v34 = vandq_s8(v30, *&STACK[0x4D70]);
  v35 = vandq_s8(v29, *&STACK[0x4D70]);
  v36 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v37 = vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL);
  v38 = vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL);
  v39 = vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL);
  v40 = vdupq_n_s64(v12);
  v41 = vaddq_s64(vorrq_s8(vsubq_s64(v40, v39), v21), vorrq_s8(vaddq_s64(v39, *&STACK[0x5530]), *&STACK[0x5540]));
  v42 = vaddq_s64(vorrq_s8(vsubq_s64(v40, v38), v21), vorrq_s8(vaddq_s64(v38, *&STACK[0x5530]), *&STACK[0x5540]));
  v43 = vaddq_s64(vorrq_s8(vsubq_s64(v40, v37), v21), vorrq_s8(vaddq_s64(v37, *&STACK[0x5530]), *&STACK[0x5540]));
  v44 = vdupq_n_s64(a3);
  v45 = vsubq_s64(v44, vaddq_s64(vorrq_s8(vsubq_s64(v40, v36), v21), vorrq_s8(vaddq_s64(v36, *&STACK[0x5530]), *&STACK[0x5540])));
  v46 = vsubq_s64(v44, v43);
  v47 = vsubq_s64(v44, v42);
  v48 = vsubq_s64(v44, v41);
  v49 = veorq_s8(v47, v22);
  v50 = veorq_s8(v48, v22);
  v51 = veorq_s8(v46, v22);
  v52 = veorq_s8(v45, v22);
  v53 = veorq_s8(v45, *&STACK[0x5550]);
  v54 = veorq_s8(v46, *&STACK[0x5550]);
  v55 = veorq_s8(v47, *&STACK[0x5550]);
  v56 = veorq_s8(v48, *&STACK[0x5550]);
  v57 = vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL);
  v58 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v56);
  v59 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v53), v19);
  v60 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v54), v19);
  v61 = veorq_s8(vaddq_s64(v57, v55), v19);
  v62 = veorq_s8(v58, v19);
  v63 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v59, v15), vorrq_s8(v59, *&STACK[0x5520])), *&STACK[0x5520]), v20);
  v64 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v61, v15), vorrq_s8(v61, *&STACK[0x5520])), *&STACK[0x5520]), v20);
  v65 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v60, v15), vorrq_s8(v60, *&STACK[0x5520])), *&STACK[0x5520]), v20);
  v66 = vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL);
  v67 = vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL);
  v68 = vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL);
  v69 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v62, v15), vorrq_s8(v62, *&STACK[0x5520])), *&STACK[0x5520]), v20);
  v70 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL));
  v71 = veorq_s8(v64, v68);
  v72 = veorq_s8(v65, v67);
  v73 = veorq_s8(v63, v66);
  v74 = vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL);
  v75 = vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL);
  v76 = vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL);
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v73);
  v78 = veorq_s8(vaddq_s64(v74, v70), *&STACK[0x4640]);
  v79 = veorq_s8(vaddq_s64(v75, v71), *&STACK[0x4640]);
  v80 = vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL);
  v81 = veorq_s8(vaddq_s64(v76, v72), *&STACK[0x4640]);
  v82 = vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL);
  v83 = vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL);
  v84 = vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL);
  v85 = veorq_s8(v77, *&STACK[0x4640]);
  v86 = veorq_s8(v85, v84);
  v87 = veorq_s8(v81, v83);
  v88 = veorq_s8(v79, v82);
  v89 = veorq_s8(v78, v80);
  v90 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v91 = vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL);
  v92 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v93 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v89);
  v94 = veorq_s8(vaddq_s64(v90, v86), *&STACK[0x46D0]);
  v95 = veorq_s8(vaddq_s64(v91, v87), *&STACK[0x46D0]);
  v96 = veorq_s8(vaddq_s64(v92, v88), *&STACK[0x46D0]);
  v97 = vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL);
  v98 = vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL);
  v99 = veorq_s8(v93, *&STACK[0x46D0]);
  v100 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL));
  v101 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v102 = veorq_s8(v95, v98);
  v103 = veorq_s8(v94, v97);
  v104 = vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL);
  v105 = vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL);
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v103);
  v107 = vaddq_s64(v104, v101);
  v108 = vdupq_n_s64(a4);
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v100), v108);
  v110 = veorq_s8(v107, v108);
  v111 = veorq_s8(vaddq_s64(v105, v102), v108);
  v112 = vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL);
  v113 = vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL);
  v114 = veorq_s8(v106, v108);
  v115 = vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL);
  v116 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v117 = veorq_s8(v111, v115);
  v118 = veorq_s8(v109, v113);
  v119 = veorq_s8(v110, v112);
  v120 = vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL);
  v121 = vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL);
  v122 = vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL);
  *&STACK[0x55F0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v119);
  v123 = vaddq_s64(v120, v116);
  v124 = veorq_s8(vaddq_s64(v122, v118), *&STACK[0x45B0]);
  v125 = vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL);
  v126 = veorq_s8(v123, *&STACK[0x45B0]);
  v127 = vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL);
  v128 = veorq_s8(vaddq_s64(v121, v117), *&STACK[0x45B0]);
  *&STACK[0x55E0] = vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL);
  v129 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v130 = veorq_s8(v128, v127);
  v131 = veorq_s8(v126, v125);
  v132 = vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL);
  v133 = vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL);
  v134 = vandq_s8(v28, v31);
  v135 = vandq_s8(v27, v31);
  v136 = vandq_s8(v26, v31);
  v137 = vandq_s8(v25, v31);
  *&STACK[0x55B0] = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v138 = vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL);
  v139 = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v131);
  v141 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), *&STACK[0x4BD0]);
  v142 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), *&STACK[0x4BD0]);
  v143 = veorq_s8(v142, v14);
  v144 = veorq_s8(v141, v14);
  v145 = vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL);
  v146 = vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL);
  v147 = vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL);
  v148 = vaddq_s64(v133, v130);
  v149 = veorq_s8(v141, *&STACK[0x5760]);
  v150 = veorq_s8(v142, *&STACK[0x5760]);
  v151 = vaddq_s64(v146, v150);
  v152 = vsubq_s64(vorrq_s8(v140, v17), vorrq_s8(v140, *&STACK[0x57A0]));
  v153 = vaddq_s64(v145, v149);
  v154 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v151, *&STACK[0x5770]), vorrq_s8(v151, *&STACK[0x57B0])), *&STACK[0x57B0]), *&STACK[0x5780]);
  v155 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v153, *&STACK[0x5770]), vorrq_s8(v153, *&STACK[0x57B0])), *&STACK[0x57B0]), *&STACK[0x5780]);
  v156 = veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL));
  v157 = veorq_s8(v154, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v158 = vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL);
  v159 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v157);
  v160 = vaddq_s64(v158, v156);
  v161 = veorq_s8(vaddq_s64(vsubq_s64(v160, vandq_s8(vaddq_s64(v160, v160), *&STACK[0x56E0])), *&STACK[0x5740]), *&STACK[0x5710]);
  v162 = veorq_s8(vaddq_s64(vsubq_s64(v159, vandq_s8(vaddq_s64(v159, v159), *&STACK[0x56E0])), *&STACK[0x5740]), *&STACK[0x5710]);
  v163 = vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL);
  v164 = veorq_s8(vaddq_s64(v152, *&STACK[0x57A0]), v16);
  v165 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v166 = veorq_s8(v161, v163);
  v167 = vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL);
  v168 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v148, v17), vorrq_s8(v148, *&STACK[0x57A0])), *&STACK[0x57A0]), v16);
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v166);
  v170 = vaddq_s64(v167, v165);
  v171 = veorq_s8(v168, v147);
  v172 = veorq_s8(v164, v138);
  v173 = vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL);
  v174 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v170, v170), *&STACK[0x56D0]), v170), *&STACK[0x5700]), *&STACK[0x56C0]);
  v175 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v169, v169), *&STACK[0x56D0]), v169), *&STACK[0x5700]), *&STACK[0x56C0]);
  v176 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v177 = veorq_s8(v174, v173);
  v178 = vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL);
  v179 = vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL);
  v180 = vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL);
  v181 = vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL);
  v182 = vaddq_s64(v179, v176);
  v183 = vaddq_s64(v180, v177);
  v184 = vaddq_s64(v181, v172);
  v185 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v183, v183), *&STACK[0x5650]), v183), *&STACK[0x5680]);
  v186 = vaddq_s64(v178, v171);
  v187 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v182, v182), *&STACK[0x5650]), v182), *&STACK[0x5680]), *&STACK[0x5670]);
  v188 = veorq_s8(v185, *&STACK[0x5670]);
  v189 = vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL);
  v190 = veorq_s8(v188, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v191 = veorq_s8(v187, v189);
  v192 = vdupq_n_s64(v13);
  v193 = vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL);
  v194 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL), v190), v192);
  v195 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), v191), v192);
  v196 = veorq_s8(v195, vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL));
  v197 = veorq_s8(v194, v193);
  v198 = vsubq_s64(vorrq_s8(v186, v18), vorrq_s8(v186, *&STACK[0x57C0]));
  v199 = vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL);
  v200 = vdupq_n_s64(a2);
  v201 = vshlq_u64(veorq_s8(vaddq_s64(v198, *&STACK[0x57C0]), *&STACK[0x5750]), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), v200)));
  v202 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL), v197);
  v203 = vaddq_s64(v199, v196);
  v204 = vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL);
  v205 = veorq_s8(v202, *&STACK[0x4490]);
  v206 = veorq_s8(v205, vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL));
  v207 = vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL);
  v208 = veorq_s8(v203, *&STACK[0x4490]);
  v209 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL), veorq_s8(v208, v204));
  v210 = veorq_s8(vaddq_s64(v207, v206), *&STACK[0x5730]);
  v211 = veorq_s8(v209, *&STACK[0x5730]);
  v212 = vaddq_s64(v139, *&STACK[0x4BD0]);
  v277.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v211, v211), *&STACK[0x5720]), v211), *&STACK[0x56F0]), *&STACK[0x5790]), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v200))), vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v184, v18), vorrq_s8(v184, *&STACK[0x57C0])), *&STACK[0x57C0]), *&STACK[0x5750]), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), v200))));
  v277.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v210, v210), *&STACK[0x5720]), v210), *&STACK[0x56F0]), *&STACK[0x5790]), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), v200))), v201);
  v213 = veorq_s8(v212, *&STACK[0x5640]);
  v214 = veorq_s8(v212, *&STACK[0x5760]);
  v215 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v213, 0x38uLL), v213, 8uLL), v214);
  v216 = vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL);
  v217 = vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL);
  v218 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v215, *&STACK[0x5770]), vorrq_s8(v215, *&STACK[0x57B0])), *&STACK[0x57B0]), *&STACK[0x5780]);
  v219 = vaddq_s64(v132, v129);
  v220 = veorq_s8(v218, v216);
  v221 = vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL);
  v222 = vsubq_s64(vorrq_s8(v219, v17), vorrq_s8(v219, *&STACK[0x57A0]));
  v223 = vaddq_s64(v221, v220);
  v224 = veorq_s8(vaddq_s64(vsubq_s64(v223, vandq_s8(vaddq_s64(v223, v223), *&STACK[0x56E0])), *&STACK[0x5740]), *&STACK[0x5710]);
  v225 = veorq_s8(v224, vsraq_n_u64(vshlq_n_s64(v220, 3uLL), v220, 0x3DuLL));
  v226 = veorq_s8(vaddq_s64(v222, *&STACK[0x57A0]), v16);
  v227 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL), v225);
  v228 = veorq_s8(v226, v217);
  v229 = vsraq_n_u64(vshlq_n_s64(v225, 3uLL), v225, 0x3DuLL);
  v230 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v227, v227), *&STACK[0x56D0]), v227), *&STACK[0x5700]), *&STACK[0x56C0]);
  v231 = vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL);
  v232 = veorq_s8(v230, v229);
  v233 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL), v232);
  v234 = vsraq_n_u64(vshlq_n_s64(v232, 3uLL), v232, 0x3DuLL);
  v235 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v233, v233), *&STACK[0x5650]), v233), *&STACK[0x5680]), *&STACK[0x5670]);
  v236 = vaddq_s64(v231, v228);
  v237 = veorq_s8(v235, v234);
  v238 = vsraq_n_u64(vshlq_n_s64(v235, 0x38uLL), v235, 8uLL);
  v239 = vsubq_s64(vorrq_s8(v236, v18), vorrq_s8(v236, *&STACK[0x57C0]));
  v240 = veorq_s8(vaddq_s64(v238, v237), v192);
  v241 = veorq_s8(v240, vsraq_n_u64(vshlq_n_s64(v237, 3uLL), v237, 0x3DuLL));
  v242 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v240, 0x38uLL), v240, 8uLL), v241), *&STACK[0x4490]);
  v243 = vshlq_u64(veorq_s8(vaddq_s64(v239, *&STACK[0x57C0]), *&STACK[0x5750]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5600], 3uLL), v200)));
  v244 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v242, 0x38uLL), v242, 8uLL), veorq_s8(v242, vsraq_n_u64(vshlq_n_s64(v241, 3uLL), v241, 0x3DuLL))), *&STACK[0x5730]);
  v245 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v244, v244), *&STACK[0x5720]), v244), *&STACK[0x56F0]), *&STACK[0x5790]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x55C0], 3uLL), v200)));
  v246 = veorq_s8(*&STACK[0x55F0], *&STACK[0x45B0]);
  v247 = vaddq_s64(*&STACK[0x55B0], *&STACK[0x4BD0]);
  v277.val[1] = veorq_s8(v245, v243);
  v248 = veorq_s8(v247, *&STACK[0x5640]);
  v249 = veorq_s8(v246, *&STACK[0x55E0]);
  v250 = veorq_s8(v247, *&STACK[0x5760]);
  v251 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v248, 0x38uLL), v248, 8uLL), v250);
  v252 = vsraq_n_u64(vshlq_n_s64(v246, 0x38uLL), v246, 8uLL);
  v253 = vsubq_s64(vorrq_s8(v251, *&STACK[0x5770]), vorrq_s8(v251, *&STACK[0x57B0]));
  v254 = vsraq_n_u64(vshlq_n_s64(v249, 3uLL), v249, 0x3DuLL);
  v255 = vaddq_s64(v252, v249);
  v256 = veorq_s8(vaddq_s64(v253, *&STACK[0x57B0]), *&STACK[0x5780]);
  v257 = veorq_s8(v256, vsraq_n_u64(vshlq_n_s64(v250, 3uLL), v250, 0x3DuLL));
  v258 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v256, 0x38uLL), v256, 8uLL), v257);
  v259 = veorq_s8(vaddq_s64(vsubq_s64(v258, vandq_s8(vaddq_s64(v258, v258), *&STACK[0x56E0])), *&STACK[0x5740]), *&STACK[0x5710]);
  v260 = veorq_s8(v259, vsraq_n_u64(vshlq_n_s64(v257, 3uLL), v257, 0x3DuLL));
  v261 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v259, 0x38uLL), v259, 8uLL), v260);
  v262 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v261, v261), *&STACK[0x56D0]), v261), *&STACK[0x5700]), *&STACK[0x56C0]);
  v263 = veorq_s8(v262, vsraq_n_u64(vshlq_n_s64(v260, 3uLL), v260, 0x3DuLL));
  v264 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v262, 0x38uLL), v262, 8uLL), v263);
  v265 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v255, v17), vorrq_s8(v255, *&STACK[0x57A0])), *&STACK[0x57A0]), *&STACK[0x5660]);
  v266 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v264, v264), *&STACK[0x5650]), v264), *&STACK[0x5680]), *&STACK[0x5670]);
  v267 = veorq_s8(v265, v254);
  v268 = veorq_s8(v266, vsraq_n_u64(vshlq_n_s64(v263, 3uLL), v263, 0x3DuLL));
  v269 = vsraq_n_u64(vshlq_n_s64(v266, 0x38uLL), v266, 8uLL);
  v270 = vsraq_n_u64(vshlq_n_s64(v265, 0x38uLL), v265, 8uLL);
  v271 = veorq_s8(vaddq_s64(v269, v268), v192);
  v272 = veorq_s8(v271, vsraq_n_u64(vshlq_n_s64(v268, 3uLL), v268, 0x3DuLL));
  v273 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v271, 0x38uLL), v271, 8uLL), v272), *&STACK[0x4490]);
  v274 = vaddq_s64(v270, v267);
  v275 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v273, 0x38uLL), v273, 8uLL), veorq_s8(v273, vsraq_n_u64(vshlq_n_s64(v272, 3uLL), v272, 0x3DuLL))), *&STACK[0x5730]);
  v277.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v275, v275), *&STACK[0x5720]), v275), *&STACK[0x56F0]), *&STACK[0x5790]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x55D0], 3uLL), v200))), vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v274, v18), vorrq_s8(v274, *&STACK[0x57C0])), *&STACK[0x57C0]), *&STACK[0x5750]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5610], 3uLL), v200))));
  *(v11 + v8 + 2) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v277, v6[26])), STACK[0x5620]);
  return (*(STACK[0x57D8] + 8 * (((v10 == v8) * a1) ^ v9)))();
}

uint64_t sub_100267740()
{
  v1 = *(STACK[0x57D8] + 8 * (v0 ^ 0x55B3 ^ (v0 + 1823404255) & 0x93514FFF));
  STACK[0xCB60] = *(STACK[0x57D8] + 8 * v0);
  return v1();
}

uint64_t sub_1002677C0()
{
  v2 = *(v0 + 295);
  v3 = *(v0 + 2280);
  v4 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v3 & 0xFFFFFFF8) - 1831847764)) & 0xFFFFFFFFFFFFFFF8));
  v5 = (v4 + __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xC2AF3EAA3FF1B8E4;
  v6 = __ROR8__(v5, 8);
  v7 = v5 ^ __ROR8__(v4, 61);
  v8 = (v6 + v7) ^ 0x65F254DD188DB4FCLL;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = __ROR8__(v8, 8) + v9;
  v11 = (v10 - ((2 * v10) & 0xA0F0B974BDA55F86) - 0x2F87A345A12D503DLL) ^ 0xBF881A2C3FCBBD4ELL;
  v12 = __ROR8__(v9, 61);
  v13 = __ROR8__(v11, 8);
  v14 = v11 ^ v12;
  v15 = (v13 + v14) ^ 0xA1B29DC5D776132BLL;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (((2 * (v17 + v16)) | 0xFA68B5B1B1F081FELL) - (v17 + v16) - 0x7D345AD8D8F840FFLL) ^ 0x92307A992D1D0813;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0xD8C7B31FCA19D9DELL;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (0xFF62DB645CEEACB1 - ((v22 + v21) | 0xFF62DB645CEEACB1) + ((v22 + v21) | 0x9D249BA311534ELL)) ^ 0x54C825B529A090C1;
  LOBYTE(v3) = 8 * (v3 & 7);
  *(v0 + 1868) = (((__ROR8__(v23, 8) + (v23 ^ __ROR8__(v21, 61))) ^ 0x6F4F60BC0E025EE0) >> v3) ^ v2;
  v10 ^= 0x6FF046966119128DuLL;
  v24 = v10 ^ v12;
  v25 = (__ROR8__(v10, 8) + v24) ^ 0xA1B29DC5D776132BLL;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (0x84897E54037E5162 - ((v27 + v26) | 0x84897E54037E5162) + ((v27 + v26) | 0x7B7681ABFC81AE9DLL)) ^ 0x9472A1EA0964E671;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0xD8C7B31FCA19D9DELL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (v32 + v31 - ((2 * (v32 + v31)) & 0x3917554EC7647F48) + 0x1C8BAAA763B23FA4) ^ 0x48DEAB89E903FC2BLL;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  **(v0 + 2264) = *(v0 + 2279) ^ v2 ^ (((((2 * (v35 + v34)) | 0x25460C02CCFE2B0CLL) - (v35 + v34) + 0x6D5CF9FE9980EA7ALL) ^ 0xFDEC66BD687D4B66) >> v3);
  v36 = *(v0 + 3920) + 23;
  *(v0 + 296) = v36;
  v37 = STACK[0x57D8];
  v38 = *(STACK[0x57D8] + 8 * (v1 ^ 0x511Bu));
  *(v0 + 2288) = v36;
  *(v0 + 280) = v38;
  return (*(v37 + 8 * (v1 ^ 0x51A6u)))();
}

uint64_t sub_100267B00@<X0>(unint64_t a1@<X8>)
{
  STACK[0xEBA0] = a1;
  LODWORD(STACK[0xEBA8]) = v1;
  LOWORD(STACK[0xEBAE]) = v4;
  STACK[0xEBB0] = v3;
  return (*(STACK[0x57D8] + 8 * (((a1 == 0) * (((v2 - 27193) | 0x5002) - 22590)) ^ v2)))();
}

uint64_t sub_100267B68(uint64_t a1, int a2, int a3, unint64_t a4, unsigned int a5)
{
  v6 = *(STACK[0xDCB8] + a4 - 6152 * (((a4 * v5) >> 64) >> 12));
  v7 = *(STACK[0xDCB0] + 4 * (6419 * ((v6 | ((v6 < 0x4C) << 8)) + 3511) % ((a3 + 860191266) & 0xCCBA78AC ^ 0x1AE8)));
  v8 = *(STACK[0xDCB8] + 5621 * (BYTE2(v7) ^ 0x38) + 32028458 - 6152 * (((89362129 * (5621 * (BYTE2(v7) ^ 0x38u) + 32028458)) >> 32) >> 7));
  v9 = *(STACK[0xDCB8] + (5621 * (((HIBYTE(v7) ^ 0x21A13986) + 1080416701) ^ ((HIBYTE(v7) ^ 0x804E6BCA) - 511013903) ^ ((HIBYTE(v7) ^ 0xA1EF520E) - 1070878155)) + 1242822237) % 0x1808);
  v10 = v9 & 0xFE ^ 0xA5;
  v11 = v8 & 0xFA ^ 0xA3;
  v12 = *(STACK[0xDCB8] + (5621 * (((v7 ^ 0x23673751) + 1551223216) ^ ((v7 ^ 0xED2AE687) - 1841817478) ^ ((v7 ^ 0xCE4DD130) - 1319161905)) - 706511811) % 0x1808);
  v13 = *(STACK[0xDCB8] + 5621 * (BYTE1(v7) ^ 0x8F) + 32028458 - 6152 * (((89362129 * (5621 * (BYTE1(v7) ^ 0x8Fu) + 32028458)) >> 32) >> 7));
  v14 = v9 ^ (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * v10) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10));
  v15 = v13 & 0x90 ^ 0x36;
  v16 = (((v8 ^ (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * (v11 ^ v8 & 0xE)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11))) ^ 0xFA) << 8) | ((v14 ^ 0xFE) << 16);
  v17 = ((v13 ^ (2 * ((v13 ^ 0x34) & (2 * ((v13 ^ 0x34) & (2 * ((v13 ^ 0x34) & (2 * ((v13 ^ 0x34) & (2 * ((v13 ^ 0x34) & (2 * v15) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15))) ^ 0x3E1CCB) & ~v16;
  v18 = v16 & 0xC1E300;
  LOBYTE(v16) = v12 & 0xA4 ^ 0x98;
  *(STACK[0xDCB0] + 4 * (a5 % 0x2240)) = ((((v17 | v18) << 8) ^ 0x73540AD1) & ((v12 ^ (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * v16) ^ v16)) ^ v16)) ^ v16)) ^ v16))) ^ 0xFFFFFF71) | (v12 ^ (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * v16) ^ v16)) ^ v16)) ^ v16)) ^ v16))) & 0x2E) ^ 0xF70DE13;
  return (*(STACK[0x57D8] + 8 * ((3261 * (a2 == 0)) ^ a3)))();
}

uint64_t sub_100267F00()
{
  v1 = STACK[0x57D8];
  STACK[0x9F38] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 - 21231 + v0 + 24517)))();
}

uint64_t sub_100267F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v7 = STACK[0x5700];
  v8 = ((LODWORD(STACK[0x5780]) << ((LODWORD(STACK[0x5700]) - 44) & LOBYTE(STACK[0x810]) ^ 0xE7)) + LODWORD(STACK[0x5770]) + LODWORD(STACK[0x5760]));
  v9 = (LODWORD(STACK[0x5740]) << 24);
  v10 = (LODWORD(STACK[0x5710]) << 24);
  LODWORD(STACK[0x5790]) = LODWORD(STACK[0x57C0]) | (LODWORD(STACK[0x5790]) << 8) | (LODWORD(STACK[0x5750]) << 24) | (LODWORD(STACK[0x5730]) << 16);
  return (*(STACK[0x57D8] + 8 * (v7 ^ (35 * ((a7 & 3) == 3)))))(v8, v9, a3, v10);
}

uint64_t sub_10026806C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, char a5@<W8>)
{
  LODWORD(STACK[0x4E78]) = LODWORD(STACK[0x5620]) + LODWORD(STACK[0x5600]);
  LODWORD(STACK[0x4E44]) = LODWORD(STACK[0x5710]) + LODWORD(STACK[0x5780]);
  LODWORD(STACK[0x4E50]) = LODWORD(STACK[0x55E0]) + LODWORD(STACK[0x5610]);
  LODWORD(STACK[0x4DF0]) = v10 + LODWORD(STACK[0x5560]);
  LODWORD(STACK[0x5388]) = (v7 - 76);
  v11 = *(STACK[0x57D8] + 8 * v9);
  LODWORD(STACK[0x53A8]) = (a5 - 76);
  LODWORD(STACK[0x5380]) = ((((v8 - 76) << 8) | (v6 << 16) | (v5 - 76)) << 8) - 1275068416;
  return v11(a1, &STACK[0xD760], 0xAA71DA0CA6732EF1, 0x3BCBADC7F10D149, a2, a3, a4, STACK[0x5308]);
}

uint64_t sub_1002681B8@<X0>(int a1@<W8>)
{
  STACK[0xE9F0] = v7;
  STACK[0xE9F8] = v6;
  STACK[0xCD40] = 0;
  LODWORD(STACK[0x6BEC]) = 85541415;
  STACK[0x8490] = 0;
  return (*(STACK[0x57D8] + 8 * (((32 * ((((v5 | v3) | (v1 | v2 | v4)) & 1) == 0)) & 0xBF | (((((v5 | v3) | (v1 | v2 | v4)) & 1) == 0) << 6)) ^ a1)))();
}

uint64_t sub_100268284@<X0>(int a1@<W0>, int a2@<W2>, int a3@<W5>, int a4@<W7>, int a5@<W8>)
{
  LODWORD(STACK[0x4868]) = LODWORD(STACK[0x5620]) | LODWORD(STACK[0x5640]);
  LODWORD(STACK[0x4A90]) = LODWORD(STACK[0x5610]) | LODWORD(STACK[0x5600]);
  LODWORD(STACK[0x49A0]) = LODWORD(STACK[0x54F0]) | LODWORD(STACK[0x5630]);
  LODWORD(STACK[0x54D0]) = v15 & (LODWORD(STACK[0x54D0]) ^ 0xA3AE20C8);
  LODWORD(STACK[0x53B8]) = v13 ^ 0x5BF65FF;
  LODWORD(STACK[0x53F0]) = v7 & (a4 ^ 0x95671A36);
  LODWORD(STACK[0x53C0]) = v9 & (a1 ^ 0x87FDF7C3);
  LODWORD(STACK[0x5420]) = v8 & (v11 ^ 0x2520DAF6);
  LODWORD(STACK[0x53B0]) = v12 & (v10 ^ 0xC533E7D5);
  LODWORD(STACK[0x53E8]) = a2 & (v6 ^ 0x278A707F);
  LODWORD(STACK[0x53A8]) = a3 & (v6 ^ 0xDA7D721);
  LODWORD(STACK[0x54F0]) = v5 & (a5 ^ 0xCA8126B8);
  v16 = STACK[0x57D8];
  LODWORD(STACK[0x5630]) = v14 ^ 0x7890;
  return (*(v16 + 8 * (v14 ^ 0x7890)))();
}

uint64_t sub_1002684B4()
{
  v4 = *(v1 - 0x683CBC57EAB92A3ELL);
  STACK[0xCCE0] = v0;
  STACK[0xCD60] = 0;
  v6 = v4 != v3 && v0 != 0;
  return (*(STACK[0x57D8] + 8 * ((v6 * ((v2 - 7508) ^ (v2 - 23928) ^ 0x4070)) | v2)))();
}

uint64_t sub_1002685C8()
{
  v1 = STACK[0x51E8];
  v2 = *STACK[0x51E8];
  v3 = STACK[0x51F0];
  v4 = *STACK[0x51F0];
  v5 = *(v4 + (((STACK[0x5490] ^ 0xA462BB37) + (STACK[0x52C0] & 0x48C57660) - 707166749) & v2 & 0xFFFFFFF8));
  v6 = (v5 + STACK[0x5480]) ^ 0xB88801D4E1C76353;
  v7 = v6 ^ __ROR8__(v5, 61);
  v8 = (__ROR8__(v6, 8) + v7) ^ 0x38C8B16AE7056877;
  v9 = __ROR8__(v8, 8);
  v10 = v8 ^ __ROR8__(v7, 61);
  v11 = (((v9 + v10) | 0xDC54FA2ABC301F53) - ((v9 + v10) | 0x23AB05D543CFE0ACLL) + 0x23AB05D543CFE0ACLL) ^ 0x39D44B5730F5FA02;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0xE1A1FD5BD155F97ALL;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0xDA604B0C03A2BF99;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xFA35E2CDCB3E31C7;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xD2F00CE620E5D3AELL;
  v20 = STACK[0x53B8];
  LODWORD(v18) = 4843 * ((((__ROR8__(v19, 8) + (v19 ^ __ROR8__(v18, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5470]) ^ *STACK[0x53B8]) + 6213569;
  *(STACK[0x57C0] + 3366) = *(STACK[0x57C0] + v18 - (((11815591 * v18) >> 32) >> 4) * v0);
  v21 = *(v4 + (v2 & ((((STACK[0x53E8] & 0x13DCEE20) + (STACK[0x5500] ^ 0x89EE7712)) & 0xFFFFFFF8) - 263339512)));
  v22 = (v21 + STACK[0x54E0]) ^ 0xB88801D4E1C76353;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (v24 + v23 - ((2 * (v24 + v23)) & 0xED36CFF868B40E5CLL) - 0x9649803CBA5F8D2) ^ 0xCE53D696D35F6F59;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0xE580B17D8CC5E551;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (((2 * (v29 + v28)) & 0xB576C5B2E6160424) - (v29 + v28) + 0x25449D268CF4FDEDLL) ^ 0xC4E5607D5DA10497;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (((v32 + v31) | 0xE15A11E569722379) - ((v32 + v31) | 0x1EA5EE1A968DDC86) + 0x1EA5EE1A968DDC86) ^ 0x3B3A5AE96AD09CE0;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0xFA35E2CDCB3E31C7;
  v36 = __ROR8__(v35, 8);
  v37 = v35 ^ __ROR8__(v34, 61);
  v38 = (((v36 + v37) | 0xB2AB84353E1C8BALL) - ((v36 + v37) | 0xF4D547BCAC1E3745) - 0xB2AB84353E1C8BBLL) ^ 0xD9DAB4A573041B14;
  LODWORD(v37) = 4843 * ((((__ROR8__(v38, 8) + (v38 ^ __ROR8__(v37, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x54F0]) ^ v20[1]) + 6213569;
  *(STACK[0x57C0] + 2371) = *(STACK[0x57C0] + v37 - 5816 * (((11815591 * v37) >> 32) >> 4));
  LODWORD(v37) = *v1;
  v39 = *v3;
  v40 = *(*v3 + (((STACK[0x5120] ^ 0x4B806115) + 784062469 + ((2 * STACK[0x5120]) & 0x9700C220)) & *v1 & 0xFFFFFFF8));
  v41 = (v40 + STACK[0x5168]) ^ 0xB88801D4E1C76353;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (((2 * (v43 + v42)) & 0xD4D1DE2B97E5F6BCLL) - (v43 + v42) + 0x159710EA340D04A1) ^ 0x2D5FA180D3086CD6;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ 0xE580B17D8CC5E551;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = __ROR8__(v46, 8);
  v49 = (((2 * (v48 + v47)) & 0xF40525D233BFC92ALL) - (v48 + v47) - 0x7A0292E919DFE496) ^ 0x645C904D3775E210;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0xDA604B0C03A2BF99;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (((2 * (v53 + v52)) & 0xE3BAC9503C14E10ALL) - (v53 + v52) + 0xE229B57E1F58F7ALL) ^ 0xF417799A2ACBBEBDLL;
  v55 = v54 ^ __ROR8__(v52, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ 0xD2F00CE620E5D3AELL;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = __ROR8__(v56, 8);
  LODWORD(v57) = 4843 * ((((((2 * (v58 + v57)) & 0x8DAAEF6DDCE69F56) - (v58 + v57) - 0x46D577B6EE734FACLL) ^ 0x4D598378BFFCC52FLL) >> STACK[0x5180]) ^ v20[2]) + 6213569;
  *(STACK[0x57C0] + 1376) = *(STACK[0x57C0] + v57 - 5816 * (((11815591 * v57) >> 32) >> 4));
  v59 = *(v39 + (v37 & ((((STACK[0x54A0] & 0xA2E4CFB0) + (STACK[0x54B0] ^ 0x517267DA)) & 0xFFFFFFF8) + 684314944)));
  v60 = (((2 * (v59 + STACK[0x54C0])) & 0x57AFC2CF317728FELL) - (v59 + STACK[0x54C0]) - 0x2BD7E16798BB9480) ^ 0x6CA01F4C868308D3;
  v61 = __ROR8__(v60, 8);
  v62 = v60 ^ __ROR8__(v59, 61);
  v63 = (((2 * (v61 + v62)) | 0x8AB1588E8E5C851ALL) - (v61 + v62) + 0x3AA753B8B8D1BD73) ^ 0xFD901D2DA02B2AFALL;
  v64 = v63 ^ __ROR8__(v62, 61);
  v65 = __ROR8__(v63, 8);
  v66 = (((2 * (v65 + v64)) & 0x984FBD7B0F3FEFE4) - (v65 + v64) + 0x33D821427860080DLL) ^ 0xD658903FF4A5ED5CLL;
  v67 = v66 ^ __ROR8__(v64, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ 0xE1A1FD5BD155F97ALL;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = (__ROR8__(v68, 8) + v69) ^ 0xDA604B0C03A2BF99;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = (__ROR8__(v70, 8) + v71) ^ 0xFA35E2CDCB3E31C7;
  v73 = v72 ^ __ROR8__(v71, 61);
  v74 = __ROR8__(v72, 8);
  v75 = (v74 + v73 - ((2 * (v74 + v73)) & 0xB4AC71A9F65C8A6ELL) + 0x5A5638D4FB2E4537) ^ 0x88A63432DBCB9699;
  v76 = v75 ^ __ROR8__(v73, 61);
  v77 = __ROR8__(v75, 8);
  LODWORD(v76) = 4843 * ((((((v77 + v76) | 0x2354B17C2AE53F4BLL) - ((v77 + v76) | 0xDCAB4E83D51AC0B4) - 0x2354B17C2AE53F4CLL) ^ 0xD727BA4D84954A30) >> STACK[0x54D0]) ^ v20[3]) + 6213569;
  *(STACK[0x57C0] + 381) = *(STACK[0x57C0] + v76 - 5816 * (((11815591 * v76) >> 32) >> 4));
  LODWORD(v76) = *v1 & 0xFFFFFFF8;
  v78 = *v3;
  v79 = *(*v3 + (v76 & ((STACK[0x50F0] & 0xEC56CA1F) - 1914343679 + (STACK[0x50F0] | 0xEC56CA19))));
  v80 = (((v79 + STACK[0x50E8]) & 0xB7DCD451C9F65056 ^ 0x1014005008605050) + ((v79 + STACK[0x50E8]) ^ 0xE7CBD529C197872FLL) - (((v79 + STACK[0x50E8]) ^ 0xE7CBD529C197872FLL) & 0xB7DCD451C9F65056)) ^ 0xE89F00ACE9A6B42ALL;
  v81 = __ROR8__(v80, 8);
  v82 = v80 ^ __ROR8__(v79, 61);
  v83 = (v81 + v82 - ((2 * (v81 + v82)) & 0x9A26C43339D791E6) - 0x32EC9DE66314370DLL) ^ 0xF5DBD3737BEEA084;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = (__ROR8__(v83, 8) + v84) ^ 0xE580B17D8CC5E551;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = __ROR8__(v85, 8);
  v88 = (((v87 + v86) | 0x81AF60832459E04CLL) - ((v87 + v86) | 0x7E509F7CDBA61FB3) + 0x7E509F7CDBA61FB3) ^ 0x600E9DD8F50C1936;
  v89 = v88 ^ __ROR8__(v86, 61);
  v90 = (__ROR8__(v88, 8) + v89) ^ 0xDA604B0C03A2BF99;
  v91 = v90 ^ __ROR8__(v89, 61);
  v92 = __ROR8__(v90, 8);
  v93 = __ROR8__((((v92 + v91) | 0x5EA4407DD3D0C445) - ((v92 + v91) | 0xA15BBF822C2F3BBALL) - 0x5EA4407DD3D0C446) ^ 0xA491A2B018EEF582, 8);
  v94 = (((v92 + v91) | 0x5EA4407DD3D0C445) - ((v92 + v91) | 0xA15BBF822C2F3BBALL) - 0x5EA4407DD3D0C446) ^ 0xA491A2B018EEF582 ^ __ROR8__(v91, 61);
  v95 = (v93 + v94) ^ 0xD2F00CE620E5D3AELL;
  v96 = v95 ^ __ROR8__(v94, 61);
  v97 = __ROR8__(v95, 8);
  LODWORD(v96) = 4843 * ((((((2 * (v97 + v96)) & 0xD3CBD2C0F2700F4ALL) - (v97 + v96) - 0x69E5E960793807A6) ^ 0x62691DAE28B78D21) >> STACK[0x50F8]) ^ v20[4]) + 6213569;
  *STACK[0x5660] = *(STACK[0x57C0] + v96 - 5816 * (((11815591 * v96) >> 32) >> 4));
  LODWORD(v95) = STACK[0x5210] | 0x724E7FB0;
  LODWORD(v93) = STACK[0x5210] | 0x8DB1804F;
  LODWORD(STACK[0x5760]) = 2050767131;
  v98 = *(v78 + (v76 & (v93 + 2050767131 + v95)));
  v99 = (v98 + STACK[0x5208]) ^ 0xB88801D4E1C76353;
  v100 = v99 ^ __ROR8__(v98, 61);
  v101 = (__ROR8__(v99, 8) + v100) ^ 0x38C8B16AE7056877;
  v102 = v101 ^ __ROR8__(v100, 61);
  v103 = __ROR8__(v101, 8);
  v104 = (((2 * (v103 + v102)) | 0x504221E416E9FE06) - (v103 + v102) - 0x282110F20B74FF03) ^ 0xCDA1A18F87B11A52;
  v105 = v104 ^ __ROR8__(v102, 61);
  v106 = (__ROR8__(v104, 8) + v105) ^ 0xE1A1FD5BD155F97ALL;
  v107 = v106 ^ __ROR8__(v105, 61);
  v108 = (__ROR8__(v106, 8) + v107) ^ 0xDA604B0C03A2BF99;
  v109 = v108 ^ __ROR8__(v107, 61);
  v110 = (__ROR8__(v108, 8) + v109) ^ 0xFA35E2CDCB3E31C7;
  v111 = v110 ^ __ROR8__(v109, 61);
  v112 = (__ROR8__(v110, 8) + v111) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(v111) = 4843 * ((((__ROR8__(v112, 8) + (v112 ^ __ROR8__(v111, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x51F8]) ^ v20[5]) + 6213569;
  *STACK[0x5670] = *(STACK[0x57C0] + v111 - 5816 * (((11815591 * v111) >> 32) >> 4));
  LODWORD(v111) = *v1;
  v113 = *v3;
  v114 = *(*v3 + (*v1 & ((STACK[0x5140] & 0x785E2B57) + (STACK[0x5140] | 0x785E2B54) + 31329732)));
  v115 = (v114 + STACK[0x5128]) ^ 0xB88801D4E1C76353;
  v116 = v115 ^ __ROR8__(v114, 61);
  v117 = __ROR8__(v115, 8);
  v118 = (((2 * (v117 + v116)) | 0x89E2AB4BB001C126) - (v117 + v116) + 0x3B0EAA5A27FF1F6DLL) ^ 0xFC39E4CF3F0588E4;
  v119 = v118 ^ __ROR8__(v116, 61);
  v120 = __ROR8__(v118, 8);
  v121 = (((2 * (v120 + v119)) & 0x4D65D474843BFF9ELL) - (v120 + v119) + 0x594D15C5BDE20030) ^ 0xBCCDA4B83127E561;
  v122 = v121 ^ __ROR8__(v119, 61);
  v123 = (__ROR8__(v121, 8) + v122) ^ 0xE1A1FD5BD155F97ALL;
  v124 = v123 ^ __ROR8__(v122, 61);
  v125 = __ROR8__(v123, 8);
  v126 = (((2 * (v125 + v124)) & 0xFD30336F10226250) - (v125 + v124) - 0x7E9819B788113129) ^ 0x5B07AD44744C714ELL;
  v127 = v126 ^ __ROR8__(v124, 61);
  v128 = (__ROR8__(v126, 8) + v127) ^ 0xFA35E2CDCB3E31C7;
  v129 = v128 ^ __ROR8__(v127, 61);
  v130 = (__ROR8__(v128, 8) + v129) ^ 0xD2F00CE620E5D3AELL;
  v131 = v130 ^ __ROR8__(v129, 61);
  v132 = __ROR8__(v130, 8);
  v133 = 4843 * ((((((2 * (v132 + v131)) & 0x3870B5A75F987F4) - (v132 + v131) - 0x1C385AD3AFCC3FBLL) ^ 0xA4F71636B73497ELL) >> STACK[0x5130]) ^ v20[6]) + 6213569;
  *(STACK[0x57C0] + 3388) = *(STACK[0x57C0] + v133 - 5816 * (((11815591 * v133) >> 32) >> 4));
  v134 = *(v113 + (((STACK[0x51E0] & 0x6C096FBF) + (STACK[0x51E0] | 0x6C096FB9) + 238209377) & v111 & 0xFFFFFFF8));
  v135 = (v134 + STACK[0x51D8]) ^ 0xB88801D4E1C76353;
  v136 = v135 ^ __ROR8__(v134, 61);
  v137 = (__ROR8__(v135, 8) + v136) ^ 0x38C8B16AE7056877;
  v138 = v137 ^ __ROR8__(v136, 61);
  v139 = (__ROR8__(v137, 8) + v138) ^ 0xE580B17D8CC5E551;
  v140 = v139 ^ __ROR8__(v138, 61);
  v141 = __ROR8__(v139, 8);
  v142 = (((2 * (v141 + v140)) & 0x62C9B34A0C0811A6) - (v141 + v140) + 0x4E9B265AF9FBF72CLL) ^ 0xAF3ADB0128AE0E56;
  v143 = v142 ^ __ROR8__(v140, 61);
  v144 = (__ROR8__(v142, 8) + v143) ^ 0xDA604B0C03A2BF99;
  v145 = __ROR8__(v144, 8);
  v146 = v144 ^ __ROR8__(v143, 61);
  v147 = (((2 * (v145 + v146)) | 0xF672E0E61214EF22) - (v145 + v146) + 0x4C68F8CF6F5886FLL) ^ 0x10C92BEC2344656;
  v148 = v147 ^ __ROR8__(v146, 61);
  v149 = (__ROR8__(v147, 8) + v148) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(v148) = 4843 * ((((__ROR8__(v149, 8) + (v149 ^ __ROR8__(v148, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x51D0]) ^ v20[7]) + 6213569;
  *(STACK[0x57C0] + 2393) = *(STACK[0x57C0] + v148 - 5816 * (((11815591 * v148) >> 32) >> 4));
  LODWORD(v148) = *v1;
  v150 = *v3;
  v151 = *(*v3 + (*v1 & ((STACK[0x5158] ^ 0x511BE564) + (STACK[0x5150] & 0xA237CAC0) + 689984436)));
  v152 = (((2 * (v151 + STACK[0x5148])) & 0x13F7B96DF3D71338) - (v151 + STACK[0x5148]) - 0x9FBDCB6F9EB899DLL) ^ 0x4E8C229DE7D31530;
  v153 = v152 ^ __ROR8__(v151, 61);
  v154 = __ROR8__(v152, 8);
  v155 = (((v154 + v153) | 0x761C5849320764BDLL) - ((v154 + v153) | 0x89E3A7B6CDF89B42) - 0x761C5849320764BELL) ^ 0x4ED4E923D5020CCALL;
  v156 = v155 ^ __ROR8__(v153, 61);
  v157 = (__ROR8__(v155, 8) + v156) ^ 0xE580B17D8CC5E551;
  v158 = v157 ^ __ROR8__(v156, 61);
  v159 = __ROR8__(v157, 8);
  v160 = __ROR8__((((2 * (v159 + v158)) | 0x7070998940A62254) - (v159 + v158) + 0x47C7B33B5FACEED6) ^ 0x5999B19F7106E850, 8);
  v161 = (((2 * (v159 + v158)) | 0x7070998940A62254) - (v159 + v158) + 0x47C7B33B5FACEED6) ^ 0x5999B19F7106E850 ^ __ROR8__(v158, 61);
  v162 = (v160 + v161) ^ 0xDA604B0C03A2BF99;
  v163 = v162 ^ __ROR8__(v161, 61);
  v164 = (__ROR8__(v162, 8) + v163) ^ 0xFA35E2CDCB3E31C7;
  v165 = v164 ^ __ROR8__(v163, 61);
  v166 = __ROR8__(v164, 8);
  v167 = (((2 * (v166 + v165)) | 0xFAF2C5C437C8DCC0) - (v166 + v165) - 0x7D7962E21BE46E60) ^ 0xAF896E043B01BDCELL;
  v168 = __ROR8__(v167, 8);
  v169 = __ROR8__(v165, 61);
  LODWORD(v165) = 4843 * ((((((2 * (v168 + (v167 ^ v169))) | 0x72441536CB419130) - (v168 + (v167 ^ v169)) - 0x39220A9B65A0C898) ^ 0xCD5101AACBD0BDE3) >> STACK[0x5160]) ^ v20[8]) + 6213569;
  *(STACK[0x57C0] + 1398) = *(STACK[0x57C0] + v165 - 5816 * (((11815591 * v165) >> 32) >> 4));
  v170 = *(v150 + ((STACK[0x5288] + 2050767130) & v148 & 0xFFFFFFF8));
  v171 = (v170 + STACK[0x5278] - ((2 * (v170 + STACK[0x5278])) & 0xC56C1B47D05F8B6CLL) - 0x1D49F25C17D03A4ALL) ^ 0x5A3E0C7709E8A6E5;
  v172 = v171 ^ __ROR8__(v170, 61);
  v173 = (__ROR8__(v171, 8) + v172) ^ 0x38C8B16AE7056877;
  v174 = v173 ^ __ROR8__(v172, 61);
  v175 = __ROR8__(v173, 8);
  v176 = __ROR8__((((2 * (v175 + v174)) | 0x9611CA04DE0A50E4) - (v175 + v174) - 0x4B08E5026F052872) ^ 0xAE88547FE3C0CD23, 8);
  v177 = (((2 * (v175 + v174)) | 0x9611CA04DE0A50E4) - (v175 + v174) - 0x4B08E5026F052872) ^ 0xAE88547FE3C0CD23 ^ __ROR8__(v174, 61);
  v178 = (v176 + v177) ^ 0xE1A1FD5BD155F97ALL;
  v179 = v178 ^ __ROR8__(v177, 61);
  v180 = __ROR8__(v178, 8);
  v181 = (((2 * (v180 + v179)) & 0x414AE6D837C233B0) - (v180 + v179) + 0x5F5A8C93E41EE627) ^ 0x853AC79FE7BC59BELL;
  v182 = v181 ^ __ROR8__(v179, 61);
  v183 = (__ROR8__(v181, 8) + v182) ^ 0xFA35E2CDCB3E31C7;
  v184 = v183 ^ __ROR8__(v182, 61);
  v185 = (__ROR8__(v183, 8) + v184) ^ 0xD2F00CE620E5D3AELL;
  v186 = v185 ^ __ROR8__(v184, 61);
  v187 = __ROR8__(v185, 8);
  LODWORD(v186) = 4843 * ((((((2 * (v187 + v186)) | 0x30F5E0B1367F8F68) - (v187 + v186) + 0x67850FA764C0384CLL) ^ 0x6C09FB69354FB2CFLL) >> STACK[0x5280]) ^ v20[9]) + 6213569;
  *(STACK[0x57C0] + 403) = *(STACK[0x57C0] + v186 - 5816 * (((11815591 * v186) >> 32) >> 4));
  LODWORD(v185) = *v1 & 0xFFFFFFF8;
  v188 = *v3;
  v189 = *(*v3 + (v185 & (STACK[0x52A8] + 2050767130)));
  v190 = (v189 + STACK[0x5110]) ^ 0xB88801D4E1C76353;
  v191 = v190 ^ __ROR8__(v189, 61);
  v192 = (__ROR8__(v190, 8) + v191) ^ 0x38C8B16AE7056877;
  v193 = v192 ^ __ROR8__(v191, 61);
  v194 = (__ROR8__(v192, 8) + v193) ^ 0xE580B17D8CC5E551;
  v195 = v194 ^ __ROR8__(v193, 61);
  v196 = (__ROR8__(v194, 8) + v195) ^ 0xE1A1FD5BD155F97ALL;
  v197 = v196 ^ __ROR8__(v195, 61);
  v198 = (__ROR8__(v196, 8) + v197) ^ 0xDA604B0C03A2BF99;
  v199 = v198 ^ __ROR8__(v197, 61);
  v200 = __ROR8__(v198, 8);
  v201 = (v200 + v199 - ((2 * (v200 + v199)) & 0x33FAEE76CA4B8DA2) + 0x19FD773B6525C6D1) ^ 0xE3C895F6AE1BF716;
  v202 = v201 ^ __ROR8__(v199, 61);
  v203 = (__ROR8__(v201, 8) + v202) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(v202) = 4843 * ((((__ROR8__(v203, 8) + (v203 ^ __ROR8__(v202, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5108]) ^ v20[10]) + 6213569;
  LODWORD(v203) = v185 & ((STACK[0x5270] | 0x36A1AD6F) + 2050767130 + (STACK[0x5270] | 0xC95E5291));
  LOBYTE(v185) = *(STACK[0x57C0] + v202 - 5816 * (((11815591 * v202) >> 32) >> 4));
  *STACK[0x5680] = v185;
  v204 = *(v188 + v203);
  v205 = (v204 + STACK[0x5268]) ^ 0xB88801D4E1C76353;
  v206 = v205 ^ __ROR8__(v204, 61);
  v207 = __ROR8__(v205, 8);
  v208 = (v207 + v206 - ((2 * (v207 + v206)) & 0xF35AB482E98875F6) + 0x79AD5A4174C43AFBLL) ^ 0x4165EB2B93C1528CLL;
  v209 = v208 ^ __ROR8__(v206, 61);
  v210 = __ROR8__(v208, 8);
  v211 = (((2 * (v210 + v209)) & 0xF42C232C3FB2C8AELL) - (v210 + v209) - 0x7A1611961FD96458) ^ 0x60695F146CE37EF9;
  v212 = v211 ^ __ROR8__(v209, 61);
  v213 = (__ROR8__(v211, 8) + v212) ^ 0xE1A1FD5BD155F97ALL;
  v214 = v213 ^ __ROR8__(v212, 61);
  v215 = (__ROR8__(v213, 8) + v214) ^ 0xDA604B0C03A2BF99;
  v216 = v215 ^ __ROR8__(v214, 61);
  v217 = (__ROR8__(v215, 8) + v216) ^ 0xFA35E2CDCB3E31C7;
  v218 = v217 ^ __ROR8__(v216, 61);
  v219 = __ROR8__(v217, 8);
  v220 = (v219 + v218 - ((2 * (v219 + v218)) & 0xD8772C3B6613E942) + 0x6C3B961DB309F4A1) ^ 0xBECB9AFB93EC270FLL;
  v221 = v220 ^ __ROR8__(v218, 61);
  v222 = __ROR8__(v220, 8);
  LODWORD(v221) = 4843 * ((((((2 * (v222 + v221)) | 0x5DCA554A7B6D4B28) - (v222 + v221) - 0x2EE52AA53DB6A594) ^ 0xDA96219493C6D0EFLL) >> STACK[0x5248]) ^ v20[11]) + 6213569;
  *STACK[0x56C0] = *(STACK[0x57C0] + v221 - 5816 * (((11815591 * v221) >> 32) >> 4));
  LODWORD(v220) = *v1 & 0xFFFFFFF8;
  v223 = *v3;
  v224 = *(*v3 + (v220 & ((STACK[0x50E0] ^ 0xB87A232C) + (STACK[0x50D0] & 0x70F44650) - 1044245010)));
  v225 = (((2 * (v224 + STACK[0x50D8])) | 0x5B0B3EF0AB9BC1BCLL) - (v224 + STACK[0x50D8]) + 0x527A6087AA321F22) ^ 0x150D9EACB40A838DLL;
  v226 = v225 ^ __ROR8__(v224, 61);
  v227 = (__ROR8__(v225, 8) + v226) ^ 0x38C8B16AE7056877;
  v228 = v227 ^ __ROR8__(v226, 61);
  v229 = __ROR8__(v227, 8);
  v230 = (((2 * (v229 + v228)) & 0xB56478917E764232) - (v229 + v228) - 0x5AB23C48BF3B211ALL) ^ 0x40CD72CACC013BB7;
  v231 = v230 ^ __ROR8__(v228, 61);
  v232 = (__ROR8__(v230, 8) + v231) ^ 0xE1A1FD5BD155F97ALL;
  v233 = v232 ^ __ROR8__(v231, 61);
  v234 = (__ROR8__(v232, 8) + v233) ^ 0xDA604B0C03A2BF99;
  v235 = v234 ^ __ROR8__(v233, 61);
  v236 = (__ROR8__(v234, 8) + v235) ^ 0xFA35E2CDCB3E31C7;
  v237 = v236 ^ __ROR8__(v235, 61);
  v238 = (__ROR8__(v236, 8) + v237) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(v237) = (((__ROR8__(v238, 8) + (v238 ^ __ROR8__(v237, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x50C8]);
  LODWORD(v237) = 4843 * (2 * ((v237 ^ v20[12]) & 3) + (v237 ^ v20[12] ^ 0x503));
  LODWORD(v220) = v220 & (-2026662941 * (((1991920075 * STACK[0x5260]) & 0xE0723738) + ((1991920075 * STACK[0x5260]) | 0xE072373F)) - 1532031171);
  *(STACK[0x57C0] + 3410) = *(STACK[0x57C0] + v237 - 5816 * (((11815591 * v237) >> 32) >> 4));
  v239 = *(v223 + v220);
  v240 = (v239 + STACK[0x5258]) ^ 0xB88801D4E1C76353;
  v241 = v240 ^ __ROR8__(v239, 61);
  v242 = __ROR8__(v240, 8);
  v243 = (((2 * (v242 + v241)) & 0x8F9523E7D2C89B64) - (v242 + v241) - 0x47CA91F3E9644DB3) ^ 0x80FDDF66F19EDA3ALL;
  v244 = v243 ^ __ROR8__(v241, 61);
  v245 = (__ROR8__(v243, 8) + v244) ^ 0xE580B17D8CC5E551;
  v246 = v245 ^ __ROR8__(v244, 61);
  v247 = (__ROR8__(v245, 8) + v246) ^ 0xE1A1FD5BD155F97ALL;
  v248 = v247 ^ __ROR8__(v246, 61);
  v249 = __ROR8__(v247, 8);
  v250 = (((2 * (v249 + v248)) | 0xE1C4ADA2945FB65CLL) - (v249 + v248) - 0x70E256D14A2FDB2ELL) ^ 0xAA821DDD498D64B7;
  v251 = v250 ^ __ROR8__(v248, 61);
  v252 = (__ROR8__(v250, 8) + v251) ^ 0xFA35E2CDCB3E31C7;
  v253 = v252 ^ __ROR8__(v251, 61);
  v254 = (__ROR8__(v252, 8) + v253) ^ 0xD2F00CE620E5D3AELL;
  v255 = v254 ^ __ROR8__(v253, 61);
  v256 = __ROR8__(v254, 8);
  LODWORD(v255) = 4843 * ((((((v256 + v255) | 0xF7FEA54DFAEABB78) - ((v256 + v255) | 0x8015AB205154487) + 0x8015AB205154487) ^ 0x38DAE7C549ACE03) >> STACK[0x5250]) ^ v20[13]) + 6213569;
  *(STACK[0x57C0] + 2415) = *(STACK[0x57C0] + v255 - 5816 * (((11815591 * v255) >> 32) >> 4));
  v257 = *v1;
  v258 = *v3;
  v259 = *(*v3 + (v257 & STACK[0x5240]));
  v260 = (v259 + STACK[0x5238]) ^ 0xB88801D4E1C76353;
  v261 = v260 ^ __ROR8__(v259, 61);
  v262 = (__ROR8__(v260, 8) + v261) ^ 0x38C8B16AE7056877;
  v263 = v262 ^ __ROR8__(v261, 61);
  v264 = __ROR8__(v262, 8);
  v265 = (((v264 + v263) | 0x3503B6F8121F9B69) - ((v264 + v263) | 0xCAFC4907EDE06496) - 0x3503B6F8121F9B6ALL) ^ 0xD08307859EDA7E38;
  v266 = v265 ^ __ROR8__(v263, 61);
  v267 = __ROR8__(v265, 8);
  v268 = (((2 * (v267 + v266)) & 0xCFAFA8EDB6B21520) - (v267 + v266) - 0x67D7D476DB590A91) ^ 0x7989D6D2F5F30C15;
  v269 = v268 ^ __ROR8__(v266, 61);
  v270 = (__ROR8__(v268, 8) + v269) ^ 0xDA604B0C03A2BF99;
  v271 = v270 ^ __ROR8__(v269, 61);
  v272 = __ROR8__(v270, 8);
  v273 = (((v272 + v271) | 0xE6C6BB698844863CLL) - ((v272 + v271) | 0x1939449677BB79C3) + 0x1939449677BB79C3) ^ 0x1CF359A4437AB7FBLL;
  v274 = v273 ^ __ROR8__(v271, 61);
  v275 = __ROR8__(v273, 8);
  v276 = (((v275 + v274) | 0x2B3687E5CCD4314FLL) - ((v275 + v274) | 0xD4C9781A332BCEB0) - 0x2B3687E5CCD43150) ^ 0xF9C68B03EC31E2E1;
  LODWORD(v274) = 4843 * ((((__ROR8__(v276, 8) + (v276 ^ __ROR8__(v274, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5220]) ^ v20[14]) + 6213569;
  v277 = STACK[0x53F8];
  *(STACK[0x57C0] + 1420) = *(STACK[0x57C0] + v274 - 5816 * (((11815591 * v274) >> 32) >> 4));
  v278 = *(v258 + (v257 & ((v277 & 0xA35BF247) + (v277 | 0xA35BF240) - 689944872)));
  v279 = (v278 + STACK[0x5550]) ^ 0xB88801D4E1C76353;
  v280 = v279 ^ __ROR8__(v278, 61);
  v281 = __ROR8__(v279, 8);
  v282 = __ROR8__((((v281 + v280) | 0x375561C9AD6E6592) - ((v281 + v280) | 0xC8AA9E3652919A6DLL) - 0x375561C9AD6E6593) ^ 0xF9DD0A34A6B0DE5, 8);
  v283 = (((v281 + v280) | 0x375561C9AD6E6592) - ((v281 + v280) | 0xC8AA9E3652919A6DLL) - 0x375561C9AD6E6593) ^ 0xF9DD0A34A6B0DE5 ^ __ROR8__(v280, 61);
  v284 = (v282 + v283) ^ 0xE580B17D8CC5E551;
  v285 = v284 ^ __ROR8__(v283, 61);
  v286 = __ROR8__(v284, 8);
  v287 = (((2 * (v286 + v285)) | 0xF70A5C5AC1E3ED20) - (v286 + v285) - 0x7B852E2D60F1F690) ^ 0x9A24D376B1A40FEALL;
  v288 = v287 ^ __ROR8__(v285, 61);
  v289 = (__ROR8__(v287, 8) + v288) ^ 0xDA604B0C03A2BF99;
  v290 = v289 ^ __ROR8__(v288, 61);
  v291 = (__ROR8__(v289, 8) + v290) ^ 0xFA35E2CDCB3E31C7;
  v292 = v291 ^ __ROR8__(v290, 61);
  v293 = __ROR8__(v291, 8);
  v294 = (((2 * (v293 + v292)) | 0xB8D835668005A902) - (v293 + v292) + 0x2393E54CBFFD2B7FLL) ^ 0xE9C165560E7072FLL;
  v295 = v294 ^ __ROR8__(v292, 61);
  v296 = __ROR8__(v294, 8);
  v297 = ((((2 * (v296 + v295)) & 0xF02B3B3CC0AAFCA2) - (v296 + v295) + 0x7EA62619FAA81AELL) ^ 0xF399695031DAF4D5) >> STACK[0x5540];
  LOBYTE(v295) = v20[15];
  v298 = *(*v3 + ((((v277 ^ 0xBE4AFC2D) - 1141820016 + (STACK[0x53F0] & 0x7C95F850) + 1885) & *v1) & 0xFFFFFFFFFFFFFFF8));
  v299 = (v298 + STACK[0x5550] - ((2 * (v298 + STACK[0x5550])) & 0x74769FBA2C44C3CELL) - 0x45C4B022E9DD9E19) ^ 0x2B34E09F7E502B4;
  v300 = v299 ^ __ROR8__(v298, 61);
  v301 = __ROR8__(v299, 8);
  LODWORD(v185) = ((v297 ^ v295) >> (~v185 & 6)) >> (v185 & 4) >> (v185 & 2);
  v302 = (((v301 + v300) | 0xEDA75C3BA5A4FE9ALL) - ((v301 + v300) | 0x1258A3C45A5B0165) + 0x1258A3C45A5B0165) ^ 0xD56FED5142A196EDLL;
  v303 = v302 ^ __ROR8__(v300, 61);
  v304 = (__ROR8__(v302, 8) + v303) ^ 0xE580B17D8CC5E551;
  v305 = v304 ^ __ROR8__(v303, 61);
  v306 = (__ROR8__(v304, 8) + v305) ^ 0xE1A1FD5BD155F97ALL;
  v307 = v306 ^ __ROR8__(v305, 61);
  v308 = __ROR8__(v306, 8);
  v309 = (((2 * (v308 + v307)) & 0xE74204F0911E97F0) - (v308 + v307) + 0xC5EFD87B770B407) ^ 0xD63EB68BB4D20B9ELL;
  v310 = v309 ^ __ROR8__(v307, 61);
  v311 = __ROR8__(v309, 8);
  v312 = (((2 * (v311 + v310)) & 0xCE16BF80E410A71CLL) - (v311 + v310) + 0x18F4A03F8DF7AC71) ^ 0xE2C142F246C99DB6;
  v313 = v312 ^ __ROR8__(v310, 61);
  v314 = (__ROR8__(v312, 8) + v313) ^ 0xD2F00CE620E5D3AELL;
  v315 = v314 ^ __ROR8__(v313, 61);
  v316 = __ROR8__(v314, 8);
  LODWORD(v295) = 4843 * (((v185 ^ (4 * ((((((2 * ((v316 + v315) ^ 0xBBC0B61FC0264D11)) | 0xBA5B29B377059908) - ((v316 + v315) ^ 0xBBC0B61FC0264D11) - 0x5D2D94D9BB82CC84) ^ 0x129E29F7D5D4F4EELL) >> STACK[0x5540]) ^ v295))) >> 2) | (v185 << 6)) + 6213569;
  v317 = STACK[0x5770];
  LODWORD(v185) = 4843 * LODWORD(STACK[0x5770]) + 6213569;
  LODWORD(v314) = 4843 * LODWORD(STACK[0x5218]) + 6213569 - 5816 * (((11815591 * (4843 * LODWORD(STACK[0x5218]) + 6213569)) >> 32) >> 4);
  *(STACK[0x57C0] + 425) = *(STACK[0x57C0] + v295 - 5816 * (((11815591 * v295) >> 32) >> 4));
  *STACK[0x56E0] = *(STACK[0x57C0] + v314);
  LODWORD(v295) = *(STACK[0x57C0] + v185 - 5816 * (((11815591 * v185) >> 32) >> 4));
  v318 = ((((v295 >> 6) | (4 * v295)) ^ 0x27) >> 2) | ((((v295 >> 6) | (4 * v295)) ^ 0x27) << 6);
  v319 = STACK[0x5790];
  LODWORD(v295) = 4843 * LODWORD(STACK[0x5790]) + 6213569;
  v320 = v295 - 5816 * (((11815591 * v295) >> 32) >> 4);
  LODWORD(v295) = 4843 * LODWORD(STACK[0x5780]) + 6213569;
  v321 = v295 - 5816 * (((11815591 * v295) >> 32) >> 4);
  v322 = 4843 * LODWORD(STACK[0x5228]) + 6213569 - 5816 * (((11815591 * (4843 * LODWORD(STACK[0x5228]) + 6213569)) >> 32) >> 4);
  v323 = (4843 * LODWORD(STACK[0x5230]) + 6213569) % 0x16B8u;
  v324 = 4843 * LODWORD(STACK[0x5290]) + 6213569 - 5816 * (((11815591 * (4843 * LODWORD(STACK[0x5290]) + 6213569)) >> 32) >> 4);
  v325 = 4843 * LODWORD(STACK[0x55D0]) + 6213569 - 5816 * (((11815591 * (4843 * LODWORD(STACK[0x55D0]) + 6213569)) >> 32) >> 4);
  v326 = 4843 * LODWORD(STACK[0x55E0]) + 6213569 - 5816 * (((11815591 * (4843 * LODWORD(STACK[0x55E0]) + 6213569)) >> 32) >> 4);
  v327 = 4843 * BYTE2(v317) + 6213569 - 11632 * (((11815591 * (4843 * BYTE2(v317) + 6213569)) >> 32) >> 5);
  if (v327 >> 3 >= 0x2D7)
  {
    v327 -= 5816;
  }

  v328 = 4843 * BYTE2(LODWORD(STACK[0x5780])) + 6213569 - 5816 * (((11815591 * (4843 * BYTE2(LODWORD(STACK[0x5780])) + 6213569)) >> 32) >> 4);
  v329 = 4843 * LODWORD(STACK[0x5298]) + 6213569 - 5816 * (((11815591 * (4843 * LODWORD(STACK[0x5298]) + 6213569)) >> 32) >> 4);
  v330 = 4843 * LODWORD(STACK[0x52B8]) + 6213569 - 5816 * (((11815591 * (4843 * LODWORD(STACK[0x52B8]) + 6213569)) >> 32) >> 4);
  v331 = 4843 * LODWORD(STACK[0x52A0]) + 6213569 - 5816 * (((11815591 * (4843 * LODWORD(STACK[0x52A0]) + 6213569)) >> 32) >> 4);
  v332 = 4843 * LODWORD(STACK[0x52B0]) + 6213569 - 5816 * (((11815591 * (4843 * LODWORD(STACK[0x52B0]) + 6213569)) >> 32) >> 4);
  *STACK[0x56D0] = v318 ^ 0xC9;
  *(STACK[0x57C0] + 3256) = *(STACK[0x57C0] + v321);
  *(STACK[0x57C0] + 2437) = *(STACK[0x57C0] + v320);
  *(STACK[0x57C0] + 1442) = *(STACK[0x57C0] + v324);
  *(STACK[0x57C0] + 447) = *(STACK[0x57C0] + v323);
  *STACK[0x56F0] = *(STACK[0x57C0] + v325);
  *STACK[0x5700] = *(STACK[0x57C0] + v326);
  *(STACK[0x57C0] + 3278) = *(STACK[0x57C0] + v322);
  *(STACK[0x57C0] + 2283) = *(STACK[0x57C0] + v327);
  *(STACK[0x57C0] + 1464) = *(STACK[0x57C0] + v328);
  *(STACK[0x57C0] + 469) = *(STACK[0x57C0] + 4843 * BYTE2(v319) + 6213569 - 5816 * (((11815591 * (4843 * BYTE2(v319) + 6213569)) >> 32) >> 4));
  *STACK[0x5710] = *(STACK[0x57C0] + v330);
  *STACK[0x5720] = *(STACK[0x57C0] + v331);
  *(STACK[0x57C0] + 3300) = *(STACK[0x57C0] + v329);
  *(STACK[0x57C0] + 2305) = *(STACK[0x57C0] + v332);
  v333 = *v1;
  v334 = *v3;
  v335 = *(*v3 + (v333 & STACK[0x5378]));
  v336 = (((v335 + STACK[0x5390]) | 0xF727471C1B1FFDC0) - ((v335 + STACK[0x5390]) | 0x8D8B8E3E4E0023FLL) + 0x8D8B8E3E4E0023FLL) ^ 0x4FAF46C8FAD89E93;
  v337 = v336 ^ __ROR8__(v335, 61);
  v338 = __ROR8__(v336, 8);
  v339 = __ROR8__((((2 * (v338 + v337)) & 0xE2DC5F188C664ABALL) - (v338 + v337) - 0x716E2F8C4633255ELL) ^ 0xB65961195EC9B2D5, 8);
  v340 = (((2 * (v338 + v337)) & 0xE2DC5F188C664ABALL) - (v338 + v337) - 0x716E2F8C4633255ELL) ^ 0xB65961195EC9B2D5 ^ __ROR8__(v337, 61);
  v341 = (((2 * (v339 + v340)) | 0x4A22CB0D508A9406) - (v339 + v340) + 0x5AEE9A7957BAB5FDLL) ^ 0x4091D4FB2480AF52;
  v342 = v341 ^ __ROR8__(v340, 61);
  v343 = (__ROR8__(v341, 8) + v342) ^ 0xE1A1FD5BD155F97ALL;
  v344 = v343 ^ __ROR8__(v342, 61);
  v345 = __ROR8__(v343, 8);
  v346 = (((2 * ((v345 + v344) ^ 0x21E7C660EB720AD5)) | 0x596CC991704C3766) - ((v345 + v344) ^ 0x21E7C660EB720AD5) + 0x53499B3747D9E44DLL) ^ 0x5731E9A450F6AEFFLL;
  v347 = v346 ^ __ROR8__(v344, 61);
  v348 = (__ROR8__(v346, 8) + v347) ^ 0xFA35E2CDCB3E31C7;
  v349 = v348 ^ __ROR8__(v347, 61);
  v350 = (__ROR8__(v348, 8) + v349) ^ 0xD2F00CE620E5D3AELL;
  v351 = *(*v3 + ((((STACK[0x5398] & 0x76D7F627) + (STACK[0x5398] | 0x76D7F625) + 56902389) & v333) & 0xFFFFFFFFFFFFFFF8));
  v352 = __ROR8__(v350, 8) + (v350 ^ __ROR8__(v349, 61));
  v353 = (v351 + STACK[0x5390]) ^ 0xB88801D4E1C76353;
  v354 = v353 ^ __ROR8__(v351, 61);
  v355 = (__ROR8__(v353, 8) + v354) ^ 0x38C8B16AE7056877;
  v356 = v355 ^ __ROR8__(v354, 61);
  v357 = (__ROR8__(v355, 8) + v356) ^ 0xE580B17D8CC5E551;
  v358 = v357 ^ __ROR8__(v356, 61);
  v359 = (__ROR8__(v357, 8) + v358) ^ 0xE1A1FD5BD155F97ALL;
  v360 = v359 ^ __ROR8__(v358, 61);
  v361 = (__ROR8__(v359, 8) + v360) ^ 0xDA604B0C03A2BF99;
  v362 = v361 ^ __ROR8__(v360, 61);
  v363 = __ROR8__(v361, 8);
  v364 = (v363 + v362 - ((2 * (v363 + v362)) & 0xE6874D597C27D5A8) - 0xCBC595341EC152CLL) ^ 0x9764461752DDB13;
  v365 = v364 ^ __ROR8__(v362, 61);
  v366 = (__ROR8__(v364, 8) + v365) ^ 0xD2F00CE620E5D3AELL;
  v367 = v366 ^ __ROR8__(v365, 61);
  v368 = __ROR8__(v366, 8);
  v369 = ((((2 * ((v368 + v367) ^ 0x44F2F096E23BBEE2)) | 0x5FC2788A59CB18A0) - ((v368 + v367) ^ 0x44F2F096E23BBEE2) + 0x501EC3BAD31A73B0) ^ 0x1F60C7E260AE47C9) >> STACK[0x53A0];
  v370 = STACK[0x4948];
  LODWORD(v367) = *(STACK[0x4948] + 4);
  HIDWORD(v368) = (((v352 - ((2 * v352) & 0x1BCCADEFF1A2B89CLL) + 0xDE656F7F8D15C4ELL) ^ 0xF9955DC656A12935) >> STACK[0x53A0]) ^ v367;
  LODWORD(v368) = (v369 ^ v367) << 24;
  v371 = v368 >> 25;
  v372 = v333 & 0xFFFFFFF8;
  v373 = *(*v3 + (v333 & 0xFFFFFFF8 & ((STACK[0x5358] ^ 0xBA9092D4) + 885835588 + ((2 * STACK[0x5358]) | 0x8ADEDA57) + 1195)));
  v374 = (v373 + STACK[0x5368]) ^ 0xB88801D4E1C76353;
  v375 = v374 ^ __ROR8__(v373, 61);
  v376 = __ROR8__(v374, 8);
  v377 = (((v376 + v375) | 0x17DAAB7E88EA1464) - ((v376 + v375) | 0xE82554817715EB9BLL) - 0x17DAAB7E88EA1465) ^ 0x2F121A146FEF7C13;
  v378 = v377 ^ __ROR8__(v375, 61);
  v379 = __ROR8__(v377, 8);
  v380 = (((2 * (v379 + v378)) | 0x7EF3CE87F6EC62DELL) - (v379 + v378) + 0x408618BC0489CE91) ^ 0x5AF9563E77B3D43ELL;
  v381 = v380 ^ __ROR8__(v378, 61);
  v382 = (__ROR8__(v380, 8) + v381) ^ 0xE1A1FD5BD155F97ALL;
  v383 = v382 ^ __ROR8__(v381, 61);
  v384 = __ROR8__(v382, 8);
  v385 = (((2 * (v384 + v383)) | 0x56D52A3044D06EA4) - (v384 + v383) - 0x2B6A951822683752) ^ 0xF10ADE1421CA88CBLL;
  v386 = v385 ^ __ROR8__(v383, 61);
  v387 = __ROR8__(v385, 8);
  v388 = __ROR8__((((2 * (v387 + v386)) & 0x32DE0C1C295FBD98) - (v387 + v386) + 0x6690F9F1EB502133) ^ 0x9CA51B3C206E10F4, 8);
  v389 = (((2 * (v387 + v386)) & 0x32DE0C1C295FBD98) - (v387 + v386) + 0x6690F9F1EB502133) ^ 0x9CA51B3C206E10F4 ^ __ROR8__(v386, 61);
  v390 = (v388 + v389) ^ 0xD2F00CE620E5D3AELL;
  v391 = *(*v3 + (v333 & STACK[0x5350]));
  v392 = (v391 + STACK[0x5368]) ^ 0xB88801D4E1C76353;
  v393 = v392 ^ __ROR8__(v391, 61);
  v394 = (__ROR8__(v392, 8) + v393) ^ 0x38C8B16AE7056877;
  v395 = v394 ^ __ROR8__(v393, 61);
  v396 = (__ROR8__(v394, 8) + v395) ^ 0xE580B17D8CC5E551;
  v397 = v396 ^ __ROR8__(v395, 61);
  v398 = __ROR8__(v390, 8) + (v390 ^ __ROR8__(v389, 61));
  v399 = (__ROR8__(v396, 8) + v397) ^ 0xE1A1FD5BD155F97ALL;
  v400 = v399 ^ __ROR8__(v397, 61);
  v401 = (__ROR8__(v399, 8) + v400) ^ 0xDA604B0C03A2BF99;
  v402 = v401 ^ __ROR8__(v400, 61);
  v403 = __ROR8__(v401, 8);
  v404 = (((2 * (v403 + v402)) | 0x8C6BC06381F9A600) - (v403 + v402) - 0x4635E031C0FCD300) ^ 0xBC0002FC0BC2E2C7;
  v405 = v404 ^ __ROR8__(v402, 61);
  v406 = (__ROR8__(v404, 8) + v405) ^ 0xD2F00CE620E5D3AELL;
  v407 = ((__ROR8__(v406, 8) + (v406 ^ __ROR8__(v405, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5360];
  LODWORD(v405) = *(STACK[0x4948] + 10);
  HIDWORD(v403) = (((((2 * v398) & 0x4793AB8F8FCFB260) - v398 + 0x5C362A38381826CFLL) ^ 0xA8452109966853B4) >> STACK[0x5360]) ^ v405;
  LODWORD(v403) = (v407 ^ v405) << 24;
  LODWORD(STACK[0x5780]) = v403 >> 25;
  v408 = *(v334 + (v333 & 0xFFFFFFF8 & ((STACK[0x55B0] & 0x84AA09A8) - 174968981 + (STACK[0x55B0] | 0x84AA09AF))));
  v409 = (((2 * (v408 + STACK[0x55A0])) & 0x46A76C63246528B6) - (v408 + STACK[0x55A0]) + 0x5CAC49CE6DCD6BA4) ^ 0xE424481A8C0A08F7;
  v410 = v409 ^ __ROR8__(v408, 61);
  v411 = __ROR8__(v409, 8);
  v412 = (v411 + v410 - ((2 * (v411 + v410)) & 0xF703F03F2E524490) - 0x47E07E068D6DDB8) ^ 0xC3494975702C4A3FLL;
  v413 = v412 ^ __ROR8__(v410, 61);
  v414 = __ROR8__(v412, 8);
  v415 = (((2 * (v414 + v413)) & 0xCAECE6CB696D9CFCLL) - (v414 + v413) + 0x1A898C9A4B493181) ^ 0xFF093DE7C78CD4D0;
  v416 = v415 ^ __ROR8__(v413, 61);
  v417 = (__ROR8__(v415, 8) + v416) ^ 0xE1A1FD5BD155F97ALL;
  v418 = v417 ^ __ROR8__(v416, 61);
  v419 = __ROR8__(v417, 8);
  v420 = (((v419 + v418) | 0xB9C7C86CD30BBC09) - ((v419 + v418) | 0x463837932CF443F6) + 0x463837932CF443F6) ^ 0x63A78360D0A90390;
  v421 = v420 ^ __ROR8__(v418, 61);
  v422 = (__ROR8__(v420, 8) + v421) ^ 0xFA35E2CDCB3E31C7;
  v423 = v422 ^ __ROR8__(v421, 61);
  v424 = (__ROR8__(v422, 8) + v423) ^ 0xD2F00CE620E5D3AELL;
  v425 = v424 ^ __ROR8__(v423, 61);
  v426 = __ROR8__(v424, 8);
  LOBYTE(v396) = (((v371 ^ 0xFFFFFFB5) & 0x80) != 0) | (2 * (v371 ^ 0xB5));
  v427 = ((v426 + v425) | 0x6E40AE53635C66F6) - ((v426 + v425) | 0x91BF51AC9CA39909);
  v428 = *(v334 + (v333 & 0xFFFFFFF8 & ((STACK[0x5430] ^ 0xBAB6971D) + (STACK[0x5420] & 0x756D2E30) - 1081761283)));
  v429 = (v428 + STACK[0x5570]) ^ 0xB88801D4E1C76353;
  v430 = v429 ^ __ROR8__(v428, 61);
  v431 = (__ROR8__(v429, 8) + v430) ^ 0x38C8B16AE7056877;
  v432 = v431 ^ __ROR8__(v430, 61);
  v433 = (__ROR8__(v431, 8) + v432) ^ 0xE580B17D8CC5E551;
  v434 = v433 ^ __ROR8__(v432, 61);
  v435 = (__ROR8__(v433, 8) + v434) ^ 0xE1A1FD5BD155F97ALL;
  v436 = v435 ^ __ROR8__(v434, 61);
  v437 = (__ROR8__(v435, 8) + v436) ^ 0xDA604B0C03A2BF99;
  v438 = v437 ^ __ROR8__(v436, 61);
  v439 = (__ROR8__(v437, 8) + v438) ^ 0xFA35E2CDCB3E31C7;
  v440 = v439 ^ __ROR8__(v438, 61);
  v441 = __ROR8__(v439, 8);
  v442 = *v370 ^ 0x7A ^ (((v427 - 0x6E40AE53635C66F7) ^ 0x9A33A562CD2C138DLL) >> STACK[0x55C0]);
  v443 = (v441 + v440 - ((2 * (v441 + v440)) & 0x89FDDAA15A05B252) - 0x3B0112AF52FD26D7) ^ 0x160EE1B68DE70A87;
  v444 = *(v334 + (v333 & 0xFFFFFFF8 & ((STACK[0x5310] | LODWORD(STACK[0x1094])) + LODWORD(STACK[0x5760]) + (STACK[0x5310] | 0x4E66C5D0))));
  v445 = (((v444 + STACK[0x5308]) ^ 0x13E9F6C70F34952) - ((2 * ((v444 + STACK[0x5308]) ^ 0x13E9F6C70F34952)) & 0x64FBC4E7CC3F49BCLL) - 0x4D821D8C19E05B22) ^ 0xBCB7CCB772B8EDFLL;
  v446 = v445 ^ __ROR8__(v444, 61);
  v447 = (__ROR8__(v445, 8) + v446) ^ 0x38C8B16AE7056877;
  v448 = v447 ^ __ROR8__(v446, 61);
  LODWORD(v440) = v370[1] ^ 0xB4 ^ (((__ROR8__(v443, 8) + (v443 ^ __ROR8__(v440, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5560]);
  v449 = (__ROR8__(v447, 8) + v448) ^ 0xE580B17D8CC5E551;
  v450 = v449 ^ __ROR8__(v448, 61);
  v451 = __ROR8__(v449, 8);
  v452 = (((v451 + v450) | 0x2E5B9198DE079512) - ((v451 + v450) | 0xD1A46E6721F86AEDLL) - 0x2E5B9198DE079513) ^ 0xCFFA6CC30F526C68;
  v453 = v452 ^ __ROR8__(v450, 61);
  v454 = (__ROR8__(v452, 8) + v453) ^ 0xDA604B0C03A2BF99;
  v455 = v454 ^ __ROR8__(v453, 61);
  v456 = __ROR8__(v454, 8);
  v457 = (((v456 + v455) ^ 0x636BDA9CEC4C1BFLL) - ((2 * ((v456 + v455) ^ 0x636BDA9CEC4C1BFLL)) & 0xAA7A63C0E05CDC1CLL) - 0x2AC2CE1F8FD191F2) ^ 0x293E6E8475D49E76;
  v458 = v457 ^ __ROR8__(v455, 61);
  v459 = (__ROR8__(v457, 8) + v458) ^ 0xD2F00CE620E5D3AELL;
  v460 = v459 ^ __ROR8__(v458, 61);
  v461 = __ROR8__(v459, 8);
  v462 = ((((2 * (v461 + v460)) & 0x40A04338C9368784) - (v461 + v460) + 0x5FAFDE639B64BC3DLL) ^ 0xABDCD5523514C946) >> STACK[0x5300];
  v463 = *(v334 + (v333 & ((STACK[0x5460] ^ 0x41ABC348) + (LODWORD(STACK[0x5750]) | 0x7CA8796B) - 1142424475)));
  v464 = (v463 + STACK[0x5450]) ^ 0xB88801D4E1C76353;
  v465 = v464 ^ __ROR8__(v463, 61);
  v466 = __ROR8__(v464, 8);
  v467 = (((2 * (v466 + v465)) | 0x29EDF7AB876AAB58) - (v466 + v465) - 0x14F6FBD5C3B555ACLL) ^ 0x2C3E4ABF24B03DDBLL;
  v468 = v467 ^ __ROR8__(v465, 61);
  v469 = __ROR8__(v467, 8);
  v470 = (((2 * (v469 + v468)) & 0x462F6AF09C029DB2) - (v469 + v468) + 0x5CE84A87B1FEB126) ^ 0xB968FBFA3D3B5477;
  v471 = v470 ^ __ROR8__(v468, 61);
  v472 = __ROR8__(v470, 8);
  v473 = (((v472 + v471) | 0xBA783DF8296AF54) - ((v472 + v471) | 0xF4587C207D6950ABLL) - 0xBA783DF8296AF55) ^ 0xEA067E8453C3562ELL;
  v474 = v473 ^ __ROR8__(v471, 61);
  v475 = (__ROR8__(v473, 8) + v474) ^ 0xDA604B0C03A2BF99;
  v476 = v475 ^ __ROR8__(v474, 61);
  v477 = v370[3] ^ v462;
  v478 = (__ROR8__(v475, 8) + v476) ^ 0xFA35E2CDCB3E31C7;
  v479 = v478 ^ __ROR8__(v476, 61);
  v480 = __ROR8__(v478, 8);
  v481 = (((2 * (v480 + v479)) & 0xE679122ED78BD7C8) - (v480 + v479) + 0xCC376E8943A141BLL) ^ 0xDE337A0EB4DFC7B5;
  v482 = *(v334 + ((((STACK[0x53D0] & 0xF4235D8) + 1794769729 + (STACK[0x53D0] | 0xF4235D9)) & v333) & 0xFFFFFFFFFFFFFFF8));
  v483 = __ROR8__(v481, 8) + (v481 ^ __ROR8__(v479, 61));
  v484 = (v482 + STACK[0x53D8]) ^ 0xB88801D4E1C76353;
  v485 = v484 ^ __ROR8__(v482, 61);
  v486 = __ROR8__(v484, 8);
  v487 = (((2 * (v486 + v485)) & 0x54C0CC4738A61138) - (v486 + v485) - 0x2A6066239C53089DLL) ^ 0xED5728B684A99F14;
  v488 = v487 ^ __ROR8__(v485, 61);
  v489 = __ROR8__(v487, 8);
  v490 = (v489 + v488 - ((2 * (v489 + v488)) & 0x9AD331C0DE7AC204) - 0x3296671F90C29EFELL) ^ 0x28E9299DE3F88453;
  v491 = v490 ^ __ROR8__(v488, 61);
  v492 = __ROR8__(v490, 8);
  v493 = (((2 * ((v492 + v491) ^ 0xBDCC190379441371)) | 0x295167F3DC00EEFCLL) - ((v492 + v491) ^ 0xBDCC190379441371) + 0x6B574C0611FF8882) ^ 0xC8C557A146119D75;
  v494 = v493 ^ __ROR8__(v491, 61);
  v495 = (__ROR8__(v493, 8) + v494) ^ 0xDA604B0C03A2BF99;
  v496 = v495 ^ __ROR8__(v494, 61);
  v497 = __ROR8__(v495, 8);
  v498 = (((v497 + v496) | 0x13C55AECAC55B6B8) - ((v497 + v496) | 0xEC3AA51353AA4947) - 0x13C55AECAC55B6B9) ^ 0xE9F0B821676B877FLL;
  v499 = v498 ^ __ROR8__(v496, 61);
  LODWORD(v483) = v370[7] ^ 0x77 ^ ((((v483 | 0xDB3B72121512931CLL) - (v483 | 0x24C48DEDEAED6CE3) + 0x24C48DEDEAED6CE3) ^ 0x2F487923BB62E667) >> STACK[0x5440]);
  v500 = (__ROR8__(v498, 8) + v499) ^ 0xD2F00CE620E5D3AELL;
  v501 = v370[8] ^ 0x11 ^ (((__ROR8__(v500, 8) + (v500 ^ __ROR8__(v499, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x53E0]);
  LODWORD(STACK[0x5790]) = 4843 * (v396 ^ 0x7A) + 6213569 - 5816 * (((11815591 * (4843 * (v396 ^ 0x7Au) + 6213569)) >> 32) >> 4);
  v502 = *(v334 + (v333 & STACK[0x52F0]));
  v503 = (v502 + STACK[0x52E8]) ^ 0xB88801D4E1C76353;
  v504 = v503 ^ __ROR8__(v502, 61);
  v505 = (__ROR8__(v503, 8) + v504) ^ 0x38C8B16AE7056877;
  v506 = v505 ^ __ROR8__(v504, 61);
  v507 = __ROR8__(v505, 8);
  v508 = (((v507 + v506) | 0x306F2D87B6C83AA5) - ((v507 + v506) | 0xCF90D2784937C55ALL) - 0x306F2D87B6C83AA6) ^ 0xD5EF9CFA3A0DDFF4;
  v509 = v508 ^ __ROR8__(v506, 61);
  v510 = (__ROR8__(v508, 8) + v509) ^ 0xE1A1FD5BD155F97ALL;
  v511 = v510 ^ __ROR8__(v509, 61);
  v512 = (__ROR8__(v510, 8) + v511) ^ 0xDA604B0C03A2BF99;
  v513 = v512 ^ __ROR8__(v511, 61);
  v514 = __ROR8__(v512, 8);
  v515 = (v514 + v513 - ((2 * (v514 + v513)) & 0xDE45336B7DCC4526) + 0x6F2299B5BEE62293) ^ 0x95177B7875D81354;
  v516 = v515 ^ __ROR8__(v513, 61);
  v517 = __ROR8__(v515, 8);
  v518 = (((v517 + v516) | 0x9230ED12EB58E13ALL) - ((v517 + v516) | 0x6DCF12ED14A71EC5) + 0x6DCF12ED14A71EC5) ^ 0x40C0E1F4CBBD3294;
  LODWORD(v518) = v370[6] ^ 0x68 ^ (((__ROR8__(v518, 8) + (v518 ^ __ROR8__(v516, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x52F8]);
  v519 = 4843 * v440 + 6213569 - 5816 * (((11815591 * (4843 * v440 + 6213569)) >> 32) >> 4);
  v520 = *(v334 + (v333 & 0xFFFFFFF8 & (-37925779 * (((-1829069467 * STACK[0x5520]) | 0x75B58F5C) + ((-1829069467 * STACK[0x5520]) | 0x8A4A70A3)) + 2012841351)));
  v521 = (v520 + STACK[0x5510]) ^ 0xB88801D4E1C76353;
  v522 = v521 ^ __ROR8__(v520, 61);
  v523 = __ROR8__(v521, 8);
  v524 = (((2 * (v523 + v522)) & 0x3341D5F4BA21D36ELL) - (v523 + v522) + 0x665F1505A2EF1648) ^ 0x5E97A46F45EA7E3FLL;
  v525 = v524 ^ __ROR8__(v522, 61);
  v526 = (__ROR8__(v524, 8) + v525) ^ 0xE580B17D8CC5E551;
  v527 = v526 ^ __ROR8__(v525, 61);
  v528 = __ROR8__(v526, 8);
  v529 = (((2 * (v528 + v527)) & 0xD5203882BB4FCDF2) - (v528 + v527) - 0x6A901C415DA7E6FALL) ^ 0x74CE1EE5730DE07CLL;
  v530 = v529 ^ __ROR8__(v527, 61);
  v531 = __ROR8__(v529, 8);
  v532 = (((v531 + v530) | 0x32E3CAE116EC4C95) - ((v531 + v530) | 0xCD1C351EE913B36ALL) - 0x32E3CAE116EC4C96) ^ 0xE88381ED154EF30CLL;
  v533 = v532 ^ __ROR8__(v530, 61);
  v534 = (__ROR8__(v532, 8) + v533) ^ 0xFA35E2CDCB3E31C7;
  v535 = v534 ^ __ROR8__(v533, 61);
  v536 = __ROR8__(v534, 8);
  v537 = 4843 * (v477 ^ 0xFC) + 6213569 - 5816 * (((11815591 * (4843 * (v477 ^ 0xFCu) + 6213569)) >> 32) >> 4);
  v538 = (v536 + v535 - ((2 * (v536 + v535)) & 0x7F7C2FB60B02F3ACLL) - 0x4041E824FA7E862ALL) ^ 0x6D4E1B3D2564AA78;
  v539 = v538 ^ __ROR8__(v535, 61);
  v540 = __ROR8__(v538, 8);
  v541 = v370[13] ^ 0x5B ^ (((((2 * (v540 + v539)) | 0xC61158AB4BA49C6ALL) - (v540 + v539) + 0x1CF753AA5A2DB1CBLL) ^ 0x177BA7640BA23B4ELL) >> STACK[0x5530]);
  v542 = *(v334 + (v333 & STACK[0x5330]));
  v543 = (v542 + STACK[0x5580]) ^ 0xB88801D4E1C76353 ^ __ROR8__(v542, 61);
  v544 = __ROR8__((v542 + STACK[0x5580]) ^ 0xB88801D4E1C76353, 8);
  v545 = 4843 * v518 + 6213569 - 11632 * (((11815591 * (4843 * v518 + 6213569)) >> 32) >> 5);
  v546 = (v544 + v543) ^ 0x38C8B16AE7056877;
  v547 = v546 ^ __ROR8__(v543, 61);
  v548 = __ROR8__(v546, 8);
  v549 = (((2 * (v548 + v547)) & 0x88B316542EB19BF0) - (v548 + v547) - 0x44598B2A1758CDF9) ^ 0x5E26C5A86462D756;
  v550 = v549 ^ __ROR8__(v547, 61);
  v551 = __ROR8__(v549, 8);
  v552 = (((2 * ((v551 + v550) ^ 0x4F6EB03BF9AA4550)) | 0xA3A13E04490E9E2CLL) - ((v551 + v550) ^ 0x4F6EB03BF9AA4550) + 0x2E2F60FDDB78B0EALL) ^ 0x7F1FD2620C78F33CLL;
  v553 = v552 ^ __ROR8__(v550, 61);
  v554 = (__ROR8__(v552, 8) + v553) ^ 0xDA604B0C03A2BF99;
  v555 = v554 ^ __ROR8__(v553, 61);
  v556 = (__ROR8__(v554, 8) + v555) ^ 0xFA35E2CDCB3E31C7;
  v557 = v556 ^ __ROR8__(v555, 61);
  v558 = __ROR8__(v556, 8);
  v559 = 4843 * v483 + 6213569 - 5816 * (((11815591 * (4843 * v483 + 6213569)) >> 32) >> 4);
  v560 = (v558 + v557 - ((2 * (v558 + v557)) & 0xAB46D4C02105BB72) + 0x55A36A601082DDB9) ^ 0x8753668630670E17;
  v561 = *(v334 + (v333 & STACK[0x5370]));
  v562 = __ROR8__(v560, 8) + (v560 ^ __ROR8__(v557, 61));
  v563 = (v561 + STACK[0x5388]) ^ 0xB88801D4E1C76353;
  v564 = v563 ^ __ROR8__(v561, 61);
  v565 = (__ROR8__(v563, 8) + v564) ^ 0x38C8B16AE7056877;
  v566 = v565 ^ __ROR8__(v564, 61);
  v567 = (__ROR8__(v565, 8) + v566) ^ 0xE580B17D8CC5E551;
  v568 = v567 ^ __ROR8__(v566, 61);
  v569 = __ROR8__(v567, 8);
  v570 = (((2 * (v569 + v568)) & 0x5E9745BBAFAA1EEELL) - (v569 + v568) - 0x2F4BA2DDD7D50F78) ^ 0x3115A079F97F09F2;
  v571 = v570 ^ __ROR8__(v568, 61);
  v572 = __ROR8__(v570, 8);
  v573 = (((2 * (v572 + v571)) & 0x956B36FC99E885C0) - (v572 + v571) + 0x354A6481B30BBD1FLL) ^ 0xEF2A2F8DB0A90286;
  v574 = v573 ^ __ROR8__(v571, 61);
  v575 = (__ROR8__(v573, 8) + v574) ^ 0xFA35E2CDCB3E31C7;
  v576 = v575 ^ __ROR8__(v574, 61);
  v577 = __ROR8__(v575, 8);
  LODWORD(v575) = v370[2] ^ 0x11 ^ ((v562 ^ 0xF4730B31AE70757BLL) >> STACK[0x5590]);
  v578 = ((__ROR8__((v577 + v576) ^ 0xD2F00CE620E5D3AELL, 8) + ((v577 + v576) ^ 0xD2F00CE620E5D3AELL ^ __ROR8__(v576, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5380];
  v579 = *(v334 + (v333 & ((STACK[0x52E0] ^ 0x678863E4) + (STACK[0x52D0] & 0xCF10C7C0) + 313775412)));
  v580 = v370[9] ^ v578;
  v581 = (v579 + STACK[0x52C8]) ^ 0xB88801D4E1C76353;
  v582 = v581 ^ __ROR8__(v579, 61);
  v583 = (__ROR8__(v581, 8) + v582) ^ 0x38C8B16AE7056877;
  v584 = v583 ^ __ROR8__(v582, 61);
  v585 = (__ROR8__(v583, 8) + v584) ^ 0xE580B17D8CC5E551;
  v586 = v585 ^ __ROR8__(v584, 61);
  v587 = (__ROR8__(v585, 8) + v586) ^ 0xE1A1FD5BD155F97ALL;
  v588 = v587 ^ __ROR8__(v586, 61);
  v589 = __ROR8__(v587, 8);
  v590 = (((2 * (v589 + v588)) | 0xDB95375E92AC2792) - (v589 + v588) - 0x6DCA9BAF495613C9) ^ 0xB7AAD0A34AF4AC50;
  v591 = v590 ^ __ROR8__(v588, 61);
  v592 = (__ROR8__(v590, 8) + v591) ^ 0xFA35E2CDCB3E31C7;
  v593 = v592 ^ __ROR8__(v591, 61);
  v594 = __ROR8__(v592, 8);
  v595 = (((2 * (v594 + v593)) | 0xA47A6333984B651CLL) - (v594 + v593) - 0x523D3199CC25B28ELL) ^ 0x80CD3D7FECC06120;
  v596 = v595 ^ __ROR8__(v593, 61);
  v597 = __ROR8__(v595, 8);
  v598 = v370[12] ^ 0x66 ^ (((((2 * (v597 + v596)) & 0xB3E986234074E5A2) - (v597 + v596) + 0x260B3CEE5FC58D2ELL) ^ 0xD27837DFF1B5F855) >> STACK[0x52D8]);
  v599 = 4843 * v575 + 6213569 - 5816 * (((11815591 * (4843 * v575 + 6213569)) >> 32) >> 4);
  if (v545 >> 3 >= 0x2D7)
  {
    v600 = v545 - 5816;
  }

  else
  {
    v600 = v545;
  }

  v601 = *(v334 + (v333 & ((STACK[0x53C0] ^ 0x80054D60) + (LODWORD(STACK[0x53A8]) | 0xFFF5653B) - 96369027)));
  v602 = __ROR8__((v601 + STACK[0x53B0]) ^ 0xB88801D4E1C76353, 8);
  v603 = (v601 + STACK[0x53B0]) ^ 0xB88801D4E1C76353 ^ __ROR8__(v601, 61);
  v604 = (v602 + v603) ^ 0x38C8B16AE7056877;
  v605 = v604 ^ __ROR8__(v603, 61);
  v606 = (__ROR8__(v604, 8) + v605) ^ 0xE580B17D8CC5E551;
  v607 = v606 ^ __ROR8__(v605, 61);
  v608 = (__ROR8__(v606, 8) + v607) ^ 0xE1A1FD5BD155F97ALL;
  v609 = v608 ^ __ROR8__(v607, 61);
  v610 = (__ROR8__(v608, 8) + v609) ^ 0xDA604B0C03A2BF99;
  v611 = v610 ^ __ROR8__(v609, 61);
  v612 = __ROR8__(v610, 8);
  v613 = (((2 * (v612 + v611)) | 0x8D84BF4F133E6402) - (v612 + v611) - 0x46C25FA7899F3201) ^ 0xBCF7BD6A42A103C6;
  v614 = v613 ^ __ROR8__(v611, 61);
  v615 = __ROR8__(v613, 8);
  LODWORD(v613) = 4843 * v442 + 6213569 - 5816 * (((11815591 * (4843 * v442 + 6213569)) >> 32) >> 4);
  v616 = 4843 * (2 * ((v580 ^ 0xFE) & 3) + (v580 ^ 0x52D));
  LODWORD(v614) = 4843 * (v370[11] ^ (((__ROR8__((((2 * (v615 + v614)) & 0x9EC289E2A717876ALL) - (v615 + v614) - 0x4F6144F1538BC3B6) ^ 0x626EB7E88C91EFE4, 8) + ((((2 * (v615 + v614)) & 0x9EC289E2A717876ALL) - (v615 + v614) - 0x4F6144F1538BC3B6) ^ 0x626EB7E88C91EFE4 ^ __ROR8__(v614, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x53C8]) ^ 0x60) + 6213569;
  v617 = 4843 * v598 + 6213569 - 5816 * (((11815591 * (4843 * v598 + 6213569)) >> 32) >> 4);
  v618 = *(v334 + (v372 & (STACK[0x5410] + 2050767130)));
  v619 = (v618 + STACK[0x5400]) ^ 0xB88801D4E1C76353;
  v620 = v619 ^ __ROR8__(v618, 61);
  v621 = (__ROR8__(v619, 8) + v620) ^ 0x38C8B16AE7056877;
  v622 = v621 ^ __ROR8__(v620, 61);
  v623 = __ROR8__(v621, 8);
  v624 = (v623 + v622 - ((2 * (v623 + v622)) & 0xFFA32B74320E215ELL) - 0x2E6A45E6F8EF51) ^ 0x1A5124C795C2F5FELL;
  v625 = v624 ^ __ROR8__(v622, 61);
  v626 = (__ROR8__(v624, 8) + v625) ^ 0xE1A1FD5BD155F97ALL;
  v627 = v626 ^ __ROR8__(v625, 61);
  v628 = __ROR8__(v626, 8);
  v629 = (v628 + v627 - ((2 * (v628 + v627)) & 0x7A867D76DD211098) - 0x42BCC144916F77B4) ^ 0x672375B76D3237D5;
  v630 = v629 ^ __ROR8__(v627, 61);
  v631 = (__ROR8__(v629, 8) + v630) ^ 0xFA35E2CDCB3E31C7;
  v632 = v631 ^ __ROR8__(v630, 61);
  v633 = __ROR8__(v631, 8);
  v634 = (((2 * (v633 + v632)) & 0xBD4B20868EDC8C04) - (v633 + v632) + 0x215A6FBCB891B9FDLL) ^ 0xF3AA635A98746A53;
  LODWORD(v634) = v370[14] ^ 0xBB ^ (((__ROR8__(v634, 8) + (v634 ^ __ROR8__(v632, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5408]);
  v635 = *(v334 + (v333 & ((STACK[0x5340] ^ 0xAD32C6B4) + 661585873 + ((2 * STACK[0x5340]) | 0xA59A7293))));
  v636 = (v635 + STACK[0x5338]) ^ 0xB88801D4E1C76353;
  v637 = v636 ^ __ROR8__(v635, 61);
  v638 = (__ROR8__(v636, 8) + v637) ^ 0x38C8B16AE7056877;
  v639 = __ROR8__(v638, 8);
  v640 = v638 ^ __ROR8__(v637, 61);
  v641 = (((2 * (v639 + v640)) | 0xE3EB22B12FAE5E4) - (v639 + v640) - 0x71F5915897D72F2) ^ 0xE29FE86805B897A3;
  v642 = v641 ^ __ROR8__(v640, 61);
  v643 = (__ROR8__(v641, 8) + v642) ^ 0xE1A1FD5BD155F97ALL;
  v644 = v643 ^ __ROR8__(v642, 61);
  v645 = __ROR8__(v643, 8);
  LODWORD(v643) = *(STACK[0x57C0] + v519);
  LODWORD(v642) = *(STACK[0x57C0] + v616 - 5816 * (((11815591 * v616) >> 32) >> 4));
  v646 = *(STACK[0x57C0] + v600);
  v647 = *(STACK[0x57C0] + v559);
  v648 = 4843 * v541 + 6213569;
  v649 = v370[15];
  v650 = (((2 * (v645 + v644)) & 0xA55F1FACFE9DE0E4) - (v645 + v644) + 0x2D50702980B10F8DLL) ^ 0xF7303B258313B014;
  v651 = v650 ^ __ROR8__(v644, 61);
  v652 = __ROR8__(v650, 8);
  LODWORD(v650) = 4843 * v501 + 6213569;
  v653 = (v652 + v651) ^ 0xFA35E2CDCB3E31C7;
  v654 = v653 ^ __ROR8__(v651, 61);
  v655 = (__ROR8__(v653, 8) + v654) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(v654) = v370[5] ^ (((__ROR8__(v655, 8) + (v655 ^ __ROR8__(v654, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5348]) ^ 0x38;
  LODWORD(v655) = 4843 * v634 + 6213569;
  v656 = *(v334 + (v372 & ((STACK[0x5328] & 0x3DBE5468) + (STACK[0x5328] | 0x3DBE5469) + 1014883505)));
  v657 = (v656 + STACK[0x5320]) ^ 0xB88801D4E1C76353;
  v658 = v657 ^ __ROR8__(v656, 61);
  v659 = __ROR8__(v657, 8);
  v660 = (v659 + v658 - ((2 * (v659 + v658)) & 0x3D54DEE181DD3A80) - 0x6155908F3F1162C0) ^ 0xA662DE1A27EBF537;
  v661 = v660 ^ __ROR8__(v658, 61);
  v662 = __ROR8__(v660, 8);
  v663 = (v662 + v661 - ((2 * (v662 + v661)) & 0x2D146CFCC142C7ALL) - 0x7E975C9819F5E9C3) ^ 0x64E8121A6ACFF36CLL;
  v664 = v663 ^ __ROR8__(v661, 61);
  v665 = __ROR8__(v663, 8);
  v666 = (((2 * (v665 + v664)) & 0xA1253E280B6EE440) - (v665 + v664) - 0x50929F1405B77221) ^ 0x4ECC9DB02B1D74A5;
  v667 = v666 ^ __ROR8__(v664, 61);
  v668 = (__ROR8__(v666, 8) + v667) ^ 0xDA604B0C03A2BF99;
  v669 = __ROR8__(v668, 8);
  v670 = v668 ^ __ROR8__(v667, 61);
  v671 = (((2 * (v669 + v670)) & 0xD64B149AAFADDC20) - (v669 + v670) - 0x6B258A4D57D6EE11) ^ 0x6EEF977F63172028;
  v672 = v671 ^ __ROR8__(v670, 61);
  v673 = __ROR8__(v671, 8);
  v674 = (((2 * (v673 + v672)) & 0x6D542078466873AELL) - (v673 + v672) - 0x36AA103C233439D8) ^ 0x1BA5E325FC2E1586;
  LODWORD(v672) = v649 ^ (((__ROR8__(v674, 8) + (v674 ^ __ROR8__(v672, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5318]) ^ 0x80;
  LODWORD(v674) = 4843 * ((((STACK[0x5780] & 0x80) != 0) | (2 * LODWORD(STACK[0x5780]))) ^ 0x12) + 6213569;
  v675 = v650 - 5816 * (((11815591 * v650) >> 32) >> 4);
  LOBYTE(v650) = *(STACK[0x57C0] + v648 - 5816 * (((11815591 * v648) >> 32) >> 4));
  v676 = *(STACK[0x57C0] + 4843 * v654 + 6213569 - 5816 * (((11815591 * (4843 * v654 + 6213569)) >> 32) >> 4));
  LODWORD(v653) = *(STACK[0x57C0] + v613);
  v677 = *(STACK[0x57C0] + v599);
  v678 = v655 - 5816 * (((11815591 * v655) >> 32) >> 4);
  LODWORD(v655) = *(STACK[0x57C0] + v675);
  LODWORD(v613) = *(STACK[0x57C0] + v678);
  v679 = *(STACK[0x57C0] + 4843 * v672 + 6213569 - 5816 * (((11815591 * (4843 * v672 + 6213569)) >> 32) >> 4));
  v680 = v679 ^ v655;
  LODWORD(v655) = v679 ^ v655 ^ 0x12;
  LODWORD(v669) = (((v680 ^ 0x75) - 103) ^ ((v680 ^ 0x43) - 81) ^ ((v680 ^ 0x36) - 36)) - (((v655 ^ v613 ^ 0xFFFFFF94) + 108) ^ ((v655 ^ v613 ^ 0x68) - 104) ^ ((v655 ^ v613 ^ 0x29) - 41)) - 104;
  LODWORD(v654) = v669 & 0x5D ^ 0xFFFFFFDC;
  v681 = -78 - (((v613 ^ 0xFFFFFFCC) + 52) ^ ((v613 ^ 0xFFFFFFF7) + 9) ^ ((v613 ^ 0xFFFFFFFC) + 4));
  v682 = v681 & 0xFFFFFFB3 ^ 0x1E;
  v683 = v681 ^ v613 ^ v669 ^ (2 * (v654 ^ v682 ^ (v681 ^ 6) & (2 * ((v681 ^ 6) & (2 * ((v681 ^ 6) & (2 * ((v681 ^ 6) & (2 * ((v681 ^ 6) & (2 * ((v681 ^ 6) & (2 * v681) & 0xE ^ v682)) ^ v682)) ^ v682)) ^ v682)) ^ v682)) ^ (v669 ^ 0x24) & (2 * ((v669 ^ 0x24) & (2 * ((v669 ^ 0x24) & (2 * ((v669 ^ 0x24) & (2 * ((v669 ^ 0x24) & (2 * (((2 * v669) & 0x4A | 0x25) & v669)) ^ v654)) ^ v654)) ^ v654)) ^ v654))));
  LODWORD(v669) = *(STACK[0x57C0] + v614 - 5816 * (((11815591 * v614) >> 32) >> 4));
  v684 = v677 ^ v642 ^ v669;
  v685 = v613 ^ v653;
  v686 = *(STACK[0x57C0] + v674 - 5816 * (((11815591 * v674) >> 32) >> 4));
  LOBYTE(v614) = v686 ^ v684 ^ 0xF0;
  LOBYTE(v653) = v614 ^ v669;
  LOBYTE(v613) = v669 ^ v647;
  v687 = v669 ^ *(STACK[0x57C0] + v537);
  v688 = v687 ^ 0x10 ^ v650;
  LOBYTE(v654) = v614 ^ v669 ^ v685;
  LOBYTE(v669) = v654 ^ 0x37;
  LODWORD(v643) = v643 ^ v685 ^ 3;
  LOBYTE(v650) = v687 ^ 0x10 ^ *(STACK[0x57C0] + v617);
  LODWORD(v674) = v684 ^ 0xFFFFFFD5 ^ v655;
  LOBYTE(v617) = v654 ^ 0x37 ^ v687;
  v689 = (((v683 ^ 0x31) + 68) ^ ((v683 ^ 0x72) + 1) ^ ((v683 ^ 0x6A) + 25)) + (((v680 ^ 0xFFFFFF95) + 121) ^ ((v680 ^ 0xFFFFFFAE) + 68) ^ ((v680 ^ 0x3B) - 41));
  HIDWORD(v673) = v689 + 54;
  LODWORD(v673) = (v689 << 24) - 1241513984;
  LOBYTE(v683) = v643 ^ v646;
  LOBYTE(v685) = (v686 ^ v642) - ((2 * (v686 ^ v642)) & 0xE7) - 13;
  v690 = (((v673 >> 31) >> 1) | ((v673 >> 31) << 7)) ^ v674;
  v691 = v643 ^ v646 ^ v679;
  LOBYTE(v679) = v643 ^ v688;
  LOBYTE(v646) = v688 ^ v613 ^ v617;
  LOBYTE(v684) = ((v685 ^ 0xF4) - ((2 * (v685 ^ 0xF4)) & 0x6E) + 55) ^ v684 ^ 0xF0;
  LOBYTE(v689) = v617 ^ v614;
  LOBYTE(v681) = v617 ^ v614 ^ 0x24;
  v692 = v647 ^ v650 ^ *(STACK[0x57C0] + LODWORD(STACK[0x5790])) ^ v646 ^ 0xC7;
  LOBYTE(v655) = v684 ^ v654;
  LODWORD(v654) = v691 ^ 0x44 ^ v690;
  v693 = v691 ^ ~v690;
  v694 = STACK[0x57C0];
  HIDWORD(v673) = v654;
  LODWORD(v673) = v693 << 24;
  v695 = (v669 - 2 * (v669 & 3) + 3) ^ v683;
  LOBYTE(v683) = v695 ^ v681 ^ ((v685 ^ 0xF4) + ~(2 * ((v685 ^ 0xF4) & 0x5C ^ v685 & 8)) - 43);
  v694[1310] = v655 ^ v692 ^ 0x30;
  LODWORD(v643) = (((v673 >> 31) ^ 0xB1) >> 1) | (((v673 >> 31) ^ 0xFFFFFFB1) << 7);
  LOBYTE(v654) = v681 ^ v685;
  *STACK[0x55F0] = v681 ^ v685 ^ 0xE0;
  LOBYTE(v613) = v614 ^ v613;
  LOBYTE(v672) = v642 ^ v676 ^ v614;
  v694[491] = v695 ^ v679 ^ 0x23 ^ v655 ^ v692;
  LOBYTE(v642) = (((v613 & 0xE6 ^ 0x27) - 112) ^ ((v613 & 0xE6 ^ 0x1B) - 76) ^ ((v613 & 0xE6 ^ 0xDC) + 117)) + (((v613 & 0x19 ^ 0x83) - 84) ^ ((v613 & 0x19 ^ 0x3A) + 19) ^ ((v613 & 0x19 ^ 0xA9) - 126)) - 107;
  LOBYTE(v614) = v642 & 0xE5 ^ 0x8E;
  LOBYTE(v681) = v642 ^ 0x68;
  *STACK[0x5650] = v683 ^ 0xC0 ^ v690;
  *STACK[0x5630] = v655 ^ v674 ^ 0xF7;
  LOBYTE(v653) = v653 ^ v679;
  v694[2327] = v672 ^ 0x13 ^ v653;
  v694[337] = v642 ^ (2 * (v681 & (2 * (v681 & (2 * (v681 & (2 * (v681 & (2 * (v681 & (2 * (v642 & (2 * v642) & 0x52 ^ v614)) ^ v614)) ^ v614)) ^ v614)) ^ v614)) ^ v614)) ^ 0x22;
  v694[3322] = v692;
  *STACK[0x5620] = v654 ^ 0xD1 ^ (v643 - ((2 * v643) & 0xD2) - 23);
  *STACK[0x5610] = v653 ^ 0xE4 ^ v684;
  *STACK[0x5600] = v617 ^ 0xD4 ^ v695 ^ v679;
  v694[2349] = v647 ^ 0x13 ^ v679;
  v694[1332] = v683 ^ 0xC0;
  v694[359] = v646 ^ 0x21 ^ (v643 - ((2 * v643) & 0xD2) - 23);
  v694[1354] = v650 ^ v674 ^ v695 ^ v679 ^ 3;
  v694[3344] = v689 ^ v655 ^ v674 ^ 7;
  return (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x57A0])))(4294951661, 1750054477, 756197819, 4843, 6157, 4294957579, STACK[0x57B0], 5816);
}

uint64_t sub_10026CB6C@<X0>(uint64_t a1@<X8>)
{
  v1 = STACK[0x57D8];
  STACK[0xBDD0] = *(STACK[0x57D8] + 8 * a1);
  return (*(v1 + 8 * ((((a1 + 7858) | 0x24) ^ 0x1312) + a1)))();
}

void *sub_10026CBB8@<X0>(int a1@<W8>)
{
  v2 = STACK[0x57D8];
  STACK[0x7598] = *(STACK[0x57D8] + 8 * v1);
  LODWORD(STACK[0x67DC]) = -769884012;
  LODWORD(STACK[0x720C]) = -769884012;
  STACK[0xBAE8] = 0;
  LODWORD(STACK[0xC724]) = 0;
  STACK[0x6EC8] = 0;
  LODWORD(STACK[0x5CE4]) = 1280;
  v3 = STACK[0x7ED8];
  STACK[0x6268] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v3 + ((a1 - 10007) ^ 0x31BFLL);
  STACK[0xA4F0] = 0;
  LODWORD(STACK[0xBA68]) = -769884012;
  STACK[0xAD58] = 0;
  return (*(v2 + 8 * (a1 - 17448)))(&STACK[0xAD58]);
}

uint64_t sub_10026CC7C()
{
  v3 = STACK[0x2320];
  LODWORD(STACK[0x1D4CC]) = ((v0 - 22613) | 0x29A07920) - STACK[0x2320];
  LODWORD(STACK[0x1D4C0]) = (v0 - 1079089617) ^ v3;
  LODWORD(STACK[0x1D4C4]) = v3 ^ (v0 - 22613) ^ 0x29A07697;
  STACK[0x1D4D8] = 4151854225u - v3;
  LODWORD(STACK[0x1D4D0]) = v3;
  STACK[0x1D4E0] = v3 + v1;
  LODWORD(STACK[0x1D4C8]) = ((v0 - 22613) | 0x29A0790C) - v3;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x2411)))(v2 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4D4])))(v5);
}

uint64_t sub_10026CD84@<X0>(int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, int a4@<W4>, uint64_t a5@<X8>)
{
  v12 = *(v11 + 8 * (a1 ^ v7));
  v13 = *(v11 + 8 * ((a1 + 8) ^ v7));
  *(&v15 + 1) = (v10 + v9) ^ v12 ^ 2;
  *&v15 = v12 ^ v8;
  v14 = v15 >> 6;
  *(&v15 + 1) = v13 ^ a4;
  *&v15 = v13 ^ v8;
  *(a5 + 8 * (v5 ^ a3)) = a2 ^ v14 ^ (v14 >> 5) ^ (v14 >> 1);
  *(a5 + 8 * ((v5 + 1) ^ a3)) = a2 ^ (v15 >> 6) ^ ((v15 >> 6) >> 5) ^ ((v15 >> 6) >> 1);
  return (*(STACK[0x57D8] + 8 * (((v5 != 62) * v6) ^ v10)))((a1 + 16));
}

uint64_t sub_10026D07C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a5 - 1;
  v15 = v6 + 4 * v14;
  v16 = v7 + 4 * v14;
  v17 = *v5 & 0xFFFFFFFFFFFFFFF8;
  v18 = *(*v13 + (((((v15 & 0xFFFFFFF8) + 269367687) ^ (a2 - 53128447)) - ((-538735376 - 2 * (v15 & 0xFFFFFFF8)) & 0xF9AB4700) - 455924122) & v17));
  v19 = __ROR8__(v15 & 0xFFFFFFFFFFFFFFF8, 8);
  v20 = (v8 - ((v19 + v18) | v8) + ((v19 + v18) | 0x9CB21F8D6EA1E11)) ^ 0xB99C55C30742EBADLL;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ v12;
  v23 = __ROR8__(v22, 8);
  v24 = v22 ^ __ROR8__(v21, 61);
  v25 = (v23 + v24) ^ 0xA26BE47A1A692F70;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (v27 + v26 - ((2 * (v27 + v26)) & 0x3C2C010F569FAF2CLL) + 0x1E160087AB4FD796) ^ 0x21517BF4FE99692;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x7D0ACAAAE9EC381DLL;
  v31 = *(*v13 + (((v16 & 0xFFFFFFF8) + v9) & v17));
  v32 = __ROR8__(v16 & 0xFFFFFFFFFFFFFFF8, 8);
  v33 = v30 ^ __ROR8__(v29, 61);
  v34 = __ROR8__(v30, 8);
  v35 = (((2 * (v31 + v32)) | 0x6AA526673ED6244ALL) - (v31 + v32) - 0x355293339F6B1225) ^ 0x8505E7084EC3E799;
  v36 = v35 ^ __ROR8__(v31, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (v34 + v33 - ((2 * (v34 + v33)) & 0xCAD5CACB7D3C2BDCLL) - 0x1A951A9A4161EA12) ^ 0xB79B6D2CA646C34CLL;
  v39 = v38 ^ __ROR8__(v33, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ v10;
  v41 = (v11 - ((v37 + v36) | v11) + ((v37 + v36) | 0xAF426A5E3B9178E1)) ^ 0x25051B12C81D3F62;
  v42 = v41 ^ __ROR8__(v36, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ 0xA26BE47A1A692F70;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = __ROR8__(v40, 8) + (v40 ^ __ROR8__(v39, 61));
  v46 = __ROR8__(v43, 8);
  v47 = (0xC5C3AFB17F5E9821 - ((v46 + v44) | 0xC5C3AFB17F5E9821) + ((v46 + v44) | 0x3A3C504E80A167DELL)) ^ 0x263F4776640726DALL;
  v48 = v47 ^ __ROR8__(v44, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0x7D0ACAAAE9EC381DLL;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0x52F1884918D8D6A2;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (((2 * (v53 + v52)) & 0xE2A19D507128AA2CLL) - (v53 + v52) + 0xEAF3157C76BAAE9) ^ 0x58F4339369D9046;
  v55 = v54 ^ __ROR8__(v52, 61);
  v56 = __ROR8__(v54, 8);
  *v16 = (((v56 + v55 - ((2 * (v56 + v55)) & 0x8CD434ED35339EE2) - 0x3995E5896566308FLL) ^ 0x57D4979E0D057131) >> (8 * (v16 & 7u))) ^ ((v45 ^ 0x91BE8DE8979CBE40) >> (8 * (v15 & 7u))) ^ *v15;
  return (*(STACK[0x57D8] + 8 * ((9809 * (v14 == 0)) ^ a2)))();
}

uint64_t sub_10026D72C()
{
  STACK[0x61E8] = 0;
  LODWORD(STACK[0x7E70]) = -769884012;
  return (*(STACK[0x57D8] + 8 * (v0 - 11972)))();
}

uint64_t sub_10026D75C()
{
  v8 = *(v6 + (v4 - 1556613798));
  v9 = 18 * v8 - 111;
  v10 = v9 & 0xFE ^ (2 * ((v9 ^ 0x6E) & (2 * ((v9 ^ 0x6E) & (2 * ((v9 ^ 0x6E) & (2 * ((v9 ^ 0x6E) & (2 * ((v9 ^ 0x6E) & (2 * ((v9 ^ 0x6E) & (2 * v9) ^ (v9 | 0xB0))) ^ (v9 | 0xB0))) ^ (v9 | 0xB0))) ^ (v9 | 0xB0))) ^ (v9 | 0xB0))) ^ (v9 | 0xB0)));
  v11 = ((((v10 ^ 0xE4) + 121) ^ ((v10 ^ 0x1F) - 124) ^ ((v10 ^ 0xB4) + 41)) + 44) * v8 + 78;
  v12 = v11 & 0x70 ^ 0xE3;
  v13 = (((6 - v4) ^ v4 ^ (v4 + 10)) ^ (((v4 ^ 0xFD) + 5) ^ ((v4 ^ 4) + 14))) & 0xF ^ 6;
  v14 = (*(v7 - 120 + v13) - ((2 * *(v7 - 120 + v13)) & 0x38) + 28) ^ v11 ^ (2 * ((v11 ^ 0x32) & (2 * ((v11 ^ 0x32) & (2 * ((v11 ^ 0x32) & (2 * ((v11 ^ 0x32) & (2 * ((v11 ^ 0x22) & (2 * ((v11 ^ 0x22) & 2 ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12));
  v15 = v4 + 641145044 < v2;
  if (v2 < v0 != v4 + 641145044 < v0)
  {
    v15 = v2 < v0;
  }

  v16 = *(v5 + 8 * ((v15 * v3) ^ v1));
  *(v7 - 120 + v13) = v14 ^ 0x6C;
  return v16();
}

uint64_t sub_10026D97C@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W5>, int a6@<W6>, int a7@<W7>, int a8@<W8>)
{
  LODWORD(STACK[0x50A8]) = LODWORD(STACK[0x5390]) + LODWORD(STACK[0x53A8]);
  LODWORD(STACK[0x55F0]) = (v11 & 0xFF00FFFF | (v9 << 16)) + a4;
  LODWORD(STACK[0x4E38]) = v10 | (LODWORD(STACK[0x54D0]) << 8);
  LODWORD(STACK[0x55D0]) = v8 << 8;
  LODWORD(STACK[0x5600]) = a3 << 8;
  v18 = LODWORD(STACK[0x5490]) + v12;
  LODWORD(STACK[0x4FE0]) = (v16 | ((v13 + LODWORD(STACK[0x5540])) << 16)) + v14;
  LODWORD(STACK[0x5060]) = v15 + v17;
  LODWORD(STACK[0x5590]) = a1 << 8;
  LODWORD(STACK[0x55A0]) = a2 << 8;
  v19 = *(STACK[0x57D8] + 8 * a8);
  LODWORD(STACK[0x5570]) = a6 << 8;
  LODWORD(STACK[0x4DE8]) = a7 | (v18 << 8);
  LODWORD(STACK[0x4DD8]) = LODWORD(STACK[0x5550]) | (a5 << 8);
  return v19(255, STACK[0x55C0], 2716552271, 3019115470, 3086663015, STACK[0x57C0]);
}

uint64_t sub_10026DB58()
{
  v1 = *(v0 + 640);
  v2 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v1 & 0xFFFFFFF8) - 1831847764)) & 0xFFFFFFFFFFFFFFF8));
  v3 = __ROR8__(v1 & 0xFFFFFFFFFFFFFFF8, 8);
  v4 = (v3 + v2 - ((2 * (v3 + v2)) & 0x5A04577650198BDALL) + 0x2D022BBB280CC5EDLL) ^ 0xEFAD151117FD7D09;
  v5 = v4 ^ __ROR8__(v2, 61);
  v6 = (__ROR8__(v4, 8) + v5) ^ 0x65F254DD188DB4FCLL;
  v7 = v6 ^ __ROR8__(v5, 61);
  v8 = __ROR8__(v6, 8);
  v9 = (((2 * (v8 + v7)) & 0x2E5B72F8038BC57ALL) - (v8 + v7) - 0x172DB97C01C5E2BELL) ^ 0x872200159F230FCFLL ^ __ROR8__(v7, 61);
  v10 = (__ROR8__((((2 * (v8 + v7)) & 0x2E5B72F8038BC57ALL) - (v8 + v7) - 0x172DB97C01C5E2BELL) ^ 0x872200159F230FCFLL, 8) + v9) ^ 0xA1B29DC5D776132BLL;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = __ROR8__(v10, 8);
  v13 = __ROR8__((((v12 + v11) ^ 0xC03C5B2E0AF4F771) - ((2 * ((v12 + v11) ^ 0xC03C5B2E0AF4F771)) & 0x7B8D5102E2109A30) - 0x4239577E8EF7B2E8) ^ 0x92FED3EE8E19F285, 8);
  v14 = (((v12 + v11) ^ 0xC03C5B2E0AF4F771) - ((2 * ((v12 + v11) ^ 0xC03C5B2E0AF4F771)) & 0x7B8D5102E2109A30) - 0x4239577E8EF7B2E8) ^ 0x92FED3EE8E19F285 ^ __ROR8__(v11, 61);
  v15 = (v13 + v14) ^ 0xD8C7B31FCA19D9DELL;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (0x55AD231C9666568FLL - ((v17 + v16) | 0x55AD231C9666568FLL) + ((v17 + v16) | 0xAA52DCE36999A970)) ^ 0xFE07DDCDE3286AFFLL;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = __ROR8__(v18, 8);
  LODWORD(v18) = 5621 * ((((((v20 + v19) ^ 0x6CA4480DDFEABA0BLL) - ((2 * ((v20 + v19) ^ 0x6CA4480DDFEABA0BLL)) & 0xE8353F2E679E2EELL) + 0x741A9F9733CF177) ^ 0x4AA8148A2D4159CLL) >> (8 * (v1 & 7u))) ^ *(v0 + 295)) + 32028458;
  v21 = v18 - 6152 * (((89362129 * v18) >> 32) >> 7);
  v22 = STACK[0xDCB8];
  LOBYTE(v21) = *(STACK[0xDCB8] + v21);
  v22[4764] = *(v0 + 466);
  v22[5788] = v21;
  v23 = STACK[0xDC98] + 4;
  v24 = __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = ((0x70824D863E123F42 - v24) & 0xEDE58EFE43861EB5) + v24 - 0x70824D863E123F43 - ((v24 - 0x70824D863E123F43) & 0xEDE58EFE43861EB5);
  v26 = v25 ^ 0x3E6265E9BA97E1C3;
  v25 ^= 0x458FF627B5F9E42FuLL;
  v27 = __ROR8__(v26, 8);
  v28 = (0x501C053816944A70 - ((v27 + v25) | 0x501C053816944A70) + ((v27 + v25) | 0xAFE3FAC7E96BB58FLL)) ^ 0x959F9E30F6D473D4;
  v29 = v28 ^ __ROR8__(v25, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0xFBC18F8B9568C440;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0x4AE5CE6F63977933;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (v34 + v33 - ((2 * (v34 + v33)) & 0x60DE6270436C0300) - 0x4F90CEC7DE49FE80) ^ 0x983BFA62AA6D8297;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xF7721CC6F3AEFBDCLL;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0xE6B7173A9B2BB05DLL;
  LODWORD(v23) = (((__ROR8__(v39, 8) + (v39 ^ __ROR8__(v38, 61))) ^ 0x94AC86FF716F8E22) >> (8 * (v23 & 7u))) ^ *v23;
  v22[4544] = v22[5621 * v23 + 32028458 - 6152 * (((89362129 * (5621 * v23 + 32028458)) >> 32) >> 7)];
  v40 = STACK[0xDCA0] + 11;
  *(v0 + 648) = v40;
  *(v0 + 296) = v40;
  v41 = STACK[0x57D8];
  *(v0 + 280) = *(STACK[0x57D8] + 8 * (LODWORD(STACK[0x4D6C]) + 8944));
  return (*(v41 + 8 * (*(v0 + 3792) + 8890)))();
}

uint64_t sub_10026E014()
{
  *(v2 + 600) = v1 - 289235981 * ((2 * (v0 & 0x2994ED48) - v0 - 697625934) ^ 0x51E9C28D) + 13502;
  v4 = STACK[0x4658];
  *(v2 + 592) = STACK[0x4658];
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v1 + 23925)))(v3 - 240);
  if (*(v2 + 604))
  {
    v7 = 1;
  }

  else
  {
    v7 = *v4 == 0;
  }

  v8 = v7;
  return (*(v5 + 8 * ((v8 * (((v1 - 3653) | 0xE50) + ((v1 - 3815) | 0x2C74) - 23377)) ^ v1)))(v6);
}

uint64_t sub_10026E0FC()
{
  v2 = (v1 + 10905);
  STACK[0x9EE0] = *v0;
  v3 = STACK[0x7ED8];
  v4 = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0xCD50] = v4;
  STACK[0x82F0] = v4;
  STACK[0x7ED8] = v2 + v3 - 20710;
  STACK[0xB528] = 0;
  STACK[0x7338] = v4;
  return (*(STACK[0x57D8] + 8 * (((*STACK[0x3F60] == 0) * (v2 ^ 0x45BB)) ^ v1)))();
}

uint64_t sub_10026E188@<X0>(char a1@<W3>, int a2@<W8>)
{
  LODWORD(STACK[0x5620]) = LODWORD(STACK[0x5700]) << 8;
  LODWORD(STACK[0x51C8]) = ((a1 - 76) | ((((v4 - 76) << 8) | (v2 << 16) | (v3 - 76)) << 8)) - 1275068416;
  LODWORD(STACK[0x55C0]) = (LODWORD(STACK[0x5710]) - 76);
  LODWORD(STACK[0x55E0]) = (LODWORD(STACK[0x5780]) - 76);
  LODWORD(STACK[0x5610]) = (LODWORD(STACK[0x57C0]) - 76);
  return (*(STACK[0x57D8] + 8 * a2))();
}

uint64_t sub_10026E304()
{
  v3 = v0 + 944758461 + ((v2 - 8995) | 0x2030);
  v4 = v3 < 0x3E7E15C5;
  v5 = v1 + 944770802 < v3;
  if ((v1 + 944770802) < 0x3E7E15C5 != v4)
  {
    v5 = v4;
  }

  return (*(STACK[0x57D8] + 8 * ((v5 * (((v2 - 12580) | 0x4E1) + 26879)) ^ v2)))();
}

uint64_t sub_10026E394()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 18940)))(v1);
  STACK[0xB930] = 0;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_10026E3D8()
{
  v3 = ((2 * v2) ^ 0x7F7E3188) + v0;
  v4 = v3 < 0x85AC073D;
  v5 = v1 + 2138964074 < v3;
  if ((v1 + 2138964074) < 0x85AC073D != v4)
  {
    v5 = v4;
  }

  return (*(STACK[0x57D8] + 8 * ((505 * !v5) ^ v2)))();
}

uint64_t sub_10026E458()
{
  v2 = *(v0 + 824);
  v3 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v2 & 0xFFFFFFF8 ^ 0xCB009D26) + 1573967315 + ((2 * (v2 & 0xFFFFFFF8)) | 0x69FEC5B3))) & 0xFFFFFFFFFFFFFFF8));
  v4 = (__ROR8__(v2 & 0xFFFFFFFFFFFFFFF8, 8) + v3) ^ 0xC2AF3EAA3FF1B8E4;
  v5 = v4 ^ __ROR8__(v3, 61);
  v6 = (__ROR8__(v4, 8) + v5) ^ 0x65F254DD188DB4FCLL;
  v7 = v6 ^ __ROR8__(v5, 61);
  v8 = (__ROR8__(v6, 8) + v7) ^ 0x6FF046966119128DLL;
  v9 = __ROR8__(v8, 8);
  v10 = v8 ^ __ROR8__(v7, 61);
  v11 = (v9 + v10) ^ 0xA1B29DC5D776132BLL;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ v1;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = __ROR8__(v13, 8);
  v16 = __ROR8__((((v15 + v14) & 0xB94C74E32772ACC8 ^ 0xB84870C003102048) + ((v15 + v14) ^ 0x1060433346FDE90) - (((v15 + v14) ^ 0x1060433346FDE90) & 0xB94C74E32772ACC8)) ^ 0x608DC3CFD904AB86, 8);
  v17 = (((v15 + v14) & 0xB94C74E32772ACC8 ^ 0xB84870C003102048) + ((v15 + v14) ^ 0x1060433346FDE90) - (((v15 + v14) ^ 0x1060433346FDE90) & 0xB94C74E32772ACC8)) ^ 0x608DC3CFD904AB86 ^ __ROR8__(v14, 61);
  v18 = 5621 * ((((__ROR8__((v16 + v17) ^ 0x5455012E8AB1C38FLL, 8) + ((v16 + v17) ^ 0x5455012E8AB1C38FLL ^ __ROR8__(v17, 61))) ^ 0x6F4F60BC0E025EE0) >> (8 * (v2 & 7u))) ^ *(v0 + 295)) + 32028458;
  *(STACK[0xDCB8] + 2731) = *(STACK[0xDCB8] + v18 - 6152 * (((89362129 * v18) >> 32) >> 7));
  v19 = *(v0 + 816) + 42;
  *(v0 + 296) = v19;
  v20 = STACK[0x57D8];
  v21 = *(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x2321));
  *(v0 + 832) = v19;
  *(v0 + 280) = v21;
  return (*(v20 + 8 * (STACK[0x4D40] ^ 0x15E8)))();
}

uint64_t sub_10026E670()
{
  v0 = STACK[0x1B4C];
  v1 = LODWORD(STACK[0x1B4C]) + 20285;
  STACK[0x57C0] = STACK[0xAA08];
  v2 = STACK[0x57D8];
  STACK[0xA108] = *(STACK[0x57D8] + 8 * v0);
  return (*(v2 + 8 * (v0 ^ 0x438F ^ v1)))();
}

uint64_t sub_10026E730()
{
  v2 = STACK[0x7138];
  v3 = STACK[0x7668];
  v4 = STACK[0x36E0];
  v5 = 1534937323 * ((v1 - 240) ^ 0xCD7888C2C6EEFB47);
  *(v0 + 600) = LODWORD(STACK[0x36E0]) - v5 + 3994;
  *(v0 + 592) = v3 ^ v5;
  *(v0 + 624) = (v4 ^ 5) + v5;
  *(v0 + 608) = v5;
  *(v0 + 612) = v4 ^ v5;
  *(v0 + 616) = v2 + v5;
  v6 = STACK[0x51B8];
  *(v0 + 604) = v5 + 1451493860 + STACK[0x51B8];
  v7 = STACK[0x57D8];
  v8 = (*(STACK[0x57D8] + 8 * (v6 + 9182)))(v1 - 240);
  return (*(v7 + 8 * SLODWORD(STACK[0x1D4E4])))(v8);
}

uint64_t sub_10026E7F8()
{
  v2 = 0;
  v3 = *(*STACK[0x51F0] + (*STACK[0x51E8] & 0xDF49AC04));
  v4 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v3 ^ 0xDF49AC05) & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v3 ^ 0xDF49AC05;
  v5 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v4 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v4;
  v6 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v5 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v5;
  v7 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v6 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v6;
  v8 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v7 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v7;
  v9 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v8 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v8;
  v10 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v9 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v9;
  v11 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v10 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v10;
  STACK[0xEEA0] = 0;
  STACK[0xEEA8] = v0;
  v12 = 16777619 * ((-548819963 * v11 + 7) ^ (-548819963 * v11)) % 7;
  v13 = 16777619 * ((-548819963 * v11 + 6) ^ (-548819963 * v11)) % 6;
  v14 = 16777619 * ((-548819963 * v11 + 5) ^ (-548819963 * v11)) % 5;
  v15 = 16777619 * ((-548819963 * v11 + 3) ^ (-548819963 * v11)) % 3;
  v16 = vdup_n_s32(-548819963 * v11);
  v17.i32[0] = v16.i32[0];
  v17.i32[1] = -548819963 * v11 + 1;
  v18 = *(&STACK[0xEEA0] | v12);
  *(&STACK[0xEEA0] | v12) = STACK[0xEEA7];
  v19 = *(&STACK[0xEEA0] | v13);
  *(&STACK[0xEEA0] | v13) = STACK[0xEEA6];
  v20 = *(&STACK[0xEEA0] | v14);
  *(&STACK[0xEEA0] | v14) = STACK[0xEEA5];
  v21 = STACK[0xEEA0];
  LOBYTE(STACK[0xEEA0]) = STACK[0xEEA4];
  v22 = *(&STACK[0xEEA0] | v15);
  *(&STACK[0xEEA0] | v15) = STACK[0xEEA3];
  LOBYTE(STACK[0xEEA7]) = v18;
  LOBYTE(STACK[0xEEA6]) = v19;
  LOBYTE(STACK[0xEEA5]) = v20;
  v23 = veor_s8(vmul_s32(v17, v16), v16);
  LOBYTE(STACK[0xEEA4]) = v21;
  LOBYTE(STACK[0xEEA3]) = v22;
  v24 = STACK[0xEEA1];
  LOBYTE(STACK[0xEEA2]) = STACK[0xEEA0];
  LOWORD(STACK[0xEEA0]) = v24;
  v25 = vdup_n_s32(0x1000193u);
  STACK[0xEEA0] = vmla_s32(v23, STACK[0xEEA0], v25);
  v26 = STACK[0xEEA8];
  v27 = (-548819963 * STACK[0xEEA8]) ^ v11;
  v28 = vdupq_n_s32(v27);
  v29 = xmmword_1012370F0;
  v30 = xmmword_101237100;
  v31 = xmmword_101237110;
  v32 = xmmword_101237120;
  v33.i64[0] = 0x1000000010;
  v33.i64[1] = 0x1000000010;
  v34.i64[0] = 0x9393939393939393;
  v34.i64[1] = 0x9393939393939393;
  do
  {
    v35 = *(v26 + v2);
    v48.val[1] = veorq_s8(vqtbl1q_s8(v35, xmmword_101237140), veorq_s8(v28, vmulq_s32(vaddq_s32(v31, v28), vsubq_s32(v31, v28))));
    v48.val[0] = veorq_s8(vqtbl1q_s8(v35, xmmword_101237150), veorq_s8(v28, vmulq_s32(vaddq_s32(v32, v28), vsubq_s32(v32, v28))));
    v48.val[2] = veorq_s8(vqtbl1q_s8(v35, xmmword_101237160), veorq_s8(v28, vmulq_s32(vaddq_s32(v30, v28), vsubq_s32(v30, v28))));
    v48.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v35, xmmword_101237170), v28), vmulq_s32(vaddq_s32(v29, v28), vsubq_s32(v29, v28)));
    *(v26 + v2) = vmulq_s8(vqtbl4q_s8(v48, xmmword_101237130), v34);
    v2 += 16;
    v32 = vaddq_s32(v32, v33);
    v31 = vaddq_s32(v31, v33);
    v30 = vaddq_s32(v30, v33);
    v29 = vaddq_s32(v29, v33);
  }

  while (v2 != 32);
  v36 = 3;
  do
  {
    v37 = 16777619 * ((v27 + v36) ^ v27) % v36;
    v38 = *(v26 + 8 * v37) ^ *(v26 + 8 * v36);
    *(v26 + 8 * v36) = v38;
    v39 = *(v26 + 8 * v37) ^ v38;
    *(v26 + 8 * v37) = v39;
    *(v26 + 8 * v36) ^= v39;
    v40 = v36-- + 1;
  }

  while (v40 > 2);
  v41 = *(&STACK[0xEEA8] + v12);
  *(&STACK[0xEEA8] + v12) = STACK[0xEEAF];
  LOBYTE(STACK[0xEEAF]) = v41;
  v42 = *(&STACK[0xEEA8] + v13);
  *(&STACK[0xEEA8] + v13) = STACK[0xEEAE];
  LOBYTE(STACK[0xEEAE]) = v42;
  v43 = *(&STACK[0xEEA8] + v14);
  *(&STACK[0xEEA8] + v14) = STACK[0xEEAD];
  LOBYTE(STACK[0xEEAD]) = v43;
  v44 = STACK[0xEEA8];
  LOBYTE(STACK[0xEEA8]) = STACK[0xEEAC];
  LOBYTE(STACK[0xEEAC]) = v44;
  v45 = *(&STACK[0xEEA8] + v15);
  *(&STACK[0xEEA8] + v15) = STACK[0xEEAB];
  LOBYTE(STACK[0xEEAB]) = v45;
  v46 = STACK[0xEEA9];
  LOBYTE(STACK[0xEEAA]) = STACK[0xEEA8];
  LOWORD(STACK[0xEEA8]) = v46;
  STACK[0xEEA8] = vmla_s32(v23, STACK[0xEEA8], v25);
  *STACK[0x4630] = STACK[0xEEA8] ^ STACK[0xEEA0];
  return (*(STACK[0x57D8] + 8 * (v1 - 1144)))();
}

uint64_t sub_10026ECAC@<X0>(int a1@<W5>, int a2@<W8>)
{
  v4 = STACK[0x5168];
  v5 = v2 ^ 0x26E09404 ^ (((v2 ^ 0x26E09404u) & STACK[0x5168]) >> 1);
  v6 = STACK[0x5170];
  v7 = STACK[0x53C0];
  v8 = STACK[0x5398];
  v9 = STACK[0x57C0];
  LODWORD(STACK[0x5350]) = ((v5 & STACK[0x5170]) << STACK[0x53C0]) + ((v5 & STACK[0x5398]) >> v9);
  v10 = STACK[0x5160];
  v11 = STACK[0x51D0];
  v12 = (((a1 ^ 0x4BBB0CBCu) & STACK[0x5160]) >> (LODWORD(STACK[0x51D0]) + 122)) ^ a1 ^ 0x4BBB0CBC;
  v13 = STACK[0x5390];
  v14 = STACK[0x5760];
  v15 = STACK[0x57B0];
  v16 = STACK[0x53B8];
  LODWORD(STACK[0x5348]) = ((v12 & STACK[0x5390]) << LODWORD(STACK[0x5760])) ^ ((v12 & STACK[0x57B0]) >> LODWORD(STACK[0x53B8]));
  v17 = v3 ^ 0x9C47A840 ^ (((v3 ^ 0x9C47A840) & v4) >> 1);
  LODWORD(STACK[0x5358]) = ((v17 & v15) >> v9) | ((v17 & v13) << v14);
  v18 = a2 ^ 0x5A71FED1 ^ (((a2 ^ 0x5A71FED1) & v10) >> 1);
  LODWORD(STACK[0x5340]) = ((v18 & v6) << v7) ^ ((v18 & v8) >> v16);
  v19 = STACK[0x5780];
  v20 = STACK[0x51E0];
  if (STACK[0x5780])
  {
    v21 = STACK[0x51E0];
  }

  else
  {
    v21 = STACK[0x51F8];
  }

  v22 = STACK[0x51D8];
  if (v19)
  {
    v20 = STACK[0x51D8];
  }

  v23 = STACK[0x53D0];
  if (v19)
  {
    v22 = STACK[0x53D0];
    v23 = STACK[0x51F8];
  }

  if ((v19 & 2) != 0)
  {
    v24 = v22;
  }

  else
  {
    v24 = v21;
  }

  LODWORD(STACK[0x51F8]) = v24;
  if ((v19 & 2) == 0)
  {
    v21 = v22;
  }

  LODWORD(STACK[0x51D8]) = v21;
  if ((v19 & 2) != 0)
  {
    v25 = v23;
  }

  else
  {
    v25 = v20;
  }

  LODWORD(STACK[0x51E0]) = v25;
  if ((v19 & 2) != 0)
  {
    v26 = v20;
  }

  else
  {
    v26 = v23;
  }

  LODWORD(STACK[0x53D0]) = v26;
  LODWORD(STACK[0x57A0]) = v11 - 10371;
  return (*(STACK[0x57D8] + 8 * v11))();
}

uint64_t sub_10026EECC()
{
  v0 = STACK[0x1EB0];
  v1 = STACK[0x1EB0] - 1718;
  v2 = STACK[0x57D8];
  STACK[0x8860] = *(STACK[0x57D8] + 8 * STACK[0x1EB0]);
  return (*(v2 + 8 * (v0 ^ 0x208E ^ v1)))();
}

uint64_t sub_10026F008()
{
  v4 = STACK[0x4658];
  *(v1 + 592) = STACK[0x4658];
  *(v1 + 600) = v0 - 289235981 * ((((2 * v2) | 0x6E8BE89E) - v2 + 1220152241) ^ 0x30C72470) + 4717;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x3D64)))(v3 - 240);
  if (*(v1 + 604))
  {
    v7 = 1;
  }

  else
  {
    v7 = *v4 == 0;
  }

  v8 = v7;
  return (*(v5 + 8 * ((v8 * (((266 * (v0 ^ 0x416B)) ^ 0x5FAF) + 2572 * (v0 ^ 0x413D))) ^ v0)))(v6);
}

uint64_t sub_10026F0C0()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0xCF443823)))();
  STACK[0x8728] = 0;
  return (*(v1 + 8 * (v0 ^ 0xCF44417E ^ (22408 * (v0 != -374387534)))))(v2);
}

uint64_t sub_10026F328(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v12 = v8 + 1;
  v13 = ((*(v6 + v8 + 1) ^ v10) + 699092770) ^ ((*(v6 + v8 + 1) ^ 0xF4942AC3) + 191616317) ^ ((*(v6 + v8 + 1) ^ 0x22C09AAA) - 583047850);
  *(v6 + v8) = *(STACK[0x8070] + (12337 * (((*(v6 + v8) ^ 0x4E0E5660) - 1309562464) ^ (v7 + 72450726 + (*(v6 + v8) ^ 0xFBAE186D)) ^ ((*(v6 + v8) ^ v9) + 1247785286)) + 142282621) % 0x3282);
  *(v6 + v12) = *(STACK[0x8070] + (12337 * v13 + 116251551) % 0x3282);
  v14 = 2 * (v12 & 1) + (v12 ^ 1);
  v15 = 12337 * (((*(v6 + v14 + 1) ^ 0x5A0F2D43) - 1510944067) ^ ((*(v6 + v14 + 1) ^ 0x22AECDA2) - 581881250) ^ ((*(v6 + v14 + 1) ^ 0x78A1E056) - 2023874646)) + 145539589;
  *(v6 + v14) = *(STACK[0x8070] + (a4 + 12337 * ((v11 + (*(v6 + v14) ^ (a6 + 2179)) + 3739) ^ ((*(v6 + v14) ^ 0xBCCE4AF4) + 1127331084) ^ ((*(v6 + v14) ^ 0xA1235BE5) + 1591518235)) + 1108) % 0x3282);
  *(v6 + v14 + 1) = *(STACK[0x8070] + v15 % 0x3282);
  return (*(STACK[0x57D8] + 8 * ((453 * (v14 < 0x1AE)) ^ v7)))();
}

uint64_t sub_10026F620()
{
  STACK[0x9EC0] = &STACK[0xBCA4];
  LODWORD(STACK[0x9E1C]) = -1901425978;
  return (*(STACK[0x57D8] + 8 * (v0 - 16846)))();
}

uint64_t sub_10026F7C8()
{
  v2 = *(v0 + 2920);
  v3 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v2 & 0xFFFFFFF8) - 1831847764)) & 0xFFFFFFFFFFFFFFF8));
  v4 = (v3 + __ROR8__(v2 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xC2AF3EAA3FF1B8E4;
  v5 = v4 ^ __ROR8__(v3, 61);
  v6 = __ROR8__(v4, 8);
  v7 = (0x8C524263ED30F8EBLL - ((v6 + v5) | 0x8C524263ED30F8EBLL) + ((v6 + v5) | 0x73ADBD9C12CF0714)) ^ 0x165FE9410A42B3E8 ^ __ROR8__(v5, 61);
  v8 = (__ROR8__((0x8C524263ED30F8EBLL - ((v6 + v5) | 0x8C524263ED30F8EBLL) + ((v6 + v5) | 0x73ADBD9C12CF0714)) ^ 0x165FE9410A42B3E8, 8) + v7) ^ 0x6FF046966119128DLL;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = __ROR8__(v8, 8);
  v11 = (0xB300B7B28BE31EE6 - ((v10 + v9) | 0xB300B7B28BE31EE6) + ((v10 + v9) | 0x4CFF484D741CE119)) ^ 0xED4DD588A36AF232;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ v1;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (((2 * (v15 + v14)) & 0xC1628686319CB7F4) - (v15 + v14) + 0x1F4EBCBCE731A405) ^ 0xC7890FA32D287DDBLL;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0x5455012E8AB1C38FLL;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  LODWORD(v2) = 3903 * ((((((2 * (v20 + v19)) & 0x6E5699B7D1A733D2) - (v20 + v19) + 0x48D4B324172C6616) ^ 0x279BD398192E38F6uLL) >> (8 * (v2 & 7u))) ^ *(v0 + 295)) + 4008381;
  *(*(v0 + 4000) + 35308) = *(*(v0 + 4008) + v2 - 5896 * (((1456909 * v2) >> 32) >> 1));
  v21 = *(v0 + 3984) + 26;
  *(v0 + 296) = v21;
  v22 = STACK[0x57D8];
  v23 = *(STACK[0x57D8] + 8 * (LODWORD(STACK[0x4D6C]) ^ 0x238C));
  *(v0 + 2928) = v21;
  *(v0 + 280) = v23;
  return (*(v22 + 8 * (STACK[0x51B8] + 8890)))();
}

uint64_t sub_10026FA88()
{
  v2 = STACK[0x65C8];
  *(v2 - 0x30BDFED8F32E6525) = 1;
  v3 = STACK[0x90E8];
  *(v2 - 0x30BDFED8F32E6531) = *(STACK[0x90E8] + 208);
  *(v2 - 0x30BDFED8F32E6529) = *(v3 + 216) ^ (((v0 + 7744) | 0x850) + v1);
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10026FB10()
{
  v1 = STACK[0x57D8];
  STACK[0x91E8] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x960 ^ (v0 + 211771567) & 0xF360D7EF)))();
}

uint64_t sub_10026FBB0()
{
  LODWORD(STACK[0x7B28]) = v1;
  STACK[0x7ED8] -= 2752;
  v2 = STACK[0x6A08];
  LODWORD(STACK[0x98F4]) = v1;
  STACK[0x6230] = v2;
  LODWORD(STACK[0x6974]) = -2092244333;
  return (*(STACK[0x57D8] + 8 * (v0 - 17575)))();
}

uint64_t sub_10026FCB0()
{
  STACK[0xC710] = v1;
  v4 = ((((v2 ^ 0xAFD76591) + 1344838255) ^ ((v2 ^ 0x5BD45D6) - 96290262) ^ ((v2 ^ 0x7876A0D3) - 2021040339)) - 1305925142 < 0xE00CA956) ^ ((((LODWORD(STACK[0x69A4]) ^ 0x9F57A307) + 1621646585) ^ ((LODWORD(STACK[0x69A4]) ^ 0xCF4AE0A3) + 817176413) ^ ((LODWORD(STACK[0x69A4]) ^ 0x8201C330) + 2113813712)) - 1305925142 < 0xE00CA956);
  v5 = 1534937323 * ((~(v3 - 240) & 0x7DC2E4FADD4E01A7 | (v3 - 240) & 0x823D1B0522B1FE58) ^ 0xB0BA6C381BA0FAE0);
  LODWORD(STACK[0x1D4D4]) = (v0 - 1009453042) ^ v5;
  STACK[0x1D4D8] = v5;
  LODWORD(STACK[0x1D4E0]) = v5 + v0 - 1009453042 + 307;
  LODWORD(STACK[0x1D4CC]) = v5 + 1451493860 + v0;
  LODWORD(STACK[0x1D4D0]) = v5;
  STACK[0x1D4C0] = v4 ^ v5;
  LODWORD(STACK[0x1D4C8]) = v0 - 1009453042 - v5 + 3154;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x2462)))(v3 - 240);
  return (*(v6 + 8 * SLODWORD(STACK[0x1D4E4])))(v7);
}

uint64_t sub_10026FE60@<X0>(uint64_t a1@<X8>)
{
  v2 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * (v1 + 18322)))(a1);
  *(STACK[0xAB50] + 24) = 0;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_10026FE98()
{
  LODWORD(STACK[0x5710]) = v2;
  LODWORD(STACK[0x5730]) = v1;
  LODWORD(STACK[0x5250]) = 0;
  LODWORD(STACK[0x5008]) = 0;
  STACK[0x51C8] = STACK[0x5570];
  LODWORD(STACK[0x52A0]) = STACK[0x5430];
  LODWORD(STACK[0x51E0]) = STACK[0x55F0];
  STACK[0x51D8] = STACK[0x5680];
  LODWORD(STACK[0x5340]) = v3 << ((v0 - 16) ^ 0x45);
  v4 = *(STACK[0x57D8] + 8 * (v0 - 3781));
  LODWORD(STACK[0x5318]) = STACK[0x56C0];
  LODWORD(STACK[0x5408]) = 92;
  LODWORD(STACK[0x5210]) = 209;
  LODWORD(STACK[0x5310]) = 126;
  LODWORD(STACK[0x5268]) = 249;
  LODWORD(STACK[0x4FE8]) = 37;
  LODWORD(STACK[0x5298]) = 244;
  LODWORD(STACK[0x5328]) = 40;
  LODWORD(STACK[0x5258]) = 88;
  LODWORD(STACK[0x4FE0]) = 113;
  LODWORD(STACK[0x54B0]) = 127;
  STACK[0x53C0] = 35;
  LODWORD(STACK[0x5280]) = STACK[0x55B0];
  LODWORD(STACK[0x5228]) = STACK[0x55C0];
  LODWORD(STACK[0x53D8]) = STACK[0x56D0];
  STACK[0x56C0] = 198706114;
  LODWORD(STACK[0x5560]) = 180;
  LODWORD(STACK[0x54E0]) = 87;
  LODWORD(STACK[0x5348]) = 120;
  LODWORD(STACK[0x5550]) = 39;
  LODWORD(STACK[0x52F0]) = 111;
  LODWORD(STACK[0x4FD8]) = 20;
  LODWORD(STACK[0x57C0]) = 54;
  LODWORD(STACK[0x54A0]) = 45;
  LODWORD(STACK[0x5360]) = 123;
  LODWORD(STACK[0x5410]) = 24;
  LODWORD(STACK[0x52A8]) = 110;
  LODWORD(STACK[0x4FD0]) = 60;
  LODWORD(STACK[0x54F0]) = 188;
  LODWORD(STACK[0x55A0]) = 6;
  STACK[0x5680] = 189501384;
  STACK[0x55F0] = 756861942;
  LODWORD(STACK[0x52B8]) = 12;
  LODWORD(STACK[0x5390]) = 106;
  LODWORD(STACK[0x54D0]) = 59;
  LODWORD(STACK[0x5520]) = 229;
  STACK[0x5570] = 2950235435;
  LODWORD(STACK[0x5338]) = 57;
  LODWORD(STACK[0x5248]) = 5;
  LODWORD(STACK[0x5540]) = 189;
  LODWORD(STACK[0x5470]) = 5;
  LODWORD(STACK[0x5480]) = 189;
  LODWORD(STACK[0x5580]) = 229;
  LODWORD(STACK[0x56F0]) = 5;
  LODWORD(STACK[0x53A8]) = 229;
  STACK[0x55B0] = 499400492;
  LODWORD(STACK[0x52B0]) = 189;
  LODWORD(STACK[0x5530]) = 229;
  LODWORD(STACK[0x5230]) = 5;
  STACK[0x55C0] = 1924973676;
  STACK[0x4A88] = STACK[0x4FC0];
  LODWORD(STACK[0x5260]) = 189;
  LODWORD(STACK[0x5510]) = 189;
  LODWORD(STACK[0x54C0]) = 189;
  LODWORD(STACK[0x53A0]) = 189;
  LODWORD(STACK[0x5398]) = 189;
  STACK[0x56D0] = 3303972855;
  LODWORD(STACK[0x4FC8]) = 11;
  LODWORD(STACK[0x5320]) = 189;
  return v4(142, 176, 189, 58, 19, 41, 18, 202);
}

uint64_t sub_100270360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x51B0];
  LODWORD(STACK[0x55C0]) = LODWORD(STACK[0x51B0]) + 6903;
  return (*(STACK[0x57D8] + 8 * v8))(a1, STACK[0x4DF0], STACK[0x52F0], v7, STACK[0x4DD8], a6, a7, LODWORD(STACK[0x5408]));
}

uint64_t sub_1002704FC()
{
  STACK[0x5660] = STACK[0xCF08];
  LODWORD(STACK[0x5570]) = *(v0 - 0x79296B4A625EDC78);
  STACK[0x57B0] = STACK[0xC760];
  STACK[0xFE50] = STACK[0x83E0];
  v2 = STACK[0xFD78];
  STACK[0x5550] = *(STACK[0xFD78] - 0x30BDFED8F32E672DLL);
  STACK[0xFE58] = STACK[0xC860];
  STACK[0xFE60] = *(v2 - 0x30BDFED8F32E6759);
  v3 = *(v2 - 0x30BDFED8F32E6751);
  STACK[0xFE68] = v2 - 0x30BDFED8F32E6729;
  v4 = *(v2 - 0x30BDFED8F32E6719);
  v5 = STACK[0x7ED8];
  v6 = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0xFE70] = v6;
  STACK[0xFE78] = (v6 + 35072);
  STACK[0x7ED8] = v5 + 41072;
  v7 = *(&off_101353600 + v1 - 23350) - 8;
  STACK[0x7760] = v6;
  v8 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * (v1 ^ 0x1CD2)))(v7);
  (*(v8 + 8 * (v1 + 7118)))(*(&off_101353600 + v1 - 23375) - 8, STACK[0xFE78], 5896);
  LODWORD(STACK[0x7ADC]) = v3 - 103679699 + v4 + 36;
  STACK[0xC0F8] = (*(v8 + 8 * (v1 ^ 0x1CB9)))();
  v9 = (*(v8 + 8 * (v1 + 7095)))(20);
  STACK[0xB298] = v9;
  v10 = STACK[0x7ADC];
  LODWORD(STACK[0x57C0]) = v1 ^ 0x5263;
  v11 = (*(v8 + 8 * (v1 ^ 0x1CB9)))(v10 + ((1306 * (v1 ^ 0x608D)) ^ ((v1 ^ 0x5263u) + 64)));
  STACK[0xC058] = v11;
  STACK[0xC038] = (*(v8 + 8 * (v1 ^ 0x1CB9)))(20);
  STACK[0xB0A0] = (*(v8 + 8 * (v1 ^ 0x1CB9)))(64);
  STACK[0xBBD0] = (*(v8 + 8 * (v1 + 7095)))(56);
  if (STACK[0xC0F8])
  {
    v12 = v9 == 0;
  }

  else
  {
    v12 = 1;
  }

  v14 = v12 || v11 == 0;
  return (*(v8 + 8 * ((19 * v14) ^ v1)))(v9);
}