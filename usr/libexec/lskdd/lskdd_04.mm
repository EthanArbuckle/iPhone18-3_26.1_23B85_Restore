uint64_t sub_10010D4B8()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x51B8] - 20291;
  STACK[0xA710] = STACK[0x8C78] + SLODWORD(STACK[0x6EB0]);
  return (*(STACK[0x57D8] + 8 * ((v0 - 17725) ^ v1)))();
}

uint64_t sub_10010D524(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v8 = *(STACK[0x57D8] + 8 * ((993 * (v5 >= ((v6 + 453519219) & 0xE4F7A6F6) - 9904)) ^ (v6 - 5731)));
  *&STACK[0x5650] = vdupq_n_s64(0x9D63C3648794ABC0);
  *&STACK[0x5640] = vdupq_n_s64(0x4E9FA08069BD117DuLL);
  *&STACK[0x5630] = vdupq_n_s64(0xF42A9DEE9A7260EALL);
  *&STACK[0x5620] = vdupq_n_s64(0x5EAB108B2C6CF8AuLL);
  *&STACK[0x5610] = vdupq_n_s64(0xC2426338D8F8292BLL);
  *&STACK[0x5600] = vdupq_n_s64(a4);
  *&STACK[0x55F0] = vdupq_n_s64(0x83899CE40040063ALL);
  *&STACK[0x57B0] = vdupq_n_s64(0xACBA46F27EE00801);
  *&STACK[0x57C0] = vdupq_n_s64(0xBDB5B16F710E0B8DLL);
  *&STACK[0x5710] = vdupq_n_s64(0xA96E9C25B4926875);
  *&STACK[0x5700] = vdupq_n_s64(0x472F9ACC3636AADEuLL);
  *&STACK[0x56F0] = vdupq_n_s64(0x4E7AE938E8DB7528uLL);
  *&STACK[0x56E0] = vdupq_n_s64(0xAD22C7B496DB2F16);
  *&STACK[0x5770] = vdupq_n_s64(0x70E93863C81BB7FFuLL);
  *&STACK[0x5760] = vdupq_n_s64(v7);
  *&STACK[0x5780] = vdupq_n_s64(0x424A4E908EF1F472uLL);
  *&STACK[0x5750] = vdupq_n_s64(0x47B76BB18D449D98uLL);
  *&STACK[0x5740] = vdupq_n_s64(0x9307A233A3552064);
  *&STACK[0x5730] = vdupq_n_s64(0x2EAD2D51E70187D4uLL);
  *&STACK[0x5720] = vdupq_n_s64(0xC418C220ED9DD338);
  *&STACK[0x57A0] = vdupq_n_s64(0x9967FA0BA4337986);
  *&STACK[0x5790] = vdupq_n_s64(0x367C2EE62E556FCDuLL);
  *&STACK[0x55E0] = vdupq_n_s64(a5);
  *&STACK[0x55D0] = vdupq_n_s64(0x2AA0ABC1F94F07A2uLL);
  *&STACK[0x55C0] = vdupq_n_s64(0xBA11945B63D2E5C7);
  *&STACK[0x55B0] = vdupq_n_s64(0x9E48E87A9E6AD591);
  *&STACK[0x55A0] = vdupq_n_s64(0xB8411BA9A731DA24);
  return v8();
}

uint64_t sub_10010D8C0@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v16 = a1 + v8 + a7;
  v17 = *(*v14 + (*v15 & ((v10 ^ 0x4C3B) - 22622) & ((v16 & 0x14B03790 | 0xEB4FC86B) + 2050767130 + (v16 & 0xFFFFFFF8 | (a2 + 856)) + 1)));
  v18 = (__ROR8__(v16 & 0xFFFFFFFFFFFFFFF8, 8) + v17) ^ a4;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ a6;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (((2 * (v22 + v21)) | 0xFBE1D16A385F547ALL) - (v22 + v21) - 0x7DF0E8B51C2FAA3DLL) ^ 0x987059C890EA4F6CLL;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0xE1A1FD5BD155F97ALL;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (v27 + v26 - ((2 * (v27 + v26)) & 0x5B00F5D210D18986) - 0x527F8516F7973B3DLL) ^ 0x77E031E50BCA7B5ALL;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ a3;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v11;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  *v16 = *(v12 + v8 + v7) ^ (((v13 - ((v34 + v33) | v13) + ((v34 + v33) | 0x2764340BB3B37C9CLL)) ^ 0xD3173F3A1DC309E7) >> (8 * (v16 & 7u))) ^ 0xF;
  return (*(STACK[0x57D8] + 8 * (v10 | (16 * (((v8 + 1) ^ v9) != a5)))))();
}

uint64_t sub_10010DA8C()
{
  v1 = STACK[0x57D8];
  STACK[0xBDE0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (((v0 ^ 0x44E0) - 11675) ^ v0)))(0x308E083E0C524CBELL);
}

uint64_t sub_10010DAD8()
{
  STACK[0x7790] = v4;
  *(v0 + 656) = v2;
  v6 = STACK[0x7ED8];
  STACK[0x83D0] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = ((v3 + 14745) | 6u) + v6 - 22582;
  STACK[0x8768] = v5;
  STACK[0x5AB0] = 0;
  STACK[0x8210] = 0;
  STACK[0x6A90] = 0;
  *(v1 + 124) = -769884012;
  LODWORD(STACK[0xC1CC]) = 0;
  STACK[0xBB90] = 0x55A8D952E5D4689ELL;
  STACK[0xAF88] = 0;
  LODWORD(STACK[0x9A84]) = -769884012;
  v7 = STACK[0x57D8];
  v8 = (*(STACK[0x57D8] + 8 * (v3 + 23972)))();
  if (v5)
  {
    v9 = v2 == -769884012;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  return (*(v7 + 8 * (((2 * (((v3 + 8) ^ v10) & 1)) & 0xF7 | (8 * (((v3 + 8) ^ v10) & 1))) ^ v3)))(v8);
}

uint64_t sub_10010DBDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 3563) = v4;
  *(a3 + 3564) = v6 + 2;
  v7 = v6 + 194655371 < (v3 - 146341548);
  if ((v3 - 146341548) < 0xB9A3489 != (v6 + 194655371) < 0xB9A3489)
  {
    v7 = (v3 - 146341548) < 0xB9A3489;
  }

  return (*(STACK[0x57D8] + 8 * ((123 * (((103 * ((v5 - 119) & 0xFD ^ 0xBB)) ^ v7) & 1)) ^ v5)))();
}

uint64_t sub_10010DE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, unsigned int a8)
{
  if (a8 < v9 != (v8 + 1016000743) < 0x7C5BDFC5)
  {
    v10 = a8 < v9;
  }

  else
  {
    v10 = v8 + 1016000743 < a8;
  }

  return (*(STACK[0x57D8] + 8 * ((237 * !v10) ^ a6)))();
}

uint64_t sub_10010E888()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x241B)))();
  return (*(v1 + 8 * (v0 - 10409)))(v2);
}

uint64_t sub_10010EAC8(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  v18 = ((v13 ^ a8) >> v8) + (((v13 ^ a8) & v14) << v16);
  v19 = a3 & (4 * ((v18 ^ (2 * (v18 & v15))) & v15)) ^ v18 ^ (2 * (v18 & v15));
  v20 = (16 * (v19 & v15)) & (4 * (v15 & a4)) & a5 ^ v19;
  v21 = *((v20 ^ 0xC71u) + v17 + 14679);
  LOBYTE(v20) = (((v21 ^ 0x19) - 25) ^ ((v21 ^ 0xC0) + 64) ^ ((v21 ^ 0xDC) + 36)) - (((v20 ^ 0x22) - 100) ^ ((v20 ^ 0x2B) - 109) ^ ((v20 ^ 0xE7) + 95)) - 80;
  v22 = v20 & 0xDD ^ 0x98;
  LOBYTE(v20) = v20 ^ (2 * ((v20 ^ 0x2C) & (2 * ((v20 ^ 0x2C) & (2 * ((v20 ^ 0x2C) & (2 * ((v20 ^ 0x2C) & (2 * ((v20 ^ 0x2C) & (2 * (v20 & (2 * v20) & 0x5A ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ 0x4F;
  v23 = 16 * ~*(((v10 | ((v20 & 0xF0) >> 4)) ^ 0x3A) + v17 + 260);
  v24 = 12337 * (*(v17 + ((v23 & 0x70 | (*(((v20 & 0xF | v11) ^ 0x3C) + v17 + 2584) ^ 0x3E) & ~v23) ^ 0x9Fu) + 12848) ^ 0xE4);
  *(STACK[0x8070] + v12 % 0x3282) = *(STACK[0x8070] + v24 - 12930 * (((1328683 * v24) >> 32) >> 2));
  return (*(STACK[0x57D8] + 8 * ((14685 * (v13 == 255)) ^ v9)))();
}

uint64_t sub_10010ECA8@<X0>(int a1@<W3>, uint64_t a2@<X4>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  v57 = *(a2 + 4 * ((v56 + 3677 * a1) % 0x1540u));
  *(&a56 + 1633 * a1 % 0xA88u) = ((v57 ^ 0x8F) - 92) ^ ((v57 ^ 0xF8) + 85) ^ ((v57 ^ 5) - 86);
  return (*(a55 + 8 * ((2392 * (a1 == 255)) ^ (a3 - 10962))))();
}

uint64_t sub_10010ED4C()
{
  STACK[0x530] = v1 - 474427774;
  v5 = v0;
  v6 = (*(v2 + 8 * (v1 - 474415666)))();
  (*(v2 + 8 * (v1 - 474415568)))(v4, v3, v5, v6);
  return (*(v2 + 8 * ((30877 * (v1 > 0xE8CDC389)) ^ (v1 - 474437139))))();
}

uint64_t sub_10010EE38(uint64_t a1)
{
  LODWORD(STACK[0x55C0]) = v2;
  LODWORD(STACK[0x55D0]) = v1;
  LODWORD(STACK[0x5640]) = v4;
  LODWORD(STACK[0x5740]) = v3;
  return (*(STACK[0x57D8] + 8 * ((14968 * (v5 > 0xDB406AA4)) ^ (v5 + 1447276526))))(a1, (LODWORD(STACK[0x5510]) ^ LODWORD(STACK[0x5710])), v5 + 1447271325);
}

uint64_t sub_10010F0FC()
{
  v0 = STACK[0x51B8] - 11763;
  *STACK[0xB980] = STACK[0xD470];
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10010F144()
{
  v1 = *(STACK[0xBEE8] + 24);
  STACK[0xBDB8] = v1;
  return (*(STACK[0x57D8] + 8 * (((v1 != 0) * ((v0 ^ 0x613D) - 5006)) | v0)))();
}

uint64_t sub_10010F1A8@<X0>(int a1@<W8>)
{
  v2 = STACK[0x8670];
  *(v2 - 0x30BDFED8F32E6541) = v1;
  *(v2 - 0x30BDFED8F32E6561) = 0;
  *(v2 - 0x30BDFED8F32E6559) = -769884012;
  *(v2 - 0x30BDFED8F32E6501) = 0;
  *(v2 - 0x30BDFED8F32E64F9) = 2101965948;
  *(v2 - 0x30BDFED8F32E6525) = 0;
  *(v2 - 0x30BDFED8F32E6521) = 0u;
  *(v2 - 0x30BDFED8F32E6531) = 0;
  *(v2 - 0x30BDFED8F32E6529) = 0;
  *(v2 - 0x30BDFED8F32E6511) = 0;
  *(v2 - 0x30BDFED8F32E64F5) = -769884012;
  *(v2 - 0x30BDFED8F32E64F1) = 0;
  *(v2 - 0x30BDFED8F32E64E9) = -769884012;
  *(v2 - 0x30BDFED8F32E64E1) = 0x1FF90131E266DB89;
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_10010F31C()
{
  v4 = 162359284 - 749512935 * ((*(STACK[0x57C0] + v0) << (v1 ^ 0x79)) + (*(STACK[0x57C0] + v0) ^ 0xC5EDFFFF) - 752263518);
  v5 = (v4 ^ 0xAA2EAB12) & (2 * (v4 & 0xB0AEA353)) ^ v4 & 0xB0AEA353;
  v6 = ((2 * (v4 ^ 0xEB36E996)) ^ 0xB730958A) & (v4 ^ 0xEB36E996) ^ (2 * (v4 ^ 0xEB36E996)) & 0x5B984AC4;
  v7 = ((4 * (v6 ^ 0x48884A45)) ^ 0x6E612B14) & (v6 ^ 0x48884A45) ^ (4 * (v6 ^ 0x48884A45)) & 0x5B984AC4;
  v8 = (v7 ^ 0x4A000A01) & (16 * ((v6 ^ 0x3100080) & (4 * v5) ^ v5)) ^ (v6 ^ 0x3100080) & (4 * v5) ^ v5;
  v9 = ((16 * (v7 ^ LODWORD(STACK[0x3AC]))) ^ 0xB984AC50) & (v7 ^ LODWORD(STACK[0x3AC])) ^ (16 * (v7 ^ LODWORD(STACK[0x3AC]))) & 0x5B984AC0;
  v10 = v8 ^ 0x5B984AC5 ^ (v9 ^ LODWORD(STACK[0x3B0])) & (v8 << 8);
  v11 = v4 ^ (2 * ((v10 << 16) & 0x5B980000 ^ v10 ^ ((v10 << 16) ^ 0x4AC50000) & (((v9 ^ 0x42184285) << 8) & 0x5B980000 ^ 0x43900000 ^ (((v9 ^ 0x42184285) << 8) ^ 0x184A0000) & (v9 ^ 0x42184285))));
  v12 = ((v11 ^ v2 ^ 0xEBBEF68E) + 1403516394) ^ ((v11 ^ v2 ^ 0x4FEBA282) - 135093786) ^ ((v11 ^ v2 ^ 0x36CB62D5) - 1898815053);
  v13 = ((((v0 + 721623886 + v12) ^ 0x4AB9315D) - 523460688) ^ (v0 + 721623886 + v12) ^ (((v0 + 721623886 + v12) ^ 0x3E24D63A) - 1806599991) ^ (((v0 + 721623886 + v12) ^ 0x5C6848D0) - 165812696) ^ (((v0 + 721623886 + v12) ^ 0x7D7FFEBE) - 687189938)) >> 16;
  v14 = v12 + (((v13 ^ 0x106A6E8E) - 97630797) ^ ((v13 ^ 0xB34229C4) + 1493566201) ^ ((v13 ^ 0xA32812C0) + 1231829501));
  v15 = v0 + 1585080895 + v14;
  v16 = (v15 ^ 0x8CBDF823) & (2 * (v15 & 0x8CB9E14B)) ^ v15 & 0x8CB9E14B;
  v17 = ((2 * (v15 ^ LODWORD(STACK[0x3B4]))) ^ 0x30A833D4) & (v15 ^ LODWORD(STACK[0x3B4])) ^ (2 * (v15 ^ LODWORD(STACK[0x3B4]))) & 0x185419EA;
  v18 = v17 ^ 0x854082A;
  v19 = (v17 ^ 0x18100142) & (4 * v16) ^ v16;
  v20 = ((4 * v18) ^ 0x615067A8) & v18 ^ (4 * v18) & 0x185419E8;
  v21 = (v20 ^ 0x5001A2) & (16 * v19) ^ v19;
  v22 = ((16 * (v20 ^ 0x18041842)) ^ LODWORD(STACK[0x3B8])) & (v20 ^ 0x18041842) ^ (16 * (v20 ^ 0x18041842)) & 0x185419E0;
  v23 = v21 ^ 0x185419EA ^ (v22 ^ 0x40184A) & (v21 << 8);
  v11 ^= 0xC7FA1121;
  v24 = (v15 ^ (2 * ((v23 << 16) & 0x18540000 ^ v23 ^ ((v23 << 16) ^ 0x19EA0000) & (((v22 ^ 0x1814014A) << 8) & 0x18540000 ^ 0x8440000 ^ (((v22 ^ 0x1814014A) << 8) ^ 0x54190000) & (v22 ^ 0x1814014A))))) >> 8;
  v25 = v14 + (((v24 ^ 0xCA7C2C80) + 1058134627) ^ ((v24 ^ 0x6E16F1AC) - 1686436017) ^ ((v24 ^ 0xA4E64CFE) + 1368111645));
  v26 = v0 + 90182375 + v25;
  v27 = v0 + 2090608144 + v25;
  v28 = (v27 ^ 0x9FE1BAC3) & (2 * (v27 & 0xDFE5A2E4)) ^ v27 & 0xDFE5A2E4;
  v29 = ((2 * (v27 ^ 0x2E20FE0B)) ^ 0xE38AB9DE) & (v27 ^ 0x2E20FE0B) ^ (2 * (v27 ^ 0x2E20FE0B)) & 0xF1C55CEE;
  v30 = v29 ^ 0x10454421;
  v31 = (v29 ^ 0xE1C05880) & (4 * v28) ^ v28;
  v32 = ((4 * v30) ^ 0xC71573BC) & v30 ^ (4 * v30) & 0xF1C55CEC;
  v33 = (v32 ^ 0xC10550A0) & (16 * v31) ^ v31;
  v34 = ((16 * (v32 ^ 0x30C00C43)) ^ 0x1C55CEF0) & (v32 ^ 0x30C00C43) ^ (16 * (v32 ^ 0x30C00C43)) & 0xF1C55CE0;
  v35 = v34 ^ 0xE180100F;
  v36 = v0 - 473232725 + v25;
  v37 = (v36 ^ 0x9FE502F3) & (2 * (v36 & 0xDFE5A2E4)) ^ v36 & 0xDFE5A2E4;
  v38 = ((2 * (v36 ^ 0x1B2D07FB)) ^ 0x89914A3E) & (v36 ^ 0x1B2D07FB) ^ (2 * (v36 ^ 0x1B2D07FB)) & 0xC4C8A51E;
  v39 = v33 ^ 0xF1C55CEF ^ (v34 ^ 0x10454C0F) & (v33 << 8);
  v40 = (v38 ^ 0x80C02011) & (4 * v37) ^ v37;
  v41 = ((4 * (v38 ^ 0x4448A501)) ^ 0x1322947C) & (v38 ^ 0x4448A501) ^ (4 * (v38 ^ 0x4448A501)) & 0xC4C8A51C;
  v42 = v41 ^ 0xC4C82103;
  v43 = (v41 ^ 0x8400) & (16 * v40) ^ v40;
  v44 = (v35 << 8) & 0xF1C50000 ^ 0x30810000 ^ ((v35 << 8) ^ 0x455C0000) & v35;
  v45 = ((16 * v42) ^ 0x4C8A51F0) & v42 ^ (16 * v42) & 0xC4C8A510;
  v46 = v43 ^ 0xC4C8A51F ^ (v45 ^ 0x4488010F) & (v43 << 8);
  v47 = v36 ^ LODWORD(STACK[0x3C0]) ^ (2 * ((v46 << 16) & 0x44C80000 ^ v46 ^ ((v46 << 16) ^ 0x251F0000) & (((v45 ^ 0x8040A40F) << 8) & 0x44C80000 ^ 0x4480000 ^ (((v45 ^ 0x8040A40F) << 8) ^ 0x48A50000) & (v45 ^ 0x8040A40F))));
  v48 = ((v47 ^ v11 ^ 0x781A320B) - 2014982667) ^ ((v47 ^ v11 ^ 0x3F6A6C50) - 1063939152) ^ ((v47 ^ v11 ^ 0x77BF9F16) - 2009046806);
  v49 = v0 - 1466550771 + v48;
  v50 = 2 * (v49 & 0x88398B40);
  v51 = (2 * (v49 ^ 0xAC73C672)) & 0x244A4D32 ^ 0x244A4512 ^ ((2 * (v49 ^ 0xAC73C672)) ^ 0x48949A64) & (v49 ^ 0xAC73C672);
  v52 = (4 * ((v49 & 0x88398B40 | v50 & 0x420400 | 0x20) ^ v50 & (v49 ^ 0xAC73C672))) & 0x204A4D00 ^ (v49 & 0x88398B40 | v50 & 0x420400 | 0x20) ^ v50 & (v49 ^ 0xAC73C672) ^ v51 & STACK[0x3C4] & (4 * ((v49 & 0x88398B40 | v50 & 0x420400 | 0x20) ^ v50 & (v49 ^ 0xAC73C672)));
  v53 = (4 * v51) & 0x244A4D30 ^ 0x24424932 ^ ((4 * v51) ^ 0x912934C8) & v51;
  v54 = v52 ^ 0x244A4D12 ^ (16 * v52) & 0x244A4D30 ^ ((16 * v52) ^ 0x200) & v53;
  v55 = (16 * v53) & 0x244A4D30 ^ LODWORD(STACK[0x3C8]) ^ ((16 * v53) ^ 0x44A4D320) & v53;
  v56 = (v54 << 8) & 0x244A4D00 ^ v54 ^ ((v54 << 8) ^ 0x4A4D3200) & v55;
  v57 = (v49 ^ (2 * ((v56 << 16) & 0x244A0000 ^ v56 ^ ((v56 << 16) ^ 0x4D320000) & ((v55 << 8) & 0x244A0000 ^ 0x24020000 ^ ((v55 << 8) ^ 0x4A4D0000) & v55)))) >> 16;
  v58 = v48 + (((v57 ^ 0x268904FE) + 1452888737) ^ ((v57 ^ 0x16E957C0) + 1727594911) ^ ((v57 ^ 0x30609B07) + 1081134426));
  v59 = v0 + ((v58 + v3) >> 8);
  v60 = (v39 << 16) & 0x71C50000 ^ v39 ^ ((v39 << 16) ^ 0x5CEF0000) & v44;
  v61 = 2 * (v59 + v58 - 1061215515);
  v62 = v59 - 1884194217 + v58 - (v61 & 0x9DE4AEE4);
  v63 = (v59 - 461303345 + v58 - ((v61 - 1665428884) & 0xAAC84FF0) + 580) ^ v11;
  v64 = LODWORD(STACK[0x5790]) ^ v27 ^ (2 * v60) ^ (v59 - 123517980 + v58 - ((v61 - 832714442) & 0xA16A78C8));
  v65 = v63 + v0 + ((v63 + v0) >> 16) + ((v63 + v0 + ((v63 + v0) >> 16)) >> 8);
  LODWORD(STACK[0x57A0]) ^= v26 ^ ((v26 ^ LODWORD(STACK[0x3BC])) - 279269293) ^ ((v26 ^ 0xDAE33210) + 890364770) ^ ((v26 ^ 0xB7B19247) + 1480803127) ^ ((v26 ^ 0x7DF7EFFA) - 1845150068) ^ v62 ^ 0xDEFF79FC ^ v65;
  LODWORD(STACK[0x5790]) = v64 ^ 0x4D50275E ^ (v65 + 1731126427);
  return (*(STACK[0x57D8] + 8 * ((242 * (v0 + 1 < 0x10)) ^ v1)))();
}

uint64_t sub_10010FEB8@<X0>(uint64_t a1@<X2>, unint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v8 = *(*v6 + ((*v7 & (((((a3 + v3) & 0xFFFFFFF8) + ((v4 + 418) ^ 0xB0D7C272)) ^ 0xAF74C9FE) - 2118067151 + ((2 * (((a3 + v3) & 0xFFFFFFF8) + ((v4 + 418) ^ 0xB0D7C272))) & 0x5EE993F0))) & 0xFFFFFFFFFFFFFFF8));
  v9 = __ROR8__((a3 + v3) & 0xFFFFFFFFFFFFFFF8, 8);
  v10 = (((2 * (v8 + v9)) | 0x6179F2CF0765EA56) - (v8 + v9) + 0x4F4306987C4D0AD5) ^ 0x1D5E801B1F5214F6;
  v11 = v10 ^ __ROR8__(v8, 61);
  v12 = __ROR8__(v10, 8);
  v13 = (((2 * (v12 + v11)) & 0xD8206A505FA0B214) - (v12 + v11) + 0x13EFCAD7D02FA6F5) ^ 0x1A1AB268FECF99F5;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (0xE3C326B0791DC622 - ((v15 + v14) | 0xE3C326B0791DC622) + ((v15 + v14) | 0x1C3CD94F86E239DDLL)) ^ 0xA4CB43C47B49E7EDLL;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ a1;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (v20 + v19 - ((2 * (v20 + v19)) & 0xC4DB786FE123EB60) - 0x1D9243C80F6E0A50) ^ 0x13C0B838930A8B63;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (v23 + v22 - ((2 * (v23 + v22)) & 0xDD976B9C8D6F229CLL) + 0x6ECBB5CE46B7914ELL) ^ 0xAF93D59455483056;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0x4267924AAAF3CDACLL;
  *(v5 + v3) = (((__ROR8__(v26, 8) + (v26 ^ __ROR8__(v25, 61))) ^ a2) >> (8 * ((a3 + v3) & 7))) ^ *(a3 + v3);
  return (*(STACK[0x57D8] + 8 * ((v4 + 12754) ^ (((v3 + 1 - v4) | (v4 - (v3 + 1))) >> 63 << 9))))();
}

uint64_t sub_100110180(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v9 = *(STACK[0x57D8] + 8 * a9);
  STACK[0x5790] = (a9 + 10135);
  return v9(-a8, a7 - a8 - 0x61241456EC872252, a1, a2, a3, a4, a5, a3);
}

uint64_t sub_100110258()
{
  LODWORD(STACK[0x57C0]) = v0 - 17994;
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x810u)))(1028);
  STACK[0xD8B0] = v2;
  return (*(v1 + 8 * (((v2 != 0) * (((v0 - 2129424871) | 0x28A86430) + 1447270888)) ^ v0)))();
}

uint64_t sub_1001102E0()
{
  v3 = STACK[0x13B8];
  *(v1 + 592) = *(STACK[0x44F0] + 260) & 1 ^ STACK[0x13B8];
  *(v1 + 624) = ((v0 - 1836776814) ^ 0x2E) + v3;
  *(v1 + 616) = v3;
  *(v1 + 612) = (v0 - 1836776814) ^ v3;
  *(v1 + 608) = v3;
  *(v1 + 604) = v3 + v0 + 1451507639;
  *(v1 + 600) = ((v0 - 1836776814) ^ 0xEF2) - v3;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v0 + 22961)))(v2 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4E4])))(v5);
}

uint64_t sub_100110384@<X0>(uint64_t a1@<X8>)
{
  v4 = STACK[0x57D8];
  STACK[0xD5F0] = *(STACK[0x57D8] + 8 * v2);
  if (a1)
  {
    v5 = v1 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  LODWORD(STACK[0x57C0]) = v6;
  return (*(v4 + 8 * ((v6 * (((v3 + 14515) ^ 0x62F0) - 5537)) ^ v3)))();
}

uint64_t sub_1001104DC@<X0>(int a1@<W0>, unsigned __int8 a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W7>, int a6@<W8>)
{
  LODWORD(STACK[0x4880]) = LODWORD(STACK[0x5520]) | LODWORD(STACK[0x5540]);
  LODWORD(STACK[0x48B8]) = LODWORD(STACK[0x53F0]) | LODWORD(STACK[0x54C0]);
  LODWORD(STACK[0x5150]) = LODWORD(STACK[0x53E8]) | LODWORD(STACK[0x5408]);
  LODWORD(STACK[0x4908]) = (LODWORD(STACK[0x5480]) ^ 0xD28C67B9) & a5 | a1;
  LODWORD(STACK[0x54C0]) = v15 & (a4 ^ 0x403348A2);
  LODWORD(STACK[0x5408]) = v11 & (v14 ^ 0x31815C13);
  LODWORD(STACK[0x5600]) = v13 & (v16 ^ 0x8DC16628);
  LODWORD(STACK[0x53F0]) = v6 & (v12 ^ 0x2B7139A0);
  LODWORD(STACK[0x5480]) = v10 & (a3 ^ 0xD702F03C);
  LODWORD(STACK[0x5540]) = v9 & (a2 ^ 0xCA9D4E9D);
  LODWORD(STACK[0x5520]) = v7 & (a6 ^ 0x95F8D62C);
  return (*(STACK[0x57D8] + 8 * v8))(STACK[0x5680]);
}

uint64_t sub_10011074C()
{
  v3 = v0 ^ LODWORD(STACK[0x410]);
  LODWORD(STACK[0xC8C]) = 0;
  STACK[0xC78] = 0x55A8D952E5D4689ELL;
  v4 = (*(v1 + 8 * (v0 ^ 0x231F)))(128);
  STACK[0x1158] = v4 + 0x683CBC57EAB92A3ELL;
  v5 = *(v1 + 8 * ((((v3 ^ (v4 == 0)) & 1) * ((29 * (v0 ^ 0x5C36)) ^ 0x5994)) ^ v0));
  v6 = *(&off_101353600 + v0 - 23110);
  v7 = *(&off_101353600 + (v0 ^ 0x5BD4));
  STACK[0x5E0] = v7 - 4;
  STACK[0x650] = v7 + 124;
  STACK[0x570] = v7 + 4;
  *&STACK[0x660] = vdupq_n_s64(0x4E0B6541E4935D63uLL);
  *&STACK[0x640] = vdupq_n_s64(0x1C02DF5B258263EDuLL);
  *&STACK[0x720] = vdupq_n_s64(0x7A3BACE59FEC2E01uLL);
  *&STACK[0x750] = vdupq_n_s64(v2);
  *&STACK[0x730] = vdupq_n_s64(0x276E6E460F8C8191uLL);
  STACK[0x5A0] = v6;
  *&STACK[0x5F0] = vdupq_n_s64(0x69517CAD07781183uLL);
  *&STACK[0x5C0] = vdupq_n_s64(0x51FC477E33DE4033uLL);
  return v5(vdupq_n_s64(0x1F7B92942DEF21EFuLL), vdupq_n_s64(0xB2823E14A03C0367));
}

uint64_t sub_10011097C()
{
  v3 = (*(v1 + 8 * (v0 + 8896)))(1028);
  *(v2 - 120) = v3 + 0x29ABD25A2D9FD077;
  *(v2 - 100) = v0 ^ 0x4168;
  return (*(v1 + 8 * (((v3 == 0) * ((v0 - 16615) ^ v0 ^ 0x4168)) ^ v0)))(0, 4294924411);
}

uint64_t sub_100110A00@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, unsigned int a9@<W8>)
{
  v20 = v11 < v9;
  v21 = v16 + (a7 + (*(v19 + a9) ^ a8) + ((2 * *(v19 + a9)) & 0x1F8)) * a4 + v13;
  v22 = ((((v21 - 257 * (((v21 * v17) >> 32) >> 8)) ^ v21) - (v14 + a2)) ^ v15) + a3;
  v23 = v22 ^ v15;
  v24 = v14 - v22;
  v25 = a2 - v22;
  v26 = (v23 ^ v25 ^ (16 * v22 - v24 + (v22 >> 28))) + a6;
  v27 = v26 ^ v25;
  v28 = v26 + v23;
  v29 = v26 ^ v24;
  HIDWORD(v30) = v26;
  LODWORD(v30) = v26;
  v31 = v28 ^ v27 ^ ((v30 >> 30) - v29);
  v32 = v31 & 4;
  v33 = v31 ^ 0xA88B6E35;
  v34 = v33 ^ v27;
  v35 = v33 + v28;
  v36 = (v33 << ((v33 & 4) + v32)) + (v33 ^ v29) - 2 * ((v33 << ((v33 & 4) + v32)) & (v33 ^ v29));
  if (v20 == v12 < v9)
  {
    v20 = v12 < v11;
  }

  return (*(v18 + 8 * ((7 * !v20) ^ v10)))(a1, (v35 + a5 + (v34 ^ (v33 >> 28) ^ v36)) ^ v34);
}

uint64_t sub_100110B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  *(STACK[0xDCB0] + 4 * ((6419 * v8 + 36215998) % 0x2240u)) = v10;
  v11 = STACK[0x5760];
  v12 = *(STACK[0x5760] + 729);
  *(v9 - 152) = 0;
  LODWORD(STACK[0x5470]) = v12;
  v13 = STACK[0xDCB8];
  LODWORD(STACK[0x5400]) = *(STACK[0xDCB8] + 4840);
  LODWORD(STACK[0x53E0]) = *(STACK[0x56C0] + 1920);
  v14 = STACK[0x57C0];
  LODWORD(STACK[0x53F0]) = *(STACK[0x57C0] + 1601);
  LODWORD(STACK[0x5780]) = *(v11 + 615);
  LODWORD(STACK[0x5670]) = v13[3338];
  LODWORD(STACK[0x5640]) = *(STACK[0x55C0] + 1237);
  v15 = STACK[0x5750];
  LODWORD(STACK[0x5620]) = *(STACK[0x5750] + 2261);
  LODWORD(STACK[0x5450]) = *(STACK[0x56F0] + 69);
  LODWORD(STACK[0x5408]) = *(a8 + 759);
  v16 = STACK[0x5730];
  LODWORD(STACK[0x5460]) = *(STACK[0x5730] + 949);
  v17 = STACK[0x57A0];
  LODWORD(STACK[0x5420]) = *(STACK[0x57A0] + 592);
  v18 = STACK[0x5770];
  LODWORD(STACK[0x5630]) = *(STACK[0x5770] + 3505);
  LODWORD(STACK[0x54D0]) = v13[6069];
  LODWORD(STACK[0x5490]) = v18[3414];
  LODWORD(STACK[0x54E0]) = v13[5280];
  LODWORD(STACK[0x5610]) = v18[3763];
  LODWORD(STACK[0x55F0]) = *(v14 + 1525);
  v19 = *(STACK[0x57D8] + 8 * (a7 - 8867));
  LODWORD(STACK[0x5600]) = *(STACK[0x5740] + 3634);
  v20 = v15[2974];
  LODWORD(STACK[0x53C0]) = v18[812];
  LODWORD(STACK[0x55E0]) = v15[3194];
  LODWORD(STACK[0x53C8]) = v13[2003];
  LODWORD(STACK[0x53D0]) = v18[1859];
  LODWORD(STACK[0x53D8]) = *(STACK[0x5720] + 1988);
  LODWORD(STACK[0x53E8]) = v13[4400];
  LODWORD(STACK[0x53F8]) = v13[1434];
  LODWORD(STACK[0x5590]) = v15[1123];
  v21 = STACK[0x57B0];
  LODWORD(STACK[0x5540]) = *(STACK[0x57B0] + 2701);
  LODWORD(STACK[0x55D0]) = v13[3983];
  LODWORD(STACK[0x5570]) = v13[501];
  LODWORD(STACK[0x55A0]) = v13[5667];
  LODWORD(STACK[0x5410]) = *STACK[0x52E8];
  LODWORD(STACK[0x54A0]) = *(STACK[0x55B0] + 433);
  LODWORD(STACK[0x5440]) = *(v17 + 266);
  LODWORD(STACK[0x5430]) = v18[2792];
  LODWORD(STACK[0x54C0]) = *(STACK[0x5790] + 2921);
  LODWORD(STACK[0x5480]) = *(v21 + 3892);
  LODWORD(STACK[0x54B0]) = *(v11 + 1389);
  LODWORD(STACK[0x5560]) = *(v14 + 941);
  LODWORD(STACK[0x54F0]) = *(v16 + 1480);
  LODWORD(STACK[0x5500]) = *(STACK[0x56E0] + 327);
  LODWORD(STACK[0x5550]) = v13[4203];
  LODWORD(STACK[0x5510]) = v13[539];
  STACK[0x5710] = (v13 + 4096);
  LODWORD(STACK[0x5520]) = v13[5371];
  STACK[0x5700] = v13;
  LODWORD(STACK[0x5530]) = v13[1017];
  return v19(v20);
}

uint64_t sub_100111130@<X0>(char a1@<W8>)
{
  LOBYTE(STACK[0xE5D7]) = a1;
  STACK[0xE5D8] = v3;
  STACK[0xE5E0] = v2;
  STACK[0xE5E8] = v4;
  if (v3)
  {
    v6 = v2 == 0;
  }

  else
  {
    v6 = 1;
  }

  v8 = v6 || v4 == 0;
  return (*(STACK[0x57D8] + 8 * ((v8 * (((v1 + 9795) | v5) ^ 0x5DB)) ^ v1)))(0x2A346914086A013BLL);
}

uint64_t sub_1001112B4@<X0>(unsigned int a1@<W8>)
{
  v3 = STACK[0x3CE8];
  v4 = STACK[0x3CE8] + v1;
  v5 = STACK[0x51B8];
  LODWORD(STACK[0x1D4CC]) = v4 + STACK[0x51B8];
  LODWORD(STACK[0x1D4D0]) = v3;
  STACK[0x1D4D8] = v3;
  v6 = STACK[0x3CF4];
  LODWORD(STACK[0x1D4D4]) = LODWORD(STACK[0x3CF4]) ^ v3;
  STACK[0x1D4C0] = a1 ^ v3;
  LODWORD(STACK[0x1D4C8]) = v6 - v3 - 3746;
  LODWORD(STACK[0x1D4E0]) = v3 + LODWORD(STACK[0x3CF0]);
  v7 = STACK[0x57D8];
  v8 = (*(STACK[0x57D8] + 8 * (v5 ^ 0x2462)))(v2 - 240);
  return (*(v7 + 8 * SLODWORD(STACK[0x1D4E4])))(v8);
}

uint64_t sub_100111378()
{
  LODWORD(STACK[0x52E8]) = v2 ^ 0x5D;
  LODWORD(STACK[0x52E0]) = (((v1 + 1563586875) & 0xA2CD5E29) - 2) ^ v0;
  v3 = *(STACK[0x57D8] + 8 * v1);
  LODWORD(STACK[0x5740]) = STACK[0x4850];
  LODWORD(STACK[0x53C8]) = STACK[0x4878];
  LODWORD(STACK[0x5680]) = STACK[0x4978];
  LODWORD(STACK[0x5730]) = STACK[0x4930];
  LODWORD(STACK[0x56E0]) = STACK[0x47D0];
  LODWORD(STACK[0x5650]) = STACK[0x4848];
  LODWORD(STACK[0x54F0]) = STACK[0x47B0];
  LODWORD(STACK[0x5620]) = STACK[0x4880];
  LODWORD(STACK[0x5510]) = STACK[0x4830];
  LODWORD(STACK[0x53C0]) = STACK[0x48C0];
  LODWORD(STACK[0x5750]) = STACK[0x4790];
  LODWORD(STACK[0x55F0]) = STACK[0x4870];
  LODWORD(STACK[0x5430]) = STACK[0x46F0];
  LODWORD(STACK[0x5660]) = STACK[0x48D0];
  LODWORD(STACK[0x5560]) = STACK[0x4840];
  LODWORD(STACK[0x5420]) = STACK[0x47A0];
  LODWORD(STACK[0x5720]) = STACK[0x4858];
  LODWORD(STACK[0x55B0]) = STACK[0x4828];
  LODWORD(STACK[0x56D0]) = STACK[0x4758];
  LODWORD(STACK[0x57C0]) = STACK[0x4898];
  LODWORD(STACK[0x56C0]) = STACK[0x4738];
  LODWORD(STACK[0x53E8]) = STACK[0x4920];
  LODWORD(STACK[0x53F0]) = STACK[0x4768];
  LODWORD(STACK[0x5550]) = STACK[0x47A8];
  LODWORD(STACK[0x5340]) = STACK[0x47D8];
  LODWORD(STACK[0x5318]) = STACK[0x4760];
  LODWORD(STACK[0x5540]) = STACK[0x49E0];
  LODWORD(STACK[0x55A0]) = STACK[0x4960];
  LODWORD(STACK[0x5398]) = STACK[0x49B8];
  LODWORD(STACK[0x53D8]) = STACK[0x4780];
  LODWORD(STACK[0x53B8]) = STACK[0x4968];
  LODWORD(STACK[0x53B0]) = STACK[0x4708];
  LODWORD(STACK[0x53A0]) = STACK[0x48A8];
  LODWORD(STACK[0x54D0]) = STACK[0x49C0];
  LODWORD(STACK[0x5640]) = STACK[0x48F8];
  LODWORD(STACK[0x5360]) = STACK[0x4868];
  LODWORD(STACK[0x53F8]) = STACK[0x4900];
  LODWORD(STACK[0x5710]) = STACK[0x47C0];
  LODWORD(STACK[0x54B0]) = STACK[0x4908];
  LODWORD(STACK[0x5790]) = STACK[0x4950];
  LODWORD(STACK[0x53E0]) = STACK[0x48C8];
  LODWORD(STACK[0x5308]) = STACK[0x49D8];
  LODWORD(STACK[0x55D0]) = STACK[0x48E8];
  LODWORD(STACK[0x5780]) = STACK[0x4730];
  LODWORD(STACK[0x5358]) = STACK[0x4860];
  LODWORD(STACK[0x54C0]) = STACK[0x4980];
  LODWORD(STACK[0x56F0]) = STACK[0x47C8];
  LODWORD(STACK[0x5338]) = STACK[0x49E8];
  LODWORD(STACK[0x5570]) = STACK[0x4818];
  LODWORD(STACK[0x5580]) = STACK[0x49A0];
  LODWORD(STACK[0x5630]) = STACK[0x4928];
  LODWORD(STACK[0x5670]) = STACK[0x4700];
  LODWORD(STACK[0x53A8]) = STACK[0x4958];
  LODWORD(STACK[0x5408]) = STACK[0x4740];
  LODWORD(STACK[0x5530]) = STACK[0x4990];
  LODWORD(STACK[0x55E0]) = STACK[0x4948];
  LODWORD(STACK[0x5320]) = STACK[0x4720];
  LODWORD(STACK[0x5350]) = STACK[0x4970];
  LODWORD(STACK[0x5300]) = STACK[0x4938];
  LODWORD(STACK[0x5500]) = STACK[0x4838];
  LODWORD(STACK[0x5370]) = STACK[0x48F0];
  LODWORD(STACK[0x5770]) = STACK[0x4998];
  LODWORD(STACK[0x54A0]) = STACK[0x4910];
  LODWORD(STACK[0x5450]) = STACK[0x47F8];
  LODWORD(STACK[0x5378]) = STACK[0x4710];
  LODWORD(STACK[0x54E0]) = STACK[0x46F8];
  LODWORD(STACK[0x5590]) = STACK[0x48B8];
  LODWORD(STACK[0x5348]) = STACK[0x4778];
  LODWORD(STACK[0x5388]) = STACK[0x4798];
  LODWORD(STACK[0x52F8]) = STACK[0x49C8];
  LODWORD(STACK[0x57A0]) = STACK[0x48E0];
  LODWORD(STACK[0x55C0]) = STACK[0x4890];
  LODWORD(STACK[0x5310]) = STACK[0x49B0];
  LODWORD(STACK[0x5600]) = STACK[0x4750];
  LODWORD(STACK[0x5610]) = STACK[0x47B8];
  LODWORD(STACK[0x5330]) = STACK[0x4770];
  LODWORD(STACK[0x5380]) = STACK[0x4728];
  LODWORD(STACK[0x5760]) = STACK[0x4940];
  LODWORD(STACK[0x5368]) = STACK[0x4800];
  LODWORD(STACK[0x5400]) = STACK[0x47E8];
  LODWORD(STACK[0x5390]) = STACK[0x4888];
  LODWORD(STACK[0x5440]) = STACK[0x4918];
  LODWORD(STACK[0x52F0]) = STACK[0x49A8];
  LODWORD(STACK[0x5460]) = STACK[0x48B0];
  LODWORD(STACK[0x5520]) = STACK[0x4988];
  LODWORD(STACK[0x5328]) = STACK[0x4808];
  LODWORD(STACK[0x53D0]) = STACK[0x47F0];
  return v3();
}

uint64_t sub_100111AE0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t (*a13)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v17 = (((v16 ^ 0xD8782C13) + 663213037) ^ ((v16 ^ 0x7A6E8763) - 2054063971) ^ ((v16 ^ 0xE1A5B47A) + 509234054)) - 1392474689 + (((*(v15 - 136) ^ 0x7F4BB77D) - 2135668605) ^ ((*(v15 - 136) ^ 0x44822027) - 1149378599) ^ ((*(v15 - 136) ^ 0x787A8850) - 2021296208));
  v18 = (((v13 ^ 0x702CD731) - 1881986865) ^ ((v13 ^ 0xCD922801) + 846059519) ^ ((v13 ^ 0xFE0DE03A) + 32645062)) + (((*(v15 - 132) ^ 0x74FC33F1) - 1962685425) ^ ((*(v15 - 132) ^ 0x217C166) - 35111270) ^ ((*(v15 - 132) ^ 0x3558ED9D) - 895020445)) - 1389026059;
  *(v15 - 136) = v17 ^ ((v17 ^ 0x3A2DBA59) - 532151794) ^ ((v17 ^ 0x601D65A3) - 1166483976) ^ ((v17 ^ 0x825567B6) + 1479598051) ^ ((v17 ^ 0xFDFFFFE7) + 664422324) ^ 0x662958A1;
  *(v15 - 132) = v18 ^ ((v18 ^ 0x95CAF0DD) + 1341909444) ^ ((v18 ^ 0x197FE55E) - 1018233791) ^ ((v18 ^ 0xD6100EDD) + 203495364) ^ ((v18 ^ 0x7F6BFDBF) - 1520769886) ^ 0x667DF9EB;
  v19 = (((v14 ^ 0xDC9144D2) + 594459438) ^ ((v14 ^ 0x1A4FF374) - 441447284) ^ ((v14 ^ 0x856DA8AC) + 2056410964)) - 226655427 + (((*(v15 - 128) ^ 0xE4C4FB1) - 239882161) ^ ((*(v15 - 128) ^ 0x25360B73) - 624298867) ^ ((*(v15 - 128) ^ 0x68C95BC8) - 1758026696));
  v20 = (((a4 ^ 0x27495449) - 659117129) ^ ((a4 ^ 0x3F2433EA) - 1059337194) ^ ((a4 ^ 0x5BDE78A9) - 1541306537)) - 1549832953 + (((*(v15 - 124) ^ 0x1EE7C674) - 518506100) ^ ((*(v15 - 124) ^ 0xFEEECF55) + 17903787) ^ ((*(v15 - 124) ^ 0xA3BA162B) + 1548085717));
  *(v15 - 128) = v19 ^ ((v19 ^ 0x58CFCB01) - 869830184) ^ ((v19 ^ 0xF68CF2F7) + 1650739234) ^ ((v19 ^ 0x3AABC330) - 1371309593) ^ ((v19 ^ 0xFFFFBFEF) + 1796670778) ^ 0x28A45A23;
  *(v15 - 124) = v20 ^ ((v20 ^ 0x862D9EE0) + 1709920237) ^ ((v20 ^ 0x94BF143) - 359849904) ^ ((v20 ^ 0x6AB0BE8F) - 1988726908) ^ ((v20 ^ 0xF9EFFFDF) + 438906580) ^ 0x5F8A31F9;
  return a13(3440170478, a2, 854820876, 64, a5, 1673906932);
}

uint64_t sub_100111FE0(int a1, unsigned int a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  v11 = *(a6 + 4 * (a5 * a4 + 4457475 - 6464 * ((((a5 * a4 + 4457475) >> 6) * v9) >> 32)));
  *(a3 + v7 + a5 * a1 - 2696 - ((((v7 + a5 * a1 - 2696) * a2) >> 32) >> 9) * v6) = (((v11 ^ 0xD0) + 87) ^ ((v11 ^ 0xDE) + 89) ^ ((v11 ^ 0xE7) + 98)) - 16;
  return (*(v10 + 8 * ((2068 * ((((v8 ^ 0x5D0F) + a5 - 23566 - v8) | (v8 - ((v8 ^ 0x5D0F) + a5 - 23566))) >= 0)) ^ (v8 + 21275))))();
}

uint64_t sub_1001120E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (v7 < v9 != v6 - 1708041930 < v9)
  {
    v10 = v7 < v9;
  }

  else
  {
    v10 = v6 - 1708041930 < v7;
  }

  return (*(*(v8 - 120) + 8 * ((55 * v10) ^ a6)))();
}

uint64_t sub_100112CE4(int8x16_t a1, int8x16_t a2, uint8x8_t a3, uint64_t a4, uint64_t a5, int a6, unint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11)
{
  v16.i64[0] = v13 + v11;
  a3.i32[0] = *(v13 + v11);
  v17.i64[0] = v13 + v11 + 2;
  v17.i64[1] = v13 + v11 + 3;
  v16.i64[1] = (v12 + a6) + v11 + v13 - 22613;
  v18 = vandq_s8(v16, *&STACK[0x4D70]);
  v19 = vandq_s8(v17, *&STACK[0x4D70]);
  v20 = vsraq_n_u64(vshlq_n_s64(v19, 0x38uLL), v19, 8uLL);
  v21 = vsraq_n_u64(vshlq_n_s64(v18, 0x38uLL), v18, 8uLL);
  v22 = vdupq_n_s64(0x1EFB64F383DB817AuLL);
  v23 = vaddq_s64(vaddq_s64(v20, v20), v22);
  v24 = vaddq_s64(vaddq_s64(v21, v21), v22);
  v25 = vdupq_n_s64(0xE54F8DDDDC1B310ELL);
  v26 = vsubq_s64(vandq_s8(v23, v25), v20);
  v27 = vsubq_s64(vandq_s8(v24, v25), v21);
  v28 = vdupq_n_s64(0xFDDA86975004A6BBLL);
  v29 = vaddq_s64(v27, v28);
  v30 = vdupq_n_s64(a7);
  v31 = vaddq_s64(v26, v28);
  v32 = veorq_s8(v31, v30);
  v33 = veorq_s8(v29, v30);
  v34 = vdupq_n_s64(0x253241C8E78D9DE2uLL);
  v35 = veorq_s8(v29, v34);
  v36 = veorq_s8(v31, v34);
  v37 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL), v36);
  v38 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL), v35);
  v39 = vdupq_n_s64(0xA498038DF3F54BCELL);
  v40 = vdupq_n_s64(0xADB3FE3906055A19);
  v41 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v37, v37), v39), v37), v40);
  v42 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v38, v38), v39), v38), v40);
  v43 = vdupq_n_s64(0x68306531E64563BCuLL);
  v44 = veorq_s8(v42, v43);
  v45 = vsraq_n_u64(vshlq_n_s64(v35, 3uLL), v35, 0x3DuLL);
  v46 = veorq_s8(v41, v43);
  v47 = veorq_s8(v46, vsraq_n_u64(vshlq_n_s64(v36, 3uLL), v36, 0x3DuLL));
  v48 = veorq_s8(v44, v45);
  v49 = vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL);
  v50 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), v48);
  v51 = vaddq_s64(v49, v47);
  v52 = vdupq_n_s64(0x6AE952130C06B232uLL);
  v53 = vdupq_n_s64(0x4A8B56F679FCA6E7uLL);
  v54 = vdupq_n_s64(0x4EB52682136B9D59uLL);
  v55 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v51, v51), v52), v51), v53), v54);
  v56 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v50, v50), v52), v50), v53), v54);
  v57 = vsraq_n_u64(vshlq_n_s64(v47, 3uLL), v47, 0x3DuLL);
  v58 = veorq_s8(v56, vsraq_n_u64(vshlq_n_s64(v48, 3uLL), v48, 0x3DuLL));
  v59 = veorq_s8(v55, v57);
  v60 = vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL);
  v61 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v59);
  v62 = vaddq_s64(v60, v58);
  v63 = vdupq_n_s64(0x4AE5CE6F63977933uLL);
  v64 = veorq_s8(v62, v63);
  v65 = veorq_s8(v61, v63);
  v66 = vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL);
  v67 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v68 = veorq_s8(v64, v66);
  v69 = vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL);
  v70 = vdupq_n_s64(0x38uLL);
  v71 = veorq_s8(vaddq_s64(v69, v67), a1);
  v72 = vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL);
  v73 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v68), a1);
  v74 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v75 = veorq_s8(v71, v72);
  v76 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v75);
  v78 = veorq_s8(vaddq_s64(v76, v74), a2);
  v79 = veorq_s8(v77, a2);
  v80 = vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL);
  v81 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v82 = veorq_s8(v78, v80);
  v83 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v84 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v82);
  v85 = vaddq_s64(v83, v81);
  v86 = vdupq_n_s64(a9);
  v87 = vdupq_n_s64(a10);
  v88 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v84, v84), v86), v84), v87);
  v89 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v85, v85), v86), v85), v87);
  v90 = vdupq_n_s64(a11);
  v91 = veorq_s8(v89, v90);
  v92 = vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL);
  v93 = veorq_s8(v88, v90);
  v94 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL));
  v95 = vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL);
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), veorq_s8(v91, v92));
  v97 = vaddq_s64(v95, v94);
  v98 = vdupq_n_s64(v14);
  v99 = vdupq_n_s64(0x3875FFC796B25AABuLL);
  v100 = vdupq_n_s64(0xACD97938E7DDD489);
  *(v15 + v11) = vuzp1_s8(veor_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v97, vandq_s8(vaddq_s64(v97, v97), v98)), v99), v100), vnegq_s64(vandq_s8(vshlq_n_s64(v16, 3uLL), v70))), vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v96, vandq_s8(vaddq_s64(v96, v96), v98)), v99), v100), vnegq_s64(vandq_s8(vshlq_n_s64(v17, 3uLL), v70))))), *&vmovl_u8(a3)), *a1.i8).u32[0];
  return (*(STACK[0x57D8] + 8 * ((46 * (v11 != 16)) ^ v12)))();
}

uint64_t sub_1001132DC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v13 = v5 + 4 * a3;
  v14 = v6 + 4 * a3;
  v15 = *v4 & 0xFFFFFFFFFFFFFFF8;
  v16 = *(*v12 + (((v13 & 0xFFFFFFF8) + v9) & v15));
  v17 = __ROR8__(v13 & 0xFFFFFFFFFFFFFFF8, 8);
  v18 = ((((v16 + v17) << (2 * (a4 ^ 0xA9u) - 85)) & 0x6211BD2734E8B362) - (v16 + v17) + 0x4EF7216C658BA64ELL) ^ 0xFEA05557B42353F2;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ v11;
  v21 = __ROR8__(v20, 8);
  v22 = v20 ^ __ROR8__(v19, 61);
  v23 = (v21 + v22 - ((2 * (v21 + v22)) & 0x18162174EBC303A0) - 0x73F4EF458A1E7E30) ^ 0x2E60F4C06F88AEA0;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (((2 * (v25 + v24)) & 0x8CC453597C1F861CLL) - (v25 + v24) - 0x466229ACBE0FC30FLL) ^ 0xA59EC16BA5567DF5;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (((2 * (v28 + v27)) | 0x820A6D013CAA88F4) - (v28 + v27) + 0x3EFAC97F61AABB86) ^ 0xBC0FFC2A77B97C67;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = __ROR8__(v29, 8);
  v32 = *(*v12 + (((v14 & 0xFFFFFFF8 & v8) + (v14 & 0xFFFFFFF8 | (v8 + 4)) + 383982991) & v15));
  v33 = ((2 * (v31 + v30)) | 0x6DBB499D1B11612) - (v31 + v30);
  v34 = __ROR8__(v14 & 0xFFFFFFFFFFFFFFF8, 8);
  v35 = (v7 - ((v32 + v34) | v7) + ((v32 + v34) | 0x611830C73AA763)) ^ 0xB0366C0B169252DFLL;
  v36 = v35 ^ __ROR8__(v32, 61);
  v37 = (v33 - 0x36DDA4CE8D88B09) ^ 0x519C5205F0005DABLL;
  v38 = (__ROR8__(v35, 8) + v36) ^ v11;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = v37 ^ __ROR8__(v30, 61);
  v41 = __ROR8__(v38, 8) + v39;
  v42 = (__ROR8__(v37, 8) + v40) ^ v10;
  v43 = (v41 - ((2 * v41) & 0x3CB8518542980322) - 0x61A3D73D5EB3FE6FLL) ^ 0x3C37CCB8BB252EE1;
  v44 = v43 ^ __ROR8__(v39, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0x1C031738E4A64104;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = __ROR8__(v45, 8);
  v48 = __ROR8__(v42, 8) + (v42 ^ __ROR8__(v40, 61));
  v49 = __ROR8__((((2 * (v47 + v46)) | 0xD1FE9F249E0BFB40) - (v47 + v46) + 0x1700B06DB0FA0260) ^ 0x95F58538A6E9C5BDLL, 8);
  v50 = (((2 * (v47 + v46)) | 0xD1FE9F249E0BFB40) - (v47 + v46) + 0x1700B06DB0FA0260) ^ 0x95F58538A6E9C5BDLL ^ __ROR8__(v46, 61);
  v51 = (((2 * (v49 + v50)) | 0x44CD224C43F09DB4) - (v49 + v50) + 0x5D996ED9DE07B126) ^ 0xF097196F39209878;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (((2 * (v53 + v52)) & 0xB819DEBDE48F84A0) - (v53 + v52) - 0x5C0CEF5EF247C251) ^ 0xA8D362CFFC4E0700;
  v55 = v54 ^ __ROR8__(v52, 61);
  v56 = __ROR8__(v54, 8);
  *v14 = (((v56 + v55 - ((2 * (v56 + v55)) & 0x4730FB38F7F1F134) + 0x23987D9C7BF8F89ALL) ^ 0xB226F074EC6446DALL) >> (8 * (v14 & 7u))) ^ (((((2 * v48) | 0x18F972BA50D91198) - v48 + 0x738346A2D7937734) ^ 0x1DC234B5BFF0368CuLL) >> (8 * (v13 & 7u))) ^ *v13;
  return (*(STACK[0x57D8] + 8 * ((14 * (a3 != 63)) ^ a4)))();
}

uint64_t sub_100113B9C(uint64_t result)
{
  v1 = result;
  v2 = *result;
  v3 = *(*result + 8);
  v4 = *(result + 8) + 16169987 * ((result - 1226026536 - 2 * (result & 0xB6EC51D8)) ^ 0xE36264F0) - 343859893;
  v9[0] = **result;
  v9[1] = v3;
  v5 = v4 & 0xF6BFBF7D;
  v10 = *(v2 + 16);
  v11 = *(v2 + 24);
  LODWORD(v3) = *(v2 + 36);
  v12 = *(v2 + 32);
  v13 = v3;
  v14 = *(v2 + 40);
  v15 = *(v2 + 48);
  v16 = *(v2 + 56);
  v17 = *(v2 + 64);
  v18 = *(v2 + 72);
  v19 = *(v2 + 80);
  v20 = *(v2 + 88);
  v21 = *(v2 + 96);
  v6 = *(v2 + 104);
  v7 = *(v2 + 112);
  v22 = v6;
  v23 = v7;
  v24 = 2222;
  if (v3 >= (v5 ^ 0x768A3378))
  {
    v8 = -143113070;
  }

  else
  {
    v26 = v9;
    v25[0] = v5 + 551690071 * ((&vars0 + 121230468 - 2 * ((&vars0 - 40) & 0x739D4AC)) ^ 0x49D487FB) + 1300868277;
    result = (*(*(&off_101353600 + (v5 - 1988767270)) + 8 * (v5 - 1988736756) - 4))(v25);
    v8 = v25[1];
  }

  *(v1 + 12) = v8;
  return result;
}

uint64_t sub_100113E50()
{
  v2 = *v1;
  *STACK[0x3F58] = v2;
  return (*(STACK[0x57D8] + 8 * (((((7538 * (v0 ^ 0x5855)) ^ 0x4865) + (((v0 ^ 0x7108) - 6394) | 0x2D18)) * v2) ^ v0 ^ 0x7108)))();
}

void sub_100113EB0(_DWORD *a1)
{
  v1 = *a1 ^ (410706167 * ((((2 * a1) | 0x316665E) - a1 - 25899823) ^ 0x9A541F79));
  v3 = *(&off_101353600 + (v1 - 29905)) - 4;
  v4 = (1917435887 * ((&v3 - 867135256 - 2 * (&v3 & 0xCC5090E8)) ^ 0x2AEBCBEE)) ^ (v1 - 1723141777);
  v2 = *(&off_101353600 + (v1 ^ 0x72CA)) - 4;
  (*&v2[8 * (v1 + 1172)])(&v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100113FD8()
{
  **(v3 + 8 * (v0 ^ 0x7670)) = 0;
  v6 = v1;
  v5 = (v0 + 1717140628) ^ (1964904101 * ((2021038488 - (&v5 | 0x78769998) + (&v5 | 0x87896667)) ^ 0x7DAB8DE3));
  return (*(v2 + 8 * (v0 + 1193)))(&v5);
}

uint64_t sub_1001140E8@<X0>(int a1@<W8>)
{
  v1 = STACK[0xBBF0];
  v2 = STACK[0xBBA0];
  STACK[0x8AC8] = STACK[0xBBA0];
  v3 = STACK[0xA098];
  STACK[0x5CB0] = STACK[0xA098];
  v4 = STACK[0x6F18];
  STACK[0x8600] = STACK[0x6F18];
  v5 = STACK[0x7748];
  STACK[0x90D0] = STACK[0x7748];
  v6 = STACK[0xA050];
  STACK[0xA320] = STACK[0xA050];
  v7 = STACK[0x79D0];
  STACK[0x7340] = STACK[0x79D0];
  if (v2)
  {
    v8 = v3 == 0;
  }

  else
  {
    v8 = 1;
  }

  v14 = v8 || v4 == 0 || v5 == 0 || v6 == 0 || v7 == 0 || v1 == 0;
  return (*(STACK[0x57D8] + 8 * ((v14 * ((a1 - 890282971) & 0x35103E7F ^ ((a1 - 15776) | 0x800) ^ 0x3052)) ^ a1)))();
}

uint64_t sub_10011423C()
{
  v2 = *(v1 + 295);
  *(v1 + 1882) = v2;
  v3 = *(v1 + 2408);
  v4 = v3 & 0xFFFFFFF8;
  v5 = 2 * (v3 & 0xFFFFFFF8);
  v6 = *STACK[0x51F0];
  v7 = *STACK[0x51E8] & 0xFFFFFFF8;
  v8 = *(v6 + (v7 & ((v3 & 0xFFFFFFF8 ^ 0xF8BB0E26) - 1953806637 + (v5 | 0xE89E3B3))));
  v9 = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  v10 = (v8 + v9) ^ 0xC2AF3EAA3FF1B8E4;
  v11 = v10 ^ __ROR8__(v8, 61);
  v12 = __ROR8__(v10, 8);
  v13 = (0xFCB7EAD5CCC59A3BLL - ((v12 + v11) | 0xFCB7EAD5CCC59A3BLL) + ((v12 + v11) | 0x348152A333A65C4)) ^ 0x66BA41F72BB7D138;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (((2 * (v15 + v14)) | 0x2F885D6BEDDEB5B0) - (v15 + v14) + 0x683BD14A0910A528) ^ 0xF834682397F64855;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = __ROR8__(v16, 8);
  v19 = __ROR8__((0xE340AE23F6668D8CLL - ((v18 + v17) | 0xE340AE23F6668D8CLL) + ((v18 + v17) | 0x1CBF51DC09997273)) ^ 0xBD0DCC19DEEF6158, 8);
  v20 = (0xE340AE23F6668D8CLL - ((v18 + v17) | 0xE340AE23F6668D8CLL) + ((v18 + v17) | 0x1CBF51DC09997273)) ^ 0xBD0DCC19DEEF6158 ^ __ROR8__(v17, 61);
  v21 = (0x1D31D2ECBFBF9F17 - ((v19 + v20) | 0x1D31D2ECBFBF9F17) + ((v19 + v20) | 0xE2CE2D13404060E8)) ^ 0xDCA0D52B5A52804;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (((2 * (v23 + v22)) & 0xE4A0A3C66AD65348) - (v23 + v22) + 0xDAFAE1CCA94D65BLL) ^ 0xD5681D03008D0F85;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (((2 * (v26 + v25)) & 0xA13BC84A7E537608) - (v26 + v25) - 0x509DE4253F29BB05) ^ 0xFB371AF44A678774;
  LOBYTE(v3) = 8 * (v3 & 7);
  v28 = ((__ROR8__(v27, 8) + (v27 ^ __ROR8__(v25, 61))) ^ 0x6F4F60BC0E025EE0) >> v3;
  v29 = STACK[0x8070];
  LOBYTE(v19) = *(STACK[0x8070] + 12699);
  *(v1 + 1883) = v28;
  v30 = *(v6 + (v7 & ((v4 ^ 0x96325F0A) + 688035767 + (v5 | 0xD39B41EB))));
  v31 = (0x2E50BC35956117FFLL - ((v30 + v9) | 0x2E50BC35956117FFLL) + ((v30 + v9) | 0xD1AF43CA6A9EE800)) ^ 0x13007D60556F50E4;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0x65F254DD188DB4FCLL;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0x6FF046966119128DLL;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = __ROR8__((v37 + v36 - ((2 * (v37 + v36)) & 0x1C5B0817E0880818) - 0x71D27BF40FBBFBF4) ^ 0x2F9F19CE27321727, 8);
  v39 = (v37 + v36 - ((2 * (v37 + v36)) & 0x1C5B0817E0880818) - 0x71D27BF40FBBFBF4) ^ 0x2F9F19CE27321727 ^ __ROR8__(v36, 61);
  v40 = (0xDA4BA3A41B693364 - ((v38 + v39) | 0xDA4BA3A41B693364) + ((v38 + v39) | 0x25B45C5BE496CC9BLL)) ^ 0xCAB07C1A11738477;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v40, 8);
  v43 = (((2 * (v42 + v41)) & 0x9EC93FAA88B8D450) - (v42 + v41) - 0x4F649FD5445C6A29) ^ 0x685CD33571BA4C09;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0x5455012E8AB1C38FLL;
  *(v29 + 12699) = v2 ^ v19 ^ (((__ROR8__(v45, 8) + (v45 ^ __ROR8__(v44, 61))) ^ 0x6F4F60BC0E025EE0uLL) >> v3);
  v46 = (STACK[0x8070] + 12106);
  *(v1 + 2416) = v46;
  *(v1 + 2431) = *v46;
  v47 = *(v1 + 3920) + 33;
  *(v1 + 296) = v47;
  v48 = STACK[0x57D8];
  v49 = *(STACK[0x57D8] + 8 * (v0 ^ 0x23E0));
  *(v1 + 2432) = v47;
  *(v1 + 280) = v49;
  return (*(v48 + 8 * (LODWORD(STACK[0x4D6C]) ^ 0x2346)))();
}

uint64_t sub_100114700()
{
  v1 = STACK[0x2654];
  v2 = STACK[0x85C0];
  v3 = *STACK[0x8600];
  v4 = STACK[0x710C];
  v5 = STACK[0x9870];
  v6 = 1964904101 * (((v0 - 240) & 0x165F6C6B | ~((v0 - 240) | 0x165F6C6B)) ^ 0x13827810);
  LODWORD(STACK[0x1D4E8]) = LODWORD(STACK[0x2654]) - v6 + 12156;
  STACK[0x1D4E0] = v2;
  LODWORD(STACK[0x1D4D4]) = v6 + ((v1 - 3233) | 8) + v4 + 750627324 + 3034;
  STACK[0x1D4D8] = v5;
  STACK[0x1D4C0] = STACK[0x3E00];
  STACK[0x1D4C8] = v3;
  v7 = STACK[0x57D8];
  v8 = (*(STACK[0x57D8] + 8 * (v1 + 28242)))(v0 - 240);
  return (*(v7 + 8 * ((7622 * (LODWORD(STACK[0x1D4D0]) == ((v1 - 3233) ^ 0xF77845F7))) ^ v1)))(v8);
}

uint64_t sub_10011480C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v11 = v8;
  v12 = v10 < a8;
  if (v12 == (v11 - 57206507) < 0x36DB27E)
  {
    v12 = v11 - 57206507 < v10;
  }

  return (*(STACK[0x57D8] + 8 * ((2029 * !v12) ^ v9)))();
}

uint64_t sub_10011516C()
{
  v0 = STACK[0x51B8] - 3348;
  v1 = (STACK[0x51B8] - 5014) | 0x2306;
  v2 = (STACK[0x51B8] - 1301310680) & 0x4D905FEF;
  v3 = STACK[0x5BE0];
  v4 = *(STACK[0x5BE0] + 8);
  v5 = STACK[0xADF0];
  v5[1] = v4;
  *v5 = *v3;
  return (*(STACK[0x57D8] + 8 * (((v2 ^ 0x2C84 ^ v1) * (v4 == 0)) ^ v0)))();
}

uint64_t sub_100115268(uint64_t result)
{
  v1 = result;
  v2 = *(result + 12);
  v3 = *result;
  v4 = *(*result + 8);
  v10[0] = **result;
  v10[1] = v4;
  v5 = (v2 ^ (1964904101 * ((-1032327551 - (result | 0xC277EE81) + (result | 0x3D88117E)) ^ 0xC7AAFAFA))) - 452543698;
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  v6 = *(v3 + 36);
  v13 = *(v3 + 32);
  v14 = v6;
  v15 = *(v3 + 40);
  v16 = *(v3 + 48);
  v17 = *(v3 + 56);
  v18 = *(v3 + 64);
  v19 = *(v3 + 72);
  v20 = *(v3 + 80);
  v21 = *(v3 + 88);
  v22 = *(v3 + 96);
  v7 = *(v3 + 104);
  v8 = *(v3 + 112);
  v23 = v7;
  v24 = v8;
  v25 = 4444;
  if (v6 >= v5 + 1631363886)
  {
    v9 = -143113070;
  }

  else
  {
    v26[0] = v5 + 551690071 * (((&vars0 - 40) & 0x912527CB | ~((&vars0 - 40) | 0x912527CB)) ^ 0x20378B63) + 626033499;
    v27 = v10;
    result = (*(*(&off_101353600 + (v5 ^ 0x9EC35980)) + 8 * v5 + 0x309E8FD8CLL))(v26);
    v9 = v26[1];
  }

  *(v1 + 8) = v9;
  return result;
}

uint64_t sub_100115870()
{
  LODWORD(STACK[0xA40]) = v0;
  LOBYTE(STACK[0x9C3]) = v1;
  return (*(v3 + 8 * ((((v2 + 1211073667) ^ 0x86C) * v1) ^ (v2 + 1211099948))))();
}

uint64_t sub_1001158D0@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  *(v3 - 112) = *a2;
  *(v3 - 111) = *(a2 + 1);
  *(v3 - 103) = *(a2 + 9);
  *(v3 - 99) = *(a2 + 13);
  *(v3 - 97) = *(a2 + 15);
  return (*(a1 + 8 * v2))();
}

uint64_t sub_100115920()
{
  v2 = (&STACK[0x1D80] + STACK[0xAB0]);
  STACK[0xAB0] = (v0 - 6353) + STACK[0xAB0] - 8185;
  v3 = (*(v1 + 8 * (v0 + 17265)))(v2 + 1, 0, 24);
  v4 = STACK[0x1400];
  *v2 = 0;
  return (*(v1 + 8 * (((v4 + 16 > v2 + 20) * (v0 ^ 0x38F0)) ^ v0)))(v3);
}

uint64_t sub_1001159A0()
{
  v2 = *(STACK[0xBD0] + 24);
  STACK[0xB60] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 - 134577909) & 0xBFD5CFB3 ^ 0x482F55CC) + v0 - 2294)) ^ v0)))();
}

uint64_t sub_100115CB8()
{
  *(v1 + 2688) = v2;
  v5 = 551690071 * ((v4 - 240 - 2 * ((v4 - 240) & 0x2806F557F101BCB6) + 0x2806F557F101BCB6) ^ 0x599BA799BFECEFE1);
  LODWORD(STACK[0x1D4C4]) = (551690071 * ((v4 - 240 - 2 * ((v4 - 240) & 0xF101BCB6) - 251544394) ^ 0xBFECEFE1)) ^ 0x29652DB9 ^ (v0 + v3);
  LODWORD(STACK[0x1D4D0]) = 551690071 * ((v4 - 240 - 2 * ((v4 - 240) & 0xF101BCB6) - 251544394) ^ 0xBFECEFE1);
  LODWORD(STACK[0x1D4CC]) = v0 + v3 - 551690071 * ((v4 - 240 - 2 * ((v4 - 240) & 0xF101BCB6) - 251544394) ^ 0xBFECEFE1) + 694493918;
  LODWORD(STACK[0x1D4C8]) = ((v0 + v3) ^ 0x296522EF) - 551690071 * ((v4 - 240 - 2 * ((v4 - 240) & 0xF101BCB6) - 251544394) ^ 0xBFECEFE1);
  LODWORD(STACK[0x1D4C0]) = (v0 - 1079089617) ^ (551690071 * ((v4 - 240 - 2 * ((v4 - 240) & 0xF101BCB6) - 251544394) ^ 0xBFECEFE1));
  STACK[0x1D4E0] = v5 + 4151854225;
  STACK[0x1D4D8] = v2 - v5;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v0 + 9201)))(v4 - 240);
  return (*(v6 + 8 * SLODWORD(STACK[0x1D4D4])))(v7);
}

uint64_t sub_100115D98(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 26;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 + 4869)))(26);
  *(a1 + 24) = v4;
  return (*(v3 + 8 * (((v4 == 0) * (((4 * v1) ^ 0x19C90) + ((v1 - 20729) | 0x4016) - 37061)) ^ v1)))();
}

uint64_t sub_100115E10(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v11 = *(*(a8 + 1360) + 4 * (a7 + ((a1 + 5995) ^ 0x228C4D0) - 8768 * ((((a1 + 5995) ^ 0x228C4D0u) + a7) / 0x2240)));
  *(*(a8 + 1368) + v10 - 6152 * (((v10 * v9) >> 64) >> 12)) = (((v11 ^ 0x8F) - 50) ^ ((v11 ^ 0x3C) + 127) ^ ((v11 ^ 0x55) + 24)) - 89;
  return (*(STACK[0x57D8] + 8 * ((6687 * (v8 == 0)) ^ a1)))();
}

uint64_t sub_100115F24@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v20 = v10 + STACK[0xFE50];
  v21 = *(v20 - 32);
  v20 -= 32;
  v22 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v20 & 0xFFFFFFF8) + 2050767130)) & 0xFFFFFFFFFFFFFFF8));
  v23 = (v22 + __ROR8__(v20 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xB88801D4E1C76353;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  v26 = ((v9 ^ v18 ^ v12) - ((v25 + v24) | 0xE8BA22CA3727D764) + ((v25 + v24) | v19)) ^ v13;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0xE580B17D8CC5E551;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (0x8660D5CFE53C7EBALL - ((v30 + v29) | 0x8660D5CFE53C7EBALL) + ((v30 + v29) | v14)) ^ v15;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (0xA266FEA1269BC080 - ((v33 + v32) | 0xA266FEA1269BC080) + ((v33 + v32) | v16)) ^ v17;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = __ROR8__(v34, 8);
  v37 = ((a4 | (2 * (v36 + v35))) - (v36 + v35) + a5) ^ a6;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ a2;
  v40 = __ROR8__(v39, 8);
  v41 = __ROR8__(v38, 61);
  v42 = (((((a7 | (2 * (v40 + (v39 ^ v41)))) - (v40 + (v39 ^ v41)) + a8) ^ v11) >> (8 * (v20 & 7u))) ^ v21) + 5 * v10;
  *(a9 + ((a3 + v10 * a1) & 0x7F)) = (((2 * v42) & 0xF7) - ((4 * v42) & 0x66) - 69) ^ 0x58;
  return (*(STACK[0x57D8] + 8 * ((3512 * (v10 == 47)) ^ v9)))();
}

uint64_t sub_1001160F0()
{
  v3 = *(v1 + 592);
  v4 = STACK[0x51E8];
  v5 = STACK[0x51F0];
  v6 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v3 & 0xFFFFFFF8) - 1831847764)) & 0xFFFFFFFFFFFFFFF8));
  v7 = (__ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8) + v6) ^ 0xC2AF3EAA3FF1B8E4;
  v8 = v7 ^ __ROR8__(v6, 61);
  v9 = (__ROR8__(v7, 8) + v8) ^ 0x65F254DD188DB4FCLL;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = __ROR8__(v9, 8);
  v12 = (((2 * (v11 + v10)) | 0x6BAD86F1CEC74348) - (v11 + v10) - 0x35D6C378E763A1A4) ^ 0x5A2685EE867AB329;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0xA1B29DC5D776132BLL;
  v15 = __ROR8__(v14, 8);
  v16 = v14 ^ __ROR8__(v13, 61);
  v17 = (0x8A59B6B3424AD1DBLL - ((v15 + v16) | 0x8A59B6B3424AD1DBLL) + ((v15 + v16) | 0x75A6494CBDB52E24)) ^ 0x9AA2690D485066C8;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xD8C7B31FCA19D9DELL;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0x5455012E8AB1C38FLL;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  LODWORD(v21) = 5621 * ((((v23 + v22 - ((2 * (v23 + v22)) & 0x57A6B3D9F5B0B5C6) + 0x2BD359ECFAD85AE3) ^ 0x449C3950F4DA0403uLL) >> (8 * (v3 & 7u))) ^ *(v1 + 295)) + 32028458;
  LODWORD(v15) = v21 - 6152 * (((89362129 * v21) >> 32) >> 7);
  v24 = STACK[0xDCB8];
  v24[3573] = v24[v15];
  v25 = __ROR8__(STACK[0xDC98] & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = ((0x70824D863E123F42 - v25) & 0xB0071889051091ECLL) + v25 - 0x70824D863E123F43 - ((v25 - 0x70824D863E123F43) & 0xB0071889051091ECLL);
  v27 = v26 ^ 0x6380F39EFC016E9ALL;
  v26 ^= 0x186D6050F36F6B76uLL;
  v28 = __ROR8__(v27, 8);
  v29 = __ROR8__((((2 * (v28 + v26)) & 0xBF42F8E660377672) - (v28 + v26) + 0x205E838CCFE444C6) ^ 0x1A22E77BD05B829DLL, 8);
  v30 = (((2 * (v28 + v26)) & 0xBF42F8E660377672) - (v28 + v26) + 0x205E838CCFE444C6) ^ 0x1A22E77BD05B829DLL ^ __ROR8__(v26, 61);
  v31 = (v29 + v30) ^ 0xFBC18F8B9568C440;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (((2 * (v33 + v32)) & 0xC8CD62FCC9F2DCB4) - (v33 + v32) + 0x1B994E819B0691A5) ^ 0x517C80EEF891E896;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (v36 + v35 - ((2 * (v36 + v35)) & 0x331DD8642C67DB8CLL) - 0x667113CDE9CC123ALL) ^ 0xB1DA27689DE86ED1;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0xF7721CC6F3AEFBDCLL;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0xE6B7173A9B2BB05DLL;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = __ROR8__(v41, 8);
  LODWORD(v15) = 5621 * ((((v43 + v42 - ((2 * (v43 + v42)) & 0x62A510967977F45ELL) + 0x3152884B3CBBFA2FLL) ^ 0xA5FE0EB44DD4740DLL) >> (8 * (STACK[0xDC98] & 7u))) ^ *STACK[0xDC98]) + 32028458;
  v24[516] = v24[v15 - 6152 * (((89362129 * v15) >> 32) >> 7)];
  v44 = STACK[0xDCA8] + 3;
  v45 = *(*v5 + (((v44 & 0x8AB69E30) + (v44 & 0x754961C8 | 0x8AB69E32) + 1411914678) & *v4));
  v46 = __ROR8__(v44 & 0xFFFFFFFFFFFFFFF8, 8);
  v47 = (v46 + v45 - ((2 * (v46 + v45)) & 0x5C524D6417ABF842) + 0x2E2926B20BD5FC21) ^ 0x273A426EBD56C8FALL;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0x448D6F6CA711D855;
  v50 = __ROR8__(v49, 8);
  v51 = v49 ^ __ROR8__(v48, 61);
  v52 = (v50 + v51) ^ 0xF5F2FED308AA2278;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = __ROR8__(v52, 8);
  v55 = (((2 * (v54 + v53)) | 0x1D6D156C56F5EF56) - (v54 + v53) + 0x71497549D4850855) ^ 0xE9E5E476D0F1A336;
  v56 = v55 ^ __ROR8__(v53, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ v2;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ 0x24734B65A1E08459;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = __ROR8__(v59, 8);
  v62 = (v61 + v60 - ((2 * (v61 + v60)) & 0xCDA01B635B775906) + 0x66D00DB1ADBBAC83) ^ 0x2619C25B917E6762;
  LODWORD(v15) = (((__ROR8__(v62, 8) + (v62 ^ __ROR8__(v60, 61))) ^ 0x6F635C2EE5D7D2C6) >> (8 * (v44 & 7u))) ^ *v44;
  v24[3755] = v24[5621 * v15 + 32028458 - 6152 * (((89362129 * (5621 * v15 + 32028458)) >> 32) >> 7)];
  v63 = STACK[0xDCA0];
  *(v1 + 600) = STACK[0xDCA0];
  v63 += 9;
  *(v1 + 608) = v63;
  *(v1 + 296) = v63;
  v64 = STACK[0x57D8];
  *(v1 + 280) = *(STACK[0x57D8] + 8 * (v0 ^ 0x232A));
  return (*(v64 + 8 * (LODWORD(STACK[0x10034]) ^ 0x2A59)))();
}

uint64_t sub_100116750(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  LODWORD(STACK[0x4A48]) = LODWORD(STACK[0x5660]) + v15;
  LODWORD(STACK[0x4938]) = LODWORD(STACK[0x5650]) + v12;
  LODWORD(STACK[0x5450]) = v16 & (LODWORD(STACK[0x5620]) ^ 0x62C157AD);
  LODWORD(STACK[0x55A0]) = STACK[0x55D0] & (v17 ^ 0x4092A3C5);
  LODWORD(STACK[0x53D8]) = (a2 ^ 0xA7F5A38E) & STACK[0x55C0];
  LODWORD(STACK[0x56F0]) = STACK[0x54F0] & (v13 ^ 0xEB775038);
  v18 = *(v14 + 4000);
  LODWORD(STACK[0x53D0]) = (a3 ^ 0x9ECDC31E ^ ((v8 - 26827) | 0x5804)) & STACK[0x5530];
  LODWORD(STACK[0x54F0]) = STACK[0x54E0] & (v11 ^ 0xC3BEC641);
  LODWORD(STACK[0x53C8]) = STACK[0x54D0] & (v10 ^ 0x5D63C0C2);
  LODWORD(STACK[0x55D0]) = a8 & (a4 ^ 0xF6FB05D9);
  LODWORD(STACK[0x53C0]) = STACK[0x5490] & (LODWORD(STACK[0x54B0]) ^ 0x5895EA72);
  LODWORD(STACK[0x54E0]) = a1 & (LODWORD(STACK[0x5470]) ^ 0xA27424B1);
  LODWORD(STACK[0x53B8]) = v9 & (a5 ^ 0xD57FF332);
  LODWORD(STACK[0x5600]) = a7 & (a6 ^ 0x5A545C33);
  STACK[0x5300] = (v18 + 36999);
  v19 = *(STACK[0x57D8] + 8 * v8);
  STACK[0x4F78] = (v18 + 39905);
  STACK[0x5430] = (v18 + 37413);
  LODWORD(STACK[0x53E0]) = *STACK[0x5040];
  LODWORD(STACK[0x5408]) = *STACK[0x5710];
  STACK[0x4F38] = (v18 + 37830);
  LODWORD(STACK[0x53E8]) = v18[37830];
  STACK[0x52C8] = (v18 + 35670);
  LODWORD(STACK[0x53F8]) = v18[35670];
  LODWORD(STACK[0x5400]) = *STACK[0x5398];
  LODWORD(STACK[0x53F0]) = *STACK[0x5510];
  STACK[0x4FD0] = (v18 + 37329);
  LODWORD(STACK[0x5410]) = v18[37329];
  STACK[0x54D0] = (v18 + 35834);
  LODWORD(STACK[0x5490]) = v18[35834];
  STACK[0x4FF0] = (v18 + 37995);
  LODWORD(STACK[0x5440]) = v18[37995];
  LODWORD(STACK[0x5420]) = *STACK[0x5328];
  STACK[0x5470] = (v18 + 35172);
  LODWORD(STACK[0x55C0]) = v18[35172];
  LODWORD(STACK[0x5530]) = *STACK[0x5038];
  LODWORD(STACK[0x54B0]) = *STACK[0x5580];
  STACK[0x5650] = (v18 + 39654);
  LODWORD(STACK[0x5660]) = v18[39654];
  STACK[0x51D0] = (v18 + 38410);
  LODWORD(STACK[0x5620]) = v18[38410];
  return v19();
}

uint64_t sub_100116BE4()
{
  *STACK[0x87A8] = 0;
  *STACK[0x83A0] = -769884012;
  return (*(STACK[0x57D8] + 8 * (v0 - 17868)))();
}

uint64_t sub_100116DF0@<X0>(int a1@<W1>, int a2@<W3>, int a3@<W8>)
{
  v6 = STACK[0x5780];
  v7 = LODWORD(STACK[0x5420]) ^ LODWORD(STACK[0x5240]) ^ LODWORD(STACK[0x5238]) ^ LODWORD(STACK[0x5218]);
  v8 = (v5 + a2) >> 16;
  v9 = (v5 + a2 - v8) >> 8;
  v10 = v3 + -((v5 + a1 - v9 - v8) >> 15) + v5 - v9 - v8 + v4 + -((v5 + a1 - ((v5 + a1 - v9 - v8) >> 15) - v9 - v8) >> 1);
  v11 = (v10 ^ 0x532879D) - ((v10 ^ 0x532879D) >> 12) - (((v10 ^ 0x532879D) - ((v10 ^ 0x532879D) >> 12)) >> (LODWORD(STACK[0x5780]) + 36));
  v12 = (v11 ^ 0xB598EF62) - ((v11 ^ 0xB598EF62) >> 12) + (((v11 ^ 0xB598EF62) - ((v11 ^ 0xB598EF62) >> 12)) >> 5);
  v13 = v12 - 703006089 - ((v12 - 703006089) >> 12) + ((v12 - 703006089 - ((v12 - 703006089) >> 12)) >> 4);
  STACK[0x5218] = v10;
  LODWORD(STACK[0x5158]) = v13;
  v14 = v13 ^ v10;
  LODWORD(v10) = (v13 ^ 0x23D5A77A) + ((v13 ^ 0x23D5A77A) >> 13) + (((v13 ^ 0x23D5A77A) + ((v13 ^ 0x23D5A77A) >> 13)) >> 1);
  LODWORD(STACK[0x51A0]) = v11;
  LODWORD(STACK[0x5198]) = v10;
  v15 = v10 ^ v11;
  LODWORD(v10) = v10 - 1713108986 - ((v10 - 1713108986) >> 14) + ((v10 - 1713108986 - ((v10 - 1713108986) >> 14)) >> 5);
  v16 = (v10 ^ 0xAD9C4459) - ((v10 ^ 0xAD9C4459) >> 12) - (((v10 ^ 0xAD9C4459) - ((v10 ^ 0xAD9C4459) >> 12)) >> 2);
  LODWORD(STACK[0x5150]) = (v14 ^ v16) >> 1;
  LODWORD(STACK[0x5148]) = v16;
  v17 = v16 + 1278014022 - ((v16 + 1278014022) >> 10) - ((v16 + 1278014022 - ((v16 + 1278014022) >> 10)) >> 6);
  LODWORD(STACK[0x5178]) = (v15 ^ v17) >> 1;
  LODWORD(STACK[0x51E0]) = v7 ^ 0x6594FBDE;
  LODWORD(STACK[0x5188]) = v17;
  LODWORD(STACK[0x5190]) = v12;
  LODWORD(STACK[0x5180]) = v10;
  v18 = v17 - 642588001 + ((v17 - 642588001) >> 11) - ((v17 - 642588001 + ((v17 - 642588001) >> 11)) >> 5);
  LODWORD(STACK[0x5140]) = v18;
  LODWORD(STACK[0x5130]) = (v10 ^ v12 ^ v18) >> 1;
  v19 = STACK[0x55D0];
  LODWORD(STACK[0x5138]) = a3 & (((LODWORD(STACK[0x5700]) ^ LODWORD(STACK[0x55D0])) ^ LODWORD(STACK[0x5720])) >> 1);
  LODWORD(STACK[0x5128]) = a3 & (v19 >> 1);
  LODWORD(STACK[0x5700]) = a3 & ((LODWORD(STACK[0x5730]) ^ LODWORD(STACK[0x5570])) >> 1);
  LODWORD(STACK[0x5710]) = a3 & ((LODWORD(STACK[0x5740]) ^ LODWORD(STACK[0x5710])) >> 1);
  v20 = *(STACK[0x57D8] + 8 * v6);
  LODWORD(STACK[0x5780]) = v6 + 9640;
  return v20(LODWORD(STACK[0x5220]), STACK[0x56C0], 2347486707);
}

uint64_t sub_1001171DC()
{
  *(STACK[0x8070] + 7362) = -64;
  *(STACK[0x8070] + 11513) = -10;
  *(STACK[0x8070] + 1548) = -102;
  *(STACK[0x8070] + 955) = 58;
  *(STACK[0x8070] + 7955) = -21;
  v3 = LODWORD(STACK[0x57C0]) + v1;
  *(STACK[0x8070] + 2141) = 48;
  *(STACK[0x8070] + 12699) = 101;
  *(STACK[0x8070] + 362) = -41;
  *(STACK[0x8070] + 8548) = -34;
  v4 = (((((-86 - v3) ^ 3) + 7) ^ (((-86 - v3) ^ 6) + 4)) ^ (((-86 - v3) ^ (((v2 + 12) & 0x67) - 39) ^ 4) + 9)) & 0xF;
  LODWORD(STACK[0x5780]) = v3;
  v5 = v3 - 132487632 + (((v4 ^ 0xBF904F6F) + 1006040093) ^ ((v4 ^ 0x459DBDFD) - 1040513393) ^ ((v4 ^ 0xFA0DF292) + 2120960482));
  *(STACK[0x8070] + 12106) = -115;
  *(STACK[0x8070] + 6176) = 56;
  *(STACK[0x8070] + 10920) = -73;
  *(STACK[0x8070] + 9734) = -103;
  *(STACK[0x8070] + 9141) = 85;
  *(v0 + 3964) = v5;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v2 ^ 0x63D2)))(v5 - 2088837524);
  *(STACK[0x8070] + 6769) = -127;
  STACK[0xB7E8] = v7 + 0x3BAD382B94D391CALL;
  *(STACK[0x8070] + 10327) = 82;
  return (*(v6 + 8 * (v2 ^ (16341 * (v1 != 0)))))();
}

uint64_t sub_100117504()
{
  v3 = 10 * (v2 ^ 0x59D4);
  v4 = *(STACK[0x4638] + 8);
  v5 = *STACK[0x51E8];
  STACK[0x5780] = *STACK[0x51F0];
  LODWORD(STACK[0x5770]) = v5 & ((v3 + 1382729398) ^ 0xAD94F0FC);
  v6 = *(STACK[0x57D8] + 8 * v3);
  LODWORD(STACK[0x5750]) = v1 - 85541416;
  LODWORD(STACK[0x57A0]) = v1;
  STACK[0x5790] = v4;
  LODWORD(STACK[0x5760]) = v0 - 1952915494;
  return v6();
}

uint64_t sub_1001175B8()
{
  STACK[0x74F0] = STACK[0x6E98];
  LODWORD(STACK[0x988C]) = STACK[0x8D9C];
  STACK[0x9818] = STACK[0x5FA0];
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100117698(uint64_t a1, uint64_t a2)
{
  v6 = STACK[0x57D8];
  STACK[0x79F0] = *(STACK[0x57D8] + 8 * v3);
  STACK[0x7458] = v4;
  LODWORD(STACK[0x91B4]) = v5;
  STACK[0xAD28] = 0;
  STACK[0x93A8] = *(v6 + 8 * v2);
  return (*(v6 + 8 * ((((v2 + 481396508) & 0xE34E77E5) + 7563) ^ v2)))(a1, a2, 8256);
}

uint64_t sub_10011778C(_BYTE **a1)
{
  LODWORD(STACK[0x5290]) = v2;
  *a1[483] = 3;
  *a1[481] = -49;
  *a1[480] = -60;
  *a1[485] = 75;
  *a1[484] = -7;
  *a1[477] = 40;
  *a1[482] = 116;
  *a1[479] = 55;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_100117950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = ((v66 + 201443039) ^ v64) + v64 - 575970321;
  v68 = (((((-108 - LODWORD(STACK[0x2C8])) ^ 0x1E) + 41) ^ (-108 - LODWORD(STACK[0x2C8]))) ^ (((-108 - LODWORD(STACK[0x2C8])) ^ 0x17) + 34)) & 0x3F;
  v69 = (((v68 ^ 0x44E074B3) - 1834182954) ^ ((v68 ^ 0x85275BD4) + 1399568819) ^ ((v68 ^ 0xC1C72F6E) + 395037961)) + LODWORD(STACK[0x2C8]);
  LODWORD(v74) = LODWORD(STACK[0x2C8]) - 813266592;
  HIDWORD(v73) = LODWORD(STACK[0x2C8]) + 1845450151;
  LODWORD(a28) = LODWORD(STACK[0x2C8]) - 1273657302;
  v70 = (HIDWORD(a28) ^ 0x1DFB77F7u) + 296573589;
  LODWORD(a35) = v69;
  HIDWORD(v74) = v69 + 597028719;
  v71 = *(STACK[0x2D0] + 8 * v65);
  HIDWORD(a27) = 8 * (((HIDWORD(a28) ^ 0x1F14DE44) + 323154728) ^ HIDWORD(a28) ^ ((HIDWORD(a28) ^ 0x14B4A77B) + 417499673) ^ ((HIDWORD(a28) ^ 0x5F2DC54) + 161804600) ^ v70);
  LODWORD(a34) = 637540402;
  LODWORD(a33) = -1307443200;
  LODWORD(v73) = -1334167162;
  LODWORD(a37) = 1048852;
  LODWORD(STACK[0x200]) = -1870393395;
  LODWORD(a32) = 536871177;
  LODWORD(a29) = 2146427868;
  return v71(v70, HIDWORD(a28), 3884163075, v71, v69, v67, ((2 * (((v63 - 1940545087) ^ v67) + 263022158)) & 0x24B1331A) + ((((v63 - 1940545087) ^ v67) + 263022158) ^ 0x1258998D), (v65 - 575991045 + a7) ^ 0xC6807479, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, 0x64363EEC601E20E1, 0x200024120080FC1, a32, a33, a34, a35, a36, a37, v73, v74, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_100117CD0@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x1D4C8]) = v1 + 289235981 * ((v2 - 1852491145 - 2 * ((v2 - 240) & 0x91953B67)) ^ 0x1617EB58) + 33;
  STACK[0x1D4C0] = a1;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x393B)))(v2 - 240);
  STACK[0x8AC0] = 0x79296B4A625EDF44;
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_100117DE8()
{
  v1 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 + ((v0 + 4075) | 0x40) - 337)))();
}

uint64_t sub_100117E28@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, int a4@<W5>, unint64_t a5@<X7>, uint64_t a6@<X8>)
{
  STACK[0x57B0] = v14;
  STACK[0x5470] = a5;
  LODWORD(STACK[0x43E0]) = LODWORD(STACK[0x4F50]) - LODWORD(STACK[0x4F58]);
  LODWORD(STACK[0x43D8]) = LODWORD(STACK[0x4F40]) - LODWORD(STACK[0x4F48]);
  LODWORD(STACK[0x43D0]) = v7 - v8;
  LODWORD(STACK[0x43C8]) = v13 - v11;
  STACK[0x43C0] = a6 | a1;
  v17 = STACK[0x8070];
  v18 = 12337 * (((*v17 ^ 0x61640560) - 1633944928) ^ ((*v17 ^ 0x4DC46649) - 1304716873) ^ ((*v17 ^ 0x2CA0639E) - 748708766)) + 122691465;
  v17[v18 - v18 / 0x3282 * v15] = -73;
  v19 = STACK[0x8070];
  v20 = 12337 * (((*(v19 + 12337) ^ 0x9E8D7BBF) + 1634894913) ^ ((*(v19 + 12337) ^ 0xB61DAD44) + 1239569084) ^ ((*(v19 + 12337) ^ 0x2890D64C) - 680580684)) + 122691465;
  *(v19 + v20 - v20 / 0x3282 * v15) = -74;
  v21 = STACK[0x8070];
  v22 = 12337 * (((*(v21 + 11744) ^ 0x19FE7F65) - 436109157) ^ ((*(v21 + 11744) ^ 0x44697D0C) - 1147763980) ^ ((*(v21 + 11744) ^ 0x5D9702DE) - 1570177758)) + 122691465;
  *(v21 + v22 - v22 / 0x3282 * v15) = -75;
  v23 = STACK[0x8070];
  v24 = 12337 * (((*(v23 + 11151) ^ 0xBFFDA703) + 1073895677) ^ ((*(v23 + 11151) ^ 0x8C81A544) + 1937660604) ^ ((*(v23 + 11151) ^ 0x337C02F0) - 863765232)) + 122691465;
  *(v23 + v24 - v24 / 0x3282 * v15) = -76;
  v25 = STACK[0x8070];
  v26 = 12337 * ((~(2 * *(v25 + 10558)) & 0x44) + (*(v25 + 10558) ^ 0x2695));
  *(v25 + v26 - (((170071405 * v26) >> 32) >> 9) * v15) = -77;
  v27 = STACK[0x8070];
  v28 = 12337 * (((*(v27 + 9965) ^ 0x15D3E38F) - 366207887) ^ ((*(v27 + 9965) ^ 0xAE6019D9) + 1369433639) ^ ((*(v27 + 9965) ^ 0xBBB3FAE1) + 1145832735)) + 122691465;
  *(v27 + v28 - v28 / 0x3282 * v15) = -78;
  v29 = STACK[0x8070];
  v30 = 12337 * (((*(v29 + 9372) ^ 0xECD993EF) + 321285137) ^ ((*(v29 + 9372) ^ 0x49112653) - 1225860691) ^ ((*(v29 + 9372) ^ 0xA5C8B50B) + 1513573109)) + 122691465;
  *(v29 + v30 - v30 / 0x3282 * v15) = -79;
  v31 = STACK[0x8070];
  v32 = 12337 * (((*(v31 + 8779) ^ 0x7608B2EA) - 1980281578) ^ ((*(v31 + 8779) ^ 0x6AE116DB) - 1793136347) ^ ((*(v31 + 8779) ^ 0x1CE9A486) - 485074054)) + 122691465;
  *(v31 + v32 - v32 / 0x3282 * v15) = -80;
  v33 = STACK[0x8070];
  v34 = 12337 * (((*(v33 + 8186) ^ 0x49ADEAB8) - 1236134584) ^ ((*(v33 + 8186) ^ 0xA375F33D) + 1552551107) ^ ((*(v33 + 8186) ^ 0xEAD81932) + 354936526)) + 122691465;
  *(v33 + v34 - v34 / 0x3282 * v15) = -65;
  v35 = STACK[0x8070];
  v36 = 12337 * (((*(v35 + 7593) ^ 0x4266DC25) - 1114037285) ^ ((*(v35 + 7593) ^ 0x2F4A1BD6) - 793385942) ^ ((*(v35 + 7593) ^ 0x6D2CC744) - 1831651140)) + 122691465;
  *(v35 + v36 - v36 / 0x3282 * v15) = -66;
  v37 = STACK[0x8070];
  v38 = 12337 * (((*(v37 + 7000) ^ 0x880F104) - 142668036) ^ ((*(v37 + 7000) ^ 0xDFAA69CE) + 542479922) ^ ((*(v37 + 7000) ^ 0xD72A987D) + 685074307)) + 122691465;
  *(v37 + v38 - v38 / 0x3282 * v15) = -67;
  v39 = STACK[0x8070];
  v40 = 12337 * (((*(v39 + 6407) ^ 0x9A646A48) + 1704695224) ^ ((*(v39 + 6407) ^ 0xEBF1DB31) + 336471247) ^ ((*(v39 + 6407) ^ 0x7195B1CE) - 1905635790)) + 122691465;
  *(v39 + v40 - v40 / 0x3282 * v15) = -68;
  v41 = STACK[0x8070];
  v42 = 12337 * (((*(v41 + 5814) ^ 0xF0C8A8BD) + 255285059) ^ ((*(v41 + 5814) ^ 0x19488139) - 424182073) ^ ((*(v41 + 5814) ^ 0xE9802933) + 377476813)) + 122691465;
  *(v41 + v42 - v42 / 0x3282 * v15) = -69;
  v43 = STACK[0x8070];
  v44 = 12337 * (((*(v43 + 5221) ^ 0x7E5A8B06) - 2119863046) ^ ((*(v43 + 5221) ^ 0xBE691251) + 1100410287) ^ ((*(v43 + 5221) ^ 0xC03399E0) + 1070360096)) + 122691465;
  *(v43 + v44 - v44 / 0x3282 * v15) = -70;
  v45 = STACK[0x8070];
  v46 = 12337 * (((*(v45 + 4628) ^ 0xA474F4D0) + 1535839024) ^ ((*(v45 + 4628) ^ 0x845A4635) + 2074458571) ^ ((*(v45 + 4628) ^ 0x202EB252) - 539931218)) + 122691465;
  *(v45 + v46 - v46 / 0x3282 * v15) = -71;
  v47 = STACK[0x8070];
  v48 = 12337 * (((*(v47 + 4035) ^ 0xDA57C501) + 631782143) ^ ((*(v47 + 4035) ^ 0xAAB5F9A1) + 1430914655) ^ ((*(v47 + 4035) ^ 0x70E23C17) - 1893874711)) + 122691465;
  *(v47 + v48 - v48 / 0x3282 * v15) = -72;
  v49 = STACK[0x57C0];
  v50 = STACK[0x57A0];
  STACK[0x43B8] = (STACK[0x5060] >> STACK[0x57A0]) ^ (STACK[0x55C0] << STACK[0x57C0]);
  STACK[0x43B0] = STACK[0x5050] | (STACK[0x5058] << v49);
  v51 = STACK[0x5790];
  v52 = STACK[0x5780];
  STACK[0x43A8] = (STACK[0x5038] >> STACK[0x5780]) | (STACK[0x5040] << STACK[0x5790]);
  STACK[0x43A0] = (STACK[0x5030] >> v50) ^ STACK[0x5028];
  STACK[0x4398] = (STACK[0x50B0] >> v52) ^ (STACK[0x50B8] << v49);
  STACK[0x4098] = (STACK[0x5020] >> v50) | (STACK[0x50A8] << v49);
  STACK[0x4090] = STACK[0x5010] | (STACK[0x5018] << v49);
  STACK[0x4088] = (STACK[0x4FE0] >> v50) ^ (STACK[0x4FE8] << v49);
  STACK[0x55C0] = (v16 ^ 0x80) - v10;
  STACK[0x4080] = STACK[0x4FD0] | (STACK[0x5008] << v51);
  STACK[0x4078] = (STACK[0x4FC0] >> v50) | (STACK[0x4FC8] << v49);
  STACK[0x4070] = (STACK[0x4FA8] >> v50) | (STACK[0x4FB0] << v51);
  STACK[0x4068] = (STACK[0x4FA0] >> v52) ^ STACK[0x4F98];
  STACK[0x5168] = a3 + 1968821903;
  STACK[0x4060] = (STACK[0x4F88] >> v52) | (STACK[0x4F90] << v49);
  STACK[0x4390] = STACK[0x4F68] | (STACK[0x4F70] << v49);
  STACK[0x4388] = (v9 >> v52) | (v6 << v51);
  STACK[0x5060] = STACK[0x5098] << v49;
  STACK[0x50A8] = STACK[0x5090] << v49;
  STACK[0x5058] = STACK[0x5088] >> v50;
  STACK[0x50B8] = STACK[0x5080] >> v52;
  STACK[0x5098] = STACK[0x5078] >> v52;
  STACK[0x5090] = STACK[0x5070] >> v50;
  STACK[0x50B0] = STACK[0x5068] >> v50;
  LODWORD(STACK[0x4380]) = 2 * LODWORD(STACK[0x54A0]);
  STACK[0x5088] = STACK[0x5160] << v49;
  STACK[0x5770] = STACK[0x5120] >> v52;
  STACK[0x5120] = STACK[0x50C8] >> v50;
  STACK[0x50C8] = STACK[0x50C0] << v51;
  STACK[0x5310] = STACK[0x5130] << v49;
  LODWORD(STACK[0x4058]) = 2 * LODWORD(STACK[0x52B8]);
  STACK[0x5148] <<= v51;
  STACK[0x5450] = STACK[0x5158] << v51;
  STACK[0x50C0] = STACK[0x5118] >> v52;
  LODWORD(STACK[0x4050]) = 2 * LODWORD(STACK[0x52A0]);
  LODWORD(STACK[0x4048]) = 2 * LODWORD(STACK[0x52D0]);
  STACK[0x52D0] = STACK[0x50F8] >> v50;
  LODWORD(STACK[0x4044]) = 2 * LODWORD(STACK[0x5298]);
  STACK[0x5140] = STACK[0x50F0] >> v52;
  STACK[0x5130] = STACK[0x50D8] >> v50;
  STACK[0x50F8] = STACK[0x50D0] >> v52;
  STACK[0x5118] = STACK[0x50A0] << v51;
  STACK[0x52B8] = STACK[0x4FD8] << v51;
  LODWORD(STACK[0x52A0]) = LODWORD(STACK[0x5750]) + 87;
  LODWORD(STACK[0x4040]) = LODWORD(STACK[0x52F8]) - 11;
  STACK[0x54A0] = STACK[0x5660] + 43;
  STACK[0x5750] = STACK[0x5048] << v49;
  STACK[0x5298] = STACK[0x5000] << v51;
  STACK[0x5160] = STACK[0x4FF8] >> v50;
  STACK[0x50F0] = STACK[0x4FF0] << v49;
  STACK[0x5150] = STACK[0x4FB8] >> v52;
  STACK[0x5158] = STACK[0x4F80] >> v50;
  STACK[0x5340] = STACK[0x4F78] >> v50;
  LODWORD(STACK[0x5660]) = ((a2 - a4 + 13) ^ 5) - 8;
  return (*(STACK[0x57D8] + 8 * v12))();
}

uint64_t sub_100118A80()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x241B)))();
  return (*(v1 + 8 * (v0 - 4712)))(v2);
}

uint64_t sub_100118AAC@<X0>(uint64_t a1@<X8>)
{
  *v4 = v2;
  *(v2 + 8) = *(a1 + v1);
  *(a1 + v1) = v2;
  return (*(STACK[0x57D8] + 8 * v3))();
}

uint64_t sub_100118B38()
{
  v4 = STACK[0x55A0];
  v5 = STACK[0xFE78];
  v6 = *(STACK[0xFE78] + v3 - 5896 * ((((v3 >> 3) * v0) >> 64) >> 4));
  v7 = (LODWORD(STACK[0x55A0]) + 861148543) & 0xCCAB9BD3;
  LODWORD(STACK[0x4EF8]) = v7;
  v8 = *(STACK[0xFE70] + 4 * ((v7 + 2717 * (v6 | ((v6 < 0x1C) << 8)) + 22940694) % 0x2240));
  v9 = *STACK[0x52E0];
  v10 = *(v5 + 3903 * (BYTE1(v8) ^ 0x64) + 4008381 - 5896 * (((1456909 * (3903 * (BYTE1(v8) ^ 0x64u) + 4008381)) >> 32) >> 1));
  v11 = *(v5 + (3903 * (((v8 ^ 0x5F3E0027) - 1130902091) ^ ((v8 ^ 0x99C1969C) + 2053659408) ^ ((v8 ^ 0xC6FF964A) + 626416602)) + 107663712) % 0x1708);
  v12 = v10 & 0xBA ^ 0x6B;
  v13 = *(v5 + (3903 * (((HIBYTE(v8) ^ 0xE4241ACD) - 1163828873) ^ ((HIBYTE(v8) ^ 0x30CFA2C) + 1569292696) ^ ((HIBYTE(v8) ^ 0xE728E0AD) - 1179804905)) - 350216267) % 0x1708);
  v14 = *(v5 + 3903 * (BYTE2(v8) ^ 0xC5) + 4008381 - 5896 * (((1456909 * (3903 * (BYTE2(v8) ^ 0xC5u) + 4008381)) >> 32) >> 1));
  v15 = v13 & 0x22 ^ 0x27;
  v16 = v14 & 0x96 ^ 0x59;
  v17 = v14 ^ (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * (v16 ^ v14 & 0x32)) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ 0x96;
  v18 = v11 & 0x6A ^ 0xC3;
  v19 = (((v13 ^ (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x44) & (2 * ((v13 ^ 0x44) & 6 ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15))) ^ 0x22) << 16) | (v17 << 8);
  v20 = v11 ^ (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x44) & (2 * ((v11 ^ 0x44) & 0xE ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18));
  *(STACK[0xFE70] + 4 * (v1 % 0x2240)) = ((((((v10 ^ (2 * ((v10 ^ 0x64) & (2 * ((v10 ^ 0x64) & (2 * ((v10 ^ 0x64) & (2 * ((v10 ^ 0x64) & (2 * ((v10 ^ 0x64) & (2 * (v12 ^ v10 & 0x1E)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12))) ^ 0x9CE561) & ~v19 | v19 & 0x631A00) << 8) ^ 0xBB5CCBDE) & (v20 ^ 0xFFFFFFB5) | v20 & 0x21) ^ 0x6B7C740F;
  return (*(STACK[0x57D8] + 8 * ((50 * (v2 != 0)) ^ v4)))(v9);
}

uint64_t sub_100118F64(int a1, int a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, int a7)
{
  v9 = *(STACK[0x57C0] + v7) * a2;
  v10 = v9 ^ a7;
  v11 = (v9 ^ a7) + v7;
  v12 = (v11 + WORD1(v11)) >> 8;
  v13 = v11 + (v11 >> 16) + v12;
  v14 = v7 - 832714442 + v10 + (v11 >> 16) + v12;
  v15 = ((v14 ^ v9) + v7 + (((v14 ^ v9) + v7) >> 16)) >> 8;
  v16 = (v14 ^ v9) + v7 + (((v14 ^ v9) + v7) >> 16) + v15;
  v17 = v7 - 832714442 + (v14 ^ v9) + (((v14 ^ v9) + v7) >> 16) + v15;
  v18 = v17 ^ v9;
  v19 = (v17 ^ v9) + v7;
  v20 = (v19 + WORD1(v19)) >> 8;
  v21 = v7 + v18 + WORD1(v19) + v20;
  LODWORD(v20) = v7 - 832714442 + v18 + (v19 >> 16) + v20;
  LODWORD(STACK[0x5780]) ^= v14 ^ (v14 >> 2) & 0x3EF7FEED ^ v17 ^ (v17 >> 2) & 0x3EF7FEED ^ ((v20 >> 2) & STACK[0x3CC] ^ v20 & 0xF6A9BD68 | (v20 >> 2) & 0x8564285 ^ v20 & 0x9564297);
  return (*(STACK[0x57D8] + 8 * ((29349 * (v8 == v7)) ^ a4)))(v13 ^ a1 ^ (v13 >> 2) & 0x3EF7FEED ^ v16 ^ (v16 >> 2) & 0x3EF7FEED ^ v21 ^ (v21 >> 2) & 0x3EF7FEED);
}

uint64_t sub_100119118@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xDD8C]) = STACK[0x15EC];
  LODWORD(STACK[0xDD88]) = v1;
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_100119194()
{
  v1 = STACK[0x57D8];
  STACK[0x8660] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1B60 ^ (237 * (v0 ^ 0x963)))))();
}

uint64_t sub_100119200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v14 = LODWORD(STACK[0x5790]) ^ LODWORD(STACK[0x51E0]) ^ LODWORD(STACK[0x5138]);
  v15 = LODWORD(STACK[0x5430]) ^ LODWORD(STACK[0x5148]);
  LODWORD(STACK[0x51E0]) = v8 - 4696;
  v16 = (v8 - 6329) | 0x4107;
  v17 = v11;
  v18 = v14 ^ v11 ^ v15 ^ LODWORD(STACK[0x55F0]) ^ LODWORD(STACK[0x5760]) ^ LODWORD(STACK[0x5110]) ^ v13 ^ v6 ^ LODWORD(STACK[0x5118]) ^ LODWORD(STACK[0x57C0]) ^ LODWORD(STACK[0x57A0]) ^ a6 ^ STACK[0x5780] & 0x2EF23A05;
  LODWORD(STACK[0x57C0]) = v16;
  LODWORD(STACK[0x5138]) = LODWORD(STACK[0x5310]) ^ v16 ^ 0x52802629;
  v19 = STACK[0x55A0];
  v20 = STACK[0x53B0];
  v21 = LODWORD(STACK[0x5670]) ^ LODWORD(STACK[0x55A0]) ^ LODWORD(STACK[0x5600]) ^ LODWORD(STACK[0x56D0]) ^ LODWORD(STACK[0x53B0]) ^ LODWORD(STACK[0x56E0]) ^ LODWORD(STACK[0x5640]) ^ LODWORD(STACK[0x5660]) ^ LODWORD(STACK[0x5630]) ^ LODWORD(STACK[0x5398]) ^ LODWORD(STACK[0x5440]) ^ LODWORD(STACK[0x5590]) ^ LODWORD(STACK[0x5408]) ^ LODWORD(STACK[0x54C0]) ^ LODWORD(STACK[0x52F0]) ^ LODWORD(STACK[0x5420]) ^ (LODWORD(STACK[0x5540]) - ((2 * LODWORD(STACK[0x5500])) & 0xBE755618) - 1902607390) ^ LODWORD(STACK[0x5308]) ^ 0x31E9CF7E;
  LODWORD(STACK[0x5770]) = v18;
  LODWORD(STACK[0x5760]) = v18 ^ 0x6B282503;
  v22 = (v18 ^ 0x6B282503) - 2 * ((v18 ^ 0x6B282503) & 0x5505B47E ^ v18 & 0x10) - 721046418;
  v23 = STACK[0x53A8];
  v24 = LODWORD(STACK[0x54F0]) ^ LODWORD(STACK[0x5520]) ^ LODWORD(STACK[0x54E0]) ^ LODWORD(STACK[0x5620]) ^ LODWORD(STACK[0x53A8]) ^ LODWORD(STACK[0x5700]) ^ LODWORD(STACK[0x5610]) ^ LODWORD(STACK[0x56C0]) ^ LODWORD(STACK[0x5680]) ^ LODWORD(STACK[0x5650]) ^ LODWORD(STACK[0x5410]);
  v25 = LODWORD(STACK[0x5300]) ^ 0x314AC8C4;
  LODWORD(STACK[0x5540]) = v25;
  v26 = v24 ^ LODWORD(STACK[0x53D0]) ^ LODWORD(STACK[0x5470]) ^ LODWORD(STACK[0x54D0]) ^ LODWORD(STACK[0x5460]) ^ LODWORD(STACK[0x5750]) ^ LODWORD(STACK[0x54B0]) ^ LODWORD(STACK[0x53A0]) ^ v25 ^ v22;
  v27 = v26 ^ LODWORD(STACK[0x52F8]) ^ (2 * ((v26 ^ LODWORD(STACK[0x52F8]) ^ 0x1C5E0DDA) & v12));
  v28 = STACK[0x5338];
  v29 = STACK[0x5320];
  LODWORD(STACK[0x5148]) = ((((v27 ^ 0x4C35A09A) & ~LODWORD(STACK[0x5338]) | STACK[0x5338] & 0xD06BAD40) ^ 0xD06BAD40) << v9) + ((v27 & 0x7FFF62BF ^ 0x1C5E009A ^ (v27 ^ 0x9C5E0DDA) & (LODWORD(STACK[0x5320]) ^ 0x7FFF62ED)) >> v13);
  v30 = (v21 - ((2 * v21) & 0x79EA602) - 2083564799) ^ LODWORD(STACK[0x5450]);
  v31 = v7;
  v32 = STACK[0x55C0];
  v33 = STACK[0x5340];
  v34 = STACK[0x5348];
  LODWORD(STACK[0x5120]) = ((((v30 ^ (2 * ((v30 ^ 0x5E965ACC) & v7)) ^ 0x9B3889F5) & STACK[0x55C0] | STACK[0x5340] & 0x45AED339) ^ 0x45AED339) << v10) | (((v30 ^ (2 * ((v30 ^ 0x5E965ACC) & v7))) & 0x1C836622 ^ 0x1C824200 ^ (v30 ^ (2 * ((v30 ^ 0x5E965ACC) & v7)) ^ 0xDE965ACC) & (LODWORD(STACK[0x5348]) ^ 0x1C83662A)) >> v11);
  v35 = v23 ^ (2 * (v7 & (v23 ^ 0x3C0DCEC7)));
  v36 = STACK[0x55D0];
  v37 = LODWORD(STACK[0x51F8]) ^ (2 * (v12 & STACK[0x51F8]));
  v38 = STACK[0x55B0];
  v39 = ((STACK[0x55B0] & v37) >> v11) | (((v33 & 0xF91D3CC4 | v32 & (v37 ^ 0xF91D3CC4)) ^ 0xF91D3CC4) << v9);
  v40 = v19 ^ (2 * (v12 & (v19 ^ 0x3C0DCEC7)));
  v41 = STACK[0x53F0];
  v42 = (((v28 & 0x814EFFF | (v35 ^ 0x34192138) & ~v28) ^ 0x814EFFF) << v10) ^ LODWORD(STACK[0x53F0]) ^ ((v29 & 0x2401F078 ^ 0x50 ^ STACK[0x55D0] & (v35 ^ 0x180C3EBF)) >> v13);
  v43 = (v29 & 0x3818C61C ^ STACK[0x55D0] & (v40 ^ 0x41508DB) ^ 0x10u) >> v11;
  LODWORD(STACK[0x5430]) = v42 + 1690477524 - ((2 * v42) & 0xC98547A8);
  v44 = STACK[0x53F8];
  v45 = LODWORD(STACK[0x53F8]) ^ (v39 - 1344414312 - ((2 * v39) & 0x5FBBBB30));
  LODWORD(STACK[0x5790]) = v45 + 897604945 - ((2 * v45) & 0x6B00BAA2);
  v46 = LODWORD(STACK[0x5390]) ^ (2 * (v31 & STACK[0x5390]));
  v47 = (((v43 - ((2 * v43) & 0x1FBDC500) - 1881218432) ^ 0x43B67D09) & ~(((v33 & 0x364434A8 | v32 & (v40 ^ 0xA49FA6F)) ^ 0x364434A8) << v10) | (((v33 & 0x364434A8 | v32 & (v40 ^ 0xA49FA6F)) ^ 0x364434A8) << v10) & 0x33976076) ^ 0xCC689F89;
  v48 = v47 + 1690477524 - ((2 * v47) & 0xC98547A8);
  v49 = (((v28 & 0x6964CA4E | (v46 ^ 0x6964CA4E) & ~v28) ^ 0x6964CA4E) << v9) + (((v46 ^ 0xC1375F0) & v38 ^ v34 & 0xC1375F0) >> v13);
  v50 = v20 ^ (2 * (v12 & (v20 ^ 0x3C0DCEC7)));
  v51 = (v50 & 0xAC1216AE ^ 0x2C000686 ^ (v34 ^ 0xAC1216A6) & (v50 ^ 0x3C0DCEC7)) >> v13;
  v52 = v51 - ((2 * v51) & 0x4D88415A) - 1497096019;
  v53 = (v49 - 1344414312 - ((2 * v49) & 0x5FBBBB30)) ^ v44;
  v54 = v53 + 897604945 - ((2 * v53) & 0x6B00BAA2);
  v55 = ((v28 & 0xB752B1A8 | (v50 ^ 0x8B5F7F6F) & ~v28) ^ 0xB752B1A8) << v10;
  v56 = v52 ^ 0x55F5665E ^ (v55 - ((2 * v55) & 0xE6628DE6) - 214874381);
  v57 = LODWORD(STACK[0x51D8]) ^ (2 * (v31 & STACK[0x51D8]));
  v58 = v36;
  v59 = ((v29 & 0xA06ED6C7 ^ 0x42 ^ v36 & (v57 ^ 0xA06ED6C7)) >> v11) ^ ((((v57 ^ 0x3B58989E) & v32 | v33 & 0x3B58989E) ^ 0x3B58989E) << v9);
  v60 = LODWORD(STACK[0x5720]) ^ 0x44D1D508;
  v61 = LODWORD(STACK[0x5490]) ^ v41;
  LODWORD(STACK[0x53B0]) = v61 ^ v48;
  LODWORD(STACK[0x57A0]) = v61 ^ (v56 + 1690477524 - ((2 * v56) & 0xC98547A8));
  v62 = (2 * (v60 & v31) + 797749503 - ((4 * (v60 & v31)) & 0x5F1961FC)) ^ LODWORD(STACK[0x5750]);
  v63 = (v59 - 1344414312 - ((2 * v59) & 0x5FBBBB30)) ^ v44;
  v64 = LODWORD(STACK[0x5200]) ^ (2 * (v12 & STACK[0x5200]));
  v65 = LODWORD(STACK[0x5530]) ^ 0xBE91195;
  v66 = ((v62 & ~v28) << v10) ^ ((v62 & v38) >> v13);
  v67 = (v66 - 1344414312 - ((2 * v66) & 0x5FBBBB30)) ^ v44;
  v68 = STACK[0x51C8];
  LODWORD(STACK[0x5390]) = LODWORD(STACK[0x51C8]) ^ LODWORD(STACK[0x5790]);
  LODWORD(STACK[0x51D8]) = v54 ^ v68;
  LODWORD(STACK[0x51D0]) = (v63 + 897604945 - ((2 * v63) & 0x6B00BAA2)) ^ v68;
  LODWORD(STACK[0x53A8]) = (v67 + 897604945 - ((2 * v67) & 0x6B00BAA2)) ^ v68;
  v69 = (((v33 & 0x6C0A17A7 | v32 & (v64 ^ 0x6C0A17A7)) ^ 0x6C0A17A7) << v9) ^ v41 ^ ((v29 & 0xC0DD0ED3 ^ 0x52 ^ v36 & (v64 ^ 0xC0DD0ED3)) >> v11);
  LODWORD(STACK[0x5400]) = v69 + 1690477524 - ((2 * v69) & 0xC98547A8);
  LODWORD(STACK[0x5790]) = ((((LODWORD(STACK[0x53A0]) ^ (2 * (v65 & v12)) ^ 0xBD974321) & ~v28 | v28 & 0xE0024826) ^ 0xE0024826) << v10) | ((v34 & 0xBECD64B ^ (LODWORD(STACK[0x53A0]) ^ (2 * (v65 & v12)) ^ 0x5679DD4C) & v38 ^ 8) >> v11);
  v70 = LODWORD(STACK[0x5600]) ^ (2 * (v31 & (LODWORD(STACK[0x5600]) ^ 0x3425837A)));
  v71 = ((v28 & 0xD4B3AB3C | (v70 ^ 0xE0962846) & ~v28) ^ 0xD4B3AB3C) << v9;
  v72 = (v70 & 0x83A8CC27 ^ 0x208022 ^ (v70 ^ 0x3425837A) & (v34 ^ 0x83A8CC2F)) >> v13;
  LODWORD(STACK[0x53A0]) = (v72 - ((2 * v72) & 0x35DE8B7E) - 1695595073) & 0x1D93041F ^ 0xFAEFFFFF ^ ((v71 - 594136 - ((2 * v71) & 0xFFEDDE50)) ^ 0x1D9A14C8) & ((v72 - ((2 * v72) & 0x35DE8B7E) - 1695595073) ^ 0x6510BA40);
  v73 = LODWORD(STACK[0x5670]) ^ (2 * (v12 & (LODWORD(STACK[0x5670]) ^ 0x3425837A)));
  v74 = ((v28 & 0x21E272E7 | (v73 ^ 0x15C7F19D) & ~v28) ^ 0x21E272E7) << v10;
  v75 = (v36 & (v73 ^ 0x74221EDB) ^ v29 & 0x40079DA1u) >> v13;
  LODWORD(STACK[0x5780]) = ((((v74 - ((2 * v74) & 0x782407A) + 62988349) ^ 0xE4D92AAE) + 455529810) ^ (((v74 - ((2 * v74) & 0x782407A) + 62988349) ^ 0x506B9941) - 1349228865) ^ (((v74 - ((2 * v74) & 0x782407A) + 62988349) ^ 0xB77393D2) + 1217162286)) + ((((v75 - ((2 * v75) & 0x564A74BA) + 723860061) ^ 0x1C2CF3E) - 29544254) ^ (((v75 - ((2 * v75) & 0x564A74BA) + 723860061) ^ 0xB418E139) + 1273437895) ^ (((v75 - ((2 * v75) & 0x564A74BA) + 723860061) ^ 0x9EFF145A) + 1627450278)) + 786848410;
  LODWORD(STACK[0x55A0]) = ((((LODWORD(STACK[0x5770]) ^ (2 * (STACK[0x5760] & v12)) ^ 0x5AE4B4AF) & v32 | v33 & 0x31CC91AC) ^ 0x31CC91AC) << v10) + (((LODWORD(STACK[0x5770]) ^ (2 * (STACK[0x5760] & v12))) & 0x4CDFE8D8 ^ 0x48082000 ^ (LODWORD(STACK[0x5770]) ^ (2 * (STACK[0x5760] & v12)) ^ 0x6B282503) & (v29 ^ 0x4CDFE88Au)) >> v13);
  v76 = LODWORD(STACK[0x56D0]) ^ (2 * (v12 & (LODWORD(STACK[0x56D0]) ^ 0x2128E039)));
  v77 = (v36 & (v76 ^ 0xBA44A395) ^ v29 & 0x1B6C43AC) >> v13;
  v78 = ((v33 & 0xBE456E44 | v32 & (v76 ^ 0x1F6D8E7D)) ^ 0xBE456E44) << v9;
  LODWORD(STACK[0x5770]) = (v78 - ((2 * v78) & 0x44FB5694) - 1568822454) & 0xC0C25C6F ^ 0xBF7DABDA ^ ((v77 - ((2 * v77) & 0x960A349C) + 1258625614) ^ 0x7438B9DE) & ((v78 - ((2 * v78) & 0x44FB5694) - 1568822454) ^ 0x5D8254B5);
  v79 = LODWORD(STACK[0x5408]) ^ (2 * (v31 & STACK[0x5408]));
  LODWORD(STACK[0x5760]) = (((v28 & 0x4F1560E | (v79 ^ 0x4F1560E) & ~v28) ^ 0x4F1560E) << v10) ^ ((v34 & 0x57EAD22B ^ (v79 ^ 0x57EAD22B) & v38 ^ 8) >> v13);
  LODWORD(STACK[0x5750]) = (((LODWORD(STACK[0x5398]) ^ (2 * (v31 & (LODWORD(STACK[0x5560]) ^ 0x41E76888)))) & 0x7D6DC182 ^ 0x5860C182 ^ (LODWORD(STACK[0x5398]) ^ (2 * (v31 & (LODWORD(STACK[0x5560]) ^ 0x41E76888))) ^ 0xDA70D3F3) & (v34 ^ 0x7D6DC18A)) >> v13) | ((((LODWORD(STACK[0x5398]) ^ (2 * (v31 & (LODWORD(STACK[0x5560]) ^ 0x41E76888))) ^ 0xC10AAEA0) & v32 | v33 & 0x1B7A7D53) ^ 0x1B7A7D53) << v9);
  v80 = LODWORD(STACK[0x5460]) ^ (2 * ((LODWORD(STACK[0x5460]) ^ 0x405D1455) & v31));
  LODWORD(STACK[0x5740]) = ((((v80 ^ 0x66D503ED) & v32 | v33 & 0x268817B8) ^ 0x268817B8) << v9) ^ (((v80 ^ 0xEF2ED135) & v38 ^ v34 & 0xAF73C560) >> v13);
  v81 = LODWORD(STACK[0x5410]) ^ (2 * (STACK[0x5410] & v12));
  v82 = v38;
  LODWORD(STACK[0x5730]) = ((v81 & v38) >> v13) + ((((v81 ^ 0xB88556A5) & v32 | v33 & 0xB88556A5) ^ 0xB88556A5) << v10);
  v83 = LODWORD(STACK[0x5470]) ^ (2 * (STACK[0x5470] & v31));
  LODWORD(STACK[0x5720]) = ((v29 & 0x77E835E5 ^ v36 & (v83 ^ 0x77E835E5) ^ 0x40u) >> v11) ^ ((((v83 ^ 0x16CA1FFA) & v32 | v33 & 0x16CA1FFA) ^ 0x16CA1FFA) << v9);
  v84 = LODWORD(STACK[0x56E0]) ^ (2 * (v31 & (LODWORD(STACK[0x56E0]) ^ 0x5AE7379B)));
  v85 = (((v84 ^ 0x3A521766) & v32 | v33 & 0x60B520FD) ^ 0x60B520FD) << v10;
  v86 = (v84 & 0xEC6A6267 ^ 0x48622203 ^ (v29 ^ 0xEC6A6235) & (v84 ^ 0x5AE7379B)) >> v11;
  v87 = v86 - 1640155822 - ((2 * v86) & 0x3C7A820C) + 2996;
  LODWORD(STACK[0x5710]) = ((((v85 - ((2 * v85) & 0xB031DC9A) - 669454771) ^ 0x1B12789C) - 454195356) ^ (((v85 - ((2 * v85) & 0xB031DC9A) - 669454771) ^ 0xAE0F7FD) - 182515709) ^ (((v85 - ((2 * v85) & 0xB031DC9A) - 669454771) ^ 0xC9EA612C) + 907386580)) + (((v87 ^ 0xF8E91166) + 118943386) ^ ((v87 ^ 0xB066F65B) + 1335429541) ^ ((v87 ^ 0xD6B2A63B) + 692935109)) + 1985359699;
  LODWORD(STACK[0x5398]) = (((LODWORD(STACK[0x5590]) ^ (2 * (v12 & ~LODWORD(STACK[0x55E0])))) & 0x9CA351DF ^ 0x18201057 ^ (LODWORD(STACK[0x5590]) ^ (2 * (v12 & ~LODWORD(STACK[0x55E0]))) ^ 0x782C9C57) & (v34 ^ 0x9CA351D7)) >> v13) | ((((LODWORD(STACK[0x5590]) ^ (2 * (v12 & ~LODWORD(STACK[0x55E0]))) ^ 0x5965B4B1) & v32 | v33 & 0x214928E6) ^ 0x214928E6) << v10);
  v88 = LODWORD(STACK[0x5700]) ^ (2 * (v31 & (LODWORD(STACK[0x5700]) ^ 0x19D35EF6)));
  v89 = ((v28 & 0x50B84C7D | (v88 ^ 0x496B128B) & ~v28) ^ 0x50B84C7D) << v9;
  v90 = (v88 & 0x4504AB0E ^ 0x1000A06 ^ (v29 ^ 0x4504AB5C) & (v88 ^ 0x19D35EF6u)) >> v11;
  LODWORD(STACK[0x5700]) = ((((LODWORD(STACK[0x5308]) ^ (2 * ((LODWORD(STACK[0x5130]) ^ 0x6543A241) & v12)) ^ 0x36BC4643) & ~v28 | v28 & 0x90468B2D) ^ 0x90468B2D) << v9) + ((v34 & 0x51A7C6AC ^ (LODWORD(STACK[0x5308]) ^ (2 * ((LODWORD(STACK[0x5130]) ^ 0x6543A241) & v12)) ^ 0xF75D0BC2) & v38 ^ 8) >> v13);
  LODWORD(STACK[0x56F0]) = ((((v89 - ((2 * v89) & 0x7DF285BC) + 1056522974) ^ 0x5DC5B971) - 1573239153) ^ (((v89 - ((2 * v89) & 0x7DF285BC) + 1056522974) ^ 0xA7AB4885) + 1481947003) ^ (((v89 - ((2 * v89) & 0x7DF285BC) + 1056522974) ^ 0xC497B32A) + 996691158)) + ((((v90 - ((2 * v90) & 0x84657222) - 1036863215) ^ 0x1D14C590) - 487900560) ^ (((v90 - ((2 * v90) & 0x84657222) - 1036863215) ^ 0x1C160BE8) - 471206888) ^ (((v90 - ((2 * v90) & 0x84657222) - 1036863215) ^ 0xC3307769) + 1020233879)) + 19659759;
  v91 = LODWORD(STACK[0x5640]) ^ (2 * (v31 & (LODWORD(STACK[0x5640]) ^ 0x19D35EF6)));
  v92 = v91 ^ 0xEE2A14C9;
  v93 = ((v28 & 0x38CB5815 | (v91 ^ 0x211806E3) & ~v28) ^ 0x38CB5815) << v10;
  v94 = (v34 & 0xF7F94A3F ^ v92 & v38 ^ 8) >> v13;
  LODWORD(STACK[0x56E0]) = ((((v94 - ((2 * v94) & 0xBB565DDC) + 1571499758) ^ 0x1B43192E) - 457382190) ^ (((v94 - ((2 * v94) & 0xBB565DDC) + 1571499758) ^ 0xFEC68117) + 20545257) ^ (((v94 - ((2 * v94) & 0xBB565DDC) + 1571499758) ^ 0xB82EB6D7) + 1204898089)) + ((((v93 - ((2 * v93) & 0x471A1CFE) + 596446847) ^ 0x3AAC7610) - 984380944) ^ (((v93 - ((2 * v93) & 0x471A1CFE) + 596446847) ^ 0xB667ABA3) + 1234719837) ^ (((v93 - ((2 * v93) & 0x471A1CFE) + 596446847) ^ 0xAF46D3CC) + 1354312756)) - 2127020691;
  v95 = LODWORD(STACK[0x5610]) ^ (2 * (v12 & (LODWORD(STACK[0x5610]) ^ 0x19D35EF6)));
  v96 = ((v28 & 0x848EC123 | (v95 ^ 0x9D5D9FD5) & ~v28) ^ 0x848EC123) << v9;
  v97 = (v29 & 0x38E8F6CA ^ 0x42 ^ v36 & (v95 ^ 0x213BA83Cu)) >> v11;
  LODWORD(STACK[0x56D0]) = (v96 - ((2 * v96) & 0x175DB0E8) + 196008052) ^ (v97 - ((2 * v97) & 0xA7BDC446) - 740367837) ^ 0xD8703A57;
  v98 = LODWORD(STACK[0x56C0]) ^ (2 * (v31 & (LODWORD(STACK[0x56C0]) ^ 0xA66E166)));
  v99 = ((v28 & 0x4429B67 | (v98 ^ 0xE247A01) & ~v28) ^ 0x4429B67) << v9;
  v100 = (v98 & 0xA2197857 ^ 0x2006046 ^ (v98 ^ 0xA66E166) & (v34 ^ 0xA219785F)) >> v13;
  LODWORD(STACK[0x56C0]) = (v100 - ((2 * v100) & 0xE2D02B92) - 244836919) & 0x9AF6059 ^ 0xF7789FEF ^ ((v99 - ((2 * v99) & 0x807D1C42) - 1069642207) ^ 0x366E1187) & ((v100 - ((2 * v100) & 0xE2D02B92) - 244836919) ^ 0xE97EA36);
  v101 = STACK[0x5120];
  LODWORD(STACK[0x5308]) = LODWORD(STACK[0x5120]) + 262874405 - ((2 * LODWORD(STACK[0x5120])) & 0x1F564A2A);
  v102 = ((v12 & (LODWORD(STACK[0x5660]) ^ 0xA66E166)) << !((v101 + 37) & 1) << ((v101 + 37) & 1)) ^ LODWORD(STACK[0x5660]);
  v103 = (v102 ^ 0xFC603B67) & v38 ^ v34 & 0xF606DA01;
  v104 = (((v102 ^ 0xDF0763A8) & v32 | v33 & 0xD56182CE) ^ 0xD56182CE) << v10;
  v105 = (v103 >> v13) - ((2 * (v103 >> v13)) & 0x3ACDCCDE) + 493282927;
  LODWORD(STACK[0x5660]) = (((v105 ^ 0xBC9F4EBF) + 1130410305) ^ ((v105 ^ 0x14AFE40) - 21691968) ^ ((v105 ^ 0xA0B35690) + 1598859632)) + 1523977868 + ((((v104 - ((2 * v104) & 0x7ADE503A) + 1030694941) ^ 0xA3F8A3DD) + 1543986211) ^ (((v104 - ((2 * v104) & 0x7ADE503A) + 1030694941) ^ 0x845FA0A7) + 2074107737) ^ (((v104 - ((2 * v104) & 0x7ADE503A) + 1030694941) ^ 0x1AC82B67) - 449325927));
  v106 = LODWORD(STACK[0x5680]) ^ (2 * (v31 & (LODWORD(STACK[0x5680]) ^ 0xA66E166)));
  v107 = (((v106 ^ 0x2CE5E90A) & v32 | v33 & 0x2683086C) ^ 0x2683086C) << v9;
  v108 = (v106 & 0x9036BCCF ^ 0x26A046 ^ (v29 ^ 0x9036BC9D) & (v106 ^ 0xA66E166)) >> v11;
  LODWORD(STACK[0x5680]) = (v107 - ((2 * v107) & 0xB54D2516) + 1520865931) & 0x6BED3A51 ^ 0xDEB6D7AF ^ ((v108 - ((2 * v108) & 0xEBCA068C) + 1977942854) ^ 0xE1F7C6E8) & ((v107 - ((2 * v107) & 0xB54D2516) + 1520865931) ^ 0xA5596D74);
  LODWORD(STACK[0x5670]) = ((((LODWORD(STACK[0x5420]) ^ (2 * ((LODWORD(STACK[0x5580]) ^ 0xA66E166) & v12)) ^ 0x4C2E059A) & ~v28 | v28 & 0xE05009D2) ^ 0xE05009D2) << v9) | (((LODWORD(STACK[0x5420]) ^ (2 * ((LODWORD(STACK[0x5580]) ^ 0xA66E166) & v12)) ^ 0xAAD004EE) & v38 ^ v34 & 0x6AE08A6) >> v11);
  v109 = LODWORD(STACK[0x5650]) ^ (2 * (v31 & (LODWORD(STACK[0x5650]) ^ 0x159920EB)));
  v110 = v28 & 0xFF37BE38 | (v109 ^ 0x6AAE9ED3) & ~v28;
  v111 = (v109 & 0x942C18E7 ^ 0x940800E3 ^ (v29 ^ 0x942C18B5) & (v109 ^ 0x959920EB)) >> v13;
  LODWORD(STACK[0x5650]) = (((v110 ^ 0xFF37BE38) << v9) - 1800116374 - ((2 * ((v110 ^ 0xFF37BE38) << v9)) & 0x2968E9A6) + 3433) ^ (v111 - ((2 * v111) & 0xA6DE3840) + 1399790624) ^ 0xC7DB68F3;
  v112 = LODWORD(STACK[0x5270]) ^ (2 * (v12 & STACK[0x5270]));
  v113 = LODWORD(STACK[0x5300]) ^ 0x43E062C5;
  LODWORD(STACK[0x5590]) = (((v33 & 0x61A5D9D4 | v32 & (v112 ^ 0x61A5D9D4)) ^ 0x61A5D9D4) << v10) + ((v38 & v112) >> v11);
  LODWORD(STACK[0x5640]) = ((((LODWORD(STACK[0x5540]) ^ (2 * (v113 & v31)) ^ 0x8D78426A) & ~v28 | v28 & 0x7FD2E86B) ^ 0x7FD2E86B) << v9) + (((LODWORD(STACK[0x5540]) ^ (2 * (v113 & v31))) & 0xFBE49BE3 ^ 0xF2A08A01 ^ (LODWORD(STACK[0x5540]) ^ (2 * (v113 & v31)) ^ 0xF2AAAA01) & (v29 ^ 0xFBE49BB1)) >> v11);
  v114 = LODWORD(STACK[0x5210]) ^ (2 * (v12 & STACK[0x5210]));
  LODWORD(STACK[0x5580]) = ((v38 & v114) >> v13) + (((v33 & 0xF5C4C29E | v32 & (v114 ^ 0xF5C4C29E)) ^ 0xF5C4C29E) << v10);
  v115 = LODWORD(STACK[0x5630]) ^ (2 * (v31 & (LODWORD(STACK[0x5630]) ^ 0x159920EB)));
  v116 = (v115 & 0xE3250543 ^ 0x81010043 ^ (v115 ^ 0x959920EB) & (v34 ^ 0xE325054B)) >> v13;
  v117 = ((v28 & 0xB7D4FD3E | (v115 ^ 0x224DDDD5) & ~v28) ^ 0xB7D4FD3E) << v10;
  v118 = LODWORD(STACK[0x5278]) ^ (2 * (v12 & STACK[0x5278]));
  v119 = LODWORD(STACK[0x5620]) ^ (2 * (v31 & (LODWORD(STACK[0x5620]) ^ 0x159920EB)));
  v120 = LODWORD(STACK[0x5570]) ^ 0x68F2C730;
  v121 = ((v28 & 0x235B6784 | (v119 ^ 0xB6C2476F) & ~v28) ^ 0x235B6784) << v9;
  LODWORD(STACK[0x5570]) = ((v58 & v118) >> v11) ^ (((v33 & 0xF82AB05C | v32 & (v118 ^ 0xF82AB05C)) ^ 0xF82AB05C) << v9);
  LODWORD(STACK[0x5630]) = (v116 - ((2 * v116) & 0x5382E07E) + 700543039) ^ 0x410C7800 ^ (v117 - ((2 * v117) & 0xD19A107E) + 1758267455);
  v122 = ((v119 ^ 0xCAB4F799) & v38 ^ v34 & 0x5F2DD772) >> v11;
  LODWORD(STACK[0x5620]) = (v122 - ((2 * v122) & 0x22337530) + 286898840) ^ 0x862047A3 ^ (v121 - ((2 * v121) & 0x2E73FA76) - 1757807301);
  v123 = LODWORD(STACK[0x5220]) ^ (2 * (v12 & STACK[0x5220]));
  v124 = v58;
  LODWORD(STACK[0x5560]) = ((v29 & 0x5E4835B ^ 0x52 ^ v58 & (v123 ^ 0x5E4835Bu)) >> v13) | (((v33 & 0x59F81BC1 | v32 & (v123 ^ 0x59F81BC1)) ^ 0x59F81BC1) << v10);
  LODWORD(STACK[0x5610]) = (((v28 & 0x96C0AFDE | (LODWORD(STACK[0x5440]) ^ (2 * (v31 & v120)) ^ 0xF81A0FF8) & ~v28) ^ 0x96C0AFDE) << v10) + (((LODWORD(STACK[0x5440]) ^ (2 * (v31 & v120))) & 0x5A90960C ^ 0x4A908004 ^ (LODWORD(STACK[0x5440]) ^ (2 * (v31 & v120)) ^ 0x6EDAA026) & (v34 ^ 0x5A909604u)) >> v11);
  v125 = LODWORD(STACK[0x5268]) ^ (2 * (v12 & STACK[0x5268]));
  v126 = LODWORD(STACK[0x54B0]) ^ (2 * ((LODWORD(STACK[0x5550]) ^ 0x4BA0D4E5) & v31));
  LODWORD(STACK[0x5550]) = ((v29 & 0x2DC6EEA3 ^ v58 & (v125 ^ 0x2DC6EEA3) ^ 2u) >> v13) | (((v33 & 0xA9DF2A1C | v32 & (v125 ^ 0xA9DF2A1C)) ^ 0xA9DF2A1C) << v9);
  LODWORD(STACK[0x5600]) = ((((v126 ^ 0x9EB2FC6A) & v32 | v33 & 0xB51D383C) ^ 0xB51D383C) << v10) + ((v126 & 0xD921DC0D ^ 0x921C404 ^ (v126 ^ 0x2BAFC456) & (v29 ^ 0xD921DC5F)) >> v13);
  v127 = LODWORD(STACK[0x5218]) ^ (2 * (v12 & STACK[0x5218]));
  LODWORD(STACK[0x5540]) = (((v28 & 0x2D588699 | (v127 ^ 0x2D588699) & ~v28) ^ 0x2D588699) << v9) + ((v82 & v127) >> v11);
  v128 = 2 * ((LODWORD(STACK[0x55F0]) ^ 0x7C98BA77) & v12) - ((4 * ((LODWORD(STACK[0x55F0]) ^ 0x7C98BA77) & v12)) & 0xE92FBA64) - 191374029;
  LODWORD(STACK[0x55F0]) = ((v58 & (v128 ^ LODWORD(STACK[0x54D0]))) >> v13) ^ (((v128 ^ LODWORD(STACK[0x54D0])) & v32) << v10);
  v129 = LODWORD(STACK[0x5230]) ^ (2 * (v31 & STACK[0x5230]));
  LODWORD(STACK[0x5530]) = (((v28 & 0xABD699C4 | (v129 ^ 0xABD699C4) & ~v28) ^ 0xABD699C4) << v9) | ((v129 & v82) >> v11);
  v130 = LODWORD(STACK[0x5250]) ^ (2 * (v12 & STACK[0x5250]));
  v131 = ((((LODWORD(STACK[0x52F0]) ^ (2 * ((LODWORD(STACK[0x5510]) ^ 0x2C346533) & v31)) ^ 0x3A336B51) & v32 | v33 & 0xEF01695E) ^ 0xEF01695E) << v10) ^ (((LODWORD(STACK[0x52F0]) ^ (2 * ((LODWORD(STACK[0x5510]) ^ 0x2C346533) & v31))) & 0x272284E1 ^ 0x5220001 ^ (LODWORD(STACK[0x52F0]) ^ (2 * ((LODWORD(STACK[0x5510]) ^ 0x2C346533) & v31)) ^ 0xD532020F) & (v34 ^ 0x272284E9)) >> v11);
  LODWORD(STACK[0x5510]) = ((v29 & 0x55BF1687 ^ v58 & (v130 ^ 0x55BF1687) ^ 2u) >> v13) | (((v28 & 0x26C707DC | (v130 ^ 0x26C707DC) & ~v28) ^ 0x26C707DC) << v9);
  v132 = LODWORD(STACK[0x5500]) ^ (2 * (STACK[0x5500] & v12));
  v133 = LODWORD(STACK[0x5258]) ^ (2 * (v31 & (LODWORD(STACK[0x5258]) ^ 0x5308DD3E)));
  LODWORD(STACK[0x5500]) = (((v28 & 0x9262AC0C | (v133 ^ 0xC16A7132) & ~v28) ^ 0x9262AC0C) << v10) ^ (((v133 ^ 0x7148F40A) & v82 ^ v34 & 0x22402934) >> v17);
  v134 = ((((v132 ^ 0x8BBB6DEC) & v32 | v33 & 0x8BBB6DEC) ^ 0x8BBB6DEC) << v9) | ((v29 & 0x69C4518F ^ (v132 ^ 0x69C4518F) & v58 ^ 2u) >> v13);
  v135 = (((LODWORD(STACK[0x53D0]) ^ (2 * ((LODWORD(STACK[0x54A0]) ^ 0x70C5FA6D) & v12)) ^ 0x24C70751) & v82 ^ v34 & 0x5511CA06) >> v13) | ((((LODWORD(STACK[0x53D0]) ^ (2 * ((LODWORD(STACK[0x54A0]) ^ 0x70C5FA6D) & v12)) ^ 0xE220641B) & v32 | v33 & 0x93F6A94C) ^ 0x93F6A94C) << v10);
  v136 = LODWORD(STACK[0x5260]) ^ (2 * (v31 & (LODWORD(STACK[0x5260]) ^ 0x5308DD3E)));
  v137 = (2 * ((LODWORD(STACK[0x5128]) ^ 0x60726993) & v12) - ((4 * ((LODWORD(STACK[0x5128]) ^ 0x60726993) & v12)) & 0xCD54016C) - 425066314) ^ LODWORD(STACK[0x52F8]);
  LODWORD(STACK[0x54D0]) = ((v29 & 0x9C392B3 ^ 0x12 ^ v58 & (v136 ^ 0x5ACB4F8Du)) >> v17) + (((v28 & 0xF6D732CA | (v136 ^ 0xA5DFEFF4) & ~v28) ^ 0xF6D732CA) << v9);
  LODWORD(STACK[0x55E0]) = ((v137 & v58) >> v17) + ((v137 & ~v28) << v9);
  v138 = v31;
  v139 = LODWORD(STACK[0x5288]) ^ (2 * (v31 & (LODWORD(STACK[0x5288]) ^ 0x5308DD3E)));
  v140 = LODWORD(STACK[0x54C0]) ^ (2 * (STACK[0x54C0] & v31));
  LODWORD(STACK[0x54C0]) = (((v139 ^ 0x50FA7ED) & v82 ^ v34 & 0x56077AD3) >> v13) + ((((v139 ^ 0x36703761) & v32 | v33 & 0x6578EA5F) ^ 0x6578EA5F) << v10);
  v141 = ((v29 & 0xFE2D54D9 ^ 0x50 ^ v124 & (v140 ^ 0xFE2D54D9)) >> v17) | ((((v140 ^ 0x58B65765) & v32 | v33 & 0x58B65765) ^ 0x58B65765) << v9);
  v142 = LODWORD(STACK[0x5290]) ^ (2 * (v12 & (LODWORD(STACK[0x5290]) ^ 0x5308DD3E)));
  LODWORD(STACK[0x54B0]) = (((v28 & 0xFCE365E | (v142 ^ 0x5CC6EB60) & ~v28) ^ 0xFCE365E) << v10) ^ ((v82 & (v142 ^ 0xA357AFBD) ^ v34 & 0xF05F7283) >> v13);
  v143 = LODWORD(STACK[0x54E0]) ^ (2 * (v138 & (LODWORD(STACK[0x54E0]) ^ 0x3B7BCE78)));
  v144 = (v143 ^ 0x5108C444) & v32 | v33 & 0xEA730A3C;
  v145 = (v34 & 0xF759548A ^ (v143 ^ 0x4C229AF2) & v82 ^ 8) >> v17;
  v146 = LODWORD(STACK[0x5240]) ^ (2 * (v12 & (LODWORD(STACK[0x5240]) ^ 0x27DADE4A)));
  v147 = ((v144 ^ 0xEA730A3C) << v10) - ((2 * ((v144 ^ 0xEA730A3C) << v10)) & 0x7D4DDE3A) - 1096356067;
  v148 = ((((v145 - ((2 * v145) & 0xEB7875B8) - 172213540) ^ 0xF12D46A2) + 248691038) ^ (((v145 - ((2 * v145) & 0xEB7875B8) - 172213540) ^ 0x7D2402AC) - 2099511980) ^ (((v145 - ((2 * v145) & 0xEB7875B8) - 172213540) ^ 0x79B57ED2) - 2041937618)) - 1268573399 + (((v147 ^ 0x5A8BB168) - 1519104360) ^ ((v147 ^ 0x18968AD4) - 412519124) ^ ((v147 ^ 0xFCBBD4A1) + 54799199));
  v149 = LODWORD(STACK[0x54F0]) ^ (2 * (v138 & (LODWORD(STACK[0x54F0]) ^ 0x3B7BCE78)));
  v150 = v28 & 0xF598ECEF | (v149 ^ 0x4EE32297) & ~v28;
  v151 = (v34 & 0x95B42C9C ^ (v149 ^ 0x2ECFE2E4) & v82 ^ 8) >> v17;
  LODWORD(STACK[0x54A0]) = ((v29 & 0xC1721CA3 ^ v124 & (v146 ^ 0xE6A8C2E9) ^ 2) >> v13) | (((v28 & 0x2F78841A | (v146 ^ 0x8A25A50) & ~v28) ^ 0x2F78841A) << v9);
  v152 = ((v150 ^ 0xF598ECEF) << v9) - ((2 * ((v150 ^ 0xF598ECEF) << v9)) & 0x3433F89A) - 1709573043;
  v153 = v152 & 0x309F1A40 ^ 0xDF79FDFF ^ (v152 ^ 0x65E603B2) & ((v151 - ((2 * v151) & 0xEB449FF4) + 1973571578) ^ 0xBAC2AA45);
  v154 = LODWORD(STACK[0x5238]) ^ (2 * (v12 & (LODWORD(STACK[0x5238]) ^ 0x27DADE4A)));
  v155 = LODWORD(STACK[0x5520]) ^ (2 * (v138 & (LODWORD(STACK[0x5520]) ^ 0x3B7BCE78)));
  LODWORD(STACK[0x5470]) = ((v29 & 0x6D04453F ^ 0x12 ^ v124 & (v154 ^ 0x4ADE9B75u)) >> v13) + (((v33 & 0x9C5BCF28 | v32 & (v154 ^ 0xBB811162)) ^ 0x9C5BCF28) << v10);
  v156 = ((v28 & 0x8478A0B1 | (v155 ^ 0x3F036EC9) & ~v28) ^ 0x8478A0B1) << v9;
  v157 = (v29 & 0xA33F8A03 ^ v124 & (v155 ^ 0x1844447B) ^ 2) >> v13;
  v158 = ((((v156 - 947538513 - ((2 * v156) & 0x8F0B6B5E)) ^ 0xF252C764) + 229456028) ^ (((v156 - 947538513 - ((2 * v156) & 0x8F0B6B5E)) ^ 0x82E3EDD3) + 2098991661) ^ (((v156 - 947538513 - ((2 * v156) & 0x8F0B6B5E)) ^ 0xB7349F18) + 1221288168)) + ((((v157 - 2124326195 - ((2 * v157) & 0x2C2B59A)) ^ 0xB504E2AB) + 1257971029) ^ (((v157 - 2124326195 - ((2 * v157) & 0x2C2B59A)) ^ 0xE38FF85B) + 477104037) ^ (((v157 - 2124326195 - ((2 * v157) & 0x2C2B59A)) ^ 0xD7EA403D) + 672513987)) + 1223102588;
  v159 = LODWORD(STACK[0x5298]) ^ (2 * (v12 & (LODWORD(STACK[0x5298]) ^ 0x27DADE4A)));
  LODWORD(STACK[0x5460]) = (((v33 & 0x271BB222 | v32 & (v159 ^ 0xC16C68)) ^ 0x271BB222) << v10) | ((v34 & 0x7F0BD1A ^ v82 & (v159 ^ 0x202A6350) ^ 8) >> v17);
  v160 = LODWORD(STACK[0x5450]) ^ (2 * ((LODWORD(STACK[0x5450]) ^ 0x1BDE61EE) & v138));
  v161 = LODWORD(STACK[0x52A0]) ^ (2 * (v12 & (LODWORD(STACK[0x52A0]) ^ 0x27DADE4A)));
  v162 = ((v160 & 0x3A90B81B ^ 0x1A90200A ^ (v29 ^ 0x3A90B849) & (v160 ^ 0x1BDE61EEu)) >> v17) ^ (((v28 & 0x54B202D | (v160 ^ 0x1E9541C3) & ~v28) ^ 0x54B202D) << v10);
  LODWORD(STACK[0x5440]) = ((v34 & 0xF8C96B9F ^ v82 & (v161 ^ 0xDF13B5D5) ^ 8) >> v13) ^ (((v33 & 0xEE7D364D | v32 & (v161 ^ 0xC9A7E807)) ^ 0xEE7D364D) << v9);
  v163 = STACK[0x5490];
  v164 = LODWORD(STACK[0x5430]) ^ LODWORD(STACK[0x5490]);
  LODWORD(STACK[0x51C8]) = LODWORD(STACK[0x5400]) ^ LODWORD(STACK[0x5490]);
  v165 = STACK[0x53E0];
  v166 = v163 ^ LODWORD(STACK[0x53E0]);
  LODWORD(STACK[0x5420]) = v166 ^ LODWORD(STACK[0x5480]) ^ 0x49E2C238;
  v167 = v148 + 3792;
  v168 = LODWORD(STACK[0x5730]) ^ LODWORD(STACK[0x5398]);
  LODWORD(STACK[0x54E0]) = v135;
  v169 = v168 ^ v135 ^ LODWORD(STACK[0x5750]) ^ LODWORD(STACK[0x5740]) ^ LODWORD(STACK[0x5760]) ^ LODWORD(STACK[0x5610]) ^ LODWORD(STACK[0x55F0]) ^ LODWORD(STACK[0x5720]);
  LODWORD(STACK[0x5450]) = v162;
  LODWORD(STACK[0x5490]) = v141;
  LODWORD(STACK[0x5520]) = v131;
  LODWORD(STACK[0x5410]) = v167;
  v170 = v169 ^ v162 ^ v141 ^ v131 ^ v167;
  v171 = LODWORD(STACK[0x5630]) ^ LODWORD(STACK[0x5620]) ^ LODWORD(STACK[0x5670]) ^ LODWORD(STACK[0x53A0]) ^ LODWORD(STACK[0x56D0]) ^ LODWORD(STACK[0x56C0]) ^ LODWORD(STACK[0x5650]);
  LODWORD(STACK[0x5480]) = v153;
  v172 = v170 ^ v171 ^ v153;
  v173 = LODWORD(STACK[0x5600]) ^ LODWORD(STACK[0x56E0]) ^ LODWORD(STACK[0x5680]);
  LODWORD(STACK[0x53D0]) = v164;
  v174 = v172 ^ v173 ^ v164;
  v175 = LODWORD(STACK[0x5770]) ^ LODWORD(STACK[0x57A0]) ^ LODWORD(STACK[0x56F0]) ^ LODWORD(STACK[0x5780]) ^ LODWORD(STACK[0x5710]);
  LODWORD(STACK[0x5430]) = v158;
  v176 = v174 ^ v175 ^ v158;
  v177 = LODWORD(STACK[0x5790]) ^ LODWORD(STACK[0x53B0]) ^ LODWORD(STACK[0x53A8]);
  LODWORD(STACK[0x54F0]) = v134;
  LODWORD(STACK[0x5300]) = v176 ^ v177 ^ v134 ^ LODWORD(STACK[0x5700]) ^ LODWORD(STACK[0x5640]);
  v178 = STACK[0x53D8];
  v179 = STACK[0x5328];
  LODWORD(STACK[0x5408]) = LODWORD(STACK[0x5140]) ^ 0x6FFCE586 ^ LODWORD(STACK[0x5328]) ^ LODWORD(STACK[0x53D8]);
  LODWORD(STACK[0x5400]) = v178 ^ v179 ^ 0x6FFCE586 ^ LODWORD(STACK[0x51C0]);
  LODWORD(STACK[0x53F8]) ^= LODWORD(STACK[0x5248]) ^ v178 ^ 0x924AE50F;
  v180 = LODWORD(STACK[0x53F0]) + 1026544219 - 2 * (STACK[0x53F0] & 0x3D2FD25F ^ v165 & 4);
  LODWORD(STACK[0x53F0]) = LODWORD(STACK[0x5280]) ^ v179 ^ v178 ^ 0x5BF15EF1;
  v181 = LODWORD(STACK[0x5138]) + 1690477524 - 2 * (STACK[0x5138] & 0x64C2A3DC ^ STACK[0x5310] & 8);
  v182 = LODWORD(STACK[0x5208]) ^ 0x88306244 ^ LODWORD(STACK[0x53E8]);
  LODWORD(STACK[0x53E8]) ^= LODWORD(STACK[0x52A8]) ^ 0x88306244 ^ v180;
  LODWORD(STACK[0x53E0]) = v182 ^ v180;
  LODWORD(STACK[0x53D8]) = v166 ^ 0x524D9469 ^ v181;
  v183 = LODWORD(STACK[0x53C0]) ^ (2 * (v12 & STACK[0x53C0]));
  v184 = v33 & 0xC0EC2B40 | v32 & (v183 ^ 0xC0EC2B40);
  v185 = (v124 & v183) >> v13;
  v186 = (v184 ^ 0xC0EC2B40) << v10;
  v187 = v186 == v185;
  LODWORD(STACK[0x5140]) = v185 ^ v186;
  v188 = LODWORD(STACK[0x52D0]) ^ (2 * (v138 & STACK[0x52D0]));
  LODWORD(STACK[0x5138]) = (((v28 & 0x2F590B51 | (v188 ^ 0x2F590B51) & ~v28) ^ 0x2F590B51) << v9) | ((v34 & 0x127CE95D ^ (v188 ^ 0x127CE95D) & v82 ^ 8) >> v17);
  v189 = LODWORD(STACK[0x5370]) ^ (2 * (v12 & STACK[0x5370]));
  LODWORD(STACK[0x5130]) = ((v124 & v189) >> v17) + (((v33 & 0x895B307A | v32 & (v189 ^ 0x895B307A)) ^ 0x895B307A) << v10);
  v190 = LODWORD(STACK[0x5368]) ^ (2 * (v138 & STACK[0x5368]));
  LODWORD(STACK[0x5128]) = (((v28 & 0x30675530 | (v190 ^ 0x30675530) & ~v28) ^ 0x30675530) << v9) ^ ((v190 & v82) >> v13);
  v191 = LODWORD(STACK[0x5380]) ^ (2 * (v138 & STACK[0x5380]));
  v192 = LODWORD(STACK[0x5160]) ^ (2 * (v138 & (LODWORD(STACK[0x5358]) ^ 0x79BD9AEB)));
  LODWORD(STACK[0x5120]) = ((v124 & v191) >> v13) | ((((v191 ^ 0xE7943ED0) & v32 | v33 & 0xE7943ED0) ^ 0xE7943ED0) << v9);
  LODWORD(STACK[0x5118]) = ((v192 & 0xB8A0A881 ^ 0xB8008001 ^ (v192 ^ 0xFA1DD459) & (v34 ^ 0xB8A0A889)) >> v13) ^ ((((v192 ^ 0x27FD56E3) & v32 | v33 & 0xDDE082BA) ^ 0xDDE082BA) << v9);
  v193 = LODWORD(STACK[0x5190]) ^ (2 * (v12 & STACK[0x5190]));
  v194 = LODWORD(STACK[0x52B0]) ^ (2 * (v138 & (LODWORD(STACK[0x52B8]) ^ 0x153013FE)));
  v195 = v124 & (v194 ^ 0x37B27344) ^ STACK[0x5318] & 0xE19FE700;
  v196 = v17;
  LODWORD(STACK[0x5110]) = ((v29 & 0x94243779 ^ 0x50 ^ v124 & (v193 ^ 0x94243779)) >> v17) | (((v28 & 0x9ABD9419 | (v193 ^ 0x9ABD9419) & ~v28) ^ 0x9ABD9419) << v10);
  LODWORD(STACK[0x5108]) = (v195 >> v17) + (((v28 & 0x6E7E7034 | (v194 ^ 0xB853E470) & ~v28) ^ 0x6E7E7034) << v9);
  v197 = LODWORD(STACK[0x52C0]) ^ (2 * (v12 & (LODWORD(STACK[0x52C8]) ^ 0xA9CEF4E)));
  v198 = v33 & 0xB8229BC1 | v32 & (v197 ^ 0x245D7512);
  v199 = (v197 & 0xD16084E9 ^ 0x906084C1 ^ (v34 ^ 0xD16084E1) & (v197 ^ 0x9C7FEED3)) >> v13;
  LODWORD(STACK[0x5100]) = (v199 - ((2 * v199) & 0xC038FEDE) - 535003281) & 0x34270074 ^ 0xEBDCFFEF ^ ((v199 - ((2 * v199) & 0xC038FEDE) - 535003281) ^ 0x1FE38090) & ((((v198 ^ 0xB8229BC1) << v10) - ((2 * ((v198 ^ 0xB8229BC1) << v10)) & 0xCD909D60) - 423080272) ^ 0x2D10B13B);
  v200 = ((2 * (v12 & STACK[0x5350])) ^ LODWORD(STACK[0x5350])) & 0xA9D6B9C6 | (2 * (v12 & STACK[0x5350])) & 0x56294638 ^ STACK[0x5350] & 0x56294639;
  LODWORD(STACK[0x50F8]) = (((v200 - 1763984227 - ((2 * v200) & 0x2DB7793A)) & 0xA2C37A4A ^ 0x82C33808 ^ (v29 ^ 0xA2C37A18) & ((v200 - 1763984227 - ((2 * v200) & 0x2DB7793A)) ^ 0x96DBBC9D)) >> v17) + (((v33 & 0xB426B99E | v32 & ((v200 - 1763984227 - ((2 * v200) & 0x2DB7793A)) ^ 0x22FD0503)) ^ 0xB426B99E) << v10);
  v201 = LODWORD(STACK[0x52E0]) ^ (2 * (v138 & STACK[0x52E0]));
  LODWORD(STACK[0x50F0]) = (((v28 & 0x3076FA1 | (v201 ^ 0x3076FA1) & ~v28) ^ 0x3076FA1) << v9) | ((v201 & v82) >> v13);
  v202 = LODWORD(STACK[0x52E8]) ^ (2 * (v138 & STACK[0x52E8]));
  v203 = v202 ^ v28 ^ 0x2D5FE502;
  if (v187)
  {
    v203 = STACK[0x50E8];
  }

  LODWORD(STACK[0x50E8]) = ((v203 & 0x27EC311B ^ 0x254C2102 ^ (v203 ^ 0x2D5FE502) & (v202 ^ 0x27EC311B)) << v9) | ((v124 & v202) >> v17);
  v204 = LODWORD(STACK[0x5378]) ^ (2 * (v12 & STACK[0x5378]));
  LODWORD(STACK[0x50E0]) = ((v82 & v204) >> v13) | (((v33 & 0xB1077725 | v32 & (v204 ^ 0xB1077725)) ^ 0xB1077725) << v10);
  v205 = LODWORD(STACK[0x5360]) ^ (2 * (v12 & STACK[0x5360]));
  LODWORD(STACK[0x50D8]) = ((v34 & 0x98812838 ^ v82 & (v205 ^ 0x98812838) ^ 8) >> v17) ^ (((v33 & 0xC2B53312 | v32 & (v205 ^ 0xC2B53312)) ^ 0xC2B53312) << v9);
  v206 = v124;
  LODWORD(STACK[0x50D0]) = ((v29 & 0xEFD9F5DE ^ 0x52 ^ v124 & (LODWORD(STACK[0x52D8]) ^ (2 * (v138 & (LODWORD(STACK[0x5388]) ^ 0x3D37AA4))) ^ 0xB3E155BB)) >> v13) | (((v28 & 0x5629C6A | (LODWORD(STACK[0x52D8]) ^ (2 * (v138 & (LODWORD(STACK[0x5388]) ^ 0x3D37AA4))) ^ 0x595A3C0F) & ~v28) ^ 0x5629C6A) << v10);
  v207 = STACK[0x57B0];
  v208 = STACK[0x51A0];
  v209 = ((*(STACK[0x5198] + (*(v207 + 9) ^ 0x46)) ^ 0xCC) << 16) | ((*(v208 + (*(v207 + 10) ^ 0x94)) ^ 0x42) << 8) | ((*(v207 + 8) ^ 0x71 ^ *(STACK[0x51B0] + (*(v207 + 8) ^ 0xD7))) << 24) | *(v208 + (*(v207 + 11) ^ 0x17)) ^ 0x2E;
  v210 = *(STACK[0x51B0] + (*(v207 + 15) ^ 0xF3)) ^ *(v207 + 15) | ((*(v207 + 13) ^ 0xD1 ^ *(STACK[0x51A8] + (*(v207 + 13) ^ 0xBDLL))) << 16) | ((*(STACK[0x5198] + (*(v207 + 14) ^ 0xCFLL)) ^ 0xDB) << 8) | ((*(STACK[0x5198] + (*(v207 + 12) ^ 0x6BLL)) ^ 0x45) << 24);
  v211 = *(v208 + (*(v207 + 7) ^ 0x94)) | ((*(v207 + 6) ^ 0xE1 ^ *(STACK[0x51A8] + (*(v207 + 6) ^ 0x97))) << 8) | ((*(v208 + (*(v207 + 5) ^ 0x25)) ^ 0xD) << 16) | ((*(STACK[0x5198] + (*(v207 + 4) ^ 0x8ALL)) ^ 0x8C) << 24);
  v212 = *(v207 + 3) ^ 0x32 ^ *(STACK[0x51B0] + (*(v207 + 3) ^ 0x16)) | ((*(v208 + (*(v207 + 2) ^ 0x5CLL)) ^ 0xD4) << 8) | ((*(STACK[0x5198] + ~*v207) ^ 0xC2) << 24) | ((*(v208 + (*(v207 + 1) ^ 0xF0)) ^ 0xB) << 16);
  LODWORD(STACK[0x57B0]) = ((((v212 ^ (2 * ((v212 ^ 0x2A) & v138)) ^ 0xFA2FA6D6) & ~v28 | v28 & 0xFA2FA6FC) ^ 0xFA2FA6FC) << v9) ^ (((v212 ^ (2 * ((v212 ^ 0x2A) & v138))) & 0x5BE57842 ^ (v212 ^ (2 * ((v212 ^ 0x2A) & v138)) ^ 0x2A) & (v29 ^ 0x5BE57810) ^ 2u) >> v196);
  LODWORD(STACK[0x5360]) = ((((v211 ^ (2 * ((v211 ^ 0x42) & v12)) ^ 0x4FF27F7B) & v32 | v33 & 0x4FF27F39) ^ 0x4FF27F39) << v10) | ((v34 & 0x8C91C9E ^ (v211 ^ (2 * ((v211 ^ 0x42) & v12)) ^ 0x8C91CDC) & v82 ^ 8) >> v13);
  LODWORD(STACK[0x5368]) = ((((v209 ^ (2 * (v209 & v138)) ^ 0xA43A3A42) & v32 | v33 & 0xA43A3A42) ^ 0xA43A3A42) << v9) ^ ((v34 & 0x523DB98C ^ (v209 ^ (2 * (v209 & v138)) ^ 0x523DB98C) & v82 ^ 8) >> v13);
  LODWORD(STACK[0x5358]) = ((((v210 ^ (2 * ((v210 ^ 0xE2) & v12)) ^ 0xCF402104) & ~v28 | v28 & 0xCF4021E6) ^ 0xCF4021E6) << v10) + ((v29 & 0x9ECF596C ^ (v210 ^ (2 * ((v210 ^ 0xE2) & v12)) ^ 0x9ECF598E) & v124 ^ 0x40) >> v196);
  v213 = STACK[0x5228];
  LODWORD(STACK[0x50C8]) = (((v33 & 0x844CC8BD | v32 & (STACK[0x5228] & 0xFDE12AA0 ^ 0x7ABC5DED)) ^ 0x844CC8BD) << v10) + ((STACK[0x5228] & 0xCC600080 ^ 0xCC609500 ^ (v34 ^ 0xCC609580) & (STACK[0x5228] & 0xFDE12AA0 ^ 0xFEF09550)) >> v196);
  v214 = 33686018 * LODWORD(STACK[0x5330]);
  LODWORD(STACK[0x50C0]) = ((v29 & 0xA5D5CA76 ^ 0x52 ^ (v29 ^ 2) & (v214 & 0xFDE12AA0 ^ 0x5B255F26)) >> v13) + (((v28 & 0x75623D8A | (v214 & 0xFDE12AA0 ^ 0x8B92A8DA) & ~v28) ^ 0x75623D8A) << v9);
  LODWORD(STACK[0x53C0]) = v28 & 0xD25E78B9 | (v213 & 0xFDE12AA0 ^ 0x2CAEEDE9) & ~v28;
  LODWORD(STACK[0x5380]) = v29 & 0xCB8965CF ^ 0x42 ^ (v29 ^ 0x12) & (v213 & 0xFDE12AA0 ^ 0x3579F09F);
  LODWORD(STACK[0x5378]) = v34 & 0x5CC6FF2D ^ (v214 & 0xFDE12AA0 ^ 0xA2366A7D) & (v34 ^ 0x88108);
  LODWORD(STACK[0x5370]) = ~v33 & 0x892290F3 ^ (v214 & 0xFDE12AA0 ^ 0x77D205A3) & (v33 ^ 0xFFF3FFAF);
  v215 = ((v28 & 0x9D380466 | (v213 & 0x15933562 ^ 0x97F19ED7) & ~v28) ^ 0x9D380466) << v9;
  LODWORD(STACK[0x50B8]) = ((v29 & 0x3391B37 ^ 0x12 ^ (v29 ^ 0x42) & (v213 & 0x15933562 ^ 0x9F08186u)) >> v13) | v215;
  LODWORD(STACK[0x50B0]) = v215 + ((v34 & 0x15A6377F ^ v82 & (v213 & 0x15933562 ^ 0x1F6FADCE) ^ 8) >> v196);
  v216 = (~v33 & 0x2A2FC4B6 ^ (v214 & 0x15933562 ^ 0x20E65E07) & (v33 ^ 0xB5F77FFF)) << v10;
  LODWORD(STACK[0x50A8]) = v216 | ((v214 & 0x823562 ^ 0x8809831 ^ (v214 & 0x15933562 ^ 0xAC99AB1) & (v34 ^ 0x882BD73u)) >> v196);
  LODWORD(STACK[0x50A0]) = ((v29 & 0xCD581CB2 ^ 0x12 ^ (v29 ^ 0x42) & (v214 & 0x15933562 ^ 0xC7918603)) >> v13) | v216;
  LODWORD(STACK[0x5350]) = v34 & 0xAD4EC3DC ^ (v214 & 0xB63FB524 ^ 0xF651194E) & (v34 ^ 0x4289);
  LODWORD(STACK[0x5330]) = v28 & 0xA8899800 | (v214 & 0xB63FB524 ^ 0xF3964292) & ~v28;
  LODWORD(STACK[0x5098]) = ((v29 & 0x9BF7230A ^ (v29 ^ 0x10) & (v213 & 0xB63FB524 ^ 0xC0E8F998) ^ 2) >> v196) | (((v33 & 0x43A4B2C | v32 & (v213 & 0xB63FB524 ^ 0x5F2591BE)) ^ 0x43A4B2C) << v9);
  LODWORD(STACK[0x5090]) = ((v29 & 0x45E80E57 ^ 0x52 ^ (v29 ^ 0x40) & (v214 & 0xB63FB524 ^ 0x1EF7D4C5)) >> v196) | (((v28 & 0xD75AB217 | (v214 & 0xB63FB524 ^ 0x8C456885) & ~v28) ^ 0xD75AB217) << v10);
  LODWORD(STACK[0x5328]) = v33 & 0xE97E18B3 | v32 & (v213 & 0xB63FB524 ^ 0xB261C221);
  LODWORD(STACK[0x5318]) = v213 & 0x900B9024 ^ 0x580B9A00 ^ (v34 ^ 0xD80B9A24) & (v213 & 0xB63FB524 ^ 0x5B1FDA92);
  v217 = v206;
  LODWORD(STACK[0x5088]) = ((v29 & 0xCACA617A ^ 0x52 ^ v206 & (v213 & 0xBF8DB1C2 ^ 0x950CB99B)) >> v13) | (((v28 & 0x8CAEF235 | (v213 & 0xBF8DB1C2 ^ 0xD3682AD4) & ~v28) ^ 0x8CAEF235) << v10);
  LODWORD(STACK[0x5310]) = ~v33 & 0xEB522480 ^ (v214 & 0xBF8DB1C2 ^ 0xB494FC61) & (v33 ^ 0xBFDFFFEF);
  LODWORD(STACK[0x52F8]) = v34 & 0x3C7A38BB ^ (v214 & 0xBF8DB1C2 ^ 0x63BCE05A) & (v34 ^ 0x2022C);
  LODWORD(STACK[0x52F0]) = ~v33 & 0x7699565F ^ (v214 & 0x8F343950 ^ 0xB1034AF7) & (v33 ^ 0xBFBF7FFF);
  LODWORD(STACK[0x5388]) = v214 & 0x8F343950 ^ 0xC79A1CA8;
  v218 = (v29 & 0x2310760F ^ v206 & (v213 & 0x8F343950 ^ 0xE48A6AA7) ^ 2) >> v196;
  v219 = ((v213 & 0x8F343950 ^ 0x295F13DA) & ~v28 | v28 & 0xEEC50F72) ^ 0xEEC50F72;
  LODWORD(STACK[0x5080]) = v218 | (v219 << v9);
  LODWORD(STACK[0x5078]) = v218 + (v219 << v10);
  LODWORD(STACK[0x52E8]) = v29 & 0xA78A4016 ^ 0x12 ^ (v29 ^ 0x12) & (v213 & 0x4943E836 ^ 0x832BB40D);
  LODWORD(STACK[0x52E0]) = v33 & 0xE9E676D8 | v32 & (v213 & 0x4943E836 ^ 0xCD4782C3);
  v220 = ((v28 & 0x371BEC30 | (v214 & 0x4943E836 ^ 0x13BA182B) & ~v28) ^ 0x371BEC30) << v9;
  LODWORD(STACK[0x5070]) = v220 + ((v214 & 0x4100C034 ^ 0x2400D011 ^ (v214 & 0x4943E836 ^ 0x24A1F41B) & (v34 ^ 0x6500D03Du)) >> v13);
  LODWORD(STACK[0x5068]) = ((v29 & 0xB9195B9A ^ 0x12 ^ (v29 ^ 0x12) & (v214 & 0x4943E836 ^ 0x9DB8AF81)) >> v196) + v220;
  v221 = v82;
  LODWORD(STACK[0x52D8]) = v82 & (v213 & 0x4943E836 ^ 0xB4696308) ^ v34 & 0x90C89713;
  v222 = v213 & 0x5C8043D8;
  LODWORD(STACK[0x52D0]) = v33 & 0x58DCD8E2 | v32 & (v213 & 0x5C8043D8 ^ 0x769CF90E);
  LODWORD(STACK[0x5280]) = v213 & 0x1C0040D0 ^ 0x2E4000E4 ^ (v34 ^ 0x3E4040FC) & (v213 & 0x5C8043D8 ^ 0x2E4021EC);
  LODWORD(STACK[0x52C8]) = v28 & 0xC18ECC58 | (v214 & 0x5C8043D8 ^ 0xEFCEEDB4) & ~v28;
  v223 = v214 & 0x5C8043D8 ^ 0x2E4021EC;
  LODWORD(STACK[0x5270]) = v214 & 0x800018 ^ 0x2C ^ (v29 ^ 0x80006C) & v223;
  LODWORD(STACK[0x5268]) = v28 & 0x6B673A34 | (v213 & 0x5C8043D8 ^ 0x45271BD8) & ~v28;
  LODWORD(STACK[0x52C0]) = (v213 & 0x3568441A ^ 0x9546D0F1) & ~v28 | v28 & 0xFF2F2FC;
  LODWORD(STACK[0x52B8]) = v213 & 0x4604012 ^ 0x82202001 ^ (v29 ^ 0x86606001) & (v213 & 0x3568441A ^ 0x9AB4220D);
  LODWORD(STACK[0x52B0]) = ~v33 & 0x12654192 ^ (v214 & 0x3568441A ^ 0x88D1639F) & (v33 ^ 0xBFFD6FDF);
  v224 = v214 & 0x3568441A ^ 0x9AB4220D;
  LODWORD(STACK[0x52A8]) = v224 & (v34 ^ 0x8980420B) ^ ((v214 & 0x1004002) - 2004876799);
  LODWORD(STACK[0x52A0]) = v214 & 0x3508401A ^ 0x9A80020C ^ (v29 ^ 0xBF88420C) & v224;
  LODWORD(STACK[0x5298]) = v34 & 0xEE314709 ^ v82 & (v213 & 0x3568441A ^ 0x74856504);
  LODWORD(STACK[0x5290]) = v214 & 0x5201086 ^ 0xB0A8C6 ^ (v214 & 0x8561518E ^ 0xC2B0A8C7) & (v34 ^ 0x5B0B8CE);
  LODWORD(STACK[0x5288]) = ~v33 & 0x56904F37 ^ (v214 & 0x8561518E ^ 0x9420E7F0) & (v33 ^ 0x9FE1FFFE);
  LODWORD(v207) = v28 & 0x896BB345 | (v213 & 0x8561518E ^ 0x4BDB1B82) & ~v28;
  v225 = v29 & 0x7F79EFC6 ^ 0x42 ^ (v29 ^ 2) & (v213 & 0x8561518E ^ 0xBDC94701);
  v226 = (v29 ^ 0x42) & (v214 & 0x8561518E ^ 0xEB7B58E7) ^ v29 & 0x29CBF020;
  LODWORD(STACK[0x5278]) = v226;
  LODWORD(STACK[0x5060]) = (v226 >> v196) + (((v28 & 0xC311C02B | (v214 & 0x8561518E ^ 0x1A168EC) & ~v28) ^ 0xC311C02B) << v10);
  v227 = v82 & (v213 & 0x8561518E ^ 0x6D58B1C0) ^ v34 & 0xAFE81907;
  LODWORD(STACK[0x5058]) = (v227 >> v13) | (((v33 & 0x614AE86D | v32 & (v213 & 0x8561518E ^ 0xA3FA40AA)) ^ 0x614AE86D) << v9);
  v228 = v214 & 0xC213A016 ^ 0x4201C007 ^ (v214 & 0xE7DBA31E ^ 0x73EDD18F) & (v34 ^ 0xC213E01F);
  v229 = ~v33 & 0x4C62D583 ^ (v214 & 0xE7DBA31E ^ 0x3F8F040C) & (v33 ^ 0xFFDFAFFE);
  LODWORD(STACK[0x5258]) = v229;
  v230 = v213 & 0xE7DBA31E;
  v231 = v29 & 0x994A03E2 ^ 0x42 ^ v206 & (v213 & 0xE7DBA31E ^ 0xEAA7D26D);
  LODWORD(STACK[0x5260]) = v213 & 0x603811A ^ 0x221810B ^ (v28 ^ 0xF1DC7284) & (v213 & 0xE7DBA31E ^ 0x73EDD18F);
  v232 = (v213 & 0xE7DBA31E ^ 0xAA6CAB50) & ~v28 | v28 & 0xD9817ADF;
  LODWORD(STACK[0x5050]) = (v229 << v9) + (v228 >> v196);
  v233 = STACK[0x55A0];
  v234 = v214 & 0x1C8040C0 ^ 0x2C0020E0 ^ v223 & (v34 ^ 0x3C8060E8);
  LOBYTE(v223) = v10;
  v235 = (~v33 & 0xB96D0BB2 ^ (v214 & 0x5C8043D8 ^ 0x972D2A5E) & (v33 ^ 0xDFED7BFE)) << v10;
  LODWORD(v208) = STACK[0x5270];
  LODWORD(STACK[0x5048]) = (LODWORD(STACK[0x5270]) >> v13) | v235;
  LODWORD(STACK[0x5040]) = v235 | (v234 >> v196);
  v236 = v29 & 0xFDA41B74 ^ 0x50 ^ (v29 ^ 0x50) & (v222 ^ 0xD3E43A98);
  v237 = (LODWORD(STACK[0x5268]) ^ 0x6B673A34) << v9;
  v238 = STACK[0x5280];
  LODWORD(STACK[0x5038]) = v237 | (LODWORD(STACK[0x5280]) >> v196);
  LODWORD(STACK[0x5030]) = (v236 >> v13) + v237;
  v239 = (v207 ^ 0x896BB345) << v223;
  LODWORD(STACK[0x5028]) = (v225 >> v13) ^ v239;
  LODWORD(STACK[0x5020]) = v239 + (v227 >> v196);
  LODWORD(STACK[0x5018]) = v34 ^ 0x8FE255FA;
  v240 = STACK[0x5388] & v34;
  v232 ^= 0xD9817ADF;
  LODWORD(STACK[0x5010]) = (v232 << v9) | ((v34 & 0xC7F2A4DA ^ v221 & (v230 ^ 0xB41F7555) ^ 8) >> v196);
  v241 = v29 & 0xBD55143 ^ 0x42 ^ v217 & (v214 & 0xE7DBA31E ^ 0x783880CC);
  v242 = v33 & 0xBF1648AC | v32 & (v230 ^ 0xCCFB9923);
  LODWORD(STACK[0x5388]) = (((LODWORD(STACK[0x53C8]) ^ 0x741563D7) + 788049973) ^ ((LODWORD(STACK[0x53C8]) ^ 0x43E4E248) + 420032940) ^ ((LODWORD(STACK[0x53C8]) ^ 0x35878AB3) + 1869240657)) + 386686873;
  LODWORD(STACK[0x5008]) = LODWORD(STACK[0x5308]) - 16;
  LODWORD(STACK[0x5000]) = LODWORD(STACK[0x5300]) ^ v233 ^ LODWORD(STACK[0x55E0]) ^ LODWORD(STACK[0x5660]);
  LODWORD(STACK[0x4FF8]) = (LODWORD(STACK[0x53C0]) ^ 0xD25E78B9) << v223;
  LODWORD(STACK[0x4FF0]) = LODWORD(STACK[0x5380]) >> v196;
  LODWORD(STACK[0x4E38]) = v29 ^ 0x765C0963;
  LODWORD(STACK[0x4FE8]) = v29 & 0xC52A207A;
  LODWORD(STACK[0x4FE0]) = (LODWORD(STACK[0x5378]) ^ 8u) >> v13;
  LODWORD(STACK[0x4FD8]) = LODWORD(STACK[0x5370]) << v9;
  LODWORD(STACK[0x4FD0]) = (LODWORD(STACK[0x5350]) ^ 8u) >> v13;
  LODWORD(STACK[0x4FC8]) = (LODWORD(STACK[0x5330]) ^ 0xA8899800) << v223;
  LODWORD(STACK[0x4FC0]) = (LODWORD(STACK[0x5328]) ^ 0xE97E18B3) << v9;
  LODWORD(STACK[0x4FB8]) = LODWORD(STACK[0x5318]) >> v13;
  LODWORD(v207) = LODWORD(STACK[0x5310]) << v9;
  v243 = (LODWORD(STACK[0x52F8]) ^ 8u) >> v196;
  v244 = (v240 ^ 8u) >> v13;
  v245 = STACK[0x52F0];
  LODWORD(STACK[0x4F98]) = LODWORD(STACK[0x52F0]) << v223;
  LODWORD(STACK[0x4FA0]) = v244;
  LODWORD(STACK[0x4F90]) = v244 | (v245 << v9);
  LODWORD(STACK[0x4F88]) = LODWORD(STACK[0x52E8]) >> v196;
  v246 = (LODWORD(STACK[0x52E0]) ^ 0xE9E676D8) << v223;
  v247 = LODWORD(STACK[0x52D8]) >> v13;
  LODWORD(STACK[0x4F80]) = v246;
  LODWORD(STACK[0x4F78]) = v247 + v246;
  v248 = (LODWORD(STACK[0x52D0]) ^ 0x58DCD8E2) << v223;
  LODWORD(STACK[0x4F68]) = v238 >> v13;
  v249 = (LODWORD(STACK[0x52C8]) ^ 0xC18ECC58) << v9;
  LODWORD(STACK[0x4F58]) = v208 >> v196;
  v250 = LODWORD(STACK[0x52C0]) ^ 0xFF2F2FC;
  v251 = LODWORD(STACK[0x52B8]) >> v13;
  LODWORD(STACK[0x5380]) = v250 << v9;
  LODWORD(STACK[0x4F50]) = v251 + (v250 << v9);
  v252 = STACK[0x52B0];
  LODWORD(STACK[0x4F40]) = (LODWORD(STACK[0x52B0]) << v223) | (LODWORD(STACK[0x52A8]) >> v196);
  v253 = STACK[0x52A0];
  LODWORD(STACK[0x4F38]) = (LODWORD(STACK[0x52A0]) >> v13) + (v252 << v9);
  LODWORD(STACK[0x4F48]) = v252 << v223;
  LODWORD(STACK[0x4F30]) = (v253 >> v13) + (v252 << v223);
  v254 = LODWORD(STACK[0x5298]) ^ 8;
  v255 = LODWORD(STACK[0x5290]) >> v196;
  v256 = LODWORD(STACK[0x5288]) << v9;
  v257 = v228 >> v13;
  v258 = LODWORD(STACK[0x5258]) << v223;
  LODWORD(STACK[0x4F08]) = (v241 >> v13) | v258;
  LODWORD(STACK[0x4F10]) = v257;
  LODWORD(STACK[0x4F00]) = v257 + v258;
  LODWORD(STACK[0x4EF8]) = LODWORD(STACK[0x5260]) << v9;
  LODWORD(STACK[0x4EF0]) = v232 << v223;
  LODWORD(STACK[0x4EE0]) = v231 >> v13;
  LODWORD(STACK[0x4F60]) = v249;
  LODWORD(STACK[0x4ED8]) = v249 | (v234 >> v13);
  LODWORD(STACK[0x4F70]) = v248;
  LODWORD(STACK[0x4ED0]) = (v236 >> v196) | v248;
  LODWORD(STACK[0x4EC8]) = v250 << v223;
  LODWORD(STACK[0x4EC0]) = v254 >> v196;
  LODWORD(STACK[0x4EB8]) = v254 >> v13;
  LODWORD(STACK[0x4EB0]) = v253 >> v196;
  LODWORD(STACK[0x4EA8]) = (LODWORD(STACK[0x5278]) >> v13) | v256;
  LODWORD(STACK[0x4EE8]) = v231 >> v196;
  LODWORD(STACK[0x4EA0]) = (v231 >> v196) | ((v242 ^ 0xBF1648AC) << v9);
  LODWORD(STACK[0x4E98]) = ((v28 & 0xD990E53 | (v214 & 0xE7DBA31E ^ 0x7E74DFDC) & ~v28) ^ 0xD990E53) << v223;
  LODWORD(STACK[0x4E90]) = v33 & 0x29833F88;
  LODWORD(STACK[0x4E88]) = v33 & 0xA7966FBD;
  LODWORD(STACK[0x4E34]) = v33 & 0x9810B7FE;
  LODWORD(STACK[0x4E28]) = v33 & 0x3009B324;
  LODWORD(STACK[0x5378]) = ~v28;
  LODWORD(STACK[0x4E80]) = v28 & 0x10D74AD2;
  LODWORD(STACK[0x4E78]) = v28 & 0xD8194E7B;
  LODWORD(STACK[0x4E24]) = v28 & 0xE79793DA;
  LODWORD(STACK[0x4E20]) = v28 & 0xB444A623;
  v259 = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x51E0]));
  LODWORD(STACK[0x4FB0]) = v207;
  LODWORD(STACK[0x4FA8]) = v243;
  LODWORD(STACK[0x4E70]) = v207 | v243;
  LODWORD(STACK[0x4F28]) = v255;
  LODWORD(STACK[0x4F20]) = v256;
  LODWORD(STACK[0x4E68]) = v255 + v256;
  LODWORD(STACK[0x4F18]) = v214 & 0x10;
  LODWORD(STACK[0x4E60]) = v214 & 0x10 ^ 0x10;
  v260 = STACK[0x5168];
  LODWORD(STACK[0x4E50]) = STACK[0x5168] & 8;
  LODWORD(STACK[0x4E44]) = v260 & 8 ^ 8;
  v261 = STACK[0x53B8];
  LODWORD(STACK[0x53C8]) = STACK[0x53B8];
  LODWORD(STACK[0x53C0]) = v261;
  return v259();
}

uint64_t sub_10011E41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0x51B8];
  LODWORD(STACK[0xC410]) = 813006144;
  return (*(STACK[0x57D8] + 8 * (v7 - 13555)))(a1, 21553, 840133462, 2090271397, a5, 4294947640, a7, 1280);
}

uint64_t sub_10011E46C()
{
  v0 = STACK[0x18C0] & 0x531DEFFF;
  v1 = STACK[0x51B8] - 22613;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))(STACK[0xA8B8]);
  return (*(v2 + 8 * ((v0 + 19219) | v1)))(v3);
}

uint64_t sub_10011E564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (v5)
  {
    v6 = a4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  return (*(STACK[0x57D8] + 8 * ((((v4 ^ 0x19BF) - 30452 + ((v4 + 853259430) & 0xCD242BFD)) * v7) ^ v4)))();
}

uint64_t sub_10011E674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v13 = a8 + v10 + ((v11 + 524924807) & 0xE0B65E7E ^ 0x585ELL);
  v14 = __ROR8__(v13 & 0xFFFFFFFFFFFFFFF8, 8);
  v15 = -2 - (((0x7659A219E1678C7 - v14) | 0xED9F6C12CC92FA39) + ((v14 + a5) | 0x126093ED336D05C6));
  v16 = v15 ^ 0x42DB4868ECDE78A5;
  v15 ^= 0x8608669BE3924161;
  v17 = (__ROR8__(v16, 8) + v15) ^ a1;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ a7;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ a6;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ v12;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ a4;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ a2;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  *v13 = (((((2 * (v29 + v28)) & 0x71FD9E04F46F4B5ELL) - (v29 + v28) + 0x470130FD85C85A50) ^ 0x4EC955E7E9B2240AuLL) >> (8 * ((a8 + v10 + ((v11 - 121) & 0x7E ^ 0x5E)) & 7))) ^ *(v8 + v10);
  return (*(STACK[0x57D8] + 8 * (((4 * (((v10 + 1) ^ v9) == a3)) | (8 * (((v10 + 1) ^ v9) == a3))) ^ v11)))();
}

uint64_t sub_10011E970(__n128 a1, __n128 a2, uint64_t a3, unsigned int a4)
{
  v4.n128_u64[0] = 0xF0F0F0F0F0F0F0FLL;
  v4.n128_u64[1] = 0xF0F0F0F0F0F0F0FLL;
  return (*(STACK[0x57D8] + 8 * (a4 ^ 0xFABC5F08 ^ ((a4 > 0x4D2CFDEC) * (a4 ^ 0xFABC7259)))))(a1, a2, v4);
}

uint64_t sub_10011EA98(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x4910]) = LODWORD(STACK[0x5420]) | LODWORD(STACK[0x5500]);
  LODWORD(STACK[0x4898]) = LODWORD(STACK[0x53F0]) | LODWORD(STACK[0x5610]);
  LODWORD(STACK[0x4788]) = LODWORD(STACK[0x53E8]) | LODWORD(STACK[0x53A8]);
  LODWORD(STACK[0x48C0]) = LODWORD(STACK[0x53E0]) | LODWORD(STACK[0x5530]);
  LODWORD(STACK[0x4918]) = LODWORD(STACK[0x53D0]) | LODWORD(STACK[0x53A0]);
  LODWORD(STACK[0x5500]) = a8 & (a2 ^ 0x3331A780);
  LODWORD(STACK[0x5440]) = v8 & (a6 ^ 0x8984B3C4);
  return (*(STACK[0x57D8] + 8 * ((v9 - 669273946 + v9 - 669247895) ^ (31264 * (v9 < 0x8D9D3D26)))))();
}

uint64_t sub_10011ED2C(uint64_t a1, char a2, __int16 a3, int a4, uint64_t a5, char a6)
{
  v8 = ((a4 ^ 0x18E67848) + 470425052) ^ a4 ^ ((a4 ^ 0x599C22B) + 24487865) ^ ((a4 ^ 0x1FFDEFEF) + 454134397) ^ ((a4 ^ 0x9991A388 ^ ((v6 + 1703646415) | 0x4448)) + 494774900);
  v9 = STACK[0xE79];
  v10 = v9 + ((((2 * v9) ^ 0x3C) - 11) ^ (((2 * v9) ^ 0x6F) - 88) ^ (((2 * v9) ^ 0xAC) + 101)) + 41;
  v11 = v9 + (~(2 * v9) | 0x1B);
  v12 = (((v9 & 8 ^ 0xAC) + 28) ^ ((v9 & 8) + 56) ^ ((v9 & 8 ^ 0xED) + 91)) + (~(((4 * v10) | (2 * v10) | (8 * v10)) ^ v10) & 8) - 113;
  LOBYTE(STACK[0xE79]) = (v11 + 115) ^ 0x12 ^ (8 * (((a4 ^ 0x48) - 36) ^ a4 ^ ((a4 ^ 0x2B) - 71) ^ ((a4 ^ 0xEF) + 125) ^ ((a4 ^ 0x88 ^ ((v6 - 49) | 0x48)) + 116)));
  v13 = v12 & 0xB1 | 0xC;
  v14 = v12 ^ (2 * ((v12 ^ 0x38) & (2 * ((v12 ^ 0x38) & (2 * ((v12 ^ 0x38) & (2 * ((v12 ^ 0x38) & (2 * ((v12 ^ 0x38) & (2 * ((v12 ^ 0x38) & (2 * v12) & 0x72 ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ 0xF2;
  v15 = *(v7 + (((a3 & 0x7758 ^ 0x7758) + (a3 & 0x7758u)) & 0x83C0));
  LOBYTE(STACK[0x1090]) = (v15 - ((2 * v15) & 0x70) + 56) ^ (((8 * v8) ^ 0xD89CD360) >> (v14 & 0x1E ^ 2) >> (v14 & a2 ^ a6)) ^ 0x38;
  v16 = STACK[0xED9];
  LOBYTE(STACK[0xED9]) = v16 + ((((v8 >> 13) ^ 0xB6) - 35) ^ (((v8 >> 13) ^ 0x32) + 89) ^ (((v8 >> 13) ^ 0x18) + 115)) - ((((2 * (((v8 >> 13) ^ 0x1C) & v16)) ^ 0xB3) + 33) ^ (((2 * (((v8 >> 13) ^ 0x1C) & v16)) ^ 0xDC) + 80) ^ (((2 * (((v8 >> 13) ^ 0x1C) & v16)) ^ 0x6F) - 3)) - 99;
  LOBYTE(STACK[0x10F0]) = (LOBYTE(STACK[0x10F0]) + (~(2 * LOBYTE(STACK[0x10F0])) | 0x45) - 34) ^ (v8 >> 21) ^ 5;
  return (*(STACK[0x6D8] + 8 * ((13775 * (v6 > 0x856B6FB3)) ^ (v6 + 1703642067))))();
}

uint64_t sub_10011F0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = STACK[0x3630];
  v7 = 15 * (STACK[0x3630] ^ 0xE30);
  v8 = STACK[0xC4B0];
  v9 = STACK[0x57D8];
  STACK[0xBF38] = *(STACK[0x57D8] + 8 * STACK[0x3630]);
  return (*(v9 + 8 * ((v7 ^ 0x41B7) + v6)))(a1, a2, a3, a4, a5, a6, v8);
}

uint64_t sub_10011F13C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W8>)
{
  v7 = (STACK[0x51B8] - 3088) | 0x231;
  v8 = STACK[0x51B8] - 20654;
  *(v6 + 3820) = a6;
  return (*(STACK[0x57D8] + 8 * (v8 + v7 - 11576)))(a1, a2, a3, a4, a5, STACK[0xC788]);
}

uint64_t sub_10011F184@<X0>(unsigned int a1@<W8>)
{
  v2 = 0;
  v3 = *(*STACK[0x51F0] + (*STACK[0x51E8] & 0xEEC3B11C));
  v4 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v3 ^ 0xEEC3B11F) & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v3 ^ 0xEEC3B11F;
  v5 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v4 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v4;
  v6 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v5 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v5;
  v7 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v6 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v6;
  v8 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v7 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v7;
  v9 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v8 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v8;
  v10 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v9 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v9;
  v11 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v10 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v10;
  STACK[0xEE00] = 0;
  STACK[0xEE08] = v1;
  v12 = 16777619 * ((-289165025 * v11 + 7) ^ (-289165025 * v11)) % 7;
  v13 = 16777619 * ((-289165025 * v11 + 6) ^ (-289165025 * v11)) % 6;
  v14 = 16777619 * ((-289165025 * v11 + 5) ^ (-289165025 * v11)) % 5;
  v15 = 16777619 * ((-289165025 * v11 + 3) ^ (-289165025 * v11)) % 3;
  v16 = *(&STACK[0xEE00] | v12);
  *(&STACK[0xEE00] | v12) = STACK[0xEE07];
  v17 = *(&STACK[0xEE00] | v13);
  *(&STACK[0xEE00] | v13) = STACK[0xEE06];
  v18 = *(&STACK[0xEE00] | v14);
  *(&STACK[0xEE00] | v14) = STACK[0xEE05];
  v19 = STACK[0xEE00];
  LOBYTE(STACK[0xEE00]) = STACK[0xEE04];
  v20 = *(&STACK[0xEE00] | v15);
  *(&STACK[0xEE00] | v15) = STACK[0xEE03];
  v21 = vdup_n_s32(-289165025 * v11);
  v22.i32[0] = v21.i32[0];
  v22.i32[1] = -289165025 * v11 + 1;
  LOBYTE(STACK[0xEE07]) = v16;
  LOBYTE(STACK[0xEE06]) = v17;
  LOBYTE(STACK[0xEE05]) = v18;
  v23 = veor_s8(vmul_s32(v22, v21), v21);
  LOBYTE(STACK[0xEE04]) = v19;
  LOBYTE(STACK[0xEE03]) = v20;
  v24 = STACK[0xEE01];
  LOBYTE(STACK[0xEE02]) = STACK[0xEE00];
  LOWORD(STACK[0xEE00]) = v24;
  v25 = vdup_n_s32(0x1000193u);
  STACK[0xEE00] = vmla_s32(v23, STACK[0xEE00], v25);
  v26 = STACK[0xEE08];
  v27 = (-289165025 * STACK[0xEE08]) ^ v11;
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
    v49.val[1] = veorq_s8(vqtbl1q_s8(v35, xmmword_101237140), veorq_s8(v28, vmulq_s32(vaddq_s32(v31, v28), vsubq_s32(v31, v28))));
    v49.val[0] = veorq_s8(vqtbl1q_s8(v35, xmmword_101237150), veorq_s8(v28, vmulq_s32(vaddq_s32(v32, v28), vsubq_s32(v32, v28))));
    v49.val[2] = veorq_s8(vqtbl1q_s8(v35, xmmword_101237160), veorq_s8(v28, vmulq_s32(vaddq_s32(v30, v28), vsubq_s32(v30, v28))));
    v49.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v35, xmmword_101237170), v28), vmulq_s32(vaddq_s32(v29, v28), vsubq_s32(v29, v28)));
    *(v26 + v2) = vmulq_s8(vqtbl4q_s8(v49, xmmword_101237130), v34);
    v2 += 16;
    v32 = vaddq_s32(v32, v33);
    v31 = vaddq_s32(v31, v33);
    v30 = vaddq_s32(v30, v33);
    v29 = vaddq_s32(v29, v33);
  }

  while (v2 != 16);
  v36 = (v26 + 8);
  v37 = 1;
  for (i = 3; i > 2; --i)
  {
    v39 = 16777619 * ((v27 + v37) ^ v27) % v37;
    v40 = *(v26 + 8 * v39) ^ *v36;
    *v36 = v40;
    v41 = *(v26 + 8 * v39) ^ v40;
    *(v26 + 8 * v39) = v41;
    *v36-- ^= v41;
    --v37;
  }

  v42 = *(&STACK[0xEE08] + v12);
  *(&STACK[0xEE08] + v12) = STACK[0xEE0F];
  LOBYTE(STACK[0xEE0F]) = v42;
  v43 = *(&STACK[0xEE08] + v13);
  *(&STACK[0xEE08] + v13) = STACK[0xEE0E];
  LOBYTE(STACK[0xEE0E]) = v43;
  v44 = *(&STACK[0xEE08] + v14);
  *(&STACK[0xEE08] + v14) = STACK[0xEE0D];
  LOBYTE(STACK[0xEE0D]) = v44;
  v45 = STACK[0xEE08];
  LOBYTE(STACK[0xEE08]) = STACK[0xEE0C];
  LOBYTE(STACK[0xEE0C]) = v45;
  v46 = *(&STACK[0xEE08] + v15);
  *(&STACK[0xEE08] + v15) = STACK[0xEE0B];
  LOBYTE(STACK[0xEE0B]) = v46;
  v47 = STACK[0xEE09];
  LOBYTE(STACK[0xEE0A]) = STACK[0xEE08];
  LOWORD(STACK[0xEE08]) = v47;
  STACK[0xEE08] = vmla_s32(v23, STACK[0xEE08], v25);
  *STACK[0x4420] = STACK[0xEE08] ^ STACK[0xEE00];
  return (*(STACK[0x57D8] + 8 * (((a1 ^ 0xFFFF15A4) + a1) ^ (423 * (a1 < 0x6A11BBAC)))))();
}

uint64_t sub_10011F5C8()
{
  v2 = *(*STACK[0x51F0] + (*STACK[0x51E8] & 0xEEC3B11C));
  v3 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v2 ^ 0xEEC3B11F) & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v2 ^ 0xEEC3B11F;
  v4 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v3 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v3;
  v5 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v4 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v4;
  v6 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v5 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v5;
  v7 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v6 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v6;
  v8 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v7 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v7;
  v9 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v8 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v8;
  LODWORD(v9) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v9 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v9;
  STACK[0xEEF0] = 0;
  STACK[0xEEF8] = v0;
  v10 = 16777619 * ((-289165025 * v9 + 7) ^ (-289165025 * v9)) % 7;
  v11 = *(&STACK[0xEEF0] | v10);
  *(&STACK[0xEEF0] | v10) = 0;
  LOBYTE(STACK[0xEEF7]) = v11;
  v12 = 16777619 * ((-289165025 * v9 + 6) ^ (-289165025 * v9)) % 6;
  v13 = *(&STACK[0xEEF0] | v12);
  *(&STACK[0xEEF0] | v12) = STACK[0xEEF6];
  LOBYTE(STACK[0xEEF6]) = v13;
  v14 = 16777619 * ((-289165025 * v9 + 5) ^ (-289165025 * v9)) % 5;
  v15 = *(&STACK[0xEEF0] | v14);
  *(&STACK[0xEEF0] | v14) = STACK[0xEEF5];
  LOBYTE(STACK[0xEEF5]) = v15;
  v16 = STACK[0xEEF0];
  LOBYTE(STACK[0xEEF0]) = STACK[0xEEF4];
  LOBYTE(STACK[0xEEF4]) = v16;
  v17 = 16777619 * ((-289165025 * v9 + 3) ^ (-289165025 * v9)) % 3;
  v18 = *(&STACK[0xEEF0] | v17);
  *(&STACK[0xEEF0] | v17) = STACK[0xEEF3];
  LOBYTE(STACK[0xEEF3]) = v18;
  v19 = STACK[0xEEF1];
  LOBYTE(STACK[0xEEF2]) = STACK[0xEEF0];
  LOWORD(STACK[0xEEF0]) = v19;
  v20 = vdup_n_s32(-289165025 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = -289165025 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xEEF0] = vmla_s32(v22, STACK[0xEEF0], vdup_n_s32(0x1000193u));
  STACK[0xEEF8] ^= STACK[0xEEF0];
  STACK[0xEEF8] = vmul_s32(vsub_s32(STACK[0xEEF8], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xEEFA];
  LOWORD(STACK[0xEEF9]) = STACK[0xEEF8];
  LOBYTE(STACK[0xEEF8]) = v23;
  v24 = (&STACK[0xEEF8] | v17);
  v25 = *v24;
  *v24 = STACK[0xEEFB];
  LOBYTE(STACK[0xEEFB]) = v25;
  LOBYTE(v24) = STACK[0xEEF8];
  LOBYTE(STACK[0xEEF8]) = STACK[0xEEFC];
  LOBYTE(STACK[0xEEFC]) = v24;
  v26 = (&STACK[0xEEF8] | v14);
  LOBYTE(v24) = *v26;
  *v26 = STACK[0xEEFD];
  LOBYTE(STACK[0xEEFD]) = v24;
  v27 = (&STACK[0xEEF8] | v12);
  LOBYTE(v26) = *v27;
  *v27 = STACK[0xEEFE];
  LOBYTE(STACK[0xEEFE]) = v26;
  v28 = (&STACK[0xEEF8] | v10);
  v29 = *v28;
  *v28 = STACK[0xEEFF];
  LOBYTE(STACK[0xEEFF]) = v29;
  v30 = STACK[0xEEF8];
  v31 = (-289165025 * STACK[0xEEF8]) ^ v9;
  for (i = 1; i != 2; ++i)
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

  while (v36 != 16);
  *STACK[0x4420] = STACK[0xEEF8];
  return (*(STACK[0x57D8] + 8 * v1))(v37, v38, v39, v40);
}

uint64_t sub_10011FAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v7 = *(STACK[0xFE78] + (((v5 + 10481) ^ 0x591A) * v6 + 17079528) % 0x1708);
  v8 = *(STACK[0xFE70] + 4 * ((2717 * (v7 | ((v7 < 0x1C) << 8)) + 622193) % 0x2240));
  v9 = *(STACK[0xFE78] + 3903 * (BYTE1(v8) ^ 0x64) + 4008381 - 5896 * (((1456909 * (3903 * (BYTE1(v8) ^ 0x64u) + 4008381)) >> 32) >> 1));
  v10 = *(STACK[0xFE78] + (3903 * (((HIBYTE(v8) ^ 0xC20643FA) - 1269938142) ^ ((HIBYTE(v8) ^ 0xC0124825) - 1235598337) ^ ((HIBYTE(v8) ^ 0x2140B93) + 1952186441)) - 1412143275) % 0x1708);
  v11 = *(STACK[0xFE78] + 3903 * (BYTE2(v8) ^ 0xC5) + 4002485 - 5896 * (((1456909 * (3903 * (BYTE2(v8) ^ 0xC5u) + 4002485)) >> 32) >> 1));
  v12 = *(STACK[0xFE78] + (3903 * (((v8 ^ 0x53B5124D) + 1531241306) ^ ((v8 ^ 0x75B095A6) + 2101437619) ^ ((v8 ^ 0x2605871Au) + 787772943)) - 1618597853) % 0x1708);
  v13 = v10 & 0xC4 | 0x30;
  v14 = v11 & 0x44 ^ 0xF0;
  v15 = v12 & 0x66 ^ 0xC1;
  v16 = v11 ^ (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * v14) ^ v14)) ^ v14)) ^ v14)) ^ v14));
  v17 = v9 & 0xF2 ^ 0x8F;
  v18 = v12 ^ (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x44) & (2 * (v15 ^ v12 & 2)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15));
  v19 = (((v10 ^ (2 * ((v10 ^ 0x64) & (2 * ((v10 ^ 0x64) & (2 * ((v10 ^ 0x64) & (2 * ((v10 ^ 0x64) & (2 * v13) ^ v13)) ^ v13)) ^ v13)) ^ v13))) ^ 0xC4) << 16) | ((v16 ^ 0x44) << 8);
  *(STACK[0xFE70] + 4 * (a5 % 0x2240)) = ((((((v9 ^ (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * (v17 ^ v9 & 0x16)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17))) ^ 0x732D1) & ~v19 | v19 & 0xF8CD00) << 8) ^ 0xECC7A275) & (v18 ^ 0xFFFFFF11) | v18 & 0x8A) ^ 0xA730E586;
  return (*(STACK[0x57D8] + 8 * ((112 * (v6 != 255)) ^ v5)))();
}

uint64_t sub_10011FEA4@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W6>, int a6@<W8>)
{
  v20 = (v15 + v11) >> 16;
  v21 = (v15 + v11 - v20) >> 8;
  v22 = v15 + v19 + v21;
  v23 = (v22 - v20) >> 12;
  v24 = (v22 + v23 - v20) >> 5;
  v25 = v15 + v23 + v21 + v24;
  v26 = a5 + v25 - v20 - v17;
  v27 = v25 + a3;
  v28 = (v27 - v20) >> 15;
  v29 = v25 + v28;
  v30 = (v27 + v28 - v20) >> 7;
  *(v18 - 152) = a4;
  LODWORD(STACK[0x5410]) = v26 ^ v10 ^ (a5 + v29 - v30 - v20 - v13) ^ (a5 + v15 + ((v29 + a1 + ((v29 + a1 - v30 - v20) >> 9) - v30 - v20) >> 3) + ((v29 + a1 - v30 - v20) >> 9) + v28 + v24 + v23 + v21 - v30 - v20 - v6);
  LODWORD(STACK[0x5268]) = LODWORD(STACK[0x52F0]) + v9;
  LODWORD(STACK[0x5260]) = (v9 ^ -v9 ^ (v12 - (v9 ^ v12))) + v12;
  LODWORD(STACK[0x51E0]) = v12 - a6;
  v31 = STACK[0x5318];
  LODWORD(STACK[0x52F0]) = a6 + LODWORD(STACK[0x5318]);
  v32 = STACK[0x55F0];
  LODWORD(STACK[0x5248]) = v31 - LODWORD(STACK[0x55F0]);
  LODWORD(STACK[0x51D8]) = a2 ^ v32;
  LODWORD(STACK[0x5318]) = v7 ^ a2;
  v33 = STACK[0x5340];
  LODWORD(STACK[0x5258]) = v7 + LODWORD(STACK[0x5340]);
  v34 = STACK[0x5308];
  LODWORD(STACK[0x5250]) = LODWORD(STACK[0x5308]) ^ v33;
  v35 = STACK[0x5300];
  LODWORD(STACK[0x5308]) = v34 - LODWORD(STACK[0x5300]);
  v36 = STACK[0x52F8];
  LODWORD(STACK[0x51B0]) = LODWORD(STACK[0x52F8]) ^ v35;
  LODWORD(STACK[0x55F0]) = v16 + v36;
  v37 = STACK[0x53C8];
  LODWORD(STACK[0x5340]) = v16 - LODWORD(STACK[0x53C8]);
  v38 = STACK[0x5360];
  LODWORD(STACK[0x5300]) = LODWORD(STACK[0x5360]) + v37;
  v39 = STACK[0x53C0];
  LODWORD(STACK[0x51C0]) = v38 ^ LODWORD(STACK[0x53C0]);
  LODWORD(STACK[0x53C8]) = v39 - v14;
  v40 = STACK[0x5338];
  LODWORD(STACK[0x52F8]) = v14 ^ LODWORD(STACK[0x5338]);
  LODWORD(STACK[0x51C8]) = v8 + v40;
  v41 = STACK[0x5358];
  LODWORD(STACK[0x5338]) = v8 + LODWORD(STACK[0x5358]);
  v42 = STACK[0x5320];
  LODWORD(STACK[0x5358]) = LODWORD(STACK[0x5320]) + v41;
  v43 = STACK[0x5398];
  LODWORD(STACK[0x5190]) = v42 ^ LODWORD(STACK[0x5398]);
  v44 = STACK[0x53A0];
  LODWORD(STACK[0x51A0]) = v43 - LODWORD(STACK[0x53A0]);
  v45 = STACK[0x5310];
  LODWORD(STACK[0x53A0]) = LODWORD(STACK[0x5310]) + v44;
  v46 = STACK[0x53B0];
  LODWORD(STACK[0x5398]) = v45 ^ LODWORD(STACK[0x53B0]);
  v47 = STACK[0x5350];
  LODWORD(STACK[0x53B0]) = LODWORD(STACK[0x5350]) ^ v46;
  v48 = STACK[0x53B8];
  LODWORD(STACK[0x51D0]) = v47 + LODWORD(STACK[0x53B8]);
  v49 = STACK[0x53E8];
  LODWORD(STACK[0x53B8]) = v48 - LODWORD(STACK[0x53E8]);
  v50 = STACK[0x53F0];
  LODWORD(STACK[0x5360]) = v49 - LODWORD(STACK[0x53F0]);
  v51 = STACK[0x5370];
  LODWORD(STACK[0x5310]) = LODWORD(STACK[0x5370]) ^ v50;
  v52 = STACK[0x53D8];
  LODWORD(STACK[0x53F0]) = v51 ^ LODWORD(STACK[0x53D8]);
  v53 = STACK[0x5348];
  LODWORD(STACK[0x5350]) = v52 - LODWORD(STACK[0x5348]);
  v54 = STACK[0x5430];
  LODWORD(STACK[0x5348]) = v53 ^ LODWORD(STACK[0x5430]);
  v55 = STACK[0x5378];
  LODWORD(STACK[0x5198]) = LODWORD(STACK[0x5378]) ^ v54;
  v56 = v55 - LODWORD(STACK[0x5420]);
  v57 = STACK[0x5330];
  LODWORD(STACK[0x53D8]) = LODWORD(STACK[0x5420]) - LODWORD(STACK[0x5330]);
  v58 = STACK[0x54F0];
  LODWORD(STACK[0x5330]) = v57 ^ LODWORD(STACK[0x54F0]);
  v59 = LODWORD(STACK[0x53A8]) ^ v58;
  v60 = STACK[0x5510];
  LODWORD(STACK[0x53C0]) = LODWORD(STACK[0x53A8]) ^ LODWORD(STACK[0x5510]);
  v61 = STACK[0x53E0];
  LODWORD(STACK[0x54F0]) = LODWORD(STACK[0x53E0]) ^ v60;
  v62 = STACK[0x5388];
  LODWORD(STACK[0x5420]) = LODWORD(STACK[0x5388]) + v61;
  v63 = STACK[0x53F8];
  LODWORD(STACK[0x5430]) = v62 - LODWORD(STACK[0x53F8]);
  v64 = STACK[0x5328];
  LODWORD(STACK[0x53A8]) = LODWORD(STACK[0x5328]) + v63;
  v65 = STACK[0x5368];
  LODWORD(STACK[0x5510]) = v64 ^ LODWORD(STACK[0x5368]);
  v66 = STACK[0x5560];
  LODWORD(STACK[0x53F8]) = v65 + LODWORD(STACK[0x5560]);
  v67 = LODWORD(STACK[0x5380]) ^ v66;
  v68 = STACK[0x5550];
  LODWORD(STACK[0x5388]) = LODWORD(STACK[0x5380]) + LODWORD(STACK[0x5550]);
  v69 = LODWORD(STACK[0x5540]) ^ v68;
  v70 = STACK[0x54D0];
  LODWORD(STACK[0x5378]) = LODWORD(STACK[0x54D0]) + LODWORD(STACK[0x5540]);
  v71 = STACK[0x5390];
  LODWORD(STACK[0x5560]) = LODWORD(STACK[0x5390]) ^ v70;
  v72 = STACK[0x54B0];
  LODWORD(STACK[0x5380]) = v71 + LODWORD(STACK[0x54B0]);
  v73 = v72 - LODWORD(STACK[0x5620]);
  v74 = STACK[0x55B0];
  LODWORD(STACK[0x5320]) = LODWORD(STACK[0x55B0]) ^ LODWORD(STACK[0x5620]);
  v75 = STACK[0x5408];
  LODWORD(STACK[0x5328]) = LODWORD(STACK[0x5408]) + v74;
  v76 = STACK[0x5650];
  LODWORD(STACK[0x5408]) = v75 ^ LODWORD(STACK[0x5650]);
  v77 = LODWORD(STACK[0x54C0]) ^ v76;
  v78 = STACK[0x5680];
  LODWORD(STACK[0x5650]) = LODWORD(STACK[0x54C0]) + LODWORD(STACK[0x5680]);
  v79 = STACK[0x55A0];
  LODWORD(STACK[0x5368]) = LODWORD(STACK[0x55A0]) + v78;
  v80 = v79 ^ LODWORD(STACK[0x5660]);
  v81 = STACK[0x5450];
  LODWORD(STACK[0x55B0]) = LODWORD(STACK[0x5450]) + LODWORD(STACK[0x5660]);
  v82 = STACK[0x53D0];
  LODWORD(STACK[0x51A8]) = LODWORD(STACK[0x53D0]) ^ v81;
  v83 = v82 ^ LODWORD(STACK[0x54A0]);
  v84 = LODWORD(STACK[0x54A0]) + LODWORD(STACK[0x5530]);
  v85 = LODWORD(STACK[0x5530]) + LODWORD(STACK[0x5570]);
  v86 = STACK[0x5500];
  LODWORD(STACK[0x5450]) = LODWORD(STACK[0x5500]) + LODWORD(STACK[0x5570]);
  v87 = v86 ^ LODWORD(STACK[0x5580]);
  v88 = STACK[0x55D0];
  LODWORD(STACK[0x54A0]) = LODWORD(STACK[0x5580]) ^ LODWORD(STACK[0x55D0]);
  v89 = LODWORD(STACK[0x54E0]) + v88;
  v90 = STACK[0x5400];
  LODWORD(STACK[0x5660]) = LODWORD(STACK[0x5400]) ^ LODWORD(STACK[0x54E0]);
  v91 = STACK[0x5640];
  LODWORD(STACK[0x5620]) = v90 ^ LODWORD(STACK[0x5640]);
  v92 = v91 ^ LODWORD(STACK[0x56C0]);
  v93 = STACK[0x56E0];
  LODWORD(STACK[0x56C0]) -= LODWORD(STACK[0x56E0]);
  v94 = v93 - LODWORD(STACK[0x5440]);
  v95 = LODWORD(STACK[0x5440]) - LODWORD(STACK[0x55E0]);
  v96 = LODWORD(STACK[0x55E0]) ^ LODWORD(STACK[0x56D0]);
  v97 = LODWORD(STACK[0x5460]) ^ LODWORD(STACK[0x56D0]);
  v98 = STACK[0x5590];
  LODWORD(STACK[0x56E0]) = LODWORD(STACK[0x5460]) ^ LODWORD(STACK[0x5590]);
  v99 = v98 + LODWORD(STACK[0x5630]);
  v100 = LODWORD(STACK[0x5520]) + LODWORD(STACK[0x5630]);
  v101 = LODWORD(STACK[0x5520]) ^ LODWORD(STACK[0x5670]);
  v102 = LODWORD(STACK[0x5670]) ^ LODWORD(STACK[0x5730]);
  v103 = STACK[0x55C0];
  LODWORD(STACK[0x55A0]) = LODWORD(STACK[0x55C0]) + LODWORD(STACK[0x5730]);
  v104 = v103 ^ LODWORD(STACK[0x5740]);
  v105 = LODWORD(STACK[0x5740]) - LODWORD(STACK[0x5600]);
  v106 = LODWORD(STACK[0x5610]) ^ LODWORD(STACK[0x5600]);
  v107 = LODWORD(STACK[0x5610]) - LODWORD(STACK[0x5720]);
  v108 = STACK[0x5750];
  v109 = LODWORD(STACK[0x5720]) ^ LODWORD(STACK[0x5750]);
  LODWORD(STACK[0x5730]) = v73 + v92;
  LODWORD(STACK[0x54C0]) = v73 - v80;
  v110 = STACK[0x51B0];
  LODWORD(STACK[0x55E0]) = LODWORD(STACK[0x51B0]) + v80;
  LODWORD(STACK[0x5370]) = v104 + v110;
  LODWORD(STACK[0x5520]) = v104 + v59;
  v111 = v59 - LODWORD(STACK[0x53A0]);
  LODWORD(STACK[0x53A0]) += v106;
  v112 = STACK[0x5190];
  LODWORD(STACK[0x5640]) = v106 ^ LODWORD(STACK[0x5190]);
  LODWORD(STACK[0x5460]) = v112 ^ v109;
  v113 = STACK[0x51C0];
  LODWORD(STACK[0x5720]) = v109 - LODWORD(STACK[0x51C0]);
  LODWORD(STACK[0x5670]) = v56 ^ v113;
  v114 = STACK[0x51A0];
  LODWORD(STACK[0x56D0]) = v56 - LODWORD(STACK[0x51A0]);
  LODWORD(STACK[0x5680]) = v114 - v84;
  v115 = STACK[0x51C8];
  v116 = v84 - LODWORD(STACK[0x51C8]);
  LODWORD(STACK[0x5170]) = v116;
  v117 = STACK[0x51D8];
  LODWORD(STACK[0x54D0]) = v115 ^ LODWORD(STACK[0x51D8]);
  v118 = STACK[0x56F0];
  LODWORD(STACK[0x5740]) = LODWORD(STACK[0x56F0]) + v108;
  v119 = v118 + LODWORD(STACK[0x5710]);
  v120 = STACK[0x5770];
  v121 = LODWORD(STACK[0x5710]) - LODWORD(STACK[0x5770]);
  v122 = STACK[0x5358];
  LODWORD(STACK[0x5580]) = v117 ^ LODWORD(STACK[0x5358]);
  LODWORD(STACK[0x5630]) = v87 + v122;
  v123 = STACK[0x5198];
  LODWORD(STACK[0x53E8]) = v87 - LODWORD(STACK[0x5198]);
  LODWORD(STACK[0x5570]) = v67 ^ v123;
  v124 = STACK[0x54F0];
  LODWORD(STACK[0x5440]) = v67 ^ LODWORD(STACK[0x54F0]);
  v125 = STACK[0x52F8];
  LODWORD(STACK[0x53E0]) = LODWORD(STACK[0x52F8]) ^ v124;
  v126 = STACK[0x51E0];
  LODWORD(STACK[0x5750]) = v125 + LODWORD(STACK[0x51E0]);
  LODWORD(STACK[0x51C8]) = v126 ^ v99;
  v127 = STACK[0x51D0];
  LODWORD(STACK[0x5540]) = v99 - LODWORD(STACK[0x51D0]);
  LODWORD(STACK[0x54B0]) = v121 ^ v127;
  v128 = v105 ^ v121;
  LODWORD(STACK[0x52F8]) = v105 ^ v121;
  v129 = v105 + LODWORD(STACK[0x5310]);
  LODWORD(STACK[0x5550]) = LODWORD(STACK[0x5310]) ^ v69;
  v130 = STACK[0x5248];
  LODWORD(STACK[0x51E0]) = v69 + LODWORD(STACK[0x5248]);
  LODWORD(STACK[0x5390]) = v85 + v130;
  v131 = LODWORD(STACK[0x53D8]) ^ v85;
  v132 = STACK[0x53B8];
  LODWORD(STACK[0x5358]) = LODWORD(STACK[0x53D8]) + LODWORD(STACK[0x53B8]);
  LODWORD(STACK[0x5500]) = v132 - v95;
  v133 = STACK[0x5348];
  LODWORD(STACK[0x53D8]) = v95 - LODWORD(STACK[0x5348]);
  LODWORD(STACK[0x54F0]) = v94 + v133;
  LODWORD(STACK[0x56F0]) = v94 ^ v77;
  v134 = STACK[0x5330];
  LODWORD(STACK[0x5348]) = LODWORD(STACK[0x5330]) ^ v77;
  LODWORD(STACK[0x5248]) = v134 - v107;
  v135 = v107 - LODWORD(STACK[0x5408]);
  LODWORD(STACK[0x5530]) = v89 + LODWORD(STACK[0x5408]);
  LODWORD(STACK[0x5610]) = v83 + v89;
  v136 = STACK[0x5368];
  LODWORD(STACK[0x51D8]) = v83 ^ LODWORD(STACK[0x5368]);
  v137 = STACK[0x5338];
  LODWORD(STACK[0x53B8]) = v136 - LODWORD(STACK[0x5338]);
  LODWORD(STACK[0x5710]) = v137 ^ v102;
  v138 = STACK[0x5308];
  v139 = v102 - LODWORD(STACK[0x5308]);
  LODWORD(STACK[0x5148]) = v139;
  v140 = STACK[0x5388];
  LODWORD(STACK[0x53D0]) = LODWORD(STACK[0x5388]) + v138;
  LODWORD(STACK[0x51B0]) = v140 + v96;
  v141 = STACK[0x5300];
  v142 = v96 ^ LODWORD(STACK[0x5300]);
  LODWORD(STACK[0x5140]) = v142;
  v143 = STACK[0x54A0];
  LODWORD(STACK[0x5368]) = v141 - LODWORD(STACK[0x54A0]);
  v144 = v143 + LODWORD(STACK[0x5320]);
  v145 = STACK[0x5378];
  LODWORD(STACK[0x5408]) = LODWORD(STACK[0x5320]) - LODWORD(STACK[0x5378]);
  v146 = STACK[0x5250];
  LODWORD(STACK[0x5338]) = LODWORD(STACK[0x5250]) + v145;
  v147 = STACK[0x5380];
  LODWORD(STACK[0x54A0]) = v146 - LODWORD(STACK[0x5380]);
  v148 = STACK[0x5328];
  LODWORD(STACK[0x5380]) = v147 + LODWORD(STACK[0x5328]);
  LODWORD(STACK[0x51A0]) = v100 + v148;
  LODWORD(STACK[0x5600]) = v101 ^ v100;
  v149 = STACK[0x51A8];
  LODWORD(STACK[0x54E0]) = LODWORD(STACK[0x51A8]) + v101;
  v150 = STACK[0x5350];
  v151 = v149 - LODWORD(STACK[0x5350]);
  LODWORD(STACK[0x51C0]) = v151;
  v152 = STACK[0x53A8];
  LODWORD(STACK[0x5330]) = LODWORD(STACK[0x53A8]) + v150;
  v153 = STACK[0x5360];
  LODWORD(STACK[0x5400]) = v152 - LODWORD(STACK[0x5360]);
  v154 = STACK[0x5450];
  LODWORD(STACK[0x5388]) = LODWORD(STACK[0x5450]) + v153;
  v155 = STACK[0x5430];
  LODWORD(STACK[0x51D0]) = v154 - LODWORD(STACK[0x5430]);
  v156 = STACK[0x53B0];
  LODWORD(STACK[0x5300]) = v155 ^ LODWORD(STACK[0x53B0]);
  v157 = v97 + v156;
  LODWORD(STACK[0x5250]) = v97 + v156;
  v158 = v97 ^ LODWORD(STACK[0x5258]);
  v159 = STACK[0x5260];
  v160 = LODWORD(STACK[0x5258]) ^ LODWORD(STACK[0x5260]);
  LODWORD(STACK[0x5320]) = v160;
  v161 = STACK[0x5398];
  LODWORD(STACK[0x5260]) = LODWORD(STACK[0x5398]) + v159;
  v162 = STACK[0x57A0];
  v163 = STACK[0x57C0];
  v164 = STACK[0x5510];
  LODWORD(STACK[0x5378]) = LODWORD(STACK[0x5510]) + (LODWORD(STACK[0x57A0]) ^ LODWORD(STACK[0x57C0]));
  LODWORD(STACK[0x5350]) = v161 - v164;
  v165 = STACK[0x55F0];
  LODWORD(STACK[0x5188]) = v129;
  v166 = v165;
  LODWORD(STACK[0x5430]) = (v165 ^ v129) + 2 * (v165 & v129);
  LODWORD(STACK[0x55D0]) = (v160 ^ v128) + 1407896409;
  v167 = v135;
  LODWORD(STACK[0x55C0]) = v139 + v135 - 1889544523;
  LODWORD(STACK[0x5510]) = v116 - v157 + 1864515478;
  v168 = v120 - LODWORD(STACK[0x57B0]);
  v169 = LODWORD(STACK[0x5780]) ^ LODWORD(STACK[0x57B0]);
  v170 = STACK[0x5790];
  v171 = LODWORD(STACK[0x5780]) - LODWORD(STACK[0x5790]);
  v172 = STACK[0x55A0];
  LODWORD(STACK[0x5180]) = LODWORD(STACK[0x55A0]) + v162;
  v173 = STACK[0x5318];
  v174 = LODWORD(STACK[0x5318]) ^ v172;
  LODWORD(STACK[0x5160]) = v174;
  v175 = v173 - v171;
  v176 = STACK[0x53F8];
  LODWORD(STACK[0x5190]) = LODWORD(STACK[0x53F8]) + v171;
  v177 = v176 + v169;
  v178 = v168 ^ v169;
  v179 = STACK[0x5560];
  v180 = LODWORD(STACK[0x5560]) + v168;
  LODWORD(STACK[0x5150]) = v180;
  v181 = v179 - LODWORD(STACK[0x5268]);
  v182 = STACK[0x55B0];
  v183 = LODWORD(STACK[0x5268]) - LODWORD(STACK[0x55B0]);
  LODWORD(STACK[0x5258]) = v183;
  LODWORD(STACK[0x53F8]) = v142 + v183 + 2095973240;
  v184 = v111;
  v185 = v131;
  LODWORD(STACK[0x53B0]) = v111 + v131 - 1520396263;
  v186 = STACK[0x5760];
  v187 = LODWORD(STACK[0x5760]) + v170;
  LODWORD(STACK[0x57C0]) = v163;
  v188 = v186 + v163;
  v189 = v182 - LODWORD(STACK[0x53C0]);
  LODWORD(STACK[0x5168]) = LODWORD(STACK[0x53C0]) ^ v119;
  v190 = v119 - LODWORD(STACK[0x5620]);
  v191 = STACK[0x5660];
  LODWORD(STACK[0x5198]) = LODWORD(STACK[0x5620]) - LODWORD(STACK[0x5660]);
  v192 = v191 ^ LODWORD(STACK[0x52F0]);
  v193 = LODWORD(STACK[0x56E0]) + LODWORD(STACK[0x52F0]);
  v194 = STACK[0x5420];
  v195 = LODWORD(STACK[0x56E0]) - LODWORD(STACK[0x5420]);
  LODWORD(STACK[0x5178]) = v195;
  v196 = STACK[0x53C8];
  LODWORD(STACK[0x5450]) = v194 - LODWORD(STACK[0x53C8]);
  v197 = v196 - v187;
  v198 = v187 - LODWORD(STACK[0x5650]);
  v199 = LODWORD(STACK[0x53F0]) ^ LODWORD(STACK[0x5650]);
  LODWORD(STACK[0x51A8]) = v188 + LODWORD(STACK[0x53F0]);
  v200 = v188 - LODWORD(STACK[0x5340]);
  v201 = LODWORD(STACK[0x5340]) + LODWORD(STACK[0x56C0]);
  v202 = LODWORD(STACK[0x56C0]) - LODWORD(STACK[0x5740]);
  v203 = v166 ^ LODWORD(STACK[0x5740]);
  LODWORD(STACK[0x5158]) = v203;
  LODWORD(STACK[0x5420]) = v203 - v167 + 1724758687;
  LODWORD(STACK[0x55B0]) = v199 + v151 - 1246717712;
  LODWORD(STACK[0x5328]) = v189;
  v204 = STACK[0x5460];
  LODWORD(STACK[0x57B0]) = (v189 ^ LODWORD(STACK[0x5460])) + 41745332;
  LODWORD(STACK[0x55A0]) = v178 + v195 - 34837213;
  LODWORD(STACK[0x5318]) = v184 + v144;
  LODWORD(STACK[0x5590]) = v190 - v163 + 2103402147;
  v205 = STACK[0x51C8];
  v206 = STACK[0x51A0];
  LODWORD(STACK[0x57A0]) = LODWORD(STACK[0x51C8]) + LODWORD(STACK[0x51A0]) + 1368987289;
  LODWORD(STACK[0x5740]) = LODWORD(STACK[0x54A0]) - LODWORD(STACK[0x56F0]) - 433525726;
  LODWORD(STACK[0x5308]) = v204 - v158;
  LODWORD(STACK[0x5340]) = v158 - v198;
  v207 = STACK[0x5440];
  LODWORD(STACK[0x53A8]) = v198 - LODWORD(STACK[0x5440]);
  LODWORD(STACK[0x5310]) = v200 + v207;
  LODWORD(STACK[0x5460]) = v200 + v177;
  v208 = STACK[0x5670];
  LODWORD(STACK[0x5398]) = v177 ^ LODWORD(STACK[0x5670]);
  v209 = LODWORD(STACK[0x51B0]) ^ v208;
  LODWORD(STACK[0x5780]) = LODWORD(STACK[0x54C0]) + LODWORD(STACK[0x51B0]) - 1892697261;
  v210 = STACK[0x5370];
  v211 = STACK[0x51E0];
  LODWORD(STACK[0x5790]) = LODWORD(STACK[0x51E0]) + LODWORD(STACK[0x5370]) - 172172948;
  LODWORD(STACK[0x56E0]) = v174 - v193 + 916401667;
  v212 = STACK[0x5408];
  LODWORD(STACK[0x53C8]) = LODWORD(STACK[0x5408]) - v185;
  v213 = STACK[0x5580];
  LODWORD(STACK[0x53C0]) = LODWORD(STACK[0x5580]) - v212;
  v214 = STACK[0x56D0];
  LODWORD(STACK[0x51B0]) = v213 ^ LODWORD(STACK[0x56D0]);
  v215 = STACK[0x5358];
  LODWORD(STACK[0x5770]) = v214 + LODWORD(STACK[0x5358]) - 1694413912;
  LODWORD(STACK[0x5580]) = v144 - v190 - 1294057677;
  v216 = STACK[0x5248];
  v217 = STACK[0x51D8];
  LODWORD(STACK[0x5670]) = LODWORD(STACK[0x5248]) + LODWORD(STACK[0x51D8]) + 418661101;
  v218 = v197 ^ LODWORD(STACK[0x5720]);
  LODWORD(STACK[0x5440]) = v197 + v192;
  v219 = STACK[0x5750];
  LODWORD(STACK[0x5408]) = LODWORD(STACK[0x5750]) + v192;
  v220 = STACK[0x5500];
  LODWORD(STACK[0x5360]) = LODWORD(STACK[0x5148]) - LODWORD(STACK[0x5500]) + 1944000068;
  LODWORD(STACK[0x56D0]) = LODWORD(STACK[0x5188]) + v175 - 326017815;
  v221 = STACK[0x5348];
  LODWORD(STACK[0x5750]) = (LODWORD(STACK[0x5348]) ^ v178) - 1846508936;
  v222 = STACK[0x5260];
  LODWORD(STACK[0x5760]) = LODWORD(STACK[0x5260]) + v219 + 1258614334;
  v223 = STACK[0x5300];
  LODWORD(STACK[0x5188]) = v222 ^ LODWORD(STACK[0x5300]);
  v224 = LODWORD(STACK[0x5170]) ^ v223;
  v225 = v181 ^ v175;
  LODWORD(STACK[0x56C0]) = v201 - v181 - 488455586;
  v226 = STACK[0x5610];
  LODWORD(STACK[0x5300]) = LODWORD(STACK[0x5140]) - 986356605 + LODWORD(STACK[0x5610]);
  v227 = STACK[0x51D0];
  LODWORD(STACK[0x5650]) = LODWORD(STACK[0x51D0]) - v226 - 396047553;
  v228 = STACK[0x5710];
  LODWORD(STACK[0x52F0]) = (LODWORD(STACK[0x5710]) ^ v180) + 1400643100;
  v229 = STACK[0x5730];
  LODWORD(STACK[0x5260]) = v206 ^ LODWORD(STACK[0x5730]);
  v230 = v202 ^ v229;
  LODWORD(STACK[0x51A0]) = v202 ^ v229;
  v231 = STACK[0x5400];
  LODWORD(STACK[0x5268]) = (LODWORD(STACK[0x5400]) ^ v202) - 237906477;
  v232 = STACK[0x53A0];
  LODWORD(STACK[0x5500]) = LODWORD(STACK[0x53A0]) + v220 + 89929928;
  v233 = LODWORD(STACK[0x54E0]) - v215;
  LODWORD(STACK[0x5660]) = LODWORD(STACK[0x54E0]) + v228 + 1044115120;
  LODWORD(STACK[0x5720]) = v224 + 943048658;
  LODWORD(STACK[0x5730]) = v218 + 1557157069;
  v234 = STACK[0x5330];
  LODWORD(STACK[0x5620]) = (LODWORD(STACK[0x5330]) ^ v231) - 1665974670;
  v235 = LODWORD(STACK[0x5600]) - v201;
  v236 = STACK[0x5640];
  LODWORD(STACK[0x53F0]) = LODWORD(STACK[0x5600]) ^ LODWORD(STACK[0x5640]);
  LODWORD(STACK[0x5640]) = v236 + v193 + 1954337177;
  LODWORD(STACK[0x5400]) = v235 - 1075443217;
  v237 = STACK[0x5338];
  v238 = v199 - LODWORD(STACK[0x5338]) - 319162020;
  LODWORD(STACK[0x5170]) = v238;
  LODWORD(STACK[0x5710]) = v209 + 1218820661;
  v239 = LODWORD(STACK[0x54B0]) + v227 - 1451565643;
  LODWORD(STACK[0x5600]) = v239;
  LODWORD(STACK[0x5358]) = v233 - 155608088;
  v240 = STACK[0x5368];
  LODWORD(STACK[0x4FD8]) = (v216 ^ LODWORD(STACK[0x5368])) + 915299488;
  v241 = STACK[0x5680];
  LODWORD(STACK[0x51D8]) = v217 - LODWORD(STACK[0x5680]);
  v242 = STACK[0x5180];
  v243 = (LODWORD(STACK[0x5180]) ^ v241) - 1917310253;
  LODWORD(STACK[0x54E0]) = v243;
  v244 = STACK[0x5390];
  v245 = LODWORD(STACK[0x5390]) + v221 - 1469179906;
  LODWORD(STACK[0x5560]) = v245;
  v246 = STACK[0x5168];
  LODWORD(STACK[0x5348]) = LODWORD(STACK[0x5158]) + LODWORD(STACK[0x5168]);
  v247 = STACK[0x5630];
  LODWORD(STACK[0x5680]) = (LODWORD(STACK[0x5630]) ^ v246) - 521939398;
  v248 = LODWORD(STACK[0x5190]) ^ v205;
  LODWORD(STACK[0x5610]) = (LODWORD(STACK[0x54D0]) ^ LODWORD(STACK[0x5190])) - 1978804207;
  v249 = LODWORD(STACK[0x57C0]) - LODWORD(STACK[0x5550]);
  v250 = v247 + 1526551776 + LODWORD(STACK[0x5550]);
  LODWORD(STACK[0x5550]) = v242 + LODWORD(STACK[0x54F0]) + 531948936;
  v251 = v225 + 1183696296;
  LODWORD(STACK[0x5630]) = v225 + 1183696296;
  v252 = STACK[0x53B8];
  LODWORD(STACK[0x5370]) = v210 - LODWORD(STACK[0x53B8]);
  v253 = STACK[0x5570];
  LODWORD(STACK[0x57C0]) = v252 - LODWORD(STACK[0x5570]);
  LODWORD(STACK[0x5570]) = v253 + v234 + 1360794693;
  v254 = STACK[0x5530];
  v255 = LODWORD(STACK[0x52F8]) - LODWORD(STACK[0x5530]);
  LODWORD(STACK[0x51C8]) = v255;
  v256 = STACK[0x5350];
  LODWORD(STACK[0x5180]) = v254 - LODWORD(STACK[0x5350]);
  v257 = STACK[0x5198];
  LODWORD(STACK[0x5190]) = v256 + LODWORD(STACK[0x5198]);
  LODWORD(STACK[0x53B8]) = v244 - 1668636231 + v257;
  v258 = STACK[0x5520];
  v259 = LODWORD(STACK[0x5520]) - v240 - 1581173382;
  LODWORD(STACK[0x5248]) = v259;
  v260 = STACK[0x5380];
  v261 = LODWORD(STACK[0x5380]) + LODWORD(STACK[0x5320]);
  LODWORD(STACK[0x52F8]) = v261;
  v262 = STACK[0x5540];
  LODWORD(STACK[0x5330]) = v260 + LODWORD(STACK[0x5540]);
  v263 = STACK[0x55E0];
  LODWORD(STACK[0x5350]) = LODWORD(STACK[0x5258]) ^ LODWORD(STACK[0x55E0]);
  LODWORD(STACK[0x5530]) = v262 - 2145815498 + v263;
  v264 = STACK[0x53D0];
  v265 = LODWORD(STACK[0x5178]) + LODWORD(STACK[0x53D0]);
  LODWORD(STACK[0x51D0]) = v265;
  LODWORD(STACK[0x5540]) = LODWORD(STACK[0x5160]) + 135830518 + v264;
  v266 = STACK[0x51A8];
  LODWORD(STACK[0x5390]) = LODWORD(STACK[0x5250]) + LODWORD(STACK[0x51A8]);
  v267 = STACK[0x5378];
  LODWORD(STACK[0x5368]) = LODWORD(STACK[0x5378]) ^ v266;
  v268 = STACK[0x5388];
  LODWORD(STACK[0x53D0]) = v267 - LODWORD(STACK[0x5388]);
  v269 = v211 - 1305090058 + v268;
  v270 = STACK[0x53D8];
  v271 = LODWORD(STACK[0x53D8]) ^ v258;
  LODWORD(STACK[0x5380]) = v271;
  v272 = STACK[0x53E0];
  v273 = (v270 ^ LODWORD(STACK[0x53E0])) - 1449794810;
  LODWORD(STACK[0x55E0]) = v273;
  v274 = LODWORD(STACK[0x55F0]) + 1952144967 + v272;
  v275 = LODWORD(STACK[0x5150]) + LODWORD(STACK[0x56F0]) - 1103158863;
  LODWORD(STACK[0x5250]) = v275;
  LODWORD(STACK[0x5520]) = v248 + 97476166;
  v276 = LODWORD(STACK[0x54C0]) ^ 0xB0D167DC ^ LODWORD(STACK[0x54A0]);
  LODWORD(STACK[0x54C0]) = v276;
  v277 = v232 ^ 0x2F89E14E ^ LODWORD(STACK[0x51C0]);
  LODWORD(STACK[0x55F0]) = v277;
  v278 = v249 + 728409583;
  v250 += 3417;
  v279 = v230 ^ v269 ^ v250 ^ v238 ^ (v249 + 728409583);
  v280 = LODWORD(STACK[0x53E8]) + v237;
  v281 = LODWORD(STACK[0x53E8]) + 1561441168;
  LODWORD(STACK[0x56F0]) = v281;
  v282 = v279 ^ LODWORD(STACK[0x57B0]) ^ v281;
  LODWORD(v284) = __ROR4__(v280, 13) ^ 0x2A8B0C19;
  HIDWORD(v284) = v284;
  v283 = v284 >> 19;
  LODWORD(STACK[0x54A0]) = v283;
  v285 = STACK[0x51B0];
  v286 = v282 ^ v283 ^ LODWORD(STACK[0x51B0]);
  v287 = LODWORD(STACK[0x53C0]) - 858899682;
  v288 = STACK[0x5318];
  v289 = v287 ^ v239 ^ LODWORD(STACK[0x5790]) ^ v259 ^ v243;
  LODWORD(STACK[0x5338]) = LODWORD(STACK[0x5318]) - 936443204;
  v290 = LODWORD(STACK[0x5188]) + 78237695;
  LODWORD(STACK[0x5258]) = v290;
  LODWORD(STACK[0x5320]) = v255 - 545551911;
  v291 = v286 ^ v289 ^ (v288 - 936443204) ^ v290 ^ (v255 - 545551911) ^ v245;
  v292 = LODWORD(STACK[0x53B8]) + 1302;
  v293 = LODWORD(STACK[0x53C8]) + 454744577;
  LODWORD(STACK[0x51C0]) = v293;
  v294 = v291 ^ LODWORD(STACK[0x5750]) ^ v293 ^ LODWORD(STACK[0x5780]) ^ LODWORD(STACK[0x53A8]) ^ v292 ^ v276 ^ v261 ^ LODWORD(STACK[0x5408]);
  v295 = LODWORD(STACK[0x5450]) - LODWORD(STACK[0x54B0]);
  LODWORD(STACK[0x51E0]) = v295;
  v296 = LODWORD(STACK[0x5440]) ^ LODWORD(STACK[0x5730]) ^ LODWORD(STACK[0x5348]) ^ v274;
  LODWORD(STACK[0x53C0]) = v295 - 1914543927;
  v297 = v296 ^ (v295 - 1914543927) ^ LODWORD(STACK[0x5430]) ^ v275 ^ v273;
  LODWORD(STACK[0x53B8]) = v271 + 1108570421;
  v298 = v294 ^ v297 ^ (v271 + 1108570421);
  v299 = LODWORD(STACK[0x53F0]) + 707584296;
  v300 = LODWORD(STACK[0x5390]) ^ 0xBB91F040;
  v301 = LODWORD(STACK[0x5360]) ^ LODWORD(STACK[0x5740]) ^ LODWORD(STACK[0x53F8]) ^ v251 ^ v265;
  v302 = STACK[0x5640];
  v303 = LODWORD(STACK[0x5260]) - 1766396432;
  LODWORD(STACK[0x5260]) = v303;
  v304 = v298 ^ v301 ^ v302 ^ v300 ^ v299 ^ LODWORD(STACK[0x5400]) ^ v303;
  v305 = STACK[0x5180];
  v306 = STACK[0x5368];
  v307 = STACK[0x5190];
  v308 = LODWORD(STACK[0x5190]) ^ LODWORD(STACK[0x5368]) ^ LODWORD(STACK[0x5570]);
  v309 = STACK[0x53D0];
  LODWORD(STACK[0x53C8]) = LODWORD(STACK[0x5180]) - 1422035813;
  v310 = STACK[0x5268];
  v311 = STACK[0x5620];
  v312 = STACK[0x5670];
  v313 = STACK[0x51D8];
  v314 = STACK[0x5650];
  v315 = v304 ^ v308 ^ v309 ^ (v305 - 1422035813) ^ LODWORD(STACK[0x5268]) ^ LODWORD(STACK[0x5620]) ^ LODWORD(STACK[0x5670]) ^ LODWORD(STACK[0x51D8]) ^ v277 ^ LODWORD(STACK[0x5650]) ^ LODWORD(STACK[0x5358]);
  v316 = LODWORD(STACK[0x5370]) - 1989537906;
  v317 = LODWORD(STACK[0x57C0]) - 623885974;
  v318 = STACK[0x5510];
  v319 = STACK[0x5660];
  v320 = STACK[0x5610];
  v321 = STACK[0x52F0];
  LODWORD(STACK[0x53A0]) = v317;
  v322 = *(v18 - 152);
  v323 = v315 ^ v319 ^ v318 ^ v320 ^ v321 ^ v317 ^ v316 ^ 0x2EE79C9E;
  LODWORD(STACK[0x5388]) = v285 ^ 0x461D60E7;
  LODWORD(STACK[0x5318]) = v292;
  LODWORD(STACK[0x53E0]) = v274;
  v324 = LODWORD(STACK[0x54E0]) ^ 0x5907A0A6 ^ v313;
  LODWORD(STACK[0x53D8]) = v278;
  LODWORD(STACK[0x53E8]) = v269;
  v325 = LODWORD(STACK[0x5460]) ^ 0xA50DAFED;
  LODWORD(STACK[0x4FA0]) = v325;
  v326 = (v314 ^ v269 ^ v321 ^ ((((v324 ^ ((v300 ^ (v288 - (v285 ^ 0x461D60E7) + v292 - v274 + 121636842)) - v278)) - v325) ^ v312) + v311)) - LODWORD(STACK[0x56C0]);
  v327 = LODWORD(STACK[0x5350]) ^ 0x541BE7CF;
  LODWORD(STACK[0x54B0]) = v287;
  v328 = LODWORD(STACK[0x5580]) ^ v287;
  LODWORD(STACK[0x5390]) = v327;
  v329 = v328 ^ v327 ^ v326;
  v330 = LODWORD(STACK[0x5398]) ^ 0xF1518299;
  v331 = LODWORD(STACK[0x53B0]) - 1108570421;
  LODWORD(STACK[0x5370]) = v330;
  v332 = v331 + v330 - LODWORD(STACK[0x5380]);
  v333 = (v329 + v318) ^ LODWORD(STACK[0x56D0]);
  LODWORD(STACK[0x5380]) = v309 ^ 0x9E1A9679;
  v334 = (v332 - v302 - (v309 ^ 0x9E1A9679) + v333) ^ LODWORD(STACK[0x5750]);
  v335 = STACK[0x5780];
  LODWORD(STACK[0x53D0]) = v250;
  v336 = v335 - v250 + LODWORD(STACK[0x55A0]);
  LODWORD(STACK[0x5378]) = v307 ^ 0xE5B29549;
  v337 = STACK[0x5308];
  v338 = ((LODWORD(STACK[0x53A8]) ^ 0x51E242D0) - LODWORD(STACK[0x5550]) + LODWORD(STACK[0x55E0]) + LODWORD(STACK[0x5630]) - LODWORD(STACK[0x5308]) - v305 + v319 + v320 + 2073591845 + (LODWORD(STACK[0x55B0]) ^ LODWORD(STACK[0x5770]) ^ (v336 - (v307 ^ 0xE5B29549) + v334))) ^ LODWORD(STACK[0x5170]);
  v339 = 545551911 - LODWORD(STACK[0x51C8]) + LODWORD(STACK[0x55C0]);
  LODWORD(STACK[0x5368]) = v306 ^ 0x8D0A4B6E;
  v340 = ((LODWORD(STACK[0x5590]) + (LODWORD(STACK[0x51A0]) ^ 0x5147CD3D) + (LODWORD(STACK[0x5430]) ^ 0x2149D76) + ((v339 + LODWORD(STACK[0x5540]) + (v306 ^ 0x8D0A4B6E) + v338) ^ LODWORD(STACK[0x51C0]))) ^ LODWORD(STACK[0x5680])) + LODWORD(STACK[0x5360]);
  v341 = LODWORD(STACK[0x5330]) ^ 0xE66683A8;
  LODWORD(STACK[0x5330]) = v341;
  v342 = 1914543927 - LODWORD(STACK[0x51E0]) + LODWORD(STACK[0x55F0]) + (((v341 ^ LODWORD(STACK[0x56F0]) ^ v310 ^ LODWORD(STACK[0x5760]) ^ v340) + LODWORD(STACK[0x5730])) ^ v316);
  v343 = LODWORD(STACK[0x5300]) + 3793;
  v344 = LODWORD(STACK[0x5340]) ^ 0xF1950513;
  LODWORD(STACK[0x56F0]) = v343;
  v345 = LODWORD(STACK[0x5348]) ^ 0x9163DEC4;
  LODWORD(STACK[0x5360]) = v345;
  v346 = v345 + LODWORD(STACK[0x5258]);
  LODWORD(STACK[0x4F90]) = v344;
  v347 = LODWORD(STACK[0x54A0]) ^ LODWORD(STACK[0x5600]) ^ 0x8CB78036 ^ LODWORD(STACK[0x53F8]) ^ ((LODWORD(STACK[0x5710]) ^ LODWORD(STACK[0x5248]) ^ LODWORD(STACK[0x5358]) ^ (LODWORD(STACK[0x5250]) - 707584296 - LODWORD(STACK[0x53F0]) - LODWORD(STACK[0x57A0]) + (LODWORD(STACK[0x57B0]) ^ LODWORD(STACK[0x5408]) ^ 0x41B91B7D ^ (v346 - v344 + (v342 ^ v343))))) - LODWORD(STACK[0x5260]));
  v348 = LODWORD(STACK[0x5440]) ^ 0xD5193A0B;
  v349 = LODWORD(STACK[0x5520]) - LODWORD(STACK[0x5530]) + LODWORD(STACK[0x54C0]);
  LODWORD(STACK[0x5358]) = v348;
  v350 = STACK[0x5310];
  LODWORD(STACK[0x5070]) = LODWORD(STACK[0x5310]) ^ 0xAE6ECFDA;
  v351 = LODWORD(STACK[0x55D0]) + LODWORD(STACK[0x56E0]) + 623885974 - LODWORD(STACK[0x57C0]) + (LODWORD(STACK[0x51D0]) ^ 0x51ACF5F8 ^ (((v349 - v348 + (v350 ^ 0xAE6ECFDA) - LODWORD(STACK[0x5500]) + v347) ^ LODWORD(STACK[0x5790])) + LODWORD(STACK[0x5570])));
  v352 = LODWORD(STACK[0x52F8]) ^ 0xEE9D4FC3;
  LODWORD(STACK[0x5348]) = v352;
  LODWORD(STACK[0x4F98]) = LODWORD(STACK[0x5400]) + LODWORD(STACK[0x5740]) + LODWORD(STACK[0x5720]) + (v352 ^ LODWORD(STACK[0x5560]) ^ v351);
  LODWORD(STACK[0x5018]) = LODWORD(STACK[0x5450]) ^ 0x16A46F8F ^ LODWORD(STACK[0x54D0]);
  v353 = v323 ^ LODWORD(STACK[0x5410]);
  LODWORD(STACK[0x4F88]) = v353 & 0xFF7FFFFF;
  LODWORD(STACK[0x5340]) = v337 - 651556032;
  if ((v353 & 0x800000 & (v337 - 651556032)) != 0)
  {
    v354 = -(v353 & 0x800000);
  }

  else
  {
    v354 = v353 & 0x800000;
  }

  LODWORD(STACK[0x4F80]) = v354;
  return (*(STACK[0x57D8] + 8 * v322))(LODWORD(STACK[0x4E50]), LODWORD(STACK[0x4D98]), LODWORD(STACK[0x4E44]));
}

uint64_t sub_100122864()
{
  v0 = LODWORD(STACK[0x2CC4]) | 0x1200;
  STACK[0xC8C0] = STACK[0xB718];
  LODWORD(STACK[0x9F6C]) = STACK[0x8784];
  STACK[0xA398] = &STACK[0x6DEE];
  LODWORD(STACK[0xA7C0]) = 391032503;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10012292C()
{
  LODWORD(STACK[0x1D4C8]) = v1 + 289235981 * ((~((v2 - 240) | 0x83C69691) + ((v2 - 240) & 0x83C69691)) ^ 0xFBBBB951) - 4771;
  STACK[0x1D4C0] = v0;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 + 9299)))(v2 - 240);
  STACK[0xBBC0] = 0x79296B4A625EDF44;
  return (*(v3 + 8 * (v1 + 5564)))(v4);
}

uint64_t sub_100122A1C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  v65 = *(&a61 + (1633 * a4 + 2129432) % 0xA88u);
  v66 = v65 < (((2 * a8) ^ 0x95B8) & 0xFE ^ 0xE3u);
  v67 = *(v64 + 4 * (3677 * (v65 | (v66 << 8)) + 14799925 - ((((3677 * (v65 | (v66 << 8)) + 14799925) * v62) >> 32) >> 12) * v63));
  v68 = v67;
  v69 = (v67 ^ 0x63313527) - 1218999932;
  v70 = (v67 ^ 0x21A2611B) - 171647552;
  v71 = 1633 * (((HIBYTE(v67) ^ 0xA20662D2) + 2098986135) ^ ((HIBYTE(v67) ^ 0x448E8185) - 1684856894) ^ ((HIBYTE(v67) ^ 0xE688E3A2) + 966098407)) - 1001832196;
  LOBYTE(v67) = *(&a61 + (1633 * (((BYTE2(v67) ^ 0xF719F540) + 599924431) ^ ((BYTE2(v67) ^ 0x1281EFEB) - 967179162) ^ ((BYTE2(v67) ^ 0xE5981A5F) + 826536402)) + 828469971) % 0xA88);
  v72 = *(&a61 + v71 % 0xA88);
  v73 = *(&a61 + (1633 * (v69 ^ v70 ^ ((v68 ^ 0x4293544Eu) - 1762268949)) + 484439799) % 0xA88);
  LOBYTE(v66) = v67 & 0x65 ^ 0xE2;
  LOBYTE(v68) = v72 & 0x67 ^ 0xE3;
  LOBYTE(v67) = v67 ^ (2 * ((v67 ^ 0x20) & (2 * ((v67 ^ 0x20) & (2 * ((v67 ^ 0x20) & (2 * ((v67 ^ 0x20) & (2 * (((2 * (((2 * v67) & 0x42 | 0x21) & v67)) ^ 0x44) & v67 ^ v66)) ^ v66)) ^ v66)) ^ v66)) ^ v66));
  v74 = *(&a61 + (1633 * (((BYTE1(v67) ^ 0xD198FB8A) + 82728854) ^ ((BYTE1(v67) ^ 0x8D9DEBA2) + 1491814334) ^ ((BYTE1(v67) ^ 0x5C0510E5) - 1988903685)) + 1446387835) % 0xA88);
  LOBYTE(v66) = v74 & 0xB5 | 0xA;
  v75 = v74 ^ (2 * ((v74 ^ 0x20) & (2 * ((v74 ^ 0x20) & (2 * ((v74 ^ 0x20) & (2 * ((v74 ^ 0x20) & (2 * ((v74 ^ 0x20) & (2 * ((v74 ^ 0x20) & (2 * v66) ^ v66)) ^ v66)) ^ v66)) ^ v66)) ^ v66)) ^ v66));
  v76 = (((v72 ^ (2 * ((v72 ^ 0x20) & (2 * ((v72 ^ 0x20) & (2 * ((v72 ^ 0x20) & (2 * ((v72 ^ 0x20) & (2 * (((2 * (((2 * v72) & 0xC2 | 0x21) & v72)) ^ 0x46) & v72 ^ v68)) ^ v68)) ^ v68)) ^ v68)) ^ v68))) << 16) ^ 0x5AD1BE) & ((v67 << 8) ^ 0xFFBAFF) | (v67 << 8) & 0x2E00;
  LOBYTE(v67) = v73 & 0x31 | 0xC8;
  LOBYTE(v69) = v73 ^ 0x20;
  v77 = v73 ^ (2 * (v69 & (2 * (v69 & (2 * (v69 & (2 * (v69 & (2 * (v69 & (2 * (v69 & (2 * (v73 & 0x31)) ^ v67)) ^ v67)) ^ v67)) ^ v67)) ^ v67)) ^ v67));
  *(v64 + 4 * (v61 + 3677 * a4 - ((((v61 + 3677 * a4) * v62) >> 32) >> 12) * v63)) = (((((v76 ^ 0xCA5AF5) & (v75 ^ 0xFFFF4E) ^ v75 & 0xB4) << 8) ^ 0x351B497) & (v77 ^ 0xFFFFFFEE) | v77 & 0x68) ^ 0x10A86C5;
  return (*(a60 + 8 * ((12953 * (a4 == 255)) ^ a8)))();
}

uint64_t sub_100122E64(uint64_t a1, char a2)
{
  v13 = v10 & 0xA6 ^ 0xE1;
  v14 = v5 & 0xC ^ 0x94;
  v15 = v9 & 0x18 ^ v4;
  LODWORD(STACK[0x32E0]) = LODWORD(STACK[0x4E78]) | LODWORD(STACK[0x4E38]);
  v16 = (((v5 ^ (2 * ((v5 ^ a2) & (2 * ((v5 ^ a2) & (2 * ((v5 ^ a2) & (2 * ((v5 ^ a2) & (2 * v14) ^ v14)) ^ v14)) ^ v14)) ^ v14))) ^ 0xC) << 16) | (((v9 ^ (2 * ((v9 ^ a2) & (2 * ((v9 ^ a2) & (2 * ((v9 ^ a2) & (2 * ((v9 ^ a2) & (2 * ((v9 ^ a2) & (2 * v15) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15))) ^ 0x18) << 8);
  LODWORD(STACK[0x4E34]) = ((((v10 ^ (2 * ((v10 ^ a2) & (2 * ((v10 ^ a2) & (2 * ((v10 ^ a2) & (2 * ((v10 ^ a2) & (2 * ((v10 ^ 0x44) & (2 * (v13 ^ v10 & 2)) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13))) ^ 0x69BF6D) & ~v16 | v16 & 0x964000) << 8) & 0x54AB0A00;
  v17 = v12 & 0x48 ^ 0x72;
  v18 = (v8 & 0xE4 | 0x10) ^ v8 & 0xE0;
  v19 = (((v12 ^ (2 * ((v12 ^ a2) & (2 * ((v12 ^ a2) & (2 * ((v12 ^ a2) & (2 * ((v12 ^ a2) & (2 * ((v12 ^ a2) & (2 * v17) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17))) ^ 0x48) << 16) | (((v8 ^ (2 * ((v8 ^ a2) & (2 * ((v8 ^ a2) & (2 * ((v8 ^ a2) & (2 * ((v8 ^ a2) & (2 * ((v8 ^ a2) & (2 * v18) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18))) ^ 4) << 8);
  v20 = v11 & 0x18 ^ v4;
  v21 = (((v11 ^ (2 * ((v11 ^ a2) & (2 * ((v11 ^ a2) & (2 * ((v11 ^ a2) & (2 * ((v11 ^ a2) & (2 * ((v11 ^ a2) & (2 * v20) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20))) ^ 0x81368C) & ~v19 | v19 & 0x7EC900) << 8;
  v22 = v21 ^ 0x244161FFu;
  LODWORD(STACK[0x4E38]) = v21 & 0x5BAC8E00;
  LOBYTE(v21) = v7 & 0x86 | 0x51;
  v23 = v6 & 0x9E ^ 0x5D;
  v24 = (((v6 ^ (2 * ((v6 ^ a2) & (2 * ((v6 ^ a2) & (2 * ((v6 ^ a2) & (2 * ((v6 ^ a2) & (2 * ((v6 ^ a2) & (2 * (v23 ^ v6 & 0x3A)) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23))) ^ 0x9E) << 8) | (((v7 ^ (2 * ((v7 ^ a2) & (2 * ((v7 ^ a2) & (2 * ((v7 ^ a2) & (2 * ((v7 ^ a2) & (2 * ((v7 ^ a2) & (2 * ((v7 ^ a2) & 0x22 ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21))) ^ 0x86) << 16);
  LOBYTE(v21) = v2 & 0xD2 ^ 0x3F;
  LODWORD(STACK[0x4E24]) = ((((v2 ^ (2 * ((v2 ^ a2) & (2 * ((v2 ^ a2) & (2 * ((v2 ^ a2) & (2 * ((v2 ^ a2) & (2 * ((v2 ^ a2) & (2 * ((v2 ^ a2) & 0x36 ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21))) ^ 0xDF80DE) & ~v24 | v24 & 0x207F00) << 8) & 0xC0675700;
  return (*(STACK[0x57D8] + 8 * v3))(v22);
}

uint64_t sub_1001233B0@<X0>(unsigned int a1@<W8>)
{
  v8 = v1 ^ LODWORD(STACK[0x2D0]) ^ 0xB1 ^ v2;
  v9 = 1534937323 * (v5 ^ 0xCD7888C2C6EEFB47);
  v10 = STACK[0x2D4];
  *(v7 - 208) = v8 + v9;
  *(v7 - 240) = v9;
  *(v7 - 216) = v9 + a1;
  *(v7 - 224) = v9;
  *(v7 - 220) = v10 ^ v9;
  *(v7 - 232) = v10 - v9 + 3459;
  *(v7 - 228) = v9 + v4 - 1632379223;
  v11 = (*(v6 + 8 * (v4 + v3)))(v7 - 240);
  return (*(v6 + 8 * *(v7 - 204)))(v11);
}

uint64_t sub_10012347C()
{
  v5 = (*(((2 * (v0 + 6)) & 0x7BDF537FFEFFFFAELL) + ((v0 + 6) ^ 0xFDEFA9BFFF7FFFD7) + v1 + 0x210564000800029) << 24) | (*(((2 * (v0 + 6)) & 0x7BDF537FFEFFFFAELL) + ((v0 + 6) ^ 0xFDEFA9BFFF7FFFD7) + v1 + 0x21056400080002ALL) << 16) | (*(((2 * (v0 + 6)) & 0x7BDF537FFEFFFFAELL) + ((v0 + 6) ^ 0xFDEFA9BFFF7FFFD7) + v1 + 0x21056400080002BLL) << 8);
  v6 = *(((2 * (v0 + 6)) & 0x7BDF537FFEFFFFAELL) + ((v0 + 6) ^ 0xFDEFA9BFFF7FFFD7) + v1 + 0x21056400080002CLL);
  return (*(v4 + 8 * ((38 * ((((v6 - ((2 * v6) & 0x28) + 2093490452) ^ 0x5A0292DE) & (v5 ^ 0x2FFFFFFF) ^ v5 & 0xD9354C00 ^ 0x26CAB3CA) + v0 + 10 <= v2)) ^ v3)))();
}

uint64_t sub_100123658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = STACK[0x5D8] & 0x396BFBFF;
  STACK[0x18D8] = *(v3 + 8 * (v4 + 1211072485));
  return (*(v3 + 8 * ((v4 + 1211072485) ^ v5 ^ 0x2BB6 ^ (60282 * ((v4 + 819093527) < 0x5757A6B1)))))(STACK[0x650], a2, a3, -6635, 1211091933, 243, -7443, 22587);
}

uint64_t sub_100123A54()
{
  *(v1 + 600) = v0 - 289235981 * (((v2 | 0x7D2B7A66) - v2 + (v2 & 0x82D48598)) ^ 0xFAA9AA59) + 16788;
  v4 = STACK[0x4658];
  *(v1 + 592) = STACK[0x4658];
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v0 + 27211)))(v3 - 240);
  if (*(v1 + 604))
  {
    v7 = 1;
  }

  else
  {
    v7 = *v4 == 0;
  }

  v8 = v7;
  return (*(v5 + 8 * ((v8 * (((v0 + 17967) | 0x16) ^ 0x3A13)) ^ v0)))(v6);
}

uint64_t sub_100123B60(int a1)
{
  v2 = *(STACK[0x6A60] + 4);
  if (v2 + 975022060 >= 0)
  {
    v3 = v1;
  }

  else
  {
    v3 = -v1;
  }

  *(STACK[0x6A60] + 4) = ((v2 - 1172461588 + v3) ^ 0x7DFAF997) - 941138307 + (((v2 - 1172461588 + v3) << ((a1 ^ 0xED) + 45)) & 0xFBF5F32E);
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_100123C84()
{
  v7 = v1 + v0;
  v8 = 16 * v4;
  v9 = STACK[0x57D8];
  v10 = (*(STACK[0x57D8] + 8 * (v1 + v2)))(*(v3 + v8));
  *(v3 + v8) = 0;
  v11 = LODWORD(STACK[0x9684]) + 770770193;
  v12 = v6 + v4 + 1 < v11;
  if (v7 + v4 + v5 > 0x61D84094 != v11 < v6)
  {
    v12 = v11 < v6;
  }

  return (*(v9 + 8 * ((808 * v12) ^ (v1 + 3480))))(v10);
}

uint64_t sub_100123D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v13 = v5 + v10 + 28;
  v14 = __ROR8__(v13 & 0xFFFFFFFFFFFFFFF8, 8);
  v15 = ((v12 - v14) & 0xB0CF110EE62DD71FLL) + v14 + v9 - ((v14 + v9) & (((v4 + 1497644562) & 0xA6BBBFF5) - 0x4B30EEF119D24CD2));
  v16 = v15 ^ 0x92860A0B3722FA7CLL;
  v15 ^= 0xB66D0D9F639FBA88;
  v17 = __ROR8__(v16, 8);
  v18 = __ROR8__((v17 + v15 - ((2 * (v17 + v15)) & 0x60B9D42DEDCB883ELL) - 0x4FA315E9091A3BE1) ^ 0x551FC82E24A5D4BCLL, 8);
  v19 = (v17 + v15 - ((2 * (v17 + v15)) & 0x60B9D42DEDCB883ELL) - 0x4FA315E9091A3BE1) ^ 0x551FC82E24A5D4BCLL ^ __ROR8__(v15, 61);
  v20 = (v18 + v19) ^ v8;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (v6 - ((v22 + v21) | v6) + ((v22 + v21) | 0x5E005DE2DB52F5E3)) ^ 0xA7BAF863A207E4AFLL;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ a2;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (((2 * (v27 + v26)) & 0xF20FF15B43887FAALL) - (v27 + v26) + 0x6F807525E3BC02ALL) ^ 0x3E80E8C9D92D17C7;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (v30 + v29 - ((2 * (v30 + v29)) & 0x62382DB817F68D00) - 0x4EE3E923F404B980) ^ 0xEB6589649304E7E2;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = __ROR8__(v31, 8);
  *(a1 + v5) = (((v7 - ((v33 + v32) | v7) + ((v33 + v32) | 0xED42ED200223212ELL)) ^ 0x589D4E7F3841C0BALL) >> (8 * (v13 & 7u))) ^ *v13;
  return (*(v11 + 8 * ((1001 * (((v5 + 1) ^ v3) == a3)) ^ v4)))();
}

uint64_t sub_100123F94()
{
  v0 = STACK[0x19D0];
  v1 = STACK[0x19D0] ^ 0x3B7C;
  v2 = STACK[0x57D8];
  STACK[0xB568] = *(STACK[0x57D8] + 8 * STACK[0x19D0]);
  return (*(v2 + 8 * (v0 - 10670 + v1)))();
}

uint64_t sub_10012406C(int a1, int a2, char a3, int a4, int a5, int a6, unsigned __int8 a7)
{
  LODWORD(STACK[0x38B0]) = LODWORD(STACK[0x4EC8]) | LODWORD(STACK[0x4EF8]);
  LODWORD(STACK[0x4E28]) = v9 & (a7 ^ 0xAB54F528);
  LODWORD(STACK[0x4E20]) = a1 & (v7 ^ 0xA453713D);
  LODWORD(STACK[0x4E18]) = a6 & (a5 ^ 0x3F98A820);
  v12 = a4 & 0xFFFFFFE4 | 0xB;
  v13 = v12 ^ a4 & 0x1E;
  v14 = (a4 ^ a2) & (2 * ((a4 ^ a2) & (2 * ((a4 ^ a2) & (2 * ((a4 ^ a2) & (2 * ((a4 ^ a2) & (2 * (a4 & (2 * v12) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13;
  LOBYTE(v13) = a3 & 0x7E ^ 0xCD;
  v15 = (((a3 ^ (2 * ((a3 ^ a2) & (2 * ((a3 ^ a2) & (2 * ((a3 ^ a2) & (2 * ((a3 ^ a2) & (2 * ((a3 ^ a2) & (2 * (v13 ^ a3 & 0x1A)) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13))) ^ 0x7E) << 8) | ((a4 ^ (2 * v14) ^ 0xFA) << 16);
  LOBYTE(v13) = v10 & 0xAA ^ 0xE3;
  v16 = (v15 & 0xFFFFFF00 | (v10 ^ (2 * ((v10 ^ a2) & (2 * ((v10 ^ a2) & (2 * ((v10 ^ a2) & (2 * ((v10 ^ a2) & (2 * ((v10 ^ 0x44) & (2 * ((v10 ^ 0x44) & 0xE ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13)))) << 8;
  LOBYTE(v13) = v8 & 4 | 0x90;
  LODWORD(STACK[0x4E10]) = (v8 ^ (2 * ((v8 ^ a2) & (2 * ((v8 ^ a2) & (2 * ((v8 ^ a2) & (2 * ((v8 ^ a2) & (2 * ((v8 ^ a2) & (2 * v13) | v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13)));
  LODWORD(STACK[0x4E08]) = v16 ^ 0x707405FF;
  v17 = *(STACK[0x57D8] + 8 * v11);
  LODWORD(STACK[0x4E44]) = v16 & 0x8F8B5000;
  return v17();
}

uint64_t sub_1001243C4()
{
  v1 = *(v0 + 295);
  v2 = *(v0 + 2128);
  v3 = v2 & 0xFFFFFFF8;
  v4 = 2 * (v2 & 0xFFFFFFF8);
  v5 = *STACK[0x51E8];
  v6 = *STACK[0x51F0];
  v7 = *(v6 + (v5 & ((v2 & 0xFFFFFFF8 ^ 0xD88327D9) - 1169354541 + (v4 & 0xB1064FB0)) & 0xFFFFFFF8));
  v8 = __ROR8__(v2 & 0xFFFFFFFFFFFFFFF8, 8);
  v9 = (0xC703335B400EB4DDLL - ((v7 + v8) | 0xC703335B400EB4DDLL) + ((v7 + v8) | 0x38FCCCA4BFF14B22)) ^ 0xFA53F20E8000F3C6;
  v10 = v9 ^ __ROR8__(v7, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0x65F254DD188DB4FCLL;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0x6FF046966119128DLL;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0xA1B29DC5D776132BLL;
  v16 = __ROR8__(v15, 8);
  v17 = v15 ^ __ROR8__(v14, 61);
  v18 = (0x25A94757D593DD4ELL - ((v16 + v17) | 0x25A94757D593DD4ELL) + ((v16 + v17) | 0xDA56B8A82A6C22B1)) ^ 0x355298E9DF896A5DLL;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0xD8C7B31FCA19D9DELL;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0x5455012E8AB1C38FLL;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = __ROR8__(v22, 8);
  LOBYTE(v2) = 8 * (v2 & 7);
  *(v0 + 1859) = (((((2 * (v24 + v23)) | 0xFD0C0E91AD6929C6) - (v24 + v23) + 0x179F8B7294B6B1DLL) ^ 0x91C967F4D8B6CA03) >> v2) ^ v1;
  v25 = *(v6 + (((v3 ^ 0xDFE1E730) + 1924276193 + (v4 | 0x403C3197)) & v5));
  v26 = (v25 + v8) ^ 0xC2AF3EAA3FF1B8E4;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (v28 + v27 - ((2 * (v28 + v27)) & 0x5DB63E01F468DEEELL) - 0x5124E0FF05CB9089) ^ 0xCB294BDDE2B9DB8BLL;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x6FF046966119128DLL;
  v32 = __ROR8__(v31, 8);
  v33 = v31 ^ __ROR8__(v30, 61);
  v34 = (((2 * ((v32 + v33) ^ 0xCAA58174F9FE3D1CLL)) | 0x5EA84CE77A10FF4) - ((v32 + v33) ^ 0xCAA58174F9FE3D1CLL) - 0x2F542673BD087FALL) ^ 0x69E25ED61558A9CDLL;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = __ROR8__((v36 + v35 - ((2 * (v36 + v35)) & 0x778200195D241436) + 0x3BC1000CAE920A1BLL) ^ 0xD4C5204D5B7742F7, 8);
  v38 = (v36 + v35 - ((2 * (v36 + v35)) & 0x778200195D241436) + 0x3BC1000CAE920A1BLL) ^ 0xD4C5204D5B7742F7 ^ __ROR8__(v35, 61);
  v39 = (v37 + v38) ^ 0xD8C7B31FCA19D9DELL;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (((2 * (v41 + v40)) & 0x7E0064B3462236B6) - (v41 + v40) + 0x40FFCDA65CEEE4A4) ^ 0x14AACC88D65F272BLL;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = __ROR8__(v42, 8);
  *(STACK[0x8070] + 955) ^= v1 ^ (((((2 * (v44 + v43)) | 0x9407A2850DC176B8) - (v44 + v43) + 0x35FC2EBD791F44A4) ^ 0xA54CB1FE88E2E5BCLL) >> v2);
  v45 = *(v0 + 3920) + 15;
  *(v0 + 296) = v45;
  v46 = STACK[0x57D8];
  v47 = *(STACK[0x57D8] + 8 * (STACK[0x4D40] ^ 0x157C));
  *(v0 + 2136) = v45;
  *(v0 + 280) = v47;
  return (*(v46 + 8 * (STACK[0x51B8] + 8890)))();
}

uint64_t sub_10012480C()
{
  v1 = STACK[0x57D8];
  STACK[0xCB60] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 - 17982 + 643 * (v0 ^ 0xCEE))))();
}

uint64_t sub_10012495C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 0x683CBC57EAB92A36);
  STACK[0xA1C8] = 0;
  LODWORD(STACK[0x769C]) = -769884012;
  STACK[0xAC58] = 0;
  return (*(STACK[0x57D8] + 8 * (((v2 == 0x308E083E0C524CBELL) * (((v1 - 15449) ^ 0x5F7D) - 22611)) | v1)))();
}

uint64_t sub_1001249E4(char a1, uint64_t a2, char a3, int a4, uint64_t a5, uint64_t a6, unint64_t a7, char a8)
{
  STACK[0x4410] = a7;
  LODWORD(STACK[0x4378]) = LODWORD(STACK[0x5410]) | LODWORD(STACK[0x5540]);
  LODWORD(STACK[0x47B0]) = LODWORD(STACK[0x5408]) | LODWORD(STACK[0x5440]);
  LODWORD(STACK[0x43D0]) = LODWORD(STACK[0x53F0]) | LODWORD(STACK[0x53B8]);
  LODWORD(STACK[0x4310]) = LODWORD(STACK[0x53E0]) | LODWORD(STACK[0x5398]);
  LODWORD(STACK[0x43E0]) = LODWORD(STACK[0x53D8]) | LODWORD(STACK[0x53A8]);
  LODWORD(STACK[0x4828]) = LODWORD(STACK[0x53D0]) | LODWORD(STACK[0x53A0]);
  v17 = v11 & 0x6E ^ 0x7D;
  v18 = a3 & 0x36 | 0xC1;
  v19 = (a3 ^ v8) & (2 * ((a3 ^ v8) & (2 * ((a3 ^ v8) & (2 * ((a3 ^ v8) & (2 * ((a3 ^ v8) & (2 * (((2 * (a3 & 0x36)) | 2) & a3 ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18;
  v20 = (v12 & 0xFFFFFFB4 | 0x4A) ^ v12 & 0xFC;
  LODWORD(STACK[0x5440]) = v12 ^ (2 * ((v12 ^ v8) & (2 * ((v12 ^ v8) & (2 * ((v12 ^ v8) & (2 * ((v12 ^ v8) & (2 * ((v12 ^ v8) & (2 * v20) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20));
  v21 = (((v11 ^ (2 * ((v11 ^ v8) & (2 * ((v11 ^ v8) & (2 * ((v11 ^ v8) & (2 * ((v11 ^ v8) & (2 * ((v11 ^ v8) & (2 * (v17 ^ v11 & v13)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17))) ^ 0x6E) << 8) | (((a3 ^ (2 * v19)) ^ 0x36) << 16);
  v22 = v10 & v9 ^ a8;
  v23 = (((v10 ^ (2 * ((v10 ^ v8) & (2 * ((v10 ^ v8) & (2 * ((v10 ^ v8) & (2 * ((v10 ^ v8) & (2 * ((v10 ^ v8) & (2 * (v22 ^ v10 & v13)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22))) ^ 0x2A3CFF) & ~v21 | v21 & 0xD5C300) << 8;
  LODWORD(STACK[0x53F0]) = v23 ^ 0x910022FF;
  LODWORD(STACK[0x5540]) = v23 & 0x6EEF1D00;
  LOBYTE(v23) = v15 & 8 ^ 0xEA;
  v24 = v16 & 0x64 ^ 0xF8;
  v25 = (((v16 ^ (2 * ((v16 ^ v8) & (2 * ((v16 ^ v8) & (2 * ((v16 ^ v8) & (2 * ((v16 ^ v8) & (2 * v24) ^ v24)) ^ v24)) ^ v24)) ^ v24))) ^ 0x64) << 16) | (((v15 ^ (2 * ((v15 ^ v8) & (2 * ((v15 ^ v8) & (2 * ((v15 ^ v8) & (2 * ((v15 ^ v8) & (2 * ((v15 ^ v8) & (2 * v23) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23))) ^ 8) << 8);
  LOBYTE(v23) = v14 & 0xC8 ^ 0x8A;
  v26 = (((v14 ^ (2 * ((v14 ^ v8) & (2 * ((v14 ^ v8) & (2 * ((v14 ^ v8) & (2 * ((v14 ^ v8) & (2 * ((v14 ^ v8) & (2 * v23) | v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23))) ^ 0x9F251C) & (v25 ^ 0x9F67FF) | v25 & 0x60DA00) << 8;
  LODWORD(STACK[0x53D8]) = v26 ^ 0x208803FF;
  LODWORD(STACK[0x5140]) = v26 & 0x4852F800;
  v27 = STACK[0x56F0];
  v28 = *(STACK[0x56F0] + 418);
  v29 = STACK[0x57B0];
  v30 = *(STACK[0x57B0] + 1343);
  v31 = *(STACK[0x5630] + 3050);
  LOBYTE(v26) = v31 & 0xFE ^ 0x25;
  v32 = (v30 & 0xB4 | 8) ^ v30 & 0x70;
  v33 = (((v30 ^ (2 * ((v30 ^ v8) & (2 * ((v30 ^ v8) & (2 * ((v30 ^ v8) & (2 * ((v30 ^ v8) & (2 * ((v30 ^ v8) & (2 * v32) ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ v32))) ^ 0xC4) << 8) | (((v31 ^ (2 * ((v31 ^ v8) & (2 * ((v31 ^ v8) & (2 * ((v31 ^ v8) & (2 * ((v31 ^ v8) & (2 * ((v31 ^ v8) & (2 * ((v31 ^ v8) & (2 * v26) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26))) ^ 0xFE) << 16);
  v34 = v28 & 0x98 ^ 0x32;
  v35 = (((v28 ^ (2 * ((v28 ^ v8) & (2 * ((v28 ^ v8) & (2 * ((v28 ^ v8) & (2 * ((v28 ^ v8) & (2 * ((v28 ^ v8) & (2 * v34) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34))) ^ 0x382840) & ~v33 | v33 & 0xC7D700) << 8;
  LODWORD(STACK[0x53D0]) = v35 ^ 0x870400FF;
  LODWORD(STACK[0x5408]) = v35 & 0x50D36F00;
  v36 = STACK[0x5770];
  LOBYTE(v25) = *(STACK[0x5770] + 1859);
  LOBYTE(v33) = v25 & 0xDA ^ 0x93;
  v37 = (v25 ^ v8) & (2 * ((v25 ^ v8) & (2 * ((v25 ^ v8) & (2 * ((v25 ^ v8) & (2 * ((v25 ^ v8) & (2 * (v33 ^ v25 & v9)) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33;
  v38 = STACK[0x5750];
  LOBYTE(v33) = *(STACK[0x5750] + 2974);
  v39 = v33 & 0x5E ^ 0x55;
  v40 = STACK[0x52E0];
  v41 = *(STACK[0x52E0] + 1032);
  v42 = (((v25 ^ (2 * v37)) ^ 0xDA) << 8) | (((v33 ^ (2 * ((v33 ^ v8) & (2 * ((v33 ^ v8) & (2 * ((v33 ^ v8) & (2 * ((v33 ^ v8) & (2 * ((v33 ^ v8) & (2 * (v39 ^ v33 & 0xAA)) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39))) ^ 0x5E) << 16);
  v43 = v41 & a1 ^ 0xDA;
  v44 = ((v41 ^ (2 * ((v41 ^ v8) & (2 * ((v41 ^ v8) & (2 * ((v41 ^ v8) & (2 * ((v41 ^ v8) & (2 * ((v41 ^ v8) & (2 * v43) ^ v43)) ^ v43)) ^ v43)) ^ v43)) ^ v43))) ^ 0xD6D4AA) & ~v42 | v42 & 0x292B00;
  LOBYTE(v35) = *(v29 + 683);
  LOBYTE(v42) = *(STACK[0x5770] + 3763);
  v45 = (v42 & 0xB4 | 0x49) ^ v42 & 0xF2;
  v46 = STACK[0x5720];
  v47 = *(STACK[0x5720] + 2147);
  v48 = (((v35 ^ (2 * (((2 * (((2 * (((2 * (((2 * (v35 ^ v8)) & 0x38 ^ 0x1C) & (v35 ^ v8))) ^ 0x1C) & (v35 ^ v8))) ^ 0x1C) & (v35 ^ v8))) ^ 0x5C) & (v35 ^ v8)))) ^ 0xDC) << 8) | (((v42 ^ (2 * ((v42 ^ v8) & (2 * ((v42 ^ v8) & (2 * ((v42 ^ v8) & (2 * ((v42 ^ v8) & (2 * ((v42 ^ v8) & (2 * ((v42 ^ v8) & (2 * v45) ^ v45)) ^ v45)) ^ v45)) ^ v45)) ^ v45)) ^ v45))) ^ 0x46) << 16);
  LOBYTE(v42) = v47 & 0x30 | 0xC6;
  v49 = ((v47 ^ (2 * ((v47 ^ v8) & (2 * ((v47 ^ v8) & (2 * ((v47 ^ v8) & (2 * ((v47 ^ v8) & (2 * ((v47 ^ v8) & (2 * v42) ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42))) ^ 0xFC8B87) & ~v48 | v48 & 0x37400;
  v50 = STACK[0x5760];
  LOBYTE(v48) = *(STACK[0x5760] + 1389);
  v51 = v48 & 0x74 ^ 0xE0;
  LOBYTE(v48) = v48 ^ (2 * ((v48 ^ v8) & (2 * ((v48 ^ v8) & (2 * ((v48 ^ v8) & (2 * ((v48 ^ v8) & (2 * v51) ^ v51)) ^ v51)) ^ v51)) ^ v51));
  LODWORD(STACK[0x53E0]) = (v49 << 8) & 0x63FC600;
  v52 = *(STACK[0x5780] + 3012);
  v53 = v52 & 0x5C ^ 0xD4;
  v54 = (v48 << 16) | (((v52 ^ (2 * ((v52 ^ v8) & (2 * ((v52 ^ v8) & (2 * ((v52 ^ v8) & (2 * ((v52 ^ v8) & (2 * v53) ^ v53)) ^ v53)) ^ v53)) ^ v53))) ^ 0x5C) << 8);
  v55 = *(v27 + 380);
  v56 = ~v55 & 0x4C;
  LODWORD(v27) = (v54 ^ 0xC17FFF) & ((v55 ^ (2 * ((v55 ^ v8) & (2 * ((v55 ^ v8) & (2 * ((v55 ^ v8) & (2 * ((v55 ^ v8) & (2 * v56) ^ v56)) ^ v56)) ^ v56)) ^ v56))) ^ 0x357D03) | v54 & 0xCA8200;
  LOBYTE(v54) = *(v36 + 2716);
  v57 = v54 & 0x84 | a1;
  v58 = v54 ^ (2 * ((v54 ^ v8) & (2 * ((v54 ^ v8) & (2 * ((v54 ^ v8) & (2 * ((v54 ^ v8) & (2 * ((v54 ^ v8) & (2 * v57) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57));
  LOBYTE(v54) = *(v36 + 812);
  v59 = (v54 & 0xB4 | 0x43) ^ v54 & 0x8E;
  v60 = *(v50 + 1404);
  v61 = v60 & 0x92 ^ 0x37;
  v62 = (((v60 ^ (2 * ((v60 ^ v8) & (2 * ((v60 ^ v8) & (2 * ((v60 ^ v8) & (2 * ((v60 ^ v8) & (2 * ((v60 ^ v8) & (2 * (v61 ^ v60 & 0x26)) ^ v61)) ^ v61)) ^ v61)) ^ v61)) ^ v61))) ^ 0x92) << 8) | (((v54 ^ (2 * ((v54 ^ v8) & (2 * ((v54 ^ v8) & (2 * ((v54 ^ v8) & (2 * ((v54 ^ v8) & (2 * ((v54 ^ v8) & (2 * (v54 & (2 * v59) ^ v59)) ^ v59)) ^ v59)) ^ v59)) ^ v59)) ^ v59))) ^ 0x3A) << 16);
  LOBYTE(v54) = *(STACK[0x5700] + 501);
  v63 = v54 & 0xA8 ^ 0x9A;
  LODWORD(STACK[0x53B8]) = ((((v54 ^ (2 * ((v54 ^ v8) & (2 * ((v54 ^ v8) & (2 * ((v54 ^ v8) & (2 * ((v54 ^ v8) & (2 * ((v54 ^ v8) & (2 * v63) ^ v63)) ^ v63)) ^ v63)) ^ v63)) ^ v63))) ^ 0x46820D) & ~v62 | v62 & 0xB97D00) << 8) & 0x6A6DD500;
  v64 = *(v36 + 8);
  v65 = v64 & 0x22 ^ 0x5F;
  v66 = *(v29 + 2701);
  LOBYTE(v26) = v66 & 0xB4 | 9;
  v67 = v26 ^ v66 & 0x72;
  v68 = (((v64 ^ (2 * ((v64 ^ v8) & (2 * ((v64 ^ v8) & (2 * ((v64 ^ v8) & (2 * ((v64 ^ v8) & (2 * ((v64 ^ v8) & (2 * ((v64 ^ v8) & 0x16 ^ v65)) ^ v65)) ^ v65)) ^ v65)) ^ v65)) ^ v65))) ^ 0x22) << 16) | (((v66 ^ (2 * ((v66 ^ v8) & (2 * ((v66 ^ v8) & (2 * ((v66 ^ v8) & (2 * ((v66 ^ v8) & (2 * ((v66 ^ v8) & (2 * ((v66 ^ v8) & (2 * v26) ^ v67)) ^ v67)) ^ v67)) ^ v67)) ^ v67)) ^ v67))) ^ 0xC6) << 8);
  LOBYTE(v26) = *(STACK[0x5580] + 1169);
  v69 = v26 & 0x82 ^ 0xAF;
  v70 = ((v26 ^ (2 * ((v26 ^ v8) & (2 * ((v26 ^ v8) & (2 * ((v26 ^ v8) & (2 * ((v26 ^ v8) & (2 * ((v26 ^ v8) & (2 * ((v26 ^ v8) & 0x36 ^ v69)) ^ v69)) ^ v69)) ^ v69)) ^ v69)) ^ v69))) ^ 0xA92811) & ~v68 | v68 & 0x56D700;
  v71 = *(v38 + 2261);
  v72 = v71 & 0x78 ^ 0x62;
  v73 = v71 ^ (2 * ((v71 ^ v8) & (2 * ((v71 ^ v8) & (2 * ((v71 ^ v8) & (2 * ((v71 ^ v8) & (2 * ((v71 ^ v8) & (2 * v72) ^ v72)) ^ v72)) ^ v72)) ^ v72)) ^ v72));
  v74 = *(STACK[0x55B0] + 1495);
  v75 = v74 & 0x32 ^ 0xC7;
  v76 = (v74 ^ (2 * ((v74 ^ v8) & (2 * ((v74 ^ v8) & (2 * ((v74 ^ v8) & (2 * ((v74 ^ v8) & (2 * ((v74 ^ v8) & (2 * (v75 ^ v74 & 6)) ^ v75)) ^ v75)) ^ v75)) ^ v75)) ^ v75))) << 8;
  LODWORD(STACK[0x53B0]) = ((((v76 & 0xFF00FFFF | (v73 << 16)) ^ 0x784FF) & (v73 ^ 0x2F9603) | v76 & 0x6900 | (v73 << 16) & 0xD06900) << 8) & 0x828AA300;
  v77 = *(STACK[0x56D0] + 1753);
  LOBYTE(v36) = v77 & 0x36 | 0xC1;
  v78 = v76 & 0xFF00FFFF | (((v77 ^ (2 * ((v77 ^ v8) & (2 * ((v77 ^ v8) & (2 * ((v77 ^ v8) & (2 * ((v77 ^ v8) & (2 * ((v77 ^ v8) & (2 * (((2 * (v77 & 0x36)) | 2) & v77 ^ v36)) ^ v36)) ^ v36)) ^ v36)) ^ v36)) ^ v36))) ^ 0x36) << 16);
  LOBYTE(v29) = *(v40 + 1328);
  LOBYTE(v20) = v29 & 8 ^ 0xEA;
  LODWORD(v29) = (v78 ^ 0xB308FF) & ((v29 ^ (2 * ((v29 ^ v8) & (2 * ((v29 ^ v8) & (2 * ((v29 ^ v8) & (2 * ((v29 ^ v8) & (2 * ((v29 ^ v8) & (2 * v20) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20))) ^ 0xB31802) | v78 & 0x4CE700;
  LOBYTE(v20) = *(v46 + 2496);
  LOBYTE(v78) = v20 & 0x7A ^ 0xE3;
  LODWORD(STACK[0x5290]) = LODWORD(STACK[0x54C0]);
  LODWORD(STACK[0x53C8]) = (v44 << 8) & 0x1B0A1100;
  LODWORD(STACK[0x5410]) = (v27 << 8) & 0xDD6BB900;
  LODWORD(STACK[0x53C0]) = (v70 << 8) & 0xCCE20800;
  LODWORD(STACK[0x54C0]) = (v29 << 8) & 0x1CFFCC00;
  return (*(STACK[0x57D8] + 8 * a4))(0x3BCBADC7F10D149, v58, (v20 ^ (2 * ((v20 ^ v8) & (2 * ((v20 ^ v8) & (2 * ((v20 ^ v8) & (2 * ((v20 ^ v8) & (2 * ((v20 ^ v8) & (2 * (v78 ^ v20 & 0xE)) ^ v78)) ^ v78)) ^ v78)) ^ v78)) ^ v78))));
}

uint64_t sub_1001259D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = a4[24];
  a4[24] = a4[27];
  a4[27] = v5;
  v6 = a4[25];
  a4[25] = a4[26];
  a4[26] = v6;
  v7 = a4[28];
  a4[28] = a4[31];
  a4[31] = v7;
  v8 = a4[29];
  a4[29] = a4[30];
  a4[30] = v8;
  v9 = a4[32];
  a4[32] = a4[35];
  a4[35] = v9;
  v10 = a4[33];
  a4[33] = a4[34];
  a4[34] = v10;
  v11 = a4[36];
  a4[36] = a4[39];
  a4[39] = v11;
  v12 = a4[37];
  a4[37] = a4[38];
  a4[38] = v12;
  v13 = a4[40];
  a4[40] = a4[43];
  a4[43] = v13;
  v14 = a4[41];
  a4[41] = a4[42];
  a4[42] = v14;
  v15 = a4[44];
  a4[44] = a4[47];
  a4[47] = v15;
  v16 = a4[45];
  a4[45] = a4[46];
  a4[46] = v16;
  v17 = a4[48];
  a4[48] = a4[51];
  a4[51] = v17;
  v18 = a4[49];
  a4[49] = a4[50];
  a4[50] = v18;
  v19 = a4[52];
  a4[52] = a4[55];
  a4[55] = v19;
  v20 = a4[53];
  a4[53] = a4[54];
  a4[54] = v20;
  v21 = a4[56];
  a4[56] = a4[59];
  a4[59] = v21;
  v22 = a4[57];
  a4[57] = a4[58];
  a4[58] = v22;
  v23 = a4[60];
  a4[60] = a4[63];
  a4[63] = v23;
  v24 = a4[61];
  a4[61] = a4[62];
  a4[62] = v24;
  v25 = a4[64];
  a4[64] = a4[67];
  a4[67] = v25;
  v26 = a4[65];
  a4[65] = a4[66];
  a4[66] = v26;
  v27 = a4[68];
  a4[68] = a4[71];
  a4[71] = v27;
  v28 = a4[69];
  a4[69] = a4[70];
  a4[70] = v28;
  v29 = a4[72];
  a4[72] = a4[75];
  a4[75] = v29;
  v30 = a4[73];
  a4[73] = a4[74];
  a4[74] = v30;
  v31 = a4[76];
  a4[76] = a4[79];
  a4[79] = v31;
  v32 = a4[77];
  a4[77] = a4[78];
  a4[78] = v32;
  v33 = STACK[0x9840];
  v34 = *(STACK[0x9840] + 16);
  v35 = *(STACK[0x9840] + 20);
  *(v33 + 80) = HIBYTE(v34);
  *(v33 + 81) = BYTE2(v34);
  *(v33 + 82) = v34 >> (((v4 - 24) & 0xFC) - 52);
  *(v33 + 83) = v34;
  *(v33 + 84) = bswap32(v35);
  v36 = STACK[0x57D8];
  STACK[0x8C70] = *(STACK[0x57D8] + 8 * v4);
  return (*(v36 + 8 * ((53050 * ((v4 ^ 0xB6F85957) < 0x12897EF6)) ^ (v4 + 17590))))(a1, a2, a3, 2625273121);
}

uint64_t sub_100125C5C()
{
  v1 = STACK[0x57D8];
  STACK[0xD9E0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x18AE)))();
}

uint64_t sub_100125CB0()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x513C)))(LODWORD(STACK[0x57C0]));
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_100125CF0()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))(v1);
  return (*(v2 + 8 * (v0 - 14209)))(v3);
}

uint64_t sub_100125D20()
{
  v4 = ((*(v3 + 296) - *v1) & 0xFFFFFFFFFFFFFFF0) + *v2;
  v5 = (*(*v0 + 32 * *(v4 + 8) + 8))(*v4, &STACK[0xF03B], 1);
  *(v3 + 295) = *(v3 + 363);
  return (*(v3 + 280))(v5);
}

uint64_t sub_100125F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unint64_t a7, unsigned int a8)
{
  v10 = *(STACK[0xFE78] + a7 - 5896 * ((((a7 >> 3) * v9) >> 64) >> 4));
  v11 = *(STACK[0xFE70] + 4 * ((9046 * (v8 ^ 0x6CB9) + 2717 * (v10 | ((v10 < 0x1C) << 8)) + 10360848) % 0x2240));
  v12 = 3903 * (((v11 ^ 0x40717FC) - 1310009407) ^ ((v11 ^ 0xDA0CA8F2) + 1877043407) ^ ((v11 ^ 0xDE0BBFFF) + 1810268100)) + 1282319627;
  v13 = *(STACK[0xFE78] + 3903 * (BYTE1(v11) ^ 0x64) + 4008381 - 5896 * (((1456909 * (3903 * (BYTE1(v11) ^ 0x64u) + 4008381)) >> 32) >> 1));
  v14 = *(STACK[0xFE78] + (3903 * (((HIBYTE(v11) ^ 0x5F019953) + 941430034) ^ ((HIBYTE(v11) ^ 0xD22DBAF1) - 1255065932) ^ ((HIBYTE(v11) ^ 0x8D2C23EE) - 365908051)) - 201207540) % 0x1708);
  LOBYTE(v11) = *(STACK[0xFE78] + 3903 * (BYTE2(v11) ^ 0xC5) + 4008381 - 5896 * (((1456909 * (3903 * (BYTE2(v11) ^ 0xC5u) + 4008381)) >> 32) >> 1));
  v15 = *(STACK[0xFE78] + v12 % 0x1708);
  v16 = v14 & 0xFA ^ 0x8B;
  v17 = v11 & 0xE4 | 0xB;
  LOBYTE(v12) = (v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * (v16 ^ v14 & 0x1E)) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16;
  v18 = v17 ^ v11 & 0x1E;
  v19 = v14 ^ (2 * v12);
  LOBYTE(v12) = v13 & 0x40 ^ 0xF6;
  v20 = ((v19 ^ 0xFA) << 16) | (((v11 ^ (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * (v11 & (2 * v17) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18))) ^ 0xFA) << 8);
  v21 = ((v13 ^ (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & 0x2C ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12))) ^ 0x2D50E4) & ~v20;
  v22 = v20 & 0xD2AF00;
  LOBYTE(v20) = v15 & 0x78 ^ 0x4A;
  *(STACK[0xFE70] + 4 * (a8 % 0x2240)) = ((((v21 | v22) << 8) ^ 0xD29D7366) & ((v15 ^ (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * v20) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20))) ^ 0xFFFFFF8E) | (v15 ^ (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * v20) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20))) & 0x99) ^ 0xB308B38F;
  return (*(STACK[0x57D8] + 8 * ((5249 * (a6 == 0)) ^ v8)))();
}

uint64_t sub_1001262D8()
{
  STACK[0x57C0] = STACK[0xADF0] + 24;
  STACK[0x5790] = STACK[0x8BA0];
  return (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0xC74])))();
}

uint64_t sub_1001264D4()
{
  v2 = *(v0 + 295);
  v3 = *(v0 + 1768);
  v4 = v3 & 0xFFFFFFF8;
  v5 = *STACK[0x51F0];
  v6 = *STACK[0x51E8] & 0xFFFFFFF8;
  v7 = *(v5 + (v6 & ((v3 & 0xFFFFFFF8 ^ 0xF795DE30) - 1690674564 + ((2 * (v3 & 0xFFFFFFF8)) & 0xEF2BBC60))));
  v8 = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  *(v0 + 1776) = v2;
  v9 = (0x7FC30D0FDA2B9259 - ((v7 + v8) | 0x7FC30D0FDA2B9259) + ((v7 + v8) | 0x803CF2F025D46DA6)) ^ 0x4293CC5A1A25D542;
  v10 = v9 ^ __ROR8__(v7, 61);
  v11 = __ROR8__(v9, 8);
  v12 = (((2 * (v11 + v10)) & 0xE3AF3F3FC891438CLL) - (v11 + v10) + 0xE2860601BB75E39) ^ 0x6BDA34BD033AEAC5;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (0xC96364F03703FFA9 - ((v14 + v13) | 0xC96364F03703FFA9) + ((v14 + v13) | 0x369C9B0FC8FC0056)) ^ 0x596CDD99A9E512DBLL;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (v17 + v16 - ((2 * (v17 + v16)) & 0xEECA19DEC102928CLL) + 0x77650CEF60814946) ^ 0xD6D7912AB7F75A6DLL;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (((2 * (v20 + v19)) | 0x4DC4A766EBBB5B66) - (v20 + v19) + 0x591DAC4C8A22524DLL) ^ 0x49E673F28038E55FLL;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (((v23 + v22) & 0x91D0BFD0B7FC6C97 ^ 0x150A81010344404) + ((v23 + v22) & 0x6E2F402F48039368 ^ 0x6C2A000B00020361) - 1) ^ 0xB5BD1B04DA2F9EBALL;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0x5455012E8AB1C38FLL;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  LOBYTE(v3) = 8 * (v3 & 7);
  *(v0 + 1777) = ((0xD5DDA1B00C43E484 - ((v28 + v27) | 0xD5DDA1B00C43E484) + ((v28 + v27) | 0x2A225E4FF3BC1B7BLL)) ^ 0x456D3EF3FDBE459BLL) >> v3;
  v29 = *(v5 + (v6 & (v4 - 1831847764)));
  v30 = __ROR8__((v29 + v8) ^ 0xC2AF3EAA3FF1B8E4, 8);
  v31 = (v29 + v8) ^ 0xC2AF3EAA3FF1B8E4 ^ __ROR8__(v29, 61);
  v32 = (((2 * (v30 + v31)) & 0x89900D235E9BC158) - (v30 + v31) + 0x3B37F96E50B21F53) ^ 0x5EC5ADB3483FABAFLL;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (((2 * (v34 + v33)) | 0x748DEC8AA6F13D30) - (v34 + v33) + 0x45B909BAAC876168) ^ 0xD5B6B0D332618C15;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (((2 * (v37 + v36)) | 0x57AD356AFA46942ALL) - (v37 + v36) - 0x2BD69AB57D234A15) ^ 0x8A640770AA55593ELL;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ v1;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ 0xD8C7B31FCA19D9DELL;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0x5455012E8AB1C38FLL;
  *(STACK[0x8070] + 12699) = v2 ^ *(v0 + 1767) ^ (((__ROR8__(v44, 8) + (v44 ^ __ROR8__(v43, 61))) ^ 0x6F4F60BC0E025EE0uLL) >> v3);
  v45 = *(v0 + 3920) + 1;
  *(v0 + 296) = v45;
  v46 = STACK[0x57D8];
  v47 = *(STACK[0x57D8] + 8 * (STACK[0x51B8] + 8975));
  *(v0 + 1944) = v45;
  *(v0 + 280) = v47;
  return (*(v46 + 8 * (LODWORD(STACK[0x4D50]) ^ 0x7B10)))();
}

uint64_t sub_1001269BC()
{
  LODWORD(STACK[0xE46C]) = v1;
  LODWORD(STACK[0xE468]) = v0;
  return (*(STACK[0x57D8] + 8 * ((v2 - 22614) ^ 0x6C03 ^ (((STACK[0xE467] & 1) == 0) * (((v2 - 15956) | 0x40) - 6701)))))();
}

uint64_t sub_100126A1C()
{
  v6 = *(v0 + 464) ^ 0xF585F11 ^ *(*v1 + (*v4 & 0x4D1C521C)) & 0x7FFFFFFFu;
  v7 = STACK[0xCA4];
  v8 = 1534937323 * ((~v2 & 0xB096619F22C3CD3CLL | v2 & 0x4F699E60DD3C32C3) ^ 0x7DEEE95DE42D367BLL);
  *(v3 + 616) = v8 + 1348839764;
  *(v3 + 600) = v7 - v8 - 1757;
  *(v3 + 592) = v6 ^ v8;
  *(v3 + 624) = (v7 ^ 0x14) + v8;
  v9 = STACK[0x51B8];
  *(v3 + 604) = v8 + 1451493860 + STACK[0x51B8];
  *(v3 + 608) = v8;
  *(v3 + 612) = v7 ^ v8;
  v10 = STACK[0x57D8];
  v11 = (*(STACK[0x57D8] + 8 * (v9 ^ 0x2462)))(v5 - 240);
  return (*(v10 + 8 * *(v3 + 628)))(v11);
}

uint64_t sub_100126CE8@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W4>, int a4@<W5>, int a5@<W6>, int a6@<W7>, int a7@<W8>)
{
  LODWORD(STACK[0x4368]) = LODWORD(STACK[0x55E0]) | LODWORD(STACK[0x5790]);
  LODWORD(STACK[0x51B0]) = STACK[0x5168] & (LODWORD(STACK[0x51B0]) ^ 0x9A2B91A0);
  LODWORD(STACK[0x47F8]) = STACK[0x50D8] & (a3 ^ 0x32D2055C);
  LODWORD(STACK[0x4F48]) = (v7 ^ 0x36ED9E61 ^ ((v9 - 23123) | 0x3800)) & STACK[0x5098];
  LODWORD(STACK[0x47B8]) = v18 & (LODWORD(STACK[0x5050]) ^ 0x1671B1F0);
  LODWORD(STACK[0x5270]) = STACK[0x4F58] & (v17 ^ 0x446DBB87);
  LODWORD(STACK[0x47A0]) = STACK[0x4F08] & (v12 ^ 0x770DC211);
  LODWORD(STACK[0x4F00]) = STACK[0x4EF8] & (v14 ^ 0x42C621D5);
  LODWORD(STACK[0x4798]) = STACK[0x4ED0] & (a5 ^ 0x40E75260);
  v19 = *(v8 + 4000);
  v20 = LODWORD(STACK[0x4EA0]);
  LODWORD(STACK[0x50D8]) = STACK[0x4E98] & (LODWORD(STACK[0x4EB8]) ^ 0x8BAB356E);
  LODWORD(STACK[0x4790]) = STACK[0x4E90] & (v20 ^ 0xB57D3E7F);
  LODWORD(STACK[0x4EF8]) = STACK[0x4E78] & (LODWORD(STACK[0x4E80]) ^ 0x2CAE60D3);
  LODWORD(STACK[0x4788]) = STACK[0x4E70] & (v16 ^ 0xD324E99F);
  LODWORD(STACK[0x5168]) = STACK[0x4E68] & (v15 ^ 0xE17CD984);
  LODWORD(STACK[0x4778]) = v11 & (v13 ^ 0x32F5F3C8);
  LODWORD(STACK[0x4ED0]) = a1 & (a6 ^ 0x385ECED6);
  LODWORD(STACK[0x4770]) = a7 & (a2 ^ 0xBFD3E39F);
  LODWORD(STACK[0x5098]) = a4 & (v10 ^ 0xF1B783E8);
  v21 = *(STACK[0x57D8] + 8 * v9);
  STACK[0x4F58] = (v19 + 39657);
  STACK[0x5400] = (v19 + 38076);
  LODWORD(STACK[0x4D58]) = *STACK[0x5410];
  LODWORD(STACK[0x47A8]) = *STACK[0x4FE0];
  LODWORD(STACK[0x47B0]) = *STACK[0x57A0];
  LODWORD(STACK[0x4D98]) = *STACK[0x52B8];
  LODWORD(STACK[0x4A80]) = *STACK[0x4F38];
  LODWORD(STACK[0x4A88]) = *STACK[0x4FD8];
  STACK[0x4F50] = (v19 + 38078);
  LODWORD(STACK[0x4DD0]) = v19[38078];
  LODWORD(STACK[0x4DB0]) = *STACK[0x5770];
  LODWORD(STACK[0x4BA0]) = *STACK[0x5430];
  LODWORD(STACK[0x4B58]) = *STACK[0x5048];
  LODWORD(STACK[0x4B90]) = *STACK[0x5088];
  STACK[0x55E0] = (v19 + 40900);
  LODWORD(STACK[0x4A90]) = v19[40900];
  LODWORD(STACK[0x4B08]) = *STACK[0x5228];
  LODWORD(STACK[0x4B68]) = *STACK[0x4AD0];
  LODWORD(STACK[0x4B78]) = *STACK[0x5390];
  LODWORD(STACK[0x4B50]) = *STACK[0x5460];
  LODWORD(STACK[0x4E24]) = *STACK[0x5580];
  STACK[0x4F08] = (v19 + 37497);
  LODWORD(STACK[0x4B70]) = v19[37497];
  LODWORD(STACK[0x4B60]) = *STACK[0x50F0];
  LODWORD(STACK[0x4DD8]) = *STACK[0x5450];
  LODWORD(STACK[0x4B80]) = *STACK[0x5120];
  LODWORD(STACK[0x4B98]) = *STACK[0x56D0];
  STACK[0x5050] = (v19 + 38326);
  LODWORD(STACK[0x4B88]) = v19[38326];
  LODWORD(STACK[0x4BA8]) = *STACK[0x4FE8];
  LODWORD(STACK[0x4DA8]) = *STACK[0x5038];
  LODWORD(STACK[0x4DA0]) = *STACK[0x5500];
  LODWORD(STACK[0x4C68]) = *STACK[0x5100];
  LODWORD(STACK[0x4DB8]) = *STACK[0x5018];
  STACK[0x5790] = (v19 + 35835);
  LODWORD(STACK[0x4DC0]) = v19[35835];
  LODWORD(STACK[0x4DC8]) = *STACK[0x4FC0];
  LODWORD(STACK[0x4DE0]) = *STACK[0x5340];
  LODWORD(STACK[0x4DE8]) = *STACK[0x5318];
  LODWORD(STACK[0x4DF8]) = *STACK[0x4FF0];
  LODWORD(STACK[0x4DF0]) = *STACK[0x5660];
  LODWORD(STACK[0x4E34]) = *STACK[0x4FA8];
  LODWORD(STACK[0x4E18]) = *STACK[0x5258];
  LODWORD(STACK[0x4E08]) = *STACK[0x5760];
  LODWORD(STACK[0x4E10]) = *STACK[0x4AF0];
  LODWORD(STACK[0x4E44]) = *STACK[0x5350];
  LODWORD(STACK[0x4E38]) = *STACK[0x5358];
  LODWORD(STACK[0x4E50]) = *STACK[0x5388];
  LODWORD(STACK[0x4E70]) = *STACK[0x5308];
  LODWORD(STACK[0x4E68]) = *STACK[0x5220];
  LODWORD(STACK[0x4E78]) = *STACK[0x52D8];
  LODWORD(STACK[0x4E98]) = *STACK[0x51D8];
  LODWORD(STACK[0x4E90]) = *STACK[0x50E0];
  LODWORD(STACK[0x4E80]) = *STACK[0x5040];
  LODWORD(STACK[0x4EA0]) = *STACK[0x5010];
  LODWORD(STACK[0x4EB8]) = *STACK[0x51C0];
  LODWORD(STACK[0x4EC0]) = *STACK[0x4F28];
  return v21(0);
}

uint64_t sub_100127338()
{
  v4 = *(v1 + 3056);
  v5 = STACK[0x51E8];
  v6 = STACK[0x51F0];
  v7 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v4 & 0xFFFFFFF8) - 1831847764)) & 0xFFFFFFFFFFFFFFF8));
  v8 = (v7 + __ROR8__(v4 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xC2AF3EAA3FF1B8E4;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = __ROR8__(v8, 8);
  v11 = (0x25C805D35E13C572 - ((v10 + v9) | 0x25C805D35E13C572) + ((v10 + v9) | 0xDA37FA2CA1EC3A8DLL)) ^ 0xBFC5AEF1B9618E71;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = __ROR8__(v11, 8);
  v14 = (((2 * ((v13 + v12) ^ 0x7AE33DE01BF4FFC5)) | 0x6556287555E652A4) - ((v13 + v12) ^ 0x7AE33DE01BF4FFC5) - 0x32AB143AAAF32952) ^ 0x27B86F4CD01EC41ALL;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (v16 + v15 - ((2 * (v16 + v15)) & 0xB660DFE99A7684) - 0x7FA4CF900B32C4BELL) ^ 0x21E9ADAA23BB2869;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ v2;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0xD8C7B31FCA19D9DELL;
  v22 = __ROR8__(v21, 8);
  v23 = v21 ^ __ROR8__(v20, 61);
  v24 = (v22 + v23) ^ 0x5455012E8AB1C38FLL;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  LODWORD(v4) = (7806 * ((((((2 * (v26 + v25)) | 0xC8A8BD8BF4F5C670) - (v26 + v25) + 0x1BABA13A05851CC8) ^ 0x8B1B3E79F478BDD8) >> (8 * (v4 & 7u))) ^ *(v1 + 295)) + 8016762) >> 1;
  v27 = *(v1 + 4008);
  LOBYTE(v22) = *(v27 + v4 - 5896 * (((1456909 * v4) >> 32) >> 1));
  v28 = *(v1 + 4000);
  v28[40955] = v22;
  v29 = *(v1 + 3976);
  v30 = *(v29 + 13);
  v29 += 13;
  v31 = __ROR8__(v29 & 0xFFFFFFFFFFFFFFF8, 8);
  v32 = -2 - (((0x824D863E123F42 - v31) | 0xF7C0F086BF0A53DELL) + ((v31 - 0x70824D863E123F43) | 0x83F0F7940F5AC21));
  v33 = v32 ^ 0x24471B91461BACA8;
  v32 ^= 0x5FAA885F4975A944uLL;
  v34 = (__ROR8__(v33, 8) + v32) ^ 0x3A7C64F71FBFC65BLL;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0xFBC18F8B9568C440;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0x4AE5CE6F63977933;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0x2854CB5A8BDB8317;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ 0xF7721CC6F3AEFBDCLL;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = __ROR8__(v42, 8);
  v45 = (((v44 + v43) ^ 0xD34D41C93DCB12DCLL) - ((2 * ((v44 + v43) ^ 0xD34D41C93DCB12DCLL)) & 0x4958CBAEA065D648) + 0x24AC65D75032EB24) ^ 0x11563324F6D249A5;
  v46 = (((__ROR8__(v45, 8) + (v45 ^ __ROR8__(v43, 61))) ^ 0x94AC86FF716F8E22) >> (8 * (v29 & 7u))) ^ v30;
  v28[39626] = *(v27 + 3903 * v46 + 4008381 - 5896 * (((1456909 * (3903 * v46 + 4008381)) >> 32) >> 1));
  v47 = *(v1 + 3752) - 0x30BDFED8F32E6723;
  v48 = *(*v6 + ((((*(v1 + 3752) + 215062749) & 0x8CD09B78) + ((*(v1 + 3752) + 215062749) & 0x732F6480 | 0x8CD09B7E) + 1376657002) & *v5));
  v49 = (v48 + __ROR8__(v47 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0x91364DCB68334DBLL;
  v50 = __ROR8__(v49, 8);
  v51 = v49 ^ __ROR8__(v48, 61);
  v52 = (((2 * (v50 + v51)) | 0x694A6A7341599B7CLL) - (v50 + v51) + 0x4B5ACAC65F533242) ^ 0xF0285A5507BD15EBLL;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = __ROR8__(v52, 8);
  v55 = (0x18F16CED8CCF0025 - ((v54 + v53) | 0x18F16CED8CCF0025) + ((v54 + v53) | 0xE70E93127330FFDALL)) ^ 0x12FC6DC17B9ADDA2;
  v56 = v55 ^ __ROR8__(v53, 61);
  v57 = __ROR8__(v55, 8);
  v58 = (v57 + v56 - ((2 * (v57 + v56)) & 0xADDB51A7C8EBAF78) + 0x56EDA8D3E475D7BCLL) ^ 0x31BEC6131FFE8321;
  v59 = v58 ^ __ROR8__(v56, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ v3;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = __ROR8__(v60, 8);
  v63 = (v62 + v61 - ((2 * (v62 + v61)) & 0x32994494212D3FC0) - 0x66B35DB5EF696020) ^ 0xBD3FE92FB1761BB9;
  v64 = v63 ^ __ROR8__(v61, 61);
  v65 = __ROR8__(v63, 8);
  LODWORD(v29) = 3903 * ((((__ROR8__((v65 + v64 - ((2 * (v65 + v64)) & 0x5A724AA274008ABALL) + 0x2D3925513A00455DLL) ^ 0x6DF0EABB06C58EBCLL, 8) + ((v65 + v64 - ((2 * (v65 + v64)) & 0x5A724AA274008ABALL) + 0x2D3925513A00455DLL) ^ 0x6DF0EABB06C58EBCLL ^ __ROR8__(v64, 61))) ^ 0x6F635C2EE5D7D2C6) >> (8 * (v47 & 7u))) ^ *v47) + 4008381;
  v66 = *(v27 + v29 - 5896 * (((1456909 * v29) >> 32) >> 1));
  v28[40041] = *(v1 + 2794);
  *(*(v1 + 4000) + 40124) = *(v1 + 2798);
  *(*(v1 + 4000) + 39793) = v66;
  v67 = *(v1 + 3984) + 10;
  *(v1 + 296) = v67;
  v68 = STACK[0x57D8];
  v69 = *(STACK[0x57D8] + 8 * (LODWORD(STACK[0x4D50]) + 31710));
  *(v1 + 3064) = v67;
  *(v1 + 280) = v69;
  return (*(v68 + 8 * (v0 + 8890)))();
}

uint64_t sub_100127A10@<X0>(int a1@<W1>, int a2@<W5>, unsigned __int8 a3@<W8>)
{
  LODWORD(STACK[0x43F0]) = LODWORD(STACK[0x5640]) | LODWORD(STACK[0x53B0]);
  LODWORD(STACK[0x40D0]) = LODWORD(STACK[0x5530]) | LODWORD(STACK[0x53B8]);
  LODWORD(STACK[0x43E8]) = LODWORD(STACK[0x5520]) | LODWORD(STACK[0x5410]);
  LODWORD(STACK[0x42E4]) = LODWORD(STACK[0x5510]) | LODWORD(STACK[0x53C0]);
  LODWORD(STACK[0x53C0]) = v5 & (a3 ^ 0xE1103FEF);
  LODWORD(STACK[0x5400]) = a1 & (v6 ^ 0x648BB3AF);
  LODWORD(STACK[0x53B8]) = v4 & (v3 ^ 0xD0E82F96);
  LODWORD(STACK[0x5410]) = v8 & (v7 ^ 0x158E0A77);
  return (*(STACK[0x57D8] + 8 * a2))(STACK[0x5470]);
}

uint64_t sub_100127B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = *(STACK[0x3AC0] + 8 * (LODWORD(STACK[0x3560]) + 1997));
  v9 = STACK[0x2810];
  STACK[0x3908] = a7;
  v10 = STACK[0x3A70];
  v11 = STACK[0x3AE8];
  STACK[0x3AB8] = STACK[0x2818];
  v12 = STACK[0x37D8];
  v13 = STACK[0x3A88];
  STACK[0x39F0] = STACK[0x27E0];
  STACK[0x3AA8] = STACK[0x27E8];
  STACK[0x3AB0] = STACK[0x27F0];
  STACK[0x39E8] = STACK[0x27F8];
  return v8(a1, v11, v10, v9, a5, v12, v13, v7);
}

uint64_t sub_100127BDC(int a1)
{
  LODWORD(STACK[0x3264]) = LODWORD(STACK[0x4E08]) | LODWORD(STACK[0x4E50]);
  LODWORD(STACK[0x3398]) = LODWORD(STACK[0x4DF8]) | LODWORD(STACK[0x4E18]);
  LODWORD(STACK[0x3388]) = LODWORD(STACK[0x4DE0]) | LODWORD(STACK[0x4DE8]);
  LODWORD(STACK[0x3268]) = LODWORD(STACK[0x4DD8]) | LODWORD(STACK[0x4BA8]);
  LODWORD(STACK[0x3390]) = LODWORD(STACK[0x4E38]) | LODWORD(STACK[0x4DC8]);
  v9 = v6 & 0x7C ^ 0x4C;
  v10 = v7 & 0x6C ^ 0x44;
  v11 = v7 ^ (2 * ((v7 ^ v2) & (2 * ((v7 ^ v2) & (2 * ((v7 ^ v2) & (2 * ((v7 ^ v2) & (2 * v10) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ 0x6C;
  v12 = v8 & 0xFC ^ 0xC;
  v13 = (((v6 ^ (2 * ((v6 ^ v2) & (2 * ((v6 ^ v2) & (2 * ((v6 ^ v2) & (2 * ((v6 ^ v2) & (2 * v9) ^ v9)) ^ v9)) ^ v9)) ^ v9))) ^ 0x7C) << 8) | (v11 << 16);
  LODWORD(STACK[0x32D0]) = ((((v8 ^ (2 * ((v8 ^ v2) & (2 * ((v8 ^ v2) & (2 * ((v8 ^ v2) & (2 * ((v8 ^ v2) & (2 * ((v8 ^ v2) & (2 * v12) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12))) ^ 0xB2A5C4) & (v13 ^ 0xB2F7FF) | v13 & 0x4D5A00) << 8) & 0x3B106600;
  v14 = v5 & 0xE2 ^ 7;
  v15 = (v5 ^ (2 * ((v5 ^ v2) & (2 * ((v5 ^ v2) & (2 * ((v5 ^ v2) & (2 * ((v5 ^ v2) & (2 * ((v5 ^ 0x44) & (2 * ((v5 ^ 0x44) & 6 ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14)));
  v16 = v1 & 0xFE ^ 0x8D;
  LODWORD(STACK[0x4E38]) = (v1 ^ (2 * ((v1 ^ v2) & (2 * ((v1 ^ v2) & (2 * ((v1 ^ v2) & (2 * ((v1 ^ v2) & (2 * ((v1 ^ v2) & (2 * ((v1 ^ v2) & (2 * v16) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16)));
  v17 = v3 & 4 | 0x90;
  v18 = v4 & 0xFC ^ 0x8C;
  v19 = (((v3 ^ (2 * ((v3 ^ v2) & (2 * ((v3 ^ v2) & (2 * ((v3 ^ v2) & (2 * ((v3 ^ v2) & (2 * ((v3 ^ v2) & (2 * v17) | v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17))) ^ 4) << 16) | (((v4 ^ (2 * ((v4 ^ v2) & (2 * ((v4 ^ v2) & (2 * ((v4 ^ v2) & (2 * ((v4 ^ v2) & (2 * ((v4 ^ v2) & (2 * v18) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18))) ^ 0xFC) << 8);
  LODWORD(STACK[0x4E50]) = (((v15 ^ 0xE0D2F8) & ~v19 | v19 & 0x1F2D00) << 8) & 0x85FD0B00;
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_1001280DC()
{
  STACK[0x1868] = 4;
  v3 = (*(v1 + 8 * (v0 + 1211103365)))(&STACK[0x1D55], &STACK[0x1320], &STACK[0x1868], 0, 0);
  v4 = 551690071 * ((((v2 - 240) | 0xC7FAC97E3061CC3) - (v2 - 240) + ((v2 - 240) & 0xF38053681CF9E338)) ^ 0x7DE2FE59ADEB4F94);
  *(v2 - 216) = v3 - v4;
  *(v2 - 208) = v4;
  *(v2 - 232) = ((v0 + 1880978699) ^ 0x25) - v4;
  *(v2 - 228) = v0 + 1880978699 - v4;
  *(v2 - 240) = (v0 + 132004596) ^ v4;
  *(v2 - 236) = (v0 + 1880977866) ^ v4;
  *(v2 - 224) = v4;
  v5 = (*(v1 + 8 * (v0 + 1211103414)))(v2 - 240);
  return (*(v1 + 8 * *(v2 - 220)))(v5);
}

uint64_t sub_100128420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, int a8)
{
  v12 = STACK[0x8EA];
  v13 = 311 * (a8 & 0xF) + 191576;
  LOBYTE(STACK[0x8EA]) = *(v11 + (v13 - ((a6 & 0x3C2 ^ 0x3C2) + (a6 & 0x3C2))) % ((a6 & 0x3C2 ^ 0x3C2) + (a6 & 0x3C2)));
  *(v11 + (v13 - 962 * ((4464623 * v13) >> 32))) = v12;
  v14 = STACK[0xA21];
  v15 = 311 * (a6 % 0xF) + 191887 - 962 * ((4464623 * (311 * (a6 % 0xF) + 191887)) >> 32);
  LOBYTE(STACK[0xA21]) = *(v11 + v15);
  *(v11 + v15) = v14;
  LOBYTE(v13) = STACK[0xB58];
  v16 = 311 * (v9 % 0xE) + 192198 - 962 * ((4464623 * (311 * (v9 % 0xE) + 192198)) >> 32);
  LOBYTE(STACK[0xB58]) = *(v11 + v16);
  *(v11 + v16) = v13;
  v17 = 311 * (v8 % 0xD) + 192509 - 962 * ((4464623 * (311 * (v8 % 0xD) + 192509)) >> 32);
  v18 = STACK[0x8CD];
  v19 = a8 ^ v8;
  LOBYTE(STACK[0x8CD]) = *(v11 + v17);
  v20 = v19 ^ a6;
  v21 = v19 - (v20 + 1011871991);
  *(v11 + v17) = v18;
  v22 = 311 * (v21 % 0xC) + 192820 - 962 * ((4464623 * (311 * (v21 % 0xC) + 192820)) >> 32);
  v23 = STACK[0xA04];
  LOBYTE(STACK[0xA04]) = *(v11 + v22);
  v24 = 311 * ((v20 + 1011871991) % 0xBu) + 193131 - 962 * ((4464623 * (311 * ((v20 + 1011871991) % 0xBu) + 193131)) >> 32);
  v25 = (v9 + 151511902) ^ 0x11994A3;
  *(v11 + v22) = v23;
  v26 = STACK[0xB3B];
  LOBYTE(STACK[0xB3B]) = *(v11 + v24);
  *(v11 + v24) = v26;
  v27 = v8 - v9 - 1768125733;
  v28 = 311 * (v25 % 0xA) + 193442 - 962 * ((4464623 * (311 * (v25 % 0xA) + 193442)) >> 32);
  LOBYTE(v15) = *(v11 + (((27 - v21 % 0xC) | 0xFFFFFFE8) ^ (2147483643 - v21 % 0xC) & 0x77B5B637 ^ 0x77B5B637) - 1227562294 + (v28 & 0x135) - (v28 | 0xB6D4E2CA) + 81);
  LOBYTE(STACK[0x8B0]) = *(v11 + v28);
  *(v11 + v28) = v15;
  v29 = v21 - 67395153;
  LOBYTE(v22) = STACK[0x9E7];
  v30 = 311 * (v27 % 9) + 193753 - 962 * ((4464623 * (311 * (v27 % 9) + 193753)) >> 32);
  LOBYTE(STACK[0x9E7]) = *(v11 + v30);
  *(v11 + v30) = v22;
  v31 = v19 - 1829036475 + v27;
  v32 = v25 + 2 * (v20 + 1305192975);
  v33 = 311 * ((v21 - 67395153) & 7) + 194064 - 962 * ((4464623 * (311 * ((v21 - 67395153) & 7) + 194064)) >> 32);
  v34 = STACK[0xB1E];
  LOBYTE(STACK[0xB1E]) = *(v11 + v33);
  *(v11 + v33) = v34;
  v35 = 311 * ((v20 + 1758073797) % 7u) + 194375 - 962 * ((4464623 * (311 * ((v20 + 1758073797) % 7u) + 194375)) >> 32);
  v36 = STACK[0x893];
  *(v11 + ((v20 + 15) & 0x33) + ((48 - v20) & 0x33)) = *(v11 + v35);
  *(v11 + v35) = v36;
  LOBYTE(v35) = STACK[0x9CA];
  v37 = 311 * (v32 % 6) + 194686 - 962 * ((4464623 * (311 * (v32 % 6) + 194686)) >> 32);
  LOBYTE(STACK[0x9CA]) = *(v11 + v37);
  *(v11 + v37) = v35;
  LOBYTE(v21) = v21 - 57;
  v38 = v32 + v29;
  v39 = 311 * (v31 % 5) + 194997 - 962 * ((4464623 * (311 * (v31 % 5) + 194997)) >> 32);
  v40 = STACK[0xB01];
  v41 = v32 + v20 + 1758073797 - (v38 ^ v31);
  LOBYTE(v38) = v38 - v21;
  LOBYTE(STACK[0xB01]) = *(v11 + v39);
  *(v11 + v39) = v40;
  LOBYTE(v39) = STACK[0x876];
  v42 = 311 * ((((v41 ^ -v41) ^ (v21 - (v41 ^ v21))) + v21) & 3) + 195308;
  v43 = v42 - 962 * ((4464623 * v42) >> 32);
  LOBYTE(STACK[0x876]) = *(v11 + v43);
  *(v11 + v43) = v39;
  v44 = v41 % 3;
  LOBYTE(v41) = STACK[0x9AD];
  v45 = 311 * v44 + 195619 - 962 * ((4464623 * (311 * v44 + 195619)) >> 32);
  LOBYTE(STACK[0x9AD]) = *(v11 + v45);
  *(v11 + v45) = v41;
  v46 = 644;
  if (v38)
  {
    v46 = 955;
  }

  v47 = STACK[0xAE4];
  LOBYTE(STACK[0xAE4]) = *(v11 + v46);
  *(v11 + v46) = v47;
  v48 = *(STACK[0x6D8] + 8 * v10);
  STACK[0x390] = &STACK[0x8B0];
  return v48();
}

uint64_t sub_100128930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = STACK[0x51B8];
  v7 = 9597 * (STACK[0x51B8] ^ 0x5855);
  LODWORD(STACK[0xD308]) = v5;
  return (*(STACK[0x57D8] + 8 * (v6 - 36273 + v7)))(0xE6B7173A9B2BB05DLL, 0x8F7DB279C1EDC0BDLL, 18193, 0x5EDFD206E8E3980ELL, a5, 0x40ACF3E0A06C851CLL, 0xDFA9860FAFC9BD71, 0x391E913534E20D2CLL);
}

uint64_t sub_100128A94(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  LODWORD(STACK[0x4DC8]) = LODWORD(STACK[0x4DD0]) | LODWORD(STACK[0x4DD8]);
  LODWORD(STACK[0x321C]) |= LODWORD(STACK[0x4B90]);
  LODWORD(STACK[0x4DD8]) = STACK[0x31F0] & (LODWORD(STACK[0x31E8]) ^ 0x48EEF9CC);
  v8 = STACK[0x3208];
  v9 = STACK[0x3208] & 0x8C ^ 0xD4;
  v10 = a1 & 0xC0 ^ 0xB6;
  v11 = (a1 ^ (2 * ((a1 ^ 0x64) & (2 * ((a1 ^ 0x64) & (2 * ((a1 ^ 0x64) & (2 * ((a1 ^ 0x64) & (2 * ((a1 ^ 0x64) & 0x2C ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10)));
  HIDWORD(v12) = (((v11 << 8) ^ 0x3FFF) & (v11 ^ 0x7302) & 0xFFFFF3FF | (((v11 >> 2) & 3) << 10)) ^ 0x73C2;
  LODWORD(v12) = ((v11 << 8) & 0xFF00FFFF | (((v8 ^ (2 * ((v8 ^ 0x64) & (2 * ((v8 ^ 0x64) & (2 * ((v8 ^ 0x64) & (2 * ((v8 ^ 0x64) & (2 * v9) ^ v9)) ^ v9)) ^ v9)) ^ v9))) ^ 0x8C) << 16)) ^ 0x8000;
  v13 = STACK[0x3210];
  v14 = STACK[0x3210] & 0x58 ^ 0x7A;
  v15 = (v13 ^ (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & (2 * v14) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14))) ^ 0x8DA818EE;
  LOBYTE(v11) = a6 & 0xEA ^ 0x83;
  v16 = v7 & 0x26 ^ 0xA1;
  v17 = (((a6 ^ (2 * ((a6 ^ 0x64) & (2 * ((a6 ^ 0x64) & (2 * ((a6 ^ 0x64) & (2 * ((a6 ^ 0x64) & (2 * ((a6 ^ 0x44) & (2 * ((a6 ^ 0x44) & 0xE ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11))) ^ 0xEA) << 8) | (((v7 ^ (2 * ((v7 ^ 0x64) & (2 * ((v7 ^ 0x64) & (2 * ((v7 ^ 0x64) & (2 * ((v7 ^ 0x64) & (2 * ((v7 ^ 0x44) & (2 * (v16 ^ v7 & 2)) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16))) ^ 0x26) << 16);
  v18 = STACK[0x3214];
  v19 = STACK[0x3214] & 0xCE ^ 0x35;
  v20 = ((((v18 ^ (2 * ((v18 ^ 0x64) & (2 * ((v18 ^ 0x64) & (2 * ((v18 ^ 0x64) & (2 * ((v18 ^ 0x64) & (2 * ((v18 ^ 0x64) & (2 * (v19 ^ v18 & 0xAA)) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19))) ^ 0xE59680) & ~v17 | v17 & 0x1A6900) << 8) ^ 0xA09B0FFu;
  v21 = STACK[0x4B58];
  LOBYTE(v11) = STACK[0x4B58] & 0x8A ^ 0x53;
  v22 = STACK[0x4B60];
  v23 = STACK[0x4B60] & 0x7A ^ 0xCB;
  v24 = (((v22 ^ (2 * ((v22 ^ 0x64) & (2 * ((v22 ^ 0x64) & (2 * ((v22 ^ 0x64) & (2 * ((v22 ^ 0x64) & (2 * ((v22 ^ 0x64) & (2 * (v23 ^ v22 & 0x1E)) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23))) ^ 0x7A) << 8) | (((v21 ^ (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & 0x2E ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11))) ^ 0x8A) << 16);
  v25 = STACK[0x4B80];
  LOBYTE(v11) = STACK[0x4B80] & 8 | 0x92;
  v26 = (((v25 ^ (2 * ((v25 ^ 0x64) & (2 * ((v25 ^ 0x64) & (2 * ((v25 ^ 0x64) & (2 * ((v25 ^ 0x64) & (2 * ((v25 ^ 0x64) & (2 * v11) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11))) ^ 0xCDC57B) & ~v24 | v24 & 0x323A00) << 8;
  v27 = v26 ^ 0x280FFu;
  v28 = v26 & 0x7F3C1F00;
  v29 = STACK[0x4DA8];
  LOBYTE(v26) = STACK[0x4DA8] & 0x1C ^ 0x9C;
  v30 = STACK[0x4DA0];
  LOBYTE(v21) = STACK[0x4DA0] & 0x16 ^ 0x99;
  HIDWORD(v12) = v12 >> 15;
  LODWORD(v12) = HIDWORD(v12);
  LODWORD(STACK[0x4B60]) = v15 & ~(v12 >> 9);
  v31 = (((v29 ^ (2 * ((v29 ^ 0x64) & (2 * ((v29 ^ 0x64) & (2 * ((v29 ^ 0x64) & (2 * ((v29 ^ 0x64) & (2 * v26) ^ v26)) ^ v26)) ^ v26)) ^ v26))) ^ 0x1C) << 16) | (((v30 ^ (2 * ((v30 ^ 0x64) & (2 * ((v30 ^ 0x64) & (2 * ((v30 ^ 0x64) & (2 * ((v30 ^ 0x64) & (2 * ((v30 ^ 0x64) & (2 * (v21 ^ v30 & 0x32)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21))) ^ 0x16) << 8);
  v32 = STACK[0x4DB8];
  LOBYTE(v26) = STACK[0x4DB8] & 0x8A ^ 0xD3;
  return (*(STACK[0x57D8] + 8 * v6))(v20, v27, 103, v28, ((((v32 ^ (2 * ((v32 ^ 0x64) & (2 * ((v32 ^ 0x64) & (2 * ((v32 ^ 0x64) & (2 * ((v32 ^ 0x64) & (2 * ((v32 ^ 0x64) & (2 * ((v32 ^ 0x64) & 0x2E ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26))) ^ 0xA1711C) & ~v31 | v31 & 0x5E8E00) << 8) ^ 0xE8860FFu);
}

uint64_t sub_100129278()
{
  STACK[0x5590] = STACK[0xCF08];
  LODWORD(STACK[0x54F0]) = *(v0 - 0x79296B4A625EDC78);
  v2 = STACK[0xC760];
  STACK[0x57C0] = STACK[0xC760];
  STACK[0xDC88] = v2;
  STACK[0xDC90] = STACK[0x83E0];
  v3 = STACK[0xFD78];
  STACK[0x54D0] = *(STACK[0xFD78] - 0x30BDFED8F32E672DLL);
  v4 = *(v3 - 0x30BDFED8F32E6759);
  STACK[0xDC98] = STACK[0xC860];
  STACK[0xDCA0] = v4;
  v5 = *(v3 - 0x30BDFED8F32E6751);
  STACK[0xDCA8] = v3 - 0x30BDFED8F32E6729;
  v6 = *(v3 - 0x30BDFED8F32E6719);
  v7 = STACK[0x7ED8];
  v8 = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x8718] = v8;
  STACK[0xDCB0] = v8;
  v9 = v8 + 35072;
  STACK[0xDCC0] = (v8 + 0x6DB555CCB8E70F8BLL);
  STACK[0x7ED8] = v7 + 41424;
  STACK[0xDCB8] = (v8 + 35072);
  v10 = STACK[0x57D8];
  v11 = *(STACK[0x57D8] + 8 * (v1 ^ 0x6BE3));
  v12 = *(&off_101353600 + (v1 ^ 0x1531));
  STACK[0x57B0] = v8;
  v11(v12);
  (*(v10 + 8 * (v1 + 25759)))(*(&off_101353600 + v1 - 4699) - 4, v9, 6152);
  LODWORD(STACK[0x7ADC]) = v5 + v6 + ((v1 + 5291) ^ 0xF9D1D530);
  STACK[0xC0F8] = (*(v10 + 8 * (v1 ^ 0x6B88)))();
  v13 = (*(v10 + 8 * (v1 ^ 0x6B88)))(16);
  STACK[0x7400] = v13;
  v14 = (*(v10 + 8 * (v1 ^ 0x6B88)))((v1 ^ 0x3BF8u) + LODWORD(STACK[0x7ADC]) - 11310);
  STACK[0x8118] = v14;
  STACK[0xB0A8] = (*(v10 + 8 * (v1 ^ 0x6B88)))(20);
  STACK[0x9530] = (*(v10 + 8 * (v1 ^ 0x6B88)))(48);
  STACK[0xAFB0] = (*(v10 + 8 * (v1 + 25736)))(56) + 0x2ACD363B9DC19E08;
  if (STACK[0xC0F8])
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  v17 = !v15 && v14 != 0;
  return (*(v10 + 8 * ((114 * v17) ^ v1)))(v13);
}

uint64_t sub_100129558@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 600) = (v1 - 1723133771) ^ (1917435887 * ((2 * (v3 & 0x2501D2C0) - v3 - 620876481) ^ 0x3C457639));
  *(v2 + 592) = a1;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v1 + 9178)))(v4 - 240);
  return (*(v5 + 8 * (v1 + 4611)))(v6);
}

uint64_t sub_1001295DC()
{
  v1 = STACK[0x57D8];
  STACK[0xBDE0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (((v0 + 15147) ^ 0x4950) + v0)))(0x308E083E0C524CBELL);
}

uint64_t sub_10012964C@<X0>(unint64_t a1@<X8>)
{
  v4 = *(v1 - 0x683CBC57EAB92A36);
  STACK[0x1410] = a1;
  STACK[0xF00] = 0;
  return (*(v3 + 8 * (((v4 != 0x308E083E0C524CBELL) * (((v2 - 418503339) & 0x18F1FBFF ^ 0xFFFFAFDB) + (v2 ^ 0x7689))) ^ v2)))();
}

uint64_t sub_1001296E0()
{
  v2 = *(v0 + 352);
  v3 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v2 & 0xFFFFFFF8) - 1831847764)) & 0xFFFFFFFFFFFFFFF8));
  v4 = (__ROR8__(v2 & 0xFFFFFFFFFFFFFFF8, 8) + v3) ^ 0xC2AF3EAA3FF1B8E4;
  v5 = v4 ^ __ROR8__(v3, 61);
  v6 = (__ROR8__(v4, 8) + v5) ^ 0x65F254DD188DB4FCLL;
  v7 = __ROR8__(v6, 8);
  v8 = v6 ^ __ROR8__(v5, 61);
  v9 = (0xED93016E8890D98BLL - ((v7 + v8) | 0xED93016E8890D98BLL) + ((v7 + v8) | 0x126CFE91776F2674)) ^ 0x7D9CB807167634F9;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0xA1B29DC5D776132BLL;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ v1;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (((2 * (v15 + v14)) | 0xA8E935434AC0C44ELL) - (v15 + v14) - 0x54749AA1A5606227) ^ 0x8CB329BE6F79BBF9;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = __ROR8__(v16, 8);
  v19 = *(v0 + 344);
  LOBYTE(v2) = 2 * (((((__ROR8__((((v18 + v17) & 0x35A549118CA29859 ^ 0x150008110CA01800) + ((v18 + v17) & 0xCA5AB6EE735D67A6 ^ 0x8808200642582383) - 1) ^ 0xC95D2939C449F80DLL, 8) + ((((v18 + v17) & 0x35A549118CA29859 ^ 0x150008110CA01800) + ((v18 + v17) & 0xCA5AB6EE735D67A6 ^ 0x8808200642582383) - 1) ^ 0xC95D2939C449F80DLL ^ __ROR8__(v17, 61))) ^ 0x6F4F60BC0E025EE0) >> (8 * (v2 & 7u))) ^ *(v0 + 295)) + v19);
  *(*(v0 + 3768) + ((v19 + 13) & 0x7F)) = ((v2 & 0xF7) + ((2 * (v2 & 0x10 ^ 0x78)) ^ 0x1F) - 95) ^ 0x4F;
  v20 = *(v0 + 320) + 1;
  v21 = *(STACK[0x57D8] + 8 * ((226 * (*(v0 + 320) != 79)) ^ *(v0 + 340)));
  *(v0 + 308) = *(v0 + 332);
  *(v0 + 312) = v20;
  *(v0 + 364) = *(v0 + 336);
  *(v0 + 368) = 80;
  return v21();
}

uint64_t sub_100129954()
{
  *(v1 + 592) = 0;
  *(v1 + 600) = (v0 - 1723125787) ^ (1917435887 * ((-30472651 - (v2 | 0xFE2F0635) + (v2 | 0x1D0F9CA)) ^ 0xE76BA2CC));
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v0 + 17162)))(v3 - 240);
  v7 = *STACK[0x4678] != ((v0 - 5707) ^ 0x22DB) || *STACK[0x4630] == 0;
  return (*(v4 + 8 * ((v7 * (1601 * (v0 ^ 0x392E) - 12711)) ^ v0)))(v5);
}

uint64_t sub_100129A24@<X0>(int a1@<W8>)
{
  v1 = STACK[0x51B8];
  LODWORD(STACK[0xCD1C]) = a1;
  LOBYTE(STACK[0xCD97]) = 0;
  return (*(STACK[0x57D8] + 8 * (v1 + 1416)))();
}

uint64_t sub_100129A5C()
{
  v1 = STACK[0x57D8];
  STACK[0xBDE0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 - 14007 + ((v0 + 1519799494) & 0xA569EE7D))))();
}

uint64_t sub_100129AC0@<X0>(uint64_t a1@<X8>)
{
  v2 = STACK[0xCAE0];
  STACK[0x8D18] = STACK[0xCAE0];
  v3 = STACK[0xB5B0];
  v4 = (&STACK[0x10120] + a1);
  STACK[0x9C90] = &STACK[0x10120] + a1;
  STACK[0xBB58] = &STACK[0x10120] + a1;
  STACK[0xB3C8] = &STACK[0x10120] + a1 + 16;
  v5 = &STACK[0x10120] + a1 + 272;
  STACK[0x7640] = v5;
  STACK[0x9DF8] = &STACK[0x10120] + a1 + 472;
  STACK[0x7ED8] = a1 + (v1 - 20559) - 1319;
  STACK[0xC1E8] = 0;
  LODWORD(STACK[0xA4D4]) = 0;
  STACK[0x7180] = 0;
  *v4 = 0;
  v4[1] = 0;
  STACK[0x89F0] = &STACK[0x10120] + a1 + 8;
  STACK[0x10108] = 0;
  STACK[0x9400] = STACK[0x1F00];
  v6 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * (v1 + 9221)))();
  v7 = (*(v6 + 8 * (v1 + 9221)))(v5, 0, 200);
  v4[59] = 0;
  v4[60] = 0;
  if (v2)
  {
    v8 = STACK[0x67F8] == 0;
  }

  else
  {
    v8 = 1;
  }

  v11 = !v8 && v3 != 0 && STACK[0x9B88] != 0;
  return (*(v6 + 8 * ((22 * v11) ^ (v1 + 7541))))(v7);
}

uint64_t sub_100129C2C()
{
  if (STACK[0x9AE8])
  {
    v0 = LODWORD(STACK[0x7398]) == 103679699;
  }

  else
  {
    v0 = 1;
  }

  v1 = v0;
  return (*(STACK[0x57D8] + 8 * ((v1 ^ (LODWORD(STACK[0x29C8]) - 105)) & 1 ^ LODWORD(STACK[0x29C8]))))();
}

uint64_t sub_100129C84@<X0>(unint64_t a1@<X1>, unint64_t a2@<X4>, unint64_t a3@<X5>, uint64_t a4@<X6>, char a5@<W7>, unsigned __int8 *a6@<X8>)
{
  v10 = *(&off_101353600 + v6 - 27930) - 8;
  v11 = v10[a6[2] ^ a1];
  STACK[0xD760] = 0;
  STACK[0xD750] = 0x2454F903A5AC80A3;
  STACK[0xD770] = 0x3B44372B8C0487F0;
  STACK[0xD778] = 0;
  v12 = a6[10] ^ (((v6 - 127) | 0x24) - 49);
  STACK[0xD780] = 0;
  LODWORD(STACK[0x57A0]) = ((v11 + 28) ^ ((v11 + 28) >> 5) ^ ((v11 + 28) >> 4)) ^ 0x7E;
  v13 = v10[v12] + 28;
  v14 = *a6;
  v15 = v14 ^ v7;
  STACK[0xD738] = 0;
  v16 = *(&off_101353600 + v6 - 28075) - 4;
  LODWORD(v14) = v16[v14 ^ 0xF4];
  STACK[0xD790] = 0;
  v17 = (v15 + 2) ^ v15;
  LODWORD(STACK[0xD744]) = 1495155698;
  v18 = a6[7];
  LODWORD(STACK[0x57B0]) = (v13 ^ (v13 >> 5) ^ (v13 >> 4)) ^ 0x1E;
  v19 = v17 & 1;
  v20 = v14 ^ 0x78;
  v21 = v17 & 0xFE;
  v22 = *(&off_101353600 + (v6 ^ 0x6F16));
  v23 = *(v22 + (v18 ^ 0x5B));
  v24 = ((v18 ^ 0x84) - (v18 ^ 0xF6));
  if ((v19 & v14) != 0)
  {
    v25 = -v19;
  }

  else
  {
    LOBYTE(v25) = v19;
  }

  LODWORD(STACK[0x5780]) = ((v25 + v20) ^ v21);
  v26 = v24 ^ v23;
  v27 = *(&off_101353600 + (v6 ^ 0x6E84)) - 8;
  v28 = v27[a6[1] ^ a3];
  v29 = a6[4];
  LODWORD(STACK[0x5770]) = (v28 ^ ((v28 ^ 0x4F) >> 4) ^ ((v28 ^ 0x4F) >> 2)) ^ 0xD2;
  v30 = v16[v29 ^ a4] ^ ((((v29 ^ 6) + 2) ^ v29) & 0xA9 | (((v29 ^ 6) + 2) ^ v29 ^ 6) & 0x56) ^ 0x69;
  v31 = ((a6[15] ^ a5) - (a6[15] ^ 0x20)) ^ *(v22 + (a6[15] ^ 0x8DLL));
  LODWORD(v29) = ((v10[a6[6] ^ 2] + 28) ^ ((v10[a6[6] ^ 2] + 28) >> 5) ^ ((v10[a6[6] ^ 2] + 28) >> 4)) ^ 0xC;
  v32 = v27[a6[9] ^ a2];
  v33 = a6[8];
  LODWORD(STACK[0x5760]) = (v32 ^ ((v32 ^ 0x4F) >> 4) ^ ((v32 ^ 0x4F) >> 2)) ^ 0x3F;
  v34 = v16[v33 ^ v8];
  v35 = a6[5] ^ 0x77;
  v36 = v33 ^ 0x68 ^ ((v33 ^ 0x68) + 2) ^ 0xDE;
  LODWORD(STACK[0x5750]) = (v34 ^ v36);
  v37 = v27[v35] ^ 0x4F;
  v38 = a6[12] - ((2 * a6[12]) & 0x66);
  STACK[0x56D0] = v16;
  v39 = a6[11];
  LODWORD(STACK[0x5730]) = v31 | (((v38 + 51) ^ (v38 + 53) ^ v16[(v38 + 51) ^ 0xACLL]) << 24);
  LODWORD(STACK[0x5790]) = ((v39 ^ 0x70) - (v39 ^ 2)) ^ *(v22 + (v39 ^ 0xAF));
  v40 = a6[13] ^ 0x18;
  STACK[0x56C0] = v27;
  LODWORD(STACK[0x5720]) = (v27[v40] ^ ((v27[v40] ^ 0x4F) >> 4) ^ ((v27[v40] ^ 0x4F) >> 2)) ^ 3;
  v41 = a6[14] ^ 0xEBLL;
  STACK[0x56E0] = v10;
  LODWORD(STACK[0x5740]) = (((v10[v41] + 28) ^ ((v10[v41] + 28) >> 5) ^ ((v10[v41] + 28) >> 4)) ^ 0xF2) << 8;
  v42 = a6[3];
  STACK[0x56F0] = v22;
  LODWORD(STACK[0x57C0]) = *(v22 + (v42 ^ 0xBD)) ^ ((v42 ^ 0x62) - (v42 ^ 0x10)) ^ 0x88;
  v43 = v26 - ((2 * v26) & 0x1E8) + 244;
  LODWORD(STACK[0x5710]) = v43;
  LODWORD(STACK[0x5700]) = v43 + (v30 << 24) + (v29 << 8) + (((v37 >> 4) ^ (v37 >> 2) ^ ((v37 ^ -v37 ^ (((2 * v37) & 0xC) - v37)) + 6)) << 16);
  return (*(STACK[0x57D8] + 8 * v6))(1746337792, (v9 + 1319), 3718561947, 4294967173, v36, 636092416, 3893858878, 2783591392);
}

uint64_t sub_10012A150(uint64_t a1, uint64_t a2, uint64_t a3)
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
  return (*(v37 + 8 * ((((v3 + 6058) | 0x4538) ^ 0x198F) + v3)))(a1, a2, a3, 2625273121);
}

uint64_t sub_10012A390()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 24933)))();
  *(STACK[0x4D10] + 8) = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10012A3BC(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8)
{
  STACK[0x3AA0] = *(STACK[0x3AC0] + 8 * SLODWORD(STACK[0x3AA0]));
  STACK[0x2990] = v11;
  STACK[0x2BC8] = v21;
  STACK[0x29D8] = v22;
  STACK[0x2998] = a2;
  STACK[0x2BD0] = v23;
  STACK[0x29E0] = v17;
  STACK[0x2B00] = v18;
  v24 = STACK[0x3588];
  STACK[0x2BD8] = STACK[0x3588];
  STACK[0x2698] = v24;
  STACK[0x29E8] = v15;
  STACK[0x2A10] = v19;
  STACK[0x29A0] = v20;
  v25 = STACK[0x3550];
  STACK[0x29C8] = STACK[0x3550];
  STACK[0x2178] = v25;
  STACK[0x2B10] = a5;
  v26 = STACK[0x3938];
  STACK[0x2B08] = STACK[0x3938];
  STACK[0x2170] = v26;
  STACK[0x2B98] = v16;
  v27 = STACK[0x3578];
  STACK[0x26A0] = STACK[0x3578];
  STACK[0x2BE0] = v27;
  v28 = STACK[0x39C0];
  STACK[0x2180] = STACK[0x39C0];
  STACK[0x2B18] = v28;
  STACK[0x2BA0] = v14;
  STACK[0x2BA8] = a8;
  STACK[0x2B20] = v13;
  STACK[0x29F0] = v10;
  STACK[0x29A8] = a7;
  STACK[0x2A30] = a6;
  STACK[0x2BE8] = v12;
  v29 = STACK[0x3958];
  STACK[0x2620] = STACK[0x3958];
  STACK[0x2BF0] = v29;
  LODWORD(STACK[0x36E0]) = STACK[0x3AE8];
  STACK[0x29B0] = a4;
  v30 = STACK[0x3570];
  STACK[0x29D0] = STACK[0x3570];
  STACK[0x2638] = v30;
  v31 = STACK[0x3580];
  STACK[0x2680] = STACK[0x3580];
  STACK[0x2B28] = v31;
  v32 = STACK[0x3698];
  STACK[0x29C0] = STACK[0x3698];
  STACK[0x2628] = v32;
  v33 = STACK[0x3568];
  STACK[0x2690] = STACK[0x3568];
  STACK[0x2B30] = v33;
  STACK[0x2BC0] = a3;
  STACK[0x2BF8] = v8;
  v34 = STACK[0x3590];
  STACK[0x2AF8] = STACK[0x3590];
  STACK[0x2640] = v34;
  LODWORD(STACK[0x3A28]) = 6;
  v35 = STACK[0x2D70];
  STACK[0x2160] = STACK[0x2D70];
  STACK[0x28E0] = v35;
  v36 = STACK[0x2D90];
  STACK[0x28E8] = STACK[0x2D90];
  v37 = STACK[0x2E00];
  STACK[0x3488] = STACK[0x2E00];
  v38 = STACK[0x2D78];
  STACK[0x3470] = STACK[0x2D78];
  STACK[0x28F0] = v37;
  v39 = STACK[0x3520];
  STACK[0x2B90] = STACK[0x3520];
  v40 = STACK[0x3538];
  STACK[0x29F8] = STACK[0x3538];
  v41 = STACK[0x2D80];
  STACK[0x2158] = STACK[0x2D80];
  v42 = STACK[0x2E08];
  STACK[0x2A00] = STACK[0x2E08];
  v43 = STACK[0x3AC8];
  STACK[0x2150] = STACK[0x3AC8];
  STACK[0x28F8] = v38;
  v44 = STACK[0x2E10];
  v45 = STACK[0x2E70];
  STACK[0x2900] = STACK[0x2E70];
  v46 = STACK[0x3408];
  STACK[0x2A08] = STACK[0x3408];
  STACK[0x3480] = v35;
  STACK[0x2908] = v9;
  STACK[0x2148] = v42;
  STACK[0x2678] = v36;
  v47 = STACK[0x3528];
  STACK[0x2A18] = STACK[0x3528];
  STACK[0x2910] = STACK[0x3320];
  v48 = STACK[0x2D68];
  STACK[0x2188] = STACK[0x2D68];
  v49 = STACK[0x2D88];
  STACK[0x2670] = STACK[0x2D88];
  v50 = STACK[0x3518];
  STACK[0x2140] = STACK[0x3518];
  v51 = STACK[0x3548];
  STACK[0x2688] = STACK[0x3548];
  STACK[0x2138] = v47;
  v52 = STACK[0x2E78];
  STACK[0x3468] = STACK[0x2E78];
  STACK[0x2668] = v40;
  STACK[0x2918] = STACK[0x3A40];
  STACK[0x2168] = v44;
  STACK[0x2920] = STACK[0x3A30];
  STACK[0x2A20] = v43;
  STACK[0x3A70] = v49;
  STACK[0x3370] = v45;
  STACK[0x2928] = STACK[0x3478];
  STACK[0x2930] = STACK[0x3A38];
  STACK[0x2660] = v37;
  STACK[0x3A88] = v36;
  STACK[0x2938] = v49;
  v53 = STACK[0x3AD0];
  STACK[0x2658] = STACK[0x3AD0];
  STACK[0x2650] = v38;
  STACK[0x2648] = v46;
  v54 = STACK[0x2DF8];
  STACK[0x2940] = STACK[0x2DF8];
  STACK[0x2948] = v44;
  STACK[0x2A28] = v48;
  STACK[0x2BB0] = v51;
  STACK[0x2630] = v54;
  STACK[0x2950] = STACK[0x3340];
  STACK[0x2958] = STACK[0x3318];
  STACK[0x2960] = v41;
  STACK[0x2618] = v52;
  v55 = STACK[0x3540];
  STACK[0x2610] = STACK[0x3540];
  v56 = STACK[0x2DF0];
  STACK[0x3368] = STACK[0x2DF0];
  STACK[0x2608] = v39;
  STACK[0x3360] = v41;
  STACK[0x2600] = v45;
  STACK[0x2BB8] = v55;
  STACK[0x2968] = STACK[0x3338];
  STACK[0x2A38] = v53;
  STACK[0x2970] = v56;
  STACK[0x2978] = v52;
  STACK[0x25F8] = v56;
  STACK[0x2980] = STACK[0x3330];
  STACK[0x2A40] = v50;
  STACK[0x2988] = STACK[0x3328];
  return (STACK[0x3AA0])();
}

uint64_t sub_10012A674@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  *(v52 - 216) = (*(STACK[0x5E0] + 260) & 1) + a51;
  *(v52 - 240) = a51;
  *(v52 - 208) = ((a1 - 1029799257) ^ 0x3E) + a51;
  *(v52 - 232) = a1 - 1029799257 - a51 + 874;
  *(v52 - 228) = a51 + a1 - 1632379223;
  *(v52 - 224) = a51;
  *(v52 - 220) = (a1 - 1029799257) ^ a51;
  v53 = (*(v51 + 8 * (a1 ^ 0xB7D0FFA5)))(v52 - 240);
  return (*(v51 + 8 * *(v52 - 204)))(v53);
}

uint64_t sub_10012A708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *v11 = v9;
  *(v9 + 8) = *(v7 + v8);
  *(v7 + v8) = v9;
  return (*(v12 + 8 * (v10 | 0x430)))(a1, a2, 1211098651, a4, a5, a6, a7, 0x308E083E0C524CBELL);
}

uint64_t sub_10012A764()
{
  v0 = *(*STACK[0x51F0] + (*STACK[0x51E8] & 0x85027D58)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x17AA806B5035C21BLL;
  v1 = 0x160F3FFABE1CCD91 * (STACK[0xC870] - v0) + 0xB791259E33F96C5;
  v2 = (v1 ^ 0xF666CDA59AAB65BBLL) & (2 * (v1 & 0xF486EDA61CC0693BLL)) ^ v1 & 0xF486EDA61CC0693BLL;
  v3 = ((2 * (v1 ^ 0x9E639DAD8B2B77CBLL)) ^ 0xD5CAE0172FD63DE0) & (v1 ^ 0x9E639DAD8B2B77CBLL) ^ (2 * (v1 ^ 0x9E639DAD8B2B77CBLL)) & 0x6AE5700B97EB1EF0;
  v4 = v3 ^ 0x2A25100890290210;
  v5 = (v3 ^ 0x4000600007020CE0) & (4 * v2) ^ v2;
  v6 = ((4 * v4) ^ 0xAB95C02E5FAC7BC0) & v4 ^ (4 * v4) & 0x6AE5700B97EB1EF0;
  v7 = (v6 ^ 0x2A85400A17A81AC0) & (16 * v5) ^ v5;
  v8 = ((16 * (v6 ^ 0x4060300180430430)) ^ 0xAE5700B97EB1EF00) & (v6 ^ 0x4060300180430430) ^ (16 * (v6 ^ 0x4060300180430430)) & 0x6AE5700B97EB1EF0;
  v9 = (v8 ^ 0x2A45000916A10E00) & (v7 << 8) ^ v7;
  v10 = (((v8 ^ 0x40A07002814A10F0) << 8) ^ 0xE5700B97EB1EF000) & (v8 ^ 0x40A07002814A10F0) ^ ((v8 ^ 0x40A07002814A10F0) << 8) & 0x6AE5700B97EB1E00;
  v11 = v9 ^ 0x6AE5700B97EB1EF0 ^ (v10 ^ 0x60600003830A0000) & (v9 << 16);
  v12 = (v1 ^ (2 * ((v11 << 32) & 0x2E5700B00000000 ^ v11 ^ ((v11 << 32) ^ 0x7EB1EF000000000) & (((v10 ^ 0xA85700814E10EF0) << 16) & 0x6AE5700B00000000 ^ 0x2E4600000000000 ^ (((v10 ^ 0xA85700814E10EF0) << 16) ^ 0x700B97EB00000000) & (v10 ^ 0xA85700814E10EF0))))) & 0xFFFFFFFFFFFFFFFLL;
  STACK[0xC870] = v0 + 0x7D13525AA3CF9371 * (((v12 ^ 0x8E01A2E39B995B77) + 0x7D918D610307153BLL) ^ ((v12 ^ 0x40D0F061DC182460) - 0x4CBF201CBB7995D2) ^ ((v12 ^ 0xCA5F7F3374972BCCLL) + 0x39CF50B1EC096582)) + 0x67EB48A07C8E8E59;
  return (*(STACK[0x57D8] + 8 * ((STACK[0x51B8] - 22593) | 0x2248)))(0x2275D4C73835399BLL, 0x5F8DEC3EA3980A1BLL, 0xA82620A559D2DA78, 0xC1C3C8D2A4C54828, 0xC7DDC9F6CC45B721);
}

uint64_t sub_10012ADF0(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  v19 = (((v13 ^ a8) & v15) << v17) ^ ((v13 ^ a8) >> v16);
  v20 = a3 & (4 * ((v19 ^ (2 * (v19 & v14))) & v14)) ^ v19 ^ (2 * (v19 & v14));
  v21 = ((v14 & a4 & (4 * (v20 & v14))) << (v8 + 15)) & a5 ^ v20;
  v22 = *((v21 ^ 0xB71u) + v18 + 14679);
  v23 = (((v22 ^ 0x1D) - 29) ^ ((v22 ^ 0x7F) - 127) ^ ((v22 ^ 0x67) - 103)) - (((v21 ^ 0x35) + 102) ^ ((v21 ^ 1) + 82) ^ ((v21 ^ 0xDA) - 117)) + 31;
  LOBYTE(v21) = (v23 & 0xA5 | 0x58) ^ v23 & 0xF0;
  v24 = v23 ^ (2 * ((v23 ^ 0x24) & (2 * ((v23 ^ 0x24) & (2 * ((v23 ^ 0x24) & (2 * ((v23 ^ 0x24) & (2 * ((v23 ^ 0x24) & (2 * (v23 & (2 * v21) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21));
  v25 = (v24 >> 4) ^ *(((((v24 >> 4) ^ 0x5A) & v10 | v11) ^ 0xD) + v18 + 1294);
  v26 = *(v18 + (((((v25 >> 2) & 3) << 6) | 0x2F) ^ ((16 * v25) ^ 0xCF) & (*(((v24 & 0xF | v9) ^ 0x3B) + v18 + 2584) ^ 0x8E)) + 12848) ^ 0xE4;
  *(STACK[0x8070] + v12 % 0x3282) = *(STACK[0x8070] + 12337 * v26 - 12930 * (((1328683 * (12337 * v26)) >> 32) >> 2));
  return (*(STACK[0x57D8] + 8 * (v8 + 4 * (v13 != 255))))();
}

uint64_t sub_10012B024(uint64_t a1, int a2)
{
  v9 = ((((a2 - 1187119184) & 0x46C1FCD6) - 1779) ^ 0xFFFFAE9C) + v7 + v3;
  v10 = (v7 - 1) & 0xF;
  v11 = v6 + v10 - v9;
  v12 = v10 + v5 - v9;
  v13 = v4 + v10 - v9;
  v17 = (v7 - 1 + v2) + v8 - v9 > 0xF && v11 > 0xF && (v12 + 1) > 0xF && v13 > 0xF;
  return (*(STACK[0x57D8] + 8 * (((8 * v17) | (16 * v17)) ^ a2)))();
}

uint64_t sub_10012B160(unsigned __int8 a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v19 = (((v9 + 1045020937) & 0xC1B5FBDE) - 10959) & a8;
  v20 = 1 << ((((v9 + 9) & 0xDE) + 49) & a8);
  v21 = ((((v9 + 9) & 0xDE) + 49) & a8) + 1;
  v22 = *(a7 + 4 * v16);
  v23 = *(*(v11 + 4008) + v8 + v19 * v10 - (((((v8 + v19 * v10) >> 3) * v12) >> 32) >> 7) * v14);
  v24 = v23 & 0xA2 ^ 0x67;
  v25 = v22 ^ v23 ^ (2 * ((v23 ^ v18) & (2 * ((v23 ^ v18) & (2 * ((v23 ^ v18) & (2 * ((v23 ^ v18) & (2 * ((v23 ^ 0x44) & (2 * ((v23 ^ 0x44) & 6 ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v17;
  if ((((v20 - 8 * (v20 >> 2) + 124) ^ 0xE2) & a1 ^ a3) == 0x96)
  {
    v25 = v22 ^ 0xAB;
  }

  *(a7 + 4 * v15) = v25 ^ (v13 - 70);
  return (*(STACK[0x57D8] + 8 * (v9 ^ (16 * ((v21 & 0xF8) == 0)))))();
}

uint64_t sub_10012B270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v5 - 1;
  v9 = __ROR8__((v6 + v8) & 0xFFFFFFFFFFFFFFF8, 8);
  v10 = ((0x70824D863E123F42 - v9) & a4) + v9 + a2 - ((v9 + a2) & a4);
  v11 = v4 ^ 0x49696FEE67BAC8CFLL ^ v10;
  v10 ^= 0x3284FC2068D4EEA6uLL;
  v12 = __ROR8__(v11, 8);
  v13 = (((2 * (v12 + v10)) & 0xB9499A552247E482) - (v12 + v10) + 0x235B32D56EDC0DBELL) ^ 0x192756227163CBE5;
  v14 = v13 ^ __ROR8__(v10, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0xFBC18F8B9568C440;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (a3 - ((v17 + v16) | a3) + ((v17 + v16) | 0x6E3CE33C7FC50AA8)) ^ 0x24D92D531C52739BLL ^ __ROR8__(v16, 61);
  v19 = (__ROR8__((a3 - ((v17 + v16) | a3) + ((v17 + v16) | 0x6E3CE33C7FC50AA8)) ^ 0x24D92D531C52739BLL, 8) + v18) ^ 0x2854CB5A8BDB8317;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0xF7721CC6F3AEFBDCLL;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ a1;
  *(v7 + v8) = (((__ROR8__(v23, 8) + (v23 ^ __ROR8__(v22, 61))) ^ 0x94AC86FF716F8E22) >> (8 * ((v6 + v8) & 7))) ^ *(v6 + v8);
  return (*(STACK[0x57D8] + 8 * ((21340 * (v8 == 0)) ^ v4)))();
}

uint64_t sub_10012B460(int a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v14 = v10 < v8;
  HIDWORD(v15) = a3 + ((*(a7 + v7) ^ a1) + ((2 * *(a7 + v7)) & 0xFFE7)) * a2;
  LODWORD(v15) = HIDWORD(v15);
  *(a7 + v7) = *(a4 + (v15 >> 4) % v9) - 95;
  if (v14 == v11 < v8)
  {
    v14 = v11 < v10;
  }

  return (*(v13 + 8 * ((v14 * a5) ^ v12)))();
}

uint64_t sub_10012B4D0()
{
  STACK[0xB98] = v4;
  STACK[0xFA8] = v2;
  LODWORD(STACK[0x16D8]) = 16;
  LODWORD(STACK[0x12BC]) = v0;
  return (*(v3 + 8 * (v1 + 1211092262)))();
}

uint64_t sub_10012B638()
{
  *(v2 - 216) = (v1 + 1835836219) ^ (1964904101 * ((((v2 - 216) | 0x19695B13) - (v2 - 216) + ((v2 - 216) & 0xE696A4E8)) ^ 0xE34BB097));
  *(v2 - 208) = STACK[0x2B8];
  v3 = (*(v0 + 8 * (v1 ^ 0xF8ED2CB0)))(v2 - 216);
  return (*(v0 + 8 * (v1 ^ 0xF8ED42C4 ^ (2138 * (v1 > 0xB6AFA0A8)))))(v3);
}

uint64_t sub_10012B734@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 240) = v1 - 1964904101 * ((((v4 - 240) | 0x880C0D0C) - ((v4 - 240) & 0x880C0D0C)) ^ 0x722EE688) + 1049487249;
  *(v2 + 1048) = a1;
  v5 = (*(v3 + 8 * (v1 ^ 0x819FBE86)))(v4 - 240);
  return (*(v3 + 8 * (v1 + 2120255258)))(v5);
}

uint64_t sub_10012B7BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, int8x16_t a3@<Q7>)
{
  v8 = a2 + v6 - v3;
  v9 = a1 + v6 - v3;
  v10 = veorq_s8(*(v8 - 31), a3);
  *(v9 - 15) = veorq_s8(*(v8 - 15), a3);
  *(v9 - 31) = v10;
  return (*(v7 + 8 * ((57 * ((((v4 + v5) ^ (((v3 + 32 - v4) | (v4 - (v3 + 32))) >> 63)) & 1) == 0)) | (v4 + 9312))))();
}

uint64_t sub_10012B900@<X0>(uint64_t a1@<X5>, uint64_t a2@<X6>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v13 = (((v10 ^ 0xDA2DEDFF) + 634524161) ^ ((v10 ^ 0x4AF52D98) - 1257581976) ^ ((v10 ^ 0x42C440F3) - 1120157939)) + 1199072598;
  v14 = ((2 * (v13 ^ 0x56B47942)) ^ 0xB820C4FE) & (v13 ^ 0x56B47942) ^ (2 * (v13 ^ 0x56B47942)) & (v6 + 14);
  v15 = (v13 ^ 0x42B45B38) & (2 * (v13 & 0x8AA41B3D)) ^ v13 & 0x8AA41B3D;
  v16 = v14 ^ 0x44102201;
  v17 = (v14 ^ 0x1800407C) & (4 * v15) ^ v15;
  v18 = ((4 * v16) ^ 0x704189FC) & v16 ^ (4 * v16) & (v6 + 12);
  v19 = (v18 ^ 0x50000070) & (16 * v17) ^ v17;
  v20 = ((16 * (v18 ^ 0x8C106203)) ^ 0xC10627F0) & (v18 ^ 0x8C106203) ^ (16 * (v18 ^ 0x8C106203)) & v6;
  v21 = v19 ^ (v6 + 15) ^ (v20 ^ 0xC0002200) & (v19 << 8);
  v22 = v13 ^ (2 * ((v21 << 16) & 0x5C100000 ^ v21 ^ ((v21 << 16) ^ 0x627F0000) & (((v20 ^ 0x1C10400F) << 8) & 0x5C100000 ^ 0x4C100000 ^ (((v20 ^ 0x1C10400F) << 8) ^ 0x10620000) & (v20 ^ 0x1C10400F))));
  v23 = v22 ^ v7;
  v24 = __ROR8__((v9 + v23) & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = ((v24 + a2) | 0x6872CF9ADE35A503) - ((v24 + a2) | v5) + v5;
  v26 = __ROR8__(v25 ^ 0x87CA910BFA011587, 8);
  v25 ^= 0xF791BB04DE9BFE9DLL;
  v27 = (v26 + v25) ^ a3;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ v11;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (v4 - ((v31 + v30) | v4) + ((v31 + v30) | 0x37082B1C50058A8CLL)) ^ 0x66F46C6263DBCABFLL;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (((2 * (v34 + v33)) | 0x2F44BAC45146A126) - (v34 + v33) + 0x685DA29DD75CAF6DLL) ^ 0xB5EE54A86CAF5C98;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (v37 + v36 - ((2 * (v37 + v36)) & 0xADF054EA5F926650) + 0x56F82A752FC93328) ^ 0xF761D3DB704E596DLL;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ a1;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v40, 8);
  *(a4 + v23) = (((v42 + v41 - ((2 * (v42 + v41)) & 0x212293E902B741DALL) + 0x109149F4815BA0EDLL) ^ 0x79C035598623B16ELL) >> (8 * ((v9 + (v22 ^ v7)) & 7))) ^ *(v9 + v23);
  return (*(v12 + 8 * ((12700 * (v22 == v7)) ^ v8)))();
}

uint64_t sub_10012BC7C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0x1C20] = (((v2 - 403693953) & 0x180F787E) - 769886176) ^ v3;
  *(a1 + 16) = (((v3 ^ 0x3B579231) - 995594801) ^ ((v3 ^ 0x1D40C3AC) - 490783660) ^ (((v2 + 927305321) & 0xC8BA6FF6 ^ 0xBF44121) + (v3 ^ 0xF40BD109))) - 769884002;
  v5 = (*(v1 + 8 * (v2 ^ 0xD48)))();
  *(a1 + 24) = v5;
  return (*(v1 + 8 * ((11 * (v5 != 0)) ^ v2)))();
}

uint64_t sub_10012BDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = __ROR8__((v12 + v9) & 0xFFFFFFFFFFFFFFF8, 8);
  v17 = (0x5B3EC18598D49E09 - v16) & 0x439D2ABD3471CBB2 | (v16 - 0x5B3EC18598D49E0ALL) & 0xBC62D542CB8E344DLL;
  v18 = __ROR8__(v17 ^ 0xC885972756BC9DF2, 8);
  v19 = v11 + v9 + a5;
  v17 ^= 0xEE8C64F46FE79247;
  v20 = ((((v18 + v17) << (((v10 - 75) | 0x65u) - 116)) & 0xDC4B9C91A65ED506) - (v18 + v17) - 0x6E25CE48D32F6A84) ^ 0xCB9F2D3AB443EBCLL;
  v21 = v20 ^ __ROR8__(v17, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0x893772B00383F7DCLL;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ v14;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ v13;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = __ROR8__((((v28 + v27) & a1 ^ 0x28848221A06340BLL) + ((v28 + v27) ^ 0x9D34A3DCE4C1C3E0) - (((v28 + v27) ^ 0x9D34A3DCE4C1C3E0) & a1)) ^ 0x1E64666057BA65EELL, 8);
  v30 = (((v28 + v27) & a1 ^ 0x28848221A06340BLL) + ((v28 + v27) ^ 0x9D34A3DCE4C1C3E0) - (((v28 + v27) ^ 0x9D34A3DCE4C1C3E0) & a1)) ^ 0x1E64666057BA65EELL ^ __ROR8__(v27, 61);
  v31 = __ROR8__(v19 & 0xFFFFFFFFFFFFFFF8, 8);
  v32 = -2 - (((0x1C64917143BAF700 - v31) | 0xD284178F14B643ABLL) + ((v31 + v6) | 0x2D7BE870EB49BC54));
  v33 = v32 ^ 0xD7E235E7DD645506;
  v32 ^= 0xCB3941923F4C12F9;
  v34 = (__ROR8__(v33, 8) + v32) ^ v5;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (v29 + v30 - ((2 * (v29 + v30)) & 0xC0AEC7D099485520) + 0x605763E84CA42A90) ^ 0x4EFA4EB9ABA5AD44;
  v37 = (__ROR8__(v34, 8) + v35) ^ 0x1038643522CD1792;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ v7;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v36, 8) + (v36 ^ __ROR8__(v30, 61));
  v42 = (__ROR8__(v39, 8) + v40) ^ v8;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0x5FD252103B569EALL;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ a2;
  *v19 = ((v41 ^ 0x5FC4102E9580487DLL) >> (8 * ((v12 + v9) & 7))) ^ (((__ROR8__(v46, 8) + (v46 ^ __ROR8__(v45, 61))) ^ 0xAF1BD4ED8A66164BLL) >> (8 * (v19 & 7u))) ^ *(v12 + v9);
  return (*(v15 + 8 * ((53 * (((v9 + 1) ^ a4) == 1367649190)) ^ v10)))();
}

uint64_t sub_10012C1A8(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(&STACK[0xDE0] + (v4 + 825 * a3) % 0x1940u);
  *(&STACK[0x320] + 2361 * a3 % 0xA88u) = (((v6 ^ 0x40) + 109) ^ ((v6 ^ 0x1F) + 52) ^ ((v6 ^ 0xB6) - 101)) - 102;
  return (*(v5 + 8 * ((208 * (a3 == 255)) ^ (v3 - 16189))))();
}

uint64_t sub_10012C2AC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = STACK[0x640] + 4 * (v8 * v11 + v17 - (((((v8 * v11 + v17) >> 3) * v12) >> 32) >> 7) * v13);
  v19 = STACK[0x640] + 4 * (v10 + v8 * v11 - (((((v10 + v8 * v11) >> 3) * v12) >> 32) >> 7) * v13);
  v20 = *(*STACK[0x660] + (*v7 & STACK[0x658]));
  v21 = *v15 ^ v16;
  *(v19 + a7) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v19 + v20 + a4) & v21)) ^ *(v18 + a7) ^ (-1962600273 * v18) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v19 + v20 + a4 + 2) & v21)) ^ (-1962600273 * v19) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v18 + v20 + a4) & v21)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v18 + v20 + a4 + 2) & v21));
  return (*(STACK[0x668] + 8 * (((v8 != 255) * v14) ^ v9)))();
}

uint64_t sub_10012C510()
{
  (*(v1 + 8 * (v0 ^ 0x52A3)))(STACK[0x540]);
  v2 = (*(v1 + 8 * (v0 ^ 0x5292)))((LODWORD(STACK[0x6B0]) + LODWORD(STACK[0x680])));
  return (*(v1 + 8 * (((LODWORD(STACK[0x690]) == 20) * ((v0 - 1211083586) ^ 0xB7D0839D)) ^ v0)))(v2);
}

uint64_t sub_10012C5B4@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, int a3@<W5>, uint64_t a4@<X6>, uint64_t a5@<X7>, int a6@<W8>)
{
  v22 = *(v6 + ((((a5 + v9) & (v15 + a6 - 8)) + v20) & v7));
  v23 = (__ROR8__((a5 + v9) & ((v15 + a6 + 820) - 828), 8) + v22) ^ a1;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (v19 - ((v25 + v24) | v19) + ((v25 + v24) | a4)) ^ v12;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ v21;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ a2;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (v32 + v31 - (v13 & (2 * (v32 + v31))) + v14) ^ v17;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ v8;
  v36 = __ROR8__(v35, 8);
  v37 = v35 ^ __ROR8__(v34, 61);
  *(a5 + v9) = ((__ROR8__((v36 + v37) ^ v10, 8) + ((v36 + v37) ^ v10 ^ __ROR8__(v37, 61))) ^ v16) >> (8 * ((a5 + v9) & 7));
  return (*(v18 + 8 * (((v9 != 63) * a3) ^ (v11 - 1410))))();
}

uint64_t sub_10012C6C8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v19 = ((v13 ^ v17) >> v15) + (((v13 ^ v17) & v16) << v12);
  v20 = (((v19 ^ (2 * (v19 & a8))) & a8) << ((v8 - 43) ^ 0xA1)) & a6 ^ v19 ^ (2 * (v19 & a8));
  v21 = *((v20 ^ 0xEA0 ^ (16 * (v20 & a8)) & (4 * (a8 & a4)) & v14) + v18 + 2845) ^ 0x82;
  v22 = (v21 & 0xF) + v9;
  HIDWORD(v23) = v10;
  LODWORD(v23) = v21 << 24;
  v24 = 16 * (*(v18 + ((v23 >> 28) ^ 0x5Bu) + 1294) ^ ~(v23 >> 28));
  v25 = 12337 * (*(v18 + ((v24 & 0x70 | (*((v22 ^ 0xEC) + v18 + 2584) ^ 0x3D) & ~v24) ^ 3) + 2068) ^ 0x65);
  *(STACK[0x8070] + v11 % 0x3282) = *(STACK[0x8070] + v25 - 12930 * (((1328683 * v25) >> 32) >> 2));
  return (*(STACK[0x57D8] + 8 * ((27171 * (v13 == 255)) ^ v8)))();
}

uint64_t sub_10012C860@<X0>(int a1@<W0>, unsigned int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v22 = (((v8 - (v9 & v11) + v12) ^ v20) + v17 - (v15 & (2 * ((v8 - (v9 & v11) + v12) ^ v20)))) ^ v14;
  *(a8 + 4 * v8) = v19 ^ v18 ^ a4 ^ __ROR4__(*(*(a7 + 8 * a3) + 4 * ((v13 + v22 - (a1 & (2 * v22))) ^ a2)), 4) ^ a5;
  return (*(v21 + 8 * (((v10 == 0) * a6) ^ v16)))();
}

uint64_t sub_10012C8D8()
{
  v2 = STACK[0xA20];
  STACK[0x1680] = STACK[0xA20];
  return (*(v1 + 8 * (((((v0 - 11450) | 0x6495) - 27372) * (v2 == 0)) ^ v0)))();
}

uint64_t sub_10012D254()
{
  STACK[0x1D4C8] = v0;
  STACK[0x1D4C0] = 0;
  STACK[0x1D4D0] = 0;
  LODWORD(STACK[0x1D4DC]) = v1 - 711523751 * ((((v2 - 240) | 0x9CE67A46) - ((v2 - 240) & 0x9CE67A46)) ^ 0xACFC5B97) + 6787;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x456A)))(v2 - 240);
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_10012D338@<X0>(int a1@<W8>)
{
  STACK[0x8E98] = v4;
  LODWORD(STACK[0xCE7C]) = a1;
  LODWORD(STACK[0x874C]) = v3;
  LODWORD(STACK[0x8BBC]) = v2;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_10012D4C8()
{
  v2 = *(v0 + 2888);
  v3 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v2 & 0xFFFFFFF8) - 1831847764)) & 0xFFFFFFFFFFFFFFF8));
  v4 = (v3 + __ROR8__(v2 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xC2AF3EAA3FF1B8E4;
  v5 = v4 ^ __ROR8__(v3, 61);
  v6 = __ROR8__(v4, 8);
  v7 = (((2 * (v6 + v5)) & 0x6EDF7F9517E3A772) - (v6 + v5) + 0x48904035740E2C46) ^ 0x2D6214E86C8398BALL ^ __ROR8__(v5, 61);
  v8 = (__ROR8__((((2 * (v6 + v5)) & 0x6EDF7F9517E3A772) - (v6 + v5) + 0x48904035740E2C46) ^ 0x2D6214E86C8398BALL, 8) + v7) ^ 0x6FF046966119128DLL;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = __ROR8__(v8, 8);
  v11 = (v10 + v9 - ((2 * (v10 + v9)) & 0x4408574F584565A8) + 0x22042BA7AC22B2D4) ^ 0x83B6B6627B54A1FFLL;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = __ROR8__(v11, 8);
  v14 = (0xF13D7D0B96B50927 - ((v13 + v12) | 0xF13D7D0B96B50927) + ((v13 + v12) | 0xEC282F4694AF6D8)) ^ 0xE1C6A2B59CAFBE34;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0xD8C7B31FCA19D9DELL;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0x5455012E8AB1C38FLL;
  LODWORD(v2) = 3903 * ((((__ROR8__(v18, 8) + (v18 ^ __ROR8__(v17, 61))) ^ 0x6F4F60BC0E025EE0uLL) >> (8 * (v2 & 7u))) ^ *(v0 + 295)) + 4008381;
  *(*(v0 + 4000) + 38962) = *(*(v0 + 4008) + v2 - 5896 * (((1456909 * v2) >> 32) >> 1));
  v19 = *(v0 + 3984) + 28;
  *(v0 + 296) = v19;
  v20 = STACK[0x57D8];
  v21 = *(STACK[0x57D8] + 8 * (v1 ^ 0x2F4D));
  *(v0 + 2896) = v19;
  *(v0 + 280) = v21;
  return (*(v20 + 8 * (STACK[0x51B8] ^ 0x2346)))();
}

uint64_t sub_10012D8B0(int a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(*(a6 + 4000) + v10 - 35072 * ((((v9 >> 6) * a4) >> 64) >> 1));
  *(*(a6 + 4008) + v7 - 5896 * ((((v7 >> 3) * v8) >> 64) >> 4)) = (((v11 ^ (a1 + 29)) - 113) ^ ((v11 ^ 0xB1) - 83) ^ ((v11 ^ 0xD3) - 49)) + 47;
  return (*(STACK[0x57D8] + 8 * ((3896 * (v6 == 0)) ^ a1)))();
}

void sub_10012D9F4(uint64_t a1)
{
  v1 = *(a1 + 40) ^ (16169987 * (((a1 | 0x7A6F0EE0) - (a1 & 0x7A6F0EE0)) ^ 0x2FE13BC8));
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  v4 = *(a1 + 16);
  v5 = *a1;
  if (v2)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v9 = !v6 && v3 != 0 && v5 != 0;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_10012DB34@<X0>(int a1@<W8>)
{
  v4 = (((a1 - v1 - 2030514413) ^ 0x72F02B27) + 200743458) ^ (a1 - v1 - 2030514413) ^ (((a1 - v1 - 2030514413) ^ 0x645954E) + 2135073865) ^ (((a1 - v1 - 2030514413) ^ 0x79FFEFFE) + 16310009) ^ (((a1 - v1 - 2030514413) ^ (((v2 - 10017) | 0x32B1) - 13402) ^ 0x8BB29D31) - 222974359);
  LODWORD(STACK[0x102C]) = v4 ^ 0x54E44E6D;
  v5 = (*(v3 + 8 * (v2 + 20757)))(v4 ^ 0x86F8CEF9);
  STACK[0x1398] = v5;
  return (*(v3 + 8 * (((v5 != 0) | (16 * (v5 != 0))) ^ v2)))();
}

uint64_t sub_10012DCEC()
{
  v0 = STACK[0x1498] & 0x14E45EFE;
  v1 = STACK[0x9968];
  LODWORD(STACK[0xEBC4]) = STACK[0x7E44];
  return (*(STACK[0x57D8] + 8 * (((v1 == 0x683CBC57EAB92A3ELL) * (v0 - 22585)) ^ LODWORD(STACK[0x149C]))))();
}

uint64_t sub_10012DED8()
{
  v4 = *(v1 + 2872);
  v5 = *STACK[0x51F0];
  v6 = *STACK[0x51E8] & 0xFFFFFFF8;
  v7 = *(v5 + (v6 & ((v4 & 0xFFFFFFF8) - 1831847764)));
  v8 = (v7 + __ROR8__(v4 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xC2AF3EAA3FF1B8E4;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0x65F254DD188DB4FCLL;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0x6FF046966119128DLL;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0xA1B29DC5D776132BLL;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = __ROR8__(v14, 8);
  v17 = __ROR8__((((2 * (v16 + v15)) | 0x8FDF3B3679BA440ELL) - (v16 + v15) + 0x38106264C322DDF9) ^ 0x28EBBDDAC9386AEBLL, 8);
  v18 = (((2 * (v16 + v15)) | 0x8FDF3B3679BA440ELL) - (v16 + v15) + 0x38106264C322DDF9) ^ 0x28EBBDDAC9386AEBLL ^ __ROR8__(v15, 61);
  v19 = (v17 + v18 - ((2 * (v17 + v18)) & 0x1539DC369292054CLL) + 0xA9CEE1B494902A6) ^ 0xD25B5D048350DB78;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0x5455012E8AB1C38FLL;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  LODWORD(v21) = 3903 * ((((0x302CD4DD8642300DLL - ((v23 + v22) ^ 0x45D8D5DBE4E09B4DLL | 0x302CD4DD8642300DLL) + ((v23 + v22) ^ 0x45D8D5DBE4E09B4DLL | 0xCFD32B2279BDCFF2)) ^ 0xE5449E45935F0A5FLL) >> (8 * (v4 & 7u))) ^ *(v1 + 295)) + 4008381;
  v24 = *(v1 + 4008);
  v25 = *(v24 + v21 - 5896 * (((1456909 * v21) >> 32) >> 1));
  v26 = *(v1 + 4000);
  v26[36886] = v25;
  v27 = *(v1 + 3992);
  v28 = *(v5 + (v6 & ((v27 & 0xFFFFFFF8) - 555828759)));
  v29 = (__ROR8__(v27 & 0xFFFFFFFFFFFFFFF8, 8) + v28) ^ 0x91364DCB68334DBLL;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x448D6F6CA711D855;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0xF5F2FED308AA2278;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0x67536EC0FB8B549DLL;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ v3;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0x24734B65A1E08459;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (((2 * (v41 + v40)) & 0x197DFB2FD6460C6) - (v41 + v40) - 0xCBEFD97EB23064) ^ 0xBFFDDFCCBD88047DLL;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = __ROR8__(v42, 8);
  LODWORD(v43) = 3903 * ((((0xA991A83A0AC6ABB2 - ((v44 + v43) | 0xA991A83A0AC6ABB2) + ((v44 + v43) | 0x566E57C5F539544DLL)) ^ 0x390D0BEB10EE868BLL) >> (8 * (v27 & 7u))) ^ *v27) + 4008381;
  v26[39959] = *(v24 + v43 - 5896 * (((1456909 * v43) >> 32) >> 1));
  v45 = *(v1 + 3976);
  v46 = *(v45 + 11);
  v45 += 11;
  v47 = __ROR8__(v45 & 0xFFFFFFFFFFFFFFF8, 8);
  v48 = v47 - ((2 * v47 + 0x1EFB64F383DB817ALL) & 0xE16E3A781E562F8ELL) - 0x7FCB304A2EE7277CLL;
  v49 = v48 ^ 0x2330F62BF63AE8B1;
  v48 ^= 0x58DD65E5F954ED5DuLL;
  v50 = (__ROR8__(v49, 8) + v48) ^ 0x3A7C64F71FBFC65BLL;
  v51 = v50 ^ __ROR8__(v48, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ 0xFBC18F8B9568C440;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ 0x4AE5CE6F63977933;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ 0x2854CB5A8BDB8317;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = __ROR8__(v56, 8);
  v59 = (((2 * (v58 + v57)) | 0x19645D273C61D05ELL) - (v58 + v57) - 0xCB22E939E30E82FLL) ^ 0xFBC032556D9E13F3;
  v60 = v59 ^ __ROR8__(v57, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ 0xE6B7173A9B2BB05DLL;
  LODWORD(v45) = (((__ROR8__(v61, 8) + (v61 ^ __ROR8__(v60, 61))) ^ 0x94AC86FF716F8E22) >> (8 * (v45 & 7u))) ^ v46;
  v26[37716] = *(v24 + 3903 * v45 + 4008381 - 5896 * (((1456909 * (3903 * v45 + 4008381)) >> 32) >> 1));
  v62 = *(v1 + 3984) + 15;
  *(v1 + 296) = v62;
  v63 = STACK[0x57D8];
  v64 = *(STACK[0x57D8] + 8 * (v2 ^ 0x2FF7));
  *(v1 + 2880) = v62;
  *(v1 + 280) = v64;
  return (*(v63 + 8 * (v0 ^ 0x2346)))();
}

uint64_t sub_10012E46C(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v6 = STACK[0xDCB8];
  v7 = *(STACK[0xDCB8] + a2 % 0x1808);
  LODWORD(STACK[0x5530]) = (v4 - 8351) | 0x426;
  v8 = (6419 * (v7 | ((v7 < (((v4 + 97) | 0x26) - 90)) << 8)) + 39027520) % 0x4480;
  v9 = v8 - 8768;
  if (v8 >> 6 < 0x89)
  {
    v9 = v8;
  }

  v10 = STACK[0xDCB0];
  v11 = *(STACK[0xDCB0] + 4 * v9);
  v12 = STACK[0x57C0];
  v13 = STACK[0x54B0];
  LODWORD(STACK[0x5510]) = *(STACK[0x5720] + 243);
  LODWORD(STACK[0x5540]) = *(v12 + 357);
  LODWORD(STACK[0x5640]) = *(STACK[0x57A0] + 1146);
  LODWORD(STACK[0x5600]) = *(STACK[0x5300] + 3065);
  LODWORD(STACK[0x5520]) = *(STACK[0x5680] + 175);
  LODWORD(STACK[0x5630]) = *(v5 + 1237);
  LODWORD(STACK[0x5620]) = *(STACK[0x5580] + 1055);
  v14 = *(v6 + (5621 * (((v11 ^ 0x7269A12E) - 1507977825) ^ ((v11 ^ 0x235459F4) - 148640443) ^ ((v11 ^ 0x513DF83Cu) - 2058728307)) - 645006105) % 0x1808);
  v15 = *(v6 + (5621 * (((HIBYTE(v11) ^ 0xF47E091B) - 920093965) ^ ((HIBYTE(v11) ^ 0x8C2B3CE7) - 1317187825) ^ ((HIBYTE(v11) ^ 0x785535BE) + 1157842520)) + 917432206) % 0x1808);
  LOBYTE(v11) = *(v6 + 5621 * (BYTE1(v11) ^ 0x8F) + 32028458 - 6152 * (((89362129 * (5621 * (BYTE1(v11) ^ 0x8Fu) + 32028458)) >> 32) >> 7));
  LOBYTE(v12) = *(v6 + 5621 * (BYTE2(v11) ^ 0x38) + 32028458 - 6152 * (((89362129 * (5621 * (BYTE2(v11) ^ 0x38u) + 32028458)) >> 32) >> 7));
  v16 = v15 & 4 | 0x68;
  v17 = v12 & 0x14 ^ 0x70;
  v18 = v11 & 0x58 ^ 0xD2;
  LODWORD(v12) = (((v12 ^ (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * v17) ^ v17)) ^ v17)) ^ v17)) ^ v17))) ^ 0x14) << 8) | (((v15 ^ (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * v16) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16))) ^ 4) << 16);
  v19 = v14 & 0x84 ^ 0xA8;
  LODWORD(STACK[0x5610]) = *(v13 + 888);
  v20 = *(STACK[0x5730] + 835);
  *(v10 + 4 * (a3 % 0x2240)) = ((((((v11 ^ (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * v18) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18))) ^ 0x521F48) & ~v12 | v12 & 0xADE000) << 8) ^ 0x9B600ABC) & ((v14 ^ (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * v19) ^ v19)) ^ v19)) ^ v19)) ^ v19))) ^ 0xFFFFFF78) | (v14 ^ (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * v19) ^ v19)) ^ v19)) ^ v19)) ^ v19))) & 0x43) ^ 0x8B47955A;
  return (*(STACK[0x57D8] + 8 * ((8542 * (v3 == 0)) ^ v4)))(v20, a2 + 5621, a3 + 6419);
}

uint64_t sub_10012E8DC@<X0>(int a1@<W0>, int a2@<W8>)
{
  v3 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * (a2 - 9744));
  return (*(v3 + 8 * ((a2 - 9744) ^ 0x5D8B21E8 ^ (a1 + a2 - 9744 + 610) & 0x5D9B3EDF)))(v2 + 517);
}

uint64_t sub_10012E970()
{
  STACK[0x1D4C8] = v1;
  LODWORD(STACK[0x1D4C0]) = v0 - 1097177827 * ((v2 + 1881185638 - 2 * ((v2 - 240) & 0x70209E56)) ^ 0x34B3C83F) + 16557;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v0 + 25317)))(v2 - 240);
  return (*(v3 + 8 * ((28568 * (LODWORD(STACK[0x1D4D0]) == ((3903 * (v0 ^ 0x1934)) ^ 0x75EB) - 143135685)) ^ v0)))(v4);
}

uint64_t sub_10012EA6C()
{
  if (STACK[0xB168])
  {
    v1 = LODWORD(STACK[0x7A54]) == v0;
  }

  else
  {
    v1 = 1;
  }

  v3 = v1 || LODWORD(STACK[0x7880]) != 20;
  return (*(STACK[0x57D8] + 8 * ((((((LOBYTE(STACK[0x3738]) | 0x40) - 47) ^ v3) & 1) * (((LODWORD(STACK[0x3738]) | 0x940) ^ 0x2828F959) - 673763658)) ^ (LODWORD(STACK[0x3738]) | 0x940))))();
}

uint64_t sub_10012EC24()
{
  v1 = STACK[0x57D8];
  STACK[0x9A00] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 - 24784 + v0 + 29181)))();
}

uint64_t sub_10012EC94(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  LODWORD(STACK[0x4708]) = LODWORD(STACK[0x5440]) | LODWORD(STACK[0x54C0]);
  LODWORD(STACK[0x4718]) = LODWORD(STACK[0x5308]) | LODWORD(STACK[0x53C0]);
  LODWORD(STACK[0x4710]) = LODWORD(STACK[0x5298]) | LODWORD(STACK[0x5790]);
  LODWORD(STACK[0x5440]) = STACK[0x51B0] & (LODWORD(STACK[0x5270]) ^ 0x896CCDF0);
  LODWORD(STACK[0x53C0]) = STACK[0x5130] & (LODWORD(STACK[0x5148]) ^ 0x284F1599);
  v8 = a3 & 0x30 ^ 0xAE;
  v9 = a6 & 0xF0 | 0xE;
  v10 = (((a3 ^ (2 * ((a3 ^ 0x64) & (2 * ((a3 ^ 0x64) & (2 * ((a3 ^ 0x64) & (2 * ((a3 ^ 0x64) & (2 * ((a3 ^ 0x64) & (2 * v8) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8))) ^ 0x30) << 16) | (((a6 ^ (2 * ((a6 ^ 0x64) & (2 * ((a6 ^ 0x64) & (2 * ((a6 ^ 0x64) & (2 * ((a6 ^ 0x64) & (2 * ((a6 ^ 0x64) & (2 * v9) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9))) ^ 0xF0) << 8);
  v11 = v6 & 0xA2 ^ 0xE7;
  LODWORD(STACK[0x5790]) = ((((v6 ^ (2 * ((v6 ^ 0x64) & (2 * ((v6 ^ 0x64) & (2 * ((v6 ^ 0x64) & (2 * ((v6 ^ 0x64) & (2 * ((v6 ^ 0x44) & (2 * ((v6 ^ 0x44) & 6 ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11))) ^ 0x897A31) & ~v10 | v10 & 0x768500) << 8) & 0xD436BF00;
  return (*(STACK[0x57D8] + 8 * v7))();
}

uint64_t sub_10012F574()
{
  v1 = STACK[0x51B8] - 140;
  v2 = STACK[0xE1D8] + 10 + (v0 ^ 0xD21C8094);
  STACK[0xD580] = v2;
  return (*(STACK[0x57D8] + 8 * ((39 * (v2 > STACK[0xE1D0])) ^ v1)))();
}

uint64_t sub_10012F5E0()
{
  STACK[0x5F50] = STACK[0x6E80];
  LODWORD(STACK[0xCBBC]) = STACK[0x73FC];
  LODWORD(STACK[0xBA7C]) = STACK[0x9790];
  return (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x13F4])))();
}

uint64_t sub_10012F63C()
{
  v2 = STACK[0xB290];
  v3 = 1534937323 * ((~((v1 - 240) | 0x8DF15481BAA9BC34) + ((v1 - 240) & 0x8DF15481BAA9BC34)) ^ 0xBF7623BC83B8B88CLL);
  STACK[0x1D4D8] = v3;
  STACK[0x1D4C0] = v2 ^ v3;
  LODWORD(STACK[0x1D4C8]) = ((v0 - 506319448) ^ 0xE40) - v3;
  LODWORD(STACK[0x1D4E0]) = v3 + v0 - 506319448 - 89;
  LODWORD(STACK[0x1D4D0]) = v3;
  LODWORD(STACK[0x1D4D4]) = (v0 - 506319448) ^ v3;
  LODWORD(STACK[0x1D4CC]) = v3 + v0 + 1451493860;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x2462)))(v1 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4E4])))(v5);
}

uint64_t sub_10012F718()
{
  v4 = *(v1 + 8 * (v2 + 1211080288));
  LODWORD(STACK[0x870]) = v2 - 1457175239;
  LODWORD(STACK[0x850]) = (v2 - 1457175239) ^ 0x25;
  LODWORD(STACK[0x840]) = v2 - 1457175689;
  STACK[0x830] = 551690071 * ((((2 * (v3 - 240)) | 0x1A93C44414681054) - (v3 - 240) - 0xD49E2220A34082ALL) ^ 0x7CD4B0EC44D95B7DLL);
  LODWORD(STACK[0x780]) = v2 + 1245379814;
  LODWORD(STACK[0x880]) = STACK[0xC30];
  STACK[0x790] = v0;
  return v4();
}

uint64_t sub_10012F94C(uint64_t a1)
{
  v3 = STACK[0x1BE8] + 10 + (v1 ^ 0xD21C8094);
  STACK[0x1A00] = v3;
  return (*(v2 + 8 * (((4 * (v3 > STACK[0x1BE0])) | (32 * (v3 > STACK[0x1BE0]))) ^ 0x658F)))(a1, 1211082140);
}

uint64_t sub_10012FA00()
{
  v3 = *(v0 + 2800);
  v4 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v3 & 0xFFFFFFF8) - 1831847764)) & 0xFFFFFFFFFFFFFFF8));
  v5 = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  v6 = __ROR8__((((2 * (v4 + v5)) & 0xADD27282D66A3E44) - (v4 + v5) + 0x2916C6BE94CAE0DDLL) ^ 0xEBB9F814AB3B5839, 8);
  v7 = (((2 * (v4 + v5)) & 0xADD27282D66A3E44) - (v4 + v5) + 0x2916C6BE94CAE0DDLL) ^ 0xEBB9F814AB3B5839 ^ __ROR8__(v4, 61);
  v8 = (v6 + v7 - ((2 * (v6 + v7)) & 0x8FC4E92DA0958502) - 0x381D8B692FB53D7FLL) ^ 0xA210204BC8C7767DLL;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = __ROR8__(v8, 8);
  v11 = (0x12F4BE8A6BA9447FLL - ((v10 + v9) | 0x12F4BE8A6BA9447FLL) + ((v10 + v9) | 0xED0B41759456BB80)) ^ 0x82FB07E3F54FA90DLL;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0xA1B29DC5D776132BLL;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ v2;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xD8C7B31FCA19D9DELL;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x5455012E8AB1C38FLL;
  LODWORD(v19) = (((__ROR8__(v19, 8) + (v19 ^ __ROR8__(v18, 61))) ^ 0x6F4F60BC0E025EE0uLL) >> (8 * (v3 & 7u))) ^ *(v0 + 295);
  LOBYTE(v6) = *(v0 + 2794);
  LOBYTE(v6) = v6 ^ *(v0 + 2784) ^ (2 * (((2 * (((2 * (((2 * (((2 * (v6 ^ 0x24)) & 0x48 ^ 0x2C) & (v6 ^ 0x24))) ^ 0x2C) & (v6 ^ 0x24))) ^ 0x2C) & (v6 ^ 0x24))) ^ 0x2C) & (v6 ^ 0x64)));
  *(v0 + 2811) = (((v6 ^ 0xC2) - 89) ^ ((v6 ^ 0x65) + 2) ^ ((v6 ^ 0xB3) - 40)) - 85;
  LOBYTE(v6) = *(v0 + 2786);
  LOBYTE(v6) = v6 ^ *(v0 + 2789) ^ (2 * (((2 * (((2 * (((2 * (((2 * (v6 ^ 0x24)) & 0x48 ^ 0x2C) & (v6 ^ 0x24))) ^ 0x2C) & (v6 ^ 0x24))) ^ 0x2C) & (v6 ^ 0x24))) ^ 0x2C) & (v6 ^ 0x64)));
  *(v0 + 2812) = (((v6 ^ 0xCA) + 22) ^ ((v6 ^ 0x3F) - 31) ^ ((v6 ^ 0x62) - 66)) - 45;
  LOBYTE(v6) = *(v0 + 2780) ^ *(v0 + 2778) ^ *(v0 + 2779) ^ *(v0 + 2781) ^ *(v0 + 2788);
  *(v0 + 2813) = (((v6 ^ 0x2E) - 112) ^ ((v6 ^ 0xAE) + 16) ^ ((v6 ^ 0xEC) + 78)) + 78;
  LOBYTE(v19) = *(*(v0 + 4008) + 3903 * v19 + 4008381 - 5896 * (((1456909 * (3903 * v19 + 4008381)) >> 32) >> 1));
  LOBYTE(v6) = *(v0 + 2788) ^ *(v0 + 2785);
  *(v0 + 2814) = (((v6 ^ 0xCC) + 30) ^ ((v6 ^ 0x99) + 73) ^ ((v6 ^ 0x15) - 59)) - 118;
  *(*(v0 + 4000) + 36056) = v19;
  LOBYTE(v19) = *(v0 + 2790);
  *(v0 + 2815) = (*(v0 + 2787) ^ v19 ^ (2 * (((2 * (((2 * (((2 * (((2 * (v19 ^ 0x24)) & 0x58 ^ 0x2C) & (v19 ^ 0x24))) ^ 0x2C) & (v19 ^ 0x24))) ^ 0x2C) & (v19 ^ 0x24))) ^ 0x2C) & *(v0 + 2793))) ^ 0xC5) + 28;
  v20 = *(v0 + 3984) + 39;
  *(v0 + 296) = v20;
  v21 = STACK[0x57D8];
  v22 = *(STACK[0x57D8] + 8 * (LODWORD(STACK[0x4D68]) | 0x7328));
  *(v0 + 2816) = v20;
  *(v0 + 280) = v22;
  return (*(v21 + 8 * (v1 ^ 0x2F92)))();
}

uint64_t sub_10012FE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(STACK[0xFE78] + (3903 * v4 + 17079528) % 0x1708u);
  v7 = *(STACK[0xFE78] + (3903 * (v6 | ((v6 < 0x1C) << 8)) + 10947915) % 0x1708);
  v8 = v7 & 0xFFFFFFEA ^ 0xFFFFFF83;
  *(STACK[0xFE70] + 4 * (((((v5 - 719510117) & 0x2AE2AEB5u) + 2717) * v4 + 21613735) % 0x2240)) = 1288004849;
  return (*(STACK[0x57D8] + 8 * v5))(a1, v7 ^ (2 * ((v7 ^ 0x64) & (2 * ((v7 ^ 0x64) & (2 * ((v7 ^ 0x64) & (2 * ((v7 ^ 0x64) & (2 * ((v7 ^ 0x44) & (2 * ((v7 ^ 0x44) & 0xE ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ 0xFFFFFFEA, STACK[0xFE70], a4, (2717 * v4 + 21613735) % 0x2240u);
}

void sub_10012FF78(uint64_t a1)
{
  v1 = *(a1 + 8) - 289235981 * ((a1 - 1760842545 - 2 * (a1 & 0x970BACCF)) ^ 0x10897CF0);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_10013008C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, unsigned int a55, unsigned int a56, uint64_t a57, uint64_t a58, int a59, int a60, uint64_t a61, uint64_t a62, char a63)
{
  v76 = a60 - 5123;
  v77 = *(v75 - 164);
  v78 = (v77 ^ *(v75 - 116)) & 0x3F;
  v168 = *(v75 - 159);
  v159 = *(v75 - 165);
  v79 = *(v75 - 158);
  v80 = (126 * (*(v75 - 117) ^ v159) * (*(v75 - 117) ^ v159)) ^ *(v75 - 117) ^ v159;
  v81 = (46 * (*(v75 - 111) ^ v168) * (*(v75 - 111) ^ v168)) ^ *(v75 - 111) ^ v168;
  v156 = *(v75 - 155);
  v82 = v156 ^ *(v75 - 107);
  v165 = *(v75 - 162);
  v186 = (16 * (v78 ^ 0x1D ^ (-86 * v78 * v78))) | (2 * ((v78 ^ 0x1D ^ (-86 * v78 * v78)) & 3));
  v154 = *(v75 - 167);
  v176 = (16 * (v80 - ((2 * v80) & 0xA6) + 83)) | (2 * ((v80 - ((2 * v80) & 0xA6) + 83) & 3));
  v184 = (16 * v81) | (2 * (v81 & 3));
  v83 = *(v75 - 119) ^ v154 ^ 0x97 ^ (-118 * (*(v75 - 119) ^ v154) * (*(v75 - 119) ^ v154));
  v84 = *(v75 - 153);
  v85 = v84 ^ *(v75 - 105);
  v86 = *(v75 - 154);
  v87 = *(v75 - 114) ^ v165 & 0xF;
  v187 = (16 * v83) | (2 * (v83 & 3));
  v157 = *(v75 - 163);
  v180 = (16 * (v82 ^ 0xDE ^ (-26 * v82 * v82))) | (2 * ((v82 ^ 0xDE ^ (-26 * v82 * v82)) & 3));
  v185 = (16 * (v85 ^ 0xD2 ^ (-34 * v85 * v85))) | (2 * ((v85 ^ 0xD2 ^ (-34 * v85 * v85)) & 3));
  v88 = *(v75 - 109);
  v177 = *(v75 - 110) ^ v79 ^ 0x92 ^ (-126 * (*(v75 - 110) ^ v79) * (*(v75 - 110) ^ v79));
  v89 = *(v75 - 115) ^ v157 ^ 0x6D ^ (-102 * (*(v75 - 115) ^ v157) * (*(v75 - 115) ^ v157));
  v90 = *(v75 - 157);
  v181 = (16 * (v87 ^ 0x25 ^ (-58 * v87 * v87))) | (2 * ((v87 ^ 0x25 ^ (-58 * v87 * v87)) & 3));
  v91 = (*(v75 - 106) ^ v86 ^ (10 * (*(v75 - 106) ^ v86) * (*(v75 - 106) ^ v86))) & 0x1F ^ 0x13;
  v92 = (v90 ^ v88 ^ 0xCD) & (126 * (v90 ^ v88) * (v90 ^ v88)) & 0x3E ^ ((126 * (v90 ^ v88) * (v90 ^ v88)) | v90 ^ v88 ^ 0xCD);
  v93 = *(v75 - 161);
  v182 = (16 * v89) | (2 * (v89 & 3));
  v164 = *(v75 - 161);
  v94 = *(v75 - 113) ^ v93 ^ 0x95 ^ (-78 * (*(v75 - 113) ^ v93) * (*(v75 - 113) ^ v93));
  v183[0] = (16 * v92) | (2 * (v92 & 3));
  v95 = *(v75 - 160);
  v96 = *(v75 - 168);
  v97 = v96 ^ *(v75 - 120) ^ 0x1A ^ (78 * (v96 ^ *(v75 - 120)) * (v96 ^ *(v75 - 120)));
  v178 = *(v75 - 112) ^ v95 ^ 0x5A ^ (-70 * (*(v75 - 112) ^ v95) * (*(v75 - 112) ^ v95));
  v175[0] = (16 * v94) | (2 * (v94 & 3));
  v98 = *(v75 - 166);
  v99 = v98 ^ *(v75 - 118);
  v100 = *(v75 - 156) ^ *(v75 - 108);
  v170 = *(v75 - 156);
  v179 = (16 * v97) | (2 * (v97 & 3));
  v174[0] = (16 * (v100 ^ (-110 * v100 * v100) ^ 0xE7)) | (2 * ((v100 ^ (-110 * v100 * v100) ^ 0xE7) & 3));
  v101 = (-122 * (v95 ^ HIWORD(v74)) * (v95 ^ HIWORD(v74))) ^ v95 ^ HIWORD(v74);
  v102 = v170 ^ HIBYTE(v74) ^ (10 * (v170 ^ HIBYTE(v74)) * (v170 ^ HIBYTE(v74))) ^ 0x27;
  v169 = (16 * (v99 ^ 0x52 ^ (-50 * v99 * v99))) | (2 * ((v99 ^ 0x52 ^ (-50 * v99 * v99)) & 3));
  v166 = (16 * (v96 ^ 0xDE ^ (102 * v96 * v96))) | (2 * ((v96 ^ 0xDE ^ (102 * v96 * v96)) & 3));
  v103 = (-102 * (v93 ^ (a55 >> 8)) * (v93 ^ (a55 >> 8))) ^ v93 ^ (a55 >> 8);
  v173 = (16 * v101) | (2 * (v101 & 3));
  v172 = v103 ^ 0x9D;
  v171 = (v103 ^ 0x9D | 3) ^ v103;
  v107 = v98 & 1;
  if ((v98 & 1 & v73) != 0)
  {
    v107 = -v107;
  }

  v105 = v86 ^ HIBYTE(v73) ^ 0x79 ^ (58 * (v86 ^ HIBYTE(v73)) * (v86 ^ HIBYTE(v73)));
  v161 = (16 * v105) | (2 * (v105 & 3));
  LOBYTE(v105) = (-106 * ((v107 + v73) ^ v98 & 0xFE) * ((v107 + v73) ^ v98 & 0xFE)) ^ (v107 + v73) ^ v98 & 0xFE;
  v104 = v90 ^ HIWORD(a55) ^ 0xFFFFFFE9 ^ (-78 * (v90 ^ HIWORD(a55)) * (v90 ^ HIWORD(a55)));
  v167 = (16 * v104) | (2 * (v104 & 3));
  v162 = v105 ^ 0x51;
  v163 = (v105 ^ 0x51 | 3) - (v105 ^ 0x52);
  LOBYTE(v105) = (22 * (v84 ^ HIBYTE(a55)) * (v84 ^ HIBYTE(a55))) ^ v84 ^ HIBYTE(a55) ^ 0x99;
  v108 = (-14 * (v156 ^ HIBYTE(a56)) * (v156 ^ HIBYTE(a56))) ^ v156 ^ HIBYTE(a56);
  v109 = (32 * (*(v75 - 162) ^ (v73 >> 8)) * (*(v75 - 162) ^ (v73 >> 8))) ^ (16 * (*(v75 - 162) ^ (v73 >> 8)));
  v106 = (-122 * (v154 ^ a56) * (v154 ^ a56)) ^ v154 ^ a56;
  v110 = (16 * v106) | (2 * (v106 & 3));
  v111 = (78 * (v159 ^ a55) * (v159 ^ a55)) ^ v159 ^ a55;
  v112 = v79 ^ HIWORD(v73) ^ 0xFFFFFF92 ^ (50 * (v79 ^ HIWORD(v73)) * (v79 ^ HIWORD(v73)));
  v155 = ((v109 ^ 0x10u) >> 3) & 6 | v109 ^ 0x10;
  v158 = (16 * v108) | (2 * (v108 & 3));
  v160 = ((16 * v111) | (2 * (v111 & 3))) ^ 0x41;
  v113 = (16 * v105) | (2 * (v105 & 3));
  v114 = v77 ^ (v74 >> 8);
  v115 = v114 & 0x40;
  if (((102 * v114 * v114) & v114 & 0x40) != 0)
  {
    v115 = -v115;
  }

  v116 = (16 * v112) | (2 * (v112 & 3));
  v118 = v114 ^ 0x55 ^ (v115 + 102 * v114 * v114);
  v119 = v86 ^ *(v75 - 170);
  if ((((-110 * (v168 ^ HIWORD(a56)) * (v168 ^ HIWORD(a56))) ^ v168 ^ HIWORD(a56)) & 0x10) != 0)
  {
    v120 = -16;
  }

  else
  {
    v120 = 16;
  }

  v121 = v120 + ((-110 * (v168 ^ BYTE2(a56)) * (v168 ^ BYTE2(a56))) ^ v168 ^ BYTE2(a56));
  v122 = (16 * v118) | (2 * (v118 & 3));
  v117 = v157 ^ (a56 >> 8) ^ 0xFFFFFFEB ^ (-34 * (v157 ^ (a56 >> 8)) * (v157 ^ (a56 >> 8)));
  v123 = (16 * v117) | (2 * (v117 & 3));
  v124 = v121 ^ 0x85;
  v125 = *(v75 - 180) ^ v77;
  v126 = (16 * v124) | (2 * (v124 & 3));
  v127 = (16 * (v119 ^ (22 * v119 * v119) ^ 0xF3)) | (2 * ((v119 ^ (22 * v119 * v119) ^ 0xF3) & 3));
  v128 = *(v75 - 184) ^ v96 ^ 0x9A ^ ((-102 * (*(v75 - 184) ^ v96) * (*(v75 - 184) ^ v96)) & 0xFC | (2 * (((*(v75 - 184) ^ v96) * (*(v75 - 184) ^ v96)) & 1)));
  v129 = (82 * (v95 ^ *(v75 - 176)) * (v95 ^ *(v75 - 176))) ^ v95 ^ *(v75 - 176);
  v130 = (v125 ^ (2 * v125 * v125)) & 0xF;
  v131 = (16 * v128) | (2 * (v128 & 3));
  LOBYTE(v117) = v84 ^ *(v75 - 169) ^ 0x56 ^ (-42 * (v84 ^ *(v75 - 169)) * (v84 ^ *(v75 - 169)));
  v132 = (16 * (v130 ^ 2)) | (2 * ((v130 ^ 2) & 3));
  v133 = (16 * v117) | (2 * (v117 & 3));
  v134 = (16 * v129) | (2 * (v129 & 3));
  v137 = *(v75 - 175) ^ v168 ^ 0x52 ^ (50 * (*(v75 - 175) ^ v168) * (*(v75 - 175) ^ v168));
  v138 = *(v75 - 173);
  v139 = v138 & 0x20;
  if ((v138 & 0x20 & v90) != 0)
  {
    v139 = -v139;
  }

  v140 = (v139 + v90) ^ v138;
  v136 = *(v75 - 174) ^ 0xEB ^ (2 * (*(v75 - 174) ^ 0xEB) * (*(v75 - 174) ^ 0xEB)) ^ 0x46;
  v141 = (16 * v136) | (2 * (v136 & 3));
  v142 = (26 * v140 * v140) ^ v140;
  v135 = *(v75 - 183) ^ v154;
  v143 = (16 * (v135 ^ (-74 * v135 * v135) ^ 0xC1)) | (2 * ((v135 ^ (-74 * v135 * v135) ^ 0xC1) & 3));
  v144 = v142 & 0x1F ^ 0x43;
  v145 = *(v75 - 181) ^ v159 ^ 0x89 ^ (-70 * (*(v75 - 181) ^ v159) * (*(v75 - 181) ^ v159));
  v146 = v156 ^ *(v75 - 171);
  v147 = (16 * v144) | (2 * (v144 & 3));
  v148 = ((82 * (v157 ^ *(v75 - 179)) * (v157 ^ *(v75 - 179))) ^ v157 ^ *(v75 - 179)) & 0x1F ^ 6;
  *(v75 - 157) = (16 * v177) | (2 * (v177 & 3)) | 1;
  *(v75 - 150) = v180 | 1;
  v149 = v98 ^ *(v75 - 182);
  *(v75 - 166) = v176 | 1;
  v150 = v164 ^ *(v75 - 177);
  *(v75 - 132) = (16 * v91) | (2 * (v91 & 3)) | 1;
  *(v75 - 149) = v186 | 1;
  *(v75 - 156) = v184 ^ 0x81;
  *(v75 - 159) = v181 | 1;
  *(v75 - 138) = v113 | 1;
  *(v75 - 133) = v166 | 1;
  *(v75 - 130) = v110 | 1;
  *(v75 - 141) = (16 * (v146 ^ 0xA6 ^ (38 * v146 * v146))) | (2 * ((v146 ^ 0xA6 ^ (38 * v146 * v146)) & 3)) | 1;
  *(v75 - 162) = (16 * v137) | (2 * (v137 & 3)) | 1;
  v151 = *(v75 - 172) ^ v170;
  *(v75 - 123) = v169 | 1;
  *(v75 - 154) = v175[0] | 1;
  *(v75 - 167) = v161 | 1;
  *(v75 - 161) = v182 | 1;
  *(v75 - 165) = v155 | 1;
  *(v75 - 144) = v185 | 1;
  *(v75 - 140) = (16 * v178 + 2 * ((v178 - 2 * (v178 & 3) + 3) ^ (v178 | 3))) | 1;
  *(v75 - 158) = (16 * (v150 ^ 0xD6 ^ (74 * v150 * v150))) | (2 * ((v150 ^ 0xD6 ^ (74 * v150 * v150)) & 3)) | 1;
  *(v75 - 122) = v187 | 1;
  *(v75 - 126) = v127 | 1;
  *(v75 - 137) = ((16 * ((102 * v149 * v149) ^ v149)) | (2 * (((102 * v149 * v149) ^ v149) & 3))) ^ 0xA5;
  *(v75 - 153) = v174[0] | 1;
  *(v75 - 134) = (16 * v145) | (2 * (v145 & 3)) | 1;
  *(v75 - 143) = v122 | 1;
  *(v75 - 121) = (16 * v162 + 2 * v163) | 1;
  *(v75 - 151) = v134 ^ 0x81;
  *(v75 - 139) = v158 ^ 0xC1;
  *(v75 - 124) = (16 * v102) | (2 * (v102 & 3)) | 1;
  *(v75 - 164) = ((2 * v171) ^ 0x3D) + 16 * v172;
  *(v75 - 129) = v183[0] | 1;
  *(v75 - 155) = v131 | 1;
  *(v75 - 125) = v141 | 1;
  *(v75 - 160) = (16 * v148) | (2 * (v148 & 3)) | 1;
  *(v75 - 136) = v116 | 1;
  *(v75 - 142) = v133 | 1;
  v152 = *(v75 - 178);
  *(v75 - 145) = v147 | 1;
  *(v75 - 135) = v126 | 1;
  *(v75 - 152) = v160;
  *(v75 - 163) = v167 | 1;
  *(v75 - 131) = v143 | 1;
  *(v75 - 148) = (16 * (v152 ^ v165 ^ (34 * (((v152 ^ v165) * (v152 ^ v165)) & 0x1F)))) | (2 * ((v152 ^ v165 ^ (34 * (((v152 ^ v165) * (v152 ^ v165)) & 0x1F))) & 3)) | 1;
  *(v75 - 168) = v132 | 1;
  *(v75 - 128) = v123 | 1;
  *(v75 - 127) = v179 | 1;
  *(v75 - 147) = v173 | 1;
  *(v75 - 146) = (16 * (v151 ^ 0x36 ^ (-106 * v151 * v151))) | (2 * ((v151 ^ 0x36 ^ (-106 * v151 * v151)) & 3)) | 1;
  LOBYTE(STACK[0x3E2]) = 38;
  a65 = -10;
  LOBYTE(STACK[0x61C]) = 120;
  LOBYTE(STACK[0x9F6]) = 114;
  a73 = 119;
  LOBYTE(STACK[0xA43]) = -33;
  LOBYTE(STACK[0x5CF]) = -7;
  LOBYTE(STACK[0x809]) = -65;
  return (*(a62 + 8 * v76))(&a63, 66, 4294967172, 4294967217, 206);
}

uint64_t sub_100130C0C()
{
  v0 = 547 * (STACK[0x51B8] ^ 0x5849);
  STACK[0x7700] = 0;
  v1 = STACK[0x57D8];
  STACK[0xBDE0] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0xC64]));
  return (*(v1 + 8 * (LODWORD(STACK[0xC5C]) + v0)))(0x308E083E0C524CBELL);
}

uint64_t sub_100130CCC()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 - 1348800312)))();
  STACK[0x7818] = 0;
  return (*(v1 + 8 * ((5197 * (v0 < 0x7ACCABB0)) ^ (v0 - 1348820010))))(v2);
}

uint64_t sub_100130D30()
{
  v1 = (((LODWORD(STACK[0x7040]) ^ 0xF7603378) + 144690312) ^ ((LODWORD(STACK[0x7040]) ^ 0x6724A57B) - 1730454907) ^ ((LODWORD(STACK[0x7040]) ^ 0x42581697) - 1113069207)) - 570171241;
  v2 = (((LODWORD(STACK[0x6450]) ^ 0xF43F783D) + 197167043) ^ ((LODWORD(STACK[0x6450]) ^ 0x2903F316) - 688124694) ^ (((((v0 - 1651384127) & 0x626E5AFE ^ 0xF1F82B1) + ((v0 - 3054) | 0x3020)) ^ LODWORD(STACK[0x6450])) - 253758399)) - 570171241;
  v3 = (v1 < 0xBE76003) ^ (v2 < 0xBE76003);
  v4 = v1 < v2;
  if (v3)
  {
    v4 = v2 < 0xBE76003;
  }

  return (*(STACK[0x57D8] + 8 * ((105 * v4) ^ v0)))();
}

uint64_t sub_100130EBC(uint64_t a1, int a2, unsigned int a3, uint64_t a4, unint64_t a5)
{
  v9 = (v6 + v7);
  v10 = (a4 + v7);
  v11 = v9[1];
  *v10 = *v9;
  v10[1] = v11;
  return (*(STACK[0x57D8] + 8 * (((((v5 + 30787459) & a3 ^ a5) + v7 == 96) * a2) ^ v8)))();
}

uint64_t sub_100130F5C(void *a1)
{
  a1[31] = *(STACK[0x4D10] + 24) + 16 * a1[414];
  a1[32] = 0xD38CBDD3ACAFF84ALL;
  v1 = STACK[0x57D8];
  a1[30] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x41EC]));
  return (*(v1 + 8 * SLODWORD(STACK[0x41E8])))();
}

uint64_t sub_100130FA8()
{
  v1 = STACK[0x51B8] - 8600;
  LODWORD(STACK[0x940C]) = v0;
  v2 = SLOWORD(STACK[0xD55E]);
  STACK[0xBD10] = STACK[0xD560];
  return (*(STACK[0x57D8] + 8 * ((28815 * (v2 == -2993)) ^ v1)))();
}

uint64_t sub_100131018()
{
  v0 = 3 * (STACK[0x51B8] ^ 0x58A5);
  v1 = STACK[0x57D8];
  v2 = STACK[0xFA0];
  STACK[0x8CA8] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0xFA0]));
  return (*(v1 + 8 * ((31847 * (LODWORD(STACK[0xF9C]) > 0xFD00CAA8)) ^ (v2 + 9543 + v0))))();
}

uint64_t sub_1001310FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x5620] = v4;
  STACK[0x5650] = v7;
  LODWORD(STACK[0xA3D4]) = v6 << (v5 + 75 + 3 * (v5 ^ 0x13));
  return (*(STACK[0x57D8] + 8 * (v5 ^ (22534 * (v3 == 0)))))(a1, a2, a3, 0x7D0ACAAAE9EC381DLL, 0xB057743BD1A8F5BCLL, STACK[0x57C0], 395);
}

uint64_t sub_1001311D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *STACK[0x9370];
  v8 = STACK[0x8E30];
  v9 = STACK[0x57D8];
  STACK[0x5F68] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x41B8]));
  return (*(v9 + 8 * SLODWORD(STACK[0x41B4])))(a1, v7, a3, a4, a5, a6, a7, v8);
}

uint64_t sub_10013121C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  LODWORD(STACK[0x7A04]) = a2;
  LODWORD(STACK[0xBC48]) = v5;
  STACK[0x7890] = v7;
  STACK[0xC118] = v6;
  LOBYTE(STACK[0x782F]) = v4;
  v9 = STACK[0x7ED8];
  STACK[0x7AF8] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = (v2 + 5392) + v9 - 12929;
  STACK[0xA428] = v8;
  STACK[0x6DE0] = v3;
  LOWORD(STACK[0x6622]) = -3415;
  STACK[0xC8C0] = v8;
  *(a1 + 2016) = a2;
  STACK[0xA398] = &STACK[0x6622];
  *(a1 + 4148) = 1068836078;
  return (*(STACK[0x57D8] + 8 * v2))(88);
}

uint64_t sub_1001312E8()
{
  LODWORD(STACK[0x6A68]) = v1;
  v3 = *(STACK[0xC268] - 0x79296B4A625EDC74);
  v4 = STACK[0x1BA8];
  v5 = v0 - STACK[0x1BA8] + 2026769119;
  LODWORD(STACK[0x1D4C8]) = v0 - STACK[0x1BA8] + 2026769094;
  LODWORD(STACK[0x1D4CC]) = v5;
  STACK[0x1D4D8] = v3 - v4;
  LODWORD(STACK[0x1D4C0]) = (v0 - 1079089617) ^ v4;
  LODWORD(STACK[0x1D4C4]) = (v0 + 2026771985) ^ v4;
  LODWORD(STACK[0x1D4D0]) = v4;
  STACK[0x1D4E0] = v4;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x2411)))(v2 - 240);
  return (*(v6 + 8 * SLODWORD(STACK[0x1D4D4])))(v7);
}

uint64_t sub_1001313B4@<X0>(int a1@<W2>, char a2@<W3>, _BYTE *a3@<X4>, char a4@<W5>, char a5@<W6>, char a6@<W8>)
{
  LODWORD(STACK[0x46F8]) = LODWORD(STACK[0x54D0]) | LODWORD(STACK[0x5510]);
  LODWORD(STACK[0x4700]) = LODWORD(STACK[0x5440]) | LODWORD(STACK[0x5480]);
  v19 = v10 & 0x74 ^ 0xE0;
  v20 = a2 & 0x28 ^ 0x5A;
  v21 = (v7 & 0xB4 | 0x4A) ^ v7 & 0xFC;
  v22 = (((v10 ^ (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * v19) ^ v19)) ^ v19)) ^ v19)) ^ v19))) ^ 0x74) << 16) | (((a2 ^ (2 * ((a2 ^ 0x34) & (2 * ((a2 ^ 0x34) & (2 * ((a2 ^ 0x34) & (2 * ((a2 ^ 0x34) & (2 * ((a2 ^ 0x34) & (2 * v20) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20))) ^ 0x28) << 8);
  v23 = v8 & 0x60 ^ 0x7E;
  LODWORD(STACK[0x5410]) = v8 ^ (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * v23) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23));
  v24 = (((v7 ^ (2 * ((v7 ^ 0x34) & (2 * ((v7 ^ 0x34) & (2 * ((v7 ^ 0x34) & (2 * ((v7 ^ 0x34) & (2 * ((v7 ^ 0x34) & (2 * v21) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21))) ^ 0x8DFE01) & ~v22 | v22 & 0x720100) << 8;
  LODWORD(STACK[0x5480]) = v24 ^ 0x500182FF;
  LODWORD(STACK[0x5510]) = v24 & 0xA3427400;
  LOBYTE(v23) = v11 & 0xCA ^ 0x8B;
  v25 = a6 & 0x5E ^ 0x55;
  v26 = (((v11 ^ (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * (v23 ^ v11 & 0x3E)) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23))) ^ 0xCA) << 16) | (((a6 ^ (2 * ((a6 ^ 0x34) & (2 * ((a6 ^ 0x34) & (2 * ((a6 ^ 0x34) & (2 * ((a6 ^ 0x34) & (2 * ((a6 ^ 0x34) & (2 * (v25 ^ a6 & 0xAA)) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25))) ^ 0x5E) << 8);
  LOBYTE(v23) = (v14 & 0xB4 | 0xA) ^ v14 & 0x7C;
  v27 = (v26 ^ 0xEFBFFF) & ((v14 ^ (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * v23) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23))) ^ 0x4F3F66) | v26 & 0xB0C000;
  v28 = v6 & 0x58 ^ 0x52;
  LODWORD(STACK[0x53F0]) = v6 ^ (2 * ((v6 ^ 0x34) & (2 * ((v6 ^ 0x34) & (2 * ((v6 ^ 0x34) & (2 * ((v6 ^ 0x34) & (2 * ((v6 ^ 0x34) & (2 * v28) ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28));
  v27 <<= 8;
  LODWORD(STACK[0x5408]) = v27 ^ 0xA08050FF;
  LODWORD(STACK[0x5420]) = v27 & 0x174B2F00;
  LOBYTE(v27) = v12 & 0x3A ^ 0xC3;
  LOBYTE(v28) = v15 & 0x8E ^ 0xAD;
  v29 = (v15 ^ (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * (v28 ^ v15 & 0x3A)) ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28))) << 8;
  v30 = v29 & 0xFF00FFFF | (((v12 ^ (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * (v27 ^ v12 & 0xE)) ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ v27))) ^ 0x3A) << 16);
  v31 = STACK[0x5530];
  LOBYTE(v27) = STACK[0x5530] & 0x8C ^ 0xAC;
  v32 = (v30 ^ 0x2B60FF) & ((v31 ^ (2 * ((v31 ^ 0x34) & (2 * ((v31 ^ 0x34) & (2 * ((v31 ^ 0x34) & (2 * ((v31 ^ 0x34) & (2 * v27) ^ v27)) ^ v27)) ^ v27)) ^ v27))) ^ 0x2BEC1A) | v30 & 0xD41300;
  v33 = STACK[0x5540] & 0x6C ^ 0xFFFFFFFC;
  LODWORD(STACK[0x53E0]) = LODWORD(STACK[0x5540]) ^ (2 * ((LODWORD(STACK[0x5540]) ^ 0x34) & (2 * ((LODWORD(STACK[0x5540]) ^ 0x34) & (2 * ((LODWORD(STACK[0x5540]) ^ 0x34) & (2 * ((LODWORD(STACK[0x5540]) ^ 0x34) & (2 * v33) ^ v33)) ^ v33)) ^ v33)) ^ v33));
  v32 <<= 8;
  LODWORD(STACK[0x5530]) = v32 ^ 0x940168FF;
  LODWORD(STACK[0x5540]) = v32 & 0x427C9500;
  LOBYTE(v32) = v18 & 0x68 ^ a4;
  v34 = STACK[0x5600];
  v35 = STACK[0x5600] & 0xBE ^ 5;
  v36 = v9 & 0xB0 ^ 0x86;
  v37 = (((v18 ^ (2 * ((v18 ^ 0x34) & (2 * ((v18 ^ 0x34) & (2 * ((v18 ^ 0x34) & (2 * ((v18 ^ 0x34) & (2 * ((v18 ^ 0x34) & (2 * v32) ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ v32))) ^ 0x68) << 16) | (((v9 ^ (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * v36) ^ v36)) ^ v36)) ^ v36)) ^ v36)) ^ v36))) ^ 0xB0) << 8);
  v38 = STACK[0x5610];
  v39 = STACK[0x5610] & 0x2E ^ 0x5D;
  LODWORD(STACK[0x53C0]) = v38 ^ (2 * ((v38 ^ 0x34) & (2 * ((v38 ^ 0x34) & (2 * ((v38 ^ 0x34) & (2 * ((v38 ^ 0x34) & (2 * ((v38 ^ 0x34) & (2 * (v39 ^ v38 & 0x1A)) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39));
  v40 = (((v34 ^ (2 * ((v34 ^ 0x34) & (2 * ((v34 ^ 0x34) & (2 * ((v34 ^ 0x34) & (2 * ((v34 ^ 0x34) & (2 * ((v34 ^ 0x34) & (2 * ((v34 ^ 0x34) & (2 * v35) ^ v35)) ^ v35)) ^ v35)) ^ v35)) ^ v35)) ^ v35))) ^ 0xB7713E) & ~v37 | v37 & 0x488E00) << 8;
  LODWORD(STACK[0x53D8]) = v40 ^ 0x40865DFF;
  LODWORD(STACK[0x53D0]) = v40 & 0xE49A200;
  LOBYTE(v40) = v17 & 0x68 ^ 0x7A;
  LOBYTE(v39) = v16 & 0xAE ^ 0x1D;
  LOBYTE(v33) = v17 ^ (2 * ((v17 ^ 0x34) & (2 * ((v17 ^ 0x34) & (2 * ((v17 ^ 0x34) & (2 * ((v17 ^ 0x34) & (2 * ((v17 ^ 0x34) & (2 * v40) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ 0x68;
  v41 = (v16 ^ (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * (v39 ^ v16 & 0x1A)) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39)));
  LODWORD(STACK[0x4798]) = v41;
  v42 = (v41 << 8) & 0xFF00FFFF | (v33 << 16);
  LOBYTE(v33) = v13 & 0x12 ^ 0xF7;
  LODWORD(STACK[0x53A8]) = (v42 ^ 0xC551FF) & ((v13 ^ (2 * ((v13 ^ 0x34) & (2 * ((v13 ^ 0x34) & (2 * ((v13 ^ 0x34) & (2 * ((v13 ^ 0x34) & (2 * ((v13 ^ 0x34) & (2 * (v33 ^ v13 & 0x26)) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33))) ^ 0xC557C8) | v42 & 0x3AA800;
  LOBYTE(v33) = a5 & 0x3E ^ 0x45;
  LOBYTE(v33) = a5 ^ (2 * ((a5 ^ 0x34) & (2 * ((a5 ^ 0x34) & (2 * ((a5 ^ 0x34) & (2 * ((a5 ^ 0x34) & (2 * ((a5 ^ 0x34) & (2 * (v33 ^ a5 & 0xA)) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33));
  v43 = ((v29 & 0xFF00FFFF | (v33 << 16)) ^ 0x60FF) & (v33 ^ 0x266CFA) | v29 & 0x9300 | (v33 << 16) & 0xD99300;
  v44 = a1 & 0xB6 ^ 0xFFFFFF81;
  LODWORD(STACK[0x53A0]) = a1 ^ (2 * ((a1 ^ 0x34) & (2 * ((a1 ^ 0x34) & (2 * ((a1 ^ 0x34) & (2 * ((a1 ^ 0x34) & (2 * ((a1 ^ 0x34) & (2 * (a1 & (2 * v44) ^ v44)) ^ v44)) ^ v44)) ^ v44)) ^ v44)) ^ v44));
  v43 <<= 8;
  LODWORD(STACK[0x53B0]) = v43 ^ 0xC10133FF;
  LODWORD(STACK[0x54D0]) = v43 & 0x109A0C00;
  LOBYTE(v43) = *(STACK[0x52F8] + 858);
  LOBYTE(v44) = v43 & 0x50 ^ 0x56;
  LOBYTE(v42) = *(STACK[0x5570] + 2883);
  v45 = v42 & 0x86 ^ 0xA9;
  LOBYTE(v38) = *a3;
  v46 = *a3 & 0x5E ^ 0xD5;
  v47 = v38 ^ (2 * ((v38 ^ 0x34) & (2 * ((v38 ^ 0x34) & (2 * ((v38 ^ 0x34) & (2 * ((v38 ^ 0x34) & (2 * ((v38 ^ 0x34) & (2 * (v46 ^ v38 & 0xAA)) ^ v46)) ^ v46)) ^ v46)) ^ v46)) ^ v46));
  v48 = (((v42 ^ (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * (v45 ^ v42 & 0x32)) ^ v45)) ^ v45)) ^ v45)) ^ v45)) ^ v45))) ^ 0x86) << 16) | (v47 << 8);
  v49 = (v48 ^ 0x9D80FF) & ((v43 ^ (2 * ((v43 ^ 0x34) & (2 * ((v43 ^ 0x34) & (2 * ((v43 ^ 0x34) & (2 * ((v43 ^ 0x34) & (2 * ((v43 ^ 0x34) & (2 * v44) ^ v44)) ^ v44)) ^ v44)) ^ v44)) ^ v44))) ^ 0x9D9C38) | v48 & 0x626300;
  v50 = *(STACK[0x56D0] + 1791);
  v51 = v50 & 0xD6 ^ 0xFFFFFF91;
  LODWORD(STACK[0x5398]) = v50 ^ (2 * ((v50 ^ 0x34) & (2 * ((v50 ^ 0x34) & (2 * ((v50 ^ 0x34) & (2 * ((v50 ^ 0x34) & (2 * ((v50 ^ 0x34) & (2 * (v51 ^ v50 & 0x22222222)) ^ v51)) ^ v51)) ^ v51)) ^ v51)) ^ v51));
  v49 <<= 8;
  LODWORD(STACK[0x5390]) = v49 ^ 0x622186FF;
  LODWORD(STACK[0x5400]) = v49 & 0x9C0E1100;
  v52 = STACK[0x5770];
  LOBYTE(v50) = *(STACK[0x5770] + 3414);
  LOBYTE(v49) = v50 & 0xC8 ^ 0x8A;
  v53 = STACK[0x5780];
  v54 = *(STACK[0x5780] + 1108);
  LOBYTE(v38) = v54 & 0xA8 ^ 0x9A;
  v55 = (v54 ^ (2 * ((v54 ^ 0x34) & (2 * ((v54 ^ 0x34) & (2 * ((v54 ^ 0x34) & (2 * ((v54 ^ 0x34) & (2 * ((v54 ^ 0x34) & (2 * v38) ^ v38)) ^ v38)) ^ v38)) ^ v38)) ^ v38)));
  v56 = (v55 << 8) & 0xFF00FFFF | (((v50 ^ (2 * ((v50 ^ 0x34) & (2 * ((v50 ^ 0x34) & (2 * ((v50 ^ 0x34) & (2 * ((v50 ^ 0x34) & (2 * ((v50 ^ 0x34) & (2 * v49) | v49)) ^ v49)) ^ v49)) ^ v49)) ^ v49))) ^ 0xC8) << 16);
  LOBYTE(v50) = *(STACK[0x55C0] + 911);
  v57 = v50 & 0x70 ^ 0x66;
  v58 = (v56 ^ 0xFC44FF) & ((v50 ^ (2 * ((v50 ^ 0x34) & (2 * ((v50 ^ 0x34) & (2 * ((v50 ^ 0x34) & (2 * ((v50 ^ 0x34) & (2 * ((v50 ^ 0x34) & (2 * v57) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57))) ^ 0xFCC406) | v56 & 0x33B00;
  v59 = STACK[0x5730];
  v60 = *(STACK[0x5730] + 1988);
  v61 = v60 & 0x5A ^ 0x53;
  LODWORD(STACK[0x5378]) = v60 ^ (2 * ((v60 ^ 0x34) & (2 * ((v60 ^ 0x34) & (2 * ((v60 ^ 0x34) & (2 * ((v60 ^ 0x34) & (2 * ((v60 ^ 0x34) & (2 * (v61 ^ v60 & 0x2E)) ^ v61)) ^ v61)) ^ v61)) ^ v61)) ^ v61));
  v58 <<= 8;
  LODWORD(STACK[0x5380]) = v58 ^ 0x1209FF;
  LODWORD(STACK[0x5610]) = v58 & 0x6F69B200;
  LOBYTE(v58) = *(STACK[0x5790] + 3945);
  LOBYTE(v60) = v58 & 4 | 0xE8;
  LOBYTE(v61) = v59[835];
  LOBYTE(v38) = v61 & 6 | 0xE9;
  v62 = (((v58 ^ (2 * ((v58 ^ 0x34) & (2 * ((v58 ^ 0x34) & (2 * ((v58 ^ 0x34) & (2 * ((v58 ^ 0x34) & (2 * ((v58 ^ 0x34) & (2 * v60) ^ v60)) ^ v60)) ^ v60)) ^ v60)) ^ v60))) ^ 4) << 16) | (((v61 ^ (2 * ((v61 ^ 0x34) & (2 * ((v61 ^ 0x34) & (2 * ((v61 ^ 0x34) & (2 * ((v61 ^ 0x34) & (2 * ((v61 ^ 0x34) & (2 * (((4 * (((v61 & 6) >> 1) & 3)) | 0x32) & (v61 ^ 0x34) ^ v38)) ^ v38)) ^ v38)) ^ v38)) ^ v38)) ^ v38))) ^ 6) << 8);
  LOBYTE(v44) = v59[782];
  LOBYTE(v60) = v44 & 0x7C ^ 0x64;
  v63 = ((v44 ^ (2 * ((v44 ^ 0x34) & (2 * ((v44 ^ 0x34) & (2 * ((v44 ^ 0x34) & (2 * ((v44 ^ 0x34) & (2 * v60) ^ v60)) ^ v60)) ^ v60)) ^ v60))) ^ 0x991E85) & ~v62 | v62 & 0x66E100;
  v64 = STACK[0x57B0];
  LOBYTE(v62) = *(STACK[0x57B0] + 2170);
  LOBYTE(v60) = v62 & 0x3E ^ 0x45;
  v65 = v62 ^ (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * (v60 ^ v62 & 0xA)) ^ v60)) ^ v60)) ^ v60)) ^ v60)) ^ v60));
  LODWORD(STACK[0x5370]) = (v63 << 8) ^ 0x460006FF;
  LODWORD(STACK[0x53B8]) = (v63 << 8) & 0xB1ED9000;
  v66 = STACK[0x57C0];
  v67 = *(STACK[0x57C0] + 3141);
  LOBYTE(v63) = v67 & 0x8E ^ 0xAD;
  LOBYTE(v62) = *(STACK[0x5450] + 3285);
  LOBYTE(v60) = v62 & 0x78 ^ 0x62;
  v68 = (((v67 ^ (2 * ((v67 ^ 0x34) & (2 * ((v67 ^ 0x34) & (2 * ((v67 ^ 0x34) & (2 * ((v67 ^ 0x34) & (2 * ((v67 ^ 0x34) & (2 * (v63 ^ v67 & 0x3A)) ^ v63)) ^ v63)) ^ v63)) ^ v63)) ^ v63))) ^ 0x8E) << 16) | (((v62 ^ (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * v60) ^ v60)) ^ v60)) ^ v60)) ^ v60)) ^ v60))) ^ 0x78) << 8);
  LOBYTE(v63) = *(STACK[0x57A0] + 1146);
  LOBYTE(v62) = v63 & 0xA2 ^ 0x1F;
  v69 = (((v63 ^ (2 * ((v63 ^ 0x34) & (2 * ((v63 ^ 0x34) & (2 * ((v63 ^ 0x34) & (2 * ((v63 ^ 0x34) & (2 * ((v63 ^ 0x34) & (2 * ((v63 ^ 0x34) & 0x16 ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ v62))) ^ 0xA34556) & ~v68 | v68 & 0x5CBA00) << 8;
  LODWORD(STACK[0x5368]) = v69 ^ 0x442A0AFF;
  LODWORD(STACK[0x5430]) = v69 & 0x98D10500;
  v70 = STACK[0x5720];
  v71 = *(STACK[0x5720] + 1988);
  v72 = v71 & 0x48 ^ 0xFFFFFFCA;
  LODWORD(STACK[0x5360]) = v71 ^ (2 * ((v71 ^ 0x34) & (2 * ((v71 ^ 0x34) & (2 * ((v71 ^ 0x34) & (2 * ((v71 ^ 0x34) & (2 * ((v71 ^ 0x34) & (2 * v72) | v72)) ^ v72)) ^ v72)) ^ v72)) ^ v72));
  v73 = STACK[0x55E0];
  LOBYTE(v71) = *(STACK[0x55E0] + 1639);
  LOBYTE(v49) = v71 & 0xA8 ^ 0x1A;
  LOBYTE(v72) = *(STACK[0x55D0] + 2041);
  LOBYTE(v62) = v72 & 0xE2 ^ 0x3F;
  LOBYTE(v71) = v71 ^ (2 * ((v71 ^ 0x34) & (2 * ((v71 ^ 0x34) & (2 * ((v71 ^ 0x34) & (2 * ((v71 ^ 0x34) & (2 * ((v71 ^ 0x34) & (2 * v49) ^ v49)) ^ v49)) ^ v49)) ^ v49)) ^ v49));
  v74 = (v72 ^ (2 * ((v72 ^ 0x34) & (2 * ((v72 ^ 0x34) & (2 * ((v72 ^ 0x34) & (2 * ((v72 ^ 0x34) & (2 * ((v72 ^ 0x34) & (2 * ((v72 ^ 0x34) & 0x16 ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ v62)));
  v75 = (v74 << 8) & 0xFF00FFFF | ((v71 ^ 0xA8) << 16);
  v76 = ((v75 ^ 0x3311FF) & (v74 ^ 0x335170) | v75 & 0xCCAE00) << 8;
  LODWORD(STACK[0x5358]) = v76 ^ 0x840440FF;
  LODWORD(STACK[0x5388]) = v76 & 0x58482D00;
  LOBYTE(v76) = *(v70 + 2481);
  LOBYTE(v75) = v76 & 0xDC ^ 0x94;
  LOBYTE(v62) = *(STACK[0x56F0] + 1897);
  LOBYTE(v60) = v62 & 0x38 | 0xC2;
  v77 = (((v76 ^ (2 * ((v76 ^ 0x34) & (2 * ((v76 ^ 0x34) & (2 * ((v76 ^ 0x34) & (2 * ((v76 ^ 0x34) & (2 * v75) ^ v75)) ^ v75)) ^ v75)) ^ v75))) ^ 0xDC) << 16) | (((v62 ^ (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * v60) ^ v60)) ^ v60)) ^ v60)) ^ v60)) ^ v60))) ^ 0x38) << 8);
  LOBYTE(v75) = *STACK[0x5298];
  LOBYTE(v62) = (v75 & 0xB4 | 0x43) ^ v75 & 0x8E;
  v78 = ((v75 ^ (2 * ((v75 ^ 0x34) & (2 * ((v75 ^ 0x34) & (2 * ((v75 ^ 0x34) & (2 * ((v75 ^ 0x34) & (2 * ((v75 ^ 0x34) & (2 * (v75 & (2 * v62) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ v62))) ^ 0x8ABA4C) & ~v77 | v77 & 0x754500;
  LOBYTE(v75) = *(STACK[0x56E0] + 1442);
  LOBYTE(v62) = v75 & 0xB4 | 0xB;
  LOBYTE(v60) = v62 ^ v75 & 0x7E;
  LOBYTE(v60) = v75 ^ (2 * ((v75 ^ 0x34) & (2 * ((v75 ^ 0x34) & (2 * ((v75 ^ 0x34) & (2 * ((v75 ^ 0x34) & (2 * ((v75 ^ 0x34) & (2 * ((v75 ^ 0x34) & (2 * v62) ^ v60)) ^ v60)) ^ v60)) ^ v60)) ^ v60)) ^ v60));
  v78 <<= 8;
  LODWORD(STACK[0x5348]) = v78 ^ 0x214408FF;
  LODWORD(STACK[0x5440]) = v78 & 0x5C81D700;
  LOBYTE(v78) = *(v66 + 1510);
  LOBYTE(v75) = v78 & 0xF4 ^ 0x20;
  LOBYTE(v62) = v59[1715];
  LOBYTE(v70) = v62 & 0x9E ^ 0x35;
  v79 = (((v78 ^ (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * v75) ^ v75)) ^ v75)) ^ v75)) ^ v75))) ^ 0xF4) << 16) | (((v62 ^ (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * (v70 ^ v62 & 0xAA)) ^ v70)) ^ v70)) ^ v70)) ^ v70)) ^ v70))) ^ 0x9E) << 8);
  LOBYTE(v75) = *(STACK[0x5680] + 175);
  LOBYTE(v62) = v75 & 0x84 | 0x28;
  v80 = (v79 ^ 0xF7D7FF) & ((v75 ^ (2 * ((v75 ^ 0x34) & (2 * ((v75 ^ 0x34) & (2 * ((v75 ^ 0x34) & (2 * ((v75 ^ 0x34) & (2 * ((v75 ^ 0x34) & (2 * v62) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ v62))) ^ 0xF1D1B6) | v79 & 0xE2E00;
  v81 = STACK[0x55F0];
  LOBYTE(v75) = *(STACK[0x5580] + 1169);
  LOBYTE(v62) = v75 & 0x1E ^ 0x75;
  LOBYTE(v75) = v75 ^ (2 * ((v75 ^ 0x34) & (2 * ((v75 ^ 0x34) & (2 * ((v75 ^ 0x34) & (2 * ((v75 ^ 0x34) & (2 * ((v75 ^ 0x34) & (2 * (v62 ^ v75 & 0xAA)) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ v62));
  LOBYTE(v62) = *(v52 + 8);
  v82 = v62 & 0xF8 ^ 0x22;
  LOBYTE(v70) = *(v73 + 1085);
  LOBYTE(v74) = v70 & 0x2C ^ 0xDC;
  LODWORD(v70) = (v70 ^ (2 * ((v70 ^ 0x34) & (2 * ((v70 ^ 0x34) & (2 * ((v70 ^ 0x34) & (2 * ((v70 ^ 0x34) & (2 * v74) ^ v74)) ^ v74)) ^ v74)) ^ v74))) ^ 0xEFC5;
  v83 = v75 ^ 0x1E;
  v84 = v83 >> 4;
  v83 <<= 8;
  v85 = (((v62 ^ (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * v82) ^ v82)) ^ v82)) ^ v82)) ^ v82)) ^ v82))) ^ 0xF8) << 8) | ((v70 & ~v83 & 0xFFFFEFFF | ((v84 & 1) << 12)) << 16);
  v86 = *STACK[0x5660];
  LOBYTE(v70) = v86 & 0x6C ^ 0xFC;
  v87 = *(STACK[0x5460] + 410);
  LOBYTE(v38) = v87 & 0x7C ^ 0xE4;
  v88 = (((v86 ^ (2 * ((v86 ^ 0x34) & (2 * ((v86 ^ 0x34) & (2 * ((v86 ^ 0x34) & (2 * ((v86 ^ 0x34) & (2 * v70) ^ v70)) ^ v70)) ^ v70)) ^ v70))) ^ 0x6C) << 16) | (((v87 ^ (2 * ((v87 ^ 0x34) & (2 * ((v87 ^ 0x34) & (2 * ((v87 ^ 0x34) & (2 * ((v87 ^ 0x34) & (2 * v38) ^ v38)) ^ v38)) ^ v38)) ^ v38))) ^ 0x7C) << 8);
  LOBYTE(v70) = *(STACK[0x5580] + 1146);
  v89 = v70 & 0xF6 ^ 0xA1;
  LODWORD(v70) = (((v70 ^ (2 * ((v70 ^ 0x34) & (2 * ((v70 ^ 0x34) & (2 * ((v70 ^ 0x34) & (2 * ((v70 ^ 0x34) & (2 * ((v70 ^ 0x34) & (2 * (v70 & (2 * v89) ^ v89)) ^ v89)) ^ v89)) ^ v89)) ^ v89)) ^ v89))) ^ 0x2FE815) & ~v88 | v88 & 0xD01700) << 8;
  LODWORD(STACK[0x5340]) = v70 ^ 0xD0050CFF;
  LODWORD(STACK[0x5350]) = v70 & 0x24721100;
  v90 = STACK[0xDCB8];
  STACK[0x53E8] = STACK[0xDCB8];
  LODWORD(v90) = *(v90 + 1950);
  v91 = v90 & 0x4E ^ 0xCD;
  HIDWORD(v92) = ((v90 ^ (2 * ((v90 ^ 0x20) & (2 * ((v90 ^ 0x34) & (2 * ((v90 ^ 0x34) & (2 * ((v90 ^ 0x34) & (2 * ((v90 ^ 0x34) & (2 * (v91 ^ v90 & 0x3A)) ^ v91)) ^ v91)) ^ v91)) ^ v91)) ^ v91))) >> 6) ^ 1;
  LODWORD(v92) = ((4 * v90) ^ (8 * ((v90 ^ 0x14) & (2 * ((v90 ^ 0x34) & (2 * ((v90 ^ 0x34) & (2 * (v90 & 0xA8 ^ 0x1A)) ^ v90 & 0xA8 ^ 0x1A)) ^ v90 & 0xA8 ^ 0x1A)) ^ v90 & 0xA8 ^ 0x1A)) ^ 0xA0) << 24;
  v93 = *(v53 + 2132);
  LOBYTE(v38) = v93 & 0xCC ^ 0x8C;
  v94 = ((((v93 ^ (2 * ((v93 ^ 0x34) & (2 * ((v93 ^ 0x34) & (2 * ((v93 ^ 0x34) & (2 * ((v93 ^ 0x34) & (2 * v38) ^ v38)) ^ v38)) ^ v38)) ^ v38))) ^ 0x7AB2) & (v83 ^ 0xFFFFFBFF) | v83 & 0x8500) << 16) | ((v92 >> 26) << 8);
  LODWORD(STACK[0x5330]) = v94 ^ 0x80019BFF;
  LODWORD(STACK[0x5600]) = v94 & 0x3FE66400;
  LOBYTE(v94) = *(v81 + 1078);
  LOBYTE(v90) = v94 & 0x20 | 0x5E;
  LODWORD(v90) = (v55 << 16) | (((v94 ^ (2 * ((v94 ^ 0x34) & (2 * ((v94 ^ 0x34) & (2 * ((v94 ^ 0x34) & (2 * ((v94 ^ 0x34) & (2 * ((v94 ^ 0x34) & (2 * v90) ^ v90)) ^ v90)) ^ v90)) ^ v90)) ^ v90))) ^ 0x20) << 8);
  LOBYTE(v94) = *(STACK[0x5700] + 3338);
  v95 = v94 & 0xE ^ 0x6D;
  LODWORD(v90) = (v90 ^ 0x565AFF) & ((v94 ^ (2 * ((v94 ^ 0x34) & (2 * ((v94 ^ 0x34) & (2 * ((v94 ^ 0x34) & (2 * ((v94 ^ 0x34) & (2 * ((v94 ^ 0x34) & (2 * (v95 ^ v94 & 0x3A)) ^ v95)) ^ v95)) ^ v95)) ^ v95)) ^ v95))) ^ 0xFE5A95) | v90 & 0x1A500;
  LOBYTE(v94) = *(STACK[0x54B0] + 888);
  v96 = v94 & 0xE ^ 0x6D;
  LOBYTE(v53) = (v94 ^ 0x34) & (2 * ((v94 ^ 0x34) & (2 * ((v94 ^ 0x34) & (2 * ((v94 ^ 0x34) & (2 * ((v94 ^ 0x34) & (2 * (v96 ^ v94 & 0x3A)) ^ v96)) ^ v96)) ^ v96)) ^ v96)) ^ v96;
  v97 = *(STACK[0x5760] + 600);
  v98 = v97 & 0x2E ^ 0x5D;
  v99 = (((v94 ^ (2 * v53)) ^ 0xE) << 16) | (((v97 ^ (2 * ((v97 ^ 0x34) & (2 * ((v97 ^ 0x34) & (2 * ((v97 ^ 0x34) & (2 * ((v97 ^ 0x34) & (2 * ((v97 ^ 0x34) & (2 * (v98 ^ v97 & 0x1A)) ^ v98)) ^ v98)) ^ v98)) ^ v98)) ^ v98))) ^ 0x2E) << 8);
  LOBYTE(v53) = *(v64 + 1343);
  v100 = v53 & 0xEE ^ 0x3D;
  LODWORD(v53) = ((v53 ^ (2 * ((v53 ^ 0x34) & (2 * ((v53 ^ 0x34) & (2 * ((v53 ^ 0x34) & (2 * ((v53 ^ 0x34) & (2 * ((v53 ^ 0x34) & (2 * (v100 ^ v53 & 0x1A)) ^ v100)) ^ v100)) ^ v100)) ^ v100)) ^ v100))) ^ 0x88EE7) & ~v99 | v99 & 0xF77100;
  LOBYTE(v99) = *(STACK[0x5308] + 1381);
  v101 = v99 & 0x9A ^ 0xB3;
  LOBYTE(v99) = v99 ^ (2 * ((v99 ^ 0x34) & (2 * ((v99 ^ 0x34) & (2 * ((v99 ^ 0x34) & (2 * ((v99 ^ 0x34) & (2 * ((v99 ^ 0x34) & (2 * (v101 ^ v99 & 0x2E)) ^ v101)) ^ v101)) ^ v101)) ^ v101)) ^ v101));
  LODWORD(v53) = v53 << 8;
  LODWORD(STACK[0x5328]) = v53 ^ 0x57064FF;
  LODWORD(STACK[0x53C8]) = v53 & 0xF2899A00;
  LOBYTE(v53) = *(v52 + 1859);
  v102 = (v53 & 0xB4 | 0x49) ^ v53 & 0xF2;
  v103 = *(STACK[0x5710] + 1571);
  v104 = ((v103 ^ 0x34 ^ (2 * ((v103 ^ 0x34) & (2 * ((v103 ^ 0x34) & (2 * ((v103 ^ 0x34) & (2 * ((v103 ^ 0x34) & (2 * (v103 & 0xB4)) ^ v103 & 0xB4)) ^ v103 & 0xB4)) ^ v103 & 0xB4)) ^ (v103 & 0xB4 | 0x40)))) << 8) | (((v53 ^ (2 * ((v53 ^ 0x34) & (2 * ((v53 ^ 0x34) & (2 * ((v53 ^ 0x34) & (2 * ((v53 ^ 0x34) & (2 * ((v53 ^ 0x34) & (2 * ((v53 ^ 0x34) & (2 * v102) ^ v102)) ^ v102)) ^ v102)) ^ v102)) ^ v102)) ^ v102))) ^ 0x46) << 16);
  LODWORD(STACK[0x5338]) = (((v65 ^ 0x627401) & ~v104 | v104 & 0x9D8B00) << 8) & 0xEC3B9500;
  v105 = *(STACK[0x5750] + 706);
  v106 = v105 & 0x70 ^ 0xFFFFFFE6;
  LODWORD(STACK[0x54C0]) = v105 ^ (2 * ((v105 ^ 0x34) & (2 * ((v105 ^ 0x34) & (2 * ((v105 ^ 0x34) & (2 * ((v105 ^ 0x34) & (2 * ((v105 ^ 0x34) & (2 * v106) ^ v106)) ^ v106)) ^ v106)) ^ v106)) ^ v106));
  v107 = LODWORD(STACK[0x5410]);
  LODWORD(STACK[0x52A8]) = LODWORD(STACK[0x53A8]) << 8;
  v108 = LODWORD(STACK[0x5378]);
  LODWORD(STACK[0x53A8]) = (v80 << 8) & 0x868B1500;
  LODWORD(STACK[0x53F0]) = v85 & 0x726CC200;
  LODWORD(STACK[0x53A0]) = (v90 << 8) & 0x39AC4F00;
  return (*(STACK[0x57D8] + 8 * LODWORD(STACK[0x5640])))(v107, (6419 * LODWORD(STACK[0x5640]) - 73459036), v99, v60, v47, v108, (v80 << 8) ^ 0x824C8FFu, v85 ^ 0x123DFF);
}

uint64_t sub_100133220()
{
  STACK[0x11F8] = v0;
  v4 = (*(v2 + 8 * (v1 ^ 0x512F)))(v3) == 0;
  return (*(v2 + 8 * (((((v1 + 2) ^ v4) & 1) * ((v1 ^ 0xB7D0AE80) + 1211071744)) ^ v1)))();
}

uint64_t sub_10013328C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v12 = ((62 * (v4 ^ (v10 + 105)) + a2) ^ v6) + v3;
  v13 = *(v8 + v12 - 15);
  v14 = *(v8 + v12 - 31);
  v15 = a1 + a3 + v12;
  *(v15 - 15) = v13;
  *(v15 - 31) = v14;
  return (*(v11 + 8 * (((v7 == v6) * v9) ^ v5)))();
}

uint64_t sub_10013332C()
{
  STACK[0xC068] = 0;
  LODWORD(STACK[0xC648]) = -769884012;
  v1 = STACK[0x57D8];
  STACK[0x91E8] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 + ((v0 + 14498) | 8) - 2901)))();
}

uint64_t sub_1001333F8@<X0>(int a1@<W8>)
{
  v7 = *(STACK[0x8070] + v1 * v4 + (a1 ^ 0x7403 ^ v5) - (((((v1 * v4 + (a1 ^ 0x7403 ^ v5)) >> 1) * v2) >> 32) >> 12) * v3);
  *(STACK[0x8070] + v1 * v4 + v6 - (((((v1 * v4 + v6) >> 1) * v2) >> 32) >> 12) * v3) = v7 ^ 0x9B ^ *((v7 ^ 0x35) + STACK[0x5490] + 1808);
  return (*(STACK[0x57D8] + 8 * ((29699 * (v1 == 255)) ^ a1)))();
}

uint64_t sub_100133488(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, int a7, uint64_t a8)
{
  v15 = *(a8 + 1368);
  v16 = *(v15 + v13 % (a6 ^ 0x4066u));
  v17 = *(a8 + 1360);
  v18 = *(v17 + 4 * ((6419 * (a5 + v16 + ((v16 < 0x4C) << 8) + 1751) + 591761911) % 0x2240));
  v19 = *(v15 + (5621 * (((v18 ^ (v11 + 4081)) + 131386384) ^ ((v18 ^ 0xAFC30E64) + 685409739) ^ ((v18 ^ 0x2F0E4923) - 1474837874)) - 1643549363) % 0x1808);
  LOBYTE(v16) = *(v15 + v9 + 5621 * (BYTE1(v18) ^ 0x8F) - 6152 * (((89362129 * (v9 + 5621 * (BYTE1(v18) ^ 0x8Fu))) >> 32) >> 7));
  v20 = *(v15 + (5621 * (((HIBYTE(v18) ^ 0xE4C45085) + v8) ^ ((HIBYTE(v18) ^ (a7 + 85)) + 1898323790) ^ (v12 + (HIBYTE(v18) ^ 0xF8D2A2A2) + 3724)) + 2124134595) % 0x1808);
  v21 = v20 & 0x7E ^ 0xE5;
  v22 = *(v15 + v9 + 5621 * (BYTE2(v18) ^ 0x38) - 6152 * (((89362129 * (v9 + 5621 * (BYTE2(v18) ^ 0x38u))) >> 32) >> 7));
  v23 = v16 & 0x40 ^ 0xCE;
  v24 = (((v22 ^ (2 * (((2 * (((2 * (((2 * (((2 * (v22 ^ 0x34)) & 0x38 ^ 0x1C) & (v22 ^ 0x34))) ^ 0x1C) & (v22 ^ 0x34))) ^ 0x1C) & (v22 ^ 0x34))) ^ 0x5C) & (v22 ^ 0x34)))) ^ 0xDC) << 8) | (((v20 ^ (2 * ((v20 ^ 0x34) & (2 * ((v20 ^ 0x34) & (2 * ((v20 ^ 0x34) & (2 * ((v20 ^ 0x34) & (2 * ((v20 ^ 0x34) & (2 * (v21 ^ v20 & 0xA)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21))) ^ 0x7E) << 16);
  v25 = ~v19 & 0x4C;
  v26 = v19 ^ (2 * ((v19 ^ 0x34) & (2 * ((v19 ^ 0x34) & (2 * ((v19 ^ 0x34) & (2 * ((v19 ^ 0x34) & (2 * v25) ^ v25)) ^ v25)) ^ v25)) ^ v25));
  *(v17 + 4 * (v14 % 0x2240)) = ((((((v16 ^ (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & 0x1C ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23))) ^ a3) & ~v24 | v24 & 0xC73800) << 8) ^ 0x7EB46945) & (v26 ^ 0xFFFFFF93) | v26 & 0xBA) ^ 0x44B5BAB;
  return (*(STACK[0x57D8] + 8 * ((31 * (v10 == 0)) ^ a6)))();
}

uint64_t sub_1001337A8()
{
  *(v0 + 1895) = *(v0 + 295);
  v2 = *(v0 + 2536);
  *(v0 + 1896) = v2;
  v2 &= 0xFFFFFFFFFFFFFFF8;
  *(v0 + 1904) = v2;
  v3 = *STACK[0x51E8];
  v4 = ((v2 - 1831847764) & v3);
  *(v0 + 1908) = v3;
  v5 = *STACK[0x51F0];
  *(v0 + 1912) = v5;
  v6 = *(v5 + (v4 & 0xFFFFFFFFFFFFFFF8));
  v7 = __ROR8__(v2, 8);
  *(v0 + 1920) = v7;
  v8 = (v7 + v6) ^ 0xC2AF3EAA3FF1B8E4;
  v9 = v8 ^ __ROR8__(v6, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0x65F254DD188DB4FCLL;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0x6FF046966119128DLL;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0xA1B29DC5D776132BLL;
  v15 = __ROR8__(v14, 8);
  v16 = v14 ^ __ROR8__(v13, 61);
  v17 = (v15 + v16) ^ v1;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xD8C7B31FCA19D9DELL;
  v20 = v19 ^ __ROR8__(v18, 61);
  *(v0 + 1928) = v20;
  v21 = __ROR8__(v19, 8);
  *(v0 + 1936) = v21 + v20 - ((2 * (v21 + v20)) & 0x3ED641BF79C40AD0) + 0x1F6B20DFBCE20568;
  v22 = *(STACK[0x57D8] + 8 * *(v0 + 968));
  *(v0 + 2544) = *(v0 + 972);
  return v22();
}

uint64_t sub_100133900@<X0>(char a1@<W0>, char a2@<W2>, uint64_t a3@<X8>)
{
  v7 = 2 * (3 * v4 + *(v6 + (((v3 - 36) | 0x40u) ^ v5) + v4) - 28);
  *(a3 + ((a2 + v4 * a1) & 0x7F)) = (((2 * (v7 & 0x42 ^ 0xFB)) ^ 0x19) + (v7 & 0xF7) + 83) ^ 0xA1;
  return (*(STACK[0x57D8] + 8 * (((4 * (v4 == 31)) | (32 * (v4 == 31))) ^ v3)))();
}

uint64_t sub_100133984()
{
  v1 = STACK[0x57D8];
  STACK[0xBDE0] = *(STACK[0x57D8] + 8 * (v0 - 29320));
  return (*(v1 + 8 * (((v0 - 14210) ^ 0x4975) + v0 - 29320)))();
}

uint64_t sub_100133BA0()
{
  v2 = *(STACK[0xB70] + 24);
  STACK[0x12A8] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 - 25210) | 0x200) ^ (v0 - 24681))) ^ v0)))();
}

uint64_t sub_100133BEC@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v9 = v3 - 1;
  *(a1 + v9) = *(v7 + v9) ^ 0xF;
  return (*(v8 + 8 * (((v9 == 0) * (((v6 + v4 - 1581) | v2) ^ v5)) ^ a2)))();
}

uint64_t sub_100133C64(uint64_t a1, uint64_t a2, double a3, double a4, double a5, int64x2_t a6, int8x16_t a7, int64x2_t a8, int8x16_t a9, int8x16_t a10)
{
  v30.i64[0] = v12 + a1 + 7;
  v30.i64[1] = v13 + a1 + (v11 ^ v15);
  v31.i64[0] = v12 + a1 + 5;
  v31.i64[1] = v12 + a1 + 4;
  v32.i64[0] = v12 + a1 + 3;
  v32.i64[1] = v12 + a1 + 2;
  v33.i64[0] = v12 + a1 + 1;
  v33.i64[1] = v12 + a1;
  v34 = vandq_s8(v33, v17);
  v35 = vandq_s8(v32, v17);
  v36 = vandq_s8(v31, v17);
  v37 = vandq_s8(v30, v17);
  v38 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v39 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v40 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v41 = vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL);
  v42 = vsubq_s64(v38, vandq_s8(vaddq_s64(vaddq_s64(v38, v38), a6), a7));
  v43 = vsubq_s64(v39, vandq_s8(vaddq_s64(vaddq_s64(v39, v39), a6), a7));
  v44 = vaddq_s64(vsubq_s64(v41, vandq_s8(vaddq_s64(vaddq_s64(v41, v41), a6), a7)), a8);
  v45 = vaddq_s64(vsubq_s64(v40, vandq_s8(vaddq_s64(vaddq_s64(v40, v40), a6), a7)), a8);
  v46 = veorq_s8(v45, a9);
  v47 = veorq_s8(v44, a9);
  v48 = veorq_s8(v44, a10);
  v49 = veorq_s8(v45, a10);
  v50 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v48), v18);
  v51 = vsraq_n_u64(vshlq_n_s64(v48, 3uLL), v48, 0x3DuLL);
  v52 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v49), v18);
  v53 = veorq_s8(v52, vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL));
  v54 = veorq_s8(v50, v51);
  v55 = vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL);
  v56 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v54);
  v57 = veorq_s8(vaddq_s64(v55, v53), v21);
  v58 = veorq_s8(v56, v21);
  v59 = vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL);
  v60 = veorq_s8(v58, vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL));
  v61 = veorq_s8(v57, v59);
  v62 = vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL);
  v63 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v61);
  v64 = veorq_s8(vaddq_s64(v62, v60), v22);
  v65 = veorq_s8(v63, v22);
  v66 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v65, v65), v23), v65), v24), v25);
  v67 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v64, v64), v23), v64), v24), v25);
  v68 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL));
  v69 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v70 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v68), v26);
  v71 = vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL);
  v72 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v69), v26);
  v73 = veorq_s8(v72, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v74 = veorq_s8(v70, v71);
  v75 = vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL);
  v76 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL), v74);
  v77 = veorq_s8(vaddq_s64(v75, v73), v20);
  v78 = vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL);
  v79 = veorq_s8(v76, v20);
  v80 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL));
  v81 = veorq_s8(v77, v78);
  v82 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v83 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v81);
  v84 = veorq_s8(vaddq_s64(v82, v80), v19);
  v85 = veorq_s8(v83, v19);
  v86 = vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL);
  v87 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v88 = veorq_s8(v84, v86);
  v89 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v90 = vdupq_n_s64(v16);
  v91 = vaddq_s64(v43, a8);
  v92 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v88);
  v93 = vaddq_s64(v89, v87);
  v128.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v92, v92), v27), v92), v28), v29), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), v90)));
  v128.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v93, v93), v27), v93), v28), v29), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), v90)));
  v94 = veorq_s8(v91, a9);
  v95 = veorq_s8(v91, a10);
  v96 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95), v18);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v98 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97), v21);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v100 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99), v22);
  v101 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v100, v100), v23), v100), v24), v25);
  v102 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102), v26);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104), v20);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106), v19);
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL)));
  v109 = vaddq_s64(v42, a8);
  v128.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v108, v108), v27), v108), v28), v29), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), v90)));
  v110 = veorq_s8(v109, a9);
  v111 = veorq_s8(v109, a10);
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111), v18);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), v21);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v116 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115), v22);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v116, v116), v23), v116), v24), v25);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v119 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118), v26);
  v120 = vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL);
  v121 = vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL);
  v122 = veorq_s8(v119, v120);
  v123 = veorq_s8(vaddq_s64(v121, v122), v20);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v125 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124), v19);
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL)));
  v128.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v126, v126), v27), v126), v28), v29), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), v90)));
  *(v12 + a1) = vrev64_s8(*&vqtbl4q_s8(v128, v10[26]));
  return (*(STACK[0x57D8] + 8 * (((4 * (a2 == a1)) | (8 * (a2 == a1))) ^ v14)))(a1 - 8);
}

uint64_t sub_100134328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = STACK[0xDCB8];
  v11 = *(STACK[0xDCB8] + v7 - 6152 * (((v7 * v8) >> 64) >> 12));
  v12 = STACK[0xDCB0];
  v13 = *(STACK[0xDCB0] + 4 * (((a6 ^ 0xADFA16A) + 6419 * (v11 | ((v11 < 0x4C) << 8)) - 154972890) % 0x2240));
  LODWORD(STACK[0x5510]) = *(STACK[0x5770] + 3414);
  LODWORD(STACK[0x5500]) = *(STACK[0x5720] + 1988);
  LODWORD(STACK[0x54E0]) = *(STACK[0x5730] + 782);
  LODWORD(STACK[0x54F0]) = *(STACK[0x5760] + 2026);
  v14 = STACK[0x5670];
  LODWORD(STACK[0x5600]) = *(STACK[0x5670] + 84);
  LODWORD(STACK[0x5540]) = *(STACK[0x55E0] + 1965);
  LODWORD(STACK[0x5530]) = *(STACK[0x55C0] + 911);
  LODWORD(STACK[0x5520]) = *(STACK[0x56D0] + 1882);
  LODWORD(STACK[0x5610]) = *(STACK[0x5790] + 797);
  LODWORD(STACK[0x5640]) = *(v14 + 319);
  LODWORD(v14) = ((HIBYTE(v13) ^ 0x9831222E) + 730792909) ^ ((HIBYTE(v13) ^ 0x883A81B) - 1153594886) ^ ((HIBYTE(v13) ^ 0x90B28A77) + 588032918);
  v15 = *(v10 + 5621 * (BYTE1(v13) ^ 0x8F) + 32028458 - 6152 * (((89362129 * (5621 * (BYTE1(v13) ^ 0x8Fu) + 32028458)) >> 32) >> 7));
  v16 = *(v10 + 5621 * (BYTE2(v13) ^ 0x38) + 32028458 - 6152 * (((89362129 * (5621 * (BYTE2(v13) ^ 0x38u) + 32028458)) >> 32) >> 7));
  LOBYTE(v13) = *(v10 + (5621 * (((v13 ^ 0x1BA737EC) - 1738532863) ^ ((v13 ^ 0x3A165207) - 1177453076) ^ ((v13 ^ 0x21B1650Du) - 1569305886)) - 1922250077) % 0x1808);
  v17 = v13 & 0x92 ^ 0xB7;
  v18 = v15 & 0x54 ^ 0xD0;
  v19 = *(v10 + (5621 * v14 + 1680888597) % 0x1808u);
  LOBYTE(v14) = v19 & 0xDE ^ 0x95;
  LOBYTE(v10) = (v13 ^ 0x34) & (2 * ((v13 ^ 0x34) & (2 * ((v13 ^ 0x34) & (2 * ((v13 ^ 0x34) & (2 * ((v13 ^ 0x34) & (2 * (v17 ^ v13 & 0x26)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17;
  v20 = v16 & 0xEC ^ 0x3C;
  LODWORD(v14) = (((v16 ^ (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * v20) ^ v20)) ^ v20)) ^ v20)) ^ v20))) ^ 0xEC) << 8) | (((v19 ^ (2 * ((v19 ^ 0x34) & (2 * ((v19 ^ 0x34) & (2 * ((v19 ^ 0x34) & (2 * ((v19 ^ 0x34) & (2 * ((v19 ^ 0x34) & (2 * (v14 ^ v19 & 0xAA)) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14))) ^ 0xDE) << 16);
  *(v12 + 4 * (v9 % 0x2240)) = ((((((v15 ^ (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * v18) | v18)) ^ v18)) ^ v18)) ^ v18))) ^ 0x744E07) & ~v14 | v14 & 0x8BB100) << 8) ^ 0x2F60A312) & ((v13 ^ (2 * v10)) ^ 0xFFFFFF89) | (v13 ^ (2 * v10)) & 0xED) ^ 0x19167F74;
  return (*(STACK[0x57D8] + 8 * ((6978 * (v6 == 0)) ^ a6)))();
}

uint64_t sub_100134794@<X0>(int a1@<W0>, unint64_t a2@<X8>)
{
  LODWORD(STACK[0xCAD4]) = 0;
  LODWORD(STACK[0x84C4]) = 0;
  STACK[0xCE18] = v3;
  STACK[0xCC10] = a2;
  return (*(STACK[0x57D8] + 8 * (v2 ^ (a1 + 3830) ^ (2034 * (v2 == -217519636)))))();
}

uint64_t sub_100134808@<X0>(unint64_t a1@<X8>)
{
  STACK[0xB668] = a1;
  v3 = STACK[0x7ED8];
  v4 = v1 + STACK[0x7ED8];
  STACK[0xA9A0] = v4;
  STACK[0x7ED8] = ((838 * (v2 ^ 0xBBFu)) ^ 0x60CLL) + v3;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x389C])))(v4, 0, 120);
  STACK[0x7A18] = *(v5 + 8 * v2);
  return (*(v5 + 8 * (v2 + 5763)))(v6);
}

uint64_t sub_100134888(uint64_t a1, unint64_t a2)
{
  v4 = ((v3 + 6407) + 1065102737) ^ v2;
  v6 = a2 > 0x1F && v4 > 7;
  return (*(STACK[0x57D8] + 8 * (((16 * v6) | (32 * v6)) ^ v3)))();
}

uint64_t sub_1001348E4()
{
  v2 = STACK[0x7B00];
  v3 = 1534937323 * ((((v1 - 240) | 0x76ACBA1A68C78F6ELL) - ((v1 - 240) & 0x76ACBA1A68C78F6ELL)) ^ 0xBBD432D8AE297429);
  LODWORD(STACK[0x1D4E0]) = ((v0 - 22613) ^ 0x940A29AC) + v3;
  LODWORD(STACK[0x1D4C8]) = -1811273320 - v3 + v0 - 22613 + 3953;
  LODWORD(STACK[0x1D4CC]) = v3 + v0 + 1451493860;
  STACK[0x1D4D8] = v2 + v3;
  STACK[0x1D4C0] = v3;
  LODWORD(STACK[0x1D4D4]) = (v0 - 1811295933) ^ v3;
  LODWORD(STACK[0x1D4D0]) = v3;
  v4 = v0 ^ 0x2462;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * v4))(v1 - 240);
  return (*(v5 + 8 * SLODWORD(STACK[0x1D4E4])))(v6);
}

uint64_t sub_100134A5C@<X0>(unint64_t a1@<X2>, int a2@<W8>)
{
  v6 = ((a2 + 12026) ^ a1) + v3;
  *(v2 + v6) = (v5 >> v4) - ((2 * (v5 >> v4)) & 0xC3) + 97;
  return (*(STACK[0x57D8] + 8 * ((31791 * (v6 == 0)) ^ a2)))();
}

void *sub_100134B40()
{
  v0 = STACK[0x1550];
  v1 = LODWORD(STACK[0x1550]) ^ 0x3428;
  v2 = STACK[0x57D8];
  STACK[0xC2A0] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1550]));
  return (*(v2 + 8 * ((v1 - 6933) ^ v0)))(&STACK[0xC558]);
}

uint64_t sub_100134C90@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>)
{
  v23 = *(v15 + 528) + 4 * v9;
  v24 = *(*a5 + ((*v13 & ((v23 & 0xFFFFFFF8 & v18) + (v23 & 0xFFFFFFF8 | v18) + v19)) & 0xFFFFFFFFFFFFFFF8));
  v25 = (__ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8) + v24) ^ v11;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ a1;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (a4 - ((v29 + v28) | a4) + ((v29 + v28) | (a9 + v17) ^ v20)) ^ v21;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v10;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (v34 + v33 - (a3 & (2 * (v34 + v33))) + a6) ^ a7;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ v12;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (v39 + v38 - (a8 & (2 * (v39 + v38))) + v16) ^ v22;
  *v23 = ((__ROR8__(v40, 8) + (v40 ^ __ROR8__(v38, 61))) ^ a2) >> (8 * (v23 & 7u));
  return (*(STACK[0x57D8] + 8 * ((15 * (v9 + 1 > v14)) ^ a9)))();
}

uint64_t sub_100134DA4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8)
{
  LODWORD(STACK[0x47C0]) = v8 | v9;
  v19 = *(v10 + 4000);
  STACK[0x5190] = (v19 + 37331);
  v20 = v19[37331];
  v21 = v20 & 0x44 ^ 0x70;
  STACK[0x5228] = (v19 + 36418);
  v22 = v19[36418];
  v23 = *v12;
  v24 = *v12 & 0x7E ^ 0x4D;
  v25 = ((v23 ^ (2 * ((v23 ^ 0x64) & (2 * ((v23 ^ 0x64) & (2 * ((v23 ^ 0x64) & (2 * ((v23 ^ 0x64) & (2 * ((v23 ^ 0x64) & (2 * (v24 ^ v23 & 0x1A)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24))) ^ 0x7E) << 8;
  v26 = v22 & 0x96 ^ 0x59;
  v27 = v25 & 0x2300 | ((v22 ^ (2 * ((v22 ^ 0x64) & (2 * ((v22 ^ 0x64) & (2 * ((v22 ^ 0x64) & (2 * ((v22 ^ 0x64) & (2 * ((v22 ^ 0x64) & (2 * (v26 ^ v22 & 0x32)) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26))) ^ 0xDCA8) & ~v25;
  v28 = *STACK[0x5460];
  v29 = (((v20 ^ (2 * ((v20 ^ 0x64) & (2 * ((v20 ^ 0x64) & (2 * ((v20 ^ 0x64) & (2 * ((v20 ^ 0x64) & (2 * v21) ^ v21)) ^ v21)) ^ v21)) ^ v21))) ^ 0x44) << 8) | (v27 << 16);
  v30 = v28 & 0x16 ^ 0xFFFFFF99;
  LODWORD(STACK[0x56D0]) = v28 ^ (2 * ((v28 ^ 0x64) & (2 * ((v28 ^ 0x64) & (2 * ((v28 ^ 0x64) & (2 * ((v28 ^ 0x64) & (2 * ((v28 ^ 0x64) & (2 * (v30 ^ v28 & 0x32)) ^ v30)) ^ v30)) ^ v30)) ^ v30)) ^ v30));
  v31 = *STACK[0x5118];
  LOBYTE(v27) = *STACK[0x4B10];
  LOBYTE(v28) = *STACK[0x5110];
  LOBYTE(v30) = v28 & 0x38 ^ 0xAA;
  v32 = v27 & 0x9C ^ 0x5C;
  v33 = (((v27 ^ (2 * ((v27 ^ 0x64) & (2 * ((v27 ^ 0x64) & (2 * ((v27 ^ 0x64) & (2 * ((v27 ^ 0x64) & (2 * v32) ^ v32)) ^ v32)) ^ v32)) ^ v32))) ^ 0x9C) << 8) | (((v28 ^ (2 * ((v28 ^ 0x64) & (2 * ((v28 ^ 0x64) & (2 * ((v28 ^ 0x64) & (2 * ((v28 ^ 0x64) & (2 * ((v28 ^ 0x64) & (2 * v30) ^ v30)) ^ v30)) ^ v30)) ^ v30)) ^ v30))) ^ 0x38) << 16);
  LOBYTE(v28) = v31 & 0x4E ^ 0x75;
  LODWORD(STACK[0x5400]) = ((v31 ^ (2 * ((v31 ^ 0x64) & (2 * ((v31 ^ 0x64) & (2 * ((v31 ^ 0x64) & (2 * ((v31 ^ 0x64) & (2 * ((v31 ^ 0x64) & (2 * (v28 ^ v31 & 0xAA)) ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28))) ^ 0xB680A1) & ~v33 | v33 & 0x497F00;
  v34 = *a8;
  v35 = v34 & 0xFFFFFF92 ^ 0x5F;
  LODWORD(STACK[0x53F8]) = v34 ^ (2 * ((v34 ^ 0x64) & (2 * ((v34 ^ 0x64) & (2 * ((v34 ^ 0x64) & (2 * ((v34 ^ 0x64) & (2 * ((v34 ^ 0x64) & (2 * ((v34 ^ 0x64) & 0x36 ^ v35)) ^ v35)) ^ v35)) ^ v35)) ^ v35)) ^ v35));
  STACK[0x5128] = (v19 + 35669);
  LOBYTE(v35) = v19[35669];
  STACK[0x4F60] = (v19 + 37332);
  v36 = v19[37332];
  v37 = v35 & 0x24 ^ 0xA0;
  STACK[0x52B0] = (v19 + 38742);
  v38 = v19[38742];
  v39 = v38 & 0x50 ^ 0x7E;
  v40 = *STACK[0x5380];
  v41 = (((v35 ^ (2 * ((v35 ^ 0x64) & (2 * ((v35 ^ 0x64) & (2 * ((v35 ^ 0x64) & (2 * ((v35 ^ 0x64) & (2 * v37) | v37)) ^ v37)) ^ v37)) ^ v37))) ^ 0x24) << 16) | (((v38 ^ (2 * ((v38 ^ 0x64) & (2 * ((v38 ^ 0x64) & (2 * ((v38 ^ 0x64) & (2 * ((v38 ^ 0x64) & (2 * ((v38 ^ 0x64) & (2 * v39) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39))) ^ 0x50) << 8);
  LOBYTE(v28) = v40 & 0xE0 | 6;
  LODWORD(STACK[0x53E0]) = ((v40 ^ (2 * ((v40 ^ 0x64) & (2 * ((v40 ^ 0x64) & (2 * ((v40 ^ 0x64) & (2 * ((v40 ^ 0x64) & (2 * ((v40 ^ 0x44) & (2 * v28) ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28))) ^ v11) & ~v41 | v41 & 0xC94400;
  v42 = v36 & 0xFFFFFFA4 ^ 0x60;
  LODWORD(STACK[0x55F0]) = v36 ^ (2 * ((v36 ^ 0x64) & (2 * ((v36 ^ 0x64) & (2 * ((v36 ^ 0x64) & (2 * ((v36 ^ 0x64) & (2 * v42) ^ v42)) ^ v42)) ^ v42)) ^ v42));
  LOBYTE(v36) = *v18;
  LOBYTE(v42) = *v14;
  v43 = *v18 & 0x62 ^ 0xC7;
  v44 = *v14 & 0x72 ^ 0x4F;
  LOBYTE(v36) = v36 ^ (2 * ((v36 ^ 0x64) & (2 * ((v36 ^ 0x64) & (2 * ((v36 ^ 0x64) & (2 * ((v36 ^ 0x64) & (2 * ((v36 ^ 0x44) & (2 * ((v36 ^ 0x44) & 6 ^ v43)) ^ v43)) ^ v43)) ^ v43)) ^ v43)) ^ v43));
  v45 = *STACK[0x4AE8];
  v46 = ((v36 ^ 0x62) << 16) | (((v42 ^ (2 * ((v42 ^ 0x64) & (2 * ((v42 ^ 0x64) & (2 * ((v42 ^ 0x64) & (2 * ((v42 ^ 0x64) & (2 * ((v42 ^ 0x64) & (2 * (v44 ^ v42 & 0x16)) ^ v44)) ^ v44)) ^ v44)) ^ v44)) ^ v44))) ^ 0x72) << 8);
  LOBYTE(v42) = *v15 & 0x94 ^ 0xD8;
  LOBYTE(v28) = *v15 ^ (2 * ((*v15 ^ 0x64) & (2 * ((*v15 ^ 0x64) & (2 * ((*v15 ^ 0x64) & (2 * ((*v15 ^ 0x64) & (2 * v42) ^ v42)) ^ v42)) ^ v42)) ^ v42));
  LOBYTE(v42) = v45 & 0xE2 ^ 7;
  v47 = *v13;
  v48 = ((v45 ^ (2 * ((v45 ^ 0x64) & (2 * ((v45 ^ 0x64) & (2 * ((v45 ^ 0x64) & (2 * ((v45 ^ 0x64) & (2 * ((v45 ^ 0x44) & (2 * ((v45 ^ 0x44) & 6 ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42))) ^ 0x7497EA) & ~v46 | v46 & 0x8B6800;
  v49 = v47 & 0x70 ^ 0xFFFFFFCE;
  v48 <<= 8;
  LODWORD(STACK[0x53B0]) = v47 ^ (2 * ((v47 ^ 0x64) & (2 * ((v47 ^ 0x64) & (2 * ((v47 ^ 0x64) & (2 * ((v47 ^ 0x64) & (2 * ((v47 ^ 0x64) & (2 * v49) ^ v49)) ^ v49)) ^ v49)) ^ v49)) ^ v49));
  LODWORD(STACK[0x55A0]) = v48 ^ 0x832030FF;
  LODWORD(STACK[0x54E0]) = v48 & 0x5CCDC700;
  STACK[0x55B0] = (v19 + 38575);
  LOBYTE(v48) = v19[38575];
  v50 = v48 & 0xBA ^ 0x6B;
  LOBYTE(v47) = *STACK[0x5138];
  v51 = v47 & 0x8C ^ 0xD4;
  v52 = (((v47 ^ (2 * ((v47 ^ 0x64) & (2 * ((v47 ^ 0x64) & (2 * ((v47 ^ 0x64) & (2 * ((v47 ^ 0x64) & (2 * v51) ^ v51)) ^ v51)) ^ v51)) ^ v51))) ^ 0x8C) << 16) | (((v48 ^ (2 * ((v48 ^ 0x64) & (2 * ((v48 ^ 0x64) & (2 * ((v48 ^ 0x64) & (2 * ((v48 ^ 0x64) & (2 * ((v48 ^ 0x64) & (2 * (v50 ^ v48 & 0x1E)) ^ v50)) ^ v50)) ^ v50)) ^ v50)) ^ v50))) ^ 0xBA) << 8);
  LOBYTE(v48) = *STACK[0x4B00];
  v53 = v48 & 0x7E ^ 0x4D;
  v54 = (v48 ^ (2 * ((v48 ^ 0x64) & (2 * ((v48 ^ 0x64) & (2 * ((v48 ^ 0x64) & (2 * ((v48 ^ 0x64) & (2 * ((v48 ^ 0x64) & (2 * (v53 ^ v48 & 0x1A)) ^ v53)) ^ v53)) ^ v53)) ^ v53)) ^ v53)));
  v55 = (v54 ^ 0x52798D) & ~v52 | v52 & 0xAD8600;
  LOBYTE(v48) = *STACK[0x4FA8];
  LOBYTE(v52) = v48 & 0xA2 ^ 0x67;
  v56 = v48 ^ (2 * ((v48 ^ 0x64) & (2 * ((v48 ^ 0x64) & (2 * ((v48 ^ 0x64) & (2 * ((v48 ^ 0x64) & (2 * ((v48 ^ 0x44) & (2 * ((v48 ^ 0x44) & 6 ^ v52)) ^ v52)) ^ v52)) ^ v52)) ^ v52)) ^ v52));
  v55 <<= 8;
  LODWORD(STACK[0x53E8]) = v55 ^ 0x8D0404FF;
  LODWORD(STACK[0x54B0]) = v55 & 0x209B9A00;
  LOBYTE(v55) = *STACK[0x5590];
  LOBYTE(v48) = v55 & 0xB8 ^ 0x6A;
  v57 = *STACK[0x50A8];
  v58 = v57 & 0xBC ^ 0x6C;
  v59 = (((v57 ^ (2 * ((v57 ^ 0x64) & (2 * ((v57 ^ 0x64) & (2 * ((v57 ^ 0x64) & (2 * ((v57 ^ 0x64) & (2 * v58) ^ v58)) ^ v58)) ^ v58)) ^ v58))) ^ 0xBC) << 8) | (((v55 ^ (2 * ((v55 ^ 0x64) & (2 * ((v55 ^ 0x64) & (2 * ((v55 ^ 0x64) & (2 * ((v55 ^ 0x64) & (2 * ((v55 ^ 0x64) & (2 * v48) ^ v48)) ^ v48)) ^ v48)) ^ v48)) ^ v48))) ^ 0xB8) << 16);
  v60 = (v28 ^ 0x932D8D) & ~v59 | v59 & 0x6CD200;
  LOBYTE(v28) = *STACK[0x5230];
  LOBYTE(v59) = v28 & 0x2E ^ 0xA5;
  v61 = *v17;
  v62 = v61 & 0xC6 ^ 0xB1;
  v63 = (v61 ^ 0x64) & (2 * ((v61 ^ 0x64) & (2 * ((v61 ^ 0x64) & (2 * ((v61 ^ 0x64) & (2 * ((v61 ^ 0x64) & (2 * (v62 ^ v61 & 0x22)) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ v62;
  STACK[0x4B40] = (v19 + 39156);
  v64 = v19[39156];
  LOBYTE(v30) = v64 & 0xDA ^ 0x3B;
  v65 = v64 ^ (2 * ((v64 ^ 0x64) & (2 * ((v64 ^ 0x64) & (2 * ((v64 ^ 0x64) & (2 * ((v64 ^ 0x64) & (2 * ((v64 ^ 0x64) & (2 * ((v64 ^ 0x64) & 0x3E ^ v30)) ^ v30)) ^ v30)) ^ v30)) ^ v30)) ^ v30));
  LODWORD(STACK[0x53D8]) = (v60 << 8) ^ 0x4C80E2FF;
  LODWORD(STACK[0x54C0]) = (v60 << 8) & 0xB07F1D00;
  v66 = (((v28 ^ (2 * ((v28 ^ 0x64) & (2 * ((v28 ^ 0x64) & (2 * ((v28 ^ 0x64) & (2 * ((v28 ^ 0x64) & (2 * ((v28 ^ 0x44) & (2 * (v59 ^ v28 & 0xA)) ^ v59)) ^ v59)) ^ v59)) ^ v59)) ^ v59))) ^ 0x2E) << 16) | (((v61 ^ (2 * v63)) ^ 0xC6) << 8);
  STACK[0x51C0] = (v19 + 35754);
  LOBYTE(v28) = v19[35754];
  LOBYTE(v42) = v28 & 0x70 ^ 0xCE;
  v67 = (v28 ^ (2 * ((v28 ^ 0x64) & (2 * ((v28 ^ 0x64) & (2 * ((v28 ^ 0x64) & (2 * ((v28 ^ 0x64) & (2 * ((v28 ^ 0x64) & (2 * v42) ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42)));
  LODWORD(STACK[0x53C0]) = v67;
  v68 = (v67 ^ 0x8C38B6) & ~v66 | v66 & 0x73C700;
  LOBYTE(v42) = *STACK[0x5500];
  LOBYTE(v47) = v42 & 0xBC ^ 0xEC;
  v69 = (v54 << 8) & 0xFF00FFFF | (((v42 ^ (2 * ((v42 ^ 0x64) & (2 * ((v42 ^ 0x64) & (2 * ((v42 ^ 0x64) & (2 * ((v42 ^ 0x64) & (2 * v47) ^ v47)) ^ v47)) ^ v47)) ^ v47))) ^ 0xBC) << 16);
  LODWORD(STACK[0x53B8]) = v56;
  v70 = (v69 ^ 0x4880FF) & (v56 ^ 0x488EBD) | v69 & 0xB77100;
  LODWORD(STACK[0x5348]) = (v68 << 8) ^ 0x300510FF;
  LODWORD(STACK[0x5490]) = (v68 << 8) & 0x4BCAE900;
  STACK[0x52A8] = (v19 + 40736);
  LOBYTE(v69) = v19[40736];
  LOBYTE(v68) = v69 & 0x8E ^ 0xD5;
  LOBYTE(v69) = v69 ^ (2 * ((v69 ^ 0x64) & (2 * ((v69 ^ 0x64) & (2 * ((v69 ^ 0x64) & (2 * ((v69 ^ 0x64) & (2 * ((v69 ^ 0x64) & (2 * (v68 ^ v69 & 0xAA)) ^ v68)) ^ v68)) ^ v68)) ^ v68)) ^ v68));
  LODWORD(STACK[0x5308]) = (v70 << 8) ^ 0x230080FF;
  LODWORD(STACK[0x5720]) = (v70 << 8) & 0xD41F7A00;
  v71 = *STACK[0x52E8];
  v72 = v71 & 0xFFFFFFF6 ^ 0xFFFFFF89;
  LODWORD(STACK[0x5298]) = v71 ^ (2 * ((v71 ^ 0x64) & (2 * ((v71 ^ 0x64) & (2 * ((v71 ^ 0x64) & (2 * ((v71 ^ 0x64) & (2 * ((v71 ^ 0x64) & (2 * ((v71 ^ 0x64) & (2 * v72) ^ v72)) ^ v72)) ^ v72)) ^ v72)) ^ v72)) ^ v72));
  LOBYTE(v71) = *STACK[0x4AC0];
  LOBYTE(v72) = v71 & 0x20 ^ 0x26;
  STACK[0x5450] = (v19 + 40652);
  v73 = v19[40652];
  v74 = v73 & 0xC6 | 0x31;
  v75 = (((v71 ^ (2 * ((v71 ^ 0x64) & (2 * ((v71 ^ 0x64) & (2 * ((v71 ^ 0x64) & (2 * ((v71 ^ 0x64) & (2 * ((v71 ^ 0x44) & (2 * v72) ^ v72)) ^ v72)) ^ v72)) ^ v72)) ^ v72))) ^ 0x20) << 8) | (((v73 ^ (2 * ((v73 ^ 0x64) & (2 * ((v73 ^ 0x64) & (2 * ((v73 ^ 0x64) & (2 * ((v73 ^ 0x64) & (2 * ((v73 ^ 0x64) & (2 * ((v73 ^ 0x64) & 0x22 ^ v74)) ^ v74)) ^ v74)) ^ v74)) ^ v74)) ^ v74))) ^ 0xC6) << 16);
  STACK[0x4ED8] = (v19 + 39241);
  LOBYTE(v59) = v19[39241];
  v76 = v59 & 0xB8 ^ 0xEA;
  v77 = (((v59 ^ (2 * ((v59 ^ 0x64) & (2 * ((v59 ^ 0x64) & (2 * ((v59 ^ 0x64) & (2 * ((v59 ^ 0x64) & (2 * ((v59 ^ 0x64) & (2 * v76) ^ v76)) ^ v76)) ^ v76)) ^ v76)) ^ v76))) ^ 0x27DC13) & ~v75 | v75 & 0xD82300) << 8;
  LODWORD(STACK[0x5248]) = v77 ^ 0xC82154FF;
  LODWORD(STACK[0x5220]) = v77 & 0x31560100;
  LOBYTE(v77) = *STACK[0x4F90];
  LOBYTE(v59) = v77 & 0x76 ^ 0x49;
  LOBYTE(v77) = v77 ^ (2 * ((v77 ^ 0x64) & (2 * ((v77 ^ 0x64) & (2 * ((v77 ^ 0x64) & (2 * ((v77 ^ 0x64) & (2 * ((v77 ^ 0x64) & (2 * (v59 ^ v77 & 0x12)) ^ v59)) ^ v59)) ^ v59)) ^ v59)) ^ v59));
  LOBYTE(v59) = *STACK[0x53A8];
  v78 = v59 & 0xB6 ^ 0x69;
  LOBYTE(v59) = v59 ^ (2 * ((v59 ^ 0x64) & (2 * ((v59 ^ 0x64) & (2 * ((v59 ^ 0x64) & (2 * ((v59 ^ 0x64) & (2 * ((v59 ^ 0x64) & (2 * (v78 ^ v59 & 0x12)) ^ v78)) ^ v78)) ^ v78)) ^ v78)) ^ v78));
  STACK[0x5760] = (v19 + 36167);
  v79 = v19[36167];
  LOBYTE(v48) = v79 & 0x6C ^ 0xC4;
  v80 = (((65792 * v59) ^ 0x53A9FF) & ((v79 ^ (2 * ((v79 ^ 0x64) & (2 * ((v79 ^ 0x64) & (2 * ((v79 ^ 0x64) & (2 * ((v79 ^ 0x64) & (2 * v48) ^ v48)) ^ v48)) ^ v48)) ^ v48))) ^ 0x45139D) | (65792 * v59) & 0xBAEC00) << 8;
  LODWORD(STACK[0x53C8]) = (v80 ^ 0x806FF) & (v77 ^ 0x470D67B5) | v80 & 0xB8F29800;
  LOBYTE(v80) = *STACK[0x5700];
  LOBYTE(v77) = v80 & 0x5C ^ 0x7C;
  LOBYTE(v59) = (v80 ^ 0x64) & (2 * ((v80 ^ 0x64) & (2 * ((v80 ^ 0x64) & (2 * ((v80 ^ 0x64) & (2 * v77) ^ v77)) ^ v77)) ^ v77)) ^ v77;
  LOBYTE(v77) = *STACK[0x5058];
  LOBYTE(v67) = v77 & 0xEC ^ 4;
  LOBYTE(v67) = v77 ^ (2 * ((v77 ^ 0x64) & (2 * ((v77 ^ 0x64) & (2 * ((v77 ^ 0x64) & (2 * ((v77 ^ 0x64) & (2 * ((v77 ^ 0x64) & (2 * v67) ^ v67)) ^ v67)) ^ v67)) ^ v67)) ^ v67));
  LOBYTE(v77) = *STACK[0x5398];
  v81 = v77 & 0x9A ^ 0x5B;
  v82 = *STACK[0x52D8];
  v83 = v82 & 0x96 ^ 0xFFFFFFD9;
  LODWORD(STACK[0x51F8]) = v82 ^ (2 * ((v82 ^ 0x64) & (2 * ((v82 ^ 0x64) & (2 * ((v82 ^ 0x64) & (2 * ((v82 ^ 0x64) & (2 * ((v82 ^ 0x64) & (2 * (v83 ^ v82 & 0x32)) ^ v83)) ^ v83)) ^ v83)) ^ v83)) ^ v83));
  v84 = (((v80 ^ (2 * v59)) ^ 0x5C) << 8) | (((v77 ^ (2 * ((v77 ^ 0x64) & (2 * ((v77 ^ 0x64) & (2 * ((v77 ^ 0x64) & (2 * ((v77 ^ 0x64) & (2 * ((v77 ^ 0x64) & (2 * ((v77 ^ 0x64) & 0x3E ^ v81)) ^ v81)) ^ v81)) ^ v81)) ^ v81)) ^ v81))) ^ 0x9A) << 16);
  v85 = (v67 ^ 0xFB02CA) & ~v84 | v84 & 0x4FD00;
  LOBYTE(v77) = *STACK[0x5048];
  LOBYTE(v67) = v77 & 0x12 ^ 0x9F;
  LOBYTE(v59) = *STACK[0x4FB0];
  v86 = v59 & 0xEE ^ 0x85;
  v87 = (((v77 ^ (2 * ((v77 ^ 0x64) & (2 * ((v77 ^ 0x64) & (2 * ((v77 ^ 0x64) & (2 * ((v77 ^ 0x64) & (2 * ((v77 ^ 0x64) & (2 * ((v77 ^ 0x64) & 0x36 ^ v67)) ^ v67)) ^ v67)) ^ v67)) ^ v67)) ^ v67))) ^ 0x12) << 16) | (((v59 ^ (2 * ((v59 ^ 0x64) & (2 * ((v59 ^ 0x64) & (2 * ((v59 ^ 0x64) & (2 * ((v59 ^ 0x64) & (2 * ((v59 ^ 0x64) & (2 * (v59 & (2 * v86) ^ v86)) ^ v86)) ^ v86)) ^ v86)) ^ v86)) ^ v86))) ^ 0xEE) << 8);
  STACK[0x5188] = (v19 + 35671);
  LOBYTE(v67) = v19[35671];
  LOBYTE(v59) = v67 & 0x78 ^ 0xCA;
  v88 = ((v67 ^ (2 * ((v67 ^ 0x64) & (2 * ((v67 ^ 0x64) & (2 * ((v67 ^ 0x64) & (2 * ((v67 ^ 0x64) & (2 * ((v67 ^ 0x64) & (2 * v59) ^ v59)) ^ v59)) ^ v59)) ^ v59)) ^ v59))) ^ 0x2AD5FD) & ~v87 | v87 & 0xD52A00;
  STACK[0x5088] = (v19 + 39240);
  LOBYTE(v67) = v19[39240];
  LOBYTE(v72) = v67 & 0x28 ^ 0x22;
  LODWORD(STACK[0x4918]) = (((v85 << 8) ^ 0x45C48FF) & ((v67 ^ (2 * ((v67 ^ 0x64) & (2 * ((v67 ^ 0x64) & (2 * ((v67 ^ 0x64) & (2 * ((v67 ^ 0x64) & (2 * (((2 * v72) & 0x44 | v72) ^ (2 * v72) & v67)) ^ v72)) ^ v72)) ^ v72)) ^ v72))) ^ 0x2F5C6ADD) | (v85 << 8) & 0xD0A39500) ^ 0xFF5E6EF5;
  v88 <<= 8;
  LODWORD(STACK[0x5180]) = v88 ^ 0x54003AFF;
  LODWORD(STACK[0x5178]) = v88 & 0x817BC000;
  LOBYTE(v88) = *STACK[0x5280];
  LOBYTE(v72) = v88 & 0xAE ^ v16;
  LOBYTE(v55) = (v88 ^ 0x64) & (2 * ((v88 ^ 0x64) & (2 * ((v88 ^ 0x64) & (2 * ((v88 ^ 0x64) & (2 * ((v88 ^ 0x44) & (2 * (v72 ^ v88 & 0xA)) ^ v72)) ^ v72)) ^ v72)) ^ v72)) ^ v72;
  STACK[0x4820] = (v19 + 36667);
  LOBYTE(v72) = v19[36667];
  LOBYTE(v67) = v72 & 0x22 ^ 0xA7;
  v89 = (((v72 ^ (2 * ((v72 ^ 0x64) & (2 * ((v72 ^ 0x64) & (2 * ((v72 ^ 0x64) & (2 * ((v72 ^ 0x64) & (2 * ((v72 ^ 0x44) & (2 * ((v72 ^ 0x44) & 6 ^ v67)) ^ v67)) ^ v67)) ^ v67)) ^ v67)) ^ v67))) ^ 0x22) << 8) | (((v88 ^ (2 * v55)) ^ 0xAE) << 16);
  v90 = *STACK[0x5510];
  v91 = v90 & 0xE ^ 0x15;
  v92 = v90 ^ (2 * ((v90 ^ 0x64) & (2 * ((v90 ^ 0x64) & (2 * ((v90 ^ 0x64) & (2 * ((v90 ^ 0x64) & (2 * ((v90 ^ 0x64) & (2 * (v91 ^ v90 & 0xAAAAAAAA)) ^ v91)) ^ v91)) ^ v91)) ^ v91)) ^ v91));
  HIDWORD(v93) = v92 ^ 0xE;
  LODWORD(v93) = ((v92 & 0x80 ^ 0xF42D1980) & ~v89 | v89 & 0xD2E600) ^ 0xF42D1980;
  v94 = *STACK[0x5010];
  v95 = v94 & 0x5C ^ 0xFFFFFFFC;
  HIDWORD(v93) = v93 >> 7;
  LODWORD(v93) = HIDWORD(v93);
  v96 = v93 >> 17;
  LODWORD(STACK[0x5440]) = v94 ^ (2 * ((v94 ^ 0x64) & (2 * ((v94 ^ 0x64) & (2 * ((v94 ^ 0x64) & (2 * ((v94 ^ 0x64) & (2 * v95) ^ v95)) ^ v95)) ^ v95)) ^ v95));
  LODWORD(STACK[0x5208]) = (2 * v96) & 0xAF41B074;
  LODWORD(STACK[0x5200]) = v96 - 677324742;
  LOBYTE(v96) = *STACK[0x5198];
  LOBYTE(v94) = v96 & 0xCE ^ 0xB5;
  v97 = ((v96 ^ (2 * ((v96 ^ 0x64) & (2 * ((v96 ^ 0x64) & (2 * ((v96 ^ 0x64) & (2 * ((v96 ^ 0x64) & (2 * ((v96 ^ 0x64) & (2 * (v94 ^ v96 & 0xAA)) ^ v94)) ^ v94)) ^ v94)) ^ v94)) ^ v94))) ^ 0xA37B) & (v25 ^ 0xFFFFE3FF) | v25 & 0x5C00;
  LOBYTE(v94) = *STACK[0x5750];
  LOBYTE(v95) = v94 & 0x36 ^ 0xA9;
  v98 = (((v94 ^ (2 * ((v94 ^ 0x64) & (2 * ((v94 ^ 0x64) & (2 * ((v94 ^ 0x64) & (2 * ((v94 ^ 0x64) & (2 * ((v94 ^ 0x64) & (2 * (v95 ^ v94 & 0x12)) ^ v95)) ^ v95)) ^ v95)) ^ v95)) ^ v95))) ^ 0x36) << 8) | (v97 << 16);
  STACK[0x52A0] = (v19 + 39903);
  LOBYTE(v97) = v19[39903];
  LOBYTE(v95) = v97 & 0xB2 ^ 0xEF;
  LODWORD(STACK[0x5160]) = LODWORD(STACK[0x56D0]);
  LODWORD(STACK[0x51B0]) = v29 & 0x4C023400;
  LODWORD(STACK[0x5148]) = v29 ^ 0x23C1CBFF;
  v99 = LODWORD(STACK[0x5400]) << 8;
  LODWORD(STACK[0x5130]) = LODWORD(STACK[0x53F8]);
  LODWORD(STACK[0x5270]) = v99 & 0x5B581000;
  LODWORD(STACK[0x50D8]) = v99 ^ 0x2700FF;
  LODWORD(STACK[0x4A98]) = LODWORD(STACK[0x53E0]) << 8;
  LODWORD(STACK[0x5100]) = LODWORD(STACK[0x53B0]);
  LODWORD(STACK[0x5168]) = v65;
  LODWORD(STACK[0x5170]) = v69;
  LODWORD(STACK[0x53F8]) = (v97 ^ (2 * ((v97 ^ 0x64) & (2 * ((v97 ^ 0x64) & (2 * ((v97 ^ 0x64) & (2 * ((v97 ^ 0x64) & (2 * ((v97 ^ 0x64) & (2 * (v95 ^ v97 & 0x16)) ^ v95)) ^ v95)) ^ v95)) ^ v95)) ^ v95)));
  LODWORD(STACK[0x5400]) = v98 & 0x768C0C00;
  LODWORD(STACK[0x53B0]) = v98 ^ 0x842F3FF;
  return (*(STACK[0x57D8] + 8 * a2))(STACK[0x5570]);
}

uint64_t sub_100136644()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 12064)))(v1);
  STACK[0x7E80] = 0;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_100136678(unint64_t a1)
{
  v2 = STACK[0x1538];
  v3 = STACK[0x74F0] + v1;
  v4 = STACK[0x5C40];
  STACK[0xCF30] += 32;
  LODWORD(STACK[0xD374]) = 0;
  STACK[0xD340] = v3;
  STACK[0xD350] = a1;
  return (*(STACK[0x57D8] + 8 * ((75 * (v4 != 0)) ^ v2)))();
}

uint64_t sub_10013682C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, unsigned int a35)
{
  v38 = a3 + 891452332;
  v39 = (v38 ^ 0x99618DF6) & (2 * (v38 & 0xD1758DF6)) ^ v38 & 0xD1758DF6;
  v40 = ((2 * (v38 ^ 0x39E89596)) ^ 0xD13A30C0) & (v38 ^ 0x39E89596) ^ (2 * (v38 ^ 0x39E89596)) & 0xE89D1860;
  v41 = v40 ^ 0x28850820;
  v42 = (v40 ^ 0xC0181040) & (4 * v39) ^ v39;
  v43 = ((4 * v41) ^ 0xA2746180) & v41 ^ (4 * v41) & 0xE89D1860;
  v44 = v42 ^ 0xE89D1860 ^ (v43 ^ 0xA0140000) & (16 * v42);
  v45 = (16 * (v43 ^ 0x48891860)) & 0xE89D1860 ^ 0x600C1860 ^ ((16 * (v43 ^ 0x48891860)) ^ 0x89D18600) & (v43 ^ 0x48891860);
  v46 = (v44 << 8) & 0xE89D1800 ^ v44 ^ ((v44 << 8) ^ 0x9D186000) & v45;
  v47 = v38 ^ (2 * ((v46 << 16) & 0x689D0000 ^ v46 ^ ((v46 << 16) ^ 0x18600000) & ((v45 << 8) & 0x689D0000 ^ 0x60850000 ^ ((v45 << 8) ^ 0x9D180000) & v45)));
  v48 = v36 - 110763214;
  v49 = (v48 ^ 0xD42916EC) & (2 * (v48 & 0xD43144EC)) ^ v48 & 0xD43144EC;
  v50 = ((2 * (v48 ^ 0x542B96A4)) ^ 0x35A490) & (v48 ^ 0x542B96A4) ^ (2 * (v48 ^ 0x542B96A4)) & 0x801AD248;
  v51 = v50 ^ 0x800A5248;
  v52 = v50 & (4 * v49) ^ v49;
  v53 = ((4 * v51) ^ 0x6B4920) & v51 ^ (4 * v51) & 0x801AD248;
  v54 = (v53 ^ 0xA4000) & (16 * v52) ^ v52;
  v55 = ((16 * (v53 ^ 0x80109248)) ^ 0x1AD2480) & (v53 ^ 0x80109248) ^ (16 * (v53 ^ 0x80109248)) & 0x801AD240;
  v56 = v54 ^ 0x801AD248 ^ (v55 ^ 0x80048) & (v54 << 8);
  v57 = ((v56 << 16) ^ 0x52480000) & (((v55 ^ 0x8012D248) << 8) & 0x1A0000 ^ (((v55 ^ 0x8012D248) << 8) ^ 0x1AD20000) & (v55 ^ 0x8012D248) ^ 0x80000);
  v58 = (((v48 ^ (2 * ((v56 << 16) & 0x1A0000 ^ v56 ^ v57)) ^ 0x536DCE36) - 1894717660) ^ ((v48 ^ (2 * ((v56 << 16) & 0x1A0000 ^ v56 ^ v57)) ^ 0xD2B04881) + 248340885) ^ ((v48 ^ (2 * ((v56 << 16) & 0x1A0000 ^ v56 ^ v57)) ^ 0x55C966CB) - 1984671777)) - 693390976;
  v59 = (a35 < 0xDF157AEA) ^ (v58 < 0xDF157AEA);
  v60 = v58 < a35;
  if (v59)
  {
    v60 = a35 < 0xDF157AEA;
  }

  return (*(STACK[0x2D0] + 8 * ((v60 * v37) ^ v35)))(a1, a2, v47);
}

uint64_t sub_100136B64()
{
  *(v4 - 232) = STACK[0x8D0];
  *(v4 - 240) = 1211098651 - 711523751 * (v0 ^ 0x301A21D1) + v2;
  v5 = (*(v3 + 8 * (v1 + v2 - 26)))(v4 - 240);
  return (*(v3 + 8 * (v2 + 1211075342)))(v5);
}

uint64_t sub_100136CB4@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v1) = v2;
  *(a1 - 0x308E083E0C524CBELL) = v2;
  return (*(v4 + 8 * v3))();
}

uint64_t sub_100136E68@<X0>(int a1@<W8>)
{
  *v4 = v3;
  *(v3 + 8) = *(v1 + v2);
  *(v1 + v2) = v3;
  return (*(v5 + 8 * a1))();
}

uint64_t sub_100136E8C()
{
  v3 = (*(v0 + 8 * (v1 + 22921)))(v2);
  STACK[0x978] = 0;
  return (*(v0 + 8 * v1))(v3);
}

uint64_t sub_100136F80()
{
  v3 = *(STACK[0xB38] + 24);
  STACK[0x10D8] = v3;
  return (*(v2 + 8 * (((v3 == 0) * (((v0 - 1803578796) | 0x23508101) ^ (v1 + 89))) ^ v0)))();
}

uint64_t sub_100136FD4(char a1, uint64_t a2, uint64_t a3)
{
  v3[23] = 111 * (((v6[23] ^ 0xC5) + 19) ^ ((v6[23] ^ 0xA5) + 115) ^ (((v5 + 50) ^ 0xCB) + (v6[23] ^ 0x40))) - 104;
  v3[22] = 111 * (((v6[22] ^ 6) - 104) ^ ((v6[22] ^ 0xE3) + 115) ^ ((v6[22] ^ 0x83) + 19)) - 104;
  v3[21] = 111 * (((v6[21] ^ 0xE7) - 104) ^ ((v6[21] ^ 2) + 115) ^ ((v6[21] ^ a1) + 19)) - 104;
  v3[20] = 111 * (((v6[20] ^ 0xB6) - 104) ^ ((v6[20] ^ 0x53) + 115) ^ ((v6[20] ^ 0x33) + 19)) - 104;
  v3[19] = 111 * (((v6[19] ^ 0xA3) - 104) ^ ((v6[19] ^ 0x46) + 115) ^ ((v6[19] ^ 0x26) + 19)) - 104;
  v3[18] = 111 * (((v6[18] ^ 0x7E) - 104) ^ ((v6[18] ^ 0x9B) + 115) ^ ((v6[18] ^ 0xFB) + 19)) - 104;
  v3[17] = 111 * (((v6[17] ^ 0x60) - 104) ^ ((v6[17] ^ 0x85) + 115) ^ ((v6[17] ^ 0xE5) + 19)) - 104;
  return (*(a3 + 8 * ((12532 * (v5 != 2080995834)) ^ v4)))();
}

uint64_t sub_1001371A8()
{
  v3 = (*(v2 + 8 * (v0 ^ 0x528D)))();
  *(v1 - 0x30BDFED8F32E6519) = 0;
  *(v1 - 0x30BDFED8F32E6511) = 0;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_100137368()
{
  *(v3 - 240) = (v2 + v0 - 1176) ^ (410706167 * ((((v3 - 240) ^ 0xC31E419A | 0x80AF8A4C) - ((v3 - 240) ^ 0xC31E419A) + (((v3 - 240) ^ 0xC31E419A) & 0x7F5075B2)) ^ 0xD86EE780));
  v4 = (*(v1 + 8 * (v2 + v0 + 173)))(v3 - 240);
  return (*(v1 + 8 * (v0 + 1211073665)))(v4);
}

uint64_t sub_1001373F0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(v9 + 8 * a4);
  STACK[0x560] = v7 & 0xFFFFFFF8;
  STACK[0x5B0] = a7 - (v7 & 0xFFFFFFF8) + 8;
  v11 = v8 + v7 + STACK[0x5D8] - a7;
  STACK[0x5A0] = STACK[0x430] + v11;
  STACK[0x570] = v7;
  STACK[0x590] = STACK[0x420] + v11;
  STACK[0x580] = STACK[0x418] + v11;
  return v10();
}

uint64_t sub_100137618()
{
  v3 = STACK[0xDCB8];
  STACK[0x52B0] = STACK[0xDCB8];
  STACK[0x52D0] = v3 + 6031;
  v4 = *(v3 + 6031);
  *(STACK[0xDCB0] + 4 * ((6419 * v0 + 36215998) % 0x2240u)) = v2;
  return (*(STACK[0x57D8] + 8 * v1))(0, v4);
}

uint64_t sub_1001378C4@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6)
{
  *(v8 - 200) = v7;
  *(v8 - 256) = a1;
  return (*(v9 + 8 * v6))(a6);
}

uint64_t sub_100137B10()
{
  LODWORD(STACK[0x9D58]) = v1;
  STACK[0x7ED8] -= 432;
  v2 = STACK[0x6A08];
  LODWORD(STACK[0x98F4]) = v1;
  STACK[0x6230] = v2;
  LODWORD(STACK[0x6974]) = 1357983817;
  return (*(STACK[0x57D8] + 8 * ((v0 - 1156191734) ^ 0xBB164964 ^ (6315 * ((v0 - 1156191734) >= 0x1AD46D7C)))))();
}

uint64_t sub_100137BFC()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + v1)))();
  STACK[0xA708] = 0;
  return (*(v2 + 8 * (v0 - 16231)))(v3);
}

uint64_t sub_100137C38@<X0>(int a1@<W8>)
{
  if ((a1 - v3 - v2) == (((a1 + 19) | 0x42) ^ ((a1 + 31) | 0x54) ^ 0xDD))
  {
    v1 = 0;
  }

  return (*(STACK[0x57D8] + 8 * ((696 * v1) ^ (a1 + 5593))))();
}

uint64_t sub_100137C98(uint64_t a1)
{
  *(a1 + 248) = *(STACK[0x4D10] + 24) + 16 * *(a1 + 3744);
  *(a1 + 256) = 0xD38CBDD3ACAFF84ALL;
  v1 = STACK[0x57D8];
  *(a1 + 240) = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x41FC]));
  return (*(v1 + 8 * (*(a1 + 3724) + 8829)))();
}

uint64_t sub_100137CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7 - 6927;
  v9 = v7 + 1569396342;
  v10 = STACK[0x7338];
  v11 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v8);
  return (*(v11 + 8 * (v8 ^ 0x5D8B21A4 ^ v9)))(v10, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_100137D90()
{
  STACK[0xBBF0] = v1;
  STACK[0xBBA0] = &STACK[0x96D0];
  STACK[0xA098] = &STACK[0x7F94];
  STACK[0x6F18] = &STACK[0x7F98];
  STACK[0x7748] = &STACK[0x7224];
  STACK[0xA050] = &STACK[0x9860];
  STACK[0x79D0] = &STACK[0x9480];
  LODWORD(STACK[0x9F54]) = 1644325722;
  return (*(STACK[0x57D8] + 8 * v0))(103679699);
}

uint64_t sub_100137EA0()
{
  v0 = STACK[0x57D8];
  v1 = STACK[0x1CD4];
  v2 = LODWORD(STACK[0x1CD4]) + 20181;
  STACK[0x7CA8] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1CD4]));
  return (*(v0 + 8 * ((v2 ^ 0x5FA0) + v1)))();
}

uint64_t sub_100137EE0()
{
  v4 = v0 + (((v1 ^ 0xACE7) + 13158) ^ ((v1 ^ 0x5120) - 12637) ^ (((3 * (((v3 - 5344) | 0x4846) ^ 0x5827)) ^ 0x9CE8) + (v1 ^ 0x238))) - 3238;
  LOWORD(STACK[0xB976]) = v4;
  v5 = v4 & 0xA9F2 ^ 0x86E5;
  v6 = v4 ^ 0x2C28;
  v7 = STACK[0x57D8];
  v8 = (*(STACK[0x57D8] + 8 * (v3 + 22350)))((v4 ^ (2 * (v6 & (2 * (v6 & (2 * (v6 & (2 * (v6 & (2 * (v6 & (2 * (v6 & (2 * (v6 & (2 * (v6 & (2 * (v6 & (2 * (v6 & (2 * (v6 & (2 * (v6 & (2 * (v6 & (2 * (v5 ^ v4 & 0x5DA)) ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5))) ^ 0xA9F2u);
  STACK[0x8E68] = v8;
  if (v2)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  return (*(v7 + 8 * ((29963 * v10) ^ v3)))();
}

uint64_t sub_1001380EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0xA3B0]) = v9;
  LODWORD(STACK[0xC224]) = -714601799;
  return (*(STACK[0x57D8] + 8 * (v8 + a8)))();
}

uint64_t sub_10013812C()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  STACK[0x9778] = 0;
  return (*(v1 + 8 * (v0 - 11713)))(v2);
}

uint64_t sub_10013817C()
{
  v1 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * ((((v0 - 137) | 0x10C0) + 461) ^ v0)))();
}

uint64_t sub_100138234(uint64_t a1)
{
  STACK[0x6BB0] = STACK[0x65C8];
  LODWORD(STACK[0xACB4]) = -1915525707;
  return (*(STACK[0x57D8] + 8 * ((((v1 + 260564898) | 0x1814) - 260564347) ^ v1 ^ (32390 * (v1 < 0xE1FD3AAE)))))(a1, 2147548249, 0x30BDFED8F32E6831);
}

uint64_t sub_1001382C0@<X0>(unint64_t a1@<X8>)
{
  STACK[0xC900] = a1;
  LODWORD(STACK[0xCC58]) = v2;
  return (*(STACK[0x57D8] + 8 * (((((v1 - 299370496) | 0x846) ^ 0x40C5) * (v1 < 0x755C47EE)) ^ (v1 - 299382611))))();
}

uint64_t sub_100138334()
{
  LODWORD(STACK[0xDFD0]) = v0;
  LODWORD(STACK[0x950C]) = v5;
  *(v4 + 684) = v3;
  return (*(STACK[0x57D8] + 8 * ((119 * (((((v2 ^ 5) + 10) ^ v2 ^ ((v2 ^ 0xE) + 3)) & ((v1 ^ 0x71B2) - 18171)) != 3)) ^ v1)))();
}

uint64_t sub_1001383D0()
{
  *STACK[0xCC90] = 0;
  *STACK[0xC200] = -769884012;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100138418()
{
  v2 = v1 == 0x4CD3383D2FF34AE8;
  LOBYTE(STACK[0x637F]) = v2;
  return (*(STACK[0x57D8] + 8 * (((((v0 - 4963) ^ 0x7947) - 8100) * v2) ^ v0)))();
}

uint64_t sub_100138480()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x241B)))();
  STACK[0xB0A0] = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_100138550()
{
  v1 = *(STACK[0x57D8] + 8 * ((((v0 - 2070217849) & 0xF17A73FF ^ 0xD927) * (v0 < 0x444F771F)) ^ (v0 + 1981130019)));
  LODWORD(STACK[0x3B40]) = 16;
  return v1();
}

uint64_t sub_1001386D8(uint64_t a1)
{
  v4 = v1 + v2 + 626;
  STACK[0x9D0] = *(v3 + 8 * v4);
  return (*(v3 + 8 * (((29 * (v2 ^ (v2 - 747))) ^ 0x48BA) + v4)))(a1, 1211082140);
}

uint64_t sub_10013873C()
{
  LODWORD(STACK[0x610]) = v1;
  v6 = v0 + v4 + 1203;
  v7 = 1534937323 * ((((v5 - 216) | 0xC8C478A544219141) - ((v5 - 216) & 0xC8C478A544219141)) ^ 0x5BCF06782CF6A06);
  *(v5 - 216) = v7;
  *(v5 - 200) = v7;
  *(v5 - 196) = v6 ^ v7;
  *(v5 - 208) = (v6 ^ 0xFD1) - v7;
  *(v5 - 204) = v7 + v4 + 948130785;
  *(v5 - 184) = (v6 | 2) + v7;
  *(v5 - 192) = v3 + v7;
  v8 = (*(v2 + 8 * (v4 ^ 0x1E01726D)))(v5 - 216);
  return (*(v2 + 8 * *(v5 - 180)))(v8);
}

uint64_t sub_10013883C@<X0>(int a1@<W8>, int8x16_t a2@<Q4>, int8x16_t a3@<Q5>)
{
  v8 = veorq_s8(v4[7], a2);
  v4[6] = veorq_s8(v4[6], a2);
  v4[7] = v8;
  v9 = veorq_s8(*v4, a3);
  v4[-1] = veorq_s8(v4[-1], a3);
  *v4 = v9;
  return (*(v6 + 8 * (((v5 == 0) * ((a1 ^ (v7 + 1788)) - 2247)) ^ v3)))();
}

uint64_t sub_100138A20()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x5F89)))();
  STACK[0xF10] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_100138A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x4E28]) = LODWORD(STACK[0x5670]) + LODWORD(STACK[0x5700]);
  LODWORD(STACK[0x5390]) = v7 << 8;
  return (*(STACK[0x57D8] + 8 * (a7 - 3225)))();
}

uint64_t sub_100138D34()
{
  v2 = STACK[0x57D8];
  STACK[0xCFD8] = *(STACK[0x57D8] + 8 * v0);
  return (*(v2 + 8 * v1))();
}

uint64_t sub_100138D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X5>, char a4@<W6>, int a5@<W7>, uint64_t a6@<X8>)
{
  v19 = *(*v15 + ((*v17 & ((a2 & 0xFFFFFFF8) + a5)) & 0xFFFFFFFFFFFFFFF8));
  v20 = __ROR8__(a2 & 0xFFFFFFFFFFFFFFF8, 8);
  v21 = ((((v20 + v19) << ((v6 ^ 0xBBu) + 20)) & 0x39EC50B7F36EDF00) - (v20 + v19) - 0x1CF6285BF9B76F81) ^ 0xEA1AB378B0CBA4A4 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(((((v20 + v19) << ((v6 ^ 0xBBu) + 20)) & 0x39EC50B7F36EDF00) - (v20 + v19) - 0x1CF6285BF9B76F81) ^ 0xEA1AB378B0CBA4A4, 8) + v21) ^ v16;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ a3;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (((2 * (v26 + v25)) | 0x57E2C4AEFF8D197ELL) - (v26 + v25) + 0x540E9DA880397341) ^ 0xCCA20C97844DD822;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ v18;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ v13;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ v14;
  v34 = __ROR8__(v33, 8);
  v35 = __ROR8__(v32, 61);
  LOBYTE(v32) = v12 + ((((((2 * (v34 + (v33 ^ v35))) & 0x98E1F650E1C78062) - (v34 + (v33 ^ v35)) + 0x338F04D78F1C3FCELL) ^ 0x5CEC58F96ACBED08) >> (v9 & 0x38)) ^ *v8);
  *(a6 + (a1 & 0x7F)) = (((2 * v32) & 0xF6) - 2 * ((a4 + ((2 * v32) & 0x16) + 98) ^ ((2 * v32) & 0xF6 | (a4 + 106))) + 17) ^ 0xDE;
  return (*(STACK[0x57D8] + 8 * ((24739 * ((v11 | v10) >= 0)) ^ (v6 + v7))))(a1 + 11, a2 + 1);
}

uint64_t sub_100138F5C()
{
  v3 = &STACK[0x10120] + v0;
  v4 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * (v2 + 12718)))(0);
  v5 = (*(v4 + 8 * (v2 + 12860)))(v1 + 25, v3) != (((v2 ^ 0x4A74) + 15933) ^ 0xFFFF9ABD) + 2589 * (v2 ^ 0x4A74);
  return (*(v4 + 8 * ((207 * v5) ^ v2)))();
}

uint64_t sub_100139038()
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
  STACK[0xEF40] = 0;
  STACK[0xEF48] = v0;
  v10 = 16777619 * ((-548819963 * v9 + 7) ^ (-548819963 * v9)) % 7;
  v11 = *(&STACK[0xEF40] | v10);
  *(&STACK[0xEF40] | v10) = 0;
  LOBYTE(STACK[0xEF47]) = v11;
  v12 = 16777619 * ((-548819963 * v9 + 6) ^ (-548819963 * v9)) % 6;
  v13 = *(&STACK[0xEF40] | v12);
  *(&STACK[0xEF40] | v12) = STACK[0xEF46];
  LOBYTE(STACK[0xEF46]) = v13;
  v14 = 16777619 * ((-548819963 * v9 + 5) ^ (-548819963 * v9)) % 5;
  v15 = *(&STACK[0xEF40] | v14);
  *(&STACK[0xEF40] | v14) = STACK[0xEF45];
  LOBYTE(STACK[0xEF45]) = v15;
  v16 = STACK[0xEF40];
  LOBYTE(STACK[0xEF40]) = STACK[0xEF44];
  LOBYTE(STACK[0xEF44]) = v16;
  v17 = 16777619 * ((-548819963 * v9 + 3) ^ (-548819963 * v9)) % 3;
  v18 = *(&STACK[0xEF40] | v17);
  *(&STACK[0xEF40] | v17) = STACK[0xEF43];
  LOBYTE(STACK[0xEF43]) = v18;
  v19 = STACK[0xEF41];
  LOBYTE(STACK[0xEF42]) = STACK[0xEF40];
  LOWORD(STACK[0xEF40]) = v19;
  v20 = vdup_n_s32(-548819963 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = -548819963 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xEF40] = vmla_s32(v22, STACK[0xEF40], vdup_n_s32(0x1000193u));
  STACK[0xEF48] ^= STACK[0xEF40];
  STACK[0xEF48] = vmul_s32(vsub_s32(STACK[0xEF48], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xEF4A];
  LOWORD(STACK[0xEF49]) = STACK[0xEF48];
  LOBYTE(STACK[0xEF48]) = v23;
  v24 = (&STACK[0xEF48] | v17);
  v25 = *v24;
  *v24 = STACK[0xEF4B];
  LOBYTE(STACK[0xEF4B]) = v25;
  LOBYTE(v24) = STACK[0xEF48];
  LOBYTE(STACK[0xEF48]) = STACK[0xEF4C];
  LOBYTE(STACK[0xEF4C]) = v24;
  v26 = (&STACK[0xEF48] | v14);
  LOBYTE(v24) = *v26;
  *v26 = STACK[0xEF4D];
  LOBYTE(STACK[0xEF4D]) = v24;
  v27 = (&STACK[0xEF48] | v12);
  LOBYTE(v26) = *v27;
  *v27 = STACK[0xEF4E];
  LOBYTE(STACK[0xEF4E]) = v26;
  v28 = (&STACK[0xEF48] | v10);
  v29 = *v28;
  *v28 = STACK[0xEF4F];
  LOBYTE(STACK[0xEF4F]) = v29;
  v30 = STACK[0xEF48];
  v31 = (-548819963 * STACK[0xEF48]) ^ v9;
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
  *STACK[0x4630] = STACK[0xEF48];
  return (*(STACK[0x57D8] + 8 * v1))(v37, v38, v39, v40);
}

uint64_t sub_10013952C()
{
  v4 = *(&STACK[0x320] + (v2 + 2361 * v0 - 2696) % 0xA88u);
  v5 = *(&STACK[0xDE0] + (825 * (v4 | ((v4 < 0x60) << 8)) + 2673000) % (((v1 - 18830) | 0x4184) ^ 0x5AB4u));
  v6 = *(&STACK[0x320] + (2361 * (((BYTE2(v5) ^ 0x57675828) - 1155893791) ^ ((BYTE2(v5) ^ 0x9BEE83EE) + 2006167079) ^ ((BYTE2(v5) ^ 0xCC89DBA6) + 552924783)) - 239840160) % 0xA88);
  v7 = *(&STACK[0x320] + (2361 * (((HIBYTE(v5) ^ 0xC31D7176) - 939142058) ^ ((HIBYTE(v5) ^ 0x54D6A455) + 1607336311) ^ ((HIBYTE(v5) ^ 0x97CBD55F) - 1663864707)) - 1444856415) % 0xA88);
  v8 = v7 & 0xFFFFFFB2 | 9;
  v9 = (v6 & 0xA0 | 0x48) ^ v6 & 0x90;
  v10 = *(&STACK[0x320] + (2361 * (((BYTE1(v5) ^ 0xFD70BA58) + 399161189) ^ ((BYTE1(v5) ^ 0xCB0645BB) + 565987464) ^ ((BYTE1(v5) ^ 0x3676FF50) - 590548371)) + 843537137) % 0xA88);
  v11 = (((v7 ^ 0x20) & (2 * ((v7 ^ 0x20) & (2 * ((v7 ^ 0x20) & (2 * ((v7 ^ 0x20) & (2 * ((v7 ^ 0x20) & (2 * ((v7 ^ 0x20) & (2 * v8) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8) << 17) ^ (v7 << 16);
  LOBYTE(v8) = v10 & 0xFE ^ 0x2F;
  v12 = (v6 ^ (2 * ((v6 ^ 0x20) & (2 * ((v6 ^ 0x20) & (2 * ((v6 ^ 0x20) & (2 * ((v6 ^ 0x20) & (2 * ((v6 ^ 0x20) & (2 * v9) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9))) << 8;
  v13 = v10 ^ 0x20;
  v14 = v10 ^ (2 * (v13 & (2 * (v13 & (2 * (v13 & (2 * (v13 & (2 * (v13 & (2 * (v13 & (2 * v8) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8));
  v15 = *(&STACK[0x320] + (2361 * (((v5 ^ 0x1D941BF6) + 1512046186) ^ ((v5 ^ 0x3B8043E6) + 2081138298) ^ ((v5 ^ 0x261458F9u) + 1637858663)) + 653732226) % 0xA88);
  v16 = v15 ^ (2 * ((v15 ^ 0x20) & (2 * ((v15 ^ 0x20) & (2 * ((v15 ^ 0x20) & (2 * ((v15 ^ 0x20) & (2 * (v15 & 0x6C ^ 0xE6 ^ v15 & 0xC)) ^ v15 & 0x6C ^ 0xE6)) ^ v15 & 0x6C ^ 0xE6)) ^ v15 & 0x6C ^ 0xE6)) ^ v15 & 0x6C ^ 0xE6));
  *(&STACK[0xDE0] + 825 * (((2 * v0) & 0x2A36) + (v0 ^ 0x151Bu)) % 0x1940) = (((((((v11 ^ 0xB02B50) & (v12 ^ 0xFFCFD8) | v12 & 0xD400) ^ 0x72C81F) & (v14 ^ 0xFFFF01) ^ (v14 & 0xB0 | 0x20000)) << 8) ^ 0x4A0C3EDC) & (v16 ^ 0xFFFFFFB0) | v16 & 0x23) ^ 0x449F7215;
  return (*(v3 + 8 * ((11622 * (v0 == 255)) ^ v1)))();
}

uint64_t sub_100139968@<X0>(unint64_t a1@<X0>, unint64_t a2@<X8>)
{
  STACK[0xE4F8] = v4;
  LOBYTE(STACK[0xE507]) = v5;
  STACK[0xE508] = v6;
  LODWORD(STACK[0xE514]) = v7;
  STACK[0xE518] = v8;
  STACK[0xE520] = a2;
  STACK[0xE528] = a1;
  v9 = STACK[0x7ED8];
  STACK[0xE530] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v9 + 16;
  if (v4)
  {
    v10 = v6 == 0;
  }

  else
  {
    v10 = 1;
  }

  v13 = !v10 && v8 != 0 && v2 - 103702798 + ((v3 + 16205) | 0x802u) + 483 < 0xFFFFFFFE;
  return (*(STACK[0x57D8] + 8 * ((v13 * ((3 * (v3 ^ 0x3610)) ^ 0x45A6)) ^ v3)))();
}

uint64_t sub_100139A14@<X0>(int a1@<W8>)
{
  *v1 = 0;
  *v2 = 103679699;
  v3 = STACK[0x57D8];
  STACK[0xCF38] = *(STACK[0x57D8] + 8 * (a1 - 23286));
  return (*(v3 + 8 * (a1 - 41578 + ((a1 - 23286) ^ 0x5A78))))();
}

uint64_t sub_100139B28()
{
  STACK[0x5FE8] = STACK[0xA688];
  LODWORD(STACK[0xB8AC]) = 86125138;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100139B90()
{
  v1 = *(v0 + 408);
  *(v0 + 416) = v1;
  v2 = *(v0 + 404);
  *(v0 + 424) = v2;
  *(v0 + 428) = v2 - 1000;
  v3 = v1 + *(v0 + 3800) - 68;
  *(v0 + 296) = v3;
  v4 = STACK[0x57D8];
  v5 = *(STACK[0x57D8] + 8 * (v2 ^ 0x275A));
  *(v0 + 432) = v3;
  *(v0 + 280) = v5;
  return (*(v4 + 8 * (v2 + 7890)))();
}

uint64_t sub_100139CA0@<X0>(unsigned int a1@<W8>)
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
  STACK[0xEE60] = 0;
  STACK[0xEE68] = v1;
  v12 = 16777619 * ((-548819963 * v11 + 7) ^ (-548819963 * v11)) % 7;
  v13 = 16777619 * ((-548819963 * v11 + 6) ^ (-548819963 * v11)) % 6;
  v14 = 16777619 * ((-548819963 * v11 + 5) ^ (-548819963 * v11)) % 5;
  v15 = 16777619 * ((-548819963 * v11 + 3) ^ (-548819963 * v11)) % 3;
  v16 = *(&STACK[0xEE60] | v12);
  *(&STACK[0xEE60] | v12) = STACK[0xEE67];
  v17 = *(&STACK[0xEE60] | v13);
  *(&STACK[0xEE60] | v13) = STACK[0xEE66];
  v18 = *(&STACK[0xEE60] | v14);
  *(&STACK[0xEE60] | v14) = STACK[0xEE65];
  v19 = STACK[0xEE60];
  LOBYTE(STACK[0xEE60]) = STACK[0xEE64];
  v20 = *(&STACK[0xEE60] | v15);
  *(&STACK[0xEE60] | v15) = STACK[0xEE63];
  v21 = vdup_n_s32(-548819963 * v11);
  v22.i32[0] = v21.i32[0];
  v22.i32[1] = -548819963 * v11 + 1;
  LOBYTE(STACK[0xEE67]) = v16;
  LOBYTE(STACK[0xEE66]) = v17;
  LOBYTE(STACK[0xEE65]) = v18;
  v23 = veor_s8(vmul_s32(v22, v21), v21);
  LOBYTE(STACK[0xEE64]) = v19;
  LOBYTE(STACK[0xEE63]) = v20;
  v24 = STACK[0xEE61];
  LOBYTE(STACK[0xEE62]) = STACK[0xEE60];
  LOWORD(STACK[0xEE60]) = v24;
  v25 = vdup_n_s32(0x1000193u);
  STACK[0xEE60] = vmla_s32(v23, STACK[0xEE60], v25);
  v26 = STACK[0xEE68];
  v27 = (-548819963 * STACK[0xEE68]) ^ v11;
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
  v41 = *(&STACK[0xEE68] + v12);
  *(&STACK[0xEE68] + v12) = STACK[0xEE6F];
  LOBYTE(STACK[0xEE6F]) = v41;
  v42 = *(&STACK[0xEE68] + v13);
  *(&STACK[0xEE68] + v13) = STACK[0xEE6E];
  LOBYTE(STACK[0xEE6E]) = v42;
  v43 = *(&STACK[0xEE68] + v14);
  *(&STACK[0xEE68] + v14) = STACK[0xEE6D];
  LOBYTE(STACK[0xEE6D]) = v43;
  v44 = STACK[0xEE68];
  LOBYTE(STACK[0xEE68]) = STACK[0xEE6C];
  LOBYTE(STACK[0xEE6C]) = v44;
  v45 = *(&STACK[0xEE68] + v15);
  *(&STACK[0xEE68] + v15) = STACK[0xEE6B];
  LOBYTE(STACK[0xEE6B]) = v45;
  v46 = STACK[0xEE69];
  LOBYTE(STACK[0xEE6A]) = STACK[0xEE68];
  LOWORD(STACK[0xEE68]) = v46;
  STACK[0xEE68] = vmla_s32(v23, STACK[0xEE68], v25);
  *STACK[0x4630] = STACK[0xEE68] ^ STACK[0xEE60];
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_10013A0B8(unint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, int a8)
{
  v20 = (((v10 ^ a8) & v16) << v18) | ((v10 ^ a8) >> v13);
  v21 = ((v17 & (2 * ((v20 ^ (2 * (v20 & v17))) & v17))) << v11 << v12) ^ v20 ^ (2 * (v20 & v17));
  v22 = *(((a2 & v15 & (16 * (v21 & LOBYTE(STACK[0x5700]))) ^ v21) ^ ((v8 + 12798) - 14534)) + v19 + 2845);
  v23 = 16 * (*(((((v22 >> 4) ^ 0x41) & v14 | a1) ^ 2) + v19 + 1294) ^ (v22 >> 4));
  LOBYTE(v22) = (v23 ^ 0x8F) & (*(((v22 & 0xF | v9) ^ 0x64) + v19 + 777) ^ 0xF1) ^ v23 & 0x70;
  v24 = (v22 ^ 0x39) + 64;
  v25 = v24 & 0xD9 ^ 0x95;
  v26 = v24 ^ 0x3E;
  LODWORD(v22) = 12337 * ((*(v19 + (v22 ^ 0x72u) + 11037) ^ v24 ^ (2 * (v26 & (2 * (v26 & (2 * (v26 & (2 * (v26 & (2 * (v26 & (2 * (((2 * (v22 ^ 0x39)) ^ 0x66) & (v24 ^ 0x3E) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25))) ^ 0xCC);
  *(STACK[0x8070] + a7 % 0x3282) = *(STACK[0x8070] + v22 - 12930 * (((1328683 * v22) >> 32) >> 2));
  return (*(STACK[0x57D8] + 8 * ((26706 * (v10 == 255)) ^ v8)))();
}

uint64_t sub_10013A27C()
{
  v6 = 16 * v0;
  v7 = STACK[0x57D8];
  v8 = (*(STACK[0x57D8] + 8 * v3))(*(v2 + v6));
  *(v2 + v6) = 0;
  v9 = v0 + 1;
  v10 = LODWORD(STACK[0x6614]) - 1051772331;
  v11 = v10 < v5;
  v12 = v9 + v5 < v10;
  if (v9 > 0xCE7A0B50 != v11)
  {
    v12 = v11;
  }

  return (*(v7 + 8 * ((v12 * v4) ^ v1)))(v8);
}

uint64_t sub_10013A374(unsigned __int8 *a1, unint64_t a2, uint64_t a3, unsigned int a4)
{
  v16 = *(v11 + 4008);
  v17 = *(v16 + a2 - 5896 * ((((a2 >> 3) * v5) >> 64) >> 4));
  v18 = *(v11 + 4000);
  v19 = *(v18 + 4 * ((2717 * (v17 | ((v17 < ((v7 + 28) ^ 0x43u)) << 8)) - 76076) % 0x2240));
  v20 = 3903 * (((v19 ^ 0xC817F8BB) + 583229604) ^ ((v19 ^ 0x6E98AC81) + v13) ^ ((v19 ^ (v14 + 1145)) + 1281084628)) - 1057631705;
  v21 = 3903 * (((HIBYTE(v19) ^ 0xF3C2301D) - 1154500648) ^ ((HIBYTE(v19) ^ 0x6E40D7B) + 1309248178) ^ ((HIBYTE(v19) ^ (v10 + 416)) - 1110721823)) + 584574596;
  v22 = *(v16 + v12 + 3903 * (BYTE1(v19) ^ v9) - 5896 * (((1456909 * (v12 + 3903 * (BYTE1(v19) ^ v9))) >> 32) >> 1));
  LOBYTE(v19) = v22 & 0x32 ^ 0xAF;
  v23 = *(v16 + v21 % 0x1708);
  LOBYTE(v17) = *(v16 + v12 + 3903 * (BYTE2(v19) ^ 0xC5) - 5896 * (((1456909 * (v12 + 3903 * (BYTE2(v19) ^ 0xC5u))) >> 32) >> 1));
  v24 = *(v16 + v20 % 0x1708);
  LOBYTE(v20) = v17 & 0x60 ^ 0x46;
  LOBYTE(v21) = v23 & 0xE2 ^ 0x87;
  v25 = (((v23 ^ (2 * ((v23 ^ v9) & (2 * ((v23 ^ v9) & (2 * ((v23 ^ v9) & (2 * ((v23 ^ v9) & (2 * ((v23 ^ v8) & (2 * ((v23 ^ v8) & 6 ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21))) ^ 0xE2) << 16) | (((v17 ^ (2 * ((v17 ^ v9) & (2 * ((v17 ^ v9) & (2 * ((v17 ^ v9) & (2 * ((v17 ^ v9) & (2 * ((v17 ^ 0x44) & (2 * v20) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20))) ^ 0x60) << 8);
  v26 = ((v22 ^ (2 * ((v22 ^ v9) & (2 * ((v22 ^ v9) & (2 * ((v22 ^ v9) & (2 * ((v22 ^ v9) & (2 * ((v22 ^ v9) & (2 * (v19 ^ v22 & v6)) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19))) ^ 0xE5A9C) & ~v25;
  LOBYTE(v19) = ~v24 | 0xAD;
  v27 = v24 ^ (2 * ((v24 ^ v9) & (2 * ((v24 ^ v9) & (2 * ((v24 ^ v9) & (2 * ((v24 ^ v9) & (2 * ((v24 ^ v9) & (2 * ((v24 ^ v9) & 0x36 ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19));
  v28 = *a1;
  *(v18 + 4 * (a4 % 0x2240)) = ((((v26 | v25 & 0xF1A500) << 8) ^ 0x8303F432) & (v27 ^ 0xFFFFFF25) | v27 & 0xCD) ^ v15;
  return (*(STACK[0x57D8] + 8 * (((2 * (v4 != 0)) | (4 * (v4 != 0))) ^ v7)))(a1, a2 + 3903, v28, a4 + 2717);
}

uint64_t sub_10013EE60@<X0>(uint64_t a1@<X7>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  v59 = *(&a55 + (1633 * v55 + 2129432) % 0xA88u);
  v60 = *(a1 + 4 * (3677 * (v59 | ((v59 < 0x5F) << 8)) + 10041887 - ((((3677 * (v59 | ((v59 < 0x5F) << 8)) + 10041887) * v56) >> 32) >> 12) * v58));
  v61 = *(&a55 + (1633 * (((HIBYTE(v60) ^ 0x909B6FDA) + 722509656) ^ ((HIBYTE(v60) ^ 0x5C76E18F) - 402845437) ^ ((HIBYTE(v60) ^ 0xCCED8EA0) + 2003205678)) - 1466852715) % 0xA88);
  v63 = (1633 * (((v60 ^ 0xBD1ECB1E) - 1422397194) ^ ((v60 ^ 0xA2EEABC6) - 1261989842) ^ ((v60 ^ 0x1FF060AA) + 165239618)) - 1556783852) % 0x1510;
  v64 = *(&a55 + (1633 * (((BYTE2(v60) ^ 0xF244A5CE) - 1895566026) ^ (BYTE2(v60) + 2104992508) ^ ((BYTE2(v60) ^ 0xAB18CC3A) - 698377022)) - 598419362) % 0xA88);
  if (v63 >= 0xA88)
  {
    v63 -= 2696;
  }

  v65 = v64 & 0x1F ^ 0x7F;
  v62 = v61 & 0xDF ^ 0x1F;
  v66 = v64 ^ 0x20;
  v67 = *(&a55 + v63);
  v68 = *(&a55 + (1633 * (((BYTE1(v60) ^ 0x3D6FB29C) - 927491797) ^ ((BYTE1(v60) ^ 0xF78010E1) + 39336792) ^ ((BYTE1(v60) ^ 0xCAEFA2B0) + 1060604167)) - 934466446) % 0xA88);
  HIDWORD(v70) = v57 + 3677 * v55 - ((((v57 + 3677 * v55) * v56) >> 32) >> 12) * v58;
  LODWORD(v70) = HIDWORD(v70);
  v69 = v70 >> 14;
  v71 = v68 & 0x99 ^ 0x3C;
  HIDWORD(v70) = (v61 ^ (2 * ((v61 ^ 0x20) & (2 * ((v61 ^ 0x20) & (2 * ((v61 ^ 0x20) & (2 * ((v61 ^ 0x20) & (2 * (((2 * (((2 * v61) & 0x42 | 0x21) & v61)) ^ 0x7E) & (v61 ^ 0x20) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ v62))) ^ 0x3E4277EB;
  LODWORD(v70) = HIDWORD(v70);
  v72 = v70 >> 3;
  v73 = v68 ^ (2 * ((v68 ^ 0x20) & (2 * ((v68 ^ 0x20) & (2 * ((v68 ^ 0x20) & (2 * ((v68 ^ 0x20) & (2 * ((v68 ^ 0x20) & (2 * (((2 * v68) | 0x21) & v68)) ^ v71)) ^ v71)) ^ v71)) ^ v71)) ^ v71));
  HIDWORD(v70) = v72 ^ 6;
  LODWORD(v70) = v72 ^ 0x80000000;
  LOBYTE(v72) = v67 & 0x87 ^ 0x33;
  *(a1 + 4 * (v69 >> 18)) = (((((((((v70 >> 29) << 16) ^ 0xA2FF88) & (((v64 ^ (2 * (v66 & (2 * (v66 & (2 * (v66 & (2 * (v66 & (2 * (((2 * (((2 * v64) & 0xC2 | 0x21) & v64)) ^ 0x3E) & v66 ^ v65)) ^ v65)) ^ v65)) ^ v65)) ^ v65))) << 8) ^ 0xFFE088) ^ 0xD45394) & (v73 ^ 0xFFFF24)) + (v73 & 0xE3)) << 8) ^ 0xA8B15AC6) & ((v67 ^ (2 * ((v67 ^ 0x20) & (2 * ((v67 ^ 0x20) & (2 * ((v67 ^ 0x20) & (2 * ((v67 ^ 0x20) & (2 * (((2 * (((2 * v67) & 0x42 | 0x21) & v67)) ^ 0x26) & (v67 ^ 0x20) ^ v72)) ^ v72)) ^ v72)) ^ v72)) ^ v72))) ^ 0xFFFFFF79) | (v67 ^ (2 * ((v67 ^ 0x20) & (2 * ((v67 ^ 0x20) & (2 * ((v67 ^ 0x20) & (2 * ((v67 ^ 0x20) & (2 * (((2 * (((2 * v67) & 0x42 | 0x21) & v67)) ^ 0x26) & (v67 ^ 0x20) ^ v72)) ^ v72)) ^ v72)) ^ v72)) ^ v72))) & 0x39) ^ 0x2BE90AB5;
  return (*(a54 + 8 * ((211 * (v55 != 255)) ^ a2)))();
}

uint64_t sub_10013F2A4()
{
  v3 = v0 + 16501;
  v4 = v0 - 4445;
  v5 = (v0 + 16501) ^ 0x408D;
  v6 = (*(v2 + 8 * ((v0 + 16501) ^ 0x25FF)))(LODWORD(STACK[0x1484]) ^ 0xD21C8094);
  STACK[0x1A58] = v6;
  if (v6)
  {
    v7 = -143113071;
  }

  else
  {
    v7 = v1;
  }

  LODWORD(STACK[0x1A64]) = v7;
  return (*(v2 + 8 * (((v6 == 0) * (v4 + v5 - 8494)) ^ v3)))();
}

uint64_t sub_10013F468()
{
  STACK[0xB58] = v0;
  v3 = LOWORD(STACK[0x1916]);
  STACK[0xDD0] = STACK[0x1918];
  return (*(v2 + 8 * ((18726 * (v3 == (48 * (v1 ^ (v1 + 101)) - 11155))) ^ (v1 + 1211076543))))();
}

uint64_t sub_10013F4D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x4D0] = STACK[0xAA8] - 0x79CEC8CF5A6FCEB2;
  v5 = STACK[0x1750];
  STACK[0x1978] = *(v4 + 8 * v3);
  return (*(v4 + 8 * (v3 ^ 0x2A47 ^ (30170 * ((v3 + 882701061) > 0xED945376)))))(a1, a2, a3, v5);
}

uint64_t sub_10013F584()
{
  v1 = STACK[0x10E0];
  STACK[0x8C0] = STACK[0x10E0];
  return (*(v0 + 8 * ((((v1 == 0) ^ 0x2D) & 1 | (2 * (((v1 == 0) ^ 0x2D) & 1))) ^ 0x7445)))();
}

uint64_t sub_10013F61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = v8 - 14773;
  v11 = *(v9 + 8 * v10);
  STACK[0x710] = v7 + a4;
  return v11((v10 - 1031170443) & 0x3D767DFD, (v7 & 0xFFFFFFF0) - 16, v6 + a5, 0xC04438B29007211CLL, v5 - 16);
}

uint64_t sub_10013F884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v23 = v10 - 1;
  v24 = __ROR8__((a4 + v23) & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = ((v24 + a7) | v14) - ((v24 + a7) | v12) + v12;
  v26 = v25 ^ a9;
  v27 = v25 ^ v15;
  v28 = (__ROR8__(v26, 8) + v27) ^ a2;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ a3;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ a8;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (a1 - ((v34 + v33) | a1) + ((v34 + v33) | v17)) ^ v19;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = __ROR8__(v35, 8);
  v38 = __ROR8__(((v20 & (2 * (v37 + v36))) - (v37 + v36) + v21) ^ v22, 8);
  v39 = ((v20 & (2 * (v37 + v36))) - (v37 + v36) + v21) ^ v22 ^ __ROR8__(v36, 61);
  v40 = (v38 + v39 - (a5 & (2 * (v38 + v39))) + a6) ^ v13;
  *(v11 + v23) = *(a4 + v23) ^ (((__ROR8__(v40, 8) + (v40 ^ __ROR8__(v39, 61))) ^ v16) >> (8 * ((a4 + v23) & 7))) ^ 0xF;
  return (*(v18 + 8 * ((9644 * (v23 == 0)) ^ v9)))();
}

uint64_t sub_10013F9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  *(v41 - 240) = (v38 - 457559516) ^ (1964904101 * ((2 * ((v41 - 240) & 0x5E2E5698) - (v41 - 240) - 1580095131) ^ 0x5BF342E1));
  *(v39 + 1048) = a37;
  v42 = (*(v40 + 8 * (v37 + v38 + 17)))(v41 - 240);
  STACK[0x1310] -= 32;
  return (STACK[0x1B90])(v42);
}

uint64_t sub_10013FBBC(unint64_t a1, int a2, unint64_t a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x39C8]) = 0;
  v21 = (LODWORD(STACK[0x39E0]) - 352) | 0x2C51u;
  STACK[0x3AB0] = v21;
  v22 = v10 << (v21 ^ 0xD3u);
  LODWORD(v21) = v10;
  v23 = ((*(v18 + STACK[0x3528]) ^ 0xE3) >> 3) | (32 * (*(v18 + STACK[0x3528]) ^ 0xE3));
  STACK[0x3AB8] = a4 | (a1 << 56) | (a3 << 48) | (v13 << 40) | (v17 << 32) | (v12 << 16);
  v24 = v22 + (v15 << 8) + (a5 << 48) + (a8 << 16) + (v14 << 24) + (v16 << 56);
  LOBYTE(v22) = *(v18 + (v23 ^ 0xB3) * v20 + 13123128 - (((1266205 * ((v23 ^ 0xB3u) * v20 + 13123128)) >> 32) >> 1) * a2) - 71;
  v25 = (v22 ^ (v22 << 6) ^ (4 * v22) ^ 0xFE) + 26;
  STACK[0x3A80] = a1;
  STACK[0x3A50] = a4;
  LODWORD(v22) = 1291 * ((((*(v18 + STACK[0x3510]) ^ 0xE) >> 3) | (32 * (*(v18 + STACK[0x3510]) ^ 0xE))) ^ 0x60);
  v26 = v21;
  v27 = v8;
  v28 = STACK[0x3500];
  STACK[0x3A58] = a3;
  v29 = *(v18 + v28);
  STACK[0x3A48] = v12;
  v31 = STACK[0x3A60];
  v32 = (*(v18 + STACK[0x34E8]) - 71) ^ ((*(v18 + STACK[0x34E8]) - 71) << 6) ^ (4 * (*(v18 + STACK[0x34E8]) - 71));
  v33 = 0x3588E317751D6035 * *(STACK[0x3A60] + 8 * STACK[0x3520]);
  STACK[0x35B8] = (v9 | (a7 << 40)) ^ v24 ^ 0xFFAE2748DCD9C7FLL;
  v34 = (((v25 ^ 0xCAu) + 0x50C87D94BDLL) ^ *(v31 + 8 * (1291 * (v25 ^ 0x60) - 3108 * ((1381908 * (1291 * (v25 ^ 0x60u))) >> 32)))) >> 8;
  v35 = 0x3588E317751D6035 * *(v31 + 8 * STACK[0x3518]);
  v36 = 0x3588E317751D6035 * *(v31 + 8 * STACK[0x3508]);
  LODWORD(v36) = (v36 >> 28) ^ *(STACK[0x34B8] + 4) ^ HIDWORD(v36) ^ (v36 >> 24);
  LODWORD(STACK[0x3998]) = *(v31 + 8 * (v22 - 3108 * ((1381908 * v22) >> 32)) + 4) ^ (v33 >> 20) ^ (v33 >> 24) ^ (v33 >> 16) ^ (v35 >> 28) ^ HIDWORD(v35) ^ (v35 >> 24) ^ 0xCDA6E1AE ^ v34;
  v37 = 0x3588E317751D6035 * *(v31 + 8 * STACK[0x34F8]);
  v38 = *(v31 + 8 * STACK[0x34F0]);
  LODWORD(STACK[0x3990]) = v36 ^ (v37 >> 20) ^ (v37 >> 24) ^ (v37 >> 16) ^ 0x9270E846 ^ (((((((v29 - 87) ^ 0xFB) + 85) ^ 0xCAu) + 0x50C87D94BDLL) ^ *(v31 + 8 * (1291 * ((((v29 - 87) ^ 0xFB) + 85) ^ 0x60) - 3108 * ((1381908 * (1291 * ((((v29 - 87) ^ 0xFB) + 85) ^ 0x60u))) >> 32)))) >> 8);
  LODWORD(v34) = ((0x3588E317751D6035 * v38) >> 20) ^ ((0x3588E317751D6035 * v38) >> 24) ^ ((0x3588E317751D6035 * v38) >> 16);
  LODWORD(v37) = 1291 * (((v32 ^ 0xFE) + 26) ^ 0x10);
  LODWORD(v38) = ((a7 + 111) ^ 0x1C) * v20 + 4767822;
  v39 = *(v31 + 8 * (v37 - 3108 * ((1381908 * v37) >> 32))) >> 24;
  LODWORD(v38) = *(v18 + v38 - 6784 * (((1266205 * v38) >> 32) >> 1)) ^ 0xFFFFFFE3;
  LOBYTE(v36) = ((*(v18 + STACK[0x34E0]) - 87) ^ 0xFB) + 85;
  LODWORD(STACK[0x3958]) = (v38 >> 3) | (32 * v38);
  HIDWORD(v40) = STACK[0x39D8];
  LODWORD(v40) = v26 << 24;
  v41 = ((v40 >> 25) ^ 0x40) * v20 + 15539568;
  v42 = *(v18 + v41 - 6784 * (((1266205 * v41) >> 32) >> 1));
  LOBYTE(v38) = 97 * (*(v18 + STACK[0x34C8]) ^ 0xA2);
  v43 = (v38 ^ 0x98u) + 0x50C87D94BDLL;
  LODWORD(STACK[0x3988]) = v34 ^ *(v31 + 8 * (1291 * (v36 ^ 0x60) - 3108 * ((1381908 * (1291 * (v36 ^ 0x60u))) >> 32)) + 4) ^ ((*(v31 + 8 * STACK[0x34D0]) ^ STACK[0x34D8]) >> 8) ^ 0x466E3F50 ^ v39;
  LODWORD(v34) = *(STACK[0x34B0] + 2);
  LOBYTE(v39) = LODWORD(STACK[0x3868]) ^ LODWORD(STACK[0x3848]);
  LODWORD(STACK[0x3A30]) ^= STACK[0x3830];
  LODWORD(STACK[0x38A8]) ^= STACK[0x3820];
  v44 = *(v31 + 8 * (1291 * (v38 ^ 0x32) - 3108 * ((1381908 * (1291 * (v38 ^ 0x32u))) >> 32)));
  LOBYTE(v36) = *(v18 + STACK[0x34C0]) ^ 0xE;
  LODWORD(STACK[0x3860]) ^= STACK[0x3840];
  LODWORD(STACK[0x3970]) = 97 * (v42 ^ 0xFFFFFFA2);
  LOBYTE(v42) = LODWORD(STACK[0x3890]) ^ LODWORD(STACK[0x3850]);
  LODWORD(v36) = 1291 * (((v36 >> 3) | (32 * v36)) ^ 0x60);
  v45 = *(v31 + 8 * (v36 - 3108 * ((1381908 * v36) >> 32)));
  LODWORD(v31) = a5;
  v46 = (v43 ^ v44) >> 8;
  LODWORD(STACK[0x3A38]) ^= STACK[0x3810];
  LODWORD(STACK[0x3878]) ^= LODWORD(STACK[0x37E8]);
  LODWORD(v43) = *(STACK[0x34A8] + 4);
  LODWORD(STACK[0x38A0]) ^= LODWORD(STACK[0x37F8]);
  LODWORD(STACK[0x3A28]) ^= STACK[0x3838];
  LODWORD(STACK[0x3A20]) ^= STACK[0x37E0];
  v47 = STACK[0x3A58];
  LODWORD(STACK[0x3898]) ^= STACK[0x3828];
  LODWORD(STACK[0x3870]) ^= STACK[0x3800];
  LODWORD(STACK[0x3888]) ^= STACK[0x3818];
  LODWORD(STACK[0x3880]) ^= STACK[0x37F0];
  LODWORD(v39) = ((v39 + 111) ^ 0x36) * v20 + 17937420;
  LODWORD(STACK[0x3978]) = (v45 >> 24) ^ v34 ^ v43 ^ v46 ^ 0xE35A7B0A;
  LODWORD(STACK[0x3A40]) ^= STACK[0x3808];
  LODWORD(v34) = *(v18 + v39 - 6784 * (((1266205 * v39) >> 32) >> 1));
  v48 = ((v42 + 111) ^ 0x36) * v20 + 17937420;
  LODWORD(STACK[0x3858]) ^= STACK[0x37B0];
  v49 = *(v18 + v48 - 6784 * (((1266205 * v48) >> 32) >> 1)) ^ 0xE;
  STACK[0x35B0] = ((v11 << 24) | (v27 << 8) | STACK[0x3AB8]) ^ 0xE80DD63C8B36D1BBLL;
  LODWORD(STACK[0x3868]) = ((v34 ^ 0xE) >> 3) | (32 * (v34 ^ 0xE));
  v50 = *(v19 + 8 * SLODWORD(STACK[0x39E0]));
  LODWORD(STACK[0x3890]) = (v49 >> 3) | (32 * v49);
  LODWORD(STACK[0x3940]) = v17;
  LODWORD(STACK[0x3938]) = STACK[0x3AC8];
  LODWORD(STACK[0x3930]) = a8;
  LODWORD(STACK[0x3928]) = STACK[0x3A80];
  LODWORD(STACK[0x3920]) = v47;
  LODWORD(STACK[0x3950]) = STACK[0x3A88];
  STACK[0x39A0] = v15;
  LODWORD(STACK[0x3948]) = v15;
  LODWORD(STACK[0x3960]) = STACK[0x3A48];
  LODWORD(STACK[0x3918]) = v11;
  LODWORD(STACK[0x3910]) = STACK[0x3AA0];
  LODWORD(STACK[0x3968]) = v31;
  STACK[0x3AB8] = STACK[0x3530];
  LODWORD(STACK[0x3980]) = v27;
  LODWORD(STACK[0x3908]) = v13;
  LODWORD(STACK[0x3900]) = STACK[0x3A50];
  return v50(184);
}

uint64_t sub_1001402AC@<X0>(int a1@<W8>)
{
  *(v1 + 32) = a1 - 951623457;
  *(v1 + 24) = NDR_record;
  return (*(v2 + 152472))();
}

uint64_t sub_100140340@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x1D4C0]) = (v1 + 1717148634) ^ (1964904101 * ((((v2 - 240) | 0xCA561CE3) - (v2 - 240) + ((v2 - 240) & 0x35A9E318)) ^ 0x3074F767));
  STACK[0x1D4C8] = a1;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 + 9199)))(v2 - 240);
  return (*(v3 + 8 * (v1 - 12838)))(v4);
}

uint64_t sub_1001403D0(uint64_t a1, uint64_t a2, double a3, double a4, double a5, int8x16_t a6, int8x16_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  v15 = *(a2 + v11 - 16);
  *(a1 + v11 + 16) = vaddq_s8(vsubq_s8(*(a2 + v11), vandq_s8(vaddq_s8(*(a2 + v11), *(a2 + v11)), a6)), a7);
  *(a1 + v11) = vaddq_s8(vsubq_s8(v15, vandq_s8(vaddq_s8(v15, v15), a6)), a7);
  return (*(v14 + 8 * (((v13 == v11) * a11) ^ v12)))();
}

uint64_t sub_100140428()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x241B)))();
  STACK[0xC058] = 0;
  return (*(v1 + 8 * (v0 - 7909)))(v2);
}

uint64_t sub_10014051C()
{
  *STACK[0x6348] = -769884012;
  v1 = STACK[0x57D8];
  STACK[0xCF38] = *(STACK[0x57D8] + 8 * (v0 - 19795));
  return (*(v1 + 8 * ((v0 - 19795) ^ 0xAB1 ^ (((v0 + 272633484) < 0x5BB2C15B) * (((v0 - 6229) | 0x1148) - 15509)))))();
}

uint64_t sub_1001405D4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unsigned int a3@<W3>, int a4@<W8>)
{
  v6 = (a4 - 4023) | 0x5A81;
  v7 = STACK[0xAE8];
  STACK[0x890] = a3;
  v8 = *(v5 + 8 * (a4 + 6644));
  LODWORD(STACK[0x8A0]) = v6;
  v9 = (v6 - 18281) | 0x2583;
  LODWORD(STACK[0x870]) = v9;
  LODWORD(STACK[0x880]) = v9 ^ 0x31472AD2;
  return v8(8 * (v7 + v4), a1, a2, v4 + 1, 0x6499DBA03C10D175, v7 + v4);
}

uint64_t sub_10014070C()
{
  STACK[0x1C28] = v1;
  v3 = STACK[0x1500];
  STACK[0x1C30] = STACK[0x1500];
  return (*(v2 + 8 * (((v1 - v3 > (v0 + 1425478409) - 1425489575) * (((v0 - 10143) | 0x280) ^ 0x6658)) ^ v0)))();
}

uint64_t sub_100140768(char a1, uint64_t a2, _DWORD *a3, int a4, int a5, uint64_t a6)
{
  v11 = *(a6 - 0x1883660EE8144416);
  v12 = (a4 - 2101965948);
  v13 = __ROR8__((v11 + v12) & 0xFFFFFFFFFFFFFFF8, 8);
  v14 = ((2 * (v13 + ((v9 - 1211083584) ^ 0xA4C13E7AD0FBE267))) | 0x2E75D646D466F1ELL) - (v13 + ((v9 - 1211083584) ^ 0xA4C13E7AD0FBE267)) - 0x173AEB236A3378FLL;
  v15 = __ROR8__(v14 ^ 0x8A6B1328546E61CFLL, 8);
  v14 ^= 0xAC62E0FB6D356E7ALL;
  v16 = (v15 + v14) ^ 0x9D63C3648794ABC0;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0x893772B00383F7DCLL;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0x282209998BDCA063;
  v21 = v20 ^ __ROR8__(v19, 61);
  LODWORD(v19) = a5 - ((2 * a5) & 0x940447A6) - 905829421;
  v22 = __ROR8__(v20, 8);
  v23 = __ROR8__((v22 + v21 - ((2 * (v22 + v21)) & 0x324EF0E14D97AB0CLL) - 0x66D8878F59342A7ALL) ^ 0x77B497895D5AB51DLL, 8);
  v24 = (v22 + v21 - ((2 * (v22 + v21)) & 0x324EF0E14D97AB0CLL) - 0x66D8878F59342A7ALL) ^ 0x77B497895D5AB51DLL ^ __ROR8__(v21, 61);
  v25 = (((2 * (v23 + v24)) & 0x5FB892123FE96AC6) - (v23 + v24) - 0x2FDC49091FF4B564) ^ 0xD5FFBAA40DB69AB9;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ v10;
  *(v11 + v12) = (((__ROR8__(v27, 8) + (v27 ^ __ROR8__(v26, 61))) ^ 0x5FC4102E9580487DLL) >> (8 * ((v11 + a4 - 124) & 7))) ^ BYTE3(v19) ^ 0xCA;
  v28 = v11 + (a4 - 2101965947);
  v29 = __ROR8__(v28 & 0xFFFFFFFFFFFFFFF8, 8);
  v30 = (0x5B3EC18598D49E09 - v29) & 0x634D91265ACF9634 | (v29 - 0x5B3EC18598D49E0ALL) & 0x9CB26ED9A53069CBLL;
  v31 = v30 ^ 0xE8552CBC3802C074;
  v30 ^= 0xCE5CDF6F0159CFC1;
  v32 = (__ROR8__(v31, 8) + v30) ^ 0x9D63C3648794ABC0;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = __ROR8__(v32, 8);
  v35 = __ROR8__((0x9439F2ABC9009AE7 - ((v34 + v33) | 0x9439F2ABC9009AE7) + ((v34 + v33) | 0x6BC60D5436FF6518)) ^ 0xE2F17FE4357C92C4, 8);
  v36 = (0x9439F2ABC9009AE7 - ((v34 + v33) | 0x9439F2ABC9009AE7) + ((v34 + v33) | 0x6BC60D5436FF6518)) ^ 0xE2F17FE4357C92C4 ^ __ROR8__(v33, 61);
  v37 = (v35 + v36) ^ 0x282209998BDCA063;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (((2 * (v39 + v38)) & 0x838FB3105BD0CF0ALL) - (v39 + v38) + 0x3E382677D217987ALL) ^ 0xD0ABC98E2986F8E1;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ 0x5DC0C52EDBDD025;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ v10;
  *v28 = (((__ROR8__(v44, 8) + (v44 ^ __ROR8__(v43, 61))) ^ 0x5FC4102E9580487DuLL) >> (8 * (v28 & 7u))) ^ BYTE2(v19) ^ 2;
  v45 = v11 + (a4 - 2101965946);
  v46 = __ROR8__(v45 & 0xFFFFFFFFFFFFFFF8, 8);
  v47 = -2 - (((0x5B3EC18598D49E09 - v46) | 0x64D938BCA76BDEFDLL) + ((v46 + 0x24C13E7A672B61F6) | 0x9B26C74358942102));
  v48 = v47 ^ 0xEFC18526C5A688BDLL;
  v47 ^= 0xC9C876F5FCFD8708;
  v49 = (__ROR8__(v48, 8) + v47) ^ 0x9D63C3648794ABC0;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = __ROR8__(v49, 8);
  v52 = (0x8CD82538BDB846B4 - ((v51 + v50) | 0x8CD82538BDB846B4) + ((v51 + v50) | 0x7327DAC74247B94BLL)) ^ 0xFA10A87741C44E97;
  v53 = v52 ^ __ROR8__(v50, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ 0x282209998BDCA063;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ 0xEE93EFF9FB91609BLL;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ 0x5DC0C52EDBDD025;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = __ROR8__(v58, 8);
  v61 = (((2 * (v60 + v59)) & 0x90AAA6B255B8A83CLL) - (v60 + v59) + 0x37AAACA6D523ABE1) ^ 0x190781F732222C35;
  v62 = v61 ^ __ROR8__(v59, 61);
  v63 = __ROR8__(v61, 8);
  *v45 = (((((2 * (v63 + v62)) | 0xC4A5AB660742782ALL) - (v63 + v62) + 0x1DAD2A4CFC5EC3EBLL) ^ 0xBD96C59D96217468) >> (8 * (v45 & 7u))) ^ BYTE1(v19) ^ 0x23;
  v64 = v11 + (a4 - 2101965945);
  v65 = __ROR8__(v64 & 0xFFFFFFFFFFFFFFF8, 8) - 0x5B3EC18598D49E0ALL;
  v66 = __ROR8__(v65 ^ 0x8B18BD9A62CD5640, 8);
  v65 ^= 0xAD114E495B9659F5;
  v67 = (v66 + v65) ^ 0x9D63C3648794ABC0;
  v68 = v67 ^ __ROR8__(v65, 61);
  v69 = __ROR8__(v67, 8);
  v70 = (((2 * ((v69 + v68) ^ 0xB1332ED9FE5C148)) | 0xEDBFB6A8A6EFC60ALL) - ((v69 + v68) ^ 0xB1332ED9FE5C148) - 0x76DFDB545377E305) ^ 0xF4FB9B09CF11D591;
  v71 = v70 ^ __ROR8__(v68, 61);
  v72 = (__ROR8__(v70, 8) + v71) ^ 0x282209998BDCA063;
  v73 = v72 ^ __ROR8__(v71, 61);
  v74 = (__ROR8__(v72, 8) + v73) ^ 0xEE93EFF9FB91609BLL;
  v75 = v74 ^ __ROR8__(v73, 61);
  v76 = __ROR8__(v74, 8) + v75;
  v77 = (((2 * v76) | 0x92EE0D35C538DBA2) - v76 - 0x4977069AE29C6DD1) ^ v7;
  v78 = v77 ^ __ROR8__(v75, 61);
  v79 = (__ROR8__(v77, 8) + v78) ^ v10;
  v80 = v79 ^ __ROR8__(v78, 61);
  v81 = __ROR8__(v79, 8);
  *v64 = v19 ^ a1 ^ (((0x2AD12C5D019464DLL - ((v81 + v80) | 0x2AD12C5D019464DLL) + ((v81 + v80) | v6)) ^ v8) >> (8 * (v64 & 7u)));
  *a3 = a4 + 4;
  return (*(STACK[0x8B0] + 8 * v9))();
}

uint64_t sub_100140EDC(unsigned int a1, uint64_t a2, int a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7, char a8)
{
  if (v13 == v12)
  {
    v23 = 0;
  }

  else
  {
    v23 = ~(v11 ^ v10 ^ v20);
  }

  v22 = (v10 ^ v20) >> v19;
  v24 = ((((((v23 & (v10 ^ v20)) << v18) | v22) ^ (2 * ((((v23 & (v10 ^ v20)) << v18) | v22) & v17))) & v17) << ((v8 + 112) & v16 ^ a8)) & a3 ^ (((v23 & (v10 ^ v20)) << v18) | v22) ^ (2 * ((((v23 & (v10 ^ v20)) << v18) | v22) & v17));
  v25 = *((v24 ^ 0x1BA0 ^ (16 * (v24 & v17)) & (4 * (v17 & a4)) & a5) + v21 + 2845);
  v26 = v25 & 0xF;
  LODWORD(v25) = 16 * (*(((((v25 >> 4) ^ 0xB7) & v14 | v15) ^ 0xE4) + v21 + 1294) ^ (v25 >> 4));
  LODWORD(v25) = *(v21 + ((v25 ^ 0x8F) & (*(((v26 | v9) ^ 0x5E) + v21 + 2584) ^ 0x5E) ^ (v25 | 0xEFu)) + 12848);
  *(STACK[0x8070] + a1 % 0x3282) = *(STACK[0x8070] + 12337 * (v25 ^ 0xE4) - 12930 * (((1328683 * (12337 * (v25 ^ 0xE4))) >> 32) >> 2));
  return (*(STACK[0x57D8] + 8 * ((15739 * (v10 == 255)) ^ v8)))(a1 + 12337);
}

uint64_t sub_100141044()
{
  v1 = STACK[0x7628];
  LODWORD(STACK[0x7610]) = -769883924;
  STACK[0xA0E0] = v1;
  LODWORD(STACK[0x8B34]) = -769884012;
  STACK[0x5B60] = 0;
  return (*(STACK[0x57D8] + 8 * ((37 * (((v1 == 0) ^ (v0 - 89)) & 1)) | v0)))();
}

uint64_t sub_1001410CC@<X0>(int a1@<W1>, int a2@<W8>)
{
  STACK[0xAAB8] = v3;
  STACK[0x74B8] = v2;
  LODWORD(STACK[0xA514]) = v4;
  STACK[0xB2C8] = v6;
  STACK[0xC6E8] = v8;
  LOBYTE(STACK[0x965B]) = v7;
  v9 = STACK[0x7ED8];
  v10 = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0xB080] = v10;
  STACK[0x9D00] = v10;
  STACK[0x7ED8] = v9 + (((a2 - 1528) | 0x4002u) ^ 0x5876);
  STACK[0x8CE8] = v5;
  STACK[0xC480] = 0;
  LODWORD(STACK[0x919C]) = a1;
  STACK[0x76C8] = 0;
  LODWORD(STACK[0xBDC4]) = a1;
  STACK[0x7A38] = 0;
  LODWORD(STACK[0x73BC]) = a1;
  STACK[0x78E0] = 0;
  STACK[0xAF60] = 0;
  LODWORD(STACK[0x9C68]) = 0;
  if (v2)
  {
    v11 = v4 == (a2 ^ 0xD21C9ED8);
  }

  else
  {
    v11 = 1;
  }

  v13 = v11 || v6 == 0;
  return (*(STACK[0x57D8] + 8 * ((22828 * v13) ^ a2)))();
}

uint64_t sub_10014123C@<X0>(int a1@<W4>, uint64_t a2@<X5>, int a3@<W8>)
{
  v7 = *(a2 + 4008);
  v8 = *(v7 + v4 - 5896 * ((((v4 >> 3) * v5) >> 64) >> 4));
  v9 = *(v7 + (3903 * ((a3 ^ 0x3822722B) + v8 + ((v8 < 0x1C) << 8)) + 823614232) % 0x1708);
  LOBYTE(v7) = v9 & 0xA2 ^ 0x67;
  *(*(a2 + 4000) + 4 * (v6 % 0x2240)) = (v9 ^ (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x44) & (2 * ((v9 ^ 0x44) & 6 ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7))) ^ (a1 - 158);
  return (*(STACK[0x57D8] + 8 * ((79 * (v3 == 0)) ^ a3)))();
}

uint64_t sub_100141384()
{
  v3 = *(STACK[0x44F0] + 260) & 1;
  v4 = 1534937323 * ((~(v2 - 240) & 0xC114F651216C78F9 | (v2 - 240) & 0x3EEB09AEDE938706) ^ 0xC6C7E93E78283BELL);
  *(v1 + 604) = v4 + v0 + 1451493860;
  *(v1 + 612) = (v0 + 1896785316) ^ v4;
  *(v1 + 608) = v4;
  *(v1 + 624) = v4 + v0 + 1896785316 - 8;
  *(v1 + 592) = v4;
  *(v1 + 600) = ((v0 + 1896785316) ^ 0x1083) - v4;
  *(v1 + 616) = v3 + v4;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x2462)))(v2 - 240);
  return (*(v5 + 8 * SLODWORD(STACK[0x1D4E4])))(v6);
}

uint64_t sub_10014148C()
{
  v5 = *v1;
  *(v0 - 1) = *(v1 - 1);
  *v0 = v5;
  return (*(STACK[0x57D8] + 8 * (((v2 != 0) * v4) ^ v3)))();
}

uint64_t sub_1001418B8()
{
  LODWORD(STACK[0xCEDC]) = v1;
  STACK[0x7478] = STACK[0xAC48];
  v2 = STACK[0x57D8];
  STACK[0x85E0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v2 + 8 * (((29 * (v0 ^ 0xA5C)) ^ 0x27DC) + v0)))();
}

uint64_t sub_100141930@<X0>(__int16 a1@<W8>)
{
  v1 = STACK[0x51B8];
  LOWORD(STACK[0xD98E]) = a1;
  return (*(STACK[0x57D8] + 8 * (v1 - 17527)))();
}

uint64_t sub_100141BFC()
{
  LODWORD(STACK[0x87C4]) = v1;
  STACK[0x7ED8] -= 144;
  v2 = STACK[0x6A08];
  LODWORD(STACK[0x98F4]) = v1;
  STACK[0x6230] = v2;
  LODWORD(STACK[0x6974]) = -1247505187;
  return (*(STACK[0x57D8] + 8 * (v0 - 17575)))();
}

uint64_t sub_100141CB4()
{
  v3 = *(v1 + 295);
  v4 = *(v1 + 2432);
  v5 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v4 & 0xFFFFFFF8) - 1831847764)) & 0xFFFFFFFFFFFFFFF8));
  *(v1 + 1884) = v3;
  v6 = v5 + __ROR8__(v4 & 0xFFFFFFFFFFFFFFF8, 8);
  v7 = __ROR8__(v5, 61);
  v8 = (v6 - ((2 * v6) & 0xC45387B9B4B701A2) + 0x6229C3DCDA5B80D1) ^ 0xA086FD76E5AA3835;
  v9 = v8 ^ v7;
  v10 = (__ROR8__(v8, 8) + (v8 ^ v7)) ^ 0x65F254DD188DB4FCLL;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = __ROR8__(v10, 8);
  v13 = (((2 * (v12 + v11)) & 0x9DE61E3868900DCALL) - (v12 + v11) - 0x4EF30F1C344806E6) ^ 0xDEFCB675AAAEEB97;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = __ROR8__(v13, 8);
  v16 = __ROR8__((((2 * (v15 + v14)) & 0xFE9D76FDF4102F0CLL) - (v15 + v14) - 0x7F4EBB7EFA081787) ^ 0x2103D944D281FB52, 8);
  v17 = (((2 * (v15 + v14)) & 0xFE9D76FDF4102F0CLL) - (v15 + v14) - 0x7F4EBB7EFA081787) ^ 0x2103D944D281FB52 ^ __ROR8__(v14, 61);
  v18 = (0xE19134EEBF5F1EEBLL - ((v16 + v17) | 0xE19134EEBF5F1EEBLL) + ((v16 + v17) | 0x1E6ECB1140A0E114)) ^ 0xF16AEB50B545A9F8;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0xD8C7B31FCA19D9DELL;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (((2 * (v22 + v21)) & 0x1DA8BC243B723C4ALL) - (v22 + v21) - 0xED45E121DB91E26) ^ 0xA57EA0C368F72255;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = __ROR8__(v23, 8);
  LOBYTE(v4) = 8 * (v4 & 7);
  *(v1 + 1885) = ((v25 + v24 - ((2 * (v25 + v24)) & 0x960585D713E0BF4) + 0x4B02C2EB89F05FALL) ^ 0x6BFF4C92B69D5B1ALL) >> v4;
  v6 ^= 0xC2AF3EAA3FF1B8E4;
  v26 = __ROR8__(v6, 8);
  v27 = v6 ^ v7;
  v28 = (((2 * (v26 + v27)) & 0xAC27BAD4357AEA26) - (v26 + v27) - 0x5613DD6A1ABD7514) ^ 0xCC1E7648FDCF3E10;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (((2 * (v30 + v29)) & 0xE1F0736CFBD2732) - (v30 + v29) + 0x78F07C6498216C66) ^ 0x17003AF2F9387EEBLL;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (v33 + v32 - ((2 * (v33 + v32)) & 0x51D55A732639BB8ELL) + 0x28EAAD39931CDDC7) ^ 0x895830FC446ACEECLL;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ v2;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (((2 * ((v38 + v37) ^ 0xDA75FF395592C611)) & 0x3ED6E0A8833DFD3ALL) - ((v38 + v37) ^ 0xDA75FF395592C611) + 0x60948FABBE610162) ^ 0x6226C38D21EA1EADLL;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (((2 * (v41 + v40)) | 0xB29C47FC0D86E422) - (v41 + v40) - 0x594E23FE06C37211) ^ 0xD1B22D08C72B19ELL;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = __ROR8__(v42, 8);
  **(v1 + 2416) = v3 ^ *(v1 + 2431) ^ (((0x9CF0AD3442DF9F73 - ((v44 + v43) | 0x9CF0AD3442DF9F73) + ((v44 + v43) | 0x630F52CBBD20608CLL)) ^ 0xC403277B3223E6CLL) >> v4);
  v45 = (STACK[0x8070] + 11513);
  *(v1 + 2440) = v45;
  *(v1 + 2455) = *v45;
  v46 = *(v1 + 3920) + 34;
  *(v1 + 296) = v46;
  v47 = STACK[0x57D8];
  v48 = *(STACK[0x57D8] + 8 * (v0 + 9048));
  *(v1 + 2456) = v46;
  *(v1 + 280) = v48;
  return (*(v47 + 8 * (LODWORD(STACK[0x4D68]) + 29306)))();
}

uint64_t sub_100142184()
{
  v0 = STACK[0x390C];
  v1 = STACK[0x57D8];
  STACK[0x8690] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x390C]));
  return (*(v1 + 8 * ((8570 * ((v0 ^ 0x844340D0) <= 0x23C97AAB)) ^ (v0 + 6265))))();
}

uint64_t sub_1001422AC()
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
  STACK[0xEF00] = 0;
  STACK[0xEF08] = v0;
  v10 = 16777619 * ((-548819963 * v9 + 7) ^ (-548819963 * v9)) % 7;
  v11 = *(&STACK[0xEF00] | v10);
  *(&STACK[0xEF00] | v10) = 0;
  LOBYTE(STACK[0xEF07]) = v11;
  v12 = 16777619 * ((-548819963 * v9 + 6) ^ (-548819963 * v9)) % 6;
  v13 = *(&STACK[0xEF00] | v12);
  *(&STACK[0xEF00] | v12) = STACK[0xEF06];
  LOBYTE(STACK[0xEF06]) = v13;
  v14 = 16777619 * ((-548819963 * v9 + 5) ^ (-548819963 * v9)) % 5;
  v15 = *(&STACK[0xEF00] | v14);
  *(&STACK[0xEF00] | v14) = STACK[0xEF05];
  LOBYTE(STACK[0xEF05]) = v15;
  v16 = STACK[0xEF00];
  LOBYTE(STACK[0xEF00]) = STACK[0xEF04];
  LOBYTE(STACK[0xEF04]) = v16;
  v17 = 16777619 * ((-548819963 * v9 + 3) ^ (-548819963 * v9)) % 3;
  v18 = *(&STACK[0xEF00] | v17);
  *(&STACK[0xEF00] | v17) = STACK[0xEF03];
  LOBYTE(STACK[0xEF03]) = v18;
  v19 = STACK[0xEF01];
  LOBYTE(STACK[0xEF02]) = STACK[0xEF00];
  LOWORD(STACK[0xEF00]) = v19;
  v20 = vdup_n_s32(-548819963 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = -548819963 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xEF00] = vmla_s32(v22, STACK[0xEF00], vdup_n_s32(0x1000193u));
  STACK[0xEF08] ^= STACK[0xEF00];
  STACK[0xEF08] = vmul_s32(vsub_s32(STACK[0xEF08], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xEF0A];
  LOWORD(STACK[0xEF09]) = STACK[0xEF08];
  LOBYTE(STACK[0xEF08]) = v23;
  v24 = (&STACK[0xEF08] | v17);
  v25 = *v24;
  *v24 = STACK[0xEF0B];
  LOBYTE(STACK[0xEF0B]) = v25;
  LOBYTE(v24) = STACK[0xEF08];
  LOBYTE(STACK[0xEF08]) = STACK[0xEF0C];
  LOBYTE(STACK[0xEF0C]) = v24;
  v26 = (&STACK[0xEF08] | v14);
  LOBYTE(v24) = *v26;
  *v26 = STACK[0xEF0D];
  LOBYTE(STACK[0xEF0D]) = v24;
  v27 = (&STACK[0xEF08] | v12);
  LOBYTE(v26) = *v27;
  *v27 = STACK[0xEF0E];
  LOBYTE(STACK[0xEF0E]) = v26;
  v28 = (&STACK[0xEF08] | v10);
  v29 = *v28;
  *v28 = STACK[0xEF0F];
  LOBYTE(STACK[0xEF0F]) = v29;
  v30 = STACK[0xEF08];
  v31 = (-548819963 * STACK[0xEF08]) ^ v9;
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
  *STACK[0x4630] = STACK[0xEF08];
  return (*(STACK[0x57D8] + 8 * v1))(v37, v38, v39, v40);
}

uint64_t sub_100142730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0x7330];
  v8 = STACK[0x57D8];
  STACK[0x7D00] = *(STACK[0x57D8] + 8 * (STACK[0x51B8] - 20913));
  return (*(v8 + 8 * ((11734 * (LODWORD(STACK[0x3CB8]) > 0xD43AB6B0)) ^ LODWORD(STACK[0x3CC0]))))(a1, a2, a3, a4, a5, a6, a7, v7);
}

uint64_t sub_1001427E0()
{
  v3 = *(v1 - 0x683CBC57EAB92A36);
  STACK[0xC228] = v2;
  STACK[0x9C00] = 0;
  LODWORD(STACK[0x748C]) = -769884012;
  STACK[0xB6E8] = 0;
  return (*(STACK[0x57D8] + 8 * (((v3 != 0x308E083E0C524CBELL) * (v0 ^ 0x3ACF ^ v0 ^ 0x65D0 ^ 0x5F27)) ^ v0)))();
}

uint64_t sub_1001429BC()
{
  v2 = (v1 - 1220364981) & 0x48BD3B7C;
  v3 = v0;
  LODWORD(STACK[0x54A0]) = v2;
  v4 = v2 ^ v0 & 0xFFFFFFF4 ^ 0xCA63FFE7;
  LODWORD(STACK[0x56C0]) = v4;
  v5 = STACK[0x5710];
  LOBYTE(v4) = *(STACK[0x5710] + v4);
  LODWORD(STACK[0x57C0]) = (v1 + 1363921091) & 0xAEB45CDE;
  v6 = v0 & 0xFFFFFFF0 ^ 0xCA63DC9F;
  LODWORD(STACK[0x56F0]) = v6;
  v7 = *(v5 + v6) - 3 * (((v0 & 0xF0 ^ 0x30) + 90) ^ ((v0 & 0xF0 ^ 0x1F) + 119) ^ ((v0 & 0xF0 ^ 0xB0) - 38)) + 114;
  v8 = *(*(&off_101353600 + (v1 ^ 0x30AB)) + (v7 ^ 0x3ALL));
  LODWORD(v9) = __ROR4__((v4 - 3 * (((v0 & 0xF4 ^ 0xF3) + 119) ^ ((v0 & 0xF4 ^ 0x8A) + 16) ^ ((v0 & 0xF4 ^ (((v1 - 61) & 0xDE) - 116)) + 104)) - 22) ^ 0xB103850D, 6) ^ 0x7589A7B6;
  HIDWORD(v9) = v9;
  v10 = *(*(&off_101353600 + (v1 ^ 0x3056)) + ((v9 >> 26) ^ 0xD36A6812) - 8);
  v11 = v3 & 0xFFFFFFFC ^ 0xCA63DC9B;
  LODWORD(STACK[0x56E0]) = v11;
  v12 = v8 ^ v7;
  v13 = *(*(&off_101353600 + (v1 ^ 0x338F)) + ((-3 * (((v3 & 0xFC ^ 0x57) - 108) ^ ((v3 & 0xFC ^ 0x6F) - 84) ^ ((v3 & 0xFC ^ 0xA3) + 104)) + *(v5 + v11) - 83) ^ 0x19) - 12);
  v14 = v3 & 0xFFFFFFF3 ^ 0xCA63DC9E;
  LODWORD(STACK[0x5670]) = v14;
  v15 = (((v13 ^ ((v13 ^ 0x11) << 7) ^ (8 * (v13 ^ 0x11))) ^ 0xA) << 8) | ((v10 ^ (((v9 >> 26) ^ 0x4E) - 63) ^ 0xFE) << 16);
  v16 = -3 * (((v3 & 0xF3 ^ 0xA8) - 9) ^ ((v3 & 0xF3 ^ 0xE0) - 65) ^ ((v3 & 0xF3 ^ 0xD6) - 119)) + *(v5 + v14) - 48;
  v17 = ((v16 ^ 0xE0) + (v16 ^ 0xBC));
  v18 = v3 & 0xFFFFFFF2 ^ 0xCA63DC9F;
  LODWORD(STACK[0x56D0]) = v18;
  v19 = *(*(&off_101353600 + v1 - 12231) + (v16 ^ 0xD2) - 12);
  v20 = *(*(&off_101353600 + v1 - 11491) + ((-3 * (((v3 & 0xF2 ^ 0xA3) - 16) ^ ((v3 & 0xF2 ^ 0xDB) - 104) ^ ((v3 & 0xF2 ^ 0xE7) - 84)) + *(v5 + v18) + 9) ^ 0x63) - 12);
  v21 = v3 & 0xFFFFFFF5 ^ 0xCA63DC9A;
  LODWORD(STACK[0x5630]) = v21;
  v22 = v17 ^ v19;
  v23 = (v20 ^ (4 * v20) ^ 0xE4) << 24;
  LOBYTE(v19) = *(*(&off_101353600 + (v1 ^ 0x3387)) + ((-3 * (((v3 & 0xF5 ^ 0xBD) - 82) ^ ((v3 & 0xF5 ^ 0x16) + 7) ^ ((v3 & 0xF5 ^ 0x31) + 34)) + *(v5 + v21) + 46) ^ 0xB1)) - 100;
  LODWORD(STACK[0x55E0]) = v3 ^ 0xCA63DC9A;
  v24 = v3;
  v25 = *(*(&off_101353600 + (v1 ^ 0x3627)) + ((-3 * (((v3 ^ 0xFC) + 120) ^ (116 - v3) ^ ((v3 ^ 0x99) + 19)) + *(v5 + (v3 ^ 0xCA63DC9A)) - 61) ^ 0x98) - 4);
  v26 = (-3 * (((v3 ^ 0xFFFFFFFC) + 120) ^ (116 - v3) ^ ((v3 ^ 0xFFFFFF99) + 19)) + *(v5 + (v3 ^ 0xCA63DC9A)) - 61) ^ 0x59;
  v27 = v19 ^ (4 * v19) & 0xF0 ^ 0xE7;
  v3 &= 0xFFFFFFF1;
  v28 = v24 & 0xFFFFFFF6 ^ 0xCA63DC9B;
  LODWORD(STACK[0x5600]) = v28;
  v29 = ((v26 - (v26 ^ v25) - v25 - 2 * ((v26 - (v26 ^ v25)) & -v25)) ^ v25) + v26;
  v30 = v23 & 0xFF00FFFF | (v27 << 16);
  v31 = *(*(&off_101353600 + (v1 ^ 0x36FA)) + ((-3 * (v24 & 0xF6 ^ 0x9B) + *(v5 + v28) - 115) ^ 0x4FLL) - 12);
  LODWORD(STACK[0x5680]) = v3 ^ 0xCA63DC9E;
  LOBYTE(v25) = -3 * (((v3 ^ 0x5C) + 81) ^ ((v3 ^ 0x6F) + 100) ^ ((v3 ^ 0xAD) - 94)) + *(v5 + (v3 ^ 0xCA63DC9E)) + 70;
  v32 = v24 & 0xFFFFFFFB ^ 0xCA63DC9E;
  LODWORD(STACK[0x55B0]) = v32;
  v33 = *(*(&off_101353600 + (v1 ^ 0x31F6)) + v25 - 12);
  v34 = *(*(&off_101353600 + (v1 ^ 0x30B3)) + ((-3 * (((v24 & 0xFB ^ 0xCE) + 80) ^ ((v24 & 0xFB ^ 0x2B) - 85) ^ ((v24 & 0xFB ^ 0x7B) - 5)) + *(v5 + v32) - 19) ^ 0xD6));
  v35 = v24 & 0xFFFFFFFA ^ 0xCA63DC9F;
  LODWORD(STACK[0x5650]) = v35;
  v36 = -3 * (((v24 & 0xFA ^ 0x30) - 36) ^ ((v24 & 0xFA ^ 0x8E) + 102) ^ ((v24 & 0xFA ^ 0x21) - 53)) + *(v5 + v35) - 20;
  v22 ^= 0x10u;
  v37 = v30 & 0xFFFF00FF | (v22 << 8);
  v38 = 2 * (v36 & 0x89) + v36 - 4 * (v36 & 0x89u) + 137;
  v39 = (v38 - (v38 ^ 0x89)) | (v22 << 8);
  v40 = v24 & 0xFFFFFFFE ^ 0xCA63DC9B;
  LODWORD(STACK[0x55D0]) = v40;
  v41 = ((8 * ((v33 >> 7) | (2 * v33))) ^ 0xEF) & 0xF8 ^ (v15 & 0xFFFFFF00 | ((v33 >> 7) | (2 * v33))) | ((v29 ^ 0x11111111) << 24);
  v42 = *(&off_101353600 + v1 - 11551) + (v38 ^ 0xEC);
  v43 = *(&off_101353600 + (v1 ^ 0x3241)) + ((-3 * (v24 & 0xFE ^ 0x9B) + *(v5 + v40) - 115) ^ 0x81);
  v44 = v24 & 0xFFFFFFF8 ^ 0xCA63DC9F;
  LODWORD(STACK[0x55C0]) = v44;
  v45 = *(v43 - 12);
  LODWORD(v43) = v39 ^ *(v42 - 8);
  v46 = *(*(&off_101353600 + (v1 ^ 0x3180)) + ((-3 * (((v24 & 0xF8 ^ 0x84) + 82) ^ ((v24 & 0xF8 ^ 0x7C) - 86) ^ ((v24 & 0xF8 ^ 0x67) - 77)) + *(v5 + v44) + 110) ^ 3) - 4);
  LODWORD(v42) = ((((v45 >> 2) | (v45 << 6)) | ((v12 ^ 0xC3) << 8)) ^ (-56 * (v45 >> 2))) & 0xFF00FFFF | ((((v46 >> 6) | (4 * v46)) ^ 0x78) << 16);
  LODWORD(STACK[0x5560]) = v24;
  v47 = v24 & 0xFFFFFFF7 ^ 0xCA63DC9A;
  LODWORD(STACK[0x5580]) = v47;
  v48 = v24 & 0xFFFFFFF9 ^ 0xCA63DC9E;
  LODWORD(STACK[0x55A0]) = v48;
  v49 = *(&off_101353600 + (v1 ^ 0x3788)) + ((-3 * (((v24 & 0xF9 ^ 0x57) + 72) ^ (-17 - (v24 & 0xF9)) ^ ((v24 & 0xF9 ^ 0x36) + 39)) + *(v5 + v48) + 58) ^ 0xC9);
  LODWORD(v42) = v42 | ((*(*(&off_101353600 + v1 - 12107) + ((-3 * (((v24 & 0xF7 ^ 0x33) + 96) ^ ((v24 & 0xF7 ^ 0x46) + 43) ^ ((v24 & 0xF7 ^ 0xEF) - 124)) + *(v5 + v47) + 114) ^ 0x4FLL) - 12) ^ 0x16) << 24);
  v50 = v24 & 0xFFFFFFFD ^ 0xCA63DC9A;
  LODWORD(STACK[0x5590]) = v50;
  HIDWORD(v9) = v43 ^ v42 ^ 0x3C;
  LODWORD(v9) = v42 ^ v37;
  v51 = v41 ^ __ROR4__((v9 >> 14) ^ 0x8682B00, 18);
  LODWORD(v5) = ((((((v31 - (v31 ^ 0x62)) ^ 0xFFFFFFFC) + v31) ^ 0x76 ^ (2 * (((v31 - (v31 ^ 0x62)) ^ 0xFFFFFFFC) + v31) + 98)) << 24) | ((v34 ^ 0xEF) << 16) | ((*(v49 - 12) + 82) >> 3) & 0xD ^ (*(v49 - 12) + 82) | ((*(*(&off_101353600 + v1 - 12645) + ((-3 * (((v24 & 0xFD ^ 0x6B) + 113) ^ ((v24 & 0xFD ^ 0xD9) - 61) ^ ((v24 & 0xFD ^ 0x28) + 52)) + *(v5 + v50) + 19) ^ 0x9FLL) - 4) ^ 0xC2) << 8)) ^ v42 ^ 0x3C ^ v51 ^ 0xAC00242;
  v52 = ((v5 ^ v41 ^ -(v5 ^ v41) ^ (190 - (v5 ^ v41 ^ 0xBE))) + 190) ^ v51 ^ 0xAC00242;
  v53 = (v52 ^ v42 ^ 0x3C) + (v5 ^ 0x7C764EF9) - 2 * ((v52 ^ v42 ^ 0x3C) & (v5 ^ 0x7C764EF9));
  v54 = *(&off_101353600 + (v1 ^ 0x339F)) - 12;
  v55 = *(&off_101353600 + (v1 ^ 0x301F)) - 8;
  v56 = *(&off_101353600 + (v1 ^ 0x3087));
  LODWORD(v42) = *(v56 + 4 * (BYTE1(v5) ^ 0xE1u));
  LODWORD(v49) = (*&v55[4 * (((v51 ^ 0xE2EAE4A8) >> 16) ^ 0x7D)] - 1540392077) ^ v42 ^ *&v54[4 * (HIBYTE(v53) ^ 0xE5)] ^ (16 * v42);
  v57 = ((v5 ^ v41 ^ -(v5 ^ v41) ^ (-66 - (v5 ^ v41 ^ 0xBE))) - 66) ^ v51 ^ 0x42 ^ 0x93;
  v58 = *(&off_101353600 + v1 - 11447) - 8;
  STACK[0x5530] = v58;
  v59 = v49 ^ *&v58[4 * ((((v5 ^ v41 ^ -(v5 ^ v41) ^ (-66 - (v5 ^ v41 ^ 0xBE))) - 66) ^ v51 ^ 0x42) ^ 0x5D)];
  v60 = *(&off_101353600 + v1 - 12611) - 8;
  LODWORD(v49) = *&v60[4 * (BYTE2(v53) ^ 0x19)] ^ 0xF23C163F;
  v61 = *(&off_101353600 + v1 - 12021);
  STACK[0x57A0] = v61;
  HIDWORD(v9) = *(v61 + 4 * (((v52 ^ 0xB8249E93) >> 24) ^ 0xDC));
  LODWORD(v9) = HIDWORD(v9);
  LODWORD(v49) = (v49 ^ (v49 >> 3) ^ (v49 >> 1)) + (v9 >> 15) - 2 * ((v49 ^ (v49 >> 3) ^ (v49 >> 1)) & (v9 >> 15));
  v62 = *(&off_101353600 + (v1 ^ 0x308B));
  STACK[0x5780] = v62;
  LODWORD(v43) = v5 ^ 0x5B ^ ((v51 ^ 0xE4A8) >> 8) ^ *(v62 + 4 * (((v51 ^ 0xE4A8) >> 8) ^ 0x4Au));
  LODWORD(STACK[0x5500]) = v5;
  v63 = *(&off_101353600 + (v1 ^ 0x30A2)) - 4;
  STACK[0x5790] = v63;
  HIDWORD(v9) = v5 ^ 0xCB0CFB5B;
  LODWORD(v9) = v5 ^ 0xCB0CFB5B;
  v64 = *(&off_101353600 + (v1 ^ 0x321C));
  v65 = v43 ^ *&v63[4 * (v5 ^ 0xDD)] ^ v49;
  v66 = *(&off_101353600 + v1 - 12193) - 12;
  LODWORD(v42) = -136181689 * *&v66[4 * (BYTE1(v53) ^ 0x70)];
  v67 = *(&off_101353600 + (v1 ^ 0x30EA));
  v68 = *(v64 + 4 * (((v52 ^ 0xB8249E93) >> 16) ^ 0x95u)) ^ *&v54[4 * (__ROR4__((v9 >> 30) & 0xFC000003 ^ 0x35AF02DD, 26) ^ 0x6BC0B7A8)] ^ v42 ^ (v42 >> 3) ^ (v42 >> 6) ^ *(v67 + 4 * (v51 ^ 0x36u));
  v69 = *(&off_101353600 + (v1 ^ 0x30D0));
  LODWORD(v43) = *(v69 + 4 * (HIBYTE(v51) ^ 0xF));
  STACK[0x5510] = v69;
  v70 = v53 ^ 0x7C;
  v71 = *(&off_101353600 + (v1 ^ 0x3664)) - 12;
  v72 = v59 ^ 0x8B2C7993 ^ -(v59 ^ 0x8B2C7993) ^ (1313729250 - (v59 ^ 0xC5619371));
  v73 = *&v71[4 * v70] + 1423853070;
  v74 = (v73 | 0x32E5D8FF) << (((v52 ^ 0xB8249E93) >> 24) & 2) << (((v52 ^ 0xB8249E93) >> 24) & 2 ^ 2);
  v75 = -136181689 * *&v66[4 * (BYTE1(v52) ^ 0xEE)];
  v76 = ((v43 ^ 0x7C94B798 ^ (2 * v43) & 0xF9296F30) + 2 * ((2 * v43) & 0xF9296F30 & (v43 ^ 0x7C94B798))) ^ (*&v55[4 * (BYTE2(v5) ^ 0x71)] - 1540392077) ^ v75 ^ v73 ^ (v75 >> 3) ^ (v75 >> 6) ^ v74;
  v77 = (v76 ^ 0xB5CDB322) >> (v74 & 8) >> (v74 & 8 ^ 8);
  LODWORD(STACK[0x5570]) = LODWORD(STACK[0x5700]) < 0x7117DFFC;
  v78 = v65 ^ 0x5C4E4E6E;
  v79 = v65 ^ 0x6E;
  v80 = v79 >= 0xDB;
  if (v79 >= 0xDB)
  {
    v79 -= 219;
  }

  v81 = v78 + 37;
  if (!v80)
  {
    v81 = v65 ^ 0x6E;
  }

  v82 = v79 == 0;
  v83 = v72 + 1313729250;
  v84 = *&v60[4 * (BYTE2(v76) ^ 0xD4)] ^ 0xF23C163F;
  v85 = *(v56 + 4 * (BYTE1(v68) ^ 0x12u));
  v86 = v84 ^ (*(v69 + 4 * (((v72 + 1313729250) >> 24) ^ 0xED)) + 2090121112) ^ v85 ^ (v84 >> 1) ^ (v84 >> 3) ^ (16 * v85);
  if (!v82)
  {
    v81 = 0;
  }

  STACK[0x5760] = v67;
  v87 = v86 ^ *(v67 + 4 * ((v78 - v81) ^ 0x9Eu));
  v88 = -136181689 * *&v66[4 * (v77 ^ 0x70)];
  v89 = *(v64 + 4 * (BYTE2(v83) ^ 0x95u)) ^ *&v54[4 * (HIBYTE(v65) ^ 0xB9)] ^ *(v67 + 4 * (v68 ^ 0x35u)) ^ v88 ^ (((v88 >> (v57 & 3) >> (v57 & 3 ^ 3)) ^ v88) >> 3);
  v90 = *&v55[4 * (BYTE2(v65) ^ 0x33)];
  STACK[0x5770] = v55;
  v91 = *(&off_101353600 + v1 - 12082);
  v92 = (v90 - 1540392077) ^ *(v91 + 4 * (HIBYTE(v68) ^ 0xBA));
  v93 = *(&off_101353600 + v1 - 12595);
  STACK[0x5750] = v93;
  HIDWORD(v94) = *(v93 + 4 * (BYTE1(v83) ^ 0x62u));
  LODWORD(v94) = HIDWORD(v94);
  v95 = *&v71[4 * (v76 ^ 0x5E)] + 1423853070;
  v96 = (v94 >> 15) ^ v92 ^ v95 ^ ((v94 >> 15) >> 4) & 0x3163DFA ^ ((4 * v95) | 0xCB9763FC);
  v97 = -136181689 * *&v66[4 * (BYTE1(v78) - ((v78 >> 7) & 0xE0)) + 448];
  v98 = *&v54[4 * (HIBYTE(v76) ^ 0x50)] ^ *(v64 + 4 * (BYTE2(v68) ^ 0x9Fu)) ^ v97 ^ (v97 >> 3) ^ (v97 >> 6);
  v99 = *&v71[4 * (v83 ^ 0x7C)] + 1423853070;
  v100 = v99 ^ 0x32E5D8FF;
  if (*&v71[4 * (v83 ^ 0x7C)] == -1423853070)
  {
    v100 = 219817728;
  }

  v101 = v98 ^ v99 ^ (4 * (v100 & v99));
  v102 = v101 ^ 0xF0;
  v103 = v60;
  STACK[0x5740] = v60;
  v104 = *&v60[4 * (((v101 ^ 0xB6A7DDF0) >> 16) ^ 0x5F)] ^ 0xF23C163F;
  v105 = ((v104 ^ -v104 ^ ((v104 >> 2) - ((v104 >> 2) ^ v104))) + (v104 >> 2)) >> 1;
  v106 = v105 & 0xA4F3BE9 ^ v104 & 0x8A4F3BE9;
  v107 = (v105 ^ v104) & 0x75B0C416;
  v108 = *(v91 + 4 * (HIBYTE(v87) ^ 0x38));
  v109 = v107 | v106;
  STACK[0x5520] = v56;
  v110 = *(v56 + 4 * (BYTE1(v96) ^ 0xEu));
  v111 = STACK[0x5790];
  v112 = v108 ^ v89 ^ v110 ^ (16 * v110) ^ *(STACK[0x5790] + 4 * (v89 ^ 0xDBu)) ^ v109;
  v113 = *(v91 + 4 * (HIBYTE(v89) ^ 0xD5));
  v114 = v91;
  STACK[0x5730] = v91;
  v115 = -136181689 * *&v66[4 * (BYTE1(v87) ^ 0x50)];
  v116 = v71;
  v117 = *&v71[4 * ((v96 ^ 0x99) - ((2 * (v96 ^ 0xFCD71499)) & 0xF8)) + 496] + 1423853070;
  v118 = v113 ^ *(v64 + 4 * (BYTE2(v87) ^ 0x15u)) ^ v117 ^ ((4 * v117) | 0xCB9763FC);
  v119 = *(v56 + 4 * (((v101 ^ 0xDDF0) >> 8) ^ 0xFCu));
  v120 = v119 ^ (16 * v119) ^ v118;
  v121 = STACK[0x57A0];
  v122 = v101 ^ 0xF0;
  v123 = STACK[0x5530];
  v124 = (*&v55[4 * (BYTE2(v89) ^ 0x55)] - 1540392077) ^ v115 ^ __ROR4__(*(STACK[0x57A0] + 4 * (HIBYTE(v96) ^ 0x20)), 15) ^ *(STACK[0x5530] + 4 * (v101 ^ 0x89u)) ^ ((((v115 >> 3) & STACK[0x404] ^ v115 & 0x45217510 | v115 & 0xBADE8AE8) ^ (v115 >> 3) & 0x1ADE8AE8) >> 3);
  v125 = *&v103[4 * (BYTE2(v96) ^ 0xCE)] ^ 0xF23C163F;
  v126 = *&v54[4 * (HIBYTE(v101) ^ 0x15)] ^ v87 ^ v125 ^ (v125 >> 1) ^ (v125 >> 3);
  v127 = -136181689 * *&v66[4 * (BYTE1(v89) ^ 0x73)];
  v128 = v126 ^ *(v111 + 4 * (v87 ^ 0x15u)) ^ v127 ^ (v127 >> 3) ^ (v127 >> 6);
  v129 = *(&off_101353600 + v1 - 11980);
  v130 = *(v129 + 4 * (BYTE2(v128) ^ 0xD4u)) ^ 0x27F34798;
  v131 = v130 ^ *&v54[4 * (HIBYTE(v112) ^ 0xF2)] ^ (4 * v130);
  v132 = v120 ^ 0x7EA625D0;
  v133 = STACK[0x5780];
  v134 = *&v71[4 * (v120 ^ 0xD0)] + 1423853070;
  v135 = v131 ^ *(STACK[0x5780] + 4 * (BYTE1(v124) ^ 0x82u)) ^ v134 ^ ((BYTE1(v124) ^ 0xC8) + 867137105 - ((2 * ((v124 >> 8) ^ 0x1EDCC8)) & 0xA2)) ^ ((4 * v134) | 0xCB9763FC);
  LOBYTE(v127) = v112 ^ 0x20;
  STACK[0x54C0] = v64;
  v136 = (v102 & 0xF0 ^ 0xBF) - (v122 ^ 0xB8);
  v137 = *(v114 + 4 * (HIBYTE(v120) ^ 0x33)) ^ *(v64 + 4 * BYTE2(v112));
  BYTE1(v120) = BYTE1(v128) ^ 8;
  v138 = v123;
  v139 = v137 ^ *(v133 + 4 * (((v128 ^ 0x8C8) >> 8) ^ 0x4Au)) ^ *(v123 + 4 * (v124 ^ 0x60u));
  v140 = 87 * ((v128 ^ 0x2DC08C8u) / 0x57000000) + (((v128 ^ 0x2DC08C8u) >> 24) - 87 * ((189 * ((v128 ^ 0x2DC08C8u) >> 24)) >> 14));
  v141 = STACK[0x5750];
  v142 = *(STACK[0x5750] + 4 * (((v112 ^ 0xD720) >> 8) - (((v112 ^ 0x1795D720) >> 7) & 0xC4) + 98));
  v143 = (v142 >> v136 >> (__ROR4__(__ROR4__(v136, 5) ^ 0x5B4F051E, 27) ^ 0xC4)) | (v142 << 17);
  v144 = STACK[0x5760];
  v145 = *&v54[4 * (HIBYTE(v124) ^ 0xFB)] ^ *(v64 + 4 * BYTE2(v132)) ^ *(STACK[0x5760] + 4 * (v128 ^ 0x56u)) ^ v143 ^ (v143 >> 4) & 0x3163DFA;
  v146 = BYTE1(v132);
  v147 = BYTE1(v132) ^ -BYTE1(v132) ^ (867137105 - (BYTE1(v132) ^ 0x33AF7651));
  v148 = v112 & 0x9A;
  v149 = v129;
  STACK[0x54F0] = v129;
  v150 = v127 | v148;
  v151 = *(v121 + 4 * (v140 ^ 0xDC));
  v152 = *(v129 + 4 * (BYTE2(v124) ^ 0xD4u)) ^ 0x27F34798;
  v153 = v152 ^ (v147 + 867137105) ^ (v151 >> 15) ^ (4 * v152) ^ (v151 << 17) ^ *(v133 + 4 * (v146 ^ 0x4Au)) ^ *(v144 + 4 * (v150 ^ 0x9Eu));
  v154 = STACK[0x5510];
  v155 = STACK[0x5770];
  v156 = (*(STACK[0x5510] + 4 * (HIBYTE(v139) ^ 0x16)) + 2090121112) ^ 0x33AF76AE ^ (*(STACK[0x5770] + 4 * (BYTE2(v135) ^ 0x5Bu)) - 1540392077) ^ BYTE1(v153) ^ *(v133 + 4 * (BYTE1(v153) ^ 0xB5u));
  LODWORD(STACK[0x5550]) = v156;
  v157 = STACK[0x5790];
  v158 = *(STACK[0x5790] + 4 * (v145 ^ 0xD0u)) ^ v145;
  v159 = v154;
  v160 = (*(v154 + 4 * (HIBYTE(v135) ^ 0x16)) + 2090121112) ^ *(v138 + 4 * ((v139 ^ BYTE1(v120)) ^ 0xF0u));
  v161 = *(v149 + 4 * (BYTE2(v153) ^ 0xC9u)) ^ 0x27F34798;
  v162 = -136181689 * *&v66[4 * (BYTE1(v145) ^ 0xF2)];
  LODWORD(v149) = v161 ^ (4 * v161) ^ v160 ^ v162 ^ (v162 >> 3) ^ (v162 >> 6);
  v163 = *(v155 + 4 * (BYTE2(v139) ^ 0xCu));
  STACK[0x54D0] = v54;
  v164 = -136181689 * *&v66[4 * (BYTE1(v135) ^ 0x7E)];
  v165 = *&v71[4 * (v153 ^ 0x41)] + 1423853070;
  v166 = *&v54[4 * (HIBYTE(v145) ^ 0xD3)] ^ (v163 - 1540392077) ^ v164 ^ (v164 >> 3) ^ (v164 >> 6) ^ v165 ^ ((4 * v165) | 0xCB9763FC);
  v167 = *(STACK[0x5740] + 4 * (BYTE2(v145) ^ 0xD7u)) ^ 0xF23C163F;
  v168 = v141;
  HIDWORD(v169) = *(v141 + 4 * (BYTE1(v139) ^ 0xBDu));
  LODWORD(v169) = HIDWORD(v169);
  v170 = v167 ^ *(v144 + 4 * (v135 ^ 0x65u)) ^ (v169 >> 15) ^ ((v169 >> 15) >> 4) & 0x3163DFA ^ *&v54[4 * (HIBYTE(v153) ^ 0x3A)] ^ (((v167 >> 2) + v167 - 2 * ((v167 >> 2) & v167)) >> 1);
  v171 = STACK[0x5740];
  v172 = *(STACK[0x5740] + 4 * (BYTE2(v170) ^ 0x76u)) ^ 0xF23C163F;
  v173 = ((v172 >> (STACK[0x5500] & 0x1A) >> (STACK[0x5500] & 0x1A ^ 0x1A)) + (v172 << 6)) ^ ((v172 ^ (v172 >> 2)) >> 27) ^ ((v172 ^ (v172 >> 2)) >> 1 << (v172 & 6) << (v172 & 6 ^ 6)) ^ 0x841B2B5A;
  v174 = v158 ^ v156;
  v175 = STACK[0x54C0];
  v176 = *(STACK[0x54C0] + 4 * (BYTE2(v149) ^ 0x80u));
  v177 = STACK[0x5730];
  v178 = *(STACK[0x5730] + 4 * (HIBYTE(v174) ^ 0x8B));
  v179 = (v178 ^ ((v178 ^ 0x4E6D6A6C) + 1) ^ 0xB1929593 ^ ((v176 ^ 0x711DC7AC) - (v176 ^ v178 ^ 0xC08F523F))) + (v176 ^ 0x711DC7AC);
  v180 = -136181689 * *&v66[4 * (BYTE1(v170) ^ 7)];
  LODWORD(v155) = (v180 >> 3) & 0x491ED08 ^ v180 & 0xA491ED08 | (v180 >> 3) & STACK[0x408] ^ v180 & 0x5B6E12F0;
  v181 = *(v116 + 4 * (v166 ^ 0xA7u));
  STACK[0x54B0] = v116;
  v182 = v179 ^ v180 ^ (v155 >> 3) ^ (((4 * (v181 + 1423853070)) & 0x30608800 | 0xC8166360) ^ (v181 + 1423853070) & 0xF876EB61 | ((4 * (v181 + 1423853070)) & 0x4081400 | 0x381009C) ^ (v181 + 1423853070) & 0x789149E);
  v183 = -136181689 * *&v66[4 * (((v149 ^ 0x3E3) >> 8) ^ 0x70)];
  v184 = (*(v159 + 4 * ((((HIBYTE(v166) ^ 0xDB) - (HIBYTE(v166) ^ 0x36)) ^ 0xFFFFFFFE) + (HIBYTE(v166) ^ 0xDB))) + 2090121112) ^ *(v175 + 4 * ((((BYTE2(v174) ^ 0x26) - (BYTE2(v174) ^ 0xB3)) ^ 0xFFFFFFFE) + (BYTE2(v174) ^ 0x26))) ^ 0x711DC7AC ^ v183 ^ (v183 >> 3) ^ (v183 >> 6);
  v185 = v170 ^ 0xA56F7785;
  v186 = *(v157 + 4 * (v170 ^ 3u)) ^ v170 ^ 0x90AA4ED1;
  v187 = (v184 ^ -v184 ^ (v186 - (v186 ^ v184))) + v186;
  v188 = *(v171 + 4 * (BYTE2(v166) ^ 0x4Du)) ^ 0xF23C163F;
  LODWORD(v169) = __ROR4__(*(v168 + 4 * (BYTE1(v174) ^ 0xD0u)), 28) ^ 0x22400005;
  HIDWORD(v169) = v169;
  v189 = v169 >> 4;
  HIDWORD(v169) = *(v168 + 4 * (BYTE1(v174) ^ 0xD0u));
  LODWORD(v169) = v189;
  v190 = v159;
  v191 = -136181689 * *&v66[4 * (BYTE1(v166) ^ 0x11)];
  LODWORD(v169) = __ROR4__(__ROR4__(*(STACK[0x57A0] + 4 * HIBYTE(v185)), 15) ^ 0x3C4C96E1 ^ *(v138 + 4 * (v149 ^ 0x2Du)) ^ (v169 >> 15) ^ 0xA448 ^ (((v169 >> 15) ^ 0xA448) >> 4) & 0x3163DFA ^ (((v188 >> 3) ^ (v188 >> 1) ^ -((v188 >> 3) ^ (v188 >> 1)) ^ (v188 - ((v188 >> 3) ^ (v188 >> 1) ^ v188))) + v188), 3) ^ 0x433E4C9C;
  HIDWORD(v169) = v169;
  v192 = v169 >> 29;
  v193 = *(v171 + 4 * (BYTE2(v192) ^ 0x10u));
  v194 = (-230943169 - (v193 & 0x40000)) ^ v193 & 0xFFFBFFFF;
  v195 = (v194 ^ -v194 ^ (((v194 >> 3) ^ (v194 >> 1)) - ((v194 >> 3) ^ (v194 >> 1) ^ v194))) + ((v194 >> 3) ^ (v194 >> 1));
  v196 = *(v116 + 4 * (v182 ^ 0x24u)) + 1423853070;
  HIDWORD(v169) = __ROR4__((*(v159 + 4 * (((((v149 ^ 0xB81503E3) >> 24) - (((v149 ^ 0xB81503E3) >> 24) ^ 0xED)) ^ 0xFFFFFFFE) + ((v149 ^ 0xB81503E3) >> 24))) + 2090121112) ^ *(v138 + 4 * (v174 ^ 0x69u)) ^ v191 ^ (v191 >> 3) ^ (v191 >> 6) ^ __ROR4__(v173, 6) ^ 0x4FAE9EAE, 11) ^ 0xB8256ED;
  LODWORD(v169) = HIDWORD(v169);
  v197 = v169 >> 21;
  v198 = STACK[0x5520];
  v199 = *(STACK[0x5520] + 4 * (BYTE1(v192) ^ 0xD1u));
  v200 = (*(v159 + 4 * (HIBYTE(v197) ^ 0x79)) + 2090121112) ^ *(STACK[0x5780] + 4 * (BYTE1(v187) ^ 0xC3u)) ^ 0x33AF76D8 ^ v196 ^ ((4 * v196) | 0xCB9763FC) ^ BYTE1(v187) ^ v195;
  v201 = v175;
  v202 = *(v177 + 4 * (HIBYTE(v182) ^ 0x43)) ^ *(v138 + 4 * (v187 ^ 0x2Bu)) ^ (v199 - ((2 * v199) & 0xEDB734B8) - 153380260) ^ *(v175 + 4 * (BYTE2(v197) ^ 0xCEu)) ^ (16 * (v199 - ((2 * v199) & 0xEDB734B8) - 153380260));
  v203 = *(STACK[0x54F0] + 4 * (BYTE2(v182) ^ 0x9Au)) ^ 0x27F34798;
  v204 = *(STACK[0x54D0] + 4 * (HIBYTE(v187) ^ 0x26)) ^ ((v197 ^ 0x35D5) >> 8) ^ v203 ^ (4 * v203) ^ *(v138 + 4 * (v192 ^ 0x63u)) ^ *(STACK[0x5780] + 4 * (((v197 ^ 0x35D5) >> 8) ^ 0x4Au));
  v205 = *(STACK[0x5780] + 4 * (BYTE1(v182) ^ 0xEu)) ^ BYTE1(v182) ^ v197 ^ 0xD5 ^ __ROR4__(*(STACK[0x57A0] + 4 * (HIBYTE(v192) ^ 0xD7)), 15) ^ (*(STACK[0x5770] + 4 * (BYTE2(v187) ^ 0xDu)) - 1540392077);
  LODWORD(v169) = __ROR4__(v200, 6) ^ 0x632C95BB;
  HIDWORD(v169) = v169;
  v206 = v169 >> 26;
  v207 = STACK[0x5790];
  v208 = v205 ^ *(STACK[0x5790] + 4 * (v197 ^ 0x53u));
  v209 = *(STACK[0x5520] + 4 * (BYTE1(v204) ^ 0xC4u));
  v210 = STACK[0x5760];
  v211 = (*(STACK[0x5770] + 4 * (BYTE2(v208) ^ 0x78u)) - 1540392077) ^ __ROR4__(*(STACK[0x57A0] + 4 * (HIBYTE(v206) ^ 4)), 15) ^ v209 ^ (16 * v209) ^ *(STACK[0x5760] + 4 * (v202 ^ 0x47u));
  v212 = *&v66[4 * (BYTE1(v206) ^ 0x45)];
  v213 = BYTE1(v208);
  v214 = v201;
  v215 = *(v201 + 4 * (BYTE2(v206) ^ 0xE5u)) ^ (*(v190 + 4 * (HIBYTE(v202) ^ 0x69)) + 2090121112) ^ *(STACK[0x5780] + 4 * (BYTE1(v208) ^ 0x1Eu)) ^ *(STACK[0x5760] + 4 * (v204 ^ 3u));
  LODWORD(v177) = *(v190 + 4 * (HIBYTE(v208) ^ 0x7D));
  v216 = *(STACK[0x54B0] + 4 * (v208 ^ 0x13u)) + 1423853070;
  LODWORD(v201) = *(STACK[0x5770] + 4 * (BYTE2(v204) ^ 0x7Fu));
  v217 = (-136181689 * v212) ^ *(STACK[0x54D0] + 4 * (HIBYTE(v204) ^ 0xF2)) ^ ((-136181689 * v212) >> 3) ^ ((-136181689 * v212) >> 6) ^ (*(STACK[0x5770] + 4 * (BYTE2(v202) ^ 0x78u)) - 1540392077) ^ __ROR4__(__ROR4__(v216, 8) ^ 0xE5469BB7 ^ ((v216 >> 6) & 0x34689C | 0xFCCB9763), 24);
  v218 = *(STACK[0x5520] + 4 * (BYTE1(v202) ^ 0xDFu));
  LODWORD(v177) = ((v218 ^ (16 * v218) ^ 0x692891CC ^ -(v218 ^ (16 * v218) ^ 0x692891CC) ^ (((v201 - 1540392077) ^ (v177 + 2090121112)) - ((v201 - 1540392077) ^ (v177 + 2090121112) ^ v218 ^ (16 * v218) ^ 0x692891CC))) + ((v201 - 1540392077) ^ (v177 + 2090121112))) ^ *(STACK[0x5760] + 4 * ((v169 >> 26) ^ 0x27u));
  v219 = BYTE1(v217);
  v220 = v215 ^ v213;
  LODWORD(v201) = (v220 ^ 0xD91DE65B) >> 24;
  v221 = *(STACK[0x54F0] + 4 * (BYTE2(v177) ^ 0xA9u)) ^ 0x27F34798;
  v222 = *(STACK[0x5790] + 4 * (v220 ^ 0xDDu)) ^ v220 ^ 0x5B ^ v221 ^ *(STACK[0x5730] + 4 * (HIBYTE(v211) ^ 0x35)) ^ (4 * v221) ^ *(STACK[0x5780] + 4 * (BYTE1(v217) ^ 0xB5u));
  v223 = *(STACK[0x54B0] + 4 * (v217 ^ 0xE2u));
  v224 = *(STACK[0x5520] + 4 * (BYTE1(v177) ^ 0x46u));
  v225 = *(STACK[0x54D0] + 4 * (((v201 - (v201 ^ 0xE5)) ^ 0xFFFFFFFE) + v201)) ^ *(v214 + 4 * (BYTE2(v211) ^ 0x20u)) ^ v224 ^ (16 * v224);
  v226 = *(STACK[0x54D0] + 4 * (HIBYTE(v217) ^ 0x35));
  LODWORD(STACK[0x5530]) = v215;
  LODWORD(v168) = *(v210 + 4 * (v177 ^ 0x6Au));
  LODWORD(v201) = *(v198 + 4 * (BYTE1(v211) ^ 0xBDu));
  v227 = *(STACK[0x57A0] + 4 * (BYTE3(v177) ^ 0xD0));
  v228 = v225 ^ (v223 + 1423853070) ^ ((4 * (v223 + 1423853070)) | 0xCB9763FC);
  v229 = *(STACK[0x5740] + 4 * (BYTE2(v217) ^ 0x84u));
  v230 = *(v214 + 4 * (BYTE2(v215) ^ 0x88u)) ^ v168 ^ v201 ^ v226 ^ (16 * v201);
  if ((v229 & 0x200) != 0)
  {
    v231 = -512;
  }

  else
  {
    v231 = 512;
  }

  v232 = (v231 + v229) ^ 0xF23C143F;
  v233 = __PAIR64__(*(STACK[0x5750] + 4 * (BYTE1(v215) ^ 0xE6u)), __ROR4__(v227, 15));
  v234 = v211 ^ v233 ^ *(v207 + 4 * (v211 ^ 0x45u));
  LODWORD(v233) = *(STACK[0x5750] + 4 * (BYTE1(v215) ^ 0xE6u));
  v235 = v234 ^ (v233 >> 15) ^ ((v233 >> 15) >> 4) & 0x3163DFA ^ v232 ^ (v232 >> 1) ^ (v232 >> 3);
  v236 = v222 ^ v219 ^ 0x3BE1A142;
  v237 = v235 ^ 0x33039C40;
  v238 = *(*(&off_101353600 + (v1 ^ 0x317C)) + (v228 ^ 0x76) - 12) ^ 0xE;
  v239 = (v238 >> 1) & 0x27 ^ v238;
  v240 = (v228 ^ 0xB1E94B94) >> 24;
  v241 = *(&off_101353600 + v1 - 11792) + 4 * (v240 ^ 0x50);
  v242 = *(*(&off_101353600 + (v1 ^ 0x3073)) + (BYTE2(v222) ^ 0xC1u)) ^ 0x45121C76;
  v243 = BYTE1(v230) ^ (HIBYTE(v236) - 1375843971) ^ *(*(&off_101353600 + (v1 ^ 0x3691)) + (HIBYTE(v236) ^ 0x4B) - 3) ^ *(*(&off_101353600 + v1 - 12306) + (((v235 ^ 0x33039C40u) >> 16) ^ 0x62u) - 1) ^ v239 ^ *(*(&off_101353600 + (v1 ^ 0x3037)) + (BYTE1(v230) ^ 0xBAu) - 2) ^ ((v235 ^ 0x33039C40u) >> 16);
  v244 = ((v242 >> 4) & 0x8323152) + v242 - 2 * ((v242 >> 4) & 0x8323152 & v242);
  v245 = ((v235 ^ 0x9C40) >> 8);
  v246 = *(&off_101353600 + v1 - 11938) + 4 * (v245 ^ 0x7Fu);
  v247 = BYTE2(v230) ^ 0xC8;
  v248 = *(*(&off_101353600 + (v1 ^ 0x32EA)) + (v230 ^ 0xFLL) - 4) ^ ((v230 ^ 0x12 ^ -(v230 ^ 0x12) ^ (-17 - (v230 ^ 0xFD))) - 17);
  v249 = *(&off_101353600 + (v1 ^ 0x3346)) + 4 * (HIBYTE(v230) ^ 0x5A);
  v250 = ((v228 ^ 0xB1E94B94) >> (v235 & 0x10 ^ 0x10) >> (v235 & 0x10));
  v251 = *(&off_101353600 + (v1 ^ 0x362E)) + 4 * (v250 ^ 0x56u);
  v252 = *(&off_101353600 + (v1 ^ 0x3148)) + v235;
  v253 = *(&off_101353600 + v1 - 11721) + 4 * (BYTE1(v222) ^ 0xB6u);
  v254 = *(&off_101353600 + (v1 ^ 0x3388)) + 4 * HIBYTE(v237);
  v255 = *(*(&off_101353600 + (v1 ^ 0x36FE)) + (v247 ^ 0xC0u));
  LODWORD(STACK[0x5540]) = v1;
  v256 = (v255 - 629282976) ^ *(*(&off_101353600 + v1 - 11605) + (BYTE1(v228) ^ 6u) - 2) ^ ((4 * (v255 - 629282976)) | 0xE06B0D68) ^ *(*(&off_101353600 + v1 - 11459) + (v236 ^ 1)) ^ (-1305498177 * *(v254 - 3));
  LODWORD(v241) = v240 ^ v245 ^ (v245 + 172963673) ^ *(v241 - 1) ^ v244 ^ *(v246 - 1) ^ v248 ^ v243 ^ v256 ^ 0x4420C658;
  LODWORD(v253) = *(v249 - 1) ^ 0x25F7313B ^ (v250 + 2144338497) ^ ((*(v249 - 1) ^ 0x25F7313Bu) >> 1) ^ *(v251 - 1) ^ ((*(v249 - 1) ^ 0x25F7313Bu) >> 2) ^ *(v253 - 3) ^ (*(v252 - 4) + 82) ^ v241;
  v257 = v253 ^ v256;
  LODWORD(v253) = v253 ^ v243;
  v258 = v253 ^ 0xE4B0DB68;
  LODWORD(v253) = ((v253 ^ 0xE4B0DB68) - 2 * ((v253 ^ 0xE4B0DB68) & 0x49F3AFA ^ v253 & 0x12) - 2069939480) ^ LODWORD(STACK[0x5660]);
  v259 = v243 ^ LODWORD(STACK[0x5610]) ^ v258 ^ (~(2 * ((v257 ^ 0xC1F44FE8) & 0x28237C73 ^ v257 & 1)) + (v257 ^ 0xC1F44FE8) + 673414259);
  v260 = ((v257 ^ 0xC1F44FE8) - 1266087571 - 2 * ((v257 ^ 0xC1F44FE8) & 0x3489097D ^ v257 & 0x10)) ^ LODWORD(STACK[0x5620]);
  LODWORD(v253) = LODWORD(STACK[0x54E0]) ^ LODWORD(STACK[0x57B0]) ^ (v253 - 495884956 - ((2 * v253) & 0xC4E2CAC8));
  v261 = v260 - 495884956 - ((2 * v260) & 0xC4E2CAC8);
  v262 = v253 ^ 0x1524FFBB;
  LODWORD(v249) = (v253 ^ 0x1524FFBB) - (LODWORD(STACK[0x5430]) ^ v253);
  LODWORD(v254) = LODWORD(STACK[0x57B0]) ^ LODWORD(STACK[0x55F0]) ^ LODWORD(STACK[0x54E0]);
  v263 = v254 ^ 0xBDD76B7D ^ (v259 - 495884956 - ((2 * v259) & 0xC4E2CAC8));
  LODWORD(v253) = v254 ^ 0xAA70B850 ^ v261;
  LODWORD(v252) = (LODWORD(STACK[0x5420]) ^ v249) + v262;
  LODWORD(v249) = v254 ^ ((v241 ^ LODWORD(STACK[0x5640])) - 495884956 - ((2 * (v241 ^ LODWORD(STACK[0x5640]))) & 0xC4E2CAC8));
  v264 = STACK[0x5490];
  v265 = *(STACK[0x5490] + 4 * BYTE2(v253));
  v266 = STACK[0x5720];
  LODWORD(v241) = *(STACK[0x5720] + 4 * HIBYTE(v263));
  v267 = -672384718 - (((v265 ^ 0xE3A37781) + 475826303) ^ ((v265 ^ 0xD690839D) + 695172195) ^ ((v265 ^ 0xB56A3DF9) + 1251328519));
  v268 = (((v241 ^ 0x1C70A026) - 477143078) ^ ((v241 ^ 0xCE3DF4D3) + 834800429) ^ ((v241 ^ 0x38E61B5A) - 954604378)) - (((v241 ^ v265 ^ 0x6B73814F) - 1802731855) ^ ((v241 ^ v265 ^ 0x7DEA78D1) - 2112518353) ^ ((v241 ^ v265 ^ 0x7C6B7FD4) - 2087419860)) - 862497106;
  v269 = v267 ^ v265 ^ ((v267 ^ 0x6631598E) - 1048009369) ^ ((v267 ^ 0xEAFB337) - 1458155552) ^ ((v267 ^ 0xCF2F4651) + 1754708666) ^ ((v267 ^ 0xFFF7AFFF) + 1481528088) ^ v268 ^ ((v268 ^ 0x2B864F08) - 1733870145) ^ ((v268 ^ 0xD8573C06) + 1802915505) ^ ((v268 ^ LODWORD(STACK[0x40C])) - 221154553) ^ ((v268 ^ 0xFEFFFFF7) + 1306430786);
  LODWORD(v241) = (((v241 ^ 0xC67C3D3B) + 964936389) ^ ((v241 ^ 0x6C354E0E) - 1815432718) ^ ((v241 ^ 0x40E23C9A) - 1088568474)) + 895116144 + (((v269 ^ 0xBAACBD40) - 893150340) ^ ((v269 ^ 0x18B8694B) + 1758941041) ^ ((v269 ^ 0x36D593B0) + 1186641292)) + 2007;
  v270 = (v241 ^ 0xCA2AD0E6) & (2 * (v241 & 0xD0A282E7)) ^ v241 & 0xD0A282E7;
  v271 = ((2 * (v241 ^ 0x6A2FD4E4)) ^ 0x751AAC06) & (v241 ^ 0x6A2FD4E4) ^ (2 * (v241 ^ 0x6A2FD4E4)) & 0xBA8D5602;
  v272 = v271 ^ 0x8A855201;
  v273 = (v271 ^ LODWORD(STACK[0x410])) & (4 * v270) ^ v270;
  v274 = ((4 * v272) ^ 0xEA35580C) & v272 ^ (4 * v272) & 0xBA8D5600;
  v275 = (v274 ^ 0xAA055000) & (16 * v273) ^ v273;
  v276 = ((16 * (v274 ^ LODWORD(STACK[0x5400]))) ^ 0xA8D56030) & (v274 ^ LODWORD(STACK[0x5400])) ^ (16 * (v274 ^ LODWORD(STACK[0x5400]))) & 0xBA8D5600;
  v277 = v275 ^ 0xBA8D5603 ^ (v276 ^ 0xA8854000) & (v275 << 8);
  v278 = v249 ^ 0x4CABDE52;
  v279 = (v277 << 16) & 0x3A8D0000 ^ v277 ^ ((v277 << 16) ^ 0x56030000) & (((v276 ^ 0x12081603) << 8) & 0xBA8D0000 ^ 0x32890000 ^ (((v276 ^ 0x12081603) << 8) ^ 0x8D560000) & (v276 ^ 0x12081603));
  v280 = STACK[0x5470];
  v281 = STACK[0x5460];
  v282 = *(STACK[0x5490] + 4 * ((v252 ^ 0xE72BBF41) >> 16)) ^ *(STACK[0x5470] + 4 * ((v249 ^ 0xDE52) >> 8)) ^ *(STACK[0x5720] + 4 * (v253 >> 24)) ^ *(STACK[0x5460] + 4 * v263);
  v283 = *(STACK[0x5460] + 4 * (v249 ^ 0x52u)) ^ *(STACK[0x5470] + 4 * ((v252 ^ 0xBF41) >> 8)) ^ v241 ^ (2 * v279);
  LODWORD(v241) = *(STACK[0x5470] + 4 * BYTE1(v263)) ^ *(STACK[0x5490] + 4 * (BYTE2(v249) ^ 0xABu)) ^ *(STACK[0x5460] + 4 * v253);
  LODWORD(v249) = *(STACK[0x5720] + 4 * ((v252 ^ 0xE72BBF41) >> 24));
  LODWORD(v254) = *(STACK[0x5460] + 4 * (v252 ^ 0x41u));
  LODWORD(v252) = *(STACK[0x5490] + 4 * BYTE2(v263));
  v284 = v241 ^ v249;
  LODWORD(v253) = v252 ^ *(STACK[0x5720] + 4 * HIBYTE(v278)) ^ *(STACK[0x5470] + 4 * BYTE1(v253)) ^ v254;
  LODWORD(v241) = *(STACK[0x5460] + 4 * (v253 ^ 0xDDu)) ^ *(STACK[0x5490] + 4 * (BYTE2(v282) ^ 0x4Bu)) ^ *(STACK[0x5470] + 4 * (((v241 ^ v249) >> 8) ^ 0x95u)) ^ *(STACK[0x5720] + 4 * (HIBYTE(v283) ^ 0xFD));
  v285 = *(STACK[0x5720] + 4 * (HIBYTE(v282) ^ 0x9A)) ^ 0x1220FEDA ^ *(STACK[0x5470] + 4 * (BYTE1(v253) ^ 0xFBu));
  LODWORD(v252) = *(STACK[0x5470] + 4 * (BYTE1(v282) ^ 0x1Au));
  v286 = *(STACK[0x5470] + 4 * (BYTE1(v283) ^ 0x33u)) ^ *(STACK[0x5490] + 4 * (BYTE2(v253) ^ 0x62u)) ^ *(STACK[0x5720] + 4 * (HIBYTE(v284) ^ 0xCC)) ^ *(STACK[0x5460] + 4 * (v282 ^ 0x36u));
  LODWORD(v233) = __ROR4__(__ROR4__(v285 ^ *(STACK[0x5490] + 4 * (BYTE2(v284) ^ 0x4Au)) ^ *(STACK[0x5460] + 4 * (v283 ^ 0xBBu)), 6) ^ 0xA51C5292, 26);
  BYTE1(v283) = BYTE1(v233) ^ 0x2F;
  v287 = *(STACK[0x5490] + 4 * (BYTE2(v283) ^ 0xEDu)) ^ v252 ^ *(STACK[0x5720] + 4 * ((v253 >> 24) ^ 0x3B)) ^ *(STACK[0x5460] + 4 * (v284 ^ 0x96u));
  LODWORD(v253) = *(STACK[0x5460] + 4 * (v287 ^ 0x8Eu)) ^ *(STACK[0x5720] + 4 * ((v241 >> 24) ^ 0xD5)) ^ *(STACK[0x5470] + 4 * (BYTE1(v286) ^ 0x51u)) ^ *(STACK[0x5490] + 4 * ((v233 ^ 0xD5662FB6) >> 16));
  v288 = *(STACK[0x5490] + 4 * (BYTE2(v286) ^ 0xE2u)) ^ *(STACK[0x5460] + 4 * (v241 ^ 0xAAu)) ^ *(STACK[0x5470] + 4 * (BYTE1(v287) ^ 0x1Bu)) ^ *(STACK[0x5720] + 4 * ((v233 ^ 0xD5662FB6) >> 24));
  LODWORD(v252) = HIBYTE(v287) ^ 0x77;
  v289 = *(STACK[0x5490] + 4 * (BYTE2(v287) ^ 0x7Au)) ^ *(STACK[0x5470] + 4 * (BYTE1(v241) ^ 0xDEu)) ^ *(STACK[0x5720] + 4 * (HIBYTE(v286) ^ 0x83)) ^ *(STACK[0x5460] + 4 * (v233 ^ 0xB6u));
  LODWORD(v233) = __ROR4__(v288, 18) ^ 0x94E3590B;
  HIDWORD(v233) = v233;
  LODWORD(v249) = v233 >> 14;
  LODWORD(v252) = *(STACK[0x5720] + 4 * v252) ^ *(STACK[0x5490] + 4 * (BYTE2(v241) ^ 0xE3u)) ^ *(STACK[0x5460] + 4 * (v286 ^ 0xAu)) ^ *(STACK[0x5470] + 4 * BYTE1(v283));
  v290 = *(STACK[0x5470] + 4 * (BYTE1(v289) ^ 0x65u));
  LODWORD(v241) = *(STACK[0x5490] + 4 * BYTE2(v249)) ^ *(STACK[0x5720] + 4 * ((v253 >> 24) ^ 0xEF));
  v291 = -1393472166 - (((v290 ^ 0x7A03B311) - 2047062801) ^ ((v290 ^ 0xE3C1F474) + 473828236) ^ ((v290 ^ 0x25DED626) - 635360806));
  v292 = (((v241 ^ 0xCC5AB4E7) + 866470681) ^ ((v241 ^ 0x68734AB3) - 1752386227) ^ ((v241 ^ 0xCEDB781E) + 824477666)) - (((v290 ^ v241 ^ 0x3E3A5F81) - 1044012929) ^ ((v290 ^ v241 ^ 0x96BADEF4) + 1766138124) ^ ((v290 ^ v241 ^ 0x7E6E967C) - 2121176700)) - 1402752411;
  v293 = v291 ^ v290 ^ ((v291 ^ 0x4142DC37) - 676266666) ^ ((v291 ^ 0x33098A7E) - 1510233315) ^ ((v291 ^ 0xE4BB7F2B) + 1917410890) ^ ((v291 ^ 0xFFFDF7FF) + 1762645662) ^ v292 ^ ((v292 ^ 0x3712FF1D) - 793623609) ^ ((v292 ^ 0xB0CB9940) + 1466639772) ^ ((v292 ^ 0x6871DC8F) - 1882103723) ^ ((v292 ^ 0xF7F7F9F6) + 274154798);
  LODWORD(v241) = (((v293 ^ 0x13487B00) + 445757454) ^ ((v293 ^ 0xE98A26DC) - 531372590) ^ ((v293 ^ 0x378C5126) + 1045795372)) + (((v241 ^ 0x4E751CE5) - 1316297957) ^ ((v241 ^ 0xD3448C2F) + 750482385) ^ ((v241 ^ 0xF7C31680) + 138209664));
  v294 = ((v241 - 186099259) ^ 0xBC721AAD) & (2 * ((v241 - 186099259) & 0xB1725C8D)) ^ (v241 - 186099259) & 0xB1725C8D;
  v295 = ((2 * ((v241 - 186099259) ^ 0x9EF613A5)) ^ 0x5F089E50) & ((v241 - 186099259) ^ 0x9EF613A5) ^ (2 * ((v241 - 186099259) ^ 0x9EF613A5)) & 0x2F844F28;
  v296 = (v295 ^ 0xF000F00) & (4 * v294) ^ v294;
  v297 = ((4 * (v295 ^ 0x20844128)) ^ 0xBE113CA0) & (v295 ^ 0x20844128) ^ (4 * (v295 ^ 0x20844128)) & 0x2F844F28;
  v298 = (v297 ^ 0x2E000C20) & (16 * v296) ^ v296;
  v299 = ((16 * (v297 ^ 0x1844308)) ^ 0xF844F280) & (v297 ^ 0x1844308) ^ (16 * (v297 ^ 0x1844308)) & 0x2F844F20;
  v300 = v298 ^ 0x2F844F28 ^ (v299 ^ 0x28044200) & (v298 << 8);
  v301 = ((v300 << 16) ^ 0x4280000) & ((((v299 ^ 0x7800D28) << 8) ^ 0x44F0000) & (v299 ^ 0x7800D28) ^ ((v299 ^ 0x7800D28) << 8) & 0x2F840000);
  LODWORD(v254) = (v300 << 16) & 0x4040404 ^ v300;
  v302 = v249 ^ 0xC400D6CE;
  v303 = ((4 * (v254 ^ v301)) ^ (2 * (v241 - 186099259))) & 0x51F8140C;
  LODWORD(v241) = v241 - (((v303 ^ 0xB2DA5FA6) + 184685860) ^ ((v303 ^ 0x4CA092BD) - 176629703) ^ ((v303 ^ 0xBE8AC913) + 122848151)) + 28296719;
  v304 = v241 ^ *(STACK[0x5460] + 4 * (v252 ^ 0xC7u)) ^ ((v241 ^ 0xC9F3BBAB) + 255652734);
  LODWORD(v249) = v241 ^ 0xFBFDFF7F;
  v305 = ((v241 ^ 0xCABF86CA) + 208719389) ^ ((v241 ^ 0xC1817537) + 122568162);
  LODWORD(v241) = *(STACK[0x5470] + 4 * BYTE1(v302));
  v306 = v304 ^ v305 ^ (v249 + 1026733994);
  v307 = (((v241 & 0x7D12EDD ^ 0xDEA20FAC) + 906501951) ^ ((v241 & 0x7D12EDD ^ 0xE77E71E) - 421660787) ^ ((v241 & 0x7D12EDD ^ 0xD4C5E8F3) + 1013971042)) - (((v241 & 0x7D12EDD ^ 0x9BD70C4C) - 1006929152) ^ ((v241 & 0x7D12EDD ^ 0x258B515F) + 2108106733) ^ ((v241 & 0x7D12EDD ^ 0xBDCC599B) - 438292695)) - 1661172358;
  v308 = ((v307 ^ 0x91077B5B) + 1124245687) ^ v307 ^ ((v307 ^ 0x70262604) - 1574699542) ^ ((v307 ^ 0xB16486B2) + 1667325280) ^ ((v307 ^ 0x7DBFFFFF) - 1346755565);
  v309 = (((v241 & 0x7D12EDD ^ 0xFA2CB9D1) + 310815044) ^ ((v241 & 0x7D12EDD ^ 0xBFD8B0A) - 480797799) ^ ((v241 & 0x7D12EDD ^ 0xF5C1329A) + 493560329)) - 1328273151 + (((v308 ^ 0xD3EF9547) - 925101893) ^ ((v308 ^ 0xDF5BF281) - 999786627) ^ ((v308 ^ 0xDEB1BC2A) - 981321256));
  v310 = ((v309 ^ 0xBA9158FA) + 598356195) ^ v309 ^ ((v309 ^ 0x69215E1C) - 266717691) ^ ((v309 ^ 0x4A9B6FFF) - 744486936) ^ ((v309 ^ 0xFFEFFEFE) + 1725208295);
  v311 = *(STACK[0x5720] + 4 * HIBYTE(v302)) ^ *(STACK[0x5470] + 4 * (BYTE1(v252) ^ 0xCFu)) ^ *(STACK[0x5460] + 4 * (v253 ^ 0xDFu)) ^ *(STACK[0x5490] + 4 * (BYTE2(v289) ^ 0x36u));
  v312 = *(STACK[0x5720] + 4 * (HIBYTE(v289) ^ 0xEC)) ^ *(STACK[0x5490] + 4 * (BYTE2(v252) ^ 0xB6u)) ^ *(STACK[0x5470] + 4 * (BYTE1(v253) ^ 0x41u)) ^ *(STACK[0x5460] + 4 * v302);
  v313 = *(STACK[0x5720] + 4 * ((v252 >> 24) ^ 0x54)) ^ *(STACK[0x5460] + 4 * (v289 ^ 0x10u)) ^ *(STACK[0x5490] + 4 * (BYTE2(v253) ^ 0x86u)) ^ v310 & 0x2B591F99 ^ (v310 ^ 0x982A6000) & (v241 & 0xF82ED122 ^ 0x9482E166);
  LODWORD(v241) = (((v312 ^ 0xD447209F) + 733536097) ^ ((v312 ^ 0x9F00E350) + 1627331760) ^ ((v312 ^ 0x84BD7296) + 2067959146)) - (((v312 ^ 0xA5257BDC) - 639736329) ^ ((v312 ^ 0x3E65C440) + 1117706859) ^ ((v312 ^ 0x305EE490) + 1285946043)) - 1209021532;
  LODWORD(v241) = ((v241 ^ 0x229DAD86) - 848459938) ^ v241 ^ ((v241 ^ 0x7577724) - 391684608) ^ ((v241 ^ 0xCEBAEB79) + 558547363) ^ ((v241 ^ 0xFB7FE4FF) + 344968741);
  LODWORD(v241) = (((v312 ^ 0xA2CB11F9) + 1563749895) ^ ((v312 ^ 0x4E8A2A76) - 1317677686) ^ ((v312 ^ 0x23BB8AD6) - 599493334)) + 1747761513 + (((v241 ^ 0xE84742B0) - 442128044) ^ ((v241 ^ 0xA03A9E5) + 132203015) ^ ((v241 ^ 0xDB4C18F) + 5646957));
  v314 = ((v241 ^ 0xD3AF8514) + 1444197282) ^ v241 ^ ((v241 ^ 0x3B85F4F2) - 1103183288) ^ ((v241 ^ 0xED91C6D3) + 1747644519) ^ ((v241 ^ 0x7FFF7E7F) - 96188213);
  v315 = *(STACK[0x5490] + 4 * (BYTE2(v314) ^ 0x44u));
  LODWORD(v241) = ((v315 & 0x10 ^ 0xC1DE691A) + 537180935) ^ ((v315 & 0x10) + 501422877) ^ ((v315 & 0x10 ^ 0xDF824F9E) + 1045994883);
  v316 = v241 - 1755592975;
  LODWORD(v253) = (v316 ^ 0x848954F9) & (2 * (v316 & 0xF2)) ^ v316 & 0xF2;
  v317 = ((2 * (v316 ^ 0x88995CD9)) ^ 0x1CA07456) & (v316 ^ 0x88995CD9) ^ (2 * (v316 ^ 0x88995CD9)) & 0xE503A2A;
  LODWORD(v253) = v317 & (4 * v253) ^ v253;
  v318 = ((4 * (v317 ^ 0x2500A29)) ^ 0x3940E8AC) & (v317 ^ 0x2500A29) ^ (4 * (v317 ^ 0x2500A29)) & 0xE503A28;
  LODWORD(v253) = (v318 ^ LODWORD(STACK[0x53F8])) & (16 * v253) ^ v253;
  v319 = ((16 * (v318 ^ 0x6101203)) ^ 0xE503A2B0) & (v318 ^ 0x6101203) ^ (16 * (v318 ^ 0x6101203)) & 0xE503A20;
  LODWORD(v253) = v253 ^ 0xE503A2B ^ (v319 ^ LODWORD(STACK[0x53F0])) & (v253 << 8);
  LODWORD(v253) = (v253 << 16) & 0xE500000 ^ v253 ^ ((v253 << 16) ^ 0x3A2B0000) & (((v319 ^ LODWORD(STACK[0x414])) << 8) & 0xE500000 ^ 0xE400000 ^ (((v319 ^ LODWORD(STACK[0x414])) << 8) ^ 0x503A0000) & (v319 ^ LODWORD(STACK[0x414])));
  v320 = *(STACK[0x5720] + 4 * (HIBYTE(v311) ^ 0x88));
  v321 = (v316 ^ (2 * v253) ^ 0x8E6912A4) & (v320 ^ 0x4C75AD53) ^ (v316 ^ (2 * v253)) & 0xA6DEE2FC;
  v322 = *(STACK[0x5460] + 4 * (v313 ^ 0xFDu)) ^ *(STACK[0x5490] + 4 * (BYTE2(v311) ^ 0xD2u)) ^ *(STACK[0x5470] + 4 * (BYTE1(v314) ^ 0xC9u)) ^ *(STACK[0x5720] + 4 * (HIBYTE(v306) ^ 0x20));
  v323 = 1527868203 - v241;
  if (v321 == -2042101084)
  {
    v323 = v316;
  }

  v324 = (((v320 ^ 0x32F834DD) - 855127261) ^ ((v320 ^ 0x6B6562A0) - 1801806496) ^ ((v320 ^ 0xB33619D2) + 1288300078)) + 2018757987 + v323;
  v325 = (v324 ^ 0xF0B0E13F) & (2 * (v324 & 0xF920E93E)) ^ v324 & 0xF920E93E;
  v326 = ((2 * (v324 ^ 0xF2B0F367)) ^ 0x172034B2) & (v324 ^ 0xF2B0F367) ^ (2 * (v324 ^ 0xF2B0F367)) & 0xB901A58;
  v327 = (v326 ^ LODWORD(STACK[0x418])) & (4 * v325) ^ v325;
  v328 = ((4 * (v326 ^ 0x8900A49)) ^ 0x2E406964) & (v326 ^ 0x8900A49) ^ (4 * (v326 ^ 0x8900A49)) & 0xB901A58;
  v329 = (v328 ^ 0xA000859) & (16 * v327) ^ v327;
  v330 = ((16 * (v328 ^ 0x1901219)) ^ 0xB901A590) & (v328 ^ 0x1901219) ^ (16 * (v328 ^ 0x1901219)) & 0xB901A50;
  v331 = v329 ^ 0xB901A59 ^ (v330 ^ 0x9000049) & (v329 << 8);
  v332 = *(v280 + 4 * (BYTE1(v313) ^ 0xD7u)) ^ v315 & 0xFFFFFFEF ^ *(v281 + 4 * (v306 ^ 0x79u)) ^ v324 ^ (2 * ((v331 << 16) & 0xB900000 ^ v331 ^ ((v331 << 16) ^ 0x1A590000) & (((v330 ^ 0x2901A49) << 8) & 0xB900000 ^ 0xB800000 ^ (((v330 ^ 0x2901A49) << 8) ^ 0x101A0000) & (v330 ^ 0x2901A49))));
  v333 = *(v264 + 4 * (BYTE2(v306) ^ 0x24u)) ^ *(v280 + 4 * (BYTE1(v311) ^ 0x8Fu)) ^ *(v266 + 4 * (HIBYTE(v313) ^ 0x85));
  v334 = *(v264 + 4 * BYTE2(v313)) ^ *(v266 + 4 * (HIBYTE(v314) ^ 0x7A)) ^ *(v281 + 4 * (v311 ^ 0x45u)) ^ *(v280 + 4 * (BYTE1(v306) ^ 0x11u));
  v335 = (((v332 ^ 0xD3E6B933) + 1890257553) ^ ((v332 ^ LODWORD(STACK[0x53E8])) + 296582331) ^ ((v332 ^ 0x13B9CFBA) - 1326154726)) + 1743160624;
  LOBYTE(v324) = (v335 ^ 0xD7) & (2 * (v335 & 0xE7)) ^ v335 & 0xE7;
  v336 = ((2 * (v335 ^ 0x11)) ^ 0xEC) & (v335 ^ 0x11) ^ (2 * (v335 ^ 0x11)) & 0xF6;
  v337 = ((4 * (v336 ^ 0x12)) & 0xF0 ^ 0xD6 ^ ((4 * (v336 ^ 0x12)) ^ 0xD0) & (v336 ^ 0x12)) & (16 * ((v336 ^ 0xA6) & (4 * v324) ^ v324)) ^ (v336 ^ 0xA6) & (4 * v324) ^ v324;
  v338 = *(v281 + 4 * (v314 ^ 0x4Au));
  if ((((v332 ^ 0x940CEB1D) + 927029439) ^ ((v332 ^ 0x11C0EF8E) - 1299358674) ^ ((v332 ^ 0xF773BD03) + 1413353121)) + 772666828 >= 0x98891EB5)
  {
    v339 = ((((v332 ^ 0x33) - 111) ^ ((v332 ^ LOBYTE(STACK[0x53E8])) - 69) ^ ((v332 ^ 0xBA) + 26)) + 48) ^ (2 * v337) ^ 0x2B;
  }

  else
  {
    v339 = v332 ^ 0x5C;
  }

  v340 = (((v333 ^ 0xDA7E2217) + 629267945) ^ ((v333 ^ 0x6F9E4719) - 1872643865) ^ ((v333 ^ LODWORD(STACK[0x53E0])) - 1661891079)) - (((v333 ^ v338 ^ 0x86E85512) + 2031594222) ^ ((v333 ^ v338 ^ 0x8E0FD5FE) + 1911564802) ^ ((v333 ^ v338 ^ 0xC71D31B5) + 954388043)) + 1007660008;
  v341 = (v340 ^ 0xC2FBB9C7) & (2 * (v340 & 0xCAE3B9C8)) ^ v340 & 0xCAE3B9C8;
  v342 = ((2 * (v340 ^ 0xD638EA47)) ^ 0x39B6A71E) & (v340 ^ 0xD638EA47) ^ (2 * (v340 ^ 0xD638EA47)) & 0x1CDB538E;
  v343 = (v342 ^ 0x18920300) & (4 * v341) ^ v341;
  v344 = ((4 * (v342 ^ 0x4495081)) ^ 0x736D4E3C) & (v342 ^ 0x4495081) ^ (4 * (v342 ^ 0x4495081)) & 0x1CDB538C;
  v345 = (v344 ^ 0x10494200) & (16 * v343) ^ v343;
  v346 = ((16 * (v344 ^ 0xC921183)) ^ 0xCDB538F0) & (v344 ^ 0xC921183) ^ (16 * (v344 ^ 0xC921183)) & 0x1CDB5380;
  v347 = v345 ^ 0x1CDB538F ^ (v346 ^ 0xC911000) & (v345 << 8);
  v348 = (v347 << 16) & 0x1CDB0000 ^ v347 ^ ((v347 << 16) ^ 0x538F0000) & (((v346 ^ 0x104A430F) << 8) & 0x1CDB0000 ^ 0x4880000 ^ (((v346 ^ 0x104A430F) << 8) ^ 0x5B530000) & (v346 ^ 0x104A430F));
  v349 = 379190529 - (((v338 ^ 0xB40B9387) + 1274309753) ^ ((v338 ^ 0x4696126) - 74015014) ^ ((v338 ^ 0xA97654F1) + 1451862799));
  v350 = v349 ^ v338 ^ ((v349 ^ 0x8734C3DB) + 1466277750) ^ ((v349 ^ 0xAF36CCAB) + 2137493510) ^ ((v349 ^ 0x5C5353DE) - 1946022031) ^ ((v349 ^ LODWORD(STACK[0x41C])) - 1951489198) ^ v340 ^ (2 * v348);
  v351 = (((v333 ^ 0x5FDB461B) - 1608205851) ^ ((v333 ^ 0xDE700F52) + 563081390) ^ ((v333 ^ 0x57455E40) - 1464163904)) - 679132018 + (((v350 ^ 0xC6881825) + 78352924) ^ ((v350 ^ 0x564B0F2A) - 1805089515) ^ ((v350 ^ 0x743A0CD8) - 1239841049));
  v352 = ((v351 ^ 0xD9FE6835) + 24127654) ^ v351 ^ ((v351 ^ 0x12AEC23A) - 903839061) ^ ((v351 ^ 0x82CEBB9F) + 1514208016) ^ ((v351 ^ 0x6EEFAEFF) - 1235095952);
  if ((((v332 ^ 0x1FCAE63B) - 1131981415) ^ ((v332 ^ 0x5F5F9705) - 65919833) ^ ((v332 ^ 0x322AC8AE) - 1855489266)) + 772666828 >= 0x98891EB5)
  {
    v354 = -47;
  }

  else
  {
    v354 = 28;
  }

  v353 = ((v339 ^ 0x34) - 52) ^ ((v339 ^ 0xB5) + 75) ^ ((v339 ^ 0x4D) - 77);
  v355 = (((v353 + v354) ^ 0xB1) + 31) ^ (v353 + v354) ^ (((v353 + v354) ^ 0x63) - 51) ^ (((v353 + v354) ^ 0x75) - 37) ^ (((v353 + v354) ^ 0xF7) + 89);
  v356 = *(v266 + 4 * (HIBYTE(v322) ^ 0x25)) ^ *(v264 + 4 * (BYTE2(v332) ^ 0xBFu)) ^ *(v280 + 4 * (BYTE1(v334) ^ 0xC1u)) ^ *(v281 + 4 * (v352 ^ 0x1Bu));
  v357 = *(v281 + 4 * (v322 ^ 0xAFu)) ^ *(v264 + 4 * (BYTE2(v334) ^ 0xD0u)) ^ *(v266 + 4 * (HIBYTE(v332) ^ 0x72)) ^ 0xC0597DF9 ^ *(v280 + 4 * (BYTE1(v352) ^ 0x5Bu));
  v358 = *(v264 + 4 * (BYTE2(v352) ^ 0xF3u)) ^ *(v266 + 4 * (HIBYTE(v334) ^ 6));
  v359 = *(v266 + 4 * (HIBYTE(v352) ^ 0x11));
  v360 = *(v281 + 4 * (v355 ^ 0x50u)) ^ v358;
  v361 = *(v264 + 4 * (BYTE2(v322) ^ 0x1Cu));
  v362 = (v361 ^ 0x4655E31C) & (v359 ^ 0x6AAB4FAF) ^ v359 & 0x460C2AF9;
  v363 = (((v359 ^ 0x3AA1CAC3) - 983681731) ^ ((v359 ^ 0xCC8F888C) + 863008628) ^ ((v359 ^ 0x1C850DE0) - 478481888)) + (((v361 ^ 0xEE085242) + 301444542) ^ ((v361 ^ 0x5CC42F09) - 1556360969) ^ ((v361 ^ 0x3295B4AE) - 848671918)) - ((((2 * v362) ^ 0x57E77F69) + 1819523906) ^ (((2 * v362) ^ 0xFB271A47) - 1061953936) ^ (((2 * v362) ^ 0x28D0707C) + 323269717)) + 2013563294;
  v364 = (v363 ^ 0xB0E06C75) & (2 * (v363 & 0xB2856171)) ^ v363 & 0xB2856171;
  v365 = ((2 * (v363 ^ 0xB1EAAEB7)) ^ 0x6DF9F8C) & (v363 ^ 0xB1EAAEB7) ^ (2 * (v363 ^ 0xB1EAAEB7)) & 0x36FCFC6;
  v366 = (v365 ^ 0x20F8F84) & (4 * v364) ^ v364;
  v367 = ((4 * (v365 ^ 0x1204042)) ^ 0xDBF3F18) & (v365 ^ 0x1204042) ^ (4 * (v365 ^ 0x1204042)) & 0x36FCFC4;
  v368 = (v367 ^ 0x12F0F00) & (16 * v366) ^ v366;
  v369 = ((16 * (v367 ^ 0x240C0C6)) ^ LODWORD(STACK[0x53D8])) & (v367 ^ 0x240C0C6) ^ (16 * (v367 ^ 0x240C0C6)) & 0x36FCFC0;
  v370 = v368 ^ 0x36FCFC6 ^ (v369 ^ 0x26CCC00) & (v368 << 8);
  v371 = (v370 << 16) & 0x36F0000 ^ v370 ^ ((v370 << 16) ^ 0x4FC60000) & (((v369 ^ 0x1030386) << 8) & 0x36F0000 ^ (((v369 ^ 0x1030386) << 8) ^ 0x6FCF0000) & (v369 ^ 0x1030386) ^ 0x200000);
  HIDWORD(v373) = v357;
  LODWORD(v373) = v357;
  v372 = v373 >> 3;
  v374 = *(v280 + 4 * (BYTE1(v322) ^ 0x15u));
  v375 = *(v280 + 4 * (BYTE1(v332) ^ 0xB9u)) ^ *(v281 + 4 * (v334 ^ 0xE6u)) ^ v363 ^ (2 * v371);
  v376 = v360 ^ v374;
  v377 = -336213278 - (((v372 ^ 0x1DDAFFD9) + 911814589) ^ ((v372 ^ 0x2B6E4A7) + 691352771) ^ ((v372 ^ 0xB47664A7) - 1611287357));
  v378 = (430700889 - (((v372 ^ 0x2046D5E7) + 1568104127) ^ ((v372 ^ 0x72B9E1D7) + 260598415) ^ ((v372 ^ 0x8C277D05) - 250153379))) ^ v372 ^ v377 ^ ((v377 ^ 0xBE33310C) + 714134999) ^ ((v377 ^ 0xFB4D471A) + 1877910465) ^ ((v377 ^ 0x51D592CC) - 982092265) ^ ((v377 ^ 0x7FF7FFFF) - 346809562);
  HIDWORD(v373) = (((v378 ^ 0x4C3B2E38) - 390800467) ^ ((v378 ^ 0x31DA70AF) - 1789557444) ^ ((v378 ^ 0xBDA73A6B) + 422105088)) + 284730755;
  LODWORD(v373) = HIDWORD(v373);
  v379 = v373 >> 29;
  v380 = *(v264 + 4 * BYTE2(v379)) ^ *(v266 + 4 * (HIBYTE(v356) ^ 0x9B)) ^ *(v280 + 4 * (((v360 ^ v374) >> 8) ^ 0x44u)) ^ *(v281 + 4 * (v375 ^ 0x2Bu));
  LODWORD(STACK[0x57A0]) = v380;
  v381 = *(v264 + 4 * (((v360 ^ v374) >> 16) ^ 0xB1u)) ^ *(v266 + 4 * HIBYTE(v379)) ^ *(v281 + 4 * (v356 ^ 0xBDu)) ^ *(v280 + 4 * (BYTE1(v375) ^ 0xD8u));
  v382 = *(v266 + 4 * (HIBYTE(v375) ^ 0x11)) ^ *(v264 + 4 * (BYTE2(v356) ^ 0x55u)) ^ *(v280 + 4 * BYTE1(v379));
  v383 = *(v280 + 4 * (BYTE1(v356) ^ 0xAEu)) ^ *(v266 + 4 * ((v360 ^ ~v374) >> 24)) ^ *(v281 + 4 * (v373 >> 29)) ^ *(v264 + 4 * (BYTE2(v375) ^ 0x17u));
  LODWORD(STACK[0x5790]) = v382;
  LODWORD(v373) = __ROR4__(__ROR4__(v380, 13) ^ 0x26BE9889, 19);
  v384 = *(v264 + 4 * (BYTE2(v381) ^ 0x11u));
  v385 = *(v280 + 4 * (BYTE1(v383) ^ 0x61u));
  LODWORD(STACK[0x5780]) = v385;
  v386 = v385 ^ v384 ^ *(v266 + 4 * ((v373 ^ 0xF561353A) >> 24));
  v387 = *(v281 + 4 * (v376 ^ 0xE8u));
  LODWORD(STACK[0x5770]) = v387;
  v388 = ((v382 & 0x72D55A90 ^ 0x2E544CA7) & (v382 & 0x8D2AA56F ^ 0x7AD57BBE) | v382 & 0x812AA148) ^ v387;
  v389 = v386 ^ *(v281 + 4 * (((v382 & 0x90 ^ 0xA7) & (v382 & 0x6F ^ 0xBE) | v382 & 0x48) ^ v387 ^ 0x31u));
  v390 = *(v266 + 4 * (HIBYTE(v383) ^ 0xEF)) ^ *(v281 + 4 * (v381 ^ 0xE3u));
  v391 = v390 ^ *(v280 + 4 * ((v373 ^ 0x353A) >> 8)) ^ *(v264 + 4 * (BYTE2(v388) ^ 0xC7u));
  v392 = *(v280 + 4 * (BYTE1(v381) ^ 0x94u)) ^ *(v281 + 4 * (v383 ^ 0x52u));
  v393 = v392 ^ *(v264 + 4 * ((v373 ^ 0xF561353A) >> 16)) ^ *(v266 + 4 * (HIBYTE(v388) ^ 0xC3));
  v394 = *(v280 + 4 * (BYTE1(v389) ^ 0x30u));
  v395 = ((v394 & 0x4000 ^ 0x235059BE) - 615789504) ^ (v394 & 0x4000 | 0x4639582) ^ ((v394 & 0x4000 ^ 0xAD6D583F) + 1433849279);
  v396 = *(v264 + 4 * (BYTE2(v393) ^ 0x61u)) ^ *(v266 + 4 * (HIBYTE(v391) ^ 0xD4));
  v397 = (((v395 + 1090403256) ^ 0x30F0378E) - 166323892) ^ (v395 + 1090403256) ^ (((v395 + 1090403256) ^ 0x11446BD8) - 677231330) ^ (((v395 + 1090403256) ^ 0xE353B293) + 632659031) ^ (((v395 + 1090403256) ^ 0xFBFE3FFF) + 1024987451);
  v82 = ((v397 ^ 0x3919D13A) & (v396 ^ 0x9E5733DA) ^ v397 & 0xF4A5B590) == 805409040;
  v398 = *(v266 + 4 * (HIBYTE(v381) ^ 0xDF));
  v399 = *(v264 + 4 * (BYTE2(v383) ^ 0x5Au));
  v400 = v398 ^ v399;
  v401 = -1024419849 - (((v399 ^ 0xEA74C9AE) + 361444946) ^ ((v399 ^ 0x2D5E4E7A) - 761155194) ^ ((v399 ^ 0x47734E31) - 1198738993));
  v402 = (v401 ^ 0xB8B19E92) & (2 * (v401 & 0xBCB59E24)) ^ v401 & 0xBCB59E24;
  v403 = ((2 * (v401 ^ 0xF9D89E92)) ^ 0x8ADA016C) & (v401 ^ 0xF9D89E92) ^ (2 * (v401 ^ 0xF9D89E92)) & 0x456D00B6;
  v404 = (v403 ^ 0x490022) & (4 * v402) ^ v402;
  v405 = ((4 * (v403 ^ 0x45250092)) ^ 0x15B402D8) & (v403 ^ 0x45250092) ^ (4 * (v403 ^ 0x45250092)) & 0x456D00B4;
  v406 = v404 ^ 0x456D00B6 ^ (v405 ^ 0x5240080) & (16 * v404);
  v407 = (16 * (v405 ^ LODWORD(STACK[0x53D0]))) & 0x456D00B0 ^ 0x12D0096 ^ ((16 * (v405 ^ LODWORD(STACK[0x53D0]))) ^ 0x56D00B60) & (v405 ^ LODWORD(STACK[0x53D0]));
  v408 = (v406 << 8) & 0x456D0000 ^ v406 ^ ((v406 << 8) ^ 0x6D00B600) & v407;
  v409 = (((v398 ^ 0xA39EE424) + 1549867996) ^ ((v398 ^ 0x582E984B) - 1479448651) ^ ((v398 ^ 0x111B33C0) - 286995392)) - (((v400 ^ 0x78656FCD) - 2019913677) ^ ((v400 ^ 0xF17EE477) + 243342217) ^ ((v400 ^ 0xE3E90DF0) + 471265808)) - 529818635;
  v410 = v401 ^ v399 ^ v409 ^ ((v409 ^ 0x7BC7C1A) - 1729015434) ^ ((v409 ^ 0x53C767F2) - 863352162) ^ ((v409 ^ 0xCB912E87) + 1423705065) ^ ((v409 ^ 0xFF58E7FF) + 1612040849) ^ (2 * ((v408 << 16) & 0x456D0000 ^ v408 ^ ((v408 << 16) ^ 0xB60000) & ((v407 << 8) & 0x456D0000 ^ 0x6D0000 ^ ((v407 << 8) ^ 0x6D000000) & v407)));
  v411 = (((v398 ^ 0x862B997C) + 2043963012) ^ ((v398 ^ 0x8F758993) + 1888122477) ^ ((v398 ^ 0xE3F55F40) + 470458560)) + 730431515 + (((v410 ^ 0x919486BA) + 927899142) ^ ((v410 ^ 0x929FB232) + 876980878) ^ ((v410 ^ 0x5FC7B0B5) - 115496949));
  v412 = (v411 ^ 0x914BB294) & (2 * (v411 & 0xC50B3311)) ^ v411 & 0xC50B3311;
  v413 = ((2 * (v411 ^ 0x1B59B4B4)) ^ 0xBCA50F4A) & (v411 ^ 0x1B59B4B4) ^ (2 * (v411 ^ 0x1B59B4B4)) & 0xDE5287A4;
  v414 = (v413 ^ 0x1C000400) & (4 * v412) ^ v412;
  v415 = ((4 * (v413 ^ 0x425280A5)) ^ 0x794A1E94) & (v413 ^ 0x425280A5) ^ (4 * (v413 ^ 0x425280A5)) & 0xDE5287A4;
  v416 = (v415 ^ 0x58420680) & (16 * v414) ^ v414;
  v417 = ((16 * (v415 ^ 0x86108121)) ^ 0xE5287A50) & (v415 ^ 0x86108121) ^ (16 * (v415 ^ 0x86108121)) & 0xDE5287A0;
  v418 = v416 ^ 0xDE5287A5 ^ (v417 ^ 0xC40002A5) & (v416 << 8);
  v419 = *(v280 + 4 * (BYTE1(v388) ^ 0x38u)) ^ *(v281 + 4 * (v373 ^ 0x3Au)) ^ v411 ^ (2 * ((v418 << 16) & 0x5E520000 ^ v418 ^ ((v418 << 16) ^ 0x7A50000) & (((v417 ^ 0x1A5285A5) << 8) & 0x5E520000 ^ 0xC500000 ^ (((v417 ^ 0x1A5285A5) << 8) ^ 0x52870000) & (v417 ^ 0x1A5285A5))));
  v420 = *(v266 + 4 * (HIBYTE(v389) ^ 0xE4)) ^ *(v280 + 4 * (BYTE1(v391) ^ 0xC5u)) ^ *(v281 + 4 * ((v392 ^ *(v264 + 4 * ((v373 ^ 0xF561353A) >> 16)) ^ *(v266 + 4 * (HIBYTE(v388) ^ 0xC3))) ^ 0xFu)) ^ *(v264 + 4 * (BYTE2(v419) ^ 0xF4u));
  v421 = *(v280 + 4 * (BYTE1(v393) ^ 4u)) ^ *(v264 + 4 * (BYTE2(v391) ^ 8u)) ^ *(v281 + 4 * (v389 ^ 0x70u)) ^ *(v266 + 4 * (HIBYTE(v419) ^ 0xEB));
  v422 = 825583292 - v395;
  if (v82)
  {
    v422 = v395 + 1090403256;
  }

  v423 = (((v396 ^ 0xC163E281) + 1050418559) ^ ((v396 ^ 0x4AFFFA80) - 1258289792) ^ ((v396 ^ 0xE16E9E4B) + 512844213)) - 1379079500 + v422;
  v424 = *(v281 + 4 * (v419 ^ 0xDBu)) ^ v394 & 0xFFFFBFFF ^ v423 ^ ((v423 ^ 0xBBD7A218) + 1071409220) ^ ((v423 ^ 0xE9652C3E) + 1835984486) ^ ((v423 ^ 0xBEBD4478) + 985042468) ^ ((v423 ^ 0x97FBFFFA) + 334509474);
  v425 = *(v266 + 4 * (HIBYTE(v393) ^ 0xF2)) ^ *(v264 + 4 * (BYTE2(v389) ^ 0x43u)) ^ *(v281 + 4 * (v391 ^ 0xC1u)) ^ *(v280 + 4 * (BYTE1(v419) ^ 0xAFu));
  v426 = LODWORD(STACK[0x5790]) ^ LODWORD(STACK[0x5770]);
  v427 = __ROR4__(__ROR4__(STACK[0x57A0], 26) ^ 0xADFDAE8A, 6);
  v428 = *(v264 + 4 * ((v381 ^ 0xDF1194E3) >> (BYTE1(LODWORD(STACK[0x5530])) & 0x10) >> (BYTE1(LODWORD(STACK[0x5530])) & 0x10 ^ 0x10))) ^ LODWORD(STACK[0x5780]) ^ *(v266 + 4 * ((v427 ^ 0xCC7E757u) >> 24)) ^ *(v281 + 4 * ((LOBYTE(STACK[0x5790]) ^ LOBYTE(STACK[0x5770])) ^ 0x97u));
  v429 = v390 ^ *(v264 + 4 * (BYTE2(v426) ^ 0x93u)) ^ *(v280 + 4 * ((v427 ^ 0xE757) >> 8));
  v430 = v400 ^ *(v280 + 4 * (BYTE1(v426) ^ 0x70u)) ^ *(v281 + 4 * (v427 ^ 0x57u));
  v431 = __ROR4__(__ROR4__(v392 ^ *(v266 + 4 * (HIBYTE(v426) ^ 0xE9)) ^ *(v264 + 4 * ((v427 ^ 0xCC7E757u) >> 16)), 18) ^ 0xB3624FA4, 14);
  v432 = *(v266 + 4 * (HIBYTE(v430) ^ 0xF4)) ^ *(v264 + 4 * (BYTE2(v429) ^ 8u)) ^ *(v280 + 4 * ((v431 ^ 0xC986) >> 8));
  v433 = *(v281 + 4 * (v428 ^ 0x70u));
  v434 = (((v432 ^ 0xC6F0D30F) + 957295857) ^ ((v432 ^ 0xDDFBE0ED) + 570695443) ^ ((v432 ^ 0xCDE524EB) + 840620821)) - (((v433 ^ v432 ^ 0x11E99D09) - 300522761) ^ ((v433 ^ v432 ^ 0xD0E7E97B) + 790107781) ^ ((v433 ^ v432 ^ 0xEF4C52B) - 250922283)) + 1031431359;
  v435 = (v434 ^ 0xED742CF8) & (2 * (v434 & 0xC97900F1)) ^ v434 & 0xC97900F1;
  v436 = ((2 * (v434 ^ LODWORD(STACK[0x420]))) ^ 0x693A5852) & (v434 ^ LODWORD(STACK[0x420])) ^ (2 * (v434 ^ LODWORD(STACK[0x420]))) & 0xB49D2C28;
  v437 = (v436 ^ 0x20080000) & (4 * v435) ^ v435;
  v438 = ((4 * (v436 ^ LODWORD(STACK[0x424]))) ^ 0xD274B0A4) & (v436 ^ LODWORD(STACK[0x424])) ^ (4 * (v436 ^ LODWORD(STACK[0x424]))) & 0xB49D2C28;
  v439 = (v438 ^ LODWORD(STACK[0x428])) & (16 * v437) ^ v437;
  v440 = ((16 * (v438 ^ 0x24890C09)) ^ 0x49D2C290) & (v438 ^ 0x24890C09) ^ (16 * (v438 ^ 0x24890C09)) & 0xB49D2C20;
  v441 = v439 ^ 0xB49D2C29 ^ (v440 ^ 0x900029) & (v439 << 8);
  v442 = (v441 << 16) & 0x349D0000 ^ v441 ^ ((v441 << 16) ^ 0x2C290000) & (((v440 ^ 0xB40D2C29) << 8) & 0xB49D0000 ^ 0x20910000 ^ (((v440 ^ 0xB40D2C29) << 8) ^ 0x1D2C0000) & (v440 ^ 0xB40D2C29));
  v443 = *(v264 + 4 * (BYTE2(v430) ^ 0xA8u)) ^ *(v280 + 4 * (BYTE1(v429) ^ 0xC5u)) ^ *(v266 + 4 * (HIBYTE(v428) ^ 0xE4)) ^ *(v281 + 4 * (v431 ^ 0x86u));
  v444 = -9926052 - (((v433 ^ 0x4D0E9C50) - 1292803152) ^ ((v433 ^ 0x7FBED3CA) - 2143212490) ^ ((v433 ^ LODWORD(STACK[0x42C])) - 732228042));
  v445 = v433 ^ v444 ^ ((v444 ^ 0xB32AA11D) + 1420324431) ^ ((v444 ^ 0xEA0CB987) + 227440341) ^ ((v444 ^ 0xBE84F7E9) + 1493579963) ^ ((v444 ^ 0xFFDFDFDF) + 408752269) ^ v434 ^ (2 * v442) ^ 0x4570239E;
  v446 = (v445 & 0x396CE8FC ^ 0x6448E2E1) & (v445 & 0xC6931703 ^ 0x797CEBFC) | v445 & 0x82931502;
  v447 = *(v264 + 4 * (BYTE2(v428) ^ 0x43u)) ^ *(v280 + 4 * (BYTE1(v430) ^ 0x15u));
  v448 = *(v266 + 4 * (HIBYTE(v429) ^ 0xD4)) ^ *(v281 + 4 * (v430 ^ 0xCAu)) ^ *(v280 + 4 * (BYTE1(v428) ^ 0x30u)) ^ *(v264 + 4 * ((v431 ^ 0xCCF3C986) >> 16));
  v449 = (((v432 ^ 0xA02B4FD8) + 1607774248) ^ ((v432 ^ 0xBA2E38AC) + 1171375956) ^ ((v432 ^ 0xCCEB607D) + 856989571)) + 274867179 + (((v446 ^ 0xF5FAA3B) - 875819587) ^ ((v446 ^ 0x4F0F33B) - 1067232067) ^ ((v446 ^ 0xC7AF5621) + 54325671));
  v450 = ((v449 ^ 0x48E26658) - 182834129) ^ v449 ^ ((v449 ^ 0xEA9857E6) + 1465916817) ^ ((v449 ^ 0x9F42738A) + 582629885) ^ ((v449 ^ 0x7F3FF7BD) - 1027097140);
  v451 = ((v443 ^ 0x763178B4) + 580575015) ^ ((v443 ^ 0xB4D3AE41) - 529004076) ^ ((v443 ^ 0x69B68E98) + 1025321227);
  v452 = (((v420 ^ 0xAA3046B) - 1796606676) ^ ((v420 ^ 0xF6DE83D0) + 1754559121) ^ ((v420 ^ 0x5729DFD6) - 916246889)) - v451 - 2127821266;
  v453 = ((v452 ^ 0xE0B0B43B) + 2706931) ^ v452 ^ ((v452 ^ 0xDB0F9E46) + 999712656) ^ ((v452 ^ 0xDB66DABC) + 1006576502) ^ ((v452 ^ 0xFFBFF6F7) + 522587967);
  v454 = v447 ^ *(v281 + 4 * (v429 ^ 0xC1u)) ^ *(v266 + 4 * ((v431 ^ 0xCCF3C986) >> 24));
  v455 = ((v448 ^ 0xB6842DAD) - 1030792651) ^ ((v448 ^ 0x53A0035C) + 665547974) ^ ((v448 ^ 0x6ED0A697) + 450613519);
  v456 = (((v424 ^ 0x882A73E6) - 1890396466) ^ ((v424 ^ 0x57F1A09D) + 1351157175) ^ ((v424 ^ 0x4529E8F3) + 1112624601)) - v455 + 1243154982;
  v457 = ((v456 ^ 0x412D2DCF) - 11099233) ^ v456 ^ ((v456 ^ 0x7A12250E) - 999707808) ^ ((v456 ^ 0xA5488680) + 456329426) ^ ((v456 ^ 0xDFF3FFEF) + 1636331967);
  v458 = ((v450 ^ 0xBA769A3C) + 1483906542) ^ ((v450 ^ 0xDA6A4510) + 946750146) ^ ((v450 ^ 0x7DE72702) - 1612504876);
  v459 = (((v421 ^ 0xB14FFAE7) - 1359699501) ^ ((v421 ^ 0x38B517DD) + 655248617) ^ ((v421 ^ 0x19FC11C4) + 105335538)) - v458 + 1178506871;
  v460 = ((v454 ^ 0xDACFCC0C) - 1822486844) ^ ((v454 ^ 0x903F657F) - 642799695) ^ ((v454 ^ 0xFC9F9443) - 1257286003);
  v461 = (((v425 ^ 0xC7BC86C1) + 1556356496) ^ ((v425 ^ 0x4DFE58C9) - 695811192) ^ ((v425 ^ 0x3C2DE338) - 1487570825)) - v460 - 1016026212;
  v462 = ((v461 ^ 0xE9AE0FC1) + 1897411359) ^ v461 ^ ((v461 ^ 0xD3717508) + 1271351768) ^ ((v461 ^ 0x226A5696) - 1159959990) ^ ((v461 ^ 0x7FFCEF7F) - 414526559);
  v463 = -1776012609 * (v459 ^ ((v459 ^ 0x9641341A) + 1604973795) ^ ((v459 ^ 0x32C6E1E4) - 80862947) ^ ((v459 ^ 0xED4D1527) + 614847968) ^ ((v459 ^ 0x7FDDFFDE) - 1238024409) ^ 0x30BAA9B1);
  v464 = -1807484597 * (((v462 ^ 0x8FD51986) + 346783423) ^ ((v462 ^ 0x80C3C3AB) + 465413268) ^ ((v462 ^ 0x51EB2894) - 896184403)) - 587087638;
  v465 = 75645508 - 1275747657 * (((v453 ^ 0xCD9EE48B) + 913656102) ^ ((v453 ^ 0xFCF62352) + 119377661) ^ ((v453 ^ 0x79C165F7) - 2111125414)) + v463 + 1669;
  v466 = -2012396475 * (((v457 ^ 0xB6585441) - 518653159) ^ ((v457 ^ 0xB49834E1) - 472540231) ^ ((v457 ^ 0xE68F3CFB) - 1312648285));
  v467 = v466 + 142651693 + v464;
  v468 = v465 + v464;
  v469 = -738865895 - v466 + v463 + v468 + 1179;
  v467 += 772;
  v470 = v467 + v465 + 142757544;
  v471 = v468 ^ v469 ^ ((v469 ^ 0x379C1B5E) + 336945477) ^ ((v469 ^ 0x26B039A8) + 87638963) ^ ((v469 ^ 0x32A5C8EC) + 288142071) ^ ((v469 ^ 0xFFFF6FFF) - 596240922) ^ 0x71764BB4;
  v472 = ((v470 ^ 0xB61AD4E6) + 1097295282) ^ v470 ^ ((v470 ^ LODWORD(STACK[0x53C8])) + 1575096516) ^ ((v470 ^ 0xEBF9C03C) + 478441836) ^ ((v470 ^ 0xFFFEFBE6) + 142822066) ^ v471;
  v473 = ((v472 ^ 0xE89912F4) + 1050376203) ^ ((v472 ^ 0x23BDB945) - 171977796) ^ ((v472 ^ 0x6EA62B48) - 1197194825);
  v474 = v451 - v473 + 467352046;
  v475 = v469 - v473 + 1521539854;
  v476 = ((v474 ^ 0x8159991E) + 1743960630) ^ v474 ^ ((v474 ^ 0x6ABE872) - 536818854) ^ ((v474 ^ 0xE1495347) + 132280429) ^ ((v474 ^ LODWORD(STACK[0x53C0])) - 1723540011);
  v477 = v467 + v470 - 1271056145 + v475;
  v478 = (v477 ^ 0x7F51A17E) & (2 * (v477 & 0x7F9A017E)) ^ v477 & 0x7F9A017E;
  v479 = ((2 * (v477 ^ 0x8071A156)) ^ 0xFFD74050) & (v477 ^ 0x8071A156) ^ (2 * (v477 ^ 0x8071A156)) & 0xFFEBA028;
  v480 = (v479 ^ 0xFFC00007) & (4 * v478) ^ v478;
  v481 = ((4 * (v479 ^ 0x28A028)) ^ 0xFFAE80A0) & (v479 ^ 0x28A028) ^ (4 * (v479 ^ 0x28A028)) & 0xFFEBA028;
  v482 = (v481 ^ 0xFFAA8020) & (16 * v480) ^ v480;
  v483 = ((16 * (v481 ^ 0x412008)) ^ 0xFEBA0280) & (v481 ^ 0x412008) ^ (16 * (v481 ^ 0x412008)) & 0xFFEBA020;
  v484 = v482 ^ 0xFFEBA028 ^ (v483 ^ 0xFEAA0000) & (v482 << 8);
  v485 = v477 ^ (2 * ((v484 << 16) & 0x7FEB0000 ^ v484 ^ ((v484 << 16) ^ 0x20280000) & (((v483 ^ 0x141A028) << 8) & 0x7FEB0000 ^ 0x144B0000 ^ (((v483 ^ 0x141A028) << 8) ^ 0x6BA00000) & (v483 ^ 0x141A028))));
  v486 = v458 - v475 + 1157650944;
  v487 = ((v471 ^ 0x5906B207 ^ v485) & 0xB49D0879 ^ 0x936D4DE1) & ((v471 ^ 0x5906B207 ^ v485) & 0x4B62F786 ^ LODWORD(STACK[0x5450])) | (v471 ^ 0x5906B207 ^ v485) & 0x4802B206;
  v488 = v455 - (((v485 ^ 0x686B06D5) - 829273298) ^ ((v485 ^ 0xCA8F2406) + 1819699711) ^ ((v485 ^ 0x62F963FD) - 1006621178)) - 225724756;
  v489 = ((v488 ^ 0xBB9AE6EB) + 582044007) ^ v488 ^ ((v488 ^ 0xBF1BD434) + 640711610) ^ ((v488 ^ 0x1DAA9902) - 2071906672) ^ ((v488 ^ 0x7FFFFBAF) - 422292445);
  v490 = v460 - (((v487 ^ 0xDF0FCD48) - 1312337030) ^ ((v487 ^ 0x91FB3B7) + 1742155143) ^ ((v487 ^ 0x71660B66) + 531535192)) + 1528539269;
  v491 = (v490 ^ 0x57D82A9F) & (2 * (v490 & 0x87DA0ADE)) ^ v490 & 0x87DA0ADE;
  v492 = ((2 * (v490 ^ 0x5D683B07)) ^ 0xB56463B2) & (v490 ^ 0x5D683B07) ^ (2 * (v490 ^ 0x5D683B07)) & 0xDAB231D8;
  v493 = v492 ^ 0x4A921049;
  v494 = (v492 ^ 0x50222191) & (4 * v491) ^ v491;
  v495 = ((4 * v493) ^ 0x6AC8C764) & v493 ^ (4 * v493) & 0xDAB231D8;
  v496 = (v495 ^ 0x4A800159) & (16 * v494) ^ v494;
  v497 = ((16 * (v495 ^ 0x90323099)) ^ 0xAB231D90) & (v495 ^ 0x90323099) ^ (16 * (v495 ^ 0x90323099)) & 0xDAB231D0;
  v498 = v496 ^ 0xDAB231D9 ^ (v497 ^ 0x8A221149) & (v496 << 8);
  v499 = v490 ^ (2 * ((v498 << 16) & 0x5AB20000 ^ v498 ^ ((v498 << 16) ^ 0x31D90000) & (((v497 ^ 0x50902049) << 8) & 0x5AB20000 ^ 0x48820000 ^ (((v497 ^ 0x50902049) << 8) ^ 0x32310000) & (v497 ^ 0x50902049))));
  v500 = STACK[0x5560];
  v501 = (v499 ^ 0x139E696Cu) >> (v500 & 0x10 ^ 0x10) >> 8 >> (v500 & 0x10);
  v502 = *(STACK[0x5480] + 4 * (BYTE2(v489) ^ 0xD4u)) ^ *(STACK[0x5410] + 4 * HIBYTE(v486)) ^ *(STACK[0x5408] + 4 * (v476 ^ 0xD4u)) ^ *(STACK[0x5440] + 4 * (BYTE1(v499) ^ 0x69u));
  v503 = (v502 & 0x925230A2 ^ 0x8040926C) & (v502 & 0x6DADCF5D ^ 0xDA7FFAA3) | v502 & 0x6DAD4D11;
  v504 = LODWORD(STACK[0x53B8]) ^ *(STACK[0x5410] + 4 * (HIBYTE(v489) ^ 0x66)) ^ *(STACK[0x5408] + 4 * v486) ^ *(STACK[0x5440] + 4 * (BYTE1(v476) ^ 0xDCu)) ^ *(STACK[0x5480] + 4 * (BYTE2(v499) ^ 0x9Eu));
  v505 = LODWORD(STACK[0x53B8]) ^ *(STACK[0x5480] + 4 * BYTE2(v486)) ^ *(STACK[0x5410] + 4 * (HIBYTE(v476) ^ 0x19)) ^ *(STACK[0x5440] + 4 * (BYTE1(v489) ^ 0x50u)) ^ *(STACK[0x5408] + 4 * (v499 ^ 0x6Cu));
  v506 = LODWORD(STACK[0x53B8]) ^ *(STACK[0x5440] + 4 * BYTE1(v486)) ^ *(STACK[0x5408] + 4 * (v489 ^ 0x72u));
  v507 = *(STACK[0x5480] + 4 * (BYTE2(v476) ^ 0x54u));
  v508 = LODWORD(STACK[0x53B8]) ^ v503;
  v509 = v506 ^ v507 ^ *(STACK[0x5410] + 4 * v501);
  v510 = STACK[0x5540];
  v511 = STACK[0x5710];
  *(v511 + LODWORD(STACK[0x55B0])) = *(*(&off_101353600 + LODWORD(STACK[0x5540]) - 11510) + (HIBYTE(v508) ^ 0x77)) ^ ((HIBYTE(v508) ^ 0x5A) + 54) ^ 0xC;
  *(v511 + LODWORD(STACK[0x55E0])) = *(*(&off_101353600 + (v510 ^ 0x378B)) + (HIBYTE(v505) ^ 0x8DLL) - 8) ^ 0x8A ^ (*(*(&off_101353600 + (v510 ^ 0x378B)) + (HIBYTE(v505) ^ 0x8DLL) - 8) >> 2) & 0x2C;
  v512 = *(*(&off_101353600 + (v510 ^ 0x31CB)) + (v504 ^ 0xD3) - 4);
  *(v511 + LODWORD(STACK[0x56C0])) = (((((v512 >> 6) | (4 * v512)) ^ 0xDE) >> 2) | ((((v512 >> 6) | (4 * v512)) ^ 0xDE) << 6)) ^ 0xAD;
  *(v511 + LODWORD(STACK[0x5580])) = ((((v504 ^ 0x38EFB32Eu) >> 24) ^ 0x5D) - 85) ^ *(*(&off_101353600 + (v510 ^ 0x3682)) + (((v504 ^ 0x38EFB32Eu) >> 24) ^ 0xD0) - 4) ^ 8;
  *(v511 + LODWORD(STACK[0x5630])) = ((v504 ^ 0xB32E) >> 8) ^ 0x39 ^ *(*(&off_101353600 + (v510 ^ 0x312B)) + (((v504 ^ 0xB32E) >> 8) ^ 0xAALL) - 8);
  *(v511 + LODWORD(STACK[0x55A0])) = (83 * *(*(&off_101353600 + (v510 ^ 0x32CD)) + (BYTE1(v508) ^ 0x6ELL) - 8)) ^ 0xDE;
  v513 = *(*(&off_101353600 + v510 - 11527) + (HIBYTE(v509) ^ 0xA5));
  *(v511 + LODWORD(STACK[0x5670])) = v513 ^ (v513 >> 4) ^ (v513 >> 2) ^ 0x60;
  *(v511 + LODWORD(STACK[0x5590])) = *(*(&off_101353600 + v510 - 12348) + (BYTE1(v505) ^ 0xBELL)) ^ 0x9E;
  v514 = v505 ^ 0x231DC7B6;
  v515 = (v505 ^ 0x231DC7B6) + 791779763;
  if ((v505 ^ 0x231DC7B6) < 0xD0CE664D)
  {
    v515 = v505 ^ 0x231DC7B6;
  }

  if (v514 >= 0xD0CE664D)
  {
    v516 = 77;
  }

  else
  {
    v516 = 0;
  }

  if (!v515)
  {
    LOBYTE(v514) = v516;
  }

  *(v511 + LODWORD(STACK[0x5600])) = (107 * *(*(&off_101353600 + (v510 ^ 0x30F5)) + (BYTE2(v504) ^ 0x3DLL) - 12)) ^ 0x8B;
  HIDWORD(v517) = (((BYTE2(v505) ^ 0x37u) >> (STACK[0x5550] & 4) >> (STACK[0x5550] & 4 ^ 5)) | ((HIWORD(v505) ^ 0xF797) << 27)) ^ 0xD9919E68;
  LODWORD(v517) = HIDWORD(v517);
  v518 = *(*(&off_101353600 + v510 - 12024) + ((v517 >> 27) ^ 0x3233CD93) - 8);
  *(v511 + LODWORD(STACK[0x55D0])) = (32 * v518) ^ (33 * v518) ^ 0x70;
  *(v511 + LODWORD(STACK[0x55C0])) = v508 ^ 0xBC ^ *(*(&off_101353600 + (v510 ^ 0x3203)) + (v508 ^ 4) - 8);
  *(v511 + LODWORD(STACK[0x56D0])) = (*(*(&off_101353600 + v510 - 12483) + (BYTE2(v509) ^ 0xA5)) + 44) ^ 0xA0;
  v519 = *(*(&off_101353600 + v510 - 11895) + (v509 ^ 0x22) - 12);
  if (((v519 + 20) & 0x10) != 0)
  {
    v520 = 68;
  }

  else
  {
    v520 = 100;
  }

  *(v511 + LODWORD(STACK[0x56F0])) = (v520 + v519) ^ 0xA6;
  *(v511 + LODWORD(STACK[0x56E0])) = *(*(&off_101353600 + v510 - 12228) + (v514 ^ 0x4ELL) - 12) ^ 0x18;
  v521 = (((v500 ^ 0xA35630C4) + 1554632508) ^ ((v500 ^ 0xEE3A75E5) + 298158619) ^ ((v500 ^ 0x870F99BB) + 2029020741)) - 293710415;
  v522 = ((v521 ^ 0x5D6923E7) - 2037603040) ^ v521 ^ ((v521 ^ 0x95FA557B) + 1310708612) ^ ((v521 ^ 0x97E6F824) + 1275297501) ^ ((v521 ^ 0x7B6FF7BF) - 1601539768);
  *(v511 + LODWORD(STACK[0x5680])) = *(*(&off_101353600 + v510 - 12296) + (BYTE1(v509) ^ 0x35)) ^ 0xA9;
  *(v511 + LODWORD(STACK[0x5650])) = BYTE2(v508) ^ 0x23 ^ *(*(&off_101353600 + (v510 ^ 0x3363)) + (BYTE2(v508) ^ 0xE1) - 4);
  v523 = (((v522 ^ 0x5387DFFC) + 1107395999) ^ ((v522 ^ 0x61167591) + 1888497652) ^ ((v522 ^ 0x168BD36A) + 118327561)) + 997964950;
  v524 = LODWORD(STACK[0x5570]) ^ (v523 < 0x7117DFFC);
  v525 = v523 < LODWORD(STACK[0x5700]);
  if (v524)
  {
    v525 = STACK[0x5570];
  }

  return (*(STACK[0x57D8] + 8 * ((107 * (v525 ^ 1)) ^ v510)))();
}

uint64_t sub_1001493CC@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 592) = a1;
  *(v2 + 600) = (v1 - 1723134898) ^ (1917435887 * ((2 * (v3 & 0x71F61930) - v3 + 235529934) ^ 0xE8B2BDC8));
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v1 + 8051)))(v4 - 240);
  return (*(v5 + 8 * v1))(v6);
}

uint64_t sub_100149450@<X0>(char a1@<W3>, char a2@<W4>, char a3@<W6>, char a4@<W7>, unsigned int a5@<W8>)
{
  STACK[0x4E98] = v15;
  v16 = v5 ^ 0x1589C;
  LODWORD(STACK[0x40B0]) = LODWORD(STACK[0x53F8]) | LODWORD(STACK[0x53B0]);
  v17 = v12 & 0xDA ^ 0x3B;
  LODWORD(STACK[0x55D0]) = v12 ^ (2 * ((v12 ^ a5) & (2 * ((v12 ^ a5) & (2 * ((v12 ^ a5) & (2 * ((v12 ^ a5) & (2 * ((v12 ^ a5) & (2 * ((v12 ^ a5) & 0x3E ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17));
  v18 = v11 & 0x28 ^ 0x22;
  v19 = v10 & 0xE8 ^ 0x82;
  v20 = (((v10 ^ (2 * ((v10 ^ a5) & (2 * ((v10 ^ a5) & (2 * ((v10 ^ a5) & (2 * ((v10 ^ a5) & (2 * ((v10 ^ 0x44) & (2 * v19) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19))) ^ 0xE8) << 8) | (((v11 ^ (2 * ((v11 ^ a5) & (2 * ((v11 ^ a5) & (2 * ((v11 ^ a5) & (2 * ((v11 ^ a5) & (2 * (((2 * v18) & 0x44 | v18) ^ (2 * v18) & v11)) ^ v18)) ^ v18)) ^ v18)) ^ v18))) ^ 0x28) << 16);
  v21 = a4 & 0xE6 ^ 0x81;
  v22 = (((a4 ^ (2 * ((a4 ^ a5) & (2 * ((a4 ^ a5) & (2 * ((a4 ^ a5) & (2 * ((a4 ^ a5) & (2 * ((a4 ^ a5) & (2 * (a4 & (2 * v21) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21))) ^ v13) & ~v20 | v20 & 0x10CF00) << 8;
  LODWORD(STACK[0x55A0]) = v22 ^ 0x4D40FF;
  LODWORD(STACK[0x4B90]) = v22 & 0x3AB21C00;
  v23 = *STACK[0x5740];
  v24 = v23 & 0xFA ^ 0xFFFFFF8B;
  LODWORD(STACK[0x53F8]) = v23 ^ (2 * ((v23 ^ a5) & (2 * ((v23 ^ a5) & (2 * ((v23 ^ a5) & (2 * ((v23 ^ a5) & (2 * ((v23 ^ a5) & (2 * (v24 ^ v23 & 0x1E)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24));
  v25 = *(v14 + 4000);
  STACK[0x4A90] = (v25 + 39822);
  v26 = v25[39822];
  STACK[0x5168] = (v25 + 35420);
  v27 = v25[35420];
  STACK[0x5298] = (v25 + 37744);
  v28 = v25[37744];
  LOBYTE(v23) = v28 & 0xD8 ^ 0xBA;
  v29 = (((v26 ^ (2 * (((2 * (((2 * (((2 * (((2 * v26) & 0x48 | 0x24) & (v26 ^ 0x24))) ^ 0x2C) & (v26 ^ 0x24))) ^ 0x2C) & (v26 ^ 0x24))) ^ 0x2C) & (v26 ^ a5)))) ^ 0x2C) << 8) | (((v28 ^ (2 * ((v28 ^ a5) & (2 * ((v28 ^ a5) & (2 * ((v28 ^ a5) & (2 * ((v28 ^ a5) & (2 * ((v28 ^ a5) & (2 * v23) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23))) ^ 0xD8) << 16);
  v30 = v27 & 0xBA ^ 0xEB;
  v31 = (((v27 ^ (2 * ((v27 ^ a5) & (2 * ((v27 ^ a5) & (2 * ((v27 ^ a5) & (2 * ((v27 ^ a5) & (2 * ((v27 ^ a5) & (2 * (v30 ^ v27 & 0x1E)) ^ v30)) ^ v30)) ^ v30)) ^ v30)) ^ v30))) ^ 0x89CD55) & ~v29 | v29 & 0x763200) << 8;
  LODWORD(STACK[0x53C0]) = v31 ^ 0x162010FF;
  LODWORD(STACK[0x4DC8]) = v31 & 0x6116AC00;
  v32 = *STACK[0x5650];
  STACK[0x53C8] = (v25 + 38992);
  v33 = *STACK[0x5590];
  v34 = v33 & 0x3C ^ 0xAC;
  v35 = (v33 ^ (2 * ((v33 ^ a5) & (2 * ((v33 ^ a5) & (2 * ((v33 ^ a5) & (2 * ((v33 ^ a5) & (2 * v34) ^ v34)) ^ v34)) ^ v34)) ^ v34))) ^ 0x3C;
  v36 = v35 >> 2;
  v35 <<= 8;
  v37 = *STACK[0x5760];
  v38 = v37 & 0xC2 ^ 0x37;
  v39 = ((v37 ^ (2 * ((v37 ^ a5) & (2 * ((v37 ^ a5) & (2 * ((v37 ^ a5) & (2 * ((v37 ^ a5) & (2 * ((v37 ^ a5) & (2 * ((v37 ^ a5) & 0x26 ^ v38)) ^ v38)) ^ v38)) ^ v38)) ^ v38)) ^ v38))) ^ 0xC3BF) & (v35 ^ 0xEBFF) & 0xFFFFC3FF | ((v36 & 0xF) << 10);
  LOBYTE(v36) = v32 & 0x24 ^ 0x20;
  v40 = (((v32 ^ (2 * ((v32 ^ a5) & (2 * ((v32 ^ a5) & (2 * ((v32 ^ a5) & (2 * ((v32 ^ a5) & (2 * v36) | v36)) ^ v36)) ^ v36)) ^ v36))) ^ 0x24) << 8) | (v39 << 16);
  LOBYTE(v36) = *STACK[0x5368];
  v41 = v36 & 0x9E ^ 0xDD;
  LODWORD(STACK[0x53B8]) = v40 ^ 0x3C8213FF;
  LODWORD(STACK[0x4B88]) = v40 & 0xC368EC00;
  LOBYTE(v40) = *STACK[0x5068];
  v42 = v40 & a2 ^ a3;
  v43 = v40 ^ (2 * ((v40 ^ a5) & (2 * ((v40 ^ a5) & (2 * ((v40 ^ a5) & (2 * ((v40 ^ a5) & (2 * ((v40 ^ a1) & (2 * v42) ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42));
  LOBYTE(v40) = *STACK[0x5358];
  v44 = v40 & 0xB2 ^ 0xEF;
  v45 = (((v36 ^ (2 * ((v36 ^ a5) & (2 * ((v36 ^ a5) & (2 * ((v36 ^ a5) & (2 * ((v36 ^ a5) & (2 * ((v36 ^ a5) & (2 * (v41 ^ v36 & 0x3A)) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ v41))) ^ 0x9E) << 16) | (v43 << 8);
  v46 = (v45 ^ 0xCA06FF) & ((v40 ^ (2 * ((v40 ^ a5) & (2 * ((v40 ^ a5) & (2 * ((v40 ^ a5) & (2 * ((v40 ^ a5) & (2 * ((v40 ^ a5) & (2 * (v44 ^ v40 & 0x16)) ^ v44)) ^ v44)) ^ v44)) ^ v44)) ^ v44))) ^ 0xCAA6E8) | v45 & 0x355900;
  STACK[0x4E90] = (v25 + 39740);
  LOBYTE(v40) = v25[39740];
  v47 = v40 & 0x88 | 0x52;
  LOBYTE(v40) = v40 ^ (2 * ((v40 ^ a5) & (2 * ((v40 ^ a5) & (2 * ((v40 ^ a5) & (2 * ((v40 ^ a5) & (2 * ((v40 ^ a5) & (2 * v47) ^ v47)) ^ v47)) ^ v47)) ^ v47)) ^ v47));
  STACK[0x4B08] = (v25 + 38243);
  v48 = v25[38243];
  v49 = v48 & 0x72 ^ 0xCF;
  v50 = v48 ^ (2 * ((v48 ^ a5) & (2 * ((v48 ^ a5) & (2 * ((v48 ^ a5) & (2 * ((v48 ^ a5) & (2 * ((v48 ^ a5) & (2 * (v49 ^ v48 & 0x16)) ^ v49)) ^ v49)) ^ v49)) ^ v49)) ^ v49));
  v51 = *STACK[0x5560];
  v52 = v51 & 0xA4 ^ 0x60;
  v53 = *STACK[0x5350];
  v54 = v53 & 0x6C ^ 0xC4;
  v55 = (((v53 ^ (2 * ((v53 ^ a5) & (2 * ((v53 ^ a5) & (2 * ((v53 ^ a5) & (2 * ((v53 ^ a5) & (2 * v54) ^ v54)) ^ v54)) ^ v54)) ^ v54))) ^ 0x6C) << 8) | (((v51 ^ (2 * ((v51 ^ a5) & (2 * ((v51 ^ a5) & (2 * ((v51 ^ a5) & (2 * ((v51 ^ a5) & (2 * v52) ^ v52)) ^ v52)) ^ v52)) ^ v52))) ^ 0xA4) << 16);
  LODWORD(STACK[0x4B80]) = (((v50 ^ 0x51AFB0) & ~v55 | v55 & 0xAE5000) << 8) & 0xA72B7F00;
  LOBYTE(v55) = *STACK[0x53A0];
  v56 = v55 & 0x56 ^ 0x79;
  LOBYTE(v55) = v55 ^ (2 * ((v55 ^ a5) & (2 * ((v55 ^ a5) & (2 * ((v55 ^ a5) & (2 * ((v55 ^ a5) & (2 * ((v55 ^ a5) & (2 * (v56 ^ v55 & 0x32)) ^ v56)) ^ v56)) ^ v56)) ^ v56)) ^ v56));
  v57 = (v25 + 39906);
  v58 = *STACK[0x4FA8];
  v59 = v58 & 0x2A ^ 0xA3;
  v60 = (v58 ^ a5) & (2 * ((v58 ^ a5) & (2 * ((v58 ^ a5) & (2 * ((v58 ^ a5) & (2 * ((v58 ^ a1) & (2 * ((v58 ^ a1) & 0xE ^ v59)) ^ v59)) ^ v59)) ^ v59)) ^ v59)) ^ v59;
  STACK[0x5078] = (v25 + 36083);
  v61 = v25[36083];
  LOBYTE(v25) = (v61 & 0xE4 | 0x18) ^ v61 & 0xF0;
  v62 = (v61 ^ (2 * ((v61 ^ a5) & (2 * ((v61 ^ a5) & (2 * ((v61 ^ a5) & (2 * ((v61 ^ a5) & (2 * ((v61 ^ a5) & (2 * v25) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25))) << 8;
  STACK[0x4A88] = v57;
  LOBYTE(v24) = *v57 & 0x34 ^ a2;
  LOBYTE(v25) = *v57 ^ (2 * ((*v57 ^ a5) & (2 * ((*v57 ^ a5) & (2 * ((*v57 ^ a5) & (2 * ((*v57 ^ a5) & (2 * v24) ^ v24)) ^ v24)) ^ v24)) ^ v24));
  v63 = (((v62 & 0xFF00FFFF | (((v58 ^ (2 * v60)) ^ 0x2A) << 16)) ^ 0x3BE1FF) & (v55 ^ 0x3BF545) | v62 & 0xA00 | (((v58 ^ (2 * v60)) ^ 0x2A) << 16) & 0xC40A00) << 8;
  v64 = v63 ^ 0x8000A0FF;
  LODWORD(STACK[0x4D98]) = v63 & 0x45FF4C00;
  LOBYTE(v63) = *STACK[0x52F8];
  v65 = v63 & 0xC4 ^ 0xB0;
  v66 = v62 & 0xFF00FFFF | (((v63 ^ (2 * ((v63 ^ a5) & (2 * ((v63 ^ a5) & (2 * ((v63 ^ a5) & (2 * ((v63 ^ a5) & (2 * v65) ^ v65)) ^ v65)) ^ v65)) ^ v65))) ^ 0xC4) << 16);
  LOBYTE(v63) = *STACK[0x4FD0];
  v67 = v63 & 0xEC ^ 4;
  v68 = (((v63 ^ (2 * ((v63 ^ a5) & (2 * ((v63 ^ a5) & (2 * ((v63 ^ a5) & (2 * ((v63 ^ a5) & (2 * ((v63 ^ a5) & (2 * v67) ^ v67)) ^ v67)) ^ v67)) ^ v67)) ^ v67))) ^ 0xE1620D) & ~v66 | v66 & 0x1E9D00) << 8;
  v69 = v68 ^ 0xA0008FFu;
  LODWORD(STACK[0x4B78]) = v68 & 0x149D3600;
  LOBYTE(v68) = *STACK[0x4FE8];
  v70 = v68 & 0x8E ^ 0x55;
  v71 = *STACK[0x5730];
  LOBYTE(v57) = v71 & 0xE ^ 0x15;
  LOBYTE(v31) = *STACK[0x5008];
  LOBYTE(v24) = v31 & 0x8E ^ 0x55;
  v72 = v31 ^ a5;
  LOBYTE(v68) = v68 ^ (2 * ((v68 ^ a5) & (2 * ((v68 ^ a5) & (2 * ((v68 ^ a5) & (2 * ((v68 ^ a5) & (2 * ((v68 ^ a5) & (2 * (v70 ^ v68 & 0xAA)) ^ v70)) ^ v70)) ^ v70)) ^ v70)) ^ v70));
  LODWORD(STACK[0x4C68]) = (((((v68 ^ 0x8E) << 16) & 0xD10000 | (((v31 ^ (2 * (v72 & (2 * (v72 & (2 * (v72 & (2 * (v72 & (2 * (v72 & (2 * (v24 ^ v31 & 0xAA)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24))) ^ 0x8E) << 8)) + (((v71 ^ (2 * ((v71 ^ a5) & (2 * ((v71 ^ a5) & (2 * ((v71 ^ a5) & (2 * ((v71 ^ a5) & (2 * ((v71 ^ a5) & (2 * (v57 ^ v71 & 0xAA)) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57))) ^ 0x2E0093) & ~((v68 ^ 0x8E) << 16))) << 8) & 0x8F33E400;
  LOBYTE(v68) = *STACK[0x54E0];
  v73 = v68 & 0x92 ^ 0xDF;
  v74 = ((v68 ^ (2 * ((v68 ^ a5) & (2 * ((v68 ^ a5) & (2 * ((v68 ^ a5) & (2 * ((v68 ^ a5) & (2 * ((v68 ^ a5) & (2 * ((v68 ^ a5) & 0x36 ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ v73))) ^ 0x1EEC) & (v35 ^ 0x3EFF) | v35 & 0xFFFFE1FF;
  v75 = *STACK[0x4F40];
  v76 = v75 & 0x58 ^ 0xFA;
  v77 = (((v75 ^ (2 * ((v75 ^ a5) & (2 * ((v75 ^ a5) & (2 * ((v75 ^ a5) & (2 * ((v75 ^ a5) & (2 * ((v75 ^ a5) & (2 * v76) ^ v76)) ^ v76)) ^ v76)) ^ v76)) ^ v76))) ^ 0x58) << 8) | (v74 << 16);
  v78 = v77 ^ 0x41804AFFu;
  LODWORD(STACK[0x4B70]) = v77 & 0xB82FB500;
  v79 = *STACK[0x5370];
  LOBYTE(v24) = v79 & 0xCE ^ 0x35;
  v80 = v79 ^ a5;
  v81 = *STACK[0x5030];
  v82 = v81 & v6 ^ v7;
  v83 = ((v81 ^ (2 * ((v81 ^ a5) & (2 * ((v81 ^ a5) & (2 * ((v81 ^ a5) & (2 * ((v81 ^ a5) & (2 * ((v81 ^ a5) & (2 * ((v81 ^ a5) & v8 ^ v82)) ^ v82)) ^ v82)) ^ v82)) ^ v82)) ^ v82)) ^ v9) << 8) | (((v79 ^ (2 * (v80 & (2 * (v80 & (2 * (v80 & (2 * (v80 & (2 * (v80 & (2 * (v24 ^ v79 & 0xAA)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24))) ^ 0xCE) << 16);
  LOBYTE(v79) = *STACK[0x5390];
  v84 = v79 & 0x70 ^ 0xCE;
  LODWORD(STACK[0x4BA8]) = (v46 << 8) & 0x4600A900;
  LODWORD(STACK[0x4DA8]) = ((((v79 ^ (2 * ((v79 ^ a5) & (2 * ((v79 ^ a5) & (2 * ((v79 ^ a5) & (2 * ((v79 ^ a5) & (2 * ((v79 ^ a5) & (2 * v84) ^ v84)) ^ v84)) ^ v84)) ^ v84)) ^ v84))) ^ 0xD8AD11) & ~v83 | v83 & 0x275200) << 8) & 0x4C0E1600;
  return (*(STACK[0x57D8] + 8 * v16))(0x3BCBADC7F10D149, &STACK[0xEED0], v80, v64, v69, v25, v40, v78);
}

uint64_t sub_10014A390(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v8 = *(*(v7 + 1360) + a5 - 35072 * (a4 / 0x2240));
  *(*(v7 + 1368) + a2 % ((a6 - 6380) ^ 0x4D1Eu)) = (((v8 ^ 9) - 49) ^ ((v8 ^ 0x1E) - 38) ^ ((v8 ^ 0xF1) + 55)) + 42;
  return (*(STACK[0x57D8] + 8 * ((29 * (v6 == 0)) | a6)))(a1, a2 + 5621, a3, a4 + 6419, a5 + 25676);
}

uint64_t sub_10014A4A8(uint64_t a1, int a2, int a3, char a4, uint64_t a5)
{
  v5 = (a5 << 56) | ((a4 - 46) << 48);
  v6 = 0xEAD4BE90FB72B443;
  if (a2)
  {
    v6 = 0xEAD4BE8EFB72B443;
  }

  v7 = v5 + v6 + ((((a3 - 951) | 0x100u) ^ 0xD5A8000000004180) & (2 * v5) ^ 0xFFFFFFFDFFFFFFFFLL);
  v8 = *STACK[0x4170];
  *STACK[0x4170] = v8 + 1;
  v9 = v8 & 0x3F;
  if (v9 <= 0x1B)
  {
    v10 = (STACK[0x4C10] + 8 * v9);
  }

  else
  {
    v10 = (8 * v9 + STACK[0x4C08] - 224);
  }

  *v10 = v7;
  return (*(STACK[0x57D8] + 8 * ((77 * (a2 ^ 1)) ^ a3)))();
}

uint64_t sub_10014A55C()
{
  if (STACK[0x6630])
  {
    v0 = LODWORD(STACK[0xBFF4]) == (((LODWORD(STACK[0x373C]) - 5652) | 0x310A) ^ 0x317A);
  }

  else
  {
    v0 = 0;
  }

  v1 = !v0;
  return (*(STACK[0x57D8] + 8 * ((v1 * (LODWORD(STACK[0x373C]) ^ 0x16C0)) ^ LODWORD(STACK[0x373C]))))();
}

uint64_t sub_10014A828()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x613D)))();
  STACK[0xA1E0] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10014A890@<X0>(int a1@<W0>, int a2@<W1>, unint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, unsigned int a7@<W6>, int a8@<W7>, int a9@<W8>)
{
  LODWORD(STACK[0x52F0]) = v13;
  LODWORD(STACK[0x5128]) = 0;
  v25 = v11 + v12;
  LODWORD(STACK[0x5398]) = a2 | a5;
  LODWORD(STACK[0x54F0]) = a8 ^ v16;
  v27 = (v13 + 963159823);
  v26 = v13 == -963159823;
  v28 = STACK[0x55E0];
  v29 = (v23 >> (v13 + 15)) ^ (v23 << STACK[0x55E0]);
  v30 = STACK[0x5380];
  v31 = (v30 >> v27) ^ (v30 << STACK[0x55E0]);
  v32 = STACK[0x56F0];
  v33 = (a3 >> v27) ^ (a3 << STACK[0x56F0]);
  if (v26)
  {
    v33 = a3;
  }

  LODWORD(STACK[0x52F8]) = v33;
  v34 = (v14 >> v27) + (v14 << v28);
  if (v26)
  {
    v34 = v14;
  }

  LODWORD(STACK[0x5308]) = v34;
  v35 = STACK[0x5310];
  v36 = (STACK[0x5300] >> v27) | (STACK[0x5300] << v28);
  v37 = ((v35 >> v27) ^ (v35 << v32)) + 2 * ((v35 >> v27) & (v35 << v32));
  if (v26)
  {
    v36 = STACK[0x5300];
  }

  LODWORD(STACK[0x53D8]) = v36;
  if (v26)
  {
    v37 = v35;
  }

  LODWORD(STACK[0x5408]) = v37;
  v38 = (STACK[0x5328] >> v27) ^ (STACK[0x5328] << v32);
  if (v26)
  {
    v38 = STACK[0x5328];
  }

  LODWORD(STACK[0x5410]) = v38;
  if (!v28)
  {
    v31 = v30;
  }

  LODWORD(STACK[0x5328]) = v31;
  if (!v28)
  {
    v29 = v23;
  }

  LODWORD(STACK[0x5380]) = v29;
  v39 = (STACK[0x5338] >> v27) ^ (STACK[0x5338] << v32);
  if (!v27)
  {
    v39 = STACK[0x5338];
  }

  LODWORD(STACK[0x52E8]) = v39;
  v40 = (STACK[0x5370] >> v27) ^ (STACK[0x5370] << v28);
  if (!v27)
  {
    v40 = STACK[0x5370];
  }

  LODWORD(STACK[0x5310]) = v40;
  v41 = (v17 >> v27) | (v17 << v32);
  if (!v27)
  {
    v41 = v17;
  }

  LODWORD(STACK[0x5300]) = v41;
  v42 = (v19 >> v27) ^ (v19 << v32);
  if (!v27)
  {
    v42 = v19;
  }

  LODWORD(STACK[0x5370]) = v42;
  v43 = v27;
  v44 = (STACK[0x53C0] >> v27) + (STACK[0x53C0] << v32);
  if (!v27)
  {
    v44 = STACK[0x53C0];
  }

  LODWORD(STACK[0x5338]) = v44;
  v45 = v28;
  v46 = v28 == 0;
  if (v28)
  {
    v47 = (STACK[0x5340] >> v43) + (STACK[0x5340] << v28);
  }

  else
  {
    v47 = STACK[0x5340];
  }

  if (v46)
  {
    v48 = STACK[0x5368];
  }

  else
  {
    v48 = (STACK[0x5368] >> v43) + (STACK[0x5368] << v45);
  }

  v49 = (v24 >> v43) + (v24 << v45);
  if (v46)
  {
    v49 = v24;
  }

  LODWORD(STACK[0x5368]) = v49;
  v50 = (STACK[0x53A8] >> v43) | (STACK[0x53A8] << v45);
  if (v46)
  {
    v50 = STACK[0x53A8];
  }

  LODWORD(STACK[0x53A8]) = v50;
  v51 = (STACK[0x5390] >> v43) ^ (STACK[0x5390] << v45);
  if (v46)
  {
    v51 = STACK[0x5390];
  }

  LODWORD(STACK[0x53C0]) = v51;
  v52 = (v20 >> v43) | (v20 << v45);
  if (v46)
  {
    v52 = v20;
  }

  LODWORD(STACK[0x5470]) = v52;
  v53 = a1 + 545 * v15 - 1552 * ((2767376 * (a1 + 545 * v15)) >> 32);
  STACK[0x55B0] = v43;
  v54 = (v18 >> v43) | (v18 << v32);
  v55 = v32 == 0;
  v56 = v32;
  if (!v32)
  {
    v54 = v18;
  }

  v57 = STACK[0x5770];
  v58 = __ROR4__(*(STACK[0x5770] + 4 * a7), 16);
  v59 = *(STACK[0x5770] + 4 * (a1 + BYTE2(v21) * v9 - 1552 * ((2767376 * (a1 + BYTE2(v21) * v9)) >> 32)));
  v60 = a4 ^ v25 ^ a6 ^ v58 ^ v54 ^ __ROR4__(v59, 8) ^ *(STACK[0x5770] + 4 * v53);
  LODWORD(STACK[0x5390]) = (a1 + 545 * BYTE2(v60)) % ((v54 & 0x610 ^ 0x610) + (v54 & 0x610u));
  v61 = a1 + (LODWORD(STACK[0x55C0]) - 22069) * HIBYTE(v22);
  v62 = a1 + 545 * (LODWORD(STACK[0x52B0]) + 125);
  v63 = STACK[0x5740] & 0xABABABAA ^ 0xD65D5CDD;
  v64 = STACK[0x5650];
  v65 = STACK[0x57B0];
  v66 = (STACK[0x5760] & v63) << STACK[0x57B0];
  v67 = LODWORD(STACK[0x5260]) ^ v66 ^ ((STACK[0x5740] & LODWORD(STACK[0x4760]) ^ 0xC001005C ^ (LODWORD(STACK[0x5650]) ^ 0xF1C40392) & v63) >> STACK[0x5780]) ^ a4 ^ __ROR4__(STACK[0x5258], 8) ^ __ROR4__(*(v57 + 4 * (v61 % 0x610)), 16) ^ v47 ^ __ROR4__(*(v57 + 4 * (545 * v21 + 702505 - 1552 * ((2767376 * (545 * v21 + 702505)) >> 32))), 24);
  v68 = LODWORD(STACK[0x5110]) ^ 0x21A90B8A ^ (1128327247 * (~(v59 << 24) & 0xED0A729B | (v59 << 24) & 0xED000000));
  v69 = STACK[0x5780];
  v70 = STACK[0x5790];
  v71 = a4 ^ __ROR4__(STACK[0x5278], 16) ^ LODWORD(STACK[0x5268]) ^ __ROR4__(*(v57 + 4 * (545 * v10 + 702505 - 1552 * ((2767376 * (545 * v10 + 702505)) >> 32))), 8) ^ *(v57 + 4 * (v62 - 1552 * ((2767376 * v62) >> 32))) ^ LODWORD(STACK[0x52E8]) ^ (((v68 & STACK[0x53D0]) >> STACK[0x5780]) | ((v68 & STACK[0x5028]) << STACK[0x5790]));
  v72 = STACK[0x57C0];
  v73 = a4 ^ (v66 + ((STACK[0x5720] & v63) >> STACK[0x57C0])) ^ LODWORD(STACK[0x5288]) ^ LODWORD(STACK[0x5280]) ^ *(v57 + 4 * (545 * a9 + 702505 - 1552 * ((2767376 * (545 * a9 + 702505)) >> 32))) ^ v48 ^ LODWORD(STACK[0x5290]);
  if (v55)
  {
    v74 = STACK[0x53E0];
  }

  else
  {
    v74 = (STACK[0x53E0] >> v43) | (STACK[0x53E0] << v56);
  }

  LODWORD(STACK[0x53E0]) = 545 * v71 + 702505 - 1552 * ((2767376 * (545 * v71 + 702505)) >> 32);
  v75 = *(v57 + 4 * (545 * v60 + 702505 - 1552 * ((2767376 * (545 * v60 + 702505)) >> 32)));
  v76 = (((v75 >> 21) & 0xF8 | (v75 >> 29)) ^ 0xC5) + STACK[0x57A0];
  v77 = ((((*(v76 + 53120) ^ 0x7C) + 3) ^ ((*(v76 + 53120) ^ 0x33) + 78) ^ ((*(v76 + 53120) ^ 0x78) + 7)) + 26) | (v75 << 8);
  LOBYTE(v76) = v65;
  v78 = a4 ^ ((STACK[0x5158] << v65) | (STACK[0x5298] >> v72)) ^ STACK[0x5550] ^ LODWORD(STACK[0x53A0]) ^ STACK[0x51A8] ^ v74 ^ *(v57 + 4 * (545 * HIBYTE(v71) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v71) + 702505)) >> 32))) ^ __ROR4__(*(v57 + 4 * (545 * BYTE2(v67) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v67) + 702505)) >> 32))), 8) ^ v77 ^ __ROR4__(*(v57 + 4 * (545 * BYTE1(v73) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v73) + 702505)) >> 32))), 16);
  v79 = STACK[0x5700];
  v80 = a4 ^ (((v79 & 0x44747054 ^ 0x652605A ^ STACK[0x52A8] & (LODWORD(STACK[0x5660]) ^ 0x242AB6A8u)) << v70) + ((v79 & 0x94B474E4 ^ 0x169060E0 ^ STACK[0x52A8] & (v64 ^ 0x8650740A)) >> v69)) ^ LODWORD(STACK[0x5300]) ^ *(v57 + 4 * (545 * HIBYTE(v73) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v73) + 702505)) >> 32))) ^ __ROR4__(*(v57 + 4 * (545 * v67 + 702505 - 1552 * ((2767376 * (545 * v67 + 702505)) >> 32))), 24) ^ __ROR4__(*(v57 + 4 * LODWORD(STACK[0x5390])), 8) ^ __ROR4__(*(v57 + 4 * (545 * BYTE1(v71) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v71) + 702505)) >> 32))), 16);
  v81 = LODWORD(STACK[0x5310]) ^ ((STACK[0x5098] & 0x90147094 ^ 0x1A002A10 ^ (LODWORD(STACK[0x5660]) ^ 0xF848BC62) & STACK[0x50F0]) << v76) ^ ((STACK[0x5098] & 0x84947490 ^ 0xA80201A ^ (v64 ^ 0x9E707474) & STACK[0x50F0]) >> v72) ^ a4 ^ __ROR4__(*(v57 + 4 * LODWORD(STACK[0x53E0])), 24) ^ __ROR4__(*(v57 + 4 * (545 * BYTE2(v73) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v73) + 702505)) >> 32))), 8) ^ *(v57 + 4 * (545 * HIBYTE(v67) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v67) + 702505)) >> 32))) ^ __ROR4__(*(v57 + 4 * (545 * BYTE1(v60) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v60) + 702505)) >> 32))), 16);
  v82 = LODWORD(STACK[0x5368]) ^ a4 ^ (STACK[0x50A8] | ((STACK[0x5720] & LODWORD(STACK[0x50F0])) >> v72)) ^ __ROR4__(*(v57 + 4 * (545 * BYTE2(v71) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v71) + 702505)) >> 32))), 8) ^ __ROR4__(*(v57 + 4 * (545 * BYTE1(v67) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v67) + 702505)) >> 32))), 16) ^ __ROR4__(*(v57 + 4 * (545 * v73 + 702505 - 1552 * ((2767376 * (545 * v73 + 702505)) >> 32))), 24) ^ *(v57 + 4 * (545 * HIBYTE(v60) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v60) + 702505)) >> 32)));
  v83 = STACK[0x55F0];
  v84 = STACK[0x52E0];
  v85 = v64;
  v86 = LODWORD(STACK[0x5338]) ^ STACK[0x5060] ^ ((STACK[0x5740] & 0x10114948 ^ 0xA0924300 ^ (v64 ^ 0xA0764AA6) & STACK[0x5058]) >> v69) ^ a4 ^ (LODWORD(STACK[0x56D0]) - 963159823 + LODWORD(STACK[0x55F0]) + LODWORD(STACK[0x52E0]) - LODWORD(STACK[0x52F0]) + (*(v57 + 4 * (545 * HIBYTE(v78) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v78) + 702505)) >> 32))) ^ __ROR4__(*(v57 + 4 * ((545 * (((BYTE2(v81) ^ 0x965AD01F) + 1999698008) ^ ((BYTE2(v81) ^ 0xE4A9882E) + 96706663) ^ ((BYTE2(v81) ^ 0x72F35831) - 1818660742)) + 487257280) % 0x610)), 8) ^ __ROR4__(*(v57 + 4 * (545 * v82 + 702505 - 1552 * ((2767376 * (545 * v82 + 702505)) >> 32))), 24) ^ __ROR4__(*(v57 + 4 * (545 * BYTE1(v80) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v80) + 702505)) >> 32))), 16)));
  LODWORD(STACK[0x53E0]) = (545 * v86 + 702505) % (((v86 & 0x10) + (v86 & 0x10 ^ 0x10)) | 0x600);
  LOBYTE(v76) = v80 ^ *(STACK[0x57A0] + (v80 ^ 0x90u) + 87488);
  v87 = LODWORD(STACK[0x4890]) - 85 * (((v76 ^ 0x3F) - 33) ^ ((v76 ^ 0xDC) + 62) ^ ((v76 ^ 0xDF) + 63));
  v88 = 545 * v78 + 702505 - 1552 * ((2767376 * (545 * v78 + 702505)) >> 32);
  v89 = 545 * BYTE2(v80) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v80) + 702505)) >> 32);
  v90 = (545 * (((HIBYTE(v81) ^ 0x7634B09E) + 49036446) ^ ((HIBYTE(v81) ^ 0x5765A13C) + 599600448) ^ ((HIBYTE(v81) ^ 0x215111A2) + 1435082146)) + 1057530789) % 0x610u;
  LODWORD(STACK[0x5550]) = BYTE2(v78);
  v91 = (((v80 & 0x201 ^ 0x201) + (v80 & 0x201)) | 0x220) * (BYTE1(v82) + 1289);
  v92 = *(v57 + 4 * ((545 * (((BYTE1(v81) ^ 0xEE551E6) + 1516192331) ^ ((BYTE1(v81) ^ 0xAB94A65) + 1577277898) ^ ((BYTE1(v81) ^ 0x45C1B83u) + 1357252656)) - 1612262180) % 0x610));
  v93 = *(v57 + 4 * (v91 - 1552 * ((2767376 * v91) >> 32)));
  v94 = (v93 >> ((BYTE2(v92) & 0x10 ^ 0x10) + (BYTE2(v92) & 0x10u))) | (v93 << 16);
  v95 = *(v57 + 4 * (545 * HIBYTE(v82) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v82) + 702505)) >> 32))) ^ __ROR4__(v92, 16) ^ __ROR4__(*(v57 + 4 * ((545 * (((BYTE2(v78) ^ 0x6AA6EE83) + 1516369247) ^ ((BYTE2(v78) ^ 0xCB9CAB34) - 77877014) ^ ((BYTE2(v78) ^ 0xA13A45B7) - 1845666197)) + 673735819) % 0x610)), 8) ^ __ROR4__(*(v57 + 4 * (545 * v87 + 702505 - 1552 * ((2767376 * (545 * v87 + 702505)) >> 32))), 24);
  v96 = STACK[0x56F0];
  v97 = STACK[0x55B0];
  v98 = STACK[0x55B0] - LODWORD(STACK[0x5680]) + (LODWORD(STACK[0x5590]) ^ STACK[0x56F0] ^ __ROR4__(*(v57 + 4 * (545 * BYTE1(v78) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v78) + 702505)) >> 32))), 16) ^ *(v57 + 4 * (545 * HIBYTE(v80) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v80) + 702505)) >> 32))) ^ __ROR4__(*(v57 + 4 * ((545 * (((v81 ^ 0xD7B7097A) + 630742731) ^ ((v81 ^ 0x517C8194) - 1554786779) ^ ((v81 ^ 0x86CB88EE) + 1961156447)) + 1765869656) % 0x610)), 24) ^ __ROR4__(*(v57 + 4 * (545 * BYTE2(v82) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v82) + 702505)) >> 32))), 8));
  v99 = LODWORD(STACK[0x5500]) + STACK[0x55E0] - LODWORD(STACK[0x56C0]) + v83 + v84 - LODWORD(STACK[0x5590]) + v95;
  v100 = v79 & 0x5D5D5D5C ^ 0xEBA7B7A6;
  v101 = v79 & 0x94C4944 ^ 0xA9A48106 ^ v100 & (LODWORD(STACK[0x5660]) ^ LODWORD(STACK[0x1670]));
  v102 = LODWORD(STACK[0x5500]) ^ LODWORD(STACK[0x56C0]) ^ a4 ^ ((v101 << STACK[0x5790]) | ((v79 & 0x40191808 ^ 0xE2231200 ^ v100 & (v85 ^ 0xF2DE1BE6)) >> v69)) ^ LODWORD(STACK[0x5328]) ^ __ROR4__(*(v57 + 4 * v89), 8) ^ *(v57 + 4 * v90) ^ __ROR4__(*(v57 + 4 * v88), 24) ^ v94;
  v103 = (v100 & STACK[0x5720]) >> STACK[0x57C0];
  v104 = LODWORD(STACK[0x5380]) ^ a4 ^ ((v101 << STACK[0x57B0]) | v103) ^ v98;
  v105 = a4 ^ (((v100 & STACK[0x5760]) << STACK[0x5790]) + v103);
  v107 = v105 ^ LODWORD(STACK[0x5370]) ^ v99;
  v108 = 545 * (v105 ^ LOBYTE(STACK[0x5370]) ^ v99) + 702505;
  v109 = BYTE1(v104) + 1289;
  v110 = 545 * v109 - 1552 * ((2767376 * (545 * v109)) >> 32);
  v111 = 545 * ((v109 & 0x509) + HIBYTE(v107) + (~v109 & 0x109));
  v112 = STACK[0x5660];
  v113 = v69;
  v114 = a4 ^ (((v79 & 0x15071404 ^ 0x84821089 ^ STACK[0x5068] & (LODWORD(STACK[0x5660]) ^ 0x969B931B)) << STACK[0x5790]) + (STACK[0x50B8] >> v69)) ^ LODWORD(STACK[0x52F8]) ^ __ROR4__(*(v57 + 4 * v110), 16) ^ __ROR4__(*(v57 + 4 * (v108 - 1552 * ((2767376 * v108) >> 32))) ^ __ROR4__(*(v57 + 4 * ((545 * (((BYTE2(v102) ^ 0x539159C3) - 1181092124) ^ ((BYTE2(v102) ^ 0xE817EA0F) + 35603760) ^ ((BYTE2(v102) ^ 0xBB86B3CC) + 1368268013)) - 1014111512) % 0x610)), 16), 24) ^ *(v57 + 4 * (545 * HIBYTE(v86) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v86) + 702505)) >> 32)));
  v115 = STACK[0x5398];
  v116 = a4;
  v117 = LODWORD(STACK[0x5308]) ^ a4 ^ LODWORD(STACK[0x5398]) ^ __ROR4__(*(v57 + 4 * (545 * v104 + 702505 - 1552 * ((2767376 * (545 * v104 + 702505)) >> 32))), 24) ^ __ROR4__(*(v57 + 4 * (545 * BYTE1(v102) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v102) + 702505)) >> 32))), 16) ^ __ROR4__(*(v57 + 4 * (545 * BYTE2(v86) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v86) + 702505)) >> 32))), 8) ^ *(v57 + 4 * (v111 - 1552 * ((2767376 * v111) >> 32)));
  LODWORD(v76) = BYTE2(v117) + 1289;
  LODWORD(STACK[0x5500]) = v76;
  v118 = v114;
  v119 = (545 * BYTE2(v114) + 702505) % (v76 & 0x610 ^ (758 - BYTE2(v117)) & 0x210);
  v120 = (STACK[0x54D0] >> v97) + (STACK[0x54D0] << v96);
  if (v55)
  {
    v120 = STACK[0x54D0];
  }

  v121 = STACK[0x57A0];
  v122 = 545 * (117 * (*(v121 + (((v102 >> 3) | (32 * (v102 & 7))) ^ 0x5A) + 156272) ^ ((*(v121 + (((v102 >> 3) | (32 * (v102 & 7))) ^ 0x5A) + 156272) >> 4) & 0xC | 0x80) ^ 0xF7)) + 702505;
  v123 = v122 - 1552 * ((2767376 * v122) >> 32);
  v124 = ((v122 & 0x221 ^ 0x221) + (v122 & 0x221)) * (BYTE1(v86) + 1289);
  v125 = v124 - 1552 * ((2767376 * v124) >> 32);
  v126 = STACK[0x5650];
  v127 = STACK[0x5740];
  v128 = v112;
  v129 = (STACK[0x5740] & 0x3021712 ^ 0x80A1A8B ^ (v112 ^ 0x816980Du) & STACK[0x5140]) << STACK[0x57B0];
  v130 = v113;
  v131 = v116 ^ (v129 + ((STACK[0x5740] & 0x1100106 ^ 0x8180803 ^ (LODWORD(STACK[0x5650]) ^ 0x199D0889u) & STACK[0x5140]) >> v113)) ^ LODWORD(STACK[0x53A8]) ^ *(v57 + 4 * (545 * HIBYTE(v102) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v102) + 702505)) >> 32))) ^ __ROR4__(*(v57 + 4 * LODWORD(STACK[0x53E0])), 24) ^ __ROR4__(*(v57 + 4 * (545 * BYTE2(v104) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v104) + 702505)) >> 32))), 8) ^ __ROR4__(*(v57 + 4 * (545 * BYTE1(v107) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v107) + 702505)) >> 32))), 16);
  v132 = STACK[0x57C0];
  v133 = v120 ^ STACK[0x5118] ^ ((STACK[0x5740] & 0x5101610 ^ 0x8109280 ^ (LODWORD(STACK[0x5650]) ^ 0x1D95971Eu) & STACK[0x5140]) >> STACK[0x57C0]) ^ v116 ^ __ROR4__(*(v57 + 4 * v123), 24) ^ __ROR4__(*(v57 + 4 * v125), 16) ^ *(v57 + 4 * (545 * HIBYTE(v104) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v104) + 702505)) >> 32))) ^ __ROR4__(*(v57 + 4 * (545 * BYTE2(v107) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v107) + 702505)) >> 32))), 8);
  v134 = (v131 >> 5) & 0xF8 | (v131 >> 13);
  v135 = *(STACK[0x57A0] + (~v115 & 0xF4C0) + (v115 & 0xF4C0u) + (v134 ^ 0x3Bu)) ^ v134;
  v136 = 545 * ((((v135 ^ 5) - 93) ^ ((v135 ^ 0x6A) - 50) ^ ((v135 ^ 0x6F) - 55)) - 68) + 702505;
  v137 = v136 - 1552 * ((2767376 * v136) >> 32);
  LODWORD(STACK[0x53A0]) = v117;
  LOBYTE(v134) = *(v121 + ((55 * BYTE1(v117)) ^ 0x337ALL));
  v138 = 545 * ((((v134 ^ 0x93) + 30) ^ (v134 - 113) ^ ((v134 ^ 0x95) + 28)) - 22) + 702505;
  v139 = *(v57 + 4 * (545 * v118 + 702505 - 1552 * ((2767376 * (545 * v118 + 702505)) >> 32)));
  HIDWORD(v140) = *(v57 + 4 * (v138 - 1552 * ((2767376 * v138) >> 32)));
  LODWORD(v140) = HIDWORD(v140);
  v141 = (v140 >> 16) ^ __ROR4__(v139, 24) ^ *(v57 + 4 * (545 * HIBYTE(v131) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v131) + 702505)) >> 32))) ^ __ROR4__(*(v57 + 4 * ((545 * (((BYTE2(v133) ^ 0x97DC9087) + 788721669) ^ ((BYTE2(v133) ^ 0x52DC909D) - 368906209) ^ ((BYTE2(v133) ^ 0xC500001A) + 2111725722)) + 1855930149) % 0x610)), 8);
  v142 = ((v141 & 0x221 ^ 0x221) + (v141 & 0x221)) * (v133 + 1289);
  v143 = *(v57 + 4 * v137);
  v144 = v116 ^ (((v127 & 0x80800100 ^ 0xC0004100 ^ (v128 ^ 0x81C080C0) & STACK[0x5108]) << STACK[0x5790]) | ((v127 & 0x80810000 ^ 0x80004040 ^ (v126 ^ 0x80404180) & STACK[0x5108]) >> v130));
  v145 = v144 ^ LODWORD(STACK[0x53C0]) ^ __ROR4__(v143, 16) ^ __ROR4__(*(v57 + 4 * v119), 8) ^ *(v57 + 4 * (545 * HIBYTE(v117) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v117) + 702505)) >> 32))) ^ __ROR4__(*(v57 + 4 * (v142 - 1552 * ((2767376 * v142) >> 32))), 24);
  v146 = LODWORD(STACK[0x53D8]) ^ (STACK[0x50F8] >> v132) ^ STACK[0x5100] ^ v116 ^ v141;
  v147 = HIBYTE(v145) + 1289;
  LODWORD(STACK[0x53E0]) = v147;
  LODWORD(STACK[0x54D0]) = (545 * BYTE1(v146) + 702505) % (((758 - HIBYTE(v145)) & 0x210) + (v147 & 0x610));
  if (v55)
  {
    v148 = STACK[0x54E0];
  }

  else
  {
    v148 = (STACK[0x54E0] >> STACK[0x55B0]) + (STACK[0x54E0] << STACK[0x56F0]);
  }

  v149 = *(v57 + 4 * (545 * v131 + 702505 - 1552 * ((2767376 * (545 * v131 + 702505)) >> 32)));
  LOBYTE(v131) = *(v121 + ((55 * HIBYTE(v149)) ^ 2) + 122119);
  LOBYTE(v131) = (((v131 ^ 0xBF) + 65) ^ ((v131 ^ 0xE0) + 32) ^ ((v131 ^ 0xE2) + 30)) - 82;
  v150 = v131 & 0xD9 ^ 0x89;
  LOBYTE(v131) = v131 ^ (2 * ((v131 ^ 0x46) & (2 * ((v131 ^ 0x46) & (2 * ((v131 ^ 0x46) & (2 * ((v131 ^ 0x46) & (2 * ((v131 ^ 6) & (2 * (((2 * (v131 & 7)) ^ 0x1E) & (v131 ^ 6) ^ v150)) ^ v150)) ^ v150)) ^ v150)) ^ v150)) ^ v150));
  v151 = v144 ^ v148 ^ __ROR4__(*(v57 + 4 * ((545 * (((BYTE1(v133) ^ 0x2FCC9F4D) - 188898038) ^ ((BYTE1(v133) ^ 0x7E9E133B) - 1511052928) ^ ((BYTE1(v133) ^ 0x51528C76u) - 1977371085)) - 738350268) % 0x610)), 16) ^ __ROR4__(*(v57 + 4 * (545 * BYTE2(v131) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v131) + 702505)) >> 32))), 8) ^ *(v57 + 4 * (545 * HIBYTE(v118) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v118) + 702505)) >> 32))) ^ __ROR4__(*(v57 + 4 * ((545 * (776161551 * ((v139 & 0x21) + (v139 & 0x21 ^ 0x21)) + LODWORD(STACK[0x53A0])) - 621080230) % 0x610)), 24);
  v152 = STACK[0x55D0] ^ (((STACK[0x5700] & 0x1000080 ^ 0x41404000 ^ STACK[0x5150] & (LODWORD(STACK[0x5660]) ^ 0x8140u)) << STACK[0x5790]) + ((STACK[0x5700] & 0x1808080 ^ 0x100C040 ^ STACK[0x5150] & (LODWORD(STACK[0x5650]) ^ 0x141C100u)) >> STACK[0x5780])) ^ LODWORD(STACK[0x5408]) ^ __ROR4__(*(v57 + 4 * (545 * LODWORD(STACK[0x5500]) - 1552 * ((2767376 * (545 * LODWORD(STACK[0x5500]))) >> 32))), 8) ^ *(v57 + 4 * (545 * HIBYTE(v133) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v133) + 702505)) >> 32))) ^ __ROR4__(*(v57 + 4 * (545 * BYTE1(v118) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v118) + 702505)) >> 32))), 16) ^ (((((v131 ^ 0xD5) + 30) ^ ((v131 ^ 0xDB) + 20) ^ ((v131 ^ 0x36) - 1)) + 2) | (v149 << 8));
  v153 = *(v121 + ((55 * HIBYTE(v146)) ^ 0x2Bu) + 124170);
  v154 = ((((v153 >> 1) | (v153 << 7)) ^ 0x9E) + 122) ^ ((((v153 >> 1) | (v153 << 7)) ^ 0x54) - 76) ^ ((((v153 >> 1) | (v153 << 7)) ^ 0x71) - 105);
  LODWORD(STACK[0x5500]) = 545 * v152 + 702505 - 1552 * ((2767376 * (545 * v152 + 702505)) >> 32);
  LODWORD(STACK[0x5700]) = 545 * v151 + 702505 - 1552 * ((2767376 * (545 * v151 + 702505)) >> 32);
  v155 = 545 * v145 + 702505 - 1552 * ((2767376 * (545 * v145 + 702505)) >> 32);
  v156 = (545 * (((BYTE2(v145) ^ 0x12B347DF) - 313739046) ^ ((BYTE2(v145) ^ 0x46F80191) - 1190658408) ^ ((BYTE2(v145) ^ 0x544B464Eu) - 1414219447)) + 838210) % 0x610;
  v157 = *(v121 + ((55 * v146) ^ 0x1580));
  v158 = v121;
  LOBYTE(v149) = ((v157 ^ 0x48) + 59) ^ ((v157 ^ 0xD7) - 90) ^ ((v157 ^ 0xD1) - 92);
  LOBYTE(v149) = ((((v157 ^ 0x73) + 2) ^ ((v157 ^ 0xA) + 121) ^ ((v157 ^ 0x37) + 70)) + 47) * (v149 - 61) - 108 * v149 - 25;
  v159 = v157 ^ (8 * v149) ^ (16 * ((v149 ^ 4) & (2 * ((v149 ^ 0x54) & (2 * ((v149 ^ 0x54) & (2 * (v149 & 0x29 ^ 0x2A)) ^ v149 & 0x29 ^ 0x2A)) ^ v149 & 0x29 ^ 0x2A)) ^ v149 & 0x29 ^ 0x2A));
  v160 = (((v159 ^ 0xCE) + 62) ^ ((v159 ^ 0xB6) + 70) ^ ((v159 ^ 0x66) - 106)) + 11;
  LOBYTE(v149) = v160 & 0x36 ^ 0x2E;
  v161 = (v160 ^ (2 * ((v160 ^ 0x78) & (2 * ((v160 ^ 0x78) & (2 * ((v160 ^ 0x78) & (2 * ((v160 ^ 0x78) & (2 * ((v160 ^ 0x78) & (2 * v149) ^ v149)) ^ v149)) ^ v149)) ^ v149)) ^ v149))) ^ 0x8B;
  v162 = 545 * BYTE1(v151) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v151) + 702505)) >> 32);
  v163 = 545 * BYTE2(v146) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v146) + 702505)) >> 32);
  LODWORD(STACK[0x54E0]) = 545 * BYTE1(v145) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v145) + 702505)) >> 32);
  v164 = (545 * (((HIBYTE(v152) ^ 0x13ED5ACA) - 334322253) ^ ((HIBYTE(v152) ^ 0x64FAFECF) - 1694170696) ^ ((HIBYTE(v152) ^ 0x7717A405) - 1998038146)) + 776080) % 0x610u;
  v165 = STACK[0x5540];
  v166 = STACK[0x5590];
  v167 = STACK[0x5680];
  v168 = (v165 >> LODWORD(STACK[0x5680])) | (v165 << LODWORD(STACK[0x5590]));
  LODWORD(STACK[0x5408]) = 545 * BYTE2(v152) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v152) + 702505)) >> 32);
  v169 = *(v57 + 4 * v155);
  v171 = *(v57 + 4 * ((545 * (((v161 ^ 0xA274830D) + 1569422579) ^ ((v161 ^ 0xF330F34F) + 214895793) ^ ((v161 ^ 0x514470FF) - 1363439871)) + 805510) % 0x610));
  v172 = (HIBYTE(v171) & 1 ^ (HIBYTE(v171) & 1 | 0x20) ^ 0x201) * (BYTE2(v151) + 1289);
  v173 = v167;
  v174 = (LODWORD(STACK[0x5520]) << v166) | (LODWORD(STACK[0x5520]) >> v167);
  v175 = 545 * BYTE1(v152) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v152) + 702505)) >> 32);
  v176 = 545 * HIBYTE(v151) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v151) + 702505)) >> 32);
  if (v173)
  {
    v177 = v174;
  }

  else
  {
    v177 = STACK[0x5520];
  }

  if (v166)
  {
    v178 = (LODWORD(STACK[0x5530]) << v166) + (LODWORD(STACK[0x5530]) >> LODWORD(STACK[0x56D0]));
  }

  else
  {
    v178 = STACK[0x5530];
  }

  if (!v166)
  {
    v168 = v165;
  }

  v179 = STACK[0x5740] & 0x92929292 ^ 0x4BD9D949;
  v180 = STACK[0x55D0] ^ (((STACK[0x5740] & 0x921292 ^ 0x9901048 ^ (LODWORD(STACK[0x5660]) ^ 0x4ACAD108) & v179) << STACK[0x57B0]) + ((STACK[0x5740] & LODWORD(STACK[0x4758]) ^ 0x49088940 ^ (LODWORD(STACK[0x5650]) ^ 0x49CB881A) & v179) >> STACK[0x5780])) ^ v178 ^ __ROR4__(*(v57 + 4 * v156), 8) ^ __ROR4__(*(v57 + 4 * v162), 16) ^ __ROR4__(v171, 24) ^ *(v57 + 4 * v164);
  v181 = (STACK[0x5740] & 0x90928202 ^ 0x1908808 ^ (LODWORD(STACK[0x5650]) ^ 0x81538BC0) & v179) >> STACK[0x5780];
  v170 = *(v158 + (((v169 >> 19) & 0xE0 | (v169 >> 27)) ^ 8) + 125197);
  v182 = v168 ^ ((STACK[0x5740] & 0x12029212 ^ 0x4308D109 ^ (LODWORD(STACK[0x5660]) ^ 0x105210C9) & v179) << STACK[0x57B0]) ^ v181 ^ STACK[0x55D0] ^ *(v57 + 4 * v176) ^ __ROR4__(*(v57 + 4 * v175), 16) ^ __ROR4__(*(v57 + 4 * v163), 8) ^ ((LODWORD(STACK[0x4960]) + 117 * (((v170 ^ 0x31) - 21) ^ ((v170 ^ 0x3E) - 26) ^ ((v170 ^ 0x9F) + 69))) | (v169 << 8));
  v183 = STACK[0x55D0] ^ ((STACK[0x54A0] << STACK[0x57B0]) + STACK[0x5360]) ^ v177 ^ __ROR4__(*(v57 + 4 * (v172 - 1552 * ((2767376 * v172) >> 32))), 8) ^ __ROR4__(*(v57 + 4 * LODWORD(STACK[0x5500])), 24) ^ *(v57 + 4 * (545 * LODWORD(STACK[0x53E0]) - 1552 * ((2767376 * (545 * LODWORD(STACK[0x53E0]))) >> 32))) ^ __ROR4__(*(v57 + 4 * LODWORD(STACK[0x54D0])), 16);
  if (LODWORD(STACK[0x56D0]))
  {
    v184 = (LODWORD(STACK[0x5560]) >> LODWORD(STACK[0x56D0])) | (LODWORD(STACK[0x5560]) << v166);
  }

  else
  {
    v184 = STACK[0x5560];
  }

  v185 = STACK[0x55D0] ^ ((STACK[0x52A0] << STACK[0x5790]) + (STACK[0x5480] >> STACK[0x57C0])) ^ v184 ^ __ROR4__(*(v57 + 4 * LODWORD(STACK[0x5408])), 8) ^ *(v57 + 4 * (545 * (v154 - 106) + 702505 - 1552 * ((2767376 * (545 * (v154 - 106) + 702505)) >> 32))) ^ __ROR4__(*(v57 + 4 * LODWORD(STACK[0x54E0])), 16) ^ __ROR4__(*(v57 + 4 * LODWORD(STACK[0x5700])), 24);
  v186 = v185 - 0x2C6969AAF374A7B3 - ((2 * v185) & 0x1916B09A);
  v187 = (v186 ^ 0xD39696550C8B584DLL) >> (((~v181 & 0x7A) + (v181 & 0x7A)) & 0x8C);
  LODWORD(v187) = 545 * ((v187 - ((2 * v187) & 0xB4) - 38) ^ 0xDA) + 562440;
  v188 = (((HIBYTE(v183) ^ 0x5131F1FC) + 1466574647) ^ ((HIBYTE(v183) ^ 0x1CE554C5) + 448692752) ^ ((HIBYTE(v183) ^ 0x4DD4A539) + 1267692532)) + 1853099136;
  v189 = LODWORD(STACK[0x5410]) ^ __ROR4__(*(v57 + 4 * (v187 - 1552 * ((2767376 * v187) >> 32))), 24) ^ __ROR4__(*(v57 + 4 * ((545 * v188 + 1366667869) % 0x610u)), 8) ^ *(v57 + 4 * ((545 * (((v180 ^ 0x93E778E0) + 160676614) ^ ((v180 ^ 0xBA43A09) - 1848575507) ^ ((v180 ^ 0x984342E9) + 37191949)) + 762546274) % 0x610)) ^ __ROR4__(*(v57 + 4 * (545 * BYTE2(v182) + 562440 - 1552 * ((2767376 * (545 * BYTE2(v182) + 562440)) >> 32))), 16);
  v190 = STACK[0x56E0];
  v191 = (((v189 ^ v190) - (v189 ^ v190 ^ 0x65656565)) ^ 0xFFFFFFFE) + (v189 ^ v190);
  v192 = STACK[0x55B0];
  if (STACK[0x55B0])
  {
    LODWORD(v191) = (v191 >> STACK[0x56F0]) | (v191 << STACK[0x55B0]);
  }

  v194 = (v188 ^ 0x2AA306BC) & (2 * (v188 & STACK[0x1674])) ^ v188 & STACK[0x1674];
  v195 = ((2 * (v188 ^ 0x2A834794)) ^ 0x4366CE52) & (v188 ^ 0x2A834794) ^ (2 * (v188 ^ 0x2A834794)) & 0x21B36728;
  LOBYTE(v194) = v194 ^ 0x29 ^ v195 & (4 * v194);
  v196 = ((4 * (v195 ^ LODWORD(STACK[0x4750]))) ^ 0x86CD9CA4) & (v195 ^ LODWORD(STACK[0x4750])) ^ (4 * (v195 ^ LODWORD(STACK[0x4750]))) & 0xA1B36728;
  v197 = ((HIBYTE(v183) ^ 0xFC) + 55) ^ ((HIBYTE(v183) ^ 0xC5) + 16) ^ ((HIBYTE(v183) ^ 0x39) - 12) ^ (2 * (v196 & (16 * v196) ^ (v196 ^ 0x20) & (16 * v194) ^ v194));
  LOBYTE(v196) = 116 - (((HIBYTE(v183) ^ 0xD7) + 30) ^ ((HIBYTE(v183) ^ 0x3B) - 14) ^ ((HIBYTE(v183) ^ 0xEC) + 39));
  v198 = ((2 * (v196 & 0x5E ^ 0x28)) ^ 0x50) & (v196 ^ 0x76) ^ v196 & 0x5E ^ 0x28;
  v199 = (~v197 & 8) + (~(v196 ^ (2 * ((v196 ^ 0x76) & (2 * (v196 ^ 0x76)) & (4 * v198) ^ v198))) & 8);
  v200 = STACK[0x55B0];
  v201 = STACK[0x55E0];
  v202 = (STACK[0x5570] >> v192) + (STACK[0x5570] << STACK[0x55E0]);
  v203 = STACK[0x56F0];
  v204 = (STACK[0x5580] >> v192) | (STACK[0x5580] << STACK[0x56F0]);
  if (!v192)
  {
    v204 = STACK[0x5580];
    v202 = STACK[0x5570];
  }

  v193 = (545 * (((BYTE1(v180) ^ 0xA1609569) + 153817760) ^ ((BYTE1(v180) ^ 0xA02C31A9) + 141014624) ^ ((BYTE1(v180) ^ 0x14CA4C0) - 1459150025)) - 1220796367) % 0x610;
  v205 = v190 ^ 0x65656565u ^ LODWORD(STACK[0x5470]) ^ HIBYTE(*(v57 + 4 * v193)) ^ *(v57 + 4 * ((545 * (((v183 ^ 0x27E2C31F) + 1813762566) ^ ((v183 ^ 0x81DFDDC7) - 903426850) ^ ((v183 ^ 0xA63D1ED8) - 305918013)) + 1120610957) % 0x610)) ^ __ROR4__(*(v57 + 4 * (545 * (BYTE2(v186) ^ 0x8B) + 562440 - 1552 * ((2767376 * (545 * (BYTE2(v186) ^ 0x8Bu) + 562440)) >> 32))), 16) ^ __ROR4__(*(v57 + 4 * ((545 * (((HIBYTE(v182) ^ 0x7CA484DE) - 1206154187) ^ ((HIBYTE(v182) ^ 0x4F65030) - 1068934949) ^ ((HIBYTE(v182) ^ 0x7852D4EE) - 1125262331)) + 626432189) % 0x610u)), 8) ^ (*(v57 + 4 * v193) << v199);
  if (v192)
  {
    LODWORD(v205) = (v205 >> v201) | (v205 << v192);
  }

  v206 = (((v181 ^ 0x1B) - (v181 & 0x24) + (v181 & 0x1B)) & 0x3B ^ 0xC9 ^ ((v182 >> 3) & 0xE0 | (v182 >> 11))) + 110016;
  v207 = *((((v183 >> 13) & 0xF8 | (v183 >> 21) & 7) ^ 0x47) + STACK[0x57A0] + 40256);
  v208 = (((v207 ^ 0x11) - 17) ^ ((v207 ^ 0x2B) - 43) ^ ((v207 ^ 0x87) + 121)) - 118;
  v209 = v208 & 0x12 ^ 0x26;
  v210 = v208 ^ (2 * ((v208 ^ 0x54) & (2 * ((v208 ^ 0x54) & (2 * ((v208 ^ 0x54) & (2 * ((v208 ^ 0x54) & (2 * ((v208 ^ 0x54) & (2 * v209) ^ v209)) ^ v209)) ^ v209)) ^ v209)) ^ v209));
  LODWORD(v206) = LODWORD(STACK[0x5238]) + 117 * (((*(STACK[0x57A0] + v206) ^ 0xFFFFFFF5) + 43) ^ ((*(STACK[0x57A0] + v206) ^ 6) - 38) ^ ((*(STACK[0x57A0] + v206) ^ 0xFFFFFFA2) + 126));
  v211 = v206 & 0x2A ^ 0xDE;
  LOBYTE(v206) = v206 ^ (2 * ((v206 ^ 0x3C) & (2 * ((v206 ^ 0x3C) & (2 * ((v206 ^ 0x3C) & (2 * ((v206 ^ 0x3C) & (2 * ((v206 ^ 0x3C) & (2 * v211) ^ v211)) ^ v211)) ^ v211)) ^ v211)) ^ v211)) ^ 0xFB;
  v212 = 545 * ((((v210 ^ 0x6F) - 20) ^ ((v210 ^ 0x20) - 91) ^ ((v210 ^ 0x2C) - 87)) + 124) + 562440;
  v213 = (545 * (((v206 ^ 0x331019E3) - 856693219) ^ ((v206 ^ 0x439BDBD6) - 1134287830) ^ ((v206 ^ 0x708BC2E4u) - 1888207588)) + 676345) % 0x610;
  LODWORD(v206) = 545 * v185 + 562440 - 1552 * ((2767376 * (545 * v185 + 562440)) >> 32);
  v214 = (545 * (((HIBYTE(v180) ^ 0x79DD7BBA) - 843874502) ^ (HIBYTE(v180) - 965821820) ^ ((HIBYTE(v180) ^ 0x549724BA) - 520544198)) - 506398716) % 0x610u;
  v215 = ((BYTE2(v180) ^ 0x45550E70) + 555196793) ^ ((BYTE2(v180) ^ 0xC8B27B04) - 1393503219) ^ ((BYTE2(v180) ^ 0x8DE77574) - 375006595);
  v216 = *(v57 + 4 * v213);
  v217 = HIBYTE(v216);
  v218 = ((v216 << 8) ^ 0xB8726E6D) & (HIBYTE(v216) ^ 0xFFFFFF6F);
  v219 = 545 * v215 - 1911426337;
  HIDWORD(v220) = *(v57 + 4 * (v212 - 1552 * ((2767376 * v212) >> 32)));
  LODWORD(v220) = HIDWORD(v220);
  v221 = 545 * ((((v186 >> 24) ^ 0xA882C504) + 1651360703) ^ (((v186 >> 24) ^ 0xDE523FAC) + 347945239) ^ (((v186 >> 24) ^ 0xE046AFA4) + 715761951)) + 566058097;
  v222 = 545 * BYTE1(v183) + 562440;
  v223 = v190 ^ v202 ^ *(v57 + 4 * v206) ^ (v218 | v217 & 0x92) ^ ((v220 >> 16) - 928268475 + ~((2 * (v220 >> 16)) & 0x91577E88)) ^ __ROR4__(*(v57 + 4 * v214), 8) ^ 0x15BCB44C;
  if (v201)
  {
    LODWORD(v223) = (v223 >> v201) ^ (v223 << v200);
  }

  v224 = v222 - 1552 * ((2767376 * v222) >> 32);
  v225 = LODWORD(STACK[0x55C0]) + 1044736821;
  LODWORD(STACK[0x54D0]) = LODWORD(STACK[0x5550]) ^ 0x3B;
  v226 = *(v57 + 4 * (v219 % 0x610));
  v227 = v190 ^ v204 ^ ((v226 >> ((v219 ^ (-33 * v215)) & 0x10)) | (v226 << 16)) ^ __ROR4__(*(v57 + 4 * (v221 % 0x610)), 8) ^ *(v57 + 4 * ((545 * (((v182 ^ 0x703FC881) - 1525905395) ^ ((v182 ^ 0x627500B5) - 1220132807) ^ ((v182 ^ 0x124AC834u) - 948336454)) + 502015674) % 0x610)) ^ 0xF20E648D ^ (((*(v57 + 4 * v224) << 8) ^ 0x976B01E8) & (HIBYTE(*(v57 + 4 * v224)) ^ 0xFFFFFFE9) | HIBYTE(*(v57 + 4 * v224)) & 0x17);
  v228 = (v227 << v200) | (v227 >> v203);
  v229 = STACK[0x5430];
  if (v203)
  {
    LODWORD(v227) = v228;
  }

  v230 = LODWORD(STACK[0x55F0]) - 2 * LODWORD(STACK[0x56C0]);
  if (STACK[0x55F0])
  {
    v231 = v191;
  }

  else
  {
    v231 = v205;
  }

  if (STACK[0x55F0])
  {
    v232 = v227;
  }

  else
  {
    v232 = v223;
  }

  if (STACK[0x55F0])
  {
    LODWORD(v191) = v223;
    v233 = v205;
  }

  else
  {
    v233 = v227;
  }

  v234 = (v230 & 2) == 0;
  if ((v230 & 2) != 0)
  {
    v235 = v232;
  }

  else
  {
    v235 = v231;
  }

  if (v234)
  {
    v231 = v232;
    v236 = v233;
  }

  else
  {
    v236 = v191;
  }

  v237 = STACK[0x5510];
  if (!v234)
  {
    LODWORD(v191) = v233;
  }

  v238 = v189 & 0xFFFFB5F6;
  v239 = v231 ^ (617970195 * (LODWORD(STACK[0x5430]) ^ 0xE5E5E5E5)) ^ (617970195 * (v236 ^ LODWORD(STACK[0x5510])));
  v240 = STACK[0x55A0];
  v241 = LODWORD(STACK[0x54F0]) ^ v239;
  v242 = v189 | 0x4A09;
  v243 = STACK[0x4E50];
  v244 = LODWORD(STACK[0x5318]) ^ v237;
  v245 = LODWORD(STACK[0x5318]) ^ LODWORD(STACK[0x55A0]) ^ v235 ^ v191 ^ ((v244 ^ v191) << 6) ^ v239;
  v246 = *(STACK[0x4E50] + 4 * ((LODWORD(STACK[0x55A0]) ^ v237) % 0x101 - v238 + v242 + 1));
  v247 = *(STACK[0x4E50] + 4 * ((v229 ^ v237) % 0x101 + 18440));
  v248 = (*(STACK[0x4E50] + 4 * ((v241 ^ 0xE5E5E5E5) % 0x101 + 18183)) ^ 0xA76AF2EB) + (v246 ^ ((v246 ^ 0x1E5653C0u) >> 6) ^ ((v246 ^ 0x1E5653C0u) >> 2) ^ 0xE9633D50) + v191 + 1;
  v249 = STACK[0x5420];
  v250 = v248 ^ LODWORD(STACK[0x5318]);
  v251 = v250 ^ ((v247 ^ (16 * (v247 ^ 0x2B8015DD) * (v247 ^ 0x2B8015DD)) ^ 0xAECDF239) + v241 + (*(STACK[0x4E50] + 4 * ((v236 ^ 0xE5E5E5E5) % 0x101 + 257)) ^ ((v236 ^ 0xE5E5E5E5) % 0x101) ^ 0x4DF3EC60) + 791225323 * ((v237 ^ 0x1A1A1A1A) + (LODWORD(STACK[0x5420]) ^ 0x79797940 ^ v245)) + 791225324);
  HIDWORD(v252) = *(STACK[0x4E50] + 4 * ((v251 ^ 0xE5E5E5E5) % 0x101 + 52493));
  LODWORD(v252) = HIDWORD(v252);
  LODWORD(STACK[0x5310]) = v182 ^ 0x7E;
  v253 = *(v243 + 4 * ((v237 ^ 0xE5E5E5E5) % 0x101 + 17412));
  v254 = (__ROR4__(*(v243 + 4 * (v250 % 0x101 + 17926)), 19) ^ 0x8E3C0348) + (v253 ^ 0xE3A2BA4C ^ (16 * (v253 ^ 0xFF9386F4) * (v253 ^ 0xFF9386F4))) + (v245 ^ 0x79797940) + 1;
  v255 = (*(v243 + 4 * ((v240 ^ 0xE5E5E5E5) % 0x101 + 52750)) ^ 0xAADF0CAF) + v236 + ((v252 >> 1) ^ ((v252 >> 1) >> 7) ^ ((v252 >> 1) >> 3) ^ 0x2BEA5B0) + 1;
  v256 = v229 ^ v237 ^ v255;
  v257 = v229 ^ v255 ^ v249 ^ (v256 << 6) ^ v245 ^ v251;
  v258 = v248 ^ v240 ^ v257;
  LODWORD(STACK[0x5118]) = v255 + 1117413297 * ((v249 ^ v237) + (v254 ^ 0x1A1A1A1A)) + 1117413297;
  LODWORD(STACK[0x5110]) = v258;
  LODWORD(STACK[0x5088]) = v229 ^ v255 ^ (8 * v256) ^ 0x2F2F2F28 ^ v257;
  LODWORD(STACK[0x50D0]) = LODWORD(STACK[0x5720]);
  LODWORD(STACK[0x5740]) = LODWORD(STACK[0x5710]) ^ LODWORD(STACK[0x5730]);
  v259 = *(STACK[0x57D8] + 8 * (v225 ^ 0x3E45E318 ^ (1528 * (v225 < 0x716BC5E4))));
  LODWORD(STACK[0x49D0]) = STACK[0x4748];
  LODWORD(STACK[0x5328]) = v244 ^ 0x9C9C9CA5 ^ v254 ^ v258 ^ ((v244 ^ v258) << 6);
  return v259();
}

uint64_t sub_10014DAE0()
{
  v1 = STACK[0x57D8];
  STACK[0x9F38] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (((5 * (v0 ^ 0x1929)) ^ 0x753F) + v0)))();
}

uint64_t sub_10014DB5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v15 = v6 < v8;
  v16 = a3 + v7;
  v17 = *v16;
  v18 = __ROR8__(v16 & ((v5 - 769906610) ^ 0xFFFFFFFF2DE37F5CLL), 8);
  v19 = a4 + v7;
  v20 = ((2 * (v18 + v11)) | 0xEC7417BB266F1A9ELL) - (v18 + v11) - 0x763A0BDD93378D4FLL;
  v21 = __ROR8__(v20 ^ 0x9982554CB7033DCBLL, 8);
  v20 ^= 0xE9D97F439399D6D1;
  v22 = (a2 - ((v21 + v20) | a2) + ((v21 + v20) | 0xD2CC7859977E10ACLL)) ^ 0xCDB7EACDBA913143;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ v12;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0x51FC477E33DE4033;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x224C09CA440C0C0BLL;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v19 & 0xFFFFFFFFFFFFFFF8, 8);
  v31 = __ROR8__(v28, 8) + v29;
  v32 = v30 - ((2 * v30 + 0x49827CF4CE56C3ECLL) & 0xB92A507D0D6FB9A6) + 0x35666B8EDE33EC9;
  v33 = v32 ^ 0xD58D95A4E47A8A93;
  v32 ^= 0xF3846677DD218526;
  v34 = __ROR8__(v33, 8);
  v35 = (v34 + v32 - ((2 * (v34 + v32)) & 0xB5BEFB7AD62FDD76) + 0x5ADF7DBD6B17EEBBLL) ^ 0xC7BCBED9EC83457BLL;
  v36 = v35 ^ __ROR8__(v32, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (v9 - (v31 | v9) + (v31 | 0x18C7609001379E9CLL)) ^ 0xB95E993E5EB0F4D9;
  v39 = __ROR8__((a1 - ((v37 + v36) | a1) + ((v37 + v36) | 0xD08FCB951212FFC5)) ^ 0x59B8B92511910819, 8);
  v40 = v38 ^ __ROR8__(v29, 61);
  v41 = (a1 - ((v37 + v36) | a1) + ((v37 + v36) | 0xD08FCB951212FFC5)) ^ 0x59B8B92511910819 ^ __ROR8__(v36, 61);
  v42 = (v10 - ((v39 + v41) | v10) + ((v39 + v41) | 0xC82D7F72C345BCCBLL)) ^ 0xE00F76EB48991CA8;
  v43 = __ROR8__(v38, 8) + v40;
  v44 = v42 ^ __ROR8__(v41, 61);
  v45 = __ROR8__(v42, 8);
  v46 = (((2 * (v45 + v44)) & 0x15C27A94E785585CLL) - (v45 + v44) - 0xAE13D4A73C2AC2FLL) ^ 0x1B8D2D4C77AC334ALL;
  v47 = (((2 * v43) & 0xF697F262B010DCF4) - v43 + 0x4B406CEA7F79185) ^ 0xB63638DA07CB92E2;
  v48 = v46 ^ __ROR8__(v44, 61);
  v49 = __ROR8__(v47, 8) + (v47 ^ __ROR8__(v40, 61));
  v50 = (__ROR8__(v46, 8) + v48) ^ v13;
  v51 = v50 ^ __ROR8__(v48, 61);
  v52 = __ROR8__(v50, 8);
  v53 = (v49 ^ v14) >> (8 * (v16 & 7u));
  v54 = (v52 + v51 - ((2 * (v52 + v51)) & 0xA425596A9133A26) + 0x5212ACB54899D13) ^ 0x2B8C079AB3881AC7;
  v55 = v54 ^ __ROR8__(v51, 61);
  v56 = __ROR8__(v54, 8);
  v57 = v7 + 1;
  *v19 = (((v56 + v55 - ((2 * (v56 + v55)) & 0x6776814E4FF76A60) + 0x33BB40A727FBB530) ^ 0x6C7F5089B27BFD4DuLL) >> (8 * (v19 & 7u))) ^ v53 ^ v17;
  if (v15 == v57 > 0xE983D53A)
  {
    v15 = v57 + v4 < v6;
  }

  return (*(STACK[0x57D8] + 8 * ((7 * v15) | (v5 - 9502))))();
}

uint64_t sub_10014E018(int a1)
{
  v1 = *(STACK[0x5740] + (STACK[0x52C8] & ((a1 ^ 0x54783835) + 633602277 + (STACK[0x5128] & 0xA8F07060))));
  v2 = (v1 + STACK[0x5700]) ^ 0xB88801D4E1C76353;
  v3 = v2 ^ __ROR8__(v1, 61);
  v4 = __ROR8__(v2, 8);
  v5 = (((v4 + v3) | 0x6CCE27DEFB239071) - ((v4 + v3) | 0x9331D82104DC6F8ELL) - 0x6CCE27DEFB239072) ^ 0x540696B41C26F806;
  v6 = v5 ^ __ROR8__(v3, 61);
  v7 = __ROR8__(v5, 8);
  v8 = (((2 * (v7 + v6)) | 0x4025A6E79B88B19CLL) - (v7 + v6) + 0x5FED2C8C323BA732) ^ 0x4592620E4101BD9FLL;
  v9 = v8 ^ __ROR8__(v6, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0xE1A1FD5BD155F97ALL;
  v11 = __ROR8__(v10, 8);
  v12 = v10 ^ __ROR8__(v9, 61);
  v13 = (((v11 + v12) | 0x7639178DAD16ED1DLL) - ((v11 + v12) | 0x89C6E87252E912E2) - 0x7639178DAD16ED1ELL) ^ 0xAC595C81AEB45284;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (((2 * (v15 + v14)) & 0x6261A052C6BB7C78) - (v15 + v14) - 0x3130D029635DBE3DLL) ^ 0x34FACD1B579C7004;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0xD2F00CE620E5D3AELL;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = ((((v20 + v19) | 0x1A59A75F86028B58) - ((v20 + v19) | 0xE5A658A079FD74A7) - 0x1A59A75F86028B59) ^ 0xEE2AAC6E2872FE23) >> STACK[0x5780];
  v22 = *(STACK[0x53F8] + ((((STACK[0x53E8] & 0x3BB869C8) + (STACK[0x53E8] | 0x3BB869C9) + 1048825681) & LODWORD(STACK[0x5210])) & 0xFFFFFFFFFFFFFFF8));
  v23 = (v22 + STACK[0x5620]) ^ 0xB88801D4E1C76353;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0x38C8B16AE7056877;
  v26 = v25 ^ __ROR8__(v24, 61);
  LODWORD(v21) = ((v21 ^ LODWORD(STACK[0x5790]) ^ 0x48) + 54) ^ ((v21 ^ LODWORD(STACK[0x5790]) ^ 0xFFFFFFD8) - 90) ^ ((v21 ^ LODWORD(STACK[0x5790]) ^ 0xFFFFFF90) - 18);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0xE580B17D8CC5E551;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (((2 * (v29 + v28)) & 0xD995C5ABEB331E36) - (v29 + v28) - 0x6CCAE2D5F5998F1CLL) ^ 0x7294E071DB33899ELL;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8);
  v33 = __ROR8__((((2 * (v32 + v31)) & 0xA04D38270FBBB938) - (v32 + v31) - 0x50269C1387DDDC9DLL) ^ 0x75B928E07B809CFALL, 8);
  v34 = (((2 * (v32 + v31)) & 0xA04D38270FBBB938) - (v32 + v31) - 0x50269C1387DDDC9DLL) ^ 0x75B928E07B809CFALL ^ __ROR8__(v31, 61);
  v35 = (((v33 + v34) | 0x1EF46BF1208D91A3) - ((v33 + v34) | 0xE10B940EDF726E5CLL) - 0x1EF46BF1208D91A4) ^ 0xE4C1893CEBB3A064;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (((2 * (v37 + v36)) | 0x25092C7B8AA5ECCCLL) - (v37 + v36) - 0x1284963DC552F666) ^ 0xC0749ADBE5B725C8;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = __ROR8__(v38, 8);
  LODWORD(STACK[0x5378]) = LODWORD(STACK[0x57C0]) ^ (((((2 * (v40 + v39)) & 0x7569569351777928) - (v40 + v39) - 0x3AB4AB49A8BBBC95) ^ 0x31385F87F9343610) >> STACK[0x57B0]);
  v41 = *(STACK[0x56F0] + (*STACK[0x51E8] & ((STACK[0x53B0] & 0xE918FE10) - 1859962108 + (STACK[0x53B0] | 0xE918FE14))));
  v42 = __ROR8__((v41 + STACK[0x5440]) ^ 0xB88801D4E1C76353, 8);
  v43 = (v41 + STACK[0x5440]) ^ 0xB88801D4E1C76353 ^ __ROR8__(v41, 61);
  v44 = (v42 + v43) ^ 0x38C8B16AE7056877;
  v45 = STACK[0x50E8];
  v46 = v44 ^ __ROR8__(v43, 61);
  v47 = (__ROR8__(v44, 8) + v46) ^ 0xE580B17D8CC5E551;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ ((LODWORD(STACK[0x50E8]) ^ 0xBA9u) - 0x1E5E02A42EAA1B88);
  v50 = __ROR8__(v49, 8);
  v51 = __ROR8__(v48, 61);
  v52 = (v50 + (v49 ^ v51) - ((2 * (v50 + (v49 ^ v51))) & 0xF87C98B7A84176FCLL) - 0x3C1B3A42BDF4482) ^ 0x265E0757D78204E7;
  v53 = v52 ^ __ROR8__(v49 ^ v51, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ 0xFA35E2CDCB3E31C7;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(STACK[0x56F0]) = v21 - 121;
  LODWORD(STACK[0x52B0]) = LODWORD(STACK[0x5600]) ^ (((__ROR8__(v56, 8) + (v56 ^ __ROR8__(v55, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5450]);
  STACK[0x52F8] = 54;
  return (*(STACK[0x57D8] + 8 * v45))();
}

uint64_t sub_10014E8C0@<X0>(__int16 a1@<W8>)
{
  v1 = STACK[0x51B8] - 22402;
  LOWORD(STACK[0xD93C]) = a1;
  return (*(STACK[0x57D8] + 8 * (v1 ^ 0x130B)))();
}

uint64_t sub_10014E9B8()
{
  v0 = STACK[0x51B8] - 5657;
  STACK[0xB458] = 0;
  v1 = STACK[0x57D8];
  v2 = STACK[0xC58];
  STACK[0xBDE0] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0xC58]));
  return (*(v1 + 8 * ((v0 ^ 0x490F) + v2)))(0x308E083E0C524CBELL);
}

uint64_t sub_10014EA60()
{
  v3 = STACK[0x5008];
  v4 = STACK[0x4FC0] + LODWORD(STACK[0x5008]);
  v5 = v2;
  v6 = *v4;
  v7 = *STACK[0x51E8];
  v8 = *STACK[0x51F0];
  LODWORD(STACK[0x5790]) = v7 & 0xFFFFFFF8;
  v9 = *(v8 + (v7 & 0xFFFFFFF8 & ((v4 & 0x9E7CD890 | 0x6183276B) + v1 + (v4 & 0x61832768 | 0x9E7CD895))));
  v10 = __ROR8__(v4 & 0xFFFFFFFFFFFFFFF8, 8);
  v11 = ((((v9 + v10) << ((((v0 ^ 0xC) - 106) | 2u) + 126)) & 0xCE57C2CD1A6C6E84) - (v9 + v10) + 0x18D41E9972C9C8BDLL) ^ 0xA05C1F4D930EABEELL;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = __ROR8__(v11, 8);
  v14 = (((2 * (v13 + v12)) & 0xCDDF12E7F0B0FFCLL) - (v13 + v12) + 0x79910768C07A7801) ^ 0x4159B602277F1076;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0xE580B17D8CC5E551;
  v17 = __ROR8__(v16, 8);
  v18 = v16 ^ __ROR8__(v15, 61);
  v19 = (((2 * (v17 + v18)) | 0x66D002BEC0824DECLL) - (v17 + v18) - 0x3368015F604126F6) ^ 0xD2C9FC04B114DF8CLL;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (((2 * (v21 + v20)) | 0x2BC1B4E1462C3BALL) - (v21 + v20) + 0x7EA1F258F5CE9E23) ^ 0x5B3E46AB0993DE44;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0xFA35E2CDCB3E31C7;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (v26 + v25 - ((2 * (v26 + v25)) & 0x94F5DC9816A0266) + 0x4A7AEE4C0B50133) ^ 0xD657A202E050D29DLL;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = __ROR8__(v27, 8);
  STACK[0x5780] = v4;
  LODWORD(v27) = (((v29 + v28 - ((2 * (v29 + v28)) & 0xCE5FC7BE4EDB3980) - 0x18D01C20D8926340) ^ 0x135CE8EE891DE9BBLL) >> (8 * (v4 & 7u))) ^ v6;
  LODWORD(STACK[0x5230]) = (((v27 ^ 0x3A) + 43) ^ ((v27 ^ 0x15) + 6) ^ ((v27 ^ 0x2F) + 64)) - 12;
  v30 = *(STACK[0x57D8] + 8 * (v0 ^ 0x310C ^ (485 * (v5 == 1))));
  LODWORD(STACK[0x5540]) = v3 + 1;
  LODWORD(STACK[0x54C0]) = 87;
  LODWORD(STACK[0x5378]) = 41;
  LODWORD(STACK[0x4FF0]) = 209;
  LODWORD(STACK[0x4F70]) = 147;
  LODWORD(STACK[0x4F78]) = 135;
  LODWORD(STACK[0x4F68]) = 11;
  return v30();
}

uint64_t sub_10014EE10()
{
  v5 = v0 + 4 * v4;
  v6 = *(v2 + (((((((v5 & 0xFFFFFFF8) + 184104640) | 0xEC5CA553) - 329472685 - ((1963379007 - (v5 & 0xFFFFFFF8)) & 0xEC5CA553)) & (v3 - 571562413 + (v3 ^ 0x22114005))) - 2135564200) & v1));
  v7 = (__ROR8__(v5 & 0xFFFFFFFFFFFFFFF8, 8) + v6) ^ 0xB057743BD1A8F5BCLL;
  v8 = __ROR8__(v7, 8);
  v9 = v7 ^ __ROR8__(v6, 61);
  v10 = (v8 + v9) ^ 0x8A47714CF38C4783;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = __ROR8__(v10, 8);
  v13 = (v12 + v11 - ((2 * (v12 + v11)) & 0xE7086D91390B4720) - 0xC7BC937637A5C70) ^ 0x51EFD2B286EC8CE0;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (v15 + v14 - ((2 * (v15 + v14)) & 0xC1ABCB31E954760ALL) - 0x1F2A1A670B55C4FBLL) ^ 0xFCD6F2A0100C7A01;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (v18 + v17 - ((2 * (v18 + v17)) & 0x377BA207E86B0AE0) - 0x64422EFC0BCA7A90) ^ 0xE6B71BA91DD9BD6DLL;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0x52F1884918D8D6A2;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0xB20726EF1F63AAFLL;
  LODWORD(v5) = (((__ROR8__(v23, 8) + (v23 ^ __ROR8__(v22, 61))) ^ 0x91BE8DE8979CBE40) >> (8 * (v5 & 7u))) ^ *v5;
  LODWORD(v5) = ((v5 ^ 0x994108E0) - 1152367567) ^ ((v5 ^ 0xABFB1361) - 1981128782) ^ ((v5 ^ 0x32BA1B81) + 279664466);
  return (*(STACK[0x57D8] + 8 * (v3 ^ 0x22115036 ^ (19388 * ((((v5 - v3) | (v3 - v5)) & 0x80000000) == 0)))))();
}

uint64_t sub_10014F0F0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0x47A8]) = LODWORD(STACK[0x51B0]) | LODWORD(STACK[0x55D0]);
  LODWORD(STACK[0x42B0]) = LODWORD(STACK[0x50D8]) | LODWORD(STACK[0x53C8]);
  LODWORD(STACK[0x4288]) = LODWORD(STACK[0x5098]) | LODWORD(STACK[0x51F8]);
  LODWORD(STACK[0x42A8]) = LODWORD(STACK[0x4E70]) | LODWORD(STACK[0x5248]);
  LODWORD(STACK[0x4790]) = LODWORD(STACK[0x4E68]) | LODWORD(STACK[0x4E88]);
  LODWORD(STACK[0x4280]) = LODWORD(STACK[0x4E60]) | LODWORD(STACK[0x4EA0]);
  LODWORD(STACK[0x4788]) = LODWORD(STACK[0x4E44]) | LODWORD(STACK[0x4DD8]);
  LODWORD(STACK[0x42A4]) = LODWORD(STACK[0x4E38]) | LODWORD(STACK[0x4DA8]);
  LODWORD(STACK[0x4298]) = v5 | LODWORD(STACK[0x4E90]);
  LODWORD(STACK[0x4290]) = a4 | LODWORD(STACK[0x4E80]);
  return (*(STACK[0x57D8] + 8 * (v4 ^ 0x631E)))();
}

uint64_t sub_10014F278(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v19 = (((v11 ^ v18) & v13) << v15) ^ ((v11 ^ v18) >> v14);
  v20 = a6 & (4 * ((v19 ^ (2 * (v19 & v16))) & v16)) ^ v19 ^ (2 * (v19 & v16));
  v21 = *((v20 ^ 0x7A0 ^ (16 * (v20 & v16)) & (4 * (v16 & a4)) & v12) + v17 + 2845);
  HIDWORD(v22) = *(a8 + 2577);
  LODWORD(v22) = (v21 ^ 0x80) << 24;
  v23 = 16 * ((v22 >> 28) ^ ~*(v17 + ((v22 >> 28) ^ 0x5Bu) + 1294));
  v24 = v23 & 0x30 | (*(v17 + (((v21 & 0xF) + v9) ^ 0xEu) + 2584) ^ 0x77) & ~v23;
  v25 = *(v17 + (v24 ^ 0xD7u) + 22879);
  v26 = (((v25 ^ 0xAE) + 82) ^ ((v25 ^ 0xDC) + 36) ^ ((v25 ^ 0x77) - 119)) - (((v24 ^ 0xBA) + 118) ^ ((v24 ^ 0x83) + 77) ^ ((v24 ^ 0x24) - 20)) - 22;
  v27 = v26 ^ 0x6E;
  v28 = v26 & 0xC8 ^ 0xB5;
  v29 = (v26 ^ (2 * (v27 & (2 * (v27 & (2 * (v27 & (2 * (v27 & (2 * (v27 & (2 * (v27 & 0x26 ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28))) ^ 0x67;
  *(STACK[0x8070] + v10 % 0x3282) = *(STACK[0x8070] + 12337 * v29 - 12930 * (((1328683 * (12337 * v29)) >> 32) >> 2));
  return (*(STACK[0x57D8] + 8 * ((6658 * (v11 == 255)) ^ v8)))();
}

uint64_t sub_10014F45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(*(a7 + 4000) + 4 * (v7 % 0x2240));
  *(*(a7 + 4008) + v9 - 5896 * ((((v9 >> 3) * v10) >> 64) >> 4)) = (((v12 ^ 0xBD) - 113) ^ ((v12 ^ 0x6C) + 96) ^ ((v12 ^ 0x20) + 20)) + 89;
  return (*(STACK[0x57D8] + 8 * ((28584 * (v8 == 0)) ^ v11)))();
}

uint64_t sub_10014F4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0xBD78];
  v9 = STACK[0x57D8];
  v10 = STACK[0x5E38];
  STACK[0x98C8] = *(STACK[0x57D8] + 8 * v7);
  return (*(v9 + 8 * (v7 - 15534 + (v7 ^ 0x43F4))))(927787769, v8, a3, a4, a5, STACK[0x57C0], a7, v10);
}

uint64_t sub_10014F568()
{
  v2 = *(v1 + 295);
  v3 = *(v1 + 2032);
  v4 = v3 & 0xFFFFFFF8;
  v5 = *STACK[0x51F0];
  v6 = *STACK[0x51E8] & 0xFFFFFFF8;
  v7 = *(v5 + (v6 & ((v3 & 0xFFFFFFF8) - 1831847764)));
  *(v1 + 1788) = v2;
  v8 = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  v9 = (v7 + v8) ^ 0xC2AF3EAA3FF1B8E4;
  v10 = v9 ^ __ROR8__(v7, 61);
  v11 = __ROR8__(v9, 8);
  v12 = (((2 * ((v11 + v10) ^ 0x3FC96F64900D73AALL)) | 0x4F40A9387E8EFA0ALL) - ((v11 + v10) ^ 0x3FC96F64900D73AALL) + 0x585FAB63C0B882FBLL) ^ 0xFD9B6F25B7C7BA53;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0x6FF046966119128DLL;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0xA1B29DC5D776132BLL;
  v17 = __ROR8__(v16, 8);
  v18 = v16 ^ __ROR8__(v15, 61);
  v19 = (v17 + v18 - ((2 * (v17 + v18)) & 0x85E7EA77C4F4B2) + 0x42F3F53BE27A59) ^ 0xEF46D3B4CE0732B5;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0xD8C7B31FCA19D9DELL;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0x5455012E8AB1C38FLL;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  LOBYTE(v3) = 8 * (v3 & 7);
  *(v1 + 1789) = ((0x1007CDCA5DF7241 - ((v25 + v24) ^ 0xC397FCB096E0BD16 | 0x1007CDCA5DF7241) + ((v25 + v24) ^ 0xC397FCB096E0BD16 | 0xFEFF83235A208DBELL)) ^ 0x52271F2FC2C26E48) >> v3;
  v26 = *(v5 + (v6 & (((v4 - 379480798) | 0xF96883) - ((10382045 - v4) & 0xF96881) - 1452366966)));
  v27 = (v26 + v8) ^ 0xC2AF3EAA3FF1B8E4;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0x65F254DD188DB4FCLL;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x6FF046966119128DLL;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = __ROR8__((((2 * (v33 + v32)) | 0x13DEC665EBC07FCALL) - (v33 + v32) - 0x9EF6332F5E03FE5) ^ 0xA85DFEF722962CCELL, 8);
  v35 = (((2 * (v33 + v32)) | 0x13DEC665EBC07FCALL) - (v33 + v32) - 0x9EF6332F5E03FE5) ^ 0xA85DFEF722962CCELL ^ __ROR8__(v32, 61);
  v36 = (v34 + v35 - ((2 * (v34 + v35)) & 0xC4D202304F75E022) + 0x6269011827BAF011) ^ 0x8D6D2159D25FB8FDLL;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (((2 * (v38 + v37)) | 0x8ABCE87C343F3B80) - (v38 + v37) - 0x455E743E1A1F9DC0) ^ 0x9D99C721D006441ELL;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0x5455012E8AB1C38FLL;
  *(STACK[0x8070] + 7955) ^= v2 ^ (((__ROR8__(v41, 8) + (v41 ^ __ROR8__(v40, 61))) ^ 0x6F4F60BC0E025EE0uLL) >> v3);
  v42 = (STACK[0x8070] + 7362);
  *(v1 + 2040) = v42;
  *(v1 + 2055) = *v42;
  v43 = *(v1 + 3920) + 9;
  *(v1 + 296) = v43;
  v44 = STACK[0x57D8];
  v45 = *(STACK[0x57D8] + 8 * (LODWORD(STACK[0x4D68]) ^ 0x7316));
  *(v1 + 2056) = v43;
  *(v1 + 280) = v45;
  return (*(v44 + 8 * (v0 + 8890)))();
}

uint64_t sub_10014F9D4()
{
  v1 = (v0 - 19441865) & 0xFFBA3DFC;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v1 ^ 0xFE9270F5)))();
  STACK[0xA2C8] = 0;
  return (*(v2 + 8 * (((v1 == 1400223388) * (v1 + 23998961)) ^ (v1 + 23988447))))(v3);
}

uint64_t sub_10014FB00@<X0>(int a1@<W8>)
{
  *STACK[0x4968] = v1;
  v5 = v3 == -769884010 && v2 != -769884016;
  return (*(STACK[0x57D8] + 8 * (((a1 ^ 0x65DA ^ (((a1 + 1321253371) & 0xB13F39FD) + 9869)) * v5) ^ a1)))();
}

uint64_t sub_10014FC18()
{
  v0 = STACK[0x1154];
  v1 = LODWORD(STACK[0x1154]) ^ 0x3C87;
  v2 = STACK[0x57D8];
  STACK[0xB568] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1154]));
  return (*(v2 + 8 * ((v1 - 4535) ^ v0)))();
}

uint64_t sub_10014FD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = *(STACK[0xE458] + 4);
  v6 = *(STACK[0xE458] + 16);
  v7 = *(STACK[0xE458] + 24);
  v8 = *(STACK[0xE458] + 352);
  v9 = STACK[0xE458] + 228;
  v10 = *(STACK[0xE458] + 244);
  v11 = *(STACK[0xE458] + 344);
  v12 = STACK[0x57D8];
  STACK[0x8420] = *(STACK[0x57D8] + 8 * a5);
  return (*(v12 + 8 * (a5 ^ 0x10E7)))(v5, v8, v6, v7, 1, v9, v11, v10);
}

uint64_t sub_100150078@<X0>(int a1@<W8>)
{
  *(v1 + v2) = v3;
  *(v1 - 0x308E083E0C524CBELL) = v3;
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_10015012C()
{
  v0 = LODWORD(STACK[0xC54]) | 0x4018;
  STACK[0x5BE0] = 0;
  v1 = STACK[0x57D8];
  v2 = STACK[0xC68];
  STACK[0xBDE0] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0xC68]));
  return (*(v1 + 8 * ((v0 ^ 0x4964) + v2)))(0x308E083E0C524CBELL);
}

uint64_t sub_100150238@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, int a6@<W8>)
{
  LODWORD(STACK[0x4F80]) = a6 ^ 0xFA29D003;
  v7 = (v6 - 60) * *(STACK[0x53F0] + ((0x89917B0C % LODWORD(STACK[0x5420]) - ((2 * (0x89917B0C % LODWORD(STACK[0x5420]))) & 0x8F) + 71) ^ 0x47)) - 107;
  v8 = v7 & 0xD8 | 4;
  v9 = v7 ^ (2 * ((v7 ^ 0x50) & (2 * ((v7 ^ 0x50) & (2 * ((v7 ^ 0x50) & (2 * ((v7 ^ 0x50) & (2 * ((v7 ^ 0x50) & (2 * v8) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8));
  v10 = (((v9 ^ 0xED) - 4) ^ ((v9 ^ 0x8B) - 98) ^ ((v9 ^ 0xEA) - 3)) - (((v9 ^ 0x66) - 67) ^ ((v9 ^ 0xDE) + 5) ^ ((v9 ^ 0xEB) + 50));
  v11 = *(a5 + (v9 ^ 0x16u) + 46720);
  v12 = v10 + (((v11 ^ 0xC3) + 61) ^ ((v11 ^ 0x2D) - 45) ^ ((v11 ^ 0x53) - 83));
  v13 = v12 + 28;
  v14 = ((-29 - v12) & 0x90 | 0x4C) ^ (v12 + 28) & 0x98;
  v15 = v13 ^ (2 * ((v13 ^ 0x10) & (2 * ((v13 ^ 0x10) & (2 * ((v13 ^ 0x10) & (2 * ((v13 ^ 0x10) & (2 * ((v13 ^ 0x10) & (2 * v14) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14));
  v16 = ((((v15 ^ 0xA7) + 14) ^ ((v15 ^ 0xCF) + 102) ^ ((v15 ^ 0x1E) - 75)) + 22) % LODWORD(STACK[0x5420]);
  v17 = *(a5 + (((8 * (v16 & 0x1F)) | (v16 >> 5)) ^ 0xF) + 66496);
  v18 = (*(STACK[0x53F0] + ((((((v17 >> 4) | (16 * v17)) ^ 0x25) - 74) ^ ((((v17 >> 4) | (16 * v17)) ^ 0x97) + 8) ^ ((((v17 >> 4) | (16 * v17)) ^ 0x93) + 4)) - 78)) + 76);
  v19 = *(STACK[0x53F0] + ((v18 | ((v18 < 0x40) << 8)) - 64) % LODWORD(STACK[0x5420])) - 78;
  v20 = (*(STACK[0x53F0] + ((v19 | ((v19 < 0x46) << 8)) - 70) % LODWORD(STACK[0x5420])) + 8);
  LODWORD(STACK[0x5790]) = ((((v20 | ((v20 < 0x4C) << 8)) - 76) % LODWORD(STACK[0x5420])) ^ 0xBF3F5BFB) - 2066187308 + ((2 * (((v20 | ((v20 < 0x4C) << 8)) - 76) % LODWORD(STACK[0x5420]))) & 0x7E7EB7F6);
  v21 = *(STACK[0x57D8] + 8 * ((4546 * (v6 > 0x3CAB5AB7)) ^ (v6 + 1979160322)));
  LODWORD(STACK[0x57B0]) = v6 + 1979164803;
  LODWORD(STACK[0x57C0]) = v6 + 1979177907;
  return v21(0, a1, a2, 3849212570, 2837116326, a3, a4, 1508066616);
}

uint64_t sub_10015072C@<X0>(int a1@<W7>, int a2@<W8>)
{
  v2 = *(STACK[0x5358] + (LODWORD(STACK[0x5268]) & ((STACK[0x5338] ^ 0x7CFBC18F) - 46106741 + (STACK[0x5510] & 0xF9F78310))));
  v3 = (((2 * (v2 + STACK[0x5360])) | 0x22CC24CE9AB5F5D6) - (v2 + STACK[0x5360]) + 0x6E99ED98B2A50515) ^ 0x29EE13B3AC9D99B8;
  v4 = v3 ^ __ROR8__(v2, 61);
  v5 = __ROR8__(v3, 8);
  v6 = (((2 * (v5 + v4)) & 0x7D8C64912526A684) - (v5 + v4) - 0x3EC6324892935343) ^ 0xF9F17CDD8A69C4CALL;
  v7 = v6 ^ __ROR8__(v4, 61);
  v8 = (__ROR8__(v6, 8) + v7) ^ 0xE580B17D8CC5E551;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = __ROR8__(v8, 8);
  v11 = __ROR8__((v10 + v9 - ((2 * (v10 + v9)) & 0xF7ACCE877F60B390) + 0x7BD66743BFB059C8) ^ 0x9A779A186EE5A0B2, 8);
  v12 = (v10 + v9 - ((2 * (v10 + v9)) & 0xF7ACCE877F60B390) + 0x7BD66743BFB059C8) ^ 0x9A779A186EE5A0B2 ^ __ROR8__(v9, 61);
  v13 = (v11 + v12) ^ 0xDA604B0C03A2BF99;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0xFA35E2CDCB3E31C7;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(STACK[0x5368]) = LODWORD(STACK[0x57C0]) ^ (((__ROR8__(v17, 8) + (v17 ^ __ROR8__(v16, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x57B0]);
  v18 = *(STACK[0x5450] + (STACK[0x5480] & STACK[0x51B0]));
  v19 = v18 + STACK[0x56E0];
  v20 = v19 ^ 0xB88801D4E1C76353 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19 ^ 0xB88801D4E1C76353, 8) + v20;
  v22 = __ROR8__(v20, 61);
  STACK[0x5130] = v22;
  v23 = (v21 - ((2 * v21) & 0x93252291E97684A0) - 0x366D6EB70B44BDB0) ^ 0xF15A202213BE2A27 ^ v22;
  v24 = __ROR8__((v21 - ((2 * v21) & 0x93252291E97684A0) - 0x366D6EB70B44BDB0) ^ 0xF15A202213BE2A27, 8);
  v25 = (v24 + v23 - ((2 * (v24 + v23)) & 0xAD96C31685233F2ALL) + 0x56CB618B42919F95) ^ 0xB34BD0F6CE547AC4;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (((2 * (v27 + v26)) | 0xCB1C07137BFC6E4ELL) - (v27 + v26) + 0x1A71FC764201C8D9) ^ 0x42FFED26CABCE5DLL;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0xDA604B0C03A2BF99;
  v31 = __ROR8__(v30, 8);
  v32 = v30 ^ __ROR8__(v29, 61);
  v33 = (v31 + v32) ^ 0xFA35E2CDCB3E31C7;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0xD2F00CE620E5D3AELL;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = *(STACK[0x5620] + (STACK[0x5460] & ((a2 & 0xDE80C0D0) + (a2 | 0xDE80C0D0) - 1682212792)));
  LODWORD(STACK[0x53A8]) = LODWORD(STACK[0x5790]) ^ (((((2 * (v37 + v36)) & 0xAA61F830B2E2F130) - (v37 + v36) - 0x5530FC1859717899) ^ 0x5EBC08D608FEF21CLL) >> STACK[0x5780]);
  v39 = (v38 + STACK[0x56F0]) ^ 0xB88801D4E1C76353;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0x38C8B16AE7056877;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (((v43 + v42) | 0xBD5B779D38BD59CALL) - ((v43 + v42) | 0x42A48862C742A635) + 0x42A48862C742A635) ^ 0x58DBC6E0B478BC9BLL;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ 0xE1A1FD5BD155F97ALL;
  v47 = __ROR8__(v46, 8);
  v48 = v46 ^ __ROR8__(v45, 61);
  v49 = (((2 * (v47 + v48)) | 0xF5D9475E848E7A60) - (v47 + v48) - 0x7AECA3AF42473D30) ^ 0xA08CE8A341E582A9;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0xFA35E2CDCB3E31C7;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (((v53 + v52) | 0xB02214C80FB632E6) - ((v53 + v52) | 0x4FDDEB37F049CD19) + 0x4FDDEB37F049CD19) ^ 0x62D2182E2F53E148;
  LODWORD(STACK[0x53A0]) = LODWORD(STACK[0x5670]) ^ (((__ROR8__(v54, 8) + (v54 ^ __ROR8__(v52, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5378]);
  v55 = *(STACK[0x54C0] + (STACK[0x53F8] & ((STACK[0x54B0] ^ 0xA997A99C) - 794521732 + ((2 * STACK[0x54B0]) & 0x532F5330))));
  v56 = (v55 + STACK[0x5600]) ^ 0xB88801D4E1C76353;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ 0x38C8B16AE7056877;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ 0xE580B17D8CC5E551;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = (__ROR8__(v60, 8) + v61) ^ 0xE1A1FD5BD155F97ALL;
  v63 = __ROR8__(v62, 8);
  v64 = v62 ^ __ROR8__(v61, 61);
  v65 = (((2 * (v63 + v64)) & 0x1A9B73E04615C210) - (v63 + v64) - 0xD4DB9F0230AE109) ^ 0x28D20D03DF57A16ELL;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ 0xFA35E2CDCB3E31C7;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = __ROR8__(v67, 8);
  v70 = (((2 * (v69 + v68)) | 0xFECB299331425B98) - (v69 + v68) + 0x9A6B36675ED234) ^ 0x2D95982FB844FE62;
  v71 = v70 ^ __ROR8__(v68, 61);
  v72 = __ROR8__(v70, 8);
  LODWORD(STACK[0x5348]) = LODWORD(STACK[0x5740]) ^ (((((2 * (v72 + v71)) | 0xA4D77C1CF7D9E6FELL) - (v72 + v71) + 0x2D9441F184130C81) ^ 0x2618B53FD59C8604) >> STACK[0x5700]);
  LODWORD(v71) = LODWORD(STACK[0x53D0]) == a1 - 11843;
  v73 = STACK[0x4FC0] + LODWORD(STACK[0x52E8]);
  LODWORD(v63) = *v73;
  v74 = *STACK[0x51F0];
  STACK[0x5220] = *STACK[0x51E8];
  STACK[0x5298] = v74;
  STACK[0x5260] = v73 & 0xFFFFFFFFFFFFFFF8;
  STACK[0x52A8] = __ROR8__(v73 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x52C8] = 8 * (v73 & 7);
  LODWORD(STACK[0x52D0]) = v63 ^ 0x2D;
  LODWORD(STACK[0x52E8]) = LODWORD(STACK[0x5008]) + 42;
  STACK[0x52F8] = 42;
  LODWORD(STACK[0x5398]) = 61;
  return (*(STACK[0x57D8] + 8 * ((244 * v71) ^ a1)))();
}

uint64_t sub_1001510CC(uint64_t a1, uint64_t a2)
{
  v5 = *(STACK[0x57D8] + 8 * (v2 - 8896));
  *&STACK[0x5560] = v3;
  return v5(a2);
}

uint64_t sub_100151164()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x241B)))();
  STACK[0xCF08] = 0;
  return (*(v1 + 8 * (v0 - 16402)))(v2);
}

uint64_t sub_1001511E8(uint64_t a1)
{
  v1 = STACK[0x3A00];
  v2 = STACK[0x57D8];
  v3 = 3 * LODWORD(STACK[0x39FC]);
  STACK[0x6570] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x3A00]));
  return (*(v2 + 8 * ((v1 + 2159) ^ v1 ^ (((2 * v3) ^ 0x3273) * (STACK[0x5610] == 0)))))(a1, 38, 106);
}

uint64_t sub_100151268@<X0>(int a1@<W0>, int a2@<W2>, int a3@<W3>, int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W8>)
{
  LODWORD(STACK[0x5660]) = a1;
  LODWORD(STACK[0x56F0]) = v8;
  v20 = 197 * (v8 ^ 0x3D36);
  v21 = (v11 ^ 0xBA2278E4) & (2 * (v11 & 0xBA8372C9)) ^ v11 & 0xBA8372C9;
  v22 = 2 * (v11 ^ 0xBF243964);
  LODWORD(STACK[0x5570]) = v20;
  v23 = v22 & (v20 ^ 0x5A70814);
  v24 = (2 * v8) ^ 0x228A;
  v25 = (v22 ^ 0xB4E975A) & (v11 ^ 0xBF243964) ^ v23;
  LODWORD(STACK[0x5560]) = v24;
  v26 = ((4 * (v25 ^ (v24 + 77656143))) ^ 0x169D2EB4) & (v25 ^ (v24 + 77656143)) ^ (4 * (v25 ^ (v24 + 77656143))) & 0x5A74BAC;
  v27 = (v26 ^ 0x4850AA9) & (16 * ((v25 ^ 0xA60389) & (4 * v21) ^ v21)) ^ (v25 ^ 0xA60389) & (4 * v21) ^ v21;
  v28 = ((16 * (v26 ^ 0x1224109)) ^ 0x5A74BAD0) & (v26 ^ 0x1224109) ^ (16 * (v26 ^ 0x1224109)) & 0x5A74BA0;
  v29 = v11 ^ v10 ^ (2 * (((v27 ^ 0x5A74BAD ^ (v28 ^ 0x240A2D) & (v27 << 8)) << 16) & 0x5A70000 ^ v27 ^ 0x5A74BAD ^ (v28 ^ 0x240A2D) & (v27 << 8) ^ (((v27 ^ 0x5A74BAD ^ (v28 ^ 0x240A2D) & (v27 << 8)) << 16) ^ 0x4BAD0000) & (((v28 ^ 0x583412D) << 8) & 0x5A70000 ^ 0xA40000 ^ (((v28 ^ 0x583412D) << 8) ^ 0x274B0000) & (v28 ^ 0x583412D))));
  v30 = ((v15 ^ 0xE08CDB3D) - 1455028469) ^ ((v15 ^ 0x5C748B9B) + 364795821) ^ ((v15 ^ 0xBCF850A6) - 181236590);
  v31 = (((v29 ^ 0x36231DC0) - 1670684589) ^ ((v29 ^ 0xE40B7B39) + 1313015468) ^ ((v29 ^ 0x289AFAA3) - 2100132046)) - (((v17 ^ 0x5D0D4C70) + 912450991) ^ ((v17 ^ LODWORD(STACK[0x5540])) + 605708541) ^ ((v17 ^ 0xF2561F36) - 1724270871)) - 1923373919;
  v32 = ((v31 ^ 0x1005708D) - 1125130786) ^ v31 ^ ((v31 ^ 0x56A6389) - 1451176230) ^ ((v31 ^ 0x3AA5BF44) - 1773202923) ^ ((v31 ^ 0x7CDFFEEF) - 801811520);
  v33 = a7 + v12 - v30 - (((a6 ^ 0x6A2CA10A) - 1932361310) ^ ((a6 ^ 0xF08F5956) + 376535550) ^ ((a6 ^ 0x8C8D0F48) + 1785933796)) + 185500597 + (((a5 ^ 0x98515E98) + 122097732) ^ ((a5 ^ 0xE9A3EF6E) + 1991614902) ^ ((a5 ^ 0xE510F070) + 2047262380));
  v35 = ((v33 ^ 0x5A8D2B7A) - 531614971) ^ v33 ^ ((v33 ^ 0x9600EA1E) + 752743009) ^ ((v33 ^ 0x76F0D90A) - 869416587) ^ ((v33 ^ LODWORD(STACK[0x5530])) + 1166206866) ^ a2 ^ a3;
  v36 = v13 ^ v9 ^ v14 ^ v16 ^ v18 ^ v19 ^ a3 ^ __ROR4__(v7, 24);
  v37 = (((v36 ^ 0xBD3A5F5B) + 442102449) ^ ((v36 ^ 0xE54F9834) + 1110193632) ^ ((v36 ^ 0xFA666C05) + 1560658415)) - 1364903693 + (((v32 ^ 0xF60F09F) + 1600778430) ^ ((v32 ^ 0x68DECEAC) + 953667215) ^ ((v32 ^ 0x6EBF820F) + 1052148270));
  v38 = ((v37 ^ 0x140531DA) - 421055054) ^ v37 ^ ((v37 ^ 0x5D8FC3F8) - 1351759980) ^ ((v37 ^ 0x3B68F649) - 913640925) ^ ((v37 ^ 0x7FFFFFFF) - 1927414891);
  v39 = ((v35 ^ LODWORD(STACK[0x2ECC])) - 1548099380) ^ ((v35 ^ 0x885E26C7) + 318219823) ^ ((v35 ^ 0xC5C474F6) + 1601041440);
  v40 = (((LODWORD(STACK[0x57C0]) ^ a4 ^ a1 ^ 0x12E3E0DD) - 1211142800) ^ ((LODWORD(STACK[0x57C0]) ^ a4 ^ a1 ^ 0x303103A9) - 1793225188) ^ ((LODWORD(STACK[0x57C0]) ^ a4 ^ a1 ^ 0x88655CCB) + 759812474)) - (((a5 ^ 0x24F00315) - 1090537030) ^ ((a5 ^ 0x514961C1) - 884548754) ^ ((a5 ^ 0x28B9E358) - 1296672267)) + 562490055 + (((a2 ^ 0x2B262BE3) - 43471746) ^ ((a2 ^ 0x1CB15D2C) - 889201997) ^ ((a2 ^ 0x179EB98) - 684233721));
  v41 = ((v40 ^ 0x7B302365) - 830660379) ^ v40 ^ ((v40 ^ 0x96E229E2) + 598682212) ^ ((v40 ^ 0x599D0906) - 321910136) ^ ((v40 ^ 0xFEFDFFFF) + 1269890175) ^ a3;
  v42 = (v17 & 0xE73E431E ^ 0x26022626) & (v41 ^ 0x70E5B2A) ^ v41 & 0x63366420;
  LODWORD(v43) = __ROR4__(v38 ^ 0x3118ABD0, 17) ^ 0x70A3875D;
  HIDWORD(v43) = v43;
  v44 = ((v41 ^ 0xAF585A43) + 1860985465) ^ ((v41 ^ 0xDDE379C6) + 475480574) ^ ((v41 ^ 0xE53470EE) + 612387030);
  v45 = v39 - (((v17 ^ 0xF06EEB19) + 1090582405) ^ ((v17 ^ 0xB25D1A4D) + 53675729) ^ ((v17 ^ LODWORD(STACK[0x2ED0])) + 1062993212)) + (((v32 ^ 0x2D534ADF) + 2140704783) ^ ((v32 ^ 0x29D2B4A5) + 2065264245) ^ ((v32 ^ 0xB8F97984) - 365780138)) + 960946863 + ((((v43 >> 15) ^ 0x95B064F3) + 1266143757) ^ (((v43 >> 15) ^ 0x35E1598B) - 349769867) ^ (((v43 >> 15) ^ 0x8741A1D9) + 1501959975));
  v46 = (v45 ^ 0x4960CE26) & (2 * (v45 & 0x6D72EF37)) ^ v45 & 0x6D72EF37;
  v47 = ((2 * (v45 ^ 0x11444C00)) ^ 0xF86D466E) & (v45 ^ 0x11444C00) ^ (2 * (v45 ^ 0x11444C00)) & 0x7C36A336;
  v48 = v47 ^ 0x412A111;
  v49 = (v47 ^ 0x78040024) & (4 * v46) ^ v46;
  v50 = ((4 * v48) ^ 0xF0DA8CDC) & v48 ^ (4 * v48) & 0x7C36A334;
  v51 = (v50 ^ LODWORD(STACK[0x2ED8])) & (16 * v49) ^ v49;
  v52 = ((16 * (v50 ^ 0xC242323)) ^ 0xC36A3370) & (v50 ^ 0xC242323) ^ (16 * (v50 ^ 0xC242323)) & 0x7C36A330;
  v53 = v51 ^ 0x7C36A337 ^ (v52 ^ 0x40222300) & (v51 << 8);
  v54 = v45 ^ (2 * ((v53 << 16) & 0x7C360000 ^ v53 ^ ((v53 << 16) ^ 0x23370000) & (((v52 ^ 0x3C148007) << 8) & 0x7C360000 ^ 0x48140000 ^ (((v52 ^ 0x3C148007) << 8) ^ 0x36A30000) & (v52 ^ 0x3C148007))));
  v55 = a4 ^ LODWORD(STACK[0x2EDC]) ^ LODWORD(STACK[0x5700]) ^ a6;
  v56 = v44 + (((v17 & 0xE73E431E ^ 0xD11B4DE8) - 1778468920) ^ ((v17 & 0xE73E431E ^ 0xA46585B2) - 528449634) ^ ((v17 & 0xE73E431E ^ LODWORD(STACK[0x2ED4])) + 1957654644)) + ((2 * v42) ^ 0xF9F37FBF) + (v32 ^ 0x93FFB5B6) - 1477256057 + (v38 ^ 0x5CA7E335);
  v57 = ((v56 + 1253216822 - ((2 * v56) & 0x9565246C)) ^ 0x6CBA92AC ^ v54 ^ 0x9FC13B6F) + 2 * ((v54 ^ 0x39C93BF5) & v56);
  v58 = (LODWORD(STACK[0x5710]) - (a4 ^ 0xEFE44649) - 1089797231 - ((2 * (LODWORD(STACK[0x5710]) - (a4 ^ 0xEFE44649))) & 0x7E160722)) ^ a1;
  v59 = STACK[0x5680];
  v60 = STACK[0x5670];
  v61 = (((2 * v32) & 0x2CFE6FA4 ^ 0xDBD5DAFB) - 1850635858 + (((v32 ^ 0x85F1240D) + 1378474119) ^ ((v32 ^ 0x7F9AAAFA) - 1472047502) ^ ((v32 ^ 0xA97EDC58) + 2124816596))) ^ (((v55 + 493795113 - ((2 * v55) & 0x3ADD6E52)) ^ 0xB8A41AA8 ^ LODWORD(STACK[0x5680])) + (a2 ^ 0x837CF954) + (LODWORD(STACK[0x5670]) ^ 0x320615C4) + (v17 ^ 0xBDF349BA) + 1);
  LODWORD(STACK[0x57C0]) = v38 ^ 0x47023683;
  v62 = (((2 * v54) & 0x1084EBFC ^ 0x8442B0) + ((v61 + 1243598103 - ((2 * v61) & 0x943F9A2E)) ^ 0x880AE92F ^ v38 ^ 0x47023683) - (((v54 ^ 0xC02470FA) - 1608862613) ^ ((v54 ^ 0x33D1C3E) + 1661196463) ^ ((v54 ^ 0x166AC59D) + 1985216782)) + 755693516) ^ v57;
  v63 = v17;
  v64 = ((((v58 + 493795113 - ((2 * v58) & 0x3ADD6E52)) ^ 0x6F3E772 ^ v59) + (a2 ^ 0x90C45669) + (v17 ^ 0xD02F7717) - (v60 ^ 0xE61E3B3D) + 2) ^ 0x53000023 ^ v32 & 0xDF028573) + (v38 ^ 0xD0C99F8A) + (v54 ^ LODWORD(STACK[0x5520])) + (v57 ^ 0xDB313437) - ((v62 ^ 0xCDEBBA48) & 0x353EC385) + 3;
  v65 = (a2 ^ 0x6B77F577) + ((LODWORD(STACK[0x5720]) + (a4 ^ 0x9B17D87F) + (a6 ^ 0x8F71DBEA) + 493795113 - ((2 * (LODWORD(STACK[0x5720]) + (a4 ^ 0x9B17D87F) + (a6 ^ 0x8F71DBEA))) & 0x3ADD6E52)) ^ 0xDB31F76F ^ v59);
  v66 = a3 ^ (v65 - 1631065386 - ((2 * v65) & 0x3D8FD5AC));
  v67 = v66 + 1870603419 - ((2 * v66) & 0xDEFE4936);
  v68 = (v62 ^ 0xFDD7211F) + (((v54 & 0x5C2BD6A8 ^ 0x54238008) + ((((((2 * a2) & 0x758FBB38 ^ 0xEAF85CDF) + 854146874 + (((a2 ^ 0x75E0E0F2) + 2023591778) ^ ((a2 ^ 0x3750E028) + 976064444) ^ ((a2 ^ 0xC813F12B) - 982606151))) ^ ((a4 & 0x35D1330E) + LODWORD(STACK[0x5730]) + (a6 ^ 0x11EED086) + (a5 ^ 0xFF4904AC) + 2)) + (v60 ^ 0x57E34808) + (v17 & 0xB0613A1B ^ 0x600A02) + (v32 ^ 0x90191112) + 1) ^ 0xC107210 ^ v38 & 0x5E307613)) ^ 0x1C64630D ^ v57) - (v64 ^ 0x287B638E);
  v69 = ((2 * a4) & 0xD97E2F00) - a4 + LODWORD(STACK[0x5740]) + (a6 ^ 0x3E61BD52) + (a5 ^ 0xFAA939FD) + (a2 ^ 0x93EC79D4) + 323020931 + (v60 ^ 0x8F9234E4);
  v70 = (v17 ^ 0xCB41ACC2 ^ (v69 + 1870603419 - ((2 * v69) & 0xDEFE4936))) - (v32 ^ 0xDDCD1C12);
  v71 = v38 ^ 0x47023683 ^ (v70 + 1243598103 - ((2 * v70) & 0x943F9A2E));
  v72 = (v57 ^ 0x389FFC06) + ((v71 + 1253216822 - ((2 * v71) & 0x9565246C)) ^ 0xE56009DE ^ v54 ^ 0x9FC13B6F) + (v62 ^ 0x6AA34056) + (v64 ^ 0x50F3873F);
  v73 = (a6 & 0xFFFF7FFF ^ 0x58D923AC ^ (a6 & 0x8000 | 0x9124F17)) + (a4 ^ LODWORD(STACK[0x5750]) ^ 0x49A7C725) + (a5 & 0x3876C112 ^ 0x428012) + (a2 & 0xC218B53E ^ 0x7DFF4ECF);
  v74 = (v32 ^ 0x2C5D7FFD) + (v17 ^ 0x6F51A035 ^ (v73 + (v60 & 0xFD19D7E5 ^ 0x54088281) + 1870603420 - ((2 * (v73 + (v60 & 0xFD19D7E5 ^ 0x54088281) + 1)) & 0xDEFE4936))) + (v38 ^ 0xCF77882C);
  v75 = v54 ^ 0x9FC13B6F ^ (v74 + 1253216822 - ((2 * v74) & 0x9565246C));
  v76 = (((v17 ^ 0xD214F8AB ^ v67) - (v32 ^ 0x5735563D)) ^ LODWORD(STACK[0x2EE0]) ^ v38 & 0x48CBB108) + (v54 ^ 0xBD6BA3D6) + (v57 ^ 0xE73DDCFF) + (v62 ^ 0x2FBC2221) + (v64 ^ 0xEF925580) + (v68 ^ 0x2A0C5045) + 3;
  v77 = a4 + (a6 ^ LODWORD(STACK[0x2EE4])) + (a5 ^ 0x84A06434) + (a2 ^ 0x9092D4D8) + 2;
  v78 = v76 ^ v68 ^ v72;
  v79 = (v68 ^ 0x1F31F80) + (v64 ^ 0x5AA9508E ^ ((v75 ^ 0xE020E886 ^ v57) + 2 * ((v57 ^ 0x4AC7BD35) & (v75 ^ 0x2AE755B3)) + (v62 ^ 0xCDEBBA48) - ((2 * (v62 ^ 0xCDEBBA48)) & 0xD719A266) - 343092941)) + (v76 ^ 0xA86BDA7D) + (v78 ^ 0x9E1F4175);
  v80 = v32 ^ 0x28270374 ^ (((v77 - 1631065386 - ((2 * v77) & 0x3D8FD5AC)) ^ 0x91A4F8A0 ^ a3) - (v63 ^ 0x15CBE2DC) + 2066895323 - ((2 * (((v77 - 1631065386 - ((2 * v77) & 0x3D8FD5AC)) ^ 0x91A4F8A0 ^ a3) - (v63 ^ 0x15CBE2DC))) & 0xF664A3B6));
  v81 = (((a5 & 0x7665D06D ^ 0x241806C) - 1089797231 - ((2 * (a5 & 0x7665D06D ^ 0x241806C)) & 0x6C020002)) ^ LODWORD(STACK[0x5660])) + (a2 ^ 0x57565F59) + (v60 ^ 0x701BE072) + 1;
  LODWORD(STACK[0x5740]) = (v57 & 0xF14B7BD2 ^ ((v54 ^ 0xFA0E6C8C) + ((v80 + 1243598103 - ((2 * v80) & 0x943F9A2E)) ^ 0xB5382841 ^ LODWORD(STACK[0x57C0])))) + ((v62 ^ 0xCDEBBA48) & 0x59D414BA) - v64 + ((2 * v64) & 0xFB8ACDFC) + (v68 & 0x1D15A3D3) + (v76 ^ 0x80E6FE24) + 37394691 + (v78 ^ LODWORD(STACK[0x5510])) + (v79 ^ 0xC9E19F22);
  v82 = (v63 ^ 0xFB025F4B ^ v81) + 2 * ((v63 ^ 0xFB025F4B) & v81);
  v83 = ((((v82 + 2066895323 - ((2 * v82) & 0xF664A3B6)) ^ 0x7442B61D ^ v32 ^ 0x28270374) + (v38 ^ 0x8C535A28) + (v54 ^ 0xEFEEC32C) + (v57 ^ 0xCC27CE6E) + (v62 ^ 0x878CEB8F) + 3) ^ 0x9088AAD ^ v64) - (v68 ^ 0xBC2E05D9);
  v84 = (31 * ((v83 & 0x8000000 & v76) == 0)) ^ LODWORD(STACK[0x56F0]);
  LODWORD(STACK[0x57C0]) = v83 & 0xF7FFFFFF;
  return (*(STACK[0x57D8] + 8 * v84))();
}

uint64_t sub_100152900()
{
  v1 = STACK[0x51B8];
  *STACK[0xE118] = 0x67310FA72B6EDB77 * v0 + 0x74F849547AEC43BELL;
  return (*(STACK[0x57D8] + 8 * (v1 - 14128)))();
}

uint64_t sub_100152980()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x1901)))(872);
  STACK[0x6DC0] = v2;
  return (*(v1 + 8 * (((((v2 == 0) ^ (v0 - 56)) & 1) * (((v0 - 25919) | 1) + 111)) ^ v0)))();
}

uint64_t sub_100152A24()
{
  v1 = (STACK[0x51B8] + 6404) | 0x404;
  v2 = STACK[0x51B8] ^ 0x6F3C;
  LODWORD(STACK[0x6FA8]) = v0;
  return (*(STACK[0x57D8] + 8 * ((((v1 - 15868) ^ v2) * (v0 != -143113071)) | LODWORD(STACK[0x2B64]))))();
}

uint64_t sub_100152AEC()
{
  v0 = STACK[0x19C8];
  v1 = STACK[0x19C8] ^ 0x3B44;
  v2 = STACK[0x57D8];
  STACK[0xB568] = *(STACK[0x57D8] + 8 * STACK[0x19C8]);
  return (*(v2 + 8 * ((v1 - 6006) ^ v0)))();
}

uint64_t sub_100152B54(int a1, int a2, int a3)
{
  v7 = ((a3 << 8) ^ 0x6B6100) + a2 * v6 + 574249394 - (((((((a3 << 8) ^ 0x6B6100u) + a2 * v6 + 574249394) >> 3) * v5) >> 32) >> 7) * v3;
  v4[v7] = -57;
  v8 = ((a2 ^ 0xA6) + 53) ^ a2 ^ ((a2 ^ 0xAB) + 58) ^ ((a2 ^ 0x9F) + 14) ^ (109 - a2);
  v9 = v4[1288];
  if (((v8 ^ 0x6D) & 1) == 0)
  {
    v9 = -57;
  }

  v4[v7] = v9;
  v10 = v4[315];
  if ((((((a2 ^ 0xA6) + 53) ^ a2 ^ ((a2 ^ 0xAB) + 58) ^ ((a2 ^ 0x9F) + 14)) ^ (109 - a2)) & 2) == 0)
  {
    v10 = -57;
  }

  v11 = v9 ^ v10 ^ 0xC7;
  v4[v7] = v11;
  v12 = *STACK[0x5740];
  if (((v8 ^ 0x6D) & 4) == 0)
  {
    v12 = -57;
  }

  v13 = v11 ^ v12 ^ 0xC7;
  v4[v7] = v13;
  v14 = *STACK[0x5730];
  if (((v8 ^ 0x6D) & 8) == 0)
  {
    v14 = -57;
  }

  v15 = v13 ^ v14 ^ 0xC7;
  v4[v7] = v15;
  v16 = v4[3212];
  if ((((((a2 ^ 0xA6) + 53) ^ a2 ^ ((a2 ^ 0xAB) + 58) ^ ((a2 ^ 0x9F) + 14)) ^ (109 - a2)) & 0x10) == 0)
  {
    v16 = -57;
  }

  v17 = v15 ^ v16 ^ 0xC7;
  v4[v7] = v17;
  v18 = v4[2239];
  if (((v8 ^ 0x6D) & 0x20) == 0)
  {
    v18 = -57;
  }

  v19 = v17 ^ v18 ^ 0xC7;
  v4[v7] = v19;
  if (((v8 ^ 0x6D) & 0x40) != 0)
  {
    v20 = v4[1266];
  }

  else
  {
    v20 = -57;
  }

  v21 = v19 ^ v20 ^ 0xC7;
  v4[v7] = v21;
  if ((((((a2 ^ 0xA6) + 53) ^ a2 ^ ((a2 ^ 0xAB) + 58) ^ ((a2 ^ 0x9F) + 14)) ^ (109 - a2)) & 0x80) != 0)
  {
    v22 = v4[293];
  }

  else
  {
    v22 = -57;
  }

  v23 = v21 ^ v22 ^ 0xC7;
  v4[v7] = v23;
  v24 = (a2 ^ 0xD3) & (2 * (a2 & 0x93)) ^ a2 & 0x93;
  v25 = ((v23 ^ 0xF4AF9E35) + 189817291) ^ ((v23 ^ 0x600A5C55) - 1611291733) ^ ((v23 ^ 0x94A5C2A7) + 1801076057);
  v26 = ((2 * (a2 ^ 0xF1)) ^ 0xC4) & (a2 ^ 0xF1) ^ (2 * (a2 ^ 0xF1)) & 0x62;
  v4[v25 * v6 + 9661785 - (((((v25 * v6 + 9661785) >> 3) * v5) >> 32) >> 7) * v3] = a2 ^ (2 * (((4 * v26) ^ 0x80) & (v26 ^ 0x40) & (16 * ((v26 ^ 0x40) & (4 * v24) ^ v24)) ^ (v26 ^ 0x40) & (4 * v24) ^ v24)) ^ 0x54;
  return (*(STACK[0x57D8] + 8 * ((2030 * (a2 + 1 == a1 + 256)) ^ a3)))();
}