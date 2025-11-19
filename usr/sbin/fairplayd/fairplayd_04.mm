uint64_t sub_10016C4A0(__n128 a1)
{
  a1.n128_u16[0] = 24415;
  a1.n128_u8[2] = 95;
  a1.n128_u8[3] = 95;
  a1.n128_u8[4] = 95;
  a1.n128_u8[5] = 95;
  a1.n128_u8[6] = 95;
  a1.n128_u8[7] = 95;
  return (*(v2 + 8 * ((v1 | 0x4A0A) + 104)))(a1);
}

uint64_t sub_10016C4F8@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v9 = a1 + a3 + (v7 | a2);
  *(a5 + v9) = *(v5 + v9);
  return (*(v8 + 8 * (((v9 == 0) * a4) ^ v6)))();
}

uint64_t sub_10016C5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = (v8 + 1704857107) & 0x9A61EFBD;
  v13 = (v9 - 358478169);
  v14 = (2 * v13) & 0x114DD6A1ELL;
  v15 = v13 - v14 + (v8 + 35587) - 0x6CAAAA3E75920433;
  v16 = ((2 * v7) & 0xDFAFFFF7977FB91CLL) - 0x6FD7FFFBC2ADEFA1 + (v7 ^ 0x6FD7FFFBCBBFF09ELL ^ v12);
  v17 = *(v11 - 184);
  v18 = v16 < 0x911ECED;
  v19 = v16 > v17 + 152169709;
  if (v17 > 0xFFFFFFFFF6EE1312 != v18)
  {
    v19 = v18;
  }

  v20 = *(v10 + 8 * ((62 * v19) ^ (v8 - 3369)));
  return v20(v14, v15, v12, v20, a5, a6, a7);
}

uint64_t sub_10016C798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  v46 = ((a45 & 0x3F ^ 0xF3B45B0) + 406788154) ^ ((a45 & 0x3F ^ 0x197EC8AB) + 242914595) ^ ((a22 ^ a45 & 0x3F) + 21090451);
  *(&a36 + (v46 - 386162058)) = -33;
  v47.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v47.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  return (*(v45 + 8 * ((17716 * ((v46 - 386162114) < 0xFFFFFFC8)) ^ a21)))(a1, &a36, v47);
}

uint64_t sub_10016C848(int8x16_t a1, int8x8_t a2, int8x8_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  v16.val[0].i64[0] = (v12 + v10 - 1) & 0xF;
  v16.val[0].i64[1] = (v12 + v10 + 14) & 0xF;
  v16.val[1].i64[0] = (v12 + v10 + 13) & 0xF;
  v16.val[1].i64[1] = (v12 + v10 + 12) & 0xF;
  v16.val[2].i64[0] = (a6 + v10 + a8) & 0xF;
  v16.val[2].i64[1] = (v12 + v10 + 10) & 0xF;
  v16.val[3].i64[0] = (v12 + v10 + 9) & 0xF;
  v16.val[3].i64[1] = (v12 + v10) & 0xF ^ 8;
  *(a7 + v10) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a7 + v10), *(v11 + v16.val[0].i64[0] - 7)), veor_s8(*(v16.val[0].i64[0] + v9 - 5), *(v16.val[0].i64[0] + v8 - 6)))), a3), vmul_s8(*&vqtbl4q_s8(v16, a1), a2)));
  return (*(v14 + 8 * ((7 * (a5 == v10)) ^ v13)))();
}

uint64_t sub_10016C9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  if (STACK[0x510])
  {
    v63 = v60 == 0;
  }

  else
  {
    v63 = 1;
  }

  v64 = v63;
  return (*(v62 + 8 * ((v64 * (v61 ^ 0x9B24 ^ (v61 - 2125997204) & 0x7EB7BF87)) ^ v61)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_10016CA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X6>, uint64_t a4@<X7>, int a5@<W8>)
{
  v6 = (((2 * (v5 - 0x2D04D9D0F11CCE2CLL)) & 0x66FF77E375CF63ECLL) + ((v5 - 0x2D04D9D0F11CCE2CLL) ^ 0xF37FBBF1BAE7B1F6) + a3);
  v7 = (v6[0xC80440E45184E0ALL] << 24) | (v6[0xC80440E45184E0BLL] << 16) | (v6[0xC80440E45184E0CLL] << 8);
  LODWORD(v6) = v6[0xC80440E45184E0DLL] - ((2 * v6[0xC80440E45184E0DLL]) & 0xB6) + 1803538779;
  LODWORD(v6) = ((v7 - ((2 * v7) & 0x3ADD5E00) - 1653690450) ^ 0x95D1C5B1) & (v6 ^ 0x94802EA4) ^ v6 & 0x210095E0;
  v8 = (((v6 ^ 0x12DF520FAD05BF76) - 0x12DF520F6D6F8338) ^ ((v6 ^ 0x386770B452169A1ALL) - 0x386770B4927CA654) ^ ((v6 ^ 0x2AB822BBD6ACDE33) - 0x2AB822BB16C6E27DLL)) + v5 - 0x2D04D9CFFB091A05;
  v9 = v8 < 0xC3DED12;
  v10 = v8 > a2 - 0x7F67FFC7DFC10ACDLL;
  if ((a2 - 0x7F67FFC7DFC10ACDLL) < 0xC3DED12 != v9)
  {
    v10 = v9;
  }

  v11 = *(a4 + 8 * ((31 * !v10) ^ a5));
  LODWORD(STACK[0x290]) = 371891407;
  return v11(a1, a3);
}

uint64_t sub_10016CD44(char a1, int a2, char a3, char a4, char a5, char a6, char a7, char a8)
{
  v18 = v10 - 1;
  *(v17 - 208) = v18;
  *(v8 + v18) = (a3 ^ ((a3 ^ a4) + a6) ^ ((a3 ^ v12) + v13) ^ ((a3 ^ v14) + 3) ^ ((a5 ^ a1 ^ a3 ^ a7) + a8) ^ v15) * (a3 - 15);
  return (*(v11 + 8 * (((v18 > v9) * v16) ^ a2)))();
}

uint64_t sub_10016CDFC@<X0>(uint64_t a1@<X3>, uint64_t a2@<X7>, unsigned int a3@<W8>)
{
  v22 = v7 + v8 + v10 + v21;
  v23 = (v9 & 0xBDAB6F57AD75BD5DLL) + (v5 & 0x8080000085108540) + (((v9 & a1) + 0x44692150628C42A4) & a1) + v14;
  v24 = *(v23 + a2);
  v25 = 85 * v10 + 101 * v7 + 77 * v21 + (v4 + 118) * v8;
  v26 = v24 & v11 ^ v12;
  v27 = v24 ^ v13;
  v28 = (2 * v27) & 4 | (8 * (((v27 & (2 * (v27 & (2 * (v27 & (2 * (v27 & (2 * (v27 & 0xE ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26) >> 2) & 0x1F));
  v29 = (v25 - 70 * v22 + 72) ^ v24 ^ (((((v28 | 2u) & (v24 ^ v13) ^ v26) * v15) >> 13) * v16 + 2 * (((v28 | 2) & (v24 ^ v13) ^ v26) - ((((v28 | 2u) & (v24 ^ v13) ^ v26) * v15) >> 13) * v17));
  *(v23 + a2) = (((v29 ^ v18) - 31) ^ ((v29 ^ v19) + 86) ^ ((v29 ^ 0xC1) - 54)) - 55;
  return (*(v3 + 8 * (((v6 == 0) * v20) ^ a3)))();
}

uint64_t sub_10016D180@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v4 = *v2;
  *a1 = *v2 + 6;
  *(a1 + 8) = 0xE9D5C539E9D5C539;
  *(a1 + 16) = 0xA52FF066E9D5C711;
  *(a1 + 24) = -371865839;
  *v4 = a1;
  v4[1] = 0;
  return (*(v3 + 8 * a2))();
}

uint64_t sub_10016D1C8(double a1, double a2, int8x16_t a3)
{
  v11 = v4 + v3;
  v12 = veorq_s8(*(v5 + v3 + 16), a3);
  *(v11 + 24) = veorq_s8(*(v5 + v3), a3);
  *(v11 + 40) = v12;
  return (*(v6 + 8 * (((v3 + 32 == (v10 ^ v9) + v8) * v7) ^ v10)))();
}

uint64_t sub_10016D330(int a1, uint64_t a2)
{
  v6 = ((a1 << ((v4 ^ 0x16) * v2 + 30)) & 0x56) + (a1 ^ 0xFFEFDFEB);
  v7 = ((a1 << ((v4 ^ 0x16) * v2 + 30)) & 0x78) + (a1 ^ 0xBFFFE8BC);
  v8 = *(a2 + v7 + 1073747780) ^ 0x5F;
  v9 = ((*(a2 + v7 + 1073747783) << 24) | ((*(a2 + v7 + 1073747782) ^ 0x5F) << 16) | v8 | ((*(a2 + v7 + 1073747781) ^ 0x5F) << 8)) ^ 0x5F000000;
  v10 = v9 - 2 * (v9 & 0x69D5C715 ^ v8 & 4) - 371865839;
  *(v3 + 4 * ((((((v6 + 2130161656) ^ 0x1E5C21CB) - 1622912552) ^ (v6 + 2130161656) ^ (((v6 + 2130161656) ^ 0xAF9B9A3F) + 780397092) ^ (((v6 + 2130161656) ^ 0x30FF4B48) - 1310246059) ^ (((v6 + 2130161656) ^ 0xFFDF7F5C) + 2126974788)) >> 2) ^ 0x1FB9E3F8)) = (((v10 ^ 0x6B5DB4E6) - 1801303270) ^ ((v10 ^ 0xDBE73240) + 605605312) ^ ((v10 ^ 0x596F41B7) - 1500463543)) + 1666443847;
  return (*(v5 + 8 * ((41271 * (v6 + 1056793 < 0x40)) ^ v4)))();
}

uint64_t sub_10016D5FC()
{
  v6 = (((v3 ^ 0x4A0C4D97) - 1242330349 + v0) ^ ((v3 ^ 0x97179CBF) + 1760060225) ^ (((v0 + 885911267) ^ v3) - 885921337)) + 56360487;
  v7 = (v6 ^ 0xC479CAEC) & (2 * (v6 & 0xE679C8ED)) ^ v6 & 0xE679C8ED;
  v8 = ((2 * (v6 ^ 0x40B8DAAE)) ^ 0x4D822486) & (v6 ^ 0x40B8DAAE) ^ (2 * (v6 ^ 0x40B8DAAE)) & 0xA6C11242;
  v9 = v8 ^ 0xA2411241;
  v10 = (v8 ^ 0x800000) & (4 * v7) ^ v7;
  v11 = ((4 * v9) ^ 0x9B04490C) & v9 ^ (4 * v9) & 0xA6C11240;
  v12 = (v11 ^ 0x82000000) & (16 * v10) ^ v10;
  v13 = ((16 * (v11 ^ 0x24C11243)) ^ 0x6C112430) & (v11 ^ 0x24C11243) ^ (16 * (v11 ^ 0x24C11243)) & 0xA6C11240;
  v14 = v12 ^ 0xA6C11243 ^ (v13 ^ 0x24010000) & (v12 << 8);
  v17 = ((v6 ^ (2 * ((v14 << 16) & 0x26C10000 ^ v14 ^ ((v14 << 16) ^ 0x12430000) & (((v13 ^ 0x82C01243) << 8) & 0x26C10000 ^ 0x26C10000 ^ (((v13 ^ 0x82C01243) << 8) ^ 0x41120000) & (v13 ^ 0x82C01243))))) & 0xFFFFFFFC ^ v5) != 0x46AC2B79 && v4 != v3 || v1 == 416076653;
  return (*(v2 + 8 * (((8 * v17) | (32 * v17)) ^ v0)))();
}

uint64_t sub_10016D8EC(int a1, int8x16_t a2, int8x8_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14.val[0].i64[0] = (v9 + v10 - 1) & 0xF;
  v14.val[0].i64[1] = (v9 + v10 + 14) & 0xF;
  v14.val[1].i64[0] = (v9 + v10 + (v11 ^ 0xFD)) & 0xF;
  v14.val[1].i64[1] = (v9 + v10 + 12) & 0xF;
  v14.val[2].i64[0] = (v9 + v10 + 11) & 0xF;
  v14.val[2].i64[1] = (v9 + v10 + 10) & 0xF;
  v14.val[3].i64[0] = (v9 + v10 + 9) & 0xF;
  v14.val[3].i64[1] = (v9 + v10) & 0xF ^ 8;
  *(a6 + v10) = veor_s8(veor_s8(veor_s8(*(v7 + v14.val[0].i64[0] - 7), *(a6 + v10)), veor_s8(*(v14.val[0].i64[0] + v6 - 6), *(v8 + v14.val[0].i64[0] - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v14, a2), a3)));
  return (*(v12 + 8 * ((31 * (a5 == v10)) ^ a1)))();
}

uint64_t sub_10016DA00@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(v16 - 120) = v15 - 322688607;
  *(v16 - 116) = v15 - 322688612;
  v17 = a12;
  v18 = *(a12 + ((13 * (v14 ^ 0xA1)) ^ 0x57u ^ *(a4 + (v15 - 322688607))));
  v19 = *(a11 + (*(a4 + (v15 - 322688612)) ^ 0x34)) << ((v14 - 111) ^ 0x9F);
  v20 = *(a4 + (v15 - 322688613));
  *(v16 - 124) = v15 - 322688620;
  v21 = (2 * ((5 - v15) ^ v15 ^ ((v15 ^ 0xD7EB2EE) + 1639619453) ^ ((v15 ^ 6) + 5) ^ ((v15 ^ 2) + 1))) & 8;
  v22 = (v15 ^ 0xE8E48512) & (2 * (v15 & 0xECC42993)) ^ v15 & 0xECC42993;
  v23 = ((2 * (v15 ^ 0x29E49614)) ^ 0x8A417F0E) & (v15 ^ 0x29E49614) ^ (2 * (v15 ^ 0x29E49614)) & 0xC520BF86;
  v24 = v23 ^ 0x45208081;
  v25 = (v23 ^ 0x80002E04) & (4 * v22) ^ v22;
  v26 = ((4 * v24) ^ 0x1482FE1C) & v24 ^ (4 * v24) & 0xC520BF84;
  v27 = (v26 ^ 0x400BE00) & (16 * v25) ^ v25;
  v28 = ((16 * (v26 ^ 0xC1200183)) ^ 0x520BF870) & (v26 ^ 0xC1200183) ^ (16 * (v26 ^ 0xC1200183)) & 0xC520BF80;
  v29 = v27 ^ 0xC520BF87 ^ (v28 ^ 0x4000B800) & (v27 << 8);
  v30 = v15 ^ (2 * ((v29 << 16) & 0x45200000 ^ v29 ^ ((v29 << 16) ^ 0x3F870000) & (((v28 ^ 0x85200787) << 8) & 0x45200000 ^ 0x45000000 ^ (((v28 ^ 0x85200787) << 8) ^ 0x20BF0000) & (v28 ^ 0x85200787))));
  v31 = ((*(a9 + ((v20 - 2 * (v20 & 0x9Cu) + 156) ^ 0x33)) << 24) ^ 0x11DDD8F7) & (v19 ^ 0xFF3FDFF7);
  v32 = *(a11 + (*(a4 + (v15 - 322688616)) ^ 0xB6));
  v33 = (((*(a9 + (*(a4 + ((v21 + 1180535419) ^ (v21 - 1180865923) ^ ((v21 ^ 0xDBF85149) - 307940292)) - 405483766 + (((v30 ^ 0xC6F5A65B) + 1270692793) ^ ((v30 ^ 0x7E117401) - 212211229) ^ ((v30 ^ 0xD46184C3) + 1495865633))) ^ 0x36)) ^ 0x58) << 24) ^ 0xF3FC4EA7) & ((v32 << 16) ^ 0xFF434EB7) & 0xFFFCFFFF | ((v32 & 3) << 16);
  v34 = *(a10 + (*(a4 + (v15 - 322688614)) ^ 0xC3));
  v35 = *(a4 + (v15 - 322688618));
  v36 = *(a10 + ((((v35 - (v35 ^ 0xDF)) ^ 0xFFFFFFFE) + v35) ^ 0xEFLL));
  v37 = (v36 ^ 0xFFFFFF7F) & ((*(a11 + (*(a4 + (v15 - 322688620)) ^ 0xEBLL)) << 16) ^ 0x3D1683D1);
  v38 = v36 & 0x2E;
  v39 = ((*(v17 + (*(a4 + (v15 - 322688615)) ^ 0x2ALL)) >> 1) & 0x3D ^ *(v17 + (*(a4 + (v15 - 322688615)) ^ 0x2ALL))) << 8;
  v40 = *(a11 + (*(a4 + (v15 - 322688608)) ^ 0x7FLL)) << 16;
  v41 = (v40 | 0xFF3FFFFF) & ((((v18 >> 1) & 0x3D ^ v18) << 8) ^ 0x83402DB3) | v40 & 0xFFBFFFFF;
  v42 = *(a4 + (v15 - 322688606));
  v43 = (v41 ^ 0x62DD0D47) & (*(a10 + (v42 ^ 0xAB)) ^ 0xFFFFFF79) | *(a10 + (v42 ^ 0xAB)) & 0xB;
  v44 = *(a10 + (*(a4 + (v15 - 322688610)) ^ 0x35));
  LOBYTE(v42) = *(a12 + (*(a4 + (v15 - 322688619)) ^ 0xB3));
  v45 = (v44 ^ 0xFFFFFF7B) & ((((((*(v17 + (*(a4 + (v15 - 322688611)) ^ 3)) >> 1) & 0x3D ^ *(v17 + (*(a4 + (v15 - 322688611)) ^ 3))) << 8) ^ 0x537271FD) & ((v31 | v19 & 0x220000) ^ 0x3A082708) | v31 & 0xAC8D0002) ^ 0xDA280790);
  v46 = ((((v42 >> 1) & 0x3D ^ v42) << 8) ^ 0xFFFF1FFF) & ((v37 | v38) ^ 0x12E3B127) | (((v42 >> 1) & 0x3D ^ v42) << 8) & 0xCD00;
  v47 = ((v46 ^ 0xD0284401) & ((*(a9 + (*(a4 + (v15 - 322688621)) ^ 0xDDLL)) << 24) ^ 0x6AE9C491) | v46 & 0x163B6E) ^ a3;
  v48 = v44 & 0x90 ^ a1 ^ v45;
  v49 = v43 & 0x85EF269D ^ a2 ^ ((*(a9 + (*(a4 + (v15 - 322688609)) ^ 0xF2)) << 24) ^ 0xBC10D962) & (v43 ^ 0x1EE2C616);
  v50 = *(&off_1010A0B50 + (v14 ^ 0x73FF)) - 331054935;
  v51 = v13 ^ v39 & 0x2B00 ^ 0x75A460B3 ^ (v39 ^ 0xFFFFDEFF) & ((v34 & 0x4A | (v33 ^ 0xCA732912) & (v34 ^ 0xFFFFFF3B)) ^ 0xF9ABB3D7);
  v52 = *(&off_1010A0B50 + (v14 ^ 0x7E90)) - 1343386242;
  v53 = *(&off_1010A0B50 + (v14 ^ 0x7F5A)) - 1911128474;
  v54 = *&v53[4 * (v43 & 0x9D ^ a2 ^ (v43 ^ 0x16) & 0x62 ^ 0x53)];
  v55 = *(&off_1010A0B50 + (v14 ^ 0x7DC6)) - 775644006;
  v56 = *&v50[4 * (HIBYTE(v47) ^ 0xE2)] ^ __ROR4__(*&v52[4 * BYTE2(v51)], 23) ^ *&v55[4 * (BYTE1(v48) ^ 0x11)] ^ v54 ^ 0x77A42159 ^ (8 * ((((4 * (v54 ^ 0x77A42159)) & 0x3B00014 ^ v54 & 0x3B00016) & 0x200002 | 0x80288A1) ^ v54 & 0x1C4FFFE9 ^ ((4 * (v54 ^ 0x77A42159)) & 0x3B00014 ^ v54 & 0x3B00016 ^ 0x1FCFFFE8) & ((4 * (v54 ^ 0x77A42159)) & 0x1C4FFFE8 ^ 0x179957FC)));
  LODWORD(v42) = *&v53[4 * (v47 ^ 0xC2)] ^ 0x10F3EC00;
  v57 = *&v50[4 * (HIBYTE(v51) ^ 0xDB)] ^ __ROR4__(*&v52[4 * (BYTE2(v48) ^ 5)], 23) ^ *&v55[4 * (BYTE1(v49) ^ 0xE8)] ^ v42 ^ (8 * v42) ^ (32 * v42);
  LODWORD(v42) = *&v52[4 * (BYTE2(v49) ^ 0x86)];
  v58 = *&v53[4 * v51] ^ 0xD137DDA6;
  LODWORD(v17) = (HIBYTE(v48) | (v42 << 9)) ^ *&v50[4 * (HIBYTE(v48) ^ 0xC7)] ^ (v42 >> 23) ^ *&v55[4 * (BYTE1(v47) ^ 0x2A)] ^ v58 ^ (8 * v58) ^ (32 * v58);
  v59 = __ROR4__(*&v52[4 * (BYTE2(v47) ^ 0xAC)], 23);
  LODWORD(v42) = *&v53[4 * (v48 ^ 0x58)] ^ 0x8A41B3A4;
  v60 = HIBYTE(v47) ^ 0x885DA795 ^ v56;
  v61 = HIBYTE(v60);
  v62 = *&v50[4 * (HIBYTE(v49) ^ 0xD2)] ^ HIBYTE(v49) ^ v59 ^ v42 ^ *&v55[4 * BYTE1(v51)] ^ (8 * v42) ^ (32 * v42);
  LOBYTE(v58) = v17 ^ 0xA5;
  v63 = *&v53[4 * ((v50[4 * (HIBYTE(v49) ^ 0xD2)] ^ HIBYTE(v49) ^ v59 ^ v42 ^ v55[4 * BYTE1(v51)] ^ (8 * v42) ^ (32 * v42)) ^ 0xF4)] ^ 0xC69D03BB;
  v64 = *&v50[4 * (HIBYTE(v60) ^ 0xDB)] ^ __ROR4__(*&v52[4 * (BYTE2(v57) ^ 0x22)], 23) ^ *&v55[4 * ((v17 ^ 0x2BA5) >> 8)] ^ v63 ^ (8 * v63) ^ (32 * v63);
  LODWORD(v42) = HIBYTE(v57);
  v65 = *&v53[4 * v60] ^ 0x87B051AE;
  v66 = *&v50[4 * (HIBYTE(v57) ^ 0xDE)] ^ __ROR4__(*&v52[4 * (BYTE2(v17) ^ 0xD1)], 23) ^ *&v55[4 * (BYTE1(v62) ^ 0x1F)] ^ v65 ^ (8 * v65) ^ (32 * v65);
  v67 = (v17 ^ 0xA4242BA5) >> 24;
  v68 = *&v53[4 * ((HIBYTE(v51) - ((v51 >> 23) & 0x1C) + 1182891534) ^ 0x46817EB8 ^ v57)] ^ 0x7DAB0C11;
  LODWORD(v17) = *&v50[4 * (v67 ^ 0xDB)] ^ __ROR4__(*&v52[4 * (BYTE2(v62) ^ 0xC4)], 23) ^ *&v55[4 * (BYTE1(v56) ^ 0x4D)] ^ v68 ^ (8 * v68) ^ (32 * v68);
  v69 = *&v53[4 * v58] ^ 0x2DB9825F;
  v70 = *&v50[4 * (HIBYTE(v62) ^ 9)] ^ HIBYTE(v62) ^ (*&v52[4 * BYTE2(v60)] >> 23) ^ (*&v52[4 * BYTE2(v60)] << 9) ^ *&v55[4 * (BYTE1(v57) ^ 0x8B)] ^ v69 ^ (8 * v69);
  v71 = HIBYTE(v64);
  v72 = v70 ^ (32 * v69);
  v73 = *&v53[4 * (v72 ^ 0x7C)] ^ 0xB4239D84;
  v74 = *&v50[4 * (HIBYTE(v64) ^ 0xA5)] ^ __ROR4__(*&v52[4 * (BYTE2(v66) ^ 0x18)], 23) ^ *&v55[4 * (BYTE1(v17) ^ 0x46)] ^ v73 ^ (8 * v73) ^ (32 * v73);
  v75 = v17 ^ v67;
  v76 = *&v53[4 * ((v61 - ((v56 >> 23) & 6) - 364779517) ^ 0xEA41E8B0 ^ v64)] ^ 0x159ED4B5;
  v77 = *&v50[4 * (HIBYTE(v66) ^ 0x30)] ^ __ROR4__(*&v52[4 * (BYTE2(v17) ^ 0xB1)], 23) ^ *&v55[4 * (BYTE1(v72) ^ 0x8D)] ^ v76 ^ (8 * v76) ^ (32 * v76);
  v78 = *&v53[4 * (((v42 ^ 0x72) - ((2 * (v42 ^ 0x72)) & 0x124) - 1154171502) ^ 0xBB34BD04 ^ v66)] ^ 0xEC967D94;
  v79 = *&v50[4 * (HIBYTE(v75) ^ 0xF7)] ^ HIBYTE(v75) ^ __ROR4__(*&v52[4 * (BYTE2(v72) ^ 0x78)], 23) ^ *&v55[4 * (BYTE1(v64) ^ 0xE9)] ^ v78 ^ (8 * v78) ^ (32 * v78);
  v80 = __ROR4__(__ROR4__(*&v53[4 * (v75 ^ 0x50)], 13) ^ 0xBA8A57B1, 19);
  LODWORD(v42) = HIBYTE(v66) ^ 0x66CE0AFB ^ v77;
  v81 = *&v50[4 * (HIBYTE(v72) ^ 0x13)] ^ HIBYTE(v72) ^ __ROR4__(*&v52[4 * (BYTE2(v64) ^ 0x66)], 23) ^ *&v55[4 * (BYTE1(v66) ^ 0x55)] ^ v80 ^ 0x20F25BAB ^ (8 * (v80 ^ 0x20F25BAB)) ^ (32 * (v80 ^ 0x20F25BAB));
  v82 = *&v52[4 * BYTE2(v42)];
  HIDWORD(v84) = v82 ^ 0x29744B;
  LODWORD(v84) = v82 ^ 0x22222222;
  v83 = v84 >> 23;
  v85 = *&v50[4 * (HIBYTE(v74) ^ 0xF5)] ^ HIBYTE(v74) ^ 0x851C3C21;
  v86 = v83 + v85 + ((v85 - (v85 ^ v83)) ^ -v83) - 2 * (((v85 - (v85 ^ v83)) ^ -v83) & v83);
  v87 = *&v53[4 * (v81 ^ 0xF)] ^ 0x5D29A67D;
  v88 = v87 ^ *&v55[4 * (BYTE1(v79) ^ 0x37)] ^ (8 * v87) ^ (32 * v87) ^ v86;
  v89 = (v79 ^ 0xBE0DD25u) >> 24;
  v90 = *&v53[4 * v42] ^ 0x42B05DDE;
  v91 = *&v55[4 * (BYTE1(v74) ^ 0xC1)] ^ __ROR4__(*&v52[4 * (BYTE2(v81) ^ 0xC8)], 23) ^ *&v50[4 * (v89 ^ 0xDB)] ^ v90 ^ (8 * v90) ^ (32 * v90);
  v92 = *&v53[4 * (v79 ^ 0x25)] ^ 0x672E73BF;
  v93 = ((v81 ^ 0x203D870Fu) >> 24) ^ __ROR4__(*&v52[4 * (BYTE2(v74) ^ 0xB0)], 23) ^ *&v55[4 * (BYTE1(v77) ^ 0xE0)] ^ v92 ^ *&v50[4 * (((v81 ^ 0x203D870Fu) >> 24) ^ 0xDB)] ^ (8 * v92) ^ (32 * v92);
  v94 = *&v53[4 * (v71 ^ 0xF1 ^ v74)] ^ 0x8D53E107;
  v95 = BYTE3(v42) ^ __ROR4__(*&v52[4 * (BYTE2(v79) ^ 0x15)], 23) ^ *&v50[4 * (BYTE3(v42) ^ 0xDB)] ^ *&v55[4 * (BYTE1(v81) ^ 0x6D)] ^ v94 ^ (8 * v94) ^ (32 * v94) ^ 0x87E2E39;
  v96 = *&v52[4 * BYTE2(v95)];
  v97 = HIBYTE(v88) ^ 0x851C3C94 ^ *&v50[4 * (HIBYTE(v88) ^ 0x40)];
  HIDWORD(v84) = v96 ^ 0x29744B;
  LODWORD(v84) = v96 ^ 0x22222222;
  v98 = *&v53[4 * (v93 ^ 0x51)] ^ 0xD91AB498;
  v99 = v98 ^ *&v55[4 * (BYTE1(v91) ^ 0x40)] ^ (8 * v98) ^ (32 * v98) ^ ((v84 >> 23) + v97 - 2 * ((v84 >> 23) & v97));
  v100 = *&v53[4 * (v88 ^ 0xCC)] ^ 0x63B8EC47;
  v101 = HIBYTE(v95) ^ __ROR4__(*&v52[4 * (BYTE2(v91) ^ 0xA8)], 23) ^ *&v55[4 * (BYTE1(v93) ^ 0x93)] ^ v100 ^ *&v50[4 * (-HIBYTE(v95) ^ (219 - (HIBYTE(v95) ^ 0xDB)) ^ (HIBYTE(v95) - ((v95 >> 23) & 0x18) - 1644171508) ^ 0x9DFFEF0C) + 876] ^ (8 * v100) ^ (32 * v100);
  v102 = *&v53[4 * v95] ^ 0x7F59862;
  LODWORD(v42) = *&v50[4 * (HIBYTE(v91) ^ 0xFA)] ^ __ROR4__(*&v52[4 * (BYTE2(v93) ^ 0xC0)], 23) ^ *&v55[4 * (BYTE1(v88) ^ 0xAB)] ^ v102 ^ (8 * v102) ^ (32 * v102);
  v103 = HIBYTE(v93) ^ __ROR4__(*&v52[4 * (BYTE2(v88) ^ 0xB6)], 23) ^ *&v50[4 * (HIBYTE(v93) ^ 0x6E)] ^ *&v55[4 * BYTE1(v95)];
  v104 = *&v53[4 * (v89 ^ 0x4C ^ v91)] ^ 0x5B284986;
  v105 = v104 ^ (32 * v104) ^ (8 * v104) ^ ((((v103 ^ 0xFB50D135) - (v103 ^ 0x12C3FF64)) ^ 0xFFFFFFFE) + (v103 ^ 0xFB50D135));
  v106 = *&v50[4 * (HIBYTE(v99) ^ 0xB1)] ^ __ROR4__(*&v52[4 * (BYTE2(v101) ^ 9)], 23);
  v107 = (v106 ^ HIBYTE(v99)) << 15;
  v106 >>= 17;
  v108 = (v107 & 0x4AD78000 ^ 0xD2C6DE4B) & (v106 & 0x20FC ^ 0xDFDFFEB3) | v106 & 0x20B4;
  v109 = v108 & 0x484300B8 ^ __ROR4__(*&v55[4 * (BYTE1(v42) ^ 0x72)], 17) ^ (((v107 & 0xB4200000 ^ 0xEA35FFA3) & (v106 & 0x5F03 ^ 0xFE35FFA0) | v107 & 0x1080000) ^ 0x4D8948E6) & (v108 ^ 0x2D6B8114) ^ 0x11189D1;
  v110 = *&v53[4 * (v105 ^ 0xB1)] ^ 0x9589605E;
  v111 = (v101 ^ 0xB7FC3ADD) >> 24;
  v112 = *&v50[4 * (v111 ^ 0xDB)];
  v113 = v110 ^ (32 * v110) ^ (8 * v110) ^ __ROR4__(v109, 15);
  v114 = (v112 & 0x213B2A77 ^ v111 & 0x77777777 ^ 0xDEC6D7F8) & (v112 & 0xDEC4D588 ^ (v111 & 0xACE16C88 | 0x531E9371)) | (v112 & 0x213B2A77 ^ v111 & 0x77777777) & 0x20212806;
  v115 = *&v53[4 * (v99 ^ 0x4E)] ^ 0xC858C856;
  v116 = *&v55[4 * (BYTE1(v105) ^ 0x5E)] ^ __ROR4__(*&v52[4 * (BYTE2(v42) ^ 0xB0)], 23) ^ v115 ^ (8 * v115) ^ (32 * v115) ^ v114;
  v117 = *&v53[4 * (v101 ^ 0xDD)];
  v118 = BYTE3(v42);
  v119 = ((4 * (v117 & 0xF6C11313)) ^ 0xADFFB7BF) + ((2 * (v117 & 0xF6C11313)) ^ 0x29002420) + (((v117 ^ 0x45ADB5E3) - 1169012195) ^ ((v117 ^ 0x11587E67) - 291012199) ^ ((v117 ^ 0x4949B5F0) - 1229567472)) + 343773576;
  v120 = *&v50[4 * (BYTE3(v42) ^ 0xF7)] ^ __ROR4__(*&v52[4 * (BYTE2(v105) ^ 9)], 23) ^ *&v55[4 * (BYTE1(v99) ^ 0xA3)] ^ v119 ^ (8 * v119) ^ (32 * v119);
  v121 = *&v53[4 * (((HIBYTE(v91) ^ 0x21) - ((v91 >> 23) & 8) + 1854512132) ^ 0x6E899C2F ^ v42)] ^ 0x50448378;
  v122 = *&v50[4 * (HIBYTE(v105) ^ 0xBE)] ^ __ROR4__(*&v52[4 * (BYTE2(v99) ^ 0x68)], 23) ^ v121 ^ __ROR4__(__ROR4__(*&v55[4 * (BYTE1(v101) ^ 0xD0)], 20) ^ 0xB6570B9C, 12) ^ (8 * v121) ^ (32 * v121);
  v123 = HIBYTE(v105) ^ 0x92DD4CA5 ^ v122;
  v124 = *&v53[4 * (HIBYTE(v105) ^ 0xA5 ^ v122)] ^ 0x28D8717E;
  v125 = *&v50[4 * (HIBYTE(v113) ^ 0x2F)] ^ __ROR4__(*&v52[4 * (BYTE2(v116) ^ 0x94)], 23) ^ *&v55[4 * (BYTE1(v120) ^ 0xB1)] ^ v124 ^ (8 * v124) ^ (32 * v124);
  LODWORD(v42) = *&v53[4 * (v113 ^ 0x47)];
  v126 = *&v52[4 * (BYTE2(v120) ^ 0xD4)];
  v127 = HIBYTE(v116) ^ *&v50[4 * (HIBYTE(v116) ^ 0x83)] ^ (v126 << 9) ^ (v126 >> 23) ^ *&v55[4 * (BYTE1(v122) ^ 0xA6)] ^ 0x12C3FF89;
  v128 = v42 ^ (32 * (v42 ^ 0x952298A8)) ^ (8 * (v42 ^ 0x952298A8)) ^ 0xD27C7AFF;
  v129 = v128 + v127 - 2 * (v128 & v127);
  v130 = *&v53[4 * (v116 ^ 0x51)] ^ 0xD54A3796;
  v131 = HIBYTE(v120) ^ *&v50[4 * (HIBYTE(v120) ^ 0x11)] ^ __ROR4__(*&v52[4 * BYTE2(v123)], 23) ^ *&v55[4 * (BYTE1(v113) ^ 0x4C)] ^ *&v53[4 * (v116 ^ 0x51)] ^ 0x10D71009;
  v132 = (32 * v130) ^ (8 * v130) ^ ((v131 & 0x80E3ACF1 ^ 0xDEB80127) & (v131 & 0x7F1C530E ^ 0xB6F3EDF3) | v131 & 0x21045208);
  v133 = *&v53[4 * (v118 ^ 0x74 ^ v120)] ^ 0x7D1F2A29;
  v134 = HIBYTE(v113) ^ 0xC6A70AA6 ^ v125;
  v135 = HIBYTE(v123) ^ *&v50[4 * (HIBYTE(v123) ^ 0xDB)] ^ __ROR4__(*&v52[4 * (BYTE2(v113) ^ 0x9F)], 23) ^ *&v55[4 * (BYTE1(v116) ^ 0x96)] ^ v133 ^ (8 * v133) ^ (32 * v133) ^ 0x9EF8F04C;
  v136 = *&v53[4 * v135] ^ 0x398D1DC;
  v137 = *&v50[4 * (HIBYTE(v134) ^ 0xDB)] ^ (HIBYTE(v134) - ((v134 >> 23) & 0x9E) - 549023153) ^ __ROR4__(*&v52[4 * (BYTE2(v129) ^ 0xA)], 23) ^ *&v55[4 * (BYTE1(v132) ^ 0x1E)] ^ v136 ^ (8 * v136) ^ (32 * v136);
  v138 = *&v50[4 * (HIBYTE(v129) ^ 0x5A)];
  v139 = HIBYTE(v129) ^ 0xDF4692CE;
  v140 = v138 & 2;
  if ((v138 & 2 & v139) != 0)
  {
    v140 = -v140;
  }

  v141 = v138 & 0xFFFFFFFD ^ __ROR4__(*&v52[4 * (BYTE2(v132) ^ 0xCD)], 23) ^ *&v55[4 * BYTE1(v135)] ^ (v140 + v139) ^ 0x9DDE482C;
  v142 = *&v53[4 * (HIBYTE(v113) ^ 0xA6 ^ v125)] ^ 0x71EFE549;
  v143 = v142 ^ (32 * v142) ^ (8 * v142) ^ ((v141 & 0xDA13CE76 ^ 0x148CB8A4) & (v141 & 0x25EC3189 ^ 0xDF37FF7E) | v141 & 0x21600109);
  v144 = *&v53[4 * (v129 ^ 0x8C)] ^ 0x9ED5A2A2;
  v145 = *&v50[4 * (HIBYTE(v132) ^ 0x73)] ^ __ROR4__(*&v52[4 * BYTE2(v135)], 23) ^ *&v55[4 * BYTE1(v134)] ^ v144 ^ (8 * v144) ^ (32 * v144);
  v146 = HIBYTE(v135) ^ *&v50[4 * (HIBYTE(v135) ^ 0xDB)] ^ __ROR4__(*&v52[4 * (BYTE2(v125) ^ 0x52)], 23);
  v147 = v145 ^ HIBYTE(v132);
  v148 = *&v53[4 * (v132 ^ 0x6C)] ^ 0x44FFA8D4;
  v149 = v146 ^ *&v55[4 * (BYTE1(v129) ^ 0xB4)] ^ v148 ^ (8 * v148) ^ (32 * v148);
  if ((v145 & 0x400000) != 0)
  {
    v150 = -4194304;
  }

  else
  {
    v150 = 0x400000;
  }

  v151 = v150 + (v147 ^ 0x7F34B634);
  v152 = v149 ^ 0xA99D3F29;
  v153 = *&v53[4 * (v149 ^ 0x29)] ^ 0xB85732F3;
  v154 = HIBYTE(v143);
  v155 = HIBYTE(v137) ^ __ROR4__(*&v52[4 * (BYTE2(v143) ^ 0x29)], 23) ^ *&v50[4 * (HIBYTE(v137) ^ 0x80)] ^ *&v55[4 * (BYTE1(v145) ^ 0x5D)] ^ v153 ^ (8 * v153) ^ (32 * v153);
  v156 = __ROR4__(__ROR4__(*&v53[4 * (v137 ^ 0xC4)], 16) ^ 0x18841548, 16);
  v157 = *&v50[4 * (HIBYTE(v143) ^ 0x9E)] ^ __ROR4__(*&v52[4 * (BYTE2(v151) ^ 0x7C)], 23) ^ *&v55[4 * BYTE1(v152)] ^ v156 ^ 0xAB7F01EA ^ (8 * (v156 ^ 0xAB7F01EA)) ^ (32 * (v156 ^ 0xAB7F01EA));
  v158 = *&v50[4 * (HIBYTE(v151) ^ 0x9F)] ^ HIBYTE(v151) ^ __ROR4__(*&v52[4 * (BYTE2(v152) ^ 0xF5)], 23) ^ *&v55[4 * (BYTE1(v137) ^ 0xE8)];
  v159 = *&v53[4 * (v143 ^ 0x4A)] ^ 0x3E26A5D3;
  v160 = v158 ^ v159 ^ (8 * v159) ^ (32 * v159);
  v161 = *&v53[4 * (v147 ^ 0x73)];
  v162 = (((v155 ^ 0xBDF0AE3E) - (v155 ^ 0x7C935DE3)) ^ 0xFFFFFFFE) + (v155 ^ 0xBDF0AE3E);
  v163 = *&v50[4 * (HIBYTE(v152) ^ 0xDB)] ^ __ROR4__(*&v52[4 * (BYTE2(v137) ^ 0x89)], 23) ^ v161 ^ 0xAF30446B ^ *&v55[4 * (BYTE1(v143) ^ 0x40)] ^ (8 * (v161 ^ 0xAF30446B)) ^ (32 * (v161 ^ 0xAF30446B));
  v164 = *(&off_1010A0B50 + (v14 & 0xF44F1291)) - 1206981710;
  v165 = *(&off_1010A0B50 + v14 - 29457) - 2070382347;
  v166 = *&v164[4 * ((HIBYTE(v162) - (HIBYTE(v162) ^ 0x84)) ^ 0xFFFFFFF8) + 4 * HIBYTE(v162)] - 1704686730;
  v167 = *(&off_1010A0B50 + (v14 ^ 0x79DA)) - 1307285530;
  v168 = *&v165[4 * (BYTE2(v157) ^ 0x3A)] - 1591622935;
  v169 = *(&off_1010A0B50 + (v14 ^ 0x79BA)) - 2089096954;
  v170 = v166 ^ (v166 >> 4) ^ (v166 >> 2) ^ v168 ^ *&v167[4 * (BYTE1(v160) ^ 0xC5)] ^ (8 * v168) ^ *&v169[4 * ((HIBYTE(v152) - ((v152 >> 23) & 2) + 983730177) ^ 0x3AA288B5 ^ v163)];
  v171 = *&v164[4 * (HIBYTE(v157) ^ 0xA5)] - 1704686730;
  v172 = *&v165[4 * (BYTE2(v160) ^ 0xF5)] - 1591622935;
  v173 = v171 ^ (v171 >> 4) ^ (v171 >> 2) ^ *&v167[4 * (BYTE1(v163) ^ 0x6E)] ^ v172 ^ (8 * v172) ^ 0xA831AC75;
  v174 = ((v173 & 0x8FEFC83C ^ 0xB41E7370) & (v173 & 0x701037C3 ^ 0xFFEFCD3F) | v173 & 0x40000483) ^ *&v169[4 * (v162 ^ 0x75)];
  v175 = *&v165[4 * (BYTE2(v163) ^ 0xB7)];
  v176 = *&v164[4 * (HIBYTE(v160) ^ 0xDA)] - 1704686730;
  v177 = v176 ^ (v176 >> 4) ^ (v176 >> 2) ^ (8 * (v175 - 1591622935)) ^ (v175 - ((2 * (v175 - 1591622935)) & 0x4F46D280) + 1220881449);
  v178 = *&v167[4 * (BYTE1(v162) ^ 0xA8)];
  v179 = *&v164[4 * (HIBYTE(v163) ^ 0xC0)];
  LODWORD(v164) = *&v165[4 * (BYTE2(v162) ^ 0xB4)];
  v180 = ((v178 ^ (-568225443 - (((v178 ^ 0x9CD84B9) - 164463801) ^ ((v178 ^ 0x87415042) + 2025762750) ^ ((v178 ^ 0xAF52BA58) + 1353532840))) ^ 0x21DE6EA3 ^ ((v177 ^ 0xA7A36940) - (((v177 ^ 0xA7A36940) - 2 * ((v177 ^ 0xA7A36940) & 0x21DE6EB7 ^ v177 & 0x14) + 568225443) ^ v178))) + (v177 ^ 0xA7A36940)) ^ *&v169[4 * (((v154 ^ 0xB1) - 2 * ((v154 ^ 0xB1) & 0x7A ^ v154 & 2) - 2110257544) ^ 0x82380641 ^ v157)];
  v181 = (v179 - 1704686730) ^ ((v179 - 1704686730) >> 4) ^ ((v179 - 1704686730) >> 2) ^ (v164 - 1591622935) ^ (8 * (v164 - 1591622935)) ^ *&v167[4 * (BYTE1(v157) ^ 0xE)] ^ *&v169[4 * (v160 ^ 0xAC)];
  v182 = *(&off_1010A0B50 + (v14 ^ 0x7C82)) - 906856450;
  *(a4 + (v15 - 322688617)) = v182[BYTE3(v174) ^ 0xF1] ^ BYTE3(v174) ^ (33 - (BYTE3(v174) ^ 0x88)) ^ 0xA;
  v183 = (v170 & 0x80000 | 0x4E31701F) ^ v170 & 0xFFF7FFFF;
  v184 = *(&off_1010A0B50 + v14 - 27328) - 1136379954;
  *(a4 + (v15 - 322688610)) = v184[v180 ^ 0xF7] ^ 0x29;
  v185 = ((v182[HIBYTE(v183) ^ 0xCBLL] >> 2) | (v182[HIBYTE(v183) ^ 0xCBLL] << 6)) ^ 0xFFFFFFAC;
  *(a4 + (v15 - 322688621)) = HIBYTE(v183) ^ ((HIBYTE(v183) ^ 0xB2) - 34) ^ ((v185 >> 6) | (4 * v185)) ^ 0xF1;
  v186 = *(&off_1010A0B50 + v14 - 31673) - 6419699;
  v187 = v186[BYTE1(v174) ^ 0x22];
  *(a4 + (v15 - 322688615)) = ((v187 >> 6) | (4 * v187)) ^ (v186[BYTE1(v174) ^ 0x22] >> 1) & 0xE ^ 0xC8;
  v188 = v186[BYTE1(v180) ^ 0x38];
  *(a4 + (v15 - 322688611)) = ((v188 >> 6) | (4 * v188)) ^ (v186[BYTE1(v180) ^ 0x38] >> 1) & 0xE ^ 0xB3;
  *(a4 + (v15 - 322688606)) = v184[v181 ^ 0xCDLL] ^ 0xF7;
  v189 = *(&off_1010A0B50 + v14 - 27806) - 1671885054;
  *(a4 + (v15 - 322688608)) = ((BYTE2(v181) ^ 0x73) + v189[BYTE2(v181) ^ 0x3ALL] - 96) ^ 0x79;
  v190 = BYTE3(v180);
  v191 = v190 ^ 0x6A;
  LODWORD(v190) = v190 ^ 0x13;
  v192 = (v190 + 222);
  *(a4 + (v15 - 322688613)) = (v190 - 34) ^ v190 ^ v182[v191] ^ 1;
  v193 = BYTE3(v181);
  *(a4 + (v15 - 322688609)) = BYTE3(v181) ^ (33 - (BYTE3(v181) ^ 0xB1)) ^ 0x61 ^ v182[v193 ^ 0xC8];
  *(a4 + *(v16 - 124)) = ((BYTE2(v183) ^ 0xD0) + v189[BYTE2(v183) ^ 0x99] - 96) ^ 0xFE;
  *(a4 + (v15 - 322688616)) = ((BYTE2(v174) ^ 0x9E) + v189[BYTE2(v174) ^ 0xD7] - 96) ^ 0xE2;
  LODWORD(v182) = v186[((v170 ^ 0x701F) >> 8) ^ 0xC8];
  *(a4 + (v15 - 322688619)) = ((v182 >> 6) | (4 * v182)) ^ (v186[((v170 ^ 0x701F) >> 8) ^ 0xC8] >> 1) & 0xE ^ 0xC2;
  *(a4 + (v15 - 322688618)) = v184[v170 ^ 0x90] ^ 0xFE;
  v194 = v186[BYTE1(v181) ^ 0xE0];
  *(a4 + *(v16 - 120)) = ((v194 >> 6) | (4 * v194)) ^ (v194 >> 1) & 0xE ^ 0x45;
  *(a4 + *(v16 - 116)) = ((((((BYTE2(v180) ^ 0xA) - (BYTE2(v180) ^ 0x42)) ^ 0xF0) + (BYTE2(v180) ^ 0xA)) ^ 0x5D) + v189[((((BYTE2(v180) ^ 0xA) - (BYTE2(v180) ^ 0x42)) ^ 0xFFFFFFF0) + (BYTE2(v180) ^ 0xA)) ^ 0x14] - 96) ^ 0x96;
  *(a4 + (v15 - 322688614)) = v184[v174 ^ 0x35] ^ 0x23;
  v195 = (v15 + 1879471141) < HIDWORD(a8);
  if (HIDWORD(a8) < 0x83424A82 != (v15 + 1879471141) < 0x83424A82)
  {
    v195 = HIDWORD(a8) < 0x83424A82;
  }

  return (*(a13 + 8 * ((58118 * v195) ^ v14)))(200, v180, v181, 33 - (v193 ^ 0xB1), v174, v192, 177, &off_1010A0B50, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_10016FB1C()
{
  v5 = *(v4 - 256);
  if ((v1 & 4) == 0)
  {
    v5 = v3;
  }

  *(v4 - 256) = v5;
  return (*(v2 + 8 * v0))();
}

uint64_t sub_10016FD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  LOBYTE(STACK[0x645]) = *v28;
  LODWORD(STACK[0x590]) |= ((v27 - 1170080574) & 0x45BDCEBD) - 3744;
  return (*(v29 + 8 * (((STACK[0x738] == 0x981390C2FED9246) * (v27 - 17186)) | v27)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

uint64_t sub_10016FDF8(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0xBB0];
  v4 = STACK[0xBB0] < 0xFE08DA99;
  v5 = STACK[0xF10] + 8505;
  v6 = (v2 ^ 0xE9D5C711) + STACK[0xD20];
  STACK[0x9938] = v6 + 10;
  v6 -= 0x7CB293E1FF030B22;
  v7 = v6 < 0xFE08DA99;
  v8 = v6 > v3;
  if (v4 == v7)
  {
    v7 = v8;
  }

  return (*(STACK[0xF18] + 8 * (v5 ^ (13 * (v7 ^ 1)))))(a1, a2, 371891407);
}

uint64_t sub_10016FEEC()
{
  v9 = v6 - 1;
  *(v7 + v9) ^= *(v0 + (v9 & 0xF)) ^ *(v1 + (v9 & 0xF)) ^ ((v9 & 0xF) * v4) ^ *(v2 + (v9 & 0xF)) ^ v5;
  return (*(v8 + 8 * ((v9 != 0) ^ v3)))();
}

uint64_t sub_10016FF34()
{
  LODWORD(STACK[0x800]) = v0 + *STACK[0x498] - 1556104693 + v1;
  LODWORD(STACK[0x804]) = 217654554;
  return (*(v3 + 8 * v2))();
}

uint64_t sub_10017044C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned int a24)
{
  a24 = (v25 - 4889) ^ (17902189 * (((&a24 ^ 0x20000E) & 0xAA8140E | (&a24 ^ 0xD5164AA0) & 0xF557EBF0) ^ 0x5B795CBE));
  (*(v24 + 8 * (v25 + 26258)))(&a24);
  return (*(v24 + 8 * v25))(17411, 25923, 12409, 49622, 4294958266, 8452, 10316, -36192, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
}

uint64_t sub_1001707E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v61 = (*(a8 + 8 * (v59 + 24741)))(16);
  v62 = STACK[0x2F0];
  STACK[0x230] = 0;
  HIDWORD(a10) = -371865839;
  HIDWORD(a28) = v60;
  return (*(v62 + 8 * (((v61 == 0) * (((v59 + 7937) ^ 0xFFFF5478) + (v59 ^ 0x4A8E))) ^ v59)))(v61, v63, v64, v65, v66, v67, v68, v62, a9, a10, 0x367D22279A98EC4ELL, 0, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59);
}

uint64_t sub_100170884(uint64_t a1, uint64_t a2, char a3, char a4, int a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v38 = *(a31 + v32 + 72);
  v39 = (v35 & (2 * v32)) + (v32 ^ a8);
  *(v33 + (v39 + 8650755)) = ((v31 + v37) ^ HIBYTE(v38)) - ((2 * ((v31 + v37) ^ HIBYTE(v38))) & 0xBF) + 95;
  *(v33 + (v39 + 8650756)) = (BYTE2(v38) ^ 0x7C) - ((2 * (BYTE2(v38) ^ 0x7C)) & 0xBF) + 95;
  *(v33 + (v39 + v34)) = (a3 ^ BYTE1(v38)) - ((2 * (a3 ^ BYTE1(v38))) & 0xBF) + 95;
  *(v33 + (v39 + a5)) = v38 ^ a4;
  return (*(v36 + 8 * (((v32 + 4 < *(a31 + 92)) * a6) ^ v31)))();
}

uint64_t sub_100170940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v39 = v37 + v36 + 975171890 + LODWORD(STACK[0x304]);
  v40 = v39 + 1100308017;
  v41 = v39 + (v38 ^ 0x3308) + 1100297258;
  if ((~v40 & 6) != 0)
  {
    v42 = v40;
  }

  else
  {
    v42 = v41;
  }

  return (*(a36 + 8 * v38))(a1, a2, a3, a4, v42);
}

uint64_t sub_100170A30(int a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, int a7, int8x16_t a8, int8x8_t a9)
{
  v16.val[0].i64[0] = (v12 + a3 - 1) & 0xF;
  v16.val[0].i64[1] = (v12 + a4 + v13) & 0xF;
  v16.val[1].i64[0] = (v12 + a3 + 13) & 0xF;
  v16.val[1].i64[1] = (v12 + a3 + 12) & 0xF;
  v16.val[2].i64[0] = (v12 + a3 + 11) & 0xF;
  v16.val[2].i64[1] = (v12 + a3 + 10) & 0xF;
  v16.val[3].i64[0] = (v12 + a3 + 9) & 0xF;
  v16.val[3].i64[1] = (v12 + a3) & 0xF ^ 8;
  *(a5 + v12) = veor_s8(veor_s8(veor_s8(*(v10 + v16.val[0].i64[0] - 7), *(a6 + v12)), veor_s8(*(v9 + v16.val[0].i64[0] - 7), *(v16.val[0].i64[0] + v11 - 1))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v16, a8), a9)));
  return (*(v14 + 8 * (((a2 == a3) * a7) ^ a1)))();
}

uint64_t sub_100170B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, __n128 a8@<Q1>, int8x16_t a9@<Q4>, uint64_t a10@<D5>, int8x16_t a11@<Q6>)
{
  v20 = a6 & (a3 + 15);
  v22.i64[0] = vqtbl4q_s8(*(&a8 - 1), a9).u64[0];
  v22.i64[1] = a10;
  v23 = vrev64q_s8(vmulq_s8(v22, a11));
  *(a7 + a3) = veorq_s8(veorq_s8(veorq_s8(*(v15 + v20 - 15), *(v17 + a3)), veorq_s8(*(v20 + v14 - 8), *(v16 + v20 - 15))), vextq_s8(v23, v23, 8uLL));
  return (*(v19 + 8 * (((a5 == 0) * v18) ^ a4)))(a1, a2, a3 - 16);
}

uint64_t sub_100170D98()
{
  v7 = v5 + v3;
  v8 = (v3 + 34 + 17 * (v4 ^ 0xA0)) & 0xF;
  v9 = v8 + 1 - v3;
  v10 = v1 + v9;
  v11 = v0 + v9;
  v13 = v2 + ((v4 + 113509478) & 0xF93B7BFF ^ 0x3A20uLL) + v8 > v5 && v2 - v3 + v8 + 3 < v7;
  if (v1 + v8 + 1 > v5 && v10 < v7)
  {
    v13 = 1;
  }

  if (v0 + v8 + 1 > v5 && v11 < v7)
  {
    v13 = 1;
  }

  return (*(v6 + 8 * ((112 * v13) ^ v4)))();
}

void sub_100170E4C(uint64_t a1)
{
  v6 = *(a1 + 16);
  v1 = *(a1 + 24) - 1112314453 * (((a1 | 0x4236B2F3) - (a1 & 0x4236B2F3)) ^ 0xAD60982A);
  v4 = *(&off_1010A0B50 + (v1 ^ 0x390F)) - v6 - 1244410930 < 0x10 || *(&off_1010A0B50 + (v1 ^ 0x3199)) - v6 - 1122525301 < 0x10 || *(&off_1010A0B50 + (v1 ^ 0x35BB)) - v6 - 470326662 < 0x10;
  v5 = *(a1 + 24) - 1112314453 * (((a1 | 0x4236B2F3) - (a1 & 0x4236B2F3)) ^ 0xAD60982A);
  __asm { BRAA            X15, X17 }
}

uint64_t sub_100172C44@<X0>(unint64_t a1@<X1>, int a2@<W2>, int a3@<W3>, unsigned int a4@<W4>, unsigned int a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X7>, unint64_t a8@<X8>)
{
  v13 = ((v8 + a3) | a4) + 0x981390CAC21CCE2 + (((*(v9 + 8) ^ 0x6EFD156693732F93) - 0x6EFD156693732F93) ^ ((*(v9 + 8) ^ a6) + a7) ^ (((((v8 + a2) & a5) + v11) ^ *(v9 + 8)) + v12));
  v14 = v13 < a1;
  v15 = v13 > a8;
  if (a8 < a1 != v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  return (*(v10 + 8 * ((255 * !v16) ^ v8)))();
}

void sub_100172F5C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (*(a1 + 48) ^ 0x5DE5FE57FCDF6BCFLL) - 0x5DE5FE57AE647B0ALL + ((2 * *(a1 + 48)) & 0xBBCBFCAFF9BED79ELL);
  v4 = v3 < 0x4E7AF0C5;
  v5 = v3 > v2 + 1316679877;
  if (v2 > 0xFFFFFFFFB1850F3ALL == v4)
  {
    v4 = v5;
  }

  v1 = *(a1 + 40) ^ (1112314453 * ((2 * (a1 & 0x5EF3D90F) - a1 + 554444528) ^ 0xCE5A0C29));
  __asm { BRAA            X12, X17 }
}

uint64_t sub_100173390@<X0>(unsigned int a1@<W8>)
{
  LOBYTE(STACK[0x21F]) = a1 > ((v2 + 1763795680) & 0x96DEA7D8 ^ 0x85D9);
  LODWORD(STACK[0x498]) = *(v1 + 16);
  return (*(v3 + 8 * v2))();
}

uint64_t sub_100173444(uint64_t a1, uint64_t a2, int8x16_t *a3, uint64_t a4, int a5, double a6, __n128 a7, __n128 a8, __n128 a9, int8x16_t a10, double a11, int8x16_t a12)
{
  v18 = v12 & 0xF;
  v20.i64[0] = vqtbl4q_s8(*(&a7 - 1), a10).u64[0];
  *&v20.i64[1] = a11;
  v21 = vrev64q_s8(vmulq_s8(v20, a12));
  *a3 = veorq_s8(veorq_s8(veorq_s8(*(v14 + v18 - 15), *a3), veorq_s8(*(v15 + v18 + 3 - 15), *(v13 + v18 + 3 - 15))), vextq_s8(v21, v21, 8uLL));
  return (*(v17 + 8 * (((a4 == 0) * a5) ^ v16)))(a1, a2, a3 - 1, a4 - 16);
}

uint64_t sub_1001734BC(uint64_t a1, int a2, uint64_t a3)
{
  v6 = v4;
  v7 = v3 > a3;
  v8 = *(v6 + 8) - 0x3CE25E0EB3D5F56BLL;
  v9 = v7 ^ (v8 < 0x80000000114A0E0DLL);
  v10 = v8 < a1;
  if (!v9)
  {
    LOBYTE(v7) = v10;
  }

  return (*(v5 + 8 * ((35 * (((a2 - 91) ^ v7) & 1)) ^ a2)))();
}

uint64_t sub_100173530(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x498] = v73;
  STACK[0x698] = v72;
  STACK[0x6E8] = a66;
  STACK[0x730] = a69;
  STACK[0x4E8] = a70;
  STACK[0x630] = STACK[0x3E0];
  STACK[0x708] = a68;
  STACK[0x508] = a67;
  STACK[0x440] = a65;
  STACK[0x668] = 0;
  STACK[0x478] = 5000;
  STACK[0x720] = a1;
  STACK[0x640] = a1;
  STACK[0x558] = a1;
  v74 = (*(v70 + 8 * (v71 - 504188092)))();
  return (*(v70 + 8 * ((105447 * (v71 > ((v71 - 1617338215) & 0x4258ADED ^ 0x5FF013DD))) ^ (v71 - 504204816))))(v74);
}

uint64_t sub_100173604(double a1, __n128 a2, __n128 a3, __n128 a4, int8x16_t a5, double a6, int8x16_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14)
{
  v21 = ~a9 + v18;
  v22 = v21 & 0xF;
  v24.i64[0] = vqtbl4q_s8(*(&a2 - 1), a5).u64[0];
  *&v24.i64[1] = a6;
  v25 = vrev64q_s8(vmulq_s8(v24, a7));
  *(a12 + v21) = veorq_s8(veorq_s8(veorq_s8(*(v15 + v22 - 15), *(a10 + v21)), veorq_s8(*(v16 + v22 - 15), *(v17 + v22 - 15))), vextq_s8(v25, v25, 8uLL));
  return (*(v20 + 8 * (((a13 + a9 == v14) * a14) ^ v19)))();
}

uint64_t sub_1001736F4@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v9 = a1 - 1;
  *(v8 + v9) ^= *(v2 + (v9 & 0xF)) ^ *((v9 & 0xF) + v4 + 3) ^ ((v9 & 0xF) * v5) ^ *(v3 + (v9 & 0xF));
  return (*(v7 + 8 * (((v9 == 0) * v6) ^ a2)))();
}

uint64_t sub_100173740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v7 - 220);
  v10 = v5 ^ 0xD88552CE;
  if ((v5 & 0x40000) == (((v9 - 16636) | 0x2108) ^ 0x219C))
  {
    v11 = -262144;
  }

  else
  {
    v11 = 0x40000;
  }

  *(v7 - 216) = (v11 + v10) ^ 0x1235FFD5;
  *(v7 - 212) = v4 ^ 0xD10B3B64;
  return (*(v8 + 8 * v9))(a1, a2, a3, a4, v6 ^ 0xE0EB40A8);
}

uint64_t sub_1001737CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  STACK[0x280] = v60;
  v62 = v60 - 0x2D04D9D0913719AELL > ((a9 + 9282) ^ 0x5FE5D063uLL) && v60 - 0x2D04D9D0913719AELL < HIDWORD(a29) + 1608889476;
  v63 = *(a8 + 8 * ((1232 * v62) ^ a9));
  LODWORD(STACK[0x290]) = -371865839;
  return v63(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_100173938(uint64_t a1)
{
  v2 = 634647737 * ((((2 * a1) | 0x8FD54ADFC683D7E0) - a1 + 0x38155A901CBE1410) ^ 0x1D310A808ED7C40CLL);
  v3 = *(a1 + 32) + v2;
  v4 = *a1;
  v5 = *(a1 + 8) + v2;
  v6 = *(a1 + 20) ^ v2;
  v7 = *(a1 + 36) - v2;
  v8 = *(a1 + 24);
  v10 = *(a1 + 48);
  v9 = *(a1 + 56);
  v11 = *(a1 + 40);
  v12 = (v6 ^ 0xFB63835C) & (2 * (v6 & 0xFA639390)) ^ v6 & 0xFA639390;
  v13 = ((2 * (v6 ^ 0xFB65877C)) ^ 0x20C29D8) & (v6 ^ 0xFB65877C) ^ (2 * (v6 ^ 0xFB65877C)) & 0x10614EC;
  v14 = v13 ^ 0x1021424;
  v15 = (v13 ^ 0x400C0) & (4 * v12) ^ v12;
  v16 = ((4 * v14) ^ 0x41853B0) & v14 ^ (4 * v14) & 0x10614E8;
  v17 = (v16 ^ 0x10A0) & (16 * v15) ^ v15;
  v18 = ((16 * (v16 ^ 0x106044C)) ^ 0x10614EC0) & (v16 ^ 0x106044C) ^ (16 * (v16 ^ 0x106044C)) & 0x10614C0;
  v19 = v17 ^ 0x10614EC ^ (v18 ^ 0x400) & (v17 << 8);
  v20 = v6 ^ (2 * ((v19 << 16) & 0x1060000 ^ v19 ^ ((v19 << 16) ^ 0x14EC0000) & (((v18 ^ 0x106102C) << 8) & 0x1060000 ^ 0x1020000 ^ (((v18 ^ 0x106102C) << 8) ^ 0x6140000) & (v18 ^ 0x106102C)))) ^ 0x74D079BD;
  v21 = 906386353 * (((&v23 | 0x9277AFCB3868D91ALL) - (&v23 & 0x9277AFCB3868D918)) ^ 0x3CFD52050969143ELL);
  v23 = v10;
  v32 = v20 + v21;
  v31 = v21 + (v5 ^ 0x5885D0D5236B1DCFLL);
  v29 = v9;
  v26 = v8;
  v27 = v4;
  v28 = (-85574563 * v7 + 794215248) ^ v21;
  v25 = v11;
  v24 = v21 ^ (v3 + 417237180);
  result = (*(*(&off_1010A0B50 + (v3 ^ 0xE722088D)) + 8 * v3 + 2527864138))(&v23);
  *(a1 + 16) = v30;
  return result;
}

void sub_100173C3C(uint64_t a1)
{
  v3 = *(*(a1 + 16) + 4) == 1051086576 || *(*a1 + 4) == 1051086576;
  v1 = *(a1 + 8) ^ (634647737 * ((a1 - 2 * (a1 & 0x53A5FD83) - 744096381) ^ 0xBE33D27F));
  __asm { BRAA            X13, X17 }
}

uint64_t sub_100174284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v38 = veorq_s8(**(v37 + 16), xmmword_100F52700);
  *(v36 - 128) = veorq_s8(**(v37 + 24), xmmword_100F526F0);
  *(v36 - 112) = v38;
  return (*(v35 + 8 * (a1 ^ (30 * (v34 == 0)))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, v37, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t sub_1001742E8@<X0>(uint64_t a1@<X2>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = 1022166737 * ((v68 - 168 - 2 * ((v68 - 168) & 0x1DE76988) - 1645778548) ^ 0x27F7881E);
  *(a1 + 432) = v67;
  *(v68 - 160) = a2 - v69;
  *(v68 - 156) = v69 - 8158 + v65;
  v70 = (*(v66 + 8 * (v65 + 11720)))(v68 - 168);
  v71 = *(v68 - 152);
  LODWORD(STACK[0x324]) = v71;
  return (*(v66 + 8 * (((v71 == 1497668682) * ((v65 - 29825) ^ 0x8712 ^ ((v65 - 4886) | 0x2502))) ^ v65)))(v70, a65, &STACK[0x298], 371891215);
}

uint64_t sub_1001743EC(int a1, int a2, int a3)
{
  v11 = (v8 ^ *(*(v9 + 8) + 4 * v5)) + v4;
  *(*(v3 + 8) + 4 * v5) = v11 - (a1 & (2 * v11)) + a2;
  return (*(v10 + 8 * (((v7 == v5) * a3) ^ v6)))();
}

uint64_t sub_100174490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = (v8 + 25755);
  v12 = v11 > (v7 + 26273);
  if (v7 > 0x995Eu != v11 < ((v6 - 248) & 0x869F ^ 0x603Au))
  {
    v12 = v11 < ((v6 - 248) & 0x869F ^ 0x603Au);
  }

  return (*(v9 + 8 * ((496 * !v12) ^ v6)))(a1, a2, a3, *(v10 - 196), a5, a6, a4);
}

uint64_t sub_100174560(double a1, __n128 a2)
{
  a2.n128_u16[0] = -31355;
  a2.n128_u8[2] = -123;
  a2.n128_u8[3] = -123;
  a2.n128_u8[4] = -123;
  a2.n128_u8[5] = -123;
  a2.n128_u8[6] = -123;
  a2.n128_u8[7] = -123;
  return (*(v3 + 8 * (v2 + 11216)))(xmmword_100F523B0, a2);
}

uint64_t sub_100174664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, int a17, int a18, uint64_t a19, uint64_t a20, int a21, char a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, __int16 a28, char *a29)
{
  v37 = v29 & 0xCE6A ^ 0xC23;
  v38 = v29 ^ 0x3624;
  a26 = v31 ^ v29 ^ (2 * (v38 & (2 * (v38 & (2 * (v38 & (2 * (v38 & (2 * (v38 & (2 * (v38 & (2 * (v38 & (2 * (v38 & (2 * (v38 & (2 * (v38 & (2 * ((((v38 & (2 * ((v29 ^ 0x3404) & (2 * ((v29 ^ 0x3404) & 0x384E ^ v37)) ^ v37))) ^ v37) << ((v32 ^ 0x3B) + 78)) & v38 ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ 0xB980;
  a25 = a17;
  a28 = a16;
  a29 = &a22;
  v39 = (*(a20 + 8 * v30))(&a25);
  *(v36 + (a18 + v33)) = a27;
  return (*(a20 + 8 * ((47306 * ((*(v34 + v35) ^ 0xEB484D00) % 0xA > (v29 - 18907))) ^ v32)))(v39);
}

uint64_t sub_1001747B0@<X0>(unsigned int a1@<W0>, unsigned int a2@<W8>)
{
  v7 = a1 < 0x2DDFDB48;
  *(v5 + v2 + 24) = *(v4 + v2);
  if (v7 == v2 + 1 > (v3 ^ 0x421Au) + 2128890238)
  {
    v7 = v2 - 2128903875 < a2;
  }

  return (*(v6 + 8 * ((62 * !v7) ^ v3)))();
}

uint64_t sub_100174960(char a1, __n128 a2, uint64_t a3, uint64_t a4, int a5)
{
  v7.n128_u64[0] = (v5 + 13) & 0xF;
  v7.n128_u64[1] = (v5 + 12) & 0xF;
  v8.n128_u64[0] = (((a5 + 115) | 3) + v5) & 0xF;
  v8.n128_u64[1] = (v5 + 10) & 0xF;
  v9.n128_u64[0] = (v5 + 9) & 0xF;
  v9.n128_u64[1] = a1 & 0xF ^ 4;
  v12.val[0].i64[0] = (v5 + 7) & 0xF;
  v12.val[0].i64[1] = (v5 + 6) & 0xF;
  v12.val[1].i64[0] = (v5 + 5) & 0xF;
  v12.val[1].i64[1] = (v5 + 4) & 0xF;
  v12.val[2].i64[0] = (v5 + 3) & 0xFLL;
  v12.val[2].i64[1] = (v5 + 2) & 0xFLL;
  v12.val[3].i64[0] = (v5 + 1) & 0xFLL;
  v12.val[3].i64[1] = v5 & 0xF;
  v10.n128_u64[0] = 0x4343434343434343;
  v10.n128_u64[1] = 0x4343434343434343;
  return (*(v6 + 8 * ((16161 * ((a5 + 675804081) > 0x68E1F034)) ^ (a5 - 24714))))(((a5 - 24717) | 3) ^ 0x2994u, (v5 + 14) & 0xF, (v5 & 0x10) - 16, (((a5 - 24717) | 3) ^ 0x2994u) - 15504, 25824, a2, v7, v8, v9, xmmword_100BC76B0, vqtbl4q_s8(v12, xmmword_100BC76B0), v10);
}

uint64_t sub_100174B24(uint64_t a1)
{
  v6 = (*(v2 + 8 * (v4 + 22752)))(a1, *(*(v1 + 8 * (v4 - 28024)) - 1306953403), 0, v3 + 4);
  v7 = (*(v2 + 8 * (v4 + 22845)))(a1);
  return (*(v2 + 8 * (((v6 == 0) * (((v4 + 5765) | 0x1000) - 38522)) ^ (v4 + 20025))))(v7);
}

void sub_100174BA8(uint64_t a1)
{
  v1 = 297845113 * ((2 * ((a1 ^ 0x8A2678AC) & 0x5CD2AF36) - (a1 ^ 0x8A2678AC) - 1557311287) ^ 0x5E3834FB);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_100174DA4(uint64_t a1, uint64_t a2, int a3)
{
  v6 = ((v4 - 1104944865) & 0x41DBFB3F ^ 0xFD0A34E0) - a3;
  if (v6 >= 0xFA)
  {
    v6 = 250;
  }

  v7 = v6 + v3;
  if (v7 - 1 >= v3)
  {
    v8 = v3;
  }

  else
  {
    v8 = v7 - 1;
  }

  return (*(v5 + 8 * ((98 * (v7 - v8 > 7)) ^ v4)))();
}

uint64_t sub_100174E68@<X0>(_DWORD *a1@<X5>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  v18 = (v11 + 1884934284) & 0x8FA6BFFE;
  v19 = (v17 + 24 * v12);
  *v19 = v15;
  v19[1] = v14;
  *&a1[6 * v12 + 4] = a7;
  v19[4] = a11;
  *a1 = (((v18 - 41447) | 0x88) ^ 0x19BA) + a2;
  return (*(v16 + 8 * (v18 ^ (1137 * ((v13 + 1415822355) < 0x80000003)))))();
}

void sub_100174EF8(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = (*(a1 + 40) ^ 0x7DDCBF5D4BFEEDFELL) - 0x7DDCBF5C894E6608 + ((2 * *(a1 + 40)) & 0xFBB97EBA97FDDBFCLL);
  v4 = v3 < 0xC2B087F6;
  v5 = v3 > v2 + 3266349046u;
  if (v2 > 0xFFFFFFFF3D4F7809 != v4)
  {
    v5 = v4;
  }

  v1 = *(a1 + 16) ^ (17902189 * (a1 ^ 0x8E4F1610));
  __asm { BRAA            X15, X17 }
}

uint64_t sub_100175094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, int a30, int a31)
{
  v33 = 1022166737 * (&a28 ^ 0xBA10E192);
  a28 = a24;
  a29 = a19 - v33;
  a30 = v33 + 27039 + v31;
  v34 = (*(v32 + 8 * (v31 ^ 0xD945)))(&a28);
  return (*(v32 + 8 * (((a31 != 1497668682) * ((((v31 + 16710) | 0x22CC) - 1573) ^ 0x71DD)) ^ v31)))(v34);
}

uint64_t sub_1001751D0@<X0>(void *a1@<X0>, int a2@<W8>)
{
  v3 = a2 - 42487;
  v4 = (a2 - 47779) | 0x4059;
  if (a1[7])
  {
    v5 = a1[4] == 0;
  }

  else
  {
    v5 = 1;
  }

  v8 = v5 || a1[5] == 0 || *a1 == 0;
  return (*(v2 + 8 * (((((v3 ^ v8) & 1) == 0) * (v4 ^ 0x42EA)) ^ v3)))();
}

uint64_t sub_100175230(uint64_t a1, uint64_t a2)
{
  *v4 = v3 - 1;
  v8 = &v4[6 * (v3 - 416076654)];
  v9 = *(v5 + (v8[2] + ~(v2 + 727171712)) * v7 + 36);
  return (*(v6 + 8 * ((v2 + 727171712) ^ 0x2B57B8F5 ^ (59021 * (((v9 - (v2 + 727171712)) | (v2 + 727171712 - v9)) >= 0)))))(a1, a2, *(v8 + 2));
}

uint64_t sub_1001752F8(__n128 a1)
{
  v5.n128_u64[0] = (v1 + 13) & 0xF;
  v5.n128_u64[1] = (v1 + 12) & 0xF;
  v6.n128_u64[0] = (v1 + 11) & 0xF;
  v6.n128_u64[1] = (v1 + 10) & 0xF;
  v7.n128_u64[0] = (v1 + 9) & 0xF;
  v7.n128_u64[1] = v2 & 0xF ^ 5;
  v10.val[0].i64[0] = (v1 + 7) & 0xF;
  v10.val[0].i64[1] = (v1 + 6) & 0xF;
  v10.val[1].i64[0] = (v1 + 5) & 0xF;
  v10.val[1].i64[1] = (v1 + 4) & 0xF;
  v10.val[2].i64[0] = (v1 + 3) & 0xF;
  v10.val[2].i64[1] = (v1 + 2) & 0xF;
  v10.val[3].i64[0] = (v1 + 1) & 0xF;
  v10.val[3].i64[1] = v1 & 0xF;
  v8.n128_u64[0] = 0xD0D0D0D0D0D0D0DLL;
  v8.n128_u64[1] = 0xD0D0D0D0D0D0D0DLL;
  return (*(v4 + 8 * v3))((v1 + 14) & 0xF, v1 - 16, (v1 & 0x10) - 16, (v3 ^ 0x74F8) - 24047, a1, v5, v6, v7, xmmword_100BC76B0, vqtbl4q_s8(v10, xmmword_100BC76B0), v8);
}

uint64_t sub_100175528(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v40 = ((a1 ^ 0x7C3B4AF8) - 1403718757) ^ a1 ^ ((a1 ^ 0x4548DEFF) - 1792579682) ^ (((v37 + 899224341) ^ 0xCCA5F1F) + (a1 ^ 0xE93C2D64)) ^ ((a1 ^ 0xFFDFFFFE) + 800058740 + (v37 ^ 0xE12A));
  v41 = a2 + 1745674592 + (((v40 ^ 0x84B252B6) - 1003095986) ^ ((v40 ^ 0x5CA4F0F4) + 472078864) ^ ((v40 ^ 0x58F12864) + 410419872)) + 1289203061;
  v42 = *(v38 + 4 * a33);
  v43 = ((v42 ^ 0x6FFF1AA9) - 1081039924) ^ v42 ^ ((v42 ^ 0xCC4993F3) + 472263314) ^ ((v42 ^ 0xF3C93138) + 598116443) ^ ((v42 ^ 0x7FEFFEFF) - 1350547554) ^ v41 ^ ((v41 ^ 0x50FF3C87) - 1291563986) ^ ((v41 ^ 0x94ADF51F) + 2002159030) ^ ((v41 ^ 0x33A9B832) - 799881063) ^ ((v41 ^ 0xEBFFFEFF) + 134516310);
  return (*(a36 + 8 * (((((v36 + (((v43 ^ 0x8AC4B3E6) + 1935364268) ^ ((v43 ^ 0x95C9F776) + 1817580604) ^ ((v43 ^ 0x2C998D58) - 720998890)) + 107253469) & 7) != 2) * v39) ^ v37)))();
}

uint64_t sub_1001757B4@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, int a4, unsigned int a5)
{
  v8 = 1022166737 * (((&a3 | 0x73AAE4ED) - (&a3 | 0x8C551B12) - 1940579566) ^ 0xC9BA057F);
  a3 = a1;
  a4 = v7 - v8 - 1754505423;
  a5 = (v5 ^ ((v5 ^ 0x33C1549F) - 1178130809) ^ ((v5 ^ 0x401909FC) - 903906330) ^ ((v5 ^ 0xF9DEA77A) + 1943590244) ^ ((v5 ^ 0xFFFF77FF) + 1979223571 + (v7 ^ 0x68946195)) ^ 0x3F5A0F1C) + v8;
  v9 = (*(v6 + 8 * (v7 - 1754483494)))(&a3);
  return (*(v6 + 8 * (v7 ^ 0x68944F22 ^ (60350 * (v7 < 0x5C2C299D)))))(v9);
}

uint64_t sub_1001758E4@<X0>(unsigned int a1@<W1>, char a2@<W3>, uint64_t a3@<X8>)
{
  v7 = a3 - 1;
  *(v5 + v7) = *(v4 + v7) ^ a2;
  return (*(v6 + 8 * ((51798 * (v7 == (v3 ^ a1) - 15341)) ^ v3)))();
}

uint64_t sub_100175960@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10)
{
  a8 = v12 + 1603510583 * (((&a8 | 0x900A13C) - (&a8 | 0xF6FF5EC3) - 151036221) ^ 0x9EDB9397) - 712577166;
  a9 = v10;
  a10 = a1;
  v13 = (*(v11 + 8 * (v12 + 7342)))(&a8);
  return (*(v11 + 8 * v12))(v13);
}

void sub_100175B28(uint64_t a1)
{
  v1 = *(a1 + 4) - 1603510583 * (a1 ^ 0x97DB32AB);
  v11 = 16;
  v12 = 0;
  v9 = 0;
  v8 = 0;
  v7 = -371865839;
  v5[2] = 0;
  v13 = 0x5852135C33F607B0;
  v14[0] = 0;
  v6[0] = 0;
  v5[0] = 0;
  v10 = 0;
  v2 = *(&off_1010A0B50 + v1 - 19585) - 810145054;
  (*&v2[8 * (v1 ^ 0x9C2C)])(v6, &v10, v14, v5);
  if (v6[0])
  {
    v3 = v14[0] == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100175C68@<X0>(int a1@<W4>, int a2@<W6>, int a3@<W8>)
{
  v6 = *(v9 + 32);
  if ((a3 - 1051086577) >= 0x7FFFFFFF)
  {
    a1 = -a2;
  }

  v10[1] = a1;
  *(v5 - 112) = v10;
  *(v5 - 120) = v3 + 193924789 * ((v5 - 128 - 2 * ((v5 - 128) & 0x8425A18) + 138566172) ^ 0xBEF9687A) - 18032;
  *(v5 - 128) = v6;
  return (*(v4 + 8 * (v3 ^ 0xB225)))(v5 - 128);
}

uint64_t sub_100175D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t (*a30)(uint64_t), _DWORD *a31)
{
  v36 = v32 + (((a31[18] ^ 0x3DC7F365) - 1036514149) ^ ((a31[18] ^ 0x6FD92072) - 1876500594) ^ ((a31[18] ^ 0x4F62556B) - 1331844459));
  v37 = (((a31[19] ^ 0x89200C53) + 1994388397) ^ ((a31[19] ^ 0x49BAD750) - 1236981584) ^ ((a31[19] ^ 0xDDE65D7F) + 572105345)) + (((v33 ^ 0xA174E940) + 1586173632) ^ ((v33 ^ 0xD42D03B8) + 735247432) ^ ((v33 ^ 0x289A7034) - 681209908));
  a31[18] = v36 - 1786950617 - 2 * ((v36 - 1384637251) & 0x1D7C867D ^ (v36 - 1786950617) & 1) - 1787341038;
  a31[19] = v37 - 2 * ((v37 + 457187656) & 0x1D7C867D ^ v37 & 1) - 1732466748;
  v38 = (((a31[20] ^ 0xC8F0B692) + 923748718) ^ ((a31[20] ^ 0x59A946B0) - 1504265904) ^ ((a31[20] ^ 0x8C25765E) + 1943701922)) + (((v31 ^ 0xB36DAC26) + 1284658138) ^ ((v31 ^ 0x7B31D98F) - 2066864527) ^ ((v31 ^ 0xB5953BAB) + 1248511061));
  v39 = (((a31[21] ^ 0xF385149D) + 209382243) ^ ((a31[21] ^ 0x361D9794) - 907909012) ^ ((a31[21] ^ 0xD8E40575) + 656145035)) + (((v34 ^ 0x267E57D7) - 645814231) ^ ((v34 ^ 0x747C3846) - 1954297926) ^ ((v34 ^ 0x9C59ACB5) + 1671844683));
  a31[20] = v38 - 1195222277 + ((158619394 - 2 * v38) | 0xC506F307);
  a31[21] = v39 - 2 * ((v39 + 198724000) & 0x1D7C867F ^ v39 & 3) + 156553244;
  return a30(a25);
}

uint64_t sub_100176158@<X0>(int a1@<W8>)
{
  v6 = a1 == 0;
  v4 = (*(v2 + 8 * (v3 + 26470)))((v3 ^ 0xF3128B27) + v1);
  return (*(v2 + 8 * ((((v3 - 17427) ^ 0x1F55) * v6) ^ v3)))(v4);
}

uint64_t sub_100176240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15, int a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  v24 = 634647737 * (((&a13 | 0x17D3DB9E29DFA95DLL) - (&a13 & 0x17D3DB9E29DFA958)) ^ 0xCD087471444986A1);
  a17 = v24 ^ 0x5BB3;
  a18 = v22 - v24;
  a16 = v21 + 2031310107 + v24;
  a13 = -634647737 * (((&a13 | 0x17D3DB9E29DFA95DLL) - (&a13 & 0x17D3DB9E29DFA958)) ^ 0x444986A1);
  a14 = v21 + 2031310107 - v24 - 3842;
  a19 = v21 - v24 - 1230179057;
  a20 = ((v21 + 2031310107) ^ 0x1D7) - v24;
  v25 = (*(v20 + 8 * (v21 ^ 0xCAED)))(&a13);
  return (*(v23 + 8 * a15))(v25);
}

uint64_t sub_100176314@<X0>(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8, unsigned __int8 a9, unsigned __int8 a10, unsigned __int8 a11, unsigned __int8 a12, unsigned __int8 a13, unsigned __int8 a14, unsigned __int8 a15, unsigned __int8 a16, unsigned __int8 a17, unsigned __int8 a18, unsigned __int8 a19, unsigned __int8 a20, unsigned __int8 a21, unsigned __int8 a22, unsigned __int8 a23)
{
  v26 = a2 - 2000;
  v206 = v24;
  v207 = v23;
  v27 = *(v25 + 8 * (a2 - 31933)) - 809480802;
  v28 = *(v27 + (a18 ^ 0xC8));
  v29 = v25;
  if (a18 == 242)
  {
    v30 = 98;
  }

  else
  {
    v30 = v28 ^ 0xA5;
  }

  v31 = *(v25 + 8 * (v26 - 32685)) - 145691426;
  v32 = *(v31 + (a23 ^ 0x92));
  v33 = ((2 * ((v30 ^ 0x31) & ((-99 * (v26 ^ 0x7C)) ^ 0x14 ^ v28) ^ v30 & 0x67)) ^ 0x42) + (v28 ^ 0xEB);
  v34 = (*(v31 + (a23 ^ 0x92)) >> 2) | (*(v31 + (a23 ^ 0x92)) << 6);
  v35 = *(v31 + (a11 ^ 0x3BLL));
  v36 = (*(v31 + (a23 ^ 0x92)) & 4) != 0;
  v37 = ((v35 >> 2) | (v35 << 6)) ^ (((((v35 >> 2) & 0x99) + v36 - 2 * ((v35 >> 2) & v36)) & 0xFE) >> 1);
  v38 = *(v29 + 8 * (v26 - 32048)) - 1682872507;
  v39 = *(v29 + 8 * (v26 ^ 0x8327)) - 1064842786;
  v40 = *(v38 + (a9 ^ 0xALL)) << 16;
  v41 = ((((((((*(v27 + (a10 ^ 0xE1)) ^ 0xB) - 11) ^ ((*(v27 + (a10 ^ 0xE1)) ^ 0xF8) + 8) ^ ((*(v27 + (a10 ^ 0xE1)) ^ 0x4B) - 75)) + 11) << 8) ^ 0xB039049C) & (v37 ^ 0xFBB9FFBA) | v37 & 0x63) ^ 0xCEF3852E) & (v40 ^ 0xFF73FFFF);
  v42 = ((((*(v27 + (a14 ^ 0xB5)) ^ 0xB9) + 71) ^ ((*(v27 + (a14 ^ 0xB5)) ^ 0x8C) + 116) ^ ((*(v27 + (a14 ^ 0xB5)) ^ 0x8D) + 115)) + 11);
  v43 = ((((v42 >> 2) & 1) << 10) | 0xA6726924) ^ ((v42 << 8) ^ 0xFF2531C7) & ((*(v39 + (a12 ^ 0x6CLL)) << 24) ^ 0x3925FBC7);
  v44 = *(v38 + (a13 ^ 0xCCLL)) << 16;
  v45 = v44 ^ 0xFF24FFE7;
  v46 = v44 & 0xA80000 | 0x72000010;
  v47 = *(v38 + (a17 ^ 0xA1));
  v48 = v43 & v45 ^ v46;
  v49 = (((*(v39 + (a8 ^ 0x83)) ^ 0xB5) << 24) ^ 0xFFF5F67F) & (v40 & 0x350000 ^ 0x8133F1AD ^ v41) ^ v41 & 0x5C0A0980;
  LOBYTE(v45) = *(v27 + (a22 ^ 0xC4));
  v50 = ((-(a21 ^ 0x67) ^ ((a21 ^ 0xC4) + 93) ^ 0xB7 ^ ((a21 ^ 0x67) - ((2 * (a21 ^ 0x67)) & 0x6E) - 73)) + (a21 ^ 0xC4)) ^ *(v38 + (a21 ^ 0xD4));
  LOBYTE(v40) = ((v45 ^ 0x71) - 113) ^ ((v45 ^ 0x2E) - 46) ^ ((v45 ^ 0xE7) + 25);
  LODWORD(v38) = *(v31 + (a15 ^ 0x60));
  v51 = *(v31 + (a19 ^ 0x6BLL));
  LODWORD(v31) = *(v39 + (a20 ^ 0xFCLL)) << 24;
  v52 = (v50 << 16) & 0xB50000 ^ 0xE4919040 ^ (((((v40 + 11) << 8) ^ 0xA2361817) & (v31 ^ 0xA4F6FF3F) | v31 & 0x5D000000) ^ 0xE17C8A08) & ((v50 << 16) ^ 0xFFFDFF7F);
  v53 = ((((v51 >> 2) | (v51 << 6)) ^ 3 | 0xFFFFFE03) & ((v47 << 16) ^ 0x1E1D0A24) | (((v51 >> 2) | (v51 << 6)) ^ 0x48) & 0xDB) ^ ((v51 >> 3) & 0xC | 0x28583101);
  v54 = (((*(v39 + (a16 ^ 0x35)) ^ 0xFFFFFF87) << 24) ^ 0x1FC4445D) & (v53 ^ 0xC9800450);
  v55 = *(v29 + 8 * (v26 - 30048)) - 80220779;
  v205 = v26;
  v56 = *(v29 + 8 * (v26 ^ 0x8B0F)) - 684395850;
  v57 = *(v29 + 8 * (v26 - 32800)) - 1563915051;
  v58 = *(v29 + 8 * (v26 ^ 0x900D)) - 893937210;
  v59 = *(v57 + 4 * (v34 ^ (v32 >> 3) & 0xC ^ 0x6E)) ^ 0xFF1421C0;
  v60 = *(v55 + 4 * (HIBYTE(v49) ^ 8)) ^ HIBYTE(v49) ^ *(v56 + 4 * (v33 ^ 0x81u)) ^ ((BYTE2(v48) ^ 0xC4) + 374287926) ^ v59 ^ *(v58 + 4 * (BYTE2(v48) ^ 0x98u)) ^ (4 * v59 * v59);
  v61 = v54 ^ (v53 ^ 0x859308DD) & 0xC3B33A2;
  v62 = *(v55 + 4 * (HIBYTE(v61) ^ 0x44));
  HIDWORD(v63) = (((HIBYTE(v61) << 27) ^ 0xE7FFFFFF) & ((v54 >> 29) ^ 0xAFD88143) | (HIBYTE(v61) << 27) & 0x55555555) ^ 0xCFA3EB66;
  LODWORD(v63) = HIDWORD(v63);
  LODWORD(v38) = *(v57 + 4 * ((((v38 >> 2) | (v38 << 6)) ^ (v38 >> 3) & 0xC) ^ 0xCu)) ^ 0xFF1421C0;
  v64 = ((BYTE2(v52) ^ 0xB) + 374287926) ^ BYTE2(v52) ^ 0xB ^ v62 & 0x3727EA40 ^ *(v58 + 4 * (BYTE2(v52) ^ 0x57u)) ^ v38 ^ (((v63 >> 27) & 0x485014BF ^ v62 & 0xC8D815BF ^ 0xEB82F8E9) & ((v63 >> 27) & 0x24264240 ^ 0xDBF8FDBF) | (v63 >> 27) & 0x4240200) ^ ((v38 * v38) << ((v38 * v38) & 2) << ((v38 * v38) & 2 ^ 2)) ^ *(v56 + 4 * ((BYTE1(v49) ^ 0xFC) + ((v49 >> 7) & 0x1FC ^ 0xFFFFFE07) + 255));
  LODWORD(v38) = *(v57 + 4 * (v49 ^ 0xE4u));
  v65 = *(v57 + 4 * (v53 ^ 0xE6u));
  v66 = HIBYTE(v52) ^ *(v55 + 4 * (HIBYTE(v52) ^ 0xAE)) ^ ((BYTE2(v49) ^ 0x78) + 374287926) ^ *(v56 + 4 * (BYTE1(v43) ^ 0x90u)) ^ v65 ^ *(v58 + 4 * (BYTE2(v49) ^ 0x24u)) ^ (4 * (v65 ^ 0xFF1421C0) * (v65 ^ 0xFF1421C0));
  LODWORD(v63) = __ROR4__(HIBYTE(v48) ^ BYTE2(v61) ^ 0x12 ^ *(v58 + 4 * (BYTE2(v61) ^ 0x4Eu)) ^ *(v55 + 4 * (HIBYTE(v48) ^ 0x71)) ^ ((BYTE2(v61) ^ 0x12) + 374287926) ^ *(v56 + 4 * ((-(BYTE1(v52) ^ 0xA3) ^ ((BYTE1(v52) ^ 0xA3) - ((v52 >> 7) & 0x28) - 2065456108) ^ (254 - (BYTE1(v52) ^ 0x5D)) ^ 0x84E3A414) + 254)) ^ v38 ^ (4 * (v38 ^ 0xFF1421C0) * (v38 ^ 0xFF1421C0)) ^ 0x2393C42A, 19);
  v67 = BYTE2(v48) ^ 0xF694C3D5 ^ v60;
  LODWORD(v63) = v63 ^ 0x2962757B;
  HIDWORD(v63) = v63;
  v68 = v63 >> 13;
  v69 = *(v57 + 4 * ((v66 ^ BYTE2(v49)) ^ 0x3Fu)) ^ 0xFF1421C0;
  v70 = v69 ^ (4 * v69 * v69) ^ __ROR4__(__ROR4__(HIBYTE(v67) ^ *(v55 + 4 * (HIBYTE(v67) ^ 0xE5)) ^ *(v56 + 4 * (BYTE1(v64) ^ 0x77u)) ^ BYTE2(v68) ^ 0xC0 ^ ((BYTE2(v68) ^ 0xC0) + 374287926) ^ 0x12FBEDEE ^ *(v58 + 4 * (BYTE2(v68) ^ 0x9Cu)), 14) ^ 0x3B4A72AD, 18);
  v71 = *(v55 + 4 * (HIBYTE(v64) ^ 0x9E)) ^ HIBYTE(v64) ^ BYTE2(v66) ^ 0xD9 ^ ((BYTE2(v66) ^ 0xD9) + 374287926) ^ *(v58 + 4 * (BYTE2(v66) ^ 0x85u));
  v72 = *(v56 + 4 * (BYTE1(v60) ^ 0x3Du));
  v73 = v71 ^ 0xEA297344;
  v74 = ((v71 | v72) & 4) == 0;
  v75 = ~v72 & 4;
  if (v74)
  {
    v75 = -v75;
  }

  v76 = v75 + v73;
  v77 = *(v57 + 4 * (v68 ^ 0xD3u));
  v78 = v77 ^ v72 & 0xFFFFFFFB ^ (4 * (v77 ^ 0xFF1421C0) * (v77 ^ 0xFF1421C0)) ^ v76;
  v79 = *(v57 + 4 * (BYTE2(v48) ^ 0xD5u ^ v60));
  v80 = *(v55 + 4 * (HIBYTE(v68) ^ 0x95)) ^ HIBYTE(v68) ^ *(v58 + 4 * (BYTE2(v64) ^ 0xFFu)) ^ *(v56 + 4 * (BYTE1(v66) ^ 0x9Fu)) ^ v79 ^ BYTE2(v64) ^ 0xA3 ^ ((BYTE2(v64) ^ 0xA3) + 374287926) ^ (4 * (v79 ^ 0xFF1421C0) * (v79 ^ 0xFF1421C0)) ^ 0x4E633B55;
  v81 = *(v57 + 4 * (v64 ^ 0x2Eu));
  v82 = BYTE2(v67) ^ HIBYTE(v66) ^ (BYTE2(v67) + 374287926) ^ *(v55 + 4 * (HIBYTE(v66) ^ 0x7E)) ^ *(v58 + 4 * (BYTE2(v67) ^ 0x5Cu)) ^ v81 ^ *(v56 + 4 * (BYTE1(v68) ^ 0x70u)) ^ (4 * (v81 ^ 0xFF1421C0) * (v81 ^ 0xFF1421C0)) ^ 0x96E9B0F9;
  v83 = *(v57 + 4 * ((BYTE2(v67) ^ HIBYTE(v66) ^ (BYTE2(v67) + 54) ^ *(v55 + 4 * (HIBYTE(v66) ^ 0x7E)) ^ *(v58 + 4 * (BYTE2(v67) ^ 0x5Cu)) ^ v81 ^ *(v56 + 4 * (BYTE1(v68) ^ 0x70u)) ^ (4 * (v81 ^ 0xC0) * (v81 ^ 0xC0))) ^ 0xF9u)) ^ 0xFF1421C0;
  v84 = v83 ^ (4 * v83 * v83);
  BYTE2(v83) = BYTE2(v70) ^ 0x14;
  v85 = v78 ^ 0x37A0CC64;
  v86 = *(v55 + 4 * (((v70 ^ 0x17142896u) >> 24) ^ 0xE5)) ^ *(v58 + 4 * (BYTE2(v80) ^ 0x5Cu)) ^ BYTE2(v80) ^ (BYTE2(v80) + 374287926) ^ *(v56 + 4 * (BYTE1(v78) ^ 0x32u)) ^ ((v70 ^ 0x17142896u) >> 24) ^ 0xBFC9C1D2;
  v87 = v86 + v84 - 2 * (v86 & v84);
  v88 = *(v57 + 4 * (v70 ^ 0x96u));
  v89 = *(v56 + 4 * BYTE1(v82)) ^ *(v55 + 4 * (HIBYTE(v80) ^ 0xE5)) ^ v88 ^ (BYTE2(v85) + 374287926) ^ *(v58 + 4 * (BYTE2(v85) ^ 0x5Cu)) ^ (4 * (v88 ^ 0xFF1421C0) * (v88 ^ 0xFF1421C0));
  v90 = *(v57 + 4 * v80);
  v91 = *(v55 + 4 * (HIBYTE(v85) ^ 0xE5)) ^ HIBYTE(v85) ^ (BYTE2(v82) + 374287926) ^ *(v58 + 4 * (BYTE2(v82) ^ 0x5Cu)) ^ v90 ^ *(v56 + 4 * (BYTE1(v70) ^ 0xD6u)) ^ (4 * (v90 ^ 0xFF1421C0) * (v90 ^ 0xFF1421C0));
  v92 = (BYTE2(v83) + 374287926) ^ BYTE2(v83) ^ HIBYTE(v82) ^ *(v55 + 4 * (HIBYTE(v82) ^ 0xE5)) ^ *(v56 + 4 * (BYTE1(v80) ^ 0xFEu)) ^ *(v58 + 4 * (BYTE2(v83) ^ 0x5Cu));
  v93 = *(v57 + 4 * v85) ^ 0xFF1421C0;
  v94 = v92 ^ v93 ^ (4 * v93 * v93);
  v95 = *(v57 + 4 * ((v92 ^ v93 ^ (4 * v93 * v93)) ^ 0x68u)) ^ 0xFF1421C0;
  v96 = *(v55 + 4 * (HIBYTE(v87) ^ 0x6A)) ^ HIBYTE(v87) ^ *(v58 + 4 * (BYTE2(v89) ^ 0x16u)) ^ (2 * (BYTE2(v89) ^ 0x4A) - 2 * (((BYTE2(v89) ^ 0x4A) + 54) & (BYTE2(v89) ^ 0x4A)) + 374287926) ^ *(v56 + 4 * (BYTE1(v91) ^ 0x1Eu)) ^ v95 ^ (4 * v95 * v95);
  v97 = HIBYTE(v89);
  v98 = *(v55 + 4 * (HIBYTE(v89) ^ 0xB4));
  if ((v98 & 0x4000) != 0)
  {
    v99 = -16384;
  }

  else
  {
    v99 = 0x4000;
  }

  v100 = v99 + (v98 ^ 0xBAFAD4D);
  v101 = BYTE2(v91) ^ 0x7A;
  v102 = *(v57 + 4 * (v87 ^ 0x93u));
  v103 = *(v58 + 4 * (BYTE2(v91) ^ 0x26u)) ^ (v101 + 374287926) ^ v102 ^ *(v56 + 4 * (BYTE1(v94) ^ 0xE1u)) ^ v100 ^ (4 * (v102 ^ 0xFF1421C0) * (v102 ^ 0xFF1421C0));
  v104 = HIBYTE(v80) ^ 0x95 ^ (v89 ^ BYTE2(v85));
  v105 = v91 ^ BYTE2(v82);
  v106 = HIBYTE(v91);
  v107 = BYTE2(v94) ^ 0x3E;
  v108 = *(v55 + 4 * (v106 ^ 0xB9)) ^ (-374287927 - v107) ^ *(v56 + 4 * (BYTE1(v87) ^ 0x7Au)) ^ *(v57 + 4 * v104) ^ *(v58 + 4 * (BYTE2(v94) ^ 0x62u)) ^ (4 * (*(v57 + 4 * v104) ^ 0xFF1421C0) * (*(v57 + 4 * v104) ^ 0xFF1421C0));
  v109 = *(v55 + 4 * HIBYTE(v94)) ^ HIBYTE(v94) ^ *(v58 + 4 * (BYTE2(v87) ^ 0x11u));
  v110 = BYTE2(v87) ^ 0x16480C4D ^ ((BYTE2(v87) ^ 0x4D) + 470582) & 0xFFFFE3FF;
  v111 = (-(v109 ^ 0xEA2973DA) ^ (v110 - (v109 ^ 0xEA2973DA ^ v110)) ^ 0x61B58E3C ^ ((v109 ^ 0xEA2973DA) - 2 * ((v109 ^ 0xEA2973DA) & 0x61B58E3D ^ v109 & 1) + 1639288380)) + v110;
  v112 = *(v57 + 4 * (v105 ^ 0xFBu)) ^ 0xFF1421C0;
  v113 = v112 ^ *(v56 + 4 * (BYTE1(v89) ^ 0x31u)) ^ (4 * v112 * v112) ^ v111;
  v114 = BYTE2(v103) ^ 0x7A;
  v115 = *(v57 + 4 * (v113 ^ 0xCBu));
  v116 = *(v55 + 4 * (HIBYTE(v96) ^ 0x48)) ^ (v114 + 374287926) ^ *(v58 + 4 * (BYTE2(v103) ^ 0x26u)) ^ *(v56 + 4 * (BYTE1(v108) ^ 0x68u)) ^ v115 ^ (4 * (v115 ^ 0xFF1421C0) * (v115 ^ 0xFF1421C0));
  v117 = HIBYTE(v103) ^ BYTE2(v108) ^ 0xE9 ^ ((BYTE2(v108) ^ 0xE9) + 374287926) ^ *(v55 + 4 * (HIBYTE(v103) ^ 0x3D)) ^ *(v58 + 4 * (BYTE2(v108) ^ 0xB5u)) ^ 0xBFC9C10A ^ *(v56 + 4 * (BYTE1(v113) ^ 0x6Bu));
  v118 = *(v57 + 4 * (v96 ^ 0x8Cu)) ^ 0xFF1421C0;
  v119 = (v118 ^ (4 * v118 * v118)) + v117 - 2 * ((v118 ^ (4 * v118 * v118)) & v117);
  v120 = *(v57 + 4 * (v97 ^ v101 ^ 0x7B ^ v103));
  v121 = *(v55 + 4 * (HIBYTE(v108) ^ 0x45)) ^ HIBYTE(v108) ^ *(v56 + 4 * (BYTE1(v96) ^ 0x99u)) ^ v120 ^ *(v58 + 4 * (BYTE2(v113) ^ 0xE4u)) ^ (((v113 >> 15) & 0x6C ^ 0x60) + (BYTE2(v113) ^ 0x164F2E8E)) ^ (4 * (v120 ^ 0xFF1421C0) * (v120 ^ 0xFF1421C0));
  v122 = *(v57 + 4 * (v106 ^ v107 ^ v108 ^ 0xE)) ^ 0xFF1421C0;
  v123 = BYTE2(v96) ^ ((BYTE2(v96) ^ 0x32) + 374287926) ^ HIBYTE(v113) ^ *(v58 + 4 * (BYTE2(v96) ^ 0x6Eu)) ^ *(v56 + 4 * (BYTE1(v103) ^ 0xAu)) ^ *(v55 + 4 * (HIBYTE(v113) ^ 0x65)) ^ 0xB912A921 ^ (4 * v122 * v122 + v122 - 2 * ((4 * v122 * v122) & v122));
  v124 = *(v57 + 4 * ((BYTE2(v96) ^ ((BYTE2(v96) ^ 0x32) + 54) ^ HIBYTE(v113) ^ *(v58 + 4 * (BYTE2(v96) ^ 0x6Eu)) ^ *(v56 + 4 * (BYTE1(v103) ^ 0xAu)) ^ *(v55 + 4 * (HIBYTE(v113) ^ 0x65))) ^ 0x21u ^ (4 * v122 * v122 + v122 - 2 * ((4 * v122 * v122) & v122)))) ^ 0xFF1421C0;
  v125 = *(v55 + 4 * (HIBYTE(v116) ^ 0x6A)) ^ HIBYTE(v116) ^ *(v58 + 4 * (BYTE2(v119) ^ 0x14u)) ^ BYTE2(v119) ^ 0x48 ^ ((BYTE2(v119) ^ 0x48) + 374287926) ^ *(v56 + 4 * (BYTE1(v121) ^ 0x21u)) ^ v124 ^ (4 * v124 * v124);
  v126 = *(v57 + 4 * (HIBYTE(v96) ^ v114 ^ 0x31 ^ v116)) ^ 0xFF1421C0;
  v127 = HIBYTE(v121);
  v128 = *(v57 + 4 * (v119 ^ 0xD8u));
  v129 = *(v58 + 4 * (BYTE2(v123) ^ 0x5Cu)) ^ *(v55 + 4 * (HIBYTE(v121) ^ 0xE6)) ^ *(v56 + 4 * (BYTE1(v116) ^ 0x51u)) ^ v128 ^ (BYTE2(v123) + 374287926) ^ (4 * (v128 ^ 0xFF1421C0) * (v128 ^ 0xFF1421C0));
  v130 = (v121 ^ BYTE2(v113)) ^ 0x4E;
  v131 = HIBYTE(v119) ^ *(v58 + 4 * (BYTE2(v121) ^ 0x66u)) ^ BYTE2(v121) ^ 0x3A ^ ((BYTE2(v121) ^ 0x3A) + 374287926) ^ *(v56 + 4 * (BYTE1(v123) ^ 0xFEu)) ^ *(v55 + 4 * (HIBYTE(v119) ^ 0x29)) ^ 0xDC3C6D9E ^ (4 * v126 * v126 + v126 - 2 * ((4 * v126 * v126) & v126));
  v132 = *(v55 + 4 * (HIBYTE(v123) ^ 0xE5)) ^ ((BYTE2(v116) ^ 0xF9) + 374287926) ^ *(v58 + 4 * (BYTE2(v116) ^ 0xA5u)) ^ *(v57 + 4 * v130) ^ *(v56 + 4 * (BYTE1(v119) ^ 0x38u)) ^ (4 * (*(v57 + 4 * v130) ^ 0xFF1421C0) * (*(v57 + 4 * v130) ^ 0xFF1421C0));
  HIDWORD(v133) = *(v58 + 4 * (BYTE2(v131) ^ 0x5Cu));
  LODWORD(v133) = HIDWORD(v133);
  v134 = v125 ^ 0x8010DB26;
  v135 = (v125 ^ 0x8010DB26) >> 24;
  v136 = *(v57 + 4 * (BYTE2(v116) ^ HIBYTE(v123) ^ 0x6E ^ (*(v55 + 4 * (HIBYTE(v123) ^ 0xE5)) ^ ((BYTE2(v116) ^ 0xF9) + 54) ^ *(v58 + 4 * (BYTE2(v116) ^ 0xA5u)) ^ *(v57 + 4 * v130) ^ *(v56 + 4 * (BYTE1(v119) ^ 0x38u)) ^ (4 * (*(v57 + 4 * v130) ^ 0xC0) * (*(v57 + 4 * v130) ^ 0xC0)))));
  v137 = *(v56 + 4 * (BYTE1(v129) ^ 0xFDu)) ^ *(v55 + 4 * (v135 ^ 0xE5)) ^ v136 ^ (4 * (v136 ^ 0xFF1421C0) * (v136 ^ 0xFF1421C0)) ^ __ROR4__((v133 >> 5) ^ (((BYTE2(v131) + 374287926) ^ BYTE2(v131)) >> 5) ^ (((BYTE2(v131) + 374287926) ^ BYTE2(v131)) << 27) ^ 0x1AA93AB5, 27);
  v138 = BYTE1(v125) ^ 0x25;
  v139 = BYTE2(v132) ^ 0x14;
  v140 = HIBYTE(v129);
  v141 = *(v55 + 4 * (HIBYTE(v129) ^ 0x15)) ^ (v139 + 374287926) ^ *(v58 + 4 * (v139 + ((v132 >> 15) & 0xB8 ^ 0xFFFFFFD7) + 93)) ^ *(v56 + 4 * v138) ^ *(v57 + 4 * v131) ^ (4 * (*(v57 + 4 * v131) ^ 0xFF1421C0) * (*(v57 + 4 * v131) ^ 0xFF1421C0));
  v142 = *(v57 + 4 * (v127 ^ 0xF6 ^ (v129 ^ BYTE2(v123))));
  v143 = HIBYTE(v132) ^ (BYTE2(v134) + 374287926) ^ *(v55 + 4 * (HIBYTE(v132) ^ 0x83)) ^ *(v58 + 4 * (BYTE2(v134) ^ 0x5Cu)) ^ v142 ^ *(v56 + 4 * (BYTE1(v131) ^ 0xFEu)) ^ (4 * (v142 ^ 0xFF1421C0) * (v142 ^ 0xFF1421C0));
  v144 = HIBYTE(v131) ^ BYTE2(v129) ^ 0xAB ^ ((BYTE2(v129) ^ 0xAB) + 374287926) ^ *(v58 + 4 * (BYTE2(v129) ^ 0xF7u)) ^ *(v56 + 4 * (BYTE1(v132) ^ 0xE5u)) ^ *(v55 + 4 * (HIBYTE(v131) ^ 0xE5));
  v145 = *(v57 + 4 * v134) ^ 0xFF1421C0;
  v146 = v144 ^ v145 ^ (4 * v145 * v145) ^ 0xA81DB21F;
  v147 = *(v57 + 4 * ((v143 ^ BYTE2(v134)) ^ 0xDBu)) ^ 0xFF1421C0;
  v148 = *(v55 + 4 * (HIBYTE(v137) ^ 0x14)) ^ HIBYTE(v137) ^ BYTE2(v146) ^ *(v58 + 4 * (BYTE2(v146) ^ 0x5Cu)) ^ ((BYTE2(v146) ^ 0x164F2E36) + ((v146 >> 15) & 0x6C)) ^ *(v56 + 4 * BYTE1(v141)) ^ v147 ^ (4 * v147 * v147);
  v149 = *(v57 + 4 * (v135 ^ 0xDF ^ v137)) ^ 0xFF1421C0;
  v150 = BYTE2(v141) ^ 0x1B ^ HIBYTE(v146) ^ ((BYTE2(v141) ^ 0x1B) + 374287926) ^ *(v55 + 4 * (HIBYTE(v146) ^ 0xE5)) ^ *(v58 + 4 * (BYTE2(v141) ^ 0x47u)) ^ *(v56 + 4 * (BYTE1(v143) ^ 0x8Bu)) ^ v149 ^ (4 * v149 * v149);
  v151 = *(v57 + 4 * v146);
  v152 = *(v55 + 4 * (HIBYTE(v141) ^ 0x92)) ^ HIBYTE(v141) ^ ((BYTE2(v143) ^ 0xB6) + 374287926) ^ *(v58 + 4 * (BYTE2(v143) ^ 0xEAu)) ^ v151 ^ *(v56 + 4 * (BYTE1(v137) ^ 0x19u)) ^ (4 * (v151 ^ 0xFF1421C0) * (v151 ^ 0xFF1421C0));
  v153 = *(v57 + 4 * (v140 ^ v139 ^ 0xEB ^ v141));
  v154 = ((BYTE2(v137) ^ 0xBF) + 374287926) ^ HIBYTE(v143) ^ *(v55 + 4 * (HIBYTE(v143) ^ 0x24)) ^ v153 ^ *(v56 + 4 * BYTE1(v146)) ^ *(v58 + 4 * (BYTE2(v137) ^ 0xE3u)) ^ (4 * (v153 ^ 0xFF1421C0) * (v153 ^ 0xFF1421C0)) ^ 0xCC6ECEB0;
  v155 = (BYTE2(v150) ^ 0xA) + 374287926;
  v156 = BYTE2(v137) ^ 0x6DD484E ^ v154;
  v157 = *(v57 + 4 * (BYTE2(v137) ^ 0x4Eu ^ v154)) ^ 0xFF1421C0;
  v158 = *(v55 + 4 * (HIBYTE(v148) ^ 0xE1)) ^ HIBYTE(v148) ^ *(v56 + 4 * (BYTE1(v152) ^ 0x9Du)) ^ *(v58 + 4 * (BYTE2(v150) ^ 0x56u)) ^ v155 & 0x104828A9 ^ v157 ^ (4 * v157 * v157);
  v159 = *(v55 + 4 * (HIBYTE(v150) ^ 0x66));
  v160 = v158 ^ ((v155 & 0x6070756 ^ (HIWORD(v150) & 0x56 | 0x524C5E21) ^ 0x8D820098) & (HIWORD(v150) & 0xA9 ^ 0x9DC65092) | (v155 & 0x6070756 ^ (HIWORD(v150) & 0x56 | 0x524C5E21)) & 0x10944);
  v161 = BYTE1(v154) ^ 0xB6;
  v162 = *(v58 + 4 * (BYTE2(v152) ^ 0xE0u)) ^ ((BYTE2(v152) ^ 0xBC) + 374287926) ^ ((BYTE2(v152) ^ 0xBC) - ((2 * (BYTE2(v152) ^ 0xBC)) & 0x164) - 1956117838) ^ ((((v159 & 0x200) - (HIBYTE(v150) ^ 0x6C765651)) ^ (((2 * ((HIBYTE(v150) ^ 0x6C765651) & 0x1F ^ (HIBYTE(v150) | 0xFFFFFFFB))) ^ 0xC8242809) + 1998273820 + (HIBYTE(v150) ^ 0x6C765651) - (v159 & 0x200)) ^ ((v159 & 0xFFFFFDFF ^ 0xBAFAD4D) - (((HIBYTE(v150) ^ 0x6C765651) - (v159 & 0x200)) ^ v159 & 0xFFFFFDFF ^ 0xBAFAD4D)) ^ 0x771B3D1B) + (v159 & 0xFFFFFDFF ^ 0xBAFAD4D));
  v163 = (*(v56 + 4 * v161) ^ 0x2F458946) + (v162 ^ 0x6988A12) + ((2 * ((v162 ^ 0x6988A12) & (*(v56 + 4 * v161) ^ 0x512392AB) ^ v162 & 0x7E661BED)) ^ 0xF3FFEBFF);
  v164 = *(v57 + 4 * (v148 ^ 0xF9u)) ^ 0xFF1421C0;
  v165 = v164 ^ (4 * v164 * v164) ^ (v163 + 1);
  v166 = BYTE2(v156);
  v167 = *(v57 + 4 * (v150 ^ 0xE6u));
  v168 = *(v58 + 4 * (BYTE2(v156) ^ 0x5Cu)) ^ __ROR4__((((HIBYTE(v152) << 28) ^ 0x4E479A3F) & ((v152 >> 28) ^ 0xEE479A34) & 0xEFFFFFFF | ((HIBYTE(v152) & 1) << 28)) ^ 0x32992A28, 28) ^ *(v55 + 4 * (HIBYTE(v152) ^ 0x3E)) ^ (BYTE2(v156) + 374287926) ^ *(v56 + 4 * (BYTE1(v148) ^ 0x2Fu)) ^ v167;
  v156 >>= 24;
  v169 = *(v55 + 4 * (v156 ^ 0xE5));
  v170 = v168 ^ (4 * (v167 ^ 0xFF1421C0) * (v167 ^ 0xFF1421C0));
  v171 = (BYTE2(v148) ^ 0xBA) + 374287926;
  HIDWORD(v133) = v171 ^ HIWORD(v148);
  LODWORD(v133) = v171 ^ BYTE2(v148);
  v172 = (v156 ^ 0x6C7656D2) + (v169 ^ 0xBAFAD4D) + ((2 * ((v169 ^ 0x60425091) & (v156 ^ 0x6C7656D2) ^ v156 & 0xDC)) ^ 0x2F37565F);
  v173 = *(v57 + 4 * ((v152 ^ BYTE2(v143)) ^ 0xCDu)) ^ 0xFF1421C0;
  v174 = v170 ^ v166;
  v175 = *(v58 + 4 * (BYTE2(v148) ^ 0xE6u)) ^ __ROR4__((v133 >> 5) ^ 0x9D094A7C, 27) ^ *(v56 + 4 * (BYTE1(v150) ^ 0xD2u)) ^ v173 ^ (4 * v173 * v173) ^ (v172 + 1);
  v176 = ((v175 & 0x69304979 ^ 0x9000831) + (v175 ^ 0x74F375C8)) ^ v175 & 0x69304979;
  v177 = *(&off_1010A0B50 + v205 - 29488) - 1950760635;
  v178 = *&v177[4 * (HIBYTE(v160) ^ 0x62)];
  v179 = *&v177[4 * (HIBYTE(v165) ^ 0x94)];
  v180 = *&v177[4 * ((((((v174 ^ 0x9AF6F713) >> (BYTE1(v80) & 0x18)) - ((2 * ((v174 ^ 0x9AF6F713) >> (BYTE1(v80) & 0x18))) & 0x9758166C) + 1269566262) ^ 0x4BAC0B36) >> (BYTE1(v80) & 0x18 ^ 0x18)) ^ 0xF2)];
  v181 = *&v177[4 * ((HIBYTE(v176) ^ 9) - ((v176 >> 23) & 0x1E4)) + 968];
  v182 = -684272557 * v179 + 720911370;
  LODWORD(v177) = -684272557 * v181 + 720911370;
  v183 = 968270488 * v179 + 1472323664;
  v184 = 968270488 * v181 + 1472323664;
  v185 = *(&off_1010A0B50 + v205 - 31416) - 480649859;
  v186 = *&v185[4 * (BYTE2(v165) ^ 0x2D)] ^ 0xDD911781;
  v187 = *(&off_1010A0B50 + (v205 ^ 0x8003)) - 1131580966;
  v188 = *(&off_1010A0B50 + (v205 ^ 0x8D7B)) - 2037813086;
  LOBYTE(v142) = v176;
  v189 = (968270488 * v178 + 1472323664) & 0x559AF978 ^ (-684272557 * v178 + 720911370) ^ v186 ^ (16 * v186) ^ ((BYTE1(v170) ^ 0x195DC30F) - 314996840 + *&v187[4 * ((v170 >> 7) | 0xFFFFFF7F) + 260 + 4 * (BYTE1(v170) ^ 0xF7)]) ^ *&v188[4 * (v176 ^ 0x71)];
  v190 = *&v185[4 * (BYTE2(v170) ^ 0xBB)] ^ 0xEEDF5A2C;
  v191 = v182 ^ v160 ^ v190 ^ v183 & 0x559AF978 ^ (16 * v190);
  v192 = *&v185[4 * (BYTE2(v176) ^ 0x4D)];
  v193 = v191 ^ *&v188[4 * (v160 ^ 0x3B)] ^ (*&v187[4 * (BYTE1(v176) ^ 0x48)] + (BYTE1(v176) ^ 0x195DC3F0) - 314996840);
  LODWORD(v185) = *&v185[4 * (BYTE2(v160) ^ 0x20)];
  v194 = (-684272557 * v180 + 720911370) ^ v165 ^ v192 ^ 0xD5A6A9E6 ^ *&v188[4 * (v165 ^ 0xCB)] ^ (968270488 * v180 + 1472323664) & 0x559AF978 ^ (16 * (v192 ^ 0xD5A6A9E6)) ^ ((BYTE1(v160) ^ 0x195DC31F) - 314996840 + *&v187[4 * (BYTE1(v160) ^ 0xA7)]);
  v195 = v177 ^ ((-(v174 ^ 0x13) ^ (638364146 - (v174 ^ 0x260CA9E1)) ^ 0xB854AA16 ^ ((v174 ^ 0x13) - ((2 * (v174 ^ 0x13)) & 0x2C) - 1202410986)) + 638364146) ^ v185 ^ 0x14E006C ^ *&v188[4 * (v174 ^ 0x53)] ^ v184 & 0x559AF978 ^ (16 * (v185 ^ 0x14E006C)) ^ ((BYTE1(v165) ^ 0x195DC326) - 314996840 + *&v187[4 * (BYTE1(v165) ^ 0x9E)]);
  v196 = *(&off_1010A0B50 + (v205 ^ 0x88E5)) - 690523346;
  v206[7] = v196[v193 ^ 0x3FLL] ^ ((v193 ^ 0xEC) + 1) ^ v193 ^ 0x42;
  v197 = *(&off_1010A0B50 + v205 - 30613) - 1912728138;
  v198 = v197[BYTE1(v195) ^ 0xF2];
  v206[14] = ((v198 >> 2) | (v198 << 6)) ^ (4 * (v198 >> 2)) ^ 0x4F;
  v199 = v197[BYTE1(v193) ^ 0xE6];
  v206[6] = ((v199 >> 2) | (v199 << 6)) ^ (4 * (v199 >> 2)) ^ 0x3B;
  v200 = v197[BYTE1(v189) ^ 0x4DLL];
  v206[2] = ((v200 >> 2) | (v200 << 6)) ^ (4 * (v200 >> 2)) ^ 0x81;
  v201 = v197[BYTE1(v194) ^ 0x78];
  HIDWORD(v133) = ~v201;
  LODWORD(v133) = (v201 ^ 0x20) << 24;
  v206[10] = (4 * ((v133 >> 26) - ((2 * (v133 >> 26)) & 0xFB)) + 116) ^ ((v133 >> 26) - ((2 * (v133 >> 26)) & 0x3C) - 98);
  v202 = *(&off_1010A0B50 + v205 - 32744) - 1321472307;
  *v206 = v202[HIBYTE(v189) ^ 0x8DLL] ^ 0x13;
  v203 = *(&off_1010A0B50 + (v205 ^ 0x8DB1)) - 1470070854;
  v206[5] = BYTE2(v193) ^ 0xE2 ^ v203[BYTE2(v193) ^ 0x74];
  v206[9] = BYTE2(v194) ^ 0xC6 ^ v203[BYTE2(v194) ^ 0xELL];
  v206[12] = v202[HIBYTE(v195) ^ 0xBELL] ^ 0xD1;
  v206[13] = BYTE2(v195) ^ 0x82 ^ v203[BYTE2(v195) ^ 0x36];
  v206[4] = v202[HIBYTE(v193) ^ 0x74] ^ 0x3F;
  v206[3] = v189 ^ v142 ^ ((v189 ^ v142 ^ 0xB9) + 1) ^ 0xD3 ^ v196[(v189 ^ v142) ^ 0x6ALL];
  v206[11] = ((2 * (v194 ^ 0x57) - 2 * (((v194 ^ 0x57) + 1) & (v194 ^ 0x57))) | 1) ^ v196[v194 ^ 0x84] ^ 0xEF;
  v206[8] = v202[HIBYTE(v194) ^ 5] ^ 0x38;
  v206[1] = BYTE2(v189) ^ 0x31 ^ v203[BYTE2(v189) ^ 0x6ALL];
  v206[15] = v195 ^ (-2 - (v195 ^ 0x35)) ^ 0x90 ^ v196[v195 ^ 0xE6];
  return (*(v207 + 8 * v205))(a1);
}

uint64_t sub_100178224(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v8 = (((a6 ^ 0x638CFA28) - 1670183464) ^ ((a6 ^ 0x895E5A08) + 1990305272) ^ ((a6 ^ 0xF7AE265C) + 139581860)) - 1999377228 + (((*(v6 + 88) ^ 0xCD83BB54) + 847004844) ^ ((*(v6 + 88) ^ 0x2DF85D2) - 48203218) ^ ((((a1 ^ 0x581F) - 769632623) ^ *(v6 + 88)) + 769607430));
  v9 = (v8 ^ 0xAA842246) & (2 * (v8 & 0xB2252044)) ^ v8 & 0xB2252044;
  v10 = ((2 * (v8 ^ 0x8A8E62C6)) ^ 0x71568504) & (v8 ^ 0x8A8E62C6) ^ (2 * (v8 ^ 0x8A8E62C6)) & 0x38AB4282;
  v11 = v10 ^ 0x8A94282;
  v12 = (v10 ^ 0x10000000) & (4 * v9) ^ v9;
  v13 = ((4 * v11) ^ 0xE2AD0A08) & v11 ^ (4 * v11) & 0x38AB4280;
  v14 = (v13 ^ 0x20A90200) & (16 * v12) ^ v12;
  v15 = ((16 * (v13 ^ 0x18024082)) ^ 0x8AB42820) & (v13 ^ 0x18024082) ^ (16 * (v13 ^ 0x18024082)) & 0x38AB4280;
  v16 = v14 ^ 0x38AB4282 ^ (v15 ^ 0x8A00000) & (v14 << 8);
  *(v6 + 88) = v8 ^ (2 * ((v16 << 16) & 0x38AB0000 ^ v16 ^ ((v16 << 16) ^ 0x42820000) & (((v15 ^ 0x300B4282) << 8) & 0x38AB0000 ^ 0x10A90000 ^ (((v15 ^ 0x300B4282) << 8) ^ 0x2B420000) & (v15 ^ 0x300B4282)))) ^ 0xDF0B233C;
  return (*(v7 + 8 * a1))();
}

void sub_10017842C()
{
  if (v0 == 556295063)
  {
    v1 = -371865839;
  }

  else
  {
    v1 = 371891401;
  }

  *(v2 + 32) = v1;
}

uint64_t sub_1001784C0(uint64_t a1, int a2)
{
  v6 = *(v3 + 40);
  STACK[0x2A0] = v3;
  v7 = *(v3 + 16);
  LODWORD(STACK[0x3C8]) = (a2 - 1655460445) & 0x62ACBAF1;
  v8 = veorq_s8(*v7, xmmword_100F526C0);
  *(v4 - 128) = veorq_s8(*v6, xmmword_100F526B0);
  *(v4 - 112) = v8;
  v9 = *(v2 + 8 * (a2 | (32 * (v5 != 0))));
  LODWORD(STACK[0x3C4]) = -42900;
  return v9();
}

uint64_t sub_10017852C()
{
  v3 = *(STACK[0x298] + 32) ^ v1;
  v5 = v3 == (((v0 - 18266) | 0x212) ^ 0x3D4B6CE4) || (v3 & 0xF) != ((v0 - 18266) ^ 0x6F4C) - 23142;
  v6 = *(v2 + 8 * ((239 * v5) ^ v0));
  LODWORD(STACK[0x3CC]) = -42899;
  return v6();
}

uint64_t sub_100178594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * (((v6 == 0) * v2) ^ v4)))();
}

uint64_t sub_10017867C(double a1, __n128 a2, uint64_t a3, int a4)
{
  a2.n128_u16[0] = 31611;
  a2.n128_u8[2] = 123;
  a2.n128_u8[3] = 123;
  a2.n128_u8[4] = 123;
  a2.n128_u8[5] = 123;
  a2.n128_u8[6] = 123;
  a2.n128_u8[7] = 123;
  return (*(v5 + 8 * a4))(8 - (v4 & 0x18), xmmword_100F523B0, a2);
}

uint64_t sub_10017872C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13)
{
  v15 = v14 ^ 0x8473;
  HIDWORD(a10) = (((v15 - 12389) | 0x3006) - 756791527) & 0x2D1BAAFE;
  return (*(v13 + 8 * v15))(136118272, 1686634496, 1686110208, 493158400, 3306848642, 751781523, &a13, -3923101453, a9, a10, a1);
}

uint64_t sub_100178878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v9 = ((((v5 - 41437) ^ 0x89E) + (v8 ^ 0xF0AA9749) + 257249005) ^ ((v8 ^ 0xAE281D4C) + 1373102772) ^ ((v8 ^ 0xB7574D14) + 1219015404)) + 237752945;
  v10 = v9 < a5;
  v11 = v6 - 1242651019 < v9;
  if (v6 - 1242651019 < a5 != v10)
  {
    v11 = v10;
  }

  return (*(v7 + 8 * ((14 * !v11) | v5)))();
}

uint64_t sub_100178A58()
{
  v2 = *(v1 + 8 * (((v0 + 9795) ^ 0x664D) + v0));
  STACK[0x3A8] = STACK[0x398];
  return v2();
}

uint64_t sub_100178A90()
{
  LODWORD(STACK[0x470]) = STACK[0x4A4];
  STACK[0x480] = STACK[0x5C0];
  LODWORD(STACK[0x6D4]) = -371865839;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_100178B4C@<X0>(int a1@<W5>, int a2@<W7>, uint64_t a3@<X8>)
{
  v12 = *(v5 + v4 - 327984225) ^ a2;
  v13 = ((*(v5 + v4 + v8) ^ a2) << 24) | ((*(v5 + v4 + v11) ^ a2) << 16) | ((*(v5 + v4 - 327984226) ^ (((v3 - 1) | v7) + 39)) << 8) | v12;
  *(a3 + 4 * (((((v5 ^ 0x3266F3BE) - 569006042) ^ v5 ^ ((v5 ^ 0x82A12D2C) + 1859286712) ^ ((v5 ^ 0x5C340709) - 1337500525) ^ ((v5 ^ 0xFF7F7DFF) + 319563365)) >> 2) ^ 0x4E32919)) = v13 - 2 * (v13 & v9 ^ v12 & v10) + a1;
  return (*(v6 + 8 * ((((v5 - 327984224) > 0x3F) | (8 * ((v5 - 327984224) > 0x3F))) ^ v3)))(327984244);
}

uint64_t sub_100178FC4(uint64_t a1)
{
  v7 = -1802333311 * v2;
  v8 = ((-27775 * v2) >> 8);
  *(v5 - 184) = v1;
  v9 = *(*(v4 + 8 * (v6 - 5186)) + (v8 ^ 0x53) - 1123189558);
  *(v5 - 120) = v3;
  LODWORD(v8) = ((((7 * (v6 ^ 0x34) + 56) ^ ((-27775 * v2) >> 8)) - 5) ^ v8 ^ v9) << 8;
  v10 = *(*(v4 + 8 * (v6 - 1939)) + ((-127 * v2) ^ 1) - 257525007);
  v11 = v4;
  LODWORD(v8) = (((((v10 >> 2) & 0x35 ^ v10) & 0xF8 ^ 0xFFFFFF7F) & ((*(*(v4 + 8 * (v6 - 3226)) + (BYTE2(v7) ^ 0x75) - 1227628110) << 16) ^ 0x741DE598) | ((v10 >> 2) & 0x35 ^ v10) & 0x67) ^ 0x1110968) & (v8 ^ 0xFFFF95FF) | v8 & 0x1300;
  LODWORD(v8) = (v8 ^ 0x8A0A004E) & (((*(*(v4 + 8 * (v6 ^ 0x15D1)) + (HIBYTE(v7) ^ 0x4CLL) - 1704454315) << 24) - 1593835520) ^ 0x5F8E89DF) ^ v8 & 0x4F717620;
  *(v5 - 124) = v8;
  LODWORD(v8) = v8 ^ 0xF3C51CE9;
  v12 = *(v4 + 8 * (v6 - 3483)) - 1726700375;
  v13 = (*(v12 + (v2[6] ^ 0x39)) ^ 0x5B) << 24;
  v14 = *(v4 + 8 * (v6 ^ 0x1A33)) - 824331831;
  v15 = ((*(v14 + (v2[1] ^ 0xA4)) << 16) ^ 0x8EB01F18) & (v13 ^ 0xFEFF7FD8) | v13 & 0x71000000;
  v16 = v2[10];
  v17 = *(v11 + 8 * (v6 - 3957));
  *(v5 - 176) = a1;
  v17 -= 1017754623;
  v18 = *(v11 + 8 * (v6 - 5957)) - 472922703;
  v19 = 99 * *(v18 + (v2[4] ^ 0xC5)) - 99;
  LODWORD(v16) = (v15 & 0xA4050000 | (((v19 >> 2) & 0x30 ^ v19 ^ 0x85A7FFF5) & (((*(v17 + (v16 ^ 8)) ^ v16) << 8) ^ 0x85A79BFF) ^ 0xDE5D32BF) & (v15 ^ 0x840CE0E7)) ^ 0x270B2D68;
  v20 = 99 * *(v18 + (v2[7] ^ 0xC5)) - 99;
  v21 = (v20 >> 2) & 0x30;
  v22 = v21 ^ ~v20;
  v23 = (v21 ^ v20) & 0x40;
  v24 = *(v12 + (v2[15] ^ 0x39));
  v25 = ((*(v14 + (v2[11] ^ 0xA4)) << 16) ^ 0x3525585) & ((v24 << 24) ^ 0x15FF7DD5) & 0x3FFFFFF | ((v24 >> 2) << 26);
  v26 = ((((((*(v17 + (*v2 ^ 8)) ^ *v2) << 8) ^ 0x75E922A5) & (v25 ^ 0x76FAAA22) | v25 & 0x8A160000) ^ 0xD646881A) & (*&v22 | 0xFFFFFF00) | v23) ^ v8;
  *(v5 - 136) = v8;
  v27 = 99 * *(v18 + (v2[8] ^ 0xC5)) - 99;
  v28 = (*(v17 + (v2[2] ^ 8)) ^ v2[2]) << 8;
  v29 = *(v14 + (v2[3] ^ 0xA4)) << 16;
  v30 = ((v27 >> 2) & 0x30 ^ v27) & 0xBE ^ 0x906B2566 ^ ((v28 & 0x9C00 | (((v29 ^ 0xFF281131) & ((*(v12 + (v2[12] ^ 0x39)) << 24) ^ 0xB56B1131) | v29 & 0x940000) ^ 0xCBA97282) & (v28 ^ 0xFFFF83F7)) ^ 0x1ED793F2) & ((v27 >> 2) & 0x30 ^ v27 ^ 0xFFFFFFF7);
  v31 = v30 ^ v16;
  v32 = v26 ^ v30 ^ v16;
  LODWORD(v18) = 99 * *(v18 + (v2[9] ^ 0xC5)) - 99;
  v33 = (*(v17 + (v2[5] ^ 8)) ^ v2[5]) << 8;
  LODWORD(v14) = *(v14 + (v2[13] ^ 0xA4)) << 16;
  v34 = (((v18 >> 2) & 0x30 | 2) ^ v18) & 0x5E ^ ((v33 & 0x1500 | (((((*(v12 + (v2[14] ^ 0x39)) ^ 4) << 24) ^ 0x99B13610) & (v14 ^ 0xFFB876B1) | v14 & 0x4E0000) ^ 0xAC9DDCA3) & (v33 ^ 0xFFFF9ABB)) ^ 0xFC492F12) & (((v18 >> 2) & 0x30 | 2) ^ v18 ^ 0xFFFFFFBD) ^ 0xDBD7B07D ^ v32;
  HIDWORD(v35) = v34 ^ v16;
  LODWORD(v35) = v34 ^ v15;
  HIDWORD(v35) = (v35 >> 19) ^ 0xBA4F75E7;
  LODWORD(v35) = HIDWORD(v35);
  LODWORD(v12) = v35 >> 13;
  v36 = *(v11 + 8 * (v6 - 3749)) - 730819759;
  v37 = *(v11 + 8 * (v6 ^ 0x1D5D)) - 1478794391;
  v38 = v12 ^ v31;
  v39 = *(v11 + 8 * (v6 - 1773)) - 152422199;
  v40 = *(v11 + 8 * (v6 - 5940)) - 1626457526;
  v41 = v30 ^ v8 ^ 0x50F6E0A9;
  v42 = *(v37 + 4 * (HIBYTE(v32) ^ 0x51)) ^ __ROR4__(*(v36 + 4 * ((v12 ^ 0x4F467540) >> 16)), 26) ^ (v30 ^ v8) ^ 0xA9 ^ *(v39 + 4 * (((v38 ^ 0x7ADA) >> 8) ^ 0xA0u)) ^ *(v40 + 4 * ((v30 ^ v8) ^ 0xD7u)) ^ ((v38 ^ 0x7ADA) >> 8) ^ 0xB9 ^ ((((v38 ^ 0x7ADA) >> 8) ^ 0xB9) + 1132737353);
  v43 = *(v39 + 4 * (((v12 ^ 0x7540) >> 8) ^ 0x19u)) ^ *(v37 + 4 * HIBYTE(v41)) ^ *(v40 + 4 * (v38 ^ 0x93u)) ^ __ROR4__(*(v36 + 4 * (BYTE2(v32) ^ 0x2Au)), 26) ^ v38 ^ 0xDA ^ ((v12 ^ 0x7540) >> 8) ^ (((v12 ^ 0x7540) >> 8) + 1132737353);
  LODWORD(v18) = (v32 ^ BYTE1(v41)) ^ (BYTE1(v41) + 1132737353) ^ *(v37 + 4 * ((v12 ^ 0x4F467540) >> 24)) ^ __ROR4__(*(v36 + 4 * (BYTE2(v38) ^ 0xA6u)), 26);
  v44 = *(v39 + 4 * (BYTE1(v41) ^ 0x19u)) ^ *(v40 + 4 * (v32 ^ 0x89u));
  v45 = BYTE1(v32);
  v46 = v18 ^ v44;
  LODWORD(v12) = (v35 >> 13) ^ 0x40 ^ ((v45 ^ 0xAD) + 1132737353) ^ *(v39 + 4 * (v45 ^ 0xB4u)) ^ *(v37 + 4 * (HIBYTE(v38) ^ 0xCD)) ^ __ROR4__(*(v36 + 4 * BYTE2(v41)), 26) ^ *(v40 + 4 * ((v35 >> 13) ^ 0x3Eu));
  v47 = ((v18 ^ v44) >> 8) ^ 0x92;
  v48 = v12 ^ v45 ^ 0xAD ^ 0x7D04E639;
  v49 = *(v37 + 4 * ((v43 ^ 0xA011F849) >> 24)) ^ __ROR4__(*(v36 + 4 * ((v42 ^ 0x71BEDB66u) >> 16)), 26) ^ *(v39 + 4 * (((v18 ^ v44) >> 8) ^ 0x8Bu)) ^ (v47 + 1132737353) ^ *(v40 + 4 * ((v12 ^ v45 ^ 0xAD) ^ 0x47u));
  v50 = (v18 ^ v44) ^ __ROR4__(*(v36 + 4 * ((v43 ^ 0xA011F849) >> 16)), 26) ^ *(v37 + 4 * HIBYTE(v48)) ^ *(v40 + 4 * ((v18 ^ v44) ^ 0xF8u)) ^ ((v42 ^ 0xDB66) >> 8) ^ *(v39 + 4 * (((v42 ^ 0xDB66) >> 8) ^ 0x19u)) ^ (((v42 ^ 0xDB66) >> 8) + 1132737353);
  v51 = BYTE1(v48) ^ v43 ^ 0x49 ^ (BYTE1(v48) + 1132737353) ^ *(v40 + 4 * (v43 ^ 0x37u)) ^ *(v39 + 4 * (BYTE1(v48) ^ 0x19u)) ^ *(v37 + 4 * ((v42 ^ 0x71BEDB66u) >> 24)) ^ __ROR4__(*(v36 + 4 * (((v18 ^ v44) >> 16) ^ 0xC6u)), 26);
  v52 = v42 ^ 0x66 ^ ((v43 ^ 0xF849) >> 8) ^ (((v43 ^ 0xF849) >> 8) + 1132737353) ^ *(v37 + 4 * (HIBYTE(v46) ^ 0x4C)) ^ __ROR4__(*(v36 + 4 * (BYTE2(v12) ^ 0x8Du)), 26) ^ *(v39 + 4 * (((v43 ^ 0xF849) >> 8) ^ 0x19u)) ^ *(v40 + 4 * (v42 ^ 0x18u));
  LODWORD(v18) = v52 ^ 0x21;
  v52 ^= 0x49B2805Fu;
  v53 = *(v37 + 4 * ((v50 ^ 0x2E202F4u) >> 24)) ^ __ROR4__(*(v36 + 4 * (BYTE2(v49) ^ 0x1Eu)), 26) ^ *(v39 + 4 * (BYTE1(v51) ^ 0xFDu)) ^ BYTE1(v51) ^ 0xE4 ^ ((BYTE1(v51) ^ 0xE4) + 1132737353) ^ *(v40 + 4 * v18) ^ v52;
  LODWORD(v18) = BYTE1(v49) ^ ((BYTE1(v49) ^ 0xFC) + 1132737353) ^ *(v39 + 4 * (BYTE1(v49) ^ 0xE5u)) ^ *(v37 + 4 * HIBYTE(v52)) ^ __ROR4__(*(v36 + 4 * ((v50 ^ 0x2E202F4u) >> 16)), 26) ^ 0x7EB8EE7E;
  v54 = v51 ^ 0x3D9C2CD1 ^ *(v40 + 4 * (v51 ^ 0x68u));
  v55 = v18 + v54 - 2 * (v18 & v54);
  LODWORD(v11) = (v49 ^ v47 ^ v48 ^ ((v50 ^ 0x2F4) >> 8)) ^ (((v50 ^ 0x2F4) >> 8) + 1132737353) ^ *(v40 + 4 * ((v49 ^ v47 ^ v48) ^ 0xE9u)) ^ *(v39 + 4 * (((v50 ^ 0x2F4) >> 8) ^ 0x19u)) ^ *(v37 + 4 * (HIBYTE(v51) ^ 0x1E)) ^ __ROR4__(*(v36 + 4 * BYTE2(v52)), 26);
  v56 = BYTE1(v52) ^ v50 ^ 0xF4 ^ (BYTE1(v52) + 1132737353) ^ *(v37 + 4 * (HIBYTE(v49) ^ 0x77)) ^ __ROR4__(*(v36 + 4 * (BYTE2(v51) ^ 0x27u)), 26) ^ *(v39 + 4 * (BYTE1(v52) ^ 0x19u)) ^ *(v40 + 4 * (v50 ^ 0x8Au));
  v57 = v56 ^ 0xF5121212;
  v58 = *(v39 + 4 * (((v53 ^ 0x3C6F) >> 8) ^ 0x19u)) ^ __ROR4__(*(v36 + 4 * ((v55 ^ 0x4726BAB0u) >> 16)), 26) ^ ((v53 ^ 0x3C6F) >> 8) ^ (((v53 ^ 0x3C6F) >> 8) + 1132737353) ^ *(v37 + 4 * ((v11 ^ 0xFF6A9831) >> 24)) ^ *(v40 + 4 * (v56 ^ 0x6Cu)) ^ v56 ^ 0x12;
  v59 = v53 ^ 0x6F ^ ((v55 ^ 0xBAB0) >> 8) ^ (((v55 ^ 0xBAB0) >> 8) + 1132737353) ^ *(v40 + 4 * (v53 ^ 0x11u)) ^ *(v37 + 4 * HIBYTE(v57)) ^ __ROR4__(*(v36 + 4 * (BYTE2(v11) ^ 0x47u)), 26) ^ *(v39 + 4 * (((v55 ^ 0xBAB0) >> 8) ^ 0x19u));
  v60 = (BYTE1(v57) ^ v11) ^ (BYTE1(v57) + 1132737353) ^ *(v37 + 4 * ((v55 ^ 0x4726BAB0u) >> 24)) ^ __ROR4__(*(v36 + 4 * (BYTE2(v53) ^ 0x71u)), 26) ^ *(v39 + 4 * (BYTE1(v57) ^ 0x19u)) ^ *(v40 + 4 * (v11 ^ 0x16u));
  LODWORD(v18) = BYTE1(v11) ^ 3 ^ ((BYTE1(v11) ^ 3) + 1132737353) ^ v55 ^ 0xB0 ^ *(v37 + 4 * ((v53 ^ 0xF7713C6F) >> 24)) ^ *(v39 + 4 * (BYTE1(v11) ^ 0x1Au)) ^ __ROR4__(*(v36 + 4 * BYTE2(v57)), 26) ^ *(v40 + 4 * (v55 ^ 0xCEu));
  LODWORD(v11) = v60 ^ 0x47220E15;
  v61 = ((v60 ^ 0xE15) >> 8);
  v62 = *(v37 + 4 * ((v59 ^ 0x12465F72u) >> 24)) ^ __ROR4__(*(v36 + 4 * ((v58 ^ 0x174F18F7u) >> 16)), 26) ^ *(v39 + 4 * (v61 ^ 0x19u)) ^ (v61 + 1132737353) ^ *(v40 + 4 * (v18 ^ 0x79u));
  v63 = ((v58 ^ 0x18F7) >> 8);
  v64 = v60 ^ 0x15 ^ (v63 + 1132737353) ^ *(v40 + 4 * (v60 ^ 0x6Bu)) ^ *(v39 + 4 * (v63 ^ 0x19u)) ^ *(v37 + 4 * ((v18 ^ 0xF64C3E07) >> 24)) ^ __ROR4__(*(v36 + 4 * ((v59 ^ 0x12465F72u) >> 16)), 26);
  v65 = ((v59 ^ 0x5F72) >> 8) ^ v58 ^ 0xF7 ^ (((v59 ^ 0x5F72) >> 8) + 1132737353) ^ *(v39 + 4 * (((v59 ^ 0x5F72) >> 8) ^ 0x19u)) ^ *(v37 + 4 * BYTE3(v11)) ^ __ROR4__(*(v36 + 4 * (BYTE2(v18) ^ 0x4Cu)), 26) ^ *(v40 + 4 * (v58 ^ 0x89u));
  LOBYTE(v61) = v61 ^ v18 ^ 7;
  LODWORD(v18) = v59 ^ 0x72 ^ ((v18 ^ 0x3E07) >> 8) ^ (((v18 ^ 0x3E07) >> 8) + 1132737353) ^ *(v37 + 4 * ((v58 ^ 0x174F18F7u) >> 24)) ^ __ROR4__(*(v36 + 4 * BYTE2(v11)), 26) ^ *(v39 + 4 * (((v18 ^ 0x3E07) >> 8) ^ 0x19u)) ^ *(v40 + 4 * (v59 ^ 0xCu));
  v66 = BYTE1(v62) ^ 8;
  v67 = v64 ^ v63;
  v68 = (v66 + 1132737353) ^ *(v39 + 4 * (BYTE1(v62) ^ 0x11u)) ^ __ROR4__(*(v36 + 4 * (BYTE2(v64) ^ 0x98u)), 26) ^ *(v37 + 4 * ((v65 ^ 0x11724EFEu) >> 24)) ^ *(v40 + 4 * (v18 ^ 0xCu));
  v69 = (((v67 ^ 0x2622) >> 8) ^ v62 ^ v61) ^ (((v67 ^ 0x2622) >> 8) + 1132737353) ^ *(v37 + 4 * ((v18 ^ 0xD9B5E172) >> 24)) ^ *(v40 + 4 * ((v62 ^ v61) ^ 0x4Cu)) ^ __ROR4__(*(v36 + 4 * ((v65 ^ 0x11724EFEu) >> 16)), 26) ^ *(v39 + 4 * (((v67 ^ 0x2622) >> 8) ^ 0x19u));
  v70 = ((BYTE1(v65) ^ 0x4E) + 1132737353) ^ (v64 ^ v63) ^ 0x22 ^ *(v37 + 4 * (HIBYTE(v62) ^ 0x97)) ^ *(v39 + 4 * (BYTE1(v65) ^ 0x57u)) ^ __ROR4__(*(v36 + 4 * (((v18 ^ 0xD9B5E172) >> 16) ^ 0x89u)), 26) ^ *(v40 + 4 * ((v64 ^ v63) ^ 0x5Cu));
  LODWORD(v35) = __ROR4__(*(v36 + 4 * (BYTE2(v62) ^ 0xAEu)), 26);
  v71 = v65 ^ 0xFE ^ BYTE1(v18) ^ 0xE1 ^ ((BYTE1(v18) ^ 0xE1) + 1132737353) ^ *(v37 + 4 * ((v67 ^ 0x39112622u) >> 24)) ^ v35 ^ *(v39 + 4 * (BYTE1(v18) ^ 0xF8u)) ^ *(v40 + 4 * (v65 ^ 0x80u)) ^ 0x777E5BD6;
  v72 = v69 ^ 0xEAEC9ABF;
  v73 = BYTE1(v68) ^ 0xA9 ^ ((BYTE1(v68) ^ 0xA9) + 1132737353) ^ *(v39 + 4 * (BYTE1(v68) ^ 0xB0u)) ^ __ROR4__(*(v36 + 4 * ((v69 ^ 0xEAEC9ABF) >> 16)), 26) ^ *(v37 + 4 * (HIBYTE(v70) ^ 0x96)) ^ *(v40 + 4 * (v65 ^ 0xFE ^ BYTE1(v18) ^ 0xE1 ^ ((BYTE1(v18) ^ 0xE1) + 73) ^ *(v37 + 4 * ((v67 ^ 0x39112622u) >> 24)) ^ v35 ^ (*(v39 + 4 * (BYTE1(v18) ^ 0xF8u)) ^ *(v40 + 4 * (v65 ^ 0x80u))) ^ 0xA8u)) ^ v65 ^ 0xFE ^ BYTE1(v18) ^ 0xE1 ^ ((BYTE1(v18) ^ 0xE1) + 73) ^ *(v37 + 4 * ((v67 ^ 0x39112622u) >> 24)) ^ v35 ^ (*(v39 + 4 * (BYTE1(v18) ^ 0xF8u)) ^ *(v40 + 4 * (v65 ^ 0x80u))) ^ 0xD6;
  v74 = v68 ^ v66 ^ v18 ^ 0x72;
  v75 = (v74 ^ BYTE1(v72)) ^ (BYTE1(v72) + 1132737353) ^ *(v37 + 4 * HIBYTE(v71)) ^ __ROR4__(*(v36 + 4 * (BYTE2(v70) ^ 0xEFu)), 26) ^ *(v39 + 4 * (BYTE1(v72) ^ 0x19u)) ^ *(v40 + 4 * (v74 ^ 0x75u));
  LODWORD(v18) = *(v37 + 4 * (HIBYTE(v68) ^ 0x17));
  v76 = v18 ^ 0x209D1B38;
  if ((v18 & 0x20000000) != 0)
  {
    v77 = 0x20000000;
  }

  else
  {
    v77 = -536870912;
  }

  v78 = BYTE1(v70) ^ 0xE4 ^ v69 ^ 0xBF ^ ((BYTE1(v70) ^ 0xE4) + 1132737353) ^ *(v39 + 4 * (BYTE1(v70) ^ 0xFDu)) ^ __ROR4__(*(v36 + 4 * BYTE2(v71)), 26) ^ *(v40 + 4 * (v69 ^ 0xC1u)) ^ (v77 + v76);
  v79 = __ROR4__(*(v36 + 4 * ((((((v74 ^ 0xCE95A90B) >> (v48 & 0x10)) - ((2 * ((v74 ^ 0xCE95A90B) >> (v48 & 0x10))) & 0xF416A3E8) - 99921420) ^ 0xFA0B51F4) >> (v48 & 0x10 ^ 0x10)) ^ 0x89u)), 26);
  v80 = (v70 ^ BYTE1(v65) ^ 0x4E);
  v81 = *(v39 + 4 * (BYTE1(v71) ^ 0x19u)) ^ (BYTE1(v71) + 1132737353) ^ *(v37 + 4 * HIBYTE(v72)) ^ v79 ^ *(v40 + 4 * (v80 ^ 0xBEu));
  v82 = v73 ^ 0x526D80B8;
  v83 = BYTE1(v71) ^ v80 ^ v81;
  v84 = *(v39 + 4 * (((v73 ^ 0x80B8) >> 8) ^ 0x19u)) ^ __ROR4__(*(v36 + 4 * ((v75 ^ 0x5D3B0930u) >> 16)), 26) ^ ((v73 ^ 0x80B8) >> 8) ^ (((v73 ^ 0x80B8) >> 8) + 1132737353) ^ *(v37 + 4 * ((v78 ^ 0xD26A2C85) >> 24)) ^ (BYTE1(v71) ^ v80 ^ v81) ^ 0x10 ^ *(v40 + 4 * ((BYTE1(v71) ^ v80 ^ v81) ^ 0x6Eu));
  v85 = ((v75 ^ 0x930) >> 8) ^ v73 ^ 0xB8 ^ (((v75 ^ 0x930) >> 8) + 1132737353) ^ *(v39 + 4 * (((v75 ^ 0x930) >> 8) ^ 0x19u)) ^ *(v37 + 4 * ((v83 ^ 0x4A6AAA10u) >> 24)) ^ __ROR4__(*(v36 + 4 * ((v78 ^ 0xD26A2C85) >> 16)), 26) ^ *(v40 + 4 * (v73 ^ 0xC6u));
  v86 = v78 ^ 0x85 ^ ((v83 ^ 0xAA10) >> 8) ^ (((v83 ^ 0xAA10) >> 8) + 1132737353) ^ *(v37 + 4 * ((v75 ^ 0x5D3B0930u) >> 24)) ^ *(v39 + 4 * (((v83 ^ 0xAA10) >> 8) ^ 0x19u)) ^ __ROR4__(*(v36 + 4 * BYTE2(v82)), 26) ^ *(v40 + 4 * (v78 ^ 0xFBu));
  v87 = v75 ^ 0x30 ^ ((v78 ^ 0x2C85) >> 8) ^ (((v78 ^ 0x2C85) >> 8) + 1132737353) ^ *(v37 + 4 * HIBYTE(v82)) ^ __ROR4__(*(v36 + 4 * (BYTE2(v81) ^ 0x6Au)), 26) ^ *(v39 + 4 * (((v78 ^ 0x2C85) >> 8) ^ 0x19u)) ^ *(v40 + 4 * (v75 ^ 0x4Eu));
  v88 = v85 ^ 0xB591ABF0;
  v89 = ((v86 ^ 0xD2F4) >> 8);
  v90 = v87 ^ 0x853A4A6C;
  v91 = *(v37 + 4 * ((v85 ^ 0xB591ABF0) >> 24)) ^ __ROR4__(*(v36 + 4 * ((v84 ^ 0xC7724977) >> 16)), 26) ^ *(v39 + 4 * (v89 ^ 0x19u)) ^ *(v40 + 4 * (v87 ^ 0x12u)) ^ (v89 + 1132737353);
  v92 = v89 ^ 0x8F578069;
  v93 = v6;
  v94 = *(&off_1010A0B50 + v6 - 4408) - 1743151066;
  v95 = *(v37 + 4 * ((v84 ^ 0xC7724977) >> 24)) ^ v85 ^ 0xF0 ^ __ROR4__(*(v36 + 4 * ((v86 ^ 0xE18DD2F4) >> 16)), 26) ^ *(v39 + 4 * (BYTE1(v90) ^ 0x19u)) ^ (BYTE1(v90) + 1132737353) ^ *(v40 + 4 * (v85 ^ 0x8Eu));
  v96 = *(&off_1010A0B50 + v6 - 4947) - 1929178831;
  v97 = *(v36 + 4 * BYTE2(v88));
  v98 = *(v37 + 4 * HIBYTE(v90));
  v99 = (BYTE1(v88) + 1132737353) ^ v84 ^ 0x77 ^ *(v39 + 4 * (BYTE1(v88) ^ 0x19u)) ^ *(v37 + 4 * ((v86 ^ 0xE18DD2F4) >> 24)) ^ __ROR4__(*(v36 + 4 * BYTE2(v90)), 26) ^ *(v40 + 4 * (v84 ^ 9u));
  v100 = *(&off_1010A0B50 + (v93 ^ 0x1E81)) - 397793115;
  v101 = v86 ^ 0xF4 ^ (((v84 ^ 0x4977) >> 8) + 1132737353) ^ v98 ^ __ROR4__(v97, 26) ^ *(v39 + 4 * (((v84 ^ 0x4977) >> 8) ^ 0x19u)) ^ *(v40 + 4 * (v86 ^ 0x8Au));
  v102 = *(&off_1010A0B50 + v93 - 3626) - 1118661726;
  v103 = v102[(v101 ^ BYTE1(v84) ^ 0x49) ^ 0xC8];
  v104 = v103 ^ (v103 >> 6) ^ (v103 >> 3);
  v105 = v102[(v99 ^ BYTE1(v88)) ^ 0x13];
  v106 = *&v100[4 * (BYTE1(v95) ^ 0x1A)] ^ ((BYTE1(v95) ^ 0x1B) + (BYTE1(v95) ^ 0xAD74DAB3)) ^ *&v94[4 * (HIBYTE(v101) ^ 0x3E)];
  v107 = v92 ^ v91;
  v108 = *&v96[4 * (BYTE2(v91) ^ 0x7C)] + 2064845129;
  v109 = (v106 ^ v108) & 0xFFFFF7FF ^ 0xD4EF4178 ^ (v106 ^ ~v108 | 0xFFFFC7FF) & (v105 ^ (v105 >> 6) ^ (v105 >> 3) ^ 0xEFC04F5F);
  LOBYTE(v105) = v102[(v95 ^ BYTE1(v90)) ^ 0x43];
  v110 = (*&v96[4 * (BYTE2(v95) ^ 1)] + 2064845129) ^ *&v94[4 * HIBYTE(v107)] ^ *&v100[4 * (BYTE1(v99) ^ 0x23)] ^ ((BYTE1(v99) ^ 0x22) + (BYTE1(v99) ^ 0xAD74DA8A)) ^ v104 ^ v109;
  v111 = ((BYTE1(v107) ^ 0xAD74DAA8) + BYTE1(v107)) ^ *&v100[4 * (BYTE1(v107) ^ 1)] ^ *&v94[4 * (HIBYTE(v99) ^ 0x5E)] ^ (*&v96[4 * (BYTE2(v101) ^ 7)] + 2064845129) ^ (v105 ^ (((((v105 ^ 0xA9) >> 3) + (v105 ^ 0xA9) - 2 * (((v105 ^ 0xA9) >> 3) & (v105 ^ 0xA9))) & 0xF8) >> 3)) ^ v110 ^ 0xAE534F0F;
  LODWORD(v102) = v102[(v107 ^ v90)];
  v112 = ((BYTE1(v101) ^ 0xAD74DAAE) + (BYTE1(v101) ^ 6)) ^ *&v94[4 * (HIBYTE(v95) ^ 0x59)] ^ (*&v96[4 * (BYTE2(v99) ^ 0x10)] + 2064845129) ^ *&v100[4 * (BYTE1(v101) ^ 7)] ^ v102 ^ (v102 >> 6) ^ (v102 >> 3) ^ v109 ^ 0x778F0DE0;
  LODWORD(v100) = v110 ^ 0x643C516B;
  LODWORD(v102) = *(v5 - 124) ^ 0xD7286E43;
  v113 = *(&off_1010A0B50 + v93 - 4490) - 1484589758;
  LODWORD(v96) = v93;
  v114 = *(&off_1010A0B50 + v93 - 3216) - 263984626;
  v115 = *(&off_1010A0B50 + (v93 ^ 0x16F5)) - 1019354287;
  v116 = v112 ^ v111;
  v117 = *(v5 - 136);
  v118 = v111 ^ v117;
  v119 = (v111 ^ v117);
  *(v5 - 200) = v119;
  v120 = v109 ^ v117;
  v121 = __ROR4__(*&v115[4 * (v119 ^ 0xF2)], 5) ^ 0x89D6B;
  v122 = *(&off_1010A0B50 + v93 - 2156) - 1196990638;
  v123 = HIBYTE(v118);
  *(v5 - 192) = v123;
  LODWORD(v123) = ((HIBYTE(v118) ^ 0x62) + 45) ^ v122[v123 ^ 0xE4];
  *(v5 - 212) = BYTE1(v118);
  v124 = *&v113[4 * (BYTE1(v118) ^ 0x71)];
  *(v5 - 208) = BYTE2(v118);
  v125 = __ROR4__(*&v114[4 * (BYTE2(v118) ^ 0x9D)], 23);
  LODWORD(v100) = v100 ^ v116;
  v126 = v120 ^ v116 ^ v100;
  *(v5 - 204) = v126;
  v127 = v124 ^ v125 ^ v121 ^ (4 * v121) ^ v126 ^ BYTE1(v118) ^ 0xF0 ^ ((BYTE1(v118) ^ 0xF0) + 1985671323);
  LODWORD(STACK[0x20C]) = v127;
  v128 = v100 ^ v102;
  *(v5 - 216) = v100 ^ v102;
  LODWORD(v102) = v116 ^ v102;
  LODWORD(STACK[0x208]) = v127 ^ v123;
  v129 = v127 ^ v123 ^ 0x59F33FBB;
  v130 = v129 ^ v128;
  v577 = v129 ^ v128 ^ v102;
  v131 = v102;
  *(v5 - 124) = v102;
  v132 = (v129 ^ v128 ^ v102 ^ v118);
  *(v5 - 240) = v577 ^ v118;
  *(v5 - 236) = v132;
  LODWORD(v102) = __ROR4__(*&v115[4 * (v132 ^ 0x16)], 5) ^ 0x99B60BE2;
  LODWORD(STACK[0x218]) = ((v577 ^ v118) >> 8);
  LODWORD(v100) = *&v113[4 * (((v577 ^ v118) >> 8) ^ 0xD4)];
  v133 = (v577 ^ v118) >> 24;
  *(v5 - 256) = v133;
  v134 = ((((v577 ^ v118) >> 24) ^ 0x3F) + 45) ^ v122[v133 ^ 0xB9];
  LODWORD(v102) = v100 ^ __ROR4__(*&v114[4 * (((v577 ^ v118) >> 16) ^ 0xED)], 23) ^ v102 ^ (4 * v102);
  LODWORD(v100) = ((v577 ^ v118) >> 8) ^ 0x55;
  v135 = v102 ^ v129 ^ (v100 + 1985671323);
  *(v5 - 228) = v135;
  v136 = v135 ^ v134 ^ v100;
  *(v5 - 224) = v136;
  v137 = v136 ^ 0x63F88749;
  v588 = v136 ^ 0x63F88749 ^ v130;
  v138 = v118 ^ 0x17379D10 ^ v588 ^ 0x465EDFD3;
  v613 = v138;
  LODWORD(v100) = __ROR4__(*&v115[4 * (v138 ^ 0xB0)], 5) ^ 0xE18A3704;
  LODWORD(STACK[0x228]) = BYTE1(v138);
  v139 = *&v113[4 * (BYTE1(v138) ^ 0xF0)];
  LODWORD(STACK[0x204]) = BYTE2(v138);
  LODWORD(v119) = BYTE1(v138) ^ 0x71;
  v140 = v139 ^ __ROR4__(*&v114[4 * (BYTE2(v138) ^ 0x1F)], 23) ^ v100 ^ (4 * v100) ^ v136 ^ 0x63F88749 ^ (v119 + 1985671323);
  *(v5 - 164) = v140;
  v611 = HIBYTE(v138);
  v141 = ((HIBYTE(v138) ^ 0xCD) + 45) ^ v119 ^ v122[v611 ^ 0x4B] ^ v140;
  LODWORD(STACK[0x21C]) = v141;
  LODWORD(v100) = v141 ^ 0xD548526;
  v142 = v137 ^ v131;
  *(v5 - 232) = v142;
  v569 = v141 ^ 0xD548526 ^ v588 ^ 0x465EDFD3 ^ v142;
  v523 = v141 ^ 0xD548526 ^ v588 ^ 0x465EDFD3;
  v609 = v569 ^ 0xE ^ v138;
  LODWORD(v102) = __ROR4__(*&v115[4 * (v609 ^ 0x49)], 5) ^ 0x1592FBB;
  v598 = (v569 ^ 0x4B054D0E ^ v138) >> 24;
  v143 = ((((v569 ^ 0x4B054D0E ^ v138) >> 24) ^ 0x19) + 45) ^ v122[v598 ^ 0x9F];
  v144 = ((v569 ^ 0x4D0E ^ v138) >> 8);
  LODWORD(STACK[0x200]) = v144;
  v615 = ((v569 ^ 0x4B054D0E ^ v138) >> 16);
  v573 = *&v113[4 * (v144 ^ 0x22)] ^ __ROR4__(*&v114[4 * (v615 ^ 0xD6)], 23) ^ v102 ^ (4 * v102) ^ v100 ^ ((v144 ^ 0xA3) + 1985671323);
  LODWORD(v102) = v573 ^ v143 ^ v144 ^ 0xA3;
  LODWORD(STACK[0x214]) = v102;
  v566 = v102 ^ 0x568E5623 ^ v523;
  v145 = v566 ^ 0xDC65980 ^ v138;
  v592 = BYTE2(v145);
  v602 = v145;
  v146 = __ROR4__(*&v115[4 * (v145 ^ 0xBD)], 5) ^ 0xC774AF5B;
  v594 = *&v113[4 * (BYTE1(v145) ^ 0x72)] ^ __ROR4__(*&v114[4 * (BYTE2(v145) ^ 0xD6)], 23) ^ v146 ^ (4 * v146) ^ v102 ^ 0x568E5623;
  v595 = HIBYTE(v145);
  v147 = ((HIBYTE(v145) ^ 0xB0) + 45) ^ v122[v595 ^ 0x36];
  v585 = BYTE1(v145);
  v596 = v594 ^ (((BYTE1(v145) ^ 0xF3) + 155) ^ BYTE1(v145)) & 0x1FE;
  v600 = v594 ^ (((BYTE1(v145) ^ 0xF3) - 101) ^ BYTE1(v145)) & 0xFE ^ v147;
  v148 = v596 ^ v147 ^ 0xFFB7451B;
  v149 = v566 ^ 0xDC65980 ^ v569 ^ 0x4B054D0E;
  *(v5 - 248) = v149;
  v150 = v148 ^ v566 ^ 0xDC65980;
  v151 = v150 ^ 0x9569E534 ^ v149;
  v152 = v151 ^ v145;
  v545 = v151;
  v582 = v152;
  LODWORD(v100) = __ROR4__(*&v115[4 * (v152 ^ 0x1B)], 5) ^ 0x9FEA68A;
  v590 = BYTE2(v152);
  v579 = BYTE1(v152);
  v153 = BYTE1(v152) ^ 0x41;
  LODWORD(v102) = *&v113[4 * (BYTE1(v152) ^ 0xC0)] ^ __ROR4__(*&v114[4 * (BYTE2(v152) ^ 0x6C)], 23) ^ v100 ^ (4 * v100) ^ v148 ^ (v153 + 1985671323);
  *(v5 - 168) = v102;
  v584 = HIBYTE(v152);
  v154 = ((HIBYTE(v152) ^ 0x2C) + 45) ^ v153 ^ v122[v584 ^ 0xAA];
  v152 ^= 0x310C4F18u;
  v567 = v154 ^ v102;
  v155 = v154 ^ v102 ^ 0x9545765B;
  v560 = v155 ^ v150 ^ 0x9569E534;
  v551 = v560 ^ 0x4AD43EF3 ^ v151;
  LODWORD(STACK[0x220]) = v551 ^ 0x3A06C9D0;
  v605 = ((v551 ^ 0xC9D0 ^ v152) >> 8);
  v156 = *&v113[4 * (v605 ^ 0xE7)];
  LODWORD(STACK[0x224]) = v551 ^ 0xD0 ^ v152;
  LODWORD(v133) = __ROR4__(*&v115[4 * (v551 ^ 0xD0 ^ v152 ^ 0xED)], 5) ^ 0x768D5963;
  LODWORD(STACK[0x22C]) = ((v551 ^ 0x3A06C9D0 ^ v152) >> 16);
  v617 = (v551 ^ 0x3A06C9D0 ^ v152) >> 24;
  v563 = v156 ^ __ROR4__(*&v114[4 * (((v551 ^ 0x3A06C9D0 ^ v152) >> 16) ^ 0xE0)], 23) ^ v133 ^ (4 * v133) ^ v155 ^ ((v605 ^ 0x66) + 1985671323);
  v587 = v563 ^ ((((v551 ^ 0x3A06C9D0 ^ v152) >> 24) ^ 0x1E) + 45) ^ v122[v617 ^ 0x98] ^ v605 ^ 0x66;
  v558 = v587 ^ 0x9FE9DFC0 ^ v560 ^ 0x4AD43EF3;
  LODWORD(v119) = v558 ^ 0x44E577B ^ v152;
  v157 = v558 ^ 0x7B ^ v152;
  LODWORD(STACK[0x210]) = v157;
  v158 = __ROR4__(*&v115[4 * (v157 ^ 0x5D)], 5) ^ 0xD88CC846;
  v553 = BYTE3(v119);
  v159 = BYTE1(v119);
  v542 = BYTE2(v119);
  v160 = BYTE1(v119) ^ 0x66;
  v571 = *&v113[4 * (BYTE1(v119) ^ 0xE7)] ^ __ROR4__(*&v114[4 * (BYTE2(v119) ^ 0x18)], 23) ^ v158 ^ (4 * v158) ^ v587 ^ 0x9FE9DFC0 ^ (v160 + 1985671323);
  v161 = *(&off_1010A0B50 + v96 - 3124) - 1706386102;
  v607 = v571 ^ ((BYTE3(v119) ^ 0x93) + 45) ^ v122[v553 ^ 0x15] ^ v160;
  v162 = v607 ^ 0x4A962BEA ^ v551 ^ 0x3A06C9D0;
  v540 = v607 ^ 0x4A962BEA;
  v163 = *(&off_1010A0B50 + v96 - 2801) - 1227611;
  v164 = *(&off_1010A0B50 + v96 - 1985) - 1683807915;
  v165 = *(&off_1010A0B50 + (v96 ^ 0x1562)) - 324595314;
  LODWORD(v119) = v162 ^ 0xFF3313E3 ^ v119;
  v166 = v119 ^ 0x3A6DA809;
  v561 = v119;
  LODWORD(v119) = __ROR4__(*&v115[4 * (((((v119 ^ 9) - (v119 ^ 0xBF)) ^ 0xFFFFFFFC) + (v119 ^ 9)) ^ 0x4D)], 5) ^ 0x335352;
  v549 = HIBYTE(v166);
  v547 = BYTE1(v166);
  v575 = BYTE2(v166);
  v167 = *&v113[4 * (BYTE1(v166) ^ 0xDA)] ^ __ROR4__(*&v114[4 * (BYTE2(v166) ^ 0xEC)], 23) ^ v119 ^ (4 * v119) ^ BYTE1(v166) ^ 0x5B ^ ((BYTE1(v166) ^ 0x5B) + 1985671323) ^ ((HIBYTE(v166) ^ 0x6F) + 45) ^ v122[v549 ^ 0xE9] ^ 0x14159BF7;
  v544 = v167 ^ v558 ^ 0x44E577B;
  v168 = v544 ^ 0x1706E68F ^ v162 ^ 0xFF3313E3;
  v564 = ((v168 ^ v166) >> 16);
  v533 = v168 ^ v166;
  v554 = ((v168 ^ v166) >> 8);
  v556 = (v168 ^ v166);
  v604 = *&v164[4 * (BYTE2(v162) ^ 0x54)] ^ *&v165[4 * (HIBYTE(v162) ^ 0x61)] ^ (*&v161[4 * (v607 ^ 0xEA ^ v551 ^ 0xD0 ^ 0xB)] - 372654966) ^ (*&v163[4 * (BYTE1(v162) ^ 0x46)] + (BYTE1(v162) ^ 0xFE) + 1259292352);
  v169 = __ROR4__(*&v115[4 * (v556 ^ 0xC3)], 5) ^ 0xECF5A843;
  v537 = (v168 ^ v166) >> 24;
  v538 = v167 ^ v607 ^ 0x4A962BEA;
  v170 = *&v113[4 * (v554 ^ 0x44)] ^ __ROR4__(*&v114[4 * (v564 ^ 0xE9)], 23) ^ v169 ^ (4 * v169) ^ v538 ^ ((v554 ^ 0xC5) + 1985671323);
  v171 = *(&off_1010A0B50 + v96 - 2875) - 1548731895;
  v172 = v170 ^ ((((v168 ^ v166) >> 24) ^ 0x1F) + 45) ^ v122[v537 ^ 0x99] ^ v554 ^ 0xC5;
  v531 = v172 ^ 0xF5B04B5B;
  v173 = v172 ^ 0xF5B04B5B ^ v544 ^ 0x1706E68F;
  v174 = *(&off_1010A0B50 + v96 - 3298) - 5423318;
  *(v5 - 136) = v174;
  v175 = *&v174[4 * (BYTE2(v173) ^ 0x19)] + (BYTE2(v173) ^ 0x1834AEB9) - 918864641;
  v557 = v96;
  v176 = *(&off_1010A0B50 + (v96 ^ 0x1036)) - 1252138086;
  v177 = *(&off_1010A0B50 + v96 - 5713) - 1870832059;
  *(v5 - 144) = v177;
  v550 = *&v176[4 * (BYTE1(v173) ^ 0x8C)] ^ *&v171[4 * (HIBYTE(v173) ^ 0xBE)] ^ HIBYTE(v173) ^ v175 ^ ((BYTE1(v173) ^ 0xEC) - (BYTE1(v173) ^ 0xAE3AA670)) ^ ((v177[v173 ^ 3] - 17) ^ ((v177[v173 ^ 3] - 17) >> 4) ^ ((v177[v173 ^ 3] - 17) >> 2));
  LODWORD(v113) = *&v161[4 * (v130 ^ 0x78)] - 372654966;
  v178 = *&v164[4 * (BYTE2(v130) ^ 0x6E)] ^ *&v165[4 * (HIBYTE(v130) ^ 0xEE)] ^ ((BYTE1(v130) ^ 0x3B) + 1259292352 + *&v163[4 * (BYTE1(v130) ^ 0x83)]) ^ v113 ^ 0x4DEE945A;
  *(v5 - 220) = v178;
  LODWORD(v122) = *&v164[4 * (BYTE2(v150) ^ 0x37)] ^ *&v165[4 * (HIBYTE(v150) ^ 0x30)] ^ (*&v161[4 * (v150 ^ 0xA1)] - 372654966) ^ (*&v163[4 * (BYTE1(v150) ^ 0x18)] + (BYTE1(v150) ^ 0xA0) + 1259292352);
  *(v5 - 244) = v122;
  LODWORD(v177) = v558 ^ 0x44E577B ^ LODWORD(STACK[0x220]);
  LODWORD(v114) = *&v164[4 * (BYTE2(v177) ^ 0x93)] ^ *&v165[4 * ((v177 >> 24) ^ 0x20)] ^ (*&v161[4 * (v558 ^ 0x7B ^ LOBYTE(STACK[0x220]) ^ 0x90)] - 372654966) ^ (*&v163[4 * (BYTE1(v177) ^ 0xD3)] + (BYTE1(v177) ^ 0x6B) + 1259292352);
  LODWORD(STACK[0x220]) = v114;
  v581 = (*&v161[4 * (v168 ^ 0xD4)] - 372654966) ^ *&v164[4 * (BYTE2(v168) ^ 4)] ^ *&v165[4 * (HIBYTE(v168) ^ 0x77)] ^ (*&v163[4 * (BYTE1(v168) ^ 0x8F)] + (BYTE1(v168) ^ 0x37) + 1259292352) ^ 0x7E80D88F;
  v179 = (v122 ^ 0xAC7B5C25) + (v114 ^ 0x70CF4A93);
  v180 = (*&v161[4 * (LODWORD(STACK[0x210]) ^ 0xF)] - 372654966) ^ *&v164[4 * (v542 ^ 0x9F)] ^ *&v165[4 * (v553 ^ 0x5B)] ^ (*&v163[4 * (v159 ^ 0xE2)] + (v159 ^ 0x5A) + 1259292352) ^ 0xE8295EDE;
  LODWORD(STACK[0x210]) = v180;
  v181 = *(v5 - 144);
  v182 = *(v5 - 136);
  LODWORD(v122) = *(v182 + 4 * (BYTE2(v170) ^ 0xE9u)) + (BYTE2(v170) ^ 0x1834AE49) - 918864641;
  LOBYTE(v172) = *(v181 + (v172 ^ 0xADLL)) - 17;
  *(v5 - 160) = v171;
  *(v5 - 152) = v176;
  v543 = *&v171[4 * (HIBYTE(v170) ^ 0xB3)] ^ *&v176[4 * (BYTE1(v170) ^ 0x1B)] ^ HIBYTE(v170) ^ ((BYTE1(v170) ^ 0x7B) - (BYTE1(v170) ^ 0xAE3AA6E7)) ^ v122 ^ (v172 ^ (v172 >> 4) ^ (v172 >> 2));
  v183 = v179 - v581 + v178 - v180 + (v604 ^ 0xE290900F) - 2 * (v604 ^ 0xE290900F) + (v543 ^ 0x6771AD19) + (v550 ^ 0x42D3D47D);
  LODWORD(v102) = *(v5 - 216);
  v184 = (v102 >> 24) ^ ((BYTE1(v102) ^ 0x75) - (BYTE1(v102) ^ 0xAE3AA6E9)) ^ *&v171[4 * ((v102 >> 24) ^ 0x7A)] ^ ((BYTE2(v102) ^ 0x1834AE24) - 918864641 + *(v182 + 4 * (BYTE2(v102) ^ 0x84u))) ^ *&v176[4 * (BYTE1(v102) ^ 0x15)] ^ 0xC7F4913 ^ ((*(v181 + (v102 & 0xFE ^ (v102 & 1 | 0x4B074140) ^ 0x4B0741BCu)) - 17) ^ ((*(v181 + (v102 & 0xFE ^ (v102 & 1 | 0x4B074140) ^ 0x4B0741BCu)) - 17) >> 4) ^ ((*(v181 + (v102 & 0xFE ^ (v102 & 1 | 0x4B074140) ^ 0x4B0741BCu)) - 17) >> 2));
  *(v5 - 216) = v184;
  LODWORD(v553) = (*&v161[4 * (v607 ^ 0x96)] - 372654966) ^ *&v164[4 * (BYTE2(v571) ^ 0xC6)] ^ *&v165[4 * (HIBYTE(v571) ^ 0xCC)] ^ (*&v163[4 * (BYTE1(v571) ^ 0x9C)] + (BYTE1(v571) ^ 0x24) + 1259292352) ^ 0x845B1354;
  LODWORD(v102) = *(v5 - 248);
  v185 = (*&v161[4 * (v102 ^ 0xC5)] - 372654966) ^ ((BYTE1(v102) ^ 0x4B) + 1259292352 + *&v163[4 * (BYTE1(v102) ^ 0xF3)]) ^ *&v164[4 * (BYTE2(v102) ^ 0x99)] ^ *&v165[4 * ((v102 >> 24) ^ 0x1E)];
  *(v5 - 248) = v185;
  LODWORD(v174) = *(v5 - 228);
  v186 = ((BYTE1(v174) ^ 0x3C) + 1259292352 + *&v163[4 * (BYTE1(v174) ^ 0x84)]) ^ *&v164[4 * (BYTE2(v174) ^ 0x3E)] ^ (*&v161[4 * (*(v5 - 224) ^ 0xA3)] - 372654966) ^ *&v165[4 * ((v174 >> 24) ^ 0x47)];
  *(v5 - 224) = v186;
  v572 = v179 - v581 - 1190067154;
  v525 = v183 + 1975534916;
  *(v5 - 228) = (v185 ^ 0xAEFF0872) - v184 + (v186 ^ 0x5287AD8D) - v553 + v183 - 895648665;
  v526 = v183 - 895648665 - ((2 * (v183 + 1975534916)) & 0x4C4E7BB8) + 1363805881;
  LODWORD(v177) = BYTE1(*(v5 - 168));
  v608 = (v177 ^ 0x1C) + 1259292352 + *&v163[4 * (v177 ^ 0xA4)];
  v505 = v567 ^ 0x28;
  v187 = *(v5 - 232);
  v188 = *&v163[4 * (v605 ^ 0x36)];
  *(v5 - 232) = ((BYTE1(v187) ^ 0x7C) + 1259292352 + *&v163[4 * (BYTE1(v187) ^ 0xC4)]) ^ (*&v161[4 * (v187 ^ 0xDC)] - 372654966) ^ *&v164[4 * (BYTE2(v187) ^ 0x2C)] ^ *&v165[4 * (HIBYTE(v187) ^ 0xAB)];
  v606 = (*&v161[4 * (LODWORD(STACK[0x224]) ^ 2)] - 372654966) ^ ((v605 ^ 0x8E) + 1259292352 + v188) ^ *&v164[4 * (LODWORD(STACK[0x22C]) ^ 0x91)] ^ *&v165[4 * (v617 ^ 0x9E)];
  LODWORD(STACK[0x22C]) = (BYTE1(v523) ^ 0x30) + 1259292352 + *&v163[4 * (BYTE1(v523) ^ 0x88)];
  LODWORD(v177) = BYTE1(*(v5 - 164));
  LODWORD(STACK[0x224]) = (v177 ^ 0xE9) + 1259292352 + *&v163[4 * (v177 ^ 0x51)];
  v548 = (v547 ^ 0x9C) + 1259292352 + *&v163[4 * (v547 ^ 0x24)];
  v518 = v531 ^ v162 ^ 0xFF3313E3 ^ v533;
  v189 = (*(v181 + ((v531 ^ v162 ^ 0xE3 ^ v533) ^ 0xF3)) - 17);
  v521 = (*(v181 + ((v531 ^ v162 ^ 0xE3 ^ v533) ^ 0xF3)) - 17) ^ (v189 >> 4) ^ (v189 >> 2);
  v519 = *(v182 + 4 * (BYTE2(v518) ^ 0x73u)) + (BYTE2(v518) ^ 0x1834AED3) - 918864641;
  v512 = v531 ^ v162 ^ 0xFF3313E3;
  v190 = (*(v181 + ((v531 ^ v162 ^ 0xE3) ^ 0x80)) - 17);
  v517 = (*(v181 + ((v531 ^ v162 ^ 0xE3) ^ 0x80)) - 17) ^ (v190 >> 4) ^ (v190 >> 2);
  v515 = *(v182 + 4 * (BYTE2(v512) ^ 0xD3u)) + (BYTE2(v512) ^ 0x1834AE73) - 918864641;
  LODWORD(v177) = ((v531 ^ v162 ^ 0x13E3) >> 8);
  v514 = v177 ^ 0x5B;
  v513 = (v177 ^ 0x3B) - (v177 ^ 0xAE3AA6A7);
  v191 = v549 ^ 0xE3;
  v192 = *(v5 - 256) ^ 0xE3;
  v503 = *(v5 - 236) ^ 0x6A;
  *(v5 - 236) = (LODWORD(STACK[0x218]) ^ 0x42) + 1259292352 + *&v163[4 * (LODWORD(STACK[0x218]) ^ 0xFA)];
  LODWORD(v177) = (*(v5 - 240) ^ 0x50010EEDu) >> (v113 & 0x10);
  v501 = ((v177 - ((2 * v177) & 0x76817CC8) - 1153384860) ^ 0xBB40BE64) >> (v113 & 0x10 ^ 0x10);
  *(v5 - 240) = (BYTE1(v577) ^ 0x3D) + 1259292352 + *&v163[4 * (BYTE1(v577) ^ 0x85)];
  LODWORD(v182) = STACK[0x20C];
  LODWORD(v133) = STACK[0x228];
  LODWORD(v171) = *&v163[4 * (LODWORD(STACK[0x228]) ^ 0x54)];
  *(v5 - 256) = (BYTE1(LODWORD(STACK[0x20C])) ^ 0xA2) + 1259292352 + *&v163[4 * (BYTE1(LODWORD(STACK[0x20C])) ^ 0x1A)];
  LODWORD(STACK[0x228]) = (v133 ^ 0xEC) + 1259292352 + v171;
  LODWORD(STACK[0x218]) = (BYTE1(v588) ^ 0x1B) + 1259292352 + *&v163[4 * (BYTE1(v588) ^ 0xA3)];
  LODWORD(STACK[0x200]) = (LODWORD(STACK[0x200]) ^ 0x29) + 1259292352 + *&v163[4 * (LODWORD(STACK[0x200]) ^ 0x91)];
  v618 = (BYTE1(v569) ^ 0x3E) + 1259292352 + *&v163[4 * (BYTE1(v569) ^ 0x86)];
  v467 = (v569 ^ 0xEC544AA7) >> (*(v5 - 124) & 0x10) >> (*(v5 - 124) & 0x10 ^ 0x10);
  LODWORD(v133) = v595 ^ 0xDA;
  LODWORD(v595) = (v585 ^ 0xCE) + 1259292352 + *&v163[4 * (v585 ^ 0x76)];
  v466 = v592 ^ 0xC4;
  v586 = (BYTE1(v566) ^ 0xF0D6C2C6) + 1513653440 + *&v163[4 * (BYTE1(v566) ^ 0x7E)];
  v495 = LODWORD(STACK[0x21C]) ^ 0xD7;
  BYTE2(v174) = BYTE2(v573);
  v593 = (BYTE1(v573) ^ 0x1A) + 1259292352 + *&v163[4 * (BYTE1(v573) ^ 0xA2)];
  v483 = LODWORD(STACK[0x214]) ^ 0x7D;
  v478 = v582 ^ 0xFD;
  v580 = (v579 ^ 0x27) + 1259292352 + *&v163[4 * (v579 ^ 0x9F)];
  v465 = v590 ^ 0xF2;
  v568 = (BYTE1(v545) ^ 0x3D) + 1259292352 + *&v163[4 * (BYTE1(v545) ^ 0x85)];
  LODWORD(v549) = (BYTE1(v596) ^ 0x42) + 1259292352 + *&v163[4 * (BYTE1(v596) ^ 0xFA)];
  v535 = __ROR4__((*&v161[4 * (v551 ^ 0xC3)] - 372654966) ^ 0xF22EDCE1, 14) ^ 0x55ED63FE;
  BYTE2(v150) = BYTE2(v588);
  v487 = v588 ^ 0x75;
  v534 = (BYTE1(v551) ^ 0xCD) + 1259292352 + *&v163[4 * (BYTE1(v551) ^ 0x75)];
  v529 = (BYTE1(v560) ^ 0x54) + 1259292352 + *&v163[4 * (BYTE1(v560) ^ 0xEC)];
  v520 = (BYTE1(v558) ^ 0x3E) + 1259292352 + *&v163[4 * (BYTE1(v558) ^ 0x86)];
  LODWORD(v177) = HIBYTE(v558) ^ 0x89;
  v464 = BYTE2(v558) ^ 0xFB;
  v516 = (BYTE1(v563) ^ 0x9A) + 1259292352 + *&v163[4 * (BYTE1(v563) ^ 0x22)];
  v193 = v540 ^ v558 ^ 0x44E577B;
  v510 = (((v540 ^ v558 ^ 0x577B) >> 8) ^ 0x96) + 1259292352 + *&v163[4 * (((v540 ^ v558 ^ 0x577B) >> 8) ^ 0x2E)];
  LODWORD(v181) = *(v5 - 168);
  v528 = *&v165[4 * (BYTE3(v181) ^ 0x43)];
  v591 = *&v165[4 * (HIBYTE(v523) ^ 0x12)];
  v194 = *(v5 - 164);
  v583 = *&v165[4 * (HIBYTE(v194) ^ 0x3B)];
  v508 = *&v165[4 * v191];
  LODWORD(STACK[0x21C]) = *&v165[4 * v192];
  v500 = (v554 ^ 0x5F) + 1259292352 + *&v163[4 * (v554 ^ 0xE7)];
  LODWORD(STACK[0x214]) = *&v165[4 * (HIBYTE(v577) ^ 0x12)];
  LODWORD(STACK[0x20C]) = *&v165[4 * (BYTE3(v182) ^ 0x80)];
  v612 = *&v165[4 * (v611 ^ 0xA4)];
  v597 = *&v165[4 * (HIBYTE(v588) ^ 0x56)];
  v599 = *&v165[4 * (v598 ^ 0x2F)];
  v589 = *&v165[4 * (HIBYTE(v569) ^ 0xE1)];
  v555 = *&v165[4 * v133];
  v195 = BYTE2(v545) ^ 0x61;
  v541 = *&v165[4 * (HIBYTE(v566) ^ 0x61)];
  v559 = *&v165[4 * (HIBYTE(v573) ^ 0xE2)];
  v536 = *&v165[4 * (v584 ^ 0xD1)];
  v532 = *&v165[4 * (HIBYTE(v545) ^ 0xEE)];
  v530 = *&v165[4 * (HIBYTE(v594) ^ 0x91)];
  v527 = *&v165[4 * (HIBYTE(v551) ^ 0x79)];
  v522 = *&v165[4 * (HIBYTE(v560) ^ 0x35)];
  v511 = *&v165[4 * v177];
  v509 = *&v165[4 * (HIBYTE(v563) ^ 0x8E)];
  v507 = *&v165[4 * (HIBYTE(v193) ^ 0x52)];
  v498 = *&v165[4 * (v537 ^ 0xAE)];
  v499 = *&v165[4 * (HIBYTE(v544) ^ 0x93)];
  BYTE2(v188) = BYTE2(v538);
  v469 = *&v165[4 * (HIBYTE(v538) ^ 0xF7)];
  LODWORD(v537) = *&v161[4 * v505];
  v496 = *&v161[4 * v495];
  v497 = *&v161[4 * (v523 ^ 0xED)];
  v493 = *&v161[4 * (v561 ^ 0x9F)];
  v492 = *&v161[4 * v503];
  v491 = *&v161[4 * (v577 ^ 0xCD)];
  v490 = *&v161[4 * (LODWORD(STACK[0x208]) ^ 0xE)];
  v489 = *&v161[4 * (v613 ^ 0x27)];
  v488 = *&v161[4 * v487];
  v486 = *&v161[4 * (v609 ^ 0x84)];
  v485 = *&v161[4 * (v569 ^ 0xDF)];
  v482 = *&v161[4 * (v602 ^ 0x95)];
  v481 = *&v161[4 * (v566 ^ 0xFC)];
  v480 = *&v161[4 * v483];
  v479 = *&v161[4 * v478];
  v477 = *&v161[4 * (v545 ^ 0xC8)];
  v476 = *&v161[4 * (v600 ^ 0x10)];
  v475 = *&v161[4 * (v560 ^ 0xAB)];
  v474 = *&v161[4 * (v587 ^ 0xC0 ^ v560 ^ 0xF3 ^ 0x77)];
  v473 = *&v161[4 * (v587 ^ 0xE2)];
  v472 = *&v161[4 * (v193 ^ 0x2F)];
  v471 = *&v161[4 * (v556 ^ 4)];
  v470 = *&v161[4 * (v544 ^ 0xE6)];
  v601 = *&v161[4 * (v538 ^ 0x96)];
  v484 = *&v163[4 * (BYTE1(v544) ^ 0xB3)];
  v196 = v564 ^ 0xD1;
  v546 = *&v164[4 * (BYTE2(v181) ^ 0x1C)];
  v197 = (BYTE1(v538) ^ 0xCA) + 1259292352 + *&v163[4 * (BYTE1(v538) ^ 0x72)];
  v603 = *&v164[4 * (BYTE2(v523) ^ 0xC0)];
  LODWORD(v584) = *&v164[4 * (BYTE2(v194) ^ 0x4B)];
  v504 = *&v164[4 * (v575 ^ 0xD4)];
  *(v5 - 164) = *&v164[4 * (v501 ^ 0xE0)];
  *(v5 - 168) = *&v164[4 * (BYTE2(v577) ^ 0x58)];
  LODWORD(STACK[0x208]) = *&v164[4 * (BYTE2(v182) ^ 0xA2)];
  LODWORD(STACK[0x204]) = *&v164[4 * (LODWORD(STACK[0x204]) ^ 0xBB)];
  v614 = *&v164[4 * (BYTE2(v150) ^ 0x8E)];
  v616 = *&v164[4 * (v615 ^ 0x2A)];
  v610 = *&v164[4 * (v467 ^ 0xB)];
  v576 = *&v164[4 * v466];
  v574 = *&v164[4 * (BYTE2(v566) ^ 0xD7)];
  v578 = *&v164[4 * (BYTE2(v174) ^ 0xD1)];
  v570 = *&v164[4 * v465];
  v565 = *&v164[4 * v195];
  v562 = *&v164[4 * (BYTE2(v594) ^ 0xB7)];
  v552 = *&v164[4 * BYTE2(v551)];
  v539 = *&v164[4 * (HIWORD(v560) & 0xFE ^ (HIWORD(v560) & 1 | 0x795C7048) ^ 0x795C709E)];
  v524 = *&v164[4 * v464];
  v506 = *&v164[4 * (BYTE2(v563) ^ 0xE6)];
  v502 = *&v164[4 * (BYTE2(v193) ^ 0xAB)];
  v468 = *&v164[4 * v196];
  v494 = *&v164[4 * (BYTE2(v544) ^ 0xE)];
  v198 = *&v164[4 * (BYTE2(v188) ^ 0x6D)];
  v199 = *(&off_1010A0B50 + (v96 ^ 0x10C6)) - 371351350;
  LOBYTE(v177) = v199[*(v5 - 97) ^ 0xBBLL] ^ 0x83;
  LOBYTE(v181) = (8 * v177) & 0xEF ^ v177;
  v200 = *(&off_1010A0B50 + v96 - 5760) - 1460744034;
  LOBYTE(v177) = v199[*(v5 - 109) ^ 0xB2];
  LOBYTE(v179) = (8 * v177) & 0xEF ^ v177;
  v201 = *(&off_1010A0B50 + (v96 ^ 0x88B)) - 384873871;
  v202 = *(&off_1010A0B50 + v96 - 3589) - 344909583;
  LOBYTE(v177) = v199[*(v5 - 105) ^ 0xE2] ^ 0x99;
  LODWORD(v96) = *&v202[4 * (*(v5 - 110) ^ 5)];
  LOBYTE(v113) = v199[*(v5 - 101) ^ 0x2FLL] ^ 0x7A;
  LODWORD(v174) = *&v202[4 * (*(v5 - 98) ^ 0xB4)];
  LODWORD(v165) = *&v202[4 * (*(v5 - 102) ^ 0x11)];
  LODWORD(v199) = *&v202[4 * (*(v5 - 106) ^ 0xD5)];
  LODWORD(v122) = *&v200[4 * (*(v5 - 100) ^ 0xDCLL)];
  v203 = *&v200[4 * (*(v5 - 108) ^ 0xAELL)];
  LODWORD(v176) = *&v200[4 * (*(v5 - 104) ^ 0x79)];
  LODWORD(v202) = *&v200[4 * (*(v5 - 112) ^ 0xAALL)];
  v204 = *(v5 - 99);
  LODWORD(v200) = (v204 ^ 0x5D) + 804585110;
  LODWORD(v182) = *&v201[4 * (v204 ^ 0xC)];
  v205 = v525 ^ v543 ^ ((v179 ^ (v96 >> 10) ^ 0x73897E5D) & ((v96 << 22) ^ 0xB87FFFFF) | (v96 << 22) & 0x8C400000) ^ *&v201[4 * (*(v5 - 111) ^ 0xB1)] ^ ((*(v5 - 111) ^ 0xE0) + 804585110) ^ v526;
  v206 = *(v5 - 160);
  v207 = *(v5 - 152);
  BYTE2(v191) = BYTE2(v205) ^ BYTE2(v202);
  LODWORD(v204) = *(v207 + 4 * v514) ^ *(v206 + 4 * (HIBYTE(v512) ^ 0xBB)) ^ HIBYTE(v512) ^ v515 ^ v513 ^ v176 ^ v517 ^ __ROR4__(v165, 10) ^ (8 * v113) & 0xEF ^ v113 ^ *&v201[4 * (*(v5 - 103) ^ 0xCLL)] ^ ((*(v5 - 103) ^ 0x5D) + 804585110);
  LODWORD(v176) = v550 ^ v203 ^ (8 * v177) & 0xEF ^ v177 ^ __ROR4__(v199, 10) ^ *&v201[4 * (*(v5 - 107) ^ 0xCELL)] ^ ((*(v5 - 107) ^ 0x9F) + 804585110) ^ 0x2AC0E6A1;
  LODWORD(v177) = *(v206 + 4 * (HIBYTE(v518) ^ 0x97)) ^ *(v207 + 4 * (BYTE1(v518) ^ 0x90u)) ^ HIBYTE(v518) ^ v519 ^ ((BYTE1(v518) ^ 0xF0) - (BYTE1(v518) ^ 0xAE3AA66C)) ^ v122 ^ v181 ^ v182 ^ v200 ^ v521 ^ __ROR4__(v174, 10) ^ 0x28CA4F77;
  v208 = *(&off_1010A0B50 + (v557 ^ 0x1F3C)) - 632176574;
  v209 = *(&off_1010A0B50 + v557 - 6178) - 509355542;
  v210 = *(&off_1010A0B50 + v557 - 2656) - 2134524482;
  v211 = *(&off_1010A0B50 + v557 - 1783) - 1116065683;
  LODWORD(v200) = v205 ^ v202 ^ 0x2267855B;
  HIDWORD(v213) = *&v208[4 * (v200 >> 24)];
  LODWORD(v213) = HIDWORD(v213);
  v212 = v213 >> 13;
  HIDWORD(v213) = *&v209[4 * BYTE2(v177)];
  LODWORD(v213) = HIDWORD(v213);
  v214 = (v601 - 372654966) ^ v469 ^ v197 ^ v198 ^ v212 ^ (v212 >> 3) ^ (v212 >> 4) ^ (v213 >> 15) ^ ((v213 >> 15) >> 3) ^ ((v213 >> 15) >> 4);
  v215 = *&v211[4 * v176] + 1879173101;
  HIDWORD(v213) = *&v209[4 * BYTE2(v176)];
  LODWORD(v213) = HIDWORD(v213);
  v216 = v214 ^ __ROR4__(*&v210[4 * ((v204 ^ 0xA4A9) >> 8)], 17) ^ v215 ^ (2 * v215);
  v217 = (v213 >> 15) ^ __ROR4__(*&v208[4 * ((v204 ^ 0xD0E7A4A9) >> 24)], 13);
  v218 = *&v211[4 * v177] + 1879173101;
  v219 = v217 ^ v581 ^ (v217 >> 4) ^ __ROR4__(*&v210[4 * BYTE1(v200)], 17) ^ (v217 >> 3) ^ v218 ^ (2 * v218);
  HIDWORD(v213) = *&v208[4 * (v177 >> 24)];
  LODWORD(v213) = HIDWORD(v213);
  LODWORD(v165) = v500 ^ v498 ^ (v471 - 372654966) ^ v468 ^ (v213 >> 13) ^ ((v213 >> 13) >> 3) ^ ((v213 >> 13) >> 4);
  HIDWORD(v213) = *&v209[4 * ((v204 ^ 0xD0E7A4A9) >> 16)];
  LODWORD(v213) = HIDWORD(v213);
  LODWORD(v200) = *&v211[4 * v200] + 1879173101;
  LODWORD(v200) = v165 ^ (v213 >> 15) ^ ((v213 >> 15) >> 3) ^ ((v213 >> 15) >> 4) ^ __ROR4__(*&v210[4 * BYTE1(v176)], 17) ^ v200 ^ (2 * v200);
  HIDWORD(v213) = *&v208[4 * (v176 >> 24)];
  LODWORD(v213) = HIDWORD(v213);
  LODWORD(v165) = v499 ^ (v470 - 372654966) ^ ((BYTE1(v544) ^ 0xB) + 1259292352 + v484) ^ v494 ^ (v213 >> 13) ^ ((v213 >> 13) >> 3) ^ ((v213 >> 13) >> 4);
  HIDWORD(v213) = *&v209[4 * (BYTE2(v191) ^ 0x27)];
  LODWORD(v213) = HIDWORD(v213);
  LODWORD(v204) = *&v211[4 * (v204 ^ 0xB6)] + 1879173101;
  LODWORD(v165) = v165 ^ (v213 >> 15) ^ ((v213 >> 15) >> 3) ^ ((v213 >> 15) >> 4) ^ __ROR4__(*&v210[4 * BYTE1(v177)], 17) ^ v204 ^ (2 * v204) ^ 0x1805CFB1;
  LODWORD(v204) = v200 ^ 0xB4D404BA;
  BYTE2(v181) = BYTE2(v216) ^ 0x89;
  HIDWORD(v213) = *&v209[4 * (BYTE2(v200) ^ 0x94)];
  LODWORD(v213) = HIDWORD(v213);
  LODWORD(v177) = v213 >> 15;
  LODWORD(v213) = __ROR4__(*&v208[4 * ((v216 ^ 0x1689A482u) >> 24)], 13);
  LODWORD(v200) = *&v210[4 * (BYTE1(v219) ^ 0x4B)];
  LODWORD(v177) = v177 ^ v213 ^ v553 ^ ((v177 ^ v213) >> 4) ^ (v200 << 15) ^ (v200 >> 17) ^ ((v177 ^ v213) >> 3);
  LODWORD(v200) = *&v211[4 * v165] + 1879173101;
  LODWORD(v200) = v177 ^ v200 ^ (2 * v200);
  HIDWORD(v213) = *&v209[4 * BYTE2(v165)];
  LODWORD(v213) = HIDWORD(v213);
  LODWORD(v177) = (v213 >> 15) ^ __ROR4__(*&v208[4 * (HIBYTE(v219) ^ 0x73)], 13);
  v220 = *&v211[4 * v204] + 1879173101;
  v221 = v177 ^ v604 ^ (v177 >> 4) ^ __ROR4__(*&v210[4 * ((v216 ^ 0xA482) >> 8)], 17) ^ (v177 >> 3) ^ v220 ^ (2 * v220);
  LODWORD(v206) = *&v208[4 * BYTE3(v204)];
  HIDWORD(v213) = v206 ^ 0x7EF;
  LODWORD(v213) = v206 ^ 0xCF560000;
  LODWORD(v206) = v213 >> 13;
  HIDWORD(v213) = *&v209[4 * (BYTE2(v219) ^ 0x33)];
  LODWORD(v213) = HIDWORD(v213);
  LODWORD(v161) = v213 >> 15;
  v222 = *&v211[4 * (v216 ^ 0x9D)] + 1879173101;
  v223 = v504 ^ (v493 - 372654966) ^ v508 ^ v548 ^ v572 ^ (v206 >> 3) ^ (v206 >> 4) ^ __ROR4__(*&v210[4 * BYTE1(v165)], 17) ^ v161 ^ 0x87695A30 ^ v222 ^ (2 * v222) ^ ((-(v572 ^ 0xC420F05A) ^ ((v572 ^ 0xC420F05A) - 2 * ((v572 ^ 0xC420F05A) & 0x4391FE1B ^ v572 & 1) + 1133641242) ^ 0x4391FE1A ^ (v206 - (v206 ^ v572 ^ 0xC420F05A))) + v206) ^ ((((v161 ^ 0xC214932A) >> (v221 & 1) >> !(v221 & 1)) ^ v161 ^ 0x87695A30) >> 3);
  HIDWORD(v213) = *&v208[4 * (v165 >> 24)];
  LODWORD(v213) = HIDWORD(v213);
  v224 = v507 ^ (v472 - 372654966) ^ v510 ^ v502 ^ (v213 >> 13) ^ ((v213 >> 13) >> 3) ^ ((v213 >> 13) >> 4);
  HIDWORD(v213) = *&v209[4 * BYTE2(v181)];
  LODWORD(v213) = HIDWORD(v213);
  v225 = v224 ^ (v213 >> 15) ^ ((v213 >> 15) >> 3) ^ ((v213 >> 15) >> 4);
  LODWORD(v213) = __ROR4__(*&v210[4 * BYTE1(v204)], 17);
  LODWORD(v204) = *&v211[4 * (v219 ^ 0xC5)] + 1879173101;
  LODWORD(v204) = v225 ^ v213 ^ v204 ^ (2 * v204) ^ 0x8271060B;
  LODWORD(v165) = v221 ^ 0x74C7BC03;
  HIDWORD(v213) = *&v208[4 * (v200 >> 24)];
  LODWORD(v213) = HIDWORD(v213);
  v226 = (v473 - 372654966) ^ v509 ^ v516 ^ v506 ^ (v213 >> 13) ^ ((v213 >> 13) >> 3) ^ ((v213 >> 13) >> 4);
  LOBYTE(v221) = v223 ^ 0x5C;
  HIDWORD(v213) = *&v209[4 * ((v223 ^ 0xFED7895C) >> 16)];
  LODWORD(v213) = HIDWORD(v213);
  v227 = *&v211[4 * v204] + 1879173101;
  v228 = v226 ^ (v213 >> 15) ^ ((v213 >> 15) >> 3) ^ ((v213 >> 15) >> 4) ^ (*&v210[4 * BYTE1(v165)] << 15) ^ (*&v210[4 * BYTE1(v165)] >> 17) ^ v227 ^ (2 * v227);
  HIDWORD(v213) = *&v208[4 * BYTE3(v204)];
  LODWORD(v213) = HIDWORD(v213);
  BYTE1(v206) = BYTE1(v200) ^ 0x5B;
  LODWORD(v174) = v520 ^ v511 ^ (v474 - 372654966) ^ v524 ^ (v213 >> 13) ^ ((v213 >> 13) >> 3) ^ ((v213 >> 13) >> 4);
  HIDWORD(v213) = *&v209[4 * ((v200 ^ 0x1F5BCB) >> 16)];
  LODWORD(v213) = HIDWORD(v213);
  v229 = v174 ^ (v213 >> 15) ^ ((v213 >> 15) >> 3) ^ ((v213 >> 15) >> 4) ^ __ROR4__(*&v210[4 * (BYTE1(v223) ^ 0xCA)], 17);
  LODWORD(v174) = *&v211[4 * v165] + 1879173101;
  LODWORD(v181) = v229 ^ v174 ^ (2 * v174);
  HIDWORD(v213) = *&v209[4 * BYTE2(v165)];
  LODWORD(v213) = HIDWORD(v213);
  v230 = (v213 >> 15) ^ __ROR4__(*&v208[4 * (HIBYTE(v223) ^ 0x1E)], 13);
  LODWORD(v200) = *&v211[4 * (v200 ^ 0xD4)] + 1879173101;
  v231 = v230 ^ LODWORD(STACK[0x210]) ^ (v230 >> 4) ^ __ROR4__(*&v210[4 * BYTE1(v204)], 17) ^ (v230 >> 3) ^ v200 ^ (2 * v200);
  HIDWORD(v213) = *&v209[4 * BYTE2(v204)];
  LODWORD(v213) = HIDWORD(v213);
  v232 = (v213 >> 15) ^ __ROR4__(*&v208[4 * (v165 >> 24)], 13);
  LODWORD(v204) = *&v211[4 * v221] + 1879173101;
  LODWORD(v200) = v232 ^ LODWORD(STACK[0x220]) ^ (v232 >> 4) ^ __ROR4__(*&v210[4 * BYTE1(v206)], 17) ^ (v232 >> 3) ^ v204 ^ (2 * v204) ^ 0x96630527;
  HIDWORD(v213) = *&v208[4 * ((v181 ^ 0xCEC8A466) >> 24)];
  LODWORD(v213) = HIDWORD(v213);
  LODWORD(v165) = v213 >> 13;
  HIDWORD(v213) = *&v209[4 * (BYTE2(v228) ^ 0x63)];
  LODWORD(v213) = HIDWORD(v213);
  LODWORD(v204) = *&v211[4 * v200] + 1879173101;
  LODWORD(v204) = v529 ^ v522 ^ (v475 - 372654966) ^ v539 ^ v165 ^ (v165 >> 3) ^ (v165 >> 4) ^ (v213 >> 15) ^ ((v213 >> 15) >> 3) ^ ((v213 >> 15) >> 4) ^ __ROR4__(*&v210[4 * (BYTE1(v231) ^ 0xE8)], 17) ^ v204 ^ (2 * v204);
  LODWORD(v165) = v231 ^ 0xF3;
  HIDWORD(v213) = *&v208[4 * (HIBYTE(v228) ^ 0x73)];
  LODWORD(v213) = HIDWORD(v213);
  v233 = (v537 - 372654966) ^ v608 ^ v546 ^ v528 ^ (v213 >> 13) ^ ((v213 >> 13) >> 3) ^ ((v213 >> 13) >> 4);
  HIDWORD(v213) = *&v209[4 * (BYTE2(v231) ^ 0xD3)];
  LODWORD(v213) = HIDWORD(v213);
  LODWORD(v133) = *&v211[4 * (v181 ^ 0x66)] + 1879173101;
  v234 = v233 ^ (v213 >> 15) ^ ((v213 >> 15) >> 3) ^ ((v213 >> 15) >> 4) ^ __ROR4__(*&v210[4 * BYTE1(v200)], 17) ^ v133 ^ (2 * v133);
  HIDWORD(v213) = *&v208[4 * (HIBYTE(v231) ^ 0xA4)];
  LODWORD(v213) = HIDWORD(v213);
  v235 = v606 ^ (v213 >> 13) ^ ((v213 >> 13) >> 3) ^ ((v213 >> 13) >> 4);
  HIDWORD(v213) = *&v209[4 * BYTE2(v200)];
  LODWORD(v213) = HIDWORD(v213);
  LODWORD(v174) = *&v211[4 * (v228 ^ 0xB)] + 1879173101;
  LODWORD(v174) = v235 ^ (v213 >> 15) ^ ((v213 >> 15) >> 3) ^ ((v213 >> 15) >> 4) ^ __ROR4__(*&v210[4 * ((v181 ^ 0xA466) >> 8)], 17) ^ v174 ^ (2 * (v174 ^ 0x1D0B0908));
  HIDWORD(v213) = *&v208[4 * (v200 >> 24)];
  LODWORD(v213) = HIDWORD(v213);
  LODWORD(v200) = v213 >> 13;
  HIDWORD(v213) = *&v209[4 * (BYTE2(v181) ^ 0x88)];
  LODWORD(v213) = HIDWORD(v213);
  v236 = v527 ^ v552 ^ v534 ^ __ROR4__(v535, 18) ^ v200 ^ (v200 >> 3) ^ (v200 >> 4) ^ (v213 >> 15) ^ ((v213 >> 15) >> 3) ^ ((v213 >> 15) >> 4) ^ __ROR4__(*&v210[4 * (BYTE1(v228) ^ 0x7F)], 17);
  LODWORD(v200) = *&v211[4 * v165] + 1879173101;
  v237 = v236 ^ v200 ^ (2 * v200) ^ 0x6FD2CFC1;
  LODWORD(v200) = v174 ^ 0x39DBE0DF;
  LODWORD(v165) = (v174 >> 24) ^ 0xD9;
  LODWORD(v133) = v204 ^ 0x53CDFBA0;
  LODWORD(v174) = BYTE1(v204) ^ 0xB8;
  HIDWORD(v213) = *&v208[4 * ((v234 ^ 0xCD218700) >> 24)];
  LODWORD(v213) = HIDWORD(v213);
  LODWORD(v204) = v213 >> 13;
  HIDWORD(v213) = *&v209[4 * BYTE2(v200)];
  LODWORD(v213) = HIDWORD(v213);
  v238 = v530 ^ v549 ^ (v476 - 372654966) ^ v562 ^ v204 ^ (v204 >> 3) ^ (v204 >> 4) ^ (v213 >> 15) ^ ((v213 >> 15) >> 3) ^ ((v213 >> 15) >> 4);
  LODWORD(v204) = *&v211[4 * v133] + 1879173101;
  v239 = v238 ^ __ROR4__(*&v210[4 * BYTE1(v237)], 17) ^ v204 ^ (2 * v204) ^ 0xFBDA5F09;
  HIDWORD(v213) = *&v209[4 * ((v234 ^ 0xCD218700) >> 16)];
  LODWORD(v213) = HIDWORD(v213);
  LODWORD(v204) = (v213 >> 15) ^ __ROR4__(*&v208[4 * BYTE3(v133)], 13);
  v240 = *&v211[4 * v237] + 1879173101;
  LODWORD(v204) = v204 ^ *(v5 - 244) ^ (v204 >> 4) ^ __ROR4__(*&v210[4 * BYTE1(v200)], 17) ^ (v204 >> 3) ^ v240 ^ (2 * v240) ^ 0xD028D38E;
  HIDWORD(v213) = *&v208[4 * HIBYTE(v237)];
  LODWORD(v213) = HIDWORD(v213);
  LODWORD(v206) = v213 >> 13;
  HIDWORD(v213) = *&v209[4 * BYTE2(v133)];
  LODWORD(v213) = HIDWORD(v213);
  LODWORD(v200) = *&v211[4 * v200] + 1879173101;
  LODWORD(v200) = v532 ^ v568 ^ (v477 - 372654966) ^ v565 ^ v206 ^ (v206 >> 3) ^ (v206 >> 4) ^ (v213 >> 15) ^ ((v213 >> 15) >> 3) ^ ((v213 >> 15) >> 4) ^ __ROR4__(*&v210[4 * ((v234 ^ 0x8700) >> 8)], 17) ^ v200 ^ (2 * v200) ^ 0xFA104DD4;
  HIDWORD(v213) = *&v208[4 * v165];
  LODWORD(v213) = HIDWORD(v213);
  LODWORD(v165) = v536 ^ (v479 - 372654966) ^ v580 ^ v570 ^ (v213 >> 13) ^ ((v213 >> 13) >> 3) ^ ((v213 >> 13) >> 4);
  HIDWORD(v213) = *&v209[4 * BYTE2(v237)];
  LODWORD(v213) = HIDWORD(v213);
  v241 = *&v211[4 * v234] + 1879173101;
  v242 = v165 ^ (v213 >> 15) ^ ((v213 >> 15) >> 3) ^ ((v213 >> 15) >> 4) ^ __ROR4__(*&v210[4 * v174], 17) ^ v241 ^ (2 * v241) ^ 0xD2755D23;
  HIDWORD(v213) = *&v208[4 * BYTE3(v204)];
  LODWORD(v213) = HIDWORD(v213);
  v243 = v586 ^ v541 ^ (v481 - 372654966) ^ v574 ^ (v213 >> 13) ^ ((v213 >> 13) >> 3) ^ ((v213 >> 13) >> 4);
  HIDWORD(v213) = *&v209[4 * BYTE2(v239)];
  LODWORD(v213) = HIDWORD(v213);
  LODWORD(v165) = *&v211[4 * v200] + 1879173101;
  LODWORD(v165) = v243 ^ (v213 >> 15) ^ ((v213 >> 15) >> 3) ^ ((v213 >> 15) >> 4) ^ __ROR4__(*&v210[4 * BYTE1(v242)], 17) ^ v165 ^ (2 * v165);
  HIDWORD(v213) = *&v208[4 * HIBYTE(v242)];
  LODWORD(v213) = HIDWORD(v213);
  LODWORD(v174) = v213 >> 13;
  HIDWORD(v213) = *&v209[4 * BYTE2(v200)];
  LODWORD(v213) = HIDWORD(v213);
  v244 = (v482 - 372654966) ^ v555 ^ v595 ^ v576 ^ v174 ^ (v174 >> 3) ^ (v174 >> 4);
  LODWORD(v174) = *&v211[4 * v239] + 1879173101;
  LODWORD(v174) = v244 ^ (v213 >> 15) ^ ((v213 >> 15) >> 3) ^ ((v213 >> 15) >> 4) ^ v174 ^ (2 * v174);
  HIDWORD(v213) = *&v208[4 * HIBYTE(v239)];
  LODWORD(v213) = HIDWORD(v213);
  v245 = v559 ^ v593 ^ (v480 - 372654966) ^ v578 ^ (v213 >> 13) ^ ((v213 >> 13) >> 3) ^ ((v213 >> 13) >> 4);
  HIDWORD(v213) = *&v209[4 * BYTE2(v242)];
  LODWORD(v213) = HIDWORD(v213);
  LODWORD(v133) = *&v211[4 * v204] + 1879173101;
  v246 = v245 ^ (v213 >> 15) ^ ((v213 >> 15) >> 3) ^ ((v213 >> 15) >> 4) ^ __ROR4__(*&v210[4 * BYTE1(v200)], 17) ^ v133 ^ (2 * v133);
  LODWORD(v133) = *&v208[4 * (v200 >> 24)];
  HIDWORD(v213) = *&v209[4 * BYTE2(v204)];
  LODWORD(v213) = HIDWORD(v213);
  v247 = v246 ^ 0x75186AC5;
  v248 = (v213 >> 15) ^ __ROR4__(v133, 13);
  v249 = *&v211[4 * v242] + 1879173101;
  v250 = v248 ^ *(v5 - 248) ^ (v248 >> 4) ^ __ROR4__(*&v210[4 * BYTE1(v239)], 17) ^ (v248 >> 3) ^ v249 ^ (2 * v249) ^ 0xD1488555;
  v251 = *&v210[4 * BYTE1(v204)];
  LODWORD(v174) = v174 ^ (v251 << 15);
  v252 = v174 ^ (v251 >> 17) ^ 0x4BA4764C;
  v253 = v165 ^ 0x6358547;
  v254 = (v165 >> 24) ^ 0xE6;
  HIDWORD(v213) = *&v208[4 * HIBYTE(v247)];
  LODWORD(v213) = HIDWORD(v213);
  LODWORD(v165) = v213 >> 13;
  HIDWORD(v213) = *&v209[4 * BYTE2(v252)];
  LODWORD(v213) = HIDWORD(v213);
  v255 = (v496 - 372654966) ^ LODWORD(STACK[0x224]) ^ v584 ^ v583 ^ v165 ^ (v165 >> 3) ^ (v165 >> 4) ^ (v213 >> 15) ^ ((v213 >> 15) >> 3) ^ ((v213 >> 15) >> 4) ^ __ROR4__(*&v210[4 * BYTE1(v250)], 17);
  LODWORD(v165) = *&v211[4 * v253] + 1879173101;
  v256 = v255 ^ v165 ^ (2 * v165);
  LODWORD(v165) = *&v208[4 * ((v174 >> 24) ^ 0xAB)];
  HIDWORD(v213) = v165 ^ 0x7EF;
  LODWORD(v213) = v165 ^ 0xCF560000;
  v257 = v213 >> 13;
  v258 = (v213 >> 13) & 0x800;
  if (((v257 >> 1) & v258) != 0)
  {
    LODWORD(v258) = -v258;
  }

  v259 = (v258 + (v257 >> 1)) ^ v257 & 0xFFFFF7FF;
  HIDWORD(v261) = *&v208[4 * v254];
  LODWORD(v261) = HIDWORD(v261);
  v260 = v261 >> 13;
  HIDWORD(v261) = *&v209[4 * BYTE2(v247)];
  LODWORD(v261) = HIDWORD(v261);
  v262 = LODWORD(STACK[0x22C]) ^ (v497 - 372654966) ^ v603 ^ v591 ^ v260 ^ (v260 >> 3) ^ (v260 >> 4) ^ (v261 >> 15) ^ ((v261 >> 15) >> 3) ^ ((v261 >> 15) >> 4);
  v263 = *&v211[4 * v250] + 1879173101;
  v264 = v262 ^ __ROR4__(*&v210[4 * BYTE1(v252)], 17) ^ v263 ^ (2 * v263) ^ 0x7E580DA0;
  HIDWORD(v261) = *&v208[4 * HIBYTE(v250)];
  LODWORD(v261) = HIDWORD(v261);
  v265 = v589 ^ (v485 - 372654966) ^ v618 ^ v610 ^ (v261 >> 13) ^ ((v261 >> 13) >> 3) ^ ((v261 >> 13) >> 4);
  HIDWORD(v261) = *&v209[4 * BYTE2(v253)];
  LODWORD(v261) = HIDWORD(v261);
  v266 = *&v211[4 * v252] + 1879173101;
  v267 = v265 ^ (v261 >> 15) ^ ((v261 >> 15) >> 3) ^ ((v261 >> 15) >> 4) ^ v266 ^ (2 * v266) ^ __ROR4__(*&v210[4 * BYTE1(v247)], 17) ^ 0x8F9AB46E;
  HIDWORD(v261) = *&v209[4 * BYTE2(v250)];
  LODWORD(v261) = HIDWORD(v261);
  v268 = *&v211[4 * v247] + 1879173101;
  v269 = v599 ^ (v486 - 372654966) ^ LODWORD(STACK[0x200]) ^ v616 ^ (v261 >> 15) ^ v257 ^ ((v261 >> 15) >> 3) ^ ((v261 >> 15) >> 4) ^ __ROR4__(*&v210[4 * BYTE1(v253)], 17) ^ v268 ^ (2 * v268) ^ (v259 >> 3) ^ 0x87A0836B;
  HIDWORD(v261) = *&v208[4 * HIBYTE(v264)];
  LODWORD(v261) = HIDWORD(v261);
  v270 = (v488 - 372654966) ^ v597 ^ LODWORD(STACK[0x218]) ^ v614 ^ (v261 >> 13) ^ ((v261 >> 13) >> 3) ^ ((v261 >> 13) >> 4);
  LOBYTE(v268) = v256 ^ 0xE9;
  HIDWORD(v261) = *&v209[4 * ((v256 ^ 0xCA3DA8E9) >> 16)];
  LODWORD(v261) = HIDWORD(v261);
  v271 = *&v211[4 * v267] + 1879173101;
  v272 = v270 ^ (v261 >> 15) ^ ((v261 >> 15) >> 3) ^ ((v261 >> 15) >> 4) ^ __ROR4__(*&v210[4 * BYTE1(v269)], 17) ^ v271 ^ (2 * v271);
  HIDWORD(v261) = *&v208[4 * HIBYTE(v267)];
  LODWORD(v261) = HIDWORD(v261);
  v273 = *(v5 - 228);
  v274 = *(v5 - 232) ^ (v261 >> 13) ^ ((v261 >> 13) >> 3) ^ ((v261 >> 13) >> 4);
  HIDWORD(v261) = *&v209[4 * BYTE2(v264)];
  LODWORD(v261) = HIDWORD(v261);
  v275 = v274 ^ (v261 >> 15) ^ ((v261 >> 15) >> 3) ^ ((v261 >> 15) >> 4);
  HIDWORD(v261) = *&v208[4 * HIBYTE(v269)];
  LODWORD(v261) = HIDWORD(v261);
  v276 = v261 >> 13;
  v277 = v276 ^ (v273 + 552054650) ^ (v276 >> 4);
  HIDWORD(v261) = v277 ^ ~(v276 >> 3);
  LODWORD(v261) = v277 ^ (v276 >> 3);
  v278 = v261 >> 1;
  v279 = *&v211[4 * v269] + 1879173101;
  v280 = v275 ^ __ROR4__(*&v210[4 * ((v256 ^ 0xA8E9) >> 8)], 17) ^ v279 ^ (2 * v279);
  HIDWORD(v261) = *&v209[4 * BYTE2(v269)];
  LODWORD(v261) = HIDWORD(v261);
  v281 = (v261 >> 15) ^ __ROR4__(*&v208[4 * (HIBYTE(v256) ^ 0x2A)], 13);
  v282 = *&v211[4 * v264] + 1879173101;
  v283 = v281 ^ *(v5 - 224) ^ (v281 >> 4) ^ __ROR4__(*&v210[4 * (BYTE1(v267) ^ 0x43)], 17) ^ (v281 >> 3) ^ v282 ^ (2 * v282) ^ 0xAC34D3E7;
  HIDWORD(v261) = *&v209[4 * BYTE2(v267)];
  LODWORD(v261) = HIDWORD(v261);
  v284 = *&v211[4 * v268] + 1879173101;
  v285 = v612 ^ LODWORD(STACK[0x228]) ^ (v489 - 372654966) ^ LODWORD(STACK[0x204]) ^ (v273 + 552054650) ^ (v261 >> 15) ^ ((v261 >> 15) >> 3) ^ ((v261 >> 15) >> 4) ^ __ROR4__(*&v210[4 * BYTE1(v264)], 17) ^ v284 ^ (2 * v284) ^ __ROR4__(v278, 31);
  v286 = v285 ^ 0x658EA680;
  v287 = BYTE2(v285) ^ 0xCE;
  v288 = v280 ^ 0x986DBFAB;
  v289 = v272 ^ 0xC313CC66;
  v290 = *&v208[4 * HIBYTE(v283)];
  v291 = *&v208[4 * (HIBYTE(v280) ^ 0xD6)];
  v292 = *&v208[4 * HIBYTE(v286)];
  v293 = *&v209[4 * v287];
  HIDWORD(v261) = *&v208[4 * (HIBYTE(v272) ^ 0x23)];
  LODWORD(v261) = HIDWORD(v261);
  v294 = ((v280 ^ 0xBFAB) >> 8) ^ 0x45;
  v295 = *&v209[4 * BYTE2(v283)];
  v296 = (v261 >> 13) ^ *(v5 - 220) ^ ((v261 >> 13) >> 4) ^ ((v261 >> 13) >> 3);
  v297 = *&v209[4 * BYTE2(v289)];
  HIDWORD(v261) = *&v209[4 * (BYTE2(v288) ^ 0x7C)];
  LODWORD(v261) = HIDWORD(v261);
  v298 = v261 >> 15;
  v299 = *&v210[4 * v294];
  v300 = *&v210[4 * BYTE1(v286)];
  v301 = *&v210[4 * BYTE1(v283)];
  v302 = *&v210[4 * BYTE1(v289)];
  v303 = (v298 ^ (v298 >> 1) ^ 0xA31EDABF) >> (~v296 & 3) >> (v296 & 1) >> (v296 & 2);
  v304 = *&v211[4 * v286];
  v305 = *&v211[4 * v283];
  v306 = *&v211[4 * v289] + 1879173101;
  v307 = *&v211[4 * (v288 ^ 0xA5)] + 1879173101;
  v308 = v305 + 1879173101;
  HIDWORD(v261) = v290;
  LODWORD(v261) = v290;
  v309 = LODWORD(STACK[0x20C]) ^ *(v5 - 256) ^ (v490 - 372654966) ^ LODWORD(STACK[0x208]) ^ (v261 >> 13) ^ ((v261 >> 13) >> 3) ^ ((v261 >> 13) >> 4);
  HIDWORD(v261) = v293;
  LODWORD(v261) = v293;
  v310 = v309 ^ (v261 >> 15) ^ ((v261 >> 15) >> 3) ^ ((v261 >> 15) >> 4);
  v311 = __PAIR64__(v295, __ROR4__(v299, 17));
  v312 = v310 ^ v311 ^ v306 ^ (2 * v306) ^ 0x9A5490D;
  LODWORD(v311) = v295;
  v313 = (v311 >> 15) ^ ((v311 >> 15) >> 4) ^ ((v311 >> 15) >> 3);
  v314 = __PAIR64__(v291, __ROR4__(v300, 17));
  v315 = v313 ^ v314 ^ v307 ^ (2 * v307) ^ v296 ^ 0x846EA678;
  *(v5 - 220) = v315;
  LODWORD(v314) = v291;
  v316 = LODWORD(STACK[0x214]) ^ (v491 - 372654966) ^ *(v5 - 240) ^ *(v5 - 168) ^ (v314 >> 13) ^ ((v314 >> 13) >> 3) ^ ((v314 >> 13) >> 4);
  HIDWORD(v314) = v297;
  LODWORD(v314) = v297;
  v317 = v314 >> 15;
  v318 = __PAIR64__(v292, __ROR4__(v301, 17));
  v319 = v316 ^ v317 ^ v318 ^ (v317 >> 3) ^ (v317 >> 4) ^ (v304 + 1879173101) ^ (2 * (v304 + 1879173101)) ^ 0x4FCA395C;
  LODWORD(v318) = v292;
  v320 = LODWORD(STACK[0x21C]) ^ (v492 - 372654966) ^ *(v5 - 236) ^ *(v5 - 164) ^ (v318 >> 13) ^ ((v318 >> 13) >> 3) ^ ((v318 >> 13) >> 4) ^ v298 ^ __ROR4__(v302, 17) ^ v308 ^ (2 * v308) ^ 0xDFD9956E ^ v303;
  v321 = *(&off_1010A0B50 + (v557 ^ 0x1C37)) - 1692863579;
  v322 = *&v321[4 * v315];
  v323 = *&v321[4 * v319];
  v324 = *&v321[4 * v320];
  v325 = v312;
  LODWORD(v321) = *&v321[4 * v312];
  *(v5 - 224) = 1792349967 * v322 + 1895528591;
  *(v5 - 236) = 1792349967 * v323 + 1895528591;
  *(v5 - 232) = 1792349967 * v324 + 1895528591;
  *(v5 - 164) = 1792349967 * v321 + 1895528591;
  v326 = *(v5 - 212);
  *(v5 - 168) = (v326 ^ 0x95) - (v326 ^ 0xAE3AA609);
  v327 = v273 - 1937138976;
  v328 = -1802333311 * *(v5 - 120);
  v329 = *(*(&off_1010A0B50 + v557 - 2603) + (HIBYTE(v328) ^ 0x8FLL) - 677936231) ^ 0xFFFFFF8A;
  v330 = ((v329 << 28) ^ (v329 << 24) ^ 0xC5F9E85B) & ((*(*(&off_1010A0B50 + (v557 ^ 0x16C6)) + ((-127 * *(v5 - 120)) ^ 0xB7) - 1391077686) - 80) ^ 0xFFFFECDF) | (*(*(&off_1010A0B50 + (v557 ^ 0x16C6)) + ((-127 * *(v5 - 120)) ^ 0xB7) - 1391077686) - 80) & 0xA4;
  v331 = (v330 ^ 0xA00602A0) & ((*(*(&off_1010A0B50 + v557 - 2885) + (BYTE2(v328) ^ 0x51) - 364891727) << 16) ^ 0xB0D7CAE3) ^ v330 & 0x4F80201C;
  *(v5 - 228) = (v331 ^ 0x42401500) & ((*(*(&off_1010A0B50 + (v557 ^ 0x1B8B)) + (BYTE1(v328) ^ 0x2DLL) - 1056783503) << 8) ^ 0x47FB7DB3) ^ v331 & 0xB8040A4C;
  v332 = *(v5 - 144);
  v333 = *(v332 + (*(v5 - 200) ^ 0xB6)) - 17;
  LOBYTE(v295) = ((v333 >> 3) | (32 * v333)) ^ ((v333 >> 5) | (8 * v333)) & 0x87;
  *(v5 - 200) = v333 ^ ((((v295 & 0x80) >> 5) & 0xFC | (8 * (v295 ^ 0xB))) >> 2);
  v334 = *(v5 - 136);
  v335 = (*(v5 - 208) ^ 0x1834AEFC) - 918864641 + *(v334 + 4 * (*(v5 - 208) ^ 0x5Cu));
  v336 = *(v5 - 124);
  v337 = (*(v332 + (v336 ^ 0x42)) - 17);
  v338 = (*(v332 + (v336 ^ 0x42)) - 17) ^ (v337 >> 4) ^ (v337 >> 2);
  v339 = (BYTE2(v336) ^ 0x1834AE60) - 918864641 + *(v334 + 4 * (BYTE2(v336) ^ 0xC0u));
  v340 = BYTE1(v336) ^ 0x68;
  v341 = (BYTE1(v336) ^ 8) - (BYTE1(v336) ^ 0xAE3AA694);
  LOBYTE(v337) = *(v332 + (*(v5 - 204) ^ 0x63)) - 17;
  v342 = v337 ^ (v337 >> 2) ^ ((v337 >> 4) | 0xA0);
  v343 = *(v5 - 192);
  v344 = *(v5 - 160);
  v345 = *(v344 + 4 * (v343 ^ 4));
  v346 = HIBYTE(*(v5 - 124));
  v347 = *(v344 + 4 * (v346 ^ 0xF9u));
  LODWORD(v344) = *(v5 - 204);
  v348 = BYTE3(v344);
  v349 = *(*(v5 - 160) + 4 * (BYTE3(v344) ^ 0xEC));
  v350 = (BYTE2(v344) ^ 0x1834AEF5) - 918864641 + *(v334 + 4 * (BYTE2(v344) ^ 0x55u));
  v351 = *(v5 - 152);
  v352 = *(v351 + 4 * (v326 ^ 0xF5u));
  v353 = *(v351 + 4 * v340);
  v354 = BYTE1(*(v5 - 204));
  LODWORD(v351) = v348 ^ ((v354 ^ 0xD3) - (v354 ^ 0xAE3AA64F)) ^ v349 ^ v350 ^ *(v351 + 4 * (v354 ^ 0xB3u)) ^ v342 ^ v327;
  v355 = *(&off_1010A0B50 + (v557 ^ 0x1D2D)) - 14146855;
  LODWORD(v351) = v351 ^ HIBYTE(v325) ^ 0x2E92409B ^ *&v355[4 * (HIBYTE(v325) ^ 0xD2)];
  v356 = v351 + (v327 ^ 0x99793808) - 2 * (v351 & (v327 ^ 0x99793808));
  v357 = *(&off_1010A0B50 + (v557 ^ 0x919)) - 710173363;
  v358 = *(&off_1010A0B50 + v557 - 1938) - 2093895942;
  v359 = BYTE1(v320) ^ 0x9E153A76;
  v360 = *&v358[4 * (BYTE1(v320) ^ 0x34)];
  v361 = v360 & 4;
  if ((v359 & v360 & 4) != 0)
  {
    v361 = -v361;
  }

  v362 = v361 + v359;
  v363 = *(v5 - 220);
  v364 = *&v357[4 * BYTE2(v325)] + 2026066854;
  v365 = HIBYTE(v363) ^ *(v5 - 216) ^ *&v355[4 * (HIBYTE(v363) ^ 0xD2)] ^ v364 ^ (8 * v364) ^ v360 & 0xFFFFFFFB ^ *(v5 - 236);
  v366 = HIBYTE(v320);
  v367 = *&v355[4 * (HIBYTE(v320) ^ 0xD2)];
  v368 = *&v357[4 * BYTE2(v320)];
  v369 = *(v5 - 228);
  v370 = v369 ^ 0xD2607B77;
  v371 = v341 ^ v346 ^ v369 ^ 0xD2607B77 ^ v347 ^ v339 ^ v353 ^ v338 ^ HIBYTE(v319) ^ BYTE1(v325) ^ *&v355[4 * (HIBYTE(v319) ^ 0xD2)] ^ *&v358[4 * (BYTE1(v325) ^ 0x34)] ^ (*&v357[4 * BYTE2(v363)] + 2026066854) ^ (8 * (*&v357[4 * BYTE2(v363)] + 2026066854)) ^ *(v5 - 232);
  v372 = v343 ^ v369 ^ 0xD2607B77 ^ *(v5 - 168) ^ v345 ^ v335 ^ v352 ^ *(v5 - 200) ^ BYTE1(v363) ^ v366 ^ *&v358[4 * (BYTE1(v363) ^ 0x34)] ^ v367 ^ (*&v357[4 * BYTE2(v319)] + 2026066854) ^ (8 * (*&v357[4 * BYTE2(v319)] + 2026066854)) ^ 0xD ^ *(v5 - 164);
  v373 = (v368 + 2026066854) ^ (8 * (v368 + 2026066854)) ^ BYTE1(v319) ^ *&v358[4 * (BYTE1(v319) ^ 0x34)] ^ *(v5 - 224) ^ v356 ^ v365 ^ v362 ^ v371;
  v374 = (v371 ^ 0x445160FF) - ((2 * (v371 ^ 0x445160FF)) & 0x80189540) + 1074547360;
  v375 = v369 ^ v365 ^ v362 ^ 0xDB8D81E3 ^ v374;
  v376 = v374 ^ v373 ^ 0xA9BB5960 ^ v372;
  v377 = v375 ^ v372;
  v378 = v375 ^ v373 ^ 0xA9BB5960;
  v379 = *(&off_1010A0B50 + (v557 ^ 0x1D5C)) - 1789907102;
  v380 = v377 ^ 0xEC9B;
  v381 = BYTE2(v377) ^ 0x99;
  v382 = *(&off_1010A0B50 + (v557 ^ 0x14A8)) - 704377994;
  v383 = *(&off_1010A0B50 + v557 - 6381) - 1388210487;
  v384 = *(&off_1010A0B50 + (v557 ^ 0x170B)) - 1928514575;
  v385 = *&v382[4 * ((v376 ^ 0x4FE882B6) >> 16)] ^ *&v384[4 * (v373 ^ 0xB)] ^ (*&v379[4 * ((v377 ^ 0xD3CBEC9B) >> 24)] - 745563238) ^ (*&v383[4 * (BYTE1(v378) ^ 0x51)] + (BYTE1(v378) ^ 0x1B624F35) - 1261973989);
  v386 = BYTE2(v378) ^ 0x57;
  v387 = ((v373 ^ 0x10B) >> 8);
  v388 = HIBYTE(v378) ^ 0x34;
  v389 = (HIBYTE(v380) ^ 0x1B624F94) - 1261973989 + *&v383[4 * (HIBYTE(v380) ^ 0xF0)];
  v390 = (*&v379[4 * ((v373 ^ 0x2732010Bu) >> 24)] - 745563238) ^ *&v382[4 * v381] ^ *&v384[4 * (v378 ^ 0x16)] ^ (*&v383[4 * (((v376 ^ 0x82B6) >> 8) ^ 0xF0)] + (((v376 ^ 0x82B6) >> 8) ^ 0x1B624F94) - 1261973989) ^ 0xB7A1FA2E;
  v391 = *&v382[4 * v386] ^ (*&v379[4 * (HIBYTE(v376) ^ 0x86)] - 745563238) ^ *&v384[4 * v380] ^ (*&v383[4 * (v387 ^ 0xF0)] - (v387 ^ 0xE49DB06B) - 1261973990) ^ 0x33C7CDEE;
  v392 = *&v382[4 * (BYTE2(v373) ^ 0x60)] ^ *&v384[4 * (v376 ^ 0xB6)] ^ (*&v379[4 * v388] - 745563238) ^ v389 ^ 0xF41D961C;
  v393 = (*&v379[4 * ((((((v385 ^ 0x8D4C2F2A) >> ((v387 ^ 0x6B) & 0x18)) - ((2 * ((v385 ^ 0x8D4C2F2A) >> ((v387 ^ 0x6B) & 0x18))) & 0x7F5F09D0) - 1079016216) ^ 0xBFAF84E8) >> (~((v373 ^ 0x10B) >> 8) & 0x10) >> (((v373 ^ 0x10B) >> 8) & 8)) ^ 0xC9)] - 745563238) ^ *&v382[4 * BYTE2(v391)] ^ *&v384[4 * v390] ^ ((BYTE1(v392) ^ 0x1B624F94) - 1261973989 + *&v383[4 * (BYTE1(v392) ^ 0xF0)]);
  v394 = *&v382[4 * (BYTE2(v385) ^ 0x1E)] ^ (*&v379[4 * HIBYTE(v390)] - 745563238) ^ ((BYTE1(v391) ^ 0x1B624F94) - 1261973989 + *&v383[4 * (BYTE1(v391) ^ 0xF0)]) ^ *&v384[4 * v392] ^ 0x4AB34469;
  v395 = *&v379[4 * HIBYTE(v392)];
  v396 = *&v382[4 * BYTE2(v392)] ^ (*&v379[4 * HIBYTE(v391)] - 745563238) ^ ((BYTE1(v390) ^ 0x1B624F94) - 1261973989 + *&v383[4 * (BYTE1(v390) ^ 0xF0)]) ^ *&v384[4 * (v385 ^ 0xA1)] ^ 0xE8B32F7E;
  v397 = *&v382[4 * BYTE2(v390)] ^ (v395 - 745563238) ^ ((BYTE1(v385) ^ 0x1B624FBB) - 1261973989 + *&v383[4 * (BYTE1(v385) ^ 0xDF)]) ^ *&v384[4 * v391] ^ 0x2173886C;
  v398 = (*&v379[4 * HIBYTE(v394)] - 745563238) ^ ((BYTE1(v396) ^ 0x1B624F94) - 1261973989 + *&v383[4 * (BYTE1(v396) ^ 0xF0)]) ^ *&v384[4 * v397] ^ *&v382[4 * (BYTE2(v393) ^ 0x3D)];
  v399 = *&v382[4 * BYTE2(v396)] ^ ((BYTE1(v397) ^ 0x1B624F94) - 1261973989 + *&v383[4 * (BYTE1(v397) ^ 0xF0)]) ^ *&v384[4 * v394] ^ (*&v379[4 * ((HIBYTE(v393) ^ 0xC5) - ((2 * (HIBYTE(v393) ^ 0xC5)) & 0x192)) + 804] - 745563238);
  v400 = *&v382[4 * BYTE2(v397)] ^ (*&v379[4 * HIBYTE(v396)] - 745563238) ^ ((BYTE1(v394) ^ 0x1B624F94) - 1261973989 + *&v383[4 * (BYTE1(v394) ^ 0xF0)]) ^ 0x37660E1 ^ *&v384[4 * (v393 ^ 0x29)];
  v401 = *&v382[4 * BYTE2(v394)] ^ (*&v379[4 * HIBYTE(v397)] - 745563238) ^ *&v384[4 * v396] ^ 0x9E551D5B ^ ((BYTE1(v393) ^ 0x1B624F47) - 1261973989 + *&v383[4 * (BYTE1(v393) ^ 0x23)]);
  v402 = *&v382[4 * BYTE2(v401)] ^ (*&v379[4 * HIBYTE(v400)] - 745563238) ^ ((BYTE1(v398) ^ 0x1B624F85) - 1261973989 + *&v383[4 * (BYTE1(v398) ^ 0xE1)]) ^ *&v384[4 * (v399 ^ 0xF)];
  v403 = *&v382[4 * (BYTE2(v399) ^ 0xC7)] ^ (*&v379[4 * (HIBYTE(v398) ^ 0x8B)] - 745563238) ^ ((BYTE1(v400) ^ 0x1B624F94) - 1261973989 + *&v383[4 * (BYTE1(v400) ^ 0xF0)]) ^ *&v384[4 * v401] ^ 0xFA280C0C;
  v404 = (*&v379[4 * ((v399 ^ 0xBE95A70F) >> 24)] - 745563238) ^ *&v382[4 * BYTE2(v400)] ^ ((BYTE1(v401) ^ 0x1B624F94) - 1261973989 + *&v383[4 * (BYTE1(v401) ^ 0xF0)]) ^ *&v384[4 * (v398 ^ 0xB4)] ^ 0x3F017E4A;
  v405 = *&v382[4 * (BYTE2(v398) ^ 0xC3)] ^ (*&v379[4 * HIBYTE(v401)] - 745563238) ^ *&v384[4 * v400] ^ 0x51F90A3A ^ ((((v399 ^ 0xA70F) >> 8) ^ 0x1B624F94) - 1261973989 + *&v383[4 * (((v399 ^ 0xA70F) >> 8) ^ 0xF0)]);
  v406 = (BYTE1(v403) ^ 0x1B624F94) - 1261973989 + *&v383[4 * (BYTE1(v403) ^ 0xF0)];
  v407 = v402 ^ 0x43;
  v408 = *&v382[4 * BYTE2(v404)] ^ (*&v379[4 * HIBYTE(v403)] - 745563238) ^ *&v384[4 * v405] ^ ((BYTE1(v402) ^ 0x1B624FDB) - 1261973989 + *&v383[4 * (BYTE1(v402) ^ 0xBF)]) ^ 0xFD362D61;
  v409 = HIBYTE(v402) ^ 0xB1;
  v410 = *&v382[4 * (BYTE2(v402) ^ 0xE)] ^ (*&v379[4 * HIBYTE(v404)] - 745563238) ^ *&v384[4 * v403] ^ ((BYTE1(v405) ^ 0x1B624F94) - 1261973989 + *&v383[4 * (BYTE1(v405) ^ 0xF0)]) ^ 0x63987D4;
  v411 = *&v382[4 * BYTE2(v403)] ^ (*&v379[4 * HIBYTE(v405)] - 745563238) ^ ((BYTE1(v404) ^ 0x1B624F94) - 1261973989 + *&v383[4 * (BYTE1(v404) ^ 0xF0)]) ^ *&v384[4 * v407] ^ 0x50A570C2;
  v412 = *&v382[4 * BYTE2(v405)] ^ (*&v379[4 * v409] - 745563238) ^ v406 ^ *&v384[4 * v404] ^ 0x831BD5B8;
  v413 = (BYTE1(v408) ^ 0x1B624F94) - 1261973989 + *&v383[4 * (BYTE1(v408) ^ 0xF0)];
  LODWORD(v414) = __ROR4__(*&v382[4 * BYTE2(v408)] ^ *&v384[4 * v412] ^ (*&v379[4 * HIBYTE(v411)] - 745563238) ^ ((BYTE1(v410) ^ 0x1B624F94) - 1261973989 + *&v383[4 * (BYTE1(v410) ^ 0xF0)]) ^ 0xF8A4B22F, 20);
  v415 = *&v382[4 * BYTE2(v410)] ^ (*&v379[4 * HIBYTE(v408)] - 745563238) ^ ((BYTE1(v412) ^ 0x1B624F94) - 1261973989 + *&v383[4 * (BYTE1(v412) ^ 0xF0)]) ^ *&v384[4 * v411] ^ 0x6B9DEA17;
  v416 = *&v382[4 * BYTE2(v412)] ^ *&v384[4 * v408] ^ (*&v379[4 * HIBYTE(v410)] - 745563238) ^ ((BYTE1(v411) ^ 0x1B624F94) - 1261973989 + *&v383[4 * (BYTE1(v411) ^ 0xF0)]) ^ 0xE6024EC2;
  v417 = *&v382[4 * BYTE2(v411)] ^ (*&v379[4 * HIBYTE(v412)] - 745563238) ^ v413 ^ *&v384[4 * v410] ^ 0x24416D25;
  LODWORD(v414) = v414 ^ 0x5F05ECDB;
  HIDWORD(v414) = v414;
  v418 = v414 >> 12;
  v419 = (*&v379[4 * HIBYTE(v416)] - 745563238) ^ *&v382[4 * BYTE2(v417)] ^ *&v384[4 * v415] ^ (*&v383[4 * (((v418 ^ 0x220F) >> 8) ^ 0xF0)] + (((v418 ^ 0x220F) >> 8) ^ 0x1B624F94) - 1261973989);
  v420 = *&v382[4 * BYTE2(v415)] ^ ((BYTE1(v416) ^ 0x1B624F94) - 1261973989 + *&v383[4 * (BYTE1(v416) ^ 0xF0)]) ^ *&v384[4 * v417] ^ (*&v379[4 * ((v418 ^ 0xACEC220F) >> 24)] - 745563238);
  v421 = *&v382[4 * BYTE2(v416)] ^ (*&v379[4 * HIBYTE(v415)] - 745563238) ^ ((BYTE1(v417) ^ 0x1B624F94) - 1261973989 + *&v383[4 * (BYTE1(v417) ^ 0xF0)]) ^ 0x6869A07E ^ *&v384[4 * (((v418 ^ 0xF) - ((v414 >> 12) ^ 0x84)) ^ 0xFFFFFFFE) + 4 * (v418 ^ 0xF)];
  v422 = *&v382[4 * ((v418 ^ 0xACEC220F) >> 16)] ^ (*&v379[4 * HIBYTE(v417)] - 745563238) ^ ((BYTE1(v415) ^ 0x1B624F94) - 1261973989 + *&v383[4 * (BYTE1(v415) ^ 0xF0)]) ^ *&v384[4 * v416] ^ 0xA470E2F6;
  v423 = *&v382[4 * (BYTE2(v419) ^ 0xC8)] ^ ((BYTE1(v422) ^ 0x1B624F94) - 1261973989 + *&v383[4 * (BYTE1(v422) ^ 0xF0)]) ^ (*&v379[4 * HIBYTE(v421)] - 745563238) ^ *&v384[4 * (v420 ^ 0xCB)];
  v424 = (*&v379[4 * (HIBYTE(v419) ^ 0xC)] - 745563238) ^ *&v382[4 * BYTE2(v422)] ^ ((BYTE1(v420) ^ 0x1B624F31) - 1261973989 + *&v383[4 * (BYTE1(v420) ^ 0x55)]) ^ *&v384[4 * v421];
  v425 = v419 ^ 0x6E;
  v426 = *&v382[4 * BYTE2(v421)] ^ (*&v379[4 * ((v420 ^ 0x246A5CBu) >> 24)] - 745563238) ^ *&v384[4 * v422] ^ ((BYTE1(v419) ^ 0x1B624F3B) - 1261973989 + *&v383[4 * (BYTE1(v419) ^ 0x5F)]);
  v427 = *&v382[4 * ((v420 ^ 0x246A5CBu) >> 16)] ^ (*&v379[4 * HIBYTE(v422)] - 745563238) ^ *&v384[4 * v425] ^ 0x71FC63A8 ^ ((BYTE1(v421) ^ 0x1B624F94) - 1261973989 + *&v383[4 * (BYTE1(v421) ^ 0xF0)]);
  v428 = v426 ^ 0xE75AD66C;
  v429 = v426 ^ 0xE7;
  v430 = v423 ^ 0x9DD6CDA0;
  v431 = *&v382[4 * BYTE2(v427)] ^ (*&v379[4 * ((v424 ^ 0xACEE8BD0) >> 24)] - 745563238) ^ ((BYTE1(v428) ^ 0x1B624F94) - 1261973989 + *&v383[4 * (BYTE1(v428) ^ 0xF0)]) ^ *&v384[4 * (v423 & 0x8B ^ 0x3EF771AF ^ ((v430 & 0x74) - ((2 * v430) & 0x48) + 1056403876))];
  v432 = (((v423 ^ 0xCDA0) >> 8) ^ 0x1B624F94) - 1261973989 + *&v383[4 * (((v423 ^ 0xCDA0) >> 8) ^ 0xF0)];
  v433 = *&v382[4 * BYTE2(v428)];
  v434 = *&v379[4 * HIBYTE(v428)];
  v435 = (BYTE1(v424) ^ 0x1B624F1F) - 1261973989 + *&v383[4 * (BYTE1(v424) ^ 0x7B)];
  LODWORD(v383) = *&v382[4 * (BYTE2(v424) ^ 0xBC)] ^ (*&v379[4 * HIBYTE(v430)] - 745563238) ^ ((BYTE1(v427) ^ 0x1B624F94) - 1261973989 + *&v383[4 * (BYTE1(v427) ^ 0xF0)]) ^ *&v384[4 * v429] ^ 0x5938680A;
  LODWORD(v379) = v433 ^ (*&v379[4 * HIBYTE(v427)] - 745563238) ^ *&v384[4 * (v424 ^ 0xD0)] ^ v432 ^ 0x79DCAD3D;
  LODWORD(v382) = *&v382[4 * BYTE2(v430)] ^ (v434 - 745563238) ^ v435 ^ *&v384[4 * v427] ^ 0xFE45340;
  v436 = *(&off_1010A0B50 + (v557 ^ 0x98E)) - 2128396990;
  v437 = *&v436[4 * (v383 >> 24)];
  v438 = *(&off_1010A0B50 + v557 - 4749) - 458403799;
  v439 = BYTE2(v431) ^ 0x7291ECEF ^ *&v438[4 * (BYTE2(v431) ^ 0xFE)];
  v440 = *(&off_1010A0B50 + (v557 ^ 0x1DC6)) - 1311149110;
  v441 = *(&off_1010A0B50 + v557 - 5302) - 705042250;
  v442 = (v437 ^ 0xDE85AB4 ^ (v437 >> 2) & 0x3399C0E8) + v439 - 2 * ((v437 ^ 0xDE85AB4 ^ (v437 >> 2) & 0x3399C0E8) & v439);
  v443 = *&v436[4 * (v379 >> 24)];
  v444 = *&v436[4 * (HIBYTE(v431) ^ 0xD0)];
  v445 = (BYTE2(v382) ^ BYTE1(v383)) ^ v443 ^ *&v438[4 * (BYTE2(v382) ^ 0x4C)] ^ *&v441[4 * (BYTE1(v383) ^ 0xED)] ^ (v443 >> 2) & 0x3399C0E8 ^ 0x25A73940 ^ (v440[v431 ^ 0x90] - 69);
  v446 = *&v436[4 * (v382 >> 24)];
  v447 = v446 ^ (BYTE1(v431) ^ BYTE2(v383)) ^ *&v438[4 * (BYTE2(v383) ^ 0x4C)] ^ *&v441[4 * (BYTE1(v431) ^ 0x2D)] ^ (v446 >> 2) & 0x3399C0E8 ^ (v440[v379] - 69);
  v448 = v444 ^ (BYTE1(v382) ^ BYTE2(v379)) ^ *&v438[4 * (BYTE2(v379) ^ 0x4C)] ^ *&v441[4 * (BYTE1(v382) ^ 0xED)] ^ (v444 >> 2) & 0x3399C0E8 ^ (v440[v383] - 69);
  LODWORD(v383) = v447 ^ 0xBD4AF8D1;
  v449 = v448 ^ v447 ^ v445 ^ 0xFDB0644D;
  LODWORD(v382) = (v440[v382] - 69) ^ BYTE1(v379) ^ *&v441[4 * (BYTE1(v379) ^ 0xED)] ^ v442 ^ v448 ^ v370;
  v450 = v382 ^ v445;
  v451 = v382 ^ v445 ^ 0x509F4295;
  v452 = v383 ^ v449 ^ v451;
  v453 = v382 ^ v383;
  v454 = v382 ^ v383 ^ 0x8906;
  v455 = v449 ^ v370;
  v456 = *(&off_1010A0B50 + v557 - 3279) - 536732715;
  if ((v454 & 2) != 0)
  {
    v457 = -2;
  }

  else
  {
    v457 = 2;
  }

  v458 = *(v5 - 120);
  v458[2] = v456[BYTE1(v455) ^ 0xCBLL] ^ 9 ^ (4 * v456[BYTE1(v455) ^ 0xCBLL]) & 0x50;
  v459 = *(&off_1010A0B50 + v557 - 6227) - 721492943;
  v458[11] = (v459[v455 ^ 0x2ALL] - 1) ^ 0xFA;
  v460 = *(&off_1010A0B50 + (v557 ^ 0x10B6)) - 272376038;
  v458[4] = (v460[HIBYTE(v452) ^ 0x76] - 92) ^ 0x1E;
  v461 = BYTE2(v453) ^ 0xDB;
  *v458 = (v459[v452 ^ 0x52] - 1) ^ 0xFA;
  v458[10] = (v459[(v457 + (v453 ^ 0x27)) ^ 0xB5] - 1) ^ 0xFA;
  v458[6] = (v460[HIBYTE(v455) ^ 0x7CLL] - 92) ^ 0x1E;
  v458[5] = (v460[HIBYTE(v453) ^ 0x53] - 92) ^ 0x1E;
  v462 = *(&off_1010A0B50 + v557 - 6177) - 198242827;
  v458[13] = BYTE2(v452) ^ v462[BYTE2(v452) ^ 0xCDLL] ^ 0x3F;
  v458[8] = v456[BYTE1(v451) ^ 0x6CLL] ^ 0xA5 ^ ((4 * v456[BYTE1(v451) ^ 0x6CLL]) | 0xAC);
  v458[14] = v456[HIBYTE(v454) ^ 0x4CLL] ^ ((4 * v456[HIBYTE(v454) ^ 0x4CLL]) & 0x51 | 6) ^ 0xF;
  v458[3] = BYTE2(v455) ^ 0xD8 ^ v462[BYTE2(v455) ^ 0x2ALL];
  v458[15] = v456[BYTE1(v452) ^ 0x29] ^ 9 ^ (4 * v456[BYTE1(v452) ^ 0x29]) & 0x50;
  v458[12] = v461 ^ 0xDB ^ v462[v461 ^ 0x29];
  v458[9] = (v459[v451 ^ 0x8DLL] - 1) ^ 0xFA;
  v458[1] = BYTE2(v451) ^ 0xA4 ^ v462[BYTE2(v451) ^ 0x56];
  v458[7] = (v460[HIBYTE(v450) ^ 0x4ALL] - 92) ^ 0x1E;
  return (*(*(v5 - 184) + 8 * v557))(*(v5 - 176));
}

uint64_t sub_10017EECC@<X0>(int a1@<W8>)
{
  v6 = a1 + v1 + ((v4 + 0x3FFF) | 0x2980u) + 1433840284;
  v8 = v2 >= v3 && v2 <= v6;
  return (*(v5 + 8 * ((230 * v8) ^ v4)))();
}

uint64_t sub_10017EF2C(__n128 a1, __n128 a2)
{
  v4.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v4.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  return (*(v2 + 8 * v3))(a1, a2, v4);
}

uint64_t sub_10017EFA8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = (((a8 ^ 0x6726C10A) - 1730593034) ^ ((a8 ^ 0x51D3C2BE) - 1372832446) ^ ((a8 ^ 0x2B8985C8) - 730461007 + ((a7 + 458) | 0x2D86))) + (((v15 ^ 0x284AC2D2) - 675988178) ^ ((v15 ^ 0x2422C539) - 606258489) ^ ((v15 ^ 0x11148197) - 286556567)) - 1359148949;
  v17 = v16 ^ ((v16 ^ 0xE11CF60C) + 1793127041) ^ ((v16 ^ 0x550566E3) - 554081680) ^ ((v16 ^ 0xB7659023) + 1016698032) ^ ((v16 ^ 0x777FFBBF) - 58458316) ^ 0x697F7D0F;
  v18 = (((a4 ^ 0x6318231A) - 1662526234) ^ ((a4 ^ 0x4B50207C) - 1263542396) ^ ((a4 ^ 0x3534851A) - 892634394)) + 2018569649 + (((a3 ^ 0x31C0CFE0) - 834719712) ^ ((a3 ^ 0x1CF0A0F9) - 485531897) ^ ((a3 ^ 0x304CE965) - 810346853));
  return (*(v14 + 8 * a7))(a1, a2, a3, v18 ^ ((v18 ^ 0x280F4363) - 358130650) ^ ((v18 ^ 0xE1E9D762) + 591513637) ^ ((v18 ^ 0xB0C1B47) - 911997950) ^ ((v18 ^ 0xFFBD6FFF) + 1024815290) ^ 0x202B66C5, a5, a6, a7, v17, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_10017F544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, __n128 a8, __n128 a9, __n128 a10, int8x16_t a11, double a12, int8x16_t a13)
{
  v20 = ~a1 + v16;
  v21 = v20 & 0xF;
  v23.i64[0] = vqtbl4q_s8(*(&a8 - 1), a11).u64[0];
  *&v23.i64[1] = a12;
  v24 = vrev64q_s8(vmulq_s8(v23, a13));
  *(a4 + v20) = veorq_s8(veorq_s8(veorq_s8(*(v13 + v21 - 15), *(a2 + v20)), veorq_s8(*(v21 + v14 - 13), *(v15 + v21 - 15))), vextq_s8(v24, v24, 8uLL));
  return (*(v19 + 8 * ((28 * (a1 + a6 + a5 == v17)) ^ v18)))();
}

uint64_t sub_10017F5C4@<X0>(uint64_t a1@<X5>, uint64_t a2@<X6>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v15 = v5 - 1;
  v16 = ((*(*v14 + (*v13 & v6)) ^ (a4 + v15)) & v7) * v8;
  v17 = (v16 ^ HIWORD(v16)) * v8;
  *(a4 + v15) = *(a2 + (v17 >> 24)) ^ *(a1 + v15) ^ *((v17 >> 24) + v11 + 2) ^ *((v17 >> 24) + a3 + 4) ^ v17 ^ (BYTE3(v17) * v9);
  return (*(v12 + 8 * (((v15 == 0) * v10) ^ v4)))();
}

uint64_t sub_10017F640(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  v46 = v41 < v42;
  if (((v39 + 1) ^ a27) == 0x3745F9CE)
  {
    v47 = 0;
  }

  else
  {
    v47 = v39 + 1;
  }

  v48 = *(&a39 + v47) + 1901388722 + *(&a39 + 3 * v39 % v44);
  v49 = ((v48 & 0x41BEE58C) << ((v43 + 110) ^ 0xFD)) & (v48 ^ 0x51BCC14A) ^ v48 & 0x41BEE58C;
  v50 = ((2 * (v48 ^ 0x52F1C352)) ^ 0x269E4DBC) & (v48 ^ 0x52F1C352) ^ (2 * (v48 ^ 0x52F1C352)) & 0x134F26DE;
  v51 = v50 ^ 0x11412242;
  v52 = (v50 ^ 0x120E0410) & (4 * v49) ^ v49;
  v53 = ((4 * v51) ^ 0x4D3C9B78) & v51 ^ (4 * v51) & 0x134F26D8;
  v54 = v53 ^ 0x12432486;
  v55 = (v53 ^ 0x10C0240) & (16 * v52) ^ v52;
  v56 = *(&a39 + v39);
  v57 = ((16 * v54) ^ 0x34F26DE0) & v54 ^ (16 * v54) & 0x134F26C0;
  v58 = (v56 ^ 0x9C4F3063) & (2 * (v56 & v40)) ^ v56 & v40;
  v59 = v55 ^ 0x134F26DE;
  v60 = ((2 * (v56 ^ 0x1C800265)) ^ 0x99DF760C) & (v56 ^ 0x1C800265) ^ (2 * (v56 ^ 0x1C800265)) & 0xCCEFBB06;
  v61 = v57 ^ 0x30D021E;
  v62 = (v60 ^ 0x80CF2204) & (4 * v58) ^ v58;
  v63 = (v57 ^ 0x10422400) & (v55 << 8);
  v64 = ((4 * (v60 ^ 0x44208902)) ^ 0x33BEEC18) & (v60 ^ 0x44208902) ^ (4 * (v60 ^ 0x44208902)) & 0xCCEFBB00;
  v65 = v64 ^ 0xCC411306;
  v66 = (v64 ^ 0xAEA800) & (16 * v62) ^ v62;
  v67 = v59 ^ v63;
  v68 = ((16 * v65) ^ 0xCEFBB060) & v65 ^ (16 * v65) & 0xCCEFBB00;
  v69 = v68 ^ 0x40B06;
  v70 = v66 ^ 0xCCEFBB06 ^ (v68 ^ 0xCCEBB000) & (v66 << 8);
  v71 = v56 ^ v48 ^ (2 * (v67 ^ v70 ^ (v70 << 16) & 0x4CEF0000 ^ (v67 << 16) & 0x134F0000 ^ ((v67 << 16) ^ 0x26DE0000) & ((v61 << 8) & 0x134F0000 ^ 0x10490000 ^ ((v61 << 8) ^ 0x4F260000) & v61) ^ ((v70 << 16) ^ 0x3B060000) & ((v69 << 8) & 0x4CEF0000 ^ 0x440000 ^ ((v69 << 8) ^ 0x6FBB0000) & v69)));
  v72 = (((v71 ^ 0x33C2968B) - 1561011380) ^ ((v71 ^ 0x8CDF8838) + 501859833) ^ ((v71 ^ 0x851D79EC) + 338375725)) - 2074469379;
  if (v46 == v39 + 1 > 0xAE7790F6)
  {
    v46 = v39 + 1367895818 < v41;
  }

  *(&a39 + v39) = v72;
  return (*(v45 + 8 * ((!v46 * a1) ^ v43)))();
}

uint64_t sub_10017F9C4()
{
  v3 = *(&off_1010A0B50 + (v2 ^ 0x2A3D));
  (*(v0 + 8 * (v2 + 40556)))(*(v3 - 1306953403), v1);
  v4 = (*(v0 + 8 * (v2 + 40690)))(*(v3 - 1306953403), &STACK[0x550], (((v2 - 603049116) & 0x23F1F73F) - 2014628100) ^ LODWORD(STACK[0x60C]) ^ 0x6E3E4907u, 1);
  return (*(v0 + 8 * ((214 * (((2 * v4) & 0xE3CF83FA) + (v4 ^ 0xF1E7C1FD) == -236469763)) ^ v2)))();
}

uint64_t sub_10017FA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, double a7, __n128 a8, __n128 a9, __n128 a10, int8x16_t a11, double a12, int8x16_t a13)
{
  v20 = a5 & (a3 + 15);
  v22.i64[0] = vqtbl4q_s8(*(&a8 - 1), a11).u64[0];
  *&v22.i64[1] = a12;
  v23 = vrev64q_s8(vmulq_s8(v22, a13));
  *(v18 + a3) = veorq_s8(veorq_s8(veorq_s8(*(v15 + v20 - 15), *(v13 + a3)), veorq_s8(*(v16 + v20 - 15), *(v14 + v20 - 15))), vextq_s8(v23, v23, 8uLL));
  return (*(*(v19 - 144) + 8 * (((a4 == 0) * a6) ^ v17)))(a1, a2, a3 - 16, a4 - 16);
}

uint64_t sub_10017FBA0(uint64_t a1, uint64_t a2)
{
  if (v4 <= 0x40)
  {
    v4 = a1;
  }

  return (*(v5 + 8 * ((45 * (v4 - 1 < (((v3 - 4705) | 0x1301) ^ 0x7860A7Cu) + v2)) ^ v3)))(a1, a2, 0);
}

uint64_t sub_10017FD7C(uint64_t a1, uint64_t a2, double a3, __n128 a4, __n128 a5, __n128 a6, int8x16_t a7, double a8, int8x16_t a9, int8x16_t a10, uint64_t a11, uint64_t a12)
{
  v20 = ~v17 + v15;
  v21 = v20 & 0xF;
  v23.i64[0] = vqtbl4q_s8(*(&a4 - 1), a7).u64[0];
  *&v23.i64[1] = a8;
  v24 = vrev64q_s8(veorq_s8(veorq_s8(*(a1 + v20), *(v13 + v21 - 15)), veorq_s8(*(v21 + v12 - 14), *(v14 + v21 - 15))));
  v25 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v24, v24, 8uLL), a10), vmulq_s8(v23, a9)));
  *(a1 + v20) = vextq_s8(v25, v25, 8uLL);
  return (*(v19 + 8 * ((56 * (a12 + v17 == v16)) ^ v18)))();
}

uint64_t sub_10017FE04@<X0>(unint64_t a1@<X8>)
{
  v7 = a1 + v5;
  v8 = (v5 - 1) & 0xF;
  v9 = v8 - v5 + 1;
  v10 = v3 + v9;
  v11 = v8 + ((v1 + 959068718) & 0xC6D5EDFF) - 27108;
  v12 = v3 + v11;
  v13 = v2 + v9;
  v14 = v2 + v11;
  v15 = v4 + (v1 ^ 0x41B5) + v8 - v5;
  v16 = v8 + v4 + 2;
  v18 = v10 < a1 + v5 && v12 > a1;
  v20 = v13 < v7 && v14 > a1 || v18;
  if (v16 <= a1 || v15 >= v7)
  {
    v22 = v20;
  }

  else
  {
    v22 = 1;
  }

  return (*(v6 + 8 * ((88 * (v22 ^ 1)) ^ v1)))();
}

uint64_t sub_10017FEB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *a1 = 0;
  a1[1] = 0;
  HIDWORD(a10) = -371865839;
  return (*(a8 + 8 * v20))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, 0x367D22279A98EC4ELL, 0, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_10017FF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62, int a63)
{
  LODWORD(STACK[0x278]) = v69;
  LODWORD(STACK[0x3A8]) = a6;
  LODWORD(STACK[0x3AC]) = v68;
  LODWORD(STACK[0x2F0]) = a7;
  LODWORD(STACK[0x31C]) = a68;
  LOWORD(STACK[0x236]) = a67;
  LOWORD(STACK[0x292]) = v70;
  LODWORD(STACK[0x27C]) = a61;
  LOWORD(STACK[0x38E]) = a64;
  v74 = (((v72 ^ 0xE8E874C3) + 1823931654) ^ ((v72 ^ 0x2C33D494) - 1469227693) ^ ((v72 ^ (2333 * (v71 ^ 0x24D5)) ^ 0x56AF350B) - 755918662)) + LODWORD(STACK[0x320]) - 371865839 + ((v71 - 1503946010) & 0x59A4EF6B ^ 0xCA1D1AA5);
  v75 = LODWORD(STACK[0x320]) - 904022650;
  v76 = (v75 < 0x236251D0) ^ (v74 < 0x236251D0);
  v77 = v74 < v75;
  if (v76)
  {
    v77 = v75 < 0x236251D0;
  }

  return (*(v73 + 8 * ((59 * !v77) ^ v71)))();
}

uint64_t sub_100180034(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v20 = (((v19 ^ 0xFD7B9F3C) + 42229956) ^ ((v19 ^ a2) + a7) ^ ((v19 ^ a3) + a8)) + v17;
  v21 = (((v9 ^ v15) + v16) ^ ((v9 ^ v13) + v14) ^ ((v9 ^ v11 ^ (1373 * (v18 ^ 0x5297) - 565972) & 0xD7BFFDF7) + v12)) + v17;
  v22 = (v20 < v10) ^ (v21 < v10);
  v23 = v20 < v21;
  if (v22)
  {
    v23 = v21 < v10;
  }

  return (*(v8 + 8 * (v18 | (4 * !v23))))();
}

uint64_t sub_100180108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, int a16, char a17, __int16 a18, char a19, __int16 a20, char a21)
{
  v25 = 1012831759 * ((2 * ((v24 - 152) & 0x73B4BA80) - (v24 - 152) + 206259576) ^ 0x1CD853F2);
  *(v24 - 152) = &a21;
  *(v24 - 144) = &a14;
  *(v24 - 120) = &a17;
  *(v24 - 128) = a13;
  *(v24 - 112) = &a19;
  *(v24 - 104) = v22 - v25 + 38401;
  *(v24 - 100) = (((((941 * (v22 ^ 0x2A99)) ^ 0x15A82893) + (v21 ^ 0xEA57CED8)) ^ ((v21 ^ 0x4D7F95BE) - 1300207038) ^ ((v21 ^ 0x4EFDCFB1 ^ (10723 * (v22 ^ 0x2A9C))) - 1325243511)) - 129675808) ^ v25;
  v26 = (*(v23 + 8 * (v22 + 41222)))(v24 - 152);
  return (*(v23 + 8 * ((35887 * (*(v24 - 136) == -371865839)) ^ v22)))(v26);
}

uint64_t sub_10018026C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  *(a1 + 440) = a2;
  *(v5 - 168) = (v3 + 37709) ^ (1022166737 * ((((v5 - 168) ^ 0x4005102D) & 0xE20DD36D | ((v5 - 168) ^ 0x522880) & 0x1DF22C90) ^ 0xFA47D93F));
  *(v5 - 164) = -1022166737 * ((((v5 - 168) ^ 0x4005102D) & 0xE20DD36D | ((v5 - 168) ^ 0x522880) & 0x1DF22C90) ^ 0xFA47D93F) + 1446135777 * v2 + v3 + 2011895819;
  v6 = (*(v4 + 8 * (v3 + 43082)))(v5 - 168);
  return (*(v4 + 8 * (v3 + 6542)))(v6);
}

uint64_t sub_10018041C(__n128 a1, uint64_t a2, int a3)
{
  v6.n128_u64[0] = ((((a3 ^ 0x22) - 104) ^ 0xE) + v3) & 0xF;
  v6.n128_u64[1] = (v3 + 12) & 0xF;
  v7.n128_u64[0] = (v3 + 11) & 0xF;
  v7.n128_u64[1] = (v3 + 10) & 0xF;
  v8.n128_u64[0] = (v3 + 9) & 0xF;
  v8.n128_u64[1] = v3 & 0xF ^ 8;
  v12.val[1].i64[0] = (v3 + 5) & 0xF;
  v12.val[1].i64[1] = (v3 + 4) & 0xF;
  v12.val[2].i64[0] = (v3 + 3) & 0xF;
  v12.val[2].i64[1] = (v3 + 2) & 0xF;
  v12.val[3].i64[0] = (v3 + 1) & 0xFLL;
  v12.val[3].i64[1] = v3 & 0xF;
  v12.val[0].i64[1] = (v3 + 6) & 0xF;
  v12.val[0].i64[0] = (v3 + 7) & 0xF;
  v9.n128_u64[0] = 0xB7B7B7B7B7B7B7B7;
  v9.n128_u64[1] = 0xB7B7B7B7B7B7B7B7;
  v10.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v10.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  return (*(v4 + 8 * ((98369 * ((a3 ^ 0x4D088922) == 1130172127)) ^ (a3 ^ 0x4D088922) & 0x30718D21u)))((v3 + 14) & 0xF, v3 + v5 - 16, (v3 & 0x10) - 16, ((a3 ^ 0x4D088922) - 1292395112) ^ 0x1B1Eu, v3 & 0x10 ^ 0x10, (((a3 ^ 0x4D088922) - 1292395112) ^ 0x1B1Eu) - 39675, a1, v6, v7, v8, xmmword_100BC76B0, vqtbl4q_s8(v12, xmmword_100BC76B0), v9, v10);
}

uint64_t sub_1001805D4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned int a22, uint64_t *a23, int a24)
{
  a23 = &a9;
  a22 = (v24 - 2147458044) ^ ((((v26 | 0x6DF2C3C7) + (~v26 | 0x920D3C38)) ^ 0x61DF2283) * a1);
  (*(v25 + 8 * (v24 - 2147431313)))(&a22);
  return (*(v25 + 8 * ((40826 * ((v24 & ~(a24 + 280117631) | ((a24 + 280117631) ^ ~v24) & (a24 + 280117631 - v24)) >> 31)) ^ (v24 - 2147476156))))(139493411);
}

uint64_t sub_100180850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v723 = v65;
  v737 = v63;
  v736 = v64;
  v67 = 34565 * (*(v63 - 11) ^ 0xC2) + 876015360;
  v68 = *(v64 + (a57 ^ 0xA5B8));
  v69 = *(v66 + v67 - 36992 * (((1902269253 * v67) >> 32) >> 14));
  v70 = 34565 * (v68 ^ 0x27E7) - 36992 * (((951134627 * (34565 * (v68 ^ 0x27E7u))) >> 32) >> 13);
  v71 = 34565 * (*(v737 - 5) ^ 0x9F) + 1044139520;
  v72 = *(a61 + v71 - 36992 * (((1902269253 * v71) >> 32) >> 14));
  v73 = ((v68 ^ 0x54) + (v68 ^ 0x85) - ((2 * ((v68 ^ 0x54) + (v68 ^ 0x85))) & 0xEF) + 119);
  v74 = ((v69 >> 6) | (4 * v69)) ^ (((v69 >> 6) | (4 * v69)) >> 5) ^ (((v69 >> 6) | (4 * v69)) >> 3);
  v75 = 34565 * (*(v737 - 4) ^ 0x90) + 743285760;
  v76 = ((((v72 >> 5) | (8 * v72)) ^ 0x6A) + 18) ^ ((((v72 >> 5) | (8 * v72)) ^ 0x22) + 90) ^ ((((v72 >> 5) | (8 * v72)) ^ 0xA) + 114);
  LOBYTE(v72) = v76 + 60;
  v77 = (*(a61 + v75 - 36992 * (((1902269253 * v75) >> 32) >> 14)) << 8) ^ 0xC3678D84;
  v78 = 34565 * (*(v737 - 8) ^ 0xC6) + 619404800;
  v79 = *(a61 + v78 - 36992 * (((1902269253 * v78) >> 32) >> 14));
  v80 = 34565 * (*v737 ^ 0x9E) + 1097265925;
  v81 = ((*(a61 + v80 - 36992 * (((1902269253 * v80) >> 32) >> 14)) << 8) ^ 0xCD905EFF) & (v73 ^ 0xCDF9FFC0 ^ *(a61 + v70));
  v82 = 34565 * (*(v737 - 12) ^ 0xBE) + 132729600;
  LOBYTE(v82) = *(a61 + v82 - 36992 * (((237783657 * v82) >> 32) >> 11));
  LOBYTE(v73) = (v76 + 60) & 0x38 ^ 0x5B;
  v83 = (((v82 ^ (4 * v82)) << 8) ^ 0x817E0A33) & (v74 ^ 0xE57EFF88) | v74 & 0xCCCCCCCC;
  v84 = (*(a61 + 34565 * (*(v737 - 6) ^ 0x3C) + 362794240 - 36992 * (((951134627 * (34565 * (*(v737 - 6) ^ 0x3Cu) + 362794240)) >> 32) >> 13)) ^ *(v737 - 6)) << 24;
  v85 = ((v76 + 80) * (v76 + 60) + 100) ^ v73;
  v86 = 34565 * (*(v737 - 14) ^ 0xE3) + 433583360;
  v87 = 34565 * (*(v737 - 9) ^ 0x9C) + 831772160;
  v88 = (((*(a61 + v86 - 36992 * (((951134627 * v86) >> 32) >> 13)) ^ 0xD4) << 24) ^ 0x94438164) & (v83 ^ 0x7E154A08) ^ v83 & 0x13C7E9B;
  LOBYTE(v83) = *(a61 + v87 - 36992 * (((1902269253 * v87) >> 32) >> 14));
  LOBYTE(v87) = 89 * (((v83 ^ 0x92) + 110) ^ ((v83 ^ 0xA2) + 94) ^ ((v83 ^ 0x78) - 120)) + 48;
  LOBYTE(v86) = v87 & 0x7C ^ 0x52;
  LOBYTE(v76) = (v72 ^ 0xA) & (2 * ((v72 ^ 0xA) & (2 * ((v72 ^ 0xA) & (2 * ((v72 ^ 0xA) & (2 * (((2 * v72) & 0x14 ^ 0x32) & (v72 ^ 0xA) ^ v73)) ^ v73)) ^ v73)) ^ v73));
  v89 = ((v79 ^ 0xA2 ^ (v79 >> 2) ^ (((v79 ^ 0xA2) >> 5) | 8)) << 8) ^ 0x666DDBD6;
  v90 = 34565 * (*(v737 - 3) ^ 0xBB) + 221216000;
  LOBYTE(v73) = (v87 ^ 0x58) & (2 * ((v87 ^ 0x58) & (2 * ((v87 ^ 0x58) & (2 * ((v87 ^ 0x58) & (2 * ((v87 ^ 0x58) & (2 * v86) ^ v86)) ^ v86)) ^ v86)) ^ v86)) ^ v86;
  v91 = *(a61 + v90 - 36992 * (((237783657 * v90) >> 32) >> 11));
  v92 = v91 ^ 0xB7;
  v727 = v91 & 0x29;
  v93 = *(a61 + 34565 * (*(v737 - 13) ^ 0x47D2) - 36992 * (((1902269253 * (34565 * (*(v737 - 13) ^ 0x47D2u))) >> 32) >> 14));
  v94 = (v72 ^ (2 * (v85 ^ v76)));
  v95 = 34565 * (*(v737 - 2) ^ 0xA1) + 327399680;
  LOWORD(v86) = v88 ^ 0x472C;
  v96 = ((v93 << 16) ^ 0x560000) & (v88 ^ 0x3D54472C) ^ (v93 << 16) & 0xD40000;
  v94 <<= 16;
  v97 = *(a61 + v95 - 36992 * (((951134627 * v95) >> 32) >> 13)) ^ 0x9B;
  v98 = (v87 ^ (2 * v73)) << 16;
  v99 = 34565 * (*(v737 - 7) ^ 0x3E) + 1221457970;
  v100 = v94 ^ 0xFF3FFFFF;
  v101 = v94 & 0x980000;
  v102 = ((v97 << 24) ^ 0xDA4BD8A0) & (v81 ^ 0x32DFFB45) ^ v81 & 0x800275F;
  LOBYTE(v94) = *(a61 + v99 - 36992 * (((1902269253 * v99) >> 32) >> 14));
  LOBYTE(v94) = (((v94 ^ 0xCB) + 53) ^ ((v94 ^ 0xB5) + 75) ^ ((v94 ^ 0x36) - 54)) - 47;
  v103 = 34565 * (*(v737 - 10) ^ 0xA5) + 495523840;
  v104 = *(a61 + v103 - 36992 * (((951134627 * v103) >> 32) >> 13));
  v105 = (v98 | 0xFE00FFFF) & v89 | v98 & 0x920000;
  v106 = (((v104 ^ 0x2B) - 43) ^ ((v104 ^ 0xFFFFFFC6) + 58) ^ ((v104 ^ 0xFFFFFFA5) + 91)) + 21;
  v107 = v106 & 0xFFFFFFD4 ^ 0xFFFFFF97;
  v108 = (v100 & v77 | v101) ^ 0x8E17AF0C;
  v109 = v108 & (v84 ^ 0x9EFFFFDF);
  v110 = (((v106 ^ 0x2E) & (2 * ((v106 ^ 0x2E) & (2 * ((v106 ^ 0x2E) & (2 * ((v106 ^ 0x2E) & (2 * ((v106 ^ 0x2E) & (2 * ((v106 ^ 0x2E) & 0x3A ^ v107)) ^ v107)) ^ v107)) ^ v107)) ^ v107)) ^ v107) << 25) ^ (v106 << 24) ^ 0xDC7DA367;
  v111 = 34565 * (*(v737 - 1) ^ 0x7A1);
  v112 = v109 ^ v84 & 0xB2000000;
  LOBYTE(v84) = *(a61 + v111 - 36992 * (((118891829 * v111) >> 32) >> 10));
  v113 = (v105 ^ 0xD6BEB1DC) & (v94 ^ 0xFFFFFF7E) | v94 & 0xF5;
  LOBYTE(v84) = (((v84 ^ 0x86) + 122) ^ ((v84 ^ 0xDE) + 34) ^ ((v84 ^ 0x10) - 16)) + 89;
  LOBYTE(v105) = v84 & 0xE8 ^ 0xB3;
  v114 = (v109 ^ 0x5E) & v92;
  v115 = HIWORD(v96);
  v116 = (((v84 ^ (2 * ((v84 ^ 0xA) & (2 * ((v84 ^ 0xA) & (2 * ((v84 ^ 0xA) & (2 * ((v84 ^ 0xA) & (2 * (((2 * v84) & 0x14 | 0x62) & (v84 ^ 0xA) ^ v105)) ^ v105)) ^ v105)) ^ v105)) ^ v105))) << 16) ^ 0xEFFE1D73) & (v102 ^ 0x5B4C280) ^ v102 & 0x1041E28C;
  v117 = v110 & (v113 ^ 0x4F2EBEE5) ^ v113 & 0xF6825C98;
  v731 = HIBYTE(v117);
  v118 = HIBYTE(v116);
  v119 = HIBYTE(v116) ^ 0x27;
  v120 = HIBYTE(v112) ^ 0x87;
  v121 = *(a6 + 4 * ((13233 * (v116 ^ 0x4Eu) + 1158575616) % 0x30040));
  v122 = (((v121 ^ 0x8F6C2523) + 1888738013) ^ ((v121 ^ 0x779DF0D6) - 2006839510) ^ ((v121 ^ 0xF63E6021) + 163684319)) + 1047750872;
  v123 = *(a6 + 4 * ((13233 * (HIBYTE(v88) ^ 0xAA) + 1639621632) % 0x30040u)) ^ *(a6 + 4 * ((13233 * (BYTE1(v108) ^ 0x37u) + 1995324672) % 0x30040)) ^ v122 ^ (((((16 * v121) ^ 0x84C70489) - 1047940515) ^ (((16 * v121) ^ 0xE36DF666) - 1507639116) ^ (((16 * v121) ^ 0x8B51AFAF) - 836822661)) - 959048486) ^ ((v122 ^ 0x6AD375FD) - 1167353447);
  v124 = *(a6 + 4 * ((13233 * (BYTE2(v108) ^ 0xEBu) - 2140423168) % 0x30040));
  v125 = (((v124 ^ 0xC8B39D9B) + 927752805) ^ ((v124 ^ 0xE2312E42) + 500093374) ^ ((v124 ^ 0x244D060D) - 609027597)) - 1857006023;
  v126 = v123 ^ ((v122 ^ 0x5FCB98C6) - 1888258908) ^ *(a6 + 4 * (13233 * (BYTE2(v117) ^ 0x15) + 606388992 - 196672 * (((357797471 * (13233 * (BYTE2(v117) ^ 0x15u) + 606388992)) >> 32) >> 14))) ^ ((v122 ^ 0x65A1215E) - 1256600260) ^ ((v122 ^ 0x7FFEDFFF) - 1354353765);
  v127 = (v125 ^ 0x3CA62398) & (2 * (v125 & 0xBEB74321)) ^ v125 & 0xBEB74321;
  v128 = ((2 * (v125 ^ 0x19C6A5D8)) ^ 0x4EE3CDF2) & (v125 ^ 0x19C6A5D8) ^ (2 * (v125 ^ 0x19C6A5D8)) & 0xA771E6F8;
  v129 = v128 ^ 0xA1102209;
  v130 = (v128 ^ 0x6610480) & (4 * v127) ^ v127;
  v131 = ((4 * v129) ^ 0x9DC79BE4) & v129 ^ (4 * v129) & 0xA771E6F8;
  v132 = v131 ^ 0x22306419;
  v133 = *(a6 + 4 * ((13233 * v120 + 1456688640) % 0x30040u));
  v134 = (v131 ^ 0x854182E0) & (16 * v130) ^ v130;
  v135 = *(a6 + 4 * ((13233 * (BYTE1(v116) ^ 0x99u) + 1741251072) % 0x30040)) ^ *(a6 + 4 * (13233 * (HIBYTE(v117) ^ 0x1C41A) % 0x30040u)) ^ __ROR4__(*(a6 + 4 * ((13233 * (v86 ^ 0xB1u) + 1842880512) % 0x30040)), 8) ^ v125;
  v136 = BYTE2(v116) ^ 0xC;
  v137 = ((16 * v132) ^ 0x771E6F90) & v132 ^ (16 * v132) & 0xA771E6D0;
  v138 = 13233 * (BYTE1(v86) ^ 0xA7) + 1439750400;
  v139 = v137 ^ 0x80618069;
  v140 = *(a6 + 4 * ((13233 * (v117 ^ 0x4Eu) + 2113892352) % 0x30040));
  v141 = v137 ^ 0x27106600;
  v142 = *(a6 + 4 * (13233 * v136 + 806260224 - 196672 * (((357797471 * (13233 * v136 + 806260224)) >> 32) >> 14))) ^ 0x32760BFC;
  v143 = v115 ^ 0x3F;
  v144 = (((v140 ^ 0x9E97D568) + 1634216600) ^ ((v140 ^ 0xA1C072D8) + 1581223208) ^ ((v140 ^ 0x31981264) - 832049764)) - 927342976;
  v145 = v144 & 0xD08994C2 ^ 0xE83BF80E ^ (v144 ^ 0x98A144C8) & (2 * (v144 & 0xD08994C2));
  v146 = ((2 * (v144 ^ 0x38B26CCC)) ^ 0xD077F01C) & (v144 ^ 0x38B26CCC) ^ (2 * (v144 ^ 0x38B26CCC)) & 0xE83BF80E;
  v147 = v134 ^ 0xA771E6F9 ^ v141 & (v134 << 8);
  v148 = v146 & 0x46C3B4C8 ^ v145 ^ ((4 * v145) ^ 0xE62C54F0) & (v146 ^ 0xC033F00E);
  v149 = ((4 * v146) ^ 0x460C74F8) & (v146 ^ 0xC033F00E) ^ v146 & 0x46C3B4C8;
  v150 = v149 & 0x46C3B4C8 ^ v148 ^ ((16 * v148) ^ 0xC54734A8) & (v149 ^ 0x4003B00E);
  v151 = ((16 * v149) ^ 0x46F8B448) & (v149 ^ 0x4003B00E) ^ v149 & 0x46C3B4C8;
  v152 = (v139 << 8) & 0x27710000 ^ 0x6110000 ^ ((v139 << 8) ^ 0x71E60000) & v139;
  v153 = *(a6 + 4 * (v138 % 0x30040)) ^ __ROR4__(v133, 22) ^ v142 ^ (4 * v142) ^ v144;
  v154 = *(a6 + 4 * ((13233 * v143 + 1050170880) % 0x30040u));
  v155 = *(a6 + 4 * ((13233 * (v118 ^ 0x58) - 1835481916) % 0x30040));
  v156 = (v118 ^ 0xD8B33B70) + v119 - ((2 * ((v118 ^ 0xD8B33B70) + v119)) & 0x20622428);
  v157 = v727 ^ 0x1B ^ v114;
  v158 = BYTE1(v117);
  v159 = v150 ^ v151 & 0x46C3B4C8 ^ ((v150 << 8) ^ 0x7D3BBAC8) & (v151 ^ 0x4003B00E);
  v160 = *(a6 + 4 * (13233 * (v158 ^ 0x9898) - 196672 * (((357797471 * (13233 * (v158 ^ 0x9898u))) >> 32) >> 14)));
  v161 = ((v147 << 16) ^ 0x66F90000) & v152;
  v162 = (v158 ^ 0xC3) - (v158 ^ 0x7ED0A679);
  v163 = v162 ^ 0x7FFF79B5;
  v164 = (v147 << 16) & 0x27710000 ^ v147;
  v165 = (2 * v162) & 0x25EB36A;
  v166 = *(a6 + 4 * ((13233 * v157 + 1405873920) % 0x30040u));
  v167 = ((v151 << 8) ^ 0x4573BCC8) & (v151 ^ 0x4003B00E) ^ v151 & 0x46C3B4C8;
  v168 = (((v160 ^ 0xA0DE3E6C) + 1596047764) ^ ((v160 ^ 0x3BE8FF0F) - 1005125391) ^ ((v160 ^ 0x95F974B7) + 1778813769)) + v163 + v165 - 766628173;
  v169 = v164 ^ v161;
  v170 = (v168 ^ 0x3A7BE968) & (2 * (v168 & 0xBC820D6C)) ^ v168 & 0xBC820D6C;
  v171 = ((2 * (v168 ^ 0x3B7BE3E0)) ^ 0xFF3DD18) & (v168 ^ 0x3B7BE3E0) ^ (2 * (v168 ^ 0x3B7BE3E0)) & 0x87F9EE8C;
  v172 = v171 ^ 0x80082284;
  v173 = (v171 ^ 0x6104C00) & (4 * v170) ^ v170;
  v174 = 4 * (v171 ^ 0x80082284);
  v175 = v135 ^ (2 * v169);
  v176 = (v174 ^ 0x1FE7BA30) & v172 ^ v174 & 0x87F9EE88;
  v177 = v176 ^ 0x8018448C;
  v178 = (v176 ^ 0x7E1AA00) & (16 * v173) ^ v173;
  v179 = ((16 * v177) ^ 0x7F9EE8C0) & v177 ^ (16 * v177) & 0x87F9EE80;
  v180 = v178 ^ 0x87F9EE8C ^ (v179 ^ 0x798E800) & (v178 << 8);
  v181 = -1257404369 * (((v166 ^ 0x299D844) - 43636804) ^ ((v166 ^ 0x76837FA6) - 1988329382) ^ ((v166 ^ 0x7AD51236) - 2060784182)) - 1966376030;
  v182 = v153 ^ (2 * (v159 ^ v167 & 0x46C3B4C8 ^ ((v159 << 16) ^ 0xEC5B4C9) & (v167 ^ 0x28380000) ^ ((v159 << 16) ^ 0xEC5B4C9) & 0x683BB008));
  v183 = v155 ^ v154 ^ (v154 >> 3) & 0x701C536 ^ v181 ^ ((v181 ^ 0xF0FA64D8) + 1430905490) ^ ((v181 ^ 0x93676B4A) + 919923972) ^ ((v181 ^ 0xD62E89DB) + 1939672979) ^ ((v181 ^ 0xEFFFFFFF) + 1246525879) ^ (v156 + 288723476) ^ v168;
  v184 = *(a6 + 4 * (13233 * (HIBYTE(v126) ^ 4) + 159219456 - 196672 * (((11181171 * (13233 * (HIBYTE(v126) ^ 4) + 159219456)) >> 32) >> 9)));
  v185 = v183 ^ (2 * ((v180 << 16) & 0x7F90000 ^ v180 ^ ((v180 << 16) ^ 0x6E8C0000) & (((v179 ^ 0x8061060C) << 8) & 0x7F90000 ^ 0x6110000 ^ (((v179 ^ 0x8061060C) << 8) ^ 0x79EE0000) & (v179 ^ 0x8061060C))));
  v186 = (((v184 ^ 0xDC21C702) + 601766142) ^ ((v184 ^ 0x5822B35B) - 1478669147) ^ ((v184 ^ 0x8ACCC18D) + 1966292595)) + 195358897;
  v187 = HIBYTE(v185) ^ 0x27;
  v188 = (v186 ^ 0x2114013) & (2 * (v186 & 0x8B180A9B)) ^ v186 & 0x8B180A9B;
  v189 = ((2 * (v186 ^ 0x10014027)) ^ 0x36329578) & (v186 ^ 0x10014027) ^ (2 * (v186 ^ 0x10014027)) & 0x9B194ABC;
  v190 = v189 ^ 0x89094A84;
  v191 = (v189 ^ 0x10000038) & (4 * v188) ^ v188;
  v192 = ((4 * v190) ^ 0x6C652AF0) & v190 ^ (4 * v190) & 0x9B194AB8;
  v193 = (v192 ^ 0x8010AB0) & (16 * v191) ^ v191;
  v194 = ((16 * (v192 ^ 0x9318400C)) ^ 0xB194ABC0) & (v192 ^ 0x9318400C) ^ (16 * (v192 ^ 0x9318400C)) & 0x9B194A80;
  v195 = v193 ^ 0x9B194ABC ^ (v194 ^ 0x91100A00) & (v193 << 8);
  v196 = *(a6 + 4 * (13233 * (BYTE2(v175) ^ 0x2A) + 589450752 - 196672 * (((357797471 * (13233 * (BYTE2(v175) ^ 0x2Au) + 589450752)) >> 32) >> 14)));
  v197 = *(a6 + 4 * (13233 * (BYTE1(v182) ^ 0x9B) + 592838400 - 196672 * (((357797471 * (13233 * (BYTE1(v182) ^ 0x9Bu) + 592838400)) >> 32) >> 14)));
  v198 = v186 ^ (2 * ((v195 << 16) & 0x1B190000 ^ v195 ^ ((v195 << 16) ^ 0x4ABC0000) & (((v194 ^ 0xA09403C) << 8) & 0x1B190000 ^ 0x2110000 ^ (((v194 ^ 0xA09403C) << 8) ^ 0x194A0000) & (v194 ^ 0xA09403C))));
  v199 = ((v197 ^ 0x8235349E) + 818173559) ^ ((v197 ^ 0x5E621A22) - 325879605) ^ ((v197 ^ 0x9A5EA498) + 682608241);
  v200 = *(a6 + 4 * (13233 * (HIBYTE(v175) ^ 0x12F89) - 196672 * (((357797471 * (13233 * (HIBYTE(v175) ^ 0x12F89))) >> 32) >> 14)));
  v201 = v198 ^ 0xBE2D6519;
  v202 = (((v200 ^ 0x2FD09FAC) - 802201516) ^ ((v200 ^ 0x410BFF0E) - 1091305230) ^ ((v200 ^ 0x6014D576) - 1611978102)) + (((HIBYTE(v175) ^ 0x41E358B1) - 475082552) ^ ((HIBYTE(v175) ^ 0x59AD49F9) - 69156464) ^ ((HIBYTE(v175) ^ 0xAD59334D) + 253016892)) + 667388617;
  v203 = v197 ^ v196 ^ (v196 >> 3) & 0x15642B1A ^ *(a6 + 4 * (13233 * (v185 ^ 0xBC32) - 196672 * (((357797471 * (13233 * (v185 ^ 0xBC32u))) >> 32) >> 14))) ^ v198 ^ 0xBE2D6519;
  v204 = (v202 ^ 0xEF0D1607) & (2 * (v202 & 0xCFAD8097)) ^ v202 & 0xCFAD8097;
  v205 = ((2 * (v202 ^ 0xEA1D1603)) ^ 0x4B612D28) & (v202 ^ 0xEA1D1603) ^ (2 * (v202 ^ 0xEA1D1603)) & 0x25B09694;
  v206 = v204 ^ 0x25B09694 ^ (v205 ^ 0x1200400) & (4 * v204);
  v207 = (4 * (v205 ^ 0x24909294)) & 0x25B09690 ^ 0x21308484 ^ ((4 * (v205 ^ 0x24909294)) ^ 0x96C25A50) & (v205 ^ 0x24909294);
  v208 = 16 * ((v199 + 1795626803) * ((((v197 ^ 0xD236FB1C) + 1623693813) ^ ((v197 ^ 0x2B31EC64) - 1715433843) ^ ((v197 ^ 0xBF0E9D5C) + 234880949)) + 1042740470) + 216015421 * v199) + 643093104;
  v209 = *(a6 + 4 * ((13233 * (BYTE1(v185) ^ 0xFCu) + 2130830592) % 0x30040)) ^ v126 ^ __ROR4__(*(a6 + 4 * (13233 * (BYTE2(v182) ^ 0xA7) + 277787136 - 196672 * (((357797471 * (13233 * (BYTE2(v182) ^ 0xA7u) + 277787136)) >> 32) >> 14))), 10) ^ *(a6 + 4 * (13233 * (v126 ^ 0x1D43Eu) % 0x30040)) ^ v202;
  v210 = (16 * v207) & 0x25B09680;
  v211 = BYTE2(v185);
  v212 = (16 * v206) & 0x25B09690 ^ v206 ^ ((16 * v206) ^ 0x5B096940) & v207;
  v213 = ((16 * v207) ^ 0x5B096940) & v207;
  v214 = *(a6 + 4 * ((13233 * (v211 ^ 0x72u) - 1967653120) % 0x30040));
  v215 = v175 ^ v731;
  v216 = v215 ^ 0x26F1D;
  v217 = (v215 ^ 0xDB) + 30772683;
  v218 = v210 ^ 0x24B09694 ^ v213;
  v219 = ((2 * (v217 & 0x1040804)) | 0x7E00000) & (v217 ^ 0x897DE8C3) | v217 & 0x1040804;
  v220 = (2 * (v217 ^ 0x897DE8C3)) & 0x1000C0C6 ^ 0x42882041 ^ ((2 * (v217 ^ 0x897DE8C3)) ^ 0x8800418E) & (v217 ^ 0x897DE8C3);
  v221 = v219 ^ 0x6802000 ^ ((4 * v219) ^ 0x9600000) & v220;
  v222 = (4 * v220) & 0x5E89E0C4 ^ 0x48860C3 ^ ((4 * v220) ^ 0x7A27831C) & v220;
  v223 = (16 * v221) & 0x5E89E0C0 ^ v221 ^ ((16 * v221) ^ 0xA5800000) & v222;
  v224 = (16 * v222) & 0x5E89E0C0 ^ 0x1601E087 ^ ((16 * v222) ^ 0xE89E0C70) & v222;
  v225 = v223 ^ (v223 << 8) & 0x5E89E000 ^ ((v223 << 8) ^ 0xD8000000) & v224 ^ 0x851E0C7;
  v226 = v203 ^ v208 ^ (16 * v201) ^ (v201 << 7);
  v227 = v212 ^ (v212 << 8) & 0x25B09600 ^ ((v212 << 8) ^ 0xB0969400) & v218;
  v228 = *(a6 + 4 * (13233 * (HIBYTE(v182) ^ 0x113B8) - 196672 * (((357797471 * (13233 * (HIBYTE(v182) ^ 0x113B8))) >> 32) >> 14))) ^ __ROR4__(v214, 22) ^ *(a6 + 4 * ((13233 * (BYTE1(v126) ^ 0x5Bu) + 1355059200) % 0x30040)) ^ *(a6 + 4 * (13233 * v216 % 0x30040u)) ^ v217 ^ (2 * ((v225 << 16) & 0x5E890000 ^ v225 ^ ((v225 << 16) ^ 0x60C70000) & ((v224 << 8) & 0x5E890000 ^ 0x56090000 ^ ((v224 << 8) ^ 0x9E00000) & v224)));
  v229 = v182 ^ 0x23;
  v230 = *(a6 + 4 * ((13233 * v187 + 1426199808) % 0x30040u)) ^ BYTE2(v126) ^ *(a6 + 4 * (13233 * (BYTE2(v126) ^ 0x7E9F) - 196672 * (((357797471 * (13233 * (BYTE2(v126) ^ 0x7E9Fu))) >> 32) >> 14))) ^ *(a6 + 4 * (13233 * (BYTE1(v175) ^ 0x26012u) % 0x30040)) ^ *(a6 + 4 * ((13233 * (v182 ^ 0xB5u) - 1730120770) % 0x30040)) ^ BYTE1(v175) ^ v229 ^ (v229 + 1759152276) ^ (((v229 + 1759152276) ^ 0x34F88725) - 860092590) ^ (((v229 + 1759152276) ^ 0xDA1162D6) + 576053923) ^ (((v229 + 1759152276) ^ 0x92AD6487) + 1793713396) ^ (((v229 + 1759152276) ^ 0x7BFFFEFF) - 2084864372);
  v732 = HIWORD(v228);
  v231 = v209 ^ (2 * (((v227 ^ 0x21909400) << 16) & 0x25B00000 ^ v227 ^ 0x21909400 ^ (((v227 ^ 0x21909400) << 16) ^ 0x16940000) & ((v218 << 8) & 0x25B00000 ^ 0x5200000 ^ ((v218 << 8) ^ 0x30960000) & v218)));
  v232 = (BYTE2(v231) ^ 0x39) - 1254760126;
  v233 = *(a6 + 4 * ((13233 * (BYTE1(v228) ^ 9u) + 1863206400) % 0x30040));
  v234 = (((v233 ^ 0xE79BFAE9) + 409208087) ^ ((v233 ^ 0x33E5BB84) - 870693764) ^ ((v233 ^ 0xDAB1F4B9) + 625871687)) + 613826107;
  v235 = ((v234 ^ 0x2AEE397F) - 75695500) ^ v234 ^ ((v234 ^ 0x95A1A81E) + 1144220435) ^ ((v234 ^ 0x6E9FD2ED) - 1089662494) ^ ((v234 ^ 0xFFBD7F7F) + 774880372);
  v236 = *(a6 + 4 * ((13233 * (v230 ^ 0x4Eu) + 1470239232) % 0x30040));
  v237 = *(a6 + 4 * ((13233 * ((v203 ^ v208 ^ (16 * v201) ^ (v201 << 7)) ^ 0x62u) + 1500728064) % 0x30040));
  v238 = *(a6 + 4 * ((13233 * (BYTE2(v231) ^ 0x94u) - 1767556927) % 0x30040)) ^ *(a6 + 4 * ((13233 * (HIBYTE(v226) ^ 0x88) - 1743750760) % 0x30040u)) ^ v236 ^ (v236 >> 3) & 0x1E97A985 ^ v235;
  v239 = (((v237 ^ 0x64732944) - 1685268804) ^ ((v237 ^ 0x9CA2B19D) + 1667059299) ^ ((v237 ^ 0xF61E2D0D) + 165794547)) - 1250695837;
  v240 = v238 ^ (v235 >> 2) ^ (v235 >> 4);
  v241 = (v239 ^ 0x3B9E7377) & (2 * (v239 & 0xBBDC7B78)) ^ v239 & 0xBBDC7B78;
  v242 = v240 ^ v232 ^ ((v232 ^ 0xDAECB757) + 101332959) ^ ((v232 ^ 0xF52395CE) + 700781896) ^ ((v232 ^ 0x7121A210) - 1379458406) ^ ((v232 ^ 0x7DF7FFFF) - 1592688777);
  v243 = ((2 * (v239 ^ 0x5E16A397)) ^ 0xCB95B1DE) & (v239 ^ 0x5E16A397) ^ (2 * (v239 ^ 0x5E16A397)) & 0xE5CAD8EE;
  v244 = v243 ^ 0x244A4821;
  v245 = (v243 ^ 0xC18090C0) & (4 * v241) ^ v241;
  v246 = ((4 * v244) ^ 0x972B63BC) & v244 ^ (4 * v244) & 0xE5CAD8EC;
  v247 = ((16 * (v246 ^ 0x60C09843)) ^ 0x5CAD8EF0) & (v246 ^ 0x60C09843) ^ (16 * (v246 ^ 0x60C09843)) & 0xE5CAD8E0;
  v248 = *(a6 + 4 * ((13233 * (HIBYTE(v228) ^ 0x3D) + 1385548032) % 0x30040u));
  v724 = v231;
  v249 = (v231 ^ 0xBE) + 1443475962;
  v250 = (v246 ^ 0x850A40A0) & (16 * v245) ^ v245 ^ 0xE5CAD8EF ^ (v247 ^ 0x44888800) & (((v246 ^ 0x850A40A0) & (16 * v245) ^ v245) << 8);
  v251 = *(a6 + 4 * (13233 * (BYTE2(v230) ^ 0xA352) - 196672 * (((357797471 * (13233 * (BYTE2(v230) ^ 0xA352u))) >> 32) >> 14))) ^ v248 ^ (v248 >> 3) & 0x1447D669 ^ *(a6 + 4 * (13233 * (BYTE1(v226) ^ 0x12EB3) - 196672 * (((357797471 * (13233 * (BYTE1(v226) ^ 0x12EB3u))) >> 32) >> 14))) ^ BYTE1(v226) ^ BYTE2(v230);
  v252 = ((v247 ^ 0xA142500F) << 8) & 0x65CA0000 ^ 0x25020000 ^ (((v247 ^ 0xA142500F) << 8) ^ 0x4AD80000) & (v247 ^ 0xA142500F);
  v253 = v251 ^ v249 ^ ((v249 ^ 0xFEC7A15E) + 1908274792) ^ ((v249 ^ 0x5FE55728) - 794886126) ^ *(a6 + 4 * (13233 * (v231 ^ 0x21FFDu) % 0x30040)) ^ ((v249 ^ 0xAE58B04D) + 555935605) ^ ((v249 ^ 0x7FFFEEFD) - 259671611);
  v254 = *(a6 + 4 * ((13233 * (BYTE1(v231) ^ 0xCCu) - 2120097280) % 0x30040)) ^ 0xB939DD61;
  v255 = 13233 * (HIBYTE(v182) ^ 0xC5 ^ v228) + 477658368;
  v256 = *(a6 + 4 * (13233 * (BYTE2(v228) ^ 0x2A17Bu) % 0x30040)) ^ *(a6 + 4 * (13233 * (BYTE1(v230) ^ 0x84) + 880788480 - 196672 * (((357797471 * (13233 * (BYTE1(v230) ^ 0x84u) + 880788480)) >> 32) >> 14))) ^ v239 ^ *(a6 + 4 * (13233 * (HIBYTE(v231) ^ 0x4B) + 975642624 - 196672 * (((357797471 * (13233 * (HIBYTE(v231) ^ 0x4B) + 975642624)) >> 32) >> 14))) ^ (2 * ((v250 << 16) & 0x65CA0000 ^ v250 ^ ((v250 << 16) ^ 0x58EF0000) & v252));
  v257 = *(a6 + 4 * ((13233 * (BYTE2(v226) ^ 0x8Bu) + 1680273408) % 0x30040)) ^ *(a6 + 4 * (13233 * (HIBYTE(v230) ^ 0x1415E) % 0x30040u)) ^ *(a6 + 4 * (v255 - 196672 * (((357797471 * v255) >> 32) >> 14))) ^ v254 ^ (4 * v254) & 0x2A86CAE0;
  v258 = v242;
  v728 = HIWORD(v242);
  v719 = v256 ^ v732;
  v259 = HIBYTE(v253) ^ 0xA2;
  v260 = 13233 * (HIBYTE(v242) ^ 0xE5) + 396354816;
  v261 = HIBYTE(v257);
  v733 = HIBYTE(v257) ^ 0x9A;
  v721 = v251 ^ v249 ^ ((v249 ^ 0x5E) + 104) ^ ((v249 ^ 0x28) + 18) ^ *(a6 + 4 * (13233 * (v231 ^ 0x21FFDu) % 0x30040)) ^ ((v249 ^ 0x4D) + 117) ^ ((v249 ^ 0xFD) - 59);
  v262 = *(a6 + 4 * (v260 - 196672 * (((357797471 * v260) >> 32) >> 14)));
  v263 = (((v262 ^ 0xB1B90C9D) + 1313272675) ^ ((v262 ^ 0x4FA59A23) - 1336252963) ^ ((v262 ^ 0xF0D3236A) + 254598294)) + 1350521930;
  v264 = (v263 ^ 0xA3A6BAFD) & (2 * (v263 & 0xAB8702FE)) ^ v263 & 0xAB8702FE;
  v265 = ((2 * (v263 ^ 0xE7AABE5D)) ^ 0x985B7946) & (v263 ^ 0xE7AABE5D) ^ (2 * (v263 ^ 0xE7AABE5D)) & 0x4C2DBCA2;
  v266 = ((4 * (v265 ^ 0x442484A1)) ^ 0x30B6F28C) & (v265 ^ 0x442484A1) ^ (4 * (v265 ^ 0x442484A1)) & 0x4C2DBCA0;
  v267 = v266 ^ 0x4C090C23;
  v268 = (v266 ^ 0x24B080) & (16 * ((v265 ^ 0x8081800) & (4 * v264) ^ v264)) ^ (v265 ^ 0x8081800) & (4 * v264) ^ v264;
  v269 = *(a6 + 4 * (13233 * (HIBYTE(v256) ^ 0x240CC) % 0x30040u));
  v270 = ((16 * v267) ^ 0xC2DBCA30) & v267 ^ (16 * v267) & 0x4C2DBCA0;
  v271 = *(a6 + 4 * ((13233 * (((v251 ^ v249 ^ ((v249 ^ 0xA15E) - 2456) ^ ((v249 ^ 0x5728) + 18) ^ *(a6 + 4 * (13233 * (v231 ^ 0x21FFDu) % 0x30040)) ^ ((v249 ^ 0xB04D) - 6283) ^ ((v249 ^ 0xEEFD) - 17979)) >> 8) ^ 0xAEu) - 1964265472) % 0x30040)) ^ *(a6 + 4 * ((13233 * ((*(a6 + 4 * ((13233 * (BYTE2(v226) ^ 0x8Bu) + 1680273408) % 0x30040)) ^ *(a6 + 4 * (13233 * (HIBYTE(v230) ^ 0x1415E) % 0x30040u)) ^ *(a6 + 4 * (v255 - 196672 * (((357797471 * v255) >> 32) >> 14))) ^ v254 ^ (4 * v254) & 0xE0) ^ HIBYTE(v230) ^ 0x28) + 1192452096) % 0x30040u)) ^ v263 ^ *(a6 + 4 * ((13233 * (BYTE2(v256) ^ 0xAAu) - 2052344320) % 0x30040));
  v272 = v268 ^ 0x4C2DBCA3;
  v273 = BYTE2(v253) ^ 0xBA;
  v274 = (v269 ^ 0xFA0F4CF9) + 99660551;
  v275 = ((v269 ^ 0x1DF8B9C3) - 502839747) ^ ((v269 ^ 0xE93840EE) + 382189330);
  v276 = 13233 * v273 + 416680704 - 196672 * (((357797471 * (13233 * v273 + 416680704)) >> 32) >> 14);
  v277 = (v270 ^ 0x40098800) & (v268 << 8);
  v278 = v275 ^ v274;
  v279 = -863442577 * (((*(a6 + 4 * v276) ^ 0x390AA69) - 59812457) ^ ((*(a6 + 4 * v276) ^ 0xB06EBDF6) + 1334919690) ^ ((*(a6 + 4 * v276) ^ 0xBD31A24B) + 1120820661)) + 495600089;
  v280 = (v279 ^ 0xEB23C583) & (2 * (v279 & 0xE3A38913)) ^ v279 & 0xE3A38913;
  v281 = ((2 * (v279 ^ 0xE964D5A5)) ^ 0x158EB96C) & (v279 ^ 0xE964D5A5) ^ (2 * (v279 ^ 0xE964D5A5)) & 0xAC75CB6;
  v282 = v272 ^ v277;
  v283 = ((4 * (v281 ^ 0xA414492)) ^ 0x2B1D72D8) & (v281 ^ 0xA414492) ^ (4 * (v281 ^ 0xA414492)) & 0xAC75CB0;
  v284 = ((16 * (v283 ^ 0xC20C26)) ^ 0xAC75CB60) & (v283 ^ 0xC20C26) ^ (16 * (v283 ^ 0xC20C26)) & 0xAC75CA0;
  v285 = v284 ^ 0x2821496;
  v286 = (v283 ^ 0xA055090) & (16 * ((v281 ^ 0x860804) & (4 * v280) ^ v280)) ^ (v281 ^ 0x860804) & (4 * v280) ^ v280 ^ 0xAC75CB6 ^ (v284 ^ 0x8454800) & (((v283 ^ 0xA055090) & (16 * ((v281 ^ 0x860804) & (4 * v280) ^ v280)) ^ (v281 ^ 0x860804) & (4 * v280) ^ v280) << 8);
  v287 = v278 - (((HIBYTE(v256) ^ 0x72D8073D) + 782046211) ^ ((HIBYTE(v256) ^ 0x3F334BE2) + 1668700382) ^ ((HIBYTE(v256) ^ 0xBB895F1D) - 406041565)) + 704962928;
  v288 = v287 ^ 0xAA3CA2C4;
  v289 = *(a6 + 4 * (13233 * (v258 ^ 0x1C) + 890951424 - 196672 * (((357797471 * (13233 * (v258 ^ 0x1Cu) + 890951424)) >> 32) >> 14))) ^ 0x86FDBDB7;
  v290 = v287 & 0x8EF1D562;
  v291 = v287 ^ 0xAEFD8040;
  v292 = *(a6 + 4 * (13233 * (BYTE1(v257) ^ 0x1A70Cu) % 0x30040)) ^ BYTE1(v257) ^ v289 ^ (16 * v289) & 0x5D594310 ^ v279;
  v293 = *(a6 + 4 * ((13233 * (BYTE2(v257) ^ 0xD1u) - 2045569024) % 0x30040));
  v294 = *(a6 + 4 * ((13233 * v259 + 1666722816) % 0x30040u));
  v718 = v292 ^ v287;
  v295 = -1653058245 * (((v293 ^ 0xD53F691D) + 717264611) ^ ((v293 ^ 0x6B290B50) - 1797851984) ^ ((v293 ^ 0xB0D9D799) + 1327900775)) + 11491313;
  v296 = (v295 ^ 0xDFEEFBCA) & (2 * (v295 & 0x9FEEF3EB)) ^ v295 & 0x9FEEF3EB;
  v297 = ((2 * (v295 ^ 0xC77A1E5C)) ^ 0xB129DB6E) & (v295 ^ 0xC77A1E5C) ^ (2 * (v295 ^ 0xC77A1E5C)) & 0x5894EDB6;
  v298 = ((4 * (v297 ^ 0x48942491)) ^ 0x6253B6DC) & (v297 ^ 0x48942491) ^ (4 * (v297 ^ 0x48942491)) & 0x5894EDB4;
  v299 = (v298 ^ 0x4010A490) & (16 * ((v297 ^ 0x1000C924) & (4 * v296) ^ v296)) ^ (v297 ^ 0x1000C924) & (4 * v296) ^ v296;
  v300 = ((16 * (v298 ^ 0x18844923)) ^ 0x894EDB70) & (v298 ^ 0x18844923) ^ (16 * (v298 ^ 0x18844923)) & 0x5894EDB0;
  v301 = v300 ^ 0x50902487;
  v302 = v299 ^ 0x5894EDB7 ^ (v300 ^ 0x804C900) & (v299 << 8);
  v303 = (v301 << 8) & 0x58940000 ^ 0x48100000 ^ ((v301 << 8) ^ 0x14ED0000) & v301;
  v304 = (v286 << 16) & 0xAC70000 ^ v286 ^ ((v286 << 16) ^ 0x5CB60000) & ((v285 << 8) & 0xAC70000 ^ 0x8830000 ^ ((v285 << 8) ^ 0xC75C0000) & v285);
  v305 = (((v294 ^ 0x234C4365) - 592200549) ^ ((v294 ^ 0xD3C0B5F0) + 742345232) ^ ((v294 ^ 0xFE434341) + 29146303)) - 1207603254;
  v306 = (v305 ^ 0xD5C15ED6) & (2 * (v305 & 0xD1E51C90)) ^ v305 & 0xD1E51C90;
  v307 = ((2 * (v305 ^ 0x758B7ED6)) ^ 0x48DCC48C) & (v305 ^ 0x758B7ED6) ^ (2 * (v305 ^ 0x758B7ED6)) & 0xA46E6246;
  v308 = v291 & (2 * v290) ^ v290;
  v309 = ((4 * (v307 ^ 0xA4222242)) ^ 0x91B98918) & (v307 ^ 0xA4222242) ^ (4 * (v307 ^ 0xA4222242)) & 0xA46E6240;
  v310 = (v309 ^ 0x80280000) & (16 * ((v307 ^ 0xC4000) & (4 * v306) ^ v306)) ^ (v307 ^ 0xC4000) & (4 * v306) ^ v306;
  v311 = ((16 * (v309 ^ 0x24466246)) ^ 0x46E62460) & (v309 ^ 0x24466246) ^ (16 * (v309 ^ 0x24466246)) & 0xA46E6240;
  v312 = v310 ^ 0xA46E6246 ^ (v311 ^ 0x4662000) & (v310 << 8);
  v313 = v271 ^ (2 * ((v282 << 16) & 0x4C2D0000 ^ v282 ^ ((v282 << 16) ^ 0x3CA30000) & (((v270 ^ 0xC243483) << 8) & 0x4C2D0000 ^ 0x40010000 ^ (((v270 ^ 0xC243483) << 8) ^ 0x2DBC0000) & (v270 ^ 0xC243483))));
  v314 = ((2 * v288) ^ 0x499AEF4C) & v288 ^ (2 * v288) & 0x24CD77A6;
  v315 = (v312 << 16) & 0x246E0000 ^ v312 ^ ((v312 << 16) ^ 0x62460000) & (((v311 ^ 0xA0084206) << 8) & 0x246E0000 ^ (((v311 ^ 0xA0084206) << 8) ^ 0x6E620000) & (v311 ^ 0xA0084206) ^ 0xC0000);
  BYTE2(v296) = BYTE2(v258);
  v316 = (13233 * (BYTE1(v258) ^ 0xEBu) - 1859235151) % 0x30040;
  v317 = v295 ^ (2 * ((v302 << 16) & 0x58940000 ^ v302 ^ ((v302 << 16) ^ 0x6DB70000) & v303));
  v318 = 956840951 * (((*(a6 + 4 * v316) ^ 0xC8F69343) + 923364541) ^ ((*(a6 + 4 * v316) ^ 0x3EB83DC) - 65766364) ^ ((*(a6 + 4 * v316) ^ 0xC5D2A54B) + 976050869)) + 1166260995;
  v319 = ((2 * (v318 & 0xC66C9089)) & 0x8000002 | v318 & 0xC66C9089) ^ (2 * (v318 & 0xC66C9089)) & (v318 ^ 0xAC4E864E);
  v320 = ((2 * (v318 ^ 0xAC4E864E)) ^ 0xD4442D8E) & (v318 ^ 0xAC4E864E) ^ (2 * (v318 ^ 0xAC4E864E)) & 0x6A2216C6;
  v321 = ((4 * (v320 ^ 0x2A221241)) ^ 0xA8885B1C) & (v320 ^ 0x2A221241) ^ (4 * (v320 ^ 0x2A221241)) & 0x6A2216C4;
  v322 = (v321 ^ 0x28001200) & (16 * ((v320 ^ 0x1405) & (4 * v319) ^ v319)) ^ (v320 ^ 0x1405) & (4 * v319) ^ v319;
  v323 = ((16 * (v321 ^ 0x422204C3)) ^ 0xA2216C70) & (v321 ^ 0x422204C3) ^ (16 * (v321 ^ 0x422204C3)) & 0x6A2216C0;
  v324 = v322 ^ 0x6A2216C7 ^ (v323 ^ 0x22200400) & (v322 << 8);
  v325 = ((4 * (v314 ^ 0x244510A2)) ^ 0x9335DE98) & (v314 ^ 0x244510A2) ^ (4 * (v314 ^ 0x244510A2)) & 0x24CD77A0;
  v326 = v318 ^ (2 * ((v324 << 16) & 0x6A220000 ^ v324 ^ ((v324 << 16) ^ 0x16C70000) & (((v323 ^ 0x48021287) << 8) & 0x6A220000 ^ 0x48200000 ^ (((v323 ^ 0x48021287) << 8) ^ 0x22160000) & (v323 ^ 0x48021287))));
  v327 = *(a6 + 4 * ((13233 * (v719 ^ 0x18u) + 1802228736) % 0x30040));
  v328 = -237153829 * (((v327 ^ 0x6C807435) - 1820357685) ^ ((v327 ^ 0xE71252BA) + 418229574) ^ ((v327 ^ 0x855D935B) + 2057464997)) + 845841368;
  v329 = (v325 ^ 0x55680) & (16 * ((v314 ^ 0x886700) & (4 * v308) ^ v308)) ^ (v314 ^ 0x886700) & (4 * v308) ^ v308;
  v330 = ((16 * (v325 ^ 0x24C82126)) ^ 0x4CD77A60) & (v325 ^ 0x24C82126) ^ (16 * (v325 ^ 0x24C82126)) & 0x24CD77A0;
  v331 = v328 ^ v305 ^ ((v328 ^ 0x8BE70668) + 909449964) ^ ((v328 ^ 0x7F8B4177) - 1034330635) ^ ((v328 ^ 0x49BF5B11) - 194164845) ^ ((v328 ^ 0xFFFEFF72) + 1110238194) ^ (2 * v315) ^ v317 ^ (v317 >> 1) & 0xB6CD16F ^ v326 ^ (v326 >> 2) ^ (v326 >> 3);
  v332 = v330 ^ 0x20080586;
  v333 = 13233 * (BYTE2(v296) ^ 0x2CCB2);
  v334 = *(a6 + 4 * ((13233 * (BYTE1(v256) ^ 0xBEu) + 1907245824) % 0x30040));
  v335 = *(a6 + 4 * ((13233 * ((v721 ^ v724) ^ 0x99u) + 1582031616) % 0x30040));
  v336 = v329 ^ 0x24CD77A6 ^ (v330 ^ 0x4C57200) & (v329 << 8);
  v337 = (((v335 ^ 0x365F230C) + 1277992106) ^ ((v335 ^ 0x3F927128) + 1172426382) ^ ((v335 ^ 0x6689C701) + 486176933)) + 1434171138;
  v338 = (((v335 ^ 0x7C4D0761) + 104773829) ^ ((v335 ^ 0x5212D5B3) + 677472791) ^ ((v335 ^ 0x411B47F7) + 996735059)) + 639852627;
  v339 = v304 ^ v336;
  v340 = (((v733 - 946162072) ^ 0xE5B3515F) + 64998216) ^ (v733 - 946162072) ^ (((v733 - 946162072) ^ 0x363A85CC) - 799662123) ^ (((v733 - 946162072) ^ 0x2DE54C8B) - 880159084) ^ (((v733 - 946162072) ^ 0xE7FFFDFF) + 26437608) ^ *(a6 + 4 * (13233 * (v261 ^ 0x5DA6) - 196672 * (((357797471 * (13233 * (v261 ^ 0x5DA6))) >> 32) >> 14))) ^ *(a6 + 4 * (v333 % 0x30040)) ^ v335 ^ v334 ^ (8 * (v337 * v338 + 348044711 * (327941876 * v337 + 428109627 * v338)) + 369816544) ^ (((8 * v334) ^ 0x4466A530) - 339484032);
  LOBYTE(v315) = (((v733 + 104) ^ 0x5F) + 72) ^ (v733 + 104) ^ (((v733 + 104) ^ 0xCC) - 43) ^ (((v733 + 104) ^ 0x8B) - 108) ^ (-(v733 + 104) - 25) ^ *(a6 + 4 * (13233 * (v261 ^ 0x5DA6) - 196672 * (((357797471 * (13233 * (v261 ^ 0x5DA6))) >> 32) >> 14))) ^ *(a6 + 4 * (v333 % 0x30040)) ^ v335 ^ v334 ^ (8 * (v337 * v338 - 89 * (-12 * v337 + 59 * v338)) - 32) ^ (((8 * v334) ^ 0x30) + 0x80) ^ v728;
  v341 = HIBYTE(v331) ^ 0x8A;
  v722 = HIBYTE(v340) ^ 0x4C;
  BYTE2(v304) = BYTE2(v331);
  v734 = v331;
  v342 = 13233 * (BYTE1(v331) ^ 0xCA) + 1649784576;
  v343 = v315 ^ 0x13CA0;
  v344 = (v315 ^ 0xA5) + 606679875;
  v345 = (2 * (v344 & 0x25BA)) & 0x3FC0 ^ v344 & 0x25BA ^ ((2 * (v344 & 0x25BA)) | 0x400000) & (v344 ^ 0xF3C37EF3);
  v346 = v339 ^ (v336 << 16) & 0x24CD0000 ^ ((v336 << 16) ^ 0x77A60000) & ((v332 << 8) & 0x24CD0000 ^ 0x20880000 ^ ((v332 << 8) ^ 0x4D770000) & v332);
  v347 = (2 * (v344 ^ 0xF3C37EF3)) & 0x2E008B48 ^ 0x22208949 ^ ((2 * (v344 ^ 0xF3C37EF3)) ^ 0x54420692) & (v344 ^ 0xF3C37EF3);
  v348 = v718 ^ (2 * v346);
  v349 = (4 * v345) & 0x18B48 ^ v345 ^ ((4 * v345) | 0x30804000) & v347;
  v350 = (4 * v347) & 0x2E238B48 ^ 0x6218249 ^ ((4 * v347) ^ 0xB88E2D24) & v347;
  v351 = (16 * v349) & 0x2E238B40 ^ v349 ^ ((16 * v349) ^ 0xC2010000) & v350;
  v352 = (16 * v350) & 0x2E238B40 ^ 0xC030B49 ^ ((16 * v350) ^ 0xE238B490) & v350;
  v353 = v351 ^ (v351 << 8) & 0x2E238B00 ^ ((v351 << 8) ^ 0x21100000) & v352 ^ 0x20029B49;
  v354 = (v353 << 16) & 0x2E230000 ^ v353 ^ ((v353 << 16) ^ 0xB490000) & ((v352 << 8) & 0x2E230000 ^ 0xC200000 ^ ((v352 << 8) ^ 0x238B0000) & v352);
  v355 = __ROR4__(*(a6 + 4 * (v342 % 0x30040)), 28) ^ 0x8CD790AF;
  v356 = *(a6 + 4 * (13233 * (BYTE1(v340) ^ 0x251CAu) % 0x30040));
  v357 = BYTE2(v340) ^ 3;
  HIDWORD(v359) = *(a6 + 4 * (13233 * (HIBYTE(v348) ^ 0x57) + 914664960 - 196672 * (((357797471 * (13233 * (HIBYTE(v348) ^ 0x57) + 914664960)) >> 32) >> 14)));
  LODWORD(v359) = HIDWORD(v359);
  v358 = v359 >> 18;
  v360 = (((*(a6 + 4 * ((13233 * v341 + 1754801664) % 0x30040u)) ^ 0x45AA33D5) - 1168782293) ^ ((*(a6 + 4 * ((13233 * v341 + 1754801664) % 0x30040u)) ^ 0xDE7C2007) + 562290681) ^ ((*(a6 + 4 * ((13233 * v341 + 1754801664) % 0x30040u)) ^ 0x9519A606) + 1793481210)) + 1245273806;
  v361 = *(a6 + 4 * (13233 * (BYTE2(v348) ^ 0x43EA) - 196672 * (((11181171 * (13233 * (BYTE2(v348) ^ 0x43EAu))) >> 32) >> 9))) ^ *(a6 + 4 * (13233 * (HIBYTE(v313) ^ 0x479F) - 196672 * (((11181171 * (13233 * (HIBYTE(v313) ^ 0x479F))) >> 32) >> 9))) ^ *(a6 + 4 * (13233 * v343 % 0x30040u)) ^ v355 ^ (8 * v355) ^ (v355 << 7);
  v362 = (v360 ^ 0xF9C17E31) & (2 * (v360 & 0xE18178B5)) ^ v360 & 0xE18178B5;
  v363 = ((2 * (v360 ^ 0xBAC3BE11)) ^ 0xB6858D48) & (v360 ^ 0xBAC3BE11) ^ (2 * (v360 ^ 0xBAC3BE11)) & 0x5B42C6A4;
  v364 = (v363 ^ 0x2008400) & (4 * v362) ^ v362;
  HIDWORD(v359) = *(a6 + 4 * ((13233 * v357 + 1395710976) % 0x30040u));
  LODWORD(v359) = HIDWORD(v359);
  v365 = v359 >> 27;
  v366 = *(a6 + 4 * (13233 * (BYTE1(v313) ^ 0xCC) + 663979008 - 196672 * (((357797471 * (13233 * (BYTE1(v313) ^ 0xCCu) + 663979008)) >> 32) >> 14)));
  v367 = ((4 * (v363 ^ 0x494242A4)) ^ 0x6D0B1A90) & (v363 ^ 0x494242A4) ^ (4 * (v363 ^ 0x494242A4)) & 0x5B42C6A0;
  v729 = v361 ^ HIBYTE(v313) ^ v344 ^ BYTE2(v348) ^ (2 * v354);
  v368 = -316647225 * (((v366 ^ 0xA8AF2B4A) + 1464915126) ^ ((v366 ^ 0xC3004602) + 1023392254) ^ ((v366 ^ 0x6560D89C) - 1700845724)) + 243022894;
  v369 = v368 ^ ((v368 ^ 0xBF6C6F2B) + 1721144503) ^ ((v368 ^ 0xF737E01A) + 785193864) ^ ((v368 ^ 0x91A3FCAC) + 1213794098) ^ ((v368 ^ 0xFFFD77FF) + 638028899) ^ 0xB8319141;
  v370 = 440447374 * (((v366 ^ 0x637CC148) - 1669120328) ^ ((v366 ^ 0x1D21D73E) - 488757054) ^ ((v366 ^ 0x7092A3A2) - 1888658338));
  v371 = v370 + 819101471;
  v372 = ((v370 + 819101471) ^ 0x5039B48) + 622357297;
  v373 = ((v370 + 819101471) ^ 0x515BAF60) - 247439591;
  v725 = v358 ^ *(a6 + 4 * (13233 * (BYTE2(v304) ^ 0xC02E) - 196672 * (((357797471 * (13233 * (BYTE2(v304) ^ 0xC02Eu))) >> 32) >> 14))) ^ (v358 >> 2) ^ (v358 >> 5) ^ v356 ^ __ROR4__(*(a6 + 4 * ((13233 * (v313 ^ 0xF5u) + 2063077632) % 0x30040)), 6);
  v374 = ((v370 + 819101471) ^ 0x3443C450) + 341324841;
  v375 = -284061592 - v370;
  v376 = v348 ^ 0xE6;
  v377 = 13233 * (v348 ^ 0x14F36u) % 0x30040;
  v378 = (v376 + 1900304576) ^ 0xEB1E3EDB;
  v379 = ((2 * ((v376 + 1900304576) & 0x1162)) | 0x2000000) & v378 ^ (v376 + 1900304576) & 0x1162 ^ ((2 * ((v376 + 22720) & 0x1162)) & 0x2080 | 0x40000100);
  v380 = ((16 * (v367 ^ 0x1240C424)) ^ 0xB42C6A40) & (v367 ^ 0x1240C424) ^ (16 * (v367 ^ 0x1240C424)) & 0x5B42C680;
  v381 = (2 * v378) & 0x40401B8 ^ 0x44022089 ^ ((2 * v378) ^ 0x98084372) & v378;
  v382 = (4 * v379) & 0x4C0621B8 ^ v379 ^ ((4 * v379) ^ 0x84002400) & v381;
  v383 = (4 * v381) & 0x4C0621B8 ^ 0x4C062119 ^ ((4 * v381) ^ 0x101886E4) & v381;
  v384 = (16 * v382) & 0x4C0621B0 ^ v382 ^ ((16 * v382) ^ 0x50029000) & v383;
  v385 = (16 * v383) & 0x4C062190 ^ 0xC042029 ^ ((16 * v383) ^ 0xC0621B90) & v383;
  v386 = v384 ^ (v384 << 8) & 0x4C062100 ^ ((v384 << 8) ^ 0x2290000) & v385 ^ 0x290408B9;
  v387 = (v367 ^ 0x49020280) & (16 * v364) ^ v364 ^ 0x5B42C6A4 ^ (v380 ^ 0x10004200) & (((v367 ^ 0x49020280) & (16 * v364) ^ v364) << 8);
  v388 = (v386 << 16) & 0x4C060000 ^ v386 ^ ((v386 << 16) ^ 0x21B90000) & ((v385 << 8) & 0x4C060000 ^ 0x48060000 ^ ((v385 << 8) ^ 0x6210000) & v385);
  HIDWORD(v359) = *(a6 + 4 * (13233 * v722 + 609776640 - 196672 * (((357797471 * (13233 * v722 + 609776640)) >> 32) >> 14)));
  LODWORD(v359) = HIDWORD(v359);
  v389 = *(a6 + 4 * (13233 * (BYTE1(v348) ^ 0xAC) + 196483584 - 196672 * (((11181171 * (13233 * (BYTE1(v348) ^ 0xACu) + 196483584)) >> 32) >> 9))) ^ 0x7C8B5049;
  v390 = *(a6 + 4 * (13233 * (v734 ^ 0x29) + 254073600 - 196672 * (((11181171 * (13233 * (v734 ^ 0x29u) + 254073600)) >> 32) >> 9)));
  v391 = v360 ^ (2 * ((v387 << 16) & 0x5B420000 ^ v387 ^ ((v387 << 16) ^ 0x46A40000) & (((v380 ^ 0x4B4284A4) << 8) & 0x5B420000 ^ 0x19000000 ^ (((v380 ^ 0x4B4284A4) << 8) ^ 0x42C60000) & (v380 ^ 0x4B4284A4))));
  v392 = (((v390 ^ 0x66674ED7) - 1718046423) ^ ((v390 ^ 0xF978279A) + 109566054) ^ ((v390 ^ 0x91D0DC99) + 1848583015)) - 1043105013;
  v393 = (v359 >> 23) ^ *(a6 + 4 * (13233 * (BYTE2(v313) ^ 0xCE) + 819810816 - 196672 * (((357797471 * (13233 * (BYTE2(v313) ^ 0xCEu) + 819810816)) >> 32) >> 14))) ^ ((v359 >> 23) >> 4) ^ ((v359 >> 23) >> 7) ^ v389 ^ (32 * v389) ^ v392 ^ ((v392 ^ 0xA7CC1104) + 799036637) ^ ((v392 ^ 0x1635D08) - 1995499311) ^ ((v392 ^ 0xAECB89D4) + 648530957) ^ ((v392 ^ 0x7FF77FFF) - 140821976);
  v394 = *(a6 + 4 * v377) ^ v365 ^ (v365 >> 3) & 0x2CFF2F5 ^ v369 ^ (4 * (v371 ^ v375 ^ v373 ^ v372 ^ v374 ^ v369)) ^ v391 ^ v376 ^ (v391 >> 4) & 0x7435240 ^ (v376 + 1900304576) ^ (2 * v388);
  v395 = *(a6 + 4 * (13233 * (HIBYTE(v729) ^ 0xB1) + 1016294400 - 196672 * (((357797471 * (13233 * (HIBYTE(v729) ^ 0xB1) + 1016294400)) >> 32) >> 14)));
  LODWORD(v720) = HIBYTE(v394) ^ 0xDA;
  v396 = (((v395 ^ 0x5398A119) - 1402511641) ^ ((v395 ^ 0x947F9306) + 1803578618) ^ ((v395 ^ 0xC92887CB) + 920090677)) + 2012947384;
  v397 = (v396 ^ 0xC333C1E7) & (2 * (v396 & 0xCB43D5C4)) ^ v396 & 0xCB43D5C4;
  v398 = ((2 * (v396 ^ 0x57306067)) ^ 0x38E76B46) & (v396 ^ 0x57306067) ^ (2 * (v396 ^ 0x57306067)) & 0x9C73B5A2;
  BYTE2(v313) = BYTE2(v394);
  HIDWORD(v720) = v394;
  v399 = *(a6 + 4 * ((13233 * (BYTE2(v725) ^ 0x53u) + 1629458688) % 0x30040));
  v400 = (v398 ^ 0x18032100) & (4 * v397) ^ v397;
  v401 = (((v399 ^ 0x9C49805A) + 1672904614) ^ ((v399 ^ 0x2E4EBFF3) - 776912883) ^ ((v399 ^ 0xBCC88A7D) + 1127708035)) + 1875704581;
  v402 = ((4 * (v398 ^ 0x841094A1)) ^ 0x71CED68C) & (v398 ^ 0x841094A1) ^ (4 * (v398 ^ 0x841094A1)) & 0x9C73B5A0;
  v403 = (v401 ^ 0xBC363DBC) & (2 * (v401 & 0xBEB6B9BD)) ^ v401 & 0xBEB6B9BD;
  v404 = ((2 * (v401 ^ 0xA8567F9E)) ^ 0x2DC18C46) & (v401 ^ 0xA8567F9E) ^ (2 * (v401 ^ 0xA8567F9E)) & 0x16E0C622;
  v405 = v404 ^ 0x12204221;
  v406 = (v404 ^ 0x4C08400) & (4 * v403) ^ v403;
  v407 = v393 ^ 0xE9;
  v408 = (v407 + 796669629) ^ 0x64D27C47;
  v409 = v408 & (2 * ((v407 + 796669629) & 0x410008B)) ^ (v407 + 796669629) & 0x410008B ^ ((4 * ((((v407 + 796669629) & 0x410008Bu) >> 1) & 1)) | 0x6880);
  v410 = (2 * v408) & 0x804804CC ^ 0xA04A2444 ^ ((2 * v408) ^ 0x40844998) & v408;
  v411 = ((4 * v405) ^ 0x5B83188C) & v405 ^ (4 * v405) & 0x16E0C620;
  v412 = (4 * v409) & 0x2040244C ^ v409 ^ ((4 * v409) ^ 0x216200) & v410;
  v413 = (4 * v410) & 0xA04A6CC8 ^ 0x20424CCC ^ ((4 * v410) ^ 0x8129B330) & v410;
  v414 = (16 * v412) & 0xA04A6CC0 ^ v412 ^ ((16 * v412) ^ 0x838800) & v413;
  v415 = (16 * v413) & 0xA04A6CC0 ^ 0xA048200C ^ ((16 * v413) ^ 0x4A6CCC0) & v413;
  v416 = ((v414 << 8) ^ 0xA308000) & v415;
  v417 = v414 ^ (v414 << 8) & 0xA04A6C00;
  v418 = (v402 ^ 0x10429480) & (16 * v400) ^ v400;
  v419 = ((16 * (v402 ^ 0x8C312123)) ^ 0xC73B5A30) & (v402 ^ 0x8C312123) ^ (16 * (v402 ^ 0x8C312123)) & 0x9C73B5A0;
  v420 = v418 ^ 0x9C73B5A3;
  HIDWORD(v716) = ((v417 ^ v416 ^ 0xA0405C4C) << 16) & 0x204A0000 ^ v417 ^ v416 ^ 0xA0405C4C ^ (((v417 ^ v416 ^ 0xA0405C4C) << 16) ^ 0x6CCC0000) & ((v415 << 8) & 0xA04A0000 ^ 0x20020000 ^ ((v415 << 8) ^ 0x4A6C0000) & v415);
  v421 = *(a6 + 4 * (13233 * (HIBYTE(v725) ^ 0xAB) + 853687296 - 196672 * (((357797471 * (13233 * (HIBYTE(v725) ^ 0xAB) + 853687296)) >> 32) >> 14)));
  LODWORD(v717) = *(a6 + 4 * ((13233 * (v393 ^ 0xA0u) - 1781147218) % 0x30040)) ^ v396 ^ v401 ^ v407 ^ (v407 + 796669629) ^ *(a6 + 4 * ((13233 * (BYTE1(v394) ^ 0x3Bu) - 1876186624) % 0x30040));
  v422 = (((v421 ^ 0x48F3F39E) - 1223947166) ^ ((v421 ^ 0x696F1E86) - 1768889990) ^ ((v421 ^ 0x2F5358CC) - 793991372)) + 2061891301;
  v423 = (v422 ^ 0x81AAE722) & (2 * (v422 & 0xA9CAE732)) ^ v422 & 0xA9CAE732;
  v424 = ((2 * (v422 ^ 0x902A2B42)) ^ 0x73C198E0) & (v422 ^ 0x902A2B42) ^ (2 * (v422 ^ 0x902A2B42)) & 0x39E0CC70;
  v425 = (v411 ^ 0x12800000) & (16 * v406) ^ v406;
  v426 = v424 ^ 0x8204410;
  v427 = (v424 ^ 0x21408840) & (4 * v423) ^ v423;
  v428 = ((4 * v426) ^ 0xE78331C0) & v426 ^ (4 * v426) & 0x39E0CC70;
  v429 = (v419 ^ 0x84331000) & (v418 << 8);
  v430 = (v428 ^ 0x21800040) & (16 * v427) ^ v427;
  v431 = ((16 * (v411 ^ 0x460C623)) ^ 0x6E0C6230) & (v411 ^ 0x460C623) ^ (16 * (v411 ^ 0x460C623)) & 0x16E0C620;
  v432 = *(a6 + 4 * ((13233 * (BYTE2(v313) ^ 0x61u) + 1602357504) % 0x30040));
  v433 = ((16 * (v428 ^ 0x1860CC30)) ^ 0x9E0CC700) & (v428 ^ 0x1860CC30) ^ (16 * (v428 ^ 0x1860CC30)) & 0x39E0CC40;
  v434 = 13233 * (BYTE1(v393) ^ 0x1923Fu) % 0x30040;
  LODWORD(v716) = (v729 ^ 0x20) - 2084308405;
  v435 = ((8 * (((v716 & 0x80000005) >> 2) & 1)) | 0x20001101) ^ (v716 & 0x80000005 | 0x13130288) ^ ((2 * (v716 & 0x80000005)) | 0x70000) & (v716 ^ 0xEF1E138C);
  v436 = v420 ^ v429;
  v437 = (2 * (v716 ^ 0xEF1E138C)) & 0x11119388 ^ 0x11109089 ^ ((2 * (v716 ^ 0xEF1E138C)) ^ 0x64012112) & (v716 ^ 0xEF1E138C);
  v438 = (4 * v435) & 0x100208 ^ v435 & 0xFFFFF1FF ^ ((4 * v435) ^ 0x4C464E24) & v437;
  v439 = (4 * v437) & 0x33119388 ^ 0x33119189 ^ ((4 * v437) ^ 0x4C464E24) & v437;
  v440 = (16 * v438) & 0x33119380 ^ v438 ^ ((16 * v438) ^ 0x31193890) & v439;
  v441 = (16 * v439) & 0x33119380 ^ 0x2008309 ^ ((16 * v439) ^ 0x31193890) & v439;
  v442 = v440 ^ (v440 << 8) & 0x33119300 ^ ((v440 << 8) ^ 0x830900) & v441 ^ 0x31101180;
  v443 = (v420 ^ v429) << 16;
  v444 = v433 ^ 0x21E00870;
  HIDWORD(v717) = (v442 << 16) & 0x33110000 ^ v442 ^ ((v442 << 16) ^ 0x13890000) & ((v441 << 8) & 0x33110000 ^ 0x22000000 ^ ((v441 << 8) ^ 0x11930000) & v441);
  v445 = v425 ^ 0x16E0C623 ^ (v431 ^ 0x6004200) & (v425 << 8);
  v446 = (((v431 ^ 0x10E08403) << 8) ^ 0xE0C60000) & (v431 ^ 0x10E08403);
  v447 = ((v431 ^ 0x10E08403) << 8) & 0x16E00000 ^ 0x16200000;
  v448 = (((v432 ^ 0x6DFEAAA4) - 1845406372) ^ ((v432 ^ 0xD99996EB) + 644245781) ^ ((v432 ^ 0xBAA8899B) + 1163359845)) + 1671880783;
  v449 = v430 ^ 0x39E0CC70 ^ (v433 ^ 0x1800C400) & (v430 << 8);
  v450 = (((*(a63 + 4 * v434) ^ 0xB07A6BC9) + 1334154295) ^ ((*(a63 + 4 * v434) ^ 0x8869D585) + 2006329979) ^ ((*(a63 + 4 * v434) ^ 0x36DC0B98) - 920390552)) + (((BYTE1(v393) ^ 0x4B3E1B7F) - 59992649) ^ ((BYTE1(v393) ^ 0x7BB14806) - 857487664) ^ ((BYTE1(v393) ^ 0x3F6A0798) - 2009560750)) + 2050193857;
  v451 = (v450 ^ 0xD3C351C3) & (2 * (v450 & 0xDBE461EA)) ^ v450 & 0xDBE461EA;
  v452 = ((2 * (v450 ^ 0x77831157)) ^ 0x58CEE17A) & (v450 ^ 0x77831157) ^ (2 * (v450 ^ 0x77831157)) & 0xAC6770BC;
  v453 = v452 ^ 0xA4211085;
  v454 = (v452 ^ 0x8020038) & (4 * v451);
  v455 = v447 ^ v446;
  v456 = ((4 * v453) ^ 0xB19DC2F4) & v453 ^ (4 * v453) & 0xAC6770BC;
  v457 = (v456 ^ 0xA00540A0) & (16 * (v454 ^ v451)) ^ v454 ^ v451;
  v458 = ((16 * (v456 ^ 0xC623009)) ^ 0xC6770BD0) & (v456 ^ 0xC623009) ^ (16 * (v456 ^ 0xC623009)) & 0xAC677090;
  v459 = v457 ^ 0xAC6770BD ^ (v458 ^ 0x84670000) & (v457 << 8);
  v460 = (v448 ^ 0xF6728A59) & (2 * (v448 & 0xC4781259)) ^ v448 & 0xC4781259;
  v461 = (v459 << 16) & 0x2C670000 ^ v459 ^ ((v459 << 16) ^ 0x70BD0000) & (((v458 ^ 0x2800702D) << 8) & 0x2C670000 ^ 0x8070000 ^ (((v458 ^ 0x2800702D) << 8) ^ 0x67700000) & (v458 ^ 0x2800702D));
  v462 = *(a63 + 4 * (13233 * v720 + 311663616 - 196672 * (((357797471 * (13233 * v720 + 311663616)) >> 32) >> 14)));
  v463 = v448 ^ *(a63 + 4 * (13233 * (v729 ^ 0x2BDEFu) % 0x30040)) ^ v450;
  v464 = BYTE2(v393) ^ 0x7D;
  v465 = ((v445 << 16) ^ 0x46230000) & v455;
  v466 = (((v462 ^ 0x46918C65) - 1183943781) ^ ((v462 ^ 0xE9C3BA9D) + 373048675) ^ ((v462 ^ 0xA19D832C) + 1583512788)) + 1759470533;
  v467 = v445 ^ v436 ^ v443 & 0x1C730000 ^ (v443 ^ 0x35A30000) & (((v419 ^ 0x1840A583) << 8) & 0x9C730000 ^ 0xC420000 ^ (((v419 ^ 0x1840A583) << 8) ^ 0x73B50000) & (v419 ^ 0x1840A583));
  v468 = ((v449 << 16) ^ 0x4C700000) & ((v444 << 8) & 0x39E00000 ^ 0x19200000 ^ ((v444 << 8) ^ 0x60CC0000) & v444);
  v469 = (v449 << 16) & 0x39E00000 ^ v449;
  v470 = (v464 - 1178317965) ^ 0xAE25B0C9;
  v471 = ((2 * (v448 ^ 0xFE028EFB)) ^ 0x74F53944) & (v448 ^ 0xFE028EFB) ^ (2 * (v448 ^ 0xFE028EFB)) & 0x3A7A9CA2;
  v472 = (2 * ((v464 - 1178317965) & 0x470)) & 0xA0 ^ (v464 - 1178317965) & 0x470 ^ ((2 * ((v464 - 1178317965) & 0x470)) | 0x1800000) & v470;
  v473 = (2 * v470) & 0x2EC204B8 ^ 0x2520489 ^ ((2 * v470) ^ 0x15A00972) & v470;
  v474 = v466 ^ ((v466 ^ 0x7D74D63B) - 961725379) ^ ((v466 ^ 0x58EDCB74) - 483122828) ^ ((v466 ^ 0x9E60F748) + 632888656) ^ ((v466 ^ 0xFFDFFFFF) + 1141249529) ^ 0xD10EE236;
  v475 = (4 * v472) & 0x6000080 ^ v472 ^ ((4 * v472) | 0x41000000) & v473;
  v476 = v465 ^ HIDWORD(v716);
  v477 = (4 * v473) & 0x7ED604B8 ^ 0x4860419 ^ ((4 * v473) ^ 0x7B5812E4) & v473;
  v478 = v475 ^ (16 * v475) & 0x7ED604B0 ^ ((16 * v475) ^ 0x4000000) & v477 ^ 0x8A9604B9;
  v479 = v469 ^ v468;
  v480 = (16 * v477) & 0x7ED60490 ^ 0x12960429 ^ ((16 * v477) ^ 0xED604B90) & v477;
  v481 = 13233 * (BYTE2(v393) ^ 0xEA4E);
  v482 = (v478 << 8) & 0x7ED60400 ^ v478 ^ ((v478 << 8) ^ 0xD604B900) & v480;
  v483 = v467 ^ (v445 << 16) & 0x16E00000 ^ v476;
  v484 = v422 ^ (2 * v479);
  v485 = v717 ^ (2 * v483);
  v486 = (v471 ^ 0x30601800) & (4 * v460) ^ v460;
  v487 = *(a63 + 4 * (13233 * (BYTE1(v729) ^ 0x29171u) % 0x30040)) ^ *(a63 + 4 * (v481 - 196672 * (((357797471 * v481) >> 32) >> 14))) ^ v464 ^ (v464 - 1178317965) ^ *(a63 + 4 * (13233 * ((v725 ^ BYTE2(v734)) ^ 0xBB4F) - 196672 * (((357797471 * (13233 * ((v725 ^ BYTE2(v734)) ^ 0xBB4Fu))) >> 32) >> 14))) ^ v474 ^ (16 * v474) ^ (2 * ((v482 << 16) & 0x7ED60000 ^ v482 ^ ((v482 << 16) ^ 0x4B90000) & ((v480 << 8) & 0x7ED60000 ^ 0x28D20000 ^ ((v480 << 8) ^ 0x56040000) & v480)));
  v488 = ((4 * (v471 ^ 0xA0A84A2)) ^ 0xE9EA7288) & (v471 ^ 0xA0A84A2) ^ (4 * (v471 ^ 0xA0A84A2)) & 0x3A7A9CA0;
  v489 = v488 ^ 0x12108C22;
  v490 = *(a63 + 4 * (13233 * (HIBYTE(v393) ^ 0x1B) + 37264128 - 196672 * (((11181171 * (13233 * (HIBYTE(v393) ^ 0x1B) + 37264128)) >> 32) >> 9)));
  v491 = *(a63 + 4 * ((13233 * (BYTE2(v729) ^ 0x6Eu) - 1855847503) % 0x30040));
  LOBYTE(v471) = *(a63 + 4 * (13233 * (BYTE1(v729) ^ 0x29171u) % 0x30040)) ^ *(a63 + 4 * (v481 - 196672 * (((357797471 * v481) >> 32) >> 14))) ^ v464 ^ (v464 + 115) ^ *(a63 + 4 * (13233 * ((v725 ^ BYTE2(v734)) ^ 0xBB4F) - 196672 * (((357797471 * (13233 * ((v725 ^ BYTE2(v734)) ^ 0xBB4Fu))) >> 32) >> 14))) ^ v474 ^ (16 * v474) ^ (2 * v482) ^ BYTE1(v729);
  v492 = (v488 ^ 0x286A1080) & (16 * v486);
  v493 = (((v491 ^ 0xBDDDEF8F) + 1109528689) ^ ((v491 ^ 0x74FF4D58) - 1962888536) ^ ((v491 ^ 0xC7ED1703) + 940763389)) + (((BYTE2(v729) ^ 0xA03D5E2E) - 519275784) ^ ((BYTE2(v729) ^ 0xF171F956) - 1337926256) ^ ((BYTE2(v729) ^ 0x5A0FAB43) + 457084827)) + 75147316;
  v494 = *(a63 + 4 * (13233 * (BYTE1(v725) ^ 0x65) + 846912000 - 196672 * (((357797471 * (13233 * (BYTE1(v725) ^ 0x65u) + 846912000)) >> 32) >> 14)));
  v495 = (((v494 ^ 0x10E4224) - 17711652) ^ ((v494 ^ 0xC718DBD4) + 954672172) ^ ((v494 ^ 0xC8D92C24) + 925291484)) - 2146919591;
  v496 = ((16 * v489) ^ 0xA7A9CA20) & v489 ^ (16 * v489) & 0x3A7A9CA0;
  v497 = (v495 ^ 0x8BD46340) & (2 * (v495 & 0xD3D96B54)) ^ v495 & 0xD3D96B54;
  v498 = ((2 * (v495 ^ 0xADC6B3E0)) ^ 0xFC3FB168) & (v495 ^ 0xADC6B3E0) ^ (2 * (v495 ^ 0xADC6B3E0)) & 0x7E1FD8B4;
  v499 = v496 ^ 0x18521482;
  v500 = v498 ^ 0x2004894;
  v501 = (v498 ^ 0x5C0F9020) & (4 * v497) ^ v497;
  v502 = ((4 * v500) ^ 0xF87F62D0) & v500 ^ (4 * v500) & 0x7E1FD8B0;
  v503 = (v502 ^ 0x781F4080) & (16 * v501) ^ v501;
  v504 = ((16 * (v502 ^ 0x6009824)) ^ 0xE1FD8B40) & (v502 ^ 0x6009824) ^ (16 * (v502 ^ 0x6009824)) & 0x7E1FD880;
  v505 = v492 ^ v486 ^ 0x3A7A9CA2 ^ (v496 ^ 0x22288800) & ((v492 ^ v486) << 8);
  v506 = v503 ^ 0x7E1FD8B4 ^ (v504 ^ 0x601D8800) & (v503 << 8);
  v507 = (v506 << 16) & 0xFE1FFFFF ^ v506 ^ ((v506 << 16) ^ 0x58B40000) & (((v504 ^ 0x1E0250B4) << 8) & 0x7E1F0000 ^ 0x60070000 ^ (((v504 ^ 0x1E0250B4) << 8) ^ 0x1FD80000) & (v504 ^ 0x1E0250B4));
  v508 = 13233 * (BYTE4(v720) ^ 0x1A13C);
  v509 = *(a63 + 4 * (v508 % 0x30040)) ^ v490 ^ v495 ^ (2 * v507) ^ v493 ^ ((v493 ^ 0xE4C570EE) + 1529320531) ^ ((v493 ^ 0xC2712EE3) + 2106837600) ^ ((v493 ^ 0x1B76BAB1) - 1533780466) ^ ((v493 ^ 0x7DDFFFFF) - 1036182716);
  LOBYTE(v474) = *(a63 + 4 * (v508 % 0x30040)) ^ v490 ^ v495 ^ (2 * v507) ^ v493 ^ ((v493 ^ 0xEE) + 83) ^ ((v493 ^ 0xE3) + 96) ^ ((v493 ^ 0xB1) + 14) ^ (67 - v493) ^ BYTE4(v720);
  v735 = HIBYTE(v485) ^ 0x36;
  v510 = (v735 + 1962289304) ^ 0xD89344BE;
  v511 = ((2 * ((v735 - 104) & 0x4B)) & 0xFD | (v735 + 1962289304) & 0x4B) ^ ((2 * ((v735 + 1962289304) & 0x4B)) | 0x8404000) & v510;
  v512 = (2 * v510) & 0x188A0AF4 ^ 0x44822215 ^ ((2 * v510) ^ 0xA8644DEA) & v510;
  v513 = (4 * v511) & 0x21000274 ^ v511 ^ ((4 * v511) ^ 0xB0B0A000) & v512;
  v514 = (4 * v512) & 0x7DBE2EF4 ^ 0x9060421 ^ ((4 * v512) ^ 0xF6F8BBD4) & v512;
  v515 = (16 * v513) & 0x7DBE2EF0 ^ v513 ^ ((16 * v513) ^ 0xC9C08000) & v514;
  v516 = v463 ^ (2 * ((v505 << 16) & 0x3A7A0000 ^ v505 ^ ((v505 << 16) ^ 0x1CA20000) & ((v499 << 8) & 0x3A7A0000 ^ 0x620000 ^ ((v499 << 8) ^ 0x7A9C0000) & v499))) ^ v484 ^ (v484 >> 3) ^ (v484 >> 7);
  v517 = (16 * v514) & 0x7DBE2ED0 ^ 0x241C00A5 ^ ((16 * v514) ^ 0xDBE2EF50) & v514;
  v518 = v515 ^ (v515 << 8) & 0x7DBE2E00 ^ ((v515 << 8) ^ 0x1C080000) & v517 ^ 0x74AA26F5;
  v519 = (v517 << 8) & 0x7DBE0000 ^ 0x41900000 ^ ((v517 << 8) ^ 0x3E2E0000) & v517;
  v520 = v516 ^ (2 * v461) ^ v716 ^ (2 * HIDWORD(v717));
  v521 = (v518 << 16) & 0x7DBE0000 ^ v518 ^ ((v518 << 16) ^ 0x2EF50000) & v519;
  v522 = *(a63 + 4 * (13233 * (BYTE1(v487) ^ 0x1CFD9u) % 0x30040));
  v523 = v474;
  v524 = (((v522 ^ 0x2F8BBB62) - 797686626) ^ ((v522 ^ 0x9665774E) + 1771735218) ^ ((v522 ^ 0xB72179F8) + 1222542856)) - (BYTE1(v487) ^ 0x99) - 2145889549;
  v525 = (v524 ^ 0xF7EB9F2E) & (2 * (v524 & 0xF40C1F2F)) ^ v524 & 0xF40C1F2F;
  v526 = ((2 * (v524 ^ 0x77F3A930)) ^ 0x7FF6C3E) & (v524 ^ 0x77F3A930) ^ (2 * (v524 ^ 0x77F3A930)) & 0x83FFB61E;
  v527 = *(a63 + 4 * (13233 * (v474 ^ 0x4C85) - 196672 * (((11181171 * (13233 * (v474 ^ 0x4C85u))) >> 32) >> 9)));
  v528 = ((v527 ^ 0xC3F8A309) + 1007115511) ^ ((v527 ^ 0x96FC047) - 158318663);
  v529 = v527 ^ 0xC458D69A;
  v530 = (v526 ^ 0x70241C) & (4 * v525) ^ v525;
  v531 = (v528 ^ (v529 + 1000810854)) - (((v523 ^ 0xE0C2AF97) - 1495320719) ^ ((v523 ^ 0xD891226D) - 1634944373) ^ ((v523 ^ 0x3D512A9) + 1170770511)) - 450496612;
  v532 = ((4 * (v526 ^ 0x80009201)) ^ 0xFFED87C) & (v526 ^ 0x80009201) ^ (4 * (v526 ^ 0x80009201)) & 0x83FFB61C;
  v533 = *(a63 + 4 * (13233 * (HIBYTE(v485) ^ 0x18D06) % 0x30040u)) ^ (v735 + 1962289304) ^ v524 ^ v531;
  v534 = ((v531 ^ 0xDBC87C49) + 2089597350) ^ ((v531 ^ 0x62A81A6F) - 974332028) ^ ((v531 ^ 0x17A4A3CA) - 1327471065) ^ ((v531 ^ 0xF67FFFFF) + 1362835988);
  v535 = *(a63 + 4 * (13233 * (v485 ^ 0x7E) - 196672 * (((2795293 * (13233 * (v485 ^ 0x7Eu))) >> 32) >> 7)));
  v536 = (v532 ^ 0x3FE9010) & (16 * v530) ^ v530;
  v537 = (((v535 ^ 0xB71AFCC9) + 1222968119) ^ ((v535 ^ 0x69E798E5) - 1776785637) ^ ((v535 ^ 0xD032D1F8) + 801975816)) + 2005123054;
  v538 = (v537 ^ 0xF38A4D72) & (2 * (v537 & 0x83AB6E7A)) ^ v537 & 0x83AB6E7A;
  v539 = ((2 * (v537 ^ 0xF0C855E2)) ^ 0xE6C67730) & (v537 ^ 0xF0C855E2) ^ (2 * (v537 ^ 0xF0C855E2)) & 0x73633B98;
  v540 = (v539 ^ 0x2423310) & (4 * v538) ^ v538;
  v541 = ((16 * (v532 ^ 0x80012603)) ^ 0x3FFB61F0) & (v532 ^ 0x80012603) ^ (16 * (v532 ^ 0x80012603)) & 0x83FFB610;
  v542 = ((4 * (v539 ^ 0x11210888)) ^ 0xCD8CEE60) & (v539 ^ 0x11210888) ^ (4 * (v539 ^ 0x11210888)) & 0x73633B98;
  v543 = v536 ^ 0x83FFB61F;
  v544 = (v542 ^ 0x41002A00) & (16 * v540) ^ v540;
  v545 = 16 * (v542 ^ 0x32631198);
  v546 = (v545 ^ 0x3633B980) & (v542 ^ 0x32631198);
  v547 = v541 ^ 0x8004960F;
  v548 = v546 ^ v545 & 0x73633B80;
  v549 = (v541 ^ 0x3FB2000) & (v536 << 8);
  v550 = v544 ^ 0x73633B98 ^ (v548 ^ 0x32233900) & (v544 << 8);
  v551 = *(a63 + 4 * (13233 * (BYTE1(v509) ^ 0xCC76) - 196672 * (((357797471 * (13233 * (BYTE1(v509) ^ 0xCC76u))) >> 32) >> 14))) ^ *(a63 + 4 * ((13233 * (BYTE2(v487) ^ 0xC4u) + 2069852928) % 0x30040)) ^ v537;
  v552 = (HIBYTE(v487) ^ 0x6E) - 897886740;
  v553 = (2 * (v552 & 0x2000083)) & 0xFC000003 ^ v552 & 0x2000083 ^ ((2 * (v552 & 0x2000083)) | 0x10208000) & (v552 ^ 0x964394F8);
  v554 = v543 ^ v549;
  v555 = (2 * (v552 ^ 0x964394F8)) & 0x3831007A ^ 0x4910809 ^ ((2 * (v552 ^ 0x964394F8)) ^ 0x5820C0F6) & (v552 ^ 0x964394F8);
  v556 = (4 * v553) & 0x58800018 ^ v553 ^ ((4 * v553) ^ 0x63493000) & v555;
  v557 = *(a63 + 4 * (13233 * (HIBYTE(v520) ^ 0x169E5) % 0x30040u));
  v558 = (4 * v555) & 0x7CB17878 ^ 0xC301813 ^ ((4 * v555) ^ 0x72C5E1EC) & v555;
  v559 = (16 * v556) & 0x7CB17870 ^ v556 ^ ((16 * v556) ^ 0x8D37C000) & v558;
  v560 = (16 * v558) & 0x7CB17870 ^ 0x34A0784B ^ ((16 * v558) ^ 0xCB1787B0) & v558;
  v561 = v559 ^ (v559 << 8) & 0x7CB17800 ^ ((v559 << 8) ^ 0xE23C0000) & v560 ^ 0xA863447B;
  v562 = (v561 << 16) & 0x7CB10000 ^ v561 ^ ((v561 << 16) ^ 0x787B0000) & ((v560 << 8) & 0x7CB10000 ^ 0x4C810000 ^ ((v560 << 8) ^ 0x31780000) & v560);
  v563 = *(a63 + 4 * (13233 * (BYTE2(v509) ^ 0x18) + 701243136 - 196672 * (((357797471 * (13233 * (BYTE2(v509) ^ 0x18u) + 701243136)) >> 32) >> 14)));
  v564 = *(a63 + 4 * (13233 * (BYTE2(v520) ^ 0x1142A) - 196672 * (((357797471 * (13233 * (BYTE2(v520) ^ 0x1142Au))) >> 32) >> 14))) ^ v533 ^ (2 * v521);
  v565 = (v550 << 16) & 0x73630000 ^ v550 ^ ((v550 << 16) ^ 0x3B980000) & (((v548 ^ 0x41400218) << 8) & 0x73630000 ^ 0x10400000 ^ (((v548 ^ 0x41400218) << 8) ^ 0x633B0000) & (v548 ^ 0x41400218));
  v566 = (((v563 ^ 0x62B6D4FA) - 1656149242) ^ ((v563 ^ 0x829A1524) + 2103831260) ^ ((v563 ^ 0xEEE3740A) + 287083510)) + 1614847922;
  v567 = ((v554 << 16) ^ 0x361F0000) & ((v547 << 8) & 0x3FF0000 ^ 0x490000 ^ ((v547 << 8) ^ 0x7FB60000) & v547);
  v568 = (v566 ^ 0xF02641C5) & (2 * (v566 & 0xE0876114)) ^ v566 & 0xE0876114;
  v569 = ((2 * (v566 ^ 0x712E83ED)) ^ 0x2353C5F2) & (v566 ^ 0x712E83ED) ^ (2 * (v566 ^ 0x712E83ED)) & 0x91A9E2F8;
  v570 = ((v557 ^ 0xCD6A2E2F) + 848679377) ^ ((v557 ^ 0xBC2C4E18) + 1137947112);
  v571 = ((4 * (v569 ^ 0x90A82209)) ^ 0x46A78BE4) & (v569 ^ 0x90A82209) ^ (4 * (v569 ^ 0x90A82209)) & 0x91A9E2F8;
  v572 = v551 ^ (2 * v565);
  v573 = (v571 ^ 0xA182E0) & (16 * ((v569 ^ 0x180F0) & (4 * v568) ^ v568)) ^ (v569 ^ 0x180F0) & (4 * v568) ^ v568;
  v574 = (v554 << 16) & 0x3FF0000 ^ v554 ^ v567;
  v575 = (v557 ^ 0x7F89D5E3) - 2139739619;
  v576 = 13233 * (HIBYTE(v487) ^ 0xD0) - 1736948998;
  v577 = ((16 * (v571 ^ 0x91086019)) ^ 0x1A9E2F90) & (v571 ^ 0x91086019) ^ (16 * (v571 ^ 0x91086019)) & 0x91A9E2D0;
  v578 = v577 ^ 0x8121C069;
  v579 = v573 ^ 0x91A9E2F9 ^ (v577 ^ 0x10882200) & (v573 << 8);
  v580 = v564 ^ v534 ^ (2 * v574);
  v581 = (v570 ^ v575) + (HIBYTE(v520) ^ 0x9228F79D) + (HIBYTE(v520) ^ 0x91) + 2114245115;
  v582 = *(a63 + 4 * (v576 % 0x30040)) ^ __ROR4__(*(a63 + 4 * (13233 * (BYTE1(v485) ^ 0xE15C) - 196672 * (((357797471 * (13233 * (BYTE1(v485) ^ 0xE15Cu))) >> 32) >> 14))), 11) ^ v566 ^ (((((8 * v563) ^ 0x643F4472) + 570263598) ^ (((8 * v563) ^ 0xA2BEDE60) - 411299264) ^ (((8 * v563) ^ 0xB0FC34B2) - 180422418)) - 2124630928) ^ *(a63 + 4 * ((13233 * ((v520 ^ v729) ^ 0xC7u) + 1487177472) % 0x30040)) ^ (2 * ((v579 << 16) & 0x11A90000 ^ v579 ^ ((v579 << 16) ^ 0x62F90000) & ((v578 << 8) & 0x11A90000 ^ 0x10090000 ^ ((v578 << 8) ^ 0x29E20000) & v578))) ^ v552 ^ (2 * v562);
  v583 = v572 ^ v581 ^ ((v581 ^ 0xE3E04960) + 1932176057) ^ ((v581 ^ 0x365F3754) - 1500130163) ^ ((v581 ^ 0xE4751DEC) + 1958739509) ^ ((v581 ^ 0x5EFF7FFF) - 835347416);
  v584 = *(a63 + 4 * (13233 * (BYTE2(v485) ^ 0x2B389u) % 0x30040)) ^ *(a63 + 4 * (13233 * (HIBYTE(v509) ^ 0x28720) % 0x30040u)) ^ *(a63 + 4 * (13233 * (v471 ^ 0x11B9D) - 196672 * (((357797471 * (13233 * (v471 ^ 0x11B9Du))) >> 32) >> 14))) ^ *(a63 + 4 * (13233 * (BYTE1(v520) ^ 0x98) + 142281216 - 196672 * (((11181171 * (13233 * (BYTE1(v520) ^ 0x98u) + 142281216)) >> 32) >> 9)));
  LOBYTE(v572) = BYTE2(v485) ^ v471 ^ v584;
  v730 = HIBYTE(v583);
  v585 = HIBYTE(v584);
  v586 = *(a63 + 4 * (13233 * (HIBYTE(v580) ^ 0x11CEB) - 196672 * (((357797471 * (13233 * (HIBYTE(v580) ^ 0x11CEB))) >> 32) >> 14)));
  v587 = (13233 * (BYTE2(v583) ^ 0x84u) - 1815129562) % 0x30040;
  v588 = *(a63 + 4 * (13233 * (BYTE1(v582) ^ 0x1B5E4u) % 0x30040)) ^ 0xF6B9698F;
  v589 = (((v586 ^ 0x4AAF1B96) - 1252989846) ^ ((v586 ^ 0x55E604F6) - 1441137910) ^ ((v586 ^ 0x1186AAB4) - 294038196)) + (HIBYTE(v580) ^ 0x5FF636DF) + (HIBYTE(v580) ^ 0xC2) + 1220070256;
  v590 = (v589 ^ 0xF594C851) & (2 * (v589 & 0xC616EA64)) ^ v589 & 0xC616EA64;
  v591 = ((2 * (v589 ^ 0x7999CC59)) ^ 0x7F1E4C7A) & (v589 ^ 0x7999CC59) ^ (2 * (v589 ^ 0x7999CC59)) & 0xBF8F263C;
  v592 = v591 ^ 0x80812205;
  v593 = (v591 ^ 0x380E0030) & (4 * v590) ^ v590;
  v594 = ((4 * v592) ^ 0xFE3C98F4) & v592 ^ (4 * v592) & 0xBF8F263C;
  v595 = v594 ^ 0x1832609;
  v596 = (((*(a63 + 4 * v587) ^ 0x24CD88E) - 38590606) ^ ((*(a63 + 4 * v587) ^ 0x99AB5209) + 1716825591) ^ ((*(a63 + 4 * v587) ^ 0x95283F53) + 1792524461)) - 629367524;
  v597 = (v596 ^ 0xF12C2345) & (2 * (v596 & 0xC5AE0A40)) ^ v596 & 0xC5AE0A40;
  v598 = ((2 * (v596 ^ 0xF36823C5)) ^ 0x6D8C530A) & (v596 ^ 0xF36823C5) ^ (2 * (v596 ^ 0xF36823C5)) & 0x36C62984;
  v599 = (v594 ^ 0xBE0C0020) & (16 * v593) ^ v593;
  v600 = (v598 ^ 0x24800100) & (4 * v597) ^ v597;
  v601 = ((4 * (v598 ^ 0x12422885)) ^ 0xDB18A614) & (v598 ^ 0x12422885) ^ (4 * (v598 ^ 0x12422885)) & 0x36C62984;
  v602 = 13233 * (v572 ^ HIBYTE(v509) ^ 0xE1) + 60977664;
  v603 = ((16 * v595) ^ 0xF8F263D0) & v595 ^ (16 * v595) & 0xBF8F2610;
  v604 = v599 ^ 0xBF8F263D;
  v726 = v588 ^ *(a63 + 4 * (v602 - 196672 * (((11181171 * v602) >> 32) >> 9))) ^ (16 * v588) ^ (v588 << 7) ^ v589 ^ v596;
  v605 = v603 ^ 0x70D042D;
  HIDWORD(v359) = *(a63 + 4 * (13233 * (BYTE2(v582) ^ 0x13727) - 196672 * (((357797471 * (13233 * (BYTE2(v582) ^ 0x13727u))) >> 32) >> 14)));
  LODWORD(v359) = HIDWORD(v359);
  v606 = (v580 ^ BYTE2(v520)) ^ v735;
  v607 = (v603 ^ 0xB8822200) & (v599 << 8);
  v608 = (v601 ^ 0x12002000) & (16 * v600) ^ v600;
  v609 = *(a63 + 4 * (13233 * (BYTE1(v584) ^ 0x15) + 894339072 - 196672 * (((357797471 * (13233 * (BYTE1(v584) ^ 0x15u) + 894339072)) >> 32) >> 14))) ^ (v359 >> 1) ^ *(a63 + 4 * (13233 * (HIBYTE(v583) ^ 0x1C3E4) % 0x30040u)) ^ *(a63 + 4 * (13233 * (v606 ^ 0x2CE22u) % 0x30040)) ^ ((v359 >> 1) >> 2) & 0x70C7D8B;
  v610 = BYTE2(v584);
  v611 = 13233 * (BYTE2(v584) ^ 0x15D18);
  v612 = *(a63 + 4 * ((13233 * (v583 ^ 0x85u) + 1209390336) % 0x30040));
  v613 = ((16 * (v601 ^ 0x24C60981)) ^ 0x6C629850) & (v601 ^ 0x24C60981) ^ (16 * (v601 ^ 0x24C60981)) & 0x36C62980;
  v614 = (v605 << 8) & 0x3F8F0000 ^ 0x30890000 ^ ((v605 << 8) ^ 0xF260000) & v605;
  v615 = (((v612 ^ 0xC70452CF) + 956017969) ^ ((v612 ^ 0xB56C4771) + 1251195023) ^ ((v612 ^ 0x7CA7A06A) - 2091360362)) + 1651304271;
  v616 = (v615 ^ 0xC0A2FAB8) & (2 * (v615 & 0xD532FB02)) ^ v615 & 0xD532FB02;
  v617 = ((2 * (v615 ^ 0xC0C6EABC)) ^ 0x2BE8237C) & (v615 ^ 0xC0C6EABC) ^ (2 * (v615 ^ 0xC0C6EABC)) & 0x15F411BE;
  v618 = v617 ^ 0x14141082;
  v619 = (v617 ^ 0x1C00018) & (4 * v616) ^ v616;
  v620 = v613 ^ 0x12842185;
  v621 = (v613 ^ 0x24420800) & (v608 << 8);
  v622 = v608 ^ 0x36C62985;
  v623 = ((4 * v618) ^ 0x57D046F8) & v618 ^ (4 * v618) & 0x15F411B8;
  v624 = v620 << 8;
  v625 = (v623 ^ 0x15D000A0) & (16 * v619) ^ v619;
  v626 = 16 * (v623 ^ 0x241106);
  v627 = v622 ^ v621;
  v628 = (v626 ^ 0x5F411BE0) & (v623 ^ 0x241106);
  v629 = *(a63 + 4 * (v611 % 0x30040));
  v630 = ((v620 << 8) ^ 0xC6290000) & v620;
  v631 = v585 ^ 0x1F;
  v632 = v585 ^ 0x19AF5;
  v633 = v628 ^ v626 & 0x15F411A0;
  v634 = v604 ^ v607 ^ ((v604 ^ v607) << 16) & 0x3F8F0000 ^ (((v604 ^ v607) << 16) ^ 0x263D0000) & v614;
  v635 = v625 ^ 0x15F411BE ^ (v633 ^ 0x15401100) & (v625 << 8);
  HIDWORD(v359) = *(a63 + 4 * (13233 * (HIBYTE(v582) ^ 0x2C7FA) % 0x30040u));
  LODWORD(v359) = HIDWORD(v359);
  v582 = v582;
  v636 = v629 ^ v610 ^ (v359 >> 28) ^ ((v359 >> 28) >> 4) ^ ((v359 >> 28) >> 8) ^ *(a63 + 4 * (13233 * (BYTE1(v580) ^ 0xF2) + 74528256 - 196672 * (((11181171 * (13233 * (BYTE1(v580) ^ 0xF2u) + 74528256)) >> 32) >> 9))) ^ v615;
  v637 = v624 & 0x36C60000 ^ 0x30C60000 ^ v630;
  v638 = ((v633 ^ 0xB4001E) << 8) & 0x15F40000 ^ 0x1E40000 ^ (((v633 ^ 0xB4001E) << 8) ^ 0x74110000) & (v633 ^ 0xB4001E);
  v639 = *(a63 + 4 * (13233 * (BYTE1(v583) ^ 0x61) + 172770048 - 196672 * (((11181171 * (13233 * (BYTE1(v583) ^ 0x61u) + 172770048)) >> 32) >> 9)));
  LOBYTE(v626) = v609 ^ v606;
  v640 = (v631 + 267316714) ^ v631 ^ (((v631 + 267316714) ^ 0x5EF3F2A1) - 600070293) ^ (((v631 + 267316714) ^ 0x42487E5B) - 1065342063) ^ (((v631 + 267316714) ^ 0xDE71D921) + 1555664107) ^ (((v631 + 267316714) ^ 0xBFFDFFEF) + 1026927141) ^ *(a63 + 4 * (13233 * v632 % 0x30040u)) ^ *(a63 + 4 * (13233 * (BYTE2(v580) ^ 0x1A65) - 196672 * (((11181171 * (13233 * (BYTE2(v580) ^ 0x1A65u))) >> 32) >> 9))) ^ *(a63 + 4 * (13233 * (v582 ^ 0xAA18) - 196672 * (((357797471 * (13233 * (v582 ^ 0xAA18))) >> 32) >> 14))) ^ ((v582 ^ 0x5C) - (v582 ^ 0xCDD7ACC9) - ((2 * ((v582 ^ 0x5C) - (v582 ^ 0xCDD7ACC9))) & 0x44402334) - 1506594406) ^ v639;
  LOBYTE(v639) = (v631 - 22) ^ v631 ^ (((v631 - 22) ^ 0xA1) + 107) ^ (((v631 - 22) ^ 0x5B) - 111) ^ (((v631 - 22) ^ 0x21) - 21) ^ (((v631 - 22) ^ 0xEF) + 37) ^ *(a63 + 4 * (13233 * v632 % 0x30040u)) ^ *(a63 + 4 * (13233 * (BYTE2(v580) ^ 0x1A65) - 196672 * (((11181171 * (13233 * (BYTE2(v580) ^ 0x1A65u))) >> 32) >> 9))) ^ *(a63 + 4 * (13233 * (v582 ^ 0xAA18) - 196672 * (((357797471 * (13233 * (v582 ^ 0xAA18))) >> 32) >> 14))) ^ ((v582 ^ 0x5C) - (v582 ^ 0xC9) - ((2 * ((v582 ^ 0x5C) - (v582 ^ 0xC9))) & 0x34) - 102) ^ v639 ^ BYTE2(v580);
  v641 = ((v609 >> 15) & 0x1FE ^ 0x1BC) + 1958852963;
  v642 = ((2 * (v641 & 0x22E)) | 0x48826002) & (v641 ^ 0x1C2BD33A) ^ v641 & 0x22E ^ ((2 * (v641 & 0x22E)) & 0x14 | 0xA000901);
  v643 = (2 * (v641 ^ 0x1C2BD33A)) & 0x10C4C114 ^ 0xA442915 ^ ((2 * (v641 ^ 0x1C2BD33A)) ^ 0x6088422A) & (v641 ^ 0x1C2BD33A);
  v644 = (4 * v642) & 0xBACCE914 ^ v642 ^ ((4 * v642) ^ 0x99054400) & v643;
  v645 = (4 * v643) & 0xBACCE914 ^ 0x10CC4901 ^ ((4 * v643) ^ 0xEB33A454) & v643;
  v646 = (16 * v644) & 0xBACCE910 ^ v644 ^ ((16 * v644) ^ 0xE4511000) & v645;
  v647 = (v627 << 16) & 0x36C60000 ^ v627 ^ ((v627 << 16) ^ 0x29850000) & v637 ^ v634;
  v648 = (16 * v645) & 0xBACCE910 ^ 0x12006805 ^ ((16 * v645) ^ 0xACCE9150) & v645;
  v649 = v636 ^ (2 * ((v635 << 16) & 0x15F40000 ^ v635 ^ ((v635 << 16) ^ 0x11BE0000) & v638));
  v650 = v646 ^ (v646 << 8) & 0xBACCE900 ^ ((v646 << 8) ^ 0x5110000) & v648 ^ 0xA4C9F815;
  v651 = v726 ^ (2 * v647);
  v652 = *(a63 + 4 * (13233 * (v639 ^ 0xA5) + 437006592 - 196672 * (((357797471 * (13233 * (v639 ^ 0xA5u) + 437006592)) >> 32) >> 14))) ^ v641;
  v653 = (BYTE2(v649) ^ 0xDB) - (BYTE2(v649) ^ 0x15CDE05);
  v654 = *(a63 + 4 * (13233 * (HIBYTE(v609) ^ 0xB272) - 196672 * (((357797471 * (13233 * (HIBYTE(v609) ^ 0xB272))) >> 32) >> 14))) ^ *(a63 + 4 * (13233 * (BYTE1(v640) ^ 0x15C8Eu) % 0x30040));
  v655 = 13233 * (v730 ^ 0xA1 ^ v626) + 772383744;
  v656 = *(a63 + 4 * (v655 - 196672 * (((357797471 * v655) >> 32) >> 14)));
  v657 = ((v656 ^ 0x128FD8D7) - 311417047) ^ ((v656 ^ 0x7F9EE6BF) - 2141120191) ^ ((v656 ^ 0x63DE8BBC) - 1675529148);
  v658 = *(a63 + 4 * ((13233 * (HIBYTE(v640) ^ 0x1A) + 1910633472) % 0x30040u));
  v659 = (((v658 ^ 0x85B431DB) + 2051788325) ^ ((v658 ^ 0x424841BE) - 1112031678) ^ ((v658 ^ 0xC933C5B1) + 919353935)) + 1196762912;
  v660 = (v659 ^ 0x9C88F849) & (2 * (v659 & 0xDCA2F969)) ^ v659 & 0xDCA2F969;
  v661 = ((2 * (v659 ^ 0xADC8A819)) ^ 0xE2D4A2E0) & (v659 ^ 0xADC8A819) ^ (2 * (v659 ^ 0xADC8A819)) & 0x716A5170;
  v662 = ((4 * (v661 ^ 0x112A5110)) ^ 0xC5A945C0) & (v661 ^ 0x112A5110) ^ (4 * (v661 ^ 0x112A5110)) & 0x716A5170;
  v663 = ((16 * (v662 ^ 0x30421030)) ^ 0x16A51700) & (v662 ^ 0x30421030) ^ (16 * (v662 ^ 0x30421030)) & 0x716A5140;
  LODWORD(v359) = __ROR4__(*(a63 + 4 * (13233 * (v651 ^ 0x2CE1) - 196672 * (((11181171 * (13233 * (v651 ^ 0x2CE1u))) >> 32) >> 9))), 20);
  v664 = (v662 ^ 0x41284140) & (16 * ((v661 ^ 0x60000060) & (4 * v660) ^ v660)) ^ (v661 ^ 0x60000060) & (4 * v660) ^ v660 ^ 0x716A5170 ^ (v663 ^ 0x10201100) & (((v662 ^ 0x41284140) & (16 * ((v661 ^ 0x60000060) & (4 * v660) ^ v660)) ^ (v661 ^ 0x60000060) & (4 * v660) ^ v660) << 8);
  v665 = 13233 * (BYTE2(v651) ^ 0x2C689);
  v666 = *(a63 + 4 * (13233 * (BYTE2(v640) ^ 0x20E54u) % 0x30040)) ^ *(a63 + 4 * (13233 * (HIBYTE(v649) ^ 0x2F) + 579287808 - 196672 * (((357797471 * (13233 * (HIBYTE(v649) ^ 0x2F) + 579287808)) >> 32) >> 14))) ^ *(a63 + 4 * (13233 * (BYTE1(v651) ^ 0x2B42Fu) % 0x30040)) ^ (v657 + 691027329) ^ (((v657 + 691027329) ^ 0xEEA6F64D) + 730142986) ^ (((v657 + 691027329) ^ 0xC89D75B7) + 230595316) ^ (((v657 + 691027329) ^ 0xE31866B4) + 641436145) ^ (((v657 + 691027329) ^ 0xFFFFF5F5) + 987503282) ^ (12077698 * (v657 + 691027329) + 2030138122);
  v667 = *(a63 + 4 * (13233 * (BYTE2(v609) ^ 0x6B64) - 196672 * (((357797471 * (13233 * (BYTE2(v609) ^ 0x6B64u))) >> 32) >> 14))) ^ *(a63 + 4 * ((13233 * (BYTE1(v649) ^ 0x2Cu) + 1368609792) % 0x30040)) ^ *(a63 + 4 * ((13233 * (HIBYTE(v651) ^ 0x47) - 1753979869) % 0x30040u)) ^ v652 ^ (2 * ((v650 << 16) & 0x3ACC0000 ^ v650 ^ ((v650 << 16) ^ 0x69150000) & ((v648 << 8) & 0x3ACC0000 ^ 0x32040000 ^ ((v648 << 8) ^ 0x4CE90000) & v648)));
  v668 = *(a63 + 4 * ((13233 * (BYTE1(v609) ^ 0x15u) + 1541379840) % 0x30040));
  v669 = *(a63 + 4 * (13233 * (BYTE2(v649) ^ 0x2033) - 196672 * (((11181171 * (13233 * (BYTE2(v649) ^ 0x2033u))) >> 32) >> 9))) ^ v654 ^ v359 ^ (v653 - ((2 * v653) & 0xC0000294) - 531328694);
  v670 = v666 ^ HIWORD(v640);
  LOBYTE(v653) = BYTE1(v640) ^ *(a63 + 4 * (13233 * (BYTE2(v649) ^ 0x2033) - 196672 * (((11181171 * (13233 * (BYTE2(v649) ^ 0x2033u))) >> 32) >> 9))) ^ v654 ^ v359 ^ (v653 - ((2 * v653) & 0x94) + 74);
  LODWORD(v359) = __ROR4__(*(a63 + 4 * (13233 * (v649 ^ 0xC7) + 704630784 - 196672 * (((357797471 * (13233 * (v649 ^ 0xC7u) + 704630784)) >> 32) >> 14))), 11);
  v671 = HIBYTE(v667);
  v672 = *(a63 + 4 * (v665 % 0x30040)) ^ v668 ^ (((8 * v668) ^ 0xB2E138E8) - 574121384) ^ v359 ^ v659 ^ (2 * ((v664 << 16) & 0x716A0000 ^ v664 ^ ((v664 << 16) ^ 0x51700000) & (((v663 ^ 0x614A4070) << 8) & 0x716A0000 ^ 0x112A0000 ^ (((v663 ^ 0x614A4070) << 8) ^ 0x6A510000) & (v663 ^ 0x614A4070))));
  v673 = HIBYTE(v666) ^ 0x22;
  v674 = (13233 * (BYTE2(v669) ^ 1u) + 1375385088) % 0x30040;
  HIDWORD(v359) = *(a63 + 4 * (13233 * (BYTE1(v666) ^ 0xCE) + 938378496 - 196672 * (((357797471 * (13233 * (BYTE1(v666) ^ 0xCEu) + 938378496)) >> 32) >> 14)));
  LODWORD(v359) = HIDWORD(v359);
  v675 = *(a63 + 4 * (13233 * (v672 ^ 0x22C2Du) % 0x30040));
  v676 = (13233 * (HIBYTE(v669) ^ 0xA0) + 1985161728) % 0x30040u;
  v677 = *(a63 + 4 * v674) ^ *(a63 + 4 * (13233 * (HIBYTE(v667) ^ 0x4987) - 196672 * (((11181171 * (13233 * (HIBYTE(v667) ^ 0x4987))) >> 32) >> 9))) ^ (*(a63 + 4 * v674) >> 2) ^ (*(a63 + 4 * v674) >> 3);
  LOBYTE(v640) = BYTE1(v672);
  v678 = *(a63 + 4 * (13233 * (BYTE2(v666) ^ 0x60) + 887563776 - 196672 * (((357797471 * (13233 * (BYTE2(v666) ^ 0x60u) + 887563776)) >> 32) >> 14)));
  v679 = v678 ^ *(a63 + 4 * v676) ^ (*(a63 + 4 * v676) >> 3) & 0x4E96CB3 ^ *(a63 + 4 * (13233 * (BYTE1(v672) ^ 0x147C) - 196672 * (((11181171 * (13233 * (BYTE1(v672) ^ 0x147Cu))) >> 32) >> 9))) ^ (v678 >> 1) & 0x4AC457BE ^ *(a63 + 4 * ((13233 * (v667 ^ 0xA3u) + 1514278656) % 0x30040));
  v680 = *(a63 + 4 * (13233 * (BYTE2(v672) ^ 0xCB5C) - 196672 * (((357797471 * (13233 * (BYTE2(v672) ^ 0xCB5Cu))) >> 32) >> 14)));
  v681 = *(a63 + 4 * (13233 * v673 + 823198464 - 196672 * (((357797471 * (13233 * v673 + 823198464)) >> 32) >> 14)));
  v682 = v677 ^ (v359 >> 16) ^ (((4 * (v359 >> 16)) ^ 0xD7503B3C) - 1759798156);
  v683 = -1343012341 * (((v675 ^ 0x3B3E5618) - 993941016) ^ ((v675 ^ 0xDEA6C08) - 233466888) ^ ((v675 ^ 0x381B8FC4) - 941330372)) + 723546117;
  v684 = (((v680 ^ 0x5D053A66) - 760523828) ^ ((v680 ^ 0xD5937139) + 1513953429) ^ ((v680 ^ 0x1A074B82) - 1784077776)) + 1588172984;
  v685 = (((v680 ^ 0x62EE0BF8) - 314547626) ^ ((v680 ^ 0xC1A954D3) + 1309097343) ^ ((v680 ^ 0x31D65FF6) - 1099418020)) + 801805851;
  v686 = HIBYTE(v609) ^ 0x182B5 ^ v653;
  v687 = v684 * v685;
  HIDWORD(v359) = *(a63 + 4 * ((13233 * (BYTE1(v667) ^ 0xABu) + 2107117056) % 0x30040));
  LODWORD(v359) = HIDWORD(v359);
  v688 = v681 ^ *(a63 + 4 * (13233 * v686 % 0x30040u)) ^ v680 ^ (v359 >> 21) ^ ((v359 >> 21) >> 4) & 0xA6F31B1;
  v689 = *(a63 + 4 * (13233 * (HIBYTE(v672) ^ 0x12635) - 196672 * (((357797471 * (13233 * (HIBYTE(v672) ^ 0x12635))) >> 32) >> 14)));
  v690 = BYTE2(v667);
  v691 = (13233 * (v690 ^ 0x9B) - 1818517210) % 0x30040;
  v692 = 80385716 * v684 + 494757511 * v685;
  v693 = *(a63 + 4 * ((13233 * (BYTE1(v669) ^ 0xC1u) - 1774358689) % 0x30040));
  v694 = v682 ^ v683 ^ ((v683 ^ 0xA8F0957D) + 538549612);
  v695 = (((v693 ^ 0x4877F38B) - 1215820683) ^ ((v693 ^ 0x7B67FA0C) - 2070411788) ^ ((v693 ^ 0x3DDFBC53) - 1038072915)) - 887267500;
  v696 = (v695 ^ 0xF3C619C0) & (2 * (v695 & 0xF3C71991)) ^ v695 & 0xF3C71991;
  v697 = ((2 * (v695 ^ 0xB54A1BC0)) ^ 0x8D1A04A2) & (v695 ^ 0xB54A1BC0) ^ (2 * (v695 ^ 0xB54A1BC0)) & 0x468D0250;
  v698 = v697 ^ 0x42850251;
  v699 = v696 ^ 0x468D0251 ^ (v697 ^ 0x4080000) & (4 * v696);
  v700 = v694 ^ ((v683 ^ 0x532F8C04) - 607747053) ^ ((v683 ^ 0x7234117F) - 86173334) ^ ((v683 ^ 0xFEFDFFEF) + 1981085690);
  v701 = ((4 * v698) ^ 0x1A340944) & v698 ^ (4 * v698) & 0x468D0250;
  v702 = v687 + 175125041 * v692;
  v703 = v701 & 0x9B525D00 ^ v699 ^ (v701 ^ 0x2040041) & ((16 * v699) ^ 0xF3827810);
  v704 = ((16 * v701) ^ 0xBB125900) & (v701 ^ 0x2040041) ^ v701 & 0x9B525D00;
  v705 = v704 & 0x9B525D00 ^ v703 ^ ((v703 << 8) ^ 0x16500C00) & (v704 ^ 0x2000051);
  v706 = (v670 ^ 0x5B) - (v670 ^ 0x3CE4B243);
  v707 = (((v689 ^ 0x32CE3DAA) - 852377002) ^ ((v689 ^ 0x4084DC7B) - 1082449019) ^ ((v689 ^ 0x7C855405) - 2089112581)) + 296668259;
  v708 = ((v704 << 8) ^ 0x9B525D00) & (v704 ^ 0x2000051) ^ v704 & 0x9B525D00;
  v709 = v705 ^ v708 & 0x1B525D00 ^ ((v705 << 16) ^ 0x99035D00) & (v708 ^ 0x448D0000) ^ ((v705 << 16) ^ 0x99035D00) & 0x468D0000;
  LOBYTE(v609) = v671 ^ v700;
  LOBYTE(v708) = v679 ^ v640;
  v710 = *(a63 + 4 * (13233 * (v670 ^ 0x6F4B) - 196672 * (((357797471 * (13233 * (v670 ^ 0x6F4Bu))) >> 32) >> 14))) ^ *(a63 + 4 * v691) ^ v707 ^ ((v707 ^ 0x7693EC60) - 703659928) ^ ((v707 ^ 0x12833B2D) - 1306536149) ^ ((v707 ^ 0x54883B0A) - 199960818) ^ ((v707 ^ 0x6FFBFFBF) - 815328327) ^ v695 ^ (((((16 * v693) ^ 0x96E9D60D) - 1215913672) ^ (((16 * v693) ^ 0x941CF317) - 1250720722) ^ (((16 * v693) ^ 0xEE0E785A) - 815722655)) + 741967845) ^ (v706 - ((2 * v706) & 0x61014AA) + 791448149) ^ (2 * v709);
  *(v737 - 11) = *(a61 + 34565 * (v609 ^ 0x20C6) - 36992 * (((951134627 * (34565 * (v609 ^ 0x20C6u))) >> 32) >> 13)) ^ v609 ^ 0x5B;
  v711 = ((v710 >> 8) ^ 0x59C37B) + ((v710 >> 8) ^ 0x55);
  *(v737 - 9) = *(a61 + 34565 * (BYTE2(v679) ^ 0x7913) - 36992 * (((1902269253 * (34565 * (BYTE2(v679) ^ 0x7913u))) >> 32) >> 14)) ^ 0x39;
  *v737 = *(a61 + 34565 * (BYTE1(v710) ^ 0x8A) + 1132729615 - 36992 * (((1902269253 * (34565 * (BYTE1(v710) ^ 0x8Au) + 1132729615)) >> 32) >> 14)) ^ (v711 - ((2 * v711) & 0x8C) - 58) ^ 0xF3;
  *(v737 - 7) = *(a61 + 34565 * (v708 ^ 0xF9) + 1106114565 - 36992 * (((1902269253 * (34565 * (v708 ^ 0xF9u) + 1106114565)) >> 32) >> 14)) ^ ((v708 ^ 0x3C) + (v708 ^ 0x12) - ((2 * ((v708 ^ 0x3C) + (v708 ^ 0x12))) & 0xDF) + 111) ^ 0x79;
  *(v737 - 8) = *(a61 + 34565 * (BYTE1(v679) ^ 0x49DC) - 36992 * (((1902269253 * (34565 * (BYTE1(v679) ^ 0x49DCu))) >> 32) >> 14)) ^ 0xF9;
  LOBYTE(v708) = *(a61 + 34565 * (BYTE3(v710) ^ 0x59) + 1017593600 - 36992 * (((1902269253 * (34565 * (BYTE3(v710) ^ 0x59) + 1017593600)) >> 32) >> 14));
  v712 = v688 ^ (8 * v702 + 673721184);
  LOBYTE(v708) = -15 * (((v708 ^ 0xA8) + 88) ^ ((v708 ^ 0xF1) + 15) ^ ((v708 ^ 0x11) - 17));
  LOBYTE(v708) = (v708 + 64) ^ (2 * (((v708 + 64) ^ 8) & (2 * (((v708 + 64) ^ 8) & (2 * (((v708 + 64) ^ 8) & (2 * (v708 & 0x18 ^ 0x48)) ^ v708 & 0x18 ^ 0x48)) ^ v708 & 0x18 ^ 0x48)) ^ v708 & 0x18 ^ 0x48));
  LOBYTE(v702) = v710 ^ v690 ^ 0x6D;
  LOBYTE(v707) = v702 + 28;
  *(v737 - 2) = v708 ^ (v708 >> 2) ^ ((v708 >> 4) | 0xB0) ^ 0xC4;
  LOBYTE(v708) = (v702 - 100) & 0xC6 | 0x20;
  LOBYTE(v702) = v708 ^ (v702 + 28) & 0xC0;
  *(v736 + (a57 ^ 0xA5B8)) = *(a61 + 34565 * ((v710 ^ v690) ^ 0x4F1E) - 36992 * (((1902269253 * (34565 * ((v710 ^ v690) ^ 0x4F1Eu))) >> 32) >> 14)) ^ v707 ^ (2 * ((v707 ^ 0x44) & (2 * ((v707 ^ 0x44) & (2 * ((v707 ^ 0x44) & (2 * ((v707 ^ 0x44) & (2 * ((v707 ^ 0x44) & (2 * v708) ^ v702)) ^ v702)) ^ v702)) ^ v702)) ^ v702)) ^ 0xCF;
  *(v737 - 10) = *(a61 + 34565 * (HIBYTE(v679) ^ 0x23B8) - 36992 * (((951134627 * (34565 * (HIBYTE(v679) ^ 0x23B8))) >> 32) >> 13)) ^ 0xB;
  v713 = ((2 * HIBYTE(v700)) ^ 0xFFFFFFBE) - 15;
  LOBYTE(v702) = v713 & 0x66 ^ 0xCA;
  *(v737 - 14) = v713 ^ *(a61 + 34565 * (HIBYTE(v700) ^ 0xC) + 1177111075 - 36992 * (((1902269253 * (34565 * (HIBYTE(v700) ^ 0xC) + 1177111075)) >> 32) >> 14)) ^ (2 * ((v713 ^ 0x50) & (2 * ((v713 ^ 0x50) & (2 * ((v713 ^ 0x50) & (2 * ((v713 ^ 0x50) & (2 * ((v713 ^ 0x50) & (2 * v702) ^ v702)) ^ v702)) ^ v702)) ^ v702)) ^ v702)) ^ 0xCF;
  LOBYTE(v713) = *(a61 + 34565 * (v712 ^ 0x6FD9) - 36992 * (((1902269253 * (34565 * (v712 ^ 0x6FD9u))) >> 32) >> 14));
  LOBYTE(v713) = (((v713 ^ 0xA3) + 93) ^ ((v713 ^ 0x79) - 121) ^ ((v713 ^ 0x92) + 110)) + 19;
  LOBYTE(v711) = v713 & 0x5E ^ 0x6C;
  *(v737 - 3) = v713 ^ (2 * ((v713 ^ 4) & (2 * ((v713 ^ 4) & (2 * ((v713 ^ 4) & (2 * ((v713 ^ 4) & (2 * ((v713 ^ 4) & (2 * v711) ^ v711)) ^ v711)) ^ v711)) ^ v711)) ^ v711)) ^ 0xB8;
  *(v737 - 5) = *(a61 + 34565 * (BYTE2(v712) ^ 0x79) + 1203726125 - 36992 * (((1902269253 * (34565 * (BYTE2(v712) ^ 0x79u) + 1203726125)) >> 32) >> 14)) ^ 0xC3;
  *(v737 - 12) = *(a61 + 34565 * (BYTE1(v700) ^ 0x16E8) - 36992 * (((237783657 * (34565 * (BYTE1(v700) ^ 0x16E8u))) >> 32) >> 11)) ^ 0x3C;
  *(v737 - 4) = *(a61 + 34565 * (BYTE1(v712) ^ 0x33A1) - 36992 * (((951134627 * (34565 * (BYTE1(v712) ^ 0x33A1u))) >> 32) >> 13)) ^ 0x91;
  LOBYTE(v713) = *(a61 + 34565 * (BYTE2(v710) ^ 0x423E) - 36992 * (((1902269253 * (34565 * (BYTE2(v710) ^ 0x423Eu))) >> 32) >> 14));
  LOBYTE(v713) = (((v713 ^ 0x7F) - 127) ^ ((v713 ^ 0x2C) - 44) ^ ((v713 ^ 0x1B) - 27)) + 97;
  LOBYTE(v711) = v713 & 0x56 ^ 0xC7;
  *(v737 - 1) = v713 ^ (2 * ((v713 ^ 0x48) & (2 * ((v713 ^ 0x48) & (2 * ((v713 ^ 0x48) & (2 * ((v713 ^ 0x48) & (2 * (v713 & (2 * (v711 ^ v713 & 0x1E)) ^ v711)) ^ v711)) ^ v711)) ^ v711)) ^ v711)) ^ 0xEF;
  *(v737 - 13) = BYTE2(v700) ^ 0x62 ^ *(a61 + 34565 * (BYTE2(v700) ^ 0x6CDB) - 36992 * (((1902269253 * (34565 * (BYTE2(v700) ^ 0x6CDBu))) >> 32) >> 14));
  v714 = *(a61 + 34565 * (HIBYTE(v712) ^ 0x815) - 36992 * (((118891829 * (34565 * (HIBYTE(v712) ^ 0x815))) >> 32) >> 10));
  *(v737 - 6) = v714 ^ (v714 >> 4) ^ 0xF0;
  return (*(a51 + 8 * ((55 * (v723 != 0)) ^ a57)))(v710, 36992, 1902269253, 951134627, 36992, a63, v691, v690, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, v716, v717, v720);
}

uint64_t sub_10018859C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10)
{
  v13 = v11 - 2111519550 < a10 + 1559831699;
  if ((a10 + 1559831699) < 0x8224C4C2 != v11 > 0x7DDB3B3D)
  {
    v13 = (a10 + 1559831699) < 0x8224C4C2;
  }

  return (*(v12 + 8 * ((!v13 * (v10 - 5193)) ^ v10)))();
}

uint64_t sub_100188608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  v14 = a11 + (((v12 ^ 0xC60D6B7F) + 972199041) ^ ((v12 ^ 0xCC9EBB6B) + 862012565) ^ (((a4 - 740899322) & 0x2C293C64 ^ 0x1CB9F09F) + (v12 ^ 0xE3461705)));
  v15 = v14 < 0xF7B23009;
  v16 = v11 - 1636985921 < v14;
  if (v11 - 1636985921 < ((1437 * (a4 ^ 0x15FB)) ^ 0xF7B23B33) != v15)
  {
    v16 = v15;
  }

  return (*(v13 + 8 * ((991 * v16) ^ a4)))(a1, a2, a3, v11);
}

uint64_t sub_100188A38@<X0>(int a1@<W8>, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v8 = 1112314453 * ((((2 * &a3) | 0x8B4F5E58) - &a3 - 1168617260) ^ 0xAAF185F5);
  a5 = v5;
  a3 = v8 - a1 - ((920457838 - 2 * a1) & 0x634FD10C) + (((v7 - 20858) | 0x6224) ^ 0x4D161F9B);
  a4 = v7 - v8 - 18452;
  v9 = (*(v6 + 8 * (v7 + 28473)))(&a3);
  return (*(v6 + 8 * v7))(v9);
}

uint64_t sub_100188C28()
{
  v7 = *(v6 - 184);
  v8 = v7 + v3;
  v9 = ((v4 + 22588) ^ 0x6D49) & (v3 + 15);
  v10 = v9 + 1;
  v11 = v9 + 1 - v3;
  v12 = v1 + v11;
  v13 = v1 + v9 + 1;
  v14 = v9 + v0 + 2;
  v15 = v2 + v11;
  v16 = v2 + v10;
  v18 = v14 > v7 && v14 - v3 < v8;
  if (v13 > v7 && v12 < v8)
  {
    v18 = 1;
  }

  if (v16 > v7 && v15 < v8)
  {
    v18 = 1;
  }

  return (*(v5 + 8 * ((30 * (((v4 + 53) ^ v18) & 1)) ^ v4)))();
}

uint64_t sub_100188CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned __int8 a15, unsigned __int8 a16, unsigned __int8 a17, unsigned __int8 a18)
{
  v21 = a18 ^ 0x5F;
  v22 = ((a15 ^ 0x5F) << 24) | ((a16 ^ 0x5F) << 16) | ((a17 ^ 0x5F) << 8) | v21;
  *v20 = v22 - 2 * (v22 & 0x69D5C71D ^ v21 & 0xC) - 371865839;
  return (*(v19 + 8 * v18))();
}

uint64_t sub_100188D64(uint64_t a1, uint64_t a2)
{
  *(v3 + 24) = v5;
  *(v6[3] + 32) = v6[4];
  *(a2 + 8) += v6[1] + v4;
  return (*(v7 + 8 * v2))();
}

uint64_t sub_100188E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  LODWORD(STACK[0x6CB8]) = -371865839;
  STACK[0x8FE0] = 0;
  LODWORD(STACK[0x767C]) = -371865839;
  STACK[0x77C0] = 0;
  LODWORD(STACK[0x14DC]) = -371865839;
  return (*(STACK[0xF18] + 8 * (((((a3 + 12915) ^ 0xD79A) + 21607) * (v3 == -371865840)) ^ (a3 + 12915))))(a1, a2, 371891535);
}

uint64_t sub_10018907C()
{
  v4 = (-v2 | 0xF77A2581A815970FLL) + v3 + (((v1 ^ 0x5618u) + 0x885DA7E57EA4E9ELL) | -v2);
  v5 = *(v4 + 0x885DA7E57EA68F1);
  v6 = v2 + v3;
  v7 = *(v2 + v3 - 0x885DA7E57EA68BALL);
  v8 = v7 & 0x42 ^ 0xFFFFFFC4;
  v9 = v5 & 0xFFFFFFB0 | 0xF;
  v10 = (2 * ((v5 ^ 0x3A) & (2 * ((v5 ^ 0x3A) & 0xA ^ v9)) ^ v9)) & (v5 ^ 0x3A) ^ v9;
  v11 = (v7 ^ 0x38) & (2 * ((v7 ^ 0x38) & (2 * ((v7 ^ 0x38) & (2 * ((v7 ^ 0x38) & (2 * ((v7 ^ 0x38) & (2 * v8) ^ v8)) ^ v8)) ^ v8)) & 0x7C ^ v8)) ^ v9 ^ (v5 ^ 0x3A) & (2 * ((v5 ^ 0x3A) & (2 * ((124 * (v10 / 0x3Eu) + 2 * (v10 % 0x3Eu)) & (v5 ^ 0x3A) ^ v9)) ^ v9));
  v12 = v7 ^ v5 ^ ((2 * (v11 ^ v8)) & 0xFFFFFF8C | (2 * v11) & 0x72);
  v13 = (((v12 ^ 0x7D) - 69) ^ ((v12 ^ 0x60) - 88) ^ ((v12 ^ 0xFFFFFFEF) + 41)) + 16;
  *(v2 + v3 - 0x885DA7E57EA68BALL) = v13;
  v14 = *(v4 + 0x885DA7E57EA68F1);
  v15 = v14 & 0x78 ^ 0x63;
  v16 = (((2 * v14) & 0x20 | (2 * (v15 & 0xFFFFFFEF ^ v14 & 0x42))) ^ 4) & (v14 ^ 0x3A);
  v17 = v13 & 0x16 ^ 0x7E;
  v18 = (v13 ^ 0x38) & (2 * v17) ^ v17;
  v19 = (v14 ^ 0x3A) & (2 * ((v14 ^ 0x3A) & (2 * ((v14 ^ 0x3A) & (2 * ((((2 * (v16 & 0x72 ^ v15)) & 0xFFFFFFF7 | (8 * ((v16 >> 2) & 1))) - 128) & (v14 ^ 0x3A) ^ v15)) ^ v15)) ^ v15)) ^ v15 ^ v17 ^ (2 * ((v13 ^ 0x38) & (2 * ((v13 ^ 0x38) & (2 * ((2 * (((2 * v18) & 0x99999999) + (v18 & 0x33333333)) - ((2 * v18) & 0x99999999)) & (v13 ^ 0x38) ^ v17)) ^ v17)) ^ v17)) & (v13 ^ 0x38);
  if ((v19 / 0x3Au))
  {
    v20 = 116;
  }

  else
  {
    v20 = 0;
  }

  v21 = v13 ^ v14 ^ (v20 - v19 / 0x74u * (v19 / 0x74u) + ((v19 / 0x74u) | 0x74) * ((v19 / 0x74u) | 0x74) + 2 * (v19 % 0x3Au) + 112);
  v22 = (((v21 ^ 0xE8) - 79) ^ ((v21 ^ 0x81) - 38) ^ ((v21 ^ 7) + 96)) + 15;
  *(v4 + 0x885DA7E57EA68F1) = v22;
  v23 = *(v6 - 0x885DA7E57EA68BALL);
  v24 = v22 & 0xEE ^ 0x3A;
  v25 = v22 ^ v23 ^ (2 * ((v23 ^ 0x38) & (2 * ((v23 ^ 0x38) & (2 * ((v23 ^ 0x38) & (2 * (((2 * ((v23 ^ 0x38) & (2 * (v23 & 0x82 ^ 0xA4)) | v23 & 0x82)) ^ 0x48) & (v23 ^ 0x38) ^ v23 & 0x82 ^ 0xA4)) ^ v23 & 0x82 ^ 0xA4)) & 0x7C ^ v23 & 0x82 ^ 0xA4)) ^ v23 & 0x82 ^ 0xA4 ^ v24 ^ (v22 ^ 0x38) & (2 * ((v22 ^ 0x38) & (2 * ((v22 ^ 0x38) & (2 * ((v22 ^ 0x38) & (2 * ((v22 ^ 0x38) & (2 * v24) ^ v24)) ^ v24)) ^ v24)) ^ v24))));
  *(v6 - 0x885DA7E57EA68BALL) = (v25 ^ ((v25 ^ 0xE) + 19) ^ ((v25 ^ 1) + 30) ^ 0xE3) - 43;
  return (*(v0 + 8 * ((14773 * (v2 == 0x885DA7E57EA68D4)) ^ v1)))();
}

uint64_t sub_100189520@<X0>(int a1@<W8>)
{
  v2 = (a1 - 19976) | 0x5A11;
  v3 = (*(v1 + 8 * (v2 ^ 0x9418)))();
  return (*(STACK[0x408] + 8 * (v2 - 14899)))(v3);
}

uint64_t sub_10018964C(double a1, __n128 a2, uint64_t a3, uint64_t a4, int a5)
{
  a2.n128_u16[0] = 12079;
  a2.n128_u8[2] = 47;
  a2.n128_u8[3] = 47;
  a2.n128_u8[4] = 47;
  a2.n128_u8[5] = 47;
  a2.n128_u8[6] = 47;
  a2.n128_u8[7] = 47;
  return (*(v5 + 8 * (a5 + 21398)))(xmmword_100F523B0, a2);
}

uint64_t sub_1001896AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v14 = vrev64q_s8(**v13);
  v15 = vextq_s8(v14, v14, 8uLL);
  v16.i64[0] = 0xE2E2E2E2E2E2E2E2;
  v16.i64[1] = 0xE2E2E2E2E2E2E2E2;
  v17 = vandq_s8(vaddq_s8(v15, v15), v16);
  v16.i64[0] = 0x7171717171717171;
  v16.i64[1] = 0x7171717171717171;
  v18 = veorq_s8(v15, v16);
  v16.i64[0] = 0x3B3B3B3B3B3B3B3BLL;
  v16.i64[1] = 0x3B3B3B3B3B3B3B3BLL;
  v19 = vrev64q_s8(veorq_s8(vaddq_s8(vaddq_s8(v18, v16), v17), xmmword_100F52740));
  *(v12 - 112) = vextq_s8(v19, v19, 8uLL);
  return (*(v11 + 8 * (a3 ^ (246 * (a9 != 0)))))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11);
}

uint64_t sub_100189C6C(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = v9 + a1;
  *(v11 + ((v8 - 87541307) & 0x537EEF3 ^ 0x85C7D97769300973)) = 0;
  *(v11 - 0x7A38268896CFB05ELL) = 0;
  *(v11 - 0x7A38268896CFB05CLL) = 0;
  *(((v10 - 550711079) | (((v10 - 550711079) < 0x48B79613) << 32)) + a1 - 1219991059) = -9392;
  v12 = (a3 ^ 0xBFBD27C5) & (2 * (a3 & 0x3FB937D6)) ^ a3 & 0x3FB937D6;
  v13 = ((2 * (a3 ^ 0xB89D0F49)) ^ 0xE48713E) & (a3 ^ 0xB89D0F49) ^ (2 * (a3 ^ 0xB89D0F49)) & 0x724389E;
  v14 = v13 ^ 0x1240881;
  v15 = (v13 ^ 0x6003018) & (4 * v12) ^ v12;
  v16 = ((4 * v14) ^ 0x1C90E27C) & v14 ^ (4 * v14) & 0x724389C;
  v17 = (v16 ^ 0x4002000) & (16 * v15) ^ v15;
  v18 = ((16 * (v16 ^ 0x3241883)) ^ 0x724389F0) & (v16 ^ 0x3241883) ^ (16 * (v16 ^ 0x3241883)) & 0x7243890;
  v19 = v17 ^ 0x724389F ^ (v18 ^ 0x2000800) & (v17 << 8);
  v20 = ((v10 - 333642327) | (((v10 - 333642327) < 0x55A7CAE1) << 32)) + a1;
  v21 = a3 ^ (2 * ((v19 << 16) & 0x7240000 ^ v19 ^ ((v19 << 16) ^ 0x389F0000) & (((v18 ^ 0x524300F) << 8) & 0x7240000 ^ 0x3040000 ^ (((v18 ^ 0x524300F) << 8) ^ 0x24380000) & (v18 ^ 0x524300F))));
  *(v20 - 1437059809) = HIBYTE(v21) ^ 0xB1;
  *(v20 - 1437059808) = BYTE2(v21) ^ 0xF9;
  *(v20 - 1437059807) = BYTE1(v21) ^ 0x46;
  *(v20 - 1437059806) = v21 ^ 0xE8;
  return (*(a8 + 8 * (v8 ^ (58 * ((a2 | (2024298033 - a4)) == 1217053471)))))();
}

uint64_t sub_10018A04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v22 = ((v17 - 2006790302) & 0x779DAAFF) - 42482;
  v23 = ((2 * (a7 - 1497668668)) & 0xFE8BB9DC) + ((a7 - 1497668668) ^ 0xFF45DCEE);
  v24 = (*v19 + v23 + 12198674);
  v25 = *(*(v21 - 1680276466) + (*(v16 + v20) & 0x72D7ACF8));
  v26 = 1864610357 * ((((v25 ^ v24) & 0x7FFFFFFF) * (v22 ^ 0x6F23B6FD)) ^ ((((v25 ^ v24) & 0x7FFFFFFF) * (v22 ^ 0x6F23B6FD)) >> 16));
  LOWORD(v24) = *(a14 + (v26 >> 24)) ^ *v24 ^ *(a15 + (v26 >> 24)) ^ *((v26 >> 24) + a16 + 5) ^ v26 ^ (-83 * (((1864610357 * ((((v25 ^ v24) & 0x7FFFFFFF) * (v22 ^ 0x6F23B6FD)) ^ ((((v25 ^ v24) & 0x7FFFFFFF) * (v22 ^ 0x6F23B6FD)) >> 16))) >> 16) >> 8));
  v27 = (*v19 + v23 + 12198675);
  LOBYTE(v23) = *v27;
  v28 = 1864610357 * ((1864610357 * ((v25 ^ v27) & 0x7FFFFFFF)) ^ ((1864610357 * ((v25 ^ v27) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v28) = *(a14 + (v28 >> 24)) ^ v23 ^ *(a15 + (v28 >> 24)) ^ *((v28 >> 24) + a16 + 5) ^ v28 ^ (-83 * BYTE3(v28));
  return (*(v18 + 8 * ((34100 * (((v28 | (v24 << 8)) - 2 * ((v28 & 0x1F | (v24 << 8) & 0x781F) ^ v28 & 9)) == 0)) ^ v17)))();
}

uint64_t sub_10018A1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0x4A4]) = v6;
  LODWORD(STACK[0x4A0]) = v7;
  return (*(v8 + 8 * (((v7 >= LODWORD(STACK[0x264])) * (a6 - 3744 + a6 - 19930 - 22435)) ^ a6)))();
}

uint64_t sub_10018A388(uint64_t a1)
{
  v7 = *v6;
  v8 = ((2 * (v1 - 1497668674)) & 0xFBDFFE76) + ((v1 - 1497668674) ^ 0x7DEFFF3B);
  v9 = *(v4 + 8 * (v5 - 2533));
  v10 = *(v4 + 8 * (v5 - 3718));
  v11 = (*v6 + v8 - 2112880443);
  v12 = 1864610357 * ((*(*(v10 - 1680276466) + (*(v9 - 231415367) & (v5 + 1926730484))) ^ v11) & 0x7FFFFFFF);
  v13 = 1864610357 * (v12 ^ HIWORD(v12));
  v14 = *(v4 + 8 * (v5 ^ 0xAE1)) - 908123987;
  v15 = *(v4 + 8 * (v5 - 5639)) - 179860347;
  v16 = *(a1 + 24) - v3;
  v17 = *(v4 + 8 * (v5 ^ 0x1FCC)) - 1260529494;
  *v11 = *(v14 + (v13 >> 24)) ^ HIBYTE(v16) ^ *(v15 + (v13 >> 24)) ^ *((v13 >> 24) + v17 + 1) ^ v13 ^ (107 * BYTE3(v13)) ^ 0x1A;
  v18 = (v7 + v8 - 2112880442);
  v19 = 1864610357 * ((*(*(v10 - 1680276466) + (*(v9 - 231415367) & 0x72D7ACF8)) ^ v18) & 0x7FFFFFFF);
  v20 = 1864610357 * (v19 ^ HIWORD(v19));
  *v18 = *(v14 + (v20 >> 24)) ^ BYTE2(v16) ^ *(v15 + (v20 >> 24)) ^ *((v20 >> 24) + v17 + 1) ^ v20 ^ (107 * BYTE3(v20)) ^ 0xD7;
  v21 = (v7 + v8 - 2112880441);
  LODWORD(v20) = 1864610357 * ((*(*(v10 - 1680276466) + (*(v9 - 231415367) & 0x72D7ACF8)) ^ v21) & 0x7FFFFFFF);
  v22 = 1864610357 * (v20 ^ WORD1(v20));
  *v21 = *(v14 + (v22 >> 24)) ^ BYTE1(v16) ^ *(v15 + (v22 >> 24)) ^ *((v22 >> 24) + v17 + 1) ^ v22 ^ (107 * BYTE3(v22)) ^ 0x32;
  v23 = (v7 + v8 - 2112880440);
  v24 = 1864610357 * ((*(*(v10 - 1680276466) + (*(v9 - 231415367) & 0x72D7ACF8)) ^ v23) & 0x7FFFFFFF);
  v25 = 1864610357 * (v24 ^ HIWORD(v24));
  *v23 = v16 ^ *(v14 + (v25 >> 24)) ^ *(v15 + (v25 >> 24)) ^ *((v25 >> 24) + v17 + 1) ^ v25 ^ (107 * BYTE3(v25)) ^ 0x37;
  return (*(v2 + 8 * v5))();
}

uint64_t sub_10018A6EC()
{
  *(v2 - 224) = (v0 - 2045695669) ^ (155453101 * (((~(v2 - 224) & 0xD2B6BAA6) + v2 - 224 - LODWORD(STACK[0x440])) ^ 0x3490A169));
  (*(v3 + 8 * (v0 ^ 0xE9D50DCC)))(v2 - 224);
  v4 = ((((v0 - 1790691253) & 0x80E616F7 ^ *(v2 - 216) ^ 0xA27F53D1 ^ 0xFF05E2A78E40D450) + 0xFA1D5871BF3DFCLL) ^ ((*(v2 - 216) ^ 0xA4A688FE0F00B1D4) + 0x5B59770152801DFBLL) ^ ((*(v2 - 216) ^ 0x5BA36A596895B4C1) - 0x5BA36A59CAEAE710)) + 0x1CA0C77A107F4013;
  v5 = *(STACK[0x450] + 8);
  v6 = *(STACK[0x450] + 4);
  *(v2 - 184) = (v0 + 371913398) ^ v1;
  *(v2 - 192) = v4 ^ v1 ^ ((v4 ^ 0x2759F65B9B9440A9) - 0x3BF93122BD3D39ABLL) ^ ((v4 ^ 0x55B67F18E2E91E96) - 0x4916B861C4406794) ^ ((v4 ^ 0x9374E1E42003B8E7) + 0x702BD962F9553E1BLL) ^ ((v4 ^ 0xFD3BAFDE7FD79FDALL) + 0x1E649758A6811928) ^ 0x239E699FB801E74BLL;
  *(v2 - 200) = v1 + (v6 ^ 0x3FF7CFFD) + ((2 * v6) & 0x7FEF9FFA) - 3246648;
  LOBYTE(STACK[0x837]) = 0;
  LODWORD(STACK[0x674]) = 0;
  *(v2 - 224) = v5;
  *(v2 - 216) = &STACK[0x674];
  *(v2 - 208) = &STACK[0x837];
  v7 = (*(STACK[0x408] + 8 * (v0 + 371918039)))(v2 - 224);
  return (*(STACK[0x408] + 8 * (v0 ^ 0xE9D5B8FF ^ (27 * (((*(v2 - 196) - v0) | (v0 - *(v2 - 196))) >= 0)))))(v7);
}

uint64_t sub_10018AA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, char a19, unsigned int a20, int a21)
{
  v25 = *(v22 + 12);
  a19 = (((2 * (v24 ^ 0xA)) & 0xBC) + (v24 ^ 0xD4) + ((v23 - 103) & 0xEF ^ 0xD8)) ^ (35 * ((((2 * &a18) | 0x82) - &a18 + 63) ^ 0x84));
  a20 = v23 - 139493411 * ((((2 * &a18) | 0x583F5382) - &a18 - 740272577) ^ 0x20324884) - 1490753313;
  a18 = (v25 ^ 0x4E) - 35 * ((((2 * &a18) | 0x82) - &a18 + 63) ^ 0x84) + ((2 * v25) & 0x9C);
  v26 = (*(v21 + 8 * (v23 + 25156)))(&a18);
  return (*(v21 + 8 * ((43722 * (a21 == -371865839)) ^ v23)))(v26);
}

uint64_t sub_10018AB98@<X0>(int a1@<W1>, uint64_t a2@<X4>, uint64_t a3@<X5>, int a4@<W6>, uint64_t a5@<X8>, int8x16_t a6@<Q0>, int8x16_t a7@<Q1>, int8x16_t a8@<Q2>, __n128 a9@<Q4>, int8x16_t a10@<Q7>)
{
  v20 = vrev64q_s8(*(v13 + a2));
  v21 = vextq_s8(v20, v20, 8uLL);
  v22 = (a2 - 1) & 0xF;
  v24.i64[0] = vqtbl4q_s8(*(&a9 - 1), a10).u64[0];
  v24.i64[1] = v18;
  v25 = vrev64q_s8(veorq_s8(veorq_s8(*(v15 + v22 - 15), *(v14 + v22 - 15)), *(v22 + v16 - 11)));
  v26 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v25, v25, 8uLL), vaddq_s8(vaddq_s8(veorq_s8(v21, a7), a8), vandq_s8(vaddq_s8(v21, v21), a6))), vmulq_s8(v24, v19)));
  *(a5 + a2) = vextq_s8(v26, v26, 8uLL);
  return (*(v17 + 8 * (((a3 == 0) * a4) ^ a1)))();
}

uint64_t sub_10018AC34(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v12 = (v8 + (v10 - 128941941));
  v13 = *(*(*(v11 + 8 * (a1 - 31516)) - 1680276466) + (*(*(v11 + 8 * (a1 ^ 0x9685)) - 231415367) & 0x72D7ACF8));
  v14 = ((((v13 ^ v12) & 0x7FFFFFFF) * v7) ^ ((((v13 ^ v12) & 0x7FFFFFFF) * v7) >> 16)) * v7;
  v15 = *(v11 + 8 * (a1 ^ 0x967F)) - 908123987;
  v16 = *(v11 + 8 * (a1 - 33437)) - 179860347;
  v17 = *(v11 + 8 * (a1 - 32978)) - 1260529494;
  LODWORD(v14) = *(v15 + (v14 >> 24)) ^ *v12 ^ *(v16 + (v14 >> 24)) ^ *((v14 >> 24) + v17 + 1) ^ v14 ^ ((v14 >> 24) * a2);
  v18 = (v8 + (v10 - 128941940));
  v19 = *v18;
  v20 = ((((v13 ^ v18) & 0x7FFFFFFF) * v7) ^ ((((v13 ^ v18) & 0x7FFFFFFF) * v7) >> 16)) * v7;
  LODWORD(v14) = (v14 << 24) | ((v20 ^ v19 ^ *(v15 + (v20 >> 24)) ^ *(v16 + (v20 >> 24)) ^ (BYTE3(v20) * a2) ^ *((v20 >> 24) + v17 + 1)) << 16);
  v21 = (v8 + (v10 - 128941939));
  v22 = *v21;
  v23 = ((((v13 ^ v21) & 0x7FFFFFFF) * v7) ^ ((((v13 ^ v21) & 0x7FFFFFFF) * v7) >> 16)) * v7;
  LODWORD(v14) = v14 & 0xFFFF00FF | (((BYTE3(v23) * a2) ^ v23 ^ v22 ^ *(v15 + (v23 >> 24)) ^ *(v16 + (v23 >> 24)) ^ *((v23 >> 24) + v17 + 1)) << 8);
  v24 = (v8 + (v10 - 128941938));
  v25 = ((((v13 ^ v24) & 0x7FFFFFFF) * v7) ^ ((((v13 ^ v24) & 0x7FFFFFFF) * v7) >> 16)) * v7;
  LODWORD(v17) = *(v15 + (v25 >> 24)) ^ *v24 ^ *(v16 + (v25 >> 24)) ^ *((v25 >> 24) + v17 + 1);
  return (*(v9 + 8 * a7))((v17 ^ v25 ^ ((v25 >> 24) * a2)) & a6 | ((v17 ^ v25) ^ ~(BYTE3(v25) * a2) | 0xFFFFFF00) & ((v14 - ((2 * v14) & 0x8DF8BE00) - 956539066) ^ 0x5488EE6E));
}

uint64_t sub_10018AEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  *(v8 + a1 - 0x687642D8FCC8CAALL) = 0;
  *(((((v7 - 16081) ^ 0xD204264A) + a7) | ((((v7 - 16081) ^ 0xD204264A) + a7 < 0x1E2F25BF) << 32)) + a1 - 506406335) = -9392;
  v10 = ((a7 + 11272993) | (((a7 + 11272993) < 0x4CD6F87E) << 32)) + a1;
  v11 = (v9 ^ 0xFFCBF07E) & (2 * (v9 & 0xBFEBE478)) ^ v9 & 0xBFEBE478;
  v12 = ((2 * (v9 ^ 0xB05E708E)) ^ 0x9F6B29EC) & (v9 ^ 0xB05E708E) ^ (2 * (v9 ^ 0xB05E708E)) & 0x4FB594F6;
  v13 = v12 ^ 0x40949412;
  v14 = (v12 ^ 0xF2100E0) & (4 * v11) ^ v11;
  v15 = ((4 * v13) ^ 0x3ED653D8) & v13 ^ (4 * v13) & 0x4FB594F0;
  v16 = (v15 ^ 0xE9410C0) & (16 * v14) ^ v14;
  v17 = ((16 * (v15 ^ 0x41218426)) ^ 0xFB594F60) & (v15 ^ 0x41218426) ^ (16 * (v15 ^ 0x41218426)) & 0x4FB594E0;
  v18 = v16 ^ 0x4FB594F6 ^ (v17 ^ 0x4B110400) & (v16 << 8);
  v19 = v9 ^ (2 * ((v18 << 16) & 0x4FB50000 ^ v18 ^ ((v18 << 16) ^ 0x14F60000) & (((v17 ^ 0x4A49096) << 8) & 0x4FB50000 ^ 0x4A210000 ^ (((v17 ^ 0x4A49096) << 8) ^ 0x35940000) & (v17 ^ 0x4A49096))));
  *(v10 - 1289156734) = HIBYTE(v19) ^ 0x69;
  *(v10 - 1289156733) = BYTE2(v19) ^ 0xE8;
  *(v10 - 1289156732) = BYTE1(v19) ^ 0xCD;
  *(v10 - 1289156731) = v19 ^ 0x94;
  return (*(STACK[0xF18] + 8 * ((496 * ((LODWORD(STACK[0x2D00]) | ((LODWORD(STACK[0x2D00]) < 0x141B88uLL) << 32)) != 1317768)) ^ v7)))();
}

uint64_t sub_10018B168(unsigned int a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6)
{
  if (((a6 + 37842) ^ 0xE9D5030D) + (((a4 ^ 0x94AC6F86) + 1800638586) ^ ((a4 ^ 0xFD31BFB5) + 47071307) ^ ((a4 ^ 0x80481722) + 2142759134)) >= 4)
  {
    return (*(v6 + 8 * a6))(a1);
  }

  else
  {
    return (*(v6 + 8 * a6))(a4);
  }
}

uint64_t sub_10018B2BC@<X0>(__int16 a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unint64_t a25, int a26, __int16 a27)
{
  *(v30 - 128) = v27 - a25 - 1781236889;
  v31 = (v30 - 168);
  v31[2] = (a27 + v27 + 1 - a1) ^ a25;
  *(v30 - 140) = ((v27 + 1) | 0x8A911846) - a25;
  *(v30 - 136) = a25;
  *v31 = v28 ^ a25;
  *(v30 - 160) = (v27 - 1970202439) ^ a25;
  *(v30 - 144) = a25 ^ (v27 + 1) ^ 0x8A910ADF;
  v32 = (*(v29 + 8 * (v27 ^ 0xCA81)))(v30 - 168);
  return (*(v29 + 8 * *(v30 - 132)))(v32);
}

uint64_t sub_10018B36C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  STACK[0x2688] = a8;
  STACK[0x1488] = &STACK[0x3470];
  STACK[0x5D28] = &STACK[0x2B44];
  LODWORD(STACK[0x4704]) = 2136255101;
  return (*(STACK[0xF18] + 8 * v8))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_10018B3BC@<X0>(uint64_t a1@<X8>)
{
  v8 = v6 - 1;
  *(a1 + v8) ^= *(v2 + (v8 & 0xF)) ^ *((v8 & 0xF) + v1 + 3) ^ ((v8 & 0xF) * v5) ^ *(v3 + (v8 & 0xF));
  return (*(v7 + 8 * (v4 | (8 * (v8 == 0)))))();
}

uint64_t sub_10018B45C@<X0>(int a1@<W0>, uint64_t a2@<X2>, unsigned int a3@<W7>, unsigned int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v48 = a4 < v32;
  if (v37 - v34 == -1881509043)
  {
    v49 = 0;
  }

  else
  {
    v49 = v37 - 1486125439;
  }

  v50 = *(a2 + 4 * v49) + 1901388722 + *(a2 + 4 * ((3 * v37 - 163409024) % a3));
  v51 = ((2 * (v50 ^ 0x21FE1654)) ^ 0xC081E7B0) & (v50 ^ 0x21FE1654) ^ (2 * (v50 ^ 0x21FE1654)) & v39;
  v52 = v51 ^ 0x20401048;
  v53 = (v50 ^ 0x21BED54C) & (2 * (v50 & 0x41BEE58C)) ^ v50 & 0x41BEE58C;
  v54 = (v51 ^ 0xA210) & (4 * v53) ^ v53;
  v55 = ((4 * v52) ^ 0x8103CF60) & v52 ^ (4 * v52) & v39;
  v56 = (v55 ^ 0xC340) & (16 * v54) ^ v54;
  v57 = ((16 * (v55 ^ 0x60403098)) ^ 0x40F3D80) & (v55 ^ 0x60403098) ^ (16 * (v55 ^ 0x60403098)) & 0x6040F3C0;
  v58 = v56 ^ v39 ^ (v57 ^ 0x3100) & (v56 << 8);
  v59 = *(a2 + 4 * (v37 - 1486125440));
  v60 = v59 ^ ((v59 ^ 0x35067365) - 446051832) ^ ((v59 ^ 0x90C4FB57) + 1084965430) ^ ((v59 ^ 0x65FD3110) - 1248688013) ^ ((v59 ^ v40) + v41) ^ v50 ^ (2 * ((v58 << 16) & v36 ^ v58 ^ ((v58 << 16) ^ 0x73D80000) & (((v57 ^ 0x6040C258) << 8) & v36 ^ (((v57 ^ 0x6040C258) << 8) ^ 0x40F30000) & (v57 ^ 0x6040C258) ^ 0x20000000)));
  *(a2 + 4 * (v37 - 1486125440)) = (((v60 ^ v42) + v43) ^ ((v60 ^ v44) + v45) ^ ((v60 ^ v46) + v47)) + v38;
  if (v48 == v37 + v35 < v32)
  {
    v48 = v37 + v35 < a4;
  }

  return (*(a32 + 8 * ((v48 * a1) ^ v33)))();
}

uint64_t sub_10018B790()
{
  v1 = *(STACK[0x2F0] + 8 * ((46635 * (v0 == (((LODWORD(STACK[0x2EC]) - 22707) | 0x4036) ^ (LODWORD(STACK[0x2EC]) - 10454223) & 0x9EFF1A ^ 0xE9D5B226))) ^ (LODWORD(STACK[0x2EC]) - 28999)));
  STACK[0x278] = STACK[0x260];
  return v1();
}

uint64_t sub_10018B828()
{
  v10 = v0 < v7;
  *(v9 + v6) = *(v1 + v6) ^ *(v4 + (v6 & 0xF)) ^ *((v6 & 0xF) + v3 + 4) ^ (39 * (v6 & 0xF)) ^ *(v2 + (v6 & 0xF)) ^ 0x5F;
  if (v10 == ((v5 + 1973996984) & 0x8A573DEF ^ 0x392B) + v6 > 0x2C6D932A)
  {
    v10 = v6 - 745378602 < v0;
  }

  return (*(v8 + 8 * ((58680 * v10) ^ v5)))();
}

uint64_t sub_10018B914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  *(v47 - 232) = a7;
  *(v47 - 224) = v43;
  v48 = (v45 + 29995 + WORD2(a25));
  v49 = v48 < (v44 - 3070);
  if (v44 > 0xBFDu != v48 < ((*(v47 - 200) - 26062) ^ 0x74F1u))
  {
    v49 = v44 > 0xBFDu;
  }

  return (*(v46 + 8 * ((101 * v49) ^ a25)))(a1, a2, HIDWORD(a25), a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43);
}

uint64_t sub_10018BA20()
{
  v6 = 23958;
  atomic_compare_exchange_strong(v5, &v6, v2);
  return (*(v4 + 8 * (((v6 != v3) * v1) | v0)))();
}

uint64_t sub_10018BAC4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, int a9@<W8>)
{
  v15 = v10 - 1;
  *(a3 + 104) = v15;
  v16 = ((v9 ^ v11) + a2) ^ v9 ^ ((v9 ^ a4) + a5) ^ ((v9 ^ a8) + v12) ^ (((a9 + a6) ^ v9) + a7);
  *(a1 + v15) = ((((v16 ^ 0x65) - 108) ^ ((v16 ^ 0x87) + 114) ^ ((v16 ^ 0xF4) + 3)) - 121) * (v9 + 101) + v9 * v14 - 8;
  return (*(v13 + 8 * ((14 * (*(a3 + 104) != 0)) | a9)))();
}

uint64_t sub_10018BCA0()
{
  v4 = 2 * (v0 & 1) + (v0 ^ 1);
  v6 = *(v2 + 8) == v2 || v4 > 0x13;
  return (*(v3 + 8 * ((56 * v6) ^ v1)))();
}

uint64_t sub_10018BE1C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62, int a63)
{
  LODWORD(STACK[0x278]) = v71;
  LODWORD(STACK[0x3A8]) = a6;
  LODWORD(STACK[0x3AC]) = v70;
  LODWORD(STACK[0x2F0]) = a7;
  LODWORD(STACK[0x31C]) = a68;
  LOWORD(STACK[0x236]) = a67;
  LOWORD(STACK[0x292]) = v72;
  LODWORD(STACK[0x27C]) = a61;
  LOWORD(STACK[0x38E]) = a64;
  return (*(v73 + 8 * ((((a70 ^ 0xED38) - 10764) * ((a4 ^ a41) == 990631408)) ^ (a70 - 20030))))();
}

uint64_t sub_10018BF00@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  v37 = v32 < v33;
  v38 = *(&a32 + (v34 - 211791267));
  v39 = ((2 * v38) ^ 0x44) & (v38 ^ 0x62);
  v40 = (v34 ^ 0xE35B0319) & (2 * (v34 & 0xF360525D)) ^ v34 & 0xF360525D;
  v41 = (v38 ^ (v35 + 76)) & (2 * (v38 & 0x63)) ^ v38 & 0x63;
  v42 = ((2 * (v34 ^ 0xA75B8339)) ^ 0xA877A2C8) & (v34 ^ 0xA75B8339) ^ (2 * (v34 ^ 0xA75B8339)) & 0x543BD164;
  v43 = (4 * v39) & (v39 ^ 0x80);
  v44 = v39 & (4 * v41) ^ v41;
  v45 = ((4 * (v42 ^ 0x54085124)) ^ 0x50EF4590) & (v42 ^ 0x54085124) ^ (4 * (v42 ^ 0x54085124)) & 0x543BD160;
  v46 = (v45 ^ 0x502B4100) & (16 * ((v42 ^ 0x38040) & (4 * v40) ^ v40)) ^ (v42 ^ 0x38040) & (4 * v40) ^ v40;
  v47 = ((16 * (v45 ^ 0x4109064)) ^ 0x43BD1640) & (v45 ^ 0x4109064) ^ (16 * (v45 ^ 0x4109064)) & 0x543BD140;
  v48 = v46 ^ 0x543BD164 ^ (v47 ^ 0x40391000) & (v46 << 8);
  v49 = v38 ^ (2 * (v43 & (16 * v44) ^ v44)) ^ 0x3C;
  v50 = ((((v38 ^ 0x8F688920) + 1594306627) ^ v38 ^ ((v38 ^ 0x94CDC49F) + 1151499774) ^ ((v38 ^ 0xD5D8) + 27836) ^ ((v38 ^ 0xDEFA) + 26522)) >> 8) ^ 0x19;
  v51 = (a1 + ((2 * v34) ^ (4 * ((v48 << 16) & 0x143B0000 ^ v48 ^ ((v48 << 16) ^ 0x11640000) & (((v47 ^ 0x1402C124) << 8) & 0x143B0000 ^ 0x42A0000 ^ (((v47 ^ 0x1402C124) << 8) ^ 0x3BD10000) & (v47 ^ 0x1402C124)))) ^ 0xF6AFE12A));
  *v51 = v49;
  if (v37 == v34 + 243299429 < v33)
  {
    v37 = v34 + 243299429 < v32;
  }

  v51[1] = v50;
  return (*(v36 + 8 * ((15 * !v37) ^ v35)))();
}

uint64_t sub_10018C2A4(uint64_t a1, uint64_t a2, int8x16_t a3, int8x8_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  v17.val[0].i64[0] = a9 & (v13 + a2 - 1);
  v17.val[0].i64[1] = (v13 + a2 + 14) & 0xF;
  v17.val[1].i64[0] = (v13 + a2 + 13) & 0xF;
  v17.val[1].i64[1] = (v13 + a2 + 12) & 0xF;
  v17.val[2].i64[0] = (v13 + a2 + 11) & 0xF;
  v17.val[2].i64[1] = (v13 + a2 + 10) & 0xF;
  v17.val[3].i64[0] = (v13 + a2 + 9) & 0xF;
  v17.val[3].i64[1] = (v13 + a2) & 0xF ^ 8;
  *(a7 + v13) = veor_s8(veor_s8(veor_s8(*(v11 + v17.val[0].i64[0] - 7), *(v12 + v17.val[0].i64[0] - 7)), veor_s8(*(a8 + v13), *(v17.val[0].i64[0] + v10))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v17, a3), a4)));
  return (*(v15 + 8 * (((v14 == a2) * a10) ^ a6)))(a1, a2 - 8);
}

uint64_t sub_10018C3D4(int8x16_t a1)
{
  v7 = veorq_s8(*v4, a1);
  v3[-1] = veorq_s8(v4[-1], a1);
  *v3 = v7;
  return (*(v6 + 8 * (((v2 == 0) * v5) ^ v1)))();
}

uint64_t sub_10018C500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33, uint64_t a34, int a35, uint64_t a36, uint64_t a37)
{
  HIDWORD(v71) = a33;
  v38 = LODWORD(STACK[0x30C]);
  v39 = LODWORD(STACK[0x308]);
  v40 = 2 * (v38 & 0x63);
  v41 = ((2 * (v38 ^ 0xF)) ^ 0xD8) & (v38 ^ 0xF) ^ (2 * (v38 ^ 0xF)) & 0x6C;
  v42 = ((v37 + 26) | 0x10) ^ v41 ^ 0x10;
  v43 = (v41 ^ 8) & (4 * (v40 & (v38 ^ 0x4B) ^ v38 & 0x63)) ^ v40 & (v38 ^ 0x4B) ^ v38 & 0x63;
  v44 = (v38 ^ (2 * (((4 * v42) & 0x60 ^ ((4 * v42) ^ 0xB0) & v42 ^ 0x20) & (16 * v43) ^ v43))) & 0x7F;
  HIDWORD(v70) = ((HIDWORD(a27) ^ 0x587EAF9C) - 2071219365) ^ ((HIDWORD(a27) ^ 0x1E61ABBC) - 1030441093) ^ ((HIDWORD(a27) ^ 0x52501ED7) - 1901788654);
  v45 = STACK[0x2F8];
  LODWORD(a26) = STACK[0x2F4];
  v46 = (LODWORD(STACK[0x2F8]) ^ 0x6E0DA0Fu) - 695245970;
  v47 = ((2 * (v38 ^ 0xBE)) ^ 0xBA) & (v38 ^ 0xBE) ^ (2 * (v38 ^ 0xBE)) & 0xDC;
  v48 = v40 & (v38 ^ 0x7A) ^ v38 & 0x63 ^ 0xDD ^ (v47 ^ 0x98) & (4 * (v40 & (v38 ^ 0x7A) ^ v38 & 0x63));
  v49 = (v38 ^ (2 * ((16 * v48) & 0x10 ^ v48 ^ ((16 * v48) ^ 0x10) & (((4 * (v47 ^ 0x45)) ^ 0x70) & (v47 ^ 0x45) ^ (4 * (v47 ^ 0x45)) & 0xD0)))) & 0x7F;
  v50 = 14 * (((v44 ^ 0x547FC642) + 710536238) ^ ((v44 ^ 0x4773CB74) + 961929500) ^ ((v44 ^ 0x130C0D55) + 1831479099));
  v51 = 7 * (((v49 ^ 0xE8D9CF42) + 1075197638) ^ ((v49 ^ 0x741118D5) - 589373101) ^ ((v49 ^ 0x9CC8D7EE) + 872885866));
  HIDWORD(a10) = 2 * (v39 & 0xD06FB963);
  LODWORD(v62) = v39 & 0xD06FB963;
  v52 = ((2 * (v39 ^ 0x1D3C396B)) ^ 0x9AA70010) & (v39 ^ 0x1D3C396B) ^ (2 * (v39 ^ 0x1D3C396B)) & 0xCD538008;
  v53 = v52 ^ 0x45508008;
  v54 = v52 & (4 * (HIDWORD(a10) & (v39 ^ 0x9D6F396B) ^ v39 & 0xD06FB963)) ^ HIDWORD(a10) & (v39 ^ 0x9D6F396B) ^ v39 & 0xD06FB963;
  v55 = ((2 * (v38 & 0x63 ^ 0x18)) ^ 0x30) & (v38 ^ 0x7B) ^ v38 & 0x63 ^ 0x18;
  LOBYTE(v44) = (2 * (v38 ^ 0x7B)) & 0x18 ^ 8 ^ ((2 * (v38 ^ 0x7B)) ^ 0x30) & (v38 ^ 0x7B);
  v56 = (4 * v55) & 0x18 ^ v55 ^ ((4 * v55) ^ 0x60) & v44;
  v57 = (v38 ^ (2 * (((4 * v44) & 0x18 ^ ((4 * v44) ^ 0x60) & v44 ^ 8) & (16 * v56) ^ v56))) & 0x7F ^ 0x53;
  v58 = (LODWORD(STACK[0x2F8]) ^ 0x769785BCu) - 1493680929;
  v59 = (LODWORD(STACK[0x2F8]) ^ 0x5A93DCF6u) - 1963170411;
  LODWORD(v63) = ((-99 - v45) ^ v45 ^ ((v45 ^ 0xB1) - 44) ^ ((v45 ^ 0x96) - 11) ^ ((v45 ^ 0x45) + 40)) ^ 0x9D;
  v60 = LODWORD(STACK[0x310]) - LODWORD(STACK[0x314]) + LODWORD(STACK[0x31C]);
  LODWORD(v68) = v60 - 1423562081;
  LODWORD(v66) = v60 + 311480354;
  HIDWORD(v64) = v60 + 1466463949;
  LODWORD(v70) = v46 ^ v45 ^ ((v45 ^ 0x8B62E16E) + 1527601165) ^ ((v45 ^ 0x5FED8257) - 1887290570) ^ ((v45 ^ 0xFDFFFFAB) + 764430026);
  HIDWORD(v73) = STACK[0x304];
  LODWORD(v72) = LODWORD(STACK[0x3E4]) - LODWORD(STACK[0x300]);
  LODWORD(v69) = v60;
  HIDWORD(v69) = v50 + v51;
  HIDWORD(v67) = ((v39 ^ 0x9D3B7EF9) + 1297401756) ^ v39 ^ ((v39 ^ 0xEC86110A) + 1021945961) ^ ((v39 ^ 0xF152D49D) + 557673984) ^ ((v39 ^ 0xAF7FFDF3) + 2131772562);
  HIDWORD(v65) = v59 ^ v45 ^ v58 ^ ((v45 ^ 0xB86BA228) + 1745099595) ^ ((LODWORD(STACK[0x2F8]) ^ 0xBBFFBDFF) + 1804600478);
  LODWORD(v65) = ((v39 ^ 0xC65E4632) + 372375377) ^ v39 ^ ((v39 ^ 0x629C4BE3) - 1292635518) ^ ((v39 ^ 0x74ADB59B) - 1530786566) ^ ((v39 ^ 0xFFFFFED7) + 797984694);
  LODWORD(v67) = v38 - 477481879;
  LODWORD(v64) = ((v39 ^ 0x88EF3DD0) + 1484817587) ^ v39 ^ ((v39 ^ 0x78CC976D) - 1465700848) ^ ((v39 ^ 0xA24E13DF) + 1914809022) ^ ((v39 ^ 0x7DFDFFFF) - 1382922594);
  LODWORD(v71) = 7 * v57;
  HIDWORD(v62) = STACK[0x308];
  HIDWORD(v68) = (2 * (v53 & (16 * v54) & ((4 * v53) ^ 0x354E0020) ^ v54)) ^ v39;
  HIDWORD(v72) = a35;
  LODWORD(v73) = STACK[0x2F8];
  LODWORD(a20) = STACK[0x30C];
  HIDWORD(v66) = v38 - 797984413;
  HIDWORD(v63) = (((v45 - 98) ^ (-100 - v45) ^ (((v45 - 98) ^ 0xE) - 52) ^ (((v45 - 98) ^ 0x45) - 127) ^ (((v45 - 98) ^ 0x8E) + 76)) ^ 0x3A) + LODWORD(STACK[0x2F8]);
  return (*(a37 + 8 * v37))(v39, v38, v58, v59, 1737687040, 4294961922, 2776171339, v46, a9, a10, v62, v63, v64, v65, v66, v67, v68, v69, v70, a20, a21, a22, v71, v72, v73, a26, a27);
}

uint64_t sub_10018CF44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  if (v4 <= 0x40)
  {
    v4 = v5;
  }

  return (*(v6 + 8 * ((59 * (((v4 - 1 < a3 + 1948820966) ^ (((v3 - 25) & 0x4F) + 24)) & 1)) ^ v3)))(a1, a2, 0);
}

uint64_t sub_10018D00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48)
{
  v52 = (v49 ^ v50 ^ (a6 - 1632069967) ^ 0xFD0362EF) & (2 * ((a6 - 1632069967) & 0xF8139270)) ^ (a6 - 1632069967) & 0xF8139270;
  v53 = ((2 * ((a6 - 1632069967) ^ 0x2D27068E)) ^ 0xAA6929FC) & ((a6 - 1632069967) ^ 0x2D27068E) ^ (2 * ((a6 - 1632069967) ^ 0x2D27068E)) & 0xD53494FE;
  v54 = v53 ^ 0x55149402;
  v55 = (v53 ^ 0x800000FF) & (4 * v52) ^ v52;
  v56 = ((4 * v54) ^ 0x54D253F8) & v54 ^ (4 * v54) & 0xD53494F8;
  v57 = (v56 ^ 0x541010E0) & (16 * v55) ^ v55;
  v58 = ((16 * (v56 ^ 0x81248406)) ^ 0x53494FE0) & (v56 ^ 0x81248406) ^ (16 * (v56 ^ 0x81248406)) & 0xD53494E0;
  v59 = v57 ^ 0xD53494FE ^ (v58 ^ 0x51000400) & (v57 << 8);
  v60 = 0xD79435E50D79436 * ((((a6 - 1632069967) ^ (2 * ((v59 << 16) & 0x55340000 ^ v59 ^ ((v59 << 16) ^ 0x14FE0000) & (((v58 ^ 0x8434901E) << 8) & 0x55340000 ^ 0x41200000 ^ (((v58 ^ 0x8434901E) << 8) ^ 0x34940000) & (v58 ^ 0x8434901E)))) ^ 0x18F7B19C4D1F762BLL) - 0x18F7B19C5B6886B3) ^ (((a6 - 1632069967) ^ (2 * ((v59 << 16) & 0x55340000 ^ v59 ^ ((v59 << 16) ^ 0x14FE0000) & (((v58 ^ 0x8434901E) << 8) & 0x55340000 ^ 0x41200000 ^ (((v58 ^ 0x8434901E) << 8) ^ 0x34940000) & (v58 ^ 0x8434901E)))) ^ 0x8ADC41BD8D8D14ALL) - 0x8ADC41BCEAF21D2) ^ (((a6 - 1632069967) ^ (2 * ((v59 << 16) & 0x55340000 ^ v59 ^ ((v59 << 16) ^ 0x14FE0000) & (((v58 ^ 0x8434901E) << 8) & 0x55340000 ^ 0x41200000 ^ (((v58 ^ 0x8434901E) << 8) ^ 0x34940000) & (v58 ^ 0x8434901E)))) ^ 0x105A7587EFD51CEDLL) - 0x105A7587F9A2EC75)) - 0x2B3DF7B9C476A51;
  v61 = v60 ^ ((v60 ^ 0xAF2F1B1DCB989FC9) + 0x5A1587009D404F42) ^ ((v60 ^ 0x45D45759FF2E0CA4) - 0x4F1134BB560923D3) ^ ((v60 ^ 0x95C1DA4D6EFC93A1) + 0x60FB46503824432ALL) ^ ((v60 ^ 0x75FFF5EBF36D2FBBLL) - 0x7F3A96095A4A00CCLL);
  v62 = ((v61 ^ 0x254E7BA0768F8103) + 0x7636B4421B63351ALL) ^ ((v61 ^ 0xB9614F04C32EADA2) - 0x15E67F19513DE647);
  v63 = __CFADD__(19 * (v62 ^ ((v61 ^ 0x96EA57461C8603D6) - 0x3A6D675B8E954833)), 0x56EC3BF164E376D6) + (((v62 ^ ((v61 ^ 0x96EA57461C8603D6) - 0x3A6D675B8E954833)) * 0x13uLL) >> 64) + 19 * ((__CFADD__(v61 ^ 0x254E7BA0768F8103, 0x7636B4421B63351ALL) - 1) ^ (__CFADD__(v61 ^ 0xB9614F04C32EADA2, 0xEA1980E6AEC219B9) - 1) ^ (__CFADD__(v61 ^ 0x96EA57461C8603D6, 0xC59298A4716AB7CDLL) - 1)) + 1030954103;
  v64 = (a48 - 736736017) % 0x11u;
  v65 = v48;
  v66 = ((v48 ^ 0x42F352503B5DF920) - 0x42F352503B5DF920) ^ ((v48 ^ 0x2491206AF5C2DFF3) - 0x2491206AF5C2DFF3) ^ ((v48 ^ 0x6662723ACAA87D89) - 0x6662723ACAA87D89);
  v67 = 0x54F077C718E7DLL * (((v48 ^ 0xBE0836CF549C0D8ALL) + 0x41F7C930AB63F276) ^ ((v48 ^ 0xC529D7BB6BBCCBF2) + 0x3AD628449443340ELL) ^ ((v48 ^ 0x7B21E1743B179D22) - 0x7B21E1743B179D22)) + 0x2ABE073132E59022;
  v68 = v67 ^ ((v67 ^ 0x330077F479343B7ELL) - 0x1E3B6547FD4C324ELL) ^ ((v67 ^ 0xC7C2E8F322D8917ALL) + 0x150605BF595F67B6) ^ ((v67 ^ 0xB20272466C625E8ALL) + 0x60C69F0A17E5A846) ^ ((v67 ^ 0x6BFBFFF2B3F6FDBELL) - 0x46C0ED41378EF48ELL);
  v69 = v48;
  v70 = v64 + 736736022;
  v66 += 1360164531;
  v71 = ((v68 ^ 0xF33A34482BED9BD1) + 0x79FE10B8AE795B7DLL) ^ ((v68 ^ 0x4C338836709B3036) - 0x390853390AF00F64);
  v72 = (3376295182u * v66 + 0x4866CEFC7A7DC22) >> 45;
  v73 = __CFADD__(12345 * (v71 ^ ((v68 ^ 0x9232AECDDF0EA2D7) + 0x18F68A3D5A9A627BLL)), 0xBE005AB82C797BD2) + (((v71 ^ ((v68 ^ 0x9232AECDDF0EA2D7) + 0x18F68A3D5A9A627BLL)) * 0x3039uLL) >> 64) + 12345 * ((__CFADD__(v68 ^ 0xF33A34482BED9BD1, 0x79FE10B8AE795B7DLL) - 1) ^ (__CFADD__(v68 ^ 0x4C338836709B3036, 0xC6F7ACC6F50FF09CLL) - 1) ^ (__CFADD__(v68 ^ 0x9232AECDDF0EA2D7, 0x18F68A3D5A9A627BLL) - 1)) + 739812483;
  if (v66 <= 0x13FE65F7BLL)
  {
    v74 = -739941241;
  }

  else
  {
    v74 = -739416953;
  }

  v75 = (2663 * (v74 + 6505 * v70 + v72 + v73 + 3903 * v63) - 2092301684) % 0x6869;
  v76 = 0x4D386D0B2DFB5 * (((v65 ^ 0x83B3667BF7041BD6) + 0x7C4C998408FBE42ALL) ^ ((v65 ^ 0xBFD02940CF6072AFLL) + 0x402FD6BF309F8D51) ^ ((v65 ^ 0x3C634F3B3C533223) - 0x3C634F3B3C533223)) + 0x891EEB44812217CLL;
  v77 = (v76 ^ 0xB922FA8D1E3AD3B7) & (2 * (v76 & 0x3D8AFCCD9038DB26)) ^ v76 & 0x3D8AFCCD9038DB26;
  v78 = ((2 * (v76 ^ 0xC027439C1E1B75FBLL)) ^ 0xFB5B7EA31C475DBALL) & (v76 ^ 0xC027439C1E1B75FBLL) ^ (2 * (v76 ^ 0xC027439C1E1B75FBLL)) & 0xFDADBF518E23AEDCLL;
  v79 = v78 ^ 0x4A481508220A245;
  v80 = (v78 ^ 0xF809360000030C98) & (4 * v77) ^ v77;
  v81 = ((4 * v79) ^ 0xF6B6FD46388EBB74) & v79 ^ (4 * v79) & 0xFDADBF518E23AEDCLL;
  v82 = (v81 ^ 0xF4A4BD400802AA40) & (16 * v80) ^ v80;
  v83 = ((16 * (v81 ^ 0x909021186210489)) ^ 0xDADBF518E23AEDD0) & (v81 ^ 0x909021186210489) ^ (16 * (v81 ^ 0x909021186210489)) & 0xFDADBF518E23AED0;
  v84 = (v83 ^ 0xD889B5108222AC00) & (v82 << 8) ^ v82;
  v85 = (((v83 ^ 0x25240A410C01020DLL) << 8) ^ 0xADBF518E23AEDD00) & (v83 ^ 0x25240A410C01020DLL) ^ ((v83 ^ 0x25240A410C01020DLL) << 8) & 0xFDADBF518E23AC00;
  v86 = v84 ^ 0xFDADBF518E23AEDDLL ^ (v85 ^ 0xADAD110002220000) & (v84 << 16);
  v87 = v76 ^ (2 * ((v86 << 32) & 0x7DADBF5100000000 ^ v86 ^ ((v86 << 32) ^ 0xE23AEDD00000000) & (((v85 ^ 0x5000AE518C0122DDLL) << 16) & 0x7DADBF5100000000 ^ 0x40AC315000000000 ^ (((v85 ^ 0x5000AE518C0122DDLL) << 16) ^ 0x3F518E2300000000) & (v85 ^ 0x5000AE518C0122DDLL))));
  v88 = ((v87 ^ 0xD931E336A8026281) + 0x2B2F0BA952D0202BLL) ^ ((v87 ^ 0xFD1AAA0B2DA725D1) + 0xF044294D775677BLL);
  LODWORD(v85) = (24029 * ((((v69 & 0xDEADBF ^ 0xF41EF0CA) + 504448510) ^ ((v69 & 0xDEADBF ^ 0x8CB5D85C) + 1723493740) ^ ((v69 & 0xDEADBF ^ 0x78BD218C) - 1833790276)) + __CFADD__(13579 * (v88 ^ ((v87 ^ 0xFAB997F109DAC1CCLL) + 0x8A77F6EF3088368)), 0xEBA62D7ECE8F998) + (((v88 ^ ((v87 ^ 0xFAB997F109DAC1CCLL) + 0x8A77F6EF3088368)) * 0x350BuLL) >> 64) + 13579 * ((__CFADD__(v87 ^ 0xD931E336A8026281, 0x2B2F0BA952D0202BLL) - 1) ^ (__CFADD__(v87 ^ 0xFD1AAA0B2DA725D1, 0xF044294D775677BLL) - 1) ^ (__CFADD__(v87 ^ 0xFAB997F109DAC1CCLL, 0x8A77F6EF3088368) - 1)) + 37595962) + 1208702408) % 0x6869;
  LODWORD(v88) = (2 * ((41 - v64) & 0x2B)) & 0xF3 ^ (41 - v64) & 0x2B ^ ((2 * ((41 - v64) & 0x2B)) ^ 0x16) & (v70 ^ 0xD812D038);
  LODWORD(v87) = (2 * (v70 ^ 0xD812D038)) & 0x52 ^ 0x51 ^ ((2 * (v70 ^ 0xD812D038)) ^ 0x10092126) & (v70 ^ 0xD812D038);
  LODWORD(v88) = (4 * v88) & 0xD0 ^ v88 ^ ((4 * v88) ^ 0x164) & v87;
  LODWORD(v87) = (4 * v87) & 0xC048CD0 ^ 0xC048C93 ^ ((4 * v87) ^ 0x3012634C) & v87;
  LODWORD(v88) = (16 * v88) & 0xC049CD0 ^ v88 ^ ((16 * v88) ^ 0xB90) & v87;
  LODWORD(v87) = (16 * v87) & 0xC049CD0 ^ 0xC0410C3 ^ ((16 * v87) ^ 0xC049CD30) & v87;
  LODWORD(v88) = v88 ^ (v88 << 8) & 0xC049C00 ^ ((v88 << 8) ^ 0x82900) & v87 ^ 0xC049CFA;
  v89 = v69 ^ v75 ^ 0x856CA864 ^ ((v85 + 1301 * (((2 * v70) ^ (4 * (((v88 << 16) ^ 0x1CD30000) & ((v87 << 8) & 0xC040000 ^ ((v87 << 8) ^ 0x49C0000) & v87 ^ 0x8000000) ^ v88 ^ ((v88 << 16) & 0xC040000 | 0x1CC3))) ^ 0x57C16669) - v63) + 1276272577) % 0x6869);
  v90 = 0x109C0485BAECLL * (((v89 ^ 0x3CF980C92AD906DCLL) + 0x3067F36D526F924) ^ ((v89 ^ 0xA79E0069EF9C9A8) + 0x75861FF961063658) ^ ((v89 ^ 0x368060CF357B3C4ALL) - 0x768060CF357B3C4ALL)) - 0x68D21E68713ACF5;
  v91 = (v90 ^ 0xDCC03C30CDAAE41BLL) & (2 * (v90 & 0x9C123EB4EDC8F61CLL)) ^ v90 & 0x9C123EB4EDC8F61CLL;
  v92 = (2 * (v90 ^ 0xC4E418710DBA8C33)) & 0x58F626C5E0727A28 ^ 0x4812224420120A22 ^ ((2 * (v90 ^ 0xC4E418710DBA8C33)) ^ 0xB1EC4D8BC0E4F45CLL) & (v90 ^ 0xC4E418710DBA8C33);
  v93 = (4 * v91) & 0x50D026C5E0627820 ^ v91 ^ ((4 * v91) | 0xC) & v92;
  v94 = (4 * v92) & 0x58F626C5E0727A28 ^ 0x182624C060321206 ^ ((4 * v92) ^ 0x63D89B1781C9E8B8) & v92;
  v95 = (16 * v93) & 0x58F626C5E0727A20 ^ v93 ^ ((16 * v93) ^ 0xF0) & v94;
  v96 = (16 * v94) & 0x58F626C5E0727A20 ^ 0x50940281E050580ELL ^ ((16 * v94) ^ 0x8F626C5E0727A2E0) & v94;
  v97 = (v95 << 8) & 0x58F626C5E0727A00 ^ v95 ^ ((v95 << 8) ^ 0x2F00) & v96;
  v98 = (v96 << 8) & 0x58F626C5E0727A00 ^ 0x8D022058000502ELL ^ ((v96 << 8) ^ 0xF626C5E0727A2E00) & v96;
  v99 = v97 ^ (v97 << 16) & 0x58F626C5E0720000 ^ ((v97 << 16) ^ 0x2A2F0000) & v98 ^ 0x58F626C5C0505001;
  v100 = v90 ^ (2 * ((v99 << 32) & 0x58F626C500000000 ^ v99 ^ ((v99 << 32) ^ 0x60727A2E00000000) & ((v98 << 16) & 0x58F626C500000000 ^ 0x5832068500000000 ^ ((v98 << 16) ^ 0x26C5E07200000000) & v98)));
  v101 = ((v100 ^ 0xBC5127AEF648193ELL) + 0x7F01E43402CAF6E2) ^ ((v100 ^ 0xE3E383B70A46DF3FLL) + 0x20B3402DFEC430E1);
  LODWORD(v100) = __CFADD__(1010101 * (v101 ^ ((v100 ^ 0xF2A8932ED122C440) + 0x31F850B425A02BA0)), 0xF075F18C6B8AC795) + (((v101 ^ ((v100 ^ 0xF2A8932ED122C440) + 0x31F850B425A02BA0)) * 0xF69B5uLL) >> 64) + 1010101 * ((__CFADD__(v100 ^ 0xBC5127AEF648193ELL, 0x7F01E43402CAF6E2) - 1) ^ (__CFADD__(v100 ^ 0xE3E383B70A46DF3FLL, 0x20B3402DFEC430E1) - 1) ^ (__CFADD__(v100 ^ 0xF2A8932ED122C440, 0x31F850B425A02BA0) - 1)) + 167040972;
  LOBYTE(v100) = ((v100 ^ 0x9E) + 103) ^ v100 ^ ((v100 ^ 0x7A) - 125) ^ ((v100 ^ 0x1C) - 27) ^ (7 - v100);
  return (*(v51 + 8 * ((48168 * (((((v100 & 0xE ^ 0x914152E4) - 2011230663) ^ ((v100 & 0xE ^ 0xCD42FB3C) - 736319519) ^ ((v100 & 0xE ^ 0x5C03A9DE) + 1163785475)) - 425614565) < 0xFFFFFFF6)) ^ v49)))(a1, a2, a3, a4, 1247605856);
}

uint64_t sub_10018E198()
{
  v3 = *v0;
  STACK[0x768] = 0;
  return (*(v2 + 8 * (((v3 == 0) * ((v1 ^ 0xFFFF2874) + v1 - 11166)) ^ v1)))();
}

uint64_t sub_10018E2D8()
{
  v6 = *(v1 + 16);
  v7 = v3 + 155453101 * ((~&v6 & 0xC0A50772 | &v6 & 0x3F5AF888) ^ 0x26831CBD) + 296757196;
  result = (*(v2 + 8 * (v3 + 20364)))(&v6);
  *v0 = v4;
  return result;
}

uint64_t sub_10018E380@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v34 = (a1 ^ 0xD24FBC73) & (2 * (a1 & v31)) ^ a1 & v31;
  v35 = ((2 * (a1 ^ 0xD2C6EE75)) ^ 0x552AE2C) & (a1 ^ 0xD2C6EE75) ^ (2 * (a1 ^ 0xD2C6EE75)) & 0x2A95716;
  v36 = a1 ^ (2 * (((4 * (v35 ^ 0x37309A0A ^ ((v33 + 286371919) | 0x24880010))) & 0x2A95710 ^ 0x2A15410 ^ ((4 * (v35 ^ 0x37309A0A ^ ((v33 + 286371919) | 0x24880010))) ^ 0xAA55C50) & (v35 ^ 0x37309A0A ^ ((v33 + 286371919) | 0x24880010))) & (16 * ((v35 ^ 0x604) & (4 * v34) ^ v34)) ^ (v35 ^ 0x604) & (4 * v34) ^ v34));
  v37 = v29 - 249458616 + (((v36 ^ 0x52483DC3) - 2035318938) ^ ((v36 ^ 0x7D82A010) - 1452940617) ^ ((v36 ^ 0x54D2E80B) - 2143966546)) + 102990845;
  v38 = ((2 * (v37 ^ 0x5834F0E8)) ^ 0x4B01A874) & (v37 ^ 0x5834F0E8) ^ (2 * (v37 ^ 0x5834F0E8)) & 0xA580D43A;
  v39 = v38 ^ 0xA480540A;
  v40 = (v38 ^ 0x1008010) & (4 * (((2 * v37) & 0xFB6849A4 ^ 0xFDB424D2) & v37)) ^ ((2 * v37) & 0xFB6849A4 ^ 0xFDB424D2) & v37;
  v41 = *(v30 + 4 * a26);
  v42 = ((v41 ^ 0x7E13E980) - 1367584541) ^ v41 ^ ((v41 ^ 0x52BD257C) - 2100126689) ^ ((v41 ^ 0xFED9759E) + 783731965) ^ ((v41 ^ 0xFDE7FFFF) + 763905694) ^ v37 ^ (2 * (((4 * v39) & 0x2580D420 ^ 0x4005020 ^ ((4 * v39) ^ 0x160350E0) & v39) & (16 * v40) ^ v40));
  v43 = *(v30 + 4 * v32) - 474354950 + (((v42 ^ 0x8E62D4D1) + 357475881) ^ ((v42 ^ 0x8D4D482) - 1812420996) ^ ((v42 ^ 0x5C92621C) - 943845146));
  return (*(a29 + 8 * ((105 * (((2 * v43) & 4) != (v43 & 7))) ^ v33)))();
}

uint64_t sub_10018E7A4@<X0>(char a1@<W1>, char a2@<W3>, char a3@<W4>, char a4@<W7>, _DWORD *a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, char a23, char a24, __int16 a25, char a26, char a27, unsigned __int8 a28, __int16 a29, char a30, char a31, int a32, __int16 a33, char a34, char a35, __int16 a36, char a37, uint64_t a38, char a39, int a40, int a41, char a42, uint64_t a43, uint64_t a44, __int16 a45, char a46, uint64_t a47, uint64_t a48, int a49, char a50, char a51, char a52, uint64_t a53, uint64_t a54, __int16 a55, char a56, char a57, int a58, int a59, char a60, char a61, char a62, char a63)
{
  v121 = *(v120 - 160 + (a22 & 0x3F ^ 0x1FLL));
  v122 = ((v121 ^ 0x67) - 103) ^ ((v121 ^ 0xBE) + 66) ^ ((v121 ^ 0x86) + (v118 ^ 0x94));
  v123 = ((v121 ^ 0xDE) + 34) ^ ((v121 ^ 0x12) - 18) ^ ((v121 ^ 0x93) + 109);
  v124 = (v123 + 95) * (v122 + 57) + 38 * v123 + 120;
  v125 = v124 & 0x1E ^ 0xD8;
  v126 = v124 ^ (2 * ((v124 ^ 0x6C) & (2 * ((v124 ^ 0x6C) & (2 * ((v124 ^ 0x6C) & (2 * ((v124 ^ 0x6C) & (2 * ((v124 ^ 0x6C) & (2 * v125) ^ v125)) ^ v125)) ^ v125)) ^ v125)) ^ v125));
  a90 = ((a28 >> 1) & 0x43 | *(v120 - 167) & 0x10) ^ 0xFD;
  v221 = ((v126 ^ 0x26) - 4) ^ ((v126 ^ 0x16) - 52) ^ ((v126 ^ 0x12) - 48);
  v127 = ((v221 - 65) & 0xC1 | 0x3C) ^ (v221 + 63) & 0xF8;
  v128 = (v221 + 63) ^ 0x40;
  v129 = (v221 + 63) ^ (2 * (v128 & (2 * (v128 & (2 * (v128 & (2 * (v128 & (2 * (v128 & (2 * (v128 & (2 * v127) ^ v127)) ^ v127)) ^ v127)) ^ v127)) ^ v127)) ^ v127));
  v130 = ((a63 ^ 0xC2) + 62) ^ a63 ^ ((a63 ^ 0x1D) - 29);
  v131 = (v130 + 95) * ((((a63 ^ 0x17) - 23) ^ a63 ^ ((a63 ^ 0xC8) + 56)) - 88) - 73 * v130;
  v132 = (v129 ^ 0x39) & (a57 ^ 0x2D);
  v133 = (a113 & 0x59 ^ 0xA7 ^ ((v129 & 0x83 | 0x24) ^ (v129 ^ 0xC6) & (a57 ^ 0x23)) & (a113 ^ 0xD2)) & (v129 & 0x72 ^ 0xCF ^ v132);
  a108 = (v129 & 0x9C ^ 5 ^ (v133 & v119 ^ 0x63) & (v129 ^ 0x21)) & (v132 & 8 ^ 0x4E ^ v133 & 0xB9) ^ v133 & 0xA0 ^ 0x6F;
  v134 = v131 + 52;
  v135 = (v131 + 52) & 0x7D ^ 0xE4;
  v136 = (4 * ((v134 ^ a2) & (2 * ((v134 ^ a2) & (2 * ((v134 ^ a2) & (2 * ((v134 ^ a2) & (2 * ((v134 ^ a2) & (2 * v135) ^ v135)) ^ v135)) ^ v135)) ^ v135)) ^ v135)) ^ (2 * v134);
  v137 = *(&a88 + (a73 & 0x3F ^ 0x1FLL));
  v138 = (v136 ^ 0x93) & (v137 ^ 0xD2) ^ v137 & 0x71;
  v139 = (v138 ^ 0xAF) & (((v136 ^ 0xC3) & 0x5E | a85 & (v136 ^ 0x1D)) ^ 0xF1) ^ v138 & 0x51;
  v140 = (((*(v120 - 145) ^ 0x8D) + 115) ^ ((*(v120 - 145) ^ 0x25) - 37) ^ ((*(v120 - 145) ^ 0xF7) + 9)) - (((v139 ^ 0xA) - 1) ^ ((v139 ^ 0xFC) + 9) ^ ((v139 ^ 8) - 3)) - 62;
  v141 = v140 & 0x96 ^ 0x37;
  *(v120 - 145) = v140 ^ (2 * ((v140 ^ 0x28) & (2 * ((v140 ^ 0x28) & (2 * ((v140 ^ 0x28) & (2 * ((v140 ^ 0x28) & (2 * ((v140 ^ 0x28) & 0x3E ^ v141)) ^ v141)) ^ v141)) ^ v141)) ^ v141)) ^ 0xC9;
  v142 = *(v120 - 160 + (a75 & 0x3F ^ 0x1FLL));
  v143 = ((v142 ^ 0xAD) + 83) ^ ((v142 ^ 0x45) - 69) ^ ((v142 ^ 0xB7) + 73);
  v144 = 16 * v143 + (v143 + 95) * (v143 + 79);
  v145 = *(v120 - 221);
  v146 = ((v145 ^ v113) - 93) ^ ((v145 ^ 0x24) - 36) ^ ((v145 ^ 0x92) + 110);
  v220 = -127 * v146 + (v146 - 21) * ((((v145 ^ 0x39) - 57) ^ ((v145 ^ 0x4D) - 77) ^ ((v145 ^ 0x9F) + 97)) + 106);
  v147 = (v144 - 16) * (v144 - 4) - 12 * v144 - 40;
  v148 = (v147 ^ 0xC3) & (2 * (v147 & 0xE8)) ^ v147 & 0xE8;
  v149 = ((2 * (v147 ^ 0x93)) ^ 0xF6) & (v147 ^ 0x93) ^ (2 * (v147 ^ 0x93)) & 0x7A;
  v150 = v148 ^ 0x7B ^ (v149 ^ 0x60) & (4 * v148);
  v151 = v147 ^ (2 * ((16 * v150) ^ v150 ^ ((16 * v150) ^ 0x30) & ((4 * (v149 ^ 9)) & 0x70 ^ 0x10 ^ ((4 * (v149 ^ 9)) ^ 0xE0) & (v149 ^ 9))));
  v152 = (((*(v120 - 113) ^ 0x40) - 64) ^ ((*(v120 - 113) ^ 0xBF) + 65) ^ ((*(v120 - 113) ^ 0xA0) + 96)) + (((v151 ^ 0xAB) + 6) ^ ((v151 ^ 0xFA) + 85) ^ ((v151 ^ 0x2F) - 126)) - 4;
  *(v120 - 113) = v152 ^ (2 * ((v152 ^ 0x10) & (2 * ((v152 ^ 0x10) & (2 * ((v152 ^ 0x10) & (2 * ((a2 ^ (2 * (((2 * v152) & 0x24 | 0x12) & v152))) & (v152 ^ 0x10) ^ v152 & 0x26 ^ 0xCA)) ^ v152 & 0x26 ^ 0xCA)) ^ v152 & 0x26 ^ 0xCA)) ^ v152 & 0x26 ^ 0xCA)) ^ 0x79;
  v153 = v129 & 0x3F ^ 0x39;
  v154 = *(v120 - 205);
  v155 = ((*(v120 - 157) ^ 0x70DA) - 28890) ^ ((*(v120 - 157) ^ 0x67DF) - 26591) ^ ((*(v120 - 157) ^ 0x175A) - 5978);
  v156 = 171 * v155 - 1675;
  v157 = (((v155 + 197) > 0xCEu) << 7) | (v156 >> 9);
  v156 >>= 9;
  v158 = v157 & 0xA3 ^ v156 & v119;
  v159 = ((2 * v158) ^ 6) & (v156 ^ 2);
  v158 ^= 0x21u;
  LOBYTE(v157) = v157 ^ (2 * ((v156 ^ 0x22) & (2 * ((v156 ^ 0x22) & (2 * ((v156 ^ 0x22) & (2 * ((v156 ^ 0x22) & (2 * ((v156 ^ 0x22) & (2 * (v159 ^ v158)) ^ v158)) ^ v158)) ^ v158)) ^ v158)) ^ v158)) ^ 0x55;
  *(v120 - 160) = (v157 & (v154 ^ 0x14) ^ v154 & 0xB0) & 0xDB ^ 0x6B ^ (v157 & (v154 ^ 0x14) ^ v154 & 0xB0 ^ 0xEF) & (*(v120 - 221) & 8 ^ 0x2C ^ (*(v120 - 221) ^ 0x2D) & (v154 ^ 0xE3));
  LOBYTE(v157) = (((*(v120 - 137) ^ 0x9D) + 99) ^ ((*(v120 - 137) ^ 0xBE) + 66) ^ ((*(v120 - 137) ^ 0x7C) - 124)) + (((a72 ^ 0xA1) + 95) ^ ((a72 ^ 0x67) - 103) ^ ((a72 ^ 0x99) + 103));
  v160 = v157 - 35;
  LOBYTE(v157) = (v157 + 93) & 0xE1 | (v157 - 35) & 4 | 2;
  v161 = v160 ^ (2 * ((v160 ^ 0x60) & (2 * ((v160 ^ 0x60) & (2 * ((v160 ^ 0x60) & (2 * ((v160 ^ 0x60) & (2 * ((v160 ^ 0x60) & (2 * (v160 & (2 * (v157 ^ v160 & 4)) ^ v157)) ^ v157)) ^ v157)) ^ v157)) ^ v157)) ^ v157));
  LOBYTE(v157) = (*(v120 - 206) & 0x13 ^ (a111 & 0xF ^ 0xE1) & (*(v120 - 206) ^ 0xFB) ^ 0x3E) & ((a111 & 0x60 | *(v120 - 167) & 0x90) ^ 0x3F) ^ (a111 & 0x40 | *(v120 - 167) & 0x80 | 2);
  LOBYTE(v157) = (((a112 ^ 4) - 4) ^ ((a112 ^ 0x16) - 22) ^ ((a112 ^ 0xC0) + 64)) - (((v157 ^ 0x93) - 5) ^ ((v157 ^ v113) + 53) ^ ((v157 ^ 0x31) + 89)) + 126;
  v162 = v157 & 0x81 ^ 0xDF;
  v219 = *(&a88 + v153);
  a112 = v157 ^ (2 * ((v157 ^ 0x6A) & (2 * ((v157 ^ 0x6A) & (2 * ((v157 ^ 0x6A) & (2 * ((v157 ^ 0x6A) & (2 * ((v157 ^ 0x6A) & (2 * ((a3 & (2 * v157) ^ 0x6A) & (v157 ^ 0x6A) ^ v162)) ^ v162)) ^ v162)) ^ v162)) ^ v162)) ^ v162)) ^ 0x53;
  LOBYTE(v157) = v161 ^ 0xBA;
  v163 = *(&a88 + (a68 & 0x3F ^ 0x1FLL));
  *(v120 - 137) = v157;
  LOBYTE(v157) = (v163 ^ 0x2D) & (*(v120 - 200) ^ 0x94) ^ v163 & 0x80;
  v164 = (a82 ^ 0xA0) & (a24 ^ 0x33) ^ a82 & 0x93;
  v165 = (a82 ^ 0x5F) & (a24 ^ 0x8A) ^ a82 & 0xD5;
  v166 = (a107 ^ 0xD3 ^ v164 & 1 ^ (v164 ^ 0x80) & (a107 ^ 0xD3) ^ 0xDA) & (v165 ^ 0xAA) ^ v165 & 0x24;
  v167 = *(v120 - 181);
  v168 = ((v166 ^ 0x20) & v157 ^ 0xD7) & (v167 ^ 0xEB);
  LOBYTE(v157) = (v166 ^ 0x4E) & ~v157 ^ v157 & 0x91;
  LOBYTE(v157) = (v167 & 0x28 ^ 0xBC ^ v168) & (v157 ^ 0x6E) ^ v157 & 0x6B;
  LOBYTE(v157) = (((v157 ^ 0x52) + 8) ^ ((v157 ^ 0xEF) - 69) ^ ((v157 ^ 0x28) + 126)) + (((a92 ^ 0xDF) + 33) ^ ((a92 ^ 0x55) - 85) ^ ((a92 ^ 0x58) - 88));
  v169 = -125 - v157;
  LOBYTE(v157) = v157 + 124;
  v170 = (v169 & 0x95 | 0x20) ^ v157 & 0x6A;
  a92 = v157 ^ (2 * ((v157 ^ 0x14) & (2 * ((v157 ^ 0x14) & (2 * ((v157 ^ 0x14) & (2 * ((v157 ^ 0x14) & (2 * ((v157 ^ 0x14) & (2 * ((v157 ^ 0x14) & (2 * v170) ^ v170)) ^ v170)) ^ v170)) ^ v170)) ^ v170)) ^ v170)) ^ 0x2D;
  v171 = *(v120 - 160 + (a77 & 0x3F ^ 0x1FLL));
  v172 = (171 * (((v171 ^ 0x91DB) + 28197) ^ ((v171 ^ 0x39DD) - 14813) ^ ((v171 ^ 0xA859) + 22439)) - 17547) >> 9;
  v173 = v172 & 0x76 ^ 0x5A;
  LOBYTE(v172) = (v172 ^ (2 * (v172 & (2 * (v172 & (2 * (v172 & (2 * (v172 & (2 * (v172 & (2 * v173) ^ v173)) ^ v173)) ^ v173)) ^ v173)) ^ v173))) & 0x3F;
  v174 = *(&a88 + (a70 & 0x3F ^ 0x1FLL)) | a103;
  LOBYTE(v172) = (v172 ^ 0x7F) & (v174 ^ a103 | 0x3F) ^ (v174 & 0x80 | 0x12);
  LOBYTE(v172) = (((*(v120 - 117) ^ 0xC6) - 70) ^ ((*(v120 - 117) ^ 0x76) - 118) ^ ((*(v120 - 117) ^ 0xEF) + 17)) + (((v172 ^ 0xD5) - 112) ^ ((v172 ^ 0xA3) - 6) ^ ((v172 ^ 0xAD) - 8)) - 72;
  v175 = v172 & 0xC1 | 0x16;
  *(v120 - 117) = v172 ^ (2 * ((v172 ^ 0x24) & (2 * ((v172 ^ 0x24) & (2 * ((v172 ^ 0x24) & (2 * ((v172 ^ 0x24) & (2 * ((v172 ^ 0x24) & (2 * ((v172 ^ 0x24) & (2 * (v172 & 0xC1)) ^ v175)) ^ v175)) ^ v175)) ^ v175)) ^ v175)) ^ v175)) ^ 0x9E;
  LOBYTE(v172) = (((a46 ^ 0xDC) + 36) ^ a46 ^ ((a46 ^ 0x83) + 125)) + (((*(v120 - 128) ^ 0xAD) + 83) ^ ((*(v120 - 128) ^ 0xAF) + 81) ^ ((*(v120 - 128) ^ v113) - 93)) - 13;
  v176 = v172 & 0x4F ^ 0x42;
  v217 = *(v120 - 160 + (a76 & 0x3F ^ 0x1FLL));
  v177 = *(&a88 + (a35 & 0x3F ^ 0x1FLL));
  *(v120 - 128) = v172 ^ (2 * ((v172 ^ 0x4A) & (2 * ((v172 ^ 0x4A) & (2 * ((v172 ^ 0x4A) & (2 * ((v172 ^ 0x4A) & (2 * ((v172 ^ 0xA) & (2 * ((v172 ^ 2) & (2 * v172) & 0x16 ^ v176)) ^ v176)) ^ v176)) ^ v176)) ^ v176)) ^ v176)) ^ 0x10;
  a94 = v177;
  v178 = (((a97 ^ 5) - 5) ^ ((a97 ^ 0x30) - 48) ^ ((a97 ^ 0xFFFFFFE7) + 25)) - (((a66 ^ 3) - 3) ^ -a66 ^ ((a66 ^ 0xFFFFFFA3) + 93)) - 79;
  v179 = v178 & 0x5C ^ 0x4D;
  a97 = v178 ^ (2 * ((v178 ^ 0x42) & (2 * ((v178 ^ 0x42) & (2 * ((v178 ^ 0x42) & (2 * ((v178 ^ 0x42) & (2 * (v178 & (2 * ((v179 | 2) ^ v178 & 0x1E)) ^ (v179 | 2))) ^ v179)) ^ v179)) ^ v179)) ^ v179)) ^ 0x8E;
  v180 = *(v120 - 224 + (a71 & 0x3F ^ 0x1FLL));
  LOBYTE(v178) = (v180 & 0xE7 ^ 0x1C) & (a89 & 0x18 ^ 0x37) | v180 & 0xC0;
  v181 = *(v120 - 224 + (a65 & 0x3F ^ 0x1FLL)) & 0xD6;
  LOBYTE(v178) = (((*(v120 - 134) ^ 0x37) - 55) ^ ((*(v120 - 134) ^ 0xA5) + 91) ^ ((*(v120 - 134) ^ 0xCD) + 51)) - (((v181 ^ 0x99) + 77) ^ ((v181 ^ 0xD) - 39) ^ ((v181 ^ a3) - 124)) - (((v178 ^ 0x31) - 27) ^ ((v178 ^ 0xBF) + 107) ^ ((v178 ^ 0x69) - 67)) + 39;
  v182 = v178 & 0xE7 ^ 0xB2;
  *(v120 - 134) = v178 ^ (2 * ((v178 ^ 2) & (2 * ((v178 ^ 2) & (2 * ((v178 ^ 2) & (2 * ((v178 ^ 2) & (2 * ((v178 ^ 2) & (2 * ((v178 ^ 2) & (2 * v182) ^ v182)) ^ v182)) ^ v182)) ^ v182)) ^ v182)) ^ v182)) ^ 0xB8;
  LOBYTE(v178) = -74 * (((a86 ^ 0x32) + 78) ^ ((a86 ^ 0x5A) + 38) ^ ((a86 ^ 0x37) - 55)) - 31;
  v183 = v178 & 0x3E ^ 0x4A;
  a102 = v178 ^ (2 * ((v178 ^ 0x28) & (2 * ((v178 ^ 0x28) & (2 * ((v178 ^ 0x28) & (2 * ((v178 ^ 0x28) & (2 * (((2 * (((2 * v178) & 0x52 | a1) & v178)) ^ 0x16) & v178 ^ v183)) ^ v183)) ^ v183)) ^ v183)) ^ v183)) ^ 0xED;
  LOBYTE(v178) = (((a100 ^ 0xB1) + 79) ^ ((a100 ^ 0xBD) + 67) ^ ((a100 ^ 0xDE) + 34)) - ((((2 * a111) ^ 0xFE) - 24) ^ (((2 * a111) ^ v114) - 18) ^ (((2 * a111) ^ 0xAE) - 72));
  v184 = (v178 - 121) & 0x89;
  LOBYTE(v178) = v178 + 7;
  v185 = v184 | v178 & 4 | 2;
  a100 = v178 ^ (2 * ((v178 ^ 8) & (2 * ((v178 ^ 8) & (2 * ((v178 ^ 8) & (2 * ((v178 ^ 8) & (2 * ((v178 ^ 8) & (2 * ((v178 ^ 8) & (2 * (v185 ^ v178 & 4)) ^ v185)) ^ v185)) ^ v185)) ^ v185)) ^ v185)) ^ v185)) ^ 0x5F;
  LOBYTE(v178) = *(v120 - 186);
  v186 = (a74 ^ 0x5F) & (v178 ^ 0xE0) ^ a74 & 0xF4;
  LOBYTE(v178) = (v186 ^ 0xEF) & (v178 & 0x18 ^ 0x32) | v186 & 0xC5;
  v187 = *(v120 - 224 + (*(v120 - 200) & 0x3F ^ 0x2BLL));
  v188 = (v178 ^ 0xCC) & (v187 & 0x95 ^ 0x14);
  LOBYTE(v178) = (v178 ^ 0xC2) & (v187 ^ 0xEB) ^ v187 & 0xBC;
  *(v120 - 126) ^= v178 & 0xB4 ^ (v178 ^ 0x57) & (v188 ^ (v187 & 5 | 0xDA)) ^ 0xEB;
  LOBYTE(v178) = 3 * v220 + 40;
  v189 = v178 & 0xD5 ^ 0x6E;
  a101 = v178 ^ (2 * ((v178 ^ 0x18) & (2 * ((v178 ^ 0x18) & (2 * ((v178 ^ 0x18) & (2 * ((v178 ^ 0x18) & (2 * ((v178 ^ 0x18) & (2 * ((v178 ^ 0x18) & (2 * v178) ^ v189)) ^ v189)) ^ v189)) ^ v189)) ^ v189)) ^ v189)) ^ 7;
  LOBYTE(v178) = (((*(v120 - 112) ^ 0x38) - 56) ^ ((*(v120 - 112) ^ 0x9F) + 97) ^ ((*(v120 - 112) ^ 0xF8) + 8)) - 43;
  *(v120 - 112) = v178 ^ (2 * (((2 * (((2 * (((2 * (((2 * (((2 * (v178 ^ 6)) & 0xC ^ 0xA) & (v178 ^ 6))) ^ 0xA) & (v178 ^ 6))) ^ 0xA) & (v178 ^ 6))) ^ 0xA) & (v178 ^ 6))) ^ 0xA) & (v178 ^ 6))) ^ 0xD5;
  a106 = a99 ^ 0x18;
  a90 = a96;
  LOBYTE(v178) = *(&a88 + (a39 & 0x3F ^ 0x1FLL)) ^ *(v120 - 100);
  LOBYTE(v178) = ((v178 ^ 0x36) - 54) ^ ((v178 ^ 0x92) + 110) ^ ((v178 ^ a1) - 41);
  v215 = (((*(v120 - 98) ^ 0xB2) + 78) ^ ((*(v120 - 98) ^ 0x60) - 96) ^ ((*(v120 - 98) ^ 0x8D) + 115)) + v178 * a1 + (v178 - 115) * (v178 + 100);
  v190 = ((v219 ^ 0x11) - 17) ^ ((v219 ^ 0xAB) + 85) ^ ((v219 ^ 0x68) - 104);
  v216 = 3 * ((v190 - 46) * ((((v219 ^ 0x22) - 34) ^ ((v219 ^ 0x66) - 102) ^ ((v219 ^ 0x96) + 106)) + 70) - 116 * v190);
  v191 = (*(v120 - 224 + (a52 & 0x3F ^ 0x1FLL)) ^ 0x76) & (a110 ^ 0x2D) ^ a110 & 0x9D;
  v192 = (v191 ^ 0xB2) & (v217 & 0x28 ^ 0x2A ^ (a110 ^ 0xBA) & (v217 ^ 0x1B) & 0xBB) ^ v191 & 0x99;
  v193 = (a111 ^ 0xD2) & (a81 ^ 0x59) ^ a111 & 0xF9;
  LOBYTE(v178) = v193 & 0x82 ^ (v193 ^ 0x2F) & (a98 ^ 0x50) ^ 2 | (a111 ^ 0x2D) & (a81 ^ 0x9D) ^ a111 & 0xC2;
  LOBYTE(v178) = (((*(v120 - 152) ^ 0xF3) + 13) ^ ((*(v120 - 152) ^ 0x99) + 103) ^ ((*(v120 - 152) ^ 0x35) - 53)) + ((((v178 - ((2 * v178) & 0xCC) - 26) ^ 0x2F) - 47) ^ (((v178 - ((2 * v178) & 0xCC) - 26) ^ 0x52) - 82) ^ (((v178 - ((2 * v178) & 0xCC) - 26) ^ 0x9B) + 101)) + 111;
  v194 = v178 & 0xD0 | 5;
  *(v120 - 152) = v178 ^ (2 * ((v178 ^ a3) & (2 * ((v178 ^ a3) & (2 * ((v178 ^ a3) & (2 * ((v178 ^ a3) & (2 * (((2 * (v194 ^ v178 & 6)) ^ 0xC) & (v178 ^ a3) ^ v194)) ^ v194)) ^ v194)) ^ v194)) ^ v194)) ^ 0x8F;
  LOBYTE(v178) = *(&a88 + (a18 & 0x3F ^ 0x1FLL));
  v195 = v178 & (a26 ^ 0xE0) & 0xA3 ^ a26 & 0x21;
  v196 = (a42 ^ 0x13) & (v192 ^ 0x77) ^ v192 & 8;
  LOBYTE(v178) = (((v196 ^ 0x85) + 47) ^ ((v196 ^ 0xF6) + 94) ^ ((v196 ^ 0x37) - 99)) + (v195 & 0x7F ^ a4 ^ (v195 ^ 0x7C) & (a26 & 0x35 ^ (a26 ^ 0x5F) & (v178 ^ 0xE7) ^ 0xC1));
  v197 = v178 + 43;
  LOBYTE(v178) = v178 - 85;
  *(v120 - 134) ^= v178 ^ (2 * ((v197 ^ 0x64) & (2 * ((v197 ^ 0x64) & (2 * ((v197 ^ 0x64) & (2 * ((v197 ^ 0x64) & (2 * ((v197 ^ 0x44) & (2 * (v197 & (2 * (v178 & 0xE5)) ^ v178 & 0xE5)) ^ v178 & 0xE5)) ^ v178 & 0xE5)) ^ v178 & 0xE5)) ^ v178 & 0xE5)) ^ v178 & 0xE5)) ^ v117;
  v198 = ((-86 - v215) & 0x9F | 0x40) ^ (v215 + 85) & 0xAA;
  v199 = (v215 + 85) ^ 0x1E;
  v200 = (v215 + 85) ^ (2 * (v199 & (2 * (v199 & (2 * (v199 & (2 * (v199 & (2 * (v199 & (2 * (v199 & (2 * v198) ^ v198)) ^ v198)) ^ v198)) ^ v198)) ^ v198)) ^ v198));
  v201 = 171 * (((a80 ^ 0xFFFFF443) + 3005) ^ ((a80 ^ 0x7184) - 29060) ^ ((a80 ^ 0x8598) + 31336)) - 31371;
  v202 = v201 >> 9;
  v203 = v202 & 0x4D ^ 0xFFFFFF98;
  v204 = v202 ^ (2 * ((v202 ^ 0x5C) & (2 * ((v202 ^ 0x1C) & (2 * ((v202 ^ 0x1C) & (2 * ((v202 ^ 0x1C) & (2 * ((v202 ^ 0x1C) & (2 * (v202 & (v201 >> 8) & 0x3A ^ v203)) ^ v203)) ^ v203)) ^ v203)) ^ v203)) ^ v203)) ^ 0xFFFFFFCD;
  LOBYTE(v202) = *(&a88 + (a78 & 0x3F ^ 0x1FLL));
  v218 = v204 & (47 - (((a111 ^ 0xE2) + 30) ^ ((a111 ^ 0xF5) + 11) ^ ((a111 ^ 0xC5) + 59)));
  LOBYTE(v203) = (33 - v218) & 0x72 ^ 0x7D;
  LOBYTE(v178) = (((a105 ^ 0x75) - 117) ^ ((a105 ^ 0x7C) - 124) ^ ((a105 ^ 0xDB) + 37)) - (v202 & 0x41 ^ 0x48 ^ (v202 & 0xE7 ^ 0xDA) & (a104 ^ 0x9B) | a104 & 0xF1 ^ 0x21 ^ (*(v120 - 224 + (((33 - v218) ^ (2 * (((33 - v218) ^ 0x18) & (2 * (((33 - v218) ^ 0x18) & (2 * (((33 - v218) ^ 0x18) & (2 * (((33 - v218) ^ 0x18) & (2 * v203) ^ v203)) ^ v203)) ^ v203)) ^ v203))) & 0x3F ^ 0x32)) ^ 0x1A) & (a104 ^ 0x2D)) + 51;
  LOBYTE(v202) = v178 & 0xA1 ^ 1;
  LOBYTE(v203) = (~(2 * v178) & 0x1E | v202) ^ v178 & ~(2 * v178) & 0x3E;
  a105 = v178 ^ (2 * ((v178 ^ 0x1E) & (2 * ((v178 ^ 0x1E) & (2 * ((v178 ^ 0x1E) & (2 * ((v178 ^ 0x1E) & (2 * ((v202 & 0xE1 | (2 * (v203 & 0xF))) ^ v178 & (2 * v203))) ^ v202)) ^ v202)) ^ v202)) ^ v202)) ^ 0x73;
  *(v120 - 98) = v200 ^ 0x6A;
  v205 = *(&a88 + (((v216 + 12) ^ (2 * (((v216 + 12) ^ 0x10) & (2 * ((v216 + 12) & (2 * ((v216 + 12) & (2 * ((v216 + 12) & 0x76 ^ 0xE2)) ^ (v216 + 12) & 0x76 ^ 0xE2)) ^ (v216 + 12) & 0x76 ^ 0xE2)) ^ (v216 + 12) & 0x76 ^ 0xE2))) & 0x3F ^ 0x36));
  LOBYTE(v178) = (((*(v120 - 123) ^ 0xA5) + 91) ^ ((*(v120 - 123) ^ 0x9D) + 99) ^ ((*(v120 - 123) ^ 0x67) - 103)) - (((v205 ^ 0x16) - 22) ^ ((v205 ^ 0xD4) + 44) ^ ((v205 ^ 0x10) - 16)) - 50;
  LOBYTE(v202) = v178 & 0x21 ^ v116;
  *(v120 - 123) = v178 ^ (2 * ((v178 ^ 0x3E) & (2 * ((v178 ^ 0x3E) & (2 * ((v178 ^ 0x3E) & (2 * ((v178 ^ 0x3E) & (2 * ((v178 ^ 0x3E) & (2 * (((2 * v178) ^ 0x1E) & (v178 ^ 0x3E) ^ v202)) ^ v202)) ^ v202)) ^ v202)) ^ v202)) ^ v202)) ^ 0x7E;
  *(v120 - 137) = a61;
  LOBYTE(v178) = *(v120 - 224 + (a69 & 0x3F ^ 0x1FLL));
  v206 = (a67 & 0x31 ^ 0x26 ^ (a67 ^ 0xA0) & (v178 ^ 0x25)) & (a92 ^ 0xD2) ^ a92 & 0xF9;
  LOBYTE(v178) = (v206 ^ 0x2F) & (a67 & 0xA3 ^ 0x3D ^ (a67 ^ 0x5F) & (v178 ^ 0x48));
  LOBYTE(v202) = v206 & 0xC1;
  v207 = *(v120 - 224 + (a87 & 0x3F ^ 0x1FLL));
  LOBYTE(v178) = (v202 ^ v178 ^ 0xFE) - ((a93 ^ 0x3C) & 0xA5 ^ *(v120 - 221) & 0x11 ^ (*(v120 - 221) ^ 0x4E) & (a93 ^ 0x3C) ^ 1 | v207 & v119 ^ 0x42 ^ (v207 ^ 0xEB) & (a93 ^ 0x94));
  *(v120 - 110) ^= (v178 - ((2 * v178) & 0x44) + 34) ^ 0x22;
  LOBYTE(v202) = *(v120 - 224 + (a84 & 0x3F ^ 0x1FLL));
  LOBYTE(v178) = (((*(v120 - 103) ^ 0x7C) - 124) ^ ((*(v120 - 103) ^ 0xBD) + 67) ^ ((*(v120 - 103) ^ 0x9E) + 98)) - (((v202 ^ 0xDB) + 37) ^ ((v202 ^ 0x90) + 112) ^ ((v202 ^ 0xA0) + 96)) + 123;
  LOBYTE(v202) = v178 & 0x21 ^ a2;
  *(v120 - 103) = v178 ^ (2 * ((v178 ^ 0x78) & (2 * ((v178 ^ 0x78) & (2 * ((v178 ^ 0x78) & (2 * ((v178 ^ 0x78) & (2 * ((v178 ^ 0x78) & (2 * ((v178 ^ 0x78) & (2 * v178) & 0x72 ^ v202)) ^ v202)) ^ v202)) ^ v202)) ^ v202)) ^ v202)) ^ 0x7E;
  LOBYTE(v178) = ((a37 ^ v117) - 101) ^ ((a37 ^ 0x35) - 53) ^ ((a37 ^ 0xF) - 15);
  LOBYTE(v178) = ((((a83 ^ 0x92) + 110) ^ ((a83 ^ 0xD4) + 44) ^ ((a83 ^ 0x19) - 25)) + 97) * (v178 + 95) - 2 * v178 + 73;
  LOBYTE(v202) = v178 & 0xF5 ^ 0xE;
  a93 ^= (v178 ^ (2 * ((v178 ^ 0x78) & (2 * ((v178 ^ 0x78) & (2 * ((v178 ^ 0x78) & (2 * ((v178 ^ 0x78) & (2 * ((v178 ^ 0x78) & (2 * ((v178 ^ 0x78) & (2 * v178) ^ v202)) ^ v202)) ^ v202)) ^ v202)) ^ v202)) ^ v202)) ^ 0x54) & (*(v120 - 196) ^ 0x14) ^ *(v120 - 196) & 0xA1 | ~*(v120 - 196) & 0x48;
  LOBYTE(v178) = (((a91 ^ 0x40) - 64) ^ ((a91 ^ 0xC9) + 55) ^ ((a91 ^ 0x5B) - 91)) - (((a31 ^ 0x7E) - 126) ^ ((a31 ^ 0xFD) + 3) ^ ((a31 ^ 0xDC) + 36)) + 125;
  LOBYTE(v202) = v178 & 0xA2 ^ 0x7E;
  a91 = v178 ^ (2 * ((v178 ^ 0x74) & (2 * ((v178 ^ 0x74) & (2 * ((v178 ^ 0x74) & (2 * ((v178 ^ 0x74) & (2 * ((v178 ^ 0x74) & (2 * v202) ^ v202)) ^ v202)) ^ v202)) ^ v202)) ^ v202)) ^ 0x70;
  LOBYTE(v202) = *(&a88 + (a51 & 0x3F ^ 0x1FLL));
  LOBYTE(v178) = (((*(v120 - 142) ^ 0x73) - 115) ^ ((*(v120 - 142) ^ 9) - 9) ^ ((*(v120 - 142) ^ 0x25) - 37)) - (((v202 ^ 0x6A) - 106) ^ ((v202 ^ v114) + 12) ^ ((v202 ^ 0x4C) - 76));
  v208 = (v178 - 57) ^ v119;
  LOBYTE(v202) = (v178 - 57) & 0xA0 ^ 0x75;
  *(v120 - 142) = (56 - v178) ^ (2 * (v208 & (2 * (v208 & (2 * (v208 & (2 * (v208 & (2 * (v208 & (2 * (v208 & 0x26 ^ v202)) ^ v202)) ^ v202)) ^ v202)) ^ v202)) ^ v202));
  v209 = ((*(v120 - 103) ^ 0x4468) - 17512) ^ ((*(v120 - 103) ^ 0x2A64) - 10852) ^ ((*(v120 - 103) ^ 0x6E53) - 28243);
  v210 = 171 * v209 + 2421;
  LOBYTE(v209) = (((v209 + 96) > 0x51u) << 7) | (v210 >> 9);
  v211 = v210 >> 9;
  v212 = (v211 ^ 0x12) & (v210 >> 8);
  v213 = ((v210 & 0xFE00) >> 9) & 0x1F ^ 0x42;
  LOBYTE(v209) = v209 ^ (2 * ((v211 ^ 0x1A) & (2 * ((v211 ^ 0x1A) & (2 * ((v211 ^ 0x1A) & (2 * ((v211 ^ 0x1A) & (2 * ((v211 ^ 0x1A) & (2 * (v212 & 0x36 ^ v213)) ^ v213)) ^ v213)) ^ v213)) ^ v213)) ^ v213)) ^ 0xB9;
  LOBYTE(v213) = *(v120 - 224 + (a79 & 0x3F ^ 0x1FLL));
  a95 ^= v213 & 0x59 ^ v209 & (v213 ^ 0x14) ^ 0xEF;
  LOBYTE(v209) = (((a109 ^ 0xDF) + 33) ^ ((a109 ^ 0xDD) + 35) ^ ((a109 ^ 0xD0) + 48)) + (((*(v120 - 132) ^ 0x63) - 99) ^ ((*(v120 - 132) ^ 0x3F) - 63) ^ ((*(v120 - 132) ^ 3) - 3)) + 69;
  LOBYTE(v213) = v209 & 0xFA ^ 0xF;
  *(v120 - 132) = v209 ^ (2 * ((v209 ^ 0x6C) & (2 * ((v209 ^ 0x6C) & (2 * ((v209 ^ 0x6C) & (2 * ((v209 ^ 0x6C) & (2 * ((v209 ^ 0x6C) & (2 * (v213 ^ v209 & 0x16)) ^ v213)) ^ v213)) ^ v213)) ^ v213)) ^ v213)) ^ 0xA5;
  return (*(v115 + 8 * ((*a5 != 0) ^ v118)))(118);
}

uint64_t sub_100191DE8(int8x16_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, double a7, __n128 a8, __n128 a9, __n128 a10, int8x16_t a11, double a12, int8x16_t a13)
{
  v19 = a5 & a3;
  v20 = v16;
  v21.i64[0] = vqtbl4q_s8(*(&a8 - 1), a11).u64[0];
  *&v21.i64[1] = a12;
  v22 = vrev64q_s8(vmulq_s8(v21, a13));
  *a1 = veorq_s8(veorq_s8(veorq_s8(*(v14 + (a5 & a3) - 15), *a1), veorq_s8(*((a5 & a3) + v13 - 14), *(v15 + (a5 & a3) - 15))), vextq_s8(v22, v22, 8uLL));
  return (*(v18 + 8 * (((a4 == 0) * a6) ^ v17)))(a1 - 1, a2, a3 - 16, a4 - 16);
}

uint64_t sub_100191E5C@<X0>(int a1@<W8>)
{
  v4 = (((v1 + 21514) | 0xCA9) ^ 0x464D4E13) + a1;
  v6 = v4 > -652112138 && v4 < SLODWORD(STACK[0x3E0]);
  return (*(v2 + 8 * ((v6 * (v1 ^ v3)) ^ (v1 + 7531))))();
}

int *sub_100191F28(int *result)
{
  if ((v1 ^ 0x7FFFAFFE) + ((2 * v1) & 0xFFFE10D8) == 2147463166)
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

uint64_t sub_100192428(void *a1)
{
  *v2 = *a1;
  (*(v1 + 8 * (v3 + 38369)))();
  return (*(v1 + 8 * v3))(v2);
}

uint64_t sub_1001926FC()
{
  v6 = 23958;
  atomic_compare_exchange_strong(v5, &v6, v1);
  return (*(v4 + 8 * (((v6 == v2) * v3) ^ v0)))();
}

uint64_t sub_100192720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v38 = *(a15 + 4 * a35);
  STACK[0x1448] = a14;
  v39 = 1012831759 * ((v37 - 152) ^ 0x1093168A);
  v40 = (v36 + 13465) ^ v39;
  *(v37 - 144) = v38 - v39 + 619782874;
  *(v37 - 140) = v40;
  (*(v35 + 8 * (v36 ^ 0xBAF3)))(v37 - 152);
  v41 = (*(&STACK[0x858] + a35) - 115);
  STACK[0x1448] = a13;
  *(v37 - 144) = (v41 ^ 0x7DFF5FCF) - v39 + ((v41 << ((v36 + 49) ^ 0x1A)) & 0x19E) - 1154699780;
  *(v37 - 140) = v40;
  v42 = (*(v35 + 8 * (v36 + 22831)))(v37 - 152);
  return (*(v35 + 8 * (v36 ^ (1001 * (a18 != -1073152187)))))(v42);
}

uint64_t sub_100192B74()
{
  v3 = (((((v1 + 37003) | 0x25) + 115358) ^ ((v1 - 3765) | 0x4213)) & (2 * (v0 & 0x211409)) | v0 & 0x211409) ^ (2 * (v0 & 0x211409)) & (v0 ^ 0xF7AAA038);
  v4 = ((2 * (v0 ^ 0xF7AAA038)) ^ 0x40176862) & (v0 ^ 0xF7AAA038) ^ (2 * (v0 ^ 0xF7AAA038)) & 0x100BB430;
  v5 = v4 ^ 0x10089411;
  v6 = (v4 ^ 0x10002431) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0xC02ED0C4) & v5 ^ (4 * v5) & 0x300BB430;
  v8 = (v7 ^ 0xA9001) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x30012431)) ^ 0xBB4310) & (v7 ^ 0x30012431) ^ (16 * (v7 ^ 0x30012431)) & 0x300BB410;
  return (*(v2 + 8 * ((99 * ((v0 ^ (2 * (((((v9 ^ 0x3000B421) << 8) ^ 0xBB43100) & (v9 ^ 0x3000B421) ^ ((v9 ^ 0x3000B421) << 8) & 0x300BB000) & (((v9 ^ 0xB0021) & (v8 << 8) ^ v8) << 16) ^ (v9 ^ 0xB0021) & (v8 << 8) ^ v8))) != -945744887)) ^ v1)))();
}

uint64_t sub_100192D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, char a22)
{
  v26 = 1112314453 * ((((v25 - 120) | 0x1A259ADF) - ((v25 - 120) & 0x1A259AD8)) ^ 0xF573B006);
  *(v25 - 120) = v26 + v22 - 32309;
  *(v25 - 104) = a13 - 29200370 + v26;
  *(v25 - 112) = &a22;
  v27 = (*(v23 + 8 * (v22 + 9879)))(v25 - 120);
  return (*(v23 + 8 * (v22 ^ (26 * (v24 == 0)))))(v27);
}

uint64_t sub_1001932A4(double a1, __n128 a2, uint64_t a3, int a4)
{
  a2.n128_u16[0] = -2057;
  a2.n128_u8[2] = -9;
  a2.n128_u8[3] = -9;
  a2.n128_u8[4] = -9;
  a2.n128_u8[5] = -9;
  a2.n128_u8[6] = -9;
  a2.n128_u8[7] = -9;
  return (*(v5 + 8 * a4))(v4 - 8, xmmword_100F523B0, a2);
}

uint64_t sub_1001932E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  v21 = (a2 - 630274593) & 0x2590FBF7;
  v23 = ((((((a13 + 94) ^ 0x29) - 26) ^ (a13 + 94) ^ (-43 - a13) ^ (((a13 + 94) ^ 0xB4 ^ v21) - 85)) ^ (((a13 + 94) ^ 0x83) + 111 + a20)) & 0xF) == 3 && ((((a13 + 480749662) ^ 0x4FF42B29) - 1889759514) ^ (a13 + 480749662) ^ (((a13 + 480749662) ^ 0x7EFBEFFF) - 1101837772) ^ (((a13 + 480749662) ^ 0x4A8386B4 ^ v21) - 1976862037) ^ (((a13 + 480749662) ^ 0x44DB4183) - 2072791441 + a20)) != (((v21 - 20849) | 0x2580) ^ 0x3F5777D2);
  return (*(v20 + 8 * (((2 * v23) | (8 * v23)) ^ v21)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_1001933D4(int8x16_t a1, int8x8_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v17.val[0].i64[0] = (v14 + a10) & 0xF;
  v17.val[0].i64[1] = (v14 + a8 + 14) & 0xF;
  v17.val[1].i64[0] = (v14 + a8 + 13) & 0xF;
  v17.val[1].i64[1] = (v14 + a8 + 12) & 0xF;
  v17.val[2].i64[0] = (v14 + a8 + 11) & 0xF;
  v17.val[2].i64[1] = (v14 + a8 + 10) & 0xF;
  v17.val[3].i64[0] = (v14 + a8 + 9) & 0xF;
  v17.val[3].i64[1] = (v14 + a8) & 0xF ^ 8;
  *(v10 + v14) = veor_s8(veor_s8(veor_s8(*(v13 + v17.val[0].i64[0] - 7), *(a9 + v14)), veor_s8(*(v17.val[0].i64[0] + v11 - 5), *(v17.val[0].i64[0] + v12 - 6))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v17, a1), a2)));
  return (*(v15 + 8 * (((a7 != a8) * a4) ^ a6)))();
}

uint64_t sub_10019353C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, int a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t *a51)
{
  v53 = *a51;
  v54 = -1022166737 * ((~(v52 - 168) & 0x1BCC4CED | (v52 - 168) & 0xE433B310) ^ 0xA1DCAD7F) + LODWORD(STACK[0x344]) * ((a39 + 33487) ^ 0x5632E8C2) + 2011904846;
  *(v52 - 168) = (a39 + 35388) ^ (1022166737 * ((~(v52 - 168) & 0x1BCC4CED | (v52 - 168) & 0xE433B310) ^ 0xA1DCAD7F));
  *(v52 - 164) = v54;
  *(a3 + 440) = v53;
  v55 = (*(v51 + 8 * (a39 + 40761)))(v52 - 168);
  return (*(v51 + 8 * ((17614 * (*(v52 - 152) == -371865839)) ^ a39)))(v55);
}

uint64_t sub_100193608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  *(v41 - 140) = v38 - 747428003;
  v42 = *(v41 - 112);
  v43 = *(&off_1010A0B50 + (v38 ^ 0x2C8D0B9E)) - 2108746971;
  v44 = v43[v42 ^ 0xA5];
  v45 = *(&off_1010A0B50 + (v38 ^ 0x2C8D0374)) - 2042673047;
  v46 = v45[*(v41 - 111) ^ 0x7ALL] ^ *(v41 - 111);
  *(v41 - 168) = (v46 & 0x32 ^ 0xFFFFFFDD) & (v46 & 0xFFFFFFCD ^ 0xFFFFFFFE);
  v47 = *(&off_1010A0B50 + (v38 - 747438300)) - 1018418879;
  v48 = v47[(*(v41 - 110) ^ 0x83) - 2 * ((*(v41 - 110) ^ 0x83) & ((v38 - 747428003) ^ 0x7FFFFFB7)) + 165];
  v49 = *(&off_1010A0B50 + (v38 ^ 0x2C8D0292)) - 749866495;
  v50 = v49[*(v41 - 109) ^ 0xB2];
  v51 = v50 - 98;
  *(v41 - 184) = v50 - 16 * ((v50 - 98) >> 3);
  v52 = *(v41 - 108);
  v53 = v43[v52 ^ 0x76];
  v54 = ~(2 * v52) + v52;
  v55 = *(v41 - 107);
  LODWORD(v52) = v49[*(v41 - 105) ^ 0x25];
  v56 = v52 - 98;
  *(v41 - 176) = v52 - 2 * ((v52 - 98) & 3 ^ v52 & 1);
  v57 = *(v41 - 104);
  v58 = *(v41 - 103);
  v59 = v43[v57 ^ 0xB1];
  v60 = v45[v58 ^ 0xDD];
  *(v41 - 144) = v60;
  v61 = v58 ^ 0xFFFFFFA7;
  *(v41 - 152) = v39;
  v62 = ~v60 & 8;
  if ((v62 & v58) != 0)
  {
    v63 = -v62;
  }

  else
  {
    v63 = ~v60 & 8;
  }

  *(v41 - 160) = v63 + v61;
  v64 = v43[*(v41 - 100) ^ 0x1FLL] ^ (~(2 * *(v41 - 100)) + *(v41 - 100)) ^ 0x26;
  v65 = *(&off_1010A0B50 + (v38 ^ 0x2C8D0197)) - 1741551406;
  v66 = v42 ^ 0x92 ^ v44;
  v67 = v55;
  *(v41 - 192) = v45[v55 ^ 0x61];
  v68 = *&v65[4 * v64];
  v69 = *&v65[4 * (v57 ^ 0xBE ^ v59)];
  v70 = 1425510835 * v68 + 2050827906;
  v71 = 1425510835 * *&v65[4 * v66] + 2050827906;
  v72 = 1425510835 * *&v65[4 * (v53 ^ v54 ^ 0x86)] + 2050827906;
  v73 = 1425510835 * v69 + 2050827906;
  v74 = *(v41 - 99);
  v75 = v45[v74 ^ 0x9C];
  v76 = v49[*(v41 - 101) ^ 0x31];
  v77 = v76 - 98;
  *(v41 - 200) = v76 + (~(2 * (v76 - 98)) | 0x15);
  v78 = v47[*(v41 - 106) ^ 0x25];
  v79 = v47[*(v41 - 102) ^ 0x20];
  v80 = v47[*(v41 - 98) ^ 0xDLL];
  LOBYTE(v76) = v49[*(v41 - 97) ^ 0x26];
  v81 = *(&off_1010A0B50 + (v38 - 747438577)) - 1297294458;
  v82 = *(&off_1010A0B50 + (v38 ^ 0x2C8D06AD)) - 369751686;
  v83 = (16 * (v76 - 98)) ^ (8 * (v76 - 98)) ^ (v76 - 2 * ((v76 - 98) & 0x17 ^ v76 & 1) + 52);
  v84 = *(&off_1010A0B50 + (v38 - 747435333)) - 1364968046;
  v85 = (v80 ^ 0xF0AC06E4) + (v80 ^ 0x50);
  LODWORD(v80) = *&v82[4 * (v80 ^ 0xB5)];
  *(v41 - 136) = v40;
  v86 = (v80 ^ 0xE3545605) & (2 * (v80 & 0xC8666696)) ^ v80 & 0xC8666696;
  v87 = ((2 * (v80 ^ 0xF3D4DB21)) ^ 0x77657B6E) & (v80 ^ 0xF3D4DB21) ^ (2 * (v80 ^ 0xF3D4DB21)) & 0x3BB2BDB6;
  v88 = (v87 ^ 0x23203820) & (4 * v86) ^ v86;
  v89 = ((4 * (v87 ^ 0x8928491)) ^ 0xEECAF6DC) & (v87 ^ 0x8928491) ^ (4 * (v87 ^ 0x8928491)) & 0x3BB2BDB4;
  v90 = (v89 ^ 0x2A82B480) & (16 * v88) ^ v88;
  v91 = ((16 * (v89 ^ 0x11300923)) ^ 0xBB2BDB70) & (v89 ^ 0x11300923) ^ (16 * (v89 ^ 0x11300923)) & 0x3BB2BDB0;
  v92 = v90 ^ 0x3BB2BDB7 ^ (v91 ^ 0x3B229900) & (v90 << 8);
  LODWORD(v74) = ((-(v74 ^ v75 ^ 0x3C) ^ (1555981384 - (v74 ^ v75 ^ 0x5CBE6474)) ^ 0x7031D47D ^ ((v74 ^ v75 ^ 0x3C) - ((2 * (v74 ^ v75 ^ 0x3C)) & 0xFA) + 1882313853)) + 1555981384) ^ *&v81[4 * (v74 ^ v75 ^ 1)] ^ v70 ^ (v70 >> 2) ^ (v70 >> 5) ^ (v84[v83 ^ 0xDD] >> 1) & 0x69 ^ v84[v83 ^ 0xDD] ^ (((v85 - ((2 * v85) & 0x601008C6) + 861570147) ^ v80 ^ (2 * ((v92 << 16) & 0x3BB20000 ^ v92 ^ ((v92 << 16) ^ 0x3DB70000) & (((v91 ^ 0x902487) << 8) & 0x3BB20000 ^ 0x9020000 ^ (((v91 ^ 0x902487) << 8) ^ 0x32BD0000) & (v91 ^ 0x902487)))) ^ 0xFF3D999B) + ((2 * ((v80 ^ ((v80 ^ 0x3AA7EDB8) - 222196946) ^ ((v80 ^ 0x272302F2) - 280664984) ^ ((v80 ^ 0x94E28997) + 1552215811) ^ ((v80 ^ 0x3EFFFFB7) + 1989777699) ^ 0x50A002F0) & v85 ^ (v85 & 0x2028019A | 0x351B000))) ^ 0x86A36400));
  v93 = *(&off_1010A0B50 + (v38 ^ 0x2C8D0179)) - 391997746;
  v94 = *&v81[4 * (*(v41 - 168) ^ 0x76)] ^ *(v41 - 168) ^ 0x76 ^ v71 ^ (v71 >> 2) ^ (v71 >> 5) ^ ((v48 ^ 0x22) + (v48 ^ 0xF0AC0696) - 932813162 + *&v82[4 * (v48 ^ 0xC7)]) ^ (v84[((16 * v51) ^ (8 * v51)) ^ 0xF6 ^ (*(v41 - 184) + 22)] >> 1) & 0x69 ^ v84[((16 * v51) ^ (8 * v51)) ^ 0xF6 ^ (*(v41 - 184) + 22)];
  v95 = *(&off_1010A0B50 + (v38 ^ 0x2C8D0F12)) - 1433638015;
  v96 = *(&off_1010A0B50 + (v38 ^ 0x2C8D05DD)) - 686659766;
  v97 = *(&off_1010A0B50 + (v38 ^ 0x2C8D09CD)) - 1399469094;
  LOBYTE(v75) = v97[BYTE3(v74) ^ 0xD1] ^ 0x89;
  LOBYTE(v71) = v67 ^ 0xB4 ^ *(v41 - 192);
  v98 = (8 * v56) ^ (16 * v56) ^ 0x53 ^ (*(v41 - 176) - 96);
  LOBYTE(v92) = v74 ^ 0x30;
  v99 = *&v95[4 * (BYTE1(v74) ^ 0xB)] ^ __ROR4__(*&v93[4 * (BYTE2(v74) ^ 0x38)], 27) ^ (*&v96[4 * (v74 ^ 6)] - 2024008895) ^ v94 ^ BYTE1(v74) ^ 0xB59F02E4 ^ (v75 ^ (32 * v75));
  v100 = *&v81[4 * (*(v41 - 144) & 0xF7 ^ 0xD1 ^ *(v41 - 160))] ^ *(v41 - 144) & 0xF7 ^ 0xD1 ^ *(v41 - 160) ^ ((v79 ^ 0xF) + (v79 ^ 0xF0AC06BB) - 932813162 + *&v82[4 * (v79 ^ 0xEA)]) ^ (v84[((16 * v77) ^ (8 * v77)) ^ 0xDE ^ (*(v41 - 200) - 108)] >> 1) & 0x69 ^ v84[((16 * v77) ^ (8 * v77)) ^ 0xDE ^ (*(v41 - 200) - 108)] ^ ((v73 & 0xB4CA6024 ^ 0x808C0E11 ^ ((v73 >> 5) ^ (v73 >> 2)) & 0x34CA6024) & ~(((v73 >> 5) ^ (v73 >> 2)) & 0xB359FDB ^ v73 & 0x4B359FDB) | (((v73 >> 5) ^ (v73 >> 2)) & 0xB359FDB ^ v73 & 0x4B359FDB) & 0x4B3191CA);
  v123 = v71 ^ *&v81[4 * v71] ^ v72 ^ (v72 >> 2) ^ (v72 >> 5) ^ ((v78 ^ 0xAB) + (v78 ^ 0xF0AC061F) - 932813162 + *&v82[4 * (v78 ^ 0x4E)]) ^ (v84[v98] >> 1) & 0x69 ^ v84[v98] ^ 0x7C8990F;
  LODWORD(v81) = v99 ^ v123;
  v101 = v99 ^ v123 ^ v100;
  v102 = v101 ^ v74 ^ 0xA117F830 ^ 0xB39EC5D4;
  v103 = (v99 ^ v123 ^ v100 ^ v74 ^ 0x30) ^ 0xE;
  LOBYTE(v74) = v97[((v101 ^ v74 ^ 0xA117F830) >> 24) ^ 0x1BLL] ^ 0x83;
  v104 = *&v95[4 * (BYTE1(v102) ^ 0xDD)] ^ __ROR4__(*&v93[4 * (BYTE2(v102) ^ 0x4D)], 27) ^ (v74 ^ (32 * v74)) ^ v99 ^ BYTE1(v102) ^ (*&v96[4 * (((-v103 ^ (171 - ((v99 ^ v123 ^ v100 ^ v92) ^ 0xA5)) ^ 0x398C8746 ^ (v103 - ((2 * v103) & 0x8C) + 965510982)) + 171) ^ 0xFA)] - 2024008895);
  v105 = v104 ^ 0x52A67D8C ^ v100;
  v106 = v105 ^ v102 ^ 0x2DE9E952;
  LODWORD(v80) = BYTE1(v106);
  v107 = *&v95[4 * (BYTE1(v106) ^ 0x50)] ^ __ROR4__(*&v93[4 * (BYTE2(v106) ^ 0x8B)], 27) ^ (*&v96[4 * ((v105 ^ v102) ^ 0x57)] - 2024008895);
  v108 = v81 ^ 0x9B187787 ^ v104 ^ 0x52A67D8C;
  LOBYTE(v103) = v97[((v105 ^ v102) >> 24) ^ 0xE5] ^ 0x1F;
  v122 = v107 ^ v104 ^ 0x52A67D8C ^ v80 ^ (v103 ^ (32 * v103));
  LODWORD(v84) = v122 ^ 0xD01D38B2 ^ v108;
  LODWORD(v81) = v84 ^ 0x37D494D7 ^ v102;
  v109 = v105 ^ 0xC8987610 ^ v84 ^ 0x37D494D7;
  LOBYTE(v107) = v97[(v81 >> 24) ^ 0x4DLL] ^ 6;
  v110 = *&v95[4 * (BYTE1(v81) ^ 0x3C)] ^ __ROR4__(*&v93[4 * (BYTE2(v81) ^ 0x5E)], 27) ^ (*&v96[4 * (v122 ^ 0xB2 ^ v108 ^ 0xD7 ^ v102 ^ 0xA4)] - 2024008895) ^ BYTE1(v81) ^ (v107 ^ (32 * v107));
  v111 = v108 ^ 0x9612519E ^ v110;
  LODWORD(v74) = v111 ^ v109 ^ v81;
  v112 = v74 ^ 0x916BB8C4;
  LOBYTE(v74) = v97[BYTE3(v74) ^ 0x12] ^ 0x64;
  LODWORD(v81) = *&v95[4 * (BYTE1(v74) ^ 0xBA)] ^ __ROR4__(*&v93[4 * (BYTE2(v74) ^ 0x34)], 27) ^ (*&v96[4 * ((v111 ^ v109 ^ v81) ^ 0x39)] - 2024008895) ^ v110 ^ v122 ^ 0xD01D38B2 ^ BYTE1(v74) ^ 0x223A5DC1 ^ (v74 ^ (32 * v74));
  v113 = v81 ^ v109;
  LOBYTE(v110) = v97[((v113 ^ v112) >> 24) ^ 0x66] ^ 0xE2;
  v121 = *&v95[4 * (((v113 ^ v112) >> 8) ^ 0x21)] ^ __ROR4__(*&v93[4 * (((v113 ^ v112) >> 16) ^ 0xCD)], 27) ^ (*&v96[4 * ((v113 ^ v112) ^ 0xB1)] - 2024008895) ^ v81 ^ ((v113 ^ v112) >> 8) ^ (v110 ^ (32 * v110));
  v114 = v121 ^ 0x7E1F2797 ^ v81 ^ v111;
  LOBYTE(v110) = v97[((v114 ^ v112) >> 24) ^ 0xE9] ^ 0xED;
  v120 = *&v95[4 * (((v114 ^ v112 ^ 0x6BC7) >> 8) ^ 0xE7)] ^ __ROR4__(*&v93[4 * (((v114 ^ v112 ^ 0xAF2A6BC7) >> 16) ^ 0xB3)], 27) ^ (*&v96[4 * ((v114 ^ v112) ^ 0xBF)] - 2024008895) ^ v121 ^ 0x7E1F2797 ^ ((v114 ^ v112 ^ 0x6BC7) >> 8) ^ (v110 ^ (32 * v110));
  LODWORD(v79) = v114 ^ 0xE3C75345 ^ v120 ^ 0xFCE44798;
  v115 = v79 ^ v113 ^ v112;
  LOBYTE(v107) = v97[HIBYTE(v115) ^ 0x6CLL];
  v116 = *&v95[4 * (BYTE1(v115) ^ 0x4C)] ^ __ROR4__(*&v93[4 * (BYTE2(v115) ^ 1)], 27) ^ (*&v96[4 * ((v79 ^ v113 ^ v112) ^ 0x3F)] - 2024008895) ^ v120 ^ 0xFCE44798 ^ BYTE1(v115) ^ (v107 ^ (32 * v107));
  v117 = v114 ^ v113 ^ 0x1F216FC3 ^ v79;
  v119 = v116 ^ 0xB314E80D ^ v79 ^ 0xEA02A51D ^ v117;
  LOBYTE(v80) = v97[((v119 ^ v115) >> 24) ^ 0xB1] ^ 0xF4;
  *(v41 - 144) = *&v95[4 * (((v119 ^ v115) >> 8) ^ 0xAF)] ^ __ROR4__(*&v93[4 * (((v119 ^ v115) >> 16) ^ 0xB8)], 27) ^ (*&v96[4 * ((v119 ^ v115) ^ 0xF)] - 2024008895) ^ v116 ^ 0xB314E80D ^ ((v119 ^ v115) >> 8) ^ (v80 ^ (32 * v80)) ^ 0x46646233 ^ v117 ^ v119 ^ v115 ^ 0x48CC49B6 ^ 0xCAE1F6DB;
  return (*(a38 + 8 * ((14814 * (v38 > 0xC94BE621)) ^ (v38 - 747432813))))((-1195092422 - (*(v41 - 128) ^ 0xEB)) ^ *(*(&off_1010A0B50 + (v38 - 747437836)) + 4 * (*(v41 - 128) ^ 0x91) - 543524463) ^ *(*(&off_1010A0B50 + (v38 ^ 0x2C8D003C)) + (*(v41 - 125) ^ 0x4DLL) - 2097156239) ^ *(*(&off_1010A0B50 + (v38 ^ 0x2C8D0E35)) + 4 * (*(v41 - 127) ^ 0x1CLL) - 870091486) ^ *(v41 - 126) ^ *(*(&off_1010A0B50 + (v38 - 747434261)) + 4 * (*(v41 - 126) ^ 0x5ELL) - 712105150) ^ 0x55E447E4u);
}

uint64_t sub_1001949F8@<X0>(unsigned int a1@<W0>, int a2@<W3>, unsigned int a3@<W4>, int a4@<W5>, int a5@<W6>, int a6@<W7>, unsigned int a7@<W8>)
{
  v10 = a7 > a1;
  v11 = a5 + a2;
  v12 = v10 ^ (v11 < a3);
  v13 = v11 < v8;
  if (!v12)
  {
    v10 = v13;
  }

  return (*(v9 + 8 * ((14 * (a4 & ~((a6 + v7) ^ v10))) ^ a6)))();
}

uint64_t sub_100194AC4@<X0>(uint64_t a1@<X8>)
{
  v9 = *(v4 + a1);
  *(v1 + a1) = v9;
  return (*(v8 + 8 * (v5 ^ v7 ^ (((((v9 - v5) | (v5 - v9)) >> (14 * (v5 ^ v2) + 69)) & 1) * (((v5 + 74) | v3) ^ v6)))))();
}

uint64_t sub_100194B18(int a1, uint64_t a2, int a3)
{
  v12 = v8 < v9;
  *(*(v11 - 184) + v3) = *(v6 + (v3 & 0xF)) ^ *(v7 + v3) ^ *((v3 & 0xF) + v4 + 2) ^ ((v3 & 0xF) * (a3 - 93)) ^ *((v3 & 0xF) + v5 + 1);
  if (v12 == v3 + 1 > 0xE839293A)
  {
    v12 = v3 + 398907078 < v8;
  }

  return (*(v10 + 8 * ((v12 * a1) ^ a3)))();
}

uint64_t sub_100194BB4()
{
  v3 = (v1 - 2318) | 0x22;
  v4 = (v1 + 5045) | 0x8B;
  v5 = 0x1C71C71C71C71C72 * (((v2 ^ ((v2 ^ 0x8D81E5C7) + 843843413) ^ ((v2 ^ 0x5997DF46) - 430293546) ^ ((v2 ^ 0x7BDBF817) - 1005184379) ^ ((v4 ^ v3 ^ 0x50325806) + (v2 ^ 0xEFFFDFFA)) ^ 0x32B8CC67C1E95B17) - 0x32B8CC67E1EBFE3DLL) ^ ((v2 ^ ((v2 ^ 0x8D81E5C7) + 843843413) ^ ((v2 ^ 0x5997DF46) - 430293546) ^ ((v2 ^ 0x7BDBF817) - 1005184379) ^ ((v4 ^ v3 ^ 0x50325806) + (v2 ^ 0xEFFFDFFA)) ^ 0x77BAD5655F306292) + 0x8452A9A80CD3848) ^ ((v2 ^ ((v2 ^ 0x8D81E5C7) + 843843413) ^ ((v2 ^ 0x5997DF46) - 430293546) ^ ((v2 ^ 0x7BDBF817) - 1005184379) ^ ((v4 ^ v3 ^ 0x50325806) + (v2 ^ 0xEFFFDFFA)) ^ 0x45021902DEEB24E9) + 0x3AFDE6FD01167E3DLL)) + 0x70DEFCFF4CBADAF9;
  v6 = v5 ^ ((v5 ^ 0x2FB6BDEA60F66BAELL) + 0x32EF5B65617EB79DLL) ^ ((v5 ^ 0xC57F9236BE5C3516) - 0x27D98B46402B16DBLL) ^ ((v5 ^ 0xB6F8CFD29D22E28ELL) - 0x545ED6A26355C143) ^ ((v5 ^ 0xBE97F97EBDFF9FFBLL) - 0x5C31E00E4388BC36);
  v7 = ((v6 ^ 0x41D1DC9E3A9102FALL) - 0xF49A7FC140DE248) ^ ((v6 ^ 0x9EC2FBB75D5DCBD7) + 0x2FA57F2A8C3ED49BLL);
  return (*(v0 + 8 * ((44163 * (__CFADD__(9 * (v7 ^ ((v6 ^ 0x3DB53E5999BBEAE0) - 0x732D453BB7270A52)), 0xE3172A95849DF77) + (((v7 ^ ((v6 ^ 0x3DB53E5999BBEAE0) - 0x732D453BB7270A52)) * 9uLL) >> 64) + 9 * ((__CFADD__(v6 ^ 0x41D1DC9E3A9102FALL, 0xF0B65803EBF21DB8) - 1) ^ (__CFADD__(v6 ^ 0x9EC2FBB75D5DCBD7, 0x2FA57F2A8C3ED49BLL) - 1) ^ (__CFADD__(v6 ^ 0x3DB53E5999BBEAE0, 0x8CD2BAC448D8F5AELL) - 1)) == -6)) ^ v1)))();
}

uint64_t sub_100194E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, int a43)
{
  *(v48 - 216) = (((a43 - 19680) | 0x3800) + 1876050435) ^ v44;
  *(v48 - 224) = v46 ^ 0x8A33EAAB;
  return (*(v47 + 8 * a43))(v43 ^ 0x59EC3C04u, v45 ^ 0xFB411431);
}

uint64_t sub_100194F00(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  v44.n128_u64[0] = (v41 + 13) & 0xF;
  v44.n128_u64[1] = (v41 + 12) & 0xF;
  v45.n128_u64[0] = (v41 + 11) & 0xF;
  v45.n128_u64[1] = (v41 + 10) & 0xF;
  v46.n128_u64[0] = (v41 + 9) & 0xF;
  v46.n128_u64[1] = v41 & 0xF ^ 8;
  v49.val[0].i64[0] = (v41 + 7) & 0xF;
  v49.val[0].i64[1] = (v41 + 6) & 0xF;
  v49.val[1].i64[0] = (v41 + 5) & 0xF;
  v49.val[1].i64[1] = (v41 + 4) & 0xF;
  v49.val[2].i64[0] = (v41 + 3) & 0xF;
  v49.val[2].i64[1] = (v41 + 2) & 0xF;
  v49.val[3].i64[0] = (v41 + 1) & 0xF;
  v49.val[3].i64[1] = v41 & 0xF;
  v47.n128_u64[0] = 0x2525252525252525;
  v47.n128_u64[1] = 0x2525252525252525;
  return (*(a41 + 8 * v42))((v41 + 14) & 0xF, (v42 + 1799383141) & 0x94BF3FDA, v41 + v43 - 16, (v41 & 0x10) - 16, ((v42 + 1799383141) & 0x94BF3FDA) - 16165, a1, v44, v45, v46, xmmword_100BC76B0, vqtbl4q_s8(v49, xmmword_100BC76B0), v47);
}

uint64_t sub_100195054@<X0>(int a1@<W8>, uint64_t a2, unsigned int a3, uint64_t a4)
{
  a4 = v4;
  a3 = v5 - (&a3 ^ 0x3101CD24) * a1 - 22057;
  v7 = (*(v6 + 8 * (v5 + 10556)))(&a3);
  return (*(v6 + 8 * v5))(v7);
}

uint64_t sub_100195120@<X0>(uint64_t a1@<X5>, uint64_t a2@<X6>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v13 = v6 < v7;
  v14 = (v9 + v5);
  v15 = *v14;
  LODWORD(v14) = 1864610357 * ((*(*(a3 + v12) + (*(a1 + a2) & 0x2D783910)) ^ v14) & 0x7FFFFFFF);
  *(v10 + v5) = *(a4 + ((24251 * (v4 ^ 0xAE51) - 48487) & v5 | (16 * ((1864610357 * (v14 ^ (v14 >> 16))) >> 24)))) ^ v15 ^ (53 * (v14 ^ BYTE2(v14)));
  if (v13 == v5 + 1 > 0xA976C46D)
  {
    v13 = v5 + 1451834259 < v6;
  }

  return (*(v11 + 8 * ((v13 * v8) ^ v4)))();
}

uint64_t sub_100195220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v7 = STACK[0x3D4];
  v8 = (LODWORD(STACK[0x4C8]) + (a6 & 0xBBD27808 ^ 0xE52DE7F7) + LODWORD(STACK[0x3D4]) + 9018 + 576060113) ^ a5;
  v9 = STACK[0x4C4];
  v10 = LODWORD(STACK[0x4C8]) + ((v8 - 1249544036) ^ 0x2FF52A8) * (STACK[0x4C4] & 0xDD80CF03);
  LODWORD(STACK[0x4C8]) = v10;
  LODWORD(STACK[0x4C4]) = (v8 ^ v9 ^ v10 & 0x957E634) - ((2 * (v8 ^ v9 ^ v10 & 0x957E634)) & 0xDB1EF950) + 1838120104;
  LODWORD(STACK[0x4B4]) = v8;
  LODWORD(STACK[0x4B0]) = a6 - (v8 & 0x9A6AED07 ^ 0x1A42A503);
  LODWORD(STACK[0x494]) = LODWORD(STACK[0x3D8]) ^ 0xA8117D46;
  LODWORD(STACK[0x4A8]) = LODWORD(STACK[0x3E4]) ^ 0xCDAF945C;
  LODWORD(STACK[0x484]) = LODWORD(STACK[0x3E0]) ^ 0x679184D9;
  LODWORD(STACK[0x488]) = LODWORD(STACK[0x3D0]) ^ 0xC8778584;
  return (*(v6 + 8 * v7))();
}

uint64_t sub_100195348()
{
  v3 = v2 ^ ((v2 ^ 0xCC0B1D20) + 1942421428) ^ ((v2 ^ 0x3532E477) - 1962998043) ^ ((v2 ^ 0x7FBFBF9F) - 1066246899) ^ 0xB2018266 ^ (((((v0 - 16251) | 0x6086) - 961283810) ^ v2) + 2038020408);
  v4 = 0x2492492492492493 * (((v3 ^ 0xCD985EAF3EB253EDLL) + 0x3267A150C14DAC13) ^ ((v3 ^ 0xC34A6231A318C483) + 0x3CB59DCE5CE73B7DLL) ^ ((v3 ^ 0xED23C9E6F990864) - 0xED23C9E6F990864)) - 0x60EA5C2DE1D2FLL;
  v5 = v4 ^ ((v4 ^ 0x90A13E9598963041) - 0x2E22B7E41D01852) ^ ((v4 ^ 0xD8E38B5A59389158) - 0x4AA09EB1807EB94BLL) ^ ((v4 ^ 0xE5F6DA17C60FF6D5) - 0x77B5CFFC1F49DEC6) ^ ((v4 ^ 0x3FF77A33DEE77FDFLL) + 0x524B9027F85EA834);
  v6 = ((v5 ^ 0x550378BA714EAC4FLL) - 0x5AA521A9B081AB3FLL) ^ ((v5 ^ 0x9DD7AB68E2FF8EB2) + 0x6D8E0D84DCCF763ELL);
  v7 = (__CFADD__(v5 ^ 0x550378BA714EAC4FLL, 0xA55ADE564F7E54C1) - 1) ^ (__CFADD__(v5 ^ 0x9DD7AB68E2FF8EB2, 0x6D8E0D84DCCF763ELL) - 1);
  return (*(v1 + 8 * ((15938 * (__CFADD__(7 * (v6 ^ ((v5 ^ 0x5A97C6394AF70AEELL) - 0x55319F2A8B380D9ELL)), 0x51451AC8ABC04BB5) + (((v6 ^ ((v5 ^ 0x5A97C6394AF70AEELL) - 0x55319F2A8B380D9ELL)) * 7uLL) >> 64) - (v7 ^ (__CFADD__(v5 ^ 0x5A97C6394AF70AEELL, 0xAACE60D574C7F262) - 1)) + 8 * (v7 ^ (__CFADD__(v5 ^ 0x5A97C6394AF70AEELL, 0xAACE60D574C7F262) - 1)) == -4)) ^ v0)))();
}

uint64_t sub_100195624()
{
  v3 = v1 & 0xFFFFFFF7;
  v4 = v3 | ((v3 | 8) << 32);
  v5 = ((((v3 + 6967) + (v3 + 42369) + 3688785879u) ^ v0) - 17) ^ v4;
  return (*(v2 + 8 * (v3 ^ 0xFFFF78E3 ^ (61 * (((v5 & v4) >> (__clz(v5 | 1) ^ 0x3Fu)) & 1)))))();
}

uint64_t sub_10019588C@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  *(a1 + 160) = v6;
  LODWORD(STACK[0x330]) = a2;
  LODWORD(STACK[0x258]) = v4;
  LODWORD(STACK[0x28C]) = v3;
  *(a1 + 96) = 0;
  STACK[0x268] = 0;
  return (*(v5 + 8 * ((((v2 ^ (v6 == 0)) & 1) * ((43 * (v2 ^ 0xCD18)) ^ 0xC197)) ^ v2)))();
}

uint64_t sub_100195A54(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v20.n128_u64[0] = (v18 + 13) & 0xF;
  v20.n128_u64[1] = (v18 + 12) & 0xF;
  v21.n128_u64[0] = (v18 + 11) & 0xF;
  v21.n128_u64[1] = (v18 + 10) & 0xF;
  v22.n128_u64[0] = (v18 + 9) & 0xF;
  v22.n128_u64[1] = v19 & 0xF ^ 0xCLL;
  v25.val[0].i64[0] = (v18 + 7) & 0xF;
  v25.val[0].i64[1] = (v18 + 6) & 0xF;
  v25.val[1].i64[0] = (v18 + 5) & 0xF;
  v25.val[1].i64[1] = (v18 + 4) & 0xF;
  v25.val[2].i64[0] = (v18 + 3) & 0xF;
  v25.val[2].i64[1] = (v18 + 2) & 0xF;
  v25.val[3].i64[0] = (v18 + 1) & 0xF;
  v25.val[3].i64[1] = v18 & 0xF;
  v23.n128_u64[0] = 0x5757575757575757;
  v23.n128_u64[1] = 0x5757575757575757;
  return (*(a17 + 8 * (v17 ^ 0x9888C630)))((v18 + 14) & 0xF, 1381 * (v17 ^ 0x9888D824), v18 - 16, (v18 & 0x10) - 16, -45585, a1, v20, v21, v22, xmmword_100BC76B0, vqtbl4q_s8(v25, xmmword_100BC76B0), v23);
}

uint64_t sub_100195B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  v43 = ((v41 ^ 0x927E7FC3) + 1108461218) ^ v41 ^ ((v41 ^ 0x7FDF3FFF) - 1347385698) ^ ((v41 ^ 0xEBE35397) + v40 + 999052858) ^ ((v41 ^ 0x1C4B9E2E ^ ((v40 + 553678172) | 0x1498C100)) - 104993707);
  v44 = v42 - 167396639 + (((v43 ^ 0x6394DB28) - 241730319) ^ ((v43 ^ 0x74D661C8) - 422197743) ^ ((v43 ^ 0x97A530C6) + 94803743)) + 742682212;
  v45 = (v44 ^ 0xBFEFFFF6) + 637542116;
  v46 = *(&a39 + a33);
  v47 = (v46 ^ 0xC76FBD43) & (2 * (v46 & 0xD06FB963)) ^ v46 & 0xD06FB963;
  v48 = ((2 * (v46 ^ 0xC7E8FF41)) ^ 0x2F0E8C44) & (v46 ^ 0xC7E8FF41) ^ (2 * (v46 ^ 0xC7E8FF41)) & 0x17874622;
  v49 = v48 & (4 * v47) ^ v47;
  v50 = (4 * v48) ^ 0x42050880;
  v51 = v46 ^ (2 * (v50 & (v48 ^ 0x7060400) & (16 * v49) ^ v49));
  v52 = v51 ^ v44 ^ ((v44 ^ 0xBA5B67AC) + 599033530) ^ ((v44 ^ 0x8BEB518D) + 302297241) ^ ((v44 ^ 0xE84FD73D) + 1906325033) ^ v45;
  v53 = v39 + (((v52 ^ 0x83351039) - 2030027325) ^ ((v52 ^ 0x9630A038) - 1845129788) ^ ((v52 ^ 0xAF7E1788) - 1421133196));
  return (*(a36 + 8 * (v40 | (2 * (((v53 + 304164592) & 7) != 2)))))(v53, 2873834100, 2449837508, v45, v51, v49, v50, 117834752, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_100195F2C@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W7>, int a8@<W8>)
{
  v23 = (((v10 ^ 0xC83C5AD9) + 935568679) ^ ((v10 ^ 0x316C40B) - 51823627) ^ ((((v9 ^ v11) * a1) ^ v10 ^ v18) + v12)) + 1581195404;
  v24 = (v23 ^ 0xDAB0C872) & (2 * (v23 & 0xD8A0CD78)) ^ v23 & 0xD8A0CD78;
  v25 = ((2 * (v23 ^ 0x5BB0DA62)) ^ 0x6202E34) & (v23 ^ 0x5BB0DA62) ^ (2 * (v23 ^ 0x5BB0DA62)) & v20;
  v26 = v25 ^ 0x8110110A;
  v27 = (v25 ^ 0x2000600) & (4 * v24) ^ v24;
  v28 = ((4 * v26) ^ v8) & v26 ^ (4 * v26) & v19;
  v29 = (v28 ^ a7) & (16 * v27) ^ v27;
  v30 = ((16 * (v28 ^ a8)) ^ v15) & (v28 ^ a8) ^ (16 * (v28 ^ a8)) & v17;
  v31 = v29 ^ v20 ^ (v30 ^ a2) & (v29 << 8);
  v32 = (v31 << 16) & v22 ^ v31 ^ ((v31 << 16) ^ v14) & (((v30 ^ v21) << 8) & v22 ^ (((v30 ^ v21) << 8) ^ v16) & (v30 ^ v21) ^ 0x3000000);
  return (*(v13 + 8 * ((60 * (((v23 ^ (2 * v32) ^ a4) & (v10 ^ a3) ^ (v23 ^ (2 * v32)) & a6) == a5)) ^ v9)))(449);
}

uint64_t sub_1001960B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *v66 = v64;
  v66[1] = *(v63 + 80);
  *(v63 + 80) = a4;
  *(v66[1] + 24) = a4;
  *(v66 - 2) = ((8 * v65) ^ 0x18660u) - *(v66 - 2) + 0x79C4BC1D8A3FBDD8;
  return (*(a63 + 8 * v65))();
}

void sub_100196168(_DWORD *a1)
{
  v1 = *a1 + 297845113 * ((((2 * a1) | 0xEFF0A7FA) - a1 - 2012763133) ^ 0xCB4F63);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10019654C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned __int16 a13)
{
  v15 = a1 - 17204;
  *v13 = (((v15 - 4141) | 0x1001) + 28172) ^ a13;
  return (*(v14 + 8 * v15))();
}

uint64_t sub_10019666C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x250] = a24;
  *(v65 + 56) = 0;
  return (*(v64 + 8 * SHIDWORD(a23)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, v63, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_100196730(__n128 a1)
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
  v8.n128_u64[0] = 0x3F3F3F3F3F3F3F3FLL;
  v8.n128_u64[1] = 0x3F3F3F3F3F3F3F3FLL;
  return (*(v4 + 8 * v3))((v1 + 14) & 0xF, v1 - 16, (v2 & 0x10) - 16, v3 - 6168, a1, v5, v6, v7, xmmword_100BC76B0, vqtbl4q_s8(v10, xmmword_100BC76B0), v8);
}

void sub_100196814(uint64_t a1)
{
  v1 = *(a1 + 36) - 353670337 * (((a1 | 0x6E172F4F) - a1 + (a1 & 0x91E8D0B0)) ^ 0xDA36D772);
  v2 = *(a1 + 48) ^ 0x29DCF992F3801DC7;
  v4 = (&v3 & 0x14548A12A4252920) + (v2 & 0x14548A12A4252922) + 2 * (&v3 & 0x42A150A849489290 & v2) + (((v2 & 0x42A150A849489294) - (&v3 & 0x42A150A849489290) + 0x542A15092912528) & 0x42A150A849489294) + 2 * (&v3 & 0xA90A254512924448 & v2) + (((v2 & 0xA90A254512924449) - (&v3 & 0xA90A254512924448) + 0x52144A8A25248892) & 0xA90A254512924449);
  v3 = (v4 & 0xDED75ADB) - 1677720997 + (((2 * v4) & 0x514A48 | v4 & 0x2128A524) ^ 0x28A524);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100196EEC(char a1, int a2)
{
  v11 = v8 - 1;
  *(v10 + v11) ^= *(v4 + (v11 & 0xF)) ^ ((v11 & 0xF) * a1) ^ *(v5 + v6 + (v11 & 0xF) + v7) ^ *(v3 + v6 + (v11 & 0xF) + v7);
  return (*(v9 + 8 * (((v11 == 0) * a2) ^ v2)))();
}

uint64_t sub_100196F98()
{
  v8 = 23958;
  atomic_compare_exchange_strong((*(v4 + 8 * v7) + v1), &v8, v2);
  return (*(v5 + 8 * (((v8 == v3) * v0) ^ v6)))();
}

uint64_t sub_10019705C@<X0>(uint64_t a1@<X8>)
{
  v9 = v6 - 1;
  *(a1 + v9) ^= *(v2 + (v9 & 0xF)) ^ *(v3 + (v9 & 0xF)) ^ ((v9 & 0xF) * v5) ^ *(v1 + (v9 & 0xF));
  return (*(v8 + 8 * (((v9 == 0) * v7) ^ v4)))();
}

uint64_t sub_1001970A4@<X0>(uint64_t a1@<X8>)
{
  v3 = STACK[0x3B0];
  STACK[0x4B8] = v1 + 1;
  v4 = *(a1 + (STACK[0x5DE] & 3 ^ 2));
  return (*(v2 + 8 * ((507 * ((((v4 ^ 0xC6u) - 13 * ((330382100 * (v4 ^ 0xC6u)) >> 32) + 7) & 0x1C) != 0)) ^ v3)))();
}

uint64_t sub_1001972CC(uint64_t a1, int a2, char a3, int a4)
{
  v14 = v10 - 1;
  *(v12 + v14) = *(v5 + (v14 & 0xF)) ^ *(v4 + v14) ^ ((v14 & 0xF) * a3) ^ *(v7 + (v14 & 0xF)) ^ *(v6 + (v14 & 0xF) + (a2 ^ v8 ^ v11));
  return (*(v13 + 8 * (((v14 != 0) * a4) | v9)))();
}

uint64_t sub_100197400()
{
  v2 = (*(v1 + 8 * (v0 + 40278)))(LODWORD(STACK[0xAEC]) ^ 0xE9D5C711);
  v3 = STACK[0x408];
  STACK[0xC58] = v2;
  if (v2)
  {
    v4 = -371865839;
  }

  else
  {
    v4 = 371891397;
  }

  LODWORD(STACK[0xC64]) = v4;
  return (*(v3 + 8 * (((v2 != 0) * (3677 * (((v0 - 11538) | 0x1001) ^ 0x1039) - 29402)) ^ v0)))();
}

uint64_t sub_1001974B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21)
{
  if (((2 * a20) & 0xE1FEB0DA) + 802357241 + ((((a21 + 225065035) & 0xF2957FBF) - 251704128) ^ a20) == a21 + 550634692)
  {
    v22 = 157686605;
  }

  else
  {
    v22 = 157644581;
  }

  return (*(v21 + 8 * (a21 ^ (120 * (a16 - ((2 * a13) & 0x47266796) == 358478169)))))(a1, v22);
}

uint64_t sub_100197574@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unsigned int a28)
{
  v30 = a28 < 0xF81E4A5F;
  if (v30 == (a1 - 2003400990) < 0xF81E4A5F)
  {
    v30 = a1 - 2003400990 < a28;
  }

  return (*(v29 + 8 * (((((v28 ^ 0x38FC) - 7377) ^ 0x2B6B) * !v30) ^ v28)))();
}

uint64_t sub_1001976DC(double a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5)
{
  a2.n128_u16[0] = -8225;
  a2.n128_u8[2] = -33;
  a2.n128_u8[3] = -33;
  a2.n128_u8[4] = -33;
  a2.n128_u8[5] = -33;
  a2.n128_u8[6] = -33;
  a2.n128_u8[7] = -33;
  a3.n128_u16[0] = 24415;
  a3.n128_u8[2] = 95;
  a3.n128_u8[3] = 95;
  a3.n128_u8[4] = 95;
  a3.n128_u8[5] = 95;
  a3.n128_u8[6] = 95;
  a3.n128_u8[7] = 95;
  return (*(v9 + 8 * v6))(-a5, v7 + v5 - 8, v8 + v5 - 8, (v6 - 14018) ^ 0x1514, xmmword_100F523B0, a2, a3);
}

uint64_t sub_10019785C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a8 + 8 * (((v8 == (((v9 | 0x4400) - 22245) ^ 0xFEBC)) * ((((v9 | 0x4400) - 25048) | 0x14A0) + 43881)) ^ (v9 | 0x4400)));
  LODWORD(STACK[0x290]) = 371891407;
  return v10(a1, a7);
}

uint64_t sub_10019794C@<X0>(int a1@<W8>)
{
  v4 = *(v2 + 4);
  if (v4 + 1096397072 >= ((v1 - 19974) | 0x100) - 21376)
  {
    v5 = a1;
  }

  else
  {
    v5 = -a1;
  }

  *(v2 + 4) = v5 + v4;
  return (*(v3 + 8 * v1))();
}

uint64_t sub_100197A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, int a21, int a22, unsigned __int8 a23)
{
  *(v24 - 136) = a20 ^ 0x59615672;
  *(v24 - 128) = ((a7 + 41330) & (a23 << 8) | 0xA7570078) ^ a19 & ((a23 << 8) ^ 0xFFFF64FF);
  *(v24 - 124) = a21 ^ 0x66AAC96A;
  *(v24 - 132) = a22 ^ 0x5713E17B;
  return (*(v23 + 8 * (a7 + 8119)))();
}

uint64_t sub_100197ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, char *a16, int a17, unsigned int a18, uint64_t a19, int a20, unsigned int a21)
{
  v26 = 139493411 * (((&a15 ^ 0x2469BEBB | 0x847345B4) - ((&a15 ^ 0x2469BEBB) & 0x847345B0)) ^ 0xAC371A4A);
  a16 = &a10;
  LOBYTE(a15) = (v26 & 1) == 0;
  a17 = (v25 + 27259) ^ v26;
  (*(v21 + 8 * (v25 + 34497)))(&a15);
  v27 = 1022166737 * (((&a15 | 0x728F7A28) - (&a15 & 0x728F7A28)) ^ 0xC89F9BBA);
  a18 = v27 + 1577884046 + ((((a14 - ((2 * a14) & 0xC8EFA36) + 105348379) ^ 0x8E20E6F4) + (((v25 - 7728) | 0x8012) ^ 0x71DFBF1E)) ^ (((a14 - ((2 * a14) & 0xC8EFA36) + 105348379) ^ 0x6EB9EA5A) - 1857677914) ^ (((a14 - ((2 * a14) & 0xC8EFA36) + 105348379) ^ 0xE6DE71B5) + 421629515));
  a19 = v23;
  a15 = v24;
  a16 = v22;
  a20 = v25 - v27 - 6696;
  a21 = v27 - 1917970231;
  v28 = (*(v21 + 8 * (v25 ^ 0x8FDE)))(&a15);
  return (*(v21 + 8 * v25))(v28);
}

uint64_t sub_100197D14(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 16) == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = v2 || *a1 == 0;
  v1 = *(a1 + 8) ^ (906386353 * ((a1 - 2 * (a1 & 0x638C2BB) - 2043100485) ^ 0xB7390F9F));
  return (*(*(&off_1010A0B50 + v1 - 31817) + 8 * ((v4 * (284 * (v1 ^ 0x80CA) - 18997)) ^ v1) - 810145054))();
}

uint64_t sub_100197DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *v65 = *v64;
  LODWORD(STACK[0x4BC]) = v66;
  v68[72] = STACK[0x220];
  v69 = STACK[0x828];
  LODWORD(STACK[0x4C8]) = STACK[0x828];
  LODWORD(STACK[0x4CC]) = v69 - ((v69 << ((a9 - 4) ^ 0xDC)) & 0xD3AB8E22) - 371865839;
  v68[13] = &STACK[0x600];
  v68[74] = &STACK[0x628];
  v68[75] = &STACK[0x628];
  return (*(v67 + 8 * a9))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63, a64);
}

void sub_100197EDC(uint64_t a1)
{
  v1 = 155453101 * (((a1 | 0x205BDD1) - (a1 & 0x205BDD1)) ^ 0xE423A61E);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_100198028@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x490]) = a61;
  LODWORD(STACK[0x47C]) = v66;
  LODWORD(STACK[0x480]) = v65;
  LODWORD(STACK[0x484]) = v67;
  LODWORD(STACK[0x488]) = a64;
  *STACK[0x470] = a1;
  return (*(v68 + 8 * (a65 + 17041)))();
}

void sub_100198190(uint64_t a1)
{
  v1 = *(a1 + 12) + 353670337 * (a1 ^ 0xB421F83D);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100198404@<X0>(void *a1@<X0>, int a2@<W8>)
{
  if (a1[7])
  {
    v3 = (a1[9] | a1[4]) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  return (*(v2 + 8 * ((v4 * (a2 - 23280 + ((553 * (a2 ^ 0xBA0A)) ^ 0xFFFFBD02))) ^ a2)))();
}

int *sub_10019854C@<X0>(int *result@<X0>, int a2@<W8>)
{
  if ((a2 ^ 0x5DFFE58F) + ((2 * a2) & 0xBBFE8018) == 1577051535)
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

uint64_t sub_100198644(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  *(v10 - 136) = v7 ^ 0xC5382537;
  *(v10 - 160) = v8 ^ 0x12401129;
  *(v10 - 168) = a2 ^ (a7 + 6692) ^ 0x1C9D9B3;
  *(v10 - 176) = a5 ^ 0x2A3B494C;
  return (*(v9 + 8 * a7))();
}

uint64_t sub_1001986A8()
{
  STACK[0x250] = v1;
  STACK[0x298] = &STACK[0x314];
  LODWORD(STACK[0x340]) = 1475004877;
  return (*(v2 + 8 * v0))(v1);
}

uint64_t sub_1001986E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  v13 = 6436 * v11;
  v14 = ((a11 ^ 0x3BA2ED8) - 214160780) ^ a11 ^ ((a11 ^ 0x87D7E0AE) + 2001855494) ^ (((v11 + 1961447126) ^ a11) - 2073081225) ^ (((6436 * v11) ^ 0xF7BD0A9) + (a11 ^ 0xFFFD7BFF));
  v15 = 7687 * ((6436 * v11) ^ 0xAFFFu);
  v16 = 6436 * v11 - 35783;
  v18 = v14 != 259652436 && ((v15 - 23046) & v14) == 4;
  return (*(v12 + 8 * ((v18 * (v16 ^ 0x3BC6)) ^ v13)))(v15, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_100198888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  LODWORD(a20) = 0;
  *(v29 - 224) = *(v29 - 216) < 0xAA89D998;
  LODWORD(a22) = (v27 ^ 0xA3B5) - 33642;
  v215 = a22 ^ v23 & 0xFFFFFFFA ^ 0x2D2E4BA9;
  v218 = v23 ^ 0x2D2E0BBBLL;
  v30 = *(v24 + v218);
  v213 = v23 & 0xFFFFFFF8 ^ 0x2D2E0BBFLL;
  v31 = *(v24 + v213);
  if (((v30 ^ 0x11) & 2) != 0)
  {
    v32 = -2;
  }

  else
  {
    v32 = 2;
  }

  v33 = v30 ^ *(a16 + ((v32 + (v30 ^ 0x11u)) ^ 0xD5)) ^ 0x80;
  v34 = (((*(a17 + (*(v24 + v215) ^ 0x82)) ^ *(v24 + v215)) << 16) ^ 0xA39A4698) & ~((v31 ^ 0xEF) + 11) | ((v31 ^ 0xEF) + 11) & 0x67;
  v217 = v23 & 0xFFFFFFFB ^ 0x2D2E0BBFLL;
  v211 = v23 & 0xFFFFFFF0 ^ 0x2D2E0BBFLL;
  v216 = v23 & 0xFFFFFFF4 ^ 0x2D2E0BBBLL;
  v35 = (((*(v24 + v217) ^ 0xD2 ^ *(a16 + (*(v24 + v217) ^ 0xC1))) << 24) ^ 0x29415D8D) & (v34 ^ *(a18 + (v31 ^ 0xAB)) ^ 0x5C2ABB80) ^ (v34 ^ *(a18 + (v31 ^ 0xAB))) & 0xA2BE0272;
  v219 = v23 & 0xFFFFFFF7 ^ 0x2D2E0BBBLL;
  v36 = ((*(v24 + v211) ^ 0x65) + 11) ^ *(a18 + (*(v24 + v211) ^ 0x21));
  v37 = *(a18 + (*(v24 + v216) ^ 0xB1)) ^ (((2 * *(v24 + v216)) & 0x16 ^ 2) + (*(v24 + v216) ^ 0xFE));
  v212 = v23 & 0xFFFFFFF1 ^ 0x2D2E0BBFLL;
  v214 = v23 & 0xFFFFFFF5 ^ 0x2D2E0BBBLL;
  v38 = (((*(a16 + (*(v24 + v219) ^ 0xCALL)) ^ *(v24 + v219)) << 24) ^ 0x5C5626D0) & (v37 ^ 0xFFD7AF24) | v37 & 0x2F;
  v39 = *(a19 + (*(v24 + v214) ^ 0x89)) << 8;
  v206 = v23 & 0xFFFFFFF6 ^ 0x2D2E0BBBLL;
  v40 = (*(a17 + (*(v24 + v206) ^ 0x37)) ^ *(v24 + v206)) << 16;
  v207 = v23 & 0xFFFFFFF9 ^ 0x2D2E0BBFLL;
  v204 = v23 & 0xFFFFFFF3 ^ 0x2D2E0BBFLL;
  v41 = ((*(a19 + (*(v24 + v207) ^ 0xFLL)) << 8) ^ 0x70FBC4B3) & (v35 ^ 0x53A0A03A);
  v42 = (*(a16 + (*(v24 + v204) ^ 3)) ^ *(v24 + v204)) << 24;
  v43 = (v42 ^ 0x76FAFFFF) & ((((*(a19 + (*(v24 + v212) ^ 0x32)) << 8) ^ 0x7DF85279) & (v36 ^ 0x7DFAFFAC) | v36 & 0x86) ^ 0x8A4043DA) ^ v42 & 0x8000000;
  v208 = v23 & 0xFFFFFFFD ^ 0x2D2E0BBBLL;
  v44 = *(a19 + (*(v24 + v208) ^ 0x11));
  v210 = v23 & 0xFFFFFFFE ^ 0x2D2E0BBBLL;
  v45 = *(*(v29 - 200) + v210);
  v209 = v23 & 0xFFFFFFF2 ^ 0x2D2E0BBFLL;
  v46 = *(*(v29 - 200) + v209);
  v47 = ((v44 << 8) ^ 0xFFFF1FFF) & ((v33 << 24) ^ 0x1893EC00) | (v44 << 8) & 0x1300;
  v48 = (*(a17 + (v45 ^ 0xAD)) ^ v45) << 16;
  LODWORD(v45) = (((*(a17 + (v46 ^ 0x32)) ^ v46) << 16) ^ 0xA7694D37) & (v43 ^ 0x47BED8);
  v49 = v48 & 0x5C0000 ^ v22 ^ (v48 ^ 0xFFE0FFFF) & (v47 ^ 0xD23045C2);
  v205 = v23 & 0xFFFFFFFC ^ 0x2D2E0BBBLL;
  v50 = *(*(v29 - 200) + v205);
  LODWORD(v46) = v50 ^ 0x9E;
  v51 = -(v50 ^ 0x9E) ^ (68 - (v50 ^ 0xDA)) ^ 0x4D3CCF3F ^ (v46 - 2 * (v46 & 0x3F) + 1295830847);
  v52 = v35 & 0x8F044A4C ^ v25 ^ v41;
  v53 = v40 & 0x120000 ^ HIDWORD(a22) ^ (v40 ^ 0xFF61FFFF) & ((v39 & 0x7A00 | (v38 ^ 0x310DA3AA) & (v39 ^ 0xFFDFDEFF)) ^ 0xF9B63E28);
  v54 = v43 & 0x5838B2C8 ^ v26;
  v55 = *(&off_1010A0B50 + v27 - 21891) - 722760478;
  v56 = *&v55[4 * (HIBYTE(v49) ^ 0xB0)];
  v57 = v54 ^ v45;
  v58 = v56 ^ (v56 >> 3) ^ (v56 >> 2);
  v59 = *(&off_1010A0B50 + v27 - 21362) - 1500376195;
  v60 = (BYTE2(v52) ^ 0xFB1FF913) + *&v59[4 * (BYTE2(v52) ^ 0x57)];
  v61 = ((486881816 - v60) ^ (v60 + a8 - ((2 * (v60 + a8)) & 0xA2A6A68C) + 1364415302) ^ ((v58 ^ 0x86A72279) - (v58 ^ 0x86A72279 ^ (v60 + a8))) ^ 0x51535346) + (v58 ^ 0x86A72279);
  v62 = *(&off_1010A0B50 + v27 - 22132) - 538996631;
  v63 = *(&off_1010A0B50 + (v27 ^ 0x6ECF)) - 1193127062;
  v64 = *&v62[4 * (v57 ^ 0x4B)] ^ ((v57 ^ 0x15) + v28) ^ *&v63[4 * (BYTE1(v53) ^ 0x56)] ^ v61;
  v65 = *&v55[4 * (HIBYTE(v52) ^ 0x98)];
  v66 = v65 ^ ((((v46 + 11) ^ *(a18 + (v51 + 68)) ^ v49) ^ 0x3E) + v28) ^ (v65 >> 3) ^ (v65 >> 2) ^ *&v63[4 * (BYTE1(v57) ^ 0xEF)] ^ *&v62[4 * (((v46 + 11) ^ *(a18 + (v51 + 68)) ^ v49) ^ 0x60)] ^ ((BYTE2(v53) ^ 0xFB1FF91C) + a8 + *&v59[4 * (BYTE2(v53) ^ 0x58)]);
  LODWORD(v45) = *&v55[4 * (HIBYTE(v53) ^ 0x45)];
  v67 = v45 ^ ((v52 ^ 0xE) + v28) ^ (v45 >> 2) ^ (v45 >> 3) ^ *&v63[4 * (BYTE1(v49) ^ 0x68)] ^ ((BYTE2(v57) ^ 0xFB1FF9DB) + a8 + *&v59[4 * (BYTE2(v57) ^ 0x9F)]) ^ *&v62[4 * (v52 ^ 0x50)];
  v68 = *&v55[4 * (HIBYTE(v57) ^ 0x12)];
  v69 = ((v53 ^ 0xBC) + v28) ^ v68 ^ (v68 >> 2) ^ (v68 >> 3) ^ ((BYTE2(v49) ^ 0xFB1FF948) + a8 + *&v59[4 * (BYTE2(v49) ^ 0xC)]) ^ *&v63[4 * ((v52 >> 7) | 0xFFFFFEAB) + 684 + 4 * (BYTE1(v52) ^ 0xBE)] ^ *&v62[4 * (v53 ^ 0xE2)] ^ 0x15834D0C;
  v70 = *&v59[4 * (BYTE2(v66) ^ 0x6A)];
  LODWORD(v45) = ((2 * (v70 ^ 0xE804B735)) ^ 0x15FCE5BA) & (v70 ^ 0xE804B735) ^ (2 * (v70 ^ 0xE804B735)) & 0xAFE72DC;
  v71 = 2 * (v70 & a8);
  v72 = (v45 ^ 0xFC2080) & (4 * (v71 & (v70 ^ 0xE8F0B5E5) ^ v70 & a8)) ^ v71 & (v70 ^ 0xE8F0B5E5) ^ v70 & a8;
  v73 = ((4 * (v45 ^ 0xA021245)) ^ 0x2BF9CB74) & (v45 ^ 0xA021245) ^ (4 * (v45 ^ 0xA021245)) & 0xAFE72DC;
  v74 = (v73 ^ 0xAF84240) & (16 * v72) ^ v72;
  v75 = ((16 * (v73 ^ 0x63089)) ^ 0xAFE72DD0) & (v73 ^ 0x63089) ^ (16 * (v73 ^ 0x63089)) & 0xAFE72D0;
  v76 = v74 ^ 0xAFE72DD ^ (v75 ^ 0xAE62000) & (v74 << 8);
  LODWORD(v46) = (v76 << 16) & 0xAFE0000 ^ v76 ^ ((v76 << 16) ^ 0x72DD0000) & (((v75 ^ 0x18520D) << 8) & 0xAFE0000 ^ 0x8C0000 ^ (((v75 ^ 0x18520D) << 8) ^ 0x7E720000) & (v75 ^ 0x18520D));
  v77 = ((2 * (v70 ^ 0x8557A06D)) ^ 0xCF5ACB0A) & (v70 ^ 0x8557A06D) ^ (2 * (v70 ^ 0x8557A06D)) & 0x67AD6584;
  v78 = (v77 ^ 0x7080100) & (4 * (v71 & (v70 ^ 0xC0F2A1ED) ^ v70 & a8)) ^ v71 & (v70 ^ 0xC0F2A1ED) ^ v70 & a8;
  v79 = ((4 * (v77 ^ 0x20A52485)) ^ 0x9EB59614) & (v77 ^ 0x20A52485) ^ (4 * (v77 ^ 0x20A52485)) & 0x67AD6584;
  v80 = (v79 ^ 0x6A50400) & (16 * v78) ^ v78;
  v81 = ((16 * (v79 ^ 0x61086181)) ^ 0x7AD65850) & (v79 ^ 0x61086181) ^ (16 * (v79 ^ 0x61086181)) & 0x67AD6580;
  v82 = v80 ^ 0x67AD6585 ^ (v81 ^ 0x62844000) & (v80 << 8);
  v83 = v70 ^ (2 * ((v82 << 16) & 0x67AD0000 ^ v82 ^ ((v82 << 16) ^ 0x65850000) & (((v81 ^ 0x5292585) << 8) & 0x67AD0000 ^ 0x42880000 ^ (((v81 ^ 0x5292585) << 8) ^ 0x2D650000) & (v81 ^ 0x5292585))));
  LODWORD(v85) = __ROR4__(__ROR4__(__ROR4__(v69, 4) ^ 0xF0D7F9C2, 28) ^ 0x3284CC45, 1) ^ 0xE6565785;
  HIDWORD(v85) = v85;
  v84 = v85 >> 31;
  v86 = *&v55[4 * (HIBYTE(v64) ^ 0xBE)];
  v87 = v86 ^ (v86 >> 3) ^ (v86 >> 2) ^ *&v63[4 * (BYTE1(v67) ^ 0x13)] ^ *&v62[4 * ((v85 >> 31) ^ 0x6C)] ^ (((v85 >> 31) ^ 0x32) + v28) ^ (((2 * ((v83 ^ 0x240A08E2) & (BYTE2(v66) ^ 0x2D4E7826) ^ v83 & 0x56518108)) ^ 0x8C000000) + (BYTE2(v66) ^ v70 ^ (2 * v46) ^ 0x9A1D97C));
  v88 = ((v67 ^ 0x4CF3B949) >> (v64 & 0x10 ^ 0x10) >> (v64 & 0x10));
  v89 = *&v55[4 * (HIBYTE(v66) ^ 0xD4)];
  v90 = v89 ^ ((v64 ^ 0x7B) + v28) ^ (v89 >> 2) ^ (v89 >> 3) ^ *&v63[4 * (BYTE1(v84) ^ 0xF1)] ^ *&v62[4 * (v64 ^ 0x25)] ^ ((v88 ^ 0xFB1FF932) + a8 + *&v59[4 * (v88 ^ 0x76)]);
  v91 = *&v55[4 * (HIBYTE(v67) ^ 0xDC)];
  v92 = v91 ^ ((v66 ^ 0x95) + v28) ^ (v91 >> 2) ^ (v91 >> 3) ^ *&v62[4 * (v66 ^ 0xCB)] ^ *&v63[4 * (BYTE1(v64) ^ 0xAC)] ^ (*&v59[4 * (BYTE2(v84) ^ 0x79)] + (BYTE2(v84) ^ 0xFB1FF93D) + a8);
  v93 = *&v55[4 * (HIBYTE(v84) ^ 0x4F)];
  v94 = v93 ^ ((v67 ^ 0x49) + v28) ^ (v93 >> 2) ^ (v93 >> 3) ^ *&v63[4 * (BYTE1(v66) ^ 0x82)] ^ ((BYTE2(v64) ^ 0xFB1FF957) + a8 + *&v59[4 * (BYTE2(v64) ^ 0x13)]) ^ *&v62[4 * (v67 ^ 0x17)];
  v95 = *&v55[4 * (HIBYTE(v87) ^ 0xD)];
  v96 = ((((v90 ^ 0x2963D8Eu) >> 16) ^ 0xFB1FF932) + a8 + *&v59[4 * ((((v90 ^ 0x2963D8Eu) >> 16) - (((v90 ^ 0x2963D8Eu) >> 16) ^ 0x76)) ^ 0xFFFFFFFC) + 4 * ((v90 ^ 0x2963D8Eu) >> 16)]) ^ *&v62[4 * (v94 ^ 0xC6)] ^ *&v63[4 * (BYTE1(v92) ^ 0x62)] ^ ((v94 ^ 0x98) + v28) ^ ((((v95 >> 3) ^ (v95 >> 2) ^ v95) & 0xA0B211D ^ 0x47CABED4) & (((v95 >> 3) ^ (v95 >> 2)) & 0x35F4DEE2 ^ v95 & 0xF5F4DEE2 ^ 0xCB6BBD9F) | (((v95 >> 3) ^ (v95 >> 2)) & 0x35F4DEE2 ^ v95 & 0xF5F4DEE2) & 0xB0344022);
  v97 = *&v55[4 * ((v90 ^ 0x2963D8Eu) >> 24)];
  v98 = v97 ^ (v97 >> 3) ^ (v97 >> 2) ^ *&v63[4 * (BYTE1(v94) ^ 0xC7)] ^ ((BYTE2(v92) ^ 0xFB1FF94A) + a8 + *&v59[4 * (BYTE2(v92) ^ 0xE)]) ^ ((v87 ^ 0xAF) + v28) ^ *&v62[4 * (v87 ^ 0xF1)];
  v99 = *&v55[4 * (HIBYTE(v92) ^ 5)];
  LODWORD(v85) = __ROR4__(v99 ^ (v99 >> 3) ^ (v99 >> 2) ^ ((BYTE2(v94) ^ 0xFB1FF98C) + a8 + *&v59[4 * (BYTE2(v94) ^ 0xC8)]) ^ 0x72924AF4 ^ *&v63[4 * (-(BYTE1(v87) ^ 0x59) ^ (170 - (BYTE1(v87) ^ 0xF3)) ^ 0x7687F3ED ^ ((BYTE1(v87) ^ 0x59) + 1988621294 + ((2 * ((BYTE1(v87) ^ 0x59 | 0x7FFFFFED) ^ BYTE1(v87))) ^ 0x97))) + 680], 22) ^ 0xA1A81426;
  HIDWORD(v85) = v85;
  LODWORD(v46) = -(HIBYTE(v94) ^ 0xE7) ^ (144 - (HIBYTE(v94) ^ 0x77)) ^ 0x1C7E0DCF ^ ((HIBYTE(v94) ^ 0xE7) - ((2 * (HIBYTE(v94) ^ 0xE7)) & 0xFFFFFF9F) + 478023119);
  v100 = *&v62[4 * (v90 ^ 0xD0)] ^ (v28 + (v90 ^ 0x8E)) ^ ((((v85 >> 10) - ((v85 >> 10) ^ 0xBA92C32D)) ^ 0xFFFFFFFE) + (v85 >> 10));
  LOBYTE(v94) = BYTE2(v87) ^ 0x97;
  v101 = BYTE2(v87) ^ 0x97;
  v102 = v101 == (v94 + 48);
  v103 = *&v59[4 * (v101 ^ 0x76)] + (v101 ^ 0xFB1FF932) + a8;
  v104 = *&v55[4 * (v46 + 144)];
  v105 = v104 ^ (v104 >> 3) ^ (v104 >> 2) ^ v103;
  v106 = *&v63[4 * (BYTE1(v90) ^ 0x97)] ^ ((v92 ^ 0x73) + v28) ^ *&v62[4 * (v92 ^ 0x2D)] ^ v105 & 0xFFFEFFFF ^ (v105 & 0x10000 | 0x1CF6E06A);
  v107 = *&v55[4 * (HIBYTE(v96) ^ 0xBF)];
  v108 = v107 ^ (v107 >> 3) ^ (v107 >> 2) ^ *&v62[4 * (v106 ^ 0x51)] ^ (*&v59[4 * (BYTE2(v98) ^ 0x6E)] + (BYTE2(v98) ^ 0xFB1FF92A) + a8) ^ ((v106 ^ 0xF) + v28) ^ *&v63[4 * (BYTE1(v100) ^ 0x37)];
  v109 = *&v55[4 * (HIBYTE(v98) ^ 0x25)];
  v110 = v109 ^ (v109 >> 3) ^ (v109 >> 2) ^ *&v63[4 * (BYTE1(v106) ^ 0x15)] ^ __ROR4__((((v96 << 18) ^ 0x800000) + 518518409) ^ __ROR4__(*&v62[4 * (v96 ^ 0x7E)], 14) ^ 0xCA2FFE1, 18) ^ (*&v59[4 * (((v100 ^ 0x3AD59D95u) >> 16) ^ 0x76)] + (((v100 ^ 0x3AD59D95u) >> 16) ^ 0xFB1FF932) + a8);
  LODWORD(v45) = *&v55[4 * ((v100 ^ 0x3AD59D95u) >> 24)];
  LODWORD(v46) = v45 ^ (v45 >> 3) ^ (v45 >> 2) ^ *&v63[4 * (BYTE1(v96) ^ 0x9D)] ^ *&v62[4 * (v98 ^ 0xD0)] ^ (((2 * v98) & 0x172 ^ 0x110) + (v98 ^ 0xFDA24737)) ^ (*&v59[4 * (BYTE2(v106) ^ 0x5E)] + (BYTE2(v106) ^ 0xFB1FF91A) + a8);
  v111 = *&v55[4 * (HIBYTE(v106) ^ 0x4B)];
  v112 = v111 ^ (v28 + (v100 ^ 0x95)) ^ (v111 >> 2) ^ (v111 >> 3) ^ *&v63[4 * (BYTE1(v98) ^ 0x50)] ^ ((BYTE2(v96) ^ 0xFB1FF9EB) + a8 + *&v59[4 * (BYTE2(v96) ^ 0xAF)]) ^ *&v62[4 * (v100 ^ 0xCB)];
  v113 = *&v55[4 * (HIBYTE(v108) ^ 0x13)];
  v114 = v113 ^ (v113 >> 3) ^ (v113 >> 2) ^ *&v63[4 * (BYTE1(v46) ^ 0x16)] ^ *&v62[4 * (v112 ^ 0xB9)] ^ ((BYTE2(v110) ^ 0xFB1FF960) + a8 + *&v59[4 * (BYTE2(v110) ^ 0x24)]) ^ ((v112 ^ 0xE7) + v28);
  v115 = *&v55[4 * (HIBYTE(v110) ^ 0x52)];
  v116 = v115 ^ ((v108 ^ 0xF1) + v28) ^ *&v63[4 * (BYTE1(v112) ^ 5)] ^ *&v62[4 * (v108 ^ 0xAF)] ^ (*&v59[4 * (BYTE2(v46) ^ 0xBC)] + (BYTE2(v46) ^ 0xFB1FF9F8) + a8) ^ ((v115 ^ (v115 >> 1) ^ 0xE1AB14E1) >> (v115 & 2) >> (v115 & 2 ^ 2));
  v117 = *&v55[4 * (BYTE3(v46) ^ 0xCD)];
  v118 = v117 ^ ((v110 ^ 0xE3) + v28) ^ (v117 >> 2) ^ (v117 >> 3) ^ *&v63[4 * (BYTE1(v108) ^ 0x92)] ^ ((BYTE2(v112) ^ 0xFB1FF93B) + a8 + *&v59[4 * (BYTE2(v112) ^ 0x7F)]) ^ *&v62[4 * (v110 ^ 0xBD)];
  v119 = v46 ^ 0x36;
  if (v102)
  {
    v119 = v116 ^ 0xCA45A42A;
  }

  v120 = *&v55[4 * (HIBYTE(v112) ^ 0x41)];
  v121 = v120 ^ (v120 >> 3) ^ (v120 >> 2) ^ *&v63[4 * (BYTE1(v110) ^ 0x67)] ^ ((BYTE2(v108) ^ 0xFB1FF99D) + a8 + *&v59[4 * (BYTE2(v108) ^ 0xD9)]);
  v122 = *&v62[4 * (v119 ^ 0x5E)];
  v123 = v119 + v28;
  v124 = v121 ^ v123 ^ v122;
  v125 = v124 ^ 0x59C544A9;
  v126 = (v124 ^ 0x59C544A9u) >> (v123 & 0x10) >> (v123 & 0x10 ^ 0x10);
  v127 = v116 ^ 0x7D6C9240;
  v128 = *&v55[4 * (HIBYTE(v114) ^ 0x73)];
  v129 = v128 ^ (v128 >> 3) ^ (v128 >> 2) ^ *&v63[4 * (BYTE1(v118) ^ 0xD)] ^ (*&v59[4 * (BYTE2(v127) ^ 0x76)] + ((HIWORD(v127) & 0xCD | 0xFB1FF932) ^ HIWORD(v127) & 0x32) + a8) ^ (v28 + (v124 ^ 0xA9)) ^ *&v62[4 * (v124 ^ 0xF7)];
  v130 = *&v55[4 * HIBYTE(v127)];
  v131 = v130 ^ ((v114 ^ 7) + v28) ^ (v130 >> 2) ^ (v130 >> 3) ^ ((BYTE2(v118) ^ 0xFB1FF9E3) + a8 + *&v59[4 * (BYTE2(v118) ^ 0xA7)]) ^ *&v62[4 * (v114 ^ 0x59)] ^ *&v63[4 * ((BYTE1(v125) - (BYTE1(v125) ^ 0xAA)) ^ 0xFFFFFFFC) + 4 * BYTE1(v125)];
  v132 = HIBYTE(v125);
  if (HIBYTE(v125) <= 0xDEu)
  {
    v133 = 0;
  }

  else
  {
    v133 = 223;
  }

  v134 = v132 - 223;
  if (v132 < 0xDF)
  {
    v134 = v132;
  }

  if (!v134)
  {
    v132 = v133;
  }

  v135 = *&v55[4 * (HIBYTE(v118) ^ 0x53)];
  v136 = v135 ^ (v127 + v28) ^ (v135 >> 2) ^ (v135 >> 3) ^ *&v63[4 * (BYTE1(v114) ^ 0x3F)] ^ *&v62[4 * (v127 ^ 0x5E)] ^ (*&v59[4 * (v126 ^ 0x76)] + (v126 ^ 0xFB1FF932) + a8);
  v137 = (BYTE2(v114) ^ 0xFB1FF983) + a8 + *&v59[4 * (BYTE2(v114) ^ 0xC7)];
  v138 = *&v55[4 * (v132 ^ 0x90)];
  v139 = v138 ^ ((v118 ^ 0xFA) + v28) ^ (v138 >> 2) ^ (v138 >> 3) ^ *&v63[4 * (BYTE1(v127) ^ 0xAA)] ^ v137 ^ *&v62[4 * (v118 ^ 0xA4)];
  v140 = *&v55[4 * (HIBYTE(v129) ^ 6)];
  v141 = v139 ^ 0x2861CA5;
  v142 = *&v62[4 * (v139 ^ 0xFB)] ^ *&v63[4 * (BYTE1(v136) ^ 0xBE)] ^ (v28 + (v139 ^ 0xA5)) ^ v140 ^ (v140 >> 3) ^ (v140 >> 2) ^ ((((v131 ^ 0x989255F6) >> 16) ^ 0xFB1FF932) + a8 + *&v59[4 * (((v131 ^ 0x989255F6) >> 16) ^ 0x76)]);
  v143 = *&v55[4 * ((v131 ^ 0x989255F6) >> 24)];
  v144 = v143 ^ ((v129 ^ 0x3A) + v28) ^ (v143 >> 2) ^ (v143 >> 3) ^ *&v62[4 * (v129 ^ 0x64)] ^ *&v63[4 * (BYTE1(v139) ^ 0xB6)] ^ ((BYTE2(v136) ^ 0xFB1FF96C) + a8 + *&v59[4 * (BYTE2(v136) ^ 0x28)]);
  v145 = (BYTE2(v141) ^ 0xFB1FF932) + a8 + *&v59[4 * (BYTE2(v141) ^ 0x76)];
  v146 = *&v55[4 * (HIBYTE(v136) ^ 0x10)];
  v147 = v146 ^ (v28 + (v131 ^ 0xF6)) ^ (v146 >> 2) ^ (v146 >> 3) ^ *&v63[4 * (BYTE1(v129) ^ 0x4E)] ^ *&v62[4 * (v131 ^ 0xA8)];
  v148 = *&v55[4 * HIBYTE(v141)];
  LOBYTE(v131) = v147 ^ v145;
  v149 = v148 ^ ((v136 ^ 0xB8) + v28) ^ (v148 >> 2) ^ (v148 >> 3) ^ *&v63[4 * (BYTE1(v131) ^ 0x55)] ^ ((BYTE2(v129) ^ 0xFB1FF9BB) + a8 + *&v59[4 * (BYTE2(v129) ^ 0xFF)]) ^ *&v62[4 * (v136 ^ 0xE6)];
  v150 = *&v55[4 * ((v142 ^ 0x9C960877) >> 24)];
  v151 = v150 ^ (v150 >> 3) ^ (v150 >> 2) ^ ((BYTE2(v144) ^ 0xFB1FF92B) + a8 + *&v59[4 * (BYTE2(v144) ^ 0x6F)]) ^ *&v62[4 * (v149 ^ 0x76)] ^ *&v63[4 * (((v147 ^ v145) >> 8) ^ 0x49)] ^ (((2 * v149) & 0x172 ^ 0x50) + (v149 ^ 0xFDA24791));
  v152 = *&v55[4 * (HIBYTE(v144) ^ 0xDF)];
  v153 = v152 ^ (v28 + (v142 ^ 0x77)) ^ (v152 >> 2) ^ (v152 >> 3) ^ *&v63[4 * (BYTE1(v149) ^ 0x19)] ^ ((((v147 ^ v145) >> 16) ^ 0xFB1FF968) + a8 + *&v59[4 * (((v147 ^ v145) >> 16) ^ 0x2C)]) ^ *&v62[4 * (v142 ^ 0x29)];
  v154 = *&v55[4 * (((v147 ^ v145) >> 24) ^ 0x14)];
  v155 = v154 ^ ((v144 ^ 0x35) + v28) ^ (v154 >> 2) ^ (v154 >> 3) ^ *&v63[4 * (BYTE1(v142) ^ 0xA2)] ^ ((BYTE2(v149) ^ 0xFB1FF9F3) + a8 + *&v59[4 * (BYTE2(v149) ^ 0xB7)]) ^ *&v62[4 * (v144 ^ 0x6B)];
  v156 = *&v55[4 * (HIBYTE(v149) ^ 0xCD)];
  v157 = v156 ^ ((v131 ^ 0x39) + v28) ^ (v156 >> 2) ^ (v156 >> 3) ^ *&v63[4 * (BYTE1(v144) ^ 0x11)] ^ ((((v142 ^ 0x9C960877) >> 16) ^ 0xFB1FF932) + a8 + *&v59[4 * (((v142 ^ 0x9C960877) >> 16) ^ 0x76)]) ^ *&v62[4 * (v131 ^ 0x67)];
  v158 = *&v55[4 * (HIBYTE(v151) ^ 0x64)];
  v159 = v158 ^ (v158 >> 3) ^ (v158 >> 2) ^ *&v63[4 * (BYTE1(v155) ^ 0xBF)] ^ ((BYTE2(v153) ^ 0xFB1FF9FF) + a8 + *&v59[4 * (BYTE2(v153) ^ 0xBB)]);
  v160 = v157 ^ 0xB95640F0;
  v161 = v159 ^ *&v62[4 * (v157 ^ 0xAE)] ^ (v28 + (v157 ^ 0xF0));
  v162 = *&v55[4 * (HIBYTE(v153) ^ 0x60)];
  v163 = v162 ^ ((v151 ^ 0x60) + v28) ^ (v162 >> 2) ^ (v162 >> 3) ^ *&v63[4 * ((v157 ^ 0x40F0) >> 8)] ^ ((BYTE2(v155) ^ 0xFB1FF9B8) + a8 + *&v59[4 * (BYTE2(v155) ^ 0xFC)]) ^ *&v62[4 * (v151 ^ 0x3E)];
  v164 = *&v55[4 * (HIBYTE(v155) ^ 0xAF)] ^ 0xBECDE741;
  v165 = (BYTE2(v160) ^ 0xFB1FF932) + a8 + *&v59[4 * (BYTE2(v160) ^ 0x76)];
  v166 = *&v55[4 * HIBYTE(v160)];
  v167 = v164 ^ ((v153 ^ 0xE1) + v28) ^ *&v63[4 * (BYTE1(v151) ^ 0xE7)] ^ *&v62[4 * (v153 ^ 0xBF)] ^ v165 ^ (((v164 >> 1) + v164 - 2 * ((v164 >> 1) & v164)) >> 2);
  v168 = (BYTE2(v151) ^ 0xFB1FF9FB) + a8 + *&v59[4 * (BYTE2(v151) ^ 0xBF)];
  v169 = *&v63[4 * (BYTE1(v153) ^ 0x10)];
  v170 = *&v62[4 * (v155 ^ 0x32)];
  if ((v170 & 0x10000000) != 0)
  {
    v171 = 0x10000000;
  }

  else
  {
    v171 = -268435456;
  }

  v172 = (((2 * v155) & 0x172 ^ 0x50) + (v155 ^ 0x7DA247D5)) & 0x64000FFF ^ v166 ^ (v166 >> 2) ^ (v166 >> 3) ^ v169 ^ v168 ^ (v171 + (v170 ^ 0x338782CE)) ^ 0x102A99B8;
  v173 = *(&off_1010A0B50 + (v27 ^ 0x688C)) - 1068374239;
  v174 = *(&off_1010A0B50 + (v27 ^ 0x69C6)) - 15746515;
  v175 = *&v174[4 * (BYTE1(v167) ^ 0x94)];
  v176 = 34 * (v175 ^ 0x75F0B1BF) - (((v175 ^ 0x75F0B1BF) << 6) & (4 * (v175 ^ 0x75F0B1BF)));
  v177 = *(&off_1010A0B50 + (v27 ^ 0x6920)) - 363292067;
  v178 = *&v173[4 * (HIBYTE(v161) ^ 7)] - 303159516;
  v179 = *(&off_1010A0B50 + v27 - 23702) - 1507167943;
  v180 = v178 ^ BYTE2(v163) ^ *&v177[4 * (BYTE2(v163) ^ 0x2C)] ^ (4 * v178) & 0xE70F2154 ^ v175 ^ *&v179[4 * v172];
  v181 = *(v29 - 200);
  v182 = *&v173[4 * (((HIBYTE(v163) ^ 0x29) - (HIBYTE(v163) ^ 0xBC)) ^ 0xFFFFFFFE) + 4 * (HIBYTE(v163) ^ 0x29)] - 303159516;
  v183 = v182 ^ ((v167 ^ 0xDBE3DF4B) >> 16) ^ *&v177[4 * (((v167 ^ 0xDBE3DF4B) >> 16) ^ 0xFF)] ^ *&v179[4 * (v161 ^ 0xBF)] ^ (4 * v182) & 0xE70F2154;
  v184 = *&v174[4 * (BYTE1(v172) ^ 0x4B)];
  v185 = v184 ^ 0x64FA3601 ^ (16 * (v184 ^ 0x64FA3601));
  v186 = v183 ^ __ROR4__(__ROR4__(v184 ^ (2 * v185) ^ 0xF7912FCE, 25) ^ 0x30660C35, 7);
  v187 = *&v173[4 * (HIBYTE(v167) ^ 0x4E)] - 303159516;
  v188 = *&v177[4 * (BYTE2(v172) ^ 0xFF)] ^ BYTE2(v172) ^ v187 ^ (4 * v187) & 0xE70F2154;
  v189 = *&v173[4 * HIBYTE(v172)];
  v190 = *&v174[4 * (BYTE1(v161) ^ 0x19)] ^ 0xF1336C78;
  v191 = v188 ^ *&v179[4 * (v163 ^ 0xEA)] ^ v190 ^ (2 * v190) ^ (32 * v190);
  v192 = __ROR4__(__ROR4__(*&v174[4 * (BYTE1(v163) ^ 0xEF)], 11) ^ 0x2E4C782F, 21);
  v193 = BYTE2(v161) ^ *&v177[4 * (BYTE2(v161) ^ 0xFC)] ^ (v189 - 303159516) ^ v192 ^ 0x4700FED5 ^ (4 * (v189 - 303159516)) & 0xE70F2154 ^ (2 * (v192 ^ 0x4700FED5)) ^ (32 * (v192 ^ 0x4700FED5));
  v194 = *&v179[4 * (v167 ^ 0x4B)];
  v195 = (v194 ^ (305882331 - (((v194 ^ 0x74331040) - 1949503552) ^ ((v194 ^ 0xD1B2F72B) + 776800469) ^ ((v194 ^ 0x48457C4E) - 1212513358))) ^ 0xEDC49B25 ^ ((v193 ^ 0x114203AE) - (((v193 ^ 0x114203AE) - ((2 * (v193 ^ 0x114203AE)) & 0xDB89364A) - 305882331) ^ v194))) + (v193 ^ 0x114203AE);
  v196 = *(&off_1010A0B50 + (v27 ^ 0x6213)) - 685060106;
  *(v181 + v204) = v196[BYTE3(v195) ^ 0x62] & 0xD0 ^ ((BYTE3(v195) ^ 0x1C) + (BYTE3(v195) ^ 0x32)) & (v196[BYTE3(v195) ^ 0x62] ^ 0x52) ^ (((BYTE3(v195) ^ 0x1C) + (BYTE3(v195) ^ 0x32)) ^ 0x2F) & (v196[BYTE3(v195) ^ 0x62] ^ 0xD) ^ (((BYTE3(v195) ^ 0x1C) + (BYTE3(v195) ^ 0x32)) ^ 0x2F) & 0xA0 ^ 0x7F;
  v197 = *(&off_1010A0B50 + v27 - 21921) - 1466207274;
  *(v181 + v213) = v197[v186 ^ 0xFDLL] ^ (16 * (((2 * v197[v186 ^ 0xFDLL]) & 4) + (v197[v186 ^ 0xFDLL] ^ 0xE))) ^ 0xF3;
  *(v181 + v211) = v197[v195 ^ 0x93] ^ 0x68 ^ (((16 * v197[v195 ^ 0x93]) ^ 0x40) - 96);
  v198 = *(&off_1010A0B50 + (v27 ^ 0x6C46)) - 619589459;
  *(v181 + v206) = ((v191 ^ 0x5B1A9AC3) >> (v185 & 0x10 ^ 0x10) >> (v185 & 0x10)) ^ 0xE4 ^ v198[((v191 ^ 0x5B1A9AC3) >> (v185 & 0x10 ^ 0x10) >> (v185 & 0x10)) ^ 0xA7];
  *(v181 + v215) = BYTE2(v186) ^ 0xD4 ^ v198[BYTE2(v186) ^ 0x57];
  v199 = *(&off_1010A0B50 + v27 - 22728) - 1278579851;
  *(v181 + v207) = v199[BYTE1(v186) ^ 0x13] ^ (-40 * (v199[BYTE1(v186) ^ 0x13] ^ 0x15)) ^ 0x3C;
  *(v181 + v218) = ((((v180 ^ v176) >> 24) ^ 0xA5) + (((v180 ^ v176) >> 24) ^ 0x8B)) ^ 0x4E ^ v196[((v180 ^ v176) >> 24) ^ 0xDBLL];
  *(v181 + v212) = v199[BYTE1(v195) ^ 0xF6] ^ ((-40 * (v199[BYTE1(v195) ^ 0xF6] ^ 0x15)) | 2) ^ 0x1E;
  *(v181 + v217) = ((HIBYTE(v186) ^ 0x6D) + (HIBYTE(v186) ^ 0x43)) ^ v196[HIBYTE(v186) ^ 0x13] ^ 0xDD;
  *(v181 + v208) = v199[((v180 ^ v176) >> 8) ^ 0xE5] ^ (-40 * (v199[((v180 ^ v176) >> 8) ^ 0xE5] ^ 0x15)) ^ 0xDD;
  *(v181 + v216) = v197[v191 ^ 0x54] ^ 0xF6 ^ (((16 * v197[v191 ^ 0x54]) ^ 0x40) - 96);
  *(v181 + v214) = v199[BYTE1(v191) ^ 0xE4] ^ 0xDE ^ (-40 * (v199[BYTE1(v191) ^ 0xE4] ^ 0x15));
  LOBYTE(v189) = v197[(v180 ^ v176) ^ 0xB4];
  *(v181 + v205) = v189 ^ 0x52 ^ (((16 * v189) ^ 0x40) - 96);
  *(v181 + v210) = ((v180 ^ v176) >> 16) ^ 0x8E ^ v198[((v180 ^ v176) >> 16) ^ 0xD5];
  *(v181 + v209) = BYTE2(v195) ^ 0xB7 ^ v198[BYTE2(v195) ^ 0xDCLL];
  LOBYTE(v189) = v196[HIBYTE(v191) ^ 0xC7];
  LODWORD(v196) = (((v23 ^ 0x789ABF99) - 2023407513) ^ ((v23 ^ 0x4134451A) - 1093944602) ^ ((v23 ^ 0x1480F138) - 343994680)) + 930411507;
  LODWORD(v196) = ((v196 ^ 0x96460548) + 1677660832) ^ v196 ^ ((v196 ^ 0x2CD24DF8) - 647275984) ^ ((v196 ^ 0xCD251F66) + 949749938) ^ ((v196 ^ 0x7DF7BFFE) - 2008111062);
  *(v181 + v219) = ((HIBYTE(v191) ^ 0x97) + (HIBYTE(v191) ^ 0xB9)) ^ 0x4A ^ v189;
  v200 = (((v196 ^ 0x6331642F) - 1146718140) ^ ((v196 ^ 0x45086BDA) - 1650493513) ^ ((v196 ^ 0x2C7FE7DD) - 186057806)) - 675814061;
  v201 = *(v29 - 224) ^ (v200 < 0xAA89D998);
  v202 = v200 < *(v29 - 216);
  if (v201)
  {
    v202 = *(v29 - 224);
  }

  HIDWORD(a21) = v27 ^ 0xA3B5;
  return (*(*(v29 - 208) + 8 * ((50715 * v202) ^ v27)))(v197, v199, 246, 21, v195, 4294967256, 19, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v204, v205, v206, v207, v208, v209, v210, v211);
}

uint64_t sub_10019AB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16)
{
  a16 = (v19 + 1811864192) ^ a10;
  a14 = a12;
  a15 = v16;
  (*(v17 + 8 * (v19 ^ 0xFFFF3396)))(&a14);
  return (*(v17 + 8 * ((2594 * ((((((v18 - 1624906376 + v19 + 10658) | v19) - (v18 - 1624906376 + v19 + 10658)) | (v18 - 1624895718) & ~(v19 ^ (v18 - 1624906376 + v19 + 10658))) >> ((v19 ^ v20) + 52)) & 1)) ^ (v19 + 42758))))((v18 - 64), v21, v22, v23, v24, v25);
}

uint64_t sub_10019ABD0()
{
  if (v2 <= 0x40)
  {
    v2 = v3;
  }

  return (*(v4 + 8 * ((8140 * (v2 - 1 < v0 + ((v1 - 1060912872) ^ 0xC0C3CECC) - 1753210703)) ^ v1)))();
}

uint64_t sub_10019AC5C@<X0>(unsigned int a1@<W8>)
{
  v5 = (*(v1 + 16) - v2);
  v6 = v3[4] ^ 0x5F;
  v7 = ((v3[1] ^ 0x5F) << ((a1 ^ 0x7A) + 26)) + ((v3[2] ^ (a1 - 37)) << 16) + ((v3[3] ^ 0x5F) << 8) + v6;
  v8 = 4 * ((v7 - 2 * (v7 & 0x69D5C71D ^ v6 & 0xC) - 371865839) ^ 0xE9D5C711);
  v9 = 0xFFFFFFFF00000000;
  if (v5 >= 0x239305B4)
  {
    v9 = 0;
  }

  return (*(v4 + 8 * ((13 * (v9 - v5 + v8 == -596837817)) ^ a1)))();
}

uint64_t sub_10019AD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, int a14)
{
  v19 = *(v14 + 4 * ((0x9ED10ECD % (v15 >> 2)) & 0x3FFFFFFC));
  v20 = ~*(v14 + 4 * (((v17 - 8221) ^ 0xE63D) & ((v15 >> 2) + 0xFFFF) & v19));
  v21 = *(v18 + 8 * a13);
  v22 = *(v21 - 527405895);
  v23 = *(v18 + 8 * a12) + 4 * v22;
  v24 = *(v23 - 1940437438);
  v26 = *&v20 & (~v19 >> 16);
  v25 = v26 == 0;
  v27 = v26 + v26 * v24;
  v28 = v25;
  if (v25)
  {
    v29 = v24;
  }

  else
  {
    v29 = 0;
  }

  *(v23 - 1940437438) = (v27 + v29) * v24;
  *(v21 - 527405895) = (v22 + 1) % 6u;
  return (*(v16 + 8 * ((560 * v28) ^ a14)))(v29, -527405895, -1940437438, a4, a5, a6, a7);
}

uint64_t sub_10019AE04@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v11 = (a4 + v4 + v8 + a1);
  *v11 = v10;
  v11[1] = v10;
  return (*(v9 + 8 * (((v4 + a3 + v7 == v6) * a2) ^ v5)))();
}

uint64_t sub_10019AECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, unsigned int a31, uint64_t a32, int a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  LODWORD(a26) = v40;
  HIDWORD(v42) = ((a34 + 17) ^ (-1 - a34) ^ (((a34 + 17) ^ 0xF6) + 26) ^ (((a34 + 17) ^ 0x3F) - 47) ^ (((v39 - 67) & 0xAD ^ 0x67) + ((a34 + 17) ^ 0x26)));
  LODWORD(v42) = (((LODWORD(STACK[0x354]) ^ 0x7F) + 30) ^ LODWORD(STACK[0x354]) ^ ((LODWORD(STACK[0x354]) ^ 0x5C) + 63) ^ ((LODWORD(STACK[0x354]) ^ 0x40) + 35) ^ ((LODWORD(STACK[0x354]) ^ 0xFE) - 99));
  return (*(a38 + 8 * (v39 ^ (8 * (v38 != 855108655)))))(a1, a2, a3, a38, a31, a24, 295436288, 855108655, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, v42, a26);
}

uint64_t sub_10019B1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, int a26, uint64_t a27, int a28, int a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37, int a38)
{
  v41 = 906386353 * ((~(v40 - 144) & 0x3175ACE2 | (v40 - 144) & 0xCE8A5318) ^ 0x7461C6);
  *(v40 - 128) = (v38 - 40359) ^ v41;
  *(v40 - 120) = v41 ^ 0x24F40078;
  *(v40 - 116) = v41 + (((a38 ^ 0xAD20577A) + 139585786) ^ ((a38 ^ 0x2AF6C1F5) - 1886945673) ^ ((a38 ^ 0x87D6968F) + 581380365)) - 1407736531;
  *(v40 - 104) = v41 + (((a25 ^ 0x309190E3) - 740031186) ^ ((a25 ^ 0x88E26170) + 1805120703) ^ ((a25 ^ 0xB873F10E) + 1527145665)) + 2014718865;
  *(v40 - 112) = ((((a26 ^ 0x30940901) - 978234426) ^ ((a26 ^ 0x66CD097F) - 1813490756) ^ (((29 * (v38 ^ 0xC3CB)) ^ 0xA37C1F25) + (a26 ^ 0x5659006E))) + 1812741609) ^ v41;
  *(v40 - 108) = v41 + a36 - 2035718336;
  *(v40 - 144) = v39;
  *(v40 - 136) = &STACK[0x2F0];
  *(v40 - 124) = v41 ^ a29 ^ 0x6E95D8F4;
  v43 = (*(a4 + 8 * (v38 ^ 0xA1F)))(v40 - 144);
  return (*(a4 + 8 * (v38 ^ (106 * (a37 != 2)))))(v43);
}

uint64_t sub_10019B620@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v8 = a1 ^ 0x539;
  v9 = (v6 - 1) & 0xF;
  v13 = (1 - a2 + v3 - v6 + v9) < 0x10 || v2 - a2 < (((2333 * (v8 ^ 0x7E68) - 5695) | 0x8601u) ^ 0xAF9DuLL) || (1 - a2 + v4 - v6 + v9) < 0x10 || (v5 - a2 - v6 + v9 + 5) < 0x10;
  return (*(v7 + 8 * ((224 * v13) ^ v8)))();
}

uint64_t sub_10019B6C0()
{
  v8 = v5 - 1;
  *(v6 + v8) ^= *(v0 + (v8 & 0xF)) ^ *(v2 + (v8 & 0xF)) ^ ((v8 & 0xF) * v4) ^ *((v8 & 0xF) + v1 + 3);
  return (*(v7 + 8 * (((v8 == 0) | (32 * (v8 == 0))) ^ v3)))();
}

uint64_t sub_10019B70C()
{
  v9 = v6 - 1;
  *(v7 + v9) ^= *(v1 + (v9 & 0xF)) ^ *((v9 & 0xF) + v2 + 1) ^ ((v9 & 0xF) * v4) ^ *(v0 + (v9 & 0xF));
  return (*(v8 + 8 * (((v9 == 0) * v5) ^ v3)))();
}

uint64_t sub_10019B8E0@<X0>(int a1@<W0>, uint64_t a2@<X5>, uint64_t a3@<X6>, unsigned int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, unsigned int a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v36 = a1 + 537783385;
  v37 = v33 ^ 0xBCF51BC1;
  v38 = (v37 + 1124775638);
  v39 = ((v35 ^ 0x19A884A5) - 909689400) ^ v35 ^ ((v35 ^ 0x6E329091) - 1101190668) ^ ((v35 ^ 0xFFFFEEFF) + 797988766) ^ ((v38 ^ 0x779A9453) + (v35 ^ 0xA7F5BC56));
  v40 = v36 + (((v39 ^ 0xE40B6E56) - 347966772) ^ ((v39 ^ 0xD98E7E82) - 691576288) ^ ((v39 ^ 0xBD629AF2) - 1305770384)) + 1202589120;
  v41 = (v40 ^ 0xC4DFFAA1) & (2 * (v40 & 0xE01FE2B5)) ^ v40 & 0xE01FE2B5;
  v42 = ((2 * (v40 ^ 0x4F73EAB)) ^ 0xC9D1B83C) & (v40 ^ 0x4F73EAB) ^ (2 * (v40 ^ 0x4F73EAB)) & 0xE4E8DC1E;
  v43 = (v42 ^ 0x80C0981C) & (4 * v41) ^ v41;
  v44 = ((4 * v42) & 0x64E8DC18 ^ 0xA05016 ^ ((4 * v42) ^ 0x13A37078) & v42) & (16 * v43);
  v45 = *(v34 + 4 * a30);
  v46 = (v45 ^ 0xCF6FBC63) & (2 * (v45 & 0xD06FB963)) ^ v45 & 0xD06FB963;
  v47 = ((2 * (v45 ^ 0x4F22CE61)) ^ 0x3E9AEE04) & (v45 ^ 0x4F22CE61);
  v48 = v47 & (4 * v46);
  v49 = v48 ^ v46;
  v50 = v40 ^ v45 ^ (2 * (v47 & (4 * v47) & (16 * v49) ^ v49 ^ v43 ^ v44));
  v51 = *(v34 + 4 * a4) + (((v50 ^ 0xA1EED21B) - 1350977303) ^ ((v50 ^ 0xE215EA4F) - 326991683) ^ ((v50 ^ 0xD59B6382) - 619968142));
  return (*(a33 + 8 * (v33 ^ (2 * (((((123 - v51) ^ (v51 - 117)) ^ (((v51 - 117) ^ 0xFD) + 5)) & 7) == 4)))))(v37, 3967975613, v38, v49, v48, a2, a3, a27, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_10019BBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  v43 = ((v41 ^ 0x692113A) - 688019367) ^ v41 ^ ((v41 ^ 0xF0615350) + 537848371) ^ ((v41 ^ 0xFDD7EFFF) + 767055518) ^ (((((v40 + 882353084) | 0x101C018) - 283435024) ^ v41) - 186953109);
  v44 = v42 + (((v43 ^ 0x6F8ADF8B) + 1817792461) ^ ((v43 ^ 0x2DAEC176) + 779964722) ^ ((v43 ^ 0xC2C394DB) - 1055914851)) + 1686182347;
  v45 = *(&a39 + a33);
  v46 = ((v45 ^ 0x3C46937) - 743714730) ^ v45 ^ ((v45 ^ 0xC4B8F6E6) + 349654917) ^ ((v45 ^ 0x169726F3) - 956784750) ^ ((v45 ^ 0xFE7BFFBF) + 773080798) ^ v44 ^ ((v44 ^ 0x20F056A2) - 485957849) ^ ((v44 ^ 0xB53E4DB) - 928289440) ^ ((v44 ^ 0xE8D93BBD) + 723628602) ^ ((v44 ^ 0xFF7DFFBF) + 1015379516);
  return (*(a36 + 8 * ((45 * (((v39 + 1531561173 + (((v46 ^ 0xE121FD69) - 2020394749) ^ ((v46 ^ 0x2AB4EFA9) + 1275472835) ^ ((v46 ^ 0xD8022226) - 1095702962))) & 7) == 2)) ^ v40)))();
}

uint64_t sub_10019BE30(uint64_t a1, uint64_t a2, char a3, char a4, char a5, char a6, char a7, char a8)
{
  v26 = v14 - 8520 + a1;
  v27 = (v11 ^ a5) & (2 * (v11 & a4)) ^ v11 & a4;
  v28 = ((2 * (v11 ^ a3)) ^ a6) & (v11 ^ a3) ^ (2 * (v11 ^ a3)) & a7;
  v29 = v11 ^ (2 * ((((4 * (v28 ^ a8)) ^ v15) & (v28 ^ a8) ^ (4 * (v28 ^ a8)) & v16) & (16 * (v28 & (4 * v27) ^ v27)) ^ v28 & (4 * v27) ^ v27));
  v30 = ((v29 ^ v17) + v18) ^ ((v29 ^ v19) + v20) ^ ((v29 ^ v21) + v22);
  *(v10 + v26) = v12 + v30 * v24 + v13 * (v30 + v23);
  return (*(v8 + 8 * (((v26 == 0) * v25) ^ v9)))();
}

uint64_t sub_10019BF34@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7, char a8, char a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, char a18, uint64_t a19, int a20, int a21, char *a22, uint64_t a23, uint64_t a24)
{
  v27 = *v24;
  v28 = *(v24 + 3) + a1;
  v29 = *(v24 + 8) + a1;
  v30 = v24[7];
  a5 = v30[5] - ((v30[5] << ((v26 + 80) ^ 0xC5)) & (v26 + 74)) + 95;
  a6 = v30[4] - ((2 * v30[4]) & 0xBF) + 95;
  a7 = v30[3] - ((2 * v30[3]) & 0xBF) + 95;
  a8 = v30[2] - ((2 * v30[2]) & 0xBF) + 95;
  a9 = v30[1] - ((2 * v30[1]) & 0xBF) + 95;
  v31 = *v30;
  v32 = v24[3];
  a10 = v31 - ((2 * v31) & 0xBF) + 95;
  a11 = (HIBYTE(v29) ^ 0xCD) - ((2 * (HIBYTE(v29) ^ 0xCD)) & 0xBF) + 95;
  a12 = (BYTE2(v29) ^ 0xB3) - ((2 * (BYTE2(v29) ^ 0xB3)) & 0xBF) + 95;
  a13 = (BYTE1(v29) ^ 0x28) - ((2 * (BYTE1(v29) ^ 0x28)) & 0xBF) + 95;
  a14 = v29 ^ 0x42;
  a15 = (HIBYTE(v28) ^ 5) - ((2 * (HIBYTE(v28) ^ 5)) & 0xBF) + 95;
  a16 = (BYTE2(v28) ^ 0xF) - ((2 * (BYTE2(v28) ^ 0xF)) & 0xBF) + 95;
  a17 = (BYTE1(v28) ^ 0xD) - ((2 * (BYTE1(v28) ^ 0xD)) & 0xBF) + 95;
  a18 = v28 ^ 0x69;
  *(v27 - 0x31D22C36DBDA93B0) = -347583032;
  v33 = 193924789 * ((((2 * &a20) | 0x95CA60BE) - &a20 + 890949537) ^ 0x7C5E0239);
  a20 = v33 ^ 0x118E5638;
  a21 = (v26 + 14174) ^ v33;
  a22 = &a5;
  a23 = v32;
  a24 = v27;
  v34 = (*(v25 + 8 * (v26 ^ 0x84B9)))(&a20);
  return (*(v25 + 8 * ((12743 * ((((*(v27 - 0x31D22C36DBDA93B0) ^ 0x9CABB5FA) + 1666468358) ^ ((*(v27 - 0x31D22C36DBDA93B0) ^ 0x852A0DFA) + 2060841478) ^ ((*(v27 - 0x31D22C36DBDA93B0) ^ 0xF2C9F500) + 221645568)) - 347583353 < 0xFFFFFF87)) ^ v26)))(v34);
}

uint64_t sub_10019C1E0@<X0>(int a1@<W0>, int a2@<W6>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v35 = (((v26 | 0x224C0339) - v26 + (v26 & v28)) ^ v30) * v27;
  *(v34 - 136) = v35 + a2 + a3 + *(a26 + 96) - ((2 * *(a26 + 96)) & 0x55658502) + v31;
  *(v34 - 120) = a2 - v35 + a1;
  *(v34 - 128) = a26;
  v36 = (*(v33 + 8 * v29))(v34 - 136);
  return (*(v33 + 8 * v32))(v36);
}

uint64_t sub_10019F2DC()
{
  STACK[0x590] = STACK[0x948] + v1;
  STACK[0x940] = v0;
  return (*(v4 + 8 * (((v2 == 7 * (v3 ^ 0xB724) + 700423342) * (v3 - 15942)) ^ v3)))();
}

uint64_t sub_10019F3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11, uint64_t a12)
{
  v15 = *v13;
  a11 = v14 - 193924789 * ((-2 - ((&a11 ^ 0x20353904 | 0xDE8A063B) + (&a11 ^ 0x900A0002 | 0x2175F9C4))) ^ 0xF97BF49F) + 60368186;
  a12 = v15;
  v16 = (*(v12 + 8 * (v14 ^ 0x893C)))(&a11);
  return (*(v12 + 8 * v14))(v16);
}

uint64_t sub_10019F4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  memset((v26 + 100), 95, 64);
  v27 = (v23 | ((v23 < 0x2C12u) << 16)) + 945733605;
  return (*(v25 + 8 * ((7 * ((((v27 ^ 0xF7F25C5D) + 810764374) ^ v27 ^ ((v27 ^ 0x17FEA8D8) - 799032111) ^ ((v27 ^ 0xFF79BE1D) + 953723414) ^ (839 * (v24 ^ 0x2B85) - 527798123 + (v27 ^ (211 * (v24 ^ 0x2BBF) + 657160882)))) != 945744887)) ^ v24)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
}

uint64_t sub_10019F6F8(int a1, char a2, uint64_t a3, uint64_t a4, int a5, int8x16_t a6, int8x8_t a7, int8x8_t a8)
{
  v15.val[0].i64[0] = (v11 - 1) & 0xF;
  v15.val[0].i64[1] = (a2 + v11) & 0xF;
  v15.val[1].i64[0] = (v11 + 13) & 0xF;
  v15.val[1].i64[1] = (v11 + 12) & 0xF;
  v15.val[2].i64[0] = (v11 + 11) & 0xF;
  v15.val[2].i64[1] = (v11 + 10) & 0xF;
  v15.val[3].i64[0] = (v11 + 9) & 0xF;
  v15.val[3].i64[1] = v11 & 0xF ^ 8;
  *(a3 + v11) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a4 + v11), *(v8 + v15.val[0].i64[0] - 7)), veor_s8(*(v9 + v15.val[0].i64[0] - 7), *(v15.val[0].i64[0] + v10 - 4)))), a8), vmul_s8(*&vqtbl4q_s8(v15, a6), a7)));
  return (*(v13 + 8 * (((v12 == v11) * a5) ^ a1)))();
}

uint64_t sub_10019F8F0@<X0>(uint64_t a1@<X8>, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, char *a9, uint64_t a10, unint64_t a11, unint64_t a12, int a13, char *a14)
{
  v18 = bswap32(*(a1 + 4));
  v19 = (v18 ^ 0xFCE7FEEF) + 469547872 + ((v18 << (((v17 + 6) & 0xDB) - 17)) & 0xF9CFFDDE);
  v20 = v18 + 417643088;
  if (*v16 <= 1u)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

  v22 = &a8;
  LODWORD(a10) = (v17 + 27259) ^ (139493411 * ((-2 - ((~v22 | 0x9F3076B1) + (v22 | 0x60CF894E))) ^ 0x931D97F4));
  a9 = &a3;
  LOBYTE(a8) = ((35 * ((-2 - ((~v22 | 0xB1) + (v22 | 0x4E))) ^ 0xF4)) & 1) == 0;
  (*(v14 + 8 * (v17 ^ 0x8EC1)))(&a8);
  v23 = 20 * (v21 | ((v21 < 0x18E4BA4F) << 32)) + 0x43521CDAB7F6E0D7;
  v24 = (v23 ^ 0xBE0DF233142A4D97) & (2 * (v23 & 0x123562A9104)) ^ v23 & 0x123562A9104;
  v25 = (2 * (v23 ^ 0xFE5C7471306B6D9FLL)) & 0x42F197526641FC98 ^ 0x421091522240048ALL ^ ((2 * (v23 ^ 0xFE5C7471306B6D9FLL)) ^ 0x85E32EA4CC83F934) & (v23 ^ 0xFE5C7471306B6D9FLL);
  v26 = (4 * v24) & 0x5126040CC10 ^ v24 ^ ((4 * v24) | 0xC) & v25;
  v27 = (4 * v25) & 0x42F197526641FC98 ^ 0x4031821266400C92 ^ ((4 * v25) ^ 0xBC65D499907F268) & v25;
  v28 = (16 * v26) & 0x42F197526641FC80 ^ v26 ^ ((16 * v26) ^ 0xB0) & v27;
  v29 = (16 * v27) & 0x42F197526641FC80 ^ 0x40E082500240341ALL ^ ((16 * v27) ^ 0x2F197526641FC9A0) & v27;
  v30 = (v28 << 8) & 0x42F197526641FC00 ^ v28 ^ ((v28 << 8) ^ 0x9B00) & v29;
  v31 = (v29 << 8) & 0x42F197526641F800 ^ 0x26085102601649ALL ^ ((v29 << 8) ^ 0xF197526641FC9A00) & v29;
  v32 = v30 ^ (v30 << 16) & 0x42F1975266410000 ^ ((v30 << 16) ^ 0x989B0000) & v31 ^ 0x42F1975266406401;
  v33 = v23 ^ (2 * ((v32 << 32) & 0x42F1975200000000 ^ v32 ^ ((v32 << 32) ^ 0x6641FC9A00000000) & ((v31 << 16) & 0x42F1975200000000 ^ 0x40A1911200000000 ^ ((v31 << 16) ^ 0x1752664100000000) & v31))) ^ 0xC5B11442C08304F3;
  v34 = 1603510583 * (((&a8 | 0x6F7CDA648E47A06BLL) - &a8 + (&a8 & 0x9083259B71B85F90)) ^ 0x508DCD88199C92C0);
  a8 = v17 - v34 - 11694;
  a14 = &a3;
  a11 = v33 + v34;
  a12 = v34 + 0x1D5BAA6B483C089DLL;
  a9 = 0;
  a10 = v15;
  v35 = (*(v14 + 8 * (v17 ^ 0x8F26)))(&a8);
  return (*(v14 + 8 * ((15147 * (a13 == -371865839)) ^ v17)))(v35);
}

uint64_t sub_10019FD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v20 = 634647737 * ((~(v19 - 128) & 0x8DEE3305 | (v19 - 128) & 0x7211CCF8) ^ 0xE0781CF9);
  *(v19 - 112) = v20 + ((a6 << 6) & 0xDF7DEFC0) + ((((v18 + 336576739) & 0xEBF07579) + 1874756288) ^ (32 * a6)) - 134267528;
  *(v19 - 120) = &a17;
  *(v19 - 128) = v20 + v18 - 168;
  v21 = (*(v17 + 8 * (v18 + 35967)))(v19 - 128);
  return (*(v17 + 8 * ((40235 * ((*(a10 + 4) - 1051086577) < 0x7FFFFFFF)) ^ v18)))(v21);
}

uint64_t sub_10019FE6C(__n128 a1)
{
  v5 = v2 + 1676306649;
  v6.n128_u64[0] = (v1 + 13) & 0xF;
  v6.n128_u64[1] = (v1 + 12) & 0xF;
  v7.n128_u64[0] = (v1 + 11) & 0xF;
  v7.n128_u64[1] = (v1 + 10) & 0xF;
  v8.n128_u64[0] = (((v5 + 78) ^ 2) + v1) & 0xF;
  v8.n128_u64[1] = v1 & 0xF ^ 8;
  v11.val[0].i64[0] = (v1 + 7) & 0xF;
  v11.val[0].i64[1] = (v1 + 6) & 0xF;
  v11.val[1].i64[0] = (v1 + 5) & 0xF;
  v11.val[1].i64[1] = (v1 + 4) & 0xF;
  v11.val[2].i64[0] = (v1 + 3) & 0xF;
  v11.val[2].i64[1] = (v1 + 2) & 0xF;
  v11.val[3].i64[0] = (v1 + 1) & 0xFLL;
  v11.val[3].i64[1] = v1 & 0xF;
  v9.n128_u64[0] = 0x9999999999999999;
  v9.n128_u64[1] = 0x9999999999999999;
  return (*(v4 + 8 * (v5 ^ 0x63EAED85 ^ (9267 * (v5 < 0x8650BF84)))))(v1 + v3 - 16, v1 - 1, (v1 & 0x10) - 16, ((v5 - 1676343475) | 0x5001) ^ 0x5384, 31723, a1, v6, v7, v8, xmmword_100BC76B0, vqtbl4q_s8(v11, xmmword_100BC76B0), v9);
}

uint64_t sub_10019FFF0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, int a38, uint64_t a39)
{
  v44 = (v39 + a1) | 0x400;
  *(a39 + 4 * (v40 + a2)) = a3;
  v45 = v40 + a6;
  v46 = a5 - (v44 + a38);
  if (v44 + a38 + a4 >= 0)
  {
    v46 = v44 + a38 + a4;
  }

  v47 = v46 + a7;
  v48 = v46 > v43;
  v49 = (v45 < a8) ^ v48;
  v50 = v45 < v47;
  if (v49)
  {
    v50 = v48;
  }

  return (*(v42 + 8 * ((v50 * v41) ^ v39)))();
}

uint64_t sub_1001A005C(int a1, int8x8_t a2)
{
  v8 = veor_s8(*v6, a2);
  v4[-1] = veor_s8(v6[-1], a2);
  *v4 = v8;
  return (*(v7 + 8 * ((((v3 | v5) >= 0) * a1) ^ v2)))();
}

uint64_t sub_1001A009C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, int a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, int a63)
{
  LODWORD(STACK[0x278]) = v70;
  LODWORD(STACK[0x3A8]) = a6;
  LODWORD(STACK[0x3AC]) = v69;
  LODWORD(STACK[0x31C]) = a69;
  LOWORD(STACK[0x236]) = a68;
  LOWORD(STACK[0x292]) = v71;
  LODWORD(STACK[0x27C]) = a62;
  LOWORD(STACK[0x38E]) = a65;
  LODWORD(STACK[0x2F0]) = a4;
  return (*(v72 + 8 * a47))();
}

uint64_t sub_1001A00E8(int a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, int a7, int8x16_t a8, int8x8_t a9)
{
  v16.val[0].i64[0] = (v12 + a3 - 1) & 0xF;
  v16.val[0].i64[1] = (v12 + a3 + 14) & 0xF;
  v16.val[1].i64[0] = (v12 + a3 + 13) & 0xF;
  v16.val[1].i64[1] = (v12 + a3 + 12) & 0xF;
  v16.val[2].i64[0] = (v12 + a3 + 11) & 0xF;
  v16.val[2].i64[1] = (v12 + a3 + 10) & 0xF;
  v16.val[3].i64[0] = (v12 + a4 + v13) & 0xF;
  v16.val[3].i64[1] = (v12 + a3) & 0xF ^ 8;
  *(a5 + v12) = veor_s8(veor_s8(veor_s8(*(v11 + v16.val[0].i64[0] - 7), *(a6 + v12)), veor_s8(*(v10 + v16.val[0].i64[0] - 7), *(v16.val[0].i64[0] + v9 - 6))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v16, a8), a9)));
  return (*(v14 + 8 * (((a2 == a3) * a7) ^ a1)))();
}

uint64_t sub_1001A03DC(int a1, int a2, uint64_t a3, int a4, int a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, int a36, uint64_t a37)
{
  v52 = v38 < v42;
  if (v40 - v37 == v44)
  {
    v53 = 0;
  }

  else
  {
    v53 = v40 + a7;
  }

  v54 = *(a3 + 4 * v53) + 1901388722 + *(a3 + 4 * ((v49 + (((a36 + a6) | v43) + v46) * v40) % v41));
  v55 = (v54 ^ 0x253CD1AE) & (2 * (v54 & 0x41BEE58C)) ^ v54 & 0x41BEE58C;
  v56 = ((2 * (v54 ^ 0x262D5BA6)) ^ 0xCF277C54) & (v54 ^ 0x262D5BA6) ^ (2 * (v54 ^ 0x262D5BA6)) & v48;
  v57 = v56 ^ 0x2090822A;
  v58 = (v56 ^ 0x7033C00) & (4 * v55) ^ v55;
  v59 = ((4 * v57) ^ 0x9E4EF8A8) & v57 ^ (4 * v57) & 0x6793BE28;
  v60 = (v59 ^ 0x602B820) & (16 * v58) ^ v58;
  v61 = ((16 * (v59 ^ 0x61910602)) ^ 0x793BE2A0) & (v59 ^ 0x61910602) ^ (16 * (v59 ^ 0x61910602)) & 0x6793BE20;
  v62 = v60 ^ v48 ^ (v61 ^ 0x6113A200) & (v60 << 8);
  v63 = *(a3 + 4 * (v40 - 1518795958));
  v64 = v63 ^ ((v63 ^ 0x6A264F57) - 1169557962) ^ ((v63 ^ 0x6DDC592B) - 1112285110) ^ ((v63 ^ 0x4795AE5A) - 1745217735) ^ ((v63 ^ 0x6FFFFEBB) - 1081063462) ^ v54 ^ (2 * ((v62 << 16) & a5 ^ v62 ^ ((v62 << 16) ^ 0x3E2A0000) & (((v61 ^ 0x6801C0A) << 8) & a5 ^ 0x64010000 ^ (((v61 ^ 0x6801C0A) << 8) ^ 0x13BE0000) & (v61 ^ 0x6801C0A))));
  *(a3 + 4 * (v40 - 1518795958)) = (((v64 ^ a4) + v39) ^ ((v64 ^ a1) + v51) ^ ((v64 ^ v50) + v45)) + v47;
  if (v52 == v40 + a2 < v42)
  {
    v52 = v40 + a2 < v38;
  }

  return (*(a37 + 8 * ((191 * v52) ^ a36)))();
}

uint64_t sub_1001A0EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, unsigned int a44)
{
  v48 = *(&a32 + v44 + 72);
  v49 = (v44 ^ 0xE97BD64F ^ (v45 - 2047605045) & 0x7A0BAFFD) + ((2 * v44) & 0xD2F7F768);
  *(a11 + v49 + 377750601) = (HIBYTE(v48) ^ 0x1D) - ((2 * (HIBYTE(v48) ^ 0x1D)) & 0xBF) + 95;
  *(a11 + v49 + 377750602) = (BYTE2(v48) ^ 0x7C) - ((2 * (BYTE2(v48) ^ 0x7C)) & 0xBF) + 95;
  *(a11 + v49 + 377750603) = (BYTE1(v48) ^ 0x86) - ((2 * (BYTE1(v48) ^ 0x86)) & 0xBF) + 95;
  *(a11 + v49 + 377750604) = v48 ^ 0x23;
  return (*(v47 + 8 * (((v44 + 4 < a44) * v46) ^ v45)))();
}

uint64_t sub_1001A101C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, uint64_t a17)
{
  a16 = v22 + 1012831759 * ((((2 * &a15) | 0xC7C516C4) - &a15 + 471692446) ^ 0xF3719DE8) - 502809283;
  a17 = v18;
  a15 = v17;
  v23 = (*(v19 + 8 * (v22 + 43327)))(&a15);
  return (*(v19 + 8 * v22))(v23, ((v22 + 28003) ^ 0xFFFF6F26 | v21) + v20);
}

uint64_t sub_1001A10FC(int a1, __n128 a2)
{
  v4.n128_u64[0] = (v2 + 13) & 0xF;
  v4.n128_u64[1] = (v2 + 12) & 0xF;
  v5.n128_u64[0] = (v2 + 11) & 0xF;
  v5.n128_u64[1] = (v2 + 10) & 0xF;
  v6.n128_u64[0] = (v2 + 9) & 0xF;
  v6.n128_u64[1] = v3 & 0xF ^ 1;
  v9.val[0].i64[0] = (v2 + 7) & 0xF;
  v9.val[0].i64[1] = (v2 + 6) & 0xF;
  v9.val[1].i64[0] = (v2 + 5) & 0xF;
  v9.val[1].i64[1] = (v2 + 4) & 0xF;
  v9.val[2].i64[0] = (v2 + 3) & 0xF;
  v9.val[2].i64[1] = (v2 + 2) & 0xF;
  v9.val[3].i64[0] = (v2 + 1) & 0xF;
  v9.val[3].i64[1] = v2 & 0xF;
  v7.n128_u64[0] = 0xD5D5D5D5D5D5D5D5;
  v7.n128_u64[1] = 0xD5D5D5D5D5D5D5D5;
  return (*(STACK[0x2A0] + 86512 * (a1 ^ 0x9568)))((v2 + 14) & 0xF, v2 - 16, (v2 & 0x10) - 16, -22649, a2, v4, v5, v6, xmmword_100BC76B0, vqtbl4q_s8(v9, xmmword_100BC76B0), v7);
}

uint64_t sub_1001A129C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  *(v15 - 232) = a7;
  *(v15 - 224) = a2;
  v16 = *(v11 + 8 * v9);
  v17 = *a6;
  v18 = (*a6 + (v7 - 350385979));
  v19 = ((*(*v14 + (*v13 & 0x72D7ACF8)) ^ v18) & 0x7FFFFFFF) * v10;
  v20 = (v19 ^ HIWORD(v19)) * v10;
  *v18 = *(v12 + (v20 >> 24)) ^ HIBYTE(v8) ^ *(a7 + (v20 >> 24)) ^ *((v20 >> 24) + *(v15 - 224) + 1) ^ v20 ^ (107 * BYTE3(v20)) ^ 0x55;
  v21 = (v17 + (v7 - 350385978));
  LODWORD(v20) = ((*(*v14 + (*v13 & 0x72D7ACF8)) ^ v21) & 0x7FFFFFFF) * v10;
  v22 = (v20 ^ WORD1(v20)) * v10;
  *v21 = *(v12 + (v22 >> 24)) ^ BYTE2(v8) ^ *(*(v15 - 232) + (v22 >> 24)) ^ *((v22 >> 24) + *(v15 - 224) + 1) ^ v22 ^ (107 * BYTE3(v22)) ^ 0xB2;
  v23 = (v17 + (v7 - 350385977));
  LODWORD(v22) = ((*(*v14 + (*v13 & 0x72D7ACF8)) ^ v23) & 0x7FFFFFFF) * v10;
  v24 = (v22 ^ WORD1(v22)) * v10;
  *v23 = *(v12 + (v24 >> 24)) ^ BYTE1(v8) ^ *(*(v15 - 232) + (v24 >> 24)) ^ *((v24 >> 24) + *(v15 - 224) + 1) ^ v24 ^ (107 * BYTE3(v24)) ^ 0x65;
  v25 = (v17 + (v7 - 350385976));
  LODWORD(v17) = ((*(*v14 + (*v13 & 0x72D7ACF8)) ^ v25) & 0x7FFFFFFF) * v10;
  v26 = (v17 ^ WORD1(v17)) * v10;
  *v25 = v8 ^ *(v12 + (v26 >> 24)) ^ *(*(v15 - 232) + (v26 >> 24)) ^ *((v26 >> 24) + *(v15 - 224) + 1) ^ v26 ^ (107 * BYTE3(v26)) ^ 0xB1;
  return v16();
}

uint64_t sub_1001A147C(uint64_t a1, char a2, uint64_t a3, char a4, char a5, int a6, char a7, uint64_t a8)
{
  v13 = *(v11 + v9 + 72);
  v14 = ((2 * v9) & 0xDEBAAFE8) + (v9 ^ 0x6F5D57F6);
  *(a8 + v14 - 1868388342) = v13 ^ a4;
  *(a8 + v14 - 1868388341) = ((v8 + a7) ^ BYTE1(v13) ^ a5) - ((2 * ((v8 + a7) ^ BYTE1(v13) ^ a5)) & 0xBF) + 95;
  *(a8 + v14 - 1868388340) = (BYTE2(v13) ^ 0x7C) + (a2 | ~(2 * (BYTE2(v13) ^ 0x7C))) + 96;
  *(a8 + v14 - 1868388339) = (a6 ^ HIBYTE(v13)) + (a2 | ~(2 * (a6 ^ HIBYTE(v13)))) + 96;
  return (*(v12 + 8 * ((43334 * (v9 + 4 < v10)) ^ v8)))();
}

uint64_t sub_1001A15C8()
{
  v2[29] = &STACK[0x600];
  v3 = v2[112];
  STACK[0x268] = v3;
  LODWORD(STACK[0x31C]) = -371865839;
  v2[12] = 0;
  return (*(v1 + 8 * (((((v3 == 0) ^ (v0 - 1)) & 1) * ((v0 - 33994) ^ 0x235A)) ^ v0)))();
}

uint64_t sub_1001A1624@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v22 = ((((v9 - 32) & 0x3B) + 25) & (2 * v10) ^ 0x22) & v10;
  v23 = ((2 * (v10 ^ 0x1F)) ^ 0x7A) & (v10 ^ 0x1F) ^ (2 * (v10 ^ 0x1F)) & a6;
  v24 = v10 ^ (2 * (((4 * v23) & v14 ^ v15 ^ ((4 * v23) ^ a8) & v23) & (16 * ((v23 ^ a7) & (4 * v22) ^ v22)) ^ (v23 ^ a7) & (4 * v22) ^ v22));
  v25 = (((v24 ^ v21) + v18) ^ ((v24 ^ v13) + v11) ^ ((v24 ^ v12) + a1)) + a2;
  v26 = a9 - 1;
  *(v20 - 136) = v26;
  *(v17 + v26) = v25 * (v10 + v19) + (v25 * a4 + (v10 + v19) * a3) * a5 - 94;
  return (*(v16 + 8 * ((74 * (*(v20 - 136) != 0)) ^ v9)))();
}

uint64_t sub_1001A1724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15, int a16, unint64_t a17, unint64_t a18, int a19, int a20)
{
  v25 = 634647737 * (((&a13 ^ 0xFC158A0F3FF81548 | 0xC2FC8534C4B75232) - (&a13 ^ 0xFC158A0F3FF81548) + ((&a13 ^ 0xFC158A0F3FF81548) & 0x3D037ACB3B48ADC8)) ^ 0xE432A0D496D96886);
  a16 = v21 - 658321329 + v25;
  a19 = v21 - v25 + v23;
  a20 = ((v21 - 658321329) ^ 0x12) - v25;
  a13 = -634647737 * (((&a13 ^ 0xFC158A0F3FF81548 | 0xC4B75232) - (&a13 ^ 0xFC158A0F3FF81548) + ((&a13 ^ 0xFC158A0F3FF81548) & 0x3B48ADC8)) ^ 0x96D96886);
  a14 = ((v21 - 658321329) ^ 0x1282) - v25;
  a17 = v22 ^ v25;
  a18 = 23477 - v25;
  v26 = (*(v20 + 8 * (v21 ^ 0xCAED)))(&a13);
  return (*(v24 + 8 * a15))(v26);
}

uint64_t sub_1001A1844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v74 = *(v71 + 4 * (v68 - 1));
  v75 = 1664525 * (v74 ^ (v74 >> 30)) + 602139093;
  v76 = v75 ^ *(v71 + 4 * v68) ^ ((v75 ^ 0x7F37E4F2) - 1557400871) ^ ((v75 ^ 0x63242584) - 1086835793) ^ ((v75 ^ 0x400F9350) - 1676442245);
  v77 = *(STACK[0x218] + 4 * (v69 - 980062229));
  *(v71 + 4 * v68) = v69 + (((v77 ^ 0x58B0BC4D) - 1487977549) ^ ((v77 ^ 0x6B90F6E1) - 1804662497) ^ ((v77 ^ 0x35C1FBC) - 56369084)) - 1795971207 + (((v76 ^ ((v75 ^ 0x7FFFBBF3) - 1545359910) ^ 0xC3995C83) - 2124109608) ^ ((v76 ^ ((v75 ^ 0x7FFFBBF3) - 1545359910) ^ 0x541A9BD1) + 384266118) ^ ((v76 ^ ((v75 ^ 0x7FFFBBF3) - 1545359910) ^ 0xB4602E87) - 157426988));
  v78 = STACK[0x208];
  *(v73 - 136) = (v72 - 1925670330) ^ STACK[0x208];
  *(v73 - 128) = (v68 + 1) ^ v78;
  *(v73 - 120) = (v72 - 1925666958) ^ v78;
  *(v73 - 116) = v72 - 1925670330 - v78 + 117;
  *(v73 - 104) = v72 - v78 + v67;
  *(v73 - 144) = a67;
  *(v73 - 112) = v78;
  v79 = (*(v70 + 8 * (v72 + 31168)))(v73 - 144);
  return (*(v70 + 8 * *(v73 - 108)))(v79);
}

uint64_t sub_1001A1B18@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  *(a1 + 24) = STACK[0x210];
  *(a1 + 32) = *(a49 + 80);
  *(a49 + 80) = a1;
  *(*(a1 + 32) + 24) = a1;
  *(v49 + 8) = (v50 ^ 0x79C4BC1D8A407E3ALL) - *(v49 + 8);
  return (*(v51 + 8 * v50))();
}

uint64_t sub_1001A1C3C@<X0>(int a1@<W8>, int8x16_t a2@<Q0>, int8x16_t a3@<Q1>, int8x16_t a4@<Q2>, int8x16_t a5@<Q3>, int8x16_t a6@<Q4>, int64x2_t a7@<Q5>, int8x16_t a8@<Q6>, int64x2_t a9@<Q7>)
{
  v22 = veorq_s8(veorq_s8(veorq_s8(a2, vaddq_s64(veorq_s8(a2, a6), a7)), veorq_s8(vaddq_s64(veorq_s8(a2, a8), a9), vaddq_s64(veorq_s8(a2, v14), v15))), veorq_s8(vaddq_s64(veorq_s8(a2, v16), v17), v18));
  v23 = veorq_s8(veorq_s8(veorq_s8(a3, vaddq_s64(veorq_s8(a3, a6), a7)), veorq_s8(vaddq_s64(veorq_s8(a3, a8), a9), vaddq_s64(veorq_s8(a3, v14), v15))), veorq_s8(vaddq_s64(veorq_s8(a3, v16), v17), v18));
  v24 = veorq_s8(veorq_s8(veorq_s8(a5, vaddq_s64(veorq_s8(a5, a6), a7)), veorq_s8(vaddq_s64(veorq_s8(a5, a8), a9), vaddq_s64(veorq_s8(a5, v14), v15))), veorq_s8(vaddq_s64(veorq_s8(a5, v16), v17), v18));
  v25 = vaddq_s64(a2, v19);
  v26 = vaddq_s64(a3, v19);
  v27 = vaddq_s64(a5, v19);
  v28 = veorq_s8(veorq_s8(veorq_s8(a4, vaddq_s64(veorq_s8(a4, a6), a7)), veorq_s8(vaddq_s64(veorq_s8(a4, a8), a9), vaddq_s64(veorq_s8(a4, v14), v15))), veorq_s8(vaddq_s64(veorq_s8(a4, v16), v17), v18));
  v29 = vaddq_s64(a4, v19);
  v31.val[1].i64[0] = v28.i64[0] * v29.i64[0];
  v31.val[1].i64[1] = v28.i64[1] * v29.i64[1];
  v31.val[0].i64[0] = v24.i64[0] * v27.i64[0];
  v31.val[0].i64[1] = v24.i64[1] * v27.i64[1];
  v31.val[2].i64[0] = v23.i64[0] * v26.i64[0];
  v31.val[2].i64[1] = v23.i64[1] * v26.i64[1];
  v31.val[3].i64[0] = v22.i64[0] * v25.i64[0];
  v31.val[3].i64[1] = v22.i64[1] * v25.i64[1];
  *(v10 - v9 + 91) = vrev64_s8(*&vqtbl4q_s8(v31, v20));
  return (*(v13 + 8 * (((v9 + 8 == v11) * v12) ^ a1)))(vaddq_s64(a2, v21), vaddq_s64(a3, v21), vaddq_s64(a4, v21), vaddq_s64(a5, v21));
}

uint64_t sub_1001A2028@<X0>(unsigned int a1@<W8>)
{
  v8 = a1 < v2;
  *(v4 + v3 + 24) = *(v5 + v3) ^ 0x5F;
  if (v8 == ((32 * (v7 ^ 0x30CC)) ^ 0x3E21) + v3 > 0x8BE1DFF1)
  {
    v8 = v3 + 1948131343 < v1;
  }

  return (*(v6 + 8 * ((237 * v8) ^ v7)))();
}

uint64_t sub_1001A20A4@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  if ((((*(result + 8) + a2) ^ 1) & v2) != 0)
  {
    v3 = -371865839;
  }

  else
  {
    v3 = 371891528;
  }

  *(result + 12) = v3;
  return result;
}

uint64_t sub_1001A2298()
{
  *(v2 + v4) = *(v3 + v4) ^ *(v6 + v4) ^ 0x5F;
  v8 = v4 + 1836519902 < v1;
  if (v1 < 0x6D7711DD != (v4 + 1) > 0xFFFFFFFF9288EE22)
  {
    v8 = v1 < 0x6D7711DD;
  }

  return (*(v7 + 8 * ((v8 * v5) ^ v0)))();
}

uint64_t sub_1001A24B0(uint64_t a1)
{
  *(v4 + 1) = 5;
  *v3 = -54;
  return (*(v1 + 8 * v2))(a1, 982517440, 245629360, 1074346558, 2683429644, 2173401896, 776599891, 808673657);
}

uint64_t sub_1001A25C8()
{
  v6 = (*(v4 + 16) + v2);
  v7 = (*(v4 + 20) + v2) < 117;
  v8 = *(v3 + 8 * (((4 * v7) | (8 * v7)) ^ (v1 - 16179)));
  *(v5 - 208) = v3;
  *(v5 - 200) = v0;
  return v8(v6);
}

uint64_t sub_1001A2608(int a1)
{
  v4 = ((a1 - 471906862) ^ 0xFFFFFFFF1C200BD8) + v2;
  v5 = v2 + 1889024523 < v1;
  if (v1 < 0x70983A0A != v4 + (1138 * (a1 ^ 0x29C2u)) > 0xFFFFFFFF8F67C5F5)
  {
    v5 = v1 < 0x70983A0A;
  }

  return (*(v3 + 8 * ((21 * !v5) ^ a1)))();
}

uint64_t sub_1001A2698@<X0>(int a1@<W1>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v5.n128_u64[0] = (v3 + 13) & 0xF;
  v5.n128_u64[1] = (v3 + 12) & 0xF;
  v6.n128_u64[0] = (v3 + 11) & 0xF;
  v6.n128_u64[1] = (((-41 * (a1 ^ 0x64)) ^ 0xC) + v3) & 0xF;
  v7.n128_u64[0] = (v3 + 9) & 0xF;
  v7.n128_u64[1] = v3 & 0xF ^ 8;
  v11.val[0].i64[0] = (v3 + 7) & 0xF;
  v11.val[0].i64[1] = (v3 + 6) & 0xF;
  v11.val[1].i64[0] = (v3 + 5) & 0xF;
  v11.val[1].i64[1] = (v3 + 4) & 0xF;
  v11.val[2].i64[0] = (v3 + 3) & 0xF;
  v11.val[2].i64[1] = (v3 + 2) & 0xF;
  v11.val[3].i64[0] = (v3 + 1) & 0xF;
  v11.val[3].i64[1] = v3 & 0xF;
  v8.n128_u64[0] = 0x4747474747474747;
  v8.n128_u64[1] = 0x4747474747474747;
  v9.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v9.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  return (*(v4 + 8 * a1))(v3 + a2 - 16, a3, v5, v6, v7, xmmword_100BC76B0, vqtbl4q_s8(v11, xmmword_100BC76B0), v8, v9);
}

uint64_t sub_1001A27A0@<X0>(uint64_t a1@<X8>)
{
  v5 = (a1 + 4 * v3);
  v6 = *(v1 + 8 * (v4 - 2099)) - 300417463;
  v7 = *(v1 + 8 * (v4 - 1447)) - 1465875147;
  v8 = *(v1 + 8 * (v4 ^ 0x1F4F)) - 1110602443;
  v9 = *(v1 + 8 * (v4 - 2695)) - 1040000683;
  v10 = *(v6 + ((v5[1] >> 22) & 0x3FC)) ^ *(v7 + 4 * BYTE2(v5[1])) ^ *(v8 + 4 * BYTE1(v5[1])) ^ *(v9 + 4 * v5[1]) ^ 0x150599CD;
  v11 = *(v6 + ((v5[2] >> 22) & 0x3FC)) ^ *(v7 + 4 * BYTE2(v5[2])) ^ *(v8 + 4 * BYTE1(v5[2])) ^ *(v9 + 4 * v5[2]) ^ 0x150599CD;
  v12 = *(v6 + ((v5[3] >> 22) & 0x3FC)) ^ *(v7 + 4 * BYTE2(v5[3])) ^ *(v8 + 4 * BYTE1(v5[3])) ^ *(v9 + 4 * v5[3]) ^ 0x150599CD;
  *v5 = *(v6 + ((*v5 >> 22) & 0x3FC)) ^ *(v7 + 4 * BYTE2(*v5)) ^ *(v8 + 4 * (*v5 >> (((v4 - 94) | 0xCB) ^ 0xC7))) ^ *(v9 + 4 * *v5) ^ 0x150599CD;
  v5[1] = v10;
  v5[2] = v11;
  v5[3] = v12;
  return (*(v2 + 8 * ((23 * (v3 != 36)) ^ v4)))();
}

uint64_t sub_1001A29A0()
{
  v5 = (*(v2 + 8 * (v4 + 42665)))(*(v1 + 8));
  *(v1 + 8) = v0;
  *v1 = v3;
  return (*(v2 + 8 * v4))(v5);
}

uint64_t sub_1001A2A64()
{
  STACK[0x3C8] = v0;
  LODWORD(STACK[0x23C]) = v5;
  STACK[0x3A8] = v2;
  LODWORD(STACK[0x2D8]) = v4;
  STACK[0x3E0] = (v1 - 27403) + (STACK[0x2A0] ^ 0xDB7E1FFF77FF17BALL) + ((2 * STACK[0x2A0]) & 0xB6FC3FFEEFFE2F74) + 0x7CD3F35CBBF69F35;
  v6 = ((v5 + v4 + LODWORD(STACK[0x3BC]) + LODWORD(STACK[0x304])) & 0xFFFFFFF0) + 96;
  LODWORD(STACK[0x30C]) = v6;
  v7 = (*(v3 + 8 * (v1 ^ 0x7154)))(v6);
  STACK[0x240] = v7;
  return (*(v3 + 8 * (((8 * (v7 == 0)) | (16 * (v7 == 0))) ^ v1)))();
}

uint64_t sub_1001A2C34@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W3>, int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v53 = *(v38 + (a8 - 1764975132) % v36);
  v54 = *(v37 + (a8 + a2) % v39);
  v55 = (a3 ^ (((v53 ^ 0xFF80) & ((*(v37 + (a8 - 1764975134) % v39) << 8) ^ 0xB395) | v53 & a1) << 8)) & (v54 ^ a4) | v54 & a5;
  v56 = *(v38 + (a8 + a6) % v36);
  v57 = (a7 ^ (v55 << 8)) & (v56 ^ v42) | v56 & v43;
  *(&STACK[0x2F0] + 4 * a8 + v51) = (((v57 ^ v44) + v45) ^ ((v57 ^ v46) + v47) ^ ((v57 ^ v48) + v49)) + v50;
  return (*(a36 + 8 * ((((a8 + v52) < 0x100) * v41) ^ v40)))();
}

uint64_t sub_1001A2D1C(unsigned int a1, uint64_t a2, unsigned int a3)
{
  v11 = (((v3 + 1660404138) & 0x9D07F7EC) - 10161) & v8;
  *(*(v10 - 184) + v8) = *(v4 + v11) ^ *(v7 + v8) ^ *(v5 + v11) ^ *(v6 + v11) ^ (59 * v11);
  v12 = a1 < a3;
  if (v12 == v8 + 1 > 0x1009D7B2)
  {
    v12 = v8 - 269080498 < a1;
  }

  return (*(v9 + 8 * ((42918 * v12) ^ v3)))();
}

uint64_t sub_1001A2DEC(double a1, __n128 a2, __n128 a3)
{
  a2.n128_u16[0] = -5141;
  a2.n128_u8[2] = -21;
  a2.n128_u8[3] = -21;
  a2.n128_u8[4] = -21;
  a2.n128_u8[5] = -21;
  a2.n128_u8[6] = -21;
  a2.n128_u8[7] = -21;
  a3.n128_u16[0] = -22360;
  a3.n128_u8[2] = -88;
  a3.n128_u8[3] = -88;
  a3.n128_u8[4] = -88;
  a3.n128_u8[5] = -88;
  a3.n128_u8[6] = -88;
  a3.n128_u8[7] = -88;
  return (*(v4 + 8 * (v3 - 7766)))(xmmword_100F523B0, a2, a3);
}

uint64_t sub_1001A2F1C@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, int a9@<W8>)
{
  v22 = v10 - 1;
  v23 = ((v9 ^ 0xB6) + 84) ^ v9 ^ ((v9 ^ 0x2F) + a4) ^ ((v9 ^ a5) + a6) ^ ((v9 ^ a7 ^ (a9 + 2) & 0xF7) + a8);
  v24 = (((v23 ^ v15) + v18) ^ ((v23 ^ v19) + v21) ^ ((v23 ^ v14) + v11)) + v12;
  *(v20 - 128) = v22;
  *(a1 + v22) = v24 * (v9 + v13) + ((v9 + v13) * v17 - v24 + 16 * v24) * a2 + a3;
  return (*(v16 + 8 * (a9 ^ (8 * (*(v20 - 128) == 0)))))();
}

uint64_t sub_1001A2FEC(int a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v79 = *(v75 + 8 * v72);
  v80 = *a3;
  v81 = STACK[0x200];
  v82 = (*a3 + (v71 - 350385979));
  v83 = ((*(*(a71 - 1680276466) + (*(STACK[0x200] - 231415367) & 0x72D7ACF8)) ^ v82) & 0x7FFFFFFF) * v77;
  v84 = (v83 ^ HIWORD(v83)) * v77;
  *v82 = *(v74 + (v84 >> 24)) ^ HIBYTE(a1) ^ *(v78 + (v84 >> 24)) ^ *((v84 >> 24) + v73 + 1) ^ v84 ^ (BYTE3(v84) * v76) ^ 0x55;
  v85 = (v80 + (v71 - 350385978));
  LODWORD(v84) = ((*(*(a71 - 1680276466) + (*(v81 - 231415367) & 0x72D7ACF8)) ^ v85) & 0x7FFFFFFF) * v77;
  v86 = (v84 ^ WORD1(v84)) * v77;
  *v85 = *(v74 + (v86 >> 24)) ^ BYTE2(a1) ^ *(v78 + (v86 >> 24)) ^ *((v86 >> 24) + v73 + 1) ^ v86 ^ (BYTE3(v86) * v76) ^ 0xB2;
  v87 = (v80 + (v71 - 350385977));
  LODWORD(v86) = ((*(*(a71 - 1680276466) + (*(v81 - 231415367) & 0x72D7ACF8)) ^ v87) & 0x7FFFFFFF) * v77;
  v88 = (v86 ^ WORD1(v86)) * v77;
  *v87 = *(v74 + (v88 >> 24)) ^ BYTE1(a1) ^ *(v78 + (v88 >> 24)) ^ *((v88 >> 24) + v73 + 1) ^ v88 ^ (BYTE3(v88) * v76) ^ 0x65;
  v89 = (v80 + (v71 - 350385976));
  LODWORD(v80) = ((*(*(a71 - 1680276466) + (*(v81 - 231415367) & 0x72D7ACF8)) ^ v89) & 0x7FFFFFFF) * v77;
  v90 = (v80 ^ WORD1(v80)) * v77;
  *v89 = a1 ^ *(v74 + (v90 >> 24)) ^ *(v78 + (v90 >> 24)) ^ *((v90 >> 24) + v73 + 1) ^ v90 ^ (BYTE3(v90) * v76) ^ 0xB1;
  return v79();
}

uint64_t sub_1001A3350(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48)
{
  HIDWORD(a39) = 0;
  LODWORD(v187) = a7 ^ 0x9570;
  v52 = v49 & ((a7 ^ 0x9570) - 48996) ^ 0x3436E83FLL;
  *(v51 - 232) = v52;
  v53 = v49 & 0xFFFFFFFB ^ 0x3436E83ELL;
  *(v51 - 152) = v53;
  LODWORD(v53) = *(v50 + v53);
  v54 = v53 ^ 0x27;
  v55 = *(v50 + v52);
  HIDWORD(v187) = 20 * (a7 ^ 0x2B38);
  v56 = v53 ^ (BYTE4(v187) + 21);
  v57 = v49 & 0xFFFFFFF3 ^ 0x3436E83ELL;
  *(v51 - 160) = v57;
  v58 = *(v50 + v57);
  v59 = *(a17 + 4 * v56);
  v60 = *(a18 + 4 * (v55 ^ 0xF5));
  v61 = v49 & 0xFFFFFFF6 ^ 0x3436E83FLL;
  *(v51 - 176) = v61;
  v62 = *(v50 + v61);
  v63 = *(a17 + 4 * (v58 ^ 0x15));
  v64 = v54 + 1195092421;
  v65 = v49 & 0xFFFFFFF0 ^ 0x3436E83FLL;
  *(v51 - 200) = v65;
  v66 = *(a18 + 4 * (v62 ^ 0xB));
  v67 = *(a16 + (*(v50 + v65) ^ 0x15));
  v68 = v49 & 0xFFFFFFF9 ^ 0x3436E83ELL;
  *(v51 - 208) = v68;
  v69 = *(v50 + v68);
  v70 = *(a15 + 4 * (v69 ^ 0x51));
  v71 = v49 & 0xFFFFFFF1 ^ 0x3436E83ELL;
  *(v51 - 168) = v71;
  v72 = *(v50 + v71);
  v73 = v49 & 0xFFFFFFFD ^ 0x3436E83ELL;
  *(v51 - 184) = v73;
  v74 = v49;
  v75 = *(v50 + v73);
  v76 = *(a15 + 4 * (v75 ^ 0xD2));
  v199 = v74 & 0xFFFFFFFC ^ 0x3436E83FLL;
  LODWORD(v73) = *(a16 + (*(v50 + v199) ^ 0x90));
  LODWORD(v75) = a1 ^ HIDWORD(a19) ^ v75;
  v77 = v74 ^ 0x3436E83ELL;
  *(v51 - 192) = v77;
  LODWORD(v75) = v75 ^ v76 ^ v60;
  v78 = *(a15 + 4 * (v72 ^ 0x59));
  LODWORD(v73) = v73 ^ *(a17 + 4 * (*(v50 + v77) ^ 0x12)) ^ ((*(v50 + v77) ^ 0x68) + 1195092421);
  v79 = v74 & 0xFFFFFFF8 ^ 0x3436E83FLL;
  *(v51 - 248) = v79;
  LODWORD(v77) = v75 ^ v73;
  v80 = *(v50 + v79);
  LODWORD(v58) = v48 ^ a21 ^ ((v58 ^ 0x6F) + 1195092421);
  v81 = v74 & 0xFFFFFFF2 ^ 0x3436E83FLL;
  *(v51 - 256) = v81;
  v82 = v80 ^ 0x77;
  v83 = *(v50 + v81);
  LODWORD(v82) = *(a16 + v82);
  LODWORD(v58) = v58 ^ v67 ^ v72;
  v84 = v74 & 0xFFFFFFF4 ^ 0x3436E83FLL;
  *(v51 - 224) = v84;
  LODWORD(v58) = v58 ^ v63;
  LODWORD(v84) = *(a16 + *(v50 + v84));
  LODWORD(v83) = v78 ^ *(a18 + 4 * (v83 ^ 0x73));
  v85 = v74 & 0xFFFFFFF5 ^ 0x3436E83ELL;
  *(v51 - 240) = v85;
  LODWORD(v58) = v58 ^ v83;
  v86 = *(v50 + v85);
  LODWORD(v85) = *(a15 + 4 * (v86 ^ 0x15));
  *(v51 - 212) = v74;
  v198 = v74 & 0xFFFFFFF7 ^ 0x3436E83ELL;
  v87 = a48 ^ HIDWORD(a20) ^ v84 ^ v66 ^ v86;
  v200 = v74 & 0xFFFFFFFA ^ 0x3436E83FLL;
  LODWORD(v84) = v87 ^ v85 ^ *(a17 + 4 * (*(v50 + v198) ^ 0xB2)) ^ ((*(v50 + v198) ^ 0xC8) + 1195092421);
  v88 = a8 ^ a37 ^ v64 ^ v69 ^ v59 ^ v70 ^ (v82 | 0x3AE4D200) ^ *(a18 + 4 * (*(v50 + v200) ^ 0x62));
  LODWORD(v85) = (-(v58 ^ 0x2A4CBB9) ^ (950595439 - (v58 ^ 0x3A0C24D6)) ^ 0x4BBB43D8 ^ ((v58 ^ 0x2A4CBB9) - 2 * ((v58 ^ 0x2A4CBB9) & 0x4BBB43DE ^ v58 & 6) + 1270563800)) + 950595439;
  v89 = *(&off_1010A0B50 + a7 - 9590) - 105062882;
  v90 = *&v89[4 * (BYTE2(v88) ^ 0x45)];
  LODWORD(v58) = ((-(v58 ^ 0xB9) ^ (111 - (v58 ^ 0xD6)) ^ 0xD8 ^ ((v58 ^ 0xB9) - 2 * ((v58 ^ 0xB9) & 0xDE ^ v58 & 6) - 40)) + 111);
  v91 = *(&off_1010A0B50 + (a7 ^ 0x2C14)) - 1298894122;
  LODWORD(v69) = (v58 ^ 0xFB8B19E8) - 1382142733 + *&v91[4 * (v58 ^ 0xDB)];
  LODWORD(v81) = v77 ^ 0x3A2959FC;
  LODWORD(v77) = (v77 ^ 0xFB8B1914) - 1382142733 + *&v91[4 * (v77 ^ 0x27)];
  v92 = (v88 ^ 0xFB8B196A) - 1382142733 + *&v91[4 * (v88 ^ 0x59)];
  BYTE2(v70) = BYTE2(v84) ^ 0x5A;
  LODWORD(v86) = (v84 ^ 0xFB8B194E) - 1382142733 + *&v91[4 * (v84 ^ 0x7D)];
  LODWORD(v82) = a7;
  *(v51 - 140) = a7;
  v93 = *(&off_1010A0B50 + (a7 ^ 0x28DF)) - 268844587;
  HIDWORD(v94) = *&v93[4 * BYTE3(v81)];
  LODWORD(v94) = HIDWORD(v94);
  v95 = *(&off_1010A0B50 + (v82 ^ 0x2BFF)) - 1238615563;
  LODWORD(v69) = (v94 >> 3) ^ HIDWORD(a37) ^ ((v94 >> 3) >> 8) ^ ((v94 >> 3) >> 4) ^ v90 & 0xFFF7FFFF ^ *&v95[4 * ((v84 ^ 0xD7A6) >> 8)] ^ ((v90 >> 3) & 0xD800AAC ^ 0x85DF1BA7) & (v90 & 0x80000 | 0xBFD77BEF) ^ v69;
  HIDWORD(v94) = *&v93[4 * ((v84 ^ 0x5D5AD7A6) >> 24)];
  LODWORD(v94) = HIDWORD(v94);
  LODWORD(v84) = *&v89[4 * (BYTE2(v85) ^ 0xCE)];
  v96 = a14 ^ (v94 >> 3) ^ v84 ^ ((v94 >> 3) >> 4) ^ ((v94 >> 3) >> 8) ^ *&v95[4 * BYTE1(v81)] ^ (v84 >> 3) & 0xD800AAC ^ v92;
  HIDWORD(v94) = *&v93[4 * ((HIBYTE(v88) ^ 0xA3) - ((2 * (HIBYTE(v88) ^ 0xA3)) & 0x19A)) + 820];
  LODWORD(v94) = HIDWORD(v94);
  v97 = *&v89[4 * BYTE2(v70)];
  LODWORD(v58) = (v94 >> 3) ^ HIDWORD(a36) ^ v97 ^ ((v94 >> 3) >> 8) ^ ((v94 >> 3) >> 4);
  HIDWORD(v94) = *&v93[4 * ((v85 ^ 0xCD00C000) >> 24)];
  LODWORD(v94) = HIDWORD(v94);
  LODWORD(v84) = v58 ^ *&v95[4 * ((v85 ^ 0xC000) >> 8)] ^ (v97 >> 3) & 0xD800AAC ^ v77;
  LODWORD(v58) = *&v89[4 * BYTE2(v81)] ^ a36 ^ (v94 >> 3) ^ ((v94 >> 3) >> 8) ^ ((v94 >> 3) >> 4) ^ *&v95[4 * (BYTE1(v88) ^ 0xED)] ^ (*&v89[4 * BYTE2(v81)] >> 3) & 0xD800AAC ^ v86;
  LODWORD(v85) = v58 ^ 0x38041B25;
  LODWORD(v58) = *&v91[4 * ((v89[4 * BYTE2(v81)] ^ a36 ^ (v94 >> 3) ^ ((v94 >> 3) >> 8) ^ ((v94 >> 3) >> 4) ^ v95[4 * (BYTE1(v88) ^ 0xED)] ^ (*&v89[4 * BYTE2(v81)] >> 3) & 0xAC ^ v86) ^ 0xFE)] + (v58 ^ 0xFB8B19CD) - 1382142733;
  BYTE1(v77) = BYTE1(v84) ^ 0x99;
  v98 = *&v93[4 * ((v84 ^ 0x735999B5) >> 24)];
  HIDWORD(v94) = v98 ^ 2;
  LODWORD(v94) = v98 ^ 0x10F71E78;
  v99 = v94 >> 3;
  LODWORD(v86) = (v99 ^ (v99 >> 4)) >> ((v99 ^ (v99 >> 4)) & 4) >> ((v99 ^ (v99 >> 4)) & 4 ^ 4);
  v100 = v86 + v99 - 2 * (v86 & v99);
  v101 = (v84 ^ 0xFB8B195D) - 1382142733 + *&v91[4 * (v84 ^ 0x6E)];
  LODWORD(v86) = (v96 ^ 0xFB8B196F) - 1382142733 + *&v91[4 * (v96 ^ 0x5C)];
  HIDWORD(v94) = *&v93[4 * (BYTE3(v69) ^ 0x37)];
  LODWORD(v94) = HIDWORD(v94);
  LODWORD(v84) = *&v89[4 * (BYTE2(v84) ^ 0x97)];
  v102 = v84 ^ HIDWORD(a35) ^ (v94 >> 3) ^ ((v94 >> 3) >> 8) ^ ((v94 >> 3) >> 4);
  LODWORD(v58) = *&v95[4 * (BYTE1(v96) ^ 0x6E)] ^ (v84 >> 3) & 0xD800AAC ^ v58;
  LODWORD(v84) = *&v89[4 * (BYTE2(v96) ^ 0x2F)];
  v103 = v102 ^ v58;
  LODWORD(v58) = v84 ^ a34 ^ *&v95[4 * BYTE1(v85)] ^ (v84 >> 3) & 0xD800AAC ^ ((v69 ^ 0xFB8B19D5) - 1382142733 + *&v91[4 * (v69 ^ 0xE6)]);
  LODWORD(v84) = *&v93[4 * (HIBYTE(v96) ^ 0xCC)];
  v104 = v58 ^ v100;
  HIDWORD(v94) = v84;
  LODWORD(v94) = v84;
  v105 = *&v89[4 * BYTE2(v85)] ^ a35 ^ (v94 >> 3) ^ ((v94 >> 3) >> 8) ^ ((v94 >> 3) >> 4) ^ *&v95[4 * (BYTE1(v69) ^ 0xAC)] ^ (*&v89[4 * BYTE2(v85)] >> 3) & 0xD800AAC ^ v101;
  HIDWORD(v94) = *&v93[4 * BYTE3(v85)];
  LODWORD(v94) = HIDWORD(v94);
  v106 = *&v89[4 * (BYTE2(v69) ^ 0x22)];
  LODWORD(v69) = (v94 >> 3) ^ HIDWORD(a34) ^ v106 ^ ((v94 >> 3) >> 8) ^ ((v94 >> 3) >> 4) ^ *&v95[4 * BYTE1(v77)] ^ (v106 >> 3) & 0xD800AAC ^ v86;
  LODWORD(v58) = ((v94 >> 3) ^ BYTE4(a34) ^ v106 ^ ((v94 >> 3) >> 8) ^ ((v94 >> 3) >> 4) ^ v95[4 * BYTE1(v77)] ^ (v106 >> 3) & 0xAC ^ v86);
  v107 = *&v91[4 * (v58 ^ 0x70)];
  LODWORD(v86) = v107 ^ ((v107 ^ 0x7BC1B6DA) - 698377687) ^ ((v107 ^ 0x22DE3346) - 1891622987) ^ ((v107 ^ 0x658BA96E) - 938113635) ^ ((v107 ^ 0x6EF5FFFF) - 1016343794) ^ v58 ^ 0xA9EACA4E;
  LODWORD(v84) = (v107 ^ 0x8D9D2CF2) & (2 * (v107 & 0xAD9E2CF3)) ^ v107 & 0xAD9E2CF3;
  LODWORD(v85) = ((2 * (v107 ^ 0xCDBD6D50)) ^ 0xC0468346) & (v107 ^ 0xCDBD6D50) ^ (2 * (v107 ^ 0xCDBD6D50)) & 0x602341A2;
  LODWORD(v84) = (v85 ^ 0x40000100) & (4 * v84) ^ v84;
  LODWORD(v85) = ((4 * (v85 ^ 0x202140A1)) ^ 0x808D068C) & (v85 ^ 0x202140A1) ^ (4 * (v85 ^ 0x202140A1)) & 0x602341A0;
  LODWORD(v84) = (v85 ^ 0x10080) & (16 * v84) ^ v84;
  LODWORD(v85) = ((16 * (v85 ^ 0x60224123)) ^ 0x2341A30) & (v85 ^ 0x60224123) ^ (16 * (v85 ^ 0x60224123)) & 0x602341A0;
  LODWORD(v84) = v84 ^ 0x602341A3 ^ (v85 ^ 0x200000) & (v84 << 8);
  v108 = v107 ^ (2 * ((v84 << 16) & 0x60230000 ^ v84 ^ ((v84 << 16) ^ 0x41A30000) & (((v85 ^ 0x60034183) << 8) & 0x60230000 ^ 0x40220000 ^ (((v85 ^ 0x60034183) << 8) ^ 0x23410000) & (v85 ^ 0x60034183))));
  HIDWORD(v94) = *&v93[4 * (HIBYTE(v103) ^ 7)];
  LODWORD(v94) = HIDWORD(v94);
  LODWORD(v86) = ((2 * ((v108 ^ 0x251A2FB5) & (v58 ^ 0x355A3F5F) ^ v108 & 0x4ED1261C)) ^ 0x99204C28) + v86;
  LODWORD(v58) = *&v89[4 * ((v104 ^ 0x97F494DD) >> 16)];
  v109 = (v94 >> 3) ^ HIDWORD(a33) ^ v58 ^ ((v94 >> 3) >> 8) ^ ((v94 >> 3) >> 4) ^ *&v95[4 * ((v105 ^ 0x1B23) >> 8)] ^ (v58 >> 3) & 0xD800AAC ^ v86;
  LODWORD(v84) = *&v89[4 * (BYTE2(v103) ^ 0xE2)];
  HIDWORD(v94) = *&v93[4 * ((v105 ^ 0x216D1B23u) >> 24)];
  LODWORD(v94) = HIDWORD(v94);
  v110 = *&v89[4 * (BYTE2(v69) ^ 0xC2)];
  v111 = (v94 >> 3) ^ HIDWORD(a32) ^ v110 ^ ((v94 >> 3) >> 8) ^ ((v94 >> 3) >> 4) ^ *&v95[4 * (BYTE1(v103) ^ 0x6B)] ^ (v110 >> 3) & 0xD800AAC ^ ((v104 ^ 0xFB8B1935) - 1382142733 + *&v91[4 * (v104 ^ 6)]);
  HIDWORD(v94) = *&v93[4 * ((v104 ^ 0x97F494DD) >> 24)];
  LODWORD(v94) = HIDWORD(v94);
  LODWORD(v58) = *&v89[4 * ((v105 ^ 0x216D1B23u) >> 16)];
  LODWORD(v86) = HIDWORD(a13) ^ v58 ^ (v94 >> 3) ^ ((v94 >> 3) >> 4) ^ ((v94 >> 3) >> 8);
  HIDWORD(v94) = *&v93[4 * (BYTE3(v69) ^ 0x58)];
  LODWORD(v94) = HIDWORD(v94);
  LODWORD(v58) = v86 ^ *&v95[4 * (BYTE1(v69) ^ 0x96)] ^ (v58 >> 3) & 0xD800AAC ^ ((v103 ^ 0xFB8B1964) - 1382142733 + *&v91[4 * (v103 ^ 0x57)]);
  v112 = (v94 >> 3) ^ a33 ^ ((v94 >> 3) >> 8) ^ ((v94 >> 3) >> 4) ^ *&v95[4 * ((v104 ^ 0x94DD) >> 8)] ^ (((2 * v105) & 0x1D0 ^ 0xFFFFFFBF) + (v105 ^ 0x23) - 1456912676 + *&v91[4 * (v105 ^ 0xF8)]) ^ (((v84 >> 3) & 0xD800A24 ^ v84 & 0xFD97CA77 ^ 0x6EB3599) & (v84 & 0x2683588 ^ 0x7EB1D59 ^ (v84 >> 3) & 0x88) | ((v84 >> 3) & 0xD800A24 ^ v84 & 0xFD97CA77) & 0xF814C226);
  HIDWORD(v94) = *&v89[4 * (BYTE2(v58) ^ 0x85)];
  LODWORD(v94) = HIDWORD(v94);
  LODWORD(v86) = v94 >> 1;
  HIDWORD(v94) = (HIDWORD(v94) >> 4) & 0x6C00556 ^ v86;
  LODWORD(v94) = v86;
  v113 = v94 >> 31;
  v114 = v112 ^ 0xDB32EF13;
  LODWORD(v69) = *&v91[4 * (v112 ^ 0xC8)] + (v112 ^ 0xFB8B19FB) - 1382142733;
  LODWORD(v85) = ((v112 ^ 0xDB32EF13) >> 16) & 0xFE | HIWORD(v112) & 1;
  v115 = v58 ^ 0xBE4B0A07;
  LODWORD(v77) = *&v91[4 * (((v58 ^ 7) - (v58 ^ 0xDC)) ^ 0xFFFFFFFE) + 4 * (v58 ^ 7)];
  LODWORD(v58) = ((2 * (v77 ^ 0x10E81B9A)) ^ 0x7AEC6ED2) & (v77 ^ 0x10E81B9A) ^ (2 * (v77 ^ 0x10E81B9A)) & 0xBD763768;
  LODWORD(v86) = 2 * (v77 & 0xAD9E2CF3);
  LODWORD(v84) = (v58 ^ 0x38602640) & (4 * (v86 & (v77 ^ 0x9DC0AFA) ^ v77 & 0xAD9E2CF3)) ^ v86 & (v77 ^ 0x9DC0AFA) ^ v77 & 0xAD9E2CF3;
  LODWORD(v58) = ((4 * (v58 ^ 0x85121129)) ^ 0xF5D8DDA4) & (v58 ^ 0x85121129) ^ (4 * (v58 ^ 0x85121129)) & 0xBD763768;
  LODWORD(v84) = (v58 ^ 0xB5501520) & (16 * v84) ^ v84;
  LODWORD(v58) = ((16 * (v58 ^ 0x8262249)) ^ 0xD7637690) & (v58 ^ 0x8262249) ^ (16 * (v58 ^ 0x8262249)) & 0xBD763740;
  LODWORD(v84) = v84 ^ 0xBD763769 ^ (v58 ^ 0x95623600) & (v84 << 8);
  v116 = v86 & (v77 ^ 0x8D1D08EB) ^ v77 & 0xAD9E2CF3;
  LODWORD(v86) = ((2 * (v77 ^ 0xCE31084F)) ^ 0xC75E4978) & (v77 ^ 0xCE31084F) ^ (2 * (v77 ^ 0xCE31084F)) & 0x63AF24BC;
  v117 = (v86 ^ 0x42080018) & (4 * v116) ^ v116;
  LODWORD(v86) = ((4 * (v86 ^ 0x20A12484)) ^ 0x8EBC92F0) & (v86 ^ 0x20A12484) ^ (4 * (v86 ^ 0x20A12484)) & 0x63AF24B8;
  v118 = (v86 ^ 0x2AC00B0) & (16 * v117) ^ v117;
  LODWORD(v86) = ((16 * (v86 ^ 0x6103240C)) ^ 0x3AF24BC0) & (v86 ^ 0x6103240C) ^ (16 * (v86 ^ 0x6103240C)) & 0x63AF2480;
  v119 = v118 ^ 0x63AF24BC ^ (v86 ^ 0x22A20000) & (v118 << 8);
  v120 = v77 ^ (2 * ((v119 << 16) & 0x63AF0000 ^ v119 ^ ((v119 << 16) ^ 0x24BC0000) & (((v86 ^ 0x410D243C) << 8) & 0x63AF0000 ^ 0x408B0000 ^ (((v86 ^ 0x410D243C) << 8) ^ 0x2F240000) & (v86 ^ 0x410D243C))));
  HIDWORD(v94) = *&v93[4 * (HIBYTE(v111) ^ 0xC)];
  LODWORD(v94) = HIDWORD(v94);
  LODWORD(v86) = *&v89[4 * (v85 ^ 0xCE)];
  v121 = (v94 >> 3) ^ v86 ^ ((v94 >> 3) >> 8) ^ ((v94 >> 3) >> 4) ^ (v86 >> 3) & 0xD800AAC ^ *&v95[4 * (BYTE1(v109) ^ 0xCA)] ^ (((2 * ((v120 ^ 0xB80458B) & (v115 ^ 0x1BA45D1C) ^ v120 & 0x602F44F4)) ^ 0x40108900) + (v115 ^ v77 ^ (2 * ((v84 << 16) & 0x3D760000 ^ v84 ^ ((v84 << 16) ^ 0x37690000) & (((v58 ^ 0x28140169) << 8) & 0x3D760000 ^ 0x9400000 ^ (((v58 ^ 0x28140169) << 8) ^ 0x76370000) & (v58 ^ 0x28140169)))) ^ 0x46395BC9));
  HIDWORD(v94) = *&v93[4 * HIBYTE(v114)];
  LODWORD(v94) = HIDWORD(v94);
  LODWORD(v86) = *&v89[4 * (BYTE2(v109) ^ 0x53)];
  LODWORD(v58) = (v94 >> 3) ^ v86 ^ ((v94 >> 3) >> 8) ^ ((v94 >> 3) >> 4);
  HIDWORD(v94) = *&v93[4 * HIBYTE(v115)];
  LODWORD(v94) = HIDWORD(v94);
  LODWORD(v85) = *&v89[4 * (BYTE2(v111) ^ 0xE6)];
  v122 = v85 ^ HIDWORD(a31) ^ (v94 >> 3) ^ ((v94 >> 3) >> 8) ^ ((v94 >> 3) >> 4) ^ *&v95[4 * BYTE1(v114)] ^ (v85 >> 3) & 0xD800AAC ^ (*&v91[4 * (v109 ^ 0x5C)] + (v109 ^ 0xFB8B196F) - 1382142733);
  HIDWORD(v94) = *&v93[4 * (HIBYTE(v109) ^ 0xD3)];
  LODWORD(v94) = HIDWORD(v94);
  v123 = (v94 >> 3) ^ a32 ^ ((v94 >> 3) >> 8) ^ ((v94 >> 3) >> 4) ^ *&v95[4 * (BYTE1(v111) ^ 0x8C)] ^ v113 ^ v69;
  LODWORD(v94) = __ROR4__(__ROR4__(v58 ^ 0x7B02A483, 19) ^ 0x77EBEBB4, 13);
  LODWORD(v77) = *&v95[4 * BYTE1(v115)] ^ HIDWORD(a30) ^ ((v111 ^ 0xFB8B19F4) - 1382142733 + *&v91[4 * (v111 ^ 0xC7)]) ^ (v86 >> 3) & 0xD800AAC ^ v94;
  LODWORD(v85) = v77 ^ 0x35791F8F;
  LODWORD(v58) = ((v95[4 * BYTE1(v115)] ^ BYTE4(a30) ^ ((v111 ^ 0xF4) - 13 + v91[4 * (v111 ^ 0xC7)]) ^ (v86 >> 3) & 0xAC ^ v94) ^ 0x474E698) - *&v91[4 * ((v95[4 * BYTE1(v115)] ^ BYTE4(a30) ^ ((v111 ^ 0xF4) - 13 + v91[4 * (v111 ^ 0xC7)]) ^ (v86 >> 3) & 0xAC ^ v94) ^ 0x54)];
  v124 = a31 ^ __ROR4__(__ROR4__(v121, 30) ^ 0x9F4DB985, 2);
  HIDWORD(v94) = *&v93[4 * ((v122 ^ 0x538C0A81u) >> 24)];
  LODWORD(v94) = HIDWORD(v94);
  LODWORD(v69) = v124 ^ 0x54FB9703;
  v125 = *&v89[4 * ((v124 ^ 0x54FB9703u) >> 16)];
  v126 = (v94 >> 3) ^ a28 ^ v125 ^ ((v94 >> 3) >> 8) ^ ((v94 >> 3) >> 4) ^ *&v95[4 * (BYTE1(v77) ^ 0xDF)] ^ (v125 >> 3) & 0xD800AAC ^ ((v123 ^ 0xFB8B190F) - 1382142733 + *&v91[4 * (v123 ^ 0x3C)]);
  LODWORD(v86) = *&v91[4 * (v124 ^ 0xD8)] + (v124 ^ 0xFB8B19EB) - 1382142733;
  v127 = *&v89[4 * ((v122 ^ 0x538C0A81u) >> 16)];
  HIDWORD(v94) = *&v93[4 * ((v123 ^ 0x17972EE7u) >> 24)];
  LODWORD(v94) = HIDWORD(v94);
  v128 = (v94 >> 3) ^ a30 ^ v127 ^ ((v94 >> 3) >> 8) ^ ((v94 >> 3) >> 4) ^ *&v95[4 * ((v124 ^ 0x9703) >> 8)];
  HIDWORD(v94) = *&v93[4 * BYTE3(v69)];
  LODWORD(v94) = HIDWORD(v94);
  LODWORD(v77) = *&v89[4 * (BYTE2(v77) ^ 0xB7)];
  v129 = v128 ^ (v127 >> 3) & 0xD800AAC ^ (v58 + 1382142733);
  v130 = (v94 >> 3) ^ HIDWORD(a29) ^ v77 ^ ((v94 >> 3) >> 8) ^ ((v94 >> 3) >> 4) ^ *&v95[4 * ((v123 ^ 0x2EE7) >> 8)] ^ (v77 >> 3) & 0xD800AAC ^ (*&v91[4 * (v122 ^ 0x5A)] + (v122 ^ 0xFB8B1969) - 1382142733);
  HIDWORD(v94) = *&v93[4 * BYTE3(v85)];
  LODWORD(v94) = HIDWORD(v94);
  LODWORD(v85) = *&v89[4 * (BYTE2(v123) ^ 0x59)];
  v131 = v85 ^ a29 ^ (v94 >> 3) ^ ((v94 >> 3) >> 8) ^ ((v94 >> 3) >> 4) ^ *&v95[4 * ((v122 ^ 0xA81) >> 8)] ^ (v85 >> 3) & 0xD800AAC ^ v86;
  v132 = v131 ^ 0xF684E71F;
  v133 = *&v91[4 * (v131 ^ 0xC4)] + (v131 ^ 0xFB8B19F7) - 1382142733;
  LODWORD(v86) = ((-(v126 ^ 0x7C) ^ (82 - (v126 ^ 0x2E)) ^ 0xF9 ^ ((v126 ^ 0x7C) - ((2 * (v126 ^ 0x7C)) & 0xF2) - 7)) + 82);
  LODWORD(v79) = (v86 ^ 0xFB8B19E8) - 1382142733 + *&v91[4 * (v86 ^ 0xDB)];
  v134 = ((-(v126 ^ 0xE382257C) ^ (-118079662 - (v126 ^ 0x1B741A2E)) ^ 0x34E2C0F9 ^ ((v126 ^ 0xE382257C) - ((2 * (v126 ^ 0xE382257C)) & 0x69C581F2) + 887275769)) - 118079662) ^ 0xCDCEC000;
  HIDWORD(v94) = *&v93[4 * HIBYTE(v134)];
  LODWORD(v94) = HIDWORD(v94);
  LODWORD(v86) = *&v89[4 * ((v130 ^ 0x89D09CB3) >> 16)];
  LODWORD(v85) = *&v91[4 * (v130 ^ 0x68)];
  LODWORD(v69) = (v94 >> 3) ^ HIDWORD(a27) ^ v86 ^ ((v94 >> 3) >> 8) ^ ((v94 >> 3) >> 4) ^ *&v95[4 * ((v131 ^ 0xE71F) >> 8)] ^ (v86 >> 3) & 0xD800AAC ^ ((v129 ^ 0xFB8B1947) - 1382142733 + *&v91[4 * (v129 ^ 0x74)]);
  LODWORD(v58) = ((2 * (v85 ^ 0xFA76475E)) ^ 0xAFD0D75A) & (v85 ^ 0xFA76475E) ^ (2 * (v85 ^ 0xFA76475E)) & 0x57E86BAC;
  LODWORD(v86) = 2 * (v85 & 0xAD9E2CF3);
  LODWORD(v84) = (v58 ^ 0x6C04308) & (4 * (v86 & (v85 ^ 0xA95E0EFA) ^ v85 & 0xAD9E2CF3)) ^ v86 & (v85 ^ 0xA95E0EFA) ^ v85 & 0xAD9E2CF3;
  LODWORD(v58) = ((4 * (v58 ^ 0x502828A5)) ^ 0x5FA1AEB4) & (v58 ^ 0x502828A5) ^ (4 * (v58 ^ 0x502828A5)) & 0x57E86BAC;
  LODWORD(v84) = (v58 ^ 0x57A02AA0) & (16 * v84) ^ v84;
  LODWORD(v58) = ((16 * (v58 ^ 0x484109)) ^ 0x7E86BAD0) & (v58 ^ 0x484109) ^ (16 * (v58 ^ 0x484109)) & 0x57E86B80;
  LODWORD(v84) = v84 ^ 0x57E86BAD ^ (v58 ^ 0x56802A00) & (v84 << 8);
  v135 = v86 & (v85 ^ 0x9DE0CFB) ^ v85 & 0xAD9E2CF3;
  LODWORD(v86) = ((2 * (v85 ^ 0xBCE14DB)) ^ 0x4CA07050) & (v85 ^ 0xBCE14DB) ^ (2 * (v85 ^ 0xBCE14DB)) & 0xA6503828;
  v136 = v135 ^ 0xA6503828 ^ (v86 ^ 0x4003000) & (4 * v135);
  LODWORD(v86) = (4 * (v86 ^ 0xA2500828)) & 0xA6503828 ^ 0x26101808 ^ ((4 * (v86 ^ 0xA2500828)) ^ 0x9940E0A0) & (v86 ^ 0xA2500828);
  v137 = (16 * v136) & 0xA6503820 ^ v136 ^ ((16 * v136) ^ 0x65038280) & v86;
  LODWORD(v86) = (16 * v86) & 0xA6503800 ^ 0x82503828 ^ ((16 * v86) ^ 0x65038280) & v86;
  v138 = v137 ^ (v137 << 8) & 0xA6503800 ^ ((v137 << 8) ^ 0x50382800) & v86;
  v139 = v85 ^ (2 * (((v138 ^ 0x24102800) << 16) & 0x26500000 ^ v138 ^ 0x24102800 ^ (((v138 ^ 0x24102800) << 16) ^ 0x38280000) & ((v86 << 8) & 0x26500000 ^ 0x26400000 ^ ((v86 << 8) ^ 0x50380000) & v86)));
  HIDWORD(v94) = *&v93[4 * HIBYTE(v132)];
  LODWORD(v94) = HIDWORD(v94);
  LODWORD(v58) = ((2 * ((v139 ^ 0x203C5CA3) & (v130 ^ 0x3EBDFD91) ^ v139 & 0x4536E4CA)) ^ 0x26C8904) + (v130 ^ 0xB3 ^ v85 ^ (2 * ((v84 << 16) & 0x57E80000 ^ v84 ^ ((v84 << 16) ^ 0x6BAD0000) & (((v58 ^ 0x168412D) << 8) & 0x57E80000 ^ 0x17800000 ^ (((v58 ^ 0x168412D) << 8) ^ 0x686B0000) & (v58 ^ 0x168412D)))) ^ 0x7E95E241);
  v140 = *&v89[4 * (BYTE2(v129) ^ 0x8B)];
  v141 = (v94 >> 3) ^ a27 ^ v140 ^ ((v94 >> 3) >> 8) ^ ((v94 >> 3) >> 4) ^ (v140 >> 3) & 0xD800AAC ^ *&v95[4 * ((((-(v126 ^ 0x257C) ^ (16210 - (v126 ^ 0x1A2E)) ^ 0xC0F9 ^ ((v126 ^ 0x257C) - ((2 * (v126 ^ 0x257C)) & 0x81F2) - 16135)) + 16210) ^ 0xC000) >> 8)] ^ v58;
  HIDWORD(v94) = *&v93[4 * ((v130 ^ 0x89D09CB3) >> 24)];
  LODWORD(v94) = HIDWORD(v94);
  LODWORD(v85) = *&v89[4 * BYTE2(v132)] ^ HIDWORD(a25) ^ (v94 >> 3) ^ ((v94 >> 3) >> 8) ^ ((v94 >> 3) >> 4) ^ *&v95[4 * (BYTE1(v129) ^ 0x50)] ^ (*&v89[4 * BYTE2(v132)] >> 3) & 0xD800AAC ^ v79;
  HIDWORD(v94) = *&v93[4 * (HIBYTE(v129) ^ 0x16)];
  LODWORD(v94) = HIDWORD(v94);
  LODWORD(v77) = *&v89[4 * BYTE2(v134)] ^ HIDWORD(a28) ^ (v94 >> 3) ^ ((v94 >> 3) >> 8) ^ ((v94 >> 3) >> 4) ^ *&v95[4 * (BYTE1(v130) ^ 0x5C)] ^ (*&v89[4 * BYTE2(v134)] >> 3) & 0xD800AAC ^ v133;
  v142 = v69 ^ 0x68431BD;
  LODWORD(v58) = *&v89[4 * ((v69 ^ 0x68431BD) >> 16)] ^ 0xBCCC446E;
  LODWORD(v84) = *&v91[4 * (v77 ^ 0x20)] + (v77 ^ 0xFB8B1913) - 1382142733;
  v143 = (v69 ^ 0xFB8B1955) - 1382142733 + *&v91[4 * (v69 ^ 0x66)];
  HIDWORD(v94) = *&v93[4 * (HIBYTE(v141) ^ 0xD6)];
  LODWORD(v94) = HIDWORD(v94);
  v144 = *&v89[4 * (BYTE2(v77) ^ 0x63)];
  LODWORD(v69) = (v94 >> 3) ^ HIDWORD(a21) ^ ((v94 >> 3) >> 8) ^ ((v94 >> 3) >> 4) ^ v144 ^ *&v95[4 * (BYTE1(v69) ^ 0xF1)] ^ (v144 >> 3) & 0xD800AAC ^ ((v85 ^ 0xFB8B1919) - 1382142733 + *&v91[4 * (v85 ^ 0x2A)]);
  HIDWORD(v94) = *&v93[4 * (BYTE3(v77) ^ 0xC2)];
  LODWORD(v94) = HIDWORD(v94);
  LODWORD(v58) = (v94 >> 3) ^ HIDWORD(a26) ^ ((v94 >> 3) >> 8) ^ ((v94 >> 3) >> 4) ^ *&v95[4 * (BYTE1(v85) ^ 0xD2)] ^ (((v58 >> 3) & 0xD800AAC) + v58 - 2 * ((v58 >> 3) & 0xD800AAC & v58));
  HIDWORD(v94) = *&v93[4 * (BYTE3(v85) ^ 0xE3)];
  LODWORD(v94) = HIDWORD(v94);
  v145 = *&v89[4 * (BYTE2(v141) ^ 0xFA)];
  v146 = v58 ^ (*&v91[4 * (v141 ^ 0xD)] + (v141 ^ 0xFB8B193E) - 1382142733);
  LODWORD(v77) = (v94 >> 3) ^ a25 ^ v145 ^ ((v94 >> 3) >> 8) ^ ((v94 >> 3) >> 4) ^ *&v95[4 * (BYTE1(v77) ^ 0x73)] ^ (v145 >> 3) & 0xD800AAC ^ v143;
  HIDWORD(v94) = *&v93[4 * HIBYTE(v142)];
  LODWORD(v94) = HIDWORD(v94);
  v147 = *&v89[4 * (BYTE2(v85) ^ 0x16)];
  LODWORD(v85) = (v94 >> 3) ^ a26 ^ v147 ^ ((v94 >> 3) >> 8) ^ ((v94 >> 3) >> 4) ^ (v147 >> 3) & 0xD800AAC ^ v84 ^ *&v95[4 * (BYTE1(v141) ^ 0x21)];
  BYTE1(v84) = BYTE1(v85) ^ 0x12;
  HIDWORD(v94) = *&v93[4 * ((v85 ^ 0x66401271) >> 24)];
  LODWORD(v94) = HIDWORD(v94);
  LODWORD(v81) = *&v89[4 * ((v77 ^ 0xF6FBD0BC) >> 16)];
  LODWORD(v86) = (v94 >> 3) ^ a19 ^ v81 ^ ((v94 >> 3) >> 8) ^ ((v94 >> 3) >> 4);
  HIDWORD(v94) = *&v93[4 * ((v77 ^ 0xF6FBD0BC) >> 24)];
  LODWORD(v94) = HIDWORD(v94);
  v148 = *&v89[4 * (BYTE2(v69) ^ 0x17)];
  v149 = v86 ^ *&v95[4 * (BYTE1(v69) ^ 0x4F)] ^ (v81 >> 3) & 0xD800AAC ^ (*&v91[4 * (v146 ^ 0xD7)] + (v146 ^ 0xFB8B19E4) - 1382142733);
  LODWORD(v81) = *&v91[4 * (v85 ^ 0xAA)] + (v85 ^ 0xFB8B1999);
  v150 = (v94 >> 3) ^ v148 ^ ((v94 >> 3) >> 8) ^ ((v94 >> 3) >> 4) ^ *&v95[4 * (((v58 ^ (*&v91[4 * (v141 ^ 0xD)] + (v141 ^ 0x193E) + 11507)) >> 8) ^ 0xC4)] ^ (v148 >> 3) & 0xD800AAC ^ 0xA692AA31;
  LODWORD(v81) = ((1382142733 - v81) ^ (v81 - 1382142733 - ((2 * (v81 - 1382142733)) & 0x167358D6) + 188329067) ^ 0xB39AC6B ^ (v150 - (v150 ^ (v81 - 1382142733)))) + v150;
  HIDWORD(v94) = *&v93[4 * (HIBYTE(v146) ^ 0xAA)];
  LODWORD(v94) = HIDWORD(v94);
  LODWORD(v85) = *&v89[4 * (BYTE2(v85) ^ 0x8E)];
  LODWORD(v58) = v85 ^ a20 ^ (v94 >> 3) ^ ((v94 >> 3) >> 8) ^ ((v94 >> 3) >> 4) ^ *&v95[4 * ((v77 ^ 0xD0BC) >> 8)] ^ (v85 >> 3) & 0xD800AAC;
  HIDWORD(v94) = *&v93[4 * (BYTE3(v69) ^ 0x65)];
  LODWORD(v94) = HIDWORD(v94);
  LODWORD(v85) = *&v89[4 * (BYTE2(v146) ^ 0x27)];
  LODWORD(v58) = v58 ^ (*&v91[4 * (v69 ^ 0x5E)] + (v69 ^ 0xFB8B196D) - 1382142733);
  LODWORD(v86) = (v94 >> 3) ^ a24 ^ v85 ^ ((v94 >> 3) >> 8) ^ ((v94 >> 3) >> 4) ^ *&v95[4 * BYTE1(v84)] ^ (v85 >> 3) & 0xD800AAC ^ ((v77 ^ 0xFB8B1954) - 1382142733 + *&v91[4 * (v77 ^ 0x67)]);
  v151 = v86 ^ 0x693D2017;
  v152 = *&v91[4 * (v86 ^ 0xCC)] + (v86 ^ 0xFB8B19FF) - 1382142733;
  LODWORD(v86) = v58 ^ 0xA1DB55FD;
  v153 = (v58 ^ 0xFB8B1915) - 1382142733 + *&v91[4 * (v58 ^ 0x26)];
  HIDWORD(v94) = *&v93[4 * ((v149 ^ 0x547F8C8Du) >> 24)];
  LODWORD(v94) = HIDWORD(v94);
  LODWORD(v58) = v81 ^ HIDWORD(a24);
  LODWORD(v81) = *&v89[4 * (((v81 ^ HIDWORD(a24)) >> 16) ^ 0x69)];
  v154 = (v94 >> 3) ^ a23 ^ v81 ^ ((v94 >> 3) >> 8) ^ ((v94 >> 3) >> 4);
  v155 = *&v95[4 * BYTE1(v151)] ^ (v81 >> 3) & 0xD800AAC ^ v153;
  LODWORD(v81) = *&v93[4 * BYTE3(v86)];
  LODWORD(v77) = *&v93[4 * (BYTE3(v58) ^ 0x17)];
  v156 = *&v93[4 * HIBYTE(v151)];
  v157 = *&v89[4 * ((v149 ^ 0x547F8C8Du) >> 16)];
  LODWORD(v93) = *&v95[4 * (BYTE1(v149) ^ 0x4C)];
  v158 = v154 ^ v155;
  HIDWORD(v94) = v77;
  LODWORD(v94) = v77;
  LODWORD(v85) = (v94 >> 3) ^ a22 ^ *&v89[4 * BYTE2(v151)] ^ ((v94 >> 3) >> 8) ^ ((v94 >> 3) >> 4) ^ *&v95[4 * (BYTE1(v86) - ((v86 >> 7) & 0x180)) + 768] ^ (*&v89[4 * BYTE2(v151)] >> 3) & 0xD800AAC ^ (*&v91[4 * (v149 ^ 0x56)] + (v149 ^ 0xFB8B1965) - 1382142733);
  HIDWORD(v94) = v81;
  LODWORD(v94) = v81;
  v159 = v157 ^ HIDWORD(a23) ^ (v94 >> 3) ^ ((v94 >> 3) >> 8) ^ ((v94 >> 3) >> 4);
  HIDWORD(v94) = v156;
  LODWORD(v94) = v156;
  v160 = v159 ^ (v157 >> 3) & 0xD800AAC ^ *&v95[4 * (BYTE1(v58) ^ 0x36)] ^ v152;
  v161 = *&v89[4 * BYTE2(v86)] ^ *(v51 - 144) ^ (v94 >> 3) ^ ((v94 >> 3) >> 8) ^ ((v94 >> 3) >> 4) ^ v93 ^ (*&v89[4 * BYTE2(v86)] >> 3) & 0xD800AAC ^ (((2 * v58) | 0xFFFFFE2F) + (v58 ^ 0xFE) - 1456912676 + *&v91[4 * (v58 ^ 0x25)]);
  v196 = (v154 ^ v155) >> 24;
  v162 = *(v51 - 140);
  v163 = *(&off_1010A0B50 + (v162 - 10326)) - 1450752962;
  LODWORD(v84) = *&v163[4 * (HIBYTE(v160) ^ 0x5C)];
  v197 = *&v163[4 * (v196 ^ 0x5D)];
  v164 = BYTE3(v85);
  v195 = *&v163[4 * (BYTE3(v85) ^ 0x14)];
  LODWORD(v79) = HIBYTE(v161);
  v193 = *&v163[4 * (HIBYTE(v161) ^ 0x4F)];
  v165 = *(&off_1010A0B50 + (v162 ^ 0x2C61)) - 1747346771;
  v166 = ((v154 ^ v155) >> 16);
  LODWORD(v77) = *&v165[4 * (v166 ^ 0x11)];
  v167 = (HIBYTE(v160) ^ 0x275CC88E) - 1666516089 + v84;
  v168 = BYTE2(v85);
  v191 = *&v165[4 * (BYTE2(v85) ^ 0xE2)];
  v169 = BYTE2(v161);
  v194 = *&v165[4 * (BYTE2(v161) ^ 0x36)];
  v170 = (BYTE1(v85) ^ 0xFC) - (BYTE1(v85) ^ 0x7DFBC31C);
  v171 = BYTE2(v160);
  v192 = *&v165[4 * (BYTE2(v160) ^ 0x75)];
  v172 = *(&off_1010A0B50 + (v162 ^ 0x2B53)) - 1062910999;
  LODWORD(v81) = *&v172[4 * (BYTE1(v85) ^ 0x1B)];
  v173 = BYTE1(v161);
  LODWORD(v89) = *&v172[4 * (BYTE1(v161) ^ 0xEA)];
  v174 = BYTE1(v160);
  v189 = *&v172[4 * (BYTE1(v160) ^ 0x8E)];
  LODWORD(v84) = HIBYTE(v158);
  v190 = *&v172[4 * (HIBYTE(v158) ^ 0xA0)];
  v175 = *(&off_1010A0B50 + (v162 ^ 0x260E)) - 1916591714;
  LODWORD(v82) = v160;
  v176 = *&v175[4 * (v160 ^ 0xAA)];
  LODWORD(v91) = v158;
  v177 = *&v175[4 * (v158 ^ 0xEA)];
  LODWORD(v85) = v85;
  v188 = *&v175[4 * (v85 ^ 0x47)];
  LODWORD(v175) = ((v166 ^ 0x7F) + 100551) ^ HIDWORD(a22) ^ v167 ^ v77 ^ *&v175[4 * (v161 ^ 0xE9)] ^ v81 ^ ((v161 ^ 0xCA) - (v161 ^ 0xD158BA4F)) ^ v170;
  v178 = *(&off_1010A0B50 + (v162 - 8609)) - 1993653095;
  *(*(v51 - 136) + *(v51 - 232)) = v178[BYTE2(v175) ^ 0xBELL] ^ (4 * v178[BYTE2(v175) ^ 0xBELL]) & 0x24 ^ 0x30;
  v179 = *(&off_1010A0B50 + (v162 ^ 0x3B85)) - 1364635919;
  LODWORD(v58) = v179[v175 ^ 0x96];
  *(*(v51 - 136) + v199) = ((v58 >> 7) | (2 * v58)) ^ 0x3B ^ (8 * (((v58 >> 7) | (2 * v58)) & 7));
  v180 = ((v82 ^ 0x89) - (v82 ^ 0xD158BA0C)) ^ a13 ^ ((v196 ^ 0x275CC88F) - 1666516089 + v197) ^ v191 ^ ((v173 ^ 0xD) - (v173 ^ 0x7DFBC3ED)) ^ v89 ^ v176;
  LODWORD(v86) = ((v91 ^ 0xC9) - (v91 ^ 0xD158BA4C)) ^ HIDWORD(a12) ^ ((v174 ^ 0x69) - (v174 ^ 0x7DFBC389)) ^ ((v169 ^ 0x58) + 100551) ^ v194 ^ v189 ^ v177 ^ ((v164 ^ 0x275CC8C6) - 1666516089 + v195);
  v181 = *(v51 - 136);
  LODWORD(v58) = HIDWORD(a12) ^ *(v51 - 144) ^ ((v171 ^ 0x1B) + 100551) ^ ((v84 ^ 0x47) - (v84 ^ 0x7DFBC3A7)) ^ v192 ^ ((v85 ^ 0x64) - (v85 ^ 0xD158BAE1)) ^ ((v79 ^ 0x275CC89D) - 1666516089 + v193) ^ v190;
  v182 = *(&off_1010A0B50 + (v162 - 10757)) - 248862443;
  *(v181 + *(v51 - 208)) = v182[((v180 ^ ((v168 ^ 0x8C) - 30521)) >> 8) ^ 4] ^ 0xD3;
  v183 = v58 ^ v188;
  v184 = *(&off_1010A0B50 + (v162 ^ 0x2BA4)) - 1169945594;
  *(v181 + v198) = v184[BYTE3(v86) ^ 0x49] ^ 0x3A ^ (v184[BYTE3(v86) ^ 0x49] >> 1) & 0x23;
  *(v181 + *(v51 - 256)) = v178[BYTE2(v183) ^ 0xF4] ^ 0x14 ^ (4 * v178[BYTE2(v183) ^ 0xF4]) & 0x24;
  LODWORD(v58) = v179[(v58 ^ v188) ^ 0xE2];
  *(v181 + *(v51 - 200)) = ((v58 >> 7) | (2 * v58)) ^ 0xB7 ^ (8 * (((v58 >> 7) | (2 * v58)) & 7));
  LODWORD(v58) = v179[(v180 ^ ((v168 ^ 0x8C) - 57)) ^ 0x1DLL];
  *(v181 + *(v51 - 248)) = ((v58 >> 7) | (2 * v58)) ^ (8 * (((v58 >> 7) | (2 * v58)) & 7)) ^ 4;
  *(v181 + v200) = v178[((v180 ^ ((v168 ^ 0x8C) + 100551)) >> 16) ^ 0x62] ^ 0x15 ^ (4 * v178[((v180 ^ ((v168 ^ 0x8C) + 100551)) >> 16) ^ 0x62]) & 0x24;
  *(v181 + *(v51 - 160)) = v184[BYTE3(v183) ^ 0x1DLL] ^ 0xB5 ^ ((v184[BYTE3(v183) ^ 0x1DLL] >> 1) & 0x23 | 0x48);
  *(v181 + *(v51 - 176)) = v178[BYTE2(v86) ^ 0x28] ^ 0xA9 ^ (4 * v178[BYTE2(v86) ^ 0x28]) & 0x24;
  *(v181 + *(v51 - 240)) = v182[BYTE1(v86) ^ 0xA1] ^ 0x31;
  LODWORD(v58) = v179[v86 ^ 0x1ALL];
  *(v181 + *(v51 - 224)) = ((v58 >> 7) | (2 * v58)) ^ 0x84 ^ (8 * (((v58 >> 7) | (2 * v58)) & 7));
  *(v181 + *(v51 - 184)) = v182[BYTE1(v175) ^ 0xE9] ^ 0xBF;
  *(v181 + *(v51 - 168)) = v182[BYTE1(v183) ^ 0xCLL] ^ 0x7A;
  *(v181 + *(v51 - 152)) = v184[HIBYTE(v180) ^ 0x5CLL] ^ 0x98 ^ ((v184[HIBYTE(v180) ^ 0x5CLL] >> 1) | 0xDC);
  LODWORD(v82) = v184[(v175 >> 24) ^ 0xECLL];
  LODWORD(v58) = (((*(v51 - 212) ^ 0x58F50B31) - 1492454193) ^ ((*(v51 - 212) ^ 0xA4CAA9F7) + 1530222089) ^ ((*(v51 - 212) ^ 0xC8094AF8) + 938915080)) + 1654054219;
  LODWORD(v58) = ((v58 ^ 0xFB3FE30) - 569117389) ^ v58 ^ ((v58 ^ 0xC9F37714) + 408124439) ^ ((v58 ^ 0x15718204) - 992900857) ^ ((v58 ^ 0xFD6EFFDD) + 751760608);
  *(v181 + *(v51 - 192)) = v82 ^ 0xAB ^ (v82 >> 1) & 0x23;
  LODWORD(v82) = (((v58 ^ 0x639600D7) - 2046762004) ^ ((v58 ^ 0x7E33D0B8) - 1683672187) ^ ((v58 ^ 0x33FA2492) - 697514065)) - 1493598712;
  LODWORD(v182) = (HIDWORD(a14) < 0x72C295CA) ^ (v82 < 0x72C295CA);
  v185 = v82 < HIDWORD(a14);
  if (v182)
  {
    v185 = HIDWORD(a14) < 0x72C295CA;
  }

  return (*(a38 + 8 * ((60755 * v185) ^ v162)))(v162, v183, 21, 100551, 3512253153, v171, v168, &off_1010A0B50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, v187);
}

uint64_t sub_1001A5814()
{
  v10 = v4 < v5;
  *(v8 + v7) = *(v1 + (v7 & 0xF)) ^ *(v0 + v7) ^ *(v3 + (v7 & 0xF) + 1) ^ (-41 * (v7 & 0xF)) ^ *(v2 + (v7 & 0xF) + 1);
  if (v10 == v7 + 1 > 0xA64D0D7E)
  {
    v10 = v7 + 1504899714 < v4;
  }

  return (*(v9 + 8 * ((124 * !v10) ^ v6)))((v6 + 460747126) & 0xE4899FAE);
}

uint64_t sub_1001A5910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, unsigned int a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40)
{
  v48 = v41 + v47 + ((v40 - 30919) | 0x470A) - 550318572;
  v49 = (v48 ^ 0x935C14FC) & (2 * (v48 & 0xD21C96F0)) ^ v48 & 0xD21C96F0;
  v50 = ((2 * (v48 ^ 0x375D397C)) ^ 0xCA835F18) & (v48 ^ 0x375D397C);
  v51 = v44 & (v42 ^ 0xC56FB57B) ^ v43;
  v52 = ((2 * (v42 ^ 0xC5B8B7FD)) ^ 0x2BAE1D3C) & (v42 ^ 0xC5B8B7FD) ^ (2 * (v42 ^ 0xC5B8B7FD)) & 0x15D70E9E;
  v53 = v48 ^ v42 ^ (2 * (((4 * v52) & 0x15D70E98 ^ 0x15540A16 ^ ((4 * v52) ^ 0x575C3A78) & v52) & (16 * ((v52 ^ 0x15860C1C) & (4 * v51) ^ v51)) ^ (v52 ^ 0x15860C1C) & (4 * v51) ^ v51 ^ v50 & (4 * v49) ^ v49 ^ v50 & (4 * v50) & (16 * (v50 & (4 * v49) ^ v49))));
  v54 = ((v53 ^ 0xD46341F7) + 899692659) ^ ((v53 ^ 0xF016D0EA) + 299215216) ^ ((v53 ^ 0x652ABE8E) - 2065053940);
  return (*(a37 + 8 * ((56 * (((a40 - *(v46 + 4 * (7 % a27)) + 1796724762 * v54 + (v54 + 1600367081) * (*(v46 + 4 * (v45 % a27)) + 1700258121) + 1852496298) & 7) == 1)) ^ v40)))();
}

uint64_t sub_1001A5B48@<X0>(char a1@<W0>, int a2@<W1>, uint64_t a3@<X6>, uint64_t a4@<X7>, int a5@<W8>)
{
  v17 = v7 + v6 + v5;
  v18 = (v13 + v17);
  v19 = ((v18 ^ *(*(v12 + v14) + (*(a3 + a4) & v8))) & 0x7FFFFFFF) * v9;
  v20 = v19 ^ HIWORD(v19);
  HIDWORD(v21) = v17;
  LODWORD(v21) = v20 * v9;
  *v18 ^= *(*(v16 + 8 * v10) + ((v21 >> 24) & 0xFFF) + v11) ^ (v20 * a1);
  return (*(v15 + 8 * (((v17 == 0) * a2) ^ a5)))();
}

uint64_t sub_1001A5BBC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, int a3@<W8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(a2 + v7) ^ v3;
  return (*(v6 + 8 * (((v7 == 0) * v5) ^ a3)))();
}

uint64_t sub_1001A5BE4()
{
  v4 = vdupq_n_s64(((v3 - 216) ^ 0x3B57BFBDFE7BCD26) - 0x1851009022480000 + ((((v0 - 19013) | 0x600u) ^ 0x76AF7F7BFCF7BDC0) & (2 * (v3 - 216))));
  v5 = vaddq_s64(v4, xmmword_100F52380);
  v6 = vorrq_s8(v4, xmmword_100F52390);
  v7 = vdupq_n_s64(0xD64F9B84FCB74BA7);
  v8 = veorq_s8(v6, v7);
  v9 = vdupq_n_s64(0xAB6DB56DF7B797FuLL);
  v10 = vaddq_s64(veorq_s8(v5, v7), v9);
  v11 = vdupq_n_s64(0xA7B829DA12D90686);
  v12 = vaddq_s64(v8, v9);
  v13 = veorq_s8(v5, v11);
  v14 = vdupq_n_s64(0x7B41690831153460uLL);
  v15 = vaddq_s64(veorq_s8(v6, v11), v14);
  v16 = vaddq_s64(v13, v14);
  v17 = vdupq_n_s64(0xA96BF3CEA9AA3778);
  v18 = veorq_s8(v6, v17);
  v19 = vdupq_n_s64(0x7592B31C8A6605A2uLL);
  v20 = vaddq_s64(veorq_s8(v5, v17), v19);
  v21 = vaddq_s64(v18, v19);
  v22 = vdupq_n_s64(0xFB9AFEBD9BF7B77FLL);
  v23 = veorq_s8(v5, v22);
  v24 = vdupq_n_s64(0xA7uLL);
  v25 = veorq_s8(v5, v10);
  v26 = vdupq_n_s64(0x9CuLL);
  v27 = veorq_s8(veorq_s8(veorq_s8(v6, v12), veorq_s8(v15, v21)), veorq_s8(vaddq_s64(veorq_s8(v6, v22), v24), v26));
  v28 = veorq_s8(veorq_s8(v25, veorq_s8(v16, v20)), veorq_s8(vaddq_s64(v23, v24), v26));
  v29 = vaddq_s64(v4, xmmword_100F526D0);
  v30 = vaddq_s64(v4, xmmword_100F526E0);
  v30.i64[0] = (v28.i32[0] * v30.i32[0]);
  v30.i64[1] = (v28.i32[2] * v30.i32[2]);
  v28.i64[0] = (v27.i32[0] * v29.i32[0]);
  v28.i64[1] = (v27.i32[2] * v29.i32[2]);
  *v28.i8 = vmovn_s64(v28);
  *v30.i8 = vmovn_s64(v30);
  v27.i16[0] = v30.i16[2];
  v27.i16[1] = v30.i16[0];
  v27.i16[2] = v28.i16[2];
  v27.i16[3] = v28.i16[0];
  *(v3 - 188) = vmovn_s16(v27).u32[0];
  *(v3 - 216) = 0;
  return (*(v2 + 8 * ((189 * (*(v1 - 16) != 0x3CE25E0EC5200360)) ^ (v0 + 23708))))();
}

uint64_t sub_1001A5E18(int a1)
{
  v4 = a1 - 23424;
  v5 = ((v3 + 56) ^ 0x67) - 64 + ((2 * (v3 + 56)) & 0xC0);
  *(v3 - 200) = 0;
  v6 = (v5 ^ 0x10 ^ (a1 - 112)) & (2 * (v5 & 0xD9)) ^ v5 & 0xD9;
  v7 = ((2 * (v5 ^ 0x29)) ^ 0xE0) & (v5 ^ 0x29) ^ (2 * (v5 ^ 0x29)) & 0xF0;
  *v1 = (v5 ^ (2 * (((4 * (v7 ^ 0x10)) & 0xF0 ^ 0xC0 ^ ((4 * (v7 ^ 0x10)) ^ 0xC0) & (v7 ^ 0x10)) & (16 * ((v7 ^ 0xF0) & (4 * v6) ^ v6)) ^ (v7 ^ 0xF0) & (4 * v6) ^ v6)) ^ 0x63) * (v5 - 22);
  return (*(v2 + 8 * v4))();
}

uint64_t sub_1001A5F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, int a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  v40 = (((HIDWORD(a22) ^ 0x1F602967) - 526395751) ^ ((HIDWORD(a22) ^ 0xEA867EE3) + 360284445) ^ ((HIDWORD(a22) ^ 0xF0630E4E) + 261943730)) + 774082490;
  v41 = (((v40 ^ 0x2EEA2DA8) - 108271687) ^ v40 ^ ((v40 ^ 0x7D0E6C01) - 1435523566) ^ ((v40 ^ 0x8CB50BA8) + 1540669882) ^ ((v40 ^ 0xF7CF7FEE) + 548320768)) >> 1;
  v42 = LODWORD(STACK[0x2F4]) + 13 * ((LODWORD(STACK[0x2F4]) - 797984413) % (v41 ^ 0x144F1AF7)) + 11 * ((((LODWORD(STACK[0x2F0]) ^ 0x36) + 85) ^ LODWORD(STACK[0x2F0]) ^ ((LODWORD(STACK[0x2F0]) ^ 0xD8) - 69) ^ ((LODWORD(STACK[0x2F0]) ^ 0x84) - 25) ^ (a36 + 126 + (LODWORD(STACK[0x2F0]) ^ 0xF7))) ^ 0x9D) + 1770612823;
  v43 = STACK[0x2F8];
  v44 = (v43 ^ 0xD46FB06B) & (2 * (v43 & 0xD06FB963)) ^ v43 & 0xD06FB963;
  v45 = ((2 * (v43 ^ 0xD429C0E9)) ^ 0x88CF314) & (v43 ^ 0xD429C0E9) ^ (2 * (v43 ^ 0xD429C0E9)) & 0x446798A;
  v46 = v42 ^ LODWORD(STACK[0x2F8]) ^ ((v42 ^ 0xA80679C) + 1818637976) ^ ((v42 ^ 0xC52DD216) - 1546943714) ^ ((v42 ^ 0x694B6089) + 263008643) ^ ((v42 ^ 0x3FFF7BF7) + 1494821629) ^ (2 * ((v45 ^ 0x442088A) & (16 * (v45 & (4 * v44) ^ v44)) & ((4 * (v45 ^ 0x442088A)) ^ 0x1119E620) ^ v45 & (4 * v44) ^ v44));
  v47 = LODWORD(STACK[0x3E4]) - LODWORD(STACK[0x300]) + *(&a40 + 3 % (HIDWORD(a22) ^ 0x58559CAu)) - 1261558084 + (((v46 ^ 0x1B3AA315) - 909346434) ^ ((v46 ^ 0x2952953F) - 73117864) ^ ((v46 ^ 0x7B1A21BD) - 1444086826));
  v48 = (v47 ^ 0xC31AE086) & (2 * (v47 & 0x801CC4A7)) ^ v47 & 0x801CC4A7;
  v49 = ((2 * (v47 ^ 0xC323E8C2)) ^ 0x867E58CA) & (v47 ^ 0xC323E8C2) ^ (2 * (v47 ^ 0xC323E8C2)) & 0x433F2C64;
  v50 = v49 & (4 * v48) ^ v48;
  v51 = (((4 * (v49 ^ 0x41012425)) ^ 0xCFCB190) & (v49 ^ 0x41012425) ^ (4 * (v49 ^ 0x41012425)) & 0x433F2C60) & (16 * v50);
  v52 = *(&a40 + (HIDWORD(a22) != 92625355));
  v53 = (v52 ^ 0xD36FBC63) & (2 * (v52 & 0xD06FB963)) ^ v52 & 0xD06FB963;
  v54 = ((2 * (v52 ^ 0xD3AD8C65)) ^ 0x7846A0C) & (v52 ^ 0xD3AD8C65) ^ (2 * (v52 ^ 0xD3AD8C65)) & 0x3C23506;
  v55 = ((4 * v54) ^ 0xF08D410) & v54 & (16 * ((v54 ^ 0x3802004) & (4 * v53) ^ v53)) ^ (v54 ^ 0x3802004) & (4 * v53) ^ v53 ^ v50 ^ v51;
  HIDWORD(a26) = HIDWORD(a22) ^ 0x58559CA;
  v56 = LODWORD(STACK[0x2F4]) + LODWORD(STACK[0x2F8]) + 7 * (((((LODWORD(STACK[0x304]) ^ 0xFD) + 32) ^ LODWORD(STACK[0x304]) ^ ((LODWORD(STACK[0x304]) ^ 0x38) + 91) ^ ((LODWORD(STACK[0x304]) ^ 0x21) + 68)) ^ ((LODWORD(STACK[0x304]) ^ 0xF9) + 28)) & 0x7F ^ 0x1D) + *(&a40 + 4 % (HIDWORD(a22) ^ 0x58559CAu)) - *(&a40 + 5 % (HIDWORD(a22) ^ 0x58559CAu)) - 2081272035 + (((v47 ^ v52 ^ (2 * v55) ^ 0xA124F1C5) + 1792707176) ^ ((v47 ^ v52 ^ (2 * v55) ^ 0x6A452798) - 1581556677) ^ ((v47 ^ v52 ^ (2 * v55) ^ 0x995CAB99) + 1386401852));
  v57 = (v56 ^ 0x3E0E96C9) + 1901129335;
  v58 = (v56 ^ 0xEFBFFFFF) - 1595832511;
  v59 = (LODWORD(STACK[0x308]) ^ 0x7FF8486Au) - 1348996855;
  v60 = (LODWORD(STACK[0x308]) ^ 0x8888D250) + 1491561267;
  v61 = (LODWORD(STACK[0x308]) ^ 0x7FFF3BEDu) - 1349483888;
  v62 = v59 ^ v60;
  v63 = ((LODWORD(STACK[0x308]) ^ 0xA71FE74A) + 2003852841) ^ LODWORD(STACK[0x308]) ^ v62 ^ v61 ^ v56 ^ ((v56 ^ 0xD9CBF621) - 1768583521) ^ ((v56 ^ 0xB8DB1857) - 142253847) ^ v57 ^ v58;
  return (*(a37 + 8 * ((7363 * (((LODWORD(STACK[0x310]) - LODWORD(STACK[0x314]) + LODWORD(STACK[0x31C]) + 1716509088 + (((v63 ^ 0xF7BC21D) - 95036413) ^ ((v63 ^ 0xE75CB154) + 309505868) ^ ((v63 ^ 0x7716B294) - 2110215028))) & 1) == 0)) ^ (a36 - 899252941))))(v57, v58, v62, v59, v60, v61, 2945483408, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1001A66D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *v3 | (*(v3 + 2) << 16);
  *(a1 + 324) = (((v4 - ((2 * v4) & 0x14CD038) - 2136578020) ^ 0x8E45F528) & ~(*(v3 + 3) << 24) | (*(v3 + 3) << 24) & 0xF1FFFFFF) ^ 0xA481E273;
  return (*(v2 + 227016))();
}

uint64_t sub_1001A67BC()
{
  v3 = *(&off_1010A0B50 + v1 - 5894);
  v4 = *(v3 - 972930378);
  LOBYTE(STACK[0x7F9]) = *v4 - 39;
  LOBYTE(STACK[0x7FA]) = v4[1] - 39;
  LOBYTE(STACK[0x7FB]) = v4[2] - 39;
  LOBYTE(STACK[0x7FC]) = v4[3] - 39;
  LOBYTE(STACK[0x7FD]) = v4[4] - 39;
  LOBYTE(STACK[0x7FE]) = v4[5] - 39;
  LOBYTE(STACK[0x7FF]) = v4[6] - 39;
  LOBYTE(STACK[0x800]) = v4[7] - 39;
  LOBYTE(STACK[0x801]) = v4[8] - 39;
  LOBYTE(STACK[0x802]) = v4[9] - 39;
  LOBYTE(STACK[0x803]) = v4[10] - 39;
  LOBYTE(STACK[0x804]) = v4[11] - 39;
  LOBYTE(STACK[0x805]) = v4[12] - 39;
  LOBYTE(STACK[0x806]) = v4[13] - 39;
  LOBYTE(STACK[0x807]) = v4[14] - 39;
  LOBYTE(STACK[0x808]) = v4[15] - 39;
  LOBYTE(STACK[0x809]) = v4[16] - 39;
  LOBYTE(STACK[0x80A]) = v4[17] - 39;
  LOBYTE(STACK[0x80B]) = v4[18] - 39;
  LOBYTE(STACK[0x80C]) = v4[19] - 39;
  v5 = *(v3 - 972930378);
  LOBYTE(STACK[0x80D]) = v5[20] - 39;
  LOBYTE(STACK[0x80E]) = v5[21] - 39;
  LOBYTE(STACK[0x80F]) = v5[22] - 39;
  (*(v2 + 8 * (v1 ^ 0xEF2D)))(&STACK[0x420], v0 + 64, 32);
  v6 = (*(v2 + 8 * (v1 ^ 0xEEF8)))(v0 + 64, &STACK[0x7F9], &STACK[0x770], 128);
  return (*(v2 + 8 * ((32771 * ((((2 * v6) & 0xF7) + (v6 ^ 0x7B)) == 123)) ^ (v1 + 6036))))();
}

uint64_t sub_1001A6978@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W5>, int a6@<W6>, uint64_t a7@<X8>)
{
  v16 = v15 > v12;
  v17 = v8 + a3 + (*(*(v14 + 8) + 4 * (a6 + a1)) ^ a2);
  *(*(a7 + 8) + 4 * (a6 + a1)) = v17 - (a4 & (2 * v17)) + a2;
  v18 = a6 + a5;
  v19 = v16 ^ (v18 < v11);
  v20 = v18 < v10;
  if (!v19)
  {
    v16 = v20;
  }

  return (*(v13 + 8 * ((v16 * v7) ^ v9)))();
}

uint64_t sub_1001A69F0()
{
  v3 = (v0 - 37800) | 0x5512;
  v4 = (((v1 + 1658505820) & 0x9D253644) << ((((v0 + 88) | 0x12) - 117) ^ 0xC0)) & ((v1 + 1658505820) ^ 0x59A1A762) ^ (v1 + 1658505820) & 0x9D253644;
  v5 = ((2 * ((v1 + 1658505820) ^ 0x51EB83EA)) ^ 0x999D6B54) & ((v1 + 1658505820) ^ 0x51EB83EA) ^ (2 * ((v1 + 1658505820) ^ 0x51EB83EA)) & 0xCCCEB5AC;
  v6 = v5 ^ 0x444294A2;
  v7 = (v5 ^ 0x88CE2582) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0x333AD6B8) & v6 ^ (4 * v6) & 0xCCCEB5A8;
  v9 = (v8 ^ 0xA94A6) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0xCCC42106)) ^ 0xCCEB5AE0) & (v8 ^ 0xCCC42106) ^ (16 * (v8 ^ 0xCCC42106)) & 0xCCCEB5A0;
  v11 = v9 ^ 0xCCCEB5AE ^ (v10 ^ 0xCCCA100E) & (v9 << 8);
  v12 = (v1 + 1658505820) ^ (2 * ((v11 << 16) & 0x4CCE0000 ^ v11 ^ ((v11 << 16) ^ 0x35AE0000) & (((v10 ^ 0x4A50E) << 8) & 0x4CCE0000 ^ 0x4A0000 ^ (((v10 ^ 0x4A50E) << 8) ^ 0x4EB50000) & (v10 ^ 0x4A50E))));
  LODWORD(STACK[0x354]) = v12 ^ 0xE4719A09;
  v13 = (*(v2 + 8 * (v3 + 19810)))(v12 ^ 0xDA45D18u);
  STACK[0x368] = v13;
  return (*(v2 + 8 * (((4 * (v13 == 0)) | (8 * (v13 == 0))) ^ v3)))();
}

uint64_t sub_1001A6DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = v12 - 1;
  v22 = (a2 + v21);
  v23 = a1 + v21 + v8;
  v24 = __ROR8__((a2 + v21) & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = ((0x296E95066F186A7ELL - v24) & v10) + v24 + a4 - ((v24 + a4) & a6);
  v26 = __ROR8__(v25 ^ v13, 8);
  v25 ^= 0xC14413EE03AAF609;
  v27 = (v26 + v25) ^ 0x14BA074A2F986FE5;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ v16;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ v19;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = __ROR8__((((v33 + v32) | 0x4BB2CF10603AF002) - ((v33 + v32) | a7) + a7) ^ a8, 8);
  v35 = (((v33 + v32) | 0x4BB2CF10603AF002) - ((v33 + v32) | a7) + a7) ^ a8 ^ __ROR8__(v32, 61);
  v36 = ((v15 | (2 * ((v34 + v35) ^ 0x3BC4FBA94204947DLL))) - ((v34 + v35) ^ 0x3BC4FBA94204947DLL) - 0x22261F7BC0B5837CLL) ^ 0xB37F3E686055C37DLL;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8) + v37;
  v39 = __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8);
  v40 = v39 - ((v17 + 2 * v39) & 0xF2F9342312EBF434) - 0x34F0E2B01860A2AALL;
  v41 = __ROR8__(v40 ^ 0x67FD13F296EE9EB2, 8);
  v42 = v40 ^ 0xEB690A0067A58754;
  v43 = STACK[0x440];
  v44 = (v41 + (v40 ^ 0xEB690A0067A58754) - ((2 * (v41 + (v40 ^ 0xEB690A0067A58754))) & 0x8D4F80F477B96692) - 0x39583F85C4234CB7) ^ v11;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = ((v38 | 0x297AF72712700E83) - (v38 | 0xD68508D8ED8FF17CLL) - 0x297AF72712700E84) ^ a3;
  v47 = (__ROR8__(v44, 8) + v45) ^ 0xFD0A19BB2FE13205;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0x19BBA1D59C2A28CLL;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0xA958557FD3FC79DDLL;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = __ROR8__(v51, 8);
  v54 = __ROR8__(v46, 8) + (v46 ^ __ROR8__(v37, 61));
  v55 = STACK[0x450];
  v56 = (((2 * (v53 + v52)) & 0x44533E486510C9DELL) - (v53 + v52) - 0x22299F24328864F0) ^ 0xF1E910203B8E36B3;
  v57 = v56 ^ __ROR8__(v52, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ v14;
  *v23 = ((v54 ^ a5) >> (8 * (v22 & 7u))) ^ (((__ROR8__(v58, 8) + (v58 ^ __ROR8__(v57, 61))) ^ v18) >> (8 * (v23 & 7u))) ^ *v22;
  return (*(v20 + 8 * ((4164 * (v21 == 0)) ^ v9)))(v55, v43);
}

uint64_t sub_1001A710C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W8>)
{
  v6 = v4 - 1;
  *(a2 + 248) = v6;
  v7 = ((v3 ^ 0x4C) - 19) ^ v3 ^ ((v3 ^ 0x67) - 56) ^ ((v3 ^ 0xBD) + 30) ^ ((v3 ^ 0x9C ^ (3 * (a3 ^ 0x43))) + 106);
  *(a1 + v6) = ((((v7 ^ 0x8D) + 29) ^ ((v7 ^ 0xDB) + 75) ^ ((v7 ^ 0xB3) + 35)) - 102) * (v3 - 78) - 15 * v3 - 110;
  return (*(v5 + 8 * ((15 * (*(a2 + 248) != 0)) ^ a3)))();
}

uint64_t sub_1001A7240(uint64_t a1, int a2)
{
  v12 = v8 < v9;
  *(v11 + v7) = *(v4 + (v7 & 0xF)) ^ *(v2 + v7) ^ *(v6 + (v7 & 0xF)) ^ (-67 * (v7 & 0xF)) ^ *((v7 & 0xF) + v5 + 1);
  if (v12 == v7 + 1 > 0x24BDC902)
  {
    v12 = ((v3 + 720901043) & 0xD507DDF6 ^ 0xDB422B18) + v7 < v8;
  }

  return (*(v10 + 8 * ((v12 * a2) ^ v3)))();
}

uint64_t sub_1001A7370(double a1, __n128 a2)
{
  a2.n128_u16[0] = 3341;
  a2.n128_u8[2] = 13;
  a2.n128_u8[3] = 13;
  a2.n128_u8[4] = 13;
  a2.n128_u8[5] = 13;
  a2.n128_u8[6] = 13;
  a2.n128_u8[7] = 13;
  return (*(v3 + 8 * (v2 + 17752)))(xmmword_100F523B0, a2);
}

uint64_t sub_1001A73CC(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v23.n128_u64[0] = (v20 + 13) & 0xF;
  v23.n128_u64[1] = (v20 + 12) & 0xF;
  v24.n128_u64[0] = (v20 + 11) & 0xF;
  v24.n128_u64[1] = (v20 + 10) & 0xF;
  v25.n128_u64[0] = (v20 + 9) & 0xF;
  v25.n128_u64[1] = v21 & 0xF ^ 0xBLL;
  v28.val[0].i64[0] = (v20 + 7) & 0xF;
  v28.val[0].i64[1] = (v20 + 6) & 0xF;
  v28.val[1].i64[0] = (v20 + 5) & 0xF;
  v28.val[1].i64[1] = (v20 + 4) & 0xF;
  v28.val[2].i64[0] = (v20 + 3) & 0xF;
  v28.val[2].i64[1] = (v20 + 2) & 0xF;
  v28.val[3].i64[0] = (v20 + 1) & 0xF;
  v28.val[3].i64[1] = v20 & 0xF;
  v26.n128_u64[0] = 0xBDBDBDBDBDBDBDBDLL;
  v26.n128_u64[1] = 0xBDBDBDBDBDBDBDBDLL;
  return (*(a18 + 8 * v19))(0, v18 - 15, (v20 + 14) & 0xF, v22 - 15, (v21 & 0x10) - 16, 138, -8908, a1, v23, v24, v25, xmmword_100BC76B0, vqtbl4q_s8(v28, xmmword_100BC76B0), v26);
}

uint64_t sub_1001A75DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = LODWORD(STACK[0x330]) - 1213388160;
  v68 = ((a3 - 1213388160) < 0x10F1C6CA) ^ (v67 < 0x10F1C6CA);
  v69 = a3 - 1213388160 > v67;
  if (v68)
  {
    v69 = (a3 - 1213388160) < 0x10F1C6CA;
  }

  return (*(v66 + 8 * ((v69 * (((v65 ^ 0x381D) + 37562) ^ 0x3DE5)) ^ v65)))(a1, a65, a2, LODWORD(STACK[0x2B4]));
}

uint64_t sub_1001A7658@<X0>(uint64_t a1@<X3>, unsigned int a2@<W5>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28, uint64_t a29, uint64_t a30, int a31, uint64_t a32)
{
  v32 = STACK[0x2F8];
  v33 = ((v32 & 0xD06FB963) << ((a3 + 27) ^ 0x4A)) & (v32 ^ 0x994F396B) ^ v32 & 0xD06FB963;
  v34 = ((2 * (v32 ^ 0xEF)) ^ 0x18) & (v32 ^ 0xEF) ^ (2 * (v32 ^ 0xEF)) & ((a3 + 77) & 0x9A ^ 0x94);
  v35 = (LODWORD(STACK[0x2F8]) ^ (2 * (((4 * (v34 ^ 0x84)) ^ 0x30) & (v34 ^ 0x84) & (16 * ((v34 ^ 8) & (4 * v33) ^ v33)) ^ (v34 ^ 8) & (4 * v33) ^ v33))) ^ 0x63u;
  v36 = STACK[0x308];
  v37 = (LODWORD(STACK[0x30C]) - 797984413) % a2;
  v38 = a31 + a27 + a28 + a21 + 3 * v37;
  v52 = (((29 - LOBYTE(STACK[0x308])) ^ LOBYTE(STACK[0x308]) ^ ((LODWORD(STACK[0x308]) ^ 0xC) + 111)) ^ (((LODWORD(STACK[0x308]) ^ 0x3D) + 96) ^ ((LODWORD(STACK[0x308]) ^ 0x53) + 50))) & 0x7F ^ 0x1D;
  v39 = LODWORD(STACK[0x2F8]) + LODWORD(STACK[0x2F4]) + v38 + v35 - 1585721276 - v52 + 8 * v52 + 316822948;
  v40 = ((2 * (v39 ^ 0x68A617AF)) ^ 0x2867D65C) & (v39 ^ 0x68A617AF) ^ (2 * (v39 ^ 0x68A617AF)) & 0x1433EB2E;
  v41 = v40 ^ 0x14102922;
  v42 = (v40 ^ 0x23C20C) & (4 * (((2 * v39) & 0xF92BF902 ^ 0x7C95FC81) & v39)) ^ ((2 * v39) & 0xF92BF902 ^ 0x7C95FC81) & v39;
  v43 = (4 * v41) & 0x1433EB20 ^ 0x1003A820 ^ ((4 * v41) ^ 0x50CFACB0) & v41;
  v44 = (v36 ^ 0xC76FBC7B) & (2 * (v36 & 0xD06FB963)) ^ v36 & 0xD06FB963;
  v45 = ((2 * (v36 ^ 0xE7F1CC7B)) ^ 0x6F3CEA30) & (v36 ^ 0xE7F1CC7B) ^ (2 * (v36 ^ 0xE7F1CC7B)) & 0x379E7518;
  v46 = v45 ^ 0x10821508;
  v47 = (v45 ^ 0x31C6010) & (4 * v44) ^ v44;
  v48 = 4 * v46;
  v49 = ((4 * v46) ^ 0xDE79D460) & v46;
  v50 = v39 ^ LODWORD(STACK[0x308]) ^ (2 * ((v49 ^ v48 & 0x379E7510) & (16 * v47) ^ v47 ^ v42 ^ v43 & (16 * v42)));
  return (*(a32 + 8 * ((20648 * (((LODWORD(STACK[0x310]) - LODWORD(STACK[0x314]) + LODWORD(STACK[0x31C]) + 439092065 + (((v50 ^ 0x742EAD17) + 82009845) ^ ((v50 ^ 0x29DE9EF5) + 1494445335) ^ ((v50 ^ 0x9B7E7600) - 340556316))) & 1) == 0)) ^ a3)))(v49, 933131536, (29 - LODWORD(STACK[0x308])) ^ LODWORD(STACK[0x308]), a1, v35, v37, 3496982883, 29, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1001A79D8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33)
{
  v36 = v33 + v35 + 44633941;
  v37 = ((v34 ^ 0x918213FF) + 1106094750) ^ v34 ^ ((v34 ^ 0xBA93D442) + 1794927905) ^ ((v34 ^ 0x3F7F6EDF) - 284108866) ^ ((v34 ^ 0x3BFEEFFF) - 342796642) ^ v36 ^ ((v36 ^ 0x8B74E6C9) + 634530305) ^ ((v36 ^ 0xD6E2A6D5) + 2017749533) ^ ((v36 ^ 0xFDFEBDFF) + 1398305079) ^ (((a1 + 16171065) & 0xFF08EDFF ^ 0x5F9762E6) + (v36 ^ 0xF131CED5));
  v38 = *(&a33 + 0xE % a20);
  return (*(a30 + 8 * ((7 * (((a33 + 1564953786 * v38 - *(&a33 + 7 % a20) + ((((v37 ^ 0x43CED9FB) - 1681678932) ^ ((v37 ^ 0x2EEDCBCC) - 153055331) ^ ((v37 ^ 0x13EA679C) - 874044467)) - 67862198) * (v38 - 797984413) + 1599996598) & 7) == 1)) ^ a1)))((a1 - 40150));
}

uint64_t sub_1001A7E78@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  *(a3 + 24) = a2;
  *(a3 + 32) = *(a1 + 80);
  *(a1 + 80) = a3;
  *(*(a3 + 32) + 24) = a3;
  *(v3 + 8) = ((0x3CE25E0EC5200378 - *(v3 + 8)) ^ 0xBCEB5E9ED7B487FBLL) + 0x7FF6FF6FED6B7B7DLL + (((0x3CE25E0EC5200378 - *(v3 + 8)) << (((v4 + 79) | 0x43) ^ 0x46u)) & 0x79D6BD3DAF690FF6);
  return (*(v5 + 8 * v4))();
}

uint64_t sub_1001A803C@<X0>(__int16 a1@<W0>, unsigned int a2@<W1>, unsigned int a3@<W2>, unsigned int a4@<W3>, unsigned int a5@<W4>, unsigned __int8 a6@<W5>, unsigned __int8 a7@<W6>, _DWORD *a8@<X8>)
{
  v18 = *(v8 + 8 * (v14 - 33045)) - 1050656011;
  v19 = *(v36 + 8);
  v20 = *(v8 + 8 * (v14 - 32233)) - 1830203519;
  v21 = *(v8 + 8 * (v14 ^ 0x8D56)) - 90543978;
  v22 = *(v8 + 8 * (v14 - 30446)) - 2070050218;
  v23 = *(v20 + 4 * v16) ^ *(v18 + 4 * v17) ^ (*(v22 + a6) - 121);
  v24 = *(v20 + 4 * v13) ^ *(v18 + 4 * v12);
  v25 = (*(v21 + 2 * HIBYTE(a1)) - 2868);
  v26 = *(v18 + 4 * v11);
  v27 = (*(v22 + a7) - 121);
  v28 = *(v20 + 4 * a3) ^ (*(v21 + 2 * a2) - 2868) ^ (*(v22 + a1) - 121);
  LODWORD(v22) = *(v20 + 4 * v10) ^ *(v18 + 4 * a4) ^ (*(v21 + 2 * a5) - 2868) ^ (*(v22 + v9) - 121);
  LODWORD(v18) = v23 ^ *a8 ^ (*(v21 + 2 * v15) - 2868);
  v29 = v24 ^ v25 ^ a8[1] ^ v27;
  v30 = v28 ^ v26 ^ a8[2];
  v31 = v22 ^ a8[3];
  v32 = HIBYTE(v30) ^ 0xFFFFFFCD;
  v33 = HIWORD(v30) ^ 0xFFFFFFFE;
  v34 = (v30 >> 8) ^ 0xFFFFFFA7;
  v30 ^= 0xEu;
  v19[15] = (v31 ^ 0xE) - ((2 * (v31 ^ 0xE)) & 0xBF) + 95;
  v19[14] = (BYTE1(v31) ^ 0xA7) - ((2 * (BYTE1(v31) ^ 0xA7)) & 0xBF) + 95;
  v19[13] = (BYTE2(v31) ^ 0xFE) - ((2 * (BYTE2(v31) ^ 0xFE)) & 0xBF) + 95;
  v19[12] = (HIBYTE(v31) ^ 0xCD) - ((2 * (HIBYTE(v31) ^ 0xCD)) & 0xBF) + 95;
  result = (2 * v30) & 0xFFFFFFBF;
  v19[11] = v30 - ((2 * v30) & 0xBF) + 95;
  v19[10] = v34 - ((2 * v34) & 0xBF) + 95;
  v19[9] = v33 - ((2 * v33) & 0xBF) + 95;
  v19[8] = v32 - ((2 * v32) & 0xBF) + 95;
  v19[7] = (v29 ^ 0xE) - ((2 * (v29 ^ 0xE)) & 0xBF) + 95;
  v19[6] = (BYTE1(v29) ^ 0xA7) - ((2 * (BYTE1(v29) ^ 0xA7)) & 0xBF) + 95;
  v19[5] = (BYTE2(v29) ^ 0xFE) - ((2 * (BYTE2(v29) ^ 0xFE)) & 0xBF) + 95;
  v19[4] = (HIBYTE(v29) ^ 0xCD) - ((2 * (HIBYTE(v29) ^ 0xCD)) & 0xBF) + 95;
  v19[3] = (v18 ^ 0xE) - ((2 * (v18 ^ 0xE)) & 0xBF) + 95;
  v19[2] = (BYTE1(v18) ^ 0xA7) - ((2 * (BYTE1(v18) ^ 0xA7)) & 0xBF) + 95;
  v19[1] = (BYTE2(v18) ^ 0xFE) - ((2 * (BYTE2(v18) ^ 0xFE)) & 0xBF) + 95;
  *v19 = (BYTE3(v18) ^ 0xCD) - ((2 * (BYTE3(v18) ^ 0xCD)) & 0xBF) + 95;
  *(v36 + 16) = -371865839;
  return result;
}

uint64_t sub_1001A8370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, unint64_t a14, unsigned int a15, uint64_t a16, uint64_t a17)
{
  v20 = *(a10 + 32);
  a15 = v19 + 155453101 * (((&a14 | 0xBBCCF6E9) - &a14 + (&a14 & 0x44330910)) ^ 0x5DEAED26) - 15249;
  a14 = &a11 ^ 0xF632AB2A40C86FDALL ^ (v19 - 33738371) & 0x7C26FF77;
  a16 = v20;
  a17 = v17;
  v21 = (*(v18 + 8 * (v19 + 13108)))(&a14);
  return (*(v18 + 8 * v19))(v21);
}

uint64_t sub_1001A84B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v12 = (v7 ^ 0x234D) + 20034 + v11 - a7 - 20618;
  LODWORD(STACK[0x2DC]) = v12;
  if (v12 > v9)
  {
    v8 = 371891407;
  }

  LODWORD(STACK[0x364]) = v8;
  return (*(v10 + 8 * ((4766 * (v8 == ((57 * (v7 ^ 0x234D)) ^ 0xE9D54289))) ^ v7)))();
}

uint64_t sub_1001A8558@<X0>(unsigned int a1@<W8>)
{
  v11 = v6 < a1;
  *(v10 + v7) = *(v4 + (v7 & 0xF)) ^ *(v1 + v7) ^ *(v3 + (v7 & 0xF)) ^ (27 * (v7 & 0xF)) ^ *((v7 & 0xF) + v2 + 1);
  if (v11 == v7 + 1 > 0x2D3B5D50)
  {
    v11 = ((4084 * (v5 ^ 0x3284)) ^ 0xD2C48D6C) + v7 < v6;
  }

  return (*(v9 + 8 * ((v11 * v8) ^ v5)))();
}

uint64_t sub_1001A85F4(uint64_t a1, uint64_t a2)
{
  v4 = STACK[0xF10] - 35624;
  LOWORD(STACK[0xA42E]) = v2;
  return (*(STACK[0xF18] + 8 * (v4 ^ 0x2076)))(a1, a2, v3);
}

uint64_t sub_1001A874C@<X0>(int a1@<W1>, unsigned int a2@<W3>, int a3@<W4>, unsigned int a4@<W5>, int a5@<W6>, int a6@<W7>, int a7@<W8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  v49 = v44 < a2;
  v50 = v38 - 849538371;
  if (v38 - a1 == 1776871185)
  {
    v50 = 0;
  }

  v51 = *(&a38 + v50);
  v52 = *(&a38 + (v38 - 849538372));
  v53 = (v52 ^ 0xDD4F3D6B) & (2 * (v52 & 0xD06FB963)) ^ v52 & 0xD06FB963;
  v54 = ((2 * (v52 ^ 0xDD9F0F6B)) ^ 0x1BE16C10) & (v52 ^ 0xDD9F0F6B) ^ (2 * (v52 ^ 0xDD9F0F6B)) & v42;
  v55 = v54 ^ 0x4109208;
  v56 = (v54 ^ 0x1E02400) & (4 * v53) ^ v53;
  v57 = ((4 * v55) ^ 0x37C2D820) & v55 ^ (4 * v55) & v42;
  v58 = v56 ^ v42 ^ (v57 ^ 0x5C09000) & (16 * v56);
  v59 = v51 + 1901388722 + *(&a38 + (3 * v38 + 1746352180) % a4);
  v60 = (16 * (v57 ^ 0x8302608)) & v45 ^ 0xF09608 ^ ((16 * (v57 ^ 0x8302608)) ^ 0xDF0B6080) & (v57 ^ 0x8302608);
  v61 = (v58 << 8) & v45 ^ v58 ^ ((v58 << 8) ^ 0xF0B60800) & v60;
  v62 = v52 ^ v59 ^ ((v59 ^ 0xF75FBDFD) - 1226745737) ^ ((v59 ^ 0xCE1CFA9C) - 1885200616) ^ ((v59 ^ 0xBCBDA2E8) - 50116764) ^ ((v59 ^ 0x3BBFFFFD) + 2046892663) ^ (2 * ((v61 << 16) & v39 ^ v61 ^ ((v61 << 16) ^ a3) & ((v60 << 8) & v39 ^ 0xD400000 ^ ((v60 << 8) ^ 0x70B60000) & v60)));
  *(&a38 + (v38 - 849538372)) = (((v62 ^ a6) + v47) ^ ((v62 ^ v43) + v48) ^ ((v62 ^ a5) + v46)) + v41;
  if (v49 == v38 + v40 < a2)
  {
    v49 = v38 + v40 < v44;
  }

  return (*(a35 + 8 * ((253 * !v49) ^ a7)))();
}

uint64_t sub_1001A8A98()
{
  v4 = v0 - 1638947030 < v3 - 111422780;
  if (v3 > -2036060869 != v0 - 1638947030 < 2036060868)
  {
    v4 = v3 > -2036060869;
  }

  return (*(v2 + 8 * ((v4 * ((v1 + 37582) ^ 0x1FEA ^ ((v1 - 8243) | 0x2020))) ^ v1)))();
}

uint64_t sub_1001A8B1C(int a1, double a2, __n128 a3, __n128 a4)
{
  a3.n128_u16[0] = -19533;
  a3.n128_u8[2] = -77;
  a3.n128_u8[3] = -77;
  a3.n128_u8[4] = -77;
  a3.n128_u8[5] = -77;
  a3.n128_u8[6] = -77;
  a3.n128_u8[7] = -77;
  a4.n128_u16[0] = 24415;
  a4.n128_u8[2] = 95;
  a4.n128_u8[3] = 95;
  a4.n128_u8[4] = 95;
  a4.n128_u8[5] = 95;
  a4.n128_u8[6] = 95;
  a4.n128_u8[7] = 95;
  return (*(v4 + 8 * a1))(xmmword_100F523B0, a3, a4);
}

uint64_t sub_1001A8E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33, uint64_t a34, int a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  v44 = 11 * a33 + 13 * a35 + LODWORD(STACK[0x2F4]) - 797984413 + v43;
  v45 = ((STACK[0x2F8] & 0xD06FB963) << ((((v42 ^ 0x4D) + 116) & 0xF1) + 80)) & (LODWORD(STACK[0x2F8]) ^ 0x986FB073) ^ STACK[0x2F8] & 0xD06FB963;
  v46 = ((2 * (LODWORD(STACK[0x2F8]) ^ 0x982080F7)) ^ 0x909E7328) & (LODWORD(STACK[0x2F8]) ^ 0x982080F7) ^ (2 * (LODWORD(STACK[0x2F8]) ^ 0x982080F7)) & 0x484F3994;
  v47 = LODWORD(STACK[0x308]);
  v48 = v40 - LODWORD(STACK[0x300]) + LODWORD(STACK[0x3E4]) + (LODWORD(STACK[0x2F8]) ^ (v44 - ((2 * v44) & 0xA2B02FA0) - 782755888) ^ (2 * (((4 * (v46 ^ 0x48410894)) & 0x484F3990 ^ 0xC2010 ^ ((4 * (v46 ^ 0x48410894)) ^ 0x213CE650) & (v46 ^ 0x48410894)) & (16 * (v46 & (4 * v45) ^ v45)) ^ v46 & (4 * v45) ^ v45)) ^ 0x113FAEB3);
  v49 = (v48 ^ 0xD14FB172) & (2 * (v48 & 0xD06FB963)) ^ v48 & 0xD06FB963;
  v50 = ((2 * (v48 ^ 0x51C1E1F2)) ^ 0x35CB122) & (v48 ^ 0x51C1E1F2) ^ (2 * (v48 ^ 0x51C1E1F2)) & 0x81AE5890;
  v51 = v50 & (4 * v49) ^ v49;
  v52 = *(&a40 + a31);
  v53 = v52 & 0xD06FB963;
  v54 = (2 * v53);
  v55 = ((2 * (v52 ^ 0x29803A04)) ^ 0xF3DF06CE) & (v52 ^ 0x29803A04) ^ (2 * (v52 ^ 0x29803A04)) & 0xF9EF8366;
  v56 = v55 ^ 0x8208121;
  v57 = (v55 ^ 0xC1CF0204) & (4 * (v54 & (v52 ^ 0x894F3842) ^ v53)) ^ v54 & (v52 ^ 0x894F3842) ^ v53;
  v58 = v48 ^ v52 ^ (2 * ((((4 * v56) ^ 0xE7BE0D90) & v56 ^ (4 * v56) & 0xF9EF8360) & (16 * v57) ^ v57 ^ v51 ^ (((4 * (v50 ^ 0x80A24891)) ^ 0x6B96240) & (v50 ^ 0x80A24891) ^ (4 * (v50 ^ 0x80A24891)) & 0x1AE5890) & (16 * v51)));
  v59 = v41 + LODWORD(STACK[0x2F4]) + LODWORD(STACK[0x2F8]) + *(&a40 + a29) - *(&a40 + a28) - 1169518206 + (((v58 ^ 0xE2E71228) + 1407201002) ^ ((v58 ^ 0x2853506E) - 1722520400) ^ ((v58 ^ 0xC97A4246) + 2021490312));
  return (*(a37 + 8 * ((60583 * (((LODWORD(STACK[0x310]) - LODWORD(STACK[0x314]) + LODWORD(STACK[0x31C]) - 797984413 + (v47 ^ ((v47 ^ 0x9E980BFC) + 1324855967) ^ ((v47 ^ 0x5E17F8E4) - 1904721529) ^ ((v47 ^ 0x10A06A7F) - 1060121826) ^ ((v47 ^ 0xFFBFDFFA) + 802186905) ^ 0xE523950A ^ (v59 - ((2 * v59) & 0x9567A72E) - 894184553))) & 1) == 0)) ^ v42 ^ 0x484D)))((v47 ^ 0x10A06A7F) - 1060121826, (v47 ^ 0xFFBFDFFA) + 802186905, &a40, v52, v53, v54, v47, 3400782743, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_1001A92A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v77 = *(v70 + 4 * (v71 - 1));
  *(v70 + 4 * v71) = *(v74 + 4 * v72) + v72 + ((1664525 * (v77 ^ (v77 >> 30))) ^ *(v70 + 4 * v71));
  v78 = 906386353 * ((a70 - ((v76 - 160) | 0x25A6095D0D3EC2DCLL) + 0x25A6095D0D3EC2DCLL) ^ 0x74D30B6CC3C0F007);
  *(v76 - 116) = (v75 + 399269070) ^ v78;
  STACK[0x838] = v71 + 1 - v78;
  *(v76 - 124) = ((v75 + 399269126) ^ 0x135A) + v78;
  *(v76 - 120) = v78 + v75 + 800705426;
  *(v76 - 160) = (v75 + 399269126) ^ v78;
  *(v76 - 144) = v78 + 1;
  STACK[0x848] = v78 ^ 0x26F;
  v79 = (*(v73 + 8 * (v75 + 42834)))(v76 - 160);
  return (*(v73 + 8 * *(v76 - 128)))(v79);
}

uint64_t sub_1001A9414@<X0>(uint64_t a1@<X2>, int a2@<W3>, unint64_t a3@<X4>, int a4@<W5>, int a5@<W8>)
{
  v9 = (v7 + 4 * v6);
  v10 = ((a5 + a2) ^ a3) + v6;
  *v9 = *(a1 + 4 * (*(v7 + 4 * v10) & 1)) ^ v9[397] ^ ((*(v7 + 4 * v10) & 0x7FFFFFFE | v5 & 0x80000000) >> 1);
  return (*(v8 + 8 * (((v10 == 227) * a4) ^ a5)))();
}

uint64_t sub_1001A94A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  v15 = 634647737 * ((v14 - 184) ^ 0x6D962FFC);
  *(v14 - 184) = (a11 ^ ((a11 ^ 0x2287FAF) - 721059272) ^ ((a11 ^ 0x55E6FE0E) - 2100624489) ^ ((a11 ^ 0x7FFFFDDB) - 1462632380) ^ 0x8260C0E6 ^ ((a11 ^ ((v11 + 5748) | 0xC09) ^ 0xE35286) - 674331770)) + v15;
  *(v14 - 176) = v13;
  *(v14 - 168) = v11 - v15 + 18393;
  v16 = (*(v12 + 8 * (v11 ^ 0xC11F)))(v14 - 184);
  return (*(v12 + 8 * (v11 + 10629)))(v16);
}

uint64_t sub_1001A95A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  *(v59 + 8) = a1 + 0x63A5612080209BD3;
  *a38 = a1 + 0x63A5612080209BD3;
  a38[1] = (v58 + 6241) - v57 - 0x5F7840D0BABFC9D7;
  a38[2] = (LOBYTE(STACK[0x2EF]) ^ 0x9FFFFBF5BCBF7BF1) - 0x2C4B6ABAC4EF4DB2 + ((2 * LOBYTE(STACK[0x2EF])) & 0xFFE3);
  *a37 = 0x3CE25E0EC5200378;
  *(a56 + 40) += v56;
  return (*(v60 + 8 * (v58 + 4730)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

void sub_1001A96B0(uint64_t a1)
{
  v1 = *(a1 + 4) - 634647737 * ((2 * (a1 & 0x555F22C8) - a1 - 1432298185) ^ 0xC736F2CB);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1001A9B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x6A0] = v11 + 112;
  STACK[0x448] = v9;
  if (v9)
  {
    v13 = a8 == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = !v13;
  return (*(v12 + 8 * ((v14 * ((v8 - 29179) ^ v10)) ^ v8)))();
}

uint64_t sub_1001A9BD0()
{
  v3 = ((2 * v1) & 0x1EFF7CD7ALL) + (((v0 + 530542219) - 0x4010A1927A39B61) ^ v1) + 0x64F16B5FADBF7FF8;
  STACK[0xC90] = v3;
  v4 = STACK[0x538];
  STACK[0xC98] = STACK[0x538];
  return (*(v2 + 8 * ((15508 * (v3 - v4 - 0x5A40D8377BB1B134 < ((v0 - 3338) ^ 0xFFFFFFFFFFFFF97FLL))) ^ v0)))();
}

uint64_t sub_1001A9C74@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = STACK[0x380];
  v4 = STACK[0x308];
  *(a1 + 32) = *(STACK[0x308] + 80);
  *(v4 + 80) = a1;
  *(*(a1 + 32) + 24) = a1;
  *(v1 + 8) = (v2 - 7299) - *(v1 + 8) + 0x79C4BC1D8A3FA4F7;
  return (*(v3 + 8 * v2))();
}

uint64_t sub_1001A9CC8(uint64_t a1)
{
  v1 = 1112314453 * (a1 ^ 0xEF562AD9);
  v2 = *(a1 + 4) ^ v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24) - v1;
  v7 = *(a1 + 32);
  v8 = 634647737 * ((2 * (&v13 & 0x4976B550) - &v13 + 914967211) ^ 0x5B1F6557);
  v14 = v12;
  v17 = v3 - v1 + 7527 - 2887 * ((2 * (&v13 & 0xB550) - &v13 + 19115) ^ 0x6557);
  LODWORD(v15) = v8 ^ 0x28D20269;
  LODWORD(v13) = v2 - v8 - 679170628;
  v16 = v4;
  v9 = *(&off_1010A0B50 + v2 - 679192607) - 810145054;
  (*&v9[8 * (v2 ^ 0x287B66F9)])(&v13);
  v10 = 634647737 * ((((&v13 | 0xFA1E5F08) ^ 0xFFFFFFFE) - (~&v13 | 0x5E1A0F7)) ^ 0x68778F0B);
  v15 = v12;
  LODWORD(v14) = v2 - v10 - 679168502;
  HIDWORD(v14) = (776155985 * v6 + 630195486) ^ v10;
  v13 = v5;
  (*&v9[8 * v2 - 0x143D708F8])(&v13);
  LODWORD(v15) = v2 - 634647737 * ((~&v13 & 0x73AAE119 | &v13 & 0x8C551EE0) ^ 0x1E3CCEE5) - 679189060;
  v13 = v7;
  v14 = v12;
  return (*&v9[8 * v2 - 0x143D709D8])(&v13);
}

void sub_1001AA130(_DWORD *a1)
{
  v1 = *a1 + 139493411 * (((a1 | 0xE037C9CF) - a1 + (a1 & 0x1FC83630)) ^ 0xEC1A288A);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1001AA224()
{
  *(v4 + 368) = v3;
  if (v3)
  {
    v5 = v2 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  return (*(v1 + 8 * ((v6 * ((v0 - 29988) ^ 0x6B07 ^ ((v0 - 37048) | 0x4094))) ^ v0)))();
}

uint64_t sub_1001AA308()
{
  *(v2 - 160) = v1 + 1012831759 * ((((v2 - 160) ^ 0xF1F6C573) - 2 * (((v2 - 160) ^ 0xF1F6C573) & 0x70555BD3) - 262841385) ^ 0x1130882E) + 36574;
  v3 = (*(v0 + 8 * (v1 ^ 0xDEE1)))(v2 - 160);
  return (*(v0 + 8 * ((24981 * (*(v2 - 156) == ((v1 - 32) ^ 0x3627) - 371874979)) ^ v1)))(v3);
}

uint64_t sub_1001AA3B4(double a1, __n128 a2, uint64_t a3, int a4)
{
  a2.n128_u16[0] = 4883;
  a2.n128_u8[2] = 19;
  a2.n128_u8[3] = 19;
  a2.n128_u8[4] = 19;
  a2.n128_u8[5] = 19;
  a2.n128_u8[6] = 19;
  a2.n128_u8[7] = 19;
  return (*(v5 + 8 * a4))(v4 & 7, xmmword_100F523B0, a2);
}

uint64_t sub_1001AA438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  v58 = (*(v57 + 8 * (v56 + 10964)))();
  STACK[0x350] = v58;
  return (*(v57 + 8 * ((29 * (v58 != 0)) ^ v56)))(v58, &off_1010A0B50, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56);
}

void sub_1001AA500(uint64_t a1)
{
  v1 = *(a1 + 16) ^ (353670337 * ((-2 - ((a1 | 0x45CDD812) + (~a1 | 0xBA3227ED))) ^ 0xE13DFD0));
  v2 = *(*a1 + 4);
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

  v7 = *(*(a1 + 24) + 4);
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

  v13 = *a1;
  v14 = (17902189 * ((~&v13 & 0x3F7A57BB | &v13 & 0xC085A840) ^ 0xB13541AB)) ^ (v1 + 17034);
  v11 = *(&off_1010A0B50 + (v1 ^ 0x6AE3)) - 810145054;
  (*&v11[8 * (v1 ^ 0xA2BC)])(&v13);
  if (v6 >= v10)
  {
    v12 = (v10 ^ 0xE715FFFB) + 2147483390 + ((2 * v10) & 0xCE2BFFF6);
  }

  else
  {
    v12 = (v6 ^ 0xF77FFFF9) + 1872101120 + ((2 * v6) & 0xEEFFFFF2);
  }

  __asm { BRAA            X14, X17 }
}

uint64_t sub_1001AA708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = v12;
  v19 = v13;
  HIDWORD(a12) = (*(v15 + 8 * (v14 + 42223)))(0);
  return (*(v15 + 8 * v14))(13148, 11004, 481, 4294960742, 34667, 2128, 9843, 9758, a9, v18, v19, a12, a1, v16 + 33);
}

uint64_t sub_1001AA918(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, int a31)
{
  *(v33 - 196) = a4;
  v34 = (((a4 ^ 0xF4D8DAE2) + 187114782) ^ ((a4 ^ 0x84E89DE8) + 2065130008) ^ ((a4 ^ (a30 + 705383976) ^ 0xB3EE66DA) + 1713012709)) - 960979284;
  v35 = (v34 ^ 0x2A988A54) & (2 * (v34 & 0x231D2865)) ^ v34 & 0x231D2865;
  v36 = ((2 * (v34 ^ 0x2E80CA9E)) ^ 0x1B3BC5F6) & (v34 ^ 0x2E80CA9E) ^ (2 * (v34 ^ 0x2E80CA9E)) & 0xD9DE2FA;
  v37 = v36 ^ 0x4842209;
  v38 = (v36 ^ 0x819C0B0) & (4 * v35) ^ v35;
  v39 = ((4 * v37) ^ 0x36778BEC) & v37 ^ (4 * v37) & 0xD9DE2F8;
  v40 = (v39 ^ 0x41582E0) & (16 * v38) ^ v38;
  v41 = ((16 * (v39 ^ 0x9886013)) ^ 0xD9DE2FB0) & (v39 ^ 0x9886013) ^ (16 * (v39 ^ 0x9886013)) & 0xD9DE2F0;
  v42 = (v34 ^ (2 * ((((v41 ^ 0x401C04B) << 8) & 0xD9D0000 ^ 0xD800000 ^ (((v41 ^ 0x401C04B) << 8) ^ 0x9DE20000) & (v41 ^ 0x401C04B)) & (((v41 ^ 0x99C2200) & (v40 << 8) ^ v40) << 16) ^ (v41 ^ 0x99C2200) & (v40 << 8) ^ v40))) == 589113445;
  return (*(v31 + 8 * (v42 | (v42 << 6) | a31)))(a1, a2, v32, (a30 + 705383976));
}

uint64_t sub_1001AAC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20)
{
  v22 = (a13 ^ 0xC36378EF) & (2 * (a13 & 0xD04B710F)) ^ a13 & 0xD04B710F;
  v23 = ((a20 + (v20 ^ 0x26576118)) ^ (2 * (a13 ^ 0xC36758E1))) & (a13 ^ 0xC36758E1) ^ (2 * (a13 ^ 0xC36758E1)) & 0x132C29EE;
  v24 = v23 ^ 0x11242822;
  v25 = (v23 ^ 0x208004C) & (4 * v22) ^ v22;
  v26 = ((4 * v24) ^ 0x4CB0A7B8) & v24 ^ (4 * v24) & 0x132C29EC;
  v27 = (v26 ^ 0x2021A0) & (16 * v25) ^ v25;
  v28 = ((16 * (v26 ^ 0x130C0846)) ^ 0x32C29EE0) & (v26 ^ 0x130C0846) ^ (16 * (v26 ^ 0x130C0846)) & 0x132C29E0;
  v29 = v27 ^ 0x132C29EE ^ (v28 ^ 0x12000800) & (v27 << 8);
  v30 = a13 ^ (2 * ((v29 << 16) & 0x132C0000 ^ v29 ^ ((v29 << 16) ^ 0x29EE0000) & (((v28 ^ 0x12C210E) << 8) & 0x132C0000 ^ 0x13040000 ^ (((v28 ^ 0x12C210E) << 8) ^ 0x2C290000) & (v28 ^ 0x12C210E))));
  v32 = (v30 & 0xF) != 3 || v30 == (v20 ^ 0xCD02) - 196433174;
  return (*(v21 + 8 * ((v32 * ((1451 * (v20 ^ 0xBAF2)) ^ 0x8C1D)) ^ v20 ^ 0xD011)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_1001AAE1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = a1 - 1;
  *(a2 + v8) = *(v2 + v8);
  return (*(v7 + 8 * (((v8 == 0) * ((v4 & v5) + v6)) ^ v3)))();
}

uint64_t sub_1001AAE48(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 24);
  return 0;
}

void sub_1001AAE60(uint64_t a1)
{
  v1 = *(a1 + 24) + 906386353 * (a1 ^ 0x3101CD24);
  v2 = *(*(a1 + 8) + 4);
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

  v7 = *(*a1 + 4);
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

  v13 = *(a1 + 8);
  v14 = v1 - 297845113 * ((~&v13 & 0x53EFC668 | &v13 & 0xAC103990) ^ 0x24DCDAF6) + 1072;
  v11 = *(&off_1010A0B50 + v1 - 29491) - 810145054;
  (*&v11[8 * v1 + 173064])(&v13);
  if (v6 >= v10)
  {
    v12 = (v10 ^ 0x235FB4BA) - 18219034 + ((2 * v10) & 0x46BF6974);
  }

  else
  {
    v12 = (v6 ^ 0xEB7BB4F9) + 919469991 + ((2 * v6) & 0xD6F769F2);
  }

  __asm { BRAA            X13, X17 }
}

uint64_t sub_1001AB018(double a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  a2.n128_u16[0] = 22873;
  a2.n128_u8[2] = 89;
  a2.n128_u8[3] = 89;
  a2.n128_u8[4] = 89;
  a2.n128_u8[5] = 89;
  a2.n128_u8[6] = 89;
  a2.n128_u8[7] = 89;
  a3.n128_u16[0] = -22360;
  a3.n128_u8[2] = -88;
  a3.n128_u8[3] = -88;
  a3.n128_u8[4] = -88;
  a3.n128_u8[5] = -88;
  a3.n128_u8[6] = -88;
  a3.n128_u8[7] = -88;
  return (*(v10 + 8 * (a7 - 8041)))(-v8, v7 - 6909, v7 + v9 - 8, (a7 - 8062), 21, xmmword_100F523B0, a2, a3);
}

uint64_t sub_1001AB114@<X0>(uint64_t a1@<X8>, uint64_t a2, unsigned int a3, int a4, uint64_t a5)
{
  v8 = 297845113 * (((&a3 | 0xEF94116) - (&a3 & 0xEF94110)) ^ 0x79CA5D88);
  a5 = a1;
  a3 = v8 - v5 - ((v7 ^ 0xFD1DC00A) & (-336389172 - 2 * v5)) - 192390502;
  a4 = v7 - v8 - 615;
  v9 = (*(v6 + 8 * (v7 ^ 0x920A)))(&a3);
  return (*(v6 + 8 * v7))(v9);
}

uint64_t sub_1001AB204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3 ^ 0xFFFF965B;
  v6 = (((LODWORD(STACK[0x2B0]) ^ 0x5E887A4B ^ (v5 + 1813) ^ 0x8486) - 1586035149) ^ ((LODWORD(STACK[0x2B0]) ^ 0x7F1FEF06) - 2132799238) ^ ((LODWORD(STACK[0x2B0]) ^ 0xC8427EF9 ^ ((v5 + 1813) | 0xA823)) + 935144998)) - 371865860;
  return (*(v4 + 8 * ((5611 * ((-((~v6 + v5) ^ (~v6 + v5)) | (~v6 + v5)) >= 0)) ^ (v5 + 27077))))(a1, a2, a3, 371891212);
}

uint64_t sub_1001AB2F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(*a1 + (v6 + v10)) = (v12 ^ v8) >> v9;
  v14 = v6 - 1 != (v13 ^ a6) + v11;
  return (*(v7 + 8 * (((4 * v14) | (16 * v14)) ^ v13)))();
}

uint64_t sub_1001AB37C@<X0>(int a1@<W0>, unsigned int a2@<W8>)
{
  v6 = ((v3 - 2245) ^ 0x2A73305E) + v2;
  v7 = v4 + (((a1 ^ 0xB6F807F0) + 1225259024) ^ ((a1 ^ 0xF89ACC8A) + 124072822) ^ ((a1 ^ 0xA7B70C6B) + 1481175957));
  v8 = v7 < a2;
  v9 = v6 < v7;
  if (v8 != v6 < a2)
  {
    v9 = v8;
  }

  return (*(v5 + 8 * ((1355 * v9) ^ v3)))();
}

uint64_t sub_1001AB460(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, __int16 a63)
{
  LODWORD(STACK[0x278]) = v70;
  LODWORD(STACK[0x3A8]) = a6;
  LODWORD(STACK[0x3AC]) = v69;
  LODWORD(STACK[0x2F0]) = a7;
  LODWORD(STACK[0x31C]) = a67;
  LOWORD(STACK[0x236]) = a66;
  LOWORD(STACK[0x292]) = v71;
  LODWORD(STACK[0x27C]) = a4;
  LOWORD(STACK[0x38E]) = a63;
  return (*(v73 + 8 * ((v72 + 2899) ^ v72 ^ (15665 * (v72 > 0xDDADCB0B)))))(a1, a69);
}

uint64_t sub_1001AB4D8()
{
  v3 = ((v1 - 518435981) ^ 0xFFFFFFFF1EE60EB0) + v0;
  v5 = v3 < 0x10 && ((v0 - 1) & 0xFu) >= (v3 & 0xF);
  return (*(v2 + 8 * ((v5 * ((5181 * (v1 ^ 0xA5DB)) ^ 0x8E47)) ^ v1)))();
}

void sub_1001AB580(_DWORD *a1)
{
  v1 = *a1 ^ (634647737 * ((2 * (a1 & 0x6A589895) - a1 + 363292522) ^ 0x78314896));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1001AB6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  v42 = STACK[0x2F8];
  v43 = (v42 ^ 0x43) & (2 * (v42 & v41)) ^ v42 & v41;
  v44 = ((2 * ((((v39 + 55) & 0x7A) + 47) ^ v42)) ^ 0x48) & ((((v39 + 55) & 0x7A) + 47) ^ v42) ^ (2 * ((((v39 + 55) & 0x7A) + 47) ^ v42)) & (((v39 + 119) & 0xEF) + 87);
  v45 = (LODWORD(STACK[0x2F8]) ^ (2 * ((((4 * (v44 ^ 0x24)) ^ 0x90) & (v44 ^ 0x24) ^ (4 * (v44 ^ 0x24)) & 0x20) & (16 * (v44 & (4 * v43) ^ v43)) ^ v44 & (4 * v43) ^ v43))) ^ 0x63u;
  v46 = STACK[0x308];
  v52 = ((((LODWORD(STACK[0x308]) ^ 0x35) + 88) ^ LODWORD(STACK[0x308]) ^ ((LODWORD(STACK[0x308]) ^ 0x69) + 12) ^ ((LODWORD(STACK[0x308]) ^ 0x1E) + 125)) ^ ((LODWORD(STACK[0x308]) ^ 0xDF) + 62)) & 0x7F ^ a5;
  v47 = LODWORD(STACK[0x2F8]) + LODWORD(STACK[0x2F4]) - v52 + 8 * v52 + 310961069 + v40 + 3 * ((LODWORD(STACK[0x30C]) + v41) % a8) + v45 - 749389813;
  v48 = (v47 ^ 0x34DFFDEB) & (2 * (v47 & 0xB91FF9E2)) ^ v47 & 0xB91FF9E2;
  v49 = ((2 * (v47 ^ 0x66D24DAB)) ^ 0xBF9B6892) & (v47 ^ 0x66D24DAB) ^ (2 * (v47 ^ 0x66D24DAB)) & 0xDFCDB448;
  v50 = ((v46 ^ 0xB2E9FCD0) + 1652966835) ^ v46 ^ ((v46 ^ 0x5E46A044) - 1909909209) ^ ((v46 ^ 0x3CC0E4F6) - 324051563) ^ ((v46 ^ 0xFFFFFEFF) + 797984670) ^ v47 ^ (2 * ((((4 * (v49 ^ 0x40449449)) ^ 0x7F36D120) & (v49 ^ 0x40449449) ^ (4 * (v49 ^ 0x40449449)) & 0x5FCDB440) & (16 * (v49 & (4 * v48) ^ v48)) ^ v49 & (4 * v48) ^ v48));
  return (*(a36 + 8 * ((11437 * (((LODWORD(STACK[0x310]) - LODWORD(STACK[0x314]) + LODWORD(STACK[0x31C]) + 917918565 + (((v50 ^ 0xE0DE367A) + 1551035641) ^ ((v50 ^ 0x37B4F20B) - 1961351030) ^ ((v50 ^ 0xF27F7B0E) + 1322492301))) & 1) == 0)) ^ v39)))(917918565, 2333616266, 797984670, &a39, a5, a6, v45, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_1001ABA00@<X0>(uint64_t a1@<X8>)
{
  v9 = v6 - 1;
  *(a1 + v9) ^= *(v1 + (v9 & 0xF)) ^ *((v9 & 0xF) + v2 + 1) ^ ((v9 & 0xF) * v7) ^ *((v9 & 0xF) + v3 + 3);
  v10 = ((v9 - v5) | (v5 - v9)) >= 0;
  return (*(v8 + 8 * ((v10 | (4 * v10)) ^ v4)))();
}

uint64_t sub_1001ABA60()
{
  v2 = STACK[0x3C0];
  *(v1 - 140) = LODWORD(STACK[0x3B8]) ^ 0x5BD7FC7F;
  *(v1 - 136) = LODWORD(STACK[0x3B0]) ^ 0xA1E7C667;
  *(v1 - 128) = LODWORD(STACK[0x3BC]) ^ 0xD9DE9881;
  *(v1 - 132) = (127 * (v2 ^ 0x8BE7) + 1822869913) ^ LODWORD(STACK[0x3B4]);
  return (*(v0 + 8 * v2))();
}

uint64_t sub_1001ABAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, char a31)
{
  *(v34 - 144) = &a28;
  *(v34 - 128) = &a31;
  *(v34 - 136) = v33 + 17902189 * ((v31 - 2 * (v31 & 0x7656A860) - 162092958) ^ 0x7819BE72) + 29521;
  v35 = (*(v32 + 8 * (v33 + 42008)))(v34 - 144);
  return (*(v32 + 8 * (((((a18 == a13) ^ (v33 - 39)) & 1) * (((v33 + 11542) | 0x303) - 22268)) ^ v33)))(v35);
}

uint64_t sub_1001ABCB8()
{
  v1 = STACK[0xB1F8] - 0x73411E761F177A21 + (((v0 ^ 0x938E1044D2C59D34) + 0x6C71EFBB2D3A62CCLL) ^ ((v0 ^ 0x8E9E491E96D62E80) + 0x7161B6E16929D180) ^ ((v0 ^ 0x1D10595AADC674A5) - 0x1D10595AADC674A5)) + 0x1D71E92A1;
  v2 = STACK[0xB1F0] - 0x267FCA6A369A5F2;
  v3 = v1 < 0xED48CB90;
  v4 = v1 > v2;
  if (v2 < 0xED48CB90 != v3)
  {
    v4 = v3;
  }

  return (*(STACK[0xF18] + 8 * ((121 * !v4) ^ (STACK[0xF10] - 11411))))();
}

uint64_t sub_1001ABE34@<X0>(int a1@<W4>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23)
{
  *(v27 - 176) = v23;
  *(v27 - 120) = v25 - 1269161111;
  v28 = *(a2 + (v25 - 1269161111));
  *(v27 - 136) = v25 - 1269161120;
  v29 = *(a2 + (v25 - 1269161120));
  *(v27 - 124) = v25 - 1269161118;
  v275 = BYTE4(a16) & 0xBF ^ 0xC4 ^ v28;
  v30 = (((v29 ^ 0x33) - 6) ^ ((v29 ^ 0xFFFFFF90) + 91) ^ ((v29 ^ 0x40) - 117)) - 79;
  v31 = v30 & 0x6A ^ 0x62;
  v32 = *(a18 + (v29 ^ 0x47));
  v33 = *(a2 + (v25 - 1269161118));
  v34 = (v30 ^ 0x24) & (2 * ((v30 ^ 0x24) & (2 * ((v30 ^ 0x24) & (2 * ((v30 ^ 0x24) & (2 * ((v31 & 0xFFFFFFFB | (4 * ((v31 >> 1) & 1))) ^ v30 & (2 * v31))) ^ v31)) ^ v31)) ^ v31)) ^ v31;
  LOBYTE(v30) = v30 ^ v29;
  *(v27 - 132) = v25 - 1269161123;
  LOBYTE(v29) = *(a19 + (v33 ^ 0xD6));
  LOBYTE(v30) = v30 ^ (2 * v34);
  LOBYTE(v34) = v29 & 0x33 ^ 0x57;
  v35 = *(a2 + (v25 - 1269161123));
  *(v27 - 128) = v25 - 1269161124;
  v36 = *(a20 + (v35 ^ 0x3A) - ((2 * v35) & 0x66666666 ^ 0x64u) + 51);
  v37 = *(a2 + (v25 - 1269161124));
  v38 = ((v25 + 87) ^ (7 - v25) ^ (((v25 + 87) ^ 1) + 1)) & 8;
  LOBYTE(v34) = v29 ^ (2 * ((v29 ^ 0x14) & (2 * ((v29 ^ 0x14) & (2 * ((v29 ^ 0x14) & (2 * ((v29 ^ 0x14) & (2 * (((2 * (((2 * v29) & 0x2A | 0x15) & v29)) ^ 0x26) & (v29 ^ 0x14) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34));
  LOBYTE(v29) = (((v37 ^ 0xAD) + 97) ^ ((v37 ^ 0xA6) + 108) ^ ((v37 ^ 0xB1) + 125)) + 11;
  v39 = ((v30 ^ 0x3C) - 85) ^ (105 - v30) ^ ((v30 ^ 0x4A) - 35);
  LOBYTE(v30) = v29 & 0xDE ^ 0x30;
  v40 = v32 - v39;
  v41 = 2 * ((2 * v30) ^ v30 ^ (2 * v30) & v29);
  v42 = 2 * ((2 * (v41 ^ v30 ^ v41 & v29)) ^ v30 ^ (2 * (v41 ^ v30 ^ v41 & v29)) & v29);
  v40 -= 115;
  LOBYTE(v29) = v29 ^ v37 ^ (2 * ((2 * (v42 ^ v30 ^ v42 & v29)) ^ v30 ^ (2 * (v42 ^ v30 ^ v42 & v29)) & v29));
  *(v27 - 156) = v25 - 1269161114;
  v43 = ((v36 ^ (4 * v36)) ^ 0xDB) << (v38 ^ 8) << v38;
  v44 = *(a18 + (v37 ^ 0x1E)) - (((v29 ^ 0x3A) + 45) ^ ((v29 ^ 0x54) + 67) ^ ((v29 ^ 0xA) + 29)) + 121;
  LOBYTE(v37) = v44 & 0x6E ^ 0x5F;
  v45 = *(a2 + (v25 - 1269161114));
  *(v27 - 140) = v25 - 1269161117;
  LOWORD(v45) = *(a19 + (v45 ^ 0x91));
  v46 = v45 & 0x3B ^ 0x53;
  LOWORD(v45) = v45 ^ (2 * ((v45 ^ 0x14) & (2 * ((v45 ^ 0x14) & (2 * ((v45 ^ 0x14) & (2 * ((v45 ^ 0x14) & (2 * (((2 * (((2 * v45) & 0x2A | 0x15) & v45)) ^ 0x2E) & (v45 ^ 0x14) ^ v46)) ^ v46)) ^ v46)) ^ v46)) ^ v46));
  LODWORD(v45) = (v45 | 0xFFFFFE0F) & ((*(a17 + (*(a2 + (v25 - 1269161117)) ^ 0x6DLL)) << 24) ^ 0xBAD8CA30) | v45 & 0xCF;
  *(v27 - 168) = v25 - 1269161119;
  v47 = *(a2 + (v25 - 1269161119));
  v48 = v47 ^ 0xE7 ^ -(v47 ^ 0xE7) ^ (51 - (v47 ^ 0xD4));
  LOBYTE(v48) = *(a20 + (((v48 ^ 0xFD724CCC) + 869071621) ^ ((v48 ^ 0x5D2454D2) - 1818565861) ^ ((v48 ^ 0xA056181E) + 1860743127)) + 826361962);
  *(v27 - 148) = v25 - 1269161115;
  LOBYTE(v46) = *(a20 + (*(a2 + (v25 - 1269161115)) ^ 0x8BLL)) ^ 0x7E;
  v49 = (v34 & 0xFE ^ 0xFFFFFFF9) & (((v48 ^ (4 * v48)) << 8) ^ 0x9112CA) | v34 & 0x35;
  *(v27 - 144) = v25 - 1269161116;
  v50 = (v45 ^ 0x84263580) & (((v46 ^ (4 * v46)) << 8) ^ 0xC4EEEAA8) ^ v45 & 0x3B000857;
  v51 = *(a2 + (v25 - 1269161116));
  LOBYTE(v48) = (((v51 ^ 0x77) + 51) ^ ((v51 ^ 0x83) - 57) ^ ((v51 ^ 0x2A) + 112)) + 2;
  LOBYTE(v46) = v48 & 0x85 ^ 0xD1;
  v52 = v49 ^ 0xF56ED;
  LOBYTE(v29) = (v44 ^ 0x70) & (2 * ((v44 ^ 0x70) & (2 * ((v44 ^ 0x70) & (2 * ((v44 ^ 0x70) & (2 * ((v44 ^ 0x70) & (2 * (v37 ^ v44 & 0x1E)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37;
  LOBYTE(v37) = v48 ^ v51 ^ (2 * ((v48 ^ 0x62) & (2 * ((v48 ^ 0x62) & (2 * ((v48 ^ 0x62) & (2 * ((v48 ^ 0x62) & (2 * ((v48 ^ 0x62) & (2 * (((2 * v48) & 0x46 ^ 0x66) & (v48 ^ 0x62) ^ v46)) ^ v46)) ^ v46)) ^ v46)) ^ v46)) ^ v46));
  LOBYTE(v29) = v44 ^ (2 * v29);
  v53 = *(a18 + (v51 ^ 0x7A)) - (((v37 ^ 0xD4) - 17) ^ ((v37 ^ 1) + 60) ^ ((v37 ^ 0x8E) - 75));
  LOBYTE(v33) = v53 - 127;
  LOBYTE(v30) = (v53 + 1) & 0xD7 | 0x20;
  v54 = v30 ^ (v53 - 127) & 0xC0;
  LODWORD(v29) = v43 ^ (v29 << 16);
  v55 = (v40 ^ (2 * ((v40 ^ 8) & (2 * ((v40 ^ 8) & (2 * ((v40 ^ 8) & (2 * (((2 * (((2 * (((2 * v40) & 0x16 | 9) & v40)) | 9) & v40)) ^ 0x6A) & (v40 ^ 8) ^ v40 & 0x63 ^ 0x7D)) ^ v40 & 0x63 ^ 0x7D)) ^ v40 & 0x63 ^ 0x7D)) ^ v40 & 0x63 ^ 0x7D)));
  *(v27 - 172) = v25 - 1269161121;
  *(v27 - 152) = v25 - 1269161125;
  v56 = *(a2 + (v25 - 1269161125));
  LOBYTE(v43) = (v33 ^ 0x56) & (2 * ((v33 ^ 0x56) & (2 * ((v33 ^ 0x56) & (2 * ((v33 ^ 0x56) & (2 * ((v33 ^ 0x56) & (2 * ((v33 ^ 0x56) & (2 * v30) ^ v54)) ^ v54)) ^ v54)) ^ v54)) ^ v54)) ^ v54;
  v57 = *(a17 + (*(a2 + (v25 - 1269161121)) ^ 0xBDLL));
  LODWORD(v37) = v55 << 16;
  LOBYTE(v49) = v33 ^ (2 * v43);
  *(v27 - 164) = v25 - 1269161112;
  v58 = *(a2 + (v25 - 1269161112));
  v59 = *(a17 + (v56 ^ 0xAD)) ^ 0xFFFFFFF9;
  v60 = ((v55 << 16) ^ 0xAFFFF) & v52;
  LODWORD(v56) = ((v55 << 16) ^ 0xFF1FFFFF) & (((v57 ^ 0x33333333) << 24) ^ 0x89300000);
  v61 = (v29 ^ 0xFF00FFFF) & ((v59 << 24) ^ 0x6D833267);
  v62 = (((v58 ^ 0xFFFFFFEF) + 94) ^ ((v58 ^ 0xFFFFFFC0) + 115) ^ ((v58 ^ 0xFFFFFFF6) + 69)) + 93;
  v63 = v62 & 0xFFFFFFA6 ^ 0x17;
  LODWORD(v29) = v61 | v29 & 0x7CCD98;
  v64 = v62 ^ v58 ^ (2 * ((v62 ^ 0x38) & (2 * ((v62 ^ 0x38) & (2 * ((v62 ^ 0x38) & (2 * ((v62 ^ 0x38) & (2 * ((v62 ^ 0x38) & (2 * ((v62 ^ 0x38) & 0x1E ^ v63)) ^ v63)) ^ v63)) ^ v63)) ^ v63)) ^ v63));
  *(v27 - 160) = v25 - 1269161122;
  LOBYTE(v62) = *(a19 + (*(a2 + (v25 - 1269161122)) ^ 0x54));
  LOBYTE(v63) = v62 & 0xAD ^ 0xC;
  LOBYTE(v62) = v62 ^ (2 * ((v62 ^ 0x14) & (2 * ((v62 ^ 0x14) & (2 * ((v62 ^ 0x14) & (2 * ((v62 ^ 0x14) & (2 * ((v62 ^ 0x14) & (2 * (((2 * v62) & 0x2A | 0x15) & v62)) ^ v63)) ^ v63)) ^ v63)) ^ v63)) ^ v63));
  LODWORD(v58) = *(a18 + (v58 ^ 0x7D)) - (((v64 ^ 0x73) - 102) ^ ((v64 ^ 0x43) - 86) ^ ((v64 ^ 0x4F) - 90));
  v65 = v58 - 105;
  LODWORD(v58) = ((v58 + 23) & 0xFFFFFFF5 | 8) ^ (v58 - 105) & 0xFFFFFFF0;
  v66 = (v65 ^ 0x74) & (2 * ((v65 ^ 0x74) & (2 * ((v65 ^ 0x74) & (2 * ((v65 ^ 0x74) & (2 * ((v65 ^ 0x74) & (2 * ((v65 ^ 0x74) & (2 * v58) ^ v58)) ^ v58)) ^ v58)) ^ v58)) ^ v58)) ^ v58;
  LODWORD(v56) = v56 & 0xFF3FFFFF | (v55 >> 6 << 22);
  LOBYTE(v55) = *(a20 + v275) ^ 0xB4;
  LODWORD(v58) = v62 ^ *(v27 - 176);
  *(v27 - 176) = v25 - 1269161110;
  LODWORD(v58) = v58 ^ v29;
  v273 = *(a2 + (v25 - 1269161110));
  LODWORD(v29) = (*(a19 + (v273 ^ 0x1B)) - 107) << 8;
  v67 = (((v55 ^ (4 * v55)) << 16) ^ 0x553C99CF) & ~v29 | v29 & 0x66666666;
  LODWORD(v29) = (v49 << 16) ^ 0x49D16698;
  v68 = *(a17 + (*(a2 + (v25 - 1269161113)) ^ 0x7BLL));
  v69 = (__PAIR64__(v37 & 0x10000 ^ a1 ^ v60, v56 ^ a1) >> 20) ^ 0xAAF6923C;
  HIDWORD(v71) = (v68 & 0xDC | (v68 ^ 0xFFFFFFE0) & (v67 ^ 0x86CD95EC)) ^ 0x30C0FDE9 ^ (((v66 << 25) ^ (v65 << 24) ^ (v24 << 8) ^ 0x1F820034) & (HIBYTE(v24) ^ 0xFFFFFF3C) | HIBYTE(v24) & 0xCB);
  LODWORD(v71) = HIDWORD(v71);
  v70 = v71 >> 8;
  HIDWORD(v71) = v69;
  LODWORD(v71) = v69;
  v72 = v71 >> 12;
  HIDWORD(v71) = v50 ^ 0x9711D924 ^ v26;
  LODWORD(v71) = v50 & 0xB60E9960 ^ v26 ^ v29 & (v50 ^ 0x9711D924);
  v73 = *(&off_1010A0B50 + a16) - 2044272707;
  HIDWORD(v71) = (v71 >> 3) ^ 0xE6ADA0ED;
  LODWORD(v71) = HIDWORD(v71);
  v74 = v71 >> 29;
  v75 = *&v73[4 * (BYTE3(v58) ^ 0xB7)];
  LOBYTE(v68) = v74 ^ 0x42;
  v76 = *(&off_1010A0B50 + SHIDWORD(a15)) - 1236351647;
  v77 = *&v76[4 * (BYTE2(v72) ^ 0x42)] - 1915782400;
  v78 = *(&off_1010A0B50 + a15) - 1400133350;
  v79 = *(&off_1010A0B50 + SHIDWORD(a14)) - 1771856747;
  v80 = *&v76[4 * (BYTE2(v74) ^ 0x8F)];
  v81 = ((((v75 ^ 0x1F65D37A) - (v75 ^ 0x3E834803)) ^ 0xFFFFFFFE) + (v75 ^ 0x1F65D37A)) ^ v77 ^ *&v78[4 * (((v74 ^ 0x1042) >> 8) ^ 0xF3)] ^ (4 * v77 * v77) ^ (*&v79[4 * (v70 ^ 0xEB)] - 271808946) ^ (((v74 ^ 0x1042) >> 8) - 1239558833);
  LODWORD(v29) = (v80 ^ 0x8852B875) & (2 * (v80 & 0xCD12BC75)) ^ v80 & 0xCD12BC75;
  v82 = ((2 * (v80 ^ 0x57D8FF)) ^ 0x9A8AC914) & (v80 ^ 0x57D8FF) ^ (2 * (v80 ^ 0x57D8FF)) & 0xCD45648A;
  LODWORD(v29) = (v82 ^ 0x8004000) & (4 * v29) ^ v29;
  v83 = ((4 * (v82 ^ 0x4545248A)) ^ 0x35159228) & (v82 ^ 0x4545248A) ^ (4 * (v82 ^ 0x4545248A)) & 0xCD456488;
  LODWORD(v29) = v29 ^ 0xCD45648A ^ (v83 ^ 0x5050000) & (16 * v29);
  v84 = (16 * (v83 ^ 0xC8406482)) & 0xCD456480 ^ 0x901240A ^ ((16 * (v83 ^ 0xC8406482)) ^ 0xD45648A0) & (v83 ^ 0xC8406482);
  LODWORD(v29) = (v29 << 8) & 0xCD456400 ^ v29 ^ ((v29 << 8) ^ 0x45648A00) & v84;
  v85 = ((v29 << 16) ^ 0x648A0000) & ((v84 << 8) & 0x4D450000 ^ 0x8010000 ^ ((v84 << 8) ^ 0x45640000) & v84);
  v86 = v70 ^ 0x42F35F6A;
  v87 = ((v70 ^ 0x5F6A) >> 8);
  v88 = (v87 ^ 0xB61DD54F) + ((v86 >> 7) & 0x9E);
  v89 = *&v78[4 * (v87 ^ 0xF3)] ^ *&v73[4 * (HIBYTE(v72) ^ 0x2A)] ^ (*&v79[4 * (v58 ^ 0x99)] - 271808946);
  v90 = *&v76[4 * BYTE2(v86)] - 1915782400;
  v91 = v90 ^ *&v78[4 * (BYTE1(v58) ^ 0xED)] ^ *&v73[4 * (HIBYTE(v74) ^ 0x74)] ^ (4 * v90 * v90) ^ (*&v79[4 * (v72 ^ 0xF4)] - 271808946) ^ ((BYTE1(v58) ^ 0x1E) - 1239558833);
  LODWORD(v58) = *&v76[4 * (BYTE2(v58) ^ 0x63)] - 1915782400;
  LODWORD(v58) = v58 ^ *&v73[4 * HIBYTE(v86)] ^ *&v78[4 * (BYTE1(v72) ^ 0x1D)] ^ (4 * v58 * v58) ^ ((BYTE1(v72) ^ 0xEE) - 1239558833) ^ 0x8B353D12;
  LODWORD(v58) = ((271808946 - *&v79[4 * v68]) ^ (*&v79[4 * v68] + 288820490 + (~(2 * (*&v79[4 * v68] - 271808946)) | 0xBD2AF289)) ^ (v58 - (v58 ^ (*&v79[4 * v68] - 271808946))) ^ 0x216A86BB) + v58;
  LODWORD(v33) = *&v78[4 * (BYTE1(v91) ^ 0xA0)];
  v92 = (BYTE1(v91) ^ 0x53) - 1239558833;
  v93 = *&v73[4 * (HIBYTE(v81) ^ 0x1E)] ^ v33 & 0x5626B81D;
  v94 = (*&v79[4 * (v58 ^ 0x11)] - 271808946) ^ v92 & 0x1604901D ^ (((2 * (v92 & 0xA01947E2 & (v33 ^ 0x20190040) ^ v92 & 0x4140)) ^ 0xFFEDF7FF) + (v33 & 0xA9D947E2 ^ 0xA1904500) + (v92 & 0xA01947E2) + 1);
  v95 = *&v79[4 * (v81 ^ 0xA6)];
  LODWORD(v33) = (v95 ^ 0x8646C301) & (2 * (v95 & 0xA8888348)) ^ v95 & 0xA8888348;
  v96 = ((2 * (v95 ^ 0xD747C191)) ^ 0xFF9E85B2) & (v95 ^ 0xD747C191) ^ (2 * (v95 ^ 0xD747C191)) & 0x7FCF42D8;
  v97 = (v80 ^ (2 * ((v29 << 16) & 0x4D450000 ^ v29 ^ v85)) ^ 0x95ACCBEA) + ((2 * (((v80 ^ 0x119904CA) + 1552660671) ^ v80 ^ ((v80 ^ 0x522EFDC3) + 524042680) ^ ((v80 ^ 0x6A54477) + 1270347780) ^ ((v80 ^ 0x77FFFEF5) + 988627586))) & 0x81797D16 ^ 0x1580516);
  LODWORD(v29) = (v96 ^ 0x66060000) & (4 * v33) ^ v33;
  LODWORD(v33) = ((4 * (v96 ^ 0x414249)) ^ 0xFF3D0B64) & (v96 ^ 0x414249) ^ (4 * (v96 ^ 0x414249)) & 0x7FCF42D8;
  LODWORD(v29) = (v33 ^ 0x7F0D0240) & (16 * v29) ^ v29;
  LODWORD(v33) = ((16 * (v33 ^ 0xC24099)) ^ 0xFCF42D90) & (v33 ^ 0xC24099) ^ (16 * (v33 ^ 0xC24099)) & 0x7FCF42D0;
  LODWORD(v29) = v29 ^ 0x7FCF42D9 ^ (v33 ^ 0x7CC40000) & (v29 << 8);
  v98 = v89 ^ v97 ^ (4 * v97 * v97) ^ v88;
  LODWORD(v29) = (((4 * ((v29 << 16) & 0xFF9FFFFF ^ v29 ^ ((v29 << 16) ^ 0x2800000) & (((v33 ^ 0x30B4249) << 8) & 0x3FCF0000 ^ 0x20800000 ^ (((v33 ^ 0x30B4249) << 8) ^ 0xF420000) & (v33 ^ 0x30B4249)))) ^ (2 * v95)) & 0x8E88060C ^ 0x84080404) + (v95 ^ ((v95 ^ 0xDB66E1F2) + 1945002678) ^ ((v95 ^ 0xC50D2A45) + 1837476099) ^ ((v95 ^ 0xBEEB58F8) + 375643072) ^ ((v95 ^ 0xF7F7EFF7) + 1602186417) ^ 0x10337FBE);
  v99 = *&v76[4 * (BYTE2(v91) ^ 0x1A)] - 1915782400;
  LODWORD(v33) = *&v78[4 * (BYTE1(v58) ^ 0x49)] ^ v99 ^ *&v73[4 * (HIBYTE(v98) ^ 0xAF)] ^ (4 * v99 * v99);
  v100 = ((BYTE1(v58) ^ 0xBA) - 1239558833) ^ v29;
  LODWORD(v29) = *&v76[4 * (BYTE2(v98) ^ 0xDF)] - 1915782400;
  LODWORD(v29) = v29 ^ v93 ^ (4 * v29 * v29);
  v101 = v33 ^ v100;
  v102 = *&v76[4 * (BYTE2(v58) ^ 0xF6)] - 1915782400;
  v103 = *&v78[4 * (BYTE1(v81) ^ 5)] ^ *&v73[4 * (HIBYTE(v91) ^ 0xDA)] ^ v102 ^ (4 * v102 * v102) ^ ((BYTE1(v81) ^ 0xF6) - 1239558833) ^ (*&v79[4 * (v98 ^ 0xD5)] - 271808946);
  v104 = *&v76[4 * (BYTE2(v81) ^ 0xFE)] - 1915782400;
  v105 = *&v73[4 * (BYTE3(v58) ^ 0xBE)] ^ v104 ^ (4 * v104 * v104) ^ (*&v79[4 * (v91 ^ 0x82)] - 271808946) ^ ((BYTE1(v98) ^ 0xE5) - 1239558833) ^ *&v78[4 * (BYTE1(v98) ^ 0x16)];
  v106 = v29 ^ v94;
  v107 = *&v76[4 * (BYTE2(v101) ^ 0x8F)] - 1915782400;
  LODWORD(v33) = ((v103 ^ 0x9BB5) >> 8);
  LODWORD(v29) = v107 ^ *&v78[4 * (v33 ^ 0xF3)] ^ *&v73[4 * (((v29 ^ v94) >> 24) ^ 0xD0)] ^ (4 * v107 * v107);
  v108 = *&v76[4 * (BYTE2(v103) ^ 0xBC)];
  v109 = (v108 - 1915782400) ^ *&v73[4 * (HIBYTE(v101) ^ 0xCB)] ^ (4 * (v108 - 1915782400) * (v108 - 1915782400)) ^ *&v78[4 * (BYTE1(v105) ^ 0xE9)] ^ (*&v79[4 * (v106 ^ 0xE2)] - 271808946) ^ ((BYTE1(v105) ^ 0x1A) - 1239558833);
  v110 = ((v106 ^ 0x68E2) >> 8);
  v111 = *&v76[4 * (BYTE2(v105) ^ 0x8D) + 880 + 4 * ((v105 >> 15) & 0x1B6 ^ 0xFFFFFEED)] - 1915782400;
  v112 = v29 ^ (*&v79[4 * (v105 ^ 2)] - 271808946) ^ (v33 - 1239558833);
  v113 = *&v76[4 * (BYTE2(v106) ^ 0xE9)] - 1915782400;
  v274 = *(v27 - 116) < 0x6158307Fu;
  v114 = v111 ^ *&v73[4 * ((v103 ^ 0x4679BB5u) >> 24)] ^ *&v78[4 * (v110 ^ 0xF3)] ^ (4 * v111 * v111) ^ (*&v79[4 * (v101 ^ 0x83)] - 271808946) ^ (v110 - 1239558833);
  LODWORD(v29) = *&v73[4 * (HIBYTE(v105) ^ 0x24)] ^ *&v78[4 * (BYTE1(v101) ^ 0x3D)] ^ v113 ^ (4 * v113 * v113) ^ (*&v79[4 * (v103 ^ 0xB5)] - 271808946) ^ ((BYTE1(v101) ^ 0xCE) - 1239558833) ^ 0x8B353D12;
  v115 = v114 ^ 0x3ABE85D9;
  v116 = v29 - ((2 * v29) & 0x1E949F8);
  v117 = ((v114 ^ 0x3ABE85D9) >> 16);
  if (v117 >= 0x9C)
  {
    v117 = ((v114 ^ 0x3ABE85D9) >> 16) - 156;
  }

  v118 = *&v76[4 * (BYTE2(v109) ^ 0xF0)] - 1915782400;
  v119 = v118 ^ *&v73[4 * (HIBYTE(v112) ^ 0xFB)] ^ *&v78[4 * (BYTE1(v115) ^ 0xF3)] ^ (4 * v118 * v118) ^ (BYTE1(v115) - 1239558833);
  v120 = HIWORD(v115) + 100;
  if (BYTE2(v115) < 0x9Cu)
  {
    LOBYTE(v120) = (v114 ^ 0x3ABE85D9) >> 16;
  }

  v121 = v117 == 0;
  v122 = v116 - 2131450628;
  v123 = v119 ^ (*&v79[4 * ((v116 - 4) ^ 0x81)] - 271808946);
  if (v121)
  {
    v124 = v120;
  }

  else
  {
    v124 = 0;
  }

  v125 = BYTE1(v109) ^ 0x18;
  v126 = *&v76[4 * ((BYTE2(v115) - v124) ^ 0xDB)] - 1915782400;
  v127 = v112 ^ 0xF556D0EF;
  v128 = (*&v79[4 * (v112 ^ 0xEF)] - 271808946) ^ (BYTE1(v122) - 1239558833);
  v129 = *&v76[4 * (BYTE2(v122) ^ 0xDB)] - 1915782400;
  v130 = *&v78[4 * (BYTE1(v127) ^ 0xF3)] ^ (*&v79[4 * (v109 ^ 0xD8)] - 271808946);
  v131 = *&v78[4 * (BYTE1(v122) ^ 0xF3)] ^ *&v73[4 * ((v109 ^ 0x252B1859u) >> 24)] ^ v126 ^ (4 * v126 * v126) ^ v128;
  v132 = v129 ^ *&v73[4 * (HIBYTE(v114) ^ 0x34)] ^ (4 * v129 * v129) ^ v130 ^ (BYTE1(v127) - 1239558833);
  v133 = *&v79[4 * (v114 ^ 0xD9)];
  v134 = *&v73[4 * (HIBYTE(v122) ^ 0xE)] ^ (*&v76[4 * BYTE2(v127)] - 1915782400) ^ *&v78[4 * (v125 ^ 0xF3)] ^ (4 * (*&v76[4 * BYTE2(v127)] - 1915782400) * (*&v76[4 * BYTE2(v127)] - 1915782400)) ^ (v125 - 1239558833) ^ 0x8B353D12;
  v135 = v133 + v134 - 2 * (v134 & (v133 + 1875674702));
  v136 = *&v76[4 * (BYTE2(v131) ^ 0xA)] - 1915782400;
  LOWORD(v129) = v135 - 31154;
  v137 = *&v76[4 * ((v132 ^ 0x7B46408Bu) >> 16)] - 1915782400;
  v138 = *&v73[4 * (HIBYTE(v123) ^ 0x6A)] ^ *&v78[4 * (((v132 ^ 0x408B) >> 8) ^ 0xF3)] ^ (((v132 ^ 0x408B) >> 8) - 1239558833) ^ 0x465F7276 ^ ((v136 & 0xA16D5DAA ^ 0xF0395F97 ^ (4 * v136 * v136) & 0xA16D5DA8) & ~((4 * v136 * v136) & 0x5E92A254 ^ v136 & 0x5E92A255) | ((4 * v136 * v136) & 0x5E92A254 ^ v136 & 0x5E92A255) & 0xE82A040);
  v139 = *&v73[4 * ((v131 ^ 0x5AD1C3E6u) >> 24)] ^ *&v78[4 * (BYTE1(v129) ^ 0x11)] ^ v137 ^ (4 * v137 * v137) ^ (*&v79[4 * (v123 ^ 0xB)] - 271808946) ^ ((BYTE1(v129) ^ 0xE2) - 1239558833) ^ 0x5348B398;
  v140 = *&v76[4 * (BYTE2(v123) ^ 0xD3)] - 1915782400;
  v141 = *&v73[4 * (((v135 - 271808946) >> 24) ^ 0xE0)] ^ (((v131 ^ 0xC3E6) >> 8) - 1239558833) ^ *&v78[4 * (((v131 ^ 0xC3E6) >> 8) ^ 0xF3)] ^ v140 ^ (4 * v140 * v140) ^ (*&v79[4 * (v132 ^ 0xA)] - 271808946);
  v142 = *&v76[4 * (((v135 - 271808946) >> 16) ^ 0x40)] - 1915782400;
  v143 = ((BYTE1(v123) ^ 0xDD) - 1239558833) ^ *&v73[4 * ((v132 ^ 0x7B46408Bu) >> 24)] ^ v142 ^ *&v78[4 * (BYTE1(v123) ^ 0x2E)] ^ (4 * v142 * v142) ^ (*&v79[4 * (v131 ^ 0x67)] - 271808946) ^ 0x3D27F526;
  v144 = ((v138 & 0xF7742215 ^ 0x6DB1EC3F) & (v138 & 0x88BDDEA ^ 0xF7F6FEDD) | v138 & 0xA11C0) ^ (*&v79[4 * (v129 ^ 0xC3)] - 271808946);
  v145 = *&v76[4 * BYTE2(v139)] - 1915782400;
  v146 = v141 ^ 0x43A02C43;
  v147 = *&v76[4 * BYTE2(v143)] - 1915782400;
  v148 = *&v79[4 * v139];
  v149 = (v148 ^ 0xAA424A22) & (2 * (v148 & 0xA8888348)) ^ v148 & 0xA8888348;
  v150 = ((2 * (v148 ^ 0xAB5248B2)) ^ 0x7B597F4) & (v148 ^ 0xAB5248B2) ^ (2 * (v148 ^ 0xAB5248B2)) & 0x3DACBFA;
  v151 = *&v78[4 * (BYTE1(v146) ^ 0xF3)] ^ *&v73[4 * HIBYTE(v139)] ^ v147 ^ (4 * v147 * v147) ^ (BYTE1(v146) - 1239558833) ^ (*&v79[4 * (v144 ^ 0xB7)] - 271808946);
  v152 = *&v78[4 * (BYTE1(v143) ^ 0xF3)] ^ v145 ^ (BYTE1(v143) - 1239558833) ^ *&v73[4 * ((v144 ^ 0xCF66B7B7) >> 24)] ^ (4 * v145 * v145) ^ (*&v79[4 * (v141 ^ 0x43)] - 271808946);
  v153 = ((4 * (v150 ^ 0x4A480A)) ^ 0xF6B2FE8) & (v150 ^ 0x4A480A) ^ (4 * (v150 ^ 0x4A480A)) & 0x3DACBF8;
  v154 = (v153 ^ 0x34A0BE0) & (16 * ((v150 ^ 0x2000360) & (4 * v149) ^ v149)) ^ (v150 ^ 0x2000360) & (4 * v149) ^ v149;
  v155 = ((16 * (v153 ^ 0x90C012)) ^ 0x3DACBFA0) & (v153 ^ 0x90C012) ^ (16 * (v153 ^ 0x90C012)) & 0x3DACBE0;
  v156 = v154 ^ 0x3DACBFA ^ (v155 ^ 0x1888B00) & (v154 << 8);
  v157 = *&v76[4 * (BYTE2(v141) ^ 0x7B)] - 1915782400;
  v158 = *&v76[4 * (BYTE2(v144) ^ 0xBD)];
  v159 = (v156 << 16) & 0x3DA0000 ^ v156 ^ ((v156 << 16) ^ 0x4BFA0000) & (((v155 ^ 0x252405A) << 8) & 0x3DA0000 ^ 0x1100000 ^ (((v155 ^ 0x252405A) << 8) ^ 0x5ACB0000) & (v155 ^ 0x252405A));
  v160 = BYTE1(v139);
  v161 = *&v78[4 * (v160 ^ 0xF3)] ^ *&v73[4 * HIBYTE(v146)] ^ (4 * (v158 - 1915782400) * (v158 - 1915782400)) ^ (v158 - 2 * ((v158 - 1915782400) & 0x6C30E03D ^ v158 & 0x14) - 100639959);
  v162 = (v148 ^ (2 * v159) ^ 0xEFCD17BA) + ((2 * (((v148 ^ 0x10931DD7) + 941334161) ^ v148 ^ ((v148 ^ 0x10B5AE7D) + 943533371) ^ ((v148 ^ 0x8AC80CD) + 539231115) ^ ((v148 ^ 0x5FFD4FDF) + 2004208793))) & 0x8E88060C ^ 0x8E880000);
  v163 = *&v79[4 * v143] - 271808946;
  v164 = (v160 - 1239558833) ^ 0xE705DD3B ^ v161;
  if ((v161 & v163 & 0x800000) != 0)
  {
    v165 = -(v163 & 0x800000);
  }

  else
  {
    v165 = v163 & 0x800000;
  }

  v166 = v165 + v164;
  v167 = *&v73[4 * HIBYTE(v143)] ^ v157 ^ (((v144 ^ 0xB7B7) >> 8) - 1239558833) ^ *&v78[4 * (((v144 ^ 0xB7B7) >> 8) ^ 0xF3)] ^ (4 * v157 * v157) ^ v162;
  v168 = v166 ^ v163 & 0xFF7FFFFF;
  v169 = v152 ^ 0xD9B466D3;
  v170 = v151 ^ 0xD37E;
  v171 = *&v76[4 * (((v151 ^ 0x910ED37E) >> 16) ^ 0xDB)] - 1915782400;
  v172 = (((v167 ^ 0x206D) >> 8) - ((2 * ((v167 ^ 0x206D) >> 8) + 670) & 0x22222222) + 61579872) ^ *&v78[4 * (((v167 ^ 0x206D) >> 8) ^ 0xF3)];
  v173 = v171 ^ *&v73[4 * ((v152 ^ 0xD9B466D3) >> 24)] ^ (4 * v171 * v171) ^ 0x3E834803;
  v174 = v168 ^ 0x6A673788;
  v175 = *&v76[4 * ((v167 ^ 0xB7DB206D) >> 16)] - 1915782400;
  v176 = *&v73[4 * (HIBYTE(v151) ^ 0x9F)] ^ v175 ^ (4 * v175 * v175);
  v177 = ((-v173 ^ (v173 - ((2 * v173) & 0xD17632C0) - 390391456) ^ 0xE8BB1960 ^ (v172 - (v173 ^ v172))) + v172) ^ (*&v79[4 * (v168 ^ 9)] - 271808946);
  v178 = *&v76[4 * (BYTE2(v168) ^ 0xBC)] - 1915782400;
  v179 = v178 ^ (4 * v178 * v178);
  v180 = *&v73[4 * ((v167 ^ 0xB7DB206D) >> 24)];
  v181 = v180 & 0x200000;
  if ((v179 & v180 & 0x200000) != 0)
  {
    v181 = -v181;
  }

  v182 = (*&v79[4 * (v152 ^ 0x52)] - 271808946) ^ __ROR4__(__ROR4__(__ROR4__(__ROR4__(v176 ^ *&v78[4 * (BYTE1(v174) ^ 0xF3)] ^ (BYTE1(v174) - 1239558833) ^ 0x464C8686, 16) ^ 0xC28D8ACA, 26) ^ 0xE661DD7E, 6) ^ 0xE9ED8EFD, 16);
  v183 = (BYTE1(v169) - 1239558833) ^ *&v78[4 * (BYTE1(v169) ^ 0xF3)] ^ (*&v79[4 * v170] - 271808946) ^ v180 & 0xFFDFFFFF ^ 0xB11F3402 ^ (v181 + v179);
  v184 = *&v76[4 * BYTE2(v169)] - 1915782400;
  v185 = v184 ^ (HIBYTE(v170) - 1239558833) ^ *&v73[4 * HIBYTE(v174)] ^ (4 * v184 * v184) ^ *&v78[4 * (HIBYTE(v170) ^ 0xF3)] ^ (*&v79[4 * (v167 ^ 0xEC)] - 271808946);
  v186 = *&v76[4 * (BYTE2(v182) ^ 0x38)] - 1915782400;
  v187 = 4 * v186 * v186;
  v188 = v187 & v186;
  v189 = v187 + v186;
  v190 = (v183 >> 8) ^ 0x7D;
  if (v273 == 36)
  {
    LOBYTE(v190) = -126;
  }

  v191 = *&v78[4 * ((v183 >> 8) & 0x7D ^ 0xF3 ^ (v190 & BYTE1(v183)))] ^ *&v73[4 * (HIBYTE(v177) ^ 0x12)] ^ (*&v79[4 * (v185 ^ 0xAD)] - 271808946) ^ (BYTE1(v183) - 1239558833) ^ (v189 - 2 * v188);
  v192 = *&v76[4 * ((BYTE2(v183) - (BYTE2(v183) ^ 0xDB)) ^ 0xFFFFFFFE) + 4 * BYTE2(v183)] - 1915782400;
  v193 = v185 ^ 0x45BF382C;
  v194 = ~BYTE2(v177);
  v195 = v192 ^ *&v78[4 * (((v185 ^ 0x382C) >> 8) ^ 0xF3)] ^ (((v185 ^ 0x382C) >> 8) - 1239558833) ^ *&v73[4 * (HIBYTE(v182) ^ 0xD6)] ^ (4 * v192 * v192) ^ (*&v79[4 * (v177 ^ 0x82)] - 271808946);
  v196 = *&v76[4 * (BYTE2(v185) ^ 0x64)] - 1915782400;
  v197 = *&v78[4 * (((v177 ^ 0xFA82) >> 8) ^ 0xF3)] ^ *&v73[4 * HIBYTE(v183)] ^ (*&v79[4 * (v182 ^ 0x25)] - 271808946) ^ __ROR4__(__ROR4__(v196 ^ (4 * v196 * v196) ^ 0x3E44C73E, 17) ^ 0x6249EA61, 15) ^ (((v177 ^ 0xFA82) >> 8) - 1239558833);
  v198 = *&v76[4 * v194] - 1915782400;
  v199 = ((BYTE1(v182) ^ 0x44) - 1239558833) ^ *&v73[4 * HIBYTE(v193)] ^ v198 ^ (4 * v198 * v198);
  v200 = *&v79[4 * v183] - 271808946;
  v201 = v199 ^ 0x8B353D12 ^ *&v78[4 * (BYTE1(v182) ^ 0xB7)];
  v202 = v201 + v200 - 2 * (v201 & v200);
  v203 = ((((v191 ^ 0x92CD4B7F) >> (BYTE2(v122) & 8)) - ((2 * ((v191 ^ 0x92CD4B7F) >> (BYTE2(v122) & 8))) & 0x317CA348) - 1732357724) ^ 0x98BE51A4) >> (BYTE2(v122) & 8 ^ 8);
  v204 = *&v76[4 * (BYTE2(v195) ^ 9)] - 1915782400;
  v205 = *&v76[4 * ((v197 ^ 0xD4626E8A) >> 16)] - 1915782400;
  v206 = v204 ^ *&v78[4 * (((v197 ^ 0x6E8A) >> 8) ^ 0xF3)] ^ *&v73[4 * (HIBYTE(v191) ^ 0x9C)] ^ (4 * v204 * v204) ^ (*&v79[4 * (v202 ^ 0xAD)] - 271808946) ^ (((v197 ^ 0x6E8A) >> 8) - 1239558833);
  v207 = *&v73[4 * ((v195 ^ 0x9AD25F91) >> 24)] ^ v205 ^ (4 * v205 * v205) ^ *&v78[4 * (BYTE1(v202) ^ 0x9D)] ^ (*&v79[4 * (v191 ^ 0xFE)] - 271808946) ^ ((BYTE1(v202) ^ 0x6E) - 1239558833);
  v208 = *&v76[4 * (BYTE2(v191) ^ 0x16)];
  v209 = *&v76[4 * (BYTE2(v202) ^ 0x9C)] - 1915782400;
  v210 = *&v73[4 * ((v197 ^ 0xD4626E8A) >> 24)] ^ v209 ^ (v203 - 1239558833) ^ *&v78[4 * (v203 ^ 0xF3)] ^ (4 * v209 * v209);
  v211 = (((v195 ^ 0x5F91) >> 8) - 1239558833) ^ *&v73[4 * (HIBYTE(v202) ^ 0xE5)] ^ *&v78[4 * (((v195 ^ 0x5F91) >> 8) ^ 0xF3)] ^ (v208 - 1915782400) ^ (4 * (v208 - 1915782400) * (v208 - 1915782400)) ^ (*&v79[4 * (v197 ^ 0xB)] - 271808946) ^ 0xA3FC4AAA;
  v212 = HIBYTE(v207);
  v213 = v210 ^ (*&v79[4 * (v195 ^ 0x10)] - 271808946);
  LODWORD(v215) = __ROR4__(v211, 3) ^ 0xC0CC0288;
  HIDWORD(v215) = v215;
  v214 = v215 >> 29;
  v216 = *(&off_1010A0B50 + a14) - 864296119;
  v217 = *&v216[4 * (HIBYTE(v206) ^ 0xCB)];
  v218 = *&v216[4 * (HIBYTE(v207) ^ 0x44)];
  v219 = *&v216[4 * (HIBYTE(v213) ^ 0x6F)];
  v220 = HIBYTE(v214);
  v221 = *&v216[4 * (HIBYTE(v214) ^ 0xB1)];
  v222 = *(&off_1010A0B50 + SHIDWORD(a13)) - 850109342;
  v223 = *&v222[4 * (BYTE2(v207) ^ 0xFA)];
  v224 = *&v222[4 * (BYTE2(v213) ^ 0x37)];
  v225 = v207;
  v226 = *&v222[4 * (((v214 ^ 0xCF9A9064) >> (v213 & 0x10) >> (v213 & 0x10 ^ 0x10)) ^ 0xB1)];
  v227 = *&v222[4 * (BYTE2(v206) ^ 0xDA)];
  v228 = HIBYTE(v213) ^ v207 ^ v219 ^ v226 ^ (16 * v226);
  v229 = *(&off_1010A0B50 + a13) - 66034002;
  v230 = *&v229[4 * (BYTE1(v213) ^ 0x88)];
  v231 = *&v229[4 * (BYTE1(v206) ^ 0xBA)];
  v232 = *&v229[4 * (BYTE1(v214) ^ 0x83)];
  v233 = *&v229[4 * (BYTE1(v207) ^ 0xE3)];
  v234 = *(&off_1010A0B50 + SHIDWORD(a12)) - 1626125399;
  LODWORD(v229) = *&v234[4 * (v206 ^ 0xA)];
  v235 = v231 + 1513144955;
  v236 = (v215 >> 29);
  v237 = *&v234[4 * (v225 ^ 0xAE)] ^ (v231 + 1513144955);
  v238 = *&v234[4 * (v236 ^ 0x5B)];
  v239 = v228 ^ v237;
  v240 = v213;
  v241 = *&v234[4 * (v213 ^ 0xBC)];
  v242 = v239 ^ (v235 >> 1) ^ (v235 >> 4);
  v243 = v242 ^ 0xC4AA03DD;
  v244 = *(&off_1010A0B50 + a12) - 1920787419;
  v245 = v244[v242 ^ 0x4BLL];
  v246 = (((v245 ^ 0xFFFFFF9C) - (v245 ^ 0x5B)) ^ 0xFFFFFFFE) + (v245 ^ 0xFFFFFF9C);
  *(a9 + *(v27 - 156)) = v246 ^ (v246 >> 1) & 0x3C ^ 0x22;
  v247 = v206 & 4;
  v121 = (v229 & v206 & 4) == 0;
  v248 = v229 ^ 0x20A6ED60;
  if (!v121)
  {
    v247 = -v247;
  }

  v249 = ((v232 + 1513144955) >> 4) ^ ((v232 + 1513144955) >> 1);
  v250 = v206 & 0xFB ^ v212 ^ v218 ^ v224 ^ (16 * v224) ^ (v247 + v248) ^ (v249 + v232 + 1513144955 - 2 * (v249 & (v232 + 1513144955)));
  v251 = *(&off_1010A0B50 + SHIDWORD(a11)) - 1009031086;
  v252 = v251[((v250 ^ 0xD62C) >> 8) ^ 0x80];
  *(a9 + *(v27 - 168)) = v252 ^ 0xAB ^ (v252 >> 3) ^ ((((v252 ^ 0xFFFFFFAB) & 0x80) != 0) | 0xE8) ^ 0xF6;
  v253 = *(&off_1010A0B50 + a11) - 597675526;
  *(a9 + *(v27 - 136)) = (v253[((v250 ^ 0x79EDD62C) >> 16) ^ 0x17] - 16) ^ 0x73;
  v254 = HIBYTE(v206) ^ v217 ^ v223 ^ (16 * v223);
  v255 = v220 ^ v240 ^ v227 ^ v221 ^ (16 * v227) ^ v241 ^ (v233 + 1513144955) ^ ((v233 + 1513144955) >> 1) ^ ((v233 + 1513144955) >> 4);
  v256 = v254 ^ v236;
  v257 = *(&off_1010A0B50 + SHIDWORD(a10)) - 1886950627;
  v258 = v257[HIBYTE(v255) ^ 5];
  *(a9 + (v25 - 1269161113)) = v258 ^ 0x39 ^ (4 * v258) & 0x30;
  v259 = v251[(-(BYTE1(v242) ^ 0xB1) ^ (29 - (BYTE1(v242) ^ 0xAC)) ^ 0xBA6E090F ^ ((BYTE1(v242) ^ 0xB1) - 2 * ((BYTE1(v242) ^ 0xB1) & 0xF) - 1167193841)) + 29];
  *(a9 + *(v27 - 148)) = v259 ^ (v259 >> 7) ^ (v259 >> 3) ^ 0x2D;
  v260 = v256 ^ v238 ^ (v230 + 1513144955) ^ ((v230 + 1513144955) >> 1) ^ ((v230 + 1513144955) >> 4) ^ 0x6E060DA3;
  LOBYTE(v259) = v257[HIBYTE(v242) ^ 0x3ELL];
  *(a9 + *(v27 - 140)) = v259 ^ 0x79 ^ (4 * v259) & 0x30;
  LOBYTE(v256) = v257[HIBYTE(v250) ^ 0x9DLL];
  *(a9 + *(v27 - 172)) = v256 ^ 0xD8 ^ (4 * v256) & 0x30;
  v261 = v255 ^ 0xC4AA0311;
  LODWORD(v263) = __ROR4__(((v260 & 0x8C12093A ^ 0x13C2420E) & (v260 & 0x73EDF6C5 ^ 0x9CB36BFA) | v260 & 0x602DB4C1) ^ 0xF3E4FA45, 10) ^ 0xD573899A;
  HIDWORD(v263) = v263;
  v262 = v263 >> 22;
  *(a9 + *(v27 - 176)) = v244[v255 ^ 0xDFLL] ^ 0x4E ^ (v244[v255 ^ 0xDFLL] >> 1) & 0x3C;
  v264 = v251[BYTE1(v262) ^ 0x63];
  *(a9 + *(v27 - 132)) = v264 ^ 0xBC ^ (v264 >> 3) ^ ((((v264 ^ 0xFFFFFFBC) & 0x80) != 0) | 0xCC) ^ 0x94;
  *(a9 + *(v27 - 144)) = (v253[BYTE2(v243) ^ 0xE3] - 16) ^ 0x4F;
  v265 = v251[BYTE1(v261) ^ 0x6ALL];
  v266 = v265 ^ 0xC2;
  v121 = (v265 & 0x40) == 0;
  v267 = (((v265 ^ 0xFFFFFFC2) >> 7) & 1 | 0xF0) ^ (v265 >> 3);
  if (v121)
  {
    v268 = -64;
  }

  else
  {
    v268 = 64;
  }

  *(a9 + *(v27 - 120)) = v267 ^ (v268 + v266) ^ 0x7F;
  *(a9 + *(v27 - 164)) = (v253[BYTE2(v261) ^ 0x39] - 16) ^ 0x9E;
  *(a9 + *(v27 - 152)) = v257[~v262 >> 24] ^ 0xA3 ^ ((16 * ((v257[~v262 >> 24] >> 2) & 3)) | 9);
  *(a9 + *(v27 - 124)) = v244[v250 ^ 0x4ALL] ^ 0x4A ^ (v244[v250 ^ 0x4ALL] >> 1) & 0x3C;
  *(a9 + *(v27 - 128)) = (v253[BYTE2(v262) ^ 0x83] - 16) ^ 0xD3;
  v269 = v244[v262 ^ 0x34];
  v270 = (((v269 >> 1) | (v269 << 7)) ^ 0xFFFFFFD9) & 0x3C ^ (((((v269 >> 1) | (v269 << 7)) ^ 0xFFFFFFD9) >> 7) & 1 | (2 * (((v269 >> 1) | (v269 << 7)) ^ 0xFFFFFFD9)));
  *(a9 + *(v27 - 160)) = ((v270 & 7 ^ 0x92) & (v270 ^ 0x16) | v270 & 0x68) ^ (v270 & 4 | 0x60);
  v271 = (v25 + 364008426) < *(v27 - 116);
  if (v274 != (v25 + 364008426) < 0x6158307F)
  {
    v271 = v274;
  }

  return (*(a21 + 8 * ((!v271 | (16 * !v271)) ^ a23)))(v261, 177, 78, 91, v250 ^ 0xEC3B8F2, 57, v233, v243, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1001AE6FC@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13.n128_u64[0] = (v11 + 13) & 0xF;
  v13.n128_u64[1] = (v11 + 12) & 0xF;
  v14.n128_u64[0] = (v11 + 11) & 0xF;
  v14.n128_u64[1] = (v11 + 10) & 0xF;
  v15.n128_u64[0] = (v11 + 9) & 0xF;
  v15.n128_u64[1] = v11 & 0xF ^ 8;
  v19.val[0].i64[0] = (v11 + 7) & 0xF;
  v19.val[0].i64[1] = (v11 + 6) & 0xF;
  v19.val[1].i64[0] = (v11 + 5) & 0xF;
  v19.val[1].i64[1] = (v11 + 4) & 0xF;
  v19.val[2].i64[0] = (v11 + 3) & 0xF;
  v19.val[2].i64[1] = (v11 + 2) & 0xF;
  v19.val[3].i64[0] = (v11 + 1) & 0xF;
  v19.val[3].i64[1] = v11 & 0xF;
  v16.n128_u64[0] = 0x4949494949494949;
  v16.n128_u64[1] = 0x4949494949494949;
  v17.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v17.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  return (*(a11 + 8 * (v12 | 0x44C0)))((v12 | 0x44C0) ^ 0xDE6Eu, v11 + a1 - 16, v11 - 1, (v11 & 0x10) - 16, (v12 | 0x44C0) ^ 0x78EDu, a2, v13, v14, v15, xmmword_100BC76B0, vqtbl4q_s8(v19, xmmword_100BC76B0), v16, v17);
}

void sub_1001AE7F8(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 16) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *(a1 + 8) + 155453101 * (((a1 | 0xFF5CA9D7) - (a1 | 0xA35628) + 10704424) ^ 0x197AB218);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1001AE934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, unsigned int a59)
{
  v63 = ((2 * ((v59 + 763159284) ^ v61)) ^ 0x487EEB08) & ((v59 + 763159284) ^ v61) ^ (2 * ((v59 + 763159284) ^ v61)) & 0xA43F7584;
  v64 = (v61 ^ 0x2D794F51) & (2 * (v61 & 0x89426E55)) ^ v61 & 0x89426E55;
  v65 = ((4 * (v63 ^ 0xA4011484)) ^ 0x90FDD610) & (v63 ^ 0xA4011484) ^ (4 * (v63 ^ 0xA4011484)) & 0xA43F7580;
  v66 = (v65 ^ 0x803D5400) & (16 * ((v63 ^ 0x1A6100) & (4 * v64) ^ v64)) ^ (v63 ^ 0x1A6100) & (4 * v64) ^ v64;
  v67 = ((16 * (v65 ^ 0x24022184)) ^ 0x43F75840) & (v65 ^ 0x24022184) ^ (16 * (v65 ^ 0x24022184)) & 0xA43F7580;
  v68 = v66 ^ 0xA43F7584 ^ (v67 ^ 0x375000) & (v66 << 8);
  v69 = *(&a47 + (((v61 ^ (2 * ((v68 << 16) & 0x243F0000 ^ v68 ^ ((v68 << 16) ^ 0x75840000) & (((v67 ^ 0xA4082584) << 8) & 0x243F0000 ^ 0xA0000 ^ (((v67 ^ 0xA4082584) << 8) ^ 0x3F750000) & (v67 ^ 0xA4082584))))) >> 2) ^ 0x224D2157) + 18);
  *(a5 + (v61 - 1992135083)) = v69 ^ 0x23;
  *(a5 + (v61 - 1992135082)) = (BYTE1(v69) ^ 0x86) - ((2 * (BYTE1(v69) ^ 0x86)) & 0xBF) + 95;
  *(a5 + (v61 - 1992135081)) = (BYTE2(v69) ^ 0x7C) + (~(2 * (HIWORD(v69) ^ 0x7C)) | 0x41) + 96;
  *(a5 + (v61 - 1992135080)) = (HIBYTE(v69) ^ 0x1D) + (~(2 * (HIBYTE(v69) ^ 0x1D)) | 0x41) + 96;
  v70 = v61 + 1151035025 < a59 - 1151797192;
  if ((v61 + 1151035025) < 0xBB58F838 != a59 > 0x44A707C7)
  {
    v70 = a59 > 0x44A707C7;
  }

  return (*(v62 + 8 * ((v70 * v60) ^ v59)))();
}

uint64_t sub_1001AEB74@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v10 = v8 - 1;
  *(a2 + v10) ^= *(v4 + (v10 & 0xF)) ^ *(v3 + (v10 & 0xF)) ^ ((v10 & 0xF) * v6) ^ *((v10 & 0xF) + v5 + 4) ^ v7;
  return (*(v9 + 8 * (((v10 == 0) * a1) ^ v2)))();
}

uint64_t sub_1001AEBC4()
{
  v2.n128_u64[0] = 0xBEBEBEBEBEBEBEBELL;
  v2.n128_u64[1] = 0xBEBEBEBEBEBEBEBELL;
  v3.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v3.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  return (*(v1 + 8 * (v0 - 28430)))(((v0 - 41332) | 0x8000) ^ 0xB7468273, v2, v3);
}

uint64_t sub_1001AEC58()
{
  v5 = LODWORD(STACK[0x304]) + v0;
  v6 = v5 + ((v2 + 35723) ^ 0xA354CCA1) > v3 - 1554746792;
  if (v3 > 0x5CAB8DA7 != v5 > v2 + 1554733625)
  {
    v6 = v5 > v2 + 1554733625;
  }

  if (v6)
  {
    v1 = 371891407;
  }

  return (*(v4 + 8 * ((18782 * (v1 == -371865839)) ^ v2)))();
}

uint64_t sub_1001AEDD4(int a1)
{
  v5 = v1 > 0x7FFFFFFF2D46D20ELL;
  v6 = *(v2 + 8) - 0x3CE25E0DF266D587;
  v7 = v5 ^ (v6 < ((a1 - 38738) ^ 0x80000000D2B9023CLL));
  v8 = v6 < v3;
  if (!v7)
  {
    LOBYTE(v5) = v8;
  }

  return (*(v4 + 8 * ((95 * (((a1 + 126) ^ v5) & 1)) ^ a1)))();
}

uint64_t sub_1001AEE64(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, int a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v74 = *a52;
  v75 = 155453101 * ((((v73 - 168) | 0xE715A58C) - (v73 - 168) + ((v73 - 168) & 0x18EA5A70)) ^ 0x133BE43);
  *(v73 - 124) = v75 + 2069619737;
  *(v73 - 120) = a17 - v75 + 1777281828;
  *(v73 - 140) = a18 ^ v75;
  *(v73 - 168) = a36 ^ v75;
  *(v73 - 144) = v75 ^ 0xE40DFA59;
  *(v73 - 128) = 16376 - v75;
  a3[55] = &STACK[0x260];
  a3[56] = a39;
  a3[58] = 0;
  a3[61] = v74;
  v76 = (*(v72 + 8 * (a17 ^ 0xEE91)))(v73 - 168);
  return (*(v72 + 8 * ((3580 * (*(v73 - 116) == a17 - 371875258 + ((a17 - 9327) | 0x50))) ^ a17)))(v76, a72, &STACK[0x298]);
}

uint64_t sub_1001AEFFC@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 24) = v4;
  *(v2[3] + 32) = v2[4];
  *(a1 + 8) += v2[1] + v1;
  return (*(v6 + 8 * (v5 - 16376)))();
}

uint64_t sub_1001AF050@<X0>(int a1@<W0>, uint64_t a2@<X2>, unsigned int a3@<W8>, int8x16_t a4@<Q0>, int8x16_t a5@<Q1>)
{
  v12 = (v8 + (v5 + v6 + v7));
  v13 = vaddq_s8(vsubq_s8(*(v10 + v6 + 16), vandq_s8(vaddq_s8(*(v10 + v6 + 16), *(v10 + v6 + 16)), a4)), a5);
  *v12 = vaddq_s8(vsubq_s8(*(v10 + v6), vandq_s8(vaddq_s8(*(v10 + v6), *(v10 + v6)), a4)), a5);
  v12[1] = v13;
  return (*(v11 + 8 * (((v9 + v6 == a2) * a1) ^ a3)))();
}

void sub_1001AF0A8(uint64_t a1)
{
  v1 = 139493411 * (((a1 | 0x99BAF981) - (a1 | 0x6645067E) + 1715799678) ^ 0x959718C4);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1001AF230(int a1, double a2, __n128 a3)
{
  a3.n128_u16[0] = -16963;
  a3.n128_u8[2] = -67;
  a3.n128_u8[3] = -67;
  a3.n128_u8[4] = -67;
  a3.n128_u8[5] = -67;
  a3.n128_u8[6] = -67;
  a3.n128_u8[7] = -67;
  return (*(v3 + 8 * a1))(xmmword_100F523B0, a3);
}

uint64_t sub_1001AF280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  v9 = (*(v8 + 8 * (v6 + 39883)))(v7, va);
  return (*(v8 + 8 * ((53 * (((2 * v9) & 0x9FF3EFBE) + (v9 ^ 0xCFF9F7DF) != ((v6 - 2129128435) | 0x66240164) - 390221214)) ^ v6)))();
}

uint64_t sub_1001AF2FC(int a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v54 = *(v37 + (v42 + 3) % v40);
  v55 = *(v38 + (v42 + 2) % v36);
  v56 = *(v37 + (v42 + 1) % v40);
  v57 = (a7 ^ (((a4 ^ (((v54 ^ 0xFF80) & ((*(v38 + v42) << 8) ^ 0xD298) | v54 & 0x67) << 8)) & (v55 ^ a5) | v55 & a6) << 8)) & (v56 ^ a8) ^ (v56 & 4 | v43);
  *(v51 + 4 * v42) = (((v57 ^ v44) + v45) ^ ((v57 ^ v46) + v47) ^ ((v57 ^ v48) + v49)) + v50;
  v59 = v41 > v52 && v41 < v39;
  return (*(a36 + 8 * ((v59 * v53) ^ a1)))();
}

uint64_t sub_1001AF434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  v47 = v46[2];
  v48 = *v46;
  LODWORD(STACK[0x298]) = 157 * (v42 ^ 0xB963);
  *(v45 - 112) = veorq_s8(*v47, xmmword_100F52690);
  if (v44)
  {
    v49 = v48 == 0;
  }

  else
  {
    v49 = 1;
  }

  v50 = !v49;
  v51 = *(v43 + 8 * ((113 * v50) ^ v42));
  LODWORD(STACK[0x294]) = -42900;
  return v51(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_1001AF494@<X0>(uint64_t a1@<X8>)
{
  v6 = v2 + 775;
  v7 = *(v1 + 8);
  *(v5 + 336) = a1;
  *(v5 + 384) = a1;
  *(a1 + 8) = (v6 + 3730) + ((v3 - v7) ^ 0xBFF6FEDFE7322BFBLL) + ((2 * (v3 - v7)) & 0x7FEDFDBFCE6457F6) + 0x7CEB5F2EDDED8D36;
  return (*(v4 + 8 * v6))();
}

uint64_t sub_1001AF504(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = *(a1 + 24) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *(a1 + 16) - 1012831759 * ((-2 - ((a1 | 0x383F3578) + (~a1 | 0xC7C0CA87))) ^ 0xD753DC0D);
  return (*(*(&off_1010A0B50 + v1 - 12160) + 8 * ((v3 * (((v1 + 930660414) & 0xC8872CF3) - 8420)) ^ v1) - 810145054))();
}

uint64_t sub_1001AF5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v43 = v37 + v36 + 2 * v40 + v39 + v42 + LODWORD(STACK[0x2F4]) - 797797338 + v38;
  v44 = (v43 ^ 0x4768BE4D) & (2 * (v43 & 0x678CBF69)) ^ v43 & 0x678CBF69;
  v45 = ((2 * ((((a25 + 27255) ^ 0x359979DA) - 673775225) ^ v43)) ^ 0xD5F8E7EC) & ((((a25 + 27255) ^ 0x359979DA) - 673775225) ^ v43) ^ (2 * ((((a25 + 27255) ^ 0x359979DA) - 673775225) ^ v43)) & 0x6AFC73F6;
  v46 = LODWORD(STACK[0x2F8]) ^ ((LODWORD(STACK[0x2F8]) ^ 0x523FBCF5) - 2108684904) ^ ((LODWORD(STACK[0x2F8]) ^ 0xFC243B4) - 542246185) ^ ((LODWORD(STACK[0x2F8]) ^ 0xAD924623) + 2113797954) ^ ((LODWORD(STACK[0x2F8]) ^ 0xDFFFFFFF) + 261113502) ^ v43 ^ (2 * (((4 * (v45 ^ 0x2A041012)) & 0x6AFC73F0 ^ 0x2AF043D0 ^ ((4 * (v45 ^ 0x2A041012)) ^ 0x2BF1CFD0) & (v45 ^ 0x2A041012)) & (16 * ((v45 ^ 0x7063E4) & (4 * v44) ^ v44)) ^ (v45 ^ 0x7063E4) & (4 * v44) ^ v44));
  v47 = STACK[0x308];
  v48 = LODWORD(STACK[0x3E4]) - LODWORD(STACK[0x300]) + *(v41 + 4 * a33) - 813282398 + (((v46 ^ 0xCC13FAE9) - 546213980) ^ ((v46 ^ 0x6A623B45) + 2030087696) ^ ((v46 ^ 0x2B853858) + 954707219));
  v49 = *(v41 + 4 * a31);
  v50 = ((v49 ^ 0x37937C30) - 402864813) ^ v49 ^ ((v49 ^ 0x31ABA7D1) - 507240780) ^ ((v49 ^ 0xD3D7638B) + 62446314) ^ ((v49 ^ 0xFA7FFEF7) + 705709974) ^ v48 ^ ((v48 ^ 0x245CDBBD) + 1175444157) ^ ((v48 ^ 0x788D7AA7) + 450788263) ^ ((v48 ^ 0x36808039) + 1423147321) ^ ((v48 ^ 0xF7FDDFDD) - 1783701795);
  v51 = a26 + LODWORD(STACK[0x2F4]) + LODWORD(STACK[0x2F8]) + *(v41 + 4 * a29) - *(v41 + 4 * a28) - 163912211 + (((v50 ^ 0x8C830BA7) - 1633461704) ^ ((v50 ^ 0x2BED666) + 278824951) ^ ((v50 ^ 0x3C0165A2) + 773927987));
  v52 = (v51 ^ 0x6FFDFECF) - 1085397946;
  v53 = (v47 ^ 0x996FBC7A) & (2 * (v47 & 0xD06FB963)) ^ v47 & 0xD06FB963;
  v54 = ((2 * (v47 ^ 0x9934FE7E)) ^ 0x92B68E3A) & (v47 ^ 0x9934FE7E) ^ (2 * (v47 ^ 0x9934FE7E)) & 0x495B471C;
  v55 = v54 ^ 0x49494105;
  v56 = (v54 ^ 0x120618) & (4 * v53) ^ v53;
  v57 = 4 * v55;
  v58 = ((4 * v55) ^ 0x256D1C70) & v55;
  v59 = (v57 & 0x495B4710 ^ 0x1490410 ^ v58) & (16 * v56);
  v60 = v59 ^ v56;
  v61 = LODWORD(STACK[0x308]) ^ (2 * v60) ^ v51 ^ ((v51 ^ 0xF1CBBE43) + 561538250) ^ ((v51 ^ 0x5B7AD417) - 1949757794) ^ ((v51 ^ 0xEA00B1EE) + 984836965) ^ v52;
  return (*(a36 + 8 * ((59695 * (((LODWORD(STACK[0x310]) - LODWORD(STACK[0x314]) + LODWORD(STACK[0x31C]) + (((v61 ^ 0x6B54754D) - 777513219) ^ ((v61 ^ 0x355F6C02) - 1885139020) ^ ((v61 ^ 0x231A8559) - 1712920855)) - 1) & 1) == 0)) ^ a25)))(v52, v60, v59, v58, 21562384, 1722009040, 3496982883, a25, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_1001AFBE4(uint64_t a1)
{
  v162 = v2;
  v160 = v4;
  v6 = *(v5 + 8 * (v1 - 8415)) - 529669811;
  v7 = *(v6 + (v3[13] ^ 0x33)) ^ v3[13];
  v8 = v7 >> 5;
  v9 = v5;
  v10 = *(v5 + 8 * (v1 ^ 0x3263)) - 895868999;
  v11 = ((*(v10 + (v3[14] ^ 0x4BLL)) << 8) ^ 0x809F7F68) & ((v7 << 16) ^ 0xA402FFFD);
  v12 = *(v5 + 8 * (v1 - 7356)) - 1773788538;
  v13 = v3[8] ^ *(v12 + (v3[8] ^ (v1 - 75))) ^ 0x33333333;
  v14 = *(v10 + (v3[2] ^ 0x34));
  v15 = *(v9 + 8 * (v1 - 3740)) - 2071649882;
  v16 = *(v15 + (v3[7] ^ 0xD0));
  v17 = (((((v14 >> 2) | (v14 << 6)) ^ 0x8A) >> 6) | (4 * (((v14 >> 2) | (v14 << 6)) ^ 0x8A))) << 8;
  v18 = *(v15 + (v3[15] ^ 0x99));
  v19 = v3[4];
  v20 = (v18 ^ 0x53FFFFCC) & (v11 ^ (((v8 & 3) << 21) | 0xD3145AB6)) | v18 & 0x21;
  LOBYTE(v18) = *(v12 + (v19 ^ 0x6F));
  v21 = ((*(v10 + (v3[6] ^ 0xE4)) << 8) ^ 0x9F3017C6) & (v16 ^ 0xBFF7FFE4) | v16 & 0x39;
  v22 = v19 - ((2 * v19) & 0xF4) - 6;
  v23 = ((*(v10 + (v3[10] ^ 0x2CLL)) << 8) ^ 0xCF5AF760) & ((v13 << 24) ^ 0xE77AFF65) & 0xCFFFFFFF | (((v13 >> 4) & 3) << 28);
  v24 = *v3;
  v25 = *(v12 + (v24 ^ 0x74));
  v26 = (((v3[12] ^ 0x8E ^ *(v12 + (v3[12] ^ 0xBCLL))) << 24) ^ 0xE5EF2E04) & (v20 ^ 0xAC44CFE0);
  v27 = v20 & 0x5110D1FB;
  v28 = (((*(v6 + (v3[5] ^ 0x5FLL)) ^ v3[5]) << 16) ^ 0x39180BC8) & (v21 ^ 0x60CF381B) ^ v21 & 0x9A10F437;
  LODWORD(v12) = *(v15 + (v3[3] ^ 0xA8));
  LODWORD(v12) = ((((*(v6 + (v3[1] ^ 0x9DLL)) ^ v3[1]) << 16) ^ 0x444DFCD7) & (v12 ^ 0x66FFFEC5) | v12 & 0x28) ^ 0x80CBD72B;
  v29 = (v17 & 0xD400 | v12 & (v17 ^ 0xE6FF0EFF)) ^ 0x2210C422;
  v30 = *(v15 + (v3[11] ^ 0xDALL));
  v31 = v23 & 0xB710EE00 ^ 0xDE2841AC ^ (((*(v6 + (v3[9] ^ 0x3ELL)) ^ v3[9]) << 16) ^ 0x484A11C4) & (v23 ^ 0xA3A5598D);
  v32 = v27 ^ 0xBD92DFA3 ^ v26;
  v33 = (v25 ^ (v24 + (~(2 * v24) | 0xB) - 5) ^ 0x12);
  v34 = *(v9 + 8 * (v1 ^ 0x22A8)) - 1687068214;
  v35 = *(v9 + 8 * (v1 ^ 0x263B)) - 761457231;
  v36 = *(v9 + 8 * (v1 - 6968)) - 1321140182;
  v37 = *(v9 + 8 * (v1 ^ 0x26A4)) - 32197210;
  LOBYTE(v18) = v18 ^ v22 ^ 0x76;
  v38 = *(v34 + 4 * v33) ^ BYTE2(v28) ^ (*(v34 + 4 * v33) >> 2) & 0xE9ECC3 ^ *(v35 + 4 * (BYTE2(v28) ^ 0xF2u)) ^ ((BYTE1(v31) ^ 0x6BDA75C2) - 1122246185 + *(v36 + 4 * (BYTE1(v31) ^ 0x9Du))) ^ (954639469 * *(v37 + 4 * v32) - 765846262);
  v39 = 954639469 * *(v37 + 4 * (((v12 & ~v17) ^ 0xF4) - ((2 * v12) & 0x12u) + 9)) - 765846262;
  v40 = BYTE2(v31) ^ *(v34 + 4 * v18) ^ (*(v34 + 4 * v18) >> 2) & 0xE9ECC3 ^ *(v35 + 4 * (BYTE2(v31) ^ 0xB2u)) ^ 0x7E2DD842 ^ ((BYTE1(v32) ^ 0x6BDA75C2) - 1122246185 + *(v36 + 4 * (BYTE1(v32) ^ 0x9Du)));
  v41 = v40 + v39 - 2 * (v40 & v39);
  v42 = *(v34 + 4 * HIBYTE(v31));
  v43 = (HIWORD(v32) & 0x40 | 0xF8FB5C03) ^ HIWORD(v32) & 0xBF ^ v42 ^ *(v35 + 4 * (BYTE2(v32) ^ 0xB2u)) ^ (v42 >> 2) & 0xE9ECC3 ^ (954639469 * *(v37 + 4 * (((v28 & 0xF6 ^ 0x4D) - (v16 ^ 0x88)) ^ v28 & 0xF6 ^ 0x4D)) - 765846262);
  v44 = *(v34 + 4 * HIBYTE(v32));
  v45 = v43 ^ ((BYTE1(v29) ^ 0x6BDA7534) - 1122246185 + *(v36 + 4 * (BYTE1(v29) ^ 0x6Bu)));
  v46 = v44 ^ BYTE2(v29) ^ (v44 >> 2) & 0xE9ECC3 ^ ((BYTE1(v28) ^ 0x6BDA753C) - 1122246185 + *(v36 + 4 * (BYTE1(v28) ^ 0x63u))) ^ *(v35 + 4 * (BYTE2(v29) ^ 1u)) ^ (954639469 * *(v37 + 4 * (v30 ^ 0x61)) - 765846262);
  LODWORD(v30) = *(v34 + 4 * (HIBYTE(v38) ^ 0xF5));
  v47 = v30 ^ BYTE2(v41) ^ (v30 >> 2) & 0xE9ECC3 ^ ((BYTE1(v45) ^ 0x6BDA758B) - 1122246185 + *(v36 + 4 * (BYTE1(v45) ^ 0xD4u))) ^ (954639469 * *(v37 + 4 * (v46 ^ 0x37u)) - 765846262) ^ *(v35 + 4 * (BYTE2(v41) ^ 0x75u));
  v48 = *(v34 + 4 * (HIBYTE(v41) ^ 0x7B));
  v49 = v48 ^ BYTE2(v45) ^ *(v35 + 4 * (BYTE2(v45) ^ 0x74u)) ^ (*(v36 + 4 * (BYTE1(v46) ^ 0x48u)) + (BYTE1(v46) ^ 0x6BDA7517) - 1122246185) ^ (v48 >> 2) & 0xE9ECC3 ^ (954639469 * *(v37 + 4 * (v38 ^ 0x63u)) - 765846262);
  LODWORD(v30) = *(v34 + 4 * (HIBYTE(v45) ^ 0x1F));
  v50 = v30 ^ BYTE2(v46) ^ *(v35 + 4 * (BYTE2(v46) ^ 0x7Eu)) ^ (v30 >> 2) & 0xE9ECC3 ^ ((BYTE1(v38) ^ 0x6BDA7511) - 1122246185 + *(v36 + 4 * (BYTE1(v38) ^ 0x4Eu))) ^ (954639469 * *(v37 + 4 * ((v40 + v39 - 2 * (v40 & v39)) ^ 0xAFu)) - 765846262);
  v51 = *(v34 + 4 * (HIBYTE(v46) ^ 0x43)) ^ BYTE2(v38) ^ *(v35 + 4 * (BYTE2(v38) ^ 0x96u)) ^ (*(v34 + 4 * (HIBYTE(v46) ^ 0x43)) >> 2) & 0xE9ECC3 ^ (954639469 * *(v37 + 4 * (v45 ^ 0x26u)) - 765846262) ^ ((BYTE1(v41) ^ 0x6BDA7528) - 1122246185 + *(v36 + 4 * (BYTE1(v41) ^ 0x77u)));
  v52 = *(v34 + 4 * (HIBYTE(v47) ^ 0x45));
  v53 = 954639469 * *(v37 + 4 * (v51 ^ 0xB3u)) - 765846262;
  LODWORD(v12) = v52 ^ ((v49 ^ 0xFAE65DF9) >> 16) ^ (v52 >> 2) & 0xE9ECC3 ^ *(v35 + 4 * (((v49 ^ 0xFAE65DF9) >> 16) ^ 0xB2u)) ^ (*(v36 + 4 * (BYTE1(v50) ^ 0x5Du)) + (BYTE1(v50) ^ 0x6BDA7502) - 1122246185) ^ 0x7E2DD842;
  v54 = (-v12 ^ (v53 - (v12 ^ v53)) ^ 0x8083A321 ^ (v12 - ((2 * v12) & 0x1074642) - 2138856671)) + v53;
  LODWORD(v12) = *(v34 + 4 * ((v49 ^ 0xFAE65DF9) >> 24));
  v55 = (*(v36 + 4 * BYTE1(v51)) + (BYTE1(v51) ^ 0x6BDA755F) - 1122246185) ^ *(v35 + 4 * (BYTE2(v50) ^ 0x23u)) ^ (954639469 * *(v37 + 4 * (v47 ^ 0xECu)) - 765846262) ^ (((v12 >> 2) & 0xA80C41 ^ v12 & 0x7EAC0E61 ^ 0x8353F19E) & (v12 & 0x8153F19E ^ 0x7AE04E5C ^ (v12 >> 2) & 0x41E082) | ((v12 >> 2) & 0xA80C41 ^ v12 & 0x7EAC0E61) & 0x40C0021);
  v56 = HIBYTE(v50) ^ 0xA7;
  LODWORD(v12) = v50 ^ 0x2F;
  v57 = BYTE2(v50) ^ 0x879222FA;
  v58 = *(v34 + 4 * (HIBYTE(v51) ^ 0x5E));
  LODWORD(v12) = v58 ^ BYTE2(v47) ^ *(v35 + 4 * (BYTE2(v47) ^ 0xF4u)) ^ (v58 >> 2) & 0xE9ECC3 ^ ((((v49 ^ 0x5DF9) >> 8) ^ 0x6BDA75C2) - 1122246185 + *(v36 + 4 * (((v49 ^ 0x5DF9) >> 8) ^ 0x9Du))) ^ (954639469 * *(v37 + 4 * v12) - 765846262);
  v59 = BYTE2(v51) ^ *(v35 + 4 * (BYTE2(v51) ^ 0xA5u)) ^ *(v34 + 4 * v56) ^ ((BYTE1(v47) ^ 0x6BDA7525) - 1122246185 + *(v36 + 4 * (BYTE1(v47) ^ 0x7Au))) ^ (*(v34 + 4 * v56) >> 2) & 0xE9ECC3 ^ (954639469 * *(v37 + 4 * (v49 ^ 0xF0u)) - 765846262) ^ 0x77092A7A;
  v60 = (-(v12 ^ 0x7E2DD804) ^ (41543496 - (v12 ^ 0x7C543F4C)) ^ 0x40E5461F ^ ((v12 ^ 0x7E2DD804) + 1088767520 + (~(2 * (v12 ^ 0x7E2DD804)) | 0x7E3573C1))) + 41543496;
  v61 = v54 ^ 0xBB536FF3;
  LODWORD(v12) = *(v34 + 4 * (HIBYTE(v54) ^ 0x54));
  v62 = v12 ^ 0x85A30C;
  v63 = v12 ^ 0xF8CDA7BF;
  if (((v54 ^ 0xBB536FF3) & 0xFF0000) == 0)
  {
    v62 = v63;
  }

  v64 = v57 ^ v55;
  v65 = (*(v36 + 4 * (BYTE1(v59) ^ 0x9Du)) + (BYTE1(v59) ^ 0x6BDA75C2) - 1122246185) ^ *(v35 + 4 * (BYTE2(v64) ^ 0xB2u)) ^ (954639469 * *(v37 + 4 * (v60 ^ 9u)) - 765846262) ^ ((-v63 ^ (v63 - ((2 * v63) & 0xACFF25B8) + 1451201244) ^ (((v62 >> 2) & 0xE9ECC3) - ((v62 >> 2) & 0xE9ECC3 ^ v63)) ^ 0x567F92DC) + ((v62 >> 2) & 0xE9ECC3));
  v66 = *(v34 + 4 * (HIBYTE(v55) ^ 0x68));
  v67 = v66 ^ BYTE2(v59) ^ *(v35 + 4 * (BYTE2(v59) ^ 0xB2u)) ^ (v66 >> 2) & 0xE9ECC3 ^ (*(v36 + 4 * (BYTE1(v60) ^ 0x9Du)) + (BYTE1(v60) ^ 0x6BDA75C2) - 1122246185) ^ (954639469 * *(v37 + 4 * (v54 ^ 0xF3u)) - 765846262);
  v68 = *(v34 + 4 * HIBYTE(v59));
  v69 = *(v35 + 4 * (BYTE2(v60) ^ 0xB2u)) ^ v68 ^ (v68 >> 2) & 0xE9ECC3 ^ ((BYTE1(v61) ^ 0x6BDA75C2) - 1122246185 + *(v36 + 4 * (BYTE1(v61) ^ 0x9Du))) ^ BYTE2(v60) ^ (954639469 * *(v37 + 4 * v64) - 765846262);
  v70 = *(v35 + 4 * (BYTE2(v61) ^ 0xB2u));
  v71 = *(v34 + 4 * (HIBYTE(v60) ^ 0xEF));
  v72 = (v71 >> 2) & 0xE9ECC3 ^ v71 ^ ((BYTE2(v61) ^ 0xE52182BF) + (v70 ^ 0x63E09581) + ((2 * ((v70 ^ 0x410102E3) & (BYTE2(v61) ^ 0x652182BF) ^ HIWORD(v61) & 0x62)) ^ 0xBFBCFBBB) + 1);
  v73 = ((v72 & 0xBBCD42AE ^ 0x3E171251) & (v72 & 0x4432BD51 ^ 0xFFFF76AF) | v72 & 0x4020AD00) ^ 0xC6FBDD7D;
  v74 = (BYTE1(v64) ^ 0x6BDA75C2) - 1122246185 + *(v36 + 4 * (BYTE1(v64) ^ 0x9Du));
  v75 = ((-v73 ^ (v74 - (v73 ^ v74)) ^ 0x38B0A6CB ^ (v73 - ((2 * v73) & 0x71614D96) + 951101131)) + v74) ^ (954639469 * *(v37 + 4 * (v59 ^ 9u)) - 765846262);
  v76 = BYTE1(v67) ^ 0x8B;
  v77 = *(v34 + 4 * (HIBYTE(v65) ^ 0x8A));
  v78 = *(v35 + 4 * (((v67 ^ 0xA21D8B99) >> 16) ^ 0xB2u)) ^ v77 ^ (*(v36 + 4 * (BYTE1(v69) ^ 0xB4u)) + (BYTE1(v69) ^ 0x6BDA75EB) - 1122246185) ^ (v77 >> 2) & 0xE9ECC3 ^ ((v67 ^ 0xA21D8B99) >> 16) ^ (954639469 * *(v37 + 4 * (v75 ^ 0xB5u)) - 765846262);
  v79 = *(v34 + 4 * ((v67 ^ 0xA21D8B99) >> 24));
  v80 = v79 ^ BYTE2(v69) ^ *(v35 + 4 * (BYTE2(v69) ^ 0xECu)) ^ (v79 >> 2) & 0xE9ECC3 ^ (954639469 * *(v37 + 4 * ((v65 ^ BYTE2(v64)) ^ 0x6Bu)) - 765846262) ^ (*(v36 + 4 * (BYTE1(v75) ^ 0xDBu)) + (BYTE1(v75) ^ 0x6BDA7584) - 1122246185);
  v81 = *(v34 + 4 * (HIBYTE(v69) ^ 0x6F));
  v82 = v67 ^ 0x90;
  v83 = BYTE2(v75);
  v84 = *(v35 + 4 * (BYTE2(v75) ^ 0xDFu)) ^ ((BYTE1(v65) ^ 0x6BDA756C) - 1122246185 + *(v36 + 4 * (BYTE1(v65) ^ 0x33u))) ^ (954639469 * *(v37 + 4 * v82) - 765846262) ^ __ROR4__((((((v81 ^ 0x5D19860B) >> 8) & 1) << 28) | 0xC1059440) ^ __ROR4__(v81 ^ 0x5D19860B, 10) ^ (((v81 ^ 0x5D19860B) << 20) & 0xE1E1E1E1 ^ 0xFFBFFFFF) & ((v81 >> 12) & 0x3A7B ^ 0x2EDA6BEC) ^ 0xAE5B621A, 22);
  v85 = *(v34 + 4 * (HIBYTE(v75) ^ 0x38));
  v86 = v85 ^ BYTE2(v65) ^ *(v35 + 4 * (BYTE2(v65) ^ 0xDBu)) ^ (v85 >> 2) & 0xE9ECC3;
  HIDWORD(v87) = (v76 ^ 0x6BDA75C2) - 1122246185 + *(v36 + 4 * (v76 ^ 0x9Du));
  LODWORD(v87) = HIDWORD(v87);
  v88 = (954639469 * *(v37 + 4 * (v69 ^ 4u)) - 765846262) ^ __ROR4__((v87 >> 20) ^ (v86 >> 20) ^ 0xF5CE83BA ^ ((v86 ^ 0x7E2DD82B) << (v78 & 0xC) << (~v78 & 8) << (~v78 & 4)), 12);
  v89 = v80 ^ 0x14F931C4;
  v90 = (v78 ^ 0xCAE32F3) >> ((v83 ^ v84) & 0x10) >> ((v83 ^ v84) & 0x10 ^ 0x10);
  v91 = v83 ^ v84 ^ 0x8E82CF8D;
  v93 = HIBYTE(v89);
  if (v89 >> 27 >= 0x15)
  {
    v93 = HIBYTE(v89) - 168;
  }

  if (v89 >> 27 <= 0x14)
  {
    v94 = 0;
  }

  else
  {
    v94 = 168;
  }

  v92 = *(v34 + 4 * (HIBYTE(v78) ^ 0xE3));
  v95 = *(v35 + 4 * (BYTE2(v89) ^ 0xB2u)) ^ v92 ^ (((v92 & 0xFC584CF0 ^ 0xFBEFB7BF) - (v92 ^ 0xFB6A14B0)) >> 2) ^ (*(v36 + 4 * (BYTE1(v91) ^ 0x9Du)) + (BYTE1(v91) ^ 0x6BDA75C2) - 1122246185) ^ (954639469 * *(v37 + 4 * (v88 ^ 0xC3u)) - 765846262);
  v96 = *(v34 + 4 * ((v93 + v94) ^ 0xEFu));
  v97 = v96 ^ *(v35 + 4 * (BYTE2(v91) ^ 0xB2u)) ^ BYTE2(v91) ^ (v96 >> 2) & 0xE9ECC3 ^ 0x7E2DD842;
  v98 = (BYTE1(v88) ^ 0x6BDA75C0) + *(v36 + 4 * (BYTE1(v88) ^ 0x9Fu));
  v99 = (((1122246185 - v98) ^ (v97 - ((v98 - 1122246185) ^ v97)) ^ (v98 - 736612246 + (~(2 * (v98 - 1122246185)) | 0xD20762DB)) ^ 0x16FC4E92) + v97) ^ (954639469 * *(v37 + 4 * (v78 ^ 0xFAu)) - 765846262);
  v100 = *(v34 + 4 * (HIBYTE(v84) ^ 0x61));
  v101 = v100 ^ BYTE2(v88) ^ (v100 >> 2) & 0xE9ECC3 ^ ((BYTE1(v78) ^ 0x6BDA75F0) - 1122246185 + *(v36 + 4 * (BYTE1(v78) ^ 0xAFu))) ^ (954639469 * *(v37 + 4 * v89) - 765846262) ^ *(v35 + 4 * (BYTE2(v88) ^ 0xF7u));
  v102 = *(v34 + 4 * (HIBYTE(v88) ^ 0xE9));
  v103 = __ROR4__((8 * v90) ^ __ROR4__(*(v35 + 4 * (v90 ^ 0xB2u)), 29) ^ 0xE381A499, 3);
  v104 = (v102 >> 2) & 0xE9ECC3 ^ v102 ^ ((BYTE1(v89) ^ 0x6BDA75C2) - 1122246185 + *(v36 + 4 * (BYTE1(v89) ^ 0x9Du))) ^ v103 ^ (954639469 * *(v37 + 4 * v91) - 765846262) ^ 0xD26A971E;
  v105 = *(v34 + 4 * (HIBYTE(v95) ^ 0x53));
  v106 = v99 ^ 0x6DC8;
  v107 = *(v35 + 4 * (((((v99 ^ 0x833D6DC8) >> 16) - (((v99 ^ 0x833D6DC8) >> 16) ^ 0xB2)) ^ 0xFFFFFFFC) + ((v99 ^ 0x833D6DC8) >> 16))) ^ v105 ^ (v105 >> 2) & 0xE9ECC3 ^ (954639469 * *(v37 + 4 * ((v102 >> 2) & 0xC3 ^ (v102 ^ ((BYTE1(v89) ^ 0xC2) - 41 + *(v36 + 4 * (BYTE1(v89) ^ 0x9Du)))) ^ v103 ^ (109 * *(v37 + 4 * v91) + 10) ^ 0x1E)) - 765846262) ^ ((BYTE1(v101) ^ 0x6BDA756F) - 1122246185 + *(v36 + 4 * (BYTE1(v101) ^ 0x30u))) ^ ((v99 ^ 0x833D6DC8) >> 16);
  v108 = *(v34 + 4 * (HIBYTE(v99) ^ 0x6C));
  v109 = BYTE2(v101) ^ *(v35 + 4 * (BYTE2(v101) ^ 5u)) ^ v108 ^ (*(v36 + 4 * (BYTE1(v104) ^ 0x9Du)) + (BYTE1(v104) ^ 0x6BDA75C2) - 1122246185) ^ (v108 >> 2) & 0xE9ECC3 ^ 0x7E2DD8F5;
  v110 = 954639469 * *(v37 + 4 * ((v95 ^ BYTE2(v89)) ^ 0x23u)) - 765846262;
  v111 = v109 + v110 - 2 * (v109 & v110);
  v112 = *(v34 + 4 * (HIBYTE(v101) ^ 0x86));
  v113 = v112 ^ BYTE2(v104) ^ (v112 >> 2) & 0xE9ECC3 ^ ((BYTE1(v95) ^ 0x6BDA75A6) - 1122246185 + *(v36 + 4 * (BYTE1(v95) ^ 0xF9u))) ^ *(v35 + 4 * (BYTE2(v104) ^ 0xB2u)) ^ (954639469 * *(v37 + 4 * v106) - 765846262);
  v114 = v101 ^ 0x51;
  v115 = *(v34 + 4 * HIBYTE(v104));
  v116 = *(v35 + 4 * (((-(BYTE2(v95) ^ 0x82) ^ (-1131622513 - (BYTE2(v95) ^ 0xBC8CCF0D)) ^ 0x9BA27EEC ^ ((BYTE2(v95) ^ 0x82) - 2 * ((BYTE2(v95) ^ 0x82) & 0xED ^ HIWORD(v95) & 1) - 1683849492)) - 1131622513) ^ 0xBC8CCF3D)) ^ v115 ^ (v115 >> 2) & 0xE9ECC3 ^ ((HIBYTE(v106) ^ 0x6BDA75C2) - 1122246185 + *(v36 + 4 * (HIBYTE(v106) ^ 0x9Du))) ^ (954639469 * *(v37 + 4 * v114) - 765846262);
  v117 = v107 ^ 0x36523CE5;
  LODWORD(v118) = __ROR4__(*(v34 + 4 * ((v107 ^ 0x36523CE5u) >> 24)), 28) ^ 0xCDCAFAE4;
  HIDWORD(v118) = v118;
  v119 = *(v35 + 4 * (BYTE2(v111) ^ 0x97u)) ^ BYTE2(v111) ^ (v118 >> 4) ^ (954639469 * *(v37 + 4 * ((v116 ^ BYTE2(v95)) ^ 0x8Du)) - 765846262) ^ ((v118 >> 4) >> 2) & 0xE9ECC3 ^ (*(v36 + 4 * ((BYTE1(v113) ^ 0x24) - ((2 * ((v113 >> 8) ^ 0x4DF524)) & 0x13A) + 157)) - (BYTE1(v113) ^ 0x24) + (((BYTE1(v113) ^ 0x24) - (BYTE1(v113) ^ 0x94258A19)) ^ 1) - 1122246185) ^ 0x32D05F0A;
  v120 = *(v34 + 4 * (HIBYTE(v111) ^ 0xE0));
  v121 = v120 ^ *(v35 + 4 * (BYTE2(v113) ^ 0x47u)) ^ 0x9B0C5AFD ^ (v120 >> 2) & 0xE9ECC3;
  v122 = (954639469 * *(v37 + 4 * (v107 ^ 0xECu)) - 765846262) ^ ((BYTE1(v116) ^ 0x6BDA75CD) - 1122246185 + *(v36 + 4 * (BYTE1(v116) ^ 0x92u))) ^ ((-(BYTE2(v113) ^ 0xE521824A) ^ ((BYTE2(v113) ^ 0xE521824A) - 169919241 + ((v113 >> 15) & 0x1EC ^ 0x35FDFF7B)) ^ 0xF5DF3CF6 ^ (v121 - (BYTE2(v113) ^ 0xE521824A ^ v121))) + v121);
  v123 = *(v34 + 4 * (HIBYTE(v113) ^ 0xA2));
  v124 = v123 ^ BYTE2(v116) ^ *(v35 + 4 * (BYTE2(v116) ^ 0x17u)) ^ (v123 >> 2) & 0xE9ECC3;
  v125 = (v124 & 0xD389745D ^ 0x90CE7D4C) & (v124 ^ 0x5A6BD3C5);
  v126 = HIBYTE(v116) ^ 0xF6;
  v127 = (954639469 * *(v37 + 4 * (v111 ^ 0xD4u)) - 765846262) ^ ((BYTE1(v117) ^ 0x6BDA75C2) - 1122246185 + *(v36 + 4 * (BYTE1(v117) ^ 0x9Du))) ^ v124 & 0xEEB1A6AB;
  v128 = (BYTE1(v111) ^ 0x6BDA751B) - 1122246185 + *(v36 + 4 * (BYTE1(v111) ^ 0x44u));
  v129 = *(v34 + 4 * v126);
  v130 = BYTE2(v117);
  v131 = *(v35 + 4 * (BYTE2(v117) ^ 0xB2u));
  v132 = v119 - ((2 * v119) & 0x5D6EE97C) - 1363708738;
  v133 = v129 ^ v130 ^ v131 ^ (v129 >> 2) & 0xE9ECC3 ^ v128 ^ (954639469 * *(v37 + 4 * (v113 ^ 0x72u)) - 765846262);
  v134 = *(v37 + 4 * ((v127 ^ v125) ^ 0xF0u));
  v135 = 954639469 * *(v37 + 4 * (v133 ^ 0xEEu)) - 765846262;
  v136 = 954639469 * *(v37 + 4 * ((v119 - ((2 * v119) & 0x7C) - 66) ^ 9u)) - 765846262;
  v137 = 954639469 * *(v37 + 4 * (v122 ^ 0xD1u)) - 765846262;
  v138 = *(v34 + 4 * (HIBYTE(v132) ^ 0xEF));
  v139 = v138 ^ BYTE2(v122) ^ *(v35 + 4 * (BYTE2(v122) ^ 0x47u)) ^ (*(v36 + 4 * (((v127 ^ v125) >> 8) ^ 0x45u)) + (((v127 ^ v125) >> 8) ^ 0x6BDA751A) - 1122246185) ^ (v138 >> 2) & 0xE9ECC3 ^ v135;
  v140 = *(v34 + 4 * (HIBYTE(v122) ^ 0x65));
  v141 = v140 ^ ((v127 ^ v125) >> 16) ^ *(v35 + 4 * (((v127 ^ v125) >> 16) ^ 0x9Fu)) ^ (v140 >> 2) & 0xE9ECC3 ^ (*(v36 + 4 * (BYTE1(v133) ^ 0x93u)) + (BYTE1(v133) ^ 0x6BDA75CC) - 1122246185) ^ v136;
  v142 = *(v34 + 4 * (((v127 ^ v125) >> 24) ^ 0x13));
  v143 = v142 ^ BYTE2(v133) ^ *(v35 + 4 * (BYTE2(v133) ^ 0x3Au)) ^ (v142 >> 2) & 0xE9ECC3 ^ ((BYTE1(v132) ^ 0x6BDA75C2) - 1122246185 + *(v36 + 4 * (BYTE1(v132) ^ 0x9Du)));
  v144 = *(v34 + 4 * (HIBYTE(v133) ^ 0x4F));
  v145 = v144 ^ BYTE2(v132) ^ (v144 >> 2) & 0xE9ECC3 ^ ((BYTE1(v122) ^ 0x6BDA753F) - 1122246185 + *(v36 + 4 * (BYTE1(v122) ^ 0x60u))) ^ *(v35 + 4 * (BYTE2(v132) ^ 0xB2u)) ^ (954639469 * v134 - 765846262);
  v146 = *(v9 + 8 * (v1 ^ 0x24C0)) - 870755742;
  v147 = *(v9 + 8 * (v1 ^ 0x2EEB)) - 326527103;
  v148 = *(v9 + 8 * (v1 - 4922)) - 439689190;
  v149 = *(v9 + 8 * (v1 - 4024)) - 233347158;
  HIDWORD(v118) = *(v146 + 4 * ((v141 ^ 0x5E08E7E9) >> 16));
  LODWORD(v118) = HIDWORD(v118);
  v150 = (*(v147 + 4 * (HIBYTE(v139) ^ 0xE7)) - 131461532) ^ (v118 >> 11) ^ *(v148 + 4 * (((v143 ^ v137) >> 8) ^ 0xB4u)) ^ ((v118 >> 11) >> 3) & 0x19E29D03 ^ __ROR4__(*(v149 + 4 * (v145 ^ 0x3Bu)), 3);
  HIDWORD(v118) = *(v146 + 4 * (((v143 ^ v137) >> 16) ^ 0x25u));
  LODWORD(v118) = HIDWORD(v118);
  v151 = *(v148 + 4 * (BYTE1(v145) ^ 0x32u)) ^ (v118 >> 11) ^ (*(v147 + 4 * (HIBYTE(v141) ^ 0x46)) - 131461532) ^ ((v118 >> 11) >> 3) & 0x19E29D03 ^ __ROR4__(*(v149 + 4 * (v139 ^ 0x52u)), 3);
  HIDWORD(v118) = *(v146 + 4 * (BYTE2(v145) ^ 0xE7u));
  LODWORD(v118) = HIDWORD(v118);
  v152 = *(v147 + 4 * (HIBYTE(v145) ^ 0xA));
  LODWORD(v147) = *(v148 + 4 * (BYTE1(v139) ^ 0x18u)) ^ (*(v147 + 4 * ((v143 ^ ~v137) >> 24)) - 131461532) ^ (v118 >> 11) ^ ((v118 >> 11) >> 3) & 0x19E29D03 ^ __ROR4__(*(v149 + 4 * (v141 ^ 0xE9u)), 3);
  v153 = *(v149 + 4 * ((v143 ^ v137) ^ 0xADu));
  HIDWORD(v118) = *(v146 + 4 * (BYTE2(v139) ^ 0x9Au));
  LODWORD(v118) = HIDWORD(v118);
  LODWORD(v149) = *(v148 + 4 * (BYTE1(v141) ^ 0xB5u)) ^ (v152 - 131461532) ^ (v118 >> 11) ^ ((v118 >> 11) >> 3) & 0x19E29D03 ^ (v153 << 29) ^ (v153 >> 3);
  v154 = (v151 & 0x4000000 | 0x902809EB) ^ v151 & 0xFBFFFFFF;
  v155 = *(v9 + 8 * (v1 - 3673)) - 554450943;
  v160[12] = *(v155 + (BYTE3(v149) ^ 0xEELL)) ^ 0x48;
  v156 = *(v9 + 8 * (v1 - 5389)) - 1847921747;
  v160[3] = *(v156 + (v150 ^ 0xF5)) ^ 0xB2;
  v157 = *(v9 + 8 * (v1 - 7068)) - 220156762;
  v160[14] = *(v157 + ((((v149 >> 7) | 0xFFFFFFEB) + (BYTE1(v149) ^ 0xBB) + 11) ^ 0xECLL)) ^ 0x7B;
  v160[4] = *(v155 + (HIBYTE(v154) ^ 0x7CLL)) ^ 0xC2;
  v158 = *(v9 + 8 * (v1 - 7937)) - 2141648359;
  v160[9] = BYTE2(v147) ^ ((BYTE2(v147) ^ 0xD9) - 76) ^ *(v158 + (BYTE2(v147) ^ 0xC3)) ^ 0xBF;
  v160[8] = *(v155 + (BYTE3(v147) ^ 0x4DLL)) ^ 0x9B;
  v160[7] = *(v156 + (v151 ^ 0x1ALL)) ^ 0xEC;
  v160[1] = BYTE2(v150) ^ ((BYTE2(v150) ^ 0x6D) - 76) ^ 0x5E ^ *(v158 + (BYTE2(v150) ^ 0x77));
  v160[13] = (((2 * (BYTE2(v149) ^ 0x7E)) & 0x68 ^ 0x60) + (BYTE2(v149) ^ 0x38)) ^ BYTE2(v149) ^ 0x7E ^ *(v158 + (BYTE2(v149) ^ 0x96)) ^ 0x44;
  v160[5] = BYTE2(v154) ^ ((BYTE2(v154) ^ 0x70) - 76) ^ 0x86 ^ *(v158 + (BYTE2(v154) ^ 0x6ALL));
  v160[6] = *(v157 + (((v151 ^ 0x9EB) >> 8) ^ 0xA1)) ^ 0x32;
  *v160 = *(v155 + (-(HIBYTE(v150) ^ 0xB9) ^ (61 - (HIBYTE(v150) ^ 0x84)) ^ 0xE7FC3936 ^ ((HIBYTE(v150) ^ 0xB9) - ((2 * (HIBYTE(v150) ^ 0xB9)) & 0x6C) - 402900682)) + 61) ^ 0xEF;
  v160[10] = *(v157 + (BYTE1(v147) ^ 0xELL)) ^ 0x16;
  v160[11] = *(v156 + (v147 ^ 0xBELL)) ^ 0x56;
  v160[15] = *(v156 + (v149 ^ 0x58)) ^ 0x6E;
  v160[2] = *(v157 + (BYTE1(v150) ^ 0xE9)) ^ 0x10;
  return (*(v162 + 8 * v1))(a1);
}

uint64_t sub_1001B1848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  *(v41 - 128) = v39 - 906386353 * ((((v41 - 144) | 0xB9F673B4) - (v41 - 144) + ((v41 - 144) & 0x46098C48)) ^ 0x88F7BE90) - 1350;
  *(v41 - 144) = &a37;
  *(v41 - 136) = &a33;
  (*(v37 + 8 * (v39 + 34011)))(v41 - 144);
  *(v41 - 144) = &a26;
  *(v41 - 136) = &a37;
  *(v41 - 120) = v39 - 17902189 * ((~(v41 - 144) & 0x99C00317 | (v41 - 144) & 0x663FFCE8) ^ 0x178F1507) + 7430;
  *(v41 - 128) = &a37;
  *(v41 - 112) = &a29;
  v42 = (*(v37 + 8 * (v39 ^ 0x8D48)))(v41 - 144);
  v43 = (v40 + 130245544) < 0x287C8FDB;
  if (v38 < 0x287C8FDB == v43)
  {
    v43 = v40 + 130245544 > v38;
  }

  return (*(v37 + 8 * (v39 ^ (58 * !v43))))(v42);
}

void sub_1001B19A4(uint64_t a1)
{
  v1 = *(a1 + 16) - 353670337 * ((-2 - ((~a1 | 0xCEBFF683) + (a1 | 0x3140097C))) ^ 0x7A9E0EBE);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1001B1AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, int a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, int a34, uint64_t a35, int a36, int a37, uint64_t a38, uint64_t a39)
{
  v44 = ((3 * a36 - 26 + a34 + v42 - 72) ^ 0x79) & (2 * ((3 * a36 - 26 + a34 + v42 - 72) & 0x62)) ^ (3 * a36 - 26 + a34 + v42 - 72) & 0x62;
  v45 = ((3 * a36 + 1928187622 + a34 + v42 + 423635896) ^ 0xE88D6379) << (((v39 - 44) & 0xFB) - 65);
  v46 = (v45 ^ 0x36) & ((3 * a36 - 26 + a34 + v42 - 72) ^ 0x79) ^ v45 & 0x1A;
  v47 = *(&STACK[0x2F0] + (((3 * a36 - 26 + a34 + v42 - 72) ^ (2 * (((4 * (v46 ^ 9)) ^ 0x60) & (v46 ^ 9) & (16 * ((v46 ^ 0x10) & (4 * v44) ^ v44)) ^ (v46 ^ 0x10) & (4 * v44) ^ v44))) ^ 0x62u));
  LOBYTE(v45) = (v47 ^ 0x4B) & (2 * (v47 & a7)) ^ v47 & a7;
  v48 = ((2 * (v47 ^ 0xCF)) ^ 0x58) & (v47 ^ 0xCF) ^ (2 * (v47 ^ 0xCF)) & 0xAC;
  v49 = (v47 ^ (2 * (((4 * (v48 ^ 0xA4)) & 0xA0 ^ ((4 * (v48 ^ 0xA4)) ^ 0xB0) & (v48 ^ 0xA4) ^ 0x20) & (16 * ((v48 ^ 8) & (4 * v45) ^ v45)) ^ (v48 ^ 8) & (4 * v45) ^ v45)));
  v50 = 1012831759 * ((((v43 - 144) | 0x97F27430) - (v43 - 144) + ((v43 - 144) & 0x680D8BC8)) ^ 0x876162BA);
  *(v43 - 104) = a25 + v50;
  *(v43 - 100) = v50 + (a36 ^ 0xEBFDFFAF) + ((2 * a36) & 0xD7FBFF5E) + 1959492063;
  *(v43 - 120) = (((v49 ^ 0x1848402) - 2022971757) ^ ((v49 ^ 0xD6BC9A46) + 1347680471) ^ ((v49 ^ 0xD7381E27) + 1373076664)) - v50 - 723394629;
  *(v43 - 116) = (a33 ^ 0x563BDFEA) - v50 + ((2 * a33) & 0x2C77BFD4) - 659594;
  *(v43 - 144) = (a34 ^ 0xB79EEF7A) - v50 + ((2 * a34) & 0x6F3DDEF4) + 2030008224;
  *(v43 - 140) = v39 - v50 - 27528;
  *(v43 - 128) = &STACK[0x2F0];
  *(v43 - 136) = v50 + 1135856000;
  *(v43 - 112) = v41;
  v51 = (*(a39 + 8 * (v39 + 15179)))(v43 - 144);
  return (*(a39 + 8 * (((a37 != 1) * v40) ^ v39)))(v51);
}

void sub_1001B1F40(uint64_t a1)
{
  if (*a1)
  {
    v2 = *(a1 + 24) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *(a1 + 12) + 1603510583 * ((-2 - ((~a1 | 0xF01E5B26) + (a1 | 0xFE1A4D9))) ^ 0x67C5698D);
  __asm { BRAA            X9, X17 }
}

void sub_1001B2038()
{
  if (v0 == 884212269)
  {
    v1 = -371865839;
  }

  else
  {
    v1 = 371891401;
  }

  *(v2 + 4) = v1;
}

uint64_t sub_1001B20C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, int a18, uint64_t a19)
{
  a18 = v21 + 1012831759 * a11 - 502837315;
  a17 = a13;
  a19 = v19;
  v22 = (*(v20 + 8 * (v21 + 15295)))(&a17);
  return (*(v20 + 8 * ((23022 * (a15 - 9395899 < v21 - 59305 + ((2 * v21) ^ 0x17460u))) ^ v21)))(v22);
}

uint64_t sub_1001B2168@<X0>(int a1@<W8>)
{
  v7 = *(v5 + 40) ^ a1;
  v8 = (v4 | v1) + v1 - (v1 & ~v4);
  v9 = *(v2 + 8 * (v3 - 40806));
  v10 = *(v9 - 527405895);
  v11 = *(v2 + 8 * (v3 - 37235)) + 4 * v10;
  v12 = *(v11 - 1940437438);
  v13 = (v8 ^ v1) + (v8 ^ v1) * v12;
  if (v8 == v1)
  {
    v14 = *(v11 - 1940437438);
  }

  else
  {
    v14 = 0;
  }

  *(v11 - 1940437438) = (v13 + v14) * v12;
  *(v9 - 527405895) = (v10 + 1) % ((v3 - 23057) ^ 0x4872u);
  return (*(v6 + 8 * ((15 * ((v7 - 1156199117) < 0xFFFFFFFA)) ^ v3)))();
}

uint64_t sub_1001B2224@<X0>(int a1@<W8>)
{
  *v3 = v2;
  *(v2 + 8) = *(v1 + 8);
  *(v1 + 8) = v2;
  return (*(v4 + 8 * a1))();
}

uint64_t sub_1001B2248(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v20.n128_u64[0] = (v19 + 13) & 0xF;
  v20.n128_u64[1] = (v19 + 12) & 0xF;
  v21.n128_u64[0] = (v19 + 11) & 0xF;
  v21.n128_u64[1] = (v19 + 10) & 0xF;
  v22.n128_u64[0] = (v19 + 9) & 0xF;
  v22.n128_u64[1] = a3 & 0xF ^ 0xE;
  v25.val[0].i64[0] = (v19 + 7) & 0xF;
  v25.val[0].i64[1] = (v19 + 6) & 0xF;
  v25.val[1].i64[0] = (v19 + 5) & 0xF;
  v25.val[1].i64[1] = (v19 + 4) & 0xF;
  v25.val[2].i64[0] = (v19 + 3) & 0xF;
  v25.val[2].i64[1] = (v19 + 2) & 0xF;
  v25.val[3].i64[0] = (v19 + 1) & 0xF;
  v25.val[3].i64[1] = v19 & 0xF;
  v23.n128_u64[0] = 0xF3F3F3F3F3F3F3F3;
  v23.n128_u64[1] = 0xF3F3F3F3F3F3F3F3;
  return (*(a18 + 8 * v18))(a3 & 0x10, a3, (v18 + 34848), (a3 & 0x10) - 16, (v18 - 6169), a1, v20, v21, v22, xmmword_100BC76B0, vqtbl4q_s8(v25, xmmword_100BC76B0), v23);
}

uint64_t sub_1001B23C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8 = v6 + 3;
  v9 = v6 - 1;
  *(a1 + v9) = *(a2 + v9) ^ *(v7 - 144 + v9) ^ (v9 * (v5 + 64)) ^ *(v2 + v8) ^ *(v4 + v8);
  return (*(v3 + 8 * (((v9 != 0) | (2 * (v9 != 0))) ^ v5)))();
}

uint64_t sub_1001B2470(uint64_t a1, int8x16_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, double a7, __n128 a8, __n128 a9, __n128 a10, int8x16_t a11, double a12, int8x16_t a13, int8x16_t a14)
{
  v21 = v17 & 0xF;
  v22 = v19;
  v23.i64[0] = vqtbl4q_s8(*(&a8 - 1), a11).u64[0];
  *&v23.i64[1] = a12;
  v24 = vrev64q_s8(veorq_s8(veorq_s8(veorq_s8(*a2, *(v15 + v21 - 15)), *(v21 + v16 - 10)), *(v14 + v21 + a5 - 15)));
  v25 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v24, v24, 8uLL), a14), vmulq_s8(v23, a13)));
  *a2 = vextq_s8(v25, v25, 8uLL);
  return (*(v20 + 8 * ((((a4 | a3) >> 63) * a6) ^ v18)))(a1, a2 - 1, a3 - 16, a4 + 16);
}

uint64_t sub_1001B278C()
{
  v4 = *(v2 + 4);
  if (v4 + 1096397072 >= ((v1 + 1567361785) & 0xA293F4FD ^ 0x501D))
  {
    v5 = v0;
  }

  else
  {
    v5 = -v0;
  }

  *(v2 + 4) = v5 + v4;
  return (*(v3 + 8 * v1))();
}

uint64_t sub_1001B2844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  v30 = 193924789 * ((((v29 - 128) ^ 0x22645013 | 0x5C9321E0) + ((v29 - 128) ^ 0xFF80 | 0xA36CDE1F)) ^ 0x94DF43F4);
  *(v29 - 128) = ((v28 ^ 0xB37BE7DB) + 2146269816 + (((v27 + 5687) ^ 0x66F7E029) & (2 * v28))) ^ v30;
  *(v29 - 124) = (v27 + 22110) ^ v30;
  *(v29 - 120) = &a27;
  v31 = (*(a24 + 8 * (v27 ^ 0xD393)))(v29 - 128);
  return (*(a24 + 8 * v27))(v31);
}

uint64_t sub_1001B2908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52)
{
  v54 = v52 + 7087;
  v55 = ((a52 - 1937085423) ^ 0xF117A21F) & (2 * ((LODWORD(STACK[0x298]) ^ 0xF85775F6) & (a52 - 1937085423))) ^ (LODWORD(STACK[0x298]) ^ 0xF85775F6) & (a52 - 1937085423);
  v56 = ((v52 - 1299962104) ^ (2 * ((a52 - 1937085423) ^ 0x2115A63F))) & ((a52 - 1937085423) ^ 0x2115A63F) ^ (2 * ((a52 - 1937085423) ^ 0x2115A63F)) & 0xD9421426;
  v57 = ((4 * (v56 ^ 0x49421421)) ^ 0x6508509C) & (v56 ^ 0x49421421) ^ (4 * (v56 ^ 0x49421421)) & 0xD9421424;
  v58 = (v57 ^ 0x41001000) & (16 * (v56 & (4 * v55) ^ v55)) ^ v56 & (4 * v55) ^ v55;
  v59 = ((16 * (v57 ^ 0x98420423)) ^ 0x94214270) & (v57 ^ 0x98420423) ^ (16 * (v57 ^ 0x98420423)) & 0xD9421420;
  v60 = v58 ^ 0xD9421427 ^ (v59 ^ 0x90000000) & (v58 << 8);
  v61 = (a52 - 1937085423) ^ (2 * ((v60 << 16) & 0x59420000 ^ v60 ^ ((v60 << 16) ^ 0x14270000) & (((v59 ^ 0x49421407) << 8) & 0x59420000 ^ 0x19420000 ^ (((v59 ^ 0x49421407) << 8) ^ 0x42140000) & (v59 ^ 0x49421407))));
  v62 = (v54 + 1367005961) & 0xAE85CFEF;
  LODWORD(STACK[0x298]) = v62;
  v64 = v61 != 1792514646 && ((v62 ^ 0xC7E1) & v61) == 6;
  v65 = *(v53 + 8 * ((v64 * (((v54 - 1279212790) & 0x4C3F6AFE) - 19195)) ^ v54));
  LODWORD(STACK[0x294]) = -42899;
  return v65();
}

uint64_t sub_1001B2ADC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, int a5@<W7>, uint64_t a6@<X8>)
{
  v18 = v10 + v11 + v9 + v12;
  v19 = (a1 + (v8 + v18));
  v20 = *v19;
  v21 = *(*(v17 + v15) + (*(v6 - 231415367) & 0x72D7ACF8));
  v22 = ((((v19 ^ v21) & 0x7FFFFFFF) * v16) ^ ((((v19 ^ v21) & 0x7FFFFFFF) * v16) >> 16)) * v16;
  v23 = (a2 + (v7 + v18));
  v24 = ((((v23 ^ v21) & 0x7FFFFFFF) * v16) ^ ((((v23 ^ v21) & 0x7FFFFFFF) * v16) >> 16)) * v16;
  *v23 = *(a4 + (v22 >> 24)) ^ v20 ^ *(a3 + (v22 >> 24)) ^ *((v22 >> 24) + a6 + 5) ^ *(a4 + (v24 >> 24)) ^ *(a3 + (v24 >> 24)) ^ *((v24 >> 24) + a6 + 5) ^ v22 ^ v24 ^ (BYTE3(v22) * v13) ^ (BYTE3(v24) * v13);
  return (*(v14 + 8 * (((v18 == 0) * a5) ^ v9)))();
}

uint64_t sub_1001B2C28(double a1, __n128 a2)
{
  a2.n128_u16[0] = -6683;
  a2.n128_u8[2] = -27;
  a2.n128_u8[3] = -27;
  a2.n128_u8[4] = -27;
  a2.n128_u8[5] = -27;
  a2.n128_u8[6] = -27;
  a2.n128_u8[7] = -27;
  return (*(v6 + 8 * v4))(8 - (v2 & 0x18), v2 & 0x18, -v3, v2 - 5605, v2 + v5 - 8, 6979, xmmword_100F523B0, a2);
}

uint64_t sub_1001B2DA4@<X0>(unsigned int a1@<W4>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, __int16 a8, char a9, __int16 a10, char a11, __int16 a12, char a13, int a14, unsigned int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, int a22, int a23, int a24, int a25, int a26, int a27, int a28, int a29, int a30, int a31, int a32, int a33, int a34, int a35, int a36, int a37, int a38, int a39, int a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, int a48, int a49, int a50, int a51, int a52, int a53, int a54, int a55, int a56, int a57, int a58, int a59, int a60)
{
  v64 = (2 * v62) ^ 0x2A8;
  v65 = a1 & 0xFFFFFFF7 ^ 0x785BF93DLL;
  *(v63 - 136) = v65;
  LOBYTE(v65) = *(a2 + v65);
  *(v63 - 228) = 0;
  *(v63 - 224) = v62 - 2932;
  *(v63 - 220) = v64;
  v66 = v64 ^ a1 & 0xFFFFFFFE ^ 0x785BB8A5;
  *(v63 - 124) = v66;
  LODWORD(v65) = (*(a17 + ((v62 - 116) ^ 0x68u ^ v65)) << 24) + 1660944384;
  v67 = *(a2 + v66) ^ 0x11;
  v68 = a1 & 0xFFFFFFF1 ^ 0x785BF93FLL;
  *(v63 - 160) = v68;
  LODWORD(v67) = *(a18 + v67);
  v69 = a1 & 0xFFFFFFFC ^ 0x785BF937;
  *(v63 - 200) = v69;
  v70 = *(a16 + (*(a2 + v68) ^ 0x3FLL));
  v71 = *(a2 + v69) ^ 0x64;
  v72 = a1 & 0xFFFFFFF6 ^ 0x785BF93DLL;
  *(v63 - 120) = v72;
  LODWORD(v67) = (~(*(a19 + v71) - 64) | 0xFFFF0007) & ((v67 << 16) ^ 0x5D0C0018) | (*(a19 + v71) - 64) & 0xE7;
  LODWORD(v71) = ((*(a18 + (*(a2 + v72) ^ 0xD0)) << 16) ^ 0x6EAB505C) & (v65 ^ 0xD5FFDCDC);
  v73 = a1 & 0xFFFFFFF3 ^ 0x785BF93DLL;
  *(v63 - 144) = v73;
  LODWORD(v71) = v71 | v65 & 0x91000000;
  LODWORD(v65) = *(a17 + (*(a2 + v73) ^ 0x68));
  v74 = a1 ^ 0x785BF935;
  *(v63 - 192) = v74;
  LODWORD(v65) = (((v65 << 24) + 1660944384) ^ 0xFEFFFFFF) & ((v70 << 8) ^ 0xA79F78E0) | ((v65 << 24) + 1660944384) & 0x58000000;
  v75 = *(a17 + (*(a2 + v74) ^ 0xE1)) + 99;
  v76 = a1 & 0xFFFFFFF5 ^ 0x785BF93FLL;
  *(v63 - 168) = v76;
  v77 = (v75 ^ 0xDDDDDDDD) << 24;
  v78 = (v77 ^ 0xDFFFFFFF) & (v67 ^ 0xA8A523C3);
  v79 = v77 & 0xA000000;
  v80 = ((*(a16 + (*(a2 + v76) ^ 0xE2)) << 8) | 0xAF4A00AD) & (v71 ^ 0x1017AFA3);
  v81 = v71 & 0x50B51050;
  v82 = a1 & 0xFFFFFFF9 ^ 0x785BF937;
  *(v63 - 152) = v82;
  v83 = a1 & 0xFFFFFFFD ^ 0x785BF937;
  v84 = *(a16 + (*(a2 + v82) ^ 0x28)) << 8;
  v85 = *(a16 + (*(a2 + v83) ^ 0x9ALL));
  LODWORD(v71) = ((v85 << 8) | 0xFFFF00FF) & (v79 ^ 0x46E52A12 ^ v78);
  v86 = a1 & 0xFFFFFFF2 ^ 0x785BF93DLL;
  *(v63 - 184) = v86;
  *(v63 - 176) = v83;
  v87 = *(a18 + (*(a2 + v86) ^ 0x9BLL));
  v88 = a1 & 0xFFFFFFFA ^ 0x785BF935;
  *(v63 - 208) = v88;
  v87 <<= 16;
  v89 = a1 & 0xFFFFFFF4 ^ 0x785BF93FLL;
  v90 = (v87 ^ 0xFF5FFF29) & (v65 ^ 0xA6ED53C9);
  LOBYTE(v65) = (*(a19 + (*(a2 + v89) ^ 0xBELL)) ^ 0x30) - 64;
  v91 = a1 & 0xFFFFFFF8 ^ 0x785BF937;
  v92 = v87 & 0xFF9FFFFF;
  v93 = a1 & 0xFFFFFFF0 ^ 0x785BF93FLL;
  LOBYTE(v73) = *(a19 + (*(a2 + v93) ^ 0x24)) - 64;
  v94 = (v73 & 0x2D ^ 0xFFFFFF0D) & ((v92 | 0xFA52DA2C) ^ v90);
  v95 = a1 & 0xFFFFFFFB ^ 0x785BF935;
  v96 = (*(a17 + (*(a2 + v95) ^ 0x4ALL)) << 24) + 1660944384;
  v97 = a59 ^ *(v63 - 216) ^ v65 & 0x81 ^ 0x8E96E6E1 ^ (v65 ^ 0xFFFFFF0F) & (v81 ^ 0x9CDD8883 ^ v80);
  v98 = v61 ^ *(v63 - 244) ^ v96 & 0xDB000000 ^ (v96 ^ 0x6BFFFFFF) & ((((*(a19 + (*(a2 + v91) ^ 0x94)) ^ 0x31) - 64) & 0x62 | 0xDE240785) ^ (((*(a19 + (*(a2 + v91) ^ 0x94)) ^ 0x31) - 64) ^ 0xFFFFFF15) & ((((*(a18 + (*(a2 + v88) ^ 0xD4)) << 16) ^ 0xC4E02EA8) & (v84 ^ 0xC4FF34B8) | v84 & 0xD100) ^ 0x3E128735));
  LODWORD(v65) = v60 ^ a58 ^ v73 & 0xFA ^ v94;
  LODWORD(v71) = a60 ^ *(v63 - 212) ^ (v85 << 8) & 0xF600 ^ 0x7C844AE0 ^ v71;
  v99 = *(&off_1010A0B50 + v62 - 6025) - 797557939;
  v100 = *(&off_1010A0B50 + v62 - 8484) - 1319540518;
  v101 = *(&off_1010A0B50 + (v62 ^ 0x2F14)) - 152754326;
  LODWORD(v73) = *&v100[4 * BYTE3(v71)] ^ *&v99[4 * BYTE1(v97)] ^ *&v101[4 * ((v60 ^ a58 ^ v73 & 0xFA ^ v94) ^ 0x8E)];
  v102 = *(&off_1010A0B50 + (v62 ^ 0x2101)) - 545788379;
  v103 = a57 ^ __ROR4__(*&v102[4 * ((v98 ^ 0xF555A504) >> 16)], 17) ^ v73;
  LODWORD(v73) = v65 ^ 0x32ABDFB6;
  LODWORD(v65) = a54 ^ *&v99[4 * ((v98 ^ 0xA504) >> 8)] ^ __ROR4__(*&v102[4 * BYTE2(v71)], 17) ^ *&v101[4 * v97] ^ *&v100[4 * ((v65 ^ 0x32ABDFB6) >> 24)] ^ 0x9DD1B673;
  v104 = a55 ^ *&v99[4 * BYTE1(v71)] ^ *&v101[4 * (v98 ^ 4)] ^ __ROR4__(*&v102[4 * BYTE2(v73)], 17) ^ *&v100[4 * HIBYTE(v97)] ^ 0x3578DC74;
  v105 = a56 ^ __ROR4__(*&v102[4 * BYTE2(v97)], 17) ^ *&v99[4 * BYTE1(v73)] ^ *&v101[4 * v71] ^ *&v100[4 * (HIBYTE(v98) ^ 0xB4)] ^ 0x9A47EFFF;
  LODWORD(v71) = *&v99[4 * BYTE1(v65)] ^ a53 ^ __ROR4__(*&v102[4 * BYTE2(v104)], 17) ^ *&v100[4 * HIBYTE(v105)] ^ *&v101[4 * (v103 ^ 0x31)];
  v106 = *&v101[4 * v105] ^ a49 ^ *&v100[4 * HIBYTE(v104)] ^ *&v99[4 * (BYTE1(v103) ^ 0xB8)] ^ __ROR4__(*&v102[4 * BYTE2(v65)], 17);
  v107 = *&v101[4 * v104];
  v108 = *&v99[4 * BYTE1(v104)] ^ a51 ^ __ROR4__(*&v102[4 * BYTE2(v105)], 17) ^ *&v100[4 * (HIBYTE(v103) ^ 0x58)] ^ *&v101[4 * v65];
  LODWORD(v83) = *&v102[4 * (BYTE2(v103) ^ 0x15)];
  v109 = a52 ^ v107 ^ (v83 >> 17) ^ (v83 << 15) ^ *&v99[4 * BYTE1(v105)] ^ *&v100[4 * BYTE3(v65)] ^ 0x9DC85FA6;
  LODWORD(v65) = *&v99[4 * ((v106 ^ 0xF3D7) >> 8)] ^ a50 ^ __ROR4__(*&v102[4 * ((v71 ^ 0x2748F6F) >> 16)], 17) ^ *&v100[4 * ((v108 ^ 0x7515E692u) >> 24)] ^ *&v101[4 * (a52 ^ v107 ^ (v83 >> 17) ^ v99[4 * BYTE1(v105)] ^ v100[4 * BYTE3(v65)] ^ 0xA6)];
  v110 = a47 ^ __ROR4__(*&v102[4 * BYTE2(v109)], 17) ^ *&v101[4 * (v71 ^ 0x57)] ^ *&v100[4 * ((v106 ^ 0xED7CF3D7) >> 24)] ^ *&v99[4 * ((v108 ^ 0xE692) >> 8)];
  v111 = a48 ^ __ROR4__(*&v102[4 * ((v106 ^ 0xED7CF3D7) >> 16)], 17) ^ *&v100[4 * ((v71 ^ 0x2748F6F) >> 24)] ^ *&v99[4 * BYTE1(v109)] ^ *&v101[4 * (v108 ^ 0x92)] ^ 0x52E7D6CF;
  LODWORD(v83) = a46 ^ *&v101[4 * (v106 ^ 0xEF)] ^ __ROR4__(*&v102[4 * (BYTE2(v108) ^ 0x56)], 17) ^ *&v99[4 * (BYTE1(v71) ^ 0x13)] ^ *&v100[4 * HIBYTE(v109)] ^ 0xC19728B6;
  LODWORD(v71) = a44 ^ __ROR4__(*&v102[4 * (BYTE2(v110) ^ 0xE8)], 17) ^ *&v100[4 * HIBYTE(v111)] ^ *&v101[4 * (v65 ^ 0x9B)] ^ *&v99[4 * BYTE1(v83)];
  v112 = v65 ^ 0x306B54A3;
  LODWORD(v65) = a43 ^ __ROR4__(*&v102[4 * ((v65 ^ 0x306B54A3) >> 16)], 17) ^ *&v100[4 * BYTE3(v83)] ^ *&v101[4 * (v110 ^ 0x82)] ^ *&v99[4 * BYTE1(v111)];
  v113 = a45 ^ *&v101[4 * v83] ^ *&v100[4 * HIBYTE(v112)] ^ __ROR4__(*&v102[4 * BYTE2(v111)], 17) ^ *&v99[4 * (BYTE1(v110) ^ 0x72)] ^ 0xFF8116C7;
  LODWORD(v73) = a41 ^ __ROR4__(*&v102[4 * BYTE2(v83)], 17) ^ *&v101[4 * v111] ^ *&v100[4 * (HIBYTE(v110) ^ 0x1F)] ^ *&v99[4 * BYTE1(v112)] ^ 0x4741F7D9;
  v114 = *&v99[4 * BYTE1(v113)] ^ a39 ^ *&v101[4 * (v71 ^ 0x70)] ^ __ROR4__(*&v102[4 * ((v65 ^ 0x6BB35955) >> 16)], 17) ^ *&v100[4 * BYTE3(v73)];
  v115 = a38 ^ *&v101[4 * v73] ^ *&v99[4 * (BYTE1(v71) ^ 0x31)] ^ __ROR4__(*&v102[4 * BYTE2(v113)], 17) ^ *&v100[4 * ((v65 ^ 0x6BB35955) >> 24)] ^ 0x1C62605E;
  v116 = a42 ^ *&v99[4 * BYTE1(v73)] ^ *&v101[4 * (v65 ^ 0x55)] ^ __ROR4__(*&v102[4 * ((v71 ^ 0xE88DAD70) >> 16)], 17) ^ *&v100[4 * HIBYTE(v113)] ^ 0x8AF3F241;
  LODWORD(v71) = a40 ^ *&v101[4 * v113] ^ __ROR4__(*&v102[4 * BYTE2(v73)], 17) ^ *&v100[4 * (BYTE3(v71) ^ 0xA9)] ^ *&v99[4 * (BYTE1(v65) ^ 0xC5)] ^ 0xA84CFE94;
  v117 = a35 ^ __ROR4__(*&v102[4 * BYTE2(v115)], 17) ^ *&v101[4 * v71] ^ *&v100[4 * ((v114 ^ 0xBB177169) >> 24)] ^ *&v99[4 * BYTE1(v116)];
  LODWORD(v65) = a34 ^ __ROR4__(*&v102[4 * BYTE2(v116)], 17) ^ *&v99[4 * BYTE1(v71)] ^ *&v101[4 * (v114 ^ 0x69)] ^ *&v100[4 * HIBYTE(v115)];
  v118 = *&v99[4 * BYTE1(v115)];
  v119 = a37 ^ __ROR4__(*&v102[4 * BYTE2(v71)], 17) ^ *&v99[4 * ((v114 ^ 0x7169) >> 8)] ^ *&v100[4 * HIBYTE(v116)] ^ *&v101[4 * v115] ^ 0xF699D209;
  v120 = a36 ^ *&v101[4 * v116] ^ *&v100[4 * BYTE3(v71)] ^ v118 ^ __ROR4__(*&v102[4 * (BYTE2(v114) ^ 0x54)], 17) ^ 0xEFCBCE41;
  LODWORD(v71) = a33 ^ *&v100[4 * HIBYTE(v119)] ^ *&v99[4 * (BYTE1(v117) ^ 0x74)] ^ __ROR4__(*&v102[4 * BYTE2(v120)], 17) ^ *&v101[4 * (v65 ^ 0x53)] ^ 0x2B340AAD;
  v121 = a31 ^ *&v100[4 * ((v117 ^ 0x4795E886u) >> 24)] ^ __ROR4__(*&v102[4 * ((v65 ^ 0x87A15B53) >> 16)], 17) ^ *&v99[4 * BYTE1(v119)] ^ *&v101[4 * v120] ^ 0xE486A4E8;
  v122 = *&v100[4 * HIBYTE(v120)];
  v123 = a30 ^ *&v99[4 * BYTE1(v120)] ^ *&v100[4 * (BYTE3(v65) ^ 0xC6)] ^ *&v101[4 * (v117 ^ 0x86)] ^ __ROR4__(*&v102[4 * BYTE2(v119)], 17) ^ 0xC1F45AC;
  LODWORD(v65) = a32 ^ __ROR4__(*&v102[4 * ((v117 ^ 0x4795E886u) >> 16)], 17) ^ *&v101[4 * v119] ^ *&v99[4 * (BYTE1(v65) ^ 0xC7)] ^ v122;
  v124 = v65 ^ 0x5D015BF5;
  LODWORD(v65) = a26 ^ *&v101[4 * v121] ^ __ROR4__(*&v102[4 * BYTE2(v71)], 17) ^ *&v100[4 * HIBYTE(v123)] ^ *&v99[4 * ((v65 ^ 0x5BF5) >> 8)] ^ 0xA47B41DD;
  v125 = *&v101[4 * v71] ^ a28 ^ __ROR4__(*&v102[4 * BYTE2(v121)], 17) ^ *&v100[4 * HIBYTE(v124)] ^ *&v99[4 * BYTE1(v123)];
  v126 = a27 ^ *&v99[4 * BYTE1(v71)] ^ __ROR4__(*&v102[4 * BYTE2(v123)], 17) ^ *&v100[4 * HIBYTE(v121)] ^ *&v101[4 * v124] ^ 0x4501824B;
  LODWORD(v83) = a29 ^ *&v99[4 * BYTE1(v121)] ^ *&v101[4 * v123] ^ __ROR4__(*&v102[4 * BYTE2(v124)], 17) ^ *&v100[4 * BYTE3(v71)] ^ 0x8ECAD21E;
  LODWORD(v73) = v125 ^ 0xB60B02D8;
  LODWORD(v71) = *&v102[4 * ((v125 ^ 0xB60B02D8) >> 16)];
  v127 = *&v102[4 * BYTE2(v65)];
  v128 = *&v99[4 * ((v125 ^ 0x2D8) >> 8)];
  v129 = *&v99[4 * BYTE1(v65)];
  v130 = *&v99[4 * BYTE1(v83)];
  LODWORD(v88) = *&v99[4 * (BYTE1(v126) ^ 0x9C)];
  LODWORD(v99) = *&v101[4 * (v125 ^ 0xE0)];
  v131 = *&v101[4 * v83];
  v132 = *&v101[4 * v126];
  v133 = *&v101[4 * v65];
  LODWORD(v101) = BYTE3(v65);
  LODWORD(v65) = BYTE3(v83);
  v134 = v99 ^ a23 ^ (v127 << 15) ^ v130 ^ ((v127 ^ 0xBE687D14) >> a9 >> a13 >> a11 >> a7) ^ *&v100[4 * HIBYTE(v126)];
  v135 = *&v100[4 * BYTE3(v73)] ^ a24 ^ v129 ^ __ROR4__(*&v102[4 * BYTE2(v126)], 17) ^ v131;
  LODWORD(v83) = v128 ^ a22 ^ __ROR4__(*&v102[4 * BYTE2(v83)], 17) ^ v132 ^ *&v100[4 * v101];
  LODWORD(v101) = v83 ^ 0xE0F185EC;
  LODWORD(v100) = a25 ^ __ROR4__(v71, 17) ^ *&v100[4 * v65] ^ v88 ^ v133 ^ 0x304F444F;
  v136 = *(&off_1010A0B50 + (v62 ^ 0x2867)) - 1821812107;
  LODWORD(v102) = (v135 ^ 0xD24A9CA1) - 1927309751 + *&v136[4 * (v135 ^ 0x62)];
  LODWORD(v71) = (v100 ^ 0xD24A9C1B) - 1927309751 + *&v136[4 * (v100 ^ 0xD8)];
  LODWORD(v88) = (v83 ^ 0xD24A9CF7) - 1927309751 + *&v136[4 * (v83 ^ 0x34)];
  LODWORD(v83) = *&v136[4 * (v134 ^ 1)];
  v137 = v134 ^ 0xA68825D9;
  v138 = *(&off_1010A0B50 + (v62 ^ 0x2696)) - 2013967366;
  v139 = *&v138[4 * BYTE1(v101)];
  v140 = *&v138[4 * BYTE1(v100)];
  v141 = *(&off_1010A0B50 + v62 - 4786) - 1875963174;
  v142 = *&v141[4 * BYTE2(v100)];
  v143 = *(&off_1010A0B50 + (v62 ^ 0x2671)) - 110858251;
  v144 = *&v143[4 * (v101 >> 24)];
  LODWORD(v100) = v88 ^ a21 ^ *&v138[4 * BYTE1(v137)] ^ *&v141[4 * ((v135 ^ 0x128C14BAu) >> 16)] ^ *&v143[4 * (v100 >> 24)];
  LODWORD(v101) = *&v143[4 * HIBYTE(v137)] ^ a14 ^ v102 ^ v140 ^ *&v141[4 * BYTE2(v101)];
  LODWORD(v141) = a21 ^ a24 ^ v139 ^ v71 ^ *&v141[4 * BYTE2(v137)] ^ *&v143[4 * ((v135 ^ 0x128C14BAu) >> 24)];
  LODWORD(v102) = a14 ^ a22 ^ v142 ^ v144 ^ *&v138[4 * (BYTE1(v135) ^ 0x24)] ^ ((v137 ^ 0xD24A9C1B) - 1927309751 + v83);
  v145 = *(&off_1010A0B50 + v62 - 4451) - 732419423;
  *(a2 + *(v63 - 200)) = v145[v100 ^ 0xD8] ^ 9;
  v146 = *(&off_1010A0B50 + v62 - 6618) - 603803022;
  LODWORD(v65) = v146[BYTE2(v141) ^ 7];
  *(a2 + *(v63 - 208)) = ((v65 >> 5) | (8 * v65)) ^ 0x6E;
  v147 = *(&off_1010A0B50 + (v62 ^ 0x219A)) - 279167786;
  *(a2 + *(v63 - 160)) = v147[BYTE1(v102) ^ 6] ^ 0x36;
  v148 = *(&off_1010A0B50 + v62 - 6217) - 401656691;
  *(a2 + *(v63 - 136)) = BYTE3(v101) ^ v148[(v101 >> 24) ^ 0x87] ^ 6;
  *(a2 + v93) = v145[v102 ^ 0x9DLL] ^ 0x51;
  *(a2 + *(v63 - 192)) = BYTE3(v100) ^ 0xD8 ^ v148[(v100 >> 24) ^ 0xB9];
  *(a2 + v95) = BYTE3(v141) ^ v148[(v141 >> 24) ^ 0x50] ^ 0x1E;
  LODWORD(v88) = v146[BYTE2(v100) ^ 0xF4];
  *(a2 + *(v63 - 124)) = ((v88 >> 5) | (8 * v88)) ^ 0x15;
  *(a2 + *(v63 - 144)) = BYTE3(v102) ^ v148[(v102 >> 24) ^ 0xF5] ^ 0x33;
  v149 = *(v63 - 176);
  *(a2 + *(v63 - 168)) = v147[BYTE1(v101) ^ 9] ^ 0x17;
  *(a2 + v91) = v145[v141 ^ 0x50] ^ 0x3E;
  *(a2 + v89) = v145[v101 ^ 0x18] ^ 0x40;
  *(a2 + v149) = v147[BYTE1(v100) ^ 7] ^ 0x3E;
  LODWORD(v88) = v146[BYTE2(v102) ^ 0x72];
  HIDWORD(v150) = v88 ^ 0x55555555;
  LODWORD(v150) = ~v88 << 24;
  *(a2 + *(v63 - 184)) = (v150 >> 29) ^ 0x36;
  *(a2 + *(v63 - 152)) = v147[BYTE1(v141) ^ 0x89] ^ 0xD4;
  LODWORD(v147) = v146[BYTE2(v101) ^ 0x82];
  LODWORD(v88) = (((a1 ^ 0x4E4BC432) - 1313588274) ^ ((a1 ^ 0x19E9A3D6) - 434742230) ^ ((a1 ^ 0x2FF99ED1) - 804888273)) - 541336976;
  LODWORD(v148) = (v88 ^ 0x522C5CD1) & (2 * (v88 & 0x98A01ED5)) ^ v88 & 0x98A01ED5;
  LODWORD(v149) = ((2 * (v88 ^ 0x432C4D71)) ^ 0xB718A748) & (v88 ^ 0x432C4D71) ^ (2 * (v88 ^ 0x432C4D71)) & 0xDB8C53A4;
  LODWORD(v146) = v149 ^ 0x488450A4;
  LODWORD(v149) = (v149 ^ 0x83000300) & (4 * v148) ^ v148;
  LODWORD(v148) = ((4 * v146) ^ 0x6E314E90) & v146 ^ (4 * v146) & 0xDB8C53A0;
  LODWORD(v149) = v149 ^ 0xDB8C53A4 ^ (v148 ^ 0x4A004280) & (16 * v149);
  LODWORD(v148) = (16 * (v148 ^ 0x918C1124)) & 0xDB8C5380 ^ 0x430841A4 ^ ((16 * (v148 ^ 0x918C1124)) ^ 0xB8C53A40) & (v148 ^ 0x918C1124);
  LODWORD(v149) = (v149 << 8) & 0xDB8C5300 ^ v149 ^ ((v149 << 8) ^ 0x8C53A400) & v148;
  LODWORD(v88) = v88 ^ (2 * ((v149 << 16) & 0x5B8C0000 ^ v149 ^ ((v149 << 16) ^ 0x53A40000) & ((v148 << 8) & 0x5B8C0000 ^ 0x538C0000 ^ ((v148 << 8) ^ 0xC530000) & v148)));
  HIDWORD(v150) = v147 ^ 0x55555555;
  LODWORD(v150) = ~v147 << 24;
  *(a2 + *(v63 - 120)) = (v150 >> 29) ^ 0x39;
  LODWORD(v147) = (((v88 ^ 0x6578C22C) + 2053930364) ^ ((v88 ^ 0x8AC27772) - 1781086170) ^ ((v88 ^ 0x770A0CC3) + 1746842517)) - 1980159172;
  LODWORD(v148) = (a15 < 0x119D3207) ^ (v147 < 0x119D3207);
  v151 = v147 < a15;
  if (v148)
  {
    v151 = a15 < 0x119D3207;
  }

  return (*(*(v63 - 240) + 8 * ((24168 * v151) ^ v62)))();
}

uint64_t sub_1001B42D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  LODWORD(STACK[0x308]) = v57;
  v60 = STACK[0x260];
  v61 = (*(v59 + 8 * (v58 + 24486)))(STACK[0x260] + 16, 0);
  v62 = STACK[0x218];
  v62[2] = *(v60 + 16) - ((2 * *(v60 + 16)) & 0x60F8AA20) + 813454608;
  v62[1] = *(v60 + 24) + ((v58 - 6805) ^ 0x307C05D1) - ((2 * *(v60 + 24)) & 0x60F8AA20);
  v63 = (*(v59 + 8 * (v58 + 24429)))(v61);
  v62[3] = v63 - ((2 * v63) & 0x60F8AA20) + 813454608;
  v64 = (*(v59 + 8 * (v58 + 24429)))();
  *v62 = v64 + 813454609 + (~(2 * v64) | 0x9F0755DF);
  return (*(v59 + 8 * v58))(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57);
}

uint64_t sub_1001B43E0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, int a7@<W8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, unsigned int a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v40 = a7 ^ 0xCF58;
  v41 = ((v36 ^ 0xF2) - 111) ^ v36 ^ (-v36 - 99) ^ (((v40 + 28) & 0xD5 ^ 0xC3) + (v36 ^ 0x60)) ^ (((v40 - 61) & 0x6E ^ 0x93) + (v36 ^ 0xF0));
  v42 = v37 + 81 + (((v41 ^ 0xCD) - 105) ^ ((v41 ^ 0x59) + 3) ^ ((v41 ^ 0xB2) - 22)) + 47;
  v43 = (v42 ^ 0xFA) & (2 * (v42 & 0xFA)) ^ v42 & 0xFA;
  v44 = (4 * (((2 * v42) ^ 0x74) & (v42 ^ 0xFA))) & ((2 * v42) ^ 0x74) & (v42 ^ 0xFA) & (16 * (((2 * v42) ^ 0x74) & (v42 ^ 0xFA) & (4 * v43) ^ v43)) ^ ((2 * v42) ^ 0x74) & (v42 ^ 0xFA) & (4 * v43) ^ v43;
  v45 = *(v39 + 4 * a33);
  v46 = ((v45 ^ 2) + 97) ^ v45 ^ ((v45 ^ 0x60) + 3) ^ ((v45 ^ 4) + 103) ^ ((v45 ^ 0xFB) - 102) ^ v42 ^ (2 * v44);
  v47 = v38 + (((v46 ^ 0x55) + 74) ^ ((v46 ^ 0xE) + 19) ^ ((v46 ^ 0x3C) + 33));
  return (*(a36 + 8 * ((45 * (((((-47 - v47) ^ (v47 + 53) ^ (((v47 + 53) ^ 4) + 6)) ^ ((((v47 + 53) ^ 1) + 1) ^ (((v47 + 53) ^ 4) + 6))) & 7) != 4)) ^ v40)))(187475921, a1, a2, a3, a4, a5, a6, a30, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_1001B46F8()
{
  v7 = v5 + v3;
  v8 = (v3 + 112 + (v4 ^ 0xBC) - 72) & 0xF;
  v9 = v8 + 1;
  v10 = v8 + 1 - v3;
  v11 = v1 + v10;
  v12 = v1 + v8 + 1;
  v13 = v8 + v2 + 2;
  v14 = v0 + v10;
  v15 = v0 + v9;
  v17 = v13 > v5 && v13 - v3 < v7;
  if (v12 > v5 && v11 < v7)
  {
    v17 = 1;
  }

  if (v15 > v5 && v14 < v7)
  {
    v17 = 1;
  }

  return (*(v6 + 8 * ((v17 | (4 * v17)) ^ v4)))();
}

uint64_t sub_1001B4944()
{
  v2 = *(v1 + 8 * (v0 ^ 0x598D ^ (975 * (v0 + 1732635786 <= ((v0 + 9830) ^ 0x8D11C085)))));
  STACK[0x3A8] = STACK[0x3A0];
  return v2();
}

void sub_1001B49A4(uint64_t a1)
{
  v4 = *(a1 + 16) != 0x217E172EFA1E81CLL && *(a1 + 24) != 0 && *(a1 + 8) != 0;
  v1 = *(a1 + 36) ^ (906386353 * ((2 * (a1 & 0x9688042F) - a1 + 1769470928) ^ 0x587636F4));
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1001B4A9C(__int16 a1, __int16 a2, int a3, int a4, int a5, int a6, __int16 a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v37 = v35 & v27 ^ v28;
  a24 = v26;
  LOWORD(a23) = v31 ^ ((((a3 | (2 * v25)) - v25 + a4) ^ a5) * a6);
  WORD2(a22) = ((((a3 | (2 * v25)) - v25 + a4) ^ a5) * a6) ^ v35 ^ (2 * ((v35 ^ a2) & (2 * ((v35 ^ a2) & (2 * ((v35 ^ a2) & (2 * ((v35 ^ a2) & (2 * ((v35 ^ a2) & (2 * ((v35 ^ a2) & (2 * ((v35 ^ a2) & (2 * ((v35 ^ a2) & (2 * ((v35 ^ a2) & (2 * ((v35 ^ a2) & (2 * ((v35 ^ a2) & (2 * ((v35 ^ a2) & (2 * ((v35 ^ a2) & (2 * ((v35 ^ a2) & (2 * v35) & ((v29 & v24) + a1) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ a7;
  LODWORD(a22) = v36 - (((a3 | (2 * v25)) - v25 + a4) ^ a5) * a6 + a8;
  (*(a18 + 8 * v30))(&a22);
  *(v32 + (v34 + a16)) = BYTE6(a22);
  v39 = HIDWORD(a16) < 0xAE80CA06 || (v35 - 7772) - 1367291386 < HIDWORD(a16);
  return (*(a18 + 8 * ((34168 * v39) ^ v33)))(9619, 24994, 1245769028, 3672082782, 3002811401, 1603510583, 48829, 3881055133, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1001B4EDC()
{
  v7 = *(v5 - 136);
  v8 = v7 + v3;
  v9 = (v3 - 1) & 0xF;
  v10 = v2 - v3 + v9 + 1;
  v11 = v2 + v9 + 1;
  v12 = v9 - v3 + v0 + 7;
  v13 = v9 + v4 + 26934 + v0 - 51258;
  v14 = v9 - v3 + v1 + 2;
  v15 = v1 + ((v4 + 14511) ^ 0x97B8) + v9;
  v17 = v11 > v7 && v10 < v8;
  if (v12 < v8 && v13 > v7)
  {
    v17 = 1;
  }

  v20 = v14 < v8 && v15 > v7 || v17;
  return (*(v6 + 8 * ((31 * v20) ^ v4)))();
}

uint64_t sub_1001B4F84@<X0>(unsigned int a1@<W2>, uint64_t a2@<X8>, __n128 a3@<Q1>)
{
  a3.n128_u16[0] = 11051;
  a3.n128_u8[2] = 43;
  a3.n128_u8[3] = 43;
  a3.n128_u8[4] = 43;
  a3.n128_u8[5] = 43;
  a3.n128_u8[6] = 43;
  a3.n128_u8[7] = 43;
  return (*(v5 + 8 * a1))(v3 & 7, -v4, 8 - ((((a1 - 199393340) & 0xBE27FFB) - 24121) & v3), v3 + a2 - 8, v3, xmmword_100F523B0, a3);
}

uint64_t sub_1001B5250()
{
  v6 = *(v4 + v0);
  *(v3 + v0) = v6;
  return (*(v5 + 8 * (v1 ^ 0xC88A ^ (47 * (v2 & ~(((v6 - v1) | (v1 - v6)) >> (((v1 + 114) ^ 0xD4) + 97)))))))();
}

uint64_t sub_1001B5334(int a1, __n128 a2)
{
  v5.n128_u64[0] = (v2 + 13) & 0xF;
  v5.n128_u64[1] = (v2 + 12) & 0xF;
  v6.n128_u64[0] = (v2 + 11) & 0xF;
  v6.n128_u64[1] = (v2 + 10) & 0xF;
  v7.n128_u64[0] = (v2 + 9) & 0xF;
  v7.n128_u64[1] = v2 & 0xF ^ 8;
  v11.val[0].i64[0] = (v2 + 7) & 0xF;
  v11.val[0].i64[1] = (v2 + 6) & 0xF;
  v11.val[1].i64[0] = (v2 + 5) & 0xF;
  v11.val[1].i64[1] = (v2 + 4) & 0xF;
  v11.val[2].i64[0] = (v2 + 3) & 0xF;
  v11.val[2].i64[1] = (v2 + 2) & 0xF;
  v11.val[3].i64[0] = (v2 + 1) & 0xF;
  v11.val[3].i64[1] = v2 & 0xF;
  v8.n128_u64[0] = 0xEBEBEBEBEBEBEBEBLL;
  v8.n128_u64[1] = 0xEBEBEBEBEBEBEBEBLL;
  v9.n128_u64[0] = 0xA8A8A8A8A8A8A8A8;
  v9.n128_u64[1] = 0xA8A8A8A8A8A8A8A8;
  return (*(v4 + 8 * (a1 - 23060)))(v2 + v3 - 16, (v2 & 0x10) - 16, 10 * ((a1 - 23060) ^ 0x614u), (10 * ((a1 - 23060) ^ 0x614)) ^ 0xB96Au, a2, v5, v6, v7, xmmword_100BC76B0, vqtbl4q_s8(v11, xmmword_100BC76B0), v8, v9);
}

uint64_t sub_1001B54A4(int a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, int a7, int8x16_t a8, int8x8_t a9)
{
  v16.val[0].i64[0] = (v12 + a3 - 1) & 0xF;
  v16.val[0].i64[1] = (v12 + a3 + 14) & 0xF;
  v16.val[1].i64[0] = (v12 + a4 + a5) & 0xF;
  v16.val[1].i64[1] = (v12 + a3 + 12) & 0xF;
  v16.val[2].i64[0] = (v12 + a3 + 11) & 0xF;
  v16.val[2].i64[1] = (v12 + a3 + 10) & 0xF;
  v16.val[3].i64[0] = (v12 + a3 + 9) & 0xF;
  v16.val[3].i64[1] = (v12 + a3) & 0xF ^ 8;
  *(v13 + v12) = veor_s8(veor_s8(veor_s8(*(v9 + v16.val[0].i64[0] - 7), *(a6 + v12)), veor_s8(*(v16.val[0].i64[0] + v10 - 3), *(v11 + v16.val[0].i64[0] - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v16, a8), a9)));
  return (*(v14 + 8 * (((a2 == a3) * a7) ^ a1)))();
}

uint64_t sub_1001B5574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, int8x16_t a7@<Q4>, uint64_t a8@<D5>, int8x16_t a9@<Q6>, int8x16_t a10@<Q7>, uint64_t a11@<X2>, uint64_t a12@<X3>, uint64_t a13@<X4>, uint64_t a14@<X5>)
{
  v19 = (a14 ^ a1) + v15;
  v20 = v19 & 0xF;
  v22.i64[0] = vqtbl4q_s8(*(&a4 - 2), a7).u64[0];
  v22.i64[1] = a8;
  v23 = vrev64q_s8(veorq_s8(veorq_s8(*(a2 + v19), *(v13 + v20 - 15)), veorq_s8(*(v12 + v20 - 15), *(v20 + v14 - 9))));
  v24 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v23, v23, 8uLL), a10), vmulq_s8(v22, a9)));
  *(v16 + v19) = vextq_s8(v24, v24, 8uLL);
  v25 = a13 == a1;
  v26 = a1 + 16;
  v27 = v25;
  return (*(v18 + 8 * ((v27 | (4 * v27)) ^ v17)))(v26);
}

uint64_t sub_1001B5724(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 4);
  *(a1 + 48) = *(a2 + 8);
  return 0;
}

uint64_t sub_1001B5828()
{
  v5 = v1 + 4;
  STACK[0x4B8] = v5;
  if (v5 <= v3)
  {
    v6 = v2;
  }

  else
  {
    v6 = 371891407;
  }

  LODWORD(STACK[0x4C4]) = v6;
  return (*(v4 + 8 * ((2266 * (v6 == ((v0 - 41414) ^ 0x3188) - 371879005)) ^ v0)))();
}

uint64_t sub_1001B58DC@<X0>(uint64_t a1@<X5>, uint64_t a2@<X6>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v13 = v4 - 1;
  v14 = (v9 + v13);
  v15 = ((v14 ^ *(*(a3 + v12) + (*(a1 + a2) & v6))) & 0x7FFFFFFF) * v7;
  *(v10 + v13) = *(a4 + (v13 & 0xF | (16 * (((v15 ^ HIWORD(v15)) * v7) >> 24)))) ^ *v14 ^ ((v15 ^ BYTE2(v15)) * v8);
  return (*(v11 + 8 * (((8 * (v13 != 0)) | (32 * (v13 != 0))) ^ v5)))();
}

uint64_t sub_1001B5954(uint64_t a1, int a2, int8x16_t a3, int8x8_t a4, uint64_t a5, char a6, uint64_t a7, char a8, int a9)
{
  v16.val[0].i64[0] = (v12 + v13 - 1) & 0xF;
  v16.val[0].i64[1] = (v12 + v13 + 14) & 0xF;
  v16.val[1].i64[0] = (v12 + v13 + 13) & 0xF;
  v16.val[1].i64[1] = (a6 + v13 + a8) & 0xF;
  v16.val[2].i64[0] = (v12 + v13 + 11) & 0xF;
  v16.val[2].i64[1] = (v12 + v13 + 10) & 0xF;
  v16.val[3].i64[0] = (v12 + v13 + 9) & 0xF;
  v16.val[3].i64[1] = (v12 + v13) & 0xF ^ 8;
  *(a7 + v13) = veor_s8(veor_s8(veor_s8(*(v9 + v16.val[0].i64[0] - 7), *(a7 + v13)), veor_s8(*(v11 + v16.val[0].i64[0] - 7), *(v10 + v16.val[0].i64[0] - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v16, a3), a4)));
  return (*(v14 + 8 * (((a1 == v13) * a9) ^ a2)))();
}

uint64_t sub_1001B5A20@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  v36 = v33 + 11880;
  v37 = ((v35 ^ 0x679FFCF6) - 1208990315) ^ v35 ^ ((v35 ^ 0x7BB2199A) - 1411538695) ^ ((v35 ^ 0x7FF7FFFE) - 1348974947) ^ ((v35 ^ 0x4C4A5C0F) - 1675260538 + ((v36 - 39174) | 0x42C8));
  v38 = v34 - 493719525 + (((v37 ^ 0xA40D4C73) - 1887288536) ^ ((v37 ^ 0x1356CFE3) + 953794744) ^ ((v37 ^ 0x37BC09B6) + 473106147)) + 982030893;
  v39 = (v38 ^ 0x24F31D64) & (2 * (v38 & 0xB6F31C75)) ^ v38 & 0xB6F31C75;
  v40 = ((2 * (v38 ^ 0x20B12D84)) ^ 0x2C8463E2) & (v38 ^ 0x20B12D84) ^ (2 * (v38 ^ 0x20B12D84)) & 0x964231F0;
  v41 = *(&a33 + a27);
  v42 = (v41 ^ 0xB6376389) + 1717099244;
  v43 = (v41 ^ 0x76FEFFFF) - 1500428642;
  v44 = ((v41 ^ 0xD62C8DCE) + 105067693) ^ v41 ^ ((v41 ^ 0x39755725) - 384111032) ^ v42 ^ v43 ^ v38 ^ (2 * (((4 * (v40 ^ 0x92421011)) & 0x164231F0 ^ 0x100001C0 ^ ((4 * (v40 ^ 0x92421011)) ^ 0x5908C7C0) & (v40 ^ 0x92421011)) & (16 * ((v40 ^ 0x40021E0) & (4 * v39) ^ v39)) ^ (v40 ^ 0x40021E0) & (4 * v39) ^ v39));
  v45 = *(&a33 + a2) + (((v44 ^ 0x4A1CB82A) + 942017780) ^ ((v44 ^ 0x223C4A7A) + 1342635684) ^ ((v44 ^ 0xD1C3A8B8) - 1543955358));
  return (*(a30 + 8 * ((112 * (((v45 + 76925745) & 7) == 2)) ^ v36)))(a1, v45, (((v45 + 76925745) & 7) == 2) << 7, v41, 1342635684, v42, v43, 2794538654, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

void sub_1001B5CE0(uint64_t a1)
{
  v1 = 139493411 * ((~a1 & 0xCDEB2F5B | a1 & 0x3214D0A4) ^ 0xC1C6CE1E);
  v2 = *(a1 + 12) - v1;
  if (*(a1 + 16))
  {
    v3 = (*(a1 + 8) ^ v1) == 1585232583;
  }

  else
  {
    v3 = 1;
  }

  v6 = !v3 && *a1 != 0 && *(a1 + 24) != 0;
  __asm { BRAA            X8, X17 }
}

void sub_1001B5DB8()
{
  if (v0 == 877837720)
  {
    v2 = -371865839;
  }

  else
  {
    v2 = 371891401;
  }

  *(v1 + 16) = v2;
}

uint64_t sub_1001B5E44()
{
  v9 = v5 - 1;
  *(v7 + v9) ^= *(v0 + (v9 & 0xF)) ^ *(v2 + (v9 & 0xF)) ^ ((v9 & 0xF) * v4) ^ *((v9 & 0xF) + v1 + 4) ^ v6;
  return (*(v8 + 8 * (v3 | (16 * (v9 == 0)))))();
}

uint64_t sub_1001B5F2C(int a1, int a2, int a3, int a4, int a5)
{
  v16 = v7 < v10;
  v17 = (*(*(v14 + 8) + 4 * v6) ^ v11) + v8 + (*(*(v13 + 8) + 4 * v6) ^ v11);
  *(*(v5 + 8) + 4 * v6) = v15 + v17 - (a1 & (2 * v17)) + a2;
  if (v16 == v6 + 1 > a4)
  {
    v16 = v6 + a3 < v7;
  }

  return (*(v12 + 8 * ((v16 * a5) ^ v9)))();
}

uint64_t sub_1001B5FA8@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56, uint64_t a57, uint64_t a58, void *a59, _DWORD *a60)
{
  v64 = v60 ^ ((v60 ^ 0x7A) + 119) ^ ((v60 ^ 0x90) - 99) ^ ((v60 ^ 0xD7) - 36) ^ 0x23 ^ ((v60 ^ (((v62 + 45) & 0xAF) - 89)) + ((v62 + 85) & 0x73 ^ 0xD0));
  v65 = (a56 - 1);
  v66 = *(*a59 + (*a60 & 0x5476DE2C)) + v61 + v65;
  v67 = (-120 * (v61 + v65));
  v68 = v67 ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + ((v66 + 1417076269) & (qword_1010C0540 ^ 0x7226FCCC)));
  *(v61 + v65) = (-120 * (v61 + a56 - 1)) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + ((v66 + 1417076269) & (qword_1010C0540 ^ 0x7226FCCC))) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + ((v66 + 1417076271) & (qword_1010C0540 ^ 0x7226FCCC))) ^ ((a5 ^ 0xCB413EF5) >> (v64 & 0xEB ^ 0xC0) >> (v64 & 0x14 ^ 0x10)) ^ 0xA5;
  v69 = a56 - (*(STACK[0x378] + v65) != 0);
  return (*(v63 + 8 * ((21109 * (v69 == 0)) ^ v62)))(165, v68, v67, v69, a1, a2, a3, a4, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47);
}

uint64_t sub_1001B6184(uint64_t a1, int a2, char a3)
{
  v13 = v9 - 1;
  *(v12 + v13) = (a3 + 96) ^ *(v4 + v13) ^ *(v7 + (v13 & 0xF)) ^ *((v13 & 0xF) + v6 + 4) ^ ((v13 & 0xF) * v8) ^ *(v5 + (v13 & 0xF)) ^ v10;
  return (*(v11 + 8 * (((v13 != 0) * a2) ^ v3)))();
}

uint64_t sub_1001B6298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, int8x16_t a9, double a10, double a11, int8x16_t a12, int8x16_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v85 = veorq_s8(a8, a67);
  v86 = veorq_s8(a9, a67);
  v87 = veorq_s8(a7, a67);
  v88 = veorq_s8(a6, a67);
  v89 = vandq_s8(a8, a66);
  v90 = vandq_s8(a9, a66);
  v91 = vandq_s8(a7, a66);
  v92 = vandq_s8(a6, a66);
  v93 = veorq_s8(vandq_s8(vaddq_s64(v92, v92), veorq_s8(a6, a12)), v92);
  v94 = veorq_s8(vandq_s8(vaddq_s64(v91, v91), veorq_s8(a7, a12)), v91);
  v95 = veorq_s8(vandq_s8(vaddq_s64(v90, v90), veorq_s8(a9, a12)), v90);
  v96 = veorq_s8(vandq_s8(vaddq_s64(v89, v89), veorq_s8(a8, a12)), v89);
  v97 = vaddq_s64(v88, v88);
  v98 = vaddq_s64(v87, v87);
  v99 = vaddq_s64(v86, v86);
  v100 = vaddq_s64(v85, v85);
  v101 = veorq_s8(vandq_s8(veorq_s8(v100, a13), v85), vandq_s8(v100, v72));
  v102 = veorq_s8(vandq_s8(veorq_s8(v99, a13), v86), vandq_s8(v99, v72));
  v103 = veorq_s8(vandq_s8(veorq_s8(v98, a13), v87), vandq_s8(v98, v72));
  v104 = veorq_s8(vandq_s8(veorq_s8(v97, a13), v88), vandq_s8(v97, v72));
  v105 = veorq_s8(vandq_s8(vshlq_n_s64(v96, 2uLL), v101), v96);
  v106 = veorq_s8(vandq_s8(vshlq_n_s64(v95, 2uLL), v102), v95);
  v107 = veorq_s8(vandq_s8(vshlq_n_s64(v94, 2uLL), v103), v94);
  v108 = veorq_s8(vandq_s8(vshlq_n_s64(v93, 2uLL), v104), v93);
  v109 = vandq_s8(vandq_s8(veorq_s8(vshlq_n_s64(v101, 2uLL), v73), veorq_s8(v101, v74)), vshlq_n_s64(v105, 4uLL));
  v110 = veorq_s8(vandq_s8(vandq_s8(veorq_s8(vshlq_n_s64(v104, 2uLL), v73), veorq_s8(v104, v74)), vshlq_n_s64(v108, 4uLL)), v108);
  v111 = veorq_s8(vandq_s8(vandq_s8(veorq_s8(vshlq_n_s64(v103, 2uLL), v73), veorq_s8(v103, v74)), vshlq_n_s64(v107, 4uLL)), v107);
  v112 = veorq_s8(vandq_s8(vandq_s8(veorq_s8(vshlq_n_s64(v102, 2uLL), v73), veorq_s8(v102, v74)), vshlq_n_s64(v106, 4uLL)), v106);
  v113 = veorq_s8(v109, v105);
  v102.i64[0] = a8.i64[0] * a3;
  v102.i64[1] = a8.i64[1] * a3;
  v114 = veorq_s8(vaddq_s64(v112, v112), a9);
  v115 = veorq_s8(vaddq_s64(v113, v113), a8);
  v104.i64[0] = a9.i64[0] * a3;
  v116 = veorq_s8(vaddq_s64(v111, v111), a7);
  v104.i64[1] = a9.i64[1] * a3;
  v117 = vaddq_s64(veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v115, v75), v76), vaddq_s64(veorq_s8(v115, v77), v78)), vaddq_s64(veorq_s8(v115, v79), v80)), v81);
  v118 = vaddq_s64(veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v114, v75), v76), vaddq_s64(veorq_s8(v114, v77), v78)), vaddq_s64(veorq_s8(v114, v79), v80)), v81);
  v119 = v118.i64[1];
  v120 = vaddq_s64(a9, v82);
  v121 = v118.i64[0] * v120.i64[0];
  v122 = vaddq_s64(a8, v82);
  v120.i64[0] = v121;
  v120.i64[1] *= v119;
  v117.i64[0] *= v122.i64[0];
  v117.i64[1] *= v122.i64[1];
  v134.val[1] = vaddq_s64(vaddq_s64(v102, v83), v117);
  v134.val[0] = vaddq_s64(vaddq_s64(v104, v83), v120);
  v123 = veorq_s8(vaddq_s64(v110, v110), a6);
  v120.i64[0] = a7.i64[0] * a3;
  v120.i64[1] = a7.i64[1] * a3;
  v124 = vaddq_s64(veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v116, v75), v76), vaddq_s64(veorq_s8(v116, v77), v78)), vaddq_s64(veorq_s8(v116, v79), v80)), v81);
  v125 = v124.i64[1];
  v126 = v124.i64[0];
  v127 = vaddq_s64(a7, v82);
  v127.i64[0] *= v126;
  v127.i64[1] *= v125;
  v134.val[2] = vaddq_s64(vaddq_s64(v120, v83), v127);
  v128 = veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v123, v75), v76), vaddq_s64(veorq_s8(v123, v77), v78)), vaddq_s64(veorq_s8(v123, v79), v80));
  v123.i64[0] = a6.i64[0] * a3;
  v123.i64[1] = a6.i64[1] * a3;
  v129 = vaddq_s64(v128, v81);
  v130 = v129.i64[1];
  v131 = v129.i64[0];
  v132 = vaddq_s64(a6, v82);
  v132.i64[0] *= v131;
  v132.i64[1] *= v130;
  v134.val[3] = vaddq_s64(vaddq_s64(v123, v83), v132);
  *(a2 + ~v68 + v67) = vrev64_s8(*&vqtbl4q_s8(v134, a65));
  return (*(v71 + 8 * (((v68 + a4 + v69 == a1) * a5) ^ v70)))(vaddq_s64(a6, v84), vaddq_s64(a7, v84), vaddq_s64(a8, v84), vaddq_s64(a9, v84));
}

uint64_t sub_1001B6760@<X0>(uint64_t a1@<X8>)
{
  v6 = *(v1 + a1 + 16);
  v7 = v2 + a1;
  *(v7 + 24) = *(v1 + a1);
  *(v7 + 40) = v6;
  return (*(v3 + 8 * ((7 * (a1 + 32 == (v4 ^ v5 ^ 0xFFFFFF80))) ^ v4)))();
}

uint64_t sub_1001B67A0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 16);
  v105 = (*v2 ^ 0xF7FCFF77) + 1828426635 + ((2 * *v2) & 0xEFF9FEEE);
  v106 = (v2[1] ^ 0xF7FCFF77) + 1828426635 + ((2 * v2[1]) & 0xEFF9FEEE);
  v107 = (v2[2] ^ 0xF7FCFF77) + 1828426635 + ((2 * v2[2]) & 0xEFF9FEEE);
  v108 = (v2[3] ^ 0xF7FCFF77) + 1828426635 + ((2 * v2[3]) & 0xEFF9FEEE);
  v109 = (v2[4] ^ 0xF7FCFF77) + 1828426635 + ((2 * v2[4]) & 0xEFF9FEEE);
  v110 = (v2[5] ^ 0xF7FCFF77) + 1828426635 + ((2 * v2[5]) & 0xEFF9FEEE);
  v111 = (v2[6] ^ 0xF7FCFF77) + 1828426635 + ((2 * v2[6]) & 0xEFF9FEEE);
  v112 = (v2[7] ^ 0xF7FCFF77) + 1828426635 + ((2 * v2[7]) & 0xEFF9FEEE);
  v113 = (v2[8] ^ 0xF7FCFF77) + 1828426635 + ((2 * v2[8]) & 0xEFF9FEEE);
  v114 = (v2[9] ^ 0xF7FCFF77) + 1828426635 + ((2 * v2[9]) & 0xEFF9FEEE);
  v115 = (v2[10] ^ 0xF7FCFF77) + 1828426635 + ((2 * v2[10]) & 0xEFF9FEEE);
  v116 = (v2[11] ^ 0xF7FCFF77) + 1828426635 + ((2 * v2[11]) & 0xEFF9FEEE);
  v117 = (v2[12] ^ 0xF7FCFF77) + 1828426635 + ((2 * v2[12]) & 0xEFF9FEEE);
  v118 = (v2[13] ^ 0xF7FCFF77) + 1828426635 + ((2 * v2[13]) & 0xEFF9FEEE);
  v119 = (v2[14] ^ 0xF7FCFF77) + 1828426635 + ((2 * v2[14]) & 0xEFF9FEEE);
  v120 = (v2[15] ^ 0xF7FCFF77) + 1828426635 + ((2 * v2[15]) & 0xEFF9FEEE);
  v3 = *v1;
  v4 = *v1 & 0x9C ^ 0x31;
  v5 = v3 ^ (2 * ((v3 ^ 0x3A) & (2 * ((v3 ^ 0x3A) & (2 * ((v3 ^ 0x3A) & (2 * ((v3 ^ 0x3A) & (2 * (((2 * (v4 ^ v3 & 0x26)) ^ 0x44) & (v3 ^ 0x3A) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4));
  v6 = v1[1];
  v7 = v6 & 0x88 ^ 0x2B;
  v8 = (((v6 ^ (2 * ((v6 ^ 0x3A) & (2 * ((v6 ^ 0x3A) & (2 * ((v6 ^ 0x3A) & (2 * ((v6 ^ 0x3A) & (2 * (((2 * (v7 ^ v6 & 0x32)) ^ 0x64) & (v6 ^ 0x3A) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7))) << 8) ^ 0x2587F274) & (v5 ^ 0x2587FF62) | v5 & 0x8B;
  v9 = v1[2];
  v10 = v9 & 0xEC ^ 0xB9;
  v11 = (v9 ^ (2 * ((v9 ^ 0x3A) & (2 * ((v9 ^ 0x3A) & (2 * ((v9 ^ 0x3A) & (2 * ((v9 ^ 0x3A) & (2 * (((2 * (v10 ^ v9 & 0x56)) ^ 0x24) & (v9 ^ 0x3A) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10))) << 16;
  v12 = v1[3];
  v13 = v12 & 0xFFFFFFDA ^ 0xFFFFFF90;
  v14 = (((v12 ^ 0x38) & (2 * ((v12 ^ 0x38) & (2 * ((v12 ^ 0x38) & (2 * ((v12 ^ 0x38) & (2 * ((v12 ^ 0x38) & (2 * v13) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13) << 25) ^ (v12 << 24);
  v15 = ((v11 & 0x580000 | (v8 ^ 0xB5209987) & (v11 ^ 0xB743FFFF)) ^ 0x2BB4A295) & (v14 ^ 0x25FFFFFF) ^ v14 & 0x44444444;
  v16 = v1;
  LOBYTE(v8) = v1[4];
  LOBYTE(v11) = v8 & 0xB4 ^ 0xD;
  LOBYTE(v8) = v8 ^ (2 * ((v8 ^ 0x3A) & (2 * ((v8 ^ 0x3A) & (2 * ((v8 ^ 0x3A) & (2 * ((v8 ^ 0x3A) & (2 * ((v8 ^ 0x3A) & (2 * ((v8 ^ 0x3A) & 0xE ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11));
  LOBYTE(v14) = v1[5];
  LOBYTE(v13) = v14 & 0x5C ^ 0x51;
  v17 = (((v14 ^ (2 * ((v14 ^ 0x3A) & (2 * ((v14 ^ 0x3A) & (2 * ((v14 ^ 0x3A) & (2 * ((v14 ^ 0x3A) & (2 * (((2 * (v13 ^ v14 & 0x66)) ^ 0x44) & (v14 ^ 0x3A) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13))) << 8) ^ 0x55E2E08A) & (v8 ^ 0x55E2FF7E) | v8 & 0x75;
  LOBYTE(v11) = v1[6];
  LOBYTE(v14) = v11 & 0x1E ^ 0xF2;
  v18 = (v11 ^ (2 * ((v11 ^ 0x38) & (2 * ((v11 ^ 0x38) & (2 * ((v11 ^ 0x38) & (2 * ((v11 ^ 0x38) & (2 * ((v11 ^ 0x38) & (2 * v14) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14))) << 16;
  v19 = v1[7];
  v20 = v19 & 0x54 ^ 0xFFFFFFDD;
  v21 = (((v19 ^ 0x3A) & (2 * ((v19 ^ 0x3A) & (2 * ((v19 ^ 0x3A) & (2 * ((v19 ^ 0x3A) & (2 * ((v19 ^ 0x3A) & (2 * ((v19 ^ 0x3A) & 0x2E ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20) << 25) ^ (v19 << 24);
  v22 = ((v17 ^ 0x9FB5E01D) & (v18 ^ 0xDFE9FFFF) ^ (v18 & 0xA80000 | 0xA71555DE)) & (v21 ^ 0xABFFFFFF) ^ v21 & 0x92000000;
  v23 = v1[8];
  LODWORD(v1) = v23 & 0x6C ^ 0x79;
  v24 = v23 ^ (2 * ((v23 ^ 0x3A) & (2 * ((v23 ^ 0x3A) & (2 * ((v23 ^ 0x3A) & (2 * ((v23 ^ 0x3A) & (2 * (((2 * (v1 ^ v23 & 0x56)) ^ 0x24) & (v23 ^ 0x3A) ^ v1)) ^ v1)) ^ v1)) ^ v1)) ^ v1));
  v25 = (v23 ^ (2 * ((v23 ^ 0x3A) & (2 * ((v23 ^ 0x3A) & (2 * ((v23 ^ 0x3A) & (2 * ((v23 ^ 0x3A) & (2 * (((2 * (v1 ^ v23 & 0x56)) ^ 0x24) & (v23 ^ 0x3A) ^ v1)) ^ v1)) ^ v1)) ^ v1)) ^ v1)));
  LOBYTE(v1) = v16[9];
  v26 = v1 & 0xD0 ^ 0x9F;
  v27 = (((v1 ^ (2 * ((v1 ^ 0x3A) & (2 * ((v1 ^ 0x3A) & (2 * ((v1 ^ 0x3A) & (2 * ((v1 ^ 0x3A) & (2 * ((v1 ^ 0x3A) & (2 * ((v1 ^ 0x3A) & 0x2A ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26))) << 8) ^ 0x557DCE33) & (v25 ^ 0x7F7FFF93) | v24 & 0xCCCCCCCC;
  LOBYTE(v1) = v16[10];
  LODWORD(v1) = (v1 ^ (2 * (((2 * (((2 * (((2 * (((2 * (((2 * (v1 ^ 0x3A)) & 0x74 ^ 0xE) & (v1 ^ 0x3A))) ^ 0xE) & (v1 ^ 0x3A))) ^ 0xE) & (v1 ^ 0x3A))) ^ 0xE) & (v1 ^ 0x3A))) ^ 0x4E) & (v1 ^ 0x3A)))) << 16;
  v28 = v16[11];
  v29 = v28 & 0x40 ^ 0x47;
  v30 = (((v28 ^ 0x3A) & (2 * ((v28 ^ 0x3A) & (2 * ((v28 ^ 0x3A) & (2 * ((v28 ^ 0x3A) & (2 * ((v28 ^ 0x3A) & (2 * ((v28 ^ 0x3A) & 0x3A ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29) << 25) ^ (v28 << 24);
  v31 = (v1 & 0x2F0000 ^ 0xCEB45475 ^ (v27 ^ 0x83AD1C2A) & (v1 ^ 0xFF31FFFF)) & (v30 ^ 0xBFFFFFFF) ^ v30 & 0xE7FFFFFF;
  LOBYTE(v1) = v16[12];
  LOBYTE(v29) = v1 & 0xB2 ^ 0x8C;
  LOBYTE(v1) = v1 ^ (2 * ((v1 ^ 0x38) & (2 * ((v1 ^ 0x38) & (2 * ((v1 ^ 0x38) & (2 * ((v1 ^ 0x38) & (2 * ((v1 ^ 0x38) & (2 * v29) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29));
  v32 = v16[13];
  v33 = v32 & 0xD8 ^ 0x93;
  LOBYTE(v2) = v16[14];
  v34 = v2 & 0xD8 ^ 0x13;
  LODWORD(v2) = (v2 ^ (2 * ((v2 ^ 0x3A) & (2 * ((v2 ^ 0x3A) & (2 * ((v2 ^ 0x3A) & (2 * ((v2 ^ 0x3A) & (2 * (((2 * (v34 ^ v2 & 0x62)) ^ 0x44) & (v2 ^ 0x3A) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34))) << 16;
  v35 = v22 ^ 0xB59AFCCA ^ v15 ^ v2 & 0x150000 ^ (((((v32 ^ (2 * ((v32 ^ 0x3A) & (2 * ((v32 ^ 0x3A) & (2 * ((v32 ^ 0x3A) & (2 * ((v32 ^ 0x3A) & (2 * (((2 * (v33 ^ v32 & 0x62)) ^ 0x44) & (v32 ^ 0x3A) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33))) << 8) ^ 0x193CA1A9) & (v1 ^ 0x1D7DFF1B) | v1 & 0x56) ^ 0x5AD6113B) & (v2 ^ 0x7F27FFFF);
  v36 = v35 ^ 0x322315ED ^ v31 ^ 0xD47B1A80;
  v37 = (v35 ^ 0x322315ED) & 0xFD3F77C8 ^ (v35 ^ 0x7071DCD9) & (v22 ^ 0x80757EB5) ^ v36;
  HIDWORD(v38) = v105 + (((v15 ^ 0x64631F82) - 1447037551) ^ ((v15 ^ 0xAE9505CD) + 1665789920) ^ ((v15 ^ 0x31AD5BA1) - 59657804)) + 43539967 + (((v37 ^ 0xC7E9FE99) - 1076484995) ^ ((v37 ^ 0x93741823) - 347356473) ^ ((v37 ^ 0xDACC222E) - 1561069364));
  LODWORD(v38) = HIDWORD(v38);
  v39 = (((v22 ^ 0xC1A6268B) - 1950145089) ^ ((v22 ^ 0x1EECB159) + 1418310253) ^ ((v22 ^ 0xA2009EAF) - 395993701)) + ((v38 >> 25) ^ 0xDFFABFFF) + ((2 * (v38 >> 25)) & 0xBFF57FFE) - 388614728;
  v40 = (v22 ^ 0xF15B45DD) & v39 | (v31 ^ 0xD47B1A80) & ~v39;
  HIDWORD(v38) = v106 + (((v36 ^ 0xDD147B51) + 1801108337) ^ ((v36 ^ 0xD0B65C5F) + 1727569023) ^ ((v36 ^ 0xC3E1A29A) + 1974428348)) - 219671432 + (((v40 ^ 0x1666F02D) - 860797916) ^ ((v40 ^ 0x1B7E1D6A) - 1045845659) ^ ((v40 ^ 0x8109A1E7) + 1541281258));
  LODWORD(v38) = HIDWORD(v38);
  v41 = (v38 >> 20) + v39;
  v42 = v41 & (v22 ^ 0x7D4A097D ^ v39) ^ v22 ^ 0xB59AFCCA;
  HIDWORD(v38) = v107 + (((v31 ^ 0x8CAE8D41) - 1490393025) ^ ((v31 ^ 0x6D4C46FA) + 1187554182) ^ ((v31 ^ 0xB9889D9B) - 1844676379)) + 1460011074 + (((v42 ^ 0x6E514D27) + 1151147002) ^ ((v42 ^ 0xCE3FA914) - 453771317) ^ ((v42 ^ 0x68BE1184) + 1114785627));
  LODWORD(v38) = HIDWORD(v38);
  v43 = (v38 >> 15) + v41;
  HIDWORD(v38) = v108 + (((v22 ^ 0x825427E6) - 936303404) ^ ((v22 ^ 0x2595F447) + 1878062963) ^ ((v22 ^ 0xDA8BDADC) - 1863394838)) - 1477396169 + ((((v41 & v43 | v39 & ~v43) ^ 0x1D0B239F) + 2116807188) ^ (((v41 & v43 | v39 & ~v43) ^ 0xF30F5E10) - 1875929187) ^ (((v41 & v43 | v39 & ~v43) ^ 0xEE047D8F) - 1926974460));
  LODWORD(v38) = HIDWORD(v38);
  v44 = (v38 >> 10) + v43;
  HIDWORD(v38) = v109 + v39 - 858093681 + ((v41 - ((2 * v41) & 0xA07B7900) - 801260416) ^ 0xD03DBC80 ^ v44 & (v43 ^ v41));
  LODWORD(v38) = HIDWORD(v38);
  v45 = (v38 >> 25) + v44;
  HIDWORD(v38) = v110 + v41 - 793320595 + ((v43 - ((2 * v43) & 0xF105CB20) - 125639280) ^ 0xF882E590 ^ v45 & (v44 ^ v43));
  LODWORD(v38) = HIDWORD(v38);
  LODWORD(v2) = (v38 >> 20) + v45;
  HIDWORD(v38) = v111 + v43 - 684560806 + ((v44 - ((2 * v44) & 0x414E0152) - 1599668055) ^ 0xA0A700A9 ^ v2 & (v45 ^ v44));
  LODWORD(v38) = HIDWORD(v38);
  v46 = (v38 >> 15) + v2;
  HIDWORD(v38) = v112 + v44 + 336239473 + ((v45 - ((2 * v45) & 0x18F0FB00) - 1938260608) ^ 0x8C787D80 ^ v46 & (v2 ^ v45));
  LODWORD(v38) = HIDWORD(v38);
  v47 = (v38 >> 10) + v46;
  HIDWORD(v38) = v113 + v45 - 783913796 + ((v2 - ((2 * v2) & 0xF211BFC4) - 116858910) ^ 0xF908DFE2 ^ v47 & (v46 ^ v2));
  LODWORD(v38) = HIDWORD(v38);
  v48 = (v38 >> 25) + v47;
  HIDWORD(v38) = v114 + v2 - 1737866828 + ((v46 - ((2 * v46) & 0x3766D7EA) + 464743413) ^ 0x1BB36BF5 ^ v48 & (v47 ^ v46));
  LODWORD(v38) = HIDWORD(v38);
  LODWORD(v2) = (v38 >> 20) + v48;
  HIDWORD(v38) = v115 + v46 + 851921265 + ((v47 - ((2 * v47) & 0xF56E366) - 2018807373) ^ 0x87AB71B3 ^ v2 & (v48 ^ v47));
  LODWORD(v38) = HIDWORD(v38);
  v49 = (v38 >> 15) + v2;
  HIDWORD(v38) = v116 + v47 + 697899639 + ((v48 - ((2 * v48) & 0x87C8C706) + 1139041155) ^ 0x43E46383 ^ v49 & (v2 ^ v48));
  LODWORD(v38) = HIDWORD(v38);
  v50 = (v38 >> 10) + v49;
  HIDWORD(v38) = v117 + v48 + 1458266177 + ((v2 - ((2 * v2) & 0xF1EE0606) + 2029454083) ^ 0x78F70303 ^ v50 & (v49 ^ v2));
  LODWORD(v38) = HIDWORD(v38);
  v51 = (v38 >> 25) + v50;
  HIDWORD(v38) = v118 + v2 + 119070128 + ((v49 - ((2 * v49) & 0x53935436) + 701082139) ^ 0x29C9AA1B ^ v51 & (v50 ^ v49));
  LODWORD(v38) = HIDWORD(v38);
  LODWORD(v2) = (v38 >> 20) + v51;
  HIDWORD(v38) = v119 + v49 - 1700247127 + ((v50 - ((2 * v50) & 0x28683EC6) - 1808523421) ^ 0x94341F63 ^ v2 & (v51 ^ v50));
  LODWORD(v38) = HIDWORD(v38);
  v52 = (v38 >> 15) + v2;
  HIDWORD(v38) = v120 + v50 + 559350647 + ((v51 - ((2 * v51) & 0x16D663CC) + 191574502) ^ 0xB6B31E6 ^ v52 & (v2 ^ v51));
  LODWORD(v38) = HIDWORD(v38);
  v53 = (v38 >> 10) + v52;
  HIDWORD(v38) = v106 + v51 + 1656888987 + ((v52 - ((2 * v52) & 0xD7866A24) - 339528430) ^ 0xEBC33512 ^ (v53 ^ v52) & v2);
  LODWORD(v38) = HIDWORD(v38);
  v54 = (v38 >> 27) + v53;
  HIDWORD(v38) = v111 + v2 - 1882725850 + ((v53 - ((2 * v53) & 0xB8C9369E) + 1550097231) ^ 0x5C649B4F ^ (v54 ^ v53) & v52);
  LODWORD(v38) = HIDWORD(v38);
  LODWORD(v2) = (v38 >> 23) + v54;
  HIDWORD(v38) = v116 + v52 + 1571140203 + ((v54 - ((2 * v54) & 0x7D190DE) - 2081896337) ^ 0x83E8C86F ^ (v2 ^ v54) & v53);
  LODWORD(v38) = HIDWORD(v38);
  v55 = (v38 >> 18) + v2;
  HIDWORD(v38) = v105 + v53 - 2060071262 + ((v2 - ((2 * v2) & 0xC6D7BA8C) + 1668013382) ^ 0x636BDD46 ^ (v55 ^ v2) & v54);
  LODWORD(v38) = HIDWORD(v38);
  v56 = (v38 >> 12) + v55;
  HIDWORD(v38) = v110 + v54 + 328851175 + ((v55 - ((2 * v55) & 0xF2FB6AF8) - 109202052) ^ 0xF97DB57C ^ (v56 ^ v55) & v2);
  LODWORD(v38) = HIDWORD(v38);
  v57 = (v38 >> 27) + v56;
  HIDWORD(v38) = v115 + v2 + 2113328448 + ((v56 - ((2 * v56) & 0x6E50C72A) + 925393813) ^ 0x37286395 ^ (v57 ^ v56) & v55);
  LODWORD(v38) = HIDWORD(v38);
  LODWORD(v2) = (v38 >> 23) + v57;
  HIDWORD(v38) = v120 + v55 - 581854059 + ((v57 - ((2 * v57) & 0x6BBA50FA) + 903686269) ^ 0x35DD287D ^ (v2 ^ v57) & v56);
  LODWORD(v38) = HIDWORD(v38);
  v58 = (v38 >> 18) + v2;
  HIDWORD(v38) = v109 + v56 - 798921794 + ((v2 - ((2 * v2) & 0xACB7E8B0) - 698616744) ^ 0xD65BF458 ^ (v58 ^ v2) & v57);
  LODWORD(v38) = HIDWORD(v38);
  v59 = (v38 >> 12) + v58;
  HIDWORD(v38) = v114 + v57 + 796406534 + ((v58 - ((2 * v58) & 0xAE19B56C) + 1460460214) ^ 0x570CDAB6 ^ (v59 ^ v58) & v2);
  LODWORD(v38) = HIDWORD(v38);
  v60 = (v38 >> 27) + v59;
  HIDWORD(v38) = v119 + v2 - 973965396 + ((v59 - ((2 * v59) & 0x2AD1D41C) - 1788286450) ^ 0x9568EA0E ^ (v60 ^ v59) & v58);
  LODWORD(v38) = HIDWORD(v38);
  LODWORD(v2) = (v38 >> 23) + v60;
  HIDWORD(v38) = v108 + v58 - 1748235306 + ((v60 - ((2 * v60) & 0xFA855918) - 45962100) ^ 0xFD42AC8C ^ (v2 ^ v60) & v59);
  LODWORD(v38) = HIDWORD(v38);
  v61 = (v38 >> 18) + v2;
  HIDWORD(v38) = v113 + v59 + 1043571103 + ((v2 - ((2 * v2) & 0x659DC8DA) + 852419693) ^ 0x32CEE46D ^ (v61 ^ v2) & v60);
  LODWORD(v38) = HIDWORD(v38);
  v62 = (v38 >> 12) + v61;
  HIDWORD(v38) = v118 + v60 + 1466920192 + ((v61 - ((2 * v61) & 0x338B18C0) + 432376928) ^ 0x19C58C60 ^ (v62 ^ v61) & v2);
  LODWORD(v38) = HIDWORD(v38);
  v63 = (v38 >> 27) + v62;
  HIDWORD(v38) = v107 + v2 - 1019329489 + ((v62 - ((2 * v62) & 0x4A513B3C) + 623418782) ^ 0x25289D9E ^ (v63 ^ v62) & v61);
  LODWORD(v38) = HIDWORD(v38);
  v64 = (v38 >> 23) + v63;
  HIDWORD(v38) = v112 + v61 - 227432113 + ((v63 - ((2 * v63) & 0x3F0DEBE) + 33058655) ^ 0x1F86F5F ^ (v64 ^ v63) & v62);
  LODWORD(v38) = HIDWORD(v38);
  v65 = (v38 >> 18) + v64;
  HIDWORD(v38) = v117 + v62 + 1868147249 + ((v64 - ((2 * v64) & 0x7A7E04CA) - 1119944091) ^ 0xBD3F0265 ^ (v65 ^ v64) & v63);
  LODWORD(v38) = HIDWORD(v38);
  v66 = *(&v105 + (v63 & 0xF));
  v67 = (v38 >> 12) + v65;
  *(&v105 + (v63 & 0xF)) = *(&v105 + (v67 & 0xF));
  *(&v105 + (v67 & 0xF)) = *(&v105 + (v65 & 0xF));
  *(&v105 + (v65 & 0xF)) = *(&v105 + (v64 & 0xF));
  *(&v105 + (v64 & 0xF)) = *(&v105 + (v63 >> 4));
  *(&v105 + (v63 >> 4)) = *(&v105 + (v67 >> 4));
  *(&v105 + (v67 >> 4)) = *(&v105 + (v65 >> 4));
  *(&v105 + (v65 >> 4)) = *(&v105 + (v64 >> 4));
  *(&v105 + (v64 >> 4)) = v66;
  HIDWORD(v38) = v110 + v63 + 1192703423 + ((v64 - ((2 * v64) & 0xE4856F8E) + 1916975047) ^ v65 ^ 0x7242B7C7 ^ v67);
  LODWORD(v38) = HIDWORD(v38);
  v68 = (v38 >> 28) + v67;
  HIDWORD(v38) = v113 + v64 + 1993308402 + ((v65 - ((2 * v65) & 0x5F77B382) - 1346643519) ^ v67 ^ 0xAFBBD9C1 ^ v68);
  LODWORD(v38) = HIDWORD(v38);
  v69 = (v38 >> 21) + v68;
  HIDWORD(v38) = v116 + v65 - 1876832051 + ((v67 - ((2 * v67) & 0x7E167A22) + 1057701137) ^ v68 ^ 0x3F0B3D11 ^ v69);
  LODWORD(v38) = HIDWORD(v38);
  v70 = (v38 >> 16) + v69;
  HIDWORD(v38) = v119 + v67 - 1258743691 + ((v68 - ((2 * v68) & 0xCE3F07D2) + 1730118633) ^ v69 ^ 0x671F83E9 ^ v70);
  LODWORD(v38) = HIDWORD(v38);
  v71 = (v38 >> 9) + v70;
  HIDWORD(v38) = v106 + v68 - 1476170760 + ((v69 - ((2 * v69) & 0x105290C0) + 136923232) ^ v70 ^ 0x8294860 ^ v71);
  LODWORD(v38) = HIDWORD(v38);
  LODWORD(v2) = (v38 >> 28) + v71;
  HIDWORD(v38) = v109 + v69 + 1236202133 + ((v70 - ((2 * v70) & 0xC0531CE4) + 1613336178) ^ v71 ^ 0x60298E72 ^ v2);
  LODWORD(v38) = HIDWORD(v38);
  v72 = (v38 >> 21) + v2;
  HIDWORD(v38) = v112 + v70 + 1662962840 + ((v71 - ((2 * v71) & 0xCC8F4612) - 431512823) ^ v2 ^ 0xE647A309 ^ v72);
  LODWORD(v38) = HIDWORD(v38);
  v73 = (v38 >> 16) + v72;
  HIDWORD(v38) = v115 + v71 + 688536027 + ((v2 - ((2 * v2) & 0xEC23C362) + 1980883377) ^ v72 ^ 0x7611E1B1 ^ v73);
  LODWORD(v38) = HIDWORD(v38);
  v74 = (v38 >> 9) + v73;
  HIDWORD(v38) = v118 + v2 + 1496608277 + ((v72 - ((2 * v72) & 0x29407F6) - 2125855749) ^ v73 ^ 0x814A03FB ^ v74);
  LODWORD(v38) = HIDWORD(v38);
  v75 = (v38 >> 28) + v74;
  HIDWORD(v38) = v105 + v72 + 283879030 + ((v73 - ((2 * v73) & 0x50694FB0) - 1472944168) ^ v74 ^ 0xA834A7D8 ^ v75);
  LODWORD(v38) = HIDWORD(v38);
  v76 = (v38 >> 21) + v75;
  HIDWORD(v38) = v108 + v73 + 710828472 + ((v74 - ((2 * v74) & 0x46AEAD18) + 592926348) ^ v75 ^ 0x2357568C ^ v76);
  LODWORD(v38) = HIDWORD(v38);
  v77 = (v38 >> 16) + v76;
  HIDWORD(v38) = v111 + v74 + 265150228 + ((v75 - ((2 * v75) & 0xA8AD149C) - 732526002) ^ v76 ^ 0xD4568A4E ^ v77);
  LODWORD(v38) = HIDWORD(v38);
  LODWORD(v2) = (v38 >> 9) + v77;
  HIDWORD(v38) = v114 + v75 - 990461894 + ((v76 - ((2 * v76) & 0xEAF88346) + 1971077539) ^ v77 ^ 0x757C41A3 ^ v2);
  LODWORD(v38) = HIDWORD(v38);
  v78 = (v38 >> 28) + v2;
  HIDWORD(v38) = v117 + v76 - 560061794 + ((v77 - ((2 * v77) & 0x6DAFE96C) - 1227361098) ^ v2 ^ 0xB6D7F4B6 ^ v78);
  LODWORD(v38) = HIDWORD(v38);
  v79 = (v38 >> 21) + v78;
  HIDWORD(v38) = v120 + v77 + 994012718 + ((v2 - ((2 * v2) & 0x9D958B66) + 1321911731) ^ v78 ^ 0x4ECAC5B3 ^ v79);
  LODWORD(v38) = HIDWORD(v38);
  v80 = (v38 >> 16) + v79;
  HIDWORD(v38) = v107 + v2 - 2036431143 + ((v78 - ((2 * v78) & 0xF6F8859A) + 2071741133) ^ v79 ^ 0x7B7C42CD ^ v80);
  LODWORD(v38) = HIDWORD(v38);
  v81 = (v38 >> 9) + v80;
  HIDWORD(v38) = v105 + v78 + 272528860 + ((v80 + 1297016170 + (~(2 * v80) | 0x6562352D)) ^ 0x6440FC25 ^ (v81 & 0xD6F1E6B3 | (v79 ^ 0xD6F1E6B3) & ~v81));
  LODWORD(v38) = HIDWORD(v38);
  LODWORD(v1) = (v38 >> 26) + v81;
  HIDWORD(v38) = v112 + v79 + 1285543898 + ((v81 - ((2 * v81) & 0xBC90FCB6) + 1581809243) ^ 0x1FC99754 ^ (v1 & 0xBE7E16F0 | (v80 ^ 0xBE7E16F0) & ~v1));
  LODWORD(v38) = HIDWORD(v38);
  v82 = (v38 >> 22) + v1;
  HIDWORD(v38) = v119 + v80 - 2069195959 + ((v1 - ((2 * v1) & 0xE04ACA74) + 1881498938) ^ 0x1DADBCB4 ^ (v82 & 0x92772671 | (v81 ^ 0x92772671) & ~v82));
  LODWORD(v38) = HIDWORD(v38);
  v83 = (v38 >> 17) + v82;
  HIDWORD(v38) = v110 + v81 - 447350192 + ((v82 - ((2 * v82) & 0x46AE5914) + 592915594) ^ 0xF3AE7F9 ^ (v83 & 0xD392348C | (v1 ^ 0xD392348C) & ~v83));
  LODWORD(v38) = HIDWORD(v38);
  v84 = (v38 >> 11) + v83;
  HIDWORD(v38) = v117 + v1 - 2065309295 + ((v83 - ((2 * v83) & 0x9DF8FDB4) + 1325170394) ^ 0x7ED9D416 ^ (v84 & 0xCFDA5533 | (v82 ^ 0xCFDA5533) & ~v84));
  LODWORD(v38) = HIDWORD(v38);
  v85 = (v38 >> 26) + v84;
  HIDWORD(v38) = v108 + v82 + 2114534007 + ((v84 - ((2 * v84) & 0x9CC603BA) - 832372259) ^ 0xD516DD34 ^ (v85 & 0xE48A2316 | (v83 ^ 0xE48A2316) & ~v85));
  LODWORD(v38) = HIDWORD(v38);
  v86 = (v38 >> 22) + v85;
  HIDWORD(v38) = v115 + v83 + 419092804 + ((v85 - ((2 * v85) & 0x88E16A8) + 71764820) ^ 0x9A6FB6F6 ^ (v86 & 0x61D7425D | (v84 ^ 0x61D7425D) & ~v86));
  LODWORD(v38) = HIDWORD(v38);
  v87 = (v38 >> 17) + v86;
  HIDWORD(v38) = v106 + v84 - 99991092 + ((v86 - ((2 * v86) & 0x36A725DC) + 458461934) ^ 0x10DBF46C ^ (v87 & 0xF477997D | (v85 ^ 0xF477997D) & ~v87));
  LODWORD(v38) = HIDWORD(v38);
  v88 = (v38 >> 11) + v87;
  HIDWORD(v38) = v113 + v85 + 73571931 + ((v87 - ((2 * v87) & 0xF9E70D52) + 2096334505) ^ 0x4FC5E3AA ^ (v88 & 0xCCC99AFC | (v86 ^ 0xCCC99AFC) & ~v88));
  LODWORD(v38) = HIDWORD(v38);
  v89 = (v38 >> 26) + v88;
  HIDWORD(v38) = v120 + v86 - 2096464066 + ((v88 - ((2 * v88) & 0x50FE068C) + 679412550) ^ 0xBF2B6716 ^ (v89 & 0x68AB9BAF | (v87 ^ 0x68AB9BAF) & ~v89));
  LODWORD(v38) = HIDWORD(v38);
  v90 = (v38 >> 22) + v89;
  HIDWORD(v38) = v111 + v87 + 848506033 + ((v89 - ((2 * v89) & 0xF0416DB2) - 132073767) ^ 0x49094229 ^ (v90 & 0x4ED60B0F | (v88 ^ 0x4ED60B0F) & ~v90));
  LODWORD(v38) = HIDWORD(v38);
  v91 = (v38 >> 17) + v90;
  HIDWORD(v38) = v118 + v88 + 23419934 + ((v90 - ((2 * v90) & 0xB77D1F8E) + 1539215303) ^ 0x183ECF6D ^ (v91 & 0xBC7FBF55 | (v89 ^ 0xBC7FBF55) & ~v91));
  LODWORD(v38) = HIDWORD(v38);
  v92 = (v38 >> 11) + v91;
  HIDWORD(v38) = v109 + v89 + 262916284 + ((v91 - ((2 * v91) & 0x1E43103C) + 253855774) ^ 0xA29660F4 ^ (v92 & 0x52481715 | (v90 ^ 0x52481715) & ~v92));
  LODWORD(v38) = HIDWORD(v38);
  v93 = (v38 >> 26) + v92;
  HIDWORD(v38) = v116 + v90 + 104788551 + ((v92 - ((2 * v92) & 0xE064FCFA) + 1882357373) ^ 0xEF367F26 ^ (v93 & 0x60FBFEA4 | (v91 ^ 0x60FBFEA4) & ~v93));
  LODWORD(v38) = HIDWORD(v38);
  v94 = (v38 >> 22) + v93;
  HIDWORD(v38) = v107 + v91 + 91319650 + ((v93 - ((2 * v93) & 0xFE725A0C) - 13030138) ^ 0x8C5EE147 ^ (v94 & 0x8C9833BE | (v92 ^ 0x8C9833BE) & ~v94));
  LODWORD(v38) = HIDWORD(v38);
  v95 = (v38 >> 17) + v94;
  HIDWORD(v38) = v114 + v92 - 1271208180 + ((v94 - ((2 * v94) & 0xC8B28F96) + 1683572683) ^ 0xD3CB2765 ^ (v95 & 0x486D9F51 | (v93 ^ 0x486D9F51) & ~v95));
  LODWORD(v38) = HIDWORD(v38);
  v96 = (v38 >> 11) + v95;
  *v16 += (((HIBYTE(v94) ^ v93 ^ 0x6A) - 40) ^ ((HIBYTE(v94) ^ v93 ^ 0x93) + 47) ^ ((HIBYTE(v94) ^ v93 ^ 0xF9) + 69)) + 66;
  v97 = ((((v93 >> 8) ^ 0xCE00F1E3) + 287408823) ^ (((v93 >> 8) ^ 0xF323D350) + 738369542) ^ (((v93 >> 8) ^ 0x3D2322B3) - 503164441)) + 2139670375 + HIBYTE(v94);
  LOBYTE(v90) = (v97 ^ 0xC3) & (2 * (v97 & 0x43)) ^ v97 & 0x43;
  LOBYTE(v97) = v97 ^ (2 * ((v97 ^ 0xC3) & (2 * (v97 ^ 0xC3)) & (4 * ((v97 ^ 0xC3) & (2 * (v97 ^ 0xC3)))) & (16 * ((v97 ^ 0xC3) & (2 * (v97 ^ 0xC3)) & (4 * v90) ^ v90)) ^ (v97 ^ 0xC3) & (2 * (v97 ^ 0xC3)) & (4 * v90) ^ v90));
  v16[1] += (((v97 ^ 0x66) - 75) ^ ((v97 ^ 9) - 36) ^ ((v97 ^ 0x2C) - 1)) + 110;
  v98 = (((HIWORD(v93) ^ 0x5CFCE38A) - 1491433646) ^ ((HIWORD(v93) ^ 0x974B8C0) - 225256420) ^ ((HIWORD(v93) ^ 0x55885B4A) - 1368506478)) - HIBYTE(v94) + 769289143;
  LOBYTE(v90) = (v98 ^ 0x69) & (2 * (v98 & 0x6D)) ^ v98 & 0x6D;
  LOBYTE(v2) = ((2 * (v98 ^ 0x23)) ^ 0x9C) & (v98 ^ 0x23) ^ (2 * (v98 ^ 0x23)) & 0x4E;
  LOBYTE(v98) = ((((BYTE2(v93) ^ 0x8A) + 82) ^ ((BYTE2(v93) ^ 0xC0) + 28) ^ ((BYTE2(v93) ^ 0x4A) - 110)) - HIBYTE(v94) - 73) ^ (2 * ((((4 * (v2 ^ 0x42)) ^ 0x30) & (v2 ^ 0x42) ^ (4 * (v2 ^ 0x42)) & 0x40) & (16 * ((v2 ^ 0xC) & (4 * v90) ^ v90)) ^ (v2 ^ 0xC) & (4 * v90) ^ v90));
  v16[2] += (((v98 ^ 0x7D) - 26) ^ ((v98 ^ 0x40) - 39) ^ ((v98 ^ 0x50) - 55)) + 10;
  v99 = (v94 ^ v93) >> 24;
  result = 53;
  v16[3] += (((v99 ^ 0x14) - 88) ^ ((v99 ^ 0x35) - 121) ^ ((v99 ^ 0x21) - 109)) + 76;
  LOBYTE(v99) = v96 + HIBYTE(v94) - ((2 * (v96 + HIBYTE(v94))) & 0x7A) + 61;
  v16[4] += (((v99 ^ 0xC5) + 31) ^ ((v99 ^ 0xC1) + 27) ^ ((v99 ^ 0x39) - 29)) + 25;
  v101 = ((((v96 >> 8) ^ 0x3BE01D5F) - 172925435) ^ (((v96 >> 8) ^ 0x6217F4A4) - 1404651520) ^ (((v96 >> 8) ^ 0x59F7E9FB) - 1750685023)) - HIBYTE(v94) + 1160644061;
  LOBYTE(v91) = (v101 ^ 0xF6) & (2 * (v101 & 0xC7)) ^ v101 & 0xC7;
  LOBYTE(v2) = ((2 * (v101 ^ 0xF8)) ^ 0x7E) & (v101 ^ 0xF8) ^ (2 * (v101 ^ 0xF8)) & 0x3E;
  LOBYTE(v101) = ((((BYTE1(v96) ^ 0x5F) + 5) ^ BYTE1(v96) ^ 0xA4 ^ ((BYTE1(v96) ^ 0xFB) - 95)) - HIBYTE(v94) - 35) ^ (2 * (((4 * v2) & 0x38 ^ 0x33 ^ ((4 * v2) ^ 0xFC) & v2) & (16 * ((v2 ^ 0x3C) & (4 * v91) ^ v91)) ^ (v2 ^ 0x3C) & (4 * v91) ^ v91));
  v16[5] = v16[5] + (((v101 ^ 0x66) - 102) ^ ((v101 ^ 0x72) - 114) ^ ((v101 ^ 0xD3) + 45)) - 57;
  v102 = v16;
  v16[6] += (((HIBYTE(v94) ^ BYTE2(v96) ^ 0xCE) + 86) ^ ((HIBYTE(v94) ^ BYTE2(v96) ^ 0x4A) - 46) ^ ((HIBYTE(v94) ^ BYTE2(v96) ^ 0x84) + 32)) + 100;
  v16[7] = v16[7] + (((((v96 ^ v94) >> 24) ^ 0x5B) + 41) ^ ((((v96 ^ v94) >> 24) ^ 0x1C) + 112) ^ ((((v96 ^ v94) >> 24) ^ 0x47) + 53)) - 116;
  LOBYTE(v101) = v95 - HIBYTE(v94) - ((2 * (v95 - HIBYTE(v94))) & 0x40) + 32;
  v16[8] = v16[8] + (((v101 ^ 0xD3) - 127) ^ ((v101 ^ 0x7D) + 47) ^ ((v101 ^ 0x8E) - 34)) - 116;
  v16[9] += (((HIBYTE(v94) ^ BYTE1(v95) ^ 0x34) - 14) ^ (58 - (HIBYTE(v94) ^ BYTE1(v95))) ^ ((HIBYTE(v94) ^ BYTE1(v95) ^ 0xCB) + 15)) + 58;
  v16[10] += (((HIBYTE(v94) ^ BYTE2(v95) ^ 0x37) - 73) ^ ((HIBYTE(v94) ^ BYTE2(v95) ^ 0x4E) - 48) ^ ((HIBYTE(v94) ^ BYTE2(v95) ^ 0x79) - 7)) + 126;
  v103 = HIBYTE(v94) - 486655876 + (((HIBYTE(v95) ^ 0x6C69A4E) + 1224834677) ^ ((HIBYTE(v95) ^ 0x3D7C14FB) + 1924919490) ^ ((HIBYTE(v95) ^ 0x3BBA8EB5) + 1954376336));
  LOBYTE(v16) = (v103 ^ 0x25) & (2 * (v103 & 0x49)) ^ v103 & 0x49;
  LOBYTE(v2) = ((2 * (v103 ^ 0x25)) ^ 0xD8) & (v103 ^ 0x25) ^ (2 * (v103 ^ 0x25)) & 0x6C;
  LOBYTE(v103) = (HIBYTE(v94) + 124 + (((HIBYTE(v95) ^ 0x4E) + 117) ^ ((HIBYTE(v95) ^ 0xFB) - 62) ^ ((HIBYTE(v95) ^ 0xB5) - 112))) ^ (2 * ((v2 ^ 0x48) & (4 * v16) ^ v16 ^ 0x6C ^ (((4 * (v2 ^ 0x24)) ^ 0xB0) & (v2 ^ 0x24) ^ (4 * (v2 ^ 0x24)) & 0x60 ^ 0x20) & (16 * ((v2 ^ 0x48) & (4 * v16) ^ v16))));
  v102[11] = v102[11] + (((v103 ^ 0xA0) + 78) ^ ((v103 ^ 0xF8) + 22) ^ ((v103 ^ 0xC9) + 37)) - 125;
  v102[12] = v102[12] + (((HIBYTE(v94) ^ v94 ^ 0xB3) - 35) ^ ((HIBYTE(v94) ^ v94 ^ 0x52) + 62) ^ ((HIBYTE(v94) ^ v94 ^ 0xE1) - 113)) - 112;
  v102[13] += (((HIBYTE(v94) ^ BYTE1(v94) ^ 0x9C) + 29) ^ ((HIBYTE(v94) ^ BYTE1(v94) ^ 0xA8) + 41) ^ ((HIBYTE(v94) ^ BYTE1(v94) ^ 0x34) - 75)) + 127;
  v104 = HIBYTE(v94) - 834053476 + (((HIWORD(v94) ^ 0xD00380D) + 1472333751) ^ ((HIWORD(v94) ^ 0x3C118F50) + 1725149420) ^ ((HIWORD(v94) ^ 0x3111B75D) + 1809025255));
  LOBYTE(v104) = ((v104 ^ 0x5E) - 6) ^ v104 ^ ((v104 ^ 0xA6) + 2) ^ ((v104 ^ 0x4B) - 19) ^ ((v104 ^ 0xEB) + 77);
  v102[14] = v102[14] + (((v104 ^ 0x35) + 116) ^ ((v104 ^ 0xC8) - 113) ^ ((v104 ^ 0xA5) - 28)) - 31;
  return result;
}

void sub_1001B8F0C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (*a1 ^ 0xF6FBCDFEFB8FBDFFLL) + 0x9043201B792D60ELL + ((2 * *a1) & 0xEDF79BFDF71F7BFELL);
  v4 = v3 < 0xB322940D;
  v5 = v3 > v2 + 3005387789u;
  if (v2 > 0xFFFFFFFF4CDD6BF2 != v4)
  {
    v5 = v4;
  }

  v1 = *(a1 + 8) ^ (1012831759 * ((2 * (a1 & 0x3B1FF580) - a1 - 991950209) ^ 0xD4731CF5));
  __asm { BRAA            X15, X17 }
}

uint64_t sub_1001B9138(uint64_t a1)
{
  v4 = v3 ^ 0x3A70;
  (*(v2 + 8 * (v4 | 0x4A88)))(a1, v1, 4096);
  return (*(v2 + 8 * v4))();
}

uint64_t sub_1001B932C@<X0>(uint64_t a1@<X8>)
{
  v9 = v3 < v4;
  *(v8 - 168 + (v6 - 2146631674)) = *(a1 + v1 + 4) - ((*(a1 + v1 + 4) << (v2 - 51)) & 0xBE) + 95;
  v10 = ((2 * (v1 + 1)) & 0xFC) + ((v1 + 1) ^ v5);
  if (v9 == v10 < v5)
  {
    v9 = v3 > v10 + 1655766996;
  }

  v11 = v1 < 0xB;
  v12 = v1 < 0xB && v9;
  return (*(v7 + 8 * (v12 ^ v2 ^ 1)))(v11);
}

uint64_t sub_1001B94D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x228] = *a4;
  LODWORD(STACK[0x40C]) = v66;
  *a4 = 0;
  *(a4 + 8) = 0xE9D5C711E9D5C711;
  v68 = *(a4 + 24);
  v69 = *(a4 + 20) & ((v65 + 1375382336) & 0xAE052FBF ^ 0xFFFFDC4A);
  *(a4 + 16) = -371865839;
  *(a4 + 20) = v69;
  return (*(v67 + 8 * (((v68 == -371865839) * (v65 - 13972)) ^ v65)))(a1, a2, a3, a65);
}

uint64_t sub_1001B95A0@<X0>(int a1@<W8>)
{
  *(v1 + 16) = 0x981390C2FED9246;
  *(v1 + 24) = 0x981390C2FED9246;
  *v1 = 0x981390C2FED9246;
  *(v1 + 8) = 0;
  *(v1 + 36) = 0;
  *(v1 + 44) = 0x5633245A00000000;
  *(v1 + 52) = 3923101457;
  *(v1 + 60) = 0;
  *(v1 + 68) = 217654522;
  return (*(v2 + 8 * a1))();
}

uint64_t sub_1001B95F0@<X0>(uint64_t a1@<X8>)
{
  v9 = v7 - 1;
  *(a1 + v9) ^= *(v1 + (v9 & 0xF)) ^ *((v9 & 0xF) + v2 + 1) ^ ((v9 & 0xF) * v5) ^ *((v9 & 0xF) + v3 + 3);
  return (*(v8 + 8 * (((v9 == 0) * v6) ^ v4)))();
}

uint64_t sub_1001B9640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int16 a13, unsigned int a14, uint64_t a15, __int16 a16, __int16 a17)
{
  a13 = v20 ^ ((((~v22 | 0x106) + (v22 | 0xFEF9)) ^ 0xE8E8) * v17);
  a14 = (v19 - 4718) ^ ((((~v22 | 0x87970106) + (v22 | 0x7868FEF9)) ^ 0xF627E8E8) * v17);
  a15 = v18;
  a17 = 5767 - (((~v22 | 0x106) + (v22 | 0xFEF9)) ^ 0xE8E8) * v17;
  v23 = (*(a12 + 8 * (v19 + 26048)))(&a13);
  return (*(a12 + 8 * (((((v19 + 2017897861) | 0x8580A144) ^ 0xFDC7B3DD) * (v21 != 2)) ^ v19)))(v23);
}

uint64_t sub_1001B973C(uint64_t a1)
{
  v7 = 17902189 * ((((v6 - 144) | 0x9886E541) + (~(v6 - 144) | 0x67791ABE)) ^ 0x16C9F350);
  *(v6 - 136) = v1;
  *(v6 - 128) = a1;
  *(v6 - 120) = (v4 + 1274049731 + ((v5 + 431721545) & 0xE6447CF5)) ^ v7;
  *(v6 - 112) = v5 - v7 + 33217;
  *(v6 - 144) = v2;
  (*(v3 + 8 * (v5 ^ 0x8B1B)))(v6 - 144);
  return (*(v3 + 8 * (((*(v6 - 116) == -371865839) * (((v5 + 431721545) ^ 0xD0EA5BD3) + 917403629)) | v5)))(a1);
}

uint64_t sub_1001B9898()
{
  v7 = v5 + v3;
  v8 = (v3 - 1) & 0xF;
  v9 = v8 + ((v4 + 21221) ^ 0xB804) - v3;
  v10 = v0 + v9;
  v11 = ((472 * (v4 ^ 0x651Bu)) ^ 0x6CC9) + v8;
  v12 = v0 + v11;
  v13 = v2 + v9;
  v14 = v2 + v11;
  v15 = v8 + v1 + 5;
  v17 = v10 < v5 + v3 && v12 > v5;
  v19 = v13 < v7 && v14 > v5 || v17;
  if (v15 <= v5 || v15 - v3 >= v7)
  {
    v21 = v19;
  }

  else
  {
    v21 = 1;
  }

  return (*(v6 + 8 * ((19 * (v21 ^ 1)) ^ v4)))();
}

void sub_1001B9A88(uint64_t a1)
{
  v1 = *(a1 + 8) + 353670337 * ((2 * (a1 & 0x5B4CF54C) - a1 - 1531770189) ^ 0x1092F28E);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1001B9C1C@<X0>(uint64_t a1@<X8>)
{
  v8 = (((*(v1 + 8) ^ 0xBC42B0DA4436B82DLL) + v5) ^ ((*(v1 + 8) ^ 0x691094917D144471) + ((v2 - 25340) ^ 0x96EF6B6E82EBDEAELL)) ^ ((*(v1 + 8) ^ 0xDCD31D4716CFE89FLL ^ (v2 - 95742064) & 0x5B4A6D7) + 0x232CE2B8E93091E6)) + v6;
  v9 = v8 < v4;
  v10 = v8 > v3;
  if (v3 < v4 != v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  return (*(a1 + 8 * ((!v11 * v7) ^ v2)))();
}

uint64_t sub_1001B9DD8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5, char a6, char a7, char a8)
{
  *(a4 + a1) = (a3 ^ ((a3 ^ v9) + a6) ^ ((a3 ^ a7) + a8) ^ ((a3 ^ v13) + v14) ^ (((((v11 + 0x80) | v8) + v15) ^ a3) + 79) ^ v16) * (a3 - 59);
  if (v10 < a5 != a1 + a2 > v12)
  {
    v19 = a1 + a2 > v12;
  }

  else
  {
    v19 = a1 + v17 > v10;
  }

  return (*(v18 + 8 * ((56 * v19) ^ v11)))(a1 - 1);
}

uint64_t sub_1001B9F94@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v18 = ((v10 ^ 0x94) - 36) ^ v10 ^ ((v10 ^ a6) + a7) ^ ((v10 ^ a8) + v13) ^ ((((v9 ^ 0x6E) - 118) ^ v10) - 3);
  v19 = (((v18 ^ v16) + v17) ^ ((v18 ^ v12) + a1) ^ ((v18 ^ a2) + a3)) + a4;
  v20 = v11 - 1;
  STACK[0x238] = v20;
  *(a9 + v20) = v19 * (v10 + v15) - 79 * (127 * v19 + 8 * (v10 + v15)) + a5;
  return (*(v14 + 8 * (((4 * (STACK[0x238] == 0)) | (16 * (STACK[0x238] == 0))) ^ v9)))();
}

uint64_t sub_1001BA34C@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, int a3@<W8>)
{
  v10 = ((v5 + v3) ^ v6) + v4;
  *(a2 + v10) = *(a1 + v10) ^ v7;
  return (*(v9 + 8 * (((v10 == 0) * v8) ^ a3)))();
}

void sub_1001BA3B4()
{
  if (v0 == 1175991368)
  {
    v2 = -371865839;
  }

  else
  {
    v2 = 371891401;
  }

  *(v1 + 28) = v2;
}

uint64_t sub_1001BA468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v70 + 8) = a1 + 0xD4D532B5C87C912;
  *a66 = a1 + 0xD4D532B5C87C912;
  a66[1] = 0x3CE25E0EC51FFCF8 - v69;
  a66[2] = ((6 * (v66 ^ 0x96A4) + (LOBYTE(STACK[0x5DF]) ^ 0xA7AC6FC01C8A6E6) - 0xA7AC6FC01C8CCD2) ^ ((LOBYTE(STACK[0x5DF]) ^ 0x5A6CC8675E18807DLL) - 0x5A6CC8675E18807DLL) ^ ((LOBYTE(STACK[0x5DF]) ^ 0x50160E9B5FD0265DLL) - 0x50160E9B5FD0265DLL)) + 0x73B4913AF7D02F05;
  *a65 = 0x3CE25E0EC5200378;
  *(STACK[0x308] + 40) += v67;
  return (*(v68 + 8 * v66))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57);
}

uint64_t sub_1001BA5E0()
{
  v5 = v0 + 4;
  STACK[0x458] = v5;
  if (v5 <= v3)
  {
    v6 = v2;
  }

  else
  {
    v6 = 371891407;
  }

  LODWORD(STACK[0x464]) = v6;
  return (*(v4 + 8 * ((9555 * (v6 == (v1 ^ 0xE9D527B7) + v1 + 7898)) ^ v1)))();
}

uint64_t sub_1001BA638(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 - 192) = *a3;
  *(v4 - 191) = a3[1];
  *(v4 - 190) = a3[2];
  *(v4 - 189) = a3[3];
  *(v4 - 188) = a3[4];
  *(v4 - 187) = a3[5];
  *(v4 - 186) = a3[6];
  *(v4 - 185) = a3[7];
  *(v4 - 184) = a3[8];
  *(v4 - 183) = a3[9];
  *(v4 - 182) = a3[10];
  *(v4 - 181) = a3[11];
  *(v4 - 180) = a3[12];
  *(v4 - 179) = a3[13];
  *(v4 - 178) = a3[14];
  *(v4 - 177) = a3[15];
  return (*(a2 + 8 * v3))();
}

void sub_1001BA6D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = (*(a1 + 32) ^ 0x7F697BFBF7F2EF5FLL) - 0x7F697BFB03330098 + ((2 * *(a1 + 32)) & 0xFED2F7F7EFE5DEBELL);
  v4 = v3 < 0xF4BFEEC7;
  v5 = v3 > v2 + 4106219207u;
  if (v2 > 0xFFFFFFFF0B401138 != v4)
  {
    v5 = v4;
  }

  v1 = *(a1 + 24) + 139493411 * (((a1 | 0xDC247F62) - (a1 & 0xDC247F62)) ^ 0xD0099E27);
  __asm { BRAA            X0, X17 }
}

uint64_t sub_1001BA8AC(double a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  a2.n128_u16[0] = 17733;
  a2.n128_u8[2] = 69;
  a2.n128_u8[3] = 69;
  a2.n128_u8[4] = 69;
  a2.n128_u8[5] = 69;
  a2.n128_u8[6] = 69;
  a2.n128_u8[7] = 69;
  a3.n128_u16[0] = 24415;
  a3.n128_u8[2] = 95;
  a3.n128_u8[3] = 95;
  a3.n128_u8[4] = 95;
  a3.n128_u8[5] = 95;
  a3.n128_u8[6] = 95;
  a3.n128_u8[7] = 95;
  return (*(v10 + 8 * (a8 - 385612972)))(8 - (v8 & 0x18), v8 - 5047, 562 * (a8 ^ 0x16FC96C2u), v8 + v9 - 8, (a8 - 385612992), xmmword_100F523B0, a2, a3);
}

uint64_t sub_1001BA9D8(__n128 a1)
{
  v5.n128_u64[0] = (v1 + 13) & 0xF;
  v5.n128_u64[1] = (v1 + 12) & 0xF;
  v6.n128_u64[0] = (v1 + 11) & 0xF;
  v6.n128_u64[1] = (v1 + 10) & 0xF;
  v7.n128_u64[0] = (v1 + 9) & 0xF;
  v7.n128_u64[1] = v1 & 0xF ^ 8;
  v10.val[0].i64[0] = (v1 + 7) & 0xF;
  v10.val[0].i64[1] = (v1 + 6) & 0xF;
  v10.val[1].i64[0] = (v1 + 5) & 0xF;
  v10.val[1].i64[1] = (v1 + 4) & 0xF;
  v10.val[2].i64[0] = (v1 + 3) & 0xF;
  v10.val[2].i64[1] = (v1 + 2) & 0xF;
  v10.val[3].i64[0] = (v1 + 1) & 0xF;
  v10.val[3].i64[1] = v1 & 0xF;
  v8.n128_u64[0] = 0x4B4B4B4B4B4B4B4BLL;
  v8.n128_u64[1] = 0x4B4B4B4B4B4B4B4BLL;
  return (*(v4 + 8 * v2))(v3 - 15, (v1 + 14) & 0xF, (v2 + 411981893) & 0xE771FF7A, (v1 & 0x10) - 16, -32379, 20493, a1, v5, v6, v7, xmmword_100BC76B0, vqtbl4q_s8(v10, xmmword_100BC76B0), v8);
}

uint64_t sub_1001BAB54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58)
{
  v60 = *(v58 + 8 * (a9 - 1777273969));
  *(v59 - 220) = a58;
  return v60(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49);
}

uint64_t sub_1001BAB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, __int16 a59, __int16 a60, __int16 a61, __int16 a62, __int16 a63)
{
  v66 = (v63 + 28083);
  v67 = (((a63 + ((v64 - 26483) & 0xFF64 ^ 0xD5A1)) ^ (((v64 - 26483) ^ 0x3F2C) + a61) ^ a59) + 7249);
  v68 = (v66 < 0xA43B) ^ (v67 < 0xA43B);
  v69 = v66 > v67;
  if (v68)
  {
    v69 = v66 < 0xA43B;
  }

  return (*(v65 + 8 * (((2 * !v69) | (16 * !v69)) ^ v64)))();
}

uint64_t sub_1001BAC34(int a1, int8x16_t a2, int8x8_t a3, int8x8_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v16.val[0].i64[0] = (v12 + v13 - 1) & 0xF;
  v16.val[0].i64[1] = (v12 + v13 + a1) & 0xF;
  v16.val[1].i64[0] = (v12 + v13 + 13) & 0xF;
  v16.val[1].i64[1] = (v12 + v13 + 12) & 0xF;
  v16.val[2].i64[0] = (v12 + v13 + 11) & 0xF;
  v16.val[2].i64[1] = (v12 + v13 + 10) & 0xF;
  v16.val[3].i64[0] = (v12 + v13 + 9) & 0xF;
  v16.val[3].i64[1] = (v12 + v13) & 0xF ^ 8;
  *(a7 + v13) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a7 + v13), *(v10 + v16.val[0].i64[0] - 7)), veor_s8(*(v9 + v16.val[0].i64[0] - 7), *(v16.val[0].i64[0] + v11 - 3)))), a4), vmul_s8(*&vqtbl4q_s8(v16, a2), a3)));
  return (*(v14 + 8 * (((v8 == v13) * a8) ^ a1)))();
}

uint64_t sub_1001BAD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  *a6 = a38;
  a6[1] = v48;
  a6[2] = a26;
  v52 = *(v47 + 8 * (((a45 == 0) * ((v45 - 37009) ^ 0x1E0E)) | v45));
  *(v51 - 196) = a4;
  *(v51 - 184) = v49;
  *(v51 - 248) = v48;
  *(v51 - 216) = v46;
  return v52(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, v50, a42);
}

uint64_t sub_1001BAEEC@<X0>(unint64_t a1@<X3>, int a2@<W4>, unsigned int a3@<W5>, unint64_t a4@<X6>, unint64_t a5@<X7>, unint64_t a6@<X8>)
{
  v10 = a6 < a1;
  if (v10 == v6 + 1 > a5)
  {
    v10 = (((v9 + a2) | a3) ^ a4) + v6 < a6;
  }

  return (*(v7 + 8 * ((v10 * v8) ^ v9)))();
}

uint64_t sub_1001BAF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, char a22)
{
  v24 = v22 + 5420;
  v25 = ((HIDWORD(a12) + 63189584) ^ 0xEC473EBF) & (2 * ((HIDWORD(a12) + 63189584) & 0xCC873EBF)) ^ (HIDWORD(a12) + 63189584) & 0xCC873EBF;
  v26 = ((((HIDWORD(a12) + 63189584) ^ v24 ^ 0x7C4B5E80) << (a22 - 127)) ^ 0x61982ADC) & ((HIDWORD(a12) + 63189584) ^ v24 ^ 0x7C4B5E80) ^ (((HIDWORD(a12) + 63189584) ^ v24 ^ 0x7C4B5E80) << (a22 - 127)) & 0xB0CC156E;
  v27 = v26 ^ 0x90441522;
  v28 = (v26 ^ 0x2008004C) & (4 * v25) ^ v25;
  v29 = ((4 * v27) ^ 0xC33055B8) & v27 ^ (4 * v27) & 0xB0CC156C;
  v30 = (v29 ^ 0x80001520) & (16 * v28) ^ v28;
  v31 = ((16 * (v29 ^ 0x30CC0046)) ^ 0xCC156E0) & (v29 ^ 0x30CC0046) ^ (16 * (v29 ^ 0x30CC0046)) & 0xB0CC1560;
  v32 = v30 ^ 0xB0CC156E ^ (v31 ^ 0xC01400) & (v30 << 8);
  v33 = (HIDWORD(a12) + 63189584) ^ (2 * ((v32 << 16) & 0x30CC0000 ^ v32 ^ ((v32 << 16) ^ 0x156E0000) & (((v31 ^ 0xB00C010E) << 8) & 0x30CC0000 ^ 0x30C80000 ^ (((v31 ^ 0xB00C010E) << 8) ^ 0x4C150000) & (v31 ^ 0xB00C010E))));
  v35 = v33 != v22 - 1920551874 && (((12512 * ((v22 + 5420) ^ 0x7555)) ^ 0xC38F) & v33) == 3;
  return (*(v23 + 8 * ((15 * v35) ^ v24)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t sub_1001BB158@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + 8) + 24 * a1;
  *v4 = 1407313457;
  *(v4 + 8) = 0x53AC680EDC603FD5;
  *(v4 + 16) = 0;
  LODWORD(v4) = a1 + 1 >= *(v2 + 4);
  return (*(v3 + 8 * (((4 * v4) | (8 * v4)) ^ v1)))();
}

uint64_t sub_1001BB1B4()
{
  v6 = *(v5 - 188 + (*(v5 - 188) & 3));
  *v1 = v3;
  v7 = *(v0 + 8);
  v8 = v7 - 0x3CE25E0EC5200378;
  if (v7 - 0x3CE25E0EC5200378 < 0)
  {
    v8 = v7 - 0x3CE25E0EC5200375;
  }

  v9 = ((v6 % ((((v2 - 826748833) & 0x31473B7B) + (v8 >> 2) - ((v8 >> 2 << ((v2 ^ 0x21u) + 96)) & 0xF9F4CA06) + 2096771496) ^ 0x7CFA6503)) + 43) & 0x1FC;
  v10 = ((v7 ^ 0xF32D7807) - 906853247) ^ v7 ^ ((v7 ^ 0x49B6B2E2) + 1936281190) ^ ((v7 ^ 0x82450643) - 1197802811) ^ ((v7 ^ 0xFDFECFDE) - 954125478);
  return (*(v4 + 8 * ((27799 * ((((v10 ^ 0x5BA0A33D) - 792705025) ^ ((v10 ^ 0xEAE94BF5) + 1636413239) ^ ((v10 ^ 0x7469EBB0) - 16183436)) - (((v9 ^ 0x46E50C6A) - 1722945562) ^ ((v9 ^ 0x772CDABA) - 1467729610) ^ ((v9 ^ 0x31C9D6D0) - 295619232)) - 1855456325 < 0x7FFFFFFF)) ^ v2)))();
}