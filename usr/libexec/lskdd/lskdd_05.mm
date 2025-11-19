uint64_t sub_100152F04()
{
  LODWORD(STACK[0xDA50]) = 4;
  LODWORD(STACK[0xDA4C]) = v0;
  return (*(STACK[0x57D8] + 8 * (v1 - 13222)))();
}

uint64_t sub_100152F30@<X0>(int a1@<W8>)
{
  STACK[0x5B00] = v1 + 2;
  v5 = *(v3 + (((v2 & 0xFFFFFFF8) - 103642729) & v4 & 0xFFFFFFF8));
  v6 = (v5 + __ROR8__(v2 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xF41651499F5E3C67;
  v7 = v6 ^ __ROR8__(v5, 61);
  v8 = __ROR8__(v6, 8);
  v9 = (((3769 * (a1 ^ 0x2695u) - 0x5B2DB83FFFD74958) | (2 * (v8 + v7))) - (v8 + v7) - 0x526923E00014877FLL) ^ 0x475B610E3CE4ED36;
  v10 = v9 ^ __ROR8__(v7, 61);
  v11 = __ROR8__(v9, 8);
  v12 = (((2 * (v11 + v10)) & 0x708B127BC0015888) - (v11 + v10) + 0x47BA76C21FFF53BBLL) ^ 0x65CFA20527CA6A20;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (((v14 + v13) | 0xBE49C2227B602D66) - ((v14 + v13) | 0x41B63DDD849FD299) + 0x41B63DDD849FD299) ^ 0x5BE6D89155DD11BBLL;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xC7DDC9F6CC45B721;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (((2 * (v19 + v18)) | 0xC5EB58215E0CE3DALL) - (v19 + v18) - 0x62F5AC10AF0671EDLL) ^ 0xCAD38CB5F6D4AB95;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0x5F8DEC3EA3980A1BLL;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (((((2 * (v24 + v23)) & 0xEEA20B437BF2B528) - (v24 + v23) + 0x8AEFA5E4206A56BLL) ^ 0xC96D328CE6C3ED43) >> (8 * (v2 & 7u))) ^ *(v1 + 1);
  return (*(STACK[0x57D8] + 8 * ((23697 * ((((v25 ^ 0x68) - 73) ^ ((v25 ^ 0x37) - 22) ^ ((v25 ^ 0x5F) - 126)) == 231)) ^ a1)))();
}

uint64_t sub_100153288()
{
  v3 = *(v1 - 0x683CBC57EAB92A36);
  STACK[0x59B8] = v0;
  STACK[0x7C20] = 0;
  return (*(STACK[0x57D8] + 8 * (((v3 == 0x308E083E0C524CBELL) * (v2 ^ 0x6C24 ^ (3 * (v2 ^ 0x3838)))) ^ v2)))();
}

uint64_t sub_100153470()
{
  v0 = STACK[0xFCC] & 0x9C4EA7F7;
  v1 = STACK[0x57D8];
  STACK[0x7B40] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0xFB0]));
  return (*(v1 + 8 * (LODWORD(STACK[0xFAC]) ^ v0)))();
}

uint64_t sub_1001534D8@<X0>(unint64_t a1@<X0>, unint64_t a2@<X8>)
{
  STACK[0x56C0] = a2;
  v2 = STACK[0x49C0];
  STACK[0x5218] = LODWORD(STACK[0x49C8]) ^ 0x68u;
  v3 = *(STACK[0x57D8] + 8 * v2);
  STACK[0x55B0] = LODWORD(STACK[0x5078]);
  STACK[0x55C0] = a1;
  LODWORD(STACK[0x53E8]) = STACK[0x5550];
  LODWORD(STACK[0x53F8]) = STACK[0x55D0];
  LODWORD(STACK[0x53B0]) = STACK[0x55A0];
  LODWORD(STACK[0x5358]) = STACK[0x55E0];
  LODWORD(STACK[0x5378]) = STACK[0x5590];
  STACK[0x5570] = LODWORD(STACK[0x4F00]);
  LODWORD(STACK[0x4F58]) = STACK[0x54A0];
  return v3();
}

uint64_t sub_10015371C()
{
  STACK[0x9EC0] = &STACK[0xB86C];
  LODWORD(STACK[0x9E1C]) = -928869672;
  return (*(STACK[0x57D8] + 8 * (v0 - 16846)))();
}

uint64_t sub_10015380C()
{
  v2 = *(v0 + 2528);
  v3 = v2 & 0xFFFFFFF8;
  v4 = *STACK[0x51E8];
  v5 = *STACK[0x51F0];
  v6 = *(v5 + (v4 & ((v2 & 0x1EB53C60 | 0xE14AC39F) - 1831847764 + (v2 & 0xE14AC398 | 0x1EB53C61)) & 0xFFFFFFF8));
  v7 = *(v0 + 295);
  v8 = __ROR8__(v2 & 0xFFFFFFFFFFFFFFF8, 8);
  v9 = (0xE4D68DD6EEECDB74 - ((v6 + v8) ^ 0xA0CB7ACBCA899BC6 | 0xE4D68DD6EEECDB74) + ((v6 + v8) ^ 0xA0CB7ACBCA899BC6 | 0x1B2972291113248BLL)) ^ 0x794D3648E46B07A9;
  v10 = v9 ^ __ROR8__(v6, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0x65F254DD188DB4FCLL;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0x6FF046966119128DLL;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = __ROR8__(v13, 8);
  v16 = __ROR8__((v15 + v14 - ((2 * (v15 + v14)) & 0x8621F4A7448C0E42) - 0x3CEF05AC5DB9F8DFLL) ^ 0x62A267967530140ALL, 8);
  v17 = (v15 + v14 - ((2 * (v15 + v14)) & 0x8621F4A7448C0E42) - 0x3CEF05AC5DB9F8DFLL) ^ 0x62A267967530140ALL ^ __ROR8__(v14, 61);
  v18 = (((2 * (v16 + v17)) | 0x60AD654047B1F7A4) - (v16 + v17) + 0x4FA94D5FDC27042ELL) ^ 0x5F5292E1D63DB33ELL;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0xD8C7B31FCA19D9DELL;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (0xF1953CA294507216 - ((v22 + v21) | 0xF1953CA294507216) + ((v22 + v21) | 0xE6AC35D6BAF8DE9)) ^ 0x5A3FC273E11E4E66;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = __ROR8__(v23, 8);
  LOBYTE(v2) = 8 * (v2 & 7);
  *(v0 + 1894) = (((v25 + v24 - ((2 * (v25 + v24)) & 0x936CA8AF42FEEA96) - 0x3649ABA85E808AB5) ^ 0xA6F934EBAF7D2BABLL) >> v2) ^ v7;
  v26 = *(v5 + (((((v3 | 0xB6EA2973) + 1226167948 + (v3 | 0x4915D68C) + 1) & 0xFFFFFFF8) + 1236951584) & v4));
  v27 = (v26 + v8 - ((2 * (v26 + v8)) & 0x953E98F09606C1E2) + 0x4A9F4C784B0360F1) ^ 0x883072D274F2D815;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (v29 + v28 - ((2 * (v29 + v28)) & 0x64DD860445A22268) - 0x4D913CFDDD2EEECCLL) ^ 0xD79C97DF3A5CA5C8;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0x6FF046966119128DLL;
  v33 = __ROR8__(v32, 8);
  v34 = v32 ^ __ROR8__(v31, 61);
  v35 = (((2 * (v33 + v34)) & 0x88BFBEEF19585274) - (v33 + v34) - 0x445FDF778CAC293BLL) ^ 0x1A12BD4DA425C5EELL;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ v1;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0xD8C7B31FCA19D9DELL;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (((2 * (v41 + v40)) & 0x4A283691B69A90BCLL) - (v41 + v40) + 0x5AEBE4B724B2B7A1) ^ 0xEBEE599AE03742ELL;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = __ROR8__(v42, 8);
  **(v0 + 2512) = *(v0 + 2527) ^ v7 ^ (((((2 * (v44 + v43)) & 0xEC94882BA6171A3CLL) - (v44 + v43) + 0x9B5BBEA2CF472E1) ^ 0x66FADB5622F62C01) >> v2);
  v45 = *(v0 + 3920) + 40;
  *(v0 + 296) = v45;
  v46 = STACK[0x57D8];
  v47 = *(STACK[0x57D8] + 8 * (LODWORD(STACK[0x4D68]) + 29474));
  *(v0 + 2536) = v45;
  *(v0 + 280) = v47;
  return (*(v46 + 8 * (STACK[0x51B8] + 8890)))();
}

uint64_t sub_100153CA0@<X0>(unint64_t a1@<X8>)
{
  STACK[0x76E0] = a1;
  v2 = STACK[0x7ED8];
  STACK[0x8248] = &STACK[0x10120] + STACK[0x7ED8];
  v3 = &STACK[0x10120] + v2 + (v1 + 18500) - 20651;
  STACK[0x7ED8] = v2 + 64;
  *v3 = 0xF5A5064B3D610419;
  *(v3 + 1) = 0x1753068AC93073DBLL;
  *(v3 + 4) = 798430673;
  return (*(STACK[0x57D8] + 8 * (v1 ^ 0x474E)))();
}

void *sub_100153DF8@<X0>(int a1@<W8>)
{
  v1 = STACK[0x51B8];
  v2 = 7 * (STACK[0x51B8] ^ 0x5F5F);
  v3 = STACK[0x57D8];
  STACK[0x7F40] = *(STACK[0x57D8] + 8 * a1);
  STACK[0x8108] = 0;
  LODWORD(STACK[0x6EC4]) = 0;
  STACK[0xC6A0] = 0;
  LODWORD(STACK[0x7E60]) = 1280;
  LODWORD(STACK[0xCA4C]) = -42971;
  v4 = STACK[0x7ED8];
  STACK[0x8F78] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v4 + 80;
  STACK[0xCAA0] = 0;
  LODWORD(STACK[0x698C]) = -769884012;
  LODWORD(STACK[0x8F94]) = -769884012;
  STACK[0xA958] = 0;
  return (*(v3 + 8 * (v1 - 30055 + v2)))(&STACK[0xA958]);
}

uint64_t sub_100153F48()
{
  STACK[0x7AC8] = v2;
  LODWORD(STACK[0x5A78]) = v0;
  STACK[0x89C0] = v3;
  STACK[0xC070] = 0x79296B4A625EDF44;
  return (*(STACK[0x57D8] + 8 * ((v1 + 12195) ^ v1)))();
}

uint64_t sub_1001540A0@<X0>(_BYTE *a1@<X8>)
{
  a1[3] = STACK[0xAA9F];
  a1[2] = STACK[0xAA9E];
  a1[1] = STACK[0xAA9D];
  *a1 = STACK[0xAA9C];
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1001540D8@<X0>(int a1@<W8>)
{
  v7 = *(*(v6 + 4000) + 4 * (v5 % (v2 - 13846)));
  *(*(v6 + 4008) + v3 - 5896 * ((((v3 >> 3) * v4) >> 64) >> 4)) = (((v7 ^ 0xF9) - 28) ^ (v7 + 27) ^ ((v7 ^ 8) + 19)) + 48;
  return (*(STACK[0x57D8] + 8 * ((10123 * (v1 == 0)) ^ a1)))();
}

uint64_t sub_10015415C()
{
  v1 = STACK[0xDCB8];
  STACK[0xFDB8] = STACK[0xDCB8] + 2508;
  v1[2508] = -12;
  LODWORD(STACK[0xFDC4]) = STACK[0x7D98];
  STACK[0xFDC8] = (v1 + 4101);
  v1[4101] = 19;
  STACK[0xFDD0] = (v1 + 1977);
  v1[1977] = 111;
  STACK[0xFDD8] = (v1 + 1446);
  v1[1446] = -116;
  STACK[0xFDE0] = (v1 + 3039);
  v1[3039] = -107;
  STACK[0xFDE8] = (v1 + 5163);
  STACK[0xFDF0] = (v1 + 4632);
  v1[4632] = 16;
  v1[5163] = -70;
  STACK[0xFDF8] = (v1 + 3570);
  v1[3570] = -96;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100154968(uint64_t a1)
{
  *(a1 + 4344) = v1;
  v4 = *(STACK[0x57D8] + 8 * (((*(v3 + 24) + 16 * v1 == 0) * ((v2 + 20786) ^ 0x6344)) ^ v2));
  LODWORD(STACK[0xFB4C]) = v2 + 20786;
  return v4();
}

uint64_t sub_1001549C4@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 592) = a1;
  *(v2 + 600) = (v1 - 1723133771) ^ (1917435887 * (((v3 | 0x3E86544A) - (v3 & 0x3E86544A)) ^ 0xD83D0F4C));
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v1 + 9178)))(v4 - 240);
  return (*(v5 + 8 * (v1 - 10330)))(v6);
}

uint64_t sub_100154AA0()
{
  v0 = STACK[0x51B8] ^ 0x5DAA;
  v1 = STACK[0x7C58];
  *v1 = 0;
  v1[1] = 0;
  return (*(STACK[0x57D8] + 8 * ((v0 ^ 0x213F) + v0)))();
}

uint64_t sub_100154ADC()
{
  LODWORD(STACK[0x1D4C8]) = v0 - 16169987 * ((v2 - 240) ^ 0x558E3528) + v1;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 + 9231)))(v2 - 240);
  return (*(v3 + 8 * (v1 - 11786)))(v4);
}

uint64_t sub_100154B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x5760];
  if ((STACK[0x5780] & 2) != 0)
  {
    v5 = STACK[0x5750];
  }

  LODWORD(STACK[0x5780]) = v5;
  LODWORD(STACK[0x5760]) = LODWORD(STACK[0x5720]) ^ 0xAE303220;
  LODWORD(STACK[0x5400]) = LODWORD(STACK[0x5430]) ^ 0x4C4C4C4C;
  v6 = STACK[0x53F0];
  if (((*(v6 + ((*(v6 + ((*(v6 + ((*(STACK[0x53F0] + 12) + 11) & 0xFLL)) + 4) & 0xF)) + 13) & 0xF)) + 2) & 0xE) != 0)
  {
    v7 = (*(v6 + ((*(v6 + ((*(v6 + ((*(STACK[0x53F0] + 12) + 11) & 0xFLL)) + 4) & 0xF)) + 13) & 0xF)) + 2) & 0xF;
  }

  else
  {
    v7 = 1;
  }

  return (*(STACK[0x57D8] + 8 * v4))(0xFFFFFFFFLL, v7 - 1, a3, a4, 2036114714);
}

uint64_t sub_100154F84()
{
  v1 = (v0 - 15834) | 0x25;
  v2 = STACK[0x57D8];
  STACK[0xBDE0] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x576F ^ (v1 + 15120))))(0x308E083E0C524CBELL);
}

uint64_t sub_100155010()
{
  v1 = STACK[0x51B8] - 91;
  LODWORD(STACK[0x8DE4]) = v0;
  v2 = SLOWORD(STACK[0xD57E]);
  STACK[0xB0D8] = STACK[0xD580];
  return (*(STACK[0x57D8] + 8 * ((16242 * (v2 == -2993)) ^ v1)))();
}

uint64_t sub_1001551AC()
{
  v0 = STACK[0x57D8];
  v1 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))();
  STACK[0xC2E0] = 0;
  return (*(v0 + 8 * SLODWORD(STACK[0x27AC])))(v1);
}

uint64_t sub_1001552CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v6 - 1971;
  v8 = (v6 - 1971) ^ 0x7D5u;
  v9 = *(STACK[0x5620] + 288) + 4 * v4;
  v10 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v9 & (v8 ^ 0xFFFFC816) & 0x55F43EFF) + (v9 & (v8 ^ 0xFFFFC816) | 0x55F43EF8) - 1575518861)) & 0xFFFFFFFFFFFFFFF8));
  v11 = __ROR8__(v9 & (v8 ^ 0xFFFFFFFFFFFFC816), 8);
  v12 = (((v11 + v10) & 0x46E1C72C235E1E89 ^ 0x4200060C231C0E81) + ((v11 + v10) ^ 0x15F7F1735842712ELL) - (((v11 + v10) ^ 0x15F7F1735842712ELL) & 0x46E1C72C235E1E89)) ^ 0xE3414264AAB49A1BLL;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (((2 * (v14 + v13)) | 0xC8859E0E3F12A6B8) - (v14 + v13) + 0x1BBD30F8E076ACA4) ^ 0x6E05BE4BEC0514DFLL;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (v17 + v16 - ((2 * (v17 + v16)) & 0xD23B191829316A0ELL) - 0x16E27373EB674AF9) ^ 0x4B7668F60EF19A77;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (((2 * (v20 + v19)) & 0xDA5E80627554FB82) - (v20 + v19) + 0x12D0BFCEC555823ELL) ^ 0xED3A8F621F3C33ALL;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ a4;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (((v25 + v24) ^ 0xE1261848EA113DFDLL) - ((2 * ((v25 + v24) ^ 0xE1261848EA113DFDLL)) & 0x9F03B35965561B66) + 0x4F81D9ACB2AB0DB3) ^ 0xFC5649AD4062E6ECLL;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0xB20726EF1F63AAFLL;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  *v9 = (((((v30 + v29) | 0x38F90F278B60294FLL) - ((v30 + v29) | 0xC706F0D8749FD6B0) - 0x38F90F278B602950) ^ 0xA94782CF1CFC970FLL) >> (8 * (v9 & 7u))) ^ v5;
  return (*(STACK[0x57D8] + 8 * v7))();
}

uint64_t sub_10015588C(_DWORD *a1)
{
  v1 = a1[883];
  v2 = *(STACK[0x57D8] + 8 * ((209 * ((((a1[1095] ^ a1[795]) == 854902994) ^ v1) & 1)) ^ a1[881]));
  a1[884] = v1;
  return v2();
}

uint64_t sub_100155938@<X0>(__int16 a1@<W8>)
{
  v1 = STACK[0x51B8];
  LOWORD(STACK[0xD54C]) = a1;
  return (*(STACK[0x57D8] + 8 * (v1 - 17527)))();
}

uint64_t sub_1001559D4()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x7ED8];
  STACK[0xBC90] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v1 + 32;
  LODWORD(STACK[0xB7C4]) = 0;
  STACK[0x9EC0] = &STACK[0xB7C4];
  LODWORD(STACK[0x9E1C]) = -1333611744;
  return (*(STACK[0x57D8] + 8 * (v0 - 16846)))();
}

uint64_t sub_100155A74(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  v10 = *(*(&off_101353600 + a7) + (v8 ^ 0xC5u) - 1);
  HIDWORD(v11) = a6 ^ 0xE23CD ^ v10;
  LODWORD(v11) = v10 ^ LODWORD(STACK[0x3D0]);
  v12 = (v11 >> 20) ^ 0x2BB8BD53 ^ (2 * (((v11 >> 20) ^ 0x2BB8BD53) & LODWORD(STACK[0x54D0])));
  v13 = (((((v8 ^ (2 * (v8 & LOBYTE(STACK[0x54F0])))) & STACK[0x5440]) >> LODWORD(STACK[0x57A0])) + ((v8 ^ (2 * (v8 & STACK[0x54F0]))) << LODWORD(STACK[0x5450]))) ^ a3);
  *(STACK[0xD460] + 4 * v13) = a8 ^ (((v12 & STACK[0x55A0]) << LODWORD(STACK[0x5790])) | ((v12 & STACK[0x55B0]) >> LODWORD(STACK[0x5500])));
  v14 = *(*(&off_101353600 + v9) + (v8 ^ 0xD3u) - 2);
  HIDWORD(v11) = v14 ^ 0x2AAA;
  LODWORD(v11) = (v14 ^ 0x8000) << 16;
  *(a4 + 4 * v13) = LODWORD(STACK[0x5730]) ^ LODWORD(STACK[0x5720]) ^ 0x5683459D ^ (v11 >> 30) ^ 0x18F4 ^ ((8 * (v11 >> 30)) | 0x60C0);
  return (*(STACK[0x57D8] + 8 * ((16223 * (v8 == 255)) ^ LODWORD(STACK[0x5760]))))();
}

uint64_t sub_100155DCC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x953C];
  v6 = STACK[0xC758];
  STACK[0x81B0] = STACK[0x8228];
  LODWORD(STACK[0x9DAC]) = v5;
  *(a4 + 2952) = -126;
  STACK[0x60C8] = v6;
  LODWORD(STACK[0x803C]) = -769884028;
  STACK[0x8A48] = &STACK[0x972C];
  STACK[0xC910] = &STACK[0x5DB0];
  STACK[0x6830] = a1;
  LODWORD(STACK[0x9E18]) = 1593041223;
  return (*(STACK[0x57D8] + 8 * v4))();
}

uint64_t sub_100155E74()
{
  v1 = STACK[0x57D8];
  STACK[0xB2F0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 + 5843)))();
}

uint64_t sub_100155F0C@<X0>(int a1@<W8>)
{
  v4 = (STACK[0x5780] + v1);
  v5 = *v4;
  v6 = v4[1];
  v7 = (v2 + v1);
  *v7 = v5;
  v7[1] = v6;
  return (*(STACK[0x57D8] + 8 * (((v1 == 224) * (a1 ^ v3)) ^ a1)))();
}

uint64_t sub_100155F54(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6)
{
  v9 = STACK[0x57C0];
  v10 = 8 * (((LODWORD(STACK[0x57C0]) - 23235) | 0x474u) + v7 + ((v7 < v6) << 32) + 0x42D7EFE477547D1DLL) - 0x16BF7F26A48596B0;
  *(v8 + v10) = *(a3 + v10) ^ 0x5B5B5B5B5B5B5B5BLL;
  if (a6 < a4 != v7 - 859236272 < 0x2A05368C)
  {
    v11 = a6 < a4;
  }

  else
  {
    v11 = v7 - 859236272 < a6;
  }

  return (*(STACK[0x57D8] + 8 * ((62 * !v11) ^ v9)))();
}

uint64_t sub_1001569B8(int a1)
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xBE4C];
  LODWORD(STACK[0x9094]) = a1 + 50;
  return (*(STACK[0x57D8] + 8 * (v1 ^ 0x127)))();
}

uint64_t sub_100156A10@<X0>(int a1@<W8>)
{
  STACK[0x5B00] = v2 + 1;
  v3 = *(*STACK[0x51F0] + (*STACK[0x51E8] & ((((v2 & 0xFFFFFFF8 | LODWORD(STACK[0x1B48])) + (v2 & 0x86B6B898 | 0x79494761)) & 0xFFFFFFF8) - 103642728)));
  v4 = __ROR8__(v2 & 0xFFFFFFFFFFFFFFF8, 8);
  v5 = ((v1 ^ 0x8C74CB15F884F27BLL) - (v3 + v4) + ((2 * (v3 + v4)) & 0xE71669D40EF6ABA4)) ^ 0x78629A5C67DA964ALL;
  v6 = v5 ^ __ROR8__(v3, 61);
  v7 = (__ROR8__(v5, 8) + v6) ^ 0x153242EE3CF06A49;
  v8 = v7 ^ __ROR8__(v6, 61);
  v9 = __ROR8__(v7, 8);
  v10 = (v9 + v8 - ((2 * (v9 + v8)) & 0x29C4ADF124C00F0ALL) + 0x14E256F892600785) ^ 0x3697823FAA553E1ELL ^ __ROR8__(v8, 61);
  v11 = (__ROR8__((v9 + v8 - ((2 * (v9 + v8)) & 0x29C4ADF124C00F0ALL) + 0x14E256F892600785) ^ 0x3697823FAA553E1ELL, 8) + v10) ^ 0xE5AF1AB32EBD3CDDLL;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = __ROR8__(v11, 8);
  v14 = (((v13 + v12) | 0xA91EF240A13F7493) - ((v13 + v12) | 0x56E10DBF5EC08B6CLL) + 0x56E10DBF5EC08B6CLL) ^ 0x6EC33BB66D7AC3B2;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0xA82620A559D2DA78;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0x5F8DEC3EA3980A1BLL;
  LOBYTE(v17) = (((__ROR8__(v18, 8) + (v18 ^ __ROR8__(v17, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * (v2 & 7u))) ^ *v2;
  return (*(STACK[0x57D8] + 8 * ((57 * ((((v17 ^ 0xA9) + 6) ^ ((v17 ^ 0xDA) + 119) ^ ((v17 ^ 0x73) - 32)) == 1)) ^ a1)))();
}

uint64_t sub_100156C88(char a1, int a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  LODWORD(STACK[0x57A0]) = a2;
  LODWORD(STACK[0x5460]) = a2 ^ 0x22E6;
  v12 = v9 & ((a2 ^ 0x22E6) - 21866);
  LODWORD(STACK[0x5700]) = v12 ^ 0x61CF524E;
  v13 = *(v10 + (v12 ^ 0x61CF524Eu));
  LODWORD(STACK[0x53D8]) = a2 - 21379;
  v14 = a2 + 125 + v13 - 49 * (v12 ^ 0x4E) - 75;
  v15 = v9;
  v16 = v9 & 0xFFFFFFF8 ^ 0x61CF524F;
  LODWORD(STACK[0x56D0]) = v16;
  v17 = STACK[0x5660];
  v18 = STACK[0x56C0];
  v19 = *(STACK[0x56C0] + ((*(v10 + v16) - 49 * (((v15 ^ 0xC6) - 81) ^ ((v15 ^ a1) - 17) ^ ((v15 ^ 8) + 97)) - 79) ^ 0xBBLL));
  v20 = *(STACK[0x5660] + (v14 ^ 0x95)) ^ v14 ^ 0xB2;
  v21 = v15 & 0xFFFFFFF7 ^ 0x61CF5248;
  LODWORD(STACK[0x5770]) = v21;
  v22 = ((-24 * ((v19 >> 3) | (32 * v19))) ^ ((v19 >> 3) | (32 * v19))) | (v20 << 8);
  v23 = STACK[0x5670];
  v24 = *(STACK[0x5670] + ((*(v10 + v21) - 49 * (v15 & 0xF7 ^ 0x48) - 73) ^ 0x18)) - 36;
  v25 = v15 ^ 0x61CF5248u;
  STACK[0x57B0] = v25;
  LODWORD(v25) = *(v23 + ((*(v10 + v25) - 49 * (((v15 ^ 0xBF) - 5) ^ ((v15 ^ 0xA7) - 29) ^ ((v15 ^ 0x50) + 22)) + 101) ^ 0x52)) - 36;
  v26 = v15 & 0xFFFFFFFD ^ 0x61CF524A;
  LODWORD(STACK[0x5710]) = v26;
  LOBYTE(v26) = *(v10 + v26) - 49 * (v15 & 0xFD ^ 0x4A) - 73;
  v27 = v15 & a3 ^ 0x61CF524A;
  LODWORD(STACK[0x5630]) = v27;
  v28 = STACK[0x57C0];
  v29 = ((v25 ^ 0xF) << 24) | (((v26 ^ *(v17 + (v26 ^ 0x24))) ^ 0xFD) << 8);
  v30 = v15;
  v31 = *(STACK[0x57C0] + v27) - 49 * (((v15 ^ 0x41) + 27) ^ ((v15 ^ 0xC7) - 99) ^ ((v15 ^ 0xCE) - 106)) - 95;
  LOBYTE(v26) = *(v17 + (v31 ^ a4));
  LODWORD(STACK[0x5720]) = v15 & 0xFFFFFFF2 ^ 0x61CF524D;
  v32 = STACK[0x5680];
  LOBYTE(v27) = *(STACK[0x5680] + ((*(v28 + (v15 & 0xFFFFFFF2 ^ 0x61CF524D)) - 49 * (v15 & 0xF2 ^ 0x4D) - 73) ^ 0x49));
  v33 = ((v24 ^ 0xB3) << 24) | ((v31 ^ 0xD4 ^ v26) << 8);
  v34 = v15 & 0xFFFFFFFB ^ 0x61CF524C;
  LODWORD(STACK[0x56F0]) = v34;
  v35 = *(v28 + v34) - 49 * (v15 & 0xFB ^ 0x4C);
  LOBYTE(v34) = v15 & 0xFE;
  v36 = v15 & 0xFFFFFFFE ^ 0x61CF5249;
  LODWORD(STACK[0x56E0]) = v36;
  v37 = v22 | (((*(v23 + ((v35 - 73) ^ 0x9ALL)) - 36) ^ 0xCB) << 24);
  v38 = *(v32 + ((*(v28 + v36) - 49 * (v34 ^ 0x49) - 73) ^ 0x8ALL));
  v39 = v30 & 0xFFFFFFF3 ^ 0x61CF524C;
  LODWORD(STACK[0x5750]) = v39;
  LOBYTE(v26) = *(v28 + v39) - 49 * (v30 & 0xF3 ^ 0x4C);
  v40 = v30 & 0xFFFFFFF6 ^ 0x61CF5249;
  LODWORD(STACK[0x55E0]) = v40;
  v41 = (((v27 - ((2 * v27) & 0x7C) - 66) ^ 0x73 ^ ((2 * (v27 - ((2 * v27) & 0x7C) - 66)) | 0xCE)) << 16) | (((*(v23 + ((v26 - 73) ^ 0x9ALL)) - 36) ^ 0xCB) << 24);
  LOBYTE(v26) = *(v32 + ((*(v28 + v40) - 49 * (v30 & 0xF6 ^ 0x49) - 73) ^ 0x3CLL));
  v42 = v32;
  v43 = v30 & 0xFFFFFFF4 ^ 0x61CF524B;
  LODWORD(STACK[0x55B0]) = v43;
  v44 = *(v18 + ((*(v28 + v43) - 49 * (v30 & 0xF4 ^ 0x4B) - 73) ^ 0xAELL));
  v45 = v30 & 0xFFFFFFF0 ^ 0x61CF524F;
  LODWORD(STACK[0x5610]) = v45;
  v46 = v33 & 0xFF00FF00 | (((v26 ^ (2 * v26) & 0x30) ^ 0x1F) << 16) | ((-24 * ((v44 >> 3) | (32 * v44))) ^ ((v44 >> 3) | (32 * v44)));
  v47 = *(v18 + ((*(v28 + v45) - 49 * (v30 & 0xF0 ^ 0x4F) - 73) ^ 0xBELL));
  v48 = v30 & 0xFFFFFFFC ^ 0x61CF524B;
  LODWORD(STACK[0x55F0]) = v48;
  v49 = v41 & 0xFFFFFF00 | (((v47 >> 3) | (32 * v47)) * a8 - 2 * ((104 * ((v47 >> 3) | (32 * v47))) & ((v47 >> 3) | (32 * v47))));
  v50 = *(v18 + ((*(v28 + v48) - 49 * (v30 & 0xFC ^ 0x4B) - 73) ^ 0x4ELL));
  LODWORD(STACK[0x5620]) = v30;
  v51 = v30 & 0xFFFFFFF1 ^ 0x61CF524E;
  LODWORD(STACK[0x5600]) = v51;
  v52 = *(v28 + v51) - 49 * (v30 & 0xF1 ^ 0x4E);
  v53 = v29 & 0xFF00FF00 | ((((2 * v38) & 0x30 ^ 0xFE ^ -((2 * v38) & 0x30 ^ 0xFE) ^ ((v38 ^ 0xA) - (v38 ^ 0xA ^ (2 * v38) & 0x30 ^ 0xFE))) + (v38 ^ 0xA)) << 16) | ((-24 * ((v50 >> 3) | (32 * v50))) ^ ((v50 >> 3) | (32 * v50)));
  LODWORD(v32) = v30 & 0xFFFFFFFA ^ 0x61CF524D;
  LODWORD(STACK[0x55A0]) = v32;
  LOBYTE(v50) = *(v42 + ((*(v28 + v32) - 49 * (v30 & 0xFA ^ 0x4D) - 73) ^ 0x66));
  v54 = v49 & 0xFFFF00FF | (((v52 - 73) ^ 0xF4 ^ *(v17 + ((v52 - 73) ^ 0xBFLL))) << 8);
  v55 = v37 & 0xFF00FFFF | ((v50 ^ 0x17 ^ ((2 * ~v50) | 0xCE)) << 16);
  v56 = (v53 ^ v11) + 2147442324 - ((2 * (v53 ^ v11)) & 0xFFFEBD28);
  v57 = LODWORD(STACK[0x55C0]) ^ LODWORD(STACK[0x5640]);
  v58 = (v57 ^ LODWORD(STACK[0x5760]) ^ v54) + 2147442324 - ((2 * (v57 ^ LODWORD(STACK[0x5760]) ^ v54)) & 0xFFFEBD28);
  v59 = v57 ^ LODWORD(STACK[0x5780]) ^ LODWORD(STACK[0x5560]) ^ 0xECDBD027 ^ v56;
  LODWORD(v25) = STACK[0x5790];
  LODWORD(v32) = LODWORD(STACK[0x5790]) ^ ((v57 ^ LODWORD(STACK[0x5730]) ^ v46) + 2147442324 - ((2 * (v57 ^ LODWORD(STACK[0x5730]) ^ v46)) & 0xFFFEBD28)) ^ 0xF2567CB1;
  LODWORD(STACK[0x5760]) = v32;
  v60 = v25 ^ LODWORD(STACK[0x5570]) ^ 0x33AFF8F ^ ((v57 ^ v8 ^ v55) + 2147442324 - ((2 * (v57 ^ v8 ^ v55)) & 0xFFFEBD28));
  v61 = v32 ^ LODWORD(STACK[0x5590]);
  LODWORD(v42) = v25 ^ LODWORD(STACK[0x5580]) ^ 0x5B9BBD19 ^ v58;
  v62 = STACK[0xD8A8];
  v63 = *(STACK[0xD8A8] + 4 * BYTE1(v61));
  v64 = STACK[0xD898];
  STACK[0x5590] = STACK[0xD8A0];
  v65 = STACK[0x5408];
  LODWORD(v32) = *(v64 + 4 * HIBYTE(v59)) ^ v63 ^ *(STACK[0x5408] + 4 * BYTE2(v60));
  v66 = STACK[0xD8C0];
  STACK[0x5730] = STACK[0xD8C8];
  LODWORD(v32) = v32 ^ *(v66 + 4 * v42);
  v67 = *(v62 + 4 * BYTE1(v42)) ^ *(v64 + 4 * HIBYTE(v60)) ^ *(v65 + 4 * BYTE2(v61)) ^ *(v66 + 4 * v59);
  v68 = *(v64 + 4 * HIBYTE(v61)) ^ *(v65 + 4 * BYTE2(v42));
  v69 = *(v66 + 4 * v60) ^ *(v62 + 4 * BYTE1(v59)) ^ ((v68 & 0xDEBF1127 ^ 0xF42603C3) & (v68 & 0x2140EED8 ^ 0xDEBFF1E7) | v68 & 0x140EC18);
  v70 = *(v64 + 4 * BYTE3(v42)) ^ *(v65 + 4 * BYTE2(v59)) ^ *(v62 + 4 * BYTE1(v60)) ^ *(v66 + 4 * v61);
  v71 = *(v65 + 4 * (BYTE2(v67) ^ 0xA5u)) ^ *(v64 + 4 * (BYTE3(v32) ^ 0xDB)) ^ *(v62 + 4 * (BYTE1(v69) ^ 0x83u));
  LODWORD(v17) = *(v66 + 4 * ((*(v64 + 4 * BYTE3(v42)) ^ *(v65 + 4 * BYTE2(v59)) ^ *(v62 + 4 * BYTE1(v60)) ^ *(v66 + 4 * v61)) ^ 0x5Bu));
  v72 = 2 * ((v17 ^ 0x38825192) & (v71 ^ 0x70CF0AFC) ^ v17 & 0x69203A4C);
  v73 = (((v71 ^ 0x6A5EC001) - 1784594433) ^ ((v71 ^ 0x9005188) - 151015816) ^ ((v71 ^ 0x7AB1A139) - 2058461497)) + (((v17 ^ 0x7C5F9911) - 2086639889) ^ ((v17 ^ 0x1E209C63) - 505453667) ^ ((v17 ^ 0x5AFD54E0) - 1526551776)) - (((v72 ^ LODWORD(STACK[0x20B8])) + 1875125061) ^ ((v72 ^ 0xDD5950FB) + 122076335) ^ ((v72 ^ 0x3882BFEA) - 493005888)) + 330182605;
  LODWORD(v17) = (v73 ^ 0x86CA5CCA) & (2 * (v73 & 0xC8E31ECB)) ^ v73 & 0xC8E31ECB;
  v74 = ((2 * (v73 ^ 0x874A4CDC)) ^ 0x9F52A42E) & (v73 ^ 0x874A4CDC) ^ (2 * (v73 ^ 0x874A4CDC)) & 0x4FA95216;
  LODWORD(v17) = (v74 ^ 0x7000004) & (4 * v17) ^ v17;
  v75 = ((4 * (v74 ^ 0x40A95211)) ^ 0x3EA5485C) & (v74 ^ 0x40A95211) ^ (4 * (v74 ^ 0x40A95211)) & 0x4FA95214;
  LODWORD(v17) = (v75 ^ 0xEA14010) & (16 * v17) ^ v17;
  v76 = ((16 * (v75 ^ LODWORD(STACK[0x5400]))) ^ 0xFA952170) & (v75 ^ LODWORD(STACK[0x5400])) ^ (16 * (v75 ^ LODWORD(STACK[0x5400]))) & 0x4FA95210;
  LODWORD(v17) = v17 ^ 0x4FA95217 ^ (v76 ^ 0x4A810000) & (v17 << 8);
  v77 = v73 ^ (2 * ((v17 << 16) & 0x4FA90000 ^ v17 ^ ((v17 << 16) ^ 0x52170000) & (((v76 ^ 0x5285207) << 8) & 0x4FA90000 ^ 0x46A90000 ^ (((v76 ^ 0x5285207) << 8) ^ 0x29520000) & (v76 ^ 0x5285207))));
  v78 = *(v65 + 4 * (BYTE2(v69) ^ 0x28u)) ^ *(v64 + 4 * (HIBYTE(v67) ^ 0x53)) ^ *(v66 + 4 * (v32 ^ 0x89u)) ^ *(v62 + 4 * (BYTE1(v70) ^ 0xA9u));
  v79 = *(v64 + 4 * (HIBYTE(v70) ^ 0xF4));
  v80 = *(v65 + 4 * (BYTE2(v70) ^ 0x11u)) ^ *(v66 + 4 * ((*(v62 + 4 * BYTE1(v42)) ^ *(v64 + 4 * HIBYTE(v60)) ^ *(v65 + 4 * BYTE2(v61)) ^ *(v66 + 4 * v59)) ^ 0x1Bu)) ^ *(v62 + 4 * (BYTE1(v32) ^ 0xCu)) ^ *(v64 + 4 * (HIBYTE(v69) ^ 0x9A));
  LODWORD(v32) = v79 ^ *(v65 + 4 * (BYTE2(v32) ^ 0xA7u)) ^ *(v62 + 4 * (BYTE1(v67) ^ 0x6Du));
  v81 = HIBYTE(v77) ^ 0xA4;
  STACK[0xD898] = v64 + 4 * v81;
  LODWORD(v17) = v32 ^ 0x9E8E7F8E ^ *(v66 + 4 * (v69 ^ 0x68u));
  LODWORD(v32) = *(v64 + 4 * v81);
  v82 = HIBYTE(v78) ^ 0x24;
  STACK[0xD898] = v64 + 4 * v82;
  v83 = v62 + 4 * BYTE1(v17);
  STACK[0xD8A8] = v83;
  v84 = v66 + 4 * (v77 ^ 0x80u);
  STACK[0xD8C0] = v84;
  v85 = *(v64 + 4 * v82);
  v86 = HIBYTE(v80) ^ 0x4B;
  STACK[0xD898] = v64 + 4 * v86;
  v87 = *(v65 + 4 * (BYTE2(v78) ^ 0x91u)) ^ *(v62 + 4 * (BYTE1(v80) ^ 0xB7u)) ^ *(v66 + 4 * v17) ^ v32;
  v88 = *v83 ^ v85;
  STACK[0xD8A8] = v62;
  LODWORD(v83) = *(v64 + 4 * v86);
  v89 = v78 ^ 0x7E;
  STACK[0xD8C0] = v66 + 4 * v89;
  v90 = v88 ^ *(v65 + 4 * (BYTE2(v80) ^ 0xF2u)) ^ *v84;
  LODWORD(v83) = v83 ^ *(v65 + 4 * BYTE2(v17)) ^ *(v62 + 4 * (BYTE1(v77) ^ 0x83u));
  LODWORD(v17) = BYTE3(v17);
  STACK[0xD898] = v64 + 4 * v17;
  v91 = BYTE1(v78) ^ 0x54;
  STACK[0xD8A8] = v62 + 4 * v91;
  v92 = *(v66 + 4 * v89);
  LODWORD(v25) = 430052480 - (((v92 ^ LODWORD(STACK[0x20BC])) + 1009785999) ^ ((v92 ^ 0x89FC4F88) + 1979953272) ^ ((v92 ^ 0x72B1FD6B) - 1924267371));
  LODWORD(v84) = (((v83 ^ 0x4C18CBF0) - 1276693488) ^ ((v83 ^ 0x144D5D1D) - 340614429) ^ ((v83 ^ 0x41BAA65D) - 1102751325)) - (((v92 ^ v83 ^ 0xB4878AA8) + 1266185560) ^ ((v92 ^ v83 ^ 0x2C9CDDCD) - 748477901) ^ ((v92 ^ v83 ^ 0xB9763647) + 1183435193)) + 471517647;
  LODWORD(v84) = v25 ^ v92 ^ ((v25 ^ 0x50839215) - 44561415) ^ ((v25 ^ 0xECEA386D) + 1093771649) ^ ((v25 ^ 0x19B231D5) - 1268144071) ^ ((v25 ^ LODWORD(STACK[0x53F8])) + 1512334419) ^ v84 ^ ((v84 ^ 0x4689DEBF) - 1695622398) ^ ((v84 ^ 0xC139951C) + 492736675) ^ ((v84 ^ 0xD3174F1D) + 259017380) ^ ((v84 ^ 0x773FFEFF) - 1420231870);
  LODWORD(v83) = (((v83 ^ 0x2B292ED6) - 724119254) ^ ((v83 ^ 0x1063FAF7) - 274987767) ^ ((v83 ^ 0x22A5E491) - 581297297)) - 216407595 + (((v84 ^ 0xACAF2294) + 1714132630) ^ ((v84 ^ 0x534D358C) - 1714847346) ^ ((v84 ^ 0xB6DCDAD9) + 2086170329));
  v93 = ((v83 ^ 0xB1EECA8C) + 317988758) ^ v83 ^ ((v83 ^ 0x6AA02B89) - 910492015) ^ ((v83 ^ 0x7844041C) - 614543098) ^ ((v83 ^ 0xFFEFCFFF) + 1559567079);
  v94 = *(v64 + 4 * v17) ^ *(v62 + 4 * v91) ^ *(v66 + 4 * (v80 ^ 0xF7u)) ^ *(v65 + 4 * (BYTE2(v77) ^ 0x87u));
  LODWORD(v17) = (((v87 ^ 0x66736FF2) + 979160745) ^ ((v87 ^ 0x526394F) + 1493800982) ^ ((v87 ^ 0xD7FE351D) - 1949199288)) - 2021734267;
  v95 = v17 ^ ((v17 ^ 0x860F2514) + 997599957) ^ ((v17 ^ 0x846E7329) + 957840618) ^ ((v17 ^ 0x3F9958DD) - 2099226850) ^ ((v17 ^ LODWORD(STACK[0x53F0])) - 1039666912) ^ 0x55FDCD3A;
  if ((((v87 ^ LODWORD(STACK[0x20C0])) + 1095642428) ^ ((v87 ^ 0x57AF9DAC) + 192953591) ^ ((v87 ^ 0xFE65726D) - 1572154568)) + 393952517 < 0xD28364BF)
  {
    v95 = v87 ^ 0xA3D05EA5;
  }

  if ((((v87 ^ 0x982E3239) - 1006529692) ^ ((v87 ^ 0x7F50336B) + 595563058) ^ ((v87 ^ 0x53D562F2) + 268092329)) + 393952517 >= 0xD28364BF)
  {
    v96 = -70;
  }

  else
  {
    v96 = 5;
  }

  if (v95 == 393952517)
  {
    v97 = v96;
  }

  else
  {
    v97 = v87 ^ 0xA5;
  }

  v98 = *(v64 + 4 * (HIBYTE(v87) ^ 0xB4)) ^ *(v66 + 4 * (v94 ^ 0x85u)) ^ *(v65 + 4 * (BYTE2(v90) ^ 0x57u));
  v99 = ((v98 & STACK[0x20C4] ^ 0x16D9FAF3) & (v98 & 0xFF9DDDBE ^ 0x2177A24B) | v98 & 0xE904050C) ^ *(v62 + 4 * (BYTE1(v93) ^ 0xCBu));
  v100 = *(v65 + 4 * (BYTE2(v93) ^ 0x40u)) ^ *(v64 + 4 * (HIBYTE(v90) ^ 0xB1)) ^ *(v62 + 4 * (BYTE1(v94) ^ 0x9Eu)) ^ *(v66 + 4 * (v97 ^ 5u));
  v101 = *(v62 + 4 * (BYTE1(v87) ^ 0x63u)) ^ *(v65 + 4 * (BYTE2(v94) ^ 0x2Bu)) ^ *(v66 + 4 * (v90 ^ 0xFCu)) ^ *(v64 + 4 * (HIBYTE(v93) ^ 0xA6));
  v102 = *(v64 + 4 * (HIBYTE(v94) ^ 0x64)) ^ *(v65 + 4 * (BYTE2(v87) ^ 0xABu)) ^ *(v62 + 4 * (BYTE1(v90) ^ 0x56u)) ^ *(v66 + 4 * (v93 ^ 0xEDu));
  v103 = *(v62 + 4 * (BYTE1(v102) ^ 0xD1u)) ^ *(v64 + 4 * (HIBYTE(v100) ^ 0xAF));
  v104 = *(v64 + 4 * (HIBYTE(v99) ^ 0x3F)) ^ *(v65 + 4 * (BYTE2(v100) ^ 0x2Au)) ^ *(v62 + 4 * (BYTE1(v101) ^ 0x2Eu)) ^ *(v66 + 4 * (v102 ^ 0x90u));
  v105 = HIBYTE(v101) ^ 0x55;
  STACK[0xD898] = v64 + 4 * v105;
  v106 = v100 ^ 0x3C;
  STACK[0xD8C0] = v66 + 4 * v106;
  v107 = v103 ^ *(v66 + 4 * (v99 ^ 0xA1u)) ^ *(v65 + 4 * (BYTE2(v101) ^ 0x8Fu));
  STACK[0xD8A8] = v62;
  v108 = *(v66 + 4 * v106);
  v109 = BYTE1(v100) ^ 0xCF;
  STACK[0xD8A8] = v62 + 4 * v109;
  STACK[0xD8C0] = v66;
  STACK[0xD898] = v64;
  v110 = *(v62 + 4 * v109);
  v111 = v101 ^ 0x37;
  STACK[0xD8C0] = v66 + 4 * v111;
  v112 = *(v62 + 4 * (BYTE1(v99) ^ 0x5Au)) ^ *(v65 + 4 * (BYTE2(v102) ^ 0xC9u)) ^ v108 ^ *(v64 + 4 * v105);
  v113 = 1241522376 - (((v112 ^ 0x121657A3) - 303454115) ^ ((v112 ^ 0xB86C06BD) + 1200879939) ^ ((v112 ^ 0x8B17303C) + 1961414596));
  v114 = (v113 ^ 0xC4527F85) & (2 * (v113 & 0x94927E16)) ^ v113 & 0x94927E16;
  v115 = ((2 * (v113 ^ 0xE452FBA5)) ^ 0xE1810B66) & (v113 ^ 0xE452FBA5) ^ (2 * (v113 ^ 0xE452FBA5)) & 0x70C085B2;
  v116 = v115 ^ LODWORD(STACK[0x20C8]);
  v117 = ((4 * (v115 ^ 0x10408491)) ^ 0xC30216CC) & (v115 ^ 0x10408491) ^ (4 * (v115 ^ 0x10408491)) & 0x70C085B0;
  v118 = (v117 ^ 0x40000493) & (16 * (v116 & (4 * v114) ^ v114)) ^ v116 & (4 * v114) ^ v114;
  v119 = ((16 * (v117 ^ 0x30C08133)) ^ 0xC085B30) & (v117 ^ 0x30C08133) ^ (16 * (v117 ^ 0x30C08133)) & 0x70C085B0;
  v120 = v118 ^ 0x70C085B3 ^ v119 & (v118 << 8);
  v121 = *(v65 + 4 * (BYTE2(v99) ^ 0x41u)) ^ v110;
  v122 = v64 + 4 * (HIBYTE(v102) ^ 0x10);
  STACK[0xD898] = v122;
  v123 = v121 ^ *v122 ^ *(v66 + 4 * v111);
  v124 = 1095941330 - (((v112 ^ 0x22EFE4AC) - 872186222) ^ ((v112 ^ 0x889B3C39) + 1719117317) ^ ((v112 ^ 0x83B306F7) + 1834982603));
  LODWORD(v122) = v113 ^ v112 ^ v124 ^ ((v124 ^ 0xB82DE9D3) + 917417759) ^ ((v124 ^ 0xC63D6514) + 1220420570) ^ ((v124 ^ 0xF2934A0A) + 2081426632) ^ ((v124 ^ 0xFDFF7FFF) + 1937520947) ^ (2 * ((v120 << 16) & 0x70C00000 ^ v120 ^ (((v119 ^ 0x70C08483) << 8) & 0x70C00000 ^ 0x30400000 ^ (((v119 ^ 0x70C08483) << 8) ^ 0xC0850000) & (v119 ^ 0x70C08483)) & ((v120 << 16) ^ 0x5B30000)));
  LODWORD(v122) = (((v122 ^ 0x8CA4A392) + 974863026) ^ ((v122 ^ 0x494F39D0) - 1007372) ^ ((v122 ^ 0xE1E93722) + 1465298434)) - 637512307;
  v125 = (v122 ^ 0x5BCCA56E) & (2 * (v122 & 0x9BED356F)) ^ v122 & 0x9BED356F;
  v126 = ((2 * (v122 ^ 0x4E9ECFA0)) ^ 0xAAE7F59E) & (v122 ^ 0x4E9ECFA0) ^ (2 * (v122 ^ 0x4E9ECFA0)) & 0xD573FACE;
  v127 = (v126 ^ 0x8061F08C) & (4 * v125) ^ v125;
  v128 = ((4 * (v126 ^ 0x55100A41)) ^ 0x55CFEB3C) & (v126 ^ 0x55100A41) ^ (4 * (v126 ^ 0x55100A41)) & 0xD573FACC;
  v129 = (v128 ^ 0x5543EA00) & (16 * v127) ^ v127;
  v130 = ((16 * (v128 ^ 0x803010C3)) ^ 0x573FACF0) & (v128 ^ 0x803010C3) ^ (16 * (v128 ^ 0x803010C3)) & 0xD573FAC0;
  v131 = v129 ^ 0xD573FACF ^ (v130 ^ 0x5533A800) & (v129 << 8);
  v132 = v122 ^ (2 * ((v131 << 16) & 0x55730000 ^ v131 ^ ((v131 << 16) ^ 0x7ACF0000) & (((v130 ^ 0x8040520F) << 8) & 0xD5730000 ^ 0x4010000 ^ (((v130 ^ 0x8040520F) << 8) ^ 0x73FA0000) & (v130 ^ 0x8040520F))));
  v133 = *(v65 + 4 * (BYTE2(v107) ^ 0x25u)) ^ *(v64 + 4 * (HIBYTE(v104) ^ 0xD3)) ^ *(v66 + 4 * (v123 ^ 0xD0u)) ^ *(v62 + 4 * (((v122 ^ (2 * v131)) >> 8) ^ 0xC0u));
  v134 = *(v62 + 4 * (BYTE1(v123) ^ 0x6Eu)) ^ *(v64 + 4 * (HIBYTE(v107) ^ 0x5D)) ^ *(v66 + 4 * (v104 ^ 0x69u)) ^ *(v65 + 4 * (BYTE2(v132) ^ 0x8Cu));
  v135 = *(v66 + 4 * (v107 ^ 0x77u));
  v136 = v132 ^ 0xF1;
  v137 = *(v65 + 4 * (BYTE2(v123) ^ 0x63u));
  STACK[0xD8C0] = v66 + 4 * v136;
  v138 = v135 ^ v137 ^ *(v62 + 4 * (BYTE1(v104) ^ 0x3Fu)) ^ *(v64 + 4 * (HIBYTE(v132) ^ 0x91));
  v139 = *(v62 + 4 * (BYTE1(v107) ^ 0x91u)) ^ *(v65 + 4 * (BYTE2(v104) ^ 0x62u)) ^ *(v64 + 4 * (HIBYTE(v123) ^ 0x18));
  v140 = ((v139 & 2 ^ 0x7C10C6C7) + 945795061) ^ (v139 & 2 | 0x648F8E34) ^ ((v139 & 2 ^ 0x68729556) + 742259814);
  v141 = v140 - 963533905;
  v142 = (v141 ^ 0xE05EF318) & (2 * (v141 & 0x1D)) ^ v141 & 0x1D;
  v143 = ((2 * (v141 ^ 0x407FD522)) ^ 0x6AC24C7E) & (v141 ^ 0x407FD522) ^ (2 * (v141 ^ 0x407FD522)) & 0xB561263E;
  v144 = (v143 ^ 0x2140263D) & (4 * v142) ^ v142;
  v145 = ((4 * (v143 ^ 0x95212201)) ^ 0xD58498FC) & (v143 ^ 0x95212201) ^ (4 * (v143 ^ 0x95212201)) & 0xB561263C;
  v146 = v145 ^ LODWORD(STACK[0x20CC]);
  v147 = ((16 * (v145 ^ 0x20612603)) ^ 0x561263F0) & (v145 ^ 0x20612603) ^ (16 * (v145 ^ 0x20612603)) & 0xB5612630;
  v148 = v146 & (16 * v144) ^ v144 ^ 0xB561263F ^ (v147 ^ 0x1400220F) & ((v146 & (16 * v144) ^ v144) << 8);
  v149 = *(v66 + 4 * v136);
  v150 = (v140 - 963533905) ^ (2 * ((v148 << 16) & 0x35610000 ^ v148 ^ ((v148 << 16) ^ 0x263F0000) & (((v147 ^ 0xA161040F) << 8) & 0xB5610000 ^ 0x14410000 ^ (((v147 ^ 0xA161040F) << 8) ^ 0x61260000) & (v147 ^ 0xA161040F))));
  v151 = 1328576023 - v140;
  if (((v150 ^ 0xD79EBF63) & (v149 ^ 0xB65FB4CF) ^ v150 & 0x8EDDE55D) == 0x869CA541)
  {
    v151 = v141;
  }

  v152 = (((v149 ^ 0xA5AD2E6F) + 1515377041) ^ ((v149 ^ 0x1CA7D080) - 480759936) ^ ((v149 ^ 0x8188AF7D) + 2121748611)) + 1655775268 + v151;
  v153 = (v152 ^ 0xC8E59263) & (2 * (v152 & 0xCAF0248B)) ^ v152 & 0xCAF0248B;
  v154 = ((2 * (v152 ^ 0x58259263)) ^ 0x25AB6DD0) & (v152 ^ 0x58259263) ^ (2 * (v152 ^ 0x58259263)) & 0x92D5B6E8;
  v155 = (v154 ^ 0x80952440) & (4 * v153) ^ v153;
  v156 = ((4 * (v154 ^ 0x92549228)) ^ 0x4B56DBA0) & (v154 ^ 0x92549228) ^ (4 * (v154 ^ 0x92549228)) & 0x92D5B6E8;
  v157 = (v156 ^ 0x25492A0) & (16 * v155) ^ v155;
  v158 = ((16 * (v156 ^ 0x90812448)) ^ 0x2D5B6E80) & (v156 ^ 0x90812448) ^ (16 * (v156 ^ 0x90812448)) & 0x92D5B6E0;
  v159 = v157 ^ 0x92D5B6E8 ^ (v158 ^ 0x512668) & (v157 << 8);
  v160 = v152 ^ v139 & 0xFFFFFFFD ^ (2 * ((v159 << 16) & 0x12D50000 ^ v159 ^ ((v159 << 16) ^ 0x36E80000) & (((v158 ^ 0x92849068) << 8) & 0x12D50000 ^ 0x2410000 ^ (((v158 ^ 0x92849068) << 8) ^ 0x55B60000) & (v158 ^ 0x92849068))));
  v161 = ((HIBYTE(v133) ^ 0xDF284393) + 551009477) ^ ((HIBYTE(v133) ^ 0x75543531) - 1968453017) ^ ((HIBYTE(v133) ^ 0xAA7C760A) + 1434683742);
  v162 = BYTE2(v134) ^ 0x3A;
  v163 = *(v65 + 4 * v162);
  v164 = BYTE1(v138) ^ 0xDE;
  LODWORD(STACK[0x5570]) = v164;
  v165 = v160 ^ 0x26;
  v166 = v163 ^ *(v62 + 4 * v164) ^ *(v64 + 4 * v161) ^ *(v66 + 4 * v165);
  v167 = ((v133 ^ LODWORD(STACK[0x20D0])) + 23605677) ^ ((v133 ^ 0xD5B92DEB) - 1802419518) ^ ((v133 ^ 0x95F97365) - 724493232);
  v168 = (((HIBYTE(v134) ^ 0xD1B45BE1) - 1566253345) ^ ((HIBYTE(v134) ^ 0xBC48BC18) - 816301784) ^ ((HIBYTE(v134) ^ 0x6DFCE72D) + 518808083)) - 1930462700;
  LODWORD(STACK[0x5550]) = v168;
  v169 = BYTE2(v138) ^ 0x90;
  LODWORD(STACK[0x5560]) = v169;
  v170 = *(v65 + 4 * v169) ^ *(v64 + 4 * v168);
  v167 -= 1093168931;
  LODWORD(STACK[0x5540]) = v167;
  v171 = v170 ^ *(v66 + 4 * v167);
  v172 = BYTE1(v160) ^ 0xC9;
  LODWORD(STACK[0x5530]) = v172;
  v173 = v171 ^ *(v62 + 4 * v172);
  v174 = (((HIBYTE(v138) ^ 0xB991B8D6) - 881245938) ^ ((HIBYTE(v138) ^ 0x263BFE62) + 1423116218) ^ ((HIBYTE(v138) ^ 0x9FAA4668) - 314392652)) - 1927870728;
  LODWORD(STACK[0x5510]) = v174;
  v175 = BYTE1(v133) ^ 0x91;
  LODWORD(STACK[0x5520]) = v175;
  v176 = *(v64 + 4 * v174) ^ *(v62 + 4 * v175);
  v177 = (((v134 ^ 0x21A6D3BD) + 2077250979) ^ ((v134 ^ 0x9B99CC15) - 1041282549) ^ ((v134 ^ 0xBA3F1FF5) - 532047381)) - 1517717059;
  LODWORD(STACK[0x5500]) = v177;
  v178 = BYTE2(v160) ^ 0xC7;
  v179 = *(v65 + 4 * v178) ^ v176 ^ *(v66 + 4 * v177);
  v180 = BYTE2(v133) ^ 0x72;
  v181 = (((BYTE1(v134) ^ 0x78603C5B) + 1878394122) ^ ((BYTE1(v134) ^ 0x8BEF1F9D) - 1669781808) ^ ((BYTE1(v134) ^ 0xF38F23A7) - 468116746)) - 395721012;
  v182 = (((v138 ^ 0x7124ADF5) - 1036500851) ^ ((v138 ^ 0xBC1F40B3) + 251899339) ^ ((v138 ^ LODWORD(STACK[0x20D4])) + 2116485155)) + 1289949851;
  v183 = HIBYTE(v160) ^ 0x17;
  HIDWORD(v185) = *(v65 + 4 * v180) ^ *(v62 + 4 * v181) ^ *(v66 + 4 * v182) ^ *(v64 + 4 * v183);
  LODWORD(v185) = HIDWORD(v185);
  v184 = v185 >> 17;
  HIDWORD(v185) = v184 ^ 0x6643;
  LODWORD(v185) = v184 ^ 0x27B88000;
  STACK[0xD8A8] = v62;
  STACK[0xD8A8] = v62;
  v186 = BYTE1(v179) ^ 0x35;
  STACK[0xD8A8] = v62 + 4 * v186;
  STACK[0xD898] = v64;
  v187 = HIBYTE(v173) ^ 5;
  STACK[0xD898] = v64 + 4 * v187;
  v188 = (v185 >> 15) ^ 0xF0DFCA7E;
  STACK[0xD8C0] = v66 + 4 * ((v185 >> 15) ^ 0x7Eu);
  v189 = *(v64 + 4 * (HIBYTE(v166) ^ 0xF0)) ^ *(v62 + 4 * v186) ^ *(v65 + 4 * (BYTE2(v173) ^ 0x57u));
  v190 = *(v66 + 4 * ((v185 >> 15) ^ 0x7Eu));
  v191 = (v190 ^ 0x6B141194) & (v189 ^ 0x19EF30B0) ^ v189 & 0x53964006;
  v192 = (((v189 ^ 0x4DB416B3) - 1303647923) ^ ((v189 ^ 0xE0C817C) - 235700604) ^ ((v189 ^ 0x5A57A77F) - 1515693951)) + (((v190 ^ 0x7A24333D) - 2049192765) ^ ((v190 ^ 0x87923461) + 2020461471) ^ ((v190 ^ 0xC53456CE) + 986425650)) - ((((2 * v191) ^ 0x2BD1891F) - 919407786) ^ (((2 * v191) ^ 0x37FF7943) - 719584502) ^ (((2 * v191) ^ 0x3F22F05C) - 574518761)) + 379758379;
  v193 = (v192 ^ 0xFDBE4070) & (2 * (v192 & 0xFDBE5562)) ^ v192 & 0xFDBE5562;
  v194 = ((2 * (v192 ^ 0x8CCA4034)) ^ 0xE2E82AAC) & (v192 ^ 0x8CCA4034) ^ (2 * (v192 ^ 0x8CCA4034)) & 0x71741556;
  v195 = (v194 ^ 0x60640042) & (4 * v193) ^ v193;
  v196 = ((4 * (v194 ^ LODWORD(STACK[0x20D8]))) ^ 0xC5D05558) & (v194 ^ LODWORD(STACK[0x20D8])) ^ (4 * (v194 ^ LODWORD(STACK[0x20D8]))) & 0x71741554;
  v197 = v196 ^ LODWORD(STACK[0x20DC]);
  v198 = ((16 * (v196 ^ 0x30240006)) ^ 0x17415560) & (v196 ^ 0x30240006) ^ (16 * (v196 ^ 0x30240006)) & 0x71741550;
  v199 = v197 & (16 * v195) ^ v195 ^ 0x71741556 ^ (v198 ^ 0x11401516) & ((v197 & (16 * v195) ^ v195) << 8);
  v200 = v192 ^ (2 * ((v199 << 16) & 0x71740000 ^ v199 ^ ((v199 << 16) ^ 0x15560000) & (((v198 ^ 0x60340016) << 8) & 0x71740000 ^ 0x1600000 ^ (((v198 ^ 0x60340016) << 8) ^ 0x74150000) & (v198 ^ 0x60340016))));
  v201 = *(v62 + 4 * BYTE1(v188)) ^ __ROR4__(__ROR4__(*(v65 + 4 * (BYTE2(v179) ^ 0xAAu)) ^ *(v64 + 4 * v187), 23) ^ 0x96CB3E1C, 9) ^ *(v66 + 4 * (v166 ^ 0x82u));
  v202 = *(v62 + 4 * (BYTE1(v166) ^ 0x8Au)) ^ *(v64 + 4 * (HIBYTE(v179) ^ 0xF8)) ^ *(v66 + 4 * (v173 ^ 0xFDu)) ^ *(v65 + 4 * BYTE2(v188));
  v203 = *(v65 + 4 * BYTE2(v166)) ^ *(v62 + 4 * (BYTE1(v173) ^ 0x8Au)) ^ *(v66 + 4 * (v179 ^ 0xC2u)) ^ *(v64 + 4 * HIBYTE(v188));
  if ((v203 & 4) != 0)
  {
    v204 = -4;
  }

  else
  {
    v204 = 4;
  }

  v205 = *(v65 + 4 * (BYTE2(v202) ^ 0xCDu)) ^ *(v64 + 4 * (HIBYTE(v201) ^ 0xB7));
  v206 = *(v65 + 4 * (BYTE2(v201) ^ 0x41u)) ^ *(v62 + 4 * (BYTE1(v202) ^ 0xFAu)) ^ *(v66 + 4 * ((v204 + (v203 ^ 0x29)) ^ 4u)) ^ *(v64 + 4 * (HIBYTE(v200) ^ 0x81));
  v207 = *(v62 + 4 * (BYTE1(v203) ^ 0x1Eu));
  v208 = (v207 ^ 0x465A794C) & (v205 ^ 0x6F282E2F) ^ v205 & 0x309D67D3;
  v209 = (((v205 ^ 0x2E3AD7AB) - 775608235) ^ ((v205 ^ 0x768A4679) - 1988773497) ^ ((v205 ^ 0xB798BFFD) + 1214726147)) + (((v207 ^ 0xD0490261) + 800521631) ^ ((v207 ^ 0xE457E9C7) + 464000569) ^ ((v207 ^ 0xC2D9F539) + 1025903303)) - ((((2 * v208) ^ 0x94449636) - 865064554) ^ (((2 * v208) ^ 0x47BD943) + 1548707553) ^ (((2 * v208) ^ 0xD02F0373) - 2011448111));
  v210 = (v66 + 4 * (v200 ^ 0xD7u));
  v211 = v201 ^ 0x7Bu;
  STACK[0xD8C0] = &v210[v211];
  v212 = *(v64 + 4 * (HIBYTE(v202) ^ 0x60));
  v213 = -1689950405 - (((v212 ^ 0x8F0FF22D) + 1894780371) ^ ((v212 ^ 0xB2D6BC4B) + 1294549941) ^ ((v212 ^ 0x97D6B4E6) + 1747536666));
  v214 = (v213 ^ 0x3888DE14) & (2 * (v213 & 0xBAAA9E45)) ^ v213 & 0xBAAA9E45;
  v215 = ((2 * (v213 ^ 0x6D9CCE96)) ^ 0xAE6CA1A6) & (v213 ^ 0x6D9CCE96) ^ (2 * (v213 ^ 0x6D9CCE96)) & 0xD73650D2;
  v216 = (v215 ^ 0x86240000) & (4 * v214) ^ v214;
  v217 = ((4 * (v215 ^ LODWORD(STACK[0x20E4]))) ^ 0x5CD9434C) & (v215 ^ LODWORD(STACK[0x20E4])) ^ (4 * (v215 ^ LODWORD(STACK[0x20E4]))) & 0xD73650D0;
  v218 = v217 ^ LODWORD(STACK[0x20E0]);
  v219 = ((16 * (v217 ^ 0x83261093)) ^ 0x73650D30) & (v217 ^ 0x83261093) ^ (16 * (v217 ^ 0x83261093)) & 0xD73650D0;
  v220 = v218 & (16 * v216) ^ v216 ^ 0xD73650D3 ^ (v219 ^ 0x53240000) & ((v218 & (16 * v216) ^ v216) << 8);
  v221 = (v220 << 16) & 0x57360000 ^ v220 ^ ((v220 << 16) ^ 0x50D30000) & (((v219 ^ 0x841250C3) << 8) & 0x57360000 ^ 0x41260000 ^ (((v219 ^ 0x841250C3) << 8) ^ 0x36500000) & (v219 ^ 0x841250C3));
  v222 = *(v65 + 4 * (BYTE2(v203) ^ 0xF9u));
  v223 = v213 ^ v212;
  v224 = (((v222 ^ 0x2FD6516) - 50160918) ^ ((v222 ^ 0x6C595F7E) - 1817796478) ^ ((v222 ^ 0x2B83EEC7) - 730066631)) - (((v212 ^ v222 ^ 0x76C3AB52) - 1992534866) ^ ((v212 ^ v222 ^ LODWORD(STACK[0x20E8])) + 203979348) ^ ((v212 ^ v222 ^ 0x6A3C00D1) - 1782317265)) - 2002158214;
  v225 = v223 ^ v224 ^ ((v224 ^ 0x9EEBF221) + 1404951333) ^ ((v224 ^ 0x60DACFF3) - 1383274761) ^ ((v224 ^ 0xFA2754D7) + 930184659) ^ ((v224 ^ 0x36BFBFFF) - 68577541) ^ (2 * v221);
  v226 = (((v222 ^ 0xB81246F1) + 1206761743) ^ ((v222 ^ 0xF9DB1575) + 103082635) ^ ((v222 ^ 0x4EE872B) - 82741035)) + 974358418 + (((v225 ^ 0x247ABA2D) + 971669304) ^ ((v225 ^ 0xC41B34EC) - 645139977) ^ ((v225 ^ 0xCC259D58) - 776644541));
  v227 = *(v211 * 4 + v66) ^ *(v62 + 4 * (BYTE1(v200) ^ 0x5Bu)) ^ v226 ^ ((v226 ^ 0x8DFA18EF) + 1422225016) ^ ((v226 ^ 0x8361CD99) + 1516157698) ^ ((v226 ^ 0xD7A493E6) + 245097855) ^ ((v226 ^ 0xFFFFCFF7) + 650164592);
  v228 = (v209 + 928108711) ^ (((v209 + 928108711) ^ 0xFE053E23) + 952586736) ^ (((v209 + 928108711) ^ 0x9968A982) + 1605027407) ^ (((v209 + 928108711) ^ 0xA08EF86D) + 1716295586) ^ (((v209 + 928108711) ^ 0xFEDEFFFF) + 941396020) ^ *v210;
  v229 = *(v64 + 4 * (HIBYTE(v203) ^ 0x7D)) ^ *(v62 + 4 * (BYTE1(v201) ^ 0xCBu)) ^ *(v66 + 4 * (v202 ^ 4u)) ^ *(v65 + 4 * (BYTE2(v200) ^ 0xA3u));
  v230 = *(v64 + 4 * v161) ^ *(v65 + 4 * v162);
  v231 = ((v230 & 0x20000000 ^ 0x7591BB56) - 1540322317) ^ 0x86377EC;
  v232 = v231 + 1188519450;
  v233 = ((v232 ^ 0x1D18F84A) - 627078901) ^ v232 ^ ((v232 ^ 0x6A8AF44B) - 1391622900) ^ ((v232 ^ LODWORD(STACK[0x20EC])) + 2010254338) ^ ((v232 ^ 0xFFBFFFFF) + 943230656);
  v234 = *(v66 + 4 * v165);
  v235 = 706330468 - v231;
  if (((v233 ^ 0x38788EBF) & (v234 ^ 0xD50F92EF) ^ v233 & 0xED8DC37D) == 0x2808823D)
  {
    v235 = v232;
  }

  v236 = (((v234 ^ 0x88B3ADC3) + 2001490493) ^ ((v234 ^ 0x95A64ACD) + 1784263987) ^ ((v234 ^ 0x2597B69C) - 630699676)) + 1285103618 + v235;
  v237 = ((2 * (v236 ^ 0xC9B0A2C)) ^ 0x7FD751FA) & (v236 ^ 0xC9B0A2C) ^ (2 * (v236 ^ 0xC9B0A2C)) & 0xBFEBA8FC;
  v238 = (v237 ^ 0x1FEB20C8) & (4 * ((v236 ^ 0x2A7A0A8C) & (2 * (v236 & STACK[0x20F0])) ^ v236 & STACK[0x20F0])) ^ (v236 ^ 0x2A7A0A8C) & (2 * (v236 & STACK[0x20F0])) ^ v236 & STACK[0x20F0];
  v239 = ((4 * (v237 ^ 0x8028A805)) ^ 0xFFAEA3F4) & (v237 ^ 0x8028A805) ^ (4 * (v237 ^ 0x8028A805)) & 0xBFEBA8FC;
  v240 = (v239 ^ 0xBFAAA0F0) & (16 * v238) ^ v238;
  v241 = ((16 * (v239 ^ 0x410809)) ^ 0xFEBA8FD0) & (v239 ^ 0x410809) ^ (16 * (v239 ^ 0x410809)) & 0xBFEBA8F0;
  v242 = v240 ^ 0xBFEBA8FD ^ (v241 ^ 0xBEAA8800) & (v240 << 8);
  v243 = v230 & 0xDFFFFFFF ^ *(v62 + 4 * LODWORD(STACK[0x5570])) ^ v236 ^ (2 * ((v242 << 16) & 0x3FEB0000 ^ v242 ^ ((v242 << 16) ^ 0x28FD0000) & (((v241 ^ 0x141202D) << 8) & 0x3FEB0000 ^ 0x14430000 ^ (((v241 ^ 0x141202D) << 8) ^ 0x6BA80000) & (v241 ^ 0x141202D))));
  v244 = *(v66 + 4 * LODWORD(STACK[0x5540])) ^ *(v64 + 4 * LODWORD(STACK[0x5550])) ^ *(v65 + 4 * LODWORD(STACK[0x5560])) ^ *(v62 + 4 * LODWORD(STACK[0x5530]));
  v245 = *(v64 + 4 * LODWORD(STACK[0x5510])) ^ *(v66 + 4 * LODWORD(STACK[0x5500])) ^ *(v62 + 4 * LODWORD(STACK[0x5520])) ^ *(v65 + 4 * v178);
  v246 = *(v62 + 4 * v181) ^ *(v65 + 4 * v180) ^ *(v66 + 4 * v182) ^ *(v64 + 4 * v183);
  v247 = *(v62 + 4 * (BYTE1(v245) ^ 0x35u)) ^ *(v65 + 4 * (BYTE2(v244) ^ 0x57u)) ^ *(v66 + 4 * ((*(v62 + 4 * v181) ^ *(v65 + 4 * v180) ^ *(v66 + 4 * v182) ^ *(v64 + 4 * v183)) ^ 0xFu)) ^ *(v64 + 4 * (HIBYTE(v243) ^ 0x75));
  v248 = *(v64 + 4 * (HIBYTE(v244) ^ 5)) ^ *(v65 + 4 * (BYTE2(v245) ^ 0xAAu));
  v249 = ((v248 & 0x452FE4D7 ^ 0x264994E0) - 371088029) ^ ((v248 & 0x452FE4D7 ^ 0x536CBB2F) - 1664841042) ^ ((v248 & 0x452FE4D7 ^ 0x300D0BC8) - 5948853);
  v250 = *(v62 + 4 * (BYTE1(v246) ^ 0x85u));
  v251 = (v248 & 0x452FE4D7 ^ 0x45282407) & (v250 ^ 0x12F2406) ^ v248 & 0x45282091;
  v252 = v250 ^ v248;
  v253 = v249 + (((v250 & 0x452FE4D7 ^ 0x8AC7CA9F) - 807052029) ^ ((v250 & 0x452FE4D7 ^ 0x3D1C9A9B) + 2017332487) ^ ((v250 & 0x452FE4D7 ^ 0xF3DC5493) - 1224817905)) - ((((2 * v251) ^ 0x975AB946) - 962948537) ^ (((2 * v251) ^ 0xF832D077) - 1443693704) ^ (((2 * v251) ^ 0xE5382933) - 1258814924)) - 1671172104;
  v254 = (v253 ^ 0x3B96D071) & (2 * (v253 & 0xB386D27A)) ^ v253 & 0xB386D27A;
  v255 = ((2 * (v253 ^ 0x5B9ED4C1)) ^ LODWORD(STACK[0x53E8])) & (v253 ^ 0x5B9ED4C1) ^ (2 * (v253 ^ 0x5B9ED4C1)) & 0xE81806BA;
  v256 = (v255 ^ 0xE0100031) & (4 * v254) ^ v254;
  v257 = ((4 * (v255 ^ 0x28080289)) ^ 0xA0601AEC) & (v255 ^ 0x28080289) ^ (4 * (v255 ^ 0x28080289)) & 0xE81806B8;
  v258 = (v257 ^ 0xA00002B3) & (16 * v256) ^ v256;
  v259 = ((16 * (v257 ^ 0x48180413)) ^ LODWORD(STACK[0x20F4])) & (v257 ^ 0x48180413) ^ (16 * (v257 ^ 0x48180413)) & 0xE81806B0;
  v260 = v258 ^ 0xE81806BB ^ (v259 ^ 0x8000020B) & (v258 << 8);
  v261 = v252 & 0xBAD01B28 ^ v253;
  v262 = v66 + 4 * (v243 ^ 0x3Bu);
  v263 = *v262 ^ v261 ^ (2 * ((v260 << 16) & 0x68180000 ^ v260 ^ ((v260 << 16) ^ 0x6BB0000) & (((v259 ^ 0x6818040B) << 8) & 0xE8180000 ^ 0x60180000 ^ (((v259 ^ 0x6818040B) << 8) ^ 0x18060000) & (v259 ^ 0x6818040B))));
  v264 = *(v65 + 4 * (BYTE2(v246) ^ 0x59u)) ^ *(v64 + 4 * (HIBYTE(v245) ^ 0xF8)) ^ *(v66 + 4 * ((*(v66 + 4 * LODWORD(STACK[0x5540])) ^ *(v64 + 4 * LODWORD(STACK[0x5550])) ^ *(v65 + 4 * LODWORD(STACK[0x5560])) ^ *(v62 + 4 * LODWORD(STACK[0x5530]))) ^ 0xFDu)) ^ *(v62 + 4 * (BYTE1(v243) ^ 0x28u));
  v265 = *(v62 + 4 * (BYTE1(v244) ^ 0x8Au)) ^ *(v64 + 4 * (HIBYTE(v246) ^ 0x3C)) ^ *(v66 + 4 * ((*(v64 + 4 * LODWORD(STACK[0x5510])) ^ *(v66 + 4 * LODWORD(STACK[0x5500])) ^ *(v62 + 4 * LODWORD(STACK[0x5520])) ^ *(v65 + 4 * v178)) ^ 0xC2u)) ^ *(v65 + 4 * (BYTE2(v243) ^ 0xF7u));
  HIDWORD(v267) = *(v62 + 4 * (BYTE1(v264) ^ 0xFAu)) ^ *(v64 + 4 * (HIBYTE(v247) ^ 0x9D)) ^ *(v66 + 4 * (v265 ^ 0x29u)) ^ *(v65 + 4 * (BYTE2(v263) ^ 0xA3u));
  LODWORD(v267) = HIDWORD(v267);
  v266 = v267 >> 26;
  HIDWORD(v267) = v266 ^ 0x32;
  LODWORD(v267) = v266 ^ 0xECB2000;
  v268 = *(v65 + 4 * (BYTE2(v264) ^ 0xCDu));
  v269 = *(v62 + 4 * (BYTE1(v265) ^ 0x1Eu));
  STACK[0xD8C0] = v262;
  v270 = *(v64 + 4 * (HIBYTE(v263) ^ 0xDB)) ^ v268 ^ v269 ^ *(v66 + 4 * (v247 ^ 0x3Bu));
  LODWORD(v262) = *(v62 + 4 * (BYTE1(v247) ^ 0x45u)) ^ *(v64 + 4 * (HIBYTE(v264) ^ 0x60)) ^ *(v65 + 4 * (BYTE2(v265) ^ 0xF9u)) ^ *(v66 + 4 * (v263 ^ 0x78u));
  STACK[0xD8A8] = v62;
  v271 = BYTE1(v263) ^ 0x51;
  STACK[0x5580] = v62;
  STACK[0xD8A8] = v62 + 4 * v271;
  v272 = *(v65 + 4 * (BYTE2(v247) ^ 0x30u)) ^ *(v64 + 4 * (HIBYTE(v265) ^ 0x7D));
  STACK[0xD898] = v64;
  STACK[0xD898] = v64;
  v273 = v264 ^ 4;
  STACK[0xD8C0] = v66 + 4 * v273;
  v274 = v272 ^ *(v66 + 4 * v273) ^ *(v62 + 4 * v271);
  v275 = ((v229 ^ 0x798EC10E) + 1120499) ^ ((v229 ^ 0x3738BA2D) + 1319592914) ^ ((v229 ^ 0xE572E556) - 1662174037);
  v276 = ((v270 ^ 0xFFAF9CB0) - 1231021800) ^ ((v270 ^ 0x1436FC45) + 1564047843) ^ ((v270 ^ 0x5D691AAD) + 342269707);
  v277 = ((v262 ^ 0x12412AC6) + 451818568) ^ ((v262 ^ 0x5BED0293) + 1396841491) ^ ((v262 ^ 0xBEFCC92B) - 1236019285);
  v278 = (((v227 ^ 0x45D8A619) + 311321050) ^ ((v227 ^ 0xCCB94EE7) - 1678800600) ^ ((v227 ^ 0x2A780EDB) + 2100218140)) + ((((2 * v227) & 0x3B434026 ^ 0xCF7679AB) - 539597502) ^ (((2 * v227) & 0x3B434026 ^ 0x2EB18FA6) + 1041339213) ^ (((2 * v227) & 0x3B434026 ^ 0xD887F629) - 936908092)) - v277 - 928590391;
  LODWORD(v262) = ((2 * (v278 & 0xDDE6AB5C)) & 0x20081080 | v278 & 0xDDE6AB5C) ^ (2 * (v278 & 0xDDE6AB5C)) & (v278 ^ 0xFDEC9A9B);
  v279 = ((2 * (v278 ^ 0xFDEC9A9B)) ^ 0x4014638E) & (v278 ^ 0xFDEC9A9B) ^ (2 * (v278 ^ 0xFDEC9A9B)) & 0x200A31C6;
  LODWORD(v262) = (v279 ^ 0x2181) & (4 * v262) ^ v262;
  v280 = ((4 * (v279 ^ LODWORD(STACK[0x20F8]))) ^ 0x8028C71C) & (v279 ^ LODWORD(STACK[0x20F8])) ^ (4 * (v279 ^ LODWORD(STACK[0x20F8]))) & 0x200A31C4;
  LODWORD(v262) = (v280 ^ 0x80103) & (16 * v262) ^ v262;
  v281 = ((16 * (v280 ^ 0x200230C3)) ^ 0xA31C70) & (v280 ^ 0x200230C3) ^ (16 * (v280 ^ 0x200230C3)) & 0x200A31C0;
  LODWORD(v262) = v262 ^ 0x200A31C7 ^ (v281 ^ 0x21087) & (v262 << 8);
  LODWORD(v262) = (v262 << 16) & 0x200A0000 ^ v262 ^ ((v262 << 16) ^ 0x31C70000) & (((v281 ^ 0x20082187) << 8) & 0x200A0000 ^ 0x200A0000 ^ (((v281 ^ 0x20082187) << 8) ^ 0xA310000) & (v281 ^ 0x20082187));
  v282 = ((v274 ^ 0x17B79F9) + 1430263924) ^ ((v274 ^ 0x5FB2836B) + 193585890) ^ ((v274 ^ 0xF50D64E7) - 1590295186);
  v283 = v275 - v282 - 327577911;
  v284 = (v283 ^ 0x34A7AF35) & (2 * (v283 & 0xB6A40F04)) ^ v283 & 0xB6A40F04;
  v285 = ((2 * (v283 ^ 0x5CE7A735)) ^ 0xD4875062) & (v283 ^ 0x5CE7A735) ^ (2 * (v283 ^ 0x5CE7A735)) & 0xEA43A830;
  v286 = (v285 ^ 0xC0000020) & (4 * v284) ^ v284;
  v287 = ((4 * (v285 ^ 0x2A40A811)) ^ 0xA90EA0C4) & (v285 ^ 0x2A40A811) ^ (4 * (v285 ^ 0x2A40A811)) & 0xEA43A830;
  v288 = (v287 ^ 0xA802A000) & (16 * v286) ^ v286;
  v289 = ((16 * (v287 ^ 0x42410831)) ^ 0xA43A8310) & (v287 ^ 0x42410831) ^ (16 * (v287 ^ 0x42410831)) & 0xEA43A830;
  v290 = v288 ^ 0xEA43A831 ^ (v289 ^ 0xA0028000) & (v288 << 8);
  v291 = (((v228 ^ 0x5C44056A) + 104458707) ^ ((v228 ^ 0xBA47B39A) - 533045469) ^ ((v228 ^ 0x70216C2B) + 710705300)) - v276 - 459417924;
  v292 = (v267 >> 6) ^ 0xE6AC991E;
  v293 = 1956776055 * (v278 ^ (2 * v262) ^ 0xEDC7A25C);
  v294 = 1216690139 * (v291 ^ ((v291 ^ 0xC267D30) - 1016610866) ^ ((v291 ^ 0x87F2030) - 952180018) ^ ((v291 ^ 0x3199FF5) - 866624247) ^ ((v291 ^ 0x37FEFFF7) - 121684725) ^ 0x79340442);
  v295 = 924270611 * (v283 ^ (2 * ((v290 << 16) & 0x6A430000 ^ v290 ^ ((v290 << 16) ^ 0x28310000) & (((v289 ^ 0x4A412821) << 8) & 0xEA430000 ^ 0x28430000 ^ (((v289 ^ 0x4A412821) << 8) ^ 0x43A80000) & (v289 ^ 0x4A412821)))) ^ 0x821954AD);
  v296 = v294 - 449448779 * (((((v206 ^ 0x14D19DD7) - 556390676) ^ ((v206 ^ 0x3FDE9581) - 170316098) ^ ((v206 ^ 0x598BDC8) - 811661579)) + v292 - 2 * v292 + 1813167045) ^ 0x7F097A0F);
  v297 = v294 - v293;
  v298 = v295 + v293;
  v299 = v295 + v296;
  v300 = v298 + v296;
  v301 = v297 + v299 - 2 * v299;
  v302 = v299 - v301;
  v303 = v292 - (v302 + v300);
  LODWORD(v262) = v301 - (v302 + v300);
  v304 = ((v300 ^ v298 ^ v262 ^ 0x9FB0FB07) - 1854566005) ^ ((v300 ^ v298 ^ v262 ^ 0xCE30CFBA) - 1057643208) ^ ((v300 ^ v298 ^ v262 ^ 0x518034BD) + 1598381617);
  v305 = STACK[0x57C0] + STACK[0x57B0];
  v306 = v282 - 313028127 - v302 + v304;
  v307 = *STACK[0x51E8];
  v308 = *STACK[0x51F0];
  v309 = *(v308 + (v307 & 0xFFFFFFF8 & (((v305 & 0xFFFFFFF8) - 442413051) ^ ((((v305 & 0xFFFFFFF8) - 442413051) ^ 0x6E6BAAA5) - 84851790) ^ ((((v305 & 0xFFFFFFF8) - 442413051) ^ 0xDA1D0E58) + 1317529421) ^ ((((v305 & 0xFFFFFFF8) - 442413051) ^ 0x606C5DE8) - 185158403) ^ ((((v305 & 0xFFFFFFF8) - 442413051) ^ 0xBF7FEFFE) + 736429803) ^ 0x6B6516E8)));
  v310 = v277 - v304;
  *(&v311 + 1) = v305 & 0xFFFFFFFFFFFFFFF8;
  *&v311 = v305;
  v312 = v309 + (v311 >> 8);
  *&v311 = __ROR8__(v309, 61);
  v313 = (((v312 ^ v311) - (v312 ^ v311 ^ 0xB88801D4E1C76353)) ^ 0xFFFFFFFFFFFFFFFELL) + (v312 ^ v311);
  v314 = v276 - v262;
  v315 = ((((v312 ^ 0xB88801D4E1C76353) >> (v262 & 8) >> (v262 & 8 ^ 8)) ^ ((v312 ^ 0xB88801D4E1C76353) << 56)) + v313) ^ 0x38C8B16AE7056877;
  v316 = v315 ^ __ROR8__(v313, 61);
  v317 = (v316 + __ROR8__(v315, 8)) ^ 0xE580B17D8CC5E551;
  v318 = v317 ^ __ROR8__(v316, 61);
  v319 = (__ROR8__(v317, 8) + v318) ^ 0xE1A1FD5BD155F97ALL;
  v320 = __ROR8__(v319, 8);
  v321 = v319 ^ __ROR8__(v318, 61);
  v322 = v321 + v320;
  v323 = 8 * v321;
  v324 = (8 * v321) & 0xAFAB019ED5AB6FD8 | (v321 >> 61);
  v325 = v322 ^ 0xDA604B0C03A2BF99;
  v326 = v324 ^ (v322 ^ 0xDA604B0C03A2BF99) & 0xAFAB019ED5AB6FDFLL | (v322 ^ 0xDA604B0C03A2BF99 ^ v323) & 0x5054FE612A549020;
  v327 = (v326 + __ROR8__(v325, 8)) ^ 0xFA35E2CDCB3E31C7;
  v328 = __ROR8__(v327, 8);
  v329 = v327 ^ __ROR8__(v326, 61);
  v330 = ((v329 + v328) ^ 0xD2F00CE620E5D3AELL ^ __ROR8__(v329, 61)) + __ROR8__((v329 + v328) ^ 0xD2F00CE620E5D3AELL, 8);
  v331 = (v307 + 517575173 - ((2 * v307) & 0x3DB33468) + 2095) ^ 0x1ED99A30;
  if (!LODWORD(STACK[0x5760]))
  {
    v331 = -8;
  }

  *(&v332 + 1) = (v305 + 8) & 0xFFFFFFFFFFFFFFF8;
  *&v332 = v305 + 8;
  v333 = *(v308 + (v307 & 0xFFFFFFF8 & (((v305 + 8) & 0xFFFFFFF8) + 2050767130) & v331));
  v334 = (v333 + (v332 >> 8)) ^ 0xB88801D4E1C76353;
  v335 = v334 ^ __ROR8__(v333, 61);
  v336 = (__ROR8__(v334, 8) + v335) ^ 0x38C8B16AE7056877;
  v337 = v336 ^ __ROR8__(v335, 61);
  v338 = (__ROR8__(v336, 8) + v337) ^ 0xE580B17D8CC5E551;
  v339 = v338 ^ __ROR8__(v337, 61);
  v340 = (v339 + __ROR8__(v338, 8)) ^ 0xE1A1FD5BD155F97ALL;
  v341 = v340 ^ __ROR8__(v339, 61);
  v342 = (v341 + __ROR8__(v340, 8)) ^ 0xDA604B0C03A2BF99;
  v343 = __ROR8__(v342, 8);
  v344 = v342 ^ __ROR8__(v341, 61);
  v345 = (((v344 ^ v343) + 2 * (v344 & v343)) ^ -((v344 ^ v343) + 2 * (v344 & v343)) ^ (0xFA35E2CDCB3E31C7 - (((v344 ^ v343) + 2 * (v344 & v343)) ^ 0xFA35E2CDCB3E31C7))) - 0x5CA1D3234C1CE39;
  *&v332 = __ROR8__(v344, 61);
  v346 = v345 ^ v332;
  v347 = ((v345 ^ v332) + (v345 >> 8) + (v345 << 56)) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(v343) = (v305 + 16) & 0xFFFFFFF8;
  v348 = *(v308 + (((v343 - 503774001) ^ (((v343 - 503774001) ^ 0xB66E58F4) + 774728895) ^ (((v343 - 503774001) ^ 0xE0476E84) + 2013551311) ^ (((v343 - 503774001) ^ 0xCC6A023A) + 1411987057) ^ (((v343 - 503774001) ^ 0xFDFFFFFF) + 1706871734) ^ 0x67BCCBB0) & 0xFFFFFFF8 & v307));
  *(&v332 + 1) = (v305 + 16) & 0xFFFFFFFFFFFFFFF8;
  *&v332 = v305 + 16;
  v349 = (v348 + (v332 >> 8)) ^ 0xB88801D4E1C76353;
  v350 = ((v348 >> (v348 & 0x3D) >> (v348 & 0x3D ^ 0x3D)) | (8 * v348)) ^ v349;
  v351 = (v350 + __ROR8__(v349, 8)) ^ 0x38C8B16AE7056877;
  v352 = v351 ^ __ROR8__(v350, 61);
  v353 = (__ROR8__(v351, 8) + v352) ^ 0xE580B17D8CC5E551;
  v354 = v353 ^ __ROR8__(v352, 61);
  v355 = (v354 + __ROR8__(v353, 8)) ^ 0xE1A1FD5BD155F97ALL;
  v356 = v355 ^ __ROR8__(v354, 61);
  v357 = (__ROR8__(v355, 8) + v356) ^ 0xDA604B0C03A2BF99;
  v358 = v357 ^ __ROR8__(v356, 61);
  v359 = (v358 + __ROR8__(v357, 8)) ^ 0xFA35E2CDCB3E31C7;
  *&v332 = __ROR8__(v358, 61);
  v360 = v359 ^ v332;
  v361 = ((v359 >> 8) ^ v359 ^ v332) + (v359 << 56) + 2 * ((v359 >> 8) & (v359 ^ v332));
  v362 = __ROR8__(v361 - 0x2D0FF319DF1A2C52 - ((2 * v361) & 0xA5E019CC41CBA75CLL), 8) + (v361 ^ __ROR8__(v360, 61) ^ 0x2F00CE620E5D3AELL);
  LOBYTE(v360) = 8 * (v305 & 7);
  v363 = (v330 ^ 0xF4730B31AE70757BLL) >> v360;
  STACK[0x5570] = v363;
  v364 = (__ROR8__(v347, 8) + (v347 ^ __ROR8__(v346, 61))) ^ 0xF4730B31AE70757BLL;
  LOBYTE(v347) = v360 ^ 0x3B;
  v365 = v364 >> v360;
  v366 = v364 << (v360 ^ 0x3Bu);
  STACK[0x5760] = (v362 ^ 0x4730B31AE70757BLL) << v347;
  v367 = v303 - 1870640109;
  LODWORD(v362) = (v303 - 1870640109) >> 24;
  v368 = STACK[0xD8D0] + 4 * v362;
  v369 = v310 + 1158898012;
  v370 = ((v310 + 24924) >> 8);
  v371 = STACK[0x5590] + 4 * v370;
  STACK[0x5590] = v371;
  v372 = v314 + 723988609;
  v373 = v368 + 4 * (-2537739121 - (((v362 ^ 0x2BECC21176C41FA7) + 0x14133DEE1E79332ALL) ^ ((v362 ^ 0x2171CD29F9D93984) + 0x1E8E32D69164150BLL) ^ ((v362 ^ 0xA9D0F388F1D2623) - 0xA9D0F38185FF552))) + 4 * ((v314 + 723988609) >> 24);
  v374 = v373 + 4 * (-3455715124 - (((HIBYTE(v372) ^ 0x3310205E5C539731) - 0x7310205E91A99005) ^ ((HIBYTE(v372) ^ 0x839E77666B23A5FLL) - 0x4839E776AB483D6BLL) ^ ((HIBYTE(v372) ^ 0x3B29C7283AE1AD6ELL) - 0x3B29C728F71BAA5ALL)));
  v375 = STACK[0x5730];
  LODWORD(v364) = *(STACK[0x5730] + 4 * BYTE2(v369)) ^ *(v373 - 0x5E465BAA0AB2C2CALL);
  v376 = v363 + 32 * v366;
  v377 = *(STACK[0x5680] + (BYTE5(v376) ^ 0x9CLL)) ^ 0xEC ^ (2 * *(STACK[0x5680] + (BYTE5(v376) ^ 0x9CLL))) & 0x30;
  v378 = v371 + 4 * (-4079285607 - (((v370 ^ 0x2255CB9876131E0BLL) - 0x6255CB988537EB6CLL) ^ ((v370 ^ 0x192E9E9376FE6DC0) - 0x592E9E9385DA98A7) ^ ((v370 ^ 0x3B7B550B00ED73CBLL) - 0x3B7B550BF3C986ACLL))) + 4 * BYTE1(v306);
  v379 = STACK[0x5660];
  LODWORD(v366) = *(STACK[0x5660] + (BYTE6(v376) ^ 0xD5)) ^ BYTE6(v376) ^ 0xAE;
  LODWORD(v373) = *(STACK[0x56C0] + (HIBYTE(v376) ^ 1));
  v380 = STACK[0xD888];
  STACK[0x5550] = STACK[0xD880];
  v381 = STACK[0x5670];
  v382 = v378 + 4 * (-1775284320 - (((BYTE1(v306) ^ 0x3AC07310AE37F4A6) - 0x7AC07310C7E744C6) ^ ((BYTE1(v306) ^ 0x6AC6F60A0C5F901) - 0x6AC6F60C9154961) ^ ((BYTE1(v306) ^ 0x3C6C1C700EF20DA7) - 0x7C6C1C706722BDC7)));
  LODWORD(v378) = v364 ^ *(v380 + 4 * v367) ^ *(v378 - 0x6374D18FC38B0251);
  LODWORD(v364) = (*(STACK[0x5670] + (BYTE4(v376) ^ 0xEALL)) - 36) ^ 0x5B;
  LODWORD(v343) = v377 << 16;
  LODWORD(STACK[0x5450]) = v364 << 24;
  LODWORD(STACK[0x5440]) = v343;
  LODWORD(v366) = v366 << 8;
  LODWORD(STACK[0x5430]) = v366;
  LODWORD(v366) = ((2 * (v378 & 0x7F)) ^ 0xFFFFFF41) + (v343 ^ v378 ^ ((v364 << 24) - ((v364 << 25) & 0x77777777) - 1157453157) ^ v366 ^ 0xC4D732C4);
  v383 = v374 + 4 * HIBYTE(v369);
  v384 = ((HIBYTE(v369) ^ 0xF14104E04758EF0) - 0xF14104EBFAD2999) ^ ((HIBYTE(v369) ^ 0x3667C319A22E8F99) - 0x3667C31919F628F0) ^ ((HIBYTE(v369) ^ 0x3973D357A65B0169) - 0x3973D3571D83A600);
  LODWORD(STACK[0x5510]) = *(v375 + 4 * BYTE2(v372));
  v385 = v306;
  LODWORD(STACK[0x5480]) = *(v375 + 4 * BYTE2(v306));
  LODWORD(STACK[0x5730]) = *(v375 + 4 * BYTE2(v367));
  LODWORD(STACK[0x5530]) = *(v380 + 4 * v306);
  v386 = v382 + 4 * BYTE1(v367);
  LODWORD(STACK[0x5470]) = *(v380 + 4 * v372);
  LODWORD(STACK[0x5560]) = *(v380 + 4 * v369);
  v387 = ((BYTE1(v367) ^ 0x2287BC203D588740) - 0x2287BC20BFC1EEE5) ^ ((BYTE1(v367) ^ 0x36697BFCF4B8EFD2) + 0x4996840389DE7989) ^ ((BYTE1(v367) ^ 0x14EEC7DCC9E06892) + 0x6B113823B486FEC9);
  LODWORD(v373) = ((-24 * ((v373 >> 3) | (32 * v373))) ^ ((v373 >> 3) | (32 * v373)));
  LODWORD(STACK[0x5420]) = v373;
  v388 = v373 ^ LODWORD(STACK[0x5740]) ^ (v366 + 128);
  v389 = v365 + 32 * STACK[0x5760];
  v390 = *(v379 + (BYTE2(v389) ^ 0x1CLL));
  v391 = (v365 + 32 * LODWORD(STACK[0x5760])) >> 16;
  v392 = BYTE2(v389) & 4;
  if ((v392 & v390) != 0)
  {
    v393 = -v392;
  }

  else
  {
    LOBYTE(v393) = BYTE2(v389) & 4;
  }

  v394 = v388 & 0x40000000;
  v395 = v388 & 0xBFFFFFFF;
  if ((v394 & STACK[0x55D0]) != 0)
  {
    v394 = -v394;
  }

  v396 = ((v394 + LODWORD(STACK[0x55D0])) ^ v395) + 1890184476 - ((2 * ((v394 + LODWORD(STACK[0x55D0])) ^ v395)) & 0xE153DA38);
  v397 = v396 ^ LODWORD(STACK[0x5650]);
  v398 = STACK[0x57A0];
  v399 = *(&off_101353600 + (LODWORD(STACK[0x57A0]) ^ 0x7256)) - 8;
  v400 = (v396 ^ LOBYTE(STACK[0x5650]) ^ 0xBF) + v399[(v396 ^ LOBYTE(STACK[0x5650])) ^ 0x7ELL];
  LODWORD(STACK[0x54D0]) = *(v368 - 0x5E465BAA0AB2C2CALL);
  v401 = v381;
  LODWORD(STACK[0x5490]) = *(v381 + (STACK[0x5570] ^ 0xE9));
  STACK[0x54A0] = v376;
  v402 = STACK[0x5680];
  v403 = *(STACK[0x5680] + (BYTE1(v376) ^ 0x83));
  LODWORD(STACK[0x54C0]) = *(STACK[0x5590] - 0x6374D18FC38B0251);
  LODWORD(STACK[0x54B0]) = *(v379 + (BYTE2(v376) ^ 7));
  v404 = STACK[0x56C0];
  LODWORD(STACK[0x54E0]) = *(STACK[0x56C0] + (BYTE3(v376) ^ 0xEDLL));
  v405 = v383 + 4 * (-3151538025 - v384);
  v406 = *(v383 - 0x5E465BAA0AB2C2CALL);
  v407 = *(v401 + (v365 ^ 0x72));
  v408 = v401;
  v409 = *(v402 + (BYTE1(v389) ^ 0x38));
  v410 = v402;
  v411 = HIBYTE(v385);
  LODWORD(STACK[0x5570]) = v411;
  v412 = v386 + 4 * (-2191092133 - v387);
  LODWORD(v402) = *(v386 - 0x6374D18FC38B0251);
  LODWORD(v401) = *(v404 + (BYTE3(v389) ^ 0xE8));
  v413 = v405 + 4 * v411;
  STACK[0x5540] = v413;
  v414 = *(v408 + (BYTE4(v389) ^ 0xF3));
  LODWORD(STACK[0x5500]) = *(v410 + (BYTE5(v389) ^ 0x9ELL));
  LODWORD(STACK[0x5590]) = BYTE1(v372);
  v415 = v412 + 4 * BYTE1(v372);
  STACK[0x5760] = v415;
  LODWORD(STACK[0x54F0]) = *(v379 + (BYTE6(v389) ^ 0x6ELL));
  v416 = *(v404 + (HIBYTE(v389) ^ 0x56));
  LODWORD(v389) = *(v413 - 0x5E465BAA0AB2C2CALL);
  LODWORD(STACK[0x5520]) = *(v415 - 0x6374D18FC38B0251);
  v417 = STACK[0x57C0];
  *(v417 + LODWORD(STACK[0x56D0])) = v400 ^ 0xCB;
  LOBYTE(v405) = v409 ^ 0x63 ^ (2 * v409) & 0x30;
  v418 = (-24 * ((v401 >> 3) | (32 * v401))) ^ ((v401 >> 3) | (32 * v401));
  LODWORD(v401) = STACK[0x53E0];
  LODWORD(v415) = LODWORD(STACK[0x53E0]) ^ 0x10704FBE ^ LODWORD(STACK[0x5480]) ^ v406 ^ LODWORD(STACK[0x5470]);
  v419 = (v407 - 36) ^ 0x4A;
  LODWORD(STACK[0x56D0]) = v419 << 24;
  LODWORD(v404) = v405 << 16;
  LODWORD(v410) = (v391 & 0xFB ^ 0x21 ^ (v393 + (v390 ^ 0xE9))) << 8;
  LODWORD(STACK[0x5470]) = v404;
  LODWORD(v415) = v415 ^ ((v419 << 24) - ((v419 << 25) & 0x77777777) + 993553274) ^ v404 ^ v418;
  LODWORD(STACK[0x5480]) = v410;
  v420 = STACK[0x5650];
  v421 = ((v415 ^ v410 ^ v402) + 1890184476 - ((2 * (v415 ^ v410 ^ v402)) & 0xE153DA38)) ^ LODWORD(STACK[0x5650]);
  v422 = *(&off_101353600 + (v398 ^ 0x73DC)) - 12;
  LODWORD(v402) = v422[((((v415 ^ v410 ^ v402) - 4836 - ((2 * (v415 ^ v410 ^ v402)) & 0xDA38)) ^ LODWORD(STACK[0x5650])) >> 8) ^ 0xBALL];
  v423 = v417;
  *(v417 + LODWORD(STACK[0x5630])) = ((v402 >> 1) | (v402 << 7)) ^ 0x13;
  *(v417 + LODWORD(STACK[0x5700])) = ((v422[BYTE1(v397)] >> 1) | (v422[BYTE1(v397)] << 7)) ^ 0xB7;
  LODWORD(v417) = v398;
  v424 = *(&off_101353600 + v398 - 29907) - 8;
  *(v423 + LODWORD(STACK[0x55A0])) = v424[BYTE2(v397) ^ 0xABLL] ^ 0xAE;
  *(v423 + LODWORD(STACK[0x55E0])) = v424[BYTE2(v421) ^ 0xCCLL] ^ 0x7A;
  *(v423 + LODWORD(STACK[0x55B0])) = (v399[v421 ^ 9] + (v421 ^ 0xC8)) ^ 0x25;
  LODWORD(v404) = LODWORD(STACK[0x54D0]) ^ LODWORD(STACK[0x5510]) ^ LODWORD(STACK[0x54C0]);
  LODWORD(v402) = ((((LODWORD(STACK[0x5490]) - 36) ^ 0x75) - ((2 * ((LODWORD(STACK[0x5490]) - 36) ^ 0x75)) & 0x24)) << 24) + 301989888;
  v425 = ((v403 ^ ((2 * ~v403) | 0xCE)) ^ 0x3C) << 16;
  v426 = ((LODWORD(STACK[0x54B0]) ^ WORD1(STACK[0x54A0])) ^ 0x40) << 8;
  LODWORD(v404) = (v426 & 0xAF00 ^ (v404 ^ v402 ^ v425 ^ 0x1FB5162C) & 0x9A6AFA9 | (v404 ^ v402 ^ v425 ^ 0x1FB5162C) & 0xF6595056) ^ 0x7DB14C3A;
  LODWORD(v415) = (LODWORD(STACK[0x54E0]) >> 3) | (32 * LODWORD(STACK[0x54E0]));
  LODWORD(v404) = LODWORD(STACK[0x5530]) ^ LODWORD(STACK[0x5410]) ^ v426 & 0xD900 ^ (v426 & 0x8900 | 0x3140028) ^ ((v415 ^ 0x16 ^ (-24 * v415)) - ((2 * (v415 ^ 0x16 ^ (-24 * v415))) & 0x1C8) - 1363765020) ^ (v404 + 486701955 - ((2 * v404) & 0x3A05030A) + 1538);
  v427 = LODWORD(STACK[0x5740]) ^ v420 ^ ((v404 ^ 0xEEC590EC) + 1890184476 - 2 * ((v404 ^ 0xEEC590EC) & 0x70A9ED1F ^ v404 & 3));
  *(v423 + LODWORD(STACK[0x55F0])) = ((LOBYTE(STACK[0x5740]) ^ v420 ^ ((v404 ^ 0xEC) + 28 - 2 * ((v404 ^ 0xEC) & 0x1F ^ v404 & 3)) ^ 7) + v399[(LOBYTE(STACK[0x5740]) ^ v420 ^ ((v404 ^ 0xEC) + 28 - 2 * ((v404 ^ 0xEC) & 0x1F ^ v404 & 3))) ^ 0xC6]) ^ 0x91;
  *(v423 + LODWORD(STACK[0x56E0])) = v424[((v427 ^ 0xC0261974) >> 16) ^ 0x29] ^ 0xF8;
  v428 = *(&off_101353600 + v417 - 29304) - 12;
  STACK[0x5700] = v397;
  *(v423 + LODWORD(STACK[0x56F0])) = v428[BYTE3(v397) ^ 0x93] ^ BYTE3(v397) ^ 0x22;
  LODWORD(v415) = v422[BYTE1(v427) ^ 0x79];
  *(v423 + LODWORD(STACK[0x5710])) = ((v415 >> 1) | (v415 << 7)) ^ 0xF8;
  LODWORD(v417) = v401 ^ LODWORD(STACK[0x5730]) ^ v389 ^ (((((v414 - 36) ^ 0x1C) - ((2 * ((v414 - 36) ^ 0x1C)) & 0x6E)) << 24) + 922746880) ^ LODWORD(STACK[0x5560]) ^ ((((2 * (LOBYTE(STACK[0x5500]) ^ 0xBE)) | 0xCE) ^ LOBYTE(STACK[0x5500]) ^ 0xBE) << 16) ^ (((BYTE6(v389) ^ 0xFA ^ LODWORD(STACK[0x54F0])) << 8) - (((BYTE6(v389) ^ 0xFA ^ LODWORD(STACK[0x54F0])) << 9) & 0x15200) + 1241360814) ^ ((-24 * ((v416 >> 3) | (32 * v416))) ^ ((v416 >> 3) | (32 * v416))) ^ 0x55878D6A;
  v429 = ((v417 ^ LODWORD(STACK[0x5520])) + 1890184476 - ((2 * (v417 ^ LODWORD(STACK[0x5520]))) & 0xE153DA38)) ^ v420;
  *(v423 + LODWORD(STACK[0x5610])) = (v399[(((v417 ^ LOBYTE(STACK[0x5520])) + 28 - ((2 * (v417 ^ LOBYTE(STACK[0x5520]))) & 0x38)) ^ v420) ^ 0x45] + (((v417 ^ LOBYTE(STACK[0x5520])) + 28 - ((2 * (v417 ^ LOBYTE(STACK[0x5520]))) & 0x38)) ^ v420 ^ 0x84)) ^ 0x3E;
  v430 = STACK[0xD880];
  *(STACK[0xD880] + LODWORD(STACK[0x5720])) = v424[BYTE2(v429) ^ 0x54] ^ 0xE3;
  LODWORD(v417) = v422[BYTE1(v429) ^ 0xE8];
  v431 = (v417 >> 1) | (v417 << 7);
  if ((v431 & 2) != 0)
  {
    v432 = -2;
  }

  else
  {
    v432 = 2;
  }

  *(v430 + LODWORD(STACK[0x5600])) = (v432 + v431) ^ 5;
  *(v430 + LODWORD(STACK[0x5770])) = HIBYTE(v421) ^ 0x35 ^ v428[HIBYTE(v421) ^ 0x10];
  STACK[0xD8C0] = v66;
  v433 = STACK[0x5550];
  STACK[0xD8D0] = STACK[0x5540] + 4 * (-2567136178 - (((LODWORD(STACK[0x5570]) ^ 0x9E53F9A0C2F2448) + 0x361AC0656AD3B806) ^ ((LODWORD(STACK[0x5570]) ^ 0x29BFD6444FC8F40ELL) + 0x564029BB29346844) ^ ((LODWORD(STACK[0x5570]) ^ 0x205AE9DE43E7D046) - 0x605AE9DEDAE4B3F4)));
  v434 = STACK[0x5580];
  STACK[0xD8A0] = STACK[0x5760] + 4 * (-679735872 - (((LODWORD(STACK[0x5590]) ^ 0x2228743871F5B375) - 0x6228743859764135) ^ ((LODWORD(STACK[0x5590]) ^ 0x11FB98918276FAB1) + 0x2E04676E550AF70FLL) ^ ((LODWORD(STACK[0x5590]) ^ 0x33D3ECA9F38349C4) + 0x4C2C135624FF447CLL)));
  STACK[0xD8A8] = v434;
  *(v430 + STACK[0x57B0]) = v428[((v427 ^ 0xC0261974) >> 24) ^ 0xCCLL] ^ ((v427 ^ 0xC0261974) >> 24) ^ 4;
  v435 = v428[(((HIBYTE(v429) ^ 0x45) - (HIBYTE(v429) ^ 0xB8)) ^ 0xFFFFFFFE) + (HIBYTE(v429) ^ 0x45)];
  v436 = v435 ^ 0xAA;
  v437 = HIBYTE(v429) & 1;
  if ((v435 & v437) != 0)
  {
    v438 = -v437;
  }

  else
  {
    LOBYTE(v438) = HIBYTE(v429) & 1;
  }

  v439 = HIBYTE(v429) & 0xFE ^ 0x2C ^ (v438 + v436);
  v440 = (((LODWORD(STACK[0x5620]) ^ 0x2F0046AB) - 788547243) ^ ((LODWORD(STACK[0x5620]) ^ 0x55FE7797) - 1442740119) ^ ((LODWORD(STACK[0x5620]) ^ 0x1B316374) - 456221556)) - 1615421870;
  v441 = ((2 * (v440 ^ LODWORD(STACK[0x2100]))) ^ 0xC8896FFC) & (v440 ^ LODWORD(STACK[0x2100])) ^ (2 * (v440 ^ LODWORD(STACK[0x2100]))) & 0xE444B7FE;
  v442 = (v441 ^ 0x2400203A) & (4 * ((v440 ^ 0xA25C23F4) & (2 * (v440 & STACK[0x20FC])) ^ v440 & STACK[0x20FC])) ^ (v440 ^ 0xA25C23F4) & (2 * (v440 & STACK[0x20FC])) ^ v440 & STACK[0x20FC];
  v443 = ((4 * (v441 ^ 0x24449002)) ^ 0x9112DFF8) & (v441 ^ 0x24449002) ^ (4 * (v441 ^ 0x24449002)) & 0xE444B7FC;
  v444 = (v443 ^ 0x800097E6) & (16 * v442) ^ v442;
  v445 = ((16 * (v443 ^ 0x64442006)) ^ 0x444B7FE0) & (v443 ^ 0x64442006) ^ (16 * (v443 ^ 0x64442006)) & 0xE444B7F0;
  v446 = v445 ^ 0xA004801E;
  v447 = v444 ^ 0xE444B7FE ^ (v445 ^ 0x44403700) & (v444 << 8);
  v448 = v440 ^ (2 * ((v447 << 16) & 0x64440000 ^ v447 ^ ((v447 << 16) ^ 0x37FE0000) & ((v446 << 8) & 0x64440000 ^ 0x20400000 ^ ((v446 << 8) ^ 0x44B70000) & v446)));
  *(v433 + LODWORD(STACK[0x5750])) = v439;
  return (*(STACK[0x57D8] + 8 * (LODWORD(STACK[0x57A0]) | (32 * ((((v448 ^ 0xE3A92004) + 1065375308) ^ ((v448 ^ 0x95B3C98C) + 1234878404) ^ ((v448 ^ 0x34033270) - 399883200)) + 1640976968 < 0x40)))))();
}

uint64_t sub_10015BF50()
{
  v1 = STACK[0x57D8];
  STACK[0xB568] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x2E5C ^ ((v0 + 5230) | 0x1000))))();
}

uint64_t sub_10015BFB8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 0x683CBC57EAB92A36);
  STACK[0x9B40] = 0;
  return (*(STACK[0x57D8] + 8 * (((((v2 == 0x308E083E0C524CBELL) ^ (v1 + 1)) & 1) * ((v1 ^ 0x16BA) - 25016)) ^ v1)))();
}

uint64_t sub_10015C0C8()
{
  LODWORD(STACK[0xDF94]) = 0;
  LODWORD(STACK[0xDF90]) = -143155721;
  return (*(STACK[0x57D8] + 8 * ((((v0 - 287916099) | 0x4050) + 287909377) ^ v0 ^ (27208 * (v0 == 784644639)))))();
}

uint64_t sub_10015C190(unint64_t a1)
{
  LODWORD(STACK[0xDF48]) = v2;
  STACK[0xCDB0] = a1;
  v3 = v2 == -143113071;
  LOBYTE(STACK[0xDF4F]) = v3;
  return (*(STACK[0x57D8] + 8 * ((((2 * v1) ^ 0x5F09) * v3) ^ v1)))();
}

uint64_t sub_10015C2D0()
{
  LODWORD(STACK[0xE030]) = -143113071;
  LODWORD(STACK[0xA6B8]) = v1;
  if (STACK[0x5D48])
  {
    v2 = STACK[0x7D20] == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  return (*(STACK[0x57D8] + 8 * ((v3 * ((13469 * (v0 ^ 0x45B9)) ^ 0x6948)) ^ v0)))();
}

uint64_t sub_10015C3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  v8 = (v6 + 25) & 0xFB;
  *v5 = v5[3];
  v5[3] = v7;
  v9 = v5[1];
  v5[1] = v5[2];
  v5[2] = v9;
  v10 = v5[4];
  v5[4] = v5[7];
  v5[7] = v10;
  v11 = v5[5];
  v5[5] = v5[6];
  v5[6] = v11;
  v12 = v5[8];
  v5[8] = v5[11];
  v5[11] = v12;
  v13 = v5[9];
  v5[9] = v5[10];
  v5[10] = v13;
  v14 = v5[12];
  v5[12] = v5[15];
  v5[15] = v14;
  v15 = v5[13];
  v5[13] = v5[14];
  v5[14] = v15;
  v16 = v5[16];
  v5[16] = v5[19];
  v5[19] = v16;
  v17 = v5[17];
  v5[17] = v5[18];
  v5[18] = v17;
  v18 = v5[20];
  v5[20] = v5[23];
  v5[23] = v18;
  v19 = v5[21];
  v5[21] = v5[22];
  v5[22] = v19;
  v20 = v5[24];
  v5[24] = v5[27];
  v5[27] = v20;
  v21 = v5[25];
  v5[25] = v5[26];
  v5[26] = v21;
  v22 = v5[28];
  v5[28] = v5[31];
  v5[31] = v22;
  v23 = v5[29];
  v5[29] = v5[30];
  v5[30] = v23;
  v24 = v5[32];
  v5[32] = v5[35];
  v5[35] = v24;
  v25 = v5[33];
  v5[33] = v5[34];
  v5[34] = v25;
  v26 = v5[36];
  v5[36] = v5[39];
  v5[39] = v26;
  v27 = v5[37];
  v5[37] = v5[38];
  v5[38] = v27;
  v28 = v5[40];
  v5[40] = v5[43];
  v5[43] = v28;
  v29 = v5[41];
  v5[41] = v5[42];
  v5[42] = v29;
  v30 = v5[44];
  v5[44] = v5[47];
  v5[47] = v30;
  v31 = v5[45];
  v5[45] = v5[46];
  v5[46] = v31;
  v32 = v5[48];
  v5[48] = v5[51];
  v5[51] = v32;
  v33 = v5[49];
  v5[49] = v5[50];
  v5[50] = v33;
  v34 = v5[52];
  v5[52] = v5[55];
  v5[55] = v34;
  v35 = v5[53];
  v5[53] = v5[54];
  v5[54] = v35;
  v36 = v6 - 22254;
  v37 = *STACK[0xC238];
  v38 = STACK[0x6CA8];
  *(v38 + 80) = v37 >> (v8 ^ 0x73);
  *(v38 + 81) = BYTE2(v37);
  *(v38 + 82) = BYTE1(v37);
  *(v38 + 83) = v37;
  *(v38 + 84) = bswap32(*(v38 + 20));
  v39 = STACK[0x57D8];
  STACK[0xAD38] = *(STACK[0x57D8] + 8 * v36);
  return (*(v39 + 8 * (v36 ^ 0x36BB)))(a1, a2, a3, a4, a5, 92);
}

uint64_t sub_10015C650()
{
  v0 = STACK[0x51B8] - 303;
  LODWORD(STACK[0x8D14]) = -1;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10015C6BC()
{
  v1 = STACK[0x98E0];
  v2 = *(STACK[0x98E0] + 8);
  v3 = STACK[0xB320];
  v3[1] = v2;
  *v3 = *v1;
  return (*(STACK[0x57D8] + 8 * ((((((v0 - 26466) ^ (v2 == 0)) & 1) == 0) * ((v0 + 733117124) & 0xD44D7FDF ^ 0x7217)) ^ v0)))();
}

uint64_t sub_10015C798()
{
  v0 = STACK[0x24BC];
  v1 = STACK[0x57D8];
  STACK[0x9948] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x24BC]));
  return (*(v1 + 8 * ((v0 + 9404) ^ v0)))();
}

uint64_t sub_10015C7F0@<X0>(int a1@<W8>)
{
  v5 = v2 + 2;
  v6 = v2 - 1;
  *(v4 + v5) = *(STACK[0xC478] + v6);
  return (*(STACK[0x57D8] + 8 * (((v6 == 0) * (v1 ^ v3)) ^ a1)))();
}

uint64_t sub_10015C82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, int a7, int a8)
{
  v20 = v18 ^ (a5 - 69) ^ ((v12 & v11 ^ v19) + a5 - (a6 & (2 * (v12 & v11 ^ v19))));
  v21 = *(*(a4 + 8 * v13) + 4 * (((v20 ^ -v20 ^ (v17 - (v20 ^ v17))) + v17) ^ v16) - 4);
  *(v8 + 4 * (v12 & v11)) = v14 ^ (((v21 - (v21 ^ a7)) ^ 0xFFFFFFFC) + v21);
  return (*(STACK[0x57D8] + 8 * (v15 ^ (((v10 | v9) >= 0) * a8))))();
}

uint64_t sub_10015C96C()
{
  v3 = *(STACK[0x44F0] + 260) & 1;
  v4 = 1534937323 * ((v2 - 240 - 2 * ((v2 - 240) & 0xF02A4CC3AE95911FLL) - 0xFD5B33C516A6EE1) ^ 0x3D52C401687B6A58);
  *(v1 + 624) = ((v0 - 427614804) ^ 0x37) + v4;
  *(v1 + 604) = v4 + v0 + 1451493860;
  *(v1 + 592) = v3 ^ v4;
  *(v1 + 612) = (v0 - 427614804) ^ v4;
  *(v1 + 608) = v4;
  *(v1 + 616) = v4;
  *(v1 + 600) = ((v0 - 427614804) ^ 0x1077) - v4;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v0 + 9182)))(v2 - 240);
  return (*(v5 + 8 * SLODWORD(STACK[0x1D4E4])))(v6);
}

uint64_t sub_10015CA98@<X0>(__int16 a1@<W8>)
{
  v1 = STACK[0x51B8] - 22424;
  LOWORD(STACK[0xD6DE]) = a1;
  return (*(STACK[0x57D8] + 8 * (v1 ^ 0x1361)))();
}

uint64_t sub_10015CB80()
{
  STACK[0x7380] = STACK[0xBB98];
  v1 = STACK[0x57D8];
  STACK[0x9AC0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * ((((v0 - 1556907835) & 0x5CCCB7AC) - 7996) ^ v0)))(15115, 4404, 0x683CBC57EAB92A3ELL, 22622);
}

uint64_t sub_10015CEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x3208]) = LODWORD(STACK[0x4DF0]) | LODWORD(STACK[0x4E44]);
  LODWORD(STACK[0x4B78]) = v8 | LODWORD(STACK[0x55A0]);
  LODWORD(STACK[0x4DA0]) = v7 & (a7 ^ 0x16913C0) | v11;
  v12 = a5 & (v9 ^ 0x2E99E66Cu);
  v13 = *STACK[0x4EF8];
  v14 = *STACK[0x5368];
  v15 = v14 & 0xD0 ^ 0xBE;
  v16 = *STACK[0x5330];
  v17 = v16 & 0xA4 ^ 0x60;
  v18 = *STACK[0x5540];
  v19 = (((v16 ^ (2 * ((v16 ^ 0x64) & (2 * ((v16 ^ 0x64) & (2 * ((v16 ^ 0x64) & (2 * ((v16 ^ 0x64) & (2 * v17) ^ v17)) ^ v17)) ^ v17)) ^ v17))) ^ 0xA4) << 8) | (((v14 ^ (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * v15) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15))) ^ 0xD0) << 16);
  v20 = v18 & 0xC2 ^ 0xB7;
  v21 = (((v18 ^ (2 * ((v18 ^ 0x64) & (2 * ((v18 ^ 0x64) & (2 * ((v18 ^ 0x64) & (2 * ((v18 ^ 0x64) & (2 * ((v18 ^ 0x64) & (2 * ((v18 ^ 0x64) & 0x26 ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20))) ^ 0xB8B68C) & ~v19 | v19 & 0x474900) << 8;
  v22 = v13 & 0x44 ^ 0x70;
  LODWORD(STACK[0x55A0]) = v21 & 0x62D4AC00;
  return (*(STACK[0x57D8] + 8 * (v10 ^ 0x22ACu)))((v13 ^ (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & (2 * v22) ^ v22)) ^ v22)) ^ v22)) ^ v22))), v12, v21 ^ 0x50911FFu);
}

uint64_t sub_10015D118@<X0>(unsigned __int8 *a1@<X8>)
{
  v2 = STACK[0x57C0];
  v3 = *(&off_101353600 + (LODWORD(STACK[0x57C0]) ^ 0x1BBF));
  v4 = *(v3 + (a1[3] ^ 0xF5));
  v5 = *(v3 + (a1[15] ^ 0x28));
  v6 = (-24 * ((v4 >> 3) | (32 * v4))) ^ ((v4 >> 3) | (32 * v4));
  v7 = *(&off_101353600 + LODWORD(STACK[0x57C0]) - 5952) - 8;
  v8 = (v7[*a1 ^ 0x2CLL] - 36) ^ 0xBE;
  if ((v7[a1[4] ^ 0x41] & 2) != 0)
  {
    v9 = -38;
  }

  else
  {
    v9 = -34;
  }

  v10 = *(&off_101353600 + (v2 ^ 0x19E7));
  v11 = *(v10 + (a1[9] ^ 0x6ELL));
  LODWORD(STACK[0x57B0]) = (v9 + v7[a1[4] ^ 0x41]) ^ 0xFC;
  STACK[0xD8C8] = 0;
  STACK[0xD8D0] = 0x5E465BAA0AB2C2CALL;
  STACK[0xD898] = 0;
  STACK[0xD8A0] = 0x6374D18FC38B0251;
  STACK[0xD8C0] = 0;
  STACK[0xD8A8] = 0;
  STACK[0xD8B0] = 0;
  LODWORD(STACK[0xD8BC]) = 1415372580;
  v12 = *(&off_101353600 + (v2 ^ 0x1965));
  v13 = *(v3 + (a1[11] ^ 0x3CLL));
  v14 = a1[2] ^ 0x14 ^ *(v12 + (a1[2] ^ 0xA5));
  v15 = (v13 >> 3) | (32 * v13);
  v16 = a1[14];
  v17 = *(v12 + (v16 ^ 0x49));
  v18 = a1[7];
  v19 = ((-24 * v15) ^ v15);
  LODWORD(STACK[0x5720]) = v19;
  STACK[0x56C0] = v3;
  LODWORD(v18) = *(v3 + (v18 ^ 0x43));
  v20 = a1[13];
  LODWORD(STACK[0x5790]) = v16 ^ 5 ^ v17;
  LODWORD(STACK[0x5780]) = ((-24 * ((v5 >> 3) | (32 * v5))) ^ ((v5 >> 3) | (32 * v5)));
  v21 = (-24 * ((v18 >> 3) | (32 * v18))) ^ ((v18 >> 3) | (32 * v18));
  LODWORD(v16) = *(v10 + (v20 ^ 0x29)) ^ 0xFFFFFFBE;
  LODWORD(v18) = ((4 * v16) | 0xFFFFFF9D) ^ ((v16 >> 7) & 1 | (2 * v16));
  v22 = v7[a1[8] ^ 0xCCLL];
  LODWORD(STACK[0x5770]) = v21;
  v23 = ((v18 >> 1) | (v18 << 7)) ^ 0x5C;
  v24 = a1[10];
  LODWORD(STACK[0x5760]) = v23 << 16;
  v25 = v6 | (v8 << 24) | (v14 << 8);
  LOBYTE(v14) = *(v10 + (a1[1] ^ 0x18));
  v26 = ((v24 ^ 0xF3 ^ *(v12 + (v24 ^ 0xEC))) << 8) | ((((v22 - 36) & 2 | 0xAAAAAAA8) ^ (v22 - 36) & 0xA8 | ((v22 - 36) & 0x11 | 0x55555544) ^ (v22 - 36) & 0x44444444) << 24) | v19 & 0xFF00FFFF | ((((2 * v11) & 0x30 ^ 0xFE ^ -((2 * v11) & 0x30 ^ 0xFE) ^ ((v11 ^ 0xA4) - (v11 ^ 0xA4 ^ (2 * v11) & 0x30 ^ 0xFE))) + (v11 ^ 0xA4)) << 16);
  v27 = v14 ^ 0x6D ^ (2 * v14) & 0x30;
  v28 = a1[12] ^ v1;
  STACK[0x5670] = v7;
  v29 = a1[6];
  LOBYTE(v28) = v7[v28] - 36;
  v30 = v25 & 0xFF00FFFF | (v27 << 16);
  STACK[0x5660] = v12;
  v31 = *(v12 + (v29 ^ 0xFB));
  LODWORD(STACK[0x5750]) = v28 ^ 0xA7;
  v32 = a1[5];
  LODWORD(STACK[0x5740]) = v29 ^ 0xAA ^ v31;
  STACK[0x5680] = v10;
  LODWORD(STACK[0x57A0]) = (*(v10 + (v32 ^ 0x37)) ^ 0xB7 ^ (2 * *(v10 + (v32 ^ 0x37))) & 0x30) << 16;
  LODWORD(STACK[0x5730]) = v26 ^ 0xAE;
  LODWORD(STACK[0x5600]) = v30 ^ 0xF4;
  return (*(STACK[0x57D8] + 8 * v2))(1698493627, 17281, 4278255361, STACK[0xD880], v2 ^ 0x45E4u, 4294967273, 49, STACK[0xD890]);
}

uint64_t sub_10015D590()
{
  v2 = STACK[0xC068];
  v3 = STACK[0x3A10];
  LODWORD(STACK[0x1D4CC]) = STACK[0x3A10] + v0 + 1451493860;
  LODWORD(STACK[0x1D4C8]) = ((v0 + 1027413475) ^ 0xE92) - v3;
  STACK[0x1D4D8] = v2 + v3;
  LODWORD(STACK[0x1D4D4]) = (v0 + 1027413475) ^ v3;
  LODWORD(STACK[0x1D4E0]) = v3 + v0 + 1027413475 + 14;
  STACK[0x1D4C0] = v3;
  LODWORD(STACK[0x1D4D0]) = v3;
  v4 = v0 ^ 0x2462;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * v4))(v1 - 240);
  return (*(v5 + 8 * SLODWORD(STACK[0x1D4E4])))(v6);
}

uint64_t sub_10015D62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27.i64[0] = a1 + v5 + (v6 ^ a3);
  v27.i64[1] = a1 + v5 + 4;
  v28.i64[0] = a1 + v5 + 9;
  v28.i64[1] = a1 + v5 + 8;
  v29.i64[0] = a1 + v5 + 7;
  v29.i64[1] = a1 + v5 + 6;
  v30.i64[0] = a1 + v5 + 3;
  v30.i64[1] = a1 + v5 + 2;
  v31 = vandq_s8(v30, *&STACK[0x4D70]);
  v32 = vandq_s8(v29, *&STACK[0x4D70]);
  v33 = vandq_s8(v28, *&STACK[0x4D70]);
  v34 = vandq_s8(v27, *&STACK[0x4D70]);
  v35 = vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL);
  v36 = vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL);
  v37 = vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL);
  v38 = vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL);
  v39 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x5760], v36), *&STACK[0x5720]), vorrq_s8(vaddq_s64(v36, *&STACK[0x5740]), *&STACK[0x5750]));
  v40 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x5760], v35), *&STACK[0x5720]), vorrq_s8(vaddq_s64(v35, *&STACK[0x5740]), *&STACK[0x5750]));
  v41 = vsubq_s64(*&STACK[0x5710], vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x5760], v37), *&STACK[0x5720]), vorrq_s8(vaddq_s64(v37, *&STACK[0x5740]), *&STACK[0x5750])));
  v42 = vsubq_s64(*&STACK[0x5710], vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x5760], v38), *&STACK[0x5720]), vorrq_s8(vaddq_s64(v38, *&STACK[0x5740]), *&STACK[0x5750])));
  v43 = veorq_s8(v42, v15);
  v44 = veorq_s8(v41, v15);
  v45 = veorq_s8(v41, v14);
  v46 = veorq_s8(v42, v14);
  v47 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL), v46);
  v48 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), v45);
  v49 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v47, v17), vorrq_s8(v47, v19)), v19), v18);
  v50 = vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL);
  v51 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v48, v17), vorrq_s8(v48, v19)), v19), v18);
  v52 = veorq_s8(v51, vsraq_n_u64(vshlq_n_s64(v45, 3uLL), v45, 0x3DuLL));
  v53 = veorq_s8(v49, v50);
  v54 = vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL);
  v55 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v53);
  v56 = vaddq_s64(v54, v52);
  v57 = veorq_s8(vaddq_s64(vsubq_s64(v56, vandq_s8(vaddq_s64(v56, v56), v20)), v16), v21);
  v58 = vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL);
  v59 = veorq_s8(vaddq_s64(vsubq_s64(v55, vandq_s8(vaddq_s64(v55, v55), v20)), v16), v21);
  v60 = veorq_s8(v59, vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL));
  v61 = veorq_s8(v57, v58);
  v62 = vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL);
  v63 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v61);
  v64 = veorq_s8(vaddq_s64(v62, v60), *&STACK[0x4470]);
  v65 = vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL);
  v66 = veorq_s8(v63, *&STACK[0x4470]);
  v67 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v68 = veorq_s8(v64, v65);
  v69 = vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL);
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v68);
  v71 = vaddq_s64(v69, v67);
  v72 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v71, v71), v22), v71), v23), v24);
  v73 = vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL);
  v74 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v70, v70), v22), v70), v23), v24);
  v75 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v76 = veorq_s8(v72, v73);
  v77 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v76);
  v79 = vaddq_s64(v77, v75);
  v80 = veorq_s8(vaddq_s64(vsubq_s64(v79, vandq_s8(vaddq_s64(v79, v79), v26)), v10), v11);
  v81 = veorq_s8(vaddq_s64(vsubq_s64(v78, vandq_s8(vaddq_s64(v78, v78), v26)), v10), v11);
  v82 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v83 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v84 = veorq_s8(v80, v82);
  v85 = vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL);
  v86 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v84);
  v87 = veorq_s8(vaddq_s64(v85, v83), *&STACK[0x4490]);
  v88 = vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL);
  v89 = veorq_s8(v86, *&STACK[0x4490]);
  v90 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL));
  v91 = veorq_s8(v87, v88);
  v92 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v93 = vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL);
  v94 = vdupq_n_s64(v4);
  v95 = vsubq_s64(*&STACK[0x5710], v39);
  v96 = vaddq_s64(v93, v91);
  v97 = vaddq_s64(v92, v90);
  v136.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v97, v13), vorrq_s8(v97, v25)), v25), v12), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), v94)));
  v136.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v96, v13), vorrq_s8(v96, v25)), v25), v12), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), v94)));
  v98 = veorq_s8(v95, v15);
  v99 = veorq_s8(v95, v14);
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99);
  v101 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v100, v17), vorrq_s8(v100, v19)), v19), v18);
  v102 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102);
  v104 = veorq_s8(vaddq_s64(vsubq_s64(v103, vandq_s8(vaddq_s64(v103, v103), v20)), v16), v21);
  v105 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v106 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105), *&STACK[0x4470]);
  v107 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107);
  v109 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v108, v108), v22), v108), v23), v24);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110);
  v112 = veorq_s8(vaddq_s64(vsubq_s64(v111, vandq_s8(vaddq_s64(v111, v111), v26)), *&STACK[0x57C0]), v11);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), *&STACK[0x4490]);
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL)));
  v116 = vsubq_s64(*&STACK[0x5710], v40);
  v136.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v115, v13), vorrq_s8(v115, v25)), v25), v12), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v94)));
  v117 = veorq_s8(v116, v15);
  v118 = veorq_s8(v116, v14);
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v119, v17), vorrq_s8(v119, v19)), v19), v18);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121);
  v123 = veorq_s8(vaddq_s64(vsubq_s64(v122, vandq_s8(vaddq_s64(v122, v122), v20)), v16), v21);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v125 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124), *&STACK[0x4470]);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126);
  v128 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v127, v127), v22), v127), v23), v24);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v130 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129);
  v131 = veorq_s8(vaddq_s64(vsubq_s64(v130, vandq_s8(vaddq_s64(v130, v130), v26)), *&STACK[0x57C0]), v11);
  v132 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v133 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v132), *&STACK[0x4490]);
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL)));
  v136.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v134, v13), vorrq_s8(v134, v25)), v25), v12), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), v94)));
  *(a1 + v5 + 2) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(*(a2 + v5)), 0xF0F0F0F0F0F0F0FLL), *&vqtbl4q_s8(v136, v3[26])));
  return (*(STACK[0x57D8] + 8 * (((v8 == 0) * v9) ^ v7)))(a1 - 8, a2 - 8);
}

uint64_t sub_10015DBFC@<X0>(void *a1@<X1>, int a2@<W2>, unsigned int a3@<W3>, uint64_t a4@<X4>, int a5@<W5>, int a6@<W6>, unint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v22 = (v10 ^ a3) * a6;
  v23 = *(v9 + 824) + a8;
  v24 = *(*a1 + ((*v8 & ((v23 & (v22 ^ v20)) + ((1776329248 - (v23 & (v22 ^ v20))) | a2) + (((v23 & (v22 ^ v20)) + v21) | a2) + a5)) & 0xFFFFFFFFFFFFFFF8));
  v25 = __ROR8__(v23 & (v22 ^ v20), 8);
  v26 = (a4 - ((v25 + v24) | a4) + ((v25 + v24) | v15)) ^ v16;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (v28 + v27 - (v17 & (2 * (v28 + v27))) + v18) ^ v19;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ v12;
  v32 = __ROR8__(v31, 8);
  v33 = v31 ^ __ROR8__(v30, 61);
  v34 = (v32 + v33) ^ 0x1C031738E4A64104;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x7D0ACAAAE9EC381DLL;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0x52F1884918D8D6A2;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0xB20726EF1F63AAFLL;
  *v23 = ((__ROR8__(v40, 8) + (v40 ^ __ROR8__(v39, 61))) ^ a7) >> (8 * (v23 & 7u));
  return (*(STACK[0x57D8] + 8 * (((v11 < *v13) * v14) ^ (v10 - 2778))))();
}

uint64_t sub_10015DF2C()
{
  v0 = STACK[0x51B8] - 128;
  v1 = STACK[0x61C4];
  LODWORD(STACK[0x8DC0]) = STACK[0x61C4];
  return (*(STACK[0x57D8] + 8 * ((8795 * (v1 == 1)) ^ v0)))();
}

uint64_t sub_10015DFC0(_DWORD *a1)
{
  v1 = a1[795];
  v2 = STACK[0x85FC];
  a1[803] = STACK[0x85FC];
  return (*(STACK[0x57D8] + 8 * (((((v1 == v2) ^ a1[802]) & 1) * (a1[801] ^ 0x1BE0)) ^ a1[800])))();
}

uint64_t sub_10015E020@<X0>(uint64_t a1@<X8>)
{
  v2 = STACK[0xFB4C];
  LODWORD(STACK[0xFB50]) = STACK[0xFB4C];
  LODWORD(STACK[0xFB54]) = v2 - 18495;
  LODWORD(STACK[0xFB58]) = v2 - 22375;
  STACK[0xFB40] = a1 + 16 * v1 + 8;
  v3 = STACK[0x57D8];
  STACK[0xFB30] = *(STACK[0x57D8] + 8 * (v2 ^ 0x18AA));
  return (*(v3 + 8 * (v2 ^ 0x1875)))();
}

uint64_t sub_10015E13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x8130] = STACK[0xAEA0];
  v5 = STACK[0xCE10];
  STACK[0x9B88] = STACK[0xCE10];
  return (*(STACK[0x57D8] + 8 * ((((((v4 + 2980) ^ (v5 == 0)) & 1) == 0) * ((v4 - 12221) ^ 0x3F17)) ^ v4)))(a1, a2, a3, a4, 0xF41651499F5E3C67);
}

uint64_t sub_10015E1D4()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 15679)))(32);
  STACK[0xB320] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 - 15465) | 0x5000) ^ 0x536D)) ^ v0)))();
}

uint64_t sub_10015E2C0()
{
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v2 ^ 0x763A)))(*(v0 + 185));
  STACK[0x7ED8] += ((v2 + 3578) | 0x4012u) ^ 0xFFFFFFFFFFFFA786;
  return (*(v3 + 8 * ((26258 * (v1 == -143113071)) ^ v2)))(v4);
}

uint64_t sub_10015E324()
{
  v2 = *(v1 + 2912);
  v3 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v2 & 0xFFFFFFF8 ^ 0xE488E298) + 2002328389 + ((2 * (v2 & 0xFFFFFFF8)) | 0x36EE3ACF))) & 0xFFFFFFFFFFFFFFF8));
  v4 = (v3 + __ROR8__(v2 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xC2AF3EAA3FF1B8E4;
  v5 = v4 ^ __ROR8__(v3, 61);
  v6 = (__ROR8__(v4, 8) + v5) ^ 0x65F254DD188DB4FCLL;
  v7 = __ROR8__(v6, 8);
  v8 = v6 ^ __ROR8__(v5, 61);
  v9 = (v7 + v8) ^ 0x6FF046966119128DLL;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0xA1B29DC5D776132BLL;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = __ROR8__(v11, 8);
  v14 = (((2 * (v13 + v12)) & 0x2A437CB90A60D206) - (v13 + v12) + 0x6ADE41A37ACF96FCLL) ^ 0x85DA61E28F2ADE10;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0xD8C7B31FCA19D9DELL;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (0x1C3302826412E0BFLL - ((v18 + v17) | 0x1C3302826412E0BFLL) + ((v18 + v17) | 0xE3CCFD7D9BED1F40)) ^ 0xB799FC53115CDCCFLL;
  LODWORD(v2) = 3903 * ((((__ROR8__(v19, 8) + (v19 ^ __ROR8__(v17, 61))) ^ 0x6F4F60BC0E025EE0) >> (8 * (v2 & 7u))) ^ *(v1 + 295)) + 4008381;
  *(*(v1 + 4000) + 39211) = *(*(v1 + 4008) + v2 - 5896 * (((1456909 * v2) >> 32) >> 1));
  v20 = *(v1 + 3984) + 7;
  *(v1 + 296) = v20;
  v21 = STACK[0x57D8];
  v22 = *(STACK[0x57D8] + 8 * (LODWORD(STACK[0x4D50]) + 31666));
  *(v1 + 2920) = v20;
  *(v1 + 280) = v22;
  return (*(v21 + 8 * (v0 + 8890)))();
}

uint64_t sub_10015E564@<X0>(unsigned __int8 *a1@<X2>, uint64_t a2@<X4>, unsigned __int8 *a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = a1[5] ^ 0xB3;
  *(v13 - 180) = v11;
  v16 = *(&off_101353600 + (v14 ^ (v10 + 721))) - 12;
  v17 = *(&off_101353600 + (v14 ^ 0xFCE5D047));
  v18 = *(v17 + (a1[8] ^ 0x98)) + ((v14 - 2095419846) & 0x7FFFDF7C ^ 0x4C);
  v19 = (*(v17 + (a1[8] ^ 0x98)) + ((v14 + 58) & 0x7C ^ 0x4C)) & 0x74 ^ 0xFFFFFF90;
  v20 = v18 ^ (2 * ((v18 ^ 0x54) & (2 * ((v18 ^ 0x54) & (2 * ((v18 ^ 0x54) & (2 * ((v18 ^ 0x54) & (2 * ((v18 ^ 0x54) & (2 * v19) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ 0x4C;
  v21 = v12 + v14;
  v22 = *(&off_101353600 + v21 + 514) - 12;
  v23 = v22[a1[7] ^ 0x86];
  v24 = (v23 ^ 0xFFFFFF01) & ((v16[v15] << 16) ^ 0x823A672B) | v23 & 0xD4;
  v25 = *(&off_101353600 + (v14 ^ 0xFCE5D5AE));
  v26 = *(v25 + (a1[2] ^ 0xB7)) << 8;
  v27 = *(v17 + ~a1[12]) + 12;
  v28 = v27 & 0x54 | 0xB;
  v29 = v28 ^ v27 & 0x3E;
  v30 = v27 ^ (2 * ((v27 ^ 0x54) & (2 * ((v27 ^ 0x54) & (2 * ((v27 ^ 0x54) & (2 * ((v27 ^ 0x54) & (2 * ((v27 ^ 0x54) & (2 * (v27 & (2 * v28) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29));
  v31 = *(v17 + (a1[4] ^ 0xEBLL)) + 12;
  v32 = v31 & 0x26 ^ 0x69;
  v33 = (((v31 ^ 0x54) & (2 * ((v31 ^ 0x54) & (2 * ((v31 ^ 0x54) & (2 * ((v31 ^ 0x54) & (2 * (v32 ^ v31 & 0x32)) ^ v32)) ^ v32)) ^ v32)) ^ v32) << 25) ^ (v31 << 24);
  v34 = v33 & 0xD7000000 ^ 0xED56FAE0 ^ (v33 ^ 0x22FFFAFF) & (v24 ^ 0xAAF69DCF);
  LOBYTE(v33) = v16[a1[13] ^ 0xB0];
  v35 = *(v25 + (a1[10] ^ 0xA7)) ^ 0x20;
  v36 = v22[a1[3] ^ 0xABLL];
  v37 = (v36 & 0x4F | (v36 ^ 0xFFFFFF7F) & (((v26 ^ 0x8AFF8493) & ((v16[a1[1] ^ 0xC6] << 16) ^ 0x8A5AE693) | v26 & 0x1900) ^ 0x785B4123)) ^ 0xF234A6FE;
  v38 = (v34 + ((*(v25 + (a1[6] ^ 0x1ALL)) ^ 0x23) << 8)) ^ 0x7D;
  v39 = *(v25 + (a1[14] ^ 0x71)) ^ 0x7C;
  v40 = v22[a1[15] ^ 0xEDLL];
  v41 = ((((v20 << 24) ^ 0xCF113F2B) & ((v35 << 8) ^ 0xFFBBBFEB) & 0xFFFF3FFF | (v35 >> 6 << 14)) ^ 0xD1113F2B) + ((v16[a1[9] ^ 0xF8] ^ 0xDD) << 16);
  v42 = v37 + (((*(v17 + (*a1 ^ 0x12)) + 96) ^ 0xFFFFFFE3) << 24);
  v43 = (((((v30 ^ 0x7C) << 24) ^ 0x139B1F8D) & (((v33 ^ 0xA4) << 16) ^ 0xFFDF7FCD) | ((v33 ^ 0xA4) << 16) & 0x640000) ^ 0xE39B1F8D | v40 ^ 0x5F | (v39 << 8)) ^ 0x9CF2C0C1;
  LODWORD(v17) = v22[a1[11] ^ 0x28] ^ 0xE3;
  v44 = *(&off_101353600 + (v14 ^ 0xFCE5D422)) - 12;
  v45 = *&v44[4 * (v33 ^ 0xED)];
  HIDWORD(v46) = v45 ^ 0x3A0;
  LODWORD(v46) = v45 ^ 0x5B8D0000;
  v47 = v30 ^ 0x2Au;
  v48 = *(&off_101353600 + (v14 ^ 0xFCE5D5B4));
  v49 = *(v48 + 4 * v47);
  v50 = *(&off_101353600 + v21 + 1469) - 8;
  LODWORD(v40) = (v49 - ((2 * v49 - 1046170996) & 0xE034EE72) - 789786497) ^ *&v50[4 * (v40 ^ 0x20)] ^ (v46 >> 10);
  v51 = *(&off_101353600 + v21 + 64);
  v52 = *(v51 + 4 * (BYTE1(v43) ^ 0xF7u)) ^ v42 ^ (v40 - ((2 * v40) & 0x8C4D0D36) - 970553701);
  v53 = v52 ^ v38;
  LODWORD(v115) = v17 | v41;
  HIDWORD(v115) = v43;
  HIDWORD(v113) = v53 ^ (v17 | v41) ^ 0x9A4EE2A0;
  v54 = *&v44[4 * (((HIDWORD(v113) ^ v43) >> 16) ^ 0x6F)];
  HIDWORD(v46) = v54 ^ 0x3A0;
  LODWORD(v46) = v54 ^ 0x5B8D0000;
  v55 = ((v46 >> 10) - ((2 * (v46 >> 10)) & 0x8C4D0D36) - 970553701) ^ *(v51 + 4 * (((WORD2(v113) ^ v43) >> 8) ^ 0xABu));
  v56 = HIDWORD(v113) ^ v43 ^ 0x60D45C79;
  v114 = __PAIR64__(v52, v53);
  HIDWORD(v112) = (*(v48 + 4 * (((HIDWORD(v113) ^ v43) >> 24) ^ 0x5A)) + 1624398150) ^ *&v50[4 * ((BYTE4(v113) ^ v43) ^ 0xC7)] ^ v52 ^ (v55 - ((2 * v55) & 0xE034EE72) + 1880782649);
  LODWORD(v112) = HIDWORD(v112) ^ 0xF442B432 ^ v53;
  v57 = v112 ^ 0xE652624E ^ v53 ^ (v17 | v41);
  v58 = v57 ^ v56;
  LODWORD(v40) = *(v48 + 4 * (((v57 ^ v56) >> 24) ^ 0x27));
  v59 = *&v44[4 * (((v57 ^ v56) >> 16) ^ 0x90)];
  HIDWORD(v46) = v59 ^ 0x3A0;
  LODWORD(v46) = v59 ^ 0x5B8D0000;
  LODWORD(v17) = (v40 - ((2 * v40 - 1046170996) & 0xE034EE72) - 789786497) ^ *&v50[4 * ((v57 ^ v56) ^ 0x3F)] ^ (v46 >> 10);
  v60 = HIDWORD(v112) ^ 0xF442B432 ^ *(v51 + 4 * (((v57 ^ v56) >> 8) ^ 0x68u)) ^ (v17 - ((2 * v17) & 0x8C4D0D36) - 970553701);
  HIDWORD(v110) = v60 ^ v112 ^ 0xE652624E;
  LODWORD(v113) = v56;
  v61 = HIDWORD(v110) ^ 0xF15E34DC ^ v56;
  v62 = *(v48 + 4 * (HIBYTE(v61) ^ 0xDD));
  LODWORD(v17) = *&v44[4 * (((((v61 ^ 0xE7B12158) >> 16) ^ -((v61 ^ 0xE7B12158) >> 16) ^ (211 - (((v61 ^ 0xE7B12158) >> 16) ^ 0xD3))) + 211) ^ 0x68)];
  HIDWORD(v46) = v17 ^ 0x3A0;
  LODWORD(v46) = v17 ^ 0x5B8D0000;
  LODWORD(v110) = v61;
  LODWORD(v17) = (v46 >> 10) ^ *(v51 + 4 * (((v61 ^ 0x49FD) >> 8) ^ 0x9Fu)) ^ (v62 - ((2 * v62 - 1046170996) & 0x8C4D0D36) + 653844449);
  v111 = __PAIR64__(v57, v60);
  LODWORD(v17) = v60 ^ *&v50[4 * (v61 ^ 0xE6)] ^ (v17 - ((2 * v17) & 0xE034EE72) + 1880782649);
  HIDWORD(v109) = HIDWORD(v110) ^ 0xF15E34DC ^ v57;
  LODWORD(v16) = v17 ^ HIDWORD(v110) ^ 0xF15E34DC ^ 0x9EB12158;
  HIDWORD(v108) = v16 ^ HIDWORD(v109) ^ 0xA7A1F724;
  LODWORD(v109) = v17 ^ HIDWORD(v110) ^ 0xF15E34DC;
  v63 = HIDWORD(v108) ^ v61 ^ 0xE7B12158;
  v64 = *(v48 + 4 * (HIBYTE(v63) ^ 0x83));
  v65 = v64 - ((2 * v64 - 1046170996) & 0x8C4D0D36);
  v66 = *&v44[4 * (((v63 ^ 0xFAE896C7) >> 16) ^ 0xD9)];
  HIDWORD(v46) = v66 ^ 0x3A0;
  LODWORD(v46) = v66 ^ 0x5B8D0000;
  v67 = (v46 >> 10) ^ *(v51 + 4 * (((v63 ^ 0x96C7) >> 8) ^ 9u)) ^ (v65 + 653844449);
  HIDWORD(v107) = v17 ^ *&v50[4 * (v63 ^ 0x1B)] ^ (v67 - ((2 * v67) & 0xE034EE72) + 1880782649);
  LODWORD(v108) = v63;
  v68 = HIDWORD(v107) ^ 0x79000000 ^ HIDWORD(v109) ^ 0xA7A1F724;
  v69 = v68 ^ v63;
  v70 = *&v44[4 * (((v69 ^ 0x26E74EBu) >> 16) ^ 0x3A)];
  HIDWORD(v46) = v70 ^ 0x3A0;
  LODWORD(v46) = v70 ^ 0x5B8D0000;
  HIDWORD(v106) = v69;
  LODWORD(v107) = v68;
  v71 = v68 ^ 0x44BA2892;
  HIDWORD(v105) = *&v50[4 * (v69 ^ 0x3A)] ^ *(v51 + 4 * (((v69 ^ 0x74EB) >> 8) ^ 0x96u)) ^ (v46 >> 10) ^ HIDWORD(v107) ^ 0x79000000 ^ (*(v48 + 4 * (((((v69 ^ 0x1BEF1584u) >> 24) ^ 0xC6 ^ -(((v69 ^ 0x1BEF1584u) >> 24) ^ 0xC6) ^ (105 - (((v69 ^ 0x1BEF1584u) >> 24) ^ 0xAF))) + 105) ^ 0x95)) + 1624398150);
  LODWORD(v106) = HIDWORD(v107) ^ 0x79000000 ^ v16;
  LODWORD(v105) = HIDWORD(v105) ^ 0x4962C57E ^ v106;
  *(v13 - 192) = v105 ^ 0x93B12158;
  HIDWORD(v104) = v105 ^ 0x93B12158 ^ v68 ^ 0x44BA2892;
  v72 = HIDWORD(v104) ^ v69 ^ 0x1BEF1584;
  v73 = *(v48 + 4 * (HIBYTE(v72) ^ 0xC9));
  v74 = *&v44[4 * (((v72 ^ 0x5837C374) >> 16) ^ 0xE2)];
  HIDWORD(v46) = v74 ^ 0x3A0;
  LODWORD(v46) = v74 ^ 0x5B8D0000;
  v75 = (v46 >> 10) ^ *(v51 + 4 * (((v72 ^ 0xC374) >> 8) ^ 0x40u)) ^ (v73 - ((2 * v73 - 1046170996) & 0x8C4D0D36) + 653844449);
  v76 = HIDWORD(v105) ^ 0x4962C57E ^ *&v50[4 * (v72 ^ 0x55)] ^ (v75 - ((2 * v75) & 0xE034EE72) + 1880782649);
  v77 = v76 ^ v71;
  LODWORD(v104) = v72;
  v78 = v76 ^ v71 ^ v72;
  v79 = *&v44[4 * (((v78 ^ 0xB9B12158) >> 16) ^ 0xBB)];
  HIDWORD(v46) = v79 ^ 0x3A0;
  LODWORD(v46) = v79 ^ 0x5B8D0000;
  v80 = ((v46 >> 10) - ((2 * (v46 >> 10)) & 0x8C4D0D36) - 970553701) ^ *(v51 + 4 * (((v78 ^ 0x2158) >> 8) ^ 0xF7u));
  HIDWORD(v103) = v78;
  LODWORD(v40) = (*(v48 + 4 * (HIBYTE(v78) ^ 0x83)) + 1624398150) ^ *&v50[4 * (v78 ^ 0xE6)] ^ (v80 - ((2 * v80) & 0xE034EE72) + 1880782649);
  LODWORD(v103) = v40 ^ v105 ^ 0x93B12158;
  v81 = v103 ^ 0x9DEF1584;
  HIDWORD(v102) = v81 ^ v76 ^ v71;
  v82 = HIDWORD(v102) ^ v78 ^ 0xB9B12158;
  v83 = *&v44[4 * (((v82 ^ 0x1086E22C) >> 16) ^ 0x53)];
  HIDWORD(v46) = v83 ^ 0x3A0;
  LODWORD(v46) = v83 ^ 0x5B8D0000;
  v84 = (*(v48 + 4 * (HIBYTE(v82) ^ 0x16)) + 1624398150) ^ *(v51 + 4 * (((v82 ^ 0xE22C) >> 8) ^ 0x61u)) ^ ((v46 >> 10) - ((2 * (v46 >> 10)) & 0x8C4D0D36) - 970553701);
  HIDWORD(v101) = v40 ^ v76;
  LODWORD(v102) = v82;
  v85 = *&v50[4 * (v82 ^ 0x55)] ^ v40 ^ v76 ^ 0xAC000000 ^ (v84 - ((2 * v84) & 0xE034EE72) + 1880782649);
  v86 = v85 ^ v77 ^ v82;
  HIDWORD(v100) = v86 ^ 0x85B12158;
  v87 = *&v44[4 * (BYTE2(v86) ^ 0xA)];
  HIDWORD(v46) = v87 ^ 0x3A0;
  LODWORD(v46) = v87 ^ 0x5B8D0000;
  LODWORD(v50) = *(v51 + 4 * (((v86 ^ 0x2158) >> 8) ^ 0xF7u)) ^ *&v50[4 * (v86 ^ 0xE6)] ^ (*(v48 + 4 * (HIBYTE(v86) ^ 0xBF)) + 1624398150) ^ (v46 >> 10);
  v88 = v17 ^ 0xC9238219;
  v89 = v58 ^ 0xBB26788D;
  v90 = *(&off_101353600 + (v14 ^ 0xFCE5D4B1)) - 12;
  v91 = *(&off_101353600 + v21 + 976) - 12;
  v92 = v91[a3[11] ^ 0x69] ^ 0x44 | ((v90[a3[10] ^ 0x40] ^ 0xD0u) << 8);
  v99 = *(&off_101353600 + v21 + 137) - 12;
  HIDWORD(a10) = 25;
  v98 = *(&off_101353600 + v21 + 370) - 12;
  v93 = v91[a3[7] ^ 0x26] ^ 0xB | ((v90[a3[6] ^ 0xDFLL] ^ 0x19) << 8) | (((-61 * v99[a3[4] ^ 0xE2] + 25) ^ 0xCCCCCCCC) << 24) | ((v98[a3[5] ^ 0x15] ^ 0xCD) << 16);
  *(v13 - 184) = (((*(v13 - 180) ^ 0xE5671B43) - 1804173726) ^ ((*(v13 - 180) ^ 0xF9C9BD11) - 1999054796) ^ ((*(v13 - 180) ^ 0xFE078E6E) - 1894323379)) - 144878755;
  LODWORD(v100) = v85 ^ v77 ^ 0x5337C374;
  HIDWORD(v96) = v50 ^ v81 ^ v85 ^ v77 ^ 0xBE42752;
  LODWORD(v97) = v50 ^ v81;
  HIDWORD(v97) = v89 + v88 - 2105351857;
  LODWORD(v96) = HIDWORD(v97) ^ (2105351857 - (v89 + v88));
  HIDWORD(v95) = v76 ^ *(v13 - 192);
  LODWORD(v101) = v85;
  LODWORD(v95) = v85 ^ v50;
  return (*(a2 + 8 * ((27124 * (v14 < 0x552D2470)) ^ (v14 + 52057459))))(2295912500, v93, v92, v81, 71, v88, v89, v90, a4, v95, v96, v97, v98, v91, a10, v99, v90, __PAIR64__(v88, v89), v100, v101, v102, v103, __PAIR64__(v76, v77), v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115);
}

uint64_t sub_10015F3E8(void *a1)
{
  v2 = STACK[0x1CB8];
  v3 = (LODWORD(STACK[0x1CB8]) + 1901812792) & 0x8EA49EBD;
  v4 = (LODWORD(STACK[0x1CB8]) - 1698603601) & 0x653EABB9;
  *a1 = 0;
  a1[1] = 0;
  *(v1 - 0x683CBC57EAB92A36) = a1 + 0x308E083E0C524CBELL;
  return (*(STACK[0x57D8] + 8 * ((((v4 - 3722) ^ v3) * (v1 == 0x683CBC57EAB92A3ELL)) ^ v2)))();
}

uint64_t sub_10015F490()
{
  STACK[0xAF60] = v0 + 1;
  v2 = *(*STACK[0x51F0] + (*STACK[0x51E8] & ((v1 - 29118) ^ 0xFFFFFFFC) & ((((v0 & 0xFFFFFFF8) + 989170686) ^ 0xC0871354) - (((v1 + 1780968085) & 0x95D87BFE ^ 0x810E7EF0) & (-1978341374 - 2 * (v0 & 0xFFFFFFF8))) + 2137264366)));
  v3 = __ROR8__(v0 & 0xFFFFFFFFFFFFFFF8, 8);
  v4 = (((2 * (v2 + v3)) | 0x76E6D748BBDDC73ALL) - (v2 + v3) - 0x3B736BA45DEEE39DLL) ^ 0xCF653AEDC2B0DFFALL;
  v5 = v4 ^ __ROR8__(v2, 61);
  v6 = __ROR8__(v4, 8);
  v7 = (((2 * (v6 + v5)) | 0xFEF109197B183438) - (v6 + v5) + 0x877B734273E5E4) ^ 0xEA4AC662817C7055;
  v8 = v7 ^ __ROR8__(v5, 61);
  v9 = (__ROR8__(v7, 8) + v8) ^ 0x2275D4C73835399BLL;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0xE5AF1AB32EBD3CDDLL;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0xC7DDC9F6CC45B721;
  v14 = __ROR8__(v13, 8);
  v15 = v13 ^ __ROR8__(v12, 61);
  v16 = (((v14 + v15) | 0xD6FE539A197BEC35) - ((v14 + v15) | 0x2901AC65E68413CALL) + 0x2901AC65E68413CALL) ^ 0x7ED8733F40A9364DLL;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (((2 * (v18 + v17)) | 0xE88BAD99BAE4E90ELL) - (v18 + v17) - 0x7445D6CCDD727487) ^ 0x2BC83AF27EEA7E9CLL;
  LODWORD(v17) = (((__ROR8__(v19, 8) + (v19 ^ __ROR8__(v17, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * (v0 & 7u))) ^ *v0;
  LODWORD(v17) = ((v17 ^ 0xFFFFFFF9) + 75) ^ ((v17 ^ 0x36) - 122) ^ ((v17 ^ 0xFFFFFFCF) + 125);
  return (*(STACK[0x57D8] + 8 * ((v1 - 29118) ^ 0xEA5 ^ (8769 * ((((v17 - (v1 - 29118)) | (v1 - 29118 - v17)) & 0x80) == 0)))))();
}

uint64_t sub_10015F750@<X0>(int a1@<W8>)
{
  STACK[0x7900] = STACK[0x8818];
  STACK[0x9E20] = 0;
  LODWORD(STACK[0x6A2C]) = 2101965948;
  STACK[0x7FB0] = 0;
  STACK[0xCBC0] = &STACK[0x7FB0];
  LODWORD(STACK[0x94E4]) = -688060346;
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_10015F808@<X0>(unint64_t a1@<X8>)
{
  v2 = __ROR8__(a1 & 0xFFFFFFFFFFFFFFF8, 8);
  v3 = ((2 * v2 + 0x4736DD1D788A11FELL) & 0x4095802692EFE768) - v2 + 0x7C19D15DFA43034CLL;
  v4 = v3 ^ 0x5AD31D847F5A1AE6;
  v3 ^= 0x460869F19D725D19uLL;
  v5 = __ROR8__(v4, 8);
  v6 = ((((v5 + v3) << ((v1 - 58) ^ 0x57u)) | 0x6E2D3F1F69927218) - (v5 + v3) + 0x48E960704B36C6F4) ^ 0x4ABE7CAB83AB199BLL;
  v7 = v6 ^ __ROR8__(v3, 61);
  v8 = __ROR8__(v6, 8);
  v9 = (v8 + v7 - ((2 * (v8 + v7)) & 0xEEA46FB871ED388CLL) - 0x8ADC823C70963BALL) ^ 0xE76A53E91A3B8BD4;
  v10 = v9 ^ __ROR8__(v7, 61);
  v11 = __ROR8__(v9, 8);
  v12 = (((2 * (v11 + v10)) & 0xE911F3492E74C008) - (v11 + v10) - 0x7488F9A4973A6005) ^ 0x3481C44049CBD0CCLL;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0x9882E727DB37CF94;
  v15 = __ROR8__(v14, 8);
  v16 = v14 ^ __ROR8__(v13, 61);
  v17 = (((2 * (v15 + v16)) | 0xBACA425799B5F7B4) - (v15 + v16) - 0x5D65212BCCDAFBDALL) ^ 0x5898040ACF6F9230;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (0x42A03FA88EF6EAE5 - ((v19 + v18) ^ 0xF2AFB1808B0C473 | 0x42A03FA88EF6EAE5) + ((v19 + v18) ^ 0xF2AFB1808B0C473 | 0xBD5FC0577109151ALL)) ^ 0xC9231D7A479DEAC3;
  v21 = __ROR8__(v20, 8);
  v22 = __ROR8__(v18, 61);
  *a1 = (((((2 * (v21 + (v20 ^ v22))) & 0xBDE9B394A5A685B6) - (v21 + (v20 ^ v22)) + 0x210B2635AD2CBD24) ^ 0x8E10F2D8274AAB6FLL) >> (8 * (a1 & 7u))) ^ 0x14;
  return (*(STACK[0x57D8] + 8 * (v1 + 4952)))(0x1C64917143BAF700, 0x7B5626353E243BAALL);
}

uint64_t sub_10015FB58(int a1)
{
  v8 = (*v3 + 4);
  *v3 = v8;
  v9 = *(STACK[0x57D8] + 8 * a1);
  v10 = *v7;
  v11 = (v8 ^ v4) + v6 + (v5 & (2 * v8)) - 0x6563162D8F21A184;
  v12 = STACK[0x4C78];
  v13 = STACK[0x4C70];
  v14 = STACK[0x4CA8];
  *(v10 + v11) = v1 ^ *(STACK[0x4C78] + (v11 & 0xF)) ^ *((v11 & 0xF) + STACK[0x4C70] + 4) ^ *(STACK[0x4CA8] + (v11 & 0xF)) ^ (83 * (v11 & 0xF)) ^ 0xAE;
  *(v10 + v11 + 1) = v2 ^ (83 * ((v11 + 1) & 0xF)) ^ *(v12 + ((v11 + 1) & 0xF)) ^ *(((v11 + 1) & 0xF) + v13 + 4) ^ *(v14 + ((v11 + 1) & 0xF)) ^ 0x63;
  return v9();
}

uint64_t sub_10015FD48()
{
  v3 = STACK[0x51B8] - 10635;
  v4 = (STACK[0x51B8] - 1868294783) & 0x6F5BFAFA;
  v5 = STACK[0x4488];
  *(v0 + 592) = STACK[0x4488];
  *(v0 + 600) = v3 - 289235981 * (((v1 ^ 0x8A9E02E4) - 1948823848 - 2 * ((v1 ^ 0x8A9E02E4) & 0x8BD74ED8)) ^ 0x86CB9C03) + 9434;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v3 ^ 0x5297)))(v2 - 240);
  v9 = *(v0 + 604) == (v4 ^ 0x68D2) && *v5 != 0;
  return (*(v6 + 8 * ((50 * v9) ^ v3)))(v7);
}

uint64_t sub_10015FE5C()
{
  v1 = *(STACK[0xA280] + 24);
  STACK[0xC750] = v1;
  return (*(STACK[0x57D8] + 8 * (((v1 != 0) * (((v0 - 13800) | 5) - 1947)) ^ v0)))();
}

uint64_t sub_10015FEB4(int a1)
{
  v3 = (a1 + v1 + 948) & 0x1A2F6FEF;
  STACK[0x1D4C0] = 0;
  LODWORD(STACK[0x1D4C8]) = (v1 - 1723122832) ^ (1917435887 * ((((2 * ((v2 - 240) ^ 0xA5BC1756)) | 0xBB372AC6) - ((v2 - 240) ^ 0xA5BC1756) + 577006237) ^ 0x9E9CD933));
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x51AB)))(v2 - 240);
  return (*(v4 + 8 * (((*STACK[0x4678] > v3 - 25379) * (v1 ^ 0x2DAF)) ^ v1)))(v5);
}

uint64_t sub_10016005C(uint64_t a1, int a2, char a3, int a4, char a5, uint64_t a6, int a7, int a8)
{
  v24 = *(a1 + 4 * v18);
  v25 = (a4 + 2552) ^ (2 * ((v24 ^ a2) & STACK[0x5670] ^ v8));
  v26 = ((((LODWORD(STACK[0x56D0]) + (v18 ^ (2 * (v18 & STACK[0x5700]))) - (a8 & (2 * (v18 ^ (2 * (v18 & STACK[0x5700]))))) + v13) ^ v14) << a3 << a5) + (((v18 ^ (2 * (v18 & STACK[0x5700]))) & v9) >> STACK[0x5780])) ^ LODWORD(STACK[0x5750]);
  v27 = (v25 + v22 - (v23 & (2 * v25))) ^ v24;
  v28 = 545 * ((v26 - ((2 * v26) & 0x3A) + 29) ^ v12);
  v29 = STACK[0x5770];
  *(v29 + 4 * (v28 + v20 - 1552 * (((v28 + v20) * v19) >> 32))) = v16 ^ v21 ^ (((v27 & STACK[0x56E0]) >> STACK[0x57C0]) | ((v27 & STACK[0x5760]) << STACK[0x57B0]));
  *(v29 + 4 * (v28 + a7 - 1552 * (((v28 + a7) * v19) >> 32))) = v11 ^ (v15 + 139) ^ *(v17 + v18);
  return (*(STACK[0x57D8] + 8 * (((v18 == 255) * v10) ^ LODWORD(STACK[0x56C0]))))();
}

uint64_t sub_1001601B8()
{
  STACK[0x57C0] = 0;
  v1 = STACK[0x51B8] - 18197;
  STACK[0x8178] = (STACK[0x24E4] & 0x212B6DA8 ^ 0x74F849547AEC0E16) + 0x67310FA72B6EDB77 * v0;
  v2 = STACK[0x6FF0];
  v3 = STACK[0x8238] + 16 * STACK[0xC8C8];
  STACK[0x7EA0] = *v3;
  v4 = *(v3 + 8);
  LODWORD(STACK[0x686C]) = v4;
  STACK[0x8510] = 0x1883660EE8144416;
  STACK[0x7810] = v2;
  LODWORD(STACK[0xC0DC]) = -2013569034;
  STACK[0x8000] = &STACK[0x8510];
  STACK[0x5FC0] = 0;
  LODWORD(STACK[0xA12C]) = v4;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1001602B8()
{
  STACK[0x9670] = STACK[0x9258];
  LODWORD(STACK[0x66D4]) = STACK[0x97D0];
  LODWORD(STACK[0x7C14]) = STACK[0xCBDC];
  return (*(STACK[0x57D8] + 8 * ((v0 - 1942545930) ^ LODWORD(STACK[0x1CC4]) ^ (56086 * (LODWORD(STACK[0x1CC4]) <= LODWORD(STACK[0x13F8]))))))();
}

uint64_t sub_100160474()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v1 + 9207)))();
  STACK[0x8258] = 0;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_1001604A0()
{
  v0 = (STACK[0x51B8] - 16208) | 0x2201;
  v1 = 3 * (STACK[0x51B8] ^ 0x5677);
  v2 = STACK[0x51B8] - 11763;
  v3 = LODWORD(STACK[0x8B10]) - 8;
  LODWORD(STACK[0xD470]) = v3;
  if (v3 <= (v1 ^ 0x2263u))
  {
    v4 = STACK[0x89C8];
  }

  else
  {
    v4 = -143155761;
  }

  LODWORD(STACK[0xE064]) = v4;
  return (*(STACK[0x57D8] + 8 * ((17824 * (v4 == (v0 ^ 0xF7787F96))) ^ v2)))();
}

uint64_t sub_10016054C()
{
  v1 = STACK[0xC540];
  *(v1 + 32) = -769884012;
  v1 += 32;
  STACK[0x9350] = v1;
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
  return (*(v2 + 8 * ((v0 + 4866) ^ v0)))();
}

uint64_t sub_1001606B0@<X0>(uint64_t a1@<X4>, int a2@<W8>)
{
  v9 = *((*(v4 + a1) ^ v5) + v7 + v8);
  v10 = *((*(v4 + a1 + 1) ^ v5) + v7 + v8);
  *(v4 + 3824) = ((v9 >> 6) | (4 * v9)) ^ v6;
  *(v4 + 3825) = ((v10 >> 6) | (4 * v10)) ^ v6;
  return (*(STACK[0x57D8] + 8 * (((v3 == 0) * a2) ^ v2)))();
}

uint64_t sub_100160768@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W3>, int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W7>, unsigned __int8 a8@<W8>)
{
  LODWORD(STACK[0x4AF0]) = LODWORD(STACK[0x5400]) | LODWORD(STACK[0x5410]);
  LODWORD(STACK[0x4A08]) = LODWORD(STACK[0x53F0]) | LODWORD(STACK[0x5408]);
  LODWORD(STACK[0x5620]) = STACK[0x53E8] & (v14 ^ 0x193E4236);
  v16 = STACK[0x53E0];
  LODWORD(STACK[0x5408]) = v15 & (LODWORD(STACK[0x53E0]) ^ 0x189BF670);
  LODWORD(STACK[0x5410]) = STACK[0x54F0] & (v13 ^ 0x2F518AE9);
  LODWORD(STACK[0x54E0]) &= a1 ^ 0xCB172260;
  LODWORD(STACK[0x5610]) = STACK[0x54C0] & (v12 ^ 0x1C1A2F33);
  LODWORD(STACK[0x54C0]) = STACK[0x5520] & (v16 ^ 0xB26F4664);
  LODWORD(STACK[0x5520]) = v8 & (a7 ^ 0x6377583A);
  LODWORD(STACK[0x53F0]) = v9 & (a8 ^ 0x1FD20C12);
  LODWORD(STACK[0x54F0]) = a4 & (v11 ^ 0xF6639157);
  LODWORD(STACK[0x53E8]) = a5 + (a2 ^ 0x40);
  LODWORD(STACK[0x5400]) = a6 & (a3 ^ 0x2278445A);
  return (*(STACK[0x57D8] + 8 * (v10 + 2363)))(STACK[0x5570], STACK[0x52C0], STACK[0x5308]);
}

uint64_t sub_100160B38()
{
  v1 = *(STACK[0xA7F0] + 24);
  STACK[0xB578] = v1;
  return (*(STACK[0x57D8] + 8 * ((126 * (((v1 == 0) ^ (v0 - 60)) & 1)) ^ v0)))();
}

uint64_t sub_100160BB0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v8 = STACK[0x5570];
  LODWORD(STACK[0x5750]) = (a4 ^ 0x7300B367) - a8 + ((LODWORD(STACK[0x5570]) - 13154) | 0x4800) + ((2 * a6) & 0x2BC1253E) + 1780421899;
  return (*(STACK[0x57D8] + 8 * v8))();
}

uint64_t sub_100160C24@<X0>(int a1@<W8>)
{
  v3 = ((((8 * a1) ^ 0x62AF962A) - 556024801) ^ (v1 + 2059251844 + ((8 * a1) ^ 0xC6CA22ED)) ^ (((8 * a1) ^ 0xA465B4C7) + 403807988)) - 1530374522;
  v4 = (v3 ^ 0x1E8B7F15) & (2 * (v3 & 0x9EC37F51)) ^ v3 & 0x9EC37F51;
  v5 = ((2 * (v3 ^ 0x2E09C737)) ^ 0x619570CC) & (v3 ^ 0x2E09C737) ^ (2 * (v3 ^ 0x2E09C737)) & 0xB0CAB866;
  v6 = v5 ^ 0x904A8822;
  v7 = (v5 ^ 0x20403066) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0xC32AE198) & v6 ^ (4 * v6) & 0xB0CAB864;
  v9 = (v8 ^ 0x800AA000) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x30C01866)) ^ 0xCAB8660) & (v8 ^ 0x30C01866) ^ (16 * (v8 ^ 0x30C01866)) & 0xB0CAB860;
  v11 = v9 ^ 0xB0CAB866 ^ (v10 ^ 0x8A8006) & (v9 << 8);
  v12 = v3 ^ (2 * ((v11 << 16) & 0x30CA0000 ^ v11 ^ ((v11 << 16) ^ 0x38660000) & (((v10 ^ 0xB0403806) << 8) & 0x30CA0000 ^ 0x30420000 ^ (((v10 ^ 0xB0403806) << 8) ^ 0x4AB80000) & (v10 ^ 0xB0403806))));
  *(v2 + 1428) = v12 ^ 0x4DCE8F09;
  v13 = STACK[0x57D8];
  v14 = (*(STACK[0x57D8] + 8 * (v1 + 9192)))(v12 ^ 0x9FD20F9D);
  *(v2 + 1432) = v14;
  return (*(v13 + 8 * (((2 * (v14 != 0)) | (8 * (v14 != 0))) ^ (v1 - 13509))))();
}

uint64_t sub_100160F88()
{
  v0 = STACK[0x1EA0];
  v1 = LODWORD(STACK[0x1EA0]) ^ 0x488A;
  v2 = STACK[0x57D8];
  STACK[0x91E8] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1EA0]));
  return (*(v2 + 8 * ((v1 + 2315) ^ v0)))();
}

uint64_t sub_100161048@<X0>(int a1@<W7>, int a2@<W8>)
{
  LODWORD(STACK[0x56E0]) = 0;
  v6 = *(STACK[0x5298] + (STACK[0x5220] & STACK[0x5158]));
  v7 = STACK[0x5168] ^ 0xDA604B0C03A2BF99 ^ STACK[0x5160];
  v8 = (__ROR8__(STACK[0x5168] ^ 0xDA604B0C03A2BF99, 8) + v7) ^ 0xFA35E2CDCB3E31C7;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0xD2F00CE620E5D3AELL;
  v11 = __ROR8__(v10, 8) + (v10 ^ __ROR8__(v9, 61));
  v12 = STACK[0x5110] ^ 0xE1A1FD5BD155F97ALL ^ STACK[0x5118];
  v13 = (__ROR8__(STACK[0x5110] ^ 0xE1A1FD5BD155F97ALL, 8) + v12) ^ 0xDA604B0C03A2BF99;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0xFA35E2CDCB3E31C7;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(STACK[0x5368]) = LODWORD(STACK[0x57C0]) ^ ((v11 ^ 0xF4730B31AE70757BLL) >> STACK[0x57B0]);
  v18 = __ROR8__(v17, 8) + (v17 ^ __ROR8__(v16, 61));
  v19 = *(STACK[0x5620] + (v3 & ((a2 ^ 0x5BA4CBAF) + 513240427 + (STACK[0x53B0] & 0xB7499750))));
  v20 = (((2 * (v19 + STACK[0x56F0])) & 0x28DC8E102BAE410CLL) - (v19 + STACK[0x56F0]) - 0x146E470815D72087) ^ 0x5319B9230BEFBC2ALL;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (v22 + v21 - ((2 * (v22 + v21)) & 0x325F703BCD8ED44) + 0x192FB81DE6C76A2) ^ 0x395A4AEB39691ED5;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0xE580B17D8CC5E551;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (((2 * (v27 + v26)) & 0xC208C77D0ACEDB78) - (v27 + v26) - 0x610463BE85676DBDLL) ^ 0x7F5A611AABCD6B39;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (((2 * (v30 + v29)) & 0x65790FADFC8FD5E2) - (v30 + v29) + 0x4D43782901B8150ELL) ^ 0x97233325021AAA97;
  v32 = v31 ^ __ROR8__(v29, 61);
  LODWORD(STACK[0x53A8]) = LODWORD(STACK[0x5790]) ^ ((v18 ^ 0xF4730B31AE70757BLL) >> STACK[0x5780]);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0xFA35E2CDCB3E31C7;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (((2 * (v35 + v34)) | 0xA4797C395337C79CLL) - (v35 + v34) + 0x2DC341E356641C32) ^ 0xCCB2FA897E3060;
  v37 = ((__ROR8__(v36, 8) + (v36 ^ __ROR8__(v34, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5378];
  v38 = *(STACK[0x54C0] + ((((STACK[0x54B0] ^ 0xAF77E9BC) - 893107744 + (v5 & 0x5EEFD370) + 3454) & STACK[0x53F8]) & 0xFFFFFFFFFFFFFFF8));
  v39 = (v38 + STACK[0x5600]) ^ 0xB88801D4E1C76353;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (((v41 + v40) | 0x699628384C55E2F5) - ((v41 + v40) | 0x9669D7C7B3AA1D0ALL) - 0x699628384C55E2F6) ^ 0x515E9952AB508A82;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0xE580B17D8CC5E551;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = __ROR8__(v44, 8);
  v47 = (((2 * (v46 + v45)) | 0x2F327563B18B7F88) - (v46 + v45) - 0x17993AB1D8C5BFC4) ^ 0xF638C7EA099046BELL;
  v48 = v47 ^ __ROR8__(v45, 61);
  LODWORD(STACK[0x53A0]) = LODWORD(STACK[0x5670]) ^ v37;
  v49 = (__ROR8__(v47, 8) + v48) ^ 0xDA604B0C03A2BF99;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0xFA35E2CDCB3E31C7;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ 0xD2F00CE620E5D3AELL;
  v54 = __ROR8__(v53, 8) + (v53 ^ __ROR8__(v52, 61));
  v55 = (v6 + STACK[0x52A8]) ^ 0xB88801D4E1C76353 ^ __ROR8__(v6, 61);
  v56 = __ROR8__((v6 + STACK[0x52A8]) ^ 0xB88801D4E1C76353, 8);
  v57 = (((2 * (v56 + v55)) | 0xBB62AEC543FBB71CLL) - (v56 + v55) + 0x224EA89D5E022472) ^ 0xE579E60846F8B3F9;
  v58 = v57 ^ __ROR8__(v55, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ 0xE580B17D8CC5E551;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = __ROR8__(v59, 8);
  v62 = (((2 * (v61 + v60)) | 0x1CFA049CBF3CED4ALL) - (v61 + v60) + 0x7182FDB1A061895BLL) ^ 0x6FDCFF158ECB8FDFLL;
  v63 = v62 ^ __ROR8__(v60, 61);
  v64 = (__ROR8__(v62, 8) + v63) ^ 0xDA604B0C03A2BF99;
  v65 = v64 ^ __ROR8__(v63, 61);
  v66 = __ROR8__(v64, 8);
  LODWORD(STACK[0x5348]) = LODWORD(STACK[0x5740]) ^ ((((v54 | 0xD8761A089C29FB13) - (v54 | 0x2789E5F763D604ECLL) + 0x2789E5F763D604ECLL) ^ 0x2C05113932598E68) >> STACK[0x5700]);
  v67 = *(STACK[0x5258] + (LODWORD(STACK[0x5250]) & ((STACK[0x52B0] ^ 0x63C506C4) + 376910420 + (STACK[0x5190] & 0xC78A0D80))));
  v68 = (v66 + v65 - ((2 * (v66 + v65)) & 0x2EFDD5E4E09046ELL) - 0x7E881150D8FB7DC9) ^ 0x7B420C62EC3AB3F0;
  v69 = v68 ^ __ROR8__(v65, 61);
  v70 = (__ROR8__(v68, 8) + v69) ^ 0xD2F00CE620E5D3AELL;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = __ROR8__(v70, 8);
  v73 = (((v67 + STACK[0x52C0]) | 0x3D5501D20B3755ALL) - ((v67 + STACK[0x52C0]) | 0xFC2AAFE2DF4C8AA5) - 0x3D5501D20B3755BLL) ^ 0xBB5D51C9C1741609;
  v74 = v73 ^ __ROR8__(v67, 61);
  v75 = __ROR8__(v73, 8);
  v76 = ((v72 + v71) & 0xDE9B7ACAD6E1863BLL ^ 0xDC93680806A18211) + ((v72 + v71) ^ 0x22C96E6F9401D6ALL) - (((v72 + v71) ^ 0x22C96E6F9401D6ALL) & 0xDE9B7ACAD6E1863BLL);
  v77 = (((2 * (v75 + v74)) | 0x59A9D82C55A1AB4) - (v75 + v74) - 0x2CD4EC162AD0D5ALL) ^ 0x3A05FFAB85A8652DLL;
  v78 = v77 ^ __ROR8__(v74, 61);
  v79 = (__ROR8__(v77, 8) + v78) ^ 0xE580B17D8CC5E551;
  v80 = v79 ^ __ROR8__(v78, 61);
  v81 = __ROR8__(v79, 8);
  v82 = (((2 * (v81 + v80)) | 0xE5F7208D6755F780) - (v81 + v80) + 0xD046FB94C550440) ^ 0x135A6D1D62FF02BALL;
  v83 = v82 ^ __ROR8__(v80, 61);
  v84 = __ROR8__(v82, 8);
  LODWORD(STACK[0x54A0]) = LODWORD(STACK[0x52D0]) ^ ((v76 ^ 0x28C4E71D81D1EE2ALL) >> STACK[0x52C8]);
  v85 = (v84 + v83 - ((2 * (v84 + v83)) & 0x330325A5C5EB57E6) + 0x198192D2E2F5ABF3) ^ 0xC3E1D9DEE157146ALL;
  v86 = v85 ^ __ROR8__(v83, 61);
  v87 = __ROR8__(v85, 8);
  v88 = (v87 + v86 - ((2 * (v87 + v86)) & 0x135EB9986419B02ALL) + 0x9AF5CCC320CD815) ^ 0xF39ABE01F932E9D2;
  v89 = v88 ^ __ROR8__(v86, 61);
  v90 = (__ROR8__(v88, 8) + v89) ^ 0xD2F00CE620E5D3AELL;
  v91 = v90 ^ __ROR8__(v89, 61);
  v92 = __ROR8__(v90, 8);
  v93 = ((((v92 + v91) ^ 0x13C7DFAA127A457BLL) - ((2 * ((v92 + v91) ^ 0x13C7DFAA127A457BLL)) & 0x2A115B84417ACCECLL) - 0x6AF7523DDF42998ALL) ^ 0x72BC79599CB75676) >> STACK[0x52F0];
  v94 = *(v4 + (STACK[0x5188] & ((STACK[0x51C0] & 0xFF0DC400) + (STACK[0x51C0] | 0xFF0DC400) + 2066642200)));
  LODWORD(STACK[0x5398]) = LODWORD(STACK[0x5328]) ^ v93;
  v95 = (((2 * (v94 + STACK[0x5218])) & 0x31F8AB8CB4BAD75ALL) - (v94 + STACK[0x5218]) + 0x6703AA39A5A29452) ^ 0xDF8BABED4465F701;
  v96 = v95 ^ __ROR8__(v94, 61);
  v97 = __ROR8__(v95, 8);
  v98 = (((v97 + v96) | 0xD9BF3A2446F854C9) - ((v97 + v96) | 0x2640C5DBB907AB36) + 0x2640C5DBB907AB36) ^ 0xE1778B4EA1FD3CBELL;
  v99 = v98 ^ __ROR8__(v96, 61);
  v100 = __ROR8__(v98, 8);
  v101 = (v100 + v99 - ((2 * (v100 + v99)) & 0xD704779247679126) + 0x6B823BC923B3C893) ^ 0x8E028AB4AF762DC2;
  v102 = v101 ^ __ROR8__(v99, 61);
  v103 = __ROR8__(v101, 8);
  v104 = (((v103 + v102) | 0xF65FD2D150B8DDF4) - ((v103 + v102) | 0x9A02D2EAF47220BLL) + 0x9A02D2EAF47220BLL) ^ 0x17FE2F8A81ED248ELL;
  v105 = v104 ^ __ROR8__(v102, 61);
  v106 = (__ROR8__(v104, 8) + v105) ^ 0xDA604B0C03A2BF99;
  v107 = v106 ^ __ROR8__(v105, 61);
  v108 = (__ROR8__(v106, 8) + v107) ^ 0xFA35E2CDCB3E31C7;
  v109 = v108 ^ __ROR8__(v107, 61);
  v110 = __ROR8__(v108, 8);
  v111 = (((v110 + v109) | 0x50F4B17793E38062) - ((v110 + v109) | 0xAF0B4E886C1C7F9DLL) - 0x50F4B17793E38063) ^ 0x8204BD91B30653CCLL;
  v112 = v111 ^ __ROR8__(v109, 61);
  v113 = __ROR8__(v111, 8);
  LODWORD(STACK[0x5510]) = LODWORD(STACK[0x5290]) ^ (((((v113 + v112) & 0x564C52C2D82AD4DCLL ^ 0x540450C21802D410) + ((v113 + v112) ^ 0x22EAAE39C0EC28CELL) - (((v113 + v112) ^ 0x22EAAE39C0EC28CELL) & 0x564C52C2D82AD4DCLL)) ^ 0x80D5F7CAB6B68969) >> STACK[0x5288]);
  v114 = *(STACK[0x5180] + (STACK[0x5460] & ((a1 & 0x250772C0) + (a1 | 0x250772C4) + 1429522004)));
  v115 = (v114 + STACK[0x5200] - ((2 * (v114 + STACK[0x5200])) & 0x4B3273720052BB8CLL) + 0x259939B900295DC6) ^ 0x9D11386DE1EE3E95;
  v116 = v115 ^ __ROR8__(v114, 61);
  v117 = (__ROR8__(v115, 8) + v116) ^ 0x38C8B16AE7056877;
  v118 = v117 ^ __ROR8__(v116, 61);
  v119 = (__ROR8__(v117, 8) + v118) ^ 0xE580B17D8CC5E551;
  v120 = v119 ^ __ROR8__(v118, 61);
  v121 = __ROR8__(v119, 8);
  v122 = (v121 + v120 - ((2 * (v121 + v120)) & 0xCAECA8BE012BD926) - 0x1A89ABA0FF6A136DLL) ^ 0x4D7A904D1C015E9;
  v123 = v122 ^ __ROR8__(v120, 61);
  v124 = __ROR8__(v122, 8);
  v125 = (v124 + v123 - ((2 * (v124 + v123)) & 0xE9C8BB74235953FELL) + 0x74E45DBA11ACA9FFLL) ^ 0xAE8416B6120E1666;
  v126 = v125 ^ __ROR8__(v123, 61);
  v127 = __ROR8__(v125, 8);
  v128 = (v127 + v126 - ((2 * (v127 + v126)) & 0x644482B3626D64D4) + 0x32224159B136B26ALL) ^ 0xC817A3947A0883ADLL;
  v129 = v128 ^ __ROR8__(v126, 61);
  v130 = (__ROR8__(v128, 8) + v129) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(STACK[0x5390]) = LODWORD(STACK[0x5210]) ^ (((__ROR8__(v130, 8) + (v130 ^ __ROR8__(v129, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5208]);
  LODWORD(v129) = v2 - 16819;
  v131 = *(STACK[0x51A0] + (((((v2 + 157) | 2) ^ 0x4DD8B656) + ((((2 * (STACK[0x5138] - 744125764)) & 0xB17B80B8) + ((STACK[0x5138] - 744125764) ^ 0x58BDC05E)) & 0xFFFFFFF8)) & LODWORD(STACK[0x5198])));
  v132 = (v131 + STACK[0x5140]) ^ 0xB88801D4E1C76353;
  v133 = v132 ^ __ROR8__(v131, 61);
  v134 = __ROR8__(v132, 8);
  v135 = __ROR8__((((v134 + v133) | 0xB717551663244A96) - ((v134 + v133) | 0x48E8AAE99CDBB569) + 0x48E8AAE99CDBB569) ^ 0x8FDFE47C842122E1, 8);
  v136 = (((v134 + v133) | 0xB717551663244A96) - ((v134 + v133) | 0x48E8AAE99CDBB569) + 0x48E8AAE99CDBB569) ^ 0x8FDFE47C842122E1 ^ __ROR8__(v133, 61);
  v137 = (v135 + v136) ^ 0xE580B17D8CC5E551;
  v138 = v137 ^ __ROR8__(v136, 61);
  v139 = (__ROR8__(v137, 8) + v138) ^ 0xE1A1FD5BD155F97ALL;
  v140 = v139 ^ __ROR8__(v138, 61);
  v141 = (__ROR8__(v139, 8) + v140) ^ 0xDA604B0C03A2BF99;
  v142 = v141 ^ __ROR8__(v140, 61);
  v143 = __ROR8__(v141, 8);
  v144 = (((v143 + v142) & 0x1823066CA4D32D19 ^ 0x1002024824822D08) + ((v143 + v142) & 0xE7DCF9935B2CD2E6 ^ 0x5DCD1901200C2A5) - 1) ^ 0xEFEB3115FDBCDE6BLL;
  v145 = v144 ^ __ROR8__(v142, 61);
  v146 = (__ROR8__(v144, 8) + v145) ^ 0xD2F00CE620E5D3AELL;
  v147 = v146 ^ __ROR8__(v145, 61);
  v148 = __ROR8__(v146, 8);
  LODWORD(STACK[0x5300]) = LODWORD(STACK[0x51B0]) ^ (((((2 * (v148 + v147)) & 0x8A2E7B6A9155E9ELL) - (v148 + v147) + 0x7BAE8C24AB7550B0) ^ 0x8FDD8715050525CBLL) >> STACK[0x51A8]);
  LODWORD(STACK[0x56F0]) = 5;
  LODWORD(STACK[0x5440]) = STACK[0x5520];
  STACK[0x52F8] = LODWORD(STACK[0x53D0]);
  LODWORD(STACK[0x5600]) = STACK[0x5580];
  LODWORD(STACK[0x53E8]) = STACK[0x5550];
  LODWORD(STACK[0x53F8]) = STACK[0x55D0];
  LODWORD(STACK[0x5620]) = STACK[0x5500];
  v149 = *(STACK[0x57D8] + 8 * v129);
  LODWORD(STACK[0x53B0]) = STACK[0x55A0];
  LODWORD(STACK[0x54B0]) = STACK[0x54F0];
  LODWORD(STACK[0x5460]) = STACK[0x5410];
  LODWORD(STACK[0x5450]) = STACK[0x5530];
  LODWORD(STACK[0x54C0]) = STACK[0x54E0];
  return v149();
}

uint64_t sub_100162214(uint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5)
{
  v9 = *(v6 + 1368);
  v10 = *(v9 + a4 % (((v8 + v5 + 1269) & 0xBCFE9BE6) + 1064));
  v11 = *(v6 + 1360);
  v12 = *(v11 + 4 * ((6419 * (v10 | ((v10 < 0x4C) << 8)) + 42333305) % 0x2240));
  v13 = *(v9 + (5621 * (((v12 ^ 0xB65F6C8) - 623278090) ^ ((v12 ^ 0x4E76DC38) - 1614107386) ^ ((v12 ^ 0x45132A16u) - 1800447188)) - 751258722) % 0x1808);
  v14 = *(v9 + (5621 * (((HIBYTE(v12) ^ 0x53C32DDB) - 1223314267) ^ ((HIBYTE(v12) ^ 0x183BC10F) - 51554191) ^ ((HIBYTE(v12) ^ 0x4BF8EC96) - 1355909654)) + 1710618836) % 0x1808u);
  v15 = *(v9 + v7 + 5621 * (BYTE1(v12) ^ 0x8F) - 6152 * (((89362129 * (v7 + 5621 * (BYTE1(v12) ^ 0x8Fu))) >> 32) >> 7));
  v16 = v14 & 0x50 ^ 0x56;
  v17 = *(v9 + v7 + 5621 * (BYTE2(v12) ^ 0x38) - 6152 * (((89362129 * (v7 + 5621 * (BYTE2(v12) ^ 0x38u))) >> 32) >> 7));
  LOBYTE(v9) = v17 & 0xA6 | 0x19;
  v18 = (((v14 ^ (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * v16) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16))) ^ 0x50) << 16) | (((v17 ^ (2 * ((v17 ^ 0x34) & (2 * ((v17 ^ 0x34) & (2 * ((v17 ^ 0x34) & (2 * ((v17 ^ 0x34) & (2 * ((v17 ^ 0x34) & (2 * ((v17 ^ 0x34) & 0x12 ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9))) ^ 0xA6) << 8);
  LOBYTE(v9) = v13 & 0x5C ^ 0x54;
  LOBYTE(v9) = v13 ^ (2 * ((v13 ^ 0x34) & (2 * ((v13 ^ 0x34) & (2 * ((v13 ^ 0x34) & (2 * ((v13 ^ 0x34) & (2 * v9) ^ v9)) ^ v9)) ^ v9)) ^ v9));
  *(v11 + 4 * (a5 % 0x2240)) = ((((((v15 ^ (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * (v15 & 0x94 ^ 0xB0)) ^ v15 & 0x94 ^ 0xB0)) ^ v15 & 0x94 ^ 0xB0)) ^ v15 & 0x94 ^ 0xB0)) ^ v15 & 0x94 ^ 0xB0))) ^ 0x99019D) & ~v18 | v18 & 0x66FE00) << 8) ^ 0x70541527) & (v9 ^ 0xFFFFFF6B) | v9 & 0xD8) ^ 0xAB6D9399;
  return (*(STACK[0x57D8] + 8 * ((1999 * (a3 == 0)) ^ v5)))();
}

uint64_t sub_100162570(uint64_t a1)
{
  STACK[0x98D8] = STACK[0x5BB8] + 57;
  v2 = STACK[0x57D8];
  STACK[0x82E8] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x1CDC ^ (15153 * (v1 + 1225916594 >= (v1 - 1612654035))))))(a1, &STACK[0x978C]);
}

uint64_t sub_100162618()
{
  v1 = *(v0 + 560);
  v2 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v1 & 0xFFFFFFF8) - 1831847764)) & 0xFFFFFFFFFFFFFFF8));
  v3 = __ROR8__(v1 & 0xFFFFFFFFFFFFFFF8, 8);
  v4 = (((2 * ((v3 + v2) ^ 0xE056BB7A3A565714)) | 0xC1D525FB0E65F6FALL) - ((v3 + v2) ^ 0xE056BB7A3A565714) - 0x60EA92FD8732FB7DLL) ^ 0x4213172D8295148DLL;
  v5 = v4 ^ __ROR8__(v2, 61);
  v6 = __ROR8__(v4, 8);
  v7 = (((2 * (v6 + v5)) | 0xF3D3C944DEEB19ALL) - (v6 + v5) - 0x79E9E4A26F758CDLL) ^ 0x626CCA973E7AEC31;
  v8 = v7 ^ __ROR8__(v5, 61);
  v9 = (__ROR8__(v7, 8) + v8) ^ 0x6FF046966119128DLL;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = __ROR8__(v9, 8);
  v12 = (0xBAC9FDE223A98E8FLL - ((v11 + v10) | 0xBAC9FDE223A98E8FLL) + ((v11 + v10) | 0x4536021DDC567170)) ^ 0xE4849FD80B20625BLL;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (((2 * (v14 + v13)) & 0x295B4F8C33021004) - (v14 + v13) + 0x6B525839E67EF7FDLL) ^ 0x84567878139BBF11 ^ __ROR8__(v13, 61);
  v16 = (__ROR8__((((2 * (v14 + v13)) & 0x295B4F8C33021004) - (v14 + v13) + 0x6B525839E67EF7FDLL) ^ 0x84567878139BBF11, 8) + v15) ^ 0xD8C7B31FCA19D9DELL;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (((2 * (v18 + v17)) & 0xC2EF8021F2364566) - (v18 + v17) - 0x6177C010F91B22B4) ^ 0xCADD3EC18C551EC3;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(v19, 8);
  v22 = 5621 * ((((0xE382D4A971739552 - ((v21 + v20) | 0xE382D4A971739552) + ((v21 + v20) | 0x1C7D2B568E8C6AADLL)) ^ 0x73324BEA808E344DLL) >> (8 * (v1 & 7u))) ^ *(v0 + 295)) + 32028458;
  *(STACK[0xDCB8] + 918) = *(STACK[0xDCB8] + v22 - 6152 * (((89362129 * v22) >> 32) >> 7));
  v23 = *(v0 + 552) + 34;
  *(v0 + 568) = v23;
  *(v0 + 296) = v23;
  v24 = STACK[0x57D8];
  *(v0 + 280) = *(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x2331));
  return (*(v24 + 8 * (*(v0 + 3796) + 8890)))();
}

uint64_t sub_100162D64(uint64_t a1)
{
  STACK[0xE600] = a1 + v2 + 1;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v3 + 21683)))((v2 + v1 + v3 + 886332720 + 33));
  STACK[0x8730] = v5;
  return (*(v4 + 8 * ((73 * (v5 != 0)) ^ v3)))();
}

uint64_t sub_100162E94()
{
  v0 = STACK[0x51B8] - 22613;
  v1 = STACK[0x8988];
  LODWORD(STACK[0xADB4]) = STACK[0x8988];
  return (*(STACK[0x57D8] + 8 * (v0 ^ 0x4D3F ^ (98 * (((v1 - v0) | (v0 - v1)) >= 0)))))();
}

uint64_t sub_100162EF4()
{
  STACK[0x68A0] = STACK[0x9820];
  LODWORD(STACK[0x8C10]) = 740213045;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100162F30()
{
  v0 = STACK[0x1EC8];
  v1 = STACK[0x1EC8] - 1694;
  v2 = STACK[0x57D8];
  STACK[0x8860] = *(STACK[0x57D8] + 8 * STACK[0x1EC8]);
  return (*(v2 + 8 * (v0 + 7562 + v1)))();
}

uint64_t sub_100162F7C()
{
  STACK[0x1D4C8] = 0;
  LODWORD(STACK[0x1D4C0]) = (v0 + 1717141553) ^ (1964904101 * ((((2 * (v1 - 240)) | 0x438C0CCC) - (v1 - 240) - 566625894) ^ 0xDBE4EDE2));
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 2118)))(v1 - 240);
  return (*(v2 + 8 * (((*STACK[0x4658] != 0) * (v0 ^ 0x745C)) ^ v0)))(v3);
}

uint64_t sub_10016309C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0x5248]) = LODWORD(STACK[0x51E0]) << (((v7 + 17) | 0x98) ^ 0xFD);
  v8 = LODWORD(STACK[0x5198]) + LODWORD(STACK[0x51C8]);
  LODWORD(STACK[0x51E0]) = LODWORD(STACK[0x5190]) ^ LODWORD(STACK[0x5188]) ^ (LODWORD(STACK[0x57A0]) - (LODWORD(STACK[0x5190]) ^ LODWORD(STACK[0x57A0])));
  LODWORD(STACK[0x51C8]) = STACK[0x5180] & 0x5D11F5EC;
  v9 = STACK[0xD700];
  v10 = *(STACK[0x57D8] + 8 * v7);
  LODWORD(STACK[0x5750]) = v8 - 2 * LODWORD(STACK[0x54A0]);
  return v10(a1, 0x298884E32BC43720, 0x38940D9BD01D3AE8, a4, a5, 0x4B3D899B6F25D055, a7, v9);
}

uint64_t sub_100163268(uint64_t a1)
{
  v1 = *(a1 + 3368);
  *(a1 + 3372) = v1;
  *(a1 + 3376) = v1 - 10000;
  v2 = *(STACK[0x4D10] + 24) + 16 * *(a1 + 3360);
  *(a1 + 220) = *(a1 + 4348);
  v3 = STACK[0x57D8];
  *(a1 + 200) = *(STACK[0x57D8] + 8 * (v1 + 17004));
  *(a1 + 208) = v2 + 8;
  return (*(v3 + 8 * (v1 + 16748)))();
}

uint64_t sub_1001632CC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v10 = v6 < 0x357D16C1;
  v11 = 8 * ((v5 | ((v5 < 0x46A72854) << 32)) + v8) + 0x6954A376BAA64660;
  *(a1 + v11) = *(v7 + v11) ^ 0x3E3E3E3E3E3E3E3ELL;
  if (v10 == v5 + 148657680 < 0x4F837E63)
  {
    v10 = v5 + 148657680 < a4;
  }

  return (*(STACK[0x57D8] + 8 * ((!v10 * v9) ^ v4)))();
}

uint64_t sub_100163EA4@<X0>(__int16 a1@<W8>)
{
  v1 = STACK[0x51B8] - 22469;
  LOWORD(STACK[0xD52E]) = a1;
  return (*(STACK[0x57D8] + 8 * (v1 | 0x134E)))();
}

uint64_t sub_100163F5C()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x10DE)))(32);
  STACK[0x7E80] = v2;
  return (*(v1 + 8 * ((456 * (((v2 == 0) ^ (v0 - 1)) & 1)) ^ v0)))();
}

uint64_t sub_100163FCC()
{
  v1 = STACK[0x75FC];
  LODWORD(STACK[0xAEB4]) = STACK[0x75FC];
  return (*(STACK[0x57D8] + 8 * ((47 * (((v1 == 0) ^ ((v0 + 4) ^ v0 ^ 0xA7)) & 1)) ^ v0)))();
}

uint64_t sub_100164078()
{
  v1 = v0 ^ 0x316A;
  v2 = ((v0 ^ 0x316A) - 5938) | 0x1212;
  STACK[0xD460] = 0;
  v3 = STACK[0x57D8];
  STACK[0xD460] = (*(STACK[0x57D8] + 8 * (v1 ^ 0x64C1)))(1028);
  v4 = (*(v3 + 8 * (v1 ^ 0x64C1)))(1032);
  STACK[0xD450] = v4;
  if (v4)
  {
    v5 = STACK[0xD460] == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  return (*(v3 + 8 * ((v6 * (((v1 - 5682) | 0x4080) ^ v2 ^ 0x1023)) ^ v1)))();
}

uint64_t sub_100164180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = STACK[0x51B8];
  LODWORD(STACK[0x581C]) = -143113071;
  STACK[0x9BD8] = 0;
  LODWORD(STACK[0x6908]) = -769884012;
  v5 = STACK[0x5AC0];
  v6 = STACK[0x8888];
  LODWORD(STACK[0x8A68]) = -143113071;
  STACK[0xB280] = v5 + 4;
  v7 = ((v6 + 509392732) ^ 0xD5A22682) & (2 * ((v6 + 509392732) & 0xE1A348A0)) ^ (v6 + 509392732) & 0xE1A348A0;
  v8 = ((2 * ((v6 + 509392732) ^ 0x94E026C2)) ^ 0xEA86DCC4) & ((v6 + 509392732) ^ 0x94E026C2) ^ (2 * ((v6 + 509392732) ^ 0x94E026C2)) & 0x75436E62;
  v9 = v8 ^ 0x15412222;
  v10 = (v8 ^ 0x10424422) & (4 * v7) ^ v7;
  v11 = ((4 * v9) ^ 0xD50DB988) & v9 ^ (4 * v9) & 0x75436E60;
  v12 = (v11 ^ 0x55012800) & (16 * v10) ^ v10;
  v13 = ((16 * (v11 ^ 0x20424662)) ^ 0x5436E620) & (v11 ^ 0x20424662) ^ (16 * (v11 ^ 0x20424662)) & 0x75436E60;
  v14 = v12 ^ 0x75436E62 ^ (v13 ^ 0x54026600) & (v12 << 8);
  LODWORD(STACK[0x818C]) = (v6 + 509392732) ^ 0x11BD14F0 ^ (2 * ((v14 << 16) & 0x75430000 ^ v14 ^ ((v14 << 16) ^ 0x6E620000) & (((v13 ^ 0x21410842) << 8) & 0x75430000 ^ 0x34010000 ^ (((v13 ^ 0x21410842) << 8) ^ 0x436E0000) & (v13 ^ 0x21410842))));
  return (*(STACK[0x57D8] + 8 * (v4 - 18049)))(a1, 22611, a3, a4, 19);
}

uint64_t sub_1001643C4()
{
  v2 = STACK[0x51B8];
  v3 = STACK[0x51B8] - 19003;
  *(v0 + 600) = STACK[0xB290];
  *(v0 + 592) = v2 - 711523751 * ((-19245400 - ((v1 - 240) | 0xFEDA56A8) + ((v1 - 240) | 0x125A957)) ^ 0x313F8886) + 4438;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v2 + 9156)))(v1 - 240);
  return (*(v4 + 8 * v3))(v5);
}

uint64_t sub_1001644C4()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 5855)))(32);
  *v1 = v3;
  LOBYTE(STACK[0xE417]) = v3 == 0;
  return (*(v2 + 8 * ((213 * (((v3 == 0) ^ (v0 - 9 + v0 - 89 + 1)) & 1)) ^ v0)))();
}

uint64_t sub_1001647F0(unint64_t a1)
{
  v3 = v1 & 0x53885B7B;
  v4 = STACK[0xBAE8];
  v5 = 289235981 * ((2 * ((v2 - 240) & 0x13DFC428) - (v2 - 240) - 333431849) ^ 0x6BA2EBE8);
  LODWORD(STACK[0x1D4DC]) = LODWORD(STACK[0xC724]) ^ v5;
  STACK[0x1D4E0] = &STACK[0x5CE4];
  STACK[0x1D4C8] = v4;
  LODWORD(STACK[0x1D4D8]) = -529096856 - v5 + v3 + 25;
  STACK[0x1D4D0] = a1;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v3 ^ 0x757Au)))(v2 - 240);
  return (*(v6 + 8 * (((LODWORD(STACK[0x5CE4]) < 0x501) * (((v3 + 1470288388) & 0xA85D7CF6) + 3892)) ^ v3)))(v7);
}

uint64_t sub_100164900()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  return (*(v1 + 8 * (v0 - 4824)))(v2, 2147548249);
}

uint64_t sub_100164934()
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xCC1C];
  LODWORD(STACK[0x9094]) = -32197495;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1001649E0@<X0>(uint64_t a1@<X3>, uint64_t a2@<X5>, int a3@<W6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v13 = a5 + v6 + 16;
  v14 = *v12 & 0xFFFFFFFFFFFFFFF8;
  v15 = __ROR8__(v13 & 0xFFFFFFFFFFFFFFF8, 8);
  v16 = *(*v9 + ((1633384259 * ((v7 ^ 0xF908F66B ^ ((v13 & 0xFFFFFFF8) * LODWORD(STACK[0x2CE4]))) - ((-834364714 * (v13 & 0xFFFFFFF8)) & 0xF211EC90 ^ 0xF211EC96)) - 910521413) & v14));
  v17 = v5 + v6 + 16;
  v18 = (0xE6508450861A306BLL - ((v15 + v16) | 0xE6508450861A306BLL) + ((v15 + v16) | 0x19AF7BAF79E5CF94)) ^ 0xA1277A7B9822ACC7;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (((2 * (v20 + v19)) | 0xA442DDD605B4932ELL) - (v20 + v19) - 0x52216EEB02DA4997) ^ 0x6AE9DF81E5DF21E0;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ a2;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ v11;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (v27 + v26 - ((2 * (v27 + v26)) & 0x100D61271CEC0458) + 0x806B0938E76022CLL) ^ 0xD266FB9F8DD4BDB5;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ a1;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = *(*v9 + (((v17 & 0xFFFFFFF8) + a3) & v14));
  v34 = (((2 * (v32 + v31)) | 0x1490DA95A2E8CA76) - (v32 + v31) - 0xA486D4AD174653BLL) ^ 0xD8B861ACF191B695;
  v35 = v34 ^ __ROR8__(v31, 61);
  v36 = (v33 + __ROR8__(v17 & 0xFFFFFFFFFFFFFFF8, 8)) ^ v8;
  v37 = v36 ^ __ROR8__(v33, 61);
  v38 = __ROR8__(v34, 8) + v35;
  v39 = (__ROR8__(v36, 8) + v37) ^ a4;
  v40 = __ROR8__(v39, 8);
  v41 = v39 ^ __ROR8__(v37, 61);
  v42 = (((2 * (v40 + v41)) | 0x53188314AE3B63C2) - (v40 + v41) + 0x5673BE75A8E24E1FLL) ^ 0x4C0CF0F7DBD854B0;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ v11;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = __ROR8__(v44, 8);
  v47 = (v46 + v45 - ((2 * (v46 + v45)) & 0xACB2E53F50FAED98) - 0x29A68D6057828934) ^ 0xC393993ABDFC955;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = __ROR8__(v47, 8);
  v50 = __ROR8__((((2 * (v49 + v48)) | 0x8FB347FF0C02A07CLL) - (v49 + v48) - 0x47D9A3FF8601503ELL) ^ 0xBDEC41324D3F61F9, 8);
  v51 = (((2 * (v49 + v48)) | 0x8FB347FF0C02A07CLL) - (v49 + v48) - 0x47D9A3FF8601503ELL) ^ 0xBDEC41324D3F61F9 ^ __ROR8__(v48, 61);
  v52 = (v50 + v51) ^ v10;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = __ROR8__(v52, 8);
  *v17 = (((0xBC95E45F64985D92 - (v38 | 0xBC95E45F64985D92) + (v38 | 0x436A1BA09B67A26DLL)) ^ 0xB71910913517D716) >> (8 * (v13 & 7u))) ^ (((v54 + v53 - ((2 * (v54 + v53)) & 0x39B2FDAC877F8E3CLL) - 0x63268129BC4038E2) ^ 0x68AA75E7EDCFB265) >> (8 * (v17 & 7u))) ^ *v13;
  return (*(STACK[0x57D8] + 8 * (v7 ^ 0x31A5 ^ (30315 * (((v6 + 1 - v7) | (v7 - (v6 + 1))) >= 0)))))();
}

uint64_t sub_100164DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v8);
  return (*(v9 + 8 * (v8 ^ 0x1718)))(v7, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_100164EB0@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 0x55A8D952E5D46856) = 32;
  *(v3 - 0x55A8D952E5D46877) = *(a1 - 0x79CEC8CF5A6FCE83);
  *(v3 - 0x55A8D952E5D46878) = *(a1 - 0x79CEC8CF5A6FCE84);
  *(v3 - 0x55A8D952E5D46879) = *(a1 - 0x79CEC8CF5A6FCE85);
  *(v3 - 0x55A8D952E5D4687ALL) = *(a1 - 0x79CEC8CF5A6FCE86);
  *(v3 - 0x55A8D952E5D4687BLL) = *(a1 - 0x79CEC8CF5A6FCE87);
  *(v3 - 0x55A8D952E5D4687CLL) = *(a1 - 0x79CEC8CF5A6FCE88);
  *(v3 - 0x55A8D952E5D4687DLL) = *(a1 - 0x79CEC8CF5A6FCE89);
  *(v3 - 0x55A8D952E5D4687ELL) = *(a1 - 0x79CEC8CF5A6FCE8ALL);
  *(v3 - 0x55A8D952E5D4687FLL) = *(a1 - 0x79CEC8CF5A6FCE8BLL);
  *(v3 - 0x55A8D952E5D46880) = *(a1 - 0x79CEC8CF5A6FCE8CLL);
  *(v3 - 0x55A8D952E5D46881) = *(a1 - 0x79CEC8CF5A6FCE8DLL);
  *(v3 - 0x55A8D952E5D46882) = *(a1 - 0x79CEC8CF5A6FCE8ELL);
  *(v3 - 0x55A8D952E5D46883) = *(a1 - 0x79CEC8CF5A6FCE8FLL);
  *(v3 - 0x55A8D952E5D46884) = *(a1 - 0x79CEC8CF5A6FCE90);
  *(v3 - 0x55A8D952E5D46885) = *(a1 - 0x79CEC8CF5A6FCE91);
  *(v3 - 0x55A8D952E5D46886) = *(a1 - 0x79CEC8CF5A6FCE92);
  *(v3 - 0x55A8D952E5D46887) = *(a1 - 0x79CEC8CF5A6FCE93);
  *(v3 - 0x55A8D952E5D46888) = *(a1 - 0x79CEC8CF5A6FCE94);
  *(v3 - 0x55A8D952E5D46889) = *(a1 - 0x79CEC8CF5A6FCE95);
  *(v3 - 0x55A8D952E5D4688ALL) = *(a1 - 0x79CEC8CF5A6FCE96);
  *(v3 - 0x55A8D952E5D4688BLL) = *(a1 - 0x79CEC8CF5A6FCE97);
  *(v3 - 0x55A8D952E5D4688CLL) = *(a1 - 0x79CEC8CF5A6FCE98);
  *(v3 - 0x55A8D952E5D4688DLL) = *(a1 - 0x79CEC8CF5A6FCE99);
  *(v3 - 0x55A8D952E5D4688ELL) = *(a1 - 0x79CEC8CF5A6FCE9ALL);
  *(v3 - 0x55A8D952E5D4688FLL) = *(a1 - 0x79CEC8CF5A6FCE9BLL);
  *(v3 - 0x55A8D952E5D46890) = *(a1 - 0x79CEC8CF5A6FCE9CLL);
  *(v3 - 0x55A8D952E5D46891) = *(a1 - 0x79CEC8CF5A6FCE9DLL);
  *(v3 - 0x55A8D952E5D46892) = *(a1 - 0x79CEC8CF5A6FCE9ELL);
  *(v3 - 0x55A8D952E5D46893) = *(a1 - 0x79CEC8CF5A6FCE9FLL);
  *(v3 - 0x55A8D952E5D46894) = *(a1 - 0x79CEC8CF5A6FCEA0);
  *(v3 - 0x55A8D952E5D46895) = *(a1 - 0x79CEC8CF5A6FCEA1);
  *(v3 - 0x55A8D952E5D46896) = *v2;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_100165484@<X0>(unint64_t a1@<X2>, unint64_t a2@<X3>, unint64_t a3@<X5>, unint64_t a4@<X6>, unint64_t a5@<X8>)
{
  v16 = *(STACK[0x57D8] + 8 * ((((((v7 - 4361) | 0x1002) + 6882) ^ 0x73E7) * (v6 < 0x10)) ^ v7));
  *&STACK[0x5570] = vdupq_n_s64(v10);
  *&STACK[0x5580] = vdupq_n_s64(v12);
  *&STACK[0x55B0] = vdupq_n_s64(a5);
  *&STACK[0x55A0] = vdupq_n_s64(v5);
  *&STACK[0x5610] = vdupq_n_s64(v9);
  *&STACK[0x5600] = vdupq_n_s64(a2);
  *&STACK[0x57B0] = vdupq_n_s64(v11);
  *&STACK[0x57A0] = vdupq_n_s64(0x3D7678D154AA047CuLL);
  *&STACK[0x5700] = vdupq_n_s64(0x1F3A711B10A60877uLL);
  *&STACK[0x56F0] = vdupq_n_s64(a1);
  *&STACK[0x5790] = vdupq_n_s64(0x807E50A90B762A1FLL);
  *&STACK[0x56C0] = vdupq_n_s64(0xDE1856F8AB0EBFA4);
  *&STACK[0x56E0] = vdupq_n_s64(0x206F5B884E33BDEEuLL);
  *&STACK[0x56D0] = vdupq_n_s64(0x493E2725494BAC6DuLL);
  *&STACK[0x5590] = vdupq_n_s64(0x31F49ABE1B6CA29CuLL);
  *&STACK[0x5780] = vdupq_n_s64(0x4BE530B0083FD1A4uLL);
  *&STACK[0x55F0] = vdupq_n_s64(v13);
  *&STACK[0x55E0] = vdupq_n_s64(a3);
  *&STACK[0x55D0] = vdupq_n_s64(v15);
  *&STACK[0x55C0] = vdupq_n_s64(0x224C09CA440C0C0BuLL);
  *&STACK[0x5770] = vdupq_n_s64(0xBB7179E685225BB8);
  *&STACK[0x5720] = vdupq_n_s64(v14);
  *&STACK[0x5710] = vdupq_n_s64(v8);
  *&STACK[0x5760] = vdupq_n_s64(0xA773A6BDA0A03855);
  *&STACK[0x57C0] = vdupq_n_s64(a4);
  *&STACK[0x5750] = vdupq_n_s64(0x7AECF1A2A95408F8uLL);
  return v16();
}

uint64_t sub_100165670()
{
  v2 = STACK[0xAC58];
  STACK[0xE950] = v1;
  STACK[0xE958] = v2;
  return (*(STACK[0x57D8] + 8 * ((15088 * (v1 - v2 > ((v0 + 15350) ^ (v0 + 819797391) & 0xCF22C6B8 ^ 0x58F7uLL))) ^ v0)))();
}

uint64_t sub_1001657B0()
{
  v0 = STACK[0x51B8];
  STACK[0xBBC8] = &STACK[0xAA98];
  LODWORD(STACK[0xCDD8]) = 550409992;
  return (*(STACK[0x57D8] + 8 * (v0 - 17563)))();
}

uint64_t sub_100165864()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  STACK[0x8E68] = 0;
  return (*(v1 + 8 * (v0 - 6529)))(v2);
}

uint64_t sub_100165898()
{
  v1 = STACK[0x57D8];
  STACK[0xBDE0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x5745 ^ (v0 + 15158))))(0x308E083E0C524CBELL);
}

uint64_t sub_100165900()
{
  v0 = STACK[0x51B8] - 7618;
  v1 = STACK[0x57D8];
  v2 = STACK[0x45EC];
  STACK[0x85E0] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x45EC]));
  return (*(v1 + 8 * (v0 ^ v2 ^ 0x694)))();
}

uint64_t sub_100165A60()
{
  v0 = STACK[0x1CF0];
  v1 = STACK[0x57D8];
  v2 = (STACK[0x1CF0] - 1808173967) & 0x2BC6D9DF;
  STACK[0x7CA8] = *(STACK[0x57D8] + 8 * STACK[0x1CF0]);
  return (*(v1 + 8 * ((v2 - 15588) ^ v0)))();
}

uint64_t sub_100165AEC@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, int a4@<W5>, unsigned int a5@<W8>)
{
  v22 = *(v21 + v6 * v19 + 8698028 - (((((v6 * v19 + 8698028) >> 3) * v17) >> 32) >> 7) * v14);
  v23 = (((v22 ^ 0x4590B65A) - 1167111770) ^ (((a5 + 17) ^ v12 ^ v22) + v18) ^ ((v22 ^ v11) + v5)) * v19 + 24917235;
  v24 = *(v21 + v23 - ((((v23 >> 3) * v17) >> 32) >> 7) * v14);
  if ((v24 ^ 0x95))
  {
    v25 = a3;
  }

  else
  {
    v25 = -118;
  }

  v26 = v25 ^ 0x27;
  v27 = v7 ^ v25 ^ 0xE0;
  if ((v24 & 2) == 0)
  {
    v26 = v27;
  }

  if (((v24 ^ 0x95) & 4) != 0)
  {
    v26 ^= v8 ^ 0xC7;
  }

  if ((v24 & 8) != 0)
  {
    v26 ^= v9 ^ 0xC7;
  }

  if (((v24 ^ 0x95) & 0x10) == 0)
  {
    v26 ^= v10 ^ 0xC7;
  }

  if ((v24 & 0x20) != 0)
  {
    v26 ^= a1 ^ 0xC7;
  }

  if ((v24 & 0x40) == 0)
  {
    v26 ^= a2 ^ 0xC7;
  }

  v28 = v24 < 0;
  v29 = *(v21 + 293) ^ 0xC7 ^ v26;
  if (v28)
  {
    v29 = v26;
  }

  *(v20 + 4 * (v13 + v6 * a4 - ((((v13 + v6 * a4) * v16) >> 32) >> 12) * v15)) = v29 ^ 0x684FB627;
  return (*(STACK[0x57D8] + 8 * ((v6 == 255) | (16 * (v6 == 255)) | a5)))();
}

uint64_t sub_100165CC0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, void *a4@<X4>, _DWORD *a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v13 = ((7538 * (v9 ^ 0x3E86u)) ^ 0xFFFFFFFFFFFFA7A9) + v10;
  v14 = a7 + (v13 + v8);
  v15 = *(*a4 + ((*a5 & ((v14 & 0xFFFFFFF8 ^ a2) + 1178877101 + ((2 * (v14 & 0xFFFFFFF8)) & 0x671C99D0))) & 0xFFFFFFFFFFFFFFF8));
  v16 = (__ROR8__(v14 & 0xFFFFFFFFFFFFFFF8, 8) + v15) ^ v12;
  v17 = __ROR8__(v16, 8);
  v18 = v16 ^ __ROR8__(v15, 61);
  v19 = (v17 + v18) ^ v11;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ a3;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ a1;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ a6;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (0xA945326A74DAF95ALL - ((v27 + v26) | 0xA945326A74DAF95ALL) + ((v27 + v26) | 0x56BACD958B2506A5)) ^ 0xFE9CED30D2F7DCDDLL;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x5F8DEC3EA3980A1BLL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  *v14 = *(v7 + v13) ^ (((0x93F9AC6EA9AF4CF1 - ((v32 + v31) | 0x93F9AC6EA9AF4CF1) + ((v32 + v31) | 0x6C0653915650B30ELL)) ^ 0xADC59B43F295FB26) >> (8 * (v14 & 7u))) ^ 0xF;
  return (*(STACK[0x57D8] + 8 * ((22378 * (v13 == 0)) ^ v9)))();
}

uint64_t sub_100165F48()
{
  v2 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1A34])))(v1);
  return (*(v2 + 8 * v0))();
}

uint64_t sub_10016605C@<X0>(int a1@<W8>)
{
  v1 = a1 | 0x150;
  v2 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * ((6776 * (v1 + 1986078884 <= 284 * (v1 ^ 0x145) - 1059718249)) ^ (v1 + 1831))))();
}

uint64_t sub_100166114(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v6 = *(STACK[0x57D8] + 8 * (((a4 == ((LODWORD(STACK[0x5650]) + 670) ^ 0x2465)) * ((LODWORD(STACK[0x5650]) ^ 0x12D6) + 15021)) ^ LODWORD(STACK[0x5650])));
  LODWORD(STACK[0x5760]) = STACK[0x5600];
  LODWORD(STACK[0x54F0]) = STACK[0x55D0];
  LODWORD(STACK[0x53C0]) = STACK[0x5620];
  LODWORD(STACK[0x54E0]) = STACK[0x55B0];
  LODWORD(STACK[0x53D0]) = STACK[0x55F0];
  LODWORD(STACK[0x53C8]) = STACK[0x55C0];
  LODWORD(STACK[0x53F0]) = STACK[0x55A0];
  LODWORD(STACK[0x54C0]) = STACK[0x5580];
  LODWORD(STACK[0x5408]) = STACK[0x5570];
  LODWORD(STACK[0x5470]) = STACK[0x5560];
  LODWORD(STACK[0x5480]) = STACK[0x5550];
  LODWORD(STACK[0x5400]) = STACK[0x5540];
  LODWORD(STACK[0x53D8]) = STACK[0x5388];
  LODWORD(STACK[0x5430]) = STACK[0x5368];
  v7 = LODWORD(STACK[0x5360]);
  LODWORD(STACK[0x53F8]) = STACK[0x5358];
  LODWORD(STACK[0x5490]) = STACK[0x5350];
  v8 = LODWORD(STACK[0x5348]);
  LODWORD(STACK[0x53E8]) = STACK[0x5340];
  LODWORD(STACK[0x54B0]) = STACK[0x5338];
  LODWORD(STACK[0x5520]) = STACK[0x5318];
  LODWORD(STACK[0x5440]) = STACK[0x5328];
  LODWORD(STACK[0x5510]) = STACK[0x5330];
  LODWORD(STACK[0x5420]) = STACK[0x5320];
  LODWORD(STACK[0x53B8]) = STACK[0x5310];
  LODWORD(STACK[0x5530]) = STACK[0x57B0];
  LODWORD(STACK[0x5410]) = STACK[0x5308];
  LODWORD(STACK[0x5460]) = STACK[0x5300];
  LODWORD(STACK[0x5500]) = STACK[0x52F8];
  LODWORD(STACK[0x54D0]) = STACK[0x52F0];
  LODWORD(STACK[0x53E0]) = STACK[0x52D8];
  v9 = LODWORD(STACK[0x52E0]);
  LODWORD(STACK[0x5450]) = STACK[0x52D0];
  LODWORD(STACK[0x53A0]) = STACK[0x52C8];
  LODWORD(STACK[0x5398]) = STACK[0x52C0];
  LODWORD(STACK[0x53A8]) = STACK[0x52B8];
  LODWORD(STACK[0x5380]) = STACK[0x52B0];
  v10 = LODWORD(STACK[0x52A8]);
  LODWORD(STACK[0x53B0]) = STACK[0x52A0];
  LODWORD(STACK[0x5390]) = STACK[0x5298];
  v11 = LODWORD(STACK[0x5290]);
  LODWORD(STACK[0x5670]) = STACK[0x5258];
  LODWORD(STACK[0x5280]) = 122;
  LODWORD(STACK[0x5750]) = 42;
  LODWORD(STACK[0x5288]) = 68;
  LODWORD(STACK[0x5650]) = 16;
  LODWORD(STACK[0x5278]) = 77;
  LODWORD(STACK[0x54A0]) = 172;
  LODWORD(STACK[0x5270]) = 170;
  LODWORD(STACK[0x5268]) = 184;
  LODWORD(STACK[0x5640]) = STACK[0x5260];
  return v6(v9, v8, v7, 4, v11, a6, v10);
}

uint64_t sub_1001666D8()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x57D8];
  STACK[0x9600] = *(STACK[0x57D8] + 8 * (STACK[0x51B8] - 22325));
  return (*(v1 + 8 * ((v0 - 4742) ^ (v0 - 22325))))();
}

uint64_t sub_1001667B4()
{
  STACK[0xCCC8] = STACK[0xCEE0];
  STACK[0x9830] = &STACK[0xC268];
  LODWORD(STACK[0x8724]) = 408359049;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100166828()
{
  LODWORD(STACK[0x7BA8]) = -769884028;
  v1 = LODWORD(STACK[0x924C]);
  v2 = STACK[0x51B8];
  v3 = STACK[0x51B8] - 1079089617;
  v4 = 551690071 * ((-2 - ((~(v0 - 240) | 0xE3CC471F34020037) + ((v0 - 240) | 0x1C33B8E0CBFDFFC8))) ^ 0x925115D17AEF5360);
  STACK[0x1D4D8] = 3525083286u - v4;
  LODWORD(STACK[0x1D4CC]) = v2 - v4 - 882969312;
  STACK[0x1D4E0] = v1 + v4;
  LODWORD(STACK[0x1D4D0]) = v4;
  LODWORD(STACK[0x1D4C8]) = v2 - v4 - 882969353;
  LODWORD(STACK[0x1D4C4]) = (v2 - 882972074) ^ v4;
  LODWORD(STACK[0x1D4C0]) = v3 ^ v4;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v2 + 9201)))(v0 - 240);
  return (*(v5 + 8 * SLODWORD(STACK[0x1D4D4])))(v6);
}

uint64_t sub_100166A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v10 + 3792) = v5;
  v11 = v9 + v6 - 48;
  v12 = __ROR8__(v11 & 0xFFFFFFFFFFFFFFF8, 8);
  v13 = ((2 * (v12 - 0x70824D863E123F43)) | 0x3DD3B222130991C8) - (v12 - 0x70824D863E123F43) + ((v5 + 1692) ^ 0x611626EEF67B69EELL);
  v14 = v13 ^ 0x4D6E3206F0953792;
  v13 ^= 0x3683A1C8FFFB327EuLL;
  v15 = (__ROR8__(v14, 8) + v13) ^ a4;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (((2 * ((v17 + v16) ^ 0x31AF73A681E1118BLL)) & 0x4785CB8A745D8DAELL) - ((v17 + v16) ^ 0x31AF73A681E1118BLL) + 0x5C3D1A3AC5D13928) ^ 0x9653E617D158ECE3;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (v20 + v19 - ((2 * (v20 + v19)) & 0x2776437616F9F944) + 0x13BB21BB0B7CFCA2) ^ 0x595EEFD468EB8591;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = __ROR8__(v21, 8);
  v24 = __ROR8__((v7 - ((v23 + v22) | v7) + ((v23 + v22) | 0x6CEA14B6E42DB333)) ^ 0x44BEDFEC6FF63024, 8);
  v25 = (v7 - ((v23 + v22) | v7) + ((v23 + v22) | 0x6CEA14B6E42DB333)) ^ 0x44BEDFEC6FF63024 ^ __ROR8__(v22, 61);
  v26 = (v24 + v25) ^ 0xF7721CC6F3AEFBDCLL;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ a3;
  *(*(v10 + 3768) + ((a5 + 11 * v9) & 0x7F)) = (2 * (((((__ROR8__(v28, 8) + (v28 ^ __ROR8__(v27, 61))) ^ 0x94AC86FF716F8E22) >> (8 * (v11 & 7u))) ^ *v11) - v9 + 8 * v9)) & 0xF7 ^ 0xDF;
  return (*(STACK[0x57D8] + 8 * (v8 ^ (28972 * (v9 == 63)))))();
}

uint64_t sub_100166CC4(int a1)
{
  STACK[0x7F50] = v2;
  STACK[0x7528] = v3;
  return (*(STACK[0x57D8] + 8 * ((57 * (((a1 == (v1 ^ 0x2381) - 19025) ^ (v1 + 1)) & 1)) ^ v1)))();
}

uint64_t sub_100166D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *STACK[0x51E8];
  STACK[0x51B0] = v4;
  v5 = v4 & 0xFFFFFFFFFFFFFFF8;
  LODWORD(STACK[0x54A0]) = (v3 - 4852) | 0x1041;
  v6 = STACK[0x4FC0] + LODWORD(STACK[0x52E8]);
  v7 = *v6;
  STACK[0x54C0] = *STACK[0x51F0];
  STACK[0x54B0] = v6 & 0xFFFFFFFFFFFFFFF8;
  STACK[0x5600] = __ROR8__(v6 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x5700] = 8 * (v6 & 7);
  LODWORD(STACK[0x5740]) = v7 ^ 0x7B;
  LODWORD(v6) = LODWORD(STACK[0x53D0]) != 39;
  LODWORD(STACK[0x52E8]) = LODWORD(STACK[0x5008]) + 39;
  return (*(STACK[0x57D8] + 8 * (v3 | v6 | (16 * v6))))(a1, a2, a3, v5);
}

uint64_t sub_100166E5C(uint64_t a1, uint64_t a2)
{
  v3 = (STACK[0x51B8] - 6084) | 0x400;
  v4 = STACK[0x51B8] - 22614;
  v5 = STACK[0xC108];
  v6 = STACK[0xA1D8];
  STACK[0x7FC8] = STACK[0x9890];
  LODWORD(STACK[0xB564]) = STACK[0x791C];
  STACK[0xAB48] = STACK[0xCAA8];
  STACK[0xC5F8] = v5;
  if ((((v2 - v4) | (v4 - v2)) & 0x80u) != 0)
  {
    v7 = -769884028;
  }

  else
  {
    v7 = -769884027;
  }

  LODWORD(STACK[0x862C]) = v7 + (v4 ^ 0xFFFFBB6D ^ v3);
  STACK[0xA980] = v6;
  STACK[0x9568] = 0x4CD3383D2FF34AE8;
  LODWORD(STACK[0x8758]) = 1837875294;
  return (*(STACK[0x57D8] + 8 * (v4 ^ 0x1171)))(103679699, a2, 43);
}

uint64_t sub_100166F7C()
{
  v1 = STACK[0x51B8] - 20875;
  LOWORD(STACK[0xD05E]) = v0;
  return (*(STACK[0x57D8] + 8 * (v1 ^ 0x1FBC)))();
}

uint64_t sub_100166FB8@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v5 = v4 - 1;
  *(a1 + v5 + a2) = *(v2 + v5) + ~(((v3 + 86) ^ 0x4C) & (2 * *(v2 + v5))) + 16;
  return (*(STACK[0x57D8] + 8 * ((4087 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_100167014@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, int a7@<W8>)
{
  v18 = (v14 < a5 + 1) << 32;
  v19 = 0xA3F50F73D781E545 * (*(STACK[0x57B0] + 8 * (a4 + v18 + v14)) ^ 0x7575757575757575);
  v20 = v18 + (((v19 ^ a6 ^ 0xACB5C6ABE6C32379) - 0x5FD7CD0C7A7D4FA8) ^ ((v19 ^ a6 ^ 0xABD3C5D948496C66) - 0x58B1CE7ED4F700B7) ^ ((v19 ^ a6 ^ 0x7660372AE8A4F1FLL) + 0xBFBF72ACDCBDC32));
  v21 = ((((v14 + 0x623B30E924B3409 + v20) ^ 0xF9023D12E3A82FCELL) + 0x143C658A756D523BLL) ^ (v14 + 0x623B30E924B3409 + v20) ^ (((v14 + 0x623B30E924B3409 + v20) ^ 0xB676AA43C467C3A6) + 0x5B48F2DB52A2BE53) ^ (((v14 + 0x623B30E924B3409 + v20) ^ 0x7BDBC7C933D210BCLL) - 0x691A60AE5AE892B7) ^ (((v14 + 0x623B30E924B3409 + v20) ^ 0x266EF7FF7D277EDCLL) - 0x34AF5098141DFCD4)) >> 32;
  v22 = ((v21 ^ 0x95BBF8F78E20B2AALL) + 0x1E070A274E17560CLL) ^ ((v21 ^ 0x84EF9B57FB94FFD4) + 0xF5369873BA31B76) ^ ((v21 ^ 0x115463A06775EA19) - 0x65176E8F58BDF147);
  v23 = v20 + v16;
  v24 = v20 - v22;
  v25 = v23 - v22;
  v26 = v25 >> 16;
  v27 = (v25 - (v25 >> 16)) >> 8;
  v28 = v14 + a7 - v27 - v26 + v24;
  v29 = a3 & (v28 >> 2);
  v30 = v28 ^ a1;
  v31 = v18 + ((((v14 + v8 - v27 - v26 + v24) ^ v19 ^ 0x2C928185241B89EELL) + 0x2563BF5DA81A5A6ELL) ^ (((v14 + v8 - v27 - v26 + v24) ^ v19 ^ 0x6A01FAB9AC705BCALL) + 0x63F0C4612071884ALL) ^ (((v14 + v8 - v27 - v26 + v24) ^ v19 ^ 0x46937B3C886BD224) + 0x4F6245E4046A01A8));
  v32 = v14 + 0x6B58C83164204BC5 + v31;
  LODWORD(v27) = v29 ^ v30;
  v33 = (v32 ^ 0x835F4E15E3A91E2) & (2 * (v32 & 0x8AB5F8F59C3025E4)) ^ v32 & 0x8AB5F8F59C3025E4;
  v34 = ((2 * (v32 ^ 0x1D1F15C2463ADB62)) ^ 0x2F55DA6FB415FD0CLL) & (v32 ^ 0x1D1F15C2463ADB62) ^ (2 * (v32 ^ 0x1D1F15C2463ADB62)) & v17;
  v35 = v34 ^ 0x90AA25104A0A0282;
  v36 = (v34 ^ 0x700C0269000BC00) & (4 * v33) ^ v33;
  v37 = ((4 * v35) ^ 0x5EABB4DF682BFA18) & v35 ^ (4 * v35) & (v17 - 2);
  v38 = ((16 * (v37 ^ 0x8100492092000486)) ^ 0x7AAED37DA0AFE860) & (v37 ^ 0x8100492092000486) ^ (16 * (v37 ^ 0x8100492092000486)) & (v17 - 6);
  v39 = (v38 ^ 0x12AAC135800AE800) & (((v37 ^ 0x16AAA417480AFA00) & (16 * v36) ^ v36) << 8) ^ (v37 ^ 0x16AAA417480AFA00) & (16 * v36) ^ v36;
  v40 = (((v38 ^ 0x85002C025A001686) << 8) ^ 0xAAED37DA0AFE8600) & (v38 ^ 0x85002C025A001686) ^ ((v38 ^ 0x85002C025A001686) << 8) & (v17 - 134);
  v41 = (v32 ^ (2 * (((v39 ^ v17 ^ (v40 ^ 0x82A825120A0A0000) & (v39 << 16)) << 32) & v11 ^ v39 ^ v17 ^ (v40 ^ 0x82A825120A0A0000) & (v39 << 16) ^ (((v39 ^ v17 ^ (v40 ^ 0x82A825120A0A0000) & (v39 << 16)) << 32) ^ 0x5A0AFE8600000000) & (((v40 ^ 0x1502C825D0007886) << 16) & v11 ^ 0x1288253500000000 ^ (((v40 ^ 0x1502C825D0007886) << 16) ^ 0x6D37DA0A00000000) & (v40 ^ 0x1502C825D0007886))))) >> 32;
  v42 = ((v41 ^ 0xBE6F6F0F1640CF7ELL) + 0x7D8C19A229A2B78CLL) ^ ((v41 ^ 0x81B29A4CED53389BLL) + 0x4251ECE1D2B1406FLL) ^ ((v41 ^ 0x3FDDF5437AE60D73) - 0x3C17C11BAFB8A79);
  v43 = v31 + v12 - v42;
  v44 = v31 - v42;
  v45 = (v43 - (v43 >> 16)) >> 8;
  LODWORD(v38) = v14 + v10 - v45 - (v43 >> 16) + v44;
  v46 = v14 - 0x289D6AC9C32D381BLL - v45 - (v43 >> 16) + v44;
  LODWORD(v44) = a3 & (v38 >> 2) ^ v38;
  v47 = v18 + (((v46 ^ v19 ^ 0x3AD7D50A62CC38A8) - 0x3A1E0D933697DCC8) ^ ((v46 ^ v19 ^ 0x505A4B63FD71000BLL) - 0x509393FAA92AE46BLL) ^ ((v46 ^ v19 ^ 0x6A8D9E699FBD38A3) - 0x6A4446F0CBE6DCC3));
  v48 = v14 + 0x57C69A507EB63D83 + v47;
  v49 = (v48 ^ 0xA113BF097DE7CCC9) & (2 * (v48 & 0xA9033E4861F7EC0ALL)) ^ v48 & 0xA9033E4861F7EC0ALL;
  v50 = ((2 * (v48 ^ 0xF113F7993DE2D4C9)) ^ 0xB02193A2B82A7186) & (v48 ^ 0xF113F7993DE2D4C9) ^ (2 * (v48 ^ 0xF113F7993DE2D4C9)) & (v13 + 2);
  v51 = ((4 * (v50 ^ 0x4810485144150841)) ^ 0x604327457054E30CLL) & (v50 ^ 0x4810485144150841) ^ (4 * (v50 ^ 0x4810485144150841)) & v13;
  v52 = (v51 ^ 0x4000014150142000) & (16 * ((v50 ^ 0x810008003000) & (4 * v49) ^ v49)) ^ (v50 ^ 0x810008003000) & (4 * v49) ^ v49;
  v53 = ((16 * (v51 ^ 0x1810C8900C0118C3)) ^ 0x810C9D15C1538C30) & (v51 ^ 0x1810C8900C0118C3) ^ (16 * (v51 ^ 0x1810C8900C0118C3)) & v13;
  v54 = (v53 ^ 0x891140110800) & (v52 << 8) ^ v52;
  v55 = (((v53 ^ 0x581040C01C0430C3) << 8) ^ 0x10C9D15C1538C300) & (v53 ^ 0x581040C01C0430C3) ^ ((v53 ^ 0x581040C01C0430C3) << 8) & (v13 - 192);
  v56 = v54 ^ (v13 + 3) ^ (v55 ^ 0x1000C15014100000) & (v54 << 16);
  v57 = (v48 ^ (2 * ((v56 << 32) & v15 ^ v56 ^ ((v56 << 32) ^ 0x5C1538C300000000) & (((v55 ^ 0x48100881480538C3) << 16) & v15 ^ 0x100081C000000000 ^ (((v55 ^ 0x48100881480538C3) << 16) ^ 0x49D15C1500000000) & (v55 ^ 0x48100881480538C3))))) >> 32;
  v58 = v47 + v7 - (((v57 ^ 0xBFA48DE65EE92B4ELL) - 0x5B81CA8A95C1B1F6) ^ ((v57 ^ 0x7A6EEC5BE62A441ELL) + 0x61B454C8D2FD215ALL) ^ ((v57 ^ 0xC5CA61BD11C1D338) - 0x21EF26D1DAE94980));
  LODWORD(v56) = v14 + 1035562153 - ((v58 - (v58 >> 16)) >> 8) - (v58 >> 16) + v47 - (((v57 ^ 0x5EE92B4E) + 1782468106) ^ ((v57 ^ 0xE62A441E) - 755162790) ^ ((v57 ^ 0x11C1D338) + 622245504));
  return (*(STACK[0x57D8] + 8 * ((15 * ((v14 & 0xFFFFFFFE) == 1940765394)) ^ v9)))(v27 ^ v44 ^ a3 & (v56 >> 2) ^ v56, a2 + 1);
}

uint64_t sub_100167A2C@<X0>(uint64_t a1@<X8>)
{
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v2 + 6750)))(a1 - 0x55A8D952E5D4689ELL);
  *v1 = 0x55A8D952E5D4689ELL;
  return (*(v3 + 8 * v2))(v4);
}

uint64_t sub_100167A78(uint64_t a1, int a2)
{
  v6 = STACK[0x5750];
  v7 = LODWORD(STACK[0x5750]) - 16906 + 11 * (v2 ^ 0x52A0);
  *(v3 + 4 * (v6 * a2 - 1749492765 - ((((v6 * a2 - 1749492765) * v5) >> 32) >> 12) * v4)) = *(v3 + 4 * (v6 * a2 - 1754233655 - ((((v6 * a2 - 1754233655) * v5) >> 32) >> 12) * v4));
  v8 = *(STACK[0x57D8] + 8 * (((16 * (v7 != 1838395989)) | ((v7 != 1838395989) << 6)) ^ v2));
  LODWORD(STACK[0x5750]) = v7;
  return v8();
}

uint64_t sub_100167B1C(uint64_t a1, uint64_t a2, int a3)
{
  v7 = STACK[0x51B8];
  v8 = *v6;
  v9 = (v3 - (*(*v4 + (v8 & a2)) & 0x7FFFFFFF ^ a3)) * ((STACK[0x51B8] + 1383941279) & 0xAD827F4F ^ 0x75F112B6) + 1460066139;
  v10 = (v9 ^ 0x82F18C34) & (2 * (v9 & 0xA8F928A5)) ^ v9 & 0xA8F928A5;
  v11 = ((2 * (v9 ^ 0x9371CC36)) ^ 0x7711C926) & (v9 ^ 0x9371CC36) ^ (2 * (v9 ^ 0x9371CC36)) & 0x3B88E492;
  v12 = v11 ^ 0x8882491;
  v13 = (v11 ^ 0x2300C000) & (4 * v10) ^ v10;
  v14 = ((4 * v12) ^ 0xEE23924C) & v12 ^ (4 * v12) & 0x3B88E490;
  v15 = (v14 ^ 0x2A008003) & (16 * v13) ^ v13;
  v16 = ((16 * (v14 ^ 0x11886493)) ^ 0xB88E4930) & (v14 ^ 0x11886493) ^ (16 * (v14 ^ 0x11886493)) & 0x3B88E490;
  v17 = v15 ^ 0x3B88E493 ^ (v16 ^ 0x38884000) & (v15 << 8);
  *(v5 + 488) = *(*v4 + (v8 & 0xCBE8CA54)) & 0x7FFFFFFF ^ v9 ^ (2 * ((v17 << 16) & 0x3B880000 ^ v17 ^ ((v17 << 16) ^ 0x64930000) & (((v16 ^ 0x300A483) << 8) & 0x3B880000 ^ 0x33080000 ^ (((v16 ^ 0x300A483) << 8) ^ 0x8E40000) & (v16 ^ 0x300A483)))) ^ 0x902DA6D4;
  return (*(STACK[0x57D8] + 8 * (v7 - 16479)))();
}

void *sub_100167D10@<X0>(int a1@<W8>)
{
  v1 = *(STACK[0x57D8] + 8 * (a1 ^ 0x2554 ^ (a1 + 11273)));
  STACK[0xC2A0] = *(STACK[0x57D8] + 8 * a1);
  return v1(&STACK[0xC5C8]);
}

uint64_t sub_100167DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v9 = STACK[0x57D8];
  STACK[0x8578] = *(STACK[0x57D8] + 8 * v6);
  STACK[0x7F58] = a6;
  STACK[0x5E88] = v8;
  v10 = STACK[0x7ED8];
  v11 = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x57B0] = (v11 + 520);
  STACK[0xC738] = (v11 + 520);
  STACK[0x7330] = (v11 + 1056);
  STACK[0x7ED8] = v10 + 1072;
  *(v11 + 130) = 130;
  *(v11 + 131) = 1172461588;
  *(v11 + 66) = v11;
  *(v11 + 264) = 130;
  *(v11 + 265) = 1172461588;
  *(v11 + 133) = v11 + 536;
  return (*(v9 + 8 * ((35 * (*(v8 + 4) != ((v7 + 2059) ^ 0x45E20042))) ^ v7)))();
}

uint64_t sub_100167F0C@<X0>(int a1@<W0>, int a2@<W3>, int a3@<W6>, int a4@<W7>, unsigned int a5@<W8>)
{
  LODWORD(STACK[0x57B0]) = v5;
  LODWORD(STACK[0x5740]) = v6;
  LODWORD(STACK[0x5720]) = a3;
  LODWORD(STACK[0x5730]) = a1;
  v7 = *(STACK[0x57D8] + 8 * (a5 ^ 0x55BE ^ (((((a5 | a2) - a5) | (a2 - a5) & ~(a2 ^ a5)) >> 31) * (((a5 + 29210) ^ 0x4FF2) - 15709))));
  LODWORD(STACK[0x5790]) = a4;
  return v7();
}

uint64_t sub_1001680B0()
{
  v1 = STACK[0x57D8];
  STACK[0xD060] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1BA5)))();
}

uint64_t sub_100168618@<X0>(__int16 a1@<W5>, unsigned __int16 a2@<W7>, int a3@<W8>)
{
  v10 = STACK[0x51B8] - 1159;
  LODWORD(STACK[0xD4E4]) = v9;
  LODWORD(STACK[0x6C24]) = a3;
  LODWORD(STACK[0xD4DC]) = v8;
  LODWORD(STACK[0xB9CC]) = v4;
  LODWORD(STACK[0xD4D8]) = v5;
  LODWORD(STACK[0xCF4C]) = v7;
  LODWORD(STACK[0x9A1C]) = v6;
  LOWORD(STACK[0xCF4A]) = a2;
  LOWORD(STACK[0xCF52]) = a1;
  LODWORD(STACK[0xCF54]) = v3;
  v12 = v5 == -490181238 && a2 == 60130;
  return (*(STACK[0x57D8] + 8 * ((1985 * ((v12 ^ LODWORD(STACK[0x419C])) & 1)) ^ v10)))();
}

uint64_t sub_100168770()
{
  v0 = STACK[0x51B8] - 6046;
  *(*(STACK[0x9EE0] - 0x79296B4A625EDC5CLL) + *(STACK[0xDF40] - 0x72621A37D7677918)) = 0;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1001687D8@<X0>(int a1@<W8>)
{
  STACK[0x7750] = STACK[0xD928];
  v2 = LODWORD(STACK[0xD91C]) == -769884012 && LOWORD(STACK[0xD922]) == 13283;
  return (*(STACK[0x57D8] + 8 * ((v2 * ((a1 - 8658) ^ 0x3713)) ^ (a1 + 2629))))();
}

uint64_t sub_100168838()
{
  LODWORD(STACK[0xB28C]) = 2101965948;
  STACK[0xCBF0] = 0;
  STACK[0x91F8] = 0x2369327399A66D95;
  STACK[0xC4D0] = &STACK[0x91F8];
  LODWORD(STACK[0x7EBC]) = 195325320;
  STACK[0x7910] = 0xBCF261FDE04D217ALL;
  LODWORD(STACK[0x9C14]) = 1;
  LODWORD(STACK[0xA25C]) = 497446753;
  return (*(STACK[0x57D8] + 8 * (v0 & 0x5DFAF7D7 ^ ((v0 & 0x5DFAF7D7) + 198121754) & 0xE786B9BF ^ 0xCAA2A39)))();
}

uint64_t sub_10016899C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(STACK[0x55E0] + ((((STACK[0x55D0] ^ 0xE3F0B0C4) - 1773434794 + (STACK[0x52D8] & 0xC7E16180)) & STACK[0x55A0]) & 0xFFFFFFFFFFFFFFF8));
  v13 = (((2 * (v12 + STACK[0x5580])) & 0x2F5AB0E439F0F71ALL) - (v12 + STACK[0x5580]) - 0x17AD58721CF87B8ELL) ^ 0x50DAA65902C0E721;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (((2 * (v15 + v14)) | 0x4A2B5180235A5D64) - (v15 + v14) + 0x5AEA573FEE52D14ELL) ^ 0x9DDD19AAF6A846C5;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0xE580B17D8CC5E551;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = __ROR8__((((2 * (v20 + v19)) | 0x89DE6CDAEEB1AFF4) - (v20 + v19) + 0x3B10C99288A72806) ^ 0x254ECB36A60D2E80, 8);
  v22 = (((2 * (v20 + v19)) | 0x89DE6CDAEEB1AFF4) - (v20 + v19) + 0x3B10C99288A72806) ^ 0x254ECB36A60D2E80 ^ __ROR8__(v19, 61);
  v23 = (v21 + v22) ^ 0xDA604B0C03A2BF99;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0xFA35E2CDCB3E31C7;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0xD2F00CE620E5D3AELL;
  v28 = __ROR8__(v27, 8);
  v29 = *(STACK[0x5740] + ((((STACK[0x5670] | 0x76B0E1D5) + v11 + (STACK[0x5670] | 0x894F1E2B)) & STACK[0x5590]) & 0xFFFFFFFFFFFFFFF8));
  v30 = v27 ^ __ROR8__(v26, 61);
  v31 = (v29 + STACK[0x56E0]) ^ 0xB88801D4E1C76353 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__((v29 + STACK[0x56E0]) ^ 0xB88801D4E1C76353, 8) + v31) ^ 0x38C8B16AE7056877;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0xE580B17D8CC5E551;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = __ROR8__((0x30D1CA8E23891E44 - ((v36 + v35) | 0x30D1CA8E23891E44) + ((v36 + v35) | 0xCF2E3571DC76E1BBLL)) ^ 0x2E8FC82A0D2318C1, 8);
  v38 = (0x30D1CA8E23891E44 - ((v36 + v35) | 0x30D1CA8E23891E44) + ((v36 + v35) | 0xCF2E3571DC76E1BBLL)) ^ 0x2E8FC82A0D2318C1 ^ __ROR8__(v35, 61);
  v39 = (v37 + v38 - ((2 * (v37 + v38)) & 0xFC9BE07AA0C1DFC0) - 0x1B20FC2AF9F1020) ^ 0x242DBB3153C25079;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (0x533805C27A21FF02 - ((v41 + v40) | 0x533805C27A21FF02) + ((v41 + v40) | 0xACC7FA3D85DE00FDLL)) ^ 0x56F218F04EE0313ALL;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = __ROR8__(v42, 8);
  v45 = (((2 * (v44 + v43)) | 0x3651436F4F1E8642) - (v44 + v43) + 0x64D75E485870BCDFLL) ^ 0x49D8AD51876A908FLL;
  v46 = v45 ^ __ROR8__(v43, 61);
  STACK[0x5620] = __ROR8__(v45, 8);
  v47 = *(STACK[0x5328] + (LODWORD(STACK[0x5218]) & ((STACK[0x5308] ^ 0x2BB79550) + 1317312704 + (STACK[0x5368] & 0x576F2AA0) + 2826)));
  v48 = (v47 + STACK[0x5700]) ^ 0xB88801D4E1C76353;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = __ROR8__(v48, 8);
  v51 = (0x49CC522FAB6EFBEBLL - ((v50 + v49) | 0x49CC522FAB6EFBEBLL) + ((v50 + v49) | 0xB633ADD054910414)) ^ 0x8EFB1CBAB3946C63;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ 0xE580B17D8CC5E551;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = __ROR8__(v53, 8);
  v56 = (((v55 + v54) & 0x7A3A3C6F1581C17 ^ 0x38102A1501C06) + ((v55 + v54) & 0xF85C5C390EA7E3E8 ^ 0xB0101008000683C1) - 1) ^ 0x51B26C51700366BCLL;
  v57 = v56 ^ __ROR8__(v54, 61);
  v58 = __ROR8__(v56, 8);
  v59 = (((2 * (v58 + v57)) | 0xD0C65B556996007ALL) - (v58 + v57) + 0x179CD2554B34FFC3) ^ 0x320366A6B769BFA4;
  v60 = v59 ^ __ROR8__(v57, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ 0xFA35E2CDCB3E31C7;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = __ROR8__(v61, 8);
  v64 = (((2 * ((v63 + v62) ^ 0x2C0524A6A2A64C51)) | 0x9BBD901F848903EALL) - ((v63 + v62) ^ 0x2C0524A6A2A64C51) - 0x4DDEC80FC24481F5) ^ 0xB32BE04F40071E0ALL;
  STACK[0x5600] = v64 ^ __ROR8__(v62, 61);
  STACK[0x5560] = __ROR8__(v64, 8);
  v65 = *(STACK[0x5320] + (((265533253 * (((-1777777779 * STACK[0x54E0]) & 0x5EACD068) + ((-1777777779 * STACK[0x54E0]) | 0x5EACD069)) + 2132934093) & STACK[0x5550]) & 0xFFFFFFFFFFFFFFF8));
  v66 = __ROR8__((v65 + STACK[0x5300]) ^ 0xB88801D4E1C76353, 8);
  v67 = (v65 + STACK[0x5300]) ^ 0xB88801D4E1C76353 ^ __ROR8__(v65, 61);
  v68 = (0x6A12044074854A4ALL - ((v66 + v67) | 0x6A12044074854A4ALL) + ((v66 + v67) | 0x95EDFBBF8B7AB5B5)) ^ 0xAD254AD56C7FDDC2;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = (__ROR8__(v68, 8) + v69) ^ 0xE580B17D8CC5E551;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = __ROR8__(v70, 8);
  v73 = (((2 * (v72 + v71)) & 0x8E9202821A8DAA32) - (v72 + v71) + 0x38B6FEBEF2B92AE6) ^ 0xD91703E523ECD39CLL;
  v74 = v73 ^ __ROR8__(v71, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ 0xDA604B0C03A2BF99;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = (__ROR8__(v75, 8) + v76) ^ 0xFA35E2CDCB3E31C7;
  v78 = v77 ^ __ROR8__(v76, 61);
  v79 = (__ROR8__(v77, 8) + v78) ^ 0xD2F00CE620E5D3AELL;
  STACK[0x5460] = v79 ^ __ROR8__(v78, 61);
  STACK[0x5450] = __ROR8__(v79, 8);
  v80 = v8 ^ 0xFA35E2CDCB3E31C7 ^ a6;
  v81 = (__ROR8__(v8 ^ 0xFA35E2CDCB3E31C7, 8) + v80) ^ 0xD2F00CE620E5D3AELL;
  STACK[0x54C0] = v81 ^ __ROR8__(v80, 61);
  STACK[0x5470] = __ROR8__(v81, 8);
  v82 = *(STACK[0x5260] + (LODWORD(STACK[0x50E8]) & (STACK[0x5220] - 593936067 - (STACK[0x5220] & 0x625D0E20) + (STACK[0x5220] | 0x9DA2F1D9) + 1540)));
  v83 = (((2 * (v82 + STACK[0x5338])) & 0xF741E3BE69D72752) - (v82 + STACK[0x5338]) + 0x45F0E20CB146C56) ^ 0xBCD70FF42AD30F05;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = __ROR8__(v83, 8);
  v86 = (v85 + v84 - ((2 * (v85 + v84)) & 0x26AA23B990E3EA54) + 0x135511DCC871F52ALL) ^ 0x2B9DA0B62F749D5DLL;
  v87 = v86 ^ __ROR8__(v84, 61);
  v88 = __ROR8__(v86, 8);
  v89 = (((2 * (v88 + v87)) | 0x3274061C7CD4632CLL) - (v88 + v87) - 0x193A030E3E6A3196) ^ 0xFCBAB273B2AFD4C7;
  v90 = v89 ^ __ROR8__(v87, 61);
  v91 = __ROR8__(v89, 8);
  v92 = (((2 * (v91 + v90)) | 0x490932403929E22CLL) - (v91 + v90) - 0x248499201C94F116) ^ 0xC525647BCDC1086CLL;
  v93 = v92 ^ __ROR8__(v90, 61);
  v94 = (__ROR8__(v92, 8) + v93) ^ 0xDA604B0C03A2BF99;
  v95 = v94 ^ __ROR8__(v93, 61);
  v96 = __ROR8__(v94, 8);
  v97 = __ROR8__((((v96 + v95) ^ 0xB1C71A03EABA9107 | 0x7FD968558E477AF0) - ((v96 + v95) ^ 0xB1C71A03EABA9107 | 0x802697AA71B8850FLL) - 0x7FD968558E477AF1) ^ 0x342B909BAFC3DA30, 8);
  v98 = (((v96 + v95) ^ 0xB1C71A03EABA9107 | 0x7FD968558E477AF0) - ((v96 + v95) ^ 0xB1C71A03EABA9107 | 0x802697AA71B8850FLL) - 0x7FD968558E477AF1) ^ 0x342B909BAFC3DA30 ^ __ROR8__(v95, 61);
  v99 = (v97 + v98) ^ 0xD2F00CE620E5D3AELL;
  STACK[0x5440] = v99 ^ __ROR8__(v98, 61);
  STACK[0x5378] = __ROR8__(v99, 8);
  v100 = v9 ^ 0xE1A1FD5BD155F97ALL ^ v6;
  v101 = (__ROR8__(v9 ^ 0xE1A1FD5BD155F97ALL, 8) + v100) ^ 0xDA604B0C03A2BF99;
  v102 = v101 ^ __ROR8__(v100, 61);
  v103 = __ROR8__(v101, 8);
  v104 = __ROR8__(v102, 61);
  STACK[0x4860] = v103 + v102;
  v105 = (v103 + v102) ^ 0xFA35E2CDCB3E31C7;
  v106 = __ROR8__(v105, 8);
  STACK[0x4868] = v104;
  v107 = v105 ^ v104;
  STACK[0x5358] = __ROR8__((((2 * (v106 + v107)) & 0x27200B158369BF94) - (v106 + v107) + 0x6C6FFA753E4B2035) ^ 0xBE9FF6931EAEF39BLL, 8);
  v108 = *(STACK[0x5110] + (STACK[0x5118] & ((STACK[0x5130] ^ 0x27715E3C) - 1582459047 + (LODWORD(STACK[0x5128]) | 0xB11D4383))));
  STACK[0x52F8] = (((2 * (v106 + v107)) & 0x27200B158369BF94) - (v106 + v107) + 0x6C6FFA753E4B2035) ^ 0xBE9FF6931EAEF39BLL ^ __ROR8__(v107, 61);
  v109 = (v108 + STACK[0x5160]) ^ 0xB88801D4E1C76353 ^ __ROR8__(v108, 61);
  v110 = __ROR8__((v108 + STACK[0x5160]) ^ 0xB88801D4E1C76353, 8);
  v111 = (((2 * (v110 + v109)) & 0xB9502E15EC031F82) - (v110 + v109) + 0x2357E8F509FE703ELL) ^ 0x1B9F599FEEFB1849;
  v112 = v111 ^ __ROR8__(v109, 61);
  v113 = (__ROR8__(v111, 8) + v112) ^ 0xE580B17D8CC5E551;
  v114 = __ROR8__(v113, 8);
  v115 = v113 ^ __ROR8__(v112, 61);
  v116 = (((2 * (v114 + v115)) & 0x12122F49054D0ACELL) - (v114 + v115) - 0x90917A482A68568) ^ 0x17571500AC0C83E2;
  v117 = v116 ^ __ROR8__(v115, 61);
  v118 = __ROR8__(v116, 8);
  v119 = (((v118 + v117) | 0xC44188822D9EAC4FLL) - ((v118 + v117) | 0x3BBE777DD26153B0) + 0x3BBE777DD26153B0) ^ 0x1E21C38E2E3C13D6;
  v120 = v119 ^ __ROR8__(v117, 61);
  v121 = __ROR8__(v119, 8);
  v122 = (((v121 + v120) | 0x7442C6A5CC20593DLL) - ((v121 + v120) | 0x8BBD395A33DFA6C2) - 0x7442C6A5CC20593ELL) ^ 0x8E772468071E68FALL;
  v123 = v122 ^ __ROR8__(v120, 61);
  v124 = (__ROR8__(v122, 8) + v123) ^ 0xD2F00CE620E5D3AELL;
  STACK[0x52E8] = v124 ^ __ROR8__(v123, 61);
  STACK[0x52E0] = __ROR8__(v124, 8);
  v125 = STACK[0x4E88];
  v126 = ((v125 | 0x78BFB73A2CE5A91FLL) - (v125 | 0x874048C5D31A56E0) - 0x78BFB73A2CE5A920) ^ 0xC037B6EECD22CA4CLL ^ STACK[0x4E90];
  v127 = (__ROR8__(((v125 | 0x78BFB73A2CE5A91FLL) - (v125 | 0x874048C5D31A56E0) - 0x78BFB73A2CE5A920) ^ 0xC037B6EECD22CA4CLL, 8) + v126) ^ 0x38C8B16AE7056877;
  v128 = v127 ^ __ROR8__(v126, 61);
  v129 = __ROR8__(v127, 8);
  v130 = (v129 + v128 - ((2 * (v129 + v128)) & 0x7BB58AD0929214DALL) + 0x3DDAC56849490A6DLL) ^ 0xD85A7415C58CEF3CLL;
  v131 = v130 ^ __ROR8__(v128, 61);
  v132 = (__ROR8__(v130, 8) + v131) ^ 0xE1A1FD5BD155F97ALL;
  v133 = v132 ^ __ROR8__(v131, 61);
  v134 = __ROR8__(v132, 8);
  v135 = (v134 + v133 - ((2 * (v134 + v133)) & 0xAA9084CBC1F875F2) - 0x2AB7BD9A1F03C507) ^ 0xF280969E35E8560;
  v136 = v135 ^ __ROR8__(v133, 61);
  v137 = __ROR8__(v135, 8);
  v138 = (v137 + v136 - ((2 * (v137 + v136)) & 0xDFDBE11337C7820ELL) - 0x10120F76641C3EF9) ^ 0x15D8124450DDF0C0;
  v139 = v138 ^ __ROR8__(v136, 61);
  v140 = (__ROR8__(v138, 8) + v139) ^ 0xD2F00CE620E5D3AELL;
  STACK[0x5230] = __ROR8__(v140, 8);
  v141 = ((STACK[0x4D98] & 0x2143C6E930EE3DCALL) - STACK[0x4DA0] - 0x10A1E37498771EE6) ^ 0x57D61D5F864F8249;
  STACK[0x5120] = v140 ^ __ROR8__(v139, 61);
  v142 = v141 ^ STACK[0x4DA8];
  v143 = (__ROR8__(v141, 8) + v142) ^ 0x38C8B16AE7056877;
  v144 = __ROR8__(v143, 8);
  v145 = v143 ^ __ROR8__(v142, 61);
  v146 = (v144 + v145 - ((2 * (v144 + v145)) & 0x785E427C7590ED50) + 0x3C2F213E3AC876A8) ^ 0xD9AF9043B60D93F9;
  v147 = v146 ^ __ROR8__(v145, 61);
  v148 = (__ROR8__(v146, 8) + v147) ^ 0xE1A1FD5BD155F97ALL;
  v149 = v148 ^ __ROR8__(v147, 61);
  v150 = __ROR8__(v148, 8);
  v151 = (((2 * (v150 + v149)) | 0x50546C9B081C4920) - (v150 + v149) + 0x57D5C9B27BF1DB70) ^ 0x724A7D4187AC9B09;
  v152 = v151 ^ __ROR8__(v149, 61);
  v153 = __ROR8__(v151, 8);
  v154 = (((2 * (v153 + v152)) | 0x353F13C906C1CA60) - (v153 + v152) - 0x1A9F89E48360E530) ^ 0xE0AA6B29485ED4F7;
  v155 = v154 ^ __ROR8__(v152, 61);
  v156 = __ROR8__(v154, 8);
  v157 = (((2 * (v156 + v155)) & 0x58D8C44E8F0B36B4) - (v156 + v155) + 0x53939DD8B87A64A5) ^ 0x8163913E989FB70BLL;
  STACK[0x4FF0] = v157 ^ __ROR8__(v155, 61);
  STACK[0x4F98] = __ROR8__(v157, 8);
  v158 = *(STACK[0x4F58] + (STACK[0x4F50] & ((((LODWORD(STACK[0x4B48]) | 0x675F0AD5) + (STACK[0x4FD0] ^ 0x4C507A95)) & 0xFFFFFFF8) - 963857488)));
  v159 = (v158 + STACK[0x4FC8]) ^ 0xB88801D4E1C76353;
  v160 = v159 ^ __ROR8__(v158, 61);
  v161 = (__ROR8__(v159, 8) + v160) ^ 0x38C8B16AE7056877;
  v162 = v161 ^ __ROR8__(v160, 61);
  v163 = (__ROR8__(v161, 8) + v162) ^ 0xE580B17D8CC5E551;
  v164 = v163 ^ __ROR8__(v162, 61);
  v165 = __ROR8__(v163, 8);
  v166 = (v165 + v164 - ((2 * (v165 + v164)) & 0x3163D07EC3203174) - 0x674E17C09E6FE746) ^ 0x79101564B0C5E1C0;
  v167 = v166 ^ __ROR8__(v164, 61);
  v168 = (__ROR8__(v166, 8) + v167) ^ 0xDA604B0C03A2BF99;
  v169 = v168 ^ __ROR8__(v167, 61);
  v170 = __ROR8__(v168, 8);
  v171 = (((v170 + v169) | 0x212888A2A887AECALL) - ((v170 + v169) | 0xDED7775D57785135) - 0x212888A2A887AECBLL) ^ 0xDB1D6A6F63B99F0DLL;
  v172 = v171 ^ __ROR8__(v169, 61);
  v173 = *(STACK[0x4B58] + (STACK[0x4B88] & v10));
  v174 = __ROR8__(v173, 61);
  v175 = (((v28 + v30) ^ 0xF4730B31AE70757BLL) >> STACK[0x57B0]) ^ LODWORD(STACK[0x57C0]);
  v176 = v173 + STACK[0x4EB8];
  STACK[0x4970] = v176;
  STACK[0x4950] = v174;
  v177 = ((v176 | 0x145AFF5B3B086D1BLL) - (v176 | 0xEBA500A4C4F792E4) - 0x145AFF5B3B086D1CLL) ^ 0xACD2FE8FDACF0E48 ^ v174;
  v178 = (__ROR8__(((v176 | 0x145AFF5B3B086D1BLL) - (v176 | 0xEBA500A4C4F792E4) - 0x145AFF5B3B086D1CLL) ^ 0xACD2FE8FDACF0E48, 8) + v177) ^ 0x38C8B16AE7056877;
  v179 = v178 ^ __ROR8__(v177, 61);
  v180 = __ROR8__(v178, 8);
  v181 = (__ROR8__(v171, 8) + v172) ^ 0xD2F00CE620E5D3AELL;
  v182 = v181 ^ __ROR8__(v172, 61);
  v183 = __ROR8__(v181, 8);
  v184 = (((2 * (v180 + v179)) | 0xF17886053BFA8706) - (v180 + v179) - 0x78BC43029DFD4383) ^ 0x9D3CF27F1138A6D2;
  v185 = v184 ^ __ROR8__(v179, 61);
  v186 = (__ROR8__(v184, 8) + v185) ^ 0xE1A1FD5BD155F97ALL;
  v187 = v186 ^ __ROR8__(v185, 61);
  v188 = ((v175 ^ 0xFFFFFFC2) + 118) ^ ((v175 ^ 0xFFFFFFE0) + 88) ^ ((v175 ^ 0x22) - 106);
  v189 = ((STACK[0x5620] + v46) ^ 0xF4730B31AE70757BLL) >> STACK[0x5480];
  LODWORD(STACK[0x5620]) = ((v189 ^ LODWORD(STACK[0x54A0]) ^ 0xFFFFFFBB) - 58) ^ ((v189 ^ LODWORD(STACK[0x54A0]) ^ 0xFFFFFFE7) - 102) ^ ((v189 ^ LODWORD(STACK[0x54A0]) ^ 0x5C) + 35);
  v190 = *(STACK[0x4B90] + (LODWORD(STACK[0x4AE8]) & ((STACK[0x4DC0] ^ 0x5973A7C7) + 550015315 + (STACK[0x4B50] & 0xB2E74F80))));
  v191 = (__ROR8__(v186, 8) + v187) ^ 0xDA604B0C03A2BF99;
  v192 = v191 ^ __ROR8__(v187, 61);
  v193 = (__ROR8__(v191, 8) + v192) ^ 0xFA35E2CDCB3E31C7;
  v194 = v193 ^ __ROR8__(v192, 61);
  v195 = (((2 * (v190 + STACK[0x4DD8])) | 0x25B0F57EF35BD730) - (v190 + STACK[0x4DD8]) - 0x12D87ABF79ADEB98) ^ 0xAA507B6B986A88CBLL;
  v196 = v195 ^ __ROR8__(v190, 61);
  v197 = (__ROR8__(v195, 8) + v196) ^ 0x38C8B16AE7056877;
  v198 = v197 ^ __ROR8__(v196, 61);
  v199 = (__ROR8__(v197, 8) + v198) ^ 0xE580B17D8CC5E551;
  v200 = v199 ^ __ROR8__(v198, 61);
  v201 = __ROR8__(v199, 8);
  STACK[0x5560] = ((2 * (STACK[0x5560] + STACK[0x5600])) | 0xE925711C317D3B3ALL) - (STACK[0x5560] + STACK[0x5600]);
  STACK[0x5600] = STACK[0x5450] + STACK[0x5460];
  v202 = *(STACK[0x4B80] + (LODWORD(STACK[0x4AF8]) & (303133343 * (((-437628226 * STACK[0x4BA8]) & 0x88A35570) + ((1928669535 * STACK[0x4BA8]) ^ 0x4451AABF)) - 389341575)));
  v203 = v202 + STACK[0x4B78];
  v204 = (__ROR8__(v193, 8) + v194) ^ 0xD2F00CE620E5D3AELL;
  v205 = v204 ^ __ROR8__(v194, 61);
  v206 = __ROR8__(v204, 8);
  v207 = (((2 * (v201 + v200)) | 0xDA9B0A953D57FF16) - (v201 + v200) - 0x6D4D854A9EABFF8BLL) ^ 0x8CEC78114FFE06F1;
  v208 = v207 ^ __ROR8__(v200, 61);
  v209 = (__ROR8__(v207, 8) + v208) ^ 0xDA604B0C03A2BF99;
  v210 = v209 ^ __ROR8__(v208, 61);
  v211 = (__ROR8__(v209, 8) + v210) ^ 0xFA35E2CDCB3E31C7;
  v212 = v211 ^ __ROR8__(v210, 61);
  v213 = (v203 - ((2 * v203) & 0xCD112C8139AC067ALL) + 0x668896409CD6033DLL) ^ 0xDE0097947D11606ELL ^ __ROR8__(v202, 61);
  v214 = __ROR8__((v203 - ((2 * v203) & 0xCD112C8139AC067ALL) + 0x668896409CD6033DLL) ^ 0xDE0097947D11606ELL, 8);
  v215 = STACK[0x5230] + STACK[0x5120];
  v216 = (__ROR8__(v211, 8) + v212) ^ 0xD2F00CE620E5D3AELL;
  v217 = (v214 + v213 - ((2 * (v214 + v213)) & 0xAC0E7CE0BBB1F71ALL) + 0x56073E705DD8FB8DLL) ^ 0x6ECF8F1ABADD93FALL;
  v218 = v217 ^ __ROR8__(v213, 61);
  STACK[0x54C0] += STACK[0x5470];
  STACK[0x5450] = STACK[0x5378] + STACK[0x5440];
  STACK[0x5470] = STACK[0x5358] + STACK[0x52F8];
  v219 = ((((STACK[0x52E0] + STACK[0x52E8]) | 0xD4F71AF49840DF07) - ((STACK[0x52E0] + STACK[0x52E8]) | 0x2B08E50B67BF20F8) + 0x2B08E50B67BF20F8) ^ 0x208411C53630AA7CLL) >> STACK[0x5148];
  LODWORD(STACK[0x5378]) = ((v219 ^ LODWORD(STACK[0x5150]) ^ 0xFFFFFFCD) + 60) ^ ((v219 ^ LODWORD(STACK[0x5150]) ^ 0x36) - 63) ^ ((v219 ^ LODWORD(STACK[0x5150]) ^ 0xFFFFFFFB) + 14);
  STACK[0x52F8] = ((2 * v215) | 0x5F685731205609E4) - v215;
  STACK[0x52E8] = ((STACK[0x4F98] + STACK[0x4FF0]) | 0xF1085BCB64FB7748) - ((STACK[0x4F98] + STACK[0x4FF0]) | 0xEF7A4349B0488B7);
  STACK[0x52E0] = ((v183 + v182) | 0xC065B0D511F6FEC0) - ((v183 + v182) | 0x3F9A4F2AEE09013FLL);
  STACK[0x5358] = v206 + v205;
  STACK[0x5440] = __ROR8__(v216, 8) + (v216 ^ __ROR8__(v212, 61));
  v220 = (__ROR8__(v217, 8) + v218) ^ 0xE580B17D8CC5E551;
  v221 = v220 ^ __ROR8__(v218, 61);
  v222 = (__ROR8__(v220, 8) + v221) ^ 0xE1A1FD5BD155F97ALL;
  v223 = v222 ^ __ROR8__(v221, 61);
  v224 = (__ROR8__(v222, 8) + v223) ^ 0xDA604B0C03A2BF99;
  v225 = v224 ^ __ROR8__(v223, 61);
  v226 = (__ROR8__(v224, 8) + v225) ^ 0xFA35E2CDCB3E31C7;
  v227 = __ROR8__(v226, 8);
  v228 = v226 ^ __ROR8__(v225, 61);
  v229 = (v227 + v228 - ((2 * (v227 + v228)) & 0xC999862D5409E5D8) - 0x1B333CE955FB0D14) ^ 0x363CCFF08AE12142;
  v230 = v229 ^ __ROR8__(v228, 61);
  v231 = __ROR8__(v229, 8);
  STACK[0x4F98] = ((v231 + v230) ^ 0xCE5634F8E9FB9EE4 | 0x46078033F02FA4FFLL) - ((v231 + v230) ^ 0xCE5634F8E9FB9EE4 | 0xB9F87FCC0FD05B00);
  v232 = *(STACK[0x4B10] + (STACK[0x4B08] & STACK[0x5248]));
  v233 = v232 + STACK[0x4B20];
  STACK[0x4890] = v233;
  v234 = __ROR8__(v232, 61);
  STACK[0x4898] = v234;
  v235 = v233 ^ 0xB88801D4E1C76353 ^ v234;
  v236 = __ROR8__(v233 ^ 0xB88801D4E1C76353, 8);
  STACK[0x4880] = v236 + v235;
  v237 = (v236 + v235) ^ 0x38C8B16AE7056877;
  v238 = __ROR8__(v235, 61);
  v239 = __ROR8__(v237, 8);
  STACK[0x4888] = v238;
  v240 = v237 ^ v238;
  STACK[0x38C0] = v239 + v240;
  v241 = (((2 * (v239 + v240)) & 0x8B9428BFFF1F9F6ELL) - (v239 + v240) - 0x45CA145FFF8FCFB8) ^ 0x5FB55ADD8CB5D519;
  v242 = __ROR8__(v240, 61);
  STACK[0x38B0] = v242;
  v243 = v241 ^ v242;
  v244 = __ROR8__(v241, 8);
  v245 = (v244 + v243 - ((2 * (v244 + v243)) & 0xE906D0A9A73F8D0ELL) - 0xB7C97AB2C603979) ^ 0x1522950F02CA3FFDLL ^ __ROR8__(v243, 61);
  v246 = (__ROR8__((v244 + v243 - ((2 * (v244 + v243)) & 0xE906D0A9A73F8D0ELL) - 0xB7C97AB2C603979) ^ 0x1522950F02CA3FFDLL, 8) + v245) ^ 0xDA604B0C03A2BF99;
  v247 = v246 ^ __ROR8__(v245, 61);
  v248 = (__ROR8__(v246, 8) + v247) ^ 0xFA35E2CDCB3E31C7;
  v249 = v248 ^ __ROR8__(v247, 61);
  v250 = (__ROR8__(v248, 8) + v249) ^ 0xD2F00CE620E5D3AELL;
  v251 = ((__ROR8__(v250, 8) + (v250 ^ __ROR8__(v249, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x4B28];
  LODWORD(v206) = ((v251 ^ LODWORD(STACK[0x4B30]) ^ 0xFFFFFF82) + 39) ^ ((v251 ^ LODWORD(STACK[0x4B30]) ^ 0xFFFFFFFB) + 96) ^ ((v251 ^ LODWORD(STACK[0x4B30]) ^ 0x79) - 34);
  LODWORD(STACK[0x4870]) = STACK[0x4A90] & 0xFFFFFFF8;
  STACK[0x4978] = (v7 + 6108);
  v252 = STACK[0x4FC0] + LODWORD(STACK[0x5540]);
  v253 = *(STACK[0x49D0] + (((v252 & 0x2F806520) + (v252 & 0xD07F9AD8 | 0x2F806527) + 1253823475) & STACK[0x49D8] & 0xFFFFFFF8));
  v254 = __ROR8__(v252 & 0xFFFFFFFFFFFFFFF8, 8);
  v255 = (v253 + v254) ^ 0xB88801D4E1C76353;
  v256 = v255 ^ __ROR8__(v253, 61);
  v257 = (__ROR8__(v255, 8) + v256) ^ 0x38C8B16AE7056877;
  v258 = __ROR8__(v257, 8);
  v259 = __ROR8__(v256, 61);
  v260 = (((v258 + (v257 ^ v259)) | 0x1920047AF75A9D8BLL) - ((v258 + (v257 ^ v259)) | 0xE6DFFB8508A56274) - 0x1920047AF75A9D8CLL) ^ 0xFCA0B5077B9F78DALL;
  v261 = v260 ^ __ROR8__(v257 ^ v259, 61);
  v262 = (__ROR8__(v260, 8) + v261) ^ 0xE1A1FD5BD155F97ALL;
  v263 = v262 ^ __ROR8__(v261, 61);
  v264 = __ROR8__(v262, 8);
  v265 = (((2 * (v264 + v263)) & 0x88D6AED0D64EE4A4) - (v264 + v263) - 0x446B57686B277253) ^ 0x61F4E39B977A3234;
  v266 = v265 ^ __ROR8__(v263, 61);
  v267 = __ROR8__(v265, 8);
  v268 = (((2 * (v267 + v266)) | 0xB29233E357A78AACLL) - (v267 + v266) - 0x594919F1ABD3C556) ^ 0xA37CFB3C60EDF491 ^ __ROR8__(v266, 61);
  v269 = (__ROR8__((((2 * (v267 + v266)) | 0xB29233E357A78AACLL) - (v267 + v266) - 0x594919F1ABD3C556) ^ 0xA37CFB3C60EDF491, 8) + v268) ^ 0xD2F00CE620E5D3AELL;
  v270 = v269 ^ __ROR8__(v268, 61);
  v271 = __ROR8__(v269, 8);
  v272 = v271 + v270 - ((2 * (v271 + v270)) & 0xAB8F9615CB654712);
  v273 = *(*STACK[0x51F0] + ((((v252 & 0xFFFFFFF8 ^ 0x8C9CAD54) - 308311098 + ((2 * (v252 & 0xFFFFFFF8)) & 0x19395AA0)) & *STACK[0x51E8]) & 0xFFFFFFFFFFFFFFF8));
  v274 = (((2 * (v273 + v254)) | 0xDFF0036621425502) - (v273 + v254) + 0x1007FE4CEF5ED57FLL) ^ 0x57700067F16649D2;
  v275 = v274 ^ __ROR8__(v273, 61);
  v276 = (__ROR8__(v274, 8) + v275) ^ 0x38C8B16AE7056877;
  v277 = v276 ^ __ROR8__(v275, 61);
  v278 = (__ROR8__(v276, 8) + v277) ^ 0xE580B17D8CC5E551;
  v279 = v278 ^ __ROR8__(v277, 61);
  v280 = __ROR8__(v278, 8);
  v281 = (((2 * (v280 + v279)) | 0xE86D0FCF7707773ELL) - (v280 + v279) - 0x743687E7BB83BB9FLL) ^ 0x95977ABC6AD642E5;
  v282 = v281 ^ __ROR8__(v279, 61);
  v283 = (__ROR8__(v281, 8) + v282) ^ 0xDA604B0C03A2BF99;
  v284 = v283 ^ __ROR8__(v282, 61);
  v285 = (__ROR8__(v283, 8) + v284) ^ 0xFA35E2CDCB3E31C7;
  v286 = v285 ^ __ROR8__(v284, 61);
  v287 = (__ROR8__(v285, 8) + v286) ^ 0xD2F00CE620E5D3AELL;
  v288 = __ROR8__(v286, 61);
  LOBYTE(v286) = 8 * (v252 & 7);
  v289 = ((v272 - 0x2A3834F51A4D5C77) ^ 0x21B4C03B4BC2D6F2) >> v286;
  v290 = ((__ROR8__(v287, 8) + (v287 ^ v288)) ^ 0xF4730B31AE70757BLL) >> v286;
  LODWORD(v286) = *v252;
  HIDWORD(v288) = v289 ^ v286;
  LODWORD(v288) = (v290 ^ v286) << 24;
  LODWORD(v289) = *((((v288 >> 27) - ((2 * (v288 >> 27)) & 0x5A) + 45) ^ 0x1Au) + 129215 + STACK[0x57A0] + 408);
  LODWORD(v289) = 113 * (((v289 ^ 0xFFFFFFEB) + 21) ^ ((v289 ^ 0xFFFFFF88) + 120) ^ ((v289 ^ 0xFFFFFFDE) + 34)) - 41;
  LODWORD(v290) = v289 & 0xFFFFFFEC ^ 0x2F;
  LODWORD(v289) = v289 ^ (2 * ((v289 ^ 0x16) & (2 * ((v289 ^ 0x16) & (2 * ((v289 ^ 0x16) & (2 * ((v289 ^ 0x16) & (2 * ((v289 ^ 0x16) & (2 * ((v289 ^ 0x16) & 0x3A ^ v290)) ^ v290)) ^ v290)) ^ v290)) ^ v290)) ^ v290));
  LODWORD(v289) = v289 ^ ((v289 & 0xC0) >> 6) ^ ((v289 >> 2) | 0xFFFFFFC0);
  LODWORD(v238) = 117 * (((v289 ^ 0xFFFFFF98) - 106) ^ ((v289 ^ 0x5C) + 82) ^ ((v289 ^ 0xFFFFFFA8) - 90));
  LODWORD(STACK[0x5540]) = v238;
  LODWORD(v290) = (v238 + 108) & 0xFFFFFF92 ^ 0xFFFFFFE4;
  LODWORD(v174) = (v238 + 108) ^ (2 * (((v238 + 108) ^ 0x48) & (2 * (((v238 + 108) ^ 0x48) & (2 * (((v238 + 108) ^ 0x48) & (2 * (((v238 + 108) ^ 0x48) & (2 * (((v238 + 108) ^ 0x48) & (2 * v290) ^ v290)) ^ v290)) ^ v290)) ^ v290)) ^ v290));
  LODWORD(v227) = LODWORD(STACK[0x53D0]) != 19;
  LODWORD(STACK[0x5230]) = v188 + 77;
  LODWORD(STACK[0x4F70]) = LODWORD(STACK[0x5620]) - 108;
  LODWORD(STACK[0x4FF0]) = LODWORD(STACK[0x56F0]) ^ (((STACK[0x5560] + 0xB6D4771E7416263) ^ 0xE1B3BFB6CEE8E6) >> STACK[0x54B0]);
  LODWORD(STACK[0x5460]) = LODWORD(STACK[0x52C8]) ^ ((STACK[0x5600] ^ 0xF4730B31AE70757BLL) >> STACK[0x52C0]);
  LODWORD(STACK[0x54C0]) = LODWORD(STACK[0x5398]) ^ ((STACK[0x54C0] ^ 0xF4730B31AE70757BLL) >> STACK[0x5390]);
  LODWORD(STACK[0x4F78]) = LODWORD(STACK[0x52F0]) ^ ((STACK[0x5450] ^ 0xF4730B31AE70757BLL) >> STACK[0x52D0]);
  LODWORD(STACK[0x5620]) = LODWORD(STACK[0x51C0]) ^ ((STACK[0x5470] ^ 0xF4730B31AE70757BLL) >> STACK[0x51B0]);
  LODWORD(STACK[0x5378]) += 50;
  LODWORD(STACK[0x5560]) = LODWORD(STACK[0x50C8]) ^ (((STACK[0x52F8] + 0x504BD4676FD4FB0ELL) ^ 0x5BC720A93E5B7189) >> STACK[0x50C0]);
  LODWORD(STACK[0x5600]) = LODWORD(STACK[0x5040]) ^ (((STACK[0x52E8] + 0xEF7A4349B0488B7) ^ 0x57B50FACA8B0233) >> STACK[0x5038]);
  LODWORD(STACK[0x5450]) = LODWORD(STACK[0x4F48]) ^ (((STACK[0x52E0] + 0x3F9A4F2AEE09013FLL) ^ 0x3416BBE4BF868BBBLL) >> STACK[0x4F10]);
  LODWORD(STACK[0x5120]) = LODWORD(STACK[0x4E80]) ^ ((STACK[0x5358] ^ 0xF4730B31AE70757BLL) >> STACK[0x4EC8]);
  LODWORD(STACK[0x5358]) = LODWORD(STACK[0x4B60]) ^ ((STACK[0x5440] ^ 0xF4730B31AE70757BLL) >> STACK[0x4DD0]);
  LODWORD(STACK[0x5440]) = LODWORD(STACK[0x4B70]) ^ (((STACK[0x4F98] - 0x46078033F02FA500) ^ 0x7C22BFFAB7A44F60) >> STACK[0x4B68]);
  LODWORD(STACK[0x5248]) = v206 + 96;
  v291 = *(STACK[0x57D8] + 8 * (v7 ^ (200 * v227)));
  LODWORD(STACK[0x52E8]) = LODWORD(STACK[0x5008]) + 19;
  LODWORD(STACK[0x4878]) = v174;
  LODWORD(STACK[0x52E0]) = v174 ^ 0x77;
  STACK[0x52F8] = 19;
  LODWORD(STACK[0x4F98]) = 241;
  LODWORD(STACK[0x5470]) = 5;
  return v291(LODWORD(STACK[0x52A0]));
}

uint64_t sub_10016ADCC()
{
  v2 = STACK[0x5770];
  LODWORD(STACK[0x5750]) = v0 - 7005;
  v3 = v2 + (v1 - 15);
  v4 = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  v5 = (v4 - 0x1C64917143BAF701) ^ 0x19BD561D2BFA5152;
  v6 = (__ROR8__((v4 - 0x1C64917143BAF701) ^ 0x5662268C9D216ADLL, 8) + v5) ^ 0xFDA8E32437622097;
  v7 = v6 ^ __ROR8__(v5, 61);
  v8 = __ROR8__(v6, 8);
  v9 = (((2 * (v8 + v7)) & 0xAFA62BA8CF0D425ALL) - (v8 + v7) + 0x282CEA2B98795ED2) ^ 0x38148E1EBAB44940;
  v10 = v9 ^ __ROR8__(v7, 61);
  v11 = __ROR8__(v9, 8);
  v12 = (v11 + v10 - ((2 * (v11 + v10)) & 0xDA64C0A6DDFD1814) + 0x6D3260536EFE8C0ALL) ^ 0xD2C4A2484FF0C33DLL;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (((2 * (v14 + v13)) | 0xD08426EA30D38682) - (v14 + v13) - 0x684213751869C341) ^ 0xF0C0F452C35E0CD5;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0x5FD252103B569EALL;
  v18 = __ROR8__(v17, 8);
  v19 = v17 ^ __ROR8__(v16, 61);
  v20 = (0xF87DAE776E136938 - ((v18 + v19) | 0xF87DAE776E136938) + ((v18 + v19) | 0x782518891EC96C7)) ^ 0x7CD477BDAFC8AD6DLL;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  LODWORD(STACK[0x5760]) = *v3 ^ (((((2 * (v22 + v21)) | 0x2DDE584D8874D776) - (v22 + v21) - 0x16EF2C26C43A6BBBLL) ^ 0xB9F4F8CB4E5C7DF0) >> (8 * (v3 & 7u)));
  v23 = v2 + (v1 - 14);
  v24 = __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = ((v24 - 0x1C64917143BAF701) | 0x5337AFBF1A34B5B2) - ((v24 - 0x1C64917143BAF701) | 0xACC85040E5CB4A4DLL) - 0x5337AFBF1A34B5B3;
  v26 = v25 ^ 0x56518DD7D3E6A31FLL;
  v25 ^= 0x4A8AF9A231CEE4E0uLL;
  v27 = (__ROR8__(v26, 8) + v25) ^ 0xFDA8E32437622097;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (0xF9F46584D6858C83 - ((v29 + v28) | 0xF9F46584D6858C83) + ((v29 + v28) | 0x60B9A7B297A737CLL)) ^ 0x1633FE4E0BB764EELL;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0xBFF6C21B210E4F37;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0x9882E727DB37CF94;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x5FD252103B569EALL;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (0x985DB208D634F4EFLL - ((v38 + v37) | 0x985DB208D634F4EFLL) + ((v38 + v37) | 0x67A24DF729CB0B10)) ^ 0x1CF46BC217EF30BALL;
  LODWORD(STACK[0x57B0]) = *v23 ^ (((__ROR8__(v39, 8) + (v39 ^ __ROR8__(v37, 61))) ^ 0xAF1BD4ED8A66164BLL) >> (8 * (v23 & 7u)));
  return (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x5750])))();
}

uint64_t sub_10016C8C4(uint64_t a1)
{
  v2 = *(a1 + 3256);
  *(a1 + 3264) = v2;
  v3 = *(a1 + 3252);
  *(a1 + 3272) = v3;
  *(a1 + 3276) = v3 + 4675;
  *(a1 + 3280) = *(v1 + 24);
  *(a1 + 3184) = *(a1 + 4352) + 16 * v2 + 8;
  v4 = STACK[0x57D8];
  *(a1 + 3168) = *(STACK[0x57D8] + 8 * (v3 + 10458));
  return (*(v4 + 8 * (v3 + 10251)))();
}

uint64_t sub_10016C928@<X0>(int a1@<W8>)
{
  v2 = STACK[0x8960];
  LODWORD(STACK[0xDEEC]) = STACK[0x6BAC];
  STACK[0xA0F0] = v2;
  STACK[0x95B8] = v1;
  STACK[0x82A8] = 0;
  STACK[0x7FD0] = 0;
  LODWORD(STACK[0xC464]) = -769884012;
  if (v2)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  return (*(STACK[0x57D8] + 8 * ((v4 * ((a1 - 12996) ^ (a1 - 12976))) ^ a1)))();
}

uint64_t sub_10016C9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v9 = &STACK[0x1D280] + v8;
  *v9 = *a7;
  v9[1] = a7[1];
  v9[2] = a7[2];
  v9[3] = a7[3];
  v9[4] = a7[4];
  v9[5] = a7[5];
  v9[6] = a7[6];
  v9[7] = a7[7];
  v9[8] = a7[8];
  v9[9] = a7[9];
  v9[10] = a7[10];
  v9[11] = a7[11];
  v9[12] = a7[12];
  v9[13] = a7[13];
  v9[14] = a7[14];
  v10 = a7[15];
  STACK[0x53A0] = v9;
  v9[15] = v10;
  return (*(STACK[0x57D8] + 8 * v7))();
}

uint64_t sub_10016CAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v7 = ((v6 + (v5 ^ LODWORD(STACK[0x3A18])) - 269) ^ ((v5 ^ 0x7787D82A) - 2005391402) ^ ((v5 ^ 0x5ACC1060) - 1523322976)) + (v4 ^ 0x1697046E);
  v8 = ((v7 ^ 0x529C1253) - 384228626) ^ v7 ^ ((v7 ^ 0x2B66130E) - 1864162383) ^ ((v7 ^ 0x467F116B) - 33938986) ^ ((v7 ^ 0x7BFFDF77) - 1065685046);
  v9 = v8 ^ 0x447ACF41u;
  v10 = __ROR8__((a3 + v9) & 0xFFFFFFFFFFFFFFF8, 8);
  v11 = v10 - ((2 * v10 - 0x38C922E28775EE02) & 0x8A4B9C8799CA3352) + 0x28C13CD2892A22A8;
  v12 = v11 ^ 0x4043EC2B05370F04;
  v11 ^= 0x5C98985EE71F48FBuLL;
  v13 = (__ROR8__(v12, 8) + v11) ^ a2;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = __ROR8__(v13, 8);
  v16 = __ROR8__((0x5C5A493B7C0DBCE5 - ((v15 + v14) | 0x5C5A493B7C0DBCE5) + ((v15 + v14) | 0xA3A5B6C483F2431ALL)) ^ 0xB39DD2F1A13F5488, 8);
  v17 = (0x5C5A493B7C0DBCE5 - ((v15 + v14) | 0x5C5A493B7C0DBCE5) + ((v15 + v14) | 0xA3A5B6C483F2431ALL)) ^ 0xB39DD2F1A13F5488 ^ __ROR8__(v14, 61);
  v18 = (v16 + v17) ^ 0xBFF6C21B210E4F37;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ a1;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  v23 = __ROR8__((((2 * (v22 + v21)) | 0xD57FB2E51D8D5B78) - (v22 + v21) - 0x6ABFD9728EC6ADBCLL) ^ 0x6F42FC538D73C456, 8);
  v24 = (((2 * (v22 + v21)) | 0xD57FB2E51D8D5B78) - (v22 + v21) - 0x6ABFD9728EC6ADBCLL) ^ 0x6F42FC538D73C456 ^ __ROR8__(v21, 61);
  v25 = (((2 * (v23 + v24)) & 0x14DABECA66780112) - (v23 + v24) - 0xA6D5F65333C008ALL) ^ 0x8EC486AFF2E7C4DCLL;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  *(v3 + v9) = (((v27 + v26 - ((2 * (v27 + v26)) & 0xCCBD22B15F62A46ALL) + 0x665E9158AFB15235) ^ 0xC94545B525D7447ELL) >> (8 * ((a3 + (v8 ^ 0x41)) & 7))) ^ *(a3 + v9);
  return (*(STACK[0x57D8] + 8 * (((16 * (v8 != 1148899137)) | ((v8 != 1148899137) << 6)) ^ v4)))();
}

uint64_t sub_10016CDF8()
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
  v4 = v2[15];
  STACK[0x57C0] = v3;
  v3[15] = v4;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_10016CF0C()
{
  v4 = STACK[0x51B8];
  v5 = STACK[0x51B8] - 22613;
  v6 = 1534937323 * ((2 * (v0 & 0x4DF21A02D0CA018) - v0 + 0x7B20DE5FD2F35FE0) ^ 0xB658569D141DA4A7);
  *(v2 + 616) = STACK[0x9B30] + v6;
  *(v2 + 612) = (1534937323 * ((2 * (v0 & 0x2D0CA018) - v0 - 755802144) ^ 0x141DA4A7)) ^ v5 ^ 0x29E8F313;
  *(v2 + 592) = v6;
  *(v2 + 624) = 1534937323 * ((2 * (v0 & 0x2D0CA018) - v0 - 755802144) ^ 0x141DA4A7) + v4 + 703109822;
  *(v2 + 600) = (v5 | 0x29E8E38C) - 1534937323 * ((2 * (v0 & 0x2D0CA018) - v0 - 755802144) ^ 0x141DA4A7);
  *(v2 + 604) = 1534937323 * ((2 * (v0 & 0x2D0CA018) - v0 - 755802144) ^ 0x141DA4A7) + 1451493860 + v4;
  *(v2 + 608) = 1534937323 * ((2 * (v0 & 0x2D0CA018) - v0 - 755802144) ^ 0x141DA4A7);
  v7 = STACK[0x57D8];
  v8 = (*(STACK[0x57D8] + 8 * (v4 ^ v1)))(v3 - 240);
  return (*(v7 + 8 * *(v2 + 628)))(v8);
}

uint64_t sub_10016D010()
{
  v1 = STACK[0x57D8];
  STACK[0x7CA8] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (((v0 + 20037) ^ 0x5F30) + v0)))();
}

uint64_t sub_10016D04C()
{
  v1 = (881 * (STACK[0x51B8] ^ 0x5845) - 16729) | 0x240;
  LODWORD(STACK[0xB954]) = LODWORD(STACK[0x72D4]) + v0;
  return (*(STACK[0x57D8] + 8 * (((*(STACK[0x60B8] + 533) == 1) * (v1 ^ 0x27A)) ^ LODWORD(STACK[0x2A38]))))();
}

uint64_t sub_10016D0CC()
{
  v1 = ((v0 + 1901595649) & 0x8EA7B7BF) - 3802 + (((LODWORD(STACK[0x715C]) ^ 0xAA0F3242) + 1441844670) ^ ((LODWORD(STACK[0x715C]) ^ LODWORD(STACK[0x1048])) + 483087698) ^ ((LODWORD(STACK[0x715C]) ^ 0x9B271878) + 1691936648)) + 377510022;
  v2 = (v1 ^ 0x339BAA14) & (2 * (v1 & 0xBB9C2359)) ^ v1 & 0xBB9C2359;
  v3 = ((2 * (v1 ^ 0x7693AA04)) ^ 0x9A1F12BA) & (v1 ^ 0x7693AA04) ^ (2 * (v1 ^ 0x7693AA04)) & 0xCD0F895C;
  v4 = v3 ^ 0x45008945;
  v5 = (v3 ^ 0x88010008) & (4 * v2) ^ v2;
  v6 = ((4 * v4) ^ 0x343E2574) & v4 ^ (4 * v4) & 0xCD0F895C;
  v7 = (v6 ^ 0x40E0159) & (16 * v5) ^ v5;
  v8 = ((16 * (v6 ^ 0xC9018809)) ^ 0xD0F895D0) & (v6 ^ 0xC9018809) ^ (16 * (v6 ^ 0xC9018809)) & 0xCD0F8950;
  v9 = v7 ^ 0xCD0F895D ^ (v8 ^ 0xC008810D) & (v7 << 8);
  v10 = v1 ^ (2 * ((v9 << 16) & 0x4D0F0000 ^ v9 ^ ((v9 << 16) ^ 0x95D0000) & (((v8 ^ 0xD07080D) << 8) & 0xCD0F0000 ^ 0x40060000 ^ (((v8 ^ 0xD07080D) << 8) ^ 0xF890000) & (v8 ^ 0xD07080D))));
  LODWORD(STACK[0xDC5C]) = v10 ^ 0xE185B177;
  v11 = STACK[0x57D8];
  v12 = (*(STACK[0x57D8] + 8 * (v0 + 11344)))(v10 ^ 0x339931E3);
  STACK[0xDC60] = v12;
  return (*(v11 + 8 * ((8128 * (v12 != 0)) ^ v0)))();
}

uint64_t sub_10016D4EC()
{
  STACK[0x57C0] = 0;
  v0 = STACK[0x51B8] - 18197;
  STACK[0x7810] = STACK[0xD980];
  STACK[0x8000] = &STACK[0x84C8];
  STACK[0x5FC0] = 0;
  LODWORD(STACK[0xA12C]) = 2101965980;
  LODWORD(STACK[0xC0DC]) = -2013569055;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10016D588()
{
  STACK[0x57C0] = STACK[0xA8E8];
  v1 = STACK[0x57D8];
  STACK[0xA108] = *(STACK[0x57D8] + 8 * (v0 - 18708));
  return (*(v1 + 8 * (((v0 + 1552) ^ 0x51D8) + v0 - 18708)))();
}

uint64_t sub_10016D730()
{
  v5 = *(((6074 * (v0 ^ 0x16E7) - 12083) ^ v1) + STACK[0x5490] + 14420) ^ (v1 - ((2 * v1) & 0xA) + 5) ^ 0xC;
  *(STACK[0x8070] + v4 + 12337 * v1 - (((((v4 + 12337 * v1) >> 1) * v2) >> 32) >> 12) * v3) = *STACK[0x8070] ^ 0xB7 ^ *(STACK[0x8070] + 12337 * v5 - (((1328683 * (12337 * v5)) >> 32) >> 2) * v3);
  return (*(STACK[0x57D8] + 8 * ((31742 * (v1 == 255)) ^ v0)))();
}

uint64_t sub_10016D97C()
{
  STACK[0x88F0] = STACK[0x8B20];
  LODWORD(STACK[0xCD90]) = STACK[0xCA38];
  LODWORD(STACK[0xCAFC]) = STACK[0xA3FC];
  return (*(STACK[0x57D8] + 8 * ((18695 * (v0 < 155 * (v0 ^ 0x44155569) + 459990337)) ^ (v0 - 1142234210))))();
}

uint64_t sub_10016DA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v15 = STACK[0x57A0];
  LODWORD(STACK[0x57A0]) = STACK[0x57A0];
  v16 = (v15 - 1355033925) & 0x50C455C7;
  LODWORD(STACK[0x51D0]) = v16;
  v17 = v8 ^ (v16 - 579176637);
  STACK[0x53D8] = v17;
  v18 = STACK[0xD730] + v17;
  v19 = v18 + 51;
  v20 = (v18 - 242660813 - ((2 * (v18 - 942322637)) & 0x5367FDB0) + 216) & (v15 - 7436);
  *(&v22 + 1) = v20 ^ 0xD8u;
  *&v22 = (v18 + 0x6C0AB951F1894A33 - ((2 * (v18 - 0x48C82E84382AB3CDLL)) & 0x69A5CFAC5367FDB0) + 216) ^ 0xB4D2E7D629B3FE00;
  v21 = v22 >> 8;
  v23 = ((((v18 - 942322629 - ((2 * (v18 - 942322629)) & 0x39D58550) + 485147304) & 0xFFFFFFF8 ^ 0x7F6D61F1) - 1272227215) ^ (((v18 - 942322629 - ((2 * (v18 - 942322629)) & 0x39D58550) + 485147304) & 0xFFFFFFF8 ^ 0x33E5DCC2) - 123476156) ^ (((v18 - 942322629 - ((2 * (v18 - 942322629)) & 0x39D58550) + 485147304) & 0xFFFFFFF8 ^ 0x50627F9B) - 1692122085)) + 1305977442;
  v24 = (v23 ^ 0x9269ED42) & (2 * (v23 & 0xD44DEE0B)) ^ v23 & 0xD44DEE0B;
  v25 = ((2 * (v23 ^ 0x12F8F144)) ^ 0x8D6A3E9E) & (v23 ^ 0x12F8F144) ^ (2 * (v23 ^ 0x12F8F144)) & 0xC6B51F4E;
  v26 = (v25 ^ 0x80A0190D) & (4 * v24) ^ v24;
  v27 = ((4 * (v25 ^ 0x42950141)) ^ 0x1AD47D3C) & (v25 ^ 0x42950141) ^ (4 * (v25 ^ 0x42950141)) & 0xC6B51F4C;
  v28 = (v27 ^ 0x2941D00) & (16 * v26) ^ v26;
  v29 = ((16 * (v27 ^ 0xC4210243)) ^ 0x6B51F4F0) & (v27 ^ 0xC4210243) ^ (16 * (v27 ^ 0xC4210243)) & 0xC6B51F40;
  v30 = v28 ^ 0xC6B51F4F ^ (v29 ^ 0x42111400) & (v28 << 8);
  v31 = v23 ^ (2 * ((v30 << 16) & 0x46B50000 ^ v30 ^ ((v30 << 16) ^ 0x1F4F0000) & (((v29 ^ 0x84A40B0F) << 8) & 0x46B50000 ^ 0x42A00000 ^ (((v29 ^ 0x84A40B0F) << 8) ^ 0x351F0000) & (v29 ^ 0x84A40B0F))));
  *(&v22 + 1) = (v18 - 0x48C82E84382AB3C5 - ((2 * (v18 - 0x48C82E84382AB3C5)) & 0x7DB08F439D58550) - 0x7C127B85E3153D58) & 0xFFFFFFFFFFFFFFF8;
  *&v22 = v18 - 0x48C82E84382AB3C5 - ((2 * (v18 - 0x48C82E84382AB3C5)) & 0x7DB08F439D58550) - 0x7C127B85E3153D58;
  v32 = v22 >> 8;
  v33 = (v18 - 1216657853 - ((2 * (v18 - 942322621)) & 0xDF4BF5D0) + 232) & 0xFFFFFFF8;
  *(&v22 + 1) = v33 ^ 0xE8u;
  *&v22 = (v18 + 0x38DD9558B77B4643 - ((2 * (v18 - 0x48C82E84382AB3BDLL)) & 0x34B87B9DF4BF5D0) + 232) ^ 0x81A5C3DCEFA5FA00;
  v34 = v22 >> 8;
  LODWORD(v17) = (((v20 ^ 0x729F2BA1) - 1824315530) ^ ((v20 ^ 0x90C8F11) - 388987962) ^ ((v20 ^ 0x52205A68) - 1275308355)) + 1177067411;
  v35 = v17 ^ ((v17 ^ 0x57664C80) - 1134576777) ^ ((v17 ^ 0xAC1AF9F4) + 1193479683) ^ ((v17 ^ 0x9145429A) + 2054993261) ^ ((v17 ^ 0x7EFFFFE7) - 1782183918) ^ 0x14C60808;
  LODWORD(v17) = *STACK[0x51E8];
  v36 = v17 & 0xFFFFFFF8;
  v37 = v17 & 0xFFFFFFF8 & v35;
  v38 = *STACK[0x51F0];
  v39 = *(v38 + v37);
  v40 = (v21 + v39) ^ 0xDC7BE2ED6B4A14F5;
  *&v22 = __ROR8__(v40, 8);
  v41 = ((v22 ^ 0xDB64DA3A44B5EF2DLL) + 0x2FF622103AAC7F64) ^ ((v22 ^ 0xD36EEBFEB8CE9267) + 0x27FC13D4C6D7022ALL) ^ ((v22 ^ 0x9A225C77588F6962) + 0x6EB0A45D2696F92DLL);
  *&v22 = __ROR8__(v39, 61);
  v42 = v40 ^ (v22 - ((2 * v22) & 0x8307125CFBDE9A0CLL) - 0x3E7C76D18210B2FALL);
  v43 = (((v42 ^ 0x4C2C88634AB5DA81) - 0x4C2C88634AB5DA81) ^ ((v42 ^ 0xB6A22638B203F603) + 0x495DD9C74DFC09FDLL) ^ ((v42 ^ 0x136094D1714D4916) - 0x136094D1714D4916)) + v41 - 0x7CCC5B0F50F21ED3;
  *&v22 = __ROR8__(v42, 61);
  v44 = v43 ^ v22;
  v45 = (v43 ^ v22 ^ 0x5A4396BA732B46EELL) >> (~v22 & a8) >> (v22 & 0x19 ^ 1) >> (v22 & 0x3C ^ 0x18) >> (v22 & 1);
  *&v22 = __ROR8__(v43 ^ 0x75336BFB2AFF4A47, 8);
  v46 = (((v44 ^ 0xCFCAE6DD3851D6C5) + 0x7B588880783C43C3) ^ ((v44 ^ 0x9041F85A8B88DE65) + 0x24D39607CBE54B63) ^ ((v44 ^ 0x5C8883DC0F24E4ELL) - 0x4EA5199F7F6024B6)) + 0x6A07DCD6454C15DLL + (((v22 ^ 0xA8C74A03D7D07F45) - 0x53D53D9E555DE522) ^ ((v22 ^ 0x4955470E9C973543) + 0x4DB8CF6CE1E550DCLL) ^ ((v22 ^ 0xEFF20C245E514526) - 0x14E07BB9DCDCDF41));
  v47 = v45 ^ (8 * v44) ^ v46;
  *&v22 = __ROR8__(v46 ^ 0x21FB1FDC88917CFLL, 8);
  v48 = ((((v47 ^ 0xD17A47EF5F25342ALL) + 0x58641AE9663C59B2) ^ ((v47 ^ 0x7D3CD99786B30FB3) - 0xBDD7B6E40559DD7) ^ ((v47 ^ 0x5C2FFF6C78F93572) - 0x2ACE5D95BE1FA716)) - 0x8343443D0A077F1 + (((v22 ^ 0xFD87A5DE745E410ALL) + 0x271B378A7684E95CLL) ^ ((v22 ^ 0xE6D0D96B3CA256CELL) + 0x3C4C4B3F3E78FEA0) ^ ((v22 ^ 0x4F7716D0720CABEALL) - 0x6A147B7B8F29FC44))) ^ 0xCC1304F997B53F3FLL;
  v49 = v48 ^ __ROR8__(v47 ^ 0x76E1A2F9C6E69264, 61);
  *&v22 = __ROR8__(v48, 8);
  v50 = ((((v49 ^ 0xCEEEE10E48B6B67CLL) - 0x5EF768ED5F04CBECLL) ^ ((v49 ^ 0xC06E71E286759A37) - 0x5077F80191C7E7A7) ^ ((v49 ^ 0x137A91CD4B87CBD5) + 0x7C9CE7D1A3CA49BBLL)) + (((v22 ^ 0xE6FD13646668CB4BLL) + 0x471C01CB1BCCD46ELL) ^ ((v22 ^ 0xC94F39D0A1414562) + 0x68AE2B7FDCE55A45) ^ ((v22 ^ 0xCD9B96AA8D90862ALL) + 0x6C7A8405F034990DLL)) + 0x4A1ADA115BD982E8) ^ 0x46CF9C122E9643DDLL;
  v51 = v50 ^ __ROR8__(v49 ^ 0x901989E317B27D90, 61);
  *&v22 = __ROR8__(v50, 8);
  v52 = (((v51 ^ 0xB58EA996ABD23D0BLL) - 0x1B120E6EB25C7C5CLL) ^ ((v51 ^ 0x66FF982236AA4932) + 0x379CC025D0DBF79BLL) ^ ((v51 ^ 0x3D7F2244E81F50B1) + 0x6C1C7A430E6EEE1ALL)) + (((v22 ^ 0xFBBAC041FF419E4FLL) - 0x4B05380153AE224DLL) ^ ((v22 ^ 0x30D9F110FF0071F3) + 0x7F99F6AFAC10320FLL) ^ ((v22 ^ 0x37E22304E4A33C48) + 0x78A224BBB7B37FB6)) - 0x732E61E24B092A2BLL;
  v53 = v52 ^ __ROR8__(v51 ^ 0xAE9CA7F8198E4157, 61);
  *&v22 = __ROR8__(v52 ^ 0x69628BA6A96A4CAFLL, 8);
  v54 = (((v53 ^ 0x9BF0FD0BF437926FLL) + 0x1EA01B4604F43D09) ^ ((v53 ^ 0x385169BBDAAD85C0) - 0x42FE7009D591D558) ^ ((v53 ^ 0xF1214561003E32DLL) - 0x75BD0DE41F3FB3B5)) - 0x3BD5A240D9BF5C55 + (((v22 ^ 0xE3861C59DD2B2241) + 0x25B56367D5BE9ABALL) ^ ((v22 ^ 0x66F29B55AD080C26) - 0x5F3E1B945A624B21) ^ ((v22 ^ 0x52B5C3A773D396F1) - 0x6B79436684B9D1F6));
  v55 = v54 ^ __ROR8__(v53 ^ 0x7AAF19B20F3C5098, 61);
  *&v22 = __ROR8__(v54 ^ 0x2B1FF17272A01AD7, 8);
  v56 = ((v22 ^ 0xFAE243C76346DB69) + 0x404E0AF5DA22006) ^ ((v22 ^ 0xE5E88941C4592967) + 0x1B0E2A29FABDD20CLL) ^ ((v22 ^ 0xD37E589BEBCECA1ELL) + 0x2D98FBF3D52A3173);
  v57 = *(v38 + (v17 & (v31 ^ 0x51C31F10) & 0xFFFFFFF8 ^ v17 & 0x4EECF80));
  *&v22 = __ROR8__(v57, 61);
  v58 = (v57 + (((v32 ^ 0xFD8588AD5093B2D2) - 0x51DAB00EFE85C290) ^ ((v32 ^ 0x26AD43C454FCCABELL) + 0x750D849805154504) ^ ((v32 ^ 0x73AB26ED7E7392AELL) + 0x200BE1B12F9A1D14)) + 0x4DCD527D40A9A80) ^ 0x1D684C70320672AFLL;
  v59 = v58 ^ (v22 - ((2 * v22) & 0x97E746ABC53C97C8) - 0x340C5CAA1D61B41CLL);
  *&v22 = __ROR8__(v58, 8);
  v60 = ((((v59 ^ 0x2B7E4A19C66587BLL) - 0x2B7E4A19C66587BLL) ^ ((v59 ^ 0x34E34718ED735A62) - 0x34E34718ED735A62) ^ ((v59 ^ 0x14D91DD53ED30735) - 0x14D91DD53ED30735)) + (((v22 ^ 0x6906A90D8394EE1FLL) - 0x719D1E659323D903) ^ ((v22 ^ 0xA15E3C9FDEBFB161) + 0x463A740831F77983) ^ ((v22 ^ 0xB1EB8F64860730) - 0x182A5CE77431302CLL)) - 0xCFF781E871F8B82) ^ 0x1C04D1E5CA1FF08CLL;
  v61 = v60 ^ __ROR8__(v59, 61);
  *&v22 = __ROR8__(v60, 8);
  v62 = ((((v22 ^ 0x983F494A72D993D1) + 0x72A64962B72668CALL) ^ ((v22 ^ 0xFD15DEDDC82A8382) + 0x178CDEF50DD5789BLL) ^ ((v22 ^ 0xA023A104B105FFC9) + 0x4ABAA12C74FA04D2)) + (((v61 ^ 0x72DE975884289BFCLL) + 0x4E472684DEE3BC08) ^ ((v61 ^ 0xA61989EE5FC26172) - 0x657FC7CDFAF6B976) ^ ((v61 ^ 0xC99C7EDF5335492ALL) - 0xAFA30FCF601912ELL)) - 0x51530871A01DA8E3) ^ 0x8A180C5F0AE133A5;
  v63 = v62 ^ __ROR8__(v61 ^ 0xC3664E23A534D804, 61);
  *&v22 = __ROR8__(v62, 8);
  v64 = (((v55 ^ 0x69BDB594C3C790BCLL) + 0x4116691953DBCA1BLL) ^ ((v55 ^ 0xBB2DA581BC20B88ELL) - 0x6C7986F3D3C31DD7) ^ ((v55 ^ 0x3DF9368A515202FFLL) + 0x1552EA07C14E585ALL)) + 0x5AAD477CF20CC17 + v56;
  v65 = (((v63 ^ 0x74B3D04125489B4CLL) - 0x1EAD826C6048CDF1) ^ ((v63 ^ 0x876D1E765D5A296) - 0x626883CA20D5F42BLL) ^ ((v63 ^ 0x2541AB6F1D126EE2) - 0x4F5FF9425812385FLL)) + (((v22 ^ 0x6DCE9E5FC926E996) + 0x6988ED3A05701F19) ^ ((v22 ^ 0xB2B31412EF418B5BLL) - 0x490A9888DCE8822ALL) ^ ((v22 ^ 0xE1D5E795BE55B6C7) - 0x1A6C6B0F8DFCBFB6)) - 0x75325D93BD52100;
  v66 = v65 ^ __ROR8__(v63 ^ 0x6A1E522D450056BDLL, 61);
  *&v22 = __ROR8__(v65 ^ 0xE8BC8FBA1C03AABFLL, 8);
  v67 = (((v66 ^ 0x7DEF644607165AE9) - 0x2ED2ED41AA707463) ^ ((v66 ^ 0x6FF648254AF99ABALL) - 0x3CCBC122E79FB430) ^ ((v66 ^ 0x6B61F1F0A72AF0A7) - 0x385C78F70A4CDE2DLL)) + 0x3E05C2A63DB4F8ABLL + (((v22 ^ 0x7F607713888FA119) - 0xEAD0A9777ACC5A2) ^ ((v22 ^ 0x6B0DEBF57D2C5B41) - 0x1AC09671820F3FFALL) ^ ((v22 ^ 0x76608F73FC9144CELL) - 0x7ADF2F703B22075));
  v68 = v67 ^ __ROR8__(v66 ^ 0x533D8907AD662E8ALL, 61);
  *&v22 = __ROR8__(v67 ^ 0xDDEFCCA5941D23BFLL, 8);
  v69 = (((v68 ^ 0xBB783080C0DF3CB5) - 0x4F0B5D8D39FFE1BELL) ^ ((v68 ^ 0x3A1F1DA8BB3982FCLL) + 0x31938F5ABDE6A009) ^ ((v68 ^ 0x1490407C8ABBFA99) + 0x1F1CD28E8C64D86ELL)) + 0x342EC729BDF5500BLL + (((v22 ^ 0xBBA3AACBCDCF5C16) + 0x8ECA1E1D41F4D4ELL) ^ ((v22 ^ 0x67A72A742344B537) - 0x2B17DEA1C56B5B93) ^ ((v22 ^ 0x421EB2BABDD3B1B5) - 0xEAE466F5BFC5F11));
  *&v22 = __ROR8__(v68 ^ 0xF4736D0DF920DD0BLL, 61);
  v70 = v69 ^ v22;
  v71 = (((v69 ^ v22 ^ 0xF5E513FE78AF0F04) + 0xA1DFE64911A935FLL) ^ ((v69 ^ v22 ^ 0x7643F1B045D21739) - 0x7644E3D55398749CLL) ^ ((v69 ^ v22 ^ 0x27A0C02327430C9ELL) - 0x27A7D24631096F3BLL)) + ((((v69 >> 8) ^ 0x114D2827195D893DLL) - 0x448A9EFC680119C4) ^ (((v69 >> 8) ^ 0xC173FEEBA7CFEBALL) - 0x59D08935CB206E43) ^ (((v69 >> 8) ^ 0x1DF231E90678A55DLL) - 0x48358732772435A4)) + ((((v69 << 56) ^ 0x1A7784DEC37D4987) - 0x47530B09B4703DCFLL) ^ (((v69 << 56) ^ 0xF83540DA990D85B6) + 0x5AEE30F211FF0E02) ^ (((v69 << 56) ^ 0x9A42C4045A70CC31) + 0x3899B42CD2824787)) + 0x1E9550DB57872D71;
  v72 = v71 ^ __ROR8__(v70, 61);
  *&v22 = __ROR8__(v71 ^ 0x72E5C7726C80E16DLL, 8);
  v73 = 8 * (v19 & 7);
  v74 = (v64 ^ 0xC1C3C8D2A4C54828) >> v73;
  v75 = ((((v72 ^ 0x9B409F696BB9026BLL) + 0x74DFBB7022DA5306) ^ ((v72 ^ 0x1EBCE439B9B2B1E2) - 0xEDC3FDF0F2E1F73) ^ ((v72 ^ 0xFA408406A0631C8FLL) + 0x15DFA01FE9004DE2)) + 0x5855BA818FD050D8 + (((v22 ^ 0xCA73555F96B46C9FLL) - 0x5427A8A410A73B35) ^ ((v22 ^ 0xB102A2E59A1B5598) - 0x2F565F1E1C080232) ^ ((v22 ^ 0xD5C9F91406021ECLL) + 0x6CF79D95398C89BALL))) ^ 0xC1C3C8D2A4C54828;
  v76 = v74 + 8 * (v75 << (v73 ^ 0x3Du));
  LODWORD(v54) = ((v76 >> 8) ^ 0x72) - ((v76 >> 8) ^ 0xDD);
  v77 = STACK[0x5148];
  v78 = STACK[0x5130];
  v79 = ((*(STACK[0x5130] + (v74 ^ 0xE8)) ^ 0xFFFFFFCF) << 24) | ((*(STACK[0x5148] + (BYTE1(v76) ^ 0x92)) ^ (v54 - ((2 * v54) & 0x78) - 68) ^ 0x55) << 16);
  v80 = STACK[0x5140];
  LODWORD(v54) = *(STACK[0x5140] + ((BYTE2(v76) - ((v76 >> 15) & 0xD6) + 107) ^ 0xBLL));
  v81 = v54 >> 1;
  LODWORD(STACK[0x5338]) = LODWORD(STACK[0x5368]) < 0x4195A8D1;
  v82 = (v54 >> 1) & 0x10;
  v137 = (v82 & v54) == 0;
  v83 = v54 ^ 0x43;
  if (!v137)
  {
    v82 = -v82;
  }

  v84 = v79 & 0xFFFF0000 | ((v81 & 0x2B ^ 0xA ^ (v82 + v83)) << 8) | *(v80 + (BYTE3(v76) ^ 0x3BLL)) ^ 0x2D ^ (*(v80 + (BYTE3(v76) ^ 0x3BLL)) >> 1) & 0x3B;
  v85 = v84 ^ ((v84 & v9) >> 1);
  v86 = (((v33 ^ 0xE0554249) - 1801344825) ^ ((v33 ^ 0xB4D3F1AE) - 1071178974) ^ ((v33 ^ 0xBB23490F) - 807951487)) - 2094671201;
  v87 = *(v38 + (v36 & (v86 ^ ((v86 ^ 0x17C429C) - 634921964) ^ ((v86 ^ 0x6121FE) - 616906894) ^ ((v86 ^ 0x5846E5CF) - 2095219903) ^ ((v86 ^ 0x7DFFE7DD) - 1499170477) ^ 0x24A46170)));
  v88 = v87 + v34;
  v89 = __ROR8__(v87, 61);
  v90 = (v89 - ((2 * v89) & 0x70BC4A76CE2742C0) - 0x47A1DAC498EC5EA0) ^ v88;
  v91 = __ROR8__(v88 ^ 0xACDB866954A2E14ALL, 8);
  v92 = (((v91 ^ 0x533C75B85109AB28) + 0x571A4355FAFDFA7ELL) ^ ((v91 ^ 0x1679DA0DAF647186) + 0x125FECE0049020D4) ^ ((v91 ^ 0x681D6262DEA62673) + 0x6C3B548F75527727)) - 0x7A2EC64B95DF57AFLL + (((v90 ^ 0x6345092C5DA3629FLL) + 0x7FA2B64FAF7155BELL) ^ ((v90 ^ 0x34B8C91EAACDF111) + 0x285F767D581FC634) ^ ((v90 ^ 0x1BB5B4400F230E89) + 0x7520B23FDF139ACLL));
  v93 = v92 ^ __ROR8__(v90 ^ 0xE318409C0D2DC8DDLL, 61);
  v94 = __ROR8__(v92 ^ 0xA52BA442E0CC4461, 8);
  v95 = (((v93 ^ 0x9A47BC02914D61FDLL) + 0x23ED6D0B0E5EC10DLL) ^ ((v93 ^ 0x947803A5DE1AF864) + 0x2DD2D2AC41095896) ^ ((v93 ^ 0x618C5A3ED8A55D05) - 0x27D974C8B849020BLL)) + 0x1D47737FF399CAC8 + (((v94 ^ 0x270DACFAA7BD6DBALL) + 0x322E2EC08E5815ELL) ^ ((v94 ^ 0x3473D8F2CC753E27) + 0x105C96E4632DD2C1) ^ ((v94 ^ 0x3BCE6DEEC7146FB3) + 0x1FE123F8684C8355));
  v96 = v95 ^ __ROR8__(v93, 61);
  v97 = __ROR8__(v95 ^ 0xFB34AF160A62D479, 8);
  v98 = (((*(v77 + (BYTE5(v76) ^ 0x89)) ^ 0x36 ^ ((BYTE5(v76) ^ 0x69) - (BYTE5(v76) ^ 0xC6) - ((2 * ((BYTE5(v76) ^ 0x69) - (BYTE5(v76) ^ 0xC6))) & 0x78) - 68)) << 16) | ((*(v77 + (BYTE4(v76) ^ 0xD8)) ^ ((HIDWORD(v76) ^ 0x38) - (HIDWORD(v76) ^ 0xFFFFFF97) - ((2 * ((HIDWORD(v76) ^ 0x38) - (HIDWORD(v76) ^ 0xFFFFFF97))) & 0x78) - 68) ^ 0xFFFFFFF7) << 24) | ((*(v80 + (BYTE6(v76) ^ 0xF3)) ^ 0x84 ^ (*(v80 + (BYTE6(v76) ^ 0xF3)) >> 1) & 0x3B) << 8) | *(v77 + (HIBYTE(v76) ^ 0xE4)) ^ ((HIBYTE(v76) ^ 4) - ((HIBYTE(v76) & 2 | (HIBYTE(v76) ^ 4) & 0xFD) ^ 0xAF)) ^ 0xBC) ^ 0x7D;
  v99 = v98 ^ ((v98 & v11) >> 1);
  v100 = (((v96 ^ 0x346AB046EE3FA524) + 0x4DA66CD79F240032) ^ ((v96 ^ 0x16EC722C78224A8) + 0x78A21BB3B69981BELL) ^ ((v96 ^ 0x6AEE8F6FAE1E9CF4) + 0x132253FEDF0539E2)) - 0x3B902C2D5CDBFC5DLL + (((v97 ^ 0x3191C0C6AE213F76) - 0x39DD79D0E6CFD48ALL) ^ ((v97 ^ 0xA561B9255541E2FELL) + 0x52D2FFCCE250F6FELL) ^ ((v97 ^ 0x762938982A528A65) - 0x7E65818E62BC6199));
  v101 = v100 ^ __ROR8__(v96 ^ 0x8633236E8EE45AEALL, 61);
  v102 = __ROR8__(v100 ^ 0x1BBFC78B80A98F81, 8);
  v103 = (((v101 ^ 0xBD6A088729B5F8ECLL) - 0x6CDB4B8514B490BELL) ^ ((v101 ^ 0x6FF81700F40ABF65) + 0x41B6ABFD36F428C9) ^ ((v101 ^ 0xF9F3DE1CB93847C2) - 0x28429D1E84392F90)) - 0x5C336EB2DC1D9994 + (((v102 ^ 0xED63DB793C06556BLL) - 0x1961C517CEF3BF8BLL) ^ ((v102 ^ 0xB85E0D4CD43FFDC0) - 0x4C5C132226CA1720) ^ ((v102 ^ 0x9C3C6E8D097BC18) + 0x23E2779DD9DA908));
  v104 = v103 ^ __ROR8__(v101 ^ 0xD1B143023D016852, 61);
  v105 = __ROR8__(v103 ^ 0x8953224DF430DA2CLL, 8);
  v106 = (((v104 ^ 0xDD1DF8800F5BA161) - 0x5EAF4F46BBE733B7) ^ ((v104 ^ 0xFE4BB2405555E373) - 0x7DF90586E1E971A5) ^ ((v104 ^ 0x320F97FC5A78B5FCLL) + 0x4E42DFC5113BD8D6)) - 0x60A4B42DF991FA43 + (((v105 ^ 0x8E78471FC76C2B09) + 0x70A6D6DCD208011FLL) ^ ((v105 ^ 0x811E778D47A1E7FALL) + 0x7FC0E64E52C5CDEELL) ^ ((v105 ^ 0x228BE793BF5B99ELL) - 0x309D045D16E6C76));
  v107 = v106 ^ 0x21A5CFA90C26B3B6 ^ __ROR8__(v104 ^ 0x83B2B7C6B4BC92D6, 61);
  v108 = ((((v106 >> 8) ^ 0xEC4937C263631E68) + 0x21F9885D40892FF9) ^ (((v106 >> 8) ^ 0x3E97F7E0752018A1) - 0xCD8B780A935D6CELL) ^ (((v106 >> 8) ^ 0xD276E602B31AD413) + 0x1FC6599D90F0E584)) + (((((v106 ^ 0x21A5CFA90C26B3B6) << 56) ^ 0x7716656F62D9541DLL) + 0x2836E7E58AE4C15FLL) ^ ((((v106 ^ 0x21A5CFA90C26B3B6) << 56) ^ 0xAF6151A57B4C3CE0) - 0xFBE2CD06C8E565CLL) ^ ((((v106 ^ 0x21A5CFA90C26B3B6) << 56) ^ 0x167734CA199568FDLL) + 0x4957B640F1A8FDBFLL)) + (((v107 ^ 0x95EF2E2871397514) + 0x5D489B4E8697E9D6) ^ ((v107 ^ 0x3D74903919ED541BLL) - 0xA2CDAA011BC3725) ^ ((v107 ^ 0xB64306C89B736105) + 0x7EE4B3AE6CDDFDC5)) - 0x34B82A0972FB555BLL;
  v109 = v108 ^ __ROR8__(v107 ^ 0x37584A990851633ELL, 61);
  v110 = __ROR8__(v108 ^ 0x32AAB0EEBF5AE07FLL, 8);
  v111 = (v75 >> v73) + 8 * ((((((v109 ^ 0x3CA877165FE224B7) - 0x12D7D4294FC9A8E1) ^ ((v109 ^ 0xC01EE2AB4760A1BLL) - 0x227E4D15A45D864DLL) ^ ((v109 ^ 0x6323E70597BD3D16) - 0x4D5C443A8796B140)) + 0x1D04A64ED7815254 + (((v110 ^ 0xFD923F0700257C71) + 0x190E2EEC44B8F30DLL) ^ ((v110 ^ 0x4DE08614970F7A39) - 0x568368002C6D0ABBLL) ^ ((v110 ^ 0xD41F9E4F4736C4A2) + 0x10838FA403AB4BE0))) ^ 0x1C3C8D2A4C54828) << (v73 ^ 0x3Du));
  LODWORD(v108) = *(v80 + ((v75 >> v73) ^ 0xEDLL));
  LODWORD(v109) = ((v111 >> 8) ^ 0x61) - ((v111 >> 8) ^ 0xCE);
  LODWORD(v108) = ((v108 ^ 0x8B ^ (v108 >> 1) & 0x3B) << 24) | ((*(v77 + (BYTE1(v111) ^ 0x81)) ^ (v109 + (~(2 * v109) | 0x87) - 67) ^ 0x85) << 16) | ((*(v77 + (BYTE2(v111) ^ 0x89)) ^ ((BYTE2(v111) ^ 0x69) - (BYTE2(v111) ^ 0xC6) - ((2 * ((BYTE2(v111) ^ 0x69) - (BYTE2(v111) ^ 0xC6))) & 0x78) - 68) ^ 0x36) << 8) | *(v78 + (BYTE3(v111) ^ 0xA3)) ^ 0x16;
  v112 = v108 ^ ((v108 & v11) >> 1);
  v113 = STACK[0x5138];
  LODWORD(v111) = *(v80 + (HIBYTE(v111) ^ 0x39));
  LODWORD(v109) = ((*(STACK[0x5138] + (BYTE4(v111) ^ 0x56)) ^ 0x9A) << 24) | ((*(v80 + (BYTE5(v111) ^ 0xE1)) ^ 0x2F ^ (*(v80 + (BYTE5(v111) ^ 0xE1)) >> 1) & 0x3B) << 16) | ((*(v80 + (BYTE6(v111) ^ 0x8BLL)) ^ (*(v80 + (BYTE6(v111) ^ 0x8BLL)) >> 1) & 0x3B ^ 0x1E) << 8) | v111 ^ 0x3B ^ (v111 >> 1) & 0x3B;
  v114 = v11;
  v115 = v109 ^ ((v109 & v9) >> 1);
  LODWORD(v108) = v8 & 0xFFFFFFF3 ^ 0xDD7ABCCE;
  LODWORD(STACK[0x5330]) = v108;
  v116 = STACK[0xD710];
  STACK[0x52D0] = STACK[0xD710];
  LODWORD(v108) = (*(v113 + (*(v116 + v108) ^ 0xACLL)) ^ 0x97) << 24;
  LODWORD(v109) = v8 & 0xFFFFFFF1 ^ 0xDD7ABCCE;
  LODWORD(STACK[0x52E0]) = v109;
  LODWORD(v96) = *(v78 + (*(v116 + v109) ^ 0xEFLL));
  v117 = v8 & 0xFFFFFFFA ^ 0xDD7ABCCF;
  LODWORD(STACK[0x5328]) = v117;
  LODWORD(v108) = v108 | ((v96 ^ 0x29) << 8);
  LOBYTE(v96) = *(v80 + (*(v116 + v117) ^ 0x92)) ^ (*(v80 + (*(v116 + v117) ^ 0x92)) >> 1) & 0x3B;
  v118 = v8 & 0xFFFFFFF9 ^ 0xDD7ABCCE;
  LODWORD(STACK[0x52E8]) = v118;
  v119 = *(v116 + v118);
  LODWORD(v119) = *(v77 + (v119 ^ 0xB5)) ^ ((v119 ^ 0x55) - (v119 ^ 0xFA) - ((2 * ((v119 ^ 0x55) - (v119 ^ 0xFA))) & 0x78) - 68);
  v120 = v8 & 0xFFFFFFF5 ^ 0xDD7ABCCA;
  LODWORD(STACK[0x5320]) = v120;
  v121 = *(v116 + v120);
  LODWORD(v119) = ((v96 ^ 0xF7) << 16) | ((v119 ^ 0x20) << 8);
  LODWORD(v96) = (*(v77 + (v121 ^ 0xAD)) ^ 0x2E ^ ((v121 ^ 0x4D) - (v121 ^ 0xE2) - ((2 * ((v121 ^ 0x4D) - (v121 ^ 0xE2))) & 0x78) - 68)) << 8;
  v122 = v8 & 0xFFFFFFF6 ^ 0xDD7ABCCB;
  LODWORD(STACK[0x5310]) = v122;
  LODWORD(v96) = v96 | ((*(v78 + (*(v116 + v122) ^ 0x4ELL)) ^ 0xDC) << 16);
  v123 = v8 & 0xFFFFFFF4 ^ 0xDD7ABCCB;
  LODWORD(STACK[0x52D8]) = v123;
  v124 = *(v116 + v123);
  LODWORD(v96) = *(v77 + (v124 ^ 0x3D)) ^ 0x8E ^ ((v124 ^ 0xDD) - (v124 ^ 0x72) - ((2 * ((v124 ^ 0xDD) - (v124 ^ 0x72))) & 0x78) - 68) | v96;
  LODWORD(v124) = v8 & 0xFFFFFFF7 ^ 0xDD7ABCCA;
  LODWORD(STACK[0x52B8]) = v124;
  LODWORD(v96) = v96 | ((*(v78 + (*(v116 + v124) ^ 3)) ^ 4) << 24);
  LODWORD(v124) = v8 & 0xFFFFFFFE ^ 0xDD7ABCCB;
  LODWORD(STACK[0x5308]) = v124;
  LODWORD(v124) = *(v80 + (*(v116 + v124) ^ 0xAFLL));
  LODWORD(v121) = v8 & 0xFFFFFFFC ^ 0xDD7ABCCB;
  LODWORD(STACK[0x5318]) = v121;
  LODWORD(v121) = (*(v78 + (*(v116 + v121) ^ 0x8BLL)) ^ 0xAA) & 0xFF00FFFF | (((v124 ^ (v124 >> 1) & 0x3B) ^ 6) << 16);
  LODWORD(v124) = v8 & 0xFFFFFFFD ^ 0xDD7ABCCA;
  LODWORD(STACK[0x52F8]) = v124;
  LODWORD(v121) = v121 | ((*(v78 + (*(v116 + v124) ^ 1)) ^ 0x12) << 8);
  LODWORD(v124) = v8 & 0xFFFFFFF8 ^ 0xDD7ABCCF;
  LODWORD(STACK[0x52C8]) = v124;
  LODWORD(v119) = *(v113 + (*(v116 + v124) ^ 0x2BLL)) ^ 0xF | v119;
  LODWORD(v111) = v8 & 0xFFFFFFFB ^ 0xDD7ABCCE;
  LODWORD(STACK[0x52C0]) = v111;
  LODWORD(v111) = *(v80 + (*(v116 + v111) ^ 0x3ALL));
  LODWORD(v111) = v119 | ((v111 ^ 0xCA ^ (v111 >> 1) & 0x3B) << 24);
  v125 = *(v116 + STACK[0x53D8]);
  LODWORD(v125) = v121 | ((*(v77 + (v125 ^ 0x52)) ^ 0xD3 ^ ((v125 ^ 0xFFFFFFB2) - (v125 ^ 0x1D) + (~(2 * ((v125 ^ 0xB2) - (v125 ^ 0x1D))) | 0xFFFFFF87) - 67)) << 24);
  LODWORD(STACK[0x5300]) = v8;
  LODWORD(v121) = v8 & 0xFFFFFFF2 ^ 0xDD7ABCCF;
  LODWORD(STACK[0x52F0]) = v121;
  LODWORD(v121) = *(v80 + (*(v116 + v121) ^ 0x22));
  LODWORD(v111) = v111 ^ 0xFF ^ (((v111 ^ 0xFF) & v114) >> 1);
  LODWORD(v109) = v8 & 0xFFFFFFF0 ^ 0xDD7ABCCF;
  LODWORD(STACK[0x52B0]) = v109;
  LODWORD(v108) = v108 & 0xFF00FFFF | ((v121 ^ 0x8A ^ (((v121 >> 1) & 0x3B ^ 0x3A) - ((2 * ((v121 >> 1) & 0x3B ^ 0x3A)) & 0x60) + 116)) << 16) | *(v78 + (*(v116 + v109) ^ 0x91)) ^ 0xB2;
  v126 = STACK[0x57B0];
  v127 = STACK[0x5390];
  v128 = STACK[0x5760];
  v129 = STACK[0x5398];
  LODWORD(v113) = STACK[0x57C0];
  LODWORD(v96) = (((v96 & v9) >> 1) ^ -((v96 & v9) >> 1) ^ (v96 - (((v96 & v9) >> 1) ^ v96))) + v96;
  LODWORD(v116) = STACK[0x57B0];
  v130 = LODWORD(STACK[0x5340]) ^ LODWORD(STACK[0x5128]) ^ (((v125 ^ ((v125 & v9) >> 1)) & v127) << v12) ^ (((v125 ^ ((v125 & v9) >> 1)) & STACK[0x57B0]) >> LODWORD(STACK[0x57C0])) ^ (((v85 & v127) << LODWORD(STACK[0x5760])) | ((v85 & STACK[0x57B0]) >> v13));
  LODWORD(STACK[0x5340]) = v130;
  LODWORD(v125) = LODWORD(STACK[0x5348]) ^ LODWORD(STACK[0x5118]) ^ ((v96 & v127) << v128) ^ ((v96 & v129) >> v113) ^ (((v112 & v126) >> v13) + ((v112 & v127) << v12));
  LODWORD(STACK[0x5348]) = v125;
  LODWORD(v109) = LODWORD(STACK[0x5110]) ^ LODWORD(STACK[0x5350]) ^ ((((v108 ^ ((v108 & v114) >> 1)) & v10) << v12) | (((v108 ^ ((v108 & v114) >> 1)) & v116) >> v13)) ^ (((v115 & v129) >> v113) + ((v115 & v10) << v128));
  LODWORD(v108) = LODWORD(STACK[0x5790]) + LODWORD(STACK[0x53D0]) + v109;
  LODWORD(v124) = v109;
  LODWORD(STACK[0x5350]) = v109;
  LODWORD(v109) = 56185787 * (((-2121201081 * v108) ^ ((-2121201081 * v108) >> 16)) + (((-2121201081 * v108) ^ ((-2121201081 * v108) >> 16)) >> 8) + v125);
  LODWORD(v109) = (v109 ^ WORD1(v109)) - v130 - ((v109 ^ WORD1(v109)) >> 8);
  v131 = (v108 ^ LODWORD(STACK[0x55F0])) - v108 + 2 * (v108 & LODWORD(STACK[0x55F0]));
  LODWORD(v108) = ((v99 & v10) << v12) + ((v99 & v129) >> v113);
  LODWORD(v111) = ((v111 & v129) >> v13) ^ ((v111 & v10) << v128);
  v132 = LODWORD(STACK[0x5358]) ^ LODWORD(STACK[0x5120]) ^ ((v111 ^ -v111 ^ (v108 - (v108 ^ v111))) + v108);
  LODWORD(STACK[0x5358]) = v132;
  v133 = STACK[0x5630];
  v134 = STACK[0x5400];
  v135 = ((v133 + v134 + v124 - LODWORD(STACK[0x5510])) ^ (v133 + v134 + v124) ^ LODWORD(STACK[0x5510]) ^ -((v133 + v134 + v124) ^ LODWORD(STACK[0x5510]))) + v133 + v134 + v124;
  LODWORD(v108) = 992562237 * (((-939225439 * v109) ^ ((-939225439 * v109) >> 16) ^ (((-939225439 * v109) ^ ((-939225439 * v109) >> 16)) >> 8)) + v132);
  LODWORD(v108) = v108 ^ WORD1(v108);
  v136 = STACK[0xD708];
  STACK[0x52A8] = v108 + STACK[0xD708] - (v108 >> 8);
  LODWORD(v108) = v108 - (v108 >> 8) + v136;
  *(v14 - 152) = v136;
  LODWORD(STACK[0x5780]) = v108;
  v137 = (v108 & 1) == 0;
  v138 = STACK[0x5750];
  v139 = STACK[0x53B0];
  if (v137)
  {
    v140 = STACK[0x5750];
  }

  else
  {
    v140 = STACK[0x53B0];
  }

  LODWORD(STACK[0x5228]) = v140;
  v141 = STACK[0x5410];
  if (v137)
  {
    v138 = STACK[0x5410];
  }

  LODWORD(STACK[0x5278]) = v138;
  v142 = STACK[0x5370];
  if (v137)
  {
    v143 = STACK[0x5370];
  }

  else
  {
    v143 = v141;
  }

  if (v137)
  {
    v142 = v139;
  }

  LODWORD(STACK[0x5410]) = v142;
  v144 = STACK[0x5740];
  v145 = STACK[0x5730];
  if (v137)
  {
    v146 = STACK[0x5740];
  }

  else
  {
    v146 = STACK[0x5730];
  }

  LODWORD(STACK[0x5250]) = v146;
  v147 = STACK[0x53A8];
  if (!v137)
  {
    v145 = STACK[0x53A8];
  }

  LODWORD(STACK[0x5730]) = v145;
  if (v137)
  {
    v148 = v147;
  }

  else
  {
    v148 = STACK[0x5720];
  }

  if (v137)
  {
    v144 = STACK[0x5720];
  }

  LODWORD(STACK[0x5210]) = v144;
  v149 = STACK[0x56F0];
  v150 = STACK[0x56E0];
  if (v137)
  {
    v151 = STACK[0x56F0];
  }

  else
  {
    v151 = STACK[0x56E0];
  }

  LODWORD(STACK[0x5248]) = v151;
  v152 = STACK[0x5700];
  if (v137)
  {
    v149 = STACK[0x5700];
  }

  LODWORD(STACK[0x55F0]) = v149;
  v153 = STACK[0x5710];
  if (v137)
  {
    v154 = STACK[0x5710];
  }

  else
  {
    v154 = v152;
  }

  if (v137)
  {
    v153 = v150;
  }

  LODWORD(STACK[0x5700]) = v153;
  v155 = STACK[0x56C0];
  v156 = STACK[0x53A0];
  if (v137)
  {
    v157 = STACK[0x56C0];
  }

  else
  {
    v157 = STACK[0x53A0];
  }

  LODWORD(STACK[0x5240]) = v157;
  v158 = STACK[0x5680];
  if (!v137)
  {
    v156 = STACK[0x5680];
  }

  LODWORD(STACK[0x5298]) = v156;
  v159 = STACK[0x56D0];
  if (v137)
  {
    v160 = v158;
  }

  else
  {
    v160 = STACK[0x56D0];
  }

  if (!v137)
  {
    v159 = v155;
  }

  LODWORD(STACK[0x5218]) = v159;
  v161 = STACK[0x5670];
  v162 = STACK[0x5660];
  if (v137)
  {
    v163 = STACK[0x5670];
  }

  else
  {
    v163 = STACK[0x5660];
  }

  LODWORD(STACK[0x5220]) = v163;
  v164 = STACK[0x5640];
  if (v137)
  {
    v161 = STACK[0x5640];
  }

  LODWORD(STACK[0x5290]) = v161;
  v165 = STACK[0x5650];
  if (v137)
  {
    v166 = STACK[0x5650];
  }

  else
  {
    v166 = v164;
  }

  if (v137)
  {
    v165 = v162;
  }

  LODWORD(STACK[0x5660]) = v165;
  if (v137)
  {
    v167 = v133;
  }

  else
  {
    v167 = v131;
  }

  LODWORD(STACK[0x5510]) = v167;
  v168 = STACK[0x5610];
  if (v137)
  {
    v169 = STACK[0x5610];
  }

  else
  {
    v169 = v133;
  }

  v170 = STACK[0x5620];
  if (v137)
  {
    v168 = STACK[0x5620];
  }

  LODWORD(STACK[0x5630]) = v168;
  if (v137)
  {
    v171 = v131;
  }

  else
  {
    v171 = v170;
  }

  v172 = STACK[0x5600];
  v173 = STACK[0x5590];
  if (v137)
  {
    v174 = STACK[0x5590];
  }

  else
  {
    v174 = STACK[0x5600];
  }

  LODWORD(STACK[0x53A0]) = v174;
  v175 = STACK[0x5388];
  if (v137)
  {
    v176 = v172;
  }

  else
  {
    v176 = STACK[0x5388];
  }

  v177 = STACK[0x55E0];
  if (!v137)
  {
    v175 = STACK[0x55E0];
  }

  LODWORD(STACK[0x5270]) = v175;
  if (v137)
  {
    v178 = v177;
  }

  else
  {
    v178 = v173;
  }

  v179 = STACK[0x55A0];
  v180 = STACK[0x5580];
  if (v137)
  {
    v181 = STACK[0x55A0];
  }

  else
  {
    v181 = STACK[0x5580];
  }

  LODWORD(STACK[0x5388]) = v181;
  if (v137)
  {
    v182 = v180;
  }

  else
  {
    v182 = STACK[0x55C0];
  }

  v183 = STACK[0x55B0];
  if (v137)
  {
    v184 = STACK[0x55C0];
  }

  else
  {
    v184 = STACK[0x55B0];
  }

  LODWORD(STACK[0x5268]) = v184;
  if (v137)
  {
    v185 = v183;
  }

  else
  {
    v185 = v179;
  }

  v186 = STACK[0x5570];
  if (v137)
  {
    v187 = STACK[0x5570];
  }

  else
  {
    v187 = v135;
  }

  LODWORD(STACK[0x5238]) = v187;
  v188 = STACK[0x5540];
  if (!v137)
  {
    v135 = STACK[0x5540];
  }

  LODWORD(STACK[0x5288]) = v135;
  if (v137)
  {
    v189 = v188;
  }

  else
  {
    v189 = STACK[0x5380];
  }

  if (v137)
  {
    v190 = STACK[0x5380];
  }

  else
  {
    v190 = v186;
  }

  v191 = STACK[0x5560];
  v192 = STACK[0x5550];
  if (v137)
  {
    v193 = STACK[0x5560];
  }

  else
  {
    v193 = STACK[0x5550];
  }

  LODWORD(STACK[0x5380]) = v193;
  if (v137)
  {
    v194 = v192;
  }

  else
  {
    v194 = STACK[0x5530];
  }

  v195 = STACK[0x5520];
  if (v137)
  {
    v196 = STACK[0x5530];
  }

  else
  {
    v196 = STACK[0x5520];
  }

  LODWORD(STACK[0x5260]) = v196;
  if (v137)
  {
    v197 = v195;
  }

  else
  {
    v197 = v191;
  }

  v198 = STACK[0x54D0];
  v199 = STACK[0x54B0];
  if (v137)
  {
    v200 = STACK[0x54D0];
  }

  else
  {
    v200 = STACK[0x54B0];
  }

  LODWORD(STACK[0x5370]) = v200;
  v201 = STACK[0x5378];
  if (v137)
  {
    v202 = v199;
  }

  else
  {
    v202 = STACK[0x5378];
  }

  v203 = STACK[0x54F0];
  if (!v137)
  {
    v201 = STACK[0x54F0];
  }

  LODWORD(STACK[0x5258]) = v201;
  if (!v137)
  {
    v203 = v198;
  }

  v204 = STACK[0x5500];
  v205 = STACK[0x54E0];
  if (v137)
  {
    v206 = STACK[0x5500];
  }

  else
  {
    v206 = STACK[0x54E0];
  }

  LODWORD(STACK[0x53B0]) = v206;
  v207 = STACK[0x54C0];
  if (v137)
  {
    v208 = v205;
  }

  else
  {
    v208 = STACK[0x54C0];
  }

  LODWORD(STACK[0x54E0]) = v208;
  v209 = STACK[0x54A0];
  if (v137)
  {
    v210 = v207;
  }

  else
  {
    v210 = STACK[0x54A0];
  }

  LODWORD(STACK[0x53A8]) = v210;
  if (!v137)
  {
    v209 = v204;
  }

  v211 = STACK[0x5450];
  if (v137)
  {
    v212 = STACK[0x5470];
  }

  else
  {
    v212 = STACK[0x5450];
  }

  v213 = STACK[0x5490];
  if (v137)
  {
    v214 = STACK[0x5490];
  }

  else
  {
    v214 = STACK[0x5470];
  }

  LODWORD(STACK[0x5500]) = v214;
  v215 = STACK[0x55D0];
  if (v137)
  {
    v216 = STACK[0x55D0];
  }

  else
  {
    v216 = v213;
  }

  if (v137)
  {
    v215 = v211;
  }

  v217 = STACK[0x5460];
  v218 = STACK[0x5440];
  if (v137)
  {
    v219 = STACK[0x5460];
  }

  else
  {
    v219 = STACK[0x5440];
  }

  LODWORD(STACK[0x5230]) = v219;
  v220 = STACK[0x5480];
  if (v137)
  {
    v221 = STACK[0x5480];
  }

  else
  {
    v221 = v217;
  }

  LODWORD(STACK[0x5280]) = v221;
  v222 = STACK[0x5430];
  if (v137)
  {
    v223 = STACK[0x5430];
  }

  else
  {
    v223 = v220;
  }

  if (v137)
  {
    v222 = v218;
  }

  LODWORD(STACK[0x5440]) = v222;
  v224 = STACK[0x5408];
  v225 = STACK[0x53E8];
  if (v137)
  {
    v226 = STACK[0x53E8];
  }

  else
  {
    v226 = STACK[0x5408];
  }

  LODWORD(STACK[0x5378]) = v226;
  if (v137)
  {
    v225 = v134;
  }

  LODWORD(STACK[0x5208]) = v225;
  v227 = STACK[0x5420];
  if (v137)
  {
    v228 = v224;
  }

  else
  {
    v228 = STACK[0x5420];
  }

  if (!v137)
  {
    v227 = v134;
  }

  LODWORD(STACK[0x53E8]) = v227;
  v229 = STACK[0x53F0];
  v230 = STACK[0x53E0];
  if (v137)
  {
    v231 = STACK[0x53E0];
  }

  else
  {
    v231 = STACK[0x53F0];
  }

  LODWORD(STACK[0x52A0]) = v231;
  v232 = STACK[0x5790];
  if (v137)
  {
    v230 = STACK[0x5790];
  }

  LODWORD(STACK[0x5200]) = v230;
  v233 = STACK[0x53F8];
  if (v137)
  {
    v234 = STACK[0x53F8];
  }

  else
  {
    v234 = v232;
  }

  LODWORD(STACK[0x53E0]) = v234;
  if (!v137)
  {
    v229 = v233;
  }

  v235 = (STACK[0x5780] & 2) == 0;
  v236 = STACK[0x5228];
  if ((STACK[0x5780] & 2) != 0)
  {
    v237 = v143;
  }

  else
  {
    v237 = STACK[0x5228];
  }

  LODWORD(STACK[0x5750]) = v237;
  if (!v235)
  {
    v143 = v236;
  }

  v238 = STACK[0x5278];
  if (v235)
  {
    v239 = STACK[0x5410];
  }

  else
  {
    v239 = STACK[0x5278];
  }

  if (!v235)
  {
    v238 = STACK[0x5410];
  }

  LODWORD(STACK[0x5410]) = v238;
  v240 = STACK[0x5250];
  if (v235)
  {
    v241 = STACK[0x5250];
  }

  else
  {
    v241 = v148;
  }

  LODWORD(STACK[0x5740]) = v241;
  if (!v235)
  {
    v148 = v240;
  }

  v242 = STACK[0x5730];
  v243 = STACK[0x5210];
  if (v235)
  {
    v244 = STACK[0x5210];
  }

  else
  {
    v244 = STACK[0x5730];
  }

  LODWORD(STACK[0x5720]) = v244;
  v245 = *(v14 - 152);
  if (v235)
  {
    v246 = v242;
  }

  else
  {
    v246 = v243;
  }

  LODWORD(STACK[0x5730]) = v246;
  v247 = STACK[0x5248];
  if (v235)
  {
    v248 = STACK[0x5248];
  }

  else
  {
    v248 = v154;
  }

  LODWORD(STACK[0x56F0]) = v248;
  if (v235)
  {
    v249 = v154;
  }

  else
  {
    v249 = v247;
  }

  LODWORD(STACK[0x5710]) = v249;
  v250 = STACK[0x55F0];
  v251 = STACK[0x5700];
  if (v235)
  {
    v252 = STACK[0x5700];
  }

  else
  {
    v252 = STACK[0x55F0];
  }

  LODWORD(STACK[0x56E0]) = v252;
  if (v235)
  {
    v253 = v250;
  }

  else
  {
    v253 = v251;
  }

  LODWORD(STACK[0x5700]) = v253;
  v254 = STACK[0x5240];
  if (v235)
  {
    v255 = STACK[0x5240];
  }

  else
  {
    v255 = v160;
  }

  LODWORD(STACK[0x56C0]) = v255;
  if (v235)
  {
    v256 = v160;
  }

  else
  {
    v256 = v254;
  }

  LODWORD(STACK[0x5680]) = v256;
  v257 = STACK[0x5298];
  v258 = STACK[0x5218];
  if (v235)
  {
    v259 = STACK[0x5218];
  }

  else
  {
    v259 = STACK[0x5298];
  }

  LODWORD(STACK[0x56D0]) = v259;
  if (v235)
  {
    v260 = v257;
  }

  else
  {
    v260 = v258;
  }

  v261 = STACK[0x5220];
  if (v235)
  {
    v262 = v166;
  }

  else
  {
    v262 = STACK[0x5220];
  }

  LODWORD(STACK[0x5650]) = v262;
  if (v235)
  {
    v263 = v261;
  }

  else
  {
    v263 = v166;
  }

  LODWORD(STACK[0x5670]) = v263;
  v264 = STACK[0x5290];
  v265 = STACK[0x5660];
  if (v235)
  {
    v266 = STACK[0x5290];
  }

  else
  {
    v266 = STACK[0x5660];
  }

  LODWORD(STACK[0x5640]) = v266;
  if (v235)
  {
    v267 = v265;
  }

  else
  {
    v267 = v264;
  }

  LODWORD(STACK[0x5660]) = v267;
  if (v235)
  {
    v268 = v171;
  }

  else
  {
    v268 = v169;
  }

  LODWORD(STACK[0x55F0]) = v268;
  if (v235)
  {
    v269 = v169;
  }

  else
  {
    v269 = v171;
  }

  LODWORD(STACK[0x5610]) = v269;
  v270 = STACK[0x5510];
  v271 = STACK[0x5630];
  if (v235)
  {
    v272 = STACK[0x5630];
  }

  else
  {
    v272 = STACK[0x5510];
  }

  LODWORD(STACK[0x5620]) = v272;
  if (v235)
  {
    v273 = v270;
  }

  else
  {
    v273 = v271;
  }

  LODWORD(STACK[0x5630]) = v273;
  if (v235)
  {
    v274 = v178;
  }

  else
  {
    v274 = v176;
  }

  LODWORD(STACK[0x55E0]) = v274;
  if (v235)
  {
    v275 = v176;
  }

  else
  {
    v275 = v178;
  }

  LODWORD(STACK[0x5600]) = v275;
  v276 = STACK[0x53A0];
  if (v235)
  {
    v277 = STACK[0x5270];
  }

  else
  {
    v277 = STACK[0x53A0];
  }

  if (!v235)
  {
    v276 = STACK[0x5270];
  }

  LODWORD(STACK[0x5590]) = v276;
  if (v235)
  {
    v278 = v182;
  }

  else
  {
    v278 = v185;
  }

  LODWORD(STACK[0x5580]) = v278;
  if (v235)
  {
    v279 = v185;
  }

  else
  {
    v279 = v182;
  }

  LODWORD(STACK[0x55B0]) = v279;
  v280 = STACK[0x5388];
  v281 = STACK[0x5268];
  if (v235)
  {
    v282 = STACK[0x5268];
  }

  else
  {
    v282 = STACK[0x5388];
  }

  LODWORD(STACK[0x55C0]) = v282;
  if (v235)
  {
    v283 = v280;
  }

  else
  {
    v283 = v281;
  }

  LODWORD(STACK[0x55A0]) = v283;
  v284 = STACK[0x5238];
  if (v235)
  {
    v285 = STACK[0x5238];
  }

  else
  {
    v285 = v189;
  }

  LODWORD(STACK[0x5570]) = v285;
  if (v235)
  {
    v286 = v189;
  }

  else
  {
    v286 = v284;
  }

  LODWORD(STACK[0x5540]) = v286;
  v287 = STACK[0x5288];
  if (v235)
  {
    v288 = STACK[0x5288];
  }

  else
  {
    v288 = v190;
  }

  LODWORD(STACK[0x5510]) = v288;
  if (v235)
  {
    v289 = v194;
  }

  else
  {
    v190 = v287;
    v289 = v197;
  }

  LODWORD(STACK[0x5550]) = v289;
  if (v235)
  {
    v290 = v197;
  }

  else
  {
    v290 = v194;
  }

  LODWORD(STACK[0x5520]) = v290;
  v291 = STACK[0x5380];
  v292 = STACK[0x5260];
  if (v235)
  {
    v293 = STACK[0x5260];
  }

  else
  {
    v293 = STACK[0x5380];
  }

  LODWORD(STACK[0x5530]) = v293;
  if (v235)
  {
    v294 = v291;
  }

  else
  {
    v294 = v292;
  }

  LODWORD(STACK[0x5560]) = v294;
  if (v235)
  {
    v295 = v202;
  }

  else
  {
    v295 = v203;
  }

  LODWORD(STACK[0x54B0]) = v295;
  if (v235)
  {
    v296 = v203;
  }

  else
  {
    v296 = v202;
  }

  LODWORD(STACK[0x54F0]) = v296;
  v297 = STACK[0x5370];
  if (v235)
  {
    v298 = STACK[0x5258];
  }

  else
  {
    v298 = STACK[0x5370];
  }

  if (!v235)
  {
    v297 = STACK[0x5258];
  }

  LODWORD(STACK[0x54D0]) = v297;
  v299 = STACK[0x54E0];
  if (v235)
  {
    v300 = v209;
  }

  else
  {
    v300 = STACK[0x54E0];
  }

  LODWORD(STACK[0x54A0]) = v300;
  if (v235)
  {
    v301 = v299;
  }

  else
  {
    v301 = v209;
  }

  LODWORD(STACK[0x54E0]) = v301;
  if (v235)
  {
    v302 = v216;
  }

  else
  {
    v302 = v212;
  }

  LODWORD(STACK[0x55D0]) = v302;
  if (v235)
  {
    v303 = v212;
  }

  else
  {
    v303 = v216;
  }

  LODWORD(STACK[0x5470]) = v303;
  v304 = STACK[0x5500];
  if (v235)
  {
    v305 = v215;
  }

  else
  {
    v305 = STACK[0x5500];
  }

  LODWORD(STACK[0x5450]) = v305;
  if (v235)
  {
    v306 = v304;
  }

  else
  {
    v306 = v215;
  }

  LODWORD(STACK[0x5490]) = v306;
  v307 = STACK[0x53B0];
  v308 = STACK[0x53A8];
  if (v235)
  {
    v309 = STACK[0x53A8];
  }

  else
  {
    v309 = STACK[0x53B0];
  }

  LODWORD(STACK[0x54C0]) = v309;
  if (v235)
  {
    v310 = v307;
  }

  else
  {
    v310 = v308;
  }

  LODWORD(STACK[0x5500]) = v310;
  v311 = STACK[0x5230];
  if (v235)
  {
    v312 = v223;
  }

  else
  {
    v312 = STACK[0x5230];
  }

  LODWORD(STACK[0x5430]) = v312;
  if (v235)
  {
    v313 = v311;
  }

  else
  {
    v313 = v223;
  }

  LODWORD(STACK[0x5460]) = v313;
  v314 = STACK[0x5280];
  v315 = STACK[0x5440];
  if (v235)
  {
    v316 = STACK[0x5280];
  }

  else
  {
    v316 = STACK[0x5440];
  }

  LODWORD(STACK[0x5480]) = v316;
  if (v235)
  {
    v317 = v315;
  }

  else
  {
    v317 = v314;
  }

  LODWORD(STACK[0x5440]) = v317;
  v318 = STACK[0x5208];
  if (v235)
  {
    v319 = STACK[0x5208];
  }

  else
  {
    v319 = v228;
  }

  LODWORD(STACK[0x5400]) = v319;
  if (v235)
  {
    v320 = v228;
  }

  else
  {
    v320 = v318;
  }

  LODWORD(STACK[0x5408]) = v320;
  v321 = STACK[0x5378];
  v322 = STACK[0x53E8];
  if (v235)
  {
    v323 = STACK[0x53E8];
  }

  else
  {
    v323 = STACK[0x5378];
  }

  LODWORD(STACK[0x5420]) = v323;
  if (v235)
  {
    v324 = v321;
  }

  else
  {
    v324 = v322;
  }

  LODWORD(STACK[0x53E8]) = v324;
  v325 = STACK[0x5200];
  if (v235)
  {
    v326 = STACK[0x5200];
  }

  else
  {
    v326 = v229;
  }

  LODWORD(STACK[0x5790]) = v326;
  if (v235)
  {
    v327 = v229;
  }

  else
  {
    v327 = v325;
  }

  LODWORD(STACK[0x53F0]) = v327;
  v328 = STACK[0x52A0];
  v329 = STACK[0x53E0];
  if (v235)
  {
    v330 = STACK[0x53E0];
  }

  else
  {
    v330 = STACK[0x52A0];
  }

  LODWORD(STACK[0x53F8]) = v330;
  if (v235)
  {
    v331 = v328;
  }

  else
  {
    v331 = v329;
  }

  LODWORD(STACK[0x53E0]) = v331;
  v332 = STACK[0x52A8];
  v333 = STACK[0x52A8] + STACK[0x53C8];
  v334 = STACK[0x5340];
  if (v333)
  {
    v335 = STACK[0x5340];
  }

  else
  {
    v335 = STACK[0x5350];
  }

  v336 = STACK[0x5358];
  if (v333)
  {
    v334 = STACK[0x5358];
  }

  v337 = STACK[0x5348];
  if (v333)
  {
    v336 = STACK[0x5348];
    v337 = STACK[0x5350];
  }

  if ((v333 & 2) != 0)
  {
    v338 = v334;
  }

  else
  {
    v338 = v337;
  }

  if ((v333 & 2) != 0)
  {
    v334 = v337;
    v339 = v336;
  }

  else
  {
    v339 = v335;
  }

  if ((v333 & 2) != 0)
  {
    v340 = v335;
  }

  else
  {
    v340 = v336;
  }

  v341 = STACK[0x5158];
  v342 = LODWORD(STACK[0x51A0]) ^ LODWORD(STACK[0x5158]);
  v343 = v342 ^ LODWORD(STACK[0x4F50]) ^ LODWORD(STACK[0x5750]) ^ v338;
  v344 = v342 ^ LODWORD(STACK[0x4F78]);
  v345 = v344 ^ LODWORD(STACK[0x4F48]);
  LODWORD(STACK[0x53B0]) = v239;
  v346 = v345 ^ v239 ^ v339;
  STACK[0xD708] = v245 + 4 * BYTE1(v343);
  v347 = *(v245 + 4 * BYTE1(v343));
  v348 = v344 ^ LODWORD(STACK[0x4F40]);
  LODWORD(STACK[0x5370]) = v143;
  v349 = v348 ^ v143 ^ v334;
  STACK[0xD708] = v245 + 4 * BYTE1(v346);
  v350 = *(v245 + 4 * BYTE1(v346));
  STACK[0xD708] = v245 + 4 * BYTE1(v349);
  v351 = *(v245 + 4 * BYTE1(v349));
  STACK[0xD708] = v245 + 4 * HIBYTE(v349);
  v352 = *(v245 + 4 * HIBYTE(v349));
  STACK[0xD708] = v245 + 4 * BYTE2(v343);
  v353 = *(v245 + 4 * BYTE2(v343));
  v354 = STACK[0x51B0];
  v355 = LODWORD(STACK[0x51B0]) ^ v341 ^ LODWORD(STACK[0x4F38]) ^ LODWORD(STACK[0x5410]) ^ v340;
  STACK[0xD708] = v245 + 4 * v355;
  v356 = *(v245 + 4 * v355);
  STACK[0xD708] = v245 + 4 * v346;
  v357 = *(v245 + 4 * v346);
  v358 = LODWORD(STACK[0x5098]) ^ __ROR4__(v347, 8) ^ __ROR4__(v352, 24);
  STACK[0xD708] = v245 + 4 * HIBYTE(v355);
  v359 = *(v245 + 4 * HIBYTE(v355));
  v360 = v358 ^ __ROR4__(v357, 16);
  STACK[0xD708] = v245 + 4 * BYTE2(v346);
  v361 = *(v245 + 4 * BYTE2(v346));
  v346 >>= 24;
  STACK[0xD708] = v245 + 4 * v346;
  v362 = *(v245 + 4 * v346);
  v363 = LODWORD(STACK[0x5090]) ^ __ROR4__(v351, 8) ^ __ROR4__(v356, 16);
  STACK[0xD708] = v245 + 4 * BYTE2(v355);
  v364 = *(v245 + 4 * BYTE2(v355));
  STACK[0xD708] = v245 + 4 * v343;
  v365 = *(v245 + 4 * v343);
  STACK[0xD708] = v245 + 4 * v349;
  v366 = *(v245 + 4 * v349);
  v367 = BYTE2(v349);
  STACK[0xD708] = v245 + 4 * v367;
  v368 = *(v245 + 4 * v367);
  STACK[0xD708] = v245 + 4 * BYTE1(v355);
  v343 >>= 24;
  v369 = *(v245 + 4 * BYTE1(v355));
  STACK[0xD708] = v245 + 4 * v343;
  v370 = v363 ^ v361 ^ __ROR4__(*(v245 + 4 * v343), 24);
  v371 = LODWORD(STACK[0x5088]) ^ __ROR4__(v350, 8) ^ v353 ^ __ROR4__(v359, 24);
  v372 = __PAIR64__(v365, __ROR4__(v366, 16));
  v373 = v332 + LODWORD(STACK[0x5360]);
  v374 = v360 ^ v364 ^ LODWORD(STACK[0x5740]);
  LODWORD(STACK[0x53A8]) = v148;
  v375 = v370 ^ v373 ^ v333 ^ v148;
  STACK[0xD708] = v245 + 4 * BYTE2(v374);
  v376 = *(v245 + 4 * BYTE2(v374));
  STACK[0xD708] = v245;
  v377 = *(v245 + 4 * BYTE1(v375));
  v378 = v371 ^ v372 ^ LODWORD(STACK[0x5730]);
  STACK[0xD708] = v245 + 4 * BYTE2(v378);
  LODWORD(v372) = v365;
  v379 = *(v245 + 4 * BYTE2(v378));
  STACK[0xD708] = v245 + 4 * v374;
  v380 = *(v245 + 4 * v374);
  STACK[0xD708] = v245 + 4 * v378;
  v381 = (v372 >> 16) ^ __ROR4__(v362, 24) ^ v368 ^ __ROR4__(v369, 8);
  v382 = LODWORD(STACK[0x51C0]) ^ LODWORD(STACK[0x51A8]);
  v383 = v382 ^ LODWORD(STACK[0x5070]) ^ __ROR4__(*(v245 + 4 * v378), 16);
  STACK[0xD708] = v245 + 4 * HIBYTE(v378);
  v384 = *(v245 + 4 * HIBYTE(v378));
  STACK[0xD708] = v245 + 4 * BYTE2(v375);
  v385 = *(v245 + 4 * BYTE2(v375));
  v386 = LODWORD(STACK[0x5780]) + LODWORD(STACK[0x5770]);
  LODWORD(STACK[0x5770]) = v386;
  v387 = LODWORD(STACK[0x5080]) ^ LODWORD(STACK[0x5720]) ^ (v386 + v381 - v333);
  STACK[0xD708] = v245 + 4 * v375;
  v388 = *(v245 + 4 * v375);
  STACK[0xD708] = v245 + 4 * v387;
  v389 = *(v245 + 4 * v387);
  STACK[0xD708] = v245 + 4 * BYTE2(v387);
  v375 >>= 24;
  v390 = *(v245 + 4 * BYTE2(v387));
  STACK[0xD708] = v245 + 4 * v375;
  v391 = v383 ^ LODWORD(STACK[0x56F0]) ^ v390 ^ __ROR4__(*(v245 + 4 * v375), 24);
  STACK[0xD708] = v245 + 4 * BYTE1(v374);
  v392 = v391 ^ __ROR4__(*(v245 + 4 * BYTE1(v374)), 8);
  v393 = v382 ^ LODWORD(STACK[0x5068]) ^ __ROR4__(v380, 16) ^ __ROR4__(v384, 24);
  v394 = v382 ^ LODWORD(STACK[0x5078]) ^ __ROR4__(v377, 8);
  v395 = v382 ^ LODWORD(STACK[0x5060]) ^ v376 ^ __ROR4__(v388, 16);
  STACK[0xD708] = v245 + 4 * HIBYTE(v387);
  v374 >>= 24;
  v396 = *(v245 + 4 * HIBYTE(v387));
  STACK[0xD708] = v245 + 4 * v374;
  v397 = *(v245 + 4 * v374);
  STACK[0xD708] = v245 + 4 * BYTE1(v387);
  v398 = *(v245 + 4 * BYTE1(v387));
  v399 = v395 ^ LODWORD(STACK[0x56E0]) ^ __ROR4__(v396, 24);
  v400 = BYTE1(v378);
  STACK[0xD708] = v245 + 4 * v400;
  v401 = v399 ^ __ROR4__(*(v245 + 4 * v400), 8);
  STACK[0xD708] = v245 + 4 * v392;
  v402 = *(v245 + 4 * v392);
  STACK[0xD708] = v245 + 4 * HIBYTE(v401);
  v403 = *(v245 + 4 * HIBYTE(v401));
  v404 = v394 ^ v379 ^ LODWORD(STACK[0x5710]);
  STACK[0xD708] = v245 + 4 * v401;
  v405 = *(v245 + 4 * v401);
  STACK[0xD708] = v245 + 4 * BYTE2(v401);
  v406 = *(v245 + 4 * BYTE2(v401));
  v407 = v404 ^ __ROR4__(v389, 16) ^ __ROR4__(v397, 24);
  STACK[0xD708] = v245;
  v408 = *(v245 + 4 * HIBYTE(v392));
  v409 = v393 ^ v385 ^ LODWORD(STACK[0x5700]);
  STACK[0xD708] = v245 + 4 * BYTE1(v407);
  v410 = *(v245 + 4 * BYTE1(v407));
  v411 = v409 ^ __ROR4__(v398, 8);
  STACK[0xD708] = v245 + 4 * BYTE2(v411);
  v412 = *(v245 + 4 * BYTE2(v411));
  v413 = BYTE1(v401);
  STACK[0xD708] = v245 + 4 * v413;
  v414 = *(v245 + 4 * v413);
  v415 = v406 ^ __ROR4__(v408, 24);
  STACK[0xD708] = v245 + 4 * HIBYTE(v411);
  v416 = *(v245 + 4 * HIBYTE(v411));
  v417 = v415 ^ __ROR4__(v410, 8);
  STACK[0xD708] = v245 + 4 * BYTE2(v407);
  v418 = *(v245 + 4 * BYTE2(v407));
  STACK[0xD708] = v245 + 4 * HIBYTE(v407);
  v419 = *(v245 + 4 * HIBYTE(v407));
  STACK[0xD708] = v245 + 4 * BYTE2(v392);
  v420 = *(v245 + 4 * BYTE2(v392));
  STACK[0xD708] = v245 + 4 * v411;
  v421 = v417 ^ __ROR4__(*(v245 + 4 * v411), 16);
  v422 = LODWORD(STACK[0x5058]) ^ LODWORD(STACK[0x56C0]) ^ __ROR4__(v414, 8) ^ __ROR4__(v416, 24);
  v423 = LODWORD(STACK[0x5050]) ^ LODWORD(STACK[0x5680]) ^ (v402 << 16) ^ (v402 >> LODWORD(STACK[0x4F18]) >> LODWORD(STACK[0x4F10])) ^ __ROR4__(v403, 24);
  STACK[0xD708] = v245 + 4 * v407;
  v424 = *(v245 + 4 * v407);
  STACK[0xD708] = v245 + 4 * BYTE1(v411);
  v425 = v423 ^ v418 ^ __ROR4__(*(v245 + 4 * BYTE1(v411)), 8);
  v426 = LODWORD(STACK[0x5048]) ^ LODWORD(STACK[0x56D0]) ^ __ROR4__(v405, 16) ^ v412 ^ __ROR4__(v419, 24);
  v427 = BYTE1(v392);
  STACK[0xD708] = v245 + 4 * v427;
  v428 = *(v245 + 4 * v427);
  v429 = v421 + LODWORD(STACK[0x4F70]);
  LODWORD(STACK[0x53A0]) = v260;
  v430 = LODWORD(STACK[0x5040]) ^ v260 ^ v429;
  v431 = (LOBYTE(STACK[0x5040]) ^ v260 ^ v429);
  STACK[0xD708] = v245 + 4 * v431;
  v432 = *(v245 + 4 * v431);
  v433 = v426 ^ __ROR4__(v428, 8);
  STACK[0xD708] = v245 + 4 * BYTE2(v433);
  v434 = *(v245 + 4 * BYTE2(v433));
  STACK[0xD708] = v245 + 4 * BYTE1(v425);
  v435 = *(v245 + 4 * BYTE1(v425));
  v436 = v422 ^ v420 ^ __ROR4__(v424, 16);
  STACK[0xD708] = v245 + 4 * HIBYTE(v436);
  v437 = *(v245 + 4 * HIBYTE(v436));
  STACK[0xD708] = v245 + 4 * v425;
  v438 = *(v245 + 4 * v425);
  STACK[0xD708] = v245 + 4 * BYTE2(v430);
  v439 = *(v245 + 4 * BYTE2(v430));
  STACK[0xD708] = v245 + 4 * v433;
  v440 = *(v245 + 4 * v433);
  STACK[0xD708] = v245 + 4 * HIBYTE(v430);
  v441 = *(v245 + 4 * HIBYTE(v430));
  STACK[0xD708] = v245 + 4 * HIBYTE(v425);
  v442 = *(v245 + 4 * HIBYTE(v425));
  STACK[0xD708] = v245 + 4 * HIBYTE(v433);
  v443 = *(v245 + 4 * HIBYTE(v433));
  v444 = BYTE1(v430);
  STACK[0xD708] = v245 + 4 * v444;
  v445 = *(v245 + 4 * v444);
  STACK[0xD708] = v245 + 4 * v436;
  v446 = LODWORD(STACK[0x5640]) ^ __ROR4__(v432, 16) ^ v434;
  v447 = *(v245 + 4 * v436);
  STACK[0xD708] = v245 + 4 * BYTE1(v436);
  v448 = v446 ^ __ROR4__(v442, 24) ^ __ROR4__(*(v245 + 4 * BYTE1(v436)), 8);
  v449 = STACK[0x5178];
  if (v333)
  {
    v449 = STACK[0x4F68];
  }

  v450 = STACK[0x5180];
  v451 = LODWORD(STACK[0x51C8]) ^ LODWORD(STACK[0x5180]);
  v452 = v451 ^ LODWORD(STACK[0x5650]) ^ (((v449 & STACK[0x57B0]) >> LODWORD(STACK[0x57C0])) | LODWORD(STACK[0x4F60])) ^ __ROR4__(v441, 24);
  v453 = BYTE2(v425);
  STACK[0xD708] = v245 + 4 * v453;
  v454 = *(v245 + 4 * v453);
  v455 = BYTE1(v433);
  STACK[0xD708] = v245 + 4 * v455;
  v456 = v452 ^ __ROR4__(v447, 16) ^ v454 ^ __ROR4__(*(v245 + 4 * v455), 8);
  v457 = v451 ^ LODWORD(STACK[0x5108]) ^ LODWORD(STACK[0x5660]) ^ __ROR4__(v435, 8) ^ __ROR4__(v437, 24);
  v458 = v451 ^ LODWORD(STACK[0x5100]) ^ LODWORD(STACK[0x5670]) ^ __ROR4__(v438, 16) ^ __ROR4__(v443, 24);
  v459 = BYTE2(v436);
  STACK[0xD708] = v245 + 4 * v459;
  v460 = v457 ^ v439;
  v461 = v458 ^ __ROR4__(v445, 8) ^ *(v245 + 4 * v459);
  STACK[0xD708] = v245 + 4 * BYTE2(v461);
  v462 = *(v245 + 4 * BYTE2(v461));
  STACK[0xD708] = v245;
  v463 = *(v245 + 4 * BYTE1(v461));
  v464 = v460 ^ __ROR4__(v440, 16);
  STACK[0xD708] = v245 + 4 * HIBYTE(v461);
  v465 = *(v245 + 4 * HIBYTE(v461));
  STACK[0xD708] = v245 + 4 * BYTE2(v464);
  v466 = *(v245 + 4 * BYTE2(v464));
  STACK[0xD708] = v245 + 4 * BYTE1(v456);
  v467 = *(v245 + 4 * BYTE1(v456));
  STACK[0xD708] = v245 + 4 * BYTE1(v464);
  v468 = *(v245 + 4 * BYTE1(v464));
  v469 = (LODWORD(STACK[0x4F30]) ^ (v448 - (v448 ^ v450))) + v448;
  STACK[0xD708] = v245 + 4 * v456;
  v470 = *(v245 + 4 * v456);
  v471 = LODWORD(STACK[0x4F28]) ^ v469;
  STACK[0xD708] = v245 + 4 * BYTE2(v471);
  v472 = *(v245 + 4 * BYTE2(v471));
  STACK[0xD708] = v245 + 4 * v471;
  v473 = *(v245 + 4 * v471);
  STACK[0xD708] = v245 + 4 * HIBYTE(v464);
  v474 = *(v245 + 4 * HIBYTE(v464));
  STACK[0xD708] = v245 + 4 * HIBYTE(v456);
  v475 = *(v245 + 4 * HIBYTE(v456));
  STACK[0xD708] = v245 + 4 * v464;
  v476 = *(v245 + 4 * v464);
  STACK[0xD708] = v245 + 4 * HIBYTE(v471);
  v477 = *(v245 + 4 * HIBYTE(v471));
  v478 = BYTE2(v456);
  STACK[0xD708] = v245 + 4 * v478;
  v479 = LODWORD(STACK[0x5188]) ^ LODWORD(STACK[0x5198]);
  v480 = *(v245 + 4 * v478);
  v481 = v479 ^ LODWORD(STACK[0x50F8]) ^ LODWORD(STACK[0x5610]) ^ v462 ^ __ROR4__(v468, 8);
  STACK[0xD708] = v245 + 4 * BYTE1(v471);
  v482 = *(v245 + 4 * BYTE1(v471));
  v483 = v481 ^ __ROR4__(v470, 16);
  v484 = v461;
  STACK[0xD708] = v245 + 4 * v461;
  v485 = v483 ^ __ROR4__(v477, 24);
  v486 = v479 ^ LODWORD(STACK[0x50F0]) ^ LODWORD(STACK[0x5630]) ^ __ROR4__(v465, 24) ^ v466 ^ __ROR4__(v467, 8);
  v487 = v479 ^ LODWORD(STACK[0x50E8]) ^ LODWORD(STACK[0x55F0]) ^ __ROR4__(v474, 24) ^ v480 ^ __ROR4__(v482, 8) ^ __ROR4__(*(v245 + 4 * v484), 16);
  v488 = LODWORD(STACK[0x5038]) ^ LODWORD(STACK[0x5620]) ^ __ROR4__(v463, 8) ^ v472 ^ __ROR4__(v475, 24) ^ __ROR4__(v476, 16);
  STACK[0xD708] = v245 + 4 * HIBYTE(v487);
  v489 = *(v245 + 4 * HIBYTE(v487));
  STACK[0xD708] = v245 + 4 * BYTE1(v487);
  v490 = *(v245 + 4 * BYTE1(v487));
  STACK[0xD708] = v245 + 4 * BYTE2(v487);
  v491 = *(v245 + 4 * BYTE2(v487));
  STACK[0xD708] = v245;
  v492 = *(v245 + 4 * v488);
  v494 = __PAIR64__(v492, __ROR4__(v473, 16));
  v493 = v486 ^ v494;
  STACK[0xD708] = v245 + 4 * BYTE2(v485);
  LODWORD(v494) = v492;
  v495 = *(v245 + 4 * BYTE2(v485));
  STACK[0xD708] = v245;
  v496 = *(v245 + 4 * v487);
  STACK[0xD708] = v245 + 4 * BYTE1(v493);
  v497 = *(v245 + 4 * BYTE1(v493));
  v498 = v495 ^ __ROR4__(v496, 16);
  STACK[0xD708] = v245 + 4 * BYTE2(v488);
  v499 = *(v245 + 4 * BYTE2(v488));
  v500 = v498 ^ __ROR4__(v497, 8);
  STACK[0xD708] = v245 + 4 * BYTE1(v488);
  v501 = v491 ^ __ROR4__(*(v245 + 4 * BYTE1(v488)), 8);
  STACK[0xD708] = v245 + 4 * HIBYTE(v493);
  v502 = *(v245 + 4 * HIBYTE(v493));
  v488 >>= 24;
  STACK[0xD708] = v245 + 4 * v488;
  v503 = *(v245 + 4 * v488);
  STACK[0xD708] = v245 + 4 * v485;
  v504 = v500 ^ __ROR4__(v503, 24);
  v505 = *(v245 + 4 * v485);
  STACK[0xD708] = v245 + 4 * HIBYTE(v485);
  v506 = v501 ^ __ROR4__(v502, 24) ^ __ROR4__(v505, 16);
  v507 = *(v245 + 4 * HIBYTE(v485));
  STACK[0xD708] = v245 + 4 * BYTE2(v493);
  v508 = (v494 >> 16) ^ __ROR4__(v490, 8) ^ __ROR4__(v507, 24) ^ *(v245 + 4 * BYTE2(v493));
  v509 = BYTE1(v485);
  STACK[0xD708] = v245 + 4 * v509;
  v510 = *(v245 + 4 * v509);
  STACK[0xD708] = v245 + 4 * v493;
  v511 = v506 + v333 - v386;
  STACK[0x53C8] = v333;
  LODWORD(STACK[0x5360]) = v373;
  LODWORD(v494) = __ROR4__(*(v245 + 4 * v493), 16);
  LODWORD(STACK[0x5388]) = v277;
  v512 = v333 ^ v373 ^ __ROR4__(v489, 24) ^ v499 ^ __ROR4__(v510, 8) ^ v494;
  LODWORD(STACK[0x5290]) = v512;
  v513 = (v512 ^ v450 ^ v277) + LODWORD(STACK[0x50E0]) - 2 * ((v512 ^ v450 ^ v277) & STACK[0x50E0]);
  v514 = v354 ^ v450;
  v515 = v354 ^ v450 ^ LODWORD(STACK[0x5020]) ^ LODWORD(STACK[0x5590]) ^ v508;
  v516 = v508;
  LODWORD(STACK[0x5268]) = v508;
  STACK[0xD708] = v245 + 4 * BYTE2(v515);
  v517 = v513 ^ v354;
  v518 = v354 ^ v450 ^ LODWORD(STACK[0x50C0]) ^ LODWORD(STACK[0x55E0]) ^ v504;
  v519 = v504;
  v520 = *(v245 + 4 * BYTE2(v515));
  STACK[0xD708] = v245;
  v521 = *(v245 + 4 * BYTE1(v518));
  STACK[0xD708] = v245 + 4 * BYTE1(v517);
  v522 = *(v245 + 4 * BYTE1(v517));
  STACK[0xD708] = v245 + 4 * BYTE2(v517);
  v523 = v514 ^ LODWORD(STACK[0x50B0]) ^ LODWORD(STACK[0x5600]) ^ v511;
  v524 = *(v245 + 4 * BYTE2(v517));
  STACK[0xD708] = v245 + 4 * BYTE1(v523);
  v525 = *(v245 + 4 * BYTE1(v523));
  STACK[0xD708] = v245 + 4 * v515;
  v526 = *(v245 + 4 * v515);
  STACK[0xD708] = v245 + 4 * BYTE2(v518);
  v527 = *(v245 + 4 * BYTE2(v518));
  STACK[0xD708] = v245;
  v528 = *(v245 + 4 * BYTE2(v523));
  STACK[0xD708] = v245 + 4 * BYTE1(v515);
  v529 = *(v245 + 4 * BYTE1(v515));
  STACK[0xD708] = v245 + 4 * v517;
  v530 = *(v245 + 4 * v517);
  STACK[0xD708] = v245 + 4 * HIBYTE(v523);
  v515 >>= 24;
  v531 = *(v245 + 4 * HIBYTE(v523));
  STACK[0xD708] = v245 + 4 * v515;
  v532 = *(v245 + 4 * v515);
  STACK[0xD708] = v245 + 4 * v518;
  v517 >>= 24;
  v533 = *(v245 + 4 * v518);
  STACK[0xD708] = v245 + 4 * v517;
  v534 = *(v245 + 4 * v517);
  STACK[0xD708] = v245 + 4 * HIBYTE(v518);
  v535 = *(v245 + 4 * HIBYTE(v518));
  STACK[0xD708] = v245 + 4 * v523;
  v536 = LODWORD(STACK[0x5540]) ^ LODWORD(STACK[0x5150]) ^ v520 ^ __ROR4__(v525, 8) ^ __ROR4__(v530, 16);
  LODWORD(v494) = __ROR4__(v535, 24);
  v537 = (LODWORD(STACK[0x4F20]) ^ ((v536 ^ v494) - (v536 ^ v494 ^ LODWORD(STACK[0x5190])))) + (v536 ^ v494);
  v538 = (LODWORD(STACK[0x5190]) ^ LODWORD(STACK[0x5150]));
  v539 = v538 ^ LODWORD(STACK[0x5018]) ^ LODWORD(STACK[0x5510]) ^ v527 ^ __ROR4__(v529, 8) ^ __ROR4__(v534, 24) ^ __ROR4__(*(v245 + 4 * v523), 16);
  v540 = v538 ^ LODWORD(STACK[0x50D0]);
  LODWORD(STACK[0x5358]) = v540;
  v541 = v540 ^ LODWORD(STACK[0x5570]) ^ __ROR4__(v521, 8) ^ v524 ^ __ROR4__(v526, 16);
  STACK[0xD708] = v245 + 4 * BYTE1(v539);
  v542 = *(v245 + 4 * BYTE1(v539));
  v543 = LODWORD(STACK[0x50D8]) ^ v537;
  STACK[0xD708] = v245 + 4 * BYTE2(v543);
  v544 = *(v245 + 4 * BYTE2(v543));
  LODWORD(v494) = __ROR4__(v531, 24);
  v545 = v541 ^ v494;
  STACK[0xD708] = v245;
  v546 = *(v245 + 4 * (v541 ^ v494));
  STACK[0xD708] = v245 + 4 * BYTE2(v545);
  v547 = *(v245 + 4 * BYTE2(v545));
  v548 = v538 ^ LODWORD(STACK[0x50C8]);
  *(v14 - 152) = v538;
  LODWORD(STACK[0x5350]) = v548;
  LODWORD(STACK[0x5380]) = v190;
  LODWORD(v494) = __ROR4__(v522, 8);
  STACK[0xD708] = v245 + 4 * v543;
  v549 = *(v245 + 4 * v543);
  STACK[0xD708] = v245 + 4 * HIBYTE(v539);
  v550 = *(v245 + 4 * HIBYTE(v539));
  v551 = v548 ^ v190 ^ v494 ^ v528 ^ __ROR4__(v532, 24);
  STACK[0xD708] = v245 + 4 * HIBYTE(v545);
  v552 = *(v245 + 4 * HIBYTE(v545));
  v553 = v551 ^ __ROR4__(v533, 16);
  STACK[0xD708] = v245 + 4 * HIBYTE(v553);
  v554 = *(v245 + 4 * HIBYTE(v553));
  STACK[0xD708] = v245 + 4 * v539;
  v555 = *(v245 + 4 * v539);
  v556 = BYTE1(v545);
  STACK[0xD708] = v245 + 4 * v556;
  v557 = *(v245 + 4 * v556);
  STACK[0xD708] = v245 + 4 * HIBYTE(v543);
  v558 = *(v245 + 4 * HIBYTE(v543));
  STACK[0xD708] = v245 + 4 * BYTE1(v553);
  v559 = *(v245 + 4 * BYTE1(v553));
  v560 = BYTE2(v539);
  STACK[0xD708] = v245 + 4 * v560;
  v561 = *(v245 + 4 * v560);
  STACK[0xD708] = v245 + 4 * v553;
  v562 = *(v245 + 4 * v553);
  v563 = BYTE2(v553);
  STACK[0xD708] = v245 + 4 * v563;
  v564 = *(v245 + 4 * v563);
  STACK[0xD708] = v245 + 4 * BYTE1(v543);
  LODWORD(STACK[0x5378]) = v298;
  v565 = LODWORD(STACK[0x4FF8]) ^ v298 ^ __ROR4__(v552, 24) ^ v561 ^ __ROR4__(v562, 16) ^ __ROR4__(*(v245 + 4 * BYTE1(v543)), 8);
  v566 = v565 + 1220942557;
  if (v565 >= 0xB739E523)
  {
    v567 = 35;
  }

  else
  {
    v566 = v565;
    v567 = 0;
  }

  if (v566)
  {
    v568 = v565;
  }

  else
  {
    v568 = v567;
  }

  STACK[0xD708] = v245 + 4 * v568;
  v569 = *(v245 + 4 * v568);
  STACK[0xD708] = v245 + 4 * HIBYTE(v565);
  v570 = LODWORD(STACK[0x4FC8]) ^ LODWORD(STACK[0x54B0]) ^ __ROR4__(v542, 8) ^ v547 ^ __ROR4__(v549, 16) ^ __ROR4__(v554, 24);
  v571 = *(v245 + 4 * HIBYTE(v565));
  STACK[0xD708] = v245 + 4 * HIBYTE(v570);
  v572 = LODWORD(STACK[0x4FE8]) ^ LODWORD(STACK[0x54F0]) ^ v544 ^ __ROR4__(v546, 16) ^ __ROR4__(v550, 24) ^ __ROR4__(v559, 8);
  v573 = *(v245 + 4 * HIBYTE(v570));
  STACK[0xD708] = v245 + 4 * BYTE2(v572);
  v574 = *(v245 + 4 * BYTE2(v572));
  v575 = LODWORD(STACK[0x4FF0]) ^ LODWORD(STACK[0x54D0]) ^ __ROR4__(v555, 16) ^ __ROR4__(v557, 8) ^ __ROR4__(v558, 24) ^ v564;
  STACK[0xD708] = v245 + 4 * BYTE2(v575);
  v576 = *(v245 + 4 * BYTE2(v575));
  STACK[0xD708] = v245 + 4 * BYTE1(v575);
  v577 = *(v245 + 4 * BYTE1(v575));
  STACK[0xD708] = v245 + 4 * BYTE1(v570);
  v578 = *(v245 + 4 * BYTE1(v570));
  STACK[0xD708] = v245 + 4 * BYTE1(v572);
  v579 = *(v245 + 4 * BYTE1(v572));
  STACK[0xD708] = v245 + 4 * BYTE2(v570);
  v580 = *(v245 + 4 * BYTE2(v570));
  STACK[0xD708] = v245;
  v581 = *(v245 + 4 * HIBYTE(v575));
  STACK[0xD708] = v245 + 4 * BYTE2(v565);
  v582 = *(v245 + 4 * BYTE2(v565));
  STACK[0xD708] = v245 + 4 * HIBYTE(v572);
  v583 = *(v245 + 4 * HIBYTE(v572));
  v584 = BYTE1(v565);
  STACK[0xD708] = v245 + 4 * v584;
  v585 = *(v245 + 4 * v584);
  STACK[0xD708] = v245 + 4 * v575;
  v586 = *(v245 + 4 * v575);
  STACK[0xD708] = v245 + 4 * v572;
  v587 = *(v245 + 4 * v572);
  STACK[0xD708] = v245 + 4 * v570;
  v588 = *(v245 + 4 * v570);
  STACK[0xD708] = v245;
  v589 = LODWORD(STACK[0x4FB0]) ^ LODWORD(STACK[0x5470]) ^ __ROR4__(v569, 16) ^ v576 ^ __ROR4__(v578, 8) ^ __ROR4__(v583, 24);
  v590 = STACK[0xD720];
  STACK[0xD720] += 4 * BYTE2(v589);
  v591 = LODWORD(STACK[0x5010]) ^ LODWORD(STACK[0x5450]) ^ v580 ^ __ROR4__(v581, 24) ^ __ROR4__(v585, 8) ^ __ROR4__(v587, 16);
  LODWORD(STACK[0x5340]) = *(v590 + 4 * BYTE2(v589));
  STACK[0xD720] = v590 + 4 * HIBYTE(v591);
  v592 = LODWORD(STACK[0x4FB8]) ^ LODWORD(STACK[0x55D0]) ^ __ROR4__(v573, 24) ^ __ROR4__(v579, 8) ^ v582;
  LODWORD(STACK[0x5348]) = *(v590 + 4 * HIBYTE(v591));
  v593 = v592 ^ __ROR4__(v586, 16);
  STACK[0xD720] = v590 + 4 * BYTE1(v593);
  v594 = LODWORD(STACK[0x5008]) ^ LODWORD(STACK[0x5490]) ^ __ROR4__(__ROR4__(v574 ^ __ROR4__(v571, 24) ^ __ROR4__(v577, 8) ^ __ROR4__(v588, 16), 26) ^ 0xBD7AD376, 6) ^ 0xDAF5EB4D;
  LODWORD(STACK[0x5280]) = *(v590 + 4 * BYTE2(v594));
  v595 = *(v590 + 4 * BYTE1(v591));
  LODWORD(STACK[0x52A8]) = *(v590 + 4 * v589);
  LODWORD(STACK[0x52A0]) = *(v590 + 4 * BYTE2(v591));
  v596 = *(v590 + 4 * HIBYTE(v594));
  v597 = *(v590 + 4 * v593);
  LODWORD(STACK[0x5288]) = *(v590 + 4 * v594);
  LODWORD(STACK[0x5298]) = *(v590 + 4 * BYTE1(v594));
  v598 = *(v590 + 4 * v591);
  LODWORD(STACK[0x5270]) = *(v590 + 4 * BYTE1(v593));
  STACK[0xD720] = v590 + 4 * HIBYTE(v589);
  LODWORD(STACK[0x5278]) = *(v590 + 4 * BYTE2(v593));
  v599 = *(v590 + 4 * BYTE1(v589));
  v600 = *(v590 + 4 * HIBYTE(v593));
  v601 = *(v590 + 4 * HIBYTE(v589));
  v602 = v514 ^ LODWORD(STACK[0x5028]) ^ LODWORD(STACK[0x55B0]) ^ v512;
  v603 = STACK[0xD708];
  STACK[0xD708] += 4 * HIBYTE(v602);
  v604 = *(v603 + 4 * HIBYTE(v602));
  STACK[0xD708] = v603 + 4 * BYTE2(v602);
  v605 = *(v603 + 4 * BYTE2(v602));
  STACK[0xD708] = v603;
  v606 = v514 ^ LODWORD(STACK[0x5030]) ^ LODWORD(STACK[0x55A0]) ^ v519;
  v607 = v514 ^ LODWORD(STACK[0x50B8]) ^ LODWORD(STACK[0x5580]) ^ v516;
  v608 = *(v603 + 4 * HIBYTE(v607));
  STACK[0xD708] = v603 + 4 * HIBYTE(v606);
  v609 = *(v603 + 4 * HIBYTE(v606));
  STACK[0xD708] = v603 + 4 * BYTE1(v602);
  v610 = v514 ^ LODWORD(STACK[0x50A8]) ^ LODWORD(STACK[0x55C0]);
  v611 = *(v603 + 4 * BYTE1(v602));
  v612 = v511;
  v613 = v610 ^ v511;
  v614 = ((v610 ^ v511) >> 8);
  STACK[0xD708] = v603 + 4 * v614;
  v615 = *(v603 + 4 * v614);
  STACK[0xD708] = v603 + 4 * BYTE2(v606);
  v616 = *(v603 + 4 * BYTE2(v606));
  STACK[0xD708] = v603 + 4 * BYTE2(v607);
  v617 = *(v603 + 4 * BYTE2(v607));
  STACK[0xD708] = v603 + 4 * v613;
  v618 = *(v603 + 4 * v613);
  STACK[0xD708] = v603 + 4 * BYTE1(v607);
  v619 = *(v603 + 4 * BYTE1(v607));
  STACK[0xD708] = v603 + 4 * HIBYTE(v613);
  v620 = *(v603 + 4 * HIBYTE(v613));
  STACK[0xD708] = v603 + 4 * v606;
  v621 = *(v603 + 4 * v606);
  v622 = BYTE2(v613);
  STACK[0xD708] = v603 + 4 * v622;
  v623 = *(v14 - 152);
  v624 = *(v603 + 4 * v622);
  STACK[0xD720] = v590;
  STACK[0xD708] = v603 + 4 * v602;
  v625 = *(v603 + 4 * v602);
  STACK[0xD708] = v603 + 4 * v607;
  LODWORD(v590) = *(v603 + 4 * v607);
  v626 = BYTE1(v606);
  STACK[0xD708] = v603 + 4 * v626;
  LODWORD(v590) = v623 ^ LODWORD(STACK[0x50A0]) ^ LODWORD(STACK[0x5560]) ^ v605 ^ __ROR4__(v620, 24) ^ __ROR4__(v590, 16);
  v628 = __ROR4__(*(v603 + 4 * v626), 8);
  v627 = v590 ^ v628;
  STACK[0xD708] = v603 + 4 * (v590 ^ v628);
  v629 = LODWORD(STACK[0x5358]) ^ LODWORD(STACK[0x5550]) ^ __ROR4__(v604, 24) ^ v616 ^ __ROR4__(v618, 16) ^ __ROR4__(v619, 8);
  LODWORD(v590) = *(v603 + 4 * (v590 ^ v628));
  STACK[0xD708] = v603 + 4 * BYTE2(v629);
  v630 = LODWORD(STACK[0x5350]) ^ LODWORD(STACK[0x5520]) ^ __ROR4__(v608, 24) ^ __ROR4__(v611, 8) ^ __ROR4__(v621, 16) ^ v624;
  v631 = *(v603 + 4 * BYTE2(v629));
  STACK[0xD708] = v603;
  v632 = *(v603 + 4 * BYTE1(v627));
  STACK[0xD708] = v603 + 4 * v630;
  v633 = *(v603 + 4 * v630);
  STACK[0xD708] = v603 + 4 * BYTE2(v627);
  v634 = *(v603 + 4 * BYTE2(v627));
  STACK[0xD708] = v603;
  v635 = *(v603 + ((v627 >> 22) & 0x3FC));
  STACK[0xD708] = v603 + 4 * HIBYTE(v630);
  v636 = *(v603 + 4 * HIBYTE(v630));
  STACK[0xD708] = v603 + 4 * v629;
  v637 = v623 ^ LODWORD(STACK[0x5000]) ^ LODWORD(STACK[0x5530]) ^ __ROR4__(v609, 24) ^ __ROR4__(v615, 8) ^ v617;
  v638 = *(v603 + 4 * v629);
  v640 = __ROR4__(v625, 16);
  v639 = BYTE1(v637) ^ BYTE1(v640);
  STACK[0xD708] = v603 + 4 * ((v637 ^ v640) >> 24);
  v641 = *(v603 + 4 * ((v637 ^ v640) >> 24));
  STACK[0xD708] = v603 + 4 * ((v637 ^ v640) >> 16);
  v642 = *(v603 + 4 * ((v637 ^ v640) >> 16));
  v643 = (v637 ^ v640);
  STACK[0xD708] = v603 + 4 * v643;
  v644 = *(v603 + 4 * v643);
  STACK[0xD708] = v603 + 4 * BYTE1(v630);
  v645 = *(v603 + 4 * BYTE1(v630));
  STACK[0xD708] = v603 + 4 * HIBYTE(v629);
  v646 = LODWORD(STACK[0x4F88]) ^ LODWORD(STACK[0x53E8]) ^ __ROR4__(STACK[0x5280], 24) ^ __ROR4__(v598, 8) ^ v599;
  v647 = ((1743093603 - v612) ^ 0x2F7DE5CB) - v519;
  v648 = LODWORD(STACK[0x4F88]) ^ LODWORD(STACK[0x5408]) ^ v595 ^ __ROR4__(v596, 16) ^ __ROR4__(v597, 8) ^ __ROR4__(STACK[0x5340], 24);
  v649 = v646 ^ __ROR4__(v600, 16);
  v650 = v642 ^ __ROR4__(v590, 16) ^ __ROR4__(v645, 8) ^ __ROR4__(*(v603 + 4 * HIBYTE(v629)), 24);
  v651 = LODWORD(STACK[0x4F88]) ^ LODWORD(STACK[0x5420]) ^ __ROR4__(STACK[0x52A0], 24) ^ __ROR4__(STACK[0x5288], 8) ^ LODWORD(STACK[0x5270]) ^ (v601 << 16) ^ HIWORD(v601);
  v652 = LODWORD(STACK[0x4F88]) ^ LODWORD(STACK[0x5400]) ^ __ROR4__(STACK[0x52A8], 8) ^ LODWORD(STACK[0x5298]) ^ __ROR4__(STACK[0x5278], 24) ^ __ROR4__(STACK[0x5348], 16);
  v653 = STACK[0x54E0];
  if ((v650 & 0x20 & STACK[0x54E0]) != 0)
  {
    v654 = -(v650 & 0x20);
  }

  else
  {
    v654 = v650 & 0x20;
  }

  v655 = STACK[0x5770];
  if (STACK[0x5770])
  {
    v656 = v649;
  }

  else
  {
    v656 = v648;
  }

  if (v655)
  {
    v657 = v648;
  }

  else
  {
    v657 = v651;
  }

  if (v655)
  {
    v649 = v652;
  }

  else
  {
    v651 = v652;
  }

  v658 = v639;
  STACK[0xD708] = v603 + 4 * v658;
  v659 = *(v603 + 4 * v658);
  v660 = LODWORD(STACK[0x5268]) + LODWORD(STACK[0x5290]);
  v661 = BYTE1(v629);
  STACK[0xD708] = v603 + 4 * v661;
  v662 = *(v603 + 4 * v661);
  v663 = BYTE2(v630);
  STACK[0xD708] = v603 + 4 * v663;
  v664 = LODWORD(STACK[0x4FE0]) ^ LODWORD(STACK[0x5500]) ^ v631;
  v665 = LODWORD(STACK[0x4FD8]) ^ LODWORD(STACK[0x54A0]) ^ v634;
  v666 = *(v603 + 4 * v663);
  v667 = LODWORD(STACK[0x4FC0]) ^ v650 & 0xFFFFFFDF ^ (v654 + v653);
  STACK[0xD708] = v603 + 4 * v667;
  v668 = v664 ^ __ROR4__(v633, 16) ^ __ROR4__(v635, 24);
  v670 = __ROR4__(v659, 8);
  v669 = v668 ^ v670;
  v671 = *(v603 + 4 * v667);
  v672 = (v668 ^ v670);
  STACK[0xD708] = v603 + 4 * v672;
  v673 = *(v603 + 4 * v672);
  v674 = LODWORD(STACK[0x4FD0]) ^ LODWORD(STACK[0x54C0]) ^ __ROR4__(v632, 8) ^ __ROR4__(v638, 16) ^ __ROR4__(v641, 24) ^ v666;
  STACK[0xD708] = v603 + 4 * BYTE2(v667);
  v675 = *(v603 + 4 * BYTE2(v667));
  STACK[0xD708] = v603;
  v676 = *(v603 + 4 * v674);
  STACK[0xD708] = v603 + 4 * BYTE1(v674);
  v677 = v665 ^ __ROR4__(v636, 24) ^ __ROR4__(v644, 16);
  v679 = __ROR4__(v662, 8);
  v678 = v677 ^ v679;
  v680 = *(v603 + 4 * BYTE1(v674));
  v681 = ((v677 ^ v679) >> 8);
  STACK[0xD708] = v603 + 4 * v681;
  v682 = v660 - 1139554593;
  v683 = *(v603 + 4 * v681);
  v684 = v647 + v682;
  STACK[0xD708] = v603 + 4 * BYTE2(v669);
  v685 = *(v603 + 4 * BYTE2(v669));
  STACK[0xD708] = v603 + 4 * HIBYTE(v674);
  v686 = *(v603 + 4 * HIBYTE(v674));
  STACK[0xD708] = v603 + 4 * BYTE1(v667);
  v687 = *(v603 + 4 * BYTE1(v667));
  STACK[0xD708] = v603 + 4 * HIBYTE(v678);
  v688 = *(v603 + 4 * HIBYTE(v678));
  STACK[0xD708] = v603 + 4 * BYTE1(v669);
  v689 = *(v603 + 4 * BYTE1(v669));
  v690 = BYTE2(v674);
  STACK[0xD708] = v603 + 4 * v690;
  v669 >>= 24;
  v691 = *(v603 + 4 * v690);
  STACK[0xD708] = v603 + 4 * v669;
  v692 = *(v603 + 4 * v669);
  STACK[0xD708] = v603 + 4 * BYTE2(v678);
  v693 = *(v603 + 4 * BYTE2(v678));
  STACK[0xD708] = v603 + 4 * v678;
  v667 >>= 24;
  v694 = *(v603 + 4 * v678);
  STACK[0xD708] = v603 + 4 * v667;
  v695 = LODWORD(STACK[0x4FA8]) ^ LODWORD(STACK[0x5460]) ^ ((v673 >> LODWORD(STACK[0x4F58]) >> LODWORD(STACK[0x4F08])) + (v673 << 16)) ^ __ROR4__(v683, 8) ^ v691;
  v696 = *(v603 + 4 * v667);
  STACK[0xD708] = v603;
  v697 = LODWORD(STACK[0x4FA0]) ^ LODWORD(STACK[0x5430]) ^ __ROR4__(v676, 16) ^ v685;
  v698 = LODWORD(STACK[0x4F90]) ^ LODWORD(STACK[0x5440]) ^ __ROR4__(v671, 16) ^ __ROR4__(v686, 24) ^ __ROR4__(v689, 8) ^ v693;
  v699 = LODWORD(STACK[0x4F98]) ^ LODWORD(STACK[0x5480]) ^ v675 ^ __ROR4__(v680, 8) ^ __ROR4__(v692, 24) ^ __ROR4__(v694, 16);
  v700 = STACK[0xD720];
  v701 = BYTE2(v699);
  STACK[0xD720] += 4 * BYTE2(v699);
  v702 = v695 ^ __ROR4__(v696, 24);
  v703 = LODWORD(STACK[0x4F80]) ^ LODWORD(STACK[0x5790]) ^ v684 ^ __ROR4__(*(v700 + 4 * v702), 8) ^ *(v700 + 4 * BYTE1(v699));
  v704 = v697 ^ __ROR4__(v687, 8) ^ __ROR4__(v688, 24);
  v705 = LODWORD(STACK[0x4F80]) ^ LODWORD(STACK[0x53F0]) ^ v684 ^ __ROR4__(*(v700 + 4 * v704), 8) ^ __ROR4__(*(v700 + 4 * HIBYTE(v699)), 16) ^ __ROR4__(*(v700 + 4 * BYTE2(v702)), 24) ^ *(v700 + 4 * BYTE1(v698));
  v706 = LODWORD(STACK[0x4F80]) ^ LODWORD(STACK[0x53F8]) ^ v684 ^ __ROR4__(*(v700 + 4 * BYTE2(v698)), 24) ^ __ROR4__(*(v700 + 4 * v699), 8) ^ *(v700 + 4 * BYTE1(v704));
  v707 = LODWORD(STACK[0x4F80]) ^ LODWORD(STACK[0x53E0]) ^ v684 ^ __ROR4__(*(v700 + 4 * v698), 8) ^ *(v700 + 4 * BYTE1(v702)) ^ __ROR4__(*(v700 + 4 * HIBYTE(v704)), 16) ^ __ROR4__(*(v700 + 4 * v701), 24);
  v708 = v703 ^ __ROR4__(*(v700 + 4 * HIBYTE(v698)), 16) ^ __ROR4__(*(v700 + 4 * BYTE2(v704)), 24);
  v709 = v706 ^ __ROR4__(*(v700 + 4 * HIBYTE(v702)), 16);
  if (v655)
  {
    v710 = v708;
  }

  else
  {
    v710 = v707;
  }

  if (v655)
  {
    v711 = v707;
  }

  else
  {
    v711 = v705;
  }

  if (v655)
  {
    v712 = v709;
  }

  else
  {
    v712 = v708;
  }

  if (v655)
  {
    v713 = v705;
  }

  else
  {
    v713 = v709;
  }

  if ((v655 & 2) != 0)
  {
    v714 = v649;
  }

  else
  {
    v714 = v657;
  }

  if ((v655 & 2) != 0)
  {
    v715 = v657;
  }

  else
  {
    v715 = v649;
  }

  if ((v655 & 2) != 0)
  {
    v716 = v656;
  }

  else
  {
    v716 = v651;
  }

  if ((v655 & 2) != 0)
  {
    v656 = v651;
    v717 = v710;
  }

  else
  {
    v717 = v713;
  }

  if ((v655 & 2) != 0)
  {
    v718 = v711;
  }

  else
  {
    v713 = v710;
    v718 = v712;
  }

  if ((v655 & 2) != 0)
  {
    v711 = v712;
  }

  v719 = v716 ^ v684 ^ v656 ^ v718;
  v720 = v711 ^ v714 ^ v719;
  v721 = v715 + 1620748649 * ((v717 ^ 0x18ECB3D) - v720);
  v722 = v716 ^ v684 ^ v713 ^ (-654833219 * (v713 ^ 0x18ECB3D)) ^ v721 ^ (-654833219 * (v721 ^ v684));
  v723 = (v719 ^ 0x18ECB3D) + 1410087121 * ((v722 ^ v718) - (v684 ^ 0x18ECB3D) + (((v722 ^ v718) - (v722 ^ v718 ^ 0x18ECB3D)) ^ 0xFFFFFFFE));
  v724 = v720 ^ v684;
  v725 = v717 ^ v684;
  v726 = v725 ^ v711 ^ v724 ^ v722 ^ v723;
  v727 = v726 ^ v684 ^ 0x18ECB3D;
  v728 = STACK[0x57A0];
  v729 = *(&off_101353600 + LODWORD(STACK[0x57A0]) - 7052) - 4;
  v730 = STACK[0x52D0];
  *(v730 + LODWORD(STACK[0x52B8])) = v729[(HIBYTE(v727) ^ 0x24 ^ -(HIBYTE(v727) ^ 0x24) ^ (226 - (HIBYTE(v727) ^ 0xC6))) + 226] ^ 0x1E;
  v731 = v724 ^ v718 ^ v726;
  v732 = v721 + 832702733 * ((v723 ^ 0x18ECB3D) - (v711 ^ v684));
  v733 = v725 ^ (-709599927 * (v684 ^ 0x18ECB3D)) ^ v723 ^ v731 ^ 0x18ECB3D ^ (-709599927 * (v732 ^ v713));
  v734 = v728;
  v735 = *(&off_101353600 + v728 - 7162);
  *(v730 + STACK[0x53D8]) = *(v735 + (HIBYTE(v733) ^ 0x76)) ^ ((HIBYTE(v733) ^ 0x3A) - ((2 * (HIBYTE(v733) ^ 0x3A) + 58) & 0x4A) + 2) ^ 0x83;
  v736 = (v731 ^ 0x18ECB3D) & 0x18ECB3D ^ (v731 | 0x18ECB3D);
  *(v730 + LODWORD(STACK[0x52C0])) = v729[HIBYTE(v736) ^ 0x83] ^ 0x6B;
  v737 = *(&off_101353600 + (v728 ^ 0x1D9B)) - 4;
  *(v730 + LODWORD(STACK[0x52B0])) = v737[v732 ^ 0xF2] ^ (v732 - ((2 * v732) & 0x12) - 119) ^ 0x28;
  v738 = *(&off_101353600 + v734 - 7234) - 12;
  *(v730 + LODWORD(STACK[0x52E0])) = v738[BYTE1(v732) ^ 0x94] ^ (BYTE1(v732) - ((v732 >> 7) & 0x3C) + 30) ^ 0xD3;
  *(v730 + LODWORD(STACK[0x52C8])) = v737[(v731 ^ 0x3D) & 0x3D ^ (v731 | 0x3Du) ^ 0x32] ^ (v736 - ((2 * v736) & 0x12) - 119) ^ 0xBF;
  *(v730 + LODWORD(STACK[0x52D8])) = v729[(v726 ^ v684) ^ 0xD4] ^ 0x28;
  *(v730 + LODWORD(STACK[0x52E8])) = v738[BYTE1(v736) ^ 0x28] ^ (BYTE1(v736) - ((v736 >> 7) & 0x3C) + 30) ^ 0x79;
  v739 = STACK[0xD710];
  v740 = STACK[0xD710];
  *(v739 + LODWORD(STACK[0x52F8])) = v737[BYTE1(v733) ^ 0x94] ^ (BYTE1(v733) - ((v733 >> 7) & 0x12) - 119) ^ 0xCF;
  *(v739 + LODWORD(STACK[0x5310])) = v737[BYTE2(v727) ^ 0x8BLL] ^ (BYTE2(v727) - ((v727 >> 15) & 0x12) - 119) ^ 0x8A;
  *(v739 + LODWORD(STACK[0x52F0])) = v729[BYTE2(v732) ^ 0x7BLL] ^ 0xE;
  *(v739 + LODWORD(STACK[0x5328])) = *(v735 + (BYTE2(v736) ^ 0xCDLL)) ^ ((BYTE2(v736) ^ 0x81) + ((68 - 2 * (BYTE2(v736) ^ 0x81)) | 0xB5) + 3) ^ 0xD5;
  *(v739 + LODWORD(STACK[0x5320])) = v729[((v726 ^ v684) >> 8) ^ 0xA2] ^ 0x90;
  *(v739 + LODWORD(STACK[0x5308])) = v729[BYTE2(v733) ^ 3] ^ 0xD3;
  *(v739 + LODWORD(STACK[0x5330])) = v738[HIBYTE(v732) ^ 0x3BLL] ^ (HIBYTE(v732) - ((v732 >> 23) & 0x3C) + 30) ^ 0xF2;
  *(v740 + LODWORD(STACK[0x5318])) = v738[v733 ^ 0x2FLL] ^ (v733 - ((2 * v733) & 0x3C) + 30) ^ 0x3E;
  STACK[0xD720] = v700;
  LODWORD(v729) = (((LODWORD(STACK[0x5300]) ^ 0xD7B8918A) + 675769974) ^ ((LODWORD(STACK[0x5300]) ^ 0xAE1780B2) + 1374191438) ^ ((LODWORD(STACK[0x5300]) ^ 0xA4D5ADF2) + 1529500174)) - 405758506;
  LODWORD(v729) = ((v729 ^ 0x8D6589A1) + 2026870435) ^ v729 ^ ((v729 ^ 0x4E5B2A8C) - 1141820016) ^ ((v729 ^ 0xB694B60E) + 1128179982) ^ ((v729 ^ 0x7FFFF5DF) - 1974080803);
  v741 = (((v729 ^ 0x5B8E9760) + 1935553706) ^ ((v729 ^ 0x58DFFACB) + 1880054019) ^ ((v729 ^ 0x9048D57) + 567553695)) + 521168283;
  v742 = v741 >= LODWORD(STACK[0x5368]);
  v743 = LODWORD(STACK[0x5338]) ^ (v741 < 0x4195A8D1);
  v744 = !v742;
  if (v743)
  {
    v745 = STACK[0x5338];
  }

  else
  {
    v745 = v744;
  }

  return (*(STACK[0x57D8] + 8 * (v734 | (v745 << 6))))();
}

uint64_t sub_100173AB4@<X0>(__int16 a1@<W8>)
{
  v1 = STACK[0x51B8];
  LOWORD(STACK[0xD9BC]) = a1;
  return (*(STACK[0x57D8] + 8 * (v1 - 17527)))();
}

uint64_t sub_100173B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0x51B8];
  LODWORD(STACK[0xC410]) = 813006158;
  return (*(STACK[0x57D8] + 8 * (v7 - 13555)))(a1, 21553, 840133462, 2090271397, a5, 4294947640, a7, 1280);
}

uint64_t sub_100173C14@<X0>(int a1@<W4>, int a2@<W5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v19 = (((v11 ^ 0xC95A1954) + 916842156) ^ ((v11 ^ 0x9C0F3950) + 1676723888) ^ (((v5 - 2025240518) ^ v11) + 2025217904)) - 174368834;
  v20 = ((2 * (v19 ^ 0xD070A6D0)) ^ 0x19E31C0A) & (v19 ^ 0xD070A6D0) ^ (2 * (v19 ^ 0xD070A6D0)) & v7;
  v21 = (v19 ^ 0xD870A6D0) & (2 * (v19 & 0xDC8128D5)) ^ v19 & 0xDC8128D5;
  v22 = ((4 * (v20 ^ 0x4108205)) ^ 0x33C63814) & (v20 ^ 0x4108205) ^ (4 * (v20 ^ 0x4108205)) & v7;
  v23 = (v20 ^ (v18 + 1024)) & (4 * v21) ^ v21;
  v24 = (v22 ^ (a1 + 3841)) & (16 * v23) ^ v23;
  v25 = ((16 * (v22 ^ 0xC318601)) ^ 0xCF18E050) & (v22 ^ 0xC318601) ^ (16 * (v22 ^ 0xC318601)) & (v7 - 4);
  v26 = v24 ^ (v7 + 1) ^ (v25 ^ (v8 + 3573)) & (v24 << 8);
  v27 = v19 ^ (2 * ((v26 << 16) & 0xCF10000 ^ v26 ^ ((v26 << 16) ^ 0xE050000) & (((v25 ^ (a2 + 3078)) << 8) & 0xCF10000 ^ 0xC710000 ^ (((v25 ^ (a2 + 3078)) << 8) ^ 0x718E0000) & (v25 ^ (a2 + 3078)))));
  v28 = v27 ^ v6;
  v29 = __ROR8__((v10 + v28) & 0xFFFFFFFFFFFFFFF8, 8);
  v30 = -2 - (((v16 - v29) | 0x4707B244219C1FB7) + ((v29 + v13) | 0xB8F84DBBDE63E048));
  v31 = __ROR8__(v30 ^ 0xA8BFECD505A8AF33, 8);
  v30 ^= 0xD8E4C6DA21324429;
  v32 = (v31 + v30) ^ a4;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ a3;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (v36 + v35 - ((2 * (v36 + v35)) & 0xDDF28F731F25796ALL) + 0x6EF947B98F92BCB5) ^ 0x3F0500C7BC4CFC86;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ v12;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ v15;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ v17;
  *(a5 + v28) = (((__ROR8__(v43, 8) + (v43 ^ __ROR8__(v42, 61))) ^ v14) >> (8 * ((v10 + (v27 ^ v6)) & 7))) ^ *(v10 + v28);
  return (*(STACK[0x57D8] + 8 * ((29898 * (v27 == v6)) ^ v9)))();
}

uint64_t sub_100173FA0()
{
  v1 = *(STACK[0x8068] + 24);
  STACK[0xA0A8] = v1;
  return (*(STACK[0x57D8] + 8 * (((v1 == 0) * ((v0 ^ 0xAF5) - 4879)) ^ v0)))();
}

uint64_t sub_100174030()
{
  v3 = v0 + ((v2 + 1366) ^ 0x5846) - 17;
  v5 = v3 > v1 + v0 + 3 || v3 > 0xF;
  return (*(STACK[0x57D8] + 8 * (((8 * v5) | (v5 << 6)) ^ v2)))();
}

uint64_t sub_1001740E4@<X0>(int a1@<W8>)
{
  v4 = (((*((a1 ^ 0xABu) + STACK[0x5490] + 13635) ^ 0x39) - 57) ^ ((*((a1 ^ 0xABu) + STACK[0x5490] + 13635) ^ 0xC0) + 64) ^ (((v1 - 76) ^ *((a1 ^ 0xABu) + STACK[0x5490] + 13635)) + 4)) + 6;
  v5 = 12337 * ((v4 ^ (v4 >> 5) ^ (v4 >> 3)) ^ 0xE1);
  *(STACK[0x8070] + 12337 * a1 + 140024950 - (((((12337 * a1 + 140024950) >> 1) * v3) >> 32) >> 12) * v2) = *(STACK[0x8070] + v5 - (((1328683 * v5) >> 32) >> 2) * v2);
  return (*(STACK[0x57D8] + 8 * ((15357 * (a1 == 255)) ^ v1)))();
}

uint64_t sub_10017422C(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, int a6, int a7, char a8)
{
  LODWORD(STACK[0x43B8]) = LODWORD(STACK[0x53D8]) | LODWORD(STACK[0x53E0]);
  LODWORD(STACK[0x42C0]) = LODWORD(STACK[0x53C8]) | LODWORD(STACK[0x53D0]);
  LODWORD(STACK[0x42B8]) = LODWORD(STACK[0x53C0]) | LODWORD(STACK[0x53A8]);
  LODWORD(STACK[0x4358]) = LODWORD(STACK[0x53B8]) | LODWORD(STACK[0x53A0]);
  LODWORD(STACK[0x53E0]) = a6 ^ 0xAE7;
  v17 = STACK[0x54E0];
  v18 = STACK[0x54E0] & 0xF4 ^ 0xA0;
  v19 = STACK[0x54F0];
  v20 = STACK[0x54F0] & 0x56 ^ 0x51;
  v21 = (((v17 ^ (2 * ((v17 ^ 0x34) & (2 * ((v17 ^ 0x34) & (2 * ((v17 ^ 0x34) & (2 * ((v17 ^ 0x34) & (2 * v18) ^ v18)) ^ v18)) ^ v18)) ^ v18))) ^ 0xF4) << 16) | (((v19 ^ (2 * ((v19 ^ 0x34) & (2 * ((v19 ^ 0x34) & (2 * ((v19 ^ 0x34) & (2 * ((v19 ^ 0x34) & (2 * ((v19 ^ 0x34) & (2 * (v20 ^ v19 & 0x22)) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20))) ^ 0x56) << 8);
  v22 = STACK[0x5500];
  LOBYTE(v17) = STACK[0x5500] & 0xFC ^ 0x24;
  v23 = ((v22 ^ (2 * ((v22 ^ 0x34) & (2 * ((v22 ^ 0x34) & (2 * ((v22 ^ 0x34) & (2 * ((v22 ^ 0x34) & (2 * ((v22 ^ 0x34) & (2 * v17) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17))) ^ 0x2406BC) & ~v21 | v21 & 0xDBF900;
  v24 = STACK[0x5510];
  v25 = STACK[0x5510] & 0xFFFFFFB4 | 0xB;
  v26 = v25 ^ STACK[0x5510] & 0x7E;
  LODWORD(STACK[0x53C0]) = v24 ^ (2 * ((v24 ^ 0x34) & (2 * ((v24 ^ 0x34) & (2 * ((v24 ^ 0x34) & (2 * ((v24 ^ 0x34) & (2 * ((v24 ^ 0x34) & (2 * ((v24 ^ 0x34) & (2 * v25) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26));
  v23 <<= 8;
  LODWORD(STACK[0x54E0]) = v23 ^ 0x9BD906FF;
  LODWORD(STACK[0x5510]) = v23 & 0x4424B900;
  v27 = STACK[0x5530];
  LOBYTE(v25) = STACK[0x5530] & 6 | 0xE9;
  v28 = STACK[0x5520];
  LOBYTE(v26) = STACK[0x5520] & 0xC2 ^ 0x8F;
  v29 = (((v28 ^ (2 * ((v28 ^ 0x34) & (2 * ((v28 ^ 0x34) & (2 * ((v28 ^ 0x34) & (2 * ((v28 ^ 0x34) & (2 * ((v28 ^ 0x34) & (2 * ((v28 ^ 0x34) & 0x36 ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26))) ^ 0xC2) << 8) | (((v27 ^ (2 * ((v27 ^ 0x34) & (2 * ((v27 ^ 0x34) & (2 * ((v27 ^ 0x34) & (2 * ((v27 ^ 0x34) & (2 * ((v27 ^ 0x34) & (2 * (((4 * (((v27 & 6) >> 1) & 3)) | 0x32) & (v27 ^ 0x34) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25))) ^ 6) << 16);
  v30 = STACK[0x5540];
  LOBYTE(v25) = STACK[0x5540] & 0x2A ^ 0xDB;
  v31 = ((v30 ^ (2 * ((v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & 0x1E ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25))) ^ 0x758675) & ~v29 | v29 & 0x8A7900;
  v32 = STACK[0x5600];
  v33 = STACK[0x5600] & 0xE ^ 0xFFFFFFED;
  LODWORD(STACK[0x5390]) = v32 ^ (2 * ((v32 ^ 0x34) & (2 * ((v32 ^ 0x34) & (2 * ((v32 ^ 0x34) & (2 * ((v32 ^ 0x34) & (2 * ((v32 ^ 0x34) & (2 * (v33 ^ v32 & 0x3A)) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33));
  v31 <<= 8;
  LODWORD(STACK[0x53B8]) = v31 ^ 0x271A0FF;
  LODWORD(STACK[0x53A8]) = v31 & 0xE9080700;
  v34 = STACK[0x5610];
  LOBYTE(v31) = STACK[0x5610] & 0xBC ^ 4;
  LOBYTE(v33) = v34 ^ (2 * ((v34 ^ 0x34) & (2 * ((v34 ^ 0x34) & (2 * ((v34 ^ 0x34) & (2 * ((v34 ^ 0x34) & (2 * ((v34 ^ 0x34) & (2 * v31) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31));
  v35 = STACK[0x5640];
  LOBYTE(v34) = STACK[0x5640] & 0xFA ^ 0x23;
  v36 = v33;
  LOBYTE(v33) = v35 ^ (2 * ((v35 ^ 0x34) & (2 * ((v35 ^ 0x34) & (2 * ((v35 ^ 0x34) & (2 * ((v35 ^ 0x34) & (2 * ((v35 ^ 0x34) & (2 * (v34 ^ v35 & 0xE)) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ 0xFA;
  LODWORD(STACK[0x53A0]) = v36;
  LOBYTE(v23) = v12 & 0xC2 ^ 0xF;
  v37 = ((((v36 << 16) | (v33 << 8)) ^ 0x3B3FF) & ((v12 ^ (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & 0x36 ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23))) ^ 0x9BB3A6) | ((v36 << 16) | (v33 << 8)) & 0x644C00) << 8;
  LODWORD(STACK[0x5398]) = v37 ^ 0x1BFF;
  LODWORD(STACK[0x5600]) = v37 & 0xD0FEE000;
  LOBYTE(v37) = v11 & 0x82 ^ 0xAF;
  LOBYTE(v34) = v16 & 0xDE ^ 0x95;
  v38 = (((v16 ^ (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * (v34 ^ v16 & 0xAA)) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34))) ^ 0xDE) << 8) | (((v11 ^ (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & 0x36 ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37))) ^ 0x82) << 16);
  LOBYTE(v37) = v15 & 0x8C ^ 0x2C;
  v39 = ((v15 ^ (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * v37) ^ v37)) ^ v37)) ^ v37)) ^ v37))) ^ 0x7282A3) & ~v38 | v38 & 0x8D7D00;
  v40 = a7 & 0xFFFFFFB4 | 0xB;
  v41 = v40 ^ a7 & 0x7E;
  LODWORD(STACK[0x5378]) = a7 ^ (2 * ((a7 ^ 0x34) & (2 * ((a7 ^ 0x34) & (2 * ((a7 ^ 0x34) & (2 * ((a7 ^ 0x34) & (2 * ((a7 ^ 0x34) & (2 * ((a7 ^ 0x34) & (2 * v40) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ v41));
  v39 <<= 8;
  LODWORD(STACK[0x5388]) = v39 ^ 0x2CC0FF;
  LODWORD(STACK[0x5370]) = v39 & 0xCFD31B00;
  LOBYTE(v39) = a3 & 0x2C ^ 0x5C;
  LOBYTE(v40) = (a3 ^ 0x34) & (2 * ((a3 ^ 0x34) & (2 * ((a3 ^ 0x34) & (2 * ((a3 ^ 0x34) & (2 * v39) ^ v39)) ^ v39)) ^ v39)) ^ v39;
  LOBYTE(v39) = a8 & 0xB0 | 6;
  LOBYTE(v33) = (a4 & 0xB4 | 0x41) ^ a4 & 0x82;
  v42 = (((a3 ^ (2 * v40)) ^ 0x2C) << 16) | (((a4 ^ (2 * ((a4 ^ 0x34) & (2 * ((a4 ^ 0x34) & (2 * ((a4 ^ 0x34) & (2 * ((a4 ^ 0x34) & (2 * ((a4 ^ 0x34) & (2 * (a4 & (2 * v33) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33))) ^ 0x36) << 8);
  v43 = ((a8 ^ (2 * ((a8 ^ 0x34) & (2 * ((a8 ^ 0x34) & (2 * ((a8 ^ 0x34) & (2 * ((a8 ^ 0x34) & (2 * ((a8 ^ 0x34) & (2 * v39) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39))) ^ 0x89CF9F) & ~v42 | v42 & 0x763000;
  v44 = v10 & 0x3E ^ 0xFFFFFFC5;
  LODWORD(STACK[0x42F0]) = v10 ^ (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * (v44 ^ v10 & 0xA)) ^ v44)) ^ v44)) ^ v44)) ^ v44)) ^ v44));
  v43 <<= 8;
  LODWORD(STACK[0x5380]) = v43 ^ 0x223010FF;
  LODWORD(STACK[0x5640]) = v43 & 0x5545ED00;
  LOBYTE(v43) = v9 & 0x46 ^ 0xC9;
  LOBYTE(v44) = v8 & 0xFA ^ 0x23;
  v45 = (((v8 ^ (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * (v44 ^ v8 & 0xE)) ^ v44)) ^ v44)) ^ v44)) ^ v44)) ^ v44))) ^ 0xFA) << 8) | (((v9 ^ (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * (v43 ^ v9 & 0x32)) ^ v43)) ^ v43)) ^ v43)) ^ v43)) ^ v43))) ^ 0x46) << 16);
  LOBYTE(v43) = v14 & 0xB2 ^ 7;
  v46 = ((v14 ^ (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * (v43 ^ v14 & 6)) ^ v43)) ^ v43)) ^ v43)) ^ v43)) ^ v43))) ^ 0x946CED) & ~v45 | v45 & 0x6B9300;
  v47 = (v13 & 0xB4 | 2) ^ v13 & 0xC;
  LODWORD(STACK[0x42D8]) = v13 ^ (2 * ((v13 ^ 0x34) & (2 * ((v13 ^ 0x34) & (2 * ((v13 ^ 0x34) & (2 * ((v13 ^ 0x34) & (2 * ((v13 ^ 0x34) & (2 * v47) ^ v47)) ^ v47)) ^ v47)) ^ v47)) ^ v47));
  LODWORD(STACK[0x5358]) = (v46 << 8) ^ 0x4B0200FF;
  LODWORD(STACK[0x5368]) = (v46 << 8) & 0x20B9E600;
  v48 = STACK[0x5590];
  LOBYTE(v47) = *(STACK[0x5590] + 372);
  LOBYTE(v46) = v47 & 0xD4 ^ 0x90;
  v49 = STACK[0x5730];
  v50 = *(STACK[0x5730] + 1700);
  v51 = v50 & 0xFFFFFFEA ^ 0x3B;
  LODWORD(STACK[0x5500]) = (v50 ^ 0x34) & (2 * ((v50 ^ 0x34) & (2 * ((v50 ^ 0x34) & (2 * ((v50 ^ 0x34) & (2 * ((v50 ^ 0x34) & (2 * ((v50 ^ 0x34) & 0x1E ^ v51)) ^ v51)) ^ v51)) ^ v51)) ^ v51)) ^ v51;
  LOBYTE(v51) = *(STACK[0x5720] + 1988);
  v52 = v51 & 0xF8 ^ 0x22;
  v53 = (((v47 ^ (2 * ((v47 ^ 0x34) & (2 * ((v47 ^ 0x34) & (2 * ((v47 ^ 0x34) & (2 * ((v47 ^ 0x34) & (2 * v46) | v46)) ^ v46)) ^ v46)) ^ v46))) ^ 0xD4) << 16) | (((v51 ^ (2 * ((v51 ^ 0x34) & (2 * ((v51 ^ 0x34) & (2 * ((v51 ^ 0x34) & (2 * ((v51 ^ 0x34) & (2 * ((v51 ^ 0x34) & (2 * v52) ^ v52)) ^ v52)) ^ v52)) ^ v52)) ^ v52))) ^ 0xF8) << 8);
  LOBYTE(v46) = v50 & 0xEC ^ 0xBC;
  v54 = ((v50 ^ (2 * ((v50 ^ 0x34) & (2 * ((v50 ^ 0x34) & (2 * ((v50 ^ 0x34) & (2 * ((v50 ^ 0x34) & (2 * v46) ^ v46)) ^ v46)) ^ v46)) ^ v46))) ^ 0xE7ABAF) & ~v53 | v53 & 0x185400;
  v55 = *(STACK[0x5760] + 1389);
  v56 = v55 & 0xFFFFFF98 ^ 0x32;
  LODWORD(STACK[0x4290]) = v55 ^ (2 * ((v55 ^ 0x34) & (2 * ((v55 ^ 0x34) & (2 * ((v55 ^ 0x34) & (2 * ((v55 ^ 0x34) & (2 * ((v55 ^ 0x34) & (2 * v56) ^ v56)) ^ v56)) ^ v56)) ^ v56)) ^ v56));
  v54 <<= 8;
  LODWORD(STACK[0x42E8]) = v54 ^ 0x181418FF;
  LODWORD(STACK[0x5530]) = v54 & 0x846BA700;
  v57 = STACK[0x5790];
  LOBYTE(v54) = *(STACK[0x5790] + 2921);
  LOBYTE(v55) = v54 & 0x9A ^ 0xB3;
  LOBYTE(v22) = v54 ^ (2 * ((v54 ^ 0x34) & (2 * ((v54 ^ 0x34) & (2 * ((v54 ^ 0x34) & (2 * ((v54 ^ 0x34) & (2 * ((v54 ^ 0x34) & (2 * (v55 ^ v54 & 0x2E)) ^ v55)) ^ v55)) ^ v55)) ^ v55)) ^ v55));
  LOBYTE(v54) = *STACK[0x5560];
  LOBYTE(v55) = v54 & 0xE4 ^ 0x38;
  v58 = STACK[0x56C0];
  v59 = *(STACK[0x56C0] + 926);
  LOBYTE(v34) = v59 & 0x8A ^ 0x2B;
  v60 = (((v54 ^ (2 * ((v54 ^ 0x34) & (2 * ((v54 ^ 0x34) & (2 * ((v54 ^ 0x34) & (2 * ((v54 ^ 0x34) & (2 * v55) ^ v55)) ^ v55)) ^ v55)) ^ v55))) ^ 0xE4) << 8) | (v22 << 16);
  v61 = (v60 ^ 0x2114FF) & ((v59 ^ (2 * ((v59 ^ 0x34) & (2 * ((v59 ^ 0x34) & (2 * ((v59 ^ 0x34) & (2 * ((v59 ^ 0x34) & (2 * ((v59 ^ 0x34) & (2 * ((v59 ^ 0x34) & 0x3E ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34))) ^ 0x231480) | v60 & 0xDCEB00;
  v62 = STACK[0x55D0];
  v63 = *(STACK[0x55D0] + 4089);
  v64 = v63 & 0xDE ^ 0x15;
  LODWORD(STACK[0x40D8]) = v63 ^ (2 * ((v63 ^ 0x34) & (2 * ((v63 ^ 0x34) & (2 * ((v63 ^ 0x34) & (2 * ((v63 ^ 0x34) & (2 * ((v63 ^ 0x34) & (2 * (v64 ^ v63 & 0xAAAAAAAA)) ^ v64)) ^ v64)) ^ v64)) ^ v64)) ^ v64));
  v61 <<= 8;
  LODWORD(STACK[0x42B0]) = v61 ^ 0xAD5FF;
  LODWORD(STACK[0x5360]) = v61 & 0xC4E12800;
  v65 = STACK[0x5750];
  LOBYTE(v63) = *(STACK[0x5750] + 1457);
  LOBYTE(v64) = v63 & 0xD6 ^ 0x11;
  LOBYTE(v41) = *(STACK[0x52D8] + 2845);
  v66 = (((v41 ^ (2 * (((2 * (((2 * (((2 * (((2 * (v41 ^ 0x34)) & 0x28 ^ 0x1C) & (v41 ^ 0x34))) ^ 0x1C) & (v41 ^ 0x34))) ^ 0x1C) & (v41 ^ 0x34))) ^ 0x5C) & (v41 ^ 0x34)))) ^ 0xDC) << 8) | (((v63 ^ (2 * ((v63 ^ 0x34) & (2 * ((v63 ^ 0x34) & (2 * ((v63 ^ 0x34) & (2 * ((v63 ^ 0x34) & (2 * ((v63 ^ 0x34) & (2 * (v64 ^ v63 & 0x22)) ^ v64)) ^ v64)) ^ v64)) ^ v64)) ^ v64))) ^ 0xD6) << 16);
  LOBYTE(v41) = *(v48 + 175);
  v67 = v41 & 0x52 ^ 0x57;
  v68 = ((v41 ^ (2 * ((v41 ^ 0x34) & (2 * ((v41 ^ 0x34) & (2 * ((v41 ^ 0x34) & (2 * ((v41 ^ 0x34) & (2 * ((v41 ^ 0x34) & (2 * (v67 ^ v41 & 0x26)) ^ v67)) ^ v67)) ^ v67)) ^ v67)) ^ v67))) ^ 0x7D5C46) & ~v66 | v66 & 0x82A300;
  v69 = STACK[0x57C0];
  v70 = *(STACK[0x57C0] + 1510);
  v71 = v70 & 0xFFFFFFD0 ^ 0xFFFFFF96;
  LODWORD(STACK[0x40C0]) = v70 ^ (2 * ((v70 ^ 0x34) & (2 * ((v70 ^ 0x34) & (2 * ((v70 ^ 0x34) & (2 * ((v70 ^ 0x34) & (2 * ((v70 ^ 0x34) & (2 * v71) ^ v71)) ^ v71)) ^ v71)) ^ v71)) ^ v71));
  v68 <<= 8;
  LODWORD(STACK[0x4280]) = v68 ^ 0x80826AFF;
  LODWORD(STACK[0x5540]) = v68 & 0x627D9500;
  v72 = *(v57 + 395);
  v73 = v72 & 0xFFFFFFE0 ^ 0xFFFFFFBE;
  LODWORD(STACK[0x4278]) = v72 ^ (2 * ((v72 ^ 0x34) & (2 * ((v72 ^ 0x34) & (2 * ((v72 ^ 0x34) & (2 * ((v72 ^ 0x34) & (2 * ((v72 ^ 0x34) & (2 * v73) ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ v73));
  LOBYTE(v72) = *(v62 + 2041);
  LOBYTE(v73) = v72 & 0x1E ^ 0x75;
  v74 = (v22 << 8) | (((v72 ^ (2 * ((v72 ^ 0x34) & (2 * ((v72 ^ 0x34) & (2 * ((v72 ^ 0x34) & (2 * ((v72 ^ 0x34) & (2 * ((v72 ^ 0x34) & (2 * (v73 ^ v72 & 0xAA)) ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ v73))) ^ 0x1E) << 16);
  LOBYTE(v72) = *(STACK[0x55C0] + 911);
  LOBYTE(v73) = v72 & 0x68 ^ 0x7A;
  v75 = ((v74 ^ 0x1961FF) & ((v72 ^ (2 * ((v72 ^ 0x34) & (2 * ((v72 ^ 0x34) & (2 * ((v72 ^ 0x34) & (2 * ((v72 ^ 0x34) & (2 * ((v72 ^ 0x34) & (2 * v73) ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ v73))) ^ 0x197BD5) | v74 & 0xE68400) << 8;
  LODWORD(STACK[0x40C8]) = v75 ^ 0x660002FF;
  LODWORD(STACK[0x42F8]) = v75 & 0x90EC7D00;
  v76 = STACK[0x5770];
  LOBYTE(v75) = *(STACK[0x5770] + 3414);
  LOBYTE(v72) = v75 & 0x7E ^ 0xE5;
  LOBYTE(v73) = *(STACK[0x5580] + 1146);
  LOBYTE(v44) = v73 & 0xD4 ^ 0x10;
  v77 = (((v73 ^ (2 * ((v73 ^ 0x34) & (2 * ((v73 ^ 0x34) & (2 * ((v73 ^ 0x34) & (2 * ((v73 ^ 0x34) & (2 * v44) | v44)) ^ v44)) ^ v44)) ^ v44))) ^ 0xD4) << 8) | (((v75 ^ (2 * ((v75 ^ 0x34) & (2 * ((v75 ^ 0x34) & (2 * ((v75 ^ 0x34) & (2 * ((v75 ^ 0x34) & (2 * ((v75 ^ 0x34) & (2 * (v72 ^ v75 & 0xA)) ^ v72)) ^ v72)) ^ v72)) ^ v72)) ^ v72))) ^ 0x7E) << 16);
  v78 = *(v69 + 2352);
  LOBYTE(v75) = v78 & 0x70 ^ 0xE6;
  v79 = ((v78 ^ (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * v75) ^ v75)) ^ v75)) ^ v75)) ^ v75)) ^ v75))) ^ 0x9718D5) & ~v77 | v77 & 0x68E700;
  v80 = v58[1222];
  v81 = v80 & 0xFFFFFFE8 ^ 0x3A;
  LODWORD(STACK[0x40A0]) = v80 ^ (2 * ((v80 ^ 0x34) & (2 * ((v80 ^ 0x34) & (2 * ((v80 ^ 0x34) & (2 * ((v80 ^ 0x34) & (2 * ((v80 ^ 0x34) & (2 * v81) ^ v81)) ^ v81)) ^ v81)) ^ v81)) ^ v81));
  v79 <<= 8;
  LODWORD(STACK[0x40B8]) = v79 ^ 0x20A60AFF;
  LODWORD(STACK[0x5520]) = v79 & 0xCF41F400;
  LOBYTE(v79) = *(STACK[0x5620] + 2299);
  LOBYTE(v80) = v79 & 0xFC ^ 0xA4;
  v82 = STACK[0x57B0];
  LOBYTE(v81) = *(STACK[0x57B0] + 683);
  LOBYTE(v73) = v81 & 0x96 ^ 0x31;
  v83 = (((v79 ^ (2 * ((v79 ^ 0x34) & (2 * ((v79 ^ 0x34) & (2 * ((v79 ^ 0x34) & (2 * ((v79 ^ 0x34) & (2 * ((v79 ^ 0x34) & (2 * v80) ^ v80)) ^ v80)) ^ v80)) ^ v80)) ^ v80))) ^ 0xFC) << 16) | (((v81 ^ (2 * ((v81 ^ 0x34) & (2 * ((v81 ^ 0x34) & (2 * ((v81 ^ 0x34) & (2 * ((v81 ^ 0x34) & (2 * ((v81 ^ 0x34) & (2 * (v73 ^ v81 & 0x22)) ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ v73))) ^ 0x96) << 8);
  LOBYTE(v80) = *(v62 + 2390);
  LOBYTE(v56) = v80 & 0x9A ^ 0x33;
  v84 = ((v80 ^ (2 * ((v80 ^ 0x34) & (2 * ((v80 ^ 0x34) & (2 * ((v80 ^ 0x34) & (2 * ((v80 ^ 0x34) & (2 * ((v80 ^ 0x34) & (2 * (v56 ^ v80 & 0x2E)) ^ v56)) ^ v56)) ^ v56)) ^ v56)) ^ v56))) ^ 0x959E69) & ~v83 | v83 & 0x6A6100;
  v85 = STACK[0x5710];
  LOBYTE(v56) = *(STACK[0x5710] + 1275);
  LOBYTE(v80) = v56 & 0x60 ^ 0xFE;
  LOBYTE(v56) = v56 ^ (2 * ((v56 ^ 0x34) & (2 * ((v56 ^ 0x34) & (2 * ((v56 ^ 0x34) & (2 * ((v56 ^ 0x34) & (2 * ((v56 ^ 0x34) & (2 * v80) ^ v80)) ^ v80)) ^ v80)) ^ v80)) ^ v80));
  v86 = STACK[0x56D0];
  v87 = *(STACK[0x56D0] + 1791);
  v88 = (v87 & 0xFFFFFFB4 | 0x43) ^ v87 & 0xFFFFFF8E;
  LODWORD(STACK[0x4090]) = v87 ^ (2 * ((v87 ^ 0x34) & (2 * ((v87 ^ 0x34) & (2 * ((v87 ^ 0x34) & (2 * ((v87 ^ 0x34) & (2 * ((v87 ^ 0x34) & (2 * (v87 & (2 * v88) ^ v88)) ^ v88)) ^ v88)) ^ v88)) ^ v88)) ^ v88));
  v84 <<= 8;
  LODWORD(STACK[0x40AC]) = v84 ^ 0x204108FF;
  LODWORD(STACK[0x4298]) = v84 & 0xCB203400;
  LOBYTE(v84) = *(v82 + 3581);
  LOBYTE(v87) = v84 & 0xF6 ^ 0xA1;
  LOBYTE(v88) = v49[16];
  LOBYTE(v73) = v88 & 0x10 ^ 0xF6;
  v89 = (((v88 ^ (2 * ((v88 ^ 0x34) & (2 * ((v88 ^ 0x34) & (2 * ((v88 ^ 0x34) & (2 * ((v88 ^ 0x34) & (2 * ((v88 ^ 0x34) & (2 * v73) ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ v73))) ^ 0x10) << 8) | (((v84 ^ (2 * ((v84 ^ 0x34) & (2 * ((v84 ^ 0x34) & (2 * ((v84 ^ 0x34) & (2 * ((v84 ^ 0x34) & (2 * ((v84 ^ 0x34) & (2 * (v84 & (2 * v87) ^ v87)) ^ v87)) ^ v87)) ^ v87)) ^ v87)) ^ v87))) ^ 0xF6) << 16);
  v90 = (v56 ^ 0xBA9C41) & ~v89 | v89 & 0x456300;
  v91 = v76[3505];
  v92 = v91 & 0x4A ^ 0x4B;
  LODWORD(STACK[0x4078]) = v91 ^ (2 * ((v91 ^ 0x34) & (2 * ((v91 ^ 0x34) & (2 * ((v91 ^ 0x34) & (2 * ((v91 ^ 0x34) & (2 * ((v91 ^ 0x34) & (2 * ((v91 ^ 0x34) & (2 * v92) ^ v92)) ^ v92)) ^ v92)) ^ v92)) ^ v92)) ^ v92));
  v90 <<= 8;
  LODWORD(STACK[0x4098]) = v90 ^ 0x56158FF;
  LODWORD(STACK[0x5610]) = v90 & 0x509E8700;
  LOBYTE(v91) = v49[1260];
  v93 = STACK[0x5740];
  LOBYTE(v73) = *(STACK[0x5740] + 3232);
  LOBYTE(v71) = v73 & 0x1C ^ 0x74;
  v94 = (v73 ^ (2 * ((v73 ^ 0x34) & (2 * ((v73 ^ 0x34) & (2 * ((v73 ^ 0x34) & (2 * ((v73 ^ 0x34) & (2 * v71) ^ v71)) ^ v71)) ^ v71)) ^ v71))) << 8;
  v95 = v94 & 0xFF00FFFF | (((v91 ^ (2 * (((2 * (((2 * (((2 * (((2 * (v91 ^ 0x34)) & 0x38 ^ 0x1C) & (v91 ^ 0x34))) ^ 0x1C) & (v91 ^ 0x34))) ^ 0x1C) & (v91 ^ 0x34))) ^ 0x5C) & (v91 ^ 0x34)))) ^ 0xDC) << 16);
  LOBYTE(v63) = *(v85 + 1571);
  LOBYTE(v73) = v63 & 0xAC ^ 0x1C;
  LODWORD(STACK[0x4068]) = (v95 ^ 0xFEC0FF) & ((v63 ^ (2 * ((v63 ^ 0x34) & (2 * ((v63 ^ 0x34) & (2 * ((v63 ^ 0x34) & (2 * ((v63 ^ 0x34) & (2 * v73) ^ v73)) ^ v73)) ^ v73)) ^ v73))) ^ 0xFEC848) | v95 & 0x13700;
  v96 = *(v69 + 941);
  v97 = 2 * ((v96 ^ 0x34) & (2 * ((v96 ^ 0x34) & (2 * ((v96 ^ 0x34) & (2 * (v96 & 0xFFFFFFB4)) ^ v96 & 0xFFFFFFB4)) ^ v96 & 0xFFFFFFB4)) ^ v96 & 0xFFFFFFB4);
  LODWORD(STACK[0x4060]) = v96 ^ (2 * ((v97 ^ v96) & 0x34 ^ v97 & v96));
  LOBYTE(v96) = v65[2936];
  LOBYTE(v97) = v96 & 0xF6 ^ 0x21;
  LOBYTE(v73) = *(v93 + 1874);
  LOBYTE(v71) = v73 & 0x50 ^ 0xD6;
  v98 = (v73 ^ (2 * ((v73 ^ 0x34) & (2 * ((v73 ^ 0x34) & (2 * ((v73 ^ 0x34) & (2 * ((v73 ^ 0x34) & (2 * ((v73 ^ 0x34) & (2 * v71) ^ v71)) ^ v71)) ^ v71)) ^ v71)) ^ v71)));
  LODWORD(STACK[0x4080]) = v98;
  v99 = (v98 << 8) & 0xFF00FFFF | (((v96 ^ (2 * ((v96 ^ 0x34) & (2 * ((v96 ^ 0x34) & (2 * ((v96 ^ 0x34) & (2 * ((v96 ^ 0x34) & (2 * ((v96 ^ 0x34) & (2 * (v96 & (2 * v97) ^ v97)) ^ v97)) ^ v97)) ^ v97)) ^ v97)) ^ v97))) ^ 0xF6) << 16);
  LOBYTE(v96) = v58[1457];
  LOBYTE(v97) = v96 & 0x14 ^ 0x70;
  v100 = (v99 ^ 0xDDA0FF) & ((v96 ^ (2 * ((v96 ^ 0x34) & (2 * ((v96 ^ 0x34) & (2 * ((v96 ^ 0x34) & (2 * ((v96 ^ 0x34) & (2 * v97) ^ v97)) ^ v97)) ^ v97)) ^ v97))) ^ 0xDDB0B9) | v99 & 0x224F00;
  v101 = *(STACK[0x55A0] + 2223);
  v102 = v101 & 0x4E ^ 0xFFFFFFCD;
  LODWORD(STACK[0x4050]) = v101 ^ (2 * ((v101 ^ 0x34) & (2 * ((v101 ^ 0x34) & (2 * ((v101 ^ 0x34) & (2 * ((v101 ^ 0x34) & (2 * ((v101 ^ 0x34) & (2 * (v102 ^ v101 & 0x3A)) ^ v102)) ^ v102)) ^ v102)) ^ v102)) ^ v102));
  v100 <<= 8;
  LODWORD(STACK[0x4070]) = v100 ^ 0x220E00FF;
  LODWORD(STACK[0x53D8]) = v100 & 0x9D615300;
  LOBYTE(v100) = *(v57 + 228);
  LOBYTE(v61) = v100 & 0xD6 ^ 0x91;
  LOBYTE(v100) = v100 ^ (2 * ((v100 ^ 0x34) & (2 * ((v100 ^ 0x34) & (2 * ((v100 ^ 0x34) & (2 * ((v100 ^ 0x34) & (2 * ((v100 ^ 0x34) & (2 * (v61 ^ v100 & 0x22)) ^ v61)) ^ v61)) ^ v61)) ^ v61)) ^ v61));
  v103 = STACK[0x55E0];
  LOBYTE(v61) = *(STACK[0x55E0] + 3209);
  LOBYTE(v101) = v61 & 0xA2 ^ 0x1F;
  v104 = (((v50 ^ (2 * LOBYTE(STACK[0x5500]))) ^ 0xEA) << 8) | (((v61 ^ (2 * ((v61 ^ 0x34) & (2 * ((v61 ^ 0x34) & (2 * ((v61 ^ 0x34) & (2 * ((v61 ^ 0x34) & (2 * ((v61 ^ 0x34) & (2 * ((v61 ^ 0x34) & 0x16 ^ v101)) ^ v101)) ^ v101)) ^ v101)) ^ v101)) ^ v101))) ^ 0xA2) << 16);
  v105 = (v100 ^ 0xFD0674) & ~v104 | v104 & 0x2F900;
  v106 = v65[99];
  v107 = v106 & 0xDE ^ 0xFFFFFF95;
  LODWORD(STACK[0x4044]) = v106 ^ (2 * ((v106 ^ 0x34) & (2 * ((v106 ^ 0x34) & (2 * ((v106 ^ 0x34) & (2 * ((v106 ^ 0x34) & (2 * ((v106 ^ 0x34) & (2 * (v107 ^ v106 & 0xAAAAAAAA)) ^ v107)) ^ v107)) ^ v107)) ^ v107)) ^ v107));
  v105 <<= 8;
  LODWORD(STACK[0x4058]) = v105 ^ 0x114FF;
  LODWORD(STACK[0x40B0]) = v105 & 0x93F86900;
  LOBYTE(v105) = *(v86 + 1882);
  LOBYTE(v106) = v105 & 0x5E ^ 0x55;
  LOBYTE(v107) = *(STACK[0x52B0] + 2185);
  LOBYTE(v73) = v107 & 0xA ^ 0x6B;
  v108 = (((v105 ^ (2 * ((v105 ^ 0x34) & (2 * ((v105 ^ 0x34) & (2 * ((v105 ^ 0x34) & (2 * ((v105 ^ 0x34) & (2 * ((v105 ^ 0x34) & (2 * (v106 ^ v105 & 0xAA)) ^ v106)) ^ v106)) ^ v106)) ^ v106)) ^ v106))) ^ 0x5E) << 16) | (((v107 ^ (2 * ((v107 ^ 0x34) & (2 * ((v107 ^ 0x34) & (2 * ((v107 ^ 0x34) & (2 * ((v107 ^ 0x34) & (2 * ((v107 ^ 0x34) & (2 * ((v107 ^ 0x34) & 0x3E ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ v73))) ^ 0xA) << 8);
  LOBYTE(v106) = v76[2534];
  LOBYTE(v107) = v106 & 0xD8 ^ 0x92;
  v109 = STACK[0x5760];
  v110 = ((v108 ^ 0xBF99FF) & ((v106 ^ (2 * ((v106 ^ 0x34) & (2 * ((v106 ^ 0x34) & (2 * ((v106 ^ 0x34) & (2 * ((v106 ^ 0x34) & (2 * ((v106 ^ 0x34) & (2 * v107) ^ v107)) ^ v107)) ^ v107)) ^ v107)) ^ v107))) ^ 0x2B10FA) | v108 & 0xD4EF00) << 8;
  LODWORD(STACK[0x4048]) = v110 ^ 0x50C1D9FF;
  LODWORD(STACK[0x54F0]) = v110 & 0x872E2400;
  LOBYTE(v110) = *(v48 + 2079);
  LOBYTE(v107) = v110 & 0xEA ^ 0xBB;
  v111 = v94 & 0xFF00FFFF | (((v110 ^ (2 * ((v110 ^ 0x34) & (2 * ((v110 ^ 0x34) & (2 * ((v110 ^ 0x34) & (2 * ((v110 ^ 0x34) & (2 * ((v110 ^ 0x34) & (2 * ((v110 ^ 0x34) & 0x1E ^ v107)) ^ v107)) ^ v107)) ^ v107)) ^ v107)) ^ v107))) ^ 0xEA) << 16);
  LOBYTE(v61) = *STACK[0x5650];
  LOBYTE(v107) = v61 & 0xC ^ 0xEC;
  v112 = ((v111 ^ 0xFFFFE3FF) & ((v61 ^ (2 * ((v61 ^ 0x34) & (2 * ((v61 ^ 0x34) & (2 * ((v61 ^ 0x34) & (2 * ((v61 ^ 0x34) & (2 * v107) ^ v107)) ^ v107)) ^ v107)) ^ v107))) ^ 0x273E78) | v111 & 0xD8C100) << 8;
  LODWORD(STACK[0x4038]) = v112 ^ 0xD0008AFF;
  LODWORD(STACK[0x4088]) = v112 & 0x2AEB0100;
  v113 = *(v93 + 2625);
  v114 = v113 & 0x72 ^ 0xFFFFFFE7;
  LODWORD(STACK[0x4030]) = v113 ^ (2 * ((v113 ^ 0x34) & (2 * ((v113 ^ 0x34) & (2 * ((v113 ^ 0x34) & (2 * ((v113 ^ 0x34) & (2 * ((v113 ^ 0x34) & (2 * (v114 ^ v113 & 6)) ^ v114)) ^ v114)) ^ v114)) ^ v114)) ^ v114));
  v115 = STACK[0x5780];
  LOBYTE(v113) = *(STACK[0x5780] + 577);
  LOBYTE(v107) = v113 & 0xCE ^ 0x8D;
  LOBYTE(v73) = v76[8];
  LOBYTE(v86) = v73 & 0x3C ^ 0xC4;
  v116 = (((v73 ^ (2 * ((v73 ^ 0x34) & (2 * ((v73 ^ 0x34) & (2 * ((v73 ^ 0x34) & (2 * ((v73 ^ 0x34) & (2 * v86) ^ v86)) ^ v86)) ^ v86)) ^ v86))) ^ 0x3C) << 8) | (((v113 ^ (2 * ((v113 ^ 0x34) & (2 * ((v113 ^ 0x34) & (2 * ((v113 ^ 0x34) & (2 * ((v113 ^ 0x34) & (2 * ((v113 ^ 0x34) & (2 * (v107 ^ v113 & 0x3A)) ^ v107)) ^ v107)) ^ v107)) ^ v107)) ^ v107))) ^ 0xCE) << 16);
  LOBYTE(v113) = v65[1199];
  LOBYTE(v107) = v113 & 0xC8 ^ 0x8A;
  v117 = (((v113 ^ (2 * ((v113 ^ 0x34) & (2 * ((v113 ^ 0x34) & (2 * ((v113 ^ 0x34) & (2 * ((v113 ^ 0x34) & (2 * ((v113 ^ 0x34) & (2 * v107) | v107)) ^ v107)) ^ v107)) ^ v107)) ^ v107))) ^ 0x75DCB9) & ~v116 | v116 & 0x8A2300) << 8;
  LODWORD(STACK[0x4024]) = v117 ^ 0x2FF;
  LODWORD(STACK[0x53D0]) = v117 & 0xFFA39C00;
  LOBYTE(v117) = v49[1715];
  LOBYTE(v116) = v117 & 0x8A ^ 0xAB;
  LOBYTE(v107) = *(STACK[0x5308] + 1548);
  LOBYTE(v98) = v107 & 0x1C ^ 0x74;
  v118 = (((v107 ^ (2 * ((v107 ^ 0x34) & (2 * ((v107 ^ 0x34) & (2 * ((v107 ^ 0x34) & (2 * ((v107 ^ 0x34) & (2 * v98) ^ v98)) ^ v98)) ^ v98)) ^ v98))) ^ 0x1C) << 8) | (((v117 ^ (2 * ((v117 ^ 0x34) & (2 * ((v117 ^ 0x34) & (2 * ((v117 ^ 0x34) & (2 * ((v117 ^ 0x34) & (2 * ((v117 ^ 0x34) & (2 * ((v117 ^ 0x34) & 0x3E ^ v116)) ^ v116)) ^ v116)) ^ v116)) ^ v116)) ^ v116))) ^ 0x8A) << 16);
  LOBYTE(v117) = v58[1920];
  LOBYTE(v116) = v117 & 0xA ^ 0x6B;
  v119 = ((v117 ^ (2 * ((v117 ^ 0x34) & (2 * ((v117 ^ 0x34) & (2 * ((v117 ^ 0x34) & (2 * ((v117 ^ 0x34) & (2 * ((v117 ^ 0x34) & (2 * ((v117 ^ 0x34) & 0x3E ^ v116)) ^ v116)) ^ v116)) ^ v116)) ^ v116)) ^ v116))) ^ 0xD0AA68) & ~v118 | v118 & 0x2F5500;
  LOBYTE(v118) = v65[3998];
  LOBYTE(v116) = v118 & 0xEC ^ 0x3C;
  v120 = v118 ^ (2 * ((v118 ^ 0x34) & (2 * ((v118 ^ 0x34) & (2 * ((v118 ^ 0x34) & (2 * ((v118 ^ 0x34) & (2 * v116) ^ v116)) ^ v116)) ^ v116)) ^ v116));
  v119 <<= 8;
  LODWORD(STACK[0x4020]) = v119 ^ 0x274194FF;
  LODWORD(STACK[0x4040]) = v119 & 0x81E4B00;
  v121 = *(STACK[0x5670] + 84);
  v122 = v121 & 0x20 | 0x5E;
  LOBYTE(v116) = *(STACK[0x5700] + 501);
  LOBYTE(v107) = (v116 & 0xB4 | 0x49) ^ v116 & 0xF2;
  v123 = v121 ^ (2 * ((v121 ^ 0x34) & (2 * ((v121 ^ 0x34) & (2 * ((v121 ^ 0x34) & (2 * ((v121 ^ 0x34) & (2 * ((v121 ^ 0x34) & (2 * v122) ^ v122)) ^ v122)) ^ v122)) ^ v122)) ^ v122));
  LOBYTE(v122) = v116 ^ (2 * ((v116 ^ 0x34) & (2 * ((v116 ^ 0x34) & (2 * ((v116 ^ 0x34) & (2 * ((v116 ^ 0x34) & (2 * ((v116 ^ 0x34) & (2 * ((v116 ^ 0x34) & (2 * v107) ^ v107)) ^ v107)) ^ v107)) ^ v107)) ^ v107)) ^ v107)) ^ 0x46;
  LOBYTE(v116) = *(STACK[0x5720] + 2481);
  LOBYTE(v93) = v116 & 0x8A ^ 0xAB;
  v124 = (v122 << 8) & 0xEB00 | ((v123 ^ 0x20) << 16) | ((v116 ^ (2 * ((v116 ^ 0x34) & (2 * ((v116 ^ 0x34) & (2 * ((v116 ^ 0x34) & (2 * ((v116 ^ 0x34) & (2 * ((v116 ^ 0x34) & (2 * ((v116 ^ 0x34) & 0x3E ^ v93)) ^ v93)) ^ v93)) ^ v93)) ^ v93)) ^ v93))) ^ 0x14E6) & ~(v122 << 8);
  LOBYTE(v93) = *(v115 + 3012);
  LOBYTE(v122) = v93 & 0x66 ^ 0xF9;
  LOBYTE(v102) = v93 ^ (2 * ((v93 ^ 0x34) & (2 * ((v93 ^ 0x34) & (2 * ((v93 ^ 0x34) & (2 * ((v93 ^ 0x34) & (2 * ((v93 ^ 0x34) & (2 * (v122 ^ v93 & 0x12)) ^ v122)) ^ v122)) ^ v122)) ^ v122)) ^ v122));
  v124 <<= 8;
  LODWORD(STACK[0x401C]) = v124 ^ 0xAAB11FF;
  LODWORD(STACK[0x5500]) = v124 & 0xF554CA00;
  LOBYTE(v124) = *(STACK[0x54B0] + 888);
  LOBYTE(v93) = v124 & 2 ^ 0xEF;
  LOBYTE(v122) = *(v115 + 2587);
  LOBYTE(v116) = v122 & 0x54 ^ 0x50;
  LODWORD(v93) = (((v122 ^ (2 * ((v122 ^ 0x34) & (2 * ((v122 ^ 0x34) & (2 * ((v122 ^ 0x34) & (2 * ((v122 ^ 0x34) & (2 * v116) | v116)) ^ v116)) ^ v116)) ^ v116))) ^ 0x54) << 8) | (((v124 ^ (2 * ((v124 ^ 0x34) & (2 * ((v124 ^ 0x34) & (2 * ((v124 ^ 0x34) & (2 * ((v124 ^ 0x34) & (2 * ((v124 ^ 0x34) & (2 * ((v124 ^ 0x34) & 0x36 ^ v93)) ^ v93)) ^ v93)) ^ v93)) ^ v93)) ^ v93))) ^ 2) << 16);
  LOBYTE(v124) = *(STACK[0x5680] + 395);
  LOBYTE(v122) = v124 & 0x8C ^ 0xAC;
  v125 = ((v124 ^ (2 * ((v124 ^ 0x34) & (2 * ((v124 ^ 0x34) & (2 * ((v124 ^ 0x34) & (2 * ((v124 ^ 0x34) & (2 * v122) ^ v122)) ^ v122)) ^ v122)) ^ v122))) ^ 0x151F26) & ~v93 | v93 & 0xEAE000;
  LOBYTE(v93) = v76[1859];
  LOBYTE(v122) = v93 & 0x10 ^ 0xF6;
  LOBYTE(v93) = v93 ^ (2 * ((v93 ^ 0x34) & (2 * ((v93 ^ 0x34) & (2 * ((v93 ^ 0x34) & (2 * ((v93 ^ 0x34) & (2 * ((v93 ^ 0x34) & (2 * v122) ^ v122)) ^ v122)) ^ v122)) ^ v122)) ^ v122));
  v125 <<= 8;
  LODWORD(STACK[0x4018]) = v125 ^ 0x4AC050FF;
  LODWORD(STACK[0x4028]) = v125 & 0xA52DAF00;
  LOBYTE(v125) = *(STACK[0x57A0] + 2610);
  LOBYTE(v122) = v125 & 0xC0 ^ 0x8E;
  LOBYTE(v125) = v125 ^ (2 * ((v125 ^ 0x34) & (2 * ((v125 ^ 0x34) & (2 * ((v125 ^ 0x34) & (2 * ((v125 ^ 0x34) & (2 * ((v125 ^ 0x34) & 0x1C ^ v122)) ^ v122)) ^ v122)) ^ v122)) ^ v122));
  LOBYTE(v122) = *STACK[0x52C8];
  LOBYTE(v116) = v122 & 2 ^ 0x6F;
  v126 = v94 & 0xFF00FFFF | (((v122 ^ (2 * ((v122 ^ 0x34) & (2 * ((v122 ^ 0x34) & (2 * ((v122 ^ 0x34) & (2 * ((v122 ^ 0x34) & (2 * ((v122 ^ 0x34) & (2 * ((v122 ^ 0x34) & 0x36 ^ v116)) ^ v116)) ^ v116)) ^ v116)) ^ v116)) ^ v116))) ^ 2) << 16);
  LOBYTE(v122) = v65[1123];
  LOBYTE(v116) = v122 & 0x6E ^ 0x7D;
  LOBYTE(v72) = v122 ^ (2 * ((v122 ^ 0x34) & (2 * ((v122 ^ 0x34) & (2 * ((v122 ^ 0x34) & (2 * ((v122 ^ 0x34) & (2 * ((v122 ^ 0x34) & (2 * (v116 ^ v122 & 0x1A)) ^ v116)) ^ v116)) ^ v116)) ^ v116)) ^ v116));
  v127 = ((v126 ^ 0xFFFFC7FF) & (v125 ^ 0x1BD9F5) | v126 & 0xE42600) << 8;
  LODWORD(STACK[0x4010]) = v127 ^ 0xE40240FF;
  LODWORD(STACK[0x53B0]) = v127 & 0x12F19E00;
  LOBYTE(v127) = *STACK[0x5480];
  LOBYTE(v122) = v127 & 0xF0 ^ 0xA6;
  LOBYTE(v116) = v76[2792];
  LOBYTE(v91) = v116 & 0xE4 ^ 0x38;
  v128 = (((v116 ^ (2 * ((v116 ^ 0x34) & (2 * ((v116 ^ 0x34) & (2 * ((v116 ^ 0x34) & (2 * ((v116 ^ 0x34) & (2 * v91) ^ v91)) ^ v91)) ^ v91)) ^ v91))) ^ 0xE4) << 8) | (((v127 ^ (2 * ((v127 ^ 0x34) & (2 * ((v127 ^ 0x34) & (2 * ((v127 ^ 0x34) & (2 * ((v127 ^ 0x34) & (2 * ((v127 ^ 0x34) & (2 * v122) ^ v122)) ^ v122)) ^ v122)) ^ v122)) ^ v122))) ^ 0xF0) << 16);
  v129 = STACK[0x5570];
  LOBYTE(v127) = *(STACK[0x5570] + 152);
  LOBYTE(v116) = v127 & 0xE6 ^ 0x39;
  v130 = ((v127 ^ (2 * ((v127 ^ 0x34) & (2 * ((v127 ^ 0x34) & (2 * ((v127 ^ 0x34) & (2 * ((v127 ^ 0x34) & (2 * ((v127 ^ 0x34) & (2 * (v116 ^ v127 & 0x12)) ^ v116)) ^ v116)) ^ v116)) ^ v116)) ^ v116))) ^ 0xFD889F) & ~v128 | v128 & 0x27700;
  v131 = *(v109 + 2026);
  v132 = v131 & 0xC6 ^ 0xFFFFFF89;
  LODWORD(STACK[0x4008]) = v131 ^ (2 * ((v131 ^ 0x34) & (2 * ((v131 ^ 0x34) & (2 * ((v131 ^ 0x34) & (2 * ((v131 ^ 0x34) & (2 * ((v131 ^ 0x34) & (2 * (v132 ^ v131 & 0x32)) ^ v132)) ^ v132)) ^ v132)) ^ v132)) ^ v132));
  LOBYTE(v131) = *(v103 + 2519);
  LOBYTE(v132) = v131 & 0xA4 | 0x18;
  LOBYTE(v116) = *(v129 + 1472);
  LOBYTE(v107) = v116 & 0x16 ^ 0xF1;
  v133 = (((v131 ^ (2 * ((v131 ^ 0x34) & (2 * ((v131 ^ 0x34) & (2 * ((v131 ^ 0x34) & (2 * ((v131 ^ 0x34) & (2 * v132) ^ v132)) ^ v132)) ^ v132)) ^ v132))) ^ 0xA4) << 16) | (((v116 ^ (2 * ((v116 ^ 0x34) & (2 * ((v116 ^ 0x34) & (2 * ((v116 ^ 0x34) & (2 * ((v116 ^ 0x34) & (2 * ((v116 ^ 0x34) & (2 * (v107 ^ v116 & 0x22)) ^ v107)) ^ v107)) ^ v107)) ^ v107)) ^ v107))) ^ 0x16) << 8);
  LOBYTE(v132) = *(v82 + 1237);
  LOBYTE(v116) = v132 & 0x9C ^ 0x34;
  v134 = (((v132 ^ (2 * ((v132 ^ 0x34) & (2 * ((v132 ^ 0x34) & (2 * ((v132 ^ 0x34) & (2 * ((v132 ^ 0x34) & (2 * v116) ^ v116)) ^ v116)) ^ v116)) ^ v116))) ^ 0xB00F2E) & ~v133 | v133 & 0x4FF000) << 8;
  LODWORD(STACK[0x4000]) = v134 ^ 0x4EC048FF;
  LODWORD(STACK[0x53C8]) = v134 & 0xA135B500;
  LODWORD(STACK[0x4290]) = (LODWORD(STACK[0x4068]) << 8) & 0xC00B0000;
  LODWORD(STACK[0x40A0]) = v120;
  LODWORD(STACK[0x4068]) = v102;
  LODWORD(STACK[0x4078]) = v93;
  LODWORD(STACK[0x5378]) = v72;
  LODWORD(STACK[0x40C0]) = (v130 << 8) & 0x12787300;
  LODWORD(STACK[0x4090]) = (v130 << 8) ^ 0x784FF;
  return (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x53E0])))();
}

uint64_t sub_1001769B4()
{
  STACK[0x57C0] = STACK[0xB3E8];
  v0 = STACK[0x57D8];
  STACK[0xA108] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1298]));
  return (*(v0 + 8 * (LODWORD(STACK[0x1294]) ^ (5117 * (LODWORD(STACK[0x1290]) != 23484992)))))();
}

uint64_t sub_100176A38()
{
  v2 = *(v0 + 544);
  v3 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v2 & 0x96E5DB78 | 0x691A2485) - 1831847764 + (v2 & 0x691A2480 | 0x96E5DB7A) + 1)) & 0xFFFFFFFFFFFFFFF8));
  v4 = (__ROR8__(v2 & 0xFFFFFFFFFFFFFFF8, 8) + v3) ^ 0xC2AF3EAA3FF1B8E4;
  v5 = v4 ^ __ROR8__(v3, 61);
  v6 = __ROR8__(v4, 8);
  v7 = (0x501CE505C7FB482CLL - ((v6 + v5) | 0x501CE505C7FB482CLL) + ((v6 + v5) | 0xAFE31AFA3804B7D3)) ^ 0xCA114E272089032FLL;
  v8 = v7 ^ __ROR8__(v5, 61);
  v9 = (__ROR8__(v7, 8) + v8) ^ 0x6FF046966119128DLL;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = __ROR8__(v9, 8);
  v12 = (((2 * (v11 + v10)) | 0x11EE50883D977152) - (v11 + v10) + 0x7708D7BBE1344757) ^ 0x2945B581C9BDAB82;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ v1;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = __ROR8__(v14, 8);
  v17 = __ROR8__((v16 + v15 - ((2 * (v16 + v15)) & 0x65C61AEB94DCCE70) + 0x32E30D75CA6E6738) ^ 0xEA24BE6A0077BEE6, 8);
  v18 = (v16 + v15 - ((2 * (v16 + v15)) & 0x65C61AEB94DCCE70) + 0x32E30D75CA6E6738) ^ 0xEA24BE6A0077BEE6 ^ __ROR8__(v15, 61);
  v19 = (((2 * (v17 + v18)) | 0x360440CF040957BCLL) - (v17 + v18) + 0x64FDDF987DFB5422) ^ 0xCF57214908B56851;
  v20 = (((__ROR8__(v19, 8) + (v19 ^ __ROR8__(v18, 61))) ^ 0x6F4F60BC0E025EE0) >> (8 * (v2 & 7u))) ^ *(v0 + 295);
  LODWORD(v17) = 5621 * v20 + 32028458 - 6152 * (((89362129 * (5621 * v20 + 32028458)) >> 32) >> 7);
  v21 = STACK[0xDCB8];
  v21[2822] = v21[v17];
  v22 = STACK[0xDC98] + 1;
  v23 = __ROR8__(v22 & 0xFFFFFFFFFFFFFFF8, 8);
  v24 = (v23 - 0x70824D863E123F43) ^ 0xA86A78D9F67FFA9ALL;
  v25 = (__ROR8__((v23 - 0x70824D863E123F43) ^ 0xD387EB17F911FF76, 8) + v24) ^ 0x3A7C64F71FBFC65BLL;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (0xBC30E508E09BE81DLL - ((v27 + v26) | 0xBC30E508E09BE81DLL) + ((v27 + v26) | 0x43CF1AF71F6417E2)) ^ 0xB80E957C8A0CD3A2;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (0xD14C195FE9EBE1BLL - ((v30 + v29) ^ 0x1DA6A924835B5D92 | 0xD14C195FE9EBE1BLL) + ((v30 + v29) ^ 0x1DA6A924835B5D92 | 0xF2EB3E6A016141E4)) ^ 0xA5A85921E1AD6545;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0x2854CB5A8BDB8317;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = __ROR8__((0xE455152E31688CBLL - ((v35 + v34) | 0xE455152E31688CBLL) + ((v35 + v34) | 0xF1BAAEAD1CE97734)) ^ 0x6C8B26BEF478CE8, 8);
  v37 = (0xE455152E31688CBLL - ((v35 + v34) | 0xE455152E31688CBLL) + ((v35 + v34) | 0xF1BAAEAD1CE97734)) ^ 0x6C8B26BEF478CE8 ^ __ROR8__(v34, 61);
  v38 = (((2 * (v36 + v37)) | 0xEA6E5E5EFBF81F4) - (v36 + v37) + 0x78AC8D0D08203F06) ^ 0x61E465C86CF470A7;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  LODWORD(v17) = (((0xFE0D4301B93305BALL - ((v40 + v39) | 0xFE0D4301B93305BALL) + ((v40 + v39) | 0x1F2BCFE46CCFA45)) ^ 0x955E3A0137A37467) >> (8 * (v22 & 7u))) ^ *v22;
  v21[1889] = v21[5621 * v17 + 32028458 - 6152 * (((89362129 * (5621 * v17 + 32028458)) >> 32) >> 7)];
  v21[736] = *(v0 + 467);
  v41 = STACK[0xDCA0];
  *(v0 + 552) = STACK[0xDCA0];
  v41 += 14;
  *(v0 + 560) = v41;
  *(v0 + 296) = v41;
  v42 = STACK[0x57D8];
  *(v0 + 280) = *(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x2326));
  return (*(v42 + 8 * (*(v0 + 3788) + 8890)))();
}

uint64_t sub_100176F8C()
{
  v2 = *(v1 - 0x683CBC57EAB92A36);
  STACK[0xAC80] = v2;
  return (*(STACK[0x57D8] + 8 * ((((((v0 - 10441) ^ (v2 == 0x308E083E0C524CBELL)) & 1) == 0) * ((v0 - 933408888) & 0x37A2DB5E ^ 0x5845)) ^ v0)))();
}

uint64_t sub_100177084@<X0>(unsigned int a1@<W8>)
{
  v4 = *v2;
  *v4 = *v1 & 0x1F;
  v5 = v1[2];
  v4[1] = 36;
  v4[2] = v5;
  v4[3] = 0;
  v6 = (a1 ^ 0x7F78) + v1[5] - 14764;
  v4[4] = 0;
  v4[5] = v6;
  return (*(v3 + 8 * ((252 * (v1[5] != 1200)) ^ a1)))();
}

uint64_t sub_1001770E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = (STACK[0x51B8] - 3862) | 0x422;
  v7 = STACK[0xBD78];
  v8 = STACK[0x57D8];
  v9 = STACK[0x3D1C];
  STACK[0x5F68] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x3D1C]));
  return (*(v8 + 8 * (v9 + v6 - 12127)))(a1, a6, a3, a4, a5, a6, 395, v7);
}

uint64_t sub_1001771B8()
{
  v0 = STACK[0x51B8] - 14580;
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9207)))();
  STACK[0x7690] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_100177210()
{
  v0 = STACK[0x2750];
  v1 = (LODWORD(STACK[0x2750]) + 1700386330) & 0x9AA639FD;
  STACK[0x7800] = STACK[0x5BB8] + 41;
  v2 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * v0);
  return (*(v2 + 8 * (v0 ^ 0x26C ^ v1)))();
}

uint64_t sub_100177268()
{
  v1 = STACK[0x4A20];
  *(v1 + 9376) = STACK[0x53C8];
  *(v1 + 9384) = STACK[0x5138];
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10017734C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v7 = LODWORD(STACK[0x51D0]) + 45 * (((v4 ^ (a3 + 137) ^ *(v6 + v5) ^ 0xFFFFFFE4) + 92) ^ ((*(v6 + v5) ^ 0x11) - 17) ^ ((*(v6 + v5) ^ 8) - 8));
  v8 = (LOBYTE(STACK[0x51D0]) + 45 * (((v4 ^ (a3 - 119) ^ *(v6 + v5) ^ 0xE4) + 92) ^ (((*(v6 + v5) ^ 0x11) - 17) ^ ((*(v6 + v5) ^ 8) - 8)))) & 0x45 ^ 0x4B;
  v9 = v7 ^ 0x36;
  v10 = v7 ^ (2 * (v9 & (2 * (v9 & (2 * (v9 & (2 * (v9 & (2 * (v9 & (2 * (((2 * v7) & 0x6E ^ 0x72) & v9 ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8));
  LODWORD(STACK[0x5328]) = -26 - 85 * (((v10 ^ 0xF) - 30) ^ ((v10 ^ 0xFFFFFFB4) + 91) ^ ((v10 ^ 0xFFFFFF90) + 127));
  v11 = *(STACK[0x57D8] + 8 * ((14282 * (v4 < 0xA13F6D6)) ^ (v4 - 2096174779)));
  LODWORD(STACK[0x5298]) = a4;
  return v11();
}

uint64_t sub_100177480()
{
  v2 = v0 - 143115759;
  v3 = STACK[0x9584];
  v4 = 6 * (v0 ^ 0x439) - 769906630;
  if (LODWORD(STACK[0x9584]) == v4)
  {
    v5 = -143113071;
  }

  else
  {
    v5 = -143155722;
  }

  v6 = v1 == v2;
  v7 = v1 == v2;
  if (!v6)
  {
    v5 = v1;
  }

  LODWORD(STACK[0xDB74]) = v5;
  if (v3 != v4)
  {
    v7 = 0;
  }

  return (*(STACK[0x57D8] + 8 * ((24012 * v7) ^ v0)))();
}

uint64_t sub_100177524(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v13 = *(*(v10 + 4000) + 4 * (a8 % (v11 + 8512)));
  *(*(v10 + 4008) + a5 - 5896 * ((((a5 >> 3) * v8) >> 64) >> 4)) = (((v13 ^ 0xC) - 112) ^ ((v13 ^ v12) + 84) ^ ((v13 ^ 0x2D) - 81)) - 87;
  return (*(STACK[0x57D8] + 8 * ((v11 + 29201) | (4 * ((v9 | a4) >= 0)))))(a1, a2, a3, (a4 - 1), a5 + 3903);
}

uint64_t sub_100177754@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = v4 - 1;
  *(a1 + v6 + v3) = *(v5 + v6 + v2) ^ 0xF;
  return (*(STACK[0x57D8] + 8 * (a2 | (4 * (v6 != 0)))))();
}

uint64_t sub_100177784@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 592) = a1;
  *(v2 + 600) = (v1 - 1723123136) ^ (1917435887 * ((2 * (v3 & 0x5C733B68) - v3 + 596427922) ^ 0xC5379F94));
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v1 + 19813)))(v4 - 240);
  return (*(v5 + 8 * v1))(v6);
}

uint64_t sub_100177910()
{
  STACK[0x86A8] = STACK[0x8088];
  v1 = STACK[0x57D8];
  STACK[0x9AC0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x20A7 ^ ((v0 + 11347) | 0x400))))(15115, 4404, 0x683CBC57EAB92A3ELL, 22622);
}

uint64_t sub_100177A28()
{
  v1 = STACK[0x51B8];
  v2 = STACK[0x7590];
  v3 = STACK[0x51B8] - 1079089617;
  v4 = 551690071 * ((0x17DFA18CAD752960 - ((v0 - 240) | 0x17DFA18CAD752960) + STACK[0x1F70]) ^ 0x99BD0CBD1C6785C8);
  v5 = STACK[0x51B8] + 2146793162 - v4;
  LODWORD(STACK[0x1D4CC]) = v5;
  LODWORD(STACK[0x1D4C0]) = v3 ^ v4;
  STACK[0x1D4D8] = 0xA27FB32401E5D79FLL - v4;
  LODWORD(STACK[0x1D4C8]) = v5 - 66;
  LODWORD(STACK[0x1D4C4]) = v4 ^ (v1 + 2146793162) ^ 0xD14;
  STACK[0x1D4E0] = v2 + v4;
  LODWORD(STACK[0x1D4D0]) = v4;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x2411)))(v0 - 240);
  return (*(v6 + 8 * SLODWORD(STACK[0x1D4D4])))(v7);
}

uint64_t sub_100177B0C@<X0>(uint64_t a1@<X7>, unint64_t a2@<X8>)
{
  v2 = STACK[0x2D50];
  v3 = __ROR8__(a2 & 0xFFFFFFFFFFFFFFF8, 8);
  v4 = (v3 + a1) ^ 0x19BD561D2BFA5152;
  v5 = (__ROR8__((v3 + a1) ^ 0x5662268C9D216ADLL, 8) + v4) ^ (STACK[0x2D50] + 21379) ^ 0xFDA8E324376278C1;
  v6 = v5 ^ __ROR8__(v4, 61);
  v7 = __ROR8__(v5, 8);
  v8 = (0x7273376A9A9221EFLL - ((v7 + v6) | 0x7273376A9A9221EFLL) + ((v7 + v6) | 0x8D8CC895656DDE10)) ^ 0x9DB4ACA047A0C982;
  v9 = v8 ^ __ROR8__(v6, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0xBFF6C21B210E4F37;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0x9882E727DB37CF94;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0x5FD252103B569EALL;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0x7B5626353E243BAALL;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  *a2 = (((((2 * (v18 + v17)) & 0xAC95EE85BC9F1E9CLL) - (v18 + v17) + 0x29B508BD21B070B1) ^ 0x86AEDC50ABD666FALL) >> (8 * (a2 & 7u))) ^ 0xB;
  return (*(STACK[0x57D8] + 8 * (v2 + 4885)))(0x1C64917143BAF700);
}

uint64_t sub_100177CE0@<X0>(int a1@<W8>)
{
  v5 = v4 - 0x30BDFED8F32E6715;
  v6 = STACK[0x57D8];
  STACK[0x9390] = *(STACK[0x57D8] + 8 * a1);
  STACK[0x6798] = v5;
  STACK[0xAA50] = v3;
  return (*(v6 + 8 * ((v2 * (((v1 + 221528203) & 0xF2CBFD7F) - 23016 + ((v1 - 6571) | 0x10E))) ^ v1)))();
}

uint64_t sub_100177D68()
{
  LODWORD(STACK[0xC2AC]) = v1;
  v3 = STACK[0x5CA0];
  v4 = 1534937323 * ((~(STACK[0x2070] | 0x62F5BD17603B976ALL) + (STACK[0x2070] & 0x62F5BD17603B976ALL)) ^ 0x72260031E22FBA52);
  STACK[0x1D4C0] = v4;
  LODWORD(STACK[0x1D4CC]) = v4 + v0 + 1451493860;
  LODWORD(STACK[0x1D4D0]) = v4;
  STACK[0x1D4D8] = v3 + v4;
  LODWORD(STACK[0x1D4E0]) = v4 + v0 + 1617995237;
  LODWORD(STACK[0x1D4D4]) = (v0 + 1617987961) ^ v4;
  LODWORD(STACK[0x1D4C8]) = ((v0 - 22614) ^ 0x6070F1CD) - v4;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v0 + 9182)))(v2 - 240);
  return (*(v5 + 8 * SLODWORD(STACK[0x1D4E4])))(v6);
}

uint64_t sub_100177E54()
{
  v0 = STACK[0x57D8];
  STACK[0x9AC0] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x3B3C]));
  return (*(v0 + 8 * SLODWORD(STACK[0x3B38])))(15115, 4404, 0x683CBC57EAB92A3ELL, 22622);
}

uint64_t sub_100177F28()
{
  v2 = *(v1 + 512);
  v3 = STACK[0x51E8];
  v4 = STACK[0x51F0];
  v5 = *STACK[0x51F0];
  v6 = *STACK[0x51E8] & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v5 + (((v2 & 0xFFFFFFF8 ^ 0xDFD71100) + 1923565997 + ((2 * (v2 & 0xFFFFFFF8)) | 0x4051DDFF)) & v6));
  v8 = __ROR8__(v2 & 0xFFFFFFFFFFFFFFF8, 8);
  v9 = (v8 + v7 - ((2 * (v8 + v7)) & 0x9CA1FCBD8F1CEC12) + 0x4E50FE5EC78E7609) ^ 0x8CFFC0F4F87FCEEDLL;
  v10 = v9 ^ __ROR8__(v7, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0x65F254DD188DB4FCLL;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = __ROR8__(v11, 8);
  v14 = (((2 * (v13 + v12)) & 0xA5FB135754D14FCELL) - (v13 + v12) - 0x52FD89ABAA68A7E8) ^ 0xC2F230C2348E4A95;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0xA1B29DC5D776132BLL;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (((2 * (v18 + v17)) | 0x59E925D4A8400BE8) - (v18 + v17) - 0x2CF492EA542005F4) ^ 0xC3F0B2ABA1C54D18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__((((2 * (v18 + v17)) | 0x59E925D4A8400BE8) - (v18 + v17) - 0x2CF492EA542005F4) ^ 0xC3F0B2ABA1C54D18, 8) + v19) ^ 0xD8C7B31FCA19D9DELL;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (((2 * (v22 + v21)) | 0x64434CDEB7E948) - (v22 + v21) - 0x3221A66F5BF4A4) ^ 0x54672088E5EA372BLL;
  LODWORD(v23) = 5621 * ((((__ROR8__(v23, 8) + (v23 ^ __ROR8__(v21, 61))) ^ 0x6F4F60BC0E025EE0uLL) >> (8 * (v2 & 7u))) ^ *(v1 + 295)) + 32028458;
  v24 = v23 - 6152 * (((89362129 * v23) >> 32) >> 7);
  v25 = STACK[0xDCB8];
  v25[698] = v25[v24];
  v26 = STACK[0xDCA8];
  v27 = *(v5 + (((STACK[0xDCA8] & 0xFFFFFFF8) - 555828759) & v6));
  v28 = __ROR8__(STACK[0xDCA8] & 0xFFFFFFFFFFFFFFF8, 8);
  v29 = (0x9A901111C9FE11DALL - ((v28 + v27) | 0x9A901111C9FE11DALL) + ((v28 + v27) | 0x656FEEEE3601EE25)) ^ 0x6C7C8A328082DAFELL;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x448D6F6CA711D855;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0xF5F2FED308AA2278;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0x67536EC0FB8B549DLL;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (0x2A9DD047FE8B1F68 - ((v37 + v36) | 0x2A9DD047FE8B1F68) + ((v37 + v36) | 0xD5622FB80174E097)) ^ 0x2DE56AE689646A9BLL;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0x24734B65A1E08459;
  v41 = __ROR8__(v40, 8);
  v42 = v40 ^ __ROR8__(v39, 61);
  v43 = (v41 + v42 - ((2 * (v41 + v42)) & 0x6E7B6F0FD0E0B36ELL) + 0x373DB787E87059B7) ^ 0x77F4786DD4B59256;
  LODWORD(v42) = 5621 * ((((__ROR8__(v43, 8) + (v43 ^ __ROR8__(v42, 61))) ^ 0x6F635C2EE5D7D2C6uLL) >> (8 * (v26 & 7u))) ^ *v26) + 32028458;
  v25[3444] = v25[v42 - 6152 * (((89362129 * v42) >> 32) >> 7)];
  v25[3171] = *(v1 + 461);
  v44 = *(v26 + 12);
  v26 += 12;
  v45 = *(*v4 + (*v3 & ((v26 & 0xFFFFFFF8 ^ 0xC2E93A2C) - 1580731369 + ((2 * (v26 & 0xFFFFFFF8)) | 0x7A2D8BA5))));
  v46 = (v45 + __ROR8__(v26 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0x91364DCB68334DBLL;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ 0x448D6F6CA711D855;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ 0xF5F2FED308AA2278;
  v51 = __ROR8__(v50, 8);
  v52 = v50 ^ __ROR8__(v49, 61);
  v53 = (v51 + v52) ^ 0x67536EC0FB8B549DLL;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = __ROR8__(v53, 8);
  v56 = (((2 * (v55 + v54)) & 0x7F4AD588F463B570) - (v55 + v54) - 0x3FA56AC47A31DAB9) ^ 0x38DDD0650DDEAF4BLL;
  v57 = v56 ^ __ROR8__(v54, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ 0x24734B65A1E08459;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ 0x40C9CFEA3CC5CBE1;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = __ROR8__(v60, 8);
  LODWORD(v26) = (((((2 * (v62 + v61)) | 0x67A38A5294B50B6ALL) - (v62 + v61) - 0x33D1C5294A5A85B5) ^ 0x5CB29907AF8D5773uLL) >> (8 * (v26 & 7u))) ^ v44;
  v25[3224] = v25[5621 * v26 + 32028458 - 6152 * (((89362129 * (5621 * v26 + 32028458)) >> 32) >> 7)];
  v63 = STACK[0xDCA0];
  *(v1 + 520) = STACK[0xDCA0];
  v63 += 21;
  *(v1 + 296) = v63;
  v64 = STACK[0x57D8];
  v65 = *(STACK[0x57D8] + 8 * (v0 + 8990));
  *(v1 + 528) = v63;
  *(v1 + 280) = v65;
  return (*(v64 + 8 * (STACK[0x4D40] ^ 0x15E8)))();
}

uint64_t sub_100178580@<X0>(char *a1@<X8>)
{
  v4 = *a1;
  v5 = &STACK[0x1D280] + v3;
  *(v5 + 17) = *(v2 + 17);
  *(v5 + 25) = *(v2 + 25);
  *(v5 + 29) = *(v2 + 29);
  v5[31] = *(v2 + 31);
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  *v5 = v7;
  *(v5 + 1) = v6;
  v5[16] = v4;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_100178640()
{
  v0 = STACK[0x51B8] - 20250;
  v1 = *(STACK[0x6590] + 24);
  v2 = STACK[0xC4C8];
  v3 = STACK[0x57D8];
  STACK[0xD028] = *(STACK[0x57D8] + 8 * v0);
  return (*(v3 + 8 * (v0 - 7284 + LODWORD(STACK[0xC30]))))(v2, v1, 0xFF035EADE913ABC2);
}

uint64_t sub_100178704(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0xECB8] = (((v1 ^ 0x895F88AA4D154D95) + 0x76A07755B2EAB26BLL) ^ ((v1 ^ 0x4954A814122914BALL) - 0x4954A814122914BALL) ^ ((v1 ^ 0xC00B20BE8D2081EDLL ^ (v2 - 1227)) + 0x3FF4DF4172DF2645)) + 0x1F8C72E58D35CB11;
  *(a1 + 16) = (((v1 ^ 0xDCA668CF) + 593073969) ^ ((v1 ^ 0xCC99DD82) + 862331518) ^ (((v2 - 1037903688) ^ v1) + 1037879847)) - 769884002;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v2 + 7965)))();
  *(a1 + 24) = v5;
  return (*(v4 + 8 * ((11 * (v5 == 0)) ^ v2)))();
}

uint64_t sub_100178868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0x51B8] + 1569381956;
  v8 = STACK[0xCDC0];
  v9 = STACK[0x57D8];
  v10 = STACK[0xEDC];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0xEDC]));
  return (*(v9 + 8 * ((v7 - 1569398577) ^ v10)))(v8, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_100178910@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = STACK[0x51B8] + a2;
  *v2 = v5;
  *v3 = v6;
  return (*(STACK[0x57D8] + 8 * (v7 ^ 0x2C5B)))(a1, v4);
}

uint64_t sub_100178954()
{
  v1 = STACK[0x57D8];
  STACK[0xA830] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (((v0 ^ 0x38A4) - 617) ^ v0)))();
}

uint64_t sub_100178A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v10 = *(STACK[0xDCB8] + v8 - 6152 * (((v8 * a6) >> 64) >> 12));
  v11 = *(STACK[0xDCB0] + 4 * ((((v6 + 1353192664) & 0xAF57BA79) + 6419 * (v10 | ((v10 < 0x4C) << 8)) + 4448617) % 0x2240));
  v12 = *(STACK[0xDCB8] + (5621 * (((HIBYTE(v11) ^ 0x11D83C87) + 402648586) ^ ((HIBYTE(v11) ^ 0xE24A5799) - 462584552) ^ ((HIBYTE(v11) ^ 0xF3926B5C) - 172639789)) - 645847047) % 0x1808);
  v13 = *(STACK[0xDCB8] + 5621 * (BYTE1(v11) ^ 0x8F) + 32028458 - 6152 * (((89362129 * (5621 * (BYTE1(v11) ^ 0x8Fu) + 32028458)) >> 32) >> 7));
  v14 = *(STACK[0xDCB8] + (5621 * (((v11 ^ 0xC7729B07) - 661149681) ^ ((v11 ^ 0x33900792) + 745878684) ^ ((v11 ^ 0xF4E29C73) - 351817861)) - 1370795398) % 0x1808);
  v15 = v12 & 0xE ^ 0xED;
  LOBYTE(v11) = *(STACK[0xDCB8] + 5621 * (BYTE2(v11) ^ 0x38) + 32028458 - 6152 * (((89362129 * (5621 * (BYTE2(v11) ^ 0x38u) + 32028458)) >> 32) >> 7));
  v16 = v11 & 0x2E ^ 0xDD;
  v17 = v11 ^ (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * (v16 ^ v11 & 0x1A)) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16));
  v18 = v13 & 0xFA ^ 0x23;
  v19 = (v13 ^ (2 * ((v13 ^ 0x34) & (2 * ((v13 ^ 0x34) & (2 * ((v13 ^ 0x34) & (2 * ((v13 ^ 0x34) & (2 * ((v13 ^ 0x34) & (2 * (v18 ^ v13 & 0xE)) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18))) ^ 0x36CA98;
  v20 = v14 & 0x7E ^ 0x65;
  v21 = (((v12 ^ (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * (v15 ^ v12 & 0x3A)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15))) ^ 0xE) << 16) | ((v17 ^ 0x2E) << 8);
  v22 = v14 ^ (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * (v20 ^ v14 & 0xA)) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20));
  *(STACK[0xDCB0] + 4 * (v9 % 0x2240)) = ((((v19 & ~v21 | v21 & 0xC93500) << 8) ^ 0x1F71BFD7) & (v22 ^ 0xFFFFFFA1) | v22 & 0x28) ^ 0x6B835219;
  return (*(STACK[0x57D8] + 8 * ((61 * (v7 == 0)) ^ v6)))();
}

uint64_t sub_100178E78@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X5>, unint64_t a4@<X6>, unint64_t a5@<X7>, unint64_t a6@<X8>)
{
  v14 = *(STACK[0x57D8] + 8 * ((56 * (v7 < ((v8 - 1327552404) ^ 0xB0DF9262uLL))) ^ v8));
  *&STACK[0x5550] = vdupq_n_s64(v6);
  *&STACK[0x5520] = vdupq_n_s64(v13);
  *&STACK[0x57A0] = vdupq_n_s64(a5);
  *&STACK[0x57C0] = vdupq_n_s64(a3);
  *&STACK[0x57B0] = vdupq_n_s64(v11);
  *&STACK[0x5650] = vdupq_n_s64(0x6EB37FD5E0B909C2uLL);
  *&STACK[0x5680] = vdupq_n_s64(0x48A640150FA37B1EuLL);
  *&STACK[0x5670] = vdupq_n_s64(0x6AEA49DF4BAF7715uLL);
  *&STACK[0x5790] = vdupq_n_s64(a2);
  *&STACK[0x5570] = vdupq_n_s64(v10);
  *&STACK[0x5560] = vdupq_n_s64(a6);
  *&STACK[0x5740] = vdupq_n_s64(0xBBB1B09470FFFD28);
  *&STACK[0x5640] = vdupq_n_s64(0xEFB85E912434B084);
  *&STACK[0x56D0] = vdupq_n_s64(0x17EF2238F7FB7824uLL);
  *&STACK[0x5700] = vdupq_n_s64(0x74086EE3840243EDuLL);
  *&STACK[0x56C0] = vdupq_n_s64(0x25F4299DB7DC03DEuLL);
  *&STACK[0x5730] = vdupq_n_s64(0x6FC94DEA9BDBFB21uLL);
  *&STACK[0x5720] = vdupq_n_s64(0xB1AC8FA2FFBAA3D0);
  *&STACK[0x56F0] = vdupq_n_s64(a1);
  *&STACK[0x5540] = vdupq_n_s64(0x9B9991E234D5F331);
  *&STACK[0x5530] = vdupq_n_s64(0x639B6E8EBC4508FFuLL);
  *&STACK[0x55A0] = vdupq_n_s64(v9);
  *&STACK[0x5750] = vdupq_n_s64(0x325FD88C2FD698DFuLL);
  *&STACK[0x5780] = vdupq_n_s64(0x3E71CB0960D4A97EuLL);
  *&STACK[0x5660] = vdupq_n_s64(0x43BB9A0EB0E58C4EuLL);
  *&STACK[0x5760] = vdupq_n_s64(0x9FE3749E00AE5B9ELL);
  *&STACK[0x5590] = vdupq_n_s64(a4);
  *&STACK[0x5580] = vdupq_n_s64(v12);
  *&STACK[0x56E0] = vdupq_n_s64(0x77636128E1FFFA50uLL);
  *&STACK[0x5710] = vdupq_n_s64(0xA7B36FCF557D9EC5);
  *&STACK[0x5770] = vdupq_n_s64(0x210A599D4D3B8891uLL);
  return v14();
}

uint64_t sub_1001791B0()
{
  STACK[0x57C0] = 0;
  v1 = STACK[0x51B8] ^ 0x15FE;
  v2 = STACK[0x51B8] - 769906626;
  v3 = STACK[0xC560];
  STACK[0x9150] = STACK[0xB820];
  LODWORD(STACK[0x6D4C]) = v0;
  STACK[0x5D20] = 0x1883660EE8144416;
  STACK[0x7810] = v3;
  STACK[0x8000] = &STACK[0x5D20];
  STACK[0x5FC0] = 0;
  LODWORD(STACK[0xA12C]) = (((v0 ^ 0x3ECAE70E) - 1053484814) ^ ((v0 ^ 0x1A3DCFCD) - 440258509) ^ ((v0 ^ 0xF6EBA857) + 152328105) ^ v2 ^ (v1 - 769903891) ^ (((v0 - v2) | (v2 - v0)) >> 31)) + 1332081940;
  LODWORD(STACK[0xC0DC]) = -2013569047;
  return (*(STACK[0x57D8] + 8 * (v2 + 769888429)))();
}

uint64_t sub_100179300()
{
  STACK[0x1D4C0] = 0;
  LODWORD(STACK[0x1D4C8]) = (v0 - 1723111157) ^ (1917435887 * ((~((v1 - 240) | 0x42292DA4) + ((v1 - 240) & 0x42292DA4)) ^ 0x5B6D895D));
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x7C30)))(v1 - 240);
  v4 = ((*STACK[0x4678] ^ ~v0) & (v0 - *STACK[0x4678]) | v0 & ~*STACK[0x4678]) >= 0;
  return (*(v2 + 8 * (((8 * v4) | (16 * v4)) ^ (v0 + 6767))))(v3);
}

uint64_t sub_1001793E4(uint64_t a1, int a2)
{
  *(v5 - 152) = v2;
  LODWORD(STACK[0x888C]) = v3;
  v6 = *(v4 - 0x30BDFED8F32E6559);
  v7 = STACK[0x7CA0];
  v8 = STACK[0x67F0];
  v9 = STACK[0xBCA8];
  v10 = STACK[0x6614];
  v11 = STACK[0xB85C];
  v12 = STACK[0x6188];
  v13 = STACK[0x97A0];
  LODWORD(STACK[0x68E4]) = *(v4 - 0x30BDFED8F32E6565);
  STACK[0x5E10] = v4 - 0x30BDFED8F32E66E0;
  STACK[0xAC88] = 0;
  LODWORD(STACK[0xAA28]) = v6;
  STACK[0x7480] = v4 - 0x30BDFED8F32E6585;
  STACK[0x72C0] = v7;
  STACK[0x6118] = v8;
  STACK[0xBB78] = v9;
  LODWORD(STACK[0x7FEC]) = v10;
  LODWORD(STACK[0x787C]) = v11;
  STACK[0x7418] = v12;
  STACK[0x64A8] = 0;
  STACK[0xA4B0] = 0;
  STACK[0xCCF0] = 0;
  STACK[0xB038] = 0;
  STACK[0xAF10] = &STACK[0x82C0];
  STACK[0x7FF0] = 0;
  LODWORD(STACK[0xA524]) = -769884012;
  STACK[0x9010] = v13;
  STACK[0x7C00] = v4 - 0x30BDFED8F32E6625;
  LODWORD(STACK[0xA1D0]) = -769884028;
  LODWORD(STACK[0xA5BC]) = v3;
  LODWORD(STACK[0x8458]) = STACK[0x81DC];
  LODWORD(STACK[0x7E3C]) = -1066788874;
  return (*(STACK[0x57D8] + 8 * (a2 - 16051)))(0);
}

uint64_t sub_100179664@<X0>(int a1@<W8>)
{
  STACK[0xB260] = 0;
  LODWORD(STACK[0xB2D0]) = -769884012;
  v1 = STACK[0xA888];
  v2 = STACK[0x61D8];
  STACK[0x7370] = STACK[0x61D8];
  v3 = STACK[0x8900];
  STACK[0x5808] = STACK[0x8900];
  v4 = STACK[0x8970];
  STACK[0x5F78] = STACK[0x8970];
  v5 = STACK[0xB718];
  STACK[0xA788] = STACK[0xB718];
  STACK[0x6260] = v1;
  STACK[0x6718] = 0x2369327399A66D95;
  if (v5)
  {
    v6 = v1 == 0;
  }

  else
  {
    v6 = 1;
  }

  v10 = v6 || v2 == 0 || v3 == 0 || v4 == 0;
  return (*(STACK[0x57D8] + 8 * ((v10 * (((a1 - 13598) | 0x543) ^ 0x1538)) ^ a1)))();
}

uint64_t sub_100179738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = STACK[0x51B8];
  v5 = STACK[0x92B8];
  v6 = STACK[0xBD4C];
  LODWORD(STACK[0x7C14]) = -143113071;
  STACK[0x9670] = 0;
  LODWORD(STACK[0x66D4]) = -769884012;
  LODWORD(STACK[0xCBDC]) = -143113071;
  STACK[0x9258] = v5 + 4;
  v7 = ((v6 + 1072614194) ^ 0x9DC8A4C9) & (2 * ((v6 + 1072614194) & 0xC01134CA)) ^ (v6 + 1072614194) & 0xC01134CA;
  v8 = ((2 * ((v6 + 1072614194) ^ 0x1DEACCD9)) ^ 0xBBF7F026) & ((v6 + 1072614194) ^ 0x1DEACCD9) ^ (2 * ((v6 + 1072614194) ^ 0x1DEACCD9)) & 0xDDFBF812;
  v9 = v8 ^ 0x44080811;
  v10 = (v8 ^ 0xC1F000) & (4 * v7) ^ v7;
  v11 = ((4 * v9) ^ 0x77EFE04C) & v9 ^ (4 * v9) & 0xDDFBF810;
  v12 = (v11 ^ 0x55EBE000) & (16 * v10) ^ v10;
  v13 = ((16 * (v11 ^ 0x88101813)) ^ 0xDFBF8130) & (v11 ^ 0x88101813) ^ (16 * (v11 ^ 0x88101813)) & 0xDDFBF810;
  v14 = v12 ^ 0xDDFBF813 ^ (v13 ^ 0xDDBB8000) & (v12 << 8);
  LODWORD(STACK[0x97D0]) = (v6 + 1072614194) ^ (2 * ((v14 << 16) & 0x5DFB0000 ^ v14 ^ ((v14 << 16) ^ 0x78130000) & (((v13 ^ 0x407803) << 8) & 0x5DFB0000 ^ 0x4030000 ^ (((v13 ^ 0x407803) << 8) ^ 0x7BF80000) & (v13 ^ 0x407803)))) ^ 0x19DC4478;
  return (*(STACK[0x57D8] + 8 * (v4 - 18049)))(a1, 22611, a3, a4, 19);
}

uint64_t sub_100179990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (STACK[0x51B8] - 5645) | 0x2494;
  v5 = STACK[0x5E80];
  v6 = STACK[0x51E8];
  v7 = STACK[0x51F0];
  v8 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & (((v4 ^ 0xFFFF9925) & (v5 + 4) ^ 0x7B25F602) + (STACK[0x2AAC] & 0x227CDF3F ^ 0x74F824A0) + ((2 * ((v4 ^ 0xFFFF9925) & (v5 + 4))) | 0x9B413F9))) & 0xFFFFFFFFFFFFFFF8));
  v9 = (__ROR8__((v4 ^ 0xFFFFFFFFFFFF9925) & (STACK[0x5E80] + 4), 8) + v8) ^ v3;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = __ROR8__(v9, 8);
  v12 = (v11 + v10 - ((2 * (v11 + v10)) & 0xC20FCE9BF571700ALL) - 0x1EF818B2054747FBLL) ^ 0xF435A5A3C648D24CLL;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (((2 * (v14 + v13)) | 0x51FFC097E26F2634) - (v14 + v13) - 0x28FFE04BF137931ALL) ^ 0xA8A348CC902AA81;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (((2 * (v17 + v16)) | 0xCDD7EF13425A0D2ELL) - (v17 + v16) - 0x66EBF789A12D0697) ^ 0x8344ED3A8F903A4ALL;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0xC7DDC9F6CC45B721;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0xA82620A559D2DA78;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0x5F8DEC3EA3980A1BLL;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  *(v5 + 4) = (((v26 + v25 - ((2 * (v26 + v25)) & 0xB0404017B0449E32) - 0x27DFDFF427DDB0E7) ^ 0x19E3E8D97CE70731) >> (8 * ((v5 + 4) & 7))) ^ 0x51;
  v27 = *(*v7 + (((((v5 + 5) & 0xFFFFFFF8) - 103642729) & *v6) & 0xFFFFFFFFFFFFFFF8));
  v28 = __ROR8__((v5 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v29 = (0xDD1A3D16609B499FLL - ((v27 + v28) | 0xDD1A3D16609B499FLL) + ((v27 + v28) | 0x22E5C2E99F64B660)) ^ 0xD6F393A0003A8A07;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (((2 * (v31 + v30)) | 0xA16092F94760C242) - (v31 + v30) - 0x50B0497CA3B06121) ^ 0x45820B929F400B68;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0x2275D4C73835399BLL;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (0x2B654C4CE396A12ALL - ((v36 + v35) | 0x2B654C4CE396A12ALL) + ((v36 + v35) | 0xD49AB3B31C695ED5)) ^ 0x3135A90032D46208;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (0x75AABB0AEFD878ECLL - ((v39 + v38) | 0x75AABB0AEFD878ECLL) + ((v39 + v38) | 0x8A5544F510278713)) ^ 0x4D888D03DC623032;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = __ROR8__(v40, 8);
  v43 = __ROR8__((((2 * (v42 + v41)) | 0xA0CE07B0BC1B3522) - (v42 + v41) + 0x2F98FC27A1F2656FLL) ^ 0x7841237D07DF40E9, 8);
  v44 = (((2 * (v42 + v41)) | 0xA0CE07B0BC1B3522) - (v42 + v41) + 0x2F98FC27A1F2656FLL) ^ 0x7841237D07DF40E9 ^ __ROR8__(v41, 61);
  v45 = (0x4B7461B1AEC8D737 - ((v43 + v44) | 0x4B7461B1AEC8D737) + ((v43 + v44) | 0xB48B9E4E513728C8)) ^ 0xEB067270F2AF22D3;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = __ROR8__(v45, 8);
  *(v5 + 5) = LOBYTE(STACK[0xA0C4]) ^ 0x94 ^ (((((2 * (v47 + v46)) & 0xF325B146B9519BA0) - (v47 + v46) + 0x66D275CA357322FLL) ^ 0xC7AEEF8E07927A07) >> (8 * ((v5 + 5) & 7)));
  return (*(STACK[0x57D8] + 8 * ((200 * (STACK[0x5F38] <= v5 + 6)) ^ LODWORD(STACK[0x2AB0]))))(0xE5AF1AB32EBD3CDDLL, 42264463, a3, 266873866, 300957690, 1013566543, 1464565329, 1766393920);
}

uint64_t sub_100179FFC()
{
  v2 = 1169 * (v0 ^ 0x5FE8);
  v3 = *v1;
  v4 = v0;
  v5 = *(&off_101353600 + v0 - 23146);
  v6 = *(v5 + (v3 ^ 9));
  v7 = v5;
  v8 = v1[9];
  LODWORD(STACK[0x57B0]) = v2;
  LODWORD(v3) = (v3 ^ 0x52 ^ v6) << (v2 ^ 0xFD);
  v9 = *(&off_101353600 + (v4 ^ 0x5C2A)) - 4;
  v10 = v8 ^ 0xA3 ^ *(v7 + (v8 ^ 0x43));
  v11 = v1[3] ^ *(v7 + (v1[3] ^ 0xBLL)) ^ 0x1E;
  LODWORD(v8) = v11 + v3;
  v12 = *(&off_101353600 + v4 - 24103) - 8;
  v13 = v1[15] ^ 0x4A ^ v9[v1[15] ^ 0xD6] | ((v1[14] ^ 0x57 ^ v12[v1[14] ^ 0x54]) << 8) | ((v1[12] ^ 0x3D ^ v9[v1[12] ^ 0x9FLL]) << 24);
  v14 = v12;
  v15 = v1[13];
  v16 = *(v7 + (v1[11] ^ 0x31)) ^ v1[11] | (v10 << 16) | ((v1[10] ^ 0x5A ^ v12[v1[10] ^ 0x64]) << 8);
  v17 = *(&off_101353600 + v4 - 24346) - 8;
  v18 = v17[v15 ^ 0x39];
  v19 = v1[2] ^ ((v12[v1[2] ^ 0x58] ^ -v12[v1[2] ^ 0x58] ^ (26 - (v12[v1[2] ^ 0x58] ^ 0x1A))) + 26);
  v20 = STACK[0xD690];
  v21 = *(STACK[0xD690] + 1);
  v22 = *(STACK[0xD690] + 6);
  v23 = *(STACK[0xD690] + 5);
  v24 = 2 * STACK[0xD690];
  STACK[0x5760] = v24;
  v25 = v20 + 0x7F60F5E3EA3FE00;
  v26 = v20;
  v28 = v20 + 8;
  v27 = *(v20 + 8);
  STACK[0x5640] = v27;
  LODWORD(v20) = *(v7 + (v27 ^ 0x85));
  LODWORD(STACK[0x57A0]) = v13 | ((v15 ^ 0xB7 ^ v18) << 16);
  STACK[0x55F0] = v21;
  LOBYTE(v13) = *(v14 + (v21 ^ 0xBF));
  LODWORD(STACK[0x5790]) = v16 | ((v27 ^ 0x6C ^ v20) << 24);
  v29 = v1[7];
  LODWORD(v8) = (((v19 ^ 0xFB) << 8) | ((v21 ^ 0x96 ^ v13) << 16)) + v8;
  STACK[0x5650] = v22;
  LODWORD(STACK[0x5780]) = v8 + 766082763 - 2 * (v8 & 0x2DA97EDB ^ v11 & 0x10);
  LOBYTE(v11) = v22 ^ 0x82 ^ v17[v22 ^ 0x23];
  v30 = v29 ^ 0x6C ^ *(v7 + (v29 ^ 0x86));
  v31 = v25 - (v24 & 0xFEC1EBC7D47FD54);
  STACK[0x5610] = v23;
  v32 = v7;
  LODWORD(v25) = (v11 << 8) | (((v23 ^ *(v7 + (v23 ^ 0xF7))) ^ 0x10) << 16) | v30;
  v33 = ((v11 << 8) & 0x73FF | (((v23 ^ *(v7 + (v23 ^ 0xF7))) ^ 0x10) << 16) & 0x8473FF | v30 & 0x8473FF) ^ v30 & 0xA;
  v34 = v31 + 170;
  v35 = v25 - 2 * v33 - 1299942411;
  LODWORD(v31) = (v31 + 170) & 0xFFFFFFF8;
  LODWORD(v25) = (((v31 ^ 0x7AEA82D8) + 1286513890) ^ ((v31 ^ 0x1BEC8749) + 766026097) ^ ((v31 ^ 0x5FA5FB39) + 1776409857)) - 649726489;
  LODWORD(v7) = (v25 ^ 0xFFDF9A77) & (2 * (v25 & 0xFFDF9B76)) ^ v25 & 0xFFDF9B76;
  LODWORD(v23) = ((2 * (v25 ^ 0xD5DF8C97)) ^ 0x54002FC2) & (v25 ^ 0xD5DF8C97) ^ (2 * (v25 ^ 0xD5DF8C97)) & 0x2A0017E0;
  LODWORD(v7) = (v23 ^ 0x7C0) & (4 * v7) ^ v7;
  LODWORD(v23) = ((4 * (v23 ^ 0x2A001021)) ^ 0xA8005F84) & (v23 ^ 0x2A001021) ^ (4 * (v23 ^ 0x2A001021)) & 0x2A0017E0;
  LODWORD(v7) = (v23 ^ 0x28001781) & (16 * v7) ^ v7;
  LODWORD(v23) = ((16 * (v23 ^ 0x2000061)) ^ 0xA0017E10) & (v23 ^ 0x2000061) ^ (16 * (v23 ^ 0x2000061)) & 0x2A0017E0;
  LODWORD(v7) = v7 ^ 0x2A0017E1 ^ (v23 ^ 0x200016E1) & (v7 << 8);
  LODWORD(v25) = v25 ^ (2 * ((v7 << 16) & 0x2A000000 ^ v7 ^ ((v7 << 16) ^ 0x17E10000) & (((v23 ^ 0xA0001E1) << 8) & 0x2A000000 ^ 0x2A000000 ^ (((v23 ^ 0xA0001E1) << 8) ^ 0x170000) & (v23 ^ 0xA0001E1))));
  v36 = *(v26 + 4);
  STACK[0x55C0] = v36;
  v37 = v26;
  LODWORD(v29) = (v36 ^ 0x84 ^ v17[v36 ^ 0x85]) << 24;
  v38 = *STACK[0x51E8];
  LODWORD(v26) = *STACK[0x51E8];
  STACK[0x5770] = v38;
  *(&v39 + 1) = v31 ^ 0xA8;
  *&v39 = v34 ^ 0x7F60F5E3EA3FE00;
  v40 = *STACK[0x51F0];
  v41 = *(v40 + (v25 & 0xF8918413 ^ 0xA8918410 ^ (v25 ^ 0xAFDFB4B0) & (v38 & 0xFFFFFFF8 ^ 0xF8918413))) + (v39 >> 8);
  *&v39 = __ROR8__(*(v40 + (v25 & 0xF8918413 ^ 0xA8918410 ^ (v25 ^ 0xAFDFB4B0) & (v38 & 0xFFFFFFF8 ^ 0xF8918413))), 61);
  v42 = v41 ^ 0x125620C12B3BDEF2;
  v43 = (v39 - ((2 * v39) & 0xEE62377039C4D5F8) - 0x8CEE447E31D9504) ^ v41;
  *&v39 = __ROR8__(v42, 8);
  v44 = v43 ^ 0x8342BD999B6BEBBDLL;
  v45 = (((v39 ^ 0x37A8CBEFCC5F758BLL) + 0x3067E50FFC359229) ^ ((v39 ^ 0x2FD2590EF2448E4DLL) + 0x281D77EEC22E69EFLL) ^ ((v39 ^ 0x37C526B883AC20F9) + 0x300A0858B3C6C75BLL)) - 0x4EDEBB5C7273DC01 + (((v43 ^ 0xE8E33FE52DE1AD20) - 0x6BA1827CB68A469DLL) ^ ((v43 ^ 0x4D14EAEA62C27159) + 0x31A9A88C0656651CLL) ^ ((v43 ^ 0xFF24B7CBCF215758) - 0x7C660A52544ABCE5));
  v46 = v45 ^ 0x4B6E7663709F23C4 ^ __ROR8__(v44, 61);
  *(&v39 + 1) = v45;
  *&v39 = v45 ^ 0x4B6E7663709F23C4;
  v47 = ((((v39 >> 8) ^ 0xD559FD8611F9758ALL) - 0x68CCEF8F1BB979BLL) ^ (((v39 >> 8) ^ 0x41B98327426940F9) + 0x6D934FA65DD45D18) ^ (((v39 >> 8) ^ 0x94A2E5AF8FCE4A6FLL) - 0x4777D6D16F8CA87ELL)) + (((v46 ^ 0x729B8398C1CC3393) - 0x77D83C203920831BLL) ^ ((v46 ^ 0x96CAF52BD2C8D339) + 0x6C76B56CD5DB9C4FLL) ^ ((v46 ^ 0x6A4482879630F888) - 0x6F073D3F6EDC4800)) + 0x5EEDF3FCB9F545B7;
  v48 = v47 ^ __ROR8__(v46, 61);
  *(&v39 + 1) = v48 ^ 0x8583B2FD40B1F24;
  *&v39 = v48 ^ 0xC000000000000000;
  v49 = (__ROR8__(v47 ^ 0xB8F79A8BFDABDE30, 8) + (v48 ^ 0xC8583B2FD40B1F24)) ^ 0x2E5222B49D6879D1;
  v50 = v49 ^ (v39 >> 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0xF1AD040F639B7ED3;
  *&v39 = __ROR8__(v50, 61);
  v52 = v51 ^ v39;
  v53 = ((v51 ^ v39) + (v51 >> 8) + (v51 << 56)) ^ 0xC158605A13FFA118;
  v54 = __ROR8__(v53, 8);
  v55 = v53 ^ __ROR8__(v52, 61);
  STACK[0x5700] = v28;
  STACK[0x5710] = 2 * v28;
  v56 = v28 - 0x201A43596DD63EFFLL + (~(2 * v28) | 0x403486B2DBAC7DFFLL);
  v57 = ((v54 + v55) ^ 0x4267924AAAF3CDACLL ^ __ROR8__(v55, 61)) + __ROR8__((v54 + v55) ^ 0x4267924AAAF3CDACLL, 8);
  LODWORD(v54) = (((v56 & 0xFFFFFFF8 ^ 0x11111F12) + 700057212) ^ ((v56 & 0xFFFFFFF8 ^ 0x79EACCB6) + 1094833632) ^ ((v56 & 0xFFFFFFF8 ^ 0xFAD212A4) - 1032254514)) - 1571436610;
  STACK[0x54A0] = v26 & 0xFFFFFFF8;
  v58 = *(v40 + (v26 & 0xFFFFFFF8 & (v54 ^ ((v54 ^ 0x7663D388) - 480830897) ^ ((v54 ^ 0x4E753CBD) - 616434308) ^ ((v54 ^ 0xB5222AF3) + 538370870) ^ ((v54 ^ 0xE7FFF3FF) + 1925921338) ^ 0x6ACB3638)));
  STACK[0x5480] = v40;
  *&v39 = __ROR8__(v58, 61);
  v59 = (((((v56 >> 8) ^ 0xEF245A670FC33517) + 0x63778E98879F7C86) ^ (((v56 >> 8) ^ 0x177257E4EA09C280) - 0x64DE7CE49DAA74EDLL) ^ (((v56 >> 8) ^ 0xF889E83F4358DE56) + 0x74DA3CC0CB0497C5)) + (((((v56 & 0xFFFFFFFFFFFFFFF8) << 56) ^ 0xD741AED6D9F45E0ELL) + 0x1ADE2795A38C7CCFLL) ^ (((v56 & 0xFFFFFFFFFFFFFFF8) << 56) - 0x319FB6737C78AAEBLL) ^ ((((v56 & 0xFFFFFFFFFFFFFFF8) << 56) ^ 0xD22BCEF2552BE5E4) + 0x1FB447B12F53C725)) - 0x5A2BBA86A9468315 + v58) ^ 0xFC8A608D63B982FCLL;
  v60 = v59 ^ (v39 - ((2 * v39) & 0x46E1479633E66570) - 0x5C8F5C34E60CCD48);
  *&v39 = __ROR8__(v59, 8);
  v61 = (((v60 ^ 0x57EC09F04FDE917ELL) - 0x57EC09F04FDE917ELL) ^ ((v60 ^ 0xC92F6782706AD864) + 0x36D0987D8F95279CLL) ^ ((v60 ^ 0x6CDBD448D91E1883) - 0x6CDBD448D91E1883)) + (((v39 ^ 0x71143E42FF991D2) - 0x2E22BECDD31945C6) ^ ((v39 ^ 0xE99626ECD48C134DLL) + 0x3F5A243AD79338A7) ^ ((v39 ^ 0xCFD60D110A8ADBFCLL) + 0x191A0FC70995F018)) - 0x584B0950C3620F0;
  v62 = __ROR8__(v61, 8);
  *(&v39 + 1) = v61 ^ __ROR8__(v60, 61);
  *&v39 = v61 ^ ~__ROR8__(v60, 61);
  v63 = ((((*(&v39 + 1) ^ 0x45A9265BE8A579D7) + 0x460681640ACB357FLL) ^ ((*(&v39 + 1) ^ 0xF01D633230B01EF0) - 0xC4D3BF22D21ADA6) ^ ((*(&v39 + 1) ^ 0x2C84EC01C3A7D4E8) + 0x2F2B4B3E21C99842)) - 0x3C7F6061B4E05ECELL + ((((v62 - ((2 * v62) & 0x40D1F84BD3AD9EB4) - 0x5F9703DA162930A6) ^ 0x6F1B5CD4D472FA29) + 0x6E9A078039898A2BLL) ^ (((v62 - ((2 * v62) & 0x40D1F84BD3AD9EB4) - 0x5F9703DA162930A6) ^ 0x2CFA3DA5E64E2481) + 0x2D7B66F10BB55483) ^ (((v62 - ((2 * v62) & 0x40D1F84BD3AD9EB4) - 0x5F9703DA162930A6) ^ 0xE380682C64C4F1CDLL) - 0x1DFECC8776C07E31))) ^ 0xC3CA5AE5C590EC4ALL ^ (v39 >> 61);
  *&v39 = __ROR8__(((((*(&v39 + 1) ^ 0x45A9265BE8A579D7) + 0x460681640ACB357FLL) ^ ((*(&v39 + 1) ^ 0xF01D633230B01EF0) - 0xC4D3BF22D21ADA6) ^ ((*(&v39 + 1) ^ 0x2C84EC01C3A7D4E8) + 0x2F2B4B3E21C99842)) - 0x3C7F6061B4E05ECELL + ((((v62 - ((2 * v62) & 0x40D1F84BD3AD9EB4) - 0x5F9703DA162930A6) ^ 0x6F1B5CD4D472FA29) + 0x6E9A078039898A2BLL) ^ (((v62 - ((2 * v62) & 0x40D1F84BD3AD9EB4) - 0x5F9703DA162930A6) ^ 0x2CFA3DA5E64E2481) + 0x2D7B66F10BB55483) ^ (((v62 - ((2 * v62) & 0x40D1F84BD3AD9EB4) - 0x5F9703DA162930A6) ^ 0xE380682C64C4F1CDLL) - 0x1DFECC8776C07E31))) ^ 0xC3CA5AE5C590EC4ALL, 8);
  v64 = v63 ^ 0x802E368E31416648;
  v65 = (((v63 ^ 0x48946EB4565A0728) + 0x3745A7C598E49EA0) ^ ((v63 ^ 0x7A85CD8D06CD558DLL) + 0x55404FCC873CC3BLL) ^ ((v63 ^ 0x80A92817B539FEA4) - 0x871E99847898ECLL)) + 0x135D944BE2DF26FFLL + (((v39 ^ 0xA8F5D2E1146A6A8BLL) - 0x3248398A77BD0D0FLL) ^ ((v39 ^ 0x2A133D28385FE022) + 0x4F5129BCA477785ALL) ^ ((v39 ^ 0xF89DD209420DB19BLL) - 0x6220396221DAD61FLL));
  *&v39 = __ROR8__(v64, 61);
  v66 = ((v65 << 56) ^ 0xD100000000000000) + ((v65 >> 8) ^ 0x2E5222B49D6879);
  v67 = v65 ^ v39 ^ 0xBAE7CFB23A162B98;
  *(&v39 + 1) = v65 ^ v39 ^ 0x1AE7CFB23A162B98;
  *&v39 = v65 ^ v39 ^ 0xBFFFFFFFFFFFFFFFLL;
  v68 = v39 >> 61;
  v69 = v67 + v66;
  STACK[0x5398] = v37;
  STACK[0x56F0] = v37 + 16;
  v70 = 2 * (v37 + 16);
  STACK[0x56E0] = v70;
  v71 = v37 - 0x53A6509A532B46F0 - (v70 & 0x58B35ECB59A9727CLL) + 62;
  LODWORD(v70) = (((v71 & 0xFFFFFFF8 ^ 0x3891ACBE) + 770664581) ^ ((v71 & 0xFFFFFFF8 ^ 0x918AD20E) - 2064378315) ^ ((v71 & 0xFFFFFFF8 ^ 0x5CFC788) + 280036275)) + 1058060243;
  *(&v39 + 1) = v71 & 0xFFFFFFF8 ^ 0x38;
  *&v39 = v71 ^ 0xAC59AF65ACD4B900;
  v69 ^= 0xF1AD040F639B7ED3;
  v72 = v69 ^ v68;
  v73 = (v72 + __ROR8__(v69, 8)) ^ 0xC158605A13FFA118;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = (v74 + __ROR8__(v73, 8)) ^ 0x4267924AAAF3CDACLL;
  v76 = (v75 ^ __ROR8__(v74, 61)) + (v75 << 56) + (v75 >> 8);
  v77 = *(v40 + (v26 & 0xFFFFFFF8 & (v70 ^ ((v70 ^ 0xD4EC7D57) + 1035880528) ^ ((v70 ^ 0x703664B5) - 1721478738) ^ ((v70 ^ 0xDF982CFA) + 919214563) ^ ((v70 ^ 0x6DEFFFFF) - 2067936536) ^ 0x16ADCAE0))) + (v39 >> 8);
  *&v39 = __ROR8__(*(v40 + (v26 & 0xFFFFFFF8 & (v70 ^ ((v70 ^ 0xD4EC7D57) + 1035880528) ^ ((v70 ^ 0x703664B5) - 1721478738) ^ ((v70 ^ 0xDF982CFA) + 919214563) ^ ((v70 ^ 0x6DEFFFFF) - 2067936536) ^ 0x16ADCAE0))), 61);
  v78 = v77 ^ 0x4063A53F4667E692;
  v79 = (v39 - ((2 * v39) & 0x66477A344E542A4) + 0x3323BD1A272A152) ^ v77;
  *&v39 = __ROR8__(v78, 8);
  v80 = (((v39 ^ 0xD5673280AF66048CLL) - 0x47B36B90EEC941EELL) ^ ((v39 ^ 0x94A9A1FF30E2051) + 0x64613CF04D5E9ACDLL) ^ ((v39 ^ 0x93C029431FB2A3DALL) - 0x11470535E1DE6B8)) + 0x40C6075A25A6B071 + (((v79 ^ 0xB3A17B91402A354ELL) - 0x7EFD17B25D889BCDLL) ^ ((v79 ^ 0x4D1E7E6ACC85B0) + 0x32EE8DA28891D4CDLL) ^ ((v79 ^ 0x1D3C27421474F071) + 0x2F9FB49EF629A10ELL));
  v81 = v80 ^ __ROR8__(v79, 61);
  *&v39 = __ROR8__(v80, 8);
  v82 = (((v81 ^ 0x9E0864C021649F77) - 0x49D5A640A57C7834) ^ ((v81 ^ 0x8F9D9B8FA0C57D8) + 0x20DBE4C781EB4F65) ^ ((v81 ^ 0xE986D0AE011AF3D2) - 0x3E5B122E85021491)) - 0x658CD747C32DB3A9 + ((((v39 - ((2 * v39) & 0x6987E94868612606) - 0x4B3C0B5BCBCF6CFDLL) ^ 0xCF53364FEE16665FLL) + 0x75AEB10D44909A86) ^ (((v39 - ((2 * v39) & 0x6987E94868612606) - 0x4B3C0B5BCBCF6CFDLL) ^ 0xF60DE0C94E6F8AD2) + 0x4CF0678BE4E97609) ^ (((v39 - ((2 * v39) & 0x6987E94868612606) - 0x4B3C0B5BCBCF6CFDLL) ^ 0x8D94D75A2B679FB1) + 0x3769501881E1636CLL));
  v83 = v82 ^ __ROR8__(v81, 61);
  *&v39 = __ROR8__(v82 ^ 0xB8F79A8BFDABDE30, 8);
  v84 = v83 ^ 0xC8217FB58A9ED6DALL;
  v85 = ((2 * v39) & 0xD7FB6FFFDDEDDBFELL) + (v39 ^ 0x6BFDB7FFEEF6EDFFLL) + (((v83 ^ 0x32E564C8747C0E21) + 0x53BE482011D2705) ^ ((v83 ^ 0x92959365626F9A0FLL) - 0x5AB4ECD0E8F14CD5) ^ ((v83 ^ 0xE33C0390382991F5) - 0x2B1D7C25B2B7472FLL));
  v86 = v85 + 0x1F6FD388B5ADE502;
  v87 = (v85 - ((2 * (v85 + 0x1F6FD388B5ADE502)) & 0x25C782630C8D18F4) + 0x325394BA3BF4717CLL) ^ __ROR8__(v84, 61) ^ 0x67DDBFC03E086DA7;
  v88 = (v87 + __ROR8__(v86 ^ 0x2E5222B49D6879D1, 8)) ^ 0xF1AD040F639B7ED3;
  *&v39 = __ROR8__(v87, 61);
  v89 = v88 ^ v39;
  v90 = ((v88 ^ v39) + (v88 << 56) + (v88 >> 8)) ^ 0xC158605A13FFA118;
  v91 = v90 ^ __ROR8__(v89, 61);
  v92 = v91 + __ROR8__(v90, 8);
  v93 = 8 * (v37 & 7);
  v94 = (v57 ^ 0xBF8CA48E12B6B115) >> v93;
  STACK[0x55B0] = v93;
  v95 = ((__ROR8__(v92 ^ 0x4267924AAAF3CDACLL, 8) + (__ROR8__(v91, 61) ^ 0x267924AAAF3CDACLL ^ v92)) ^ 0x78CA48E12B6B115) << (v93 ^ 0x3Bu);
  v96 = v94 + 32 * ((v76 ^ 0xBF8CA48E12B6B115) << (v93 ^ 0x3Bu));
  v97 = LODWORD(STACK[0x5780]) ^ 0x9D02C945 ^ (((*(v32 + (v94 ^ 0x98)) ^ v94 ^ 0x6F) << ((BYTE1(v96) ^ 0x1E) & 0x18) << ((BYTE1(v96) ^ 0x1E) & 0x18 ^ 0x18)) + (*(v14 + (BYTE3(v96) ^ 0x55)) ^ BYTE3(v96) ^ 0x1B) + ((v17[BYTE1(v96) ^ 0xELL] ^ BYTE1(v96) ^ 0x8C) << 16) + ((*(v32 + (BYTE2(v96) ^ 0x39) - ((2 * (BYTE2(v96) ^ 0x39)) & 0x156u) + 171) ^ BYTE2(v96) ^ 0xA3) << 8));
  LODWORD(STACK[0x5750]) = v97;
  LODWORD(v93) = *(v14 + (BYTE4(v96) ^ 0x42)) ^ HIDWORD(v96) ^ 0xD4;
  LODWORD(v94) = v9[BYTE5(v96) ^ 0xF6];
  v98 = v17[BYTE6(v96) ^ 0xFLL];
  STACK[0x5190] = v17;
  LODWORD(v93) = ((v94 ^ BYTE5(v96) ^ 0x38) << 16) | (v93 << 24) | ((v98 ^ BYTE6(v96) ^ 0xC0) << 8);
  LODWORD(v20) = *(v32 + (HIBYTE(v96) ^ 0x8B)) ^ HIBYTE(v96) ^ 0x96;
  v99 = (v76 ^ 0xBF8CA48E12B6B115) >> (8 * (v37 & 7u));
  LODWORD(v26) = (v35 ^ 0x9E23E187) & (v29 ^ 0x7FFFFFFF) ^ v29 & 0xD3000000 ^ (v20 - ((2 * v20) & 0x56) - 1455495381) & 0x492EE ^ ((v93 - ((2 * v93) & 0xED999800) - 154350410) ^ 0x269EA1A7) & ((v20 - ((2 * v20) & 0x56) - 1455495381) ^ 0x56C118D4);
  v100 = v99 + 32 * v95;
  LODWORD(v40) = *(v32 + (v99 ^ 0xCDLL));
  STACK[0x51A8] = v32;
  LODWORD(v40) = ((v40 ^ v99 ^ 0xD1) << 24) | (((*(v14 + (BYTE1(v100) ^ 0x5BLL)) ^ BYTE1(v100)) ^ 0xE1) << 16);
  LOBYTE(v35) = *(v14 + (BYTE2(v100) ^ 0x58));
  STACK[0x5198] = v14;
  LODWORD(v21) = (v40 & 0xFFFF0000 | (((v35 ^ ((v99 + 32 * v95) >> 16)) ^ 0xE1) << 8) | (v17[((v99 + 32 * v95) >> 24) ^ 0xA0] ^ ((v99 + 32 * v95) >> 24) ^ 0xA)) ^ LODWORD(STACK[0x5790]);
  LODWORD(STACK[0x5740]) = v21;
  LODWORD(v40) = *(v14 + (BYTE4(v100) ^ 0xE2));
  STACK[0x51A0] = v9;
  LODWORD(v100) = (((v40 ^ HIDWORD(v100) ^ 0xA8) << 24) | ((*(v32 + (BYTE6(v100) ^ 0xB9)) ^ BYTE6(v100) ^ 0xD7) << 8) | ((v9[BYTE5(v100) ^ 0x19] ^ BYTE5(v100) ^ 0xCF) << 16) | HIBYTE(v100) ^ v9[HIBYTE(v100) ^ 0x5A]) ^ LODWORD(STACK[0x57A0]);
  v101 = *(&off_101353600 + (v4 & 0xF1E700A2)) - 12;
  LODWORD(v40) = *&v101[4 * (BYTE2(v100) ^ 0x76)] ^ 0xCDC36071;
  v102 = *(&off_101353600 + v4 - 23050) - 4;
  v103 = *&v102[4 * (BYTE1(v100) ^ 0x9B)] + 1641033568;
  LODWORD(STACK[0x5560]) = v4;
  v104 = *(&off_101353600 + (v4 ^ 0x5CFF)) - 8;
  DWORD1(v39) = v103 ^ 0x640CCDE ^ (v103 >> 5) ^ (v103 >> 2);
  LODWORD(v39) = DWORD1(v39);
  v105 = v39 >> 24;
  LODWORD(v29) = v100 ^ 0xF78C91A9;
  DWORD1(v39) = (-192923949 * *&v104[4 * (BYTE3(v100) ^ 0x7B)]) ^ 0x5BD4DFBC;
  LODWORD(v39) = DWORD1(v39);
  LODWORD(v36) = (-192923949 * *&v104[4 * (v100 ^ 0xF)]) ^ __ROR4__(v40, 16) ^ ((v39 >> 8) - ((2 * (v39 >> 8)) & 0x9DCCB13E) + 1323718815) ^ (v105 - ((2 * v105) & 0x9C88C4B6) + 1313104475) ^ v97;
  LODWORD(STACK[0x5730]) = v36;
  LODWORD(v37) = v36 ^ 0x45DA3030;
  v106 = v26 ^ 0x202CF1BC ^ v36 ^ 0x45DA3030;
  LODWORD(STACK[0x57A0]) = v106 ^ v21;
  LODWORD(v36) = v106 ^ v21 ^ 0xCCAAFDE9;
  LODWORD(STACK[0x56D0]) = v100 ^ 0xF78C91A9;
  v107 = v36 ^ v100 ^ 0xF78C91A9;
  LODWORD(STACK[0x5510]) = v36;
  v108 = *(&off_101353600 + v4 - 23855) - 8;
  LODWORD(v36) = *&v101[4 * ((v36 ^ v100 ^ 0xA9) ^ 0x9F)] ^ __ROR4__((-192923949 * *&v104[4 * (BYTE2(v107) ^ 2)]) ^ 0xCB947263, 16) ^ __ROR4__((-192923949 * *&v104[4 * (HIBYTE(v107) ^ 0x5E)]) ^ 0xBFE90E86, 8) ^ __ROR4__(*(v108 + 4 * (BYTE1(v107) ^ 0x21u)) ^ 0xE2AA2342, 24) ^ 0x5A16C22D;
  LODWORD(v95) = v37 ^ v36;
  LODWORD(STACK[0x56C0]) = v37 ^ v36;
  LODWORD(v32) = v26 ^ 0x202CF1BC ^ v36;
  LODWORD(v36) = *&v102[4 * (((v32 ^ v100 ^ 0x91A9) >> 8) ^ 0x93)] + 1641033568;
  LODWORD(v40) = *(v108 + 4 * (((v32 ^ v100 ^ 0xF78C91A9) >> 24) ^ 0x6C)) ^ 0xC703E527;
  LODWORD(v37) = *&v102[4 * (((v32 ^ v100 ^ 0xF78C91A9) >> 16) ^ 0xBA)] + 1641033568;
  LODWORD(v100) = v32 ^ v100 ^ 0xF78C91A9;
  LODWORD(STACK[0x5680]) = v32 ^ v29;
  LODWORD(v29) = *&v102[4 * ((v32 ^ v29) ^ 0xFA)] + 1641033568;
  LODWORD(v40) = v29 ^ __ROR4__(v40, 8) ^ (v29 >> 2) ^ (v29 >> 5) ^ __ROR4__(v36 ^ (v36 >> 5) ^ (v36 >> 2) ^ 0xB360D90A, 24) ^ __ROR4__(v37 ^ (v37 >> 5) ^ (v37 >> 2) ^ 0x759A1832, 16) ^ v95;
  LODWORD(STACK[0x5670]) = v40;
  LODWORD(v36) = v40 ^ 0x37EF77B6;
  LODWORD(v40) = v106 ^ v21 ^ 0xCCAAFDE9 ^ v40 ^ 0x37EF77B6;
  LODWORD(v20) = v36;
  LODWORD(STACK[0x5790]) = v36;
  v109 = v40 ^ v100;
  LODWORD(STACK[0x5660]) = v40;
  v110 = v101;
  LODWORD(v36) = *&v101[4 * ((v40 ^ v100) ^ 0xF3)] ^ __ROR4__((-192923949 * *&v104[4 * (((v40 ^ v100) >> 8) ^ 8)]) ^ 0x65AC4752, 24) ^ __ROR4__(*&v101[4 * (((v40 ^ v100) >> 16) ^ 0x22)] ^ 0x5D42FDD9, 16) ^ __ROR4__(*&v101[4 * (((v40 ^ v100) >> 24) ^ 0xE4)] ^ 0x271D7CEC, 8) ^ 0x81C62569;
  LODWORD(v100) = v40 ^ v32 ^ v36;
  LODWORD(STACK[0x5550]) = v32 ^ v36;
  LODWORD(STACK[0x55A0]) = v100;
  LODWORD(v40) = v100 ^ 0x2FE19A24;
  LODWORD(v100) = v100 ^ 0x2FE19A24 ^ v109;
  LODWORD(v37) = *(v108 + 4 * (BYTE1(v100) ^ 0x5Du)) ^ 0x11D2C75E;
  LODWORD(v95) = *&v102[4 * (BYTE3(v100) ^ 0x87)] + 1641033568;
  v111 = v100;
  LODWORD(STACK[0x5600]) = v100;
  v112 = v102;
  LODWORD(v21) = *&v102[4 * (BYTE2(v100) ^ 0x41)] + 1641033568;
  LODWORD(v37) = (-192923949 * *&v104[4 * (v100 ^ 0xAC)]) ^ __ROR4__(v37, 24) ^ __ROR4__(v95 ^ (v95 >> 5) ^ (v95 >> 2) ^ 0x66B070BF, 8);
  LODWORD(STACK[0x5620]) = v20 ^ v36;
  LODWORD(v100) = v37 ^ __ROR4__(v21 ^ (v21 >> 5) ^ (v21 >> 2) ^ 0x7EE0778E, 16) ^ v20 ^ v36;
  LODWORD(STACK[0x5630]) = v100;
  LODWORD(v37) = v100 ^ 0x2F659287;
  LODWORD(v100) = v100 ^ 0x2F659287 ^ v32 ^ v36;
  LODWORD(v14) = v100 ^ v40;
  LODWORD(STACK[0x55D0]) = v100;
  LODWORD(v101) = v111 ^ 0x463740C8 ^ v100 ^ v40;
  LODWORD(STACK[0x55E0]) = v101;
  LODWORD(v29) = (-192923949 * *&v104[4 * (v111 ^ 0xC8 ^ (v100 ^ v40) ^ 0x8F)]) ^ __ROR4__(*(v108 + 4 * (BYTE1(v101) ^ 0x83u)) ^ 0x7799F37F, 24) ^ __ROR4__(*(v108 + 4 * ((v101 >> 24) ^ 0x89)) ^ 0x9E70A954, 8) ^ __ROR4__(*(v108 + 4 * (BYTE2(v101) ^ 0xFBu)) ^ 0xA861C56F, 16) ^ v37;
  LODWORD(STACK[0x54D0]) = v29;
  LODWORD(v37) = v29 ^ 0xCC6615EE;
  v113 = v29 ^ 0xCC6615EE ^ v100;
  LODWORD(v101) = v113 ^ 0xBD230A0 ^ v111 ^ 0x463740C8;
  LODWORD(STACK[0x5540]) = v113 ^ 0xBD230A0;
  LODWORD(v29) = *(v108 + 4 * ((v101 >> 24) ^ 0xB0));
  LODWORD(v95) = bswap32(v29 & 0x8000FF ^ 0xBF0055C);
  v114 = v110;
  LODWORD(v36) = v95 & 0x104400A ^ *(v110 + 4 * (v113 ^ 0xA0 ^ v111 ^ 0xC8 ^ 0xD9u)) ^ __ROR4__((-192923949 * *&v104[4 * (BYTE2(v101) ^ 0xF8)]) ^ 0x36C63BA9, 16) ^ __ROR4__(*(v110 + 4 * (BYTE1(v101) ^ 0x63u)) ^ 0x83272EA0, 24) ^ (v95 ^ 0xDAFA0FF4) & ((v29 >> 8) & 0xFFFF7FFF ^ 0xFEB2B33D) ^ v37;
  LODWORD(STACK[0x5780]) = v36;
  LODWORD(v37) = v36 ^ 0x7104AF8;
  LODWORD(v29) = v36 ^ 0x7104AF8 ^ v100 ^ v40;
  LODWORD(STACK[0x5590]) = v29 ^ 0xBAAC0EBC;
  LODWORD(v36) = v29 ^ 0xBAAC0EBC ^ v101;
  LODWORD(v21) = *(v108 + 4 * (BYTE2(v36) ^ 0xAFu)) ^ 0xA18CE10D;
  LODWORD(v102) = (-192923949 * *&v104[4 * (BYTE3(v36) ^ 0xBB)]) ^ 0x48C7DCEB;
  LODWORD(v110) = v36;
  LODWORD(STACK[0x54F0]) = v36;
  v115 = *(v108 + 4 * (BYTE1(v36) ^ 0xB3u)) ^ 0x7B67C870;
  STACK[0x5570] = v112;
  LODWORD(v94) = *(v112 + 4 * (((((v29 ^ 0xBC ^ v101 ^ 0x3ABA561A) + 327292810) ^ ((v29 ^ 0xBC ^ v101 ^ 0x6964C53) + 799935937) ^ ((v29 ^ 0xBC ^ v101 ^ 0x3C2C1A2F) + 353655741)) - 2 * (v36 & 1) - 691552757) ^ 0x9A)) + 1641033568;
  v116 = v94 ^ __ROR4__(v21, 16) ^ (v94 >> 2) ^ (v94 >> 5) ^ __ROR4__(v102, 8) ^ __ROR4__(v115, 24) ^ v37;
  LODWORD(v36) = v113 ^ 0xBD230A0 ^ v37;
  LODWORD(STACK[0x5500]) = v36;
  LODWORD(v36) = v116 ^ 0x7C2D0EC0 ^ v36;
  LODWORD(STACK[0x5580]) = v36;
  LODWORD(v36) = v36 ^ 0xCD98E964;
  LODWORD(v100) = v29 ^ 0xB6F86034 ^ v36;
  LODWORD(v29) = v36;
  LODWORD(STACK[0x5430]) = v36;
  LODWORD(STACK[0x53E8]) = v100;
  LODWORD(v37) = v100 ^ v110 ^ 0x3967AC1F;
  LODWORD(STACK[0x54C0]) = v100 ^ v110;
  LODWORD(v102) = *&v104[4 * (BYTE2(v37) ^ 0x73)];
  LODWORD(v94) = *&v104[4 * (((v100 ^ v110 ^ 0xAC1F) >> 8) ^ 0xA8)];
  STACK[0x5408] = v104;
  LODWORD(v112) = *(v112 + 4 * (((v100 ^ v110) >> 24) ^ 0x2F)) + 1641033568;
  STACK[0x5400] = v108;
  LODWORD(v36) = *(v108 + 4 * ((v100 ^ v110) ^ 0x85u)) ^ __ROR4__((-192923949 * v102) ^ 0x91F1C524, 16) ^ __ROR4__((-192923949 * v94) ^ 0x11879A20, 24) ^ __ROR4__(v112 ^ (v112 >> 5) ^ (v112 >> 2) ^ 0xC342FF16, 8) ^ v116 ^ 0x7C2D0EC0;
  LODWORD(STACK[0x5520]) = v36;
  LODWORD(v76) = v36 ^ 0x115A514A;
  LODWORD(v21) = v36 ^ 0x115A514A ^ v29;
  LODWORD(v36) = v21 ^ 0x7AABAAAE ^ v100;
  LODWORD(STACK[0x54B0]) = v36;
  LODWORD(v94) = v36 ^ 0x3626BC3;
  LODWORD(v36) = v36 ^ 0x3626BC3 ^ v37;
  STACK[0x5720] = v114;
  DWORD1(v39) = *(v108 + 4 * (BYTE2(v36) ^ 0x23u)) ^ 0xD6A3E702;
  LODWORD(v39) = DWORD1(v39);
  LODWORD(v112) = v39 >> 16;
  LODWORD(v39) = __ROR4__(*(v114 + 4 * (BYTE1(v36) ^ 0x89u)) ^ 0x9788D1F8, 24);
  LODWORD(STACK[0x5470]) = v36;
  LODWORD(v36) = v112 ^ v39 ^ (-192923949 * *&v104[4 * (v36 ^ 0x4A)]) ^ __ROR4__(*(v114 + 4 * (BYTE3(v36) ^ 0xA6)) ^ 0xA69033FD, 8) ^ v76;
  LODWORD(STACK[0x5530]) = v36;
  LODWORD(v36) = v21 ^ 0x7AABAAAE ^ v36;
  LODWORD(STACK[0x5490]) = v36;
  LODWORD(STACK[0x5188]) = v36 ^ 0x6DC30830 ^ v94;
  v117 = v36 ^ 0x6DC30830 ^ v37;
  LODWORD(STACK[0x53F8]) = v109 ^ 0x128F1A51;
  LODWORD(v104) = v21 ^ 0xE4880820;
  LODWORD(v99) = LODWORD(STACK[0x57A0]) ^ 0xC4E06380;
  LODWORD(STACK[0x54E0]) = v14;
  LODWORD(STACK[0x5360]) = (((v14 ^ 0x218C0FCB) + 1718399012) ^ ((v14 ^ 0x596B5E6D) + 512483718) ^ ((v14 ^ 0xFCD0673A) - 1154426669)) - (((v117 ^ 0x98711DF9) + 365340104) ^ ((v117 ^ 0xB92F5830) + 882434063) ^ ((v117 ^ 0xCC9BBCB8) + 1093403783)) - 1667581989;
  LODWORD(STACK[0x5420]) = v113;
  LODWORD(STACK[0x5358]) = (((v26 ^ 0xBEF23B92) + 1564108924) ^ ((v26 ^ 0xC6AEB78E) + 627500136) ^ ((v26 ^ 0xEDCDEF31) + 235257049)) - 916411321 + (((v113 ^ 0x58B79318) - 856992433) ^ ((v113 ^ 0x3EE89812) - 1431019963) ^ ((v113 ^ 0x3245EFAF) - 1508300294));
  LODWORD(STACK[0x5180]) = (v101 ^ 0x525B61A) - v99 + 1752067169;
  LODWORD(STACK[0x5410]) = (((v106 ^ 0xD65091D7) - 69228376) ^ ((v106 ^ 0x5DE40437) + 1886076232) ^ ((v106 ^ 0x4F54F6BF) + 1658572752)) - 825568626;
  LODWORD(STACK[0x57A0]) = (((v26 ^ 0x544C0C24) - 1216061490) ^ ((v26 ^ 0x927E439) - 353388591) ^ ((v26 ^ 0xC8FA8B30) + 724752602)) - (((v32 ^ 0xE2B26887) - 2090034674) ^ ((v32 ^ 0xC43CD6AA) - 1511906271) ^ ((v32 ^ 0xEAF01706) - 1959860851));
  LODWORD(v21) = LODWORD(STACK[0x5510]) ^ v32;
  LODWORD(v37) = (((v116 ^ 0xF18490F0) - 567765568) ^ ((v116 ^ 0xD21C1668) - 38792408) ^ ((v116 ^ 0x404E5F5D) + 1877105171)) + (((v21 ^ 0x88D8CFE5) + 1961146657) ^ ((v21 ^ 0xF36E7ED) - 217411287) ^ ((v21 ^ 0x99654E17) + 1700346067));
  v118 = ((LODWORD(STACK[0x5780]) ^ 0x382A7926) - 1489664441) ^ ((LODWORD(STACK[0x5780]) ^ 0xE10678E1) + 2115602306) ^ ((LODWORD(STACK[0x5780]) ^ 0xE4E46B54) + 2080085045);
  LODWORD(v102) = v107 ^ 0xFFC60FB4;
  LODWORD(v110) = v117 ^ v101 ^ 0xE8E04F6B;
  v119 = v110 + 232181750;
  LODWORD(v40) = v106 ^ 0xD270C68F ^ (v110 - ((2 * (v110 + 232181750)) & 0x2D214BA0) + 610760134);
  v120 = STACK[0x54D0];
  LODWORD(v84) = v37 + 1366682849;
  LODWORD(v95) = 2 * (v37 + 1366682849);
  LODWORD(STACK[0x5510]) = v37 - (v95 & 0x9955FA6C) + 505473559;
  LODWORD(STACK[0x53B8]) = (((v120 ^ 0xBC21FCB9) - 1809002355) ^ ((v120 ^ 0xF4EE41E2) - 589074984) ^ ((v120 ^ 0xF25483A9) - 631656547)) - (((v101 ^ 0xC24131E3) - 1409647557) ^ ((v101 ^ 0x6229B5BC) + 194181222) ^ ((v101 ^ 0xA54D3245) - 856260707)) + 1536630723;
  LODWORD(STACK[0x5318]) = v32;
  v121 = v104 + (v32 ^ 0xCC7EA92B);
  v122 = v121 ^ 0x3B30FD21;
  LODWORD(STACK[0x53D8]) = (v121 ^ 0x3B30FD21) - 2 * ((v121 ^ 0x3B30FD21) & 0x4EB0C2DA ^ v121 & 8) - 827276590;
  LODWORD(STACK[0x5460]) = v40 + 1426883679 - ((2 * v40) & 0xAA1908BE);
  LODWORD(v76) = STACK[0x5550];
  LODWORD(v29) = (LODWORD(STACK[0x5550]) ^ 0x86C4DDB3) - v102 - 1483119122;
  LODWORD(STACK[0x5340]) = v29;
  LODWORD(STACK[0x5440]) = v95;
  LODWORD(STACK[0x5450]) = v37;
  LODWORD(STACK[0x53C8]) = v26 ^ (v37 - (v95 & 0xEF7B74CE) + 1228121928) ^ 0x1C37AC16;
  LODWORD(STACK[0x5308]) = v121;
  LODWORD(STACK[0x5338]) = v121 ^ 0x3B30FD21;
  LODWORD(STACK[0x5320]) = (v121 ^ 0x3B30FD21) + 239826407 - 2 * ((v121 ^ 0x3B30FD21) & 0xE4B75F7 ^ v121 & 0x10);
  LODWORD(STACK[0x5350]) = v37 - (v95 & 0x132FC902) - 619851422;
  v123 = STACK[0x53E8];
  LODWORD(v114) = v101 ^ 0x58B90114 ^ LODWORD(STACK[0x53E8]);
  v124 = v114 + 415855099;
  LODWORD(STACK[0x53A8]) = v114 - ((2 * (v114 + 415855099)) & 0x79FE0A94) - 708282555;
  LODWORD(STACK[0x53F0]) = ((v110 + 232181750) ^ v99) + 1426883679 - ((2 * ((v110 + 232181750) ^ v99)) & 0xAA1908BE);
  LODWORD(STACK[0x53E0]) = v102 + 1426883679 - ((2 * v102) & 0xAA1908BE);
  LODWORD(v36) = LODWORD(STACK[0x5430]) ^ LODWORD(STACK[0x5790]);
  v125 = v36 ^ 0xBE1FF6E4;
  LODWORD(STACK[0x53D0]) = v21 ^ v36 ^ 0xBE1FF6E4 ^ 0xC51D9275;
  LODWORD(STACK[0x5348]) = v114 - ((2 * (v114 + 415855099)) & 0x8ECB0634) + 1613690133;
  LODWORD(STACK[0x52E0]) = v36;
  LODWORD(STACK[0x53A0]) = v32 ^ v36 ^ 0x85D38030;
  LODWORD(v40) = (v114 - ((2 * (v114 + 415855099)) & 0xCAADE98E) + 2116052674) ^ LODWORD(STACK[0x5670]);
  LODWORD(STACK[0x53C0]) = v76 ^ 0xD55B7426 ^ (v114 + 415855099) ^ (v110 - ((2 * (v110 + 232181750)) & 0x42EDDAAE) - 1353859763);
  v126 = v114 - ((2 * (v114 + 415855099)) & 0xA493F7EA) + 1796435440;
  LODWORD(STACK[0x5310]) = v114 - ((2 * (v114 + 415855099)) & 0xEC3D2F5A) + 250087848;
  LODWORD(v76) = v110 + 1423638515 + ((2 * ((v110 + 232181750) & 0x47042FFD ^ (v117 ^ v101) & 1)) ^ 0xFFFFFFFD);
  LODWORD(v100) = v29 ^ LODWORD(STACK[0x5630]);
  DWORD1(v39) = v100 ^ 0xC9;
  LODWORD(v39) = v100 ^ 0x4C98E400;
  LODWORD(STACK[0x5390]) = v120 ^ 0x8C50891;
  LODWORD(v102) = STACK[0x53F8];
  v127 = LODWORD(STACK[0x5410]) + LODWORD(STACK[0x53F8]);
  LODWORD(STACK[0x5388]) = v101 ^ 0xB77B8079;
  LODWORD(STACK[0x52C0]) = 2 * v127;
  LODWORD(STACK[0x5378]) = LODWORD(STACK[0x5420]) ^ 0xE644D2C6;
  v128 = v118 + v99 + 2009347723;
  LODWORD(STACK[0x5300]) = v118 + v99 + 1210135996 - ((2 * v128) & 0xA0B9FE62);
  LODWORD(STACK[0x5780]) ^= 0xF36A62FD;
  LODWORD(STACK[0x5370]) = 2 * v128;
  LODWORD(STACK[0x5380]) = v118 + v99;
  v129 = v118 + v99 - ((2 * v128) & 0x3A77CE4) - 107481859;
  LODWORD(v100) = LODWORD(STACK[0x57A0]) - 90374482;
  LODWORD(STACK[0x5368]) = v100;
  v130 = v100 ^ v127;
  LODWORD(v110) = v100 ^ v127 ^ 0x10A670AB ^ v116;
  LODWORD(STACK[0x5670]) = v110;
  LODWORD(v100) = v128 ^ 0xC496238 ^ LODWORD(STACK[0x5520]);
  v131 = v104;
  LODWORD(STACK[0x5278]) = v104;
  LODWORD(STACK[0x5410]) = v99 - v104;
  v132 = v99 - v104 + 1652283118;
  LODWORD(STACK[0x52D0]) = v100 ^ -v100 ^ (v132 - (v100 ^ v132));
  LODWORD(STACK[0x52D8]) = v118 + v99 - ((2 * v128) & 0xA9862532) - 863549148;
  LODWORD(STACK[0x5288]) = v127 - 1878523734 + ~((2 * v127) & 0x20100152);
  v133 = v40 ^ v119;
  LODWORD(v40) = (STACK[0x4C18] + 895566793) ^ v110 ^ 0xAB85C8C6 ^ ((v133 ^ 0x2A6796B3) - ((2 * (v133 ^ 0x2A6796B3)) & 0x8C23D55E) + 1175579303);
  v134 = v128 ^ LODWORD(STACK[0x5180]);
  LODWORD(STACK[0x52A0]) = v134 ^ 0x20CC4D44 ^ v117;
  LODWORD(STACK[0x52B0]) = LODWORD(STACK[0x5530]) ^ 0xB609BA5C;
  v135 = v130;
  LODWORD(STACK[0x5298]) = v130;
  LODWORD(STACK[0x5630]) = v130 ^ 0x2EEC1E60 ^ v123;
  LODWORD(STACK[0x5550]) = LODWORD(STACK[0x55A0]) ^ v124 ^ 0xB25CCD69 ^ v76;
  v136 = STACK[0x5188];
  v137 = LODWORD(STACK[0x5188]) ^ 0x5C87D846;
  LODWORD(v39) = __ROR4__((v39 >> 10) ^ 0xF52C1889, 22);
  LODWORD(STACK[0x52B8]) = v137 ^ v39 ^ 0x7AB73AAF;
  v138 = (v40 - 1427837463) ^ v137 ^ v39;
  LODWORD(v100) = STACK[0x54E0];
  LODWORD(STACK[0x5290]) = LODWORD(STACK[0x54E0]) ^ 0x7BC8AF5;
  LODWORD(STACK[0x5280]) = v100 ^ 0xB9A943E6 ^ (v127 - 128565697 - ((2 * v127) & 0xF0AC7ED6) + 300) ^ LODWORD(STACK[0x5540]);
  LODWORD(v36) = LODWORD(STACK[0x5730]) ^ 0x8EB5BC5;
  v139 = LODWORD(STACK[0x5358]) ^ 0x6964544;
  LODWORD(STACK[0x5730]) = v119 ^ v139 ^ LODWORD(STACK[0x53E0]);
  v140 = v119 ^ v139 ^ v36;
  LODWORD(v36) = LODWORD(STACK[0x5740]) ^ LODWORD(STACK[0x5510]);
  v141 = v102;
  LODWORD(STACK[0x53E0]) = v102 - v131;
  v142 = v36 ^ (v102 - v131) ^ 0x1ACCE2E0 ^ LODWORD(STACK[0x5320]);
  v143 = (v102 - v131) ^ 0xCF5601D6;
  LODWORD(v76) = LODWORD(STACK[0x5750]) ^ 0x69601E64;
  LODWORD(STACK[0x52F0]) = v84;
  LODWORD(v84) = v143 ^ v84;
  LODWORD(STACK[0x5420]) = v84;
  v144 = v84 ^ v76 ^ LODWORD(STACK[0x53D8]);
  LODWORD(v108) = LODWORD(STACK[0x56D0]) ^ 0x69601E64 ^ LODWORD(STACK[0x5350]);
  LODWORD(STACK[0x52C8]) = v143;
  LODWORD(STACK[0x5430]) = v122 ^ v143;
  v145 = v122 ^ v143 ^ LODWORD(STACK[0x53C8]);
  v146 = v122 ^ v143 ^ v108;
  if (v138)
  {
    v147 = v142;
  }

  else
  {
    v147 = v122 ^ v143 ^ LODWORD(STACK[0x53C8]);
  }

  LODWORD(STACK[0x5540]) = v147;
  if (v138)
  {
    v148 = v146;
  }

  else
  {
    v148 = v142;
  }

  if (v138)
  {
    v149 = v144;
  }

  else
  {
    v149 = v146;
  }

  LODWORD(STACK[0x5530]) = v149;
  if (v138)
  {
    v150 = v145;
  }

  else
  {
    v150 = v144;
  }

  v151 = LODWORD(STACK[0x5680]) ^ 0xCC40E709;
  v152 = LODWORD(STACK[0x56C0]) ^ 0x259344D6;
  v153 = STACK[0x5360];
  v154 = LODWORD(STACK[0x5360]) ^ 0x2C242B95;
  LODWORD(STACK[0x52E8]) = v125;
  v155 = v151 ^ v154 ^ v125;
  v156 = v152 ^ v154 ^ v125;
  v157 = LODWORD(STACK[0x5660]) ^ LODWORD(STACK[0x53A8]) ^ 0xEEA2A339;
  v158 = LODWORD(STACK[0x5318]) ^ LODWORD(STACK[0x5790]) ^ v126 ^ 0x364C0B0E;
  v159 = v133 ^ 0xD211EA36;
  v160 = LODWORD(STACK[0x5600]) ^ 0xF88882E ^ LODWORD(STACK[0x5348]);
  LODWORD(STACK[0x52F8]) = v124;
  LODWORD(STACK[0x52A8]) = v119 ^ v124;
  v161 = v141 ^ 0x53F3B443 ^ v119 ^ v124;
  v162 = v157 ^ v119;
  v163 = v158 ^ v119;
  if (v138)
  {
    v164 = v141 ^ 0x53F3B443 ^ v119 ^ v124;
  }

  else
  {
    v164 = v162;
  }

  LODWORD(STACK[0x5520]) = v164;
  if (v138)
  {
    v165 = v162;
  }

  else
  {
    v165 = v163;
  }

  LODWORD(STACK[0x53E8]) = v165;
  if (v138)
  {
    v166 = v159;
  }

  else
  {
    v166 = v161;
  }

  LODWORD(STACK[0x53D8]) = v166;
  if (v138)
  {
    v167 = v163;
  }

  else
  {
    v167 = v159;
  }

  LODWORD(STACK[0x5510]) = v167;
  v168 = LODWORD(STACK[0x5620]) ^ LODWORD(STACK[0x5310]) ^ 0x351E23B0;
  v169 = LODWORD(STACK[0x55E0]) ^ 0x5D51E8EA;
  v170 = LODWORD(STACK[0x55D0]) ^ 0x8932DBA7;
  v171 = (v127 - ((2 * v127) & 0xC262A2E) + 101913879) ^ LODWORD(STACK[0x5590]) ^ 0xE4ACAD45;
  v172 = v127;
  v173 = v127 ^ LODWORD(STACK[0x54F0]) ^ 0xACEF138F ^ v129;
  v174 = v128 ^ v127;
  LODWORD(STACK[0x53A8]) = v128 ^ v127;
  LODWORD(STACK[0x5330]) = v127;
  v175 = LODWORD(STACK[0x5780]) ^ v128 ^ v127;
  v176 = LODWORD(STACK[0x5500]) ^ 0x61145FB5 ^ v174;
  v177 = v171 ^ v128;
  v178 = v128;
  LODWORD(STACK[0x51B0]) = v128;
  if (v138)
  {
    v179 = v176;
  }

  else
  {
    v179 = v175;
  }

  LODWORD(STACK[0x5500]) = v179;
  if (v138)
  {
    v180 = v177;
  }

  else
  {
    v180 = v176;
  }

  LODWORD(STACK[0x54F0]) = v180;
  if (v138)
  {
    v181 = v175;
  }

  else
  {
    v181 = v173;
  }

  LODWORD(STACK[0x54E0]) = v181;
  if (v138)
  {
    v182 = v173;
  }

  else
  {
    v182 = v177;
  }

  LODWORD(STACK[0x54D0]) = v182;
  v183 = v135 ^ 0xE0734045 ^ LODWORD(STACK[0x5580]);
  v184 = LODWORD(STACK[0x5368]) ^ LODWORD(STACK[0x5288]) ^ 0x7E34D2AF ^ LODWORD(STACK[0x54C0]);
  LODWORD(STACK[0x5328]) = v132;
  v185 = (LODWORD(STACK[0x52D0]) + v132) ^ 0xBD9D80C;
  v186 = v132 ^ LODWORD(STACK[0x5300]) ^ 0x3150B186 ^ LODWORD(STACK[0x5470]);
  v187 = LODWORD(STACK[0x54B0]) ^ LODWORD(STACK[0x52D8]) ^ v132 ^ 0x3BA5E408;
  v188 = LODWORD(STACK[0x5278]) ^ 0x85FAE783;
  LODWORD(STACK[0x53C8]) = v132 ^ v178;
  v189 = v188 ^ v132 ^ v178;
  if (v138)
  {
    v190 = v185;
  }

  else
  {
    v190 = v186;
  }

  LODWORD(STACK[0x5750]) = v190;
  if (v138)
  {
    v191 = v186;
  }

  else
  {
    v191 = v187;
  }

  LODWORD(STACK[0x54C0]) = v191;
  if (v138)
  {
    v192 = v187;
  }

  else
  {
    v192 = v189;
  }

  LODWORD(STACK[0x5740]) = v192;
  if (v138)
  {
    v193 = v189;
  }

  else
  {
    v193 = v185;
  }

  LODWORD(STACK[0x54B0]) = v193;
  v194 = LODWORD(STACK[0x5490]) ^ 0x9C804ED7;
  v195 = LODWORD(STACK[0x52A0]) ^ v136;
  v196 = v134 ^ 0xF090B275;
  v197 = v137 ^ v134;
  LODWORD(STACK[0x53F8]) = v137 ^ v134;
  v198 = v137 ^ v134 ^ LODWORD(STACK[0x52B0]);
  v199 = v197 ^ v194;
  if (v138)
  {
    v200 = v198;
  }

  else
  {
    v200 = v195;
  }

  if (v138)
  {
    v201 = v195;
  }

  else
  {
    v201 = v196;
  }

  LODWORD(STACK[0x55D0]) = v201;
  if (v138)
  {
    v202 = v196;
  }

  else
  {
    v202 = v199;
  }

  if (v138)
  {
    v203 = v199;
  }

  else
  {
    v203 = v198;
  }

  LODWORD(STACK[0x55A0]) = v203;
  v204 = LODWORD(STACK[0x5460]) ^ v139;
  LODWORD(STACK[0x52D8]) = v139;
  v205 = LODWORD(STACK[0x53F0]) ^ v139;
  v206 = LODWORD(STACK[0x53D0]) ^ v153;
  LODWORD(STACK[0x52D0]) = v154;
  v207 = LODWORD(STACK[0x53A0]) ^ v154;
  v208 = STACK[0x53B8];
  v209 = LODWORD(STACK[0x53B8]) ^ v172;
  LODWORD(STACK[0x52B0]) = v209;
  v210 = LODWORD(STACK[0x5390]) ^ v209;
  LODWORD(STACK[0x5178]) = v137;
  v211 = v137 ^ LODWORD(STACK[0x5340]);
  v212 = LODWORD(STACK[0x5290]) ^ v211;
  v213 = LODWORD(STACK[0x5388]) ^ v209;
  v214 = LODWORD(STACK[0x5378]) ^ v209;
  v215 = LODWORD(STACK[0x5280]) ^ v208;
  LODWORD(STACK[0x5378]) = v140;
  v216 = STACK[0x5730];
  if (v138)
  {
    v217 = v140;
  }

  else
  {
    v217 = STACK[0x5730];
  }

  LODWORD(STACK[0x5790]) = v217;
  if ((v138 & 1) == 0)
  {
    v216 = v205;
  }

  LODWORD(STACK[0x5680]) = v216;
  LODWORD(STACK[0x5290]) = v204;
  if (v138)
  {
    v218 = v205;
  }

  else
  {
    v218 = v204;
  }

  LODWORD(STACK[0x5620]) = v218;
  LODWORD(STACK[0x5288]) = v206;
  if (v138)
  {
    v206 = v155;
  }

  LODWORD(STACK[0x5600]) = v206;
  if (v138)
  {
    v219 = v156;
  }

  else
  {
    v219 = v155;
  }

  LODWORD(STACK[0x5268]) = v219;
  LODWORD(STACK[0x5278]) = v207;
  if (v138)
  {
    v220 = v207;
  }

  else
  {
    v220 = v156;
  }

  LODWORD(STACK[0x55E0]) = v220;
  LODWORD(STACK[0x5300]) = v119;
  v221 = v168 ^ v119;
  v222 = STACK[0x53C0];
  v223 = STACK[0x5550];
  if ((v138 & 1) == 0)
  {
    v223 = STACK[0x53C0];
  }

  LODWORD(STACK[0x5470]) = v223;
  if (v138)
  {
    v224 = v222;
  }

  else
  {
    v224 = v168 ^ v119;
  }

  LODWORD(STACK[0x5730]) = v224;
  LODWORD(STACK[0x5260]) = v160 ^ v119;
  if ((v138 & 1) == 0)
  {
    v221 = v160 ^ v119;
  }

  LODWORD(STACK[0x5460]) = v221;
  LODWORD(STACK[0x5250]) = v211;
  v225 = v169 ^ v211;
  v226 = STACK[0x52B8];
  if (v138)
  {
    v227 = STACK[0x52B8];
  }

  else
  {
    v227 = v169 ^ v211;
  }

  LODWORD(STACK[0x5590]) = v227;
  LODWORD(STACK[0x5270]) = v212;
  if ((v138 & 1) == 0)
  {
    v225 = v212;
  }

  LODWORD(STACK[0x5258]) = v170 ^ v211;
  if (v138)
  {
    v228 = v170 ^ v211;
  }

  else
  {
    v228 = v226;
  }

  LODWORD(STACK[0x53A0]) = v210;
  LODWORD(STACK[0x5320]) = v213;
  if (v138)
  {
    v229 = v210;
  }

  else
  {
    v229 = v213;
  }

  LODWORD(STACK[0x5580]) = v229;
  LODWORD(STACK[0x5350]) = v214;
  LODWORD(STACK[0x5318]) = v215;
  if (v138)
  {
    v230 = v215;
  }

  else
  {
    v230 = v214;
  }

  LODWORD(STACK[0x52A0]) = v184;
  v231 = STACK[0x5630];
  if (v138)
  {
    v231 = v184;
  }

  LODWORD(STACK[0x5348]) = v183;
  v232 = STACK[0x5670];
  if (v138)
  {
    v232 = v183;
  }

  LODWORD(STACK[0x5780]) = v138;
  if ((v138 & 2) != 0)
  {
    v233 = v150;
  }

  else
  {
    v233 = v148;
  }

  LODWORD(STACK[0x56D0]) = v233;
  if ((v138 & 2) != 0)
  {
    v234 = v148;
  }

  else
  {
    v234 = v150;
  }

  LODWORD(STACK[0x53D0]) = v234;
  if ((v138 & 2) != 0)
  {
    v235 = v225;
  }

  else
  {
    v235 = v228;
  }

  LODWORD(STACK[0x5280]) = v235;
  if ((v138 & 2) != 0)
  {
    v225 = v228;
  }

  LODWORD(STACK[0x53F0]) = v225;
  if ((v138 & 2) != 0)
  {
    v236 = v232;
  }

  else
  {
    v236 = v231;
  }

  LODWORD(STACK[0x56C0]) = v236;
  if ((v138 & 2) != 0)
  {
    v237 = v231;
  }

  else
  {
    v237 = v232;
  }

  LODWORD(STACK[0x5490]) = v237;
  if ((v138 & 2) != 0)
  {
    v238 = v200;
  }

  else
  {
    v238 = v202;
  }

  LODWORD(STACK[0x53C0]) = v238;
  if ((v138 & 2) != 0)
  {
    v239 = v202;
  }

  else
  {
    v239 = v200;
  }

  LODWORD(STACK[0x5660]) = v239;
  v240 = STACK[0x5398];
  v241 = STACK[0x5190];
  v242 = STACK[0x55F0] ^ 0xF5 ^ *(STACK[0x5190] + (STACK[0x55F0] ^ 0xC4));
  v243 = STACK[0x51A0];
  v244 = STACK[0x51A8];
  v245 = v240[7] ^ 0xE1 ^ *(STACK[0x51A8] + (v240[7] ^ 0x6CLL));
  v246 = (v240[7] ^ 0xE1 ^ *(STACK[0x51A8] + (v240[7] ^ 0x6CLL))) & 0xFF00FFFF | (((STACK[0x5610] ^ *(STACK[0x51A0] + (STACK[0x5610] ^ 0x7A))) ^ 6) << 16);
  v247 = STACK[0x5198];
  v248 = STACK[0x5650] ^ 0xA3 ^ *(STACK[0x5198] + (STACK[0x5650] ^ 0x77));
  v249 = *(STACK[0x51A0] + (v240[15] ^ 0x63)) ^ v240[15] & 0xDF ^ ((v240[15] | 0xDF) + 126) ^ 0xDF | ((v240[13] ^ 0xC5 ^ *(v241 + (v240[13] ^ 0x65))) << 16) | ((v240[12] ^ 0xB2 ^ *(v241 + (v240[12] ^ 0x81))) << 24);
  LODWORD(STACK[0x5650]) = v240[11] ^ 0xD0 ^ *(STACK[0x5198] + (v240[11] ^ 0x28)) | ((v240[9] ^ *(STACK[0x5190] + (v240[9] ^ 0xA5)) ^ 0x70) << 16) | ((STACK[0x5640] ^ 0x8D ^ *(STACK[0x51A0] + (STACK[0x5640] ^ 0xE7))) << 24) | ((v240[10] ^ 0x88 ^ *(STACK[0x51A0] + (v240[10] ^ 0x8ELL))) << 8);
  v250 = v244;
  v251 = (v248 << 8) | ((STACK[0x55C0] ^ 0xE9 ^ *(v244 + (STACK[0x55C0] ^ 0x36))) << 24) | v246;
  v252 = v251 + 402858343 - 2 * (v251 & 0x1803217F ^ v245 & 0x18);
  v253 = v249 | ((v240[14] ^ 0x74 ^ *(v243 + (v240[14] ^ 0x25))) << 8);
  v254 = (v240[3] ^ 0x98 ^ *(v247 + (v240[3] ^ 0x91))) & 0xFF00FFFF | (v242 << 16) | ((*v240 ^ 0x4E ^ *(v241 + (*v240 ^ 0xF8))) << 24);
  v255 = v254 + 1810966351 - ((2 * v254) & 0xD7E20046);
  v256 = &v240[-(STACK[0x5760] & 0x28F305CDF0718BC6) + 0x147982E6F838C5E3];
  v257 = (((v256 & 0xFFFFFFF8 ^ 0x95033DB2) + 1551733755) ^ ((v256 & 0xFFFFFFF8 ^ 0x7FB2DB29) - 1228114590) ^ ((v256 & 0xFFFFFFF8 ^ 0x1289237B) - 604533452)) - 290546242;
  v258 = (v257 ^ 0xE3536C89) & (2 * (v257 & 0xC2186088)) ^ v257 & 0xC2186088;
  v259 = ((2 * (v257 ^ 0x6343EC89)) ^ 0x42B71802) & (v257 ^ 0x6343EC89) ^ (2 * (v257 ^ 0x6343EC89)) & 0xA15B8C00;
  v260 = (v259 ^ 0xA10B0001) & (4 * v258) ^ v258;
  v261 = ((4 * (v259 ^ 0xA1488401)) ^ 0x856E3004) & (v259 ^ 0xA1488401) ^ (4 * (v259 ^ 0xA1488401)) & 0xA15B8C00;
  v262 = v260 ^ 0xA15B8C01 ^ (v261 ^ 0x814A0000) & (16 * v260);
  v263 = (16 * (v261 ^ 0x20118C01)) & 0xA15B8C00 ^ 0xA0430C01 ^ ((16 * (v261 ^ 0x20118C01)) ^ 0x15B8C010) & (v261 ^ 0x20118C01);
  v264 = ((v262 << 8) ^ 0x5B8C0100) & v263 ^ v262 ^ ((v262 << 8) & 0xA15B8C00 | 1);
  v265 = ((v263 << 8) ^ 0x5B8C0100) & v263 ^ (v263 << 8) & 0xA15B8C00;
  v266 = v257 ^ (2 * (v265 & 0x4BA81100 ^ v264 ^ ((v264 << 16) ^ 0xC7A81191) & (v265 ^ 0x20530000) ^ ((v264 << 16) ^ 0xC7A81191) & 0x215B0001)) ^ 0x80AF7888;
  v255 += 3540;
  LODWORD(v244) = (v255 ^ 0x8006CA48) & (((v240[2] ^ 0x88 ^ *(v243 + (v240[2] ^ 0x5CLL))) << 8) ^ 0xAB96DE4B);
  v267 = v255 & 0x546921B4;
  *(&v268 + 1) = (v240 - 130497280 - (STACK[0x5760] & 0xF0718BC6) + 227) & 0xFFFFFFF8 ^ 0xE0;
  *&v268 = v256 ^ 0x147982E6F838C500;
  v269 = *(STACK[0x5480] + (STACK[0x54A0] & v266)) + (v268 >> 8);
  *&v268 = __ROR8__(*(STACK[0x5480] + (STACK[0x54A0] & v266)), 61);
  v270 = (v268 - ((2 * v268) & 0x32AC2AB913F4554CLL) + 0x1956155C89FA2AA6) ^ v269;
  *&v268 = __ROR8__(v269 ^ 0xDE6013167012C678, 8);
  v271 = (((v268 ^ 0x4C7F172E7C44A97DLL) + 0x778ABB68EFF65C5BLL) ^ ((v268 ^ 0xC1E74D728B2CDF75) - 0x5ED1ECBE761D5ADLL) ^ ((v268 ^ 0x28EBD8369D84842FLL) + 0x131E74700E367109)) - 0x56E811B48416801DLL + (((v270 ^ 0xBD3643505BC6DBFELL) - 0x4E1C33083B9B9661) ^ ((v270 ^ 0x63F646154A328EF7) + 0x6F23C9B2D5903C98) ^ ((v270 ^ 0x6A74696504EE9E72) + 0x66A1E6C29B4C2C13));
  v272 = v271 ^ __ROR8__(v270 ^ 0xF32A7058605D4D9FLL, 61);
  *&v268 = __ROR8__(v271 ^ 0xD4CB5BAFE190B966, 8);
  v273 = ((v268 ^ 0xCB56C34211DB529ELL) - 0x2E3C8B93FFC24C39) ^ ((v268 ^ 0xE029C8D2710769DELL) - 0x54380039F1E7779) ^ ((v268 ^ 0x4DA235B370134BC6) + 0x5737829D61F5AA9FLL);
  *(&v268 + 1) = v272 ^ 0x7345F683B422FDCLL;
  *&v268 = v272;
  v274 = (((v272 ^ 0x2EF21DF32365CE5CLL) - 0x69C6429B1827E180) ^ ((v272 ^ 0x24C5AAC125F18856) - 0x63F1F5A91EB3A78ALL) ^ ((v272 ^ 0x3F322C4E82484E28) - 0x78067326B90A61F4)) - 0xA16C4F8418B69E1 + v273;
  v275 = v274 ^ (v268 >> 61);
  v276 = (v275 ^ 0x2979BA2E015AE1C1) + __ROR8__(v274 ^ 0xB8F79A8BFDABDE30, 8);
  *(&v268 + 1) = v275 ^ 0x979BA2E015AE1C1;
  *&v268 = v275 ^ 0x2000000000000000;
  v277 = v268 >> 61;
  v278 = STACK[0x5700] - 0x159566543068100 - (STACK[0x5710] & 0xFD4D533579F2FF4CLL) + 166;
  v279 = (((v278 & 0xFFFFFFF8 ^ 0xC2533B2F) + 227920044) ^ ((v278 & 0xFFFFFFF8 ^ 0x4986D960) - 2042615067) ^ ((v278 & 0xFFFFFFF8 ^ 0x372C9DEF) - 118854036)) - 1816492589;
  LODWORD(v266) = (v279 ^ 0x920B07E7) & (2 * (v279 & 0xDB1357F7)) ^ v279 & 0xDB1357F7;
  v280 = ((2 * (v279 ^ 0x822D8B4B)) ^ 0xB27DB978) & (v279 ^ 0x822D8B4B) ^ (2 * (v279 ^ 0x822D8B4B)) & 0x593EDCBC;
  LODWORD(v266) = (v280 ^ 0x101C9838) & (4 * v266) ^ v266;
  v281 = ((4 * (v280 ^ 0x49024484)) ^ 0x64FB72F0) & (v280 ^ 0x49024484) ^ (4 * (v280 ^ 0x49024484)) & 0x593EDCBC;
  LODWORD(v266) = (v281 ^ 0x403A50B0) & (16 * v266) ^ v266;
  v282 = ((16 * (v281 ^ 0x19048C0C)) ^ 0x93EDCBC0) & (v281 ^ 0x19048C0C) ^ (16 * (v281 ^ 0x19048C0C)) & 0x593EDCB0;
  LODWORD(v266) = v266 ^ 0x593EDCBC ^ (v282 ^ 0x112CC800) & (v266 << 8);
  *(&v268 + 1) = v278 & 0xFFFFFFF8 ^ 0xA0;
  *&v268 = v278 ^ 0xFEA6A99ABCF97F00;
  v276 ^= 0x2E5222B49D6879D1uLL;
  v283 = v276 ^ v277;
  v284 = (__ROR8__(v276, 8) + v283) ^ 0xF1AD040F639B7ED3;
  v285 = v284 ^ __ROR8__(v283, 61);
  v286 = (__ROR8__(v284, 8) + v285) ^ 0xC158605A13FFA118;
  v287 = v286 ^ __ROR8__(v285, 61);
  v288 = (v287 + __ROR8__(v286, 8)) ^ 0x4267924AAAF3CDACLL;
  v289 = *(STACK[0x5480] + (STACK[0x54A0] & (v279 ^ (2 * ((v266 << 16) & 0x593E0000 ^ v266 ^ ((v266 << 16) ^ 0x5CBC0000) & (((v282 ^ 0x4812143C) << 8) & 0x593E0000 ^ 0x41220000 ^ (((v282 ^ 0x4812143C) << 8) ^ 0x3EDC0000) & (v282 ^ 0x4812143C)))) ^ 0xD916EE88)));
  v290 = (v288 ^ __ROR8__(v287, 61)) + (v288 >> 8) + (v288 << 56);
  v291 = v289 + (v268 >> 8);
  *&v268 = __ROR8__(v289, 61);
  v292 = v268 + 0x58C53B91A7450EEBLL - ((2 * v268) & 0xB18A77234E8A1DD6);
  v293 = (v292 ^ 0x58C53B91A7450EEBLL) & (v291 ^ 0x408A1DF075EA10BDLL) ^ v292 & 0x6D68648CE90AF160;
  v294 = v291 ^ 0x59F87C2CA3E168E8;
  v295 = (((v291 ^ 0x9ED2E8BCAC104770) + 0x38D56B6FF00ED068) ^ ((v291 ^ 0x99AF76D8F332F3B5) + 0x3FA8F50BAF2C64A3) ^ ((v291 ^ 0xAA9FE718C3C25518) + 0xC9864CB9FDCC210)) + (((v292 ^ 0x743A984071B9F787) - 0x743A984071B9F787) ^ ((v292 ^ 0xF284A819C9FCFFFALL) + 0xD7B57E636030006) ^ ((v292 ^ 0xDE7B0BC81F000696) + 0x2184F437E0FFF96ALL)) - ((((2 * v293) ^ 0x1E7ED4CF864DC89ELL) - 0x39914A22FBA1405ALL) ^ (((2 * v293) ^ 0xCF60B97282E526C8) + 0x1770D86000F651F4) ^ (((2 * v293) ^ 0x419E2CBC46A8EE96) - 0x6671B2513B446652)) - 0x6A909F0A59A5EFE4;
  *&v268 = __ROR8__(v294, 8);
  v296 = (((v268 ^ 0x136B596570629065) + 0x26CDC828B37AC402) ^ ((v268 ^ 0xE4E4FB60418B7802) - 0x2EBD95D27D6CD399) ^ ((v268 ^ 0xC27BB80061D6E9EELL) - 0x822D6B25D314275)) - 0x528B48932755EELL + v295;
  v297 = v296 ^ __ROR8__(v295, 61);
  *(&v268 + 1) = v297 ^ 0x9F578BF2EE03F00;
  *&v268 = v297;
  v298 = STACK[0x56E0] & 0xAC463220D4B7E928;
  v299 = ((v297 ^ 0x9F578BF2EE03F00) + (__ROR8__(v296, 8) ^ 0x9F578BF2EE03FLL)) ^ 0xB8F79A8BFDABDE30;
  v300 = v299 ^ (v268 >> 61);
  v301 = (v300 + __ROR8__(v299, 8)) ^ 0x2E5222B49D6879D1;
  v302 = v301 ^ __ROR8__(v300, 61);
  v303 = (__ROR8__(v301, 8) + v302) ^ 0xF1AD040F639B7ED3;
  v304 = v303 ^ __ROR8__(v302, 61);
  v305 = (__ROR8__(v303, 8) + v304) ^ 0xC158605A13FFA118;
  v306 = v305 ^ __ROR8__(v304, 61);
  v307 = (__ROR8__(v305, 8) + v306) ^ 0x4267924AAAF3CDACLL;
  v308 = __ROR8__(v307, 8) + (v307 ^ __ROR8__(v306, 61));
  v309 = STACK[0x56F0] - 0x29DCE6EF95A40C00 - v298 + 148;
  LODWORD(v298) = (LODWORD(STACK[0x56F0]) + 1784411136 - v298 + 148) & 0xFFFFFFF8;
  LODWORD(v289) = (((v298 ^ 0x521D2AA3) - 1958020733) ^ ((v298 ^ 0xF91DA342) + 541749348) ^ ((v298 ^ 0xC15B7D71) + 403484241)) + 1074223676;
  *(&v268 + 1) = v298 ^ 0x90;
  *&v268 = v309 ^ 0xD62319106A5BF400;
  v310 = *(STACK[0x5480] + (STACK[0x5770] & ((((v289 ^ 0xB529CE0) - 441748255) ^ v289 ^ ((v289 ^ 0x2F733534) - 1047864011) ^ ((v289 ^ 0x5A9A41C4) - 1268536891) ^ ((v289 ^ 0x6FBDFFE8) - 2126243856)) & 0xFFFFFFF8 ^ 0x110617F8))) + (v268 >> 8);
  *&v268 = __ROR8__(*(STACK[0x5480] + (STACK[0x5770] & ((((v289 ^ 0xB529CE0) - 441748255) ^ v289 ^ ((v289 ^ 0x2F733534) - 1047864011) ^ ((v289 ^ 0x5A9A41C4) - 1268536891) ^ ((v289 ^ 0x6FBDFFE8) - 2126243856)) & 0xFFFFFFF8 ^ 0x110617F8))), 61);
  v311 = (v268 - ((2 * v268) & 0xF39F5F4C6D08FCA0) + 0x79CFAFA636847E50) ^ v310;
  *&v268 = __ROR8__(v310 ^ 0xF894E775CD2EDB2ELL, 8);
  v312 = (((v268 ^ 0x52C1485DCE1F20F6) - 0x32A80A010980B937) ^ ((v268 ^ 0x3A01CB63E47AEAB1) - 0x5A68893F23E57370) ^ ((v268 ^ 0x9B95F5A02334047DLL) + 0x40348031B546244)) + 0x543D660A574B69B2 + (((v311 ^ 0xE946684CA528145ALL) + 0x395702E78CE65A0) ^ ((v311 ^ 0x7035A9F35A5713B4) - 0x65194E6E784E9D8ELL) ^ ((v311 ^ 0x4D5E1765551B9863) - 0x5872F0F877021659));
  v313 = v312 ^ __ROR8__(v311, 61);
  v314 = v312 ^ ~__ROR8__(v311, 61);
  *&v268 = __ROR8__(v312 ^ 0x954FECEA34F18D0ALL, 8);
  v315 = ((((v313 ^ 0x516F60A1BF538DAELL) + 0x207B37C431732965) ^ ((v313 ^ 0x6CD5346EFF0AD593) + 0x1DC1630B712A715ALL) ^ ((v313 ^ 0x95219AA53D9D9B53) - 0x1BCA323F4C42C066)) + 0x6AE60E55AFDF04E2 + (((v268 ^ 0x34470136293C7423) - 0x7AAE1CC7DFE50916) ^ ((v268 ^ 0x3B958411A7DBCB5DLL) - 0x757C99E05102B668) ^ ((v268 ^ 0x54E3FB3DBFDAECCLL) - 0x4BA722422D24D3F9))) ^ 0xA663370655964E56;
  *(&v268 + 1) = v313;
  *&v268 = v314;
  v316 = v268 >> 61;
  *&v268 = __ROR8__(v315, 8);
  v317 = v315 ^ v316;
  v318 = v317 ^ 0x7BE0CBB90918B6F0;
  v319 = ((((v268 ^ 0x31213F0E07837E2DLL) + 0x7A6FDC21BAC74844) ^ ((v268 ^ 0x23A799188AF1C7D7) + 0x68E97A3737B5F1BALL) ^ ((v268 ^ 0x749832BB00DA846ALL) + 0x3FD6D194BD9EB205)) + (((v317 ^ 0xC5AEFF8773D04CE9) + 0x41B1CBC1853705E7) ^ ((v317 ^ 0x18BED69C0A122D4FLL) - 0x635E1D25030A9BBFLL) ^ ((v317 ^ 0x875AF7C53FD9EAB2) + 0x345C383C93EA3BELL)) - 0xBA6621AE1E8CE1BLL) ^ 0x2E5222B49D6879D1;
  v320 = (v319 - ((2 * v319) & 0x7D46BF39F506BB8CLL) + 0x3EA35F9CFA835DC6) ^ __ROR8__(v318, 61) ^ 0x33F3F4A6829AB2E7;
  v321 = (v320 + __ROR8__(v319, 8)) ^ 0xF1AD040F639B7ED3;
  v322 = v321 ^ __ROR8__(v320, 61);
  v323 = (__ROR8__(v321, 8) + v322) ^ 0xC158605A13FFA118;
  v324 = __ROR8__(v323, 8);
  v325 = v323 ^ __ROR8__(v322, 61);
  v326 = v325 + v324;
  v327 = ((v325 + v324 - ((v325 + v324) ^ 0x4267924AAAF3CDACLL)) ^ 0xFFFFFFFFFFFFFFF8) + v325 + v324;
  v328 = __ROR8__(v325, 61) ^ 0x267924AAAF3CDACLL ^ v326;
  *&v268 = __ROR8__(v327, 8);
  v329 = (v290 ^ 0xBF8CA48E12B6B115) >> STACK[0x55B0];
  v330 = v308 ^ 0xBF8CA48E12B6B115;
  v331 = (v308 ^ 0xBF8CA48E12B6B115) >> STACK[0x55B0];
  v332 = ((v268 + v328) ^ 0xF8CA48E12B6B115) << (STACK[0x55B0] ^ 0x3Cu);
  v333 = v329 + 16 * (v330 << (STACK[0x55B0] ^ 0x3Cu));
  LODWORD(v329) = ((*(v243 + (v329 ^ 0x41)) ^ v329 ^ 0x8B) << 24) | ((*(v247 + (BYTE1(v333) ^ 0xC8)) ^ BYTE1(v333) ^ 0x90) << 16) | ((*(v243 + (BYTE2(v333) ^ 0xA1)) ^ BYTE2(v333) ^ 0xCA) << 8);
  LODWORD(v289) = v329 - ((2 * v329) & 0x6D82C000) - 1228840804;
  LODWORD(v329) = (*(v243 + (BYTE3(v333) ^ 0x4BLL)) ^ BYTE3(v333) ^ 0x47) - ((2 * (*(v243 + (BYTE3(v333) ^ 0x4BLL)) ^ BYTE3(v333) ^ 0x47)) & 0x18E) - 460279609;
  LODWORD(v318) = v267 ^ v244 ^ v329 & 0x400883C ^ 0xF226858B ^ (v289 ^ 0x85E4575F) & (v329 ^ 0x1B6F4F38);
  LODWORD(STACK[0x5760]) = v318;
  LODWORD(v333) = ((*(v241 + (BYTE5(v333) ^ 0x47)) ^ BYTE5(v333) ^ 0x7D) << 16) | ((*(v241 + (BYTE4(v333) ^ 0xCALL)) ^ HIDWORD(v333) ^ 0xF) << 24) | ((*(v247 + (BYTE6(v333) ^ 0xFALL)) ^ BYTE6(v333) ^ 0xD1) << 8) | *(v247 + (HIBYTE(v333) ^ 0x68)) ^ HIBYTE(v333) ^ 0xEC;
  LODWORD(v244) = (v333 - ((2 * v333) & 0x9BFF09BA) - 838892323) ^ v252;
  v334 = v331 + 16 * v332;
  LODWORD(v247) = *(v243 + (BYTE4(v334) ^ 0xB3)) ^ HIDWORD(v334);
  v335 = (((*(v241 + (v331 ^ 0xE1)) ^ v331 ^ 0x7B) << 24) | ((*(v250 + (BYTE1(v334) ^ 0xE1)) ^ BYTE1(v334) ^ 0x93) << 16) | ((*(v243 + (BYTE2(v334) ^ 0x3ELL)) ^ BYTE2(v334) ^ 0xD) << 8) | *(v250 + (BYTE3(v334) ^ 0x46)) ^ BYTE3(v334) ^ 0xD9) ^ LODWORD(STACK[0x5650]);
  LODWORD(STACK[0x5770]) = v335;
  LODWORD(v334) = *(v243 + (HIBYTE(v334) ^ 0x3E)) ^ HIBYTE(v334) ^ 0xD;
  LODWORD(v331) = ((*(v250 + (BYTE5(v334) ^ 0xE9)) ^ BYTE5(v334) ^ 0x13) << 16) | ((v247 ^ 0x7F) << 24) | ((*(v243 + (BYTE6(v334) ^ 0xAALL)) ^ BYTE6(v334) ^ 0x4A) << 8) | v334;
  v336 = (v331 + 959864680 - 2 * (v331 & 0x39365F6D ^ v334 & 5)) ^ (v253 - ((2 * v253) & 0xC30C02F4) + 1636172154);
  v337 = STACK[0x5400];
  v338 = STACK[0x5408];
  v339 = STACK[0x5720];
  LODWORD(v334) = *(STACK[0x5720] + 4 * (v336 ^ 0xD5u)) ^ __ROR4__(*(STACK[0x5400] + 4 * (HIBYTE(v336) ^ 0x27)) ^ 0x4871D6B6, 8) ^ __ROR4__(*(STACK[0x5400] + 4 * (BYTE2(v336) ^ 0xCFu)) ^ 0xACB2B2A2, 16) ^ __ROR4__((-192923949 * *(STACK[0x5408] + 4 * (BYTE1(v336) ^ 0x25u))) ^ 0xFE7FB582, 24) ^ v318 ^ 0xCA3A636E;
  LODWORD(STACK[0x5710]) = v244;
  LODWORD(v331) = v334 ^ v244 ^ v335;
  v340 = v339;
  LODWORD(v289) = *(v339 + 4 * ((v336 ^ v331) ^ 0x9Eu)) ^ __ROR4__(*(v339 + 4 * (((v336 ^ v331) >> 24) ^ 0x19)) ^ 0x23593EAE, 8) ^ __ROR4__((-192923949 * *(v338 + 4 * (((v336 ^ v331 ^ 0xE768DCC5) >> 16) ^ 0x79u))) ^ 0x367533F8, 16) ^ __ROR4__(*(v337 + 4 * (((v336 ^ v331 ^ 0xDCC5) >> 8) ^ 0xB7u)) ^ 0x11C41644, 24);
  LODWORD(v247) = v244 ^ v289;
  LODWORD(v333) = (((v247 ^ v331 ^ 0x1858DB4D) & 0x9D88BF48 ^ 0x984F4ED5) & ((v247 ^ v331 ^ 0x1858DB4D) & 0x627740B7 ^ 0xBDCDFFEB) | (v247 ^ v331 ^ 0x1858DB4D) & 0x62300022) ^ 0xD69A9DC6;
  v341 = v333 ^ v336 ^ v331;
  LODWORD(v250) = *(v339 + 4 * (BYTE2(v341) ^ 0xABu)) ^ 0xAC57B6B8;
  v342 = STACK[0x5570];
  LODWORD(v329) = *(STACK[0x5570] + 4 * (BYTE1(v341) ^ 0xD2u)) + 1641033568;
  DWORD1(v268) = v329 ^ 0x640CCDE ^ (v329 >> 5) ^ (v329 >> 2);
  LODWORD(v268) = DWORD1(v268);
  LODWORD(v244) = *(STACK[0x5570] + 4 * (HIBYTE(v341) ^ 0x6D)) + 1641033568;
  v343 = *(STACK[0x5570] + 4 * ((v333 ^ v336 ^ v331) ^ 0x10u)) + 1641033568;
  v344 = v343 ^ (v343 >> 5) ^ (v343 >> 2) ^ __ROR4__(v250, 16) ^ v289 ^ __ROR4__(v244 ^ 0x640CCDE ^ (v244 >> 5) ^ (v244 >> 2), 8) ^ v334 ^ ((v268 >> 24) - ((2 * (v268 >> 24)) & 0x256B457C) + 313893566);
  LODWORD(v289) = v344 ^ 0xE6606A9C ^ v247;
  v345 = v336 ^ v331 ^ v289;
  LODWORD(v329) = *(v337 + 4 * (v345 ^ 0x84u)) ^ __ROR4__((-192923949 * *(v338 + 4 * (HIBYTE(v345) ^ 0x14))) ^ 0xB95467F7, 8) ^ __ROR4__(*(v337 + 4 * (((v345 ^ 0xD324B4BE) >> 16) ^ 0x32u)) ^ 0x678C7335, 16) ^ __ROR4__(*(v337 + 4 * (((v345 ^ 0xB4BE) >> 8) ^ 0x2Cu)) ^ 0x8DC35140, 24);
  LODWORD(v247) = v329 ^ v247 ^ 0xD3D7B112;
  LODWORD(v333) = v247 ^ v289 ^ v333 ^ 0x3B2EB587;
  v346 = v333 ^ v345 ^ 0xD324B4BE;
  v347 = v329 ^ *(v337 + 4 * (v346 ^ 0x9Eu)) ^ __ROR4__(*(v337 + 4 * (BYTE1(v346) ^ 0x28u)) ^ 0x18725C5A, 24) ^ __ROR4__(*(v337 + 4 * (HIBYTE(v346) ^ 0x56)) ^ 0x77794440, 8) ^ __ROR4__(*(v337 + 4 * (BYTE2(v346) ^ 0xEEu)) ^ 0x96641134, 16) ^ v344 ^ 0xE6606A9C;
  LODWORD(v247) = v347 ^ 0xFEFB7735 ^ v247;
  LODWORD(v329) = v247 ^ v333 ^ 0x6EE023B9;
  v348 = v346 ^ v329;
  LODWORD(v290) = *(STACK[0x5570] + 4 * (BYTE2(v348) ^ 0x10u)) + 1641033568;
  LODWORD(v268) = __ROR4__(*(v337 + 4 * (v348 ^ 0x99u)) ^ __ROR4__(*(v337 + 4 * (BYTE1(v348) ^ 0x99u)) ^ 0x81F1F185, 24) ^ __ROR4__(v290 ^ (v290 >> 5) ^ (v290 >> 2) ^ 0x5EAD8477, 16) ^ v347 ^ 0x1454D444, 25) ^ 0xCC610404;
  DWORD1(v268) = v268;
  LODWORD(v334) = v268 >> 7;
  LODWORD(v268) = __ROR4__(*(v337 + 4 * (HIBYTE(v348) ^ 0x5C)) ^ 0x7C3813D6, 8);
  LODWORD(STACK[0x56E0]) = v334 ^ v268;
  LODWORD(v333) = v334 ^ v268 ^ 0x7B27520A;
  LODWORD(STACK[0x5700]) = v333 ^ v247;
  v349 = v333 ^ v247 ^ 0xBEEB34DC;
  LODWORD(STACK[0x56F0]) = v329 ^ v349;
  v350 = v329 ^ v349 ^ 0x7F392021;
  v351 = v350 ^ v348;
  v352 = *(v342 + 4 * (((v350 ^ v348) >> 16) ^ 0xC5u)) + 1641033568;
  v353 = (-192923949 * *(v338 + 4 * (v351 ^ 0x2Eu))) ^ __ROR4__(v352 ^ 0xEE2E0FBF ^ (v352 >> 5) ^ (v352 >> 2), 16) ^ v333;
  v354 = *(v337 + 4 * BYTE1(v351)) ^ 0x592AEBAA;
  v355 = v351 ^ 0xE283FFBD;
  LODWORD(STACK[0x5228]) = v351 ^ 0xE283FFBD;
  v356 = HIBYTE(v351) ^ 0x19;
  DWORD1(v268) = v354;
  LODWORD(v268) = v354;
  v357 = v268 >> 24;
  v358 = v353 & 0x400;
  v359 = v358 & ~v357 ^ (v358 | 0x3004221);
  v360 = STACK[0x5790];
  if ((v138 & 2) == 0)
  {
    v360 = STACK[0x5620];
  }

  LODWORD(STACK[0x5388]) = v360;
  v361 = STACK[0x5540];
  if ((v138 & 2) == 0)
  {
    v361 = STACK[0x5530];
  }

  LODWORD(STACK[0x5398]) = v361;
  v362 = STACK[0x5600];
  if ((v138 & 2) != 0)
  {
    v362 = STACK[0x55E0];
  }

  LODWORD(STACK[0x52B8]) = v362;
  v363 = STACK[0x5520];
  if ((v138 & 2) != 0)
  {
    v363 = STACK[0x5510];
  }

  LODWORD(STACK[0x5390]) = v363;
  v364 = STACK[0x5470];
  if ((v138 & 2) != 0)
  {
    v364 = STACK[0x5460];
  }

  LODWORD(STACK[0x5640]) = v364;
  LODWORD(STACK[0x5310]) = v230;
  v365 = STACK[0x5580];
  if ((v138 & 2) == 0)
  {
    v365 = v230;
  }

  LODWORD(STACK[0x5650]) = v365;
  v366 = STACK[0x54F0];
  if ((v138 & 2) == 0)
  {
    v366 = STACK[0x54E0];
  }

  LODWORD(STACK[0x55B0]) = v366;
  v367 = STACK[0x5500];
  if ((v138 & 2) == 0)
  {
    v367 = STACK[0x54D0];
  }

  LODWORD(STACK[0x55F0]) = v367;
  v368 = STACK[0x54C0];
  if ((v138 & 2) != 0)
  {
    v368 = STACK[0x54B0];
  }

  LODWORD(STACK[0x5480]) = v368;
  v369 = STACK[0x5750];
  if ((v138 & 2) != 0)
  {
    v369 = STACK[0x5740];
  }

  LODWORD(STACK[0x54A0]) = v369;
  v370 = STACK[0x55D0];
  if ((v138 & 2) != 0)
  {
    v370 = STACK[0x55A0];
  }

  LODWORD(STACK[0x55C0]) = v370;
  v371 = v357 ^ 0x2A67D3BA;
  if (v359 != 50348577)
  {
    v358 = -v358;
  }

  v372 = v353 & 0xFFFFFBFF ^ __ROR4__(*(v337 + 4 * v356), 8) ^ (v358 + v371);
  LODWORD(STACK[0x5248]) = v372;
  v373 = v372 ^ 0x4D670DA;
  v374 = v372 ^ 0x4D670DA ^ v349;
  LODWORD(STACK[0x5240]) = v374;
  v375 = v374 ^ v350;
  v376 = v355 ^ v374 ^ v350 ^ 0x759AFFB0;
  v377 = *(v340 + 4 * (BYTE2(v376) ^ 0xA9u)) ^ 0x1F94E363;
  v378 = v355 ^ v374 ^ v350 ^ 0xA34A85DE;
  LODWORD(STACK[0x5220]) = v378;
  v379 = *(v342 + 4 * (((v355 ^ v374 ^ v350) >> 24) ^ 0x8D)) + 1641033568;
  HIDWORD(v380) = v377;
  LODWORD(v380) = v377;
  v381 = (v380 >> 16) ^ __ROR4__(*(v337 + 4 * (BYTE1(v376) ^ 0x7Cu)) ^ 0xFD92B7EC, 24) ^ (-192923949 * *(v338 + 4 * ((v355 ^ v375) ^ 0x62u))) ^ __ROR4__(v379 ^ (v379 >> 5) ^ (v379 >> 2) ^ 0xE9BAEF9A, 8) ^ 0x5179B470;
  v382 = v373 ^ v381;
  v383 = v349 ^ v381;
  v384 = v375 ^ v349 ^ v381 ^ 0x2A3F6BD;
  LODWORD(STACK[0x5238]) = v384;
  v385 = v378 ^ v384;
  v386 = (-192923949 * *(v338 + 4 * (v385 ^ 0xF2u))) ^ __ROR4__(*(v340 + 4 * (BYTE2(v385) ^ 0x5Au)) ^ 0xB7FA5862, 16) ^ __ROR4__(*(v337 + 4 * (BYTE1(v385) ^ 0x8Eu)) ^ 0xD4A60502, 24);
  v387 = v385 ^ 0x5AC02E61;
  LODWORD(STACK[0x51E0]) = v385 ^ 0x5AC02E61;
  v388 = v386 ^ __ROR4__(*(v337 + 4 * (HIBYTE(v385) ^ 0x1C)) ^ 0x30590661, 8) ^ v382;
  LODWORD(STACK[0x5210]) = v388;
  LODWORD(STACK[0x5408]) = v388 ^ 0x912B6ABD;
  v389 = v388 ^ 0x912B6ABD ^ v383;
  LODWORD(STACK[0x5218]) = v389;
  v390 = v389 ^ ((v375 ^ v383 ^ 0xF154A14F) - ((2 * (v375 ^ v383 ^ 0xF154A14F)) & 0xC6A524FC) - 481127810) ^ 0x3BDE95F;
  LODWORD(STACK[0x5208]) = v390;
  v391 = v390 ^ v387;
  v392 = *(v342 + 4 * (((v390 ^ v387) >> 16) ^ 0x32u)) + 1641033568;
  LODWORD(STACK[0x5570]) = v392 ^ (v392 >> 5) ^ (v392 >> 2) ^ 0x357560B3;
  LODWORD(STACK[0x5200]) = (v390 ^ v387) ^ 0xF5;
  LODWORD(STACK[0x51F8]) = *(v337 + 4 * (((v390 ^ v387) >> 24) ^ 0x5B)) ^ 0xB49A241D;
  LODWORD(STACK[0x5400]) = *(v337 + 4 * (((v390 ^ v387) >> 8) ^ 0xD0u)) ^ 0x503D3ECB;
  v393 = STACK[0x5338];
  v394 = LODWORD(STACK[0x5450]) - 1642418656 - (STACK[0x5440] & 0x9949832A);
  v395 = LODWORD(STACK[0x5450]) - (STACK[0x5440] & 0xAB72479A) + 657395886;
  v396 = v344 ^ LODWORD(STACK[0x52A8]);
  v397 = STACK[0x5330];
  v398 = LODWORD(STACK[0x5330]) - (STACK[0x52C0] & 0x9BB01D0) - 2065858328;
  v399 = v347 ^ LODWORD(STACK[0x5250]);
  v400 = 2 * LODWORD(STACK[0x5368]);
  v401 = STACK[0x57A0];
  LODWORD(STACK[0x52C0]) = LODWORD(STACK[0x57A0]) - (v400 & 0x1DEEAFE4) - 1986767200;
  LODWORD(STACK[0x5380]) = LODWORD(STACK[0x5380]) - (STACK[0x5370] & 0x6A1EF38E) + 752070738;
  v402 = v401 - (v400 & 0x73D9BFD0) + 881450646;
  v403 = v401 - (v400 & 0x8134C846) + 993485521;
  v404 = v382 ^ LODWORD(STACK[0x5298]);
  v405 = 2 * LODWORD(STACK[0x5328]);
  v406 = STACK[0x5410];
  v407 = LODWORD(STACK[0x5410]) - (v405 & 0x49235FAE) - 2029156667;
  v408 = LODWORD(STACK[0x5410]) - (v405 & 0x5D82C7A4) + 289225408;
  LODWORD(STACK[0x5250]) = v405 & 0xA1DD0326;
  LODWORD(STACK[0x5230]) = v406 - 1284876159;
  v409 = v396 ^ 0xA2EFC82D;
  v410 = STACK[0x5280];
  v411 = v404 ^ v396 ^ 0xA2EFC82D ^ 0x6B24C199;
  v412 = (((v410 ^ 0x4A55B545) - 1247130949) ^ ((v410 ^ 0xBF41E02) - 200547842) ^ ((v410 ^ 0xBB9F29CE) + 1147196978)) + (((v404 ^ v409 ^ 0x2CE74FEB) + 1947538847) ^ ((v404 ^ v409 ^ 0x1185090D) + 1232556921) ^ ((v404 ^ v409 ^ 0xB9A18220) - 514598826)) + 504161237 - ((2 * ((v404 ^ v396 ^ 0xA2EFC82D ^ 0x63E6678A) & (v410 ^ 0x7A3E8289) ^ v410 & 0x6725A34C)) ^ 0xC4490410);
  v413 = v412 + 600727884 - 2 * (v412 & 0x23CE614D ^ (((((v410 ^ 0x45) - 69) ^ ((v410 ^ 2) - 2)) ^ ((v410 ^ 0xCE) + 50)) + ((((v404 ^ v409 ^ 0xEB) - 97) ^ ((v404 ^ v409 ^ 0xD) + 121)) ^ ((v404 ^ v409 ^ 0x20) + 86)) - 43) & 1);
  v414 = LODWORD(STACK[0x468C]) ^ 0xEBB8A198 ^ v411;
  LODWORD(STACK[0x5610]) = v413 ^ v411;
  v415 = v399 ^ 0x697068EB ^ (v414 - 1427837463);
  v416 = v399 ^ 0x6C56E67B;
  v417 = v404 ^ 0x123DB92D;
  v418 = v404 ^ 0x123DB92D ^ ((v409 ^ LODWORD(STACK[0x4688])) - 1437902081 - ((2 * (v409 ^ LODWORD(STACK[0x4688]))) & 0x5496B5FE));
  v419 = ((2 * v418) & 0x55C9DBD2 ^ 0x41014A10) + (v418 ^ 0x1E7F48E3);
  v420 = LODWORD(STACK[0x53E0]) ^ v395 ^ v336 ^ 0x32AFFB93 ^ (v393 - ((2 * v393) & 0xCF17D826) + 1737223187);
  LODWORD(STACK[0x51D8]) = v419 - ((2 * v419) & 0xA4D1D20) + 86412944;
  v421 = STACK[0x4C18] ^ v404 ^ 0x262C0CEB ^ v396;
  v422 = LODWORD(STACK[0x5420]) ^ LODWORD(STACK[0x5760]) ^ 0xD59AE3E9 ^ (v393 - ((2 * v393) & 0xD82A8BEC) - 334150154);
  v423 = LODWORD(STACK[0x5420]) ^ v393 ^ LODWORD(STACK[0x5710]) ^ 0xC287CE82;
  v424 = LODWORD(STACK[0x5430]) ^ (v394 + 86) ^ LODWORD(STACK[0x5770]) ^ 0x5BDFAAAC;
  if (v415)
  {
    v425 = LODWORD(STACK[0x5420]) ^ v393 ^ LODWORD(STACK[0x5710]) ^ 0xC287CE82;
  }

  else
  {
    v425 = LODWORD(STACK[0x5420]) ^ LODWORD(STACK[0x5760]) ^ 0xD59AE3E9 ^ (v393 - ((2 * v393) & 0xD82A8BEC) - 334150154);
  }

  LODWORD(STACK[0x5450]) = v425;
  if ((v415 & 1) == 0)
  {
    v422 = v420;
  }

  LODWORD(STACK[0x5420]) = v422;
  if ((v415 & 1) == 0)
  {
    v420 = v424;
  }

  LODWORD(STACK[0x5440]) = v420;
  if (v415)
  {
    v426 = v424;
  }

  else
  {
    v426 = v423;
  }

  LODWORD(STACK[0x5410]) = v426;
  v427 = v398 ^ LODWORD(STACK[0x53B8]) ^ 0x7DF5661 ^ LODWORD(STACK[0x5228]);
  v428 = LODWORD(STACK[0x52B0]) ^ LODWORD(STACK[0x56E0]) ^ 0x3C3AE38;
  v429 = LODWORD(STACK[0x52B0]) ^ LODWORD(STACK[0x56F0]) ^ 0x3D33EFF3;
  v430 = LODWORD(STACK[0x52B0]) ^ LODWORD(STACK[0x5700]) ^ 0x89C26A28;
  v431 = LODWORD(STACK[0x53A8]) ^ 0xB8FBD4F1 ^ LODWORD(STACK[0x5240]);
  v432 = LODWORD(STACK[0x53A8]) ^ 0x8CDBACBE ^ LODWORD(STACK[0x5248]);
  v433 = LODWORD(STACK[0x53A8]) ^ 0xFD2E4D42 ^ v375;
  v434 = v397;
  v435 = v397 ^ LODWORD(STACK[0x5380]) ^ 0x6FB631B3 ^ LODWORD(STACK[0x5220]);
  v436 = v434 ^ v402 ^ 0x83685E6D ^ LODWORD(STACK[0x51E0]);
  v437 = v434 ^ LODWORD(STACK[0x52C0]) ^ 0xDBBC81D1 ^ LODWORD(STACK[0x5238]);
  v438 = LODWORD(STACK[0x53C8]) ^ LODWORD(STACK[0x5210]) ^ 0x124D90C6;
  v439 = LODWORD(STACK[0x51B0]) ^ 0x24D4F333 ^ LODWORD(STACK[0x5208]) ^ v407;
  v440 = LODWORD(STACK[0x51B0]) ^ LODWORD(STACK[0x5218]) ^ 0x6BBF9BAB ^ v408;
  v441 = *(STACK[0x5720] + 4 * LODWORD(STACK[0x5200])) ^ __ROR4__(STACK[0x51F8], 8) ^ __ROR4__(STACK[0x5400], 24) ^ __ROR4__(STACK[0x5570], 16);
  v442 = v434 ^ v403 ^ 0x85EA384C ^ v383;
  v443 = STACK[0x53F8];
  v444 = v383 ^ v441 ^ LODWORD(STACK[0x53F8]);
  v445 = v444 ^ LODWORD(STACK[0x5208]);
  v446 = v444 ^ 0xADA64E8C;
  v447 = v445 ^ 0xB0E33EE7;
  LODWORD(STACK[0x5248]) = v391;
  v448 = v391 ^ 0x944A9164 ^ v445;
  v449 = v443 ^ v441 ^ LODWORD(STACK[0x5408]) ^ 0x75D89A7A;
  if (v415)
  {
    v450 = v447;
  }

  else
  {
    v450 = v446;
  }

  LODWORD(STACK[0x53F8]) = v450;
  if (v415)
  {
    v451 = v446;
  }

  else
  {
    v451 = v449;
  }

  LODWORD(STACK[0x5408]) = v451;
  if (v415)
  {
    v452 = v449;
  }

  else
  {
    v452 = v448;
  }

  if (v415)
  {
    v453 = v448;
  }

  else
  {
    v453 = v447;
  }

  LODWORD(STACK[0x51F8]) = v416;
  LODWORD(STACK[0x5130]) = (((v421 - 1427837463) ^ v416 ^ 0x11EC0E42) - 300682818) ^ (((v421 - 1427837463) ^ v416 ^ 0x6B8C150E) - 1804342542) ^ (((v421 - 1427837463) ^ v416 ^ 0x7F4695DC) - 2135332316);
  if (v415)
  {
    v454 = v437;
  }

  else
  {
    v454 = v442;
  }

  LODWORD(STACK[0x5400]) = v454;
  LODWORD(STACK[0x5150]) = v436;
  if (v415)
  {
    v455 = v436;
  }

  else
  {
    v455 = v437;
  }

  LODWORD(STACK[0x5228]) = v417;
  if (v415)
  {
    v456 = v442;
  }

  else
  {
    v456 = v417;
  }

  LODWORD(STACK[0x5148]) = v438;
  if (v415)
  {
    v457 = v440;
  }

  else
  {
    v457 = v438;
  }

  LODWORD(STACK[0x5430]) = v457;
  LODWORD(STACK[0x5140]) = v439;
  if (v415)
  {
    v458 = v439;
  }

  else
  {
    v458 = v440;
  }

  LODWORD(STACK[0x5570]) = v458;
  LODWORD(STACK[0x51E0]) = v427;
  LODWORD(STACK[0x51C8]) = v429;
  if (v415)
  {
    v459 = v427;
  }

  else
  {
    v459 = v429;
  }

  LODWORD(STACK[0x51D0]) = v428;
  LODWORD(STACK[0x51C0]) = v430;
  if (v415)
  {
    v460 = v430;
  }

  else
  {
    v460 = v428;
  }

  LODWORD(STACK[0x5170]) = v431;
  LODWORD(STACK[0x5168]) = v432;
  if (v415)
  {
    v461 = v431;
  }

  else
  {
    v461 = v432;
  }

  LODWORD(STACK[0x5160]) = v433;
  LODWORD(STACK[0x5158]) = v435;
  if (v415)
  {
    v462 = v435;
  }

  else
  {
    v462 = v433;
  }

  if ((v415 & 2) != 0)
  {
    v463 = v455;
  }

  else
  {
    v463 = v456;
  }

  LODWORD(STACK[0x52C0]) = v463;
  if ((v415 & 2) != 0)
  {
    v455 = v456;
  }

  LODWORD(STACK[0x5380]) = v455;
  v464 = ((LODWORD(STACK[0x56D0]) + 25045301) ^ 0x79FB1360) + (LODWORD(STACK[0x5480]) ^ 0x85FAE783);
  v465 = (LODWORD(STACK[0x55C0]) ^ 0x7733ED72) + 1419727483;
  v466 = LODWORD(STACK[0x53B0]) >> 3;
  LODWORD(STACK[0x5710]) = v466 ^ 0x173193A5;
  v467 = (((v464 ^ 0xCFC0B194) - 1268211622) ^ ((v464 ^ 0x350F0BBD) + 1319574129) ^ ((v464 ^ 0xBF6FBC43) - 993546865)) - (((LODWORD(STACK[0x5660]) ^ 0x93C0DA2F) + 1816077777) ^ ((LODWORD(STACK[0x5660]) ^ 0xFABDA6FF) + 88234241) ^ ((LODWORD(STACK[0x5660]) ^ 0x81462E43) + 2126107069)) - 641952315;
  v468 = (LODWORD(STACK[0x54A0]) ^ 0xAFDF0F7B) - ((2 * (LODWORD(STACK[0x54A0]) ^ 0xAFDF0F7B) + 334176054) & 0x64BC6CC6) - 61618690;
  v469 = LODWORD(STACK[0x56C0]) ^ 0xD24A90CC ^ v465;
  v470 = STACK[0xD680];
  v471 = (((LODWORD(STACK[0x53C0]) ^ 0xA1DFE834) + 1579161548) ^ ((LODWORD(STACK[0x53C0]) ^ 0x70D4FD5A) - 1893006682) ^ ((LODWORD(STACK[0x53C0]) ^ 0x393047FD) - 959465469)) - 2059848800 + (((v468 ^ LODWORD(STACK[0x5650]) ^ 0x7CE6F311) + 258508143) ^ ((v468 ^ LODWORD(STACK[0x5650]) ^ 0x6075F144) + 335251260) ^ ((v468 ^ LODWORD(STACK[0x5650]) ^ 0xC1F6625) + 2140213339));
  LODWORD(STACK[0x5760]) = v466;
  STACK[0x5238] = v466 ^ 0x3A6F7D32;
  v472 = STACK[0x53D0];
  LODWORD(STACK[0x53A8]) = v415;
  LODWORD(STACK[0x5240]) = v415 + v472 - 2 * (v415 & v472);
  STACK[0x57A0] = v470;
  LODWORD(v470) = (v467 >> 1) - 2079607706;
  STACK[0x5700] = v466 ^ 0x173193A5;
  v473 = LODWORD(STACK[0x5610]) ^ 0xCC296413;
  LODWORD(STACK[0x5298]) = v473;
  LODWORD(STACK[0x5770]) = ((v471 + 3299) >> 1) - 718939928;
  LODWORD(STACK[0x56E0]) = ((v473 + v469) >> 1) + 715739994;
  LODWORD(STACK[0x56F0]) = v470;
  v474 = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x5560]));
  v475 = STACK[0x5420];
  if ((v415 & 2) != 0)
  {
    v475 = STACK[0x5410];
  }

  LODWORD(STACK[0x5370]) = v475;
  v476 = STACK[0x5450];
  if ((v415 & 2) == 0)
  {
    v476 = STACK[0x5440];
  }

  LODWORD(STACK[0x5280]) = v476;
  LODWORD(STACK[0x5218]) = v459;
  LODWORD(STACK[0x5210]) = v460;
  if ((v415 & 2) != 0)
  {
    v477 = v460;
  }

  else
  {
    v477 = v459;
  }

  LODWORD(STACK[0x52A8]) = v477;
  LODWORD(STACK[0x5208]) = v461;
  LODWORD(STACK[0x5200]) = v462;
  if ((v415 & 2) != 0)
  {
    v478 = v461;
  }

  else
  {
    v478 = v462;
  }

  LODWORD(STACK[0x52B0]) = v478;
  LODWORD(STACK[0x5138]) = v452;
  v479 = STACK[0x53F8];
  if ((v415 & 2) != 0)
  {
    v479 = v452;
  }

  LODWORD(STACK[0x53D0]) = v479;
  LODWORD(STACK[0x5220]) = v453;
  v480 = STACK[0x5408];
  if ((v415 & 2) != 0)
  {
    v480 = v453;
  }

  LODWORD(STACK[0x53C8]) = v480;
  return v474();
}

uint64_t sub_100180854()
{
  v0 = STACK[0x2098];
  v1 = 8310 * (LODWORD(STACK[0x2098]) ^ 0x6B8);
  v2 = STACK[0x57D8];
  STACK[0x8690] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x2098]));
  return (*(v2 + 8 * ((v1 ^ 0x5885) + v0)))();
}

uint64_t sub_10018091C()
{
  v2 = STACK[0x51B8];
  LODWORD(STACK[0x845C]) = v0;
  v3 = STACK[0xA4F0];
  v4 = STACK[0x1AD0];
  LODWORD(STACK[0x1D4C8]) = -69992381 - STACK[0x1AD0] + v2 - 22613 + 3716;
  STACK[0x1D4C0] = v4;
  LODWORD(STACK[0x1D4D4]) = ((v2 - 22613) | 0xFBD400B4) ^ v4;
  STACK[0x1D4D8] = v3 + v4;
  LODWORD(STACK[0x1D4D0]) = v4;
  LODWORD(STACK[0x1D4CC]) = v4 + 1451493860 + v2;
  LODWORD(STACK[0x1D4E0]) = ((v2 - 22613) ^ 0xFBD40043) + v4;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v2 ^ 0x2462)))(v1 - 240);
  return (*(v5 + 8 * SLODWORD(STACK[0x1D4E4])))(v6);
}

uint64_t sub_1001809D0()
{
  *(STACK[0x4D10] + 16) = STACK[0xFFD8];
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 7004)))(STACK[0x9908]);
  STACK[0x9908] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_100180A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * (v2 ^ 0x241B)))(a2);
  STACK[0xC0F8] = 0;
  return (*(v3 + 8 * (v2 - 4240)))(a1);
}

uint64_t sub_100180AE4@<X0>(int a1@<W8>)
{
  v3 = STACK[0x2AD8];
  STACK[0x1D4D8] = v1 - STACK[0x2AD8];
  LODWORD(STACK[0x1D4CC]) = a1 - 1400145889 - v3;
  LODWORD(STACK[0x1D4C8]) = ((a1 - 1400145889) ^ 0xE) - v3;
  LODWORD(STACK[0x1D4C4]) = (a1 - 1400142633) ^ v3;
  LODWORD(STACK[0x1D4D0]) = v3;
  STACK[0x1D4E0] = v3 + 4151854225u;
  LODWORD(STACK[0x1D4C0]) = (a1 - 1079089617) ^ v3;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (a1 ^ 0x2411)))(v2 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4D4])))(v5);
}

uint64_t sub_100180CA4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, unsigned int a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v12 = STACK[0x3B28];
  v13 = v9;
  v14 = a8 + v9;
  v15 = __ROR8__(v14 & 0xFFFFFFFFFFFFFFF8, 8);
  v16 = ((0x1C64917143BAF700 - v15) & 0x512FF40DBD8CF2D1) + 466 * (v12 ^ 0x11DEu) + v15 - 0x1C64917143BB20DFLL - ((466 * (v12 ^ 0x11DEu) + v15 - 0x1C64917143BB20DFLL) & 0x512FF40DBD8CF2D1);
  v17 = __ROR8__(v16 ^ 0x5449D665745EE47CLL, 8);
  v16 ^= 0x4892A2109676A383uLL;
  v18 = (((2 * (v17 + v16)) | 0xBA7924C963EF255CLL) - (v17 + v16) + 0x22C36D9B4E086D52) ^ a6;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = __ROR8__(v18, 8);
  v21 = ((a7 & (2 * (v20 + v19))) - (v20 + v19) + v11) ^ 0x45BF432901289B57;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (((2 * (v23 + v22)) & 0xCB4822619D8C5D80) - (v23 + v22) - 0x65A41130CEC62EC1) ^ a2;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ a1;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (0x8B46E99F545CF822 - ((v28 + v27) | 0x8B46E99F545CF822) + ((v28 + v27) | a3)) ^ a4;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x7B5626353E243BAALL;
  v32 = v9 + 1;
  *(v8 + v13) = (((__ROR8__(v31, 8) + (v31 ^ __ROR8__(v30, 61))) ^ 0xAF1BD4ED8A66164BLL) >> (8 * (v14 & 7u))) ^ *v14;
  v33 = v32 - 1300567581 < v10;
  if (v10 < 0xB27AE9E3 != v32 > a5)
  {
    v33 = v10 < 0xB27AE9E3;
  }

  return (*(STACK[0x57D8] + 8 * (v12 ^ (16 * v33))))();
}

uint64_t sub_100180EBC()
{
  v1 = 746 * (STACK[0x51B8] ^ 0x585B);
  LODWORD(STACK[0xC574]) = v0;
  return (*(STACK[0x57D8] + 8 * ((19932 * (v0 == v1 - 143122769)) ^ LODWORD(STACK[0x2B50]))))();
}

uint64_t sub_100180F18()
{
  LODWORD(STACK[0xA258]) = v1;
  v2 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * (v0 - 22280));
  return (*(v2 + 8 * ((13850 * (v0 == 1643354169)) ^ (v0 - 18002))))();
}

uint64_t sub_100180F9C()
{
  LODWORD(STACK[0xC644]) = v1;
  v2 = STACK[0x57D8];
  STACK[0x9AC0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v2 + 8 * (((v0 + 12417) ^ 0x3D8B) + v0)))();
}

uint64_t sub_100180FE8(uint64_t a1, int a2, unsigned int a3)
{
  v8 = (a2 + v4 - ((v4 + v7 - ((v4 + v7) >> 16)) >> 8) - ((v4 + v7) >> 16) - v6) ^ 0xF2A264F0;
  v9 = v8 - (v8 >> 9) - ((v8 - (v8 >> 9)) >> 2);
  v10 = v9 - 1983368416 + ((v9 - 1983368416) >> 11) + ((v9 - 1983368416 + ((v9 - 1983368416) >> 11)) >> 6);
  v11 = (v10 ^ 0xA88C2D59) + ((v10 ^ 0xA88C2D59) >> 13) - (((v10 ^ 0xA88C2D59) + ((v10 ^ 0xA88C2D59) >> 13)) >> 2);
  v12 = v11 - 1391595809 - ((v11 - 1391595809) >> 9) - ((v11 - 1391595809 - ((v11 - 1391595809) >> 9)) >> 3);
  v13 = v12 + 13042593 - ((v12 + 13042593) >> 11) + ((v12 + 13042593 - ((v12 + 13042593) >> 11)) >> 5);
  v14 = (v13 ^ 0xEBEF4CF0) - ((v13 ^ 0xEBEF4CF0) >> 14) + (((v13 ^ 0xEBEF4CF0) - ((v13 ^ 0xEBEF4CF0) >> 14)) >> 5);
  v15 = (v14 ^ 0xCB1C53B6) - ((v14 ^ 0xCB1C53B6) >> 13) + (((v14 ^ 0xCB1C53B6) - ((v14 ^ 0xCB1C53B6) >> 13)) >> 8);
  v16 = v15 + 684725097 - ((v15 + 684725097) >> 11) - ((v15 + 684725097 - ((v15 + 684725097) >> 11)) >> 4);
  v17 = LODWORD(STACK[0x5790]) ^ LODWORD(STACK[0x55E0]) ^ (LODWORD(STACK[0x5750]) + 1698164939 - ((2 * LODWORD(STACK[0x5750])) & 0xCA6FE196));
  v18 = v16 - 413089388 + ((v16 - 413089388) >> 8) - ((v16 - 413089388 + ((v16 - 413089388) >> 8)) >> 4);
  v19 = LODWORD(STACK[0x53D0]) ^ v5 & (LODWORD(STACK[0x55E0]) >> 1) ^ v17;
  LODWORD(STACK[0x54F0]) = v10;
  LODWORD(STACK[0x53D0]) = v13;
  LODWORD(STACK[0x5770]) = v11;
  LODWORD(STACK[0x5500]) = v14;
  LODWORD(STACK[0x51D0]) = v16;
  LODWORD(STACK[0x51D8]) = (v13 ^ v10 ^ v16) >> 1;
  LODWORD(STACK[0x51F8]) = v18;
  v20 = v14 ^ v11 ^ v18;
  LODWORD(STACK[0x51B0]) = v20 >> 1;
  v21 = v19 ^ v5 & (v17 >> 1) ^ v3 ^ v9 ^ v12 ^ v15 ^ (1884652660 - ((v12 ^ v9 ^ v15) & 0xA08308E0) + (v5 & ((v12 ^ v9 ^ v15) >> 1)));
  LODWORD(STACK[0x5140]) = (v21 ^ 0x1283F860) & 0x6537F0DB ^ v21 & 0x10;
  LODWORD(STACK[0x5138]) = (v21 ^ 0x1283F860) + 1698164939;
  v22 = LODWORD(STACK[0x5740]) - 1445907677 - (STACK[0x51C8] & 0x53A26646);
  v23 = STACK[0x5630];
  v24 = LODWORD(STACK[0x55D0]) ^ LODWORD(STACK[0x5630]);
  LODWORD(STACK[0x5740]) = v22;
  LODWORD(STACK[0x51C8]) = v20 & 0x2782B8E4;
  LODWORD(STACK[0x55D0]) = v5 & ((v24 ^ v22) >> 1);
  LODWORD(STACK[0x51A8]) = (v5 & (v23 >> 1) ^ 0x54E09910) - 1445907677 - ((2 * (v5 & (v23 >> 1) ^ 0x54E09910)) & 0x3826244);
  return (*(STACK[0x57D8] + 8 * a3))();
}

uint64_t sub_100181564()
{
  v4 = STACK[0x4CB8];
  v5 = (((v3 ^ 0x46509046) + ((LODWORD(STACK[0x4CB8]) - 14287) ^ 0xB9AF74C6)) ^ ((v3 ^ 0xDAF8171C) + 621275364) ^ ((v3 ^ 0x4EB407CE) - 1320421326)) - 564992855;
  v6 = (v5 ^ 0xF3C5D3EB) & (2 * (v5 & 0xF3C99BEA)) ^ v5 & 0xF3C99BEA;
  v7 = ((2 * (v5 ^ 0x75D4E22F)) ^ 0xC3AF38A) & (v5 ^ 0x75D4E22F) ^ (2 * (v5 ^ 0x75D4E22F)) & 0x861D79C4;
  v8 = v7 ^ 0x82050845;
  v9 = (v7 ^ 0x4087180) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0x1875E714) & v8 ^ (4 * v8) & 0x861D79C4;
  v11 = (v10 ^ 0x156101) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x860818C1)) ^ 0x61D79C50) & (v10 ^ 0x860818C1) ^ (16 * (v10 ^ 0x860818C1)) & 0x861D79C0;
  v13 = v11 ^ 0x861D79C5 ^ (v12 ^ 0x151885) & (v11 << 8);
  v14 = v5 ^ (2 * ((v13 << 16) & 0x61D0000 ^ v13 ^ ((v13 << 16) ^ 0x79C50000) & (((v12 ^ 0x86086185) << 8) & 0x61D0000 ^ 0x2040000 ^ (((v12 ^ 0x86086185) << 8) ^ 0x1D790000) & (v12 ^ 0x86086185))));
  *(v2 + v0 - 1019656666 + (((v14 ^ 0x3E289CC4) - 332231728) ^ ((v14 ^ 0xF77E39A8) + 627322532) ^ ((v14 ^ 0x36AFCD0C) - 457844216))) = *(v1 + (v14 ^ 0xFFF96860)) - 2 * (*(v1 + (v14 ^ 0xFFF96860)) & 0xF) + 15;
  return (*(STACK[0x57D8] + 8 * (((2 * (v14 == -432032)) | (16 * (v14 == -432032))) ^ v4)))();
}

uint64_t sub_1001817F8()
{
  v1 = ((v0 + 2088074000) & 0x838A1C7F ^ 0xC73) + LODWORD(STACK[0x8B2C]);
  LODWORD(STACK[0xDCE4]) = v1;
  return (*(STACK[0x57D8] + 8 * (((v1 > 0x1FF) * (((v0 - 1061965017) | 0x3A43004D) ^ 0xFAF72848)) ^ v0)))();
}

uint64_t sub_100181894()
{
  STACK[0x7ED8] -= 352;
  v2 = STACK[0x6A08];
  LODWORD(STACK[0x98F4]) = v1;
  STACK[0x6230] = v2;
  LODWORD(STACK[0x6974]) = 1475016486;
  return (*(STACK[0x57D8] + 8 * (v0 - 17575)))();
}

uint64_t sub_1001818EC()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x422E)))(1280);
  STACK[0x6628] = v2;
  return (*(v1 + 8 * (((v2 == 0) ^ (v0 - 1)) & 1 | v0)))();
}

uint64_t sub_100181A14(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  a3.n128_u16[0] = 7710;
  a3.n128_u8[2] = 30;
  a3.n128_u8[3] = 30;
  a3.n128_u8[4] = 30;
  a3.n128_u8[5] = 30;
  a3.n128_u8[6] = 30;
  a3.n128_u8[7] = 30;
  a4.n128_u16[0] = 4112;
  a4.n128_u8[2] = 16;
  a4.n128_u8[3] = 16;
  a4.n128_u8[4] = 16;
  a4.n128_u8[5] = 16;
  a4.n128_u8[6] = 16;
  a4.n128_u8[7] = 16;
  return (*(STACK[0x57D8] + 8 * v4))(a1, a2, a3, a4);
}

uint64_t sub_100181AF4()
{
  LODWORD(STACK[0x5880]) = v0;
  v2 = STACK[0x1D7C];
  v3 = STACK[0x51B8];
  v4 = STACK[0x1D80];
  v5 = 551690071 * ((v4 + 0x43A600DFFBD424A4 - 2 * (v4 & 0x43A600DFFBD424A4)) ^ 0x275EE362AADB4F71);
  LODWORD(STACK[0x1D4CC]) = LODWORD(STACK[0x1D7C]) - 551690071 * ((STACK[0x1D80] - 69983068 - 2 * (STACK[0x1D80] & 0xFBD424A4)) ^ 0xAADB4F71);
  LODWORD(STACK[0x1D4C0]) = (v3 - 1079089617) ^ (551690071 * ((v4 - 69983068 - 2 * (v4 & 0xFBD424A4)) ^ 0xAADB4F71));
  LODWORD(STACK[0x1D4C8]) = (v2 ^ 0x3C) - 551690071 * ((v4 - 69983068 - 2 * (v4 & 0xFBD424A4)) ^ 0xAADB4F71);
  LODWORD(STACK[0x1D4C4]) = LODWORD(STACK[0x1D78]) ^ (551690071 * ((v4 - 69983068 - 2 * (v4 & 0xFBD424A4)) ^ 0xAADB4F71));
  STACK[0x1D4D8] = 4151854225 - v5;
  STACK[0x1D4E0] = v5 + v0;
  LODWORD(STACK[0x1D4D0]) = 551690071 * ((v4 - 69983068 - 2 * (v4 & 0xFBD424A4)) ^ 0xAADB4F71);
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v3 ^ 0x2411)))(v1 - 240);
  return (*(v6 + 8 * SLODWORD(STACK[0x1D4D4])))(v7);
}

uint64_t sub_100181BD0()
{
  v0 = STACK[0x57D8];
  v1 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))(STACK[0xC6A8]);
  STACK[0xC6A8] = 0;
  return (*(v0 + 8 * SLODWORD(STACK[0x2814])))(v1);
}

uint64_t sub_100181C38()
{
  v1 = v0 | 4;
  v2 = *(STACK[0xE3D0] + 4);
  v3 = *(STACK[0xE3D0] + 16);
  v4 = *(STACK[0xE3D0] + 24);
  v5 = *(STACK[0xE3D0] + 352);
  v6 = STACK[0xE3D0] + 228;
  v7 = *(STACK[0xE3D0] + 244);
  v8 = *(STACK[0xE3D0] + 344);
  v9 = STACK[0x57D8];
  STACK[0x8420] = *(STACK[0x57D8] + 8 * v1);
  return (*(v9 + 8 * (v1 ^ 0x10D2)))(v2, v5, v3, v4, 0, v6, v8, v7);
}

uint64_t sub_1001820A4()
{
  v0 = STACK[0x51B8] - 9132;
  v1 = STACK[0x57D8];
  v2 = STACK[0x175C];
  STACK[0xBE60] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x175C]));
  return (*(v1 + 8 * (v0 + v2 - 10699)))();
}

uint64_t sub_100182264()
{
  v2 = STACK[0xBB18];
  v3 = 1534937323 * ((v1 - 240) ^ 0xCD7888C2C6EEFB47);
  LODWORD(STACK[0x1D4CC]) = v3 + v0 + 1451493860;
  LODWORD(STACK[0x1D4E0]) = v3 + v0 - 1207518885 + 4;
  LODWORD(STACK[0x1D4D0]) = v3;
  STACK[0x1D4D8] = v3;
  STACK[0x1D4C0] = v2 ^ v3;
  LODWORD(STACK[0x1D4D4]) = (v0 - 1207518885) ^ v3;
  LODWORD(STACK[0x1D4C8]) = v0 - 1207518885 - v3 + 2857;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x2462)))(v1 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4E4])))(v5);
}

uint64_t sub_1001826B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * a8);
  return (*(v8 + 8 * (a8 + 3427)))(a1, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_10018278C(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0x57D8];
  STACK[0xC1C0] = *(STACK[0x57D8] + 8 * v2);
  return (*(v3 + 8 * (v2 - 4555 + ((v2 + 6999) | 4))))(4294960487, a2, 12942, 30467, 15506, 2193001348, 2147336180, 0x5FFBEFAF3FFEDFFBLL);
}

uint64_t sub_100182820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7 & 0xFFFFFFFF91F345B5;
  v9 = STACK[0xB658] - 0x30BDFED8F32E6575;
  v10 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v8);
  return (*(v10 + 8 * ((13 * (v8 ^ 0x64B) - 7107) ^ v8)))(v9, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1001828D0()
{
  v1 = STACK[0x57D8];
  STACK[0x9A00] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 51256))();
}

uint64_t sub_100182A18@<X0>(unsigned int a1@<W8>)
{
  v4 = (((v1 ^ 0x474A) + 325594146 + (LODWORD(STACK[0x674C]) ^ 0xEC977B88)) ^ ((LODWORD(STACK[0x674C]) ^ 0x433D0D5A) - 1128074586) ^ (v2 + (LODWORD(STACK[0x674C]) ^ 0x7DB6F646) + 2329)) - 2080586307;
  v5 = v4 < v3;
  v6 = a1 + v3 < v4;
  if (a1 > 0x4E1FBAD6 != v5)
  {
    v6 = v5;
  }

  return (*(STACK[0x57D8] + 8 * ((27419 * v6) ^ v1)))();
}

uint64_t sub_100182C18()
{
  v1 = STACK[0x51B8];
  v2 = 4258 * (STACK[0x51B8] ^ 0x5854);
  v3 = STACK[0x90B8];
  v4 = STACK[0x8120];
  v5 = STACK[0xA9B0];
  v6 = STACK[0xBFFC];
  v7 = 1379010179 * ((2 * ((v0 - 240) & 0x61308A78) - (v0 - 240) + 516912517) ^ 0x3A9E4CEB);
  STACK[0x1D4E0] = STACK[0xCB08];
  STACK[0x1D4D0] = v5;
  LODWORD(STACK[0x1D4C8]) = (v1 + 847660746) ^ v7;
  LODWORD(STACK[0x1D4E8]) = v7 - 467101311 + 1806817213 * v6;
  STACK[0x1D4C0] = v4;
  STACK[0x1D4D8] = v3;
  v8 = STACK[0x57D8];
  v9 = (*(STACK[0x57D8] + 8 * (v1 + 9236)))(v0 - 240);
  return (*(v8 + 8 * (((LODWORD(STACK[0x1D4EC]) == 221187128) * (v2 - 8415)) ^ LODWORD(STACK[0x1368]))))(v9);
}

uint64_t sub_100182D38(uint64_t a1, int a2)
{
  STACK[0xCF30] = v3 - 544;
  STACK[0x7ED8] = v2 - 16;
  return (*(STACK[0x57D8] + 8 * ((((v4 ^ 0x6F7) + ((2 * v5) & 0xFEFC801A) - 134672612 + (v5 ^ ((v4 ^ 0x4167) - 8467111)) == -143113071) * a2) ^ v4)))();
}

uint64_t sub_100182DB8(int a1, char a2, char a3, char a4, char a5, char a6, char a7, char a8)
{
  v15 = (((a1 - 1966) | 1) ^ v13) + 6157 * v8;
  v16 = *(STACK[0x57C0] + v8 * v12 + 8698028 - 5816 * (((((v8 * v12 + 8698028) >> 3) * v11) >> 32) >> 7));
  v17 = v15 - 10816 * (((v15 * v10) >> 32) >> 12);
  v18 = *(STACK[0x57C0] + (4843 * (((v16 ^ 0x4F5DB4E5) - 1331541221) ^ ((v16 ^ 0xD8F4D3A8) + 655043672) ^ ((v16 ^ 0x97A9678A) + 1750505590)) + 18384028) % 0x16B8);
  if (v18)
  {
    a7 = -118;
  }

  v20 = a7 ^ 0x1E;
  v21 = a8 ^ a7;
  if (((v18 ^ 0x7E) & 2) == 0)
  {
    v21 = v20;
  }

  if (((v18 ^ 0x7E) & 4) != 0)
  {
    v21 ^= a2 ^ 0xC7;
  }

  if (((v18 ^ 0x7E) & 8) == 0)
  {
    v21 ^= a3 ^ 0xC7;
  }

  if (((v18 ^ 0x7E) & 0x10) == 0)
  {
    v21 ^= a4 ^ 0xC7;
  }

  if (((v18 ^ 0x7E) & 0x20) == 0)
  {
    v21 ^= a5 ^ 0xC7;
  }

  v22 = a6 ^ v21 ^ 0xC7;
  if (((v18 ^ 0x7E) & 0x40) == 0)
  {
    v22 = v21;
  }

  v23 = v18 < 0;
  v24 = v9 ^ v22;
  if (v23)
  {
    v24 = v22;
  }

  *(v14 + 4 * v17) = v24 ^ 0x684FB61E;
  return (*(STACK[0x57D8] + 8 * ((213 * (v8 == 255)) ^ a1)))();
}

uint64_t sub_10018308C()
{
  v2 = v0;
  v3 = 977227158 - 749512935 * (((2 * *(STACK[0x57C0] + v2)) & 0x1BC) + (*(STACK[0x57C0] + v2) ^ LODWORD(STACK[0x5730])));
  v4 = (v3 ^ 0xBD6AD33A) & (2 * (v3 & 0x3D42C3BC)) ^ v3 & 0x3D42C3BC;
  v5 = ((2 * (v3 ^ 0xEDEB5712)) ^ 0xA153295C) & (v3 ^ 0xEDEB5712) ^ (2 * (v3 ^ 0xEDEB5712)) & 0xD0A994AE;
  v6 = ((4 * (v5 ^ 0x50A894A2)) ^ 0x42A652B8) & (v5 ^ 0x50A894A2) ^ (4 * (v5 ^ 0x50A894A2)) & 0xD0A994AC;
  v7 = (v6 ^ LODWORD(STACK[0x370])) & (16 * ((v5 ^ 0x80018001) & (4 * v4) ^ v4)) ^ (v5 ^ 0x80018001) & (4 * v4) ^ v4;
  v8 = ((16 * (v6 ^ LODWORD(STACK[0x374]))) ^ 0xA994AE0) & (v6 ^ LODWORD(STACK[0x374])) ^ (16 * (v6 ^ LODWORD(STACK[0x374]))) & 0xD0A994A0;
  v9 = v3 ^ (2 * (((v7 ^ 0xD0A994AE ^ (v8 ^ 0x89000E) & (v7 << 8)) << 16) & 0x50A90000 ^ v7 ^ 0xD0A994AE ^ (v8 ^ 0x89000E) & (v7 << 8) ^ (((v7 ^ 0xD0A994AE ^ (v8 ^ 0x89000E) & (v7 << 8)) << 16) ^ 0x14AE0000) & (((v8 ^ LODWORD(STACK[0x378])) << 8) & 0x50A90000 ^ 0x50290000 ^ (((v8 ^ LODWORD(STACK[0x378])) << 8) ^ 0x29940000) & (v8 ^ LODWORD(STACK[0x378])))));
  v10 = ((v9 ^ v1 ^ 0x2BDBD97E) + 2095895897) ^ ((v9 ^ v1 ^ 0x8E5A0133) - 647164650) ^ ((v9 ^ v1 ^ 0x18C032AD) + 1341603468);
  v11 = ((((v2 + 2018422314 + v10) ^ 0x9928936C) + 68352099) ^ (v2 + 2018422314 + v10) ^ (((v2 + 2018422314 + v10) ^ 0x8A5F6B32) + 392495165) ^ (((v2 + 2018422314 + v10) ^ 0x4E7D9352) - 750258083) ^ (((v2 + 2018422314 + v10) ^ LODWORD(STACK[0x37C])) - 1560963852)) >> 16;
  v12 = v10 + (((v11 ^ 0xB4E0E406) + 30015762) ^ ((v11 ^ 0xF1C89606) + 1155691282) ^ ((v11 ^ 0x452810C5) - 268241453));
  v13 = v2 + 1935761521 + v12;
  v14 = (v13 ^ 0xE8F922E4) & (2 * (v13 & 0xECFD30F5)) ^ v13 & 0xECFD30F5;
  v15 = ((2 * (v13 ^ 0xB0B3026C)) ^ 0xB89C6532) & (v13 ^ 0xB0B3026C) ^ (2 * (v13 ^ 0xB0B3026C)) & 0x5C4E3298;
  v16 = ((4 * (v15 ^ 0x44421289)) ^ 0x7138CA64) & (v15 ^ 0x44421289) ^ (4 * (v15 ^ 0x44421289)) & 0x5C4E3298;
  v17 = (v16 ^ 0x50080209) & (16 * ((v15 ^ 0x100E1011) & (4 * v14) ^ v14)) ^ (v15 ^ 0x100E1011) & (4 * v14) ^ v14;
  v18 = ((16 * (v16 ^ 0xC463099)) ^ 0xC4E32990) & (v16 ^ 0xC463099) ^ (16 * (v16 ^ 0xC463099)) & 0x5C4E3290;
  v19 = v17 ^ 0x5C4E3299 ^ (v18 ^ 0x44422009) & (v17 << 8);
  v20 = (v13 ^ (2 * ((v19 << 16) & 0x5C4E0000 ^ v19 ^ ((v19 << 16) ^ 0x32990000) & (((v18 ^ LODWORD(STACK[0x380])) << 8) & 0x5C4E0000 ^ 0x104C0000 ^ (((v18 ^ LODWORD(STACK[0x380])) << 8) ^ 0x4E320000) & (v18 ^ LODWORD(STACK[0x380])))))) >> 8;
  v21 = v2 + v12 + (((v20 ^ 0xF2ADE1EC) - 1659226882) ^ ((v20 ^ 0x70FCA65C) + 525038414) ^ ((v20 ^ 0x822536E5) - 309140491));
  v22 = v9 ^ 0x28D41E60;
  v23 = v21 + 937143630;
  v24 = ((v21 + 937143630) ^ 0x323FBFC2) & (2 * ((v21 + 937143630) & STACK[0x384])) ^ (v21 + 937143630) & STACK[0x384];
  v25 = ((2 * ((v21 + 937143630) ^ 0x7273E640)) ^ 0x9599B326) & ((v21 + 937143630) ^ 0x7273E640) ^ (2 * ((v21 + 937143630) ^ 0x7273E640)) & 0xCACCD992;
  v26 = v25 ^ 0x4A444891;
  v27 = (v25 ^ 0x88889101) & (4 * v24) ^ v24;
  v28 = ((4 * v26) ^ 0x2B33664C) & v26 ^ (4 * v26) & 0xCACCD990;
  v29 = v28 ^ 0xC0CC9993;
  v30 = (v28 ^ 0xA004003) & (16 * v27) ^ v27;
  v31 = ((16 * v29) ^ 0xACCD9930) & v29 ^ (16 * v29) & 0xCACCD990;
  v32 = v31 ^ LODWORD(STACK[0x388]);
  v33 = v31 ^ 0x88CC9900;
  v34 = v30 ^ 0xCACCD993;
  v35 = v21 - 431271402;
  v36 = v33 & (v30 << 8);
  v37 = (v35 ^ 0x687C7F26) & (2 * (v35 & 0x717E7FA6)) ^ v35 & 0x717E7FA6;
  v38 = ((2 * (v35 ^ 0x4AA8032A)) ^ 0x77ACF918) & (v35 ^ 0x4AA8032A) ^ (2 * (v35 ^ 0x4AA8032A)) & 0x3BD67C8C;
  v39 = ((4 * (v38 ^ 0x8520484)) ^ 0xEF59F230) & (v38 ^ 0x8520484) ^ (4 * (v38 ^ 0x8520484)) & 0x3BD67C8C;
  v40 = v34 ^ v36;
  v41 = (v39 ^ 0x2B507000) & (16 * ((v38 ^ 0x3807808) & (4 * v37) ^ v37)) ^ (v38 ^ 0x3807808) & (4 * v37) ^ v37;
  v42 = ((16 * (v39 ^ 0x10860C8C)) ^ 0xBD67C8C0) & (v39 ^ 0x10860C8C) ^ (16 * (v39 ^ 0x10860C8C)) & 0x3BD67C80;
  v43 = v41 ^ 0x3BD67C8C ^ (v42 ^ 0x39464800) & (v41 << 8);
  v44 = (v32 << 8) & 0x4ACC0000 ^ 0x2040000 ^ ((v32 << 8) ^ 0x4CD90000) & v32;
  v45 = (v21 + 1299855025) ^ (((v21 + 1299855025) ^ 0x9834DD30) - 380984682) ^ (((v21 + 1299855025) ^ 0xAF1EFA90) - 564099786) ^ (((v21 + 1299855025) ^ 0xC6565901) - 1222105435) ^ (((v21 + 1299855025) ^ 0x7FFDFEFB) + 243499359) ^ 0xBEDBBCE9;
  v46 = ((v45 ^ v22 ^ 0xA3F97C86) + 1543930746) ^ ((v45 ^ v22 ^ 0x38E97F47) - 954826567) ^ ((v45 ^ v22 ^ 0x3EDFCBF2) - 1054854130);
  v47 = ((v40 << 16) ^ 0x59930000) & v44;
  v48 = ((((v2 - 995687222 + v46) ^ 0x5E880410) - 1079982215) ^ (v2 - 995687222 + v46) ^ (((v2 - 995687222 + v46) ^ 0x807A81EA) + 1632780931) ^ (((v2 - 995687222 + v46) ^ 0xFFDA0692) + 519226875) ^ (((v2 - 995687222 + v46) ^ 0x3FFFBFF8) - 556303208)) >> 16;
  v49 = (v40 << 16) & 0x4ACC0000 ^ v40;
  v50 = ((v43 << 16) ^ 0x7C8C0000) & (((v42 ^ 0x290340C) << 8) & 0x3BD60000 ^ 0x29820000 ^ (((v42 ^ 0x290340C) << 8) ^ 0x567C0000) & (v42 ^ 0x290340C));
  v51 = v46 + (((v48 ^ 0x19C5FEEF) + 620308643) ^ ((v48 ^ 0x4E52FE41) + 1936599053) ^ ((v48 ^ 0x57971E79) + 1789642805));
  v52 = v2 + 2006356461 + v51;
  v53 = (v52 ^ 0xECFD4D2B) & (2 * (v52 & 0xF0FC6DAB)) ^ v52 & 0xF0FC6DAB;
  v54 = ((2 * (v52 ^ 0x6C955E6F)) ^ 0x38D26788) & (v52 ^ 0x6C955E6F) ^ (2 * (v52 ^ 0x6C955E6F)) & 0x9C6933C4;
  v55 = v54 ^ 0x84291044;
  v56 = (v54 ^ 0x482380) & (4 * v53) ^ v53;
  v57 = ((4 * v55) ^ 0x71A4CF10) & v55 ^ (4 * v55) & 0x9C6933C4;
  v58 = v49 ^ v47;
  v59 = v56 ^ 0x9C6933C4 ^ (v57 ^ 0x10200304) & (16 * v56);
  v60 = (16 * (v57 ^ 0x8C4930C4)) & 0x9C6933C0 ^ 0x18680384 ^ ((16 * (v57 ^ 0x8C4930C4)) ^ 0xC6933C40) & (v57 ^ 0x8C4930C4);
  v61 = (v59 << 8) & 0x9C693300 ^ v59 ^ ((v59 << 8) ^ 0x6933C400) & v60;
  v62 = (v43 << 16) & 0x3BD60000 ^ v43 ^ v50;
  v63 = (v52 ^ (2 * ((v61 << 16) & 0x1C690000 ^ v61 ^ ((v61 << 16) ^ 0x33C40000) & ((v60 << 8) & 0x1C690000 ^ 0x14480000 ^ ((v60 << 8) ^ 0x69330000) & v60)))) >> 8;
  v64 = v2 + v51 + (((v63 ^ 0x1A0C8411) + 2069513976) ^ ((v63 ^ 0xDD23AE3) + 1820653574) ^ ((v63 ^ 0x172652F8) + 1987088415));
  v65 = v64 + 685422019;
  v66 = v64 - 1308655754;
  v67 = (v66 ^ 0xBFD731DE) & (2 * (v66 & 0xBC1435D0)) ^ v66 & 0xBC1435D0;
  v68 = ((2 * (v66 ^ 0x8FD73A7E)) ^ 0x67861F5C) & (v66 ^ 0x8FD73A7E) ^ (2 * (v66 ^ 0x8FD73A7E)) & 0x33C30FAE;
  v69 = v68 ^ 0x104100A2;
  v70 = (v68 ^ 0x20800F22) & (4 * v67) ^ v67;
  v71 = ((4 * v69) ^ 0xCF0C3EB8) & v69 ^ (4 * v69) & 0x33C30FAC;
  v72 = (v71 ^ LODWORD(STACK[0x5720])) & (16 * v70) ^ v70;
  v73 = ((16 * (v71 ^ LODWORD(STACK[0x38C]))) ^ LODWORD(STACK[0x5710])) & (v71 ^ LODWORD(STACK[0x38C])) ^ (16 * (v71 ^ LODWORD(STACK[0x38C]))) & 0x33C30FA0;
  v74 = v73 ^ 0x3C3050E;
  v75 = (v65 ^ 0x9C8258C4) & (2 * (v65 & 0xDE0A1AE8)) ^ v65 & 0xDE0A1AE8;
  v76 = ((2 * (v65 ^ 0x908269D4)) ^ 0x9D10E678) & (v65 ^ 0x908269D4) ^ (2 * (v65 ^ 0x908269D4)) & 0x4E88733C;
  v77 = v76 ^ 0x42881104;
  v78 = (v76 ^ 0x8006220) & (4 * v75) ^ v75;
  v79 = 4 * v77;
  v80 = ((4 * v77) ^ 0x3A21CCF0) & v77;
  v81 = v72 ^ 0x33C30FAE ^ (v73 ^ 0x30000A0E) & (v72 << 8);
  v82 = v80 ^ v79 & 0x4E88733C;
  v83 = ((16 * (v82 ^ 0x4488330C)) ^ 0xE88733C0) & (v82 ^ 0x4488330C) ^ (16 * (v82 ^ 0x4488330C)) & 0x4E887330;
  v84 = (v82 ^ 0xA00402C) & (16 * v78) ^ v78 ^ 0x4E88733C ^ (v83 ^ 0x4880333C) & (((v82 ^ 0xA00402C) & (16 * v78) ^ v78) << 8);
  v85 = ((v83 ^ 0x608403C) << 8) & 0x4E880000 ^ 0x46880000 ^ (((v83 ^ 0x608403C) << 8) ^ LODWORD(STACK[0x390])) & (v83 ^ 0x608403C);
  v86 = (v64 + 422470673) ^ 0xE496F499 ^ (((v64 + 422470673) ^ 0xAE5E4BD0) + 306871840) ^ (((v64 + 422470673) ^ 0xCC0D9C21) + 1880730095) ^ (((v64 + 422470673) ^ 0xD666E6B6) + 1785910138) ^ (((v64 + 422470673) ^ LODWORD(STACK[0x394])) + 1271582393);
  v87 = ((v86 ^ v22 ^ 0x5758EFB3) - 1465446323) ^ ((v86 ^ v22 ^ 0xB2BC06F7) + 1296300297) ^ ((v86 ^ v22 ^ 0xD70C236D) + 687070355);
  v88 = v2 + 1227956155 + v87;
  v89 = (v88 ^ 0xE1A7084C) & (2 * (v88 & 0xE9B7AA6E)) ^ v88 & 0xE9B7AA6E;
  v90 = ((v84 << 16) ^ 0x733C0000) & v85;
  v91 = ((2 * (v88 ^ 0xF0A2081C)) ^ 0x322B44E4) & (v88 ^ 0xF0A2081C) ^ (2 * (v88 ^ 0xF0A2081C)) & 0x1915A272;
  v92 = v91 ^ 0x10062;
  v91 ^= 0x914A212u;
  v93 = v92 & (4 * v89) ^ v89;
  v94 = ((4 * v91) ^ 0x645689C8) & v91;
  v95 = (4 * v91) & 0x1915A270;
  v96 = (v81 << 16) & 0x33C30000 ^ v81 ^ ((v81 << 16) ^ 0xFAE0000) & ((v74 << 8) & 0x33C30000 ^ 0x30C00000 ^ ((v74 << 8) ^ 0xC30F0000) & v74);
  v97 = (v94 ^ v95 ^ 0x148052) & (16 * v93) ^ v93;
  v98 = ((16 * (v94 ^ v95 ^ 0x19012232)) ^ 0x915A2720) & (v94 ^ v95 ^ 0x19012232) ^ (16 * (v94 ^ v95 ^ 0x19012232)) & 0x1915A270;
  v99 = ((v97 ^ 0x1915A272 ^ (v98 ^ 0x11102252) & (v97 << 8)) << 16) & 0x19150000 ^ v97 ^ 0x1915A272 ^ (v98 ^ 0x11102252) & (v97 << 8) ^ (((v97 ^ 0x1915A272 ^ (v98 ^ 0x11102252) & (v97 << 8)) << 16) ^ 0x22720000) & (((v98 ^ 0x8058052) << 8) & 0x19150000 ^ 0x8150000 ^ (((v98 ^ 0x8058052) << 8) ^ 0x15A20000) & (v98 ^ 0x8058052));
  v100 = (v84 << 16) & 0x4E880000 ^ v84 ^ v90;
  v101 = v87 + (((((v88 ^ (2 * v99)) >> 16) ^ 0x67DEF2C2) + 1426831019) ^ ((((v88 ^ (2 * v99)) >> 16) ^ 0x720390FC) + 1087820949) ^ ((((v88 ^ (2 * v99)) >> 16) ^ 0x15DDB982) + 654900715));
  v102 = v2 + 384935290 + v101;
  v103 = ((2 * (v102 ^ 0x8A7CB9CA)) ^ 0xC6BA7A20) & (v102 ^ 0x8A7CB9CA) ^ (2 * (v102 ^ 0x8A7CB9CA)) & 0x635D3D10;
  v104 = (v102 ^ 0xC83DB0DA) & (2 * (v102 & 0xE92184DA)) ^ v102 & 0xE92184DA;
  v105 = v103 ^ 0x21450510;
  v106 = (v103 ^ LODWORD(STACK[0x39C])) & (4 * v104) ^ v104;
  v107 = ((4 * v105) ^ LODWORD(STACK[0x398])) & v105 ^ (4 * v105) & 0x635D3D10;
  v108 = (v107 ^ 0x1543400) & (16 * v106) ^ v106;
  v109 = ((16 * (v107 ^ 0x62090910)) ^ 0x35D3D100) & (v107 ^ 0x62090910) ^ (16 * (v107 ^ 0x62090910)) & 0x635D3D10;
  v110 = v108 ^ 0x635D3D10 ^ (v109 ^ 0x21511110) & (v108 << 8);
  v111 = (v102 ^ (2 * ((v110 << 16) & 0x635D0000 ^ v110 ^ ((v110 << 16) ^ 0x3D100000) & (((v109 ^ 0x420C2C10) << 8) & 0x635D0000 ^ 0x22400000 ^ (((v109 ^ 0x420C2C10) << 8) ^ 0x5D3D0000) & (v109 ^ 0x420C2C10))))) >> 8;
  v112 = v2 + v101 + (((v111 ^ 0x215A09FB) + 1549929706) ^ ((v111 ^ 0x80347745) - 49515944) ^ ((v111 ^ 0xA103C540) - 600063917));
  v113 = v112 - 597301469;
  v112 -= 1656928390;
  v114 = LODWORD(STACK[0x5790]) ^ v35 ^ (2 * v62) ^ v66 ^ (2 * v96) ^ v112 ^ ((v112 ^ 0x997696B5) - 707158477);
  v115 = ((v112 ^ 0xF62328FB) - 1165221763) ^ ((v112 ^ 0xE37AB3C9) - 1344947377);
  v116 = LODWORD(STACK[0x57A0]) ^ 0x22840BD9 ^ v23 ^ (2 * v58) ^ v65 ^ (2 * v100) ^ v113 ^ ((v113 ^ LODWORD(STACK[0x3A4])) - 1129653686) ^ ((v113 ^ LODWORD(STACK[0x3A0])) - 1258510342) ^ ((v113 ^ 0xA811E8D3) + 239496337);
  v117 = STACK[0x5770];
  v118 = STACK[0x5780];
  v119 = ((v112 ^ LODWORD(STACK[0x3A8])) + 1943073401) ^ 0x181C5B4A;
  if (LODWORD(STACK[0x5740]) < 0x34E93523 != v2 + 887698724 < 0x34E93523)
  {
    v120 = LODWORD(STACK[0x5740]) < 0x34E93523;
  }

  else
  {
    v120 = v2 + 887698724 < LODWORD(STACK[0x5740]);
  }

  LODWORD(STACK[0x57A0]) = v116 ^ ((v113 ^ 0xF9EFEEDF) + 1605921437);
  v121 = *(STACK[0x57D8] + 8 * ((83 * v120) ^ STACK[0x5750]));
  LODWORD(STACK[0x5770]) = v117 + 1;
  LODWORD(STACK[0x5790]) = v114 ^ v115 ^ v119;
  LODWORD(STACK[0x5780]) = v118 + 1;
  return v121();
}

uint64_t sub_1001844B0(uint64_t a1, uint64_t a2)
{
  v6 = v5 == 0;
  if (v4)
  {
    v6 = v2;
  }

  if (v6)
  {
    v7 = 32;
  }

  else
  {
    v7 = 31;
  }

  *(v3 + 8) = (v2 & 0x40350CD) + 2101965948 + v7;
  return (*(STACK[0x57D8] + 8 * (v2 ^ 0x3937 ^ (v2 + 9116))))(a1, a2, 1202120278);
}

uint64_t sub_1001848B4()
{
  v0 = STACK[0x51B8] - 19146;
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9207)))(STACK[0x6E70]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1001848E8()
{
  v0 = STACK[0x51B8] ^ 0x91F;
  v1 = STACK[0x51B8] - 19804;
  v2 = STACK[0x57D8];
  STACK[0xCF38] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v0 ^ v1 ^ 0x486B)))();
}

uint64_t sub_100184944()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x6093)))(2560);
  STACK[0xADE0] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 + 614716751) ^ 0xDB5C0F25) + ((v0 + 614716751) & 0xDB5C0FA7))) ^ v0)))();
}

uint64_t sub_1001849C8()
{
  v1 = STACK[0xC540];
  STACK[0xA380] = STACK[0xC540] + 256;
  *(v1 + 256) = -769884012;
  *(v1 + 264) = 0xD38CBDD3ACAFF84ALL;
  *(v1 + 272) = 0;
  *(v1 + 280) = 0;
  *(v1 + 288) = -769884012;
  *(v1 + 292) = -769884012;
  *(v1 + 296) = 0;
  *(v1 + 304) = -769884012;
  *(v1 + 312) = 0;
  *(v1 + 320) = 0;
  *(v1 + 328) = 0xD38CBDD3ACAFF84ALL;
  *(v1 + 336) = 0;
  *(v1 + 344) = 0;
  *(v1 + 352) = 0;
  *(v1 + 360) = -769884012;
  *(v1 + 368) = 0;
  *(v1 + 376) = 0xD38CBDD3ACAFF84ALL;
  *(v1 + 392) = -769884012;
  *(v1 + 400) = 0x2F0471E20AD18A8CLL;
  *(v1 + 384) = 0;
  v2 = STACK[0x57D8];
  STACK[0xCF38] = *(STACK[0x57D8] + 8 * v0);
  return (*(v2 + 8 * ((16165 * (((v0 + 17973) ^ 0x8C618CFB) + v0 > 0xFDEEE1BE)) ^ (v0 + 2546))))();
}

uint64_t sub_100184B68@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, int a7@<W8>)
{
  v7 = STACK[0xC680];
  v8 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * a7);
  return (*(v8 + 8 * (a7 ^ 0x16C0)))(v7, a1, a2, a3, a4, a5, a6, 3562894612);
}

uint64_t sub_100184CFC()
{
  v0 = STACK[0x51B8] - 11201;
  v1 = STACK[0x51B8] - 119;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x50AB)))(1280);
  STACK[0x6EC8] = v3;
  return (*(v2 + 8 * ((62 * (((v3 == 0) ^ (3 * (v0 ^ 0xE7) + v1)) & 1)) ^ v0)))();
}

uint64_t sub_100184E00()
{
  v1 = ((v0 ^ 0x560C7935) - 1443658037) ^ ((v0 ^ 0x727246DA) - 1920091866) ^ (LODWORD(STACK[0x1E58]) + (v0 ^ 0x247ECD46));
  v2 = LODWORD(STACK[0xDBCC]) + 62131 + v1;
  v3 = v2 - 708231601;
  v4 = (((LODWORD(STACK[0xDBBC]) ^ 0x5D206A76) - 1562405494) ^ ((LODWORD(STACK[0xDBBC]) ^ 0x902BE3FF) + 1876171777) ^ ((LODWORD(STACK[0xDBBC]) ^ 0x1F17091D) - 521603357)) - 1478115613;
  v5 = v2 > 0x2A36C1B0;
  LODWORD(STACK[0xD0D8]) = LODWORD(STACK[0xDBCC]) + 10;
  LODWORD(STACK[0xD0DC]) = v1 + 1581996027;
  if (v5 != v4 < 0xD5C93E4F)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3 > v4;
  }

  return (*(STACK[0x57D8] + 8 * ((9628 * v6) ^ LODWORD(STACK[0x1E5C]))))();
}

uint64_t sub_100184F50()
{
  LODWORD(STACK[0x67D4]) = v0;
  v4 = v2 - 18310 + v0 + 1194262966;
  v5 = (((LODWORD(STACK[0xCD84]) ^ (v2 + 673966587)) - 673989201) ^ ((LODWORD(STACK[0xCD84]) ^ 0x43BF2F7E) - 1136603006) ^ ((LODWORD(STACK[0xCD84]) ^ 0xB98FEDBB) + 1181749829)) + 1854375502;
  v6 = v4 < v1;
  v7 = v5 < v1;
  v8 = v4 < v5;
  if (v6 != v7)
  {
    v8 = v7;
  }

  return (*(STACK[0x57D8] + 8 * ((21224 * (v3 & v8)) ^ (v2 - 9154))))(4262769784, 4262753852, 4404, 4294961847, 8340, 230, 454, 80);
}

uint64_t sub_1001850C0()
{
  v1 = STACK[0x51B8] - 22614;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9207)))(v0);
  return (*(v2 + 8 * (v1 ^ 0xF83)))(v3);
}

uint64_t sub_10018513C()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x82F0];
  v2 = STACK[0x9EE0];
  *(v2 - 0x79296B4A625EDC73) = *(STACK[0x82F0] + 1769);
  *(v2 - 0x79296B4A625EDC71) = *(v1 + 1768);
  *(v2 - 0x79296B4A625EDC72) = *(v1 + 1770);
  LODWORD(v1) = LODWORD(STACK[0xAA2C]) == v0 - 143135685;
  LOBYTE(STACK[0x708B]) = v1;
  return (*(STACK[0x57D8] + 8 * ((30900 * v1) ^ (v0 - 21904))))();
}

uint64_t sub_1001851F8()
{
  v0 = STACK[0x51B8] - 19664;
  *(STACK[0xD220] + 29) = 0;
  return (*(STACK[0x57D8] + 8 * (v0 ^ 0x2F54)))();
}

uint64_t sub_10018525C()
{
  LODWORD(STACK[0x53E0]) = 0;
  v1 = (STACK[0x30A8] + STACK[0x5580]) ^ 0xB88801D4E1C76353 ^ __ROR8__(STACK[0x30A8], 61);
  v2 = (__ROR8__((STACK[0x30A8] + STACK[0x5580]) ^ 0xB88801D4E1C76353, 8) + v1) ^ 0x38C8B16AE7056877;
  v3 = v2 ^ __ROR8__(v1, 61);
  v4 = (__ROR8__(v2, 8) + v3) ^ 0xE580B17D8CC5E551;
  v5 = v4 ^ __ROR8__(v3, 61);
  v6 = (__ROR8__(v4, 8) + v5) ^ v0;
  v7 = v6 ^ __ROR8__(v5, 61);
  v8 = __ROR8__(v6, 8);
  v9 = (((2 * (v8 + v7)) & 0x9844FE087497BA2ELL) - (v8 + v7) + 0x33DD80FBC5B422E8) ^ 0xE9BDCBF7C6169D71;
  v10 = v9 ^ __ROR8__(v7, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0xFA35E2CDCB3E31C7;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0xD2F00CE620E5D3AELL;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = __ROR8__(v13, 8);
  v16 = ((0x61BA98B156036CFELL - ((v15 + v14) | 0x61BA98B156036CFELL) + ((v15 + v14) | 0x9E45674EA9FC9301)) ^ 0x6A366C7F078CE67ALL) >> STACK[0x57B0];
  v17 = STACK[0x3060];
  v18 = (STACK[0x3060] + STACK[0x56E0]) ^ 0xB88801D4E1C76353;
  LODWORD(STACK[0x55D0]) = ((v16 ^ LODWORD(STACK[0x57C0]) ^ 0x5C) - 53) ^ ((v16 ^ LODWORD(STACK[0x57C0]) ^ 0xFFFFFFF1) + 104) ^ ((v16 ^ LODWORD(STACK[0x57C0]) ^ 0xFFFFFFAD) + 60);
  v19 = __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + (v18 ^ v19)) ^ 0x38C8B16AE7056877;
  v21 = v20 ^ __ROR8__(v18 ^ v19, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (v22 + v21 - ((2 * (v22 + v21)) & 0xE0371D066508F42) - 0x78FE4717CCD7B85FLL) ^ 0x62810995BFEDA2F0;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (0xDEB756D398A777FLL - ((v25 + v24) | 0xDEB756D398A777FLL) + ((v25 + v24) | 0xF2148A92C6758880)) ^ 0x13B577C9172071FALL;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0xDA604B0C03A2BF99;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0xFA35E2CDCB3E31C7;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (((2 * (v32 + v31)) | 0x5C37BEDE75C75A88) - (v32 + v31) + 0x51E42090C51C52BCLL) ^ 0x7CEBD3891A067EEALL;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = ((((v35 + v34) ^ 0x9009ADC2D7841419) - ((2 * ((v35 + v34) ^ 0x9009ADC2D7841419)) & 0x2EEBB5784952DCC6) - 0x688A2543DB56919DLL) ^ 0xF30F7C4F5D5D0F01) >> STACK[0x5480];
  v37 = (((2 * (STACK[0x3068] + STACK[0x5700])) & 0x4125ADCCABF40F68) - (STACK[0x3068] + STACK[0x5700]) - 0x2092D6E655FA07B5) ^ 0x67E528CD4BC29B18;
  v38 = v37 ^ __ROR8__(STACK[0x3068], 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0x38C8B16AE7056877;
  v40 = __ROR8__(v39, 8);
  v41 = v39 ^ __ROR8__(v38, 61);
  v42 = (0xDF69291AA0697D51 - ((v40 + v41) | 0xDF69291AA0697D51) + ((v40 + v41) | 0x2096D6E55F9682AELL)) ^ 0xC5166798D35367FFLL;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = __ROR8__(v42, 8);
  v45 = (v44 + v43 - ((2 * (v44 + v43)) & 0x3460E9F0B3D131CELL) + 0x1A3074F859E898E7) ^ 0xFB9189A388BD619DLL;
  v46 = v45 ^ __ROR8__(v43, 61);
  v47 = __ROR8__(v45, 8);
  v48 = (0xD17412D5FA8CD1C4 - ((v47 + v46) | 0xD17412D5FA8CD1C4) + ((v47 + v46) | 0x2E8BED2A05732E3BLL)) ^ 0xF4EBA62606D191A2;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ 0xFA35E2CDCB3E31C7;
  v51 = v50 ^ __ROR8__(v49, 61);
  LODWORD(STACK[0x55A0]) = ((v36 ^ LODWORD(STACK[0x54A0]) ^ 0x3B) + 111) ^ ((v36 ^ LODWORD(STACK[0x54A0]) ^ 0xFFFFFFA1) - 11) ^ ((v36 ^ LODWORD(STACK[0x54A0]) ^ 0xFFFFFF9A) - 48);
  v52 = (__ROR8__(v50, 8) + v51) ^ 0xD2F00CE620E5D3AELL;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = __ROR8__(v52, 8);
  STACK[0x5590] = ((2 * (v54 + v53)) & 0x857E0364F4EFF3D6) - (v54 + v53);
  v55 = (STACK[0x3070] + STACK[0x5300]) ^ 0xB88801D4E1C76353;
  v56 = v55 ^ __ROR8__(STACK[0x3070], 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ 0x38C8B16AE7056877;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = __ROR8__(v57, 8);
  v60 = (0xDB0A605DB1920E89 - ((v59 + v58) | 0xDB0A605DB1920E89) + ((v59 + v58) | 0x24F59FA24E6DF176)) ^ 0xC1752EDFC2A81427;
  v61 = v60 ^ __ROR8__(v58, 61);
  v62 = (__ROR8__(v60, 8) + v61) ^ v0;
  v63 = __ROR8__(v62, 8);
  v64 = v62 ^ __ROR8__(v61, 61);
  v65 = (v63 + v64 - ((2 * (v63 + v64)) & 0x4BF868FDDDCF11C8) + 0x25FC347EEEE788E4) ^ 0xFF9C7F72ED45377DLL;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = __ROR8__(v65, 8);
  v68 = (((2 * (v67 + v66)) | 0x15461418B1726228) - (v67 + v66) - 0xAA30A0C58B93114) ^ 0xF096E8C1938700D3;
  v69 = v68 ^ __ROR8__(v66, 61);
  v70 = (__ROR8__(v68, 8) + v69) ^ 0xD2F00CE620E5D3AELL;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = __ROR8__(v70, 8);
  STACK[0x5560] = ((2 * (v72 + v71)) | 0xDC8934AA521BB9C8) - (v72 + v71);
  v73 = (STACK[0x3078] + STACK[0x5360] - ((2 * (STACK[0x3078] + STACK[0x5360])) & 0xA556DB92FB69DCF0) + 0x52AB6DC97DB4EE78) ^ 0xEA236C1D9C738D2BLL;
  v74 = v73 ^ __ROR8__(STACK[0x3078], 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ 0x38C8B16AE7056877;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = __ROR8__(v75, 8);
  v78 = (0x151E60C3307E3FC0 - ((v77 + v76) | 0x151E60C3307E3FC0) + ((v77 + v76) | 0xEAE19F3CCF81C03FLL)) ^ 0xF612E414344256ELL;
  v79 = v78 ^ __ROR8__(v76, 61);
  v80 = (__ROR8__(v78, 8) + v79) ^ v0;
  v81 = v80 ^ __ROR8__(v79, 61);
  v82 = __ROR8__(v80, 8);
  v83 = (v82 + v81 - ((2 * (v82 + v81)) & 0x376A4B775A4E597ELL) + 0x1BB525BBAD272CBFLL) ^ 0xC1D56EB7AE859326;
  v84 = v83 ^ __ROR8__(v81, 61);
  v85 = __ROR8__(v83, 8);
  v86 = (((2 * (v85 + v84)) & 0x61F20A4A97BFA45ELL) - (v85 + v84) - 0x30F905254BDFD230) ^ 0x353318177F1E1C17;
  v87 = v86 ^ __ROR8__(v84, 61);
  v88 = (__ROR8__(v86, 8) + v87) ^ 0xD2F00CE620E5D3AELL;
  v89 = __ROR8__(v88, 8);
  v90 = v88 ^ __ROR8__(v87, 61);
  v91 = ((STACK[0x5100] | 0x6F1582A87D699E3ELL) - (STACK[0x5100] | 0x90EA7D57829661C1) - 0x6F1582A87D699E3FLL) ^ 0xD79D837C9CAEFD6DLL;
  v92 = v91 ^ STACK[0x5108];
  v93 = __ROR8__(v91, 8);
  v94 = (v93 + v92 - ((2 * (v93 + v92)) & 0x2F5A4A3550C88DA6) - 0x6852DAE5579BB92DLL) ^ 0xAF6594704F612EA4;
  v95 = v94 ^ __ROR8__(v92, 61);
  v96 = __ROR8__(v94, 8);
  v97 = (((2 * (v96 + v95)) & 0xF9808EBA8DBCF35CLL) - (v96 + v95) - 0x7CC0475D46DE79AFLL) ^ 0x66BF09DF35E46300 ^ __ROR8__(v95, 61);
  v98 = (__ROR8__((((2 * (v96 + v95)) & 0xF9808EBA8DBCF35CLL) - (v96 + v95) - 0x7CC0475D46DE79AFLL) ^ 0x66BF09DF35E46300, 8) + v97) ^ v0;
  v99 = v98 ^ __ROR8__(v97, 61);
  v100 = (__ROR8__(v98, 8) + v99) ^ 0xDA604B0C03A2BF99;
  v101 = v100 ^ __ROR8__(v99, 61);
  v102 = (__ROR8__(v100, 8) + v101) ^ 0xFA35E2CDCB3E31C7;
  v103 = v102 ^ __ROR8__(v101, 61);
  v104 = __ROR8__(v102, 8);
  v105 = __ROR8__((((v104 + v103) | 0xE93539B05B671887) - ((v104 + v103) | 0x16CAC64FA498E778) + 0x16CAC64FA498E778) ^ 0x3BC535567B82CB29, 8);
  v106 = (((v104 + v103) | 0xE93539B05B671887) - ((v104 + v103) | 0x16CAC64FA498E778) + 0x16CAC64FA498E778) ^ 0x3BC535567B82CB29 ^ __ROR8__(v103, 61);
  v107 = (STACK[0x4DB0] - (STACK[0x4D58] & 0x34E36135D1C164E4) + 0x1A71B09AE8E0B272) ^ 0x22B901F00FE5DA05;
  v108 = v107 ^ STACK[0x4DB8];
  v109 = (__ROR8__(v107, 8) + v108) ^ 0xE580B17D8CC5E551;
  v110 = __ROR8__(v109, 8);
  v111 = v109 ^ __ROR8__(v108, 61);
  v112 = (v110 + v111) ^ v0;
  v113 = v112 ^ __ROR8__(v111, 61);
  v114 = __ROR8__(v112, 8);
  v115 = (((v114 + v113) | 0x9DBBE13070AC1DB9) - ((v114 + v113) | 0x62441ECF8F53E246) + 0x62441ECF8F53E246) ^ 0x47DBAA3C730EA220;
  v116 = v115 ^ __ROR8__(v113, 61);
  v117 = (__ROR8__(v115, 8) + v116) ^ 0xFA35E2CDCB3E31C7;
  v118 = v117 ^ __ROR8__(v116, 61);
  v119 = (__ROR8__(v117, 8) + v118) ^ 0xD2F00CE620E5D3AELL;
  v120 = __ROR8__(v119, 8);
  v121 = v119 ^ __ROR8__(v118, 61);
  v122 = (((2 * (STACK[0x30A0] + STACK[0x5160])) & 0x8059A2F63FF48D3ELL) - (STACK[0x30A0] + STACK[0x5160]) - 0x402CD17B1FFA46A0) ^ 0x75B2F5001C2DA33;
  v123 = v122 ^ __ROR8__(STACK[0x30A0], 61);
  v124 = (__ROR8__(v122, 8) + v123) ^ 0x38C8B16AE7056877;
  v125 = v124 ^ __ROR8__(v123, 61);
  v126 = (__ROR8__(v124, 8) + v125) ^ 0xE580B17D8CC5E551;
  v127 = __ROR8__(v126, 8);
  v128 = v126 ^ __ROR8__(v125, 61);
  v129 = (v127 + v128) ^ v0;
  v130 = v129 ^ __ROR8__(v128, 61);
  v131 = __ROR8__(v129, 8);
  v132 = (((v131 + v130) | 0x8A70E28A3AF6346) - ((v131 + v130) | 0xF758F1D75C509CB9) - 0x8A70E28A3AF6347) ^ 0xD2C74524A00DDCDFLL;
  v133 = v132 ^ __ROR8__(v130, 61);
  v134 = __ROR8__(v132, 8);
  v135 = (v134 + v133 - ((2 * (v134 + v133)) & 0x30CA54A631A495CALL) + 0x18652A5318D24AE5) ^ 0xE250C89ED3EC7B22;
  v136 = v135 ^ __ROR8__(v133, 61);
  v137 = (__ROR8__(v135, 8) + v136) ^ 0xD2F00CE620E5D3AELL;
  v138 = v137 ^ __ROR8__(v136, 61);
  v139 = (STACK[0x3080] + STACK[0x50D0]) ^ 0xB88801D4E1C76353;
  v140 = v139 ^ __ROR8__(STACK[0x3080], 61);
  v141 = __ROR8__(v139, 8);
  v142 = (((v141 + v140) | 0x7BF4C6F0BBB9244FLL) - ((v141 + v140) | 0x840B390F4446DBB0) - 0x7BF4C6F0BBB92450) ^ 0x433C779A5CBC4C38;
  v143 = v142 ^ __ROR8__(v140, 61);
  v144 = (__ROR8__(v142, 8) + v143) ^ 0xE580B17D8CC5E551;
  v145 = v144 ^ __ROR8__(v143, 61);
  v146 = __ROR8__(v144, 8);
  v147 = (v146 + v145 - ((2 * (v146 + v145)) & 0x4E14F0AFF20CDB22) - 0x58F587A806F9926FLL) ^ 0x46AB850C285394EBLL ^ __ROR8__(v145, 61);
  v148 = (__ROR8__((v146 + v145 - ((2 * (v146 + v145)) & 0x4E14F0AFF20CDB22) - 0x58F587A806F9926FLL) ^ 0x46AB850C285394EBLL, 8) + v147) ^ 0xDA604B0C03A2BF99;
  v149 = v148 ^ __ROR8__(v147, 61);
  v150 = __ROR8__(v148, 8);
  v151 = (((v150 + v149) | 0x165FD5DF972E7BALL) - ((v150 + v149) | 0xFE9A02A2068D1845) - 0x165FD5DF972E7BBLL) ^ 0xFB501F90324CD67DLL;
  v152 = v151 ^ __ROR8__(v149, 61);
  v153 = (__ROR8__(v151, 8) + v152) ^ 0xD2F00CE620E5D3AELL;
  v154 = v153 ^ __ROR8__(v152, 61);
  v155 = __ROR8__((STACK[0x3098] + STACK[0x5050]) ^ 0xB88801D4E1C76353, 8);
  v156 = (STACK[0x3098] + STACK[0x5050]) ^ 0xB88801D4E1C76353 ^ __ROR8__(STACK[0x3098], 61);
  v157 = (v155 + v156 - ((2 * (v155 + v156)) & 0xC58C53963BD2CF50) + 0x62C629CB1DE967A8) ^ 0x5A0E98A1FAEC0FDFLL;
  v158 = v157 ^ __ROR8__(v156, 61);
  v159 = __ROR8__(v157, 8);
  v160 = (((2 * (v159 + v158)) & 0x4AAE54189975A78ELL) - (v159 + v158) + 0x5AA8D5F3B3452C38) ^ 0xBF28648E3F80C969;
  v161 = v160 ^ __ROR8__(v158, 61);
  v162 = __ROR8__(v160, 8);
  v163 = __ROR8__((((2 * (v162 + v161)) | 0x7F8576CB9C6182C8) - (v162 + v161) - 0x3FC2BB65CE30C164) ^ 0xDE63463E1F65381ELL, 8);
  v164 = (((2 * (v162 + v161)) | 0x7F8576CB9C6182C8) - (v162 + v161) - 0x3FC2BB65CE30C164) ^ 0xDE63463E1F65381ELL ^ __ROR8__(v161, 61);
  v165 = (v163 + v164 - ((2 * (v163 + v164)) & 0xFABB11EF80B99FELL) + 0x7D5D88F7C05CCFFLL) ^ 0xDDB593837FA77366;
  v166 = v165 ^ __ROR8__(v164, 61);
  v167 = (__ROR8__(v165, 8) + v166) ^ 0xFA35E2CDCB3E31C7;
  v168 = v167 ^ __ROR8__(v166, 61);
  v169 = __ROR8__(v167, 8);
  v170 = ((2 * (v169 + v168)) & 0xD5A3A0B632EED0AELL) - (v169 + v168);
  v171 = (STACK[0x3088] + STACK[0x4FC8]) ^ 0xB88801D4E1C76353;
  v172 = v171 ^ __ROR8__(STACK[0x3088], 61);
  v173 = (__ROR8__(v171, 8) + v172) ^ 0x38C8B16AE7056877;
  v174 = v173 ^ __ROR8__(v172, 61);
  v175 = __ROR8__(v173, 8);
  v176 = ((v175 + v174) | 0x742D9BB108BD129BLL) - ((v175 + v174) | 0x8BD2644EF742ED64);
  v177 = (v170 + 0x152E2FA4E68897A8) ^ 0xC7DE2342C66D4406;
  v178 = v177 ^ __ROR8__(v168, 61);
  v179 = __ROR8__(v177, 8);
  v180 = (v176 - 0x742D9BB108BD129CLL) ^ 0x91AD2ACC8478F7CALL ^ __ROR8__(v174, 61);
  v181 = (__ROR8__((v176 - 0x742D9BB108BD129CLL) ^ 0x91AD2ACC8478F7CALL, 8) + v180) ^ v0;
  v182 = v181 ^ __ROR8__(v180, 61);
  v183 = (__ROR8__(v181, 8) + v182) ^ 0xDA604B0C03A2BF99;
  v184 = v183 ^ __ROR8__(v182, 61);
  v185 = (__ROR8__(v183, 8) + v184) ^ 0xFA35E2CDCB3E31C7;
  v186 = v185 ^ __ROR8__(v184, 61);
  v187 = __ROR8__(v185, 8);
  v188 = v89 + v90;
  v189 = (((STACK[0x3090] + STACK[0x4EB8]) | 0x99F5CD7B4D00F9E3) - ((STACK[0x3090] + STACK[0x4EB8]) | 0x660A3284B2FF061CLL) + 0x660A3284B2FF061CLL) ^ 0x217DCCAFACC79AB0;
  v190 = v189 ^ __ROR8__(STACK[0x3090], 61);
  v191 = (__ROR8__(v189, 8) + v190) ^ 0x38C8B16AE7056877;
  v192 = v191 ^ __ROR8__(v190, 61);
  v193 = __ROR8__(v191, 8);
  STACK[0x5530] = v188 - ((2 * v188) & 0xE3B1152338F581C4);
  STACK[0x5550] = v105 + v106;
  v194 = ((2 * (v193 + v192)) & 0x2177C78D82F2D458) - (v193 + v192);
  v195 = (STACK[0x3318] + STACK[0x4B78]) ^ 0xB88801D4E1C76353;
  v196 = v195 ^ __ROR8__(STACK[0x3318], 61);
  v197 = (__ROR8__(v195, 8) + v196) ^ 0x38C8B16AE7056877;
  v198 = v197 ^ __ROR8__(v196, 61);
  v199 = __ROR8__(v197, 8);
  v200 = (v194 - 0x10BBE3C6C1796A2DLL) ^ 0xAC4AD44B2437082;
  v201 = v200 ^ __ROR8__(v192, 61);
  v202 = (__ROR8__(v200, 8) + v201) ^ v0;
  v203 = v202 ^ __ROR8__(v201, 61);
  v204 = __ROR8__(v202, 8);
  v205 = (((v199 + v198) | 0x71BA3C292B7B4101) - ((v199 + v198) | 0x8E45C3D6D484BEFELL) - 0x71BA3C292B7B4102) ^ 0x943A8D54A7BEA450;
  v206 = v205 ^ __ROR8__(v198, 61);
  v207 = __ROR8__(v205, 8);
  v208 = v120 + v121;
  v209 = ((v204 + v203) | 0xFD016932924E0B91) - ((v204 + v203) | 0x2FE96CD6DB1F46ELL);
  v210 = (v187 + v186) ^ 0xD2F00CE620E5D3AELL ^ __ROR8__(v186, 61);
  v211 = __ROR8__((v187 + v186) ^ 0xD2F00CE620E5D3AELL, 8);
  v212 = (v209 + 0x2FE96CD6DB1F46ELL) ^ 0x2761223E91ECB408;
  v213 = v212 ^ __ROR8__(v203, 61);
  v214 = (__ROR8__(v212, 8) + v213) ^ 0xFA35E2CDCB3E31C7;
  v215 = v214 ^ __ROR8__(v213, 61);
  v216 = __ROR8__(v214, 8);
  v217 = (((2 * (v207 + v206)) | 0xAD424A1CE09F25DCLL) - (v207 + v206) - 0x56A1250E704F92EELL) ^ 0xB700D855A11A6B94;
  v218 = v217 ^ __ROR8__(v206, 61);
  v219 = __ROR8__(v217, 8);
  STACK[0x5520] = v208 - ((2 * v208) & 0x9C3EF0BFD86059C0);
  v220 = (STACK[0x3328] + STACK[0x4DD8]) ^ 0xB88801D4E1C76353;
  v221 = v220 ^ __ROR8__(STACK[0x3328], 61);
  v222 = (__ROR8__(v220, 8) + v221) ^ 0x38C8B16AE7056877;
  v223 = v222 ^ __ROR8__(v221, 61);
  v224 = __ROR8__(v222, 8);
  v225 = (v219 + v218 - ((2 * (v219 + v218)) & 0xB5A8DCB576681EA8) - 0x252B91A544CBF0ACLL) ^ 0xB42556B896B0CDLL;
  v226 = v225 ^ __ROR8__(v218, 61);
  v227 = __ROR8__(v225, 8);
  v228 = ((__ROR8__(v137, 8) + v138) ^ 0xF4730B31AE70757BLL) >> STACK[0x5148];
  LODWORD(STACK[0x54F0]) = ((v228 ^ LODWORD(STACK[0x5150]) ^ 0xFFFFFFF7) + 25) ^ ((v228 ^ LODWORD(STACK[0x5150]) ^ 0xFFFFFF82) + 110) ^ ((v228 ^ LODWORD(STACK[0x5150]) ^ 0x75) - 101);
  STACK[0x54D0] = __ROR8__(v153, 8) + v154;
  v229 = (v227 + v226 - ((2 * (v227 + v226)) & 0x79A8F9654FE11DB0) + 0x3CD47CB2A7F08ED8) ^ 0xC6E19E7F6CCEBF1FLL;
  v230 = v229 ^ __ROR8__(v226, 61);
  v231 = __ROR8__(v229, 8);
  v232 = (STACK[0x3320] + STACK[0x4B20] - ((2 * (STACK[0x3320] + STACK[0x4B20])) & 0x6907343AFDCE3B84) - 0x4B7C65E28118E23ELL) ^ 0xC0B9BC99F207E91;
  v233 = v232 ^ __ROR8__(STACK[0x3320], 61);
  v234 = (__ROR8__(v232, 8) + v233) ^ 0x38C8B16AE7056877;
  v235 = v234 ^ __ROR8__(v233, 61);
  v236 = (__ROR8__(v234, 8) + v235) ^ 0xE580B17D8CC5E551;
  v237 = v236 ^ __ROR8__(v235, 61);
  STACK[0x5380] = v179 + v178;
  v238 = (__ROR8__(v236, 8) + v237) ^ v0;
  v239 = v238 ^ __ROR8__(v237, 61);
  v240 = (__ROR8__(v238, 8) + v239) ^ 0xDA604B0C03A2BF99;
  v241 = v240 ^ __ROR8__(v239, 61);
  v242 = (__ROR8__(v240, 8) + v241) ^ 0xFA35E2CDCB3E31C7;
  v243 = v242 ^ __ROR8__(v241, 61);
  v244 = __ROR8__(v242, 8);
  STACK[0x5370] = v211 + v210;
  v245 = ((STACK[0x5128] & 0x6E9EF8B4968453E8) - STACK[0x3408] + 0x48B083A5B4BDD60BLL) ^ 0xF0388271557AB558;
  v246 = __ROR8__(v245, 8);
  v247 = ((2 * ((v224 + v223) ^ 0xCD64ED3EDC9D0CB5)) | 0xA93206A3227F4302) - ((v224 + v223) ^ 0xCD64ED3EDC9D0CB5);
  v248 = v245 ^ STACK[0x3410];
  v249 = (((2 * (v246 + v248)) | 0x3ED2662940CB172ALL) - (v246 + v248) + 0x6096CCEB5F9A746BLL) ^ 0xA7A1827E4760E3E2;
  v250 = v249 ^ __ROR8__(v248, 61);
  v251 = (__ROR8__(v249, 8) + v250) ^ 0xE580B17D8CC5E551;
  v252 = v251 ^ __ROR8__(v250, 61);
  v253 = (__ROR8__(v251, 8) + v252) ^ v0;
  v254 = v253 ^ __ROR8__(v252, 61);
  v255 = (__ROR8__(v253, 8) + v254) ^ 0xDA604B0C03A2BF99;
  v256 = v255 ^ __ROR8__(v254, 61);
  v257 = (__ROR8__(v255, 8) + v256) ^ 0xFA35E2CDCB3E31C7;
  v258 = v257 ^ __ROR8__(v256, 61);
  v259 = __ROR8__(v257, 8);
  v260 = ((2 * (v259 + v258)) & 0x4ECB0F68689D0482) - (v259 + v258);
  v261 = ((2 * (STACK[0x3330] + STACK[0x49B0])) | 0xF972EB9EEE791F72) - (STACK[0x3330] + STACK[0x49B0]);
  v262 = (((2 * (v216 + v215)) & 0x863C6AB60864C8A2) - (v216 + v215) - 0x431E355B04326452) ^ 0x6E11C642DB284800 ^ __ROR8__(v215, 61);
  v263 = __ROR8__((((2 * (v216 + v215)) & 0x863C6AB60864C8A2) - (v216 + v215) - 0x431E355B04326452) ^ 0x6E11C642DB284800, 8);
  v264 = (v261 + 0x3468A3088C37047) ^ 0x4431741B96FBECEALL ^ __ROR8__(STACK[0x3330], 61);
  v265 = (__ROR8__((v261 + 0x3468A3088C37047) ^ 0x4431741B96FBECEALL, 8) + v264) ^ 0x38C8B16AE7056877;
  v266 = v265 ^ __ROR8__(v264, 61);
  v267 = __ROR8__(v265, 8);
  v268 = (v247 + 0x2B66FCAE6EC05E7FLL) ^ 0xFC7D5F12C1674865;
  v269 = v268 ^ __ROR8__(v223, 61);
  v270 = (((2 * (v267 + v266)) | 0x75B8CA04CC90A91ELL) - (v267 + v266) - 0x3ADC65026648548FLL) ^ 0xDF5CD47FEA8DB1DELL;
  v271 = v270 ^ __ROR8__(v266, 61);
  v272 = (__ROR8__(v270, 8) + v271) ^ v0;
  v273 = v272 ^ __ROR8__(v271, 61);
  v274 = __ROR8__(v272, 8);
  v275 = (__ROR8__(v268, 8) + v269) ^ v0;
  v276 = v275 ^ __ROR8__(v269, 61);
  v277 = (__ROR8__(v275, 8) + v276) ^ 0xDA604B0C03A2BF99;
  v278 = v277 ^ __ROR8__(v276, 61);
  v279 = (v274 + v273 - ((2 * (v274 + v273)) & 0x470B5982008FADD2) + 0x2385ACC10047D6E9) ^ 0xF9E5E7CD03E56970;
  v280 = v279 ^ __ROR8__(v273, 61);
  v281 = __ROR8__(v279, 8);
  v282 = (__ROR8__(v277, 8) + v278) ^ 0xFA35E2CDCB3E31C7;
  v283 = v282 ^ __ROR8__(v278, 61);
  v284 = (__ROR8__(v282, 8) + v283) ^ 0xD2F00CE620E5D3AELL;
  v285 = v284 ^ __ROR8__(v283, 61);
  v286 = (((2 * (v281 + v280)) | 0x4F31506C69993DC2) - (v281 + v280) - 0x2798A83634CC9EE1) ^ 0xDDAD4AFBFFF2AF26;
  v287 = v286 ^ __ROR8__(v280, 61);
  v288 = __ROR8__(v286, 8);
  v289 = (v231 + v230 - ((2 * (v231 + v230)) & 0x97401B43C7CFBC0) - 0x7B45FF25E1C18220) ^ 0x564A0C3C3EDBAE4ELL;
  v290 = v289 ^ __ROR8__(v230, 61);
  v291 = (((v244 + v243) | 0xBD9F71F635DA4473) - ((v244 + v243) | 0x42608E09CA25BB8CLL) + 0x42608E09CA25BB8CLL) ^ 0x6F6F7D10153F97DDLL;
  v292 = v291 ^ __ROR8__(v243, 61);
  v293 = __ROR8__(v291, 8);
  v294 = (((2 * (v288 + v287)) & 0x56E34CFB4E68308ELL) - (v288 + v287) - 0x2B71A67DA7341848) ^ 0x67E5564782E3416;
  v295 = v294 ^ __ROR8__(v287, 61);
  v296 = __ROR8__(v294, 8);
  STACK[0x5368] = v263 + v262;
  v297 = (STACK[0x3338] + STACK[0x3B40]) ^ 0xB88801D4E1C76353;
  v298 = v297 ^ __ROR8__(STACK[0x3338], 61);
  v299 = __ROR8__(v297, 8);
  v300 = (((v299 + v298) | 0x2F65663731C25ABFLL) - ((v299 + v298) | 0xD09A99C8CE3DA540) - 0x2F65663731C25AC0) ^ 0x17ADD75DD6C732C8;
  v301 = v300 ^ __ROR8__(v298, 61);
  v302 = (__ROR8__(v300, 8) + v301) ^ 0xE580B17D8CC5E551;
  v303 = v302 ^ __ROR8__(v301, 61);
  v304 = __ROR8__(v302, 8);
  v305 = __ROR8__(v284, 8) + v285;
  v306 = (STACK[0x3340] + STACK[0x4FE0]) ^ 0xB88801D4E1C76353;
  v307 = v306 ^ __ROR8__(STACK[0x3340], 61);
  v308 = __ROR8__(v306, 8);
  STACK[0x5320] = ((2 * v305) | 0x67BC3941FE6FAE96) - v305;
  v309 = v293 + v292;
  v310 = ((v308 + v307) | 0x4B202FA9445A5E1FLL) - ((v308 + v307) | 0xB4DFD056BBA5A1E0);
  v311 = (2 * (v293 + v292)) | 0xF54EF2B2A584331ELL;
  v312 = (v304 + v303) ^ v0 ^ __ROR8__(v303, 61);
  v313 = (__ROR8__((v304 + v303) ^ v0, 8) + v312) ^ 0xDA604B0C03A2BF99;
  v314 = v313 ^ __ROR8__(v312, 61);
  v315 = (__ROR8__(v313, 8) + v314) ^ 0xFA35E2CDCB3E31C7;
  v316 = v315 ^ __ROR8__(v314, 61);
  v317 = __ROR8__(v315, 8);
  v318 = (v310 - 0x4B202FA9445A5E20) ^ 0x73E89EC3A35F3668 ^ __ROR8__(v307, 61);
  v319 = (__ROR8__((v310 - 0x4B202FA9445A5E20) ^ 0x73E89EC3A35F3668, 8) + v318) ^ 0xE580B17D8CC5E551;
  v320 = v319 ^ __ROR8__(v318, 61);
  STACK[0x5310] = __ROR8__(v289, 8) + v290;
  v321 = ((v311 - v309 + 0x55886A6AD3DE671) ^ 0xED47268FCB26CF4) >> STACK[0x4B28];
  LODWORD(STACK[0x5308]) = v321 ^ LODWORD(STACK[0x4B30]) ^ ((v321 ^ LODWORD(STACK[0x4B30]) ^ 0x27) + 74) ^ ((v321 ^ LODWORD(STACK[0x4B30]) ^ 0xFFFFFFB6) - 39) ^ 0xFFFFFF91;
  v322 = ((__ROR8__((v260 + 0x589A784BCBB17DBELL) ^ 0x8A6A74ADEB54AE10, 8) + ((v260 + 0x589A784BCBB17DBELL) ^ 0x8A6A74ADEB54AE10 ^ __ROR8__(v258, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x4AB0];
  v323 = __ROR8__(v319, 8) + v320;
  v324 = (((STACK[0x3348] + STACK[0x4A60]) | 0xC5588E3FF4767845) - ((STACK[0x3348] + STACK[0x4A60]) | 0x3AA771C00B8987BALL) + 0x3AA771C00B8987BALL) ^ 0x7DD08FEB15B11B16;
  v325 = v324 ^ __ROR8__(STACK[0x3348], 61);
  v326 = (__ROR8__(v324, 8) + v325) ^ 0x38C8B16AE7056877;
  v327 = v326 ^ __ROR8__(v325, 61);
  v328 = __ROR8__(v326, 8);
  v329 = ((v328 + v327) | 0x3A9B9A1554AAD2ECLL) - ((v328 + v327) | 0xC56465EAAB552D13);
  v330 = (v323 - ((2 * v323) & 0xB5E2E6A29A9B4016) - 0x250E8CAEB2B25FF5) ^ 0x3B508E0A9C185971;
  v331 = v330 ^ __ROR8__(v320, 61);
  v332 = (__ROR8__(v330, 8) + v331) ^ 0xDA604B0C03A2BF99;
  v333 = v332 ^ __ROR8__(v331, 61);
  v334 = (((STACK[0x3350] + STACK[0x5090]) | 0xEF08B07A7F4EED0CLL) - ((STACK[0x3350] + STACK[0x5090]) | 0x10F74F8580B112F3) + 0x10F74F8580B112F3) ^ 0x5780B1AE9E898E5FLL;
  v335 = v334 ^ __ROR8__(STACK[0x3350], 61);
  v336 = __ROR8__(v334, 8);
  v337 = (__ROR8__(v332, 8) + v333) ^ 0xFA35E2CDCB3E31C7;
  v338 = v337 ^ __ROR8__(v333, 61);
  v339 = __ROR8__(v337, 8);
  v340 = (v329 - 0x3A9B9A1554AAD2EDLL) ^ 0xDF1B2B68D86F37BDLL;
  v341 = v340 ^ __ROR8__(v327, 61);
  v342 = (__ROR8__(v340, 8) + v341) ^ v0;
  v343 = v342 ^ __ROR8__(v341, 61);
  v344 = (v336 + v335 - ((2 * (v336 + v335)) & 0x5EEF361036F9362ALL) - 0x508864F7E48364EBLL) ^ 0x97BF2A62FC79F362;
  v345 = v344 ^ __ROR8__(v335, 61);
  v346 = __ROR8__(v344, 8);
  v347 = (__ROR8__(v342, 8) + v343) ^ 0xDA604B0C03A2BF99;
  v348 = v347 ^ __ROR8__(v343, 61);
  v349 = __ROR8__(v347, 8);
  v350 = (((v346 + v345) | 0x26630DEB570288C1) - ((v346 + v345) | 0xD99CF214A8FD773ELL) - 0x26630DEB570288C2) ^ 0xC3E3BC96DBC76D90;
  v351 = v350 ^ __ROR8__(v345, 61);
  v352 = __ROR8__(v350, 8);
  v353 = ((v322 ^ LODWORD(STACK[0x4AB8]) ^ 0xFFFFFF99) - 4) ^ ((v322 ^ LODWORD(STACK[0x4AB8]) ^ 0x38) + 91) ^ ((v322 ^ LODWORD(STACK[0x4AB8]) ^ 0xFFFFFFA1) - 60);
  LODWORD(v295) = (((v296 + v295) ^ 0xF4730B31AE70757BLL) >> STACK[0x4A50]) ^ LODWORD(STACK[0x4A58]);
  v354 = (v349 + v348 - ((2 * (v349 + v348)) & 0x258798ACD5D87562) + 0x12C3CC566AEC3AB1) ^ 0xE8F62E9BA1D20B76;
  v355 = v354 ^ __ROR8__(v348, 61);
  v356 = __ROR8__(v354, 8);
  v357 = (v352 + v351 - ((2 * (v352 + v351)) & 0x40FDB9A485DAE7CELL) - 0x5F81232DBD128C19) ^ 0x41DF218993B88A9DLL;
  v358 = v357 ^ __ROR8__(v351, 61);
  v359 = __ROR8__(v357, 8);
  v360 = ((v295 ^ 0xFFFFFFBA) - 16) ^ ((v295 ^ 0x1A) + 80) ^ ((v295 ^ 0xFFFFFFA0) - 10);
  v361 = ((v317 + v316) | 0x9F236F9039DFECA5) - ((v317 + v316) | 0x60DC906FC620135ALL);
  v362 = v356 + v355;
  v363 = (2 * (v356 + v355)) | 0x6987AC34297D6A4CLL;
  v364 = (v359 + v358 - ((2 * (v359 + v358)) & 0xF3F9169C50C316C8) - 0x60374B1D79E749CLL) ^ 0x239CC0422BC334FDLL;
  v365 = v364 ^ __ROR8__(v358, 61);
  v366 = __ROR8__(v364, 8);
  v367 = ((2 * (v339 + v338)) & 0xDCB1266F6ED5B480) - (v339 + v338);
  v368 = v363 - v362;
  v369 = v366 + v365 - ((2 * (v366 + v365)) & 0x4666CF49DF1D3E7ALL);
  v370 = *(STACK[0x53A0] + (STACK[0x5348] & ((STACK[0x5740] & 0xAAA259A8) + (STACK[0x5740] | 0xAAA259AC) - 811999380)));
  v371 = v370 + STACK[0x5780];
  v372 = (v361 + 0x60DC906FC620135ALL) ^ 0x4DD36376193A3F0BLL;
  v373 = v372 ^ __ROR8__(v316, 61);
  v374 = __ROR8__(v372, 8);
  v375 = (v368 + 0x4B3C29E5EB414ADALL) ^ 0x6633DAFC345B6688;
  v376 = v375 ^ __ROR8__(v355, 61);
  v377 = __ROR8__(v375, 8);
  v378 = (v369 - 0x5CCC985B107160C3) ^ 0x5906856924B0AEFALL ^ __ROR8__(v365, 61);
  v379 = (((2 * v371) | 0x7095602EBF95B7D6) - v371 + 0x47B54FE8A0352415) ^ 0xC2B1C3BE0DB8B8 ^ __ROR8__(v370, 61);
  v380 = __ROR8__((((2 * v371) | 0x7095602EBF95B7D6) - v371 + 0x47B54FE8A0352415) ^ 0xC2B1C3BE0DB8B8, 8);
  v381 = (__ROR8__((v369 - 0x5CCC985B107160C3) ^ 0x5906856924B0AEFALL, 8) + v378) ^ 0xD2F00CE620E5D3AELL;
  v382 = v381 ^ __ROR8__(v378, 61);
  v383 = __ROR8__(v381, 8);
  v384 = (((v380 + v379) ^ 0x8C07F80AF229FFEBLL | 0xA3BB78F1D6F0F53DLL) - ((v380 + v379) ^ 0x8C07F80AF229FFEBLL | 0x5C44870E290F0AC2) + 0x5C44870E290F0AC2) ^ 0x17743191C3DC62A1;
  v385 = v384 ^ __ROR8__(v379, 61);
  v386 = (__ROR8__(v384, 8) + v385) ^ 0xE580B17D8CC5E551;
  v387 = v386 ^ __ROR8__(v385, 61);
  v388 = __ROR8__(v386, 8);
  LODWORD(v373) = (((v374 + v373) ^ 0xF4730B31AE70757BLL) >> STACK[0x3B10]) ^ LODWORD(STACK[0x3B1C]);
  LODWORD(v222) = ((v373 ^ 0xFFFFFF84) - 40) ^ ((v373 ^ 0xFFFFFFB9) - 21) ^ ((v373 ^ 0x3D) + 111);
  v389 = __ROR8__((v367 - 0x6E589337B76ADA41) ^ 0x4357602E6870F611, 8) + ((v367 - 0x6E589337B76ADA41) ^ 0x4357602E6870F611 ^ __ROR8__(v338, 61));
  v390 = v377 + v376;
  v391 = STACK[0x5218];
  v392 = STACK[0x5220] & 0xFFFFFFFFFFFFFFF8;
  STACK[0x50B0] = v392;
  v393 = *(STACK[0x5250] + (v392 & (1103804051 * (((1077260086 * v391) & 0xF49BE9C0) + ((538630043 * v391) ^ 0xFA4DF4E5)) - 240399461)));
  v394 = (((2 * (v388 + v387)) | 0xF3B2EC94893E19F8) - (v388 + v387) + 0x62689B5BB60F304) ^ 0x18788B1195CAF586;
  v395 = v394 ^ __ROR8__(v387, 61);
  v396 = (((2 * (v393 + STACK[0x5258])) | 0xDFFEDECDF5D9BD72) - (v393 + STACK[0x5258]) - 0x6FFF6F66FAECDEB9) ^ 0xD7776EB21B2BBDEALL;
  v397 = v396 ^ __ROR8__(v393, 61);
  v398 = (__ROR8__(v396, 8) + v397) ^ 0x38C8B16AE7056877;
  v399 = v398 ^ __ROR8__(v397, 61);
  v400 = __ROR8__(v398, 8);
  v401 = (((2 * (v400 + v399)) & 0x7C2EF80A5B291BE2) - (v400 + v399) + 0x41E883FAD26B720ELL) ^ 0xA46832875EAE975FLL;
  v402 = v401 ^ __ROR8__(v399, 61);
  v403 = __ROR8__(v401, 8);
  v404 = (((v403 + v402) & 0xC9648A7EC7A0288CLL ^ 0x89600A6885000808) + ((v403 + v402) ^ 0x768DE4165AF8B095) - (((v403 + v402) ^ 0x768DE4165AF8B095) & 0xC9648A7EC7A0288CLL)) ^ 0x5E4893334C0D6163;
  v405 = v404 ^ __ROR8__(v402, 61);
  v406 = (__ROR8__(v404, 8) + v405) ^ 0xDA604B0C03A2BF99;
  v407 = v406 ^ __ROR8__(v405, 61);
  v408 = __ROR8__(v406, 8);
  v409 = (__ROR8__(v394, 8) + v395) ^ 0xDA604B0C03A2BF99;
  v410 = v409 ^ __ROR8__(v395, 61);
  v411 = (__ROR8__(v409, 8) + v410) ^ 0xFA35E2CDCB3E31C7;
  v412 = v411 ^ __ROR8__(v410, 61);
  v413 = __ROR8__(v411, 8);
  v414 = (((2 * (v408 + v407)) | 0x60F1FF15DCAC1DC6) - (v408 + v407) - 0x3078FF8AEE560EE3) ^ 0xCA4D1D4725683F24;
  v415 = v414 ^ __ROR8__(v407, 61);
  v416 = __ROR8__(v414, 8);
  v417 = v383 + v382;
  v418 = ((2 * (v413 + v412)) | 0x1ED95C9067538B6) - (v413 + v412);
  v419 = (((2 * (v416 + v415)) & 0x7D281D371535F568) - (v416 + v415) - 0x3E940E9B8A9AFAB5) ^ 0x139BFD825580D6E5;
  v420 = ((2 * v417) & 0xEFCB827A0852A5D0) - v417;
  v421 = __ROR8__((v418 + 0x7F09351B7CC563A5) ^ 0x5206C602A3DF4FF5, 8) + ((v418 + 0x7F09351B7CC563A5) ^ 0x5206C602A3DF4FF5 ^ __ROR8__(v412, 61));
  v422 = __ROR8__(v419, 8) + (v419 ^ __ROR8__(v415, 61));
  v423 = *(STACK[0x5298] + (LODWORD(STACK[0x5140]) & ((STACK[0x5168] & 0xE4F86050) + (STACK[0x5168] | 0xE4F86051) - 1790715703)));
  v424 = (v423 + STACK[0x5158] - ((2 * (v423 + STACK[0x5158])) & 0xDF38CDDD95B14F12) - 0x1063991135275877) ^ 0x5714673A2B1FC4DALL;
  v425 = v424 ^ __ROR8__(v423, 61);
  v426 = (__ROR8__(v424, 8) + v425) ^ 0x38C8B16AE7056877;
  v427 = v426 ^ __ROR8__(v425, 61);
  v428 = __ROR8__(v426, 8);
  v429 = ((2 * v422) | 0x942EE546AA3DD85CLL) - v422;
  v430 = (v428 + v427 - ((2 * (v428 + v427)) & 0xF1EC1ABC704B91CCLL) + 0x78F60D5E3825C8E6) ^ 0x9D76BC23B4E02DB7 ^ __ROR8__(v427, 61);
  v431 = (__ROR8__((v428 + v427 - ((2 * (v428 + v427)) & 0xF1EC1ABC704B91CCLL) + 0x78F60D5E3825C8E6) ^ 0x9D76BC23B4E02DB7, 8) + v430) ^ v0;
  v432 = v431 ^ __ROR8__(v430, 61);
  v433 = __ROR8__(v431, 8);
  v434 = (v433 + v432 - ((2 * (v433 + v432)) & 0x6CADD855A1CB25D8) + 0x3656EC2AD0E592ECLL) ^ 0xEC36A726D3472D75;
  v435 = v434 ^ __ROR8__(v432, 61);
  v436 = __ROR8__(v434, 8);
  v437 = (((v436 + v435) | 0xC35C33A1EDD50C4FLL) - ((v436 + v435) | 0x3CA3CC5E122AF3B0) + 4369560767883310000) ^ 0x3969D16C26EB3D88;
  v438 = v437 ^ __ROR8__(v435, 61);
  v439 = (__ROR8__(v437, 8) + v438) ^ 0xD2F00CE620E5D3AELL;
  v440 = __ROR8__(v439, 8) + (v439 ^ __ROR8__(v438, 61));
  v441 = STACK[0x51E8];
  v442 = *STACK[0x51E8];
  LODWORD(v438) = (STACK[0x5450] | 0xC65172F7) + 2050767130 + (STACK[0x5450] | 0x39AE8D08) + 1;
  LODWORD(STACK[0x50A8]) = v442;
  v443 = *(STACK[0x5460] + (v438 & v442 & 0xFFFFFFF8));
  v444 = (v443 + STACK[0x54C0]) ^ 0xB88801D4E1C76353;
  v445 = v444 ^ __ROR8__(v443, 61);
  v446 = __ROR8__(v444, 8);
  v447 = (v446 + v445 - ((2 * (v446 + v445)) & 0x94D1510C7F3CAF04) + 0x4A68A8863F9E5782) ^ 0x72A019ECD89B3FF5;
  v448 = v447 ^ __ROR8__(v445, 61);
  v449 = (__ROR8__(v447, 8) + v448) ^ 0xE580B17D8CC5E551;
  v450 = v449 ^ __ROR8__(v448, 61);
  v451 = (__ROR8__(v449, 8) + v450) ^ v0;
  v452 = v451 ^ __ROR8__(v450, 61);
  v453 = (__ROR8__(v451, 8) + v452) ^ 0xDA604B0C03A2BF99;
  v454 = v453 ^ __ROR8__(v452, 61);
  v455 = (__ROR8__(v453, 8) + v454) ^ 0xFA35E2CDCB3E31C7;
  v456 = v455 ^ __ROR8__(v454, 61);
  v457 = (__ROR8__(v455, 8) + v456) ^ 0xD2F00CE620E5D3AELL;
  v458 = __ROR8__(v457, 8) + (v457 ^ __ROR8__(v456, 61));
  LODWORD(v377) = LODWORD(STACK[0x5500]) + 3283;
  v459 = STACK[0x4FC0] + LODWORD(STACK[0x52E8]);
  v460 = *STACK[0x51F0];
  v461 = *(v460 + (((v459 & 0xFFFFFFF8 ^ 0x452910AB) + 890445605 + ((2 * (v459 & 0xFFFFFFF8)) & 0x8A522150) + 2378) & LODWORD(STACK[0x5410]) & 0xFFFFFFF8));
  v462 = __ROR8__(v459 & 0xFFFFFFFFFFFFFFF8, 8);
  LODWORD(v419) = ((((v377 ^ 0x5D4C) - 11381) & ((STACK[0x5358] | 0xE08F5BBD) + (STACK[0x5358] | 0x1F70A442) + 527475779)) + 1523291352) & LODWORD(STACK[0x5410]);
  v463 = (v461 + v462) ^ 0xB88801D4E1C76353;
  v464 = v463 ^ __ROR8__(v461, 61);
  v465 = __ROR8__(v463, 8);
  v466 = (((2 * (v465 + v464)) & 0x43DA9EBBF2FA74AALL) - (v465 + v464) - 0x21ED4F5DF97D3A56) ^ 0xE6DA01C8E187ADDDLL;
  v467 = v466 ^ __ROR8__(v464, 61);
  v468 = __ROR8__(v466, 8);
  v469 = (((2 * (v468 + v467)) & 0x57744835AD2BBCEELL) - (v468 + v467) + 0x5445DBE5296A2188) ^ 0xB1C56A98A5AFC4D9;
  v470 = v469 ^ __ROR8__(v467, 61);
  v471 = __ROR8__(v469, 8);
  v472 = (((2 * (v471 + v470)) & 0x315CF89ECDE77418) - (v471 + v470) - 0x18AE7C4F66F3BA0DLL) ^ 0x6F07EEB4859BC89;
  v473 = v472 ^ __ROR8__(v470, 61);
  v474 = __ROR8__(v472, 8);
  v475 = (((v474 + v473) | 0x51AD07B108274B26) - ((v474 + v473) | 0xAE52F84EF7D8B4D9) - 0x51AD07B108274B27) ^ 0x8BCD4CBD0B85F4BFLL;
  v476 = v475 ^ __ROR8__(v473, 61);
  v477 = (__ROR8__(v475, 8) + v476) ^ 0xFA35E2CDCB3E31C7;
  v478 = v477 ^ __ROR8__(v476, 61);
  v479 = (__ROR8__(v477, 8) + v478) ^ 0xD2F00CE620E5D3AELL;
  v480 = __ROR8__(v479, 8);
  v481 = __ROR8__(v478, 61);
  v482 = ((v480 + (v479 ^ v481)) ^ 0x1FD3A7C4EEE47F0CLL | 0xDF88C3FB9FD028CFLL) - ((v480 + (v479 ^ v481)) ^ 0x1FD3A7C4EEE47F0CLL | 0x20773C04602FD730);
  v483 = *(v460 + ((((v459 & 0x1188D450) + (v459 & 0xEE772BA8 | 0x1188D450) + 1756587210) & *v441) & 0xFFFFFFFFFFFFFFF8));
  v484 = (((v483 + v462) | 0x7134787CC1AFE1DFLL) - ((v483 + v462) | 0x8ECB87833E501E20) - 0x7134787CC1AFE1E0) ^ 0xC9BC79A82068828CLL;
  v485 = v484 ^ __ROR8__(v483, 61);
  v486 = (__ROR8__(v484, 8) + v485) ^ 0x38C8B16AE7056877;
  v487 = v486 ^ __ROR8__(v485, 61);
  v488 = (__ROR8__(v486, 8) + v487) ^ 0xE580B17D8CC5E551;
  v489 = v488 ^ __ROR8__(v487, 61);
  v490 = __ROR8__(v488, 8);
  v491 = (((2 * ((v490 + v489) ^ 0x29AE092794C12CBFLL)) | 0xBEF62C6EF222CBE0) - ((v490 + v489) ^ 0x29AE092794C12CBFLL) + 0x2084E9C886EE9A10) ^ 0x1774E24B3C85B035;
  v492 = v491 ^ __ROR8__(v489, 61);
  v493 = __ROR8__(v491, 8);
  v494 = (((v493 + v492) | 0x3D44776BBA192BE4) - ((v493 + v492) | 0xC2BB889445E6D41BLL) - 0x3D44776BBA192BE5) ^ 0xE7243C67B9BB947DLL;
  v495 = v494 ^ __ROR8__(v492, 61);
  v496 = __ROR8__(v494, 8);
  v497 = (((2 * ((v496 + v495) ^ 0x14C7249F4F135517)) | 0x7883C879BC64C128) - ((v496 + v495) ^ 0x14C7249F4F135517) - 0x3C41E43CDE326094) ^ 0xD2B3226E5A1F0444;
  v498 = v497 ^ __ROR8__(v495, 61);
  v499 = __ROR8__(v497, 8);
  v500 = (((2 * (v499 + v498)) & 0x8A716E9F41561CE0) - (v499 + v498) + 0x3AC748B05F54F18FLL) ^ 0xE83744567FB12221;
  v501 = v500 ^ __ROR8__(v498, 61);
  v502 = __ROR8__(v500, 8);
  LOBYTE(v415) = 8 * (v459 & 7);
  v503 = ((v482 + 0x20773C04602FD730) ^ 0x34286F0EDF4422B8) >> v415;
  v504 = ((((v502 + v501) | 0x3D7B81A8540CA2FALL) - ((v502 + v501) | 0xC2847E57ABF35D05) - 0x3D7B81A8540CA2FBLL) ^ 0xC9088A99FA7CD781) >> v415;
  LODWORD(v415) = *v459;
  HIDWORD(v502) = v503 ^ v415;
  LODWORD(v502) = (v504 ^ v415) << 24;
  v505 = (LODWORD(STACK[0x5500]) - 6185);
  STACK[0x5118] = v460;
  v506 = *(v460 + v419);
  v507 = (v505 - 0x4777FE2B1E38E8D2) ^ (v506 + STACK[0x5200]);
  LODWORD(v504) = (v502 >> 27) - ((2 * (v502 >> 27)) & 0xFFFFFF92) + 73;
  LODWORD(v504) = v504 ^ *(STACK[0x57A0] + (v504 ^ 0x1Bu) + 160706);
  LODWORD(v504) = 117 * (((v504 ^ 0x7E) - 98) ^ ((v504 ^ 0xFFFFFF9D) + 127) ^ ((v504 ^ 0x62) - 126)) + 8;
  LODWORD(v415) = v504 & 0x75 ^ 0x6E;
  v508 = v507 ^ __ROR8__(v506, 61);
  LODWORD(v504) = v504 ^ (2 * ((v504 ^ 0x38) & (2 * ((v504 ^ 0x38) & (2 * ((v504 ^ 0x38) & (2 * ((v504 ^ 0x38) & (2 * ((v504 ^ 0x38) & (2 * ((v504 ^ 0x38) & (2 * v504) & 0x72 ^ v415)) ^ v415)) ^ v415)) ^ v415)) ^ v415)) ^ v415));
  v509 = (__ROR8__(v507, 8) + v508) ^ 0x38C8B16AE7056877;
  v510 = v509 ^ __ROR8__(v508, 61);
  v511 = __ROR8__(v509, 8);
  LODWORD(v415) = LODWORD(STACK[0x53D0]) == 33;
  v512 = (((2 * (v511 + v510)) & 0x77775D581288A77CLL) - (v511 + v510) + 0x44445153F6BBAC41) ^ 0xA1C4E02E7A7E4910;
  v513 = v512 ^ __ROR8__(v510, 61);
  v514 = __ROR8__(v512, 8);
  v515 = (((v514 + v513) | 0xA6C457227BD3DB5DLL) - ((v514 + v513) | 0x593BA8DD842C24A2) + 0x593BA8DD842C24A2) ^ 0x4765AA79AA862227;
  v516 = v515 ^ __ROR8__(v513, 61);
  v517 = __ROR8__(v515, 8);
  v518 = (((v517 + v516) | 0xF809DD8895C9AF1DLL) - ((v517 + v516) | 0x7F622776A3650E2) + 0x7F622776A3650E2) ^ 0x22699684966B1084;
  v519 = v518 ^ __ROR8__(v516, 61);
  v520 = (__ROR8__(v518, 8) + v519) ^ 0xFA35E2CDCB3E31C7;
  v521 = v520 ^ __ROR8__(v519, 61);
  v522 = (__ROR8__(v520, 8) + v521) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(STACK[0x5230]) = LODWORD(STACK[0x55D0]) + 110;
  LODWORD(STACK[0x4F70]) = LODWORD(STACK[0x55A0]) - 67;
  LODWORD(STACK[0x4FF0]) = LODWORD(STACK[0x56F0]) ^ (((STACK[0x5590] - 0x42BF01B27A77F9ECLL) ^ 0x4933F57C2BF8736FLL) >> STACK[0x54B0]);
  LODWORD(STACK[0x54E0]) = LODWORD(STACK[0x5398]) ^ (((STACK[0x5530] - 0xE27756E63853F1ELL) ^ 0x5AB81A0320AB599) >> STACK[0x5390]);
  LODWORD(STACK[0x4F78]) = LODWORD(STACK[0x52F0]) ^ ((STACK[0x5550] ^ 0xF4730B31AE70757BLL) >> STACK[0x52D0]);
  LODWORD(STACK[0x5590]) = LODWORD(STACK[0x54F0]) + 57;
  LODWORD(STACK[0x5560]) = LODWORD(STACK[0x50C8]) ^ ((STACK[0x54D0] ^ 0xF4730B31AE70757BLL) >> STACK[0x50C0]);
  LODWORD(STACK[0x5530]) = LODWORD(STACK[0x4F48]) ^ ((STACK[0x5370] ^ 0xF4730B31AE70757BLL) >> STACK[0x4F10]);
  LODWORD(STACK[0x5120]) = LODWORD(STACK[0x4E80]) ^ ((STACK[0x5368] ^ 0xF4730B31AE70757BLL) >> STACK[0x4EC8]);
  LODWORD(STACK[0x5520]) = LODWORD(STACK[0x4B70]) ^ ((STACK[0x5310] ^ 0xF4730B31AE70757BLL) >> STACK[0x4B68]);
  LODWORD(STACK[0x5248]) = LODWORD(STACK[0x5308]) - 106;
  LODWORD(STACK[0x55D0]) = v353 + 22;
  LODWORD(STACK[0x5550]) = v360 - 47;
  v523 = LODWORD(STACK[0x52A0]);
  LODWORD(STACK[0x4F98]) = v222 + 29;
  LODWORD(STACK[0x5310]) = LODWORD(STACK[0x5408]) ^ ((v389 ^ 0xF4730B31AE70757BLL) >> STACK[0x53A8]);
  LODWORD(STACK[0x5270]) = LODWORD(STACK[0x4AC8]) ^ ((v390 ^ 0xF4730B31AE70757BLL) >> STACK[0x4A68]);
  LODWORD(STACK[0x55A0]) = LODWORD(STACK[0x5790]) ^ (((v420 + 0x81A3EC2FBD6AD17) ^ 0xFC6935F355A6D86CLL) >> STACK[0x5088]);
  LODWORD(STACK[0x54F0]) = LODWORD(STACK[0x5670]) ^ ((v421 ^ 0xF4730B31AE70757BLL) >> STACK[0x53F8]);
  LODWORD(STACK[0x5370]) = LODWORD(STACK[0x5288]) ^ (((v429 - 0x4A1772A3551EEC2ELL) ^ 0xBE647992FB6E9955) >> STACK[0x5260]);
  LODWORD(STACK[0x5320]) = LODWORD(STACK[0x5210]) ^ ((v440 ^ 0xF4730B31AE70757BLL) >> STACK[0x5178]);
  LODWORD(STACK[0x5380]) = LODWORD(STACK[0x5620]) ^ ((v458 ^ 0xF4730B31AE70757BLL) >> STACK[0x5600]);
  LODWORD(STACK[0x54D0]) = LODWORD(STACK[0x51A0]) ^ (((__ROR8__(v522, 8) + (v522 ^ __ROR8__(v521, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5190]);
  v524 = *(STACK[0x57D8] + 8 * (v377 ^ ((2 * v415) | (4 * v415))));
  STACK[0x5308] = v504 ^ 0x6E;
  LODWORD(STACK[0x52E8]) = LODWORD(STACK[0x5008]) + 33;
  STACK[0x52F8] = 33;
  LODWORD(STACK[0x51F8]) = 74;
  LODWORD(STACK[0x5368]) = 66;
  return v524(v523, 354021940);
}