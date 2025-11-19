void sub_10028A1B0(uint64_t a1)
{
  v1 = *a1 ^ (193924789 * (((a1 | 0xC46A3365) - (a1 & 0xC46A3365)) ^ 0x72D10103));
  v2 = *(a1 + 8);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 24);
  v6 = v1 ^ 0x7FFF7C0A;
  v11[0] = 0x3EA64EF000000082;
  v11[1] = &v13;
  v10[0] = 0x3EA64EF000000082;
  v10[1] = &v12;
  v7 = v2[1];
  v16 = v2;
  v17 = v11;
  v14 = v5;
  v15 = v3;
  v18 = v7;
  v19 = (17902189 * (((&v14 | 0xADEE5F3B) - (&v14 & 0xADEE5F38)) ^ 0x23A1492B)) ^ (v1 - 2147458411);
  v8 = *(&off_1010A0B50 + v1 - 2147482559) - 810145054;
  (*&v8[8 * (v1 & 0xCB73)])(&v14);
  v9 = *v2;
  LODWORD(v15) = v1 + 193924789 * (((&v14 | 0xDE65D991) - (&v14 | 0x219A266E) + 563750510) ^ 0x68DEEBF7) - 2147470714;
  v14 = v10;
  v16 = v9;
  (*&v8[8 * v1 - 0x3FFF9A978])(&v14);
  LODWORD(v14) = (139493411 * ((&v14 - 2 * (&v14 & 0x5FEB9D10) - 538206958) ^ 0xD3C67C57)) ^ (v1 - 2147458028);
  v15 = v4;
  (*&v8[8 * (v1 & 0xCC7E)])(&v14);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10028A508(uint64_t a1, uint64_t a2)
{
  v2 = STACK[0xF10] - 5126;
  STACK[0x9028] = STACK[0xA690];
  return (*(STACK[0xF18] + 8 * v2))(a1, a2, LODWORD(STACK[0xA69C]));
}

uint64_t sub_10028A548()
{
  LODWORD(STACK[0xB74C]) = -371865839;
  LODWORD(STACK[0xB748]) = 556438246;
  LODWORD(STACK[0xB744]) = 1487383158;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10028A590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char *a30, uint64_t a31, uint64_t a32, uint64_t a33, char *a34, uint64_t a35, char *a36, uint64_t a37, char *a38, int a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58, char a59)
{
  v64 = (v59 & 0x8A4A44A1) + (a20 & 0x8A4A44A1) + 2 * (v59 & 0x54911254 & a20) + 2 * ((v62 ^ 0x21248DA9) & v59 & a20) + (((a20 & 0x2124A90A) - ((v62 ^ 0x21248DA9) & v59) + 38359572) & 0x2124A90A) + ((((((v62 - 4204230) & 0x5F6B67BB) - 177886021) & a20) - (v59 & 0x54911254) + 690103464) & 0x54911254);
  v65 = *(v60 + 8 * (v62 ^ 0x27BC));
  v66 = *(v65 - 527405895);
  v67 = *(v60 + 8 * (v62 ^ 0x35B1)) + 4 * v66;
  v68 = *(v67 - 1940437438);
  v69 = (v64 ^ a20) + (v64 ^ a20) * v68;
  if (v64 == a20)
  {
    v70 = *(v67 - 1940437438);
  }

  else
  {
    v70 = 0;
  }

  *(v67 - 1940437438) = (v69 + v70) * v68;
  *(v65 - 527405895) = (v66 + 1) % 6u;
  a35 = 0x3EA64EF000000009;
  a36 = &a54;
  a37 = 0x3EA64EF000000009;
  a38 = &a45;
  a33 = 0x3EA64EF000000009;
  a34 = &a59;
  a29 = 0x3EA64EF000000009;
  a30 = &a40;
  a31 = 0x3EA64EF000000014;
  a32 = v63 - 224;
  v71 = 1012831759 * ((v63 - 144 - 2 * ((v63 - 144) & 0xE474AA8) - 1907930456) ^ 0x9ED45C22);
  *(v63 - 136) = 959188427 - v71;
  *(v63 - 132) = (v62 + 33248) ^ v71;
  *(v63 - 144) = &a37;
  (*(v61 + 8 * (v62 ^ 0xEFBA)))(v63 - 144);
  v72 = 139493411 * ((((2 * (v63 - 144)) | 0x7EE1BEF2) - (v63 - 144) + 1083121799) ^ 0xB35D3E3C);
  *(v63 - 120) = *(v60 + 8 * (v62 - 8949)) - 1511362936;
  *(v63 - 144) = &a29;
  *(v63 - 132) = v62 - v72 + 29384;
  *(v63 - 128) = v72 + 404414912;
  v73 = (*(v61 + 8 * (v62 ^ 0xEE4B)))(v63 - 144);
  return (*(v61 + 8 * ((48763 * (*(v63 - 136) == -371865839)) ^ v62)))(v73);
}

uint64_t sub_10028A97C@<X0>(int a1@<W8>)
{
  *STACK[0x9108] |= 0x10000u;
  LODWORD(STACK[0x89D0]) = a1 - 993770779;
  LODWORD(STACK[0x14F8]) = (((v1 ^ 0x65C05E53) - 1707105875) ^ ((v1 ^ 0xE8CE5390) + 389131376) ^ ((v1 ^ 0x64DBCAD2) - 1692161549 + v2 + 22569)) - 15868816;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_10028AB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v40 = *(v34 + 48);
  v41 = ((*(v34 + 36) ^ 0xB9476ED8) + 1186500904) ^ ((*(v34 + 36) ^ 0x1868E39B) + ((v37 - 10629) ^ 0xE7975D21)) ^ ((((v37 - 10629) | 0x1083) ^ *(v34 + 36) ^ 0x48FA1B95) - 1224362578);
  v42 = 1603510583 * ((2 * ((v38 - 176) & 0x431CAC00) - (v38 - 176) - 1125952519) ^ 0x2B386152);
  *(v38 - 176) = v33;
  *(v38 - 144) = v42 - 329899906 + v41;
  *(v38 - 164) = v37 - v42 - 8776;
  *(v38 - 160) = v40 - v42;
  *(v38 - 152) = a33;
  v43 = (*(v39 + 8 * (v37 + 24853)))(v38 - 176);
  return (*(v36 + 8 * ((43772 * (*(v38 - 168) == v35)) ^ v37)))(v43, &off_1010A0B50);
}

void sub_10028AC88(uint64_t a1)
{
  v1 = *(a1 + 32) - 1603510583 * ((((2 * a1) | 0xA8B8650E) - a1 - 1415328391) ^ 0xC387002C);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_10028AE30@<X0>(unint64_t a1@<X8>)
{
  v9 = ((v5 + 1) | ((v5 + 1 < v1) << 32)) + v3;
  v10 = (v9 < v4) ^ (a1 > v6);
  v11 = a1 + v4 > v9;
  if (v10)
  {
    v11 = a1 > v6;
  }

  return (*(STACK[0xF18] + 8 * ((!v11 * v8) ^ (v7 + v2))))();
}

uint64_t sub_10028AF2C@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, unsigned __int16 a7, __int16 a8, int a9, unsigned int a10)
{
  v16 = (a1 | ((a1 < 0xBC5) << 16)) + (*v10 - 14362) + (*v12 - 14362) + 443776610;
  v17 = 1603510583 * ((-2 - ((~v15 | 0xBBFD983B) + (v15 | 0x440267C4))) ^ 0x2C26AA90);
  a8 = -24265 * ((-2 - ((~v15 | 0x983B) + (v15 | 0x67C4))) ^ 0xAA90) - 22130;
  a6 = 4134 - -24265 * ((-2 - ((~v15 | 0x983B) + (v15 | 0x67C4))) ^ 0xAA90);
  a9 = v17 + v11 + 3295;
  a10 = v17 ^ v16 ^ (((10 * (v11 ^ 0x48A9)) ^ 0x12B4924E ^ v16) + (v11 ^ 0xF738CC4F)) ^ ((v16 ^ 0x1A351CA4) - 4626051) ^ ((v16 ^ 0xFD2D92D4) + 413263629) ^ ((v16 ^ 0xEFDFFFFF) + 173247016) ^ 0xD0273B4D;
  v18 = (*(a5 + 8 * (v11 ^ 0x8E97)))(&a6);
  v19 = v13 + a7 + ((a7 < 0xBC5u) << 16) + (*v10 - 14362) - 3013;
  LOWORD(v19) = (v19 % 0x7FFF - ((2 * (v19 % 0x7FFF)) & 0x304A) + 6181) ^ 0xCB85;
  v12[9] = v19;
  v20 = (((v19 ^ 0x83DBC7EB) + 2082748437) ^ ((v19 ^ 0xE3CC0757) + 473168041) ^ ((v19 ^ 0x6017131C) - 1612124956)) + (*v12 - 14362) + 54176;
  v21 = ((v20 % 0x7FFF) ^ 0xFFFFB93B) + ((2 * (v20 % 0x7FFF)) & 0x7276);
  *v12 = v21 + 32479;
  v22 = ((*(v12 - 9) | ((*(v12 - 9) < 0xBC5u) << 16)) + (v21 + 18117) - 3013) % 0x7FFF;
  *(v12 - 9) = ((((v22 - ((2 * v22) & 0xD7EC) - 5130) ^ 0xF8DF) + 18172) ^ (((v22 - ((2 * v22) & 0xD7EC) - 5130) ^ 0xD592) + 27575) ^ (((v22 - ((2 * v22) & 0xD7EC) - 5130) ^ 0xC6BB) + 30880)) - 18958;
  return (*(a5 + 8 * (v11 ^ (120 * (v14 == 2)))))(v18);
}

uint64_t sub_10028B270@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v8 = (v6 + 4 * v3);
  v9 = a3 + v3;
  v10 = v3 + 2;
  v11 = *(v6 + 4 * v9 + a1);
  v12 = v8[397] ^ ((v11 & 0x7FFFFFFE | v5 & 0x80000000) >> 1) ^ *(a2 + 4 * (v11 & 1));
  v13 = v8[398] ^ ((*(v6 + 4 * v10) & 0x7FFFFFFE | v11 & 0x80000000) >> 1) ^ *(a2 + 4 * (*(v6 + 4 * v10) & 1));
  *v8 = v12;
  v8[1] = v13;
  return (*(v7 + 8 * ((60 * (v10 != 226)) ^ v4)))();
}

uint64_t sub_10028B2F4(unint64_t a1, int a2)
{
  v4 = v2 - 40095;
  v5 = v2 + 2806029618 < a1;
  if (a1 < 0xA7409D31 != v4 + ((a2 - 1907393167) & 0x71B09EB9) > ((a2 + 975313944) & 0xC5DDEBFF ^ 0xFFFFFFFF58BFEA43))
  {
    v5 = a1 < 0xA7409D31;
  }

  return (*(v3 + 8 * ((253 * v5) ^ a2)))();
}

uint64_t sub_10028B638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, _DWORD *a36)
{
  if (LODWORD(STACK[0x4CC]))
  {
    v38 = 1673605015;
  }

  else
  {
    v38 = 1673604951;
  }

  return (*(v37 + 8 * ((13385 * ((((19 * ((v36 + 27931) ^ 0x83B3)) ^ *a36 ^ 0x63C12A54) & v38 ^ *a36 & 0x63C12CB7) == 1673604279)) ^ (v36 + 27931))))();
}

uint64_t sub_10028B6B8@<X0>(uint64_t a1@<X6>, unsigned int a2@<W8>)
{
  *(v4 + 384) = v2;
  v5 = *(a1 - 16) - 0x3CE25E0EC5203C26 + ((a2 - 1142401302) & 0x441779FF) >= 0;
  return (*(v3 + 8 * (((4 * v5) | (16 * v5)) ^ a2)))();
}

void sub_10028B750(uint64_t a1)
{
  v3 = *(*a1 + 4) == 1051086576 || *(*(a1 + 16) + 4) == 1051086576;
  v1 = *(a1 + 8) + 17902189 * (((a1 | 0x1EC5B99) - a1 + (a1 & 0xFE13A466)) ^ 0x8FA34D89);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_10028B868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v5 + 8 * (v4 ^ 0x4A43 ^ (9717 * ((v4 ^ 0xC7176A80) > (v4 ^ 0xC2194340) - 12876575))));
  *(v6 - 240) = v3;
  *(v6 - 236) = -371865839;
  return v7(a1, a2, a3, 1926737144);
}

uint64_t sub_10028B8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, int a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v77 = 155453101 * ((v76 - 168 - 2 * ((v76 - 168) & 0x5BB54D58) - 608875176) ^ 0x3D935697);
  v73[61] = *a51;
  *(v76 - 140) = v77 ^ 0x7CD6B3C8;
  v73[58] = 0;
  *(v76 - 124) = v77 + 2069619737;
  *(v76 - 120) = v75 - v77 + 1777277749;
  v73[55] = &STACK[0x344];
  v73[56] = a38;
  *(v76 - 128) = 16376 - 1709 * ((v76 - 168 - 2 * ((v76 - 168) & 0x4D58) + 19800) ^ 0x5697);
  *(v76 - 144) = v77 ^ 0xE2FBFE53;
  *(v76 - 168) = a35 ^ v77;
  v78 = (*(v74 + 8 * (v75 + 38528)))(v76 - 168);
  return (*(v74 + 8 * (((*(v76 - 116) == -371865839) * (((v75 + 236243787) & 0xF1EBAF73) + ((v75 + 31423) ^ 0xFFFF3C4E))) ^ v75)))(v78, a73, &STACK[0x298]);
}

uint64_t sub_10028BA30@<X0>(int a1@<W8>)
{
  v5 = *(&off_1010A0B50 + v1 - 12997) - 848177555;
  v6 = *(&off_1010A0B50 + (v1 ^ 0x2A2A)) - 514154526;
  v7 = v5[*(v4 - 111) ^ 0x6CLL];
  v8 = ((v7 >> 7) | (2 * v7));
  v9 = *(*(&off_1010A0B50 + v1 - 10684) + (*(v4 - 109) ^ 0xB3) - 651494466) | (((v7 & 0x80) != 0) << 16);
  v10 = (v9 ^ 0xFFFFFF0F) & ((((v8 << 16) & 0xFFFEFFFF ^ 0xFFEFFFFF) & (((((*(v4 - 110) ^ 0x84) - 120) ^ *(v4 - 110) ^ 0x84 ^ v6[*(v4 - 110) ^ 0x44]) << 8) ^ 0x1E37FFDA) | (v8 << 16) & 0xC80000) ^ 0x9415798A) ^ v9 & 0x100AF;
  v11 = (2 * v5[*(v4 - 99) ^ 0xALL]) ^ 0xFFFFFF92;
  v12 = *(v4 - 106);
  v13 = -(v12 ^ 0xE9);
  v14 = v12 ^ 0xE9 ^ ((v12 ^ 0xE9) - 120) ^ v6[(v13 ^ (192 - (v12 ^ 0x29)) ^ 0x7BFDE578 ^ ((v12 ^ 0xE9) - ((2 * (v12 ^ 0xE9)) & 0xF0) + 2080236920)) + 192];
  v15 = *(*(&off_1010A0B50 + v1 - 11035) + (*(v4 - 112) ^ 0x6ALL) - 330390679);
  *(v4 - 140) = (((a1 ^ 0x3182F0B6) - 1236174123) ^ ((a1 ^ 0xC8338BA) - 1957645607) ^ ((a1 ^ 0x872C0EEF) + 16745614)) - 1021361922;
  v16 = *(v3 + 8 * v1);
  *(v4 - 136) = v2;
  return v16(v14, (v10 & 0xA796C97 ^ 0xDEE69BFC ^ (((v15 ^ 0xA6) << 24) ^ 0x5D869368) & (v10 ^ 0x7514CB22)) >> ((v15 ^ 0x47) & 2) >> ((v15 ^ 0x47) & 9 ^ 8) >> (v15 & 8), v15 & 8, 9, v13, ~(2 * v11) | 0x13, v1 ^ 0x70B2u);
}

uint64_t sub_10028BFB4(unsigned int a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, int8x16_t a7, int8x8_t a8)
{
  v15.val[0].i64[0] = (v11 + a3 - 1) & 0xF;
  v15.val[0].i64[1] = (v11 + a4 + a5) & 0xF;
  v15.val[1].i64[0] = (v11 + a3 + 13) & 0xF;
  v15.val[1].i64[1] = (v11 + a3 + 12) & 0xF;
  v15.val[2].i64[0] = (v11 + a3 + 11) & 0xF;
  v15.val[2].i64[1] = (v11 + a3 + 10) & 0xF;
  v15.val[3].i64[0] = (v11 + a3 + 9) & 0xF;
  v15.val[3].i64[1] = (v11 + a3) & 0xF ^ 8;
  *(v12 + v11) = veor_s8(veor_s8(veor_s8(*(v10 + v15.val[0].i64[0] - 7), *(a6 + v11)), veor_s8(*(v15.val[0].i64[0] + v8 - 3), *(v15.val[0].i64[0] + v9 - 6))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v15, a7), a8)));
  return (*(v13 + 8 * ((30 * (a2 != a3)) ^ a1)))();
}

uint64_t sub_10028C088()
{
  STACK[0x5D60] = STACK[0x9F98];
  LODWORD(STACK[0x9784]) = STACK[0x9F8C];
  LOWORD(STACK[0x3D22]) = STACK[0x9F92];
  LODWORD(STACK[0x9094]) = STACK[0x9F94];
  return (*(STACK[0xF18] + 8 * (v0 - 18077)))();
}

uint64_t sub_10028C240()
{
  v1 = STACK[0xF18];
  STACK[0x9880] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((v0 + 4201) | 0x4012) - 15876) ^ v0)))();
}

uint64_t sub_10028C28C(uint64_t a1, int a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  v12 = (v7 - v8 + a5);
  v13 = v11 + v12 + v10;
  v14 = *(v13 - 31);
  v15 = v9 + v12;
  *(v15 - 15) = *(v13 - 15);
  *(v15 - 31) = v14;
  return (*(STACK[0xF18] + 8 * (((a6 + v8 == a2) * a7) ^ a4)))();
}

uint64_t sub_10028C338()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  STACK[0x79E8] = 0;
  return (*(v1 + 8 * (v0 - 30518)))(v2);
}

uint64_t sub_10028C368@<X0>(uint64_t a1@<X8>)
{
  v2 = STACK[0xF10];
  v3 = 5 * (STACK[0xF10] ^ 0xA974);
  v4 = STACK[0xF10] + 8272;
  v5 = a1 + 16 * v1;
  if (v1 >= ((STACK[0xF10] ^ 0x50) - 102))
  {
    v5 = 0;
  }

  v6 = STACK[0x19F8];
  v7 = STACK[0x6528];
  v8 = STACK[0x1144];
  v9 = 1112314453 * ((((&STACK[0x10000] + 3800) | 0x90B7789) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xF6F48870)) ^ 0xE65D5D50);
  LOWORD(STACK[0x10ED8]) = -28075 * ((((&STACK[0x10000] + 3800) | 0x7789) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x8870)) ^ 0x5D50) + 3771;
  LODWORD(STACK[0x10EDC]) = (v2 + 679158052) ^ v9;
  STACK[0x10EE0] = v5;
  STACK[0x10EE8] = v6;
  STACK[0x10EF8] = v7;
  LODWORD(STACK[0x10EF0]) = v9 + 1599993265 * v8 + 1244298177;
  v10 = STACK[0xF18];
  v11 = (*(STACK[0xF18] + 8 * (v2 + 16309)))(&STACK[0x10ED8]);
  v12 = (((LODWORD(STACK[0x9704]) ^ 0x7D44F735) - 2101671733) ^ ((LODWORD(STACK[0x9704]) ^ 0xD1B34672) + (v3 ^ 0x2E4C1205)) ^ ((LODWORD(STACK[0x9704]) ^ 0x45227656) - 1159886422)) + 1853840296;
  v13 = ((v8 - 2069261160) < 0x84A99497) ^ (v12 < 0x84A99497);
  v14 = v8 - 2069261160 > v12;
  if (v13)
  {
    v14 = (v8 - 2069261160) < 0x84A99497;
  }

  v15 = STACK[0x6B98];
  if (v14)
  {
    v15 = 371891407;
  }

  return (*(v10 + 8 * ((4 * (v15 == -371865839)) | ((v15 == -371865839) << 6) | v4)))(v11);
}

uint64_t sub_10028C770@<X0>(unsigned int a1@<W1>, char a2@<W2>, unint64_t a3@<X3>, int a4@<W4>, int a5@<W6>, unsigned __int8 a6@<W7>, uint64_t a7@<X8>)
{
  v9 = a7 + 1;
  v11 = a6 == ((a5 + v7) ^ a2) || v9 == (((a5 + v8) | a1) ^ a3);
  return (*(STACK[0xF18] + 8 * ((v11 * a4) ^ a5)))();
}

uint64_t sub_10028C828@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v13 = v7 - 1;
  v14 = (((a1 + 712) | v6) ^ v8) & v13;
  *(v11 + v13) = *(v4 + v14) ^ *(v10 + v13) ^ *(a3 + v14) ^ *(v14 + v3 + 2) ^ (v14 * v9);
  return (*(v12 + 8 * (((v13 == 0) * a2) ^ v5)))();
}

uint64_t sub_10028C8F8()
{
  v5 = (*(v4 + 8 * (v3 + 17662)))(v1);
  *v0 = 0;
  return (*(v2 + 8 * (v3 - 12701)))(v5);
}

uint64_t sub_10028C93C()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x74C6 ^ (v0 + 25379))))();
}

uint64_t sub_10028C9E8@<X0>(void *a1@<X8>)
{
  *a1 = v2;
  a1[1] = v2;
  return (*(STACK[0xF18] + 8 * ((35083 * (v1 == ((29 * (v1 ^ 0x137EF340)) ^ 0x48F5AF97))) ^ (v1 - 327055916))))();
}

uint64_t sub_10028CA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v37 = veorq_s8(**(v36 + 24), xmmword_100F52810);
  *(v35 - 128) = veorq_s8(**(v36 + 40), xmmword_100F52800);
  *(v35 - 112) = v37;
  return (*(v33 + 8 * (a1 ^ (131 * (v34 != 0)))))(a1, a2, a3, a4, a5, a6, a7, a8, v36, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

void sub_10028CAA8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (*(a1 + 8) ^ 0xDEDFFDBFADCCE37FLL) + 0x21200240EDCA8D57 + ((2 * *(a1 + 8)) & 0xBDBFFB7F5B99C6FELL);
  v4 = v3 < 0x9B9770D6;
  v5 = v3 > v2 + 2610393302u;
  if (v2 > 0xFFFFFFFF64688F29 != v4)
  {
    v5 = v4;
  }

  v1 = *a1 - 353670337 * (((a1 | 0xD311D44) - a1 + (a1 & 0xF2CEE2BB)) ^ 0xB910E579);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_10028CC70@<X0>(void *a1@<X0>, uint64_t a2@<X7>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, unint64_t a34, uint64_t a35)
{
  a1[3] = v36;
  a1[4] = *(a2 + 80);
  *(a2 + 80) = a1;
  *(a1[4] + 24) = a1;
  a1[1] = a35;
  return (*(v35 + 8 * ((((a3 + 1481983831) & 0xA7AAAFF7 ^ 0xAAFB ^ (19 * (a3 ^ 0x384D))) * (a34 > 0x28)) ^ a3)))();
}

uint64_t sub_10028CCE4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, int a60)
{
  v61 = 1374 * (a1 ^ 0x22DB);
  v62 = (v61 - 14190) | 0x1888;
  LODWORD(STACK[0x2B0]) = v62;
  v64 = ((((a60 + 170884362) ^ 0x96FF7CA9) + 1011457913) ^ (a60 + 170884362) ^ (((a60 + 170884362) ^ 0xF711936C) + 1571254462) ^ (((a1 + 519035827) ^ (a60 + 170884362)) - 1269228113) ^ ((v61 ^ 0x80FE9534) + ((a60 + 170884362) ^ 0x2A480D94))) != 0x55491C2E && ((((((a60 + 10) ^ 0xA9) + 121) ^ (a60 + 10) ^ (((a60 + 10) ^ 0x6C) - 66) ^ (((a1 - 77) ^ (a60 + 10)) - 81)) ^ ((v61 ^ 0x34) + ((a60 + 10) ^ 0x94))) & 0xF) == 14;
  v65 = *(v60 + 8 * ((((v62 - 509) ^ 0x5A46) * v64) ^ v61));
  LODWORD(STACK[0x2A8]) = -42899;
  return v65();
}

uint64_t sub_10028CDD0@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, int a9@<W8>)
{
  v25 = v10 - 1;
  v26 = (v9 ^ v12) & (2 * (v9 & 0xF5)) ^ v9 & 0xF5;
  v27 = ((2 * (v9 ^ 0x89 ^ v11)) ^ v13) & (v9 ^ 0x89 ^ v11) ^ (2 * (v9 ^ 0x89 ^ v11)) & v14;
  v28 = v9 ^ (2 * ((((4 * (v27 ^ a1)) ^ a3) & (v27 ^ a1) ^ (4 * (v27 ^ a1)) & a4) & (16 * ((v27 ^ a2) & (4 * v26) ^ v26)) ^ (v27 ^ a2) & (4 * v26) ^ v26));
  v29 = (((v28 ^ a6) + a7) ^ ((v28 ^ a8) + v15) ^ ((v28 ^ v17) + v18)) + v19;
  *(v23 + v25) = v29 * (v9 + a5) + (v29 * v20 + (v9 + a5) * v21) * v22 - 56;
  return (*(v16 + 8 * (((v25 == 0) * v24) ^ a9)))();
}

uint64_t sub_10028CFDC(uint64_t a1, uint64_t a2)
{
  STACK[0x6FA0] = 0;
  LODWORD(STACK[0x55CC]) = -371865839;
  LODWORD(STACK[0x1B10]) = -371865839;
  STACK[0x5BE0] = 0;
  LODWORD(STACK[0x658C]) = -371865839;
  return (*(STACK[0xF18] + 8 * ((((((v2 - 622057561) & 0x25139FF6) + 30181) ^ 0xA61D) * (v3 == -371865840)) ^ v2)))(a1, a2, 371891535);
}

uint64_t sub_10028D5CC@<X0>(int a1@<W8>, uint8x8_t a2@<D0>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  a2.i32[0] = *(a19 + 19 - v20);
  v22 = vmovl_u8(a2).u64[0];
  v23 = vadd_s16(vsub_s16(v22, vand_s8(vadd_s16(v22, v22), 0xBE00BE00BE00BELL)), 0x5F005F005F005FLL);
  *(v19 + 19 - v20) = vuzp1_s8(v23, v23).u32[0];
  return (*(v21 + 8 * ((16852 * (v20 == 16)) ^ a1)))();
}

uint64_t sub_10028D704(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, char a7, uint64_t a8)
{
  v13 = *(v11 + v8 + 72);
  v14 = ((2 * v8) & 0xF9277FD8) + (v8 ^ 0xFC93BFEF);
  *(a8 + v14 + 57425937) = ((v13 >> ((v9 + a7) ^ 0x18)) ^ a6) - ((2 * ((v13 >> ((v9 + a7) ^ 0x18)) ^ a6)) & 0xBF) + 95;
  *(a8 + v14 + 57425938) = (BYTE2(v13) ^ 0x7C) - ((2 * (BYTE2(v13) ^ 0x7C)) & 0xBF) + 95;
  *(a8 + v14 + 57425939) = (a5 ^ BYTE1(v13)) - ((2 * (a5 ^ BYTE1(v13))) & 0xBF) + 95;
  *(a8 + v14 + 57425940) = v13 ^ a4;
  return (*(v12 + 8 * ((57673 * (v8 + 4 < v10)) ^ v9)))();
}

uint64_t sub_10028D844(int8x16_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, __n128 a6, __n128 a7, __n128 a8, int8x16_t a9, double a10, int8x16_t a11, int8x16_t a12, uint64_t a13, int a14)
{
  v20 = a3 & 0xF;
  v21 = v14;
  v22.i64[0] = vqtbl4q_s8(*(&a6 - 1), a9).u64[0];
  *&v22.i64[1] = a10;
  v23 = vrev64q_s8(veorq_s8(veorq_s8(*a1, *(v16 + v20 - 15)), veorq_s8(*(v15 + v20 - 15), *(v20 + v17 - 11))));
  v24 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v23, v23, 8uLL), a12), vmulq_s8(v22, a11)));
  *a1 = vextq_s8(v24, v24, 8uLL);
  return (*(v19 + 8 * (((a4 != 0) * a14) ^ v18)))(a1 - 1, a2, a3 - 16, a4 - 16);
}

uint64_t sub_10028DD10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  *(v5 - 224) = v4 - 2927;
  *(v5 - 112) = veorq_s8(*v7, xmmword_100F52890);
  if (a4)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  v11 = *(v6 + 8 * ((11 * v10) ^ v4));
  *(v5 - 228) = -42900;
  *(v5 - 240) = v6;
  return v11(a1, a2, a3);
}

uint64_t sub_10028DD68()
{
  v3 = *(v0 + 640 * v1 + 552);
  v4 = (v3 ^ 0x86D183D6) & (2 * (v3 & 0xD705D3D7)) ^ v3 & 0xD705D3D7;
  v5 = (((v3 ^ 0xAED20570) << (v2 ^ 0xB0)) ^ 0xF3AFAD4E) & (v3 ^ 0xAED20570) ^ ((v3 ^ 0xAED20570) << (v2 ^ 0xB0)) & 0x79D7D6A6;
  v6 = v5 ^ 0x85052A1;
  v7 = (v5 ^ 0x70078404) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0xE75F5A9C) & v6 ^ (4 * v6) & 0x79D7D6A4;
  v9 = (v8 ^ 0x61575280) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x18808423)) ^ 0x9D7D6A70) & (v8 ^ 0x18808423) ^ (16 * (v8 ^ 0x18808423)) & 0x79D7D6A0;
  v11 = v9 ^ 0x79D7D6A7 ^ (v10 ^ 0x19554200) & (v9 << 8);
  v12 = (v3 ^ (2 * ((v11 << 16) & 0x79D70000 ^ v11 ^ ((v11 << 16) ^ 0x56A70000) & (((v10 ^ 0x60829487) << 8) & 0x79D70000 ^ 0x28010000 ^ (((v10 ^ 0x60829487) << 8) ^ 0x57D60000) & (v10 ^ 0x60829487))))) >> 2;
  return (*(STACK[0xF18] + 8 * (v2 + 4 * ((((v12 ^ 0x1F52E50B) + 696248763) ^ ((v12 ^ 0x4EA282DB) + 2022674027) ^ ((v12 ^ 0x70997876) + 1186231496)) != 390337304))))();
}

uint64_t sub_10028DFB8(uint64_t a1)
{
  v1 = *a1 + 1022166737 * ((-2 - ((a1 ^ 0x84821A88 | 0x3B7D6471) + (a1 ^ 0x2A5C2060 | 0xC4829B8E))) ^ 0xEB312485);
  v2 = *(a1 + 8);
  v4 = (297845113 * ((((2 * &v4) | 0x230AD5EA) - &v4 + 1853527307) ^ 0xE6B6766B)) ^ (v1 + 883387732);
  v5 = v2;
  return (*(*(&off_1010A0B50 + v1 + 883360201) + 8 * (v1 ^ 0xCB59CEAF) - 810145054))(&v4);
}

uint64_t sub_10028E0EC(uint64_t result)
{
  v1 = *(result + 8);
  *v1 = 0xE9D5C711E9D5C711;
  v1[1] = 0;
  v1[2] = 0;
  v1[3] = 0xE9D5C71100000000;
  v1[4] = 0;
  return result;
}

uint64_t sub_10028E278@<X0>(int a1@<W8>)
{
  v2 = 120 * STACK[0x468];
  *(*(STACK[0x758] + 8) + v2 + 8) = 0x981390C2FED9247;
  *(*(STACK[0x758] + 8) + v2 + 112) = STACK[0x730];
  STACK[0x730] = 0;
  return (*(v1 + 8 * ((a1 + 9060) ^ a1)))();
}

uint64_t sub_10028E2F4(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0x646C]) = a3;
  STACK[0x8648] = STACK[0x5CE0];
  LODWORD(STACK[0x37DC]) = 1656625325;
  return (*(STACK[0xF18] + 8 * v3))();
}

uint64_t sub_10028E32C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unint64_t *a23)
{
  v24 = a1 - 700;
  *a23 = ((((v24 ^ 0xF021u) - 34220) ^ (STACK[0x840] << 32)) & (*a23 ^ 0x7FC33DCB6EA5C60DLL) | (STACK[0x840] << 32) & 0x89BDFB3800000000) ^ 0x7FC33DCB6EA5C60DLL;
  return (*(v23 + 8 * v24))();
}

void sub_10028E390(unint64_t a1)
{
  v1 = 906386353 * (((a1 | 0xC4935187A1AE160ALL) - (a1 | 0x3B6CAE785E51E9F5) + 0x3B6CAE785E51E9F5) ^ 0x6A19AC4990AFDB2ELL);
  v4 = *(a1 + 32) == 0x217E172EFA1E81CLL || *(a1 + 64) - v1 == 0x8A45A338365ACF0ELL || *(a1 + 24) == 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10028E5C0@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x628]) = 1;
  LOBYTE(STACK[0x634]) = 1;
  return (*(v1 + 8 * (a1 - 1175180009)))();
}

uint64_t sub_10028E6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v54 = (**(v51 + 280) + (v47 - 2138567131));
  v55 = 1864610357 * ((*(*v53 + (*v52 & 0x72D7ACF8)) ^ v54) & 0x7FFFFFFF);
  v56 = 1864610357 * (v55 ^ HIWORD(v55));
  *v54 = *(a16 + (v56 >> (((v48 - 20) | 0x30) ^ 0xACu))) ^ *(v50 + (v56 >> (((v48 - 20) | 0x30) ^ 0xACu))) ^ *((v56 >> (((v48 - 20) | 0x30) ^ 0xACu)) + a47 + 3) ^ v56 ^ (-109 * (v56 >> (((v48 - 20) | 0x30) ^ 0xACu))) ^ 0x80;
  v57 = (((LODWORD(STACK[0x3AC]) ^ 0xEB45CE67) + 347746713) ^ ((LODWORD(STACK[0x3AC]) ^ 0x2B19E37) - 45194807) ^ ((LODWORD(STACK[0x3AC]) ^ 0x219741) - 2201409)) + 1415014771;
  v58 = v57 < 0x6A81A262;
  if ((v47 - 351686520) < 0x6A81A262 == v58)
  {
    v58 = v47 - 351686520 < v57;
  }

  return (*(v49 + 8 * ((54 * !v58) ^ v48)))();
}

uint64_t sub_10028EAC0@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  *(a1 + v2 - 959784655 + ((a2 + 67830473) & 0xFBF4FFDF)) = 0;
  *(v3 + 24) = a1;
  return (*(STACK[0xF18] + 8 * a2))();
}

uint64_t sub_10028EB10(uint64_t a1, uint64_t a2)
{
  v4 = STACK[0xF10];
  LOWORD(STACK[0x9936]) = v2;
  v5 = *(STACK[0xF18] + 8 * (v4 - 27350));
  LODWORD(STACK[0xE30]) = v2;
  return v5(a1, a2, v3);
}

uint64_t sub_10028EC48()
{
  v1 = STACK[0xF18];
  STACK[0x22B8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ (v0 + 35329) ^ 0x977C ^ (17059 * ((v0 - 307727619) > 0x5E8FEF42)))))();
}

uint64_t sub_10028EE24(uint64_t a1, uint64_t a2)
{
  STACK[0x5A30] = STACK[0xED0];
  STACK[0x1880] = 0;
  v3 = STACK[0x2068];
  STACK[0x7A38] = 0;
  if (v3 == (((v2 ^ 0x6CBD) - 1483589561) & 0x586DFFFF ^ 0xE9D5BC73))
  {
    v4 = 371891400;
  }

  else
  {
    v4 = v3;
  }

  return (*(STACK[0xF18] + 8 * (v2 ^ 0x6CBD)))(a1, a2, v4);
}

void sub_10028EFB0(uint64_t a1)
{
  v1 = 906386353 * ((((2 * a1) | 0x5B9FCA9A) - a1 + 1378884275) ^ 0x9CCE2869);
  if (*(a1 + 16))
  {
    v2 = *a1 + v1 == 1172884879;
  }

  else
  {
    v2 = 1;
  }

  v5 = v2 || *(a1 + 24) + v1 == 1625534991 || *(a1 + 8) == 0;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_10028F0CC()
{
  v2 = v0 + (v1 ^ 0xE9D5C711);
  v3 = (((LODWORD(STACK[0x70E4]) ^ 0x43189242) - 1125683778) ^ ((LODWORD(STACK[0x70E4]) ^ 0xE3A0804E) + ((STACK[0xF10] + 575353499) & 0xDDB4D6F9 ^ 0x1C5FEB62)) ^ ((LODWORD(STACK[0x70E4]) ^ 0x496DD51D) - 1231934749)) - 1096928220;
  v4 = v3 < 0xD4C86D23;
  v5 = v2 - 725062365 < v3;
  if (v2 > 0x2B3792DC != v4)
  {
    v5 = v4;
  }

  return (*(STACK[0xF18] + 8 * ((225 * v5) ^ (STACK[0xF10] + 5877))))();
}

uint64_t sub_10028F278()
{
  v5 = ((4637 * (v1 ^ 0x3C87u)) ^ 0x7ECFLL) + v0;
  STACK[0x418] = v5;
  if (v5 <= v3)
  {
    v6 = v2;
  }

  else
  {
    v6 = 371891407;
  }

  LODWORD(STACK[0x424]) = v6;
  return (*(v4 + 8 * (((v6 != -371865839) * (v1 ^ 0x3C9C)) ^ v1)))();
}

uint64_t sub_10028F3F4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, unsigned int a4@<W5>, int a5@<W6>, int a6@<W8>, uint64_t a7, uint64_t a8, uint64_t a9, int a10, unsigned int a11, uint64_t a12)
{
  v25 = (((v24 ^ 0x54D39F38BE496690) - 0x54D39F38BE496690) ^ ((v24 ^ 0x990CDEEFC9736E40) + 0x66F32110368C91C0) ^ ((((((v19 ^ 0x7497) - 1961155968) & 0x74E4BFFD) - 0x3220BE2849E1B884) ^ v24) + 0x3220BE2849E19930)) + 3957772867u;
  v26 = (2863311531u * v25 - 0x1D649C5AB8EB76C1) >> 33;
  v27 = a4 % a11;
  v28 = (a4 % a11) ^ 0xB7CADFE6;
  v29 = (2 * v27) & 0x6F95BFCC;
  if (v25 <= 0x2C16EA87)
  {
    v30 = -928603599;
  }

  else
  {
    v30 = 1218880049;
  }

  v31 = v29 + v28 + v30 + v26;
  v32 = v20 & 3 | 0xC444;
  v33 = v32 ^ (v20 & 8 | 0x1440);
  v34 = (v20 ^ (2 * ((v20 ^ 0x7FC2) & (2 * ((v20 ^ 0x3FC2) & (2 * ((v20 ^ 0x1FC2) & (2 * ((v20 ^ 0xFC2) & (2 * ((v20 ^ 0x7C2) & (2 * ((v20 ^ 0x43C2) & (2 * ((v20 ^ 0x61C2) & (2 * ((v20 ^ 0x70C2) & (2 * ((v20 ^ 0x7842) & (2 * ((v20 ^ 0x7C02) & (2 * ((v20 ^ 0x7E02) & (2 * ((v20 ^ 0x7F02) & (2 * ((v20 ^ 0x7F82) & (2 * (((2 * v32) | 0x1700) & (v20 ^ 0x7FC2) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33)));
  v35 = a5 ^ __ROR4__(v24, 25) ^ ((*(a12 + v31 % (v13 + 1)) ^ 0x5F) << ((v34 ^ 8) & 0x36 ^ 2) << ((v34 ^ 8) & 0xC9 ^ 1));
  v36 = ((v35 ^ 0x1B91FD5F) - (v35 ^ 0x1B91FD5Fu) / 0xFFF1 * a1) * v21;
  v37 = v36 - ((((v36 * v18) >> 32) >> 15) | (((v36 * v18) >> 32) >> 15 << 16));
  v38 = (v22 + 882441134);
  v39 = v37 + (-3 * v38 - v12 + ((4 * (v34 ^ 0xC33EF108)) ^ 0xF305BBF3)) * a6 - 1598755104;
  v40 = (((((v35 ^ 0x1B91FD5Fu) * v17) >> 32) >> 16) + (v16 + 13 * (((v34 ^ 0xBE4F582C) - 2104600868) ^ ((v34 ^ 0x473FDE36) + 2080297154) ^ ((v34 ^ 0xF970E611) - 978196249))) * a6) * v15 - 2030700435;
  v41 = (v39 - ((((v39 * v17) >> 32) >> 16) | (((v39 * v17) >> 32) >> 16 << 16))) ^ v35 ^ ((v40 - ((((v40 * v17) >> 32) >> 16) | (((v40 * v17) >> 32) >> 16 << 16))) * a1);
  LOBYTE(v40) = (v22 - 82) ^ (((v22 - 82) ^ 0xDD) - 113) ^ (((v22 - 82) ^ 0x62) + 50) ^ (((v22 - 82) ^ 0xEC) - 64) ^ (-2 - v22) ^ 0x78;
  v42 = v41 ^ 0x1B91FD5Fu;
  *(a8 + v13) = v23 ^ 0x5F ^ (v42 >> (v40 & 0x56 ^ 0x54) >> (v40 & 0xA9 ^ 0x80));
  return (*(v14 + 8 * (v19 ^ 0x7497)))(v42, a1, a2, a3, a11, v38);
}

uint64_t sub_10028FA8C@<X0>(uint64_t a1@<X8>)
{
  v4 = *(STACK[0x978] + v3);
  v5 = v3 - 1;
  *(a1 + v5) = *(v2 + v5) ^ *(STACK[0x988] + v5) ^ (111 * v5) ^ *(STACK[0x980] + v5) ^ v4 ^ 0x5F;
  return (*(STACK[0xF18] + 8 * ((44263 * (v5 == ((v1 - 7370) ^ 0x673))) ^ v1)))();
}

uint64_t sub_10028FB04()
{
  v1 = STACK[0x6AEC];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393383;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10028FE58()
{
  v2 = STACK[0x44C0];
  v3 = STACK[0x3E70];
  v4 = STACK[0x3D18];
  v5 = 155453101 * ((((&STACK[0x10000] + 3800) | 0x45CF4FF7) - ((&STACK[0x10000] + 3800) & 0x45CF4FF0)) ^ 0xA3E95438);
  LODWORD(STACK[0x10F18]) = v5 + v0 + 12756;
  STACK[0x10EF8] = &STACK[0x5BF0];
  LODWORD(STACK[0x10EE0]) = -371865711 - v5;
  STACK[0x10F08] = v2;
  STACK[0x10F10] = v4;
  STACK[0x10EE8] = v3;
  STACK[0x10EF0] = 0;
  STACK[0x10ED8] = 0;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v0 + 23826)))(&STACK[0x10ED8]);
  v8 = STACK[0x10F00];
  LODWORD(STACK[0x95C4]) = STACK[0x10F00];
  return (*(v6 + 8 * (((v8 == v1) * ((v0 - 677574070) & 0x2862FE6F ^ 0xA2F3)) ^ v0)))(v7);
}

uint64_t sub_10028FF4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  STACK[0x2688] = a8;
  STACK[0x1488] = &STACK[0x5C70];
  STACK[0x5D28] = &STACK[0x8DB8];
  LODWORD(STACK[0x4704]) = 2050717270;
  return (*(STACK[0xF18] + 8 * v8))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_10028FF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  HIDWORD(a12) = *(v61 + 24) - v63;
  v68 = *(v61 + 16);
  v66 = v65[111];
  *v65 = v66;
  STACK[0x238] = 0;
  return (*(v62 + 8 * (((v66 == 0) * (((v60 - 13494) | 0x1441) - 14130)) ^ v60)))(*(v64 + 8 * (v60 ^ 0x50E1)) - 1801829963, *(v64 + 8 * (v60 ^ 0x5423)) - 1424311199, a3, a4, a5, a6, a7, a8, v63, v61, a11, a12, a13, v68, *(v64 + 8 * (v60 - 20879)), *(v64 + 8 * (v60 - 21678)) - 777907922, *(v64 + 8 * (v60 - 20557)) - 2060391275, *(v64 + 8 * (v60 ^ 0x57BC)) - 477118410, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, *(v64 + 8 * (v60 ^ 0x4730)) - 1500044070, *(v64 + 8 * (v60 - 22369)) - 1008427807, *(v64 + 8 * (v60 ^ 0x5423)) - 1424311199, *(v64 + 8 * (v60 ^ 0x50E1)) - 1801829963, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, *(v64 + 8 * (v60 ^ 0x5D80)) - 183391798, *(v64 + 8 * (v60 - 22154)) - 691187598, *(v64 + 8 * (v60 - 21655)) - 64766467);
}

void sub_100290160(uint64_t a1)
{
  v1 = 193924789 * (((a1 | 0x4B5383B8) - (a1 & 0x4B5383B8)) ^ 0xFDE8B1DE);
  if (*(a1 + 8))
  {
    v2 = *a1 + v1 == 804539541;
  }

  else
  {
    v2 = 1;
  }

  v6 = v2 || *(a1 + 16) + v1 == 1384811145 || (*(a1 + 32) ^ v1) == 2065490774 || *(a1 + 24) == 0;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_100290340(double a1, __n128 a2, uint64_t a3, uint64_t a4)
{
  a2.n128_u16[0] = 22359;
  a2.n128_u8[2] = 87;
  a2.n128_u8[3] = 87;
  a2.n128_u8[4] = 87;
  a2.n128_u8[5] = 87;
  a2.n128_u8[6] = 87;
  a2.n128_u8[7] = 87;
  return (*(v6 + 8 * a4))(8 - (v4 & 0x18), a4, (a4 + 597580635) & 0xDC6175EF, v4 - 25950, v4 + v5 - 8, (a4 + 597580635), 15074, xmmword_100F523B0, a2);
}

uint64_t sub_1002903E4@<X0>(unsigned int a1@<W8>)
{
  LODWORD(STACK[0x4CC]) = LODWORD(STACK[0x48C]) == (a1 ^ 0x99BC0B90);
  LODWORD(STACK[0x4D4]) = 1556094274;
  LODWORD(STACK[0x4D0]) = -371865839;
  return (*(v1 + 8 * a1))();
}

uint64_t sub_1002904DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, unsigned int a14)
{
  *(v17 - 120) = a11;
  *(v17 - 108) = v16 + 13495 - 297845113 * ((((v17 - 120) | 0xE2DC0009) + (~(v17 - 120) | 0x1D23FFF6)) ^ 0x95EF1C96);
  (*(v14 + 8 * (v16 + 34056)))(v17 - 120);
  v18 = *(v17 - 112);
  *(v17 - 120) = a12;
  *(v17 - 108) = v16 + 13495 - 297845113 * ((((v17 - 120) | 0x55660C6E) - (v17 - 120) + ((v17 - 120) & 0xAA99F390)) ^ 0x225510F0);
  (*(v14 + 8 * (v16 + 34056)))(v17 - 120);
  a14 = ((*(v17 - 112) - 750562544) * (v18 - 19932848) + 730629696 * v18 + 1231198309) * (((v16 + 29286) ^ 0x80E43A82) + v15) + 2115214235 * v15 - 851374624;
  *(v17 - 112) = v16 - 353670337 * ((v17 - 120) ^ 0xB421F83D) - 5711;
  *(v17 - 120) = a12;
  *(v17 - 104) = &a13;
  v19 = (*(v14 + 8 * (v16 + 33790)))(v17 - 120);
  return (*(v14 + 8 * v16))(v19);
}

uint64_t sub_100290718()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 21347)))(LODWORD(STACK[0x7788]) ^ 0xE9D5C711);
  STACK[0xA690] = v3;
  STACK[0xAE8] = v3;
  if (v3)
  {
    v4 = -371865839;
  }

  else
  {
    v4 = v1;
  }

  LODWORD(STACK[0xA69C]) = v4;
  return (*(v2 + 8 * (((((v0 + 40) ^ (v3 == 0)) & 1) * (v0 ^ 0x7764)) ^ v0)))();
}

uint64_t sub_1002907A0()
{
  v2 = *v0;
  v3 = v2 >= 0x30004;
  v4 = v2 & 4;
  v6 = !v3 || v4 == (v1 ^ 0x9518);
  return (*(STACK[0xF18] + 8 * ((v6 * (((v1 - 36795) | 0xAA0) ^ 0xFD9)) | v1)))();
}

uint64_t sub_1002907FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v11 = 1112314453 * ((~a7 & 0x51C5668B | a7 & 0xAE3A9970) ^ 0xBE934C52);
  STACK[0x10EE0] = v10;
  STACK[0x10ED8] = STACK[0x520];
  LODWORD(STACK[0x10EF0]) = v8 - v11 + 699855854;
  LODWORD(STACK[0x10EEC]) = 1961923937 - v11;
  STACK[0x10EF8] = v7;
  v12 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v8 + 39139)))(&STACK[0x10ED8]);
  return (*(v12 + 8 * (((LODWORD(STACK[0x10EE8]) == -371865839) * (((v8 + 22698) ^ 0x85AA) + v8 + 9167)) ^ v8)))(4294953392, 4737, 1261254523, 56639, v9, STACK[0xD90]);
}

uint64_t sub_100290924()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 32559;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x805C) + v1)))();
}

uint64_t sub_100290A14@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, int a18)
{
  v20 = 1022166737 * (((&a15 | 0x98AEFAB4) - &a15 + (&a15 & 0x67510548)) ^ 0x22BE1B26);
  a16 = a1 - v20;
  a17 = v20 + v18 - 2411;
  a15 = a12;
  v21 = (*(v19 + 8 * (v18 + 17467)))(&a15);
  return (*(v19 + 8 * (((a18 == 1497668682) * (6 * (((v18 - 32196) | 0x276) ^ 0x83) - 17857)) ^ v18)))(v21);
}

uint64_t sub_100290AD8(uint64_t a1, uint64_t a2)
{
  v2 = STACK[0xF10] + 2092;
  v3 = STACK[0xF10];
  v4 = STACK[0x30A8];
  STACK[0x1D80] = STACK[0x30A8];
  return (*(STACK[0xF18] + 8 * (((((v2 ^ 0xB65F ^ (v4 == 0)) & 1) == 0) * (v3 ^ 0x8BCA)) ^ v2)))(a1, a2, 371891400);
}

uint64_t sub_100290B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  v58 = v56 + 1495190971 + (((*(a56 + 88) ^ 0x9F0412C2) + 1627123006) ^ ((*(a56 + 88) ^ 0x59440163) - 1497629027) ^ ((*(a56 + 88) ^ 0xDB3C95DD) + ((a5 + 27524) ^ 0x24C3F652)));
  *(a56 + 88) = v58 + 2018259118 + ((174107548 - 2 * v58) | 0xC506F307);
  return (*(v57 + 8 * a5))();
}

uint64_t sub_100290C20()
{
  LODWORD(STACK[0x4FB4]) = 23860256;
  if (STACK[0xB940])
  {
    v2 = v0 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  return (*(STACK[0xF18] + 8 * ((v3 * ((v1 ^ 0xFFFF3A1B) + (v1 ^ 0xC40C))) ^ v1)))();
}

uint64_t sub_100290D2C()
{
  v1 = STACK[0xF10] - 28943;
  v2 = (STACK[0xF10] + 1248198852) & 0xB599FF3B;
  v3 = STACK[0x7500];
  v4 = (((STACK[0xF10] + 9409) & 0xFEE7) + 20241) ^ LOWORD(STACK[0x71FA]);
  v5 = STACK[0x2D98];
  v6 = 353670337 * (((&STACK[0x10ED8] | 0xDC012593) + (~&STACK[0x10ED8] | 0x23FEDA6C)) ^ 0x6820DDAF);
  LODWORD(STACK[0x10EE0]) = v1 - v6 + 41377;
  LODWORD(STACK[0x10ED8]) = (v4 ^ 0xF7FDFB9F) - v6 + ((2 * v4) & 0x1F73E) + 1557868540;
  STACK[0x10EE8] = v5;
  STACK[0x10EF0] = v3;
  v7 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 + 45203)))(&STACK[0x10ED8]);
  v8 = STACK[0x10EDC];
  STACK[0x10EE0] = STACK[0x7500];
  LODWORD(STACK[0x10ED8]) = (v1 - 514) ^ (155453101 * ((2 * (&STACK[0x10ED8] & 0x5E74F130) - &STACK[0x10ED8] + 562761422) ^ 0xC7AD1501));
  v9 = (*(v7 + 8 * (v1 + 45232)))(&STACK[0x10ED8]);
  LODWORD(STACK[0xAD58]) = v8;
  return (*(v7 + 8 * ((13612 * (v8 == v2 + v0)) ^ v1)))(v9);
}

uint64_t sub_100290ED4@<X0>(uint64_t a1@<X2>, int a2@<W3>, uint64_t a3@<X4>, int a4@<W8>)
{
  v9 = 1864610357 * ((*(*v6 + (*v5 & 0x72D7ACF8)) ^ a2) & 0x7FFFFFFF);
  v10 = (v9 ^ HIWORD(v9)) * (1213 * (a4 ^ 0x5E64) + 1864606718);
  *(a1 + a3) = *(a3 + 4) ^ *(v7 + (v10 >> 24)) ^ *((v10 >> 24) + v4 + 2) ^ *((v10 >> 24) + v8 + 4) ^ v10 ^ (-97 * BYTE3(v10)) ^ 0x5F;
  return (*(STACK[0xF18] + 8 * ((14979 * (a3 == 0)) ^ a4)))();
}

uint64_t sub_100291574()
{
  v1 = STACK[0xF10];
  v2 = (STACK[0xF10] + 1005512488) & 0xC410BDFE;
  v3 = (STACK[0xF10] - 35642) | 0x8004;
  v4 = STACK[0xF10] - 23301;
  v5 = STACK[0x1E30];
  *(*(v5 + 480) + 48) = v0;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v1 ^ 0x41A3)))(*(*(v5 + 480) + 48) ^ 0xE9D5C711);
  v8 = STACK[0x1E30];
  *(*(v8 + 480) + 40) = v7;
  return (*(v6 + 8 * (((*(*(v8 + 480) + 40) == 0) * (v2 ^ v3 ^ 0xB033)) ^ v4)))();
}

uint64_t sub_10029176C()
{
  LODWORD(STACK[0x6B2C]) = -371865839;
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x74FD ^ (88 * (v0 ^ 0x543)))))();
}

uint64_t sub_1002917C4()
{
  STACK[0x2FC8] = v0[1];
  v2 = v0[3];
  STACK[0xEC0] = v0[4];
  STACK[0xA630] = v2;
  v3 = v0[10];
  STACK[0xED0] = v0[9];
  STACK[0x4220] = v3;
  v4 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 + 45550)))(v0 + 5, &STACK[0x82A0], 32);
  v5 = STACK[0x7690];
  STACK[0x7690] = (v1 ^ 0x30DCu) + STACK[0x7690] - 10223;
  LODWORD(STACK[0x33EC]) = 0;
  (*(v4 + 8 * (v1 ^ 0xD212)))(&STACK[0x82A0], &STACK[0xC4D0] + v5, 32);
  v6 = (*(v4 + 8 * (v1 ^ 0xD3AA)))(&STACK[0xC4D0] + v5, 0, 0, 0, 0, 0, &STACK[0x33EC], 0);
  return (*(v4 + 8 * ((48987 * (LODWORD(STACK[0x33EC]) == v1 - 6355)) ^ v1)))(v6);
}

uint64_t sub_100291938()
{
  v8 = (v5 + (v0 ^ 0x3D) + 7 * (v0 ^ 0x86) + 66) & 0xF;
  v9 = -v6 - v5;
  v11 = (v1 - v6) >= 0x10 && (v9 + 1 + v2 + v8) >= 0x10 && (v9 + 1 + v4 + v8) >= 0x10;
  v12 = v9 + v3 + v8 + 8;
  v14 = !v11 || v12 < 0x10;
  return (*(v7 + 8 * ((2012 * v14) ^ v0)))();
}

void sub_100291B10()
{
  if (v0 == 815007115)
  {
    v2 = -371865839;
  }

  else
  {
    v2 = 371891401;
  }

  *(v1 + 32) = v2;
}

uint64_t sub_100291B70()
{
  v3 = v0 + 15684;
  v4 = (v0 + 68) ^ 0x8A;
  v6 = *(v1 + 64);
  v5 = *(v1 + 68);
  *(v1 + 56) = (~(16 * v5) | 0x4F) + 8 * v5 + 96;
  *(v1 + 57) = (v5 >> 5) - ((v4 - 44) & (2 * (v5 >> 5))) + 95;
  *(v1 + 58) = (v5 >> 13) - ((v5 >> 12) & 0xBE) + 95;
  *(v1 + 59) = (v5 >> 21) - ((v5 >> 20) & 0xBE) + 95;
  *(v1 + 60) = (__PAIR64__(v6, v5) >> 29) - ((2 * (__PAIR64__(v6, v5) >> 29)) & 0xBF) + 95;
  *(v1 + 61) = (v6 >> 5) - ((v6 >> 4) & 0xBE) + 95;
  *(v1 + 62) = (v6 >> 13) - ((v6 >> 12) & 0xBE) + 95;
  return (*(v2 + 8 * v3))();
}

uint64_t sub_100291C84()
{
  LODWORD(STACK[0x4FD4]) = -371865839;
  LODWORD(STACK[0x1088]) = 1460445639;
  return (*(STACK[0xF18] + 8 * (v0 - 27821)))();
}

uint64_t sub_100291CB8()
{
  v3 = v2 ^ 0xE9D5C711;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 + 16733)))(v3);
  *(v1 + 120) = v5;
  if (v5)
  {
    v6 = -371865839;
  }

  else
  {
    v6 = 371891397;
  }

  LODWORD(STACK[0x7C04]) = v6;
  return (*(v4 + 8 * (((v5 == 0) * ((((v0 - 32275) | 0x8013) ^ 0xFFFF64CF) + ((v0 - 35114) | 0x1002))) ^ v0)))();
}

uint64_t sub_100291DCC@<X0>(int a1@<W8>)
{
  v3 = STACK[0xF18];
  STACK[0xED0] = *(STACK[0xF18] + 8 * v1);
  STACK[0xA420] = 0;
  return (*(v3 + 8 * (((STACK[0xA420] < ((a1 + 28077) ^ 0x8B1BuLL)) * v2) ^ a1)))();
}

uint64_t sub_100291F3C()
{
  v1 = (STACK[0xF10] - 17529) | 0x905;
  v3 = *(v0 + 8);
  v2 = v0 + 8;
  STACK[0x9050] = v2;
  STACK[0x10EE0] = v3;
  LODWORD(STACK[0x10ED8]) = (v1 + 703905926) ^ (634647737 * ((((&STACK[0x10000] + 3800) | 0x89A63238) - ((&STACK[0x10000] + 3800) | 0x7659CDC7) + 1985596871) ^ 0xE4301DC4));
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 + 31483)))(&STACK[0x10ED8]);
  v6 = STACK[0x2678];
  *v6 = v2 + 28;
  v6[1] = 0;
  v6[2] = 0;
  v6[3] = 0;
  v7 = *(v2 + 256) != 0;
  STACK[0x3260] = v2 + 256;
  return (*(v4 + 8 * ((v7 * ((v1 ^ 0xC4FC) - 35628)) ^ v1)))(v5);
}

uint64_t sub_10029206C@<X0>(int a1@<W8>, __n128 a2@<Q0>)
{
  *v3 = a2;
  v3[1] = a2;
  return (*(v4 + 8 * (a1 + 4 * (v2 != 0))))();
}

uint64_t sub_100292090()
{
  v8 = v5 | 0x5018;
  v9 = ((v8 - 804) - 20072) & (v4 + 15);
  v10 = -v6 - v4;
  v12 = (v0 - v6) >= 0x10 && (v10 + v1 + v9 + 1) >= 0x10 && (v10 + v3 + v9 + 6) >= 0x10;
  v13 = v10 + v2 + v9 + 3;
  v15 = !v12 || v13 < ((1895 * (v8 ^ 0x518Au)) ^ 0x7DC7uLL);
  return (*(v7 + 8 * ((45 * v15) ^ v8)))();
}

uint64_t sub_100292220()
{
  v0 = (STACK[0xF10] + 2124836030) & 0x81596F7E;
  v1 = STACK[0xF10] - 34603;
  v2 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x7483 ^ v0)))();
}

uint64_t sub_100292278@<X0>(uint64_t a1@<X8>)
{
  v2 = STACK[0x92F8];
  *v2 = 0x367D22279A98EC4ELL;
  *(v2 + 8) = ((v1 + 1909657338) & 0x8E2CD3DD) + *(a1 + 108) - (((v1 - 1532315671) ^ 0x7700A6CC) & (2 * *(a1 + 108))) - 371887308;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0x3551360313568603;
  *(v2 + 32) = 0x1FDE2822E9D5C715;
  STACK[0x1390] = v2;
  LODWORD(STACK[0x71D8]) = 0;
  STACK[0x8028] = 0;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0xBB9D)))(128);
  STACK[0x1880] = v4;
  return (*(v3 + 8 * ((138 * (v4 != 0)) | v1)))();
}

uint64_t sub_10029237C(int a1, int8x16_t a2, int8x8_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, int a9)
{
  v16.val[0].i64[0] = (v12 + a6 - 1) & 0xF;
  v16.val[0].i64[1] = (v12 + a6 + 14) & 0xF;
  v16.val[1].i64[0] = (v12 + a6 + 13) & 0xF;
  v16.val[1].i64[1] = (v12 + a7) & 0xF;
  v16.val[2].i64[0] = (v12 + a6 + 11) & 0xF;
  v16.val[2].i64[1] = (v12 + a6 + 10) & 0xF;
  v16.val[3].i64[0] = (v12 + a6 + 9) & 0xF;
  v16.val[3].i64[1] = (v12 + a6) & 0xF ^ 8;
  *(v13 + v12) = veor_s8(veor_s8(veor_s8(*(v9 + v16.val[0].i64[0] - 7), *(a8 + v12)), veor_s8(*(v16.val[0].i64[0] + v11 - 2), *(v16.val[0].i64[0] + v10 - 5))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v16, a2), a3)));
  return (*(v14 + 8 * (((a5 == a6) * a9) ^ a1)))();
}

void sub_100292448(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = (*(a1 + 32) ^ 0x79EFEBFDFF5FFFF7) - 0x79EFEBFD2DAA8346 + ((2 * *(a1 + 32)) & 0xF3DFD7FBFEBFFFEELL);
  v4 = v3 < 0xD1B57CB1;
  v5 = v3 > v2 + 3518332081u;
  if (v2 > 0xFFFFFFFF2E4A834ELL != v4)
  {
    v5 = v4;
  }

  v1 = *a1 ^ (634647737 * ((a1 - 2 * (a1 & 0x4EACC902) + 1319946498) ^ 0x233AE6FE));
  __asm { BRAA            X15, X17 }
}

uint64_t sub_1002926E8()
{
  STACK[0x5208] = STACK[0x3888];
  STACK[0x10EE0] = *STACK[0x9050];
  LODWORD(STACK[0x10ED8]) = v0 - 193924789 * (((&STACK[0x10ED8] | 0x70F2B8DC) - &STACK[0x10ED8] + (&STACK[0x10ED8] & 0x8F0D4720)) ^ 0xC6498ABA) + 60349492;
  v1 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 ^ 0x4032)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x10ED8]) = (v0 - 1762661292) ^ (906386353 * ((((&STACK[0x10ED8] | 0xF33877A4) ^ 0xFFFFFFFE) - (~&STACK[0x10ED8] | 0xCC7885B)) ^ 0x3DC6457F));
  STACK[0x10EE0] = 0;
  v2 = (*(v1 + 8 * (v0 ^ 0x4182)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (((*STACK[0x970] > 12 * (v0 ^ 0x8B30) - 132) * (57 * (v0 ^ 0x8AA5) - 11827)) ^ (v0 - 17851))))(v2);
}

uint64_t sub_100292950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v50 = (*a6 + a23);
  v51 = 1864610357 * ((1864610357 * ((v50 ^ v44) & 0x7FFFFFFF)) ^ ((1864610357 * ((v50 ^ v44) & 0x7FFFFFFF)) >> 16));
  v52 = -83 * ((1864610357 * ((1864610357 * ((v50 ^ v44) & 0x7FFFFFFF)) ^ ((1864610357 * ((v50 ^ v44) & 0x7FFFFFFF)) >> 16))) >> 24);
  v53 = *(v49 - 192);
  LODWORD(v50) = (*(v46 + (v51 >> 24)) ^ *v50 ^ *(v47 + (v51 >> 24)) ^ *((v51 >> 24) + v53 + 5) ^ v51 ^ (-83 * BYTE3(v51))) << ((v45 ^ 0x9E) + 71);
  v54 = (*a6 + a22);
  LODWORD(v51) = *v54;
  v55 = 1864610357 * ((1864610357 * ((v54 ^ v44) & 0x7FFFFFFF)) ^ ((1864610357 * ((v54 ^ v44) & 0x7FFFFFFF)) >> 16));
  LODWORD(v55) = *(v46 + (v55 >> 24)) ^ v51 ^ *(v47 + (v55 >> 24)) ^ *((v55 >> 24) + v53 + 5) ^ v55 ^ (-83 * (v55 >> 24));
  return (*(v48 + 8 * ((204 * (((v50 + v55 - 2 * ((v50 + v55) & 0x781F ^ v55 & 9) + 30742) ^ 0x7816u) + 1 >= HIDWORD(a21))) ^ v45)))(a1, v52, 4294967213, v53, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44);
}

uint64_t sub_100292A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v18 = ((2 * v17) & (v16 ^ 0x1203189E) ^ 0x8901B1B5) & v17;
  v19 = (16 * ((v17 ^ 0x13EF46E5) & (2 * (v17 ^ 0x13EF46E5)) & (v18 << (v16 + 14)) ^ v18)) ^ (8 * v17);
  v20 = a12 + (((v19 ^ 0x82) - 49) ^ ((v19 ^ 5) + 74) ^ ((v19 ^ 0x2F) + 100));
  v21 = *(v15 + 4 * (v20 - 50));
  v22 = *(*(&off_1010A0B50 + (v16 ^ 0x7971)) + 4 * ((((((v17 + BYTE4(a12)) ^ 0x39) + 59) ^ (v17 + BYTE4(a12)) ^ (((v17 + BYTE4(a12)) ^ 0x2B) + 41) ^ (((v17 + BYTE4(a12)) ^ 0x33) + 49)) ^ (((v17 + BYTE4(a12)) ^ 0xDD) + 95)) & 0x7F ^ 0x7Cu) - 1194123443) + 596562591;
  v23 = ((2 * (v22 ^ 0x9E751C90)) ^ 0x4D2E8C5C) & (v22 ^ 0x9E751C90) ^ (2 * (v22 ^ 0x9E751C90)) & 0x2697462E;
  v24 = (v23 ^ 0x4020408) & (4 * ((v22 ^ 0xBEF118BC) & (2 * (v22 & 0xB8E25ABE)) ^ v22 & 0xB8E25ABE)) ^ (v22 ^ 0xBEF118BC) & (2 * (v22 & 0xB8E25ABE)) ^ v22 & 0xB8E25ABE;
  v25 = ((4 * (v23 ^ 0x22914222)) ^ 0x9A5D18B8) & (v23 ^ 0x22914222) ^ (4 * (v23 ^ 0x22914222)) & 0x26974628;
  v26 = (v25 ^ 0x2150020) & (16 * v24) ^ v24;
  v27 = ((16 * (v25 ^ 0x24824606)) ^ 0x697462E0) & (v25 ^ 0x24824606) ^ (16 * (v25 ^ 0x24824606)) & 0x26974620;
  v28 = v26 ^ 0x2697462E ^ (v27 ^ 0x20144200) & (v26 << 8);
  v29 = (v28 << 16) & 0x26970000 ^ v28 ^ ((v28 << 16) ^ 0x462E0000) & (((v27 ^ 0x683040E) << 8) & 0x26970000 ^ 0x20910000 ^ (((v27 ^ 0x683040E) << 8) ^ 0x17460000) & (v27 ^ 0x683040Eu));
  return (*(v14 + 8 * ((14 * ((v22 ^ (2 * v29)) != -104802590)) ^ v16)))(a1, v29, *(v15 + 4 * (v20 - 51)), v22 ^ (2 * v29), 557842432, *(v15 + 4 * (v20 - 52)), v21 | ((v21 < 0x2F90469D) << 32), a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100293320()
{
  v2 = STACK[0x2B8];
  *(v1 - 132) = LODWORD(STACK[0x2AC]) ^ 0x36A255FC;
  *(v1 - 136) = (v2 + 232918359) ^ LODWORD(STACK[0x2B4]);
  *(v1 - 128) = LODWORD(STACK[0x2A8]) ^ 0x4D11698E;
  *(v1 - 140) = LODWORD(STACK[0x2B0]) ^ 0x347D3CE6;
  return (*(v0 + 8 * v2))();
}

uint64_t sub_1002934A0(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v8 = *(STACK[0xF18] + 8 * v5);
  STACK[0xED0] = v4 & 0xFFFFFFF8;
  return v8(vdupq_n_s64(0xFFFFFFFFFFFFFFF8), vdupq_n_s64(0x38uLL), vdupq_n_s64(v7), vdupq_n_s64(v3), vdupq_n_s64(a1), vdupq_n_s64(a2), vdupq_n_s64(a3), vdupq_n_s64(v6));
}

uint64_t sub_100293574()
{
  v3 = STACK[0x3E50];
  LODWORD(STACK[0x10EE0]) = (v1 - 846723123) ^ (155453101 * ((2 * ((&STACK[0x10000] + 3800) & 0x28E3BB50) - (&STACK[0x10000] + 3800) - 686013269) ^ 0x313A5F64));
  STACK[0x10ED8] = v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 + 23753)))(&STACK[0x10ED8]);
  v6 = *(v0 + 32);
  STACK[0xA738] = v6;
  v7 = STACK[0x7690];
  STACK[0x4B60] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = v7 + 32;
  if (STACK[0x3A70])
  {
    v8 = LODWORD(STACK[0x8188]) == v2;
  }

  else
  {
    v8 = 1;
  }

  v10 = !v8 && v6 != 0;
  return (*(v4 + 8 * ((v10 * (1707 * ((v1 + 1432383781) & 0xAA9FAB3F ^ 0x8B3E) - 8499)) ^ v1)))(v5);
}

uint64_t sub_100293794()
{
  v3 = *(v0 + 4);
  v4.i64[0] = 0xBEBEBEBEBEBEBEBELL;
  v4.i64[1] = 0xBEBEBEBEBEBEBEBELL;
  v5 = vmvnq_s8(vandq_s8(vaddq_s8(v3, v3), v4));
  v4.i64[0] = 0x6060606060606060;
  v4.i64[1] = 0x6060606060606060;
  *(v2 + 52) = vaddq_s8(vaddq_s8(v3, v4), v5);
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1002937D0@<X0>(int a1@<W8>)
{
  v4 = *(*v1 + 72 * (v3 - 0x776944550C1D5F35) + 8);
  v5 = (((v4 ^ 0xB3AF1573) + 1280371341) ^ ((v4 ^ 0xFDBBAFE6) + 38031386) ^ (a1 + 4211 + (v4 ^ 0xA7C17D84) + ((a1 + 1788399519) & 0x95673BFF) + 1480464350)) - 1304673481;
  v6 = v5 < 0xC8667C26;
  v7 = v2 - 1906149805 < v5;
  if ((v2 - 1906149805) < 0xC8667C26 != v6)
  {
    v7 = v6;
  }

  return (*(STACK[0xF18] + 8 * ((38002 * v7) ^ a1)))();
}

uint64_t sub_1002939DC@<X0>(int a1@<W1>, uint64_t a2@<X2>, int a3@<W6>, int a4@<W7>, int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, int a9, unsigned int a10, uint64_t a11)
{
  v23 = (v20 + 22495) & 0x218;
  v24 = ((v21 ^ 0x2382) - 11848 + ((v20 + 22495) & 0x23)) ^ v23;
  v25 = (v20 + 22495) ^ 0xA822;
  v26 = ((v20 + 22495) ^ (2 * (((v20 + 22495) ^ 0x2822) & (2 * (((v20 + 22495) ^ 0x2822) & (2 * (((v20 + 22495) ^ 0x2822) & (2 * (((v20 + 22495) ^ 0x2822) & (2 * (((v20 + 22495) ^ 0x2822) & (2 * (v25 & (2 * (v25 & (2 * (v25 & (2 * (v25 & (2 * (v25 & (2 * (v25 & (2 * (v25 & (2 * (v25 & (2 * (((v20 + 22495) ^ 0x2022) & (2 * (v24 & 0x133F ^ v23)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24)));
  v27 = a3 ^ __ROR4__(v22, 15) ^ ((*(a11 + (a3 ^ v16) % 0x19) ^ 0x5F) << ((v26 ^ 0xCB) & 0xF6 ^ 0xF0) << ((v26 ^ 0xCB) & 9));
  v28 = ((v27 ^ 0x55A77F77) - (v27 ^ 0x55A77F77u) / 0xFFF1 * a1) * v19;
  v29 = v28 - ((((v28 * v17) >> 32) >> 15) | (((v28 * v17) >> 32) >> 15 << 16)) + (-3 * (v18 + 3) - v11 + ((4 * (v26 ^ 0xA383DCB)) ^ 0xD71F203F)) * a5 - 1202721908;
  v30 = (((((v27 ^ 0x55A77F77u) * v14) >> 32) >> 16) + (a4 + 13 * (((v26 ^ 0x67BA9BFF) - 1837278772) ^ ((v26 ^ 0xFE8ED8A0) + 189340309) ^ ((v26 ^ 0x99344964) + 1827900241))) * a5) * v13 + 2010078244;
  v31 = ((v27 ^ 0x55A77F77u) % 0xF1FD + ((7 * (((v26 ^ 0xC3097202) + 919515191) ^ ((v26 ^ 0x9C32E418) + 1777673773) ^ ((v26 ^ 0x5F3B9C21) - 1426301418)) + 1200195472) % 0x43 + 4 * (v18 + 3)) * a5) * v13 + 131483623;
  v32 = (v29 - ((((v29 * v14) >> 32) >> 16) | (((v29 * v14) >> 32) >> 16 << 16))) ^ v27 ^ ((v30 - ((((v30 * v14) >> 32) >> 16) | (((v30 * v14) >> 32) >> 16 << 16))) * a1) ^ __ROR4__(v31 - ((((v31 * v14) >> 32) >> 16) | (((v31 * v14) >> 32) >> 16 << 16)), v18 + 4);
  v33 = v32 ^ 0x79C05059;
  if (v18 >= 0xC)
  {
    v34 = -12;
  }

  else
  {
    v34 = 7;
  }

  v35 = ((v34 + v18) ^ 0xDF) + 2 * (v34 + v18) - 34;
  v36 = (2 * (v35 & 0x46)) & (v35 ^ 0x5D) ^ v35 & 0x46 ^ ((2 * (v35 & 0x46)) & 8 | 0x10);
  v37 = (2 * (v35 ^ 0x5D)) & 0x1A ^ 9 ^ ((2 * (v35 ^ 0x5D)) ^ 0x36) & (v35 ^ 0x5D);
  v38 = (4 * v36) & 0x18 ^ v36 ^ ((4 * v36) ^ 0x40) & v37;
  v39 = v35 ^ (2 * ((16 * v38) & 0x10 ^ v38 ^ (16 * v38) & ((4 * v37) & 0x18 ^ 0x13 ^ ((4 * v37) ^ 0x6C) & v37) ^ 0xB));
  if (v20 >= 0xC)
  {
    v40 = -12;
  }

  else
  {
    v40 = 5;
  }

  v41 = (v32 ^ 0x55A77F77) >> ((v39 ^ 0x73) & 0x2C) >> ((v39 ^ 0x73) & 0xD3 ^ 3);
  v42 = 0x1F5F3800FAF9C1 * (((v33 ^ 0x736EEB71B198E158) - 0x736EEB71B198E158) ^ ((v33 ^ 0x940F0F0E438B8CF7) + 0x6BF0F0F1BC747309) ^ ((v33 ^ 0xE761E47FDE744281) + 0x189E1B80218BBD7FLL)) - 0x6267E211CE20AF2CLL;
  v43 = v42 ^ ((v42 ^ 0xD2F80A4AE3B10C8ELL) - 0x373E3B82ABF40DA8) ^ ((v42 ^ 0xB3ECE8F3EDC3C202) - 0x562AD93BA586C324) ^ ((v42 ^ 0x5B2AAE94ACD01004) + 0x411360A31B6AEEDELL) ^ ((v42 ^ 0xDFF87DE5EAE7DFAELL) - 0x3A3E4C2DA2A2DE88);
  v44 = ((v43 ^ 0x6E29899840ECD01CLL) + 0x1436115B540B7900) ^ ((v43 ^ 0x5395A098C329C9F9) + 0x298A385BD7CE611BLL);
  v45 = (v15 + 1300322878 + __CFADD__(2089 * (v44 ^ ((v43 ^ 0xD87A18C8CB8018C3) - 0x5D9A7FF420984FDFLL)), 0x98DB924914A49F4ALL) + (((v44 ^ ((v43 ^ 0xD87A18C8CB8018C3) - 0x5D9A7FF420984FDFLL)) * 0x829uLL) >> 64) + 2089 * ((__CFADD__(v43 ^ 0x6E29899840ECD01CLL, 0x1436115B540B7900) - 1) ^ (__CFADD__(v43 ^ 0x5395A098C329C9F9, 0x298A385BD7CE611BLL) - 1) ^ (__CFADD__(v43 ^ 0xD87A18C8CB8018C3, 0xA265800BDF67B021) - 1)) + 1601420141) % a10;
  v46 = (a2 + 4878 - 25 * ((((18351 * (a2 + 4878)) >> 16) + (((a2 + 4878 - ((18351 * (a2 + 4878)) >> 16)) & 0xFFFE) >> 1)) >> 4));
  v47 = *(a11 + v46);
  *(a11 + v46) = v47 ^ v41 ^ *(a8 + v45 + 4);
  return (*(v12 + 8 * v21))(v47, 67, a2, 25, a10, v20 + 882441134 + v40);
}

uint64_t sub_1002941B4@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v12 = v10 - 1;
  *(a3 + v12) = *(v5 + v12) ^ *(v6 + (v12 & 0xF)) ^ *((v12 & 0xF) + v7 + 1) ^ ((v12 & 0xF) * a1) ^ *((v12 & 0xF) + v8 + 2) ^ a1;
  return (*(v11 + 8 * ((30 * (v12 == (v3 + v9) + a2)) ^ v4)))();
}

uint64_t sub_100294218@<X0>(int a1@<W8>)
{
  v5 = *(v3 + 8 * ((38769 * (a1 == ((((v1 + 2094) | 0x8000) - 371921838) ^ (v1 + 14223)))) ^ v1));
  *(v4 - 240) = v2;
  *(v4 - 236) = a1;
  return v5();
}

uint64_t sub_1002942B0()
{
  LODWORD(STACK[0x6090]) = 371891397;
  STACK[0x6690] = 0;
  LODWORD(STACK[0x2D2C]) = -90188130;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1002943DC()
{
  LODWORD(STACK[0x10ED8]) = (v1 + 1877391092) ^ (155453101 * ((&STACK[0x10000] + 3800) ^ 0xE6261BCF));
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 37237)))(&STACK[0x10ED8]);
  *(v0 + 112) = LODWORD(STACK[0x10EE0]) ^ (v1 - 1568728471);
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1002944A4()
{
  v1 = (((v0 ^ 0xD13731C0) + 1699034) ^ ((v0 ^ 0x995505CC) + 1216075990) ^ (((STACK[0xF10] - 33450) ^ 0x5E480472) + (v0 ^ 0x8F66D1FB))) - 489098770;
  v2 = (((LODWORD(STACK[0xB92C]) ^ 0xAB980A70) + 1416099216) ^ ((LODWORD(STACK[0xB92C]) ^ 0x95A8A2A1) + 1784110431) ^ ((LODWORD(STACK[0xB92C]) ^ 0xD7E56FC0) + 672829504)) - 489098770;
  v3 = v1 < 0xF9032ADD;
  v4 = v1 > v2;
  if (v3 != v2 < 0xF9032ADD)
  {
    v4 = v3;
  }

  return (*(STACK[0xF18] + 8 * ((28 * !v4) ^ (STACK[0xF10] - 9137))))();
}

uint64_t sub_1002945C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16)
{
  v25 = (*(a16 + 4 * v22) ^ 0x36DFEE05) * *(a12 + 16);
  *(v24 - 112) = (v25 ^ 0xFF5AEF79) - v18 + ((2 * v25) & 0xFEB5DEF2) + 2145875935;
  *(v24 - 104) = &a15;
  *(v24 - 120) = v19;
  *(v24 - 128) = (((v23 | 0x15E0) ^ v22 ^ 0x3FBEE31C) + ((2 * v22) & 0x7F7DFDF8) - 18395148) ^ v18;
  *(v24 - 124) = v20;
  v27 = (*(v17 + 8 * v16))(v24 - 128);
  return (*(v17 + 8 * ((70 * (v22 + 1 == a4)) ^ v21)))(v27);
}

uint64_t sub_1002946E4()
{
  v1 = (STACK[0xF10] + 1921609602) & 0x8D767DEF;
  v2 = STACK[0xF10] - 20160;
  v3 = STACK[0x8C08];
  v4 = STACK[0x2568];
  *(v4 + 40) = *(STACK[0x8C08] - 0x20DE4F5147E73169);
  v5 = *(v3 - 0x20DE4F5147E73159);
  v6 = STACK[0x2730];
  *(v4 + 48) = v5;
  *(v4 + 56) = v6;
  *(v4 + 64) = STACK[0x18F0];
  *(v4 + 72) = 0;
  if ((*(STACK[0xAAF8] + 64) ^ v5) == v1 + 0x981390C2FED1999)
  {
    v7 = STACK[0xAB44];
  }

  else
  {
    v7 = 371891450;
  }

  return (*(STACK[0xF18] + 8 * ((28355 * (v7 == v0)) ^ v2)))();
}

uint64_t sub_100294830()
{
  *(v1 + 88) = 0;
  v2 = (((v0 ^ 0xFAE4) + v0 - 5096 - 61570) & STACK[0x783C]) == 0;
  return (*(STACK[0xF18] + 8 * ((v2 | (16 * v2)) ^ v0)))();
}

uint64_t sub_100294890()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 2319)))();
}

uint64_t sub_100294A4C()
{
  v1 = STACK[0xF18];
  STACK[0x3058] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 8545 + (v0 ^ 0x32A9))))();
}

uint64_t sub_100294BB8()
{
  v1 = 2300 * (STACK[0xF10] ^ 0x8B2E);
  v2 = STACK[0xF10] - 16047;
  STACK[0x26D0] = v0;
  return (*(STACK[0xF18] + 8 * (((v1 - 48256) * (v0 == 0)) ^ v2)))();
}

uint64_t sub_100294D28@<X0>(int a1@<W8>)
{
  v3 = (((a1 ^ 0xA5E47D0) - 173985147 + (v1 ^ 0xE24D)) ^ ((a1 ^ 0x1B38DB48) - 456710984) ^ ((a1 ^ 0xF8B336EA ^ (41 * (v1 ^ 0x654D))) + 122463351)) + 1084363678;
  v4 = ((v3 ^ 0xB7F85D2A) + 516681333) ^ v3 ^ ((v3 ^ 0x3EF03575) - 1748793812) ^ ((v3 ^ 0x723B9B03) - 620222370) ^ ((v3 ^ 0xADFFBFFD) + 80481444);
  LODWORD(STACK[0x610]) = v4 ^ 0xBF198BB0;
  v5 = (*(v2 + 8 * (v1 ^ 0xAD7E)))(v4 ^ 0x56CC4CA1);
  STACK[0x608] = v5;
  return (*(v2 + 8 * ((v5 != 0) | (8 * (v5 != 0)) | v1)))();
}

uint64_t sub_100294EF4()
{
  STACK[0x10EE8] = &STACK[0x3564];
  LOWORD(STACK[0x10EE0]) = 23473 * ((~(&STACK[0x10000] + 3800) & 0x9663 | (&STACK[0x10000] + 3800) & 0x6998) ^ 0x5B47) + 18064;
  LODWORD(STACK[0x10ED8]) = ((v0 ^ 0x883A) + 12324) ^ (906386353 * ((~(&STACK[0x10000] + 3800) & 0xCF9663 | (&STACK[0x10000] + 3800) & 0xFF306998) ^ 0x31CE5B47));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * ((v0 ^ 0x883A) + 51120)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (v0 ^ 0x167B ^ (((v0 ^ 0x883A) + 34559) | 0x13B))))(v2);
}

uint64_t sub_100294FBC()
{
  STACK[0x86C8] = v1 + 640 * v2 + 592;
  v4 = STACK[0x7690];
  v5 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x6FC0] = v5;
  *(v0 + 212) = v5 + 100;
  STACK[0x4930] = (v5 + 120);
  STACK[0x7690] = (((v3 - 1479) | 0x37u) ^ 0x167) + v4;
  STACK[0x4FD8] = STACK[0xEB0];
  LODWORD(v4) = 634647737 * ((((&STACK[0x10000] + 3800) ^ 0x3F9F3C14) - 2 * (((&STACK[0x10000] + 3800) ^ 0x3F9F3C14) & 0x6062F260) + 1617097315) ^ 0x326BE18B);
  LODWORD(STACK[0x10ED8]) = v4 - 1431125373;
  STACK[0x10EE0] = v5;
  LODWORD(STACK[0x10EE8]) = v3 - v4 + 19056;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v3 + 50042)))(&STACK[0x10ED8]);
  STACK[0x2630] = *(v6 + 8 * v3);
  return (*(v6 + 8 * (v3 ^ 0x3FAB)))(v7, (v3 - 1479) | 0x37u);
}

uint64_t sub_1002952D4()
{
  STACK[0x4498] = v1 + 1256;
  v2 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * ((v0 + 3947) ^ v0)))();
}

uint64_t sub_100295610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  *(v53 - 256) = v50;
  *(v53 - 184) = v52;
  *(v53 - 136) = (HIDWORD(a26) - 216864747);
  return (*(v51 + 8 * (((v49 ^ 0x7745) * (HIDWORD(a26) != 216864747)) ^ v49)))(3913829194, 3271688352, 75, 6, 103, 2161827132, 9477149, 57373940, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a6);
}

uint64_t sub_1002956D8@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v6 = 1022166737 * ((2 * ((v5 - 200) & 0x6090EA70) - (v5 - 200) + 527373706) ^ 0xA57FF418);
  *(v5 - 200) = STACK[0x270];
  *(v5 - 184) = v2;
  *(v5 - 192) = v3 - v6 + 6708;
  *(v5 - 188) = ((v4 ^ 0xFEFFEF7A) + 859757256 + (((3 * (v3 ^ 0x47D7)) ^ 0xFDFFC905) & a2)) ^ v6;
  v7 = (*(a1 + 8 * (v3 ^ 0x8C78)))(v5 - 200);
  return (*(STACK[0x2F0] + 8 * v3))(v7);
}

uint64_t sub_100295904()
{
  v1 = STACK[0xF18];
  STACK[0x3058] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 8536 + v0 + 11872)))();
}

uint64_t sub_100295940(unsigned int *a1)
{
  *(a1 + v1 + 4) = 0;
  *a1 = v1;
  return (*(v2 + 8 * v3))();
}

uint64_t sub_100295A7C(uint64_t a1, uint64_t a2, int a3)
{
  *(v3 + 108) = 1;
  *(v3 + 80) = 1;
  v5 = *(STACK[0xF18] + 8 * ((((v4 + 2281) | 0x1082) ^ 0xA23D) + v4 - 29475));
  LODWORD(STACK[0xEC0]) = a3;
  return v5();
}

uint64_t sub_100295B1C()
{
  LODWORD(STACK[0x4D4]) = v0;
  LODWORD(STACK[0x4D0]) = 371891406;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_100295B84()
{
  v3 = *(STACK[0x200] + 72 * STACK[0x378] + 44);
  v4 = (((v1 ^ 0xA85AF940) + 1470432960) ^ ((v1 ^ 0xFC0E7AF5) + 66159883) ^ ((v1 ^ 0xBD8144A4) + 1115601756)) - 24705773;
  v5 = (((v3 ^ 0x78BE1A1F) - 2025724447) ^ ((v3 ^ 0x9F69DBC5) + 1620452411) ^ ((v3 ^ 0xE0206CB) - 235013835)) - 24705773;
  v6 = v4 < 0x14B13E02;
  v7 = v4 > v5;
  if (v6 != v5 < 0x14B13E02)
  {
    v7 = v6;
  }

  return (*(v2 + 8 * ((48145 * v7) ^ v0)))();
}

uint64_t sub_100295F08()
{
  v1 = STACK[0xF10] - 4846;
  v2 = (((LODWORD(STACK[0x9890]) ^ 0xBA6EE65E) + 1167137186) ^ ((LODWORD(STACK[0x9890]) ^ 0xD66844ED) + 697809683) ^ ((LODWORD(STACK[0x9890]) ^ 0x85D365A2) + 2049743454)) - 743731678 + (((v0 ^ 0xD22AC5CE) + 768948786) ^ ((v0 ^ 0x6CEB35F0) - 1827354096) ^ ((v0 ^ ((STACK[0xF10] - 13975) | 0x2110) ^ 0x5714429B) - 1460942639));
  *STACK[0x2B78] = v2 % 0x2710 - ((2 * (v2 % 0x2710)) & 0x1264) + 1540393266;
  v3 = STACK[0x95C4];
  STACK[0x7690] -= 1616;
  return (*(STACK[0xF18] + 8 * ((54927 * (v3 == -371865839)) ^ v1)))();
}

uint64_t sub_1002960EC(uint64_t a1, uint64_t a2)
{
  v3 = *STACK[0x5B80];
  STACK[0x3A58] = 0;
  LODWORD(STACK[0x4510]) = -371865839;
  STACK[0x2840] = 0x189799C7B53DFB1BLL;
  return (*(STACK[0xF18] + 8 * (((v3 == 0) * (v2 ^ 0x8B21)) ^ (v2 + 1477))))(a1, a2, 371891400);
}

void sub_10029632C(unint64_t a1)
{
  v1 = 634647737 * ((~a1 & 0xB473C49E7E71E295 | a1 & 0x4B8C3B61818E1D6ALL) ^ 0x6EA86B7113E7CD69);
  v4 = *(a1 + 8) == 0x217E172EFA1E81CLL || *(a1 + 24) == 0 || *a1 - v1 == 0x3DA5F2C5EB179B99;
  __asm { BRAA            X11, X17 }
}

uint64_t sub_100296460@<X0>(uint64_t a1@<X8>)
{
  *v3 = v4;
  v6 = *(a1 + 8);
  v7 = v6 + v1;
  if (v6 + v1 < 0)
  {
    v7 = v6 - 0x3CE25E0EC5200375;
  }

  v8 = (*(&STACK[0x248] + ((v2 ^ 0x45u) & LOBYTE(STACK[0x248]))) % (((v7 >> 2) - ((2 * (v7 >> 2)) & 0xCC5F5F46) + (v2 ^ 0xC0170670) + 639140717) ^ 0xE62FAFA3) + 43) & 0x1FC;
  v9 = (v6 ^ 0xB8DFF80D) & (2 * (v6 & 0x3ADFFC88)) ^ v6 & 0x3ADFFC88;
  v10 = ((2 * (v6 ^ 0xB9F6311D)) ^ 0x6539B2A) & (v6 ^ 0xB9F6311D) ^ (2 * (v6 ^ 0xB9F6311D)) & 0x8329CD94;
  v11 = v10 ^ 0x81284495;
  v12 = (v10 ^ 0x2018000) & (4 * v9) ^ v9;
  v13 = ((4 * v11) ^ 0xCA73654) & v11 ^ (4 * v11) & 0x8329CD94;
  v14 = (v13 ^ 0x210400) & (16 * v12) ^ v12;
  v15 = ((16 * (v13 ^ 0x8308C981)) ^ 0x329CD950) & (v13 ^ 0x8308C981) ^ (16 * (v13 ^ 0x8308C981)) & 0x8329CD90;
  v16 = v6 ^ (2 * ((((v15 ^ 0x81210485) << 8) & 0x3290000 ^ 0x1090000 ^ (((v15 ^ 0x81210485) << 8) ^ 0x29CD0000) & (v15 ^ 0x81210485)) & (((v15 ^ 0x208C900) & (v14 << 8) ^ v14) << 16) ^ (v15 ^ 0x208C900) & (v14 << 8) ^ v14));
  return (*(v5 + 8 * ((38013 * ((((v16 ^ 0x9F2C1F8C) + 869799475) ^ ((v16 ^ 0xFC354D9E) + 1354843169) ^ ((v16 ^ 0x59C6AE9A) - 181229787)) - (((v8 ^ 0x18F5E39B) + 746715867) ^ ((v8 ^ 0xBED0DA2E) - 1968913552) ^ ((v8 ^ 0xA62539B5) - 1840176907)) - 1639439374 < 0x7FFFFFFF)) ^ v2)))();
}

void sub_1002966F0(uint64_t a1)
{
  v1 = 353670337 * ((-2 - ((~a1 | 0x13EB2B2D) + (a1 | 0xEC14D4D2))) ^ 0xA7CAD310);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100296858()
{
  v0 = 57 * (STACK[0xF10] ^ 0x8B5C);
  v1 = STACK[0xF10] - 33879;
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x6E8) + v1)))();
}

uint64_t sub_100296968@<X0>(int a1@<W0>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X4>, char a5@<W6>, uint64_t a6@<X8>)
{
  v19 = (a6 + 4 * v18);
  v20 = *(v19 - 1);
  v21 = v9 ^ *(v18 + *(v6 + 8 * v10) - 774044350) ^ *(*(v6 + 8 * a2) + 4 * BYTE1(v20) - 1510367267) ^ *(*(v6 + 8 * a1) + 4 * (v20 >> a5) - 1058383167) ^ (*(*(v6 + 8 * a3) + 2 * v20 + a4) + v11) ^ v16 ^ ((*(*(v6 + 8 * v12) + (v20 >> 24) + v13) - 114) - (v14 & (2 * (*(*(v6 + 8 * v12) + (v20 >> 24) + v13) - 114))) + v15);
  v22 = *(v19 - 2);
  v23 = v21 ^ *(v19 - 3);
  *v19 = v21;
  v19[1] = v23;
  v24 = v23 ^ v22;
  v19[2] = v24;
  v19[3] = v24 ^ v20;
  return (*(v7 + 8 * (((v18 == 40) * v17) ^ v8)))();
}

uint64_t sub_100296B30()
{
  v1 = STACK[0x7690];
  STACK[0x6BC0] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = v1 + 32;
  return (*(STACK[0xF18] + 8 * ((230 * (((109 * (v0 ^ 0x28)) ^ (STACK[0xA9A8] == 0)) & 1)) ^ v0)))();
}

uint64_t sub_100296DF4()
{
  STACK[0x29C0] = 0;
  STACK[0x4458] = 0x5ED04CA5846C1BA2;
  v1 = STACK[0xF18];
  STACK[0x3058] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 + 11886) ^ 0x21BA) + v0)))();
}

uint64_t sub_100296E50()
{
  v1 = STACK[0xED0];
  v2 = (LODWORD(STACK[0xED0]) - 1039445311) & 0x3DF4F7F3;
  LODWORD(STACK[0xEC0]) = v2;
  v3 = 193924789 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x4D633418) - 849136612) ^ 0x7BD8067A);
  LODWORD(STACK[0x10EDC]) = (v1 - 1588111746) ^ v3;
  LODWORD(STACK[0x10ED8]) = ((((v0 ^ 0xC64F08C7) + 967898937) ^ ((v0 ^ 0x8F78E5F) - 150441567) ^ (((8 * (v2 ^ 0xD2B3)) ^ 0xD8921E67) + (v0 ^ 0x276D4189))) + 254242934) ^ v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 + 20299)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * ((LOBYTE(STACK[0x10EE0]) == 86) | (2 * (LOBYTE(STACK[0x10EE0]) == 86)) | v1)))(v5);
}

uint64_t sub_100296F78()
{
  v4 = (((v2 ^ 0x22B22E61) - 582102625) ^ ((v2 ^ 0x268D399D) - 646789533) ^ (((v0 - 2125374908) & 0x7EAE2EB7) + (v2 ^ 0xEDEAD0ED) + 303374444)) + 1181819770;
  v5 = (v4 ^ 0x23628355) & (2 * (v4 & 0xA364A396)) ^ v4 & 0xA364A396;
  v6 = ((2 * (v4 ^ 0x616B8151)) ^ 0x841E458E) & (v4 ^ 0x616B8151) ^ (2 * (v4 ^ 0x616B8151)) & 0xC20F22C6;
  v7 = v6 ^ 0x42012241;
  v8 = (v6 ^ 0x80060080) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0x83C8B1C) & v7 ^ (4 * v7) & 0xC20F22C4;
  v10 = (v9 ^ 0xC0200) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0xC20320C3)) ^ 0x20F22C70) & (v9 ^ 0xC20320C3) ^ (16 * (v9 ^ 0xC20320C3)) & 0xC20F22C0;
  v12 = v10 ^ 0xC20F22C7 ^ (v11 ^ 0x22000) & (v10 << 8);
  v13 = v4 ^ (2 * ((v12 << 16) & 0x420F0000 ^ v12 ^ ((v12 << 16) ^ 0x22C70000) & (((v11 ^ 0xC20D0287) << 8) & 0x420F0000 ^ 0x400D0000 ^ (((v11 ^ 0xC20D0287) << 8) ^ 0xF220000) & (v11 ^ 0xC20D0287))));
  LOBYTE(v11) = *(*(v1 + 24) + (v13 ^ 0x2374E618));
  *(STACK[0x608] + (v13 ^ 0x2374E618)) = v11 - ((2 * v11) & 0x74) - 70;
  return (*(v3 + 8 * ((105 * (v13 != 594863640)) | (v0 - 7829))))();
}

uint64_t sub_1002971D8()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 2333)))();
}

uint64_t sub_100297298()
{
  v1 = STACK[0xBA0];
  v2 = STACK[0xBA0] < 0x803873EC;
  v3 = STACK[0xF10] - 12185;
  v4 = (v0 ^ 0xE9D5C711) + STACK[0xCF0];
  STACK[0x9928] = v4 + 10;
  v4 -= 0x65357EE0D440BB11;
  v5 = v4 < 0x803873EC;
  v6 = v4 > v1;
  if (v2 == v5)
  {
    v5 = v6;
  }

  return (*(STACK[0xF18] + 8 * (v3 ^ (v5 ^ 1 | (16 * (v5 ^ 1))))))();
}

uint64_t sub_100297434()
{
  *(v3 - 152) = v1;
  *(v3 - 160) = (v2 + 1456338281) ^ (139493411 * ((((v3 - 160) | 0x27D956E) - ((v3 - 160) & 0x27D9568)) ^ 0xE50742B));
  v4 = (*(v0 + 8 * (v2 ^ 0xA9326D11)))(v3 - 160);
  return (*(v0 + 8 * (((v2 < 0xAF545E39) * ((v2 + 1456309242) ^ 0x66D3)) ^ (v2 + 1456298760))))(v4);
}

uint64_t sub_100297534@<X0>(int a1@<W8>)
{
  **(v5 + 624) = a1;
  *(v1 + 16) = v2;
  return (*(v4 + 8 * ((7102 * ((v3 - 1628337901) > 0x43B967F0)) ^ (v3 - 7723))))();
}

uint64_t sub_1002975E0()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 31066 + ((v0 + 994429490) & 0xC4BAABDE))))();
}

uint64_t sub_10029762C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0xA700] = (((v1 ^ 0x507A8D571B205FF7) - 0x507A8D571B205FF7) ^ ((v1 ^ 0xCD22388BCD48C4A1) + 0x32DDC77432B73B5FLL) ^ ((((v2 ^ 0x3E91u) - 18464) ^ 0x62A74A23C042E0A2) + (v1 ^ 0x9D58B5DC3FBD5C47))) + 0x2340EA5001CE0B08;
  *(a1 + 16) = (((v1 ^ 0x47D32F72) - 1205022578) ^ ((v1 ^ 0x71F3492B) - 1911769387) ^ ((v1 ^ 0xDFF5A148) + 537550520)) - 371865829;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 ^ 0x7F32)))();
  *(a1 + 24) = v5;
  return (*(v4 + 8 * ((69 * (v5 != 0)) ^ v2)))();
}

uint64_t sub_100297828()
{
  v1 = LODWORD(STACK[0x390C]) == v0 - 693552872 + ((v0 + 1336805182) & 0xB051F893);
  LOBYTE(STACK[0xA7EB]) = v1;
  return (*(STACK[0xF18] + 8 * ((38821 * v1) ^ (v0 - 2656))))();
}

uint64_t sub_100297930@<X0>(unsigned int a1@<W0>, int a2@<W5>, unint64_t a3@<X6>, unsigned int a4@<W8>)
{
  v12 = v4 > v7;
  v13 = (((a2 ^ a1) + v8) ^ a3) + ((v9 + 1) | ((v9 + 1 < a4) << 32)) + v10;
  v14 = v12 ^ (v13 < v5);
  v15 = v6 > v13;
  if (!v14)
  {
    v12 = v15;
  }

  return (*(STACK[0xF18] + 8 * ((!v12 * v11) ^ a2)))();
}

uint64_t sub_1002979E4@<X0>(uint64_t a1@<X8>)
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * (((a1 + 25314) ^ 0x742D) + a1)))();
}

uint64_t sub_100297A28()
{
  v3 = 155453101 * (&STACK[0x10ED8] ^ 0xBC775EF5E6261BCFLL);
  STACK[0x10EE0] = *(v0 - 0x7E666516A39B34A6);
  LOBYTE(STACK[0x10EE8]) = v3 + 56;
  STACK[0x10F00] = ((v2 ^ 0x78CAu) + 35599 - 0x3417D6BAA9BBF07ALL) ^ &STACK[0xF28];
  STACK[0x10F08] = (v1 ^ 0xE74734B2971F82B6) - v3;
  STACK[0x10EF0] = &STACK[0x890C];
  LODWORD(STACK[0x10EF8]) = v2 - v3 - 27283;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 ^ 0xB39D)))(&STACK[0x10ED8]);
  v6 = STACK[0x10ED8];
  LODWORD(STACK[0x9808]) = STACK[0x10ED8];
  return (*(v4 + 8 * (((v6 == -371865839) * (134 * (v2 ^ 0x78CA) - 5440)) ^ v2)))(v5);
}

uint64_t sub_100297C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22)
{
  v24 = v22 + 39852;
  v25 = (HIDWORD(a12) + 1287795307) ^ 0x2FFBBD90;
  v26 = (2 * ((HIDWORD(a12) + 1287795307) & 0x83893EA4)) & v25 ^ (HIDWORD(a12) + 1287795307) & 0x83893EA4 ^ ((2 * ((HIDWORD(a12) + 1287795307) & 0x83893EA4)) & 0x4120100 | 0x200);
  v27 = (v25 << (v22 - 8)) & 0xAC728334 ^ 0xA4128114 ^ (a22 ^ (v25 << (v22 - 8)) ^ 0x58E58273) & v25;
  v28 = (4 * v26) & 0xC608330 ^ v26 ^ v27 & ((4 * v26) ^ 0x800);
  v29 = (4 * v27) & 0xAC728334 ^ 0xC308324 ^ ((4 * v27) ^ 0xB1CA0CD0) & v27;
  v30 = v28 ^ (16 * v28) & 0xAC728330 ^ ((16 * v28) ^ 0x2000) & v29 ^ 0xAC728134;
  v31 = (16 * v29) & 0xAC728300 ^ 0x28528034 ^ ((16 * v29) ^ 0xC7283340) & v29;
  v32 = (v30 << 8) & 0xAC728300 ^ v30 ^ ((v30 << 8) ^ 0x72833400) & v31;
  v33 = (HIDWORD(a12) + 1287795307) ^ (2 * ((v32 << 16) & 0x2C720000 ^ v32 ^ ((v32 << 16) ^ 0x3340000) & ((v31 << 8) & 0x2C720000 ^ 0xC700000 ^ ((v31 << 8) ^ 0x72830000) & v31)));
  v35 = v33 != -1693959988 && (v33 & 0xF) == ((((v24 - 1339545910) & 0x4FD7959B) - 1652) ^ 0x7DAB);
  return (*(v23 + 8 * ((124 * v35) ^ v24)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t sub_100297DF8()
{
  v0 = STACK[0xF10] - 31525;
  v1 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1BF0 ^ (6271 * (v0 != 1489589938)))))();
}

uint64_t sub_1002980C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  STACK[0x7548] = a8;
  STACK[0x77B0] = &STACK[0x3EF0];
  LODWORD(STACK[0x648C]) = -1793982356;
  return (*(STACK[0xF18] + 8 * v8))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_100298108()
{
  v1 = STACK[0xF10] - 27143;
  v2 = STACK[0xF10] - 30565;
  *(STACK[0x7980] + 168) = v0;
  v3 = LODWORD(STACK[0x6134]) + (v1 ^ 0x2130);
  LODWORD(STACK[0x6134]) = v3;
  v4 = (((v0 ^ 0xF34581F5) + 213548555) ^ ((v0 ^ 0x752D1E65) - 1965891173) ^ ((v0 ^ 0x6FBD5881) - 1874679937)) + v3 + 430147373;
  v5 = v4 < 0x967859D0;
  v6 = v4 > LODWORD(STACK[0xB7EC]) - 1770497584;
  if (LODWORD(STACK[0xB7EC]) > 0x6987A62F != v5)
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((53 * !v6) ^ v2)))();
}

uint64_t sub_10029833C()
{
  STACK[0x7648] = (((((v0 - 12627) ^ LODWORD(STACK[0x93B4]) ^ 0x6DC297Bu) << 32) ^ 0xBBDFF0B463CBE7B5) & ((((v0 - 12885) | 0x102u) - 3923143309) ^ LODWORD(STACK[0x3CE4])) | STACK[0x3CE4] & 0x9C34184A) ^ 0x5D57ACE9C43275F3;
  STACK[0x2A30] = ((((LODWORD(STACK[0x8DEC]) ^ 0x8473AB9C) << 32) ^ 0x392D4742F90A4CEDLL) & (LODWORD(STACK[0x14D8]) ^ 0xFFFFFFFF146F18ECLL) | STACK[0x14D8] & 0x6F5B312) ^ 0x5D0A12C3D6325DBBLL;
  v1 = STACK[0x7690];
  STACK[0x31C0] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = v1 + 272;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762673919) ^ (906386353 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x31A1C858) - 1314797476) ^ 0x80A00578));
  STACK[0x10EE0] = 0;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0x7637)))(&STACK[0x10ED8]);
  if (*STACK[0x970])
  {
    v4 = 1;
  }

  else
  {
    v4 = *STACK[0x940] == 0;
  }

  v5 = v4;
  return (*(v2 + 8 * (v0 | (16 * v5))))(v3);
}

uint64_t sub_1002984F0@<X0>(int a1@<W8>)
{
  LOWORD(STACK[0x7CEE]) = 0;
  STACK[0x3BA8] = 0;
  return (*(STACK[0xF18] + 8 * ((((2 * a1) ^ 0x5FF2) - 5819) ^ a1)))();
}

uint64_t sub_100298588()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((v0 + 1726118702) & 0x991DE7FF ^ 0x74D9 | v0)))();
}

void sub_100298628()
{
  if (v0 == 578227515)
  {
    v1 = -371865839;
  }

  else
  {
    v1 = 371891401;
  }

  *(v2 + 36) = v1;
}

uint64_t sub_10029868C@<X0>(int a1@<W7>, unsigned int a2@<W8>)
{
  v5 = *(v3 + 48 * v2 + 36);
  v6 = v5 + 644300897 < a1;
  if (a1 < -1187316578 != v5 + 644300897 < (((a2 - 1241799798) & 0x4A043FDF) - 1187321711))
  {
    v6 = a1 < -1187316578;
  }

  v7 = v5 != 315866172 && v6;
  return (*(v4 + 8 * ((v7 | (4 * v7)) ^ a2)))();
}

uint64_t sub_100298774()
{
  LODWORD(STACK[0x838]) = v2;
  LODWORD(STACK[0x4DC]) += (573 * (v0 ^ 0x3EB0)) ^ 0x3EA4;
  LODWORD(STACK[0x4D8]) = v1;
  return (*(v3 + 8 * (v0 ^ 0x25E0)))();
}

uint64_t sub_100298820(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v16 = (((*(v15 + 16) ^ 0x71B29536) - 1907529014) ^ ((*(v15 + 16) ^ 0x8C87ED97) + 1937248873) ^ ((v13 ^ a1) - 350314422 + (*(v15 + 16) ^ 0x14E0BFB0))) + 1066710807;
  v17 = (((a13 ^ 0xDF378001) + 550010879) ^ ((a13 ^ 0x7F231068) - 2133004392) ^ ((a13 ^ 0x49C1792E ^ (2 * v13) ^ 0x10ABA) - 1237407608)) + 1066710807;
  v18 = v16 < 0x55BEF006;
  v19 = v16 > v17;
  v20 = v18 ^ (v17 < 0x55BEF006);
  v21 = v19;
  if (v20)
  {
    v22 = v18;
  }

  else
  {
    v22 = v21;
  }

  return (*(v14 + 8 * ((12315 * v22) ^ v13)))();
}

void sub_100298C30(uint64_t a1)
{
  v1 = *(a1 + 24) + 17902189 * ((a1 - 2 * (a1 & 0xB64DEF1A) - 1236406502) ^ 0x3802F90A);
  __asm { BRAA            X11, X17 }
}

void sub_100298E28(uint64_t a1@<X8>)
{
  if (v1 + 1105110723 >= 0)
  {
    v3 = 2102173152 - v2;
  }

  else
  {
    v3 = v2;
  }

  *(a1 + 4) = v3;
}

void sub_100298ED0()
{
  if (v0 == 1626226001)
  {
    v2 = -371865839;
  }

  else
  {
    v2 = 371891401;
  }

  *(v1 + 12) = v2;
}

uint64_t sub_100298F48()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((14344 * ((v0 ^ 0xA85FB600 ^ (v0 + 25423)) < 0x2DEA97AC)) ^ (v0 | 0x13C2))))();
}

uint64_t sub_1002990E4()
{
  v1 = STACK[0xF10] - 34960;
  *STACK[0xB718] = v0;
  return (*(STACK[0xF18] + 8 * (v1 ^ 0x27FC)))();
}

uint64_t sub_1002991F4()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 34715;
  v2 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 - 30448) | v1)))();
}

uint64_t sub_100299288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>)
{
  v23 = ((a9 + v9) ^ v11) + v16;
  v24 = v12 + v23 + v13;
  v25 = __ROR8__(v24 & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = (v14 | (2 * (v25 + v20))) - (v25 + v20) + a1;
  v27 = __ROR8__(v26 ^ a2, 8);
  v28 = v26 ^ a3;
  v29 = (v27 + v28) ^ v19;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ v18;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ v21;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ v22;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = ((a4 | (2 * (v37 + v36))) - (v37 + v36) + a5) ^ a6;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ v17;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v40, 8);
  *v24 = (((a7 | (2 * (v42 + v41))) - (v42 + v41) + a8) ^ v15) >> (8 * (v24 & 7u));
  return (*(STACK[0xF18] + 8 * ((112 * (v23 != 0)) ^ v10)))();
}

uint64_t sub_1002993B8()
{
  v2 = *(v1 + 36);
  *(v1 + 124) = 1979949814;
  return (*(STACK[0xF18] + 8 * (((v2 == -371865834) * ((v0 - 7441) ^ 0x75F3)) ^ v0)))();
}

uint64_t sub_1002995CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] - 30181;
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x7370];
  STACK[0x5D28] = &STACK[0x57E0];
  LODWORD(STACK[0x4704]) = -1679562030;
  return (*(STACK[0xF18] + 8 * v7))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_1002996E4()
{
  v1 = STACK[0xF10] - 1822;
  LODWORD(STACK[0x4EBC]) = v0;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100299708()
{
  v0 = 3 * (STACK[0xF10] ^ 0x8C9E);
  v1 = STACK[0xF10] - 33695;
  *(STACK[0x1E30] + 40) = LODWORD(STACK[0x9894]) ^ 0x981390CC6385557;
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 - 1400) ^ v1)))();
}

uint64_t sub_1002998D8@<X0>(int a1@<W8>)
{
  v2 = 0x3D226357E16ECE6 * (((*(v1 + 23) ^ 0x7E064E004C94C483) - 0x7E064E00B7CF66D6) ^ ((*(v1 + 23) ^ 0x5D72F2D318B5ACACLL) + 0x228D0D2C1C11F107) ^ (((a1 - 17017) ^ 0x649Du) + 0x5C8B432C5085109BLL + (*(v1 + 23) ^ 0x2374BCD354216870))) - 0x511B7DAF379FB70BLL;
  v3 = (2 * (v2 & 0x7B2321FC5E308406)) & 0x4242802C200004 ^ v2 & 0x7B2321FC5E308406 ^ ((2 * (v2 & 0x7B2321FC5E308406)) | 2) & (v2 ^ 0x7B58D77B338485E2);
  v4 = (2 * (v2 ^ 0x7B58D77B338485E2)) & 0x7BF6876DB401E4 ^ 0x8128124940025 ^ ((2 * (v2 ^ 0x7B58D77B338485E2)) ^ 0xF7ED0EDB6803CALL) & (v2 ^ 0x7B58D77B338485E2);
  v5 = (4 * v3) & 0x19868369840020 ^ v3 ^ ((4 * v3) | 4) & v4;
  v6 = (4 * v4) & 0x7BF6876DB401E4 ^ 0x10248249240061 ^ ((4 * v4) ^ 0x1EFDA1DB6D00794) & v4;
  v7 = (16 * v5) & 0x7BF6876DB401E0 ^ v5 ^ ((16 * v5) ^ 0x50) & v6;
  v8 = (16 * v6) & 0x7BF6876DB401C0 ^ 0x40968124B401A5 ^ ((16 * v6) ^ 0x7BF6876DB401E50) & v6;
  v9 = (v7 << 8) & 0x7BF6876DB40100 ^ v7 ^ ((v7 << 8) ^ 0x4500) & v8;
  v10 = (v8 << 8) & 0x7BF6876DB40100 ^ 0x9708249B400E5 ^ ((v8 << 8) ^ 0x7BF6876DB401E500) & v8;
  v11 = v9 ^ (v9 << 16) & 0x7BF6876DB40000 ^ ((v9 << 16) ^ 0x1450000) & v10 ^ 0x7BF6876CB000A0;
  v12 = v2 ^ (2 * ((v11 << 32) & 0x7BF68700000000 ^ v11 ^ ((v11 << 32) ^ 0x6DB401E500000000) & ((v10 << 16) & 0x7BF68700000000 ^ 0x78920300000000 ^ ((v10 << 16) ^ 0x76876DB400000000) & v10)));
  v13 = ((v12 ^ 0x9EFC21FD77F3DE88) + 0x2F7C963BD09EA7A0) ^ ((v12 ^ 0xB17780789E6A3F93) + 0xF737BE39074685);
  return (*(STACK[0xF18] + 8 * ((63 * (__CFADD__(67 * (v13 ^ ((v12 ^ 0x543F6C7D6CC166D6) - 0x1A4024443453E03ELL)), 0x144401BD0BDE4CAFLL) + (((v13 ^ ((v12 ^ 0x543F6C7D6CC166D6) - 0x1A4024443453E03ELL)) * 0x43uLL) >> 64) + 67 * ((__CFADD__(v12 ^ 0x9EFC21FD77F3DE88, 0x2F7C963BD09EA7A0) - 1) ^ (__CFADD__(v12 ^ 0xB17780789E6A3F93, 0xF737BE39074685) - 1) ^ (__CFADD__(v12 ^ 0x543F6C7D6CC166D6, 0xE5BFDBBBCBAC1FC2) - 1)) - 32 < 0xFFFFFFD2)) ^ a1)))();
}

uint64_t sub_100299D40()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 21482 + v0 + 25371)))();
}

uint64_t sub_100299DA4()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0x9FFD)))(v1);
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_100299DDC()
{
  v0 = STACK[0xF10] - 20852;
  v1 = STACK[0xF10] - 32297;
  v2 = STACK[0xF18];
  STACK[0x3620] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v0 + v1 - 5107)))();
}

uint64_t sub_100299E20@<X0>(char a1@<W1>, char a2@<W2>, char a3@<W3>, char a4@<W4>, char a5@<W5>, char a6@<W6>, char a7@<W7>, uint64_t a8@<X8>)
{
  v24 = a8 - 1;
  v25 = ((v9 ^ 0x75) + v11) ^ v9 ^ ((v9 ^ v12) + v13) ^ ((v9 ^ a2) + a3) ^ ((v10 ^ v9 ^ v14) + a1);
  *(v17 + v24) = ((((v25 ^ a5) + a6) ^ ((v25 ^ a7) + v15) ^ ((v25 ^ v18) + v19)) + v20) * (v9 + v21) + v9 * a4 + v22;
  return (*(v16 + 8 * (((v24 == 0) * v23) ^ v8)))();
}

uint64_t sub_100299EBC(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, double a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v76 = vdupq_n_s64(a4);
  v93 = vdupq_n_s64(v75);
  v94 = vdupq_n_s64(a5);
  v91 = vdupq_n_s64(v70);
  v92 = vdupq_n_s64(a3);
  v89 = vdupq_n_s64(v72);
  v90 = vdupq_n_s64(v71);
  v87 = vdupq_n_s64(a6);
  v88 = vdupq_n_s64(v65);
  v85 = vdupq_n_s64(a8);
  v86 = vdupq_n_s64(a7);
  v83 = vdupq_n_s64(0x709C9D94E4475DA6uLL);
  v84 = vdupq_n_s64(v66);
  v81 = vdupq_n_s64(0x8E48D8AE3B1BFF02);
  v82 = vdupq_n_s64(v68);
  v80 = vdupq_n_s64(0xA0EA8128FA7543D7);
  v79 = vdupq_n_s64(0x10uLL);
  v78 = vdupq_n_s64(0xB705EE34F18414C9);
  return (*(a71 + 8 * v74))((v63 & 0xF0) - 16, (v74 - 945) - 6910, 95, 20491, vaddq_s64(v76, xmmword_100F52320), vaddq_s64(v76, xmmword_100F52330), vaddq_s64(v76, xmmword_100F52340), vaddq_s64(v76, xmmword_100F52350), vaddq_s64(v76, v67[54]), vaddq_s64(v76, v69[55]), vaddq_s64(v76, v64[56]), vaddq_s64(v76, v73[57]), a17, a18, *&a4, COERCE_DOUBLE(a4 + (v63 & 0xF0)), *v78.i64, *&v78.i64[1], *v79.i64, *&v79.i64[1], 4.74803907e-38, 1.38689741e272, *v80.i64, *&v80.i64[1], *v81.i64, *&v81.i64[1], *v82.i64, *&v82.i64[1], *v83.i64, *&v83.i64[1], *v84.i64, *&v84.i64[1], *v85.i64, *&v85.i64[1], *v86.i64, *&v86.i64[1], *v87.i64, *&v87.i64[1], *v88.i64, *&v88.i64[1], *v89.i64, *&v89.i64[1], *v90.i64, *&v90.i64[1], *v91.i64, *&v91.i64[1], *v92.i64, *&v92.i64[1], *v93.i64, *&v93.i64[1], *v94.i64, *&v94.i64[1]);
}

uint64_t sub_10029A004(unsigned int a1)
{
  LODWORD(STACK[0x3C4]) = 0;
  v5 = (v4 - 124536365) & 0x76BFFF3;
  LODWORD(STACK[0x3DC]) = v5;
  v6 = a1 & (v5 ^ 0xFFFFB41A) ^ 0x5AB710F7;
  *(v3 - 192) = v6;
  v7 = STACK[0x398];
  LOBYTE(v6) = *(STACK[0x398] + (*(v1 + v6) ^ 0x2DLL));
  LODWORD(STACK[0x3C8]) = v4 ^ 0x1472;
  v8 = v4 ^ 0x1472 ^ a1 & 0xFFFFFFF9 ^ 0x5AB7969F;
  *(v3 - 164) = v8;
  v9 = STACK[0x3A8];
  v10 = *(STACK[0x3A8] + 4 * (*(v1 + v8) ^ 0x18)) ^ 0xB3E9C8F3;
  v11 = a1 & 0xFFFFFFF4 ^ 0x5AB710FFLL;
  *(v3 - 240) = v11;
  v12 = *(v1 + v11);
  v13 = a1 & 0xFFFFFFFC ^ 0x5AB710F7;
  *(v3 - 176) = v13;
  v14 = (v6 + 122);
  LOBYTE(v6) = *(v7 + (v12 ^ 0x8F));
  v15 = *(v1 + v13);
  v16 = a1 & 0xFFFFFFF1 ^ 0x5AB710FELL;
  *(v3 - 184) = v16;
  v17 = *(v7 + (v15 ^ 0x8A));
  LODWORD(v15) = *(v9 + 4 * (*(v1 + v16) ^ 0xB2)) ^ 0xFA0D8710;
  LOBYTE(v16) = v17 + 122;
  v18 = a1 ^ 0x5AB710F6;
  *(v3 - 224) = v18;
  v19 = *(v1 + v18);
  v20 = STACK[0x3A0];
  v21 = *(STACK[0x3A0] + 4 * (v19 ^ 0xE2));
  v22 = a1 & 0xFFFFFFFE ^ 0x5AB710F7;
  *(v3 - 208) = v22;
  v23 = *(v1 + v22);
  v24 = a1 & 0xFFFFFFFD ^ 0x5AB710F6;
  *(v3 - 248) = v24;
  v25 = STACK[0x390];
  LODWORD(v23) = *(STACK[0x390] + 4 * (v23 ^ 0xC0));
  LODWORD(v24) = *(v9 + 4 * (*(v1 + v24) ^ 0x19)) ^ 0xB8754BB9;
  v26 = a1 & 0xFFFFFFF6 ^ 0x5AB710FFLL;
  *(v3 - 200) = v26;
  v27 = v21 ^ v19 ^ v16 ^ v23 ^ v24 ^ (16 * v24) & 0x1E7C3310;
  LODWORD(v16) = *(v25 + 4 * (*(v1 + v26) ^ 0x4BLL));
  v28 = a1 & 0xFFFFFFF7 ^ 0x5AB710FELL;
  *(v3 - 216) = v28;
  v29 = a1 & 0xFFFFFFF5 ^ 0x5AB710FELL;
  STACK[0x3F0] = v29;
  v30 = *(v1 + v28);
  LODWORD(v28) = *(v20 + 4 * (v30 ^ 0x26));
  LODWORD(v29) = *(v9 + 4 * (*(v1 + v29) ^ 9)) ^ 0x2C5B87C8;
  LODWORD(v16) = v16 ^ v30;
  v31 = a1 & 0xFFFFFFFA ^ 0x5AB710F7;
  STACK[0x3F8] = v31;
  LODWORD(v29) = v16 ^ v28 ^ (v6 + 122) ^ v29 ^ (16 * v29) & 0x1E7C3310;
  LODWORD(v6) = *(v25 + 4 * (*(v1 + v31) ^ 0x9FLL));
  v32 = a1 & 0xFFFFFFFB ^ 0x5AB710F6;
  *(v3 - 232) = v32;
  LODWORD(v31) = v10 ^ (16 * v10) & 0x1E7C3310 ^ v6 ^ v14 ^ *(v1 + v32) ^ *(v20 + 4 * (*(v1 + v32) ^ 0xC7));
  v33 = a1 & 0xFFFFFFF3 ^ 0x5AB710FELL;
  STACK[0x3E8] = v33;
  v34 = *(v1 + v33);
  v35 = *(v20 + 4 * (v34 ^ 0x15));
  v36 = a1 & 0xFFFFFFF2 ^ 0x5AB710FFLL;
  *(v3 - 256) = v36;
  v37 = (v35 & 0x4E54E116 ^ v34 & 0x16 ^ 0x911E6CB3) & (v35 & 0xB1AB1EE9 ^ 0xDEDCF756) | v35 & 0x20A11248;
  LODWORD(v34) = v15 ^ *(v25 + 4 * (*(v1 + v36) ^ 0xE4)) ^ v34 & 0xE9;
  v38 = a1 & 0xFFFFFFF0 ^ 0x5AB710FFLL;
  STACK[0x3E0] = v38;
  LODWORD(v9) = (16 * v15) & 0x1E7C3310 ^ v34 ^ (*(v7 + (*(v1 + v38) ^ 0xD2)) + 122) ^ v37;
  LODWORD(v34) = STACK[0x2FC];
  LODWORD(STACK[0x3D8]) = v27;
  LODWORD(v15) = v34 ^ v27;
  v39 = *(&off_1010A0B50 + v4 - 36991) - 668941538;
  v40 = (v34 ^ v27) >> 24;
  LODWORD(v34) = *&v39[4 * (v40 ^ 0x5A)];
  v41 = STACK[0x2F4];
  LODWORD(STACK[0x3D0]) = v31;
  LODWORD(v36) = v41 ^ v31;
  LODWORD(v31) = (v41 ^ v31);
  LODWORD(v34) = v31 ^ LODWORD(STACK[0x3B8]) ^ v34;
  v42 = STACK[0x2F8];
  LODWORD(STACK[0x3D4]) = v29;
  LODWORD(v29) = v42 ^ v29;
  v43 = *(&off_1010A0B50 + v4 - 33593) - 69897582;
  LODWORD(v34) = v34 ^ *&v43[4 * (BYTE1(v29) ^ 0xEC)];
  v44 = STACK[0x2F0];
  LODWORD(STACK[0x3CC]) = v9;
  v45 = v44 ^ v9;
  v46 = *(&off_1010A0B50 + v4 - 34125) - 225620002;
  v47 = *(&off_1010A0B50 + (v4 ^ 0x831F)) - 2001048122;
  LODWORD(v31) = v34 ^ (*&v46[4 * (((v44 ^ v9) >> 16) ^ 0x60)] + v2) ^ *&v47[4 * (v31 ^ 0x2E)];
  v48 = LODWORD(STACK[0x38C]) ^ (*&v46[4 * (BYTE2(v15) ^ 0x15)] + v2) ^ *&v43[4 * (((v44 ^ v9) >> 8) ^ 0x74)] ^ *&v39[4 * (BYTE3(v36) ^ 0xDD)] ^ *&v47[4 * (v29 ^ 0xD6)];
  LODWORD(v9) = BYTE3(v29);
  v49 = LODWORD(STACK[0x388]) ^ *&v43[4 * (BYTE1(v15) ^ 0x71)] ^ *&v39[4 * (BYTE3(v29) ^ 0xF2)] ^ *&v47[4 * (v45 ^ 0xF)] ^ (*&v46[4 * (BYTE2(v36) ^ 0x19)] + v2);
  LODWORD(v20) = LODWORD(STACK[0x384]) ^ *&v39[4 * (HIBYTE(v45) ^ 0x28)] ^ (*&v46[4 * (BYTE2(v29) ^ 0xBC)] + v2) ^ *&v43[4 * (BYTE1(v36) ^ 0xA)] ^ *&v47[4 * (v15 ^ 0xA9)];
  LODWORD(v29) = (v48 ^ v29) ^ BYTE3(v36);
  v50 = BYTE3(v31);
  LODWORD(v36) = LODWORD(STACK[0x380]) ^ *&v39[4 * (BYTE3(v31) ^ 0x70)] ^ (*&v46[4 * (BYTE2(v20) ^ 0x80)] + v2) ^ *&v43[4 * (BYTE1(v49) ^ 0x5D)] ^ *&v47[4 * (v29 ^ 0x35)];
  LODWORD(v25) = (v49 ^ v45) ^ v9;
  LODWORD(v9) = LODWORD(STACK[0x37C]) ^ *&v39[4 * (HIBYTE(v48) ^ 0xD4)] ^ (*&v46[4 * (BYTE2(v31) ^ 0x73)] + v2) ^ *&v43[4 * (BYTE1(v20) ^ 0x36)] ^ *&v47[4 * (v25 ^ 0xF6)];
  v51 = (v20 ^ v15) ^ HIBYTE(v45) ^ LODWORD(STACK[0x3C0]) ^ *&v39[4 * (HIBYTE(v49) ^ 0x69)] ^ (*&v46[4 * (BYTE2(v48) ^ 0x94)] + v2) ^ *&v43[4 * (BYTE1(v31) ^ 0xD)] ^ *&v47[4 * ((v20 ^ v15) ^ HIBYTE(v45) ^ 0x90)];
  v52 = v31 ^ v40;
  LODWORD(v20) = BYTE3(v20);
  v53 = LODWORD(STACK[0x378]) ^ *&v39[4 * (v20 ^ 0xE0)] ^ (*&v46[4 * (BYTE2(v49) ^ 0xA8)] + v2) ^ *&v43[4 * (BYTE1(v48) ^ 0xF9)] ^ *&v47[4 * (v52 ^ 0x28)];
  v54 = v25 ^ HIBYTE(v48) ^ v9;
  LODWORD(v15) = BYTE3(v36);
  LODWORD(v31) = LODWORD(STACK[0x374]) ^ *&v39[4 * (BYTE3(v36) ^ 0xDF)] ^ *&v43[4 * (BYTE1(v51) ^ 0x41)] ^ (*&v46[4 * (BYTE2(v53) ^ 0x50)] + v2) ^ *&v47[4 * (v54 ^ 0xCA)];
  LODWORD(v34) = v51 ^ HIBYTE(v49);
  v55 = *&v47[4 * (v34 ^ 0x3D)];
  v56 = LODWORD(STACK[0x370]) ^ *&v39[4 * (BYTE3(v9) ^ 0x5E)] ^ (*&v46[4 * (BYTE2(v36) ^ 0xF9)] + v2) ^ *&v43[4 * (BYTE1(v53) ^ 0xC4)] ^ ((-(v34 ^ 0xC61BEAD4) ^ ((v34 ^ 0xC61BEAD4) - ((2 * (v34 ^ 0xC61BEAD4)) & 0x8816C5CA) + 1838113765) ^ 0x6D8F63E5 ^ ((v55 ^ 0x942BF8B8) - (v34 ^ 0x5230126C ^ v55))) + (v55 ^ 0x942BF8B8));
  LODWORD(v25) = v20 ^ v52 ^ v53;
  v57 = LODWORD(STACK[0x36C]) ^ *&v39[4 * (HIBYTE(v51) ^ 0xBB)] ^ (*&v46[4 * (BYTE2(v9) ^ 0xE4)] + v2) ^ *&v43[4 * (BYTE1(v36) ^ 0x59)] ^ *&v47[4 * (v25 ^ 0xC4)];
  LODWORD(v20) = v29 ^ v50 ^ v36;
  v58 = HIBYTE(v53);
  v59 = LODWORD(STACK[0x368]) ^ *&v39[4 * (HIBYTE(v53) ^ 0x96)] ^ *&v43[4 * (BYTE1(v9) ^ 0x50)] ^ (*&v46[4 * (BYTE2(v51) ^ 0xD1)] + v2) ^ *&v47[4 * (v20 ^ 0x76)];
  LODWORD(v29) = v56 ^ BYTE3(v9);
  v60 = BYTE3(v31);
  LODWORD(v9) = *&v43[4 * (BYTE1(v57) ^ 0xF5)];
  LODWORD(v36) = LODWORD(STACK[0x364]) ^ *&v39[4 * (BYTE3(v31) ^ 0x5F)] ^ (*&v46[4 * (BYTE2(v59) ^ 0x64)] + v2) ^ v9 & 0xF7FFFFFF ^ (v9 & 0x8000000 | 0xA1A059F8) ^ *&v47[4 * (v29 ^ 0x83)];
  LODWORD(v9) = LODWORD(STACK[0x2EC]) ^ v25 ^ HIBYTE(v51) ^ v57 ^ (*&v46[4 * (BYTE2(v31) ^ 0x86)] + v2) ^ *&v43[4 * (BYTE1(v59) ^ 0x34)] ^ *&v39[4 * (HIBYTE(v56) ^ 0xD7)] ^ *&v47[4 * (v25 ^ HIBYTE(v51) ^ v57 ^ 0x63)];
  LODWORD(v34) = *&v43[4 * (BYTE1(v31) ^ 0xB1)];
  v61 = LODWORD(STACK[0x2E8]) ^ v58 ^ v20 ^ v59 ^ *&v39[4 * (HIBYTE(v57) ^ 0x2B)] ^ *&v47[4 * (v58 ^ v20 ^ v59 ^ 0xC5)] ^ (*&v46[4 * (BYTE2(v56) ^ 0xC1)] + v2) ^ ((((v34 ^ 0x7EB3A44D) - (v34 ^ 0xD713FDB5)) ^ 0xFFFFFFF0) + (v34 ^ 0x7EB3A44D));
  LODWORD(v34) = v54 ^ v15 ^ v31;
  v62 = HIBYTE(v59);
  v63 = LODWORD(STACK[0x2E4]) ^ v34 ^ *&v39[4 * (HIBYTE(v59) ^ 0xE1)] ^ (*&v46[4 * (BYTE2(v57) ^ 0x97)] + v2) ^ *&v47[4 * (v34 ^ 0x3A)] ^ *&v43[4 * (BYTE1(v56) ^ 0x8B)];
  LODWORD(v15) = v9 ^ HIBYTE(v56);
  LODWORD(v31) = LODWORD(STACK[0x360]) ^ (BYTE3(v36) ^ 0x50) & 0xEA ^ ((BYTE3(v36) ^ 0x50) & 0x40005015 | 0xBF5F25C0) ^ *&v39[4 * (BYTE3(v36) ^ 0x80)] ^ (*&v46[4 * (BYTE2(v63) ^ 0x8F)] + v2) ^ *&v43[4 * (BYTE1(v61) ^ 0xF6)] ^ *&v47[4 * (v15 ^ 0xB8)];
  LODWORD(v25) = v61 ^ HIBYTE(v57);
  v64 = LODWORD(STACK[0x35C]) ^ *&v43[4 * (BYTE1(v63) ^ 0xBA)] ^ *&v39[4 * (BYTE3(v9) ^ 0x4A)] ^ (*&v46[4 * (BYTE2(v36) ^ 0xED)] + v2) ^ *&v47[4 * (v25 ^ 0x43)];
  LODWORD(v20) = v63 ^ v62;
  v65 = LODWORD(STACK[0x358]) ^ *&v39[4 * (HIBYTE(v61) ^ 0x4D)] ^ (*&v46[4 * (BYTE2(v9) ^ 0xC1)] + v2) ^ *&v43[4 * (BYTE1(v36) ^ 0xE8)] ^ *&v47[4 * (v20 ^ 0x86)];
  v66 = v29 ^ v60 ^ v36;
  v67 = HIBYTE(v63);
  v68 = LODWORD(STACK[0x2E0]) ^ *&v39[4 * (HIBYTE(v63) ^ 0x39)] ^ *&v43[4 * (BYTE1(v9) ^ 0x17)] ^ *&v47[4 * (v66 ^ 0xBB)] ^ (*&v46[4 * (BYTE2(v61) ^ 0x52)] + v2);
  LODWORD(v29) = BYTE3(v31);
  LODWORD(v36) = v25 ^ BYTE3(v9) ^ v64;
  v69 = LODWORD(STACK[0x354]) ^ *&v39[4 * (BYTE3(v31) ^ 0x7D)] ^ (*&v46[4 * (BYTE2(v68) ^ 0x33)] + v2) ^ *&v43[4 * (BYTE1(v65) ^ 0xB2)] ^ *&v47[4 * (v36 ^ 0xFC)];
  LODWORD(v20) = v20 ^ HIBYTE(v61) ^ v65;
  LODWORD(v9) = LODWORD(STACK[0x350]) ^ *&v39[4 * (HIBYTE(v64) ^ 0x94)] ^ (*&v46[4 * (BYTE2(v31) ^ 0xF7)] + v2) ^ *&v43[4 * (BYTE1(v68) ^ 0xB7)] ^ *&v47[4 * (v20 ^ 0xC)];
  v70 = v67 ^ v66 ^ v68 ^ LODWORD(STACK[0x3B4]) ^ *&v39[4 * (HIBYTE(v65) ^ 0x9D)] ^ (*&v46[4 * (BYTE2(v64) ^ 2)] + v2) ^ *&v43[4 * (BYTE1(v31) ^ 4)] ^ *&v47[4 * (v67 ^ v66 ^ v68 ^ 0x5B)];
  v68 >>= 24;
  LODWORD(v15) = v31 ^ v15 ^ LODWORD(STACK[0x3BC]) ^ *&v39[4 * (v68 ^ 0x6A)] ^ *&v43[4 * (BYTE1(v64) ^ 0xE1)] ^ (*&v46[4 * (BYTE2(v65) ^ 0x5C)] + v2) ^ *&v47[4 * (v31 ^ v15 ^ 0x67)];
  LODWORD(v31) = HIBYTE(v69);
  v71 = LODWORD(STACK[0x34C]) ^ v20 ^ HIBYTE(v64) ^ v9 ^ *&v39[4 * (HIBYTE(v69) ^ 0xCD)] ^ *&v43[4 * (BYTE1(v70) ^ 0x7C)] ^ (*&v46[4 * (BYTE2(v15) ^ 0xDB)] + v2) ^ *&v47[4 * (v20 ^ HIBYTE(v64) ^ v9 ^ 0x97)];
  LODWORD(v20) = v70 ^ HIBYTE(v65);
  v72 = LODWORD(STACK[0x348]) ^ *&v39[4 * (BYTE3(v9) ^ 0x3C)] ^ *&v47[4 * (v20 ^ 0xB5)] ^ (*&v46[4 * (BYTE2(v69) ^ 0x3D)] + v2) ^ *&v43[4 * (BYTE1(v15) ^ 4)];
  LODWORD(v34) = LODWORD(STACK[0x344]) ^ HIBYTE(v70) ^ *&v39[4 * (HIBYTE(v70) ^ 0x4B)] ^ (*&v46[4 * (BYTE2(v9) ^ 0xF7)] + v2);
  v73 = v15 ^ v68;
  v74 = *&v47[4 * (v73 ^ 0x8C)] ^ *&v43[4 * (BYTE1(v69) ^ 0x6E)] ^ ((v34 & 0xA5FA9E3F ^ 0x1108FB5F) & (v34 & 0x5A0561C0 ^ 0xBDFADFFF) | v34 & 0x4A050080);
  LODWORD(v25) = BYTE3(v15);
  v75 = LODWORD(STACK[0x340]) ^ v36 ^ v29 ^ v69 ^ *&v39[4 * (BYTE3(v15) ^ 0x67)] ^ (*&v46[4 * (BYTE2(v70) ^ 0xFE)] + v2) ^ *&v43[4 * (BYTE1(v9) ^ 9)] ^ *&v47[4 * (v36 ^ v29 ^ v69 ^ 0xB)];
  LODWORD(v15) = v20 ^ BYTE3(v9) ^ (LOBYTE(STACK[0x348]) ^ v39[4 * (BYTE3(v9) ^ 0x3C)] ^ v47[4 * (v20 ^ 0xB5)] ^ (v46[4 * (BYTE2(v69) ^ 0x3D)] + v2) ^ v43[4 * (BYTE1(v15) ^ 4)]);
  LODWORD(v36) = HIBYTE(v71);
  LODWORD(v29) = LODWORD(STACK[0x33C]) ^ *&v39[4 * (HIBYTE(v71) ^ 0xC1)] ^ (*&v46[4 * (BYTE2(v75) ^ 0x23)] + v2) ^ *&v47[4 * (v15 ^ 0x25)] ^ *&v43[4 * (BYTE1(v74) ^ 0xEF)];
  v76 = (v47[4 * (v73 ^ 0x8C)] ^ v43[4 * (BYTE1(v69) ^ 0x6E)] ^ ((v34 & 0x3F ^ 0x5F) & ~(v34 & 0xC0) | v34 & 0x80)) ^ v73;
  LODWORD(v9) = LODWORD(STACK[0x338]) ^ *&v39[4 * (HIBYTE(v72) ^ 0x60)] ^ (*&v46[4 * (BYTE2(v71) ^ 0x71)] + v2) ^ *&v43[4 * (BYTE1(v75) ^ 0xDD)] ^ *&v47[4 * (v76 ^ 0x5F)];
  v77 = v75 ^ v25;
  v78 = LODWORD(STACK[0x330]) ^ (*&v46[4 * (BYTE2(v72) ^ 0x81)] + v2) ^ *&v43[4 * (BYTE1(v71) ^ 0xC7)] ^ *&v47[4 * (v77 ^ 0x14)] ^ *&v39[4 * (HIBYTE(v74) ^ 0xD6)];
  LODWORD(v20) = v71 ^ v31;
  LODWORD(v25) = HIBYTE(v75);
  v79 = LODWORD(STACK[0x328]) ^ *&v39[4 * (HIBYTE(v75) ^ 0xFE)] ^ *&v43[4 * (BYTE1(v72) ^ 0x28)] ^ *&v47[4 * (v20 ^ 0xE2)] ^ (*&v46[4 * (BYTE2(v74) ^ 0x73)] + v2);
  LODWORD(v31) = LODWORD(STACK[0x320]) ^ BYTE3(v29) ^ v76 ^ HIBYTE(v72) ^ v9 ^ *&v39[4 * (BYTE3(v29) ^ 0xC3)] ^ *&v43[4 * (BYTE1(v78) ^ 0xAF)] ^ (*&v46[4 * (BYTE2(v79) ^ 0x85)] + v2) ^ *&v47[4 * (v76 ^ HIBYTE(v72) ^ v9 ^ 0xE4)];
  v80 = LODWORD(STACK[0x318]) ^ BYTE3(v9) ^ v77 ^ HIBYTE(v74) ^ v78 ^ *&v39[4 * (BYTE3(v9) ^ 0x28)] ^ (*&v46[4 * (BYTE2(v29) ^ 0x78)] + v2) ^ *&v43[4 * (BYTE1(v79) ^ 0xCF)] ^ *&v47[4 * (v77 ^ HIBYTE(v74) ^ v78 ^ 0xF9)];
  LODWORD(v25) = v25 ^ v20 ^ v79;
  LODWORD(v34) = LODWORD(STACK[0x310]) ^ *&v39[4 * (HIBYTE(v78) ^ 0xE3)] ^ *&v43[4 * (BYTE1(v29) ^ 0xDA)] ^ (*&v46[4 * (BYTE2(v9) ^ 0xF2)] + v2);
  LODWORD(v20) = HIBYTE(v79);
  LODWORD(v39) = *&v39[4 * (HIBYTE(v79) ^ 0xB)];
  v81 = v34 ^ *&v47[4 * (v25 ^ 0xA6)];
  LODWORD(v9) = LODWORD(STACK[0x308]) ^ v15 ^ v36 ^ v29 ^ v39 ^ (*&v46[4 * (BYTE2(v78) ^ 0xBE)] + v2) ^ *&v43[4 * (BYTE1(v9) ^ 0xA4)] ^ *&v47[4 * (v15 ^ v36 ^ v29 ^ 0x13)];
  LODWORD(v36) = v25 ^ HIBYTE(v78) ^ (v34 ^ v47[4 * (v25 ^ 0xA6)]);
  v82 = v9 ^ v20;
  v83 = *(&off_1010A0B50 + (v4 ^ 0x92EF)) - 1396269770;
  LOBYTE(v15) = v31 ^ 0xC;
  LODWORD(v20) = *&v83[4 * ((v31 ^ 0x663FF90C) >> 24)];
  LOBYTE(v47) = v80 ^ 0x73;
  LODWORD(v46) = *&v83[4 * ((v80 ^ 0x228B3C73) >> 24)];
  v84 = *&v83[4 * (HIBYTE(v81) ^ 0x3E)];
  LODWORD(v39) = *&v83[4 * (BYTE3(v9) ^ 0x96)];
  v85 = *(&off_1010A0B50 + (v4 ^ 0x9FCC)) - 1532613327;
  LODWORD(v25) = *&v85[4 * (BYTE2(v9) ^ 0xAE)];
  v86 = *&v85[4 * ((v31 ^ 0x663FF90C) >> 16)];
  LODWORD(v83) = *&v85[4 * ((v80 ^ 0x228B3C73) >> 16)];
  LODWORD(v85) = *&v85[4 * (BYTE2(v81) ^ 0x6F)];
  v87 = *(&off_1010A0B50 + v4 - 34936) - 1282443427;
  v88 = *&v87[4 * (BYTE1(v81) ^ 0xB1)];
  v89 = *&v87[4 * (BYTE1(v9) ^ 0x8C)];
  v90 = *&v87[4 * ((v31 ^ 0xF90C) >> 8)];
  LODWORD(v9) = *&v87[4 * ((v80 ^ 0x3C73) >> 8)];
  v91 = *(&off_1010A0B50 + (v4 ^ 0x99F5)) - 1195390978;
  LODWORD(v43) = *&v91[4 * (v80 ^ 0x6C)];
  v92 = *&v91[4 * (v36 ^ 0x4E)];
  v93 = *&v91[4 * (v82 ^ 0xEB)];
  LODWORD(v91) = *&v91[4 * (v31 ^ 0x13)];
  v94 = __ROR4__(v90, 9);
  LODWORD(v83) = LODWORD(STACK[0x2DC]) ^ LODWORD(STACK[0x2D8]) ^ *(v3 - 160) ^ v82 ^ v83 ^ (v84 + 380925755) ^ v93 ^ v94 ^ 0xB1AED062;
  LODWORD(v31) = v83 ^ (8 * (v94 ^ 0xB1AED062)) & 0xD4EE4F00;
  v95 = *(&off_1010A0B50 + (v4 ^ 0x9AA5)) - 1660294322;
  *(*(v3 - 136) + *(v3 - 240)) = v95[v83 ^ 0xDFLL] ^ (4 * v95[v83 ^ 0xDFLL]) ^ 0xD;
  v96 = __ROR4__(v88, 9);
  LODWORD(v43) = LODWORD(STACK[0x2D0]) ^ LODWORD(STACK[0x2CC]) ^ *(v3 - 152) ^ v47 ^ v25 ^ (v20 + 380925755) ^ v43 ^ v96 ^ 0x5746513 ^ (8 * (v96 ^ 0x5746513)) & 0xD4EE4F00;
  v97 = *(&off_1010A0B50 + (v4 ^ 0x961A)) - 1082893143;
  *(*(v3 - 136) + *(v3 - 248)) = BYTE1(v43) ^ 0x14 ^ v97[BYTE1(v43) ^ 4];
  v98 = *(&off_1010A0B50 + (v4 ^ 0x9E90)) - 1742818939;
  *(*(v3 - 136) + *(v3 - 224)) = v98[(v43 >> 24) ^ 0xEALL] ^ 0x94;
  *(*(v3 - 136) + STACK[0x3F0]) = BYTE1(v31) ^ 0x98 ^ v97[BYTE1(v31) ^ 0xD8];
  LODWORD(v83) = LODWORD(STACK[0x2D4]) ^ LODWORD(STACK[0x2C0]) ^ *(v3 - 156) ^ v36 ^ v86 ^ (v46 + 380925755) ^ v92;
  v99 = *(v3 - 136);
  v100 = __ROR4__(v89, 9);
  LODWORD(v83) = v83 ^ v100 ^ 0x8A113042;
  v101 = v83 ^ (8 * (v100 ^ 0x8A113042)) & 0xD4EE4F00;
  v102 = *(&off_1010A0B50 + (v4 ^ 0x9B2A)) - 242070695;
  *(v99 + STACK[0x3F8]) = v102[BYTE2(v101) ^ 0x84] ^ 0xB0;
  *(v99 + *(v3 - 192)) = v95[v83] ^ (4 * v95[v83]) ^ 0xE1;
  v103 = __ROR4__(v9, 9);
  LODWORD(v83) = LODWORD(STACK[0x2C8]) ^ LODWORD(STACK[0x2C4]) ^ *(v3 - 148) ^ v15 ^ v85 ^ (v39 + 380925755) ^ v91 ^ v103 ^ 0xDC5B6E86 ^ (8 * (v103 ^ 0xDC5B6E86)) & 0xD4EE4F00;
  *(v99 + STACK[0x3E8]) = v98[(v83 >> 24) ^ 0x32] ^ 0xDB;
  *(v99 + *(v3 - 216)) = v98[BYTE3(v31) ^ 0x36] ^ 0xD4;
  *(v99 + *(v3 - 208)) = v102[BYTE2(v43) ^ 0x28] ^ 0xD0;
  *(v99 + *(v3 - 232)) = v98[HIBYTE(v101) ^ 0x4BLL] ^ 0xED;
  *(v99 + *(v3 - 256)) = v102[BYTE2(v83) ^ 0xB4] ^ 0x70;
  *(v99 + STACK[0x3E0]) = v95[v83 ^ 0xF1] ^ (4 * v95[v83 ^ 0xF1]) ^ 0xBC;
  *(v99 + *(v3 - 200)) = v102[BYTE2(v31) ^ 0x1ELL] ^ 0x65;
  *(v99 + *(v3 - 184)) = BYTE1(v83) ^ 0x9E ^ v97[BYTE1(v83) ^ 0x2FLL];
  *(v99 + *(v3 - 176)) = v95[v43 ^ 0xF0] ^ (4 * v95[v43 ^ 0xF0]) ^ 0x4F;
  LODWORD(v38) = (((a1 ^ 0xE664E5C2) + 429595198) ^ ((a1 ^ 0x475E4C90) - 1197362320) ^ ((a1 ^ 0xFB8DB9A4) + 74597980)) - 1861359012;
  LODWORD(v38) = ((v38 ^ 0x9D676E9C) + 1422805046) ^ v38 ^ ((v38 ^ 0x6E23AB44) - 1484091922) ^ ((v38 ^ 0x32EDE350) - 79378950) ^ ((v38 ^ 0xF7FFFFDE) + 1045879160);
  LODWORD(v102) = STACK[0x300];
  v104 = LODWORD(STACK[0x300]) < 0x283A7A4B;
  *(v99 + *(v3 - 164)) = BYTE1(v101) ^ 0xE6 ^ v97[BYTE1(v101) ^ 0x97];
  LODWORD(v83) = (((v38 ^ 0xF5F129B2) + 1726947310) ^ ((v38 ^ 0x9F7C5728) + 207774072) ^ ((v38 ^ 0x5CDBA7CC) - 809135724)) - 2098099391;
  v105 = v104 ^ (v83 < 0x283A7A4B);
  v106 = v83 < v102;
  if (v105)
  {
    v106 = v104;
  }

  return (*(*(v3 - 144) + 8 * ((3095 * v106) ^ v4)))();
}

uint64_t sub_10029B834()
{
  v9 = v6 - 1;
  *(v7 + v9) ^= *(v1 + (v9 & 0xF)) ^ *((v9 & 0xF) + v2 + 2) ^ (15 * (v9 & 0xF)) ^ *(v0 + (v9 & 0xF)) ^ v4;
  return (*(v8 + 8 * (((v9 != 0) * v5) ^ v3)))();
}

uint64_t sub_10029B888()
{
  v4 = *(v1 + 24) + 640 * (v2 + (v0 ^ 0x166Du));
  *(v4 - 0x7F87116BF71A218) = 356632016;
  return (*(v3 + 8 * (((v4 == 0x7F87116BF71A210) * (v0 ^ 0xB7BC)) | v0)))();
}

uint64_t sub_10029B940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (v9 == 6)
  {
    v10 = v8;
  }

  else
  {
    v10 = a6;
  }

  return (*(v6 + 8 * ((55863 * (v7 >= (v7 ^ 0xA0018364) - 855906130)) ^ (v7 - 1407445591))))(a1, a2, v10 * a3);
}

uint64_t sub_10029B9C4()
{
  STACK[0xCE0] = 0;
  v2 = *(STACK[0xF18] + 8 * ((((v0 + 1928083166) & 0x8D13AF3F ^ 0x8B61) * (STACK[0xCF0] > 0xF)) ^ v0));
  STACK[0xCD0] = v1;
  return v2();
}

uint64_t sub_10029BB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  v41 = 1012831759 * ((~v38 & 0x755E1AD5 | v38 & 0x8AA1E528) ^ 0x65CD0C5F);
  *(v40 - 144) = v41 + 99890098;
  *(v40 - 140) = v41 + a21 - 1596645191;
  *(v40 - 120) = v40 - 245;
  *(v40 - 128) = &a38;
  v42 = (*(v39 + 8 * a15))(v40 - 144);
  return (*(v39 + 8 * (((*(v40 - 136) == -371865839) * a14) ^ (a21 - 1596670198))))(v42);
}

uint64_t sub_10029BBC8(void *a1)
{
  v3 = v2 + 31441;
  *a1 = 0;
  a1[1] = 0;
  *(v1 + 8) = a1;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v3 + 3839)))(16) == 0;
  return (*(v4 + 8 * ((v5 * (((v3 - 45182) | 0x8020) - 35640)) ^ v3)))();
}

uint64_t sub_10029BCF0(double a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  a2.n128_u16[0] = 18761;
  a2.n128_u8[2] = 73;
  a2.n128_u8[3] = 73;
  a2.n128_u8[4] = 73;
  a2.n128_u8[5] = 73;
  a2.n128_u8[6] = 73;
  a2.n128_u8[7] = 73;
  a3.n128_u16[0] = 24415;
  a3.n128_u8[2] = 95;
  a3.n128_u8[3] = 95;
  a3.n128_u8[4] = 95;
  a3.n128_u8[5] = 95;
  a3.n128_u8[6] = 95;
  a3.n128_u8[7] = 95;
  return (*(v8 + 8 * (a8 - 19012)))(xmmword_100F523B0, a2, a3);
}

uint64_t sub_10029BD4C()
{
  v0 = STACK[0xF10] - 13184;
  v1 = (STACK[0xF10] - 24871) ^ 0xA12F;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0x9D23)))(32);
  STACK[0x1BE8] = v3;
  return (*(v2 + 8 * ((87 * (((v3 == 0) ^ v1) & 1)) ^ v0)))();
}

uint64_t sub_10029BDB4@<X0>(int a1@<W8>)
{
  v4 = (v1 | ((v1 < 0x4F82033A) << 32)) + ((a1 + 512) | 0xD4u);
  *(v3 + 1776) = v4 + 0x7472C8F4899C3C96;
  v5 = v4 + ((a1 + 1789242171) & 0x955ADFFF) + 956919846;
  v6 = v2 + 2290876779;
  v8 = v5 > 0x888C016A && v5 <= v6;
  return (*(STACK[0xF18] + 8 * (((4 * v8) | (16 * v8)) ^ (a1 + 20102))))();
}

uint64_t sub_10029BF64(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0xF10];
  v4 = STACK[0x6E68];
  *(v4 + 608) = *(STACK[0x6E68] + 608) + (((v2 - (STACK[0xF10] + 371855760)) | (STACK[0xF10] + 371855760 - v2)) >> 31) + 1;
  ++*(v4 + 612);
  return (*(STACK[0xF18] + 8 * (v3 + 6677)))(a1, a2, 3923101465);
}

uint64_t sub_10029C014@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x6550] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * (a1 ^ 0x9B54 ^ (a1 + 1987687906) & 0x8986EAF7)))();
}

uint64_t sub_10029C11C@<X0>(int a1@<W8>)
{
  *(v3 + 24) = a1 + 1;
  v4 = *(v3 + 16);
  LODWORD(STACK[0x10EE0]) = STACK[0xF10] + 155453101 * ((((&STACK[0x10000] + 3800) | 0x168C95C1) + (~(&STACK[0x10000] + 3800) | 0xE9736A3E)) ^ 0xF0AA8E0F) + 296753103;
  STACK[0x10ED8] = v4;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v2 ^ 0x82E8)))(&STACK[0x10ED8]);
  STACK[0x1F38] = *(v5 + 8 * v1);
  return (*(v5 + 8 * (v1 + 3 * (v1 ^ 0x1070) + 2157)))(v6);
}

uint64_t sub_10029C29C()
{
  v0 = STACK[0xF10] - 18634;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] + 16238)))(STACK[0x9708]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10029C324@<X0>(int a1@<W8>)
{
  v7 = v2 < v3;
  v8 = (((a1 + 10926) | 0x3030) - 32613) & v1;
  *(v4 + v1) = *(v5 + v1) ^ *(*(&off_1010A0B50 + a1 - 5536) + v8 - 290094266) ^ *(*(&off_1010A0B50 + (a1 ^ 0x2F41)) + v8 - 1908532431) ^ (127 * v8) ^ *(*(&off_1010A0B50 + a1 - 7706) + v8 - 1094816002) ^ 0x5F;
  if (v7 == v1 + 1 > 0xB5C092EF)
  {
    v7 = v1 + 1245670673 < v2;
  }

  return (*(v6 + 8 * (((2 * !v7) | (!v7 << 6)) ^ a1)))();
}

uint64_t sub_10029C420@<X0>(uint64_t a1@<X8>)
{
  v7[11] = *(v6 + 8 * v2);
  v7[76] = a1;
  LODWORD(STACK[0x4EC]) = v3;
  v7[78] = v5;
  v7[79] = v4;
  return (*(v6 + 8 * ((45744 * (*(a1 + 24) == ((v1 - 676) | 0x9A01) - 371913728)) ^ (v1 - 1405))))();
}

uint64_t sub_10029C478()
{
  v1 = STACK[0x1D20];
  v2 = STACK[0x3D88];
  STACK[0x10EF0] = STACK[0x4020];
  STACK[0x10EE8] = v1;
  LODWORD(STACK[0x10EE4]) = v0 - 906386353 * ((~(&STACK[0x10000] + 3800) & 0xFAF0BEEB | (&STACK[0x10000] + 3800) & 0x50F4110) ^ 0xCBF173CF) + 15021;
  STACK[0x10ED8] = v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0xC8C8)))(&STACK[0x10ED8]);
  v5 = STACK[0x10EE0];
  LODWORD(STACK[0x7380]) = STACK[0x10EE0];
  return (*(v3 + 8 * ((48645 * (v5 == ((v0 + 1481083868) & 0xA7B8FBBB) - 371901482)) ^ v0)))(v4);
}

uint64_t sub_10029C6E0()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 6486;
  v2 = STACK[0xA810];
  LODWORD(STACK[0x99F8]) = LODWORD(STACK[0xA810]) - 331297390;
  v2 += 20698959;
  v3 = v2 < 0x5992CB2F;
  v4 = v2 > LODWORD(STACK[0x36E8]) + 1502792495;
  if (v3 != LODWORD(STACK[0x36E8]) > 0xA66D34D0)
  {
    v4 = v3;
  }

  return (*(STACK[0xF18] + 8 * ((!v4 * (v0 - 35632)) ^ v1)))();
}

uint64_t sub_10029C7C8()
{
  v1 = STACK[0xF10] - 29847;
  LODWORD(STACK[0x289C]) = v0;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10029C88C(uint64_t a1, char a2, char a3, uint64_t a4, int a5, int8x16_t a6, int8x8_t a7, int8x8_t a8)
{
  v15.val[0].i64[0] = (v11 + v12 - 1) & 0xF;
  v15.val[0].i64[1] = (v11 + v12 + 14) & 0xF;
  v15.val[1].i64[0] = (v11 + v12 + 13) & 0xF;
  v15.val[1].i64[1] = (v11 + v12 + 12) & 0xF;
  v15.val[2].i64[0] = (a2 + v12 + a3) & 0xF;
  v15.val[2].i64[1] = (v11 + v12 + 10) & 0xF;
  v15.val[3].i64[0] = (v11 + v12 + 9) & 0xF;
  v15.val[3].i64[1] = (v11 + v12) & 0xF ^ 8;
  *(a4 + v12) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a4 + v12), *(v8 + v15.val[0].i64[0] - 7)), veor_s8(*(v15.val[0].i64[0] + v10 - 4), *(v15.val[0].i64[0] + v9 - 6)))), a8), vmul_s8(*&vqtbl4q_s8(v15, a6), a7)));
  return (*(v13 + 8 * ((4 * (a1 != v12)) | (16 * (a1 != v12)) | a5)))();
}

uint64_t sub_10029C9F0@<X0>(int *a1@<X0>, int a2@<W8>)
{
  v6 = *a1;
  v7 = a1[4];
  v8 = *(a1 + 3);
  v9 = *(a1 + 4);
  v10 = (v2 & ~v4 | v4 & ~v2) + 2 * (v4 & v2);
  v11 = *(v3 + 8 * (v5 - 831934955));
  v12 = *(v11 - 527405895);
  v13 = *(v3 + 8 * (v5 - 831931384));
  v14 = *(a1 + 1);
  v15 = v13 + 4 * v12;
  v16 = *(v15 - 1940437438);
  v17 = (v10 ^ v2) + (v10 ^ v2) * v16;
  if (v10 == v2)
  {
    v18 = *(v15 - 1940437438);
  }

  else
  {
    v18 = 0;
  }

  *(v15 - 1940437438) = (v17 + v18) * v16;
  v19 = v6 + a2;
  *(v11 - 527405895) = (v12 + 1) % 6u;
  v20 = a2 ^ 0xD333BADD ^ v7;
  v21 = v19 ^ 0xF5E7DECD;
  v22 = *(v9 + (((v19 ^ 0xCD) - ((2 * (v19 ^ 0xCD)) & 0xFB) + 5) & 0xF ^ 5));
  v23 = *(v9 + (((v21 >> 4) - ((v21 >> 3) & 0xAA) + 5) & 0xF ^ 5));
  v24 = *(v9 + ((BYTE1(v21) - ((v21 >> 7) & 0xAA) + 5) & 0xF ^ 5));
  v25 = 16 * v23 - ((32 * v23) & 0xFFFFF03F);
  result = *(v9 + ((v20 >> 8) & 0xF));
  v27 = *(v9 + (((v21 >> 12) - ((v21 >> 11) & 0xAA) + 5) & 0xF ^ 5));
  v28 = *(v9 + ((BYTE2(v21) - ((v21 >> 15) & 0xAA) + 5) & 0xF ^ 5));
  v29 = (v28 << 16) - ((v28 << 17) & 0xFFC7FFFF) - 790378465;
  v30 = *(v9 + (((v21 >> 20) - ((v21 >> 19) & 0xAA) + 5) & 0xF ^ 5));
  v31 = *(v9 + ((HIBYTE(v21) - ((v21 >> 23) & 0xAA) + 5) & 0xF ^ 5));
  v32 = *(v9 + (((v21 >> 28) - ((v21 >> 27) & 0xAA) + 5) & 0xF ^ 5));
  *v14 = *(v9 + (v20 & 0xF)) ^ (16 * *(v9 + (v20 >> 4))) ^ (result << 8) ^ (*(v9 + (v20 >> 12)) << 12) ^ (*(v9 + ((v20 >> 16) & 0xF)) << 16) ^ (*(v9 + ((v20 >> 20) & 0xF)) << 20) ^ (*(v9 + ((v20 >> 24) & 0xF)) << 24) ^ (*(v9 + (v20 >> 28)) << 28) ^ 0xE9D5C711;
  *v8 = (v22 - 2 * (v22 & 0x1F) - 790378465) ^ (v25 - 790378465) ^ ((v24 << 8) - ((v24 << 9) & 0x19000) - 790378465) ^ ((v27 << 12) - ((v27 << 13) & 0x78000) - 790378465) ^ v29 ^ ((v30 << 20) - ((v30 << 21) & 0x1C00000) - 790378465) ^ ((v31 << 24) - ((v31 << 25) & 0xA0000000) - 790378465) ^ ((v32 << 28) - ((v32 << 29) & 0xBFFFFFFF) - 790378465) ^ 0xE9D5C711;
  return result;
}

uint64_t sub_10029CCF4@<X0>(uint64_t a1@<X8>)
{
  v6 = v3 - 1;
  *(v4 + v6) = *(a1 + v6);
  return (*(v5 + 8 * (((v6 != 0) * v2) ^ v1)))();
}

uint64_t sub_10029CF80@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v5 = (((v4 ^ 0x5B52A45D) - 1532142685) ^ ((v4 ^ 0x11ED062) - 18796642) ^ ((v4 ^ 0xB399B32E) + 1281772754)) + (a2 ^ 0x1374315E);
  v6 = ((2 * (v5 ^ 0xE7EF99D1)) ^ 0x631C457E) & (v5 ^ 0xE7EF99D1) ^ (2 * (v5 ^ 0xE7EF99D1)) & 0x318E22BE;
  v7 = (v5 ^ 0xC76DBB4D) & (2 * (v5 & 0xD661BB6E)) ^ v5 & 0xD661BB6E;
  v8 = ((4 * (v6 ^ 0x10822281)) ^ 0xC6388AFC) & (v6 ^ 0x10822281) ^ (4 * (v6 ^ 0x10822281)) & 0x318E22BC;
  v9 = (v8 ^ 0x802A0) & (16 * ((v6 ^ 0x210C0038) & (4 * v7) ^ v7)) ^ (v6 ^ 0x210C0038) & (4 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x31862003)) ^ 0x18E22BF0) & (v8 ^ 0x31862003) ^ (16 * (v8 ^ 0x31862003)) & 0x318E22B0;
  v11 = v9 ^ 0x318E22BF ^ (v10 ^ 0x10822200) & (v9 << 8);
  v12 = v5 ^ (2 * ((v11 << 16) & 0x318E0000 ^ v11 ^ ((v11 << 16) ^ 0x22BF0000) & (((v10 ^ 0x210C000F) << 8) & 0x318E0000 ^ 0x318C0000 ^ (((v10 ^ 0x210C000F) << 8) ^ 0xE220000) & (v10 ^ 0x210C000F))));
  v13 = (a1 + (((v12 ^ 0x204217AB) - 1039543978) ^ ((v12 ^ 0xA339A564) + 1098015643) ^ ((v12 ^ 0x771A4CDF) - 1789818334)) - 371865827);
  v14 = 1864610357 * ((v13 ^ *(*STACK[0xE50] + (*STACK[0xE58] & 0x72D7ACF8))) & 0x7FFFFFFF);
  v15 = 1864610357 * (v14 ^ HIWORD(v14));
  *v13 = *(v3 + (v12 ^ 0xF461FE10) + v2) ^ *(STACK[0x750] + (v15 >> 24)) ^ *((v15 >> 24) + STACK[0x760] + 2) ^ *((v15 >> 24) + STACK[0x758] + 3) ^ v15 ^ (-13 * BYTE3(v15)) ^ 0x5F;
  return (*(STACK[0xF18] + 8 * ((427 * (v12 == -194904560)) ^ a2)))();
}

uint64_t sub_10029D254@<X0>(int a1@<W1>, char a2@<W6>, int a3@<W7>, int a4@<W8>)
{
  v11 = *(STACK[0xF18] + 8 * a1);
  *(v5 + (a4 + a3)) = (a2 ^ HIBYTE(v4)) - ((2 * (a2 ^ HIBYTE(v4))) & 0xBF) + 95;
  *(v5 + (a4 + v7)) = (BYTE2(v4) ^ 0xF) - ((2 * (BYTE2(v4) ^ 0xF)) & 0xBF) + 95;
  *(v5 + (a4 + v9)) = (v8 ^ BYTE1(v4)) - ((2 * (v8 ^ BYTE1(v4))) & 0xBF) + 95;
  *(v5 + (a4 + v6)) = v4 ^ v10;
  return v11();
}

uint64_t sub_10029D2D0()
{
  v1 = STACK[0x5130];
  STACK[0x8FE8] = *(STACK[0x6508] - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x44A8]) = v1;
  LODWORD(STACK[0x7FD8]) = 1751212916;
  LODWORD(STACK[0x704C]) = -2116087556;
  LODWORD(STACK[0x4A8C]) = -371865840;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10029D358()
{
  *(v3 + 2536) = v0;
  v4 = (v1 ^ 0xB160) - 441182246 + v0;
  v5 = v1 - 14251 + v2 + 562102545;
  v6 = (v4 < 0x382E5AF2) ^ (v5 < 0x382E5AF2);
  v7 = v4 < v5;
  if (v6)
  {
    v7 = v5 < 0x382E5AF2;
  }

  return (*(STACK[0xF18] + 8 * ((21873 * v7) ^ v1)))();
}

uint64_t sub_10029D480()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * (v0 - 23984));
  return (*(v1 + 8 * ((v0 - 23984) ^ 0x1F35)))();
}

uint64_t sub_10029D690@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x3434]) = 1487383160;
  STACK[0x6840] = a1;
  LODWORD(STACK[0x5EBC]) = 1196074752;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10029D6D8()
{
  v2 = STACK[0x1BE8];
  *v2 = STACK[0x3288];
  *(v2 + 8) = STACK[0x9964];
  *(v2 + 12) = v0;
  *(v2 + 16) = 0xA52FF065E9D5C711;
  *(v2 + 24) = -371865839;
  STACK[0x69E0] = v2;
  v3 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v1);
  return (*(v3 + 8 * ((v1 + 4059) ^ v1)))();
}

uint64_t sub_10029D7B0@<X0>(unint64_t a1@<X0>, int a2@<W8>)
{
  LODWORD(STACK[0xA70C]) = v3;
  STACK[0xA710] = a1;
  LODWORD(STACK[0xA71C]) = v4;
  STACK[0xA720] = v6;
  STACK[0x97F0] = v5;
  STACK[0xA728] = v2;
  STACK[0xA730] = v2;
  v7 = *(STACK[0xF18] + 8 * a2);
  STACK[0xEC0] = a1;
  return v7();
}

uint64_t sub_10029D830@<X0>(unint64_t a1@<X8>)
{
  v4 = STACK[0x6088] + v1;
  STACK[0x2168] = a1;
  LODWORD(STACK[0x8A44]) = v3;
  STACK[0x8AB8] = v4;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_10029D86C()
{
  *STACK[0x2BC8] = 1;
  *STACK[0x5D48] = STACK[0x67F8];
  *STACK[0x58A0] = LODWORD(STACK[0x488C]) ^ 0xE9D5C711;
  return (*(STACK[0xF18] + 8 * (v0 - 18402)))();
}

uint64_t sub_10029D8B8()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] + 6736;
  LOBYTE(STACK[0x30FF]) = (((STACK[0xF10] + 13483) ^ 0xF000BFE6) & v0) == (STACK[0xF10] ^ 0x60008B3B);
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0x41A3)))(LODWORD(STACK[0x1C8C]) ^ 0xE9D5C711);
  STACK[0x2930] = v4;
  return (*(v3 + 8 * (((8 * (v4 == 0)) | (32 * (v4 == 0))) ^ v2)))();
}

uint64_t sub_10029D988@<X0>(uint64_t a1@<X8>)
{
  v3 = ((((v2 - 40208) | 0x823Au) ^ 0x1E83E74CDLL) & v1) + (a1 ^ 0xF3B4FFFFF41F7FFBLL);
  STACK[0xA7A8] = v3 + 0x4823EC0107EAEFAELL;
  v3 += 0xC4B00007361EF80;
  v4 = STACK[0x9978] - 0x5471262486C310F2;
  v5 = v3 < 0x67816F77;
  v6 = v3 > v4;
  if (v4 < 0x67816F77 != v5)
  {
    v6 = v5;
  }

  if (v6)
  {
    v7 = 371891407;
  }

  else
  {
    v7 = STACK[0xA750];
  }

  LODWORD(STACK[0xA7B0]) = v7;
  v8 = v7 == -371865839;
  v9 = v7 != -371865839;
  v10 = v8;
  LOBYTE(STACK[0xA7B7]) = v10;
  return (*(STACK[0xF18] + 8 * ((2 * v9) | (32 * v9) | v2)))();
}

uint64_t sub_10029DAE0@<X0>(int a1@<W8>)
{
  v5 = a1 + 318804297 + v3;
  v6 = (((v1 ^ 0x7FC84553) - 2143831379) ^ ((v1 ^ 0x65A60118) - 1705378072) ^ (((7 * (v4 ^ 0x90FE) - 205864713) ^ v1) + 205814950)) + 913248387;
  v7 = (v5 < 0x4C994972) ^ (v6 < 0x4C994972);
  v8 = v5 > v6;
  if (v7)
  {
    v8 = v5 < 0x4C994972;
  }

  if (v8)
  {
    v2 = 371891407;
  }

  return (*(STACK[0xF18] + 8 * ((57338 * (v2 == -371865839)) ^ (v4 - 8259))))();
}

uint64_t sub_10029DC24()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((v0 + 25365) ^ 0x74F0 | v0)))();
}

uint64_t sub_10029DD40@<X0>(unsigned int a1@<W8>)
{
  v3 = STACK[0xFE0];
  *(v3 + 56) = v2;
  *(v3 + 48) = *v3 + a1;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10029DE1C()
{
  v2 = STACK[0xF10] - 6030;
  v3 = (((v1 ^ 0xD8A20916) + 160224272) ^ ((v1 ^ 0xFB6F5DFE) + 708935912) ^ (((((STACK[0xF10] + 286192830) & 0xEEF0FBF7) - 456575698) ^ v1) + 904358919)) + 1074977548;
  v4 = (((LODWORD(STACK[0xB554]) ^ 0x7D620F45) - 2103578437) ^ ((LODWORD(STACK[0xB554]) ^ 0x8D895B2) - 148411826) ^ ((LODWORD(STACK[0xB554]) ^ 0x9C6F5DE6) + 1670423066)) + 1074977548;
  v5 = (v4 < 0x563D13FB) ^ (v3 < 0x563D13FB);
  v6 = v3 < v4;
  if (v5)
  {
    v6 = v4 < 0x563D13FB;
  }

  if (v6)
  {
    v7 = v0;
  }

  else
  {
    v7 = STACK[0xB554];
  }

  LODWORD(STACK[0xB564]) = v7;
  LODWORD(STACK[0xB56C]) = 519479572;
  LODWORD(STACK[0xB568]) = -371865839;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_10029E0E4()
{
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762648929) ^ (906386353 * ((((2 * (&STACK[0x10000] + 3800)) | 0x55B034C2) - (&STACK[0x10000] + 3800) + 1428678047) ^ 0x9BD9D745));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 28617)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (((*STACK[0x970] > v0 - 23280) * (v0 - 22770)) ^ v0)))(v2);
}

uint64_t sub_10029E1A0@<X0>(int a1@<W8>)
{
  v1 = a1 - 14248;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (a1 + 16267)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_10029E1CC(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0x2BC4]) = a3;
  STACK[0x8648] = STACK[0x5CE0];
  LODWORD(STACK[0x37DC]) = -1157902345;
  return (*(STACK[0xF18] + 8 * (v3 - 26090)))();
}

uint64_t sub_10029E228(uint64_t a1)
{
  v4 = 7 * (STACK[0xF10] ^ 0x83B4);
  v5 = STACK[0xF10] - 34397;
  v6 = STACK[0xF10] - 24348;
  LODWORD(STACK[0x825C]) = v1;
  LODWORD(STACK[0x3FA8]) = STACK[0xEB0];
  LODWORD(STACK[0x659C]) = STACK[0xEC0];
  LODWORD(STACK[0x1370]) = STACK[0xED0];
  LODWORD(STACK[0x5D04]) = v2;
  LODWORD(STACK[0x8A44]) = v3;
  return (*(STACK[0xF18] + 8 * (((v4 + (v5 ^ 0xFFFFC09A)) * (a1 == 0)) ^ v6)))();
}

uint64_t sub_10029E2A8@<X0>(unsigned int a1@<W3>, int a2@<W4>, uint64_t a3@<X8>)
{
  v7 = 4 * v5 - 4204346308;
  v8 = (((((a2 - 5634) | 0x4082) ^ 0x8AFD3A5C) + (*(*(a3 + 8) + v7) ^ 0x75028126)) ^ ((*(*(a3 + 8) + v7) ^ 0x554DA7D3) - 1431152595) ^ (((((a2 - 287717895) & 0x1126E436) + 378537146) ^ *(*(a3 + 8) + v7)) - 378587376)) + v6;
  v9 = (((*(*(v3 + 8) + v7) ^ 0x918056E2) + 1853860126) ^ ((*(*(v3 + 8) + v7) ^ 0xDFD57892) + 539658094) ^ ((*(*(v3 + 8) + v7) ^ 0x788AC075) - 2022359157)) + v6;
  if (v8 < a1 != v9 < a1)
  {
    v10 = v8 < a1;
  }

  else
  {
    v10 = v8 > v9;
  }

  return (*(v4 + 8 * ((77 * v10) ^ a2)))();
}

uint64_t sub_10029E49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, int a16, char *a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, char *a22)
{
  v25 = 1603510583 * ((((2 * &a16) | 0x47E6B34D4D8DCDBCLL) - &a16 - 0x23F359A6A6C6E6DELL) ^ 0x1C024E4A311DD475);
  a22 = &a10;
  a16 = v24 - v25 - 11694;
  a17 = &a14;
  a18 = v23;
  a19 = v25 + 0x787CF1E15A2A6CCALL;
  a20 = v25 + 0x1D5BAA6B483C089DLL;
  v26 = (*(v22 + 8 * (v24 + 34534)))(&a16);
  return (*(v22 + 8 * (((a21 == -371865839) * (((v24 - 16432) | 0xA212) ^ 0x6BFE)) ^ v24)))(v26);
}

uint64_t sub_10029E590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  STACK[0x7548] = a8;
  STACK[0x77B0] = &STACK[0x7420];
  LODWORD(STACK[0x648C]) = -335035783;
  return (*(STACK[0xF18] + 8 * v8))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_10029E654(int a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, char a20, uint64_t a21, uint64_t a22, __int16 a23, uint64_t a24, int a25, __int16 a26, char a27, __int16 a28)
{
  v42 = ((v31 & ~v28 | v28 & v29) ^ v32) * a1;
  a26 = v36 + v42;
  a28 = v34 ^ v42;
  a23 = v42 + v35 + a2;
  a25 = v38 ^ v42;
  a24 = v30;
  (*(a18 + 8 * v39))(&a23);
  *(&a20 + (v35 - 572)) = a27;
  v44 = v37 < v33 || v33 + (v35 - 571) < v37;
  return (*(a18 + 8 * ((v44 * v41) ^ v40)))(1022166737, 11943);
}

uint64_t sub_10029E744()
{
  *v3 = v0;
  *v4 = (*(v2 + 8 * (v1 + 30837)))();
  return (*(v2 + 8 * v1))();
}

uint64_t sub_10029E8C4@<X0>(int a1@<W8>)
{
  v4 = (v3 ^ 0xFC46FFBBDE95DBDELL) + ((v2 - 40618) | 0x444) + ((2 * v3) & 0x1BD2BB7BCLL);
  v5 = STACK[0x6388];
  v6 = (v4 + STACK[0x3918] + 0x3B90044216A1E3ELL);
  v5[15] = v6[15];
  v5[14] = v6[14];
  v5[13] = v6[13];
  v5[12] = v6[12];
  v5[11] = v6[11];
  v5[10] = v6[10];
  v5[9] = v6[9];
  v5[8] = v6[8];
  v5[7] = v6[7];
  v5[6] = v6[6];
  v5[5] = v6[5];
  v5[4] = v6[4];
  v5[3] = v6[3];
  v5[2] = v6[2];
  v5[1] = v6[1];
  *v5 = *v6;
  LODWORD(STACK[0x3E80]) = v1 + 20;
  v7 = ((v1 + LODWORD(STACK[0x17DC]) + 305878834) | (((v1 + LODWORD(STACK[0x17DC]) + 305878834) < 0x33CBA83B) << 32)) + 2714949108u;
  v8 = STACK[0x6018] - 0x5D1E61DD45A2AE8;
  v9 = v7 < 0xD59E7E2B;
  v10 = v7 > v8;
  if (v8 < 0xD59E7E2B != v9)
  {
    v10 = v9;
  }

  if (v10)
  {
    v11 = 371891407;
  }

  else
  {
    v11 = STACK[0xB75C];
  }

  LODWORD(STACK[0x50BC]) = v11;
  v12 = v11 == a1;
  v13 = v11 != a1;
  v14 = v12;
  LOBYTE(STACK[0x829F]) = v14;
  return (*(STACK[0xF18] + 8 * ((28 * v13) ^ v2)))();
}

uint64_t sub_10029EB44()
{
  v0 = STACK[0xF10] - 11075;
  v1 = STACK[0xF10] - 35236;
  v2 = STACK[0xF10];
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v2 + 16221)))(32) == 0;
  return (*(v3 + 8 * ((v4 * (v2 + v1 - 19679)) ^ v0)))();
}

uint64_t sub_10029EBAC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, int a18)
{
  v20 = 1022166737 * ((2 * (&a15 & 0x1FC3AA98) - &a15 + 1614566759) ^ 0xDA2CB4F5);
  a15 = a12;
  a16 = a1 - v20;
  a17 = v20 + 19682 + v19;
  v21 = (*(v18 + 8 * (v19 + 39560)))(&a15);
  return (*(v18 + 8 * (((a18 != 1497668682) * (((v19 ^ 0x20C4) + 44648) ^ 0xBF17)) ^ v19)))(v21);
}

uint64_t sub_10029ED6C()
{
  LODWORD(STACK[0x6AC4]) = v0;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x9D30 ^ (v1 + 30239))))();
}

uint64_t sub_10029EE18()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 11957;
  v2 = *(&STACK[0x3EEC] + (STACK[0x3EED] & 3 ^ 2));
  v3 = 1009 * (((v2 ^ 0x8657) + 31145) ^ ((v2 ^ 0x341A) + ((STACK[0xF10] - 11957) ^ 0x9760)) ^ ((v2 ^ 0xB2F3) + 19725)) + 32305;
  v4 = v3 & 0xF3B5 ^ 0xC284;
  v5 = (v3 ^ (2 * ((v3 ^ 0x6EAC) & (2 * ((v3 ^ 0x6EAC) & (2 * ((v3 ^ 0x6EAC) & (2 * ((v3 ^ 0x6EAC) & (2 * ((v3 ^ 0x6EAC) & (2 * ((v3 ^ 0x6EAC) & (2 * ((v3 ^ 0x6EAC) & (2 * ((v3 ^ 0x6EAC) & (2 * ((v3 ^ 0x6EAC) & (2 * ((v3 ^ 0x6EAC) & (2 * ((v3 ^ 0x6EAC) & (2 * ((v3 ^ 0x6EAC) & (2 * ((v3 ^ 0x6EAC) & (2 * (v3 & (2 * v3) & 0x5D5A ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4))) ^ 0x7D48;
  v6 = ((16777281 * (((v5 ^ 0xD3283E98) + 752337256) ^ ((v5 ^ 0x2B6122B2) - 727786162) ^ ((v5 ^ 0xF84992D7) + 129396009)) - 498774467) >> 16);
  v7 = STACK[0x90C0] + v6 + ((v6 < 0x21) << 8) + 0x423E6DBB44337CD4;
  v8 = (((v7 ^ 0xE28DB03947C81E73) + 0x5F4C227DFC049D5FLL) ^ v7 ^ ((v7 ^ 0x4A9EE948E75C0803) - 0x8A084F3A36F74D1) ^ ((v7 ^ 0x44B6C3251A0BD04CLL) - 0x688AE9E5E38AC9CLL) ^ ((v7 ^ 0xAE9BF7EFFEACBAECLL) + 0x135A65AB456039C2)) & 0xFFFFFFFFFFFFFFFCLL;
  STACK[0x8CC8] = (((v8 ^ 0x9746218420AE69A9) - 0xE04DECEF71F65FBLL) ^ ((v8 ^ 0xA4089C009FDDC0CDLL) - 0x3D4A634A486CCC9FLL) ^ ((v8 ^ 0x7170D03FFB40D5B4) + 0x17CDD08AD30E261ALL)) + 0x165DD42BA0DF0744;
  v9 = *(&STACK[0x3EEC] + (STACK[0x3EEE] & 3 ^ 2));
  v10 = 5042 * (((v9 ^ 0x2309) + 23799) ^ ((v9 ^ 0x5EE0) - 24288) ^ ((v9 ^ 0x7D57) + 681)) - 20583;
  LOWORD(v8) = v10 & 0x1CBB ^ 0x1B1C;
  v11 = ((v10 ^ (2 * ((v10 ^ 0x6E82) & (2 * ((v10 ^ 0x6E82) & (2 * ((v10 ^ 0x6E82) & (2 * ((v10 ^ 0x6E82) & (2 * ((v10 ^ 0x6E82) & (2 * ((v10 ^ 0x6E82) & (2 * ((v10 ^ 0x6E82) & (2 * ((v10 ^ 0x6E82) & (2 * ((v10 ^ 0x6E82) & (2 * ((v10 ^ 0x6E82) & (2 * ((v10 ^ 0x6E82) & (2 * ((v10 ^ 0x6E82) & (2 * ((v10 ^ 0x6E02) & (2 * ((v10 ^ 0x6E02) & (2 * v10) & 0x5D06 ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8))) ^ 0x9DCA) & 0xFFFE;
  v12 = ((13 * (((v11 ^ 0xA05BF67C) + 1604585860) ^ ((v11 ^ 0xB7854627) + 1216002521) ^ ((v11 ^ 0x17DE312B) + 2215637)) + 1675952) >> 16) + 26;
  v13 = (v12 ^ (2 * ((v12 ^ 8) & (2 * (v12 & (2 * (v12 & 0xFE ^ 0x12)) ^ v12 & 0xFE ^ 0x12)) ^ v12 & 0xFE ^ 0x12))) & 0x1C;
  return (*(STACK[0xF18] + 8 * ((97 * ((((v13 - (v0 - 31)) | (v0 - 31 - v13)) >> 7) & 1)) ^ v1)))();
}

uint64_t sub_10029F3A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  STACK[0x2688] = a8;
  STACK[0x1488] = &STACK[0x17A0];
  STACK[0x5D28] = &STACK[0x4A30];
  LODWORD(STACK[0x4704]) = 1610709631;
  return (*(STACK[0xF18] + 8 * v8))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_10029F480()
{
  v0 = STACK[0xF10];
  v1 = STACK[0x56D8];
  v2 = STACK[0x45D8];
  v3 = LOBYTE(STACK[0x48B7]);
  v1[20] = *(STACK[0x45D8] + v3) - ((*(STACK[0x45D8] + v3) << (STACK[0xF10] - 58)) & 0xBE) + 95;
  v1[21] = *(v2 + (v3 + 1)) - ((2 * *(v2 + (v3 + 1))) & 0xBF) + 95;
  v1[22] = *(v2 + (v3 + 2)) - ((2 * *(v2 + (v3 + 2))) & 0xBF) + 95;
  v1[23] = *(v2 + (v3 + 3)) - ((2 * *(v2 + (v3 + 3))) & 0xBF) + 95;
  v1[24] = *(v2 + (v3 + 4)) - ((2 * *(v2 + (v3 + 4))) & 0xBF) + 95;
  v1[25] = *(v2 + (v3 + 5)) - ((2 * *(v2 + (v3 + 5))) & 0xBF) + 95;
  v1[26] = *(v2 + (v3 + 6)) - ((2 * *(v2 + (v3 + 6))) & 0xBF) + 95;
  v1[27] = *(v2 + (v3 + 7)) - ((2 * *(v2 + (v3 + 7))) & 0xBF) + 95;
  v1[28] = *(v2 + (v3 + 8)) - ((2 * *(v2 + (v3 + 8))) & 0xBF) + 95;
  v1[29] = *(v2 + (v3 + 9)) - ((2 * *(v2 + (v3 + 9))) & 0xBF) + 95;
  *(STACK[0x56D8] + 30) = 24480;
  v4 = STACK[0x4618];
  v5 = STACK[0xF18];
  STACK[0x98B0] = *(STACK[0xF18] + 8 * (v0 - 34300));
  return (*(v5 + 8 * (v0 - 29131)))(v4);
}

uint64_t sub_10029F850()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 21415 + (v0 ^ 0x6362))))();
}

uint64_t sub_10029F970@<X0>(int a1@<W3>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v34 = ((v30 ^ 0xC8B07517) + 417320054) ^ v30 ^ ((v30 ^ 0x7FDFDFED) - 1347393904) ^ ((v30 ^ 0x974B5236) + 1193564519 + ((v33 - 26650) | 0x8040)) ^ ((v30 ^ 0x3A2D7549 ^ (v33 + 1035952465) & 0xF7D9EFFE) - 539293900);
  v35 = a2 - 246837890 + (((v34 ^ 0x23269694) - 957993202) ^ ((v34 ^ 0xCB9F9D3A) + 777987236) ^ ((v34 ^ 0x685E8188) - 1919010798)) - 1079030756;
  v36 = (v35 ^ 0x5C062D9E) & (2 * (v35 & 0x9E40301E)) ^ v35 & 0x9E40301E;
  v37 = ((2 * (v35 ^ 0x54060D8A)) ^ 0x948C7B28) & (v35 ^ 0x54060D8A) ^ (2 * (v35 ^ 0x54060D8A)) & 0xCA463D94;
  v38 = v37 ^ 0x4A420494;
  v39 = v37 & (4 * v36) ^ v36;
  v40 = *(v31 + 4 * a27);
  v41 = (v40 ^ 0xD04FBC5B) & (2 * (v40 & a1)) ^ v40 & a1;
  v42 = ((2 * (v40 ^ 0xD0CDCC1F)) ^ 0x144EAF8) & (v40 ^ 0xD0CDCC1F) ^ (2 * (v40 ^ 0xD0CDCC1F)) & 0xA2757C;
  v43 = v35 ^ v40 ^ (2 * (((4 * (v42 ^ 0xA21504)) & 0xA27570 ^ 0x805570 ^ ((4 * (v42 ^ 0xA21504)) ^ 0x289D5F0) & (v42 ^ 0xA21504)) & (16 * ((v42 ^ 0x6018) & (4 * v41) ^ v41)) ^ (v42 ^ 0x6018) & (4 * v41) ^ v41 ^ v39 ^ v38 & (16 * v39) & ((4 * v38) ^ 0x2918F640)));
  v44 = *(v31 + 4 * v32) + (((v43 ^ 0x3196E18C) + 147808361) ^ ((v43 ^ 0xC9C6992E) - 258008885) ^ ((v43 ^ 0xA637F1DF) - 1620152260));
  v45 = ((((-17 - v44) ^ (v44 + 23)) ^ (((v44 + 23) ^ 1) + 1)) & 7) == 4;
  return (*(a30 + 8 * ((v45 | (2 * v45)) + v33)))();
}

uint64_t sub_10029FCDC(uint64_t a1)
{
  v3 = *(STACK[0x7F8] + v1);
  *(a1 + v1) = v3 + (~(v3 << ((2 * (((v2 - 22) | 0xB0) ^ 0x44)) ^ 0x8B)) | 0xA9) + 44;
  return (*(STACK[0xF18] + 8 * ((113 * (v3 != 0)) ^ v2)))();
}

uint64_t sub_10029FD98()
{
  v4 = (v0 - 706832283) & 0x2A215FDF;
  v5 = STACK[0x2C78];
  *(v5 + (v3 + 289830283)) = 94;
  LODWORD(STACK[0xED0]) = v4;
  LODWORD(STACK[0x6A38]) = (v4 - 7336) & v1 ^ 0xB0F89144;
  STACK[0x23D0] = v5;
  LODWORD(STACK[0x44B4]) = v2;
  LODWORD(STACK[0x2CE8]) = 600221794;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1002A0448()
{
  v2 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x20FAB224)) ^ 0x20FAB225;
  v3 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v2 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v2;
  v4 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v3 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v3;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  LODWORD(v9) = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  STACK[0xC360] = 0;
  STACK[0xC368] = v0;
  v10 = 16777619 * ((553300517 * v9 + 7) ^ (553300517 * v9)) % 7;
  v11 = *(&STACK[0xC360] | v10);
  *(&STACK[0xC360] | v10) = 0;
  LOBYTE(STACK[0xC367]) = v11;
  v12 = 16777619 * ((553300517 * v9 + 6) ^ (553300517 * v9)) % 6;
  v13 = *(&STACK[0xC360] | v12);
  *(&STACK[0xC360] | v12) = STACK[0xC366];
  LOBYTE(STACK[0xC366]) = v13;
  v14 = 16777619 * ((553300517 * v9 + 5) ^ (553300517 * v9)) % 5;
  v15 = *(&STACK[0xC360] | v14);
  *(&STACK[0xC360] | v14) = STACK[0xC365];
  LOBYTE(STACK[0xC365]) = v15;
  v16 = STACK[0xC360];
  LOBYTE(STACK[0xC360]) = STACK[0xC364];
  LOBYTE(STACK[0xC364]) = v16;
  v17 = 16777619 * ((553300517 * v9 + 3) ^ (553300517 * v9)) % 3;
  v18 = *(&STACK[0xC360] | v17);
  *(&STACK[0xC360] | v17) = STACK[0xC363];
  LOBYTE(STACK[0xC363]) = v18;
  v19 = STACK[0xC361];
  LOBYTE(STACK[0xC362]) = STACK[0xC360];
  LOWORD(STACK[0xC360]) = v19;
  v20 = vdup_n_s32(553300517 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xC360] = vmla_s32(v22, STACK[0xC360], vdup_n_s32(0x1000193u));
  STACK[0xC368] ^= STACK[0xC360];
  STACK[0xC368] = vmul_s32(vsub_s32(STACK[0xC368], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xC36A];
  LOWORD(STACK[0xC369]) = STACK[0xC368];
  LOBYTE(STACK[0xC368]) = v23;
  v24 = (&STACK[0xC368] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xC36B];
  LOBYTE(STACK[0xC36B]) = v19;
  LOBYTE(v24) = STACK[0xC368];
  LOBYTE(STACK[0xC368]) = STACK[0xC36C];
  LOBYTE(STACK[0xC36C]) = v24;
  v25 = (&STACK[0xC368] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xC36D];
  LOBYTE(STACK[0xC36D]) = v24;
  v26 = (&STACK[0xC368] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC36E];
  LOBYTE(STACK[0xC36E]) = v25;
  v27 = (&STACK[0xC368] | v10);
  v28 = *v27;
  *v27 = STACK[0xC36F];
  LOBYTE(STACK[0xC36F]) = v28;
  v29 = STACK[0xC368];
  v30 = (553300517 * STACK[0xC368]) ^ v9;
  for (i = 1; i != 73; ++i)
  {
    v32 = 16777619 * ((v30 + i) ^ v30) % i;
    v33 = *(v29 + 8 * v32) ^ *(v29 + 8 * i);
    *(v29 + 8 * i) = v33;
    v34 = *(v29 + 8 * v32) ^ v33;
    *(v29 + 8 * v32) = v34;
    *(v29 + 8 * i) ^= v34;
  }

  v35 = 0;
  v36 = xmmword_100BC7620;
  v37 = xmmword_100BC7630;
  v38 = xmmword_100BC7640;
  v39 = xmmword_100BC7650;
  v40.i64[0] = 0x9B009B009B009BLL;
  v40.i64[1] = 0x9B009B009B009BLL;
  v41.i64[0] = 0x1000000010;
  v41.i64[1] = 0x1000000010;
  v42 = vdupq_n_s32(v30);
  do
  {
    v43 = *(v29 + v35);
    v44 = vmovl_high_u8(v43);
    v45 = vmovl_u8(*v43.i8);
    v56.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v38, v42), vsubq_s32(v38, v42)), v42), vmull_high_u16(v45, v40));
    v56.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v37, v42), vsubq_s32(v37, v42)), v42), vmull_u16(*v44.i8, 0x9B009B009B009BLL));
    v56.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v39, v42), vsubq_s32(v39, v42)), v42), vmull_u16(*v45.i8, 0x9B009B009B009BLL));
    v56.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v36, v42), vsubq_s32(v36, v42)), v42), vmull_high_u16(v44, v40));
    *(v29 + v35) = vqtbl4q_s8(v56, xmmword_100BC7660);
    v35 += 16;
    v39 = vaddq_s32(v39, v41);
    v38 = vaddq_s32(v38, v41);
    v37 = vaddq_s32(v37, v41);
    v36 = vaddq_s32(v36, v41);
  }

  while (v35 != 576);
  v46 = 0;
  v47 = xmmword_100F52AE0;
  v48 = xmmword_100F52AF0;
  v49 = vdupq_n_s32(v30);
  v50 = v29 + 576;
  v51.i64[0] = 0x9B009B009B009BLL;
  v51.i64[1] = 0x9B009B009B009BLL;
  v52.i64[0] = 0x800000008;
  v52.i64[1] = 0x800000008;
  do
  {
    v53 = vmovl_u8(*(v50 + v46));
    v55.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v47, v49), vsubq_s32(v47, v49)), v49), vmull_high_u16(v53, v51));
    v55.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v48, v49), vsubq_s32(v48, v49)), v49), vmull_u16(*v53.i8, 0x9B009B009B009BLL));
    *(v50 + v46) = vqtbl2q_s8(v55, xmmword_100F52AD0).u64[0];
    v48 = vaddq_s32(v48, v52);
    v47 = vaddq_s32(v47, v52);
    v46 += 8;
  }

  while (v46 != 8);
  *STACK[0x940] = STACK[0xC368];
  return (*(STACK[0xF18] + 8 * (v1 + 2631)))(v47, v48);
}

uint64_t sub_1002A0928()
{
  v4 = *v3;
  STACK[0x8998] = v1;
  STACK[0x7FE0] = STACK[0x6440];
  LODWORD(STACK[0x2FD8]) = v4;
  STACK[0x12F8] = v2 + 72;
  LODWORD(STACK[0x7F28]) = 1729220619;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1002A0A10()
{
  v0 = (STACK[0xF10] - 33594) | 0x2010;
  v1 = STACK[0xF10] - 25406;
  STACK[0x9398] = *(STACK[0x2A50] + 8);
  return (*(STACK[0xF18] + 8 * ((LOBYTE(STACK[0x5953]) * (v0 ^ 0x27FD)) ^ v1)))();
}

uint64_t sub_1002A0B00@<X0>(int a1@<W8>)
{
  v2 = STACK[0xF18];
  STACK[0x9320] = *(STACK[0xF18] + 8 * a1);
  return (*(v2 + 8 * (v1 - 26338)))();
}

uint64_t sub_1002A0D88()
{
  STACK[0x7F90] = STACK[0x54A0];
  LODWORD(STACK[0x1820]) = STACK[0x48AC];
  v1 = STACK[0x7690];
  STACK[0x2678] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = v1 + ((2 * (v0 ^ 0xC78F)) ^ 0xCCELL);
  STACK[0x3888] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762675257) ^ (906386353 * ((2 * ((&STACK[0x10000] + 3800) & 0x4A62EA78) - (&STACK[0x10000] + 3800) - 1247996537) ^ 0x849CD8A3));
  STACK[0x10EE0] = 0;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0xB71)))(&STACK[0x10ED8]);
  if (*STACK[0x970])
  {
    v4 = 1;
  }

  else
  {
    v4 = *STACK[0x940] == 0;
  }

  v5 = !v4;
  return (*(v2 + 8 * ((v5 * (((v0 + 369675872) | 0x1000544) ^ 0x17099549)) ^ v0)))(v3);
}

uint64_t sub_1002A0EA4()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 5775;
  v2 = STACK[0xA810];
  LODWORD(STACK[0x99F0]) = LODWORD(STACK[0xA810]) - 517641171;
  v2 -= 1670617743;
  v3 = v2 < 0xF4C35959;
  v4 = v2 > LODWORD(STACK[0x36E8]) + (v0 ^ 0xF4C3D262);
  if (v3 != LODWORD(STACK[0x36E8]) > 0xB3CA6A6)
  {
    v4 = v3;
  }

  return (*(STACK[0xF18] + 8 * ((31 * !v4) ^ v1)))();
}

uint64_t sub_1002A103C()
{
  v1 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 880)))();
}

uint64_t sub_1002A1218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *(a7 + 8) = 0;
  STACK[0x3420] = a7 + 8;
  *(a7 + 16) = 0;
  *a7 = 0;
  STACK[0x5520] = a7 + 16;
  STACK[0x6BE0] = a7 + 0x32965FC7A5F79673;
  *(a7 + 32) = 0;
  STACK[0x87D8] = a7 + 32;
  *(a7 + 40) = v7;
  STACK[0x8DB0] = a7 + 40;
  *(a7 + 48) = 0;
  STACK[0x3968] = a7 + 48;
  *(a7 + 56) = v7;
  STACK[0x6C08] = a7 + 56;
  *(a7 + 64) = 0;
  *(a7 + 24) = v7;
  STACK[0x7620] = a7 + 64;
  *(a7 + 72) = v7;
  STACK[0x7038] = a7 + 0x3BE14D053E3C0D28;
  return (*(STACK[0xF18] + 8 * (v8 - 30619 + ((v8 - 1153589980) & 0x44C2EB3B))))(a1, a2, a3, a4, a5, a6, &STACK[0xA237]);
}

uint64_t sub_1002A1344()
{
  v1 = (((v0 ^ 0x21113C5) - 34673605) ^ ((v0 ^ 0xEA170087) + 367591289) ^ (((((4 * STACK[0xF10]) ^ 0x28588) + 30616303) ^ v0) - 30659667)) - 1733048383;
  v2 = (((LODWORD(STACK[0x326C]) ^ 0xE535C81A) + 449460198) ^ ((LODWORD(STACK[0x326C]) ^ 0x1C20D476) - 471913590) ^ ((LODWORD(STACK[0x326C]) ^ 0x10C0DB7D) - 281074557)) - 1733048419;
  v3 = v2 < 0xAEDE00B0;
  v4 = v1 < v2;
  if (v3 != v1 < 0xAEDE00B0)
  {
    v4 = v3;
  }

  return (*(STACK[0xF18] + 8 * (((2 * !v4) | (4 * !v4)) ^ (STACK[0xF10] - 29480))))();
}

uint64_t sub_1002A14B4(uint64_t a1, uint64_t a2)
{
  STACK[0x95A0] = v3;
  LOWORD(STACK[0x79DE]) = 7085;
  LODWORD(STACK[0x16B4]) = 464646489;
  return (*(STACK[0xF18] + 8 * (v2 - 27257)))(a1, a2, STACK[0xE58], STACK[0xE50]);
}

uint64_t sub_1002A14FC()
{
  v3 = 0;
  v4 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x20FAB224)) ^ 0x20FAB225;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  v11 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  v12 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v11 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v11;
  STACK[0xBED0] = 0;
  v13 = 16777619 * ((553300517 * v12 + 7) ^ (553300517 * v12)) % 7;
  v14 = 16777619 * ((553300517 * v12 + 6) ^ (553300517 * v12)) % 6;
  v15 = 16777619 * ((553300517 * v12 + 5) ^ (553300517 * v12)) % 5;
  v16 = *(&STACK[0xBED0] | v13);
  *(&STACK[0xBED0] | v13) = STACK[0xBED7];
  v17 = *(&STACK[0xBED0] | v14);
  *(&STACK[0xBED0] | v14) = STACK[0xBED6];
  v18 = *(&STACK[0xBED0] | v15);
  *(&STACK[0xBED0] | v15) = STACK[0xBED5];
  STACK[0xBED8] = v0;
  v19 = vdup_n_s32(553300517 * v12);
  v20 = 16777619 * ((553300517 * v12 + 3) ^ (553300517 * v12)) % 3;
  v21.i32[0] = v19.i32[0];
  v21.i32[1] = 553300517 * v12 + 1;
  LOBYTE(STACK[0xBED7]) = v16;
  v22 = veor_s8(vmul_s32(v21, v19), v19);
  LOBYTE(STACK[0xBED6]) = v17;
  LOBYTE(STACK[0xBED5]) = v18;
  v23 = STACK[0xBED0];
  LOBYTE(STACK[0xBED0]) = STACK[0xBED4];
  LOBYTE(STACK[0xBED4]) = v23;
  v24 = *(&STACK[0xBED0] | v20);
  *(&STACK[0xBED0] | v20) = STACK[0xBED3];
  LOBYTE(STACK[0xBED3]) = v24;
  v25 = STACK[0xBED1];
  LOBYTE(STACK[0xBED2]) = STACK[0xBED0];
  LOWORD(STACK[0xBED0]) = v25;
  STACK[0xBED0] = vmla_s32(v22, STACK[0xBED0], vdup_n_s32(0x1000193u));
  v26 = STACK[0xBED8];
  v27 = (553300517 * STACK[0xBED8]) ^ v12;
  v28 = vdupq_n_s32(v27);
  v29 = xmmword_100BC7620;
  v30 = xmmword_100BC7630;
  v31 = xmmword_100BC7640;
  v32 = xmmword_100BC7650;
  v33.i64[1] = 0xFFFFFF0FFFFFFF0ELL;
  v34.i64[0] = 0x9393939393939393;
  v34.i64[1] = 0x9393939393939393;
  v35.i64[0] = 0x1000000010;
  v35.i64[1] = 0x1000000010;
  do
  {
    v36 = *(v26 + v3);
    v56.val[1] = veorq_s8(vqtbl1q_s8(v36, xmmword_100BC7690), veorq_s8(v28, vmulq_s32(vaddq_s32(v31, v28), vsubq_s32(v31, v28))));
    v56.val[0] = veorq_s8(vqtbl1q_s8(v36, xmmword_100BC76A0), veorq_s8(v28, vmulq_s32(vaddq_s32(v32, v28), vsubq_s32(v32, v28))));
    v56.val[2] = veorq_s8(vqtbl1q_s8(v36, xmmword_100BC7680), veorq_s8(v28, vmulq_s32(vaddq_s32(v30, v28), vsubq_s32(v30, v28))));
    v56.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v36, xmmword_100BC7670), v28), vmulq_s32(vaddq_s32(v29, v28), vsubq_s32(v29, v28)));
    *(v26 + v3) = vmulq_s8(vqtbl4q_s8(v56, xmmword_100BC7660), v34);
    v3 += 16;
    v32 = vaddq_s32(v32, v35);
    v31 = vaddq_s32(v31, v35);
    v30 = vaddq_s32(v30, v35);
    v29 = vaddq_s32(v29, v35);
  }

  while (v3 != 576);
  v37 = 0;
  v38 = xmmword_100F52AE0;
  v39 = vdupq_n_s32(v27);
  v40 = xmmword_100F52AF0;
  v41 = v26 + 576;
  v42.i64[0] = 0x800000008;
  v42.i64[1] = 0x800000008;
  do
  {
    v33.i64[0] = *(v41 + v37);
    v55.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v33, xmmword_100BC7690), v39), vmulq_s32(vaddq_s32(v38, v39), vsubq_s32(v38, v39)));
    v55.val[0] = veorq_s8(vqtbl1q_s8(v33, xmmword_100BC76A0), veorq_s8(v39, vmulq_s32(vaddq_s32(v40, v39), vsubq_s32(v40, v39))));
    v33 = vqtbl2q_s8(v55, xmmword_100F52AD0);
    *(v41 + v37) = vmul_s8(*v33.i8, 0x9393939393939393);
    v40 = vaddq_s32(v40, v42);
    v38 = vaddq_s32(v38, v42);
    v37 += 8;
  }

  while (v37 != 8);
  v43 = 72;
  do
  {
    v44 = 16777619 * ((v27 + v43) ^ v27) % v43;
    v45 = *(v26 + 8 * v44) ^ *(v26 + 8 * v43);
    *(v26 + 8 * v43) = v45;
    v46 = *(v26 + 8 * v44) ^ v45;
    *(v26 + 8 * v44) = v46;
    *(v26 + 8 * v43) ^= v46;
    v47 = v43-- + 1;
  }

  while (v47 > 2);
  v48 = *(&STACK[0xBED8] + v13);
  *(&STACK[0xBED8] + v13) = STACK[0xBEDF];
  LOBYTE(STACK[0xBEDF]) = v48;
  v49 = *(&STACK[0xBED8] + v14);
  *(&STACK[0xBED8] + v14) = STACK[0xBEDE];
  LOBYTE(STACK[0xBEDE]) = v49;
  v50 = *(&STACK[0xBED8] + v15);
  *(&STACK[0xBED8] + v15) = STACK[0xBEDD];
  LOBYTE(STACK[0xBEDD]) = v50;
  v51 = STACK[0xBED8];
  LOBYTE(STACK[0xBED8]) = STACK[0xBEDC];
  LOBYTE(STACK[0xBEDC]) = v51;
  v52 = *(&STACK[0xBED8] + v20);
  *(&STACK[0xBED8] + v20) = STACK[0xBEDB];
  LOBYTE(STACK[0xBEDB]) = v52;
  v53 = STACK[0xBED9];
  LOBYTE(STACK[0xBEDA]) = STACK[0xBED8];
  LOWORD(STACK[0xBED8]) = v53;
  STACK[0xBED8] = vmla_s32(v22, STACK[0xBED8], vdup_n_s32(0x1000193u));
  *v1 = STACK[0xBED8] ^ STACK[0xBED0];
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_1002A1994()
{
  v0 = *(STACK[0xF18] + 8 * (LODWORD(STACK[0xED0]) + 2197));
  v1 = LODWORD(STACK[0xED0]) ^ 0xB658;
  LODWORD(STACK[0xED0]) = v1;
  return v0(559972359, 210318080, 1773338624, 770290551, (v1 - 873836432), 770244608, 71827456, 863436800);
}

uint64_t sub_1002A1A38@<X0>(int a1@<W8>)
{
  v3 = 0;
  v4 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x20FAB224)) ^ 0x20FAB225;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  v11 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  v12 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v11 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v11;
  STACK[0xBEC0] = 0;
  STACK[0xBEC8] = v1;
  v13 = 16777619 * ((553300517 * v12 + 7) ^ (553300517 * v12)) % 7;
  v14 = 16777619 * ((553300517 * v12 + 6) ^ (553300517 * v12)) % 6;
  v15 = 16777619 * ((553300517 * v12 + 5) ^ (553300517 * v12)) % 5;
  v16 = *(&STACK[0xBEC0] | v13);
  *(&STACK[0xBEC0] | v13) = STACK[0xBEC7];
  v17 = *(&STACK[0xBEC0] | v14);
  *(&STACK[0xBEC0] | v14) = STACK[0xBEC6];
  v18 = *(&STACK[0xBEC0] | v15);
  *(&STACK[0xBEC0] | v15) = STACK[0xBEC5];
  v19 = vdup_n_s32(553300517 * v12);
  v20 = 16777619 * ((553300517 * v12 + 3) ^ (553300517 * v12)) % 3;
  v21.i32[0] = v19.i32[0];
  v21.i32[1] = 553300517 * v12 + 1;
  LOBYTE(STACK[0xBEC7]) = v16;
  v22 = veor_s8(vmul_s32(v21, v19), v19);
  LOBYTE(STACK[0xBEC6]) = v17;
  LOBYTE(STACK[0xBEC5]) = v18;
  v23 = STACK[0xBEC0];
  LOBYTE(STACK[0xBEC0]) = STACK[0xBEC4];
  LOBYTE(STACK[0xBEC4]) = v23;
  v24 = *(&STACK[0xBEC0] | v20);
  *(&STACK[0xBEC0] | v20) = STACK[0xBEC3];
  LOBYTE(STACK[0xBEC3]) = v24;
  v25 = STACK[0xBEC1];
  LOBYTE(STACK[0xBEC2]) = STACK[0xBEC0];
  LOWORD(STACK[0xBEC0]) = v25;
  STACK[0xBEC0] = vmla_s32(v22, STACK[0xBEC0], vdup_n_s32(0x1000193u));
  v26 = STACK[0xBEC8];
  v27 = (553300517 * STACK[0xBEC8]) ^ v12;
  v28 = vdupq_n_s32(v27);
  v29 = xmmword_100BC7620;
  v30 = xmmword_100BC7630;
  v31 = xmmword_100BC7640;
  v32 = xmmword_100BC7650;
  v33.i64[1] = 0xFFFFFF0FFFFFFF0ELL;
  v34.i64[0] = 0x9393939393939393;
  v34.i64[1] = 0x9393939393939393;
  v35.i64[0] = 0x1000000010;
  v35.i64[1] = 0x1000000010;
  do
  {
    v36 = *(v26 + v3);
    v56.val[1] = veorq_s8(vqtbl1q_s8(v36, xmmword_100BC7690), veorq_s8(v28, vmulq_s32(vaddq_s32(v31, v28), vsubq_s32(v31, v28))));
    v56.val[0] = veorq_s8(vqtbl1q_s8(v36, xmmword_100BC76A0), veorq_s8(v28, vmulq_s32(vaddq_s32(v32, v28), vsubq_s32(v32, v28))));
    v56.val[2] = veorq_s8(vqtbl1q_s8(v36, xmmword_100BC7680), veorq_s8(v28, vmulq_s32(vaddq_s32(v30, v28), vsubq_s32(v30, v28))));
    v56.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v36, xmmword_100BC7670), v28), vmulq_s32(vaddq_s32(v29, v28), vsubq_s32(v29, v28)));
    *(v26 + v3) = vmulq_s8(vqtbl4q_s8(v56, xmmword_100BC7660), v34);
    v3 += 16;
    v32 = vaddq_s32(v32, v35);
    v31 = vaddq_s32(v31, v35);
    v30 = vaddq_s32(v30, v35);
    v29 = vaddq_s32(v29, v35);
  }

  while (v3 != 576);
  v37 = 0;
  v38 = xmmword_100F52AE0;
  v39 = vdupq_n_s32(v27);
  v40 = xmmword_100F52AF0;
  v41 = v26 + 576;
  v42.i64[0] = 0x800000008;
  v42.i64[1] = 0x800000008;
  do
  {
    v33.i64[0] = *(v41 + v37);
    v55.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v33, xmmword_100BC7690), v39), vmulq_s32(vaddq_s32(v38, v39), vsubq_s32(v38, v39)));
    v55.val[0] = veorq_s8(vqtbl1q_s8(v33, xmmword_100BC76A0), veorq_s8(v39, vmulq_s32(vaddq_s32(v40, v39), vsubq_s32(v40, v39))));
    v33 = vqtbl2q_s8(v55, xmmword_100F52AD0);
    *(v41 + v37) = vmul_s8(*v33.i8, 0x9393939393939393);
    v40 = vaddq_s32(v40, v42);
    v38 = vaddq_s32(v38, v42);
    v37 += 8;
  }

  while (v37 != 8);
  v43 = 72;
  do
  {
    v44 = 16777619 * ((v27 + v43) ^ v27) % v43;
    v45 = *(v26 + 8 * v44) ^ *(v26 + 8 * v43);
    *(v26 + 8 * v43) = v45;
    v46 = *(v26 + 8 * v44) ^ v45;
    *(v26 + 8 * v44) = v46;
    *(v26 + 8 * v43) ^= v46;
    v47 = v43-- + 1;
  }

  while (v47 > 2);
  v48 = *(&STACK[0xBEC8] + v13);
  *(&STACK[0xBEC8] + v13) = STACK[0xBECF];
  LOBYTE(STACK[0xBECF]) = v48;
  v49 = *(&STACK[0xBEC8] + v14);
  *(&STACK[0xBEC8] + v14) = STACK[0xBECE];
  LOBYTE(STACK[0xBECE]) = v49;
  v50 = *(&STACK[0xBEC8] + v15);
  *(&STACK[0xBEC8] + v15) = STACK[0xBECD];
  LOBYTE(STACK[0xBECD]) = v50;
  v51 = STACK[0xBEC8];
  LOBYTE(STACK[0xBEC8]) = STACK[0xBECC];
  LOBYTE(STACK[0xBECC]) = v51;
  v52 = *(&STACK[0xBEC8] + v20);
  *(&STACK[0xBEC8] + v20) = STACK[0xBECB];
  LOBYTE(STACK[0xBECB]) = v52;
  v53 = STACK[0xBEC9];
  LOBYTE(STACK[0xBECA]) = STACK[0xBEC8];
  LOWORD(STACK[0xBEC8]) = v53;
  STACK[0xBEC8] = vmla_s32(v22, STACK[0xBEC8], vdup_n_s32(0x1000193u));
  *v2 = STACK[0xBEC8] ^ STACK[0xBEC0];
  return (*(STACK[0xF18] + 8 * (a1 ^ 0x310D)))();
}

uint64_t sub_1002A1EDC(uint64_t a1, uint64_t a2)
{
  STACK[0x5948] = 0;
  LODWORD(STACK[0x6C90]) = -371865839;
  STACK[0x73D8] = 0;
  LODWORD(STACK[0xF44]) = -371865839;
  return (*(STACK[0xF18] + 8 * ((1727 * (((v3 - v2) | (v2 - v3)) >= 0)) ^ (v2 + 371885271))))(a1, a2, 371891535);
}

uint64_t sub_1002A1F3C(unint64_t a1)
{
  STACK[0x6220] = a1;
  LODWORD(STACK[0x6E2C]) = v2;
  return (*(STACK[0xF18] + 8 * (v1 - 17440)))();
}

uint64_t sub_1002A213C()
{
  v2 = v1[1];
  STACK[0x8E58] = (v1 + 1);
  LODWORD(STACK[0x10ED8]) = (v0 - 1762642977) ^ (906386353 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x5051A690) - 799955312) ^ 0xE1506BB4));
  STACK[0x10EE0] = v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0x8909)))(&STACK[0x10ED8]);
  v5 = STACK[0x5630];
  *v5 = v1 + 36;
  v5[1] = v1[14];
  v5[3] = v1[12];
  v6 = v1[15];
  STACK[0x8020] = (v1 + 15);
  return (*(v3 + 8 * (((v6 == 0) * (((18 * (v0 ^ 0x42F4) + 10680) | 0xA43) - 19132)) ^ v0)))(v4);
}

uint64_t sub_1002A2238(int a1)
{
  v4 = v1 < v2;
  if (v4 == ((21 * (a1 ^ 0x359Eu)) ^ 0x3EuLL) + v3 > 0xFFFFFFFF1C890CA6)
  {
    v4 = v3 + 3816223578 < v1;
  }

  return (*(STACK[0xF18] + 8 * ((!v4 * (((a1 - 13156) | 0x8902) ^ 0x8B4B)) ^ a1)))();
}

uint64_t sub_1002A239C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  v3 = STACK[0xA728];
  STACK[0x1CB0] = STACK[0xA728];
  if (v3)
  {
    v4 = LODWORD(STACK[0xA71C]) == ((((a3 - 6742) | 0x1500) - 371919578) ^ (a3 + 1121006501) & 0xBD2EFB3B);
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(STACK[0xF18] + 8 * ((199 * v5) ^ a3)))(a1, a2, 371891400);
}

uint64_t sub_1002A2414()
{
  STACK[0x4500] = v1 + 1408;
  v2 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (((22 * (v0 ^ 0x713)) ^ 0x733C) + v0)))();
}

uint64_t sub_1002A2464()
{
  v0 = STACK[0xF10] - 445;
  LODWORD(STACK[0x3E80]) += (STACK[0xF10] - 15981) ^ 0x4CCA;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1002A24B8()
{
  v1 = STACK[0x3868];
  v2 = STACK[0xF18];
  STACK[0x58B8] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 205536))(v1);
}

uint64_t sub_1002A24FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t a6@<X7>, int a7@<W8>)
{
  v21 = v7 + v13;
  v22 = v7 - 1;
  v23 = STACK[0xED0] + v22;
  v24 = __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = ((0x296E95066F186A7ELL - v24) & a1) + v24 - 0x296E95066F186A7FLL - ((v24 - 0x296E95066F186A7FLL) & a1);
  v26 = __ROR8__(v25 ^ a5, 8);
  v27 = (((v26 + (v25 ^ 0x2A7B1A8C13DD8867)) | v14) - ((v26 + (v25 ^ 0x2A7B1A8C13DD8867)) | a4) + a4) ^ a6;
  v28 = v27 ^ __ROR8__(v25 ^ 0x2A7B1A8C13DD8867, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (((v29 + v28) | v17) - ((v29 + v28) | v12) + v12) ^ a3;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8);
  v33 = ((a2 & (2 * (v32 + v31))) - (v32 + v31) + v11) ^ v20;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (((2 * ((v35 + v34) ^ v19)) & 0x712D560FD0C41AEALL) - ((v35 + v34) ^ v19) + v9) ^ 0xD5F76ABD8EEE6086 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__((((2 * ((v35 + v34) ^ v19)) & 0x712D560FD0C41AEALL) - ((v35 + v34) ^ v19) + v9) ^ 0xD5F76ABD8EEE6086, 8) + v36) ^ 0xAA9DDABAE2E4D47CLL;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = __ROR8__(v37, 8);
  v40 = ((v16 & (2 * ((v39 + v38) ^ v10))) - ((v39 + v38) ^ v10) - 0x3847B2AA7B9CD44DLL) ^ 0x784FBA2FAF983AE6;
  v41 = __ROR8__((v21 + 9) & 0xFFFFFFFFFFFFFFF8, 8);
  v42 = (0x296E95066F186A7ELL - v41) & 0xC9F25BB096E59ABALL | (v41 + 0x16916AF990E79581) & 0x320DA44F691A6545;
  v43 = v42 ^ 0xCAD042536AC2AEC8;
  v44 = v42 ^ v8;
  v45 = (__ROR8__(v43, 8) + v44) ^ 0x14BA074A2F986FE5;
  v46 = __ROR8__(v40, 8) + (v40 ^ __ROR8__(v38, 61));
  v47 = v45 ^ __ROR8__(v44, 61);
  v48 = __ROR8__(v45, 8);
  v49 = ((v18 | (2 * (v48 + v47))) - (v48 + v47) + 0x530B5CBD97727EB8) ^ v15;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0xBD7D2DE9C10AA16ALL;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ 0x82B08017BF43C069;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ 0xAA9DDABAE2E4D47CLL;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ 0x8FB22143FEDB6CB3;
  *(v21 + 9) = ((v46 ^ 0x9B1C7427651E0F18) >> (8 * (v23 & 7u))) ^ (((__ROR8__(v57, 8) + (v57 ^ __ROR8__(v56, 61))) ^ 0x9B1C7427651E0F18) >> (8 * ((v21 + 9) & 7))) ^ *v23;
  return (*(STACK[0xF18] + 8 * ((16476 * (v22 == 0)) ^ a7)))();
}

uint64_t sub_1002A2878()
{
  STACK[0x10EF0] = v2 ^ v1;
  v3 = (v0 + 1203530462) ^ v1;
  LODWORD(STACK[0x10ED8]) = v3;
  STACK[0x10EE0] = 13963379 - v1;
  LODWORD(STACK[0x10EFC]) = ((v0 + 1203530462) ^ 0x1381) + v1;
  LODWORD(STACK[0x10F04]) = v3 ^ 0xE1;
  LODWORD(STACK[0x10EE8]) = v1 | 1;
  LODWORD(STACK[0x10F00]) = v1 + v0 + 800678923;
  v4 = v0 ^ 0x403D;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * v4))(&STACK[0x10ED8]);
  return (*(v5 + 8 * SLODWORD(STACK[0x10EF8])))(v6);
}

uint64_t sub_1002A2910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  STACK[0x3718] = 0;
  LODWORD(STACK[0x27C0]) = -371865839;
  STACK[0x42E8] = 0;
  STACK[0x5DD8] = 0;
  LODWORD(STACK[0x589C]) = -371865839;
  return (*(STACK[0xF18] + 8 * ((64280 * (v3 == ((((a3 + 936657580) & 0xC82BCB3F) - 371902372) ^ a3 ^ 0x79C8))) ^ a3)))(a1, a2, 371891535);
}

uint64_t sub_1002A2A24@<X0>(int a1@<W8>)
{
  v4 = v2 - 19603;
  v5 = ((17428 * (v2 ^ 0x8B39) - 521873449) & 0x1F1AA31B ^ 0x31F) + a1;
  *(v3 + 2016) = v5;
  v6 = (((LODWORD(STACK[0x18F0]) ^ 0x221C53CB) - 572281803) ^ ((LODWORD(STACK[0x18F0]) ^ 0x16984594) - 379078036) ^ ((LODWORD(STACK[0x18F0]) ^ 0xDD51D14E) + 581840562)) - 1009818535;
  v7 = v5 > 0x260662B7;
  v8 = v7 ^ (v6 < 0xD9F99D48);
  v9 = a1 - 637952692 > v6;
  if (!v8)
  {
    v7 = v9;
  }

  if (v7)
  {
    v1 = 371891407;
  }

  *(v3 + 2020) = v1;
  return (*(STACK[0xF18] + 8 * ((104 * (v1 == -371865839)) ^ v4)))();
}

uint64_t sub_1002A2BDC()
{
  v0 = STACK[0xF10];
  *(STACK[0x1E30] + 68) = STACK[0x9894];
  return (*(STACK[0xF18] + 8 * (v0 - 28266)))();
}

uint64_t sub_1002A2D48@<X0>(int a1@<W8>)
{
  v2 = (((v1 ^ 0x5F47AB4E) + 7 * (a1 ^ 0xA93D) - 1598533053) ^ ((v1 ^ 0xD33603E8) + 751434776) ^ (((109 * (a1 ^ 0xA823) + 1705239676) ^ v1) - 1705275319)) + 670587216;
  v3 = (((LODWORD(STACK[0x8E1C]) ^ 0xFACBA39C) + 87317604) ^ ((LODWORD(STACK[0x8E1C]) ^ 0xE6154BD7) + 434811945) ^ ((LODWORD(STACK[0x8E1C]) ^ 0xF50B2F5A) + 183816358)) + 670587216;
  v4 = (v3 < 0x3E22923F) ^ (v2 < 0x3E22923F);
  v5 = v2 > v3;
  if (v4)
  {
    v5 = v2 < 0x3E22923F;
  }

  return (*(STACK[0xF18] + 8 * ((228 * !v5) ^ a1)))();
}

uint64_t sub_1002A2EB8@<X0>(uint64_t a1@<X0>, unsigned int a2@<W7>, uint64_t a3@<X8>)
{
  v17 = (a1 + (v5 + v7));
  v18 = (v12 + (v6 + v7));
  v19 = *(*v14 + (*v13 & a2));
  v20 = *v17;
  v21 = ((((v17 ^ v19) & 0x7FFFFFFF) * v10) ^ ((((v17 ^ v19) & 0x7FFFFFFF) * v10) >> 16)) * v10;
  v22 = ((((v18 ^ v19) & 0x7FFFFFFF) * v10) ^ ((((v18 ^ v19) & 0x7FFFFFFF) * v10) >> 16)) * v10;
  *v18 = *(a3 + (v21 >> 24)) ^ v20 ^ *(v16 + (v21 >> 24)) ^ *((v21 >> 24) + v15 + 5) ^ *(a3 + (v22 >> 24)) ^ *(v16 + (v22 >> 24)) ^ *((v22 >> 24) + v15 + 5) ^ v21 ^ v22 ^ (BYTE3(v21) * v8) ^ (BYTE3(v22) * v9);
  if (v3 < 0xDB8EF917 != (v7 + 1) > 0x247106E8)
  {
    v23 = v3 < 0xDB8EF917;
  }

  else
  {
    v23 = v7 - 611387112 < v3;
  }

  return (*(v11 + 8 * ((32812 * v23) ^ v4)))();
}

uint64_t sub_1002A300C(uint64_t a1)
{
  v2 = v1 + 6;
  v3 = a1 + 0x7E666516A39B34A6;
  *a1 = STACK[0x46C8];
  v4 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v2 ^ 0xD11E)))(STACK[0x75A8], a1 + 8, 24);
  v7 = STACK[0x1B3C];
  *(a1 + 32) = STACK[0x6EAC];
  *(a1 + 36) = v7;
  *(a1 + 40) = 930401601;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0x3275104100000000;
  *(a1 + 56) = STACK[0x236C];
  *(a1 + 60) = STACK[0x5768];
  *STACK[0x9578] = v3;
  return (*(v4 + 8 * ((43062 * (LODWORD(STACK[0x546C]) == ((((v2 + 1594212256) & 0xA0FAAFBB) - 406024215) ^ 0xE18DC35))) ^ v2)))(v6);
}

uint64_t sub_1002A3104()
{
  v10 = v5 - 1;
  *(v8 + v10) ^= *(v1 + (v10 & 0xF)) ^ *(v2 + (v10 & 0xF)) ^ ((v10 & 0xF) * v4) ^ *(v0 + (v10 & 0xF)) ^ v6;
  return (*(v9 + 8 * (((v10 == 0) * v7) ^ v3)))();
}

uint64_t sub_1002A3150(int8x16_t a1)
{
  v7 = veorq_s8(*v4, a1);
  v3[-1] = veorq_s8(v4[-1], a1);
  *v3 = v7;
  return (*(v6 + 8 * (((v2 == 0) * v5) ^ v1)))();
}

uint64_t sub_1002A328C()
{
  v0 = STACK[0xF10];
  LODWORD(STACK[0xED0]) = STACK[0xF10] ^ 0x97B5;
  LODWORD(STACK[0x7FE8]) = (v0 ^ 0x7506DEA1) + LODWORD(STACK[0x3778]);
  STACK[0x80D8] = STACK[0x2C78];
  v1 = STACK[0x6F68];
  STACK[0x59D8] = STACK[0x6F68] + 0x6A90DBF91B310BC5;
  LODWORD(STACK[0x44B4]) = *(v1 + 104);
  LODWORD(STACK[0x2CE8]) = -644829208;
  return (*(STACK[0xF18] + 8 * (v0 - 26354)))();
}

uint64_t sub_1002A3744()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x74E9 ^ (v0 + 25342))))();
}

uint64_t sub_1002A3784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  STACK[0x49A0] = 0;
  LODWORD(STACK[0x4190]) = -371865839;
  STACK[0x5DB8] = 0;
  LODWORD(STACK[0x1DCC]) = -371865839;
  LODWORD(STACK[0x1C24]) = -371865839;
  return (*(STACK[0xF18] + 8 * (((((a3 - 38326) | 0x44) ^ ((a3 ^ 0x12FC) - 24858)) * (v3 == -371865840)) ^ a3)))(a1, a2, 371891535);
}

uint64_t sub_1002A37FC@<X0>(unint64_t a1@<X8>)
{
  v7 = a1 + v4;
  v8 = (v4 - 1) & 0xF;
  v9 = v1 - v4 + v8 + 1;
  v10 = v1 + v8 + 1;
  v11 = v8 + v2 + 2;
  v12 = v3 - v4 + v8 + 4;
  v13 = v3 + v8 + ((13151 * (v5 ^ 0x6744u)) ^ 0x9A19);
  v15 = v11 > a1 && v11 - v4 < v7;
  v17 = v10 > a1 && v9 < v7 || v15;
  if (v12 < v7 && v13 > a1)
  {
    v19 = 1;
  }

  else
  {
    v19 = v17;
  }

  return (*(v6 + 8 * ((30 * (v19 ^ 1)) ^ v5)))();
}

uint64_t sub_1002A3920()
{
  v0 = STACK[0xF10] - 21286;
  v1 = STACK[0xF10] - 33977;
  v2 = STACK[0xF18];
  STACK[0x16D8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v0 ^ v1 ^ 0x2505)))();
}

uint64_t sub_1002A396C()
{
  v3 = (((v1 ^ 0xF74EBB67) + 145835161) ^ ((v1 ^ 0xE6220DD5) + 433975851) ^ ((v1 ^ 0xF8B971A3) + 262 * ((v2 + 2143) ^ 0xCACC) + 122027011)) - 2022070179;
  v4 = ((((v2 + 1030297082) & 0xC2963E37 ^ 0xEF6D0F1 ^ v3) + 1823135829) ^ v3 ^ ((v3 ^ 0x40A955A) + 1716947946) ^ ((v3 ^ 0x6C82BC26) + 249471638) ^ ((v3 ^ 0xFBDD0ED7) - 1719594907)) == -1650204340;
  return (*(v0 + 8 * ((4 * v4) | (8 * v4) | (v2 + 2143))))();
}

uint64_t sub_1002A3ACC()
{
  v0 = (STACK[0xF10] - 1947913026) & 0x741ADBFF;
  v1 = STACK[0xF10] - 2117;
  LODWORD(STACK[0x8DE8]) += 4;
  return (*(STACK[0xF18] + 8 * (((STACK[0x7E30] == 0) * (v0 - 39458)) ^ v1)))();
}

uint64_t sub_1002A3B3C()
{
  v1 = STACK[0x8CE0];
  v2 = STACK[0x27B0];
  v3 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 ^ 0x6876)))(STACK[0x27B0] + 528, STACK[0x8CE0] + 8, 272);
  *(v1 + 16) = v1 + 24;
  v4 = (*(v3 + 8 * (v0 ^ 0x6876)))(v2 + 800, v1 + 280, 272);
  *(v1 + 288) = v1 + 296;
  return (*(v3 + 8 * ((106 * ((((*(v2 + 24) ^ 0x32DACE5C) - 853200476) ^ (((v0 - 39853) ^ 0x1C25) - 1958648473 + (*(v2 + 24) ^ 0x74BE7F6A)) ^ ((*(v2 + 24) ^ 0xAFB17627) + 1347324377)) - 371865860 > 0xFFFFFFEA)) ^ v0)))(v4);
}

uint64_t sub_1002A3D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = (v2 - 977312728) & 0x3A407DFF;
  v8 = (v4 ^ 0xA6239BA9) & (2 * (v4 & 0xB703DBCA)) ^ v4 & 0xB703DBCA;
  v9 = ((2 * (v4 ^ 0x8C27993D)) ^ 0x764885EE) & (v4 ^ 0x8C27993D) ^ (2 * (v4 ^ 0x8C27993D)) & 0x3B2442F6;
  v10 = v9 ^ ((v7 - 15271) | 0x4208) ^ 0x924112C;
  v11 = (v9 ^ 0x30000060) & (4 * v8) ^ v8;
  v12 = ((4 * v10) ^ 0xEC910BDC) & v10 ^ (4 * v10) & 0x3B2442F4;
  v13 = (v12 ^ 0x280002C0) & (16 * v11) ^ v11;
  v14 = ((16 * (v12 ^ 0x13244023)) ^ 0xB2442F70) & (v12 ^ 0x13244023) ^ (16 * (v12 ^ 0x13244023)) & 0x3B2442F0;
  v15 = v13 ^ 0x3B2442F7 ^ (v14 ^ 0x32040200) & (v13 << 8);
  v16 = (((v15 << 16) & 0x240000 ^ v15 ^ ((v15 << 16) ^ 0x770000) & (((v14 ^ 0x9204087) << 8) & 0x240000 ^ 0x240000 ^ (((v14 ^ 0x9204087) << 8) ^ 0x420000) & (v14 ^ 0x9204087))) << 9) ^ (v4 << 8);
  if (v5 >= 0x16)
  {
    v17 = -22;
  }

  else
  {
    v17 = 3;
  }

  v18 = ((v16 ^ 0x58A051FF) & (*(a2 + v17 + v5) ^ 0x5AE85105) | v16 & 0xA517AE00) ^ 0x5BFE755A;
  if (v5 >= 0x14)
  {
    v19 = -20;
  }

  else
  {
    v19 = 5;
  }

  v20 = (*(a2 + v19 + v5) ^ v6) << 8;
  if (v5 >= 0x10)
  {
    v21 = -16;
  }

  else
  {
    v21 = 9;
  }

  v22 = ((*(a2 + v21 + v5) ^ 0x43124A7F) & ~v20 | v20 & 0xB500) ^ 0x43124A20;
  v23 = v18 * v22 * (63239 * v22 * v22 * v22 * v22 + 43291 * v18 * v18 * v18 * v18) + 32869;
  return (*(v3 + 8 * v7))(a1, (v23 % 63241 - ((2 * (v23 % 63241)) & 0xD2) + 105) ^ 0x36u);
}

uint64_t sub_1002A4108(uint64_t a1, int a2)
{
  v5 = v3 < 0xA70B5F36;
  if (v5 == v2 + 1 > ((a2 - 104772741) & 0x63E6739 ^ 0xFFFFFFFF58F480C8))
  {
    v5 = v2 + 2802540343 < v3;
  }

  return (*(v4 + 8 * ((43 * !v5) ^ a2)))((a2 - 21038));
}

uint64_t sub_1002A42B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned int a5@<W8>, uint64_t a6, int a7, int a8)
{
  v10 = (((a8 ^ 0x6752017A) + 407285436) ^ ((a8 ^ 0x1C4452F0) + 1666252082) ^ ((a8 ^ 0x1228C4A5) + 1832676197)) + ((v9 + 28351) | 0x305C) + 1655261007;
  v11 = a5 + 2027174043 < v10;
  if (a5 > 0x872BC764 != v10 < 0x78D4389B)
  {
    v11 = v10 < 0x78D4389B;
  }

  return (*(v8 + 8 * ((13 * !v11) ^ v9)))(a1, a2, a3, a4);
}

uint64_t sub_1002A4444()
{
  STACK[0x7350] = 0;
  STACK[0x2760] = 0x2EDB380E18416619;
  v1 = STACK[0xF18];
  STACK[0x3058] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((v0 + 8394) | 0xD82) ^ 0x2194) + v0)))();
}

uint64_t sub_1002A44A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, int a18, uint64_t a19)
{
  a19 = v19;
  a17 = a13;
  a18 = v21 + 634647737 * a11 - 1480094567;
  (*(v20 + 8 * (v21 + 45242)))(&a17);
  return (*(v20 + 8 * (v21 ^ (55714 * ((a15 - 2109994458) < 0xFFFFFFC0)))))((((v21 ^ 0x43E7) - 4426) ^ 0xFFFFB820) + a15, v22, v23, v24, v25, v26, v27, v28, a9);
}

uint64_t sub_1002A46B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v18.i64[0] = v9 + v15 - 15;
  v18.i64[1] = v9 + v15 - 16;
  v19 = v18;
  *&STACK[0xD40] = v18;
  v18.i64[0] = v9 + v15 - 13;
  v18.i64[1] = v9 + v15 - 14;
  v20 = v18;
  *&STACK[0xD30] = v18;
  v18.i64[0] = v9 + v15 - 11;
  v18.i64[1] = v9 + v15 - 12;
  v21 = v18;
  *&STACK[0xD50] = v18;
  v18.i64[0] = v9 + v15 - 9;
  v18.i64[1] = v9 + v15 - 10;
  *&STACK[0xD60] = v18;
  v22.i64[0] = v9 + v15 - 7;
  v22.i64[1] = v9 + v15 - 8;
  v23 = v22;
  *&STACK[0xCF0] = v22;
  v22.i64[0] = v9 + v15 - 5;
  v22.i64[1] = v9 + v15 - 6;
  v24 = v22;
  *&STACK[0xCE0] = v22;
  v22.i64[0] = v9 + v15 - 3;
  v22.i64[1] = v9 + v15 - 4;
  v25 = v22;
  *&STACK[0xD00] = v22;
  v22.i64[0] = v9 + v15 + v13;
  v22.i64[1] = v9 + v15 - 2;
  *&STACK[0xD20] = v22;
  v26.i64[0] = v8 + v15 + 3;
  v26.i64[1] = v8 + v15 + 2;
  v27 = v26;
  v26.i64[0] = v8 + v15 + 5;
  v26.i64[1] = v8 + v15 + 4;
  v28 = v26;
  v26.i64[0] = v8 + v15 + 7;
  v26.i64[1] = v8 + v15 + 6;
  v29 = v26;
  *&STACK[0xC50] = v26;
  v30 = vandq_s8(v22, *&STACK[0xE00]);
  v31 = vandq_s8(v25, *&STACK[0xE00]);
  v32 = vandq_s8(v24, *&STACK[0xE00]);
  v33 = vandq_s8(v23, *&STACK[0xE00]);
  v34 = vandq_s8(v18, *&STACK[0xE00]);
  v35 = vandq_s8(v21, *&STACK[0xE00]);
  v36 = vandq_s8(v20, *&STACK[0xE00]);
  v37 = vandq_s8(v19, *&STACK[0xE00]);
  v38 = *&STACK[0xE00];
  v39 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v30, 0x38uLL), v30, 8uLL), *&STACK[0xBC0]);
  v40 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL), *&STACK[0xBC0]);
  v41 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL), *&STACK[0xBC0]);
  v42 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL), *&STACK[0xBC0]);
  v43 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL), *&STACK[0xBC0]);
  v44 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL), *&STACK[0xBC0]);
  v45 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL), *&STACK[0xBC0]);
  v46 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL), *&STACK[0xBC0]);
  v47 = vaddq_s64(vsubq_s64(vorrq_s8(v46, *&STACK[0xBB0]), vorrq_s8(v46, *&STACK[0xB20])), *&STACK[0xB20]);
  v48 = vaddq_s64(vsubq_s64(vorrq_s8(v45, *&STACK[0xBB0]), vorrq_s8(v45, *&STACK[0xB20])), *&STACK[0xB20]);
  v49 = vaddq_s64(vsubq_s64(vorrq_s8(v44, *&STACK[0xBB0]), vorrq_s8(v44, *&STACK[0xB20])), *&STACK[0xB20]);
  v50 = vaddq_s64(vsubq_s64(vorrq_s8(v43, *&STACK[0xBB0]), vorrq_s8(v43, *&STACK[0xB20])), *&STACK[0xB20]);
  v51 = vaddq_s64(vsubq_s64(vorrq_s8(v42, *&STACK[0xBB0]), vorrq_s8(v42, *&STACK[0xB20])), *&STACK[0xB20]);
  v52 = vaddq_s64(vsubq_s64(vorrq_s8(v41, *&STACK[0xBB0]), vorrq_s8(v41, *&STACK[0xB20])), *&STACK[0xB20]);
  v53 = vaddq_s64(vsubq_s64(vorrq_s8(v40, *&STACK[0xBB0]), vorrq_s8(v40, *&STACK[0xB20])), *&STACK[0xB20]);
  v54 = vaddq_s64(vsubq_s64(vorrq_s8(v39, *&STACK[0xBB0]), vorrq_s8(v39, *&STACK[0xB20])), *&STACK[0xB20]);
  v55 = veorq_s8(v54, *&STACK[0xBA0]);
  v56 = veorq_s8(v53, *&STACK[0xBA0]);
  v57 = veorq_s8(v52, *&STACK[0xBA0]);
  v58 = veorq_s8(v51, *&STACK[0xBA0]);
  v59 = veorq_s8(v50, *&STACK[0xBA0]);
  v60 = veorq_s8(v49, *&STACK[0xBA0]);
  v61 = veorq_s8(v48, *&STACK[0xBA0]);
  v62 = veorq_s8(v47, *&STACK[0xBA0]);
  v63 = veorq_s8(v47, *&STACK[0xB90]);
  v64 = veorq_s8(v48, *&STACK[0xB90]);
  v65 = veorq_s8(v49, *&STACK[0xB90]);
  v66 = veorq_s8(v50, *&STACK[0xB90]);
  v67 = veorq_s8(v51, *&STACK[0xB90]);
  v68 = veorq_s8(v52, *&STACK[0xB90]);
  v69 = veorq_s8(v53, *&STACK[0xB90]);
  v70 = veorq_s8(v54, *&STACK[0xB90]);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v70);
  v72 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v69);
  v73 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v68);
  v74 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v67);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v66);
  v76 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v65);
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL), v64);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v63);
  v79 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v71, v71), *&STACK[0xB80]), v71), *&STACK[0xB70]);
  v80 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v78, v78), *&STACK[0xB80]), v78), *&STACK[0xB70]), *&STACK[0xB60]);
  v81 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v77, v77), *&STACK[0xB80]), v77), *&STACK[0xB70]), *&STACK[0xB60]);
  v82 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v76, v76), *&STACK[0xB80]), v76), *&STACK[0xB70]), *&STACK[0xB60]);
  v83 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v75, v75), *&STACK[0xB80]), v75), *&STACK[0xB70]), *&STACK[0xB60]);
  v84 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v74, v74), *&STACK[0xB80]), v74), *&STACK[0xB70]), *&STACK[0xB60]);
  v85 = vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL);
  v86 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v73, v73), *&STACK[0xB80]), v73), *&STACK[0xB70]), *&STACK[0xB60]);
  v87 = vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL);
  v88 = vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL);
  v89 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v72, v72), *&STACK[0xB80]), v72), *&STACK[0xB70]), *&STACK[0xB60]);
  v90 = vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL);
  v91 = vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL);
  v92 = veorq_s8(v79, *&STACK[0xB60]);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL));
  v94 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v95 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v96 = veorq_s8(v84, v91);
  v97 = veorq_s8(v83, v90);
  v98 = veorq_s8(v82, v88);
  v99 = veorq_s8(v81, v87);
  v100 = veorq_s8(v80, v85);
  v101 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v93), *&STACK[0xB50]);
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v94), *&STACK[0xB50]);
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v95), *&STACK[0xB50]);
  v104 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v96), *&STACK[0xB50]);
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v97), *&STACK[0xB50]);
  v106 = vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL);
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v98), *&STACK[0xB50]);
  v108 = vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL);
  v109 = vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL);
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v99), *&STACK[0xB50]);
  v111 = vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL);
  v112 = vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL);
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v100), *&STACK[0xB50]);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v115 = veorq_s8(v110, v112);
  v116 = veorq_s8(v107, v111);
  v117 = veorq_s8(v105, v109);
  v118 = veorq_s8(v104, v108);
  v119 = veorq_s8(v103, v106);
  v120 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v121 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v122 = vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL);
  v123 = vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL);
  v124 = vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL);
  v125 = vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL);
  v126 = vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL);
  v127 = vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL);
  v128 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v120);
  v129 = vaddq_s64(v127, v119);
  v130 = veorq_s8(vaddq_s64(v122, v114), *&STACK[0xB40]);
  v131 = veorq_s8(vaddq_s64(v123, v115), *&STACK[0xB40]);
  v132 = veorq_s8(vaddq_s64(v124, v116), *&STACK[0xB40]);
  v133 = veorq_s8(vaddq_s64(v125, v117), *&STACK[0xB40]);
  v134 = veorq_s8(vaddq_s64(v126, v118), *&STACK[0xB40]);
  v135 = vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL);
  v136 = vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL);
  v137 = veorq_s8(v129, *&STACK[0xB40]);
  v138 = vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL);
  v139 = vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL);
  v140 = veorq_s8(v128, *&STACK[0xB40]);
  v141 = vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL);
  v142 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v121), *&STACK[0xB40]);
  v143 = veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v144 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v145 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v146 = veorq_s8(v134, v141);
  *&STACK[0xC60] = veorq_s8(v133, v139);
  v147 = veorq_s8(v132, v138);
  v148 = veorq_s8(v131, v136);
  v149 = veorq_s8(v130, v135);
  *&STACK[0xCB0] = vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL);
  *&STACK[0xCD0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v149);
  *&STACK[0xCC0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v148);
  *&STACK[0xCA0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v147);
  v150 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v146);
  v151 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v145);
  v152 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), v144);
  v153 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), v143);
  v154 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v150, v150), *&STACK[0xE20]), v150), *&STACK[0xEA0]);
  v155 = *&STACK[0xE90];
  v156 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v153, v153), *&STACK[0xE20]), v153), *&STACK[0xEA0]), *&STACK[0xE90]);
  v157 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v152, v152), *&STACK[0xE20]), v152), *&STACK[0xEA0]), *&STACK[0xE90]);
  v158 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v151, v151), *&STACK[0xE20]), v151), *&STACK[0xEA0]), *&STACK[0xE90]);
  *&STACK[0xC90] = vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL);
  *&STACK[0xC80] = vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL);
  v159 = veorq_s8(v154, v155);
  *&STACK[0xC70] = vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL);
  v160 = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL));
  v161 = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v162 = veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  *&STACK[0xC30] = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v163 = vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL);
  v164 = vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL);
  v165 = vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL);
  *&STACK[0xC20] = vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL);
  v166 = vandq_s8(v29, v38);
  v167 = vandq_s8(v28, v38);
  v168 = v28;
  v169 = vandq_s8(v27, v38);
  v170 = v27;
  v171 = vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL);
  v172 = vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL);
  v173 = vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL);
  v174 = vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL);
  v175 = *&STACK[0xDF0];
  v176 = *&STACK[0xDE0];
  v177 = *&STACK[0xDD0];
  v178 = vbslq_s8(*&STACK[0xDD0], vsubq_s64(*&STACK[0xDE0], v171), vaddq_s64(v171, *&STACK[0xDF0]));
  v179 = vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL);
  *&STACK[0xC40] = vaddq_s64(v165, v162);
  v180 = vbslq_s8(v177, vsubq_s64(v176, v172), vaddq_s64(v172, v175));
  v181 = vaddq_s64(v164, v161);
  v182 = vbslq_s8(v177, vsubq_s64(v176, v173), vaddq_s64(v173, v175));
  v183 = veorq_s8(v178, *&STACK[0xEB0]);
  v184 = vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL);
  v185 = veorq_s8(v180, *&STACK[0xEB0]);
  v186 = vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL);
  v187 = veorq_s8(v178, *&STACK[0xE60]);
  v188 = vaddq_s64(v184, v187);
  v189 = vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL);
  v190 = veorq_s8(v180, *&STACK[0xE60]);
  v191 = *&STACK[0xE60];
  v192 = vaddq_s64(v186, v190);
  v193 = vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL);
  v194 = vaddq_s64(v163, v160);
  v195 = veorq_s8(v192, *&STACK[0xE40]);
  v196 = veorq_s8(v195, vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL));
  v197 = vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL);
  v198 = veorq_s8(v188, *&STACK[0xE40]);
  v199 = *&STACK[0xE40];
  v200 = veorq_s8(v198, v189);
  v201 = vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL);
  v202 = veorq_s8(v181, *&STACK[0xE80]);
  v203 = veorq_s8(v202, v174);
  v204 = vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL);
  v205 = vaddq_s64(v201, v200);
  v206 = *&STACK[0xDC0];
  v207 = vsubq_s64(vorrq_s8(v205, *&STACK[0xDC0]), vorrq_s8(v205, *&STACK[0xDB0]));
  v208 = vaddq_s64(v197, v196);
  v209 = veorq_s8(v194, *&STACK[0xE80]);
  v210 = veorq_s8(v209, v193);
  v211 = vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL);
  v212 = vsraq_n_u64(vshlq_n_s64(v200, 3uLL), v200, 0x3DuLL);
  v213 = *&STACK[0xDA0];
  v214 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v208, *&STACK[0xDC0]), vorrq_s8(v208, *&STACK[0xDB0])), *&STACK[0xDB0]), *&STACK[0xDA0]);
  v215 = veorq_s8(v214, vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL));
  v216 = vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL);
  v217 = vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL);
  v218 = vaddq_s64(v211, v210);
  v219 = veorq_s8(vaddq_s64(v207, *&STACK[0xDB0]), *&STACK[0xDA0]);
  v220 = veorq_s8(v219, v212);
  v221 = vsraq_n_u64(vshlq_n_s64(v219, 0x38uLL), v219, 8uLL);
  v222 = vaddq_s64(v216, v215);
  v223 = vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL);
  v224 = vaddq_s64(v221, v220);
  v225 = vsraq_n_u64(vshlq_n_s64(v220, 3uLL), v220, 0x3DuLL);
  v226 = *&STACK[0xB10];
  v227 = veorq_s8(v224, *&STACK[0xB10]);
  v228 = veorq_s8(v227, v225);
  v229 = vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL);
  v230 = veorq_s8(v222, *&STACK[0xB10]);
  v231 = veorq_s8(v230, v223);
  v232 = vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL);
  v233 = vaddq_s64(v229, v228);
  v234 = vsubq_s64(vorrq_s8(vaddq_s64(v233, v233), *&STACK[0xE30]), v233);
  v235 = vaddq_s64(v232, v231);
  v236 = vsubq_s64(vorrq_s8(vaddq_s64(v235, v235), *&STACK[0xE30]), v235);
  v237 = vsraq_n_u64(vshlq_n_s64(v203, 3uLL), v203, 0x3DuLL);
  v238 = vaddq_s64(v204, v203);
  v239 = vsraq_n_u64(vshlq_n_s64(v228, 3uLL), v228, 0x3DuLL);
  v240 = veorq_s8(v218, *&STACK[0xE70]);
  v241 = veorq_s8(v240, v217);
  v242 = vsraq_n_u64(vshlq_n_s64(v240, 0x38uLL), v240, 8uLL);
  v243 = veorq_s8(v238, *&STACK[0xE70]);
  v244 = veorq_s8(v243, v237);
  v245 = vsraq_n_u64(vshlq_n_s64(v243, 0x38uLL), v243, 8uLL);
  v246 = *&STACK[0xD90];
  v247 = *&STACK[0xD70];
  v248 = veorq_s8(vaddq_s64(v236, *&STACK[0xD90]), *&STACK[0xD70]);
  v249 = veorq_s8(v248, vsraq_n_u64(vshlq_n_s64(v231, 3uLL), v231, 0x3DuLL));
  v250 = vsraq_n_u64(vshlq_n_s64(v248, 0x38uLL), v248, 8uLL);
  v251 = veorq_s8(vaddq_s64(v234, *&STACK[0xD90]), *&STACK[0xD70]);
  v252 = veorq_s8(v251, v239);
  v253 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v251, 0x38uLL), v251, 8uLL), v252);
  v254 = vaddq_s64(v245, v244);
  v255 = vdupq_n_s64(a8);
  v256 = vdupq_n_s64(v11);
  v257 = vaddq_s64(v250, v249);
  v258 = vaddq_s64(v242, v241);
  v259 = vsraq_n_u64(vshlq_n_s64(v252, 3uLL), v252, 0x3DuLL);
  v260 = vdupq_n_s64(v10);
  v261 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v257, v255), vorrq_s8(v257, v256)), v256), v260);
  v262 = veorq_s8(v261, vsraq_n_u64(vshlq_n_s64(v249, 3uLL), v249, 0x3DuLL));
  v263 = vsraq_n_u64(vshlq_n_s64(v261, 0x38uLL), v261, 8uLL);
  v264 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v253, v255), vorrq_s8(v253, v256)), v256), v260);
  v265 = veorq_s8(v264, v259);
  v266 = vsraq_n_u64(vshlq_n_s64(v264, 0x38uLL), v264, 8uLL);
  v267 = vaddq_s64(v263, v262);
  v268 = vsraq_n_u64(vshlq_n_s64(v262, 3uLL), v262, 0x3DuLL);
  v269 = *&STACK[0xE10];
  v270 = vaddq_s64(v266, v265);
  v271 = vsraq_n_u64(vshlq_n_s64(v265, 3uLL), v265, 0x3DuLL);
  v272 = vdupq_n_s64(a6);
  v273 = veorq_s8(v270, v272);
  v274 = veorq_s8(v273, v271);
  v275 = vsraq_n_u64(vshlq_n_s64(v273, 0x38uLL), v273, 8uLL);
  v276 = veorq_s8(v267, v272);
  v277 = veorq_s8(v276, v268);
  v278 = vsraq_n_u64(vshlq_n_s64(v276, 0x38uLL), v276, 8uLL);
  v279 = vshlq_u64(veorq_s8(v258, *&STACK[0xE10]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xCF0], 3uLL), v17)));
  v280 = vaddq_s64(v278, v277);
  v281 = veorq_s8(*&STACK[0xC40], *&STACK[0xE80]);
  v282 = vdupq_n_s64(a5);
  v283 = veorq_s8(v281, v179);
  v478.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v275, v274), v282), vnegq_s64(vandq_s8(vshlq_n_s64(v170, 3uLL), v17))), v279);
  v478.val[2] = veorq_s8(vshlq_u64(veorq_s8(v280, v282), vnegq_s64(vandq_s8(vshlq_n_s64(v168, 3uLL), v17))), vshlq_u64(veorq_s8(v254, *&STACK[0xE10]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xCE0], 3uLL), v17))));
  v284 = *&STACK[0xEB0];
  v285 = veorq_s8(v182, *&STACK[0xEB0]);
  v286 = veorq_s8(v182, *&STACK[0xE60]);
  v287 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v285, 0x38uLL), v285, 8uLL), v286), *&STACK[0xE40]);
  v288 = veorq_s8(v287, vsraq_n_u64(vshlq_n_s64(v286, 3uLL), v286, 0x3DuLL));
  v289 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v287, 0x38uLL), v287, 8uLL), v288);
  v290 = vsraq_n_u64(vshlq_n_s64(v288, 3uLL), v288, 0x3DuLL);
  v291 = vsraq_n_u64(vshlq_n_s64(v283, 3uLL), v283, 0x3DuLL);
  v292 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v289, *&STACK[0xDC0]), vorrq_s8(v289, *&STACK[0xDB0])), *&STACK[0xDB0]), *&STACK[0xDA0]);
  v293 = veorq_s8(v292, v290);
  v294 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v292, 0x38uLL), v292, 8uLL), v293), *&STACK[0xB10]);
  v295 = *&STACK[0xE70];
  v296 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v281, 0x38uLL), v281, 8uLL), v283), *&STACK[0xE70]);
  v297 = veorq_s8(v294, vsraq_n_u64(vshlq_n_s64(v293, 3uLL), v293, 0x3DuLL));
  v298 = veorq_s8(v296, v291);
  v299 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v294, 0x38uLL), v294, 8uLL), v297);
  v300 = *&STACK[0xE30];
  v301 = vsraq_n_u64(vshlq_n_s64(v296, 0x38uLL), v296, 8uLL);
  v302 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v299, v299), *&STACK[0xE30]), v299), *&STACK[0xD90]), *&STACK[0xD70]);
  v303 = veorq_s8(v302, vsraq_n_u64(vshlq_n_s64(v297, 3uLL), v297, 0x3DuLL));
  v304 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v302, 0x38uLL), v302, 8uLL), v303);
  v305 = v255;
  *&STACK[0xBD0] = v255;
  v306 = v260;
  *&STACK[0xBE0] = v260;
  v307 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v304, v255), vorrq_s8(v304, v256)), v256), v260);
  v308 = vaddq_s64(v301, v298);
  v309 = veorq_s8(v307, vsraq_n_u64(vshlq_n_s64(v303, 3uLL), v303, 0x3DuLL));
  v310.i64[0] = v8 + v15 - 5;
  v310.i64[1] = v8 + v15 - 6;
  *&STACK[0xC40] = v310;
  v311 = v269;
  v312 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v307, 0x38uLL), v307, 8uLL), v309), v272);
  v303.i64[0] = v8 + v15 - 3;
  v313 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v312, 0x38uLL), v312, 8uLL), veorq_s8(v312, vsraq_n_u64(vshlq_n_s64(v309, 3uLL), v309, 0x3DuLL)));
  v312.i64[0] = v8 + v15 + 9;
  v303.i64[1] = v8 + v15 - 4;
  v312.i64[1] = v8 + v15 + 8;
  v478.val[1] = veorq_s8(vshlq_u64(veorq_s8(v313, v282), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xC50], 3uLL), v17))), vshlq_u64(veorq_s8(v308, v269), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xD00], 3uLL), v17))));
  v314 = *&STACK[0xE00];
  v315 = vandq_s8(v312, *&STACK[0xE00]);
  v316 = vsraq_n_u64(vshlq_n_s64(v315, 0x38uLL), v315, 8uLL);
  v317 = *&STACK[0xDF0];
  v318 = *&STACK[0xDE0];
  v319 = *&STACK[0xDD0];
  v320 = vbslq_s8(*&STACK[0xDD0], vsubq_s64(*&STACK[0xDE0], v316), vaddq_s64(v316, *&STACK[0xDF0]));
  v321 = veorq_s8(v320, v284);
  v322 = veorq_s8(v320, v191);
  v323 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v321, 0x38uLL), v321, 8uLL), v322), v199);
  v324 = veorq_s8(v323, vsraq_n_u64(vshlq_n_s64(v322, 3uLL), v322, 0x3DuLL));
  v325 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v323, 0x38uLL), v323, 8uLL), v324);
  v326 = vorrq_s8(v325, v206);
  v327 = *&STACK[0xDB0];
  v328 = veorq_s8(vaddq_s64(vsubq_s64(v326, vorrq_s8(v325, *&STACK[0xDB0])), *&STACK[0xDB0]), v213);
  v329 = veorq_s8(vaddq_s64(*&STACK[0xC20], *&STACK[0xC30]), *&STACK[0xE80]);
  v330 = veorq_s8(v328, vsraq_n_u64(vshlq_n_s64(v324, 3uLL), v324, 0x3DuLL));
  v331 = veorq_s8(v329, vsraq_n_u64(vshlq_n_s64(*&STACK[0xC30], 3uLL), *&STACK[0xC30], 0x3DuLL));
  v332 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v328, 0x38uLL), v328, 8uLL), v330), v226);
  v333 = veorq_s8(v332, vsraq_n_u64(vshlq_n_s64(v330, 3uLL), v330, 0x3DuLL));
  v334 = vsraq_n_u64(vshlq_n_s64(v329, 0x38uLL), v329, 8uLL);
  v335 = vsraq_n_u64(vshlq_n_s64(v332, 0x38uLL), v332, 8uLL);
  v336 = vsraq_n_u64(vshlq_n_s64(v331, 3uLL), v331, 0x3DuLL);
  v337 = vaddq_s64(v335, v333);
  v338 = vaddq_s64(v334, v331);
  v339 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v337, v337), v300), v337), v246), v247);
  v340 = veorq_s8(v338, v295);
  v341 = veorq_s8(v339, vsraq_n_u64(vshlq_n_s64(v333, 3uLL), v333, 0x3DuLL));
  v342 = veorq_s8(v340, v336);
  v343 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v339, 0x38uLL), v339, 8uLL), v341);
  v344 = vsraq_n_u64(vshlq_n_s64(v340, 0x38uLL), v340, 8uLL);
  v345 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v343, v305), vorrq_s8(v343, v256)), v256), v306);
  v346 = veorq_s8(v345, vsraq_n_u64(vshlq_n_s64(v341, 3uLL), v341, 0x3DuLL));
  v300.i64[0] = v8 + v15 - 1;
  v300.i64[1] = v8 + v15 - 2;
  v347 = vaddq_s64(v344, v342);
  v306.i64[0] = v8 + v15 + 1;
  v306.i64[1] = v8 + v15;
  *&STACK[0xD00] = v306;
  v348 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v345, 0x38uLL), v345, 8uLL), v346), v272);
  v349 = veorq_s8(v348, vsraq_n_u64(vshlq_n_s64(v346, 3uLL), v346, 0x3DuLL));
  v350 = vsraq_n_u64(vshlq_n_s64(v348, 0x38uLL), v348, 8uLL);
  v351 = vandq_s8(v306, v314);
  v352 = vaddq_s64(v350, v349);
  v353 = vandq_s8(v300, v314);
  v354 = vshlq_u64(veorq_s8(v352, v282), vnegq_s64(vandq_s8(vshlq_n_s64(v312, 3uLL), v17)));
  v355 = vandq_s8(v303, v314);
  v478.val[0] = veorq_s8(v354, vshlq_u64(veorq_s8(v347, v311), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xD20], 3uLL), v17))));
  v356 = vandq_s8(v310, v314);
  v357 = vsraq_n_u64(vshlq_n_s64(v356, 0x38uLL), v356, 8uLL);
  v358 = vsraq_n_u64(vshlq_n_s64(v355, 0x38uLL), v355, 8uLL);
  v359 = vsraq_n_u64(vshlq_n_s64(v353, 0x38uLL), v353, 8uLL);
  v360 = vsraq_n_u64(vshlq_n_s64(v351, 0x38uLL), v351, 8uLL);
  v361 = vsraq_n_u64(vshlq_n_s64(*&STACK[0xC60], 3uLL), *&STACK[0xC60], 0x3DuLL);
  v362 = vaddq_s64(*&STACK[0xCB0], *&STACK[0xC60]);
  v363 = vbslq_s8(v319, vsubq_s64(v318, v357), vaddq_s64(v357, v317));
  v364 = *&STACK[0xE20];
  *&STACK[0xCF0] = vsubq_s64(vorrq_s8(vaddq_s64(v362, v362), *&STACK[0xE20]), v362);
  v365 = vbslq_s8(v319, vsubq_s64(v318, v358), vaddq_s64(v358, v317));
  v366 = vsubq_s64(vorrq_s8(vaddq_s64(*&STACK[0xCA0], *&STACK[0xCA0]), v364), *&STACK[0xCA0]);
  v367 = vbslq_s8(v319, vsubq_s64(v318, v359), vaddq_s64(v359, v317));
  v368 = vsubq_s64(vorrq_s8(vaddq_s64(*&STACK[0xCC0], *&STACK[0xCC0]), v364), *&STACK[0xCC0]);
  *&STACK[0xCE0] = vbslq_s8(v319, vsubq_s64(v318, v360), vaddq_s64(v360, v317));
  v369 = veorq_s8(vaddq_s64(v366, *&STACK[0xEA0]), *&STACK[0xE90]);
  v370 = veorq_s8(vaddq_s64(v368, *&STACK[0xEA0]), *&STACK[0xE90]);
  v371 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(*&STACK[0xCD0], *&STACK[0xCD0]), v364), *&STACK[0xCD0]), *&STACK[0xEA0]), *&STACK[0xE90]);
  v372 = veorq_s8(v371, *&STACK[0xC70]);
  *&STACK[0xD20] = vqtbl4q_s8(v478, *&STACK[0xD80]);
  v478.val[0] = veorq_s8(v365, *&STACK[0xEB0]);
  v478.val[1] = veorq_s8(v363, *&STACK[0xEB0]);
  v478.val[2] = veorq_s8(v363, *&STACK[0xE60]);
  v478.val[3] = veorq_s8(v370, *&STACK[0xC80]);
  v373 = vsraq_n_u64(vshlq_n_s64(v478.val[1], 0x38uLL), v478.val[1], 8uLL);
  v478.val[1] = vsraq_n_u64(vshlq_n_s64(v478.val[0], 0x38uLL), v478.val[0], 8uLL);
  v478.val[0] = vaddq_s64(v373, v478.val[2]);
  v374 = veorq_s8(v369, *&STACK[0xC90]);
  v375 = vsraq_n_u64(vshlq_n_s64(v478.val[2], 3uLL), v478.val[2], 0x3DuLL);
  v376 = veorq_s8(v365, *&STACK[0xE60]);
  v478.val[2] = vsraq_n_u64(vshlq_n_s64(v371, 0x38uLL), v371, 8uLL);
  v478.val[1] = veorq_s8(vaddq_s64(v478.val[1], v376), *&STACK[0xE40]);
  v377 = veorq_s8(v478.val[1], vsraq_n_u64(vshlq_n_s64(v376, 3uLL), v376, 0x3DuLL));
  v378 = vsraq_n_u64(vshlq_n_s64(v370, 0x38uLL), v370, 8uLL);
  v379 = vsraq_n_u64(vshlq_n_s64(v478.val[1], 0x38uLL), v478.val[1], 8uLL);
  v478.val[0] = veorq_s8(v478.val[0], *&STACK[0xE40]);
  v478.val[1] = veorq_s8(v478.val[0], v375);
  v380 = vsraq_n_u64(vshlq_n_s64(v369, 0x38uLL), v369, 8uLL);
  v381 = vsraq_n_u64(vshlq_n_s64(v478.val[0], 0x38uLL), v478.val[0], 8uLL);
  v478.val[0] = vsraq_n_u64(vshlq_n_s64(v478.val[3], 3uLL), v478.val[3], 0x3DuLL);
  v382 = vaddq_s64(v381, v478.val[1]);
  v478.val[3] = vaddq_s64(v378, v478.val[3]);
  v383 = vaddq_s64(v379, v377);
  v384 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v382, *&STACK[0xDC0]), vorrq_s8(v382, v327)), v327), *&STACK[0xDA0]);
  v385 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v383, *&STACK[0xDC0]), vorrq_s8(v383, v327)), v327), *&STACK[0xDA0]);
  v386 = vsraq_n_u64(vshlq_n_s64(v478.val[1], 3uLL), v478.val[1], 0x3DuLL);
  v478.val[1] = veorq_s8(v385, vsraq_n_u64(vshlq_n_s64(v377, 3uLL), v377, 0x3DuLL));
  v387 = veorq_s8(v384, v386);
  v388 = vsraq_n_u64(vshlq_n_s64(v385, 0x38uLL), v385, 8uLL);
  v389 = vsraq_n_u64(vshlq_n_s64(v384, 0x38uLL), v384, 8uLL);
  v390 = vsraq_n_u64(vshlq_n_s64(v372, 3uLL), v372, 0x3DuLL);
  v478.val[2] = vaddq_s64(v478.val[2], v372);
  v391 = veorq_s8(vaddq_s64(v388, v478.val[1]), v226);
  v392 = veorq_s8(vaddq_s64(v389, v387), v226);
  v478.val[2] = veorq_s8(v478.val[2], *&STACK[0xE80]);
  v393 = vsraq_n_u64(vshlq_n_s64(v478.val[1], 3uLL), v478.val[1], 0x3DuLL);
  v478.val[1] = veorq_s8(v392, vsraq_n_u64(vshlq_n_s64(v387, 3uLL), v387, 0x3DuLL));
  v394 = veorq_s8(v391, v393);
  v478.val[3] = veorq_s8(v478.val[3], *&STACK[0xE80]);
  v395 = vsraq_n_u64(vshlq_n_s64(v392, 0x38uLL), v392, 8uLL);
  v396 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v391, 0x38uLL), v391, 8uLL), v394);
  v478.val[0] = veorq_s8(v478.val[3], v478.val[0]);
  v397 = vaddq_s64(v395, v478.val[1]);
  v398 = veorq_s8(v478.val[2], v390);
  v399 = vsraq_n_u64(vshlq_n_s64(v478.val[1], 3uLL), v478.val[1], 0x3DuLL);
  v478.val[1] = vsraq_n_u64(vshlq_n_s64(v478.val[3], 0x38uLL), v478.val[3], 8uLL);
  v478.val[3] = vsraq_n_u64(vshlq_n_s64(v394, 3uLL), v394, 0x3DuLL);
  v400 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v396, v396), *&STACK[0xE30]), v396), *&STACK[0xD90]), *&STACK[0xD70]);
  v401 = vsraq_n_u64(vshlq_n_s64(v478.val[2], 0x38uLL), v478.val[2], 8uLL);
  v478.val[2] = veorq_s8(v400, v478.val[3]);
  v478.val[3] = vsraq_n_u64(vshlq_n_s64(v400, 0x38uLL), v400, 8uLL);
  v402 = vsraq_n_u64(vshlq_n_s64(v398, 3uLL), v398, 0x3DuLL);
  v403 = vaddq_s64(v401, v398);
  v404 = vsraq_n_u64(vshlq_n_s64(v478.val[0], 3uLL), v478.val[0], 0x3DuLL);
  v405 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v397, v397), *&STACK[0xE30]), v397), *&STACK[0xD90]), *&STACK[0xD70]);
  v406 = veorq_s8(v405, v399);
  v478.val[0] = vaddq_s64(v478.val[1], v478.val[0]);
  v478.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v405, 0x38uLL), v405, 8uLL), v406);
  v478.val[3] = vaddq_s64(v478.val[3], v478.val[2]);
  v478.val[0] = veorq_s8(v478.val[0], *&STACK[0xE70]);
  v407 = veorq_s8(v403, *&STACK[0xE70]);
  v478.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v478.val[1], *&STACK[0xBD0]), vorrq_s8(v478.val[1], v256)), v256), *&STACK[0xBE0]);
  v478.val[3] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v478.val[3], *&STACK[0xBD0]), vorrq_s8(v478.val[3], v256)), v256), *&STACK[0xBE0]);
  v408 = veorq_s8(v407, v402);
  v478.val[2] = veorq_s8(v478.val[3], vsraq_n_u64(vshlq_n_s64(v478.val[2], 3uLL), v478.val[2], 0x3DuLL));
  v409 = veorq_s8(v478.val[1], vsraq_n_u64(vshlq_n_s64(v406, 3uLL), v406, 0x3DuLL));
  v410 = vsraq_n_u64(vshlq_n_s64(v478.val[3], 0x38uLL), v478.val[3], 8uLL);
  v478.val[3] = vsraq_n_u64(vshlq_n_s64(v478.val[1], 0x38uLL), v478.val[1], 8uLL);
  v478.val[1] = vsraq_n_u64(vshlq_n_s64(v407, 0x38uLL), v407, 8uLL);
  v411 = veorq_s8(vaddq_s64(v410, v478.val[2]), v272);
  v478.val[3] = veorq_s8(vaddq_s64(v478.val[3], v409), v272);
  v412 = v272;
  v478.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v478.val[3], 0x38uLL), v478.val[3], 8uLL), veorq_s8(v478.val[3], vsraq_n_u64(vshlq_n_s64(v409, 3uLL), v409, 0x3DuLL))), v282), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xC40], 3uLL), v17))), vshlq_u64(veorq_s8(vaddq_s64(v478.val[1], v408), *&STACK[0xE10]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xD40], 3uLL), v17))));
  v478.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v411, 0x38uLL), v411, 8uLL), veorq_s8(v411, vsraq_n_u64(vshlq_n_s64(v478.val[2], 3uLL), v478.val[2], 0x3DuLL))), v282), vnegq_s64(vandq_s8(vshlq_n_s64(v303, 3uLL), v17))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v478.val[0], 0x38uLL), v478.val[0], 8uLL), veorq_s8(v478.val[0], v404)), *&STACK[0xE10]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xD30], 3uLL), v17))));
  v413 = veorq_s8(v367, *&STACK[0xEB0]);
  v414 = veorq_s8(v367, *&STACK[0xE60]);
  v415 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v413, 0x38uLL), v413, 8uLL), v414);
  v416 = vsraq_n_u64(vshlq_n_s64(v414, 3uLL), v414, 0x3DuLL);
  v417 = vsraq_n_u64(vshlq_n_s64(v374, 3uLL), v374, 0x3DuLL);
  v418 = veorq_s8(v415, *&STACK[0xE40]);
  v419 = veorq_s8(v418, v416);
  v420 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v418, 0x38uLL), v418, 8uLL), v419);
  v421 = veorq_s8(vaddq_s64(v380, v374), *&STACK[0xE80]);
  v422 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v420, *&STACK[0xDC0]), vorrq_s8(v420, v327)), v327), *&STACK[0xDA0]);
  v423 = vsraq_n_u64(vshlq_n_s64(v419, 3uLL), v419, 0x3DuLL);
  v424 = veorq_s8(v421, v417);
  v425 = veorq_s8(v422, v423);
  v426 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v422, 0x38uLL), v422, 8uLL), v425);
  v427 = vsraq_n_u64(vshlq_n_s64(v421, 0x38uLL), v421, 8uLL);
  v428 = vsraq_n_u64(vshlq_n_s64(v425, 3uLL), v425, 0x3DuLL);
  v429 = vsraq_n_u64(vshlq_n_s64(v424, 3uLL), v424, 0x3DuLL);
  v430 = veorq_s8(v426, v226);
  v431 = vaddq_s64(v427, v424);
  v432 = veorq_s8(v430, v428);
  v433 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v430, 0x38uLL), v430, 8uLL), v432);
  v434 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v433, v433), *&STACK[0xE30]), v433), *&STACK[0xD90]), *&STACK[0xD70]);
  v435 = veorq_s8(v431, *&STACK[0xE70]);
  v436 = veorq_s8(v434, vsraq_n_u64(vshlq_n_s64(v432, 3uLL), v432, 0x3DuLL));
  v437 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v434, 0x38uLL), v434, 8uLL), v436);
  v438 = veorq_s8(v435, v429);
  v439 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v437, *&STACK[0xBD0]), vorrq_s8(v437, v256)), v256), *&STACK[0xBE0]);
  v440 = vsraq_n_u64(vshlq_n_s64(v435, 0x38uLL), v435, 8uLL);
  v441 = veorq_s8(v439, vsraq_n_u64(vshlq_n_s64(v436, 3uLL), v436, 0x3DuLL));
  v442 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v439, 0x38uLL), v439, 8uLL), v441), v272);
  v478.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v442, 0x38uLL), v442, 8uLL), veorq_s8(v442, vsraq_n_u64(vshlq_n_s64(v441, 3uLL), v441, 0x3DuLL))), v282), vnegq_s64(vandq_s8(vshlq_n_s64(v300, 3uLL), v17))), vshlq_u64(veorq_s8(vaddq_s64(v440, v438), *&STACK[0xE10]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xD50], 3uLL), v17))));
  v443 = veorq_s8(*&STACK[0xCE0], *&STACK[0xEB0]);
  v444 = veorq_s8(*&STACK[0xCE0], *&STACK[0xE60]);
  v445 = veorq_s8(vaddq_s64(*&STACK[0xCF0], *&STACK[0xEA0]), *&STACK[0xE90]);
  v446 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v443, 0x38uLL), v443, 8uLL), v444), *&STACK[0xE40]);
  v447 = vsraq_n_u64(vshlq_n_s64(v444, 3uLL), v444, 0x3DuLL);
  v448 = veorq_s8(v445, v361);
  v449 = veorq_s8(v446, v447);
  v450 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v446, 0x38uLL), v446, 8uLL), v449);
  v451 = vsraq_n_u64(vshlq_n_s64(v445, 0x38uLL), v445, 8uLL);
  v452 = vsubq_s64(vorrq_s8(v450, *&STACK[0xDC0]), vorrq_s8(v450, v327));
  v453 = vsraq_n_u64(vshlq_n_s64(v448, 3uLL), v448, 0x3DuLL);
  v454 = vaddq_s64(v451, v448);
  v455 = veorq_s8(vaddq_s64(v452, v327), *&STACK[0xDA0]);
  v456 = veorq_s8(v455, vsraq_n_u64(vshlq_n_s64(v449, 3uLL), v449, 0x3DuLL));
  v457 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v455, 0x38uLL), v455, 8uLL), v456), v226);
  v458 = veorq_s8(v454, *&STACK[0xE80]);
  v459 = veorq_s8(v457, vsraq_n_u64(vshlq_n_s64(v456, 3uLL), v456, 0x3DuLL));
  v460 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v457, 0x38uLL), v457, 8uLL), v459);
  v461 = veorq_s8(v458, v453);
  v462 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v460, v460), *&STACK[0xE30]), v460), *&STACK[0xD90]), *&STACK[0xD70]);
  v463 = vsraq_n_u64(vshlq_n_s64(v458, 0x38uLL), v458, 8uLL);
  v464 = veorq_s8(v462, vsraq_n_u64(vshlq_n_s64(v459, 3uLL), v459, 0x3DuLL));
  v465 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v462, 0x38uLL), v462, 8uLL), v464);
  v466 = vsubq_s64(vorrq_s8(v465, *&STACK[0xBD0]), vorrq_s8(v465, v256));
  v467 = veorq_s8(vaddq_s64(v463, v461), *&STACK[0xE70]);
  v468 = veorq_s8(v467, vsraq_n_u64(vshlq_n_s64(v461, 3uLL), v461, 0x3DuLL));
  v469 = veorq_s8(vaddq_s64(v466, v256), *&STACK[0xBE0]);
  v470 = vsraq_n_u64(vshlq_n_s64(v467, 0x38uLL), v467, 8uLL);
  v471 = veorq_s8(v469, vsraq_n_u64(vshlq_n_s64(v464, 3uLL), v464, 0x3DuLL));
  v472 = vsraq_n_u64(vshlq_n_s64(v469, 0x38uLL), v469, 8uLL);
  v473 = vaddq_s64(v470, v468);
  v474 = veorq_s8(vaddq_s64(v472, v471), v412);
  v478.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v474, 0x38uLL), v474, 8uLL), veorq_s8(v474, vsraq_n_u64(vshlq_n_s64(v471, 3uLL), v471, 0x3DuLL))), v282), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xD00], 3uLL), v17))), vshlq_u64(veorq_s8(v473, *&STACK[0xE10]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xD60], 3uLL), v17))));
  v475 = *&STACK[0xD20];
  v475.i64[1] = vqtbl4q_s8(v478, *&STACK[0xD80]).u64[0];
  v476 = vrev64q_s8(v475);
  *(v8 + v15 - 6) = veorq_s8(vextq_s8(v476, v476, 8uLL), *(v9 + v15 + v13 - 15));
  return (*(STACK[0xF18] + 8 * (((v16 == 0) * v14) ^ v12)))();
}

uint64_t sub_1002A5BBC@<X0>(int a1@<W8>)
{
  v6 = (((v1 ^ 0x5F243F1) - 99763185) ^ ((v1 ^ 0x34F45F49) - 888430409) ^ ((v1 ^ (v5 + 10498) ^ 0xD8D35092) + 657204311)) + 105858643;
  v7 = ((a1 + 477724502) < 0x1C797F42) ^ (v6 < 0x1C797F42);
  v8 = a1 + 477724502 > v6;
  if (v7)
  {
    v8 = (a1 + 477724502) < 0x1C797F42;
  }

  if (v8)
  {
    v9 = v2;
  }

  else
  {
    v9 = v4;
  }

  return (*(STACK[0xF18] + 8 * ((7496 * (v9 == v3)) ^ v5)))();
}

uint64_t sub_1002A5C88@<X0>(int a1@<W8>)
{
  STACK[0x2228] = 0;
  STACK[0x8998] = STACK[0x6910];
  STACK[0x7FE0] = 0x981390C2B6D0FF7;
  LODWORD(STACK[0x2FD8]) = a1;
  STACK[0x12F8] = &STACK[0x2228];
  LODWORD(STACK[0x7F28]) = -155948771;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1002A5D68()
{
  LODWORD(STACK[0x655C]) = -371865839;
  LODWORD(STACK[0x884C]) = 598541393;
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = 0;
  return (*(STACK[0xF18] + 8 * (v0 - 30246)))();
}

uint64_t sub_1002A5DC0()
{
  LODWORD(STACK[0x16E0]) = 16;
  v1 = STACK[0x1850];
  v2 = STACK[0x60F8];
  v3 = 1022166737 * ((((&STACK[0x10000] + 3800) | 0x57404FE3) + (~(&STACK[0x10000] + 3800) | 0xA8BFB01C)) ^ 0xED50AE70);
  LODWORD(STACK[0x10EF0]) = v3 + v0 + 371878305;
  STACK[0x10EE0] = v1;
  STACK[0x10ED8] = STACK[0x540];
  LODWORD(STACK[0x10EE8]) = v3 ^ 0x54791980;
  STACK[0x10EF8] = v2;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 + 371917848)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * ((5121 * (((LODWORD(STACK[0x10EEC]) - v0) | (v0 - LODWORD(STACK[0x10EEC]))) >= 0)) ^ (v0 + 371900948))))(v5);
}

uint64_t sub_1002A5F14@<X0>(uint64_t a1@<X2>, int a2@<W3>, int a3@<W8>, int8x16_t a4@<Q0>, int8x16_t a5@<Q1>, int8x16_t a6@<Q4>, int8x16_t a7@<Q5>, int32x4_t a8@<Q6>, int8x16_t a9@<Q7>)
{
  a5.i64[0] = *(v12 + 4);
  a5.i32[2] = *(v12 + 12);
  v13 = vextq_s8(a4, a5, 0xCuLL);
  a5.i32[3] = *(v11 + 16);
  v14 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(a5, a9), vandq_s8(v13, a7)), 1uLL), *(v12 - 908));
  v15.i32[0] = *(a1 + 4 * (*(v12 + 4) & v9));
  v15.i32[1] = *(a1 + 4 * (*(v12 + 8) & 1));
  v15.i32[2] = *(a1 + 4 * (a5.i8[8] & 1));
  v15.i32[3] = *(a1 + 4 * (a5.i8[12] & 1));
  *v12 = veorq_s8(vaddq_s32(vsubq_s32(v14, vandq_s8(vaddq_s32(v14, v14), a6)), a8), v15);
  return (*(STACK[0xF18] + 8 * (((v10 != 0) * a2) ^ (a3 + 2075))))(a5);
}

uint64_t sub_1002A6044()
{
  v0 = LODWORD(STACK[0xA810]) + 7 * (STACK[0xF10] ^ 0x9832) - 1946385104;
  v1 = v0 < 0xE453FE77;
  v2 = v0 > LODWORD(STACK[0x36E8]) - 464257417;
  if (LODWORD(STACK[0x36E8]) > 0x1BAC0188 != v1)
  {
    v2 = v1;
  }

  return (*(STACK[0xF18] + 8 * (v2 ^ (STACK[0xF10] + 11883))))();
}

uint64_t sub_1002A60C8()
{
  v1 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x51D1B4B8));
  STACK[0x8288] = ((v0 + 32186) ^ v1 & 0x7FFFFFFFFFFFFFFFLL ^ v1 & 0x5BF69C309ED27CB8 ^ 0xD88680300A103498 ^ 0x23717FC5D5EEC05ELL) - (v1 & 0x5BF69C309ED27CB8 ^ 0xD88680300A103498);
  LODWORD(STACK[0x285C]) = -371865839;
  STACK[0x4B30] = 0;
  return (*(STACK[0xF18] + 8 * (v0 + 3071)))();
}

uint64_t sub_1002A6188()
{
  v2 = 17902189 * ((~(&STACK[0x10000] + 3800) & 0xE36D9223 | (&STACK[0x10000] + 3800) & 0x1C926DD8) ^ 0x6D228433);
  LODWORD(STACK[0x10EDC]) = (v0 + 165) ^ v2;
  LODWORD(STACK[0x10ED8]) = v2 - 693524120;
  STACK[0x10EE8] = v1;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 16605)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (v0 - 29811)))(v4);
}

uint64_t sub_1002A6224(uint64_t a1, uint64_t a2)
{
  v2 = STACK[0xF10] + 122;
  v3 = STACK[0xF10] - 27257;
  v4 = LODWORD(STACK[0x761C]) + (LOBYTE(STACK[0x637F]) - 9);
  v5 = STACK[0x6667];
  *(STACK[0x4690] + v4) = LOBYTE(STACK[0x6667]) - 95;
  LODWORD(STACK[0x81DC]) = v4 + 1;
  LOBYTE(v4) = v5 & 0x6F ^ 0x67;
  STACK[0x95A0] = STACK[0x8418];
  LOWORD(STACK[0x79DE]) = (v5 ^ (2 * ((v5 ^ 0x20) & (2 * ((v5 ^ 0x20) & (2 * ((v5 ^ 0x20) & (2 * ((v5 ^ 0x20) & (2 * (((2 * (((v5 << (v2 ^ 0xB4)) & 0xC2 | 0x21) & v5)) ^ 0x4E) & v5 ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4))) ^ 0x1BD2;
  LODWORD(STACK[0x16B4]) = 308633069;
  return (*(STACK[0xF18] + 8 * v3))(a1, a2, STACK[0xE58], STACK[0xE50]);
}

uint64_t sub_1002A6438()
{
  *(v1 + 760) = STACK[0x4954];
  *(v1 + 752) = STACK[0x39E0];
  *(v1 + 748) = 1;
  return (*(STACK[0xF18] + 8 * (v0 - 28076)))();
}

uint64_t sub_1002A6478@<X0>(int a1@<W8>)
{
  v2 = 0;
  v3 = *(*STACK[0xE50] + (*STACK[0xE58] & 0xFFFFFFFFFE389194)) ^ 0xFE389197;
  v4 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v3 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v3;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = v1 - 0x65D7F4DC84452C66;
  v11 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  v12 = v11 ^ (-29847145 * (v1 + 2075841434)) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v11 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL)));
  v13 = vdupq_n_s32(v12);
  v14 = xmmword_100BC7620;
  v15 = xmmword_100BC7630;
  v16 = xmmword_100BC7640;
  v17 = xmmword_100BC7650;
  v18.i64[0] = 0x9393939393939393;
  v18.i64[1] = 0x9393939393939393;
  v19.i64[0] = 0x1000000010;
  v19.i64[1] = 0x1000000010;
  do
  {
    v20 = *(v10 + v2);
    v28.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v20, xmmword_100BC7690), v13), vmulq_s32(vaddq_s32(v16, v13), vsubq_s32(v16, v13)));
    v28.val[0] = veorq_s8(veorq_s8(vqtbl1q_s8(v20, xmmword_100BC76A0), v13), vmulq_s32(vaddq_s32(v17, v13), vsubq_s32(v17, v13)));
    v28.val[2] = veorq_s8(veorq_s8(vqtbl1q_s8(v20, xmmword_100BC7680), v13), vmulq_s32(vaddq_s32(v15, v13), vsubq_s32(v15, v13)));
    v28.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v20, xmmword_100BC7670), v13), vmulq_s32(vaddq_s32(v14, v13), vsubq_s32(v14, v13)));
    *(v10 + v2) = vmulq_s8(vqtbl4q_s8(v28, xmmword_100BC7660), v18);
    v2 += 16;
    v17 = vaddq_s32(v17, v19);
    v16 = vaddq_s32(v16, v19);
    v15 = vaddq_s32(v15, v19);
    v14 = vaddq_s32(v14, v19);
  }

  while (v2 != 64);
  for (i = 0; i != 4; ++i)
  {
    *(v1 - 0x65D7F4DC84452C26 + i) = -109 * (*(v1 - 0x65D7F4DC84452C26 + i) ^ v12 ^ ((v12 + i + 64) * (64 - v12 + i)));
  }

  v22 = (v1 - 0x65D7F4DC84452C2ELL);
  for (j = 9; j > 2; --j)
  {
    v24 = 16777619 * ((j - 2 + v12) ^ v12) % (j - 2);
    v25 = *(v10 + 8 * v24) ^ *v22;
    *v22 = v25;
    v26 = *(v10 + 8 * v24) ^ v25;
    *(v10 + 8 * v24) = v26;
    *v22-- ^= v26;
  }

  return (*(STACK[0xF18] + 8 * (a1 - 17156)))();
}

uint64_t sub_1002A6720()
{
  v1 = STACK[0x70A8];
  STACK[0x10EE0] = *(STACK[0x70A8] + 32);
  LODWORD(STACK[0x10ED8]) = (v0 - 1762661292) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0x75A32D82) - ((&STACK[0x10000] + 3800) | 0x8A5CD27D) - 1973628291) ^ 0x44A2E0A6));
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 16254)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * (((*(v1 + 40) > 0) * (v0 + 9898)) ^ (v0 - 28776))))(v3);
}

uint64_t sub_1002A6894@<X0>(unsigned int a1@<W0>, unsigned int a2@<W2>, int a3@<W3>, int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W7>, int a8@<W8>)
{
  v13 = *(STACK[0x990] + 16) + (v9 + a5) * v10;
  v14 = v11 + (v9 + a5) * v10;
  *v14 = *v13;
  *(v14 + 8) = *(v13 + 8);
  *(v14 + 16) = *(v13 + 16);
  *(v14 + 24) = *(v13 + 24);
  *(v14 + 32) = *(v13 + 32);
  *(v14 + 36) = *(v13 + 36);
  v15 = v9 + a6 < v8;
  *(v14 + 40) = *(v13 + 40);
  v16 = *(v13 + 44);
  if (v12 > a2 != v9 + a6 < a1)
  {
    v15 = v12 > a2;
  }

  *(v14 + 44) = v16;
  return (*(STACK[0xF18] + 8 * ((!v15 * ((a8 + a3) & a4 ^ a7)) | a8)))();
}

uint64_t sub_1002A6988(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3 ^ 0x64EF10AE;
  v5 = (v3 ^ 0x64EF10AE) - 7173;
  v7 = LODWORD(STACK[0x389C]) == -371865839 && a3 == -371865839;
  return (*(STACK[0xF18] + 8 * ((v7 * ((v4 + 18034) ^ v5)) ^ v4)))();
}

uint64_t sub_1002A6A90()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16562)))(LODWORD(STACK[0x50FC]), 0);
  return (*(v1 + 8 * (v0 - 12201)))(v2);
}

uint64_t sub_1002A6AD4()
{
  v3 = (((v2 ^ 0x1010A87 ^ *(v1 + 16)) + 1112128690) ^ ((*(v1 + 16) ^ 0xE923AE59) - 1435791579) ^ ((*(v1 + 16) ^ (5 * (v2 ^ 0x8241) + 400384824)) + 1419111704)) + 756512104;
  v4 = v0 - 1186331740 > v3;
  v5 = ((v0 - 1186331740) < 0xE9CF53EB) ^ (v3 < 0xE9CF53EB);
  v6 = v4;
  if (v5)
  {
    v7 = (v0 - 1186331740) < 0xE9CF53EB;
  }

  else
  {
    v7 = v6;
  }

  return (*(STACK[0xF18] + 8 * ((!v7 | (32 * !v7)) ^ v2)))();
}

uint64_t sub_1002A6BA8()
{
  v2 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x20FAB224)) ^ 0x20FAB225;
  v3 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v2 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v2;
  v4 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v3 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v3;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  LODWORD(v9) = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  STACK[0xC310] = 0;
  STACK[0xC318] = v0;
  v10 = 16777619 * ((553300517 * v9 + 7) ^ (553300517 * v9)) % 7;
  v11 = *(&STACK[0xC310] | v10);
  *(&STACK[0xC310] | v10) = 0;
  LOBYTE(STACK[0xC317]) = v11;
  v12 = 16777619 * ((553300517 * v9 + 6) ^ (553300517 * v9)) % 6;
  v13 = *(&STACK[0xC310] | v12);
  *(&STACK[0xC310] | v12) = STACK[0xC316];
  LOBYTE(STACK[0xC316]) = v13;
  v14 = 16777619 * ((553300517 * v9 + 5) ^ (553300517 * v9)) % 5;
  v15 = *(&STACK[0xC310] | v14);
  *(&STACK[0xC310] | v14) = STACK[0xC315];
  LOBYTE(STACK[0xC315]) = v15;
  v16 = STACK[0xC310];
  LOBYTE(STACK[0xC310]) = STACK[0xC314];
  LOBYTE(STACK[0xC314]) = v16;
  v17 = 16777619 * ((553300517 * v9 + 3) ^ (553300517 * v9)) % 3;
  v18 = *(&STACK[0xC310] | v17);
  *(&STACK[0xC310] | v17) = STACK[0xC313];
  LOBYTE(STACK[0xC313]) = v18;
  v19 = STACK[0xC311];
  LOBYTE(STACK[0xC312]) = STACK[0xC310];
  LOWORD(STACK[0xC310]) = v19;
  v20 = vdup_n_s32(553300517 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xC310] = vmla_s32(v22, STACK[0xC310], vdup_n_s32(0x1000193u));
  STACK[0xC318] ^= STACK[0xC310];
  STACK[0xC318] = vmul_s32(vsub_s32(STACK[0xC318], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xC31A];
  LOWORD(STACK[0xC319]) = STACK[0xC318];
  LOBYTE(STACK[0xC318]) = v23;
  v24 = (&STACK[0xC318] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xC31B];
  LOBYTE(STACK[0xC31B]) = v19;
  LOBYTE(v24) = STACK[0xC318];
  LOBYTE(STACK[0xC318]) = STACK[0xC31C];
  LOBYTE(STACK[0xC31C]) = v24;
  v25 = (&STACK[0xC318] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xC31D];
  LOBYTE(STACK[0xC31D]) = v24;
  v26 = (&STACK[0xC318] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC31E];
  LOBYTE(STACK[0xC31E]) = v25;
  v27 = (&STACK[0xC318] | v10);
  v28 = *v27;
  *v27 = STACK[0xC31F];
  LOBYTE(STACK[0xC31F]) = v28;
  v29 = STACK[0xC318];
  v30 = (553300517 * STACK[0xC318]) ^ v9;
  for (i = 1; i != 73; ++i)
  {
    v32 = 16777619 * ((v30 + i) ^ v30) % i;
    v33 = *(v29 + 8 * v32) ^ *(v29 + 8 * i);
    *(v29 + 8 * i) = v33;
    v34 = *(v29 + 8 * v32) ^ v33;
    *(v29 + 8 * v32) = v34;
    *(v29 + 8 * i) ^= v34;
  }

  v35 = 0;
  v36 = xmmword_100BC7620;
  v37 = xmmword_100BC7630;
  v38 = xmmword_100BC7640;
  v39 = xmmword_100BC7650;
  v40.i64[0] = 0x9B009B009B009BLL;
  v40.i64[1] = 0x9B009B009B009BLL;
  v41.i64[0] = 0x1000000010;
  v41.i64[1] = 0x1000000010;
  v42 = vdupq_n_s32(v30);
  v43 = STACK[0x940];
  do
  {
    v44 = *(v29 + v35);
    v45 = vmovl_high_u8(v44);
    v46 = vmovl_u8(*v44.i8);
    v57.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v38, v42), vsubq_s32(v38, v42)), v42), vmull_high_u16(v46, v40));
    v57.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v37, v42), vsubq_s32(v37, v42)), v42), vmull_u16(*v45.i8, 0x9B009B009B009BLL));
    v57.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v39, v42), vsubq_s32(v39, v42)), v42), vmull_u16(*v46.i8, 0x9B009B009B009BLL));
    v57.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v36, v42), vsubq_s32(v36, v42)), v42), vmull_high_u16(v45, v40));
    *(v29 + v35) = vqtbl4q_s8(v57, xmmword_100BC7660);
    v35 += 16;
    v39 = vaddq_s32(v39, v41);
    v38 = vaddq_s32(v38, v41);
    v37 = vaddq_s32(v37, v41);
    v36 = vaddq_s32(v36, v41);
  }

  while (v35 != 576);
  v47 = 0;
  v48 = xmmword_100F52AE0;
  v49 = xmmword_100F52AF0;
  v50 = vdupq_n_s32(v30);
  v51 = v29 + 576;
  v52.i64[0] = 0x9B009B009B009BLL;
  v52.i64[1] = 0x9B009B009B009BLL;
  v53.i64[0] = 0x800000008;
  v53.i64[1] = 0x800000008;
  do
  {
    v54 = vmovl_u8(*(v51 + v47));
    v56.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v48, v50), vsubq_s32(v48, v50)), v50), vmull_high_u16(v54, v52));
    v56.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v49, v50), vsubq_s32(v49, v50)), v50), vmull_u16(*v54.i8, 0x9B009B009B009BLL));
    *(v51 + v47) = vqtbl2q_s8(v56, xmmword_100F52AD0).u64[0];
    v49 = vaddq_s32(v49, v53);
    v48 = vaddq_s32(v48, v53);
    v47 += 8;
  }

  while (v47 != 8);
  *v43 = STACK[0xC318];
  return (*(STACK[0xF18] + 8 * (v1 - 30180)))(v48, v49);
}

uint64_t sub_1002A7034()
{
  v0 = (STACK[0xF10] - 29482) | 0x2004;
  v1 = STACK[0xF10] - 33985;
  v2 = STACK[0xF18];
  STACK[0x16D8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x2D0D) + v1)))();
}

uint64_t sub_1002A70D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  STACK[0xEB0] = 0;
  v9 = *(STACK[0xF18] + 8 * (((3 * (a3 ^ 0xBAC4) + (a3 ^ 0xFFFF6CC3)) * (STACK[0xD30] < 0x10)) ^ a3));
  STACK[0xCC0] = a8;
  STACK[0xCB0] = v8;
  return v9();
}

uint64_t sub_1002A7164(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0x6490];
  STACK[0x5B80] = STACK[0x6490];
  return (*(STACK[0xF18] + 8 * (((v3 == 0) * (((v2 ^ 0xEE8D) - 7271) ^ 0x6D66)) ^ v2)))(a1, a2, 371891400);
}

uint64_t sub_1002A727C()
{
  v1 = STACK[0xF18];
  STACK[0x6820] = *(STACK[0xF18] + 8 * (v0 - 24921));
  return (*(v1 + 8 * ((v0 - 24921) ^ 0x8907 ^ ((v0 + 4977) | 0x3500))))();
}

uint64_t sub_1002A7384()
{
  STACK[0x5C50] = ((((4 * v0) ^ 0x6C2DF5F1B52C669ALL) - 0x919736D81649F46) ^ (((4 * v0) ^ 0x2CE291C889D302CFLL) - 0x49D61754BD9BFB13) ^ (((v1 + 29678) ^ 0xDA041D59501FF508) + ((4 * v0) ^ 0x40CF643A9BA87811))) - 0x5FEA38265F8383A6;
  LODWORD(STACK[0x1374]) = -1930209209;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1002A7560()
{
  *v1 = v0 | 2;
  *(v1 + 12) = 592812796;
  v3 = *(v1 + 16);
  LODWORD(STACK[0x10ED8]) = (v2 - 1762645487) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0xAEAD894A) - ((&STACK[0x10000] + 3800) & 0xAEAD8948)) ^ 0x9FAC446E));
  STACK[0x10EE0] = v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 ^ 0x87C7)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * ((7080 * (*(v1 + 24) == v2 - 19838)) ^ v2)))(v5);
}

uint64_t sub_1002A76F4()
{
  v1 = LOWORD(STACK[0x2C64]);
  LOWORD(STACK[0x7CEE]) = v1 ^ 0xC711;
  return (*(STACK[0xF18] + 8 * (((v1 == 50961) * (((v0 ^ 0xB768) - 5664) ^ ((v0 ^ 0x9E7A) - 11530))) | v0 ^ 0x9E7A)))();
}

uint64_t sub_1002A77AC()
{
  STACK[0x8B38] = *(v2 + 8);
  LODWORD(STACK[0x3BA4]) = v3;
  LODWORD(STACK[0x5A14]) = v0;
  LODWORD(STACK[0x8F84]) = -1105761879;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1002A78FC@<X0>(uint64_t a1@<X8>)
{
  v10 = v2 - 1;
  *((v5 & (2 * v10)) + (v10 ^ v4) + v9 + v7) = *(a1 + (v5 & (2 * v10)) + (v10 ^ v4) + (STACK[0xF10] ^ v3 ^ v6));
  return (*(STACK[0xF18] + 8 * (((v10 == 0) * v8) ^ v1)))();
}

uint64_t sub_1002A7990()
{
  v0 = STACK[0xF10] - 29528;
  LOBYTE(STACK[0xB26F]) = 37;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1002A79B8()
{
  v3 = *(v0 + 12);
  STACK[0x2438] = v0 + 12;
  LOBYTE(STACK[0xA971]) = v1 ^ 0xD8;
  LODWORD(STACK[0x10EDC]) = v2 - 139493411 * ((((&STACK[0x10000] + 3800) | 0x359D1F0E) - ((&STACK[0x10000] + 3800) & 0x359D1F08)) ^ 0x39B0FE4B) - 1490740009;
  LOBYTE(STACK[0x10ED8]) = (v3 ^ 0xEE) - 35 * ((((&STACK[0x10000] - 40) | 0xE) - ((&STACK[0x10000] - 40) & 8)) ^ 0x4B) + ((2 * v3) & 0xDD) + 96;
  LOBYTE(STACK[0x10ED9]) = ((((v1 ^ 7) + 33) ^ ((v1 ^ 0x91) - 73) ^ ((v1 ^ (v2 - 112) ^ 0x3C) - 95)) + 27) ^ (35 * ((((&STACK[0x10000] - 40) | 0xE) - ((&STACK[0x10000] - 40) & 8)) ^ 0x4B));
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 ^ 0xFA4C)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * ((189 * (LODWORD(STACK[0x10EE0]) == -371865839)) ^ v2)))(v5);
}

uint64_t sub_1002A7ACC()
{
  v0 = LOWORD(STACK[0x8BF6]);
  v1 = (-14874 - (v0 & 0x2002)) & 0xFFFFA0A2 | ((v0 & 0x500) + 265) & 0xFFFFFDFF;
  v2 = ((2 * v1) & 0xB00 | (2 * (v1 | 0x4810)) & 0xD076) & (v0 ^ 0x122C);
  v3 = (v2 & 0x948A ^ ((-14874 - (v0 & 0x2002)) & 0x8082 | ((v0 & 0x500) + 265) & 0x848A) | v2 & 0x4254 | (((-14874 - (v0 & 0x2002)) & 0x2020 | ((v0 & 0x500) + 265) & 0x2121 | 0x800) - (v2 & 0x2920) + 4674) & 0x2921) ^ 0x4010;
  v4 = (v0 ^ 0x122C) & (2 * (((v0 & (2 * (v3 % 0x3Eu)) & 2) + 2 * ((((2 * (v3 % 0x3Eu) + 124 * (v3 / 0x3Eu)) << 16) >> 18) + ((v0 ^ 0x122C) << 16 >> 18) - ((((2 * (v3 % 0x3Eu) + 124 * (v3 / 0x3Eu)) << 16) >> 18) ^ ((v0 ^ 0x122C) << 16 >> 18)))) ^ (v1 | 0x4810)));
  v5 = 2 * ((v4 | v1 ^ 0x37EF) + (v1 | 0x4810 | ~v4) + 2 * (v4 ^ (v1 | 0x4810))) + 4;
  v6 = (v5 ^ v0) & 0x92A4 | ((v5 & 0x4850) + (v0 & 0x4851)) & 0x4851 | ((v5 & 0x250A) - (v0 & 0x250A) + 2580) & 0x250A;
  v7 = LOWORD(STACK[0x46E6]);
  v8 = 2 * ~v7;
  v9 = ((*&v8 | 0xFFFF909E) - (v7 ^ 0xFFFFFFFE)) ^ ((v7 ^ 0x5ECE) - 24270);
  v10 = (v7 | 0x6CC0) - (~v7 | 0xFFFF933F) + (v8 & 0x267E);
  v11 = ((2 * v10) | 0xFFFFD982) - (v10 ^ 0x6CC1);
  v12 = (v11 >> 7) & 0x100 | (v11 >> 4) & 0x800;
  v13 = v9 ^ v11;
  v14 = v13 ^ ((v9 >> 7) & 0x100 | (v9 >> 4) & 0x800) ^ v12;
  v15 = (v14 & 0x8000u) % 3;
  v16 = (((v13 >> 7) & 0x100 | ((v15 * v15 - 3 * ((21846 * (v15 * v15)) >> 16)) << 11)) ^ v14) - 16424 + ((((LOWORD(STACK[0x6736]) ^ 0xA40) << (v6 & 9) << ((v6 ^ 0xF3) & 0x16 ^ 0x10)) & 0xFFF | (v6 << 12)) ^ 0x2000);
  v17 = ((2 * (v16 & 0xFFFF9992)) | 0x672A) - (v16 & 0xFFFF9992);
  LOWORD(v13) = v17 - 13205;
  v18 = (v16 ^ 0x3A68) + 1;
  v19 = v18 + (v16 ^ 0xFFFFC597 | (2 * ((v16 ^ 0x3A68) & (2 * ((v16 ^ 0x3A68) & (2 * ((v16 ^ 0x3A68) & (2 * ((v16 ^ 0x3A68) & (2 * ((v16 ^ 0x3A68) & (2 * ((v17 - 13205) ^ v16 & 0x23FA)) ^ (v17 - 13205))) ^ (v17 - 13205))) ^ (v17 - 13205))) ^ (v17 - 13205))) & 0x7FFE ^ (v17 - 13205))));
  v20 = (((v17 - 13205) >> 5) & 2 | ((v17 - 13205) >> 7) & 0x40) ^ (v17 - 13205) ^ v19 ^ ((v19 >> 5) & 2 | (v19 >> 7) & 0x40);
  v21 = (v20 & 0x2000) - 3 * ((21846 * (v20 & 0x2000)) >> 16);
  v22 = v20 ^ ((v21 * v21 - 3 * ((21846 * (v21 * v21)) >> 16)) << 6);
  v23 = (v22 & 0x40) - 3 * ((21846 * (v22 & 0x40)) >> 16);
  v24 = ((((4 * (v23 * v23 - 3 * ((21846 * (v23 * v23)) >> 16))) ^ (2 * v22)) & (v16 ^ 0x3A68) ^ (v17 - 13205)) << 17) >> 17;
  v25 = (((v16 ^ 0x3A68) << 16) >> 17) - (v24 ^ (((v16 ^ 0x3A68) << 16) >> 17)) + v24;
  LOWORD(v22) = v25 ^ (v17 - 13205);
  LOWORD(v17) = 13204 - v17;
  LOWORD(v25) = (v16 ^ 0x3A68) & (2 * ((2 * ((v25 | v17) + (v13 | ~v25) + 2 * v22) + 4) & (v16 ^ 0x3A68) ^ v13));
  LOWORD(v25) = 2 * (v17 - (v25 | v17) + (v25 | v13));
  LOWORD(v14) = (v16 ^ 0x3A68) & (2 * (v13 ^ (v16 ^ 0x3A68) & 0x2341 ^ (v18 + (v16 ^ 0xC597) + (((2 * (((v25 & (v16 ^ 0x4597)) + (v16 ^ 0x3A68) - (v25 ^ v16 ^ 0x3A68)) ^ v13)) ^ 0x2341) & (v16 ^ 0x3A68)))));
  LOWORD(v13) = (2 * ((v14 ^ v13) + (v14 & v17) + (v13 | ~v14)) + 2) ^ v16;
  LOWORD(STACK[0x6736]) = ((2 * v13) | 0xC7A4) - v13 + 7214;
  return (STACK[0x4118])();
}

uint64_t sub_1002A7F98@<X0>(uint64_t a1@<X8>)
{
  v2 = (STACK[0xF10] - 406599228) & 0x183BFFF6;
  v3 = STACK[0xF10] - 28042;
  v4 = STACK[0xF10] + 10835;
  STACK[0x5CC0] = *(a1 + 136);
  STACK[0xAEF8] = a1 + 36;
  STACK[0x5018] = a1 + 60;
  STACK[0xAF00] = v1;
  v5 = STACK[0x1650];
  STACK[0x7698] = STACK[0x1650];
  LODWORD(STACK[0x8398]) = STACK[0x8D94];
  v6 = STACK[0x7690];
  v7 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x3E60] = v7;
  STACK[0x2020] = (v7 + 120);
  STACK[0x7690] = v6 + 224;
  STACK[0x1250] = 0;
  LODWORD(STACK[0x7048]) = -371865839;
  return (*(STACK[0xF18] + 8 * (((v5 != 0) * (v3 - 29331 + v2)) ^ v4)))();
}

uint64_t sub_1002A8060()
{
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 16238)))(v1);
  return (*(v3 + 8 * v2))(v4);
}

uint64_t sub_1002A8088()
{
  LODWORD(STACK[0x10EE0]) = v1 + 155453101 * ((((&STACK[0x10000] + 3800) ^ 0x9D83791F | 0xBF8E893) - ((&STACK[0x10000] + 3800) ^ 0x9D83791F) + (((&STACK[0x10000] + 3800) ^ 0x9D83791F) & 0xF407176C)) ^ 0x705D8A43) + 296782153;
  STACK[0x10ED8] = 0;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0xD30B)))(&STACK[0x10ED8]);
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v0;
  LODWORD(STACK[0x35EC]) = 1693393346;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1002A8188()
{
  v3 = STACK[0xF18];
  STACK[0x1450] = *(STACK[0xF18] + 8 * v0);
  STACK[0x6D70] = 0;
  return (*(v3 + 8 * (((v2 == 0) * ((2 * v1) ^ 0x6E1B)) ^ v1)))();
}

uint64_t sub_1002A8274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, int a8)
{
  v13 = v8 > v11;
  if (v13 == a8 + a5 < v9)
  {
    v13 = a8 + a5 < v10;
  }

  return (*(STACK[0xF18] + 8 * (v12 ^ (v13 * a7))))();
}

uint64_t sub_1002A8314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0xF18];
  STACK[0x64F0] = *(STACK[0xF18] + 8 * v6);
  return (*(v7 + 8 * (v6 + 11081 + 3 * (v6 ^ 0x49A))))(a1, a2, a3, a4, a5, a6, &STACK[0xA237]);
}

uint64_t sub_1002A8358()
{
  v0 = STACK[0xF10] - 2333;
  v1 = STACK[0xF10] - 32680;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v0 ^ 0x9EFE ^ v1)))();
}

uint64_t sub_1002A83A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0xF10] - 19291;
  LODWORD(STACK[0x1BF0]) += ((STACK[0xF10] + 1286) | 0x108) - 37192;
  return (*(STACK[0xF18] + 8 * (v5 ^ (47799 * (v4 == -371865839)))))(a1, a2, a3, a4, STACK[0x810]);
}

uint64_t sub_1002A8400@<X0>(int a1@<W8>)
{
  v3 = STACK[0xF10];
  v4 = STACK[0xF10] - 2167;
  *(v2 + 2256) = v1;
  *(v2 + 2260) = a1 + 4;
  v5 = *(*STACK[0x9A30] + 72 * STACK[0x9A38] + 24);
  v6 = (((v5 ^ (v3 - 1142713806)) + (v3 ^ 0x441B69A8)) ^ ((v5 ^ 0x2D10714D) - 756052301) ^ ((v5 ^ 0x7F21AB31) - 2132912945)) - 963094053;
  v7 = v6 < 0xDCC292CA;
  v8 = v1 - 727693492 < v6;
  if ((v1 - 727693492) < 0xDCC292CA != v7)
  {
    v8 = v7;
  }

  return (*(STACK[0xF18] + 8 * ((31 * v8) ^ v4)))();
}

uint64_t sub_1002A84E8()
{
  v0 = STACK[0xF10] ^ 0x3E7A;
  v1 = STACK[0xF10] - 32816;
  v2 = STACK[0xF18];
  STACK[0x6820] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v0 + v1 - 35099)))();
}

uint64_t sub_1002A853C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] + 12947;
  LODWORD(STACK[0x453C]) = 371891400;
  return (*(STACK[0xF18] + 8 * v7))(a1, a2, a3, a4, a5, a6, a7, 371891400);
}

uint64_t sub_1002A8574@<X0>(int a1@<W8>)
{
  *(v2 + 1884) = v1;
  *(v2 + 1891) = 0;
  return (*(STACK[0xF18] + 8 * (a1 - 21532)))();
}

uint64_t sub_1002A85A0()
{
  v2 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x20FAB224)) ^ 0x20FAB225;
  v3 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v2 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v2;
  v4 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v3 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v3;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  LODWORD(v9) = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  STACK[0xC280] = 0;
  STACK[0xC288] = v0;
  v10 = 16777619 * ((553300517 * v9 + 7) ^ (553300517 * v9)) % 7;
  v11 = *(&STACK[0xC280] | v10);
  *(&STACK[0xC280] | v10) = 0;
  LOBYTE(STACK[0xC287]) = v11;
  v12 = 16777619 * ((553300517 * v9 + 6) ^ (553300517 * v9)) % 6;
  v13 = *(&STACK[0xC280] | v12);
  *(&STACK[0xC280] | v12) = STACK[0xC286];
  LOBYTE(STACK[0xC286]) = v13;
  v14 = 16777619 * ((553300517 * v9 + 5) ^ (553300517 * v9)) % 5;
  v15 = *(&STACK[0xC280] | v14);
  *(&STACK[0xC280] | v14) = STACK[0xC285];
  LOBYTE(STACK[0xC285]) = v15;
  v16 = STACK[0xC280];
  LOBYTE(STACK[0xC280]) = STACK[0xC284];
  LOBYTE(STACK[0xC284]) = v16;
  v17 = 16777619 * ((553300517 * v9 + 3) ^ (553300517 * v9)) % 3;
  v18 = *(&STACK[0xC280] | v17);
  *(&STACK[0xC280] | v17) = STACK[0xC283];
  LOBYTE(STACK[0xC283]) = v18;
  v19 = STACK[0xC281];
  LOBYTE(STACK[0xC282]) = STACK[0xC280];
  LOWORD(STACK[0xC280]) = v19;
  v20 = vdup_n_s32(553300517 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xC280] = vmla_s32(v22, STACK[0xC280], vdup_n_s32(0x1000193u));
  STACK[0xC288] ^= STACK[0xC280];
  STACK[0xC288] = vmul_s32(vsub_s32(STACK[0xC288], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xC28A];
  LOWORD(STACK[0xC289]) = STACK[0xC288];
  LOBYTE(STACK[0xC288]) = v23;
  v24 = (&STACK[0xC288] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xC28B];
  LOBYTE(STACK[0xC28B]) = v19;
  LOBYTE(v24) = STACK[0xC288];
  LOBYTE(STACK[0xC288]) = STACK[0xC28C];
  LOBYTE(STACK[0xC28C]) = v24;
  v25 = (&STACK[0xC288] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xC28D];
  LOBYTE(STACK[0xC28D]) = v24;
  v26 = (&STACK[0xC288] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC28E];
  LOBYTE(STACK[0xC28E]) = v25;
  v27 = (&STACK[0xC288] | v10);
  v28 = *v27;
  *v27 = STACK[0xC28F];
  LOBYTE(STACK[0xC28F]) = v28;
  v29 = STACK[0xC288];
  v30 = (553300517 * STACK[0xC288]) ^ v9;
  for (i = 1; i != 73; ++i)
  {
    v32 = 16777619 * ((v30 + i) ^ v30) % i;
    v33 = *(v29 + 8 * v32) ^ *(v29 + 8 * i);
    *(v29 + 8 * i) = v33;
    v34 = *(v29 + 8 * v32) ^ v33;
    *(v29 + 8 * v32) = v34;
    *(v29 + 8 * i) ^= v34;
  }

  v35 = 0;
  v36 = xmmword_100BC7620;
  v37 = xmmword_100BC7630;
  v38 = xmmword_100BC7640;
  v39 = xmmword_100BC7650;
  v40.i64[0] = 0x9B009B009B009BLL;
  v40.i64[1] = 0x9B009B009B009BLL;
  v41.i64[0] = 0x1000000010;
  v41.i64[1] = 0x1000000010;
  v42 = vdupq_n_s32(v30);
  do
  {
    v43 = *(v29 + v35);
    v44 = vmovl_high_u8(v43);
    v45 = vmovl_u8(*v43.i8);
    v56.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v38, v42), vsubq_s32(v38, v42)), v42), vmull_high_u16(v45, v40));
    v56.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v37, v42), vsubq_s32(v37, v42)), v42), vmull_u16(*v44.i8, 0x9B009B009B009BLL));
    v56.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v39, v42), vsubq_s32(v39, v42)), v42), vmull_u16(*v45.i8, 0x9B009B009B009BLL));
    v56.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v36, v42), vsubq_s32(v36, v42)), v42), vmull_high_u16(v44, v40));
    *(v29 + v35) = vqtbl4q_s8(v56, xmmword_100BC7660);
    v35 += 16;
    v39 = vaddq_s32(v39, v41);
    v38 = vaddq_s32(v38, v41);
    v37 = vaddq_s32(v37, v41);
    v36 = vaddq_s32(v36, v41);
  }

  while (v35 != 576);
  v46 = 0;
  v47 = xmmword_100F52AE0;
  v48 = xmmword_100F52AF0;
  v49 = vdupq_n_s32(v30);
  v50 = v29 + 576;
  v51.i64[0] = 0x9B009B009B009BLL;
  v51.i64[1] = 0x9B009B009B009BLL;
  v52.i64[0] = 0x800000008;
  v52.i64[1] = 0x800000008;
  do
  {
    v53 = vmovl_u8(*(v50 + v46));
    v55.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v47, v49), vsubq_s32(v47, v49)), v49), vmull_high_u16(v53, v51));
    v55.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v48, v49), vsubq_s32(v48, v49)), v49), vmull_u16(*v53.i8, 0x9B009B009B009BLL));
    *(v50 + v46) = vqtbl2q_s8(v55, xmmword_100F52AD0).u64[0];
    v48 = vaddq_s32(v48, v52);
    v47 = vaddq_s32(v47, v52);
    v46 += 8;
  }

  while (v46 != 8);
  *STACK[0x940] = STACK[0xC288];
  return (*(STACK[0xF18] + 8 * v1))(v47, v48);
}

uint64_t sub_1002A8A3C()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] - 8807;
  LODWORD(STACK[0x816C]) = v0;
  return (*(STACK[0xF18] + 8 * (((v1 - 35591) * (v0 == -371865839)) ^ v2)))();
}

uint64_t sub_1002A8B70()
{
  v3 = STACK[0xB8F8];
  v4 = (STACK[0xED0] & 0x7BDC) + 24574 + (v1 ^ 0x36D5 ^ ((v2 + 4661) | 0x929));
  LOWORD(STACK[0x10EE4]) = -2887 * ((((&STACK[0x10000] + 3800) | 0x1775) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xE888)) ^ 0x3889) + 8978;
  LOWORD(STACK[0x10EEC]) = v4 ^ (-2887 * ((((&STACK[0x10000] + 3800) | 0x1775) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xE888)) ^ 0x3889));
  LODWORD(STACK[0x10EE0]) = (v2 - 28637) ^ (634647737 * ((((&STACK[0x10000] + 3800) | 0x67D51775) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x982AE888)) ^ 0xA433889));
  STACK[0x10EF0] = v3;
  STACK[0x10ED8] = v0;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v2 + 23235)))(&STACK[0x10ED8]);
  v7 = STACK[0x10EE8];
  LODWORD(STACK[0xB904]) = STACK[0x10EE8];
  return (*(v5 + 8 * (((v7 == -371865839) * ((v2 + 2008592274) & 0x8846F09F ^ 0xF73)) ^ v2)))(v6);
}

uint64_t sub_1002A8C90(uint64_t a1, uint64_t a2)
{
  *(a2 + 1900) = v3;
  v6 = v3 - 150040866;
  v7 = (((v5 ^ 0xFF7FF77B) + ((503 * (v2 ^ 0x4286)) ^ 0x800F59)) ^ ((((v2 ^ 0x4286) + 14152) ^ v5 ^ 0xCDFD5054) + 839031016) ^ ((v5 ^ 0xDB575772) + 615032974)) - 521906705;
  v8 = v3 > 0x8F17121;
  v9 = v8 ^ (v7 < 0xF70E8EDE);
  v10 = v6 > v7;
  if (!v9)
  {
    v8 = v10;
  }

  if (v8)
  {
    v11 = 371891407;
  }

  else
  {
    v11 = v4;
  }

  *(a2 + 1904) = v11;
  return (*(STACK[0xF18] + 8 * ((15818 * (v11 == -371865839)) ^ v2)))();
}

uint64_t sub_1002A8DB8()
{
  v1 = STACK[0xF18];
  STACK[0x3058] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((2 * v0) ^ 0x225) + v0)))();
}

uint64_t sub_1002A8E40()
{
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762636890) ^ (906386353 * (((((&STACK[0x10000] + 3800) | 0xDA3E4762) ^ 0xFFFFFFFE) - (~(&STACK[0x10000] + 3800) | 0x25C1B89D)) ^ 0x14C075B9));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xE150)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * ((2042 * (((v0 ^ 0x7B31 ^ (*STACK[0x970] > (v0 ^ 0x3228) - 6593)) & 1) == 0)) ^ v0)))(v2);
}

uint64_t sub_1002A8F10@<X0>(int a1@<W2>, int a2@<W8>)
{
  v12 = v9 - 1;
  *(v10 + v12) = *(v3 + (v12 & 0xF)) ^ *(v2 + v12) ^ *((v12 & 0xF) + v5 + 5) ^ ((v12 & 0xF) * v7) ^ *((v12 & 0xF) + v4 + 2);
  return (*(v11 + 8 * (((v12 == 0) * v8) ^ a2)))(a1 ^ v6);
}

uint64_t sub_1002A8F64(__n128 a1)
{
  a1.n128_u16[0] = 24415;
  a1.n128_u8[2] = 95;
  a1.n128_u8[3] = 95;
  a1.n128_u8[4] = 95;
  a1.n128_u8[5] = 95;
  a1.n128_u8[6] = 95;
  a1.n128_u8[7] = 95;
  return (*(v2 + 8 * (v1 + 1060906914)))(a1);
}

uint64_t sub_1002A8FC4(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, unsigned int a8)
{
  v15 = v14 < a1;
  if (v15 == v8 + v10 < ((v9 + a7) | a8) + v12)
  {
    v15 = v8 + v10 < v14;
  }

  return (*(v11 + 8 * ((v15 * v13) ^ v9)))();
}

uint64_t sub_1002A9014(uint64_t a1, uint64_t a2)
{
  v4 = v2 & 2;
  if ((v2 & 0x40) != 0)
  {
    v5 = 2;
  }

  else
  {
    v5 = 6;
  }

  if (v4 == ((v3 + 1923383334) & 0x8D5BBBFF) - 35643)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  LODWORD(STACK[0x6838]) = v6;
  return (*(STACK[0xF18] + 8 * v3))(a1, a2, 371891392);
}

uint64_t sub_1002A90F8()
{
  LODWORD(STACK[0x3480]) = v1;
  v2 = LODWORD(STACK[0x5208]) - ((((v0 - 1205845484) & 0x47DFBAFA) - 743766568) & (2 * LODWORD(STACK[0x5208]))) - 371865839;
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v2;
  LODWORD(STACK[0x35EC]) = 1693393377;
  return (*(STACK[0xF18] + 8 * (v0 - 29050)))();
}

uint64_t sub_1002AD298(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0x5354]) = a3;
  STACK[0x4378] = &STACK[0x30A8];
  LODWORD(STACK[0x8A84]) = 1050997404;
  return (*(STACK[0xF18] + 8 * (v3 - 4057)))();
}

uint64_t sub_1002AD358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  *&STACK[0xE90] = *(v10 + a7 - 16);
  v23.i64[0] = v10 + a7 + v11;
  v23.i64[1] = v10 + a7 - 4;
  *&v24 = v10 + a7 - 15;
  *(&v24 + 1) = v10 + a7 - 16;
  *&STACK[0xE80] = v24;
  *&v24 = v10 + a7 - 13;
  *(&v24 + 1) = v10 + a7 - 14;
  *&STACK[0xE70] = v24;
  v25.i64[0] = v10 + a7 - 7;
  v25.i64[1] = v10 + a7 - 8;
  v26.i64[0] = v10 + a7 - 5;
  v26.i64[1] = v10 + a7 - 6;
  v27.i64[0] = v10 + a7 - 1;
  v27.i64[1] = v10 + a7 - 2;
  v28 = vandq_s8(v23, *&STACK[0xED0]);
  v29 = vandq_s8(v27, *&STACK[0xED0]);
  v30 = vandq_s8(v26, *&STACK[0xED0]);
  v31 = vandq_s8(v25, *&STACK[0xED0]);
  v32 = vsraq_n_u64(vshlq_n_s64(v29, 0x38uLL), v29, 8uLL);
  v33 = vsraq_n_u64(vshlq_n_s64(v28, 0x38uLL), v28, 8uLL);
  v34 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v30, 0x38uLL), v30, 8uLL), *&STACK[0xE10]);
  v35 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL), *&STACK[0xE10]);
  v36 = *&STACK[0xE10];
  v37 = *&STACK[0xE00];
  v38 = veorq_s8(v35, *&STACK[0xE00]);
  v39 = veorq_s8(v34, *&STACK[0xE00]);
  v40 = veorq_s8(v34, v22);
  v41 = veorq_s8(v35, v22);
  v42 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL), v41);
  v43 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL), v40);
  v44 = *&STACK[0xDE0];
  v45 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v42, *&STACK[0xEC0]), vorrq_s8(v42, v14)), v14), *&STACK[0xDE0]);
  v46 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v43, *&STACK[0xEC0]), vorrq_s8(v43, v14)), v14), *&STACK[0xDE0]);
  v47 = veorq_s8(v46, vsraq_n_u64(vshlq_n_s64(v40, 3uLL), v40, 0x3DuLL));
  v48 = veorq_s8(v45, vsraq_n_u64(vshlq_n_s64(v41, 3uLL), v41, 0x3DuLL));
  v49 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v47), v15);
  v50 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), v48), v15);
  v51 = vsraq_n_u64(vshlq_n_s64(v47, 3uLL), v47, 0x3DuLL);
  v52 = veorq_s8(v50, vsraq_n_u64(vshlq_n_s64(v48, 3uLL), v48, 0x3DuLL));
  v53 = veorq_s8(v49, v51);
  v54 = vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL);
  v55 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v53);
  v56 = vaddq_s64(v54, v52);
  v57 = *&STACK[0xDC0];
  v58 = *&STACK[0xD30];
  v59 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v55, *&STACK[0xDC0]), vorrq_s8(v55, *&STACK[0xD30])), *&STACK[0xD30]), *&STACK[0xDB0]);
  v60 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v56, *&STACK[0xDC0]), vorrq_s8(v56, *&STACK[0xD30])), *&STACK[0xD30]), *&STACK[0xDB0]);
  v61 = *&STACK[0xDB0];
  v62 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL));
  v63 = veorq_s8(v59, vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL));
  v64 = *&STACK[0xEB0];
  v65 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v62), *&STACK[0xEB0]);
  v66 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v63), *&STACK[0xEB0]);
  v67 = vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL);
  v68 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v69 = veorq_s8(v65, v67);
  v70 = vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v69);
  v72 = *&STACK[0xEA0];
  v73 = veorq_s8(vaddq_s64(v70, v68), *&STACK[0xEA0]);
  v74 = veorq_s8(v71, *&STACK[0xEA0]);
  v75 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v76 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v77 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v76);
  v79 = vaddq_s64(v77, v75);
  v80 = veorq_s8(vaddq_s64(vsubq_s64(v79, vandq_s8(vaddq_s64(v79, v79), v16)), v17), v18);
  v81 = veorq_s8(vaddq_s64(vsubq_s64(v78, vandq_s8(vaddq_s64(v78, v78), v16)), v17), v18);
  v82.i64[0] = v10 + a7 - 11;
  v82.i64[1] = v10 + a7 - 12;
  *&STACK[0xE40] = v82;
  v83 = vaddq_s64(v32, v36);
  v84 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL)));
  v85 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL)));
  v86 = *&STACK[0xD50];
  v180.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v84, v84), v19), v84), v20), *&STACK[0xD50]), vnegq_s64(vandq_s8(vshlq_n_s64(v25, 3uLL), v21)));
  v180.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v85, v85), v19), v85), v20), *&STACK[0xD50]), vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), v21)));
  v87 = veorq_s8(v83, v37);
  v88 = veorq_s8(v83, v22);
  v89 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v88);
  v90 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v89, v13), vorrq_s8(v89, v14)), v14), v44);
  v91 = veorq_s8(v90, vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL));
  v92 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v91), v15);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v94 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v93);
  v95 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v94, v57), vorrq_s8(v94, v58)), v58), v61);
  v96 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v97 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96), v64);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v99 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98), v72);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100);
  v102 = veorq_s8(vaddq_s64(vsubq_s64(v101, vandq_s8(vaddq_s64(v101, v101), v16)), v17), v18);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v100.i64[0] = v10 + a7 - 9;
  v100.i64[1] = v10 + a7 - 10;
  *&STACK[0xE60] = v100;
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103);
  v105 = vandq_s8(v100, *&STACK[0xED0]);
  v106 = vaddq_s64(v33, v36);
  v180.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v104, v104), v19), v104), v20), v86), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), v21)));
  v107 = veorq_s8(v106, v37);
  v108 = veorq_s8(v106, v22);
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v109, v13), vorrq_s8(v109, v14)), v14), v44);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111), v15);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113);
  v115 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v114, v57), vorrq_s8(v114, v58)), v58), v61);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116), v64);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v119 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118), v72);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120);
  v122 = veorq_s8(vaddq_s64(vsubq_s64(v121, vandq_s8(vaddq_s64(v121, v121), v16)), v17), v18);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v124 = vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL);
  v125 = vandq_s8(v82, *&STACK[0xED0]);
  v126 = vaddq_s64(v124, v123);
  v127 = vandq_s8(*&STACK[0xE70], *&STACK[0xED0]);
  v180.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v126, v126), v19), v126), v20), v86), vnegq_s64(vandq_s8(vshlq_n_s64(v23, 3uLL), v21)));
  v128 = vandq_s8(*&STACK[0xE80], *&STACK[0xED0]);
  v129 = vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL);
  v130 = vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL);
  v131 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v132 = vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL);
  v133 = vaddq_s64(v130, v36);
  v134 = vaddq_s64(v129, v36);
  v100.i64[0] = vqtbl4q_s8(v180, *&STACK[0xE30]).u64[0];
  v180.val[0] = veorq_s8(v134, v37);
  v180.val[1] = veorq_s8(v133, v37);
  v180.val[2] = veorq_s8(v133, v22);
  v180.val[3] = veorq_s8(v134, v22);
  v180.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180.val[0], 0x38uLL), v180.val[0], 8uLL), v180.val[3]);
  v180.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180.val[1], 0x38uLL), v180.val[1], 8uLL), v180.val[2]);
  v180.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v180.val[0], v13), vorrq_s8(v180.val[0], v14)), v14), v44);
  v180.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v180.val[1], v13), vorrq_s8(v180.val[1], v14)), v14), v44);
  v180.val[2] = veorq_s8(v180.val[1], vsraq_n_u64(vshlq_n_s64(v180.val[2], 3uLL), v180.val[2], 0x3DuLL));
  v180.val[3] = veorq_s8(v180.val[0], vsraq_n_u64(vshlq_n_s64(v180.val[3], 3uLL), v180.val[3], 0x3DuLL));
  v180.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180.val[1], 0x38uLL), v180.val[1], 8uLL), v180.val[2]), v15);
  v180.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180.val[0], 0x38uLL), v180.val[0], 8uLL), v180.val[3]), v15);
  v135 = vsraq_n_u64(vshlq_n_s64(v180.val[2], 3uLL), v180.val[2], 0x3DuLL);
  v180.val[2] = veorq_s8(v180.val[0], vsraq_n_u64(vshlq_n_s64(v180.val[3], 3uLL), v180.val[3], 0x3DuLL));
  v180.val[3] = veorq_s8(v180.val[1], v135);
  v136 = vsraq_n_u64(vshlq_n_s64(v180.val[0], 0x38uLL), v180.val[0], 8uLL);
  v180.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180.val[1], 0x38uLL), v180.val[1], 8uLL), v180.val[3]);
  v180.val[1] = vaddq_s64(v136, v180.val[2]);
  v180.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v180.val[0], v57), vorrq_s8(v180.val[0], v58)), v58), v61);
  v180.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v180.val[1], v57), vorrq_s8(v180.val[1], v58)), v58), v61);
  v180.val[2] = veorq_s8(v180.val[1], vsraq_n_u64(vshlq_n_s64(v180.val[2], 3uLL), v180.val[2], 0x3DuLL));
  v180.val[3] = veorq_s8(v180.val[0], vsraq_n_u64(vshlq_n_s64(v180.val[3], 3uLL), v180.val[3], 0x3DuLL));
  v180.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180.val[1], 0x38uLL), v180.val[1], 8uLL), v180.val[2]), *&STACK[0xEB0]);
  v180.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180.val[0], 0x38uLL), v180.val[0], 8uLL), v180.val[3]), *&STACK[0xEB0]);
  v137 = vsraq_n_u64(vshlq_n_s64(v180.val[2], 3uLL), v180.val[2], 0x3DuLL);
  v180.val[2] = veorq_s8(v180.val[0], vsraq_n_u64(vshlq_n_s64(v180.val[3], 3uLL), v180.val[3], 0x3DuLL));
  v180.val[3] = veorq_s8(v180.val[1], v137);
  v138 = vsraq_n_u64(vshlq_n_s64(v180.val[0], 0x38uLL), v180.val[0], 8uLL);
  v180.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180.val[1], 0x38uLL), v180.val[1], 8uLL), v180.val[3]);
  v180.val[1] = veorq_s8(vaddq_s64(v138, v180.val[2]), *&STACK[0xEA0]);
  v139 = vsraq_n_u64(vshlq_n_s64(v180.val[2], 3uLL), v180.val[2], 0x3DuLL);
  v180.val[0] = veorq_s8(v180.val[0], *&STACK[0xEA0]);
  v180.val[2] = veorq_s8(v180.val[0], vsraq_n_u64(vshlq_n_s64(v180.val[3], 3uLL), v180.val[3], 0x3DuLL));
  v180.val[3] = veorq_s8(v180.val[1], v139);
  v140 = vsraq_n_u64(vshlq_n_s64(v180.val[0], 0x38uLL), v180.val[0], 8uLL);
  v180.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180.val[1], 0x38uLL), v180.val[1], 8uLL), v180.val[3]);
  v180.val[1] = vaddq_s64(v140, v180.val[2]);
  v180.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v180.val[1], vandq_s8(vaddq_s64(v180.val[1], v180.val[1]), v16)), v17), v18);
  v180.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v180.val[0], vandq_s8(vaddq_s64(v180.val[0], v180.val[0]), v16)), v17), v18);
  v141 = vsraq_n_u64(vshlq_n_s64(v180.val[2], 3uLL), v180.val[2], 0x3DuLL);
  v180.val[2] = veorq_s8(v180.val[0], vsraq_n_u64(vshlq_n_s64(v180.val[3], 3uLL), v180.val[3], 0x3DuLL));
  v180.val[3] = veorq_s8(v180.val[1], v141);
  v142 = vsraq_n_u64(vshlq_n_s64(v180.val[0], 0x38uLL), v180.val[0], 8uLL);
  v143 = vaddq_s64(v131, v36);
  v180.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180.val[1], 0x38uLL), v180.val[1], 8uLL), v180.val[3]);
  v180.val[1] = vaddq_s64(v142, v180.val[2]);
  v180.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v180.val[0], v180.val[0]), v19), v180.val[0]), v20), v86), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xE80], 3uLL), v21)));
  v180.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v180.val[1], v180.val[1]), v19), v180.val[1]), v20), v86), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xE70], 3uLL), v21)));
  v144 = veorq_s8(v143, v37);
  v145 = veorq_s8(v143, v22);
  v146 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v145);
  v147 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v146, v13), vorrq_s8(v146, v14)), v14), v44);
  v148 = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v149 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL), v148), v15);
  v150 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v151 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL), v150);
  v152 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v151, v57), vorrq_s8(v151, v58)), v58), v61);
  v153 = veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v154 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), v153), *&STACK[0xEB0]);
  v155 = veorq_s8(v154, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v156 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v155), *&STACK[0xEA0]);
  v157 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v158 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v157);
  v159 = veorq_s8(vaddq_s64(vsubq_s64(v158, vandq_s8(vaddq_s64(v158, v158), v16)), v17), v18);
  v160 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL)));
  v161 = vaddq_s64(v132, v36);
  v180.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v160, v160), v19), v160), v20), v86), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xE40], 3uLL), v21)));
  v162 = veorq_s8(v161, v37);
  v163 = veorq_s8(v161, v22);
  v164 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163);
  v165 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v164, v13), vorrq_s8(v164, v14)), v14), v44);
  v166 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v167 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166), v15);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168);
  v170 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v169, v57), vorrq_s8(v169, v58)), v58), v61);
  v171 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v172 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171), *&STACK[0xEB0]);
  v173 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v174 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v173), *&STACK[0xEA0]);
  v175 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL));
  v176 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v175);
  v177 = veorq_s8(vaddq_s64(vsubq_s64(v176, vandq_s8(vaddq_s64(v176, v176), v16)), v17), v18);
  v178 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL)));
  v180.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v178, v178), v19), v178), v20), v86), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xE60], 3uLL), v21)));
  v100.i64[1] = vqtbl4q_s8(v180, *&STACK[0xE30]).u64[0];
  v180.val[0] = vrev64q_s8(*&STACK[0xE90]);
  v180.val[1].i64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v180.val[1].i64[1] = 0x5F5F5F5F5F5F5F5FLL;
  v180.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v180.val[0], v180.val[0], 8uLL), v180.val[1]), v100));
  *(a5 + a7) = vextq_s8(v180.val[0], v180.val[0], 8uLL);
  return (*(v8 + 8 * (((v9 == a7) * v12) ^ a8)))();
}

uint64_t sub_1002ADDEC()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 21466 + 301 * (v0 ^ 0x415))))();
}

uint64_t sub_1002AE010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v21 = v6 - 1;
  v22 = (__ROR8__((a3 + v21) & 0xFFFFFFFFFFFFFFF8, 8) + v13) & ((v8 | 0x1018420Cu) ^ 0xF9FFFFFFA4E7BD62);
  v23 = v22 ^ 0x12219E3FC273472;
  v24 = v22 ^ v10;
  v25 = (__ROR8__(v23, 8) + v24) ^ v15;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = ((v5 & (2 * (v27 + v26))) - (v27 + v26) + a5) ^ v19;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ a4;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = __ROR8__((a2 + v21) & 0xFFFFFFFFFFFFFFF8, 8);
  v34 = ((v11 & (2 * (v32 + v31))) - (v32 + v31) + a1) ^ v18;
  v35 = v34 ^ __ROR8__(v31, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (v9 - v33) & 0x185F139E2B33A58DLL | (v33 + v13) & 0xE5A0EC61D4CC5A72;
  v38 = __ROR8__(v37 ^ 0x1D7D0A7DD71491FFLL, 8);
  v37 ^= 0xA9F65DB150283DF1;
  v39 = ((v20 | (2 * (v36 + v35))) - (v36 + v35) + v12) ^ 0x1948316F80CDDDA0;
  v40 = v39 ^ __ROR8__(v35, 61);
  v41 = (v38 + v37 - ((2 * (v38 + v37)) & 0xEFCF42790778521ALL) + 0x77E7A13C83BC290DLL) ^ v17;
  v42 = v41 ^ __ROR8__(v37, 61);
  v43 = (__ROR8__(v39, 8) + v40) ^ v16;
  v44 = (__ROR8__(v41, 8) + v42) ^ 0x2C378843F9A46E98;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ 0xBD7D2DE9C10AA16ALL;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = __ROR8__(v43, 8) + (v43 ^ __ROR8__(v40, 61));
  v49 = __ROR8__(v46, 8);
  v50 = (((2 * (v49 + v47)) & 0xBA0879D57248E560) - (v49 + v47) + 0x22FBC31546DB8D4FLL) ^ 0xA04B4302F9984D26;
  v51 = v50 ^ __ROR8__(v47, 61);
  v52 = __ROR8__(v50, 8);
  v53 = (((2 * (v52 + v51)) | 0x8D7A00719C5C6184) - (v52 + v51) - 0x46BD0038CE2E30C2) ^ 0xEC20DA822CCAE4BELL;
  v54 = v53 ^ __ROR8__(v51, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ v16;
  *(a2 + v21) = (((((2 * v48) | 0xCC3717CE5664B278) - v48 + 0x19E47418D4CDA6C4) ^ 0x7D07FFC04E2C5624) >> (8 * ((a3 + v21) & 7))) ^ (((__ROR8__(v55, 8) + (v55 ^ __ROR8__(v54, 61))) ^ 0x9B1C7427651E0F18) >> (8 * ((a2 + v21) & 7))) ^ *(a3 + v21);
  return (*(STACK[0xF18] + 8 * (((v21 == 0) * v14) ^ v7)))();
}

uint64_t sub_1002AE31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v17 - 112) = &a13;
  *(v17 - 120) = (v16 + 42906) ^ (155453101 * ((((v17 - 128) | 0xE3876361) - ((v17 - 128) | 0x1C789C9E) + 477666462) ^ 0x5A178AE));
  *(v17 - 128) = v15;
  (*(v14 + 8 * (v16 + 44265)))(v17 - 128);
  *(v17 - 128) = v16 - 1603510583 * (((((v17 - 128) | 0xFE0446BA) ^ 0xFFFFFFFE) - (~(v17 - 128) | 0x1FBB945)) ^ 0x96208BEE) + 18160;
  *(v17 - 104) = v15;
  *(v17 - 120) = v13;
  v18 = (*(v14 + 8 * (v16 ^ 0xD752)))(v17 - 128);
  return (*(v14 + 8 * (((*(v17 - 112) > 0x3AF7D7A3u) * (((v16 - 7136) | 0x6C00) - 28150)) | v16)))(v18);
}

uint64_t sub_1002AE43C(uint64_t a1, uint64_t a2)
{
  v4 = STACK[0xF10];
  LOWORD(STACK[0x9904]) = v2;
  return (*(STACK[0xF18] + 8 * (v4 - 27350)))(a1, a2, v3);
}

uint64_t sub_1002AE604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = v9 - 1;
  v22 = a3 + v21 + v7;
  v23 = __ROR8__((a6 + v21) & 0xFFFFFFFFFFFFFFF8, 8);
  v24 = ((a5 - v23) & a7) + v23 - 0x296E95066F186A7FLL - ((v23 - 0x296E95066F186A7FLL) & v11);
  v25 = __ROR8__(v24 ^ v19, 8);
  v24 ^= 0xC14413EE03AAF609;
  v26 = (v25 + v24) ^ a2;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ v18;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0xBD7D2DE9C10AA16ALL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (((v32 + v31) | v10) - ((v32 + v31) | 0xB44D30EF9FC50FFDLL) - 0x4BB2CF10603AF003) ^ 0xC9024F07DF79306BLL;
  v34 = __ROR8__(v33, 8);
  v35 = v33 ^ __ROR8__(v31, 61);
  v36 = (((2 * ((v34 + v35) ^ 0x3BC4FBA94204947DLL)) | 0x444C3EF7816B06F8) - ((v34 + v35) ^ 0x3BC4FBA94204947DLL) - 0x22261F7BC0B5837CLL) ^ 0xB37F3E686055C37DLL;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8) + v37;
  v39 = __ROR8__(v22 & 0xFFFFFFFFFFFFFFF8, 8);
  v40 = v39 - ((2 * v39 - 0x5CDAF98343AD3988) & v17) - 0x34F0E2B01860A2AALL;
  v41 = __ROR8__(v40 ^ 0x67FD13F296EE9EB2, 8);
  v42 = v40 ^ 0xEB690A0067A58754;
  v43 = (v41 + (v40 ^ 0xEB690A0067A58754) - ((2 * (v41 + (v40 ^ 0xEB690A0067A58754))) & 0x8D4F80F477B96692) - 0x39583F85C4234CB7) ^ v16;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = ((v38 | 0x297AF72712700E83) - (v38 | 0xD68508D8ED8FF17CLL) - 0x297AF72712700E84) ^ v13;
  v46 = (__ROR8__(v43, 8) + v44) ^ v15;
  v47 = v46 ^ __ROR8__(v44, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ 0x19BBA1D59C2A28CLL;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ 0xA958557FD3FC79DDLL;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = __ROR8__(v50, 8);
  v53 = __ROR8__(v45, 8) + (v45 ^ __ROR8__(v37, 61));
  v54 = ((v20 & (2 * (v52 + v51))) - (v52 + v51) + v14) ^ v12;
  v55 = v54 ^ __ROR8__(v51, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ 0x1B5DE9094BAFA51ALL;
  *v22 = ((v53 ^ 0x9B1C7427651E0F18) >> (8 * ((a6 + v21) & 7))) ^ (((__ROR8__(v56, 8) + (v56 ^ __ROR8__(v55, 61))) ^ 0xC437C7327FD12F34) >> (8 * (v22 & 7u))) ^ *(a6 + v21);
  return (*(STACK[0xF18] + 8 * ((27955 * (v21 == 0)) ^ v8)))();
}

uint64_t sub_1002AE988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v37 = 812 * (a1 ^ 0x2686);
  v38 = ((HIDWORD(a12) + 115890247) ^ 0xE4DBC224) & (2 * ((a1 - 258232824) & (HIDWORD(a12) + 115890247))) ^ (a1 - 258232824) & (HIDWORD(a12) + 115890247);
  v39 = ((((HIDWORD(a12) + 115890247) ^ 0xA5DCEB6C) << (44 * (a1 ^ 0x86) - 99)) ^ 0xAA8E7FB2) & ((HIDWORD(a12) + 115890247) ^ 0xA5DCEB6C) ^ (((HIDWORD(a12) + 115890247) ^ 0xA5DCEB6C) << (44 * (a1 ^ 0x86) - 99)) & 0x55473FD8;
  v40 = v39 ^ 0x55410049;
  v41 = (v39 ^ 0x11063790) & (4 * v38) ^ v38;
  v42 = ((4 * v40) ^ 0x551CFF64) & v40 ^ (4 * v40) & 0x55473FD8;
  v43 = (v42 ^ 0x55043F40) & (16 * v41) ^ v41;
  v44 = ((16 * (v42 ^ 0x430099)) ^ 0x5473FD90) & (v42 ^ 0x430099) ^ (16 * (v42 ^ 0x430099)) & 0x55473FD0;
  v45 = v43 ^ 0x55473FD9 ^ (v44 ^ 0x54433D00) & (v43 << 8);
  v46 = (HIDWORD(a12) + 115890247) ^ (2 * ((v45 << 16) & 0x55470000 ^ v45 ^ ((v45 << 16) ^ 0x3FD90000) & (((v44 ^ 0x1040249) << 8) & 0x55470000 ^ 0x10400000 ^ (((v44 ^ 0x1040249) << 8) ^ 0x473F0000) & (v44 ^ 0x1040249))));
  v48 = v46 == 1888987911 || ((((v37 + 126) ^ 0x14F) - 35230) & v46) != 7;
  return (*(v36 + 8 * ((23 * v48) ^ v37)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
}

uint64_t sub_1002AEB40()
{
  v1 = STACK[0xF18];
  STACK[0x98C0] = *(STACK[0xF18] + 8 * (v0 - 40007));
  return (*(v1 + 8 * ((v0 - 40007) ^ 0x23E4)))();
}

uint64_t sub_1002AECB0()
{
  v2 = v0 - 34060;
  v3 = v0 - 3426;
  v4 = *(v1 + 212);
  v5 = STACK[0x4930];
  STACK[0x10ED8] = STACK[0x86C8];
  LODWORD(STACK[0x10EE4]) = v0 - 34060 - 906386353 * ((&STACK[0x10000] + 3800) ^ 0x3101CD24) + 10943;
  STACK[0x10EE8] = v5;
  STACK[0x10EF0] = v4;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * ((v0 - 34060) ^ 0xD8FA)))(&STACK[0x10ED8]);
  v8 = STACK[0x10EE0];
  LODWORD(STACK[0x6DE4]) = STACK[0x10EE0];
  return (*(v6 + 8 * (((v8 == (v2 ^ 0xE9D5D480)) * (v3 ^ 0xA5E0)) ^ v2)))(v7);
}

uint64_t sub_1002AEE7C()
{
  v0 = STACK[0xF10] - 25066;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] + 16238)))();
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1002AEFBC()
{
  STACK[0x23D8] = STACK[0x7D68] + 8;
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 + 1272900484) & 0xB42177FE ^ 0x748E) + v0)))();
}

uint64_t sub_1002AF014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v50 = v47 + ((v48 - 1174698323) & 0x4604BED7) + 1403314035;
  if (v50 <= 0x40)
  {
    v50 = 64;
  }

  return (*(v49 + 8 * (((2 * (v50 - v47 - 1403358663 < 0x1F)) | (16 * (v50 - v47 - 1403358663 < 0x1F))) ^ v48)))(&STACK[0x340], 30324, 4294928454, 2962412184, 4294940450, 973, a47, 0);
}

uint64_t sub_1002AF0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v12 = *(v10 + v5);
  *(v8 + v5) = v12;
  return (*(STACK[0xF18] + 8 * (((v12 != 0) * ((((v6 + a5) | v11) + v7) ^ v9)) ^ v6)))();
}

uint64_t sub_1002AF178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a3 + v7;
  v10 = a3 + v8;
  v11 = a3 - 1520339862 + ((v3 + 176526510) | 0x50188005u);
  *(v4 + v11) = *(v5 + v11) ^ *(v6 + v11) ^ *(v9 + 1) ^ *(v10 + 6) ^ (99 * v11) ^ 0x5F;
  return (*(STACK[0xF18] + 8 * ((55927 * (v11 == 0)) ^ v3)))();
}

uint64_t sub_1002AF30C@<X0>(int a1@<W8>)
{
  v1 = STACK[0x26D0];
  v2 = STACK[0x5268];
  v2[10] = *(STACK[0x26D0] + 112);
  v2[11] = v1[13];
  v2[12] = v1[12];
  return (*(STACK[0xF18] + 8 * (((v1[21] == 0) * ((327 * (a1 ^ 0x9D41) + 23) ^ (a1 - 4593))) ^ a1)))();
}

uint64_t sub_1002AF3E0(uint64_t a1, uint64_t a2)
{
  v2 = STACK[0xF10];
  v3 = *(STACK[0xA7F0] + 24);
  STACK[0x99A0] = STACK[0xA7F0] + 24;
  return (*(STACK[0xF18] + 8 * (v2 - 23714)))(a1, a2, v3 ^ 0xA365B90B);
}

uint64_t sub_1002AF444()
{
  v2 = v1 + 457175552 + (((LODWORD(STACK[0x1134]) ^ 0xA846FE1C ^ (v0 - 2145045420) & 0x7FDA9B3F) + 1471777497) ^ ((LODWORD(STACK[0x1134]) ^ 0x4335DD8D) - 1127603597) ^ (((1784 * (v0 ^ 0xBBB4) + 44428115) ^ LODWORD(STACK[0x1134])) - 44462011));
  v3 = (((LODWORD(STACK[0xA3CC]) ^ 0x99572B23) + 1722340573) ^ ((LODWORD(STACK[0xA3CC]) ^ 0x954C22EC) + 1790172436) ^ ((LODWORD(STACK[0xA3CC]) ^ 0xE5CECEDE) + 439431458)) + 1502372102;
  v4 = v2 < 0x6FB699F5;
  v5 = v2 > v3;
  if (v3 < 0x6FB699F5 != v4)
  {
    v5 = v4;
  }

  return (*(STACK[0xF18] + 8 * ((25 * !v5) ^ v0)))();
}

uint64_t sub_1002AF58C@<X0>(uint64_t a1@<X8>)
{
  STACK[0x7690] = (((v1 | 0x2290u) + 22635) ^ 0xFFFFFFFFFFFF757BLL) + a1;
  STACK[0x30C0] = 0;
  return (*(STACK[0xF18] + 8 * (v1 | 0x2290)))();
}

uint64_t sub_1002AF60C()
{
  v1 = STACK[0x10D8];
  LODWORD(STACK[0x10ED8]) = v0 + 193924789 * (((((&STACK[0x10000] + 3800) ^ 0xA2890140 | 0x58465AB2) ^ 0xFFFFFFFE) - ((&STACK[0x10000] + 3800) ^ 0x18004AB0 | 0xA7B9A54D)) ^ 0xF3CD8669) - 951637436;
  STACK[0x10EE0] = v1;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0x38B82829)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * (v0 ^ ((v0 - 951635635) | 0x101) ^ 0x38B8891B ^ (33642 * (v0 > 0xBDAEC594)))))(v3);
}

uint64_t sub_1002AF6F8()
{
  LODWORD(STACK[0x10ED8]) = (v0 + 32613) ^ (1603510583 * ((~&STACK[0x10ED8] & 0x1489D76B | &STACK[0x10ED8] & 0xEB762890) ^ 0x8352E5C0));
  v1 = STACK[0xF18];
  v2 = v0;
  (*(STACK[0xF18] + 8 * (v0 ^ 0xCAF7)))(&STACK[0x10ED8]);
  v3 = ((LODWORD(STACK[0x10EDC]) ^ 0x8ADB5901) + 1965336319) ^ ((LODWORD(STACK[0x10EDC]) ^ 0xF11CD8DC) + 249767716) ^ ((LODWORD(STACK[0x10EDC]) ^ (v2 - 1844296410)) + 1844295988);
  v4 = 17902189 * ((~&STACK[0x10ED8] & 0xC03A7CDA | &STACK[0x10ED8] & 0x3FC58320) ^ 0x4E756ACA);
  LODWORD(STACK[0x10ED8]) = v2 - v4 + 14615;
  LODWORD(STACK[0x10EE0]) = v3 - v4 - 271025034;
  v5 = (*(v1 + 8 * (v2 | 0xCA08)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (v2 + 5968)))(v5);
}

uint64_t sub_1002AFAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, char a60, uint64_t a61, char a62)
{
  v67 = 634647737 * ((~v64 & 0x30CE10C6 | v64 & 0xCF31EF38) ^ 0x5D583F3A);
  *(v66 - 144) = v67 + 1740518810;
  *(v66 - 152) = v65;
  *(v66 - 160) = v67 + v63 - 16639;
  (*(v62 + 8 * (v63 ^ 0xB468)))(v66 - 160);
  v68 = 139493411 * ((2 * (v64 & 0x7554EC58) - v64 + 178983842) ^ 0x686F2E7);
  *(v66 - 160) = &a58;
  *(v66 - 136) = &STACK[0x2EC];
  *(v66 - 148) = v63 - v68 + 6200;
  *(v66 - 144) = v68 + 404414935;
  (*(v62 + 8 * (v63 ^ 0xB5DB)))(v66 - 160);
  *(v66 - 160) = &a58;
  *(v66 - 136) = &a48;
  *(v66 - 128) = &a58;
  *(v66 - 144) = &a62;
  *(v66 - 152) = v63 + 139493411 * ((~v64 & 0x2A7EE993 | v64 & 0xD5811668) ^ 0x265308D6) - 1598;
  (*(v62 + 8 * (v63 + 19474)))(v66 - 160);
  v69 = a49;
  *(v66 - 136) = &a58;
  *(v66 - 128) = v69;
  *(v66 - 120) = (v63 - 7327) ^ (17902189 * ((((v64 | 0xD79E8900) ^ 0xFFFFFFFE) - (~v64 | 0x286176FF)) ^ 0xA62E60EF));
  *(v66 - 160) = &a62;
  *(v66 - 152) = &a58;
  *(v66 - 144) = &a48;
  (*(v62 + 8 * (v63 + 19520)))(v66 - 160);
  *(v66 - 160) = (v63 + 2147451084) ^ (193924789 * (v64 ^ 0xB6BB3266));
  *(v66 - 152) = &a48;
  *(v66 - 144) = &a42;
  *(v66 - 128) = &a53;
  *(v66 - 120) = &a58;
  *(v66 - 136) = &a62;
  (*(v62 + 8 * (v63 + 19873)))(v66 - 160);
  *(v66 - 144) = &a48;
  *(v66 - 136) = &a60;
  *(v66 - 160) = &a62;
  *(v66 - 152) = &a42;
  *(v66 - 120) = (v63 - 7327) ^ (17902189 * (((v64 | 0x587BE0DC) - (v64 & 0x587BE0D8)) ^ 0xD634F6CC));
  *(v66 - 128) = &a60;
  (*(v62 + 8 * (v63 + 19520)))(v66 - 160);
  v70 = a49;
  *(v66 - 136) = &a60;
  *(v66 - 128) = v70;
  *(v66 - 160) = &a62;
  *(v66 - 152) = &a60;
  *(v66 - 120) = (v63 - 7327) ^ (17902189 * (((v64 | 0xDCE413AE) - v64 + (v64 & 0x231BEC50)) ^ 0x52AB05BE));
  *(v66 - 144) = &a48;
  v71 = (*(v62 + 8 * (v63 ^ 0xB440)))(v66 - 160);
  return (*(v62 + 8 * (((-1431655765 * (*(a28 + 29) ^ 0x5Fu) - 1431655766 > 0x55555554) * (((v63 - 30883) | 0x909) ^ 0xFE8)) ^ v63)))(v71);
}

uint64_t sub_1002AFE34@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xB5C0]) += (a1 + 674194855) & 0xD7D0FFD7 ^ 0xAC0A;
  LODWORD(STACK[0xB5BC]) = v1;
  return (*(STACK[0xF18] + 8 * (a1 ^ (64238 * (v1 == -371865839)))))();
}

uint64_t sub_1002AFE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 16) ^ 0x6FBBFE6D) - 1744962088 + ((2 * *(a4 + 16)) & 0xDF77FCDA);
  v6 = (((v5 ^ 0x52475C1F) + ((109 * (v4 ^ 0x1C44) + 2089051202) & 0x837B9ADB ^ 0xAA01D5FF)) ^ v5 ^ ((v5 ^ 0xF4FDFA0D) + 213645752) ^ ((v5 ^ 0x467DE18D) - 1103371720) ^ ((v5 ^ 0xE77EBBDA) + 523810913)) != 129629253;
  return (*(STACK[0xF18] + 8 * (((2 * v6) | (16 * v6)) ^ v4)))();
}

uint64_t sub_1002AFFCC(__n128 a1)
{
  *v1 = a1;
  v1[1] = a1;
  return (*(STACK[0xF18] + 8 * (((v3 != 0) * v4) ^ v2)))();
}

uint64_t sub_1002B0048()
{
  v2 = STACK[0xF10] ^ 0xAFA9;
  v3 = STACK[0xF10] + 9787;
  *(STACK[0x1A98] + 664) = v0;
  v4 = LODWORD(STACK[0xA92C]) + 4;
  LODWORD(STACK[0x9AC8]) = v4;
  v5 = (((v1 ^ 0x768F0F91) + 1476467295) ^ ((v1 ^ 0x4943739F) + 1741514321) ^ ((v1 ^ 0x768512F) + v2 + 702947407)) + v4 - 1627997869;
  v6 = (((LODWORD(STACK[0x3834]) ^ 0xE9E22F14) + 371052780) ^ ((LODWORD(STACK[0x3834]) ^ 0xEC6C5422) + 328444894) ^ ((LODWORD(STACK[0x3834]) ^ 0xEC5BBC27) + 329532377)) - 1627997869;
  v7 = v5 < 0xB520F242;
  v8 = v5 > v6;
  if (v7 != v6 < 0xB520F242)
  {
    v8 = v7;
  }

  return (*(STACK[0xF18] + 8 * ((249 * v8) ^ v3)))();
}

uint64_t sub_1002B0188@<X0>(int a1@<W0>, int a2@<W8>)
{
  LODWORD(STACK[0xEC0]) = (((a1 ^ 0x1C4F1A6) - 29684134) ^ ((a1 ^ 0x8B33C92E) + 1959540434) ^ ((a1 ^ 0x6322FF99) - 1663238041)) + LODWORD(STACK[0xEC0]) - 371911740 + a2 + 25251;
  v2 = (((LODWORD(STACK[0xED0]) ^ 0x166AAEF1) - 376090353) ^ ((LODWORD(STACK[0xED0]) ^ 0xD9ADC6D2) + 642922798) ^ ((LODWORD(STACK[0xED0]) ^ 0x2612AF32) - 638758706)) + 551988857;
  LODWORD(STACK[0xED0]) = v2 ^ ((v2 ^ 0xFB6484C2) + 864787547) ^ ((v2 ^ 0xBA781441) + 1922501850) ^ ((v2 ^ 0x8BF0805B) + 1126144196) ^ ((v2 ^ 0xFDFCF7BF) + 890498856) ^ 0xDEC52076;
  return (*(STACK[0xF18] + 8 * a2))();
}

uint64_t sub_1002B02EC()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] - 28368;
  v3 = (((v0 ^ 0x85FCF9C) - 646901114) ^ ((v0 ^ 0xEBBBE6EB) + 982858739) ^ ((v0 ^ 0x24E0CC80) - 171044454)) + 377946433;
  v4 = v3 ^ ((v3 ^ 0x66423D04) - 1257441067) ^ ((v3 ^ 0xCEBFFC59) + 502348170) ^ ((v3 ^ 0x79B3248D) - 1426202274) ^ ((v3 ^ 0xFDFFDFFF) + 783358512) ^ 0x793AB169;
  v5 = 0x1B4E81B4E81B4E9 * (((v4 ^ 0x3E930A8684ADB53ELL) - 0x3E930A8684ADB53ELL) ^ ((v4 ^ 0xDC38189790B34FB5) + 0x23C7E7686F4CB04BLL) ^ ((v4 ^ 0xE2AB1211419571CDLL) + 0x1D54EDEEBE6A8E33)) - 0x3AAABCE9DB4E3006;
  v6 = (v5 ^ 0xA5CDBD84573B283CLL) & (2 * (v5 & 0x40DB98057832ABCLL)) ^ v5 & 0x40DB98057832ABCLL;
  v7 = ((2 * (v5 ^ 0xA5D49C84D33D7964)) ^ 0x43B24A09097CA7B0) & (v5 ^ 0xA5D49C84D33D7964) ^ (2 * (v5 ^ 0xA5D49C84D33D7964)) & 0xA1D9250484BE53D8;
  v8 = v7 ^ 0xA049250484825048;
  v9 = (v7 ^ 0x100000001C0390) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0x8764941212F94F60) & v8 ^ (4 * v8) & 0xA1D9250484BE53D8;
  v11 = (v10 ^ 0x8140040000B84340) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x2099210484061098)) ^ 0x1D9250484BE53D80) & (v10 ^ 0x2099210484061098) ^ (16 * (v10 ^ 0x2099210484061098)) & 0xA1D9250484BE53C0;
  v13 = (v12 ^ 0x190000000A41100) & (v11 << 8) ^ v11;
  v14 = (((v12 ^ 0xA0492504841A4258) << 8) ^ 0xD9250484BE53D800) & (v12 ^ 0xA0492504841A4258) ^ ((v12 ^ 0xA0492504841A4258) << 8) & 0xA1D9250484BE5000;
  v15 = v13 ^ 0xA1D9250484BE53D8 ^ (v14 ^ 0x8101040484120000) & (v13 << 16);
  v16 = v5 ^ (2 * ((v15 << 32) & 0x21D9250400000000 ^ v15 ^ ((v15 << 32) ^ 0x4BE53D800000000) & (((v14 ^ 0x20D8210000AC03D8) << 16) & 0x21D9250400000000 ^ 0xD9210000000000 ^ (((v14 ^ 0x20D8210000AC03D8) << 16) ^ 0x250484BE00000000) & (v14 ^ 0x20D8210000AC03D8))));
  v17 = ((v16 ^ 0x670A41C98B40C021) - 0x1D41A4C95F733E36) ^ ((v16 ^ 0x398621947F23BE79) - 0x43CDC494AB10406ELL);
  LODWORD(v16) = __CFADD__(150 * (v17 ^ ((v16 ^ 0x180391D4AA9CF354) - 0x624874D47EAF0D43)), 0x9AE4089753CB71D2) + (((v17 ^ ((v16 ^ 0x180391D4AA9CF354uLL) - 0x624874D47EAF0D43)) * 0x96uLL) >> 64) + 150 * ((__CFADD__(v16 ^ 0x670A41C98B40C021, 0xE2BE5B36A08CC1CALL) - 1) ^ (__CFADD__(v16 ^ 0x398621947F23BE79, 0xBC323B6B54EFBF92) - 1) ^ (__CFADD__(v16 ^ 0x180391D4AA9CF354, 0x9DB78B2B8150F2BDLL) - 1)) + 1111272900;
  LODWORD(v14) = (v16 ^ 0xB98B121F) & (2 * (v16 & 0xBDC3525F)) ^ v16 & 0xBDC3525F;
  LODWORD(v17) = ((2 * (v16 ^ 0xD88D36A9)) ^ 0xCA9CC9EC) & (v16 ^ 0xD88D36A9) ^ (2 * (v16 ^ 0xD88D36A9)) & 0x654E64F6;
  LODWORD(v8) = v17 ^ 0x25422412;
  LODWORD(v17) = (v17 ^ 0x400C40E4) & (4 * v14) ^ v14;
  LODWORD(v14) = ((4 * v8) ^ 0x953993D8) & v8 ^ (4 * v8) & 0x654E64F0;
  LODWORD(v17) = (v14 ^ 0x50800D0) & (16 * v17) ^ v17;
  LODWORD(v14) = ((16 * (v14 ^ 0x60466426)) ^ 0x54E64F60) & (v14 ^ 0x60466426) ^ (16 * (v14 ^ 0x60466426)) & 0x654E64E0;
  LODWORD(v17) = v17 ^ 0x654E64F6 ^ (v14 ^ 0x44464400) & (v17 << 8);
  LODWORD(v16) = v16 ^ (2 * ((v17 << 16) & 0x654E0000 ^ v17 ^ ((v17 << 16) ^ 0x64F60000) & (((v14 ^ 0x21082096) << 8) & 0x654E0000 ^ 0x210A0000 ^ (((v14 ^ 0x21082096) << 8) ^ 0x4E640000) & (v14 ^ 0x21082096))));
  LODWORD(STACK[0x6CA8]) = v16 ^ 0x56065CA2;
  LODWORD(v17) = ((v16 ^ 0x44F47755) - 317860855) ^ ((v16 ^ 0x2EBE1408) - 2025343146) ^ ((v16 ^ 0xD599F8EE) + 2086689716);
  LODWORD(v16) = (((v16 ^ ((v16 ^ 0xD) + 1) ^ ((v16 ^ 0xC) + 2)) ^ 2) + 13) & 0xF;
  LODWORD(v16) = v17 - (((v16 ^ 0xA6CA0927) + 1982029094) ^ (v16 - 286365693) ^ ((v16 ^ 0x69489727) - 1180581082)) + 1434441392;
  LODWORD(v16) = ((v16 ^ 0x68BBE0D0) + 226796628) ^ v16 ^ ((v16 ^ 0x3954C631) + 1550549683) ^ ((v16 ^ 0x34D07262) + 1374631650) ^ ((v16 ^ 0xFFFFEFFF) - 1698649219);
  LODWORD(STACK[0x2098]) = v16 ^ 0x73157C6D;
  v18 = STACK[0xF18];
  v19 = (*(STACK[0xF18] + 8 * (v1 + 16221)))(v16 ^ 0x9AC0BB7C);
  STACK[0x15C0] = v19;
  STACK[0x62F8] = v19;
  return (*(v18 + 8 * ((227 * (v19 != 0)) ^ v2)))();
}

uint64_t sub_1002B0C94(int a1, __n128 a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, double a18, double a19, double a20, double a21, double a22, double a23, double a24, double a25, double a26, double a27, double a28, double a29, double a30, double a31, double a32, double a33, double a34, double a35, double a36, double a37, double a38)
{
  *(v41 - 224) = *(*(v41 - 208) + 8 * (a1 - 33457));
  *(v41 - 216) = v38 & 0x10;
  v42.n128_u64[0] = (v38 + 13) & 0xF;
  v42.n128_u64[1] = (v38 + 12) & 0xF;
  v43.n128_u64[0] = (v38 + 11) & 0xF;
  v43.n128_u64[1] = (v38 + 10) & 0xF;
  v44.n128_u64[0] = (v38 + 9) & 0xF;
  v44.n128_u64[1] = v39 & 0xF ^ 3;
  v48.val[0].i64[0] = (v38 + 7) & 0xF;
  v48.val[0].i64[1] = (v38 + 6) & 0xF;
  v48.val[1].i64[0] = (v38 + 5) & 0xF;
  v48.val[1].i64[1] = (v38 + 4) & 0xF;
  v48.val[2].i64[0] = (v38 + 3) & 0xF;
  v48.val[2].i64[1] = (v38 + 2) & 0xF;
  v48.val[3].i64[0] = (v38 + 1) & 0xF;
  v48.val[3].i64[1] = v38 & 0xF;
  v45.n128_u64[0] = 0xDFDFDFDFDFDFDFDFLL;
  v45.n128_u64[1] = 0xDFDFDFDFDFDFDFDFLL;
  v46.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v46.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  return (*(v41 - 224))((v38 + 14) & 0xF, v40 - 15, (v38 & 0x10) - 16, v38 & 0x10 ^ 0x10, (a1 - 36052) - 12817, 48329, a2, v42, v43, v44, xmmword_100BC76B0, vqtbl4q_s8(v48, xmmword_100BC76B0), v45, v46, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, *&v48.val[3].i64[1]);
}

uint64_t sub_1002B0E58()
{
  v1 = *(STACK[0x26D0] + 8);
  STACK[0x3648] = STACK[0x26D0] + 8;
  STACK[0x10EE0] = v1;
  LODWORD(STACK[0x10ED8]) = (v0 - 1137073330) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0x162EA849) - ((&STACK[0x10000] + 3800) & 0x162EA848)) ^ 0x272F656D));
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0xDAB61EF8)))(&STACK[0x10ED8]);
  STACK[0x4788] = STACK[0x5268];
  STACK[0x2830] = STACK[0x86B8];
  LODWORD(STACK[0x6384]) = 1450771966;
  return (*(v2 + 8 * (v0 ^ 0xDAB65A94 ^ (5865 * (v0 < 0xF06BED40)))))(v3);
}

uint64_t sub_1002B0F68()
{
  v0 = STACK[0xF10];
  v1 = 191 * (STACK[0xF10] ^ 0x8B0E);
  v2 = (STACK[0xF10] - 35366) | 0x1400;
  v3 = STACK[0xF10] - 6284;
  STACK[0x10ED8] = *STACK[0x91E8];
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * (&STACK[0x10ED8] ^ 0xE6261BCF) + 296753103;
  v4 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 + 16271)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x10ED8]) = (v0 - 1762661292) ^ (906386353 * ((2 * (&STACK[0x10ED8] & 0x3277FC8) - &STACK[0x10ED8] - 52920267) ^ 0xCDD94D11));
  STACK[0x10EE0] = 0;
  v5 = (*(v4 + 8 * (v0 ^ 0x4182)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * (((*STACK[0x970] > (v1 ^ 0x278B)) * (v2 - 4974)) ^ v3)))(v5);
}

uint64_t sub_1002B10EC(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  HIDWORD(v17) = *(v11 + 4 * v5) + (*(a3 + *(v11 + 4 * v5)) + ((a2 + v6) ^ 0x40));
  LODWORD(v17) = HIDWORD(v17);
  v16 = v17 >> 21;
  HIDWORD(v17) = v16 ^ (*(v12 + (v17 >> 21)) - 61);
  LODWORD(v17) = v16;
  HIDWORD(v17) = (v17 >> 22) - (*(a5 + (v17 >> 22)) - 67);
  LODWORD(v17) = HIDWORD(v17);
  *(v15 + 4 * v5) = ((((v17 >> 25) ^ v13) + v14) ^ (((v17 >> 25) ^ v7) + v8) ^ (((v17 >> 25) ^ v9) + v10)) + a1;
  return (*(STACK[0xF18] + 8 * (a2 ^ (2 * (v5 == 15)))))();
}

uint64_t sub_1002B1278@<X0>(unsigned int a1@<W8>)
{
  v3 = ((2 * *(STACK[0x2730] + a1)) & 0xBF) + (*(STACK[0x2730] + a1) ^ 0xDF);
  v4 = v3 ^ 0x80;
  *(v1 + 72) = v3 ^ 0x80;
  STACK[0xAB28] = v1 + 72;
  v5 = ((v3 ^ 0x80) & ((v2 + 118) ^ 0x9A) | (v2 - 102) ^ 0x15) ^ (v3 ^ 0x80) & 0x94;
  v3 ^= 0xA0u;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v2 + 23251)))((8 * (v4 ^ (2 * (v3 & (2 * (v3 & (2 * (v3 & (2 * (v3 & (2 * (v3 & (2 * (v3 & (2 * v5) ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5)))) ^ 0x1A8);
  *STACK[0xAB00] = v7;
  return (*(v6 + 8 * ((59097 * (v7 == 0)) ^ v2)))();
}

uint64_t sub_1002B1438@<X0>(int a1@<W8>)
{
  v5 = *(STACK[0xAC00] + v3);
  *(v4 + 27) = v5;
  v6 = (a1 ^ 0x6B08) + v2;
  *v4 = v6;
  STACK[0xAC08] = v4 + 27;
  v7 = (((v1 ^ 0xE51F6599) + 450927207) ^ ((v1 ^ 0xDA05C44B) + 637156277) ^ ((a1 ^ 0x2930F224) + (v1 ^ 0xD6CF66C3))) - v6 + 399312593;
  v8 = (v5 ^ 0x39DADF73) - 199466931 + ((2 * v5) & 0xE6);
  v9 = (v8 < 0x2DF73FC0) ^ (v7 < 0x2DF73FC0);
  v10 = v7 < v8;
  if (v9)
  {
    v10 = v8 < 0x2DF73FC0;
  }

  return (*(STACK[0xF18] + 8 * ((54 * !v10) ^ a1)))();
}

uint64_t sub_1002B16F4()
{
  v1 = STACK[0xF10] - 29678;
  v2 = STACK[0xF10] - 15079;
  *(STACK[0x7980] + 144) = v0;
  v3 = LODWORD(STACK[0x6134]) + 4;
  LODWORD(STACK[0x6134]) = v3;
  v4 = v3 - 303003817 + (((v0 ^ 0xAFDB1F13) + 1344594157) ^ ((v0 ^ 0xC4D472F3) + 992709901) ^ ((v1 ^ 0x7D254242) + (v0 ^ 0x82DAAAF1)));
  v5 = v4 < 0x6AC559FA;
  v6 = v4 > LODWORD(STACK[0xB7EC]) + 1791318522;
  if (LODWORD(STACK[0xB7EC]) > 0x953AA605 != v5)
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((15 * !v6) ^ v2)))();
}

uint64_t sub_1002B18D4()
{
  v2 = 2850 * (((*(v1 + 23) ^ 0x78D4) - 30932) ^ ((*(v1 + 23) ^ 0x4A7) - 1191) ^ ((*(v1 + 23) ^ 0x7C2C) - 31788)) + 6572;
  v3 = v2 & 0x826 ^ 0x803A;
  v4 = (v2 ^ (2 * ((v2 ^ 0x7F0) & (2 * ((v2 ^ 0x7F0) & (2 * ((v2 ^ 0x7F0) & (2 * ((v2 ^ 0x7F0) & (2 * ((v2 ^ 0x7F0) & (2 * ((v2 ^ 0x7F0) & (2 * ((v2 ^ 0x7F0) & (2 * ((v2 ^ 0x7F0) & (2 * ((v2 ^ 0x7F0) & (2 * ((v2 ^ 0x7F0) & (2 * ((v2 ^ 0x7F0) & (2 * ((v2 ^ 0x7F0) & (2 * ((v2 ^ 0x7F0) & (2 * v3) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3))) ^ 0xE3BF;
  v5 = 1603510583 * (&STACK[0x10ED8] ^ 0x3FF117EC97DB32ABLL);
  LODWORD(STACK[0x10EE0]) = (v0 + 1533038468) ^ v5;
  LODWORD(STACK[0x10EF8]) = v5;
  LODWORD(STACK[0x10EF4]) = ((v0 + 1533038468) & 0x7BFEFE97) - v5;
  STACK[0x10ED8] = (((23 * (((v4 ^ 0xABD0F698) + 1412368744) ^ ((v4 ^ 0xCDA132BB) + 845073733) ^ ((v4 ^ 0x66712FBA) + 9359430)) + 1845951) >> 16) + 118) ^ v5;
  LODWORD(STACK[0x10EF0]) = (v0 + 1533034116) ^ v5;
  STACK[0x10EE8] = v5 ^ 0x7D;
  LODWORD(STACK[0x10F00]) = v0 - v5 - 1781272532;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v0 ^ 0x41BA)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * SLODWORD(STACK[0x10EFC])))(v7);
}

uint64_t sub_1002B1B1C@<X0>(unsigned int a1@<W8>)
{
  LODWORD(STACK[0xAEBC]) = v1;
  STACK[0x4A20] = 0;
  LODWORD(STACK[0x9790]) = -90188130;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1002B1B98@<X0>(unint64_t a1@<X0>, unint64_t a2@<X8>)
{
  STACK[0x7BB0] = a2;
  STACK[0x8C68] = a1;
  LODWORD(STACK[0x17D8]) = v2;
  LODWORD(STACK[0x3928]) = v3;
  v5 = STACK[0x7690];
  v6 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x2A08] = v6;
  STACK[0x4EA8] = (v6 + 48);
  STACK[0x71B8] = (v6 + 1152);
  STACK[0x4F00] = (v6 + 1168);
  STACK[0x3B48] = (v6 + 1280);
  STACK[0x6230] = (v6 + 1456);
  STACK[0x2D78] = (v6 + 1632);
  STACK[0x51D8] = (v6 + 1680);
  STACK[0x7690] = v5 + (v4 ^ 0x421DLL);
  return (*(STACK[0xF18] + 8 * v4))();
}

uint64_t sub_1002B1CB8@<X0>(int a1@<W8>)
{
  v1 = a1 + 29266;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (a1 + 32232)))(29);
  STACK[0x6EC0] = v3;
  return (*(v2 + 8 * (((v3 == 0) * ((320 * (v1 ^ 0xBF32)) ^ (v1 - 33503))) ^ v1)))();
}

uint64_t sub_1002B1D14(uint64_t a1, uint64_t a2, int a3)
{
  v6 = STACK[0xDF0];
  LODWORD(STACK[0x825C]) = v3;
  LODWORD(STACK[0x3FA8]) = STACK[0xEB0];
  LODWORD(STACK[0x659C]) = a3;
  LODWORD(STACK[0x1370]) = STACK[0xED0];
  LODWORD(STACK[0x5D04]) = v4;
  LODWORD(STACK[0x8A44]) = v5;
  return (*(STACK[0xF18] + 8 * v6))();
}

uint64_t sub_1002B2318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v12 = *(*v10 + (*a8 & 0x4BA6E21C)) ^ 0x4BA6E21ELL;
  v13 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v12 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v12;
  v14 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v13 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v13;
  v15 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v14 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v14;
  v16 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v15 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v15;
  v17 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v16 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v16;
  v18 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v17 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v17;
  v19 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v18 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v18;
  LODWORD(v19) = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v19 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v19;
  STACK[0xC370] = 0;
  STACK[0xC378] = v9;
  v20 = 16777619 * ((1269228062 * v19 + 7) ^ (1269228062 * v19)) % 7;
  v21 = *(&STACK[0xC370] | v20);
  *(&STACK[0xC370] | v20) = 0;
  LOBYTE(STACK[0xC377]) = v21;
  v22 = 16777619 * ((1269228062 * v19 + 6) ^ (1269228062 * v19)) % 6;
  v23 = *(&STACK[0xC370] | v22);
  *(&STACK[0xC370] | v22) = STACK[0xC376];
  LOBYTE(STACK[0xC376]) = v23;
  v24 = 16777619 * ((1269228062 * v19 + 5) ^ (1269228062 * v19)) % 5;
  v25 = *(&STACK[0xC370] | v24);
  *(&STACK[0xC370] | v24) = STACK[0xC375];
  LOBYTE(STACK[0xC375]) = v25;
  v26 = STACK[0xC370];
  LOBYTE(STACK[0xC370]) = STACK[0xC374];
  LOBYTE(STACK[0xC374]) = v26;
  v27 = 16777619 * ((1269228062 * v19 + 3) ^ (1269228062 * v19)) % 3;
  v28 = *(&STACK[0xC370] | v27);
  *(&STACK[0xC370] | v27) = STACK[0xC373];
  LOBYTE(STACK[0xC373]) = v28;
  v29 = STACK[0xC371];
  LOBYTE(STACK[0xC372]) = STACK[0xC370];
  LOWORD(STACK[0xC370]) = v29;
  v30 = vdup_n_s32(1269228062 * v19);
  v31.i32[0] = v30.i32[0];
  v31.i32[1] = (1269228062 * v19) | 1;
  v32 = veor_s8(vmul_s32(v31, v30), v30);
  STACK[0xC370] = vmla_s32(v32, STACK[0xC370], vdup_n_s32(0x1000193u));
  STACK[0xC378] ^= STACK[0xC370];
  STACK[0xC378] = vmul_s32(vsub_s32(STACK[0xC378], v32), vdup_n_s32(0x359C449Bu));
  v33 = STACK[0xC37A];
  LOWORD(STACK[0xC379]) = STACK[0xC378];
  LOBYTE(STACK[0xC378]) = v33;
  v34 = (&STACK[0xC378] | v27);
  LOBYTE(v29) = *v34;
  *v34 = STACK[0xC37B];
  LOBYTE(STACK[0xC37B]) = v29;
  LOBYTE(v34) = STACK[0xC378];
  LOBYTE(STACK[0xC378]) = STACK[0xC37C];
  LOBYTE(STACK[0xC37C]) = v34;
  v35 = (&STACK[0xC378] | v24);
  LOBYTE(v34) = *v35;
  *v35 = STACK[0xC37D];
  LOBYTE(STACK[0xC37D]) = v34;
  v36 = (&STACK[0xC378] | v22);
  LOBYTE(v35) = *v36;
  *v36 = STACK[0xC37E];
  LOBYTE(STACK[0xC37E]) = v35;
  v37 = (&STACK[0xC378] | v20);
  v38 = *v37;
  *v37 = STACK[0xC37F];
  LOBYTE(STACK[0xC37F]) = v38;
  v39 = STACK[0xC378];
  v40 = (1269228062 * STACK[0xC378]) ^ v19;
  for (i = 1; i != 273; ++i)
  {
    v42 = 16777619 * ((v40 + i) ^ v40) % i;
    v43 = *(v39 + 8 * v42) ^ *(v39 + 8 * i);
    *(v39 + 8 * i) = v43;
    v44 = *(v39 + 8 * v42) ^ v43;
    *(v39 + 8 * v42) = v44;
    *(v39 + 8 * i) ^= v44;
  }

  v45 = 0;
  v46 = xmmword_100BC7620;
  v47 = xmmword_100BC7630;
  v48 = xmmword_100BC7640;
  v49 = xmmword_100BC7650;
  v50.i64[0] = 0x9B009B009B009BLL;
  v50.i64[1] = 0x9B009B009B009BLL;
  v51.i64[0] = 0x1000000010;
  v51.i64[1] = 0x1000000010;
  v52 = vdupq_n_s32(v40);
  do
  {
    v53 = *(v39 + v45);
    v54 = vmovl_high_u8(v53);
    v55 = vmovl_u8(*v53.i8);
    v66.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v48, v52), vsubq_s32(v48, v52)), v52), vmull_high_u16(v55, v50));
    v66.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v47, v52), vsubq_s32(v47, v52)), v52), vmull_u16(*v54.i8, 0x9B009B009B009BLL));
    v66.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v49, v52), vsubq_s32(v49, v52)), v52), vmull_u16(*v55.i8, 0x9B009B009B009BLL));
    v66.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v46, v52), vsubq_s32(v46, v52)), v52), vmull_high_u16(v54, v50));
    *(v39 + v45) = vqtbl4q_s8(v66, xmmword_100BC7660);
    v45 += 16;
    v49 = vaddq_s32(v49, v51);
    v48 = vaddq_s32(v48, v51);
    v47 = vaddq_s32(v47, v51);
    v46 = vaddq_s32(v46, v51);
  }

  while (v45 != 2176);
  v56 = 0;
  v57 = xmmword_100F52AB0;
  v58 = xmmword_100F52AC0;
  v59 = vdupq_n_s32(v40);
  v60 = v39 + 2176;
  v61.i64[0] = 0x9B009B009B009BLL;
  v61.i64[1] = 0x9B009B009B009BLL;
  v62.i64[0] = 0x800000008;
  v62.i64[1] = 0x800000008;
  do
  {
    v63 = vmovl_u8(*(v60 + v56));
    v65.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v57, v59), vsubq_s32(v57, v59)), v59), vmull_high_u16(v63, v61));
    v65.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v58, v59), vsubq_s32(v58, v59)), v59), vmull_u16(*v63.i8, 0x9B009B009B009BLL));
    *(v60 + v56) = vqtbl2q_s8(v65, xmmword_100F52AD0).u64[0];
    v58 = vaddq_s32(v58, v62);
    v57 = vaddq_s32(v57, v62);
    v56 += 8;
  }

  while (v56 != 8);
  *v8 = STACK[0xC378];
  return (*(STACK[0xF18] + 8 * (v11 - 24815)))(v57, v58);
}

uint64_t sub_1002B27E8@<X0>(unint64_t a1@<X8>)
{
  v5 = *(v4 + 120);
  v6 = 587190391 * *(v4 + 100) + 756466424;
  v7 = 1603510583 * ((2 * ((&STACK[0x10000] + 3800) & 0x601A4210) - (&STACK[0x10000] + 3800) - 1612333590) ^ 0x83E8F41);
  STACK[0x10EE0] = v1;
  STACK[0x10EF8] = v4 + 104;
  STACK[0x10F00] = v1;
  LODWORD(STACK[0x10EF0]) = (v3 - 9178) ^ v7;
  LODWORD(STACK[0x10EE8]) = v7 + (v5 ^ 0x72CE79F6) + ((2 * v5) & 0xE59CF3EC) - 1073748192;
  LODWORD(STACK[0x10EEC]) = v7 ^ 0x371D40F8;
  LODWORD(STACK[0x10F08]) = ((((v3 - 666856647) & 0x27BEFF57) + 1373678949) ^ v2) - v7;
  STACK[0x10F10] = a1;
  LODWORD(STACK[0x10EF4]) = v6 ^ v7;
  v8 = STACK[0xF18];
  v9 = (*(STACK[0xF18] + 8 * (v3 ^ 0x5771)))(&STACK[0x10ED8]);
  return (*(v8 + 8 * v3))(v9);
}

uint64_t sub_1002B2914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, int a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, char a34)
{
  HIDWORD(a9) = v36;
  v188 = v35;
  v37 = (&a25 ^ 0x7DCFF27FD57FF65FLL) - 0x7080807540441252 + ((2 * &a25) & 0xFB9FE4FFAAFFECB0);
  v38 = vdupq_n_s64(v37);
  v39 = vaddq_s64(v38, xmmword_100F52380);
  v40 = vaddq_s64(v38, xmmword_100F52390);
  v41 = vaddq_s64(v38, xmmword_100F52360);
  v42 = vaddq_s64(v38, xmmword_100F52370);
  v43 = vaddq_s64(v38, xmmword_100F52340);
  v44 = vaddq_s64(v38, xmmword_100F52350);
  v45 = vdupq_n_s64(0xCC9642D94BE69C61);
  v46 = veorq_s8(v44, v45);
  v47 = veorq_s8(v43, v45);
  v48 = veorq_s8(v42, v45);
  v49 = veorq_s8(v41, v45);
  v50 = veorq_s8(v40, v45);
  v51 = veorq_s8(v39, v45);
  v52 = vdupq_n_s64(0xF2B08DF56AC41BF3);
  v53 = vandq_s8(v44, v52);
  v54 = vandq_s8(v43, v52);
  v55 = vandq_s8(v42, v52);
  v56 = vandq_s8(v41, v52);
  v57 = vandq_s8(v40, v52);
  v58 = vandq_s8(v39, v52);
  v59 = vdupq_n_s64(0xE8B649F14AE69BE3);
  v60 = veorq_s8(vandq_s8(vaddq_s64(v58, v58), veorq_s8(v39, v59)), v58);
  v61 = veorq_s8(vandq_s8(vaddq_s64(v57, v57), veorq_s8(v40, v59)), v57);
  v62 = veorq_s8(vandq_s8(vaddq_s64(v56, v56), veorq_s8(v41, v59)), v56);
  v63 = veorq_s8(vandq_s8(vaddq_s64(v55, v55), veorq_s8(v42, v59)), v55);
  v64 = veorq_s8(vandq_s8(vaddq_s64(v54, v54), veorq_s8(v43, v59)), v54);
  v65 = veorq_s8(vandq_s8(vaddq_s64(v53, v53), veorq_s8(v44, v59)), v53);
  v66 = vaddq_s64(v51, v51);
  v67 = vaddq_s64(v50, v50);
  v68 = vaddq_s64(v49, v49);
  v69 = vaddq_s64(v48, v48);
  v70 = vaddq_s64(v47, v47);
  v71 = vaddq_s64(v46, v46);
  v72 = vdupq_n_s64(0x7C4D9E5842450F24uLL);
  v73 = vandq_s8(veorq_s8(v69, v72), v48);
  v74 = vandq_s8(veorq_s8(v71, v72), v46);
  v75 = vdupq_n_s64(0x3E26CF2C21228792uLL);
  v76 = veorq_s8(v74, vandq_s8(v71, v75));
  v77 = veorq_s8(vandq_s8(veorq_s8(v70, v72), v47), vandq_s8(v70, v75));
  v78 = veorq_s8(v73, vandq_s8(v69, v75));
  v79 = veorq_s8(vandq_s8(veorq_s8(v68, v72), v49), vandq_s8(v68, v75));
  v80 = veorq_s8(vandq_s8(veorq_s8(v67, v72), v50), vandq_s8(v67, v75));
  v81 = veorq_s8(vandq_s8(veorq_s8(v66, v72), v51), vandq_s8(v66, v75));
  v82 = vdupq_n_s64(0x222412421228092uLL);
  v83 = veorq_s8(v81, v82);
  v84 = veorq_s8(v80, v82);
  v85 = veorq_s8(v79, v82);
  v86 = veorq_s8(v78, v82);
  v87 = veorq_s8(v77, v82);
  v88 = veorq_s8(vandq_s8(vshlq_n_s64(v64, 2uLL), v77), v64);
  v89 = veorq_s8(vandq_s8(vshlq_n_s64(v63, 2uLL), v78), v63);
  v90 = veorq_s8(vandq_s8(vshlq_n_s64(v62, 2uLL), v79), v62);
  v91 = veorq_s8(vandq_s8(vshlq_n_s64(v61, 2uLL), v80), v61);
  v92 = veorq_s8(vandq_s8(vshlq_n_s64(v60, 2uLL), v81), v60);
  v93 = vshlq_n_s64(v87, 2uLL);
  v94 = vshlq_n_s64(v86, 2uLL);
  v95 = vshlq_n_s64(v85, 2uLL);
  v96 = vshlq_n_s64(v84, 2uLL);
  v97 = vshlq_n_s64(v83, 2uLL);
  v98 = vdupq_n_s64(0x789B3CB0848A1E48uLL);
  v99 = vdupq_n_s64(0x3E26CF2C21228790uLL);
  v100 = veorq_s8(vandq_s8(veorq_s8(vandq_s8(veorq_s8(v97, v98), v83), vandq_s8(v97, v99)), vshlq_n_s64(v92, 4uLL)), v92);
  v101 = veorq_s8(vandq_s8(veorq_s8(vandq_s8(veorq_s8(v96, v98), v84), vandq_s8(v96, v99)), vshlq_n_s64(v91, 4uLL)), v91);
  v102 = veorq_s8(vandq_s8(veorq_s8(vandq_s8(veorq_s8(v95, v98), v85), vandq_s8(v95, v99)), vshlq_n_s64(v90, 4uLL)), v90);
  v103 = veorq_s8(vandq_s8(veorq_s8(vandq_s8(veorq_s8(v94, v98), v86), vandq_s8(v94, v99)), vshlq_n_s64(v89, 4uLL)), v89);
  v104 = veorq_s8(vandq_s8(veorq_s8(vandq_s8(veorq_s8(v93, v98), v87), vandq_s8(v93, v99)), vshlq_n_s64(v88, 4uLL)), v88);
  v105 = veorq_s8(vaddq_s64(v100, v100), v39);
  v106 = veorq_s8(vaddq_s64(v101, v101), v40);
  v107 = veorq_s8(vaddq_s64(v102, v102), v41);
  v108 = veorq_s8(vaddq_s64(v103, v103), v42);
  v109 = vdupq_n_s64(0xA25759DFD34EF494);
  v110 = veorq_s8(vaddq_s64(v104, v104), v43);
  v111 = vdupq_n_s64(0x649422EF6CA0BD92uLL);
  v112 = vdupq_n_s64(0x66403BB3682BE3C3uLL);
  v113 = vdupq_n_s64(0xA0834083D7C5AAC7);
  v114 = vdupq_n_s64(0x76E2E199D1A10C1EuLL);
  v115 = vdupq_n_s64(0xB0219AA96E4F451CLL);
  v116 = vdupq_n_s64(0x9E9C34E555EA8EDuLL);
  v117 = vaddq_s64(veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v105, v109), v111), vaddq_s64(veorq_s8(v105, v112), v113)), vaddq_s64(veorq_s8(v105, v114), v115)), v116);
  v118 = v117.i32[2];
  v119 = v117.i32[0];
  v120 = vaddq_s64(v38, xmmword_100F52970);
  v121 = vaddq_s64(veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v106, v109), v111), vaddq_s64(veorq_s8(v106, v112), v113)), vaddq_s64(veorq_s8(v106, v114), v115)), v116);
  v190 = v34;
  v122 = v121.i32[2];
  v123 = v121.i32[0];
  v124 = vaddq_s64(v38, xmmword_100F52980);
  v125 = vaddq_s64(veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v107, v109), v111), vaddq_s64(veorq_s8(v107, v112), v113)), vaddq_s64(veorq_s8(v107, v114), v115)), v116);
  v126 = v125.i32[2];
  v127 = v125.i32[0];
  v128 = vaddq_s64(v38, xmmword_100F52990);
  v129 = vaddq_s64(veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v108, v109), v111), vaddq_s64(veorq_s8(v108, v112), v113)), vaddq_s64(veorq_s8(v108, v114), v115)), v116);
  v130 = v129.i64[1];
  v131 = v129.i64[0];
  v132 = vaddq_s64(v38, xmmword_100F529A0);
  v133 = v132.i64[1];
  v134 = v132.i64[0];
  v135 = veorq_s8(v76, v82);
  v136 = vaddq_s64(veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v110, v109), v111), vaddq_s64(veorq_s8(v110, v112), v113)), vaddq_s64(veorq_s8(v110, v114), v115)), v116);
  v137 = v136.i32[2];
  v138 = v136.i32[0];
  v139 = vaddq_s64(v38, xmmword_100F529B0);
  v140 = v139.i32[2];
  v141 = v139.i32[0];
  v142 = veorq_s8(vandq_s8(vshlq_n_s64(v65, 2uLL), v76), v65);
  v143 = vshlq_n_s64(v135, 2uLL);
  v144 = veorq_s8(vandq_s8(veorq_s8(vandq_s8(veorq_s8(v143, v98), v135), vandq_s8(v143, v99)), vshlq_n_s64(v142, 4uLL)), v142);
  v145 = veorq_s8(vaddq_s64(v144, v144), v44);
  v146 = vaddq_s64(veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v145, v109), v111), vaddq_s64(veorq_s8(v145, v112), v113)), vaddq_s64(veorq_s8(v145, v114), v115)), v116);
  v147 = v146.i32[2];
  v148 = vaddq_s64(v38, xmmword_100F529C0);
  v149 = v148.i32[2];
  v150 = v146.i32[0];
  v151 = v148.i32[0];
  v152 = vaddq_s64(v38, xmmword_100F52320);
  v153 = veorq_s8(v152, v45);
  v154 = vandq_s8(v152, v52);
  v155 = veorq_s8(vandq_s8(vaddq_s64(v154, v154), veorq_s8(v152, v59)), v154);
  v156 = vaddq_s64(v153, v153);
  v157 = veorq_s8(vandq_s8(veorq_s8(v156, v72), v153), vandq_s8(v156, v75));
  v158 = veorq_s8(v157, v82);
  v159 = veorq_s8(vandq_s8(vshlq_n_s64(v155, 2uLL), v157), v155);
  v160 = vshlq_n_s64(v158, 2uLL);
  v161 = veorq_s8(vandq_s8(veorq_s8(vandq_s8(veorq_s8(v160, v98), v158), vandq_s8(v160, v99)), vshlq_n_s64(v159, 4uLL)), v159);
  v162 = veorq_s8(vaddq_s64(v161, v161), v152);
  v163 = vaddq_s64(veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v162, v109), v111), vaddq_s64(veorq_s8(v162, v112), v113)), vaddq_s64(veorq_s8(v162, v114), v115)), v116);
  v164 = v163.i32[2];
  v165 = v163.i32[0];
  v166 = vaddq_s64(v38, xmmword_100F529D0);
  v167 = v166.i32[2];
  v168 = v166.i32[0];
  v169 = vaddq_s64(v38, xmmword_100F52330);
  v170 = vandq_s8(v169, v52);
  v171 = veorq_s8(v169, v45);
  v172 = veorq_s8(vandq_s8(vaddq_s64(v170, v170), veorq_s8(v169, v59)), v170);
  v173 = vaddq_s64(v171, v171);
  v174 = veorq_s8(vandq_s8(veorq_s8(v173, v72), v171), vandq_s8(v173, v75));
  v175 = veorq_s8(v174, v82);
  v176 = veorq_s8(vandq_s8(vshlq_n_s64(v172, 2uLL), v174), v172);
  v177 = vshlq_n_s64(v175, 2uLL);
  v178 = veorq_s8(vandq_s8(veorq_s8(vandq_s8(veorq_s8(v177, v98), v175), vandq_s8(v177, v99)), vshlq_n_s64(v176, 4uLL)), v176);
  v179 = veorq_s8(vaddq_s64(v178, v178), v169);
  v175.i64[0] = (v119 * v120.i32[0]);
  v169.i64[0] = (v123 * v124.i32[0]);
  v180 = (v126 * v128.i32[2]);
  v72.i64[0] = (v127 * v128.i32[0]);
  v75.i64[0] = (v131 * v134);
  v82.i64[0] = (v138 * v141);
  v177.i64[0] = (v150 * v151);
  v181 = vaddq_s64(veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v179, v109), v111), vaddq_s64(veorq_s8(v179, v112), v113)), vaddq_s64(veorq_s8(v179, v114), v115)), v116);
  v182 = vaddq_s64(v38, xmmword_100F529E0);
  v98.i64[0] = (v165 * v168);
  v183 = (v181.i32[2] * v182.i32[2]);
  v184 = v182.i64[0];
  v182.i64[0] = (v181.i32[0] * v182.i32[0]);
  v185 = vdupq_n_s64(198 * v37);
  v175.i64[1] = (v118 * v120.i32[2]);
  v169.i64[1] = (v122 * v124.i32[2]);
  v72.i64[1] = v180;
  v75.i64[1] = (v130 * v133);
  v82.i64[1] = (v137 * v140);
  v177.i64[1] = (v147 * v149);
  v98.i64[1] = (v164 * v167);
  v182.i64[1] = v183;
  HIDWORD(a13) = (2 * (&a34 & 0x546090E0) - &a34 + 731868952) ^ 0x9FBE9725;
  v186 = vrev64q_s8(vaddq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vaddq_s64(v185, v169), vaddq_s64(v185, v175)), vuzp1q_s32(vaddq_s64(v185, v75), vaddq_s64(v185, v72))), vuzp1q_s16(vuzp1q_s32(vaddq_s64(v185, v177), vaddq_s64(v185, v82)), vuzp1q_s32(vaddq_s64(v185, v182), vaddq_s64(v185, v98)))), xmmword_100F529F0));
  v189 = vextq_s8(v186, v186, 8uLL);
  return (*(a20 + 8 * (v190 | 0x6180)))(v184, a20, v128.i64[1], &a32, v130, v131, v133, v134, a9, v188, v189.i64[0], v189.i64[1], a13, (&a27 ^ 0x7F6DFD7FF6FE7FFFLL) + ((2 * &a27) & 0xFEDBFAFFEDFCFFF0) + ((v190 | 0x6180) ^ 0xE803u) - 0x3D9E719CF81E1C0BLL);
}

uint64_t sub_1002B321C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, int a9@<W8>)
{
  STACK[0x570] = v17;
  STACK[0x568] = v16;
  STACK[0x578] = a5;
  STACK[0x558] = a4;
  STACK[0x528] = a3;
  STACK[0x560] = v15;
  STACK[0x588] = v14;
  STACK[0x548] = v13;
  STACK[0x538] = v12;
  STACK[0x540] = v11;
  STACK[0x590] = v10;
  STACK[0x580] = a8;
  STACK[0x530] = a7;
  STACK[0x550] = a6;
  return (*(STACK[0xF18] + 8 * ((27537 * (a9 == (((v9 + 15533) | 0x2034) ^ ((v9 - 3481) | 0x8001) ^ 0x2496316))) ^ v9)))(a1, a2, 371891374);
}

uint64_t sub_1002B33EC()
{
  v3 = v2 + v0 - 16;
  v4 = *(&off_1010A0B50 + v1 - 27688) + v0 - 381342526;
  v5 = *(&off_1010A0B50 + v1 - 28366) + v0 - 862364432;
  v6 = *(&off_1010A0B50 + (v1 ^ 0x67C2)) + v0 - 1879826847;
  v10 = v3 > 0xF && v5 > 0xF && v4 >= (v1 ^ 0x6082u) - 5712 && v6 > 0xF;
  return (*(STACK[0xF18] + 8 * ((7 * v10) ^ v1)))();
}

uint64_t sub_1002B3500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  v4 = a3 ^ v3;
  v5 = STACK[0x53C8];
  LODWORD(STACK[0xA6F4]) = STACK[0x4A88];
  STACK[0x1990] = v5;
  return (*(STACK[0xF18] + 8 * (((v5 != 0) * (v4 - 35636)) ^ a3)))(a1, a2, 371891400);
}

uint64_t sub_1002B3660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *v68 = v70;
  v71 = *(a4 + 8);
  v72 = v71 + v67;
  if (v71 + v67 < 0)
  {
    v72 = v71 - 0x3CE25E0EC5200375;
  }

  v73 = ((*(&a67 + ((((v69 ^ 0x20B9) + 10753) ^ 0x89u) & a67 ^ 3)) ^ 0xC7u) % (((v72 >> 2) - ((2 * (v72 >> 2)) & 0xC6FACADA) + 1669162349) ^ 0x637D656D) + 43) & 0x1FC;
  v74 = ((v73 ^ 0xAAD34E2A) - 169861487) ^ ((v73 ^ 0xC0DF833F) - 1611869306) ^ ((v73 ^ 0x6A0CCD15) + 893361584);
  v75 = ((v71 ^ 0xEED6612B) - 737567315) ^ v71 ^ ((v71 ^ 0x6A4E63AC) + 1351720748) ^ ((v71 ^ 0xFE03DE01) - 992206201) ^ ((v71 ^ 0xBFBBDFFE) - 2057034886);
  return (*(a63 + 8 * ((13909 * ((((v75 ^ 0x6C8E2902) - 1894935865) ^ ((v75 ^ 0x2A4415C2) - 909660665) ^ ((v75 ^ 0x83EA3FB8) + 1617527933)) - v74 + 948934629 < 0x7FFFFFFF)) ^ v69)))();
}

uint64_t sub_1002B3838()
{
  v1 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0xBEC4 ^ (v0 + 37557))))();
}

uint64_t sub_1002B387C()
{
  v0 = STACK[0xF10] - 17009;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] ^ 0x4192)))(STACK[0x43C0]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1002B39F8@<X0>(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18)
{
  v19 = *(a14 + 32);
  **(a14 + 8) = a1;
  *v19 = a18;
  return (*(v18 + 8 * a2))();
}

uint64_t sub_1002B3A94()
{
  v1 = STACK[0xF10] ^ 0x8B34;
  v2 = v1 + 630;
  v3 = 95 * v1;
  v4 = STACK[0xF10] + 9563;
  *(STACK[0x7980] + 8) = v0 ^ v2 ^ 0xC1F2B486EB4E861DLL;
  v5 = (LODWORD(STACK[0x6134]) + 4);
  LODWORD(STACK[0x6134]) = v5;
  v6 = (v5 | ((v5 < 0x66AA99B4) << 32)) + 1226806309;
  v8 = v6 < 0xAFCA2DD5 || v6 > LODWORD(STACK[0x72D0]) + 2949262805u;
  return (*(STACK[0xF18] + 8 * ((15 * ((v3 ^ v8) & 1)) ^ v4)))();
}

uint64_t sub_1002B3C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v43 = (v40 - 214504463) & 0xCC8FF2E;
  *(v42 - 132) = v43;
  v44 = *(&off_1010A0B50 + v40 - 18468) - 517082698;
  v45 = 29 * v44[((v43 - 2) ^ *(v42 - 112))] - 94;
  v46 = *(&off_1010A0B50 + v40 - 18202) - 1512963310;
  v47 = v46[*(v42 - 111) ^ 0x85];
  v48 = *(&off_1010A0B50 + v40 - 19899) - 1190259863;
  v49 = v48[*(v42 - 110) ^ 0xB2];
  v50 = *(&off_1010A0B50 + (v40 ^ 0x4338)) - 1326603422;
  v51 = 29 * v44[*(v42 - 108) ^ 0x26] - 94;
  v52 = v46[*(v42 - 107) ^ 0x1CLL];
  v53 = v50[*(v42 - 105) ^ 0x34];
  v54 = ((2 * v53) & 0x38 ^ 0xD7) + (((v53 ^ 0xA9) + 87) ^ ((v53 ^ 0xC7) + 57) ^ ((v53 ^ 0x1B) - 27));
  v55 = 29 * v44[*(v42 - 104) ^ 0x8ELL] - 94;
  v56 = v46[*(v42 - 103) ^ 0x94];
  v57 = v48[*(v42 - 102) ^ 0x47];
  v58 = v46[*(v42 - 99) ^ 0xCBLL];
  LOBYTE(v46) = v48[*(v42 - 106) ^ 0xBBLL];
  v59 = v48[*(v42 - 98) ^ 0xC8];
  v60 = v50[*(v42 - 109) ^ 0x4BLL];
  v61 = v50[*(v42 - 101) ^ 0xEFLL];
  v62 = v50[*(v42 - 97) ^ 0xCBLL];
  v63 = *(&off_1010A0B50 + (v40 ^ 0x4BF4)) - 1640312178;
  v64 = v58 ^ (v58 >> 3) ^ ((v58 >> 6) | 0x30);
  v65 = *(&off_1010A0B50 + v40 - 19118) - 876883234;
  v66 = *&v65[4 * (v64 ^ 0xE9)];
  v67 = v59 ^ 0x4E ^ (((16 * v59) ^ 0x1F) + 34);
  v68 = *(&off_1010A0B50 + v40 - 16702) - 847845426;
  v69 = *(&off_1010A0B50 + v40 - 17498) - 1532945454;
  HIDWORD(v70) = *&v68[4 * v67];
  LODWORD(v70) = HIDWORD(v70);
  v71 = (v70 >> 31) ^ *&v63[4 * ((29 * v44[*(v42 - 100) ^ 0x5CLL] - 94) ^ 0x84)] ^ ((v70 >> 31) >> 4) ^ ((v70 >> 31) >> 5) ^ ((v66 ^ 0x8DF1B4D7) + ((2 * v66) & 0xF61D10C0 ^ 0xE41C1040) + ((2 * v66) & 0xF61D10C0 ^ 0x1BE3EFBF) + 1);
  v72 = v62 ^ 0xB8 ^ v69[v62 ^ 0xB8];
  v73 = *(&off_1010A0B50 + (v40 ^ 0x4B2B)) - 1676745015;
  v74 = -2147482715 << ((v62 ^ 0xF1) & 5 ^ 1) << ((v62 ^ 0xF1) & 0x10) << ((v62 ^ 0xF) & 0x11) << ((v62 ^ 0xF) & 4);
  HIDWORD(v70) = *&v68[4 * (v49 ^ 0xC5 ^ (((16 * v49) ^ 0x1F) - 89))];
  LODWORD(v70) = HIDWORD(v70);
  v75 = *&v63[4 * (v45 ^ 0xD9)] ^ *&v65[4 * (v47 ^ (v47 >> 3) ^ ((v47 >> 6) | 0x74) ^ 0xA0)] ^ (v70 >> 31) ^ ((v70 >> 31) >> 4) ^ ((v70 >> 31) >> 5) ^ (v69[v60 ^ 0x16] ^ (v74 & 0x46 | (v60 ^ 0x7C) & ~v74)) ^ 0x1DB88D00;
  v76 = *(&off_1010A0B50 + v40 - 17596) - 1957220258;
  v77 = *(&off_1010A0B50 + v40 - 15516) - 1235355266;
  v78 = *(&off_1010A0B50 + v40 - 19352) - 662814046;
  v79 = v78[HIBYTE(v71) ^ 8] ^ ((HIBYTE(v71) ^ 0x92) - 22);
  LOBYTE(v66) = v52 ^ ((((-((v52 ^ 0x27) >> 3) ^ ((v52 ^ 0x27) - (((v52 ^ 0x27) >> 3) ^ v52 ^ 0x27)) ^ (((v52 ^ 0x27) >> 3) + ~(2 * ((v52 ^ 0x27) >> 3)) + 32) ^ 0x1F) + (v52 ^ 0x27)) & 0xF8) >> 3) ^ 0x59;
  LOBYTE(v62) = v46 ^ (((16 * v46) ^ 0x1F) - 94);
  v80 = v71 ^ v72;
  LODWORD(v46) = *&v73[4 * (BYTE2(v71) ^ 0xB9)];
  HIDWORD(v70) = *&v76[4 * (BYTE1(v71) ^ 0x4A)];
  LODWORD(v70) = HIDWORD(v70);
  *(v42 - 168) = v80;
  v81 = *&v77[4 * ((v71 ^ v72) ^ 0x82)];
  v82 = v46 ^ (v46 >> 1) & 0x6BBDA5AD ^ (v70 >> 5) ^ v81 ^ ((v70 >> 5) >> 3) & 0xA02D054 ^ (v81 >> 2) & 0x223BE99B ^ v75 ^ v79 ^ 0x240B6D3E;
  HIDWORD(v70) = *&v68[4 * (v62 ^ 0xC7)];
  LODWORD(v70) = HIDWORD(v70);
  v83 = *&v65[4 * v66] ^ *&v63[4 * (v51 ^ 0x7C)] ^ (v70 >> 31) ^ ((v70 >> 31) >> 4) ^ ((v70 >> 31) >> 5) ^ (v69[(v54 - 110) ^ 0xBALL] ^ (v54 - 110));
  HIDWORD(v70) = *&v68[4 * (v57 ^ 0x65 ^ (((16 * v57) ^ 0xE0) - ((2 * ((16 * v57) ^ 0xE0) - 96) & 0xC0) + 62))];
  LODWORD(v70) = HIDWORD(v70);
  v84 = *&v63[4 * (v55 ^ 0x9B)] ^ *&v65[4 * (v56 ^ (v56 >> 6) ^ (v56 >> 3) ^ 0x75)] ^ (v70 >> 31) ^ ((v70 >> 31) >> 4) ^ ((v70 >> 31) >> 5) ^ ((v61 ^ 0x88 ^ v69[v61 ^ 0xFA]) - 2 * ((v61 ^ 0xFFFFFF88 ^ v69[v61 ^ 0xFA]) & 0xE9) + 233);
  *(v42 - 136) = v84;
  v85 = v83 ^ 0x31210A13 ^ v82 ^ v84 ^ 0x8F47F50;
  v86 = *&v77[4 * ((v85 ^ v80) ^ 3)];
  v87 = (v86 ^ (1173594166 - (v86 ^ 0x511388D9)) ^ 0x14E028EF ^ (-350234863 - (((v86 ^ 0x8589AA9F) + 2054575457) ^ ((v86 ^ 0xF726EFA6) + 148443226) ^ ((v86 ^ 0x664F6DD6) - 1716481494)))) + 1173594166;
  v88 = *&v73[4 * (((v85 ^ v80) >> 16) ^ 0x78)];
  HIDWORD(v70) = *&v76[4 * (((v85 ^ v80) >> 8) ^ 0xAE)];
  LODWORD(v70) = HIDWORD(v70);
  v89 = v88 ^ (v88 >> 1) & 0x6BBDA5AD ^ (v70 >> 5) ^ ((v70 >> 5) >> 3) & 0xA02D054 ^ v87 ^ ((((v85 ^ v80) >> 24) ^ 0x44) - 22) ^ v78[((v85 ^ v80) >> 24) ^ 0xDELL] ^ (v87 >> 2) & 0x223BE99B ^ 0x322D9C4;
  LODWORD(v61) = v89 ^ v83 ^ 0x31210A13;
  v90 = v61 ^ v85;
  v91 = v61 ^ v85 ^ 0x44583700 ^ v85 ^ v80;
  v92 = BYTE1(v91) ^ 0xED;
  v93 = ((HIBYTE(v91) ^ 0x2A) - 22) ^ v78[HIBYTE(v91) ^ 0xB0];
  v94 = v91 ^ 0x6057640E;
  v95 = *&v73[4 * (BYTE2(v91) ^ 0xB6)];
  v96 = *&v77[4 * (v91 ^ 0xA6)];
  HIDWORD(v70) = *&v76[4 * v92];
  LODWORD(v70) = HIDWORD(v70);
  v97 = v95 ^ v96 ^ (v95 >> 1) & 0x6BBDA5AD ^ (v70 >> 5) ^ ((v70 >> 5) >> 3) & 0xA02D054 ^ (v96 >> 2) & 0x223BE99B ^ v89 ^ v82 ^ v93 ^ 0x79A16F93;
  LODWORD(v61) = v61 ^ 0xA0C10F72 ^ v97;
  v125 = v61 ^ v90 ^ 0x44583700;
  v98 = v125 ^ 0x41B6DC54 ^ v94;
  v99 = ((HIBYTE(v98) ^ 0xB) - 22) ^ v78[HIBYTE(v98) ^ 0x91];
  v100 = *&v73[4 * (BYTE2(v98) ^ 0xBF)];
  HIDWORD(v70) = *&v76[4 * (BYTE1(v98) ^ 0x8D)];
  LODWORD(v70) = HIDWORD(v70);
  v101 = v98 ^ 0x4237351C;
  v102 = *&v77[4 * (v98 ^ 0xA6)];
  v103 = (v100 >> 1) & 0x6BBDA5AD ^ v100 ^ (v70 >> 5) ^ v102 ^ ((v70 >> 5) >> 3) & 0xA02D054 ^ (v102 >> 2) & 0x223BE99B ^ v97 ^ v99;
  *(v42 - 144) = v103;
  v104 = v103 ^ 0xDE030D38 ^ v61;
  *(v42 - 152) = v104 ^ 0x5C1CBEC7;
  v124 = v104 ^ 0x5C1CBEC7 ^ v125 ^ 0x41B6DC54;
  LODWORD(v61) = v124 ^ v101;
  v105 = *&v73[4 * (((v124 ^ v101) >> 16) ^ 0x44)];
  v106 = *&v77[4 * ((v124 ^ v101) ^ 0x20)];
  HIDWORD(v70) = *&v76[4 * (((v124 ^ v101) >> 8) ^ 0x88)];
  LODWORD(v70) = HIDWORD(v70);
  v107 = v105 ^ v106 ^ (v105 >> 1) & 0x6BBDA5AD ^ (v70 >> 5) ^ ((v70 >> 5) >> 3) & 0xA02D054 ^ (v106 >> 2) & 0x223BE99B ^ v103 ^ 0xDE030D38 ^ 0x4754E0E5 ^ ((((BYTE3(v61) ^ 4) - (BYTE3(v61) ^ 0xBB)) ^ 0xFE) + (BYTE3(v61) ^ 4) - 22) ^ v78[((((BYTE3(v61) ^ 4) - (BYTE3(v61) ^ 0xBB)) ^ 0xFFFFFFFE) + (BYTE3(v61) ^ 4)) ^ 0x9ALL] ^ v125 ^ 0x41B6DC54;
  LODWORD(v69) = v105 ^ v106 ^ (v105 >> 1) & 0x6BBDA5AD ^ (v70 >> 5) ^ ((v70 >> 5) >> 3) & 0xA02D054 ^ (v106 >> 2) & 0x223BE99B ^ v103 ^ 0xDE030D38 ^ 0x4754E0E5 ^ ((((BYTE3(v61) ^ 4) - (BYTE3(v61) ^ 0xBB)) ^ 0xFE) + (BYTE3(v61) ^ 4) - 22) ^ v78[((((BYTE3(v61) ^ 4) - (BYTE3(v61) ^ 0xBB)) ^ 0xFFFFFFFE) + (BYTE3(v61) ^ 4)) ^ 0x9ALL];
  v108 = (v107 ^ v124 ^ v101) >> 24;
  LODWORD(v108) = ((v78[v108 ^ 0x9E] >> 2) | (v78[v108 ^ 0x9E] << 6)) ^ (((v108 ^ 4) - 22) << 6) ^ ((((v108 ^ 4) - 22) >> (((v107 ^ v61) >> 8) & 2)) >> (((v107 ^ v61) >> 8) & 2 ^ 2));
  v109 = *&v73[4 * (((v107 ^ v61) >> 16) ^ 0xFD)];
  v110 = *&v77[4 * ((v107 ^ v61) ^ 0x5A)];
  HIDWORD(v70) = *&v76[4 * (((v107 ^ v61) >> 8) ^ 0x65)];
  LODWORD(v70) = HIDWORD(v70);
  v111 = v109 ^ v110 ^ (v109 >> 1) & 0x6BBDA5AD ^ (v70 >> 5) ^ ((v70 >> 5) >> 3) & 0xA02D054 ^ (v110 >> 2) & 0x223BE99B ^ 0x32972156 ^ ((v108 >> 6) | (4 * v108));
  v112 = v111 ^ v104 ^ 0x5C1CBEC7;
  v113 = v112 ^ v107 ^ 0x14AE608F ^ v107 ^ v61;
  v114 = ((HIBYTE(v113) ^ 0x4E) - 22) ^ v78[HIBYTE(v113) ^ 0xD4];
  v115 = *&v73[4 * (BYTE2(v113) ^ 0xF4)];
  HIDWORD(v70) = *&v76[4 * (BYTE1(v113) ^ 0xE5)];
  LODWORD(v70) = HIDWORD(v70);
  *(v42 - 176) = v41;
  LODWORD(v65) = *&v77[4 * (v113 ^ 0x50)];
  *(v42 - 160) = (v115 >> 1) & 0x6BBDA5AD ^ v115 ^ (v70 >> 5) ^ v65 ^ ((v70 >> 5) >> 3) & 0xA02D054 ^ (v65 >> 2) & 0x223BE99B ^ v111 ^ v69 ^ v114 ^ 0xBDA5E18C ^ __ROR4__(__ROR4__(v112, 31) ^ 0x550E0613, 1) ^ 0x3EA29685;
  v116 = *(&off_1010A0B50 + (v40 ^ 0x4818)) - 1860508862;
  v117 = *(&off_1010A0B50 + (v40 ^ 0x4250)) - 1954956342;
  v118 = *(&off_1010A0B50 + (v40 ^ 0x4949)) - 1460411907;
  LODWORD(v46) = -(*(v42 - 120) ^ 0x73) ^ (203 - (*(v42 - 120) ^ 0xB8)) ^ 0x88327F62 ^ ((*(v42 - 120) ^ 0x73) - ((2 * (*(v42 - 120) ^ 0x73)) & 0xC4) - 2009956510);
  v119 = *(v42 - 117) ^ 0x98;
  v120 = *(&off_1010A0B50 + (v40 ^ 0x5F58)) - 1356576638;
  v121 = *(v42 - 123);
  v122 = *(v42 - 122) ^ *&v116[4 * (*(v42 - 122) ^ 0xEALL)] ^ *&v118[4 * (*(v42 - 124) ^ 0x49)] ^ v121 ^ 0x4F ^ ((v121 ^ 0x4F) + 625348269) ^ *&v117[4 * (v121 ^ 0xA6)] ^ v120[*(v42 - 121) ^ 0xD3] ^ 0x97EAB314;
  *(v42 - 216) = *(v42 - 127) ^ 0x26 ^ ((*(v42 - 127) ^ 0x26) + 625348269) ^ *(v42 - 126) ^ *&v117[4 * (*(v42 - 127) ^ 0xCFLL)] ^ *&v116[4 * (*(v42 - 126) ^ 0xC1)] ^ v120[*(v42 - 125) ^ 2] ^ *&v118[4 * (*(v42 - 128) ^ 0x14)] ^ 0x63C1C770;
  *(v42 - 224) = *(v42 - 118) ^ *&v116[4 * (*(v42 - 118) ^ 0xFALL)] ^ *&v118[4 * (v46 + 203)] ^ v120[v119] ^ *(v42 - 119) ^ 0xA3 ^ ((*(v42 - 119) ^ 0xA3) + 625348269) ^ *&v117[4 * (*(v42 - 119) ^ 0x4ALL)] ^ 0x8BFCC659;
  *(v42 - 136) = (((*(v42 - 176) ^ 0x1A9E0D9A) + 1259862597) ^ ((*(v42 - 176) ^ 0xFF999BC3) - 1374655458) ^ ((*(v42 - 176) ^ 0xAD0D5279) - 58415704)) + 1900762208;
  return (*(a40 + 8 * v40))(v122, 3104779605);
}

uint64_t sub_1002B4EE0()
{
  v1 = STACK[0x56C8];
  v2 = *(STACK[0x56C8] + 8);
  v3 = STACK[0x5C10];
  v3[1] = v2;
  *v3 = *v1;
  return (*(STACK[0xF18] + 8 * (((v2 != 0) * ((v0 - 192) ^ 0x5299)) ^ v0)))();
}

uint64_t sub_1002B4F24(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v2 + 49209)))(*(&off_1010A0B50 + (v2 ^ 0x367)) - 1260197367, a2, 16);
  STACK[0x98B8] = *(v3 + 8 * v2);
  return (*(v3 + 8 * (v2 ^ 0x5F8 ^ ((v2 + 5536) | 0x1E04))))(v4);
}

uint64_t sub_1002B4FD0()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((v0 + 25336) ^ 0x7413 | v0)))();
}

uint64_t sub_1002B51EC()
{
  STACK[0x5808] = STACK[0x8550];
  LODWORD(STACK[0x42AC]) = STACK[0x3924];
  v1 = STACK[0x529C];
  v2 = STACK[0x3488];
  if (LODWORD(STACK[0x529C]) == -371865839)
  {
    v2 = 0;
  }

  STACK[0x86E8] = v2;
  LODWORD(STACK[0x3B7C]) = v1;
  LODWORD(STACK[0x435C]) = STACK[0x3B54];
  STACK[0x2E40] = 0;
  STACK[0x4548] = 0;
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762631354) ^ (906386353 * ((((2 * (&STACK[0x10000] + 3800)) | 0x750748FE) - (&STACK[0x10000] + 3800) + 1165777793) ^ 0x8B82695B));
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0xDCF0)))(&STACK[0x10ED8]);
  if (*STACK[0x970])
  {
    v5 = 1;
  }

  else
  {
    v5 = *STACK[0x940] == 0;
  }

  v6 = v5;
  return (*(v3 + 8 * ((44 * (((v0 - 74) ^ v6) & 1)) ^ v0)))(v4);
}

uint64_t sub_1002B5348()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 3879)))();
}

uint64_t sub_1002B55D4()
{
  v2 = (((v1 & 0xFFFFFFF0 ^ 0x73B814FA) - 1434800444) ^ ((v1 & 0xFFFFFFF0 ^ 0xBEEF9CF0) + 1731012298) ^ ((v1 & 0xFFFFFFF0 ^ 0x24826743 ^ ((v0 - 19175) | 0x11)) - 46074588)) + 796179445;
  v3 = (v2 ^ 0x2273C4E5) & (2 * (v2 & 0xA073C6F1)) ^ v2 & 0xA073C6F1;
  v4 = ((2 * (v2 ^ 0x62B2C805)) ^ 0x85821DE8) & (v2 ^ 0x62B2C805) ^ (2 * (v2 ^ 0x62B2C805)) & 0xC2C10EF4;
  v5 = v4 ^ 0x42410214;
  v6 = (v4 ^ 0x80800CC0) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0xB043BD0) & v5 ^ (4 * v5) & 0xC2C10EF0;
  v8 = (v7 ^ 0x2000AD0) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0xC0C10424)) ^ 0x2C10EF40) & (v7 ^ 0xC0C10424) ^ (16 * (v7 ^ 0xC0C10424)) & 0xC2C10EC0;
  v10 = v8 ^ 0xC2C10EF4 ^ (v9 ^ 0xE00) & (v8 << 8);
  LODWORD(STACK[0x22EC]) = v2 ^ (2 * ((v10 << 16) & 0x42C10000 ^ v10 ^ ((v10 << 16) ^ 0xEF40000) & (((v9 ^ 0xC2C100B4) << 8) & 0x42C10000 ^ 0x2C10000 ^ (((v9 ^ 0xC2C100B4) << 8) ^ 0x410E0000) & (v9 ^ 0xC2C100B4)))) ^ 0xC9A41C08;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1002B57A0()
{
  v0 = 77 * (STACK[0xF10] ^ 0x8A63);
  v1 = STACK[0xF10] - 34620;
  v2 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 - 21348) ^ v1)))();
}

uint64_t sub_1002B57F4()
{
  v1 = (13 * (STACK[0xF10] ^ 0x8848) + 787979035) & 0xD1087BBD;
  v2 = STACK[0xF10] + 2717;
  STACK[0x29E8] = v0;
  return (*(STACK[0xF18] + 8 * (((v1 ^ 0x406E) * (v0 != 0)) ^ v2)))();
}

uint64_t sub_1002B58EC@<X0>(int a1@<W8>, uint64_t a2)
{
  v5 = *(&off_1010A0B50 + a1 - 34964) - 151486791;
  v6 = 71 * *(*(&off_1010A0B50 + a1 - 33246) + (*(v4 - 153) ^ 0xB7) - 383274211) - 33;
  v7 = ((((v5[*(v4 - 146) ^ 0x45] ^ ((*(v4 - 146) ^ 0x3E) + 114)) >> 4) & 1) << 12) | 0x98C90C4B;
  v8 = (((((*(v4 - 154) ^ 0x13) + 114) ^ v5[(*(v4 - 154) ^ 0x13) - ((2 * (*(v4 - 154) ^ 0x13)) & 0xF6) + 123]) << 8) ^ 0xC3595A6E) & ((v6 >> 4) & 9 ^ v6 ^ 0xD7DBFFFE) | ((v6 >> 4) & 9 ^ v6) & 0x91;
  v9 = *(*(&off_1010A0B50 + (a1 ^ 0x85E3)) + (*(v4 - 152) ^ 0xE9) - 2 * ((*(v4 - 152) ^ 0xE9) & 0x93u) - 1522954235);
  v10 = ((((*(*(&off_1010A0B50 + a1 - 34657) + (*(v4 - 155) ^ 0xCBLL) - 1276648062) + 103) << 16) ^ 0x4C3BD69C) & (v8 ^ 0x9DA604D3) ^ v8 & 0x3112963) & 0xA56B94E;
  LOBYTE(v8) = v9 & 0xA5 ^ 0x1F;
  v11 = (4 * v9) ^ 0x10u;
  *(v4 - 216) = (((v2 ^ 0xC5CF929C) + 255247126) ^ ((v2 ^ 0x6AB4C88C) - 1605527290) ^ ((v2 ^ 0x5B3078C3) - 1849087669)) - 2060429674;
  return (*(v3 + 8 * a1))(v10, 3895871408, (((v9 ^ (2 * ((v9 ^ 0xE) & (2 * ((v9 ^ 0xE) & (2 * ((v9 ^ 0xE) & (2 * ((v9 ^ 0xE) & (2 * ((v9 ^ 0xE) & (2 * (((2 * v9) & 0x1E ^ 0xAA) & (v9 ^ 0xE) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8))) ^ 0xAC) + ((((4 * v9) ^ 0x10) & (8 * ((v9 ^ 0xE) & (2 * (v9 ^ 0x9A)) ^ v9 ^ 0x9A)) ^ (2 * v9)) & 0x12 ^ 2)) & 0x3E, v11 & (8 * ((v9 ^ 0xE) & (2 * (v9 ^ 0xFFFFFF9A)) ^ v9 ^ 0xFFFFFF9A)), v11, v7, 13738 * (a1 ^ 0x8DB1u), v5, a2);
}

uint64_t sub_1002B60E8@<X0>(unsigned int a1@<W8>)
{
  v4 = (((*(v2 + v3) ^ 0x1CE926ED) - 485041901) ^ (((v1 - 146198704) & 0x8B6D558) + 630017512 + (*(v2 + v3) ^ 0xDA721D00)) ^ ((*(v2 + v3) ^ 0x2F4EFCFC) + ((v1 - 24596) ^ 0xD0B1335F))) - 1188484715;
  v5 = v4 < 0xCF536284;
  v6 = a1 - 816618876 < v4;
  if (a1 >= 0x30AC9D7C != v5)
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((222 * !v6) ^ v1)))();
}

uint64_t sub_1002B61BC@<X0>(int a1@<W8>)
{
  v2 = ((((v1 - 42160) | 0x8831) - 167808958) ^ a1) + ((2 * a1) & 0x1F6FA);
  v3 = ((v2 - 33) ^ 0xA1) & (2 * ((v2 - 33) & 0xA8)) ^ (v2 - 33) & 0xA8;
  v4 = ((2 * ((v2 - 33) ^ 0xA1)) ^ 0x12) & ((v2 - 33) ^ 0xA1) ^ (2 * ((v2 - 33) ^ 0xA1)) & 8;
  v5 = ((((2 * ((((4 * (v4 ^ 9)) ^ 0x24) & (v4 ^ 9) ^ (4 * (v4 ^ 9)) & 8) & (16 * (v4 & (4 * v3) ^ v3)) ^ v4 & (4 * v3) ^ v3)) | 2) ^ (v2 - 33)) & 0xF ^ 0xFFFFFFF5) + v2 + 1881730714;
  v6 = (v5 ^ 0x5DD647F0) & (2 * (v5 & 0x99D71602)) ^ v5 & 0x99D71602;
  v7 = ((2 * (v5 ^ 0x4D7447F4)) ^ 0xA946A3EC) & (v5 ^ 0x4D7447F4) ^ (2 * (v5 ^ 0x4D7447F4)) & 0x54A351F6;
  v8 = v7 ^ 0x54A15012;
  v9 = v7 & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0x528D47D8) & v8 ^ (4 * v8) & 0xD4A351F0;
  v11 = (v10 ^ 0x508141C0) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x84221026)) ^ 0x4A351F60) & (v10 ^ 0x84221026) ^ (16 * (v10 ^ 0x84221026)) & 0xD4A351E0;
  v13 = v11 ^ 0xD4A351F6 ^ (v12 ^ 0x40211100) & (v11 << 8);
  v14 = v5 ^ (2 * ((v13 << 16) & 0x54A30000 ^ v13 ^ ((v13 << 16) ^ 0x51F60000) & (((v12 ^ 0x94824096) << 8) & 0x54A30000 ^ 0x54A20000 ^ (((v12 ^ 0x94824096) << 8) ^ 0x23510000) & (v12 ^ 0x94824096))));
  LODWORD(STACK[0x2098]) = v14 ^ 0x780072FF;
  v15 = STACK[0xF18];
  v16 = (*(STACK[0xF18] + 8 * (v1 ^ 0x6D22)))(v14 ^ 0x91D5B5EE);
  STACK[0x15C0] = v16;
  STACK[0x62F8] = v16;
  return (*(v15 + 8 * ((103 * (v16 == 0)) ^ v1)))();
}

uint64_t sub_1002B64FC()
{
  v0 = (STACK[0xF10] - 2870) | 0x3C00;
  v1 = STACK[0xF10] - 23717;
  v2 = STACK[0x22E0];
  LODWORD(STACK[0x586C]) = STACK[0x22E0];
  return (*(STACK[0xF18] + 8 * ((32484 * (v2 == v0 - 371913972)) ^ v1)))();
}

uint64_t sub_1002B655C()
{
  v0 = STACK[0xF10] - 12486;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] ^ 0x4192)))(STACK[0x6EB8]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1002B6594@<X0>(int a1@<W8>)
{
  v2 = ((a1 - 35386) | 0x941C) - 37825;
  v3 = a1 - 29037;
  v4 = v1 + 1462885083;
  v5 = (((LODWORD(STACK[0xA77C]) ^ 0x749CAE34) - 1956425268) ^ ((LODWORD(STACK[0xA77C]) ^ 0xB5981EB5) + 1248321867) ^ ((LODWORD(STACK[0xA77C]) ^ 0x28D17790) + (v2 ^ 0xD72E892C))) - 2143892058;
  v6 = (v4 < 0x96610695) ^ (v5 < 0x96610695);
  v7 = v4 < v5;
  if (v6)
  {
    v7 = v5 < 0x96610695;
  }

  return (*(STACK[0xF18] + 8 * ((15711 * v7) ^ v3)))();
}

uint64_t sub_1002B69F4()
{
  v1 = STACK[0xF10];
  v2 = (STACK[0xF10] + 1298478244) & 0xB29ADDAE;
  v3 = STACK[0x3F5C];
  STACK[0x7690] -= 416;
  if (v3 == v0)
  {
    v4 = STACK[0x4548];
  }

  else
  {
    v4 = 0;
  }

  STACK[0x30C0] = v4;
  return (*(STACK[0xF18] + 8 * (((v3 == v0) * (v2 - 39883)) ^ (v1 - 22635))))();
}

uint64_t sub_1002B6ABC(uint64_t a1, uint64_t a2)
{
  v3 = *(STACK[0x5860] + 24);
  STACK[0x5178] = v3;
  return (*(STACK[0xF18] + 8 * (((v3 == 0) * (v2 - 81920 + 46 * (v2 ^ 0xA47F))) ^ v2)))(a1, a2, 371891400);
}

uint64_t sub_1002B6B94@<X0>(uint64_t a1@<X8>)
{
  v3 = (a1 | ((a1 < 0x181C04D8) << 32)) + 0x54BB75029B2CC5E6;
  v4 = (v3 ^ 0x947DB61C6837B474) & (2 * ((((v1 - 16631) | 0x8112u) + 0x54CB6AA0BLL) & v3)) ^ (((v1 - 16631) | 0x8112u) + 0x54CB6AA0BLL) & v3;
  v5 = (((v3 ^ 0x947DB614F03BFCF8) << (v1 - 31)) ^ 0x404241137919937CLL) & (v3 ^ 0x947DB614F03BFCF8) ^ ((v3 ^ 0x947DB614F03BFCF8) << (v1 - 31)) & 0x1090429BC8CC9BELL;
  v6 = v5 ^ 0x109042884844882;
  v7 = (v5 ^ 0x1090401B00881BALL) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0xFCE4F3A6F23326F8) & v6 ^ (4 * v6) & 0x3F393CE9BC8CC9BCLL;
  v9 = (v8 ^ 0x3C2030A0B00000A0) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x3190C490C8CC906)) ^ 0xF393CE9BC8CC9BE0) & (v8 ^ 0x3190C490C8CC906) ^ (16 * (v8 ^ 0x3190C490C8CC906)) & 0x3F393CE9BC8CC9A0;
  v11 = (v10 ^ 0x33110C89888C8900) & (v9 << 8) ^ v9;
  v12 = (((v10 ^ 0xC2830603400401ELL) << 8) ^ 0x393CE9BC8CC9BE00) & (v10 ^ 0xC2830603400401ELL) ^ ((v10 ^ 0xC2830603400401ELL) << 8) & 0x3F393CE9BC8CC800;
  v13 = v11 ^ 0x3F393CE9BC8CC9BELL ^ (v12 ^ 0x393828A88C880000) & (v11 << 16);
  v14 = v3 ^ (2 * ((v13 << 32) & 0x3F393CE900000000 ^ v13 ^ ((v13 << 32) ^ 0x3C8CC9BE00000000) & (((v12 ^ 0x6011441300441BELL) << 16) & 0x3F393CE900000000 ^ 0x310006100000000 ^ (((v12 ^ 0x6011441300441BELL) << 16) ^ 0x3CE9BC8C00000000) & (v12 ^ 0x6011441300441BELL))));
  *(v2 + 2448) = v14 ^ 0x554DF3107F0FF311;
  v15 = (((v14 ^ 0x35F6944912C001F7) - 0x60BB67596DCFF2E6) ^ ((v14 ^ 0x621CC00D6CE44222) - 0x3751331D13EBB133) ^ ((v14 ^ 0xFACCB63A4B8AE5EFLL) + 0x507EBAD5CB7AE902)) - 0x794EE9138A9F534;
  v16 = STACK[0x9B28] - 0x28D1558BDE0C6E2CLL;
  v17 = v15 < 0x7CB4B5A1;
  v18 = v15 > v16;
  if (v16 < 0x7CB4B5A1 != v17)
  {
    v18 = v17;
  }

  return (*(STACK[0xF18] + 8 * ((v18 | (2 * v18)) + v1)))();
}

uint64_t sub_1002B6F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W8>)
{
  v19 = v6 > v10;
  v20 = HIDWORD(v16) + (*(a2 + 4 * (a5 + v8)) ^ v17) * v11 + (*(a1 + 4 * a3) ^ v17);
  *(a1 + 4 * a3) = (a4 & v18) + v20 - (a6 & (2 * v20)) + v13;
  if (v19 == a5 + v14 < v15)
  {
    v19 = a5 + v14 < v9;
  }

  return (*(v12 + 8 * ((16 * v19) | (32 * v19) | v7)))();
}

uint64_t sub_1002B7010(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, int8x16_t a9, int8x16_t a10, int8x16_t a11, int8x16_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, double a17, double a18, double a19, double a20, int64x2_t a21, int64x2_t a22, int8x16_t a23, int64x2_t a24, int64x2_t a25, int64x2_t a26, int8x16_t a27, int64x2_t a28, int8x16_t a29, int64x2_t a30, int8x16_t a31, int8x16_t a32, int8x16_t a33, int8x16_t a34, int8x16_t a35, int8x16_t a36, int8x16_t a37, int8x16_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  v174 = veorq_s8(a8, a38);
  v57 = veorq_s8(a7, a38);
  v58 = veorq_s8(a6, a38);
  v59 = veorq_s8(a5, a38);
  v60 = veorq_s8(a11, a38);
  v61 = veorq_s8(a12, a38);
  v62 = veorq_s8(a10, a38);
  v63 = veorq_s8(a9, a38);
  v64 = vandq_s8(a8, a37);
  v65 = vandq_s8(a7, a37);
  v66 = vandq_s8(a6, a37);
  v67 = vandq_s8(a5, a37);
  v68 = vandq_s8(a11, a37);
  v69 = vandq_s8(a12, a37);
  v70 = vandq_s8(a10, a37);
  v71 = vandq_s8(a9, a37);
  v72 = veorq_s8(vandq_s8(vaddq_s64(v71, v71), veorq_s8(a9, a36)), v71);
  v73 = veorq_s8(vandq_s8(vaddq_s64(v70, v70), veorq_s8(a10, a36)), v70);
  v74 = veorq_s8(vandq_s8(vaddq_s64(v69, v69), veorq_s8(a12, a36)), v69);
  v75 = veorq_s8(vandq_s8(vaddq_s64(v68, v68), veorq_s8(a11, a36)), v68);
  v76 = veorq_s8(vandq_s8(vaddq_s64(v67, v67), veorq_s8(a5, a36)), v67);
  v77 = veorq_s8(vandq_s8(vaddq_s64(v66, v66), veorq_s8(a6, a36)), v66);
  v78 = vaddq_s64(v63, v63);
  v79 = vaddq_s64(v62, v62);
  v80 = vaddq_s64(v61, v61);
  v81 = veorq_s8(vandq_s8(vaddq_s64(v65, v65), veorq_s8(a7, a36)), v65);
  v82 = vaddq_s64(v60, v60);
  v83 = vaddq_s64(v59, v59);
  v84 = vaddq_s64(v58, v58);
  v85 = vaddq_s64(v57, v57);
  v86 = vaddq_s64(v174, v174);
  v87 = veorq_s8(vandq_s8(vaddq_s64(v64, v64), veorq_s8(a8, a36)), v64);
  v88 = vandq_s8(veorq_s8(v82, a35), v60);
  v89 = veorq_s8(vandq_s8(veorq_s8(v86, a35), v174), vandq_s8(v86, a34));
  v90 = veorq_s8(vandq_s8(veorq_s8(v85, a35), v57), vandq_s8(v85, a34));
  v91 = veorq_s8(vandq_s8(veorq_s8(v84, a35), v58), vandq_s8(v84, a34));
  v92 = veorq_s8(vandq_s8(veorq_s8(v83, a35), v59), vandq_s8(v83, a34));
  v93 = veorq_s8(v88, vandq_s8(v82, a34));
  v94 = veorq_s8(vandq_s8(veorq_s8(v80, a35), v61), vandq_s8(v80, a34));
  v95 = veorq_s8(vandq_s8(veorq_s8(v79, a35), v62), vandq_s8(v79, a34));
  v96 = veorq_s8(vandq_s8(veorq_s8(v78, a35), v63), vandq_s8(v78, a34));
  v173 = veorq_s8(vandq_s8(vshlq_n_s64(v87, 2uLL), v89), v87);
  v175 = veorq_s8(vandq_s8(vshlq_n_s64(v77, 2uLL), v91), v77);
  v97 = veorq_s8(vandq_s8(vshlq_n_s64(v76, 2uLL), v92), v76);
  v98 = veorq_s8(vandq_s8(vshlq_n_s64(v75, 2uLL), v93), v75);
  v99 = veorq_s8(vandq_s8(vshlq_n_s64(v74, 2uLL), v94), v74);
  v100 = veorq_s8(vandq_s8(vshlq_n_s64(v73, 2uLL), v95), v73);
  v101 = veorq_s8(vandq_s8(vshlq_n_s64(v72, 2uLL), v96), v72);
  v171 = vandq_s8(veorq_s8(vshlq_n_s64(v92, 2uLL), a33), veorq_s8(v92, a32));
  v172 = vandq_s8(veorq_s8(vshlq_n_s64(v95, 2uLL), a33), veorq_s8(v95, a32));
  v102 = vandq_s8(veorq_s8(vshlq_n_s64(v91, 2uLL), a33), veorq_s8(v91, a32));
  v103 = veorq_s8(vandq_s8(vandq_s8(veorq_s8(vshlq_n_s64(v96, 2uLL), a33), veorq_s8(v96, a32)), vshlq_n_s64(v101, 4uLL)), v101);
  v104 = veorq_s8(vandq_s8(vandq_s8(veorq_s8(vshlq_n_s64(v94, 2uLL), a33), veorq_s8(v94, a32)), vshlq_n_s64(v99, 4uLL)), v99);
  v105 = veorq_s8(vandq_s8(vandq_s8(veorq_s8(vshlq_n_s64(v93, 2uLL), a33), veorq_s8(v93, a32)), vshlq_n_s64(v98, 4uLL)), v98);
  v106 = veorq_s8(vaddq_s64(v103, v103), a9);
  v107 = veorq_s8(vaddq_s64(v104, v104), a12);
  v108 = veorq_s8(vaddq_s64(v105, v105), a11);
  v109 = vaddq_s64(a9, a24);
  v110 = vaddq_s64(veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v106, a31), a30), vaddq_s64(veorq_s8(v106, a29), a28)), vaddq_s64(veorq_s8(v106, a27), a26)), a25);
  v111 = v110.i64[1];
  v112 = v109.i64[1];
  v113 = v110.i64[0];
  v114 = v109.i64[0];
  v115 = vaddq_s64(a12, a24);
  v116 = vaddq_s64(veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v107, a31), a30), vaddq_s64(veorq_s8(v107, a29), a28)), vaddq_s64(veorq_s8(v107, a27), a26)), a25);
  v117 = v116.i64[1];
  v118 = v116.i64[0];
  v107.i64[0] = a11.i64[0] * a3;
  v119 = vaddq_s64(a11, a24);
  v120 = v119.i64[1];
  v121 = v119.i64[0];
  v105.i64[0] = a12.i64[0] * a3;
  v122 = vaddq_s64(veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v108, a31), a30), vaddq_s64(veorq_s8(v108, a29), a28)), vaddq_s64(veorq_s8(v108, a27), a26)), a25);
  v123 = veorq_s8(vandq_s8(vshlq_n_s64(v81, 2uLL), v90), v81);
  v124 = vaddq_s64(a10, a24);
  v125 = v124.i64[1];
  v126 = v122.i64[1] * v120;
  v127 = v122.i64[0] * v121;
  v128 = v124.i64[0];
  v129 = vandq_s8(v102, vshlq_n_s64(v175, 4uLL));
  v94.i64[0] = v118 * v115.i64[0];
  v130 = veorq_s8(vandq_s8(v172, vshlq_n_s64(v100, 4uLL)), v100);
  v131 = veorq_s8(vaddq_s64(v130, v130), a10);
  v115.i64[0] = v127;
  v107.i64[1] = a11.i64[1] * a3;
  v105.i64[1] = a12.i64[1] * a3;
  v94.i64[1] = v117 * v115.i64[1];
  v115.i64[1] = v126;
  v177.val[1] = vaddq_s64(vaddq_s64(v107, a21), v115);
  v177.val[0] = vaddq_s64(vaddq_s64(v105, a21), v94);
  v132 = vaddq_s64(veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v131, a31), a30), vaddq_s64(veorq_s8(v131, a29), a28)), vaddq_s64(veorq_s8(v131, a27), a26)), a25);
  v133 = v132.i64[1];
  v134 = v132.i64[0];
  v135 = veorq_s8(v129, v175);
  v132.i64[0] = a10.i64[0] * a3;
  v136 = veorq_s8(vandq_s8(vandq_s8(veorq_s8(vshlq_n_s64(v90, 2uLL), a33), veorq_s8(v90, a32)), vshlq_n_s64(v123, 4uLL)), v123);
  v115.i64[0] = a9.i64[0] * a3;
  v137 = v113 * v114;
  v138 = veorq_s8(vandq_s8(vandq_s8(veorq_s8(vshlq_n_s64(v89, 2uLL), a33), veorq_s8(v89, a32)), vshlq_n_s64(v173, 4uLL)), v173);
  v139 = v134 * v128;
  v132.i64[1] = a10.i64[1] * a3;
  v115.i64[1] = a9.i64[1] * a3;
  v140 = v111 * v112;
  v141 = vaddq_s64(a6, a24);
  v142 = v141.i64[1];
  v143 = v141.i64[0];
  v144 = vaddq_s64(a7, a24);
  v145 = v133 * v125;
  v146 = v144.i64[1];
  v147 = v144.i64[0];
  v148 = veorq_s8(vaddq_s64(v136, v136), a7);
  v149 = veorq_s8(vaddq_s64(v138, v138), a8);
  v144.i64[0] = v139;
  v144.i64[1] = v145;
  v177.val[2] = vaddq_s64(vaddq_s64(v132, a21), v144);
  v144.i64[0] = v137;
  v144.i64[1] = v140;
  v177.val[3] = vaddq_s64(vaddq_s64(v115, a21), v144);
  v150 = veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v149, a31), a30), vaddq_s64(veorq_s8(v149, a29), a28)), vaddq_s64(veorq_s8(v149, a27), a26));
  v115.i64[0] = a8.i64[0] * a3;
  v151 = vaddq_s64(veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v148, a31), a30), vaddq_s64(veorq_s8(v148, a29), a28)), vaddq_s64(veorq_s8(v148, a27), a26)), a25);
  v115.i64[1] = a8.i64[1] * a3;
  v148.i64[0] = a7.i64[0] * a3;
  v148.i64[1] = a7.i64[1] * a3;
  v152 = vaddq_s64(v150, a25);
  v153 = v152.i64[1];
  v154 = v152.i64[0];
  v155 = vaddq_s64(a8, a24);
  v156 = v151.i64[1] * v146;
  v157 = v155.i64[0];
  v155.i64[0] = v151.i64[0] * v147;
  v158 = v153 * v155.i64[1];
  v155.i64[1] = v156;
  v159 = veorq_s8(vaddq_s64(v135, v135), a6);
  v151.i64[0] = vqtbl4q_s8(v177, a23).u64[0];
  v144.i64[0] = v154 * v157;
  v144.i64[1] = v158;
  v178.val[0] = vaddq_s64(vaddq_s64(v115, a21), v144);
  v178.val[1] = vaddq_s64(vaddq_s64(v148, a21), v155);
  v160 = vaddq_s64(veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v159, a31), a30), vaddq_s64(veorq_s8(v159, a29), a28)), vaddq_s64(veorq_s8(v159, a27), a26)), a25);
  v161 = v160.i64[0];
  v160.i64[0] = a6.i64[0] * a3;
  v162 = v160.i64[1] * v142;
  v163 = veorq_s8(vandq_s8(v171, vshlq_n_s64(v97, 4uLL)), v97);
  v164 = veorq_s8(vaddq_s64(v163, v163), a5);
  v160.i64[1] = a6.i64[1] * a3;
  v148.i64[0] = v161 * v143;
  v148.i64[1] = v162;
  v178.val[2] = vaddq_s64(vaddq_s64(v160, a21), v148);
  v165 = vaddq_s64(veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v164, a31), a30), vaddq_s64(veorq_s8(v164, a29), a28)), vaddq_s64(veorq_s8(v164, a27), a26)), a25);
  v166 = vaddq_s64(a5, a24);
  v167 = v165.i64[0];
  v165.i64[0] = a5.i64[0] * a3;
  v168 = v165.i64[1] * v166.i64[1];
  v165.i64[1] = a5.i64[1] * a3;
  v166.i64[0] *= v167;
  v166.i64[1] = v168;
  v178.val[3] = vaddq_s64(vaddq_s64(v165, a21), v166);
  v151.i64[1] = vqtbl4q_s8(v178, a23).u64[0];
  v169 = vrev64q_s8(v151);
  *(v55 + (a2 ^ v54) + v53) = vextq_s8(v169, v169, 8uLL);
  return (*(a53 + 8 * (((a1 == v54) * a4) ^ v56)))(vaddq_s64(a5, a22), vaddq_s64(a6, a22), vaddq_s64(a7, a22), vaddq_s64(a8, a22), vaddq_s64(a9, a22), vaddq_s64(a10, a22), vaddq_s64(a11, a22), vaddq_s64(a12, a22), a17, a18, a19, a20, *a21.i64, *&a21.i64[1], *a22.i64, *&a22.i64[1], *a23.i64, *&a23.i64[1], *a24.i64, *&a24.i64[1], *a25.i64, *&a25.i64[1], *a26.i64, *&a26.i64[1], *a27.i64, *&a27.i64[1], *a28.i64, *&a28.i64[1], *a29.i64, *&a29.i64[1], *a30.i64, *&a30.i64[1], *a31.i64, *&a31.i64[1], *a32.i64, *&a32.i64[1], *a33.i64, *&a33.i64[1], *a34.i64, *&a34.i64[1], *a35.i64, *&a35.i64[1], *a36.i64, *&a36.i64[1], *a37.i64, *&a37.i64[1], *a38.i64, *&a38.i64[1], *a7.i64, *&a7.i64[1], *v171.i64, *&v171.i64[1], *v172.i64, *&v172.i64[1], *v173.i64, *&v173.i64[1], *v175.i64, *&v175.i64[1], *a6.i64, *&a6.i64[1], *a5.i64, *&a5.i64[1]);
}

uint64_t sub_1002B7748()
{
  v0 = STACK[0xF10] + 15504;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] + 16221)))((STACK[0xF10] - 31566) ^ (STACK[0xF10] - 504122457) & 0x1E0BE1DF ^ LODWORD(STACK[0x285C]) ^ 0xE9D5E83E);
  STACK[0x4B30] = v2;
  return (*(v1 + 8 * (((8 * (v2 == 0)) | (16 * (v2 == 0))) ^ v0)))();
}

uint64_t sub_1002B77C8()
{
  STACK[0x4A28] = STACK[0x1CE8];
  LODWORD(STACK[0x46C4]) = -1650567431;
  STACK[0x2608] = &STACK[0x4088];
  LODWORD(STACK[0x40AC]) = 1102206727;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1002B781C()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1F73)))();
}

uint64_t sub_1002B79E4()
{
  *v4 = v3;
  *(v4 + 8) = v2;
  *(v4 + 12) = v2;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_1002B7A44()
{
  v0 = STACK[0xF10] + 10383;
  if (*(STACK[0x4388] + 24) == 1)
  {
    v1 = STACK[0xB3C4];
  }

  else
  {
    v1 = 371891407;
  }

  LODWORD(STACK[0xB3C8]) = v1;
  return (*(STACK[0xF18] + 8 * ((2739 * (v1 == -371865839)) ^ v0)))();
}

uint64_t sub_1002B7C00()
{
  STACK[0x4A28] = *STACK[0x1D80];
  LODWORD(STACK[0x46C4]) = 324437507;
  STACK[0x2608] = &STACK[0x6F5C];
  LODWORD(STACK[0x40AC]) = -1469918004;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1002B7C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int8x16_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int8x16_t a50, uint64_t a51, uint64_t a52, int8x16_t a53, int8x16_t a54, int8x16_t a55)
{
  *&v73 = v59 + v55 - 5;
  *(&v73 + 1) = v59 + v55 - 6;
  *&STACK[0x2D0] = v73;
  *&v73 = v59 + v55 - 3;
  *(&v73 + 1) = v59 + v55 - 4;
  *&STACK[0x2C0] = v73;
  v74.i64[0] = v59 + v55 + 3;
  v74.i64[1] = v59 + v55 + 2;
  v75.i64[0] = v59 + v55 + 5;
  v75.i64[1] = v59 + v55 + 4;
  v76.i64[0] = v59 + v55 + 7;
  v76.i64[1] = v59 + v55 + 6;
  v77.i64[0] = v59 + v55 + 9;
  v77.i64[1] = v59 + v55 + 8;
  v78 = vandq_s8(v77, *&STACK[0x290]);
  v79 = vandq_s8(v76, *&STACK[0x290]);
  v80 = vandq_s8(v75, *&STACK[0x290]);
  v81 = vandq_s8(v74, *&STACK[0x290]);
  v82 = vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL);
  v83 = vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL);
  v84 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v85 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v86 = vaddq_s64(v84, v60);
  v87 = vaddq_s64(v83, v60);
  v88 = vorrq_s8(vandq_s8(vsubq_s64(v71, v85), v63), vandq_s8(vaddq_s64(v85, v60), a55));
  v89 = vsubq_s64(v71, v84);
  v90 = vsubq_s64(v71, v83);
  v91 = vandq_s8(vsubq_s64(v71, v82), v63);
  v92 = vandq_s8(vaddq_s64(v82, v60), a55);
  v93 = vorrq_s8(vandq_s8(v89, v63), vandq_s8(v86, a55));
  v94 = vorrq_s8(vandq_s8(v90, v63), vandq_s8(v87, a55));
  v95 = vorrq_s8(v91, v92);
  v96 = veorq_s8(v95, a54);
  v97 = veorq_s8(v94, a54);
  v98 = veorq_s8(v94, a53);
  v99 = veorq_s8(v95, a53);
  v100 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98), v62);
  v101 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v99), v62);
  v102 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v103 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v104 = vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL);
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v103);
  v106 = veorq_s8(vaddq_s64(v104, v102), a50);
  v107 = veorq_s8(v105, a50);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v109 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v110 = vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL);
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v109);
  v112 = vaddq_s64(v110, v108);
  v113 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v112, v112), v64), v112), v65), v66);
  v114 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v111, v111), v64), v111), v65), v66);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v116 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v117 = vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL);
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v116);
  v119 = veorq_s8(vaddq_s64(v117, v115), v67);
  v120 = veorq_s8(v118, v67);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v122 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v123 = vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL);
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v122);
  v125 = vaddq_s64(v123, v121);
  v126 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v125, v125), v68), v125), v69), v70);
  v127 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v124, v124), v68), v124), v69), v70);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v129 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v130 = vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL);
  v131 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v129);
  v132 = veorq_s8(vaddq_s64(v130, v128), v72);
  v133 = veorq_s8(v131, v72);
  v134 = vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL);
  v135 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v136 = veorq_s8(v132, v134);
  v134.i64[0] = v59 + v55 - 1;
  v134.i64[1] = v59 + v55 - 2;
  v231.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v136), a29), vnegq_s64(vandq_s8(vshlq_n_s64(v74, 3uLL), v61)));
  v231.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v135), a29), vnegq_s64(vandq_s8(vshlq_n_s64(v75, 3uLL), v61)));
  v137 = veorq_s8(v93, a54);
  v138 = veorq_s8(v93, a53);
  v139 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v138), v62);
  v140 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v141 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v140), a50);
  v142 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v143 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v142);
  v144 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v143, v143), v64), v143), v65), v66);
  v145 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v146 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v145), v67);
  v147 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v148 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v147);
  v149 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v148, v148), v68), v148), v69), v70);
  v150 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v151 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL), v150), v72);
  v152 = veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v153 = vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL);
  v151.i64[0] = v59 + v55 + 1;
  v151.i64[1] = v59 + v55;
  v154 = vaddq_s64(v153, v152);
  v155 = vandq_s8(v151, *&STACK[0x290]);
  v231.val[1] = vshlq_u64(veorq_s8(v154, a29), vnegq_s64(vandq_s8(vshlq_n_s64(v76, 3uLL), v61)));
  v156 = veorq_s8(v88, a54);
  v157 = veorq_s8(v88, a53);
  v158 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v157), v62);
  v159 = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v160 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v159), a50);
  v161 = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v162 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v161);
  v163 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v162, v162), v64), v162), v65), v66);
  v164 = veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL));
  v165 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v164), v67);
  v166 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL));
  v167 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166);
  v168 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v167, v167), v68), v167), v69), v70);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v170 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169), v72);
  v171 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v172 = vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL);
  v173 = vandq_s8(v134, *&STACK[0x290]);
  v174 = vaddq_s64(v172, v171);
  v175 = vandq_s8(*&STACK[0x2C0], *&STACK[0x290]);
  v231.val[0] = vshlq_u64(veorq_s8(v174, a29), vnegq_s64(vandq_s8(vshlq_n_s64(v77, 3uLL), v61)));
  v176 = vandq_s8(*&STACK[0x2D0], *&STACK[0x290]);
  v177 = vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL);
  v178 = vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL);
  v179 = vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL);
  v180 = vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL);
  v181 = vorrq_s8(vandq_s8(vsubq_s64(v71, v180), v63), vandq_s8(vaddq_s64(v180, v60), a55));
  v182 = vorrq_s8(vandq_s8(vsubq_s64(v71, v179), v63), vandq_s8(vaddq_s64(v179, v60), a55));
  v183 = vorrq_s8(vandq_s8(vsubq_s64(v71, v178), v63), vandq_s8(vaddq_s64(v178, v60), a55));
  v184 = vorrq_s8(vandq_s8(vsubq_s64(v71, v177), v63), vandq_s8(vaddq_s64(v177, v60), a55));
  v178.i64[0] = vqtbl4q_s8(v231, *&STACK[0x2A0]).u64[0];
  v231.val[0] = veorq_s8(v184, a54);
  v231.val[1] = veorq_s8(v183, a54);
  v231.val[2] = veorq_s8(v183, a53);
  v231.val[3] = veorq_s8(v184, a53);
  v231.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v231.val[1], 0x38uLL), v231.val[1], 8uLL), v231.val[2]), v62);
  v231.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v231.val[0], 0x38uLL), v231.val[0], 8uLL), v231.val[3]), v62);
  v185 = vsraq_n_u64(vshlq_n_s64(v231.val[2], 3uLL), v231.val[2], 0x3DuLL);
  v231.val[2] = veorq_s8(v231.val[0], vsraq_n_u64(vshlq_n_s64(v231.val[3], 3uLL), v231.val[3], 0x3DuLL));
  v231.val[3] = veorq_s8(v231.val[1], v185);
  v186 = vsraq_n_u64(vshlq_n_s64(v231.val[0], 0x38uLL), v231.val[0], 8uLL);
  v231.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v231.val[1], 0x38uLL), v231.val[1], 8uLL), v231.val[3]);
  v231.val[1] = veorq_s8(vaddq_s64(v186, v231.val[2]), a50);
  v187 = vsraq_n_u64(vshlq_n_s64(v231.val[2], 3uLL), v231.val[2], 0x3DuLL);
  v231.val[0] = veorq_s8(v231.val[0], a50);
  v231.val[2] = veorq_s8(v231.val[0], vsraq_n_u64(vshlq_n_s64(v231.val[3], 3uLL), v231.val[3], 0x3DuLL));
  v231.val[3] = veorq_s8(v231.val[1], v187);
  v188 = vsraq_n_u64(vshlq_n_s64(v231.val[0], 0x38uLL), v231.val[0], 8uLL);
  v231.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v231.val[1], 0x38uLL), v231.val[1], 8uLL), v231.val[3]);
  v231.val[1] = vaddq_s64(v188, v231.val[2]);
  v231.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v231.val[1], v231.val[1]), v64), v231.val[1]), v65), v66);
  v231.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v231.val[0], v231.val[0]), v64), v231.val[0]), v65), v66);
  v189 = vsraq_n_u64(vshlq_n_s64(v231.val[2], 3uLL), v231.val[2], 0x3DuLL);
  v231.val[2] = veorq_s8(v231.val[0], vsraq_n_u64(vshlq_n_s64(v231.val[3], 3uLL), v231.val[3], 0x3DuLL));
  v231.val[3] = veorq_s8(v231.val[1], v189);
  v190 = vsraq_n_u64(vshlq_n_s64(v231.val[0], 0x38uLL), v231.val[0], 8uLL);
  v231.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v231.val[1], 0x38uLL), v231.val[1], 8uLL), v231.val[3]);
  v231.val[1] = veorq_s8(vaddq_s64(v190, v231.val[2]), v67);
  v191 = vsraq_n_u64(vshlq_n_s64(v231.val[2], 3uLL), v231.val[2], 0x3DuLL);
  v231.val[0] = veorq_s8(v231.val[0], v67);
  v231.val[2] = veorq_s8(v231.val[0], vsraq_n_u64(vshlq_n_s64(v231.val[3], 3uLL), v231.val[3], 0x3DuLL));
  v231.val[3] = veorq_s8(v231.val[1], v191);
  v192 = vsraq_n_u64(vshlq_n_s64(v231.val[0], 0x38uLL), v231.val[0], 8uLL);
  v231.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v231.val[1], 0x38uLL), v231.val[1], 8uLL), v231.val[3]);
  v231.val[1] = vaddq_s64(v192, v231.val[2]);
  v231.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v231.val[1], v231.val[1]), v68), v231.val[1]), v69), v70);
  v231.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v231.val[0], v231.val[0]), v68), v231.val[0]), v69), v70);
  v193 = vsraq_n_u64(vshlq_n_s64(v231.val[2], 3uLL), v231.val[2], 0x3DuLL);
  v231.val[2] = veorq_s8(v231.val[0], vsraq_n_u64(vshlq_n_s64(v231.val[3], 3uLL), v231.val[3], 0x3DuLL));
  v231.val[3] = veorq_s8(v231.val[1], v193);
  v194 = vsraq_n_u64(vshlq_n_s64(v231.val[0], 0x38uLL), v231.val[0], 8uLL);
  v231.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v231.val[1], 0x38uLL), v231.val[1], 8uLL), v231.val[3]);
  v231.val[1] = veorq_s8(vaddq_s64(v194, v231.val[2]), v72);
  v195 = vsraq_n_u64(vshlq_n_s64(v231.val[2], 3uLL), v231.val[2], 0x3DuLL);
  v231.val[0] = veorq_s8(v231.val[0], v72);
  v231.val[2] = veorq_s8(v231.val[0], vsraq_n_u64(vshlq_n_s64(v231.val[3], 3uLL), v231.val[3], 0x3DuLL));
  v231.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v231.val[1], 0x38uLL), v231.val[1], 8uLL), veorq_s8(v231.val[1], v195)), a29), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x2D0], 3uLL), v61)));
  v231.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v231.val[0], 0x38uLL), v231.val[0], 8uLL), v231.val[2]), a29), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x2C0], 3uLL), v61)));
  v196 = veorq_s8(v182, a54);
  v197 = veorq_s8(v182, a53);
  v198 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL), v197), v62);
  v199 = veorq_s8(v198, vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL));
  v200 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), v199), a50);
  v201 = veorq_s8(v200, vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL));
  v202 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), v201);
  v203 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v202, v202), v64), v202), v65), v66);
  v204 = veorq_s8(v203, vsraq_n_u64(vshlq_n_s64(v201, 3uLL), v201, 0x3DuLL));
  v205 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL), v204), v67);
  v206 = veorq_s8(v205, vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL));
  v207 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL), v206);
  v208 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v207, v207), v68), v207), v69), v70);
  v209 = veorq_s8(v208, vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL));
  v210 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL), v209), v72);
  v231.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v210, 0x38uLL), v210, 8uLL), veorq_s8(v210, vsraq_n_u64(vshlq_n_s64(v209, 3uLL), v209, 0x3DuLL))), a29), vnegq_s64(vandq_s8(vshlq_n_s64(v134, 3uLL), v61)));
  v211 = veorq_s8(v181, a54);
  v212 = veorq_s8(v181, a53);
  v213 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL), v212), v62);
  v214 = veorq_s8(v213, vsraq_n_u64(vshlq_n_s64(v212, 3uLL), v212, 0x3DuLL));
  v215 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v213, 0x38uLL), v213, 8uLL), v214), a50);
  v216 = vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL);
  v217 = vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL);
  v218 = veorq_s8(v215, v216);
  v219 = vaddq_s64(v217, v218);
  v220 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v219, v219), v64), v219), v65), v66);
  v221 = veorq_s8(v220, vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL));
  v222 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL), v221), v67);
  v223 = vsraq_n_u64(vshlq_n_s64(v221, 3uLL), v221, 0x3DuLL);
  v224 = vsraq_n_u64(vshlq_n_s64(v222, 0x38uLL), v222, 8uLL);
  v225 = veorq_s8(v222, v223);
  v226 = vaddq_s64(v224, v225);
  v227 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v226, v226), v68), v226), v69), v70);
  v228 = veorq_s8(v227, vsraq_n_u64(vshlq_n_s64(v225, 3uLL), v225, 0x3DuLL));
  v229 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL), v228), v72);
  v231.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL), veorq_s8(v229, vsraq_n_u64(vshlq_n_s64(v228, 3uLL), v228, 0x3DuLL))), a29), vnegq_s64(vandq_s8(vshlq_n_s64(v151, 3uLL), v61)));
  v178.i64[1] = vqtbl4q_s8(v231, *&STACK[0x2A0]).u64[0];
  v231.val[1] = vrev64q_s8(v178);
  *(v151.i64[1] - 6) = veorq_s8(vextq_s8(v231.val[1], v231.val[1], 8uLL), *(v56 + a3));
  return (*(v57 + 8 * (((a8 != 0) * v58) ^ a7)))();
}

uint64_t sub_1002B8680@<X0>(unsigned int a1@<W1>, unsigned int a2@<W8>)
{
  v8 = a1 < 0x8F5E3B;
  *(v5 + v3 + 24) = *(v4 + v3);
  if (v8 == v3 + 1 > 0x626A1C2D)
  {
    v8 = v3 - 1651121197 < a2;
  }

  return (*(v6 + 8 * ((!v8 * v2) ^ v7)))();
}

uint64_t sub_1002B8718(int a1)
{
  v2 = ((LODWORD(STACK[0x2BC]) ^ 0xCD3C6173) + 519259180) ^ LODWORD(STACK[0x2BC]) ^ ((LODWORD(STACK[0x2BC]) ^ 0xBFFFFFFC) + 1815141029) ^ (((a1 - 29033764) ^ LODWORD(STACK[0x2BC])) + 764062201) ^ ((LODWORD(STACK[0x2BC]) ^ LODWORD(STACK[0x3C8]) ^ 0xA0B64EE1) + 1937370577);
  v3 = (a1 + 4762) ^ 0x2237;
  v5 = v2 != 741399207 && ((a1 - 37301) & v2) == 7;
  LODWORD(STACK[0x3C8]) = v3;
  v6 = *(v1 + 8 * ((v5 * (v3 - 34212)) ^ (a1 + 4762)));
  LODWORD(STACK[0x3C4]) = -42899;
  return v6();
}

uint64_t sub_1002B8890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  STACK[0x7548] = a8;
  STACK[0x77B0] = (&STACK[0x18B8] ^ 0x7FAEF4A7DFFDEBFFLL) - 0x7FAEF4A7DFFDEBFFLL + ((&STACK[0x18B8] << (((v8 + 57) & 0x3Bu) - 58)) & 0xFF5DE94FBFFBD7F0);
  LODWORD(STACK[0x648C]) = 1927877979;
  return (*(STACK[0xF18] + 8 * v8))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_1002B8994()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0xD6B7)))(v0);
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1002B8AC4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  v28 = *(v25 + 24);
  v29 = *(v25 + 40) + v26;
  v30 = *(v22 + 8 * (v24 - 5278));
  v31 = *(v30 - 527405895);
  v32 = *(v22 + 8 * (v24 ^ 0x6AF)) + 4 * v31;
  v33 = *(v32 - 1940437438);
  v34 = ((v23 + a1) ^ a1) + ((v23 + a1) ^ a1) * v33;
  if (v23 == (v24 ^ 0x1C59384) - 29721657)
  {
    v35 = *(v32 - 1940437438);
  }

  else
  {
    v35 = 0;
  }

  *(v32 - 1940437438) = (v34 + v35) * v33;
  *(v30 - 527405895) = (v31 + 1) % 6u;
  v36 = (*(v27 + 8 * (v24 + 45828)))(*(v22 + 8 * (v24 - 2269)) - 692123006, &a22, 16);
  return (*(v27 + 8 * ((15038 * (v29 - (v28 + v26) == 473171078)) ^ v24)))(v36);
}

uint64_t sub_1002B8E64()
{
  v1 = v0 - 9717;
  v2 = v0 + 27;
  v3 = STACK[0x1A68];
  v4 = LODWORD(STACK[0x6BEC]) - 824251454;
  STACK[0x7690] -= 96;
  v5 = 353670337 * ((&STACK[0x10000] + 3800) ^ 0xB421F83D);
  STACK[0x10EF0] = *(STACK[0x29E8] + 352);
  STACK[0x10EE8] = v3;
  LODWORD(STACK[0x10ED8]) = (v4 ^ 0x7EDB3BFF) - v5 - 704778340 + ((v4 << (v2 ^ 0xA8)) & 0xFDB677FE);
  LODWORD(STACK[0x10EE0]) = v1 - v5 + 41268;
  v6 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 + 45094)))(&STACK[0x10ED8]);
  v7 = (*(v6 + 8 * (v1 + 45072)))(v3);
  return (*(v6 + 8 * v1))(v7);
}

uint64_t sub_1002B902C()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 34579;
  v2 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x98F8) + v1)))();
}

uint64_t sub_1002B9100()
{
  STACK[0x3508] = STACK[0x29E8];
  LODWORD(STACK[0x503C]) = 1812439553;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1002B9138()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 31160)))();
  STACK[0x56C8] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1002B916C@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>, __n128 a6@<Q4>, __n128 a7@<Q5>, int8x16_t a8@<Q6>)
{
  v21 = *(v9 + 8 * (v10 - 16539)) - 1368831626;
  v22.i8[0] = *(v21 + (*(a1 + v8) - 7));
  v22.i8[1] = *(v21 + (*(a1 + v8 + 1) - 7));
  v22.i8[2] = *(v21 + (*(a1 + v8 + 2) - 7));
  v22.i8[3] = *(v21 + (*(a1 + v8 + 3) - 7));
  v22.i8[4] = *(v21 + (*(a1 + v8 + 4) - 7));
  v22.i8[5] = *(v21 + (*(a1 + v8 + 5) - 7));
  v22.i8[6] = *(v21 + (*(a1 + ((v10 + v11) & v12 ^ 0x74CCLL | v8)) - 7));
  v22.i8[7] = *(v21 + (*(a1 + v8 + 7) - 7));
  v22.i8[8] = *(v21 + (*(a1 + v8 + 8) - 7));
  v22.i8[9] = *(v21 + (*(a1 + v8 + 9) - 7));
  v22.i8[10] = *(v21 + (*(a1 + v8 + 10) - 7));
  v22.i8[11] = *(v21 + (*(a1 + v8 + 11) - 7));
  v22.i8[12] = *(v21 + (*(a1 + v8 + 12) - 7));
  v22.i8[13] = *(v21 + (*(a1 + v8 + 13) - 7));
  v23.i64[0] = 0xBABABABABABABABALL;
  v23.i64[1] = 0xBABABABABABABABALL;
  v24 = vsubq_s8(a8, vandq_s8(vaddq_s8(a8, a8), v23));
  v22.i8[14] = *(v21 + (*(a1 + v8 + 14) - 7));
  v23.i64[0] = 0x5D5D5D5D5D5D5D5DLL;
  v23.i64[1] = 0x5D5D5D5D5D5D5D5DLL;
  v25 = vaddq_s8(v24, v23);
  v22.i8[15] = *(v21 + (*(a1 + v8 + 15) - 7));
  *(a1 + v8) = vaddq_s8(vaddq_s8(veorq_s8(veorq_s8(vaddq_s8(veorq_s8(v25, v14), v15), vaddq_s8(veorq_s8(v25, v16), v17)), vaddq_s8(veorq_s8(v25, v18), v19)), v20), v22);
  return (*(STACK[0xF18] + 8 * ((11970 * (v8 == 64)) ^ v10)))(a2, a3, a4, a5, a6, a7, vaddq_s8(a8, v13));
}

uint64_t sub_1002B93E0()
{
  v0 = (STACK[0xF10] + 1998859972) & 0x88DB4776;
  v1 = STACK[0xF10] + 9198;
  v2 = STACK[0xA810];
  LODWORD(STACK[0x99D0]) = LODWORD(STACK[0xA810]) - 1462161337;
  v3 = (v0 ^ 0x9BEE0D8F) + v2;
  v4 = v3 < 0xF4450135;
  v5 = v3 > LODWORD(STACK[0x36E8]) - 196804299;
  if (LODWORD(STACK[0x36E8]) > 0xBBAFECA != v4)
  {
    v5 = v4;
  }

  return (*(STACK[0xF18] + 8 * ((29 * !v5) ^ v1)))();
}

uint64_t sub_1002B948C()
{
  v1 = STACK[0x1E08];
  STACK[0x10EE0] = *STACK[0x1E08];
  LODWORD(STACK[0x10ED8]) = (v0 - 1762640496) ^ (906386353 * (&STACK[0x10ED8] ^ 0x3101CD24));
  v2 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 + 37050)))(&STACK[0x10ED8]);
  v3 = STACK[0x17E8];
  v1[2] = *(STACK[0x17E8] + 48);
  v1[3] = *(v3 + 56);
  v4 = *v1;
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * (((&STACK[0x10ED8] | 0x71EFF540) - (&STACK[0x10ED8] | 0x8E100ABF) - 1911551297) ^ 0x97C9EE8F) + 296773899;
  STACK[0x10ED8] = v4;
  (*(v2 + 8 * (v0 + 37067)))(&STACK[0x10ED8]);
  v5 = STACK[0x8A68];
  v6 = 297845113 * ((-2 - ((~&STACK[0x10ED8] | 0xBEF7BEF7) + (&STACK[0x10ED8] | 0x41084108))) ^ 0xC9C4A269);
  LOBYTE(STACK[0x10EE4]) = v6 + 10;
  STACK[0x10EE8] = v1;
  LODWORD(STACK[0x10EDC]) = ((v0 + 97959728) & 0xFA293FF6 ^ 0xD512C8B4) + v6 + v5;
  LODWORD(STACK[0x10ED8]) = v0 - v6 - 5368;
  v7 = (*(v2 + 8 * (v0 + 37231)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * v0))(v7);
}

uint64_t sub_1002B9630(uint64_t a1, uint64_t a2)
{
  v2 = STACK[0xF10] - 4234;
  v3 = (STACK[0xF10] + 687547456) & 0xD704DBBF;
  v4 = (STACK[0xF10] + 782793591) | 0xD156F944;
  v5 = *(STACK[0x29C0] + 24);
  STACK[0x3738] = v5;
  return (*(STACK[0xF18] + 8 * (((v5 != 0) * (v4 ^ v3 ^ 0xFFFF74CA)) ^ v2)))(a1, a2, 371891400);
}

uint64_t sub_1002B96B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  LODWORD(STACK[0x926C]) = -371865839;
  LODWORD(STACK[0x5B94]) = -371865839;
  STACK[0x54C0] = 0;
  LODWORD(STACK[0x4F38]) = -371865839;
  LODWORD(STACK[0x3A7C]) = -371865839;
  STACK[0x68D0] = 0;
  return (*(STACK[0xF18] + 8 * ((6372 * (v3 == ((a3 - 371916732) ^ (a3 + 16212)))) ^ a3)))(a1, a2, 371891535);
}

uint64_t sub_1002B9848()
{
  if ((((v1 & 0xFF0000 ^ 0xFFF684E8) - 1703271271) ^ ((v1 & 0xFF0000 ^ 0x70BB3244) + 355963445) ^ (((v0 - 31575) ^ 0xEA14505E) + (v1 & 0xFF0000 ^ 0x8F98B6AC))) - 1700700274 < 0xFFFAFFFF)
  {
    v2 = 371891418;
  }

  return (*(STACK[0xF18] + 8 * ((979 * (v2 != -371865839)) ^ v0)))();
}

uint64_t sub_1002B98F4()
{
  v4 = v0;
  STACK[0x10EE0] = v1;
  LODWORD(STACK[0x10EE8]) = (v3 - 29490) ^ (((~(&STACK[0x10000] + 3800) & 0xB1C30CA4 | (&STACK[0x10000] + 3800) & 0x4E3CF358) ^ 0xBD3ED36) * v2);
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v3 + 16462)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * v4))(v6);
}

uint64_t sub_1002B9A18()
{
  v0 = 430 * (STACK[0xF10] ^ 0x8B2A);
  v1 = STACK[0xF10] - 26354;
  v2 = LODWORD(STACK[0x8794]) - 7306;
  LODWORD(STACK[0xED0]) = v0;
  LODWORD(STACK[0x5E98]) = v2 + v0;
  STACK[0x5368] = STACK[0x2C78];
  LODWORD(STACK[0x44B4]) = STACK[0x4ECC];
  LODWORD(STACK[0x2CE8]) = -2129800620;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1002B9B04()
{
  v1 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1983)))();
}

uint64_t sub_1002B9BB8()
{
  LODWORD(STACK[0xEC0]) = (v0 - 3387) | 0x1198;
  v1 = STACK[0x29E8];
  v2 = *(STACK[0x29E8] + 152);
  STACK[0x8420] = v2;
  LODWORD(STACK[0x10ED8]) = (v0 + 27056) ^ (1603510583 * ((~&STACK[0x10ED8] & 0x573D0274 | &STACK[0x10ED8] & 0xA8C2FD88) ^ 0xC0E630DF));
  v3 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 ^ 0xDC0A)))(&STACK[0x10ED8]);
  LODWORD(STACK[0xED0]) = STACK[0x10EDC];
  v4 = v1 + 36;
  v5 = STACK[0x7690];
  v6 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x4B50] = v6;
  STACK[0x70E8] = v6;
  STACK[0x8610] = (v6 + 16);
  STACK[0x6980] = (v6 + 48);
  STACK[0x7690] = v5 + 96;
  STACK[0x3D28] = 0;
  LODWORD(STACK[0x390C]) = *v2;
  v7 = STACK[0xEC0];
  LODWORD(v5) = 1112314453 * (((&STACK[0x10ED8] | 0x95527B7D) - (&STACK[0x10ED8] & 0x95527B78)) ^ 0x7A0451A4);
  LODWORD(STACK[0x10ED8]) = v0 - v5 + 21675;
  STACK[0x10EE0] = v6;
  LOWORD(STACK[0x10EDC]) = 28827 - v5;
  (*(v3 + 8 * (v0 ^ 0xDB66)))(&STACK[0x10ED8]);
  v8 = STACK[0xED0];
  v9 = ((*v6 % 9u) ^ 0x7E) + (v7 ^ 0x31) + ((2 * (*v6 % 9u)) & 0x1C);
  *v6 = v9;
  STACK[0x6DF8] = v4;
  LODWORD(STACK[0x41E4]) = v8;
  STACK[0x71A0] = v6;
  LODWORD(STACK[0x7A74]) = (v9 ^ 0x768FDAFF) + 2 * v9 - 872579076;
  STACK[0x64A8] = (v6 + 16);
  STACK[0x7A68] = (v6 + 48);
  LODWORD(STACK[0x3430]) = 1048778732;
  return (*(v3 + 8 * v0))(&off_1010A0B50);
}

uint64_t sub_1002B9E10(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, int a6, char a7, uint64_t a8)
{
  v16 = *(v10 + 8);
  v17 = (a3 ^ 0x20004806 ^ (634 * (((v14 + 584) | 0x7450) ^ 0x76C8))) & (2 * (a3 & 0xB52A6F37)) ^ a3 & 0xB52A6F37;
  v18 = ((2 * (a3 ^ 0x1BBFFA02)) ^ 0x5D2B2A6A) & (a3 ^ 0x1BBFFA02) ^ (2 * (a3 ^ 0x1BBFFA02)) & a4;
  v19 = v18 ^ 0xA2949515;
  v20 = (v18 ^ 0xE050021) & (4 * v17) ^ v17;
  v21 = ((4 * v19) ^ 0xBA5654D4) & v19 ^ (4 * v19) & a4;
  v22 = (v21 ^ 0xAA141410) & (16 * v20) ^ v20;
  v23 = ((16 * (v21 ^ 0x4818121)) ^ 0xE9595350) & (v21 ^ 0x4818121) ^ (16 * (v21 ^ 0x4818121)) & 0xAE959510;
  v24 = v22 ^ 0xAE959535 ^ (v23 ^ 0xA8111100) & (v22 << 8);
  v25 = v9 ^ (4 * ((v24 << 16) & v13 ^ v24 ^ ((v24 << 16) ^ 0x15350000) & (((v23 ^ 0x6848425) << 8) & v13 ^ 0x2A000000 ^ (((v23 ^ 0x6848425) << 8) ^ 0x15950000) & (v23 ^ 0x6848425))));
  v26 = *(v10 + 32);
  v27 = (v16 + ((((v25 ^ 0x659F27C7) + 1295587821) ^ ((v25 ^ 0xB65283AA) - 1628127870) ^ ((v25 ^ 0x139B2ED7) + 993857789)) + 386878374) % v26);
  v28 = *v27;
  LODWORD(v27) = ((v27 ^ *(v12 + (v15 & a5))) & 0x7FFFFFFF) * a6;
  v29 = (v27 ^ (v27 >> 16)) * a6;
  v30 = (v16 + v8 % v26);
  LOBYTE(v19) = *v30;
  LODWORD(v30) = ((*(*STACK[0xE50] + (*STACK[0xE58] & a5)) ^ v30) & 0x7FFFFFFF) * a6;
  v31 = (v30 ^ (v30 >> 16)) * a6;
  LODWORD(v29) = ((*(a2 + (v29 >> 24)) ^ v28 ^ *((v29 >> 24) + a8 + 2) ^ *((v29 >> 24) + a1 + 4)) ^ (v29 ^ (BYTE3(v29) * a7))) & 0x1F;
  LODWORD(v31) = ((*(a2 + (v31 >> 24)) ^ v19 ^ *((v31 >> 24) + a8 + 2) ^ *((v31 >> 24) + a1 + 4)) ^ (v31 ^ (BYTE3(v31) * a7))) & 0x1F;
  return (*(STACK[0xF18] + 8 * ((((((((v31 | 0x40) ^ v29) - v14) | (v14 - ((v31 | 0x40) ^ v29))) & 0x80) == 0) * v11) ^ (v14 + 26791))))();
}

uint64_t sub_1002BA174()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((v0 + 1291646946) & 0xB30317EF) - 844) ^ v0)))(3204694014, 1090286692, 4294923066, 35593, 4294941560, 1194047912, 35641, 1090303727);
}

uint64_t sub_1002BA21C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x6570]) = a1;
  v2 = a1 == v1 - 371901482;
  LOBYTE(STACK[0x9797]) = v2;
  return (*(STACK[0xF18] + 8 * ((31335 * v2) ^ (v1 - 32598))))();
}

uint64_t sub_1002BA264@<X0>(uint64_t a1@<X8>)
{
  STACK[0x10ED8] = *(a1 + 8);
  LODWORD(STACK[0x10EE0]) = v1 + 155453101 * ((((2 * &STACK[0x10ED8]) | 0x2A1417F8) - &STACK[0x10ED8] - 352979964) ^ 0xF32C1033) + 296753103;
  v2 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 ^ 0x41F1)))(&STACK[0x10ED8]);
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v1 - 1762661292) ^ (906386353 * (((&STACK[0x10ED8] | 0x45E237D4) - (&STACK[0x10ED8] & 0x45E237D0)) ^ 0x74E3FAF0));
  v3 = (*(v2 + 8 * (v1 ^ 0x4182)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * ((*STACK[0x970] <= ((v1 - 30246) ^ 0x1515)) ^ (v1 - 2139))))(v3);
}

uint64_t sub_1002BA378()
{
  v1 = (((LODWORD(STACK[0x6168]) ^ 0xEE5232067E1264B0) + 0x11ADCDF981ED9B50) ^ ((LODWORD(STACK[0x6168]) ^ 0x47BB0A4BD47CAEF4) - 0x47BB0A4BD47CAEF4) ^ ((LODWORD(STACK[0x6168]) ^ 0xA9E9384D43BB0D55) + (v0 ^ 0x5616C7B24FB073D5))) + 0x3AE1413AF7325DD3;
  STACK[0x8858] = v1;
  STACK[0x5C50] = v1;
  LODWORD(STACK[0x1374]) = 1668007534;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0xF3F49633 ^ (14801 * (v0 == -1738566326)))))();
}

uint64_t sub_1002BA4F4()
{
  v1 = STACK[0xF10] - 2573;
  *STACK[0xB4D8] = v0;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1002BA51C@<X0>(uint64_t a1@<X8>)
{
  v17 = (v2 + v3);
  v18 = *(*v11 + (*v14 & v9));
  v19 = *v17;
  v20 = (a1 + v4);
  v21 = (((((v17 ^ v18) & 0x7FFFFFFF) * v15) >> v6) ^ (((v17 ^ v18) & 0x7FFFFFFF) * v15)) * v15;
  v22 = ((((v20 ^ v18) & 0x7FFFFFFF) * v15) ^ ((((v20 ^ v18) & 0x7FFFFFFF) * v15) >> 16)) * v15;
  *v20 = *(v7 + (v21 >> 24)) ^ v19 ^ *(v8 + (v21 >> 24)) ^ *((v21 >> 24) + v12 + 5) ^ *(v7 + (v22 >> 24)) ^ *(v8 + (v22 >> 24)) ^ *((v22 >> 24) + v12 + 5) ^ v21 ^ v22 ^ (BYTE3(v21) * v1) ^ (BYTE3(v22) * v1);
  return (*(v10 + 8 * (((v5 == 0) * v13) ^ v16)))();
}

uint64_t sub_1002BA650@<X0>(uint64_t a1@<X6>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, int a52, int a53, int a54, int a55, int a56, int a57, int a58, int a59, int a60, int a61, int a62, int a63)
{
  LODWORD(STACK[0x3C4]) = v81;
  LODWORD(STACK[0x2AC]) = 0;
  v82 = STACK[0x3DC];
  v83 = 1152 * (LODWORD(STACK[0x3DC]) ^ 0xA2C2);
  v84 = LODWORD(STACK[0x3DC]) ^ 0xA2FC;
  v85 = v81 | 6;
  STACK[0x3A0] = v85;
  v86 = STACK[0x2A0];
  v87 = (STACK[0x2A0] + v85);
  v88 = *(a2 + (v80 & a1));
  LODWORD(STACK[0x2F0]) = v83;
  v89 = ((1864610357 * ((v87 ^ v88) & 0x7FFFFFFF)) ^ ((1864610357 * ((v87 ^ v88) & 0x7FFFFFFF)) >> 16)) * (v83 ^ 0x6F238435);
  v90 = *(&off_1010A0B50 + v82 - 41603) - 287227067;
  v91 = *(&off_1010A0B50 + v82 - 37806) - 108262206;
  v92 = *(&off_1010A0B50 + (v82 ^ 0xACAE)) - 1859844606;
  v93 = *v87 ^ v90[v89 >> 24] ^ v91[(140 * v84 - 6997) + (v89 >> 24)] ^ v92[v89 >> 24] ^ v89 ^ (-69 * BYTE3(v89));
  v94 = v81 | 1;
  STACK[0x350] = v94;
  v95 = (v86 + v94);
  LOBYTE(v84) = *v95;
  v96 = 1864610357 * ((1864610357 * ((v95 ^ v88) & 0x7FFFFFFF)) ^ ((1864610357 * ((v95 ^ v88) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v92) = v84 ^ v90[v96 >> 24] ^ v91[(v96 >> 24) + 3] ^ v96 ^ v92[v96 >> 24] ^ (-69 * BYTE3(v96)) ^ 0x43;
  v97 = v81 | 2;
  STACK[0x360] = v97;
  v98 = (v86 + v97);
  v99 = 1864610357 * ((1864610357 * ((v98 ^ v88) & 0x7FFFFFFF)) ^ ((1864610357 * ((v98 ^ v88) & 0x7FFFFFFF)) >> 16));
  v100 = *(&off_1010A0B50 + (v82 ^ 0xAE70)) - 908456114;
  v101 = *(&off_1010A0B50 + v82 - 41463) - 1828603855;
  v102 = *(&off_1010A0B50 + v82 - 39988) - 351369206;
  v103 = v99 ^ *v98 ^ (-41 * BYTE3(v99)) ^ v100[v99 >> 24] ^ v101[(v99 >> 24) + 1] ^ v102[v99 >> 24];
  v104 = v81 | 0xELL;
  STACK[0x340] = v104;
  v105 = (v86 + v104);
  LODWORD(v98) = *v105;
  v106 = *STACK[0x3D0];
  STACK[0x328] = v106;
  v107 = *STACK[0x3C8];
  STACK[0x320] = v107;
  LODWORD(v106) = *(v107 + (v106 & a1));
  v108 = 1864610357 * ((1864610357 * ((v106 ^ v105) & 0x7FFFFFFF)) ^ ((1864610357 * ((v106 ^ v105) & 0x7FFFFFFF)) >> 16));
  STACK[0x2F8] = v98 ^ v100[v108 >> 24] ^ v101[(v108 >> 24) + 1] ^ v102[v108 >> 24] ^ v108 ^ (-41 * (v108 >> 24)) ^ 0x39;
  v109 = v81 | 3;
  STACK[0x3A8] = v109;
  v110 = 1864610357 * ((1864610357 * ((v106 ^ (v86 + v109)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v106 ^ (v86 + v109)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v109) = v100[v110 >> 24] ^ *(v86 + v109) ^ v101[(v110 >> 24) + 1] ^ v110 ^ v102[v110 >> 24] ^ (-41 * ((1864610357 * ((1864610357 * ((v106 ^ (v86 + v109)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v106 ^ (v86 + v109)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v111 = v81 | 0xFLL;
  STACK[0x378] = v111;
  v112 = (v86 + v111);
  v113 = 1864610357 * ((1864610357 * ((v106 ^ v112) & 0x7FFFFFFF)) ^ ((1864610357 * ((v106 ^ v112) & 0x7FFFFFFF)) >> 16));
  LODWORD(STACK[0x2F4]) = v113 ^ *v112 ^ (-41 * (v113 >> 24)) ^ v100[v113 >> 24] ^ v101[(v113 >> 24) + 1] ^ v102[v113 >> 24];
  v114 = v81 | 4;
  STACK[0x390] = v114;
  v115 = (v86 + v114);
  LOBYTE(v113) = *v115;
  v116 = 1864610357 * ((1864610357 * ((v106 ^ v115) & 0x7FFFFFFF)) ^ ((1864610357 * ((v106 ^ v115) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v113) = v113 ^ v100[v116 >> 24] ^ v101[(v116 >> 24) + 1] ^ v102[v116 >> 24];
  v117 = v81 | 5;
  STACK[0x370] = v117;
  v118 = v113 ^ v116 ^ (-41 * BYTE3(v116)) ^ 0xED;
  v119 = 1864610357 * ((1864610357 * ((v106 ^ (v86 + v117)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v106 ^ (v86 + v117)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v113) = *(v86 + v117) ^ v100[v119 >> 24] ^ v101[(v119 >> 24) + 1] ^ v119 ^ v102[v119 >> 24] ^ (-41 * BYTE3(v119)) ^ 0xDE;
  v120 = v81 | 0xBLL;
  STACK[0x318] = v120;
  v121 = (v86 + v120);
  LOBYTE(v117) = *v121;
  v122 = 1864610357 * ((1864610357 * ((v106 ^ v121) & 0x7FFFFFFF)) ^ ((1864610357 * ((v106 ^ v121) & 0x7FFFFFFF)) >> 16));
  v123 = v122 ^ v117 ^ (-41 * BYTE3(v122)) ^ v100[v122 >> 24] ^ v101[(v122 >> 24) + 1] ^ v102[v122 >> 24];
  v124 = v81 | 9;
  STACK[0x330] = v124;
  v125 = (v86 + v124);
  LOBYTE(v117) = *v125;
  v126 = 1864610357 * ((1864610357 * ((v106 ^ v125) & 0x7FFFFFFF)) ^ ((1864610357 * ((v106 ^ v125) & 0x7FFFFFFF)) >> 16));
  v127 = v117 ^ v100[v126 >> 24] ^ v101[(v126 >> 24) + 1] ^ v102[v126 >> 24] ^ v126 ^ (-41 * BYTE3(v126));
  v128 = v81 | 0xDLL;
  STACK[0x310] = v128;
  v129 = (v86 + v128);
  v130 = *v129;
  v131 = 1864610357 * ((1864610357 * ((v106 ^ v129) & 0x7FFFFFFF)) ^ ((1864610357 * ((v106 ^ v129) & 0x7FFFFFFF)) >> 16));
  v132 = v130 ^ v100[v131 >> 24] ^ v101[(v131 >> 24) + 1] ^ v131 ^ v102[v131 >> 24] ^ (-41 * BYTE3(v131)) ^ 0xBA;
  v133 = (v86 + v81);
  v134 = *v133;
  v135 = 1864610357 * ((1864610357 * ((v106 ^ v133) & 0x7FFFFFFF)) ^ ((1864610357 * ((v106 ^ v133) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v135) = v135 ^ v134 ^ (-41 * BYTE3(v135)) ^ v100[v135 >> 24] ^ v101[(v135 >> 24) + 1] ^ v102[v135 >> 24];
  v136 = STACK[0x230];
  LODWORD(v92) = *(STACK[0x230] + 4 * v92) - 111596652;
  v137 = STACK[0x218];
  v138 = *(STACK[0x218] + 4 * (v103 ^ 0x64u));
  v139 = STACK[0x228];
  v140 = STACK[0x240];
  v141 = v92 ^ (16 * v92) ^ (2 * v92) ^ v138 ^ *(STACK[0x228] + 4 * (v109 ^ 0xD0u)) ^ ((v109 ^ 0xD9F83EE6) + (v109 ^ 0xCD)) ^ *(STACK[0x240] + 4 * (v135 ^ 0xABu));
  v142 = v81 | 7;
  STACK[0x358] = v142;
  v143 = (v86 + v142);
  LOBYTE(v135) = *v143;
  v144 = 1864610357 * ((1864610357 * ((v106 ^ v143) & 0x7FFFFFFF)) ^ ((1864610357 * ((v106 ^ v143) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v144) = v100[v144 >> 24] ^ v135 ^ v101[(v144 >> 24) + 1] ^ v102[v144 >> 24] ^ v144 ^ (-41 * BYTE3(v144));
  HIDWORD(v145) = *(STACK[0x248] + 4 * (v93 ^ 0x12u));
  LODWORD(v145) = HIDWORD(v145);
  v146 = STACK[0x238];
  LODWORD(v113) = *(v136 + 4 * v113) - 111596652;
  v147 = (v145 >> 17) ^ ((v145 >> 17) >> 6) ^ ((v145 >> 17) >> 2) ^ *(STACK[0x238] + 4 * v118) ^ v113 ^ (2 * v113) ^ (16 * v113) ^ *(v139 + 4 * (v144 ^ 0xD0u)) ^ ((v144 ^ 0xD9F83EE6) + (v144 ^ 0xCD));
  v148 = v81 | 0xALL;
  STACK[0x338] = v148;
  v149 = 1864610357 * ((1864610357 * ((v106 ^ (v86 + v148)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v106 ^ (v86 + v148)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v149) = *(v86 + v148) ^ v100[v149 >> 24] ^ v101[(v149 >> 24) + 1] ^ v149 ^ v102[v149 >> 24] ^ (-41 * BYTE3(v149)) ^ 0x98;
  v150 = v81 | 8;
  STACK[0x300] = v81;
  STACK[0x348] = v150;
  v151 = (1864610357 * ((1864610357 * ((v106 ^ (v86 + v150)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v106 ^ (v86 + v150)) & 0x7FFFFFFF)) >> 16))) >> 24;
  v152 = STACK[0x210];
  HIDWORD(v145) = *(STACK[0x210] + 4 * (v123 ^ 0xA4u));
  LODWORD(v145) = HIDWORD(v145);
  LODWORD(v102) = (v145 >> 25) ^ ((v145 >> 25) >> 6) ^ ((v145 >> 25) >> 2) ^ (*(STACK[0x220] + 4 * (v127 ^ 0xEu)) - 238229685) ^ *(v137 + 4 * v149) ^ *(v146 + 4 * (((53 * ((53 * (v106 ^ (v86 + v150))) ^ ((1864610357 * ((v106 ^ (v86 + v150)) & 0x7FFFFFFF)) >> 16))) ^ *(v86 + v150) ^ (-41 * ((1864610357 * ((1864610357 * ((v106 ^ (v86 + v150)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v106 ^ (v86 + v150)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ v100[v151] ^ v101[v151 + 1] ^ v102[v151]) ^ 0x3Cu));
  v153 = v81 | 0xCLL;
  STACK[0x308] = v153;
  v154 = (v86 + v153);
  v155 = 1864610357 * ((1864610357 * ((v106 ^ (v86 + v153)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v106 ^ (v86 + v153)) & 0x7FFFFFFF)) >> 16));
  v156 = *(&off_1010A0B50 + (v82 ^ 0xA688));
  v157 = *(&off_1010A0B50 + v82 - 39489) - 1872431723;
  STACK[0x2D0] = v157;
  LOBYTE(v100) = v157[(v155 >> 24) + 2];
  v158 = *(&off_1010A0B50 + (v82 ^ 0xB00B)) - 1897877107;
  STACK[0x2C8] = v158;
  LOBYTE(v100) = v100 ^ *(v158 + (v155 >> 24));
  v156 -= 1090952426;
  STACK[0x2D8] = v154;
  LODWORD(v158) = *v154;
  STACK[0x2B8] = v156;
  LOBYTE(v156) = *(v156 + (v155 >> 24));
  LODWORD(STACK[0x2C4]) = v158;
  LOBYTE(v155) = v158 ^ v156 ^ v100 ^ v155 ^ (99 * BYTE3(v155)) ^ 0xCE;
  HIDWORD(v145) = *(v152 + 4 * (LODWORD(STACK[0x2F4]) ^ 0xCCu));
  LODWORD(v145) = HIDWORD(v145);
  LODWORD(v156) = *(v136 + 4 * v132) - 111596652;
  LODWORD(v107) = (v145 >> 25) ^ *(v137 + 4 * STACK[0x2F8]) ^ ((v145 >> 25) >> 2) ^ ((v145 >> 25) >> 6) ^ v156 ^ (2 * v156) ^ (16 * v156) ^ *(v140 + 4 * v155);
  LODWORD(v158) = STACK[0x204];
  LODWORD(STACK[0x2EC]) = v141;
  LODWORD(v152) = v158 ^ v141;
  v159 = *(&off_1010A0B50 + v82 - 40702) - 1295030542;
  LODWORD(v158) = *&v159[4 * (((v158 ^ v141) >> 24) ^ 0xBD)] - ((((v158 ^ v141) >> 24) - 2008629179) ^ ((v158 ^ v141) >> 24));
  v160 = *(&off_1010A0B50 + v82 - 41019) - 1133512755;
  LODWORD(STACK[0x2E4]) = v102;
  LODWORD(v92) = a80 ^ v102;
  LODWORD(v155) = *&v160[4 * ((a80 ^ v102) >> 8)];
  v161 = *(&off_1010A0B50 + v82 - 39562) - 961339642;
  LODWORD(STACK[0x2E8]) = v147;
  LODWORD(v156) = STACK[0x200];
  LODWORD(STACK[0x2B0]) = v147 ^ 0x75E68A37;
  LODWORD(v106) = v156 ^ v147 ^ 0x75E68A37;
  v162 = v106 ^ 0x2AED2F3;
  LODWORD(v101) = *&v161[4 * (((v106 ^ 0x2AED2F3) >> 24) ^ 0x65)] - (((v106 ^ 0x2AED2F3) >> 24) ^ 0xFC5C0EF8);
  v163 = *(&off_1010A0B50 + (v82 ^ 0xA80A)) - 1565182586;
  LODWORD(STACK[0x2B4]) = v107;
  LODWORD(v156) = a79 ^ v107;
  LODWORD(v158) = a78 ^ v158 ^ v155 ^ *&v163[4 * ((a79 ^ v107) >> 16)];
  LODWORD(v155) = v106 ^ 0xB;
  v164 = *(&off_1010A0B50 + v82 - 38823) - 829795071;
  v165 = *(&off_1010A0B50 + (v82 ^ 0xA892)) - 1708650018;
  LODWORD(v155) = v158 ^ (*&v164[4 * v155] + v162 + 1276084480);
  LODWORD(v140) = *&v165[4 * (BYTE1(v156) ^ 0xBA)] + (BYTE1(v156) ^ 0x5C84D6A0);
  LODWORD(v146) = *&v161[4 * ((v92 >> 24) ^ 0x65)] - ((v92 >> 24) ^ 0xFC5C0EF8);
  LODWORD(STACK[0x3DC]) = v82;
  v166 = *(&off_1010A0B50 + (v82 ^ 0xACDC)) - 356832446;
  LODWORD(v158) = *&v166[4 * BYTE2(v152)] ^ 0x1E26A694;
  LODWORD(v101) = a77 ^ v158 ^ v101 ^ (v158 >> 1) ^ (v158 >> 4);
  v167 = *(&off_1010A0B50 + v82 - 36970) - 2011039194;
  LODWORD(v101) = v101 ^ v140 ^ (*&v167[4 * v92] + 780336001);
  LODWORD(v140) = v146 ^ LODWORD(STACK[0x25C]) ^ (*&v165[4 * (BYTE1(v152) ^ 0xBA)] + (BYTE1(v152) ^ 0x5C84D6A0)) ^ *&v163[4 * BYTE2(v162)] ^ (*&v167[4 * (a79 ^ v107)] + 780336001);
  LODWORD(v92) = *&v166[4 * BYTE2(v92)] ^ 0x1E26A694;
  LODWORD(v137) = LODWORD(STACK[0x26C]) ^ v92 ^ (v92 >> 4) ^ (v92 >> 1) ^ (*&v167[4 * v152] + 780336001) ^ (*&v165[4 * (BYTE1(v162) ^ 0xBA)] + (BYTE1(v162) ^ 0x5C84D6A0)) ^ (*&v161[4 * (BYTE3(v156) ^ 0x65)] - (BYTE3(v156) ^ 0xFC5C0EF8)) ^ 0x34EBF0C4;
  LODWORD(v136) = *&v166[4 * (BYTE2(v101) ^ 0x90)] ^ 0x1E26A694;
  LODWORD(v152) = a76 ^ *&v160[4 * ((v155 ^ 0x5C9B) >> 8)] ^ (*&v159[4 * (((v140 ^ 0xD9C3A744) >> 24) ^ 0xBD)] - ((((v140 ^ 0xD9C3A744) >> 24) - 2008629179) ^ ((v140 ^ 0xD9C3A744) >> 24))) ^ v136 ^ (v136 >> 1) ^ (v136 >> 4) ^ (*&v167[4 * ((LOBYTE(STACK[0x26C]) ^ v92 ^ (v92 >> 4) ^ (v92 >> 1) ^ (v167[4 * v152] - 127) ^ (v165[4 * (BYTE1(v162) ^ 0xBA)] + (BYTE1(v162) ^ 0xA0)) ^ (v161[4 * (BYTE3(v156) ^ 0x65)] - (BYTE3(v156) ^ 0xF8))) ^ 0xC4)] + 780336001) ^ 0x2B154E54;
  v168 = LODWORD(STACK[0x280]) ^ *&v163[4 * BYTE2(v137)] ^ ((((v140 ^ 0xA744) >> 8) ^ 0x5C84D6A0) + *&v165[4 * (((v140 ^ 0xA744) >> 8) ^ 0xBA)]) ^ (*&v161[4 * (((v155 ^ 0x6415C9B) >> 24) ^ 0x65)] - (((v155 ^ 0x6415C9B) >> 24) ^ 0xFC5C0EF8)) ^ 0x4F94CEA6 ^ (*&v164[4 * (v101 ^ 0xA9)] + (v101 ^ 0x51) + 1276084480);
  LODWORD(v156) = *&v166[4 * ((v155 ^ 0x6415C9B) >> 16)] ^ 0x1E26A694;
  v169 = a75 ^ v156 ^ (*&v159[4 * (((v101 ^ 0x8710FC51) >> 24) ^ 0xBD)] - ((((v101 ^ 0x8710FC51) >> 24) - 2008629179) ^ ((v101 ^ 0x8710FC51) >> 24))) ^ (v156 >> 1) ^ (v156 >> 4) ^ ((BYTE1(v137) ^ 0x5C84D6A0) + *&v165[4 * (BYTE1(v137) ^ 0xBA)]) ^ (*&v164[4 * (v140 ^ 0xBC)] + (v140 ^ 0x44) + 1276084480) ^ 0x84F3314A;
  LODWORD(v156) = a74 ^ *&v163[4 * (BYTE2(v140) ^ 0x8D)] ^ (*&v159[4 * (BYTE3(v137) ^ 0xBD)] - ((BYTE3(v137) - 2008629179) ^ BYTE3(v137))) ^ (*&v164[4 * (v155 ^ 0x63)] + (v155 ^ 0x9B) + 1276084480) ^ *&v160[4 * (BYTE1(v101) ^ 0x41)];
  LODWORD(v140) = *&v166[4 * ((v156 ^ 0x1D283AC2) >> 16)] ^ 0x1E26A694;
  LODWORD(v155) = a73 ^ (*&v159[4 * (HIBYTE(v168) ^ 0xBD)] - ((HIBYTE(v168) - 2008629179) ^ HIBYTE(v168))) ^ *&v160[4 * BYTE1(v152)] ^ v140 ^ (v140 >> 1) ^ (v140 >> 4) ^ (*&v167[4 * v169] + 780336001);
  LODWORD(v101) = (*&v161[4 * (HIBYTE(v169) ^ 0x65)] - (HIBYTE(v169) ^ 0xFC5C0EF8)) ^ LODWORD(STACK[0x264]) ^ *&v163[4 * BYTE2(v168)] ^ ((((v156 ^ 0x3AC2) >> 8) ^ 0x5C84D6A0) + *&v165[4 * (((v156 ^ 0x3AC2) >> 8) ^ 0xBA)]) ^ (*&v167[4 * v152] + 780336001);
  LODWORD(v92) = a72 ^ *&v163[4 * BYTE2(v169)] ^ (*&v159[4 * (BYTE3(v152) ^ 0xBD)] - ((BYTE3(v152) - 2008629179) ^ BYTE3(v152))) ^ (*&v165[4 * (BYTE1(v168) ^ 0xBA)] + (BYTE1(v168) ^ 0x5C84D6A0)) ^ (*&v164[4 * (v156 ^ 0x3A)] + (v156 ^ 0xC2) + 1276084480);
  LODWORD(v140) = a71 ^ (*&v161[4 * (((v156 ^ 0x1D283AC2) >> 24) ^ 0x65)] - (((v156 ^ 0x1D283AC2) >> 24) ^ 0xFC5C0EF8)) ^ *&v163[4 * BYTE2(v152)] ^ *&v160[4 * BYTE1(v169)] ^ (*&v167[4 * v168] + 780336001);
  LODWORD(v107) = v140 ^ 0x2239E332;
  v170 = (((v140 ^ 0xE332) >> 8) ^ 0x5C84D6A0) + *&v165[4 * (((v140 ^ 0xE332) >> 8) ^ 0xBA)];
  LODWORD(v136) = *&v166[4 * ((v101 ^ 0x1D403691) >> 16)] ^ 0x1E26A694;
  LODWORD(v146) = v136 ^ LODWORD(STACK[0x20C]) ^ (v136 >> 1) ^ (v136 >> 4) ^ (*&v159[4 * (((v92 ^ 0x1EC824B0) >> 24) ^ 0xBD)] - ((((2 * (((v92 ^ 0x1EC824B0) >> 24) - 1046392040)) & 0x81428A5A) + ((((v92 ^ 0x1EC824B0) >> 24) - 1046392040) ^ 0xC6A56D2D)) ^ ((v92 ^ 0x1EC824B0) >> 24)));
  LODWORD(v136) = *&v160[4 * ((v155 ^ 0xD20C) >> 8)] ^ 0x765ABEAF;
  LODWORD(v140) = *&v164[4 * ((a71 ^ (v161[4 * (((v156 ^ 0x1D283AC2) >> 24) ^ 0x65)] - (((v156 ^ 0x1D283AC2) >> 24) ^ 0xF8)) ^ v163[4 * BYTE2(v152)] ^ v160[4 * BYTE1(v169)] ^ (v167[4 * v168] - 127)) ^ 0xCA)];
  LODWORD(v146) = v146 + v136 - 2 * (v146 & v136);
  LODWORD(v136) = *&v159[4 * (BYTE3(v107) ^ 0xBD)] - ((BYTE3(v107) - 2008629179) ^ BYTE3(v107));
  LODWORD(v140) = v146 ^ ((v140 ^ (v107 | 0x4C0F8100)) + 2 * (v140 & (v107 | 0x4C0F8100)));
  LODWORD(v107) = *&v166[4 * BYTE2(v107)] ^ 0x1E26A694;
  v171 = a70 ^ *&v160[4 * (((a72 ^ *&v163[4 * BYTE2(v169)] ^ (*&v159[4 * (BYTE3(v152) ^ 0xBD)] - ((BYTE3(v152) - 16315) ^ BYTE3(v152))) ^ (*&v165[4 * (BYTE1(v168) ^ 0xBA)] + (BYTE1(v168) ^ 0xD6A0)) ^ (*&v164[4 * (v156 ^ 0x3A)] + (v156 ^ 0xC2) - 32512)) >> 8) ^ 0x99)] ^ v107 ^ (*&v159[4 * (((v155 ^ 0x1B48D20C) >> 24) ^ 0xBD)] - ((((v155 ^ 0x1B48D20C) >> 24) - 2008629179) ^ ((v155 ^ 0x1B48D20C) >> 24))) ^ (v107 >> 1) ^ (v107 >> 4) ^ (*&v164[4 * (v101 ^ 0x69)] + (v101 ^ 0x91) + 1276084480) ^ 0xFD966D1E;
  LODWORD(v107) = *&v166[4 * ((v155 ^ 0x1B48D20C) >> 16)] ^ 0x1E26A694;
  LODWORD(v156) = *&v163[4 * (((v92 ^ 0x1EC824B0) >> 16) ^ 0x4E)];
  v172 = a69 ^ (*&v161[4 * (((v101 ^ 0x1D403691) >> 24) ^ 0x65)] - (((v101 ^ 0x1D403691) >> 24) ^ 0xFC5C0EF8)) ^ v107 ^ (v107 >> 1) ^ (v107 >> 4) ^ v170 ^ (*&v167[4 * (v92 ^ 3)] + 780336001) ^ 0x499BACFC;
  v173 = v136 ^ LODWORD(STACK[0x278]) ^ v156 ^ *&v160[4 * ((v101 ^ 0x3691) >> 8)] ^ (*&v167[4 * (v155 ^ 0xBF)] + 780336001);
  v174 = v173 ^ 0xC4419531;
  v175 = v140 ^ 0xB5C8058C;
  v176 = (*&v159[4 * (HIBYTE(v171) ^ 0xBD)] - ((HIBYTE(v171) - 2008629179) ^ HIBYTE(v171))) ^ LODWORD(STACK[0x274]) ^ *&v163[4 * ((v173 ^ 0xC4419531) >> 16)] ^ *&v160[4 * ((v140 ^ 0x58C) >> 8)] ^ (*&v167[4 * v172] + 780336001);
  LODWORD(v136) = *&v166[4 * BYTE2(v171)] ^ 0x1E26A694;
  LODWORD(v146) = ((HIBYTE(v175) ^ 0x9D467842) + ((v140 >> 23) & 0x84) - 352303101) ^ HIBYTE(v175);
  v177 = a68 ^ (*&v161[4 * (HIBYTE(v172) ^ 0x65)] - (HIBYTE(v172) ^ 0xFC5C0EF8)) ^ v136 ^ (v136 >> 1) ^ (v136 >> 4) ^ ((BYTE1(v174) ^ 0x5C84D6A0) + *&v165[4 * (BYTE1(v174) ^ 0xBA)]) ^ (*&v164[4 * (v140 ^ 0x74)] + (v140 ^ 0x8C) + 1276084480);
  v178 = *&v159[4 * (HIBYTE(v175) ^ 0xBD)] - v146;
  LODWORD(STACK[0x2F8]) = LODWORD(STACK[0x3C0]) < 0x89FE178D;
  if ((v178 & a53) != 0)
  {
    v179 = a51;
  }

  else
  {
    v179 = a53;
  }

  v180 = a67 ^ *&v163[4 * BYTE2(v172)] ^ (*&v164[4 * (v173 ^ 0xC9)] + v174 + 1276084480) ^ (*&v165[4 * (BYTE1(v171) ^ 0xBA)] + (BYTE1(v171) ^ 0x5C84D6A0)) ^ 0x5248549B ^ (v179 + v178);
  v181 = *&v166[4 * BYTE2(v175)] ^ 0x1E26A694;
  v182 = a66 ^ (*&v161[4 * (HIBYTE(v174) ^ 0x65)] - (HIBYTE(v174) ^ 0xFC5C0EF8)) ^ *&v160[4 * BYTE1(v172)] ^ v181 ^ (v181 >> 1) ^ (v181 >> 4) ^ (*&v167[4 * v171] + 780336001);
  v183 = BYTE1(v177) ^ 0x84;
  v184 = a65 ^ *&v163[4 * ((v176 ^ 0x95DF0B83) >> 16)] ^ (*&v159[4 * (((v177 ^ 0x797384F9u) >> 24) ^ 0xBD)] - ((((v177 ^ 0x797384F9u) >> 24) - 2008629179) ^ ((v177 ^ 0x797384F9u) >> 24))) ^ ((((v182 ^ 0xA53C) >> 8) ^ 0x5C84D6A0) + *&v165[4 * (((v182 ^ 0xA53C) >> 8) ^ 0xBA)]) ^ (*&v167[4 * v180] + 780336001);
  v185 = *&v159[4 * (((v182 ^ 0xD30AA53C) >> 24) ^ 0xBD)] - ((((v182 ^ 0xD30AA53C) >> 24) - 2008629179) ^ ((v182 ^ 0xD30AA53C) >> 24));
  v186 = *&v166[4 * (BYTE2(v182) ^ 0x8A)] ^ 0x1E26A694;
  v187 = a64 ^ (*&v161[4 * (((v176 ^ 0x95DF0B83) >> 24) ^ 0x65)] - (((v176 ^ 0x95DF0B83) >> 24) ^ 0xFC5C0EF8)) ^ *&v160[4 * BYTE1(v180)] ^ v186 ^ (v186 >> 1) ^ (v186 >> 4) ^ (*&v164[4 * (v177 ^ 1)] + (v177 ^ 0xF9) + 1276084480) ^ 0xF10363DD;
  v188 = *&v166[4 * ((v177 ^ 0x797384F9u) >> 16)] ^ 0x1E26A694;
  v189 = a63 ^ (*&v159[4 * (HIBYTE(v180) ^ 0xBD)] - ((HIBYTE(v180) - 2008629179) ^ HIBYTE(v180))) ^ v188 ^ (v188 >> 1) ^ (v188 >> 4) ^ (*&v165[4 * (((v176 ^ 0xB83) >> 8) ^ 0xBA)] + (((v176 ^ 0xB83) >> 8) ^ 0x5C84D6A0)) ^ (*&v167[4 * (v182 ^ 0x8F)] + 780336001) ^ 0x8C15C6DA;
  v190 = v185 ^ LODWORD(STACK[0x270]) ^ *&v163[4 * BYTE2(v180)] ^ (*&v165[4 * (v183 ^ 0xBA)] + (v183 ^ 0x5C84D6A0)) ^ (*&v164[4 * (v176 ^ 0x7B)] + (v176 ^ 0x83) + 1276084480);
  v191 = v184 ^ 0x2A9BD4D1;
  v192 = a62 ^ *&v163[4 * (BYTE2(v190) ^ 0xA8)] ^ *&v160[4 * BYTE1(v189)] ^ (*&v164[4 * (v184 ^ 0x29)] + (v184 ^ 0xD1) + 1276084480) ^ (*&v161[4 * (HIBYTE(v187) ^ 0x65)] - (HIBYTE(v187) ^ 0xFC5C0EF8));
  v193 = (*&v161[4 * (((v184 ^ 0x2A9BD4D1) >> 24) ^ 0x65)] - (((v184 ^ 0x2A9BD4D1) >> 24) ^ 0xFC5C0EF8)) ^ LODWORD(STACK[0x27C]) ^ *&v163[4 * BYTE2(v187)] ^ ((((v190 ^ 0xE984) >> 8) ^ 0x5C84D6A0) + *&v165[4 * (((v190 ^ 0xE984) >> 8) ^ 0xBA)]) ^ (*&v167[4 * v189] + 780336001);
  v194 = *&v165[4 * (BYTE1(v191) ^ 0xBA)] + (BYTE1(v191) ^ 0x5C84D6A0);
  v195 = LODWORD(STACK[0x258]) ^ *&v163[4 * BYTE2(v191)] ^ *&v160[4 * BYTE1(v187)] ^ (*&v159[4 * (HIBYTE(v189) ^ 0xBD)] - ((HIBYTE(v189) - 2008629179) ^ HIBYTE(v189))) ^ (*&v167[4 * ((v190 ^ 0x84 | 0x22) ^ (v190 | 0xDD) ^ 0x4C)] + 780336001) ^ 0x662DBFBB;
  v196 = *&v166[4 * BYTE2(v189)] ^ 0x1E26A694;
  v197 = a61 ^ (*&v159[4 * (((v190 ^ 0x70E6E984u) >> 24) ^ 0xBD)] - ((((v190 ^ 0x70E6E984u) >> 24) - 2008629179) ^ ((v190 ^ 0x70E6E984u) >> 24))) ^ v196 ^ (v196 >> 1) ^ (v196 >> 4) ^ v194 ^ (*&v167[4 * v187] + 780336001) ^ 0xA0215D14;
  v198 = v192 ^ 0xFEA3EDA1;
  v199 = v193 ^ 0xDA9A7DAA;
  v200 = *&v166[4 * BYTE2(v197)] ^ 0x1E26A694;
  v201 = (*&v159[4 * (HIBYTE(v198) ^ 0xBD)] - ((HIBYTE(v198) - 2008629179) ^ HIBYTE(v198))) ^ LODWORD(STACK[0x260]) ^ v200 ^ (v200 >> 1) ^ (v200 >> 4) ^ ((BYTE1(v195) ^ 0x5C84D6A0) + *&v165[4 * (BYTE1(v195) ^ 0xBA)]) ^ (*&v164[4 * (v193 ^ 0x52)] + (v193 ^ 0xAA) + 1276084480);
  v202 = *&v161[4 * (HIBYTE(v195) ^ 0x65)] - (HIBYTE(v195) ^ 0xFC5C0EF8);
  v203 = *&v166[4 * ((v192 ^ 0xFEA3EDA1) >> 16)] ^ 0x1E26A694;
  v204 = LODWORD(STACK[0x268]) ^ v203 ^ (*&v161[4 * (HIBYTE(v199) ^ 0x65)] - (HIBYTE(v199) ^ 0xFC5C0EF8)) ^ (v203 >> 1) ^ (v203 >> 4) ^ (*&v167[4 * v195] + 780336001) ^ ((BYTE1(v197) ^ 0x5C84D6A0) + *&v165[4 * (BYTE1(v197) ^ 0xBA)]) ^ 0x91C8B8EE;
  v205 = *&v166[4 * BYTE2(v199)] ^ 0x1E26A694;
  v206 = v202 & 0xFFFFFFFE ^ v205 ^ (v205 >> 1) ^ (v205 >> 4);
  v207 = v202 & 1;
  if ((v207 & STACK[0x28C]) != 0)
  {
    v207 = -v207;
  }

  v208 = v206 ^ (*&v165[4 * (BYTE1(v198) ^ 0xBA)] + (BYTE1(v198) ^ 0x5C84D6A0)) ^ (*&v167[4 * v197] + 780336001) ^ (v207 + a54) ^ 0x7DD6B93E;
  v209 = *&v164[4 * (v192 ^ 0x59)] + v198;
  v210 = *&v166[4 * BYTE2(v195)] ^ 0x1E26A694;
  v211 = a60 ^ v210 ^ (*&v161[4 * (HIBYTE(v197) ^ 0x65)] - (HIBYTE(v197) ^ 0xFC5C0EF8)) ^ (v210 >> 1) ^ (v210 >> 4) ^ (v209 + 1276084480) ^ (*&v165[4 * (BYTE1(v199) ^ 0xBA)] + (BYTE1(v199) ^ 0x5C84D6A0));
  v212 = *&v166[4 * ((v211 ^ 0xF4CD9AF6) >> 16)];
  v213 = *&v166[4 * ((v201 ^ 0xF786A633) >> 16)];
  v214 = *&v159[4 * (HIBYTE(v208) ^ 0xBD)] - ((HIBYTE(v208) - 2008629179) ^ HIBYTE(v208));
  v215 = *&v163[4 * BYTE2(v204)];
  v216 = *&v165[4 * (((v201 ^ 0xA633) >> 8) ^ 0xBA)] + (((v201 ^ 0xA633) >> 8) ^ 0x5C84D6A0);
  v217 = *&v163[4 * BYTE2(v208)];
  v218 = *&v160[4 * BYTE1(v208)];
  v219 = LODWORD(STACK[0x250]) ^ (*&v161[4 * (HIBYTE(v204) ^ 0x65)] - (HIBYTE(v204) ^ 0xFC5C0EF8)) ^ *&v160[4 * (BYTE1(v211) ^ 0x9A)] ^ v213 ^ 0x1E26A694 ^ ((v213 ^ 0x1E26A694u) >> 1) ^ ((v213 ^ 0x1E26A694u) >> 4) ^ (*&v167[4 * v208] + 780336001) ^ 0x35AE9F93;
  v220 = a59 ^ v218 ^ (*&v161[4 * (((v201 ^ 0xF786A633) >> 24) ^ 0x65)] - (((v201 ^ 0xF786A633) >> 24) ^ 0xFC5C0EF8)) ^ v212 ^ 0x1E26A694 ^ ((v212 ^ 0x1E26A694u) >> 1) ^ ((v212 ^ 0x1E26A694u) >> 4) ^ (*&v167[4 * v204] + 780336001) ^ 0x5E369BD9;
  v221 = LODWORD(STACK[0x254]) ^ v215 ^ v214 ^ v216 ^ 0xC701FAB7 ^ (*&v164[4 * (v211 ^ 0xE)] + (v211 ^ 0xF6) + 1276084480);
  v222 = a58 ^ v217 ^ *&v160[4 * BYTE1(v204)] ^ (*&v161[4 * (((v211 ^ 0xF4CD9AF6) >> 24) ^ 0x65)] - (((v211 ^ 0xF4CD9AF6) >> 24) ^ 0xFC5C0EF8)) ^ (*&v164[4 * (v201 ^ 0xCB)] + (v201 ^ 0x33) + 1276084480) ^ 0xD6A217CF;
  v223 = STACK[0x3DC];
  v224 = *(&off_1010A0B50 + (LODWORD(STACK[0x3DC]) ^ 0xA093)) - 753730075;
  v225 = *&v224[4 * HIBYTE(v220)];
  LODWORD(STACK[0x2F4]) = *&v224[4 * HIBYTE(v221)];
  v226 = *(&off_1010A0B50 + v223 - 40244) + 4 * v221;
  v227 = *(&off_1010A0B50 + v223 - 38921) - 1254069875;
  v228 = *&v227[4 * (BYTE2(v220) ^ 0xE8)];
  v229 = BYTE2(v219);
  LODWORD(v227) = *&v227[4 * (BYTE2(v219) ^ 0xE8)];
  v230 = *(&off_1010A0B50 + (v223 ^ 0xAF51)) - 1775056071;
  v231 = BYTE1(v221);
  v232 = *&v230[4 * (BYTE1(v221) ^ 0x73)];
  v233 = *&v230[4 * (BYTE1(v220) ^ 0x73)];
  v234 = *(&off_1010A0B50 + (v223 ^ 0xAC77)) - 2088100575;
  v235 = *&v234[4 * (HIBYTE(v219) ^ 0x5C)];
  LODWORD(v230) = HIBYTE(v222);
  LODWORD(v234) = *&v234[4 * (HIBYTE(v222) ^ 0x5C)];
  v236 = *(&off_1010A0B50 + v223 - 38686) - 1157026350;
  v237 = *&v236[4 * (BYTE2(v222) ^ 0x1E)];
  v238 = BYTE2(v221);
  LODWORD(v236) = *&v236[4 * (BYTE2(v221) ^ 0x1E)];
  v239 = *(&off_1010A0B50 + v223 - 40560) - 66698258;
  v240 = *&v239[4 * BYTE1(v219)];
  HIDWORD(v241) = *&v239[4 * BYTE1(v222)];
  LODWORD(v241) = HIDWORD(v241);
  LODWORD(v239) = a57 ^ a56 ^ LODWORD(STACK[0x368]) ^ HIBYTE(v219) ^ BYTE2(v220) ^ v235 ^ v228 ^ (v241 >> 5) ^ ((v241 >> 5) >> 4) ^ ((v241 >> 5) >> 7) ^ *(v226 - 539328758);
  v242 = *(&off_1010A0B50 + (v223 ^ 0xADC9)) - 1443629087;
  v243 = LODWORD(STACK[0x208]) ^ LODWORD(STACK[0x38C]) ^ (v231 + 1805066019) ^ v237 ^ (-1512364115 * v225) ^ v232 ^ ((-1512364115 * v225) >> 2) & 0x1A01A75B ^ BYTE2(v222) ^ (*&v242[4 * v219] + 2053932981);
  v244 = LODWORD(STACK[0x380]) ^ LODWORD(STACK[0x288]) ^ v229 ^ (BYTE1(v220) + 1805066019) ^ (-1512364115 * LODWORD(STACK[0x2F4])) ^ v227 ^ ((-1512364115 * LODWORD(STACK[0x2F4])) >> 2) & 0x1A01A75B ^ v233 ^ (*&v242[4 * v222] + 2053932981);
  HIDWORD(v241) = v240;
  LODWORD(v241) = v240;
  v245 = a55 ^ LODWORD(STACK[0x284]) ^ LODWORD(STACK[0x39C]) ^ v238 ^ v230 ^ v234 ^ v236 ^ (v241 >> 5) ^ ((v241 >> 5) >> 4) ^ ((v241 >> 5) >> 7) ^ (*&v242[4 * v220] + 2053932981);
  LOBYTE(v225) = v243 ^ 0xC5 ^ *(*(&off_1010A0B50 + (v223 ^ 0xACFE)) + (v243 ^ 0xDELL) - 1760869294);
  v246 = *(&off_1010A0B50 + (v223 ^ 0xB294)) + (HIBYTE(v245) ^ 0x91);
  v247 = *(&off_1010A0B50 + v223 - 38039) - 1730563951;
  LOBYTE(v231) = v247[BYTE1(v239) ^ 0x58];
  LOBYTE(v247) = v247[BYTE1(v243) ^ 0x54] ^ ((v247[BYTE1(v243) ^ 0x54] ^ 0xAD) >> 4) ^ ((v247[BYTE1(v243) ^ 0x54] ^ 0xAD) >> 3);
  v248 = *(&off_1010A0B50 + (v223 ^ 0xAA60)) - 195646786;
  LOBYTE(v238) = v248[BYTE2(v244) ^ 0x61];
  LOBYTE(v236) = v248[BYTE2(v245) ^ 0xBDLL];
  v249 = *(&off_1010A0B50 + v223 - 40761) - 323327779;
  v250 = v249[HIBYTE(v244) ^ 0xA4];
  LODWORD(STACK[0x39C]) = v249[(v239 >> 24) ^ 0xABLL];
  v251 = *(&off_1010A0B50 + v223 - 37080) - 1873699258;
  LOBYTE(v230) = v251[BYTE1(v244) ^ 0x85];
  v252 = v251[BYTE1(v245) ^ 0x18];
  LODWORD(v247) = v225 | ((v247 ^ 0x62) << 8) | (((v249[HIBYTE(v243) ^ 0xF9] + 109) ^ 0x11111111) << 24);
  v253 = *(&off_1010A0B50 + (v223 ^ 0xA8A5)) - 1336926619;
  LODWORD(STACK[0x38C]) = v253[BYTE2(v239) ^ 0x6CLL];
  v254 = v244 ^ 0x32;
  v255 = *(&off_1010A0B50 + (v223 ^ 0xB28A)) - 1605146874;
  v256 = v255[v254];
  LOBYTE(v254) = v253[BYTE2(v243) ^ 0xCLL] + 11;
  LOBYTE(v243) = v255[v245 ^ 0x60];
  v257 = v255[v239 ^ 0xF2];
  LODWORD(v247) = v247 & 0xFF00FFFF | (((v254 ^ ((v254 & 0xF0) >> 4)) ^ 0xB8) << 16);
  v258 = STACK[0x298];
  v259 = STACK[0x298] + STACK[0x300];
  LODWORD(v239) = 1864610357 * ((*(STACK[0x320] + (STACK[0x328] & 0xFFFFFFFFE6F073DCLL)) ^ v259) & 0x7FFFFFFF);
  v260 = 1864610357 * (v239 ^ (v239 >> 16));
  v261 = *(&off_1010A0B50 + v223 - 40291) - 129240731;
  v262 = *(&off_1010A0B50 + (v223 ^ 0xAFF3)) - 51847227;
  v263 = *(&off_1010A0B50 + (v223 ^ 0xA433)) - 1763465339;
  v264 = v247 ^ LODWORD(STACK[0x3BC]);
  LODWORD(v253) = *(v246 - 1203118134);
  *v259 = v262[(v260 >> 24) + 1] ^ v261[v260 >> 24] ^ HIBYTE(v264) ^ v263[(v260 >> 24) + 3] ^ v260 ^ (-19 * BYTE3(v260));
  LODWORD(v247) = ((v253 ^ ((v253 ^ 0x37) >> 5) ^ ((v253 ^ 0x37) >> 1) ^ 0x50) << 24) | (((v236 ^ (16 * v236)) ^ 5) << 16) | (((35 * v252) ^ 0xE7) << 8) | ((4 * (v243 ^ 0xCD)) | 0x48) ^ v243 ^ 0xCD;
  v265 = STACK[0x3D0];
  v266 = STACK[0x3C8];
  v267 = (v258 + STACK[0x340]);
  v268 = 1864610357 * ((*(*STACK[0x3C8] + (*STACK[0x3D0] & 0xFFFFFFFFE6F073DCLL)) ^ v267) & 0x7FFFFFFF);
  v269 = 1864610357 * (v268 ^ HIWORD(v268));
  v270 = v269 >> 24;
  LOBYTE(v251) = v262[(v269 >> 24) + 1] ^ v263[(v269 >> 24) + 3] ^ v269 ^ (-19 * BYTE3(v269));
  LODWORD(v269) = v247 ^ LODWORD(STACK[0x3B0]);
  *v267 = v261[v270] ^ ((v247 ^ LODWORD(STACK[0x3B0])) >> 8) ^ v251;
  v271 = (v258 + STACK[0x350]);
  LODWORD(v247) = 1864610357 * ((*(*v266 + (*v265 & 0xFFFFFFFFE6F073DCLL)) ^ v271) & 0x7FFFFFFF);
  v272 = 1864610357 * (v247 ^ (v247 >> 16));
  *v271 = v261[v272 >> 24] ^ BYTE2(v264) ^ v262[(v272 >> 24) + 1] ^ v263[(v272 >> 24) + 3] ^ v272 ^ (-19 * BYTE3(v272));
  v273 = (v258 + STACK[0x318]);
  LODWORD(v271) = 1864610357 * ((*(*v266 + (*v265 & 0xFFFFFFFFE6F073DCLL)) ^ v273) & 0x7FFFFFFF);
  v274 = 1864610357 * (v271 ^ (v271 >> 16));
  v275 = ((((v238 ^ (16 * v238)) ^ 0x31) << 16) | (((v250 + 109) ^ 0x10) << 24) | ((4 * (v256 ^ 0xCD)) | 0x48) ^ v256 ^ 0xCD | (((35 * v230) ^ 0xDC) << 8)) ^ LODWORD(STACK[0x3B4]);
  *v273 = ((4 * (v256 ^ 0xCD)) | 0x48) ^ v256 ^ 0xCD ^ LODWORD(STACK[0x3B4]) ^ v261[v274 >> 24] ^ v262[(v274 >> 24) + 1] ^ v263[(v274 >> 24) + 3] ^ v274 ^ (-19 * BYTE3(v274)) ^ 0x30;
  v276 = (v258 + STACK[0x310]);
  LODWORD(v272) = 1864610357 * ((*(*v266 + (*v265 & 0xFFFFFFFFE6F073DCLL)) ^ v276) & 0x7FFFFFFF);
  v277 = 1864610357 * (v272 ^ WORD1(v272));
  *v276 = v261[v277 >> 24] ^ BYTE2(v269) ^ v262[(v277 >> 24) + 1] ^ v263[(v277 >> 24) + 3] ^ v277 ^ (-19 * BYTE3(v277));
  v278 = (v258 + STACK[0x330]);
  LODWORD(v277) = 1864610357 * ((*(*v266 + (*v265 & 0xFFFFFFFFE6F073DCLL)) ^ v278) & 0x7FFFFFFF);
  v279 = 1864610357 * (v277 ^ WORD1(v277));
  *v278 = v261[v279 >> 24] ^ BYTE2(v275) ^ v262[(v279 >> 24) + 1] ^ v263[(v279 >> 24) + 3] ^ v279 ^ (-19 * BYTE3(v279));
  v280 = (v258 + STACK[0x360]);
  LODWORD(v279) = 1864610357 * ((*(*v266 + (*v265 & 0xFFFFFFFFE6F073DCLL)) ^ v280) & 0x7FFFFFFF);
  v281 = 1864610357 * (v279 ^ WORD1(v279));
  *v280 = v261[v281 >> 24] ^ BYTE1(v264) ^ v262[(v281 >> 24) + 1] ^ v263[(v281 >> 24) + 3] ^ v281 ^ (-19 * BYTE3(v281));
  LOBYTE(v280) = v231 - ((2 * v231) & 0x5A) - 83;
  LODWORD(v273) = (v280 >> 4) ^ (v280 >> 3);
  LODWORD(v281) = ((((LODWORD(STACK[0x38C]) + 11) ^ (((LODWORD(STACK[0x38C]) + 11) & 0xF0) >> 4)) ^ 0x50) << 16) | (((v273 + v280 - 2 * (v273 & v280)) ^ 0x51) << 8) | (((LODWORD(STACK[0x39C]) + 109) ^ 0x82) << 24) | v257 ^ 0xB4 ^ (4 * v257) & 0xB4;
  v282 = (v258 + STACK[0x3A0]);
  LODWORD(v280) = 1864610357 * ((*(*v266 + (*v265 & 0xFFFFFFFFE6F073DCLL)) ^ v282) & 0x7FFFFFFF);
  v283 = 1864610357 * (v280 ^ (v280 >> 16));
  LODWORD(v230) = v281 ^ LODWORD(STACK[0x3B8]);
  *v282 = v261[v283 >> 24] ^ BYTE1(v230) ^ v262[(v283 >> 24) + 1] ^ v263[(v283 >> 24) + 3] ^ v283 ^ (-19 * BYTE3(v283));
  v284 = (v258 + STACK[0x308]);
  LODWORD(v283) = 1864610357 * ((*(*v266 + (*v265 & 0xFFFFFFFFE6F073DCLL)) ^ v284) & 0x7FFFFFFF);
  v285 = 1864610357 * (v283 ^ WORD1(v283));
  *v284 = v261[v285 >> 24] ^ BYTE3(v269) ^ v262[(v285 >> 24) + 1] ^ v263[(v285 >> 24) + 3] ^ v285 ^ (-19 * BYTE3(v285));
  v286 = (v258 + STACK[0x378]);
  LODWORD(v285) = 1864610357 * ((*(*v266 + (*v265 & 0xFFFFFFFFE6F073DCLL)) ^ v286) & 0x7FFFFFFF);
  v287 = 1864610357 * (v285 ^ WORD1(v285));
  *v286 = v269 ^ v261[v287 >> 24] ^ v262[(v287 >> 24) + 1] ^ v263[(v287 >> 24) + 3] ^ v287 ^ (-19 * BYTE3(v287)) ^ 0xC3;
  v288 = (v258 + STACK[0x338]);
  LODWORD(v286) = 1864610357 * ((*(*v266 + (*v265 & 0xFFFFFFFFE6F073DCLL)) ^ v288) & 0x7FFFFFFF);
  v289 = 1864610357 * (v286 ^ (v286 >> 16));
  *v288 = v261[v289 >> 24] ^ BYTE1(v275) ^ v262[(v289 >> 24) + 1] ^ v263[(v289 >> 24) + 3] ^ v289 ^ (-19 * BYTE3(v289));
  v290 = (v258 + STACK[0x370]);
  LODWORD(v289) = 1864610357 * ((*(*v266 + (*v265 & 0xFFFFFFFFE6F073DCLL)) ^ v290) & 0x7FFFFFFF);
  v291 = 1864610357 * (v289 ^ WORD1(v289));
  *v290 = v261[v291 >> 24] ^ BYTE2(v230) ^ v262[(v291 >> 24) + 1] ^ v263[(v291 >> 24) + 3] ^ v291 ^ (-19 * BYTE3(v291));
  v292 = (v258 + STACK[0x390]);
  LODWORD(v290) = 1864610357 * ((*(*v266 + (*v265 & 0xFFFFFFFFE6F073DCLL)) ^ v292) & 0x7FFFFFFF);
  v293 = 1864610357 * (v290 ^ (v290 >> 16));
  *v292 = v261[v293 >> 24] ^ BYTE3(v230) ^ v262[(v293 >> 24) + 1] ^ v263[(v293 >> 24) + 3] ^ v293 ^ (-19 * BYTE3(v293));
  v294 = (v258 + STACK[0x348]);
  LODWORD(v292) = 1864610357 * ((*(*v266 + (*v265 & 0xFFFFFFFFE6F073DCLL)) ^ v294) & 0x7FFFFFFF);
  v295 = 1864610357 * (v292 ^ (v292 >> 16));
  *v294 = v261[v295 >> 24] ^ HIBYTE(v275) ^ v262[(v295 >> 24) + 1] ^ v263[(v295 >> 24) + 3] ^ v295 ^ (-19 * BYTE3(v295));
  v296 = (v258 + STACK[0x3A8]);
  LODWORD(v295) = 1864610357 * ((*(*v266 + (*v265 & 0xFFFFFFFFE6F073DCLL)) ^ v296) & 0x7FFFFFFF);
  v297 = 1864610357 * (v295 ^ WORD1(v295));
  v298 = *(&off_1010A0B50 + (v223 ^ 0xA0AD)) - 1034537443;
  v299 = *(&off_1010A0B50 + (v223 ^ 0xA618)) - 1387878362;
  v300 = STACK[0x3C4];
  v301 = *(&off_1010A0B50 + (v223 ^ 0xA0CD)) - 836586819;
  *v296 = v298[v297 >> 24] ^ v299[v297 >> 24] ^ v301[v297 >> 24] ^ v297 ^ (43 * BYTE3(v297)) ^ v264;
  v302 = (v258 + STACK[0x358]);
  LODWORD(v296) = 1864610357 * ((*(*v266 + (*v265 & 0xFFFFFFFFE6F073DCLL)) ^ v302) & 0x7FFFFFFF);
  v303 = 1864610357 * (v296 ^ (v296 >> 16));
  *v302 = v298[v303 >> 24] ^ v299[v303 >> 24] ^ v301[v303 >> 24] ^ v303 ^ (43 * BYTE3(v303)) ^ v230;
  v304 = (v300 - 1979836515) < LODWORD(STACK[0x3C0]);
  if (LODWORD(STACK[0x2F8]) != (v300 - 1979836515) < 0x89FE178D)
  {
    v304 = STACK[0x2F8];
  }

  return (*(STACK[0x290] + 8 * ((7801 * v304) ^ v223)))();
}

uint64_t sub_1002BCD6C@<X0>(int a1@<W8>)
{
  v5 = *v4 - a1 - 570435747;
  v6 = ((v5 ^ 0xA0D4E963) + 1504362951) ^ v5 ^ ((v5 ^ 0x6EB199A7) - 1747996413) ^ ((v5 ^ 0x7BFFBBFF) - 2105437349) ^ (((v2 - 1290093430) ^ v5) + 1248146629);
  v7 = 5 * (v1 ^ 0x20BB) - 541132220 + (((v6 ^ 0xDFF0E961) - 114189336) ^ ((v6 ^ 0x27984591) + 22624024) ^ ((v1 ^ 0xD8283ABD) + (v6 ^ 0xFEE97BAA))) < 0xFFFFFFF8;
  return (*(v3 + 8 * ((v7 | (8 * v7)) ^ v1)))();
}

uint64_t sub_1002BD2FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  STACK[0x84A8] = 0;
  LODWORD(STACK[0x14B4]) = -371865839;
  STACK[0x6098] = 0;
  LODWORD(STACK[0x29A0]) = -371865839;
  LODWORD(STACK[0x2EAC]) = -371865839;
  STACK[0x4BE0] = 0;
  return (*(STACK[0xF18] + 8 * (((a3 + 16327 + ((a3 + 3148) ^ 0x3D7D)) * (v3 == -371865840)) ^ (a3 + 3148))))(a1, a2, 371891535);
}

uint64_t sub_1002BD36C()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x7ABA)))((((v0 - 12322) | 0x6C0u) - 371900335) ^ LODWORD(STACK[0x7788]));
  STACK[0xA670] = v2;
  STACK[0xAE8] = v2;
  if (v2)
  {
    v3 = -371865839;
  }

  else
  {
    v3 = 371891397;
  }

  LODWORD(STACK[0xA67C]) = v3;
  return (*(v1 + 8 * ((123 * (v2 == 0)) ^ v0)))();
}

uint64_t sub_1002BD3F4@<X0>(unsigned int a1@<W8>)
{
  v2 = (v1 ^ 0xFFFF2FCEFEFFD7F7) + 0x5DF0F6BFD7DF6FDELL + ((2 * v1) & 0x1FDFFAFEELL);
  STACK[0xA6C0] = v2;
  v3 = STACK[0x1690];
  STACK[0xA6C8] = STACK[0x1690];
  v4 = ((a1 + 9) << (((a1 - 55) & 0x7B) - 27)) + a1;
  return (*(STACK[0xF18] + 8 * (a1 ^ 0xFFFF719E ^ (18513 * ((((v4 ^ (v2 - v3 + (((a1 + 13) | 0x8B38) ^ 0x74558527D996C13))) & v4) >> (__clz(v4 ^ (v2 - v3 + (((a1 + 13) | 0x8B38) ^ 0x74558527D996C13)) | 1) ^ 0x3Fu)) & 1)))))();
}

uint64_t sub_1002BD614()
{
  v1 = STACK[0x7618];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393399;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1002BD67C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  *(a2 + 1608) = a3;
  v3 = a1 | (((a1 + 569072454) ^ a1) << 32);
  return (*(STACK[0xF18] + 8 * ((11 * ((((a3 - v3) | (v3 - a3)) & 0x8000000000000000) == 0)) ^ (a1 + 1165379185))))();
}

uint64_t sub_1002BD6E4()
{
  LODWORD(STACK[0x384]) = 0;
  *(v4 - 136) = v0 ^ 0x5B89;
  v5 = v1 & 0xFFFFFFF8 ^ 0xFC030C97;
  *(v4 - 168) = v5;
  v6 = *(v2 + v5);
  v7 = ((v0 ^ 0x5B89) - 27760) & v1 ^ 0xFC030C93;
  *(v4 - 152) = v7;
  v8 = v0;
  v9 = *(v2 + v7);
  v10 = STACK[0x2E8];
  LOBYTE(v6) = (v6 ^ 0x12) + *(STACK[0x2E8] + (v6 ^ 0x41)) - 93;
  v11 = v1 & 0xFFFFFFF1 ^ 0xFC030C9FLL;
  *(v4 - 232) = v11;
  v12 = (v9 ^ 0x36) + *(v10 + (v9 ^ 0x65)) - 93;
  v13 = STACK[0x2F0];
  LODWORD(v9) = *(STACK[0x2F0] + 4 * (*(v2 + v11) ^ 5));
  v14 = v1 & 0xFFFFFFF7 ^ 0xFC030C99;
  *(v4 - 144) = v14;
  v15 = *(v2 + v14);
  v16 = v1 & 0xFFFFFFF9 ^ 0xFC030C97;
  *(v4 - 160) = v16;
  v17 = STACK[0x300];
  v18 = *(STACK[0x300] + 4 * (v15 ^ 0x11));
  LODWORD(v16) = *(v13 + 4 * (*(v2 + v16) ^ 0x78));
  v19 = v1 & 0xFFFFFFFA ^ 0xFC030C95;
  *(v4 - 184) = v19;
  v20 = v1 & 0xFFFFFFF5 ^ 0xFC030C9BLL;
  *(v4 - 208) = v20;
  v21 = *(v2 + v19);
  LODWORD(v20) = *(v13 + 4 * (*(v2 + v20) ^ 0x1CLL));
  v22 = v1 & 0xFFFFFFF4 ^ 0xFC030C9BLL;
  *(v4 - 224) = v22;
  v23 = STACK[0x2F8];
  LODWORD(v21) = *(STACK[0x2F8] + 4 * (v21 ^ 0x86));
  HIDWORD(v24) = v18 ^ v15 ^ 0xC6 ^ ((v15 ^ 0xC6) - 909236713) ^ v20 ^ 0xD5D27E9A;
  LODWORD(v24) = HIDWORD(v24);
  v25 = (v24 >> 22) ^ (((*(v2 + v22) ^ 0x62) + *(v10 + (*(v2 + v22) ^ 0x31)) - 93) << 10);
  v26 = v1 & 0xFFFFFFFB ^ 0xFC030C95;
  *(v4 - 192) = v26;
  LODWORD(v6) = v16 ^ v6 ^ __ROR4__(v21, 20);
  LODWORD(v26) = *(v17 + 4 * (*(v2 + v26) ^ 0x4ALL)) ^ *(v2 + v26) ^ 0x9D ^ ((*(v2 + v26) ^ 0x9D) - 909236713);
  v27 = v1 & 0xFFFFFFF2 ^ 0xFC030C9DLL;
  *(v4 - 176) = v27;
  v28 = *(v2 + v27);
  v29 = v1 & 0xFFFFFFFD ^ 0xFC030C93;
  *(v4 - 240) = v29;
  LODWORD(v28) = *(v23 + 4 * (v28 ^ 0xF9));
  v30 = v6 ^ v26;
  LODWORD(v6) = *(v13 + 4 * (*(v2 + v29) ^ 0x86));
  v31 = v1 & 0xFFFFFFFE ^ 0xFC030C91;
  *(v4 - 216) = v31;
  LODWORD(v26) = *(v23 + 4 * (*(v2 + v31) ^ 0x1FLL));
  v32 = v1 & 0xFFFFFFF6 ^ 0xFC030C99;
  *(v4 - 200) = v32;
  LODWORD(v20) = *(v23 + 4 * (*(v2 + v32) ^ 0x15));
  v33 = v1 & 0xFFFFFFF0 ^ 0xFC030C9FLL;
  *(v4 - 256) = v33;
  HIDWORD(v24) = v20;
  LODWORD(v24) = v20;
  LODWORD(v29) = (v24 >> 20) ^ __ROR4__(v25 ^ 0x1E8537E7, 10);
  LOBYTE(v25) = (*(v2 + v33) ^ 0x40) + *(v10 + (*(v2 + v33) ^ 0x13));
  v34 = v1 & 0xFFFFFFF3 ^ 0xFC030C9DLL;
  *(v4 - 248) = v34;
  v35 = v1 ^ 0xFC030C91;
  v36 = v9 ^ __ROR4__(v28, 20) ^ (v25 - 93) ^ *(v17 + 4 * (*(v2 + v34) ^ 0x29)) ^ *(v2 + v34) ^ 0xFE ^ ((*(v2 + v34) ^ 0xFE) - 909236713);
  LODWORD(v20) = v6 ^ v12 ^ __ROR4__(v26, 20) ^ *(v17 + 4 * (*(v2 + v35) ^ 0x20)) ^ *(v2 + v35) ^ 0xF7 ^ ((*(v2 + v35) ^ 0xF7) - 909236713);
  LODWORD(v34) = STACK[0x310];
  LODWORD(STACK[0x38C]) = v36;
  LOBYTE(v9) = v36 ^ v34;
  v37 = v36 ^ v34 ^ 0xFC29CD70;
  v38 = *(v3 + 8 * (v8 ^ 0x31CC)) - 1147367407;
  LODWORD(v26) = *(v38 + 4 * BYTE2(v37)) + 1560360013;
  LODWORD(v34) = STACK[0x2C8];
  LODWORD(STACK[0x39C]) = v30;
  LOBYTE(v36) = v34 ^ v30;
  LODWORD(v6) = v34 ^ v30 ^ 0xD430E143;
  LODWORD(v28) = LODWORD(STACK[0x2C0]) ^ (v34 ^ v30) ^ 0x43;
  LODWORD(v34) = STACK[0x2C4];
  LODWORD(STACK[0x390]) = v29;
  LODWORD(v21) = v34 ^ v29;
  LODWORD(v10) = v34 ^ v29 ^ 0xFC8FD171;
  LODWORD(v23) = v28 ^ BYTE1(v10) ^ v26;
  v39 = *(v3 + 8 * (v8 ^ 0x25C3)) - 1972674570;
  LODWORD(v34) = STACK[0x2CC];
  LODWORD(STACK[0x388]) = v20;
  LOBYTE(v28) = v34 ^ v20;
  LODWORD(v20) = v34 ^ v20 ^ 0xA9D500DC;
  v40 = *(v3 + 8 * (v8 ^ 0x3AB9)) - 1144771362;
  v41 = *(v3 + 8 * (v8 ^ 0x3BB6)) - 1985261683;
  LODWORD(v13) = v23 ^ *(v39 + 4 * BYTE3(v20)) ^ *(v40 + 4 * (v36 ^ 0xEDu)) ^ *(v41 + 4 * (BYTE1(v10) ^ 0x2Cu));
  BYTE2(v23) = BYTE2(v21) ^ 0xDB;
  LODWORD(v22) = v10 ^ LODWORD(STACK[0x34C]) ^ BYTE1(v37) ^ *(v39 + 4 * BYTE3(v6)) ^ *(v41 + 4 * (BYTE1(v37) ^ 0x2Cu)) ^ (*(v38 + 4 * BYTE2(v20)) + 1560360013) ^ *(v40 + 4 * (v21 ^ 0xDFu));
  v42 = LODWORD(STACK[0x2BC]) ^ *(v39 + 4 * BYTE3(v10));
  LODWORD(v21) = *(v41 + 4 * (BYTE1(v20) ^ 0x2Cu)) ^ (v37 ^ BYTE1(v20)) ^ (*(v38 + 4 * BYTE2(v6)) + 1560360013) ^ *(v40 + 4 * (v9 ^ 0xDEu)) ^ ((v42 & 0x27E4E406 ^ 0x7C04FA27) & (v42 & 0xD81B1BF9 ^ 0x6FF5F41F) | v42 & 0x801B01D8);
  LODWORD(v23) = BYTE1(v6) ^ LODWORD(STACK[0x328]) ^ *(v39 + 4 * HIBYTE(v37)) ^ (((v20 - (v20 ^ 0xAFDD978E)) ^ 0xFFFFFFFC) + v20) ^ *(v41 + 4 * (BYTE1(v6) ^ 0x2Cu)) ^ *(v40 + 4 * (v28 ^ 0x72u)) ^ (*(v38 + 4 * (BYTE2(v23) ^ 0x54u)) + 1560360013);
  BYTE1(v37) = BYTE1(v22) ^ 0xD9;
  LODWORD(v9) = v22 ^ 0xA9 ^ LODWORD(STACK[0x374]) ^ *(v39 + 4 * ((v13 ^ 0x8EB9D44D) >> 24)) ^ (*(v38 + 4 * ((v23 ^ 0x6F5566E8) >> 16)) + 1560360013) ^ *(v40 + 4 * (v22 ^ 7u)) ^ ((v21 ^ 0xF859) >> 8) ^ *(v41 + 4 * (((v21 ^ 0xF859) >> 8) ^ 0x2Cu));
  LODWORD(v28) = v21 ^ 0x59 ^ LODWORD(STACK[0x30C]) ^ *(v39 + 4 * ((v22 ^ 0x38DDD9A9) >> 24)) ^ (*(v38 + 4 * ((v13 ^ 0x8EB9D44D) >> 16)) + 1560360013) ^ *(v41 + 4 * (((v23 ^ 0x66E8) >> 8) ^ 0x2Cu)) ^ ((v23 ^ 0x66E8) >> 8) ^ *(v40 + 4 * (v21 ^ 0xF7u));
  v43 = ((v13 ^ 0xD44D) >> 8);
  LODWORD(v22) = LODWORD(STACK[0x2B8]) ^ v43 ^ v23 ^ 0xE8 ^ (*(v38 + 4 * ((v22 ^ 0x38DDD9A9) >> 16)) + 1560360013) ^ *(v39 + 4 * ((v21 ^ 0x1DD2F859) >> 24)) ^ *(v41 + 4 * (((v43 - (v43 ^ 0x2C)) ^ 0xFFFFFFF8) + v43)) ^ *(v40 + 4 * (v23 ^ 0x46u));
  LODWORD(v23) = v13 ^ 0x4D ^ BYTE1(v37) ^ LODWORD(STACK[0x324]) ^ *(v39 + 4 * ((v23 ^ 0x6F5566E8) >> 24)) ^ *(v41 + 4 * (BYTE1(v37) ^ 0x2Cu)) ^ *(v40 + 4 * (v13 ^ 0xE3u)) ^ (*(v38 + 4 * ((v21 ^ 0x1DD2F859) >> 16)) + 1560360013);
  LODWORD(v20) = v28 ^ 0x2B311A9F;
  LODWORD(v21) = v23 ^ 0x2949535C;
  BYTE2(v13) = BYTE2(v22) ^ 0xF7;
  LODWORD(v28) = LODWORD(STACK[0x2B4]) ^ v28 ^ 0x9F ^ *(v39 + 4 * ((v9 ^ 0xB4BAE03D) >> 24)) ^ (*(v38 + 4 * ((v23 ^ 0x2949535C) >> 16)) + 1560360013) ^ *(v41 + 4 * (((v22 ^ 0x2F7D) >> 8) ^ 0x2Cu)) ^ ((v22 ^ 0x2F7D) >> 8) ^ *(v40 + 4 * (v28 ^ 0x31u));
  v44 = LODWORD(STACK[0x2E0]) ^ v22 ^ 0x7D ^ *(v39 + 4 * BYTE3(v20)) ^ (*(v38 + 4 * ((v9 ^ 0xB4BAE03D) >> 16)) + 1560360013) ^ *(v41 + 4 * (((v23 ^ 0x535C) >> 8) ^ 0x2Cu)) ^ *(v40 + 4 * (v22 ^ 0xD3u));
  v45 = LODWORD(STACK[0x2DC]) ^ v23 ^ 0x5C ^ *(v39 + 4 * ((v22 ^ 0x78F72F7D) >> 24)) ^ (*(v38 + 4 * BYTE2(v20)) + 1560360013);
  LODWORD(v22) = ((v9 ^ 0xE03D) >> 8);
  LODWORD(v23) = v45 ^ *(v41 + 4 * (v22 ^ 0x2C)) ^ *(v40 + 4 * (v23 ^ 0xF2u));
  LODWORD(v20) = LODWORD(STACK[0x2B0]) ^ BYTE1(v20) ^ v9 ^ 0x3D ^ *(v39 + 4 * BYTE3(v21)) ^ (*(v38 + 4 * BYTE2(v13)) + 1560360013) ^ *(v41 + 4 * (BYTE1(v20) ^ 0x2Cu)) ^ *(v40 + 4 * (v9 ^ 0x93u));
  LODWORD(v22) = v22 ^ LODWORD(STACK[0x36C]) ^ v23;
  LODWORD(v13) = (LODWORD(STACK[0x268]) ^ BYTE1(v21) ^ v44) ^ LODWORD(STACK[0x334]) ^ *(v39 + 4 * ((v28 ^ 0x4BB693C4) >> 24)) ^ (*(v38 + 4 * ((v20 ^ 0x7744076F) >> 16)) + 1560360013) ^ *(v41 + 4 * (((v22 ^ 0xB01D) >> 8) ^ 0x2Cu)) ^ ((v22 ^ 0xB01D) >> 8) ^ *(v40 + 4 * ((LODWORD(STACK[0x268]) ^ BYTE1(v21) ^ v44) ^ 0xDu));
  v46 = LODWORD(STACK[0x2AC]) ^ v22 ^ 0x1D ^ *(v39 + 4 * (HIBYTE(v44) ^ 0x34)) ^ *(v41 + 4 * (((v20 ^ 0x76F) >> 8) ^ 0x2Cu)) ^ (*(v38 + 4 * ((v28 ^ 0x4BB693C4) >> 16)) + 1560360013) ^ ((v20 ^ 0x76F) >> 8) ^ *(v40 + 4 * (v22 ^ 0xB3u));
  LODWORD(v10) = LODWORD(STACK[0x2A8]) ^ v20 ^ 0x6F ^ ((v28 ^ 0x93C4) >> 8) ^ *(v39 + 4 * ((v22 ^ 0x322CB01D) >> 24)) ^ *(v41 + 4 * (((v28 ^ 0x93C4) >> 8) ^ 0x2Cu)) ^ (*(v38 + 4 * (BYTE2(v44) ^ 0x3Bu)) + 1560360013) ^ *(v40 + 4 * (v20 ^ 0xC1u));
  LODWORD(v21) = LODWORD(STACK[0x2A4]) ^ BYTE1(v44) ^ v28 ^ 0xC4 ^ *(v39 + 4 * ((v20 ^ 0x7744076F) >> 24)) ^ (*(v38 + 4 * (BYTE2(v23) ^ 0xEFu)) + 1560360013) ^ *(v41 + 4 * (BYTE1(v44) ^ 0x82u)) ^ *(v40 + 4 * (v28 ^ 0x6Au));
  LOBYTE(v44) = v13 ^ 0x91;
  BYTE2(v20) = BYTE2(v10) ^ 0x4E;
  v47 = ((v10 ^ 0x22A9) >> 8);
  LODWORD(v9) = LODWORD(STACK[0x2A0]) ^ v46 ^ 0xA ^ (*(v38 + 4 * ((v21 ^ 0xB1498303) >> 16)) + 1560360013) ^ *(v39 + 4 * ((v13 ^ 0xA307A891) >> 24)) ^ v47 ^ *(v40 + 4 * (v46 ^ 0xA4u)) ^ *(v41 + 4 * (((v47 - (v47 ^ 0x2C)) ^ 0xFFFFFFF8) + v47));
  v48 = ((v21 ^ 0x8303) >> 8);
  LODWORD(v28) = *(v41 + 4 * (v48 ^ 0x2Cu));
  LODWORD(v28) = LODWORD(STACK[0x29C]) ^ v10 ^ 0xA9 ^ *(v39 + 4 * ((v46 ^ 0x5633BC0Au) >> 24)) ^ *(v40 + 4 * (v10 ^ 7u)) ^ (*(v38 + 4 * ((v13 ^ 0xA307A891) >> 16)) + 1560360013) ^ ((v48 ^ 0x96AAC7FF) + (v28 ^ 0xF4E4EA83) + ((2 * ((v28 ^ 0x12A08482) & (v48 ^ 0x16AAC7FF) ^ ((v21 ^ 0xB1498303) >> 8) & 1)) ^ 0xF3FF73FD) + 1);
  v49 = LODWORD(STACK[0x298]) ^ v21 ^ 3 ^ *(v39 + 4 * ((v10 ^ 0xF64E22A9) >> 24)) ^ (*(v38 + 4 * ((v46 ^ 0x5633BC0Au) >> 16)) + 1560360013);
  LODWORD(v10) = ((v13 ^ 0xA891) >> 8);
  LODWORD(v23) = v49 ^ *(v41 + 4 * (v10 ^ 0x2C)) ^ *(v40 + 4 * (v21 ^ 0xADu));
  LODWORD(v13) = LODWORD(STACK[0x2D8]) ^ *(v39 + 4 * ((v21 ^ 0xB1498303) >> 24)) ^ (*(v38 + 4 * BYTE2(v20)) + 1560360013) ^ *(v41 + 4 * (((v46 ^ 0xBC0A) >> 8) ^ 0x2Cu)) ^ *(v40 + 4 * (v13 ^ 0x3Fu));
  LODWORD(v21) = v10 ^ LODWORD(STACK[0x360]) ^ v23;
  LOBYTE(v6) = v44 ^ LODWORD(STACK[0x26C]) ^ ((v46 ^ 0xBC0A) >> 8) ^ v13;
  LODWORD(v22) = v28 ^ 0x5577D8A3;
  v50 = LODWORD(STACK[0x2D4]) ^ v6 ^ ((v9 ^ 0x1ADE) >> 8) ^ *(v39 + 4 * ((v21 ^ 0x7DFCF4F5) >> 24)) ^ *(v41 + 4 * (((v9 ^ 0x1ADE) >> 8) ^ 0x2Cu)) ^ *(v40 + 4 * (v6 ^ 0x17u)) ^ (*(v38 + 4 * ((v28 ^ 0x5577D8A3) >> 16)) + 1560360013);
  LODWORD(v28) = LODWORD(STACK[0x294]) ^ v28 ^ 0xA3 ^ (*(v38 + 4 * (BYTE2(v13) ^ 0x41u)) + 1560360013) ^ *(v39 + 4 * ((v9 ^ 0x7C691ADE) >> 24)) ^ *(v41 + 4 * (((v21 ^ 0xF4F5) >> 8) ^ 0x2Cu)) ^ ((v21 ^ 0xF4F5) >> 8) ^ *(v40 + 4 * (v28 ^ 0xDu));
  LODWORD(v6) = v9 ^ 0xDE ^ BYTE1(v22) ^ LODWORD(STACK[0x330]) ^ *(v39 + 4 * (BYTE3(v13) ^ 0x95)) ^ (*(v38 + 4 * (BYTE2(v23) ^ 0x3Fu)) + 1560360013) ^ *(v40 + 4 * (v9 ^ 0x70u)) ^ *(v41 + 4 * (BYTE1(v22) ^ 0x2Cu));
  LODWORD(v9) = LODWORD(STACK[0x290]) ^ BYTE1(v13) ^ v21 ^ 0xF5 ^ (*(v38 + 4 * ((v9 ^ 0x7C691ADE) >> 16)) + 1560360013) ^ *(v41 + 4 * (BYTE1(v13) ^ 0x35u)) ^ *(v39 + 4 * BYTE3(v22)) ^ *(v40 + 4 * ((v10 ^ LOBYTE(STACK[0x360]) ^ v23) ^ 0x5Bu)) ^ 0x44DADBE3;
  LODWORD(v9) = v9 - ((2 * v9) & 0x3D516768) + 514372532;
  LODWORD(v20) = v50 ^ 0x80168781;
  LODWORD(v24) = __ROR4__(v28 ^ 0x9EF6EE7A, 25) ^ 0x608B82E9;
  HIDWORD(v24) = v24;
  LODWORD(v28) = v24 >> 7;
  LODWORD(v13) = *(v39 + 4 * ((v28 ^ 0x824E74BE) >> 24)) ^ LODWORD(STACK[0x320]) ^ v9 ^ (*(v38 + 4 * (BYTE2(v6) ^ 0x9Bu)) + 1560360013) ^ *(v41 + 4 * (((v50 ^ 0x8781) >> 8) ^ 0x2Cu)) ^ ((v50 ^ 0x8781) >> 8) ^ *(v40 + 4 * (v9 ^ 0xAEu));
  v51 = LODWORD(STACK[0x28C]) ^ v50 ^ 0x81 ^ BYTE1(v6) ^ *(v39 + 4 * (BYTE3(v9) ^ 0x90)) ^ (*(v38 + 4 * (BYTE2(v28) ^ 0x8Du)) + 1560360013) ^ *(v41 + 4 * (BYTE1(v6) ^ 0x4Au)) ^ *(v40 + 4 * (v50 ^ 0x2Fu));
  LODWORD(v21) = LODWORD(STACK[0x288]) ^ v6 ^ ((v28 ^ 0x74BE) >> 8) ^ *(v39 + 4 * BYTE3(v20)) ^ (*(v38 + 4 * (BYTE2(v9) ^ 0xC3u)) + 1560360013) ^ *(v41 + 4 * (((v28 ^ 0x74BE) >> 8) ^ 0x2Cu)) ^ *(v40 + 4 * (v6 ^ 0x8Cu));
  LODWORD(v10) = v28 ^ 0xBE ^ BYTE1(v9) ^ LODWORD(STACK[0x338]) ^ *(v39 + 4 * (BYTE3(v6) ^ 0xB9)) ^ (*(v38 + 4 * BYTE2(v20)) + 1560360013) ^ *(v41 + 4 * (BYTE1(v9) ^ 0x2Cu)) ^ *(v40 + 4 * ((v24 >> 7) ^ 0x10u));
  LODWORD(v20) = v21 ^ 0xC2B7BACC;
  LODWORD(v9) = *(v39 + 4 * ((v13 ^ 0x9D0102FA) >> 24)) ^ LODWORD(STACK[0x318]) ^ (*(v38 + 4 * ((v10 ^ 0x29F200EF) >> 16)) + 1560360013) ^ *(v41 + 4 * (((v21 ^ 0xBACC) >> 8) ^ 0x2Cu)) ^ *(v40 + 4 * (v51 ^ 0xDCu));
  LOWORD(v23) = v51 ^ 0xD72;
  LODWORD(v22) = v21 ^ 0xCC ^ LODWORD(STACK[0x350]) ^ BYTE1(v10) ^ *(v41 + 4 * (BYTE1(v10) ^ 0x2Cu)) ^ *(v39 + 4 * ((v51 ^ 0x5F930D72u) >> 24)) ^ (*(v38 + 4 * ((v13 ^ 0x9D0102FA) >> 16)) + 1560360013) ^ *(v40 + 4 * (v21 ^ 0x62u));
  v52 = v10 ^ 0xEF ^ ((v13 ^ 0x2FA) >> 8) ^ LODWORD(STACK[0x370]) ^ *(v39 + 4 * ((v21 ^ 0xC2B7BACC) >> 24)) ^ (*(v38 + 4 * ((v51 ^ 0x5F930D72u) >> 16)) + 1560360013);
  LODWORD(v21) = *(v39 + 4 * ((v10 ^ 0x29F200EF) >> 24));
  LODWORD(v28) = v52 ^ *(v41 + 4 * (((v13 ^ 0x2FA) >> 8) ^ 0x2Cu)) ^ *(v40 + 4 * (v10 ^ 0x41u));
  LOBYTE(v52) = v23 ^ BYTE1(v20);
  LODWORD(v21) = LODWORD(STACK[0x284]) ^ v13 ^ 0xFA ^ BYTE1(v23) ^ *(v41 + 4 * (BYTE1(v23) ^ 0x2Cu)) ^ (*(v38 + 4 * BYTE2(v20)) + 1560360013) ^ *(v40 + 4 * (v13 ^ 0x54u)) ^ (((2 * v21) & 0xE13A220 ^ 0xF5FCDDDF) - 1399757744 + (((v21 ^ 0x4A158BA5) - 1242925989) ^ ((v21 ^ 0xB8F2E772) + 1192040590) ^ ((v21 ^ 0x5760FFE8) - 1465974760)));
  LODWORD(v20) = v28 ^ 0xA7D3B5A8;
  LODWORD(v13) = LODWORD(STACK[0x280]) ^ v22 ^ 0xEB ^ ((v28 ^ 0xB5A8) >> 8) ^ *(v39 + 4 * (BYTE3(v9) ^ 0x5E)) ^ *(v41 + 4 * (((v28 ^ 0xB5A8) >> 8) ^ 0x2Cu)) ^ *(v40 + 4 * (v22 ^ 0x45u)) ^ (*(v38 + 4 * ((v21 ^ 0xCA9B8565) >> 16)) + 1560360013);
  LODWORD(v28) = LODWORD(STACK[0x27C]) ^ v28 ^ 0xA8 ^ *(v39 + 4 * ((v22 ^ 0xB2ADC8EB) >> 24)) ^ (*(v38 + 4 * (BYTE2(v9) ^ 0xA7u)) + 1560360013) ^ *(v40 + 4 * (v28 ^ 6u)) ^ *(v41 + 4 * (((v21 ^ 0x8565) >> 8) ^ 0x2Cu)) ^ ((v21 ^ 0x8565) >> 8);
  LODWORD(v23) = v21 ^ 0x65 ^ BYTE1(v9) ^ LODWORD(STACK[0x33C]) ^ *(v39 + 4 * BYTE3(v20)) ^ *(v41 + 4 * (BYTE1(v9) ^ 0xCFu)) ^ (*(v38 + 4 * ((v22 ^ 0xB2ADC8EB) >> 16)) + 1560360013) ^ *(v40 + 4 * (v21 ^ 0xCBu));
  LODWORD(v6) = LODWORD(STACK[0x314]) ^ (v9 ^ v52 ^ ((v22 ^ 0xC8EB) >> 8)) ^ (*(v38 + 4 * BYTE2(v20)) + 1560360013) ^ *(v39 + 4 * ((v21 ^ 0xCA9B8565) >> 24)) ^ *(v41 + 4 * (((v22 ^ 0xC8EB) >> 8) ^ 0x2Cu)) ^ *(v40 + 4 * ((v9 ^ v52) ^ 0xB1u)) ^ 0xCD5E83B5;
  v53 = *(&off_1010A0B50 + v8 - 12610) - 1846322083;
  LOBYTE(v39) = v13 ^ 0x9B;
  LODWORD(v10) = *&v53[4 * ((v13 ^ 0xDBB8759B) >> 24)];
  LODWORD(STACK[0x3A4]) = *&v53[4 * ((v28 ^ 0x9692BE0F) >> 24)];
  v54 = *&v53[4 * (BYTE3(v23) ^ 0x39)];
  LODWORD(v21) = *&v53[4 * BYTE3(v6)];
  v55 = *(&off_1010A0B50 + (v8 ^ 0x3194)) - 222088551;
  v56 = *&v55[4 * (BYTE2(v6) ^ 0xE2)];
  v57 = ((v13 ^ 0xDBB8759B) >> 16);
  v58 = *&v55[4 * (v57 ^ 0xE2)];
  v59 = ((v28 ^ 0x9692BE0F) >> 16);
  v60 = *&v55[4 * (v59 ^ 0xE2)];
  LODWORD(v22) = BYTE2(v23);
  v61 = *&v55[4 * (BYTE2(v23) ^ 0x7C)];
  v62 = *(&off_1010A0B50 + v8 - 12962) - 1836331011;
  LODWORD(v55) = *&v62[4 * (BYTE1(v23) ^ 0xE2)];
  LODWORD(STACK[0x3A0]) = *&v62[4 * BYTE1(v6)];
  v63 = *&v62[4 * ((v13 ^ 0x759B) >> 8)];
  LODWORD(v62) = *&v62[4 * ((v28 ^ 0xBE0F) >> 8)];
  HIDWORD(v24) = v10;
  LODWORD(v24) = v10;
  LODWORD(v29) = *(v4 - 132) ^ LODWORD(STACK[0x35C]) ^ v28 ^ 0xF ^ (v24 >> 7) ^ ((v24 >> 7) >> 3) ^ ((v24 >> 7) >> 5);
  LODWORD(v10) = v56 ^ BYTE2(v6);
  v64 = *(&off_1010A0B50 + (v8 ^ 0x39E7)) - 1039668558;
  LODWORD(v24) = __ROR4__(v55, 22);
  v65 = v29 ^ v10 ^ v24 ^ 0x167D5C27 ^ *&v64[4 * (v28 ^ 0x66)];
  v66 = v23;
  v67 = *&v64[4 * (v23 ^ 9)];
  v68 = v6;
  v69 = *&v64[4 * (v6 ^ 0x69)];
  LODWORD(v55) = *&v64[4 * (v13 ^ 0xF2)];
  v70 = v65 ^ (16 * (v24 ^ 0x167D5C27)) & 0xAE00AED0;
  v71 = *(&off_1010A0B50 + v8 - 10532) - 1746682519;
  *(*(v4 - 120) + v35) = ((HIBYTE(v70) ^ 0xBE) - 28) ^ 0x8C ^ v71[HIBYTE(v70) ^ 0x3CLL];
  HIDWORD(v24) = v21 ^ 0xFFFFFFF9;
  LODWORD(v24) = v21 ^ 0xF9341380;
  LODWORD(v34) = v24 >> 7;
  LODWORD(v24) = __ROR4__(v62, 22);
  v72 = LODWORD(STACK[0x270]) ^ LODWORD(STACK[0x3A8]) ^ v22 ^ v39 ^ v61 ^ v55 ^ (v34 >> 3) ^ (v34 >> 5) ^ v34 & 0xBFFFFFFF ^ v24 ^ 0xFAA6F046 ^ (16 * (v24 ^ 0xFAA6F046)) & 0xAE00AED0;
  v73 = STACK[0x2D0];
  v74 = v34 & 0x40000000;
  v75 = LODWORD(STACK[0x2D0]) < 0x3B453EEB;
  if ((v74 & STACK[0x308]) != 0)
  {
    v74 = -v74;
  }

  v76 = v72 ^ (v74 + LODWORD(STACK[0x264]));
  v77 = *(&off_1010A0B50 + v8 - 9808) - 1986861347;
  *(*(v4 - 120) + *(v4 - 232)) = (79 * v77[BYTE1(v76) ^ 0x75] + 35) ^ 0xEE;
  v78 = *(&off_1010A0B50 + (v8 ^ 0x3182)) - 1185732031;
  *(*(v4 - 120) + *(v4 - 256)) = v78[v76 ^ 0x6CLL] ^ (((4 * v78[v76 ^ 0x6CLL]) ^ 0xCC) + 12) ^ 0x7C;
  *(*(v4 - 120) + *(v4 - 240)) = (79 * v77[BYTE1(v70) ^ 0x81] + 35) ^ 0xFC;
  HIDWORD(v79) = v54;
  LODWORD(v79) = v54;
  v80 = LODWORD(STACK[0x278]) ^ LODWORD(STACK[0x274]) ^ *(v4 - 128) ^ v68 ^ v59 ^ (v79 >> 7) ^ v60 ^ ((v79 >> 7) >> 3) ^ ((v79 >> 7) >> 5);
  LODWORD(v79) = __ROR4__(v63, 22);
  v81 = v80 ^ v69 ^ v79 ^ 0x4F079D92;
  v82 = v81 ^ (16 * (v79 ^ 0x4F079D92)) & 0xAE00AED0;
  LOBYTE(v80) = v78[(v81 ^ (16 * (v79 ^ 0x92)) & 0xD0) ^ 0xA8];
  *(*(v4 - 120) + *(v4 - 224)) = v80 ^ 0xF6 ^ (((4 * v80) ^ 0xCC) + 12);
  *(*(v4 - 120) + *(v4 - 208)) = (79 * v77[BYTE1(v82) ^ 0x72] + 35) ^ 0xC;
  v83 = *(v4 - 124) ^ LODWORD(STACK[0x340]) ^ v66 ^ v57 ^ v58;
  HIDWORD(v79) = STACK[0x3A4];
  LODWORD(v79) = STACK[0x3A4];
  v84 = *(v4 - 120);
  v85 = v83 ^ (v79 >> 7) ^ ((v79 >> 7) >> 3) ^ ((v79 >> 7) >> 5);
  LODWORD(v79) = __ROR4__(STACK[0x3A0], 22);
  v86 = v85 ^ v67 ^ v79 ^ 0x8E9DC7A6;
  v87 = v86 ^ (16 * (v79 ^ 0x8E9DC7A6)) & 0xAE00AED0;
  *(v84 + *(v4 - 248)) = ((HIBYTE(v76) ^ 5) - 28) ^ 0xB2 ^ v71[HIBYTE(v76) ^ 0x87];
  v88 = v78[(v86 ^ (16 * (v79 ^ 0xA6)) & 0xD0) ^ 0xBBLL];
  *(v84 + *(v4 - 168)) = v88 ^ 0x85 ^ (((4 * v88) ^ 0xCC) + 12);
  v89 = *(&off_1010A0B50 + (v8 ^ 0x3B79)) - 748870114;
  *(v84 + *(v4 - 184)) = v89[BYTE2(v86) ^ 0xF8] ^ 0xD2;
  *(v84 + *(v4 - 216)) = v89[BYTE2(v65) ^ 0x3CLL] ^ 0x76;
  *(v84 + *(v4 - 152)) = v78[v70 ^ 0xC8] ^ 0x8B ^ (((4 * v78[v70 ^ 0xC8]) ^ 0xCC) + 12);
  *(v84 + *(v4 - 192)) = ((HIBYTE(v87) ^ 0x75) - 28) ^ 0xB4 ^ v71[HIBYTE(v87) ^ 0xF7];
  *(v84 + *(v4 - 160)) = (79 * v77[BYTE1(v87) ^ 0x53] + 35) ^ 0xCF;
  *(v84 + *(v4 - 176)) = v89[BYTE2(v76) ^ 0x38] ^ 0x24;
  *(v84 + *(v4 - 200)) = v89[((BYTE2(v81) ^ 0x98) - ((v81 >> 15) & 0x40) + 32) ^ 0xFBLL] ^ 0xE6;
  *(v84 + *(v4 - 144)) = ((HIBYTE(v82) ^ 0xED) - 28) ^ v71[HIBYTE(v82) ^ 0x6FLL] ^ 0xF;
  v90 = (((v1 ^ 0xF49EACD3) + 190927661) ^ ((v1 ^ 0x6E0452E0) - 1845777120) ^ ((v1 ^ 0x6699F2A2) - 1721365154)) + 1815090626;
  v91 = (v90 ^ 0xF88E4DE) & (2 * (v90 & 0x8FD2F6DF)) ^ v90 & 0x8FD2F6DF;
  v92 = ((2 * (v90 ^ 0x18D217A)) ^ 0x1CBFAF4A) & (v90 ^ 0x18D217A) ^ (2 * (v90 ^ 0x18D217A)) & 0x8E5FD7A4;
  LODWORD(v89) = v92 ^ 0x824050A5;
  v93 = (v92 ^ 0xC1F8700) & (4 * v91) ^ v91;
  v94 = ((4 * v89) ^ 0x397F5E94) & v89 ^ (4 * v89) & 0x8E5FD7A4;
  v95 = (v94 ^ 0x85F5680) & (16 * v93) ^ v93;
  v96 = ((16 * (v94 ^ 0x86008121)) ^ 0xE5FD7A50) & (v94 ^ 0x86008121) ^ (16 * (v94 ^ 0x86008121)) & 0x8E5FD780;
  v97 = v95 ^ 0x8E5FD7A5 ^ (v96 ^ 0x845D5200) & (v95 << 8);
  v98 = v90 ^ (2 * ((v97 << 16) & 0xE5F0000 ^ v97 ^ ((v97 << 16) ^ 0x57A50000) & (((v96 ^ 0xA0285A5) << 8) & 0xE5F0000 ^ (((v96 ^ 0xA0285A5) << 8) ^ 0x5FD70000) & (v96 ^ 0xA0285A5) ^ 0x80000)));
  v99 = (((v98 ^ 0xA5951C57) + 957265581) ^ ((v98 ^ 0x76AE5E85) - 365562753) ^ ((v98 ^ 0x4C5C1B47) - 792219203)) + 927484796;
  v100 = v75 ^ (v99 < 0x3B453EEB);
  v101 = v99 < v73;
  if (v100)
  {
    v101 = v75;
  }

  return (*(STACK[0x378] + 8 * ((19479 * v101) ^ v8)))();
}

uint64_t sub_1002BF150@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x10EDC]) = (v2 - 7960) ^ (1012831759 * ((((&STACK[0x10000] + 3800) | 0xD0845D2C) - ((&STACK[0x10000] + 3800) | 0x2F7BA2D3) + 796631763) ^ 0xC0174BA6));
  STACK[0x10EE0] = a1;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v2 + 16339)))(&STACK[0x10ED8]);
  *v1 = 0;
  return (*(v3 + 8 * (v2 - 24938)))(v4);
}

uint64_t sub_1002BF1E4()
{
  v4 = STACK[0x923C];
  v5 = ((v0 - 23577) | 0x2802) + LODWORD(STACK[0x5E1C]) - LODWORD(STACK[0x923C]) + 638393587;
  v6 = (v5 ^ 0x89C6328E) & (2 * (v5 & (v0 - 1915378082))) ^ v5 & (v0 - 1915378082);
  v7 = ((2 * (v5 ^ 0x986E328E)) ^ 0x2B70634C) & (v5 ^ 0x986E328E) ^ (2 * (v5 ^ 0x986E328E)) & 0x15B831A6;
  v8 = v7 ^ 0x148810A2;
  v9 = (v7 ^ 0x1300100) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0x56E0C698) & v8 ^ (4 * v8) & 0x15B831A0;
  v11 = (v10 ^ 0x14A00080) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x1183126)) ^ 0x5B831A60) & (v10 ^ 0x1183126) ^ (16 * (v10 ^ 0x1183126)) & 0x15B831A0;
  v13 = v11 ^ 0x15B831A6 ^ (v12 ^ 0x11801000) & (v11 << 8);
  LODWORD(STACK[0x45F4]) = v5 ^ (2 * ((v13 << 16) & 0x15B80000 ^ v13 ^ ((v13 << 16) ^ 0x31A60000) & (((v12 ^ 0x4382186) << 8) & 0x15B80000 ^ 0x5880000 ^ (((v12 ^ 0x4382186) << 8) ^ 0x38310000) & (v12 ^ 0x4382186)))) ^ 0x6C33A775;
  v14 = v1 + (v4 + 1048627656);
  v15 = STACK[0x59F0];
  v16 = 634647737 * (((~(&STACK[0x10000] + 3800) & 0xBE485568) - (~(&STACK[0x10000] + 3800) | 0xBE485569)) ^ 0xD3DE7A95);
  STACK[0x10EF8] = v14;
  STACK[0x10EE8] = v14;
  LODWORD(STACK[0x10EF0]) = v16 + 1473465215 * (v3 - v4) + 655428302;
  STACK[0x10ED8] = &STACK[0x45F4];
  LODWORD(STACK[0x10EF4]) = (v0 + 865388390) ^ v16;
  LODWORD(STACK[0x10F00]) = v16 + 787148885 * v15 - 19667559;
  v17 = STACK[0xF18];
  v18 = (*(STACK[0xF18] + 8 * (v0 + 28617)))(&STACK[0x10ED8]);
  return (*(v17 + 8 * ((50590 * (LODWORD(STACK[0x10EE0]) == v2)) ^ v0)))(v18);
}

uint64_t sub_1002BF51C()
{
  v2 = STACK[0x59C8];
  *(v0 + 104) = 16;
  *(v0 + 103) = v2[23];
  *(v0 + 102) = v2[22];
  *(v0 + 101) = v2[21];
  *(v0 + 100) = v2[20];
  *(v0 + 99) = v2[19];
  *(v0 + 98) = v2[18];
  *(v0 + 97) = v2[17];
  *(v0 + 96) = v2[16];
  *(v0 + 95) = v2[15];
  *(v0 + 94) = v2[14];
  *(v0 + 93) = v2[13];
  *(v0 + 92) = v2[12];
  *(v0 + 91) = v2[11];
  *(v0 + 90) = v2[10];
  *(v0 + 89) = v2[9];
  *(v0 + 88) = v2[8];
  return (*(STACK[0xF18] + 8 * (((STACK[0x4FB8] == 0) * ((v1 ^ 0xA4AB33A9) + 1532271252 + ((v1 + 1064706936) & 0xC089FDD5))) ^ v1)))();
}

uint64_t sub_1002BF6BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  STACK[0x7548] = a8;
  STACK[0x77B0] = &STACK[0x1120];
  LODWORD(STACK[0x648C]) = -826270321;
  return (*(STACK[0xF18] + 8 * (v8 ^ (v8 + 1481731429) & 0xACA29BBB ^ 0xFB0C04E0 ^ (5127 * (v8 > 0xD34BC1E)))))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_1002BF760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] - 30181;
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x20D8];
  STACK[0x5D28] = &STACK[0x81B4];
  LODWORD(STACK[0x4704]) = 1945608176;
  return (*(STACK[0xF18] + 8 * v7))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_1002BF7B4@<X0>(int a1@<W8>)
{
  v5 = (v1 + v3 - 60);
  v6 = v1 + 8;
  v7 = (v1 + 8) & 0x28 ^ 0x68;
  v8 = (v1 + v3 - 60) & 0xF;
  *(v4 + v5) = *(v2 + v5 + 68) ^ (v1 + 8) ^ *(v2 + v5 + 86) ^ *(STACK[0xEA0] + v8) ^ *(v8 + STACK[0xEB0] + 1) ^ *(STACK[0xEC0] + v8) ^ (15 * v8) ^ (2 * ((v6 ^ 0x58) & (2 * ((v6 ^ 0x58) & (2 * ((v6 ^ 0x58) & (2 * ((v6 ^ 0x58) & (2 * v7) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ 0x5A;
  LODWORD(v5) = (v1 + 1) | (((v1 + 1) < 0x54u) << 8);
  LODWORD(v8) = (*(v2 + 102) + 22573);
  v9 = v8 < 0xD576;
  v10 = v8 > (v5 - 10974);
  if ((v5 + 22576) < 0x5884 != v9)
  {
    v10 = v9;
  }

  return (*(STACK[0xF18] + 8 * ((254 * v10) ^ a1)))();
}

uint64_t sub_1002BF924()
{
  v0 = STACK[0xF10] - 34773;
  *(STACK[0x6EE0] + 12) = STACK[0x9894];
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x1FB7)))();
}

uint64_t sub_1002BF968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t *a8)
{
  v10 = 0;
  v11 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x20FAB224)) ^ 0x20FAB225;
  v12 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v11 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v11;
  v13 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v12 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v12;
  v14 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v13 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v13;
  v15 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v14 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v14;
  v16 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v15 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v15;
  v17 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v16 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v16;
  v18 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v17 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v17;
  v19 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v18 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v18;
  STACK[0xBE20] = 0;
  STACK[0xBE28] = v8;
  v20 = 16777619 * ((553300517 * v19 + 7) ^ (553300517 * v19)) % 7;
  v21 = 16777619 * ((553300517 * v19 + 6) ^ (553300517 * v19)) % 6;
  v22 = 16777619 * ((553300517 * v19 + 5) ^ (553300517 * v19)) % 5;
  v23 = *(&STACK[0xBE20] | v20);
  *(&STACK[0xBE20] | v20) = STACK[0xBE27];
  v24 = *(&STACK[0xBE20] | v21);
  *(&STACK[0xBE20] | v21) = STACK[0xBE26];
  v25 = *(&STACK[0xBE20] | v22);
  *(&STACK[0xBE20] | v22) = STACK[0xBE25];
  v26 = vdup_n_s32(553300517 * v19);
  v27 = 16777619 * ((553300517 * v19 + 3) ^ (553300517 * v19)) % 3;
  v28.i32[0] = v26.i32[0];
  v28.i32[1] = 553300517 * v19 + 1;
  LOBYTE(STACK[0xBE27]) = v23;
  v29 = veor_s8(vmul_s32(v28, v26), v26);
  LOBYTE(STACK[0xBE26]) = v24;
  LOBYTE(STACK[0xBE25]) = v25;
  v30 = STACK[0xBE20];
  LOBYTE(STACK[0xBE20]) = STACK[0xBE24];
  LOBYTE(STACK[0xBE24]) = v30;
  v31 = *(&STACK[0xBE20] | v27);
  *(&STACK[0xBE20] | v27) = STACK[0xBE23];
  LOBYTE(STACK[0xBE23]) = v31;
  v32 = STACK[0xBE21];
  LOBYTE(STACK[0xBE22]) = STACK[0xBE20];
  LOWORD(STACK[0xBE20]) = v32;
  STACK[0xBE20] = vmla_s32(v29, STACK[0xBE20], vdup_n_s32(0x1000193u));
  v33 = STACK[0xBE28];
  v34 = (553300517 * STACK[0xBE28]) ^ v19;
  v35 = vdupq_n_s32(v34);
  v36 = xmmword_100BC7620;
  v37 = xmmword_100BC7630;
  v38 = xmmword_100BC7640;
  v39 = xmmword_100BC7650;
  v40.i64[1] = 0xFFFFFF0FFFFFFF0ELL;
  v41.i64[0] = 0x9393939393939393;
  v41.i64[1] = 0x9393939393939393;
  v42.i64[0] = 0x1000000010;
  v42.i64[1] = 0x1000000010;
  do
  {
    v43 = *(v33 + v10);
    v63.val[1] = veorq_s8(vqtbl1q_s8(v43, xmmword_100BC7690), veorq_s8(v35, vmulq_s32(vaddq_s32(v38, v35), vsubq_s32(v38, v35))));
    v63.val[0] = veorq_s8(vqtbl1q_s8(v43, xmmword_100BC76A0), veorq_s8(v35, vmulq_s32(vaddq_s32(v39, v35), vsubq_s32(v39, v35))));
    v63.val[2] = veorq_s8(vqtbl1q_s8(v43, xmmword_100BC7680), veorq_s8(v35, vmulq_s32(vaddq_s32(v37, v35), vsubq_s32(v37, v35))));
    v63.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v43, xmmword_100BC7670), v35), vmulq_s32(vaddq_s32(v36, v35), vsubq_s32(v36, v35)));
    *(v33 + v10) = vmulq_s8(vqtbl4q_s8(v63, xmmword_100BC7660), v41);
    v10 += 16;
    v39 = vaddq_s32(v39, v42);
    v38 = vaddq_s32(v38, v42);
    v37 = vaddq_s32(v37, v42);
    v36 = vaddq_s32(v36, v42);
  }

  while (v10 != 576);
  v44 = 0;
  v45 = xmmword_100F52AE0;
  v46 = vdupq_n_s32(v34);
  v47 = xmmword_100F52AF0;
  v48 = v33 + 576;
  v49.i64[0] = 0x800000008;
  v49.i64[1] = 0x800000008;
  do
  {
    v40.i64[0] = *(v48 + v44);
    v62.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v40, xmmword_100BC7690), v46), vmulq_s32(vaddq_s32(v45, v46), vsubq_s32(v45, v46)));
    v62.val[0] = veorq_s8(vqtbl1q_s8(v40, xmmword_100BC76A0), veorq_s8(v46, vmulq_s32(vaddq_s32(v47, v46), vsubq_s32(v47, v46))));
    v40 = vqtbl2q_s8(v62, xmmword_100F52AD0);
    *(v48 + v44) = vmul_s8(*v40.i8, 0x9393939393939393);
    v47 = vaddq_s32(v47, v49);
    v45 = vaddq_s32(v45, v49);
    v44 += 8;
  }

  while (v44 != 8);
  v50 = 72;
  do
  {
    v51 = 16777619 * ((v34 + v50) ^ v34) % v50;
    v52 = *(v33 + 8 * v51) ^ *(v33 + 8 * v50);
    *(v33 + 8 * v50) = v52;
    v53 = *(v33 + 8 * v51) ^ v52;
    *(v33 + 8 * v51) = v53;
    *(v33 + 8 * v50) ^= v53;
    v54 = v50-- + 1;
  }

  while (v54 > 2);
  v55 = *(&STACK[0xBE28] + v20);
  *(&STACK[0xBE28] + v20) = STACK[0xBE2F];
  LOBYTE(STACK[0xBE2F]) = v55;
  v56 = *(&STACK[0xBE28] + v21);
  *(&STACK[0xBE28] + v21) = STACK[0xBE2E];
  LOBYTE(STACK[0xBE2E]) = v56;
  v57 = *(&STACK[0xBE28] + v22);
  *(&STACK[0xBE28] + v22) = STACK[0xBE2D];
  LOBYTE(STACK[0xBE2D]) = v57;
  v58 = STACK[0xBE28];
  LOBYTE(STACK[0xBE28]) = STACK[0xBE2C];
  LOBYTE(STACK[0xBE2C]) = v58;
  v59 = *(&STACK[0xBE28] + v27);
  *(&STACK[0xBE28] + v27) = STACK[0xBE2B];
  LOBYTE(STACK[0xBE2B]) = v59;
  v60 = STACK[0xBE29];
  LOBYTE(STACK[0xBE2A]) = STACK[0xBE28];
  LOWORD(STACK[0xBE28]) = v60;
  STACK[0xBE28] = vmla_s32(v29, STACK[0xBE28], vdup_n_s32(0x1000193u));
  *a8 = STACK[0xBE28] ^ STACK[0xBE20];
  return (*(STACK[0xF18] + 8 * (v9 + 70)))();
}

uint64_t sub_1002BFE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a7 + 57) + 512567697 + ((((32 * v7) ^ 0xE90C58DC) + 709227302) ^ (((32 * v7) ^ 0x7F3A6B1) - 994439863) ^ ((((STACK[0xF10] - 34085) | 0x1129) ^ 0x170EA08A) + ((32 * v7) ^ 0xD4471C4D)));
  v9 = v8 < 0x187E7367;
  v10 = v8 > LODWORD(STACK[0xB6CC]) + 410940263;
  if (LODWORD(STACK[0xB6CC]) > 0xE7818C98 != v9)
  {
    v10 = v9;
  }

  return (*(STACK[0xF18] + 8 * ((99 * !v10) ^ (STACK[0xF10] - 29958))))();
}

uint64_t sub_1002BFEFC()
{
  v0 = STACK[0xF10] + 9910;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] ^ 0x4192)))(STACK[0x15A8]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1002BFFE8@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 & 0xFDF4B7DE) + (a1 ^ 0xFDFFFAF37EFA5BEFLL) + 0x200050D2C7E01E9;
  v4 = STACK[0x7D20] - 0x6F6F2C6D76733C40;
  v5 = (v4 < 0xAB785DD4) ^ (v3 < (v2 + 23868) + 2876756633u);
  v6 = v3 > v4;
  if (v5)
  {
    v6 = v3 < (v2 + 23868) + 2876756633u;
  }

  if (v6)
  {
    v7 = 371891407;
  }

  else
  {
    v7 = STACK[0xB3D8];
  }

  return (*(STACK[0xF18] + 8 * ((42347 * (v7 == ((1229 * (v2 ^ 0x2DE5)) ^ 0xE9D5BBC3))) ^ v2)))();
}

uint64_t sub_1002C00DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v9 = STACK[0x5618] + 322;
  STACK[0x6740] = v9;
  v10 = STACK[0x6DC0];
  STACK[0xEB0] = STACK[0x6DC0];
  v11 = STACK[0x2528];
  v12 = 1022166737 * ((~(&STACK[0x10000] + 3800) & 0x4864D502 | (&STACK[0x10000] + 3800) & 0xB79B2AF8) ^ 0xF2743490);
  LODWORD(STACK[0x10F00]) = 1931143950 - v12;
  STACK[0x10EF8] = a7;
  STACK[0x10F10] = v10;
  STACK[0x10F08] = v9;
  STACK[0x10EE0] = v11;
  LODWORD(STACK[0x10ED8]) = v8 - v12 + 1845166876;
  LODWORD(STACK[0x10EE8]) = v12 + 536013613;
  LODWORD(STACK[0x10EEC]) = v12 ^ 0x5463261E;
  v13 = STACK[0xF18];
  v14 = *(STACK[0xF18] + 8 * (v8 + 49197));
  STACK[0xED0] = a4;
  STACK[0xEC0] = a7;
  v18 = v14(&STACK[0x10ED8]);
  v19 = STACK[0xEC0];
  v20 = STACK[0xED0];
  STACK[0x4B88] = *(v13 + 8 * v8);
  return (*(v13 + 8 * (v8 - 30461 + v8 + 30156)))(v18, 0xC51EBEC5F2A2DE03, 35361, v20, a5, a6, v19, a8);
}

uint64_t sub_1002C0224()
{
  v2 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x14CFE928)) ^ 0x14CFE92BLL;
  v3 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v2 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v2;
  v4 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v3 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v3;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *(v0 + 48);
  v11 = v9 ^ (349169963 * v10) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL)));
  for (i = 1; i != 33; ++i)
  {
    v13 = 16777619 * ((v11 + i) ^ v11) % i;
    v14 = *(v10 + 8 * v13) ^ *(v10 + 8 * i);
    *(v10 + 8 * i) = v14;
    v15 = *(v10 + 8 * v13) ^ v14;
    *(v10 + 8 * v13) = v15;
    *(v10 + 8 * i) ^= v15;
  }

  v16 = 0;
  v17 = xmmword_100BC7620;
  v18 = xmmword_100BC7630;
  v19 = xmmword_100BC7640;
  v20 = xmmword_100BC7650;
  v21.i64[0] = 0x9B009B009B009BLL;
  v21.i64[1] = 0x9B009B009B009BLL;
  v22.i64[0] = 0x1000000010;
  v22.i64[1] = 0x1000000010;
  v23 = vdupq_n_s32(v11);
  do
  {
    v24 = *(v10 + v16);
    v25 = vmovl_high_u8(v24);
    v26 = vmovl_u8(*v24.i8);
    v37.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v19, v23), vsubq_s32(v19, v23)), v23), vmull_high_u16(v26, v21));
    v37.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v18, v23), vsubq_s32(v18, v23)), v23), vmull_u16(*v25.i8, 0x9B009B009B009BLL));
    v37.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v20, v23), vsubq_s32(v20, v23)), v23), vmull_u16(*v26.i8, 0x9B009B009B009BLL));
    v37.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v17, v23), vsubq_s32(v17, v23)), v23), vmull_high_u16(v25, v21));
    *(v10 + v16) = vqtbl4q_s8(v37, xmmword_100BC7660);
    v16 += 16;
    v20 = vaddq_s32(v20, v22);
    v19 = vaddq_s32(v19, v22);
    v18 = vaddq_s32(v18, v22);
    v17 = vaddq_s32(v17, v22);
  }

  while (v16 != 256);
  v27 = 0;
  v28 = xmmword_100F52B10;
  v29 = xmmword_100F52B20;
  v30 = vdupq_n_s32(v11);
  v31 = v10 + 256;
  v32.i64[0] = 0x9B009B009B009BLL;
  v32.i64[1] = 0x9B009B009B009BLL;
  v33.i64[0] = 0x800000008;
  v33.i64[1] = 0x800000008;
  do
  {
    v34 = vmovl_u8(*(v31 + v27));
    v36.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v28, v30), vsubq_s32(v28, v30)), v30), vmull_high_u16(v34, v32));
    v36.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v29, v30), vsubq_s32(v29, v30)), v30), vmull_u16(*v34.i8, 0x9B009B009B009BLL));
    *(v31 + v27) = vqtbl2q_s8(v36, xmmword_100F52AD0).u64[0];
    v29 = vaddq_s32(v29, v33);
    v28 = vaddq_s32(v28, v33);
    v27 += 8;
  }

  while (v27 != 8);
  return (*(STACK[0xF18] + 8 * v1))(v28, v29);
}

uint64_t sub_1002C050C@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 4212) = v5;
  *(v2 + 4216) = a1;
  *(v2 + 4224) = v4;
  if (a1)
  {
    v6 = v3 == ((11 * (((v1 - 46377) | 0x8B23) ^ 0x8526)) ^ 0xE9D55C2E);
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  return (*(STACK[0xF18] + 8 * (v1 | (16 * v7))))();
}

uint64_t sub_1002C0570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v8 = (((LODWORD(STACK[0x4250]) ^ 0x2A831422FC714F29) + (a8 ^ 0xD57CEBDD038E3106)) ^ ((LODWORD(STACK[0x4250]) ^ 0x9FF0FE1165AA87DALL) + 0x600F01EE9A557826) ^ ((LODWORD(STACK[0x4250]) ^ 0xB573EA33700E0FE2) + 0x4A8C15CC8FF1F01ELL)) + 0x287E22A9038B80E3;
  LODWORD(STACK[0x705C]) = STACK[0x17D8];
  STACK[0x3CC8] = v8;
  LODWORD(STACK[0x2D84]) = 3;
  LOBYTE(STACK[0x3FCF]) = 96;
  LODWORD(STACK[0x4078]) = 952619587;
  return (*(STACK[0xF18] + 8 * (a8 ^ 0x9F44)))();
}

uint64_t sub_1002C0668()
{
  v4 = *(v3 + 1800);
  v5 = *(v4 + 24);
  LODWORD(STACK[0xA194]) = (v1 >> 4) ^ 0x4707856B;
  STACK[0xA198] = v4 + 24;
  v6 = 634647737 * (((((&STACK[0x10000] + 3800) | 0x7F77671A) ^ 0xFFFFFFFE) - (~(&STACK[0x10000] + 3800) | 0x808898E5)) ^ 0xED1EB719);
  STACK[0x10EE8] = &STACK[0xF28] ^ 0xC4E7DDCF2A63958CLL;
  LODWORD(STACK[0x10EF4]) = v2 - v6 + 1352454500;
  LODWORD(STACK[0x10EE0]) = v6 + (((v0 ^ 0x20D88A33) - 551062067) ^ ((v0 ^ 0x3306D2A1) - 856085153) ^ ((v0 ^ 0x84D85FDA) + 2066194470)) - 1038619786;
  LODWORD(STACK[0x10ED8]) = v6 + ((((v1 >> 4) ^ 0x386DC1D7) - 2137670844) ^ (((v1 >> 4) ^ 0x9F3378) - 1201190419) ^ (((v1 >> 4) ^ 0x3646767F) - 1900147476)) - 1462826144;
  LODWORD(STACK[0x10EDC]) = ((((v5 ^ ((v2 ^ 0x899D) + 1077399552)) - 1077435195) ^ ((v5 ^ 0xF2276061) + 232300447) ^ ((v5 ^ 0xB21F3B05) + 1306576123)) + 678242615) ^ v6;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v2 + 51341)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * (v2 ^ 0x1778)))(v8);
}

uint64_t sub_1002C0968()
{
  LODWORD(STACK[0x91AC]) = -371865851;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 29375)))(20);
  STACK[0x8208] = v2;
  STACK[0x14E8] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 - 1268731389) & 0x4B9EFE3F) - 2069)) ^ v0)))();
}

uint64_t sub_1002C0AC0()
{
  v2 = (v0 + 555) | 0x5094;
  v3 = 1112314453 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x4C6B8420) + 1282114593) ^ 0xA33DAEF8);
  LODWORD(STACK[0xED0]) = v2;
  LODWORD(STACK[0x10EDC]) = v3 + v0 + 38290;
  LODWORD(STACK[0x10EE0]) = v3 + v2 + 464174850 + (((v1 ^ 0xC3608AE1) + 1017083167) ^ ((v1 ^ 0xA088369E) + 1601685858) ^ (((((v0 + 555) ^ 0x719B) - 1975705477) ^ v1) + 1975682194));
  v4 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 + 41650)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * ((6138 * (LOBYTE(STACK[0x10ED8]) == 99)) ^ v0)))(2234432642, 2234432643, 2234432644, 1775617819, 10, 3923101457, 4294932395, -1080961354);
}

uint64_t sub_1002C0C10@<X0>(uint64_t a1@<X8>)
{
  *v3 = v2;
  *(v2 + 8) = *(a1 + 8);
  *(a1 + 8) = v2;
  return (*(STACK[0xF18] + 8 * v1))();
}

void *sub_1002C0C80()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xC73A)))(STACK[0x1058], 0, 32);
  return (*(v1 + 8 * (((v0 + 7873) ^ 0xAC71) + v0)))(&STACK[0x3868], v2);
}

uint64_t sub_1002C0CD8()
{
  STACK[0x7588] = 0;
  v1 = STACK[0xF18];
  STACK[0x3058] = *(STACK[0xF18] + 8 * (v0 - 31780));
  return (*(v1 + 8 * ((v0 - 31780) ^ 0x64A ^ (8721 * ((v0 - 19897 + v0 - 31780 - 71612682) > 0x607B6870)))))();
}

uint64_t sub_1002C0E20()
{
  v0 = STACK[0xF10] - 19176;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] ^ 0x4192)))(STACK[0x6220]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1002C0F00@<X0>(unint64_t a1@<X8>)
{
  STACK[0x10EE0] = a1;
  LODWORD(STACK[0x10EDC]) = (v2 - 7960) ^ (1012831759 * ((((&STACK[0x10000] + 3800) ^ 0x75F54E3E | 0x8244B079) - ((&STACK[0x10000] + 3800) ^ 0x75F54E3E) + (((&STACK[0x10000] + 3800) ^ 0x75F54E3E) & 0x7DBB4F86)) ^ 0xE722E8CD));
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v2 + 16339)))(&STACK[0x10ED8]);
  *v1 = 0;
  return (*(v3 + 8 * (v2 - 27094)))(v4);
}

uint64_t sub_1002C11AC(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, void *a5, int a6, int a7, char a8)
{
  v16 = *(STACK[0xEC0] + 8);
  v17 = (v16 + STACK[0xEB0]);
  v18 = v14;
  v19 = *(*a5 + (*a4 & 0x72D7ACF8));
  v20 = *v17 ^ *(a2 + v10);
  v21 = (a6 | a7 & (a6 ^ 0xD6D6F8FF)) - (a7 & (a6 ^ 0xD6D6F8FF) & a6);
  v22 = ((92 * ((a6 ^ 0xF752B80F) / 0x2E)) | (2 * (((a6 ^ 0xF752B80F) % 0x2E) & 1))) + 2 * (((a6 ^ 0xF752B80F) % 0x2E) & 0x3E);
  v23 = (a6 ^ 0x8AD47F0) + (a6 ^ 0xF752B80F) + ((v22 ^ 0xC70885E0) & (a6 ^ 0xF752B80F)) + 1;
  v22 &= 0x638442F0u;
  v24 = ((((v19 ^ v17) & STACK[0xE80]) * v8) ^ ((((v19 ^ v17) & STACK[0xE80]) * v8) >> 16)) * v8;
  v25 = v23 ^ v22;
  v26 = (v25 | 0xBCFFFF1F) - (~v25 | 0x430000E0) + ((2 * (v23 ^ ~v22)) & 0x860001C0);
  v27 = ((v26 >> 1) + ((4 * v21) >> 1) - ((v26 >> 1) ^ ((4 * v21) >> 1))) ^ v21;
  v28 = (((4 * v25) & 0x222892A0) + 38872388) & 0x222892A0 | (4 * v25) & 0xDDD76D5C;
  v29 = ((((v25 & 0x548A4890) + 1762955426) & 0x548A4890 | v25 & 0xA51124A | ((v25 & 0xA124A524) + 1095322152) & 0xA124A524) >> 1) ^ 0x1000020;
  v30 = (((v28 >> 1) ^ 0x88420) + v29 - ((v28 >> 1) ^ 0x88420 ^ v29)) & (16 * v27);
  v31 = v20 ^ *(a1 + (v24 >> 24)) ^ *((v24 >> 24) + a3 + 1) ^ *((v24 >> 24) + v11 + 3) ^ v24 ^ ((v24 >> 24) * v9);
  LOBYTE(v24) = 2 * ((v30 | ~v27) + (v27 | ~v30) + 2 * (v30 ^ v27)) + 4;
  LOBYTE(v31) = ((v31 ^ 0xAF) - 25) ^ ((v31 ^ 0x79) + 49) ^ ((v31 ^ 0xD6) - 96);
  v32 = (v16 + STACK[0xEA0]);
  v33 = ((v19 ^ v32) & 0x7FFFFFFF) * v8;
  v34 = ((HIWORD(v33) & 0x2854) - (v33 & v13) + 39080104) & v13 | HIWORD(v33) & 0x928A ^ v33 & 0xA450928A | ((HIWORD(v33) & 0x4521) + (v33 & v15)) & v15;
  v35 = (v34 & 3) * v8 - 1131493164 * (v34 >> 2);
  LOBYTE(v24) = 2 * ((v24 ^ a6) + (v24 & a8) + (a6 | ~v24)) + 2;
  LODWORD(v32) = (*(a1 + (v35 >> 24)) ^ *v32 ^ *((v35 >> 24) + a3 + 1) ^ *((v35 >> 24) + v11 + 3) ^ v35 ^ ((((v34 & 3) * v8 - 1131493164 * (v34 >> 2)) >> 24) * v9)) & 0xFFFFFFFE;
  LOBYTE(v34) = v31 - 74;
  LOBYTE(v31) = (((v32 ^ 0x99) + 28) ^ ((v32 ^ 0x10) - 109) ^ ((v32 ^ 0x88) + 11)) - 106 * v31;
  v36 = (v18 + LODWORD(STACK[0xE90]) + v10);
  LOBYTE(v31) = v31 + ((((v24 ^ 0x5A) - 101) ^ ((v24 ^ 0x67) - 88) ^ ((v24 ^ 0xC2) + 3)) + 42) * v34;
  v37 = ((((v19 ^ v36) & 0x7FFFFFFF) * v8) ^ ((((v19 ^ v36) & 0x7FFFFFFF) * v8) >> 16)) * v8;
  *v36 = *((v37 >> 24) + a3 + 1) ^ *(a1 + (v37 >> 24)) ^ *((v37 >> 24) + v11 + 3) ^ v37 ^ (BYTE3(v37) * v9) ^ (v31 + 32);
  if (v12 < 0xF50E8540 != (a6 - 1981448128) < 0xF50E8540)
  {
    v38 = v12 < 0xF50E8540;
  }

  else
  {
    v38 = a6 - 1981448128 < v12;
  }

  return (*(STACK[0xF18] + 8 * ((47 * !v38) ^ LODWORD(STACK[0xED0]))))();
}

uint64_t sub_1002C16BC()
{
  v2 = STACK[0x7980];
  v2[15] = 0;
  v2[17] = 0;
  v2[5] = 0;
  return (*(STACK[0xF18] + 8 * ((((v0 + 32482) ^ 0x9987) * (v1 == -371865833)) ^ v0)))();
}

uint64_t sub_1002C17BC()
{
  v1 = 2621 * (STACK[0xF10] ^ 0x8B39);
  v2 = STACK[0xF10] - 10083;
  v3 = STACK[0xF10] + 3228;
  v4 = STACK[0x1E30];
  **(v4 + 480) = v0;
  return (*(STACK[0xF18] + 8 * ((53 * ((v2 ^ 0xFFFFFFFFFFFF9C08) - *(v4 + 480) + STACK[0x9088] < (v1 ^ 0x146AuLL))) ^ v3)))();
}

uint64_t sub_1002C18DC()
{
  v2 = STACK[0x1330];
  STACK[0xA0C8] = STACK[0x1330];
  STACK[0x10EE8] = v2;
  LODWORD(STACK[0x10ED8]) = (v1 + 11743) ^ (906386353 * ((-2 - ((~(&STACK[0x10000] + 3800) | 0x8A4D7183) + ((&STACK[0x10000] + 3800) | 0x75B28E7C))) ^ 0xBB4CBCA7));
  LOWORD(STACK[0x10EE0]) = 23473 * ((-2 - ((~(&STACK[0x10000] + 3800) | 0x7183) + ((&STACK[0x10000] + 3800) | 0x8E7C))) ^ 0xBCA7) + 18092;
  v3 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 + 50539)))(&STACK[0x10ED8]);
  STACK[0x98B0] = *(v3 + 8 * v1);
  return (*(v3 + 8 * ((v1 + 5872) ^ v1)))(v0 + 60);
}

uint64_t sub_1002C1A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = STACK[0xF10] - 34087;
  LODWORD(STACK[0xA590]) = STACK[0x9894];
  v5 = *(STACK[0x2C38] + 32) + 1347428976;
  v6 = ((v5 ^ 0xDC1FD4EC) + 1940916583) ^ v5 ^ ((v5 ^ 0x6D374926) - 1030187859) ^ ((v5 ^ 0x9E870049) + 824761796) ^ ((v5 ^ 0x7FFFBFF6) - 800038275);
  LODWORD(STACK[0xA59C]) = v6 ^ 0x92B20F68;
  return (*(STACK[0xF18] + 8 * (v4 ^ 0x1ABB)))(a1, a2, a3, a4, ((0x90 % (v6 ^ 0x50502275)) ^ 0xF72F3FF7) + 1225740884 + ((2 * (0x90 % (v6 ^ 0x50502275))) & 0x1EE));
}

uint64_t sub_1002C1C80@<X0>(int a1@<W8>)
{
  *(v6 + (v5 - 32069)) = *(v1 + (v5 - 32069)) ^ *(v8 + (v5 - 32069)) ^ 0x5F;
  v9 = (v5 - 6279);
  v10 = (v7 > v4) ^ (v9 < v2);
  v11 = v9 < v3;
  if (v10)
  {
    v11 = v7 > v4;
  }

  return (*(STACK[0xF18] + 8 * ((v11 * (((a1 - 22169) | 0x6609) ^ 0x8434)) ^ a1)))();
}

uint64_t sub_1002C1D5C()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 21439 + ((v0 + 24542) | 0x368))))();
}

uint64_t sub_1002C2304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  v4 = (v3 ^ 0x7F567DFFF3DA7E70) - 0x6206254461004A40 + ((v3 << ((a3 + 123) & 0xBB ^ 0x3Au)) & 0x1E7B4FCE0);
  STACK[0xA6D0] = v4;
  v5 = STACK[0x8528];
  STACK[0xA6D8] = STACK[0x8528];
  return (*(STACK[0xF18] + 8 * ((50343 * (v4 - v5 + 0x5F623B276A31B18BLL < 0xFFFFFFFFFFFFFFF6)) ^ a3)))(a1, a2, 371891407);
}

uint64_t sub_1002C23C0()
{
  v2 = *(v0 + 16);
  LODWORD(STACK[0x10EE0]) = v1 + 155453101 * ((((&STACK[0x10000] + 3800) | 0x8BD19139) - ((&STACK[0x10000] + 3800) | 0x742E6EC6) + 1949200070) ^ 0x6DF78AF6) + 296753103;
  STACK[0x10ED8] = v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0x41F1)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (v1 - 11127)))(v4);
}

uint64_t sub_1002C2458@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x83CC]) = a1;
  LODWORD(STACK[0xB3B0]) = a1 + 1650982681;
  v3 = (((LODWORD(STACK[0x4ADC]) ^ 0xD8B9C26F) + 658914705) ^ (((v1 - 7959) ^ LODWORD(STACK[0x4ADC]) ^ 0x9F7051B0) + 1620027788) ^ ((LODWORD(STACK[0x4ADC]) ^ 0xAE1C530A) + ((v1 - 134358748) & 0x8DDFFF56 ^ 0xD43E53A0))) + 141317962;
  v4 = v3 > 0x1E969038 && a1 + 513183806 > v3;
  LOBYTE(STACK[0xB3B7]) = v4;
  if (v4)
  {
    v5 = v2;
  }

  else
  {
    v5 = -371865839;
  }

  LODWORD(STACK[0x135C]) = v5;
  return (*(STACK[0xF18] + 8 * ((451 * v4) ^ v1)))();
}

uint64_t sub_1002C2560()
{
  v1 = STACK[0xF18];
  STACK[0x1270] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((63866 * (v0 - 1799175739 >= (v0 ^ 0x20B0u) - 1457001817)) ^ (v0 + 20915))))();
}

uint64_t sub_1002C25C4()
{
  STACK[0x4568] = 0;
  STACK[0x9188] = 0;
  LODWORD(STACK[0x4B98]) = -371865839;
  return (*(STACK[0xF18] + 8 * ((199 * ((((((v0 ^ 0xD76) - 30931) ^ *(*STACK[0x4278] + 48) ^ 0x70CE238F) - 1892561383) ^ ((*(*STACK[0x4278] + 48) ^ 0x8CF72573) + 1929960077) ^ ((*(*STACK[0x4278] + 48) ^ 0x15ECD385) - 367842181)) - 371865839 > 0xF)) ^ v0)))();
}

uint64_t sub_1002C2680()
{
  STACK[0x5B58] = &STACK[0xC4D0] + v0;
  v2 = STACK[0xF18];
  STACK[0x98B0] = *(STACK[0xF18] + 8 * (v1 - 20147));
  return (*(v2 + 8 * ((v1 - 20147) ^ 0x13A ^ (7542 * (((v1 - 20147) ^ 0xBE87D5CA) >= v1 + 657625557)))))();
}

uint64_t sub_1002C2740()
{
  v2 = 0;
  v3 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x64E5AD20)) ^ 0x64E5AD20;
  v4 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v3 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v3;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL)));
  v11 = v0 - 0x43D8CBFA0CEB42D4;
  v12 = v10 ^ v9 ^ (1692773664 * (v0 - 216744660)) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + ((v10 ^ v9) & (qword_1010C0540 ^ 0x94DFF197226FCCCLL)));
  v13 = vdupq_n_s32(v12);
  v14 = xmmword_100BC7620;
  v15 = xmmword_100BC7630;
  v16 = xmmword_100BC7640;
  v17 = xmmword_100BC7650;
  v18.i64[0] = 0x9393939393939393;
  v18.i64[1] = 0x9393939393939393;
  v19.i64[0] = 0x1000000010;
  v19.i64[1] = 0x1000000010;
  do
  {
    v20 = *(v11 + v2);
    v27.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v20, xmmword_100BC7690), v13), vmulq_s32(vaddq_s32(v16, v13), vsubq_s32(v16, v13)));
    v27.val[0] = veorq_s8(veorq_s8(vqtbl1q_s8(v20, xmmword_100BC76A0), v13), vmulq_s32(vaddq_s32(v17, v13), vsubq_s32(v17, v13)));
    v27.val[2] = veorq_s8(veorq_s8(vqtbl1q_s8(v20, xmmword_100BC7680), v13), vmulq_s32(vaddq_s32(v15, v13), vsubq_s32(v15, v13)));
    v27.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v20, xmmword_100BC7670), v13), vmulq_s32(vaddq_s32(v14, v13), vsubq_s32(v14, v13)));
    *(v11 + v2) = vmulq_s8(vqtbl4q_s8(v27, xmmword_100BC7660), v18);
    v2 += 16;
    v17 = vaddq_s32(v17, v19);
    v16 = vaddq_s32(v16, v19);
    v15 = vaddq_s32(v15, v19);
    v14 = vaddq_s32(v14, v19);
  }

  while (v2 != 96);
  v21 = (v0 - 0x43D8CBFA0CEB427CLL);
  for (i = 13; i > 2; --i)
  {
    v23 = 16777619 * ((i - 2 + v12) ^ v12) % (i - 2);
    v24 = *(v11 + 8 * v23) ^ *v21;
    *v21 = v24;
    v25 = *(v11 + 8 * v23) ^ v24;
    *(v11 + 8 * v23) = v25;
    *v21-- ^= v25;
  }

  return (*(STACK[0xF18] + 8 * (v1 - 21979)))();
}

uint64_t sub_1002C2B40(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39)
{
  v44 = v43 + v39 + (((v42 + 10127) | 3) ^ 0xC8DD1347);
  v45 = a6 & (a4 ^ 0x916F3942) ^ a5;
  v46 = ((2 * (a4 ^ 0x113E3BC6)) ^ 0x82A3054A) & (a4 ^ 0x113E3BC6) ^ (2 * (a4 ^ 0x113E3BC6)) & 0xC15182A4;
  v47 = a4 ^ (2 * ((((4 * (v46 ^ 0x415082A5)) ^ 0x5460A90) & (v46 ^ 0x415082A5) ^ (4 * (v46 ^ 0x415082A5)) & 0x415182A0) & (16 * (v46 & (4 * v45) ^ v45)) ^ v46 & (4 * v45) ^ v45)) ^ v44 ^ ((v44 ^ 0x9EC14D9B) + 1991448450) ^ ((v44 ^ 0x5C49D997) - 1271168114) ^ ((v44 ^ 0xA8EAD656) + 1083739213) ^ ((v44 ^ 0x7DEFE7BF) - 1784824410);
  v48 = ((v47 ^ 0xD60A4E5B) - 1354681768) ^ ((v47 ^ 0x1BA0A57D) + 1659623794) ^ ((v47 ^ 0xA4AF7A0) + 1929481133);
  return (*(a36 + 8 * ((946 * (((a39 - v41 - 2063962010 * v48 + (v48 + 1096064885) * (*(a3 + 4 * v40) + 1265977597) + 431798430) & 7) != 1)) ^ v42)))();
}

uint64_t sub_1002C2D6C@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  if (v2)
  {
    v4 = *(a1 + 8) == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(v3 + 8 * ((v5 * ((a2 + 1180086582) & 0xB9A96C37 ^ 0x641A)) ^ a2)))();
}

uint64_t sub_1002C2DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unsigned int a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, char a44)
{
  *(v47 - 152) = v44 - 14388 + 139493411 * ((v46 - 2 * (v46 & 0x25484050) - 1521991594) ^ 0xA965A113);
  *(v47 - 136) = &a35;
  *(v47 - 128) = &a44;
  v48 = v47 - 160;
  *(v47 - 144) = &a38;
  *(v47 - 160) = &a42;
  (*(v45 + 8 * (v44 + 6684)))(v47 - 160);
  v49 = a36;
  *(v47 - 136) = &a44;
  *(v47 - 128) = v49;
  *(v47 - 160) = &a38;
  *(v47 - 152) = &a44;
  *(v47 - 144) = &a35;
  *(v47 - 120) = (v44 - 20117) ^ (17902189 * ((2 * ((v47 - 160) & 0x1A1178A0) - (v47 - 160) - 437352615) ^ 0x6BA19149));
  (*(v45 + 8 * (v44 ^ 0x7A5A)))(v47 - 160);
  v50 = a23 % 3 + a28;
  if (((((*(v50 + 24) ^ 0x6E) - 110) ^ ((*(v50 + 24) ^ 0x2C) - 44) ^ (((v44 + 55) | 0xE) + ((v44 - 43) & 0x6F ^ 0x73 ^ *(v50 + 24)) + 117)) + 95) >= 0xFAu)
  {
    v51 = 2063984264;
  }

  else
  {
    v51 = 2063984254;
  }

  v52 = 353670337 * ((v48 - 2 * (v48 & 0x7F70D768) + 2138101611) ^ 0xCB512F56);
  *(v47 - 136) = a28;
  *(v47 - 152) = &a44;
  *(v47 - 144) = v51 + v52;
  *(v47 - 160) = v52 + v44 - 28315;
  (*(v45 + 8 * (v44 + 6688)))(v47 - 160);
  *(v47 - 160) = &a44;
  *(v47 - 152) = v44 - 14388 + 139493411 * (((v48 | 0x254864A3) - (v48 | 0xDAB79B5C) - 625501348) ^ 0x296585E6);
  *(v47 - 136) = &a35;
  *(v47 - 128) = &a44;
  *(v47 - 144) = &a38;
  (*(v45 + 8 * (v44 ^ 0x7A6C)))(v47 - 160);
  v53 = a36;
  *(v47 - 120) = (v44 - 20117) ^ (17902189 * ((((v48 | 0x40FF6A70) ^ 0xFFFFFFFE) - (~v48 | 0xBF00958F)) ^ 0x314F839F));
  *(v47 - 160) = &a38;
  *(v47 - 152) = &a44;
  *(v47 - 136) = &a44;
  *(v47 - 128) = v53;
  *(v47 - 144) = &a35;
  v54 = (*(v45 + 8 * (v44 + 6730)))(v47 - 160);
  return (*(v45 + 8 * ((109 * (((((*(v50 + 27) ^ 0x2B) - 43) ^ ((*(v50 + 27) ^ 0xAB) + 85) ^ ((*(v50 + 27) ^ 0xDF) + 33)) + 95) > 0xF9u)) ^ v44)))(v54);
}

uint64_t sub_1002C31A8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v17 = (a1 + (v6 + v10));
  v18 = *(*(a3 + v14) + (*(v4 - 231415367) & ((7 * v9) ^ 0x72D703DBu)));
  v19 = *v17;
  v20 = (a2 + (v5 + v10));
  v21 = ((((v17 ^ v18) & 0x7FFFFFFF) * v15) ^ ((((v17 ^ v18) & 0x7FFFFFFF) * v15) >> 16)) * v15;
  v22 = ((((v20 ^ v18) & 0x7FFFFFFF) * v15) ^ ((((v20 ^ v18) & 0x7FFFFFFF) * v15) >> 16)) * v15;
  *v20 = *(v12 + (v21 >> 24)) ^ v19 ^ *(a4 + (v21 >> 24)) ^ *((v21 >> 24) + v11 + 5) ^ *(v12 + (v22 >> 24)) ^ *(a4 + (v22 >> 24)) ^ *((v22 >> 24) + v11 + 5) ^ v21 ^ v22 ^ (BYTE3(v21) * v16) ^ (BYTE3(v22) * v16);
  v23 = v10 - 611387112 < v7;
  if (v7 < 0xDB8EF917 != (v10 + 1) > 0x247106E8)
  {
    v23 = v7 < 0xDB8EF917;
  }

  return (*(v13 + 8 * ((29780 * v23) ^ v8)))();
}

uint64_t sub_1002C33A0()
{
  v1 = STACK[0xF10] - 34988;
  *(STACK[0x7980] + 8) = v0 ^ 0xC1F2B486EB4E8498;
  LODWORD(STACK[0x6134]) += 4;
  return (*(STACK[0xF18] + 8 * (v1 ^ 0x27D8)))();
}

uint64_t sub_1002C3434()
{
  v0 = STACK[0xF10];
  v1 = (STACK[0xF10] - 474188636) & 0x1C435B6A;
  v2 = STACK[0xF10] + 6233;
  v3 = STACK[0xA640];
  v4 = 1603510583 * ((~&STACK[0x10ED8] & 0x9958609B68105DC3 | &STACK[0x10ED8] & 0x66A79F6497EFA238) ^ 0xA6A97777FFCB6F68);
  STACK[0x10EE8] = STACK[0x98C8];
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = v0 - v4 - 29881;
  STACK[0x10F08] = v3;
  STACK[0x10EF0] = v4 + 0x787CF1E15A2A6CC2;
  STACK[0x10EF8] = v4 + 0x1D5BAA6B483C089DLL;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v0 + 16347)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * ((46 * (LODWORD(STACK[0x10F00]) != (v1 ^ 0xE9D59C5B))) ^ v2)))(v6);
}

uint64_t sub_1002C3560@<X0>(int a1@<W8>)
{
  v2[506] = a1 + 8;
  v3 = ((((v1 - 1174475886) ^ 0xB9FF72C8 ^ LODWORD(STACK[0x18F0]) ^ 0x787A88AB) - 2021296601) ^ (((v1 - 1174475886) & 0xE6E2CC67) + (LODWORD(STACK[0x18F0]) ^ 0x2D16195A) + 839362180) ^ ((LODWORD(STACK[0x18F0]) ^ 0xBCB95792) + 1128704110)) + 1714102021;
  v4 = (a1 + 8) > 0x83AAA80B;
  v5 = v4 ^ (v3 < 0x7C5557F4);
  v6 = a1 + 2085967868 > v3;
  if (!v5)
  {
    v4 = v6;
  }

  if (v4)
  {
    v7 = 371891407;
  }

  else
  {
    v7 = v2[505];
  }

  v2[507] = v7;
  return (*(STACK[0xF18] + 8 * ((5215 * (v7 == -371865839)) ^ v1)))();
}

uint64_t sub_1002C3678@<X0>(int a1@<W8>)
{
  v3 = ((a1 + ((v1 - 30085) | 0x811Au) - 34877 - 746) ^ 0xD3C75D25EBFFBDEDLL) + 0x2C38A2DB0D283A7ELL + ((2 * (a1 + ((v1 - 30085) | 0x811Au) - 34877 - 746)) & 0x1D7FF7BDALL);
  v4 = (v2 ^ 0x3FFF8FBFBFBF4F9FLL) - 0x3FFF8FBEC6975738 + ((2 * v2) & 0x17F7E9F3ELL);
  v5 = (v4 < 0xF927F867) ^ (v3 < 0xF927F867);
  v6 = v3 > v4;
  if (v5)
  {
    v6 = v3 < 0xF927F867;
  }

  return (*(STACK[0xF18] + 8 * (((16 * !v6) | (!v6 << 6)) ^ v1)))();
}

uint64_t sub_1002C37E0@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x10ED8]) = (v3 - 29457) ^ (((((&STACK[0x10000] + 3800) | 0x2B18047F) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xD4E7FB80)) ^ 0xCD3E1FB0) * v1);
  STACK[0x10EE0] = a1;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v3 + 16289)))(&STACK[0x10ED8]);
  *(v2 + 328) = 0;
  return (*(v4 + 8 * (v3 + 260)))(v5);
}

uint64_t sub_1002C3890@<X0>(unsigned int a1@<W3>, uint64_t a2@<X6>, int a3@<W8>)
{
  v22 = ((v10 ^ 0x39F6C4AEB9E112BFLL) - 0x39F6C4AEB9E112BFLL) ^ ((v10 ^ 0x6192C9C5C706D2FBLL) - 0x6192C9C5C706D2FBLL) ^ (v11 + (v10 ^ 0x58640D6B01A0CCD0) - 0x58640D6B01A123DFLL);
  v23 = (v22 - 0x731EE7279C62C52ALL) * (v22 + a2) + 0x731EE72835CB262FLL * v22 + 0xF8A390DB46535E7;
  v24 = ((a1 ^ 0xF6EF563882F57A0DLL) + 0x910A9C77D0A85F3) ^ ((a1 ^ 0x4FD1E78461791BB5) - 0x4FD1E78461791BB5) ^ ((a1 ^ 0xB93EB1BC9CCB6D2CLL) + 0x46C14E43633492D4);
  v25 = ((2 * (v23 % 0xC95119CF)) & 0x2CF6AF6A) + ((v23 % 0xC95119CF) ^ 0x1ECFDEFF167B57B5);
  v26 = (v24 + a2) * (v24 - 0x37DAD7DE12236BADLL) + 0x37DAD7DE916A7841 * v24 + 2575459919u * v25 - 0x3177340DB1B75510;
  v27 = v26 % 0x8C3E3039 - ((2 * (v26 % 0x8C3E3039)) & 0x2A178AFA) + 0x2BBDEE0F150BC57DLL;
  v28 = ((((v27 ^ 0xDB25DF1861D9EB5BLL) + 0x24DA20E79E2614A5) ^ ((v27 ^ 0x885D50EE89BB7FA6) + 0x77A2AF117644805ALL) ^ ((v27 ^ 0x78C561F9FD695180) - 0x78C561F9FD695180)) + 0x55775F3671493A30) * (v25 - 0x1ECFDEFF167B57B5) - 0x29B971275C3D74B3 * v25 + 0x2001E5A5F8B6A86ELL;
  v29 = (v28 ^ 0xA829C95250742E1CLL) & (2 * (v28 & 0xA88D8D629566AF21)) ^ v28 & 0xA88D8D629566AF21;
  v30 = ((2 * (v28 ^ 0xB93AD9125AF0725ELL)) ^ 0x236EA8E19F2DBAFELL) & (v28 ^ 0xB93AD9125AF0725ELL) ^ (2 * (v28 ^ 0xB93AD9125AF0725ELL)) & 0x11B75470CF96DD7ELL;
  v31 = v30 ^ 0x1091541040924501;
  v32 = (v30 ^ 0x2600008F04980CLL) & (4 * v29) ^ v29;
  v33 = ((4 * v31) ^ 0x46DD51C33E5B75FCLL) & v31 ^ (4 * v31) & 0x11B75470CF96DD7CLL;
  v34 = (v33 ^ 0x9550400E125570) & (16 * v32) ^ v32;
  v35 = ((16 * (v33 ^ 0x11220430C1848803)) ^ 0x1B75470CF96DD7F0) & (v33 ^ 0x11220430C1848803) ^ (16 * (v33 ^ 0x11220430C1848803)) & 0x11B75470CF96DD70;
  v36 = (v35 ^ 0x11354400C904D500) & (v34 << 8) ^ v34;
  v37 = (((v35 ^ 0x8210700692080FLL) << 8) ^ 0xB75470CF96DD7F00) & (v35 ^ 0x8210700692080FLL) ^ ((v35 ^ 0x8210700692080FLL) << 8) & 0x11B75470CF96DD00;
  v38 = v36 ^ 0x11B75470CF96DD7FLL ^ (v37 ^ 0x1114504086940000) & (v36 << 16);
  v39 = (v9 - 1709329109);
  LOBYTE(v31) = *(v5 + v39);
  v40 = (v6 + v39);
  v41 = ((v40 ^ *(*v16 + (*v14 & v19))) & 0x7FFFFFFF) * v20;
  v42 = v28 ^ (2 * ((v38 << 32) & v15 ^ v38 ^ ((v38 << 32) ^ 0x4F96DD7F00000000) & (((v37 ^ 0xA304304902807FLL) << 16) & v15 ^ 0x187106000000000 ^ (((v37 ^ 0xA304304902807FLL) << 16) ^ 0x5470CF9600000000) & (v37 ^ 0xA304304902807FLL))));
  *v40 = v31 ^ *(v17 + (((v41 ^ HIWORD(v41)) * v20) >> 24)) ^ *(v12 + (((v41 ^ HIWORD(v41)) * v20) >> 24)) ^ *((((v41 ^ HIWORD(v41)) * v20) >> 24) + v13 + 3) ^ ((v41 ^ BYTE2(v41)) * v20) ^ ((((v41 ^ HIWORD(v41)) * v20) >> 24) * v21) ^ (v42 >> 15) ^ 0x96;
  v43 = (v9 - 1709329108);
  LODWORD(v37) = (*(*v16 + (*v14 & v19)) ^ (v6 + v43)) & 0x7FFFFFFF;
  v44 = ((v37 * v20) ^ ((v37 * v20) >> 16)) * v20;
  *(v6 + v43) = *(v5 + v43) ^ *(v17 + (v44 >> 24)) ^ *(v12 + (v44 >> 24)) ^ *((v44 >> 24) + v13 + 3) ^ v44 ^ (BYTE3(v44) * v21) ^ (v42 >> 23) ^ 0x14;
  v45 = (v9 - 1709329107);
  LODWORD(v44) = (*(*v16 + (*v14 & v19)) ^ (v6 + v45)) & 0x7FFFFFFF;
  v46 = ((v44 * v20) ^ ((v44 * v20) >> 16)) * v20;
  *(v6 + v45) = *(v5 + v45) ^ *(v17 + (v46 >> 24)) ^ *(v12 + (v46 >> 24)) ^ *((v46 >> 24) + v13 + 3) ^ v46 ^ (BYTE3(v46) * v21) ^ 0xC6 ^ (v42 >> 31);
  v47 = (((v9 ^ 0x982ABF61) + 37161548) ^ v9 ^ ((v9 ^ 0xAEED5505) + 888201264) ^ ((v9 ^ 0x2C5A4F5E) - 1236796811) ^ ((v9 ^ 0x7F7FEFEE) - 446539066)) & 0xFFFFFFFC ^ 0x65E24AD7;
  LODWORD(v46) = ((*(*v16 + (*v14 & v19)) ^ (v6 + v47)) & 0x7FFFFFFF) * v20;
  v48 = (v46 ^ WORD1(v46)) * v20;
  *(v6 + v47) = *(v5 + v47) ^ *(v17 + (v48 >> 24)) ^ *(v12 + (v48 >> 24)) ^ *((v48 >> 24) + v13 + 3) ^ v48 ^ (BYTE3(v48) * v21) ^ v18 ^ (v42 >> 39);
  if (v3 < v4 != v9 + v7 < v4)
  {
    v49 = v3 < v4;
  }

  else
  {
    v49 = v9 + v7 < v3;
  }

  return (*(STACK[0xF18] + 8 * ((v49 * v8) ^ a3)))();
}

uint64_t sub_1002C4314(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *v1 = a1;
  return (*(STACK[0xF18] + 8 * (((STACK[0x1390] != 0) * (((82 * ((v2 - 7668) ^ 0x6D93)) ^ 0xFFFF3731) + ((v2 - 552) | 0x228))) ^ (v2 - 7668))))();
}

uint64_t sub_1002C4374()
{
  STACK[0x8FE8] = v0;
  LODWORD(STACK[0x44A8]) = v2;
  LODWORD(STACK[0x7FD8]) = 1920430697;
  LODWORD(STACK[0x704C]) = -2116087569;
  LODWORD(STACK[0x4A8C]) = -371865840;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * (v1 - 20152)))();
}

uint64_t sub_1002C4550()
{
  LODWORD(STACK[0x86D4]) = -371865839;
  v1 = (*STACK[0x9108] & 4) == 0;
  return (*(STACK[0xF18] + 8 * ((v1 | (2 * v1)) ^ v0)))();
}

uint64_t sub_1002C4650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0xF10] - 29692;
  v9 = (((v7 ^ 0x134DD44B) - 1033696941) ^ ((v7 ^ 0x64572786) - 1250297184) ^ ((STACK[0xF10] ^ 0x6130401F) + (v7 ^ 0xB01E163A))) + (((STACK[0xB6C0] ^ 0x3B61042A) + 187728793) ^ ((STACK[0xB6C0] ^ 0x92035C41) - 1571628044) ^ ((STACK[0xB6C0] ^ 0x891E7C79) - 1185940532)) - 643292304;
  *(a7 + 65) = v9;
  return (*(STACK[0xF18] + 8 * ((121 * (v9 <= LODWORD(STACK[0x3EE8]))) ^ v8)))();
}

uint64_t sub_1002C47A8(uint64_t a1, uint64_t a2)
{
  *STACK[0x9688] = STACK[0x49D8];
  *STACK[0x8AA8] = STACK[0x5EB8];
  return (*(STACK[0xF18] + 8 * v2))(a1, a2, 3923101457);
}

uint64_t sub_1002C8A6C()
{
  v4 = v2 + 1230146824;
  v5 = v4 < (v3 + 133714590);
  v6 = v1 + 1230146824 < v4;
  if (v1 + 1230146824 < ((v3 + 15068) ^ 0x7F81FCE) != v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  return (*(v0 + 8 * (((2 * !v7) | (4 * !v7)) ^ v3)))();
}

uint64_t sub_1002C8B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, unsigned __int16 a63)
{
  v66 = (((v63 - 28592) & 0xEFFB) + v65 - 31723) > a63;
  if ((a63 >> 6) < 0x1A7u != ((((v63 - 28592) & 0xEFFB) + v65 - 31723) >> 6) < 0x1A7u)
  {
    v66 = ((((v63 - 28592) & 0xEFFB) + v65 - 31723) >> 6) < 0x1A7u;
  }

  return (*(v64 + 8 * ((15 * !v66) ^ v63)))(a1, a2, a3, a6);
}

uint64_t sub_1002C8BFC()
{
  v4 = STACK[0xEC0];
  v5 = (LODWORD(STACK[0xEC0]) - 15222) ^ 0x8946;
  v6 = STACK[0x7980];
  v6[66] = v3;
  v6[65] = v2;
  v6[67] = v1;
  return (*(STACK[0xF18] + 8 * ((((v0 - 1722456496) + 4 > STACK[0xB7F0]) * (v5 - 524)) ^ v4)))(2234432642, 2234432643, 2234432644, 1775617819, 10, 3923101457, 4294932395, -1080961354);
}

uint64_t sub_1002C8CF0(char a1, char a2, int a3)
{
  v7 = v4 < v6;
  if (v7 == v5 + a3 < v6)
  {
    LOBYTE(v7) = v5 + a3 < v4;
  }

  return (*(STACK[0xF18] + 8 * (((v7 ^ (7 * (((v3 + a1) | 4) ^ a2))) & 1 | (2 * ((v7 ^ (7 * (((v3 + a1) | 4) ^ a2))) & 1))) ^ v3)))();
}

uint64_t sub_1002C8D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  STACK[0x2688] = a8;
  STACK[0x1488] = &STACK[0x5948];
  STACK[0x5D28] = &STACK[0x6C90];
  LODWORD(STACK[0x4704]) = 1486029274;
  return (*(STACK[0xF18] + 16 * (v8 ^ 0x69D5CDBB)))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_1002C8E0C()
{
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x204A26A0) + 541730468) ^ 0xC66C3D6B) + 296786617;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 49785)))(&STACK[0x10ED8]);
  STACK[0x51A8] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (v0 + 6229 * (v0 ^ 0x852) + 1629)))(v2);
}

uint64_t sub_1002C8F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, int a13, uint64_t a14, unsigned int a15)
{
  v20 = *(v18 + 4 * ((0x9ED10ECD % (v19 >> 2)) & 0x3FFFFFFC));
  v21 = *(v17 + 8 * a12);
  v22 = *(v21 - 527405895);
  v23 = *(v17 + 8 * a11) + 4 * v22;
  v24 = *(v23 - 1940437438);
  v26 = (v15 ^ 0xB841 ^ *(v18 + 4 * (((v19 >> 2) - 1) & v20))) & ~HIWORD(v20);
  v25 = v26 == 0;
  v27 = v26 + v26 * v24;
  v28 = ((v15 ^ 0xB841 ^ *(v18 + 4 * (((v19 >> 2) - 1) & v20))) & ~HIWORD(v20)) == 0;
  if (v25)
  {
    v29 = *(v23 - 1940437438);
  }

  else
  {
    v29 = 0;
  }

  *(v23 - 1940437438) = (v27 + v29) * v24;
  *(v21 - 527405895) = (v22 + 1) % 6u;
  return (*(v16 + 8 * ((30232 * v28) ^ a13)))(a1, a2, a3, 371891453, a15);
}

uint64_t sub_1002C8FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, int a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  v42 = 1012831759 * (((v39 | 0x36744FFD) - (v39 & 0x36744FF8)) ^ 0x26E75977);
  *(v41 - 120) = v41 - 245;
  *(v41 - 128) = &a39;
  *(v41 - 144) = v42 + 99890098;
  *(v41 - 140) = v42 + a22 - 1596645191;
  v43 = (*(v40 + 8 * a17))(v41 - 144);
  return (*(v40 + 8 * ((21943 * (*(v41 - 136) == a16)) ^ a14)))(v43);
}

uint64_t sub_1002C9134@<X0>(void *a1@<X8>)
{
  v3 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x4BA6E21C)) ^ 0x4BA6E21ELL;
  v4 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v3 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v3;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  LODWORD(v10) = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  STACK[0xC350] = 0;
  STACK[0xC358] = v1;
  v11 = 16777619 * ((1269228062 * v10 + 7) ^ (1269228062 * v10)) % 7;
  v12 = *(&STACK[0xC350] | v11);
  *(&STACK[0xC350] | v11) = 0;
  LOBYTE(STACK[0xC357]) = v12;
  v13 = 16777619 * ((1269228062 * v10 + 6) ^ (1269228062 * v10)) % 6;
  v14 = *(&STACK[0xC350] | v13);
  *(&STACK[0xC350] | v13) = STACK[0xC356];
  LOBYTE(STACK[0xC356]) = v14;
  v15 = 16777619 * ((1269228062 * v10 + 5) ^ (1269228062 * v10)) % 5;
  v16 = *(&STACK[0xC350] | v15);
  *(&STACK[0xC350] | v15) = STACK[0xC355];
  LOBYTE(STACK[0xC355]) = v16;
  v17 = STACK[0xC350];
  LOBYTE(STACK[0xC350]) = STACK[0xC354];
  LOBYTE(STACK[0xC354]) = v17;
  v18 = 16777619 * ((1269228062 * v10 + 3) ^ (1269228062 * v10)) % 3;
  v19 = *(&STACK[0xC350] | v18);
  *(&STACK[0xC350] | v18) = STACK[0xC353];
  LOBYTE(STACK[0xC353]) = v19;
  v20 = STACK[0xC351];
  LOBYTE(STACK[0xC352]) = STACK[0xC350];
  LOWORD(STACK[0xC350]) = v20;
  v21 = vdup_n_s32(1269228062 * v10);
  v22.i32[0] = v21.i32[0];
  v22.i32[1] = (1269228062 * v10) | 1;
  v23 = veor_s8(vmul_s32(v22, v21), v21);
  STACK[0xC350] = vmla_s32(v23, STACK[0xC350], vdup_n_s32(0x1000193u));
  STACK[0xC358] ^= STACK[0xC350];
  STACK[0xC358] = vmul_s32(vsub_s32(STACK[0xC358], v23), vdup_n_s32(0x359C449Bu));
  v24 = STACK[0xC35A];
  LOWORD(STACK[0xC359]) = STACK[0xC358];
  LOBYTE(STACK[0xC358]) = v24;
  v25 = (&STACK[0xC358] | v18);
  LOBYTE(v20) = *v25;
  *v25 = STACK[0xC35B];
  LOBYTE(STACK[0xC35B]) = v20;
  LOBYTE(v25) = STACK[0xC358];
  LOBYTE(STACK[0xC358]) = STACK[0xC35C];
  LOBYTE(STACK[0xC35C]) = v25;
  v26 = (&STACK[0xC358] | v15);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC35D];
  LOBYTE(STACK[0xC35D]) = v25;
  v27 = (&STACK[0xC358] | v13);
  LOBYTE(v26) = *v27;
  *v27 = STACK[0xC35E];
  LOBYTE(STACK[0xC35E]) = v26;
  v28 = (&STACK[0xC358] | v11);
  v29 = *v28;
  *v28 = STACK[0xC35F];
  LOBYTE(STACK[0xC35F]) = v29;
  v30 = STACK[0xC358];
  v31 = (1269228062 * STACK[0xC358]) ^ v10;
  for (i = 1; i != 273; ++i)
  {
    v33 = 16777619 * ((v31 + i) ^ v31) % i;
    v34 = *(v30 + 8 * v33) ^ *(v30 + 8 * i);
    *(v30 + 8 * i) = v34;
    v35 = *(v30 + 8 * v33) ^ v34;
    *(v30 + 8 * v33) = v35;
    *(v30 + 8 * i) ^= v35;
  }

  v36 = 0;
  v37 = xmmword_100BC7620;
  v38 = xmmword_100BC7630;
  v39 = xmmword_100BC7640;
  v40 = xmmword_100BC7650;
  v41.i64[0] = 0x9B009B009B009BLL;
  v41.i64[1] = 0x9B009B009B009BLL;
  v42.i64[0] = 0x1000000010;
  v42.i64[1] = 0x1000000010;
  v43 = vdupq_n_s32(v31);
  do
  {
    v44 = *(v30 + v36);
    v45 = vmovl_high_u8(v44);
    v46 = vmovl_u8(*v44.i8);
    v57.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v39, v43), vsubq_s32(v39, v43)), v43), vmull_high_u16(v46, v41));
    v57.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v38, v43), vsubq_s32(v38, v43)), v43), vmull_u16(*v45.i8, 0x9B009B009B009BLL));
    v57.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v40, v43), vsubq_s32(v40, v43)), v43), vmull_u16(*v46.i8, 0x9B009B009B009BLL));
    v57.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v37, v43), vsubq_s32(v37, v43)), v43), vmull_high_u16(v45, v41));
    *(v30 + v36) = vqtbl4q_s8(v57, xmmword_100BC7660);
    v36 += 16;
    v40 = vaddq_s32(v40, v42);
    v39 = vaddq_s32(v39, v42);
    v38 = vaddq_s32(v38, v42);
    v37 = vaddq_s32(v37, v42);
  }

  while (v36 != 2176);
  v47 = 0;
  v48 = xmmword_100F52AB0;
  v49 = xmmword_100F52AC0;
  v50 = vdupq_n_s32(v31);
  v51 = v30 + 2176;
  v52.i64[0] = 0x9B009B009B009BLL;
  v52.i64[1] = 0x9B009B009B009BLL;
  v53.i64[0] = 0x800000008;
  v53.i64[1] = 0x800000008;
  do
  {
    v54 = vmovl_u8(*(v51 + v47));
    v56.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v48, v50), vsubq_s32(v48, v50)), v50), vmull_high_u16(v54, v52));
    v56.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v49, v50), vsubq_s32(v49, v50)), v50), vmull_u16(*v54.i8, 0x9B009B009B009BLL));
    *(v51 + v47) = vqtbl2q_s8(v56, xmmword_100F52AD0).u64[0];
    v49 = vaddq_s32(v49, v53);
    v48 = vaddq_s32(v48, v53);
    v47 += 8;
  }

  while (v47 != 8);
  *a1 = STACK[0xC358];
  return (*(STACK[0xF18] + 8 * (v2 - 5076)))(v48, v49);
}

uint64_t sub_1002C95BC()
{
  LODWORD(STACK[0xB93C]) = v0;
  LODWORD(STACK[0x44AC]) = 371891406;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1002C9768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, char a27, __int16 a28, char a29, int a30, unsigned int a31, char *a32, char *a33, uint64_t a34, int a35, uint64_t a36, int a37)
{
  v39 = *(a23 - 0x217E172EFA1E81CLL);
  v40 = 634647737 * (&a31 ^ 0x6D962FFC);
  a31 = ((((*(a23 - 0x217E172EFA1E804) ^ 0xE78851FB) + 410496517) ^ ((*(a23 - 0x217E172EFA1E804) ^ 0x6115E69C) - 1628825244) ^ ((*(a23 - 0x217E172EFA1E804) ^ 0x6F4873FD ^ (v38 + 782753162) & 0xD157DBDF) - 1867018358)) - 54746966) ^ v40;
  a35 = v38 - v40 + 20800;
  a36 = a23 - 0x217E172EFA1E800;
  a32 = &a27;
  a33 = &a29;
  a34 = v39;
  v41 = (*(v37 + 8 * (v38 + 32931)))(&a31);
  return (*(v37 + 8 * ((81 * (a37 != -371865839)) ^ v38)))(v41);
}

uint64_t sub_1002C98B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v6 = (v5 - 1830948927) & 0x6D21E507;
  v7 = v5 - 32409;
  ++*a5;
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = v5 + 155453101 * ((((&STACK[0x10000] + 3800) | 0x4B764C9F) - ((&STACK[0x10000] + 3800) | 0xB489B360) - 1266044064) ^ 0xAD505750) + 296753103;
  v8 = v5 ^ 0x41F1;
  v9 = STACK[0xF18];
  v10 = (*(STACK[0xF18] + 8 * v8))(&STACK[0x10ED8]);
  STACK[0x2278] = *(v9 + 8 * v7);
  return (*(v9 + 8 * (v7 - 22071 + v6)))(v10);
}

uint64_t sub_1002C99F4@<X0>(unint64_t a1@<X0>, int a2@<W3>, unint64_t a3@<X7>, unint64_t a4@<X8>)
{
  v14 = *(STACK[0xF18] + 8 * (a2 + 3448));
  *&STACK[0xE90] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0xDE0] = vdupq_n_s64(0x38uLL);
  *&STACK[0xE80] = vdupq_n_s64(v7);
  *&STACK[0xBA0] = vdupq_n_s64(0xF9FFFFFFFFFFFFFFLL);
  *&STACK[0xB90] = vdupq_n_s64(0x12219E3FC273472uLL);
  *&STACK[0xB80] = vdupq_n_s64(0xB5A94E2F7B1B987CLL);
  *&STACK[0xB70] = vdupq_n_s64(v8);
  *&STACK[0xB60] = vdupq_n_s64(v4);
  *&STACK[0xB50] = vdupq_n_s64(a4);
  *&STACK[0xB40] = vdupq_n_s64(v12);
  *&STACK[0xAF0] = vdupq_n_s64(a3);
  *&STACK[0xB30] = vdupq_n_s64(v5);
  *&STACK[0xB20] = vdupq_n_s64(a1);
  *&STACK[0xB10] = vdupq_n_s64(v11);
  *&STACK[0xB00] = vdupq_n_s64(v13);
  *&STACK[0xEC0] = vdupq_n_s64(v6);
  *&STACK[0xE20] = vdupq_n_s64(0x96E95066F186A7EuLL);
  *&STACK[0xE10] = vdupq_n_s64(0x1948316F80CDDDA0uLL);
  *&STACK[0xDD0] = vdupq_n_s64(v9);
  *&STACK[0xE00] = vdupq_n_s64(0xCC3717CE5664B278);
  *&STACK[0xEB0] = vdupq_n_s64(0x19E47418D4CDA6C4uLL);
  *&STACK[0xEA0] = vdupq_n_s64(0x7D07FFC04E2C5624uLL);
  *&STACK[0xDF0] = vdupq_n_s64(0x185F139E2B33A58DuLL);
  *&STACK[0xDC0] = vdupq_n_s64(0xE5A0EC61D4CC5A72);
  *&STACK[0xDB0] = vdupq_n_s64(0x1D7D0A7DD71491FFuLL);
  *&STACK[0xDA0] = vdupq_n_s64(0xA9F65DB150283DF1);
  *&STACK[0xE70] = vdupq_n_s64(0xEFCF42790778521ALL);
  *&STACK[0xD90] = vdupq_n_s64(0x77E7A13C83BC290DuLL);
  *&STACK[0xD80] = vdupq_n_s64(v10);
  *&STACK[0xE60] = vdupq_n_s64(0x2C378843F9A46E98uLL);
  *&STACK[0xD70] = xmmword_100BC76B0;
  *&STACK[0xE40] = vdupq_n_s64(0xBA0879D57248E560);
  return v14(0xA04B4302F9984D26, (a2 - 35521) | 0x7985u);
}

uint64_t sub_1002C9CD0@<X0>(unint64_t a1@<X8>)
{
  v3 = STACK[0x9198];
  v4 = STACK[0x77A0];
  v5 = 1012831759 * ((2 * ((&STACK[0x10000] + 3800) & 0x1E3E2E38) - (&STACK[0x10000] + 3800) - 507391551) ^ 0xF152C74B);
  v6 = LODWORD(STACK[0x5144]) - v5;
  LODWORD(STACK[0x10EEC]) = v5 + v1 - 3787;
  LODWORD(STACK[0x10EE8]) = v6 + 1855029880;
  STACK[0x10EE0] = v4;
  STACK[0x10EF0] = a1;
  STACK[0x10EF8] = v3;
  STACK[0x10F00] = v4;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v1 + 10654)))(&STACK[0x10ED8]);
  v9 = STACK[0x10ED8];
  LODWORD(STACK[0xA8DC]) = STACK[0x10ED8];
  return (*(v7 + 8 * (((v9 == v2) * (((v1 - 1263202937) & 0x4B4ADBFB) - 10053)) ^ v1)))(v8);
}

uint64_t sub_1002C9DC0()
{
  v2 = STACK[0x29AC];
  STACK[0x4F90] = v0;
  LODWORD(STACK[0x22E8]) = v2;
  LODWORD(STACK[0x35EC]) = 1693393317;
  return (*(STACK[0xF18] + 8 * (v1 ^ 0x92FA)))();
}

uint64_t sub_1002C9E50()
{
  v2 = STACK[0xF18];
  STACK[0x4688] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 102984))(v0 + 560);
}

uint64_t sub_1002C9E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, int a48)
{
  v51 = a48 + (((v49 ^ 0x6840FD44) - 333548413) ^ ((v49 ^ 0xEBB2A2A3) + 1877748582) ^ ((((v48 ^ 0x4E9F) + 294020150) ^ v49) - 1780979958)) - 974146630;
  v52 = ((a40 - 602280791) < 0x355E88F3) ^ (v51 < 0x355E88F3);
  v53 = v51 < a40 - 602280791;
  if (v52)
  {
    v53 = (a40 - 602280791) < 0x355E88F3;
  }

  return (*(v50 + 8 * ((76 * !v53) ^ v48)))();
}