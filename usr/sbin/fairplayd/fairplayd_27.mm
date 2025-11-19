void sub_100808604()
{
  if (v0 == 1141460390)
  {
    v1 = -371865839;
  }

  else
  {
    v1 = 371891401;
  }

  *(v2 + 48) = v1;
}

uint64_t sub_100808668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v17 = *(a1 + 8 * v8);
  *&STACK[0x370] = vdupq_n_s64(0x38uLL);
  *&STACK[0x380] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x440] = vdupq_n_s64(0xD192833E5E29633CLL);
  *&STACK[0x430] = vdupq_n_s64(v11);
  *&STACK[0x360] = vdupq_n_s64(v12);
  *&STACK[0x420] = vdupq_n_s64(v9);
  *&STACK[0x410] = vdupq_n_s64(a8);
  *&STACK[0x3F0] = vdupq_n_s64(v10);
  *&STACK[0x400] = vdupq_n_s64(v15);
  *&STACK[0x3D0] = vdupq_n_s64(0xFD0A19BB2FE13205);
  *&STACK[0x3E0] = vdupq_n_s64(v13);
  *&STACK[0x3C0] = vdupq_n_s64(0x19BBA1D59C2A28CuLL);
  *&STACK[0x570] = vdupq_n_s64(0xC010B7DE50C1D858);
  *&STACK[0x560] = vdupq_n_s64(0x9FF7A410D79F13D4);
  *&STACK[0x550] = vdupq_n_s64(v16);
  *&STACK[0x540] = vdupq_n_s64(0x2C3F70FBF6F9ADA3uLL);
  *&STACK[0x530] = vdupq_n_s64(0x1B5DE9094BAFA51AuLL);
  *&STACK[0x3A0] = vdupq_n_s64(0xD6916AF990E79581);
  *&STACK[0x3B0] = vdupq_n_s64(0xC437C7327FD12F34);
  *&STACK[0x390] = vdupq_n_s64(0x96E95066F186A7EuLL);
  *&STACK[0x520] = vdupq_n_s64(0x1939E534EAB5C204uLL);
  *&STACK[0x510] = vdupq_n_s64(0x1E1BFCD71692F676uLL);
  *&STACK[0x500] = vdupq_n_s64(0xAA90AB1B91AE5A78);
  *&STACK[0x340] = vdupq_n_s64(0x31E9BDE7666BA597uLL);
  *&STACK[0x350] = vdupq_n_s64(0x14BA074A2F986FE5uLL);
  *&STACK[0x320] = vdupq_n_s64(0x1DDE35A49FCFCB0FuLL);
  *&STACK[0x330] = vdupq_n_s64(v14);
  *&STACK[0x4F0] = vdupq_n_s64(0xBD7D2DE9C10AA16ALL);
  *&STACK[0x4E0] = vdupq_n_s64(0xCA610B0491486356);
  *&STACK[0x4C0] = vdupq_n_s64(0x9ACF7A7DB75BCE55);
  *&STACK[0x310] = xmmword_100F523B0;
  *&STACK[0x4B0] = vdupq_n_s64(0xE7800595F7E7F1C2);
  return v17();
}

uint64_t sub_10080895C@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W5>, uint64_t a6@<X6>, int a7@<W8>)
{
  v11 = *(a3 + v7 + 16);
  v12 = (a6 + (a7 + v7 + a5));
  *v12 = *(a3 + v7);
  v12[1] = v11;
  return (*(v10 + 8 * ((((v9 ^ a1) + v7 == a4) * a2) ^ v8)))();
}

uint64_t sub_100808998(char a1, char a2, char a3, char a4, char a5, char a6, char a7, char a8)
{
  v19 = v10 - 1;
  v20 = ((v9 ^ 0x88) + 113) ^ v9 ^ ((v9 ^ a6) + a7) ^ ((v9 ^ a8) + v11) ^ ((v8 ^ v9 ^ 0x97) + a5);
  v21 = (((v20 ^ a1) + a2) ^ ((v20 ^ a3) + a4) ^ ((v20 ^ v15) + v16)) + v17;
  *(&STACK[0x54C] + v19) = v21 * (v9 + v12) + (-10 * v21 + (v9 + v12) * v18) * v14 + 2;
  return (*(v13 + 8 * ((49417 * (v19 == 0)) ^ v8)))();
}

uint64_t sub_100808A50(int a1, char a2, char a3, int a4)
{
  v14 = *(v6 + v4);
  v15 = *(v12 + v4);
  v16 = v14 & v7 ^ v8;
  v17 = v15 & 2 | v10;
  v18 = v15 ^ v14 ^ (2 * (v17 ^ v16 ^ (v15 ^ 0x38) & (2 * ((v15 ^ 0x38) & (2 * ((v15 ^ 0x38) & (2 * ((v15 ^ 0x38) & (2 * ((v15 ^ 0x38) & (2 * v17) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ (v14 ^ a1) & (2 * ((v14 ^ a1) & (2 * ((v14 ^ a1) & (2 * ((((v10 ^ (2 * (v16 ^ v14 & v9))) & (v14 ^ a1) ^ v16) << (v13 ^ v9)) & (v14 ^ a1) ^ v16)) ^ v16)) ^ v16))));
  *(v5 + v4) = (((v18 ^ a2) + 125) ^ ((v18 ^ a3) + 100) ^ ((v18 ^ 0x55) - 107)) - 70;
  return (*(v11 + 8 * (((v4 == 13) * a4) ^ v13)))();
}

uint64_t sub_100808B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[98] = v9[68];
  v9[128] = *(a8 + 8 * v8);
  return (*(a8 + 8 * ((32394 * ((v8 ^ 0x992B74D5) + v8 == 2126369606)) ^ (v8 + 8095))))();
}

uint64_t sub_100808C14(int8x16_t a1, int8x8_t a2, int8x8_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, char a8, uint64_t a9, char a10, uint64_t a11)
{
  v20 = (a5 + v18 - 1) & 0xF;
  v23.val[0].i64[0] = v20;
  v23.val[0].i64[1] = (a5 + v18 + 14) & 0xF;
  v23.val[1].i64[0] = (a5 + v18 + 13) & 0xF;
  v23.val[1].i64[1] = (a5 + v18 + 12) & 0xF;
  v23.val[2].i64[0] = (a5 + a10 + a8) & 0xF;
  v23.val[2].i64[1] = (a5 + v18 + 10) & 0xF;
  v23.val[3].i64[0] = (a5 + v18 + 9) & 0xF;
  v23.val[3].i64[1] = (a5 + v18) & 0xF ^ 8;
  v21 = vqtbl4q_s8(v23, a1).u64[0];
  *(a11 + a5) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(veor_s8(*(v13 + v20 - 7), *(a11 + a5)), veor_s8(*(v20 + v15 - 3), *(v12 + v20 - 7))), veor_s8(veor_s8(*(v14 + v20 - 7), *(v11 + v20 - 7)), *(v16 + v20 - 7)))), vmul_s8(v21, a2)), vmul_s8(v21, a3)));
  return (*(v19 + 8 * (((a5 == a9) * v17) ^ a6)))();
}

uint64_t sub_100808DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int a59)
{
  v60 = (a59 - 817785349);
  STACK[0x580] = v60 ^ 0x3E77F9DF75FFEE17;
  STACK[0x570] = (2 * v60) & 0xEBFFDC2ELL;
  v61 = ((((a23 + 1871755246) & 0x906FB3AE) - 183996711) ^ (1242140752 - v59)) < 8;
  return (*(a8 + 8 * (((2 * v61) | (4 * v61)) ^ a23)))();
}

uint64_t sub_100808EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v27 = STACK[0x2B0];
  v28 = STACK[0x2B0] < 0xF73DD26D;
  v29 = (STACK[0x318] - 33762) | 0x30;
  v30 = STACK[0x318] - 8345;
  LODWORD(STACK[0xA14]) = v25;
  v31 = a25 + (v25 ^ 0xE9D5C711);
  STACK[0xA18] = v31;
  v32 = v26;
  v33 = v31 + v29 + 4148022713;
  v34 = v31 > 0xFFFFFFFF08C22D92;
  v35 = v33 > v27;
  if (v28 != v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = v35;
  }

  return (*(v32 + 8 * ((41 * v36) ^ v30)))();
}

uint64_t sub_100808F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  (*(v10 + 8 * (v11 ^ 0x6E0F)))(&a10, 0, sub_100780900, a1);
  v12 = (*(v10 + 8 * (v11 ^ 0x6F22)))(a10);
  return (*(v10 + 8 * v11))(v12);
}

uint64_t sub_100808FEC@<X0>(int a1@<W0>, char a2@<W8>)
{
  if (a2)
  {
    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  return (*(v6 + 8 * (((v4 == 0) * v5) ^ v2)))((v7 + (a1 + v3) * (a1 + v3) - a1 * a1 - v3 * v3));
}

uint64_t sub_100809104(int a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, unint64_t *a7, unsigned __int8 *a8)
{
  LODWORD(STACK[0xEC8]) = a1;
  v23 = (a1 + 1673206505) & 0x9C44ED3B;
  v24 = (v21 - 184);
  *v24 = v9;
  v24[1] = v10;
  STACK[0xED0] = v23;
  STACK[0xAF0] = v8;
  LODWORD(STACK[0xEB8]) = (*v8 ^ (v23 + 2079157445)) - 170469531 + ((2 * *v8) & 0xF7DBF3FE);
  STACK[0xD60] = a7;
  v25 = *a7;
  STACK[0xBD8] = v17;
  v26 = *v17;
  STACK[0xB30] = a5;
  STACK[0xED8] = v22;
  v27 = *a5;
  v28 = *(v25 + 91);
  v29 = v19;
  v30 = v25;
  STACK[0xB70] = v11;
  v31 = *v11;
  v32 = (((v28 ^ 0x4E) + 91) ^ ((v28 ^ 0xB7) - 92) ^ ((v28 ^ 0x94) - 127)) - 75;
  v33 = v32 & 0xD9 ^ 0xA3;
  v34 = (v32 ^ 0x1A) & (2 * ((v32 ^ 0x1A) & (2 * ((v32 ^ 0x1A) & (2 * ((v32 ^ 0x1A) & (2 * ((v32 ^ 0x1A) & (2 * (((2 * v32) & 0x36 ^ 0x42) & (v32 ^ 0x12) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33;
  v35 = *(a6 + 8 * (a1 ^ 0x8BE9));
  v36 = *(v27 + 13);
  v37 = -91 * v36 + 33;
  v38 = v37 + (v36 << 6) + 0x80;
  v39 = v38 & 0x9F ^ 0xA0;
  STACK[0xEB0] = v35 + ((v38 ^ (2 * ((v38 ^ 0x5E) & (2 * ((v38 ^ 0x5E) & (2 * ((v38 ^ 0x5E) & (2 * ((v38 ^ 0x5E) & (2 * ((v38 ^ 0x5E) & (2 * ((v38 ^ 0x5E) & (2 * v37) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39))) ^ 0xF9u);
  v41 = v12;
  v42 = v13;
  STACK[0xEC0] = v35 - 570901361;
  v43 = *(v35 - 570901361 + (v28 ^ 0x7D));
  v44 = ((v31 - ((2 * v31) & 0x1CA)) << 8) + 0x3FBBB2F897F3E500;
  STACK[0xB68] = v16;
  v45 = *v16;
  STACK[0xB78] = a8;
  LODWORD(v31) = *a8;
  v46 = *(v26 + 13);
  v47 = v31 + 51;
  v48 = ((-52 - v31) & 0xFFFFFFC0 | 0x24) ^ (v31 + 51) & 0x48;
  STACK[0xB80] = v14;
  v49 = v47 ^ (2 * ((v47 ^ 0x40) & (2 * ((v47 ^ 0x40) & (2 * ((v47 ^ 0x40) & (2 * ((v47 ^ 0x40) & (2 * ((v47 ^ 0x40) & (2 * v48) ^ v48)) ^ v48)) ^ v48)) ^ v48)) ^ v48));
  v50 = v45 ^ 0x23;
  v51 = ((v46 - ((2 * v46) & 0x46)) << 24) + 0x79AE12523000000;
  LODWORD(v45) = (v49 ^ ((v49 ^ 0xFFFFFFE6) + 40) ^ ((v49 ^ 0xFFFFFFFC) + 62) ^ 0x3E) + 8;
  LODWORD(v46) = v45 & 0x13 ^ 0xFFFFFFF2;
  STACK[0xB58] = v20;
  v52 = v43 ^ v28 ^ v32 ^ (2 * v34);
  LOBYTE(v28) = *(v35 - 570900827 + v50);
  v53 = ((*v20 - ((2 * *v20) & 0x12A)) << 16) + 0x534C45FEE0950000;
  v54 = -47 - 17 * (((v52 ^ 0x40) - 37) ^ ((v52 ^ 0xCE) + 85) ^ ((v52 ^ 0xF9) + 100));
  LOBYTE(v50) = v54 & 0x45 ^ 0xE4;
  STACK[0xB60] = v18;
  v55 = v54 ^ (2 * ((v54 ^ 0x7C) & (2 * ((v54 ^ 0x7C) & (2 * ((v54 ^ 0x7C) & (2 * ((v54 ^ 0x7C) & (2 * ((v54 ^ 0x7C) & (2 * (v54 & (2 * v54) & 0x7A ^ v50)) ^ v50)) ^ v50)) ^ v50)) ^ v50)) ^ v50));
  v56 = (*&v55 | 0xFFFFFFFFFFFFFF00) & (v44 ^ 0x8777304E4B278201) | v55 & 0xFE;
  v57 = (v56 ^ 0x47337D49232B0022) & (v53 & 0x400004DE82060000 ^ 0x89743D4F117E2C34 ^ (v53 ^ 0xACB3BA011F686C13) & (v51 ^ 0xB0D712055EF96C13)) ^ v56 & 0x81C6354E137CBFD8;
  LOBYTE(v28) = ((v28 ^ 0x49) - 64) ^ ((v28 ^ 0x1F) - 22) ^ ((v28 ^ 0x3D) - 52);
  LOBYTE(v53) = -41 * (v28 ^ 0x80) - 2 * v28 + 39;
  LODWORD(v28) = *(v27 + 12);
  LOBYTE(v51) = v53 & 0x33 ^ 0xA8;
  v58 = ((*v18 - ((2 * *v18) & 0x36u) + 16106585) << 40) - 0x3E0000000000;
  v59 = (v57 ^ 0x100144801001898) & (((v53 ^ (2 * ((v53 ^ 0x62) & (2 * ((v53 ^ 0x62) & (2 * ((v53 ^ 0x62) & (2 * ((v53 ^ 0x62) & (2 * ((v53 ^ 0x62) & (2 * ((v53 ^ 0xC3) & (2 * v53) & 0x46 ^ v51)) ^ v51)) ^ v51)) ^ v51)) ^ v51)) ^ v51))) << 32) ^ 0x4764DEB4F9575EFALL) ^ v57 & 0xB89B217806A8A105;
  STACK[0xE70] = v35 - 570901632;
  v60 = v49 ^ v45 ^ *(v35 - 570901632 + (v49 ^ 0x5ELL)) ^ (2 * ((v45 ^ 0x2E) & (2 * ((v45 ^ 0x2E) & (2 * ((v45 ^ 0x2E) & (2 * ((v45 ^ 0x2E) & (2 * ((v45 ^ 0x2E) & (2 * ((v45 ^ 0x2E) & (2 * v45) & 0x5E ^ v46)) ^ v46)) ^ v46)) ^ v46)) ^ v46)) ^ v46));
  LODWORD(v45) = (((((v60 >> 7) & 1 | (2 * v60)) ^ 0x26) - 37) ^ ((((v60 >> 7) & 1 | (2 * v60)) ^ 0x17) - 20) ^ ((((v60 >> 7) & 1 | (2 * v60)) ^ 0x25) - 38)) + 88;
  STACK[0xB40] = v42;
  LOBYTE(v51) = v45 & 0xA9 ^ 0x1D;
  STACK[0xE58] = v35 - 570900827;
  v61 = (((v28 - ((2 * v28) & 0x20) + 149) << 56) - 0x500000000000000) ^ v59 & 0x111307A88D9146B6 ^ (v59 ^ 0x2214002288000) & (v58 ^ 0x1B28E357726EB949) ^ ((v45 ^ (2 * ((v45 ^ 0x3E) & (2 * ((v45 ^ 0x3E) & (2 * ((v45 ^ 0x3E) & (2 * ((v45 ^ 0x3E) & (2 * ((v45 ^ 0x3E) & (2 * (((2 * v45) ^ 0x16) & (v45 ^ 0x3E) ^ v51)) ^ v51)) ^ v51)) ^ v51)) ^ v51)) ^ v51))) << 48) ^ 0xE29BF1E294D46980;
  STACK[0xE80] = v27;
  STACK[0xE78] = v30;
  STACK[0xB38] = v29;
  STACK[0xB48] = v41;
  STACK[0xB50] = v15;
  STACK[0xEA8] = ((*v15 - ((2 * *v15) & 0xF0u) + 29) << 56) - 0x2500000000000000;
  v62 = STACK[0xED8];
  LODWORD(v46) = STACK[0xE68];
  *(v21 - 168) = 128;
  *(v21 - 164) = v46;
  LODWORD(v59) = STACK[0xEB8];
  LODWORD(STACK[0xEEC]) = STACK[0xEB8];
  STACK[0xE60] = v26;
  v63 = (v59 ^ ((v59 ^ 0xA1147C0E) + 791630486) ^ ((v59 ^ 0xA18BECCF) + 800113237) ^ ((v59 ^ 0xA6A5AE5A) + 681476290) ^ ((v59 ^ 0xD7FEEFFF) + 1506132325) ^ 0x3E3CAC3A) << 32;
  STACK[0xEB8] = v63 ^ 0x4FF87D5E00000000;
  STACK[0xEB0] = v63 & 0x6EB9786300000000;
  STACK[0xEA8] = (((v63 ^ 0xC58DD539CFAF0E2ALL) - 0x234E8DEDB55327A9) ^ ((v63 ^ 0xA9EF1AC527BB60D2) - 0x4F2C42115D474951) ^ ((v63 ^ 0x239AB2A2E8146EF8) + 0x3AA615896D17B885)) - 0x312C75EA28676B07;
  return (*(v62 + 8 * SLODWORD(STACK[0xEC8])))(v61);
}

uint64_t sub_10080A9E4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  *a11 = *(v14 - 164) ^ 0x981390CC6385557;
  v15 = v13 != 0;
  if (a1 != -371865839)
  {
    v15 = 0;
  }

  return (*(v11 + 8 * (((((((v12 + 2113090051) & 0x820C7AFF) - 9163) | 0x8050) ^ 0x97CF) * v15) ^ (v12 + 2113090051) & 0x820C7AFF)))();
}

uint64_t sub_10080ABFC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  v71 = v55;
  v56 = a1 ^ 0x6A45;
  v57 = a1 | 0x9801;
  v58 = STACK[0x480];
  v59 = (*(STACK[0x480] + 8 * (v54 + 46226)))(1028);
  v60 = (*(v58 + 8 * (v54 + 46226)))(1032);
  STACK[0x488] = v59;
  if (v59)
  {
    v68 = v60 == 0;
  }

  else
  {
    v68 = 1;
  }

  v69 = !v68;
  return (*(v58 + 8 * ((v69 * (v56 ^ v57 ^ 0x8F29)) ^ v54)))(v60, v61, v62, v63, v64, v65, v66, v67, v71, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54);
}

uint64_t sub_10080AC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 952) = 0;
  *(v9 + 1272) = 0;
  return (*(a8 + 8 * (v8 - 24464)))();
}

uint64_t sub_10080ACBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (STACK[0x4D8] - 24860) | 0x801;
  v10 = (STACK[0x4D8] - 41390) | 0x853;
  v11 = STACK[0x4D8] + 5189;
  LODWORD(STACK[0x860]) = v8;
  return (*(a8 + 8 * (((v10 ^ v9 ^ 0x4337) * (a1 != 0)) ^ v11)))();
}

uint64_t sub_10080AD28()
{
  v2 = *(v1 - 216);
  v3 = (*(v2 + 8 * (v0 + 19955)))(1032);
  STACK[0x4B8] = 0;
  LODWORD(STACK[0x48C]) = 0;
  STACK[0x4A0] = 0;
  STACK[0x498] = 0;
  *(v1 - 256) = 0;
  STACK[0x480] = 0;
  STACK[0x4A8] = 0;
  STACK[0x490] = 0;
  STACK[0x478] = 0;
  STACK[0x4B0] = 0;
  *(v1 - 224) = v0 - 26748;
  v4 = *(v2 + 8 * (((((v0 - 82) ^ (v3 == 0)) & 1) * ((v0 - 26748) ^ 0x145B)) | v0));
  *(v1 - 148) = -1391007032;
  return v4();
}

uint64_t sub_10080AE4C(uint64_t a1, int a2)
{
  v6 = *(v5 + (v2 - 714541986));
  v7 = *(v3 + 8 * a2);
  *(v4 - 216) = ((a2 + 30595) ^ 0xFFFF3716) + v2;
  return v7((v6 ^ 0xFFFFFFEF) + ((2 * v6) & 0xFFFFFFDF) + 124, 247, 94, 239, v5 + (v2 - 714541985), v5 + (v2 - 714541984), 47);
}

uint64_t sub_10080B010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(*(v9 + 64) + 24);
  *(v9 + 88) = v10;
  return (*(a8 + 8 * (((2 * (((v10 == 0) ^ ((v8 - 39) ^ (v8 + 64))) & 1)) & 0xEF | (16 * (((v10 == 0) ^ (v8 - 14631) ^ (v8 - 14016)) & 1))) ^ v8)))();
}

uint64_t sub_10080B06C@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X4>, int a4@<W5>, int a5@<W6>, int a6@<W8>)
{
  v17 = v10 + (((v7 * v6) ^ v15) ^ v8) * v9;
  *(a3 + 4 * (v7 * v6)) = a5 ^ a4 ^ __ROR4__(*(v14 + 4 * (v17 - (((v17 * v11) >> 32) >> 8) * v12)), 31) ^ a1;
  return (*(v16 + 8 * ((28 * (v13 + v7 != a2)) ^ a6)))();
}

uint64_t sub_10080B140@<X0>(int a1@<W8>)
{
  v3 = (((LODWORD(STACK[0x6BC]) ^ 0xB3E16212) + 1277074926) ^ ((LODWORD(STACK[0x6BC]) ^ 0xB753916) - 192231702) ^ ((LODWORD(STACK[0x6BC]) ^ 0x51419C15) - 1363254293)) + 1265640140;
  v4 = (((a1 ^ 0x4ECA3589) - 1470452635) ^ ((a1 ^ 0x78266244) - 1632175190) ^ (((77 * ((v1 + 1816619493) & 0x13B86C67 ^ 0x6C28) - 239636937) ^ a1) + 388439295)) + 1070534791;
  v5 = v3 < 0x619A5BBB;
  v6 = v3 > v4;
  if (v5 != v4 < 0x619A5BBB)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  return (*(v2 + 8 * (((4 * !v7) | (8 * !v7)) ^ v1)))();
}

uint64_t sub_10080B278(uint64_t a1, uint64_t a2)
{
  *(v6 + 24) = a2;
  *(v5[3] + 32) = v5[4];
  *(v2 + 8) += v5[1] + v4;
  return (*(v7 + 8 * (v3 ^ 0x59A49F9A ^ (41856 * (v3 < 0x306CD308)))))();
}

uint64_t sub_10080B434@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(v7 + 12);
  STACK[0x498] = v8 ^ 0xE9D5C711;
  return (*(v6 + 8 * ((43 * (v8 != ((a1 - 85622819) ^ 0x13303DE7))) ^ a1)))(a6);
}

uint64_t sub_10080B488(double a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  a2.n128_u16[0] = 6425;
  a2.n128_u8[2] = 25;
  a2.n128_u8[3] = 25;
  a2.n128_u8[4] = 25;
  a2.n128_u8[5] = 25;
  a2.n128_u8[6] = 25;
  a2.n128_u8[7] = 25;
  a3.n128_u16[0] = 30069;
  a3.n128_u8[2] = 117;
  a3.n128_u8[3] = 117;
  a3.n128_u8[4] = 117;
  a3.n128_u8[5] = 117;
  a3.n128_u8[6] = 117;
  a3.n128_u8[7] = 117;
  return (*(v8 + 8 * (a8 ^ 0xC91F8E0A ^ (36246 * (a8 > 0xC31F38F9)))))(xmmword_100F523B0, a2, a3);
}

uint64_t sub_10080B8B0(__n128 a1)
{
  *v2 = a1;
  v2[1] = a1;
  return (*(v5 + 8 * (((v3 != 0) * v4) ^ v1)))();
}

uint64_t sub_10080B904(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  LODWORD(STACK[0x3C4]) = a3;
  v20 = STACK[0x370];
  v21 = -1802333311 * STACK[0x370];
  v22 = 3623 * ((-127 * STACK[0x370]) ^ 0x4B) + 16756375;
  *(v19 - 224) = a3 ^ 0x4503;
  v23 = *(STACK[0x3B0] + v22 % ((a3 ^ 0x4503u) + 2363));
  v24 = *(STACK[0x3B0] + 3623 * (BYTE1(v21) ^ 0x98) + 14886907 - 7552 * (((9099507 * (3623 * (BYTE1(v21) ^ 0x98u) + 14886907)) >> 32) >> 4));
  v25 = (v23 >> 2) & 0x12 ^ v23;
  v26 = *(STACK[0x3B0] + 3623 * (BYTE2(v21) ^ 0x72) + 19546085 - 7552 * (((9099507 * (3623 * (BYTE2(v21) ^ 0x72u) + 19546085)) >> 32) >> 4)) ^ BYTE2(v21);
  v27 = *(STACK[0x3B0] + 3623 * (HIBYTE(v21) ^ 0x37) + 25176227 - 7552 * (((9099507 * (3623 * (HIBYTE(v21) ^ 0x37) + 25176227)) >> 32) >> 4));
  v28 = (((((v27 ^ 0x66) - 102) ^ ((v27 ^ 0xFFFFFFCE) + 50) ^ ((v27 ^ 0xD8) + 40)) - 44) ^ 0xD5) << 24;
  v29 = (v28 & 0xB8000000 ^ 0x528DB681 ^ (v28 ^ 0x48FFFF1B) & ((((v26 << 16) ^ 0xFE0FFFFF) & ((v24 << 8) ^ 0xD6396E07) | (v26 << 16) & 0xC60000) ^ 0x9180D31C)) & (v25 ^ 0xFFFFFFD9);
  v30 = 3623 * (*(v20 + 6) ^ 0x7D) + 2789710;
  v31 = v29 ^ v25 & 0x65;
  v32 = (*(STACK[0x3B0] + 3623 * (*(v20 + 1) ^ 0xA0) + 4648309 - 7552 * (((2274877 * (3623 * (*(v20 + 1) ^ 0xA0u) + 4648309)) >> 32) >> 2)) ^ *(v20 + 1)) << 16;
  v33 = (v32 ^ 0xFF518E32) & (((*(STACK[0x3B0] + v30 - 7552 * (((2274877 * v30) >> 32) >> 2)) ^ 3) << 24) ^ 0x1ADB8E32);
  v34 = 3623 * (*(v20 + 4) ^ 0xCB) + 21408307;
  v35 = *(STACK[0x3B0] + v34 - 7552 * (((9099507 * v34) >> 32) >> 4));
  v36 = (((v35 ^ 0x44) - 68) ^ ((v35 ^ 0xFFFFFF94) + 108) ^ ((v35 ^ 0xFFFFFFA0) + 96)) + 15;
  LOBYTE(v29) = ((v36 >> 4) & 0xA | 0xF1) ^ v36;
  v37 = (v29 ^ 0xFFFFFF06) & ((((v33 | v32 & 0x240000) ^ 0x142471C4) & (((*(STACK[0x3B0] + 3623 * (*(v20 + 10) ^ 0xDE) + 6510531 - 7552 * (((2274877 * (3623 * (*(v20 + 10) ^ 0xDEu) + 6510531)) >> 32) >> 2)) ^ *(v20 + 10)) << 8) ^ 0x546D29D4) | v33 & 0xAB920000) ^ 0x8C32C327);
  v38 = 3623 * (*(v20 + 15) ^ 0x7D) + 2789710;
  v39 = (*(STACK[0x3B0] + 3623 * (*(v20 + 11) ^ 0xA0) + 4648309 - 7552 * (((2274877 * (3623 * (*(v20 + 11) ^ 0xA0u) + 4648309)) >> 32) >> 2)) ^ *(v20 + 11)) << 16;
  v40 = (v39 ^ 0xFF44C7F0) & ((*(STACK[0x3B0] + v38 - 7552 * (((2274877 * v38) >> 32) >> 2)) << 24) ^ 0x614EC7F0) | v39 & 0xB10000;
  v41 = (*(STACK[0x3B0] + 3623 * (*v20 ^ 0xDE) + 6510531 - 7552 * (((2274877 * (3623 * (*v20 ^ 0xDEu) + 6510531)) >> 32) >> 2)) ^ *v20) << 8;
  v42 = 3623 * (*(v20 + 7) ^ 0xCB) + 21408307;
  v43 = *(STACK[0x3B0] + v42 - 7552 * (((9099507 * v42) >> 32) >> 4));
  v44 = (((v43 ^ 0x14) - 20) ^ ((v43 ^ 0xFFFFFFA1) + 95) ^ ((v43 ^ 0xFFFFFFC5) + 59)) + 15;
  v45 = (v44 >> 4) & 0xA;
  v46 = v45 ^ v44;
  v47 = (v45 ^ ~v44 | 0xFFFFFF00) & ((v41 & 0xBD00 | (v40 ^ 0x67E285CE) & (v41 ^ 0xFFFFDFFE)) ^ 0x33DFF906);
  v48 = 3623 * (*(v20 + 14) ^ 0x7D) + 2789710;
  v49 = *(STACK[0x3B0] + v48 - 7552 * (((2274877 * v48) >> 32) >> 2)) << 24;
  v50 = (((*(STACK[0x3B0] + 3623 * (*(v20 + 13) ^ 0xA0) + 4648309 - 7552 * (((2274877 * (3623 * (*(v20 + 13) ^ 0xA0u) + 4648309)) >> 32) >> 2)) ^ *(v20 + 13)) << 16) ^ 0xAEAADC07) & (v49 ^ 0xCCFFFC57) | v49 & 0x51000000;
  v51 = (*(STACK[0x3B0] + 3623 * (*(v20 + 5) ^ 0xDE) + 6510531 - 7552 * (((2274877 * (3623 * (*(v20 + 5) ^ 0xDEu) + 6510531)) >> 32) >> 2)) ^ *(v20 + 5)) << 8;
  v52 = 3623 * (*(v20 + 9) ^ 0xCB) + 21408307;
  v53 = *(STACK[0x3B0] + v52 - 7552 * (((9099507 * v52) >> 32) >> 4));
  v54 = (((v53 ^ 0xFFFFFFA2) + 94) ^ ((v53 ^ 0x77) - 119) ^ ((v53 ^ 0xFFFFFFA5) + 91)) + 15;
  v55 = 3623 * (*(v20 + 12) ^ 0x7D) + 2789710;
  v56 = v55 - 7552 * (((2274877 * v55) >> 32) >> 2);
  v57 = ((v54 >> 4) & 0xA ^ v54) & 0x2E | ((v54 >> 4) & 0xA ^ ~v54 | 0xFFFFFF00) & ((v50 ^ 0xA26704E) & (v51 ^ 0xFFFF187F) ^ (v51 & 0x5300 | 0x7CC10898));
  v58 = (*(STACK[0x3B0] + 3623 * (*(v20 + 3) ^ 0xA0) + 4648309 - 7552 * (((2274877 * (3623 * (*(v20 + 3) ^ 0xA0u) + 4648309)) >> 32) >> 2)) ^ *(v20 + 3)) << 16;
  v59 = (*(STACK[0x3B0] + 3623 * (*(v20 + 2) ^ 0xDE) + 6510531 - 7552 * (((2274877 * (3623 * (*(v20 + 2) ^ 0xDEu) + 6510531)) >> 32) >> 2)) ^ *(v20 + 2)) << 8;
  v60 = ((((*(STACK[0x3B0] + v56) << 24) ^ 0xF5718308) & ~v58 | v58 & 0x8E0000) ^ 0x742233E9) & (v59 ^ 0xFFFF02E9);
  v61 = v59 & 0x4F00;
  v62 = 3623 * (*(v20 + 8) ^ 0xCB) + 21408307;
  v63 = *(STACK[0x3B0] + v62 - 7552 * (((9099507 * v62) >> 32) >> 4));
  v64 = (((v63 ^ 0x2D) - 45) ^ ((v63 ^ 0xFFFFFFAC) + 84) ^ ((v63 ^ 0xFFFFFFF1) + 15)) + 15;
  v65 = v37 ^ v29 & 0xC;
  v66 = v65 ^ (((v64 >> 4) & 0xA ^ v64) & 0x90 | ((v64 >> 4) & 0xA ^ ~v64 | 0xFFFFFF00) & ((v61 | v60) ^ 0x51046B8E)) ^ 0x27F7C2F;
  v67 = LODWORD(STACK[0x380]) ^ LODWORD(STACK[0x384]);
  *(v19 - 148) = v67;
  v68 = v67 ^ v31 ^ 0x1117FCD7;
  v69 = v68 ^ (v46 & 0xC7 | v47) ^ v66;
  v70 = v68 ^ v57 ^ v69;
  v71 = v68 ^ v65 ^ v70;
  v72 = ((v66 ^ 0xD53AD5AC ^ v71) & 0x9077CC1D ^ 0x62BBD26) & ((v66 ^ 0xD53AD5AC ^ v71) & 0x6F8833E2 ^ 0x927FCDFD) | (v66 ^ 0xD53AD5AC ^ v71) & 0x698002C0;
  v73 = v70 ^ 0xC139C676 ^ v72;
  v74 = v71 ^ 0xC37E5E6;
  v69 ^= 0x35BAA2EFu;
  v75 = *(v19 - 248);
  v76 = v72 ^ 0xAABBE97C;
  v77 = *(v75 + 4 * HIBYTE(v73)) ^ *(STACK[0x4A8] + 4 * ((v71 ^ 0xE5E6) >> 8)) ^ *(STACK[0x4B0] + 4 * BYTE2(v69)) ^ *(STACK[0x3C8] + 4 * (v72 ^ 0x7Cu));
  v78 = *(STACK[0x4B0] + 4 * BYTE2(v73)) ^ *(STACK[0x3C8] + 4 * (v71 ^ 0xE6u)) ^ *(v75 + 4 * HIBYTE(v76)) ^ *(STACK[0x4A8] + 4 * BYTE1(v69)) ^ 0x5BE00927;
  v79 = *(v75 + 4 * HIBYTE(v74)) ^ *(STACK[0x4A8] + 4 * BYTE1(v73)) ^ *(STACK[0x4B0] + 4 * BYTE2(v76)) ^ *(STACK[0x3C8] + 4 * v69) ^ 0x30618551;
  v80 = *(v75 + 4 * HIBYTE(v69)) ^ *(STACK[0x4B0] + 4 * BYTE2(v74)) ^ *(STACK[0x3C8] + 4 * v73) ^ *(STACK[0x4A8] + 4 * BYTE1(v76)) ^ 0x868BF44;
  v81 = *(STACK[0x4B0] + 4 * BYTE2(v80)) ^ *(v75 + 4 * ((v77 ^ 0xFA2ABD82) >> 24)) ^ *(STACK[0x3C8] + 4 * v78) ^ *(STACK[0x4A8] + 4 * BYTE1(v79)) ^ 0x6E4C440D;
  v82 = *(STACK[0x4B0] + 4 * ((v77 ^ 0xFA2ABD82) >> 16)) ^ *(STACK[0x3C8] + 4 * v79) ^ *(v75 + 4 * HIBYTE(v78)) ^ *(STACK[0x4A8] + 4 * BYTE1(v80)) ^ 0xDCECDFB;
  v83 = *(STACK[0x4B0] + 4 * BYTE2(v78)) ^ *(v75 + 4 * HIBYTE(v79)) ^ *(STACK[0x4A8] + 4 * ((v77 ^ 0xBD82) >> 8)) ^ *(STACK[0x3C8] + 4 * v80);
  v84 = *(v75 + 4 * HIBYTE(v80)) ^ *(STACK[0x3C8] + 4 * (v77 ^ 0x82u)) ^ *(STACK[0x4B0] + 4 * BYTE2(v79)) ^ *(STACK[0x4A8] + 4 * BYTE1(v78)) ^ 0x2E2BB953;
  BYTE2(v80) = BYTE2(v83) ^ 0x95;
  v85 = *(STACK[0x4B0] + 4 * BYTE2(v84)) ^ *(STACK[0x3C8] + 4 * v82) ^ *(STACK[0x4A8] + 4 * ((v83 ^ 0x2437) >> 8)) ^ *(v75 + 4 * HIBYTE(v81)) ^ 0xC5B1DC60;
  v86 = *(v75 + 4 * HIBYTE(v82)) ^ *(STACK[0x4A8] + 4 * BYTE1(v84)) ^ *(STACK[0x4B0] + 4 * BYTE2(v81)) ^ *(STACK[0x3C8] + 4 * (v83 ^ 0x37u)) ^ 0x4C62721C;
  v87 = *(v75 + 4 * ((v83 ^ 0x98952437) >> 24)) ^ *(STACK[0x4B0] + 4 * BYTE2(v82)) ^ *(STACK[0x4A8] + 4 * BYTE1(v81)) ^ *(STACK[0x3C8] + 4 * v84) ^ 0x6B58E42E;
  v88 = *(STACK[0x4B0] + 4 * BYTE2(v80)) ^ *(v75 + 4 * HIBYTE(v84)) ^ *(STACK[0x4A8] + 4 * BYTE1(v82)) ^ *(STACK[0x3C8] + 4 * v81) ^ 0xF06374DC;
  v89 = *(v75 + 4 * HIBYTE(v85)) ^ *(STACK[0x4B0] + 4 * BYTE2(v88)) ^ *(STACK[0x4A8] + 4 * BYTE1(v87)) ^ *(STACK[0x3C8] + 4 * v86) ^ 0x7DBF1FFB;
  v90 = *(STACK[0x4B0] + 4 * BYTE2(v85)) ^ *(v75 + 4 * HIBYTE(v86)) ^ *(STACK[0x4A8] + 4 * BYTE1(v88)) ^ *(STACK[0x3C8] + 4 * v87) ^ 0xB50C2CD;
  v91 = *(v75 + 4 * HIBYTE(v87)) ^ *(STACK[0x4B0] + 4 * BYTE2(v86)) ^ *(STACK[0x4A8] + 4 * BYTE1(v85)) ^ *(STACK[0x3C8] + 4 * v88) ^ 0x42A2D828;
  v92 = *(STACK[0x4B0] + 4 * BYTE2(v87)) ^ *(v75 + 4 * HIBYTE(v88)) ^ *(STACK[0x3C8] + 4 * v85) ^ *(STACK[0x4A8] + 4 * BYTE1(v86)) ^ 0xD5CB8096;
  v93 = *(STACK[0x4B0] + 4 * BYTE2(v92)) ^ *(v75 + 4 * HIBYTE(v89)) ^ *(STACK[0x4A8] + 4 * BYTE1(v91)) ^ *(STACK[0x3C8] + 4 * v90) ^ 0xF78191C7;
  v94 = *(v75 + 4 * HIBYTE(v90)) ^ *(STACK[0x4B0] + 4 * BYTE2(v89)) ^ *(STACK[0x4A8] + 4 * BYTE1(v92)) ^ *(STACK[0x3C8] + 4 * v91) ^ 0x53803F4B;
  v95 = *(STACK[0x4B0] + 4 * BYTE2(v91)) ^ *(v75 + 4 * HIBYTE(v92)) ^ *(STACK[0x4A8] + 4 * BYTE1(v90)) ^ *(STACK[0x3C8] + 4 * v89) ^ 0xCAF1F9FB;
  v96 = *(v75 + 4 * HIBYTE(v91)) ^ *(STACK[0x4B0] + 4 * BYTE2(v90)) ^ *(STACK[0x4A8] + 4 * BYTE1(v89)) ^ *(STACK[0x3C8] + 4 * v92) ^ 0xB3F9B7CE;
  v97 = *(STACK[0x4B0] + 4 * BYTE2(v95)) ^ *(v75 + 4 * HIBYTE(v93)) ^ *(STACK[0x4A8] + 4 * BYTE1(v96)) ^ *(STACK[0x3C8] + 4 * v94) ^ 0xB0EFB924;
  v98 = *(v75 + 4 * HIBYTE(v94)) ^ *(STACK[0x4A8] + 4 * BYTE1(v95)) ^ *(STACK[0x4B0] + 4 * BYTE2(v93)) ^ *(STACK[0x3C8] + 4 * v96) ^ 0x6E04E623;
  v99 = *(STACK[0x4B0] + 4 * BYTE2(v94)) ^ *(v75 + 4 * HIBYTE(v96)) ^ *(STACK[0x4A8] + 4 * BYTE1(v93)) ^ *(STACK[0x3C8] + 4 * v95);
  BYTE2(v91) = BYTE2(v99) ^ 0xB;
  v100 = *(STACK[0x4B0] + 4 * BYTE2(v96)) ^ *(STACK[0x4A8] + 4 * BYTE1(v94)) ^ *(v75 + 4 * HIBYTE(v95)) ^ *(STACK[0x3C8] + 4 * v93) ^ 0x28746973;
  v101 = *(v75 + 4 * HIBYTE(v97)) ^ *(STACK[0x3C8] + 4 * v98) ^ *(STACK[0x4B0] + 4 * BYTE2(v100)) ^ *(STACK[0x4A8] + 4 * ((v99 ^ 0x7AB4) >> 8)) ^ 0x9A762479;
  v102 = *(v75 + 4 * HIBYTE(v98)) ^ *(STACK[0x4A8] + 4 * BYTE1(v100)) ^ *(STACK[0x4B0] + 4 * BYTE2(v97)) ^ *(STACK[0x3C8] + 4 * (v99 ^ 0xB4u)) ^ 0x73F289F;
  v103 = *(v75 + 4 * ((v99 ^ 0xD50B7AB4) >> 24)) ^ *(STACK[0x4B0] + 4 * BYTE2(v98)) ^ *(STACK[0x4A8] + 4 * BYTE1(v97)) ^ *(STACK[0x3C8] + 4 * v100) ^ 0xB8AE9758;
  v104 = *(v75 + 4 * HIBYTE(v100)) ^ *(STACK[0x4B0] + 4 * BYTE2(v91)) ^ *(STACK[0x4A8] + 4 * BYTE1(v98)) ^ *(STACK[0x3C8] + 4 * v97) ^ 0x56B873A8;
  v105 = *(v75 + 4 * HIBYTE(v101)) ^ *(STACK[0x4B0] + 4 * BYTE2(v104)) ^ *(STACK[0x4A8] + 4 * BYTE1(v103)) ^ *(STACK[0x3C8] + 4 * v102) ^ 0xEE34EB6;
  v106 = *(v75 + 4 * HIBYTE(v102)) ^ *(STACK[0x4B0] + 4 * BYTE2(v101)) ^ *(STACK[0x3C8] + 4 * v103) ^ *(STACK[0x4A8] + 4 * BYTE1(v104)) ^ 0x5AE0EA3C;
  v107 = *(STACK[0x4A8] + 4 * BYTE1(v101)) ^ *(STACK[0x4B0] + 4 * BYTE2(v102)) ^ *(v75 + 4 * HIBYTE(v103)) ^ *(STACK[0x3C8] + 4 * v104) ^ 0x60F947DA;
  v108 = *(STACK[0x4B0] + 4 * BYTE2(v103)) ^ *(v75 + 4 * HIBYTE(v104)) ^ *(STACK[0x4A8] + 4 * BYTE1(v102)) ^ *(STACK[0x3C8] + 4 * v101) ^ 0x22F4CA0F;
  v109 = *(v75 + 4 * HIBYTE(v105)) ^ *(STACK[0x4B0] + 4 * BYTE2(v108)) ^ *(STACK[0x4A8] + 4 * BYTE1(v107)) ^ *(STACK[0x3C8] + 4 * v106) ^ 0xF75FDC96;
  v110 = *(v75 + 4 * HIBYTE(v106)) ^ *(STACK[0x4B0] + 4 * BYTE2(v105)) ^ *(STACK[0x4A8] + 4 * BYTE1(v108)) ^ *(STACK[0x3C8] + 4 * v107) ^ 0x4C782E8A;
  v111 = *(v75 + 4 * HIBYTE(v107)) ^ *(STACK[0x4B0] + 4 * BYTE2(v106)) ^ *(STACK[0x4A8] + 4 * BYTE1(v105)) ^ *(STACK[0x3C8] + 4 * v108);
  v112 = *(STACK[0x4B0] + 4 * BYTE2(v107));
  v113 = v111 ^ 0x6D4D613A;
  v114 = v112 ^ *(v75 + 4 * HIBYTE(v108)) ^ *(STACK[0x4A8] + 4 * BYTE1(v106)) ^ *(STACK[0x3C8] + 4 * v105) ^ 0xBECDCC6F;
  v115 = *(v19 - 256);
  v116 = *(v19 - 240);
  v117 = *(v19 - 232);
  v118 = *(v115 + 4 * HIBYTE(v109)) ^ *(STACK[0x4A0] + 4 * ((v111 ^ 0x613A) >> 8)) ^ *(v117 + 4 * BYTE2(v114)) ^ *(v116 + 4 * v110);
  v119 = __ROR4__(__ROR4__(v118 ^ *(v115 + 4 * HIBYTE(v114)) ^ *(v117 + 4 * ((v111 ^ 0x6D4D613Au) >> 16)) ^ *(v116 + 4 * v109) ^ *(STACK[0x4A0] + 4 * BYTE1(v110)) ^ 0xEDE7CF3F, 9) ^ 0x23D9201A, 23);
  v120 = *(v116 + 4 * (v111 ^ 0x3Au)) ^ *(v117 + 4 * BYTE2(v109)) ^ *(v115 + 4 * HIBYTE(v110)) ^ *(STACK[0x4A0] + 4 * BYTE1(v114));
  v121 = *(v115 + 4 * HIBYTE(v113)) ^ *(STACK[0x4A0] + 4 * BYTE1(v109));
  v122 = v120 ^ v119 ^ 0x719EFE34;
  v123 = v121 ^ *(v117 + 4 * BYTE2(v110)) ^ v118 ^ *(v116 + 4 * v114) ^ v122;
  v124 = v119 ^ 0x719EFE34 ^ v31 ^ 0x1117FCD7;
  v125 = v124 ^ v118;
  v126 = v123 ^ v31 ^ 0x74C2CCB0;
  v128 = ((v122 ^ v31 ^ 0x74C2CCB0u) >> 16) ^ 0xCE;
  v127 = v122 ^ v31 ^ 0x74C2CCB0;
  LODWORD(STACK[0x37C]) = v127;
  LODWORD(STACK[0x48C]) = BYTE1(v127) ^ 0x39;
  LODWORD(STACK[0x354]) = v125;
  LODWORD(STACK[0x350]) = v126;
  LODWORD(STACK[0x3A4]) = BYTE1(v126) ^ 0xAF;
  v129 = 1451 * (HIBYTE(v127) ^ 0x3F) + 14897417;
  v130 = STACK[0x3C0];
  v131 = HIBYTE(LODWORD(STACK[0x3C0]));
  LODWORD(STACK[0x394]) = 1451 * (v131 ^ 0x4B) + 14897417;
  LODWORD(STACK[0x34C]) = v123 ^ v124;
  LODWORD(STACK[0x398]) = 1451 * (((v123 ^ v124) >> 24) ^ 0x1E) + 14897417;
  LODWORD(STACK[0x3A8]) = 1451 * (v131 ^ 0x64) + 14897417;
  LODWORD(STACK[0x478]) = 1451 * (HIBYTE(v126) ^ 0xF4) + 14897417;
  v132 = 1451 * v128 + 14145799;
  v133 = 1451 * (((v123 ^ v124) >> 16) ^ 0xE7) + 14145799;
  LODWORD(v116) = 1451 * (BYTE2(v126) ^ 0x68) + 14145799;
  v134 = 1451 * LODWORD(STACK[0x3A4]) + 4088918;
  v135 = v129 - 12096 * (((2840587 * v129) >> 32) >> 3);
  v136 = v132 - 12096 * (((2840587 * v132) >> 32) >> 3);
  LODWORD(STACK[0x358]) = 1451 * LODWORD(STACK[0x48C]) + 4088918 - 12096 * (((2840587 * (1451 * LODWORD(STACK[0x48C]) + 4088918)) >> 32) >> 3);
  v137 = 1451 * (v131 ^ 0xF) + 14897417 - 12096 * (((2840587 * (1451 * (v131 ^ 0xFu) + 14897417)) >> 32) >> 3);
  v138 = 1451 * (HIBYTE(v125) ^ 0x9A) + 14897417 - 12096 * (((2840587 * (1451 * (HIBYTE(v125) ^ 0x9A) + 14897417)) >> 32) >> 3);
  LODWORD(STACK[0x35C]) = 1451 * (BYTE2(v125) ^ 0xC8) + 14145799 - 12096 * (((2840587 * (1451 * (BYTE2(v125) ^ 0xC8u) + 14145799)) >> 32) >> 3);
  LODWORD(STACK[0x3A4]) = 1451 * (BYTE1(v125) ^ 0xD5) + 4088918 - 12096 * (((2840587 * (1451 * (BYTE1(v125) ^ 0xD5u) + 4088918)) >> 32) >> 3);
  LODWORD(v117) = LODWORD(STACK[0x394]) - 12096 * (((2840587 * LODWORD(STACK[0x394])) >> 32) >> 3);
  LODWORD(STACK[0x360]) = 1451 * (BYTE2(v130) ^ 0xC0) + 14145799 - 12096 * (((2840587 * (1451 * (BYTE2(v130) ^ 0xC0u) + 14145799)) >> 32) >> 3);
  LODWORD(STACK[0x364]) = 1451 * (BYTE1(v130) ^ 0xAD) + 4088918 - 12096 * (((2840587 * (1451 * (BYTE1(v130) ^ 0xADu) + 4088918)) >> 32) >> 3);
  LODWORD(STACK[0x368]) = LODWORD(STACK[0x398]) - 12096 * (((2840587 * LODWORD(STACK[0x398])) >> 32) >> 3);
  LODWORD(STACK[0x38C]) = 1451 * (((v123 ^ v124) >> 8) ^ 0x82) + 4088918 - 12096 * (((2840587 * (1451 * (((v123 ^ v124) >> 8) ^ 0x82u) + 4088918)) >> 32) >> 3);
  LODWORD(STACK[0x36C]) = LODWORD(STACK[0x3A8]) - 12096 * (((2840587 * LODWORD(STACK[0x3A8])) >> 32) >> 3);
  LODWORD(STACK[0x370]) = 1451 * (BYTE2(v130) ^ 9) + 14145799 - 12096 * (((2840587 * (1451 * (BYTE2(v130) ^ 9u) + 14145799)) >> 32) >> 3);
  LODWORD(STACK[0x388]) = 1451 * (BYTE1(v130) ^ 0xBF) + 4088918 - 12096 * (((2840587 * (1451 * (BYTE1(v130) ^ 0xBFu) + 4088918)) >> 32) >> 3);
  LODWORD(STACK[0x390]) = LODWORD(STACK[0x478]) - 12096 * (((2840587 * LODWORD(STACK[0x478])) >> 32) >> 3);
  LODWORD(STACK[0x394]) = v116 - 12096 * (((2840587 * v116) >> 32) >> 3);
  LODWORD(STACK[0x48C]) = v134 - 12096 * (((2840587 * v134) >> 32) >> 3);
  LODWORD(STACK[0x398]) = 1451 * (v131 ^ 0xF6) + 14897417 - 12096 * (((2840587 * (1451 * (v131 ^ 0xF6u) + 14897417)) >> 32) >> 3);
  LODWORD(STACK[0x3A8]) = 1451 * (BYTE2(v130) ^ 0x17) + 14145799 - 12096 * (((2840587 * (1451 * (BYTE2(v130) ^ 0x17u) + 14145799)) >> 32) >> 3);
  LODWORD(STACK[0x478]) = 1451 * (BYTE1(v130) ^ 0x58) + 4088918 - 12096 * (((2840587 * (1451 * (BYTE1(v130) ^ 0x58u) + 4088918)) >> 32) >> 3);
  v139 = 3623 * (LODWORD(STACK[0x37C]) ^ 0xCA) + 13952173;
  v140 = 3623 * (LODWORD(STACK[0x354]) ^ 0x92) + 13952173;
  LODWORD(v115) = 3623 * (LODWORD(STACK[0x34C]) ^ 3) + 13952173;
  v141 = 3623 * (LODWORD(STACK[0x350]) ^ 0xED) + 13952173;
  LODWORD(v116) = v139 - 7552 * (((9099507 * v139) >> 32) >> 4);
  v142 = v140 - 7552 * (((9099507 * v140) >> 32) >> 4);
  v143 = 3623 * (v130 ^ 0x4D) + 13952173 - 7552 * (((9099507 * (3623 * (v130 ^ 0x4Du) + 13952173)) >> 32) >> 4);
  v144 = v115 - 7552 * (((9099507 * v115) >> 32) >> 4);
  LODWORD(v115) = 3623 * (v130 ^ 0x4F) + 13952173 - 7552 * (((9099507 * (3623 * (v130 ^ 0x4Fu) + 13952173)) >> 32) >> 4);
  v145 = v141 - 7552 * (((9099507 * v141) >> 32) >> 4);
  v146 = 3623 * (v130 ^ 0xD4) + 13952173 - 7552 * (((9099507 * (3623 * (v130 ^ 0xD4u) + 13952173)) >> 32) >> 4);
  v147 = STACK[0x448];
  v148 = *(STACK[0x448] + 4 * v135);
  v149 = *(STACK[0x448] + 4 * v136);
  v150 = STACK[0x3B0];
  HIDWORD(v151) = *(STACK[0x3B0] + v116);
  LODWORD(v151) = (HIDWORD(v151) ^ 0x70) << 24;
  v152 = *(STACK[0x448] + 4 * v137);
  v153 = ((v149 ^ 0x431C8C11) - 1125944337) ^ ((v149 ^ 0x41846386) - 1099195270) ^ ((v149 ^ 0x5744BB47) - 1464122183);
  v154 = *(STACK[0x448] + 4 * (1451 * (BYTE2(v130) ^ 0xC7) + 14145799 - 12096 * (((2840587 * (1451 * (BYTE2(v130) ^ 0xC7u) + 14145799)) >> 32) >> 3)));
  v155 = *(STACK[0x3B0] + 3623 * (v130 ^ 0x11) + 13952173 - 7552 * (((9099507 * (3623 * (v130 ^ 0x11u) + 13952173)) >> 32) >> 4));
  LODWORD(v20) = (((v148 ^ 0x661D200F) - 1713184783) ^ ((v148 ^ 0xAC83734B) + 1400671413) ^ ((v148 ^ 0x9F420794) + 1623062636)) + 200594121;
  v156 = (((v152 ^ 0xA616AF91) + 1508462703) ^ ((v152 ^ 0x2DF0C915) - 770754837) ^ ((v152 ^ 0xDE3A3254) + 566611372)) + 200594121;
  v157 = *(v19 - 152) ^ v15 ^ *(STACK[0x448] + 4 * LODWORD(STACK[0x358])) ^ v20 ^ (v153 - 1779819916) ^ (16 * v20) ^ (v151 >> 27) ^ *(STACK[0x448] + 4 * (1451 * (BYTE1(v130) ^ 0x43) + 4088918 - 12096 * (((2840587 * (1451 * (BYTE1(v130) ^ 0x43u) + 4088918)) >> 32) >> 3))) ^ ((v155 >> 3) | (32 * v155)) ^ v156 ^ (16 * v156) ^ ((((v154 ^ 0x843227B) - 138617467) ^ ((v154 ^ 0x89EB388C) + 1981073268) ^ ((v154 ^ 0xD4744E27) + 730575321)) - 1779819916);
  LODWORD(STACK[0x37C]) = v157;
  v158 = *(v147 + 4 * LODWORD(STACK[0x35C]));
  HIDWORD(v151) = *(v150 + v142);
  LODWORD(v151) = (HIDWORD(v151) ^ 0x70) << 24;
  v159 = *(v147 + 4 * LODWORD(STACK[0x360]));
  v160 = (((*(v147 + 4 * v138) ^ 0xAC95F5CD) + 1399458355) ^ ((*(v147 + 4 * v138) ^ 0x6618AE6C) - 1712893548) ^ ((*(v147 + 4 * v138) ^ 0x9F510F71) + 1622077583)) + 200594121;
  LODWORD(v116) = *(v19 - 148);
  v161 = v116 ^ *(v147 + 4 * LODWORD(STACK[0x3A4])) ^ v160 ^ ((((v158 ^ 0x8D0D1E8E) + 1928520050) ^ ((v158 ^ 0x2995A7E6) - 697673702) ^ ((v158 ^ 0xF144EDB8) + 247140936)) - 1779819916) ^ (16 * v160);
  v162 = (((*(v147 + 4 * v117) ^ 0x2E58240A) - 777528330) ^ ((*(v147 + 4 * v117) ^ 0x3F60B905) - 1063303429) ^ ((*(v147 + 4 * v117) ^ 0x44E4C9DF) - 1155844575)) + 200594121;
  v163 = v161 ^ (v151 >> 27) ^ *(v147 + 4 * LODWORD(STACK[0x364])) ^ ((*(v150 + v143) >> 3) | (32 * *(v150 + v143))) ^ v162 ^ (16 * v162);
  v164 = v157 ^ 0xC376541B;
  v165 = *(v17 + 4 * ((v157 ^ 0xC376541B) >> 16));
  v166 = v163 ^ ((((v159 ^ 0xBCDD33E3) + 1126353949) ^ ((v159 ^ 0x13D336C1) - 332609217) ^ ((v159 ^ 0xFAD251F2) + 86879758)) - 1779819916);
  LODWORD(STACK[0x3A4]) = v166;
  v167 = STACK[0x4B8];
  v168 = *(v18 + 4 * ((v157 ^ 0xC376541B) >> 24)) ^ v165 ^ *(v16 + 4 * (v157 ^ 0x1Bu)) ^ *(STACK[0x4B8] + 4 * ((v157 ^ 0x541B) >> 8));
  v169 = *(v147 + 4 * LODWORD(STACK[0x368]));
  v170 = *(v147 + 4 * (v133 - 12096 * (((2840587 * v133) >> 32) >> 3)));
  v171 = ((v170 ^ 0x27E877B2) - 669546418) ^ ((v170 ^ 0xE54EA481) + 447830911) ^ ((v170 ^ 0x977A87E3) + 1753577501);
  HIDWORD(v151) = *(v150 + v144);
  LODWORD(v151) = (HIDWORD(v151) ^ 0x70) << 24;
  v172 = *(v147 + 4 * LODWORD(STACK[0x36C]));
  v173 = *(v147 + 4 * LODWORD(STACK[0x370]));
  v174 = (((v169 ^ 0x7D72859D) - 2104657309) ^ ((v169 ^ 0xF4DEFA79) + 186713479) ^ ((v169 ^ 0xDC702B34) + 596628684)) + 200594121;
  v175 = (((v172 ^ 0x32AAD7CE) - 850057166) ^ ((v172 ^ 0x57A4D4C0) - 1470420160) ^ ((v172 ^ 0x30D257DE) - 819091422)) + 200594121;
  v176 = v116 ^ *(v147 + 4 * LODWORD(STACK[0x38C])) ^ v174 ^ (v171 - 1779819916) ^ (16 * v174) ^ (v151 >> 27) ^ *(v147 + 4 * LODWORD(STACK[0x388])) ^ ((*(v150 + v115) >> 3) | (32 * *(v150 + v115))) ^ v175 ^ (16 * v175);
  v177 = *(v147 + 4 * LODWORD(STACK[0x390]));
  v178 = v176 ^ ((((v173 ^ 0x2F32D4D9) - 791860441) ^ ((v173 ^ 0xD8D3ACD0) + 657216304) ^ ((v173 ^ 0xA23D2CD9) + 1573049127)) - 1779819916);
  LODWORD(STACK[0x388]) = v178;
  v179 = ((v177 ^ 0x922DE211) + 1842486767) ^ ((v177 ^ 0x55B1BAF2) - 1437711090) ^ ((v177 ^ 0x92400C33) + 1841296333);
  v180 = *(v147 + 4 * LODWORD(STACK[0x394]));
  HIDWORD(v151) = *(v150 + v145);
  LODWORD(v151) = (HIDWORD(v151) ^ 0x70) << 24;
  v181 = *(v147 + 4 * LODWORD(STACK[0x398]));
  v182 = (((v181 ^ 0xAE837DA5) + 1367114331) ^ ((v181 ^ 0xFD94CFE1) + 40579103) ^ ((v181 ^ 0x6CBE694) - 114026132)) + 200594121;
  v183 = *(v147 + 4 * LODWORD(STACK[0x3A8]));
  v184 = v168 ^ v166;
  v185 = v178 ^ v184;
  v186 = v116 ^ *(v147 + 4 * LODWORD(STACK[0x48C])) ^ (v179 + 200594121) ^ ((((v180 ^ 0xCEB7E05B) + 826810277) ^ ((v180 ^ 0xA127FAE4) + 1591215388) ^ ((v180 ^ 0x3A4C4E6F) - 978079343)) - 1779819916) ^ (16 * (v179 + 200594121)) ^ (v151 >> 27) ^ *(v147 + 4 * LODWORD(STACK[0x478])) ^ ((*(v150 + v146) >> 3) | (32 * *(v150 + v146))) ^ v182 ^ (16 * v182) ^ ((((v183 ^ 0xAA3ED2BA) + 1438723398) ^ ((v183 ^ 0x7EDB9EC3) - 2128322243) ^ ((v183 ^ 0x813918A9) + 2126964567)) - 1779819916);
  LODWORD(STACK[0x38C]) = v186;
  v187 = v178 ^ v184 ^ v186 ^ 0x310BD07C;
  v188 = STACK[0x320];
  v189 = LODWORD(STACK[0x328]) ^ LODWORD(STACK[0x320]);
  v190 = v164 ^ v189 ^ v187;
  LODWORD(STACK[0x3C0]) = v190;
  LODWORD(v150) = LODWORD(STACK[0x348]) ^ LODWORD(STACK[0x3A0]);
  v191 = v184 ^ v150;
  LODWORD(STACK[0x364]) = v184 ^ v150;
  v192 = v190 ^ 0x259FE82D;
  v193 = *(v17 + 4 * ((v190 ^ 0x259FE82Du) >> 16));
  v194 = v187 ^ v150;
  LODWORD(STACK[0x368]) = v187 ^ v150;
  v195 = STACK[0x324];
  v196 = LODWORD(STACK[0x324]) ^ v188;
  v197 = *(v18 + 4 * HIBYTE(v192));
  v198 = *(v16 + 4 * v192) ^ *(v167 + 4 * BYTE1(v192));
  LODWORD(STACK[0x36C]) = v185 ^ v196;
  v199 = v191 ^ v193 ^ v198 ^ v197 ^ 0x7D31B783;
  v200 = v185 ^ v196 ^ v194 ^ 0xE8108B0F ^ v199;
  v201 = v192 ^ v189 ^ v200;
  LODWORD(STACK[0x3A8]) = v201;
  v202 = v201 ^ 0x67745A4E;
  v203 = *(v167 + 4 * ((v201 ^ 0x5A4E) >> 8)) ^ *(v17 + 4 * ((v201 ^ 0x67745A4Eu) >> 16)) ^ *(v16 + 4 * (v201 ^ 0x4Eu)) ^ *(v18 + 4 * ((v201 ^ 0x67745A4Eu) >> 24));
  LODWORD(STACK[0x390]) = v200 ^ v150;
  v204 = v199 ^ v185;
  LODWORD(STACK[0x358]) = v199 ^ v185;
  LODWORD(STACK[0x35C]) = v199 ^ v150;
  v205 = v199 ^ v150 ^ 0xE5E45B60 ^ v203;
  v206 = v205 ^ v204;
  v207 = v205 ^ v204 ^ v200 ^ v150 ^ 0xA0AD3834;
  v208 = v207 ^ v196 ^ v202;
  LODWORD(STACK[0x354]) = v208;
  v209 = v208 ^ 0x9ED15FC3;
  v210 = *(v167 + 4 * ((v208 ^ 0x5FC3) >> 8));
  v211 = v199 ^ 0xC4E8B51F ^ v203;
  LODWORD(STACK[0x370]) = v211;
  v212 = *(v17 + 4 * BYTE2(v209)) ^ v210 ^ *(v16 + 4 * v209) ^ *(v18 + 4 * HIBYTE(v209));
  v213 = v207 ^ v150;
  LODWORD(STACK[0x334]) = v207 ^ v150;
  v214 = v206 ^ v196;
  LODWORD(STACK[0x398]) = v206 ^ v196 ^ 0x20FBAAFF;
  v215 = v212 ^ v211 ^ v206 ^ v196 ^ 0x20FBAAFF;
  v216 = v215 ^ 0xC57D9346;
  v217 = v215 ^ v213 ^ 0x41B7ADDD;
  v218 = v212 ^ v205;
  LODWORD(STACK[0x48C]) = v212 ^ v205;
  v219 = v209 ^ v217;
  v220 = v209 ^ v217 ^ v189;
  LODWORD(STACK[0x314]) = v220;
  v221 = *(v16 + 4 * (v220 ^ 0xF7u)) ^ *(v17 + 4 * ((v220 ^ 0x287468F7) >> 16)) ^ v218 ^ *(v167 + 4 * ((v220 ^ 0x68F7) >> 8)) ^ *(v18 + 4 * (HIBYTE(v220) ^ 0x82));
  LODWORD(STACK[0x394]) = v217 ^ v150;
  LODWORD(STACK[0x360]) = v216 ^ v196;
  LODWORD(STACK[0x310]) = v216;
  v222 = v216 ^ v196 ^ v217 ^ v150 ^ 0x78B3264A ^ v221;
  v223 = v221;
  LODWORD(STACK[0x2F4]) = v221;
  v224 = v222 ^ v219;
  v225 = *(v17 + 4 * ((v222 ^ v219 ^ 0x352F2B30u) >> 16));
  v226 = *(v167 + 4 * ((v222 ^ v219 ^ 0x2B30) >> 8));
  *(v19 - 148) = 0;
  v227 = v226 ^ v225 ^ *(v16 + 4 * ((v222 ^ v219) ^ 0x30u)) ^ *(v18 + 4 * ((v222 ^ v219 ^ 0x7B2F2B30u) >> 24));
  LODWORD(v117) = v222 ^ v150;
  LODWORD(v116) = v150;
  v228 = v216 ^ v150 ^ v227;
  v229 = v117 ^ 0x78BDC484 ^ v228;
  LODWORD(v20) = v195 ^ LODWORD(STACK[0x32C]) ^ v224 ^ 0x7B2F2B30 ^ v229;
  v230 = v227 ^ v223;
  v231 = *(v167 + 4 * ((v20 ^ 0x2D59) >> 8)) ^ *(v17 + 4 * ((v20 ^ 0xFE7D2D59) >> 16)) ^ v227 ^ v223 ^ *(v16 + 4 * (v20 ^ 0x59u)) ^ *(v18 + 4 * ((v20 ^ 0x367D2D59) >> 24));
  LODWORD(v150) = v228 ^ v196;
  LODWORD(STACK[0x318]) = v229 ^ v116;
  v232 = v229 ^ v116 ^ 0x88E7846;
  v233 = v150 ^ 0xC4E8B51F;
  v234 = v232 ^ v231 ^ v150 ^ 0xC4E8B51F;
  v235 = v196 ^ v20 ^ 0x367D2D59 ^ v234;
  LODWORD(v147) = *(v167 + 4 * ((v235 ^ 0x4ECF) >> 8)) ^ *(v17 + 4 * ((v235 ^ 0x4B734ECF) >> 16)) ^ *(v16 + 4 * (v235 ^ 0xCFu)) ^ *(v18 + 4 * (HIBYTE(v235) ^ 0xAD));
  v236 = v231 ^ v150 ^ 0xC4E8B51F ^ v196;
  v237 = v116;
  LODWORD(STACK[0x33C]) = v231 ^ v116;
  v238 = v236 ^ v231 ^ v116 ^ v147;
  LODWORD(v115) = v238 ^ 0x51348BFC;
  LODWORD(STACK[0x340]) = v234 ^ v116;
  LODWORD(STACK[0x31C]) = v116;
  v239 = v234 ^ v116 ^ 0xA680FC94 ^ v238;
  LODWORD(v116) = v147 ^ v231;
  v240 = v234 ^ v20 ^ 0x367D2D59 ^ v239;
  LODWORD(STACK[0x350]) = v240;
  v241 = *(v167 + 4 * ((v240 ^ 0x1753) >> 8)) ^ *(v17 + 4 * ((v240 ^ 0x39331753u) >> 16));
  v242 = v147 ^ v231 ^ *(v16 + 4 * (v240 ^ 0x53u));
  LODWORD(STACK[0x324]) = v116;
  LODWORD(v147) = v241 ^ v242 ^ *(v18 + 4 * ((v240 ^ 0xA4331753) >> 24));
  v243 = v115 ^ v234;
  v244 = v115 ^ v196;
  LODWORD(STACK[0x338]) = v244;
  v245 = v147 ^ v244;
  LODWORD(STACK[0x478]) = v245 ^ v239;
  v246 = v243 ^ v189 ^ v240 ^ 0xA4331753 ^ v245;
  LODWORD(STACK[0x34C]) = v246;
  v247 = v246 ^ 0xB1804A1A;
  v248 = v147 ^ v115;
  v357 = v147 ^ v237;
  v249 = *(v18 + 4 * ((v246 ^ 0xB1804A1A) >> 24)) ^ *(v17 + 4 * ((v246 ^ 0x2A804A1A) >> 16)) ^ *(v167 + 4 * ((v246 ^ 0x4A1A) >> 8)) ^ v147 ^ v237 ^ *(v16 + 4 * (v246 ^ 0x1Au));
  LODWORD(STACK[0x330]) = 2046763549 - (v116 ^ 0xE5A2B696);
  v250 = -1786878942 - (v116 ^ 0xE5A2B696);
  LODWORD(STACK[0x284]) = v250;
  v251 = STACK[0x354];
  v252 = v250 + (LODWORD(STACK[0x354]) ^ 0x6116A499);
  v253 = v252 + (v230 ^ 0xB0D23CEE);
  v254 = v253 + (v150 ^ 0xB87DB92A);
  LODWORD(STACK[0x30C]) = v254;
  v255 = STACK[0x334];
  v256 = v254 - (LODWORD(STACK[0x334]) ^ 0xE265F4CE);
  v359 = v256 + 74360216;
  v347 = v256;
  LODWORD(STACK[0x320]) = ((-74360216 - v256) ^ (v256 - ((2 * (v256 + 74360216)) & 0xBE93DAEE) - 474442993) ^ 0xDF49ED77 ^ ((v248 ^ 0x87679904) - (v248 ^ 0x87679904 ^ (v256 + 74360216)))) + (v248 ^ 0x87679904);
  v334 = v256 - 479394661;
  v257 = v256 - 479394661 - (v117 ^ 0x7981DE39);
  LODWORD(STACK[0x2F8]) = v257;
  v353 = v257 - 961142668;
  v354 = v249 ^ 0x75DCD31A;
  v258 = STACK[0x380];
  v259 = 2 * LODWORD(STACK[0x380]);
  v358 = v243 ^ 0x3CB7FFA8;
  LODWORD(STACK[0x37C]) = (LODWORD(STACK[0x380]) - (v259 & 0xFE21762C) + 2131802902) ^ v243 ^ 0x43A744BE;
  v260 = *(v19 - 152);
  v261 = STACK[0x344];
  v351 = v235 ^ 0x9D85E499;
  LODWORD(STACK[0x308]) = (LODWORD(STACK[0x344]) - ((2 * v260) & 0x7A9318E2) + 1109714096) ^ v235 ^ 0xA0CC68E8;
  LODWORD(STACK[0x304]) = v258 - (v259 & 0x5755670C) + 732607366;
  v262 = v236 ^ 0x61DDD550;
  LODWORD(STACK[0x300]) = (v258 - (v259 & 0xD6158516) + 1795867275) ^ v236 ^ 0xAD717DB;
  v263 = v20 ^ 0xC418E6C0;
  LODWORD(STACK[0x2FC]) = (v261 - ((2 * v260) & 0xD025CC7A) - 319930756) ^ v20 ^ 0x2C0A00FD;
  v350 = (v258 - (v259 & 0xEB7961B4) - 172183334) ^ v230 ^ 0x456E8C34;
  LODWORD(STACK[0x2F0]) = (v258 - (v259 & 0x6F484D54) + 933504682) ^ v233 ^ 0x4B312A9F;
  LODWORD(STACK[0x280]) = (v258 - (v259 & 0xB269F820) + 1496644624) ^ v117 ^ 0x20B52229;
  v356 = v224 ^ 0x37CDCBB9;
  LODWORD(STACK[0x27C]) = (v261 - ((2 * v260) & 0xA8BE52D4) - 650477143) ^ v224 ^ 0xE392E2D3;
  v355 = LODWORD(STACK[0x314]) ^ 0xEC954216;
  v349 = (v261 - ((2 * v260) & 0xCD795820) - 342358961) ^ LODWORD(STACK[0x314]) ^ 0xA29EE06;
  LODWORD(STACK[0x334]) = (v258 - (v259 & 0x7FD17E1E) + 1072217871) ^ v255 ^ 0xDD8D4BC1;
  if ((v252 & 0x20) != 0)
  {
    v264 = -32;
  }

  else
  {
    v264 = 32;
  }

  LODWORD(STACK[0x354]) = v264 + v252;
  HIDWORD(v310) = (v261 - ((2 * v260) & 0x9F8E0A64) - 727556751) ^ v251 ^ 0xAED1A1AB ^ v252;
  LODWORD(STACK[0x344]) = v258 - (v259 & 0x519236DC) - 1463215250;
  v265 = LODWORD(STACK[0x358]) ^ 0x35F48D13;
  LODWORD(STACK[0x358]) ^= (v258 - (v259 & 0xE6F1AFA) - 2026402435) ^ 0xB2C3006E;
  v266 = LODWORD(STACK[0x35C]) ^ 0x606FBCD;
  v348 = (v258 - (v259 & 0xEB297E54) + 1972682538) ^ LODWORD(STACK[0x35C]) ^ 0x739244E7;
  v267 = LODWORD(STACK[0x364]) ^ 0x7CD38718;
  v352 = (v258 - (v259 & 0xDF87839A) - 272383539) ^ LODWORD(STACK[0x364]) ^ 0x931046D5;
  v346 = LODWORD(STACK[0x368]) ^ 0x71B83764;
  v345 = (v258 - (v259 & 0xFFED5B1C) + 2146872718) ^ LODWORD(STACK[0x368]) ^ 0xE4E9AEA;
  v268 = LODWORD(STACK[0x36C]) ^ 0x9D23B7C9;
  v343 = (v258 - (v259 & 0xA836CD2) - 2059291031) ^ LODWORD(STACK[0x36C]) ^ 0x186201A0;
  v269 = v258 + (~v259 | 0x33CEBC49) - 434593316;
  v270 = LODWORD(STACK[0x388]) ^ 0x51B0E1A5;
  v271 = v269 ^ LODWORD(STACK[0x388]) ^ 0xB7A8407E;
  v272 = v249 ^ 0xC4E8B51F;
  v273 = v249 ^ 0xC4E8B51F ^ v248;
  v274 = v273 ^ LODWORD(STACK[0x478]);
  v275 = v274 ^ v247 ^ 0xCDB33779;
  v276 = v258 ^ v260 ^ LODWORD(STACK[0x348]) ^ v274 ^ v247 ^ 0x22DDA446;
  v342 = (LODWORD(STACK[0x348]) - ((2 * LODWORD(STACK[0x348])) & 0x8D9D5DAE) - 959533353) ^ v273 ^ 0x4194AD95;
  LODWORD(STACK[0x35C]) = v353 + v262;
  v277 = v353 + v262 - (LODWORD(STACK[0x38C]) ^ 0xD2D96E42);
  v278 = v277 - 1795714794;
  LODWORD(STACK[0x348]) = v277 - 1795714794 + v263;
  v279 = v277 - 1795714794 + v263 + v351;
  LODWORD(STACK[0x364]) = v279;
  v280 = v279 - v270;
  LODWORD(STACK[0x36C]) = v280 - 1774861834;
  v281 = v280 - 1774861834 + v265;
  v282 = v281 + (v214 ^ 0xE5A84BC5);
  LODWORD(STACK[0x388]) = v282 - 1531568504;
  v283 = v282 - 1531568504 - v354;
  v284 = STACK[0x328];
  HIDWORD(v332) = LODWORD(STACK[0x328]) ^ v272 ^ v283 ^ 0x9BF98828;
  LODWORD(STACK[0x314]) = v350 ^ v253;
  v285 = STACK[0x384];
  LODWORD(v328) = LODWORD(STACK[0x384]) ^ 0x56E17E6D ^ v253;
  LODWORD(STACK[0x368]) = LODWORD(STACK[0x384]) ^ v357 ^ 0xA9FBA444;
  v286 = v283 + (LODWORD(STACK[0x48C]) ^ 0x9854F2CD);
  v287 = v286 + v268;
  v288 = v286 + v268 - 1324866244;
  v289 = v288 - v266;
  v290 = v288 - v266 + 1200133362;
  v291 = v290 + (v273 ^ 0x875A0342);
  v292 = v291 - 372225356 + v275;
  v293 = v292 - v267;
  v336 = v292 - v267 + 850300689;
  HIDWORD(v317) = v258 ^ v336 ^ 0x28158B0E;
  v340 = v285 ^ LODWORD(STACK[0x360]) ^ 0xA7AE0447;
  v294 = LODWORD(STACK[0x2F4]);
  LODWORD(STACK[0x360]) = v285 ^ LODWORD(STACK[0x310]) ^ v294 ^ 0x5795E431;
  HIDWORD(v316) = v271 ^ v280;
  LODWORD(v317) = v285 ^ 0xB0159992 ^ v280;
  LODWORD(STACK[0x370]) ^= v285 ^ 0xDE17C293;
  HIDWORD(v308) = v284 ^ (v292 - v267 - 733232995) ^ 0xFE862EB0;
  LODWORD(v307) = v276 ^ v292;
  LODWORD(v333) = v15 ^ LODWORD(STACK[0x3A0]) ^ v285 ^ 0xA5D77DFA ^ v292;
  v295 = *(v19 - 152);
  v296 = v258;
  LODWORD(v322) = v258 ^ (v291 - 372225356) ^ 0xE9D04AB4;
  HIDWORD(v314) = v258 ^ (v280 - 1045276453) ^ 0x3E4DA725;
  v297 = STACK[0x32C];
  v298 = v293 + 1522801183;
  HIDWORD(v315) = v258 ^ (v293 + 1522801183) ^ 0x95E1E97B;
  HIDWORD(v312) = v258 ^ v359 ^ 0x7D066421;
  HIDWORD(v331) = v342 ^ v291;
  LODWORD(v315) = LODWORD(STACK[0x3A0]) ^ 0x9F86194E ^ v291;
  HIDWORD(v325) = v258 ^ v288 ^ 0xB108253C;
  v299 = v285 ^ LODWORD(STACK[0x390]) ^ 0xD5C85342;
  LODWORD(STACK[0x318]) = v258 ^ (v289 + 1007276513) ^ 0xC3F62E1F;
  HIDWORD(v313) = v297 ^ 0x57C388AD ^ v283;
  LODWORD(v308) = v285 ^ v334 ^ 0xA9F10F6B ^ LODWORD(STACK[0x478]);
  LODWORD(STACK[0x478]) = v295 ^ 0xD483691B;
  HIDWORD(v330) = v285 ^ 0xCDD59E75 ^ v277;
  v300 = v293 - 257555558;
  v301 = v293 - 629624519;
  HIDWORD(v319) = v352 ^ v293;
  LODWORD(v338) = v285 ^ 0x475340AF ^ v293;
  LODWORD(v312) = v343 ^ v287;
  v302 = v293 - 629624519 - v356;
  v303 = v302 - 1603562255 + v358;
  LODWORD(v316) = v345 ^ (v303 - v355 + v346);
  LODWORD(v344) = v285 ^ 0xD881F0C8 ^ (v303 - v355 + v346);
  LODWORD(v309) = v348 ^ v289;
  LODWORD(v329) = v285 ^ 0xDC9D3B8B ^ v289;
  HIDWORD(v309) = LODWORD(STACK[0x358]) ^ v281;
  HIDWORD(v322) = v299 ^ v290;
  LODWORD(v323) = v295 ^ 0xA94399C2 ^ (v302 + 1455187518);
  LODWORD(v325) = v296 ^ v290 ^ 0x3E1A268D;
  LODWORD(v339) = v295 ^ 0xA7CA2228 ^ v301;
  HIDWORD(v344) = v15 ^ LODWORD(STACK[0x3A8]) ^ 0x30BAA0D ^ v301;
  HIDWORD(v326) = LODWORD(STACK[0x370]) ^ v278;
  LODWORD(v326) = v285 ^ 0x8EDD9612 ^ v282;
  HIDWORD(v318) = LODWORD(STACK[0x334]) ^ v347;
  LODWORD(v341) = v285 ^ 0x3F26D3FB ^ v347;
  HIDWORD(v341) = v15 ^ 0x3C722911 ^ LODWORD(STACK[0x354]);
  LODWORD(v319) = v285 ^ 0x8304554F ^ v286;
  HIDWORD(v338) = LODWORD(STACK[0x344]) ^ LODWORD(STACK[0x48C]) ^ 0x6DB2D507 ^ v286;
  LODWORD(v318) = v340 ^ (v347 - 2023210633);
  HIDWORD(v339) = v296 ^ (v347 - 2023210633) ^ 0xB3672269;
  LODWORD(v332) = v285 ^ LODWORD(STACK[0x394]) ^ 0x309FE053 ^ (v280 - 1045276453);
  LODWORD(v324) = v349 ^ (v303 - v355);
  HIDWORD(v329) = v15 ^ 0xAD54F88A ^ (v303 - v355);
  LODWORD(v321) = v285 ^ LODWORD(STACK[0x31C]) ^ v294 ^ 0xFCF57231 ^ v336;
  HIDWORD(v311) = LODWORD(STACK[0x360]) ^ v300;
  LODWORD(v314) = v296 ^ v300 ^ 0x179B91BD;
  HIDWORD(v321) = LODWORD(STACK[0x280]) ^ LODWORD(STACK[0x2F8]);
  LODWORD(v311) = LODWORD(STACK[0x27C]) ^ v302;
  HIDWORD(v323) = v15 ^ 0x8F5732E2 ^ v302;
  v304 = STACK[0x30C];
  LODWORD(STACK[0x310]) = LODWORD(STACK[0x2F0]) ^ LODWORD(STACK[0x30C]);
  HIDWORD(v320) = v285 ^ 0xE69E2F76 ^ v304;
  LODWORD(STACK[0x30C]) = LODWORD(STACK[0x2FC]) ^ LODWORD(STACK[0x348]);
  HIDWORD(v328) = v285 ^ LODWORD(STACK[0x33C]) ^ 0xDD5D0E68 ^ v288;
  LODWORD(v320) = v285 ^ LODWORD(STACK[0x340]) ^ 0x7B00DF42 ^ v298;
  LODWORD(v310) = LODWORD(STACK[0x308]) ^ LODWORD(STACK[0x364]);
  HIDWORD(v333) = v15 ^ 0xF343783D ^ LODWORD(STACK[0x364]);
  HIDWORD(v307) = v285 ^ 0xF4B925A4 ^ LODWORD(STACK[0x330]);
  LODWORD(v337) = v285 ^ LODWORD(STACK[0x338]) ^ 0xF9C55279 ^ (v291 - 372225356);
  HIDWORD(v327) = LODWORD(STACK[0x37C]) ^ v303;
  LODWORD(v330) = v285 ^ 0x81D1A9AA ^ v303;
  LODWORD(v313) = LODWORD(STACK[0x478]) ^ LODWORD(STACK[0x36C]);
  HIDWORD(v335) = v15 ^ LODWORD(STACK[0x350]) ^ 0xB305AC23 ^ LODWORD(STACK[0x36C]);
  HIDWORD(a15) = LODWORD(STACK[0x368]) ^ (v302 - 1603562255);
  HIDWORD(v337) = v296 ^ (v302 - 1603562255) ^ 0x39AE8F10;
  LODWORD(v331) = v285 ^ 0x39B3B64A ^ LODWORD(STACK[0x320]);
  LODWORD(v327) = v296 ^ v334 ^ 0x63631D98;
  HIDWORD(v324) = v295 ^ 0xA4B61E88 ^ LODWORD(STACK[0x388]);
  LODWORD(v335) = v15 ^ LODWORD(STACK[0x34C]) ^ 0xD68386F9 ^ LODWORD(STACK[0x388]);
  v305 = *(*(v19 - 216) + 8 * SLODWORD(STACK[0x3C4]));
  STACK[0x478] = STACK[0x3C8];
  LODWORD(STACK[0x48C]) = 1;
  return v305(v294, STACK[0x430], STACK[0x450], STACK[0x428], STACK[0x420], STACK[0x408], STACK[0x410], STACK[0x400], a9, a10, a11, a12, a13, a14, a15, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v335, v337, v338, v339, v341, v344);
}

uint64_t sub_10080E944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W6>, uint64_t a4@<X8>)
{
  v6 = *(*(a2 + v5) + a1);
  v7 = *(a4 + 8 * (a3 ^ 0xB538));
  v8 = *(*(a2 + v5) + a1) == 0;
  *(*(v7 - 1689000003) + 4 * a1) = v6;
  *(*(v7 - 1689000003) + 4 * a1 + 1024) = v6 << 8;
  *(*(v7 - 1689000003) + 4 * a1 + 2048) = v6 << ((a3 + 88) ^ 0xB5);
  *(*(v7 - 1689000003) + 4 * a1 + 3072) = v6 << 24;
  return (*(v4 + 8 * ((2 * (((a3 - 84) ^ v8) & 1)) & 0xDF | (32 * (((a3 - 84) ^ v8) & 1)) | a3)))();
}

uint64_t sub_10080E9F4@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  (*(a1 + 8 * (v2 + 36086)))(a2);
  v4 = STACK[0x5A0];
  *(*(v3 + 1280) + 24) = 0;
  return (*(v4 + 8 * v2))();
}

uint64_t sub_10080EA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (*(a8 + 8 * (v8 ^ 0xF06)))(32);
  v10 = STACK[0x5A0];
  STACK[0x9E0] = v9;
  return (*(v10 + 8 * (((v9 != 0) * ((v8 + 407288413) & 0xE7B8FFE5 ^ 0x7C6A)) ^ v8)))();
}

uint64_t sub_10080EB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 - 1497668662);
  v7 = a3 + v6 - 1;
  if (v7 >= v6)
  {
    v7 = (v3 - 1497668662);
  }

  return (*(v5 + 8 * ((v4 + 7678) ^ (2 * (a3 + v6 - v7 < 8)))))();
}

uint64_t sub_10080EC30()
{
  v4 = *(v3 + 8);
  (*(v1 + 8 * (v0 + 45564)))(v4, v2 + 16, 16, -1);
  v5 = (*(v1 + 8 * (v0 + 45564)))(v4 + 16, &STACK[0x210], 16, -1);
  return (*(v1 + 8 * v0))(v5);
}

uint64_t sub_10080EC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, __int16 a54, char a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, int a63)
{
  v69 = *(v63 + 8);
  a63 = 0;
  a56 = 0;
  v70 = *(v63 + 4);
  v71 = 297845113 * ((-2 - ((~(v68 - 144) | 0x696C22E9F2204883) + ((v68 - 144) | 0x9693DD160DDFB77CLL))) ^ 0xDE37832C8513541DLL);
  *(v68 - 128) = &a56;
  *(v68 - 104) = (v66 + 37753) ^ v71;
  *(v68 - 112) = v67 ^ v71;
  *(v68 - 144) = v69;
  *(v68 - 136) = &a63;
  *(v68 - 120) = v71 + (v65 ^ 0xD5D8F247 ^ v70) + ((((v66 - 628190809) & 0x25715D5E) + 2145172054) & (2 * v70)) + 2144853488;
  v72 = (*(v64 + 8 * (v66 ^ 0xEDA6)))(v68 - 144);
  return (*(v64 + 8 * ((30439 * (*(v68 - 116) == -371865839)) ^ v66)))(v72);
}

uint64_t sub_10080EF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v10 + 696) = v8;
  LODWORD(STACK[0x848]) = 283688481;
  *(v10 + 216) = &STACK[0x670];
  LODWORD(STACK[0x61C]) = 1497929061;
  return (*(a8 + 8 * v9))();
}

uint64_t sub_10080EF70@<X0>(unsigned int a1@<W0>, int a2@<W2>, int a3@<W3>, int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W7>, uint64_t a8@<X8>)
{
  v15 = (((a1 ^ (a1 >> 30) ^ a7) + a2) ^ ((a1 ^ (a1 >> 30) ^ a3) + a4) ^ (v8 + (a1 ^ (a1 >> 30) ^ a5))) * a6;
  *(v12 + 4 * a8) = a8 + v11 + v15;
  return (*(v13 + 8 * (v14 | (2 * (a8 > 0x26E)))))((v9 + v10 + v15));
}

uint64_t sub_10080F01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, char a29)
{
  *(v31 - 128) = &a27;
  *(v31 - 120) = &a29;
  *(v31 - 112) = (v29 + 27304) ^ (353670337 * ((v31 - 128 - 2 * ((v31 - 128) & 0x452A2F70) + 1160392561) ^ 0xF10BD74C));
  v32 = (*(a26 + 8 * (v29 + 39844)))(v31 - 128);
  return (*(a26 + 8 * ((7 * (((((v29 - 52) ^ (v29 - 36)) ^ (v30 == 1)) & 1) == 0)) ^ v29)))(v32);
}

uint64_t sub_10080F110@<X0>(char a1@<W7>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = v70 + v67 + 932435744 + (((a2 ^ 0x850F9042) + 2062577598) ^ ((v68 ^ 0xEFCA) + 68374620 + (a2 ^ 0xFBEC59D9)) ^ (((1492 * (v68 ^ 0xBA06) + 1265863934) ^ a2) - 1265874378));
  v73 = (v72 ^ 0x267DFF17) & (2 * (v72 & 0xA681FF27)) ^ v72 & 0xA681FF27;
  v74 = ((2 * (v72 ^ 0x2A7D2119)) ^ 0x19F9BC7C) & (v72 ^ 0x2A7D2119) ^ (2 * (v72 ^ 0x2A7D2119)) & 0x8CFCDE3E;
  v75 = v74 ^ 0x84044202;
  v76 = (v74 ^ 0x8089C3C) & (4 * v73) ^ v73;
  v77 = ((4 * v75) ^ 0x33F378F8) & v75 ^ (4 * v75) & 0x8CFCDE38;
  v78 = (v77 ^ 0xF05830) & (16 * v76) ^ v76;
  v79 = ((16 * (v77 ^ 0x8C0C8606)) ^ 0xCFCDE3E0) & (v77 ^ 0x8C0C8606) ^ (16 * (v77 ^ 0x8C0C8606)) & 0x8CFCDE20;
  v80 = v78 ^ 0x8CFCDE3E ^ (v79 ^ 0x8CCCC200) & (v78 << 8);
  v81 = (v80 << 16) & 0xCFC0000 ^ v80 ^ ((v80 << 16) ^ 0x5E3E0000) & (((v79 ^ 0x301C1E) << 8) & 0xCFC0000 ^ (((v79 ^ 0x301C1E) << 8) ^ 0x7CDE0000) & (v79 ^ 0x301C1E) ^ 0x200000);
  v82 = ((v72 ^ (2014252218 * *(a65 + 4 * v71)) ^ (2 * v81) ^ 0x1B56DB35) - 1076621132) ^ ((v72 ^ (2014252218 * *(a65 + 4 * v71)) ^ (2 * v81) ^ 0xEEDAE00D) + 1247292300) ^ ((v72 ^ (2014252218 * *(a65 + 4 * v71)) ^ (2 * v81) ^ 0x528C7863) - 166808602);
  v83 = ((2 * v65) & 0x1D6) + (v65 ^ 0xD66FBEF7E3E47DEBLL);
  v84 = v83 + 0x299041081C1B8198;
  v85 = (STACK[0x218] + 4 * v83 - 0x59BEFBDF8F91F7ACLL);
  if (v84 < 0xFFFFFFFFFFFFFF83)
  {
    v85 = (STACK[0x220] + 4 * v84);
  }

  v86 = STACK[0x210];
  *(STACK[0x210] + 4 * (a1 & 0x1F)) -= (32737052 * (v82 - (((*v85 ^ 0x1EA20141) + 559808191) ^ ((*v85 ^ 0x315C222D) - 828121645) ^ ((*v85 ^ 0x1A6E5F3D) + 630300867))) - 1617779236) ^ 0x15084036;
  return (*(STACK[0x228] + 8 * ((30 * ((*(v86 + 4 * ((v66 + v69 + 23) & 0x1F)) - 2099164960) % 0x1Bu != 0)) ^ v68)))();
}

uint64_t sub_10080F528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  LODWORD(v227) = 0;
  HIDWORD(v227) = (v43 - 40071) | 0x1207;
  v46 = v44 ^ (HIDWORD(v227) + 632942281);
  *(v45 - 224) = v46;
  v48 = (a38 + v46);
  v49 = 2 * (a38 + v46);
  v228 = (v43 - 25507);
  v50 = (8 * (v48 - (v49 & 2)) + 40) & 0x38;
  v51 = __ROR8__(&v48[v228 - (v49 & 0xA69E4CE9B1AFAA4ALL) + 0x534F2674D8D79711] & 0xFFFFFFFFFFFFFFF8 ^ 0x534F2674D8D7D520, 8) - 0x2E6D7CC1A1D69CC4;
  *(&v52 + 1) = v51 ^ 0x12159011EED07D4ELL;
  *&v52 = v51;
  v53 = (__ROR8__(v51 ^ 0x9E8189E31F9B64A8, 8) + (v51 ^ 0x12159011EED07D4ELL)) ^ 0x278A8229B8BC35DDLL;
  v54 = v53 ^ (v52 >> 61);
  v55 = (v54 + __ROR8__(v53, 8)) ^ 0xFD0A19BB2FE13205;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = __ROR8__(v55, 8) + v56;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = __ROR8__(v57 ^ 0x19BBA1D59C2A28CLL, 8) + (v58 ^ 0x19BBA1D59C2A28CLL);
  *(&v52 + 1) = v58 ^ 0x19BBA1D59C2A28CLL;
  *&v52 = v58;
  v60 = v59 ^ 0xA958557FD3FC79DDLL ^ (v52 >> 61);
  v61 = (__ROR8__(v59 ^ 0xA958557FD3FC79DDLL, 8) + v60) ^ 0x2C3F70FBF6F9ADA3;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = (v62 + __ROR8__(v61, 8)) ^ 0x1B5DE9094BAFA51ALL;
  v64 = (((v63 ^ __ROR8__(v62, 61)) + __ROR8__(v63, 8)) ^ 0xC437C7327FD12F34) >> (v50 ^ 0x28u);
  v65 = __ROR8__(((&v48[-((2 * (v48 + 8)) & 0x4A69156E4CA55444) - 0x5ACB7548D9AD55C6] & 0xFFFFFFFFFFFFFFF8) - 16) ^ 0xA5348AB72652AA20, 8) - 0x2E6D7CC1A1D69CC4;
  *(&v52 + 1) = v65 ^ 0x12159011EED07D4ELL;
  *&v52 = v65;
  v66 = (__ROR8__(v65 ^ 0x9E8189E31F9B64A8, 8) + (v65 ^ 0x12159011EED07D4ELL)) ^ 0x278A8229B8BC35DDLL;
  v67 = v66 ^ (v52 >> 61);
  *&v52 = __ROR8__(v67, 61);
  v68 = v67 + __ROR8__(v66, 8);
  v69 = v68 ^ 0x65B3408BB6614CC4 ^ (v52 - ((2 * v52) & 0x3172B2613300FD82) - 0x6746A6CF667F813FLL);
  v70 = (v69 + (__ROR8__(v68, 8) ^ 0x5FD0A19BB2FE132)) ^ 0x19BBA1D59C2A28CLL;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = (v71 + __ROR8__(v70, 8)) ^ 0xA958557FD3FC79DDLL;
  v73 = v72 ^ __ROR8__(v71, 61);
  v74 = (__ROR8__(v72, 8) + v73) ^ 0x2C3F70FBF6F9ADA3;
  v75 = v74 ^ __ROR8__(v73, 61);
  v76 = (__ROR8__(v74, 8) + v75) ^ 0x1B5DE9094BAFA51ALL;
  v77 = (__ROR8__(v76, 8) + (v76 ^ __ROR8__(v75, 61))) ^ 0xC437C7327FD12F34;
  v78 = v77 >> (v50 ^ 0x28u);
  v79 = *v48;
  v80 = (((((v77 << (v50 ^ 0x12u)) - ((2 * (v77 << (v50 ^ 0x12u))) & 0xABCA907B14F3D8)) << 6) + 0x1579520F629E7B00) ^ 0x1579520F629E7B00) + v64;
  *&v52 = __ROR8__(&v48[-((2 * (v48 + 16)) & 0x9B6F9F3B1FD5098CLL) + 0x4DB7CF9D8FEA84D6] & 0xFFFFFFFFFFFFFFF8 ^ 0x4DB7CF9D8FEA84C0, 8);
  v81 = (((v52 - 0x2E6D7CC1A1D69CC4) >> 8) ^ 0x9E8189E31F9B64) + ((v52 - 0x2E6D7CC1A1D69CC4) ^ 0x12159011EED07D4ELL) + (((v52 - 0x2E6D7CC1A1D69CC4) << 56) ^ 0xA800000000000000);
  *(&v52 + 1) = (v52 - 0x2E6D7CC1A1D69CC4) ^ 0x12159011EED07D4ELL;
  *&v52 = v52 - 0x2E6D7CC1A1D69CC4;
  v81 ^= 0x278A8229B8BC35DDuLL;
  v82 = v81 ^ (v52 >> 61);
  v83 = (__ROR8__(v81, 8) + v82) ^ 0xFD0A19BB2FE13205;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = __ROR8__(v83, 8) + v84;
  v86 = v85 ^ __ROR8__(v84, 61);
  *(&v52 + 1) = v86 ^ 0x19BBA1D59C2A28CLL;
  *&v52 = v86;
  v87 = ((v86 ^ 0x19BBA1D59C2A28CLL) + __ROR8__(v85 ^ 0x19BBA1D59C2A28CLL, 8)) ^ 0xA958557FD3FC79DDLL;
  v88 = v87 ^ (v52 >> 61);
  v89 = (v88 + __ROR8__(v87, 8)) ^ 0x2C3F70FBF6F9ADA3;
  v90 = v89 ^ __ROR8__(v88, 61);
  v91 = (v90 + __ROR8__(v89, 8)) ^ 0x1B5DE9094BAFA51ALL;
  v92 = v91 ^ __ROR8__(v90, 61);
  *&v52 = __ROR8__(v91, 8);
  v93 = (((((((v52 + v92) ^ 0x37C7327FD12F34) << (v50 ^ 0x12u)) - ((2 * (((v52 + v92) ^ 0x37C7327FD12F34) << (v50 ^ 0x12u))) & 0x29387088D1A9E50)) << 6) + 0x5270E111A353CA00) ^ 0x5270E111A353CA00) + v78;
  v94 = HIBYTE(v93);
  v95 = *(a17 + (BYTE1(v80) ^ 0xE5)) << 16;
  LODWORD(v64) = (v95 ^ 0xFFF0FFFF) & ((*(a14 + (v64 ^ 0xB2)) << 24) ^ 0x9A5151D0) | v95 & 0xAE0000;
  v96 = *(a16 + (BYTE2(v80) ^ 0x82)) << 8;
  v97 = (v64 ^ 0xBEE1BB9A) & (v96 ^ 0xFFFF3AFE);
  LOBYTE(v64) = BYTE3(v80) ^ *(a15 + (BYTE3(v80) ^ 0xBELL));
  LODWORD(v92) = (v64 ^ 0xFFFFFF60) & ((v96 & 0x1500 | v97) ^ 0xD4BBB9B);
  v98 = *(a17 + (BYTE5(v80) ^ 0x3FLL)) << 16;
  v99 = (v98 ^ 0xFF03FFFF) & ((*(a14 + (BYTE4(v80) ^ 0xFLL)) << 24) ^ 0xF2059517) | v98 & 0xFA0000;
  v100 = HIBYTE(v80) ^ *(a15 + (HIBYTE(v80) ^ 0x19));
  v101 = (v100 ^ 0xFFFFFFEF) & (((v99 ^ 0x43006A20) & ((*(a16 + (BYTE6(v80) ^ 0xDBLL)) << 8) ^ 0xFB47F235) | v99 & 0x4B80000) ^ 0x99E30151);
  LODWORD(v80) = *(a17 + (BYTE1(v93) ^ 0x71)) << 16;
  LODWORD(v78) = (((*(a14 + (v78 ^ 0x55)) ^ 0xA3) << 24) ^ 0xB9C4E42F) & (v80 ^ 0xFFDAFE7F) | v80 & 0x3B0000;
  v102 = BYTE3(v93) ^ *(a15 + (BYTE3(v93) ^ 0x25));
  LODWORD(v78) = (v102 ^ 0xFFFFFFF7) & (((v78 ^ 0xEB121B90) & ((*(a16 + (BYTE2(v93) ^ 0xEELL)) << 8) ^ 0xFFD6A1B4) | v78 & 0x290008) ^ 0xEE9869A7);
  v103 = *(a14 + (BYTE4(v93) ^ 0xD6)) << 24;
  LODWORD(v80) = ((*(a17 + (BYTE5(v93) ^ 0x2ALL)) << 16) ^ 0x1A5A3C34) & (v103 ^ 0xD2FF7F7D) | v103 & 0xE5000000;
  LODWORD(v93) = *(a16 + (BYTE6(v93) ^ 0xABLL)) << 8;
  v104 = *(a15 + (v94 ^ 0x69));
  v105 = v44 & 0xFFFFFFFA ^ 0x25BA0605;
  *(v45 - 256) = v105;
  v106 = v94 ^ v104;
  v107 = (v94 ^ v104 ^ 0xFFFFFFF1) & ((v93 & 0x2300 | (v80 ^ 0x9780E048) & (v93 ^ 0xFFFFD77F)) ^ 0x9802BA21);
  LODWORD(v94) = *(a17 + (*(a38 + v105) ^ 0x36));
  v108 = v44 & 0xFFFFFFF2 ^ 0x25BA060DLL;
  *(v45 - 240) = v108;
  LODWORD(v93) = *(a17 + (*(a38 + v108) ^ 0x6FLL));
  v109 = v44 & 0xFFFFFFF6 ^ 0x25BA0609;
  *(v45 - 232) = v109;
  LODWORD(v80) = *(a17 + (*(a38 + v109) ^ 0xEDLL));
  v110 = v93 << 16;
  v111 = v44 & 0xFFFFFFFE ^ 0x25BA0601;
  *(v45 - 248) = v111;
  v235 = v44 & 0xFFFFFFF4 ^ 0x25BA060BLL;
  LODWORD(v93) = *(a15 + (*(a38 + v235) ^ 0x13)) ^ *(a38 + v235);
  LODWORD(v93) = ((v80 << 16) ^ 0xA84A6382) & ~v93 | v93 & 0x7D;
  v237 = v44 & 0xFFFFFFF1 ^ 0x25BA060ELL;
  LODWORD(v80) = ((*(a16 + (*(a38 + v237) ^ 0x59)) << 8) ^ 0x3930C74E) & (v110 ^ 0x7D55FFEF) | v110 & 0xFFCFFFFF;
  v238 = v44 & 0xFFFFFFFD ^ 0x25BA0602;
  v112 = *(a16 + (*(a38 + v238) ^ 0xAELL)) << 8;
  v113 = (v112 ^ 0xFFFFC0FF) & ((*(a17 + (*(a38 + v111) ^ 0x9ELL)) << 16) ^ 0x8254C5DE) | v112 & 0x3A00;
  v236 = v44 & 0xFFFFFFFB ^ 0x25BA0604;
  v231 = v44 & 0xFFFFFFF5 ^ 0x25BA060ALL;
  LODWORD(v93) = ((*(a16 + (*(a38 + v231) ^ 0x91)) << 8) ^ 0x5EA3FEDF) & (v93 ^ 0x76AA9C30) ^ v93 & 0xA05C2020;
  v239 = v44 & 0xFFFFFFFC ^ 0x25BA0603;
  v114 = *(a38 + v239);
  v234 = v44 & 0xFFFFFFF8 ^ 0x25BA0607;
  v115 = *(a15 + (*(a38 + v234) ^ 0x1FLL)) ^ *(a38 + v234);
  v229 = v44 & 0xFFFFFFF0 ^ 0x25BA060FLL;
  v116 = (v115 ^ 0xFFFFAA43) & (((((*(a14 + (*(a38 + v236) ^ 0x7FLL)) ^ 0x6B) << 24) ^ 0x57058C6F) & ((v94 << 16) ^ 0xFF54AC7F) | (v94 << 16) & 0xFA0000) ^ 0x189626A4);
  v117 = (*(a15 + (*(a38 + v229) ^ 0xC2)) ^ *(a38 + v229) | 0x7FFFFF00) & (v80 ^ 0x43666F7C) | (*(a15 + (*(a38 + v229) ^ 0xC2)) ^ *(a38 + v229)) & 0xCD;
  LODWORD(v80) = v115 & 0x34;
  v232 = v44 & 0xFFFFFFF9 ^ 0x25BA0606;
  v118 = *(a16 + (*(a38 + v232) ^ 0x46)) << 8;
  v230 = v44 & 0xFFFFFFF7 ^ 0x25BA0608;
  v233 = v44 & 0xFFFFFFF3 ^ 0x25BA060CLL;
  LODWORD(v64) = HIDWORD(a36) ^ HIDWORD(a42) ^ (*(a15 + (v114 ^ 0x87)) ^ v114) & 0x39 ^ ((*(a15 + (v114 ^ 0x87)) ^ v114) & 0xFE ^ 0xFFFFFF4E) & (v113 & 0x20E4980 ^ 0xFC3F7E18 ^ ((*(a14 + (v79 ^ 0xD4)) << 24) ^ 0x2EF1B65E) & (v113 ^ 0x7D2C6B21)) ^ v64 & 0x2E ^ 0x5764538D ^ v92;
  v119 = a43 ^ a36 ^ v118 & 0xDA00 ^ (v118 ^ 0xFFFFADFF) & ((v80 | v116) ^ 0xFE348F28) ^ v100 & 0x9B ^ v101;
  v120 = v102 & 0xE4;
  v121 = HIDWORD(a35) ^ a42 ^ v117 & 0x54FCFFD ^ v106 & 0xA2 ^ (((*(a14 + (*(a38 + v233) ^ 0xEALL)) ^ 0xE) << 24) ^ 0xBBB03002) & (v117 ^ 0x8566E595) ^ 0xC661C54F ^ v107;
  LODWORD(v93) = a35 ^ HIDWORD(a43) ^ v93 & 0x4CEAC306 ^ v120 ^ ((*(a14 + (*(a38 + v230) ^ 0x87)) << 24) ^ 0x37153CF9) & (v93 ^ 0x1DE9802) ^ 0xE64567F1 ^ v78;
  v122 = v43;
  v123 = *(&off_1010A0B50 + (v43 ^ 0xA8C7)) - 2116806254;
  v124 = *(&off_1010A0B50 + v43 - 37775) - 2102287350;
  v125 = *(&off_1010A0B50 + (v43 ^ 0xAEBF)) - 1132516374;
  v126 = *(&off_1010A0B50 + v43 - 39229) - 1341122326;
  v127 = (633303851 * *&v123[4 * ((v119 ^ 0x76B) >> 8)] + 1399180299) ^ a33 ^ *&v124[4 * v93] ^ (a3 - 1117815387 * *&v125[4 * HIBYTE(v121)]) ^ __ROR4__(*&v126[4 * BYTE2(v64)], 11);
  v128 = (a3 - 1117815387 * *&v125[4 * (HIBYTE(v119) ^ 0x3A)]) ^ a34 ^ *&v124[4 * v64] ^ (633303851 * *&v123[4 * BYTE1(v121)] + 1399180299) ^ __ROR4__(*&v126[4 * BYTE2(v93)], 11);
  v129 = HIDWORD(a34) ^ *&v124[4 * v121] ^ __ROR4__(*&v126[4 * ((v119 ^ 0x1EBF076B) >> 16)], 11) ^ (633303851 * *&v123[4 * BYTE1(v93)] + 1399180299) ^ (a3 - 1117815387 * *&v125[4 * BYTE3(v64)]);
  v130 = HIDWORD(a33) ^ (633303851 * *&v123[4 * BYTE1(v64)] + 1399180299) ^ __ROR4__(*&v126[4 * BYTE2(v121)], 11) ^ *&v124[4 * (v119 ^ 0x6B)] ^ (a3 - 1117815387 * *&v125[4 * BYTE3(v93)]) ^ 0x12B81D6D;
  HIDWORD(a43) = *(v45 - 212) < 0x6000EEB6u;
  v131 = ((v128 ^ 0xC4) & (v128 ^ 0x78) ^ v128 & 0x43) == 64;
  v132 = v128 ^ 0xA3C3F0C4;
  v133 = v128 ^ 0xC4;
  if (v131)
  {
    v134 = v133;
  }

  else
  {
    v134 = *(a38 + v239);
  }

  v135 = BYTE2(v129) ^ 0xF3;
  v136 = (633303851 * *&v123[4 * (BYTE1(v127) ^ 0x45)] + 1399180299) ^ a32 ^ *&v124[4 * (v129 ^ 0x38)] ^ __ROR4__(*&v126[4 * BYTE2(v130)], 11);
  v137 = *&v124[4 * (v134 ^ 0xAE)] ^ HIDWORD(a31) ^ (a3 - 1117815387 * *&v125[4 * HIBYTE(v130)]) ^ __ROR4__(*&v126[4 * (BYTE2(v127) ^ 0x90)], 11) ^ (633303851 * *&v123[4 * ((v129 ^ 0xEB38) >> 8)] + 1399180299);
  v138 = HIDWORD(a32) ^ __ROR4__(*&v126[4 * BYTE2(v132)], 11) ^ *&v124[4 * (v127 ^ 0x7D)] ^ (a3 - 1117815387 * *&v125[4 * ((v129 ^ 0x4DF3EB38u) >> 24)]) ^ (633303851 * *&v123[4 * BYTE1(v130)] + 1399180299);
  v139 = a31 ^ (a3 - 1117815387 * *&v125[4 * (HIBYTE(v127) ^ 0x90)]) ^ __ROR4__(*&v126[4 * v135], 11) ^ *&v124[4 * v130] ^ (633303851 * *&v123[4 * BYTE1(v132)] + 1399180299) ^ 0x24ACDDC4;
  v140 = a3 - 1117815387 * *&v125[4 * HIBYTE(v132)];
  v141 = v136 ^ v140;
  v138 ^= 0x430D9A95u;
  v142 = a30 ^ __ROR4__(*&v126[4 * ((v137 ^ 0xABC029D3) >> 16)], 11) ^ (633303851 * *&v123[4 * BYTE1(v139)] + 1399180299) ^ *&v124[4 * (v138 ^ 0xAE)] ^ (a3 - 1117815387 * *&v125[4 * ((v136 ^ ~v140) >> 24)]);
  v143 = *&v124[4 * ((v136 ^ v140) ^ 0x3B)] ^ HIDWORD(a29) ^ (633303851 * *&v123[4 * BYTE1(v138)] + 1399180299) ^ (a3 - 1117815387 * *&v125[4 * ((v137 ^ 0xABC029D3) >> 24)]) ^ __ROR4__(*&v126[4 * BYTE2(v139)], 11);
  v144 = a29 ^ *&v124[4 * (v137 ^ 0xD3)] ^ (633303851 * *&v123[4 * (((v136 ^ v140) >> 8) ^ 0xD0)] + 1399180299) ^ __ROR4__(*&v126[4 * BYTE2(v138)], 11) ^ (a3 - 1117815387 * *&v125[4 * HIBYTE(v139)]) ^ 0xEF391FBC;
  v145 = HIDWORD(a30) ^ *&v124[4 * v139] ^ (a3 - 1117815387 * *&v125[4 * HIBYTE(v138)]) ^ (633303851 * *&v123[4 * (BYTE1(v137) ^ 0x22)] + 1399180299) ^ __ROR4__(*&v126[4 * ((v141 ^ 0xDB32DB3B) >> 16)], 11);
  v146 = v145 ^ 0xFD22F0E4;
  v147 = *&v124[4 * (v142 ^ 0x26)] ^ a28 ^ (a3 - 1117815387 * *&v125[4 * ((v143 ^ 0xD49D7812) >> 24)]) ^ __ROR4__(*&v126[4 * BYTE2(v144)], 11) ^ (633303851 * *&v123[4 * ((v145 ^ 0xF0E4) >> 8)] + 1399180299);
  v148 = *&v124[4 * v144] ^ HIDWORD(a28) ^ (a3 - 1117815387 * *&v125[4 * ((v145 ^ 0xFD22F0E4) >> 24)]) ^ __ROR4__(*&v126[4 * (BYTE2(v142) ^ 0x7E)], 11) ^ (633303851 * *&v123[4 * ((v143 ^ 0x7812) >> 8)] + 1399180299);
  v149 = HIDWORD(a26) ^ (633303851 * *&v123[4 * BYTE1(v144)] + 1399180299) ^ __ROR4__(*&v126[4 * (BYTE2(v143) ^ 0x69)], 11) ^ *&v124[4 * v146] ^ (a3 - 1117815387 * *&v125[4 * (HIBYTE(v142) ^ 0xA)]) ^ 0x322FC03C;
  v150 = HIDWORD(a27) ^ (633303851 * *&v123[4 * ((v142 ^ 0x5826) >> 8)] + 1399180299) ^ __ROR4__(*&v126[4 * BYTE2(v146)], 11) ^ *&v124[4 * (v143 ^ 0x12)] ^ (a3 - 1117815387 * *&v125[4 * HIBYTE(v144)]) ^ 0xF75A9421;
  v151 = (a3 - 1117815387 * *&v125[4 * (HIBYTE(v148) ^ 0xC1)]) ^ a27 ^ __ROR4__(*&v126[4 * BYTE2(v149)], 11) ^ (633303851 * *&v123[4 * ((v147 ^ 0x244) >> 8)] + 1399180299) ^ *&v124[4 * v150];
  v148 ^= 0xE590AFA2;
  v152 = *&v124[4 * (v147 ^ 0x44)] ^ HIDWORD(a25) ^ (633303851 * *&v123[4 * BYTE1(v149)] + 1399180299) ^ __ROR4__(*&v126[4 * BYTE2(v148)], 11) ^ (a3 - 1117815387 * *&v125[4 * HIBYTE(v150)]);
  v153 = HIDWORD(a13) ^ __ROR4__(*&v126[4 * BYTE2(v150)], 11) ^ *&v124[4 * v149] ^ (a3 - 1117815387 * *&v125[4 * (HIBYTE(v147) ^ 0xF9)]) ^ (633303851 * *&v123[4 * BYTE1(v148)] + 1399180299);
  v154 = a26 ^ (633303851 * *&v123[4 * BYTE1(v150)] + 1399180299) ^ (a3 - 1117815387 * *&v125[4 * HIBYTE(v149)]) ^ __ROR4__(*&v126[4 * ((v147 ^ 0xDDBA0244) >> 16)], 11) ^ *&v124[4 * v148] ^ 0x2F90E66;
  LOBYTE(v149) = v153 ^ 4;
  v155 = (633303851 * *&v123[4 * ((v153 ^ 0xF404) >> 8)] + 1399180299) ^ a25 ^ (a3 - 1117815387 * *&v125[4 * ((v151 ^ 0xE976484A) >> 24)]) ^ __ROR4__(*&v126[4 * BYTE2(v154)], 11) ^ *&v124[4 * (v152 ^ 0x4F)];
  v156 = HIDWORD(a24) ^ __ROR4__(*&v126[4 * ((v152 ^ 0x7BBDA4F) >> 16)], 11) ^ *&v124[4 * v154] ^ (a3 - 1117815387 * *&v125[4 * (HIBYTE(v153) ^ 0xCB)]) ^ (633303851 * *&v123[4 * ((v151 ^ 0x484A) >> 8)] + 1399180299);
  v157 = a23 ^ __ROR4__(*&v126[4 * (BYTE2(v153) ^ 0x1D)], 11) ^ *&v124[4 * (v151 ^ 0x4A)] ^ (a3 - 1117815387 * *&v125[4 * HIBYTE(v154)]);
  v158 = *&v126[4 * (BYTE2(v151) ^ 0x82)];
  v159 = a24 ^ *&v124[4 * v149] ^ (v158 >> 11) ^ (v158 << 21) ^ (633303851 * *&v123[4 * BYTE1(v154)] + 1399180299) ^ (a3 - 1117815387 * *&v125[4 * (HIBYTE(v152) ^ 0x23)]) ^ 0x68FD824D;
  v160 = v157 ^ (633303851 * *&v123[4 * ((v152 ^ 0xDA4F) >> 8)] + 1399180299) ^ 0xEC884B99;
  v161 = a22 ^ __ROR4__(*&v126[4 * (BYTE2(v155) ^ 0x90)], 11) ^ *&v124[4 * (v156 ^ 0xF7)] ^ (a3 - 1117815387 * *&v125[4 * HIBYTE(v159)]) ^ (633303851 * *&v123[4 * ((v157 ^ (29483 * *&v123[4 * ((v152 ^ 0xDA4F) >> 8)] - 13301) ^ 0x4B99) >> 8)] + 1399180299);
  v162 = HIDWORD(a22) ^ __ROR4__(*&v126[4 * ((v156 ^ 0x38690EF7u) >> 16)], 11) ^ (a3 - 1117815387 * *&v125[4 * HIBYTE(v160)]) ^ *&v124[4 * (v155 ^ 0x54)] ^ (633303851 * *&v123[4 * BYTE1(v159)] + 1399180299);
  v163 = HIDWORD(a12) ^ (a3 - 1117815387 * *&v125[4 * ((v156 ^ 0x38690EF7u) >> 24)]) ^ (633303851 * *&v123[4 * (BYTE1(v155) ^ 0xE4)] + 1399180299) ^ __ROR4__(*&v126[4 * BYTE2(v159)], 11) ^ *&v124[4 * v160] ^ 0x4B36FCD3;
  v164 = __ROR4__(*&v126[4 * BYTE2(v160)], 11);
  v165 = HIDWORD(a23) ^ v164 ^ (633303851 * *&v123[4 * (BYTE1(v156) ^ 5)] + 1399180299) ^ *&v124[4 * v159] ^ 0x62BF8E02 ^ (a3 - 1117815387 * *&v125[4 * (HIBYTE(v155) ^ 0xB8)]);
  v166 = *&v124[4 * ((BYTE4(a23) ^ v164 ^ (43 * v123[4 * (BYTE1(v156) ^ 5)] + 11) ^ v124[4 * v159]) ^ 2 ^ (a3 - 91 * v125[4 * (HIBYTE(v155) ^ 0xB8)]))] ^ HIDWORD(a19) ^ (a3 - 1117815387 * *&v125[4 * HIBYTE(v162)]) ^ (633303851 * *&v123[4 * ((v161 ^ 0xC4F4) >> 8)] + 1399180299) ^ __ROR4__(*&v126[4 * BYTE2(v163)], 11);
  v167 = a21 ^ __ROR4__(*&v126[4 * ((v161 ^ 0x1837C4F4) >> 16)], 11) ^ *&v124[4 * (v162 ^ 0xD1)] ^ (633303851 * *&v123[4 * BYTE1(v165)] + 1399180299) ^ (a3 - 1117815387 * *&v125[4 * HIBYTE(v163)]);
  v168 = HIDWORD(a20) ^ (633303851 * *&v123[4 * (BYTE1(v162) ^ 0xA4)] + 1399180299) ^ *&v124[4 * v163] ^ (a3 - 1117815387 * *&v125[4 * (HIBYTE(v161) ^ 0x3C)]) ^ __ROR4__(*&v126[4 * BYTE2(v165)], 11);
  v169 = HIDWORD(a21) ^ *&v124[4 * (v161 ^ 0xF4)] ^ (a3 - 1117815387 * *&v125[4 * HIBYTE(v165)]) ^ __ROR4__(*&v126[4 * (BYTE2(v162) ^ 0x70)], 11) ^ (633303851 * *&v123[4 * BYTE1(v163)] + 1399180299);
  v170 = *&v123[4 * ((v167 ^ 0xD37) >> 8)];
  v171 = *&v125[4 * ((v167 ^ 0xB9E30D37) >> 24)];
  v172 = *&v126[4 * (BYTE2(v167) ^ 0x17)];
  v173 = *&v124[4 * (v167 ^ 0x37)] ^ HIDWORD(a18) ^ (633303851 * *&v123[4 * ((v166 ^ 0x4B20) >> 8)] + 1399180299) ^ __ROR4__(*&v126[4 * ((v169 ^ 0x252B3FCDu) >> 16)], 11) ^ (a3 - 1117815387 * *&v125[4 * ((v168 ^ 0xB99FA2BF) >> 24)]);
  v174 = (633303851 * v170 + 1399180299) ^ a20 ^ *&v124[4 * (v168 ^ 0xBF)] ^ __ROR4__(*&v126[4 * ((v166 ^ 0xEDDD4B20) >> 16)], 11) ^ (a3 - 1117815387 * *&v125[4 * ((v169 ^ 0x252B3FCDu) >> 24)]);
  v175 = a19 ^ __ROR4__(v172, 11) ^ (a3 - 1117815387 * *&v125[4 * ((v166 ^ 0xEDDD4B20) >> 24)]) ^ (633303851 * *&v123[4 * ((v168 ^ 0xA2BF) >> 8)] + 1399180299) ^ *&v124[4 * (v169 ^ 0xCD)];
  v176 = *&v124[4 * (v166 ^ 0x8E)] ^ a13 ^ (633303851 * *&v123[4 * ((v169 ^ 0x3FCD) >> 8)] + 1399180299) ^ (a3 - 1117815387 * v171) ^ __ROR4__(*&v126[4 * ((v168 ^ 0xB99FA2BF) >> 16)], 11);
  v177 = v175 ^ 0xAF6CB94C;
  v178 = v173 ^ 0xAFE416C4;
  v179 = *(&off_1010A0B50 + (v43 ^ 0xA0C0)) - 1442693679;
  v180 = *&v179[4 * (v174 ^ 3)];
  v181 = *&v179[4 * (v176 ^ 0xD9)];
  v182 = *&v179[4 * (v175 ^ 0x2C)];
  v183 = *&v179[4 * (v173 ^ 0xA4)];
  v184 = v176 ^ 0xA9F105B9;
  v185 = *(&off_1010A0B50 + (v43 ^ 0xA1EE)) - 226616383;
  v186 = *&v185[4 * ((v173 ^ 0xAFE416C4) >> 16)];
  v187 = *&v185[4 * BYTE2(v184)];
  v188 = *&v185[4 * BYTE2(v177)];
  v189 = v174 ^ 0x67AADB63;
  v190 = *&v185[4 * ((v174 ^ 0x67AADB63u) >> 16)];
  v191 = *(&off_1010A0B50 + (v43 ^ 0xA5C4)) - 2123265875;
  v192 = *&v191[4 * BYTE1(v178)];
  v193 = *&v191[4 * (BYTE1(v174) ^ 0x5D)];
  v194 = *&v191[4 * BYTE1(v184)];
  v195 = *&v191[4 * BYTE1(v177)];
  v196 = *(&off_1010A0B50 + (v43 ^ 0xA1A3)) - 218557098;
  v197 = *&v196[4 * HIBYTE(v178)];
  v198 = v43;
  v199 = *&v196[4 * HIBYTE(v189)];
  v200 = *&v196[4 * HIBYTE(v177)];
  v201 = v177 ^ HIDWORD(a11) ^ v186 ^ v182 ^ (*&v196[4 * HIBYTE(v184)] + 449441637) ^ __ROR4__(v193, 16);
  v202 = *(&off_1010A0B50 + (v122 ^ 0xA88D)) - 1737023574;
  v203 = v202[v201 ^ 0x33];
  v131 = (v203 & 0x10) == 0;
  v204 = v203 ^ 0x86;
  if (v131)
  {
    v205 = 16;
  }

  else
  {
    v205 = -16;
  }

  *(a39 + v235) = (v205 + v204) ^ 0xEC;
  v206 = v178 ^ a18 ^ v183 ^ (v199 + 449441637) ^ __ROR4__(v194, 16) ^ v188;
  v207 = *(&off_1010A0B50 + v122 - 38477) - 1460079782;
  *(a39 + *(v45 - 224)) = v207[HIBYTE(v206) ^ 0x79] ^ 0xCF;
  v208 = *(&off_1010A0B50 + v122 - 37634) - 1185067779;
  *(a39 + v231) = v208[BYTE1(v201) ^ 0x78] ^ 0x72;
  v209 = v180 ^ a12 ^ v189 ^ __ROR4__(v192, 16) ^ v187 ^ (v200 + 449441637);
  v211 = __ROR4__(v195, 16);
  v210 = HIDWORD(a11) ^ HIDWORD(a18) ^ v184 ^ (v197 + 449441637) ^ v181 ^ v190 ^ v211;
  *(a39 + v229) = v202[(BYTE4(a11) ^ BYTE4(a18) ^ v184 ^ (v197 + 101) ^ v181 ^ v190 ^ v211) ^ 0x41] ^ 0x2B;
  v212 = *(&off_1010A0B50 + v122 - 40892) - 1178004875;
  *(a39 + *(v45 - 256)) = v212[BYTE2(v209) ^ 0xF2] ^ 0xE4;
  *(a39 + v236) = v207[HIBYTE(v209) ^ 0xF8] ^ 0x56;
  *(a39 + *(v45 - 240)) = v212[BYTE2(v210) ^ 0xDELL] ^ 0xD6;
  *(a39 + v237) = v208[((WORD2(a11) ^ WORD2(a18) ^ v184 ^ (v197 - 4251) ^ v181 ^ v190 ^ v211) >> 8) ^ 0x49] ^ 0x98;
  *(a39 + v234) = v202[v209 ^ 0x16] ^ 0x8C;
  *(a39 + *(v45 - 248)) = v212[BYTE2(v206) ^ 0xE9] ^ 0x3D;
  *(a39 + v232) = v208[BYTE1(v209) ^ 0x5BLL] ^ 0x3A;
  *(a39 + v238) = v208[BYTE1(v206) ^ 0x3CLL] ^ 0x9F;
  *(a39 + v230) = v207[HIBYTE(v201) ^ 0xF1] ^ 0x78;
  *(a39 + *(v45 - 232)) = v212[BYTE2(v201) ^ 0xDALL] ^ 0x93;
  *(a39 + v233) = v207[BYTE3(v210) ^ 0xB7] ^ 0xD;
  v213 = (((v44 ^ 0x6B9CA01) - 112839169) ^ ((v44 ^ 0x2EE65F25) - 786849573) ^ ((v44 ^ 0xDE59324) - 233149220)) + 1339483599;
  v214 = (v213 ^ 0xC5EA0B75) & (2 * (v213 & 0xD5E32041)) ^ v213 & 0xD5E32041;
  v215 = ((2 * (v213 ^ 0x67EE0B77)) ^ 0x641A566C) & (v213 ^ 0x67EE0B77) ^ (2 * (v213 ^ 0x67EE0B77)) & 0xB20D2B36;
  v216 = v215 ^ 0x92052912;
  v217 = (v215 ^ 0x20080204) & (4 * v214) ^ v214;
  v218 = ((4 * v216) ^ 0xC834ACD8) & v216 ^ (4 * v216) & 0xB20D2B30;
  v219 = (v218 ^ 0x80042810) & (16 * v217) ^ v217;
  v220 = ((16 * (v218 ^ 0x32090326)) ^ 0x20D2B360) & (v218 ^ 0x32090326) ^ (16 * (v218 ^ 0x32090326)) & 0xB20D2B20;
  v221 = v219 ^ 0xB20D2B36 ^ (v220 ^ 0x20002300) & (v219 << 8);
  v222 = (v221 << 16) ^ 0x2B360000;
  v223 = v213 ^ (2 * ((v221 << 16) & 0x320D0000 ^ v221 ^ v222 & (((v220 ^ 0x920D0816) << 8) & 0x320D0000 ^ 0x32040000 ^ (((v220 ^ 0x920D0816) << 8) ^ 0xD2B0000) & (v220 ^ 0x920D0816))));
  *(a39 + v239) = v202[v206 ^ 0x1ALL] ^ 0xD9;
  LODWORD(v212) = (((v223 ^ 0x3119E561) + 514681524) ^ ((v223 ^ 0x9908FCCC) - 1229163745) ^ ((v223 ^ 0x5DE06F80) + 1918165075)) - 2051345226;
  v224 = HIDWORD(a43) ^ (v212 < 0x6000EEB6);
  v225 = v212 < *(v45 - 212);
  if (v224)
  {
    v225 = HIDWORD(a43);
  }

  return (*(a37 + 8 * ((4003 * v225) ^ v198)))(v222, v210, a3, HIDWORD(a11), v208, v202, a39, v200, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, v227, v228, a42, a43, v229, v230, v231);
}

uint64_t sub_100811334@<X0>(uint64_t a1@<X7>, void *a2@<X8>)
{
  *a2 = v3;
  a2[1] = v3;
  return (*(a1 + 8 * (v2 ^ 0xF86A)))();
}

uint64_t sub_1008114A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  *&STACK[0x204] = a9;
  v52 = *(&STACK[0x204] + (STACK[0x206] & 3));
  v53 = (((((3 * (v49 ^ a7) + a8) & v51) ^ 0xF3) - 13 * (v52 / 0xDu) + v52) & 0x1C) == 0;
  return (*(v50 + 8 * (((2 * v53) | (4 * v53)) ^ v49)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49);
}

uint64_t sub_100811574@<X0>(int a1@<W8>)
{
  *(v2 - 136) = *(v4 + 16);
  *(v2 - 120) = &v5;
  *(v2 - 128) = a1 - 353670337 * ((((v2 - 136) | 0xB94692EA) - ((v2 - 136) | 0x46B96D15) + 1186557205) ^ 0xD676AD7) - 8660;
  return (*(v1 + 8 * (a1 + 30841)))(v2 - 136);
}

uint64_t sub_100811624@<X0>(int a1@<W8>)
{
  v4 = *(v3 + 264);
  *(v3 + 128) = *(v2 + 8 * a1);
  return (*(v2 + 8 * ((169 * (v4 != 0)) ^ (v1 - 11052))))();
}

uint64_t sub_100811794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v50 = (*(v47 + 8 * (v46 + 36940)))(&STACK[0x260], 0);
  v51 = LODWORD(STACK[0x268]) - ((LODWORD(STACK[0x268]) << (v46 ^ 0xB1)) & 0x40711E3E) + 540577567;
  LODWORD(STACK[0x258]) = LODWORD(STACK[0x260]) - ((2 * LODWORD(STACK[0x260])) & 0x40711E3E) + 540577567;
  LODWORD(STACK[0x254]) = v51;
  v52 = (*(v47 + 8 * (v46 + 36883)))(v50);
  LODWORD(STACK[0x25C]) = v52 - ((2 * v52) & 0x40711E3E) + 540577567;
  v53 = (*(v47 + 8 * (v46 ^ 0xF073)))();
  *v49 = v53 - ((2 * v53) & 0x40711E3E) + 540577567;
  HIDWORD(a44) = v48 - ((2 * v48) & 0xF8A3BCC6) - 61743517;
  return (*(v47 + 8 * v46))(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46);
}

uint64_t sub_100813DE8()
{
  v3 = (*(v0 + 8 * (v2 + 40294)))();
  *v1 = 0;
  return (*(v0 + 8 * v2))(v3);
}

uint64_t sub_100814014@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X6>, uint64_t a6@<X7>, int a7@<W8>)
{
  v17 = v11 + (v15 ^ (v7 ^ v16) ^ v9) * v10;
  v18 = __ROR4__(*(a5 + 4 * (v17 - (((v17 >> 6) * v12) >> 32) * v13)), 2);
  *(a6 + 4 * v7) = a2 ^ a1 ^ v18 ^ (32 * (a1 ^ v18)) ^ (8 * (a1 ^ v18)) ^ a3;
  return (*(v14 + 8 * (((v8 != 0) * a4) ^ a7)))();
}

uint64_t sub_100814148@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v3 = ((2 * v2) & 0x1FDD7F7E4) - 0x4A220122A6928A0 + ((((a2 - 4163) | 0x80A0u) + 0x77A7FF7EFEEB5A44) ^ v2);
  STACK[0xC38] = v3;
  v4 = STACK[0x5C8];
  STACK[0xC40] = STACK[0x5C8];
  return (*(a1 + 8 * ((43894 * (((1245 * (a2 ^ 0x3153u)) ^ 0xF4D290512CD511E8) - v4 + v3 < 0xFFFFFFFFFFFFFFF6)) ^ a2)))();
}

uint64_t sub_100814248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v10 - 208) = a8;
  v11 = (*(v8 + 8 * (v9 ^ 0x9F54)))(1032);
  STACK[0x4B8] = 0;
  LODWORD(STACK[0x48C]) = 0;
  *(v10 - 192) = 0;
  STACK[0x4A0] = 0;
  *(v10 - 248) = 0;
  *(v10 - 176) = 0;
  STACK[0x498] = 0;
  *(v10 - 256) = 0;
  *(v10 - 168) = 0;
  STACK[0x480] = 0;
  *(v10 - 200) = 0;
  *(v10 - 240) = 0;
  *(v10 - 232) = 0;
  *(v10 - 184) = 0;
  STACK[0x4A8] = 0;
  STACK[0x490] = 0;
  STACK[0x478] = 0;
  *(v10 - 160) = 0;
  STACK[0x4B0] = 0;
  *(v10 - 224) = v9 ^ 0x41A5;
  v12 = *(v8 + 8 * (((v11 == 0) * ((v9 ^ 0x41A5) - 5187)) ^ v9));
  *(v10 - 148) = -404908090;
  return v12();
}

uint64_t sub_100814390(__n128 a1)
{
  v5.n128_u64[0] = (v1 + 13) & 0xF;
  v5.n128_u64[1] = (v1 + 12) & 0xF;
  v6.n128_u64[0] = (v1 + 11) & 0xF;
  v6.n128_u64[1] = (v1 + 10) & 0xF;
  v7.n128_u64[0] = (v1 + 9) & 0xF;
  v7.n128_u64[1] = v2 & 0xF ^ 9;
  v10.val[0].i64[0] = (v1 + 7) & 0xF;
  v10.val[0].i64[1] = (v1 + 6) & 0xF;
  v10.val[1].i64[0] = (v1 + 5) & 0xF;
  v10.val[1].i64[1] = (v1 + 4) & 0xF;
  v10.val[2].i64[0] = (v1 + 3) & 0xF;
  v10.val[2].i64[1] = (v1 + 2) & 0xF;
  v10.val[3].i64[0] = (v1 + 1) & 0xF;
  v10.val[3].i64[1] = v1 & 0xF;
  v8.n128_u64[0] = 0x1111111111111111;
  v8.n128_u64[1] = 0x1111111111111111;
  return (*(v4 + 8 * v3))((v1 + 14) & 0xF, v1 - 16, (v1 & 0x10) - 16, 2176, a1, v5, v6, v7, xmmword_100BC76B0, vqtbl4q_s8(v10, xmmword_100BC76B0), v8);
}

uint64_t sub_100814470()
{
  LODWORD(STACK[0xE80]) = v1;
  STACK[0xE90] = v3;
  v4 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x72D7ACF8));
  v5 = 1864610357 * ((1864610357 * ((v4 ^ (v2 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v4 ^ (v2 + 1)) & 0x7FFFFFFFu)) >> 16));
  LODWORD(STACK[0xE70]) = v4;
  STACK[0xED0] = v2 + 2;
  v6 = 1864610357 * ((1864610357 * ((v4 ^ (v2 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v4 ^ (v2 + 2)) & 0x7FFFFFFFu)) >> 16));
  STACK[0xEC0] = (v6 >> 24) + 2;
  STACK[0xEB0] = (v6 >> 24) + 4;
  v7 = *(STACK[0xF18] + 8 * v0);
  LODWORD(STACK[0xEA0]) = (-97 * (v6 >> 24)) ^ v6;
  return v7((v5 >> 24) + 2, (v5 >> 24) + 4);
}

uint64_t sub_100814610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, unint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, unint64_t a52, uint64_t a53)
{
  v59 = *(v55 + 4 * (v54 - 1));
  v60 = 1664525 * (v59 ^ (v59 >> 30)) + 1338894605;
  v61 = (v60 ^ 0x2DA284E2) & (2 * (v60 & 0xB03216F3)) ^ v60 & 0xB03216F3;
  v62 = ((2 * (v60 ^ 0x6DA288A2)) ^ 0xBB213CA2) & (v60 ^ 0x6DA288A2) ^ (2 * (v60 ^ 0x6DA288A2)) & 0xDD909E50;
  v63 = v62 ^ 0x44908251;
  v64 = (v62 ^ 0x81001C00) & (4 * v61) ^ v61;
  v65 = ((4 * v63) ^ 0x76427944) & v63 ^ (4 * v63) & 0xDD909E50;
  v66 = (v65 ^ 0x54001840) & (16 * v64) ^ v64;
  v67 = ((16 * (v65 ^ 0x89908611)) ^ 0xD909E510) & (v65 ^ 0x89908611) ^ (16 * (v65 ^ 0x89908611)) & 0xDD909E50;
  v68 = v66 ^ 0xDD909E51 ^ (v67 ^ 0xD9008400) & (v66 << 8);
  v69 = (v68 << 16) & 0x5D900000 ^ v68 ^ ((v68 << 16) ^ 0x1E510000) & (((v67 ^ 0x4901A41) << 8) & 0x5D900000 ^ 0x4D000000 ^ (((v67 ^ 0x4901A41) << 8) ^ 0x109E0000) & (v67 ^ 0x4901A41));
  v70 = *(a53 + 4 * (v56 - 115767974));
  v71 = v60 ^ *(v55 + 4 * v54) ^ (2 * v69);
  *(v55 + 4 * v54) = v56 + (((v70 ^ 0x92B3C892) + 1833711470) ^ ((v70 ^ 0x7B12FC86) - 2064841862) ^ ((v70 ^ 0x3C0BDD5D) - 1007410525)) + 222565403 + (((v71 ^ 0x5995DEAC) - 1423528325) ^ ((v71 ^ 0x18409D11) - 353112632) ^ ((v71 ^ 0x72E669EC) - 2141906629));
  STACK[0x778] = (v54 + 1) ^ a52;
  *(v58 - 176) = v57 - a52 - 1781238206;
  *(v58 - 192) = (v57 - 1053777947) ^ a52;
  *(v58 - 188) = v57 - 1053773273 - a52 + 174;
  *(v58 - 208) = (v57 - 1053773273) ^ a52;
  *(v58 - 184) = a52;
  STACK[0x768] = a47;
  v72 = (*(v53 + 8 * (v57 ^ 0xCFA4)))(v58 - 216);
  return (*(v53 + 8 * *(v58 - 180)))(v72);
}

uint64_t sub_100814958(int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v21 = v12 + (v20 ^ v8 ^ v19 ^ v10) * v11;
  v22 = *(a6 + v21 - (((v21 * v13) >> 32) >> 10) * v14);
  HIDWORD(v23) = v22 ^ 0x70;
  LODWORD(v23) = v22 << 24;
  *(a7 + 4 * v8) = v18 ^ a8 ^ v15 ^ a1 ^ a2 ^ (v23 >> 31);
  return (*(v16 + 8 * (((v9 == 0) * a3) ^ v17)))();
}

uint64_t sub_100814AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *v11;
  *(v8 - 1) = *(v11 - 1);
  *v8 = v13;
  return (*(a8 + 8 * (((v10 != 0) * v9) ^ v12)))();
}

uint64_t sub_100814B8C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, int *a11)
{
  v14 = a1 - 26656;
  a8 = -1;
  a10 = *(v11 + 8 * ((a1 - 26656) ^ 0xA93)) - 1033873191;
  LODWORD(a9) = (a1 - 1762652339) ^ (906386353 * ((~&a9 & 0x42098E62 | &a9 & 0xBDF67198) ^ 0x73084346));
  (*(v13 + 8 * (a1 + 25207)))(&a9);
  a9 = v12;
  LODWORD(a10) = v14 + 1022166737 * (&a9 ^ 0xBA10E192) + 30061;
  a11 = &a8;
  v15 = (*(v13 + 8 * (v14 ^ 0xCCFF)))(&a9);
  return (*(v13 + 8 * (v14 ^ 0x1929 ^ (33464 * ((((BYTE4(a10) - v14) | (v14 - BYTE4(a10))) & 0x80) == 0)))))(v15);
}

uint64_t sub_100814DA0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v37 = v35 + 1219154471 + (((*(a35 + 88) ^ 0xAA390F33) + 1439101133) ^ ((*(a35 + 88) ^ 0xD725E682) + 685382014) ^ ((*(a35 + 88) ^ (a2 + 1616916196)) - 1616932813));
  *(a35 + 88) = v37 - ((2 * v37 + 4914218) & 0x3AF90CF8) + 2107770001;
  return (*(v36 + 8 * a2))();
}

uint64_t sub_100814E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v9 + 340 * (v8 ^ 0x6729) - 217326814;
  if (v10 <= 0x40)
  {
    v10 = 64;
  }

  return (*(a8 + 8 * (((v10 - v9 + 217316954 > 0x1E) * (v8 - 26408)) ^ v8)))(3369025089, 82, a3, a4, a5, 0);
}

uint64_t sub_100814EE8@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  a3 = v7;
  a5 = a1;
  a6 = v7;
  a4 = (v8 + 8900) ^ (906386353 * ((~&a3 & 0xDE5B1CFB | &a3 & 0x21A4E300) ^ 0xEF5AD1DF));
  v9 = (*(v6 + 8 * (v8 ^ 0xEE23)))(&a3);
  return (*(v6 + 8 * v8))(v9);
}

uint64_t sub_100814FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, int a4@<W5>, uint64_t a5@<X8>, __n128 a6@<Q1>, int8x16_t a7@<Q4>, uint64_t a8@<D5>, int8x16_t a9@<Q6>)
{
  v19 = ~a1 + v15;
  v20 = v19 & 0xF;
  v22.i64[0] = vqtbl4q_s8(*(&a6 - 1), a7).u64[0];
  v22.i64[1] = a8;
  v23 = vrev64q_s8(vmulq_s8(v22, a9));
  *(a3 + v19) = veorq_s8(veorq_s8(veorq_s8(*(v14 + v20 - 15), *(a2 + v19)), veorq_s8(*(v20 + v13 - 13), *(v12 + v20 - 15))), vextq_s8(v23, v23, 8uLL));
  return (*(v18 + 8 * (((a5 + a1 == v17) * a4) ^ v16)))();
}

uint64_t sub_10081504C()
{
  v3 = (*(v1 + 8 * (v0 + 39592)))();
  *(v2 + 184) = 0;
  *(v2 + 192) = -371865839;
  return (*(v1 + 8 * v0))(v3);
}

uint64_t sub_100815220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v64 = (v61 ^ 0x5E) & (2 * (v61 & 0x9F)) ^ v61 & 0x9F;
  v65 = ((v60 + 101) ^ v61 ^ 0x60) & 0xFE | ((v60 + 101) ^ v61 ^ 0x9F) & (2 * ((v60 + 101) ^ v61 ^ 0x60));
  v66 = v61 ^ (2 * (((((v60 + 101) ^ v61 ^ 0x60) & 0xFC | ((v60 + 101) ^ v61 ^ 0x9F) & (2 * ((v60 + 101) ^ v61 ^ 0x60)) & 0xFC | (4 * v65) & ~v65) ^ 0xF3) & (16 * ((v65 ^ 0xFC) & (4 * v64) ^ v64)) ^ (v65 ^ 0xFC) & (4 * v64) ^ v64));
  v67 = (((v66 ^ 0xEC) - 89) ^ ((v66 ^ 0x2B) + 98) ^ ((v66 ^ 0xE2) - 87)) + 24;
  *(a9 + v62 - 1) = v67 * (v61 - 33) + 27 * (-125 * v67 - 24 * (v61 - 33)) - 8;
  return (*(v63 + 8 * ((56 * (v62 != 1)) ^ v60)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_1008153BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x364]) = a7;
  v10 = (*(v7 + 8 * (v8 ^ 0x75E1)))(1028);
  STACK[0x4B8] = 0;
  LODWORD(STACK[0x48C]) = 0;
  *(v9 - 192) = 0;
  STACK[0x4A0] = 0;
  *(v9 - 248) = 0;
  *(v9 - 176) = 0;
  STACK[0x470] = 0;
  STACK[0x498] = 0;
  *(v9 - 256) = 0;
  *(v9 - 168) = 0;
  STACK[0x480] = 0;
  *(v9 - 208) = 0;
  *(v9 - 200) = 0;
  *(v9 - 240) = 0;
  *(v9 - 232) = 0;
  *(v9 - 184) = 0;
  STACK[0x4A8] = 0;
  STACK[0x490] = 0;
  STACK[0x478] = 0;
  *(v9 - 160) = 0;
  STACK[0x4B0] = 0;
  *(v9 - 224) = v8 - 43792;
  v11 = *(v7 + 8 * (((v10 == 0) * (((v8 - 33111) ^ 0xFFFFD613) + v8 - 43792)) ^ v8));
  *(v9 - 148) = 1644243867;
  return v11();
}

uint64_t sub_10081550C()
{
  v2 = *(v1 - 148);
  v3 = (*(v0 + 8 * (v2 ^ 0x5BB1)))(1028);
  STACK[0x4B8] = 0;
  LODWORD(STACK[0x48C]) = 0;
  *(v1 - 192) = 0;
  STACK[0x4A0] = 0;
  *(v1 - 248) = 0;
  *(v1 - 176) = 0;
  STACK[0x498] = 0;
  *(v1 - 256) = 0;
  *(v1 - 168) = 0;
  STACK[0x480] = 0;
  *(v1 - 240) = 0;
  *(v1 - 232) = 0;
  *(v1 - 184) = 0;
  STACK[0x4A8] = 0;
  STACK[0x490] = 0;
  STACK[0x478] = 0;
  STACK[0x4B0] = 0;
  *(v1 - 224) = v2 - 31936;
  v4 = *(v0 + 8 * (((v3 == 0) * (v2 - 667015700 + v2 - 31936 + 666973418)) ^ v2));
  *(v1 - 148) = -404908090;
  return v4();
}

uint64_t sub_100815600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11)
{
  *a11 = -371865851;
  HIDWORD(a10) = v13 - 858;
  return (*(v12 + 8 * (v11 + 10200)))(4294945566, 24250, 4294928838, 91, a5, a6, 4294923869, 10304, a9, a10);
}

uint64_t sub_1008158EC@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  v5 = *(*(v2 + v3) + 40) == 0;
  return (*(v1 + 8 * ((((3 * (v4 ^ 6)) ^ v5) & 1 | (16 * (((3 * (v4 ^ 6)) ^ v5) & 1))) ^ v4)))();
}

uint64_t sub_10081595C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = STACK[0xC00] - 0x451AF1BD62FF9D54 + (((v8 ^ 0xB5D042058BB3ED6BLL) + 0x4A2FBDFA744C1295) ^ ((v8 ^ 0xA1CA4D09C752DB8CLL) + 0x5E35B2F638AD2474) ^ ((v8 ^ 0x141A0F0CA534F1F6) - 0x141A0F0CA534F1F6)) + 4209781092u;
  v11 = STACK[0xBF8] - 0x52BE30EFC5B080B8;
  v12 = v10 < 0x11166253;
  v13 = v10 > v11;
  if (v11 < 0x11166253 != v12)
  {
    v13 = v12;
  }

  return (*(a8 + 8 * ((116 * !v13) ^ (v9 - 22781))))();
}

uint64_t sub_100815AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, uint64_t a11)
{
  a11 = v11;
  a9 = v13;
  a10 = v14 + 1012831759 * (&a9 ^ 0x1093168A) - 502817654;
  v15 = (*(v12 + 8 * (v14 + 34956)))(&a9);
  return (*(v12 + 8 * v14))(v15, 0);
}

uint64_t sub_100815B60@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v7 = v4 - 1;
  *(v5 + v7) = *(a2 + v7);
  return (*(a1 + 8 * (((((v7 == 0) ^ v6) & 1) * v3) ^ v2)))();
}

uint64_t sub_100815D54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0;
  a1[1] = 0;
  *v8 = a1;
  return (*(a8 + 8 * (((STACK[0x928] == 0) * ((((v9 + 216) ^ 0x8080) - 339) ^ ((v9 + 216) | 0x8080))) ^ (v9 + 9380))))();
}

uint64_t sub_100815ED8()
{
  v2 = *(*(v1 - 216) + 8 * (((v0 & 0xF5FD76E2) - 5154) ^ v0 & 0xF5FD76E2 ^ (7026 * ((v0 & 0xF5FD76E2) > 0xA8C88480))));
  *(v1 - 148) = (v0 & 0xF5FD76E2) + 245580114;
  return v2(960738557, (v0 & 0xF5FD76E2) - 715188127, 3089287229, 1205680067, 3569166352, 725800944, 3728810154, 101563372);
}

uint64_t sub_100816010(uint64_t a1, int8x16_t *a2, char a3, uint64_t a4, uint64_t a5, int a6, double a7, __n128 a8, __n128 a9, __n128 a10, int8x16_t a11, double a12, int8x16_t a13)
{
  v19 = a3 & 0xF;
  v20 = v17;
  v21.i64[0] = vqtbl4q_s8(*(&a8 - 1), a11).u64[0];
  *&v21.i64[1] = a12;
  v22 = vrev64q_s8(vmulq_s8(v21, a13));
  *a2 = veorq_s8(veorq_s8(veorq_s8(veorq_s8(*(v14 + v19 - 15), *a2), *(v15 + v19 - 15)), *(a1 + v19 + v13 + a5)), vextq_s8(v22, v22, 8uLL));
  return (*(v18 + 8 * (((a4 == 0) * a6) ^ v16)))();
}

uint64_t sub_1008160B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a8 + 8 * (v8 - 34468));
  LODWORD(STACK[0x4F0]) = 47179;
  return v9();
}

uint64_t sub_1008160E0@<X0>(void *a1@<X8>)
{
  *(STACK[0x2E0] + 40) = v2 + *(STACK[0x2E0] + 40) - 0x3CE25E0EC5200378;
  v4 = *a1 != ((v1 + 783250679) & 0xD14FFB77) + 0x3CE25E0EC51FEB02;
  return (*(v3 + 8 * ((v4 | (8 * v4)) ^ v1)))();
}

uint64_t sub_100816150@<X0>(uint64_t a1@<X0>, int a2@<W1>, unint64_t a3@<X2>, int a4@<W3>, unsigned int a5@<W8>)
{
  *(a1 + (v9 + v11)) = *(v13 + v8);
  v15 = v8 < a3 && v8 + v10 + (v6 & v7) + a2 < a5;
  return (*(v12 + 8 * ((v15 * a4) ^ v5)))();
}

uint64_t sub_100816190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v11 + 656) = v8;
  LODWORD(STACK[0xADC]) = v10;
  return (*(a8 + 8 * v9))();
}

uint64_t sub_10081649C@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v3 = *(v2 + 864);
  *(v2 + 960) = *(a1 + 8 * a2);
  return (*(a1 + 8 * (a2 - 25935 + a2 + 30494)))(v3);
}

uint64_t sub_100816500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  HIDWORD(v25) = (v21 ^ 0xF) + a1;
  LODWORD(v26) = a1 + 180402538;
  LODWORD(v25) = a20 - 1274331334;
  HIDWORD(v24) = a20 - 30735;
  LODWORD(v24) = a20 - 30830;
  HIDWORD(v23) = a20 ^ 0x931D;
  LODWORD(v23) = a20 - 32496;
  HIDWORD(v26) = a20 - 36797;
  return (*(v20 + 8 * (v21 + 45082)))(a1, a2, a3, a4, 107, 215, (a20 - 36834), (a20 + 14194), a9, v23, v24, v25, a13, a14, v26);
}

uint64_t sub_1008165F8(uint64_t a1, uint64_t a2)
{
  v10 = *(v7 + v2 + 72);
  v11 = ((v2 << (((v3 + 68) | 7) ^ 0x26)) & 0xF2FAF778) + (v2 ^ 0x797D7BBD);
  *(a2 + v11 - 2038266813) = (v5 ^ HIBYTE(v10)) - ((2 * (v5 ^ HIBYTE(v10))) & 0xBF) + 95;
  *(a2 + v11 - 2038266812) = (BYTE2(v10) ^ 0x7C) - ((2 * (BYTE2(v10) ^ 0x7C)) & 0xBF) + 95;
  *(a2 + v11 - 2038266811) = (v9 ^ BYTE1(v10)) - ((2 * (v9 ^ BYTE1(v10))) & 0xBF) + 95;
  *(a2 + v11 - 2038266810) = v10 ^ v8;
  return (*(v6 + 8 * ((31300 * (v2 + 4 < v4)) ^ v3)))();
}

uint64_t sub_1008166EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  *(v34 - 112) = v33 + 1012831759 * ((~(v34 - 144) & 0x650F0FCB | (v34 - 144) & 0x9AF0F030) ^ 0x759C1941) + 1051065258;
  *(v34 - 128) = &a18;
  *(v34 - 120) = a14;
  *(v34 - 144) = a13;
  *(v34 - 136) = &a18;
  (*(v32 + 8 * (v33 ^ 0x9879)))(v34 - 144);
  *(v34 - 128) = &a18;
  *(v34 - 120) = &a32;
  *(v34 - 136) = v33 + 1112314453 * ((v34 - 144) ^ 0xEF562AD9) + 13830;
  *(v34 - 112) = a13;
  *(v34 - 104) = a14;
  *(v34 - 144) = &a18;
  v35 = (*(v32 + 8 * (v33 + 30625)))(v34 - 144);
  return (*(v32 + 8 * v33))(v35);
}

uint64_t sub_1008167CC()
{
  v3 = (*(v2 + 8 * (v0 + 14234)))(1028);
  v4 = *(v1 - 200);
  *(v1 - 216) = 0;
  return (*(v4 + 8 * (((v3 != 0) * (((4 * v0) ^ 0x253B0) - 8099)) ^ v0)))();
}

uint64_t sub_10081686C(uint64_t a1)
{
  v6 = *(v5 - 224) + 2356;
  v7 = STACK[0x384];
  LODWORD(STACK[0x3A8]) = HIBYTE(LODWORD(STACK[0x384]));
  v8 = v7 ^ LODWORD(STACK[0x3A0]);
  LODWORD(STACK[0x32C]) = v8;
  LODWORD(STACK[0x320]) = v8 ^ 0x65DE13C7;
  v9 = STACK[0x380];
  LODWORD(STACK[0x3A4]) = HIBYTE(LODWORD(STACK[0x380]));
  v10 = STACK[0x368];
  v11 = 848076361 * LODWORD(STACK[0x368]);
  v12 = STACK[0x37C];
  v13 = 1718387899 * LODWORD(STACK[0x37C]);
  LODWORD(STACK[0x338]) = v4 & 0xFFBFFFFF;
  HIDWORD(v15) = v9;
  LODWORD(v15) = -1619999051 * v9;
  v14 = v15 >> 2;
  v16 = v11 >> 8;
  v17 = (-1716382996 * v12) | (v13 >> 30);
  v18 = (1224736768 * v10) | (v11 >> 8);
  v19 = v14 ^ (((2080374784 * v3) | ((985045663 * v3) >> 6)) + v17) ^ 0xEB5DA621 ^ (v18 - 2 * (v18 & 0x6B5DA63B ^ (v11 >> 8) & 0x1A) - 346184159);
  v20 = (-1177963628 * v19) | ((1852992741 * v19) >> 30);
  HIDWORD(v15) = 711940631 * v14;
  LODWORD(v15) = 711940631 * v14;
  v21 = v15 >> 30;
  HIDWORD(v15) = v16;
  LODWORD(v15) = -1790959359 * v18;
  v22 = v15 >> 4;
  v23 = ((v20 ^ ((1048560640 * v17) | ((105881585 * v17) >> 22))) - v21) ^ v22;
  v24 = 703687591 * v23;
  v25 = (-373293056 * v23) | ((703687591 * v23) >> 10);
  v26 = (-347721984 * v21) | ((2028684847 * v21) >> 24);
  v27 = (-1423323920 * v20) | ((-88957745 * v20) >> 28);
  v28 = (-1789420096 * v22) | ((1247108727 * v22) >> 26);
  v29 = (v27 ^ v26) - v28 + 2 * (v27 & v26) - v25;
  v30 = (-482313216 * v27) | ((989384735 * v27) >> 22);
  v31 = (-805306368 * (v24 >> 10)) | ((-1527553427 * v25) >> 4);
  v32 = (-960495616 * v29) | ((-726085861 * v29) >> 10);
  v33 = v31 + v30;
  v34 = (v31 ^ (((-1375731712 * v28) | ((342946263 * v28) >> 7)) - v30)) - v32;
  v35 = 1209002571 * ((v32 - 2081956401 * v33 - 1946149866) ^ v34);
  LODWORD(STACK[0x3C4]) = v32 - v35;
  LODWORD(STACK[0x33C]) = v31;
  LODWORD(STACK[0x334]) = v35 ^ v31;
  LODWORD(STACK[0x328]) = v9 ^ v2;
  LODWORD(STACK[0x324]) = v9 ^ v2 ^ 0xCF345777;
  *(v5 - 232) = a1;
  v36 = (v6 - 1611359740) & 0xED3BFFB7;
  LODWORD(STACK[0x330]) = v35 ^ v34 ^ v36 ^ 0x8D30B7FD;
  return (*(v1 + 8 * v6))(3739805000, 1440502992, v36 ^ 0x8D30AA4C, 2126064686, 46954);
}

uint64_t sub_100816BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = STACK[0x4D8] - 38869;
  LOWORD(STACK[0xB6A]) = v8;
  return (*(a8 + 8 * (v9 ^ 0x12D3)))();
}

uint64_t sub_100816C08()
{
  v2 = v0 ^ 0xB7A0;
  *(v1 - 152) = v2 ^ 0xDCA2;
  v3 = *(v1 - 216);
  v4 = *(v3 + 8 * ((104 * ((*(v3 + 8 * (v2 + 11146)))(1032) == 0)) ^ v2));
  *(v1 - 148) = -473935569;
  return v4();
}

uint64_t sub_100816CC4@<X0>(int a1@<W8>)
{
  v6 = STACK[0x3B0] * v3;
  v7 = (a1 + 1377778154) ^ v6;
  *(v5 - 108) = v7 ^ 0x69;
  *(v5 - 136) = v6 | 1;
  *(v5 - 116) = v6 + a1 + 1377778154 + 3771;
  *(v5 - 112) = v6 + a1 + 800686818;
  *(v5 - 128) = (v2 + 945023990) ^ v6;
  *(v5 - 152) = v7;
  *(v5 - 144) = v1 - v6;
  v8 = (*(v4 + 8 * (a1 ^ 0xA762)))(v5 - 152);
  return (*(v4 + 8 * *(v5 - 120)))(v8);
}

uint64_t sub_100816D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v38 = v34 - 4167;
  *(v37 - 152) = 0x14B8E5948DB0554BLL;
  v39 = *(*(v36 + 8 * (v38 - 18590)) - 586084794);
  v40 = (a34 - 2 * (a34 & 0x349E335FE5AFA1F7) + 0x349E335FE5AFA1F7) ^ 0x6299B6C25CB495C4;
  *(v37 - 112) = v38 - 634647737 * ((a34 - 2 * (a34 & 0xE5AFA1F7) - 441474569) ^ 0x5CB495C4) - 1230198148;
  *(v37 - 108) = v38 + 766743537 - 634647737 * ((a34 - 2 * (a34 & 0xE5AFA1F7) - 441474569) ^ 0x5CB495C4) - 3;
  *(v37 - 144) = -634647737 * ((a34 - 2 * (a34 & 0xE5AFA1F7) - 441474569) ^ 0x5CB495C4);
  *(v37 - 140) = ((v38 + 766743537) ^ 0x1281) - 634647737 * ((a34 - 2 * (a34 & 0xE5AFA1F7) - 441474569) ^ 0x5CB495C4);
  *(v37 - 132) = v38 + 766743537 + 634647737 * ((a34 - 2 * (a34 & 0xE5AFA1F7) - 441474569) ^ 0x5CB495C4);
  *(v37 - 128) = v39 ^ (634647737 * v40);
  *(v37 - 120) = -634647737 * v40;
  v41 = (*(v35 + 8 * (v38 ^ 0x8078)))(v37 - 144);
  return (*(v35 + 8 * *(v37 - 136)))(v41);
}

uint64_t sub_100816F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15, int a16)
{
  v22 = LODWORD(STACK[0x3C4]) - 2857;
  LODWORD(STACK[0x3C4]) = -1465387793 * a16;
  LODWORD(STACK[0x38C]) = -1826185243 * a14;
  *(v21 - 152) = HIBYTE(LODWORD(STACK[0x3C8]));
  LODWORD(STACK[0x380]) = v18 + v17;
  LODWORD(STACK[0x37C]) = v20 & 0xFFEFFFFF;
  LODWORD(STACK[0x418]) = HIBYTE(LODWORD(STACK[0x3D4]));
  v23 = LODWORD(STACK[0x3AC]) ^ LODWORD(STACK[0x398]);
  v24 = LODWORD(STACK[0x3AC]) + v19;
  v25 = 171765803 * v24;
  v26 = STACK[0x3C0];
  v27 = -1421124911 * LODWORD(STACK[0x3C0]);
  v28 = -1744467317 * LODWORD(STACK[0x3AC]);
  v29 = 1415053312 * LODWORD(STACK[0x3AC]);
  LODWORD(STACK[0x388]) = v24;
  v30 = 1007337472 * v24;
  v31 = (687865856 * v23) | ((1319857961 * v23) >> 8);
  v32 = v30 & 0xFFFFC000 | (v25 >> 18);
  v33 = (762004480 * v26) | (v27 >> 22);
  v34 = v29 - v33 + (v28 >> 13) - v32 - v31;
  v35 = (149291008 * v34) | ((1167819891 * v34) >> 15);
  v36 = (-1264263168 * v32) | ((-1386896089 * v32) >> 19);
  v37 = (-486539264 * v33) | ((1991760355 * v33) >> 8);
  v38 = (((-711346176 * v31) | ((-2028293321 * v31) >> 21)) + v36 - v35) ^ v37;
  v39 = 2007542089 * v36;
  v40 = (-318767104 * v35) | ((748378093 * v35) >> 8);
  v41 = (-1022795441 * v38) >> 18;
  v42 = (1481883648 * v38) | v41;
  v43 = 15295263 * v40;
  v44 = (-1496317952 * v37) | ((785091181 * v37) >> 12);
  v45 = v40 ^ (v39 >> 3) ^ 0xB87958EF ^ (v42 - 1200006928 + ~(2 * (v42 & 0x387958FF ^ v41 & 0x10)));
  v43 >>= 1;
  v46 = (1635778560 * (v45 + v44)) | ((197902019 * (v45 + v44)) >> 9);
  v47 = (200825856 * v42) | ((-1589445097 * v42) >> 22);
  v48 = ((241123328 * v44) | ((-1491846787 * v44) >> 18)) + v43 - v47 - v46;
  v49 = (v46 ^ (v43 - 754557608 + v47)) - v48 - 109084557;
  LODWORD(STACK[0x390]) = v48 - v49;
  LODWORD(STACK[0x384]) = v49 + v46;
  LODWORD(STACK[0x36C]) = v49 ^ v47;
  return (*(v16 + 8 * v22))(7552, (((v22 + 731350514) & 0xD46879F3) - 2753) ^ 0xFFFFFF8C, 12, 26);
}

uint64_t sub_1008172D8(int a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v25 = v20 + (v23 ^ v22 ^ v10 ^ 3) * v11 + v12;
  v26 = *(v18 + 4 * (v25 - (((v25 * v13) >> 32) >> 12) * v14));
  *(v21 + 4 * v10) = a8 ^ v17 ^ v19 ^ v16 ^ v15 ^ a1 ^ v26 ^ (4 * v26) ^ a2;
  return (*(v24 + 8 * ((((v9 | v8) >= 0) * a4) ^ a3)))();
}

uint64_t sub_100818C70@<X0>(uint64_t *a1@<X8>)
{
  v4 = *a1;
  *(v3 + 1264) = 0;
  *(v3 + 656) = 0x1C10EDFDD29B23A1;
  return (*(v2 + 8 * (((v4 == 0) * ((v1 + 1646772535) & 0x9DD7BF7E ^ (v1 - 1884498927) & 0x7052B7F9 ^ 0x1D55)) ^ (v1 + 9330))))();
}

uint64_t sub_100818D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v23 = v16 - 1;
  v24 = v17 + __ROR8__((a5 + v23) & 0xFFFFFFFFFFFFFFF8, 8) + v15;
  v25 = __ROR8__(v24 ^ v9, 8);
  v24 ^= 0xB3A94E2F7B1B987CLL;
  v26 = (v25 + v24 - (v20 & (2 * (v25 + v24))) + v21) ^ a7;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ v12;
  v29 = __ROR8__(v28, 8);
  v30 = v28 ^ __ROR8__(v27, 61);
  v31 = (((v29 + v30) | v10) - ((v29 + v30) | a9) + a9) ^ v11;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (((v33 + v32) & v13 ^ 0x8884045AF4920000) + ((v33 + v32) & a4 ^ a3) - 1) ^ v14;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = __ROR8__(v34, 8);
  v37 = ((a2 | (2 * (v36 + v35))) - (v36 + v35) + a1) ^ a6;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0x8FB22143FEDB6CB3;
  *(a5 + v23) = *(STACK[0x590] + v23) ^ v18 ^ (((__ROR8__(v39, 8) + (v39 ^ __ROR8__(v38, 61))) ^ v22) >> (8 * ((a5 + v23) & 7)));
  return (*(STACK[0x5A0] + 8 * (((v23 != 0) * v19) ^ a8)))();
}

uint64_t sub_10081904C@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, char a4, uint64_t a5, unsigned int a6, int a7, char *a8, uint64_t a9)
{
  a5 = v10;
  a6 = (v11 + 22186) ^ (906386353 * ((2 * (&a5 & 0x4A1B1D98) - &a5 + 904192614) ^ 0x4E52F42));
  a8 = &a4;
  a9 = a1;
  v12 = (*(v9 + 8 * (v11 + 41518)))(&a5);
  return (*(v9 + 8 * (((a7 == -371865839) * ((v11 + 106543808) & 0xF9A6BFEB ^ 0xA4BB)) ^ v11)))(v12);
}

uint64_t sub_100819104(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if ((a5 ^ 0x66F3EFFC) + ((2 * a5) & 0xCDE690D8) == 1727262716)
  {
    v5 = -371865839;
  }

  else
  {
    v5 = 371891401;
  }

  *(result + 16) = v5;
  return result;
}

uint64_t sub_100819178@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v3 = (a2 + 385291689) & 0xE9084AEF;
  v4 = a2 ^ 0xAB23;
  v5 = a2 - 21628;
  LODWORD(STACK[0x9C4]) = v2;
  v6 = (*(a1 + 8 * (a2 + 10474)))(16);
  return (*(STACK[0x5A0] + 8 * (((v6 == 0) * (v4 ^ v3 ^ 0x8BD)) ^ v5)))();
}

uint64_t sub_1008191F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  **(v9 + 136) = 0;
  LODWORD(STACK[0x8CC]) = -371865839;
  return (*(a8 + 8 * (v8 - 35087)))();
}

uint64_t sub_100819220()
{
  v3 = 12 * (v2 | ((v2 < 0x2F5FFB14) << 32)) + 0x5DF084F666E16E49;
  v4 = ((v3 & 0x107609ECCC5) << (((v0 + 67) & 0xFDu) + 88)) & (v3 ^ 0x5EDEAEF3) ^ v3 & 0x609ECCC5;
  v5 = ((2 * (v3 ^ 0xDEFBBF79)) ^ 0x7CCAE77C) & (v3 ^ 0xDEFBBF79) ^ (2 * (v3 ^ 0xDEFBBF79)) & 0xBE6573B8;
  v6 = v5 ^ 0x82251082;
  v7 = (v5 ^ 0x44063BE) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0xF995CEF8) & v6 ^ (4 * v6) & 0xBE6573B8;
  v9 = (v8 ^ 0xB80542B6) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x6603106)) ^ 0xE6573BE0) & (v8 ^ 0x6603106) ^ (16 * (v8 ^ 0x6603106)) & 0xBE6573A0;
  v11 = v9 ^ 0xBE6573BE ^ (v10 ^ 0xA645331E) & (v9 << 8);
  v12 = (*(v1 + 8 * (v0 + 816)))(((12 * v2 + 1726049865) ^ (2 * ((v11 << 16) & 0x3E650000 ^ v11 ^ ((v11 << 16) ^ 0x73BE0000) & (((v10 ^ 0x1820401E) << 8) & 0x3E650000 ^ 0x1A040000 ^ (((v10 ^ 0x1820401E) << 8) ^ 0x65730000) & (v10 ^ 0x1820401E))))) & 0xFFFFFFFE ^ 0x781C2BBALL) == 0;
  return (*(v1 + 8 * (v12 | (4 * v12) | v0)))();
}

uint64_t sub_100819450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = STACK[0x240];
  v11 = STACK[0x240] < 0xFF49A4BA;
  v12 = (v8 ^ 0xE9D5C711) + STACK[0x3E0];
  STACK[0xBA0] = v12 + 10;
  v12 -= 0x67D86FBD020E46EALL;
  v13 = v12 < 0xFF49A4BA;
  v14 = v12 > v10;
  if (v11 == v13)
  {
    v13 = v14;
  }

  return (*(a8 + 8 * ((v9 - 28765) ^ ((2 * (v13 ^ 1)) | (4 * (v13 ^ 1))))))();
}

uint64_t sub_10081975C@<X0>(int a1@<W2>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, char a8)
{
  v11 = v9 - 1548;
  *(&a8 + (a2 ^ 0x31ED24E7u)) = ((v11 ^ 0x1AE7) - 1122) ^ ((*(v8 + (a1 - 1675250127)) ^ 0x90) << 8);
  return (*(v10 + 8 * v11))();
}

uint64_t sub_100819938@<X0>(unsigned int a1@<W0>, int a2@<W1>, unsigned int a3@<W3>, int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W7>, uint64_t a8@<X8>)
{
  v15 = (((((a1 >> 30) | 0xC3BF87BC) ^ a1 ^ a4) + a5) ^ ((((a1 >> 30) | 0xC3BF87BC) ^ a1 ^ a6) + a7) ^ ((((a1 >> 30) | 0xC3BF87BC) ^ a1 ^ v12) + v10)) * v11;
  *(v14 + 4 * a8) = v8 + v15;
  return (*(v13 + 8 * ((2 * (a8 < 0x26F)) | ((a8 < 0x26F) << 6) | a3)))(v9 + a2 + v15);
}

uint64_t sub_100819A60@<X0>(unsigned int a1@<W1>, uint64_t a2@<X2>, int a3@<W8>)
{
  v6 = v5[396] ^ ((*v5 & 0x7FFFFFFE | v5[623] & 0x80000000) >> 1);
  v5[623] = (v6 - ((2 * v6) & 0x8B989E7C) + v3) ^ *(a2 + 4 * (((7 * (a3 ^ 0x52E9)) ^ a1) & *v5));
  return (*(v4 + 8 * ((60497 * (LODWORD(STACK[0x424]) > 0x26F)) ^ a3)))();
}

uint64_t sub_100819CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v17 = *v13;
  v18 = *(*v15 + 40);
  a12 = v18 + 4244;
  a13 = v18 + 8;
  a10 = v17;
  a9 = (v16 & 0x6F083BFF) - 297845113 * ((((2 * &a9) | 0xC1FEF020) - &a9 - 1627355152) ^ 0x17CC648E) + 7863;
  v19 = (*(v14 + 8 * (v16 & 0x6F083BFF ^ 0xE68Eu)))(&a9);
  return (*(v14 + 8 * (v16 & 0x6F083BFF)))(v19);
}

uint64_t sub_100819D54@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>, int8x16_t a3@<Q3>, int8x16_t a4@<Q4>, int8x16_t a5@<Q5>, int8x16_t a6@<Q6>, int64x2_t a7@<Q7>)
{
  v30.i64[0] = v9 + v13;
  v30.i64[1] = v12 + a1 - 2;
  v31.i64[0] = v12 + a1 - 3;
  v31.i64[1] = v12 + a1 - 4;
  v32.i64[0] = v12 + a1 - 5;
  v32.i64[1] = v12 + a1 - 6;
  v33.i64[0] = v12 + a1 - 7;
  v33.i64[1] = v12 + a1 - 8;
  v34 = vandq_s8(v33, *&STACK[0x570]);
  v35 = vandq_s8(v32, *&STACK[0x570]);
  v36 = vandq_s8(v31, *&STACK[0x570]);
  v37 = vandq_s8(v30, *&STACK[0x570]);
  *&STACK[0x580] = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v38 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v39 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL), v26);
  v40 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL), v26);
  v41 = veorq_s8(v40, a4);
  v42 = veorq_s8(v39, a4);
  v43 = veorq_s8(v39, a5);
  v44 = veorq_s8(v40, a5);
  v45 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL), v44);
  v46 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), v43);
  v47 = veorq_s8(vaddq_s64(vsubq_s64(v46, vandq_s8(vaddq_s64(v46, v46), a6)), a7), v17);
  v48 = veorq_s8(vaddq_s64(vsubq_s64(v45, vandq_s8(vaddq_s64(v45, v45), a6)), a7), v17);
  v49 = vsraq_n_u64(vshlq_n_s64(v43, 3uLL), v43, 0x3DuLL);
  v50 = veorq_s8(v48, vsraq_n_u64(vshlq_n_s64(v44, 3uLL), v44, 0x3DuLL));
  v51 = veorq_s8(v47, v49);
  v52 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v50), v18);
  v53 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v51), v18);
  v54 = vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL);
  v55 = veorq_s8(v53, vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL));
  v56 = veorq_s8(v52, v54);
  v57 = vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL);
  v58 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v56);
  v59 = vaddq_s64(v57, v55);
  v60 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v58, v20), vorrq_s8(v58, v16)), v16), v21);
  v61 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v59, v20), vorrq_s8(v59, v16)), v16), v21);
  v62 = veorq_s8(v61, vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL));
  v63 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL));
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v63);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL), v62);
  v66.i64[0] = -1;
  v66.i64[1] = -1;
  v67 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v65, v22), v23), veorq_s8(vandq_s8(v65, v24), v25)), v66), v27);
  v68 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v64, v22), v23), veorq_s8(vandq_s8(v64, v24), v25)), v66), v27);
  v69 = vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL);
  v70 = veorq_s8(v68, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v71 = veorq_s8(v67, v69);
  v72 = vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL);
  v73 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v71);
  v74 = vaddq_s64(v72, v70);
  v75 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v74, v74), v28), v74), v29), v15);
  v76 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v73, v73), v28), v73), v29), v15);
  v77 = vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL);
  v78 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v79 = veorq_s8(v75, v77);
  v80 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v81 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v79);
  v82 = veorq_s8(vaddq_s64(v80, v78), a3);
  v83 = veorq_s8(v81, a3);
  v84 = vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL);
  v85 = veorq_s8(v83, vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL));
  v86 = veorq_s8(v82, v84);
  v87 = vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL);
  v88 = vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL);
  v89 = vaddq_s64(v38, v26);
  v90 = veorq_s8(vaddq_s64(v87, v85), v19);
  v128.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v88, v86), v19), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), *&STACK[0x560])));
  v128.val[2] = vshlq_u64(v90, vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), *&STACK[0x560])));
  v91 = veorq_s8(v89, a4);
  v92 = veorq_s8(v89, a5);
  v93 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v92);
  v94 = veorq_s8(vaddq_s64(vsubq_s64(v93, vandq_s8(vaddq_s64(v93, v93), a6)), a7), v17);
  v95 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v96 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95), v18);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v98 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97);
  v99 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v98, v20), vorrq_s8(v98, v16)), v16), v21);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100);
  v86.i64[0] = -1;
  v86.i64[1] = -1;
  v102 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v101, v22), v23), veorq_s8(vandq_s8(v101, v24), v25)), v86), v27);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103);
  v105 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v104, v104), v28), v104), v29), v15);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106), a3);
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL)));
  v109 = vaddq_s64(*&STACK[0x580], v26);
  v128.val[1] = vshlq_u64(veorq_s8(v108, v19), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), *&STACK[0x560])));
  v110 = veorq_s8(v109, a4);
  v111 = veorq_s8(v109, a5);
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111);
  v113 = veorq_s8(vaddq_s64(vsubq_s64(v112, vandq_s8(vaddq_s64(v112, v112), a6)), a7), v17);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v115 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114), v18);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v117 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116);
  v118 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v117, v20), vorrq_s8(v117, v16)), v16), v21);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119);
  v121 = veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v120, v22), v23), veorq_s8(vandq_s8(v120, v24), v25)), v86), v27);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122);
  v124 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v123, v123), v28), v123), v29), v15);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v126 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125), a3);
  v128.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL))), v19), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), *&STACK[0x560])));
  *(v11 + v9) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(*(v14 + v9)), 0x5F5F5F5F5F5F5F5FLL), *&vqtbl4q_s8(v128, *&STACK[0x420])));
  return (*(a2 + 8 * (((v10 == 0) * v7) ^ v8)))();
}

uint64_t sub_10081A2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unint64_t a7)
{
  STACK[0x590] = 0;
  v9 = *(v7 + 8 * (((((a6 - 773337682) ^ 0xD1E8D099) - 35327) * (STACK[0x3E0] > 0xF)) ^ a6));
  STACK[0x380] = v8;
  STACK[0x370] = a7;
  return v9();
}

uint64_t sub_10081A338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v10 = *(v9 + 8 * (v7 + 13571));
  STACK[0x3B0] = a7;
  v11 = v10(1032);
  v12 = *(v8 - 200);
  *(v8 - 216) = 0;
  return (*(v12 + 8 * (((v11 == 0) * (((v7 + 405465607) ^ 0x2F3F9A06) + ((v7 + 405465607) & 0xE7D4D8CF) - 924138982)) ^ v7)))();
}

uint64_t sub_10081A4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = v8 + v10 + STACK[0x4F0] + v15;
  v23 = __ROR8__(v22 & 0xFFFFFFFFFFFFFFF8, 8);
  v24 = (a2 | (2 * (v23 + v21))) - (v23 + v21) + a3;
  v25 = v24 ^ a4;
  v26 = v24 ^ a5;
  v27 = (__ROR8__(v25, 8) + v26) ^ v20;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ v19;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ v16;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ v13;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = __ROR8__(((a6 | (2 * (v35 + v34))) - (v35 + v34) + v12) ^ v11, 8);
  v37 = ((a6 | (2 * (v35 + v34))) - (v35 + v34) + v12) ^ v11 ^ __ROR8__(v34, 61);
  v38 = (v36 + v37) ^ 0x1B5DE9094BAFA51ALL;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  *v22 = (((v17 | (2 * (v40 + v39))) - (v40 + v39) + a7) ^ v18) >> (8 * (v22 & 7u));
  return (*(a8 + 8 * (((v10 == 1) * v14) ^ v9)))();
}

uint64_t sub_10081A5A0@<X0>(_DWORD *a1@<X0>, int a2@<W8>)
{
  v7 = *a1 - a2;
  v8 = 2 * (v3 | v4) - (v3 & ~v4 | v4 & ~v3);
  v9 = *(v6 + 8 * (v2 ^ 0xB53E));
  v10 = *(v9 - 527405895);
  v11 = *(v6 + 8 * (v2 - 42255)) + 4 * v10;
  v12 = *(v11 - 1940437438);
  v13 = (v8 ^ v4) + (v8 ^ v4) * v12;
  if (v8 == v4)
  {
    v14 = *(v11 - 1940437438);
  }

  else
  {
    v14 = 0;
  }

  *(v11 - 1940437438) = (v13 + v14) * v12;
  *(v9 - 527405895) = (v2 - 46624 + v10) % (v2 - 46619);
  return (*(v5 + 8 * ((7 * ((v7 - 1595673014) < 0xFFFFFFF0)) ^ v2)))();
}

uint64_t sub_10081A7E8@<X0>(uint64_t a1@<X8>)
{
  v8 = (v3 & (2 * (v7 - 7))) + ((v7 - 7) ^ 0x5EF777D76EA59FBDLL);
  *(v8 + v1 + v4) = *(a1 + v6 + v8);
  return (*(v5 + 8 * ((42 * (((((v7 - 7 - v2) | (v2 - (v7 - 7))) >> (((v2 + 64) | 0xA2) + 93)) & 1) == 0)) ^ (v2 + 32329))))();
}

uint64_t sub_10081A8F4@<X0>(int a1@<W1>, int a2@<W2>, uint64_t a3@<X3>, unsigned int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W7>, int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22)
{
  v36 = (v26 ^ 0xA0DA6200 ^ ((a22 + a5) | 0x5A50202)) & (2 * (v26 & 0xD06FB963)) ^ v26 & 0xD06FB963;
  v37 = ((2 * (v26 ^ 0xA498C7C5)) ^ 0xE9EEFD4C) & (v26 ^ 0xA498C7C5) ^ (2 * (v26 ^ 0xA498C7C5)) & v23;
  v38 = v37 ^ 0x141102A2;
  v39 = (v37 ^ 0x54E66C26) & (4 * v36) ^ v36;
  v40 = ((4 * v38) ^ v34) & v38 ^ (4 * v38) & v25;
  v41 = (v40 ^ a7) & (16 * v39) ^ v39;
  v42 = ((16 * (v40 ^ 0x24220426)) ^ a2) & (v40 ^ 0x24220426) ^ (16 * (v40 ^ 0x24220426)) & v25;
  v43 = v41 ^ v23 ^ (v42 ^ v22) & (v41 << 8);
  v44 = (v26 ^ (2 * ((v43 << 16) & v28 ^ v43 ^ ((v43 << 16) ^ v32) & (((v42 ^ a4) << 8) & v28 ^ v30 ^ (((v42 ^ a4) << 8) ^ v27) & (v42 ^ a4))))) >> 6;
  return (*(a3 + 8 * (a22 | (8 * ((((v44 ^ v33) + v24) ^ ((v44 ^ v31) + a8) ^ ((v44 ^ v29) + a6)) + v35 == a1)))))();
}

uint64_t sub_10081AA3C@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  *v4 = v2;
  *(v2 + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  return (*(a1 + 8 * v3))();
}

uint64_t sub_10081AB3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28)
{
  if (a1)
  {
    v30 = 0;
  }

  else
  {
    v30 = a3 == v28;
  }

  v31 = v30;
  return (*(v29 + 8 * (a28 ^ (36360 * v31))))();
}

uint64_t sub_10081ABB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, unsigned int a11, uint64_t a12, __int128 a13)
{
  v15 = 297845113 * (((&a10 | 0x4CCAD148) - (&a10 | 0xB3352EB7) - 1288360265) ^ 0x3BF9CDD6);
  a11 = 29466 - v15;
  HIDWORD(a13) = 0;
  LODWORD(a13) = v15 + 411412965;
  *(&a13 + 4) = 1267803788 - v15;
  a12 = v14 - 1840193775;
  v16 = (*(v13 + 418144))(&a10);
  return (*(v13 + 124632))(v16);
}

uint64_t sub_10081ACF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (LODWORD(STACK[0x81C]) | ((LODWORD(STACK[0x81C]) < ((20695 * ((v8 - 1046578534) & 0x3E61A5AF ^ 0xA1AC)) ^ 0x6EDE8F34)) << 32)) - 1860054682;
  *(v9 + 1440) = v10;
  return (*(a8 + 8 * ((v10 == 0) | v8)))();
}

uint64_t sub_10081ADB8()
{
  LODWORD(STACK[0x2F4]) = v4;
  LODWORD(STACK[0x2F0]) = v3;
  LODWORD(STACK[0x2F8]) = v2;
  v6 = *(v0 + 8 * (v1 + 4653));
  v7 = 91 * ((v1 + 1647276923) ^ 0x622FD0B6);
  *(v5 - 148) = v7;
  return v6(12096, 78, v7 ^ 0x95A12DBB, 1784563328, 2242383434, 2052583862, 1171645210, 3123322086);
}

uint64_t sub_10081AEC8()
{
  v4 = (((v1 ^ 0x902221282BE6BB98) - 0x567C245A5B37FD4DLL) ^ ((v1 ^ 0x7A3CA480D0DE12B3) + 0x439D5E0D5FF0AB9ALL) ^ (((v0 + 3627) ^ 0xAC4080DA8BE9A56BLL) + (v1 ^ 0x95E17A5704C756D4))) - 0x465E0571FF638EA7;
  v5 = v4 < 0x80000000716DB82FLL;
  v6 = v3 < v4;
  if (v3 < 0x80000000716DB82FLL != v5)
  {
    v6 = v5;
  }

  return (*(v2 + 8 * ((21259 * v6) ^ v0)))();
}

uint64_t sub_10081AFE4@<X0>(int a1@<W8>)
{
  *v2 = *v1;
  LODWORD(STACK[0x53C]) = v3;
  v5 = STACK[0x3C8];
  STACK[0x2B0] = STACK[0x3C8];
  STACK[0x540] = v5;
  v6 = STACK[0x7B8];
  LODWORD(STACK[0x548]) = STACK[0x7B8];
  LODWORD(STACK[0x54C]) = v6 + ((a1 - 1444583053) & 0x561ABFFE ^ 0xE9D579FF) - ((2 * v6) & 0xD3AB8E22);
  STACK[0x2E8] = &STACK[0x590];
  STACK[0x550] = &STACK[0x5B8];
  STACK[0x558] = &STACK[0x5B8];
  return (*(v4 + 8 * a1))();
}

uint64_t sub_10081B0C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *(STACK[0x5A0] + 8 * (a4 - 35141));
  STACK[0x410] = a4;
  return v4();
}

uint64_t sub_10081B194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v23 = a2 - 1;
  v24 = __ROR8__((v12 + v23) & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = a6 - ((v24 + v17) | v8) - ((0x96E95066F186A7ELL - v24) | 0xE2C4328F76774E5ELL) + v16;
  v26 = v25 ^ 0xE5E62B6C8A507A2CLL;
  v27 = v25 ^ v15;
  v28 = __ROR8__(v26, 8);
  v29 = ((a3 & (2 * (v28 + v27))) - (v28 + v27) + a4) ^ a8;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ v10;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ v14;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (((v35 + v34) | v19) - ((v35 + v34) | v20) + v20) ^ v13;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ v18;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ v21;
  *(a1 + v23 + a5) = (((__ROR8__(v40, 8) + (v40 ^ __ROR8__(v39, 61))) ^ v22) >> (8 * ((v12 + v23) & 7))) ^ *(v12 + v23);
  return (*(v9 + 8 * (((v23 != 0) * v11) ^ a7)))();
}

uint64_t sub_10081B2E4@<X0>(int a1@<W8>)
{
  v8 = 17902189 * ((((v7 - 232) | 0x5D437709) - (v7 - 232) + ((v7 - 232) & 0xA2BC88F0)) ^ 0xD30C6119);
  *(v1 + 2096) = v3;
  *(v7 - 200) = v8 + v6 - 23417;
  *(v7 - 232) = v8 + (v5 ^ 0xF7EEFBE6) + (((v6 - 31432) ^ 0xEFDDC5E7) & a1) + 536456704;
  *(v1 + 2080) = v4;
  v9 = (*(v2 + 8 * ((v6 - 136167412) & 0x800CD14)))(v7 - 232);
  return (*(STACK[0x5A0] + 8 * ((31191 * ((v6 - 136167412) > 0x1BCDCB19)) ^ (v6 - 37654))))(v9);
}

uint64_t sub_10081B3E0()
{
  v3 = v0;
  v4 = v0 + 2 * (((v1 - 26553) | 4) ^ 0x275u) - 1339552885;
  if (v4 <= 0x38)
  {
    v4 = 56;
  }

  return (*(v2 + 8 * ((46 * (v4 - v3 + 1339547700 > 0xF)) ^ v1)))();
}

uint64_t sub_10081B448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, uint64_t a58, uint64_t a59, int a60, int a61)
{
  LODWORD(STACK[0x458]) = LODWORD(STACK[0x23C]) + a60 + a57;
  LODWORD(STACK[0x468]) = 959220563 * a61;
  LODWORD(STACK[0x23C]) = LODWORD(STACK[0x260]) ^ 0xE425AE2D;
  LODWORD(STACK[0x238]) = LODWORD(STACK[0x230]) + LODWORD(STACK[0x22C]);
  return (*(STACK[0x480] + 8 * STACK[0x470]))(0, 0xFFFFFFFFLL);
}

uint64_t sub_10081B968@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, unsigned int a3@<W8>)
{
  v8 = *v5;
  v9 = (a2 + ((v3 ^ a1) & v4));
  *v9 = *(v5 - 1);
  v9[1] = v8;
  return (*(v7 + 8 * ((124 * (v6 != 0)) ^ a3)))();
}

uint64_t sub_10081B9F8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22)
{
  v22 = a6 - a22 + 308665623;
  v23 = (v22 ^ 0xFD5BD4E4) & (2 * (v22 & 0xF99B96E5)) ^ v22 & 0xF99B96E5;
  v24 = ((((((a1 - 25026) | 0x2088) + 1029230766) ^ v22) << ((a1 - 65) ^ 0xB0)) ^ 0x8986CF06) & ((((a1 - 25026) | 0x2088) + 1029230766) ^ v22) ^ (((((a1 - 25026) | 0x2088) + 1029230766) ^ v22) << ((a1 - 65) ^ 0xB0)) & 0xC4C36782;
  v25 = v24 ^ 0x44412081;
  v26 = (v24 ^ 0x80824700) & (4 * v23) ^ v23;
  v27 = ((4 * v25) ^ 0x130D9E0C) & v25 ^ (4 * v25) & 0xC4C36780;
  v28 = (v27 ^ 0x10600) & (16 * v26) ^ v26;
  v29 = ((16 * (v27 ^ 0xC4C26183)) ^ 0x4C367830) & (v27 ^ 0xC4C26183) ^ (16 * (v27 ^ 0xC4C26183)) & 0xC4C36780;
  v30 = v28 ^ 0xC4C36783 ^ (v29 ^ 0x44026000) & (v28 << 8);
  return (*(a5 + 8 * ((1004 * ((v22 ^ (2 * ((v30 << 16) & 0x44C30000 ^ v30 ^ ((v30 << 16) ^ 0x67830000) & (((v29 ^ 0x80C10783) << 8) & 0x44C30000 ^ 0x4800000 ^ (((v29 ^ 0x80C10783) << 8) ^ 0x43670000) & (v29 ^ 0x80C10783))))) != -115648029)) ^ a1)))();
}

uint64_t sub_10081BBC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(STACK[0x328] - 586084794) = v3;
  STACK[0x5F0] -= 32;
  return (*(v5 + 8 * v4))(a1, a2, a3, 117);
}

uint64_t sub_10081C1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = STACK[0x250];
  v11 = STACK[0x250] < 0xD3B3B5B2;
  v12 = (v8 ^ 0xE9D5C711) + STACK[0x400];
  STACK[0xBB0] = v12 + 10;
  v12 -= 0x7A3CF6DA26C37E5CLL;
  v13 = v12 < 0xD3B3B5B2;
  v14 = v12 > v10;
  if (v11 == v13)
  {
    v13 = v14;
  }

  return (*(a8 + 8 * ((v9 + 1781) ^ (98 * v13))))();
}

uint64_t sub_1008203DC()
{
  v5 = LODWORD(STACK[0x424])++;
  *(v1 - 775311879) = v5 + 1;
  v6 = *(STACK[0x328] - 586084794);
  v7 = 1603510583 * STACK[0x230];
  *(v4 - 144) = (v0 - 699977829) ^ v7;
  *(v4 - 136) = v6 ^ v7;
  *(v4 - 152) = v7 ^ v2;
  *(v4 - 128) = (v0 - 699982705) ^ v7;
  *(v4 - 124) = v0 - 699977829 - v7 - 19;
  *(v4 - 120) = v7;
  *(v4 - 112) = v0 - v7 - 1781264637;
  v8 = (*(v3 + 8 * (v0 ^ 0xA6E5)))(v4 - 152);
  return (*(v3 + 8 * *(v4 - 116)))(v8);
}

uint64_t sub_1008204FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (*(a8 + 8 * (v8 ^ 0x5642)))();
  v10 = STACK[0x5A0];
  STACK[0x6B0] = 0;
  return (*(v10 + 8 * v8))(v9);
}

uint64_t sub_100820530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (*(a8 + 8 * (v8 + 33053)))(32);
  v10 = STACK[0x5A0];
  STACK[0x8B0] = v9;
  return (*(v10 + 8 * (((v9 == 0) * (((v8 ^ 0x4979) + 31422) ^ 0x1614 ^ (13834 * (v8 ^ 0x4979)))) ^ v8)))();
}

uint64_t sub_10082059C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  *(v7 - 152) = (v6 - 77651027) ^ 0xFB5FF837;
  v8 = *(v5 + 8 * (v6 + 12962));
  STACK[0x4B0] = a5;
  v9 = *(v5 + 8 * (((v8(1032) != 0) * ((v6 - 77651027) ^ 0xFB5FBB99)) ^ v6));
  *(v7 - 148) = -473935569;
  return v9();
}

uint64_t sub_10082066C()
{
  *(v3 - 152) = v1 + 1012831759 * (((v0 | 0x98677849) - (v0 & 0x98677848)) ^ 0x88F46EC3) + 32730;
  v4 = (*(v2 + 8 * (v1 + 42651)))(v3 - 152);
  return (*(v2 + 8 * ((47376 * (*(v3 - 148) == ((71 * (v1 ^ 0x2411)) ^ 0xE9D574A7) + v1 + 18349)) ^ v1)))(v4);
}

uint64_t sub_100820764(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (a39)
  {
    v41 = *(v39 + 8) == 0;
  }

  else
  {
    v41 = 1;
  }

  v43 = v41 || *(v39 + 40) == 0;
  v44 = (a1 - 1807203660) & 0x6BB757F7 ^ ((a1 + 894) | 0x45A0) ^ 0xD2A4u;
  v45 = *(v40 + 8 * ((v43 * v44) ^ a1));
  return v45(v45, v44, 53924, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_1008208C4@<X0>(int a1@<W0>, int a2@<W3>, uint64_t a3@<X8>, __n128 a4@<Q1>, int8x16_t a5@<Q4>, uint64_t a6@<D5>, int8x16_t a7@<Q6>)
{
  v18 = (v15 - 1) & 0xF;
  v20.i64[0] = vqtbl4q_s8(*(&a4 - 1), a5).u64[0];
  v20.i64[1] = a6;
  v21 = vrev64q_s8(vmulq_s8(v20, a7));
  *(v16 + v15) = veorq_s8(veorq_s8(veorq_s8(veorq_s8(*(v12 + v18 - 15), *(v10 + v15)), *(v11 + v18 - 15)), *(v13 + v18 + a3 - 15)), vextq_s8(v21, v21, 8uLL));
  return (*(v17 + 8 * (((v14 == v15) * a2) ^ a1)))();
}

uint64_t sub_10082093C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = STACK[0x578];
  v7 = *(STACK[0x578] + 8);
  v8 = STACK[0x530];
  v8[1] = v7;
  *v8 = *v6;
  return (*(a5 + 8 * (((((v5 - 40042) | 0x5800) + ((v5 + 34951498) & 0xFDEA5F67) - 44018) * (v7 != 0)) ^ v5)))();
}

uint64_t sub_1008209AC()
{
  LODWORD(STACK[0xE88]) = v0;
  STACK[0xE98] = v1;
  STACK[0xD68] = v3;
  v4 = STACK[0xDD8];
  v5 = *(v2 + 8 * SLODWORD(STACK[0xDD8]));
  v6 = STACK[0xF28];
  STACK[0xDC8] = STACK[0xF28] + 722160;
  STACK[0xDC0] = v6 + 1118640;
  STACK[0xDB8] = v6 + 1110380;
  STACK[0xDB0] = v6 + 1201240;
  STACK[0xDA8] = v6 + 1099760;
  STACK[0xDA0] = v6 + 1182360;
  STACK[0xD98] = v6 + 1192980;
  STACK[0xD30] = v6 + 719800;
  STACK[0xD28] = v6 + 16520;
  STACK[0xD20] = v6 + 704460;
  STACK[0xDD0] = v6;
  STACK[0xD18] = v6 + 1180;
  v4 += 10207;
  LODWORD(STACK[0xD38]) = v4;
  LODWORD(STACK[0xD10]) = v4 ^ 0x4F2F;
  STACK[0xE78] = 295590;
  STACK[0xE28] = 300310;
  STACK[0xE70] = 277595;
  STACK[0xE20] = 279660;
  STACK[0xE18] = 180540;
  v7 = STACK[0xE40];
  v8 = STACK[0xE30];
  v9 = STACK[0xE60];
  v10 = STACK[0xE50];
  v11 = STACK[0xE48];
  STACK[0xE58] = STACK[0xE58];
  STACK[0xE40] = v7;
  STACK[0xE60] = v9;
  STACK[0xE30] = v8;
  STACK[0xE50] = v10;
  STACK[0xE48] = v11;
  return v5();
}

uint64_t sub_100820CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v20 = *(a17 + 24);
  v21 = 297845113 * (((((v19 - 144) | 0x12EFD08) ^ 0xFFFFFFFE) - (~(v19 - 144) | 0xFED102F7)) ^ 0x89E21E69);
  *(v19 - 128) = v21 + 411413093;
  *(v19 - 124) = 1267803788 - v21;
  *(v19 - 136) = &STACK[0x2C4];
  *(v19 - 120) = v20;
  *(v19 - 140) = v17 - v21 + 22835;
  v22 = (*(v18 + 8 * (v17 + 45637)))(v19 - 144);
  return (*(v18 + 8 * (((*(v19 - 144) == -371865839) * (v17 + 20963)) ^ v17)))(v22);
}

uint64_t sub_100820F10(int8x16_t a1, int8x16_t a2, int8x16_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v30 = *(a12 + 4 * v12);
  v31 = veorq_s8(v30, a1);
  v32 = vandq_s8(v30, v29);
  v33 = vaddq_s32(v31, v31);
  v34 = veorq_s8(vandq_s8(veorq_s8(v33, a3), v31), vandq_s8(v33, a4));
  v35 = veorq_s8(vandq_s8(vaddq_s32(v32, v32), veorq_s8(v30, a2)), v32);
  v36 = veorq_s8(v34, a5);
  v37 = vshlq_n_s32(v36, 2uLL);
  v38 = veorq_s8(vandq_s8(veorq_s8(v34, a6), vshlq_n_s32(v35, 2uLL)), v35);
  v39 = veorq_s8(vandq_s8(veorq_s8(v37, a7), v36), vandq_s8(v37, a8));
  v40 = veorq_s8(v39, v18);
  v41 = veorq_s8(vandq_s8(veorq_s8(v39, v19), vshlq_n_s32(v38, 4uLL)), v38);
  v42 = vshlq_n_s32(v40, 4uLL);
  v43 = veorq_s8(vandq_s8(veorq_s8(v42, v20), v40), vandq_s8(v42, a8));
  v44 = veorq_s8(v43, v21);
  v45 = veorq_s8(veorq_s8(v41, a4), vandq_s8(veorq_s8(v43, v22), vshlq_n_s32(v41, 8uLL)));
  v46 = vshlq_n_s32(v44, 8uLL);
  v47 = veorq_s8(veorq_s8(vandq_s8(v46, v24), v25), vandq_s8(veorq_s8(v46, v23), v44));
  v48 = vshlq_n_s32(v45, 0x10uLL);
  v49 = veorq_s8(veorq_s8(vandq_s8(v48, v27), v45), vandq_s8(veorq_s8(v48, v26), v47));
  v50 = v12 + 4 == (5 * v14) + v15;
  *(v17 + 4 * v12) = veorq_s8(veorq_s8(veorq_s8(v30, *(v17 + 4 * v12)), v28), vaddq_s32(v49, v49));
  return (*(v16 + 8 * (((32 * v50) | (v50 << 6)) ^ v13)))();
}

uint64_t sub_1008210A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = (*(v8 + 16) ^ 0xE6B23D2F) - 1073884160 + ((2 * *(v8 + 16)) & 0xCD647A5E);
  v12 = (v11 ^ 0x5D2FEE8D) & (2 * (v11 & (((v9 - 322272276) & 0x1335E1AE) + 1498369315))) ^ v11 & (((v9 - 322272276) & 0x1335E1AE) + 1498369315);
  v13 = ((2 * ((v9 - 1941660724) & 0x73BB3CFF ^ 0x5D32F752 ^ v11)) ^ 0x8FA1AB8) & ((v9 - 1941660724) & 0x73BB3CFF ^ 0x5D32F752 ^ v11) ^ (2 * ((v9 - 1941660724) & 0x73BB3CFF ^ 0x5D32F752 ^ v11)) & 0x47D0D5C;
  v14 = v13 ^ 0x4050544;
  v15 = (v13 ^ 0x780808) & (4 * v12) ^ v12;
  v16 = ((4 * v14) ^ 0x11F43570) & v14 ^ (4 * v14) & 0x47D0D58;
  v17 = (v16 ^ 0x740550) & (16 * v15) ^ v15;
  v18 = ((16 * (v16 ^ 0x409080C)) ^ 0x47D0D5C0) & (v16 ^ 0x409080C) ^ (16 * (v16 ^ 0x409080C)) & 0x47D0D40;
  return (*(a8 + 8 * ((61 * ((v11 ^ (2 * ((((v18 ^ 0x2D081C) << 8) & 0x47D0000 ^ 0x40D0000 ^ (((v18 ^ 0x2D081C) << 8) ^ 0x7D0D0000) & (v18 ^ 0x2D081C)) & (((v18 ^ 0x4500500) & (v17 << 8) ^ v17) << 16) ^ (v18 ^ 0x4500500) & (v17 << 8) ^ v17))) == v10)) ^ v9)))();
}

uint64_t sub_1008212E4()
{
  v3 = *(v2 - 180);
  v4 = *(v2 - 176);
  *(v2 - 188) = (v3 >> 21) ^ 0x5F;
  *(v2 - 187) = (v3 >> (v0 ^ 0xC2)) ^ 0x5F;
  *(v2 - 186) = (v3 >> 5) ^ 0x5F;
  *(v2 - 185) = ((__PAIR64__(v3, v4) >> 29) - ((2 * (__PAIR64__(v3, v4) >> 29)) & 0xC4) - 30) ^ 0xBD;
  *(v2 - 184) = (v4 >> 21) ^ 0x5F;
  *(v2 - 183) = (v4 >> 13) - ((v4 >> 12) & 0xBE) + 95;
  *(v2 - 182) = (v4 >> 5) - ((v4 >> 4) & 0xBE) + 95;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_100821390@<X0>(unint64_t a1@<X8>)
{
  *(v1 + 2) = BYTE2(a1) ^ 0xAA;
  *(v1 + 3) = (a1 >> (((v3 - 107) & 0xBFu) - 114)) ^ 0x4B;
  return (*(v4 + 8 * (v3 ^ (119 * (v2 == 12)))))();
}

uint64_t sub_10082144C@<X0>(uint64_t a1@<X1>, char a2@<W7>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  LODWORD(STACK[0xE00]) = 0;
  LODWORD(STACK[0xDF8]) = 0;
  LODWORD(STACK[0xE08]) = 0;
  LODWORD(STACK[0xDD8]) = 0;
  LODWORD(STACK[0xE28]) = 0;
  LODWORD(STACK[0xDC0]) = 0;
  LODWORD(STACK[0xDE0]) = 0;
  v57 = STACK[0xE78];
  v58 = STACK[0xEA8];
  v59 = *(STACK[0xEA8] + (((((STACK[0xE78] ^ a41 ^ 0xAE) - 60) ^ ((STACK[0xE78] ^ a41 ^ 0x47) + 43) ^ (((a3 + 102) ^ 0x7B) + (STACK[0xE78] ^ a41 ^ 0x93))) - 31) ^ 0x67));
  v60 = (((v59 ^ 0x39) - 57) ^ ((v59 ^ 0x6B) - 107) ^ ((v59 ^ 0x14) - 20)) + 92;
  v61 = v60 & 0x42 ^ 0x58;
  v62 = (8 * v59) & 0x10;
  v63 = STACK[0xE78] >> 16;
  v64 = v60 ^ v62 ^ (2 * ((v60 ^ 0x50) & (2 * ((v60 ^ 0x50) & (2 * ((v60 ^ 0x50) & (2 * ((v60 ^ 0x50) & (2 * ((v60 ^ 0x50) & (2 * v61) ^ v61)) ^ v61)) ^ v61)) ^ v61)) ^ v61));
  v65 = STACK[0xC88];
  v66 = (((STACK[0xC88] ^ 0xD4) + 44) ^ ((STACK[0xC88] ^ 5) - 5) ^ ((STACK[0xC88] ^ v53) - 92)) - 122;
  v67 = -59 * (((v64 ^ 0xFC) + 109) ^ ((v64 ^ 0x94) + 5) ^ ((v64 ^ 0xA7) + 56));
  v68 = v67 - 124;
  v69 = ((123 - v67) | 0x63) ^ (v67 - 124) & 0xD6;
  *(STACK[0xF10] + 145) = v68 ^ (2 * ((v68 ^ 0x1C) & (2 * ((v68 ^ 0x1C) & (2 * ((v68 ^ 0x1C) & (2 * ((v68 ^ 0x1C) & (2 * ((v68 ^ 0x1C) & (2 * ((v68 ^ 0x1C) & (2 * v69) ^ v69)) ^ v69)) ^ v69)) ^ v69)) ^ v69)) ^ v69)) ^ 0xCE;
  v70 = *(v58 + (v66 ^ 0x67));
  v71 = ((v70 ^ 0xC0) + 64) ^ ((v70 ^ 0x3F) - 63) ^ ((v70 ^ 0xB9) + 71);
  v72 = v71 + 116;
  v73 = (v71 + 116) & 0xBA;
  v74 = -59 * ((8 * v70) & 0x10 ^ (v71 - 12) ^ (2 * ((v72 ^ 0x38) & (2 * ((v72 ^ 0x38) & (2 * ((v72 ^ 0x38) & (2 * ((v72 ^ 0x38) & (2 * ((v72 ^ 0x38) & (2 * v73) ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ (v73 | 0x40))) ^ 0x37) + 55;
  v75 = (v74 & 0xF9 | v56) ^ v74 & 0xF8;
  v76 = LODWORD(STACK[0xAB0]) ^ v74 ^ (2 * ((v74 ^ 0x48) & (2 * ((v74 ^ 0x48) & (2 * ((v74 ^ 0x48) & (2 * ((v74 ^ 0x48) & (2 * ((v74 ^ 0x48) & (2 * ((v74 ^ 0x48) & (2 * v75) ^ v75)) ^ v75)) ^ v75)) ^ v75)) ^ v75)) ^ v75)) ^ 0xA5;
  *(STACK[0xF10] + 80) = LODWORD(STACK[0xCD0]) ^ BYTE1(v57) ^ 0xE;
  *(STACK[0xF10] + 95) = LODWORD(STACK[0xCB8]) ^ BYTE1(v65) ^ 0x1B;
  *(STACK[0xF10] + 2) = v76;
  v77 = LODWORD(STACK[0xCE8]) ^ 0xD1 ^ v63;
  *(STACK[0xF10] + 151) = LODWORD(STACK[0xB28]) ^ BYTE2(v65) ^ v55;
  v78 = (v63 ^ 0x20D0BAF1A66CLL) >> ((v63 & 8 ^ 8) + (v63 & 8));
  v79 = v78 - ((2 * v78) & 0x9A3400A9C920) - 0x7D0BB2E5FFAB1B70;
  v80 = v79 ^ LODWORD(STACK[0xB08]);
  *(STACK[0xF10] + 15) = v77;
  *(STACK[0xF10] + 71) = v80;
  v81 = *(STACK[0xEC8] + (((LODWORD(STACK[0xC98]) ^ *(STACK[0xF10] + 67) ^ 0xF2 ^ BYTE3(v65)) + 18) ^ 0xB9));
  v82 = -77 - 51 * (((v81 ^ 0x1F) + 82) ^ ((v81 ^ 0x33) + 126) ^ ((v81 ^ 0xED) - 92));
  v83 = v82 & 0xF3 ^ 0xB;
  *(STACK[0xF10] + 12) = v82 ^ (2 * ((v82 ^ 0x7C) & (2 * ((v82 ^ 0x7C) & (2 * ((v82 ^ 0x7C) & (2 * ((v82 ^ 0x7C) & (2 * ((v82 ^ 0x7C) & (2 * (((2 * v82) & 0x7A ^ 0xE) & (v82 ^ 0x7C) ^ v83)) ^ v83)) ^ v83)) ^ v83)) ^ v83)) ^ v83)) ^ 0x77;
  v84 = *(a1 + (((v79 >> 4) & 0xF0 | (v79 >> 12)) ^ 0xC3));
  v85 = 80 - 81 * (((v84 ^ v54) - 45) ^ ((v84 ^ 0xED) + 15) ^ ((v84 ^ 0xEC) + 16));
  v86 = v85 & 0xBE ^ 0x7D;
  *(STACK[0xF10] + 90) = LODWORD(STACK[0xCA8]) ^ *(STACK[0xF10] + 145) ^ v85 ^ (2 * ((v85 ^ 0x44) & (2 * ((v85 ^ 0x44) & (2 * ((v85 ^ 0x44) & (2 * ((v85 ^ 0x44) & (2 * ((v85 ^ 0x44) & (2 * (v86 ^ v85 & 0x3A)) ^ v86)) ^ v86)) ^ v86)) ^ v86)) ^ v86)) ^ 0x19;
  *(STACK[0xF10] + 105) = BYTE4(v65) ^ LODWORD(STACK[0x748]) ^ *(STACK[0xF10] + 2) ^ 0x6C;
  v87 = ((v65 >> 40) ^ 0xBB6EEF) >> ((BYTE3(v79) & 8 ^ 8) + (BYTE3(v79) & 8u));
  *(STACK[0xF10] + 25) = LODWORD(STACK[0xBD0]) ^ BYTE2(v79) ^ *(STACK[0xF10] + 80) ^ 0x8F;
  *(STACK[0xF10] + 21) = LODWORD(STACK[0x4E4]) ^ *(STACK[0xF10] + 95) ^ 0x6A ^ BYTE5(v65);
  v88 = ((*(STACK[0xF10] + 15) >> 2) | (*(STACK[0xF10] + 15) << 6)) ^ 0xFFFFFFBA;
  *(STACK[0xF10] + 99) = LODWORD(STACK[0xAA8]) ^ ((v88 >> 6) | (4 * v88)) ^ 0x39 ^ BYTE3(v79);
  *(STACK[0xF10] + 49) = LODWORD(STACK[0xB90]) ^ *(STACK[0xF10] + 30) ^ 0x46 ^ (v87 - ((2 * v87) & 0xFC) + 126);
  v89 = *(v58 + (((a53 ^ *(STACK[0xF10] + 108) ^ 0xB ^ BYTE4(v79)) - 7) ^ 0x67));
  LOBYTE(v87) = (((v89 ^ 0x73) - 115) ^ ((v89 ^ 0xD3) + 45) ^ ((v89 ^ 0xE6) + 26)) + 125;
  v90 = v87 & a2 ^ 0x72;
  v91 = v87 ^ (8 * v89) & 0x10 ^ (2 * ((v87 ^ 0x30) & (2 * ((v87 ^ 0x30) & (2 * ((v87 ^ 0x30) & (2 * ((v87 ^ 0x30) & (2 * (v87 & (2 * (v87 & (2 * v87) & 0x62 ^ v90)) ^ v90)) ^ v90)) ^ v90)) ^ v90)) ^ v90));
  v92 = -59 * (((v91 ^ 0x54) - 122) ^ ((v91 ^ 0x2A) - 4) ^ ((v91 ^ 0xE6) + 56)) + 44;
  LOBYTE(v87) = v92 & 0x30 ^ 0xAB;
  *(STACK[0xF10] + 127) = v92 ^ (2 * ((v92 ^ 0x62) & (2 * ((v92 ^ 0x62) & (2 * ((v92 ^ 0x62) & (2 * ((v92 ^ 0x62) & (2 * (((2 * (v87 ^ v92 & 0x52)) ^ 4) & (v92 ^ 0x62) ^ v87)) ^ v87)) ^ v87)) ^ v87)) ^ v87)) ^ 0xB4;
  v93 = *(STACK[0xED8] + 8 * a3);
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
  return v93(188);
}

uint64_t sub_100821BB0()
{
  v4 = v1 + 20263;
  v5 = -1051086576 * (v2 + v0) + v2 * v0 - 1214832384 < (v4 ^ 0x7851);
  return (*(v3 + 8 * ((2 * v5) | (8 * v5) | v4)))();
}

uint64_t sub_100821C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, int a60, int a61)
{
  v68 = a8 - 1188941766 + ((a8 - 1188941766) >> 15) - ((a8 - 1188941766 + ((a8 - 1188941766) >> 15)) >> 4);
  v69 = (v68 ^ 0xD08CDFF9) - ((v68 ^ 0xD08CDFF9) >> 13) + (((v68 ^ 0xD08CDFF9) - ((v68 ^ 0xD08CDFF9) >> 13)) >> 4);
  v70 = (v69 ^ 0x451C05EB) + ((v69 ^ 0x451C05EB) >> 10) + (((v69 ^ 0x451C05EB) + ((v69 ^ 0x451C05EB) >> 10)) >> 3);
  v71 = (v70 ^ 0x4DF1973E) + ((v70 ^ 0x4DF1973E) >> 13) + (((v70 ^ 0x4DF1973E) + ((v70 ^ 0x4DF1973E) >> 13)) >> 2);
  v72 = (v71 ^ 0x1A60AA8E) + ((v71 ^ 0x1A60AA8E) >> 10) - (((v71 ^ 0x1A60AA8E) + ((v71 ^ 0x1A60AA8E) >> 10)) >> 5);
  v73 = (v72 ^ 0xF059931A) - ((v72 ^ 0xF059931A) >> 9) - (((v72 ^ 0xF059931A) - ((v72 ^ 0xF059931A) >> 9)) >> 5);
  v74 = v73 - 2125686725 + ((v73 - 2125686725) >> 10) + ((v73 - 2125686725 + ((v73 - 2125686725) >> 10)) >> 5);
  v75 = v74 - 974628663 - ((v74 - 974628663) >> 15) + ((v74 - 974628663 - ((v74 - 974628663) >> 15)) >> 6);
  v76 = v69 ^ v63 ^ v72 ^ v75;
  v77 = v68 ^ v62 ^ v71 ^ (v74 - ((2 * v74) & 0xF771889E) + 2075706447);
  v78 = v77 ^ 0x6617C7A0;
  v79 = v70 ^ v61 ^ (v73 - ((2 * v73) & 0x9869491E) + 1278518415) ^ (v75 - 1438077555 + ((v75 - 1438077555) >> 9) - ((v75 - 1438077555 + ((v75 - 1438077555) >> 9)) >> 3));
  v80 = -(v79 ^ 0x9CDC15E);
  v81 = (v79 ^ 0x9CDC15E) & 7;
  v82 = v80 & 7;
  if (v81)
  {
    v83 = 255;
  }

  else
  {
    v83 = 0;
  }

  v84 = (v83 << v82);
  LODWORD(STACK[0x238]) = 16843009 * v84;
  v85 = (-v78 ^ (1042587642 - (v77 ^ 0x5833585A)) ^ 0xA767D9B3 ^ (v78 - 2 * (v78 & 0x2767D9BB ^ v77 & 8) - 1486366285)) + 1042587642;
  v86 = 16843009 * (BYTE2(v85) ^ HIBYTE(v85) ^ (v85 ^ BYTE1(v85)) ^ 0x57);
  v87 = 16843009 * (HIBYTE(v76) ^ 0xC7 ^ (v76 ^ BYTE2(v76) ^ BYTE1(v76)));
  LODWORD(STACK[0x26C]) = v87;
  LODWORD(STACK[0x268]) = v86;
  v88 = v86 ^ v87;
  v89 = v88 ^ 0xE9E9E9E9;
  LODWORD(STACK[0x264]) = (LODWORD(STACK[0x408]) ^ LODWORD(STACK[0x280]) ^ 0x55191432 ^ ((v88 ^ 0xE9E9E9E9) - 2 * ((v88 ^ 0xE9E9E9E9) & 0x597846AA ^ v88 & 2) - 646429016)) + 131855043 * (v81 - LODWORD(STACK[0x334]));
  LODWORD(STACK[0x258]) = v65 ^ LODWORD(STACK[0x260]) ^ (v80 & 7 | 0xF0226F20);
  v90 = *(v64 + 8 * (v66 ^ 0x956D)) - 171468935;
  v91 = *(v64 + 8 * (v66 - 34081)) - 1835666759;
  v92 = *(v91 + 4 * v65);
  v93 = (v92 >> 4) & 0xC7D97A0;
  v94 = v92 ^ LODWORD(STACK[0x324]);
  LODWORD(STACK[0x33C]) = v82;
  LODWORD(STACK[0x260]) = v94 ^ __ROR4__(*(v90 + 4 * (v80 & 7)), 19) ^ v93;
  LODWORD(STACK[0x468]) = v89;
  v95 = STACK[0x340] & 0xFE;
  v96 = LODWORD(STACK[0x464]) ^ 0x93E9AE61;
  LODWORD(STACK[0x368]) ^= (-1937743009 * v96) ^ (-1937743009 * (((a61 ^ 0xBD43C83) & ~v95 | STACK[0x340] & 0x7C) ^ 0x983D9282));
  v97 = v78 & 0xFFFFFF01 | (2 * (((v77 ^ 0xA0) & 0xFE ^ 0x80) >> 1));
  LODWORD(STACK[0x230]) -= (STACK[0x448] & 0xFFFFFFF8 ^ 0x3DB5F55B) & (LODWORD(STACK[0x22C]) ^ 0xFFFFFFFA) ^ (STACK[0x448] & 4 | 0x18E01F23);
  LODWORD(STACK[0x328]) = 16843009 * ((v77 ^ 0x6617C7A0) & 0xFE ^ 0x80);
  LODWORD(STACK[0x470]) = v77;
  LODWORD(STACK[0x25C]) = v77 ^ 0x6FF0C220 ^ LODWORD(STACK[0x248]) ^ v97 ^ 0x9E70500 ^ ((v97 ^ v77) << 8);
  v98 = *(v91 + 4 * (v96 % 0x101));
  LODWORD(STACK[0x248]) = (1911771801 * v96) ^ LODWORD(STACK[0x458]) ^ (1911771801 * ((v95 | a61) ^ 0x93E9AE01));
  LODWORD(STACK[0x324]) = v81;
  LODWORD(STACK[0x408]) = v76;
  LODWORD(STACK[0x250]) = (1660944384 * v84) & (v76 ^ 0xA6000000);
  LODWORD(STACK[0x22C]) = v67;
  LODWORD(STACK[0x458]) = v98;
  LODWORD(STACK[0x240]) = -v65;
  return (*(STACK[0x480] + 8 * v66))((v66 - 1157849010), 0x57349B2F00000000, 0xAD86569F26A6989CLL);
}

uint64_t sub_1008224D8()
{
  v3 = (*(v1 + 8 * (v2 + 5538)))();
  v4 = v3 == (*(v1 + 8 * ((v2 - 37679) ^ 0xEEAF)))(v0);
  return (*(v1 + 8 * ((v4 * (((v2 - 709408122) & 0x2A4899DF) - 12121)) ^ (v2 - 37679))))();
}

uint64_t sub_1008225A8()
{
  v2 = (v0 - 39514) | 0x400;
  v3 = *(v1 - 216);
  v4 = (*(v3 + 8 * (v0 + 8213)))(1032);
  STACK[0x4B8] = 0;
  LODWORD(STACK[0x48C]) = 0;
  *(v1 - 192) = 0;
  STACK[0x4A0] = 0;
  *(v1 - 248) = 0;
  STACK[0x498] = 0;
  *(v1 - 256) = 0;
  STACK[0x480] = 0;
  *(v1 - 240) = 0;
  *(v1 - 232) = 0;
  STACK[0x4A8] = 0;
  STACK[0x490] = 0;
  STACK[0x478] = 0;
  STACK[0x4B0] = 0;
  *(v1 - 224) = v2;
  v5 = *(v3 + 8 * (((v4 == 0) * (v2 ^ 0x1434)) ^ v0));
  *(v1 - 148) = -404908090;
  return v5();
}

uint64_t sub_100822674()
{
  v6 = *v3;
  *v3[1] = 1170578247;
  *v6 = v2 + (((v4 - (v0 + v5)) | (v0 + v5 - v4)) >> 31);
  return (*(v1 + 8 * ((v0 + v5) ^ 0xE9D5A7DF ^ (41341 * (((v0 + v5) ^ 0x751690DBu) < 0x82070654)))))(v3, v0);
}

uint64_t sub_100822724()
{
  v3 = *(v2 + 8 * (((*(*(v0 + 24) + 32) == v0) * ((v1 - 11422) ^ 0x4A6B ^ (49 * (v1 ^ 0x7722)))) ^ v1));
  STACK[0x2E8] = v0;
  return v3();
}

uint64_t sub_100822794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = STACK[0x260];
  v11 = STACK[0x260] < 0xB2D5526C;
  v12 = (v8 ^ 0xE9D5C711) + STACK[0x420];
  STACK[0xBC8] = v12 + 10;
  v12 -= 0x7E75F62C92F4A096;
  v13 = v12 < 0xB2D5526C;
  v14 = v12 > v10;
  if (v11 == v13)
  {
    v13 = v14;
  }

  return (*(a8 + 8 * ((v9 - 8843) ^ (11 * (v13 ^ 1)))))();
}

uint64_t sub_100822820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0xEA8]) = 0;
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
  LODWORD(STACK[0xD80]) = 0;
  LODWORD(STACK[0xD08]) = 0;
  LODWORD(STACK[0xDA0]) = 0;
  LODWORD(STACK[0xD38]) = 0;
  LODWORD(STACK[0xE08]) = 0;
  LODWORD(STACK[0xD20]) = 0;
  v9 = STACK[0xE88] - 14045;
  LODWORD(STACK[0xC18]) = v6 ^ 0xBF542833;
  STACK[0xC88] = v8 ^ 0xBB6EEF716CE8A42CLL;
  v10 = *(v7 + 8 * v9);
  LODWORD(STACK[0xE18]) = 1;
  LODWORD(STACK[0xDF0]) = 1;
  LODWORD(STACK[0xDE8]) = 1;
  LODWORD(STACK[0xCF8]) = 1;
  LODWORD(STACK[0xD98]) = 1;
  LODWORD(STACK[0xD10]) = 1;
  LODWORD(STACK[0xE00]) = 1;
  LODWORD(STACK[0xDE0]) = 1;
  LODWORD(STACK[0xD00]) = 1;
  return v10(4294947698, -22206133, STACK[0xBD8], 0xFFFFF20000000000, 184, a6, &off_1010A0B50, 12602655);
}

uint64_t sub_100822BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, uint64_t a30, uint64_t a31, __int128 a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  *(v47 - 136) = &a32 + 2;
  *(v47 - 120) = &a46;
  *(v47 - 128) = (a29 - 378499718) ^ (17902189 * ((((v47 - 136) | 0x73EFC7F7) + (~(v47 - 136) | 0x8C103808)) ^ 0xFDA0D1E6));
  v48 = (*(v46 + 8 * (a29 + 21091)))(v47 - 136);
  return (*(v46 + 8 * ((54044 * (*(v47 - 124) == ((a29 - 28998) ^ 0xE9D5CF45))) ^ a29)))(v48);
}

uint64_t sub_100822C64(double a1)
{
  *v3 = a1;
  v3[1] = a1;
  return (*(v5 + 8 * (((v2 == 0) * v4) ^ v1)))();
}

uint64_t sub_100822C88(unsigned __int8 a1, char a2, char a3, char a4, _BYTE *a5, uint64_t a6, char a7)
{
  v16 = ((*v10 ^ a4) + v11 + ((*v10 << (v7 + 19)) & v12));
  *(v15 - 244) = v16;
  v17 = ((*a5 ^ a7) + a2 + (a3 & (2 * *a5)));
  *(v15 - 228) = (v17 | ((v17 < 0x26) << 8)) + 1067902719;
  *(v15 - 252) = (v16 < 0x46) << 8;
  LODWORD(STACK[0x2BC]) = (v8 | ((v8 < 0x62u) << 8)) + 71562007;
  v18 = v9 & v14 ^ 0xF;
  *(v15 - 256) = (v9 ^ (2 * ((v9 ^ 0x36) & (2 * ((v9 ^ 0x36) & (2 * ((v9 ^ 0x36) & (2 * ((v9 ^ 0x36) & (2 * ((v9 ^ 0x36) & (2 * ((v9 ^ 0x36) & 0x3A ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18)));
  LODWORD(STACK[0x2C8]) = (a1 < 0x6Bu) << 8;
  v19 = *(*(v15 - 168) + 8 * (v7 ^ (487 * ((*(v15 - 152) - 1859511425) > 0xFFFFFFF7))));
  *(v15 - 208) = v13;
  return v19();
}

uint64_t sub_100822E0C(uint64_t a1)
{
  *(v4 - 152) = (v1 - 1066818984) ^ (1022166737 * ((2 * ((v4 - 168) & 0x418DF760) - (v4 - 168) - 1099822949) ^ 0x462E909));
  *(v4 - 168) = &STACK[0x3A0];
  *(v4 - 160) = v4 - 184;
  (*(v2 + 8 * (v1 - 1066802870)))(v4 - 168);
  v3[15] = *(v4 - 169);
  v3[14] = *(v4 - 170);
  v3[13] = *(v4 - 171);
  v3[12] = *(v4 - 172);
  v3[11] = *(v4 - 173);
  v3[10] = *(v4 - 174);
  v3[9] = *(v4 - 175);
  v3[8] = *(v4 - 176);
  v3[7] = *(v4 - 177);
  v3[6] = *(v4 - 178);
  v3[5] = *(v4 - 179);
  v3[4] = *(v4 - 180);
  v3[3] = *(v4 - 181);
  v3[2] = *(v4 - 182);
  v3[1] = *(v4 - 183);
  *v3 = *(v4 - 184);
  return (*(v2 + 8 * ((61979 * (v1 > 0xCFC827DC)) ^ (v1 - 1066834344))))(a1);
}

uint64_t sub_100822FC4@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, int a9@<W8>)
{
  v23 = v13 + ((v9 ^ v17) ^ v11) * v12;
  v24 = *(v22 + 4 * (v23 - (((v23 * v14) >> 32) >> 6) * v15));
  v25 = ((a2 + (v24 ^ a1)) ^ ((v24 ^ a3) + a4) ^ ((v24 ^ a5) + a6)) + a7;
  *(v18 + 4 * v9) = v19 ^ v25 ^ v20 ^ a8 & (v25 >> 3);
  return (*(v16 + 8 * (((v10 == 0) * v21) ^ a9)))();
}

uint64_t sub_10082324C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = STACK[0x4D8] - 38901;
  LOWORD(STACK[0xB80]) = v8;
  return (*(a8 + 8 * (v9 ^ 0x12B3)))();
}

uint64_t sub_10082327C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t (*a22)(uint64_t))
{
  v25 = 1112314453 * ((((v24 - 144) | 0xBCBA2E5F) - ((v24 - 144) & 0xBCBA2E58)) ^ 0x53EC0486);
  *(v24 - 128) = v25 + a6 - 1270983480;
  *(v24 - 136) = v24 - 244;
  *(v24 - 144) = v25 + v22 + 3985;
  v26 = (*(v23 + 8 * (v22 ^ 0xDC6F)))(v24 - 144);
  return a22(v26);
}

uint64_t sub_100823368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(v5 + 8 * (a5 - 28074));
  LODWORD(STACK[0x380]) = 47179;
  return v6(a1, 0xAD22D5F321CF2B02);
}

uint64_t sub_10082354C()
{
  v1 = STACK[0x220];
  v2 = STACK[0x220] < 0xFF62156E;
  v3 = STACK[0x318] + 1471411447;
  v4 = STACK[0x318] + 6341;
  v5 = (v0 ^ 0xE9D5C711) + STACK[0x240];
  STACK[0x9E8] = v5 + 10;
  v6 = v5 + v3 - 0x776E1D61D84C9DC1;
  v7 = v6 < 0xFF62156E;
  v8 = v6 > v1;
  if (v2 == v7)
  {
    v7 = v8;
  }

  return (*(STACK[0x3A8] + 8 * ((7 * (v7 ^ 1)) ^ v4)))();
}

uint64_t sub_1008236CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, uint64_t a17, char a18)
{
  a15 = 0u;
  a16 = 0u;
  a17 = 0;
  a18 = 0;
  v20 = (*(v18 + 8 * (v19 ^ 0xDAD2)))();
  v21 = (*(v18 + 8 * (v19 + 46325)))(a12, &a15, 41, v20);
  return (*(v18 + 8 * (((v21 == 0) * ((921 * (v19 ^ 0x167F)) ^ 0x52A0)) ^ v19)))(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11);
}

uint64_t sub_1008237A8@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v4 = *v2;
  *(v3 + 64) = 0;
  *(v3 + 712) = 0x7D62A17D894032F8;
  return (*(a1 + 8 * (((v4 == 0) * ((a2 - 3538) ^ 0x5051 ^ ((a2 - 18038) | 0x805))) ^ a2)))();
}

uint64_t sub_100823A04()
{
  v4 = 1022166737 * ((((v3 - 144) | 0xFCD7853) + (~(v3 - 144) | 0xF03287AC)) ^ 0xB5DD99C0);
  *(v3 - 136) = 1497668682 - v4;
  *(v3 - 132) = v4 - 14252 + v0;
  *(v3 - 144) = v2;
  v5 = (*(v1 + 8 * (v0 ^ 0x7FFA)))(v3 - 144);
  return (*(v1 + 8 * (((*(v3 - 128) != 1497668682) * (v0 - 71000 + ((v0 - 29787) | 0x2004))) ^ v0)))(v5);
}

uint64_t sub_100823AD0()
{
  v7 = vdupq_n_s32(v2);
  v8 = vaddq_s32(v7, v4[100]);
  v9 = vaddq_s32(v7, v3[101]);
  v10 = vaddq_s32(v7, xmmword_100BC7620);
  v11 = vaddq_s32(v7, xmmword_100BC7630);
  v12 = vdupq_n_s32(0xEB7A10E7);
  v13 = veorq_s8(v11, v12);
  v14 = veorq_s8(v10, v12);
  v15 = veorq_s8(v9, v12);
  v16 = veorq_s8(v8, v12);
  v17.i64[0] = 0x1900000019;
  v17.i64[1] = 0x1900000019;
  v18 = vandq_s8(v11, v17);
  v19 = vandq_s8(v10, v17);
  v20 = vandq_s8(v9, v17);
  v21 = vandq_s8(v8, v17);
  v22 = vaddq_s32(v21, v21);
  v23 = vaddq_s32(v20, v20);
  v24 = vaddq_s32(v19, v19);
  v25 = vdupq_n_s32(0x4B0B1800u);
  v26 = vaddq_s32(v18, v18);
  v27 = vorrq_s8(v26, v25);
  v28 = vorrq_s8(v24, v25);
  v29 = vorrq_s8(v23, v25);
  v30 = vandq_s8(vorrq_s8(v22, v25), v16);
  v31 = vdupq_n_s32(0x48990802u);
  v32 = veorq_s8(vorrq_s8(v21, v31), v22);
  v33 = vdupq_n_s32(0x302103Cu);
  v34 = veorq_s8(veorq_s8(v32, v33), v30);
  v35 = veorq_s8(veorq_s8(veorq_s8(vorrq_s8(v20, v31), v23), v33), vandq_s8(v29, v15));
  v36 = veorq_s8(veorq_s8(veorq_s8(vorrq_s8(v19, v31), v24), v33), vandq_s8(v28, v14));
  v37 = veorq_s8(veorq_s8(veorq_s8(vorrq_s8(v18, v31), v26), v33), vandq_s8(v27, v13));
  v38 = vaddq_s32(v16, v16);
  v39 = vaddq_s32(v15, v15);
  v40 = vaddq_s32(v14, v14);
  v41 = vaddq_s32(v13, v13);
  v42 = vdupq_n_s32(0xDC3D287C);
  v43 = veorq_s8(v41, v42);
  v44 = vandq_s8(veorq_s8(v38, v42), v16);
  v45 = vandq_s8(veorq_s8(v39, v42), v15);
  v46 = vandq_s8(veorq_s8(v40, v42), v14);
  v47 = vdupq_n_s32(0x80003Eu);
  v48 = veorq_s8(vandq_s8(v43, v13), vandq_s8(v41, v47));
  v49 = veorq_s8(v46, vandq_s8(v40, v47));
  v50 = veorq_s8(v45, vandq_s8(v39, v47));
  v51 = veorq_s8(v44, vandq_s8(v38, v47));
  v52 = vdupq_n_s32(0x55075C94u);
  v53 = veorq_s8(vshlq_n_s32(v34, 2uLL), v52);
  v54 = veorq_s8(vshlq_n_s32(v35, 2uLL), v52);
  v55 = veorq_s8(vshlq_n_s32(v36, 2uLL), v52);
  v56 = veorq_s8(vshlq_n_s32(v37, 2uLL), v52);
  v57 = vdupq_n_s32(0x3060246Cu);
  v58 = vandq_s8(v51, v57);
  v59 = vandq_s8(v50, v57);
  v60 = vandq_s8(v49, v57);
  v61 = vandq_s8(v48, v57);
  v62 = vdupq_n_s32(0x4B1B183Eu);
  v63 = veorq_s8(v51, v62);
  v64 = veorq_s8(v50, v62);
  v65 = veorq_s8(v49, v62);
  v66 = veorq_s8(v48, v62);
  v67 = veorq_s8(veorq_s8(v34, v58), vandq_s8(v53, v63));
  v68 = veorq_s8(veorq_s8(v35, v59), vandq_s8(v54, v64));
  v69 = veorq_s8(veorq_s8(v36, v60), vandq_s8(v55, v65));
  v70 = veorq_s8(veorq_s8(v37, v61), vandq_s8(v56, v66));
  v71 = vdupq_n_s32(0x57075C9Cu);
  v72 = vandq_s8(veorq_s8(vshlq_n_s32(v48, 2uLL), v71), v66);
  v73 = vandq_s8(veorq_s8(vshlq_n_s32(v49, 2uLL), v71), v65);
  v74 = vandq_s8(veorq_s8(vshlq_n_s32(v50, 2uLL), v71), v64);
  v75 = vandq_s8(veorq_s8(vshlq_n_s32(v51, 2uLL), v71), v63);
  v76 = veorq_s8(v75, v58);
  v77 = veorq_s8(v74, v59);
  v78 = veorq_s8(v73, v60);
  v79 = veorq_s8(v72, v61);
  v80 = vdupq_n_s32(0x726B3D4Cu);
  v81 = veorq_s8(vshlq_n_s32(v67, 4uLL), v80);
  v82 = veorq_s8(vshlq_n_s32(v68, 4uLL), v80);
  v83 = veorq_s8(vshlq_n_s32(v69, 4uLL), v80);
  v84 = vdupq_n_s32(0x7B6B3C6Cu);
  v85 = veorq_s8(vshlq_n_s32(v70, 4uLL), v80);
  v86 = vandq_s8(v79, v84);
  v87 = vandq_s8(v78, v84);
  v88 = vandq_s8(v77, v84);
  v89 = vandq_s8(v76, v84);
  v90 = vdupq_n_s32(0x4B0B182Eu);
  v91 = veorq_s8(v76, v90);
  v92 = vbicq_s8(v75, vshlq_n_s32(v76, 4uLL));
  v76.i64[0] = 0x20000000200;
  v76.i64[1] = 0x20000000200;
  v93 = veorq_s8(veorq_s8(veorq_s8(v67, v89), vandq_s8(v92, v76)), vandq_s8(v81, v91));
  v94 = veorq_s8(veorq_s8(veorq_s8(v68, v88), vandq_s8(vbicq_s8(v74, vshlq_n_s32(v77, 4uLL)), v76)), vandq_s8(v82, veorq_s8(v77, v90)));
  v95 = veorq_s8(veorq_s8(veorq_s8(v69, v87), vandq_s8(vbicq_s8(v73, vshlq_n_s32(v78, 4uLL)), v76)), vandq_s8(v83, veorq_s8(v78, v90)));
  v96 = veorq_s8(veorq_s8(veorq_s8(v70, v86), vandq_s8(vbicq_s8(v72, vshlq_n_s32(v79, 4uLL)), v76)), vandq_s8(v85, veorq_s8(v79, v90)));
  v97 = vuzp1q_s8(vuzp1q_s16(veorq_s8(vaddq_s32(v94, v94), v9), veorq_s8(vaddq_s32(v93, v93), v8)), vuzp1q_s16(veorq_s8(vaddq_s32(v96, v96), v11), veorq_s8(vaddq_s32(v95, v95), v10)));
  v11.i64[0] = 0xFAFAFAFAFAFAFAFALL;
  v11.i64[1] = 0xFAFAFAFAFAFAFAFALL;
  *(&STACK[0x414] + v1) = veorq_s8(v97, v11);
  return (*(v6 + 8 * (((v0 == (((470 * (v5 ^ 0xB705u)) ^ 0xFFFFFFFFFFFF8328) & v0)) * (v5 - 46676)) ^ v5)))();
}

uint64_t sub_100823FC4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v11 = *(a1 + 8 * a7);
  STACK[0x590] = a4 & 0xFFFFFFF8;
  STACK[0x580] = a7 ^ 0x40Du;
  return v11(STACK[0x5A0], vdupq_n_s64(0xFFFFFFFFFFFFFFF8), vdupq_n_s64(0x38uLL), vdupq_n_s64(0xD6916AF990E79581), vdupq_n_s64(0x296E95066F186A7EuLL), vdupq_n_s64(v10), vdupq_n_s64(v7), vdupq_n_s64(v8), vdupq_n_s64(v9));
}

uint64_t sub_100824130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, _DWORD *a19)
{
  *a18 = STACK[0x4F0];
  *a19 = STACK[0x590];
  return (*(a8 + 8 * ((22006 * (v19 == 649265804)) ^ (v19 + 1201667547))))(a1, 4294921800, 4294946148, 25408, 407267742, 3887693757, 4294960501);
}

uint64_t sub_100824370()
{
  v1 = STACK[0x3A8];
  v2 = (*(STACK[0x3A8] + 8 * (v0 ^ 0x42CF)))(STACK[0x410]);
  return (*(v1 + 8 * ((506 * (STACK[0x708] == 0)) ^ (v0 + 16482))))(v2);
}

uint64_t sub_1008243BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v21 - 120) = (v19 + 25538) ^ (193924789 * ((((v21 - 136) | 0x223777A3) + (~(v21 - 136) | 0xDDC8885C)) ^ 0x948C45C4));
  *(v21 - 136) = &a17;
  *(v21 - 128) = v18;
  v22 = (*(v17 + 8 * (v19 ^ 0xF6AF)))(v21 - 136);
  return (*(v17 + 8 * ((23 * (v20 == ((2 * v19) ^ 0xFFFF009D) + ((v19 + 1262385311) & 0xB4C1CDE4))) ^ v19)))(v22);
}

uint64_t sub_10082447C(int a1, char a2, unsigned __int8 *a3, char a4, uint64_t a5, char a6, int a7, char a8)
{
  v23 = *a3;
  v24 = *(v22 - 176);
  LODWORD(STACK[0x1050]) = (v24 + 459853746) & 0xE497CAFD;
  v25 = v10 + (v23 ^ a4) + ((v23 << (v24 + 24)) & v16);
  v26 = a1 - (v19 + v17) + v14 + ((v9 + v15 + ((v9 + 1) ^ a7)) ^ v21);
  v27 = ((2 * (a1 ^ 0x6B0F27E7)) ^ 0xDCFF7F8C) & (a1 ^ 0x6B0F27E7) ^ (2 * (a1 ^ 0x6B0F27E7)) & 0xEE7FBFC6;
  v28 = 2 * (a1 & 0x85709821);
  v29 = (v27 ^ 0xC462184) & (4 * (v28 & (a1 ^ 0x616E17A5) ^ a1 & 0x85709821)) ^ v28 & (a1 ^ 0x616E17A5) ^ a1 & 0x85709821;
  v30 = ((4 * (v27 ^ 0x22008042)) ^ 0xB9FEFF18) & (v27 ^ 0x22008042) ^ (4 * (v27 ^ 0x22008042)) & 0xEE7FBFC0;
  v31 = (v30 ^ 0xA87EBF00) & (16 * v29) ^ v29;
  v32 = ((16 * (v30 ^ 0x460100C6)) ^ 0xE7FBFC60) & (v30 ^ 0x460100C6) ^ (16 * (v30 ^ 0x460100C6)) & 0xEE7FBFC0;
  v33 = v31 ^ 0xEE7FBFC6 ^ (v32 ^ 0xE67BBC00) & (v31 << 8);
  v34 = v19 + v17 + v21 + a7 - ((a7 + 1) ^ v15) - 544063087;
  v35 = a1 ^ (v34 - ((2 * v34 - 1434024) & 0xD0A8951E) + 1749637563) ^ (2 * ((v33 << 16) & 0x6E7F0000 ^ v33 ^ ((v33 << 16) ^ 0x3FC60000) & (((v32 ^ 0x8040386) << 8) & 0x6E7F0000 ^ (((v32 ^ 0x8040386) << 8) ^ 0x7FBF0000) & (v32 ^ 0x8040386) ^ 0x400000)));
  v36 = (a2 - 35);
  HIDWORD(v37) = v26 + 2085519236 + v36;
  LODWORD(v37) = HIDWORD(v37);
  v38 = ((v37 >> 24) ^ v9) + 2 * ((v37 >> 24) & v9);
  v39 = (a8 - 58);
  HIDWORD(v37) = v9 + v39 + v38 - 412003161 + (v35 ^ 0x6D57AD22);
  LODWORD(v37) = HIDWORD(v37);
  v40 = ((v37 >> 1) ^ a7) + 2 * ((v37 >> 1) & a7);
  v41 = (a6 - 84);
  HIDWORD(v37) = ((((v15 + 1) ^ v21) + v19) ^ v15) - (v17 + a1) + v38 + a7 + v41 + 1140170812 + v40;
  LODWORD(v37) = HIDWORD(v37);
  v42 = (v37 >> 10) + v15;
  v43 = ((2 * (a1 ^ 0x429AA634)) ^ 0x8FD47C2A) & (a1 ^ 0x429AA634) ^ (2 * (a1 ^ 0x429AA634)) & 0xC7EA3E14;
  v44 = (v43 ^ 0x7C02000) & (4 * (v28 & (a1 ^ 0x407A9634) ^ a1 & 0x85709821)) ^ v28 & (a1 ^ 0x407A9634) ^ a1 & 0x85709821;
  v45 = ((4 * (v43 ^ 0x402A0215)) ^ 0x1FA8F854) & (v43 ^ 0x402A0215) ^ (4 * (v43 ^ 0x402A0215)) & 0xC7EA3E14;
  v46 = (v45 ^ 0x7A83810) & (16 * v44) ^ v44;
  v47 = ((16 * (v45 ^ 0xC0420601)) ^ 0x7EA3E150) & (v45 ^ 0xC0420601) ^ (16 * (v45 ^ 0xC0420601)) & 0xC7EA3E10;
  v48 = v46 ^ 0xC7EA3E15 ^ (v47 ^ 0x46A22000) & (v46 << 8);
  HIDWORD(v37) = v11 + (v40 ^ (v17 + a1 - v21 + (v19 & ~v21) + 1693968606 + v38)) - (v37 >> 10) + 1841272867;
  LODWORD(v37) = HIDWORD(v37);
  v49 = (v37 >> 18) + v21;
  v50 = (v13 - 23);
  HIDWORD(v37) = v21 + v11 + 1475458628 + (v42 ^ ((a1 ^ v17 ^ ((a1 ^ 0x1B7D8C45) - 1643309978) ^ ((a1 ^ 0x7943FDE2) - 63740477) ^ ((a1 ^ 0x216EE987) - 1541508696) ^ ((a1 ^ 0x39DFFFFF) - 1129355296) ^ v19 ^ ((v17 ^ 0xFC54C4F1) + 601068622) ^ ((v17 ^ 0x93161AB2) + 1284590095) ^ ((v17 ^ 0xB1C5827F) + 1849873092) ^ ((v17 ^ 0xFEFFF37F) + 561554372) ^ 0xA5083763) - v19 - v38 + v40) ^ v49);
  LODWORD(v37) = HIDWORD(v37);
  v51 = (v37 >> 24) + v19;
  HIDWORD(v37) = v50 + ((v17 + v38 + (a1 ^ (v17 - ((2 * v17 + 1057923452) & 0x582529E4) - 1952848464) ^ (2 * ((v48 << 16) & 0x47EA0000 ^ v48 ^ ((v48 << 16) ^ 0x3E150000) & (((v47 ^ 0x81481E05) << 8) & 0x47EA0000 ^ 0x5C00000 ^ (((v47 ^ 0x81481E05) << 8) ^ 0x6A3E0000) & (v47 ^ 0x81481E05)))) ^ 0x55498F06) - v40 - 544780098) ^ (v42 - ((2 * v42) & 0xF541E374) - 90115654) ^ v49 ^ 0xFAA0F1BA) - (v37 >> 24) + 795850548;
  LODWORD(v37) = HIDWORD(v37);
  v52 = ((2 * (v17 - 544780099 + (v37 >> 1))) & 0x34F6034E ^ 0x4640004) + ((v17 - 544780099 + (v37 >> 1)) ^ 0x1849B1E5);
  v53 = v38 - (v40 ^ (v38 + 1)) + v42 - v49;
  v54 = v51 + v53 - 2 * (v51 & v53);
  HIDWORD(v37) = v17 + v36 + (v49 ^ (v40 - v38 + 2 * ((v38 & (a1 + 91265058)) - a1) - 182530115 + v42)) + v51 + 719401830 + v52;
  LODWORD(v37) = HIDWORD(v37);
  v55 = a1 - 2056218591 + (v37 >> 10);
  v56 = (v28 & 0x802042 | a1 & 0x85709821) ^ v28 & (a1 ^ 0x55F2F143);
  v57 = ((2 * (a1 ^ 0x55F2F143)) ^ 0xA104D2C4) & (a1 ^ 0x55F2F143) ^ (2 * (a1 ^ 0x55F2F143)) & 0xD0826962;
  v58 = (v57 ^ 0x40004822) & (4 * v56) ^ v56;
  v59 = ((4 * (v57 ^ 0x50822922)) ^ 0x4209A588) & (v57 ^ 0x50822922) ^ (4 * (v57 ^ 0x50822922)) & 0xD0826960;
  v60 = (v59 ^ 0x40002100) & (16 * v58) ^ v58;
  v61 = ((16 * (v59 ^ 0x90824862)) ^ 0x8269620) & (v59 ^ 0x90824862) ^ (16 * (v59 ^ 0x90824862)) & 0xD0826960;
  v62 = v60 ^ 0xD0826962 ^ (v61 ^ 0x20000) & (v60 << 8);
  v63 = v28 & (a1 ^ 0x917A1388) ^ a1 & 0x85709821;
  v64 = ((2 * (a1 ^ 0x99FA23CA)) ^ 0x391577D6) & (a1 ^ 0x99FA23CA) ^ (2 * (a1 ^ 0x99FA23CA)) & 0x1C8ABBEA;
  v65 = (v64 ^ 0x18002180) & (4 * v63) ^ v63;
  v66 = ((4 * (v64 ^ 0x48A8829)) ^ 0x722AEFAC) & (v64 ^ 0x48A8829) ^ (4 * (v64 ^ 0x48A8829)) & 0x1C8ABBE8;
  v67 = (v66 ^ 0x100AABA0) & (16 * v65) ^ v65;
  v68 = ((16 * (v66 ^ 0xC801043)) ^ 0xC8ABBEB0) & (v66 ^ 0xC801043) ^ (16 * (v66 ^ 0xC801043)) & 0x1C8ABBE0;
  v69 = v67 ^ 0x1C8ABBEB ^ (v68 ^ 0x88ABA00) & (v67 << 8);
  v70 = (v12 + ((v24 - 78) & 0xFD ^ 0x46));
  LODWORD(STACK[0x1008]) = v70;
  v71 = (v55 ^ (v52 + v54)) + v70;
  v72 = (a1 ^ (2 * ((v69 << 16) & 0x1C8A0000 ^ v69 ^ ((v69 << 16) ^ 0x3BEB0000) & (((v68 ^ 0x1400014B) << 8) & 0x1C8A0000 ^ 0x14000000 ^ (((v68 ^ 0x1400014B) << 8) ^ 0xABB0000) & (v68 ^ 0x1400014B)))) ^ 0x5A3C55DF ^ (v71 - ((2 * (v71 + 2052061532)) & 0xAE9B7450) + 1369289604)) + 2 * ((v71 + 2052061532) & (a1 ^ (2 * (((v62 << 16) ^ 0x69620000) & (((v61 ^ 0xD0806942) << 8) & 0xD0820000 ^ 0x50820000 ^ (((v61 ^ 0xD0806942) << 8) ^ 0x82690000) & (v61 ^ 0xD0806942)) ^ v62 ^ ((v62 << 16) & 0x50820000 | 0x4920))) ^ 0x2470D8A5));
  v73 = (v25 - 12);
  HIDWORD(v37) = v72;
  LODWORD(v37) = v72;
  v74 = (v37 >> 18) + v38;
  HIDWORD(v37) = v73 + v38 + 1927357691 + (v74 ^ (v55 + (v52 ^ (((v40 + 1) ^ v42 ^ 0xC527FE74 ^ (v49 - ((2 * v49) & 0x8A4FFCE8) - 987234700)) - (v40 + v51)))));
  LODWORD(v37) = HIDWORD(v37);
  v75 = (v37 >> 24) + v40;
  v76 = STACK[0x1048];
  HIDWORD(v37) = LODWORD(STACK[0x1048]) - v42 + ((v42 + 1) ^ v49 ^ 0x6172A79 ^ (v51 - ((2 * v51) & 0xC2E54F2) + 102181497)) + v52 - v55 + v74 - (v37 >> 24) + 260568218;
  LODWORD(v37) = HIDWORD(v37);
  v77 = (v37 >> 1) + v42;
  v78 = v74 + ((v51 - ((2 * v51) & 0x18238874) + 202490938) ^ v52 & ~v51 ^ 0xC11C43A ^ v55);
  HIDWORD(v37) = v20 + (v55 ^ ((v51 ^ ~v49 ^ v52) - v49)) - v74 + v75 - (v37 >> 1) + 1105471949;
  LODWORD(v37) = HIDWORD(v37);
  v79 = (v37 >> 10) + v49;
  v80 = (v77 ^ ((v75 ^ v78) + 2 * (v75 & v78))) - v79;
  LODWORD(STACK[0x1000]) = v41;
  HIDWORD(v37) = v49 + (v80 ^ v41) + 2 * (v80 & v41) + 1941960174;
  LODWORD(v37) = HIDWORD(v37);
  v81 = (v37 >> 18) + v51;
  HIDWORD(v37) = v51 + v36 - 2053264758 + v81 + (v79 ^ (v77 + (v75 ^ (v52 - (v55 ^ (v52 - 1)) + v74))));
  LODWORD(v37) = HIDWORD(v37);
  v82 = (v37 >> 24) + v52;
  LODWORD(STACK[0x1018]) = v81;
  HIDWORD(v37) = v39 + v52 + (((v74 ^ (2 * (v55 & 1) + (v55 ^ 1))) - v55 + v75) ^ v77 ^ 0xB9134A52 ^ (v79 - ((2 * v79) & 0x722694A4) - 1189918126)) - v81 - 58023289 + v82;
  LODWORD(v37) = HIDWORD(v37);
  v83 = (v37 >> 1) + v55;
  HIDWORD(v37) = v18 + v55 + (v82 ^ (~v74 - (v75 ^ v74 ^ v77) + v79 - v81)) + 1980519915 + v83;
  LODWORD(v37) = HIDWORD(v37);
  v84 = (v37 >> 10) + v74;
  v85 = STACK[0x1028];
  LODWORD(STACK[0x1010]) = LODWORD(STACK[0x1028]) + v74 + (v83 ^ (v82 + (v81 ^ ((v77 ^ (v75 + 1)) + v75 + v79))));
  v86 = (v18 ^ v8 ^ 0x7C4F6D42) + (v76 & 0x38) - 2 * (v76 & 0x38);
  v87 = (v8 & 0x5AA0BD81 | 0xA55F4266) ^ v76;
  v88 = LODWORD(STACK[0x1020]) + (v8 ^ 0xCA52EC35) + (v87 ^ 0x2784CBC1) + (v86 & 0x84C6F7F) + 2;
  v89 = v20 + (v8 ^ 0xD35A1BB0) + (v87 ^ 0x600EA291) + (v86 ^ 0xE2EB246) + (v88 ^ 0xE804235) + 1;
  v90 = (v87 ^ 0x1EF6AE56) + (v85 ^ v8 ^ 0x695FDB6A) - (v86 & 0x70030128) + (v88 & 0x5522CE4C) + (v89 ^ 0xABF46D3C);
  v91 = v90 & 0x797E0F6A ^ ((v86 ^ (v11 + (v8 ^ 0xB0C4D86D) + (v87 ^ 0x240A7E5) - 2 * (v87 ^ 0x240A7E5) + 1) ^ v88 ^ 0xC1462E4) - (v89 ^ 0xCF7A932F));
  v92 = (v86 ^ ((v8 ^ v73 ^ 0xD0355281) + (v87 ^ 0x45D053F6)) ^ 0x364B537F) + (v88 ^ 0x1F5BF557);
  v93 = (v91 ^ 0x6CAF723A) + (v90 ^ 0x477081BA ^ (LODWORD(STACK[0x1038]) + (v8 ^ 0x8493AE03) + (v87 ^ 0x7F319AE3) + (v86 & 0x584E40E8) + (v88 & 0x540ED568) - v89 + 1226263284 + ((2 * v89) & 0x6DD16A18)));
  v94 = (v91 ^ 0x5DEDC606 ^ ((v92 ^ v89 & 0x23ACCD8E) - (v90 ^ 0x9A08C8B0))) + (v93 ^ 0x8CAC7ED4) + 2 * (((v92 ^ v89 & 0x23ACCD8E) - (v90 ^ 0x9A08C8B0)) & (v91 ^ 0x5DEDC606));
  v95 = (v8 ^ 0x9C96923A) + (v87 ^ 0x4EF4E47E) + v39 + (v86 ^ 0x3220355B);
  v96 = v93 ^ v91 ^ ((v89 ^ ((((v8 ^ 0x448B2764) + ((v8 & 0x81 | 0x66) ^ v76 ^ 0x256D7005) + (LODWORD(STACK[0x1030]) - 7) + 2) ^ v86 & 0x104B4DE4) - (v88 ^ 0x7DE84A05)) ^ 0xCB59405B) + (v90 ^ 0xDC4CC3BF)) ^ v94;
  HIDWORD(v37) = v96 ^ 0xD7DCB718;
  LODWORD(v37) = v96 ^ 0xD7DCB718;
  v97 = v37 >> 15;
  HIDWORD(v37) = v97 ^ 0xF8A70;
  LODWORD(v37) = v97 ^ 0x7CE00000;
  v98 = v37 >> 20;
  v99 = (v8 ^ 0x42DA5ACB) + (v87 ^ 0x3FACE902) + (v86 ^ 0x34FC30C6) + v36 + (v88 ^ 0x635CEB4A);
  v100 = (v90 & 0x52330F64 ^ ((v8 ^ 0x4D3BC88C) + (v87 ^ 0x3A6DD9AE) + (v86 ^ 0x9E3D031E) + (v88 ^ 0x9F432550) + v50 + (v89 & 0xD0160FA) + 1) ^ v91 ^ 0xE31F0E65) + (v93 ^ 0x9728A4B8) - (v94 & 0x276E6BEC) + (v96 ^ 0x1D3CEC59);
  v101 = v96 ^ 0x65E8FB1A;
  v102 = __PAIR64__(v37 >> 20, __ROR4__(__ROR4__(__ROR4__(v89 ^ (v99 + 1) ^ 0x4FA3909C, 11) ^ 0x8B0AEBC7, 3) ^ 0xCF0ECA58, 18));
  v103 = ((2 * v91) & 0x4DE4B690) - v91 + (v93 ^ 0x515B25F3) + (v90 ^ v102 ^ 0x628DBFDB) + (v94 ^ 0x1E13477A) + (v100 ^ 0xA2795AC2);
  LODWORD(v102) = v98;
  v104 = (v93 & 0x27C02A4F) - (v91 & 0x9FE66FAA) + (v90 ^ ((v88 ^ (v95 + 3) ^ 0xF87FACDC) - (v89 ^ 0xF592EBA3)) ^ 0xEC05ECA5) + (v94 ^ 0x12573928) - ((v96 ^ 0x65E8FB1A) & 0xF5487605) + (v100 ^ 0x63A6D38) + 2;
  v105 = v103 - (v102 >> 29) + (v104 ^ 0xFEC45361) + 1494066361;
  v106 = (v104 & 0xD7B35358) + (v100 ^ ((v96 ^ 0xC282D4F5) + (v94 ^ v93 ^ ((v90 ^ 0x2B2BF6E ^ ((v8 ^ 0xFE34CD08) + (v87 & 3 ^ 0xFFFFFFFD) + (v86 ^ 0xA69A0750) + (v88 ^ 0xC5A688F1) + (v89 ^ 0xBBC8369A) + (LODWORD(STACK[0x1040]) - 88) + 1)) + (v91 ^ 0x16CA4B28)) ^ 0x82BF9679)) ^ 0xFEE1E398) + (v105 ^ 0xEC7A6171);
  HIDWORD(v102) = v88 ^ 0x1B0;
  LODWORD(v102) = v88 ^ 0x97DBF800;
  HIDWORD(v102) = v102 >> 9;
  LODWORD(v102) = HIDWORD(v102);
  v107 = (v8 ^ 0xF66BDB0A) - (v76 & 0x26) + (v86 & 0x744768BC) + (v88 ^ 0x9507763E) + v89 - ((2 * v89) & 0xDB16EA38) + (v90 & 0x5F2BC993) + (v91 ^ 0xE2620287) + LODWORD(STACK[0x1000]) + (v93 ^ 0x4C5B948F) + (v94 ^ 0xE5C3DA64) + (v96 ^ 0x63DD978C) + (v100 ^ 0x82157B52) + (v104 ^ 0x1F5E4296) + (v105 & 0xAD38B5D5) - 309627617 + (v106 ^ 0xDF0888D4);
  v108 = (v104 ^ ((v96 ^ 0xA266D755 ^ ((v91 ^ 0xCBD6F667) + (v89 & 0x114A0250 ^ v90 ^ 0x24253DF9 ^ ((v86 ^ 0x62363D06) - (v8 ^ 0x80CA1A7F) + (v87 ^ 0x2EE9E20B) - (v102 >> 23) + LODWORD(STACK[0x1008]) + 1)) + (v93 ^ 0x68B9AF5C) + (v94 ^ 0x5AE7D646) + 2)) - (v100 ^ 0x75B53AF2)) ^ 0xD3353330) + (v105 & 0x6A03CB38) + (v106 ^ 0x31740963) + (v107 & 0x9CB22BF5);
  v109 = (v88 ^ 0x776ACAD5) + (v87 ^ 0xDC45E234 ^ v86) + (v89 ^ 0x37A4E5C5);
  v110 = (v100 & 0xC917E976) + (v96 ^ 0xBACE429 ^ ((v8 ^ v87 ^ 0xEB723FBA ^ v86 & 0x44E69A6) + (v88 ^ 0xACA5E518) + (v89 ^ 0x3AB3E6BE) + (v90 ^ 0x82A90701) + (v91 ^ 0x70C06B2) + (v93 ^ 0x74D9DAB9) + (v94 ^ 0x78ADEDBA) + 3));
  v111 = v110 & 0x10000;
  v112 = v110 & 0xFFFEFFFF;
  if ((v111 & v104) != 0)
  {
    v111 = -v111;
  }

  HIDWORD(v114) = v107;
  LODWORD(v114) = v107;
  v113 = v114 >> 29;
  v115 = (v105 ^ 0xFF136F61) + (v112 ^ 0xEE6BFFFC ^ (v111 + v104));
  HIDWORD(v114) = v113 ^ 0x7C;
  LODWORD(v114) = v113 ^ 0x3EBE000;
  v116 = v114 >> 12;
  v117 = v115 + (v106 ^ 0xA72DEAFA);
  v118 = v100 ^ (v86 + (v88 ^ 0x21946F36) + (v89 ^ 0x9AB4CC06) + (v90 ^ 0xAB86EC52) - v91 + ((2 * v91) & 0xF555724E) - (v93 & 0x6E7C1854) + (v94 ^ 0x61F2213C) + v101 - ((2 * v101) & 0x90D467E4) - 843089204) ^ v104 ^ 0x165F4C6F;
  v119 = v108 + 1;
  v120 = (v105 & 0xABD6C0E2 ^ ((v90 ^ v109 ^ 0xBC5584CF) + (v91 ^ 0xCCBC3A2C) + (v93 ^ 0x607C22E3) + (v94 ^ 0xC114B11C) + (v96 ^ 0x145E75AF) - (v100 & 0xF923E2AC) + (v104 ^ 0xD8BBE490) + 3)) + (v106 ^ 0xCE58743) + (v107 ^ 0x5561A4F5) + ((v108 + 1) & 0x1DA60B54);
  v121 = (v88 ^ 0x92952F1C ^ v89) + (v90 ^ 0x35C7B7E0) + (v91 ^ 0x892A7B99) + (v93 ^ 0xCBB27C44) + 3;
  v122 = __PAIR64__(v114 >> 12, __ROR4__(__ROR4__(__ROR4__(v94 ^ 0x6981C513, 4) ^ 0x8D329C61, 19) ^ 0x8B108088, 9));
  v123 = ((v100 ^ 0x1D91C5FB) + (v96 ^ 0x5E37E9C7) + ((v121 - ((2 * v121) & 0xF3899AC) + 127683798) ^ v122 ^ 0x66E0149A)) ^ v104 & 0xD750892B;
  LODWORD(v122) = v116;
  v124 = v118 + (v105 ^ 0xE700AFC6) + (v106 ^ 0xC227EF09) + (v119 ^ 0xB0BA57C0) - (v122 >> 23);
  LODWORD(STACK[0x1008]) = v123 - (v105 & 0x1FEB62D2) + (v106 ^ 0xFC6DC6F) + (v107 & 0x62A59430);
  v125 = (v94 ^ 0x91018789) + (v93 ^ v91 ^ 0xD6999518);
  v126 = ((v106 ^ 0xB18F31A7) + (v105 & 0xC482683F ^ ((v100 & 0x787CC110 ^ ((v89 ^ v90 ^ 0x2E24E926 ^ v91) + (v93 ^ 0xEDC8F8EB) + (v94 ^ 0x5B454E21) + (v96 ^ 0xCD9AB105) + 2)) - (v104 ^ 0xE5AB2316)))) ^ v107;
  v127 = ((v90 + (v91 ^ 0xC5B4843C) + (v93 ^ 0x5DF8DA9F) + (v94 ^ 0xA88501A4) + (v96 ^ 0x137246F3) - (v101 | 0x769ABDE9) + (v100 ^ 0x10E9369A) + (v104 & 0x965AF4EE) + 2) ^ 0xA48D38F ^ v105) - (v106 ^ 0xE309C402);
  v128 = ((2 * ((v126 ^ 0x27691411) & (v119 ^ 0x22649CB9) ^ v126 & 0x2C0792)) ^ 0x500820) + (v119 ^ v126 ^ 0x5218F3A);
  HIDWORD(v122) = LODWORD(STACK[0x1010]) - 1604715120 + v84;
  LODWORD(v122) = HIDWORD(v122);
  v129 = (v122 >> 18) + v75;
  v130 = (v119 & 0x401F8B54) + 2 * (v127 & (v107 ^ 0x5B02CFF3)) + (v107 ^ 0x1C21A46C ^ (v127 - ((2 * v127) & 0x8E46D73E) - 953980001));
  v131 = (v100 ^ 0xA4440731 ^ ((v96 ^ 0x9E38E433 ^ (v93 - (v94 & 0x1CA9E384))) + 2 * ((v93 - (v94 & 0x1CA9E384)) & (v96 ^ 0x1E38E433)))) + (v104 ^ 0x4431CF40) - (v105 & 0x78F47706) + (v106 ^ 0x4E7CE49B) + (v107 ^ 0xEDBEAAE8);
  v132 = (((v106 ^ 0xA8E04423) + (v105 & 0x55F876EF ^ ((v100 & 0xBF0A61C2) + (v96 ^ 0xD59C0215 ^ v125) + (v104 ^ 0x9F35EA93) + 1))) ^ v107 ^ 0x8BF620E1) + 963716599 + (v119 ^ 0xB905C453);
  LODWORD(STACK[0x1040]) = v132;
  v133 = (((v100 ^ 0x2437EDE5) + v101) ^ v104 & 0x61189F7D ^ 0x16919B53 ^ v105) + (v106 ^ 0xE6D506CB) + (v107 ^ 0xBE22DCF8) + (v119 ^ 0xE6F83F9E);
  v134 = v119 & 0xB7E05B43;
  v135 = v119;
  v136 = (v105 ^ 0xADA89242) + v104;
  v137 = (v105 ^ ((v104 ^ 0xE6216049) + v100) ^ 0xD6C545D1) + (v106 ^ 0x5FC81718) + (v107 ^ 0x24809EFF) + (v119 ^ 0xE574F4E6);
  LODWORD(STACK[0x1020]) = v137;
  v138 = (v106 ^ ((v100 ^ ((v96 ^ 0xB048032) + v94) ^ 0x4C193359) + (v104 & 0xB9EF3E31) - v105 - 1476846599 + ((2 * v105) & 0xB00DC80E)) ^ v107 ^ 0x7CF8922D) - v134;
  LODWORD(STACK[0x1028]) = v138;
  LODWORD(STACK[0x1038]) = (v107 ^ 0x9C7E3FD) + v106;
  v139 = v129 + v128;
  v140 = v128;
  HIDWORD(v122) = v75 - v77 + (v79 ^ v77) + LODWORD(STACK[0x1018]) - v82 + v83 - v84 - 698009567 + v129 + v128;
  LODWORD(v122) = HIDWORD(v122);
  v141 = v106 ^ v136;
  v142 = ((v122 >> 17) ^ v77) + 2 * ((v122 >> 17) & v77);
  HIDWORD(v122) = v130 + v77 + (v129 ^ ((LODWORD(STACK[0x1018]) ^ (v79 - 1)) - v79 + v82 - v83 - v84)) - v142 - 412003161;
  LODWORD(v122) = HIDWORD(v122);
  v143 = (v122 >> 16) + v79;
  LODWORD(v122) = __ROR4__(((((v82 ^ LODWORD(STACK[0x1018])) + v83 + 1) ^ LODWORD(STACK[0x1018])) - v84 - v129 + v142) ^ 0x8FC8489A ^ v143, 30) ^ 0x3F21226A;
  HIDWORD(v122) = v122;
  v144 = v137 - 1460827877;
  v145 = v79 + v137 - 1460827877 + (v122 >> 2);
  v146 = v129 ^ (v82 - (v83 ^ (v82 - 1)) + v84) ^ v142;
  HIDWORD(v122) = v145;
  LODWORD(v122) = v145;
  v147 = (v122 >> 14) + LODWORD(STACK[0x1018]);
  v148 = (v131 + 2) ^ v135 ^ 0x65A1AAA1;
  v149 = v143 + v142 + v84 - (v129 ^ (v84 - 1));
  HIDWORD(v122) = v148 + 2 * (v143 & v146) + (v146 ^ 0xCA52BD2A ^ (v143 - ((2 * v143) & 0x94A57A54) - 900547286)) - (v122 >> 14) + 1841272867;
  LODWORD(v122) = HIDWORD(v122);
  v150 = ((v122 >> 12) ^ v82) + 2 * ((v122 >> 12) & v82);
  HIDWORD(v122) = v130 + v82 + 1475458628 + (v150 ^ (((v129 + (v83 ^ ~v84)) ^ v83) - v142 - v143 + v147));
  LODWORD(v122) = HIDWORD(v122);
  v151 = (v122 >> 17) + v83;
  LODWORD(STACK[0x1048]) = v120 + 262412482;
  HIDWORD(v122) = v120 + 262412482 + v149 - 2 * (v147 & v149) + v150 + v147 - (v122 >> 17) + 533438067;
  LODWORD(v122) = HIDWORD(v122);
  v152 = v107 ^ (v117 + 1) ^ 0x8229518 ^ v135;
  v153 = (v122 >> 16) + v84;
  HIDWORD(v122) = v152 + v84 + 1264181929 + (v153 ^ (((v143 - (v142 & ~v129)) ^ v129) - (v150 + v147) + v151));
  LODWORD(v122) = HIDWORD(v122);
  v154 = (v141 ^ 0x18C89C1D) - (v107 ^ 0xC67F40EC);
  v155 = (v122 >> 14) + v129;
  HIDWORD(v122) = v139 + (v153 ^ ((v143 ^ ~v147) - (v151 + v150))) + 2052061532 + v155;
  LODWORD(v122) = HIDWORD(v122);
  v156 = (v122 >> 12) + v142;
  HIDWORD(v122) = v132 - v143 + (v147 ^ (v143 + 1)) + v151 + v150 - v153 + v155 - (v122 >> 12) + 963641092;
  LODWORD(v122) = HIDWORD(v122);
  v157 = (v122 >> 17) + v143;
  v158 = (v157 ^ ((v150 ^ ~v151) - v153 - v155 - v156)) + v130;
  LODWORD(STACK[0x1030]) = v130;
  v159 = v133 + 2;
  HIDWORD(v122) = (v158 ^ 0xF87F49A) + v143 + ((2 * v158) & 0x1F0FE934);
  LODWORD(v122) = HIDWORD(v122);
  v160 = (v122 >> 16) + v147;
  v161 = (v160 ^ (((v150 + 1) ^ v151 ^ 0x8A6D226C ^ (v153 - ((2 * v153) & 0x14DA44D8) - 1972559252)) - (v150 + v155) + v156 - v157)) + v133 + 2;
  HIDWORD(v122) = (v161 ^ 0x41E429CD) + v147 + ((2 * v161) & 0x83C8539A);
  LODWORD(v122) = HIDWORD(v122);
  v162 = v107 + 464461324 + (v135 ^ 0x9889A608);
  v163 = (v122 >> 14) + v150;
  HIDWORD(v122) = v152 + v150 + 1941960174 + (v163 ^ (v160 + (v157 ^ (((v155 - (v153 ^ (v151 + 1))) ^ v151) - v156))));
  LODWORD(v122) = HIDWORD(v122);
  v164 = (v122 >> 12) + v151;
  HIDWORD(v122) = v140 + (v163 ^ ((v157 ^ ((v156 ^ v155 ^ ~v153) - v153)) - v160)) - (v122 >> 12) - 2053264758;
  LODWORD(v122) = HIDWORD(v122);
  v165 = (v122 >> 17) + v153;
  HIDWORD(v122) = v162 + v153 + (v160 ^ ((v156 ^ v155 ^ ~v157) + v155)) + v164 + v163 - 522484613 + v165;
  LODWORD(v122) = HIDWORD(v122);
  v166 = (v122 >> 16) + v155;
  v167 = v157 - v164 + ((v157 - 1) ^ v160 ^ 0x68761D72 ^ (v163 - ((2 * v163) & 0xD0EC3AE4) + 1752571250));
  HIDWORD(v122) = v130 + (v165 ^ (v157 - 2 * (v157 & v156) + v160 - (v164 + v163) + 1)) - (v122 >> 16) + 1980519915;
  LODWORD(v122) = HIDWORD(v122);
  v168 = (LODWORD(STACK[0x1008]) + 1) ^ v135 ^ 0xC7E6B8FD;
  v169 = (v122 >> 14) + v156;
  HIDWORD(v122) = v169 + v166 + v168 + v156 + (v165 ^ v167) + 2 * (v165 & v167) - 1604715120;
  LODWORD(v122) = HIDWORD(v122);
  v170 = (v122 >> 12) + v157;
  v171 = v124 + 2112047893;
  HIDWORD(v122) = v124 + 2112047893 - v160 - v165 + ((v160 - 1) ^ v163 ^ 0x107FB929 ^ (v164 - ((2 * v164) & 0x20FF7252) + 276805929)) - v166 - v169 - (v122 >> 12) + 1484909837;
  LODWORD(v122) = HIDWORD(v122);
  v172 = (v122 >> 12) + v160;
  v173 = v120 + 1;
  v174 = (v172 ^ ((v169 ^ ((v164 ^ (v163 + 1)) + v163 + v165 - v166)) - v170)) + v120 + 1;
  HIDWORD(v122) = (v174 ^ 0xE77154A7) + v160 + ((2 * v174) & 0xCEE2A94E);
  LODWORD(v122) = HIDWORD(v122);
  v175 = (v122 >> 21) + v163;
  LODWORD(v122) = __ROR4__(__ROR4__(v138 + v163 + v172 + (((v165 ^ (v164 + 1)) - v164 + v166) ^ v169 ^ 0x866560C6 ^ (v170 - ((2 * v170) & 0xCCAC18C) - 2040176442)) - 1460827878 + v175, 22) ^ 0x21D38CE5, 11) ^ 0x9CA43A71;
  HIDWORD(v122) = v122;
  v176 = (v122 >> 21) + v164;
  v177 = v124 + 1841272869;
  HIDWORD(v122) = v164 + v124 + 1841272869 + ((v172 + (v170 ^ ((v166 ^ v165) - v165 + v169 + 1))) ^ v175 ^ 0x6DEF4964 ^ (v176 - ((2 * v176) & 0xDBDE92C8) + 1844398436));
  LODWORD(v122) = HIDWORD(v122);
  v178 = (v122 >> 29) + v165;
  HIDWORD(v122) = v148 - v166 + (v169 ^ (v166 + 1)) + v170 - v172 + v175 + v176 - (v122 >> 29) + 1475458628;
  LODWORD(v122) = HIDWORD(v122);
  v179 = (v122 >> 12) + v166;
  v180 = v159 + (v176 ^ (v172 - (v169 + (v170 ^ (2 * (v169 & 1) + (v169 ^ 1)))) - v175)) + 795850548 + v179 + v178;
  HIDWORD(v122) = (v180 ^ v166) + 2 * (v180 & v166);
  LODWORD(v122) = HIDWORD(v122);
  v181 = (v122 >> 21) + v169;
  HIDWORD(v122) = (v154 ^ 0x9FE7EB08 ^ v135) + ((v170 - ((2 * v170) & 0xAC6D6D9C) + 1446426318) ^ v172 & (v170 + 1) ^ 0x5636B6CE ^ v175) + v176 + v178 - v179 - (v122 >> 21) + 1264181929;
  LODWORD(v122) = HIDWORD(v122);
  v182 = (v122 >> 22) + v170;
  v183 = (2 * v176) & 0xC552CD0C ^ (v176 + 439944593);
  HIDWORD(v122) = v148 + v170 + 2052061532 + (v182 ^ ((v176 ^ v175 ^ (v172 - 1) ^ (v172 - ((2 * v172) & 0xE628237E) - 216788545) ^ 0xF31411BF) - (v179 + v178) - v181));
  LODWORD(v122) = HIDWORD(v122);
  v184 = (v122 >> 29) + v172;
  v185 = v183 ^ v178 ^ 0xC0186AA2 ^ (v179 - ((2 * v179) & 0x8030D544) - 1072141662);
  HIDWORD(v122) = v148 + v172 + v184 + (((v176 ^ v175 ^ ~v178) - v175) ^ v179 ^ v181 ^ 0xF6AED321 ^ (v182 - ((2 * v182) & 0xED5DA642) - 156314847)) + 1927357691;
  LODWORD(v122) = HIDWORD(v122);
  v186 = v122 >> 12;
  v187 = v186 + v175;
  HIDWORD(v122) = LODWORD(STACK[0x1020]) - v186 + ((v185 + v183 + ~(2 * v185)) ^ v181 ^ v182 ^ 0xC00EBC14 ^ (v184 - ((2 * v184) & 0x801D7828) - 1072776172)) + 260568219;
  LODWORD(v122) = HIDWORD(v122);
  v188 = (v122 >> 21) + v183;
  v189 = v140 + v188 + ((((v181 - (v179 ^ (v178 + 1))) ^ v178) - v182) ^ v184 ^ 0x5F444699 ^ (v187 - ((2 * v187) & 0xBE888D32) + 1598310041)) + 1105471949;
  HIDWORD(v122) = (v189 ^ v183) + 2 * (v189 & v183);
  LODWORD(v122) = HIDWORD(v122);
  v190 = (v122 >> 22) + v178;
  v191 = v190 ^ ((v181 ^ (v179 - 1)) + v179 + v182 + v184 - v187 + v188);
  HIDWORD(v122) = ((v140 - ((2 * (v140 + 1941960174)) & 0x2E783100) + 184290926) ^ 0x973C1880 ^ v191) + (v178 ^ 0x4314A2B2) + 2 * (v191 & (v140 + 1941960174));
  LODWORD(v122) = HIDWORD(v122);
  v192 = (v122 >> 29) + v179;
  HIDWORD(v122) = v179 + LODWORD(STACK[0x1020]) - 2053264757 + (v188 ^ (((v184 - (v182 ^ (v181 - 1))) ^ v181) - v187)) - v190 + v192;
  LODWORD(v122) = HIDWORD(v122);
  v193 = (v122 >> 12) + v181;
  HIDWORD(v122) = v148 + (v192 ^ (v190 + (v182 ^ (v187 - (v184 & ~v182)) ^ 0x1E32F089 ^ (v188 - ((2 * v188) & 0x3C65E112) + 506654857)))) - (v122 >> 12) - 58023289;
  LODWORD(v122) = HIDWORD(v122);
  v194 = (v122 >> 21) + v182;
  HIDWORD(v122) = v171 + v182 - 131527976 + (v194 ^ ((v190 ^ ((v187 ^ v184) + v184 + v188 + 1)) - v192 + v193));
  LODWORD(v122) = HIDWORD(v122);
  v195 = (v122 >> 22) + v184;
  HIDWORD(v122) = v171 + v187 + ((v187 - 1) ^ v188 ^ 0x4A68AAE ^ (v190 - ((2 * v190) & 0x94D155C) + 78023342)) + v192 + v193 + v194 - (v122 >> 22) + 578204285;
  LODWORD(v122) = HIDWORD(v122);
  v196 = (v122 >> 29) + v187;
  v197 = LODWORD(STACK[0x1038]) ^ 0xB5BAE08B ^ v135;
  v198 = v197 + ((v192 + (v190 ^ (v188 + 1))) ^ v188) - v193 + v194 + v195 - v196 - 698009568;
  HIDWORD(v122) = (v198 ^ v187) + 2 * (v198 & v187);
  LODWORD(v122) = HIDWORD(v122);
  v199 = (v122 >> 15) + v188;
  HIDWORD(v122) = v188 - 412003161 + v140 - v190 + (v192 ^ (v190 - 1)) + v193 - v194 + v195 + v196 + v199;
  LODWORD(v122) = HIDWORD(v122);
  v200 = (v122 >> 8) + v190;
  HIDWORD(v122) = v190 + v144 - v196 + (v192 ^ (v192 + 1) ^ v193 ^ v194 ^ 0x959B3206 ^ (v195 - ((2 * v195) & 0x2B36640C) - 1784991226)) + v199 + v200;
  LODWORD(v122) = HIDWORD(v122);
  v201 = (v122 >> 23) + v192;
  HIDWORD(v122) = v192 + v177 + (v201 ^ (v196 + ((v195 + (v194 ^ (v193 + 1))) ^ v193) - v199 + v200));
  LODWORD(v122) = HIDWORD(v122);
  v202 = (v122 >> 5) + v193;
  v203 = v201 - v202 + 1059767288;
  HIDWORD(v122) = v203 + v168 + v193 + (v200 ^ (v196 - (v194 + (v195 ^ (v194 - 1))) + v199 + 1938975699)) + 1475458628;
  LODWORD(v122) = HIDWORD(v122);
  v204 = (v122 >> 15) + v194;
  v205 = v203 + ((v200 + ((v199 + 1938975699) ^ (v196 + 1))) ^ v196);
  HIDWORD(v122) = v135 + v194 + 795850548 + ((v201 + ((((v195 + 1) ^ v196 ^ 0x765C9F25 ^ (v199 - ((2 * (v199 + 1938975699)) & 0xECB93E4A) - 370210056)) + v195) ^ v200)) ^ (v202 - 1059767288) ^ 0x8DFC47C7 ^ (v204 - ((2 * v204) & 0x1BF88F8E) - 1912846393));
  LODWORD(v122) = HIDWORD(v122);
  v206 = (v122 >> 8) + v195;
  HIDWORD(v122) = v197 + (v204 ^ v205) - (v122 >> 8) + 1264181929;
  LODWORD(v122) = HIDWORD(v122);
  v207 = (v122 >> 23) + v196;
  HIDWORD(v122) = v162 + v196 + 1587600208 + (v207 ^ (((v201 - ((v200 ^ (v199 + 1938975698)) + v199) - v202 - 879208411) ^ v204) - v206));
  LODWORD(v122) = HIDWORD(v122);
  v208 = (v122 >> 5) + v199 + 1938975699;
  HIDWORD(v122) = LODWORD(STACK[0x1030]) + v199 + 1938975699 - v200 - (v201 ^ v200) + v202 + v204 - (v207 + v206) + v208 - 2 * v208 + 867590402;
  LODWORD(v122) = HIDWORD(v122);
  v209 = (v122 >> 15) + v200;
  v210 = v209 + v173 + ((v206 + (v201 ^ (v202 - 1059767288) & (v201 + 1) ^ 0x253F12ED ^ (v204 - ((2 * v204) & 0x4A7E25DA) + 624890605))) ^ v207 ^ 0x7E88CA07 ^ (v208 - ((2 * v208) & 0xFD11940E) + 2122893831));
  HIDWORD(v122) = (v210 ^ v200) + 2 * (v210 & v200) + 260568218;
  LODWORD(v122) = HIDWORD(v122);
  v211 = (v122 >> 8) + v201;
  v212 = v135 + (v208 ^ (v202 - 1059767288 + ((v202 - 1059767288) ^ v204) + v207 + v206 + 1)) + v209 - v211 + 1105471949;
  HIDWORD(v122) = (v212 ^ v201) + 2 * (v212 & v201);
  LODWORD(v122) = HIDWORD(v122);
  v213 = LODWORD(STACK[0x1028]) + (v209 ^ (((v204 + 1) ^ v206 ^ 0x4F3C1009 ^ (v207 - ((2 * v207) & 0x9E782012) + 1329336329)) - v204 + v208)) - v211 - (v122 >> 23) + 1941960174;
  *(v22 - 208) += v209;
  *(v22 - 216) = ((v204 + (v213 << 27) + (v213 >> 5)) ^ *(v22 - 216)) + 2 * ((v204 + (v213 << 27) + (v213 >> 5)) & *(v22 - 216));
  v214 = (LODWORD(STACK[0x1058]) | *(v22 - 256)) == 0;
  *(v22 - 192) += (v122 >> 23) + v202 - 1059767288;
  *(v22 - 200) += v211;
  return (*(*(v22 - 144) + 8 * ((3425 * v214) ^ *(v22 - 176))))();
}

uint64_t sub_10082771C()
{
  LODWORD(STACK[0x664]) = v3;
  LODWORD(STACK[0x57C]) = v1;
  v5 = ((v2 - 11173) | 0x1162) + 982256889 + (((v0 ^ 0xDF096BFF) + 553030657) ^ ((v0 ^ 0x8404A016) + 2080071658) ^ (((((v2 - 11100) | 0x604) - 1294465373) ^ v0) + 1294463752));
  v6 = v5 < 0x50B65752;
  v7 = v3 + 259903391 < v5;
  if ((v3 + 259903391) < 0x50B65752 != v6)
  {
    v7 = v6;
  }

  return (*(v4 + 8 * ((26 * !v7) ^ v2)))();
}

uint64_t sub_100827858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, int a6@<W8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, int a41, uint64_t a42, uint64_t a43, int a44)
{
  HIDWORD(a18) = a6;
  LODWORD(a19) = v44;
  *(v50 - 232) = (a41 - 1497668682);
  *(v50 - 240) = (a41 - 1497668681);
  v51 = *(v49 + 8 * a44);
  *(v50 - 172) = a3;
  HIDWORD(a15) = v47;
  return v51(a1, v47 ^ ((((a41 - a3) | (a3 - a41)) < 0) * a4), v51, a2, (a44 ^ v46) * a1, a3, a4, a5, a7, a8, a9, a10, a11, a12, a13, a14, a15, v45, v48, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t sub_100827AA0()
{
  *(v1 - 224) = (v0 - 28073) ^ 0x3DFC;
  v2 = *(v1 - 216);
  v3 = (*(v2 + 8 * (v0 + 13138)))(1032);
  STACK[0x4B8] = 0;
  LODWORD(STACK[0x48C]) = 0;
  STACK[0x4A0] = 0;
  STACK[0x498] = 0;
  STACK[0x4A8] = 0;
  STACK[0x490] = 0;
  STACK[0x478] = 0;
  v4 = *(v2 + 8 * (((v3 == 0) * ((v0 - 28073) ^ 0x29A6)) ^ v0));
  *(v1 - 148) = -1391007032;
  return v4();
}

uint64_t sub_100827BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v14 - 128) = v13 - 1603510583 * ((((v14 - 128) | 0x754D6F57) - (v14 - 128) + ((v14 - 128) & 0x8AB290A8)) ^ 0xE2965DFC) - 24210;
  *(v14 - 120) = v11;
  *(v14 - 112) = &a10;
  v15 = (*(v10 + 8 * (v13 + 27998)))(v14 - 128);
  return (*(v10 + 8 * ((7 * (v12 - 1506457074 >= 2842 * (v13 ^ 0x5E97u) - 11384)) ^ v13)))(v15);
}

uint64_t sub_100827D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = ((2 * v4) & 0xBFCFFC94) + (v4 ^ 0x5FE7FE4A);
  v8 = (*(a2 + v7 - 1609039434) << 24) | (*(a2 + v7 - 1609039433) << 16) | (*(a2 + v7 - 1609039432) << 8);
  v9 = *(a2 + v7 - 1609039431);
  v10 = (((v8 - ((2 * v8) & 0x70B9E600) - 1201867930) ^ 0xFF5C17F2) & ((v9 - ((2 * v9) & 0xFFFFFFE7) - 2304525) ^ 0x232A0C) ^ (v9 - ((2 * v9) & 0xFFFFFFE7) - 2304525) & 0x9004136B ^ 0xD704F5F7) + v3;
  v11 = v10 + 567937368;
  v12 = v2 + 37931634;
  v13 = v10 > 0xDE25F6A7;
  v14 = (v12 < 0x21DA0958) ^ v13;
  v15 = v11 > v12;
  if (v14)
  {
    v15 = v13;
  }

  return (*(v5 + 8 * (v6 ^ 0x60CE ^ (460 * !v15))))(a1, v6);
}

uint64_t sub_100827EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v23 = (((v20 ^ 0xB2B25163) + 1296936605) ^ ((v20 ^ 0x6A19261C) - 1780033052) ^ ((v20 ^ ((v22 ^ 0xB1A8) + 830381835)) - 830386286)) + 1235018044;
  v24 = v23 < 0x5FC71A2B;
  v25 = v19 + 1606883883 < v23;
  if (v19 > 0xA038E5D4 != v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = v25;
  }

  return (*(v21 + 8 * ((42578 * v26) ^ (v22 - 27504))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_100827F7C@<X0>(unsigned __int8 *a1@<X8>, int a2, char a3)
{
  v10 = (v9 - 136);
  v11 = &a1[56 * *a1 + 24];
  v12 = v9 - 136;
  v13 = 634647737 * ((((v9 - 136) ^ 0x41047180) & 0x69367188 | ((v9 - 136) ^ 0x12810C30) & 0x96C98E70) ^ 0x3E13524C);
  *(v9 - 120) = v13 ^ 0x28D20269;
  *(v9 - 136) = v3 - v13 + 11843;
  v10[1] = &a3;
  v10[3] = v11;
  *(v9 - 104) = -2887 * ((((v9 - 136) ^ 0x7180) & 0x7188 | ((v9 - 136) ^ 0xC30) & 0x8E70) ^ 0x524C) + 11302;
  (*(v5 + 8 * (v3 + 40654)))(v9 - 136);
  v14 = 634647737 * ((v12 - 2 * (v12 & 0x302FFE90) - 1339031919) ^ 0xDDB9D16D);
  *(v9 - 120) = &a3;
  *(v9 - 128) = v3 + 13969 - v14;
  *(v9 - 124) = v14 ^ 0x252BA053;
  *v10 = v8;
  (*(v5 + 8 * (v3 ^ 0xE098)))(v9 - 136);
  v15 = 634647737 * (((v12 | 0x2A1BB2D9) - v12 + (v12 & 0xD5E44D20)) ^ 0x478D9D25);
  *v10 = v6;
  *(v9 - 128) = v3 + 13969 - v15;
  *(v9 - 124) = (v7 - 753076589 + ((v3 + 1412010887) & 0xABD66BF6)) ^ v15;
  *(v9 - 120) = &a3;
  (*(v5 + 8 * (v3 ^ 0xE098)))(v9 - 136);
  *(v9 - 120) = v3 - 353670337 * ((v9 - 136) ^ 0xB421F83D) - 11154;
  *v10 = &a3;
  *(v9 - 128) = v4;
  v16 = (*(v5 + 8 * (v3 + 40735)))(v9 - 136);
  return (*(v5 + 8 * v3))(v16);
}

uint64_t sub_10082825C(__n128 a1)
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

uint64_t sub_1008282A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0x3A0]) = a6;
  *(v8 - 224) = v7 - 25433;
  v9 = *(v6 + 8 * (v7 + 21270));
  STACK[0x428] = a4;
  v10 = v9(1028);
  STACK[0x4B8] = 0;
  LODWORD(STACK[0x48C]) = 0;
  *(v8 - 192) = 0;
  STACK[0x4A0] = 0;
  *(v8 - 248) = 0;
  *(v8 - 176) = 0;
  STACK[0x498] = 0;
  *(v8 - 256) = 0;
  *(v8 - 168) = 0;
  STACK[0x480] = 0;
  *(v8 - 208) = 0;
  *(v8 - 200) = 0;
  *(v8 - 240) = 0;
  *(v8 - 232) = 0;
  *(v8 - 184) = 0;
  STACK[0x4A8] = 0;
  STACK[0x490] = 0;
  STACK[0x478] = 0;
  *(v8 - 160) = 0;
  STACK[0x4B0] = 0;
  v11 = *(v6 + 8 * (((v10 == 0) * (((v7 + 20982370) | 0x4C0610A5) - 1296478848)) ^ v7));
  *(v8 - 148) = 1644243867;
  return v11();
}

uint64_t sub_100828444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = STACK[0x5F0];
  *(v12 + 872) = v8;
  LODWORD(STACK[0x5C4]) = v11;
  *(v12 + 648) = v13 + v9;
  return (*(a8 + 8 * v10))();
}

uint64_t sub_1008284B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55)
{
  *(a37 - 775311879) = a55 + 1;
  v59 = *(a39 - 586084794);
  *(v58 - 128) = 906386353 * a31 + 1;
  *(v58 - 120) = (906386353 * a31) ^ v57;
  *(v58 - 108) = ((v55 + 705272160) ^ 0x1396) + 906386353 * a31;
  *(v58 - 104) = 906386353 * a31 + v55 + 800695474;
  v60 = (v55 + 705272160) ^ (906386353 * a31);
  *(v58 - 100) = v60 ^ 0xAC;
  *(v58 - 144) = v60;
  *(v58 - 136) = v59 - 906386353 * a31;
  v61 = (*(v56 + 8 * (v55 + 32882)))(v58 - 144);
  return (*(v56 + 8 * *(v58 - 112)))(v61);
}

uint64_t sub_100828578(uint64_t a1, double a2, __n128 a3, __n128 a4, __n128 a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, int8x16_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int8x16_t a29, int8x16_t a30, int64x2_t a31, int8x16_t a32, int8x16_t a33, int8x16_t a34, int8x16_t a35, int8x16_t a36, int8x16_t a37, int8x16_t a38, int8x16_t a39, uint64_t a40, uint64_t a41)
{
  *(v44 - 256) = a5;
  *(v44 - 240) = a4;
  *(v44 - 224) = a3;
  v170 = v46;
  v47 = veorq_s8(a5, a39);
  v48 = veorq_s8(a4, a39);
  v49 = veorq_s8(a8, a39);
  v50 = veorq_s8(a9, a39);
  v51 = veorq_s8(a3, a39);
  v52 = veorq_s8(a7, a39);
  v53 = veorq_s8(a6, a39);
  v54 = vandq_s8(veorq_s8(vandq_s8(vaddq_s64(a5, a5), a38), a37), a5);
  v55 = vandq_s8(veorq_s8(vandq_s8(vaddq_s64(a4, a4), a38), a37), *(v44 - 240));
  v56 = vandq_s8(veorq_s8(vandq_s8(vaddq_s64(a3, a3), a38), a37), *(v44 - 224));
  v57 = vandq_s8(veorq_s8(vandq_s8(vaddq_s64(a8, a8), a38), a37), a8);
  v58 = vaddq_s64(v53, v53);
  v59 = vaddq_s64(v52, v52);
  v60 = vandq_s8(veorq_s8(vandq_s8(vaddq_s64(a9, a9), a38), a37), a9);
  v61 = vaddq_s64(v50, v50);
  v62 = vaddq_s64(v49, v49);
  v63 = vaddq_s64(v51, v51);
  v64 = vaddq_s64(v48, v48);
  v65 = vaddq_s64(v47, v47);
  v66 = vandq_s8(veorq_s8(vandq_s8(vaddq_s64(a7, a7), a38), a37), a7);
  v67 = vandq_s8(veorq_s8(v58, a36), v53);
  v68 = vandq_s8(veorq_s8(v61, a36), v50);
  v69 = vandq_s8(veorq_s8(vandq_s8(vaddq_s64(a6, a6), a38), a37), a6);
  v70 = veorq_s8(vandq_s8(veorq_s8(v65, a36), v47), vandq_s8(v65, v45));
  v71 = veorq_s8(vandq_s8(veorq_s8(v64, a36), v48), vandq_s8(v64, v45));
  v72 = veorq_s8(vandq_s8(veorq_s8(v63, a36), v51), vandq_s8(v63, v45));
  v73 = veorq_s8(vandq_s8(veorq_s8(v62, a36), v49), vandq_s8(v62, v45));
  v74 = veorq_s8(v68, vandq_s8(v61, v45));
  v75 = veorq_s8(vandq_s8(veorq_s8(v59, a36), v52), vandq_s8(v59, v45));
  v76 = veorq_s8(v67, vandq_s8(v58, v45));
  v77 = veorq_s8(v76, a35);
  v78 = veorq_s8(v75, a35);
  v79 = veorq_s8(v74, a35);
  v80 = veorq_s8(v73, a35);
  v81 = veorq_s8(v72, a35);
  v82 = veorq_s8(v71, a35);
  v172.val[3] = veorq_s8(v70, a35);
  v83 = veorq_s8(vandq_s8(veorq_s8(v76, a34), vshlq_n_s64(v69, 2uLL)), v69);
  v84 = veorq_s8(vandq_s8(veorq_s8(v75, a34), vshlq_n_s64(v66, 2uLL)), v66);
  v85 = veorq_s8(vandq_s8(veorq_s8(v74, a34), vshlq_n_s64(v60, 2uLL)), v60);
  v86 = veorq_s8(vandq_s8(veorq_s8(v73, a34), vshlq_n_s64(v57, 2uLL)), v57);
  v87 = veorq_s8(vandq_s8(veorq_s8(v72, a34), vshlq_n_s64(v56, 2uLL)), v56);
  v88 = veorq_s8(vandq_s8(veorq_s8(v71, a34), vshlq_n_s64(v55, 2uLL)), v55);
  v89 = vshlq_n_s64(v172.val[3], 2uLL);
  v90 = vshlq_n_s64(v82, 2uLL);
  v91 = veorq_s8(vandq_s8(veorq_s8(v70, a34), vshlq_n_s64(v54, 2uLL)), v54);
  v92 = vshlq_n_s64(v81, 2uLL);
  v93 = vshlq_n_s64(v80, 2uLL);
  v172.val[0] = vshlq_n_s64(v79, 2uLL);
  v172.val[1] = vshlq_n_s64(v78, 2uLL);
  v172.val[2] = vshlq_n_s64(v77, 2uLL);
  v94 = vandq_s8(veorq_s8(v172.val[1], a33), v78);
  v95 = vandq_s8(veorq_s8(v172.val[2], a33), v77);
  v96 = veorq_s8(veorq_s8(vandq_s8(v89, v45), a32), vandq_s8(veorq_s8(v89, a33), v172.val[3]));
  v97 = veorq_s8(veorq_s8(vandq_s8(v90, v45), a32), vandq_s8(veorq_s8(v90, a33), v82));
  v98 = veorq_s8(veorq_s8(vandq_s8(v93, v45), a32), vandq_s8(veorq_s8(v93, a33), v80));
  v99 = veorq_s8(veorq_s8(vandq_s8(v172.val[1], v45), a32), v94);
  v100 = vandq_s8(veorq_s8(veorq_s8(vandq_s8(v172.val[2], v45), a32), v95), vshlq_n_s64(v83, 4uLL));
  v101 = vandq_s8(v99, vshlq_n_s64(v84, 4uLL));
  v102 = vandq_s8(v98, vshlq_n_s64(v86, 4uLL));
  v103 = vaddq_s64(*(v44 - 256), a31);
  v104 = v103.i64[1];
  v105 = v103.i64[0];
  v106 = vandq_s8(veorq_s8(veorq_s8(vandq_s8(v92, v45), a32), vandq_s8(veorq_s8(v92, a33), v81)), vshlq_n_s64(v87, 4uLL));
  v168 = vaddq_s64(*(v44 - 240), a31);
  v107 = veorq_s8(vandq_s8(v96, vshlq_n_s64(v91, 4uLL)), v91);
  v108 = veorq_s8(vandq_s8(v97, vshlq_n_s64(v88, 4uLL)), v88);
  v109 = veorq_s8(v106, v87);
  v110 = vaddq_s64(*(v44 - 224), a31);
  v167 = v110.i64[1];
  v111 = v110.i64[0];
  v112 = vaddq_s64(a8, a31);
  v113 = v112.i64[1];
  v114 = v112.i64[0];
  v115 = vaddq_s64(a9, a31);
  v116 = v115.i64[1];
  v117 = v115.i64[0];
  v118 = veorq_s8(v102, v86);
  v119 = veorq_s8(veorq_s8(*(v44 - 256), a30), vaddq_s64(v107, v107));
  v120 = v119.i64[1];
  v121 = v119.i64[0];
  v122 = veorq_s8(veorq_s8(*(v44 - 240), a30), vaddq_s64(v108, v108));
  v123 = v122.i64[1];
  v124 = v122.i64[0];
  v125 = veorq_s8(veorq_s8(*(v44 - 224), a30), vaddq_s64(v109, v109));
  v126 = v125.i64[1];
  v127 = v125.i64[0];
  v128 = veorq_s8(veorq_s8(a8, a30), vaddq_s64(v118, v118));
  v129 = v128.i64[1];
  v130 = v128.i64[0];
  v131 = veorq_s8(vandq_s8(veorq_s8(veorq_s8(vandq_s8(v172.val[0], v45), a32), vandq_s8(veorq_s8(v172.val[0], a33), v79)), vshlq_n_s64(v85, 4uLL)), v85);
  v132 = veorq_s8(veorq_s8(a9, a30), vaddq_s64(v131, v131));
  v133 = v132.i64[1];
  v134 = veorq_s8(v101, v84);
  v135 = veorq_s8(veorq_s8(a7, a30), vaddq_s64(v134, v134));
  v136 = veorq_s8(v170, a39);
  v137 = v132.i64[0];
  v138 = vaddq_s64(a7, a31);
  v139 = v138.i64[1];
  v140 = v138.i64[0];
  v141 = v135.i64[1];
  v142 = vaddq_s64(a6, a31);
  v143 = v142.i64[1];
  v144 = v142.i64[0];
  v145 = v135.i64[0];
  v146 = veorq_s8(v100, v83);
  v147 = veorq_s8(veorq_s8(a6, a30), vaddq_s64(v146, v146));
  v148 = v147.i64[1];
  v149 = vandq_s8(veorq_s8(vandq_s8(vaddq_s64(v170, v170), a38), a37), v170);
  v150 = vaddq_s64(v136, v136);
  v151 = v147.i64[0];
  v152 = veorq_s8(vandq_s8(veorq_s8(v150, a36), v136), vandq_s8(v150, v45));
  v153 = veorq_s8(v152, a35);
  v154 = veorq_s8(vandq_s8(veorq_s8(v152, a34), vshlq_n_s64(v149, 2uLL)), v149);
  v155 = vshlq_n_s64(v153, 2uLL);
  v156 = veorq_s8(vandq_s8(veorq_s8(veorq_s8(vandq_s8(v155, v45), a32), vandq_s8(veorq_s8(v155, a33), v153)), vshlq_n_s64(v154, 4uLL)), v154);
  v157 = veorq_s8(veorq_s8(v170, a30), vaddq_s64(v156, v156));
  v158 = v129 * v113;
  v172.val[1].i64[0] = v130 * v114;
  v159 = v133 * v116;
  v172.val[1].i64[1] = v158;
  v172.val[0].i64[0] = v137 * v117;
  v160 = v141 * v139;
  v172.val[0].i64[1] = v159;
  v172.val[2].i64[0] = v145 * v140;
  v161 = v157.i64[1];
  v162 = v157.i64[0];
  v172.val[2].i64[1] = v160;
  v172.val[3].i64[0] = v151 * v144;
  v163 = vaddq_s64(v170, a31);
  v172.val[3].i64[1] = v148 * v143;
  v164 = v163.i64[0];
  v163.i64[0] = vqtbl4q_s8(v172, a29).u64[0];
  v172.val[0].i64[0] = v121 * v105;
  v172.val[0].i64[1] = v120 * v104;
  v172.val[1].i64[0] = v124 * v168.i64[0];
  v172.val[1].i64[1] = v123 * v168.i64[1];
  v172.val[2].i64[0] = v127 * v111;
  v172.val[2].i64[1] = v126 * v167;
  v172.val[3].i64[0] = v162 * v164;
  v172.val[3].i64[1] = v161 * v163.i64[1];
  v163.i64[1] = vqtbl4q_s8(v172, a29).u64[0];
  v165 = vrev64q_s8(v163);
  *v42 = vextq_s8(v165, v165, 8uLL);
  return (*(v41 + 8 * ((99 * (v43 != 0)) ^ a40)))(a1, v123, v126, v127, v158, v116, v117, v114, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29.i64[0], a29.i64[1], a30.i64[0], a30.i64[1], a31.i64[0], a31.i64[1], a32.i64[0], a32.i64[1], a33.i64[0], a33.i64[1], a34.i64[0], a34.i64[1], a35.i64[0], a35.i64[1], a36.i64[0], a36.i64[1], a37.i64[0], a37.i64[1], a38.i64[0], a38.i64[1], a39.i64[0], a39.i64[1], a40, a41, v167, v87.i64[1], v168.i64[0], v168.i64[1], a9.i64[0], a9.u64[1]);
}

uint64_t sub_100828AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, int a7@<W8>)
{
  v20 = a2 - 1;
  v21 = __ROR8__((v9 + v20) & 0xFFFFFFFFFFFFFFF8, 8);
  v22 = (v21 - 0x296E95066F186A7FLL) ^ (34 * (a3 ^ v10) + v16);
  v23 = __ROR8__((v21 - 0x296E95066F186A7FLL) ^ 0x72219E3FC273472, 8);
  v24 = (v23 + v22 - ((2 * (v23 + v22)) & 0x737150CE43C7A8E8) - 0x46475798DE1C2B8CLL) ^ 0xAD02AF2D0E7BBB91;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0x2C378843F9A46E98;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (((v28 + v27) | 0xD7EB6F4E0A38FF81) - ((v28 + v27) | a4) + a4) ^ v14;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (((v31 + v30) & a6 ^ v15) + ((v31 + v30) & v19 ^ a5) - 1) ^ v8;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = __ROR8__(v32, 8);
  v35 = __ROR8__(((v12 | (2 * (v34 + v33))) - (v34 + v33) + v13) ^ v7, 8);
  v36 = ((v12 | (2 * (v34 + v33))) - (v34 + v33) + v13) ^ v7 ^ __ROR8__(v33, 61);
  *(v9 + v20) = *(a1 + v20) ^ v18 ^ (((__ROR8__((v35 + v36) ^ 0x8FB22143FEDB6CB3, 8) + ((v35 + v36) ^ 0x8FB22143FEDB6CB3 ^ __ROR8__(v36, 61))) ^ 0x9B1C7427651E0F18) >> (8 * ((v9 + v20) & 7)));
  return (*(v17 + 8 * (((((v20 - a3) | (a3 - v20)) >> 63) * v11) ^ (a3 + a7))))();
}

uint64_t sub_100828CDC()
{
  v2 = (*(v1 + 8 * (v0 + 16946)))(8);
  v3 = *(v1 + 8 * (((((v0 + 24) ^ 0xD5 ^ (v2 == 0)) & 1) * ((v0 + 1949708183) & 0x8BC9EDAF ^ 0xA550)) ^ (v0 - 9192)));
  STACK[0x3A8] = v1;
  STACK[0x318] = v0;
  return v3(v2, v4, v5, v6, v7);
}

uint64_t sub_100828DA0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, int a6@<W5>, int a7@<W8>)
{
  v17 = v8 & v7;
  v18 = (v17 + (v12 | ~a7) + a2) ^ v16;
  *(a1 + v17) = *(*(v15 + 8 * v9) + (v18 ^ a3) + a4) ^ HIBYTE(v14) ^ v18 ^ a5;
  return (*(v13 + 8 * (((v11 != 0) * a6) ^ v10)))();
}

uint64_t sub_100828E1C(__n128 a1)
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
  v8.n128_u64[0] = 0xEFEFEFEFEFEFEFEFLL;
  v8.n128_u64[1] = 0xEFEFEFEFEFEFEFEFLL;
  return (*(v4 + 8 * v2))((v1 + 14) & 0xF, (v2 + 226168565) & 0xF284F53F, v1 + v3 - 16, (v1 & 0x10) - 16, ((v2 + 226168565) & 0xF284F53F) - 13614, 46741, a1, v5, v6, v7, xmmword_100BC76B0, vqtbl4q_s8(v10, xmmword_100BC76B0), v8);
}

uint64_t sub_100828F58@<X0>(int a1@<W8>)
{
  v8 = 23958;
  atomic_compare_exchange_strong((*(v7 + 8 * v1) + v2), &v8, v3);
  return (*(v6 + 8 * (((v8 != v4) * v5) ^ a1)))();
}

uint64_t sub_100828F88()
{
  *(v2 - 152) = (v1 - 11080) | 0x4188;
  v3 = *(v0 + 8 * ((((((*(v0 + 8 * (v1 + 40300)))(1032) == 0) ^ (v1 - 1)) & 1) * ((2336 * (v1 ^ 0x2D4E)) ^ 0x36C2)) | v1));
  *(v2 - 148) = -473935569;
  return v3();
}

uint64_t sub_100829020@<X0>(uint64_t a1@<X8>)
{
  if (v4 - 1051125340 + 3 * (v3 ^ 0x2ACCu) >= 0x7FFFFFFF)
  {
    v2 = 2102173152 - v2;
  }

  *(v1 + 4) = v2;
  return (*(a1 + 8 * v3))();
}

uint64_t sub_10082906C()
{
  *(v2 - 232) = (v1 + 1877370870) ^ (155453101 * ((((v2 - 232) | 0x726B7F5D) - ((v2 - 232) | 0x8D9480A2) - 1919647582) ^ 0x944D6492));
  (*(v0 + 8 * (v1 + 17015)))(v2 - 232);
  v3 = *(STACK[0x458] + 8);
  STACK[0x7A8] = *(v0 + 8 * (v1 - 33171));
  return (*(v0 + 8 * ((v1 - 33171) ^ 0x1F4D ^ (10970 * (((v1 - 33171) ^ 0x9942206A) <= ((v1 - 104911001) & 0x640FFBFu) + 423401044)))))(v3);
}

uint64_t sub_1008291DC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unsigned int a31)
{
  LODWORD(STACK[0x284]) = a4;
  LODWORD(STACK[0x4E4]) = HIBYTE(LODWORD(STACK[0x9D0])) ^ 0xFFFFFF85;
  LODWORD(STACK[0xC58]) = v32 ^ LODWORD(STACK[0xC24]);
  LODWORD(STACK[0x950]) = v31 ^ 0xA9B301EE;
  return (*(STACK[0xED8] + 8 * (v33 + 7893)))(a1, a2, 177, v34, 106, 2913824249, a31, (v33 - 12790));
}

uint64_t sub_1008292F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>)
{
  v23 = v16 - 1;
  v24 = v12 + v23 + v11;
  v25 = __ROR8__(v24 & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = ((2 * (v25 + v21)) | 0x3DA446E54D82F8E6) - (v25 + v21) + a2;
  v27 = v26 ^ a3;
  v28 = v26 ^ ((a9 + v10) + v14);
  v29 = (__ROR8__(v27, 8) + v28) ^ a1;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ v19;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ v20;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ v22;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = ((v13 | (2 * (v37 + v36))) - (v37 + v36) + a6) ^ a5;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ v18;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v40, 8);
  *v24 = (((a8 | (2 * (v42 + v41))) - (v42 + v41) + a7) ^ a4) >> (8 * (v24 & 7u));
  return (*(v17 + 8 * (((v23 == 0) * v15) ^ v9)))();
}

uint64_t sub_1008293E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(v6 + 8);
  STACK[0x6A0] = v7;
  return (*(a5 + 8 * (((v7 == 0) * (((v5 ^ 0x19C4) + 13461) ^ 0xBCF7)) ^ v5)))();
}

uint64_t sub_100829420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x318];
  v6 = STACK[0x318] - 30589;
  LOWORD(STACK[0x9B6]) = v4;
  return (*(STACK[0x3A8] + 8 * (v6 ^ 0xA55)))(a1, a2, a3, a4, v5);
}

uint64_t sub_1008294D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v19 = 139493411 * ((~(v18 - 136) & 0x41426342 | (v18 - 136) & 0xBEBD9CB8) ^ 0x4D6F8207);
  *(v18 - 136) = &a15;
  *(v18 - 128) = (((v17 ^ 0x46AD) + 1851584000) ^ v15) - v19 + ((2 * v15) & 0xDCBACBF6) - 1245782417;
  *(v18 - 124) = (v17 - 2457) ^ v19;
  v20 = (*(v16 + 8 * (v17 + 39330)))(v18 - 136);
  return (*(v16 + 8 * v17))(v20);
}

uint64_t sub_1008296B0@<X0>(int a1@<W8>)
{
  v12 = *(v8 + 2 * v2);
  if (a1 + 1 == v3)
  {
    v13 = 0;
  }

  else
  {
    v13 = a1 + 1;
  }

  v14 = *(v8 + 2 * v13) ^ 0x917A;
  v15 = *(v8 + 2 * ((a1 + 2) % v3)) ^ 0x6B44;
  *(v11 - 110) = (*(v8 + 2 * ((a1 + 3) % v3)) ^ 0x42FA) + v4;
  *(v11 - 108) = v5;
  *(v11 - 102) = (v6 + (v2 ^ 0x7F2F) + ((2 * v2) & 0xFE5E) + 27532) ^ v4;
  *(v11 - 100) = v4 ^ v12 ^ 0xC8F3;
  *(v11 - 116) = v10;
  *(v11 - 104) = v14 - v4;
  *(v11 - 114) = v15 + v4;
  v16 = (*(v1 + 8 * v9))(v11 - 116);
  *(v8 + 2 * v2) = *(v11 - 112);
  return (*(v1 + 8 * ((42132 * (((v2 + 1 - v3) | (v3 - (v2 + 1))) >= 0)) ^ v7)))(v16);
}

uint64_t sub_100829934@<X0>(unint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, int a4@<W5>, int a5@<W6>, unsigned int a6@<W7>, unsigned int a7@<W8>)
{
  *(a2 + v10 + a4 + (v8 & a6)) = *(a3 + v9);
  v14 = v9 < a1 && v9 + 1 + v12 < a7;
  return (*(v11 + 8 * ((v14 * a5) ^ v7)))();
}

uint64_t sub_100829AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 16) = *v9;
  *(a1 + 88) = *(v9 + 72);
  *(a1 + 92) = *(v9 + 76);
  *(a1 + 96) = *(v9 + 80);
  *(a1 + 97) = *(v9 + 81);
  *(a1 + 120) = *(v9 + 104);
  *(a1 + 100) = *(v9 + 84);
  *(a1 + 124) = *(v9 + 108) & 1 | 0x2C;
  return (*(a8 + 8 * v8))();
}

uint64_t sub_100829CFC()
{
  v6 = 139493411 * ((((2 * v4) | 0xDC383A9C) - v4 - 1847336270) ^ 0x6231FC0B);
  *(v5 - 136) = v0;
  *(v5 - 128) = ((v2 + 1072736787) & 0xC00EFD37) - v6 + (v3 ^ 0xFC3F46FE) + ((2 * v3) & 0xF87E8DFC) + 668780888;
  *(v5 - 124) = (v2 - 25868) ^ v6;
  v7 = (*(v1 + 8 * (v2 ^ 0x4631)))(v5 - 136);
  return (*(v1 + 8 * v2))(v7);
}

uint64_t sub_100829FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x8E8] = v8;
  LODWORD(STACK[0x848]) = 290741757;
  STACK[0x708] = &STACK[0x8A0];
  LODWORD(STACK[0x61C]) = 1361662593;
  return (*(a8 + 8 * (v9 - 35239)))();
}

uint64_t sub_10082A0B8()
{
  v3 = *(v2 + 504);
  *(v2 + 384) = v3;
  return (*(v1 + 8 * ((63 * (((v3 == 0) ^ ((v0 + 34) ^ (v0 - 1))) & 1)) ^ v0)))();
}

uint64_t sub_10082A110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v10 = (v8 - 23102) | 0x1001;
  v11 = *(v7 + 8 * (v8 + 27698));
  STACK[0x460] = a7;
  v12 = v11(1028);
  STACK[0x4B8] = 0;
  LODWORD(STACK[0x48C]) = 0;
  *(v9 - 192) = 0;
  STACK[0x4A0] = 0;
  *(v9 - 248) = 0;
  *(v9 - 176) = 0;
  STACK[0x498] = 0;
  *(v9 - 256) = 0;
  *(v9 - 168) = 0;
  STACK[0x480] = 0;
  *(v9 - 208) = 0;
  *(v9 - 200) = 0;
  *(v9 - 240) = 0;
  *(v9 - 232) = 0;
  *(v9 - 184) = 0;
  STACK[0x4A8] = 0;
  STACK[0x490] = 0;
  STACK[0x478] = 0;
  *(v9 - 160) = 0;
  STACK[0x4B0] = 0;
  *(v9 - 224) = v10;
  v13 = *(v7 + 8 * (((v12 != 0) * (v10 + (v8 ^ 0xFFFFB545))) | v8));
  *(v9 - 148) = 1644243867;
  return v13();
}

uint64_t sub_10082A404(void *a1)
{
  v1 = a1[2];
  v2 = *a1;
  v132 = (**a1 ^ 0x3B2D3EBF) - 268441612 + ((2 * **a1) & 0x765A7D7E);
  v133 = (v2[1] ^ 0x3B2D3EBF) - 268441612 + ((2 * v2[1]) & 0x765A7D7E);
  v134 = (v2[2] ^ 0x3B2D3EBF) - 268441612 + ((2 * v2[2]) & 0x765A7D7E);
  v135 = (v2[3] ^ 0x3B2D3EBF) - 268441612 + ((2 * v2[3]) & 0x765A7D7E);
  v136 = (v2[4] ^ 0x3B2D3EBF) - 268441612 + ((2 * v2[4]) & 0x765A7D7E);
  v137 = (v2[5] ^ 0x3B2D3EBF) - 268441612 + ((2 * v2[5]) & 0x765A7D7E);
  v138 = (v2[6] ^ 0x3B2D3EBF) - 268441612 + ((2 * v2[6]) & 0x765A7D7E);
  v139 = (v2[7] ^ 0x3B2D3EBF) - 268441612 + ((2 * v2[7]) & 0x765A7D7E);
  v140 = (v2[8] ^ 0x3B2D3EBF) - 268441612 + ((2 * v2[8]) & 0x765A7D7E);
  v141 = (v2[9] ^ 0x3B2D3EBF) - 268441612 + ((2 * v2[9]) & 0x765A7D7E);
  v142 = (v2[10] ^ 0x3B2D3EBF) - 268441612 + ((2 * v2[10]) & 0x765A7D7E);
  v143 = (v2[11] ^ 0x3B2D3EBF) - 268441612 + ((2 * v2[11]) & 0x765A7D7E);
  v144 = (v2[12] ^ 0x3B2D3EBF) - 268441612 + ((2 * v2[12]) & 0x765A7D7E);
  v145 = (v2[13] ^ 0x3B2D3EBF) - 268441612 + ((2 * v2[13]) & 0x765A7D7E);
  v146 = (v2[14] ^ 0x3B2D3EBF) - 268441612 + ((2 * v2[14]) & 0x765A7D7E);
  v147 = (v2[15] ^ 0x3B2D3EBF) - 268441612 + ((2 * v2[15]) & 0x765A7D7E);
  v3 = *v1;
  v4 = *v1 & 0xEE ^ 0x3A;
  v5 = v3 ^ (2 * ((v3 ^ 0x38) & (2 * ((v3 ^ 0x38) & (2 * ((v3 ^ 0x38) & (2 * ((v3 ^ 0x38) & (2 * ((v3 ^ 0x38) & (2 * v4) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4));
  v6 = v1[1];
  v7 = v6 & 0xD6 ^ 0x1E;
  v8 = (((v6 ^ (2 * ((v6 ^ 0x38) & (2 * ((v6 ^ 0x38) & (2 * ((v6 ^ 0x38) & (2 * ((v6 ^ 0x38) & (2 * ((v6 ^ 0x38) & (2 * v7) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7))) << 8) ^ 0x31FAAF80) & (v5 ^ 0x77FEFF64) & 0xFFFFFF80 | v5 & 0x7F;
  v9 = v1[9];
  v10 = v9 & 0xB0 | 0xF;
  v11 = (v9 ^ (2 * ((v9 ^ 0x3A) & (2 * ((v9 ^ 0x3A) & (2 * ((v9 ^ 0x3A) & (2 * ((v9 ^ 0x3A) & (2 * ((v9 ^ 0x3A) & (2 * ((v9 ^ 0x3A) & 0xA ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10))) << 16;
  v12 = v1[8];
  v13 = v12 & 0xFFFFFFD0 ^ 0x1F;
  v14 = (v12 ^ (2 * ((v12 ^ 0x3A) & (2 * ((v12 ^ 0x3A) & (2 * ((v12 ^ 0x3A) & (2 * ((v12 ^ 0x3A) & (2 * ((v12 ^ 0x3A) & (2 * ((v12 ^ 0x3A) & 0x2A ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ 0x84) << 24;
  v15 = (v11 & 0xC80000 ^ 0x7FFF3524 ^ (v8 ^ 0x2CCD1181) & (v11 ^ 0xFF4FFFFF)) & (v14 ^ 0xABFFFFFF) ^ v14 & 0x9D000000;
  v16 = v1[2];
  v17 = v16 & 0xFFFFFFB0 | 0xF;
  v18 = v16 ^ (2 * ((v16 ^ 0x3A) & (2 * ((v16 ^ 0x3A) & (2 * ((v16 ^ 0x3A) & (2 * ((v16 ^ 0x3A) & (2 * ((v16 ^ 0x3A) & (2 * ((v16 ^ 0x3A) & 0xA ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17));
  LOBYTE(v13) = v1[3];
  v19 = v13 & 0x76 ^ 0x6E;
  v20 = (v13 ^ (2 * ((v13 ^ 0x38) & (2 * ((v13 ^ 0x38) & (2 * ((v13 ^ 0x38) & (2 * ((v13 ^ 0x38) & (2 * ((v13 ^ 0x38) & (2 * v19) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19))) ^ 0x686FFE2B;
  v21 = v1[7];
  v22 = v21 & 0xB8 | 3;
  v23 = (v21 ^ (2 * ((v21 ^ 0x3A) & (2 * ((v21 ^ 0x3A) & (2 * ((v21 ^ 0x3A) & (2 * ((v21 ^ 0x3A) & (2 * (((2 * (v22 ^ v21 & 2)) ^ 4) & (v21 ^ 0x3A) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22))) ^ 0x66815A20;
  v24 = v1[6];
  v25 = v24 & 0xFFFFFFCE ^ 0xFFFFFF8A;
  v26 = v24 ^ (2 * ((v24 ^ 0x38) & (2 * ((v24 ^ 0x38) & (2 * ((v24 ^ 0x38) & (2 * ((v24 ^ 0x38) & (2 * ((v24 ^ 0x38) & (2 * v25) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25));
  v27 = ((v26 << 24) & 0xBD000000 ^ 0x52BA8F62 ^ ((((v23 << 16) ^ 0x441FF08) & ((v20 << 8) ^ 0xBF3308) | (v23 << 16) & 0x4ABE0000) ^ 0xC6DCD00) & ((v26 << 24) ^ 0x31FFFF8E)) & (v18 ^ 0xFFFFFF4F) ^ v18 & 0x95;
  v28 = v1[4];
  v29 = v28 & 0xFFFFFFF6 ^ 0x2E;
  v30 = v28 ^ (2 * ((v28 ^ 0x38) & (2 * ((v28 ^ 0x38) & (2 * ((v28 ^ 0x38) & (2 * ((v28 ^ 0x38) & (2 * ((v28 ^ 0x38) & (2 * v29) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29));
  v31 = v1[5];
  v32 = v31 & 0xC ^ 0x69;
  v33 = (v31 ^ (2 * ((v31 ^ 0x3A) & (2 * ((v31 ^ 0x3A) & (2 * ((v31 ^ 0x3A) & (2 * ((v31 ^ 0x3A) & (2 * (((2 * (v32 ^ v31 & 0x36)) ^ 0x64) & (v31 ^ 0x3A) ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ v32))) ^ 0x7164F2FB;
  v34 = ((v30 << 24) & 0xCB000000 ^ 0xC6E12F48 ^ ((((v33 << 8) ^ 0xEFF9802) & ((v33 << 16) ^ 0xFD5AFFA2) | (v33 << 16) & 0xF20000) ^ 0x3E896DE0) & ((v30 << 24) ^ 0x9FFFFE6)) & (v30 ^ 0xFFFFFF18) ^ v30 & 0x55;
  v35 = ((v18 << 24) & 0x9A000000 ^ 0xA0F97FA5 ^ ((((v23 << 8) ^ 0x6253FD80) & ((v20 << 16) ^ 0x910FF9D) | (v20 << 16) & 0x94F60000) ^ 0x92D6F209) & ((v18 << 24) ^ 0x4FFFFF9F)) & (v26 ^ 0xFFFFFF71) ^ v26 & 0xD3;
  v36 = (v34 ^ 0x2CDF5F4E ^ v35 ^ 0xBCCE6355) & 0x78DE560B ^ v35 ^ 0xBCCE6355 ^ (v34 ^ 0x2CDF5F4E ^ v35 ^ 0xBCCE6355 ^ 0xF5F4F90B) & (v27 ^ 0xE4D07AF1);
  v37 = ((v15 ^ 0x601F76AE) - 771458799) ^ ((v15 ^ 0xC718BFE7) + 1963176026) ^ ((v15 ^ 0xD14F9402) + 1666489277);
  v38 = v132;
  HIDWORD(v39) = v132 + v37 - 1963984935 + (((v36 ^ 0x73612E7B) - 791883034) ^ ((v36 ^ 0x5F4666A8) - 51668425) ^ ((v36 ^ 0xB54F9363) + 383938558));
  LODWORD(v39) = HIDWORD(v39);
  v40 = (((v27 ^ 0xEBDA8075) + 749316095) ^ ((v27 ^ 0xAADCFFB7) + 1840240701) ^ ((v27 ^ 0xDD085338) + 444298420)) + ((v39 >> 25) ^ 0xB39DFFB2) + ((2 * (v39 >> 25)) & 0x673BFF64) - 253430564;
  v41 = (v27 ^ 0x80465E4A) & v40 | (v34 ^ 0x2CDF5F4E) & ~v40;
  HIDWORD(v39) = v133 + (((v35 ^ 0x124EC4F) + 1108701414) ^ ((v35 ^ 0x961F246F) - 718358330) ^ ((v35 ^ 0xC24920CE) - 2122793883)) + 212915138 + (((v41 ^ 0xA64B7668) - 2057276860) ^ ((v41 ^ 0x22C7AEC4) + 32287472) ^ ((v41 ^ 0x98C4AA1C) - 1141920200));
  LODWORD(v39) = HIDWORD(v39);
  v42 = (v39 >> 20) + v40;
  HIDWORD(v39) = v134 + (((v34 ^ 0x63DFFA58) - 1325442326) ^ ((v34 ^ 0x142ED68) - 765309478) ^ ((v34 ^ 0x520A3ACE) - 2127914368)) + 747694036 + (((v42 & (v27 ^ 0x9C0E2CFA ^ v40) ^ v27 ^ 0x632BBC02) - 437795328) ^ ((v42 & (v27 ^ 0x9C0E2CFA ^ v40) ^ v27 ^ 0x740E77DE) - 222163420) ^ ((v42 & (v27 ^ 0x9C0E2CFA ^ v40) ^ v27 ^ 0x8B2BE726) + 233283292));
  LODWORD(v39) = HIDWORD(v39);
  v43 = (v39 >> 15) + v42;
  HIDWORD(v39) = v135 + (((v27 ^ 0xF38C368F) + 889131269) ^ ((v27 ^ 0x230E51F0) - 461539716) ^ ((v27 ^ 0x4C8C4B85) - 1946194929)) + 407342729 + ((((v42 & v43 | v40 & ~v43) ^ 0x7F5D26AF) - 1431126178) ^ (((v42 & v43 | v40 & ~v43) ^ 0x3C5E0E45) - 374237256) ^ (((v42 & v43 | v40 & ~v43) ^ 0x430328EA) - 1762873063));
  LODWORD(v39) = HIDWORD(v39);
  v44 = (v39 >> 10) + v43;
  HIDWORD(v39) = v136 + v40 + 1129886291 + ((v42 - ((2 * v42) & 0xE04DFD22) - 265879919) ^ 0xF026FE91 ^ v44 & (v43 ^ v42));
  LODWORD(v39) = HIDWORD(v39);
  v45 = (v39 >> 25) + v44;
  HIDWORD(v39) = v137 + v42 + 789779825 + ((v43 - ((2 * v43) & 0xCB981D3A) + 1707871901) ^ 0x65CC0E9D ^ v45 & (v44 ^ v43));
  LODWORD(v39) = HIDWORD(v39);
  v46 = (v39 >> 20) + v45;
  HIDWORD(v39) = v138 + v43 - 160123164 + ((v44 - ((2 * v44) & 0xB16E9506) + 1488407171) ^ 0x58B74A83 ^ v46 & (v45 ^ v44));
  LODWORD(v39) = HIDWORD(v39);
  v47 = (v39 >> 15) + v46;
  HIDWORD(v39) = v139 + v44 + 1074361972 + ((v45 - ((2 * v45) & 0x1AA70566) + 223576755) ^ 0xD5382B3 ^ v47 & (v46 ^ v45));
  LODWORD(v39) = HIDWORD(v39);
  v48 = (v39 >> 10) + v47;
  HIDWORD(v39) = v140 + v45 - 1547119611 + ((v46 - ((2 * v46) & 0xB90A0800) - 595262464) ^ 0xDC850400 ^ v48 & (v47 ^ v46));
  LODWORD(v39) = HIDWORD(v39);
  v49 = (v39 >> 25) + v48;
  HIDWORD(v39) = v141 + v46 - 1574550239 + ((v47 - ((2 * v47) & 0x7F1F53DE) + 1066379759) ^ 0x3F8FA9EF ^ v49 & (v48 ^ v47));
  LODWORD(v39) = HIDWORD(v39);
  v50 = (v39 >> 20) + v49;
  HIDWORD(v39) = v142 + v47 - 1068725082 + ((v48 - ((2 * v48) & 0x267CD5D0) + 322857704) ^ 0x133E6AE8 ^ v50 & (v49 ^ v48));
  LODWORD(v39) = HIDWORD(v39);
  v51 = (v39 >> 15) + v50;
  HIDWORD(v39) = v143 + v48 - 1241358572 + ((v49 - ((2 * v49) & 0xBF31D1E4) + 1603856626) ^ 0x5F98E8F2 ^ v51 & (v50 ^ v49));
  LODWORD(v39) = HIDWORD(v39);
  v52 = (v39 >> 10) + v51;
  HIDWORD(v39) = v144 + v49 + 352582899 + ((v50 - ((2 * v50) & 0xEC430182) - 165576511) ^ 0xF62180C1 ^ v52 & (v51 ^ v50));
  LODWORD(v39) = HIDWORD(v39);
  v53 = (v39 >> 25) + v52;
  HIDWORD(v39) = v145 + v50 + 1046529869 + ((v51 + 1449695083 + (~(2 * v51) | 0x532ED12B)) ^ 0x5668976A ^ v53 & (v52 ^ v51));
  LODWORD(v39) = HIDWORD(v39);
  v54 = (v39 >> 20) + v53;
  HIDWORD(v39) = v146 + v51 - 418308379 + ((v52 - ((2 * v52) & 0x5D3AF5F8) + 782072572) ^ 0x2E9D7AFC ^ v54 & (v53 ^ v52));
  LODWORD(v39) = HIDWORD(v39);
  v55 = (v39 >> 15) + v54;
  HIDWORD(v39) = v147 + v52 - 398391778 + ((v53 - ((2 * v53) & 0x30A3226C) + 407998774) ^ 0x18519136 ^ v55 & (v54 ^ v53));
  LODWORD(v39) = HIDWORD(v39);
  v56 = (v39 >> 10) + v55;
  HIDWORD(v39) = v133 + v53 + 1048619776 + ((v55 - ((2 * v55) & 0xB0C7D1BA) - 664540963) ^ 0xD863E8DD ^ (v56 ^ v55) & v54);
  LODWORD(v39) = HIDWORD(v39);
  v57 = (v39 >> 27) + v56;
  HIDWORD(v39) = v138 + v54 + 1607898065 + ((v56 - ((2 * v56) & 0xCE0B84BC) + 1728430686) ^ 0x6705C25E ^ (v57 ^ v56) & v55);
  LODWORD(v39) = HIDWORD(v39);
  v58 = (v39 >> 23) + v57;
  HIDWORD(v39) = v143 + v55 + 1314189018 + ((v57 - ((2 * v57) & 0x9C3D38F2) + 1310628985) ^ 0x4E1E9C79 ^ (v58 ^ v57) & v56);
  LODWORD(v39) = HIDWORD(v39);
  v59 = (v39 >> 18) + v58;
  HIDWORD(v39) = v132 + v56 + 1000854462 + ((v58 - ((2 * v58) & 0xAFBE56) + 5758763) ^ 0x57DF2B ^ (v59 ^ v58) & v57);
  LODWORD(v39) = HIDWORD(v39);
  v60 = (v39 >> 12) + v59;
  HIDWORD(v39) = v137 + v57 - 572846917 + ((v59 - ((2 * v59) & 0xCBDC015E) + 1710096559) ^ 0x65EE00AF ^ (v60 ^ v59) & v58);
  LODWORD(v39) = HIDWORD(v39);
  v61 = (v39 >> 27) + v60;
  HIDWORD(v39) = v142 + v58 - 180743212 + ((v60 - ((2 * v60) & 0xF79B7D28) + 2077081236) ^ 0x7BCDBE94 ^ (v61 ^ v60) & v59);
  LODWORD(v39) = HIDWORD(v39);
  v62 = (v39 >> 23) + v61;
  HIDWORD(v39) = v147 + v59 + 2132944820 + ((v61 - ((2 * v61) & 0xF03763D4) + 2015080938) ^ 0x781BB1EA ^ (v62 ^ v61) & v60);
  LODWORD(v39) = HIDWORD(v39);
  v63 = (v39 >> 18) + v62;
  HIDWORD(v39) = v136 + v60 - 97459972 + ((v62 - ((2 * v62) & 0x54150BF2) - 1442150919) ^ 0xAA0A85F9 ^ (v63 ^ v62) & v61);
  LODWORD(v39) = HIDWORD(v39);
  v64 = (v39 >> 12) + v63;
  HIDWORD(v39) = v141 + v61 + 159415322 + ((v63 - ((2 * v63) & 0x31D75104) - 1729386366) ^ 0x98EBA882 ^ (v64 ^ v63) & v62);
  LODWORD(v39) = HIDWORD(v39);
  v65 = (v39 >> 27) + v64;
  HIDWORD(v39) = v146 + v62 - 917376584 + ((v64 - ((2 * v64) & 0x709D9DFE) - 1202794753) ^ 0xB84ECEFF ^ (v65 ^ v64) & v63);
  LODWORD(v39) = HIDWORD(v39);
  v66 = (v39 >> 23) + v65;
  HIDWORD(v39) = v135 + v63 - 612827211 + ((v65 - ((2 * v65) & 0x44C501A2) + 576880849) ^ 0x226280D1 ^ (v66 ^ v65) & v64);
  LODWORD(v39) = HIDWORD(v39);
  v67 = (v39 >> 18) + v66;
  HIDWORD(v39) = v140 + v64 - 1006862541 + ((v66 - ((2 * v66) & 0x2DF12E4A) + 385390373) ^ 0x16F89725 ^ (v67 ^ v66) & v65);
  LODWORD(v39) = HIDWORD(v39);
  v68 = (v39 >> 12) + v67;
  HIDWORD(v39) = v145 + v65 - 414617509 + ((v67 - 853968489 + (~(2 * v67) | 0x65CD0CD3)) ^ 0xCD197996 ^ (v68 ^ v67) & v66);
  LODWORD(v39) = HIDWORD(v39);
  v69 = (v39 >> 27) + v68;
  HIDWORD(v39) = v134 + v66 - 845471402 + ((v68 - ((2 * v68) & 0x6639B3FE) + 857528831) ^ 0x331CD9FF ^ (v69 ^ v68) & v67);
  LODWORD(v39) = HIDWORD(v39);
  v70 = (v39 >> 23) + v69;
  HIDWORD(v39) = v139 + v67 - 526128580 + ((v69 - ((2 * v69) & 0xC931CE7A) + 1687742269) ^ 0x6498E73D ^ (v70 ^ v69) & v68);
  LODWORD(v39) = HIDWORD(v39);
  v71 = (v39 >> 18) + v70;
  HIDWORD(v39) = v144 + v68 - 898520991 + ((v70 - ((2 * v70) & 0xBEFDDDC6) + 1602154211) ^ 0x5F7EEEE3 ^ (v71 ^ v70) & v69);
  LODWORD(v39) = HIDWORD(v39);
  v72 = (v39 >> 12) + v71;
  v132 = *(&v132 + (v69 & 0xF));
  *(&v132 + (v69 & 0xF)) = v38;
  v73 = v133;
  v133 = *(&v132 + (v72 & 0xF));
  *(&v132 + (v72 & 0xF)) = v73;
  v74 = v134;
  v134 = *(&v132 + (v71 & 0xF));
  *(&v132 + (v71 & 0xF)) = v74;
  v75 = v135;
  v135 = *(&v132 + (v70 & 0xF));
  *(&v132 + (v70 & 0xF)) = v75;
  v76 = v136;
  v136 = *(&v132 + (v69 >> 4));
  *(&v132 + (v69 >> 4)) = v76;
  v77 = v137;
  v137 = *(&v132 + (v72 >> 4));
  *(&v132 + (v72 >> 4)) = v77;
  v78 = v138;
  v138 = *(&v132 + (v71 >> 4));
  *(&v132 + (v71 >> 4)) = v78;
  v79 = v139;
  v139 = *(&v132 + (v70 >> 4));
  *(&v132 + (v70 >> 4)) = v79;
  v80 = v140;
  v81 = (v69 >> 8) & 0xF;
  v140 = *(&v132 + v81);
  *(&v132 + v81) = v80;
  v82 = v141;
  v141 = *(&v132 + ((v72 >> 8) & 0xF));
  *(&v132 + (v72 >> 4)) = v82;
  v83 = v142;
  v84 = (v71 >> 8) & 0xF;
  v142 = *(&v132 + v84);
  *(&v132 + v84) = v83;
  v85 = v143;
  v86 = (v70 >> 8) & 0xF;
  v143 = *(&v132 + v86);
  *(&v132 + v86) = v85;
  v87 = v144;
  v144 = *(&v132 + (v69 >> 12));
  *(&v132 + (v69 >> 12)) = v87;
  v88 = v145;
  v145 = *(&v132 + (v72 >> 12));
  *(&v132 + (v72 >> 12)) = v88;
  v89 = v146;
  v146 = *(&v132 + (v71 >> 12));
  *(&v132 + (v71 >> 12)) = v89;
  v90 = v147;
  v147 = *(&v132 + (v70 >> 12));
  *(&v132 + (v70 >> 12)) = v90;
  HIDWORD(v39) = v137 + v69 - 1870079114 + ((v70 - ((2 * v70) & 0x36B094C4) - 1688712606) ^ v71 ^ 0x9B584A62 ^ v72);
  LODWORD(v39) = HIDWORD(v39);
  v91 = (v39 >> 28) + v72;
  HIDWORD(v39) = v140 + v70 - 1965734093 + ((v71 - ((2 * v71) & 0xA5DBE96) + 86957899) ^ v72 ^ 0x52EDF4B ^ v91);
  LODWORD(v39) = HIDWORD(v39);
  v92 = (v39 >> 21) + v91;
  HIDWORD(v39) = v143 + v71 + 865390252 + ((v72 - ((2 * v72) & 0xD2213CE4) - 384786830) ^ v91 ^ 0xE9109E72 ^ v92);
  LODWORD(v39) = HIDWORD(v39);
  v93 = (v39 >> 16) + v92;
  HIDWORD(v39) = v146 + v72 + 884691185 + ((v91 - ((2 * v91) & 0x3DBDC5CE) - 1629560089) ^ v92 ^ 0x9EDEE2E7 ^ v93);
  LODWORD(v39) = HIDWORD(v39);
  v94 = (v39 >> 9) + v93;
  HIDWORD(v39) = v133 + v91 + 552035548 + ((v92 - ((2 * v92) & 0xF0D18BCA) + 2020132325) ^ v93 ^ 0x7868C5E5 ^ v94);
  LODWORD(v39) = HIDWORD(v39);
  v95 = (v39 >> 28) + v94;
  HIDWORD(v39) = v136 + v92 - 2006112461 + ((v93 - ((2 * v93) & 0x91018B9A) + 1216398797) ^ v94 ^ 0x4880C5CD ^ v95);
  LODWORD(v39) = HIDWORD(v39);
  v96 = (v39 >> 21) + v95;
  HIDWORD(v39) = v139 + v93 + 627068593 + ((v94 - ((2 * v94) & 0x75C5E71C) - 1159531634) ^ v95 ^ 0xBAE2F38E ^ v96);
  LODWORD(v39) = HIDWORD(v39);
  v97 = (v39 >> 16) + v96;
  HIDWORD(v39) = v142 + v94 - 1297348994 + ((v95 - ((2 * v95) & 0xD9839BCE) + 1824640487) ^ v96 ^ 0x6CC1CDE7 ^ v97);
  LODWORD(v39) = HIDWORD(v39);
  v98 = (v39 >> 9) + v97;
  HIDWORD(v39) = v145 + v95 - 50798127 + ((v96 - ((2 * v96) & 0x7F4FE054) - 1079513046) ^ v97 ^ 0xBFA7F02A ^ v98);
  LODWORD(v39) = HIDWORD(v39);
  v99 = (v39 >> 28) + v98;
  HIDWORD(v39) = v132 + v96 + 760971529 + ((v97 - ((2 * v97) & 0xCE58910A) - 416528251) ^ v98 ^ 0xE72C4885 ^ v99);
  LODWORD(v39) = HIDWORD(v39);
  v100 = (v39 >> 21) + v99;
  HIDWORD(v39) = v135 + v97 + 801738243 + ((v98 - ((2 * v98) & 0x96DFF272) - 881854151) ^ v99 ^ 0xCB6FF939 ^ v100);
  LODWORD(v39) = HIDWORD(v39);
  v101 = (v39 >> 16) + v100;
  HIDWORD(v39) = v138 + v98 + 1545525704 + ((v99 - ((2 * v99) & 0x5D4B5D94) + 782610122) ^ v100 ^ 0x2EA5AECA ^ v101);
  LODWORD(v39) = HIDWORD(v39);
  v102 = (v39 >> 9) + v101;
  HIDWORD(v39) = v141 + v99 - 2067713763 + ((v100 - ((2 * v100) & 0xA50910FA) + 1384417405) ^ v101 ^ 0x5284887D ^ v102);
  LODWORD(v39) = HIDWORD(v39);
  v103 = (v39 >> 28) + v102;
  HIDWORD(v39) = v144 + v100 + 1271706833 + ((v101 - ((2 * v101) & 0xDC3B5B36) + 1847438747) ^ v102 ^ 0x6E1DAD9B ^ v103);
  LODWORD(v39) = HIDWORD(v39);
  v104 = (v39 >> 21) + v103;
  HIDWORD(v39) = v147 + v101 - 1562011040 + ((v102 - ((2 * v102) & 0xBEE4F34) - 2047400038) ^ v103 ^ 0x85F7279A ^ v104);
  LODWORD(v39) = HIDWORD(v39);
  v105 = (v39 >> 16) + v104;
  HIDWORD(v39) = v134 + v102 + 1991202629 + ((v103 - ((2 * v103) & 0xD277C64) + 110345778) ^ v104 ^ 0x693BE32 ^ v105);
  LODWORD(v39) = HIDWORD(v39);
  v106 = (v39 >> 9) + v105;
  HIDWORD(v39) = v132 + v103 + 605424489 + ((v105 - ((2 * v105) & 0x3EC4CF90) - 1620940856) ^ 0xBB3292F1 ^ (v106 & 0xDBAF0AC6 | (v104 ^ 0xDBAF0AC6) & ~v106));
  LODWORD(v39) = HIDWORD(v39);
  v107 = (v39 >> 26) + v106;
  HIDWORD(v39) = v139 + v104 + 1344561289 + ((v106 - ((2 * v106) & 0xF341B344) - 106899038) ^ 0x9497B5CD ^ (v107 & 0x92C89390 | (v105 ^ 0x92C89390) & ~v107));
  LODWORD(v39) = HIDWORD(v39);
  v108 = (v39 >> 22) + v107;
  HIDWORD(v39) = v146 + v105 - 572442500 + ((v107 - ((2 * v107) & 0xA318E8) - 2142139276) ^ 0x26B527AF ^ (v108 & 0x591B5424 | (v106 ^ 0x591B5424) & ~v108));
  LODWORD(v39) = HIDWORD(v39);
  v109 = (v39 >> 17) + v108;
  HIDWORD(v39) = v137 + v106 - 876417590 + ((v108 - ((2 * v108) & 0x73CE6054) - 1176031190) ^ 0x17DDFB8B ^ (v109 & 0x51C5345E | (v107 ^ 0x51C5345E) & ~v109));
  LODWORD(v39) = HIDWORD(v39);
  v110 = (v39 >> 11) + v109;
  HIDWORD(v39) = v144 + v107 + 1815394952 + ((v109 - ((2 * v109) & 0xAA4F273C) - 718826594) ^ 0x7F28F252 ^ (v110 & 0x55F09E33 | (v108 ^ 0x55F09E33) & ~v110));
  LODWORD(v39) = HIDWORD(v39);
  v111 = (v39 >> 26) + v110;
  HIDWORD(v39) = v135 + v108 - 577679468 + ((v110 - ((2 * v110) & 0x4FFF6F34) - 1476413542) ^ 0xE412F62C ^ (v111 & 0xBC12BE49 | (v109 ^ 0xBC12BE49) & ~v111));
  LODWORD(v39) = HIDWORD(v39);
  v112 = (v39 >> 22) + v111;
  HIDWORD(v39) = v142 + v109 + 1202354713 + ((v111 - ((2 * v111) & 0x5554365E) - 1431692497) ^ 0xEE0656C8 ^ (v112 & 0xBB53B218 | (v110 ^ 0xBB53B218) & ~v112));
  LODWORD(v39) = HIDWORD(v39);
  v113 = (v39 >> 17) + v112;
  HIDWORD(v39) = v133 + v110 - 1966179095 + ((v112 - ((2 * v112) & 0x974E305C) + 1269241902) ^ 0xB54EE9EF ^ (v113 & 0x1160E3E | (v111 ^ 0x1160E3E) & ~v113));
  LODWORD(v39) = HIDWORD(v39);
  v114 = (v39 >> 11) + v113;
  HIDWORD(v39) = v140 + v111 + 2127513904 + ((v113 - ((2 * v113) & 0x820495EA) + 1090669301) ^ 0xF0852941 ^ (v114 & 0x4E789C4B | (v112 ^ 0x4E789C4B) & ~v114));
  LODWORD(v39) = HIDWORD(v39);
  v115 = (v39 >> 26) + v114;
  HIDWORD(v39) = v147 + v112 + 1118506206 + ((v114 - ((2 * v114) & 0x9C9730) - 2142352488) ^ 0xFBD659D0 ^ (v115 & 0x8467EDB7 | (v113 ^ 0x8467EDB7) & ~v115));
  LODWORD(v39) = HIDWORD(v39);
  v116 = (v39 >> 22) + v115;
  HIDWORD(v39) = v138 + v113 - 1959001664 + ((v115 - ((2 * v115) & 0x9347540C) - 912020986) ^ 0x4A101D9C ^ (v116 & 0x7C4C4865 | (v114 ^ 0x7C4C4865) & ~v116));
  LODWORD(v39) = HIDWORD(v39);
  v117 = (v39 >> 17) + v116;
  HIDWORD(v39) = v145 + v114 - 19911080 + ((v116 - ((2 * v116) & 0x23F20F9A) - 1845950515) ^ 0x626CA259 ^ (v117 & 0xC6A5A6B | (v115 ^ 0xC6A5A6B) & ~v117));
  LODWORD(v39) = HIDWORD(v39);
  v118 = (v39 >> 11) + v117;
  HIDWORD(v39) = v136 + v115 + 1528675992 + ((v117 - ((2 * v117) & 0x7CF13C90) + 1048092232) ^ 0xF226FB85 ^ (v118 & 0x33A19A32 | (v116 ^ 0x33A19A32) & ~v118));
  LODWORD(v39) = HIDWORD(v39);
  v119 = v118 + ((v39 >> 26) ^ 0x7BBFF7FD) + ((2 * (v39 >> 26)) & 0xF77FEFFA) - 404022384;
  v120 = ((v119 ^ 0xC75D2F1B) + 1527366506) ^ v119 ^ ((v119 ^ 0x947E2F70) + 137020163) ^ ((v119 ^ 0xCC76EC09) + 1344405628) ^ ((v119 ^ 0xFCFEFFEF) + 1621758878);
  HIDWORD(v39) = v143 + v116 + 810331438 + ((((v120 ^ 0x9C54EC72) & v117 ^ v118 ^ 0xC083E0F7) - 1448599232) ^ (((v120 ^ 0x9C54EC72) & v117 ^ v118 ^ 0x9DA2DDDD) - 192340970) ^ (((v120 ^ 0x9C54EC72) & v117 ^ v118 ^ 0xA2DEC2D5) - 873135330));
  LODWORD(v39) = HIDWORD(v39);
  v121 = ((v39 >> 22) ^ 0xF7F75ECA) + (((v120 ^ 0x1044C63) - 1353472997) ^ ((v120 ^ 0xE5A263B6) + 1274383312) ^ ((v120 ^ 0x870D3C58) + 693818402)) + ((2 * (v39 >> 22)) & 0xEFEEBD94);
  v122 = v121 + 973841729;
  v123 = (v121 + 973841729) & 0xD5F12086 ^ v120 ^ (-973841730 - v121) & (v118 ^ 0xD5F12086);
  HIDWORD(v39) = v134 + v117 - 346965443 + (((v123 ^ 0x4A58AA7B) + 2052887143) ^ ((v123 ^ 0x6FD139CC) + 1607795154) ^ ((v123 ^ 0x6C2C5F43) + 1546151775));
  LODWORD(v39) = HIDWORD(v39);
  v124 = (v39 >> 17) + v121 + 973841729;
  v125 = (v124 & 0x472281C9 | (v120 ^ 0x24899244) & ~v124) ^ (v121 + 973841729);
  HIDWORD(v39) = v141 + v118 + 1054046755 + (((v125 ^ 0x894EA8EA) - 1703887062) ^ ((v125 ^ 0x4AD519E2) + 1508576802) ^ ((v125 ^ 0x7B46CF3E) + 1752750334));
  LODWORD(v39) = HIDWORD(v39);
  v126 = (v39 >> 11) + v124;
  *v1 += (((v120 ^ 0x85) - 98) ^ ((v120 ^ 0x5B) + 68) ^ ((v120 ^ 0x53) + 76)) + 106;
  v1[1] += (((BYTE1(v120) ^ 0x4F) - 16) ^ ((BYTE1(v120) ^ 2) - 93) ^ ((BYTE1(v120) ^ 0x5E) - 1)) + 76;
  v1[8] = v1[8] + (((HIBYTE(v120) ^ 0x23) + 51) ^ ((HIBYTE(v120) ^ 0xA6) - 72) ^ ((HIBYTE(v120) ^ 0xE6) - 8)) - 115;
  v1[9] = v1[9] + (((BYTE2(v120) ^ 0x7B) - 95) ^ ((BYTE2(v120) ^ 0xDE) + 6) ^ ((BYTE2(v120) ^ 0xE) - 42)) - 113;
  v127 = (((((v121 + 973841729) >> 24) ^ 0x58E15B0A) + 1330264040) ^ ((((v121 + 973841729) >> 24) ^ 0x6FADF45C) + 2013698226) ^ ((((v121 + 973841729) >> 24) ^ 0x374CAF56) + 552059836)) - 256281736 + v126;
  LOBYTE(v91) = (v127 ^ 0xD1) & (2 * (v127 & 0x9A)) ^ v127 & 0x9A;
  LOBYTE(v123) = ((2 * (v127 ^ 0xE1)) ^ 0xF6) & (v127 ^ 0xE1) ^ (2 * (v127 ^ 0xE1)) & 0x7A;
  LOBYTE(v92) = v123 ^ 9;
  LOBYTE(v123) = v91 ^ 0x7B ^ (v123 ^ 0x70) & (4 * v91);
  LOBYTE(v123) = v127 ^ (2 * ((16 * v123) ^ v123 ^ ((16 * v123) ^ 0x30) & ((4 * v92) & 0x70 ^ 0x10 ^ ((4 * v92) ^ 0xE0) & v92)));
  v1[2] = v1[2] + (((v123 ^ 0x5D) + 62) ^ ((v123 ^ 0x7C) + 29) ^ ((v123 ^ 0x2D) + 78)) - 109;
  LOBYTE(v123) = (((((v121 + 973841729) >> 16) ^ 0x93) + 107) ^ ((((v121 + 973841729) >> 16) ^ 0x1A) - 28) ^ ((((v121 + 973841729) >> 16) ^ 0x89) + 113)) + 2 + (((BYTE1(v126) ^ 0x8D) - 102) ^ ((BYTE1(v126) ^ 0x4B) + 96) ^ ((BYTE1(v126) ^ 0xC6) - 45));
  LOBYTE(v123) = ((v123 ^ 0x5C) - 77) ^ v123 ^ ((v123 ^ 0x39) - 40) ^ ((v123 ^ 0x8F) + 98) ^ ((v123 ^ 0xFB) + 22);
  v1[3] = v1[3] + (((v123 ^ 0xB3) - 73) ^ ((v123 ^ 0x87) - 125) ^ ((v123 ^ 0x25) + 33)) - 21;
  LOBYTE(v123) = v124 - 8 + (((HIBYTE(v124) ^ 0x92) - 84) ^ ((HIBYTE(v124) ^ 0x1B) + 35) ^ ((HIBYTE(v124) ^ 0x89) - 79));
  LOBYTE(v120) = ((v123 ^ 0xC9) + 5) ^ v123 ^ ((v123 ^ 0x81) + 77) ^ ((v123 ^ 0xA4) + 106) ^ ((v123 ^ 0xDE) + 20);
  v1[4] = v1[4] + (((v120 ^ 0xD4) - 50) ^ ((v120 ^ 0x4F) + 87) ^ ((v120 ^ 0xA9) - 79)) - 44;
  v128 = (((HIWORD(v124) ^ 0x6AA36686) - 1742727606) ^ ((HIWORD(v124) ^ 0xE8B93319) + 440026071) ^ ((HIWORD(v124) ^ 0x821A559F) + 1889084753)) + ((((v124 >> 8) ^ 0x50CDB94B) + 218474979) ^ (((v124 >> 8) ^ 0x363CD626) + 1811203728) ^ (((v124 >> 8) ^ 0x66F16F6D) + 993624005)) - 660930997;
  LOBYTE(v120) = (2 * (v128 & 0x3B ^ 0xD2)) & 0x52 ^ v128 & 0x3B ^ 0xD2 ^ ((2 * (v128 & 0x3B ^ 0xD2)) ^ 0xA4) & (v128 ^ 0xE9);
  LOBYTE(v118) = (2 * (v128 ^ 0xE9)) & 0xD2 ^ 0x52 ^ ((2 * (v128 ^ 0xE9)) ^ 0xA4) & (v128 ^ 0xE9);
  LOBYTE(v120) = (4 * v120) & 0xD0 ^ v120 ^ ((4 * v120) ^ 0x48) & v118;
  result = 80;
  LOBYTE(v128) = v128 ^ (2 * ((16 * v120) & 0x50 ^ v120 ^ ((16 * v120) ^ 0x20) & ((4 * v118) & 0xD0 ^ 0x92 ^ ((4 * v118) ^ 0x48) & v118)));
  v1[5] = v1[5] + (((v128 ^ 0x2D) + 102) ^ ((v128 ^ 0xA8) - 31) ^ ((v128 ^ 0x9A) - 45)) - 88;
  v130 = v121 - 1868043940 + (((HIBYTE(v126) ^ 0xDBADF4CC) + 584434278) ^ ((HIBYTE(v126) ^ 0x34501E42) - 853006100) ^ ((HIBYTE(v126) ^ 0xEFFDEA8E) + 377871400));
  LOBYTE(v118) = (v130 ^ 0xB2) & (2 * (v130 & 0x3B)) ^ v130 & 0x3B;
  LOBYTE(v128) = ((2 * (v130 ^ 0xE0)) ^ 0xB6) & (v130 ^ 0xE0) ^ (2 * (v130 ^ 0xE0)) & 0xDA;
  LOBYTE(v130) = v130 ^ (2 * (((4 * (v128 ^ 0x49)) & 0xD0 ^ ((4 * (v128 ^ 0x49)) ^ 0x60) & (v128 ^ 0x49) ^ 0x40) & (16 * ((v128 ^ 0x90) & (4 * v118) ^ v118)) ^ (v128 ^ 0x90) & (4 * v118) ^ v118));
  v1[6] = v1[6] + (((v130 ^ 0xD) + 18) ^ ((v130 ^ 0x4A) + 87) ^ ((v130 ^ 0x7C) + 97)) - 40;
  v131 = (((HIWORD(v126) ^ 0xC2575612) - 972203472) ^ ((HIWORD(v126) ^ 0xDE50D3F0) - 636821554) ^ ((HIWORD(v126) ^ 0x1C0785E2) + 408783328)) + ((((v122 >> 8) ^ 0xE99DFD64) - 141890655) ^ (((v122 >> 8) ^ 0xC7A047B2) - 642297481) ^ (((v122 >> 8) ^ 0x2E3DBAD6) + 808102931));
  LOBYTE(v131) = (v131 - 3) ^ (3 - v131) ^ (v131 + 16) ^ (((v131 + 16) ^ 0xAB) + 72) ^ (((v131 + 16) ^ 0x47) - 84);
  v1[7] = v1[7] + (((v131 ^ 0xAE) - 25) ^ ((v131 ^ 0x87) - 48) ^ ((v131 ^ 0x3A) + 115)) - 92;
  return result;
}

uint64_t sub_10082CCBC()
{
  v4 = *(v1 + 24) - 0x22EE76987303CD22;
  v5 = *(v0 + 24) - 0x22EE769873046366 + ((v2 + 1235192993) & 0xB660D7E5);
  v6 = v4 < 0x169974A6;
  v7 = v4 > v5;
  if (v6 != v5 < 0x169974A6)
  {
    v7 = v6;
  }

  return (*(v3 + 8 * ((!v7 * (v2 - 12636)) ^ v2)))();
}

uint64_t sub_10082CDA4()
{
  v4 = v0 - 240907015 + (((*(v2 + 16) ^ 0xC0A5694C) + 1062901428) ^ ((*(v2 + 16) ^ 0x3569EF21) - 896134945) ^ (((v1 + 1506) | 0x8423) - 471455847 + (*(v2 + 16) ^ 0x1C19417C)));
  LODWORD(STACK[0x15D4]) = v4 ^ ((v4 ^ 0x3CCCF5) - 133335317) ^ ((v4 ^ 0x687708DF) - 1874414911) ^ ((v4 ^ 0xB07F2E35) + 1213109291) ^ ((v4 ^ 0xDFFAAFFF) + 667620833) ^ 0xEE1B82F1;
  return (*(v3 + 8 * (v1 + 42861)))();
}

uint64_t sub_10082CEB0()
{
  v3 = STACK[0x1448];
  v4 = *(STACK[0x1448] + 8);
  STACK[0x8E8] = STACK[0x1448] + 8;
  *(v2 - 256) = (634647737 * ((2 * (v0 & 0x3F49AC80) - v0 - 1061792901) ^ 0xAD207C87)) ^ 0x29F5104D;
  *(v2 - 248) = v4;
  (*(v1 + 415248))(v2 - 256);
  v5 = *(v3 + 112);
  v6 = STACK[0x1050];
  v7 = STACK[0x300];
  *(v2 - 208) = STACK[0xC08];
  *(v2 - 200) = v7;
  *(v2 - 256) = 0;
  *(v2 - 240) = v3 + 520;
  *(v2 - 232) = v5;
  *(v2 - 224) = 0;
  *(v2 - 216) = v6;
  *(v2 - 192) = (1012831759 * ((v0 - 2 * (v0 & 0x63361D80) - 482992763) ^ 0xF3A50B0F)) ^ 0x2B52;
  v8 = (*(v1 + 419272))(v2 - 256);
  return (*(v1 + 8 * ((453 * ((((((*(v2 - 248) + 371865839) | (-371865839 - *(v2 - 248))) >> 31) ^ 0x8050) & 1) == 0)) ^ 0xACE9)))(v8);
}

uint64_t sub_10082D020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38)
{
  *a38 = a34;
  a38[1] = *(a35 + 80);
  *(a35 + 80) = a37;
  *(a38[1] + 24) = a37;
  *(a38 - 2) = (v38 ^ 0x79C4BC1D8A402139) - *(a38 - 2);
  return (*(v39 + 8 * v38))();
}

uint64_t sub_10082D078@<X0>(char a1@<W3>, int a2@<W4>, int a3@<W5>, int a4@<W6>, int a5@<W7>, uint64_t a6@<X8>)
{
  v19 = (v8 + a4);
  v20 = (((a6 + v19) ^ *(*v18 + (*v16 & v15))) & (((v7 + 13285781) | a3) ^ a5)) * v14;
  v21 = (v20 ^ HIWORD(v20)) * v14;
  *(v6 + v19) = *(a6 + v19) ^ *(v10 + (v21 >> 24)) ^ *(v12 + (v21 >> 24)) ^ *((v21 >> 24) + v13 + 1) ^ v21 ^ (BYTE3(v21) * a1) ^ v11;
  return (*(v17 + 8 * (((v8 - 1 != v9) * a2) ^ v7)))();
}

uint64_t sub_10082D138()
{
  v6 = v0 ^ 0x7FB5F6EDEBBF9BBBLL;
  v7 = (2 * v0) & 0x1D77F3776;
  v8 = 634647737 * STACK[0x460];
  *(v5 - 232) = &STACK[0x1938];
  *(v5 - 256) = v8 + v6 + v7 - 0x4210042800A80022;
  *(v5 - 248) = v1;
  *(v5 - 240) = v8 + v3 + 31344;
  *(v5 - 236) = v8 + 158809485;
  v9 = (*(v4 + 8 * (v3 ^ 0xF70F)))(v5 - 256);
  return (*(v4 + 8 * (((*(v5 - 224) == v2) * (((v3 + 539055392) | 0x1802430) - 564205616)) ^ v3)))(v9);
}

uint64_t sub_10082D228()
{
  LODWORD(STACK[0x1B40]) = 0;
  LODWORD(STACK[0x15AC]) = v2;
  STACK[0x24C0] = *v0;
  return (*(v3 + 8 * v1))();
}

uint64_t sub_10082D2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(v9 + 368);
  *(v9 + 1256) = v10;
  LODWORD(STACK[0x8DC]) = STACK[0x6C4];
  return (*(a8 + 8 * (((1104 * (v8 ^ 0x14BB) + 4099 * (v8 ^ 0x14A6) - 3531) * (v10 == 0)) ^ v8)))();
}

uint64_t sub_10082D3A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, unint64_t a5@<X8>)
{
  v9 = *v7;
  STACK[0x910] = *(v8 + 8 * v5);
  STACK[0x2638] = v9;
  STACK[0x2640] = a5;
  return (*(v8 + 8 * ((27 * (v9 != 0)) ^ (v6 - 1650499819))))(a1, a2, 371891407, a3, a4, 2525398098, 4294967274, 2525398095);
}

uint64_t sub_10082D4D8@<X0>(uint64_t a1@<X8>, int8x16_t a2@<Q0>, int8x16_t a3@<Q1>, int8x16_t a4@<Q2>, int8x16_t a5@<Q3>, int8x16_t a6@<Q4>, int8x16_t a7@<Q5>, int8x16_t a8@<Q6>, int8x16_t a9@<Q7>)
{
  v26 = veorq_s8(a2, a6);
  v27 = veorq_s8(a3, a6);
  v28 = veorq_s8(a4, a6);
  v29 = veorq_s8(a5, a6);
  v30 = vandq_s8(veorq_s8(vandq_s8(vaddq_s64(a2, a2), a7), a8), a2);
  v31 = vandq_s8(veorq_s8(vandq_s8(vaddq_s64(a4, a4), a7), a8), a4);
  v32 = vandq_s8(veorq_s8(vandq_s8(vaddq_s64(a5, a5), a7), a8), a5);
  v33 = vandq_s8(veorq_s8(vaddq_s64(v29, v29), a9), v29);
  v34 = vandq_s8(veorq_s8(vaddq_s64(v28, v28), a9), v28);
  v35 = vandq_s8(veorq_s8(vaddq_s64(v26, v26), a9), v26);
  v36 = veorq_s8(vandq_s8(vshlq_n_s64(v32, 2uLL), v33), v32);
  v37 = veorq_s8(vandq_s8(vshlq_n_s64(v31, 2uLL), v34), v31);
  v38 = veorq_s8(vandq_s8(vshlq_n_s64(v30, 2uLL), v35), v30);
  v39 = veorq_s8(vandq_s8(vandq_s8(vshlq_n_s64(v35, 2uLL), v35), vshlq_n_s64(v38, 4uLL)), v38);
  v40 = veorq_s8(vandq_s8(vandq_s8(vshlq_n_s64(v34, 2uLL), v34), vshlq_n_s64(v37, 4uLL)), v37);
  v41 = veorq_s8(vandq_s8(vandq_s8(vshlq_n_s64(v33, 2uLL), v33), vshlq_n_s64(v36, 4uLL)), v36);
  v42 = veorq_s8(vaddq_s64(v39, v39), a2);
  v43 = veorq_s8(vaddq_s64(v40, v40), a4);
  v44 = veorq_s8(vaddq_s64(v41, v41), a5);
  v45 = veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v42, v15), v16), vaddq_s64(veorq_s8(v42, v17), v18)), vaddq_s64(veorq_s8(v42, v19), v20));
  v42.i64[0] = a5.i64[0] * v11;
  v46 = veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v43, v15), v16), vaddq_s64(veorq_s8(v43, v17), v18)), vaddq_s64(veorq_s8(v43, v19), v20));
  v43.i64[0] = a4.i64[0] * v11;
  v42.i64[1] = a5.i64[1] * v11;
  v43.i64[1] = a4.i64[1] * v11;
  v47 = veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v44, v15), v16), vaddq_s64(veorq_s8(v44, v17), v18)), vaddq_s64(veorq_s8(v44, v19), v20));
  v44.i64[0] = a3.i64[0] * v11;
  v48 = vaddq_s64(v45, v21);
  v49 = v48.i64[1];
  v50 = v48.i64[0];
  v51 = vaddq_s64(a2, v22);
  v52 = v51.i64[1];
  v44.i64[1] = a3.i64[1] * v11;
  v53 = v51.i64[0];
  v51.i64[0] = a2.i64[0] * v11;
  v51.i64[1] = a2.i64[1] * v11;
  v54 = vaddq_s64(v47, v21);
  v55 = vaddq_s64(v46, v21);
  v56 = v55.i64[1];
  v57 = v55.i64[0];
  v58 = vaddq_s64(a4, v22);
  v59 = v50 * v53;
  v60 = v58.i64[1];
  v61 = v57 * v58.i64[0];
  v62 = vaddq_s64(a5, v22);
  v63 = v54.i64[0] * v62.i64[0];
  v64 = vandq_s8(veorq_s8(vandq_s8(vaddq_s64(a3, a3), a7), a8), a3);
  v65 = vandq_s8(veorq_s8(vaddq_s64(v27, v27), a9), v27);
  v66 = veorq_s8(vandq_s8(vshlq_n_s64(v64, 2uLL), v65), v64);
  v67 = v56 * v60;
  v68 = veorq_s8(vandq_s8(vandq_s8(vshlq_n_s64(v65, 2uLL), v65), vshlq_n_s64(v66, 4uLL)), v66);
  v69 = v54.i64[1] * v62.i64[1];
  v70 = veorq_s8(vaddq_s64(v68, v68), a3);
  v62.i64[0] = v61;
  v62.i64[1] = v67;
  v71 = vaddq_s64(veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v70, v15), v16), vaddq_s64(veorq_s8(v70, v17), v18)), vaddq_s64(veorq_s8(v70, v19), v20)), v21);
  v66.i64[0] = v63;
  v72 = v71.i64[1];
  v66.i64[1] = v69;
  v73 = v71.i64[0];
  v76.val[0] = vaddq_s64(vaddq_s64(v42, v23), v66);
  v76.val[1] = vaddq_s64(vaddq_s64(v43, v23), v62);
  v71.i64[0] = v59;
  v74 = vaddq_s64(a3, v22);
  v71.i64[1] = v49 * v52;
  v74.i64[0] *= v73;
  v74.i64[1] *= v72;
  v76.val[2] = vaddq_s64(vaddq_s64(v44, v23), v74);
  v76.val[3] = vaddq_s64(vaddq_s64(v51, v23), v71);
  *(v10 - a1 + 39) = vrev64_s8(*&vqtbl4q_s8(v76, v24));
  return (*(v14 + 8 * (((v12 + a1 != 40) * v13) ^ v9)))(vaddq_s64(a2, v25), vaddq_s64(a3, v25), vaddq_s64(a4, v25), vaddq_s64(a5, v25));
}

uint64_t sub_10082D968()
{
  LODWORD(STACK[0x2264]) = v0 ^ 0x590AA455;
  LODWORD(STACK[0x1508]) = HIDWORD(v0) ^ 0x2DD21194;
  return (*(v1 + 41408))();
}

uint64_t sub_10082DA88()
{
  v3 = STACK[0x858];
  v4 = STACK[0x1128];
  *(STACK[0x1128] + 16) = STACK[0x17FC];
  v5 = v0 ^ 0x9B8C ^ LODWORD(STACK[0x1CE8]) ^ 0xE9D577D4;
  v4[5] = STACK[0xEF8];
  v4[6] = v5;
  v4[140] = v3 ^ v1;
  return (*(v2 + 8 * v0))();
}

uint64_t sub_10082DB2C()
{
  v4 = *(v1 + 64);
  v5 = v4 - 529774848;
  v6 = 11 * (((v2 + 2027) | 0x62609010) ^ 0x6260DF11) + (((v0 ^ 0x7990854E) - 2039514446) ^ ((v0 ^ 0xB14A27D2) + 1320540206) ^ ((v0 ^ 0x210F658D) - 554657165)) - 901683664;
  v7 = v4 > 0x1F93B8FF;
  v8 = v7 ^ (v6 < 0xE06C4700);
  v9 = v5 > v6;
  if (!v8)
  {
    v7 = v9;
  }

  return (*(v3 + 8 * ((39952 * v7) ^ v2)))();
}

uint64_t sub_10082DC0C@<X0>(__int16 a1@<W8>)
{
  LOWORD(STACK[0x15D2]) = a1;
  LODWORD(STACK[0x91C]) = v2;
  v5 = (a1 - 25184);
  v6 = ((((v1 ^ 0xCD48) + ((v3 + 22661) & 0x7B7A) + 12888) ^ ((v1 ^ 0x66F5) - 26357) ^ ((v1 ^ (v3 - 21378) & 0xF773 ^ 0x3F9) + 11349)) + 22393);
  v7 = (v5 < 0xDF63) ^ (v6 < 0xDF63);
  v8 = v5 > v6;
  if (v7)
  {
    v8 = v5 < 0xDF63;
  }

  return (*(v4 + 8 * ((226 * v8) ^ v3)))();
}

uint64_t sub_10082DD6C()
{
  LODWORD(STACK[0x19A4]) = STACK[0x20D4];
  LODWORD(STACK[0x1580]) = (((LODWORD(STACK[0x2208]) ^ 0x5E7BCEB7) - 1585172151) ^ ((LODWORD(STACK[0x2208]) ^ 0x3863E175) - 946069877) ^ ((LODWORD(STACK[0x2208]) ^ 0x8FCDE8D3) + 1882330925)) - (((LODWORD(STACK[0x2214]) ^ 0x201E0C83) - 538840195) ^ ((LODWORD(STACK[0x2214]) ^ 0x1E273058) - 505884760) ^ ((LODWORD(STACK[0x2214]) ^ 0xD7ECFBCA) + 672334902)) + 2083119349;
  return (*(v0 + 50680))();
}

uint64_t sub_10082E0FC()
{
  v4 = v1 - 0x22EE76982D4BB2D4;
  v5 = v0 - 0x22EE76982D4BB2D4;
  v6 = (v1 - 0x22EE76982D4BB2D4) < 0x5C518EF4;
  v7 = v4 > v5;
  if (v6 != v5 < ((v2 - 2114619655) & 0x7E09DF94) + 1548840804)
  {
    v7 = v6;
  }

  return (*(v3 + 8 * ((!v7 * (((v2 - 49185) | 0x100C) - 6217)) ^ v2)))();
}

uint64_t sub_10082E2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  *(v19 - 128) = &a16;
  *(v19 - 136) = v18 - 27423 - 1022166737 * ((((v19 - 136) | 0x71539E55) - ((v19 - 136) | 0x8EAC61AA) - 1901305430) ^ 0xCB437FC7) - 883380218;
  (*(v17 + 8 * (v18 + 3596)))(v19 - 136);
  *(v19 - 112) = v18 - 27423 - 17902189 * (((((v19 - 136) | 0x1507443C) ^ 0xFFFFFFFE) - (~(v19 - 136) | 0xEAF8BBC3)) ^ 0x64B7ADD3) + 4448;
  *(v19 - 128) = &a16;
  *(v19 - 120) = &a16;
  *(v19 - 136) = v16;
  *(v19 - 104) = a13;
  v20 = (*(v17 + 8 * (v18 + 3571)))(v19 - 136);
  return (*(v17 + 8 * (v18 - 27423)))(v20);
}

uint64_t sub_10082E3FC()
{
  LODWORD(STACK[0x14F4]) = LODWORD(STACK[0x1C2C]) + LODWORD(STACK[0x1BE8]) + LODWORD(STACK[0x14F4]) - 705533083;
  LODWORD(STACK[0x1238]) = v1;
  return (*(v3 + 8 * ((37170 * (v1 == v2)) ^ (v0 - 1650496797))))();
}

uint64_t sub_10082E450(uint64_t a1, unsigned int a2, int a3)
{
  v9 = (v4 | ((v4 < a2) << 32)) - 924524439;
  v10 = v9 < 0xB5EFF58F;
  v11 = v9 > v3 - 0x61E4F89AA7B67258;
  if ((v3 - 0x61E4F89AA7B67258) < 0xB5EFF58F != v10)
  {
    v11 = v10;
  }

  if (v11)
  {
    v6 = a3;
  }

  LODWORD(STACK[0x174C]) = v6;
  return (*(v8 + 8 * (((v6 != v7) * (((17 * (v5 ^ 0x445C) + 439) | 0x1509) - 5932)) ^ v5)))();
}

uint64_t sub_10082E75C()
{
  *STACK[0x1618] = v1;
  STACK[0x1428] = ((v0 - 1515137771) & 0x5A4F4DAA) + STACK[0x1428] - 18602;
  return (*(v2 + 8 * v0))();
}

uint64_t sub_10082E8D4()
{
  v3 = (((*(v1 + 16) ^ 0x9008BBA3) + 1878475869) ^ ((*(v1 + 16) ^ 0xE1F38252) + 504135086) ^ ((*(v1 + 16) ^ 0x982EFEE0) + 1741750560)) - 646612601;
  v4 = (((LODWORD(STACK[0x228C]) ^ 0xC1A88C20) + 1045918688) ^ ((LODWORD(STACK[0x228C]) ^ 0x9C395F97) + 1673961577) ^ (((((v0 - 785429358) & 0x2ED0DDE3) - 1270630557) ^ LODWORD(STACK[0x228C])) + 1270606682)) - 646612601;
  v5 = v3 < 0xEF9FB276;
  v6 = v3 > v4;
  if (v5 != v4 < 0xEF9FB276)
  {
    v6 = v5;
  }

  return (*(v2 + 8 * ((55 * v6) ^ v0)))();
}

uint64_t sub_10082E9F8()
{
  v3 = v0 == v1;
  LODWORD(STACK[0x2434]) = v0;
  LOBYTE(STACK[0x243B]) = v3;
  return (*(v2 + 8 * ((29 * v3) ^ 0x558Bu)))();
}

uint64_t sub_10082EAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  STACK[0x2050] = v7;
  LODWORD(STACK[0xE20]) = a5;
  STACK[0xD00] = v6;
  LODWORD(STACK[0x18B8]) = v5;
  return (*(v8 + 92960))(STACK[0x19F0], 3976926506, 371891407, 55, 95, 2525398098, 4294967274, 2525398095);
}

uint64_t sub_10082EC24()
{
  LODWORD(STACK[0xFE8]) = 992313642;
  v3 = *(STACK[0x1E48] + 4);
  v2 = STACK[0x1E48] + 4;
  STACK[0x2458] = *(STACK[0x1E48] + 8);
  LODWORD(STACK[0x2464]) = 79829760;
  STACK[0x2468] = v2;
  return (*(v1 + 8 * (v0 | (8 * (v3 != 0)))))();
}

uint64_t sub_10082ECC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(v7 + 8 * (v5 + 8912));
  *(v6 - 224) = a5;
  v9 = v8(1028);
  v10 = *(v6 - 200);
  *(v6 - 216) = 0;
  return (*(v10 + 8 * (((((6614 * (v5 ^ 0xA7E0) - 1214939481) & 0x7F7EFFBE) - 924116401) * (v9 != 0)) ^ v5)))();
}

uint64_t sub_10082EDF8()
{
  v4 = STACK[0xA08];
  v5 = STACK[0x1568] + (LODWORD(STACK[0x1EE4]) + LODWORD(STACK[0x1004]) - 1082847015);
  *(v3 - 256) = STACK[0x15F0];
  *(v3 - 248) = v4;
  *(v3 - 240) = v5;
  *(v3 - 232) = 29000 - 193924789 * (v1 ^ 0xB6BB3266);
  v6 = (*(v2 + 417976))(v3 - 256);
  return (*(v2 + 8 * ((25367 * (*(v3 - 228) == v0)) ^ 0x1772u)))(v6);
}

uint64_t sub_10082EF2C@<X0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, int a55)
{
  a55 = 128;
  v59 = 1012831759 * ((((v58 - 216) | 0xB6EF3AAD) - ((v58 - 216) | 0x4910C552) + 1225835858) ^ 0xA67C2C27);
  *(v58 - 188) = v59 ^ 0xB7467465;
  *(v58 - 184) = v59 + v57 - 1058792338;
  STACK[0x768] = &a55;
  STACK[0x770] = v55;
  STACK[0x778] = a1;
  v60 = (*(v56 + 8 * (v57 + 25826)))(v58 - 216);
  return (*(v56 + 8 * (((*(v58 - 192) == -371865839) * (((v57 - 24544) | 0x2022) ^ ((v57 - 26208) | 0x3140) ^ 0x1BF4)) ^ v57)))(v60);
}

uint64_t sub_10082F054(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *v9;
  v12 = (a7 + v7);
  *v12 = *(v9 - 1);
  v12[1] = v11;
  return (*(v10 + 8 * (((v8 != 0) * a2) ^ a1)))();
}

uint64_t sub_10082F088()
{
  v2 = STACK[0xF10] - 23414;
  v3 = LOBYTE(STACK[0x3987]) * (v0 - 74) - 5;
  v4 = v3 & 0x71 ^ 0xBE;
  v5 = (*(STACK[0x80C8] + 8) + (19 * LODWORD(STACK[0x17DC]) - 2109080871) % (LODWORD(STACK[0x9314]) - 495536354));
  v6 = *v5;
  LODWORD(v5) = 1864610357 * ((*(*STACK[0xE50] + (*v1 & 0x72D7ACF8)) ^ v5) & 0x7FFFFFFF);
  v7 = 1864610357 * (v5 ^ (v5 >> 16));
  *(STACK[0x56F8] + (LODWORD(STACK[0x7910]) - 301503014)) = v3 ^ v6 ^ *(STACK[0x7C8] + (v7 >> 24)) ^ *((v7 >> 24) + STACK[0x7C0] + 2) ^ *((v7 >> 24) + STACK[0x7D0] + 4) ^ v7 ^ (13 * BYTE3(v7)) ^ (2 * ((v3 ^ 4) & (2 * ((v3 ^ 4) & (2 * ((v3 ^ 4) & (2 * ((v3 ^ 4) & (2 * ((((((2 * v3) & 0xA | 5) & v3) << (((STACK[0xF10] - 60) & 0x1E) - 29)) ^ 0x74) & (v3 ^ 4) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ 0x2E;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_10082F224@<X0>(uint64_t a1@<X8>)
{
  *(v5 - 256) = (v1 - 1650505768) ^ (155453101 * (v3 ^ 0xE6261BCF));
  *(v5 - 248) = a1;
  v6 = (*(v4 + 8 * (v1 - 1650460022)))(v5 - 256);
  *(v2 + 360) = 0;
  return (*(v4 + 8 * (v1 - 1650496997)))(v6);
}

uint64_t sub_10082F28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = (((v7 - 1910288936) ^ 0xEC438F28) - 1650511891) & *(v8 + 68);
  *(v8 + v10) = -33;
  return (*(v9 + 8 * (((v10 > 0x37) * (((v7 - 1910288936) & 0x71DCFBAF) + 2343)) ^ v7)))(a1, a2, a3, a4, a5, a6, a7, 65);
}

uint64_t sub_10082F2F4@<X0>(uint64_t a1@<X8>)
{
  *v1 = v3;
  v5 = *(a1 + 8);
  v6 = v5 - 0x3CE25E0EC5200378;
  if (v5 - 0x3CE25E0EC5200378 < 0)
  {
    v6 = v5 - 0x3CE25E0EC5200375;
  }

  v7 = ((*(&STACK[0xD78] + (STACK[0xD78] & 3)) ^ 0x68u) % (((v6 >> 2) - (((v2 - 208283677) & 0xC6A3BD5 ^ 0xA0AB7741) & (2 * (v6 >> 2))) - 799691192) ^ 0xD055AE48) + 43) & 0x1FC;
  v8 = ((v7 ^ 0x203B063B) + 972102652) ^ ((v7 ^ 0xB8932817) - 1587989032) ^ ((v7 ^ 0x98A82E2C) - 2124270611);
  v9 = ((v5 ^ 0x9B4BEA59) - 1584130337) ^ v5 ^ ((v5 ^ 0x25E25899) + 524133407) ^ ((v5 ^ 0x403A92C7) + 2061856321) ^ ((v5 ^ 0x3BB3237F) + 23912441);
  return (*(v4 + 8 * ((40416 * ((((v9 ^ 0x5A6EAAA2) + 692836047) ^ ((v9 ^ 0x82E9DC1E) - 238247821) ^ ((v9 ^ 0x1DA775C4) + 1854015913)) - v8 + 1673830035 < 0x7FFFFFFF)) ^ v2)))();
}

uint64_t sub_10082F588()
{
  v2 = STACK[0xA98];
  STACK[0x2500] = STACK[0xA98];
  STACK[0x2508] = v2;
  LODWORD(STACK[0x2510]) = STACK[0x858];
  return (*(v1 + 8 * ((((7 * (v0 ^ 0x40BB8196)) ^ 0xBF447687) + v0) ^ (47141 * (v0 == -571347892)))))();
}

uint64_t sub_100830E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x13C8] = v7;
  LODWORD(STACK[0xD4C]) = v6;
  STACK[0xBB0] = v5;
  LODWORD(STACK[0x1504]) = v4;
  LOBYTE(STACK[0x1677]) = 0;
  STACK[0x1528] = &STACK[0x1564];
  STACK[0xEE0] = &STACK[0x1D60];
  LODWORD(STACK[0xCF8]) = 995194719;
  return (*(v9 + 8 * v8))(a1, a2, a3, a4, STACK[0x808]);
}

uint64_t sub_100830F60()
{
  LODWORD(STACK[0x18B0]) = *(v2 + 24);
  LODWORD(STACK[0x1978]) = v1;
  return (*(v3 + 8 * v0))();
}

uint64_t sub_100830F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(v9 + 328);
  STACK[0x5E8] = v10;
  return (*(a8 + 8 * (((((v8 - 1448261676) & 0x56527D7F) - 6519) * (v10 == 0)) ^ v8)))();
}

uint64_t sub_100831014()
{
  v5 = 1022166737 * ((v3 - 160) ^ 0xBA10E192);
  *(v3 - 152) = v0 - v5;
  *(v3 - 148) = v5 + v1 + 10260;
  *(v3 - 160) = v4;
  (*(v2 + 8 * (v1 ^ 0x9FBA)))(v3 - 160);
  return (*(v2 + 8 * (((*(v3 - 144) == 1497668682) * ((19 * (v1 ^ 0x5584)) ^ 0xE60)) ^ v1)))(1071644654, 3888086910, 2801633810);
}

uint64_t sub_100831128@<X0>(int a1@<W8>)
{
  v3 = (a1 ^ 0x626048DB) + 454534233 + (((LODWORD(STACK[0x1A28]) ^ 0x92E0B086) + 1830768506) ^ ((LODWORD(STACK[0x1A28]) ^ 0x2F32C222) - 791855650) ^ ((LODWORD(STACK[0x1A28]) ^ 0x5407B5B5) + ((a1 - 34759) ^ 0xABF85A89)));
  v4 = v3 < 0x93A2AD9A;
  v5 = v1 - 1818055270 < v3;
  if (v1 > 0x6C5D5265 != v4)
  {
    v5 = v4;
  }

  return (*(v2 + 8 * ((23058 * v5) ^ a1)))();
}

uint64_t sub_100831258()
{
  *(v4 - 256) = v2 + 1603510583 * (((v1 ^ 0xA2AFD505) - 2 * ((v1 ^ 0xA2AFD505) & 0x62339480) - 499936128) ^ 0xD747732E) + 2899;
  *(v4 - 248) = v0;
  v5 = (*(v3 + 8 * (v2 ^ 0xA60A)))(v4 - 256);
  *(STACK[0xCD8] + 104) = 0x427A3CD3E8C5DA2FLL;
  return (*(v3 + 8 * v2))(v5);
}

uint64_t sub_100831540@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x24D4]) = a1;
  v3 = STACK[0x1428];
  STACK[0x13F8] = &STACK[0x2720] + STACK[0x1428];
  STACK[0x1428] = v3 + 32;
  LODWORD(STACK[0xCCC]) = v1;
  return (*(v2 + 262912))();
}

uint64_t sub_100832414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, unint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  STACK[0xF68] = a52;
  STACK[0xEB8] = 0;
  return (*(v58 + 176880))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
}

uint64_t sub_100832620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, _DWORD *a8)
{
  v13 = STACK[0x860] + (v8 ^ 0xF50C5E0A) + v9 + LODWORD(STACK[0x1F88]) - 12363637;
  v14 = *v13;
  LODWORD(v13) = ((v13 ^ *(*v12 + (*a8 & v10))) & 0x7FFFFFFF) * a6;
  v15 = (v13 ^ WORD1(v13)) * a6;
  LOBYTE(v15) = *(STACK[0x738] + (v15 >> 24)) ^ v14 ^ *((v15 >> 24) + STACK[0x730] + 3) ^ *((v15 >> 24) + STACK[0x7B0] + 1) ^ v15 ^ (-107 * BYTE3(v15));
  LOBYTE(STACK[0x1747]) = (((v15 ^ 0xD2) - 54) ^ ((v15 ^ 0x95) - 113) ^ ((v15 ^ 0x47) + 93)) - ((((v9 - ((2 * v9) & 4) + 50) ^ 8) - 8) ^ (((v9 - ((2 * v9) & 4) + 50) ^ 0xD1) + 47) ^ (((v9 - ((2 * v9) & 4) + 50) ^ 0xEB) + 21)) - 42;
  return (*(v11 + 8 * (v8 - 1650500620)))();
}

uint64_t sub_1008327FC()
{
  v3 = (((LODWORD(STACK[0x2624]) ^ 0x3C369760) - 1010210656) ^ ((LODWORD(STACK[0x2624]) ^ 0xFEBB95AD) + 21260883) ^ ((LODWORD(STACK[0x2624]) ^ 0xC65C2F14 ^ (((v0 + 1856310316) & 0x27F9F) - 318460623)) - 727238108)) - 1697953090;
  v4 = v3 < 0xB0F583AD;
  v5 = v3 > (v1 ^ 0xC75BD2DE) - 1326087251;
  if ((v1 ^ 0xC75BD2DE) > 0x4F0A7C52 != v4)
  {
    v5 = v4;
  }

  return (*(v2 + 8 * (v0 | (4 * v5))))();
}

uint64_t sub_100832920()
{
  v5 = STACK[0x13B4];
  v6 = LODWORD(STACK[0x1D94]) - LODWORD(STACK[0x13B4]) - 1838073047;
  v7 = (v6 ^ 0xEEB320F0) & (2 * (v6 & 0x88C3B2F4)) ^ v6 & 0x88C3B2F4;
  v8 = ((2 * (v6 ^ 0xEFB44130)) ^ 0xCEEFE788) & (v6 ^ 0xEFB44130) ^ (2 * (v6 ^ 0xEFB44130)) & 0x6777F3C4;
  v9 = v8 ^ 0x21101044;
  v10 = (v8 ^ 0x4607C380) & (4 * v7) ^ v7;
  v11 = ((4 * v9) ^ 0x9DDFCF10) & v9 ^ (4 * v9) & 0x6777F3C0;
  v12 = (v11 ^ 0x557C300) & (16 * v10) ^ v10;
  v13 = ((16 * (v11 ^ 0x622030C4)) ^ 0x777F3C40) & (v11 ^ 0x622030C4) ^ (16 * (v11 ^ 0x622030C4)) & 0x6777F3C0;
  v14 = v12 ^ 0x6777F3C4 ^ (v13 ^ 0x67773000) & (v12 << 8);
  LODWORD(STACK[0x1CD4]) = v6 ^ (2 * ((v14 << 16) & 0x67770000 ^ v14 ^ ((v14 << 16) ^ 0x73C40000) & ((v13 << 8) & 0x67770000 ^ 0x470000 ^ ((v13 << 8) ^ 0x77308400) & v13))) ^ 0x6971926D;
  v15 = 634647737 * ((2 * ((v4 - 256) & 0x2317EEA0) - (v4 - 256) - 588770983) ^ 0xB17E3EA5);
  *(v4 - 216) = v15 + 787148885 * LODWORD(STACK[0x1B9C]) - 1156539758;
  *(v4 - 232) = v15 + 1473465215 * (v3 - v5 + ((v1 + 1650498731) ^ 0x3DA7F678)) - 421806705;
  *(v4 - 228) = (v1 + 865398921) ^ v15;
  v16 = v0 + (v5 - 1641840161);
  *(v4 - 224) = v16;
  *(v4 - 256) = &STACK[0x1CD4];
  *(v4 - 240) = v16;
  v17 = (*(v2 + 8 * (v1 + 39148)))(v4 - 256);
  return (*(v2 + 8 * ((46942 * (*(v4 - 248) == -371865839)) ^ v1)))(v17);
}

uint64_t sub_100832BC8()
{
  v3 = (v1 + 24);
  if (!v1)
  {
    v3 = STACK[0x7A0];
  }

  STACK[0x7E0] = v1;
  return (*(v2 + 8 * (((*v3 == 0) * (v0 - 1650475209)) ^ (v0 - 1650506730))))();
}

uint64_t sub_100832C20(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v19 = (v9 + v10 + a7);
  v20 = ((v19 ^ *(*v18 + (*v15 & v16))) & 0x7FFFFFFF) * ((v8 + a6) ^ a3);
  v21 = (v20 ^ HIWORD(v20)) * v14;
  *v19 = *(v12 + (v21 >> 24)) ^ *(a2 + v10 + a7) ^ *(v11 + (v21 >> 24) + 1) ^ *(v13 + (v21 >> 24) + 1) ^ v21 ^ (BYTE3(v21) * a4);
  return (*(v17 + 8 * (((v10 - 1 == a5) * a8) ^ v8)))();
}

uint64_t sub_100832CA8()
{
  STACK[0x25A8] = v1;
  STACK[0x25B0] = v0;
  STACK[0x25B8] = *(v1 + 8);
  return (*(v2 + 8 * (((*(v1 + 32) == LODWORD(STACK[0x26C])) * LODWORD(STACK[0x29C])) ^ 0x393A)))();
}

uint64_t sub_100832FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  v61 = STACK[0x1958];
  v62 = 297845113 * ((((v60 - 256) | 0x75A97C62) - ((v60 - 256) & 0x75A97C60)) ^ 0x29A60FC);
  *(v60 - 224) = ((((v58 - 18812) ^ LODWORD(STACK[0x191C]) ^ 0xC0559034) + 1068138342) ^ ((LODWORD(STACK[0x191C]) ^ 0x633E1171) - 1665012081) ^ ((v58 ^ 0x62608A78 ^ LODWORD(STACK[0x191C]) ^ 0x28DE86A8) - 1253988090)) - v62 + 1626363843;
  *(v60 - 240) = v61;
  *(v60 - 232) = v56;
  *(v60 - 248) = v62 + v58 - 17185;
  *(v60 - 256) = a56;
  v63 = (*(v59 + 8 * (v58 + 29054)))(v60 - 256);
  return (*(v59 + 8 * ((59582 * (*(v60 - 244) == v57)) ^ v58)))(v63);
}

uint64_t sub_1008331C4(uint64_t a1, uint64_t a2, int a3)
{
  v11 = ~v7 + v5;
  v12 = *(v4 + v11 - 15);
  v13 = *(v4 + v11 - 31);
  v14 = v3 + v11;
  *(v14 - 15) = v12;
  *(v14 - 31) = v13;
  return (*(v10 + 8 * ((((v8 ^ a2) + v7 == v6) * a3) ^ v9)))();
}

uint64_t sub_1008332D4@<X0>(int *a1@<X7>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v32 = *a1;
  v33 = *(*(a2 + 168) + 40) - (*(*v30 + (v32 & 0xFFFFFFFFF1F71F20)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x329F1AD0046BFA29uLL) > 0xFFFFFFFFDA280F1DLL;
  v34 = STACK[0x1878] - (*(*v30 + (v32 & 0xFFFFFFFFED9E3EB8)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x10D2D42CA170A687) > 0xFFFFFFFFDA280F1DLL;
  LODWORD(v32) = 1022166737 * a28 + v28 - 550522537;
  *(v31 - 220) = v32 - 3656;
  *(v31 - 240) = v32 - 15;
  *(v31 - 236) = v28 - 550522537 - 1022166737 * a28;
  *(v31 - 248) = -1022166737 * a28;
  *(v31 - 244) = 1022166737 * a28 + v28 + 782591974;
  *(v31 - 232) = v33 ^ v34 | (1022166737 * a28);
  *(v31 - 256) = 1022166737 * a28;
  v35 = (*(v29 + 8 * ((v28 + 1650502844) ^ 0x62601B40)))(v31 - 256);
  return (*(v29 + 8 * *(v31 - 224)))(v35);
}

uint64_t sub_1008333EC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  *(STACK[0x6C8] + 40) += ((a6 - 10539) ^ 0xC31DA1F13ADFFF51) + a5;
  v7 = *a3 == ((a6 + 9532) | 3u) + 0x3CE25E0EC51FB135;
  return (*(v6 + 8 * ((v7 | (8 * v7)) ^ a6)))();
}

uint64_t sub_10083345C()
{
  v4 = *(STACK[0xCD8] + 272);
  v5 = STACK[0x1F28];
  v6 = 353670337 * ((2 * (v1 & 0x5E2C1B20) - v1 + 567534812) ^ 0x95F21CE1);
  v7 = (((LODWORD(STACK[0x1574]) ^ 0x90EED1F8) + 1863396872) ^ ((LODWORD(STACK[0x1574]) ^ 0x265F6669) - 643786345) ^ ((LODWORD(STACK[0x1574]) ^ (2632 * (v0 ^ 0x1D31) + 1600381072)) - 1600417920)) - v6;
  *(v3 - 248) = v0 - v6 + 40590;
  *(v3 - 256) = v7 + 1051652780;
  *(v3 - 240) = v5;
  *(v3 - 232) = v4;
  v8 = (*(v2 + 8 * (v0 + 44416)))(v3 - 256);
  return (*(v2 + 8 * v0))(v8);
}

uint64_t sub_100833554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a17)
  {
    v19 = *(a4 + 32) == 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = v19;
  v21 = *(v18 + 8 * ((v20 * (((v17 ^ 0x3143) - 4020) ^ 0x72CD)) ^ v17));
  return v21(v21, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t sub_1008335A0()
{
  v1 = 634647737 * STACK[0xD90];
  v2 = -634647737 * LODWORD(STACK[0xD90]);
  v3 = STACK[0xDA0];
  LODWORD(STACK[0x10EFC]) = LODWORD(STACK[0xDA0]) - v1 + 12;
  LODWORD(STACK[0x10EE4]) = v3 + v1;
  v4 = STACK[0xF10];
  LODWORD(STACK[0x10EF8]) = STACK[0xF10] - v1 - 1230214699;
  v5 = LODWORD(STACK[0xD80]) - v1;
  LODWORD(STACK[0x10ED8]) = v2;
  LODWORD(STACK[0x10EDC]) = v5;
  STACK[0x10EF0] = 1189934578 - v1;
  STACK[0x10EE8] = v0 ^ v1;
  v6 = (*(STACK[0xF18] + 8 * (v4 + 16305)))(&STACK[0x10ED8]);
  return (*(STACK[0xF18] + 8 * SLODWORD(STACK[0x10EE0])))(v6);
}

uint64_t sub_1008336D0()
{
  v15 = *(v0 + 4 * (v3 - 3));
  v16 = *(v0 + 4 * (v3 - 8));
  v17 = (v15 ^ 0xAD44D829) & (2 * (v15 & v7)) ^ v15 & v7;
  v18 = ((2 * (((v1 - 1741684900) | 0x421224) ^ 0xA5378ECD ^ v15)) ^ 0xE622880A) & (((v1 - 1741684900) | 0x421224) ^ 0xA5378ECD ^ v15) ^ (2 * (((v1 - 1741684900) | 0x421224) ^ 0xA5378ECD ^ v15)) & v4;
  v19 = v18 ^ 0x11114405;
  v20 = (v18 ^ 0x62000000) & (4 * v17) ^ v17;
  v21 = ((4 * v19) ^ 0xCC451014) & v19 ^ (4 * v19) & v4;
  v22 = (v21 ^ 0xC0010000) & (16 * v20) ^ v20;
  v23 = ((16 * (v21 ^ 0x33104401)) ^ 0x31144050) & (v21 ^ 0x33104401) ^ (16 * (v21 ^ 0x33104401)) & 0xF3114400;
  v24 = v23 ^ 0xC2010405;
  v25 = (v16 ^ 0xEF16DE8C) & (2 * (v16 & v7)) ^ v16 & v7;
  v26 = ((2 * (v16 ^ 0xF797F69C)) ^ 0x7386D560) & (v16 ^ 0xF797F69C) ^ (2 * (v16 ^ 0xF797F69C)) & v6;
  v27 = ((4 * (v26 ^ 0x8412A90)) ^ 0xE70DAAC0) & (v26 ^ 0x8412A90) ^ (4 * (v26 ^ 0x8412A90)) & v6;
  v28 = v22 ^ 0xF3114405 ^ (v23 ^ 0x31104000) & (v22 << 8);
  v29 = (v27 ^ 0x21012A80) & (16 * ((v26 ^ 0x31824020) & (4 * v25) ^ v25)) ^ (v26 ^ 0x31824020) & (4 * v25) ^ v25;
  v30 = ((16 * (v27 ^ 0x18C24030)) ^ 0x9C36AB00) & (v27 ^ 0x18C24030) ^ (16 * (v27 ^ 0x18C24030)) & 0x39C36A80;
  v31 = v30 ^ 0x21C140B0;
  v32 = v29 ^ v6 ^ (v30 ^ 0x18022A00) & (v29 << 8);
  v33 = v15 ^ v16;
  v34 = *(v0 + 4 * (v3 - 14));
  v35 = (v34 ^ 0xAD549B8E) & (2 * (v34 & v7)) ^ v34 & v7;
  v36 = v28 << 16;
  v37 = v32 << 16;
  v38 = ((2 * (v34 ^ 0x39F59B9E)) ^ 0xEF420F64) & (v34 ^ 0x39F59B9E) ^ (2 * (v34 ^ 0x39F59B9E)) & v14;
  v39 = v32 ^ v28;
  v40 = (v38 ^ 0x63000120) & (4 * v35) ^ v35;
  v41 = ((4 * (v38 ^ 0x10A10092)) ^ 0xDE841EC8) & (v38 ^ 0x10A10092) ^ (4 * (v38 ^ 0x10A10092)) & 0xF7A107B0;
  v42 = (v41 ^ 0xD6800680) & (16 * v40) ^ v40;
  v43 = ((16 * (v41 ^ 0x21210132)) ^ 0x7A107B20) & (v41 ^ 0x21210132) ^ (16 * (v41 ^ 0x21210132)) & 0xF7A107A0;
  v44 = v42 ^ v14 ^ (v43 ^ 0x72000300) & (v42 << 8);
  v45 = v39 ^ v36 & 0x73110000 ^ v37 & v13;
  v46 = (v36 ^ 0x44050000) & ((v24 << 8) & 0xF3110000 ^ 0x62110000 ^ ((v24 << 8) ^ 0x11440000) & v24) ^ (v37 ^ 0x6AB00000) & ((v31 << 8) & v13 ^ 0x38810000 ^ ((v31 << 8) ^ 0x436A0000) & v31);
  v47 = *(v0 + 4 * (v3 - 16));
  v48 = (v44 << 16) & v8 ^ v44 ^ ((v44 << 16) ^ 0x7B20000) & (((v43 ^ 0x85A10492) << 8) & v8 ^ 0x56A00000 ^ (((v43 ^ 0x85A10492) << 8) ^ 0x21070000) & (v43 ^ 0x85A10492));
  v49 = (v47 ^ 0xEC54592A) & (2 * (v47 & v7)) ^ v47 & v7;
  v50 = ((2 * (v47 ^ 0xE47D592A)) ^ 0x54538A0C) & (v47 ^ 0xE47D592A) ^ (2 * (v47 ^ 0xE47D592A)) & v10;
  v51 = v45 ^ v46;
  v52 = ((4 * (v50 ^ 0x2A284502)) ^ 0xA8A71418) & (v50 ^ 0x2A284502) ^ (4 * (v50 ^ 0x2A284502)) & v9;
  v53 = v34 ^ (2 * v48);
  v54 = v52 ^ 0x208C106;
  v55 = (v52 ^ 0x28210400) & (16 * ((v50 ^ 0x8000) & (4 * v49) ^ v49)) ^ (v50 ^ 0x8000) & (4 * v49) ^ v49;
  v56 = v33 ^ (2 * v51);
  v57 = ((16 * v54) ^ 0xA29C5060) & v54 ^ (16 * v54) & v9;
  v58 = v57 ^ 0x8218506;
  v59 = v55 ^ v10 ^ (v57 ^ 0x22084000) & (v55 << 8);
  v60 = v53 ^ 0x28837195 ^ ((v56 ^ 0x44A65D6A) - ((2 * (v56 ^ 0x44A65D6A)) & 0xDABC5BA) + 114680541);
  HIDWORD(v61) = v47 ^ (2 * ((v59 << 16) & v11 ^ v59 ^ ((v59 << 16) ^ 0x45060000) & ((v58 << 8) & v11 ^ 0x2280000 ^ ((v58 << 8) ^ 0x29C50000) & v58))) ^ 0x2F1406F0 ^ (v60 - (v5 & (2 * v60)) - 1257041712);
  LODWORD(v61) = HIDWORD(v61);
  *(v0 + 4 * (v2 - 1363958466)) = ((v61 >> 31) ^ 0xF3FF6BDC) + 1034680312 + ((2 * (v61 >> 31)) & 0xE7FED7B8);
  return (*(v12 + 8 * ((235 * ((v2 - 1363958465) < 0x50)) ^ v1)))();
}

uint64_t sub_100833FE0(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int64x2_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8)
{
  v26.i64[0] = v14 + v11 + 3;
  v26.i64[1] = v14 + v11 + 2;
  v27.i64[0] = v14 + v11 + 5;
  v27.i64[1] = v14 + v11 + 4;
  v28.i64[0] = v14 + v11 + 7;
  v28.i64[1] = v14 + v11 + 6;
  v29.i64[0] = v14 + v11 + 1;
  v30 = STACK[0x3A8];
  v29.i64[1] = v13 + v11 + v9;
  v31 = vandq_s8(v29, a1);
  v32 = vandq_s8(v28, a1);
  v33 = vandq_s8(v27, a1);
  v34 = vandq_s8(v26, a1);
  v35 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL), a3);
  v36 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL), a3);
  v37 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL), a3);
  v38 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL), a3);
  v39 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v37, v37), a4), v37), a5);
  v40 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v38, v38), a4), v38), a5);
  v41 = veorq_s8(v40, a6);
  v42 = veorq_s8(v39, a6);
  v43 = veorq_s8(v39, a7);
  v44 = veorq_s8(v40, a7);
  v45 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), v43), a8);
  v46 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL), v44), a8);
  v47 = vsraq_n_u64(vshlq_n_s64(v43, 3uLL), v43, 0x3DuLL);
  v48 = veorq_s8(v46, vsraq_n_u64(vshlq_n_s64(v44, 3uLL), v44, 0x3DuLL));
  v49 = veorq_s8(v45, v47);
  v50 = vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL);
  v51 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), v49);
  v52 = veorq_s8(vaddq_s64(v50, v48), v15);
  v53 = vsraq_n_u64(vshlq_n_s64(v48, 3uLL), v48, 0x3DuLL);
  v54 = vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL);
  v55 = veorq_s8(v51, v15);
  v56 = veorq_s8(v55, v54);
  v57 = veorq_s8(v52, v53);
  v58 = vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL);
  v59 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v57);
  v60 = veorq_s8(vaddq_s64(v58, v56), v16);
  v61 = vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL);
  v62 = veorq_s8(v59, v16);
  v63 = veorq_s8(v62, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v64 = veorq_s8(v60, v61);
  v65 = vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL);
  v66 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v64);
  v67 = veorq_s8(vaddq_s64(v65, v63), v17);
  v68 = veorq_s8(v66, v17);
  v69 = vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL);
  v70 = veorq_s8(v68, vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL));
  v71 = veorq_s8(v67, v69);
  v72 = vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL);
  v73 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v71);
  v74 = vaddq_s64(v72, v70);
  v75 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v74, v74), v18), v74), v19), v20);
  v76 = vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL);
  v77 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v73, v73), v18), v73), v19), v20);
  v78 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v79 = veorq_s8(v75, v76);
  v80 = vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL);
  v81 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v79);
  v82 = veorq_s8(vaddq_s64(v80, v78), v21);
  v83 = veorq_s8(v81, v21);
  v84 = vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL);
  v85 = veorq_s8(v83, vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL));
  v86 = veorq_s8(v82, v84);
  v87 = vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL);
  v88 = vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL);
  v89 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v36, v36), a4), v36), a5);
  v90 = vaddq_s64(v88, v86);
  v91 = vaddq_s64(v87, v85);
  v125.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v90, v90), v22), v90), v23), v24), vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), a2)));
  v125.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v91, v91), v22), v91), v23), v24), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), a2)));
  v92 = veorq_s8(v89, a6);
  v93 = veorq_s8(v89, a7);
  v94 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v93), a8);
  v95 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v96 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95), v15);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v98 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97), v16);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v100 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99), v17);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101);
  v103 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v102, v102), v18), v102), v19), v20);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104), v21);
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL)));
  v107 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v35, v35), a4), v35), a5);
  v125.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v106, v106), v22), v106), v23), v24), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), a2)));
  v108 = veorq_s8(v107, a6);
  v109 = vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL);
  v110 = veorq_s8(v107, a7);
  v111 = veorq_s8(vaddq_s64(v109, v110), a8);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112), v15);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v115 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114), v16);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116), v17);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v119, v119), v18), v119), v19), v20);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), v21);
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL)));
  v125.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v123, v123), v22), v123), v23), v24), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), a2)));
  *(v14 + v11) = vrev64_s8(*&vqtbl4q_s8(v125, v25));
  return (*(v30 + 8 * (((v12 == v11) * v8) ^ v10)))();
}

uint64_t sub_100834538@<X0>(unint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  STACK[0x4D0] = *(v3 + 8 * a3);
  STACK[0x6A8] = &STACK[0x40C];
  STACK[0x6B0] = a1;
  STACK[0x508] = a1;
  LODWORD(STACK[0x4A4]) = a2;
  STACK[0x410] = 0;
  return (*(v3 + 8 * (a3 ^ 0x8B4E ^ (a3 + 1246))))();
}

uint64_t sub_1008345D0()
{
  *(v7 - 120) = (v5 + 13737) ^ (353670337 * (v6 ^ 0xB421F83D));
  *(v7 - 136) = v1;
  *(v7 - 128) = v0;
  v8 = (*(v2 + 8 * (v5 + 26277)))(v7 - 136);
  return (*(v2 + 8 * (((v4 == (v3 ^ 0x8CC3)) * (v5 + 36107)) ^ v5)))(v8);
}

uint64_t sub_100834754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v12 = *(v9 + 64);
  v11 = *(v9 + 68);
  *(v9 + 56) = 8 * v11 - ((v11 << (v8 + 50)) & 0xB0) + 95;
  *(v9 + 57) = (v11 >> 5) - ((v11 >> 4) & 0xBE) + 95;
  *(v9 + 58) = (v11 >> 13) - ((v11 >> 12) & 0xBE) + 95;
  *(v9 + 59) = (v11 >> 21) - ((v11 >> 20) & 0xBE) + 95;
  *(v9 + 60) = (__PAIR64__(v12, v11) >> 29) + (a8 | ~(2 * (__PAIR64__(v12, v11) >> 29))) + 96;
  *(v9 + 61) = (v12 >> 5) - ((v12 >> 4) & 0xBE) + 95;
  *(v9 + 62) = (v12 >> 13) - ((v12 >> 12) & 0xBE) + 95;
  *(v9 + 63) = (v12 >> 21) - ((v12 >> 20) & 0xBE) + 95;
  return (*(v10 + 8 * v8))();
}

uint64_t sub_100834820()
{
  LODWORD(STACK[0x219C]) = STACK[0x20D4];
  v1 = *(STACK[0xE88] + 32) + 516746789;
  LODWORD(STACK[0x21A0]) = ((v1 ^ 0xEADA3BFF) + 199830059) ^ v1 ^ ((v1 ^ 0xF016508A) + 287654240) ^ ((v1 ^ 0xFB797AA1) + 441084789) ^ ((v1 ^ 0xFF79FFFE) + 508227116) ^ 0xE50CDAC1;
  return (*(v0 + 40672))();
}

uint64_t sub_100834B5C(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, __n128 a34)
{
  v35 = 20695 * (a9 ^ 0x1507u);
  STACK[0x410] = v35;
  return (*(a3 + 8 * (((((a9 ^ 0x1507) + 41388) ^ 0x914 ^ v35) * (v34 == a1)) ^ a9)))(0xEB690A0067A58754, a2, a26, a4, a34);
}

uint64_t sub_100835070(uint64_t a1, char a2)
{
  v13 = *(v8 + (((((a2 ^ 4) + 7) ^ a2) ^ ((a2 ^ 0xF9) - 85 + ((v11 - 50) & 0xE3))) & 0xF ^ 0xDLL)) & 7;
  v14 = 9 * ((((*(v8 + v9) ^ 0xBE) + 66) ^ ((*(v8 + v9) ^ 4) - 4) ^ ((*(v8 + v9) ^ 0xE5) + 27)) + (((v13 ^ 0xDC) + 34) ^ ((v13 ^ 0x9E) + 100) ^ ((v13 ^ 0x45) - 71)));
  v15 = v14 - 104;
  v16 = (STACK[0x7E0] + v9);
  v17 = ((103 - v14) & 0x8A | 0x64) ^ (v14 - 104) & 0xCC;
  v18 = 1864610357 * ((*(*STACK[0x7F0] + (*v10 & 0x72D7ACF8)) ^ v16) & 0x7FFFFFFF);
  v19 = 1864610357 * (v18 ^ HIWORD(v18));
  *v16 = *(STACK[0x738] + (v19 >> 24)) ^ *((v19 >> 24) + STACK[0x730] + 3) ^ *((v19 >> 24) + STACK[0x7B0] + 1) ^ v15 ^ v19 ^ (-107 * BYTE3(v19)) ^ (2 * ((v15 ^ 8) & (2 * ((v15 ^ 8) & (2 * ((v15 ^ 8) & (2 * ((v15 ^ 8) & (2 * (v15 & (2 * v17) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ 0x46;
  v20 = *(v2 + (v7 + 1478232739) % (*v2 ^ 0xE9D5C711) + 4);
  v21 = ((v20 - ((2 * v20) & 0x4A)) << 16) - 2128281600;
  v22 = *(v8 + (((v6 ^ 8) + 2) & 0xE)) << 8;
  v23 = (v21 & 0x7A670000 ^ 0x1B7C0FF3 ^ (v21 ^ 0xFEFFFFFF) & ((*(v8 + v9) << 24) ^ 0x5A98D432)) & (v22 ^ 0x7FFF80F7);
  v24 = v22 & 0x2400;
  v25 = *(v8 + ((v3 + v5 * v4) & 0xF ^ (2 * (v3 + v5 * v4)) & 8 ^ 0xCu));
  v26 = 15536650 * (v25 & 0xFFFFFFCF ^ 0x22EE977F ^ (v23 ^ (v24 | 0x3C2F48F1)) & (v25 ^ 0x7FFFFFA0)) + 148441066;
  v27 = *(STACK[0x7A0] + v26 % ((*STACK[0x7A0] ^ 0xFF5FFEBF) + 10486081 + ((2 * *STACK[0x7A0]) & 0xFF7F)));
  v28 = (v27 ^ 0xF7FFFF37) + v26 + ((2 * v27) & 0x6E) + 134217929;
  if (v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  v30 = (v29 + ((v28 >> 1) + v28) * ((v28 >> 1) + v28) - (v28 >> 1) * (v28 >> 1) - v28 * v28) * v28;
  v31 = v30 >> 1;
  v32 = (v30 >> 1) + 37;
  if (v30)
  {
    v33 = 37;
  }

  else
  {
    v33 = 0;
  }

  v34 = v33 - v31 * v31 + v32 * v32;
  v35 = ((v28 ^ 0x57870000u) >> 16) ^ 0x87;
  v36 = (v28 >> 8) & 0x2548A4 | (((v28 >> 8) & 0x81100) - ((v28 >> 8) & 0x820409) + 1321490) & 0x8A1509 | (((v28 >> 8) & 0x102050) - ((v28 >> 8) & 0x408202) + 2180260) & 0x50A252;
  LOBYTE(v36) = v35 - 83 * v34 + v35 * v35 * v35 * v35 * v35 * v35 * v35 + v36 * v36 * v36 * v36 * v36 - 37;
  *(v8 + v9) = (v36 - 2 * (v36 & 1) + 1) ^ 0x5E;
  return (*(v12 + 8 * v11))();
}

uint64_t sub_100835488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v43 = v42 - 1;
  v44 = ((2 * (v40 ^ 0xDA55AEDF)) ^ 0x805D79B4) & (v40 ^ 0xDA55AEDF) ^ (2 * (v40 ^ 0xDA55AEDF)) & 0xC02EBCDA;
  v45 = ((((v39 - 35870) | 0x4820) + 888518566) & (2 * v40) ^ 0x1A7B1205) & v40;
  v46 = (4 * (v44 ^ 0x4022844A)) ^ 0xBAF360;
  v47 = v40 ^ (2 * (((4 * (v44 ^ 0x4022844A)) & 0x402EBCD0 ^ 0x2AB040 ^ v46 & (v44 ^ 0x4022844A)) & (16 * ((v44 ^ 0x800E1C52) & (4 * v45) ^ v45)) ^ (v44 ^ 0x800E1C52) & (4 * v45) ^ v45));
  STACK[0x570] = v43;
  v48 = (v47 ^ 0xC214AA48) - 819560802;
  LOBYTE(v47) = (((v47 ^ 0x91) + 69) ^ ((v47 ^ 0x48) - 98) ^ ((v47 ^ 0x66) - 76)) - 120;
  *(v41 + v43) = v47 * (v40 + 51) + 47 * (-115 * v47 - 125 * (v40 + 51)) - 121;
  v49 = *(STACK[0x3D0] + 8 * ((231 * (STACK[0x570] == 0)) ^ v39));
  STACK[0x380] = &STACK[0x5EC];
  STACK[0x2E8] = STACK[0x2D8];
  STACK[0x348] = v41;
  return v49(v49, v48, v46, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39);
}

uint64_t sub_10083576C()
{
  LODWORD(STACK[0x7E0]) = v0;
  v2 = (((*(*(STACK[0xCB0] + 16) + 8) ^ 0xE11008F5E0B0E9F8) + 0x1EEFF70A1F4F1608) ^ ((*(*(STACK[0xCB0] + 16) + 8) ^ 0xCBE448236F8877DLL) - 0xCBE448236F8877DLL) ^ ((*(*(STACK[0xCB0] + 16) + 8) ^ 0xE42F757BF9A5FCC3) + 0x1BD08A84065A033DLL)) + 0x981390C7B7E7299;
  v3 = (((STACK[0x2280] ^ 0xACACD48AC703A841) + 0x53532B7538FC57BFLL) ^ ((STACK[0x2280] ^ 0x74FA3CE74AA0AD59) - 0x74FA3CE74AA0AD59) ^ ((STACK[0x2280] ^ 0xD1D7D161A24E975ELL) + 0x2E282E9E5DB168A2)) + 0x981390C7B7E7299;
  v4 = (v2 < 0x4B90E053) ^ (v3 < 0x4B90E053);
  v5 = v2 < v3;
  if (v4)
  {
    v5 = v3 < 0x4B90E053;
  }

  return (*(v1 + 8 * ((!v5 | (32 * !v5)) ^ 0x7F1Eu)))();
}

uint64_t sub_1008359E0()
{
  v5 = *(v0 - 0x217E172EFA1E81CLL);
  v6 = 634647737 * ((((v4 - 256) | 0x68D68F66) - (v4 - 256) + ((v4 - 256) & 0x97297098)) ^ 0x540A09A);
  *(v4 - 256) = ((((*v2 ^ 0x95D0BCE) - 157092814) ^ ((*v2 ^ 0xD5E660A2) + 706322270) ^ ((*v2 ^ 0x356EAC7D) - 896445565)) - 54746966) ^ v6;
  *(v4 - 240) = &STACK[0x1CA4];
  *(v4 - 232) = v5;
  *(v4 - 248) = &STACK[0x1748];
  *(v4 - 216) = v2 + 1;
  *(v4 - 224) = 39777 - v6;
  v7 = (*(v3 + 8 * LODWORD(STACK[0x2C0])))(v4 - 256);
  return (*(v3 + 8 * ((11759 * (*(v4 - 208) == v1)) ^ 0x5626u)))(v7);
}

uint64_t sub_100835B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  STACK[0x2050] = v9;
  LODWORD(STACK[0xE20]) = a5;
  STACK[0xD00] = v8;
  LODWORD(STACK[0x18B8]) = v7;
  return (*(v10 + 8 * ((47408 * (STACK[0x1F18] == 0)) ^ 0x2262u)))(a1, a2, 946722720, 3348244351, 235, 1864610357, a7, STACK[0x800]);
}

uint64_t sub_100835D00(int a1)
{
  STACK[0x1B48] = STACK[0xBD0];
  STACK[0x19D8] = STACK[0x1CD8];
  LODWORD(STACK[0x15AC]) = v1;
  return (*(v2 + 8 * a1))();
}

uint64_t sub_100835E7C()
{
  v3 = (*(v2 + 8 * (v1 - 1650460073)))(v0);
  STACK[0x1F78] = 0;
  return (*(v2 + 8 * (v1 - 1650506716)))(v3, 1779346369, 570469675, 1080033346, 0x8BA7207FB97FB98ALL);
}

uint64_t sub_100835F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *v10;
  v14 = (a4 + v9);
  *v14 = *(v10 - 1);
  v14[1] = v13;
  return (*(a8 + 8 * (((v11 != 0) * v12) ^ v8)))();
}

uint64_t sub_100835FA4()
{
  LODWORD(STACK[0x1B84]) = v2;
  LODWORD(STACK[0x840]) = v1;
  STACK[0xAF8] = *(v3 + 8 * (v0 - 6026));
  return (*(v3 + 8 * (v0 - 17013 + ((v0 + 1295767417) & 0xB2C43DFE))))();
}

uint64_t sub_100836094(int a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0x620]) = v4;
  LODWORD(STACK[0x628]) = v3;
  LODWORD(STACK[0x630]) = a3;
  LODWORD(STACK[0x638]) = a1;
  return (*(STACK[0x6A0] + 8 * (LODWORD(STACK[0x690]) - 2764)))(2568564234, 653380006, 3120476965, 2959966558, 2325, 1355450032, 1807749832, 807676395);
}

uint64_t sub_100836170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *(a6 + 112);
  STACK[0x9D8] = v9;
  STACK[0x19C8] = a6 + 36;
  LODWORD(STACK[0x1938]) = v7;
  LODWORD(STACK[0xA3C]) = v7;
  LODWORD(STACK[0x1CA4]) = 1497668682;
  LODWORD(STACK[0x1B58]) = 1497668682;
  return (*(v8 + 8 * (((v9 == 0x217E172EFA1E81CLL) * ((v6 ^ 0x6260C170) - 4153)) ^ (v6 - 1650467555))))(a1, a2, a3, a4, a5, 1864610357);
}

uint64_t sub_1008363AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = (((LODWORD(STACK[0x2510]) ^ 0x864E360) - 140829536) ^ ((LODWORD(STACK[0x2510]) ^ 0x616CDF71) - 1634525041) ^ ((LODWORD(STACK[0x2510]) ^ 0x80DDFB00) + 2132935936)) - 633401030;
  LODWORD(STACK[0x7E0]) = v6;
  return (*(v5 + 8 * ((1995 * (v6 == a5)) ^ 0xBBFCu)))(0x4B26814AF1CFE90FLL, 0x5F8E9C1300000000, 0x438C041200000000, 0x5B4195CD00000000, 3836827901, 4294967259, 1926737144);
}

uint64_t sub_100836518@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 136) = v1;
  *(a1 + 8) = v3;
  *(a1 + 4) += ((v2 + 1648407452) | 0x200040) ^ 0x6260D053;
  return (*(v4 + 8 * v2))();
}

uint64_t sub_1008365FC()
{
  v6 = 193 * (((v2 - 1650498574) | 0x210) ^ 0x3643);
  v7 = v2 - 1650475742;
  LODWORD(STACK[0x1F54]) = v0;
  LODWORD(STACK[0x1304]) = v3;
  v8 = *v1;
  STACK[0xB70] = v8;
  if (v8)
  {
    v9 = v3 == v4;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  return (*(v5 + 8 * ((v10 * (v6 ^ 0x115A)) ^ v7)))();
}

uint64_t sub_100836D00()
{
  *STACK[0x6F0] += v0 ^ 0x6260D053;
  *(v3 - 256) = 0;
  *(v3 - 248) = v0 + 155453101 * (((v1 | 0x94D909B1) - (v1 | 0x6B26F64E) + 1797715534) ^ 0x72FF127E) - 1353723208;
  v4 = (*(v2 + 8 * (v0 - 1650460040)))(v3 - 256);
  return (*(v2 + 8 * (v0 - 1650499569)))(v4);
}

uint64_t sub_100836E30@<X0>(int a1@<W8>)
{
  STACK[0xAA8] = STACK[0x1728];
  v2 = *(v1 + 8 * (a1 ^ 0xBE88 ^ (853 * (a1 ^ 0x11BA))));
  STACK[0x1750] = *(v1 + 8 * a1);
  LODWORD(STACK[0x7E0]) = 62;
  return v2();
}

uint64_t sub_100836EA0@<X0>(uint64_t a1@<X8>, uint64_t a2, char a3)
{
  v7 = v3 - 38538;
  *(v6 - 128) = v3 - 1603510583 * ((~(v6 - 128) & 0x440BCE6D | (v6 - 128) & 0xBBF43190) ^ 0xD3D0FCC6) - 48369;
  *(v6 - 120) = a1;
  *(v6 - 112) = &a3;
  (*(v4 + 8 * (v3 + 3839)))(v6 - 128);
  return (*(v4 + 8 * v7))(v5);
}

uint64_t sub_10083709C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, char a28, char a29, char a30)
{
  v33 = (v30 ^ a4) - ((2 * (v30 ^ a4)) & 0xD41F04D2) - 368082327;
  a27 = (HIBYTE(v33) ^ 0xEA) - (((HIBYTE(v33) ^ 0xFFFFFFEA) << ((v32 - 46) ^ 0xAB)) & 0xBE) + 95;
  a28 = (BYTE2(v33) ^ 0xF) - ((2 * (BYTE2(v33) ^ 0xF)) & 0xBF) + 95;
  a29 = (BYTE1(v33) ^ 0x82) - ((2 * (BYTE1(v33) ^ 0x82)) & 0xBF) + 95;
  a30 = v33 ^ 0x36;
  return (*(v31 + 8 * ((v32 - 28297) ^ 0x8977)))(a1, a2, a3, &STACK[0x434], &a27);
}

uint64_t sub_100837294(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x400] = a1;
  STACK[0x410] = v8;
  return (*(a8 + 8 * (v9 - 33360 + v9 + 35079)))();
}

uint64_t sub_100837338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v39 = *(v38 + 8 * (((*(v37 + a6 + 0x5B05138ECEC83138 + 0x68188E626C17CB50) == v37) * ((v36 ^ 0x6260F4BF) + 14390)) ^ (v36 - 1650502501)));
  STACK[0x7A0] = a6;
  return v39(v39, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
}

uint64_t sub_10083756C()
{
  *(v4 - 248) = ((v1 + 1650508473) ^ 0xE344555B9658EFF4) + v0;
  *(v4 - 252) = v1 + 193924789 * ((~v2 & 0xD5B2008 | v2 & 0xF2A4DFF0) ^ 0xBBE0126E) + 23209;
  v5 = (*(v3 + 8 * (v1 + 48574)))(v4 - 256);
  return (*(v3 + 8 * v1))(v5);
}

uint64_t sub_1008376B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(STACK[0x7C0] + 24);
  STACK[0x6A8] = v9;
  return (*(a8 + 8 * (((v9 == 0) * (((v8 - 637178502) & 0x25FAA1BE) - 41166)) ^ v8)))();
}

uint64_t sub_100837794@<X0>(int a1@<W8>)
{
  STACK[0x7A0] = v1;
  STACK[0x798] = v3;
  *v3 = 307784835;
  return (*(v2 + 8 * (a1 - 1650472112)))(4294967262, 4294967236, 2159552174, 147, 2135416243, 10057, 39651, 319);
}

uint64_t sub_100837810(unint64_t a1)
{
  *a1 = 0x425D765000000001;
  *(a1 + 12) = 44;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v1;
  v4 = STACK[0x1D88];
  *(a1 + 32) = 0;
  *(a1 + 40) = v4;
  STACK[0x1D88] = a1;
  return (*(v3 + 8 * v2))();
}

uint64_t sub_10083799C@<X0>(uint64_t a1@<X6>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(v3 + 8 * ((v5 * ((((v2 + 1759000152) & 0x9727E6F6) + 1650494322) ^ 0x6260D055)) ^ v2)))();
}

uint64_t sub_100837A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, char a32, uint64_t a33, char a34, char a35)
{
  v39 = (((*v35 ^ 0x25611F6D) - 627122029) ^ ((*v35 ^ 0x44029A7E) - 1141021310) ^ ((*v35 ^ ((v36 - 1983) | 0x7448) ^ 0x88B63EDA) + 2001321470)) + 1737388791;
  v40 = 353670337 * ((2 * ((v38 - 168) & 0x2BC8B018) - (v38 - 168) + 1412911078) ^ 0xE016B7DB);
  *(v38 - 160) = &a35;
  *(v38 - 168) = (v36 + 10099) ^ v40;
  *(v38 - 152) = v39 ^ v40;
  *(v38 - 144) = &a32;
  *(v38 - 136) = &a35;
  (*(v37 + 8 * (v36 + 48362)))(v38 - 168);
  v41 = 634647737 * ((((v38 - 168) | 0xEA26078E) - ((v38 - 168) & 0xEA260788)) ^ 0x87B02872);
  *(v38 - 168) = v41 - 1431125376;
  *(v38 - 152) = v36 - v41 + 16808;
  *(v38 - 160) = &STACK[0x434];
  v42 = (*(v37 + 8 * (v36 + 47794)))(v38 - 168);
  return (*(v37 + 8 * (v36 ^ 0x671D)))(v42);
}

void sub_100837C68(uint64_t a1)
{
  v1 = *a1 + 906386353 * ((a1 - 2 * (a1 & 0x67FC9490) + 1744606352) ^ 0x56FD59B4);
  v2 = *(a1 + 40);
  v5 = *(a1 + 32);
  v12 = v1 + 1022166737 * ((&v10 - 2 * (&v10 & 0x2098670) + 34178673) ^ 0xB81967E3) + 9503;
  v10 = v5;
  v3 = *(&off_1010A0B50 + v1 - 20017) - 810145054;
  (*&v3[8 * (v1 ^ 0x9946)])(&v10);
  v7[0] = 0x3EA64EF000000082;
  v7[1] = &v8;
  v6[0] = 0x3EA64EF000000082;
  v6[1] = &v9;
  v11 = v1 - 353670337 * (((&v10 | 0xD5B98D57) - &v10 + (&v10 & 0x2A4672A8)) ^ 0x6198756A) - 8660;
  v13 = v2;
  v10 = v7;
  (*&v3[8 * v1 + 246728])(&v10);
  v4 = 1012831759 * ((&v10 - 2 * (&v10 & 0x7A71E6F8) + 2054285051) ^ 0x6AE2F071);
  v11 = 959188428 - v4;
  v12 = v4 ^ (v1 + 21522);
  v10 = v6;
  (*&v3[8 * v1 + 247104])(&v10);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100837EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x9D8]) = v9;
  *(v10 + 504) = *(a8 + 8 * v8);
  return (*(a8 + 8 * ((((v8 + 1162509736) & 0xBAB5BFBD) - 7553) ^ v8)))();
}

uint64_t sub_100838108(uint64_t a1)
{
  v2 = 1012831759 * ((~a1 & 0x75611FF2 | a1 & 0x8A9EE00D) ^ 0x65F20978);
  v3 = *(a1 + 32) - v2;
  v4 = *(a1 + 28) ^ v2;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *a1;
  v12[0] = 0x3EA64EF000000020;
  v12[1] = &v13;
  v8 = 139493411 * ((2 * (&v14 & 0x48A3E668) - &v14 + 928782738) ^ 0x3B71F8D7);
  v14 = v12;
  HIDWORD(v15) = v3 - v8 + 1058804377;
  LODWORD(v16) = v8 + 404415023;
  v17 = *(&off_1010A0B50 + (v3 ^ 0xC0E48C92)) - 58306846;
  v9 = *(&off_1010A0B50 + (v3 & 0x14133749)) - 810145054;
  (*&v9[8 * v3 + 0x1F8E230B0])(&v14);
  v10 = 1603510583 * ((2 * (&v14 & 0xD657BD8) - &v14 - 224754651) ^ 0x6541B68E);
  v22 = v10 - 432523081 + (((v4 ^ 0x7F6F73C1) - 2138010561) ^ ((v4 ^ 0x8D5885C8) + 1923578424) ^ ((v4 ^ 0x457182EC) - 1165066988));
  v18 = 0;
  v19 = 0;
  v20 = v3 + 1058789957 + v10;
  v21 = v7;
  v16 = v6;
  v17 = v12;
  v15 = 0;
  v23 = v5;
  result = (*&v9[8 * v3 + 0x1F8E23078])(&v14);
  *(a1 + 24) = v14;
  return result;
}

void sub_1008383B4(_DWORD *a1)
{
  v1 = *a1 - 155453101 * (((a1 | 0x15986693) - (a1 | 0xEA67996C) - 362309268) ^ 0xF3BE7D5C);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1008384E8@<X0>(int a1@<W8>)
{
  v3 = ((a1 - 12877) ^ 0xFFFEFFFDECFFFEB6) + (v1 ^ 0x654F6777FBFB3778) + ((v1 << ((a1 + 19) ^ 0x67u)) & 0x1F7F66EF0);
  STACK[0xB28] = v3;
  v4 = STACK[0x600];
  STACK[0xB30] = STACK[0x600];
  return (*(v2 + 8 * ((10384 * (v3 - v4 - 0x636C7683B1D9A29CLL < 0xFFFFFFFFFFFFFFF6)) ^ a1)))();
}

uint64_t sub_100838588@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 256) = (v1 + 14475) ^ (297845113 * (((v2 | 0xC9AE276F) + (~v2 | 0x3651D890)) ^ 0xBE9D3BF0));
  *(v4 - 248) = a1;
  v5 = (*(v3 + 8 * (v1 ^ 0x92C4)))(v4 - 256);
  STACK[0x9D0] = 0;
  return (*(v3 + 8 * v1))(v5);
}

uint64_t sub_100838770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, signed int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24)
{
  v27 = a24 > -144239021;
  v28 = (((v26 ^ 0xE2488E96) + 498561386) ^ ((v26 ^ 0x815D69EC) + 2124584468) ^ ((v26 ^ 0xFEA1BA4C) + (((v24 + 24895) | 0x48) ^ 0x15ECCF8))) + 642598626;
  v29 = v27 ^ (v28 < 144239020);
  v30 = v28 < a15;
  if (!v29)
  {
    v27 = v30;
  }

  return (*(v25 + 8 * ((16864 * v27) ^ v24)))();
}

uint64_t sub_1008388C0()
{
  v2 = v0 + 1650511715 + *(STACK[0x19D8] + 32) - 1302428823;
  v3 = (v2 ^ 0xCB222B41) & (2 * (v2 & 0xEB40AC40)) ^ v2 & 0xEB40AC40;
  v4 = ((2 * (v2 ^ 0xCDA22BC1)) ^ 0x4DC50F02) & (v2 ^ 0xCDA22BC1) ^ (2 * (v2 ^ 0xCDA22BC1)) & 0x26E28780;
  v5 = v4 ^ 0x22228081;
  v6 = (v4 ^ 0x4000300) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0x9B8A1E04) & v5 ^ (4 * v5) & 0x26E28780;
  v8 = (v7 ^ 0x2820600) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x24608181)) ^ 0x6E287810) & (v7 ^ 0x24608181) ^ (16 * (v7 ^ 0x24608181)) & 0x26E28780;
  v10 = v8 ^ 0x26E28781 ^ (v9 ^ 0x26200000) & (v8 << 8);
  LODWORD(STACK[0x22CC]) = v2 ^ (2 * ((v10 << 16) & 0x26E20000 ^ v10 ^ ((v10 << 16) ^ 0x7810000) & (((v9 ^ 0xC28781) << 8) & 0x26E20000 ^ 0x4600000 ^ (((v9 ^ 0xC28781) << 8) ^ 0x62870000) & (v9 ^ 0xC28781)))) ^ 0x4989615E;
  return (*(v1 + 8 * (v0 + 4937)))();
}

uint64_t sub_100838C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = STACK[0x183C];
  v74 = STACK[0x14D8];
  v75 = STACK[0x1168];
  v76 = 1112314453 * (((v70 | 0x8D2B79DB) - (v70 | 0x72D48624) + 1926530596) ^ 0x627D5302);
  *(v72 - 224) = STACK[0x1328] + 48;
  *(v72 - 232) = v76 + 1599993265 * (((v73 ^ 0xC0866F76) + 1064931466) ^ ((v73 ^ 0x9AC89F1) - 162302449) ^ ((v73 ^ 0x20FF2196) - 553591190)) - 1152241234;
  *(v72 - 252) = a70 ^ v76;
  LOWORD(STACK[0x2F40]) = -28075 * (((v70 | 0x79DB) - (v70 | 0x8624) - 31196) ^ 0x5302) + 3771;
  *(v72 - 248) = v74;
  *(v72 - 240) = v75;
  v77 = (*(v71 + 8 * a69))(v72 - 256);
  return (*(v71 + 96608))(v77);
}

uint64_t sub_100838F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  STACK[0x760] = v7;
  STACK[0x768] = a7;
  return (*(v8 + 8 * ((101 * (v9 != 0)) ^ 0xBC25u)))();
}

uint64_t sub_1008397F0(char a1, char a2, char a3, char a4, char a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, char a55)
{
  v62 = v56 - 1;
  v63 = (v57 ^ a5) & (2 * (v57 & a4)) ^ v57 & a4;
  v64 = (((v55 + a1) | a2) ^ (2 * (v57 ^ a3)) ^ a6) & (v57 ^ a3) ^ (2 * (v57 ^ a3)) & a7;
  v65 = v57 ^ (2 * (v64 & (4 * v64) & (16 * (v64 & (4 * v63) ^ v63)) ^ v64 & (4 * v63) ^ v63));
  v66 = (((v65 ^ v58) + v60) ^ ((v65 ^ v61) + 34) ^ ((v65 ^ 0x55) + 100)) + 20;
  *(&a55 + v62) = v66 * (v57 + a8) - 67 * (61 * v66 + 111 * (v57 + a8)) - 117;
  return (*(v59 + 8 * ((102 * (v62 == 0)) ^ v55)))();
}

uint64_t sub_10083A02C()
{
  STACK[0x478] = v3 - 0x3240C0231B29CA8BLL + (v4 + 4786);
  v7[55] = v1 + 80;
  v7[27] = v0;
  v7[102] = 0;
  v7[105] = 0;
  v7[123] = 0;
  LODWORD(STACK[0x63C]) = v2;
  LODWORD(STACK[0x6FC]) = 0;
  v7[146] = 0;
  v7[141] = 0;
  LODWORD(STACK[0x43C]) = v2;
  v8 = (*(v6 + 8 * (v4 ^ 0x597C)))();
  return (*(v6 + 8 * ((99 * (v5 != ((v4 + 1134223956) & 0xBC64AF5D ^ 0xE9D5E24C))) ^ v4)))(v8);
}

uint64_t sub_10083A18C()
{
  LODWORD(STACK[0x7A0]) = v2;
  LODWORD(STACK[0x7E0]) = v1;
  *(v0 + 8) = 0;
  v6 = (v0 + 8);
  *v0 = v3 >> 3;
  *(v0 + 4) = 0;
  v7 = ((v4 + 21997) ^ 0xA36E14AC) + 48 * (((v3 >> 2) & 0xEAF7EBE) + ((v3 >> 3) ^ 0x757BF5F));
  v8 = (*(v5 + 8 * (v4 ^ 0x8F88)))(((v7 ^ 0xBE6B952C) + 1115036403) ^ v7 ^ ((v7 ^ 0x45C0AE0) - 129923777) ^ ((v7 ^ 0xCC2E0253) + 808684942) ^ ((v7 ^ 0x75FBEDBE) - 1981390239) ^ 0x3E27021);
  STACK[0x1EA0] = v6;
  *v6 = v8;
  return (*(v5 + 8 * ((37 * (v8 == 0)) | v4)))();
}

uint64_t sub_10083A328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v10 + 696) = v8;
  LODWORD(STACK[0x848]) = 352184022;
  *(v10 + 216) = &STACK[0x8F0];
  LODWORD(STACK[0x61C]) = 1463862444;
  return (*(a8 + 8 * v9))();
}

uint64_t sub_10083A364()
{
  v2 = STACK[0xAD0] - 0x2882B6585C4417FBLL + (((v0 ^ 0xE2752B84493F55DDLL) + 0x1D8AD47BB6C0AA23) ^ ((v0 ^ 0x1769D0C12ECBAC72) - 0x1769D0C12ECBAC72) ^ ((v0 ^ 0xF51CFB458E213EBELL) + 0xAE304BA71DEC142)) + 0x1C366FDBALL;
  v3 = STACK[0xAC8] - 0x64923D9703D3622BLL;
  v4 = v2 < 0xD99136A9;
  v5 = v2 > v3;
  if (v3 < 0xD99136A9 != v4)
  {
    v5 = v4;
  }

  return (*(v1 + 8 * ((60 * !v5) ^ (STACK[0x318] + 4325))))();
}

uint64_t sub_10083A9D8()
{
  STACK[0x1020] = v3;
  STACK[0x1A10] = v0;
  STACK[0x1650] = v1;
  LODWORD(STACK[0x1234]) = v2;
  *(v6 - 252) = (v4 + 439623872) ^ (1022166737 * ((~(v6 - 256) & 0xB3537938 | (v6 - 256) & 0x4CAC86C0) ^ 0x94398AA));
  v7 = (*(v5 + 8 * (v4 ^ 0x447D)))(v6 - 256);
  return (*(v5 + 8 * ((14 * (LOBYTE(STACK[0x2F40]) == (((v4 + 64) | 0x28) - 42))) ^ v4)))(v7);
}

uint64_t sub_10083B424@<X0>(uint64_t a1@<X0>, int a2@<W2>, char a3@<W3>, uint64_t a4@<X8>)
{
  v13 = a1 - 1;
  v14 = ((a2 + v9) ^ v10) & v13;
  *(a4 + v13) = *(v4 + v13) ^ *(v7 + v14) ^ *(v8 + v14 + 4) ^ *(v6 + v14 + 4) ^ (v14 * v11) ^ a3;
  return (*(v12 + 8 * (((4 * (v13 == 0)) | (8 * (v13 == 0))) ^ v5)))();
}

uint64_t sub_10083B5E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = ((2 * v6) & 0xBFEFBDE6) + (v6 ^ 0xDFF7DEF3);
  v8 = (*(a2 + v7 + 537403661) << 24) | (*(a2 + v7 + 537403662) << 16) | (*(a2 + v7 + 537403663) << 8);
  v9 = *(a2 + v7 + 537403664);
  v10 = (((v8 - ((2 * v8) & 0x70B9E600) - 1201867930) ^ 0xFF5C17F2) & ((v9 - ((2 * v9) & 0xFFFFFFE7) - 2304525) ^ 0x232A0C) ^ (v9 - ((2 * v9) & 0xFFFFFFE7) - 2304525) & 0x9004136B ^ 0xD704F5F7) + v3;
  if ((v2 - 839615388) < 0xED8BBB4A != v10 > 0x127444B5)
  {
    v11 = v10 > 0x127444B5;
  }

  else
  {
    v11 = v10 - 309609654 > v2 - 839615388;
  }

  return (*(v4 + 8 * ((23 * v11) ^ (v5 + 45381))))(a1, v5);
}

uint64_t sub_10083B920@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 586084794) = v1;
  STACK[0x1FA8] = a1 ^ v2 ^ (STACK[0x1FA8] - 32);
  return (*(v4 + 8 * (v2 + 27401)))();
}

uint64_t sub_10083B9D0@<X0>(uint64_t a1@<X8>)
{
  LODWORD(STACK[0x7E0]) = v1;
  v7 = STACK[0x1EF0];
  v8 = STACK[0x17C0];
  v9 = STACK[0x1280] + v3;
  LODWORD(STACK[0x7A0]) = v4 - 7844;
  v10 = 17902189 * ((((v6 - 256) | 0xC872621C) - (v6 - 256) + ((v6 - 256) & 0x378D9DE0)) ^ 0x463D740C);
  *(v6 - 240) = (v4 + 9460) ^ v10;
  *(v6 - 216) = v8;
  *(v6 - 224) = (((v2 ^ 0x1E36E6C0) - 506914496) ^ ((v2 ^ 0x51E1197C) - 1373706620) ^ (((v4 - 7844) ^ 0x59FDD858) + (v2 ^ 0xA60238AD))) - v10 + 1737392428;
  *(v6 - 256) = a1;
  *(v6 - 248) = v7;
  *(v6 - 232) = v9;
  v11 = (*(v5 + 8 * (v4 ^ 0xF0E0)))(v6 - 256);
  return (*(v5 + 8 * v4))(v11);
}

uint64_t sub_10083BAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  v27 = v24 ^ 0x66EA;
  v28 = v26 - 144;
  *(v28 + 36) = (((2 * ((v26 + 112) & 0x50) - (v26 + 112) - 87) ^ 0x66) * v22) ^ 0x7F;
  *(v28 + 16) = v21;
  *(v28 + 24) = &a21;
  *(v28 + 8) = v23;
  *(v26 - 144) = ((2 * ((v26 - 144) & 0x75A07F50) - (v26 - 144) - 1973452631) ^ 0x6C799B66) * v22 + v27 + 6864;
  v29 = (*(v25 + 8 * (v27 ^ 0xFC51)))(v26 - 144);
  return (*(v25 + 8 * (((*(v26 - 112) == -371865839) * ((v27 + 7180) ^ 0x237E)) ^ v27)))(v29);
}

uint64_t sub_10083BB9C()
{
  v4 = (((v1 ^ 0x27D47D0E) - 1551174455) ^ ((v1 ^ 0xF356D43C) + 1997037051) ^ (((((2 * v0) ^ 0xC4C1AC08) + 1190529902) ^ v1) + ((2 * v0) ^ 0x6693179))) - 1771383930;
  v5 = (v2 > 0x536AF38A) ^ (v4 < 0xAC950C75);
  v6 = v4 < v2 - 1399518091;
  if (v5)
  {
    v6 = v2 > 0x536AF38A;
  }

  return (*(v3 + 8 * ((985 * v6) ^ (v0 - 1650487926))))();
}

uint64_t sub_10083BCC8@<X0>(int a1@<W8>)
{
  STACK[0x1F98] = *(v3 + 8 * v1);
  STACK[0x13B8] = 0;
  return (*(v3 + 8 * ((((((497 * (a1 ^ 0xBAA9)) ^ (v2 == 0)) & 1) == 0) * (((a1 ^ 0xBAA9) + 1650511936) ^ 0x6260D024)) ^ a1)))();
}

uint64_t sub_10083BE18()
{
  *v2 = v1;
  STACK[0x388] = v0;
  STACK[0x510] = v0;
  v4 = STACK[0x430];
  *STACK[0x410] = (*(STACK[0x430] + 8 * (v3 + 33167)))();
  return (*(v4 + 8 * v3))();
}

uint64_t sub_10083BED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(STACK[0x1354]) = LODWORD(STACK[0x7E0]) + LODWORD(STACK[0xA04]) - 1322354094 + 6 * (v4 ^ 0xE99);
  STACK[0x1E10] = *(v5 + 8 * v4);
  return (*(v5 + 8 * (v4 + 5377)))(a1, a2, a3, a4, 61, 1864610357, &off_1010A0B50, v6);
}

uint64_t sub_10083BF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v19 = 139493411 * ((v18 - 136) ^ 0xC2DE145);
  *(v18 - 136) = &a15;
  *(v18 - 128) = ((v17 + 8907) ^ v15 ^ 0xAD9E87B6) - v19 + ((2 * v15) & 0x5B3DDDDC) + 1987925372;
  *(v18 - 124) = (v17 - 7888) ^ v19;
  v20 = (*(v16 + 8 * (v17 + 33899)))(v18 - 136);
  return (*(v16 + 8 * v17))(v20);
}

void sub_10083C014(uint64_t a1)
{
  v1 = 297845113 * ((((2 * a1) | 0x4D91295E) - a1 - 650679471) ^ 0x51FB8831);
  if (*a1)
  {
    v2 = *(a1 + 40) + v1 == 338084108;
  }

  else
  {
    v2 = 1;
  }

  v7 = v2 || (*(a1 + 32) ^ v1) == 115567576 || (*(a1 + 36) ^ v1) == 1441106856 || *(a1 + 8) == 0 || *(a1 + 16) == 0;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_10083C140()
{
  v4 = 2 * (v1 ^ 0x8B17);
  v5 = *(v0 + 8);
  *(v3 + 792) = *(v2 + 8 * v4);
  return (*(v2 + 8 * (v4 ^ 0x1F7C ^ (10965 * ((v4 ^ 0xABBE4300) == v4 - 416169217)))))(v5);
}

uint64_t sub_10083C450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33)
{
  v35 = STACK[0x638];
  v36 = &STACK[0x6C0] + STACK[0x638];
  STACK[0x418] = v36;
  STACK[0x470] = (v36 + 16);
  STACK[0x520] = (v36 + 32);
  STACK[0x638] = v35 + 48;
  STACK[0x600] = 552;
  *(v34 - 144) = 23473 * ((v34 - 152) ^ 0xCD24) + 18064;
  *(v34 - 136) = &STACK[0x554];
  *(v34 - 152) = (a33 - 38216) ^ (906386353 * ((v34 - 152) ^ 0x3101CD24));
  v37 = (*(v33 + 8 * (a33 + 580)))(v34 - 152);
  v38 = (LOBYTE(STACK[0x554]) << 24) | (LOBYTE(STACK[0x555]) << 16) | (LOBYTE(STACK[0x556]) << 8);
  v39 = LOBYTE(STACK[0x557]) - ((LOBYTE(STACK[0x557]) << (((a33 ^ 0x6C) + 99) ^ 0x65)) & 0x1E6) - 2304525;
  LODWORD(STACK[0x4BC]) = v39 & 0x8004036B ^ 0x2ED122E6 ^ ((v38 - ((2 * v38) & 0x70B9E600) - 1201867930) ^ 0xFF5C17F2) & (v39 ^ 0x232A0C);
  return (*(v33 + 8 * ((225 * ((*(STACK[0x258] + 20) >> 3) & 1)) ^ a33)))(v37);
}

uint64_t sub_10083C684(uint64_t a1)
{
  v4 = *(v3 + 4 * v2 - 0x15E7D225CLL);
  v5 = (a1 + ((4 * (((v2 ^ 0x1DA9AD1A) + 902371955) ^ v2 ^ ((v2 ^ 0x150A6ECE) + 1030412711) ^ ((v2 ^ 0xFEFFFFFF) + 379537560) ^ (((367 * (v1 ^ 0xA27D) - 1581067587) ^ v2) + 161727445))) ^ 0x5E7D225CLL));
  *v5 = HIBYTE(v4) ^ 0xDA;
  v5[1] = BYTE2(v4) ^ 0x77;
  v5[2] = (BYTE1(v4) ^ 0x1E) - ((v4 >> 7) & 0xC2) - 31;
  v5[3] = v4 ^ 0xD5;
  return (*(STACK[0x228] + 8 * ((6424 * ((v2 - 1470056598) < 4)) ^ v1)))();
}

uint64_t sub_10083C7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, unsigned int a52, int a53, int a54, int a55, int a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62)
{
  v64 = v63 - 1188941766 + ((v63 - 1188941766) >> 15) - ((v63 - 1188941766 + ((v63 - 1188941766) >> 15)) >> 4);
  v65 = (v64 ^ 0xD08CDFF9) - ((v64 ^ 0xD08CDFF9) >> 13) + (((v64 ^ 0xD08CDFF9) - ((v64 ^ 0xD08CDFF9) >> 13)) >> 4);
  v66 = (v65 ^ (a52 + 32429) ^ 0x451CA06E) + ((v65 ^ (a52 + 32429) ^ 0x451CA06E) >> 10);
  v67 = v66 + (v66 >> 3);
  v68 = (v67 ^ 0x4DF1973E) + ((v67 ^ 0x4DF1973E) >> 13) + (((v67 ^ 0x4DF1973E) + ((v67 ^ 0x4DF1973E) >> 13)) >> 2);
  v69 = (v68 ^ 0x1A60AA8E) + ((v68 ^ 0x1A60AA8E) >> 10) - (((v68 ^ 0x1A60AA8E) + ((v68 ^ 0x1A60AA8E) >> 10)) >> 5);
  v70 = (v69 ^ 0xF059931A) - ((v69 ^ 0xF059931A) >> 9) - (((v69 ^ 0xF059931A) - ((v69 ^ 0xF059931A) >> 9)) >> 5);
  v71 = v70 - 2125686725 + ((v70 - 2125686725) >> 10) + ((v70 - 2125686725 + ((v70 - 2125686725) >> 10)) >> 5);
  v72 = v71 - 974628663 - ((v71 - 974628663) >> 15) + ((v71 - 974628663 - ((v71 - 974628663) >> 15)) >> 6);
  LODWORD(STACK[0x22C]) = a55 + (LODWORD(STACK[0x2F8]) ^ a56 ^ a54 ^ a62 ^ a51 ^ 0x2469C961);
  v73 = LODWORD(STACK[0x464]) ^ LODWORD(STACK[0x410]);
  v74 = STACK[0x440];
  LODWORD(STACK[0x40C]) = v73;
  LODWORD(STACK[0x2F8]) = (v73 ^ v74) >> 2;
  v75 = (STACK[0x220] - 0x3AB435EA6D3FCD27);
  LOBYTE(v71) = *v75;
  v76 = LODWORD(STACK[0x3D0]) ^ LODWORD(STACK[0x320]) ^ LODWORD(STACK[0x460]) ^ LODWORD(STACK[0x43C]) ^ v62 ^ v65 ^ v69 ^ v72 ^ ((v65 ^ LODWORD(STACK[0x460]) ^ LODWORD(STACK[0x43C]) ^ v69 ^ v72) >> 2) & 0xAA93E25;
  LODWORD(STACK[0x320]) = LODWORD(STACK[0x454]) ^ LODWORD(STACK[0x42C]) ^ LODWORD(STACK[0x448]) ^ 0xFB837F30;
  LODWORD(STACK[0x470]) = v67;
  LODWORD(STACK[0x468]) = v70;
  LODWORD(STACK[0x458]) = v72 - 1438077555 + ((v72 - 1438077555) >> 9) - ((v72 - 1438077555 + ((v72 - 1438077555) >> 9)) >> 3);
  v77 = *&v75[2 * (((v75[2 * (((v75[2 * ((((v71 ^ (2 - v71) ^ ((v71 ^ 0xC7) - 1)) ^ 2) + 1) & 3)] ^ 2) - 1) & 3)] ^ 2) + 1) & 3)];
  LODWORD(v77) = 733845783 - ((((v77 ^ -v77) ^ ((v77 ^ 1) - 1)) + 1) & 3);
  LODWORD(STACK[0x220]) = v76 ^ 0x72E09EC2;
  return (*(STACK[0x480] + 8 * a52))((((v77 ^ 0x14245212) + 133733231) ^ ((v77 ^ 0x61C4945C) + 1914199329) ^ ((v77 ^ 0x5E5D5F59) + 1300338214)) + 933487783);
}

uint64_t sub_10083CCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v10 = (v8 - 19765) | 0x1041;
  *(v9 - 224) = v10;
  v11 = v10 + 1647295698;
  v12 = *(v7 + 8 * (v8 ^ 0x9B8Du));
  STACK[0x3F0] = a7;
  v13 = v12(1032);
  STACK[0x4B8] = 0;
  LODWORD(STACK[0x48C]) = 0;
  *(v9 - 192) = 0;
  STACK[0x4A0] = 0;
  *(v9 - 248) = 0;
  *(v9 - 176) = 0;
  STACK[0x498] = 0;
  *(v9 - 256) = 0;
  *(v9 - 168) = 0;
  STACK[0x480] = 0;
  *(v9 - 208) = 0;
  *(v9 - 200) = 0;
  *(v9 - 240) = 0;
  *(v9 - 232) = 0;
  *(v9 - 184) = 0;
  STACK[0x4A8] = 0;
  STACK[0x490] = 0;
  STACK[0x478] = 0;
  *(v9 - 160) = 0;
  STACK[0x4B0] = 0;
  v14 = *(v7 + 8 * (((v13 == 0) * (v11 ^ 0x622FD168)) ^ v8));
  *(v9 - 148) = 1644243867;
  return v14();
}

uint64_t sub_10083CDC0()
{
  v3 = (*(v2 + 8 * (v0 ^ 0x926Fu)))(1028);
  v4 = *(v1 - 200);
  *(v1 - 216) = 0;
  return (*(v4 + 8 * (((v3 == 0) * (((v0 - 3916) ^ 0x3714AC31) - 924116356)) ^ v0)))();
}

uint64_t sub_10083CE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  v52 = 5 * (v50 ^ 0x6862);
  LODWORD(STACK[0x290]) = v52;
  return (*(STACK[0x5A0] + 8 * ((((((v50 - 1668596382) & 0x6374F5FE ^ 0xA1A6) & a50) == 0) * (v52 ^ 0x1ED5)) ^ v50)))(a1, v51 & 0xF);
}

uint64_t sub_10083CEC0()
{
  v4 = (*(v3 + 8 * (v0 + 40904)))((v2 - 547289382));
  STACK[0x1428] -= 1200;
  return (*(v3 + 8 * ((25914 * (v1 == ((v0 - 1494265283) & 0x5910BAB7) - 371880210)) ^ v0)))(v4);
}

uint64_t sub_10083CFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58, unsigned int a59)
{
  v61 = *(v59 + 36);
  LODWORD(STACK[0x25C4]) = v61;
  v62 = (((a59 - 35897) | 0x1429) ^ 0x1C51CEBE) + 48 * (((2 * v61) & 0x67FFEAA) + (v61 ^ 0x33FFF55));
  v63 = (*(v60 + 8 * (a59 + 15773)))(((v62 ^ 0xFDDE5E55) - 1167057936) ^ v62 ^ ((v62 ^ 0xDDB6AFA0) - 1709643237) ^ ((v62 ^ 0xEF96B444) - 1472663041) ^ ((v62 ^ 0x77AFFFF4) + 805419599) ^ 0xB851BA45);
  STACK[0x1E58] = v63;
  return (*(v60 + 8 * ((493 * (v63 != 0)) ^ a59)))();
}

uint64_t sub_10083D158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  v51 = STACK[0x4F0];
  LODWORD(STACK[0x590]) = a24 ^ 0xC5AC21AD;
  return (*(a8 + 8 * (v50 - 15259)))(v51, 290501942, v49 + a6 + 0xF1653025C8682D6, *(a8 + 8 * (v50 - 15259)), a5, 4294930283, 0x9E8189E31F9B64A8, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49);
}

uint64_t sub_10083D55C@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 1176);
  *(v2 + 440) = *(a1 + 8 * a2);
  return (*(a1 + 8 * ((a2 ^ 0x1B5F) + a2)))(v3);
}

uint64_t sub_10083D630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  v6 = (((v3 ^ 0xFD46C9AF) + 2031632490) ^ ((v3 ^ 0x12EDB011) - 1766639144) ^ (((a3 + 2111804723) ^ v3) - 108969647)) - 626644373;
  v7 = v6 < 0xF0D0635A;
  v8 = v6 > v4 - 254778534;
  if (v4 > 0xF2F9CA5 != v7)
  {
    v8 = v7;
  }

  return (*(v5 + 8 * ((31014 * v8) ^ a3)))(a1, a2, -v4);
}

uint64_t sub_10083D6EC(uint64_t a1, uint64_t a2)
{
  v6 = LODWORD(STACK[0x41C])++;
  *(STACK[0x3A0] - 775311879) = v6 + 1;
  v7 = *(a2 + v4);
  v8 = 906386353 * STACK[0x228];
  v9 = (v2 - 2129166175) ^ v8;
  *(v5 - 216) = v9;
  *(v5 - 172) = v9 ^ 5;
  *(v5 - 208) = v7 - v8;
  *(v5 - 180) = v8 + v2 - 2129170951;
  *(v5 - 176) = v8 + v2 - 486567692;
  *(v5 - 200) = v8 + 1;
  *(v5 - 192) = v8 ^ 0x13FF;
  v10 = (*(v3 + 8 * (v2 - 1287230284)))(v5 - 216);
  return (*(v3 + 8 * *(v5 - 184)))(v10);
}

uint64_t sub_10083D854@<X0>(int a1@<W5>, uint64_t a2@<X7>, uint64_t a3@<X8>, int8x16_t a4@<Q4>, int64x2_t a5@<Q5>, int8x16_t a6@<Q6>, int64x2_t a7@<Q7>)
{
  v28.i64[0] = v11 + v9 - 5;
  v28.i64[1] = v11 + v9 - 6;
  v29.i64[0] = v11 + v9 - 3;
  v29.i64[1] = v11 + v9 - 4;
  v30.i64[0] = v11 + v9 - 1;
  v30.i64[1] = v11 + v9 - 2;
  v31.i64[0] = v11 + v9 + (a2 ^ a3);
  STACK[0x590] = *(v11 + v9 - 8);
  v31.i64[1] = v11 + v9 - 8;
  v32 = vandq_s8(v31, v15);
  v33 = vandq_s8(v30, v15);
  v34 = vandq_s8(v29, v15);
  v35 = vandq_s8(v28, v15);
  v36 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v37 = vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL);
  v38 = vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL);
  v39 = vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL);
  v40 = vdupq_n_s64(v7);
  v41 = vaddq_s64(vorrq_s8(vsubq_s64(a5, v39), a6), vorrq_s8(vaddq_s64(v39, v14), a4));
  v42 = vaddq_s64(vorrq_s8(vsubq_s64(a5, v38), a6), vorrq_s8(vaddq_s64(v38, v14), a4));
  v43 = vsubq_s64(a7, vaddq_s64(vorrq_s8(vsubq_s64(a5, v36), a6), vorrq_s8(vaddq_s64(v36, v14), a4)));
  v44 = vsubq_s64(a7, vaddq_s64(vorrq_s8(vsubq_s64(a5, v37), a6), vorrq_s8(vaddq_s64(v37, v14), a4)));
  v45 = veorq_s8(v44, v16);
  v46 = veorq_s8(v43, v16);
  v47 = veorq_s8(v43, v22);
  v48 = veorq_s8(v44, v22);
  v49 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), v48);
  v50 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v47);
  v51 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v50, v50), v18), v50), v19), v17);
  v52 = vsraq_n_u64(vshlq_n_s64(v47, 3uLL), v47, 0x3DuLL);
  v53 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v49, v49), v18), v49), v19), v17);
  v54 = veorq_s8(v53, vsraq_n_u64(vshlq_n_s64(v48, 3uLL), v48, 0x3DuLL));
  v55 = veorq_s8(v51, v52);
  v56 = vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL);
  v57 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v55);
  v58 = veorq_s8(vaddq_s64(v56, v54), v20);
  v59 = veorq_s8(v57, v20);
  v60 = vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL);
  v61 = veorq_s8(v59, vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL));
  v62 = veorq_s8(v58, v60);
  v63 = vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL);
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v62);
  v65 = veorq_s8(vaddq_s64(v63, v61), v27);
  v66 = veorq_s8(v64, v27);
  v67 = vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL);
  v68 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v69 = veorq_s8(v65, v67);
  v70 = vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v69);
  v72 = vaddq_s64(v70, v68);
  v73 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v71, v23), vorrq_s8(v71, v25)), v25), v24);
  v74 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v72, v23), vorrq_s8(v72, v25)), v25), v24);
  v75 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v76 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v77 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL), v75), v21);
  v78 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v76), v21);
  v79 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v80 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v81 = veorq_s8(v77, v79);
  v82 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v83 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v81);
  v84 = veorq_s8(vaddq_s64(v82, v80), v26);
  v85 = vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL);
  v86 = veorq_s8(v83, v26);
  v87 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v88 = veorq_s8(v84, v85);
  v89 = vsubq_s64(a7, v42);
  v90 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v87), v13);
  v126.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v88), v13), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v40)));
  v126.val[1] = vshlq_u64(v90, vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), v40)));
  v91 = veorq_s8(v89, v16);
  v92 = veorq_s8(v89, v22);
  v93 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v92);
  v94 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v93, v93), v18), v93), v19), v17);
  v95 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v96 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95), v20);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v98 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97), v27);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99);
  v101 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v100, v23), vorrq_s8(v100, v25)), v25), v24);
  v102 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102), v21);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104), v26);
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL)));
  v107 = vsubq_s64(a7, v41);
  v126.val[0] = vshlq_u64(veorq_s8(v106, v13), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), v40)));
  v108 = veorq_s8(v107, v16);
  v109 = veorq_s8(v107, v22);
  v110 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109);
  v111 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v110, v110), v18), v110), v19), v17);
  v112 = vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL);
  v113 = vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL);
  v114 = veorq_s8(v111, v112);
  v115 = veorq_s8(vaddq_s64(v113, v114), v20);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116), v27);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v119, v23), vorrq_s8(v119, v25)), v25), v24);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), v21);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v124 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123), v26);
  v126.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL))), v13), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), v40)));
  *(v12 + v9) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v126, *&STACK[0x510])), STACK[0x590]);
  return (*(v8 + 8 * ((4088 * (v10 == 0)) ^ a1)))();
}

uint64_t sub_10083DD5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = STACK[0x4D8];
  LOWORD(STACK[0xB5E]) = v8;
  v10 = *(a8 + 8 * (v9 - 34468));
  LODWORD(STACK[0x520]) = v8;
  return v10();
}

uint64_t sub_10083DE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  v39 = 906386353 * ((((2 * (v38 - 144)) | 0x68D69F84) - (v38 - 144) + 1268035646) ^ 0x856A82E6);
  *(v38 - 136) = v36;
  *(v38 - 128) = v38 - 244;
  *(v38 - 120) = v39 + 1802115817 * v37 + (((v35 - 15260) | 0x1601) ^ 0x86A9C095);
  *(v38 - 116) = v39 + v35 + 1887937668;
  *(v38 - 144) = &a34 ^ 0x27001F5C07AC4566;
  v40 = (*(v34 + 8 * (v35 + 36642)))(v38 - 144);
  return (*(v34 + 8 * v35))(v40);
}

uint64_t sub_10083DF5C@<X0>(uint64_t a1@<X4>, unint64_t a2@<X8>)
{
  STACK[0x8C0] = a2;
  v4 = (*(a1 + 8 * (v2 + 3485)))(32);
  STACK[0x910] = v4;
  return (*(a1 + 8 * (((v4 != 0) * ((1283 * (((v2 - 23483) | 0x1492) ^ 0x75F7)) ^ 0xB892)) ^ v2)))();
}

uint64_t sub_10083E058@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a4 + 8);
  *v5 = -371865839;
  return (*(a5 + 8 * (((((a1 + 1754037433) & 0x9773CFA2 ^ 0xFFFF49A4) + (a1 ^ 0x94B)) * (v6 == 0)) ^ a1)))();
}

uint64_t sub_10083E0E8()
{
  v5 = v0 - 225408700 + ((v1 + 10089) ^ 0x445Fu);
  STACK[0x2488] = v5;
  return (*(v4 + 8 * ((44027 * (*(v2 + v5 * v3) == 0)) ^ v1)))();
}

uint64_t sub_10083E134@<X0>(int *a1@<X7>, uint64_t a2@<X8>)
{
  v8 = v4 ^ (2 * (((2 * v4) & (4 * (((2 * v4) & (((v3 - 65) ^ 0x95) + 29) ^ 0xF2) & v4)) ^ (2 * v4) & (((v3 - 65) ^ 0x95) + 29) ^ 0xF2) & v4)) ^ 0x76;
  v9 = (v5 - 1808768069);
  v10 = *(*v7 + (*a1 & 0xFFFFFFFFC76D189CLL)) + a2 + v9;
  *(a2 + v9) = (-78 * (a2 + v5 - 69)) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + ((v10 - 949151586) & (qword_1010C0540 ^ 0x7226FCCC))) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + ((v10 - 949151584) & (qword_1010C0540 ^ 0x7226FCCC))) ^ ((v2 ^ 0xE4DB7079) >> (v8 & 0x13) >> (v8 & 0xC ^ 4)) ^ 0x2C;
  return (*(v6 + 8 * (v3 ^ (32 * (v5 - (*(STACK[0x1DD0] + v9) != 0) != 1808768068)))))();
}

void sub_10083E30C(uint64_t a1)
{
  v1 = *(a1 + 16) ^ (155453101 * ((((2 * a1) | 0x490EF116) - a1 - 612857995) ^ 0xC2A16344));
  __asm { BRAA            X10, X17 }
}

uint64_t sub_10083E474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v17 - 136) = v16 - 1603510583 * ((((v17 - 136) | 0x6B55DE7E) - (v17 - 136) + ((v17 - 136) & 0x94AA2180)) ^ 0xFC8EECD5) + 7747;
  *(v17 - 112) = a14;
  *(v17 - 128) = &a15;
  v18 = (*(v15 + 8 * (v16 ^ 0x8C3F)))(v17 - 136);
  return (*(v15 + 8 * ((55578 * (((v16 + 6795) | 0x840u) + *(v17 - 120) - 989348093 < 0xCC122FF2)) ^ v16)))(v18);
}

uint64_t sub_10083E938@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a2)
  {
    v5 = v2 == 0;
  }

  else
  {
    v5 = 1;
  }

  v7 = v5 || a1 == 0;
  return (*(v4 + 8 * (((((v3 + 1340831056) ^ 0xF7FD7E47) + ((v3 + 1340831056) & 0xF7FD7EAE)) * v7) ^ v3)))();
}

uint64_t sub_10083E98C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X7>, char a4@<W8>)
{
  v11 = *(a2 + v4 - 1398246735) ^ v8;
  v12 = ((*(a2 + v4 + v5) ^ v8) << ((a1 - 24) ^ a4)) + ((*(a2 + v4 - 1398246737) ^ v8) << 16) + ((*(a2 + v4 + a3) ^ v8) << 8) + v11;
  *(v9 + 4 * (((((a2 ^ 0x4DB1EC4D) - 518414623) ^ a2 ^ ((a2 ^ 0x1983DEB8) - 1255429098) ^ ((a2 ^ 0x799A6018) - 718138698) ^ ((a2 ^ 0x7EFFDFBF) - 766005997)) >> 2) ^ 0x14D5E354)) = v12 - 2 * (v12 & v10 ^ v11 & 0xA) + v7;
  return (*(v6 + 8 * ((14111 * ((a2 - 1398246734) < 0x40)) ^ a1)))();
}

uint64_t sub_10083EBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(v19 - 104) = v18 + 1012831759 * a11 + 1051068835;
  *(v19 - 136) = a13;
  *(v19 - 128) = v15;
  *(v19 - 120) = v15;
  *(v19 - 112) = a15;
  v20 = (*(v16 + 8 * (v18 ^ 0x8E72)))(v19 - 136);
  return (*(v16 + 8 * ((13 * (((v18 ^ (((((v17 >> 1) & a12) - (v18 - 17741)) | (v18 - 17741 - ((v17 >> 1) & a12))) >> 31)) & 1) == 0)) | (v18 - 17741) ^ 0x44B2)))(v20);
}

uint64_t sub_10083ED74(uint64_t a1)
{
  v5 = v1;
  *a1 = v2 ^ 0xC2BA7ADE;
  *(a1 + 16) = 0;
  *(a1 + 4) = 0x21E23A8900000000;
  v6 = (*(v3 + 8 * (v1 ^ 0xBCF6)))((v1 - 330501688 + ((v1 + 1920100333) & 0xEFEDF1F6)) ^ (8 * (v2 ^ 0xC2BA7ADE)));
  *(a1 + 16) = v6;
  return (*(v3 + 8 * ((v6 == 0) | v5)))();
}

uint64_t sub_10083EEAC@<X0>(int a1@<W8>)
{
  v4 = LODWORD(STACK[0x2000])++;
  *(STACK[0x790] - 775311879) = v4 + 1;
  v5 = 1603510583 * ((((2 * (v3 - 256)) | 0xF73F070F4BA472C4) - (v3 - 256) + 0x4607C785A2DC69ELL) ^ 0xC46E946B32090BC9);
  *(v3 - 240) = *(v1 - 586084794) ^ v5;
  *(v3 - 248) = (a1 + 721127508) ^ v5;
  *(v3 - 256) = v5 ^ 0x13FF;
  *(v3 - 232) = (a1 + 721124263) ^ v5;
  *(v3 - 228) = a1 + 721127508 - v5 - 42;
  *(v3 - 224) = v5;
  *(v3 - 216) = a1 - v5 + 863218453;
  v6 = (*(v2 + 8 * (a1 - 1650460113)))(v3 - 256);
  return (*(v2 + 8 * *(v3 - 220)))(v6);
}

uint64_t sub_10083EFB0@<X0>(int a1@<W8>)
{
  v6 = 1022166737 * ((2 * (v3 & 0x63DE1BA0) - v3 + 471983194) ^ 0xA63105C8);
  *(v5 - 256) = v1;
  *(v5 - 248) = a1 - v6;
  *(v5 - 244) = v6 + v2 + 10897;
  v7 = (*(v4 + 8 * (v2 + 30775)))(v5 - 256);
  v8 = *(v5 - 240);
  LODWORD(STACK[0x1694]) = v8;
  return (*(v4 + 8 * (((v8 == ((v2 + 1650490762) ^ 0x3B244C18)) * (v2 - 21136)) ^ v2)))(v7);
}

uint64_t sub_10083F16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(v9 + 4);
  *(a1 + 20) = v10;
  return (*(a8 + 8 * ((230 * (v10 == v8 + 1520315038 + v8 + 14511)) ^ v8)))();
}

uint64_t sub_10083F1B8()
{
  *(v2 - 256) = (1603510583 * ((~v0 & 0x9332F03F | v0 & 0x6CCD0FC0) ^ 0x4E9C294)) ^ 0x810B;
  v3 = (*(v1 + 416392))(v2 - 256);
  return (*(v1 + 148840))(v3);
}

uint64_t sub_10083F2C4(uint64_t a1)
{
  v3 = STACK[0x8A8];
  *(v3 + 20) = *STACK[0x1170];
  *(v3 + 32) = a1;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_10083F324@<X0>(int a1@<W0>, int a2@<W7>, int a3@<W8>)
{
  v11 = v4 ^ v10;
  v12 = a3 - (((v11 / (v5 ^ v10)) ^ v6) + a2 + ((v3 + v7) & (2 * (v11 / (v5 ^ v10))))) * a1;
  v13 = v11 % (v5 ^ v10) == (v8 & (2 * (v11 % (v5 ^ v10))));
  return (*(v9 + 8 * (((4 * v13) | (32 * v13)) ^ v3)))(v12);
}

uint64_t sub_10083F380()
{
  LODWORD(STACK[0x17BC]) = STACK[0x20D4];
  LODWORD(STACK[0x90C]) = (((LODWORD(STACK[0x2230]) ^ 0x1B705A4E) - 460347982) ^ ((LODWORD(STACK[0x2230]) ^ 0x4CCEDE9D) - 1288625821) ^ ((LODWORD(STACK[0x2230]) ^ 0xBE6B43C2) + 1100266558)) - (((LODWORD(STACK[0x224C]) ^ 0x9BA8AF64) + 1683443868) ^ ((LODWORD(STACK[0x224C]) ^ 0x7217B1D6) - 1914155478) ^ ((LODWORD(STACK[0x224C]) ^ 0x6AD9A3) - 7002531)) + 504769161;
  return (*(v0 + 50680))();
}

uint64_t sub_10083F498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v14 = *(v12 - 231415367);
  v15 = (*v13 + (v6 - 128941941));
  v16 = *(*(v7 - 1680276466) + (v14 & 0x72D7ACF8));
  v17 = ((((v16 ^ v15) & 0x7FFFFFFF) * v11) ^ ((((v16 ^ v15) & 0x7FFFFFFF) * v11) >> 16)) * v11;
  v18 = *(v10 + 8 * (a5 + 658)) - 908123987;
  v19 = *(v10 + 8 * (a5 - 2646)) - 179860347;
  v20 = *(v10 + 8 * (a5 - 2187)) - 1260529494;
  LODWORD(v15) = *(v18 + (v17 >> 24)) ^ *v15 ^ *(v19 + (v17 >> 24)) ^ *((v17 >> 24) + v20 + 1) ^ v17 ^ ((v17 >> 24) * v9);
  v21 = (*v13 + (v6 - 128941940));
  v22 = *v21;
  v23 = ((((v16 ^ v21) & 0x7FFFFFFF) * v11) ^ ((((v16 ^ v21) & 0x7FFFFFFF) * v11) >> 16)) * v11;
  LODWORD(v15) = (v15 << 24) | ((v23 ^ v22 ^ *(v18 + (v23 >> 24)) ^ *(v19 + (v23 >> 24)) ^ (BYTE3(v23) * v9) ^ *((v23 >> 24) + v20 + 1)) << 16);
  v24 = (*v13 + (v6 - 128941939));
  v25 = *v24;
  v26 = ((((v16 ^ v24) & 0x7FFFFFFF) * v11) ^ ((((v16 ^ v24) & 0x7FFFFFFF) * v11) >> 16)) * v11;
  LODWORD(v15) = v15 & 0xFFFF00FF | (((BYTE3(v26) * v9) ^ v26 ^ v25 ^ *(v18 + (v26 >> 24)) ^ *(v19 + (v26 >> 24)) ^ *((v26 >> 24) + v20 + 1)) << 8);
  v27 = (*v13 + (v6 - 128941938));
  v28 = *v27;
  v29 = ((((v16 ^ v27) & 0x7FFFFFFF) * v11) ^ ((((v16 ^ v27) & 0x7FFFFFFF) * v11) >> 16)) * v11;
  LOBYTE(v19) = *(v19 + (v29 >> 24)) ^ *((v29 >> 24) + v20 + 1);
  return (*(v8 + 8 * v5))(v14, ((*(v18 + (v29 >> 24)) ^ v28 ^ v19 ^ v29) ^ (BYTE3(v29) * v9)) & 0xD7 | ((*(v18 + (v29 >> 24)) ^ v28 ^ v19 ^ v29) ^ ~(BYTE3(v29) * v9) | 0xFFFFFF00) & ((v15 - ((2 * v15) & 0x8DF8BE00) - 956539066) ^ 0x5488EE6E));
}

void sub_10083F6A8()
{
  if (v0 == 261571678)
  {
    v1 = -371865839;
  }

  else
  {
    v1 = 371891401;
  }

  *(v2 + 24) = v1;
}

uint64_t sub_10083F7B8(uint64_t result)
{
  if ((*(result + 8) ^ (193924789 * ((result - 2 * (result & 0x535A1C1D) - 749069283) ^ 0x65E12E7B))) == 0x2F5DF9E5)
  {
    v1 = -6;
  }

  else
  {
    v1 = -8;
  }

  *(result + 4) = (((*(result + 8) ^ (193924789 * ((result - 2 * (result & 0x535A1C1D) - 749069283) ^ 0x65E12E7B))) == 794687973) ^ 0x3F) + v1;
  return result;
}

uint64_t sub_10083F820@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  STACK[0x1B10] = a1;
  STACK[0x1750] = *(v2 + 8 * a2);
  v3 = *(v2 + 8 * ((24719 * ((a2 ^ ((a2 + 29835) | 0x904)) == -611184106)) ^ (a2 + 3750)));
  LODWORD(STACK[0x7E0]) = 62;
  return v3();
}

void sub_10083F894(uint64_t a1)
{
  v1 = *(a1 + 8) - 193924789 * (((a1 ^ 0xB70C1789) - 2 * ((a1 ^ 0xB70C1789) & 0x77A07C4B) - 140477365) ^ 0xF61759A4);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10083F9D4@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, char a6@<W8>)
{
  v17 = ((v6 * a6) ^ v15);
  *(STACK[0x4B0] + 4 * (v6 * a6)) = a2 ^ ((v17 ^ v11) - (v17 ^ v10)) ^ a3 ^ *(STACK[0x448] + 4 * (v9 + (v17 ^ v7) * v8 - ((((v9 + (v17 ^ v7) * v8) * v12) >> 32) >> 3) * v13));
  return (*(*(v16 - 216) + 8 * (((a1 + v6 == a4) * a5) ^ v14)))();
}

uint64_t sub_10083FA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned int a24)
{
  v27 = a24 > v25 + 1483454083;
  if (a24 < 0xD730D452 != (v25 + 1483454083) < 0xD730D452)
  {
    v27 = a24 < 0xD730D452;
  }

  return (*(v26 + 8 * (v24 ^ (34100 * v27))))();
}

uint64_t sub_10083FBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v19 - 136) = v16 - (((v18 | 0xAAE3DC9) - (v18 & 0xAAE3DC8)) ^ 0x9D750F62) * v17 + 12476;
  *(v19 - 128) = v14;
  *(v19 - 112) = a14;
  v20 = (*(v15 + 8 * (v16 ^ 0xFEA6)))(v19 - 136);
  return (*(v15 + 8 * (((*(v19 - 120) <= ((v16 + 11249) ^ 0x3AF7B7A6u)) * (v16 ^ 0x3417)) ^ v16)))(v20);
}

uint64_t sub_10083FC94()
{
  v3 = (*(v2 + 8 * (v1 + 34318)))();
  *(v0 + 16) = 0;
  return (*(v2 + 8 * v1))(v3);
}

void sub_10083FD3C(_DWORD *a1)
{
  v1 = a1[2] - 1603510583 * (((a1 | 0xB7CABF42) - a1 + (a1 & 0x483540BD)) ^ 0x20118DE9);
  v2 = (*(*a1 + 16) >> 3) & 0x3F;
  *(*a1 + 24 + v2) = 0x80;
  __asm { BRAA            X13, X17 }
}

uint64_t sub_10083FFA8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  STACK[0x2050] = v7;
  LODWORD(STACK[0xE20]) = a5;
  STACK[0xD00] = v6;
  v9 = (LODWORD(STACK[0x90C]) + 776502142) * (a4 - 1575347102) - 1281271303 * a4 + 891952733;
  v10 = (v9 ^ 0xC53BECE1) & (2 * (v9 & 0xE9BB8EF5)) ^ v9 & 0xE9BB8EF5;
  v11 = ((2 * (v9 ^ 0xD40BE063)) ^ 0x7B60DD2C) & (v9 ^ 0xD40BE063) ^ (2 * (v9 ^ 0xD40BE063)) & 0x3DB06E96;
  v12 = v11 ^ 0x4902292;
  v13 = (v11 ^ 0x29204C04) & (4 * v10) ^ v10;
  v14 = ((4 * v12) ^ 0xF6C1BA58) & v12 ^ (4 * v12) & 0x3DB06E90;
  v15 = (v14 ^ 0x34802A10) & (16 * v13) ^ v13;
  v16 = ((16 * (v14 ^ 0x9304486)) ^ 0xDB06E960) & (v14 ^ 0x9304486) ^ (16 * (v14 ^ 0x9304486)) & 0x3DB06E80;
  v17 = v16 ^ 0x24B00696;
  v18 = v15 ^ 0x3DB06E96 ^ (v16 ^ 0x19006800) & (v15 << 8);
  *(STACK[0x1968] + 48 * STACK[0xCF0] + 0x64141B82EA58CEA8) = LODWORD(STACK[0x17BC]) ^ v9 ^ (2 * ((v18 << 16) & 0x3DB00000 ^ v18 ^ ((v18 << 16) ^ 0x6E960000) & ((v17 << 8) & 0x3DB00000 ^ 0xD900000 ^ ((v17 << 8) ^ 0x306E0000) & v17))) ^ 0x222E94C8;
  LODWORD(STACK[0x18B8]) = v5;
  LODWORD(STACK[0x177C]) += 4;
  return (*(v8 + 8 * ((37274 * LOBYTE(STACK[0x1147])) ^ 0x1BF9u)))();
}

uint64_t sub_1008401B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v55 = ((v42 ^ v45) + v46) ^ v42 ^ ((v42 ^ a2) + a3) ^ ((v42 ^ a4) + a5) ^ ((v40 ^ v42 ^ a6) + a7);
  v56 = ((v55 ^ a8) + v47) ^ ((v55 ^ v48) + v50) ^ ((v55 ^ v51) + v52);
  *(a1 + v41 - 1) = v43 + v44 * (v56 + v53) - 2 * v56;
  return (*(v49 + 8 * (((v41 != 1) * v54) ^ v40)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40);
}

uint64_t sub_100840338@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, int a9@<W8>)
{
  v24 = ((2 * (v9 ^ v14)) ^ a2) & (v9 ^ v14) ^ (2 * (v9 ^ v14)) & a3;
  v25 = v24 ^ a4;
  v26 = v24 & (4 * ((v10 & v15 ^ a1) & v9)) ^ (v10 & v15 ^ a1) & v9;
  v27 = v9 ^ (2 * ((((4 * v25) ^ a5) & v25 ^ (4 * v25) & a6) & (16 * v26) ^ v26));
  v28 = ((v27 ^ a7) + a8) ^ ((v27 ^ v17) + v18) ^ ((v27 ^ v19) + v20);
  *(v23 + v13) = v11 + v28 * v22 + v12 * (v28 + v21);
  return (*(v16 + 8 * (a9 ^ (8 * (v13 == 0)))))();
}

uint64_t sub_1008403E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x81C]) = 1860054731;
  v9 = (*(a8 + 8 * (v8 + 11770)))(49);
  v10 = STACK[0x5A0];
  STACK[0xA00] = v9;
  return (*(v10 + 8 * (((v9 == 0) * ((v8 - 39511) ^ 0x26A)) ^ v8)))();
}

uint64_t sub_100840560(uint64_t a1)
{
  v6 = (v3 ^ 0x5F5FBBF80AFD9D64 ^ ((v2 + 7713) | 0x214u)) + (v4 & 0x15FBFD60);
  *(v6 + a1 - 0x5F5FBBF80AFDFEB0) = *(v6 + v1 - 0x5F5FBBF80AFDFEACLL);
  return (*(v5 + 8 * ((62 * (v3 != 0)) ^ v2)))();
}

uint64_t sub_10084067C()
{
  v1 = STACK[0x194C];
  LODWORD(STACK[0x1BFC]) = STACK[0x194C];
  return (*(v0 + 8 * ((40906 * (v1 == -371865839)) ^ 0x2E74u)))();
}

uint64_t sub_1008409FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = LOWORD(STACK[0xBDE]);
  STACK[0x9B0] = STACK[0xBE0];
  return (*(a8 + 8 * (((v9 == 47179) * ((v8 - 7667) ^ 0x29F5)) ^ (v8 - 35087))))();
}

uint64_t sub_100840CC4()
{
  v3 = (*(v2 + 8 * (v0 ^ 0x7672)))(1032);
  v4 = *(v1 - 200);
  *(v1 - 224) = 0;
  *(v1 - 216) = 0;
  *(v1 - 232) = v3;
  return (*(v4 + 8 * ((486 * (v3 != 0)) ^ v0)))();
}

uint64_t sub_100840D74()
{
  v2.n128_u64[0] = 0xA0A0A0A0A0A0A0A0;
  v2.n128_u64[1] = 0xA0A0A0A0A0A0A0A0;
  return (*(v0 + 8 * (v1 - 7957)))(v2);
}

uint64_t sub_100840DE8@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v5 = ~v2 + a2;
  v7 = ((v4 - 811647037) & 0x30609FF9 ^ 0x373057C6u) - v3 < v5 || v5 > ((v4 - 2021914367) & 0x7883F673 ^ 0xFFFF49CEuLL);
  return (*(a1 + 8 * (v7 | v4)))();
}

uint64_t sub_100840F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  STACK[0x2050] = v7;
  LODWORD(STACK[0xE20]) = a5;
  STACK[0xD00] = v6;
  LODWORD(STACK[0x18B8]) = v5;
  return (*(v8 + 92960))(STACK[0x19F0], 3976926506, 371891407, 55, 95, 2525398098, 4294967274, 2525398095);
}

uint64_t sub_100841078(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  STACK[0x1068] = v8;
  STACK[0x1028] = a2;
  return (*(v9 + 8 * a8))();
}

uint64_t sub_100841120()
{
  v3 = STACK[0x1428];
  STACK[0x1050] = &STACK[0x2720] + STACK[0x1428];
  STACK[0x1428] = v3 + 96;
  return (*(v2 + 8 * ((73 * (v0 - 0x1CBBAAA40BC7DE30 + 114 * ((v1 + 4507) ^ 0x1FC6u) == (((v1 + 2109990) | 0x62409042u) ^ 0x6260D052))) ^ (v1 + 4507))))();
}

uint64_t sub_100841250()
{
  LODWORD(STACK[0xF2C]) = v0;
  STACK[0x1AF8] = *(v2 + 8 * v1);
  return (*(v2 + 8 * ((((2 * v1) ^ 0x938) + 1966) ^ v1)))();
}

uint64_t sub_100841448@<X0>(uint64_t a1@<X8>)
{
  LODWORD(STACK[0x7E0]) = v1;
  v7 = v2 - 9871;
  v8 = STACK[0x16B0];
  v9 = STACK[0x17C0];
  v10 = STACK[0x1280];
  LODWORD(STACK[0x7A0]) = v7 - 7844;
  v11 = 906386353 * ((~(v6 - 256) & 0x3AF5BC05 | (v6 - 256) & 0xC50A43F8) ^ 0xBF47121);
  *(v6 - 216) = v10 + v4;
  *(v6 - 232) = ((((v3 ^ 0x31A7AA88) - 833071752) ^ ((v3 ^ 0x5B1212EF) - 1527911151) ^ ((v3 ^ 0x8360607D ^ (v7 - 7844)) + 2090827914)) + 173857827) ^ v11;
  *(v6 - 228) = (v7 + 2623) ^ v11;
  *(v6 - 248) = a1;
  *(v6 - 240) = v8;
  *(v6 - 256) = v9;
  v12 = (*(v5 + 8 * (v7 ^ 0xF1EB)))(v6 - 256);
  return (*(v5 + 8 * v7))(v12);
}

uint64_t sub_1008415A8()
{
  *(v4 - 252) = (v1 + 8406) ^ (1012831759 * (v2 ^ 0x1093168A));
  *(v4 - 248) = v0;
  v5 = (*(v3 + 8 * (v1 + 32705)))(v4 - 256);
  *(STACK[0xCD8] + 96) = 0;
  return (*(v3 + 8 * v1))(v5);
}

uint64_t sub_100841A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = LOWORD(STACK[0xBC6]);
  STACK[0x600] = STACK[0xBC8];
  return (*(a8 + 8 * (((32 * (((v9 == 47179) ^ v8 ^ 0x15) & 1)) & 0xBF | ((((v9 == 47179) ^ v8 ^ 0x2215) & 1) << 6)) ^ (v8 - 30988))))();
}

uint64_t sub_100841AB4()
{
  v3 = 208 * (v1 ^ 0x1EBA);
  v4 = v0 <= ((v3 - 29534) | 0x1425u) + 0x1D71C95925FA7620;
  return (*(v2 + 8 * ((((v3 - 99) ^ v4) & 1 | (8 * (((v3 - 99) ^ v4) & 1))) + v3)))();
}

void sub_100841B24(_DWORD *a1)
{
  v1 = *a1 + 139493411 * ((a1 - 2 * (a1 & 0x849FEAD) + 139067053) ^ 0x4641FE8);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100841F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *v7 = v5;
  *(v5 + 8) = *(a5 + 8);
  *(a5 + 8) = v5;
  return (*(v8 + 8 * v6))(a1, a2, a3, a4, v8);
}

uint64_t sub_100841FC4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X3>, unint64_t a3@<X5>, unint64_t a4@<X6>, unint64_t a5@<X7>, int a6@<W8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v80 = v71;
  v82 = *(a1 + 8 * a6);
  *&STACK[0x530] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x520] = vdupq_n_s64(0x38uLL);
  *&STACK[0x510] = vdupq_n_s64(0xD6916AF990E79581);
  *&STACK[0x410] = vdupq_n_s64(0x296E95066F186A7EuLL);
  STACK[0x320] = a65 & 0xFFFFFFF8;
  *&STACK[0x3F0] = vdupq_n_s64(a3);
  *&STACK[0x500] = vdupq_n_s64(v72);
  *&STACK[0x4F0] = vdupq_n_s64(v73);
  *&STACK[0x4E0] = vdupq_n_s64(v74);
  *&STACK[0x3D0] = vdupq_n_s64(v76);
  *&STACK[0x4C0] = vdupq_n_s64(0xF3F80E46063E59E4);
  *&STACK[0x4B0] = vdupq_n_s64(a5);
  *&STACK[0x3B0] = vdupq_n_s64(a2);
  *&STACK[0x4A0] = vdupq_n_s64(a4);
  *&STACK[0x490] = vdupq_n_s64(0xD62CF47B3332F3F0);
  *&STACK[0x480] = vdupq_n_s64(0x14E985C266668607uLL);
  *&STACK[0x470] = vdupq_n_s64(0xA994A82BA76C276DLL);
  *&STACK[0x460] = vdupq_n_s64(0x102EBE5226305265uLL);
  *&STACK[0x450] = vdupq_n_s64(0x712D560FD0C41AEAuLL);
  *&STACK[0x440] = vdupq_n_s64(0x476954F8179DF28AuLL);
  *&STACK[0x430] = vdupq_n_s64(0xD5F76ABD8EEE6086);
  *&STACK[0x420] = vdupq_n_s64(v77);
  *&STACK[0x400] = vdupq_n_s64(v75);
  *&STACK[0x3E0] = vdupq_n_s64(v79);
  *&STACK[0x3C0] = vdupq_n_s64(v66);
  *&STACK[0x350] = vdupq_n_s64(0x9B1C7427651E0F18);
  *&STACK[0x360] = vdupq_n_s64(0xAA9DDABAE2E4D47CLL);
  *&STACK[0x390] = vdupq_n_s64(v78);
  *&STACK[0x3A0] = vdupq_n_s64(v68);
  *&STACK[0x370] = vdupq_n_s64(v69);
  *&STACK[0x380] = vdupq_n_s64(v67);
  *&STACK[0x330] = vdupq_n_s64(v65);
  *&STACK[0x340] = xmmword_100F523B0;
  return v82(STACK[0x5A0], v70 - (a65 & 0xFFFFFFF8) + 8, 0xBD7D2DE9C10AA16ALL, 0x82B08017BF43C069, v80 - v70, (a6 - 450499951) & 0x1AD9FDFE ^ 0xFFFFFFFFFFFFD606);
}

uint64_t sub_100842460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 1312) = 0;
  LODWORD(STACK[0x7BC]) = 0;
  return (*(a8 + 8 * ((((v8 - 224808928) & 0xD66FFFC) - 8549) ^ v8)))(a1, &STACK[0x7BC]);
}

uint64_t sub_10084254C()
{
  v2 = *(STACK[0x520] + 24);
  STACK[0x550] = v2;
  return (*(v1 + 8 * (((v2 != 0) * ((((v0 - 15426) | 0x5614) ^ 0xFFFF87A6) + v0 - 7771)) ^ v0)))();
}

uint64_t sub_100842620@<X0>(_BYTE *a1@<X8>)
{
  a1[63] = v1[15];
  a1[62] = v1[14];
  a1[61] = v1[13];
  a1[60] = v1[12];
  a1[59] = v1[11];
  a1[58] = v1[10];
  a1[57] = v1[9];
  a1[56] = v1[8];
  a1[55] = v1[7];
  a1[54] = v1[6];
  a1[53] = v1[5];
  a1[52] = v1[4];
  a1[51] = v1[3];
  a1[50] = v1[2];
  a1[49] = v1[1];
  a1[48] = *v1;
  return (*(v3 + 8 * (v2 - 29967)))();
}

uint64_t sub_1008427B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, int a7@<W8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, int a38, int a39, unsigned __int8 a40)
{
  v43 = a7 + v40 - 150439958;
  v44 = LODWORD(STACK[0x197C]) - 150439958;
  v45 = (v44 < 0x504D1434) ^ (v43 < ((a38 | 0x2020D002) ^ 0x322DC466u));
  v46 = v43 > v44;
  if (v45)
  {
    v47 = v43 < ((a38 | 0x2020D002) ^ 0x322DC466u);
  }

  else
  {
    v47 = v46;
  }

  return (*(v41 + 8 * (((a40 ^ v47) & 1 | (8 * ((a40 ^ v47) & 1))) ^ 0x3FB4u)))(a1, a2, a3, a4, a5, 1864610357, a6, v42);
}

uint64_t sub_100842850@<X0>(int a1@<W8>)
{
  v4 = (((*(v3 - 156) ^ 0x1C66E2A5) - 476504741) ^ ((*(v3 - 156) ^ 0x103E5B9A) - 272522138) ^ ((*(v3 - 156) ^ 0x11243F43) - 287588163)) + (((v1 ^ 0xE9746460) + 378248096) ^ ((v1 ^ 0x4BC4B16) - 79448854) ^ ((((a1 - 28199) | 0x1000) ^ 0xF4B41FF) + (v1 ^ 0xF0B4A90A))) + 1550265660;
  v5 = (v4 ^ 0x9E19DF39) & (2 * (v4 & 0xDE91DFBC)) ^ v4 & 0xDE91DFBC;
  v6 = ((2 * (v4 ^ 0xB21B5209)) ^ 0xD9151B6A) & (v4 ^ 0xB21B5209) ^ (2 * (v4 ^ 0xB21B5209)) & 0x6C8A8DB4;
  v7 = v6 ^ 0x248A8495;
  v8 = (v6 ^ 0x48000920) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0xB22A36D4) & v7 ^ (4 * v7) & 0x6C8A8DB4;
  v10 = (v9 ^ 0x200A0480) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x4C808921)) ^ 0xC8A8DB50) & (v9 ^ 0x4C808921) ^ (16 * (v9 ^ 0x4C808921)) & 0x6C8A8D90;
  v12 = v10 ^ 0x6C8A8DB5 ^ (v11 ^ 0x48888900) & (v10 << 8);
  *(v3 - 156) = v4 ^ (2 * ((v12 << 16) & 0x6C8A0000 ^ v12 ^ ((v12 << 16) ^ 0xDB50000) & (((v11 ^ 0x240204A5) << 8) & 0x6C8A0000 ^ 0x64020000 ^ (((v11 ^ 0x240204A5) << 8) ^ 0xA8D0000) & (v11 ^ 0x240204A5)))) ^ 0x3F842AA;
  return (*(v2 + 8 * a1))();
}

uint64_t sub_100842B50()
{
  v3 = STACK[0xDD0];
  v4 = STACK[0x16C8];
  v5 = STACK[0x888];
  v6 = 353670337 * ((((v2 - 256) | 0xC66B1B48) - ((v2 - 256) | 0x3994E4B7) + 966059191) ^ 0x724AE375);
  *(v2 - 256) = ((((LODWORD(STACK[0x2004]) ^ 0xF7B10A9D) + 139392355) ^ ((LODWORD(STACK[0x2004]) ^ 0xDD3CE6AB) + 583211349) ^ ((LODWORD(STACK[0x2004]) ^ 0xC3582B27) + 1017631961)) - 222681226) ^ v6;
  *(v2 - 220) = v6 + v0 + 1850313290;
  *(v2 - 240) = v3;
  *(v2 - 232) = v5;
  v7 = STACK[0x4B8];
  *(v2 - 216) = STACK[0x560];
  *(v2 - 208) = v7;
  *(v2 - 248) = v4;
  v8 = (*(v1 + 8 * (v0 + 371917907)))(v2 - 256);
  return (*(v1 + 8 * (v0 ^ 0xE9D5959E ^ (1051 * (((*(v2 - 224) - v0) | (v0 - *(v2 - 224))) >= 0)))))(v8);
}

uint64_t sub_100842C94@<X0>(int a1@<W8>)
{
  v2 = (a1 + 972834589) & 0x63A2FFD7;
  v3 = a1 - 438088428;
  v4 = a1 - 1650469358;
  v5 = (*(v1 + 8 * (a1 ^ 0x62601ACA)))(48) != 0;
  return (*(v1 + 8 * ((v5 * ((v2 + 1212417609) ^ v3)) ^ v4)))();
}

uint64_t sub_100842E20()
{
  v2 = STACK[0x1B20];
  v3 = STACK[0x1A20];
  v4 = STACK[0x1490];
  *(v1 - 244) = 15952 - 906386353 * ((v1 - 256 - 2 * ((v1 - 256) & 0x14410EF0) + 339807987) ^ 0x2540C3D7);
  *(v1 - 240) = v4;
  *(v1 - 232) = v3;
  *(v1 - 256) = v2;
  v5 = (*(v0 + 416600))(v1 - 256);
  return (*(v0 + 8 * ((32 * (*(v1 - 248) == -371865839)) | ((*(v1 - 248) == -371865839) << 11) | 0x24C1u)))(v5);
}

uint64_t sub_100842ED8()
{
  v2[8] = v1[8];
  ++*v0;
  v2[9] = (v1[9] ^ 0x5F) + (((v4 + 41) ^ 0x9B) & (2 * v1[9])) - 21;
  ++*v0;
  v2[10] = v1[10];
  ++*v0;
  v2[11] = v1[11];
  ++*v0;
  return (*(v3 + 8 * v4))();
}

void sub_100842F5C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = (*a1 ^ 0xDFFB5FDFEFA5FD9FLL) + 0x2004A02100C5CC29 + ((2 * *a1) & 0xBFF6BFBFDF4BFB3ELL);
  v4 = v3 < 0xF06BC9C8;
  v5 = v3 > v2 + 4033595848u;
  if (v2 > 0xFFFFFFFF0F943637 != v4)
  {
    v5 = v4;
  }

  v1 = *(a1 + 40) + 353670337 * ((a1 - 2 * (a1 & 0x5D481D43) + 1565007171) ^ 0xE969E57E);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_100843144@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, unsigned int a20)
{
  v22 = 1022166737 * (((&a17 | 0xEDE354E3) - (&a17 & 0xEDE354E0)) ^ 0x57F3B571);
  a17 = a14;
  a18 = a1 - v22 + 2 * (v20 ^ 0x5BE) + 1159547708;
  a19 = v22 + 12186 + v20;
  (*(v21 + 8 * (v20 ^ 0x8740)))(&a17);
  return (*(v21 + 8 * ((947 * (a20 == ((v20 - 19876) ^ 0x59449C51))) ^ v20)))(a20, v23, v24, v25, v26, v27, v28, v29, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_10084326C@<X0>(unint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, int a5@<W8>)
{
  v9 = (((v6 ^ 0xAA809914) + 1434412780) ^ ((v6 ^ 0xBA99299B) + 1164367461) ^ (((v5 - 1650508354) | 0x8062) + 104004080 + (v6 ^ 0xF9CCB31B ^ (v5 + 1311057475) & 0x4F7ACDEF))) - 238786129;
  v10 = (v7 + (((v9 ^ 0x4B3BEA7) - 56433720) ^ v9 ^ ((v9 ^ 0xD1D6C187) + 700947688) ^ ((v9 ^ 0x2D756A61) - 714852606) ^ ((v9 ^ 0xFFFEB7DE) + 133163711) ^ a1));
  v11 = *v10;
  v12 = 1864610357 * ((1864610357 * ((v10 ^ a5) & 0x7FFFFFFF)) ^ ((1864610357 * ((v10 ^ a5) & 0x7FFFFFFF)) >> 16));
  return (*(v8 + 8 * ((115 * ((((v12 ^ v11 ^ *(a3 + (v12 >> 24)) ^ *((v12 >> 24) + a4 + 3) ^ *((v12 >> 24) + a2 + 1) ^ (-107 * BYTE3(v12)) ^ 0x3A) + 75) ^ ((v12 ^ v11 ^ *(a3 + (v12 >> 24)) ^ *((v12 >> 24) + a4 + 3) ^ *((v12 >> 24) + a2 + 1) ^ (-107 * BYTE3(v12)) ^ 5) + 118) ^ ((v12 ^ v11 ^ *(a3 + (v12 >> 24)) ^ *((v12 >> 24) + a4 + 3) ^ *((v12 >> 24) + a2 + 1) ^ (-107 * BYTE3(v12)) ^ 0x3F) + 80)) == 241)) ^ (v5 - 1650463803))))();
}

uint64_t sub_100843470()
{
  LODWORD(STACK[0xCE4]) = v1;
  STACK[0x9E8] = *(v2 + 8 * v0);
  return (*(v2 + 8 * ((((v0 + 15656) | 0x2448) - 20603) ^ v0)))();
}

uint64_t sub_100843518()
{
  v2 = (((LODWORD(STACK[0x839C]) ^ 0x8FAFBA61) + (((v0 - 8397) | 0x61C) ^ 0x705053C3)) ^ ((LODWORD(STACK[0x839C]) ^ 0xD5ED2FED) + 705875987) ^ ((LODWORD(STACK[0x839C]) ^ 0xB397529D) + 1281928547)) + 1492732555;
  v3 = v1 + (((v0 + 37899) | 0x285) ^ 0x1382A5B9);
  v4 = v1 < 0x5BA12156;
  v5 = v4 ^ (v2 < 0x6F23837A);
  v6 = v2 < v3;
  if (!v5)
  {
    v4 = v6;
  }

  return (*(STACK[0xF18] + 8 * ((19 * v4) ^ v0)))();
}

uint64_t sub_100843600()
{
  LODWORD(STACK[0x1840]) = v2 + v1;
  LODWORD(STACK[0x844]) = v3;
  LOBYTE(STACK[0x9A3]) = 1;
  return (*(v4 + 8 * (v0 + 3720)))();
}

uint64_t sub_10084362C()
{
  v3 = STACK[0x18F8];
  LODWORD(STACK[0xA34]) = v0;
  v4 = (((v3 ^ 0x79900A8E) - 2039483022) ^ ((v3 ^ 0x38CFCC7C) - 953142396) ^ ((((v1 ^ 0x44CB61BA) + 27697) ^ v3 ^ 0xA88A6DD6) + 1467350557)) - v0 - 112910406;
  v5 = (v4 | ((v4 < 0x28240BE) << 32)) + 1112088832;
  return (*(v2 + 8 * (v1 ^ 0x44CB0D8B ^ (93 * ((((v5 - v1) | (v1 - v5)) & 0x8000000000000000) == 0)))))(1154179519, -1154179887);
}

uint64_t sub_10084382C@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x17FC]) = v3;
  LODWORD(STACK[0x1798]) = v3;
  STACK[0xD20] = v1;
  STACK[0x1C80] = a1;
  v5 = *STACK[0x1128];
  STACK[0xAD0] = v5;
  return (*(v4 + 8 * (((v5 != 0) * ((v2 + 7585) ^ 0x9BD1)) ^ v2)))();
}

uint64_t sub_10084393C()
{
  *(v3 - 248) = STACK[0x1790];
  *(v3 - 256) = v0 + 5856 + 1022166737 * (((v1 | 0x7276EB) - (v1 | 0xFF8D8914) - 7501548) ^ 0xBA629779);
  (*(v2 + 8 * (v0 + 13604)))(v3 - 256);
  v4 = STACK[0x1588];
  *(v3 - 256) = v0 + 5856 + 1022166737 * ((2 * (v1 & 0x106DB6A0) - v1 - 275625639) ^ 0x5582A8CB);
  *(v3 - 248) = v4;
  v5 = (*(v2 + 8 * (v0 + 13604)))(v3 - 256);
  LOBYTE(STACK[0x877]) = 1;
  return (*(v2 + 8 * v0))(v5);
}

uint64_t sub_100843D20()
{
  v5 = 139493411 * ((2 * ((v4 - 256) & 0x2F6C3E38) - (v4 - 256) + 1351860679) ^ 0x5CBE2082);
  *(v4 - 232) = v0;
  LOWORD(STACK[0x2F64]) = -32733 * ((2 * ((v4 - 256) & 0x3E38) - (v4 - 256) - 15929) ^ 0x2082) + 27993;
  *(v4 - 248) = &STACK[0xA3C];
  *(v4 - 240) = v5 - 231254985;
  *(v4 - 224) = v5 + (v2 ^ 0x73F6AB59) * v1 + 777074195;
  *(v4 - 256) = v2 - v5 + 35786;
  v6 = (*(v3 + 8 * (v2 ^ 0xEE7D)))(v4 - 256);
  LODWORD(STACK[0x1B58]) = *(v4 - 216);
  return (*(v3 + 8 * v2))(v6);
}

uint64_t sub_100843E4C()
{
  v5 = STACK[0x2040];
  *(v4 - 256) = v0 + 193924789 * ((((v4 - 256) ^ 0x19EF845A | 0xC515EC70) - ((v4 - 256) ^ 0x19EF845A | 0x3AEA138F) + 988418959) ^ 0x6A415A4C) - 28335;
  *(v4 - 248) = v5;
  v6 = (*(v3 + 8 * (v0 ^ 0xB154)))(v4 - 256);
  STACK[0x1428] = ((v0 - 1073974246) & 0xEEC77D3F) + 1362859735 + STACK[0x1428] - 1579;
  return (*(v3 + 8 * ((126 * (v2 == v1)) ^ v0)))(v6);
}

uint64_t sub_100844080()
{
  v3 = ((((v0 + 1745264656) & 0x97F97CFF) + (LODWORD(STACK[0x1938]) ^ 0x4052ED9E) - 1079192194) ^ ((LODWORD(STACK[0x1938]) ^ 0xE390B7AB) + 477055061) ^ (((((v0 + 1428590247) & 0xAAD97F9F) + 1243049737) ^ LODWORD(STACK[0x1938])) - 1243061540)) - 1153659417;
  v4 = v3 < 0xD166C6D6;
  v5 = v1 - 781793578 < v3;
  if (v1 > 0x2E993929 != v4)
  {
    v5 = v4;
  }

  return (*(v2 + 8 * ((21101 * v5) ^ v0)))();
}

uint64_t sub_100844170()
{
  *(v1 - 248) = *STACK[0x1E60];
  *(v1 - 256) = 60385135 - 193924789 * ((((v1 - 256) | 0xB0077397) - ((v1 - 256) | 0x4FF88C68) + 1341688936) ^ 0x6BC41F1);
  v2 = (*(v0 + 415816))(v1 - 256);
  return (*(v0 + 13968))(v2);
}

uint64_t sub_1008441EC()
{
  LODWORD(STACK[0x24B8]) = v0;
  v4 = 906386353 * ((2 * ((v3 - 256) & 0x21CACD58) - (v3 - 256) + 1580544674) ^ 0x6F34FF86);
  *(v3 - 240) = &STACK[0x1D74];
  *(v3 - 256) = (v1 + 8710) ^ v4;
  LOWORD(STACK[0x2F48]) = v4 + 18064;
  v5 = (*(v2 + 8 * (v1 ^ 0xDBAEu)))(v3 - 256);
  return (*(v2 + 8 * ((v1 ^ 0x155Bu) + v1)))(v5);
}

uint64_t sub_100844378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = STACK[0x1EC0];
  v9 = LODWORD(STACK[0xA04]) + v6 + (((*v8 ^ 0x97B28060) + ((v5 + 1650511667) ^ 0xA2DAFF2)) ^ ((*v8 ^ 0xBF6EE966) + 1083250330) ^ ((*v8 ^ 0xC109AE17) + 1056330217));
  LODWORD(STACK[0xA04]) = v9;
  LODWORD(STACK[0x23A4]) = v9 + v4;
  LODWORD(STACK[0x23A8]) = v8[20];
  v10 = *(STACK[0x19D8] + 32) + 2004628193;
  v11 = (v10 ^ 0x683B881A) & (2 * (v10 & 0x8883CD1A)) ^ v10 & 0x8883CD1A;
  v12 = ((2 * (v10 ^ 0x7938182A)) ^ 0xE377AA60) & (v10 ^ 0x7938182A) ^ (2 * (v10 ^ 0x7938182A)) & 0xF1BBD530;
  v13 = v12 ^ 0x10885510;
  v14 = (v12 ^ 0x60130020) & (4 * v11) ^ v11;
  v15 = ((4 * v13) ^ 0xC6EF54C0) & v13 ^ (4 * v13) & 0xF1BBD530;
  v16 = (v15 ^ 0xC0AB5400) & (16 * v14) ^ v14;
  v17 = ((16 * (v15 ^ 0x31108130)) ^ 0x1BBD5300) & (v15 ^ 0x31108130) ^ (16 * (v15 ^ 0x31108130)) & 0xF1BBD500;
  v18 = v16 ^ 0xF1BBD530 ^ (v17 ^ 0x11B95100) & (v16 << 8);
  LODWORD(STACK[0x23AC]) = v10 ^ (2 * ((v18 << 16) & 0x71BB0000 ^ v18 ^ ((v18 << 16) ^ 0x55300000) & (((v17 ^ 0xE0028430) << 8) & 0x71BB0000 ^ 0x402A0000 ^ (((v17 ^ 0xE0028430) << 8) ^ 0x3BD50000) & (v17 ^ 0xE0028430)))) ^ 0x7712D464;
  return (*(v7 + 8 * (v5 ^ 0x1527)))(a1, a2, a3, a4, STACK[0x808]);
}

uint64_t sub_1008445EC(uint64_t a1, double a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, __n128 a32)
{
  v35 = (v33 + 908);
  v36 = vld1q_dup_f32(v35);
  return (*(v34 + 8 * v32))(a1, 3491353950, 3893160623, v36, a3, a4, a5, a6, a32);
}

uint64_t sub_100844634@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W3>, int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W7>, int a8@<W8>)
{
  v15 = a2 + a7 - 1424268066;
  v16 = v13 - 685878939 - v8 + 471339585;
  LODWORD(STACK[0x610]) = a5;
  v17 = (LODWORD(STACK[0x688]) + 1412156848) & 0xABD45FBF;
  LODWORD(STACK[0x460]) = v17;
  LODWORD(STACK[0x5D8]) = a1;
  v18 = STACK[0x6A8];
  v19 = *(STACK[0x6A8] + (119 * (v15 & 0xF) + 111503 - 962 * ((4464623 * (119 * (v15 & 0xF) + 111503)) >> 32)));
  LODWORD(STACK[0x630]) = a6;
  v20 = *(v18 + (119 * (v16 & 0xF) + 111503 - 962 * ((4464623 * (119 * (v16 & 0xF) + 111503)) >> 32)));
  v21 = (119 * ((v15 >> (v17 ^ 0xA7)) & 0xF) + 111503) % (((119 * ((v15 >> (v17 ^ 0xA7)) & 0xF) + 111503) ^ (112 - 119 * ((v15 >> (v17 ^ 0xA7)) & 0xF))) & 0x3C2);
  LODWORD(STACK[0x668]) = v14;
  v22 = 119 * (v19 & 0xF | (16 * (v20 & 0xF)));
  v23 = *(v18 + (v22 + 80444 - 962 * ((4464623 * (v22 + 80444)) >> 32)));
  v24 = 16 * LOBYTE(STACK[0x1029]);
  LODWORD(STACK[0x698]) = v24;
  LODWORD(STACK[0x678]) = v12;
  v25 = 119 * (v23 ^ v24);
  LODWORD(STACK[0x60C]) = (v25 + 80444) % (((451 - v25) | (v25 + 80444)) & 0x3C2u);
  v26 = a8 + 1531111302;
  LODWORD(STACK[0x598]) = v10;
  v27 = (v26 - 596669526) ^ a3;
  LODWORD(STACK[0x5D0]) = v27;
  v28 = a7 + v26;
  v29 = a7 + v26 - 1057891903;
  v30 = v27 ^ LODWORD(STACK[0x670]);
  LODWORD(STACK[0x628]) = v30;
  v31 = v30 ^ v11;
  LODWORD(STACK[0x590]) = v31;
  v32 = v26 + v31 + ((v29 ^ (-1089591746 - (a7 + v26))) & 0x7B4F5FB4);
  LODWORD(STACK[0x550]) = v32;
  v33 = v31 - v32 + 430658680;
  LODWORD(STACK[0x548]) = v28 + 308958383;
  v34 = v9 + 991546775 + (((v33 ^ (v28 + 308958383) ^ 0x1285DF8) + 901700430) ^ ((v33 ^ (v28 + 308958383) ^ 0xF5FC4381) - 1049967307) ^ ((v33 ^ (v28 + 308958383) ^ 0x41292D53) + 1975495655));
  v35 = 119 * ((v34 >> 8) & 0xF);
  LODWORD(STACK[0x588]) = (v35 + 111503) % (((-111504 - v35) | (v35 + 111503)) & 0x8552C7BF ^ (((-111504 - v35) & 0x7B6205E6) + ((v35 + 111503) & 0x95E6)) ^ 0xFE30519B);
  v36 = 119 * (v34 & 0xF);
  v37 = v36 + 111503;
  v38 = ((v36 + 111503) & 0xA4F ^ 0x30C803AA) & ((2147372144 - v36) & 0x40100A4F ^ 0x30ECBFEF) ^ (2147372144 - v36) & 0x40100845;
  LODWORD(STACK[0x680]) = v33;
  v39 = (v38 ^ 0x8F25600A) & (v33 & 0x4E15284D ^ 0xC8107A69 ^ (v33 & 0xCE35684F ^ 0x5157228) & (v33 & 0xCE35684F ^ 0x85B5B22A)) ^ v38 & 0x1050000E;
  LODWORD(STACK[0x580]) = v37 % ((((v39 ^ 0xE22FA67A) + 435443376) ^ ((v39 ^ 0xA1E667E2) + 1513985848) ^ ((v39 ^ 0x50A9E192) - 1418587832)) + 1225706131);
  v40 = a4 + LODWORD(STACK[0x690]);
  LODWORD(STACK[0x540]) = v40 - 1797413258;
  LODWORD(STACK[0x690]) = -45546089 - a4;
  v41 = LODWORD(STACK[0x4F0]) - ((((v40 - 1797413258) ^ (-45546089 - a4) ^ 0x73972087) - 34147763) ^ (((v40 - 1797413258) ^ (-45546089 - a4) ^ 0xD9F717C) - 2080463944) ^ (((v40 - 1797413258) ^ (-45546089 - a4) ^ 0xCBF562D1) + 1167372315));
  LODWORD(STACK[0x658]) = v34;
  v42 = *(v18 + (119 * (HIWORD(v34) & 0xF) + 111503 - 962 * ((4464623 * (119 * (HIWORD(v34) & 0xF) + 111503)) >> 32)));
  v41 += 754063223;
  v43 = v41;
  v44 = (*(v18 + (119 * ((v34 >> 20) & 0xF) + 111503 - 962 * ((4464623 * (119 * ((v34 >> 20) & 0xF) + 111503)) >> 32))) << 12) ^ ((((*(v18 + (119 * (v34 >> 28) + 111503 - 962 * ((4464623 * (119 * (v34 >> 28) + 111503)) >> 32))) << 12) ^ (*(v18 + (119 * (HIBYTE(v34) & 0xF) + 111503 - 962 * ((4464623 * (119 * (HIBYTE(v34) & 0xF) + 111503)) >> 32))) << 8) ^ 0x732E49) & ~v42 | v42 & 0xB6) << 8);
  LODWORD(STACK[0x578]) = v41;
  v45 = 119 * ((v43 >> 20) & 0xF) + 111503 - 962 * ((4464623 * (119 * ((v43 >> 20) & 0xF) + 111503)) >> 32);
  v46 = 119 * (HIWORD(v43) & 0xF) + 111503 - 962 * ((4464623 * (119 * (HIWORD(v43) & 0xF) + 111503)) >> 32);
  LODWORD(STACK[0x570]) = v46;
  v47 = (*(v18 + v45) << 12) ^ ((((*(v18 + (119 * (v41 >> 28) + 111503 - 962 * ((4464623 * (119 * (v41 >> 28) + 111503)) >> 32))) << 12) ^ (*(v18 + (119 * (HIBYTE(v41) & 0xF) + 111503 - 962 * ((4464623 * (119 * (HIBYTE(v41) & 0xF) + 111503)) >> 32))) << 8) ^ 0xC31F0B) & ~*(v18 + v46) | *(v18 + v46) & 0xF4) << 8);
  LODWORD(STACK[0x528]) = v44 ^ 0xB78603;
  LODWORD(STACK[0x558]) = v47 ^ 0x16C66A;
  v48 = 119 * ((((v47 ^ 0x16C66Au) >> 12) & 0xF0 | ((v44 ^ 0xB78603u) >> 16) & 0xF) ^ 0x99);
  LODWORD(STACK[0x560]) = v48;
  LODWORD(STACK[0x568]) = (v48 + 2023) % (((v48 + 2023) | (24 - v48)) & 0x3C2);
  v49 = (v19 & 0xF) - ((2 * v19) & 4);
  LODWORD(STACK[0x61C]) = v15;
  v50 = *(v18 + (119 * (HIWORD(v15) & 0xF) + 111503 - 962 * ((4464623 * (119 * (HIWORD(v15) & 0xF) + 111503)) >> 32)));
  v51 = *(v18 + (119 * ((v15 >> 8) & 0xF) + 111503 - 962 * ((4464623 * (119 * ((v15 >> 8) & 0xF) + 111503)) >> 32)));
  v52 = (*(v18 + (119 * ((v15 >> 20) & 0xF) + 110541 - 962 * ((4464623 * (119 * ((v15 >> 20) & 0xF) + 110541)) >> 32))) << 12) ^ ((((*(v18 + (119 * (v15 >> 28) + 111503 - 962 * ((4464623 * (119 * (v15 >> 28) + 111503)) >> 32))) << 12) ^ (*(v18 + v21) << 8) ^ 0xA686D7) & ~v50 | v50 & 0x28) << 8) ^ 0x9709FE;
  v53 = v52 & ~v51 & 0xFFFFFFFE | v51 & 1;
  v54 = v53 << 8;
  v55 = (v53 << 8) ^ (*(v18 + (119 * (v15 >> 12) + 111503 - 962 * ((4464623 * (119 * (v15 >> 12) + 111503)) >> 32))) << 12);
  v56 = ((v55 ^ 0x5039C25E) & ~v19 | v19 & 0xA1) ^ (16 * *(v18 + (119 * (v15 >> 4) + 111503 - 962 * ((4464623 * (119 * (v15 >> 4) + 111503)) >> 32))));
  v57 = *(v18 + (119 * (HIWORD(v16) & 0xF) + 111503 - 962 * ((4464623 * (119 * (HIWORD(v16) & 0xF) + 111503)) >> 32)));
  v58 = *(v18 + (119 * ((v16 >> 8) & 0xF) + 111503 - 962 * ((4464623 * (119 * ((v16 >> 8) & 0xF) + 111503)) >> 32)));
  v59 = ((((*(v18 + (119 * ((v16 >> 20) & 0xF) + 111503 - 962 * ((4464623 * (119 * ((v16 >> 20) & 0xF) + 111503)) >> 32))) << 12) ^ ((((*(v18 + (119 * (v16 >> 28) + 111503 - 962 * ((4464623 * (119 * (v16 >> 28) + 111503)) >> 32))) << 12) ^ (*(v18 + (119 * (HIBYTE(v16) & 0xF) + 111503 - 962 * ((4464623 * (119 * (HIBYTE(v16) & 0xF) + 111503)) >> 32))) << 8) ^ 0xE202A5) & ~v57 | v57 & 0x5A) << 8) ^ 0x8399F) & ~v58 | v58 & 0x60) << 8) ^ (*(v18 + (119 * (v16 >> 12) + 111503 - 962 * ((4464623 * (119 * (v16 >> 12) + 111503)) >> 32))) << 12);
  LOBYTE(v51) = *(v18 + (119 * (v16 >> 4) + 111503 - 962 * ((4464623 * (119 * (v16 >> 4) + 111503)) >> 32))) ^ (((v59 ^ 0x610939E0) & (v20 ^ 0xFFFFFFE0) | v20 & 0x10) >> 4);
  v60 = 119 * (*(v18 + (v22 + 2023) % 0x3C2u) ^ (*(v18 + (v25 + 2023 - 962 * ((4464623 * (v25 + 2023)) >> 32))) >> 4)) + 80444;
  v61 = 119 * (((v56 >> 4) | (16 * (v51 & 0xF))) ^ 0xE5);
  v62 = 119 * (*(v18 + (v61 + 80444 - 962 * ((4464623 * (v61 + 80444)) >> 32))) ^ (16 * *(v18 + (v60 - 962 * ((4464623 * v60) >> 32)))));
  v63 = v62 + 80444 - 962 * ((4464623 * (v62 + 80444)) >> 32);
  v64 = 119 * (*(v18 + (v61 + 2023) % 0x3C2u) ^ (*(v18 + (v62 + 2023 - 962 * ((4464623 * (v62 + 2023)) >> 32))) >> 4)) + 80444;
  v65 = 119 * ((v51 & 0xF0 | (v56 >> 8) & 0xF) ^ 0x6C);
  v66 = v65 + 80444 - 962 * ((4464623 * (v65 + 80444)) >> 32);
  v67 = v65 + 2023 - 962 * ((545 * (v65 + 2023)) >> 19);
  v68 = 119 * (*(v18 + v66) ^ (16 * *(v18 + (v64 - 962 * ((4464623 * v64) >> 32)))));
  v69 = v68 + 80444 - 962 * ((4464623 * (v68 + 80444)) >> 32);
  v70 = *(v18 + LODWORD(STACK[0x60C])) ^ (16 * *(v18 + v63));
  v71 = v68 + 2023 - 1924 * ((2232312 * (v68 + 2023)) >> 32);
  if (v71 >= 0x3C2)
  {
    v71 -= 962;
  }

  v72 = *(v18 + v67);
  v73 = v70 ^ (*(v18 + v69) << 8);
  v74 = 119 * (v72 ^ (*(v18 + v71) >> 4)) + 80444;
  v75 = v55 >> 12;
  v76 = 119 * ((((v59 >> 8) & 0xF0 ^ 0x56AF7F2F) & (v75 ^ 0x56AF7FBA) | (v59 >> 8) & 0x40) ^ 0x56AF7FB5);
  v77 = *(v18 + (v76 + 80444) % 0x3C2u) ^ (16 * *(v18 + (v74 - 962 * ((4464623 * v74) >> 32))));
  v78 = 119 * v77 + 80444 - 962 * ((4464623 * (119 * v77 + 80444)) >> 32);
  v79 = (((110 - v77) | (v77 + 17)) & 0x77) * (v77 + 17);
  v80 = 119 * (*(v18 + (v76 + 2023) % 0x3C2u) ^ (*(v18 + (v79 - 962 * ((4464623 * v79) >> 32))) >> 4)) + 80444;
  v81 = HIWORD(v59) ^ 0xA9C;
  v82 = HIWORD(v55) & 0xF;
  v83 = v73 ^ (*(v18 + v78) << 12);
  v84 = 119 * ((((16 * ((BYTE2(v59) ^ 0x9C) & 0xF)) ^ 0x8E989A33) & (v82 ^ 0x9FFCBBF9) | HIWORD(v55) & 0xC) ^ 0x8E989A3F);
  v85 = *(v18 + (v84 + 80444) % 0x3C2) ^ (16 * *(v18 + (v80 - 962 * ((4464623 * v80) >> 32))));
  v86 = (((v85 + 676) | (91 - v85)) & 0x44 | 0x33) * (v85 + 676);
  v87 = 119 * (*(v18 + (v84 + 2023) % 0x3C2u) ^ (*(v18 + (LODWORD(STACK[0x660]) + 119 * v85 - 962 * ((4464623 * (LODWORD(STACK[0x660]) + 119 * v85)) >> 32))) >> 4)) + 80444;
  v88 = 119 * (((BYTE2(v59) ^ 0x9C) & 0xF0 | (v54 >> 20) & 0xF) ^ 0xD);
  v89 = v83 ^ (*(v18 + (v86 - 962 * ((4464623 * v86) >> 32))) << 16);
  v90 = 119 * (*(v18 + (v88 + 80444 - 962 * ((4464623 * (v88 + 80444)) >> 32))) ^ (16 * *(v18 + (v87 - 962 * ((4464623 * v87) >> 32)))));
  v91 = v90 + 80444 - 962 * ((4464623 * (v90 + 80444)) >> 32);
  v92 = 119 * (*(v18 + (v88 + 2023) % 0x3C2u) ^ (*(v18 + (v90 + 2023 - 962 * ((4464623 * (v90 + 2023)) >> 32))) >> 4)) + 80444;
  v93 = *(v18 + (v92 - 962 * ((4464623 * v92) >> 32)));
  v94 = *(v18 + v91) << ((v93 & 0x14 ^ 0x14) + (v93 & 0x14u));
  v95 = 119 * (((v81 >> 4) & 0xF0 | HIBYTE(v54) & 0xF) ^ 1);
  v96 = 119 * (*(v18 + (v95 + 80444 - 962 * ((4464623 * (v95 + 80444)) >> 32))) ^ (16 * v93));
  v97 = v96 + 80444 - 962 * ((4464623 * (v96 + 80444)) >> 32);
  v98 = *(v18 + (v95 + 2023) % 0x3C2u) ^ (*(v18 + (v96 + 2023 - 962 * ((4464623 * (v96 + 2023)) >> 32))) >> 4);
  v99 = v89 ^ v94;
  v81 >>= 8;
  LODWORD(v94) = 119 * ((v81 & 0xF0 | (((BYTE2(v53) ^ 0x11u) >> ((BYTE2(v53) & 4 ^ 4) + (BYTE2(v53) & 4))) - ((2 * ((BYTE2(v53) ^ 0x11u) >> ((BYTE2(v53) & 4 ^ 4) + (BYTE2(v53) & 4)))) & 4) + 2) & 0xF) ^ 2) + 80444;
  v100 = *(v18 + (v94 - 962 * ((4464623 * v94) >> 32))) ^ (16 * *(v18 + (119 * v98 + 80444 - 962 * ((4464623 * (119 * v98 + 80444)) >> 32))));
  v101 = v99 ^ (*(v18 + v97) << 24) ^ (*(v18 + (119 * v100 + 80444 - 962 * ((4464623 * (119 * v100 + 80444)) >> 32))) << 28);
  LODWORD(v94) = (v99 & 0xF) << ((v81 & 4 ^ 4) + (v81 & 4));
  LODWORD(v94) = 119 * ((v94 - ((2 * v94) & 0x16A04) + 128627970) ^ (v49 + 128627970)) + 49385;
  v102 = 119 * (((v99 & 0xF0 ^ 0x91953D3) & ((v56 >> 4) ^ 0x2D5DD3F2) | (v56 >> 4) & 0xC) ^ 0x91953D7) + 49385;
  v103 = 119 * ((v99 >> 4) & 0xF0 | (v56 >> 8) & 0xF ^ 0xC) + 49385;
  v104 = v103 - 962 * ((4464623 * v103) >> 32);
  LOBYTE(v103) = (v104 & 0x35 ^ 0x35) + (v104 & 0x35);
  v105 = (v101 >> 8 >> (57 - v103)) - ((2 * (v101 >> 8 >> (57 - v103))) & 0x58D64E) + 1546414887;
  v106 = v103 & 4;
  v107 = ((v105 ^ 0x5C2C6B27u) >> (v103 & 4)) - ((2 * ((v105 ^ 0x5C2C6B27u) >> (v103 & 4))) & 0x11F973F2);
  v108 = *(v18 + v94 % 0x3C2);
  v109 = v108 ^ (16 * *(v18 + v102 % 0x3C2));
  LODWORD(v94) = ((v107 - 922961415) ^ 0xC8FCB9F9) >> (v106 ^ 4);
  v110 = 119 * ((((16 * v105) | 0xFFFFFC1F) & (v75 ^ 0xED05FC2A) | (16 * v105) & 0xD0) ^ 0xED05FC75) + 49385;
  v111 = 119 * ((((16 * v94) ^ 0x88D46E70 | 0xFFFFFC1F) & (v82 ^ 0x7C1B8C2E) | ((16 * v94) ^ 0x88D46E70) & 0xD0) ^ 0x7C1B8C70) + 49385;
  v112 = (*(v18 + v110 % 0x3C2) << 12) ^ (*(v18 + v104) << 8);
  v113 = 119 * (((v94 >> 8) & 0xF0 | (v52 >> 20) & 0xF) ^ 1) + 49385;
  v114 = (*(v18 + (v113 - 962 * ((4464623 * v113) >> 32))) << 28) ^ (*(v18 + (119 * ((((v94 >> 4) & 0xF0 | 0x11804D08) ^ (HIBYTE(v54) & 8 | 0xE86F9200) | HIBYTE(v54) & 7 | 0x88260200) ^ 0xF9EFDF09) + 49385) % 0x3C2) << 24);
  v115 = v109 ^ 0xF55E570C ^ v112;
  v116 = (*(v18 + (119 * ((((((v107 - 922961415) ^ 0xC8FCB9F9) >> (v106 ^ 4)) & 0xF0 ^ 0x518058CC) & ((v54 >> 20) & 0xF ^ 0x73C7DCF3) & 0xFFFFFFFC | (v54 >> 20) & 3) ^ 0x518058CD) + 49385) % 0x3C2) << 20) ^ (*(v18 + v111 % 0x3C2) << 16) ^ v115 ^ 0x468F93E2;
  v117 = v114 ^ v116;
  v118 = (v117 >> 28) ^ 0xB;
  v119 = v118 >= 9;
  v120 = 119 * v118;
  if (v119)
  {
    v121 = v120 - 962;
  }

  else
  {
    v121 = v120;
  }

  LODWORD(STACK[0x5F8]) = v121;
  v122 = HIBYTE(v117) & 0xF ^ 3;
  v119 = v122 >= 9;
  v123 = 119 * v122;
  if (v119)
  {
    v123 -= 962;
  }

  LODWORD(STACK[0x5E8]) = v123;
  v124 = (v116 >> 20) & 0xF ^ 0xD;
  v119 = v124 >= 9;
  v125 = 119 * v124;
  if (v119)
  {
    v125 -= 962;
  }

  LODWORD(STACK[0x5F0]) = v125;
  v126 = HIWORD(v116) & 0xF ^ 1;
  v119 = v126 >= 9;
  v127 = 119 * v126;
  if (v119)
  {
    v127 -= 962;
  }

  LODWORD(STACK[0x5E4]) = v127;
  v128 = v112 >> 12;
  v119 = v128 >= 9;
  v129 = 119 * v128;
  if (v119)
  {
    v129 -= 962;
  }

  LODWORD(STACK[0x604]) = v129;
  v130 = (v115 >> 8) & 0xF ^ 7;
  v119 = v130 >= 9;
  v131 = 119 * v130;
  if (v119)
  {
    v131 -= 962;
  }

  LODWORD(STACK[0x5EC]) = v131;
  v132 = v109 >> 4;
  v119 = v132 >= 9;
  v133 = 119 * v132;
  if (v119)
  {
    v133 -= 962;
  }

  LODWORD(STACK[0x60C]) = v133;
  v134 = 119 * (v108 & 0xF);
  if ((v108 & 0xFu) >= 9)
  {
    v134 -= 962;
  }

  LODWORD(STACK[0x608]) = v134;
  v135 = (v28 + 1794476030) ^ LODWORD(STACK[0x5D0]);
  LODWORD(STACK[0x538]) = v135;
  v136 = LODWORD(STACK[0x5D8]) - 1889464902 + v29;
  v137 = v136;
  v138 = 119 * (v136 >> 28) + 111503 - 962 * ((4464623 * (119 * (v136 >> 28) + 111503)) >> 32);
  v139 = 119 * (((HIBYTE(v136) & 0xF ^ 0xF) + (HIBYTE(v136) & 0xF)) & HIBYTE(v136)) + 111503;
  v140 = ((((((v135 & 0x7C27B534 ^ 0x5BC0BE87) + 1733546587) ^ ((v135 & 0x7C27B534 ^ 0xB1C37634) - 1924130070) ^ ((v135 & 0x7C27B534 ^ 0x96247D87) + 716640603)) + (((v135 & 0x7C27B534 ^ 0x7E6002D) + 78168442) ^ ((v135 & 0x7C27B534 ^ 0xE1A41EFC) + 1659559849) ^ ((v135 & 0x7C27B534 ^ 0x66421ED1) + 1695342470)) + 1006396609) ^ 0x402301A3) & ((2147482710 - ((v137 >> 20) & 0xF)) & 0x4067485F | (((v137 >> 20) & 0xF) + 937)) ^ 0x400E0) * (((v137 >> 20) & 0xF) + 937);
  v141 = 119 * ((LOWORD(STACK[0x5D8]) + 3514 + v29) >> 12) + 111503;
  v142 = ((*(v18 + (v139 - 962 * ((4464623 * v139) >> 32))) << 8) ^ (*(v18 + v138) << 12) | *(v18 + (119 * (HIWORD(v137) & 0xF) + 111503 - 962 * ((4464623 * (119 * (HIWORD(v137) & 0xF) + 111503)) >> 32)))) ^ (16 * *(v18 + v140 % 0x3C2));
  LOBYTE(v138) = ((LOWORD(STACK[0x5D8]) + 3514 + v29) >> 8) & 8;
  v143 = ((v142 << ((v138 ^ 8) + v138)) - ((2 * (v142 << ((v138 ^ 8) + v138))) & 0xC9094C) + 14976166) ^ *(v18 + (119 * ((v137 >> 8) & 0xF) + 111503 - 962 * ((4464623 * (119 * ((v137 >> 8) & 0xF) + 111503)) >> 32)));
  LODWORD(STACK[0x5D8]) = v137;
  v144 = (((((v137 >> 4) - 87) | (22 - (v137 >> 4))) & 0x30 | 0xFFFFFFC7) & ((v137 & 7 ^ 0x77) + (v137 & 7))) * ((v137 >> 4) + 937);
  v145 = v143 << 8;
  v146 = (v143 << 8) ^ (*(v18 + (v141 - 962 * ((4464623 * v141) >> 32))) << 12);
  v147 = *(v18 + (119 * (v137 & 0xF) + 111503 - 962 * ((4464623 * (119 * (v137 & 0xF) + 111503)) >> 32)));
  v148 = ((v146 ^ 0x43C2D696) & (v147 ^ 0xFFFFFFB7) | v147 & 0x69) ^ (16 * *(v18 + (v144 - 962 * ((4464623 * v144) >> 32))));
  v149 = v40;
  v150 = LODWORD(STACK[0x638]) - 1970264102 - v40 + 543649807;
  v151 = *(v18 + (119 * (HIWORD(v150) & 0xF) + 111503 - 962 * ((4464623 * (119 * (HIWORD(v150) & 0xF) + 111503)) >> 32)));
  v152 = ((*(v18 + (119 * (v150 >> 28) + 111503 - 962 * ((4464623 * (119 * (v150 >> 28) + 111503)) >> 32))) << 12) ^ (*(v18 + (119 * (HIBYTE(v150) & 0xF) + 111503 - 962 * ((4464623 * (119 * (HIBYTE(v150) & 0xF) + 111503)) >> 32))) << 8) ^ 0xABE5B5) & ~v151 | v151 & 0x4A;
  v153 = 119 * ((LOWORD(STACK[0x638]) + 10202 - v40 + 28687) >> 12) + 111503;
  v154 = 119 * (v150 >> 4) + 111503 - 962 * ((4464623 * (119 * (v150 >> 4) + 111503)) >> 32);
  v155 = *(v18 + (119 * ((v150 >> 8) & 0xF) + 111503 - 962 * ((4464623 * (119 * ((v150 >> 8) & 0xF) + 111503)) >> 32)));
  v156 = (*(v18 + (119 * ((v150 >> 20) & 0xF) + 111503 - 962 * ((4464623 * (119 * ((v150 >> 20) & 0xF) + 111503)) >> 32))) << 12) ^ (v152 << 8) ^ 0x2EAFC5;
  v157 = ((v156 & (v155 ^ 0xFFFFFFDF) | v155 & 0x3A) << 8) ^ (*(v18 + (v153 - 962 * ((4464623 * v153) >> 32))) << 12);
  v158 = *(v18 + (119 * (v150 & 0xF) + 111503 - 962 * ((4464623 * (119 * (v150 & 0xF) + 111503)) >> 32)));
  v159 = (v157 ^ 0x3744F880) & (v158 ^ 0xFFFFFFC0) | v158 & 0x70;
  LODWORD(STACK[0x4E0]) = v149;
  v160 = 119 * (v148 & 0x46FE1092 ^ (16 * (v158 & 0xF) - 32 * (v158 & 1) - 607081453) ^ (v148 ^ 0x6461096) & (((7 - v149) ^ v149) & 0xF ^ 0x46FE109A) ^ 0xDD96BC81);
  v161 = 119 * (*(v18 + (v160 + 80444) % 0x3C2) ^ LODWORD(STACK[0x698]));
  v162 = v161 + 80444 - 962 * ((4464623 * (v161 + 80444)) >> 32);
  v163 = *(v18 + v154) ^ (v159 >> 4);
  v164 = 119 * (*(v18 + (v160 + 2023) % 0x3C2) ^ (*(v18 + (v161 + 2023 - 962 * ((4464623 * (v161 + 2023)) >> 32))) >> 4)) + 80444;
  v165 = v148 >> 4;
  v166 = 119 * ((((16 * (v163 & 0xF)) ^ 0x15EBEE4A) & (v165 ^ 0x35EFEFF2) | (v148 >> 4) & 5) ^ 0x15EBEECB);
  v167 = 119 * (*(v18 + (v166 + 80444) % 0x3C2u) ^ (16 * *(v18 + (v164 - 962 * ((4464623 * v164) >> 32)))));
  v168 = v167 + 80444 - 962 * ((4464623 * (v167 + 80444)) >> 32);
  v169 = 119 * (*(v18 + (v166 + 2023) % 0x3C2u) ^ (*(v18 + (v167 + 2023 - 962 * ((4464623 * (v167 + 2023)) >> 32))) >> 4)) + 80444;
  v170 = (v148 >> 8) & 0xF;
  v171 = 119 * (((v163 & 0xE0 ^ 0xFFFFFF7F) & (v170 ^ 0xEF204BAC) | v163 & 0x50) ^ 0xEF204BFC);
  v172 = 119 * (*(v18 + (v171 + 80444) % 0x3C2) ^ (16 * *(v18 + (v169 - 962 * ((4464623 * v169) >> 32)))));
  v173 = ((v157 >> 8) & 0xE0 ^ 0xFFFFFF3F) & ((v146 >> 12) ^ 0x35209E3) ^ ((v157 >> 8) & 0x10 | 0x35209E9);
  v174 = 119 * (*(v18 + (v171 + 2023) % 0x3C2u) ^ (*(v18 + (v172 + 2023 - 962 * ((4464623 * (v172 + 2023)) >> 32))) >> 4)) + 80444;
  v175 = 119 * (*(v18 + (119 * v173 + 80444 - 962 * ((4464623 * (119 * v173 + 80444)) >> 32))) ^ (16 * *(v18 + (v174 - 962 * ((4464623 * v174) >> 32)))));
  v176 = v175 + 80444 - 962 * ((4464623 * (v175 + 80444)) >> 32);
  v177 = *(v18 + ((((110 - v173) & 0x77) + ((v173 + 17) & 0x77)) * (v173 + 17)) % 0x3C2u) ^ (*(v18 + (v175 + 2023 - 962 * ((4464623 * (v175 + 2023)) >> 32))) >> 4);
  v178 = 119 * (((v157 >> 12) & 0xF0 ^ 0xFFFFFFBF) & (HIWORD(v146) & 0xF ^ 0x81B38BFB) ^ 0x81B38B1F);
  v179 = (*(v18 + v176) << 12) ^ (*(v18 + (v172 + 80444 - 962 * ((4464623 * (v172 + 80444)) >> 32))) << 8);
  v180 = *(v18 + (v178 + 80444 - 962 * ((4464623 * (v178 + 80444)) >> 32))) ^ (16 * *(v18 + (119 * v177 + 80444 - 962 * ((4464623 * (119 * v177 + 80444)) >> 32))));
  LOWORD(v177) = (v178 + 2023) % 0x3C2u;
  v181 = 119 * v180 + 80444 - 962 * ((4464623 * (119 * v180 + 80444)) >> 32);
  v182 = (((110 - v180) ^ (v180 + 17)) & 0x77) * (v180 + 17);
  v183 = 119 * (*(v18 + v177) ^ (*(v18 + (v182 - 962 * ((4464623 * v182) >> 32))) >> 4)) + 80444;
  v184 = 119 * ((((v156 >> 8) & 0xF0 | 0x80E4AF0A) & ((v143 << 8 >> 20) & 0xF ^ 0xA3E4FFF7) | (v143 << 8 >> 20) & 5) ^ 0x80E4AF1A);
  v185 = 119 * (*(v18 + (v184 + 80444) % 0x3C2) ^ (16 * *(v18 + (v183 - 962 * ((4464623 * v183) >> 32)))));
  v186 = v185 + 80444 - 962 * ((4464623 * (v185 + 80444)) >> 32);
  v187 = v18;
  v188 = 119 * (*(v18 + (v184 + 2023) % 0x3C2u) ^ (*(v18 + (v185 + 2023 - 962 * ((4464623 * (v185 + 2023)) >> 32))) >> 4)) + 80444;
  v189 = v188 - 962 * ((4464623 * v188) >> 32);
  v190 = (*(v18 + v186) << 20) ^ (*(v18 + v181) << 16);
  v191 = *(v18 + v162);
  v192 = v191 ^ (16 * *(v18 + v168));
  v193 = v192 ^ 0x208B626D ^ v179;
  v194 = v190 ^ v193 ^ 0x8985BE9;
  v195 = v190 ^ v193 ^ 0x6E076B6B;
  v196 = (HIWORD(v156) & 0xF ^ 0xB) << ((v195 & 0x24 ^ 0xE0 ^ (v194 & 0x64 ^ 0x1F) & (v194 & 0x64 ^ 4) & 0x3F) + 32);
  LODWORD(v196) = (v196 - ((2 * v196) & 0xBBBB2DDA) - 572680467) ^ 0xDDDD96ED;
  v197 = (v143 << 8 >> 24) & 0xF;
  LODWORD(v196) = 119 * (v197 ^ 0xBF71E942 ^ (v196 - 1083053753 + (~(2 * v196) | 0x811C2D73)));
  v198 = 119 * (*(v18 + (v196 + 80444) % 0x3C2u) ^ (16 * *(v18 + v189)));
  LODWORD(v196) = 119 * (*(v187 + (v196 + 2023) % 0x3C2u) ^ (*(v187 + (v198 + 2023 - 962 * ((4464623 * (v198 + 2023)) >> 32))) >> 4)) + 80444;
  v199 = (v143 >> 20) & 0xF;
  LODWORD(v196) = 119 * (*(v187 + (119 * (((HIWORD(v156) | 0xFFFFFC3F) & (v199 ^ 0x1AD58C4F) | HIWORD(v156) & 0xB0) ^ 0x1AD58CC1) + 80444) % 0x3C2) ^ (16 * *(v187 + (v196 - 962 * ((4464623 * v196) >> 32))))) + 80444;
  LODWORD(v196) = v194 ^ (*(v187 + (v198 + 80444 - 962 * ((4464623 * (v198 + 80444)) >> 32))) << 24) ^ ((*(v187 + (v196 - 962 * ((4464623 * v196) >> 32))) << 28) | 0x8548F1F);
  v200 = 119 * (v147 & 0xF | (16 * (v191 & 0xF))) + 49385;
  v201 = ((v193 >> 4) & 0xF0 ^ 0xEAF43B5) & (v170 ^ 0xEAF43F5) | (v148 >> 8) & 0xA;
  v202 = *(v18 + (v200 - 962 * ((4464623 * v200) >> 32)));
  LOBYTE(v191) = *(v18 + (119 * (((v192 & 0xF0 ^ 0xC982E9D9) & (v165 ^ 0xEFEBFFF6) | (v148 >> 4) & 6) ^ 0xC982E9D9) + 49385) % 0x3C2);
  v203 = *(v187 + (v200 - 962 * ((4464623 * v200) >> 32))) ^ (16 * *(v187 + (119 * (((v192 & 0xF0 ^ 0xC982E9D9) & (v165 ^ 0xEFEBFFF6) | (v148 >> 4) & 6) ^ 0xC982E9D9) + 49385) % 0x3C2));
  v204 = (119 * (v201 ^ 0xEAF4395u) + 49385) % 0x3C2;
  v205 = (((v191 & 0x35 ^ 0x35) + (v191 & 0x35)) | 0x56) * ((((v179 >> 8) & 0xF0 | (v146 >> 12)) ^ 0xA) + 415);
  v206 = ((v195 >> 12) & 0xF0 | HIWORD(v146) & 0xF) ^ 0xC4;
  v207 = 119 * ((HIWORD(v190) & 0xF0 | (v145 >> 20) & 0xF) ^ 8) + 49385;
  v208 = ((v196 >> 20) & 0xF0 ^ 0x15C86E38) & (v197 ^ 0x1DEA6EFC) & 0xFFFFFFF8 | HIBYTE(v145) & 7;
  LODWORD(v196) = (BYTE3(v196) & 0xF | 0x41828300) ^ BYTE3(v196);
  v209 = v203 ^ (*(v18 + v204) << 8);
  v210 = v209 ^ (*(v18 + (v205 - 962 * ((4464623 * v205) >> 32))) << 12);
  v211 = (*(v187 + (v207 - 962 * ((4464623 * v207) >> 32))) << 20) ^ (*(v187 + (119 * v206 + 49385 - 962 * ((4464623 * (119 * v206 + 49385)) >> 32))) << 16) ^ v210 ^ 0xB5E12925;
  v212 = v211 ^ (*(v18 + (119 * (v208 ^ 0x15C86E3C) + 49385) % 0x3C2) << 24);
  LODWORD(v196) = ((v212 ^ (*(v18 + (119 * (v196 & 0xBF ^ 0xEDBF5E60 ^ (v196 ^ 0xAC3D5C4F) & (v199 ^ 0xEDBF5E4E)) + 49385) % 0x3C2) << 28)) >> 28) ^ 0xB;
  v119 = v196 >= 9;
  v213 = 119 * v196;
  if (v119)
  {
    v213 -= 962;
  }

  LODWORD(STACK[0x5C0]) = v213;
  v214 = HIBYTE(v212) & 0xF ^ 5;
  v119 = v214 >= 9;
  v215 = 119 * v214;
  if (v119)
  {
    v215 -= 962;
  }

  LODWORD(STACK[0x5B0]) = v215;
  v216 = (v211 >> 20) & 0xF ^ 0xE;
  v119 = v216 >= 9;
  v217 = 119 * v216;
  if (v119)
  {
    v217 -= 962;
  }

  LODWORD(STACK[0x5B8]) = v217;
  v218 = HIWORD(v211) & 0xF ^ 1;
  v119 = v218 >= 9;
  v219 = 119 * v218;
  if (v119)
  {
    v219 -= 962;
  }

  LODWORD(STACK[0x5A0]) = v219;
  v220 = v210 >> 12;
  v119 = v220 >= 9;
  v221 = 119 * v220;
  if (v119)
  {
    v221 -= 962;
  }

  LODWORD(STACK[0x638]) = v221;
  v222 = (v209 >> 8) & 0xF;
  v119 = v222 >= 9;
  v223 = 119 * v222;
  if (v119)
  {
    v223 -= 962;
  }

  LODWORD(STACK[0x5A8]) = v223;
  v224 = v203 >> 4;
  v119 = v224 >= 9;
  v225 = 119 * v224;
  if (v119)
  {
    v225 -= 962;
  }

  LODWORD(STACK[0x5D0]) = v225;
  v226 = 119 * (v202 & 0xF);
  if ((v202 & 0xFu) >= 9)
  {
    v226 -= 962;
  }

  LODWORD(STACK[0x5C8]) = v226;
  v227 = LODWORD(STACK[0x590]) + LODWORD(STACK[0x538]);
  LODWORD(STACK[0x538]) = v227;
  v228 = 119 * (LODWORD(STACK[0x658]) >> 12) + 111503;
  v229 = 119 * (LODWORD(STACK[0x658]) >> 4) + 111503;
  v230 = *(v18 + LODWORD(STACK[0x588]));
  v231 = STACK[0x528];
  v232 = STACK[0x528] & (v230 ^ 0xFFFF87);
  v233 = ((v232 | v230 & 0xFC) << 8) ^ (*(v18 + (v228 - 962 * ((4464623 * v228) >> 32))) << 12);
  v234 = *(v18 + LODWORD(STACK[0x580]));
  v235 = ((v233 ^ 0xA07FAD4A) & (v234 ^ 0xFFFFFF4E) | v234 & 0xB5) ^ (16 * *(v18 + (v229 - 962 * ((4464623 * v229) >> 32))));
  v236 = LODWORD(STACK[0x578]) >> ((STACK[0x570] & 0xC6) + 66 + (STACK[0x570] & 0xC6 ^ 0xC6));
  v237 = 119 * (v236 >> 4) + 111503 - 962 * ((4464623 * (119 * (v236 >> 4) + 111503)) >> 32);
  v238 = 119 * (LODWORD(STACK[0x578]) >> 4) + 111503;
  v239 = *(v18 + (119 * (v236 & 0xF) + 111503 - 962 * ((4464623 * (119 * (v236 & 0xFu) + 111503)) >> 32)));
  v240 = STACK[0x558];
  v241 = *(v18 + (119 * (STACK[0x578] & 0xF) + 111503 - 962 * ((4464623 * (119 * (STACK[0x578] & 0xF) + 111503)) >> 32)));
  v242 = ((STACK[0x558] & (v239 ^ 0xFFFFEE) | v239 & 0x95) << 8) ^ (*(v18 + v237) << 12);
  v243 = (v242 ^ 0xD45E17C0) & (v241 ^ 0xFFFFFFC0) | v241 & 0x30;
  v244 = 119 * (v234 & 0xF | (16 * (v241 & 0xF)));
  LOBYTE(v237) = *(v18 + (v238 - 962 * ((4464623 * v238) >> 32))) ^ (v243 >> 4);
  LOWORD(v238) = (v244 + 2023) % 0x3C2u;
  v245 = 119 * (*(v18 + (v244 + 80444 - 962 * ((4464623 * (v244 + 80444)) >> 32))) ^ LODWORD(STACK[0x698]));
  v246 = v245 + 80444 - 962 * ((4464623 * (v245 + 80444)) >> 32);
  v247 = *(v18 + v238) ^ (*(v18 + (v245 + 2023 - 962 * ((4464623 * (v245 + 2023)) >> 32))) >> 4);
  v248 = v235 >> 4;
  v249 = *(v18 + (119 * v247 + 79482 - 962 * ((4464623 * (119 * v247 + 79482)) >> 32)));
  v250 = (v235 >> 4) & 4;
  v251 = 119 * ((((16 * (v237 & 0xF)) ^ 0xFFFFFFFB) & (v248 ^ 0xA141B3FF) | v250) ^ 0xA141B33F);
  v252 = LODWORD(STACK[0x680]) ^ v227;
  LODWORD(STACK[0x530]) = v252;
  v253 = (((v249 - ((2 * v249) & 0x168) - 1531766860) ^ 0xA4B317B4) << (v252 & 4) << (v252 & 4 ^ 4)) ^ (*(v18 + (v251 + 80444) % 0x3C2) - ((2 * *(v18 + (v251 + 80444) % 0x3C2)) & 0xC4) - 1602132894);
  v254 = 119 * (((v253 ^ 0x217FF112) + 1537321486) ^ ((v253 ^ 0xF6202216) - 1929479926) ^ ((v253 ^ 0x77DEB766) + 218164346));
  v255 = (v254 + 2109388458) % 0x3C2;
  v256 = 119 * (*(v18 + (v251 + 2023) % 0x3C2u) ^ (*(v18 + (v254 + 2109310037) % 0x3C2) >> 4)) + 80444;
  v257 = 119 * ((v237 & 0xF0 | (v235 >> 8) & 0xF) ^ 0xDE);
  v258 = v18;
  v259 = 119 * (*(v18 + (v257 + 80444 - 962 * ((4464623 * (v257 + 80444)) >> 32))) ^ (16 * *(v18 + (v256 - 962 * ((4464623 * v256) >> 32)))));
  v260 = *(v18 + v246) ^ (16 * *(v18 + v255)) ^ (*(v18 + (v259 + 80444 - 962 * ((4464623 * (v259 + 80444)) >> 32))) << 8);
  v261 = *(v18 + (v257 + 2023) % 0x3C2u);
  v262 = 119 * (v261 ^ (*(v18 + (v259 + 2023 - 962 * ((4464623 * (v259 + 2023)) >> 32))) >> 4)) + 80444;
  v263 = *(v18 + (v262 - 962 * ((4464623 * v262) >> 32)));
  v264 = ((v263 & 0x5F ^ 0xFFFFFFDF) + (v263 & 0x5F)) & ((v261 & 0x2F ^ 0x2F) + (v261 & 0x2F));
  v265 = 119 * (v264 & ((v233 >> 12) ^ 0x76) ^ (v264 & 6 | (v242 >> 8) & 0xF0) ^ 0x60);
  v266 = 119 * (*(v18 + (v265 + 80444 - 962 * ((4464623 * (v265 + 80444)) >> 32))) ^ (16 * v263));
  v267 = v260 ^ (*(v18 + (v266 + 80444 - 962 * ((4464623 * (v266 + 80444)) >> 32))) << 12);
  v268 = 119 * (*(v258 + (v265 + 2023) % 0x3C2u) ^ (*(v258 + (v266 + 2023 - 962 * ((4464623 * (v266 + 2023)) >> 32))) >> 4)) + 80444;
  v269 = (v242 >> 12) & 0xF0 ^ 0xCEDF0F79;
  v270 = HIWORD(v233) & 0xF;
  v271 = 119 * ((v269 & (v270 ^ 0xCEDF0FF2) | HIWORD(v233) & 6) ^ 0xCEDF0FAF);
  v272 = 119 * (*(v258 + (v271 + 80444) % 0x3C2) ^ (16 * *(v258 + (v268 - 962 * ((4464623 * v268) >> 32)))));
  v273 = v272 + 80444 - 962 * ((4464623 * (v272 + 80444)) >> 32);
  v274 = 119 * (*(v258 + (v271 + 2023) % 0x3C2u) ^ (*(v258 + (v272 + 2023 - 962 * ((4464623 * (v272 + 2023)) >> 32))) >> 4)) + 80444;
  v275 = v231 >> 12;
  v276 = (((v240 >> 8) & 0xF0 ^ 0x8B762C91) & (v275 ^ 0xBF767FFF) | (v231 >> 12) & 0xE) ^ 0x8B762C5D;
  v277 = *(v18 + (v274 - 962 * ((4464623 * v274) >> 32)));
  v278 = v267 ^ (*(v18 + v273) << ((v277 & 0x10 ^ 0x10) + (v277 & 0x10u)));
  v279 = 119 * (*(v18 + (119 * v276 + 80444) % 0x3C2) ^ (16 * v277));
  v280 = 119 * (*(v18 + ((((110 - v276) | (v276 + 17)) & 0x77) * (v276 + 17)) % 0x3C2u) ^ (*(v18 + (v279 + 2023 - 962 * ((4464623 * (v279 + 2023)) >> 32))) >> 4)) + 80444;
  v281 = 119 * (*(v18 + (LODWORD(STACK[0x560]) + 80444 - 962 * ((4464623 * (LODWORD(STACK[0x560]) + 80444)) >> 32))) ^ (16 * *(v18 + (v280 - 962 * ((4464623 * v280) >> 32)))));
  v282 = v281 + 80444 - 962 * ((4464623 * (v281 + 80444)) >> 32);
  v283 = *(v18 + LODWORD(STACK[0x568])) ^ (*(v18 + (v281 + 2023 - 962 * ((4464623 * (v281 + 2023)) >> 32))) >> 4);
  v232 >>= 20;
  v284 = 119 * (*(v258 + (119 * (((HIWORD(v240) & 0xF0 ^ 0x63F64D13) & (v232 ^ 0xEBF67FF2) | v232 & 0xC) ^ 0x63F64D1B) + 80444) % 0x3C2) ^ (16 * *(v258 + (119 * v283 + 80444 - 962 * ((4464623 * (119 * v283 + 80444)) >> 32))))) + 80444;
  v285 = v278 ^ (*(v18 + (v279 + 80444 - 962 * ((4464623 * (v279 + 80444)) >> 32))) << 20) ^ (*(v18 + v282) << 24) ^ (*(v18 + (v284 - 962 * ((4464623 * v284) >> 32))) << 28);
  v286 = 119 * ((((16 * (v278 & 0xF)) ^ 0xFCC54EDD) & (v234 & 0xF ^ 0xFFCDCFFF) | v234 & 2) ^ 0xFCC54EDD) + 49385;
  v287 = ((v278 >> 4) & 0xF0 | (v235 >> 8) & 0xF) ^ 0xE;
  v288 = *(v18 + (119 * (((v278 & 0xF0 ^ 0x54CEB4EB) & (v248 ^ 0x7DDFB5FF) | v250) ^ 0x54CEB4EF) + 49385) % 0x3C2);
  v289 = HIWORD(v285) >> ((v288 & 4 ^ 4) + (v288 & 4));
  v290 = v289 - ((2 * v289) & 0x13056) - 1423402965;
  v291 = 119 * ((((16 * v290) & 0xF0 ^ 0xFFFFFFCF) & (v275 ^ 0xFCC24B57) | (16 * v290) & 0xA0) ^ 0xFCC24BFB) + 49385;
  v292 = (v290 >> 4) & 0xB0 | (~(v290 >> 4) | 0xFFFFFE3F) & (v232 ^ 0xE6DCA24A);
  v293 = *(v18 + v291 % 0x3C2);
  v294 = *(v258 + v286 % 0x3C2) ^ (16 * v288) ^ (*(v258 + (119 * v287 + 49385 - 962 * ((4464623 * (119 * v287 + 49385)) >> 32))) << 8) ^ (*(v258 + (119 * ((((v278 >> 8) & 0xF0 | 0x9C78710B) & ((v233 >> 12) ^ 0xDC78F5FF) | (v233 >> 12) & 4) ^ 0x9C78710B) + 49385) % 0x3C2) << 12) ^ (*(v258 + (119 * ((((v278 >> 12) & 0xF0 ^ 0x2917F6C1) & (v270 ^ 0x7B97F7F2) | HIWORD(v233) & 0xE) ^ 0x2917F6CF) + 49385) % 0x3C2) << 16) ^ 0xA17A9B50 ^ ((v293 << 20) - ((v293 << 21) & 0x2E00000) - 1585800368);
  v295 = *(v18 + (119 * ((((v289 - ((2 * v289) & 0x56) + 43) & 0xF0 ^ 0xAB64FB27) & (HIWORD(v231) & 0xF ^ 0xFF75FBFE) | HIWORD(v231) & 8) ^ 0xAB64FB0F) + 49385) % 0x3C2) << 24;
  v296 = (v295 - (v294 ^ v295)) ^ -v294 ^ (v294 - ((2 * v294) & 0x4C7F7218) - 1505773300);
  v297 = v296 ^ 0xA63FB90C;
  v298 = (v296 ^ 0xA63FB90C) + v295;
  v299 = (v298 ^ (*(v18 + (119 * (v292 ^ 0xE6DCA2C3) + 49385 - 962 * ((4464623 * (119 * (v292 ^ 0xE6DCA2C3) + 49385)) >> 32))) << 28)) >> 28;
  v119 = v299 >= 9;
  v300 = 119 * v299;
  if (v119)
  {
    v300 -= 962;
  }

  LODWORD(STACK[0x590]) = v300;
  v301 = HIBYTE(v298) & 0xF;
  v119 = v301 >= 9;
  v302 = 119 * v301;
  if (v119)
  {
    v302 -= 962;
  }

  LODWORD(STACK[0x588]) = v302;
  v303 = (v297 >> 20) & 0xF;
  v119 = v303 >= 9;
  v304 = 119 * v303;
  if (v119)
  {
    v304 -= 962;
  }

  LODWORD(STACK[0x580]) = v304;
  v305 = HIWORD(v297) & 0xF;
  v119 = v305 >= 9;
  v306 = 119 * v305;
  if (v119)
  {
    v306 -= 962;
  }

  LODWORD(STACK[0x570]) = v306;
  v307 = v297 >> 12;
  v119 = v307 >= 9;
  v308 = 119 * v307;
  if (v119)
  {
    v308 -= 962;
  }

  LODWORD(STACK[0x578]) = v308;
  v309 = (v297 >> 8) & 0xF;
  v119 = v309 >= 9;
  v310 = 119 * v309;
  if (v119)
  {
    v310 -= 962;
  }

  LODWORD(STACK[0x568]) = v310;
  v311 = v296 >> 4;
  v119 = v311 >= 9;
  v312 = 119 * v311;
  if (v119)
  {
    v312 -= 962;
  }

  LODWORD(STACK[0x560]) = v312;
  v313 = v297 & 0xF;
  v119 = v313 >= 9;
  v314 = 119 * v313;
  if (v119)
  {
    v314 -= 962;
  }

  LODWORD(STACK[0x558]) = v314;
  v315 = LODWORD(STACK[0x4F8]) + 2108697162;
  v316 = (((LODWORD(STACK[0x680]) ^ 0x41C5ACAC) - 61121985) ^ ((LODWORD(STACK[0x680]) ^ 0xBD4782DF) + 14251086) ^ ((LODWORD(STACK[0x680]) ^ 0x497F1D59) - 186520628)) - 589721548;
  LODWORD(STACK[0x4F8]) = v316;
  v317 = v316 ^ LODWORD(STACK[0x548]);
  LODWORD(STACK[0x4F0]) = v317;
  v318 = (v317 ^ v315) + 2 * (v317 & v315);
  v319 = (((LODWORD(STACK[0x690]) ^ 0x3B15761B) - 1545428197) ^ ((LODWORD(STACK[0x690]) ^ 0xD1A41F72) + 1230228084) ^ ((LODWORD(STACK[0x690]) ^ 0x5F4C5A43) - 944009405)) - 1204654143;
  LODWORD(STACK[0x4D4]) = v319;
  v320 = STACK[0x540] & 0x40;
  if ((v319 & v320) != 0)
  {
    v320 = -v320;
  }

  v321 = (v320 + v319) ^ STACK[0x540] & 0xFFFFFFBF;
  LODWORD(STACK[0x4D0]) = v321;
  v322 = *(v18 + (119 * (v318 >> 28) + 111503 - 962 * ((4464623 * (119 * (v318 >> 28) + 111503)) >> 32)));
  v323 = LODWORD(STACK[0x4F4]) - (((v321 ^ 0x42EEAD60) + 710930523) ^ ((v321 ^ 0xAE5C50C) + 1649711159) ^ ((v321 ^ 0x480B686C) + 549074263)) + 531642693;
  v324 = (119 * ((v323 >> 8) & 0xF) + 111503) % (((112 - 119 * ((v323 >> 8) & 0xF)) | (119 * ((v323 >> 8) & 0xF) + 111503)) & 0x3C2);
  v325 = v322 - ((2 * v322) & 0x1B8);
  v326 = *(v18 + (119 * (HIBYTE(v318) & 0xF) + 111503 - 962 * ((4464623 * (119 * (HIBYTE(v318) & 0xF) + 111503)) >> 32)));
  v327 = *(v18 + (119 * ((v318 >> 20) & 0xF) + 111503 - 962 * ((4464623 * (119 * ((v318 >> 20) & 0xF) + 111503)) >> 32)));
  v328 = *(v18 + (119 * (HIWORD(v318) & 0xF) + 111503 - 962 * ((4464623 * (119 * (HIWORD(v318) & 0xF) + 111503)) >> 32)));
  v329 = (((v325 << 12) + 1623048192) ^ (((v326 - ((2 * v326) & 0x140)) << 8) - 1021272064) ^ 0xE878AB) & ((v328 - ((2 * v328) & 0x6E) - 1638410185) ^ 0xA82798) ^ (v328 - ((2 * v328) & 0x6E) - 1638410185) & 0x4754;
  v330 = *(v18 + (119 * (v318 >> 12) + 111503 - 962 * ((4464623 * (119 * (v318 >> 12) + 111503)) >> 32)));
  v331 = v330 - ((2 * v330) & 0xFFFFFFC3);
  v332 = *(v18 + (119 * ((v318 >> 8) & 0xF) + 111503 - 962 * ((4464623 * (119 * ((v318 >> 8) & 0xF) + 111503)) >> 32)));
  v333 = ((((v327 - ((2 * v327) & 0x14A)) << 12) + 1391087616) ^ (v329 << 8) ^ 0xAE0B23) & ((v332 - ((2 * v332) & 0x174) - 1925000774) ^ 0xBD2E51) ^ (v332 - ((2 * v332) & 0x174) - 1925000774) & 0x401BDC;
  LODWORD(STACK[0x548]) = v333;
  v334 = *(v18 + (119 * (v318 & 0xF) + 111503 - 962 * ((4464623 * (119 * (v318 & 0xF) + 111503)) >> 32)));
  v335 = (v333 << 8) ^ ((v331 << 12) - 1068625920);
  v336 = v334 - ((2 * v334) & 0x1FC) - 1205484802;
  v337 = *(v18 + (119 * (v318 >> 4) + 111503 - 962 * ((4464623 * (119 * (v318 >> 4) + 111503)) >> 32)));
  v338 = (16 * (v337 - ((2 * v337) & 0x1D8)) + 1027989184) ^ v336 & 0x1801814C ^ (v335 ^ 0x595DC9B3) & (v336 ^ 0x47DA3D49);
  v339 = *(v18 + (119 * (v323 >> 28) + 111503 - 962 * ((4464623 * (119 * (v323 >> 28) + 111503)) >> 32)));
  v340 = *(v18 + (119 * (HIBYTE(v323) & 0xF) + 111503 - 962 * ((4464623 * (119 * (HIBYTE(v323) & 0xF) + 111503)) >> 32)));
  v341 = (((v340 - ((2 * v340) & 0x134)) << 8) + 960141824) ^ (((v339 - ((2 * v339) & 0x62)) << 12) + 1606750208);
  v342 = *(v18 + (119 * ((v323 >> 20) & 0xF) + 111503 - 962 * ((4464623 * (119 * ((v323 >> 20) & 0xF) + 111503)) >> 32)));
  v343 = *(v18 + (119 * (v323 >> 12) + 111503 - 962 * ((4464623 * (119 * (v323 >> 12) + 111503)) >> 32)));
  v344 = *(v18 + (119 * (HIWORD(v323) & 0xF) + 111503 - 962 * ((4464623 * (119 * (HIWORD(v323) & 0xF) + 111503)) >> 32)));
  v345 = v341 ^ (v344 - ((2 * v344) & 0xFFFFFF87) + 37315) ^ (16 * (v342 - ((2 * v342) & 0x1A0)) + 1798368512);
  v346 = *(v18 + v324) - ((2 * *(v18 + v324)) & 0x7C);
  v347 = 119 * (v323 >> 4) + 111503 - 962 * ((4464623 * (119 * (v323 >> 4) + 111503)) >> 32);
  v348 = *(v18 + (119 * (v323 & 0xF) + 111503 - 962 * ((4464623 * (119 * (v323 & 0xF) + 111503)) >> 32)));
  v349 = v348 - ((2 * v348) & 0x52) + 1071949353;
  v350 = ((((v343 - ((2 * v343) & 0x62)) << 12) + 1018368000) ^ ((v346 << 8) - 5620224) & 0xBB04A500 ^ (((v346 << 8) - 5620224) ^ 0x554040) & ((v345 << 16) ^ 0xB2785A40) ^ 0x869ABD60) & (v349 ^ 0xC01B59D0) ^ v349 & 0x204404D0;
  v351 = 119 * ((((v336 & 0xF | (16 * (v349 & 0xF))) ^ 0x59823D69) - 277375345) ^ (((v336 & 0xF | (16 * (v349 & 0xF))) ^ 0xDF4763) - 1238700923) ^ (((v336 & 0xF | (16 * (v349 & 0xF))) ^ 0x595D7A94) - 274149004));
  v352 = 119 * (*(v18 + (v351 - 204569466) % 0x3C2u) ^ LODWORD(STACK[0x698]));
  v353 = (*(v18 + v347) - ((2 * *(v18 + v347)) & 0x13A) - 336594787) ^ (v350 >> 4);
  v354 = 119 * (*(v18 + (v351 - 204647887) % 0x3C2u) ^ (*(v18 + (v352 + 2023 - 962 * ((4464623 * (v352 + 2023)) >> 32))) >> 4)) + 80444;
  v355 = v338 >> 4;
  v356 = ((16 * (v353 & 0xF)) ^ 0x5F92C385) & (v355 ^ 0x5F92C3FC) | (v338 >> 4) & 0xA;
  v357 = 119 * (((v356 ^ 0x3B45809A) + 931766700) ^ ((v356 ^ 0x858E904) + 76859446) ^ ((v356 ^ 0x6C8FAAE9) + 1615039449));
  v358 = 119 * (*(v18 + (v357 + 1055263547) % 0x3C2u) ^ (16 * *(v18 + (v354 - 962 * ((4464623 * v354) >> 32)))));
  v359 = *(v18 + (v357 + 1055185126) % 0x3C2u) ^ (*(v18 + (v358 + 2023 - 962 * ((4464623 * (v358 + 2023)) >> 32))) >> 4);
  v360 = (v353 & 0x10 | (v338 >> 8) & 0xF) ^ (v353 & 0xE0 | 0x9A19101);
  v361 = 119 * (((v360 ^ 0x277286EA) - 154830867) ^ ((v360 ^ 0x24410222) - 168365275) ^ ((v360 ^ 0xA921525) - 618273756));
  v362 = 119 * (*(v18 + (v361 - 1919275896) % 0x3C2u) ^ (16 * *(v18 + (119 * v359 + 80444 - 962 * ((4464623 * (119 * v359 + 80444)) >> 32)))));
  v363 = 119 * (*(v18 + (v361 - 1919354317) % 0x3C2u) ^ (*(v18 + (v362 + 2023 - 962 * ((4464623 * (v362 + 2023)) >> 32))) >> 4)) + 80444;
  v364 = (v353 >> 4) & 0xF0 | (((v333 << 8) ^ ((v331 << 12) + 4096) ^ 0xAEEC) >> 12);
  v365 = 119 * (((v364 ^ 0x62AFE1BD) - 1288927642) ^ ((v364 ^ 0x700B85A7) - 1584864640) ^ ((v364 ^ 0x12A4644A) - 1020853357));
  v366 = 119 * (*(v18 + (v365 - 1679025779) % 0x3C2u) ^ (16 * *(v18 + (v363 - 962 * ((4464623 * v363) >> 32)))));
  v367 = 119 * (*(v18 + (v365 - 1679104200) % 0x3C2u) ^ (*(v18 + (v366 + 2023 - 962 * ((4464623 * (v366 + 2023)) >> 32))) >> 4)) + 80444;
  v368 = ((v353 >> 8) & 0xF0 ^ 0x282BDF6) & (((v335 ^ 0x312EAEEC) >> 16) & 0xF ^ 0x282BDFB) | ((v335 ^ 0x312EAEEC) >> 16) & 9;
  v369 = 119 * (((v368 ^ 0xD660DA7E) + 1738084683) ^ ((v368 ^ 0x91CB82A0) + 540166549) ^ ((v368 ^ 0x4529E5B9) - 187683186));
  v370 = 119 * (*(v18 + (v369 - 1851967184) % 0x3C2) ^ (16 * *(v18 + (v367 - 962 * ((4464623 * v367) >> 32)))));
  v371 = ((v353 >> 12) & 0x60 ^ 0xFFFFFFDF) & (((v333 << 8) >> 20) & 0xF ^ 0x3A31966) | (v353 >> 12) & 0x90;
  v372 = 119 * (*(v18 + (v369 - 1852045605) % 0x3C2) ^ (*(v18 + (v370 + 2023 - 962 * ((4464623 * (v370 + 2023)) >> 32))) >> 4)) + 80444;
  v373 = v372 - 962 * ((4464623 * v372) >> 32);
  v374 = 119 * (((v371 ^ 0xD83233F9) - 593047705) ^ ((v371 ^ 0x3A1F6F02) + 1049334686) ^ ((v371 ^ 0xE18E4592) - 451233522));
  v375 = 119 * (*(v18 + (v374 - 1526377365) % 0x3C2) ^ (16 * *(v18 + v373)));
  v376 = (LODWORD(STACK[0x550]) - 430658680) ^ LODWORD(STACK[0x538]);
  LODWORD(STACK[0x4F4]) = ((LODWORD(STACK[0x530]) ^ 0xB6E942A6) - 1230550142) ^ ((LODWORD(STACK[0x530]) ^ 0xF0627C8) + 256388848) ^ ((LODWORD(STACK[0x530]) ^ 0x93B45677) - 1812308143);
  v377 = *(v18 + (v358 + 80444 - 962 * ((4464623 * (v358 + 80444)) >> 32)));
  v378 = v377 - ((2 * v377) & 0x26);
  v379 = *(v18 + (v352 + 80444 - 962 * ((4464623 * (v352 + 80444)) >> 32)));
  v380 = v379 - ((2 * v379) & 0x1C8);
  v381 = *(v258 + (v362 + 80444 - 962 * ((4464623 * (v362 + 80444)) >> 32)));
  v382 = *(v258 + (v366 + 80444 - 962 * ((4464623 * (v366 + 80444)) >> 32)));
  v383 = (((v382 - ((2 * v382) & 0xBE)) << 12) - 247074816) ^ (((v381 - ((2 * v381) & 0x1B8)) << 8) + 2114378752);
  v384 = *(v258 + (v370 + 80444 - 962 * ((4464623 * (v370 + 80444)) >> 32)));
  v385 = 119 * (*(v258 + (v374 - 1526455786) % 0x3C2) ^ (*(v258 + (v375 + 2023) % (((2147481624 - v375) & 0x77546EED) + ((v375 + 2023) & 0x46EEDu) - 2002021163)) >> 4)) + 80444;
  v386 = HIWORD(v353) & 0xF0;
  v387 = (((v386 ^ 0xB97D1693) - 1999546328) ^ ((v386 ^ 0xF114C8AD) - 1061648870) ^ ((v386 ^ 0x4869DE8E) + 2042990651)) - ((((v386 | ((v333 << 8) >> 24) & 0xF) ^ 0x7064F57C) + 2061927563) ^ (((v386 | ((v333 << 8) >> 24) & 0xF) ^ 0x4D1B4AFB) + 1201224462) ^ (((v386 | ((v333 << 8) >> 24) & 0xF) ^ 0x3D7FBF3B) + 939380430)) - 657054906;
  v388 = ((v333 << 8) >> 24) & 0xF;
  v389 = *(v258 + (v375 + 80444 - 962 * ((4464623 * (v375 + 80444)) >> 32)));
  v390 = ((v387 & (v388 ^ 0xC)) - 2 * (v387 & (v388 ^ 0xC) & 1) - 430709439) ^ -(v388 ^ 0xC) ^ ((v387 | v388 ^ 0xC) - ((2 * (v387 | v388 ^ 0xC)) & 0x527E2ACA) + 692000101);
  v391 = (((v390 ^ 0x51DFEA17) - 262709825) ^ ((v390 ^ 0x517F492A) - 252182908) ^ ((v390 ^ 0xCFCC5319) + 1850008753)) + (((v386 ^ 0xBEDF8F4B) - 1888239104) ^ (v386 + 1238388411) ^ ((v386 ^ 0x9365C5F8) - 1563849907));
  v392 = (((v389 - ((2 * v389) & 0xEA)) << 20) + 1196425216) ^ (((v384 - ((2 * v384) & 0x30)) << 16) + 1377304576);
  v393 = *(v258 + (v385 - 962 * ((4464623 * v385) >> 32)));
  v394 = *(v258 + ((v393 & 0x10 ^ 0x10) + (v393 & 0x10) - (((-18 - v391) | (v391 + 17)) & 0x99)) * (v391 + 1601137937) % 0x3C2) ^ (16 * v393);
  v395 = (119 * v391 + 1556775058) % 0x3C2;
  v396 = 119 * v394 + 80444 - 962 * ((4464623 * (119 * v394 + 80444)) >> 32);
  v397 = STACK[0x4F0];
  v398 = v376 ^ LODWORD(STACK[0x4F0]);
  v399 = 119 * (v394 + ((!((v376 ^ v397) & 1) + ((v376 ^ v397) & 1)) | 0x11));
  v400 = 119 * (*(v258 + v395) ^ (*(v258 + (v399 - 962 * ((4464623 * v399) >> 32))) >> 4)) + 80444;
  v401 = *(v258 + v396) - ((2 * *(v258 + v396)) & 0x44);
  v402 = (v353 >> 20) & 0xF0 ^ 0x88AD99E4;
  v403 = (LODWORD(STACK[0x548]) >> 20) & 0xF;
  v404 = v402 & (v403 ^ 0xC8BFF9F2) | (LODWORD(STACK[0x548]) >> 20) & 0xB;
  v405 = 119 * (*(v258 + (119 * (((v404 ^ 0x1B7F0EF1) - 2127753651) ^ ((v404 ^ 0x4A4A19D8) - 803727002) ^ ((v404 ^ 0xD9988E1C) + 1137348258)) + 724622221) % 0x3C2) ^ (16 * *(v258 + (v400 - 962 * ((4464623 * v400) >> 32))))) + 80444;
  v406 = *(v258 + (v405 - 962 * ((4464623 * v405) >> 32)));
  v407 = v406 - ((2 * v406) & 0xC);
  v408 = ((16 * (v380 + 21733092)) & 0xE0 ^ 0xFFFFFFBF) & (v336 & 0xF | 0x23B72FE0) & 0xFFFFFFEF | (16 * ((v380 + 21733092) & 1));
  v409 = (119 * (((v408 ^ 0xD45E0E47) + 762278773) ^ ((v408 ^ 0xC2AA682E) + 1000019230) ^ ((v408 ^ 0x35434987) - 864930635)) + 1804614583) % 0x3C2;
  v410 = (((16 * v378 + 48) ^ (v380 - 28)) & 0xF0 ^ 0xBAAB69AE) & (v355 ^ 0xBEEF69FD);
  v411 = (16 * v378 - 1408761552) ^ 0xC07134FE ^ v383;
  v412 = (v411 >> 4) & 0xF0 | (v338 >> 8) & 0xF;
  v413 = 119 * ((((v410 & 0xFFFFFFFE | (v338 >> 4) & 1) ^ 0x94DBDDC0) - 2105673201) ^ (((v410 & 0xFFFFFFFE | (v338 >> 4) & 1) ^ 0x74CDA050) + 1651214239) ^ (((v410 & 0xFFFFFFFE | (v338 >> 4) & 1) ^ 0x5ABD14EF) + 1276850978)) + 97594411;
  v414 = 119 * (((v412 ^ 0xB611A031) - 890164480) ^ ((v412 ^ 0x8E3C3875) - 220417348) ^ ((v412 ^ 0x382D98D8) + 1154290199)) - 207588268;
  v415 = ((v383 >> 8) & 0xF0 ^ 0xFFFFFFDF) & ((((v333 << 8) ^ ((v331 << 12) + 4096) ^ 0xAEEC) >> 12) ^ 0xC243CFF7);
  v416 = ((v415 ^ 0xDA3C90D) + 824319355) ^ ((v415 ^ 0x72460DF9) + 1321720207) ^ ((v415 ^ 0xBDA60B03) - 2128093323);
  v417 = *(v258 + v409);
  v418 = v417 ^ (16 * *(v258 + v413 % 0x3C2));
  v419 = (*(v258 + (119 * v416 - 1815742478) % 0x3C2) << 12) ^ (*(v258 + v414 % 0x3C2) << 8);
  v420 = ((((v403 ^ 0x4CB14BA1) + 24986) ^ ((v403 ^ 0x415D205F) + 2664) ^ ((v403 ^ 0x6BF4) + 16845)) + (((v403 ^ 0x15F8) + 60311) ^ ((v403 ^ 0x64CA) + 39589) ^ ((v403 ^ 0x7137) + 36698)) + 55137) & (HIWORD(v335) ^ 0x9CBB);
  v421 = v392 ^ v411;
  v422 = ((v401 << 24) - 1577058304) ^ v421;
  v423 = 119 * ((((v421 >> 12) & 0xF0 ^ v420 ^ 0x3E6332A4) + 1305270007) ^ (((v421 >> 12) & 0xF0 ^ v420 ^ 0xBC98C1DE) - 818469491) ^ (((v421 >> 12) & 0xF0 ^ v420 ^ 0x82FBF35A) - 246147319)) + 960335732;
  v424 = (HIWORD(v392) & 0xF0 ^ 0xAD8D0943) & (((v333 << 8) >> 20) & 0xF | 0xADFD7DF0) ^ ((LODWORD(STACK[0x548]) >> 12) & 0xC | 0x707410);
  v425 = v422 ^ ((v407 << 28) + 1610612736);
  v426 = ((v422 >> 20) & 0xF0 ^ 0xDBCDF2A7) & (v388 ^ 0xDFFDFFF3) ^ (HIWORD(LODWORD(STACK[0x548])) & 8 | 0x4300D10);
  LODWORD(STACK[0x550]) = HIBYTE(v425);
  v427 = (HIBYTE(v425) & 0xF0 ^ 0xFFFFFFCF) & (v403 ^ 0x200E5AF2);
  v428 = (*(v258 + (119 * (((v427 ^ 0xCBECC234) - 853341478) ^ ((v427 ^ 0x56532055) + 1352460473) ^ ((v427 ^ 0xBDB1B896) - 1149341572)) - 66726308) % 0x3C2) << 28) ^ (*(v258 + (119 * (((v426 ^ 0xA5E45761) - 2123084467) ^ ((v426 ^ 0x102A74EB) + 884633287) ^ ((v426 ^ 0x6A33DC75) + 1319355993)) + 535489492) % 0x3C2) << 24);
  v429 = v418 ^ 0x4DC938F0 ^ v419;
  v430 = v429 ^ (*(v258 + v423 % 0x3C2) << 16);
  v431 = v430 ^ (*(v258 + (119 * (((v424 ^ 0x692C064A) - 41585595) ^ ((v424 ^ 0x10068A2C) - 2068842461) ^ ((v424 ^ 0xD4D7F179) + 1082033016)) + 1508753291) % 0x3C2) << 20);
  v432 = v428 ^ v431;
  v433 = (v432 >> 28) ^ 4;
  v119 = v433 >= 9;
  v434 = 119 * v433;
  if (v119)
  {
    v434 -= 962;
  }

  LODWORD(STACK[0x540]) = v434;
  v435 = HIBYTE(v432) & 0xF ^ 0xD;
  v119 = v435 >= 9;
  v436 = 119 * v435;
  if (v119)
  {
    v436 -= 962;
  }

  LODWORD(STACK[0x538]) = v436;
  v437 = (v431 >> 20) & 0xF ^ 0xC;
  v119 = v437 >= 9;
  v438 = 119 * v437;
  if (v119)
  {
    v438 -= 962;
  }

  LODWORD(STACK[0x548]) = v438;
  v439 = HIWORD(v430) & 0xF ^ 9;
  v119 = v439 >= 9;
  v440 = 119 * v439;
  if (v119)
  {
    v440 -= 962;
  }

  LODWORD(STACK[0x530]) = v440;
  v441 = v419 >> 12;
  v119 = v441 >= 9;
  v442 = 119 * v441;
  if (v119)
  {
    v442 -= 962;
  }

  LODWORD(STACK[0x528]) = v442;
  v443 = (v429 >> 8) & 0xF ^ 8;
  v119 = v443 >= 9;
  v444 = 119 * v443;
  if (v119)
  {
    v444 -= 962;
  }

  LODWORD(STACK[0x520]) = v444;
  v445 = v418 >> 4;
  v119 = v445 >= 9;
  v446 = 119 * v445;
  if (v119)
  {
    v446 -= 962;
  }

  LODWORD(STACK[0x518]) = v446;
  if ((v417 & 0xFu) >= 9)
  {
    v447 = 119 * (v417 & 0xF) - 962;
  }

  else
  {
    v447 = 119 * (v417 & 0xF);
  }

  LODWORD(STACK[0x510]) = v447;
  v448 = LODWORD(STACK[0x4F4]) - 1468949772;
  v449 = LODWORD(STACK[0x4F8]) - v448;
  LODWORD(STACK[0x464]) = v318 ^ v449;
  v450 = (v318 ^ v449) & 0xB0F2984;
  v451 = v449 - 2068799412 + (((v447 & 0x230 ^ 0x70407630) + (v447 & 0x230)) ^ ((((v450 ^ 0xEA137C9D) - 1016078350) ^ ((v450 ^ 0xE728078) + 655237909) ^ ((v450 ^ 0xE461FCE5) - 853713014)) + (((v450 ^ 0x52FBE1BE) - 576335929) ^ ((v450 ^ 0xC85A3666) + 1191450655) ^ ((v450 ^ 0x91AEFE5C) + 519098405)) + 1379030166));
  v452 = v451 - (v398 ^ 0x1FDA5F52 ^ v448);
  v453 = (v318 | 0x12F73F34) + (((v398 ^ 0x1FDA5F52) - v449) ^ 0x6AE7AE48) + (~v318 & 0xED08C0CB) + 1;
  v454 = (((v452 + v397) ^ v453 ^ 0x2759D7CA) + 1572663092) ^ (((v452 + v397) ^ v453 ^ 0x7CA8F75) + 2100279181) ^ (((v452 + v397) ^ v453 ^ 0x209358BF) + 1517707335);
  v455 = v454 - v453 + v452;
  v456 = v455 - 1108651450 + v451;
  v457 = v456 ^ (v455 - 1108651450);
  LODWORD(STACK[0x4F0]) = v456;
  LODWORD(STACK[0x4F4]) = v457;
  v458 = ((v457 ^ 0x57FFD89D) + 1112872209) ^ ((v457 ^ 0x56B0DB25) + 1125783209) ^ ((v457 ^ 0x14F03B8) + 350604854);
  v459 = LODWORD(STACK[0x648]) + 84464434;
  LODWORD(STACK[0x49C]) = v453 - v452;
  v460 = (v455 - 1108651450 + v451) ^ (v453 - v455 - 469689774);
  LODWORD(STACK[0x4F8]) = v460;
  v461 = v453 - v452 - v458 - 589675954;
  LODWORD(STACK[0x4D8]) = v461;
  v462 = v461 + (v460 ^ 0xD915961A);
  LODWORD(STACK[0x648]) = v462;
  v463 = v459 - 1034228809 + v462;
  v464 = (119 * (v463 >> 4) + 111503) % (((119 * (v463 >> 4) + 111503) ^ (112 - 119 * (v463 >> 4))) & 0x3C2u);
  v465 = LODWORD(STACK[0x4E0]) - 311895611;
  v466 = v465 ^ LODWORD(STACK[0x678]) ^ (a4 - ((2 * a4 + 2063922606) & 0x600E2106) + 763988826);
  v467 = LODWORD(STACK[0x668]) ^ v465 ^ 0x580C26C9 ^ ((v466 ^ 0xB0071083) - 2 * ((v466 ^ 0xB0071083) & 0x580C26D9 ^ v466 & 0x10) + 1477191369);
  v468 = v467 + (v466 ^ 0xB0071083);
  LODWORD(STACK[0x4B8]) = v467;
  v469 = ((v468 ^ LODWORD(STACK[0x690]) ^ 0x6B44352B) - 111880059) ^ ((v468 ^ LODWORD(STACK[0x690]) ^ 0xB5D2B139) + 667049111) ^ ((v468 ^ LODWORD(STACK[0x690]) ^ 0xF4CDB70B) + 1725782693);
  v470 = (a4 + 45546089 + v467) ^ LODWORD(STACK[0x4D0]) ^ v468;
  v469 += 440071804;
  v471 = LODWORD(STACK[0x4D4]) - v469;
  v472 = ((v469 ^ v470 ^ 0xB3B76D7C) + 1655323483) ^ ((v469 ^ v470 ^ 0xB36AA434) + 1652027923) ^ ((v469 ^ v470 ^ 0x1F07961A) - 837107651);
  v473 = ((LODWORD(STACK[0x4D0]) ^ 0x6C677A15) + 81143600) ^ ((LODWORD(STACK[0x4D0]) ^ 0x5D7DC51F) + 902600742) ^ ((LODWORD(STACK[0x4D0]) ^ 0x311ABF0A) + 1504436785);
  v474 = (v470 ^ 0x1FDA5F52) - v471;
  v475 = v471 - v472;
  LODWORD(STACK[0x4C4]) = v471;
  v476 = (((v473 + 1712696378 + v471 - v472) ^ v474 ^ 0x37E9D2EC) - 1692320415) ^ (((v473 + 1712696378 + v471 - v472) ^ v474 ^ 0x1D1FB74) - 1390865159) ^ (((v473 + 1712696378 + v471 - v472) ^ v474 ^ 0x5CDF87D0) - 266901411);
  v475 += 127374517;
  v477 = v476 - (((v474 ^ 0x933A210C) + 1072877185) ^ ((v474 ^ 0xD680AFF8) + 2051555445) ^ ((v474 ^ 0x2F5D20BC) - 2087334095)) + v475;
  v478 = v475;
  LODWORD(STACK[0x494]) = v475;
  v479 = v477 + v471;
  v480 = (v477 + v471) ^ v477;
  LODWORD(STACK[0x4CC]) = v480;
  LODWORD(STACK[0x4D4]) = v479;
  v474 ^= 0x6AE7AE48u;
  v481 = v474 - v478 + 1538274718;
  LODWORD(STACK[0x48C]) = v481;
  v482 = (v474 - v477 - 1578341224) ^ v479;
  LODWORD(STACK[0x4E0]) = v482;
  v483 = v481 - (((v480 ^ 0x56DD44DD) + 174019078) ^ ((v480 ^ 0xC1374D5B) - 1649058940) ^ ((v480 ^ 0x97EA0986) - 882368673)) + 13754683;
  LODWORD(STACK[0x4D0]) = v483;
  v484 = v483 + (v482 ^ 0xD915961A);
  LODWORD(STACK[0x678]) = v484;
  v485 = LODWORD(STACK[0x4E4]) - v484 - 614656626 + LODWORD(STACK[0x598]);
  v486 = *(v258 + (119 * ((v485 >> 8) & 0xF) + 111503 - 962 * ((4464623 * (119 * ((v485 >> 8) & 0xF) + 111503)) >> 32))) << 8;
  v487 = *(v258 + (119 * (v463 >> 28) + 111503 - 962 * ((4464623 * (119 * (v463 >> 28) + 111503)) >> 32)));
  v488 = *(v258 + (119 * (HIBYTE(v463) & 0xF) + 111503 - 962 * ((4464623 * (119 * (HIBYTE(v463) & 0xF) + 111503)) >> 32)));
  LODWORD(STACK[0x4C8]) = v463;
  v489 = (v487 << 12) ^ (v488 << 8);
  v490 = *(v258 + (119 * (HIWORD(v463) & 0xF) + 111503 - 962 * ((4464623 * (119 * (HIWORD(v463) & 0xF) + 111503)) >> 32)));
  v491 = (v489 ^ 0xAA9A9C) & ~v490 | v490 & 0x63;
  v492 = 119 * (v463 & 0xF) + 111503 - 962 * ((4464623 * (119 * (v463 & 0xF) + 111503)) >> 32);
  v493 = *(v258 + (119 * (v463 >> 12) + 111503 - 962 * ((4464623 * (119 * (v463 >> 12) + 111503)) >> 32)));
  v494 = *(v258 + (119 * ((v463 >> 8) & 0xF) + 111503 - 962 * ((4464623 * (119 * ((v463 >> 8) & 0xF) + 111503)) >> 32)));
  v495 = (*(v258 + (119 * ((v463 >> 20) & 0xF) + 111503 - 962 * ((4464623 * (119 * ((v463 >> 20) & 0xF) + 111503)) >> 32))) << 12) ^ (v491 << 8) ^ 0x6F2BB2;
  v496 = v495 & (v494 ^ 0xFFFFF2);
  LODWORD(STACK[0x478]) = v495;
  LODWORD(STACK[0x4E4]) = v496;
  v497 = ((v496 | v494 & 0x4D) << 8) ^ (v493 << 12);
  v498 = *(v258 + v492);
  v499 = v498 & 0x25 ^ (16 * *(v258 + v464)) ^ (v497 ^ 0x8CF7A4DA) & (v498 ^ 0xFFFFFFDA);
  v500 = v258;
  v501 = *(v258 + (119 * (HIWORD(v485) & 0xF) + 111503 - 962 * ((4464623 * (119 * (HIWORD(v485) & 0xF) + 111503)) >> 32)));
  v502 = (v501 & 2 | (16 * *(v258 + (119 * ((v485 >> 20) & 0xF) + 111503 - 962 * ((4464623 * (119 * ((v485 >> 20) & 0xF) + 111503)) >> 32)))) | 0x182E000) ^ ((*(v258 + (119 * (v485 >> 28) + 111503 - 962 * ((4464623 * (119 * (v485 >> 28) + 111503)) >> 32))) << 12) ^ (*(v258 + ((v485 | 0x6037828C) - (v485 & 0x9FC87D73) - (((2147482710 - (HIBYTE(v485) & 0xF)) | ((HIBYTE(v485) & 0xF) + 937)) & 0x493BD0FE) - 385593623) * ((HIBYTE(v485) & 0xF) + 937) % 0x3C2) << 8) ^ 0xBE301BFD) & ~v501;
  v503 = (((v502 << 16) ^ 0x8E3E4FDF) & (v486 ^ 0xFFFFFFDF) | v486 & 0xB000) ^ (*(v258 + (119 * (v485 >> 12) + 111503 - 962 * ((4464623 * (119 * (v485 >> 12) + 111503)) >> 32))) << 12);
  v504 = *(v258 + (119 * (v485 & 0xF) + 111503 - 962 * ((4464623 * (119 * (v485 & 0xF) + 111503)) >> 32)));
  LOBYTE(v485) = *(v258 + (119 * (v485 >> 4) + 111503) % ((v486 & 0x300 ^ 0x3C2) + (v486 & 0x300u))) ^ (((v503 ^ 0x2C137910) & ~v504 | v504 & 0x30) >> 4);
  v505 = (v499 >> 8) & 0xF;
  LODWORD(STACK[0x4B0]) = v505;
  LODWORD(STACK[0x4AC]) = v499;
  v506 = 119 * ((v485 & 0xF0 ^ 0xFFFFFF9F) & (v505 ^ 0xEB46D1F4) ^ 0xEB46D1F2);
  v507 = LODWORD(STACK[0x500]) - v476;
  v508 = v498 & 0xF;
  LODWORD(STACK[0x500]) = v508;
  v509 = 119 * (v508 & 0xFFFFFF0F | (16 * (v504 & 0xF)));
  v510 = STACK[0x698];
  v511 = 119 * (*(v258 + (v509 + 80444 - 962 * ((4464623 * (v509 + 80444)) >> 32))) ^ LODWORD(STACK[0x698]));
  LODWORD(STACK[0x4A4]) = v511;
  v512 = 119 * (*(v500 + (v509 + 2023) % 0x3C2u) ^ (*(v500 + (v511 + 2023 - 962 * ((4464623 * (v511 + 2023)) >> 32))) >> 4)) + 80444;
  v513 = 119 * (((16 * (v485 & 0xF)) ^ 0xC8063C44 | (v499 >> 4) ^ 0xD) ^ ((v499 >> 4) & 4 | 0xC8063C80));
  v514 = v513 + 80444 - 962 * ((4464623 * (v513 + 80444)) >> 32);
  v515 = *(v258 + (v513 + 2023) % 0x3C2u);
  v516 = 119 * (*(v500 + v514) ^ (16 * *(v500 + (v512 - 962 * ((4464623 * v512) >> 32)))));
  LODWORD(STACK[0x4A0]) = v516;
  v517 = *(v258 + (v516 + 2023 - 962 * ((4464623 * (v516 + 2023)) >> 32)));
  v518 = ((v517 >> 5) | (8 * v517)) & 0xFFFFFF87 ^ ((v515 >> 1) | (v515 << 7));
  v519 = 119 * (((v518 & 0x80) != 0) | (2 * v518)) + 80444;
  v520 = 16 * *(v258 + (v519 - 962 * ((4464623 * v519) >> 32)));
  LODWORD(STACK[0x598]) = v520;
  v521 = *(v258 + (v506 + 2023) % 0x3C2u);
  v522 = 119 * (*(v258 + (v506 + 80444) % ((v499 >> 4) & 0x3C0 ^ 0xB9027692 ^ ((v499 >> 4) & 0x3C2 ^ 0xB9027552) & ((v499 >> 4) & 0x3C2 ^ 0xF9ABF575))) ^ v520);
  LODWORD(STACK[0x498]) = v522;
  v523 = 119 * (v521 ^ (*(v258 + (v522 + 2023 - 962 * ((4464623 * (v522 + 2023)) >> 32))) >> 4)) + 80444;
  v524 = *(v258 + (v523 - 962 * ((4464623 * v523) >> 32)));
  LODWORD(STACK[0x4A8]) = v497;
  v525 = 119 * (((v497 >> 12) & 0xFFFFFF0F | (16 * (v503 >> 12))) ^ 0x4B);
  v526 = 119 * (*(v258 + (v525 + 80444 - 962 * ((4464623 * (v525 + 80444)) >> 32))) ^ (16 * v524));
  LODWORD(STACK[0x490]) = v526;
  v527 = ((v503 >> 12) & 0x1FF0 ^ 0xFFFFFF8F) & (HIWORD(v497) & 0xF ^ 0x2AE8A099) | (v503 >> 12) & 0x60;
  v528 = ((*(v500 + (v525 + 2023) % 0x3C2u) ^ (*(v500 + (v526 + 2023 - 962 * ((4464623 * (v526 + 2023)) >> 32))) >> 4)) + 676) * ((((v503 >> 12) ^ 0x6B202061 ^ ((v503 >> 12) & 0xA | 0x6B202010)) + ((v503 >> 12) & 5 ^ 4)) | (((v503 >> 12) & 3 ^ 3) + ((v503 >> 12) & 3)));
  v529 = 119 * (v527 ^ 0x2AE8A0BE);
  v530 = 119 * (*(v500 + (v529 + 80444) % 0x3C2u) ^ (16 * *(v500 + (v528 - 962 * ((4464623 * v528) >> 32)))));
  LODWORD(STACK[0x47C]) = v530;
  v531 = 119 * (*(v500 + (v529 + 2023) % 0x3C2u) ^ (*(v500 + (v530 + 2023 - 962 * ((4464623 * (v530 + 2023)) >> 32))) >> 4)) + 80444;
  LODWORD(STACK[0x474]) = v502;
  v532 = 119 * (((v502 | 0xFFFFFF0F) & ((v495 >> 12) ^ 0x47E6DFB3) | v502 & 0x40) ^ 0x47E6DFF8);
  v533 = 119 * (*(v500 + (v532 + 80444) % 0x3C2) ^ (16 * *(v500 + (v531 - 962 * ((4464623 * v531) >> 32)))));
  LODWORD(STACK[0x470]) = v533;
  v534 = v533 + 2023 - 962 * ((4464623 * (v533 + 2023)) >> 32);
  v535 = v507 - 1057731011;
  v536 = -1801505396 * ((v507 - 1057731011) / 0x6B60CA74u) == 1057731011 - v507;
  v537 = 119 * (*(v500 + (v532 + 2023) % 0x3C2u) ^ (*(v500 + v534) >> 4));
  LODWORD(STACK[0x46C]) = (v537 + 80444) % (((451 - v537) | (v537 + 80444)) & 0x3C2u);
  v538 = LODWORD(STACK[0x610]) + 533319537 + v454 + 1130984271;
  v539 = *(v258 + (119 * (HIWORD(v538) & 0xF) + 111503 - 962 * ((4464623 * (119 * (HIWORD(v538) & 0xF) + 111503)) >> 32)));
  v540 = (v539 ^ 0xFFFF) & ((*(v500 + (119 * (v538 >> 28) + 111503 - 962 * ((4464623 * (119 * (v538 >> 28) + 111503)) >> 32))) << 12) ^ (*(v500 + (119 * (HIBYTE(v538) & 0xF) + 111503 - 962 * ((4464623 * (119 * (HIBYTE(v538) & 0xF) + 111503)) >> 32))) << 8) ^ 0x147D);
  LODWORD(STACK[0x488]) = v540;
  v541 = (v540 | v539 & 0x82) ^ (16 * *(v258 + (119 * ((v538 >> 20) & 0xF) + 111503 - 962 * ((4464623 * (119 * ((v538 >> 20) & 0xF) + 111503)) >> 32))));
  LODWORD(STACK[0x610]) = v538;
  v542 = *(v258 + (119 * ((v538 >> 8) & 0xF) + 111503 - 962 * ((4464623 * (119 * ((v538 >> 8) & 0xF) + 111503)) >> 32)));
  v543 = (((v541 << 16) ^ 0x4B1F87EA) & ((v542 << 8) ^ 0xFFFF8FEB) & 0xFFFF87FF | (((v542 >> 3) & 0xF) << 11)) ^ (*(v258 + (119 * (v538 >> 12) + 111503 - 962 * ((4464623 * (119 * (v538 >> 12) + 111503)) >> 32))) << 12);
  v544 = *(v258 + (119 * (v538 & 0xF) + 111503 - 962 * ((4464623 * (119 * (v538 & 0xF) + 111503)) >> 32)));
  v545 = ((v543 ^ 0x926881B3) & ~v544 | v544 & 0xA6) ^ (16 * *(v258 + (119 * (v538 >> 4) + 111503 - 962 * ((4464623 * (119 * (v538 >> 4) + 111503)) >> 32))));
  v546 = (*(v500 + (119 * (HIBYTE(v535) & 0xF) + 111503 - 962 * ((4464623 * (119 * (HIBYTE(v535) & 0xF) + 111503)) >> 32))) << 8) ^ (*(v500 + (119 * (v535 >> 28) + 111503 - 962 * ((4464623 * (119 * (v535 >> 28) + 111503)) >> 32))) << 12);
  v547 = *(v500 + (119 * (HIWORD(v535) & 0xF) + 111503 - 962 * ((4464623 * (119 * (HIWORD(v535) & 0xF) + 111503)) >> 32))) ^ (16 * *(v500 + (119 * ((v535 >> 20) & 0xF) + 111503 - 962 * ((4464623 * (119 * ((v535 >> 20) & 0xF) + 111503)) >> 32))));
  v548 = 119 * (v535 >> 12) + 111503 - 962 * ((4464623 * (119 * (v535 >> 12) + 111503)) >> 32);
  if (v536)
  {
    v549 = 116 * (v535 / 0x6B60CA74);
  }

  else
  {
    v549 = v535;
  }

  v550 = *(v258 + (119 * ((v535 >> 8) & 0xF) + 111503 - 962 * ((4464623 * (119 * ((v535 >> 8) & 0xF) + 111503)) >> 32))) << 8;
  v551 = ((((v547 ^ v546) << 16) ^ 0xFA0036B4) & (v550 ^ 0xFFFFB7FD) | v550 & 0xC900) ^ (*(v258 + v548) << 12);
  v552 = *(v258 + (119 * (v549 & 0xF) + 111503 - 962 * ((4464623 * (119 * (v549 & 0xFu) + 111503)) >> 32)));
  LOBYTE(v550) = *(v258 + (119 * (v549 >> 4) + 111503 - 962 * ((4464623 * (119 * (v549 >> 4) + 111503)) >> 32))) ^ (((v551 ^ 0x33DD4A80) & ~v552 ^ (v552 & 0xC0 | 0x26008200)) >> 4);
  v553 = v544 & 0xF;
  v554 = 119 * (v553 | (16 * (v552 & 0xF)));
  v555 = 119 * (*(v258 + (v554 + 80444 - 962 * ((4464623 * (v554 + 80444)) >> 32))) ^ v510);
  v556 = v555 + 80444 - 962 * ((4464623 * (v555 + 80444)) >> 32);
  v557 = 119 * (*(v258 + (v554 + 2023) % 0x3C2u) ^ (*(v258 + (v555 + 2023 - 962 * ((4464623 * (v555 + 2023)) >> 32))) >> 4)) + 80444;
  v558 = ((v545 >> 4) | (16 * (v550 & 0xF))) ^ 0x35;
  v559 = *(v258 + (v557 - 962 * ((4464623 * v557) >> 32)));
  v560 = *(v258 + (119 * v558 + 80444 - 962 * ((4464623 * (119 * v558 + 80444)) >> 32)));
  LODWORD(STACK[0x4B4]) = v452;
  v561 = v560 ^ (16 * v559);
  LOWORD(v559) = (v558 + 17) * (((51 - v452) | (v452 + 12)) & 0x33 | 0x44);
  v561 *= 119;
  v562 = v561 + 80444 - 962 * ((4464623 * (v561 + 80444)) >> 32);
  v563 = 119 * (*(v258 + v559 % 0x3C2u) ^ (*(v258 + (v561 + 2023 - 962 * ((4464623 * (v561 + 2023)) >> 32))) >> 4)) + 80444;
  v564 = 119 * ((v550 & 0xF0 ^ 0x8371EE76) & ((v545 >> 8) & 0xF | 0xD3FBFFF0) ^ ((v545 >> 8) & 9 | 0x8371EE96));
  v565 = *(v258 + (v563 - 962 * ((4464623 * v563) >> 32)));
  LOWORD(v559) = (v564 + 2023) % 0x3C2u;
  v566 = *(v258 + (v564 + 80444 - 962 * ((4464623 * (v564 + 80444)) >> 32)));
  v567 = (16 * (v565 - ((2 * v565) & 0x78)) - 472075328) ^ (v566 - ((2 * v566) & 0x128) - 764673644);
  v568 = ((v567 ^ 0x4B9FD50) + 293802402) ^ ((v567 ^ 0x98B15806) - 1920224008) ^ ((v567 ^ 0xADB81702) - 1199375372);
  v569 = v539 & 0x1F;
  LOBYTE(v566) = v566 & 0x58;
  LOBYTE(v566) = (((v569 ^ 0x50) - 63) ^ ((v569 ^ 0xCB) + 92) ^ ((v569 ^ 0x84) + 21)) + (((v569 ^ 0x4C) + 108) ^ ((v569 ^ 0x83) - 91) ^ ((v569 ^ 0xCF) - 23)) + (((v566 ^ 0xE5) + 125) ^ (v566 | 0xA2) ^ ((v566 ^ 0x38) - 94)) + (v566 ^ ((v566 ^ 0xBA) + 111) ^ ((v566 ^ 0x6B) - 64) ^ 0xD7) - 28;
  v570 = v566 & 0x63 ^ 0x5B;
  v571 = (v566 ^ (2 * ((v566 ^ 0xC) & (2 * ((v566 ^ 0x4C) & (2 * ((v566 ^ 0x4C) & (2 * ((v566 ^ 0x4C) & (2 * ((v566 ^ 0x4C) & (2 * v570) ^ v570)) ^ v570)) ^ v570)) ^ v570)) ^ v570))) & 0x7F;
  v572 = ((v571 ^ 0x99630BC8) + 1721562150) ^ ((v571 ^ 0xD565AF4E) + 714756260) ^ ((v571 ^ 0x4C06A4E5) - 1275503863);
  v573 = (119 * v568 + 61815570) % 0x3C2;
  v574 = 119 * (*(v258 + v559) ^ (*(v258 + ((v572 + 113) * (v568 - 122068280) - 490979677 * v572 + 353871347) % 0x3C2) >> 4)) + 80444;
  v575 = 119 * (((v551 >> 8) & 0xF0 | (v543 >> 12)) ^ 0x38);
  v576 = v575 + 80444 - 962 * ((4464623 * (v575 + 80444)) >> 32);
  v577 = v575 + 2023 - 962 * ((545 * (v575 + 2023)) >> 19);
  v551 >>= 12;
  v578 = *(v258 + v576) ^ (16 * *(v258 + (v574 - 962 * ((4464623 * v574) >> 32))));
  v579 = 119 * (v578 + (((v577 & 0x274 ^ 0x7956F674) + (v577 & 0x274)) & (v545 & 0x68508014 ^ 0xD9027EF0 ^ (v545 & 0x7952FE74 ^ 0xA15286C4) & (v545 & 0x7952FE74 ^ 0xB0D4F8AC))) * ((v551 & 0xD ^ 0xD046A77C) + (v551 & 0xD ^ 1)));
  v580 = 119 * (*(v258 + v577) ^ (*(v258 + (LODWORD(STACK[0x660]) + 119 * v578 - 962 * ((4464623 * (LODWORD(STACK[0x660]) + 119 * v578)) >> 32))) >> 4)) + 80444;
  v581 = 119 * ((v551 & 0xF0 | HIWORD(v543) & 0xF) ^ 2);
  v582 = 119 * (*(v258 + (v581 + 80444 - 962 * ((4464623 * (v581 + 80444)) >> 32))) ^ (16 * *(v258 + (v580 - 962 * ((4464623 * v580) >> 32)))));
  v583 = v582 + 80444 - 962 * ((4464623 * (v582 + 80444)) >> 32);
  v584 = *(v258 + (v581 + 2023) % 0x3C2u) ^ (*(v258 + (v582 + 2023 - 962 * ((4464623 * (v582 + 2023)) >> 32))) >> 4);
  v585 = (*(v258 + v579 % 0x3C2) << 12) ^ (*(v258 + v573) << 8);
  v586 = 119 * v584 + 80444 - 962 * ((4464623 * (119 * v584 + 80444)) >> 32);
  v587 = 119 * ((v547 & 0xF0 | (v541 >> 4)) ^ 7);
  v588 = 119 * (*(v258 + (v587 + 80444 - 962 * ((4464623 * (v587 + 80444)) >> 32))) ^ (16 * *(v258 + v586)));
  v589 = *(v258 + (v587 + 2023) % 0x3C2u) ^ (*(v258 + (v588 + 2023 - 962 * ((4464623 * (v588 + 2023)) >> 32))) >> 4);
  v590 = 119 * v589 + 80444 - 962 * ((4464623 * (119 * v589 + 80444)) >> 32);
  v591 = (*(v258 + (v588 + 80444 - 962 * ((4464623 * (v588 + 80444)) >> 32))) << 20) ^ (*(v258 + v583) << 16);
  v592 = 119 * (((((v547 ^ v546) >> 4) & 0xF0 ^ 0xDEDD0066) & ((v541 >> 8) & 0xF ^ 0xDFDFA8FA) | (v541 >> 8) & 9) ^ 0xDEDD0066);
  v593 = 119 * (*(v258 + (v592 + 80444) % 0x3C2) ^ (16 * *(v258 + v590)));
  v594 = v593 + 80444 - 962 * ((4464623 * (v593 + 80444)) >> 32);
  v595 = 119 * (*(v258 + (v592 + 2023) % 0x3C2u) ^ (*(v258 + (v593 + 2023 - 962 * ((4464623 * (v593 + 2023)) >> 32))) >> 4)) + 80444;
  v596 = LODWORD(STACK[0x488]) >> 12;
  v597 = 119 * (((v546 >> 8) & 0xF0 | v596) ^ 1) + 80444;
  v598 = 119 * (*(v258 + v597 - 962 * (((285735871 * v597) >> 32) >> 6)) ^ (16 * *(v258 + (v595 - 962 * ((4464623 * v595) >> 32))))) + 80444;
  v599 = v598 - 962 * ((4464623 * v598) >> 32);
  LOBYTE(v598) = *(v258 + v556);
  v600 = v553 & 0xFFFFFF0F | (16 * (v598 & 0xF));
  v601 = 16 * *(v258 + v562);
  v602 = 119 * ((v601 ^ v598) & 0xF0 | (v545 >> 4) ^ 5) + 49385;
  v603 = v602 - 962 * ((4464623 * v602) >> 32);
  v604 = v585 ^ v601;
  v605 = ((v603 & 0x6B ^ 0x6B) + (v603 & 0x6B)) ^ 0x38;
  v606 = ((*(v258 + v603) << (v605 & 0x33 ^ 0x13u)) << (v605 & 0xC ^ 4)) ^ *(v258 + (119 * v600 + 49385 - 962 * ((4464623 * (119 * v600 + 49385)) >> 32)));
  v607 = (v585 >> 8) & 0xF0 | (v543 >> 12);
  v608 = HIWORD(v543) & 0xF;
  v609 = v604 ^ 0x2F632C27 ^ v591;
  v610 = v609 ^ (*(v258 + v594) << 24);
  v611 = ((v609 >> 12) & 0x1FE0 ^ 0xFFFFFF9F) & (v608 ^ 0xAE6060AB) | (v609 >> 12) & 0x50;
  v612 = 119 * (v607 ^ 8) + 49385 - 962 * ((4464623 * (119 * (v607 ^ 8u) + 49385)) >> 32);
  v613 = 119 * (v611 ^ 0xAE6060B9) + 49385;
  v614 = v610 ^ (*(v258 + v599) << 28);
  v615 = 119 * ((HIWORD(v591) & 0xF0 | (v541 >> 4)) ^ 7) + 49385;
  v616 = 119 * (((v610 >> 20) & 0xF0 | (v541 >> 8) & 0xF) ^ 0xF4) + 49385;
  v617 = (*(v258 + (v615 - 962 * ((4464623 * v615) >> 32))) << 20) ^ (*(v258 + v613 % 0x3C2) << 16);
  v618 = v606 ^ (*(v258 + (119 * (((v604 >> 4) & 0x30 ^ ((v545 >> 8) & 0xF | 0xA07CA730) | (v604 >> 4) & 0xC0) ^ 0xA07CA736) + 49385) % 0x3C2) << 8);
  v619 = v618 ^ (*(v258 + v612) << 12);
  v620 = v617 ^ v619 ^ 0x2CCEEB2F;
  v621 = 119 * ((HIBYTE(v614) & 0xB0 | (~HIBYTE(v614) | 0xFFFFFF3F) & (v596 ^ 0x51FD14C)) ^ 0x51FD16D) + 49385;
  v622 = ((*(v258 + v621 - 962 * (((285735871 * v621) >> 32) >> 6)) << 28) | 0x68ADBD) ^ (*(v258 + (v616 - 962 * ((4464623 * v616) >> 32))) << 24) ^ v620;
  v623 = (v622 >> 28) ^ 2;
  v119 = v623 >= 9;
  v624 = 119 * v623;
  if (v119)
  {
    v624 -= 962;
  }

  v625 = HIBYTE(v622) & 0xF ^ 0xC;
  v119 = v625 >= 9;
  v626 = 119 * v625;
  if (v119)
  {
    v626 -= 962;
  }

  v627 = *(v258 + v624) - ((2 * *(v258 + v624)) & 0x114);
  v628 = (v620 >> 20) & 0xF ^ 0xC;
  v119 = v628 >= 9;
  v629 = 119 * v628;
  if (v119)
  {
    v629 -= 962;
  }

  v630 = HIWORD(v620) & 0xF ^ 0xE;
  v119 = v630 >= 9;
  v631 = 119 * v630;
  if (v119)
  {
    v631 -= 962;
  }

  v632 = *(v258 + v626) - ((2 * *(v258 + v626)) & 0x1D4);
  v633 = *(v258 + v629) - ((2 * *(v258 + v629)) & 0x15A);
  v634 = v619 >> 12;
  v119 = v634 >= 9;
  v635 = 119 * v634;
  if (v119)
  {
    v635 -= 962;
  }

  v636 = *(v258 + v631) - ((2 * *(v258 + v631)) & 0x14) + 1611196682;
  v637 = (((v627 << 12) + 1966645248) ^ ((v632 << 8) - 1533154816) ^ 0xE6988E) & (v636 ^ 0xF716C4) ^ v636 & 0x2D71;
  v638 = (((v618 >> 8) & 7 ^ 0x77) + ((v618 >> 8) & 7)) * ((v618 >> 8) & 0xF);
  if (v638 >= 0x3C2)
  {
    v638 -= 962;
  }

  v639 = *(v258 + v638) - ((2 * *(v258 + v638)) & 0x58);
  v640 = v606 >> 4;
  v119 = v640 >= 9;
  v641 = 119 * v640;
  if (v119)
  {
    v641 -= 962;
  }

  v642 = (((v633 << 12) + 1694158848) ^ (v637 << 8) ^ 0x925FF0) & ((v639 - 1290959828) ^ 0xF27BDF) ^ (v639 - 1290959828) & 0xC860F;
  v643 = v606 & 0xF;
  v119 = v643 >= 9;
  v644 = 119 * v643;
  if (v119)
  {
    v644 -= 962;
  }

  v645 = *(v258 + v644) - ((2 * *(v258 + v644)) & 0x194) - 808344630;
  v646 = (16 * (*(v258 + v641) - ((2 * *(v258 + v641)) & 0x46)) + 110142000) ^ v645 & 0x2112963 ^ ((((*(v258 + v635) - ((2 * *(v258 + v635)) & 0xFFC3)) << 12) + 1285427200) ^ (v642 << 8) ^ 0xC6D97A9C) & (v645 ^ 0x302E5C16);
  v647 = LODWORD(STACK[0x4E8]) + LODWORD(STACK[0x640]) - 1940818339 + LODWORD(STACK[0x49C]);
  v648 = LODWORD(STACK[0x508]) - LODWORD(STACK[0x48C]);
  v649 = v647;
  v650 = (119 * (BYTE2(v647) & 0xF) - 113 - -62 * ((4464623 * (119 * (HIWORD(v647) & 0xF) + 111503)) >> 32)) & 0x1A;
  v651 = *(v258 + (119 * (HIWORD(v647) & 0xF) + 111503 - 962 * ((4464623 * (119 * (HIWORD(v647) & 0xF) + 111503)) >> 32)));
  v652 = ((*(v258 + (119 * (v647 >> 28) + 111503 - 962 * ((4464623 * (119 * (v647 >> 28) + 111503)) >> 32))) << 12) ^ (*(v258 + (119 * (HIBYTE(v647) & 0xF) + 111503 - 962 * ((4464623 * (119 * (HIBYTE(v647) & 0xF) + 111503)) >> 32))) << 8) ^ 0x889179) & ~v651 | v651 & 0x86;
  v653 = 119 * ((v647 >> (v650 - 18 + (v650 ^ 0x1A))) >> 4) + 111503 - 962 * ((4464623 * (119 * ((v647 >> (v650 - 18 + (v650 ^ 0x1A))) >> 4) + 111503)) >> 32);
  v654 = (LOBYTE(STACK[0x4E8]) + LOBYTE(STACK[0x640]) + 93 + LOBYTE(STACK[0x49C])) >> 4;
  LODWORD(STACK[0x468]) = v647;
  v655 = *(v258 + (119 * ((v647 >> (v650 - 18 + (v650 ^ 0x1A))) & 0xF) + 111503 - 962 * ((4464623 * (119 * ((v647 >> (v650 - 18 + (v650 ^ 0x1A))) & 0xF) + 111503)) >> 32)));
  v656 = (*(v258 + (119 * ((v647 >> 20) & 0xF) + 111503 - 962 * ((4464623 * (119 * ((v647 >> 20) & 0xF) + 111503)) >> 32))) << 12) ^ (v652 << 8) ^ 0x9B3602;
  v657 = v656 & (v655 ^ 0xFFFF4B);
  v658 = ((v657 | v655 & 0xFFFFFFFD) << 8) ^ (*(v258 + v653) << 12);
  v659 = 119 * (v649 & 0xF) + 111503 - 962 * ((4464623 * (119 * (v649 & 0xFu) + 111503)) >> 32);
  v648 -= 27274264;
  v660 = *(v258 + (119 * (HIWORD(v648) & 0xF) + 111503 - 962 * ((4464623 * (119 * (HIWORD(v648) & 0xF) + 111503)) >> 32)));
  v661 = *(v258 + (119 * ((v648 >> 8) & 0xF) + 111503 - 962 * ((4464623 * (119 * ((v648 >> 8) & 0xF) + 111503)) >> 32)));
  v662 = (*(v258 + (119 * ((v648 >> 20) & 0xF) + 111503 - 962 * ((4464623 * (119 * ((v648 >> 20) & 0xF) + 111503)) >> 32))) << 12) ^ ((((*(v258 + (119 * (v648 >> 28) + 111503 - 962 * ((4464623 * (119 * (v648 >> 28) + 111503)) >> 32))) << 12) ^ (*(v258 + (119 * (HIBYTE(v648) & 0xF) + 111503 - 962 * ((4464623 * (119 * (HIBYTE(v648) & 0xF) + 111503)) >> 32))) << 8) ^ 0xE0FC19) & ~v660 | v660 & 0xE6) << 8) ^ 0xEBA988;
  v663 = ((v662 & (v661 ^ 0xFFFFAB) | v661 & 0x77777777) << 8) ^ (*(v258 + (119 * (v648 >> 12) + 111503 - 962 * ((4464623 * (119 * (v648 >> 12) + 111503)) >> 32))) << 12);
  v664 = *(v258 + (119 * (v648 & 0xF) + 111503 - 962 * ((4464623 * (119 * (v648 & 0xF) + 111503)) >> 32)));
  v665 = (v663 ^ 0x108B9480) & (v664 ^ 0xFFFFFFC0) | v664 & 0x70;
  v666 = *(v258 + v659);
  v667 = 119 * (v666 & 0xF | (16 * (v664 & 0xF)));
  v668 = v667 + 80444 - 962 * ((4464623 * (v667 + 80444)) >> 32);
  v669 = (v667 + 2023) % 0x3C2u;
  LOBYTE(v667) = *(v258 + (119 * (v648 >> 4) + 111503 - 962 * ((4464623 * (119 * (v648 >> 4) + 111503)) >> 32))) ^ (v665 >> 4);
  v670 = 119 * (*(v258 + v668) ^ LODWORD(STACK[0x698]));
  v671 = (v670 - 25 - -62 * ((4464623 * (v670 + 2023)) >> 32)) & 0xF1;
  LODWORD(STACK[0x640]) = v646 ^ LODWORD(STACK[0x494]);
  v672 = *(v258 + (v670 + 2023 - 962 * ((4464623 * (v670 + 2023)) >> 32))) >> (((((v671 ^ 0xF1) + v671) | 0xBA) ^ ((v646 & 0x60 ^ 0x46) & (v646 & 0x60 | 0x8F) ^ (v646 & 0x20 | 0xDC)) & ~((v671 ^ 0xF1) + v671)) + 19);
  v673 = *(v258 + (119 * v654 + 111503 - 962 * ((4464623 * (119 * v654 + 111503)) >> 32))) ^ ((v658 | v666) >> 4);
  v674 = 119 * (v672 ^ *(v258 + v669)) + 80444;
  v675 = 119 * ((v673 & 0xF | (16 * (v667 & 0xF))) ^ 0x80);
  v676 = v670 + 80444 - 962 * ((4464623 * (v670 + 80444)) >> 32);
  v677 = 119 * (*(v258 + (v675 + 80444 - 962 * ((4464623 * (v675 + 80444)) >> 32))) ^ (16 * *(v258 + (v674 - 962 * ((4464623 * v674) >> 32)))));
  v678 = 119 * (*(v258 + (v675 + 2023) % 0x3C2u) ^ (*(v258 + (v677 + 2023 - 962 * ((4464623 * (v677 + 2023)) >> 32))) >> 4)) + 80444;
  v679 = v673 >> 4;
  v680 = 119 * (((v667 & 0xF0 ^ 0xFFFFFF7F) & (v679 ^ 0x31C733B5) | v667 & 0x40) ^ 0x31C733F7);
  v681 = v677 + 80444 - 962 * ((4464623 * (v677 + 80444)) >> 32);
  v682 = v680 + 2023;
  v683 = 119 * (*(v258 + (v680 + 80444) % 0x3C2) ^ (16 * *(v258 + (v678 - 962 * ((4464623 * v678) >> 32)))));
  v684 = v683 + 80444 - 962 * ((4464623 * (v683 + 80444)) >> 32);
  v685 = 119 * (*(v258 + v682 % 0x3C2u) ^ (*(v258 + (v683 + 2023 - 962 * ((4464623 * (v683 + 2023)) >> 32))) >> 4)) + 80444;
  v686 = 119 * (((v663 >> 8) & 0xF0 | (v658 >> 12)) ^ 0x80);
  v687 = (v686 + 2023) % 0x3C2u;
  v688 = 119 * (*(v258 + (v686 + 80444 - 962 * ((4464623 * (v686 + 80444)) >> 32))) ^ (16 * *(v258 + (v685 - 962 * ((4464623 * v685) >> 32)))));
  v689 = (*(v258 + (v688 + 80444 - 962 * ((4464623 * (v688 + 80444)) >> 32))) << 12) ^ (*(v258 + v684) << 8);
  v690 = 119 * (*(v258 + v687) ^ (*(v258 + (v688 + 2023 - 962 * ((4464623 * (v688 + 2023)) >> 32))) >> 4)) + 80444;
  v691 = 119 * ((((v663 >> 12) & 0xF0 ^ 0xFACF4E64) & (HIWORD(v658) & 0xF | 0xFEEFCFF0) | HIWORD(v658) & 0xB) ^ 0xFACF4E6F);
  v692 = *(v258 + (v691 + 80444) % 0x3C2) ^ (16 * *(v258 + (v690 - 962 * ((4464623 * v690) >> 32))));
  v693 = 119 * (*(v258 + (v691 + 2023) % 0x3C2u) ^ (*(v258 + (119 * v692 + 2023 - 962 * ((4464623 * (119 * v692 + 2023)) >> 32))) >> 4)) + 80444;
  v694 = v656 >> 12;
  v695 = 119 * ((((v662 >> 8) | 0xFFFFFE7F) & (v694 ^ 0x7AB168F) | (v662 >> 8) & 0x70) ^ 0x7AB16BB);
  v696 = 119 * (*(v258 + (v695 + 80444) % 0x3C2) ^ (16 * *(v258 + (v693 - 962 * ((4464623 * v693) >> 32)))));
  v697 = 119 * (*(v258 + (v695 + 2023) % 0x3C2u) ^ (*(v258 + (v696 + 2023 - 962 * ((4464623 * (v696 + 2023)) >> 32))) >> 4)) + 80444;
  v698 = 119 * ((((v662 >> 12) & 0xF0 ^ 0xFFFFFF8F) & (HIWORD(v656) & 0xF ^ 0x5A90FBB1) | (v662 >> 12) & 0x40) ^ 0x5A90FBFB);
  v699 = 119 * (*(v258 + (v698 + 80444) % 0x3C2) ^ (16 * *(v258 + (v697 - 962 * ((4464623 * v697) >> 32)))));
  v700 = *(v258 + (v699 + 80444 - 962 * ((4464623 * (v699 + 80444)) >> 32)));
  v701 = ((*(v258 + (v698 + 2023) % 0x3C2u) ^ (*(v258 + (v699 + 2023 - 962 * ((4464623 * (v699 + 2023)) >> 32))) >> 4)) + 676) * ((v700 & 0x77777777 ^ 0x77) + (v700 & 0x77777777));
  v657 >>= 20;
  v702 = 119 * (v657 | HIWORD(v662) & 0xF0 ^ 0x10) + 80444;
  v703 = 119 * (*(v258 + (v702 - 962 * ((4464623 * v702) >> 32))) ^ (16 * *(v258 + (v701 - 962 * ((4464623 * v701) >> 32))))) + 80444;
  v704 = (*(v258 + (v703 - 962 * ((4464623 * v703) >> 32))) << 28) ^ (v700 << 24);
  v705 = *(v258 + v676) ^ (16 * *(v258 + v681));
  v706 = v689 ^ (*(v258 + (119 * v692 + 80444 - 962 * ((4464623 * (119 * v692 + 80444)) >> 32))) << 16);
  v707 = v706 ^ (*(v258 + (v696 + 80444 - 962 * ((4464623 * (v696 + 80444)) >> 32))) << 20) ^ 0x945F659A;
  v708 = v707 ^ v704;
  v709 = v705 ^ 0xB9A3C7B4 ^ v707 ^ v704;
  v710 = *(v258 + (119 * ((((16 * (v709 & 0xF)) ^ 0xED70B15E) & (v666 & 0xF ^ 0xED70B1FF) & 0xFFFFFFFE | v666 & 1) ^ 0xED70B1BE) + 49385) % 0x3C2);
  LOBYTE(v705) = *(v258 + (119 * (((v709 & 0xF0 ^ 0xFFFFFFE1) & (v673 & 0xF ^ 0x940EB7F9) | v673 & 0xE) ^ 0x940EB7C1) + 49385) % 0x3C2);
  v711 = v710 ^ (16 * v705);
  v712 = 119 * ((((v709 >> 4) & 0xF0 ^ 0xC74BB44) & (v679 ^ 0xE7DBBF6) | (v673 >> 4) & 0xB) ^ 0xC74BB66) + 49385;
  v713 = (HIWORD(v706) & 0xF) << ((v705 & 4 ^ 4) + (v705 & 4));
  v714 = (*(v258 + (119 * ((((v689 >> 8) & 0xF0 ^ 0x266D317C) & ((v658 >> 12) ^ 0x266D31FC) & 0xFFFFFFFC | (v658 >> 12) & 3) ^ 0x266D317C) + 49385) % 0x3C2) << 12) ^ (*(v258 + v712 % 0x3C2) << 8);
  v715 = (119 * (((HIWORD(v707) & 0xF0 ^ 0x11F92A4C) & (v694 ^ 0xBFFDEBFA) & 0xFFFFFFFC | (v656 >> 12) & 3) ^ 0x11F92A1C) + 49385) % 0x3C2;
  v716 = 119 * ((v715 & 0x19F) + (v715 & 0x19F ^ 0x19F) + ((((v708 >> 20) & 0xF0 | 0x72476802) & (HIWORD(v656) & 0xF | 0xF277EEF0) | HIWORD(v656) & 0xD) ^ 0x7247684A));
  v717 = 119 * (v657 | (16 * (v704 >> 28))) + 49385;
  v718 = v714 ^ v711 ^ 0x66568CED;
  v719 = (*(v258 + v715) << 20) ^ (*(v258 + (119 * (HIWORD(v658) & 0xF ^ 0xCA192B8D ^ (v713 - ((2 * v713) & 0x5704) - 904320126)) + 49385) % 0x3C2) << 16) ^ v718;
  v720 = (*(v258 + (v717 - 962 * ((4464623 * v717) >> 32))) << 28) ^ (*(v258 + v716 % 0x3C2) << 24) ^ v719;
  v721 = (v720 >> 28) ^ 6;
  v119 = v721 >= 9;
  v722 = 119 * v721;
  if (v119)
  {
    v722 -= 962;
  }

  LODWORD(STACK[0x49C]) = v722;
  v723 = HIBYTE(v720) & 0xF ^ 6;
  v119 = v723 >= 9;
  v724 = 119 * v723;
  if (v119)
  {
    v724 -= 962;
  }

  LODWORD(STACK[0x48C]) = v724;
  v725 = (v719 >> 20) & 0xF ^ 5;
  v119 = v725 >= 9;
  v726 = 119 * v725;
  if (v119)
  {
    v726 -= 962;
  }

  LODWORD(STACK[0x488]) = v726;
  v727 = HIWORD(v719) & 0xF ^ 6;
  v119 = v727 >= 9;
  v728 = 119 * v727;
  if (v119)
  {
    v728 -= 962;
  }

  LODWORD(STACK[0x484]) = v728;
  v729 = (v718 >> 12) ^ 8;
  v119 = v729 >= 9;
  v730 = 119 * v729;
  if (v119)
  {
    v730 -= 962;
  }

  LODWORD(STACK[0x4E8]) = v730;
  v731 = (v718 >> 8) & 0xF ^ 0xC;
  v119 = v731 >= 9;
  v732 = 119 * v731;
  if (v119)
  {
    v732 -= 962;
  }

  LODWORD(STACK[0x480]) = v732;
  v733 = v711 >> 4;
  v119 = v733 >= 9;
  v734 = 119 * v733;
  if (v119)
  {
    v734 -= 962;
  }

  LODWORD(STACK[0x508]) = v734;
  v735 = v710 & 0xF;
  v119 = v735 >= 9;
  v736 = 119 * v735;
  if (v119)
  {
    v736 -= 962;
  }

  LODWORD(STACK[0x494]) = v736;
  v737 = STACK[0x478];
  v738 = 119 * ((((LODWORD(STACK[0x474]) >> 4) & 0xF0 ^ 0xFB8712) & (HIWORD(v737) & 0xF ^ 0xC9FB8FFE) | HIWORD(v737) & 0xD) ^ 0xFB87A7);
  v739 = *(v258 + (v738 + 80444) % 0x3C2) ^ (16 * *(v258 + LODWORD(STACK[0x46C])));
  v740 = (v738 + 2023) % 0x3C2u;
  v741 = *(v258 + (LODWORD(STACK[0x4A4]) + 80444 - 962 * ((4464623 * (LODWORD(STACK[0x4A4]) + 80444)) >> 32)));
  v742 = v741 ^ (16 * *(v258 + (LODWORD(STACK[0x4A0]) + 80444 - 962 * ((4464623 * (LODWORD(STACK[0x4A0]) + 80444)) >> 32))));
  v743 = v742 ^ (*(v258 + (LODWORD(STACK[0x498]) + 80444 - 962 * ((4464623 * (LODWORD(STACK[0x498]) + 80444)) >> 32))) << 8) ^ (*(v258 + (LODWORD(STACK[0x490]) + 80444 - 962 * ((4464623 * (LODWORD(STACK[0x490]) + 80444)) >> 32))) << 12) ^ (*(v258 + (LODWORD(STACK[0x47C]) + 80444 - 962 * ((4464623 * (LODWORD(STACK[0x47C]) + 80444)) >> 32))) << 16) ^ (*(v258 + (LODWORD(STACK[0x470]) + 80444 - 962 * ((4464623 * (LODWORD(STACK[0x470]) + 80444)) >> 32))) << 20) ^ (*(v258 + (119 * v739 + 80444 - 962 * ((4464623 * (119 * v739 + 80444)) >> 32))) << 24);
  v744 = LODWORD(STACK[0x4E4]) >> 20;
  v745 = 119 * (*(v258 + v740) ^ (*(v258 + (119 * v739 + 2023 - 962 * ((4464623 * (119 * v739 + 2023)) >> 32))) >> 4)) + 80444;
  v746 = 119 * ((BYTE1(LODWORD(STACK[0x474])) & 0x10 | (BYTE1(LODWORD(STACK[0x474])) | 0xFFFFFE1F) & (v744 ^ 0xB85BEAE9)) ^ 0xB85BEAF6) + 80444;
  v747 = *(v258 + (v746 - 962 * ((4464623 * v746) >> 32)));
  v748 = (v747 ^ (16 * *(v258 + (v745 - 962 * ((4464623 * v745) >> 32))))) + 676;
  v749 = (((v748 | (3 - v747)) & 4 ^ ((v742 & 0x5E ^ 0x5E) + (v742 & 0x5E))) + 29) * v748;
  v750 = *(v258 + (v749 - 962 * ((4464623 * v749) >> 32))) << 28;
  v751 = -v743 ^ (v743 - 2 * (v743 & 0x2B16F71C ^ v741 & 4) - 1424558312) ^ 0xAB16F718 ^ (v750 - (v750 ^ v743));
  v752 = STACK[0x500] & 0xFFFFFF0F | (16 * (((-v743 ^ (v743 - 2 * (v743 & 0x1C ^ v741 & 4) + 24)) ^ 0x18 ^ (v750 - (v750 ^ v743))) & 0xF));
  v753 = ((((-416 - v752) | 0x77) - ((v752 + 415) ^ 0xFFFFFF88)) ^ (v752 + 415) & 0x77) * (v752 + 415);
  v754 = 119 * ((v751 & 0xF0 | (LODWORD(STACK[0x4AC]) >> 4)) ^ 0xD) + 49385;
  v755 = v754 - 962 * ((4464623 * v754) >> 32);
  v756 = ((v751 >> 4) | 0xFFFFFF0F) & (LODWORD(STACK[0x4B0]) ^ 0x3C4C6DF9);
  v757 = *(v258 + v753 % 0x3C2);
  LODWORD(STACK[0x500]) = v757;
  v758 = v757 ^ (16 * *(v258 + v755));
  LODWORD(STACK[0x4E4]) = v758;
  v759 = 119 * (((v751 >> 8) & 0xF0 | (LODWORD(STACK[0x4A8]) >> 12)) ^ 0xB) + 49385;
  v760 = 119 * (((v751 >> 12) & 0xF0 | HIWORD(LODWORD(STACK[0x4A8])) & 0xF) ^ 7) + 49385;
  v761 = *(v258 + (v759 - 962 * ((4464623 * v759) >> 32))) << 12;
  v762 = ((v758 ^ 0x26491F18) & (v761 ^ 0xAFCD3FFF) | v761 & 0x6E000) ^ (*(v258 + (v760 - 962 * ((4464623 * v760) >> 32))) << 16);
  v763 = v751 + v750;
  v764 = STACK[0x640] & 0xFFFFFE61;
  v765 = (119 * ((HIWORD(v751) & 0xD0 ^ ((v737 >> 12) | 0xEBBBFAD0) | HIWORD(v751) & 0x20) ^ 0xEBBBFADB) + 49385) % 0x3C2;
  v766 = 119 * ((((v751 >> 20) & 0xF0 | HIWORD(v737) & 0xF) ^ 5) - (((((v764 ^ 0x3CD96C82) - 1175411341) ^ ((v764 ^ 0x1519969F) - 1875878032) ^ ((v764 ^ 0xC77C101C) + 1112922605)) + (((v764 ^ 0xF2BFC123) - 1240202132) ^ ((v764 ^ 0xD68B72B) + 1237545572) ^ ((v764 ^ 0xEE946268) - 1438669023)) + 1048709861) & 0xFFFFFE63));
  v767 = (HIBYTE(v763) & 0x36F6B250 | 0xC9094DA6) ^ (~HIBYTE(v763) | 0xFFFFFF1F) & (v744 ^ 0xC9094DA9);
  v768 = v762 ^ (*(v258 + (119 * (v756 ^ 0x3C4C6D0F) + 49385 - 962 * ((4464623 * (119 * (v756 ^ 0x3C4C6D0F) + 49385)) >> 32))) << 8);
  v769 = (*(v258 + v766 % 0x3C2) << 24) ^ (*(v258 + v765) << 20) ^ v768;
  v770 = ((v769 ^ 0x620DCE4B ^ (*(v258 + (119 * v767 + 49385 - 962 * ((4464623 * (119 * v767 + 49385)) >> 32))) << 28)) >> 28) ^ 4;
  v119 = v770 >= 9;
  v771 = 119 * v770;
  if (v119)
  {
    v771 -= 962;
  }

  LODWORD(STACK[0x4B0]) = v771;
  v772 = ((v769 ^ 0x620DCE4B) >> 24) & 0xF ^ 4;
  v119 = v772 >= 9;
  v773 = 119 * v772;
  if (v119)
  {
    v773 -= 962;
  }

  LODWORD(STACK[0x4A8]) = v773;
  v774 = (v769 >> 20) & 0xF ^ 4;
  v119 = v774 >= 9;
  v775 = 119 * v774;
  if (v119)
  {
    v775 -= 962;
  }

  LODWORD(STACK[0x4AC]) = v775;
  v776 = HIWORD(v762) & 0xF ^ 9;
  v119 = v776 >= 9;
  v777 = 119 * v776;
  if (v119)
  {
    v777 -= 962;
  }

  LODWORD(STACK[0x4A4]) = v777;
  v778 = (v768 >> 12) ^ 1;
  v119 = v778 >= 9;
  v779 = 119 * v778;
  if (v119)
  {
    v779 -= 962;
  }

  v780 = *(v258 + v779) - ((2 * *(v258 + v779)) & 0x1EA);
  v781 = LODWORD(STACK[0x4EC]) + LODWORD(STACK[0x654]) - 2146571591;
  v782 = LODWORD(STACK[0x648]) + 2023207837;
  LODWORD(STACK[0x47C]) = v782;
  v783 = v781 + v782;
  v784 = *(v258 + (119 * (HIWORD(v783) & 0xF) + 111503 - 962 * ((4464623 * (119 * (HIWORD(v783) & 0xF) + 111503)) >> 32)));
  v785 = ((*(v258 + (119 * (v783 >> 28) + 111503 - 962 * ((4464623 * (119 * (v783 >> 28) + 111503)) >> 32))) << 12) ^ (*(v258 + (119 * (HIBYTE(v783) & 0xF) + 111503 - 962 * ((4464623 * (119 * (HIBYTE(v783) & 0xF) + 111503)) >> 32))) << 8) ^ 0xD5565D) & ~v784 | v784 & 0xA2;
  LODWORD(STACK[0x654]) = v783;
  v786 = v783 >> ((v783 & 4 ^ 4) + (v783 & 4));
  v787 = 16 * v780 - 924635312;
  LODWORD(STACK[0x4A0]) = v787;
  v788 = *(v258 + (119 * (v783 >> 12) + 111503 - 962 * ((4464623 * (119 * (v783 >> 12) + 111503)) >> 32)));
  v789 = (*(v258 + (119 * ((v783 >> 20) & 0xF) + 111503 - 962 * ((4464623 * (119 * ((v783 >> 20) & 0xF) + 111503)) >> 32))) << 12) ^ (v785 << 8);
  v790 = *(v258 + (119 * ((v783 >> 8) & 0xF) + 111503 - 962 * ((4464623 * (119 * ((v783 >> 8) & 0xF) + 111503)) >> 32)));
  v791 = (v789 ^ 0x92FAB5) & (v790 ^ 0xFFFFF5);
  LODWORD(STACK[0x4EC]) = v791;
  v792 = ((v791 | v790 & 0x4A) << 8) ^ (v788 << 12);
  v793 = ((((v786 + 937) & 0x77) + ((86 - v786) & 0x77)) ^ 0x90 ^ ((v787 & 0x90 ^ 0x10) + (((v787 & 0x90) + 170) ^ ((v787 & 0x90) + 178) ^ ((v787 & 0x90 ^ 0xAF) + 135)) + 93) & 0xB0) * (v786 + 937);
  v794 = *(v258 + (119 * (v783 & 0xF) + 111503 - 962 * ((4464623 * (119 * (v783 & 0xF) + 111503)) >> 32)));
  LODWORD(STACK[0x498]) = ((v792 ^ 0x81E50B46) & (v794 ^ 0xFFFFFFC7) | v794 & 0xB9) ^ (16 * *(v258 + (v793 - 962 * ((4464623 * v793) >> 32))));
  LODWORD(STACK[0x698]) = HIWORD(v792) & 0xF;
  LODWORD(STACK[0x490]) = v789 ^ 0x92FAB5;
  v795 = *(v258 + LODWORD(STACK[0x5F8]));
  v796 = *(v258 + LODWORD(STACK[0x5E8]));
  v797 = *(v258 + LODWORD(STACK[0x5E4]));
  v798 = *(v258 + LODWORD(STACK[0x5F0]));
  v799 = ((((v795 - ((2 * v795) & 0xFFFFFF9F)) << 12) - 1266880512) ^ (((v796 - ((2 * v796) & 0x1F0)) << 8) + 399898624) ^ 0xD26D39) & ((v797 - ((2 * v797) & 0xF8) + 615647612) ^ 0x4DF645) ^ (v797 - ((2 * v797) & 0xF8) + 615647612) & 0x800AC6;
  v800 = *(v258 + LODWORD(STACK[0x604]));
  v801 = *(v258 + LODWORD(STACK[0x5EC]));
  LODWORD(STACK[0x61C]) ^= LODWORD(STACK[0x670]);
  v802 = ((((v798 - ((2 * v798) & 0x1F0)) << 12) + 1695514624) ^ (v799 << 8) ^ 0x167800) & ((v801 - ((2 * v801) & 0xB6) - 9495461) ^ 0x90E3CF) ^ (v801 - ((2 * v801) & 0xB6) - 9495461) & 0x81AFF;
  v803 = *(v258 + LODWORD(STACK[0x60C]));
  v804 = *(v258 + LODWORD(STACK[0x608]));
  LODWORD(STACK[0x668]) ^= (16 * (v803 - ((2 * v803) & 0x190)) - 666768256) ^ (v804 - ((2 * v804) & 0x12E) + 1710753175) & 0x6068003C ^ ((((v800 - ((2 * v800) & 0xFFFFFFEF)) << 12) + 1784639488) ^ (v802 << 8) ^ 0x8B437CC3) & ((v804 - ((2 * v804) & 0x12E) + 1710753175) ^ 0x9A07FA54);
  v805 = *(v258 + LODWORD(STACK[0x5C0]));
  v806 = *(v258 + LODWORD(STACK[0x5B0]));
  v807 = *(v258 + LODWORD(STACK[0x5A0]));
  v808 = *(v258 + LODWORD(STACK[0x5B8]));
  v809 = ((((v805 - ((2 * v805) & 0x12C)) << 12) + 817455104) ^ (((v806 - ((2 * v806) & 0x8A)) << 8) - 1688386304) ^ 0x58FC9F) & ((v807 - ((2 * v807) & 0xAAAAAAAA) - 477354411) ^ 0x73D98A) ^ (v807 - ((2 * v807) & 0xAAAAAAAA) - 477354411) & 0x660;
  v810 = *(v258 + LODWORD(STACK[0x5A8]));
  v811 = *(v258 + LODWORD(STACK[0x638]));
  LODWORD(STACK[0x628]) ^= LODWORD(STACK[0x5D8]);
  v812 = v810 - ((2 * v810) & 0xB0) - 1173287080;
  v813 = ((((v808 - ((2 * v808) & 0xFFFFFFF3)) << 12) + 1378848768) ^ (v809 << 8) ^ 0x99A623) & (v812 ^ 0xEEF03B);
  v814 = *(v258 + LODWORD(STACK[0x5D0]));
  v815 = v813 ^ v812 & 0x1016DC;
  v816 = v814 - ((2 * v814) & 0x13A);
  v817 = *(v258 + LODWORD(STACK[0x5C8]));
  LODWORD(STACK[0x638]) = (16 * v816 + 1347955152) ^ LODWORD(STACK[0x4B8]) ^ ((v817 - ((2 * v817) & 0xF6) + 790393979) & 0x9087008 | 0x20000) ^ ((((v811 - ((2 * v811) & 0x18A)) << 12) + 422334464) ^ (v815 << 8) ^ 0xB606ACF7) & ((v817 - ((2 * v817) & 0xF6) + 790393979) ^ 0xD0E38B84);
  v818 = *(v258 + LODWORD(STACK[0x590]));
  v819 = *(v258 + LODWORD(STACK[0x588]));
  v820 = *(v258 + LODWORD(STACK[0x580]));
  v821 = *(v258 + LODWORD(STACK[0x570]));
  v822 = ((((v818 - ((2 * v818) & 0x194)) << 12) + 1634508800) ^ (((v819 - ((2 * v819) & 0xD8)) << 8) + 1601334272) ^ 0x9FB2E9) & ((v821 - ((2 * v821) & 0x2E) - 727972073) ^ 0x63F8EC) ^ (v821 - ((2 * v821) & 0x2E) - 727972073) & 0x108116;
  v823 = *(v258 + LODWORD(STACK[0x568]));
  v824 = ((((v820 - ((2 * v820) & 0x128)) << 12) - 2064039936) ^ (v822 << 8) ^ 0x451B5F) & ((v823 - ((2 * v823) & 0xFFFFFF1F) + 290886543) ^ 0xA96C50) ^ (v823 - ((2 * v823) & 0xFFFFFF1F) + 290886543) & 0x141BA0;
  v825 = *(v258 + LODWORD(STACK[0x578]));
  v826 = *(v258 + LODWORD(STACK[0x560]));
  v827 = *(v258 + LODWORD(STACK[0x558]));
  LODWORD(STACK[0x620]) = (16 * (v826 - ((2 * v826) & 0xFFFFFF7F)) - 1979237392) ^ LODWORD(STACK[0x690]) ^ (v827 - ((2 * v827) & 0xF2) + 657462137) & 0x23012F3 ^ ((((v825 - ((2 * v825) & 0x4C)) << 12) + 1719820288) ^ (v824 << 8) ^ 0x7D38F20C) & ((v827 - ((2 * v827) & 0xF2) + 657462137) ^ 0xD8CFEC26);
  LODWORD(STACK[0x658]) ^= LODWORD(STACK[0x680]);
  v828 = *(v258 + LODWORD(STACK[0x540]));
  v829 = *(v258 + LODWORD(STACK[0x538]));
  LOBYTE(v826) = STACK[0x550] & 0xEB;
  LOBYTE(v826) = (((v826 ^ 0xAE) + 103) ^ ((v826 ^ 0x1E) - 41) ^ ((v826 ^ 0x7B) - 76)) + (((v826 ^ 0x69) + 0x80) ^ ((v826 ^ 0x27) + 50) ^ ((v826 ^ 0x6E) + 121));
  LOBYTE(v827) = (STACK[0x530] & 0xC ^ 0x7A) & (STACK[0x530] & 0xC | 0x73) ^ STACK[0x530] & 4;
  v830 = *(v258 + LODWORD(STACK[0x530]));
  v831 = (((v828 - ((2 * v828) & 0x114)) << 12) - 1223122944) ^ (((v829 - ((2 * v829) & 0x2C)) << 8) - 2054744576);
  v832 = v830 - ((2 * v830) & 0x168) - 248094540;
  v833 = *(v258 + LODWORD(STACK[0x528]));
  v834 = (v831 ^ 0xFFE4) & (v832 ^ 0x9F51);
  LOBYTE(v826) = ((((v827 ^ 0xE7) + 93) ^ ((v827 ^ 0xDB) + 97) ^ ((v827 ^ 0x42) - 6)) - 123) * (v826 - 59) - 75 * v826;
  v835 = *(v258 + LODWORD(STACK[0x548]));
  v836 = ((v835 - ((2 * v835) & 0xAC) - 1405342890) ^ 0xAC3C2B56) << (v826 + 73);
  v837 = v832 & 0x361B ^ (v836 - ((2 * v836) & 0xD732) + 60313);
  LODWORD(v836) = *(v258 + LODWORD(STACK[0x520]));
  v838 = v834 ^ v837;
  v839 = v836 - ((2 * v836) & 0xA8);
  LODWORD(v836) = *(v258 + LODWORD(STACK[0x518]));
  v840 = (((v833 - ((2 * v833) & 0x150)) << 12) - 160792576) ^ ((((v838 << 8) ^ 0xB4CEE1) & ((v839 + 1945424980) ^ 0xB2BA5) ^ (v839 + 1945424980) & 0x40541E) << 8);
  v841 = *(v258 + LODWORD(STACK[0x510]));
  LODWORD(STACK[0x60C]) = (16 * (v836 - ((2 * v836) & 0x15E)) + 1245518576) ^ LODWORD(STACK[0x4C4]) ^ v840 & 0xEEA48100 ^ (v840 ^ 0x11420AFF) & ((v841 - ((2 * v841) & 0xFFFFFFDF) + 194869999) ^ 0x1AC60411);
  v842 = *(v258 + LODWORD(STACK[0x49C]));
  LODWORD(v836) = *(v258 + LODWORD(STACK[0x48C]));
  v843 = *(v258 + LODWORD(STACK[0x488]));
  v844 = *(v258 + LODWORD(STACK[0x484]));
  v845 = ((((v842 - ((2 * v842) & 0x126)) << 12) + 1164521472) ^ (((v836 - ((2 * v836) & 0x124)) << 8) + 513577472) ^ 0xF603B2) & ((v844 - ((2 * v844) & 0xD8) + 1573727852) ^ 0x32D1D3) ^ (v844 - ((2 * v844) & 0xD8) + 1573727852) & 0x64D;
  LODWORD(v836) = *(v258 + LODWORD(STACK[0x480]));
  v846 = *(v258 + LODWORD(STACK[0x4E8]));
  v847 = ((((v843 - ((2 * v843) & 0x30)) << 12) + 1337032704) ^ (v845 << 8) ^ 0x676068) & ((v836 - ((2 * v836) & 0x34) + 2039897882) ^ 0x69A0E5) ^ (v836 - ((2 * v836) & 0x34) + 2039897882) & 0x66197;
  LODWORD(v836) = *(v258 + LODWORD(STACK[0x494]));
  v848 = v836 + 1369096244 + (~(2 * v836) | 0xFFFFFF99);
  LODWORD(v836) = *(v258 + LODWORD(STACK[0x508]));
  v849 = ((((v846 + (~(2 * v846) | 0xFFEAB)) << 12) + 1090170880) ^ (v847 << 8) ^ 0xDE4D5651) & (v848 ^ 0xAE653F6A);
  v850 = v836 - ((2 * v836) & 0x32);
  LODWORD(v836) = LODWORD(STACK[0x4D8]) ^ ((LODWORD(STACK[0x4F0]) ^ 0x5758058E) + 1696366196);
  v851 = ((v836 ^ 0xF025F665) - 547952322) ^ ((v836 ^ 0x235B87FB) + 203987108) ^ ((v836 ^ 0xD37E719E) - 66228537);
  v852 = STACK[0x4CC];
  LODWORD(STACK[0x610]) = (16 * v850 - 18210416) ^ LODWORD(STACK[0x4CC]) ^ v848 & 0x101273AE ^ v849;
  v854 = *(v258 + LODWORD(STACK[0x4B0]));
  v855 = v854 - ((2 * v854) & 0xDC);
  v856 = *(v258 + LODWORD(STACK[0x4A8]));
  v857 = *(v258 + LODWORD(STACK[0x4A4]));
  v858 = (((*(v258 + LODWORD(STACK[0x4AC])) - ((2 * *(v258 + LODWORD(STACK[0x4AC]))) & 0x74)) << 12) + 2136186880) ^ (((((v855 << 12) + 913760256) ^ (((v856 - ((2 * v856) & 0x190)) << 8) - 1429551104) ^ 0xECAADF) & ((v857 - ((2 * v857) & 0xC4) - 609975966) ^ 0x5B7EBD) ^ (v857 - ((2 * v857) & 0xC4) - 609975966) & 0x47D20) << 8);
  v859 = ~(v768 >> 8) & 0xF;
  v119 = v859 >= 9;
  v860 = 119 * v859;
  if (v119)
  {
    v860 -= 962;
  }

  v861 = *(v258 + v860) - 2 * (*(v258 + v860) & 0x1F) + 1864726559;
  v862 = LODWORD(STACK[0x648]) - 796073817 + v851;
  v863 = LODWORD(STACK[0x4A0]) ^ v861 & 0x4685D ^ (v858 ^ 0xA948A2) & (v861 ^ 0xDA87B0);
  v864 = LODWORD(STACK[0x4E4]) >> 4;
  v119 = v864 >= 9;
  v865 = 119 * v864;
  if (v119)
  {
    v865 -= 962;
  }

  v866 = 119 * (STACK[0x500] & 0xF);
  if ((STACK[0x500] & 0xF) >= 9)
  {
    v866 -= 962;
  }

  v867 = *(v258 + v866) - ((2 * *(v258 + v866)) & 0x17A) - 31159619;
  v853 = LODWORD(STACK[0x4D0]) ^ ((LODWORD(STACK[0x4D4]) ^ 0x5758058E) + 1696366196);
  LODWORD(STACK[0x648]) = (16 * (*(v258 + v865) - ((2 * *(v258 + v865)) & 0x130)) + 1546860928) ^ ((((v852 ^ 0x3099EB8C) + 1549118079) ^ ((v852 ^ 0xC988F05) + 1616170744) ^ ((v852 ^ 0xF691BF30) - 1705115965)) - 1270127045 + (((v853 ^ 0xA19852D3) + 80719276) ^ ((v853 ^ 0xBD86A6F9) + 416373122) ^ ((v853 ^ 0x1C1EF42A) - 1186395309))) ^ v867 & 0x9C000B0D ^ ((v863 << 8) ^ 0xFF111BF2) & (v867 ^ 0x1DB754A);
  LODWORD(STACK[0x608]) = v862 ^ LODWORD(STACK[0x4F8]);
  return (*(STACK[0x6A0] + 8 * (LODWORD(STACK[0x688]) ^ (217 * LODWORD(STACK[0x630])))))();
}

uint64_t sub_10084D294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x1A6C]) = a73 + LODWORD(STACK[0x1D7C]) + LODWORD(STACK[0x840]);
  STACK[0x1AB8] = STACK[0x1D48];
  STACK[0x14C8] = STACK[0x1800];
  LODWORD(STACK[0x1B1C]) = STACK[0x1F74];
  STACK[0xE88] = STACK[0x12A0];
  v74 = STACK[0x1428];
  v75 = &STACK[0x2720] + STACK[0x1428];
  STACK[0xD10] = v75;
  STACK[0x1288] = (v75 + 24);
  STACK[0x1E48] = (v75 + 56);
  STACK[0x19F0] = (v75 + 72);
  STACK[0x1428] = v74 + 112;
  STACK[0x1EE8] = 0;
  v76 = (*(v73 + 8 * a72))(v75, 0, 24);
  STACK[0x1CF8] = 0;
  STACK[0x15E0] = 0;
  *(v75 + 5) = 0;
  *(v75 + 12) = 0;
  *(v75 + 7) = 0;
  *(v75 + 8) = 0;
  return (*(v73 + 375152))(v76);
}

uint64_t sub_10084D400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, _DWORD *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *a41 = 23958;
  *a66 = (*(v67 + 8 * (v66 + 24253)))();
  return (*(v67 + 8 * (v66 - 20265)))();
}

uint64_t sub_10084D4CC()
{
  *v3 = 0;
  *v2 = v1;
  return (*(v4 + 8 * (v0 + 4296)))();
}

uint64_t sub_10084D500(uint64_t a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5, unsigned int a6, void *a7, _DWORD *a8)
{
  v25 = *(STACK[0x7E0] + (v17 & a2 ^ a3) + v14);
  v26 = *(v9 + 8);
  v27 = *(*a7 + (*a8 & a6));
  v28 = ((((v27 ^ (v26 + v11)) & 0x7FFFFFFF) * v20) ^ ((((v27 ^ (v26 + v11)) & 0x7FFFFFFFu) * v20) >> 16)) * v20;
  v29 = (v14 | 0xE33C96BB) - ((2 * v14) ^ v24) + (~v14 | 0x1CC36944);
  v30 = (v14 ^ 0xFACADFF0) + ((2 * v14) & 0x411BB74 | v14 ^ 0x535200F | (2 * v14) & 0xE2080480) + 1;
  v31 = ((v30 & 4) * v19) >> 32;
  LODWORD(v31) = ((v30 & 4) - (v31 | (2 * v31))) * ((v30 & 4) - (v31 | (2 * v31)));
  v32 = v30 ^ v14 & 0xF30CDFFA ^ (8 * v30) & 0x20000000 ^ ((v30 >> 1) & 2 | (((v30 >> 26) & 1) << 29)) ^ (2 * (v31 - 3 * ((v31 * v19) >> 32)));
  v33 = ((2 * v29) & v21 | ~(((2 * v29) ^ 0xDF9F6D7C) & v29)) - (((2 * v29) ^ 0xDF9F6D7C) & v29 | ~((2 * v29) & v21)) + 2 * (((2 * v29) ^ 0xDF9F6D7C) & v29 & ~((2 * v29) & v21));
  v34 = *(v26 + v11) ^ v25 ^ *(v15 + (v28 >> 24)) ^ *(v16 + (v28 >> 24)) ^ *((v28 >> 24) + v18 + 2) ^ v28 ^ (9 * ((((((v27 ^ (v26 + v11)) & 0x7FFFFFFF) * v20) ^ ((((v27 ^ (v26 + v11)) & 0x7FFFFFFFu) * v20) >> 16)) * v20) >> 24));
  LODWORD(v28) = ((v33 >> 1) ^ 0xF603921D) - (((4 * v32) >> 1) ^ (v33 >> 1) ^ 0xF603921D) + ((4 * v32) >> 1);
  LOBYTE(v28) = ((v28 | ~v32) + (v32 | ~v28) + 2 * (v28 ^ v32) + 2) ^ v21;
  LOBYTE(v33) = (v33 + ((4 * v33) ^ 0xF0 | ~v33) + 1) ^ (4 * v33) & 0xB0;
  LOBYTE(v33) = (((16 * v28) ^ 0xF1 | v33) - ((16 * v28) ^ 0xF1 ^ v33)) ^ v33 & 0x11;
  LOBYTE(v28) = 2 * ((v33 ^ (16 * v28) & 0x30 ^ v28) & 0x52 | (v33 ^ v28) & 9 | (((v33 ^ (16 * v28) & 0x30) & v22) + (v28 & v22)) & v22);
  LOBYTE(v28) = 2 * ((v28 | ~v14) - (v14 | ~v28) + 2 * (v14 & ~v28));
  v35 = (v26 + v12);
  LOBYTE(v33) = *v35;
  v36 = ((((((((v27 ^ v35) & 0x7FFFFFFF) * v20) ^ 0x52FD0000) >> 16) ^ 0xFFFFAD02) & (((v27 ^ v35) & 0x7FFFFFFF) * v20)) + ~((((((v27 ^ v35) & 0x7FFFFFFF) * v20) ^ 0x52FD0000) >> 16) ^ 0xFFFFAD02 | (((v27 ^ v35) & 0x7FFFFFFF) * v20))) * v20;
  LOBYTE(v28) = ((v28 ^ 0xE6) - 11) ^ ((v28 ^ 0x68) + 123) ^ ((v28 ^ 3) + 18);
  v37 = (v10 + (v13 + v14 - 1539605260));
  v38 = ((((v27 ^ v37) & 0x7FFFFFFF) * v20) ^ ((((v27 ^ v37) & 0x7FFFFFFF) * v20) >> 16)) * v20;
  *v37 = *(v16 + (v38 >> 24)) ^ *(STACK[0x728] + (v38 >> 24)) ^ *((v38 >> 24) + v18 + 2) ^ v38 ^ (9 * BYTE3(v38)) ^ ((*(STACK[0x728] + (v36 >> 24)) ^ v33 ^ *(v16 + (v36 >> 24)) ^ *((v36 >> 24) + v18 + 2) ^ v36 ^ (9 * BYTE3(v36)) | 1) - 102 * v28 + (v28 + 96) * ((((v34 ^ 0x8C) + 5) ^ ((v34 ^ 0x59) - 46) ^ ((v34 ^ 0x8A) + 3)) - 114) - 64);
  v39 = v14 + 802406609 < v8;
  if (v8 < 0x3CC6E0D6 != (v14 + 802406609) < 0x3CC6E0D6)
  {
    v39 = v8 < 0x3CC6E0D6;
  }

  return (*(v23 + 8 * ((32 * !v39) | 0x2D9Eu)))();
}

uint64_t sub_10084D900@<X0>(unsigned int a1@<W8>)
{
  *(v5 + 4) = a1 + 1;
  *(v1 + 120 * a1) = v4;
  *(*(v5 + 8) + 120 * (v3 - 12793 + *(v5 + 4) - 13314) + 4) = v6;
  return (*(v2 + 8 * v3))();
}

uint64_t sub_10084DC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (*(a8 + 8 * (v9 + 39293)))();
  v11 = STACK[0x5A0];
  *(v8 + 24) = 0;
  return (*(v11 + 8 * v9))(v10);
}

uint64_t sub_10084DC6C@<X0>(uint64_t a1@<X8>)
{
  v8 = v1 < v5;
  v9 = v4 & 0xF;
  *(a1 + v4) = *(*(&off_1010A0B50 + v3 - 4453) + v9 - 664745835) ^ *(v2 + v4) ^ (97 * v9) ^ *(*(&off_1010A0B50 + v3 - 1520) + ((v3 + 84634315) & 0xFAF49B6F) + v9 - 851715958) ^ *(*(&off_1010A0B50 + (v3 ^ 0x1209)) + v9 - 238207115);
  if (v8 == v4 + 1 > 0x7EE41027)
  {
    v8 = v4 - 2128875559 < v1;
  }

  return (*(v7 + 8 * ((v8 * v6) ^ v3)))();
}

uint64_t sub_10084DDC8()
{
  LODWORD(STACK[0x189C]) = STACK[0x20D4];
  LODWORD(STACK[0xDF4]) = (((LODWORD(STACK[0x21F8]) ^ 0x731A240) - 120693312) ^ ((LODWORD(STACK[0x21F8]) ^ 0xB56A0DCA) + 1251340854) ^ ((LODWORD(STACK[0x21F8]) ^ 0x5B8E689B) - 1536059547)) - (((LODWORD(STACK[0x2204]) ^ 0x8D4150A5) + 1925099355) ^ ((LODWORD(STACK[0x2204]) ^ 0xFC3FB4DC) + 62933796) ^ ((LODWORD(STACK[0x2204]) ^ 0x98AB2368) + 1733614744));
  return (*(v0 + 50680))();
}

uint64_t sub_10084E1E4()
{
  v7 = (v3 + 136);
  if (!v3)
  {
    v7 = v0;
  }

  *v7 = *(v2 + 136);
  *(v2 + 136) = 0;
  v8 = (((*(v5 + 8) ^ 0x2457C550) - 609731920) ^ ((*(v5 + 8) ^ 0x58299F03) - 1479122691) ^ (((v4 + 35609702) | 0x6040D052) + (*(v5 + 8) ^ 0x95AB9D42) + 133403244)) + (((v4 - 37761) | 0x21A4) ^ 0x4F04BCE2);
  v9 = (v8 ^ 0x509C3DAD) & (2 * (v8 & 0x9AD139B1)) ^ v8 & 0x9AD139B1;
  v10 = ((2 * (v8 ^ 0x511E4DCD)) ^ 0x979EE8F8) & (v8 ^ 0x511E4DCD) ^ (2 * (v8 ^ 0x511E4DCD)) & 0xCBCF747C;
  v11 = v10 ^ 0x48411404;
  v12 = (v10 ^ 0x838C6048) & (4 * v9) ^ v9;
  v13 = ((4 * v11) ^ 0x2F3DD1F0) & v11 ^ (4 * v11) & 0xCBCF7478;
  v14 = (v13 ^ 0xB0D5070) & (16 * v12) ^ v12;
  v15 = ((16 * (v13 ^ 0xC0C2240C)) ^ 0xBCF747C0) & (v13 ^ 0xC0C2240C) ^ (16 * (v13 ^ 0xC0C2240C)) & 0xCBCF7440;
  v16 = v14 ^ 0xCBCF747C ^ (v15 ^ 0x88C74400) & (v14 << 8);
  *(v5 + 8) = v8 ^ (2 * ((v16 << 16) & 0x4BCF0000 ^ v16 ^ ((v16 << 16) ^ 0x747C0000) & (((v15 ^ 0x4308303C) << 8) & 0x4BCF0000 ^ 0x8B0000 ^ (((v15 ^ 0x4308303C) << 8) ^ 0x4F740000) & (v15 ^ 0x4308303C)))) ^ 0x64021658;
  return (*(v6 + 8 * ((1929 * (*v1 != 0)) ^ v4)))(0);
}

uint64_t sub_10084E4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (*(a8 + 8 * (v8 ^ 0xA10A)))();
  v11 = STACK[0x5A0];
  *(v9 + 24) = 0;
  return (*(v11 + 8 * v8))(v10);
}

uint64_t sub_10084E6D4@<X0>(uint64_t a1@<X8>)
{
  v5 = (v2 ^ 0xCF) & (2 * (v2 & 0xEE)) ^ v2 & 0xEE;
  v6 = ((2 * (v2 ^ 0xD3)) ^ 0x7A) & (v2 ^ 0xD3) ^ (2 * (v2 ^ 0xD3)) & 0x3C;
  v7 = v2 ^ (2 * (((4 * v6) & 0x38 ^ 0x29 ^ ((4 * v6) ^ 0xF4) & v6) & (16 * ((v6 ^ 0x38) & (4 * v5) ^ v5)) ^ (v6 ^ 0x38) & (4 * v5) ^ v5));
  v8 = ~(v1 - 11175) + v3;
  v9 = (((v7 ^ 0x19) + 122) ^ ((v7 ^ 0xC4) - 91) ^ ((v7 ^ 0x89) - 22)) + 121;
  STACK[0x1C08] = v8;
  *(a1 + v8) = v9 * (v2 + 50) - 63 * (13 * v9 - 46 * (v2 + 50)) - 86;
  return (*(v4 + 8 * ((118 * (STACK[0x1C08] != 0)) ^ v1)))();
}

uint64_t sub_10084EA78@<X0>(uint64_t a1@<X8>, int a2, char a3, __int16 a4, char a5, char *a6, int a7, unsigned int a8, uint64_t a9, char *a10)
{
  v12 = *(a1 + 8);
  v13 = 906386353 * ((&a6 - 2 * (&a6 & 0x18A5FF58) - 1733951649) ^ 0xA9A4327B);
  v14 = (*(a1 + 32) - ((*(a1 + 32) << (((v11 - 84) & 0xEF) + 22)) & 0xE1A17464) - 254756302) ^ v13;
  a6 = &a5;
  a9 = v12;
  a10 = &a3;
  a7 = v13 + v11 + 859;
  a8 = v14;
  v15 = (*(v10 + 8 * (v11 ^ 0xD35A)))(&a6);
  return (*(v10 + 8 * v11))(v15);
}

uint64_t sub_10084EC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, int a7@<W8>)
{
  v22 = v7 + v13;
  v23 = v7 - 1;
  v24 = __ROR8__((a2 + v23) & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = ((0x296E95066F186A7ELL - v24) & a4) + v24 - 0x296E95066F186A7FLL - ((v24 - 0x296E95066F186A7FLL) & a4);
  v26 = __ROR8__(v25 ^ v14, 8);
  v27 = (((v26 + (v25 ^ v15)) | v16) - ((v26 + (v25 ^ v15)) | v18) + v18) ^ 0xF3F80E46063E59E4;
  v28 = v27 ^ __ROR8__(v25 ^ v15, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (((v29 + v28) | a6) - ((v29 + v28) | a3) + a3) ^ a5;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (((2 * (v32 + v31)) & 0xD62CF47B3332F3F0) - (v32 + v31) + 0x14E985C266668607) ^ 0xA994A82BA76C276DLL;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (((2 * ((v35 + v34) ^ 0x102EBE5226305265)) & 0x712D560FD0C41AEALL) - ((v35 + v34) ^ 0x102EBE5226305265) + 0x476954F8179DF28ALL) ^ 0xD5F76ABD8EEE6086;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0xAA9DDABAE2E4D47CLL;
  v39 = __ROR8__(v38, 8);
  v40 = v38 ^ __ROR8__(v37, 61);
  v41 = ((v17 & (2 * ((v39 + v40) ^ v19))) - ((v39 + v40) ^ v19) + v21) ^ v9;
  v42 = __ROR8__((v22 + 9) & 0xFFFFFFFFFFFFFFF8, 8);
  v43 = (0x296E95066F186A7ELL - v42) & v20 | (v42 + v11) & v10;
  v44 = v43 ^ v12;
  v45 = v43 ^ v8;
  v46 = __ROR8__(v41, 8) + (v41 ^ __ROR8__(v40, 61));
  v47 = (__ROR8__(v44, 8) + v45) ^ 0x14BA074A2F986FE5;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = __ROR8__(v47, 8);
  v50 = (((2 * (v49 + v48)) | 0x59E94684D11B0290) - (v49 + v48) + 0x530B5CBD97727EB8) ^ 0x80C32B019129EFD0;
  v51 = v50 ^ __ROR8__(v48, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ 0xBD7D2DE9C10AA16ALL;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ 0x82B08017BF43C069;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ 0xAA9DDABAE2E4D47CLL;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ 0x8FB22143FEDB6CB3;
  *(v22 + 9) = ((v46 ^ 0x9B1C7427651E0F18) >> (8 * ((a2 + v23) & 7))) ^ (((__ROR8__(v58, 8) + (v58 ^ __ROR8__(v57, 61))) ^ 0x9B1C7427651E0F18) >> (8 * ((v22 + 9) & 7))) ^ *(a2 + v23);
  return (*(a1 + 8 * (a7 ^ (32 * (v23 != 0)))))();
}

uint64_t sub_10084F01C@<X0>(unsigned int a1@<W8>)
{
  v6 = STACK[0x1E30];
  v7 = (v1 + v2 - STACK[0x1E30]);
  v8 = v4 - STACK[0x1E30];
  *(v3 + 8) = v8;
  *v7 = v8;
  v7[1] = 0x3CE25E0EC5200378 - v6;
  v7[2] = (((LOBYTE(STACK[0xF9F]) ^ 0x7C1BEEAAB6E06384) - 0x7C1BEEAAB6E06384) ^ ((LOBYTE(STACK[0xF9F]) ^ 0x2753ED120D1304A2) - 0x2753ED120D1304A2) ^ ((((a1 + 2124566) | 0x62405050) ^ LOBYTE(STACK[0xF9F]) ^ 0x5B4803B8D993B778) - 0x5B4803B8BBF3672ALL)) + 0x73B4913AF7D02E4BLL;
  *(v1 + v2) = 0x3CE25E0EC5200378;
  *(STACK[0x6C8] + 40) += v6;
  return (*(v5 + 8 * a1))();
}

void sub_10084F15C(uint64_t a1)
{
  v1 = *(a1 + 4) - 297845113 * ((~a1 & 0x29411F3C | a1 & 0xD6BEE0C3) ^ 0x5E7203A2);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_10084F2C4@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  a4 = (v7 + 41768) ^ (155453101 * ((2 * (&a3 & 0x5A077258) - &a3 - 1510437465) ^ 0x43DE9668));
  a5 = v6;
  a3 = a1;
  v8 = (*(v5 + 8 * (v7 ^ 0xE89B)))(&a3);
  *(v6 + 4) = ((v7 + 30598) ^ 0x7D4C0438) - *(v6 + 4);
  return (*(v5 + 8 * v7))(v8);
}

uint64_t sub_10084F400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a6 + a1) ^ *(a6 + v7);
  *(a6 + a1) = v9;
  v10 = *(a6 + v7) ^ v9;
  *(a6 + v7) = v10;
  *(a6 + a1) ^= v10;
  return (*(v8 + 8 * v6))();
}

void sub_10084F438(uint64_t a1)
{
  v1 = *(a1 + 4) - 193924789 * ((a1 - 2 * (a1 & 0x10B56BC5) + 280325061) ^ 0xA60E59A3);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10084F4F8()
{
  v2 = STACK[0x318] - 24208;
  LODWORD(STACK[0x5F0]) = v0;
  return (*(v1 + 8 * v2))();
}

uint64_t sub_10084F584()
{
  v2 = *(v1 + 8 * (((*(*(STACK[0x798] + 32) + 24) == STACK[0x798]) * (((v0 - 263773528) ^ 0xF047D926) + ((v0 - 263773528) & 0xFB8B6F6))) ^ v0));
  STACK[0x7A0] = STACK[0x798];
  return v2();
}

uint64_t sub_10084F5E0@<X0>(int8x8_t *a1@<X8>, int8x16_t a2@<Q0>, int8x16_t a3@<Q1>, int8x16_t a4@<Q2>, int8x16_t a5@<Q3>, int8x16_t a6@<Q4>, int8x16_t a7@<Q5>, int8x16_t a8@<Q6>, int8x16_t a9@<Q7>)
{
  v22 = veorq_s8(a4, a6);
  v23 = veorq_s8(a5, a6);
  v24 = veorq_s8(a3, a6);
  v25 = veorq_s8(a2, a6);
  v26 = vandq_s8(veorq_s8(vandq_s8(vaddq_s64(a4, a4), a7), a8), a4);
  v27 = vandq_s8(veorq_s8(vandq_s8(vaddq_s64(a5, a5), a7), a8), a5);
  v28 = vandq_s8(veorq_s8(vandq_s8(vaddq_s64(a3, a3), a7), a8), a3);
  v29 = vaddq_s64(v25, v25);
  v30 = vaddq_s64(v24, v24);
  v31 = vandq_s8(veorq_s8(vandq_s8(vaddq_s64(a2, a2), a7), a8), a2);
  v32 = vaddq_s64(v23, v23);
  v33 = vaddq_s64(v22, v22);
  v34 = veorq_s8(vandq_s8(veorq_s8(v33, a9), v22), vandq_s8(v33, v13));
  v35 = veorq_s8(vandq_s8(veorq_s8(v32, a9), v23), vandq_s8(v32, v13));
  v36 = veorq_s8(vandq_s8(veorq_s8(v30, a9), v24), vandq_s8(v30, v13));
  v37 = veorq_s8(vandq_s8(veorq_s8(v29, a9), v25), vandq_s8(v29, v13));
  v38 = veorq_s8(v37, v14);
  v39 = veorq_s8(v36, v14);
  v40 = veorq_s8(v35, v14);
  v41 = veorq_s8(v34, v14);
  v42 = veorq_s8(vandq_s8(veorq_s8(v37, v15), vshlq_n_s64(v31, 2uLL)), v31);
  v43 = veorq_s8(vandq_s8(veorq_s8(v36, v15), vshlq_n_s64(v28, 2uLL)), v28);
  v44 = veorq_s8(vandq_s8(veorq_s8(v35, v15), vshlq_n_s64(v27, 2uLL)), v27);
  v45 = vshlq_n_s64(v41, 2uLL);
  v46 = vshlq_n_s64(v40, 2uLL);
  v47 = vshlq_n_s64(v39, 2uLL);
  v48 = vshlq_n_s64(v38, 2uLL);
  v49 = veorq_s8(vandq_s8(veorq_s8(v34, v15), vshlq_n_s64(v26, 2uLL)), v26);
  v50 = veorq_s8(vandq_s8(veorq_s8(veorq_s8(vandq_s8(v45, v13), v17), vandq_s8(veorq_s8(v45, v16), v41)), vshlq_n_s64(v49, 4uLL)), v49);
  v51 = veorq_s8(vandq_s8(veorq_s8(veorq_s8(vandq_s8(v46, v13), v17), vandq_s8(veorq_s8(v46, v16), v40)), vshlq_n_s64(v44, 4uLL)), v44);
  v52 = veorq_s8(vandq_s8(veorq_s8(veorq_s8(vandq_s8(v47, v13), v17), vandq_s8(veorq_s8(v47, v16), v39)), vshlq_n_s64(v43, 4uLL)), v43);
  v53 = veorq_s8(vandq_s8(veorq_s8(veorq_s8(vandq_s8(v48, v13), v17), vandq_s8(veorq_s8(v48, v16), v38)), vshlq_n_s64(v42, 4uLL)), v42);
  v72.val[3] = veorq_s8(veorq_s8(a2, v19), vaddq_s64(v53, v53));
  v72.val[2] = veorq_s8(veorq_s8(a3, v19), vaddq_s64(v52, v52));
  v54 = veorq_s8(veorq_s8(a5, v19), vaddq_s64(v51, v51));
  v55 = veorq_s8(veorq_s8(a4, v19), vaddq_s64(v50, v50));
  v56 = v55.i64[1];
  v57 = v55.i64[0];
  v58 = vaddq_s64(a4, v18);
  v59 = v58.i64[1];
  v60 = v58.i64[0];
  v72.val[0] = vaddq_s64(a3, v18);
  v61 = v54.i64[1];
  v62 = v54.i64[0];
  v63 = vaddq_s64(a5, v18);
  v64 = v63.i64[1];
  v65 = v63.i64[0];
  v72.val[1] = vaddq_s64(a2, v18);
  v66 = v57 * v60;
  v67 = v72.val[0].i64[0];
  v68 = v72.val[1].i64[1];
  v69 = v72.val[1].i64[0];
  v72.val[1].i64[0] = v66;
  v72.val[1].i64[1] = v56 * v59;
  v72.val[0].i64[0] = v62 * v65;
  v70 = v72.val[2].i64[1] * v72.val[0].i64[1];
  v72.val[0].i64[1] = v61 * v64;
  v72.val[2].i64[0] *= v67;
  v72.val[2].i64[1] = v70;
  v72.val[3].i64[0] *= v69;
  v72.val[3].i64[1] *= v68;
  *a1 = vrev64_s8(*&vqtbl4q_s8(v72, v20));
  return (*(v11 + 8 * (((v9 == 0) * v10) ^ v12)))(vaddq_s64(a2, v21), vaddq_s64(a3, v21), vaddq_s64(a4, v21), vaddq_s64(a5, v21));
}

uint64_t sub_10084FE10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *v7 = v5;
  *(v5 + 8) = *(a5 + 8);
  *(a5 + 8) = v5;
  return (*(v8 + 8 * v6))(a1, a2, a3, a4, v8);
}

uint64_t sub_10084FE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v28 = 6 * ((v26 + 16111) ^ 0x7505u);
  v29 = *(v24 + 8 * (((v28 + 7 * ((v26 + 16111) ^ 0x7803) - 30068) * (v27 == 0)) ^ (v26 + 16111)));
  return v29(a1, v28, v29, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, v25, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_10084FF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  (*(v14 + 8 * (v13 + 46528)))(*(v15 + 8));
  *(v15 + 8) = a12;
  *v15 = a10;
  return (*(v14 + 8 * v13))(a13);
}

uint64_t sub_100850100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = LODWORD(STACK[0xA04]) - 371865839 + (((*(STACK[0x1EC0] + 80) ^ 0x7264AB68) - 1919200104) ^ ((*(STACK[0x1EC0] + 80) ^ 0x2B6F5864) - 728717412) ^ ((*(STACK[0x1EC0] + 80) ^ 0xB0DE341D) + (v7 ^ 0x4F21CAE7)));
  LODWORD(STACK[0xA04]) = v10;
  LODWORD(STACK[0x23C8]) = LODWORD(STACK[0x24DC]) - 1322345226 + v10;
  v11 = *(STACK[0x19D8] + 32) + 629361145;
  LODWORD(STACK[0x23CC]) = ((v11 ^ 0xC4E4E943) + 513302339) ^ v11 ^ ((v11 ^ 0xA7D08F26) + 2108438824) ^ ((v11 ^ 0xF350D066) + 690775656) ^ ((v11 ^ 0xB5E7FFFD) + 1872447997) ^ 0xAD8B6664;
  return (*(v8 + 8 * (v7 ^ 0x153C)))(a1, a2, a3, a4, STACK[0x808], 1864610357, a7, v9);
}

uint64_t sub_100850374()
{
  v3 = (*(v2 + 8 * (v0 + 30256)))();
  *(v1 + 24) = 0;
  return (*(v2 + 8 * v0))(v3);
}

void sub_10085064C(uint64_t a1)
{
  v1 = *(a1 + 4) ^ (1012831759 * ((-2 - ((a1 | 0xE075ABD3) + (~a1 | 0x1F8A542C))) ^ 0xF1942A6));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1008508B4()
{
  STACK[0x1F68] = 0;
  LODWORD(STACK[0x177C]) = 0;
  if (STACK[0x14C8])
  {
    v1 = STACK[0xE88] == 0;
  }

  else
  {
    v1 = 1;
  }

  v2 = v1;
  return (*(v0 + 8 * ((207 * v2) ^ 0x8F4C)))();
}

uint64_t sub_100850920()
{
  v2 = *(STACK[0xCD8] + 104);
  STACK[0x1138] = STACK[0xCD8] + 104;
  return (*(v1 + 8 * (((v2 == 0x427A3CD3E8C5DA2FLL) * (v0 + 28289)) ^ v0)))();
}

uint64_t sub_100850970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v21 = (v11 + 23215) | 0x29C2;
  HIDWORD(a10) = (v21 + 394776593) & 0xE877F2E8;
  v29 = vdupq_n_s64(v16);
  v28 = vdupq_n_s64(v20);
  v27 = vdupq_n_s64(v13);
  v26 = vdupq_n_s64(v14);
  v25 = vdupq_n_s64(0x96uLL);
  v24 = vdupq_n_s64(0x3FuLL);
  v23 = vdupq_n_s64(0x10uLL);
  return (*(v15 + 8 * v21))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, (((v21 - 33) - 44989) & v19) + v12, ((v21 - 33) - 44989) & v19, v12, v10, v19, v18, v17, a3, v23.i64[0], v23.i64[1], 0x3830282018100800, 0x7870686058504840, v24.i64[0], v24.i64[1], v25.i64[0], v25.i64[1], v26.i64[0], v26.i64[1], v27.i64[0], v27.i64[1], v28.i64[0], v28.i64[1], v29.i64[0], v29.i64[1], vdupq_n_s64(a8).u64[0]);
}

uint64_t sub_100850ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a9 = v12;
  a9[1] = v12;
  return (*(a8 + 8 * v13))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12);
}

void sub_100850AF8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (*(a1 + 8) ^ 0x7FFFFDF1FB7BF5F7) - 0x7FFFFDF199887F8ALL + ((2 * *(a1 + 8)) & 0xFFFFFBE3F6F7EBEELL);
  v4 = v3 < 0x61F3766D;
  v5 = v3 > v2 + 1643345517;
  if (v2 > 0xFFFFFFFF9E0C8992 != v4)
  {
    v5 = v4;
  }

  v1 = *a1 - 17902189 * (((a1 | 0x3C4A0E05) - a1 + (a1 & 0xC3B5F1FA)) ^ 0xB2051815);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_100850D90()
{
  v1 = STACK[0x1E68];
  v2 = (*(v0 + 415048))(*(STACK[0x1E68] + 704));
  *(v1 + 704) = 0;
  *(v1 + 712) = -371865839;
  return (*(v0 + 156280))(v2);
}

uint64_t sub_100850DF0@<X0>(unint64_t a1@<X0>, unint64_t a2@<X8>)
{
  STACK[0xC28] = *(v7 + 8 * v5);
  STACK[0xFA0] = v3;
  STACK[0xF80] = v2;
  LODWORD(STACK[0xFF0]) = v4;
  STACK[0x15C0] = a1;
  STACK[0xB48] = a2;
  v8 = STACK[0x1428];
  v9 = &STACK[0x2720] + STACK[0x1428];
  STACK[0x19A8] = v9;
  STACK[0x1490] = (v9 + 100);
  STACK[0x1B20] = (v9 + 116);
  STACK[0xDD0] = (v9 + 132);
  STACK[0x1A20] = (v9 + 148);
  STACK[0x1428] = v8 + 176;
  STACK[0x888] = 0;
  STACK[0x16C8] = 0;
  return (*(v7 + 8 * (((v2 == 0) * (v6 - 1650511944)) ^ (v6 - 1650479552))))();
}

uint64_t sub_10085106C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, char a4@<W4>, int a5@<W5>, _DWORD *a6@<X7>, __int16 a7@<W8>)
{
  v14 = *(v12 + 8 * v9);
  v15 = *v7;
  v16 = ((2 * (v8 - 1497668668)) & 0xC17FFE7E) + ((v8 - 1497668668) ^ 0xE0BFFF3F);
  v17 = a7 - ((2 * a7) & 0x9590) + 19144;
  v18 = (v15 + v16 + 524288193);
  v19 = ((v18 ^ *(*v13 + (*a6 & v10))) & 0x7FFFFFFF) * a5;
  v20 = (v19 ^ HIWORD(v19)) * a5;
  *v18 = *(a2 + (v20 >> 24)) ^ ((v17 & 0xFF00) >> 8) ^ *(v11 + (v20 >> 24)) ^ *((v20 >> 24) + a1 + 1) ^ v20 ^ (BYTE3(v20) * a3) ^ a4;
  v21 = (v15 + v16 + 524288194);
  v22 = ((*(*v13 + (*a6 & v10)) ^ v21) & 0x7FFFFFFF) * a5;
  v23 = (v22 ^ HIWORD(v22)) * a5;
  *v21 = v17 ^ *(a2 + (v23 >> 24)) ^ *(v11 + (v23 >> 24)) ^ *((v23 >> 24) + a1 + 1) ^ v23 ^ (BYTE3(v23) * a3) ^ 0xC8;
  return v14();
}

uint64_t sub_100851190(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = STACK[0x4D8] - 3103;
  *a1 = 0;
  a1[1] = 0;
  *(v8 + 8) = a1;
  v10 = (((((5 * (v9 ^ 0xB5D9)) ^ ((*(a8 + 8 * (v9 + 13577)))(16) == 0)) & 1) == 0) * ((v9 ^ 0xB5D9) - 7381)) ^ v9;
  return (*(STACK[0x5A0] + 8 * v10))();
}

uint64_t sub_100851200@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, char a9)
{
  *(a5 + 16) = ((v9 - 8732) ^ 0x3AF7909F) - a1 - 989321123;
  v13 = 634647737 * ((((v12 - 136) | 0x1230F7B4) - (v12 - 136) + ((v12 - 136) & 0xEDCF0848)) ^ 0x7FA6D848);
  *(v12 - 136) = v11;
  *(v12 - 128) = v13 ^ 0x3E21593E;
  *(v12 - 124) = (v9 - 3392) ^ v13;
  (*(v10 + 8 * (v9 ^ 0xA270)))(v12 - 136);
  v14 = 139493411 * ((v12 - 136) ^ 0xC2DE145);
  *(v12 - 128) = ((((32 * a7) ^ 0x951E9A41) + 912640422) ^ (((32 * a7) ^ 0x9EE57FD) - 1433074662) ^ (((32 * a7) ^ 0x9CF0CDBC) + 1066114649)) - v14 - 2136936315;
  *(v12 - 124) = (v9 - 16795) ^ v14;
  *(v12 - 136) = v11;
  (*(v10 + 8 * (v9 + 24992)))(v12 - 136);
  *(v12 - 136) = a8;
  *(v12 - 120) = &a9;
  *(v12 - 128) = (v9 + 23586) ^ (155453101 * ((((v12 - 136) | 0xAD6F928A) - (v12 - 136) + ((v12 - 136) & 0x52906D70)) ^ 0x4B498945));
  (*(v10 + 8 * (v9 + 24945)))(v12 - 136);
  *(v12 - 136) = v9 - 1603510583 * ((((2 * (v12 - 136)) | 0x2DB9E832) - (v12 - 136) - 383579161) ^ 0x8107C6B2) - 1160;
  *(v12 - 112) = a8;
  *(v12 - 128) = v11;
  v15 = (*(v10 + 8 * (v9 ^ 0xA3EA)))(v12 - 136);
  return (*(v10 + 8 * ((245 * (*(v12 - 120) > 0x3AF7D7A3u)) ^ v9)))(v15);
}

uint64_t sub_10085156C@<X0>(uint64_t a1@<X8>)
{
  *(v5 - 252) = (v1 - 1650484271) ^ (1012831759 * (((v3 | 0x51567F4D) - (v3 | 0xAEA980B2) - 1364623182) ^ 0x41C569C7));
  *(v5 - 248) = a1;
  v6 = (*(v4 + 8 * (v1 ^ 0x62601B5C)))(v5 - 256);
  *(v2 + 136) = 0;
  return (*(v4 + 8 * (v1 - 1650488571)))(v6);
}

uint64_t sub_100851700@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W5>, int a6@<W6>, int a7@<W8>)
{
  v16 = v11 + ((v7 ^ v15) ^ v9) * v10;
  *(a4 + 4 * v7) = a6 ^ a5 ^ __ROR4__(*(a3 + 4 * (v16 - (((v16 >> 6) * v12) >> 32) * v13)), 3) ^ a1;
  return (*(v14 + 8 * (((v8 == 0) * a2) ^ a7)))();
}

uint64_t sub_10085175C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(a53) = a7;
  v65 = *(v64 + 8 * v63);
  *&STACK[0x240] = xmmword_100BC76B0;
  *&STACK[0x320] = vdupq_n_s64(0x9B1C7427651E0F18);
  *&STACK[0x330] = xmmword_100F523B0;
  *&STACK[0x250] = vdupq_n_s64(0x38uLL);
  *&STACK[0x260] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x2F0] = vdupq_n_s64(0x516D7CA00D6CD622uLL);
  *&STACK[0x300] = vdupq_n_s64(0xE5E62B6C8A507A2CLL);
  *&STACK[0x2D0] = vdupq_n_s64(0xA94CBC24F60CB0CBLL);
  *&STACK[0x2E0] = vdupq_n_s64(0xAD6687B613E69E68);
  *&STACK[0x2B0] = vdupq_n_s64(0x2C378843F9A46E98uLL);
  *&STACK[0x2C0] = vdupq_n_s64(0xBDF6BB6ED994DF2ELL);
  *&STACK[0x290] = vdupq_n_s64(0xAA9DDABAE2E4D47CLL);
  *&STACK[0x2A0] = vdupq_n_s64(0xBD7D2DE9C10AA16ALL);
  *&STACK[0x3C0] = vdupq_n_s64(0xE15CABED7E78F12ELL);
  *&STACK[0x3D0] = vdupq_n_s64(0x63EC2BFAC13B3147uLL);
  *&STACK[0x270] = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  *&STACK[0x280] = vdupq_n_s64(0x8FB22143FEDB6CB3);
  *&STACK[0x3B0] = vdupq_n_s64(0xE2C4328F76774E5ELL);
  *&STACK[0x380] = vdupq_n_s64(0x96E95066F186A7EuLL);
  *&STACK[0x390] = vdupq_n_s64(0x1D3BCD708988B1A1uLL);
  *&STACK[0x370] = vdupq_n_s64(0xD6916AF990E79581);
  return v65(0x9C13D4053EC4CEB8, 5930, a3, 28239, 4223655934, a6, 3203346396, 1341914091, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a1 - 1545849991, a56, a1 - 1545849983, a58, a59, a60, a61, a62, a63);
}

void sub_100851E70(uint64_t a1)
{
  v1 = 297845113 * (((a1 ^ 0x8259D180) & 0xD379D1C1 | (a1 ^ 0x404222A) & 0x2C862E3E) ^ 0xF16EEF34);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1008520AC@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, unsigned int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, _DWORD *a9@<X8>)
{
  v20 = *(v15 + v10 + v12 - 255 * ((((v10 + v12) * v14) >> 32) >> 7)) ^ v18;
  if (*(v15 + v10 + v12 - 255 * ((((v10 + v12) * v14) >> 32) >> 7)) == 160)
  {
    v20 = 0;
  }

  *(v15 + (v12 + a1)) ^= ((v11 ^ v13) + 78) ^ *(v15 + v20);
  v21 = (((*a9 ^ v16) + v17) ^ ((*a9 ^ a5) + a6) ^ ((*a9 ^ a7) + a8)) + a3;
  v22 = v21 < a4;
  v23 = v12 + a2 < v21;
  if (v12 + a2 < a4 != v22)
  {
    v23 = v22;
  }

  return (*(v19 + 8 * ((v23 * v9) ^ v11)))();
}

uint64_t sub_100852350()
{
  LODWORD(STACK[0x1B8C]) = v0;
  LODWORD(STACK[0x1344]) = v0;
  LODWORD(STACK[0x1954]) = STACK[0x1594];
  v4 = STACK[0x9D8];
  v5 = STACK[0x10B0];
  v6 = 155453101 * STACK[0x548];
  *(v3 - 248) = LODWORD(STACK[0x1CA4]) + v6;
  *(v3 - 256) = STACK[0x558];
  *(v3 - 208) = (v1 + 34519) ^ v6;
  *(v3 - 176) = v4;
  *(v3 - 224) = &STACK[0x1B8C];
  *(v3 - 216) = (v1 + 1650500151) - v6 + v5 - ((v5 << (v1 - 26)) & 0x4CA8281A52BFCE6) - 0x7D9ABEBF8FCAD1DFLL;
  *(v3 - 192) = &STACK[0x1594];
  *(v3 - 200) = &STACK[0x1B58];
  *(v3 - 240) = &STACK[0x1344];
  *(v3 - 232) = &STACK[0x1578];
  v7 = (*(v2 + 8 * (v1 ^ 0xE209)))(v3 - 256);
  return (*(v2 + 8 * ((17779 * (*(v3 - 184) == v0)) ^ v1)))(v7);
}

uint64_t sub_10085246C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, __int16 a43, uint64_t a44, uint64_t a45, char a46)
{
  *(v47 - 144) = &a43;
  *(v47 - 128) = &a46;
  *(v47 - 136) = (a33 - 378476231) ^ (17902189 * ((((v47 - 144) | 0x301651CD) - ((v47 - 144) | 0xCFE9AE32) - 806769102) ^ 0xBE5947DD));
  v48 = (*(v46 + 8 * (a33 + 44578)))(v47 - 144);
  return (*(v46 + 8 * (((*(v47 - 132) == -371865839) * (11437 * (a33 ^ 0x1DD8) + 22738)) ^ a33)))(v48);
}

uint64_t sub_100852530()
{
  v1 = STACK[0x1E68];
  v2 = (*(v0 + 415048))(*(STACK[0x1E68] + 720));
  *(v1 + 720) = 0;
  *(v1 + 728) = -371865839;
  return (*(v0 + 317992))(v2);
}

uint64_t sub_1008525E0@<X0>(int a1@<W8>)
{
  v4 = ((a1 - 337542952) & 0x767ED8F2 ^ 0xDEEF137C) + v1;
  v5 = *v2 - 1938991041;
  v7 = v5 < 0xBC8FC32E || v4 < v5;
  return (*(v3 + 8 * ((v7 * (a1 - 30321)) ^ a1)))();
}

uint64_t sub_1008526C4()
{
  v7 = ((45 * (v5 ^ 0x48C9)) ^ 0xCF5F1837) + (v1 & 0xFB79DF74) + (v3 ^ 0x7DBCA51B ^ (v5 + 1332548675) & 0xB092EBBB);
  v8 = 139493411 * ((v6 - 152) ^ 0xC2DE145);
  *(v6 - 136) = v4;
  *(v6 - 128) = v0;
  *(v6 - 112) = STACK[0x2B0];
  *(v6 - 152) = (v5 - 11320) ^ v8;
  *(v6 - 120) = v7 ^ v8;
  *(v6 - 144) = v4;
  v9 = (*(v2 + 8 * (v5 + 32811)))(v6 - 152);
  return (*(v2 + 8 * ((15303 * (*(v6 - 104) == -371865839)) ^ v5)))(v9);
}

uint64_t sub_1008527A4()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((v0 + 251185826) & 0xF107AB5E) - 26962) ^ v0)))();
}

uint64_t sub_100852814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v33 = ((2 * (v31 - 1155615438)) & 0xF6) + ((v31 - 1155615438) ^ 0x7CFF7EBFEEDFF77BLL);
  v35 = (4 * v33 + a27 + 0xC0205004480208CLL);
  if (v33 >= 0x7CFF7EBFEEDFF77BLL)
  {
    v35 = (4 * v33 + a28 + 0xC02050044802214);
  }

  v36 = *v35;
  v37 = v36 ^ 0xE81EE5F8;
  v38 = v36 ^ 0x2A804248;
  v39 = (v36 ^ 0xBC5DC921) + 1134704351;
  v40 = (7 * v31 + 28) & 0x1F;
  v41 = v37 + 400628232;
  v42 = *(v32 + 4 * v40);
  v43 = (2 * (v42 & 0xE5217D81)) & (v42 ^ 0xCD2F5B13) ^ v42 & 0xE5217D81 ^ ((2 * (v42 & 0xE5217D81)) & 0x8022202 | 0x80400);
  v44 = v39 ^ v41 ^ (v38 - 713048648);
  v45 = (2 * (v42 ^ 0xCD2F5B13)) & 0x280E2692 ^ 0x28022292 ^ ((2 * (v42 ^ 0xCD2F5B13)) ^ 0x501C4D24) & (v42 ^ 0xCD2F5B13);
  v46 = (4 * v43) & 0x280E2600 ^ v43 ^ ((4 * v43) ^ 0x201000) & v45;
  v47 = (4 * v45) & 0x280E2690 ^ 0x8062492 ^ ((4 * v45) ^ 0xA0389A48) & v45;
  v34 = *(v32 + 4 * ((((3 * v31 - 77) ^ (10 - 3 * v31) ^ (((v28 - 117) ^ 0x1A ^ (3 * v31 - 77)) + 21)) ^ ((((3 * v31 - 77) ^ 4) + 7) ^ (((3 * v31 - 77) ^ 0x10) + 19))) & 0x1F ^ 0x1Du));
  v48 = (v44 - 1795153737) * (v34 - 450790015) - 373076518 * v34;
  v49 = (16 * v47) & 0x280E2680 ^ 0x280C0692 ^ ((16 * v47) ^ 0x80E26920) & v47;
  v50 = (16 * v46) & 0x280E2690 ^ v46 ^ ((16 * v46) ^ 0x804000) & v47 ^ (((16 * v46) & 0x280E2690 ^ v46 ^ ((16 * v46) ^ 0x804000) & v47) << 8) & 0x280E2600 ^ ((((16 * v46) & 0x280E2690 ^ v46 ^ ((16 * v46) ^ 0x804000) & v47) << 8) ^ 0x8040000) & v49;
  v51 = (-2042045743 * v48 + 1413857786) ^ v42 ^ (2 * (((v50 ^ 0x20022292) << 16) & 0x280E0000 ^ v50 ^ 0x20022292 ^ (((v50 ^ 0x20022292) << 16) ^ 0x26920000) & ((v49 << 8) & 0x280E0000 ^ 0x20080000 ^ ((v49 << 8) ^ 0xE260000) & v49)));
  v52 = 1684637578 - v29 + 133 * ((v29 - 1684637578) / 0x85u);
  v53 = ((2 * ((3 * v31 + 828121115 + v52) % 0x85)) & 0x114) + (((3 * v31 + 828121115 + v52) % 0x85) ^ 0xB7DFF3ABD6AFA8ALL);
  v54 = v53 - 0xB7DFF3ABD6AFAECLL;
  *(v32 + 4 * v40) = (((v51 ^ 0x388C48FC) - 2064460878) ^ ((v51 ^ 0x5A30A671) - 431080131) ^ ((v51 ^ 0xD7B54154) + 1808521754)) + 291982826;
  v55 = (a28 + 4 * v53 - 0x2DF7FCEAF5ABEA28);
  if (v54 < 0xFFFFFFFFFFFFFF9ELL)
  {
    v55 = (a27 + 4 * v54);
  }

  *(v30 + 4 * ((a15 + 13 * v31) & 0x1F)) = *(v30 + 4 * ((a15 + 13 * v31) & 0x1F)) - 507501053 * (((((*v55 ^ 0x8E383C63) + 1908917149) ^ ((*v55 ^ 0xA233B640) + 1573669312) ^ ((*v55 ^ 0x52C8E4B2) - 1388897458)) - 191304787) * (v31 - 1155615438) - 1976925468 * v31) + 870219160;
  return (*(STACK[0x228] + 8 * ((120 * (v31 == 1155615469)) ^ v28)))(a14);
}

uint64_t sub_100852D5C(uint64_t a1, unint64_t a2)
{
  v7 = &STACK[0x2720] + STACK[0x1428];
  STACK[0x1428] += 64;
  STACK[0x1988] = a2;
  STACK[0x16F8] = v2;
  STACK[0x1348] = v3;
  (*(v6 + 8 * (v5 + 42029)))(*(&off_1010A0B50 + v5 - 9390) - 1268920906, v7, 48);
  v8 = (*(v6 + 8 * (v5 + 42029)))(*(&off_1010A0B50 + v5 - 8326) - 957476066, v7 + 48, 16);
  return (*(v6 + 8 * (v5 ^ (2 * (*v4 != ((v5 + 12428) ^ 0xE9D5D685) + v5 + 7896)))))(v8);
}

uint64_t sub_100852EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 - 232) = v8 + 139493411 * ((~(v9 - 232) & 0x8730D4B1 | (v9 - 232) & 0x78CF2B48) ^ 0x8B1D35F4) + 1942772334;
  v10 = (*(a8 + 8 * (v8 ^ 0x4313)))(v9 - 232);
  v11 = STACK[0x5A0];
  v12 = *(v9 - 228);
  v13 = *(&off_1010A0B50 + (v8 ^ 0x8D6C));
  v14 = *(&off_1010A0B50 + v8 - 30607);
  if (v12 == 184)
  {
    v15 = v13 - 1971739162;
  }

  else
  {
    v15 = v14 - 1980733851;
  }

  STACK[0x668] = v15;
  v16 = (v13 - 1971739138);
  v17 = (v14 - 1980733827);
  if (v12 != 184)
  {
    v16 = v17;
  }

  return (*(v11 + 8 * ((983 * (*v16 != (((v8 + 5) & 0x6B) - 26))) ^ v8)))(v10);
}

uint64_t sub_100853100()
{
  LODWORD(STACK[0x22E4]) = v0;
  v2 = *(STACK[0x19D8] + 32) + 2041879566;
  v3 = (v2 ^ 0xE50A53EC) & (2 * (v2 & 0x864B63ED)) ^ v2 & 0x864B63ED;
  v4 = ((2 * (v2 ^ 0xED9CD624)) ^ 0xD7AF6B92) & (v2 ^ 0xED9CD624) ^ (2 * (v2 ^ 0xED9CD624)) & 0x6BD7B5C8;
  v5 = v4 ^ 0x28509449;
  v6 = (v4 ^ 0x3070180) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0xAF5ED724) & v5 ^ (4 * v5) & 0x6BD7B5C8;
  v8 = (v7 ^ 0x2B569500) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x408120C9)) ^ 0xBD7B5C90) & (v7 ^ 0x408120C9) ^ (16 * (v7 ^ 0x408120C9)) & 0x6BD7B5C0;
  v10 = v8 ^ 0x6BD7B5C9 ^ (v9 ^ 0x29531400) & (v8 << 8);
  LODWORD(STACK[0x22E8]) = v2 ^ (2 * ((v10 << 16) & 0x6BD70000 ^ v10 ^ ((v10 << 16) ^ 0x35C90000) & (((v9 ^ 0x4284A149) << 8) & 0x6BD70000 ^ 0x28420000 ^ (((v9 ^ 0x4284A149) << 8) ^ 0x57B50000) & (v9 ^ 0x4284A149)))) ^ 0x581622BE;
  return (*(v1 + 41408))();
}

uint64_t sub_1008534E8()
{
  *(v2 - 256) = (1603510583 * (((v0 | 0xE16A6AA6) - v0 + (v0 & 0x1E959558)) ^ 0x76B1580D)) ^ 0x810B;
  v3 = (*(v1 + 416392))(v2 - 256);
  return (*(v1 + 148840))(v3);
}

uint64_t sub_100853594()
{
  v4 = *(v0 + 8 * (v1 ^ 0xD7605471 ^ (50496 * (v1 != 1293028692))));
  LODWORD(STACK[0x338]) = *(v3 - 152) ^ v2;
  return v4(7552, 229, 166, 2033457380, 99);
}

uint64_t sub_100853830@<X0>(uint64_t a1@<X0>, __int16 a2@<W8>)
{
  v9[142] = a1;
  LODWORD(STACK[0xB58]) = v5;
  LOWORD(STACK[0xB5E]) = a2;
  LODWORD(STACK[0xB60]) = v7;
  LODWORD(STACK[0xB64]) = v2;
  v9[219] = v4;
  v9[220] = v6;
  return (*(v8 + 8 * (((a1 == 0) * (((v3 - 14002) | 0x1E13) ^ ((v3 - 28602) | 0x8006) ^ 0xD770)) ^ v3)))();
}

void sub_10085389C(uint64_t a1)
{
  v1 = *a1 ^ (906386353 * ((-2 - ((a1 | 0x1D1DC099) + (~a1 | 0xE2E23F66))) ^ 0xD3E3F242));
  v5 = *(a1 + 16);
  v4 = *(&off_1010A0B50 + v1 - 27515) - v5 - 789498658 < 0x10 || *(&off_1010A0B50 + v1 - 28778) - v5 - 735347591 < 0x10 || *(&off_1010A0B50 + v1 - 25482) - v5 - 1805029281 < 0x10;
  __asm { BRAA            X15, X17 }
}

uint64_t sub_100856724()
{
  *(v2 - 256) = STACK[0xF00];
  *(v2 - 248) = 41540 - 1112314453 * (((v0 | 0x4C003F22) - (v0 | 0xB3FFC0DD) - 1275084579) ^ 0xA35615FB);
  v3 = (*(v1 + 417752))(v2 - 256);
  return (*(v1 + 107112))(v3);
}

uint64_t sub_1008568E8@<X0>(char a1@<W1>, int a2@<W2>, char a3@<W3>, char a4@<W4>, int a5@<W6>, char a6@<W7>, int a7@<W8>)
{
  v25 = (v8 + (v12 + v9 + v13 + a2));
  v26 = 2 * (((v13 ^ a3) - 65) ^ v13 ^ ((v13 ^ a4) - 91) ^ ((a7 ^ a1) + (v13 ^ a6)) ^ ((v13 ^ v15) + 50));
  v27 = ((v25 ^ *(*v23 + (*v24 & v17))) & 0x7FFFFFFF) * a5;
  v28 = (v27 ^ HIWORD(v27)) * a5;
  LODWORD(v28) = *(v20 + (v28 >> 24) + 2) ^ *(v21 + (v28 >> 24)) ^ *(v18 + (v28 >> 24) + 2) ^ v28 ^ ((v28 >> 24) * v16);
  *v25 = v28 ^ (v13 + ((((v28 ^ *v25 ^ 0xFD) - 19) ^ ((v28 ^ *v25 ^ 0x7C) + 110) ^ ((v28 ^ *v25 ^ 0x81) - 111)) + 110) * ((((v26 ^ v14) + 11) ^ ((v26 ^ 0xBF) + 48) ^ ((v26 ^ v19) + 95)) - 124) - 117);
  v29 = v13 + 1793932584 < v10;
  if (v10 < v11 != (v13 + 1793932584) < 0x775FD61C)
  {
    v29 = v10 < v11;
  }

  return (*(v22 + 8 * ((!v29 * v7) ^ a7)))();
}

void sub_100856A4C(uint64_t a1)
{
  v1 = *(a1 + 32) ^ (139493411 * ((-2 - ((a1 | 0x2E499FEF) + (~a1 | 0xD1B66010))) ^ 0xDD9B8155));
  __asm { BRAA            X11, X17 }
}

void sub_100856B64(uint64_t a1)
{
  v1 = *(a1 + 16) ^ (353670337 * (a1 ^ 0xB421F83D));
  __asm { BRAA            X11, X17 }
}

uint64_t sub_100856C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v18 - 136) = a14;
  *(v18 - 128) = (v17 + 19839) ^ (155453101 * ((((v18 - 136) | 0xD4B3603E) - ((v18 - 136) & 0xD4B36038)) ^ 0x32957BF1));
  *(v18 - 120) = &a15;
  (*(v16 + 8 * (v17 ^ 0xBD32)))(v18 - 136);
  v19 = 139493411 * ((((2 * (v18 - 136)) | 0xE7F63AA) - (v18 - 136) + 2025868843) ^ 0x8B125090);
  *(v18 - 136) = v15;
  *(v18 - 128) = 605832299 - v19;
  *(v18 - 124) = (v17 - 20542) ^ v19;
  (*(v16 + 8 * (v17 + 21245)))(v18 - 136);
  *(v18 - 136) = v17 - 1603510583 * ((v18 - 136) ^ 0x97DB32AB) - 4907;
  *(v18 - 112) = a14;
  *(v18 - 128) = v15;
  v20 = (*(v16 + 8 * (v17 + 21175)))(v18 - 136);
  return (*(v16 + 8 * ((((*(v18 - 120) - 989321124) < 0xF21A8535) * (((v17 - 624535724) & 0x253975FD ^ 0xFFFFA4E9) + ((v17 - 1076119596) & 0x4023FE75))) ^ v17)))(v20);
}

uint64_t sub_100856ED8(uint64_t a1)
{
  v1 = 297845113 * ((~a1 & 0xCCAF549C | a1 & 0x3350AB63) ^ 0xBB9C4802);
  v2 = *(a1 + 12) + v1;
  return (*(*(&off_1010A0B50 + (v2 & 0xBB1E8C48)) + 8 * ((((((*(a1 + 8) ^ v1 ^ 0x972368B6) + 1759287114) ^ ((*(a1 + 8) ^ v1 ^ 0x45355F91) - 1161125777) ^ ((*(a1 + 8) ^ v1 ^ 0x3BC3F036) - 1002696758)) + 1775617809 < 0x80000064) * ((v2 + 37683) ^ 0xCC50)) ^ v2) - 810145054))();
}

uint64_t sub_100856FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *STACK[0x5E8];
  STACK[0x8A0] = 0;
  STACK[0xAA0] = 0x7A3CF6DAFA773418;
  return (*(a8 + 8 * (((v9 != 0) * (v8 - 41291)) ^ (v8 + 4876))))();
}

uint64_t sub_100857020()
{
  v4 = STACK[0x448];
  v5 = STACK[0xF90];
  STACK[0x1080] = STACK[0xF90];
  v6 = 634647737 * ((((2 * v1) | 0x69896E9E) - v1 + 1262176433) ^ 0xD95298B3);
  *(v3 - 248) = v5;
  *(v3 - 240) = v4 - v6 + 18716;
  *(v3 - 256) = v6 - 1431125376;
  v7 = (*(v2 + 8 * (v4 ^ 0xC3DA)))(v3 - 256);
  LODWORD(STACK[0xE18]) = (((v0 ^ 0x129D127C) + 1492531101) ^ ((v0 ^ 0x81E59A4B) - 879837268) ^ (((302 * (v4 ^ 0x8FE)) ^ 0x8F43C732) + (v0 ^ 0xC528C973))) + 509680030;
  STACK[0x18E8] = *(v2 + 8 * v4);
  return (*(v2 + 8 * (v4 ^ 0x43CB)))(v7);
}

uint64_t sub_100857148(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  LOBYTE(STACK[0x414]) = HIBYTE(a3) ^ 0x65;
  LOBYTE(STACK[0x415]) = (a3 >> (v10 - 82)) ^ 0x87;
  LOBYTE(STACK[0x416]) = (a3 >> (((v10 - 83) & 0xFCu) - 4)) ^ 0x9B;
  LOBYTE(STACK[0x417]) = BYTE4(a3) ^ 0x21;
  LOBYTE(STACK[0x418]) = BYTE3(a3) ^ 0xC5;
  LOBYTE(STACK[0x419]) = BYTE2(a3) ^ 0xA0;
  LOBYTE(STACK[0x41A]) = BYTE1(a3) ^ 0x22;
  LOBYTE(STACK[0x41B]) = a3 ^ 0x1D;
  v12 = (((*v9 ^ 0x59EAE95A) - 1508567386) ^ ((*v9 ^ 0xD7EFBC97) + 672154473) ^ ((*v9 ^ 0x67D092DC) - 1741722332)) + 834617747;
  v13 = *(v11 + 8 * (v10 ^ 0x47E9133C ^ (114 * ((((v12 - v10) | (v10 - v12)) & 0x80000000) == 0))));
  return v13(v13, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_100857308@<X0>(int a1@<W8>, int8x16_t a2@<Q0>, int8x16_t a3@<Q1>)
{
  v6 = *(v4 + 4 * ((a1 + 11046) + v3) - 184148);
  v7 = v4 + 4 * v3;
  v8 = v3 + 4;
  a3.i32[0] = v6;
  a3.i32[1] = *(v7 + 8);
  a3.i32[2] = *(v7 + 12);
  v9.i64[0] = 0x8000000080000000;
  v9.i64[1] = 0x8000000080000000;
  v10 = vextq_s8(a2, a3, 0xCuLL);
  v11.i64[0] = 0x100000001;
  v11.i64[1] = 0x100000001;
  a3.i32[3] = *(v4 + 4 * v8);
  v12 = vandq_s8(v10, v9);
  v9.i32[0] = *(&STACK[0x2708] + (v6 & 1));
  v9.i32[1] = *(&STACK[0x2708] + (a3.i8[4] & 1));
  v9.i32[2] = *(&STACK[0x2708] + (a3.i8[8] & 1));
  v9.i32[3] = *(&STACK[0x2708] + (a3.i8[12] & 1));
  *v7 = veorq_s8(veorq_s8(veorq_s8(*(v7 + 1588), v9), vdupq_n_s32(0x4C3BF956u)), vshrq_n_u32(vorrq_s8(vandq_s8(a3, vnegq_f32(v11)), v12), 1uLL));
  return (*(v5 + 8 * ((15206 * (v8 == 224)) ^ a1)))(a3);
}

uint64_t sub_1008573E8()
{
  *STACK[0x1C00] = 0;
  LODWORD(STACK[0x884]) = v0 & 0xC011 ^ 0x5B5B0805;
  return (*(v2 + 8 * (((*(STACK[0x1F80] + 4) < ((v1 - 43) ^ 0xF1u)) * (v1 + 36276)) ^ v1)))();
}

void sub_1008575D8(uint64_t a1)
{
  v1 = *(a1 + 16) ^ (1603510583 * ((2 * (a1 & 0x283AB235) - a1 + 1472548298) ^ 0xC01E7F61));
  __asm { BRAA            X11, X17 }
}

uint64_t sub_100857744()
{
  v3 = *STACK[0x948] > ((((v0 - 280004948) & 0x10B0A3F9) + 1650470713) ^ v0 ^ 0x62605620u);
  if (*STACK[0x948] <= ((((v0 - 280004948) & 0x10B0A3F9) + 1650470713) ^ v0 ^ 0x62605620u))
  {
    v4 = 371891407;
  }

  else
  {
    v4 = v1;
  }

  LODWORD(STACK[0x243C]) = v4;
  return (*(v2 + 8 * (v0 | (4 * v3))))();
}

uint64_t sub_1008577C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, unint64_t a26, unint64_t a27, unint64_t a28, unint64_t a29, unint64_t a30, unint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, unint64_t a50, uint64_t a51, uint64_t a52, unint64_t a53, unint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, unint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = STACK[0x2BC];
  STACK[0x4C0] = STACK[0x228];
  STACK[0x418] = a68;
  STACK[0x3E8] = a67;
  STACK[0x4E0] = a27;
  STACK[0x420] = a30;
  STACK[0x368] = a31;
  STACK[0x440] = a60;
  STACK[0x400] = a29;
  STACK[0x3A8] = a28;
  STACK[0x470] = a26;
  STACK[0x390] = a50;
  STACK[0x428] = STACK[0x218];
  STACK[0x318] = STACK[0x220];
  STACK[0x4D0] = a53;
  STACK[0x3C0] = a54;
  return (*(v68 + 8 * (v69 - 14062)))();
}

uint64_t sub_100857898@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *v66 = v67;
  v69 = *(a1 + 8);
  v70 = v69 - 0x3CE25E0EC5200378;
  if (v69 - 0x3CE25E0EC5200378 < 0)
  {
    v70 = v69 - 0x3CE25E0EC5200375;
  }

  v71 = (*(&a65 + ((((v65 + 747969633) ^ 0x2C9547EFu) + 3) & a65)) % (((v70 >> 2) - ((v70 >> 2 << (((v65 + 97) & 0x5Cu) - 75)) & 0xAF2E4392) - 677961271) ^ 0xD79721C9) + 43) & 0x1FC;
  v72 = ((v69 ^ 0x96352954) - 1393895980) ^ v69 ^ ((v69 ^ 0xC746086C) - 40241940) ^ ((v69 ^ 0x690CC1BB) + 1406352701) ^ ((v69 ^ 0xFD5FE3FB) - 947904643);
  return (*(v68 + 8 * ((1628 * ((((v72 ^ 0x9F747286) - 716527165) ^ ((v72 ^ 0xE2793BE3) - 1471684440) ^ ((v72 ^ 0xB82D4A1D) - 233598630)) - (((v71 ^ 0xC6307F1F) - 227824635) ^ ((v71 ^ 0x3CC02871) + 144440171) ^ ((v71 ^ 0xFAF0576E) - 827620234)) - 1522730298 < 0x7FFFFFFF)) ^ v65)))();
}

uint64_t sub_100857AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int *a8)
{
  STACK[0x10A0] = *(*(v8 + 160) + 40) + (*(*v11 + (*a8 & 0xFFFFFFFFF1F71F20)) & 0x7FFFFFFFFFFFFFFFLL ^ 0xCD60E52FFB9405D6) + (*(*v11 + (*a8 & (v9 + 1459740265))) & 0x7FFFFFFFFFFFFFFFLL ^ 0x42A5FD9F28528BCALL) + 1;
  STACK[0x1708] = *(v10 + 8 * v9);
  return (*(v10 + 8 * (v9 + 5864)))();
}

uint64_t sub_100857BC4()
{
  STACK[0x1CA8] = v1;
  LODWORD(STACK[0xBBC]) = 1465878605;
  LODWORD(STACK[0x1658]) = -797218559;
  return (*(v2 + 8 * v0))();
}

uint64_t sub_100857BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v53 = (v50 + (a41 - 138701521));
  v54 = *(*(a46 - 1680276466) + (*(a47 - 231415367) & 0x485EFA78)) + v53;
  v55 = (((v48 ^ a1) >> a9) + ~((((v47 + v51) & v52) - 49965) & (2 * ((v48 ^ a1) >> a9))) + 20) ^ (-100 * v53) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + ((v54 + 1214184058) & (qword_1010C0540 ^ 0x7226FCCC))) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + ((v54 + 1214184060) & (qword_1010C0540 ^ 0x7226FCCC)));
  *v53 = v55 ^ 0xF5;
  return (*(v49 + 8 * ((51688 * (a41 - (v55 != 245) == 138701520)) ^ v47)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_100857D80()
{
  v3 = ((((v2 - 10516) | 0x1003u) ^ 0x862DAA35161D7C30) + (v1 ^ 0x79D255CAE9E29305)) ^ ((v1 ^ 0x7A0EA58C5D05DDAALL) - 0x7A0EA58C5D05DDAALL) ^ (((((v2 + 337057251) & 0xEBE8C4F4) + 0x3DCF0465D32850ALL) ^ v1) - 0x3DCF0465D3289BELL);
  STACK[0xA78] = v3 + 0xB90BD801A343887;
  STACK[0xA80] = v0;
  return (*(STACK[0x3A8] + 8 * ((49416 * (v3 - v0 + 3923101447u < 0xFFFFFFFFFFFFFFF6)) ^ (v2 + 12528))))();
}

void sub_100857ED4()
{
  v0 = *(&off_1010A0B50 + ((91 * (dword_1010BF018 ^ qword_1010BEAD8 ^ 0x76)) ^ byte_100E9BFE0[byte_100D70240[(91 * (dword_1010BF018 ^ qword_1010BEAD8 ^ 0x76))] ^ 0x5B]) + 116);
  v1 = *(v0 - 1578101830);
  v2 = *(&off_1010A0B50 + (byte_101032440[byte_100F52120[(91 * ((qword_1010BEAD8 + v1) ^ 0x76))] ^ 0x30] ^ (91 * ((qword_1010BEAD8 + v1) ^ 0x76))) + 710);
  v3 = *(v2 - 513219118) - v1 - &v7;
  v4 = 952459099 * v3 + 0x2237216A27478FF2;
  v5 = 952459099 * (v3 ^ 0xFE584BA7F0179476);
  *(v0 - 1578101830) = v4;
  *(v2 - 513219118) = v5;
  LOBYTE(v5) = 91 * ((v5 + *(v0 - 1578101830)) ^ 0x76);
  v9 = *(&off_1010A0B50 + (v5 ^ byte_101032440[byte_100F52120[v5] ^ 0xF2]) + 1708) - 1840193783;
  v8 = (634647737 * (&v8 ^ 0x6D962FFC)) ^ 0xBD92;
  LOBYTE(v0) = 91 * ((*(v2 - 513219118) - *(v0 - 1578101830)) ^ 0x76);
  v6 = *(&off_1010A0B50 + ((91 * (dword_1010BF018 ^ qword_1010BEAD8 ^ 0x76)) ^ byte_100F52020[byte_100E9BEE0[(91 * (dword_1010BF018 ^ qword_1010BEAD8 ^ 0x76))] ^ 0x50]) + 919) - 810145054;
  (*&v6[8 * (byte_100F52020[byte_100E9BEE0[v0] ^ 0x2B] ^ v0) + 414776])(&v8);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100858174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, __int16 a13, char a14, __int16 a15, char a16, __int16 a17, char a18, __int16 a19, char a20, __int16 a21, char a22, __int16 a23, char a24, __int16 a25, char a26, __int16 a27, char a28, __int16 a29, char a30, __int16 a31, char a32, __int16 a33, char a34, __int16 a35, char a36, __int16 a37, char a38, __int16 a39, char a40, uint64_t a41, _BYTE *a42)
{
  v43 = LODWORD(STACK[0x270]) + 1277;
  a42[12] = a24 - ((2 * a24) & 0xBF) + ((LOBYTE(STACK[0x270]) + 84) & 0x81) + 94;
  a42[3] = a28 - ((2 * a28) & 0xBF) + 95;
  a42[10] = a26 - ((2 * a26) & 0xBF) + 95;
  a42[4] = a10 - ((2 * a10) & 0xBF) + 95;
  a42[15] = a30 - ((2 * a30) & 0xBF) + 95;
  a42[13] = a12 - ((2 * a12) & 0xBF) + 95;
  a42[9] = a32 - ((2 * a32) & 0xBF) + 95;
  a42[7] = a16 - ((2 * a16) & 0xBF) + 95;
  a42[2] = a14 + (~(2 * a14) | 0x41) + 96;
  a42[8] = a18 - ((2 * a18) & 0xBF) + 95;
  a42[6] = a34 - ((2 * a34) & 0xBF) + 95;
  a42[1] = a40 - ((2 * a40) & 0xBF) + 95;
  a42[11] = a38 - ((2 * a38) & 0xBF) + 95;
  *a42 = a36 ^ 0x5F;
  a42[5] = a20 - ((2 * a20) & 0xBF) + 95;
  a42[14] = a22 - ((2 * a22) & 0xBF) + 95;
  return (*(v42 + 8 * v43))();
}

uint64_t sub_100858448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x8E8] = v8;
  LODWORD(STACK[0x848]) = 348641051;
  STACK[0x708] = &STACK[0x628];
  LODWORD(STACK[0x61C]) = 1600128912;
  return (*(a8 + 8 * v9))();
}

uint64_t sub_100858558(uint64_t result)
{
  v1 = *result ^ (297845113 * ((result - 2 * (result & 0x39373877) - 1187563401) ^ 0xCE0424E9));
  v2 = *(result + 8);
  *v2 = HIBYTE(v1) ^ 0x37;
  v2[1] = BYTE2(v1) ^ 0x86;
  v2[2] = BYTE1(v1) ^ 0x93;
  v2[3] = v1 ^ 0xE6;
  return result;
}

void sub_100858628(uint64_t a1)
{
  v1 = 1112314453 * ((~a1 & 0xB42428D5 | a1 & 0x4BDBD72A) ^ 0x5B72020C);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_100858754@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v3 = ((2 * a2) & 0x1FFFDDFDELL) + 0x37F6FF5DFFCB765BLL + ((((v2 - 1647973840) & 0x62397DFF) - 0x32528B04000119EFLL) ^ a2);
  STACK[0xC68] = v3;
  v4 = STACK[0x9B0];
  STACK[0xC70] = STACK[0x9B0];
  return (*(a1 + 8 * ((12980 * (v3 - v4 + 0x55242BAEEA023871 < ((5 * ((v2 - 35087) ^ 0x38C9u)) ^ 0xFFFFFFFFFFFF5E58))) ^ (v2 - 35087))))();
}

uint64_t sub_1008588C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  *(v31 - 144) = v30;
  *(v31 - 128) = v30;
  *(v31 - 120) = &a26;
  *(v31 - 112) = v29;
  *(v31 - 104) = v27;
  *(v31 - 136) = v28 + 1112314453 * ((2 * ((v31 - 144) & 0x36005618) - (v31 - 144) - 905991711) ^ 0x26A98338) + 13830;
  v32 = (*(v26 + 8 * (v28 + 30625)))(v31 - 144);
  return (*(v26 + 8 * v28))(v32);
}

uint64_t sub_100858954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x590] = v10[33] + 24;
  v11 = SLOWORD(STACK[0xC9E]);
  LODWORD(STACK[0x540]) = v11;
  LODWORD(STACK[0x520]) = v11 ^ 0x387C;
  LODWORD(STACK[0x3D0]) = LODWORD(STACK[0xCA4]) ^ 0x780B3361;
  STACK[0x580] = v10[146] + 24;
  v12 = SLOWORD(STACK[0xCD6]);
  LODWORD(STACK[0x530]) = v12;
  LODWORD(STACK[0x510]) = v12 ^ 0x7374;
  LODWORD(STACK[0x3C0]) = LODWORD(STACK[0xCDC]) ^ 0x780B3361;
  STACK[0x570] = v10[2] + 24;
  STACK[0x560] = v10[80] + 24;
  STACK[0x550] = v10[118] + 24;
  v13 = STACK[0x9C4];
  v14 = STACK[0x9C4] & 0x9121D166;
  v15 = (LODWORD(STACK[0x9C4]) ^ 0x102D8D64) & (2 * v14);
  v16 = STACK[0xCA0];
  LODWORD(STACK[0x3F0]) = STACK[0xCA0];
  LODWORD(STACK[0x500]) = v16 ^ 0x780B3361;
  v17 = STACK[0xCD8];
  LODWORD(STACK[0x3E0]) = STACK[0xCD8];
  LODWORD(STACK[0x4F0]) = v17 ^ 0x780B3361;
  LODWORD(STACK[0x4E0]) = LODWORD(STACK[0x8DC]) ^ 0x780B3361;
  v18 = v15 ^ v14;
  v19 = ((2 * (v13 ^ 0x322E2FEC)) ^ 0x461FFD14) & (v13 ^ 0x322E2FEC) ^ (2 * (v13 ^ 0x322E2FEC)) & 0xA30FFE8A;
  v20 = v19 ^ 0xA100028A;
  v21 = (v19 ^ 0x7FFC00) & (4 * v18) ^ v18;
  v22 = ((4 * v20) ^ 0x8C3FFA28) & v20 ^ (4 * v20) & 0xA30FFE88;
  v23 = (v22 ^ 0x800FFA00) & (16 * v21) ^ v21;
  v24 = ((16 * (v22 ^ 0x23000482)) ^ 0x30FFE8A0) & (v22 ^ 0x23000482) ^ (16 * (v22 ^ 0x23000482)) & 0xA30FFE80;
  v25 = v23 ^ 0xA30FFE8A ^ (v24 ^ 0x200FE800) & (v23 << 8);
  LODWORD(STACK[0x4C0]) = v13 ^ (2 * ((v25 << 16) & 0x230F0000 ^ v25 ^ ((v25 << 16) ^ 0x7E8A0000) & (((v24 ^ 0x8300160A) << 8) & 0x230F0000 ^ 0x20010000 ^ (((v24 ^ 0x8300160A) << 8) ^ 0xFFE0000) & (v24 ^ 0x8300160A)))) ^ 0x2F4D802;
  v26 = *(a8 + 8 * (v9 - 27798));
  LODWORD(STACK[0x4B0]) = v8 - 15019;
  v27 = (v8 - 40141) | 0x5208;
  v28 = (v8 - 24620) | 0x1A3D;
  LODWORD(STACK[0x4A0]) = v8 - 21286;
  LODWORD(STACK[0x410]) = v28;
  LODWORD(STACK[0x490]) = v28 ^ 0xE3F4;
  LODWORD(STACK[0x3B0]) = v27;
  LODWORD(STACK[0x480]) = v27 - 22212;
  LODWORD(STACK[0x470]) = v8 - 1100283225;
  v29 = (v8 - 8563) | 0x4700;
  v30 = (v8 - 38828) | 0x3080;
  LODWORD(STACK[0x460]) = v8 - 13880;
  LODWORD(STACK[0x400]) = v29;
  LODWORD(STACK[0x450]) = v29 + 11272;
  LODWORD(STACK[0x3A0]) = v30;
  LODWORD(STACK[0x440]) = v30 ^ 0x3A6D;
  LODWORD(STACK[0x430]) = v8 - 29760;
  LODWORD(STACK[0x420]) = v8 - 32584;
  return v26(a8);
}

uint64_t sub_100858D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *v8;
  *(v10 + 1120) = *v8;
  return (*(a8 + 8 * (((v11 == 0) * ((((v9 - 41131) | 0x8D0) ^ 0xFFFFE125) + (v9 ^ 0xB6BB))) ^ (v9 - 5116))))();
}

uint64_t sub_100858DC0()
{
  v2 = (*(v1 + 8 * (v0 + 30738)))();
  STACK[0x7E0] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_100858DF8@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v8 = *(v4 + 120);
  v9 = 587190391 * *(v4 + 100) + 756466424;
  v10 = 1603510583 * ((((v6 - 232) | 0x6B86E089) + (~(v6 - 232) | 0x94791F76)) ^ 0xFC5DD223);
  v7[260] = v2;
  v7[264] = v2;
  v7[263] = v4 + 104;
  v7[266] = a2;
  *(v6 - 208) = (v5 + 19672) ^ v10;
  *(v6 - 204) = v9 ^ v10;
  *(v6 - 184) = (v3 ^ 0x51E0DCA8) - v10;
  *(v6 - 216) = v10 + (v8 ^ 0xF2CFE737) + 1073641951 + ((v8 << (((v5 + 64) | 0x31) - 112)) & 0xE59FCE6E);
  *(v6 - 212) = v10 ^ 0x371D40F8;
  v11 = (*(a1 + 8 * (v5 ^ 0xE7C3)))(v6 - 232);
  return (*(STACK[0x5A0] + 8 * v5))(v11);
}

uint64_t sub_1008591E4()
{
  v3 = v0[1];
  v4 = (((*v0 ^ 0xFECBB2AA) + (((v1 - 1650508882) | 0x1012) ^ 0x1345144)) ^ ((*v0 ^ 0x9DECF2DA) + 1645415718) ^ ((*v0 ^ 0x8AF28761) + 1963817119)) + 1502551794;
  v5 = v4 < 0x6FB957E1;
  v6 = v4 > v3 + 1874417633;
  if (v3 > 0x9046A81E != v5)
  {
    v6 = v5;
  }

  return (*(v2 + 8 * ((9617 * v6) ^ (v1 - 1650487861))))();
}

uint64_t sub_1008592C0@<X0>(int a1@<W8>)
{
  v3 = a1 - 14463;
  v4 = (a1 - 8025) | 0x510u;
  v5 = (*(v2 + 8 * (a1 + 31191)))(v1);
  v6 = ((2 * v5) & 0xF6BC6957F3F9B5BELL) + (v5 ^ 0xFB5E34ABF9FCDADFLL) + (v4 ^ 0x6CAFEFFFFFC30846) == 0x680E24ABF9C01A57;
  return (*(v2 + 8 * (((2 * v6) | (4 * v6)) ^ v3)))();
}

uint64_t sub_10085943C(uint64_t result)
{
  if ((*(result + 4) - 35 * ((((2 * result) | 0x74) - result - 58) ^ 0x7F) - 103) >= 3u)
  {
    v1 = 371892094;
  }

  else
  {
    v1 = -371865839;
  }

  *(result + 8) = v1;
  return result;
}

void sub_100859484(uint64_t a1)
{
  v1 = *a1 - 1603510583 * ((2 * (a1 & 0x4510BC4E) - a1 + 988758961) ^ 0xAD34711A);
  v2 = *(&off_1010A0B50 + v1 - 26117) - 810145054;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  (*&v2[8 * v1 + 197600])(*(&off_1010A0B50 + v1 - 24280) - 526741643, v8, 16);
  (*&v2[8 * (v1 ^ 0xA084)])(*(&off_1010A0B50 + (v1 ^ 0x66C6)) - 2084236995, &v9, 16);
  (*&v2[8 * (v1 ^ 0xA084)])(*(&off_1010A0B50 + (v1 ^ 0x60E9)) - 441953106, &v7, 560);
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100859650()
{
  v4 = ((v0 - 2147483523) << ((v0 ^ 0x85) + 25)) + v0;
  STACK[0x1308] = *(v3 + 8 * v1);
  return (*(v3 + 8 * (v0 ^ 0xFFFF7AD6 ^ (14 * ((((v4 | ~(v2 - 0x26F1CF3A112E0E30)) & (v2 - 0x26F1CF3A112E0E30 - v4) | v4 & ~(v2 - 0x26F1CF3A112E0E30)) & 0x8000000000000000) == 0)))))();
}

uint64_t sub_100859834@<X0>(int a1@<W1>, int a2@<W5>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v17 = v5 - 1;
  v18 = (((a1 + v10) ^ v14) & (2 * v17)) + (v17 ^ v11);
  v19 = v18 + v4;
  v20 = (v6 + v18);
  v21 = ((v20 ^ *(*v16 + (*v7 & v12))) & 0x7FFFFFFF) * a2;
  v22 = (v21 ^ HIWORD(v21)) * a2;
  *v20 = *(a4 + (v22 >> 24)) ^ *(v19 + a3) ^ *(v8 + (v22 >> 24) + 1) ^ *(v13 + (v22 >> 24) + 1) ^ v22 ^ (BYTE3(v22) * v9);
  return (*(v15 + 8 * ((14 * (v17 == 0)) ^ a1)))();
}

uint64_t sub_10085992C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v79 = a1 - 1;
  v77 = ((v63 ^ a3) + a4) ^ v63 ^ ((v63 ^ a5) + a6) ^ ((v63 ^ a7) + a8) ^ (((v64 + v66) ^ v63) + v67);
  *(v65 + v79) = ((((v77 ^ v68) + v69) ^ ((v77 ^ v70) + v71) ^ ((v77 ^ v72) + v73)) + v74) * (v63 + v75) - v63 + 32 * v63 + v76;
  return (*(a9 + 8 * (((((v79 - v64) | (v64 - v79)) >> 63) * a2) ^ (v64 + v62))))(a1 - 1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_100859A6C()
{
  v4 = STACK[0x14D0];
  LOWORD(STACK[0x2F48]) = 23473 * (((~(v3 - 256) | 0xF316) + ((v3 - 256) | 0xCE9)) ^ 0xC1CC) + 18111;
  *(v3 - 240) = v4;
  *(v3 - 256) = (v1 - 30651) ^ (906386353 * (((~(v3 - 256) | 0x70E9F316) + ((v3 - 256) | 0x8F160CE9)) ^ 0xBE17C1CC));
  v5 = (*(v2 + 8 * (v1 + 8145)))(v3 - 256);
  LODWORD(STACK[0x7A0]) = v0;
  return (*(v2 + 8 * ((7 * (v0 != (((v1 ^ 0x8102) + 4381) ^ (v1 - 28129)))) | v1)))(v5, 40676, 0x7F6BFFDBFFFBBDEFLL, 0x1FFF77BDELL, 0x8094002400044211);
}

uint64_t sub_100859C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49)
{
  v50 = ((LODWORD(STACK[0x6B8]) ^ 0xAFF50EF1) + 1342894351) ^ ((LODWORD(STACK[0x6B8]) ^ 0x6E0D32E8) - 1846358760) ^ ((LODWORD(STACK[0x6B8]) ^ 0x282DFB08) - 674102024);
  STACK[0x3D0] = (v49 + 3876);
  v51 = v49 + 1531050975 + v50;
  LODWORD(STACK[0x388]) = v51;
  return (*(STACK[0x430] + 8 * ((4 * (v51 != 1902939078)) | (16 * (v51 != 1902939078)) | a49)))(0x3FCAB02F19C82EECLL, 2282225696, 0xB0EDB59CB087C371, 0x3CB71C68F65B873ELL, 0x57BF034D34AB7900, 0x5809225600000000, 0x55A1114B00000000, STACK[0x250]);
}

uint64_t sub_100859FDC()
{
  v2 = STACK[0x1548];
  STACK[0x798] = STACK[0x1548] - 0x3ED6D7FADA5C7EE6;
  STACK[0x7A0] = v2;
  STACK[0x768] = v2 + 1406040458;
  STACK[0x760] = ((v0 - 25608) | 0xB013u) ^ 0x7FFFFFFFAC313722;
  STACK[0x790] = STACK[0x1F08];
  STACK[0x788] = STACK[0xA80];
  STACK[0x780] = STACK[0xDD0];
  STACK[0x778] = STACK[0xED8];
  STACK[0x770] = STACK[0xC20];
  STACK[0x7E0] = STACK[0x1370];
  return (*(v1 + 8 * v0))();
}

uint64_t sub_10085A06C()
{
  v2 = (((*(v0 + 96) ^ 0xCE7904A1) + 830929759) ^ ((*(v0 + 96) ^ 0x5230121D) - 1378882077) ^ ((*(v0 + 96) ^ 0x759CD1AD) - 1973211565)) + 1375894484;
  LODWORD(STACK[0xCCC]) = v2 ^ ((v2 ^ 0x9F2BAA7F) + 150528312) ^ ((v2 ^ 0x8A9C0096) + 491736031) ^ ((v2 ^ 0x4A65E1E9) - 575231326) ^ ((v2 ^ 0x37FEFFB7) - 1607617280) ^ 0x81F973A6;
  return (*(v1 + 270608))();
}

uint64_t sub_10085A234()
{
  v2 = (*(v1 + 8 * (v0 + 8858)))(64);
  STACK[0x15D8] = v2 + 0x217E172EFA1E81CLL;
  return (*(v1 + 8 * (((((v0 - 1) ^ (v2 == 0)) & 1) * (((v0 - 41978) | 0x1860) ^ 0x13C0)) ^ v0)))();
}

uint64_t sub_10085A348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v76 = ((v74 ^ 0xD68C6288) - 330064368) ^ v74 ^ ((v74 ^ 0xE5CA3B9F) - 552220903) ^ ((v74 ^ 0x992C412) + 860698774) ^ ((v74 ^ 0xFFF49E7D) - 987012357);
  v77 = ((v76 ^ 0x4A8DAAB3) - 2057186135) ^ ((v76 ^ 0x60A29C40) - 1353784740) ^ ((v76 ^ 0xEF0F358B) + 551766929);
  v78 = ((((a73 ^ 0x4927DB3B) + (v73 ^ 0xB6D84C70)) ^ ((a73 ^ 0x847ACFB9) + 2072326215) ^ (((v73 + 1370291008) & 0xAE52BCDF ^ a73 ^ 0xCD5D34E7) + 849537998)) + 176) % (181173580 - v77);
  v79 = (v78 ^ 0x9D37FFFE) + 2079997244 + ((2 * v78) & 0x3A6FFFFC) + v77;
  v80 = 917045641 - v79;
  if (v79 - 603896204 >= 0xFB)
  {
    v80 = 313149437;
  }

  v82 = v74 != 0x3CE25E0EC520035FLL && v80 != 313149187;
  return (*(v75 + 8 * ((440 * v82) ^ v73)))();
}

uint64_t sub_10085A584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, int a11, int a12, uint64_t a13, uint64_t a14, int a15, int a16, int a17, int a18, int a19, int a20, uint64_t a21, int a22, int a23, uint64_t a24, int a25, int a26, uint64_t a27, void *a28, int a29, int a30, int a31, int a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, int a60, char a61)
{
  a13 = v63;
  a14 = a1;
  v66 = v62 ^ 0x3A8798D;
  v67 = a28[4];
  v68 = 0xFE94C1B7DA1F12CFLL * (a28[8] ^ v63) - 0x6829AD1C9F8877B8;
  v69 = (v68 ^ (((v66 + 665342068) & 0xD857FFEF) + 0x2FDCBE3043F5E659)) & (2 * (v68 & 0x8F1E3CB46BF752BCLL)) ^ v68 & 0x8F1E3CB46BF752BCLL;
  v70 = ((2 * (v68 ^ 0x2DD89E58529AC615)) ^ 0x458D45D872DB2952) & (v68 ^ 0x2DD89E58529AC615) ^ (2 * (v68 ^ 0x2DD89E58529AC615)) & 0xA2C6A2EC396D94A8;
  v71 = v70 ^ 0xA242A224092494A9;
  v72 = (v70 ^ 0x8000C030490000) & (4 * v69) ^ v69;
  v73 = ((4 * v71) ^ 0x8B1A8BB0E5B652A4) & v71 ^ (4 * v71) & 0xA2C6A2EC396D94A8;
  v74 = (v73 ^ 0x820282A0212410A0) & (16 * v72) ^ v72;
  v75 = ((16 * (v73 ^ 0x20C4204C18498409)) ^ 0x2C6A2EC396D94A90) & (v73 ^ 0x20C4204C18498409) ^ (16 * (v73 ^ 0x20C4204C18498409)) & 0xA2C6A2EC396D9480;
  v76 = (v75 ^ 0x204222C010490000) & (v74 << 8) ^ v74;
  v77 = (((v75 ^ 0x8284802C29249429) << 8) ^ 0xC6A2EC396D94A900) & (v75 ^ 0x8284802C29249429) ^ ((v75 ^ 0x8284802C29249429) << 8) & 0xA2C6A2EC396D9000;
  v78 = v76 ^ 0xA2C6A2EC396D94A9 ^ (v77 ^ 0x8282A02829040000) & (v76 << 16);
  v79 = v68 ^ (2 * ((v78 << 32) & 0x22C6A2EC00000000 ^ v78 ^ ((v78 << 32) ^ 0x396D94A900000000) & (((v77 ^ 0x204402C4106914A9) << 16) & 0x22C6A2EC00000000 ^ 0x2828000000000 ^ (((v77 ^ 0x204402C4106914A9) << 16) ^ 0x22EC396D00000000) & (v77 ^ 0x204402C4106914A9)))) ^ 0xF4281711F86015D3;
  v80 = 0xEA900DA595A0CE39 * (a28[5] + v63) - 0x29437ABAB5F4FB2ALL;
  v81 = (v80 ^ 0x3C64B20ED230D84BLL) & (2 * (v80 & 0xBD74A30E98BAD953)) ^ v80 & 0xBD74A30E98BAD953;
  v82 = ((2 * (v80 ^ 0x6E05F203D2706A6DLL)) ^ 0xA6E2A21A9595667CLL) & (v80 ^ 0x6E05F203D2706A6DLL) ^ (2 * (v80 ^ 0x6E05F203D2706A6DLL)) & 0xD371510D4ACAB33ELL;
  v83 = v82 ^ 0x511151054A4A9102;
  v84 = (v82 ^ 0x826000080080221CLL) & (4 * v81) ^ v81;
  v85 = ((4 * v83) ^ 0x4DC544352B2ACCF8) & v83 ^ (4 * v83) & 0xD371510D4ACAB338;
  v86 = (v85 ^ 0x414140050A0A8030) & (16 * v84) ^ v84;
  v87 = ((16 * (v85 ^ 0x9230110840C03306)) ^ 0x371510D4ACAB33E0) & (v85 ^ 0x9230110840C03306) ^ (16 * (v85 ^ 0x9230110840C03306)) & 0xD371510D4ACAB320;
  v88 = (v87 ^ 0x13111004088A3300) & (v86 << 8) ^ v86;
  v89 = (((v87 ^ 0xC06041094240801ELL) << 8) ^ 0x71510D4ACAB33E00) & (v87 ^ 0xC06041094240801ELL) ^ ((v87 ^ 0xC06041094240801ELL) << 8) & 0xD371510D4ACAB200;
  v90 = v88 ^ 0xD371510D4ACAB33ELL ^ (v89 ^ 0x515101084A820000) & (v88 << 16);
  v91 = 297845113 * ((2 * ((v65 - 152) & 0x1D71726D1A6B010) - (v65 - 152) - 0x1D71726D1A6B016) ^ 0x4973491C596A5374);
  *(v65 - 128) = &a61;
  *(v65 - 120) = v79 - v91;
  *(v65 - 152) = 297845113 * ((2 * ((v65 - 152) & 0xD1A6B010) - (v65 - 152) + 777605098) ^ 0x596A5374) + v66 + 18235;
  *(v65 - 144) = (v80 ^ (2 * ((v90 << 32) & 0x5371510D00000000 ^ v90 ^ ((v90 << 32) ^ 0x4ACAB33E00000000) & (((v89 ^ 0x822050050048813ELL) << 16) & 0x5371510D00000000 ^ 0x270110500000000 ^ (((v89 ^ 0x822050050048813ELL) << 16) ^ 0x510D4ACA00000000) & (v89 ^ 0x822050050048813ELL)))) ^ 0x8F10D24728FE31ACLL) + v91;
  *(v65 - 136) = v67;
  (*(v61 + 8 * (v66 ^ 0xC781)))(v65 - 152);
  v92 = 634647737 * ((v65 - 152) ^ 0x6D962FFC);
  *(v65 - 136) = v66 - v92 + 18039;
  *(v65 - 144) = &a45;
  *(v65 - 152) = v92 - 1431125373;
  v93 = (*(a38 + 8 * (v66 + 49025)))(v65 - 152);
  v94 = *(a38 + 8 * (v66 + 43280));
  a10 = &a9 - 110448870;
  a29 = v64 - 61367257;
  a30 = v64 ^ 0x3A87256;
  a31 = v64 - 61320284;
  a32 = 3308 * (v64 ^ 0x3A8720E);
  a23 = v64 - 61324669;
  a17 = v64 - 61367885;
  a16 = v64 ^ 0x3A85342;
  a12 = (v64 - 1294578224) & 0x4981FF7B;
  a20 = a12 - 110498079;
  a19 = v64 - 61370837;
  a15 = v64 - 61367245;
  a26 = v64;
  a18 = v64 - 61349095;
  a35 = (v64 - 61349095);
  return v94(v93);
}

uint64_t sub_10085AD3C()
{
  v3 = LODWORD(STACK[0x584]) | 0x6020C050;
  *(v2 - 248) = 0;
  *(v2 - 256) = LODWORD(STACK[0x580]) ^ (906386353 * ((v0 - 2 * (v0 & 0x2EDE78E0) + 786331878) ^ 0x1FDFB5C2));
  v4 = (*(v1 + 8 * LODWORD(STACK[0x57C])))(v2 - 256);
  return (*(v1 + 8 * (((*STACK[0x6F0] > 0) * ((v3 ^ 0x9D9F7521) + LODWORD(STACK[0x5C4]))) ^ 0x8EDF)))(v4);
}

uint64_t sub_10085AE3C()
{
  v1 = STACK[0x1520];
  v2 = *(STACK[0x1520] + 132) + (((LODWORD(STACK[0x2304]) ^ 0xD0F38270) + 789347728) ^ ((LODWORD(STACK[0x2304]) ^ 0x42943A) - 4363322) ^ ((LODWORD(STACK[0x2304]) ^ 0x3964D15B) - 962908507)) - 371865796;
  *(v1 + 128) = STACK[0x2304];
  *(v1 + 132) = v2;
  return (*(v0 + 362400))();
}